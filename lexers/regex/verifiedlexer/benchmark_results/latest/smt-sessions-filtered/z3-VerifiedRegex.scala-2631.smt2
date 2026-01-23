; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142396 () Bool)

(assert start!142396)

(declare-fun b!1530812 () Bool)

(declare-fun b_free!39583 () Bool)

(declare-fun b_next!40287 () Bool)

(assert (=> b!1530812 (= b_free!39583 (not b_next!40287))))

(declare-fun tp!439878 () Bool)

(declare-fun b_and!106347 () Bool)

(assert (=> b!1530812 (= tp!439878 b_and!106347)))

(declare-fun b!1530815 () Bool)

(declare-fun b_free!39585 () Bool)

(declare-fun b_next!40289 () Bool)

(assert (=> b!1530815 (= b_free!39585 (not b_next!40289))))

(declare-fun tp!439860 () Bool)

(declare-fun b_and!106349 () Bool)

(assert (=> b!1530815 (= tp!439860 b_and!106349)))

(declare-fun b!1530814 () Bool)

(declare-fun b_free!39587 () Bool)

(declare-fun b_next!40291 () Bool)

(assert (=> b!1530814 (= b_free!39587 (not b_next!40291))))

(declare-fun tp!439877 () Bool)

(declare-fun b_and!106351 () Bool)

(assert (=> b!1530814 (= tp!439877 b_and!106351)))

(declare-fun b!1530803 () Bool)

(declare-fun b_free!39589 () Bool)

(declare-fun b_next!40293 () Bool)

(assert (=> b!1530803 (= b_free!39589 (not b_next!40293))))

(declare-fun tp!439886 () Bool)

(declare-fun b_and!106353 () Bool)

(assert (=> b!1530803 (= tp!439886 b_and!106353)))

(declare-fun b!1530820 () Bool)

(declare-fun b_free!39591 () Bool)

(declare-fun b_next!40295 () Bool)

(assert (=> b!1530820 (= b_free!39591 (not b_next!40295))))

(declare-fun tp!439867 () Bool)

(declare-fun b_and!106355 () Bool)

(assert (=> b!1530820 (= tp!439867 b_and!106355)))

(declare-fun b!1530810 () Bool)

(declare-fun b_free!39593 () Bool)

(declare-fun b_next!40297 () Bool)

(assert (=> b!1530810 (= b_free!39593 (not b_next!40297))))

(declare-fun tp!439866 () Bool)

(declare-fun b_and!106357 () Bool)

(assert (=> b!1530810 (= tp!439866 b_and!106357)))

(declare-fun b!1530821 () Bool)

(declare-fun b_free!39595 () Bool)

(declare-fun b_next!40299 () Bool)

(assert (=> b!1530821 (= b_free!39595 (not b_next!40299))))

(declare-fun tp!439864 () Bool)

(declare-fun b_and!106359 () Bool)

(assert (=> b!1530821 (= tp!439864 b_and!106359)))

(declare-fun b_free!39597 () Bool)

(declare-fun b_next!40301 () Bool)

(assert (=> b!1530821 (= b_free!39597 (not b_next!40301))))

(declare-fun tp!439879 () Bool)

(declare-fun b_and!106361 () Bool)

(assert (=> b!1530821 (= tp!439879 b_and!106361)))

(declare-fun b!1530774 () Bool)

(declare-fun e!978581 () Bool)

(declare-fun e!978598 () Bool)

(assert (=> b!1530774 (= e!978581 e!978598)))

(declare-fun b!1530775 () Bool)

(declare-fun e!978599 () Bool)

(declare-fun e!978574 () Bool)

(declare-datatypes ((C!8524 0))(
  ( (C!8525 (val!4834 Int)) )
))
(declare-datatypes ((Regex!4173 0))(
  ( (ElementMatch!4173 (c!251010 C!8524)) (Concat!7118 (regOne!8858 Regex!4173) (regTwo!8858 Regex!4173)) (EmptyExpr!4173) (Star!4173 (reg!4502 Regex!4173)) (EmptyLang!4173) (Union!4173 (regOne!8859 Regex!4173) (regTwo!8859 Regex!4173)) )
))
(declare-datatypes ((List!16251 0))(
  ( (Nil!16183) (Cons!16183 (h!21584 Regex!4173) (t!140330 List!16251)) )
))
(declare-datatypes ((Context!1382 0))(
  ( (Context!1383 (exprs!1191 List!16251)) )
))
(declare-datatypes ((tuple3!1410 0))(
  ( (tuple3!1411 (_1!8632 Regex!4173) (_2!8632 Context!1382) (_3!1062 C!8524)) )
))
(declare-datatypes ((array!5312 0))(
  ( (array!5313 (arr!2363 (Array (_ BitVec 32) (_ BitVec 64))) (size!13093 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!15140 0))(
  ( (tuple2!15141 (_1!8633 tuple3!1410) (_2!8633 (InoxSet Context!1382))) )
))
(declare-datatypes ((List!16252 0))(
  ( (Nil!16184) (Cons!16184 (h!21585 tuple2!15140) (t!140331 List!16252)) )
))
(declare-datatypes ((array!5314 0))(
  ( (array!5315 (arr!2364 (Array (_ BitVec 32) List!16252)) (size!13094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3030 0))(
  ( (LongMapFixedSize!3031 (defaultEntry!1875 Int) (mask!4690 (_ BitVec 32)) (extraKeys!1762 (_ BitVec 32)) (zeroValue!1772 List!16252) (minValue!1772 List!16252) (_size!3111 (_ BitVec 32)) (_keys!1809 array!5312) (_values!1794 array!5314) (_vacant!1576 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5945 0))(
  ( (Cell!5946 (v!22999 LongMapFixedSize!3030)) )
))
(declare-datatypes ((MutLongMap!1515 0))(
  ( (LongMap!1515 (underlying!3239 Cell!5945)) (MutLongMapExt!1514 (__x!10168 Int)) )
))
(declare-fun lt!531973 () MutLongMap!1515)

(get-info :version)

(assert (=> b!1530775 (= e!978599 (and e!978574 ((_ is LongMap!1515) lt!531973)))))

(declare-datatypes ((Cell!5947 0))(
  ( (Cell!5948 (v!23000 MutLongMap!1515)) )
))
(declare-datatypes ((Hashable!1459 0))(
  ( (HashableExt!1458 (__x!10169 Int)) )
))
(declare-datatypes ((MutableMap!1459 0))(
  ( (MutableMapExt!1458 (__x!10170 Int)) (HashMap!1459 (underlying!3240 Cell!5947) (hashF!3378 Hashable!1459) (_size!3112 (_ BitVec 32)) (defaultValue!1619 Int)) )
))
(declare-datatypes ((CacheDown!878 0))(
  ( (CacheDown!879 (cache!1840 MutableMap!1459)) )
))
(declare-fun cacheDown!629 () CacheDown!878)

(assert (=> b!1530775 (= lt!531973 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))

(declare-fun b!1530776 () Bool)

(declare-fun res!687028 () Bool)

(declare-fun e!978586 () Bool)

(assert (=> b!1530776 (=> res!687028 e!978586)))

(declare-datatypes ((tuple3!1412 0))(
  ( (tuple3!1413 (_1!8634 (InoxSet Context!1382)) (_2!8634 Int) (_3!1063 Int)) )
))
(declare-datatypes ((tuple2!15142 0))(
  ( (tuple2!15143 (_1!8635 tuple3!1412) (_2!8635 Int)) )
))
(declare-datatypes ((List!16253 0))(
  ( (Nil!16185) (Cons!16185 (h!21586 tuple2!15142) (t!140332 List!16253)) )
))
(declare-datatypes ((array!5316 0))(
  ( (array!5317 (arr!2365 (Array (_ BitVec 32) List!16253)) (size!13095 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3032 0))(
  ( (LongMapFixedSize!3033 (defaultEntry!1876 Int) (mask!4691 (_ BitVec 32)) (extraKeys!1763 (_ BitVec 32)) (zeroValue!1773 List!16253) (minValue!1773 List!16253) (_size!3113 (_ BitVec 32)) (_keys!1810 array!5312) (_values!1795 array!5316) (_vacant!1577 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5949 0))(
  ( (Cell!5950 (v!23001 LongMapFixedSize!3032)) )
))
(declare-datatypes ((MutLongMap!1516 0))(
  ( (LongMap!1516 (underlying!3241 Cell!5949)) (MutLongMapExt!1515 (__x!10171 Int)) )
))
(declare-datatypes ((Cell!5951 0))(
  ( (Cell!5952 (v!23002 MutLongMap!1516)) )
))
(declare-datatypes ((Hashable!1460 0))(
  ( (HashableExt!1459 (__x!10172 Int)) )
))
(declare-datatypes ((MutableMap!1460 0))(
  ( (MutableMapExt!1459 (__x!10173 Int)) (HashMap!1460 (underlying!3242 Cell!5951) (hashF!3379 Hashable!1460) (_size!3114 (_ BitVec 32)) (defaultValue!1620 Int)) )
))
(declare-datatypes ((List!16254 0))(
  ( (Nil!16186) (Cons!16186 (h!21587 (_ BitVec 16)) (t!140333 List!16254)) )
))
(declare-datatypes ((TokenValue!2945 0))(
  ( (FloatLiteralValue!5890 (text!21060 List!16254)) (TokenValueExt!2944 (__x!10174 Int)) (Broken!14725 (value!91006 List!16254)) (Object!3012) (End!2945) (Def!2945) (Underscore!2945) (Match!2945) (Else!2945) (Error!2945) (Case!2945) (If!2945) (Extends!2945) (Abstract!2945) (Class!2945) (Val!2945) (DelimiterValue!5890 (del!3005 List!16254)) (KeywordValue!2951 (value!91007 List!16254)) (CommentValue!5890 (value!91008 List!16254)) (WhitespaceValue!5890 (value!91009 List!16254)) (IndentationValue!2945 (value!91010 List!16254)) (String!18992) (Int32!2945) (Broken!14726 (value!91011 List!16254)) (Boolean!2946) (Unit!25799) (OperatorValue!2948 (op!3005 List!16254)) (IdentifierValue!5890 (value!91012 List!16254)) (IdentifierValue!5891 (value!91013 List!16254)) (WhitespaceValue!5891 (value!91014 List!16254)) (True!5890) (False!5890) (Broken!14727 (value!91015 List!16254)) (Broken!14728 (value!91016 List!16254)) (True!5891) (RightBrace!2945) (RightBracket!2945) (Colon!2945) (Null!2945) (Comma!2945) (LeftBracket!2945) (False!5891) (LeftBrace!2945) (ImaginaryLiteralValue!2945 (text!21061 List!16254)) (StringLiteralValue!8835 (value!91017 List!16254)) (EOFValue!2945 (value!91018 List!16254)) (IdentValue!2945 (value!91019 List!16254)) (DelimiterValue!5891 (value!91020 List!16254)) (DedentValue!2945 (value!91021 List!16254)) (NewLineValue!2945 (value!91022 List!16254)) (IntegerValue!8835 (value!91023 (_ BitVec 32)) (text!21062 List!16254)) (IntegerValue!8836 (value!91024 Int) (text!21063 List!16254)) (Times!2945) (Or!2945) (Equal!2945) (Minus!2945) (Broken!14729 (value!91025 List!16254)) (And!2945) (Div!2945) (LessEqual!2945) (Mod!2945) (Concat!7119) (Not!2945) (Plus!2945) (SpaceValue!2945 (value!91026 List!16254)) (IntegerValue!8837 (value!91027 Int) (text!21064 List!16254)) (StringLiteralValue!8836 (text!21065 List!16254)) (FloatLiteralValue!5891 (text!21066 List!16254)) (BytesLiteralValue!2945 (value!91028 List!16254)) (CommentValue!5891 (value!91029 List!16254)) (StringLiteralValue!8837 (value!91030 List!16254)) (ErrorTokenValue!2945 (msg!3006 List!16254)) )
))
(declare-datatypes ((tuple2!15144 0))(
  ( (tuple2!15145 (_1!8636 Context!1382) (_2!8636 C!8524)) )
))
(declare-datatypes ((tuple2!15146 0))(
  ( (tuple2!15147 (_1!8637 tuple2!15144) (_2!8637 (InoxSet Context!1382))) )
))
(declare-datatypes ((List!16255 0))(
  ( (Nil!16187) (Cons!16187 (h!21588 tuple2!15146) (t!140334 List!16255)) )
))
(declare-datatypes ((array!5318 0))(
  ( (array!5319 (arr!2366 (Array (_ BitVec 32) List!16255)) (size!13096 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3034 0))(
  ( (LongMapFixedSize!3035 (defaultEntry!1877 Int) (mask!4692 (_ BitVec 32)) (extraKeys!1764 (_ BitVec 32)) (zeroValue!1774 List!16255) (minValue!1774 List!16255) (_size!3115 (_ BitVec 32)) (_keys!1811 array!5312) (_values!1796 array!5318) (_vacant!1578 (_ BitVec 32))) )
))
(declare-datatypes ((List!16256 0))(
  ( (Nil!16188) (Cons!16188 (h!21589 C!8524) (t!140335 List!16256)) )
))
(declare-datatypes ((IArray!10931 0))(
  ( (IArray!10932 (innerList!5523 List!16256)) )
))
(declare-datatypes ((Conc!5463 0))(
  ( (Node!5463 (left!13404 Conc!5463) (right!13734 Conc!5463) (csize!11156 Int) (cheight!5674 Int)) (Leaf!8095 (xs!8260 IArray!10931) (csize!11157 Int)) (Empty!5463) )
))
(declare-datatypes ((BalanceConc!10868 0))(
  ( (BalanceConc!10869 (c!251011 Conc!5463)) )
))
(declare-datatypes ((String!18993 0))(
  ( (String!18994 (value!91031 String)) )
))
(declare-datatypes ((TokenValueInjection!5550 0))(
  ( (TokenValueInjection!5551 (toValue!4214 Int) (toChars!4073 Int)) )
))
(declare-datatypes ((Rule!5510 0))(
  ( (Rule!5511 (regex!2855 Regex!4173) (tag!3119 String!18993) (isSeparator!2855 Bool) (transformation!2855 TokenValueInjection!5550)) )
))
(declare-datatypes ((CacheFurthestNullable!296 0))(
  ( (CacheFurthestNullable!297 (cache!1841 MutableMap!1460) (totalInput!2329 BalanceConc!10868)) )
))
(declare-datatypes ((Cell!5953 0))(
  ( (Cell!5954 (v!23003 LongMapFixedSize!3034)) )
))
(declare-datatypes ((MutLongMap!1517 0))(
  ( (LongMap!1517 (underlying!3243 Cell!5953)) (MutLongMapExt!1516 (__x!10175 Int)) )
))
(declare-datatypes ((Token!5372 0))(
  ( (Token!5373 (value!91032 TokenValue!2945) (rule!4662 Rule!5510) (size!13097 Int) (originalCharacters!3717 List!16256)) )
))
(declare-datatypes ((tuple2!15148 0))(
  ( (tuple2!15149 (_1!8638 Token!5372) (_2!8638 BalanceConc!10868)) )
))
(declare-datatypes ((Option!2946 0))(
  ( (None!2945) (Some!2945 (v!23004 tuple2!15148)) )
))
(declare-datatypes ((Hashable!1461 0))(
  ( (HashableExt!1460 (__x!10176 Int)) )
))
(declare-datatypes ((Cell!5955 0))(
  ( (Cell!5956 (v!23005 MutLongMap!1517)) )
))
(declare-datatypes ((MutableMap!1461 0))(
  ( (MutableMapExt!1460 (__x!10177 Int)) (HashMap!1461 (underlying!3244 Cell!5955) (hashF!3380 Hashable!1461) (_size!3116 (_ BitVec 32)) (defaultValue!1621 Int)) )
))
(declare-datatypes ((CacheUp!872 0))(
  ( (CacheUp!873 (cache!1842 MutableMap!1461)) )
))
(declare-datatypes ((tuple4!714 0))(
  ( (tuple4!715 (_1!8639 Option!2946) (_2!8639 CacheUp!872) (_3!1064 CacheDown!878) (_4!357 CacheFurthestNullable!296)) )
))
(declare-fun lt!531977 () tuple4!714)

(declare-fun valid!1231 (CacheUp!872) Bool)

(assert (=> b!1530776 (= res!687028 (not (valid!1231 (_2!8639 lt!531977))))))

(declare-fun b!1530777 () Bool)

(declare-fun e!978571 () Bool)

(declare-fun totalInput!458 () BalanceConc!10868)

(declare-fun tp!439872 () Bool)

(declare-fun inv!21443 (Conc!5463) Bool)

(assert (=> b!1530777 (= e!978571 (and (inv!21443 (c!251011 totalInput!458)) tp!439872))))

(declare-fun b!1530778 () Bool)

(declare-fun e!978584 () Bool)

(declare-fun e!978570 () Bool)

(assert (=> b!1530778 (= e!978584 e!978570)))

(declare-fun b!1530779 () Bool)

(declare-fun e!978604 () Bool)

(declare-fun e!978607 () Bool)

(assert (=> b!1530779 (= e!978604 e!978607)))

(declare-fun b!1530780 () Bool)

(declare-fun res!687031 () Bool)

(declare-fun e!978588 () Bool)

(assert (=> b!1530780 (=> (not res!687031) (not e!978588))))

(declare-datatypes ((List!16257 0))(
  ( (Nil!16189) (Cons!16189 (h!21590 Token!5372) (t!140336 List!16257)) )
))
(declare-datatypes ((IArray!10933 0))(
  ( (IArray!10934 (innerList!5524 List!16257)) )
))
(declare-datatypes ((Conc!5464 0))(
  ( (Node!5464 (left!13405 Conc!5464) (right!13735 Conc!5464) (csize!11158 Int) (cheight!5675 Int)) (Leaf!8096 (xs!8261 IArray!10933) (csize!11159 Int)) (Empty!5464) )
))
(declare-datatypes ((BalanceConc!10870 0))(
  ( (BalanceConc!10871 (c!251012 Conc!5464)) )
))
(declare-datatypes ((tuple2!15150 0))(
  ( (tuple2!15151 (_1!8640 BalanceConc!10870) (_2!8640 BalanceConc!10868)) )
))
(declare-datatypes ((tuple4!716 0))(
  ( (tuple4!717 (_1!8641 tuple2!15150) (_2!8641 CacheUp!872) (_3!1065 CacheDown!878) (_4!358 CacheFurthestNullable!296)) )
))
(declare-fun lt!531970 () tuple4!716)

(assert (=> b!1530780 (= res!687031 (valid!1231 (_2!8641 lt!531970)))))

(declare-fun b!1530781 () Bool)

(declare-fun res!687044 () Bool)

(declare-fun e!978594 () Bool)

(assert (=> b!1530781 (=> (not res!687044) (not e!978594))))

(declare-fun lt!531964 () tuple2!15150)

(declare-fun isEmpty!9980 (List!16256) Bool)

(declare-fun list!6391 (BalanceConc!10868) List!16256)

(assert (=> b!1530781 (= res!687044 (isEmpty!9980 (list!6391 (_2!8640 lt!531964))))))

(declare-fun b!1530782 () Bool)

(declare-fun res!687047 () Bool)

(declare-fun e!978569 () Bool)

(assert (=> b!1530782 (=> (not res!687047) (not e!978569))))

(declare-fun valid!1232 (CacheDown!878) Bool)

(assert (=> b!1530782 (= res!687047 (valid!1232 cacheDown!629))))

(declare-fun b!1530783 () Bool)

(declare-fun e!978597 () Bool)

(declare-fun tp!439869 () Bool)

(declare-fun mapRes!7207 () Bool)

(assert (=> b!1530783 (= e!978597 (and tp!439869 mapRes!7207))))

(declare-fun condMapEmpty!7206 () Bool)

(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!296)

(declare-fun mapDefault!7207 () List!16253)

(assert (=> b!1530783 (= condMapEmpty!7206 (= (arr!2365 (_values!1795 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16253)) mapDefault!7207)))))

(declare-fun b!1530784 () Bool)

(declare-fun res!687029 () Bool)

(declare-fun e!978592 () Bool)

(assert (=> b!1530784 (=> (not res!687029) (not e!978592))))

(declare-datatypes ((List!16258 0))(
  ( (Nil!16190) (Cons!16190 (h!21591 Rule!5510) (t!140337 List!16258)) )
))
(declare-fun rules!1640 () List!16258)

(declare-fun isEmpty!9981 (List!16258) Bool)

(assert (=> b!1530784 (= res!687029 (not (isEmpty!9981 rules!1640)))))

(declare-fun b!1530785 () Bool)

(declare-fun e!978582 () Bool)

(assert (=> b!1530785 (= e!978569 (not e!978582))))

(declare-fun res!687027 () Bool)

(assert (=> b!1530785 (=> res!687027 e!978582)))

(declare-fun lt!531990 () List!16256)

(declare-fun lt!531989 () List!16256)

(declare-fun isSuffix!311 (List!16256 List!16256) Bool)

(assert (=> b!1530785 (= res!687027 (not (isSuffix!311 lt!531990 lt!531989)))))

(declare-fun lt!531962 () List!16256)

(assert (=> b!1530785 (isSuffix!311 lt!531990 lt!531962)))

(declare-datatypes ((Unit!25800 0))(
  ( (Unit!25801) )
))
(declare-fun lt!531976 () Unit!25800)

(declare-fun lt!531954 () List!16256)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!289 (List!16256 List!16256) Unit!25800)

(assert (=> b!1530785 (= lt!531976 (lemmaConcatTwoListThenFSndIsSuffix!289 lt!531954 lt!531990))))

(declare-fun b!1530786 () Bool)

(declare-fun e!978591 () tuple2!15150)

(declare-fun input!1102 () BalanceConc!10868)

(assert (=> b!1530786 (= e!978591 (tuple2!15151 (BalanceConc!10871 Empty!5464) input!1102))))

(declare-fun b!1530788 () Bool)

(declare-fun e!978585 () Bool)

(declare-fun acc!392 () BalanceConc!10870)

(declare-fun tp!439874 () Bool)

(declare-fun inv!21444 (Conc!5464) Bool)

(assert (=> b!1530788 (= e!978585 (and (inv!21444 (c!251012 acc!392)) tp!439874))))

(declare-fun b!1530789 () Bool)

(declare-fun e!978610 () Bool)

(declare-fun lt!531982 () tuple2!15150)

(declare-fun lt!531971 () BalanceConc!10868)

(assert (=> b!1530789 (= e!978610 (= lt!531982 (tuple2!15151 (BalanceConc!10871 Empty!5464) lt!531971)))))

(declare-fun b!1530790 () Bool)

(declare-fun res!687034 () Bool)

(assert (=> b!1530790 (=> res!687034 e!978586)))

(assert (=> b!1530790 (= res!687034 (not (valid!1232 (_3!1064 lt!531977))))))

(declare-fun b!1530791 () Bool)

(declare-fun res!687036 () Bool)

(assert (=> b!1530791 (=> (not res!687036) (not e!978569))))

(declare-fun cacheUp!616 () CacheUp!872)

(assert (=> b!1530791 (= res!687036 (valid!1231 cacheUp!616))))

(declare-fun b!1530792 () Bool)

(declare-fun e!978589 () Bool)

(declare-fun tp!439868 () Bool)

(declare-fun mapRes!7208 () Bool)

(assert (=> b!1530792 (= e!978589 (and tp!439868 mapRes!7208))))

(declare-fun condMapEmpty!7207 () Bool)

(declare-fun mapDefault!7208 () List!16252)

(assert (=> b!1530792 (= condMapEmpty!7207 (= (arr!2364 (_values!1794 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16252)) mapDefault!7208)))))

(declare-fun b!1530793 () Bool)

(declare-fun e!978608 () Bool)

(declare-fun e!978611 () Bool)

(declare-fun lt!531984 () MutLongMap!1516)

(assert (=> b!1530793 (= e!978608 (and e!978611 ((_ is LongMap!1516) lt!531984)))))

(assert (=> b!1530793 (= lt!531984 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))

(declare-fun b!1530794 () Bool)

(declare-fun res!687039 () Bool)

(assert (=> b!1530794 (=> (not res!687039) (not e!978592))))

(declare-datatypes ((LexerInterface!2507 0))(
  ( (LexerInterfaceExt!2504 (__x!10178 Int)) (Lexer!2505) )
))
(declare-fun thiss!13241 () LexerInterface!2507)

(declare-fun rulesInvariant!2278 (LexerInterface!2507 List!16258) Bool)

(assert (=> b!1530794 (= res!687039 (rulesInvariant!2278 thiss!13241 rules!1640))))

(declare-fun b!1530795 () Bool)

(declare-fun res!687037 () Bool)

(assert (=> b!1530795 (=> (not res!687037) (not e!978588))))

(assert (=> b!1530795 (= res!687037 (valid!1232 (_3!1065 lt!531970)))))

(declare-fun b!1530796 () Bool)

(declare-fun res!687035 () Bool)

(assert (=> b!1530796 (=> res!687035 e!978586)))

(declare-fun valid!1233 (CacheFurthestNullable!296) Bool)

(assert (=> b!1530796 (= res!687035 (not (valid!1233 (_4!357 lt!531977))))))

(declare-fun b!1530797 () Bool)

(declare-fun e!978568 () Bool)

(assert (=> b!1530797 (= e!978568 e!978569)))

(declare-fun res!687030 () Bool)

(assert (=> b!1530797 (=> (not res!687030) (not e!978569))))

(declare-fun lt!531956 () List!16256)

(declare-fun lt!531966 () tuple2!15150)

(assert (=> b!1530797 (= res!687030 (= lt!531956 (list!6391 (_2!8640 lt!531966))))))

(declare-fun lt!531965 () tuple2!15150)

(assert (=> b!1530797 (= lt!531956 (list!6391 (_2!8640 lt!531965)))))

(declare-fun mapNonEmpty!7206 () Bool)

(declare-fun tp!439888 () Bool)

(declare-fun tp!439882 () Bool)

(assert (=> mapNonEmpty!7206 (= mapRes!7208 (and tp!439888 tp!439882))))

(declare-fun mapRest!7208 () (Array (_ BitVec 32) List!16252))

(declare-fun mapKey!7207 () (_ BitVec 32))

(declare-fun mapValue!7207 () List!16252)

(assert (=> mapNonEmpty!7206 (= (arr!2364 (_values!1794 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) (store mapRest!7208 mapKey!7207 mapValue!7207))))

(declare-fun b!1530798 () Bool)

(declare-fun res!687042 () Bool)

(assert (=> b!1530798 (=> (not res!687042) (not e!978569))))

(assert (=> b!1530798 (= res!687042 (= (totalInput!2329 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1530799 () Bool)

(declare-fun e!978600 () Bool)

(declare-fun e!978603 () Bool)

(assert (=> b!1530799 (= e!978600 e!978603)))

(declare-fun b!1530800 () Bool)

(declare-fun res!687033 () Bool)

(assert (=> b!1530800 (=> (not res!687033) (not e!978588))))

(assert (=> b!1530800 (= res!687033 (= (list!6391 (_2!8640 (_1!8641 lt!531970))) lt!531956))))

(declare-fun b!1530801 () Bool)

(declare-fun e!978583 () Bool)

(declare-fun tp!439885 () Bool)

(assert (=> b!1530801 (= e!978583 (and (inv!21443 (c!251011 input!1102)) tp!439885))))

(declare-fun b!1530802 () Bool)

(declare-fun res!687045 () Bool)

(assert (=> b!1530802 (=> (not res!687045) (not e!978569))))

(assert (=> b!1530802 (= res!687045 (valid!1233 cacheFurthestNullable!64))))

(declare-fun e!978579 () Bool)

(assert (=> b!1530803 (= e!978607 (and e!978579 tp!439886))))

(declare-fun b!1530804 () Bool)

(declare-fun res!687025 () Bool)

(assert (=> b!1530804 (=> (not res!687025) (not e!978588))))

(assert (=> b!1530804 (= res!687025 (valid!1233 (_4!358 lt!531970)))))

(declare-fun b!1530805 () Bool)

(declare-fun e!978578 () Bool)

(assert (=> b!1530805 (= e!978578 e!978581)))

(declare-fun mapIsEmpty!7206 () Bool)

(declare-fun mapRes!7206 () Bool)

(assert (=> mapIsEmpty!7206 mapRes!7206))

(declare-fun mapNonEmpty!7207 () Bool)

(declare-fun tp!439876 () Bool)

(declare-fun tp!439883 () Bool)

(assert (=> mapNonEmpty!7207 (= mapRes!7206 (and tp!439876 tp!439883))))

(declare-fun mapKey!7206 () (_ BitVec 32))

(declare-fun mapRest!7206 () (Array (_ BitVec 32) List!16255))

(declare-fun mapValue!7208 () List!16255)

(assert (=> mapNonEmpty!7207 (= (arr!2366 (_values!1796 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) (store mapRest!7206 mapKey!7206 mapValue!7208))))

(declare-fun b!1530806 () Bool)

(declare-fun e!978596 () Bool)

(declare-fun e!978609 () Bool)

(declare-fun tp!439889 () Bool)

(assert (=> b!1530806 (= e!978596 (and e!978609 tp!439889))))

(declare-fun mapIsEmpty!7207 () Bool)

(assert (=> mapIsEmpty!7207 mapRes!7207))

(declare-fun b!1530807 () Bool)

(declare-fun e!978580 () Bool)

(assert (=> b!1530807 (= e!978592 e!978580)))

(declare-fun res!687043 () Bool)

(assert (=> b!1530807 (=> (not res!687043) (not e!978580))))

(assert (=> b!1530807 (= res!687043 (= lt!531989 lt!531962))))

(declare-fun ++!4395 (List!16256 List!16256) List!16256)

(assert (=> b!1530807 (= lt!531962 (++!4395 lt!531954 lt!531990))))

(assert (=> b!1530807 (= lt!531989 (list!6391 totalInput!458))))

(assert (=> b!1530807 (= lt!531990 (list!6391 input!1102))))

(declare-fun treated!70 () BalanceConc!10868)

(assert (=> b!1530807 (= lt!531954 (list!6391 treated!70))))

(declare-fun b!1530808 () Bool)

(assert (=> b!1530808 (= e!978588 (= (totalInput!2329 (_4!358 lt!531970)) totalInput!458))))

(declare-fun mapIsEmpty!7208 () Bool)

(assert (=> mapIsEmpty!7208 mapRes!7208))

(declare-fun b!1530809 () Bool)

(declare-fun e!978595 () Bool)

(declare-fun tp!439880 () Bool)

(assert (=> b!1530809 (= e!978595 (and (inv!21443 (c!251011 treated!70)) tp!439880))))

(declare-fun e!978593 () Bool)

(assert (=> b!1530810 (= e!978593 (and e!978608 tp!439866))))

(declare-fun b!1530811 () Bool)

(assert (=> b!1530811 (= e!978586 e!978588)))

(declare-fun res!687041 () Bool)

(assert (=> b!1530811 (=> (not res!687041) (not e!978588))))

(declare-fun lt!531955 () List!16257)

(declare-fun list!6392 (BalanceConc!10870) List!16257)

(assert (=> b!1530811 (= res!687041 (= (list!6392 (_1!8640 (_1!8641 lt!531970))) lt!531955))))

(declare-fun lt!531988 () BalanceConc!10870)

(declare-fun lexTailRecV3Mem!26 (LexerInterface!2507 List!16258 BalanceConc!10868 BalanceConc!10868 BalanceConc!10868 BalanceConc!10870 CacheUp!872 CacheDown!878 CacheFurthestNullable!296) tuple4!716)

(assert (=> b!1530811 (= lt!531970 (lexTailRecV3Mem!26 thiss!13241 rules!1640 totalInput!458 lt!531971 (_2!8638 (v!23004 (_1!8639 lt!531977))) lt!531988 (_2!8639 lt!531977) (_3!1064 lt!531977) (_4!357 lt!531977)))))

(assert (=> b!1530812 (= e!978570 (and e!978599 tp!439878))))

(declare-fun b!1530813 () Bool)

(declare-fun e!978587 () Bool)

(declare-fun e!978575 () Bool)

(assert (=> b!1530813 (= e!978587 e!978575)))

(declare-fun tp!439884 () Bool)

(declare-fun e!978590 () Bool)

(declare-fun tp!439873 () Bool)

(declare-fun array_inv!1706 (array!5312) Bool)

(declare-fun array_inv!1707 (array!5318) Bool)

(assert (=> b!1530814 (= e!978598 (and tp!439877 tp!439884 tp!439873 (array_inv!1706 (_keys!1811 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) (array_inv!1707 (_values!1796 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) e!978590))))

(declare-fun tp!439887 () Bool)

(declare-fun tp!439875 () Bool)

(declare-fun array_inv!1708 (array!5314) Bool)

(assert (=> b!1530815 (= e!978603 (and tp!439860 tp!439887 tp!439875 (array_inv!1706 (_keys!1809 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) (array_inv!1708 (_values!1794 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) e!978589))))

(declare-fun b!1530816 () Bool)

(assert (=> b!1530816 (= e!978594 e!978568)))

(declare-fun res!687026 () Bool)

(assert (=> b!1530816 (=> (not res!687026) (not e!978568))))

(declare-fun lt!531968 () BalanceConc!10870)

(assert (=> b!1530816 (= res!687026 (= lt!531955 (list!6392 lt!531968)))))

(assert (=> b!1530816 (= lt!531955 (list!6392 (_1!8640 lt!531965)))))

(declare-fun ++!4396 (BalanceConc!10870 BalanceConc!10870) BalanceConc!10870)

(assert (=> b!1530816 (= lt!531968 (++!4396 acc!392 (_1!8640 lt!531966)))))

(declare-fun lexRec!341 (LexerInterface!2507 List!16258 BalanceConc!10868) tuple2!15150)

(assert (=> b!1530816 (= lt!531966 (lexRec!341 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1530816 (= lt!531965 (lexRec!341 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1530817 () Bool)

(declare-fun e!978606 () Bool)

(declare-fun tp!439870 () Bool)

(assert (=> b!1530817 (= e!978606 (and (inv!21443 (c!251011 (totalInput!2329 cacheFurthestNullable!64))) tp!439870))))

(declare-fun e!978577 () Bool)

(declare-fun b!1530818 () Bool)

(declare-fun inv!21445 (BalanceConc!10868) Bool)

(assert (=> b!1530818 (= e!978577 (and e!978593 (inv!21445 (totalInput!2329 cacheFurthestNullable!64)) e!978606))))

(declare-fun mapNonEmpty!7208 () Bool)

(declare-fun tp!439871 () Bool)

(declare-fun tp!439861 () Bool)

(assert (=> mapNonEmpty!7208 (= mapRes!7207 (and tp!439871 tp!439861))))

(declare-fun mapRest!7207 () (Array (_ BitVec 32) List!16253))

(declare-fun mapKey!7208 () (_ BitVec 32))

(declare-fun mapValue!7206 () List!16253)

(assert (=> mapNonEmpty!7208 (= (arr!2365 (_values!1795 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) (store mapRest!7207 mapKey!7208 mapValue!7206))))

(declare-fun lt!531969 () tuple2!15150)

(declare-fun lt!531987 () Option!2946)

(declare-fun b!1530819 () Bool)

(declare-fun prepend!481 (BalanceConc!10870 Token!5372) BalanceConc!10870)

(assert (=> b!1530819 (= e!978610 (= lt!531982 (tuple2!15151 (prepend!481 (_1!8640 lt!531969) (_1!8638 (v!23004 lt!531987))) (_2!8640 lt!531969))))))

(assert (=> b!1530819 (= lt!531969 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!531987))))))

(declare-fun res!687032 () Bool)

(assert (=> start!142396 (=> (not res!687032) (not e!978592))))

(assert (=> start!142396 (= res!687032 ((_ is Lexer!2505) thiss!13241))))

(assert (=> start!142396 e!978592))

(declare-fun inv!21446 (BalanceConc!10870) Bool)

(assert (=> start!142396 (and (inv!21446 acc!392) e!978585)))

(declare-fun inv!21447 (CacheUp!872) Bool)

(assert (=> start!142396 (and (inv!21447 cacheUp!616) e!978604)))

(declare-fun inv!21448 (CacheDown!878) Bool)

(assert (=> start!142396 (and (inv!21448 cacheDown!629) e!978584)))

(assert (=> start!142396 (and (inv!21445 input!1102) e!978583)))

(assert (=> start!142396 (and (inv!21445 treated!70) e!978595)))

(assert (=> start!142396 true))

(assert (=> start!142396 e!978596))

(declare-fun inv!21449 (CacheFurthestNullable!296) Bool)

(assert (=> start!142396 (and (inv!21449 cacheFurthestNullable!64) e!978577)))

(assert (=> start!142396 (and (inv!21445 totalInput!458) e!978571)))

(declare-fun b!1530787 () Bool)

(assert (=> b!1530787 (= e!978574 e!978600)))

(declare-fun tp!439881 () Bool)

(declare-fun tp!439862 () Bool)

(declare-fun array_inv!1709 (array!5316) Bool)

(assert (=> b!1530820 (= e!978575 (and tp!439867 tp!439881 tp!439862 (array_inv!1706 (_keys!1810 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) (array_inv!1709 (_values!1795 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) e!978597))))

(declare-fun e!978602 () Bool)

(assert (=> b!1530821 (= e!978602 (and tp!439864 tp!439879))))

(declare-fun b!1530822 () Bool)

(declare-fun e!978573 () Bool)

(assert (=> b!1530822 (= e!978573 e!978586)))

(declare-fun res!687046 () Bool)

(assert (=> b!1530822 (=> res!687046 e!978586)))

(declare-fun lt!531979 () List!16256)

(assert (=> b!1530822 (= res!687046 (not (isSuffix!311 lt!531979 lt!531989)))))

(declare-fun lt!531985 () List!16256)

(assert (=> b!1530822 (isSuffix!311 lt!531979 (++!4395 lt!531985 lt!531979))))

(declare-fun lt!531980 () Unit!25800)

(assert (=> b!1530822 (= lt!531980 (lemmaConcatTwoListThenFSndIsSuffix!289 lt!531985 lt!531979))))

(assert (=> b!1530822 (= lt!531985 (list!6391 lt!531971))))

(assert (=> b!1530822 e!978610))

(declare-fun c!251008 () Bool)

(assert (=> b!1530822 (= c!251008 ((_ is Some!2945) lt!531987))))

(assert (=> b!1530822 (= lt!531982 (lexRec!341 thiss!13241 rules!1640 lt!531971))))

(declare-fun maxPrefixZipperSequence!598 (LexerInterface!2507 List!16258 BalanceConc!10868) Option!2946)

(assert (=> b!1530822 (= lt!531987 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 lt!531971))))

(declare-fun lt!531974 () BalanceConc!10868)

(declare-fun ++!4397 (BalanceConc!10868 BalanceConc!10868) BalanceConc!10868)

(assert (=> b!1530822 (= lt!531971 (++!4397 treated!70 lt!531974))))

(declare-fun lt!531986 () List!16256)

(declare-fun lt!531957 () List!16257)

(declare-datatypes ((tuple2!15152 0))(
  ( (tuple2!15153 (_1!8642 List!16257) (_2!8642 List!16256)) )
))
(declare-fun lexList!755 (LexerInterface!2507 List!16258 List!16256) tuple2!15152)

(assert (=> b!1530822 (= (lexList!755 thiss!13241 rules!1640 lt!531986) (tuple2!15153 lt!531957 Nil!16188))))

(declare-fun lt!531963 () tuple2!15150)

(declare-fun lt!531961 () List!16257)

(declare-fun lt!531981 () Unit!25800)

(declare-fun lemmaLexThenLexPrefix!231 (LexerInterface!2507 List!16258 List!16256 List!16256 List!16257 List!16257 List!16256) Unit!25800)

(assert (=> b!1530822 (= lt!531981 (lemmaLexThenLexPrefix!231 thiss!13241 rules!1640 lt!531986 lt!531979 lt!531957 lt!531961 (list!6391 (_2!8640 lt!531963))))))

(assert (=> b!1530822 (= lt!531957 (list!6392 lt!531988))))

(declare-fun append!519 (BalanceConc!10870 Token!5372) BalanceConc!10870)

(assert (=> b!1530822 (= lt!531988 (append!519 acc!392 (_1!8638 (v!23004 (_1!8639 lt!531977)))))))

(declare-fun lt!531972 () List!16257)

(declare-fun lt!531983 () List!16257)

(declare-fun ++!4398 (List!16257 List!16257) List!16257)

(assert (=> b!1530822 (= (++!4398 (++!4398 lt!531972 lt!531983) lt!531961) (++!4398 lt!531972 (++!4398 lt!531983 lt!531961)))))

(declare-fun lt!531978 () Unit!25800)

(declare-fun lemmaConcatAssociativity!962 (List!16257 List!16257 List!16257) Unit!25800)

(assert (=> b!1530822 (= lt!531978 (lemmaConcatAssociativity!962 lt!531972 lt!531983 lt!531961))))

(assert (=> b!1530822 (= lt!531961 (list!6392 (_1!8640 lt!531963)))))

(assert (=> b!1530822 (= lt!531983 (Cons!16189 (_1!8638 (v!23004 (_1!8639 lt!531977))) Nil!16189))))

(assert (=> b!1530822 (= lt!531966 e!978591)))

(declare-fun c!251009 () Bool)

(declare-fun lt!531958 () Option!2946)

(assert (=> b!1530822 (= c!251009 ((_ is Some!2945) lt!531958))))

(assert (=> b!1530822 (= lt!531958 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!531959 () List!16256)

(assert (=> b!1530822 (= (++!4395 lt!531986 lt!531979) (++!4395 lt!531954 (++!4395 lt!531959 lt!531979)))))

(assert (=> b!1530822 (= lt!531986 (++!4395 lt!531954 lt!531959))))

(declare-fun lt!531975 () Unit!25800)

(declare-fun lemmaConcatAssociativity!963 (List!16256 List!16256 List!16256) Unit!25800)

(assert (=> b!1530822 (= lt!531975 (lemmaConcatAssociativity!963 lt!531954 lt!531959 lt!531979))))

(assert (=> b!1530822 (= lt!531979 (list!6391 (_2!8638 (v!23004 (_1!8639 lt!531977)))))))

(assert (=> b!1530822 (= lt!531959 (list!6391 lt!531974))))

(declare-fun charsOf!1638 (Token!5372) BalanceConc!10868)

(assert (=> b!1530822 (= lt!531974 (charsOf!1638 (_1!8638 (v!23004 (_1!8639 lt!531977)))))))

(assert (=> b!1530822 (= lt!531963 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 (_1!8639 lt!531977)))))))

(declare-fun b!1530823 () Bool)

(assert (=> b!1530823 (= e!978582 e!978573)))

(declare-fun res!687038 () Bool)

(assert (=> b!1530823 (=> res!687038 e!978573)))

(assert (=> b!1530823 (= res!687038 (not ((_ is Some!2945) (_1!8639 lt!531977))))))

(declare-fun maxPrefixZipperSequenceV3Mem!33 (LexerInterface!2507 List!16258 BalanceConc!10868 BalanceConc!10868 CacheUp!872 CacheDown!878 CacheFurthestNullable!296) tuple4!714)

(assert (=> b!1530823 (= lt!531977 (maxPrefixZipperSequenceV3Mem!33 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1530824 () Bool)

(assert (=> b!1530824 (= e!978611 e!978587)))

(declare-fun b!1530825 () Bool)

(declare-fun lt!531967 () tuple2!15150)

(assert (=> b!1530825 (= e!978591 (tuple2!15151 (prepend!481 (_1!8640 lt!531967) (_1!8638 (v!23004 lt!531958))) (_2!8640 lt!531967)))))

(assert (=> b!1530825 (= lt!531967 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!531958))))))

(declare-fun tp!439865 () Bool)

(declare-fun b!1530826 () Bool)

(declare-fun inv!21436 (String!18993) Bool)

(declare-fun inv!21450 (TokenValueInjection!5550) Bool)

(assert (=> b!1530826 (= e!978609 (and tp!439865 (inv!21436 (tag!3119 (h!21591 rules!1640))) (inv!21450 (transformation!2855 (h!21591 rules!1640))) e!978602))))

(declare-fun b!1530827 () Bool)

(assert (=> b!1530827 (= e!978580 e!978594)))

(declare-fun res!687040 () Bool)

(assert (=> b!1530827 (=> (not res!687040) (not e!978594))))

(declare-fun lt!531960 () List!16257)

(assert (=> b!1530827 (= res!687040 (= lt!531960 lt!531972))))

(assert (=> b!1530827 (= lt!531972 (list!6392 acc!392))))

(assert (=> b!1530827 (= lt!531960 (list!6392 (_1!8640 lt!531964)))))

(assert (=> b!1530827 (= lt!531964 (lexRec!341 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1530828 () Bool)

(declare-fun tp!439863 () Bool)

(assert (=> b!1530828 (= e!978590 (and tp!439863 mapRes!7206))))

(declare-fun condMapEmpty!7208 () Bool)

(declare-fun mapDefault!7206 () List!16255)

(assert (=> b!1530828 (= condMapEmpty!7208 (= (arr!2366 (_values!1796 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16255)) mapDefault!7206)))))

(declare-fun b!1530829 () Bool)

(declare-fun lt!531953 () MutLongMap!1517)

(assert (=> b!1530829 (= e!978579 (and e!978578 ((_ is LongMap!1517) lt!531953)))))

(assert (=> b!1530829 (= lt!531953 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))

(assert (= (and start!142396 res!687032) b!1530784))

(assert (= (and b!1530784 res!687029) b!1530794))

(assert (= (and b!1530794 res!687039) b!1530807))

(assert (= (and b!1530807 res!687043) b!1530827))

(assert (= (and b!1530827 res!687040) b!1530781))

(assert (= (and b!1530781 res!687044) b!1530816))

(assert (= (and b!1530816 res!687026) b!1530797))

(assert (= (and b!1530797 res!687030) b!1530791))

(assert (= (and b!1530791 res!687036) b!1530782))

(assert (= (and b!1530782 res!687047) b!1530802))

(assert (= (and b!1530802 res!687045) b!1530798))

(assert (= (and b!1530798 res!687042) b!1530785))

(assert (= (and b!1530785 (not res!687027)) b!1530823))

(assert (= (and b!1530823 (not res!687038)) b!1530822))

(assert (= (and b!1530822 c!251009) b!1530825))

(assert (= (and b!1530822 (not c!251009)) b!1530786))

(assert (= (and b!1530822 c!251008) b!1530819))

(assert (= (and b!1530822 (not c!251008)) b!1530789))

(assert (= (and b!1530822 (not res!687046)) b!1530796))

(assert (= (and b!1530796 (not res!687035)) b!1530776))

(assert (= (and b!1530776 (not res!687028)) b!1530790))

(assert (= (and b!1530790 (not res!687034)) b!1530811))

(assert (= (and b!1530811 res!687041) b!1530800))

(assert (= (and b!1530800 res!687033) b!1530804))

(assert (= (and b!1530804 res!687025) b!1530780))

(assert (= (and b!1530780 res!687031) b!1530795))

(assert (= (and b!1530795 res!687037) b!1530808))

(assert (= start!142396 b!1530788))

(assert (= (and b!1530828 condMapEmpty!7208) mapIsEmpty!7206))

(assert (= (and b!1530828 (not condMapEmpty!7208)) mapNonEmpty!7207))

(assert (= b!1530814 b!1530828))

(assert (= b!1530774 b!1530814))

(assert (= b!1530805 b!1530774))

(assert (= (and b!1530829 ((_ is LongMap!1517) (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))) b!1530805))

(assert (= b!1530803 b!1530829))

(assert (= (and b!1530779 ((_ is HashMap!1461) (cache!1842 cacheUp!616))) b!1530803))

(assert (= start!142396 b!1530779))

(assert (= (and b!1530792 condMapEmpty!7207) mapIsEmpty!7208))

(assert (= (and b!1530792 (not condMapEmpty!7207)) mapNonEmpty!7206))

(assert (= b!1530815 b!1530792))

(assert (= b!1530799 b!1530815))

(assert (= b!1530787 b!1530799))

(assert (= (and b!1530775 ((_ is LongMap!1515) (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))) b!1530787))

(assert (= b!1530812 b!1530775))

(assert (= (and b!1530778 ((_ is HashMap!1459) (cache!1840 cacheDown!629))) b!1530812))

(assert (= start!142396 b!1530778))

(assert (= start!142396 b!1530801))

(assert (= start!142396 b!1530809))

(assert (= b!1530826 b!1530821))

(assert (= b!1530806 b!1530826))

(assert (= (and start!142396 ((_ is Cons!16190) rules!1640)) b!1530806))

(assert (= (and b!1530783 condMapEmpty!7206) mapIsEmpty!7207))

(assert (= (and b!1530783 (not condMapEmpty!7206)) mapNonEmpty!7208))

(assert (= b!1530820 b!1530783))

(assert (= b!1530813 b!1530820))

(assert (= b!1530824 b!1530813))

(assert (= (and b!1530793 ((_ is LongMap!1516) (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))) b!1530824))

(assert (= b!1530810 b!1530793))

(assert (= (and b!1530818 ((_ is HashMap!1460) (cache!1841 cacheFurthestNullable!64))) b!1530810))

(assert (= b!1530818 b!1530817))

(assert (= start!142396 b!1530818))

(assert (= start!142396 b!1530777))

(declare-fun m!1805149 () Bool)

(assert (=> b!1530785 m!1805149))

(declare-fun m!1805151 () Bool)

(assert (=> b!1530785 m!1805151))

(declare-fun m!1805153 () Bool)

(assert (=> b!1530785 m!1805153))

(declare-fun m!1805155 () Bool)

(assert (=> mapNonEmpty!7207 m!1805155))

(declare-fun m!1805157 () Bool)

(assert (=> b!1530807 m!1805157))

(declare-fun m!1805159 () Bool)

(assert (=> b!1530807 m!1805159))

(declare-fun m!1805161 () Bool)

(assert (=> b!1530807 m!1805161))

(declare-fun m!1805163 () Bool)

(assert (=> b!1530807 m!1805163))

(declare-fun m!1805165 () Bool)

(assert (=> b!1530797 m!1805165))

(declare-fun m!1805167 () Bool)

(assert (=> b!1530797 m!1805167))

(declare-fun m!1805169 () Bool)

(assert (=> b!1530791 m!1805169))

(declare-fun m!1805171 () Bool)

(assert (=> b!1530784 m!1805171))

(declare-fun m!1805173 () Bool)

(assert (=> b!1530816 m!1805173))

(declare-fun m!1805175 () Bool)

(assert (=> b!1530816 m!1805175))

(declare-fun m!1805177 () Bool)

(assert (=> b!1530816 m!1805177))

(declare-fun m!1805179 () Bool)

(assert (=> b!1530816 m!1805179))

(declare-fun m!1805181 () Bool)

(assert (=> b!1530816 m!1805181))

(declare-fun m!1805183 () Bool)

(assert (=> b!1530820 m!1805183))

(declare-fun m!1805185 () Bool)

(assert (=> b!1530820 m!1805185))

(declare-fun m!1805187 () Bool)

(assert (=> b!1530814 m!1805187))

(declare-fun m!1805189 () Bool)

(assert (=> b!1530814 m!1805189))

(declare-fun m!1805191 () Bool)

(assert (=> b!1530826 m!1805191))

(declare-fun m!1805193 () Bool)

(assert (=> b!1530826 m!1805193))

(declare-fun m!1805195 () Bool)

(assert (=> b!1530815 m!1805195))

(declare-fun m!1805197 () Bool)

(assert (=> b!1530815 m!1805197))

(declare-fun m!1805199 () Bool)

(assert (=> b!1530825 m!1805199))

(declare-fun m!1805201 () Bool)

(assert (=> b!1530825 m!1805201))

(declare-fun m!1805203 () Bool)

(assert (=> mapNonEmpty!7206 m!1805203))

(declare-fun m!1805205 () Bool)

(assert (=> b!1530794 m!1805205))

(declare-fun m!1805207 () Bool)

(assert (=> b!1530819 m!1805207))

(declare-fun m!1805209 () Bool)

(assert (=> b!1530819 m!1805209))

(declare-fun m!1805211 () Bool)

(assert (=> b!1530780 m!1805211))

(declare-fun m!1805213 () Bool)

(assert (=> b!1530796 m!1805213))

(declare-fun m!1805215 () Bool)

(assert (=> b!1530776 m!1805215))

(declare-fun m!1805217 () Bool)

(assert (=> b!1530823 m!1805217))

(declare-fun m!1805219 () Bool)

(assert (=> b!1530822 m!1805219))

(declare-fun m!1805221 () Bool)

(assert (=> b!1530822 m!1805221))

(declare-fun m!1805223 () Bool)

(assert (=> b!1530822 m!1805223))

(declare-fun m!1805225 () Bool)

(assert (=> b!1530822 m!1805225))

(declare-fun m!1805227 () Bool)

(assert (=> b!1530822 m!1805227))

(declare-fun m!1805229 () Bool)

(assert (=> b!1530822 m!1805229))

(declare-fun m!1805231 () Bool)

(assert (=> b!1530822 m!1805231))

(declare-fun m!1805233 () Bool)

(assert (=> b!1530822 m!1805233))

(declare-fun m!1805235 () Bool)

(assert (=> b!1530822 m!1805235))

(declare-fun m!1805237 () Bool)

(assert (=> b!1530822 m!1805237))

(declare-fun m!1805239 () Bool)

(assert (=> b!1530822 m!1805239))

(declare-fun m!1805241 () Bool)

(assert (=> b!1530822 m!1805241))

(declare-fun m!1805243 () Bool)

(assert (=> b!1530822 m!1805243))

(declare-fun m!1805245 () Bool)

(assert (=> b!1530822 m!1805245))

(declare-fun m!1805247 () Bool)

(assert (=> b!1530822 m!1805247))

(declare-fun m!1805249 () Bool)

(assert (=> b!1530822 m!1805249))

(declare-fun m!1805251 () Bool)

(assert (=> b!1530822 m!1805251))

(declare-fun m!1805253 () Bool)

(assert (=> b!1530822 m!1805253))

(declare-fun m!1805255 () Bool)

(assert (=> b!1530822 m!1805255))

(declare-fun m!1805257 () Bool)

(assert (=> b!1530822 m!1805257))

(declare-fun m!1805259 () Bool)

(assert (=> b!1530822 m!1805259))

(assert (=> b!1530822 m!1805227))

(declare-fun m!1805261 () Bool)

(assert (=> b!1530822 m!1805261))

(assert (=> b!1530822 m!1805241))

(declare-fun m!1805263 () Bool)

(assert (=> b!1530822 m!1805263))

(assert (=> b!1530822 m!1805261))

(declare-fun m!1805265 () Bool)

(assert (=> b!1530822 m!1805265))

(assert (=> b!1530822 m!1805237))

(declare-fun m!1805267 () Bool)

(assert (=> b!1530822 m!1805267))

(declare-fun m!1805269 () Bool)

(assert (=> b!1530822 m!1805269))

(assert (=> b!1530822 m!1805219))

(declare-fun m!1805271 () Bool)

(assert (=> b!1530822 m!1805271))

(declare-fun m!1805273 () Bool)

(assert (=> b!1530822 m!1805273))

(declare-fun m!1805275 () Bool)

(assert (=> b!1530822 m!1805275))

(declare-fun m!1805277 () Bool)

(assert (=> b!1530800 m!1805277))

(declare-fun m!1805279 () Bool)

(assert (=> b!1530782 m!1805279))

(declare-fun m!1805281 () Bool)

(assert (=> b!1530781 m!1805281))

(assert (=> b!1530781 m!1805281))

(declare-fun m!1805283 () Bool)

(assert (=> b!1530781 m!1805283))

(declare-fun m!1805285 () Bool)

(assert (=> mapNonEmpty!7208 m!1805285))

(declare-fun m!1805287 () Bool)

(assert (=> b!1530795 m!1805287))

(declare-fun m!1805289 () Bool)

(assert (=> b!1530801 m!1805289))

(declare-fun m!1805291 () Bool)

(assert (=> b!1530817 m!1805291))

(declare-fun m!1805293 () Bool)

(assert (=> b!1530818 m!1805293))

(declare-fun m!1805295 () Bool)

(assert (=> start!142396 m!1805295))

(declare-fun m!1805297 () Bool)

(assert (=> start!142396 m!1805297))

(declare-fun m!1805299 () Bool)

(assert (=> start!142396 m!1805299))

(declare-fun m!1805301 () Bool)

(assert (=> start!142396 m!1805301))

(declare-fun m!1805303 () Bool)

(assert (=> start!142396 m!1805303))

(declare-fun m!1805305 () Bool)

(assert (=> start!142396 m!1805305))

(declare-fun m!1805307 () Bool)

(assert (=> start!142396 m!1805307))

(declare-fun m!1805309 () Bool)

(assert (=> b!1530788 m!1805309))

(declare-fun m!1805311 () Bool)

(assert (=> b!1530777 m!1805311))

(declare-fun m!1805313 () Bool)

(assert (=> b!1530804 m!1805313))

(declare-fun m!1805315 () Bool)

(assert (=> b!1530827 m!1805315))

(declare-fun m!1805317 () Bool)

(assert (=> b!1530827 m!1805317))

(declare-fun m!1805319 () Bool)

(assert (=> b!1530827 m!1805319))

(declare-fun m!1805321 () Bool)

(assert (=> b!1530809 m!1805321))

(declare-fun m!1805323 () Bool)

(assert (=> b!1530790 m!1805323))

(declare-fun m!1805325 () Bool)

(assert (=> b!1530802 m!1805325))

(declare-fun m!1805327 () Bool)

(assert (=> b!1530811 m!1805327))

(declare-fun m!1805329 () Bool)

(assert (=> b!1530811 m!1805329))

(check-sat (not b_next!40289) (not b!1530811) (not start!142396) (not b!1530819) (not b!1530820) (not b!1530782) (not b!1530781) (not b!1530817) (not b!1530788) (not b!1530814) (not b!1530825) (not b_next!40293) b_and!106351 (not b!1530795) (not b!1530783) (not b_next!40301) (not b!1530827) (not b!1530826) (not b!1530806) (not b!1530776) (not b!1530815) b_and!106355 (not b_next!40299) (not b!1530822) (not b!1530807) b_and!106349 (not b!1530802) (not b!1530792) (not b!1530796) (not b!1530809) (not b!1530791) (not b!1530794) (not b_next!40297) (not b!1530780) (not mapNonEmpty!7208) b_and!106347 b_and!106357 (not b!1530800) (not b!1530804) (not b!1530797) (not b_next!40295) (not b!1530816) (not mapNonEmpty!7207) (not b!1530790) (not b!1530801) (not mapNonEmpty!7206) (not b!1530828) b_and!106361 (not b!1530823) (not b!1530785) (not b!1530777) b_and!106353 b_and!106359 (not b!1530818) (not b_next!40291) (not b_next!40287) (not b!1530784))
(check-sat (not b_next!40301) (not b_next!40289) b_and!106349 (not b_next!40297) (not b_next!40295) b_and!106361 b_and!106353 (not b_next!40287) (not b_next!40293) b_and!106351 b_and!106355 (not b_next!40299) b_and!106347 b_and!106357 b_and!106359 (not b_next!40291))
(get-model)

(declare-fun d!456410 () Bool)

(assert (=> d!456410 (= (isEmpty!9980 (list!6391 (_2!8640 lt!531964))) ((_ is Nil!16188) (list!6391 (_2!8640 lt!531964))))))

(assert (=> b!1530781 d!456410))

(declare-fun d!456412 () Bool)

(declare-fun list!6393 (Conc!5463) List!16256)

(assert (=> d!456412 (= (list!6391 (_2!8640 lt!531964)) (list!6393 (c!251011 (_2!8640 lt!531964))))))

(declare-fun bs!378490 () Bool)

(assert (= bs!378490 d!456412))

(declare-fun m!1805331 () Bool)

(assert (=> bs!378490 m!1805331))

(assert (=> b!1530781 d!456412))

(declare-fun d!456414 () Bool)

(declare-fun validCacheMapDown!141 (MutableMap!1459) Bool)

(assert (=> d!456414 (= (valid!1232 cacheDown!629) (validCacheMapDown!141 (cache!1840 cacheDown!629)))))

(declare-fun bs!378491 () Bool)

(assert (= bs!378491 d!456414))

(declare-fun m!1805333 () Bool)

(assert (=> bs!378491 m!1805333))

(assert (=> b!1530782 d!456414))

(declare-fun d!456416 () Bool)

(declare-fun validCacheMapFurthestNullable!54 (MutableMap!1460 BalanceConc!10868) Bool)

(assert (=> d!456416 (= (valid!1233 cacheFurthestNullable!64) (validCacheMapFurthestNullable!54 (cache!1841 cacheFurthestNullable!64) (totalInput!2329 cacheFurthestNullable!64)))))

(declare-fun bs!378492 () Bool)

(assert (= bs!378492 d!456416))

(declare-fun m!1805335 () Bool)

(assert (=> bs!378492 m!1805335))

(assert (=> b!1530802 d!456416))

(declare-fun d!456418 () Bool)

(declare-fun validCacheMapUp!141 (MutableMap!1461) Bool)

(assert (=> d!456418 (= (valid!1231 (_2!8641 lt!531970)) (validCacheMapUp!141 (cache!1842 (_2!8641 lt!531970))))))

(declare-fun bs!378493 () Bool)

(assert (= bs!378493 d!456418))

(declare-fun m!1805337 () Bool)

(assert (=> bs!378493 m!1805337))

(assert (=> b!1530780 d!456418))

(declare-fun d!456420 () Bool)

(assert (=> d!456420 (= (list!6391 (_2!8640 (_1!8641 lt!531970))) (list!6393 (c!251011 (_2!8640 (_1!8641 lt!531970)))))))

(declare-fun bs!378494 () Bool)

(assert (= bs!378494 d!456420))

(declare-fun m!1805339 () Bool)

(assert (=> bs!378494 m!1805339))

(assert (=> b!1530800 d!456420))

(declare-fun d!456422 () Bool)

(declare-fun c!251015 () Bool)

(assert (=> d!456422 (= c!251015 ((_ is Node!5463) (c!251011 input!1102)))))

(declare-fun e!978616 () Bool)

(assert (=> d!456422 (= (inv!21443 (c!251011 input!1102)) e!978616)))

(declare-fun b!1530836 () Bool)

(declare-fun inv!21451 (Conc!5463) Bool)

(assert (=> b!1530836 (= e!978616 (inv!21451 (c!251011 input!1102)))))

(declare-fun b!1530837 () Bool)

(declare-fun e!978617 () Bool)

(assert (=> b!1530837 (= e!978616 e!978617)))

(declare-fun res!687052 () Bool)

(assert (=> b!1530837 (= res!687052 (not ((_ is Leaf!8095) (c!251011 input!1102))))))

(assert (=> b!1530837 (=> res!687052 e!978617)))

(declare-fun b!1530838 () Bool)

(declare-fun inv!21452 (Conc!5463) Bool)

(assert (=> b!1530838 (= e!978617 (inv!21452 (c!251011 input!1102)))))

(assert (= (and d!456422 c!251015) b!1530836))

(assert (= (and d!456422 (not c!251015)) b!1530837))

(assert (= (and b!1530837 (not res!687052)) b!1530838))

(declare-fun m!1805341 () Bool)

(assert (=> b!1530836 m!1805341))

(declare-fun m!1805343 () Bool)

(assert (=> b!1530838 m!1805343))

(assert (=> b!1530801 d!456422))

(declare-fun d!456424 () Bool)

(declare-fun isBalanced!1621 (Conc!5463) Bool)

(assert (=> d!456424 (= (inv!21445 (totalInput!2329 cacheFurthestNullable!64)) (isBalanced!1621 (c!251011 (totalInput!2329 cacheFurthestNullable!64))))))

(declare-fun bs!378495 () Bool)

(assert (= bs!378495 d!456424))

(declare-fun m!1805345 () Bool)

(assert (=> bs!378495 m!1805345))

(assert (=> b!1530818 d!456424))

(declare-fun b!1530853 () Bool)

(declare-fun e!978629 () tuple2!15150)

(declare-fun lt!531997 () tuple2!15150)

(declare-fun lt!531999 () Option!2946)

(assert (=> b!1530853 (= e!978629 (tuple2!15151 (prepend!481 (_1!8640 lt!531997) (_1!8638 (v!23004 lt!531999))) (_2!8640 lt!531997)))))

(assert (=> b!1530853 (= lt!531997 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!531999))))))

(declare-fun b!1530854 () Bool)

(assert (=> b!1530854 (= e!978629 (tuple2!15151 (BalanceConc!10871 Empty!5464) totalInput!458))))

(declare-fun b!1530856 () Bool)

(declare-fun e!978627 () Bool)

(declare-fun e!978628 () Bool)

(assert (=> b!1530856 (= e!978627 e!978628)))

(declare-fun res!687060 () Bool)

(declare-fun lt!531998 () tuple2!15150)

(declare-fun size!13098 (BalanceConc!10868) Int)

(assert (=> b!1530856 (= res!687060 (< (size!13098 (_2!8640 lt!531998)) (size!13098 totalInput!458)))))

(assert (=> b!1530856 (=> (not res!687060) (not e!978628))))

(declare-fun b!1530857 () Bool)

(declare-fun isEmpty!9982 (BalanceConc!10870) Bool)

(assert (=> b!1530857 (= e!978628 (not (isEmpty!9982 (_1!8640 lt!531998))))))

(declare-fun d!456426 () Bool)

(declare-fun e!978626 () Bool)

(assert (=> d!456426 e!978626))

(declare-fun res!687061 () Bool)

(assert (=> d!456426 (=> (not res!687061) (not e!978626))))

(assert (=> d!456426 (= res!687061 e!978627)))

(declare-fun c!251020 () Bool)

(declare-fun size!13099 (BalanceConc!10870) Int)

(assert (=> d!456426 (= c!251020 (> (size!13099 (_1!8640 lt!531998)) 0))))

(assert (=> d!456426 (= lt!531998 e!978629)))

(declare-fun c!251021 () Bool)

(assert (=> d!456426 (= c!251021 ((_ is Some!2945) lt!531999))))

(assert (=> d!456426 (= lt!531999 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!456426 (= (lexRec!341 thiss!13241 rules!1640 totalInput!458) lt!531998)))

(declare-fun b!1530855 () Bool)

(assert (=> b!1530855 (= e!978626 (= (list!6391 (_2!8640 lt!531998)) (_2!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 totalInput!458)))))))

(declare-fun b!1530858 () Bool)

(assert (=> b!1530858 (= e!978627 (= (list!6391 (_2!8640 lt!531998)) (list!6391 totalInput!458)))))

(declare-fun b!1530859 () Bool)

(declare-fun res!687059 () Bool)

(assert (=> b!1530859 (=> (not res!687059) (not e!978626))))

(assert (=> b!1530859 (= res!687059 (= (list!6392 (_1!8640 lt!531998)) (_1!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 totalInput!458)))))))

(assert (= (and d!456426 c!251021) b!1530853))

(assert (= (and d!456426 (not c!251021)) b!1530854))

(assert (= (and d!456426 c!251020) b!1530856))

(assert (= (and d!456426 (not c!251020)) b!1530858))

(assert (= (and b!1530856 res!687060) b!1530857))

(assert (= (and d!456426 res!687061) b!1530859))

(assert (= (and b!1530859 res!687059) b!1530855))

(declare-fun m!1805347 () Bool)

(assert (=> b!1530859 m!1805347))

(assert (=> b!1530859 m!1805159))

(assert (=> b!1530859 m!1805159))

(declare-fun m!1805349 () Bool)

(assert (=> b!1530859 m!1805349))

(declare-fun m!1805351 () Bool)

(assert (=> b!1530855 m!1805351))

(assert (=> b!1530855 m!1805159))

(assert (=> b!1530855 m!1805159))

(assert (=> b!1530855 m!1805349))

(declare-fun m!1805353 () Bool)

(assert (=> b!1530853 m!1805353))

(declare-fun m!1805355 () Bool)

(assert (=> b!1530853 m!1805355))

(declare-fun m!1805357 () Bool)

(assert (=> d!456426 m!1805357))

(declare-fun m!1805359 () Bool)

(assert (=> d!456426 m!1805359))

(declare-fun m!1805361 () Bool)

(assert (=> b!1530856 m!1805361))

(declare-fun m!1805363 () Bool)

(assert (=> b!1530856 m!1805363))

(assert (=> b!1530858 m!1805351))

(assert (=> b!1530858 m!1805159))

(declare-fun m!1805365 () Bool)

(assert (=> b!1530857 m!1805365))

(assert (=> b!1530816 d!456426))

(declare-fun d!456428 () Bool)

(declare-fun list!6394 (Conc!5464) List!16257)

(assert (=> d!456428 (= (list!6392 (_1!8640 lt!531965)) (list!6394 (c!251012 (_1!8640 lt!531965))))))

(declare-fun bs!378496 () Bool)

(assert (= bs!378496 d!456428))

(declare-fun m!1805367 () Bool)

(assert (=> bs!378496 m!1805367))

(assert (=> b!1530816 d!456428))

(declare-fun d!456430 () Bool)

(declare-fun e!978632 () Bool)

(assert (=> d!456430 e!978632))

(declare-fun res!687071 () Bool)

(assert (=> d!456430 (=> (not res!687071) (not e!978632))))

(declare-fun appendAssocInst!376 (Conc!5464 Conc!5464) Bool)

(assert (=> d!456430 (= res!687071 (appendAssocInst!376 (c!251012 acc!392) (c!251012 (_1!8640 lt!531966))))))

(declare-fun lt!532002 () BalanceConc!10870)

(declare-fun ++!4399 (Conc!5464 Conc!5464) Conc!5464)

(assert (=> d!456430 (= lt!532002 (BalanceConc!10871 (++!4399 (c!251012 acc!392) (c!251012 (_1!8640 lt!531966)))))))

(assert (=> d!456430 (= (++!4396 acc!392 (_1!8640 lt!531966)) lt!532002)))

(declare-fun b!1530871 () Bool)

(assert (=> b!1530871 (= e!978632 (= (list!6392 lt!532002) (++!4398 (list!6392 acc!392) (list!6392 (_1!8640 lt!531966)))))))

(declare-fun b!1530868 () Bool)

(declare-fun res!687072 () Bool)

(assert (=> b!1530868 (=> (not res!687072) (not e!978632))))

(declare-fun isBalanced!1622 (Conc!5464) Bool)

(assert (=> b!1530868 (= res!687072 (isBalanced!1622 (++!4399 (c!251012 acc!392) (c!251012 (_1!8640 lt!531966)))))))

(declare-fun b!1530870 () Bool)

(declare-fun res!687073 () Bool)

(assert (=> b!1530870 (=> (not res!687073) (not e!978632))))

(declare-fun height!822 (Conc!5464) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1530870 (= res!687073 (>= (height!822 (++!4399 (c!251012 acc!392) (c!251012 (_1!8640 lt!531966)))) (max!0 (height!822 (c!251012 acc!392)) (height!822 (c!251012 (_1!8640 lt!531966))))))))

(declare-fun b!1530869 () Bool)

(declare-fun res!687070 () Bool)

(assert (=> b!1530869 (=> (not res!687070) (not e!978632))))

(assert (=> b!1530869 (= res!687070 (<= (height!822 (++!4399 (c!251012 acc!392) (c!251012 (_1!8640 lt!531966)))) (+ (max!0 (height!822 (c!251012 acc!392)) (height!822 (c!251012 (_1!8640 lt!531966)))) 1)))))

(assert (= (and d!456430 res!687071) b!1530868))

(assert (= (and b!1530868 res!687072) b!1530869))

(assert (= (and b!1530869 res!687070) b!1530870))

(assert (= (and b!1530870 res!687073) b!1530871))

(declare-fun m!1805369 () Bool)

(assert (=> b!1530869 m!1805369))

(declare-fun m!1805371 () Bool)

(assert (=> b!1530869 m!1805371))

(assert (=> b!1530869 m!1805369))

(declare-fun m!1805373 () Bool)

(assert (=> b!1530869 m!1805373))

(assert (=> b!1530869 m!1805373))

(declare-fun m!1805375 () Bool)

(assert (=> b!1530869 m!1805375))

(declare-fun m!1805377 () Bool)

(assert (=> b!1530869 m!1805377))

(assert (=> b!1530869 m!1805375))

(declare-fun m!1805379 () Bool)

(assert (=> d!456430 m!1805379))

(assert (=> d!456430 m!1805369))

(assert (=> b!1530870 m!1805369))

(assert (=> b!1530870 m!1805371))

(assert (=> b!1530870 m!1805369))

(assert (=> b!1530870 m!1805373))

(assert (=> b!1530870 m!1805373))

(assert (=> b!1530870 m!1805375))

(assert (=> b!1530870 m!1805377))

(assert (=> b!1530870 m!1805375))

(declare-fun m!1805381 () Bool)

(assert (=> b!1530871 m!1805381))

(assert (=> b!1530871 m!1805315))

(declare-fun m!1805383 () Bool)

(assert (=> b!1530871 m!1805383))

(assert (=> b!1530871 m!1805315))

(assert (=> b!1530871 m!1805383))

(declare-fun m!1805385 () Bool)

(assert (=> b!1530871 m!1805385))

(assert (=> b!1530868 m!1805369))

(assert (=> b!1530868 m!1805369))

(declare-fun m!1805387 () Bool)

(assert (=> b!1530868 m!1805387))

(assert (=> b!1530816 d!456430))

(declare-fun b!1530872 () Bool)

(declare-fun e!978636 () tuple2!15150)

(declare-fun lt!532003 () tuple2!15150)

(declare-fun lt!532005 () Option!2946)

(assert (=> b!1530872 (= e!978636 (tuple2!15151 (prepend!481 (_1!8640 lt!532003) (_1!8638 (v!23004 lt!532005))) (_2!8640 lt!532003)))))

(assert (=> b!1530872 (= lt!532003 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532005))))))

(declare-fun b!1530873 () Bool)

(assert (=> b!1530873 (= e!978636 (tuple2!15151 (BalanceConc!10871 Empty!5464) input!1102))))

(declare-fun b!1530875 () Bool)

(declare-fun e!978634 () Bool)

(declare-fun e!978635 () Bool)

(assert (=> b!1530875 (= e!978634 e!978635)))

(declare-fun res!687075 () Bool)

(declare-fun lt!532004 () tuple2!15150)

(assert (=> b!1530875 (= res!687075 (< (size!13098 (_2!8640 lt!532004)) (size!13098 input!1102)))))

(assert (=> b!1530875 (=> (not res!687075) (not e!978635))))

(declare-fun b!1530876 () Bool)

(assert (=> b!1530876 (= e!978635 (not (isEmpty!9982 (_1!8640 lt!532004))))))

(declare-fun d!456432 () Bool)

(declare-fun e!978633 () Bool)

(assert (=> d!456432 e!978633))

(declare-fun res!687076 () Bool)

(assert (=> d!456432 (=> (not res!687076) (not e!978633))))

(assert (=> d!456432 (= res!687076 e!978634)))

(declare-fun c!251025 () Bool)

(assert (=> d!456432 (= c!251025 (> (size!13099 (_1!8640 lt!532004)) 0))))

(assert (=> d!456432 (= lt!532004 e!978636)))

(declare-fun c!251026 () Bool)

(assert (=> d!456432 (= c!251026 ((_ is Some!2945) lt!532005))))

(assert (=> d!456432 (= lt!532005 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 input!1102))))

(assert (=> d!456432 (= (lexRec!341 thiss!13241 rules!1640 input!1102) lt!532004)))

(declare-fun b!1530874 () Bool)

(assert (=> b!1530874 (= e!978633 (= (list!6391 (_2!8640 lt!532004)) (_2!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 input!1102)))))))

(declare-fun b!1530877 () Bool)

(assert (=> b!1530877 (= e!978634 (= (list!6391 (_2!8640 lt!532004)) (list!6391 input!1102)))))

(declare-fun b!1530878 () Bool)

(declare-fun res!687074 () Bool)

(assert (=> b!1530878 (=> (not res!687074) (not e!978633))))

(assert (=> b!1530878 (= res!687074 (= (list!6392 (_1!8640 lt!532004)) (_1!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 input!1102)))))))

(assert (= (and d!456432 c!251026) b!1530872))

(assert (= (and d!456432 (not c!251026)) b!1530873))

(assert (= (and d!456432 c!251025) b!1530875))

(assert (= (and d!456432 (not c!251025)) b!1530877))

(assert (= (and b!1530875 res!687075) b!1530876))

(assert (= (and d!456432 res!687076) b!1530878))

(assert (= (and b!1530878 res!687074) b!1530874))

(declare-fun m!1805389 () Bool)

(assert (=> b!1530878 m!1805389))

(assert (=> b!1530878 m!1805161))

(assert (=> b!1530878 m!1805161))

(declare-fun m!1805391 () Bool)

(assert (=> b!1530878 m!1805391))

(declare-fun m!1805393 () Bool)

(assert (=> b!1530874 m!1805393))

(assert (=> b!1530874 m!1805161))

(assert (=> b!1530874 m!1805161))

(assert (=> b!1530874 m!1805391))

(declare-fun m!1805395 () Bool)

(assert (=> b!1530872 m!1805395))

(declare-fun m!1805397 () Bool)

(assert (=> b!1530872 m!1805397))

(declare-fun m!1805399 () Bool)

(assert (=> d!456432 m!1805399))

(assert (=> d!456432 m!1805247))

(declare-fun m!1805401 () Bool)

(assert (=> b!1530875 m!1805401))

(declare-fun m!1805403 () Bool)

(assert (=> b!1530875 m!1805403))

(assert (=> b!1530877 m!1805393))

(assert (=> b!1530877 m!1805161))

(declare-fun m!1805405 () Bool)

(assert (=> b!1530876 m!1805405))

(assert (=> b!1530816 d!456432))

(declare-fun d!456434 () Bool)

(assert (=> d!456434 (= (list!6392 lt!531968) (list!6394 (c!251012 lt!531968)))))

(declare-fun bs!378497 () Bool)

(assert (= bs!378497 d!456434))

(declare-fun m!1805407 () Bool)

(assert (=> bs!378497 m!1805407))

(assert (=> b!1530816 d!456434))

(declare-fun d!456436 () Bool)

(declare-fun c!251027 () Bool)

(assert (=> d!456436 (= c!251027 ((_ is Node!5463) (c!251011 (totalInput!2329 cacheFurthestNullable!64))))))

(declare-fun e!978637 () Bool)

(assert (=> d!456436 (= (inv!21443 (c!251011 (totalInput!2329 cacheFurthestNullable!64))) e!978637)))

(declare-fun b!1530879 () Bool)

(assert (=> b!1530879 (= e!978637 (inv!21451 (c!251011 (totalInput!2329 cacheFurthestNullable!64))))))

(declare-fun b!1530880 () Bool)

(declare-fun e!978638 () Bool)

(assert (=> b!1530880 (= e!978637 e!978638)))

(declare-fun res!687077 () Bool)

(assert (=> b!1530880 (= res!687077 (not ((_ is Leaf!8095) (c!251011 (totalInput!2329 cacheFurthestNullable!64)))))))

(assert (=> b!1530880 (=> res!687077 e!978638)))

(declare-fun b!1530881 () Bool)

(assert (=> b!1530881 (= e!978638 (inv!21452 (c!251011 (totalInput!2329 cacheFurthestNullable!64))))))

(assert (= (and d!456436 c!251027) b!1530879))

(assert (= (and d!456436 (not c!251027)) b!1530880))

(assert (= (and b!1530880 (not res!687077)) b!1530881))

(declare-fun m!1805409 () Bool)

(assert (=> b!1530879 m!1805409))

(declare-fun m!1805411 () Bool)

(assert (=> b!1530881 m!1805411))

(assert (=> b!1530817 d!456436))

(declare-fun d!456438 () Bool)

(assert (=> d!456438 (= (array_inv!1706 (_keys!1809 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) (bvsge (size!13093 (_keys!1809 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1530815 d!456438))

(declare-fun d!456440 () Bool)

(assert (=> d!456440 (= (array_inv!1708 (_values!1794 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) (bvsge (size!13094 (_values!1794 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1530815 d!456440))

(declare-fun d!456442 () Bool)

(declare-fun c!251028 () Bool)

(assert (=> d!456442 (= c!251028 ((_ is Node!5463) (c!251011 totalInput!458)))))

(declare-fun e!978639 () Bool)

(assert (=> d!456442 (= (inv!21443 (c!251011 totalInput!458)) e!978639)))

(declare-fun b!1530882 () Bool)

(assert (=> b!1530882 (= e!978639 (inv!21451 (c!251011 totalInput!458)))))

(declare-fun b!1530883 () Bool)

(declare-fun e!978640 () Bool)

(assert (=> b!1530883 (= e!978639 e!978640)))

(declare-fun res!687078 () Bool)

(assert (=> b!1530883 (= res!687078 (not ((_ is Leaf!8095) (c!251011 totalInput!458))))))

(assert (=> b!1530883 (=> res!687078 e!978640)))

(declare-fun b!1530884 () Bool)

(assert (=> b!1530884 (= e!978640 (inv!21452 (c!251011 totalInput!458)))))

(assert (= (and d!456442 c!251028) b!1530882))

(assert (= (and d!456442 (not c!251028)) b!1530883))

(assert (= (and b!1530883 (not res!687078)) b!1530884))

(declare-fun m!1805413 () Bool)

(assert (=> b!1530882 m!1805413))

(declare-fun m!1805415 () Bool)

(assert (=> b!1530884 m!1805415))

(assert (=> b!1530777 d!456442))

(declare-fun d!456444 () Bool)

(assert (=> d!456444 (= (valid!1231 (_2!8639 lt!531977)) (validCacheMapUp!141 (cache!1842 (_2!8639 lt!531977))))))

(declare-fun bs!378498 () Bool)

(assert (= bs!378498 d!456444))

(declare-fun m!1805417 () Bool)

(assert (=> bs!378498 m!1805417))

(assert (=> b!1530776 d!456444))

(declare-fun d!456446 () Bool)

(assert (=> d!456446 (= (list!6391 (_2!8640 lt!531966)) (list!6393 (c!251011 (_2!8640 lt!531966))))))

(declare-fun bs!378499 () Bool)

(assert (= bs!378499 d!456446))

(declare-fun m!1805419 () Bool)

(assert (=> bs!378499 m!1805419))

(assert (=> b!1530797 d!456446))

(declare-fun d!456448 () Bool)

(assert (=> d!456448 (= (list!6391 (_2!8640 lt!531965)) (list!6393 (c!251011 (_2!8640 lt!531965))))))

(declare-fun bs!378500 () Bool)

(assert (= bs!378500 d!456448))

(declare-fun m!1805421 () Bool)

(assert (=> bs!378500 m!1805421))

(assert (=> b!1530797 d!456448))

(declare-fun d!456450 () Bool)

(assert (=> d!456450 (= (inv!21445 treated!70) (isBalanced!1621 (c!251011 treated!70)))))

(declare-fun bs!378501 () Bool)

(assert (= bs!378501 d!456450))

(declare-fun m!1805423 () Bool)

(assert (=> bs!378501 m!1805423))

(assert (=> start!142396 d!456450))

(declare-fun d!456452 () Bool)

(assert (=> d!456452 (= (inv!21445 input!1102) (isBalanced!1621 (c!251011 input!1102)))))

(declare-fun bs!378502 () Bool)

(assert (= bs!378502 d!456452))

(declare-fun m!1805425 () Bool)

(assert (=> bs!378502 m!1805425))

(assert (=> start!142396 d!456452))

(declare-fun d!456454 () Bool)

(declare-fun res!687081 () Bool)

(declare-fun e!978643 () Bool)

(assert (=> d!456454 (=> (not res!687081) (not e!978643))))

(assert (=> d!456454 (= res!687081 ((_ is HashMap!1460) (cache!1841 cacheFurthestNullable!64)))))

(assert (=> d!456454 (= (inv!21449 cacheFurthestNullable!64) e!978643)))

(declare-fun b!1530887 () Bool)

(assert (=> b!1530887 (= e!978643 (validCacheMapFurthestNullable!54 (cache!1841 cacheFurthestNullable!64) (totalInput!2329 cacheFurthestNullable!64)))))

(assert (= (and d!456454 res!687081) b!1530887))

(assert (=> b!1530887 m!1805335))

(assert (=> start!142396 d!456454))

(declare-fun d!456456 () Bool)

(declare-fun res!687084 () Bool)

(declare-fun e!978646 () Bool)

(assert (=> d!456456 (=> (not res!687084) (not e!978646))))

(assert (=> d!456456 (= res!687084 ((_ is HashMap!1459) (cache!1840 cacheDown!629)))))

(assert (=> d!456456 (= (inv!21448 cacheDown!629) e!978646)))

(declare-fun b!1530890 () Bool)

(assert (=> b!1530890 (= e!978646 (validCacheMapDown!141 (cache!1840 cacheDown!629)))))

(assert (= (and d!456456 res!687084) b!1530890))

(assert (=> b!1530890 m!1805333))

(assert (=> start!142396 d!456456))

(declare-fun d!456458 () Bool)

(assert (=> d!456458 (= (inv!21445 totalInput!458) (isBalanced!1621 (c!251011 totalInput!458)))))

(declare-fun bs!378503 () Bool)

(assert (= bs!378503 d!456458))

(declare-fun m!1805427 () Bool)

(assert (=> bs!378503 m!1805427))

(assert (=> start!142396 d!456458))

(declare-fun d!456460 () Bool)

(assert (=> d!456460 (= (inv!21446 acc!392) (isBalanced!1622 (c!251012 acc!392)))))

(declare-fun bs!378504 () Bool)

(assert (= bs!378504 d!456460))

(declare-fun m!1805429 () Bool)

(assert (=> bs!378504 m!1805429))

(assert (=> start!142396 d!456460))

(declare-fun d!456462 () Bool)

(declare-fun res!687087 () Bool)

(declare-fun e!978649 () Bool)

(assert (=> d!456462 (=> (not res!687087) (not e!978649))))

(assert (=> d!456462 (= res!687087 ((_ is HashMap!1461) (cache!1842 cacheUp!616)))))

(assert (=> d!456462 (= (inv!21447 cacheUp!616) e!978649)))

(declare-fun b!1530893 () Bool)

(assert (=> b!1530893 (= e!978649 (validCacheMapUp!141 (cache!1842 cacheUp!616)))))

(assert (= (and d!456462 res!687087) b!1530893))

(declare-fun m!1805431 () Bool)

(assert (=> b!1530893 m!1805431))

(assert (=> start!142396 d!456462))

(declare-fun d!456464 () Bool)

(assert (=> d!456464 (= (array_inv!1706 (_keys!1811 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) (bvsge (size!13093 (_keys!1811 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1530814 d!456464))

(declare-fun d!456466 () Bool)

(assert (=> d!456466 (= (array_inv!1707 (_values!1796 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) (bvsge (size!13096 (_values!1796 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1530814 d!456466))

(declare-fun d!456468 () Bool)

(assert (=> d!456468 (= (valid!1233 (_4!357 lt!531977)) (validCacheMapFurthestNullable!54 (cache!1841 (_4!357 lt!531977)) (totalInput!2329 (_4!357 lt!531977))))))

(declare-fun bs!378505 () Bool)

(assert (= bs!378505 d!456468))

(declare-fun m!1805433 () Bool)

(assert (=> bs!378505 m!1805433))

(assert (=> b!1530796 d!456468))

(declare-fun d!456470 () Bool)

(assert (=> d!456470 (= (list!6392 (_1!8640 (_1!8641 lt!531970))) (list!6394 (c!251012 (_1!8640 (_1!8641 lt!531970)))))))

(declare-fun bs!378506 () Bool)

(assert (= bs!378506 d!456470))

(declare-fun m!1805435 () Bool)

(assert (=> bs!378506 m!1805435))

(assert (=> b!1530811 d!456470))

(declare-fun lt!532110 () Option!2946)

(declare-fun b!1530916 () Bool)

(declare-fun lt!532086 () tuple2!15150)

(assert (=> b!1530916 (= lt!532086 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532110))))))

(declare-fun e!978659 () tuple2!15150)

(assert (=> b!1530916 (= e!978659 (tuple2!15151 (prepend!481 (_1!8640 lt!532086) (_1!8638 (v!23004 lt!532110))) (_2!8640 lt!532086)))))

(declare-fun lt!532077 () Option!2946)

(declare-fun b!1530917 () Bool)

(declare-fun lt!532089 () tuple2!15150)

(assert (=> b!1530917 (= lt!532089 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532077))))))

(declare-fun e!978661 () tuple2!15150)

(assert (=> b!1530917 (= e!978661 (tuple2!15151 (prepend!481 (_1!8640 lt!532089) (_1!8638 (v!23004 lt!532077))) (_2!8640 lt!532089)))))

(declare-fun b!1530918 () Bool)

(declare-fun res!687098 () Bool)

(declare-fun e!978658 () Bool)

(assert (=> b!1530918 (=> (not res!687098) (not e!978658))))

(declare-fun lt!532097 () tuple4!716)

(assert (=> b!1530918 (= res!687098 (valid!1231 (_2!8641 lt!532097)))))

(declare-fun b!1530919 () Bool)

(declare-fun e!978660 () tuple4!716)

(declare-fun lt!532085 () tuple4!716)

(assert (=> b!1530919 (= e!978660 (tuple4!717 (_1!8641 lt!532085) (_2!8641 lt!532085) (_3!1065 lt!532085) (_4!358 lt!532085)))))

(declare-fun lt!532100 () tuple2!15150)

(declare-fun lt!532082 () tuple4!714)

(assert (=> b!1530919 (= lt!532100 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 (_1!8639 lt!532082)))))))

(declare-fun lt!532098 () List!16256)

(assert (=> b!1530919 (= lt!532098 (list!6391 lt!531971))))

(declare-fun lt!532108 () List!16256)

(assert (=> b!1530919 (= lt!532108 (list!6391 (charsOf!1638 (_1!8638 (v!23004 (_1!8639 lt!532082))))))))

(declare-fun lt!532105 () List!16256)

(assert (=> b!1530919 (= lt!532105 (list!6391 (_2!8638 (v!23004 (_1!8639 lt!532082)))))))

(declare-fun lt!532104 () Unit!25800)

(assert (=> b!1530919 (= lt!532104 (lemmaConcatAssociativity!963 lt!532098 lt!532108 lt!532105))))

(assert (=> b!1530919 (= (++!4395 (++!4395 lt!532098 lt!532108) lt!532105) (++!4395 lt!532098 (++!4395 lt!532108 lt!532105)))))

(declare-fun lt!532083 () Unit!25800)

(assert (=> b!1530919 (= lt!532083 lt!532104)))

(assert (=> b!1530919 (= lt!532110 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 (_2!8638 (v!23004 (_1!8639 lt!531977)))))))

(declare-fun c!251037 () Bool)

(assert (=> b!1530919 (= c!251037 ((_ is Some!2945) lt!532110))))

(assert (=> b!1530919 (= (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 (_1!8639 lt!531977)))) e!978659)))

(declare-fun lt!532092 () Unit!25800)

(declare-fun Unit!25802 () Unit!25800)

(assert (=> b!1530919 (= lt!532092 Unit!25802)))

(declare-fun lt!532079 () List!16257)

(assert (=> b!1530919 (= lt!532079 (list!6392 lt!531988))))

(declare-fun lt!532076 () List!16257)

(assert (=> b!1530919 (= lt!532076 (Cons!16189 (_1!8638 (v!23004 (_1!8639 lt!532082))) Nil!16189))))

(declare-fun lt!532096 () List!16257)

(assert (=> b!1530919 (= lt!532096 (list!6392 (_1!8640 lt!532100)))))

(declare-fun lt!532090 () Unit!25800)

(assert (=> b!1530919 (= lt!532090 (lemmaConcatAssociativity!962 lt!532079 lt!532076 lt!532096))))

(assert (=> b!1530919 (= (++!4398 (++!4398 lt!532079 lt!532076) lt!532096) (++!4398 lt!532079 (++!4398 lt!532076 lt!532096)))))

(declare-fun lt!532094 () Unit!25800)

(assert (=> b!1530919 (= lt!532094 lt!532090)))

(declare-fun lt!532099 () List!16256)

(assert (=> b!1530919 (= lt!532099 (++!4395 (list!6391 lt!531971) (list!6391 (charsOf!1638 (_1!8638 (v!23004 (_1!8639 lt!532082)))))))))

(declare-fun lt!532087 () List!16256)

(assert (=> b!1530919 (= lt!532087 (list!6391 (_2!8638 (v!23004 (_1!8639 lt!532082)))))))

(declare-fun lt!532084 () List!16257)

(assert (=> b!1530919 (= lt!532084 (list!6392 (append!519 lt!531988 (_1!8638 (v!23004 (_1!8639 lt!532082))))))))

(declare-fun lt!532093 () Unit!25800)

(assert (=> b!1530919 (= lt!532093 (lemmaLexThenLexPrefix!231 thiss!13241 rules!1640 lt!532099 lt!532087 lt!532084 (list!6392 (_1!8640 lt!532100)) (list!6391 (_2!8640 lt!532100))))))

(assert (=> b!1530919 (= (lexList!755 thiss!13241 rules!1640 lt!532099) (tuple2!15153 lt!532084 Nil!16188))))

(declare-fun lt!532103 () Unit!25800)

(assert (=> b!1530919 (= lt!532103 lt!532093)))

(declare-fun lt!532081 () BalanceConc!10868)

(assert (=> b!1530919 (= lt!532081 (++!4397 lt!531971 (charsOf!1638 (_1!8638 (v!23004 (_1!8639 lt!532082))))))))

(assert (=> b!1530919 (= lt!532077 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 lt!532081))))

(declare-fun c!251036 () Bool)

(assert (=> b!1530919 (= c!251036 ((_ is Some!2945) lt!532077))))

(assert (=> b!1530919 (= (lexRec!341 thiss!13241 rules!1640 (++!4397 lt!531971 (charsOf!1638 (_1!8638 (v!23004 (_1!8639 lt!532082)))))) e!978661)))

(declare-fun lt!532106 () Unit!25800)

(declare-fun Unit!25803 () Unit!25800)

(assert (=> b!1530919 (= lt!532106 Unit!25803)))

(declare-fun lt!532091 () BalanceConc!10868)

(assert (=> b!1530919 (= lt!532091 (++!4397 lt!531971 (charsOf!1638 (_1!8638 (v!23004 (_1!8639 lt!532082))))))))

(declare-fun lt!532095 () List!16256)

(assert (=> b!1530919 (= lt!532095 (list!6391 lt!532091))))

(declare-fun lt!532080 () List!16256)

(assert (=> b!1530919 (= lt!532080 (list!6391 (_2!8638 (v!23004 (_1!8639 lt!532082)))))))

(declare-fun lt!532109 () Unit!25800)

(assert (=> b!1530919 (= lt!532109 (lemmaConcatTwoListThenFSndIsSuffix!289 lt!532095 lt!532080))))

(assert (=> b!1530919 (isSuffix!311 lt!532080 (++!4395 lt!532095 lt!532080))))

(declare-fun lt!532078 () Unit!25800)

(assert (=> b!1530919 (= lt!532078 lt!532109)))

(assert (=> b!1530919 (= lt!532085 (lexTailRecV3Mem!26 thiss!13241 rules!1640 totalInput!458 lt!532091 (_2!8638 (v!23004 (_1!8639 lt!532082))) (append!519 lt!531988 (_1!8638 (v!23004 (_1!8639 lt!532082)))) (_2!8639 lt!532082) (_3!1064 lt!532082) (_4!357 lt!532082)))))

(declare-fun b!1530920 () Bool)

(assert (=> b!1530920 (= e!978659 (tuple2!15151 (BalanceConc!10871 Empty!5464) (_2!8638 (v!23004 (_1!8639 lt!531977)))))))

(declare-fun b!1530921 () Bool)

(assert (=> b!1530921 (= e!978660 (tuple4!717 (tuple2!15151 lt!531988 (_2!8638 (v!23004 (_1!8639 lt!531977)))) (_2!8639 lt!532082) (_3!1064 lt!532082) (_4!357 lt!532082)))))

(declare-fun b!1530922 () Bool)

(declare-fun res!687099 () Bool)

(assert (=> b!1530922 (=> (not res!687099) (not e!978658))))

(assert (=> b!1530922 (= res!687099 (= (list!6391 (_2!8640 (_1!8641 lt!532097))) (list!6391 (_2!8640 (lexRec!341 thiss!13241 rules!1640 totalInput!458)))))))

(declare-fun d!456472 () Bool)

(assert (=> d!456472 e!978658))

(declare-fun res!687101 () Bool)

(assert (=> d!456472 (=> (not res!687101) (not e!978658))))

(assert (=> d!456472 (= res!687101 (= (list!6392 (_1!8640 (_1!8641 lt!532097))) (list!6392 (_1!8640 (lexRec!341 thiss!13241 rules!1640 totalInput!458)))))))

(assert (=> d!456472 (= lt!532097 e!978660)))

(declare-fun c!251035 () Bool)

(assert (=> d!456472 (= c!251035 ((_ is Some!2945) (_1!8639 lt!532082)))))

(assert (=> d!456472 (= lt!532082 (maxPrefixZipperSequenceV3Mem!33 thiss!13241 rules!1640 (_2!8638 (v!23004 (_1!8639 lt!531977))) totalInput!458 (_2!8639 lt!531977) (_3!1064 lt!531977) (_4!357 lt!531977)))))

(declare-fun lt!532107 () Unit!25800)

(declare-fun lt!532088 () Unit!25800)

(assert (=> d!456472 (= lt!532107 lt!532088)))

(declare-fun lt!532102 () List!16256)

(declare-fun lt!532101 () List!16256)

(assert (=> d!456472 (isSuffix!311 lt!532102 (++!4395 lt!532101 lt!532102))))

(assert (=> d!456472 (= lt!532088 (lemmaConcatTwoListThenFSndIsSuffix!289 lt!532101 lt!532102))))

(assert (=> d!456472 (= lt!532102 (list!6391 (_2!8638 (v!23004 (_1!8639 lt!531977)))))))

(assert (=> d!456472 (= lt!532101 (list!6391 lt!531971))))

(assert (=> d!456472 (= (lexTailRecV3Mem!26 thiss!13241 rules!1640 totalInput!458 lt!531971 (_2!8638 (v!23004 (_1!8639 lt!531977))) lt!531988 (_2!8639 lt!531977) (_3!1064 lt!531977) (_4!357 lt!531977)) lt!532097)))

(declare-fun b!1530923 () Bool)

(declare-fun res!687100 () Bool)

(assert (=> b!1530923 (=> (not res!687100) (not e!978658))))

(assert (=> b!1530923 (= res!687100 (valid!1232 (_3!1065 lt!532097)))))

(declare-fun b!1530924 () Bool)

(declare-fun res!687102 () Bool)

(assert (=> b!1530924 (=> (not res!687102) (not e!978658))))

(assert (=> b!1530924 (= res!687102 (valid!1233 (_4!358 lt!532097)))))

(declare-fun b!1530925 () Bool)

(assert (=> b!1530925 (= e!978658 (= (totalInput!2329 (_4!358 lt!532097)) totalInput!458))))

(declare-fun b!1530926 () Bool)

(assert (=> b!1530926 (= e!978661 (tuple2!15151 (BalanceConc!10871 Empty!5464) lt!532081))))

(assert (= (and d!456472 c!251035) b!1530919))

(assert (= (and d!456472 (not c!251035)) b!1530921))

(assert (= (and b!1530919 c!251037) b!1530916))

(assert (= (and b!1530919 (not c!251037)) b!1530920))

(assert (= (and b!1530919 c!251036) b!1530917))

(assert (= (and b!1530919 (not c!251036)) b!1530926))

(assert (= (and d!456472 res!687101) b!1530922))

(assert (= (and b!1530922 res!687099) b!1530924))

(assert (= (and b!1530924 res!687102) b!1530918))

(assert (= (and b!1530918 res!687098) b!1530923))

(assert (= (and b!1530923 res!687100) b!1530925))

(assert (=> d!456472 m!1805269))

(declare-fun m!1805437 () Bool)

(assert (=> d!456472 m!1805437))

(declare-fun m!1805439 () Bool)

(assert (=> d!456472 m!1805439))

(assert (=> d!456472 m!1805179))

(declare-fun m!1805441 () Bool)

(assert (=> d!456472 m!1805441))

(assert (=> d!456472 m!1805439))

(declare-fun m!1805443 () Bool)

(assert (=> d!456472 m!1805443))

(assert (=> d!456472 m!1805255))

(declare-fun m!1805445 () Bool)

(assert (=> d!456472 m!1805445))

(declare-fun m!1805447 () Bool)

(assert (=> d!456472 m!1805447))

(declare-fun m!1805449 () Bool)

(assert (=> b!1530917 m!1805449))

(declare-fun m!1805451 () Bool)

(assert (=> b!1530917 m!1805451))

(declare-fun m!1805453 () Bool)

(assert (=> b!1530922 m!1805453))

(assert (=> b!1530922 m!1805179))

(declare-fun m!1805455 () Bool)

(assert (=> b!1530922 m!1805455))

(declare-fun m!1805457 () Bool)

(assert (=> b!1530919 m!1805457))

(declare-fun m!1805459 () Bool)

(assert (=> b!1530919 m!1805459))

(declare-fun m!1805461 () Bool)

(assert (=> b!1530919 m!1805461))

(assert (=> b!1530919 m!1805249))

(declare-fun m!1805463 () Bool)

(assert (=> b!1530919 m!1805463))

(declare-fun m!1805465 () Bool)

(assert (=> b!1530919 m!1805465))

(assert (=> b!1530919 m!1805239))

(declare-fun m!1805467 () Bool)

(assert (=> b!1530919 m!1805467))

(assert (=> b!1530919 m!1805467))

(declare-fun m!1805469 () Bool)

(assert (=> b!1530919 m!1805469))

(declare-fun m!1805471 () Bool)

(assert (=> b!1530919 m!1805471))

(declare-fun m!1805473 () Bool)

(assert (=> b!1530919 m!1805473))

(declare-fun m!1805475 () Bool)

(assert (=> b!1530919 m!1805475))

(declare-fun m!1805477 () Bool)

(assert (=> b!1530919 m!1805477))

(assert (=> b!1530919 m!1805471))

(declare-fun m!1805479 () Bool)

(assert (=> b!1530919 m!1805479))

(declare-fun m!1805481 () Bool)

(assert (=> b!1530919 m!1805481))

(assert (=> b!1530919 m!1805475))

(declare-fun m!1805483 () Bool)

(assert (=> b!1530919 m!1805483))

(declare-fun m!1805485 () Bool)

(assert (=> b!1530919 m!1805485))

(declare-fun m!1805487 () Bool)

(assert (=> b!1530919 m!1805487))

(assert (=> b!1530919 m!1805269))

(declare-fun m!1805489 () Bool)

(assert (=> b!1530919 m!1805489))

(declare-fun m!1805491 () Bool)

(assert (=> b!1530919 m!1805491))

(declare-fun m!1805493 () Bool)

(assert (=> b!1530919 m!1805493))

(declare-fun m!1805495 () Bool)

(assert (=> b!1530919 m!1805495))

(assert (=> b!1530919 m!1805269))

(declare-fun m!1805497 () Bool)

(assert (=> b!1530919 m!1805497))

(declare-fun m!1805499 () Bool)

(assert (=> b!1530919 m!1805499))

(assert (=> b!1530919 m!1805473))

(declare-fun m!1805501 () Bool)

(assert (=> b!1530919 m!1805501))

(declare-fun m!1805503 () Bool)

(assert (=> b!1530919 m!1805503))

(assert (=> b!1530919 m!1805475))

(assert (=> b!1530919 m!1805479))

(assert (=> b!1530919 m!1805485))

(declare-fun m!1805505 () Bool)

(assert (=> b!1530919 m!1805505))

(assert (=> b!1530919 m!1805471))

(assert (=> b!1530919 m!1805497))

(declare-fun m!1805507 () Bool)

(assert (=> b!1530919 m!1805507))

(assert (=> b!1530919 m!1805489))

(declare-fun m!1805509 () Bool)

(assert (=> b!1530919 m!1805509))

(assert (=> b!1530919 m!1805495))

(assert (=> b!1530919 m!1805465))

(declare-fun m!1805511 () Bool)

(assert (=> b!1530919 m!1805511))

(declare-fun m!1805513 () Bool)

(assert (=> b!1530919 m!1805513))

(assert (=> b!1530919 m!1805513))

(declare-fun m!1805515 () Bool)

(assert (=> b!1530919 m!1805515))

(declare-fun m!1805517 () Bool)

(assert (=> b!1530918 m!1805517))

(declare-fun m!1805519 () Bool)

(assert (=> b!1530923 m!1805519))

(declare-fun m!1805521 () Bool)

(assert (=> b!1530924 m!1805521))

(declare-fun m!1805523 () Bool)

(assert (=> b!1530916 m!1805523))

(declare-fun m!1805525 () Bool)

(assert (=> b!1530916 m!1805525))

(assert (=> b!1530811 d!456472))

(declare-fun d!456474 () Bool)

(assert (=> d!456474 (= (valid!1232 (_3!1065 lt!531970)) (validCacheMapDown!141 (cache!1840 (_3!1065 lt!531970))))))

(declare-fun bs!378507 () Bool)

(assert (= bs!378507 d!456474))

(declare-fun m!1805527 () Bool)

(assert (=> bs!378507 m!1805527))

(assert (=> b!1530795 d!456474))

(declare-fun d!456476 () Bool)

(declare-fun res!687105 () Bool)

(declare-fun e!978664 () Bool)

(assert (=> d!456476 (=> (not res!687105) (not e!978664))))

(declare-fun rulesValid!1048 (LexerInterface!2507 List!16258) Bool)

(assert (=> d!456476 (= res!687105 (rulesValid!1048 thiss!13241 rules!1640))))

(assert (=> d!456476 (= (rulesInvariant!2278 thiss!13241 rules!1640) e!978664)))

(declare-fun b!1530929 () Bool)

(declare-datatypes ((List!16259 0))(
  ( (Nil!16191) (Cons!16191 (h!21592 String!18993) (t!140342 List!16259)) )
))
(declare-fun noDuplicateTag!1048 (LexerInterface!2507 List!16258 List!16259) Bool)

(assert (=> b!1530929 (= e!978664 (noDuplicateTag!1048 thiss!13241 rules!1640 Nil!16191))))

(assert (= (and d!456476 res!687105) b!1530929))

(declare-fun m!1805529 () Bool)

(assert (=> d!456476 m!1805529))

(declare-fun m!1805531 () Bool)

(assert (=> b!1530929 m!1805531))

(assert (=> b!1530794 d!456476))

(declare-fun d!456478 () Bool)

(declare-fun c!251038 () Bool)

(assert (=> d!456478 (= c!251038 ((_ is Node!5463) (c!251011 treated!70)))))

(declare-fun e!978665 () Bool)

(assert (=> d!456478 (= (inv!21443 (c!251011 treated!70)) e!978665)))

(declare-fun b!1530930 () Bool)

(assert (=> b!1530930 (= e!978665 (inv!21451 (c!251011 treated!70)))))

(declare-fun b!1530931 () Bool)

(declare-fun e!978666 () Bool)

(assert (=> b!1530931 (= e!978665 e!978666)))

(declare-fun res!687106 () Bool)

(assert (=> b!1530931 (= res!687106 (not ((_ is Leaf!8095) (c!251011 treated!70))))))

(assert (=> b!1530931 (=> res!687106 e!978666)))

(declare-fun b!1530932 () Bool)

(assert (=> b!1530932 (= e!978666 (inv!21452 (c!251011 treated!70)))))

(assert (= (and d!456478 c!251038) b!1530930))

(assert (= (and d!456478 (not c!251038)) b!1530931))

(assert (= (and b!1530931 (not res!687106)) b!1530932))

(declare-fun m!1805533 () Bool)

(assert (=> b!1530930 m!1805533))

(declare-fun m!1805535 () Bool)

(assert (=> b!1530932 m!1805535))

(assert (=> b!1530809 d!456478))

(declare-fun d!456480 () Bool)

(assert (=> d!456480 (= (list!6392 acc!392) (list!6394 (c!251012 acc!392)))))

(declare-fun bs!378508 () Bool)

(assert (= bs!378508 d!456480))

(declare-fun m!1805537 () Bool)

(assert (=> bs!378508 m!1805537))

(assert (=> b!1530827 d!456480))

(declare-fun d!456482 () Bool)

(assert (=> d!456482 (= (list!6392 (_1!8640 lt!531964)) (list!6394 (c!251012 (_1!8640 lt!531964))))))

(declare-fun bs!378509 () Bool)

(assert (= bs!378509 d!456482))

(declare-fun m!1805539 () Bool)

(assert (=> bs!378509 m!1805539))

(assert (=> b!1530827 d!456482))

(declare-fun b!1530933 () Bool)

(declare-fun e!978670 () tuple2!15150)

(declare-fun lt!532111 () tuple2!15150)

(declare-fun lt!532113 () Option!2946)

(assert (=> b!1530933 (= e!978670 (tuple2!15151 (prepend!481 (_1!8640 lt!532111) (_1!8638 (v!23004 lt!532113))) (_2!8640 lt!532111)))))

(assert (=> b!1530933 (= lt!532111 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532113))))))

(declare-fun b!1530934 () Bool)

(assert (=> b!1530934 (= e!978670 (tuple2!15151 (BalanceConc!10871 Empty!5464) treated!70))))

(declare-fun b!1530936 () Bool)

(declare-fun e!978668 () Bool)

(declare-fun e!978669 () Bool)

(assert (=> b!1530936 (= e!978668 e!978669)))

(declare-fun res!687108 () Bool)

(declare-fun lt!532112 () tuple2!15150)

(assert (=> b!1530936 (= res!687108 (< (size!13098 (_2!8640 lt!532112)) (size!13098 treated!70)))))

(assert (=> b!1530936 (=> (not res!687108) (not e!978669))))

(declare-fun b!1530937 () Bool)

(assert (=> b!1530937 (= e!978669 (not (isEmpty!9982 (_1!8640 lt!532112))))))

(declare-fun d!456484 () Bool)

(declare-fun e!978667 () Bool)

(assert (=> d!456484 e!978667))

(declare-fun res!687109 () Bool)

(assert (=> d!456484 (=> (not res!687109) (not e!978667))))

(assert (=> d!456484 (= res!687109 e!978668)))

(declare-fun c!251039 () Bool)

(assert (=> d!456484 (= c!251039 (> (size!13099 (_1!8640 lt!532112)) 0))))

(assert (=> d!456484 (= lt!532112 e!978670)))

(declare-fun c!251040 () Bool)

(assert (=> d!456484 (= c!251040 ((_ is Some!2945) lt!532113))))

(assert (=> d!456484 (= lt!532113 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 treated!70))))

(assert (=> d!456484 (= (lexRec!341 thiss!13241 rules!1640 treated!70) lt!532112)))

(declare-fun b!1530935 () Bool)

(assert (=> b!1530935 (= e!978667 (= (list!6391 (_2!8640 lt!532112)) (_2!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 treated!70)))))))

(declare-fun b!1530938 () Bool)

(assert (=> b!1530938 (= e!978668 (= (list!6391 (_2!8640 lt!532112)) (list!6391 treated!70)))))

(declare-fun b!1530939 () Bool)

(declare-fun res!687107 () Bool)

(assert (=> b!1530939 (=> (not res!687107) (not e!978667))))

(assert (=> b!1530939 (= res!687107 (= (list!6392 (_1!8640 lt!532112)) (_1!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 treated!70)))))))

(assert (= (and d!456484 c!251040) b!1530933))

(assert (= (and d!456484 (not c!251040)) b!1530934))

(assert (= (and d!456484 c!251039) b!1530936))

(assert (= (and d!456484 (not c!251039)) b!1530938))

(assert (= (and b!1530936 res!687108) b!1530937))

(assert (= (and d!456484 res!687109) b!1530939))

(assert (= (and b!1530939 res!687107) b!1530935))

(declare-fun m!1805541 () Bool)

(assert (=> b!1530939 m!1805541))

(assert (=> b!1530939 m!1805163))

(assert (=> b!1530939 m!1805163))

(declare-fun m!1805543 () Bool)

(assert (=> b!1530939 m!1805543))

(declare-fun m!1805545 () Bool)

(assert (=> b!1530935 m!1805545))

(assert (=> b!1530935 m!1805163))

(assert (=> b!1530935 m!1805163))

(assert (=> b!1530935 m!1805543))

(declare-fun m!1805547 () Bool)

(assert (=> b!1530933 m!1805547))

(declare-fun m!1805549 () Bool)

(assert (=> b!1530933 m!1805549))

(declare-fun m!1805551 () Bool)

(assert (=> d!456484 m!1805551))

(declare-fun m!1805553 () Bool)

(assert (=> d!456484 m!1805553))

(declare-fun m!1805555 () Bool)

(assert (=> b!1530936 m!1805555))

(declare-fun m!1805557 () Bool)

(assert (=> b!1530936 m!1805557))

(assert (=> b!1530938 m!1805545))

(assert (=> b!1530938 m!1805163))

(declare-fun m!1805559 () Bool)

(assert (=> b!1530937 m!1805559))

(assert (=> b!1530827 d!456484))

(declare-fun d!456486 () Bool)

(assert (=> d!456486 (= (valid!1231 cacheUp!616) (validCacheMapUp!141 (cache!1842 cacheUp!616)))))

(declare-fun bs!378510 () Bool)

(assert (= bs!378510 d!456486))

(assert (=> bs!378510 m!1805431))

(assert (=> b!1530791 d!456486))

(declare-fun d!456488 () Bool)

(assert (=> d!456488 (= (inv!21436 (tag!3119 (h!21591 rules!1640))) (= (mod (str.len (value!91031 (tag!3119 (h!21591 rules!1640)))) 2) 0))))

(assert (=> b!1530826 d!456488))

(declare-fun d!456490 () Bool)

(declare-fun res!687112 () Bool)

(declare-fun e!978673 () Bool)

(assert (=> d!456490 (=> (not res!687112) (not e!978673))))

(declare-fun semiInverseModEq!1077 (Int Int) Bool)

(assert (=> d!456490 (= res!687112 (semiInverseModEq!1077 (toChars!4073 (transformation!2855 (h!21591 rules!1640))) (toValue!4214 (transformation!2855 (h!21591 rules!1640)))))))

(assert (=> d!456490 (= (inv!21450 (transformation!2855 (h!21591 rules!1640))) e!978673)))

(declare-fun b!1530942 () Bool)

(declare-fun equivClasses!1036 (Int Int) Bool)

(assert (=> b!1530942 (= e!978673 (equivClasses!1036 (toChars!4073 (transformation!2855 (h!21591 rules!1640))) (toValue!4214 (transformation!2855 (h!21591 rules!1640)))))))

(assert (= (and d!456490 res!687112) b!1530942))

(declare-fun m!1805561 () Bool)

(assert (=> d!456490 m!1805561))

(declare-fun m!1805563 () Bool)

(assert (=> b!1530942 m!1805563))

(assert (=> b!1530826 d!456490))

(declare-fun d!456492 () Bool)

(assert (=> d!456492 (= (valid!1232 (_3!1064 lt!531977)) (validCacheMapDown!141 (cache!1840 (_3!1064 lt!531977))))))

(declare-fun bs!378511 () Bool)

(assert (= bs!378511 d!456492))

(declare-fun m!1805565 () Bool)

(assert (=> bs!378511 m!1805565))

(assert (=> b!1530790 d!456492))

(declare-fun b!1530954 () Bool)

(declare-fun lt!532116 () List!16256)

(declare-fun e!978678 () Bool)

(assert (=> b!1530954 (= e!978678 (or (not (= lt!531990 Nil!16188)) (= lt!532116 lt!531954)))))

(declare-fun b!1530951 () Bool)

(declare-fun e!978679 () List!16256)

(assert (=> b!1530951 (= e!978679 lt!531990)))

(declare-fun d!456494 () Bool)

(assert (=> d!456494 e!978678))

(declare-fun res!687118 () Bool)

(assert (=> d!456494 (=> (not res!687118) (not e!978678))))

(declare-fun content!2332 (List!16256) (InoxSet C!8524))

(assert (=> d!456494 (= res!687118 (= (content!2332 lt!532116) ((_ map or) (content!2332 lt!531954) (content!2332 lt!531990))))))

(assert (=> d!456494 (= lt!532116 e!978679)))

(declare-fun c!251043 () Bool)

(assert (=> d!456494 (= c!251043 ((_ is Nil!16188) lt!531954))))

(assert (=> d!456494 (= (++!4395 lt!531954 lt!531990) lt!532116)))

(declare-fun b!1530953 () Bool)

(declare-fun res!687117 () Bool)

(assert (=> b!1530953 (=> (not res!687117) (not e!978678))))

(declare-fun size!13100 (List!16256) Int)

(assert (=> b!1530953 (= res!687117 (= (size!13100 lt!532116) (+ (size!13100 lt!531954) (size!13100 lt!531990))))))

(declare-fun b!1530952 () Bool)

(assert (=> b!1530952 (= e!978679 (Cons!16188 (h!21589 lt!531954) (++!4395 (t!140335 lt!531954) lt!531990)))))

(assert (= (and d!456494 c!251043) b!1530951))

(assert (= (and d!456494 (not c!251043)) b!1530952))

(assert (= (and d!456494 res!687118) b!1530953))

(assert (= (and b!1530953 res!687117) b!1530954))

(declare-fun m!1805567 () Bool)

(assert (=> d!456494 m!1805567))

(declare-fun m!1805569 () Bool)

(assert (=> d!456494 m!1805569))

(declare-fun m!1805571 () Bool)

(assert (=> d!456494 m!1805571))

(declare-fun m!1805573 () Bool)

(assert (=> b!1530953 m!1805573))

(declare-fun m!1805575 () Bool)

(assert (=> b!1530953 m!1805575))

(declare-fun m!1805577 () Bool)

(assert (=> b!1530953 m!1805577))

(declare-fun m!1805579 () Bool)

(assert (=> b!1530952 m!1805579))

(assert (=> b!1530807 d!456494))

(declare-fun d!456496 () Bool)

(assert (=> d!456496 (= (list!6391 totalInput!458) (list!6393 (c!251011 totalInput!458)))))

(declare-fun bs!378512 () Bool)

(assert (= bs!378512 d!456496))

(declare-fun m!1805581 () Bool)

(assert (=> bs!378512 m!1805581))

(assert (=> b!1530807 d!456496))

(declare-fun d!456498 () Bool)

(assert (=> d!456498 (= (list!6391 input!1102) (list!6393 (c!251011 input!1102)))))

(declare-fun bs!378513 () Bool)

(assert (= bs!378513 d!456498))

(declare-fun m!1805583 () Bool)

(assert (=> bs!378513 m!1805583))

(assert (=> b!1530807 d!456498))

(declare-fun d!456500 () Bool)

(assert (=> d!456500 (= (list!6391 treated!70) (list!6393 (c!251011 treated!70)))))

(declare-fun bs!378514 () Bool)

(assert (= bs!378514 d!456500))

(declare-fun m!1805585 () Bool)

(assert (=> bs!378514 m!1805585))

(assert (=> b!1530807 d!456500))

(declare-fun d!456502 () Bool)

(declare-fun c!251046 () Bool)

(assert (=> d!456502 (= c!251046 ((_ is Node!5464) (c!251012 acc!392)))))

(declare-fun e!978684 () Bool)

(assert (=> d!456502 (= (inv!21444 (c!251012 acc!392)) e!978684)))

(declare-fun b!1530961 () Bool)

(declare-fun inv!21453 (Conc!5464) Bool)

(assert (=> b!1530961 (= e!978684 (inv!21453 (c!251012 acc!392)))))

(declare-fun b!1530962 () Bool)

(declare-fun e!978685 () Bool)

(assert (=> b!1530962 (= e!978684 e!978685)))

(declare-fun res!687121 () Bool)

(assert (=> b!1530962 (= res!687121 (not ((_ is Leaf!8096) (c!251012 acc!392))))))

(assert (=> b!1530962 (=> res!687121 e!978685)))

(declare-fun b!1530963 () Bool)

(declare-fun inv!21454 (Conc!5464) Bool)

(assert (=> b!1530963 (= e!978685 (inv!21454 (c!251012 acc!392)))))

(assert (= (and d!456502 c!251046) b!1530961))

(assert (= (and d!456502 (not c!251046)) b!1530962))

(assert (= (and b!1530962 (not res!687121)) b!1530963))

(declare-fun m!1805587 () Bool)

(assert (=> b!1530961 m!1805587))

(declare-fun m!1805589 () Bool)

(assert (=> b!1530963 m!1805589))

(assert (=> b!1530788 d!456502))

(declare-fun d!456504 () Bool)

(declare-fun e!978688 () Bool)

(assert (=> d!456504 e!978688))

(declare-fun res!687124 () Bool)

(assert (=> d!456504 (=> (not res!687124) (not e!978688))))

(declare-fun prepend!482 (Conc!5464 Token!5372) Conc!5464)

(assert (=> d!456504 (= res!687124 (isBalanced!1622 (prepend!482 (c!251012 (_1!8640 lt!531967)) (_1!8638 (v!23004 lt!531958)))))))

(declare-fun lt!532119 () BalanceConc!10870)

(assert (=> d!456504 (= lt!532119 (BalanceConc!10871 (prepend!482 (c!251012 (_1!8640 lt!531967)) (_1!8638 (v!23004 lt!531958)))))))

(assert (=> d!456504 (= (prepend!481 (_1!8640 lt!531967) (_1!8638 (v!23004 lt!531958))) lt!532119)))

(declare-fun b!1530966 () Bool)

(assert (=> b!1530966 (= e!978688 (= (list!6392 lt!532119) (Cons!16189 (_1!8638 (v!23004 lt!531958)) (list!6392 (_1!8640 lt!531967)))))))

(assert (= (and d!456504 res!687124) b!1530966))

(declare-fun m!1805591 () Bool)

(assert (=> d!456504 m!1805591))

(assert (=> d!456504 m!1805591))

(declare-fun m!1805593 () Bool)

(assert (=> d!456504 m!1805593))

(declare-fun m!1805595 () Bool)

(assert (=> b!1530966 m!1805595))

(declare-fun m!1805597 () Bool)

(assert (=> b!1530966 m!1805597))

(assert (=> b!1530825 d!456504))

(declare-fun b!1530967 () Bool)

(declare-fun e!978692 () tuple2!15150)

(declare-fun lt!532120 () tuple2!15150)

(declare-fun lt!532122 () Option!2946)

(assert (=> b!1530967 (= e!978692 (tuple2!15151 (prepend!481 (_1!8640 lt!532120) (_1!8638 (v!23004 lt!532122))) (_2!8640 lt!532120)))))

(assert (=> b!1530967 (= lt!532120 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532122))))))

(declare-fun b!1530968 () Bool)

(assert (=> b!1530968 (= e!978692 (tuple2!15151 (BalanceConc!10871 Empty!5464) (_2!8638 (v!23004 lt!531958))))))

(declare-fun b!1530970 () Bool)

(declare-fun e!978690 () Bool)

(declare-fun e!978691 () Bool)

(assert (=> b!1530970 (= e!978690 e!978691)))

(declare-fun res!687126 () Bool)

(declare-fun lt!532121 () tuple2!15150)

(assert (=> b!1530970 (= res!687126 (< (size!13098 (_2!8640 lt!532121)) (size!13098 (_2!8638 (v!23004 lt!531958)))))))

(assert (=> b!1530970 (=> (not res!687126) (not e!978691))))

(declare-fun b!1530971 () Bool)

(assert (=> b!1530971 (= e!978691 (not (isEmpty!9982 (_1!8640 lt!532121))))))

(declare-fun d!456506 () Bool)

(declare-fun e!978689 () Bool)

(assert (=> d!456506 e!978689))

(declare-fun res!687127 () Bool)

(assert (=> d!456506 (=> (not res!687127) (not e!978689))))

(assert (=> d!456506 (= res!687127 e!978690)))

(declare-fun c!251048 () Bool)

(assert (=> d!456506 (= c!251048 (> (size!13099 (_1!8640 lt!532121)) 0))))

(assert (=> d!456506 (= lt!532121 e!978692)))

(declare-fun c!251049 () Bool)

(assert (=> d!456506 (= c!251049 ((_ is Some!2945) lt!532122))))

(assert (=> d!456506 (= lt!532122 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!531958))))))

(assert (=> d!456506 (= (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!531958))) lt!532121)))

(declare-fun b!1530969 () Bool)

(assert (=> b!1530969 (= e!978689 (= (list!6391 (_2!8640 lt!532121)) (_2!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 (_2!8638 (v!23004 lt!531958)))))))))

(declare-fun b!1530972 () Bool)

(assert (=> b!1530972 (= e!978690 (= (list!6391 (_2!8640 lt!532121)) (list!6391 (_2!8638 (v!23004 lt!531958)))))))

(declare-fun b!1530973 () Bool)

(declare-fun res!687125 () Bool)

(assert (=> b!1530973 (=> (not res!687125) (not e!978689))))

(assert (=> b!1530973 (= res!687125 (= (list!6392 (_1!8640 lt!532121)) (_1!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 (_2!8638 (v!23004 lt!531958)))))))))

(assert (= (and d!456506 c!251049) b!1530967))

(assert (= (and d!456506 (not c!251049)) b!1530968))

(assert (= (and d!456506 c!251048) b!1530970))

(assert (= (and d!456506 (not c!251048)) b!1530972))

(assert (= (and b!1530970 res!687126) b!1530971))

(assert (= (and d!456506 res!687127) b!1530973))

(assert (= (and b!1530973 res!687125) b!1530969))

(declare-fun m!1805599 () Bool)

(assert (=> b!1530973 m!1805599))

(declare-fun m!1805601 () Bool)

(assert (=> b!1530973 m!1805601))

(assert (=> b!1530973 m!1805601))

(declare-fun m!1805603 () Bool)

(assert (=> b!1530973 m!1805603))

(declare-fun m!1805605 () Bool)

(assert (=> b!1530969 m!1805605))

(assert (=> b!1530969 m!1805601))

(assert (=> b!1530969 m!1805601))

(assert (=> b!1530969 m!1805603))

(declare-fun m!1805607 () Bool)

(assert (=> b!1530967 m!1805607))

(declare-fun m!1805609 () Bool)

(assert (=> b!1530967 m!1805609))

(declare-fun m!1805611 () Bool)

(assert (=> d!456506 m!1805611))

(declare-fun m!1805613 () Bool)

(assert (=> d!456506 m!1805613))

(declare-fun m!1805615 () Bool)

(assert (=> b!1530970 m!1805615))

(declare-fun m!1805617 () Bool)

(assert (=> b!1530970 m!1805617))

(assert (=> b!1530972 m!1805605))

(assert (=> b!1530972 m!1805601))

(declare-fun m!1805619 () Bool)

(assert (=> b!1530971 m!1805619))

(assert (=> b!1530825 d!456506))

(declare-fun e!978705 () Bool)

(declare-fun b!1530998 () Bool)

(declare-fun lt!532143 () tuple4!714)

(declare-fun get!4757 (Option!2946) tuple2!15148)

(declare-datatypes ((tuple2!15154 0))(
  ( (tuple2!15155 (_1!8643 Token!5372) (_2!8643 List!16256)) )
))
(declare-datatypes ((Option!2947 0))(
  ( (None!2946) (Some!2946 (v!23008 tuple2!15154)) )
))
(declare-fun get!4758 (Option!2947) tuple2!15154)

(declare-fun maxPrefix!1215 (LexerInterface!2507 List!16258 List!16256) Option!2947)

(assert (=> b!1530998 (= e!978705 (= (list!6391 (_2!8638 (get!4757 (_1!8639 lt!532143)))) (_2!8643 (get!4758 (maxPrefix!1215 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1530999 () Bool)

(declare-datatypes ((tuple4!718 0))(
  ( (tuple4!719 (_1!8644 Option!2946) (_2!8644 CacheUp!872) (_3!1066 CacheFurthestNullable!296) (_4!359 CacheDown!878)) )
))
(declare-fun e!978708 () tuple4!718)

(declare-fun lt!532144 () tuple4!714)

(assert (=> b!1530999 (= e!978708 (tuple4!719 (_1!8639 lt!532144) (_2!8639 lt!532144) (_4!357 lt!532144) (_3!1064 lt!532144)))))

(declare-fun call!101389 () tuple4!714)

(assert (=> b!1530999 (= lt!532144 call!101389)))

(declare-fun b!1531000 () Bool)

(declare-fun e!978707 () Bool)

(assert (=> b!1531000 (= e!978707 (= (totalInput!2329 (_4!357 lt!532143)) totalInput!458))))

(declare-fun b!1531001 () Bool)

(declare-fun res!687151 () Bool)

(assert (=> b!1531001 (=> (not res!687151) (not e!978707))))

(assert (=> b!1531001 (= res!687151 (valid!1233 (_4!357 lt!532143)))))

(declare-fun b!1531002 () Bool)

(declare-fun lt!532145 () tuple4!714)

(declare-fun lt!532142 () tuple4!714)

(assert (=> b!1531002 (= e!978708 (tuple4!719 (ite (and ((_ is None!2945) (_1!8639 lt!532145)) ((_ is None!2945) (_1!8639 lt!532142))) None!2945 (ite ((_ is None!2945) (_1!8639 lt!532142)) (_1!8639 lt!532145) (ite ((_ is None!2945) (_1!8639 lt!532145)) (_1!8639 lt!532142) (ite (>= (size!13097 (_1!8638 (v!23004 (_1!8639 lt!532145)))) (size!13097 (_1!8638 (v!23004 (_1!8639 lt!532142))))) (_1!8639 lt!532145) (_1!8639 lt!532142))))) (_2!8639 lt!532142) (_4!357 lt!532142) (_3!1064 lt!532142)))))

(assert (=> b!1531002 (= lt!532145 call!101389)))

(assert (=> b!1531002 (= lt!532142 (maxPrefixZipperSequenceV3Mem!33 thiss!13241 (t!140337 rules!1640) input!1102 totalInput!458 (_2!8639 lt!532145) (_3!1064 lt!532145) (_4!357 lt!532145)))))

(declare-fun b!1531003 () Bool)

(declare-fun res!687148 () Bool)

(assert (=> b!1531003 (=> (not res!687148) (not e!978707))))

(assert (=> b!1531003 (= res!687148 (valid!1231 (_2!8639 lt!532143)))))

(declare-fun d!456508 () Bool)

(assert (=> d!456508 e!978707))

(declare-fun res!687152 () Bool)

(assert (=> d!456508 (=> (not res!687152) (not e!978707))))

(declare-fun isDefined!2367 (Option!2946) Bool)

(declare-fun isDefined!2368 (Option!2947) Bool)

(declare-fun maxPrefixZipper!266 (LexerInterface!2507 List!16258 List!16256) Option!2947)

(assert (=> d!456508 (= res!687152 (= (isDefined!2367 (_1!8639 lt!532143)) (isDefined!2368 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 input!1102)))))))

(declare-fun lt!532141 () tuple4!718)

(assert (=> d!456508 (= lt!532143 (tuple4!715 (_1!8644 lt!532141) (_2!8644 lt!532141) (_4!359 lt!532141) (_3!1066 lt!532141)))))

(assert (=> d!456508 (= lt!532141 e!978708)))

(declare-fun c!251052 () Bool)

(assert (=> d!456508 (= c!251052 (and ((_ is Cons!16190) rules!1640) ((_ is Nil!16190) (t!140337 rules!1640))))))

(declare-fun lt!532147 () Unit!25800)

(declare-fun lt!532149 () Unit!25800)

(assert (=> d!456508 (= lt!532147 lt!532149)))

(declare-fun lt!532148 () List!16256)

(declare-fun lt!532146 () List!16256)

(declare-fun isPrefix!1225 (List!16256 List!16256) Bool)

(assert (=> d!456508 (isPrefix!1225 lt!532148 lt!532146)))

(declare-fun lemmaIsPrefixRefl!855 (List!16256 List!16256) Unit!25800)

(assert (=> d!456508 (= lt!532149 (lemmaIsPrefixRefl!855 lt!532148 lt!532146))))

(assert (=> d!456508 (= lt!532146 (list!6391 input!1102))))

(assert (=> d!456508 (= lt!532148 (list!6391 input!1102))))

(declare-fun rulesValidInductive!863 (LexerInterface!2507 List!16258) Bool)

(assert (=> d!456508 (rulesValidInductive!863 thiss!13241 rules!1640)))

(assert (=> d!456508 (= (maxPrefixZipperSequenceV3Mem!33 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64) lt!532143)))

(declare-fun b!1531004 () Bool)

(declare-fun e!978710 () Bool)

(declare-fun e!978709 () Bool)

(assert (=> b!1531004 (= e!978710 e!978709)))

(declare-fun res!687157 () Bool)

(assert (=> b!1531004 (=> (not res!687157) (not e!978709))))

(assert (=> b!1531004 (= res!687157 (= (_1!8638 (get!4757 (_1!8639 lt!532143))) (_1!8643 (get!4758 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1531005 () Bool)

(declare-fun res!687149 () Bool)

(assert (=> b!1531005 (=> (not res!687149) (not e!978707))))

(declare-fun e!978706 () Bool)

(assert (=> b!1531005 (= res!687149 e!978706)))

(declare-fun res!687154 () Bool)

(assert (=> b!1531005 (=> res!687154 e!978706)))

(assert (=> b!1531005 (= res!687154 (not (isDefined!2367 (_1!8639 lt!532143))))))

(declare-fun b!1531006 () Bool)

(assert (=> b!1531006 (= e!978709 (= (list!6391 (_2!8638 (get!4757 (_1!8639 lt!532143)))) (_2!8643 (get!4758 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1531007 () Bool)

(declare-fun res!687150 () Bool)

(assert (=> b!1531007 (=> (not res!687150) (not e!978707))))

(assert (=> b!1531007 (= res!687150 (valid!1232 (_3!1064 lt!532143)))))

(declare-fun b!1531008 () Bool)

(assert (=> b!1531008 (= e!978706 e!978705)))

(declare-fun res!687153 () Bool)

(assert (=> b!1531008 (=> (not res!687153) (not e!978705))))

(assert (=> b!1531008 (= res!687153 (= (_1!8638 (get!4757 (_1!8639 lt!532143))) (_1!8643 (get!4758 (maxPrefix!1215 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1531009 () Bool)

(declare-fun res!687155 () Bool)

(assert (=> b!1531009 (=> (not res!687155) (not e!978707))))

(assert (=> b!1531009 (= res!687155 e!978710)))

(declare-fun res!687156 () Bool)

(assert (=> b!1531009 (=> res!687156 e!978710)))

(assert (=> b!1531009 (= res!687156 (not (isDefined!2367 (_1!8639 lt!532143))))))

(declare-fun bm!101384 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceV3Mem!17 (LexerInterface!2507 Rule!5510 BalanceConc!10868 BalanceConc!10868 CacheUp!872 CacheDown!878 CacheFurthestNullable!296) tuple4!714)

(assert (=> bm!101384 (= call!101389 (maxPrefixOneRuleZipperSequenceV3Mem!17 thiss!13241 (h!21591 rules!1640) input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(assert (= (and d!456508 c!251052) b!1530999))

(assert (= (and d!456508 (not c!251052)) b!1531002))

(assert (= (or b!1530999 b!1531002) bm!101384))

(assert (= (and d!456508 res!687152) b!1531009))

(assert (= (and b!1531009 (not res!687156)) b!1531004))

(assert (= (and b!1531004 res!687157) b!1531006))

(assert (= (and b!1531009 res!687155) b!1531005))

(assert (= (and b!1531005 (not res!687154)) b!1531008))

(assert (= (and b!1531008 res!687153) b!1530998))

(assert (= (and b!1531005 res!687149) b!1531003))

(assert (= (and b!1531003 res!687148) b!1531007))

(assert (= (and b!1531007 res!687150) b!1531001))

(assert (= (and b!1531001 res!687151) b!1531000))

(declare-fun m!1805621 () Bool)

(assert (=> b!1531004 m!1805621))

(assert (=> b!1531004 m!1805161))

(assert (=> b!1531004 m!1805161))

(declare-fun m!1805623 () Bool)

(assert (=> b!1531004 m!1805623))

(assert (=> b!1531004 m!1805623))

(declare-fun m!1805625 () Bool)

(assert (=> b!1531004 m!1805625))

(assert (=> b!1531006 m!1805161))

(assert (=> b!1531006 m!1805623))

(assert (=> b!1531006 m!1805625))

(declare-fun m!1805627 () Bool)

(assert (=> b!1531006 m!1805627))

(assert (=> b!1531006 m!1805161))

(assert (=> b!1531006 m!1805623))

(assert (=> b!1531006 m!1805621))

(declare-fun m!1805629 () Bool)

(assert (=> b!1531003 m!1805629))

(declare-fun m!1805631 () Bool)

(assert (=> bm!101384 m!1805631))

(declare-fun m!1805633 () Bool)

(assert (=> b!1531002 m!1805633))

(declare-fun m!1805635 () Bool)

(assert (=> b!1531009 m!1805635))

(assert (=> b!1531005 m!1805635))

(assert (=> b!1531008 m!1805621))

(assert (=> b!1531008 m!1805161))

(assert (=> b!1531008 m!1805161))

(declare-fun m!1805637 () Bool)

(assert (=> b!1531008 m!1805637))

(assert (=> b!1531008 m!1805637))

(declare-fun m!1805639 () Bool)

(assert (=> b!1531008 m!1805639))

(assert (=> b!1530998 m!1805627))

(assert (=> b!1530998 m!1805161))

(assert (=> b!1530998 m!1805637))

(assert (=> b!1530998 m!1805161))

(assert (=> b!1530998 m!1805637))

(assert (=> b!1530998 m!1805639))

(assert (=> b!1530998 m!1805621))

(declare-fun m!1805641 () Bool)

(assert (=> b!1531007 m!1805641))

(declare-fun m!1805643 () Bool)

(assert (=> d!456508 m!1805643))

(declare-fun m!1805645 () Bool)

(assert (=> d!456508 m!1805645))

(assert (=> d!456508 m!1805623))

(declare-fun m!1805647 () Bool)

(assert (=> d!456508 m!1805647))

(assert (=> d!456508 m!1805161))

(assert (=> d!456508 m!1805161))

(assert (=> d!456508 m!1805623))

(declare-fun m!1805649 () Bool)

(assert (=> d!456508 m!1805649))

(assert (=> d!456508 m!1805635))

(declare-fun m!1805651 () Bool)

(assert (=> b!1531001 m!1805651))

(assert (=> b!1530823 d!456508))

(declare-fun lt!532150 () List!16256)

(declare-fun e!978711 () Bool)

(declare-fun b!1531013 () Bool)

(assert (=> b!1531013 (= e!978711 (or (not (= lt!531979 Nil!16188)) (= lt!532150 lt!531985)))))

(declare-fun b!1531010 () Bool)

(declare-fun e!978712 () List!16256)

(assert (=> b!1531010 (= e!978712 lt!531979)))

(declare-fun d!456510 () Bool)

(assert (=> d!456510 e!978711))

(declare-fun res!687159 () Bool)

(assert (=> d!456510 (=> (not res!687159) (not e!978711))))

(assert (=> d!456510 (= res!687159 (= (content!2332 lt!532150) ((_ map or) (content!2332 lt!531985) (content!2332 lt!531979))))))

(assert (=> d!456510 (= lt!532150 e!978712)))

(declare-fun c!251053 () Bool)

(assert (=> d!456510 (= c!251053 ((_ is Nil!16188) lt!531985))))

(assert (=> d!456510 (= (++!4395 lt!531985 lt!531979) lt!532150)))

(declare-fun b!1531012 () Bool)

(declare-fun res!687158 () Bool)

(assert (=> b!1531012 (=> (not res!687158) (not e!978711))))

(assert (=> b!1531012 (= res!687158 (= (size!13100 lt!532150) (+ (size!13100 lt!531985) (size!13100 lt!531979))))))

(declare-fun b!1531011 () Bool)

(assert (=> b!1531011 (= e!978712 (Cons!16188 (h!21589 lt!531985) (++!4395 (t!140335 lt!531985) lt!531979)))))

(assert (= (and d!456510 c!251053) b!1531010))

(assert (= (and d!456510 (not c!251053)) b!1531011))

(assert (= (and d!456510 res!687159) b!1531012))

(assert (= (and b!1531012 res!687158) b!1531013))

(declare-fun m!1805653 () Bool)

(assert (=> d!456510 m!1805653))

(declare-fun m!1805655 () Bool)

(assert (=> d!456510 m!1805655))

(declare-fun m!1805657 () Bool)

(assert (=> d!456510 m!1805657))

(declare-fun m!1805659 () Bool)

(assert (=> b!1531012 m!1805659))

(declare-fun m!1805661 () Bool)

(assert (=> b!1531012 m!1805661))

(declare-fun m!1805663 () Bool)

(assert (=> b!1531012 m!1805663))

(declare-fun m!1805665 () Bool)

(assert (=> b!1531011 m!1805665))

(assert (=> b!1530822 d!456510))

(declare-fun lt!532151 () List!16256)

(declare-fun e!978713 () Bool)

(declare-fun b!1531017 () Bool)

(assert (=> b!1531017 (= e!978713 (or (not (= (++!4395 lt!531959 lt!531979) Nil!16188)) (= lt!532151 lt!531954)))))

(declare-fun b!1531014 () Bool)

(declare-fun e!978714 () List!16256)

(assert (=> b!1531014 (= e!978714 (++!4395 lt!531959 lt!531979))))

(declare-fun d!456512 () Bool)

(assert (=> d!456512 e!978713))

(declare-fun res!687161 () Bool)

(assert (=> d!456512 (=> (not res!687161) (not e!978713))))

(assert (=> d!456512 (= res!687161 (= (content!2332 lt!532151) ((_ map or) (content!2332 lt!531954) (content!2332 (++!4395 lt!531959 lt!531979)))))))

(assert (=> d!456512 (= lt!532151 e!978714)))

(declare-fun c!251054 () Bool)

(assert (=> d!456512 (= c!251054 ((_ is Nil!16188) lt!531954))))

(assert (=> d!456512 (= (++!4395 lt!531954 (++!4395 lt!531959 lt!531979)) lt!532151)))

(declare-fun b!1531016 () Bool)

(declare-fun res!687160 () Bool)

(assert (=> b!1531016 (=> (not res!687160) (not e!978713))))

(assert (=> b!1531016 (= res!687160 (= (size!13100 lt!532151) (+ (size!13100 lt!531954) (size!13100 (++!4395 lt!531959 lt!531979)))))))

(declare-fun b!1531015 () Bool)

(assert (=> b!1531015 (= e!978714 (Cons!16188 (h!21589 lt!531954) (++!4395 (t!140335 lt!531954) (++!4395 lt!531959 lt!531979))))))

(assert (= (and d!456512 c!251054) b!1531014))

(assert (= (and d!456512 (not c!251054)) b!1531015))

(assert (= (and d!456512 res!687161) b!1531016))

(assert (= (and b!1531016 res!687160) b!1531017))

(declare-fun m!1805667 () Bool)

(assert (=> d!456512 m!1805667))

(assert (=> d!456512 m!1805569))

(assert (=> d!456512 m!1805227))

(declare-fun m!1805669 () Bool)

(assert (=> d!456512 m!1805669))

(declare-fun m!1805671 () Bool)

(assert (=> b!1531016 m!1805671))

(assert (=> b!1531016 m!1805575))

(assert (=> b!1531016 m!1805227))

(declare-fun m!1805673 () Bool)

(assert (=> b!1531016 m!1805673))

(assert (=> b!1531015 m!1805227))

(declare-fun m!1805675 () Bool)

(assert (=> b!1531015 m!1805675))

(assert (=> b!1530822 d!456512))

(declare-fun d!456514 () Bool)

(assert (=> d!456514 (= (++!4395 (++!4395 lt!531954 lt!531959) lt!531979) (++!4395 lt!531954 (++!4395 lt!531959 lt!531979)))))

(declare-fun lt!532154 () Unit!25800)

(declare-fun choose!9209 (List!16256 List!16256 List!16256) Unit!25800)

(assert (=> d!456514 (= lt!532154 (choose!9209 lt!531954 lt!531959 lt!531979))))

(assert (=> d!456514 (= (lemmaConcatAssociativity!963 lt!531954 lt!531959 lt!531979) lt!532154)))

(declare-fun bs!378515 () Bool)

(assert (= bs!378515 d!456514))

(assert (=> bs!378515 m!1805227))

(assert (=> bs!378515 m!1805253))

(declare-fun m!1805677 () Bool)

(assert (=> bs!378515 m!1805677))

(assert (=> bs!378515 m!1805253))

(assert (=> bs!378515 m!1805227))

(assert (=> bs!378515 m!1805229))

(declare-fun m!1805679 () Bool)

(assert (=> bs!378515 m!1805679))

(assert (=> b!1530822 d!456514))

(declare-fun d!456516 () Bool)

(declare-fun lt!532157 () BalanceConc!10868)

(assert (=> d!456516 (= (list!6391 lt!532157) (originalCharacters!3717 (_1!8638 (v!23004 (_1!8639 lt!531977)))))))

(declare-fun dynLambda!7266 (Int TokenValue!2945) BalanceConc!10868)

(assert (=> d!456516 (= lt!532157 (dynLambda!7266 (toChars!4073 (transformation!2855 (rule!4662 (_1!8638 (v!23004 (_1!8639 lt!531977)))))) (value!91032 (_1!8638 (v!23004 (_1!8639 lt!531977))))))))

(assert (=> d!456516 (= (charsOf!1638 (_1!8638 (v!23004 (_1!8639 lt!531977)))) lt!532157)))

(declare-fun b_lambda!48181 () Bool)

(assert (=> (not b_lambda!48181) (not d!456516)))

(declare-fun t!140339 () Bool)

(declare-fun tb!86957 () Bool)

(assert (=> (and b!1530821 (= (toChars!4073 (transformation!2855 (h!21591 rules!1640))) (toChars!4073 (transformation!2855 (rule!4662 (_1!8638 (v!23004 (_1!8639 lt!531977))))))) t!140339) tb!86957))

(declare-fun b!1531022 () Bool)

(declare-fun e!978717 () Bool)

(declare-fun tp!439892 () Bool)

(assert (=> b!1531022 (= e!978717 (and (inv!21443 (c!251011 (dynLambda!7266 (toChars!4073 (transformation!2855 (rule!4662 (_1!8638 (v!23004 (_1!8639 lt!531977)))))) (value!91032 (_1!8638 (v!23004 (_1!8639 lt!531977))))))) tp!439892))))

(declare-fun result!104634 () Bool)

(assert (=> tb!86957 (= result!104634 (and (inv!21445 (dynLambda!7266 (toChars!4073 (transformation!2855 (rule!4662 (_1!8638 (v!23004 (_1!8639 lt!531977)))))) (value!91032 (_1!8638 (v!23004 (_1!8639 lt!531977)))))) e!978717))))

(assert (= tb!86957 b!1531022))

(declare-fun m!1805681 () Bool)

(assert (=> b!1531022 m!1805681))

(declare-fun m!1805683 () Bool)

(assert (=> tb!86957 m!1805683))

(assert (=> d!456516 t!140339))

(declare-fun b_and!106363 () Bool)

(assert (= b_and!106361 (and (=> t!140339 result!104634) b_and!106363)))

(declare-fun m!1805685 () Bool)

(assert (=> d!456516 m!1805685))

(declare-fun m!1805687 () Bool)

(assert (=> d!456516 m!1805687))

(assert (=> b!1530822 d!456516))

(declare-fun e!978718 () Bool)

(declare-fun b!1531026 () Bool)

(declare-fun lt!532158 () List!16256)

(assert (=> b!1531026 (= e!978718 (or (not (= lt!531959 Nil!16188)) (= lt!532158 lt!531954)))))

(declare-fun b!1531023 () Bool)

(declare-fun e!978719 () List!16256)

(assert (=> b!1531023 (= e!978719 lt!531959)))

(declare-fun d!456518 () Bool)

(assert (=> d!456518 e!978718))

(declare-fun res!687163 () Bool)

(assert (=> d!456518 (=> (not res!687163) (not e!978718))))

(assert (=> d!456518 (= res!687163 (= (content!2332 lt!532158) ((_ map or) (content!2332 lt!531954) (content!2332 lt!531959))))))

(assert (=> d!456518 (= lt!532158 e!978719)))

(declare-fun c!251055 () Bool)

(assert (=> d!456518 (= c!251055 ((_ is Nil!16188) lt!531954))))

(assert (=> d!456518 (= (++!4395 lt!531954 lt!531959) lt!532158)))

(declare-fun b!1531025 () Bool)

(declare-fun res!687162 () Bool)

(assert (=> b!1531025 (=> (not res!687162) (not e!978718))))

(assert (=> b!1531025 (= res!687162 (= (size!13100 lt!532158) (+ (size!13100 lt!531954) (size!13100 lt!531959))))))

(declare-fun b!1531024 () Bool)

(assert (=> b!1531024 (= e!978719 (Cons!16188 (h!21589 lt!531954) (++!4395 (t!140335 lt!531954) lt!531959)))))

(assert (= (and d!456518 c!251055) b!1531023))

(assert (= (and d!456518 (not c!251055)) b!1531024))

(assert (= (and d!456518 res!687163) b!1531025))

(assert (= (and b!1531025 res!687162) b!1531026))

(declare-fun m!1805689 () Bool)

(assert (=> d!456518 m!1805689))

(assert (=> d!456518 m!1805569))

(declare-fun m!1805691 () Bool)

(assert (=> d!456518 m!1805691))

(declare-fun m!1805693 () Bool)

(assert (=> b!1531025 m!1805693))

(assert (=> b!1531025 m!1805575))

(declare-fun m!1805695 () Bool)

(assert (=> b!1531025 m!1805695))

(declare-fun m!1805697 () Bool)

(assert (=> b!1531024 m!1805697))

(assert (=> b!1530822 d!456518))

(declare-fun d!456520 () Bool)

(declare-fun e!978722 () Bool)

(assert (=> d!456520 e!978722))

(declare-fun res!687166 () Bool)

(assert (=> d!456520 (=> res!687166 e!978722)))

(declare-fun lt!532161 () Bool)

(assert (=> d!456520 (= res!687166 (not lt!532161))))

(declare-fun drop!765 (List!16256 Int) List!16256)

(assert (=> d!456520 (= lt!532161 (= lt!531979 (drop!765 (++!4395 lt!531985 lt!531979) (- (size!13100 (++!4395 lt!531985 lt!531979)) (size!13100 lt!531979)))))))

(assert (=> d!456520 (= (isSuffix!311 lt!531979 (++!4395 lt!531985 lt!531979)) lt!532161)))

(declare-fun b!1531029 () Bool)

(assert (=> b!1531029 (= e!978722 (>= (size!13100 (++!4395 lt!531985 lt!531979)) (size!13100 lt!531979)))))

(assert (= (and d!456520 (not res!687166)) b!1531029))

(assert (=> d!456520 m!1805237))

(declare-fun m!1805699 () Bool)

(assert (=> d!456520 m!1805699))

(assert (=> d!456520 m!1805663))

(assert (=> d!456520 m!1805237))

(declare-fun m!1805701 () Bool)

(assert (=> d!456520 m!1805701))

(assert (=> b!1531029 m!1805237))

(assert (=> b!1531029 m!1805699))

(assert (=> b!1531029 m!1805663))

(assert (=> b!1530822 d!456520))

(declare-fun d!456522 () Bool)

(assert (=> d!456522 (= (list!6392 lt!531988) (list!6394 (c!251012 lt!531988)))))

(declare-fun bs!378516 () Bool)

(assert (= bs!378516 d!456522))

(declare-fun m!1805703 () Bool)

(assert (=> bs!378516 m!1805703))

(assert (=> b!1530822 d!456522))

(declare-fun b!1531030 () Bool)

(declare-fun e!978726 () tuple2!15150)

(declare-fun lt!532162 () tuple2!15150)

(declare-fun lt!532164 () Option!2946)

(assert (=> b!1531030 (= e!978726 (tuple2!15151 (prepend!481 (_1!8640 lt!532162) (_1!8638 (v!23004 lt!532164))) (_2!8640 lt!532162)))))

(assert (=> b!1531030 (= lt!532162 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532164))))))

(declare-fun b!1531031 () Bool)

(assert (=> b!1531031 (= e!978726 (tuple2!15151 (BalanceConc!10871 Empty!5464) lt!531971))))

(declare-fun b!1531033 () Bool)

(declare-fun e!978724 () Bool)

(declare-fun e!978725 () Bool)

(assert (=> b!1531033 (= e!978724 e!978725)))

(declare-fun res!687168 () Bool)

(declare-fun lt!532163 () tuple2!15150)

(assert (=> b!1531033 (= res!687168 (< (size!13098 (_2!8640 lt!532163)) (size!13098 lt!531971)))))

(assert (=> b!1531033 (=> (not res!687168) (not e!978725))))

(declare-fun b!1531034 () Bool)

(assert (=> b!1531034 (= e!978725 (not (isEmpty!9982 (_1!8640 lt!532163))))))

(declare-fun d!456524 () Bool)

(declare-fun e!978723 () Bool)

(assert (=> d!456524 e!978723))

(declare-fun res!687169 () Bool)

(assert (=> d!456524 (=> (not res!687169) (not e!978723))))

(assert (=> d!456524 (= res!687169 e!978724)))

(declare-fun c!251056 () Bool)

(assert (=> d!456524 (= c!251056 (> (size!13099 (_1!8640 lt!532163)) 0))))

(assert (=> d!456524 (= lt!532163 e!978726)))

(declare-fun c!251057 () Bool)

(assert (=> d!456524 (= c!251057 ((_ is Some!2945) lt!532164))))

(assert (=> d!456524 (= lt!532164 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 lt!531971))))

(assert (=> d!456524 (= (lexRec!341 thiss!13241 rules!1640 lt!531971) lt!532163)))

(declare-fun b!1531032 () Bool)

(assert (=> b!1531032 (= e!978723 (= (list!6391 (_2!8640 lt!532163)) (_2!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 lt!531971)))))))

(declare-fun b!1531035 () Bool)

(assert (=> b!1531035 (= e!978724 (= (list!6391 (_2!8640 lt!532163)) (list!6391 lt!531971)))))

(declare-fun b!1531036 () Bool)

(declare-fun res!687167 () Bool)

(assert (=> b!1531036 (=> (not res!687167) (not e!978723))))

(assert (=> b!1531036 (= res!687167 (= (list!6392 (_1!8640 lt!532163)) (_1!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 lt!531971)))))))

(assert (= (and d!456524 c!251057) b!1531030))

(assert (= (and d!456524 (not c!251057)) b!1531031))

(assert (= (and d!456524 c!251056) b!1531033))

(assert (= (and d!456524 (not c!251056)) b!1531035))

(assert (= (and b!1531033 res!687168) b!1531034))

(assert (= (and d!456524 res!687169) b!1531036))

(assert (= (and b!1531036 res!687167) b!1531032))

(declare-fun m!1805705 () Bool)

(assert (=> b!1531036 m!1805705))

(assert (=> b!1531036 m!1805269))

(assert (=> b!1531036 m!1805269))

(declare-fun m!1805707 () Bool)

(assert (=> b!1531036 m!1805707))

(declare-fun m!1805709 () Bool)

(assert (=> b!1531032 m!1805709))

(assert (=> b!1531032 m!1805269))

(assert (=> b!1531032 m!1805269))

(assert (=> b!1531032 m!1805707))

(declare-fun m!1805711 () Bool)

(assert (=> b!1531030 m!1805711))

(declare-fun m!1805713 () Bool)

(assert (=> b!1531030 m!1805713))

(declare-fun m!1805715 () Bool)

(assert (=> d!456524 m!1805715))

(assert (=> d!456524 m!1805235))

(declare-fun m!1805717 () Bool)

(assert (=> b!1531033 m!1805717))

(declare-fun m!1805719 () Bool)

(assert (=> b!1531033 m!1805719))

(assert (=> b!1531035 m!1805709))

(assert (=> b!1531035 m!1805269))

(declare-fun m!1805721 () Bool)

(assert (=> b!1531034 m!1805721))

(assert (=> b!1530822 d!456524))

(declare-fun b!1531047 () Bool)

(declare-fun e!978733 () tuple2!15152)

(declare-fun lt!532172 () Option!2947)

(declare-fun lt!532173 () tuple2!15152)

(assert (=> b!1531047 (= e!978733 (tuple2!15153 (Cons!16189 (_1!8643 (v!23008 lt!532172)) (_1!8642 lt!532173)) (_2!8642 lt!532173)))))

(assert (=> b!1531047 (= lt!532173 (lexList!755 thiss!13241 rules!1640 (_2!8643 (v!23008 lt!532172))))))

(declare-fun b!1531048 () Bool)

(declare-fun e!978734 () Bool)

(declare-fun e!978735 () Bool)

(assert (=> b!1531048 (= e!978734 e!978735)))

(declare-fun res!687172 () Bool)

(declare-fun lt!532171 () tuple2!15152)

(assert (=> b!1531048 (= res!687172 (< (size!13100 (_2!8642 lt!532171)) (size!13100 lt!531986)))))

(assert (=> b!1531048 (=> (not res!687172) (not e!978735))))

(declare-fun d!456526 () Bool)

(assert (=> d!456526 e!978734))

(declare-fun c!251062 () Bool)

(declare-fun size!13101 (List!16257) Int)

(assert (=> d!456526 (= c!251062 (> (size!13101 (_1!8642 lt!532171)) 0))))

(assert (=> d!456526 (= lt!532171 e!978733)))

(declare-fun c!251063 () Bool)

(assert (=> d!456526 (= c!251063 ((_ is Some!2946) lt!532172))))

(assert (=> d!456526 (= lt!532172 (maxPrefix!1215 thiss!13241 rules!1640 lt!531986))))

(assert (=> d!456526 (= (lexList!755 thiss!13241 rules!1640 lt!531986) lt!532171)))

(declare-fun b!1531049 () Bool)

(declare-fun isEmpty!9983 (List!16257) Bool)

(assert (=> b!1531049 (= e!978735 (not (isEmpty!9983 (_1!8642 lt!532171))))))

(declare-fun b!1531050 () Bool)

(assert (=> b!1531050 (= e!978733 (tuple2!15153 Nil!16189 lt!531986))))

(declare-fun b!1531051 () Bool)

(assert (=> b!1531051 (= e!978734 (= (_2!8642 lt!532171) lt!531986))))

(assert (= (and d!456526 c!251063) b!1531047))

(assert (= (and d!456526 (not c!251063)) b!1531050))

(assert (= (and d!456526 c!251062) b!1531048))

(assert (= (and d!456526 (not c!251062)) b!1531051))

(assert (= (and b!1531048 res!687172) b!1531049))

(declare-fun m!1805723 () Bool)

(assert (=> b!1531047 m!1805723))

(declare-fun m!1805725 () Bool)

(assert (=> b!1531048 m!1805725))

(declare-fun m!1805727 () Bool)

(assert (=> b!1531048 m!1805727))

(declare-fun m!1805729 () Bool)

(assert (=> d!456526 m!1805729))

(declare-fun m!1805731 () Bool)

(assert (=> d!456526 m!1805731))

(declare-fun m!1805733 () Bool)

(assert (=> b!1531049 m!1805733))

(assert (=> b!1530822 d!456526))

(declare-fun d!456528 () Bool)

(assert (=> d!456528 (= (++!4398 (++!4398 lt!531972 lt!531983) lt!531961) (++!4398 lt!531972 (++!4398 lt!531983 lt!531961)))))

(declare-fun lt!532176 () Unit!25800)

(declare-fun choose!9210 (List!16257 List!16257 List!16257) Unit!25800)

(assert (=> d!456528 (= lt!532176 (choose!9210 lt!531972 lt!531983 lt!531961))))

(assert (=> d!456528 (= (lemmaConcatAssociativity!962 lt!531972 lt!531983 lt!531961) lt!532176)))

(declare-fun bs!378517 () Bool)

(assert (= bs!378517 d!456528))

(assert (=> bs!378517 m!1805241))

(assert (=> bs!378517 m!1805263))

(declare-fun m!1805735 () Bool)

(assert (=> bs!378517 m!1805735))

(assert (=> bs!378517 m!1805219))

(assert (=> bs!378517 m!1805219))

(assert (=> bs!378517 m!1805221))

(assert (=> bs!378517 m!1805241))

(assert (=> b!1530822 d!456528))

(declare-fun d!456530 () Bool)

(declare-fun e!978738 () Bool)

(assert (=> d!456530 e!978738))

(declare-fun res!687175 () Bool)

(assert (=> d!456530 (=> (not res!687175) (not e!978738))))

(declare-fun append!520 (Conc!5464 Token!5372) Conc!5464)

(assert (=> d!456530 (= res!687175 (isBalanced!1622 (append!520 (c!251012 acc!392) (_1!8638 (v!23004 (_1!8639 lt!531977))))))))

(declare-fun lt!532179 () BalanceConc!10870)

(assert (=> d!456530 (= lt!532179 (BalanceConc!10871 (append!520 (c!251012 acc!392) (_1!8638 (v!23004 (_1!8639 lt!531977))))))))

(assert (=> d!456530 (= (append!519 acc!392 (_1!8638 (v!23004 (_1!8639 lt!531977)))) lt!532179)))

(declare-fun b!1531054 () Bool)

(declare-fun $colon+!113 (List!16257 Token!5372) List!16257)

(assert (=> b!1531054 (= e!978738 (= (list!6392 lt!532179) ($colon+!113 (list!6392 acc!392) (_1!8638 (v!23004 (_1!8639 lt!531977))))))))

(assert (= (and d!456530 res!687175) b!1531054))

(declare-fun m!1805737 () Bool)

(assert (=> d!456530 m!1805737))

(assert (=> d!456530 m!1805737))

(declare-fun m!1805739 () Bool)

(assert (=> d!456530 m!1805739))

(declare-fun m!1805741 () Bool)

(assert (=> b!1531054 m!1805741))

(assert (=> b!1531054 m!1805315))

(assert (=> b!1531054 m!1805315))

(declare-fun m!1805743 () Bool)

(assert (=> b!1531054 m!1805743))

(assert (=> b!1530822 d!456530))

(declare-fun d!456532 () Bool)

(declare-fun e!978743 () Bool)

(assert (=> d!456532 e!978743))

(declare-fun res!687181 () Bool)

(assert (=> d!456532 (=> (not res!687181) (not e!978743))))

(declare-fun lt!532182 () List!16257)

(declare-fun content!2333 (List!16257) (InoxSet Token!5372))

(assert (=> d!456532 (= res!687181 (= (content!2333 lt!532182) ((_ map or) (content!2333 lt!531972) (content!2333 (++!4398 lt!531983 lt!531961)))))))

(declare-fun e!978744 () List!16257)

(assert (=> d!456532 (= lt!532182 e!978744)))

(declare-fun c!251067 () Bool)

(assert (=> d!456532 (= c!251067 ((_ is Nil!16189) lt!531972))))

(assert (=> d!456532 (= (++!4398 lt!531972 (++!4398 lt!531983 lt!531961)) lt!532182)))

(declare-fun b!1531063 () Bool)

(assert (=> b!1531063 (= e!978744 (++!4398 lt!531983 lt!531961))))

(declare-fun b!1531064 () Bool)

(assert (=> b!1531064 (= e!978744 (Cons!16189 (h!21590 lt!531972) (++!4398 (t!140336 lt!531972) (++!4398 lt!531983 lt!531961))))))

(declare-fun b!1531066 () Bool)

(assert (=> b!1531066 (= e!978743 (or (not (= (++!4398 lt!531983 lt!531961) Nil!16189)) (= lt!532182 lt!531972)))))

(declare-fun b!1531065 () Bool)

(declare-fun res!687180 () Bool)

(assert (=> b!1531065 (=> (not res!687180) (not e!978743))))

(assert (=> b!1531065 (= res!687180 (= (size!13101 lt!532182) (+ (size!13101 lt!531972) (size!13101 (++!4398 lt!531983 lt!531961)))))))

(assert (= (and d!456532 c!251067) b!1531063))

(assert (= (and d!456532 (not c!251067)) b!1531064))

(assert (= (and d!456532 res!687181) b!1531065))

(assert (= (and b!1531065 res!687180) b!1531066))

(declare-fun m!1805745 () Bool)

(assert (=> d!456532 m!1805745))

(declare-fun m!1805747 () Bool)

(assert (=> d!456532 m!1805747))

(assert (=> d!456532 m!1805219))

(declare-fun m!1805749 () Bool)

(assert (=> d!456532 m!1805749))

(assert (=> b!1531064 m!1805219))

(declare-fun m!1805751 () Bool)

(assert (=> b!1531064 m!1805751))

(declare-fun m!1805753 () Bool)

(assert (=> b!1531065 m!1805753))

(declare-fun m!1805755 () Bool)

(assert (=> b!1531065 m!1805755))

(assert (=> b!1531065 m!1805219))

(declare-fun m!1805757 () Bool)

(assert (=> b!1531065 m!1805757))

(assert (=> b!1530822 d!456532))

(declare-fun d!456534 () Bool)

(assert (=> d!456534 (= (list!6391 lt!531971) (list!6393 (c!251011 lt!531971)))))

(declare-fun bs!378518 () Bool)

(assert (= bs!378518 d!456534))

(declare-fun m!1805759 () Bool)

(assert (=> bs!378518 m!1805759))

(assert (=> b!1530822 d!456534))

(declare-fun d!456536 () Bool)

(assert (=> d!456536 (= (lexList!755 thiss!13241 rules!1640 lt!531986) (tuple2!15153 lt!531957 Nil!16188))))

(declare-fun lt!532185 () Unit!25800)

(declare-fun choose!9211 (LexerInterface!2507 List!16258 List!16256 List!16256 List!16257 List!16257 List!16256) Unit!25800)

(assert (=> d!456536 (= lt!532185 (choose!9211 thiss!13241 rules!1640 lt!531986 lt!531979 lt!531957 lt!531961 (list!6391 (_2!8640 lt!531963))))))

(assert (=> d!456536 (not (isEmpty!9981 rules!1640))))

(assert (=> d!456536 (= (lemmaLexThenLexPrefix!231 thiss!13241 rules!1640 lt!531986 lt!531979 lt!531957 lt!531961 (list!6391 (_2!8640 lt!531963))) lt!532185)))

(declare-fun bs!378519 () Bool)

(assert (= bs!378519 d!456536))

(assert (=> bs!378519 m!1805251))

(assert (=> bs!378519 m!1805261))

(declare-fun m!1805761 () Bool)

(assert (=> bs!378519 m!1805761))

(assert (=> bs!378519 m!1805171))

(assert (=> b!1530822 d!456536))

(declare-fun d!456538 () Bool)

(declare-fun e!978745 () Bool)

(assert (=> d!456538 e!978745))

(declare-fun res!687183 () Bool)

(assert (=> d!456538 (=> (not res!687183) (not e!978745))))

(declare-fun lt!532186 () List!16257)

(assert (=> d!456538 (= res!687183 (= (content!2333 lt!532186) ((_ map or) (content!2333 lt!531972) (content!2333 lt!531983))))))

(declare-fun e!978746 () List!16257)

(assert (=> d!456538 (= lt!532186 e!978746)))

(declare-fun c!251068 () Bool)

(assert (=> d!456538 (= c!251068 ((_ is Nil!16189) lt!531972))))

(assert (=> d!456538 (= (++!4398 lt!531972 lt!531983) lt!532186)))

(declare-fun b!1531067 () Bool)

(assert (=> b!1531067 (= e!978746 lt!531983)))

(declare-fun b!1531068 () Bool)

(assert (=> b!1531068 (= e!978746 (Cons!16189 (h!21590 lt!531972) (++!4398 (t!140336 lt!531972) lt!531983)))))

(declare-fun b!1531070 () Bool)

(assert (=> b!1531070 (= e!978745 (or (not (= lt!531983 Nil!16189)) (= lt!532186 lt!531972)))))

(declare-fun b!1531069 () Bool)

(declare-fun res!687182 () Bool)

(assert (=> b!1531069 (=> (not res!687182) (not e!978745))))

(assert (=> b!1531069 (= res!687182 (= (size!13101 lt!532186) (+ (size!13101 lt!531972) (size!13101 lt!531983))))))

(assert (= (and d!456538 c!251068) b!1531067))

(assert (= (and d!456538 (not c!251068)) b!1531068))

(assert (= (and d!456538 res!687183) b!1531069))

(assert (= (and b!1531069 res!687182) b!1531070))

(declare-fun m!1805763 () Bool)

(assert (=> d!456538 m!1805763))

(assert (=> d!456538 m!1805747))

(declare-fun m!1805765 () Bool)

(assert (=> d!456538 m!1805765))

(declare-fun m!1805767 () Bool)

(assert (=> b!1531068 m!1805767))

(declare-fun m!1805769 () Bool)

(assert (=> b!1531069 m!1805769))

(assert (=> b!1531069 m!1805755))

(declare-fun m!1805771 () Bool)

(assert (=> b!1531069 m!1805771))

(assert (=> b!1530822 d!456538))

(declare-fun d!456540 () Bool)

(declare-fun e!978747 () Bool)

(assert (=> d!456540 e!978747))

(declare-fun res!687185 () Bool)

(assert (=> d!456540 (=> (not res!687185) (not e!978747))))

(declare-fun lt!532187 () List!16257)

(assert (=> d!456540 (= res!687185 (= (content!2333 lt!532187) ((_ map or) (content!2333 lt!531983) (content!2333 lt!531961))))))

(declare-fun e!978748 () List!16257)

(assert (=> d!456540 (= lt!532187 e!978748)))

(declare-fun c!251069 () Bool)

(assert (=> d!456540 (= c!251069 ((_ is Nil!16189) lt!531983))))

(assert (=> d!456540 (= (++!4398 lt!531983 lt!531961) lt!532187)))

(declare-fun b!1531071 () Bool)

(assert (=> b!1531071 (= e!978748 lt!531961)))

(declare-fun b!1531072 () Bool)

(assert (=> b!1531072 (= e!978748 (Cons!16189 (h!21590 lt!531983) (++!4398 (t!140336 lt!531983) lt!531961)))))

(declare-fun b!1531074 () Bool)

(assert (=> b!1531074 (= e!978747 (or (not (= lt!531961 Nil!16189)) (= lt!532187 lt!531983)))))

(declare-fun b!1531073 () Bool)

(declare-fun res!687184 () Bool)

(assert (=> b!1531073 (=> (not res!687184) (not e!978747))))

(assert (=> b!1531073 (= res!687184 (= (size!13101 lt!532187) (+ (size!13101 lt!531983) (size!13101 lt!531961))))))

(assert (= (and d!456540 c!251069) b!1531071))

(assert (= (and d!456540 (not c!251069)) b!1531072))

(assert (= (and d!456540 res!687185) b!1531073))

(assert (= (and b!1531073 res!687184) b!1531074))

(declare-fun m!1805773 () Bool)

(assert (=> d!456540 m!1805773))

(assert (=> d!456540 m!1805765))

(declare-fun m!1805775 () Bool)

(assert (=> d!456540 m!1805775))

(declare-fun m!1805777 () Bool)

(assert (=> b!1531072 m!1805777))

(declare-fun m!1805779 () Bool)

(assert (=> b!1531073 m!1805779))

(assert (=> b!1531073 m!1805771))

(declare-fun m!1805781 () Bool)

(assert (=> b!1531073 m!1805781))

(assert (=> b!1530822 d!456540))

(declare-fun call!101392 () Option!2946)

(declare-fun bm!101387 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!285 (LexerInterface!2507 Rule!5510 BalanceConc!10868) Option!2946)

(assert (=> bm!101387 (= call!101392 (maxPrefixOneRuleZipperSequence!285 thiss!13241 (h!21591 rules!1640) lt!531971))))

(declare-fun b!1531091 () Bool)

(declare-fun e!978764 () Bool)

(declare-fun e!978762 () Bool)

(assert (=> b!1531091 (= e!978764 e!978762)))

(declare-fun res!687198 () Bool)

(assert (=> b!1531091 (=> (not res!687198) (not e!978762))))

(declare-fun lt!532207 () Option!2946)

(assert (=> b!1531091 (= res!687198 (= (_1!8638 (get!4757 lt!532207)) (_1!8643 (get!4758 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 lt!531971))))))))

(declare-fun b!1531092 () Bool)

(declare-fun e!978765 () Option!2946)

(declare-fun lt!532203 () Option!2946)

(declare-fun lt!532202 () Option!2946)

(assert (=> b!1531092 (= e!978765 (ite (and ((_ is None!2945) lt!532203) ((_ is None!2945) lt!532202)) None!2945 (ite ((_ is None!2945) lt!532202) lt!532203 (ite ((_ is None!2945) lt!532203) lt!532202 (ite (>= (size!13097 (_1!8638 (v!23004 lt!532203))) (size!13097 (_1!8638 (v!23004 lt!532202)))) lt!532203 lt!532202)))))))

(assert (=> b!1531092 (= lt!532203 call!101392)))

(assert (=> b!1531092 (= lt!532202 (maxPrefixZipperSequence!598 thiss!13241 (t!140337 rules!1640) lt!531971))))

(declare-fun e!978763 () Bool)

(declare-fun b!1531093 () Bool)

(assert (=> b!1531093 (= e!978763 (= (list!6391 (_2!8638 (get!4757 lt!532207))) (_2!8643 (get!4758 (maxPrefix!1215 thiss!13241 rules!1640 (list!6391 lt!531971))))))))

(declare-fun b!1531094 () Bool)

(declare-fun e!978766 () Bool)

(assert (=> b!1531094 (= e!978766 e!978763)))

(declare-fun res!687200 () Bool)

(assert (=> b!1531094 (=> (not res!687200) (not e!978763))))

(assert (=> b!1531094 (= res!687200 (= (_1!8638 (get!4757 lt!532207)) (_1!8643 (get!4758 (maxPrefix!1215 thiss!13241 rules!1640 (list!6391 lt!531971))))))))

(declare-fun b!1531095 () Bool)

(assert (=> b!1531095 (= e!978765 call!101392)))

(declare-fun b!1531096 () Bool)

(declare-fun res!687199 () Bool)

(declare-fun e!978761 () Bool)

(assert (=> b!1531096 (=> (not res!687199) (not e!978761))))

(assert (=> b!1531096 (= res!687199 e!978764)))

(declare-fun res!687203 () Bool)

(assert (=> b!1531096 (=> res!687203 e!978764)))

(assert (=> b!1531096 (= res!687203 (not (isDefined!2367 lt!532207)))))

(declare-fun b!1531097 () Bool)

(assert (=> b!1531097 (= e!978762 (= (list!6391 (_2!8638 (get!4757 lt!532207))) (_2!8643 (get!4758 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 lt!531971))))))))

(declare-fun b!1531098 () Bool)

(assert (=> b!1531098 (= e!978761 e!978766)))

(declare-fun res!687201 () Bool)

(assert (=> b!1531098 (=> res!687201 e!978766)))

(assert (=> b!1531098 (= res!687201 (not (isDefined!2367 lt!532207)))))

(declare-fun d!456542 () Bool)

(assert (=> d!456542 e!978761))

(declare-fun res!687202 () Bool)

(assert (=> d!456542 (=> (not res!687202) (not e!978761))))

(assert (=> d!456542 (= res!687202 (= (isDefined!2367 lt!532207) (isDefined!2368 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 lt!531971)))))))

(assert (=> d!456542 (= lt!532207 e!978765)))

(declare-fun c!251072 () Bool)

(assert (=> d!456542 (= c!251072 (and ((_ is Cons!16190) rules!1640) ((_ is Nil!16190) (t!140337 rules!1640))))))

(declare-fun lt!532208 () Unit!25800)

(declare-fun lt!532205 () Unit!25800)

(assert (=> d!456542 (= lt!532208 lt!532205)))

(declare-fun lt!532206 () List!16256)

(declare-fun lt!532204 () List!16256)

(assert (=> d!456542 (isPrefix!1225 lt!532206 lt!532204)))

(assert (=> d!456542 (= lt!532205 (lemmaIsPrefixRefl!855 lt!532206 lt!532204))))

(assert (=> d!456542 (= lt!532204 (list!6391 lt!531971))))

(assert (=> d!456542 (= lt!532206 (list!6391 lt!531971))))

(assert (=> d!456542 (rulesValidInductive!863 thiss!13241 rules!1640)))

(assert (=> d!456542 (= (maxPrefixZipperSequence!598 thiss!13241 rules!1640 lt!531971) lt!532207)))

(assert (= (and d!456542 c!251072) b!1531095))

(assert (= (and d!456542 (not c!251072)) b!1531092))

(assert (= (or b!1531095 b!1531092) bm!101387))

(assert (= (and d!456542 res!687202) b!1531096))

(assert (= (and b!1531096 (not res!687203)) b!1531091))

(assert (= (and b!1531091 res!687198) b!1531097))

(assert (= (and b!1531096 res!687199) b!1531098))

(assert (= (and b!1531098 (not res!687201)) b!1531094))

(assert (= (and b!1531094 res!687200) b!1531093))

(declare-fun m!1805783 () Bool)

(assert (=> b!1531094 m!1805783))

(assert (=> b!1531094 m!1805269))

(assert (=> b!1531094 m!1805269))

(declare-fun m!1805785 () Bool)

(assert (=> b!1531094 m!1805785))

(assert (=> b!1531094 m!1805785))

(declare-fun m!1805787 () Bool)

(assert (=> b!1531094 m!1805787))

(assert (=> b!1531091 m!1805783))

(assert (=> b!1531091 m!1805269))

(assert (=> b!1531091 m!1805269))

(declare-fun m!1805789 () Bool)

(assert (=> b!1531091 m!1805789))

(assert (=> b!1531091 m!1805789))

(declare-fun m!1805791 () Bool)

(assert (=> b!1531091 m!1805791))

(declare-fun m!1805793 () Bool)

(assert (=> b!1531096 m!1805793))

(assert (=> b!1531098 m!1805793))

(assert (=> b!1531097 m!1805269))

(assert (=> b!1531097 m!1805789))

(assert (=> b!1531097 m!1805269))

(declare-fun m!1805795 () Bool)

(assert (=> b!1531097 m!1805795))

(assert (=> b!1531097 m!1805789))

(assert (=> b!1531097 m!1805791))

(assert (=> b!1531097 m!1805783))

(declare-fun m!1805797 () Bool)

(assert (=> b!1531092 m!1805797))

(assert (=> d!456542 m!1805269))

(assert (=> d!456542 m!1805793))

(declare-fun m!1805799 () Bool)

(assert (=> d!456542 m!1805799))

(declare-fun m!1805801 () Bool)

(assert (=> d!456542 m!1805801))

(assert (=> d!456542 m!1805789))

(declare-fun m!1805803 () Bool)

(assert (=> d!456542 m!1805803))

(assert (=> d!456542 m!1805643))

(assert (=> d!456542 m!1805269))

(assert (=> d!456542 m!1805789))

(declare-fun m!1805805 () Bool)

(assert (=> bm!101387 m!1805805))

(assert (=> b!1531093 m!1805269))

(assert (=> b!1531093 m!1805785))

(assert (=> b!1531093 m!1805787))

(assert (=> b!1531093 m!1805795))

(assert (=> b!1531093 m!1805783))

(assert (=> b!1531093 m!1805269))

(assert (=> b!1531093 m!1805785))

(assert (=> b!1530822 d!456542))

(declare-fun d!456544 () Bool)

(assert (=> d!456544 (= (list!6391 (_2!8638 (v!23004 (_1!8639 lt!531977)))) (list!6393 (c!251011 (_2!8638 (v!23004 (_1!8639 lt!531977))))))))

(declare-fun bs!378520 () Bool)

(assert (= bs!378520 d!456544))

(declare-fun m!1805807 () Bool)

(assert (=> bs!378520 m!1805807))

(assert (=> b!1530822 d!456544))

(declare-fun d!456546 () Bool)

(declare-fun e!978767 () Bool)

(assert (=> d!456546 e!978767))

(declare-fun res!687204 () Bool)

(assert (=> d!456546 (=> res!687204 e!978767)))

(declare-fun lt!532209 () Bool)

(assert (=> d!456546 (= res!687204 (not lt!532209))))

(assert (=> d!456546 (= lt!532209 (= lt!531979 (drop!765 lt!531989 (- (size!13100 lt!531989) (size!13100 lt!531979)))))))

(assert (=> d!456546 (= (isSuffix!311 lt!531979 lt!531989) lt!532209)))

(declare-fun b!1531099 () Bool)

(assert (=> b!1531099 (= e!978767 (>= (size!13100 lt!531989) (size!13100 lt!531979)))))

(assert (= (and d!456546 (not res!687204)) b!1531099))

(declare-fun m!1805809 () Bool)

(assert (=> d!456546 m!1805809))

(assert (=> d!456546 m!1805663))

(declare-fun m!1805811 () Bool)

(assert (=> d!456546 m!1805811))

(assert (=> b!1531099 m!1805809))

(assert (=> b!1531099 m!1805663))

(assert (=> b!1530822 d!456546))

(declare-fun b!1531103 () Bool)

(declare-fun lt!532210 () List!16256)

(declare-fun e!978768 () Bool)

(assert (=> b!1531103 (= e!978768 (or (not (= lt!531979 Nil!16188)) (= lt!532210 lt!531986)))))

(declare-fun b!1531100 () Bool)

(declare-fun e!978769 () List!16256)

(assert (=> b!1531100 (= e!978769 lt!531979)))

(declare-fun d!456548 () Bool)

(assert (=> d!456548 e!978768))

(declare-fun res!687206 () Bool)

(assert (=> d!456548 (=> (not res!687206) (not e!978768))))

(assert (=> d!456548 (= res!687206 (= (content!2332 lt!532210) ((_ map or) (content!2332 lt!531986) (content!2332 lt!531979))))))

(assert (=> d!456548 (= lt!532210 e!978769)))

(declare-fun c!251073 () Bool)

(assert (=> d!456548 (= c!251073 ((_ is Nil!16188) lt!531986))))

(assert (=> d!456548 (= (++!4395 lt!531986 lt!531979) lt!532210)))

(declare-fun b!1531102 () Bool)

(declare-fun res!687205 () Bool)

(assert (=> b!1531102 (=> (not res!687205) (not e!978768))))

(assert (=> b!1531102 (= res!687205 (= (size!13100 lt!532210) (+ (size!13100 lt!531986) (size!13100 lt!531979))))))

(declare-fun b!1531101 () Bool)

(assert (=> b!1531101 (= e!978769 (Cons!16188 (h!21589 lt!531986) (++!4395 (t!140335 lt!531986) lt!531979)))))

(assert (= (and d!456548 c!251073) b!1531100))

(assert (= (and d!456548 (not c!251073)) b!1531101))

(assert (= (and d!456548 res!687206) b!1531102))

(assert (= (and b!1531102 res!687205) b!1531103))

(declare-fun m!1805813 () Bool)

(assert (=> d!456548 m!1805813))

(declare-fun m!1805815 () Bool)

(assert (=> d!456548 m!1805815))

(assert (=> d!456548 m!1805657))

(declare-fun m!1805817 () Bool)

(assert (=> b!1531102 m!1805817))

(assert (=> b!1531102 m!1805727))

(assert (=> b!1531102 m!1805663))

(declare-fun m!1805819 () Bool)

(assert (=> b!1531101 m!1805819))

(assert (=> b!1530822 d!456548))

(declare-fun d!456550 () Bool)

(assert (=> d!456550 (isSuffix!311 lt!531979 (++!4395 lt!531985 lt!531979))))

(declare-fun lt!532213 () Unit!25800)

(declare-fun choose!9212 (List!16256 List!16256) Unit!25800)

(assert (=> d!456550 (= lt!532213 (choose!9212 lt!531985 lt!531979))))

(assert (=> d!456550 (= (lemmaConcatTwoListThenFSndIsSuffix!289 lt!531985 lt!531979) lt!532213)))

(declare-fun bs!378521 () Bool)

(assert (= bs!378521 d!456550))

(assert (=> bs!378521 m!1805237))

(assert (=> bs!378521 m!1805237))

(assert (=> bs!378521 m!1805267))

(declare-fun m!1805821 () Bool)

(assert (=> bs!378521 m!1805821))

(assert (=> b!1530822 d!456550))

(declare-fun b!1531114 () Bool)

(declare-fun res!687216 () Bool)

(declare-fun e!978772 () Bool)

(assert (=> b!1531114 (=> (not res!687216) (not e!978772))))

(declare-fun height!823 (Conc!5463) Int)

(declare-fun ++!4400 (Conc!5463 Conc!5463) Conc!5463)

(assert (=> b!1531114 (= res!687216 (>= (height!823 (++!4400 (c!251011 treated!70) (c!251011 lt!531974))) (max!0 (height!823 (c!251011 treated!70)) (height!823 (c!251011 lt!531974)))))))

(declare-fun b!1531112 () Bool)

(declare-fun res!687217 () Bool)

(assert (=> b!1531112 (=> (not res!687217) (not e!978772))))

(assert (=> b!1531112 (= res!687217 (isBalanced!1621 (++!4400 (c!251011 treated!70) (c!251011 lt!531974))))))

(declare-fun d!456552 () Bool)

(assert (=> d!456552 e!978772))

(declare-fun res!687215 () Bool)

(assert (=> d!456552 (=> (not res!687215) (not e!978772))))

(declare-fun appendAssocInst!377 (Conc!5463 Conc!5463) Bool)

(assert (=> d!456552 (= res!687215 (appendAssocInst!377 (c!251011 treated!70) (c!251011 lt!531974)))))

(declare-fun lt!532216 () BalanceConc!10868)

(assert (=> d!456552 (= lt!532216 (BalanceConc!10869 (++!4400 (c!251011 treated!70) (c!251011 lt!531974))))))

(assert (=> d!456552 (= (++!4397 treated!70 lt!531974) lt!532216)))

(declare-fun b!1531113 () Bool)

(declare-fun res!687218 () Bool)

(assert (=> b!1531113 (=> (not res!687218) (not e!978772))))

(assert (=> b!1531113 (= res!687218 (<= (height!823 (++!4400 (c!251011 treated!70) (c!251011 lt!531974))) (+ (max!0 (height!823 (c!251011 treated!70)) (height!823 (c!251011 lt!531974))) 1)))))

(declare-fun b!1531115 () Bool)

(assert (=> b!1531115 (= e!978772 (= (list!6391 lt!532216) (++!4395 (list!6391 treated!70) (list!6391 lt!531974))))))

(assert (= (and d!456552 res!687215) b!1531112))

(assert (= (and b!1531112 res!687217) b!1531113))

(assert (= (and b!1531113 res!687218) b!1531114))

(assert (= (and b!1531114 res!687216) b!1531115))

(declare-fun m!1805823 () Bool)

(assert (=> b!1531114 m!1805823))

(declare-fun m!1805825 () Bool)

(assert (=> b!1531114 m!1805825))

(declare-fun m!1805827 () Bool)

(assert (=> b!1531114 m!1805827))

(assert (=> b!1531114 m!1805823))

(assert (=> b!1531114 m!1805825))

(declare-fun m!1805829 () Bool)

(assert (=> b!1531114 m!1805829))

(assert (=> b!1531114 m!1805829))

(declare-fun m!1805831 () Bool)

(assert (=> b!1531114 m!1805831))

(assert (=> b!1531112 m!1805829))

(assert (=> b!1531112 m!1805829))

(declare-fun m!1805833 () Bool)

(assert (=> b!1531112 m!1805833))

(declare-fun m!1805835 () Bool)

(assert (=> b!1531115 m!1805835))

(assert (=> b!1531115 m!1805163))

(assert (=> b!1531115 m!1805223))

(assert (=> b!1531115 m!1805163))

(assert (=> b!1531115 m!1805223))

(declare-fun m!1805837 () Bool)

(assert (=> b!1531115 m!1805837))

(assert (=> b!1531113 m!1805823))

(assert (=> b!1531113 m!1805825))

(assert (=> b!1531113 m!1805827))

(assert (=> b!1531113 m!1805823))

(assert (=> b!1531113 m!1805825))

(assert (=> b!1531113 m!1805829))

(assert (=> b!1531113 m!1805829))

(assert (=> b!1531113 m!1805831))

(declare-fun m!1805839 () Bool)

(assert (=> d!456552 m!1805839))

(assert (=> d!456552 m!1805829))

(assert (=> b!1530822 d!456552))

(declare-fun d!456554 () Bool)

(assert (=> d!456554 (= (list!6391 (_2!8640 lt!531963)) (list!6393 (c!251011 (_2!8640 lt!531963))))))

(declare-fun bs!378522 () Bool)

(assert (= bs!378522 d!456554))

(declare-fun m!1805841 () Bool)

(assert (=> bs!378522 m!1805841))

(assert (=> b!1530822 d!456554))

(declare-fun call!101393 () Option!2946)

(declare-fun bm!101388 () Bool)

(assert (=> bm!101388 (= call!101393 (maxPrefixOneRuleZipperSequence!285 thiss!13241 (h!21591 rules!1640) input!1102))))

(declare-fun b!1531116 () Bool)

(declare-fun e!978776 () Bool)

(declare-fun e!978774 () Bool)

(assert (=> b!1531116 (= e!978776 e!978774)))

(declare-fun res!687219 () Bool)

(assert (=> b!1531116 (=> (not res!687219) (not e!978774))))

(declare-fun lt!532222 () Option!2946)

(assert (=> b!1531116 (= res!687219 (= (_1!8638 (get!4757 lt!532222)) (_1!8643 (get!4758 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1531117 () Bool)

(declare-fun e!978777 () Option!2946)

(declare-fun lt!532218 () Option!2946)

(declare-fun lt!532217 () Option!2946)

(assert (=> b!1531117 (= e!978777 (ite (and ((_ is None!2945) lt!532218) ((_ is None!2945) lt!532217)) None!2945 (ite ((_ is None!2945) lt!532217) lt!532218 (ite ((_ is None!2945) lt!532218) lt!532217 (ite (>= (size!13097 (_1!8638 (v!23004 lt!532218))) (size!13097 (_1!8638 (v!23004 lt!532217)))) lt!532218 lt!532217)))))))

(assert (=> b!1531117 (= lt!532218 call!101393)))

(assert (=> b!1531117 (= lt!532217 (maxPrefixZipperSequence!598 thiss!13241 (t!140337 rules!1640) input!1102))))

(declare-fun b!1531118 () Bool)

(declare-fun e!978775 () Bool)

(assert (=> b!1531118 (= e!978775 (= (list!6391 (_2!8638 (get!4757 lt!532222))) (_2!8643 (get!4758 (maxPrefix!1215 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1531119 () Bool)

(declare-fun e!978778 () Bool)

(assert (=> b!1531119 (= e!978778 e!978775)))

(declare-fun res!687221 () Bool)

(assert (=> b!1531119 (=> (not res!687221) (not e!978775))))

(assert (=> b!1531119 (= res!687221 (= (_1!8638 (get!4757 lt!532222)) (_1!8643 (get!4758 (maxPrefix!1215 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1531120 () Bool)

(assert (=> b!1531120 (= e!978777 call!101393)))

(declare-fun b!1531121 () Bool)

(declare-fun res!687220 () Bool)

(declare-fun e!978773 () Bool)

(assert (=> b!1531121 (=> (not res!687220) (not e!978773))))

(assert (=> b!1531121 (= res!687220 e!978776)))

(declare-fun res!687224 () Bool)

(assert (=> b!1531121 (=> res!687224 e!978776)))

(assert (=> b!1531121 (= res!687224 (not (isDefined!2367 lt!532222)))))

(declare-fun b!1531122 () Bool)

(assert (=> b!1531122 (= e!978774 (= (list!6391 (_2!8638 (get!4757 lt!532222))) (_2!8643 (get!4758 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 input!1102))))))))

(declare-fun b!1531123 () Bool)

(assert (=> b!1531123 (= e!978773 e!978778)))

(declare-fun res!687222 () Bool)

(assert (=> b!1531123 (=> res!687222 e!978778)))

(assert (=> b!1531123 (= res!687222 (not (isDefined!2367 lt!532222)))))

(declare-fun d!456556 () Bool)

(assert (=> d!456556 e!978773))

(declare-fun res!687223 () Bool)

(assert (=> d!456556 (=> (not res!687223) (not e!978773))))

(assert (=> d!456556 (= res!687223 (= (isDefined!2367 lt!532222) (isDefined!2368 (maxPrefixZipper!266 thiss!13241 rules!1640 (list!6391 input!1102)))))))

(assert (=> d!456556 (= lt!532222 e!978777)))

(declare-fun c!251077 () Bool)

(assert (=> d!456556 (= c!251077 (and ((_ is Cons!16190) rules!1640) ((_ is Nil!16190) (t!140337 rules!1640))))))

(declare-fun lt!532223 () Unit!25800)

(declare-fun lt!532220 () Unit!25800)

(assert (=> d!456556 (= lt!532223 lt!532220)))

(declare-fun lt!532221 () List!16256)

(declare-fun lt!532219 () List!16256)

(assert (=> d!456556 (isPrefix!1225 lt!532221 lt!532219)))

(assert (=> d!456556 (= lt!532220 (lemmaIsPrefixRefl!855 lt!532221 lt!532219))))

(assert (=> d!456556 (= lt!532219 (list!6391 input!1102))))

(assert (=> d!456556 (= lt!532221 (list!6391 input!1102))))

(assert (=> d!456556 (rulesValidInductive!863 thiss!13241 rules!1640)))

(assert (=> d!456556 (= (maxPrefixZipperSequence!598 thiss!13241 rules!1640 input!1102) lt!532222)))

(assert (= (and d!456556 c!251077) b!1531120))

(assert (= (and d!456556 (not c!251077)) b!1531117))

(assert (= (or b!1531120 b!1531117) bm!101388))

(assert (= (and d!456556 res!687223) b!1531121))

(assert (= (and b!1531121 (not res!687224)) b!1531116))

(assert (= (and b!1531116 res!687219) b!1531122))

(assert (= (and b!1531121 res!687220) b!1531123))

(assert (= (and b!1531123 (not res!687222)) b!1531119))

(assert (= (and b!1531119 res!687221) b!1531118))

(declare-fun m!1805843 () Bool)

(assert (=> b!1531119 m!1805843))

(assert (=> b!1531119 m!1805161))

(assert (=> b!1531119 m!1805161))

(assert (=> b!1531119 m!1805637))

(assert (=> b!1531119 m!1805637))

(assert (=> b!1531119 m!1805639))

(assert (=> b!1531116 m!1805843))

(assert (=> b!1531116 m!1805161))

(assert (=> b!1531116 m!1805161))

(assert (=> b!1531116 m!1805623))

(assert (=> b!1531116 m!1805623))

(assert (=> b!1531116 m!1805625))

(declare-fun m!1805845 () Bool)

(assert (=> b!1531121 m!1805845))

(assert (=> b!1531123 m!1805845))

(assert (=> b!1531122 m!1805161))

(assert (=> b!1531122 m!1805623))

(assert (=> b!1531122 m!1805161))

(declare-fun m!1805847 () Bool)

(assert (=> b!1531122 m!1805847))

(assert (=> b!1531122 m!1805623))

(assert (=> b!1531122 m!1805625))

(assert (=> b!1531122 m!1805843))

(declare-fun m!1805849 () Bool)

(assert (=> b!1531117 m!1805849))

(assert (=> d!456556 m!1805161))

(assert (=> d!456556 m!1805845))

(declare-fun m!1805851 () Bool)

(assert (=> d!456556 m!1805851))

(declare-fun m!1805853 () Bool)

(assert (=> d!456556 m!1805853))

(assert (=> d!456556 m!1805623))

(assert (=> d!456556 m!1805647))

(assert (=> d!456556 m!1805643))

(assert (=> d!456556 m!1805161))

(assert (=> d!456556 m!1805623))

(declare-fun m!1805855 () Bool)

(assert (=> bm!101388 m!1805855))

(assert (=> b!1531118 m!1805161))

(assert (=> b!1531118 m!1805637))

(assert (=> b!1531118 m!1805639))

(assert (=> b!1531118 m!1805847))

(assert (=> b!1531118 m!1805843))

(assert (=> b!1531118 m!1805161))

(assert (=> b!1531118 m!1805637))

(assert (=> b!1530822 d!456556))

(declare-fun d!456558 () Bool)

(assert (=> d!456558 (= (list!6391 lt!531974) (list!6393 (c!251011 lt!531974)))))

(declare-fun bs!378523 () Bool)

(assert (= bs!378523 d!456558))

(declare-fun m!1805857 () Bool)

(assert (=> bs!378523 m!1805857))

(assert (=> b!1530822 d!456558))

(declare-fun b!1531124 () Bool)

(declare-fun e!978782 () tuple2!15150)

(declare-fun lt!532224 () tuple2!15150)

(declare-fun lt!532226 () Option!2946)

(assert (=> b!1531124 (= e!978782 (tuple2!15151 (prepend!481 (_1!8640 lt!532224) (_1!8638 (v!23004 lt!532226))) (_2!8640 lt!532224)))))

(assert (=> b!1531124 (= lt!532224 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532226))))))

(declare-fun b!1531125 () Bool)

(assert (=> b!1531125 (= e!978782 (tuple2!15151 (BalanceConc!10871 Empty!5464) (_2!8638 (v!23004 (_1!8639 lt!531977)))))))

(declare-fun b!1531127 () Bool)

(declare-fun e!978780 () Bool)

(declare-fun e!978781 () Bool)

(assert (=> b!1531127 (= e!978780 e!978781)))

(declare-fun res!687226 () Bool)

(declare-fun lt!532225 () tuple2!15150)

(assert (=> b!1531127 (= res!687226 (< (size!13098 (_2!8640 lt!532225)) (size!13098 (_2!8638 (v!23004 (_1!8639 lt!531977))))))))

(assert (=> b!1531127 (=> (not res!687226) (not e!978781))))

(declare-fun b!1531128 () Bool)

(assert (=> b!1531128 (= e!978781 (not (isEmpty!9982 (_1!8640 lt!532225))))))

(declare-fun d!456560 () Bool)

(declare-fun e!978779 () Bool)

(assert (=> d!456560 e!978779))

(declare-fun res!687227 () Bool)

(assert (=> d!456560 (=> (not res!687227) (not e!978779))))

(assert (=> d!456560 (= res!687227 e!978780)))

(declare-fun c!251078 () Bool)

(assert (=> d!456560 (= c!251078 (> (size!13099 (_1!8640 lt!532225)) 0))))

(assert (=> d!456560 (= lt!532225 e!978782)))

(declare-fun c!251079 () Bool)

(assert (=> d!456560 (= c!251079 ((_ is Some!2945) lt!532226))))

(assert (=> d!456560 (= lt!532226 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 (_2!8638 (v!23004 (_1!8639 lt!531977)))))))

(assert (=> d!456560 (= (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 (_1!8639 lt!531977)))) lt!532225)))

(declare-fun b!1531126 () Bool)

(assert (=> b!1531126 (= e!978779 (= (list!6391 (_2!8640 lt!532225)) (_2!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 (_2!8638 (v!23004 (_1!8639 lt!531977))))))))))

(declare-fun b!1531129 () Bool)

(assert (=> b!1531129 (= e!978780 (= (list!6391 (_2!8640 lt!532225)) (list!6391 (_2!8638 (v!23004 (_1!8639 lt!531977))))))))

(declare-fun b!1531130 () Bool)

(declare-fun res!687225 () Bool)

(assert (=> b!1531130 (=> (not res!687225) (not e!978779))))

(assert (=> b!1531130 (= res!687225 (= (list!6392 (_1!8640 lt!532225)) (_1!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 (_2!8638 (v!23004 (_1!8639 lt!531977))))))))))

(assert (= (and d!456560 c!251079) b!1531124))

(assert (= (and d!456560 (not c!251079)) b!1531125))

(assert (= (and d!456560 c!251078) b!1531127))

(assert (= (and d!456560 (not c!251078)) b!1531129))

(assert (= (and b!1531127 res!687226) b!1531128))

(assert (= (and d!456560 res!687227) b!1531130))

(assert (= (and b!1531130 res!687225) b!1531126))

(declare-fun m!1805859 () Bool)

(assert (=> b!1531130 m!1805859))

(assert (=> b!1531130 m!1805255))

(assert (=> b!1531130 m!1805255))

(declare-fun m!1805861 () Bool)

(assert (=> b!1531130 m!1805861))

(declare-fun m!1805863 () Bool)

(assert (=> b!1531126 m!1805863))

(assert (=> b!1531126 m!1805255))

(assert (=> b!1531126 m!1805255))

(assert (=> b!1531126 m!1805861))

(declare-fun m!1805865 () Bool)

(assert (=> b!1531124 m!1805865))

(declare-fun m!1805867 () Bool)

(assert (=> b!1531124 m!1805867))

(declare-fun m!1805869 () Bool)

(assert (=> d!456560 m!1805869))

(assert (=> d!456560 m!1805505))

(declare-fun m!1805871 () Bool)

(assert (=> b!1531127 m!1805871))

(declare-fun m!1805873 () Bool)

(assert (=> b!1531127 m!1805873))

(assert (=> b!1531129 m!1805863))

(assert (=> b!1531129 m!1805255))

(declare-fun m!1805875 () Bool)

(assert (=> b!1531128 m!1805875))

(assert (=> b!1530822 d!456560))

(declare-fun d!456562 () Bool)

(declare-fun e!978783 () Bool)

(assert (=> d!456562 e!978783))

(declare-fun res!687229 () Bool)

(assert (=> d!456562 (=> (not res!687229) (not e!978783))))

(declare-fun lt!532227 () List!16257)

(assert (=> d!456562 (= res!687229 (= (content!2333 lt!532227) ((_ map or) (content!2333 (++!4398 lt!531972 lt!531983)) (content!2333 lt!531961))))))

(declare-fun e!978784 () List!16257)

(assert (=> d!456562 (= lt!532227 e!978784)))

(declare-fun c!251080 () Bool)

(assert (=> d!456562 (= c!251080 ((_ is Nil!16189) (++!4398 lt!531972 lt!531983)))))

(assert (=> d!456562 (= (++!4398 (++!4398 lt!531972 lt!531983) lt!531961) lt!532227)))

(declare-fun b!1531131 () Bool)

(assert (=> b!1531131 (= e!978784 lt!531961)))

(declare-fun b!1531132 () Bool)

(assert (=> b!1531132 (= e!978784 (Cons!16189 (h!21590 (++!4398 lt!531972 lt!531983)) (++!4398 (t!140336 (++!4398 lt!531972 lt!531983)) lt!531961)))))

(declare-fun b!1531134 () Bool)

(assert (=> b!1531134 (= e!978783 (or (not (= lt!531961 Nil!16189)) (= lt!532227 (++!4398 lt!531972 lt!531983))))))

(declare-fun b!1531133 () Bool)

(declare-fun res!687228 () Bool)

(assert (=> b!1531133 (=> (not res!687228) (not e!978783))))

(assert (=> b!1531133 (= res!687228 (= (size!13101 lt!532227) (+ (size!13101 (++!4398 lt!531972 lt!531983)) (size!13101 lt!531961))))))

(assert (= (and d!456562 c!251080) b!1531131))

(assert (= (and d!456562 (not c!251080)) b!1531132))

(assert (= (and d!456562 res!687229) b!1531133))

(assert (= (and b!1531133 res!687228) b!1531134))

(declare-fun m!1805877 () Bool)

(assert (=> d!456562 m!1805877))

(assert (=> d!456562 m!1805241))

(declare-fun m!1805879 () Bool)

(assert (=> d!456562 m!1805879))

(assert (=> d!456562 m!1805775))

(declare-fun m!1805881 () Bool)

(assert (=> b!1531132 m!1805881))

(declare-fun m!1805883 () Bool)

(assert (=> b!1531133 m!1805883))

(assert (=> b!1531133 m!1805241))

(declare-fun m!1805885 () Bool)

(assert (=> b!1531133 m!1805885))

(assert (=> b!1531133 m!1805781))

(assert (=> b!1530822 d!456562))

(declare-fun e!978785 () Bool)

(declare-fun lt!532228 () List!16256)

(declare-fun b!1531138 () Bool)

(assert (=> b!1531138 (= e!978785 (or (not (= lt!531979 Nil!16188)) (= lt!532228 lt!531959)))))

(declare-fun b!1531135 () Bool)

(declare-fun e!978786 () List!16256)

(assert (=> b!1531135 (= e!978786 lt!531979)))

(declare-fun d!456564 () Bool)

(assert (=> d!456564 e!978785))

(declare-fun res!687231 () Bool)

(assert (=> d!456564 (=> (not res!687231) (not e!978785))))

(assert (=> d!456564 (= res!687231 (= (content!2332 lt!532228) ((_ map or) (content!2332 lt!531959) (content!2332 lt!531979))))))

(assert (=> d!456564 (= lt!532228 e!978786)))

(declare-fun c!251081 () Bool)

(assert (=> d!456564 (= c!251081 ((_ is Nil!16188) lt!531959))))

(assert (=> d!456564 (= (++!4395 lt!531959 lt!531979) lt!532228)))

(declare-fun b!1531137 () Bool)

(declare-fun res!687230 () Bool)

(assert (=> b!1531137 (=> (not res!687230) (not e!978785))))

(assert (=> b!1531137 (= res!687230 (= (size!13100 lt!532228) (+ (size!13100 lt!531959) (size!13100 lt!531979))))))

(declare-fun b!1531136 () Bool)

(assert (=> b!1531136 (= e!978786 (Cons!16188 (h!21589 lt!531959) (++!4395 (t!140335 lt!531959) lt!531979)))))

(assert (= (and d!456564 c!251081) b!1531135))

(assert (= (and d!456564 (not c!251081)) b!1531136))

(assert (= (and d!456564 res!687231) b!1531137))

(assert (= (and b!1531137 res!687230) b!1531138))

(declare-fun m!1805887 () Bool)

(assert (=> d!456564 m!1805887))

(assert (=> d!456564 m!1805691))

(assert (=> d!456564 m!1805657))

(declare-fun m!1805889 () Bool)

(assert (=> b!1531137 m!1805889))

(assert (=> b!1531137 m!1805695))

(assert (=> b!1531137 m!1805663))

(declare-fun m!1805891 () Bool)

(assert (=> b!1531136 m!1805891))

(assert (=> b!1530822 d!456564))

(declare-fun d!456566 () Bool)

(assert (=> d!456566 (= (list!6392 (_1!8640 lt!531963)) (list!6394 (c!251012 (_1!8640 lt!531963))))))

(declare-fun bs!378524 () Bool)

(assert (= bs!378524 d!456566))

(declare-fun m!1805893 () Bool)

(assert (=> bs!378524 m!1805893))

(assert (=> b!1530822 d!456566))

(declare-fun d!456568 () Bool)

(declare-fun e!978787 () Bool)

(assert (=> d!456568 e!978787))

(declare-fun res!687232 () Bool)

(assert (=> d!456568 (=> res!687232 e!978787)))

(declare-fun lt!532229 () Bool)

(assert (=> d!456568 (= res!687232 (not lt!532229))))

(assert (=> d!456568 (= lt!532229 (= lt!531990 (drop!765 lt!531989 (- (size!13100 lt!531989) (size!13100 lt!531990)))))))

(assert (=> d!456568 (= (isSuffix!311 lt!531990 lt!531989) lt!532229)))

(declare-fun b!1531139 () Bool)

(assert (=> b!1531139 (= e!978787 (>= (size!13100 lt!531989) (size!13100 lt!531990)))))

(assert (= (and d!456568 (not res!687232)) b!1531139))

(assert (=> d!456568 m!1805809))

(assert (=> d!456568 m!1805577))

(declare-fun m!1805895 () Bool)

(assert (=> d!456568 m!1805895))

(assert (=> b!1531139 m!1805809))

(assert (=> b!1531139 m!1805577))

(assert (=> b!1530785 d!456568))

(declare-fun d!456570 () Bool)

(declare-fun e!978788 () Bool)

(assert (=> d!456570 e!978788))

(declare-fun res!687233 () Bool)

(assert (=> d!456570 (=> res!687233 e!978788)))

(declare-fun lt!532230 () Bool)

(assert (=> d!456570 (= res!687233 (not lt!532230))))

(assert (=> d!456570 (= lt!532230 (= lt!531990 (drop!765 lt!531962 (- (size!13100 lt!531962) (size!13100 lt!531990)))))))

(assert (=> d!456570 (= (isSuffix!311 lt!531990 lt!531962) lt!532230)))

(declare-fun b!1531140 () Bool)

(assert (=> b!1531140 (= e!978788 (>= (size!13100 lt!531962) (size!13100 lt!531990)))))

(assert (= (and d!456570 (not res!687233)) b!1531140))

(declare-fun m!1805897 () Bool)

(assert (=> d!456570 m!1805897))

(assert (=> d!456570 m!1805577))

(declare-fun m!1805899 () Bool)

(assert (=> d!456570 m!1805899))

(assert (=> b!1531140 m!1805897))

(assert (=> b!1531140 m!1805577))

(assert (=> b!1530785 d!456570))

(declare-fun d!456572 () Bool)

(assert (=> d!456572 (isSuffix!311 lt!531990 (++!4395 lt!531954 lt!531990))))

(declare-fun lt!532231 () Unit!25800)

(assert (=> d!456572 (= lt!532231 (choose!9212 lt!531954 lt!531990))))

(assert (=> d!456572 (= (lemmaConcatTwoListThenFSndIsSuffix!289 lt!531954 lt!531990) lt!532231)))

(declare-fun bs!378525 () Bool)

(assert (= bs!378525 d!456572))

(assert (=> bs!378525 m!1805157))

(assert (=> bs!378525 m!1805157))

(declare-fun m!1805901 () Bool)

(assert (=> bs!378525 m!1805901))

(declare-fun m!1805903 () Bool)

(assert (=> bs!378525 m!1805903))

(assert (=> b!1530785 d!456572))

(declare-fun d!456574 () Bool)

(assert (=> d!456574 (= (isEmpty!9981 rules!1640) ((_ is Nil!16190) rules!1640))))

(assert (=> b!1530784 d!456574))

(declare-fun d!456576 () Bool)

(assert (=> d!456576 (= (valid!1233 (_4!358 lt!531970)) (validCacheMapFurthestNullable!54 (cache!1841 (_4!358 lt!531970)) (totalInput!2329 (_4!358 lt!531970))))))

(declare-fun bs!378526 () Bool)

(assert (= bs!378526 d!456576))

(declare-fun m!1805905 () Bool)

(assert (=> bs!378526 m!1805905))

(assert (=> b!1530804 d!456576))

(declare-fun d!456578 () Bool)

(declare-fun e!978789 () Bool)

(assert (=> d!456578 e!978789))

(declare-fun res!687234 () Bool)

(assert (=> d!456578 (=> (not res!687234) (not e!978789))))

(assert (=> d!456578 (= res!687234 (isBalanced!1622 (prepend!482 (c!251012 (_1!8640 lt!531969)) (_1!8638 (v!23004 lt!531987)))))))

(declare-fun lt!532232 () BalanceConc!10870)

(assert (=> d!456578 (= lt!532232 (BalanceConc!10871 (prepend!482 (c!251012 (_1!8640 lt!531969)) (_1!8638 (v!23004 lt!531987)))))))

(assert (=> d!456578 (= (prepend!481 (_1!8640 lt!531969) (_1!8638 (v!23004 lt!531987))) lt!532232)))

(declare-fun b!1531141 () Bool)

(assert (=> b!1531141 (= e!978789 (= (list!6392 lt!532232) (Cons!16189 (_1!8638 (v!23004 lt!531987)) (list!6392 (_1!8640 lt!531969)))))))

(assert (= (and d!456578 res!687234) b!1531141))

(declare-fun m!1805907 () Bool)

(assert (=> d!456578 m!1805907))

(assert (=> d!456578 m!1805907))

(declare-fun m!1805909 () Bool)

(assert (=> d!456578 m!1805909))

(declare-fun m!1805911 () Bool)

(assert (=> b!1531141 m!1805911))

(declare-fun m!1805913 () Bool)

(assert (=> b!1531141 m!1805913))

(assert (=> b!1530819 d!456578))

(declare-fun b!1531142 () Bool)

(declare-fun e!978793 () tuple2!15150)

(declare-fun lt!532233 () tuple2!15150)

(declare-fun lt!532235 () Option!2946)

(assert (=> b!1531142 (= e!978793 (tuple2!15151 (prepend!481 (_1!8640 lt!532233) (_1!8638 (v!23004 lt!532235))) (_2!8640 lt!532233)))))

(assert (=> b!1531142 (= lt!532233 (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!532235))))))

(declare-fun b!1531143 () Bool)

(assert (=> b!1531143 (= e!978793 (tuple2!15151 (BalanceConc!10871 Empty!5464) (_2!8638 (v!23004 lt!531987))))))

(declare-fun b!1531145 () Bool)

(declare-fun e!978791 () Bool)

(declare-fun e!978792 () Bool)

(assert (=> b!1531145 (= e!978791 e!978792)))

(declare-fun res!687236 () Bool)

(declare-fun lt!532234 () tuple2!15150)

(assert (=> b!1531145 (= res!687236 (< (size!13098 (_2!8640 lt!532234)) (size!13098 (_2!8638 (v!23004 lt!531987)))))))

(assert (=> b!1531145 (=> (not res!687236) (not e!978792))))

(declare-fun b!1531146 () Bool)

(assert (=> b!1531146 (= e!978792 (not (isEmpty!9982 (_1!8640 lt!532234))))))

(declare-fun d!456580 () Bool)

(declare-fun e!978790 () Bool)

(assert (=> d!456580 e!978790))

(declare-fun res!687237 () Bool)

(assert (=> d!456580 (=> (not res!687237) (not e!978790))))

(assert (=> d!456580 (= res!687237 e!978791)))

(declare-fun c!251082 () Bool)

(assert (=> d!456580 (= c!251082 (> (size!13099 (_1!8640 lt!532234)) 0))))

(assert (=> d!456580 (= lt!532234 e!978793)))

(declare-fun c!251083 () Bool)

(assert (=> d!456580 (= c!251083 ((_ is Some!2945) lt!532235))))

(assert (=> d!456580 (= lt!532235 (maxPrefixZipperSequence!598 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!531987))))))

(assert (=> d!456580 (= (lexRec!341 thiss!13241 rules!1640 (_2!8638 (v!23004 lt!531987))) lt!532234)))

(declare-fun b!1531144 () Bool)

(assert (=> b!1531144 (= e!978790 (= (list!6391 (_2!8640 lt!532234)) (_2!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 (_2!8638 (v!23004 lt!531987)))))))))

(declare-fun b!1531147 () Bool)

(assert (=> b!1531147 (= e!978791 (= (list!6391 (_2!8640 lt!532234)) (list!6391 (_2!8638 (v!23004 lt!531987)))))))

(declare-fun b!1531148 () Bool)

(declare-fun res!687235 () Bool)

(assert (=> b!1531148 (=> (not res!687235) (not e!978790))))

(assert (=> b!1531148 (= res!687235 (= (list!6392 (_1!8640 lt!532234)) (_1!8642 (lexList!755 thiss!13241 rules!1640 (list!6391 (_2!8638 (v!23004 lt!531987)))))))))

(assert (= (and d!456580 c!251083) b!1531142))

(assert (= (and d!456580 (not c!251083)) b!1531143))

(assert (= (and d!456580 c!251082) b!1531145))

(assert (= (and d!456580 (not c!251082)) b!1531147))

(assert (= (and b!1531145 res!687236) b!1531146))

(assert (= (and d!456580 res!687237) b!1531148))

(assert (= (and b!1531148 res!687235) b!1531144))

(declare-fun m!1805915 () Bool)

(assert (=> b!1531148 m!1805915))

(declare-fun m!1805917 () Bool)

(assert (=> b!1531148 m!1805917))

(assert (=> b!1531148 m!1805917))

(declare-fun m!1805919 () Bool)

(assert (=> b!1531148 m!1805919))

(declare-fun m!1805921 () Bool)

(assert (=> b!1531144 m!1805921))

(assert (=> b!1531144 m!1805917))

(assert (=> b!1531144 m!1805917))

(assert (=> b!1531144 m!1805919))

(declare-fun m!1805923 () Bool)

(assert (=> b!1531142 m!1805923))

(declare-fun m!1805925 () Bool)

(assert (=> b!1531142 m!1805925))

(declare-fun m!1805927 () Bool)

(assert (=> d!456580 m!1805927))

(declare-fun m!1805929 () Bool)

(assert (=> d!456580 m!1805929))

(declare-fun m!1805931 () Bool)

(assert (=> b!1531145 m!1805931))

(declare-fun m!1805933 () Bool)

(assert (=> b!1531145 m!1805933))

(assert (=> b!1531147 m!1805921))

(assert (=> b!1531147 m!1805917))

(declare-fun m!1805935 () Bool)

(assert (=> b!1531146 m!1805935))

(assert (=> b!1530819 d!456580))

(declare-fun d!456582 () Bool)

(assert (=> d!456582 (= (array_inv!1706 (_keys!1810 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) (bvsge (size!13093 (_keys!1810 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1530820 d!456582))

(declare-fun d!456584 () Bool)

(assert (=> d!456584 (= (array_inv!1709 (_values!1795 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) (bvsge (size!13095 (_values!1795 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1530820 d!456584))

(declare-fun b!1531159 () Bool)

(declare-fun e!978802 () Bool)

(declare-fun tp!439908 () Bool)

(assert (=> b!1531159 (= e!978802 tp!439908)))

(declare-fun setIsEmpty!9762 () Bool)

(declare-fun setRes!9762 () Bool)

(assert (=> setIsEmpty!9762 setRes!9762))

(declare-fun mapIsEmpty!7211 () Bool)

(declare-fun mapRes!7211 () Bool)

(assert (=> mapIsEmpty!7211 mapRes!7211))

(declare-fun b!1531160 () Bool)

(declare-fun e!978803 () Bool)

(declare-fun tp!439912 () Bool)

(assert (=> b!1531160 (= e!978803 tp!439912)))

(declare-fun setNonEmpty!9762 () Bool)

(declare-fun tp!439913 () Bool)

(declare-fun setRes!9763 () Bool)

(declare-fun setElem!9763 () Context!1382)

(declare-fun inv!21455 (Context!1382) Bool)

(assert (=> setNonEmpty!9762 (= setRes!9763 (and tp!439913 (inv!21455 setElem!9763) e!978803))))

(declare-fun mapValue!7211 () List!16253)

(declare-fun setRest!9763 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9762 (= (_1!8634 (_1!8635 (h!21586 mapValue!7211))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9763 true) setRest!9763))))

(declare-fun condMapEmpty!7211 () Bool)

(declare-fun mapDefault!7211 () List!16253)

(assert (=> mapNonEmpty!7208 (= condMapEmpty!7211 (= mapRest!7207 ((as const (Array (_ BitVec 32) List!16253)) mapDefault!7211)))))

(declare-fun e!978805 () Bool)

(assert (=> mapNonEmpty!7208 (= tp!439871 (and e!978805 mapRes!7211))))

(declare-fun mapNonEmpty!7211 () Bool)

(declare-fun tp!439910 () Bool)

(declare-fun e!978804 () Bool)

(assert (=> mapNonEmpty!7211 (= mapRes!7211 (and tp!439910 e!978804))))

(declare-fun mapKey!7211 () (_ BitVec 32))

(declare-fun mapRest!7211 () (Array (_ BitVec 32) List!16253))

(assert (=> mapNonEmpty!7211 (= mapRest!7207 (store mapRest!7211 mapKey!7211 mapValue!7211))))

(declare-fun b!1531161 () Bool)

(declare-fun tp!439909 () Bool)

(assert (=> b!1531161 (= e!978805 (and setRes!9762 tp!439909))))

(declare-fun condSetEmpty!9763 () Bool)

(assert (=> b!1531161 (= condSetEmpty!9763 (= (_1!8634 (_1!8635 (h!21586 mapDefault!7211))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun setIsEmpty!9763 () Bool)

(assert (=> setIsEmpty!9763 setRes!9763))

(declare-fun b!1531162 () Bool)

(declare-fun tp!439907 () Bool)

(assert (=> b!1531162 (= e!978804 (and setRes!9763 tp!439907))))

(declare-fun condSetEmpty!9762 () Bool)

(assert (=> b!1531162 (= condSetEmpty!9762 (= (_1!8634 (_1!8635 (h!21586 mapValue!7211))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun setElem!9762 () Context!1382)

(declare-fun tp!439911 () Bool)

(declare-fun setNonEmpty!9763 () Bool)

(assert (=> setNonEmpty!9763 (= setRes!9762 (and tp!439911 (inv!21455 setElem!9762) e!978802))))

(declare-fun setRest!9762 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9763 (= (_1!8634 (_1!8635 (h!21586 mapDefault!7211))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9762 true) setRest!9762))))

(assert (= (and mapNonEmpty!7208 condMapEmpty!7211) mapIsEmpty!7211))

(assert (= (and mapNonEmpty!7208 (not condMapEmpty!7211)) mapNonEmpty!7211))

(assert (= (and b!1531162 condSetEmpty!9762) setIsEmpty!9763))

(assert (= (and b!1531162 (not condSetEmpty!9762)) setNonEmpty!9762))

(assert (= setNonEmpty!9762 b!1531160))

(assert (= (and mapNonEmpty!7211 ((_ is Cons!16185) mapValue!7211)) b!1531162))

(assert (= (and b!1531161 condSetEmpty!9763) setIsEmpty!9762))

(assert (= (and b!1531161 (not condSetEmpty!9763)) setNonEmpty!9763))

(assert (= setNonEmpty!9763 b!1531159))

(assert (= (and mapNonEmpty!7208 ((_ is Cons!16185) mapDefault!7211)) b!1531161))

(declare-fun m!1805937 () Bool)

(assert (=> setNonEmpty!9762 m!1805937))

(declare-fun m!1805939 () Bool)

(assert (=> mapNonEmpty!7211 m!1805939))

(declare-fun m!1805941 () Bool)

(assert (=> setNonEmpty!9763 m!1805941))

(declare-fun e!978811 () Bool)

(assert (=> mapNonEmpty!7208 (= tp!439861 e!978811)))

(declare-fun setIsEmpty!9766 () Bool)

(declare-fun setRes!9766 () Bool)

(assert (=> setIsEmpty!9766 setRes!9766))

(declare-fun b!1531169 () Bool)

(declare-fun tp!439920 () Bool)

(assert (=> b!1531169 (= e!978811 (and setRes!9766 tp!439920))))

(declare-fun condSetEmpty!9766 () Bool)

(assert (=> b!1531169 (= condSetEmpty!9766 (= (_1!8634 (_1!8635 (h!21586 mapValue!7206))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun b!1531170 () Bool)

(declare-fun e!978810 () Bool)

(declare-fun tp!439922 () Bool)

(assert (=> b!1531170 (= e!978810 tp!439922)))

(declare-fun setElem!9766 () Context!1382)

(declare-fun tp!439921 () Bool)

(declare-fun setNonEmpty!9766 () Bool)

(assert (=> setNonEmpty!9766 (= setRes!9766 (and tp!439921 (inv!21455 setElem!9766) e!978810))))

(declare-fun setRest!9766 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9766 (= (_1!8634 (_1!8635 (h!21586 mapValue!7206))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9766 true) setRest!9766))))

(assert (= (and b!1531169 condSetEmpty!9766) setIsEmpty!9766))

(assert (= (and b!1531169 (not condSetEmpty!9766)) setNonEmpty!9766))

(assert (= setNonEmpty!9766 b!1531170))

(assert (= (and mapNonEmpty!7208 ((_ is Cons!16185) mapValue!7206)) b!1531169))

(declare-fun m!1805943 () Bool)

(assert (=> setNonEmpty!9766 m!1805943))

(declare-fun setIsEmpty!9769 () Bool)

(declare-fun setRes!9769 () Bool)

(assert (=> setIsEmpty!9769 setRes!9769))

(declare-fun tp!439935 () Bool)

(declare-fun e!978819 () Bool)

(declare-fun e!978820 () Bool)

(declare-fun tp_is_empty!7027 () Bool)

(declare-fun tp!439937 () Bool)

(declare-fun b!1531179 () Bool)

(assert (=> b!1531179 (= e!978819 (and tp!439937 (inv!21455 (_2!8632 (_1!8633 (h!21585 mapDefault!7208)))) e!978820 tp_is_empty!7027 setRes!9769 tp!439935))))

(declare-fun condSetEmpty!9769 () Bool)

(assert (=> b!1531179 (= condSetEmpty!9769 (= (_2!8633 (h!21585 mapDefault!7208)) ((as const (Array Context!1382 Bool)) false)))))

(assert (=> b!1530792 (= tp!439868 e!978819)))

(declare-fun b!1531180 () Bool)

(declare-fun tp!439936 () Bool)

(assert (=> b!1531180 (= e!978820 tp!439936)))

(declare-fun b!1531181 () Bool)

(declare-fun e!978818 () Bool)

(declare-fun tp!439933 () Bool)

(assert (=> b!1531181 (= e!978818 tp!439933)))

(declare-fun tp!439934 () Bool)

(declare-fun setNonEmpty!9769 () Bool)

(declare-fun setElem!9769 () Context!1382)

(assert (=> setNonEmpty!9769 (= setRes!9769 (and tp!439934 (inv!21455 setElem!9769) e!978818))))

(declare-fun setRest!9769 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9769 (= (_2!8633 (h!21585 mapDefault!7208)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9769 true) setRest!9769))))

(assert (= b!1531179 b!1531180))

(assert (= (and b!1531179 condSetEmpty!9769) setIsEmpty!9769))

(assert (= (and b!1531179 (not condSetEmpty!9769)) setNonEmpty!9769))

(assert (= setNonEmpty!9769 b!1531181))

(assert (= (and b!1530792 ((_ is Cons!16184) mapDefault!7208)) b!1531179))

(declare-fun m!1805945 () Bool)

(assert (=> b!1531179 m!1805945))

(declare-fun m!1805947 () Bool)

(assert (=> setNonEmpty!9769 m!1805947))

(declare-fun tp!439944 () Bool)

(declare-fun e!978825 () Bool)

(declare-fun tp!439945 () Bool)

(declare-fun b!1531190 () Bool)

(assert (=> b!1531190 (= e!978825 (and (inv!21443 (left!13404 (c!251011 treated!70))) tp!439945 (inv!21443 (right!13734 (c!251011 treated!70))) tp!439944))))

(declare-fun b!1531192 () Bool)

(declare-fun e!978826 () Bool)

(declare-fun tp!439946 () Bool)

(assert (=> b!1531192 (= e!978826 tp!439946)))

(declare-fun b!1531191 () Bool)

(declare-fun inv!21456 (IArray!10931) Bool)

(assert (=> b!1531191 (= e!978825 (and (inv!21456 (xs!8260 (c!251011 treated!70))) e!978826))))

(assert (=> b!1530809 (= tp!439880 (and (inv!21443 (c!251011 treated!70)) e!978825))))

(assert (= (and b!1530809 ((_ is Node!5463) (c!251011 treated!70))) b!1531190))

(assert (= b!1531191 b!1531192))

(assert (= (and b!1530809 ((_ is Leaf!8095) (c!251011 treated!70))) b!1531191))

(declare-fun m!1805949 () Bool)

(assert (=> b!1531190 m!1805949))

(declare-fun m!1805951 () Bool)

(assert (=> b!1531190 m!1805951))

(declare-fun m!1805953 () Bool)

(assert (=> b!1531191 m!1805953))

(assert (=> b!1530809 m!1805321))

(declare-fun e!978827 () Bool)

(declare-fun tp!439948 () Bool)

(declare-fun tp!439947 () Bool)

(declare-fun b!1531193 () Bool)

(assert (=> b!1531193 (= e!978827 (and (inv!21443 (left!13404 (c!251011 input!1102))) tp!439948 (inv!21443 (right!13734 (c!251011 input!1102))) tp!439947))))

(declare-fun b!1531195 () Bool)

(declare-fun e!978828 () Bool)

(declare-fun tp!439949 () Bool)

(assert (=> b!1531195 (= e!978828 tp!439949)))

(declare-fun b!1531194 () Bool)

(assert (=> b!1531194 (= e!978827 (and (inv!21456 (xs!8260 (c!251011 input!1102))) e!978828))))

(assert (=> b!1530801 (= tp!439885 (and (inv!21443 (c!251011 input!1102)) e!978827))))

(assert (= (and b!1530801 ((_ is Node!5463) (c!251011 input!1102))) b!1531193))

(assert (= b!1531194 b!1531195))

(assert (= (and b!1530801 ((_ is Leaf!8095) (c!251011 input!1102))) b!1531194))

(declare-fun m!1805955 () Bool)

(assert (=> b!1531193 m!1805955))

(declare-fun m!1805957 () Bool)

(assert (=> b!1531193 m!1805957))

(declare-fun m!1805959 () Bool)

(assert (=> b!1531194 m!1805959))

(assert (=> b!1530801 m!1805289))

(declare-fun b!1531204 () Bool)

(declare-fun e!978835 () Bool)

(declare-fun tp!439959 () Bool)

(assert (=> b!1531204 (= e!978835 tp!439959)))

(declare-fun b!1531205 () Bool)

(declare-fun e!978836 () Bool)

(declare-fun setRes!9772 () Bool)

(declare-fun tp!439961 () Bool)

(declare-fun e!978837 () Bool)

(assert (=> b!1531205 (= e!978837 (and (inv!21455 (_1!8636 (_1!8637 (h!21588 mapDefault!7206)))) e!978836 tp_is_empty!7027 setRes!9772 tp!439961))))

(declare-fun condSetEmpty!9772 () Bool)

(assert (=> b!1531205 (= condSetEmpty!9772 (= (_2!8637 (h!21588 mapDefault!7206)) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun setIsEmpty!9772 () Bool)

(assert (=> setIsEmpty!9772 setRes!9772))

(declare-fun b!1531206 () Bool)

(declare-fun tp!439958 () Bool)

(assert (=> b!1531206 (= e!978836 tp!439958)))

(assert (=> b!1530828 (= tp!439863 e!978837)))

(declare-fun setNonEmpty!9772 () Bool)

(declare-fun tp!439960 () Bool)

(declare-fun setElem!9772 () Context!1382)

(assert (=> setNonEmpty!9772 (= setRes!9772 (and tp!439960 (inv!21455 setElem!9772) e!978835))))

(declare-fun setRest!9772 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9772 (= (_2!8637 (h!21588 mapDefault!7206)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9772 true) setRest!9772))))

(assert (= b!1531205 b!1531206))

(assert (= (and b!1531205 condSetEmpty!9772) setIsEmpty!9772))

(assert (= (and b!1531205 (not condSetEmpty!9772)) setNonEmpty!9772))

(assert (= setNonEmpty!9772 b!1531204))

(assert (= (and b!1530828 ((_ is Cons!16187) mapDefault!7206)) b!1531205))

(declare-fun m!1805961 () Bool)

(assert (=> b!1531205 m!1805961))

(declare-fun m!1805963 () Bool)

(assert (=> setNonEmpty!9772 m!1805963))

(declare-fun b!1531218 () Bool)

(declare-fun e!978840 () Bool)

(declare-fun tp!439973 () Bool)

(declare-fun tp!439976 () Bool)

(assert (=> b!1531218 (= e!978840 (and tp!439973 tp!439976))))

(declare-fun b!1531220 () Bool)

(declare-fun tp!439975 () Bool)

(declare-fun tp!439974 () Bool)

(assert (=> b!1531220 (= e!978840 (and tp!439975 tp!439974))))

(assert (=> b!1530826 (= tp!439865 e!978840)))

(declare-fun b!1531219 () Bool)

(declare-fun tp!439972 () Bool)

(assert (=> b!1531219 (= e!978840 tp!439972)))

(declare-fun b!1531217 () Bool)

(assert (=> b!1531217 (= e!978840 tp_is_empty!7027)))

(assert (= (and b!1530826 ((_ is ElementMatch!4173) (regex!2855 (h!21591 rules!1640)))) b!1531217))

(assert (= (and b!1530826 ((_ is Concat!7118) (regex!2855 (h!21591 rules!1640)))) b!1531218))

(assert (= (and b!1530826 ((_ is Star!4173) (regex!2855 (h!21591 rules!1640)))) b!1531219))

(assert (= (and b!1530826 ((_ is Union!4173) (regex!2855 (h!21591 rules!1640)))) b!1531220))

(declare-fun e!978841 () Bool)

(declare-fun tp!439977 () Bool)

(declare-fun tp!439978 () Bool)

(declare-fun b!1531221 () Bool)

(assert (=> b!1531221 (= e!978841 (and (inv!21443 (left!13404 (c!251011 (totalInput!2329 cacheFurthestNullable!64)))) tp!439978 (inv!21443 (right!13734 (c!251011 (totalInput!2329 cacheFurthestNullable!64)))) tp!439977))))

(declare-fun b!1531223 () Bool)

(declare-fun e!978842 () Bool)

(declare-fun tp!439979 () Bool)

(assert (=> b!1531223 (= e!978842 tp!439979)))

(declare-fun b!1531222 () Bool)

(assert (=> b!1531222 (= e!978841 (and (inv!21456 (xs!8260 (c!251011 (totalInput!2329 cacheFurthestNullable!64)))) e!978842))))

(assert (=> b!1530817 (= tp!439870 (and (inv!21443 (c!251011 (totalInput!2329 cacheFurthestNullable!64))) e!978841))))

(assert (= (and b!1530817 ((_ is Node!5463) (c!251011 (totalInput!2329 cacheFurthestNullable!64)))) b!1531221))

(assert (= b!1531222 b!1531223))

(assert (= (and b!1530817 ((_ is Leaf!8095) (c!251011 (totalInput!2329 cacheFurthestNullable!64)))) b!1531222))

(declare-fun m!1805965 () Bool)

(assert (=> b!1531221 m!1805965))

(declare-fun m!1805967 () Bool)

(assert (=> b!1531221 m!1805967))

(declare-fun m!1805969 () Bool)

(assert (=> b!1531222 m!1805969))

(assert (=> b!1530817 m!1805291))

(declare-fun setIsEmpty!9773 () Bool)

(declare-fun setRes!9773 () Bool)

(assert (=> setIsEmpty!9773 setRes!9773))

(declare-fun tp!439984 () Bool)

(declare-fun e!978845 () Bool)

(declare-fun tp!439982 () Bool)

(declare-fun b!1531224 () Bool)

(declare-fun e!978844 () Bool)

(assert (=> b!1531224 (= e!978844 (and tp!439984 (inv!21455 (_2!8632 (_1!8633 (h!21585 (zeroValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))))) e!978845 tp_is_empty!7027 setRes!9773 tp!439982))))

(declare-fun condSetEmpty!9773 () Bool)

(assert (=> b!1531224 (= condSetEmpty!9773 (= (_2!8633 (h!21585 (zeroValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))) ((as const (Array Context!1382 Bool)) false)))))

(assert (=> b!1530815 (= tp!439887 e!978844)))

(declare-fun b!1531225 () Bool)

(declare-fun tp!439983 () Bool)

(assert (=> b!1531225 (= e!978845 tp!439983)))

(declare-fun b!1531226 () Bool)

(declare-fun e!978843 () Bool)

(declare-fun tp!439980 () Bool)

(assert (=> b!1531226 (= e!978843 tp!439980)))

(declare-fun setElem!9773 () Context!1382)

(declare-fun setNonEmpty!9773 () Bool)

(declare-fun tp!439981 () Bool)

(assert (=> setNonEmpty!9773 (= setRes!9773 (and tp!439981 (inv!21455 setElem!9773) e!978843))))

(declare-fun setRest!9773 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9773 (= (_2!8633 (h!21585 (zeroValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9773 true) setRest!9773))))

(assert (= b!1531224 b!1531225))

(assert (= (and b!1531224 condSetEmpty!9773) setIsEmpty!9773))

(assert (= (and b!1531224 (not condSetEmpty!9773)) setNonEmpty!9773))

(assert (= setNonEmpty!9773 b!1531226))

(assert (= (and b!1530815 ((_ is Cons!16184) (zeroValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))) b!1531224))

(declare-fun m!1805971 () Bool)

(assert (=> b!1531224 m!1805971))

(declare-fun m!1805973 () Bool)

(assert (=> setNonEmpty!9773 m!1805973))

(declare-fun setIsEmpty!9774 () Bool)

(declare-fun setRes!9774 () Bool)

(assert (=> setIsEmpty!9774 setRes!9774))

(declare-fun tp!439989 () Bool)

(declare-fun tp!439987 () Bool)

(declare-fun b!1531227 () Bool)

(declare-fun e!978848 () Bool)

(declare-fun e!978847 () Bool)

(assert (=> b!1531227 (= e!978847 (and tp!439989 (inv!21455 (_2!8632 (_1!8633 (h!21585 (minValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))))) e!978848 tp_is_empty!7027 setRes!9774 tp!439987))))

(declare-fun condSetEmpty!9774 () Bool)

(assert (=> b!1531227 (= condSetEmpty!9774 (= (_2!8633 (h!21585 (minValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))) ((as const (Array Context!1382 Bool)) false)))))

(assert (=> b!1530815 (= tp!439875 e!978847)))

(declare-fun b!1531228 () Bool)

(declare-fun tp!439988 () Bool)

(assert (=> b!1531228 (= e!978848 tp!439988)))

(declare-fun b!1531229 () Bool)

(declare-fun e!978846 () Bool)

(declare-fun tp!439985 () Bool)

(assert (=> b!1531229 (= e!978846 tp!439985)))

(declare-fun tp!439986 () Bool)

(declare-fun setElem!9774 () Context!1382)

(declare-fun setNonEmpty!9774 () Bool)

(assert (=> setNonEmpty!9774 (= setRes!9774 (and tp!439986 (inv!21455 setElem!9774) e!978846))))

(declare-fun setRest!9774 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9774 (= (_2!8633 (h!21585 (minValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9774 true) setRest!9774))))

(assert (= b!1531227 b!1531228))

(assert (= (and b!1531227 condSetEmpty!9774) setIsEmpty!9774))

(assert (= (and b!1531227 (not condSetEmpty!9774)) setNonEmpty!9774))

(assert (= setNonEmpty!9774 b!1531229))

(assert (= (and b!1530815 ((_ is Cons!16184) (minValue!1772 (v!22999 (underlying!3239 (v!23000 (underlying!3240 (cache!1840 cacheDown!629)))))))) b!1531227))

(declare-fun m!1805975 () Bool)

(assert (=> b!1531227 m!1805975))

(declare-fun m!1805977 () Bool)

(assert (=> setNonEmpty!9774 m!1805977))

(declare-fun tp!439998 () Bool)

(declare-fun tp!439997 () Bool)

(declare-fun b!1531238 () Bool)

(declare-fun e!978853 () Bool)

(assert (=> b!1531238 (= e!978853 (and (inv!21444 (left!13405 (c!251012 acc!392))) tp!439997 (inv!21444 (right!13735 (c!251012 acc!392))) tp!439998))))

(declare-fun b!1531240 () Bool)

(declare-fun e!978854 () Bool)

(declare-fun tp!439996 () Bool)

(assert (=> b!1531240 (= e!978854 tp!439996)))

(declare-fun b!1531239 () Bool)

(declare-fun inv!21457 (IArray!10933) Bool)

(assert (=> b!1531239 (= e!978853 (and (inv!21457 (xs!8261 (c!251012 acc!392))) e!978854))))

(assert (=> b!1530788 (= tp!439874 (and (inv!21444 (c!251012 acc!392)) e!978853))))

(assert (= (and b!1530788 ((_ is Node!5464) (c!251012 acc!392))) b!1531238))

(assert (= b!1531239 b!1531240))

(assert (= (and b!1530788 ((_ is Leaf!8096) (c!251012 acc!392))) b!1531239))

(declare-fun m!1805979 () Bool)

(assert (=> b!1531238 m!1805979))

(declare-fun m!1805981 () Bool)

(assert (=> b!1531238 m!1805981))

(declare-fun m!1805983 () Bool)

(assert (=> b!1531239 m!1805983))

(assert (=> b!1530788 m!1805309))

(declare-fun b!1531251 () Bool)

(declare-fun b_free!39599 () Bool)

(declare-fun b_next!40303 () Bool)

(assert (=> b!1531251 (= b_free!39599 (not b_next!40303))))

(declare-fun tp!440007 () Bool)

(declare-fun b_and!106365 () Bool)

(assert (=> b!1531251 (= tp!440007 b_and!106365)))

(declare-fun b_free!39601 () Bool)

(declare-fun b_next!40305 () Bool)

(assert (=> b!1531251 (= b_free!39601 (not b_next!40305))))

(declare-fun t!140341 () Bool)

(declare-fun tb!86959 () Bool)

(assert (=> (and b!1531251 (= (toChars!4073 (transformation!2855 (h!21591 (t!140337 rules!1640)))) (toChars!4073 (transformation!2855 (rule!4662 (_1!8638 (v!23004 (_1!8639 lt!531977))))))) t!140341) tb!86959))

(declare-fun result!104654 () Bool)

(assert (= result!104654 result!104634))

(assert (=> d!456516 t!140341))

(declare-fun b_and!106367 () Bool)

(declare-fun tp!440010 () Bool)

(assert (=> b!1531251 (= tp!440010 (and (=> t!140341 result!104654) b_and!106367))))

(declare-fun e!978865 () Bool)

(assert (=> b!1531251 (= e!978865 (and tp!440007 tp!440010))))

(declare-fun b!1531250 () Bool)

(declare-fun e!978863 () Bool)

(declare-fun tp!440008 () Bool)

(assert (=> b!1531250 (= e!978863 (and tp!440008 (inv!21436 (tag!3119 (h!21591 (t!140337 rules!1640)))) (inv!21450 (transformation!2855 (h!21591 (t!140337 rules!1640)))) e!978865))))

(declare-fun b!1531249 () Bool)

(declare-fun e!978866 () Bool)

(declare-fun tp!440009 () Bool)

(assert (=> b!1531249 (= e!978866 (and e!978863 tp!440009))))

(assert (=> b!1530806 (= tp!439889 e!978866)))

(assert (= b!1531250 b!1531251))

(assert (= b!1531249 b!1531250))

(assert (= (and b!1530806 ((_ is Cons!16190) (t!140337 rules!1640))) b!1531249))

(declare-fun m!1805985 () Bool)

(assert (=> b!1531250 m!1805985))

(declare-fun m!1805987 () Bool)

(assert (=> b!1531250 m!1805987))

(declare-fun tp!440011 () Bool)

(declare-fun b!1531252 () Bool)

(declare-fun e!978867 () Bool)

(declare-fun tp!440012 () Bool)

(assert (=> b!1531252 (= e!978867 (and (inv!21443 (left!13404 (c!251011 totalInput!458))) tp!440012 (inv!21443 (right!13734 (c!251011 totalInput!458))) tp!440011))))

(declare-fun b!1531254 () Bool)

(declare-fun e!978868 () Bool)

(declare-fun tp!440013 () Bool)

(assert (=> b!1531254 (= e!978868 tp!440013)))

(declare-fun b!1531253 () Bool)

(assert (=> b!1531253 (= e!978867 (and (inv!21456 (xs!8260 (c!251011 totalInput!458))) e!978868))))

(assert (=> b!1530777 (= tp!439872 (and (inv!21443 (c!251011 totalInput!458)) e!978867))))

(assert (= (and b!1530777 ((_ is Node!5463) (c!251011 totalInput!458))) b!1531252))

(assert (= b!1531253 b!1531254))

(assert (= (and b!1530777 ((_ is Leaf!8095) (c!251011 totalInput!458))) b!1531253))

(declare-fun m!1805989 () Bool)

(assert (=> b!1531252 m!1805989))

(declare-fun m!1805991 () Bool)

(assert (=> b!1531252 m!1805991))

(declare-fun m!1805993 () Bool)

(assert (=> b!1531253 m!1805993))

(assert (=> b!1530777 m!1805311))

(declare-fun mapIsEmpty!7214 () Bool)

(declare-fun mapRes!7214 () Bool)

(assert (=> mapIsEmpty!7214 mapRes!7214))

(declare-fun mapValue!7214 () List!16255)

(declare-fun b!1531269 () Bool)

(declare-fun e!978885 () Bool)

(declare-fun e!978881 () Bool)

(declare-fun tp!440036 () Bool)

(declare-fun setRes!9779 () Bool)

(assert (=> b!1531269 (= e!978881 (and (inv!21455 (_1!8636 (_1!8637 (h!21588 mapValue!7214)))) e!978885 tp_is_empty!7027 setRes!9779 tp!440036))))

(declare-fun condSetEmpty!9780 () Bool)

(assert (=> b!1531269 (= condSetEmpty!9780 (= (_2!8637 (h!21588 mapValue!7214)) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun e!978882 () Bool)

(declare-fun setRes!9780 () Bool)

(declare-fun mapDefault!7214 () List!16255)

(declare-fun tp!440038 () Bool)

(declare-fun b!1531270 () Bool)

(declare-fun e!978883 () Bool)

(assert (=> b!1531270 (= e!978882 (and (inv!21455 (_1!8636 (_1!8637 (h!21588 mapDefault!7214)))) e!978883 tp_is_empty!7027 setRes!9780 tp!440038))))

(declare-fun condSetEmpty!9779 () Bool)

(assert (=> b!1531270 (= condSetEmpty!9779 (= (_2!8637 (h!21588 mapDefault!7214)) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun b!1531271 () Bool)

(declare-fun e!978886 () Bool)

(declare-fun tp!440034 () Bool)

(assert (=> b!1531271 (= e!978886 tp!440034)))

(declare-fun setIsEmpty!9779 () Bool)

(assert (=> setIsEmpty!9779 setRes!9779))

(declare-fun setNonEmpty!9779 () Bool)

(declare-fun e!978884 () Bool)

(declare-fun tp!440035 () Bool)

(declare-fun setElem!9779 () Context!1382)

(assert (=> setNonEmpty!9779 (= setRes!9779 (and tp!440035 (inv!21455 setElem!9779) e!978884))))

(declare-fun setRest!9780 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9779 (= (_2!8637 (h!21588 mapValue!7214)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9779 true) setRest!9780))))

(declare-fun b!1531272 () Bool)

(declare-fun tp!440033 () Bool)

(assert (=> b!1531272 (= e!978884 tp!440033)))

(declare-fun b!1531273 () Bool)

(declare-fun tp!440039 () Bool)

(assert (=> b!1531273 (= e!978883 tp!440039)))

(declare-fun condMapEmpty!7214 () Bool)

(assert (=> mapNonEmpty!7207 (= condMapEmpty!7214 (= mapRest!7206 ((as const (Array (_ BitVec 32) List!16255)) mapDefault!7214)))))

(assert (=> mapNonEmpty!7207 (= tp!439876 (and e!978882 mapRes!7214))))

(declare-fun setIsEmpty!9780 () Bool)

(assert (=> setIsEmpty!9780 setRes!9780))

(declare-fun mapNonEmpty!7214 () Bool)

(declare-fun tp!440040 () Bool)

(assert (=> mapNonEmpty!7214 (= mapRes!7214 (and tp!440040 e!978881))))

(declare-fun mapRest!7214 () (Array (_ BitVec 32) List!16255))

(declare-fun mapKey!7214 () (_ BitVec 32))

(assert (=> mapNonEmpty!7214 (= mapRest!7206 (store mapRest!7214 mapKey!7214 mapValue!7214))))

(declare-fun b!1531274 () Bool)

(declare-fun tp!440037 () Bool)

(assert (=> b!1531274 (= e!978885 tp!440037)))

(declare-fun setElem!9780 () Context!1382)

(declare-fun tp!440032 () Bool)

(declare-fun setNonEmpty!9780 () Bool)

(assert (=> setNonEmpty!9780 (= setRes!9780 (and tp!440032 (inv!21455 setElem!9780) e!978886))))

(declare-fun setRest!9779 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9780 (= (_2!8637 (h!21588 mapDefault!7214)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9780 true) setRest!9779))))

(assert (= (and mapNonEmpty!7207 condMapEmpty!7214) mapIsEmpty!7214))

(assert (= (and mapNonEmpty!7207 (not condMapEmpty!7214)) mapNonEmpty!7214))

(assert (= b!1531269 b!1531274))

(assert (= (and b!1531269 condSetEmpty!9780) setIsEmpty!9779))

(assert (= (and b!1531269 (not condSetEmpty!9780)) setNonEmpty!9779))

(assert (= setNonEmpty!9779 b!1531272))

(assert (= (and mapNonEmpty!7214 ((_ is Cons!16187) mapValue!7214)) b!1531269))

(assert (= b!1531270 b!1531273))

(assert (= (and b!1531270 condSetEmpty!9779) setIsEmpty!9780))

(assert (= (and b!1531270 (not condSetEmpty!9779)) setNonEmpty!9780))

(assert (= setNonEmpty!9780 b!1531271))

(assert (= (and mapNonEmpty!7207 ((_ is Cons!16187) mapDefault!7214)) b!1531270))

(declare-fun m!1805995 () Bool)

(assert (=> mapNonEmpty!7214 m!1805995))

(declare-fun m!1805997 () Bool)

(assert (=> setNonEmpty!9780 m!1805997))

(declare-fun m!1805999 () Bool)

(assert (=> b!1531269 m!1805999))

(declare-fun m!1806001 () Bool)

(assert (=> b!1531270 m!1806001))

(declare-fun m!1806003 () Bool)

(assert (=> setNonEmpty!9779 m!1806003))

(declare-fun b!1531275 () Bool)

(declare-fun e!978887 () Bool)

(declare-fun tp!440042 () Bool)

(assert (=> b!1531275 (= e!978887 tp!440042)))

(declare-fun b!1531276 () Bool)

(declare-fun e!978889 () Bool)

(declare-fun e!978888 () Bool)

(declare-fun tp!440044 () Bool)

(declare-fun setRes!9781 () Bool)

(assert (=> b!1531276 (= e!978889 (and (inv!21455 (_1!8636 (_1!8637 (h!21588 mapValue!7208)))) e!978888 tp_is_empty!7027 setRes!9781 tp!440044))))

(declare-fun condSetEmpty!9781 () Bool)

(assert (=> b!1531276 (= condSetEmpty!9781 (= (_2!8637 (h!21588 mapValue!7208)) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun setIsEmpty!9781 () Bool)

(assert (=> setIsEmpty!9781 setRes!9781))

(declare-fun b!1531277 () Bool)

(declare-fun tp!440041 () Bool)

(assert (=> b!1531277 (= e!978888 tp!440041)))

(assert (=> mapNonEmpty!7207 (= tp!439883 e!978889)))

(declare-fun tp!440043 () Bool)

(declare-fun setElem!9781 () Context!1382)

(declare-fun setNonEmpty!9781 () Bool)

(assert (=> setNonEmpty!9781 (= setRes!9781 (and tp!440043 (inv!21455 setElem!9781) e!978887))))

(declare-fun setRest!9781 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9781 (= (_2!8637 (h!21588 mapValue!7208)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9781 true) setRest!9781))))

(assert (= b!1531276 b!1531277))

(assert (= (and b!1531276 condSetEmpty!9781) setIsEmpty!9781))

(assert (= (and b!1531276 (not condSetEmpty!9781)) setNonEmpty!9781))

(assert (= setNonEmpty!9781 b!1531275))

(assert (= (and mapNonEmpty!7207 ((_ is Cons!16187) mapValue!7208)) b!1531276))

(declare-fun m!1806005 () Bool)

(assert (=> b!1531276 m!1806005))

(declare-fun m!1806007 () Bool)

(assert (=> setNonEmpty!9781 m!1806007))

(declare-fun b!1531292 () Bool)

(declare-fun e!978905 () Bool)

(declare-fun tp!440075 () Bool)

(assert (=> b!1531292 (= e!978905 tp!440075)))

(declare-fun condMapEmpty!7217 () Bool)

(declare-fun mapDefault!7217 () List!16252)

(assert (=> mapNonEmpty!7206 (= condMapEmpty!7217 (= mapRest!7208 ((as const (Array (_ BitVec 32) List!16252)) mapDefault!7217)))))

(declare-fun e!978907 () Bool)

(declare-fun mapRes!7217 () Bool)

(assert (=> mapNonEmpty!7206 (= tp!439888 (and e!978907 mapRes!7217))))

(declare-fun setRes!9787 () Bool)

(declare-fun tp!440071 () Bool)

(declare-fun setElem!9786 () Context!1382)

(declare-fun setNonEmpty!9786 () Bool)

(assert (=> setNonEmpty!9786 (= setRes!9787 (and tp!440071 (inv!21455 setElem!9786) e!978905))))

(declare-fun mapValue!7217 () List!16252)

(declare-fun setRest!9787 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9786 (= (_2!8633 (h!21585 mapValue!7217)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9786 true) setRest!9787))))

(declare-fun b!1531293 () Bool)

(declare-fun e!978906 () Bool)

(declare-fun tp!440070 () Bool)

(assert (=> b!1531293 (= e!978906 tp!440070)))

(declare-fun setIsEmpty!9786 () Bool)

(declare-fun setRes!9786 () Bool)

(assert (=> setIsEmpty!9786 setRes!9786))

(declare-fun mapIsEmpty!7217 () Bool)

(assert (=> mapIsEmpty!7217 mapRes!7217))

(declare-fun b!1531294 () Bool)

(declare-fun e!978904 () Bool)

(declare-fun tp!440068 () Bool)

(assert (=> b!1531294 (= e!978904 tp!440068)))

(declare-fun b!1531295 () Bool)

(declare-fun e!978903 () Bool)

(declare-fun tp!440073 () Bool)

(assert (=> b!1531295 (= e!978903 tp!440073)))

(declare-fun tp!440067 () Bool)

(declare-fun tp!440069 () Bool)

(declare-fun b!1531296 () Bool)

(assert (=> b!1531296 (= e!978907 (and tp!440067 (inv!21455 (_2!8632 (_1!8633 (h!21585 mapDefault!7217)))) e!978904 tp_is_empty!7027 setRes!9786 tp!440069))))

(declare-fun condSetEmpty!9786 () Bool)

(assert (=> b!1531296 (= condSetEmpty!9786 (= (_2!8633 (h!21585 mapDefault!7217)) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun setIsEmpty!9787 () Bool)

(assert (=> setIsEmpty!9787 setRes!9787))

(declare-fun tp!440074 () Bool)

(declare-fun e!978902 () Bool)

(declare-fun tp!440077 () Bool)

(declare-fun b!1531297 () Bool)

(assert (=> b!1531297 (= e!978902 (and tp!440077 (inv!21455 (_2!8632 (_1!8633 (h!21585 mapValue!7217)))) e!978906 tp_is_empty!7027 setRes!9787 tp!440074))))

(declare-fun condSetEmpty!9787 () Bool)

(assert (=> b!1531297 (= condSetEmpty!9787 (= (_2!8633 (h!21585 mapValue!7217)) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun mapNonEmpty!7217 () Bool)

(declare-fun tp!440072 () Bool)

(assert (=> mapNonEmpty!7217 (= mapRes!7217 (and tp!440072 e!978902))))

(declare-fun mapKey!7217 () (_ BitVec 32))

(declare-fun mapRest!7217 () (Array (_ BitVec 32) List!16252))

(assert (=> mapNonEmpty!7217 (= mapRest!7208 (store mapRest!7217 mapKey!7217 mapValue!7217))))

(declare-fun tp!440076 () Bool)

(declare-fun setNonEmpty!9787 () Bool)

(declare-fun setElem!9787 () Context!1382)

(assert (=> setNonEmpty!9787 (= setRes!9786 (and tp!440076 (inv!21455 setElem!9787) e!978903))))

(declare-fun setRest!9786 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9787 (= (_2!8633 (h!21585 mapDefault!7217)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9787 true) setRest!9786))))

(assert (= (and mapNonEmpty!7206 condMapEmpty!7217) mapIsEmpty!7217))

(assert (= (and mapNonEmpty!7206 (not condMapEmpty!7217)) mapNonEmpty!7217))

(assert (= b!1531297 b!1531293))

(assert (= (and b!1531297 condSetEmpty!9787) setIsEmpty!9787))

(assert (= (and b!1531297 (not condSetEmpty!9787)) setNonEmpty!9786))

(assert (= setNonEmpty!9786 b!1531292))

(assert (= (and mapNonEmpty!7217 ((_ is Cons!16184) mapValue!7217)) b!1531297))

(assert (= b!1531296 b!1531294))

(assert (= (and b!1531296 condSetEmpty!9786) setIsEmpty!9786))

(assert (= (and b!1531296 (not condSetEmpty!9786)) setNonEmpty!9787))

(assert (= setNonEmpty!9787 b!1531295))

(assert (= (and mapNonEmpty!7206 ((_ is Cons!16184) mapDefault!7217)) b!1531296))

(declare-fun m!1806009 () Bool)

(assert (=> setNonEmpty!9787 m!1806009))

(declare-fun m!1806011 () Bool)

(assert (=> b!1531297 m!1806011))

(declare-fun m!1806013 () Bool)

(assert (=> setNonEmpty!9786 m!1806013))

(declare-fun m!1806015 () Bool)

(assert (=> mapNonEmpty!7217 m!1806015))

(declare-fun m!1806017 () Bool)

(assert (=> b!1531296 m!1806017))

(declare-fun setIsEmpty!9788 () Bool)

(declare-fun setRes!9788 () Bool)

(assert (=> setIsEmpty!9788 setRes!9788))

(declare-fun tp!440082 () Bool)

(declare-fun e!978909 () Bool)

(declare-fun tp!440080 () Bool)

(declare-fun b!1531298 () Bool)

(declare-fun e!978910 () Bool)

(assert (=> b!1531298 (= e!978909 (and tp!440082 (inv!21455 (_2!8632 (_1!8633 (h!21585 mapValue!7207)))) e!978910 tp_is_empty!7027 setRes!9788 tp!440080))))

(declare-fun condSetEmpty!9788 () Bool)

(assert (=> b!1531298 (= condSetEmpty!9788 (= (_2!8633 (h!21585 mapValue!7207)) ((as const (Array Context!1382 Bool)) false)))))

(assert (=> mapNonEmpty!7206 (= tp!439882 e!978909)))

(declare-fun b!1531299 () Bool)

(declare-fun tp!440081 () Bool)

(assert (=> b!1531299 (= e!978910 tp!440081)))

(declare-fun b!1531300 () Bool)

(declare-fun e!978908 () Bool)

(declare-fun tp!440078 () Bool)

(assert (=> b!1531300 (= e!978908 tp!440078)))

(declare-fun tp!440079 () Bool)

(declare-fun setElem!9788 () Context!1382)

(declare-fun setNonEmpty!9788 () Bool)

(assert (=> setNonEmpty!9788 (= setRes!9788 (and tp!440079 (inv!21455 setElem!9788) e!978908))))

(declare-fun setRest!9788 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9788 (= (_2!8633 (h!21585 mapValue!7207)) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9788 true) setRest!9788))))

(assert (= b!1531298 b!1531299))

(assert (= (and b!1531298 condSetEmpty!9788) setIsEmpty!9788))

(assert (= (and b!1531298 (not condSetEmpty!9788)) setNonEmpty!9788))

(assert (= setNonEmpty!9788 b!1531300))

(assert (= (and mapNonEmpty!7206 ((_ is Cons!16184) mapValue!7207)) b!1531298))

(declare-fun m!1806019 () Bool)

(assert (=> b!1531298 m!1806019))

(declare-fun m!1806021 () Bool)

(assert (=> setNonEmpty!9788 m!1806021))

(declare-fun b!1531301 () Bool)

(declare-fun e!978911 () Bool)

(declare-fun tp!440084 () Bool)

(assert (=> b!1531301 (= e!978911 tp!440084)))

(declare-fun tp!440086 () Bool)

(declare-fun b!1531302 () Bool)

(declare-fun e!978912 () Bool)

(declare-fun e!978913 () Bool)

(declare-fun setRes!9789 () Bool)

(assert (=> b!1531302 (= e!978913 (and (inv!21455 (_1!8636 (_1!8637 (h!21588 (zeroValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))))) e!978912 tp_is_empty!7027 setRes!9789 tp!440086))))

(declare-fun condSetEmpty!9789 () Bool)

(assert (=> b!1531302 (= condSetEmpty!9789 (= (_2!8637 (h!21588 (zeroValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun setIsEmpty!9789 () Bool)

(assert (=> setIsEmpty!9789 setRes!9789))

(declare-fun b!1531303 () Bool)

(declare-fun tp!440083 () Bool)

(assert (=> b!1531303 (= e!978912 tp!440083)))

(assert (=> b!1530814 (= tp!439884 e!978913)))

(declare-fun setNonEmpty!9789 () Bool)

(declare-fun setElem!9789 () Context!1382)

(declare-fun tp!440085 () Bool)

(assert (=> setNonEmpty!9789 (= setRes!9789 (and tp!440085 (inv!21455 setElem!9789) e!978911))))

(declare-fun setRest!9789 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9789 (= (_2!8637 (h!21588 (zeroValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9789 true) setRest!9789))))

(assert (= b!1531302 b!1531303))

(assert (= (and b!1531302 condSetEmpty!9789) setIsEmpty!9789))

(assert (= (and b!1531302 (not condSetEmpty!9789)) setNonEmpty!9789))

(assert (= setNonEmpty!9789 b!1531301))

(assert (= (and b!1530814 ((_ is Cons!16187) (zeroValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))) b!1531302))

(declare-fun m!1806023 () Bool)

(assert (=> b!1531302 m!1806023))

(declare-fun m!1806025 () Bool)

(assert (=> setNonEmpty!9789 m!1806025))

(declare-fun b!1531304 () Bool)

(declare-fun e!978914 () Bool)

(declare-fun tp!440088 () Bool)

(assert (=> b!1531304 (= e!978914 tp!440088)))

(declare-fun e!978916 () Bool)

(declare-fun setRes!9790 () Bool)

(declare-fun tp!440090 () Bool)

(declare-fun e!978915 () Bool)

(declare-fun b!1531305 () Bool)

(assert (=> b!1531305 (= e!978916 (and (inv!21455 (_1!8636 (_1!8637 (h!21588 (minValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))))) e!978915 tp_is_empty!7027 setRes!9790 tp!440090))))

(declare-fun condSetEmpty!9790 () Bool)

(assert (=> b!1531305 (= condSetEmpty!9790 (= (_2!8637 (h!21588 (minValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun setIsEmpty!9790 () Bool)

(assert (=> setIsEmpty!9790 setRes!9790))

(declare-fun b!1531306 () Bool)

(declare-fun tp!440087 () Bool)

(assert (=> b!1531306 (= e!978915 tp!440087)))

(assert (=> b!1530814 (= tp!439873 e!978916)))

(declare-fun setElem!9790 () Context!1382)

(declare-fun setNonEmpty!9790 () Bool)

(declare-fun tp!440089 () Bool)

(assert (=> setNonEmpty!9790 (= setRes!9790 (and tp!440089 (inv!21455 setElem!9790) e!978914))))

(declare-fun setRest!9790 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9790 (= (_2!8637 (h!21588 (minValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9790 true) setRest!9790))))

(assert (= b!1531305 b!1531306))

(assert (= (and b!1531305 condSetEmpty!9790) setIsEmpty!9790))

(assert (= (and b!1531305 (not condSetEmpty!9790)) setNonEmpty!9790))

(assert (= setNonEmpty!9790 b!1531304))

(assert (= (and b!1530814 ((_ is Cons!16187) (minValue!1774 (v!23003 (underlying!3243 (v!23005 (underlying!3244 (cache!1842 cacheUp!616)))))))) b!1531305))

(declare-fun m!1806027 () Bool)

(assert (=> b!1531305 m!1806027))

(declare-fun m!1806029 () Bool)

(assert (=> setNonEmpty!9790 m!1806029))

(declare-fun e!978918 () Bool)

(assert (=> b!1530820 (= tp!439881 e!978918)))

(declare-fun setIsEmpty!9791 () Bool)

(declare-fun setRes!9791 () Bool)

(assert (=> setIsEmpty!9791 setRes!9791))

(declare-fun b!1531307 () Bool)

(declare-fun tp!440091 () Bool)

(assert (=> b!1531307 (= e!978918 (and setRes!9791 tp!440091))))

(declare-fun condSetEmpty!9791 () Bool)

(assert (=> b!1531307 (= condSetEmpty!9791 (= (_1!8634 (_1!8635 (h!21586 (zeroValue!1773 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun b!1531308 () Bool)

(declare-fun e!978917 () Bool)

(declare-fun tp!440093 () Bool)

(assert (=> b!1531308 (= e!978917 tp!440093)))

(declare-fun setNonEmpty!9791 () Bool)

(declare-fun tp!440092 () Bool)

(declare-fun setElem!9791 () Context!1382)

(assert (=> setNonEmpty!9791 (= setRes!9791 (and tp!440092 (inv!21455 setElem!9791) e!978917))))

(declare-fun setRest!9791 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9791 (= (_1!8634 (_1!8635 (h!21586 (zeroValue!1773 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9791 true) setRest!9791))))

(assert (= (and b!1531307 condSetEmpty!9791) setIsEmpty!9791))

(assert (= (and b!1531307 (not condSetEmpty!9791)) setNonEmpty!9791))

(assert (= setNonEmpty!9791 b!1531308))

(assert (= (and b!1530820 ((_ is Cons!16185) (zeroValue!1773 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64)))))))) b!1531307))

(declare-fun m!1806031 () Bool)

(assert (=> setNonEmpty!9791 m!1806031))

(declare-fun e!978920 () Bool)

(assert (=> b!1530820 (= tp!439862 e!978920)))

(declare-fun setIsEmpty!9792 () Bool)

(declare-fun setRes!9792 () Bool)

(assert (=> setIsEmpty!9792 setRes!9792))

(declare-fun b!1531309 () Bool)

(declare-fun tp!440094 () Bool)

(assert (=> b!1531309 (= e!978920 (and setRes!9792 tp!440094))))

(declare-fun condSetEmpty!9792 () Bool)

(assert (=> b!1531309 (= condSetEmpty!9792 (= (_1!8634 (_1!8635 (h!21586 (minValue!1773 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun b!1531310 () Bool)

(declare-fun e!978919 () Bool)

(declare-fun tp!440096 () Bool)

(assert (=> b!1531310 (= e!978919 tp!440096)))

(declare-fun setNonEmpty!9792 () Bool)

(declare-fun setElem!9792 () Context!1382)

(declare-fun tp!440095 () Bool)

(assert (=> setNonEmpty!9792 (= setRes!9792 (and tp!440095 (inv!21455 setElem!9792) e!978919))))

(declare-fun setRest!9792 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9792 (= (_1!8634 (_1!8635 (h!21586 (minValue!1773 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9792 true) setRest!9792))))

(assert (= (and b!1531309 condSetEmpty!9792) setIsEmpty!9792))

(assert (= (and b!1531309 (not condSetEmpty!9792)) setNonEmpty!9792))

(assert (= setNonEmpty!9792 b!1531310))

(assert (= (and b!1530820 ((_ is Cons!16185) (minValue!1773 (v!23001 (underlying!3241 (v!23002 (underlying!3242 (cache!1841 cacheFurthestNullable!64)))))))) b!1531309))

(declare-fun m!1806033 () Bool)

(assert (=> setNonEmpty!9792 m!1806033))

(declare-fun e!978922 () Bool)

(assert (=> b!1530783 (= tp!439869 e!978922)))

(declare-fun setIsEmpty!9793 () Bool)

(declare-fun setRes!9793 () Bool)

(assert (=> setIsEmpty!9793 setRes!9793))

(declare-fun b!1531311 () Bool)

(declare-fun tp!440097 () Bool)

(assert (=> b!1531311 (= e!978922 (and setRes!9793 tp!440097))))

(declare-fun condSetEmpty!9793 () Bool)

(assert (=> b!1531311 (= condSetEmpty!9793 (= (_1!8634 (_1!8635 (h!21586 mapDefault!7207))) ((as const (Array Context!1382 Bool)) false)))))

(declare-fun b!1531312 () Bool)

(declare-fun e!978921 () Bool)

(declare-fun tp!440099 () Bool)

(assert (=> b!1531312 (= e!978921 tp!440099)))

(declare-fun setElem!9793 () Context!1382)

(declare-fun setNonEmpty!9793 () Bool)

(declare-fun tp!440098 () Bool)

(assert (=> setNonEmpty!9793 (= setRes!9793 (and tp!440098 (inv!21455 setElem!9793) e!978921))))

(declare-fun setRest!9793 () (InoxSet Context!1382))

(assert (=> setNonEmpty!9793 (= (_1!8634 (_1!8635 (h!21586 mapDefault!7207))) ((_ map or) (store ((as const (Array Context!1382 Bool)) false) setElem!9793 true) setRest!9793))))

(assert (= (and b!1531311 condSetEmpty!9793) setIsEmpty!9793))

(assert (= (and b!1531311 (not condSetEmpty!9793)) setNonEmpty!9793))

(assert (= setNonEmpty!9793 b!1531312))

(assert (= (and b!1530783 ((_ is Cons!16185) mapDefault!7207)) b!1531311))

(declare-fun m!1806035 () Bool)

(assert (=> setNonEmpty!9793 m!1806035))

(check-sat (not d!456480) (not b!1531310) (not b_next!40293) (not b!1530879) (not b!1531097) (not d!456512) (not b!1531124) (not b!1530933) (not b!1531130) (not b!1530878) b_and!106351 (not b!1530876) (not b!1531193) (not b!1531093) (not b!1531030) (not b!1531221) (not b!1531224) (not b!1531115) (not b!1531293) (not b!1531240) (not b!1531069) (not b!1530998) (not b!1530967) (not d!456518) (not b!1531119) (not d!456498) (not setNonEmpty!9763) (not b_next!40301) (not b!1531049) (not b!1530856) (not d!456536) (not setNonEmpty!9789) (not b!1530924) (not b!1531034) (not b!1531005) (not b_next!40289) (not b_lambda!48181) (not b!1531003) (not b!1530953) (not d!456576) (not b!1531277) (not b!1530838) (not d!456560) (not b!1531296) (not d!456570) (not d!456470) (not b!1531011) (not b!1530855) (not b!1531273) (not d!456424) (not d!456578) (not bm!101384) (not b!1531229) (not b!1531072) (not setNonEmpty!9791) (not b!1531254) (not d!456572) (not b!1531250) (not d!456532) b_and!106365 (not tb!86957) (not d!456546) (not b!1531206) (not b!1531047) (not b!1531308) (not b!1531002) (not b!1531159) (not b!1531228) (not d!456528) (not b!1531126) (not b!1531191) (not b!1531133) (not b!1530935) (not setNonEmpty!9773) (not b!1531035) (not d!456580) b_and!106355 (not b!1531162) (not b_next!40299) (not b!1531141) (not d!456568) (not b!1531004) (not setNonEmpty!9766) (not b!1531024) (not d!456516) (not d!456552) (not d!456446) (not b!1531102) (not b!1531220) (not d!456418) (not b!1531001) (not b!1531249) (not b!1531099) (not d!456542) (not b!1531096) (not d!456510) (not b!1530969) (not b!1531064) (not b!1531274) b_and!106349 (not b!1530938) (not b!1531195) (not b!1531311) (not b!1531032) (not b!1531048) (not b!1530966) (not b!1531205) (not b!1530809) (not setNonEmpty!9762) (not b!1531127) (not b!1530836) (not setNonEmpty!9774) (not d!456514) (not d!456482) (not b!1531309) (not d!456448) (not setNonEmpty!9779) (not d!456508) (not b!1531121) (not b!1530872) (not setNonEmpty!9787) (not d!456504) (not b!1531300) (not b!1531142) (not b!1531114) (not b!1531180) (not b!1531204) (not b!1530971) (not d!456544) (not b!1530893) (not d!456474) (not b!1531140) (not b!1531252) (not b!1531179) (not b!1531116) (not mapNonEmpty!7211) (not b!1531117) (not d!456540) (not b!1530932) (not b!1531269) (not d!456434) (not b!1530877) (not b!1531129) (not d!456468) (not d!456562) (not d!456496) (not b!1531033) (not b!1531147) (not b!1530870) (not b_next!40303) (not b_next!40297) (not d!456484) (not d!456526) (not setNonEmpty!9772) (not b_next!40305) (not b!1530922) (not b!1530890) (not b!1531073) (not d!456444) (not b!1531022) (not d!456472) (not b!1531101) b_and!106347 b_and!106357 (not d!456558) (not d!456492) (not d!456564) (not b!1531272) (not b!1531295) (not b!1530952) (not b!1531222) (not b!1531304) (not b!1530817) (not b!1531299) (not b!1531227) (not d!456522) (not d!456490) (not b!1531226) (not setNonEmpty!9790) (not setNonEmpty!9792) (not b!1530869) (not b!1531092) (not b!1530916) (not b!1530857) (not b!1530874) (not b!1531065) (not b!1530936) (not b!1531025) (not b!1531218) (not b!1531190) (not b!1531136) (not b!1531223) (not b!1530788) (not d!456414) (not b!1531239) (not d!456452) (not bm!101388) (not b!1531008) (not b!1531094) (not b!1531297) (not b!1531253) (not setNonEmpty!9793) (not b!1531292) (not b!1531270) (not b!1531112) (not d!456538) (not d!456520) (not d!456556) (not b!1531118) (not setNonEmpty!9781) (not setNonEmpty!9780) (not setNonEmpty!9769) (not b!1531137) (not mapNonEmpty!7214) (not b_next!40295) (not b!1530970) (not d!456458) (not b!1531006) (not b!1531302) (not b!1531145) (not b!1530961) (not b!1530973) (not b!1530871) (not b!1530853) (not b!1531029) (not d!456416) (not b!1531238) (not b!1531148) (not b!1531123) (not d!456494) (not b!1530801) (not b!1531054) (not d!456426) (not b!1530930) (not b!1530937) (not b!1531194) (not d!456554) (not b!1531113) (not b!1530918) (not d!456430) (not b!1530858) (not b!1531181) (not b!1530859) (not b!1531122) (not b!1531301) (not setNonEmpty!9788) (not mapNonEmpty!7217) (not b!1531160) (not setNonEmpty!9786) (not b!1530919) (not b!1530929) (not b!1531192) (not d!456506) (not b!1531298) (not d!456420) (not b!1530875) (not b!1531161) (not b!1531271) tp_is_empty!7027 (not b!1530963) (not b!1530777) b_and!106367 (not b!1530923) b_and!106353 (not d!456566) (not d!456524) (not b!1531170) (not b!1530972) (not b!1531303) (not b!1531169) (not b!1531219) (not d!456460) (not b!1531146) (not d!456428) (not b!1530882) (not b!1531276) (not d!456486) (not bm!101387) (not b!1530942) (not b!1531036) (not b!1531016) (not d!456432) (not b!1531128) (not d!456548) (not b!1530881) (not b!1531012) (not b!1530868) (not b!1531132) (not b!1530939) (not d!456550) (not b!1531294) (not d!456412) (not b!1531307) (not b!1531009) (not b!1531015) (not d!456530) (not b!1530884) (not b!1531007) (not b_next!40291) (not b!1531275) (not d!456476) (not b!1530917) b_and!106359 (not b!1531098) (not b!1531312) (not d!456450) (not b!1531144) (not d!456500) (not b!1531225) b_and!106363 (not b!1531139) (not b!1531305) (not b!1531091) (not b!1531306) (not d!456534) (not b!1530887) (not b!1531068) (not b_next!40287))
(check-sat (not b_next!40301) (not b_next!40289) b_and!106365 b_and!106349 (not b_next!40295) (not b_next!40293) b_and!106351 b_and!106355 (not b_next!40299) (not b_next!40303) (not b_next!40297) (not b_next!40305) b_and!106347 b_and!106357 b_and!106367 b_and!106353 b_and!106359 (not b_next!40291) b_and!106363 (not b_next!40287))
