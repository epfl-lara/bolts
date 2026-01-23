; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95612 () Bool)

(assert start!95612)

(declare-fun b!1107358 () Bool)

(declare-fun b_free!26861 () Bool)

(declare-fun b_next!26925 () Bool)

(assert (=> b!1107358 (= b_free!26861 (not b_next!26925))))

(declare-fun tp!328474 () Bool)

(declare-fun b_and!79181 () Bool)

(assert (=> b!1107358 (= tp!328474 b_and!79181)))

(declare-fun b_free!26863 () Bool)

(declare-fun b_next!26927 () Bool)

(assert (=> b!1107358 (= b_free!26863 (not b_next!26927))))

(declare-fun tp!328470 () Bool)

(declare-fun b_and!79183 () Bool)

(assert (=> b!1107358 (= tp!328470 b_and!79183)))

(declare-fun b!1107346 () Bool)

(declare-fun b_free!26865 () Bool)

(declare-fun b_next!26929 () Bool)

(assert (=> b!1107346 (= b_free!26865 (not b_next!26929))))

(declare-fun tp!328473 () Bool)

(declare-fun b_and!79185 () Bool)

(assert (=> b!1107346 (= tp!328473 b_and!79185)))

(declare-fun b!1107361 () Bool)

(declare-fun b_free!26867 () Bool)

(declare-fun b_next!26931 () Bool)

(assert (=> b!1107361 (= b_free!26867 (not b_next!26931))))

(declare-fun tp!328481 () Bool)

(declare-fun b_and!79187 () Bool)

(assert (=> b!1107361 (= tp!328481 b_and!79187)))

(declare-fun b!1107352 () Bool)

(declare-fun b_free!26869 () Bool)

(declare-fun b_next!26933 () Bool)

(assert (=> b!1107352 (= b_free!26869 (not b_next!26933))))

(declare-fun tp!328487 () Bool)

(declare-fun b_and!79189 () Bool)

(assert (=> b!1107352 (= tp!328487 b_and!79189)))

(declare-fun b!1107367 () Bool)

(declare-fun b_free!26871 () Bool)

(declare-fun b_next!26935 () Bool)

(assert (=> b!1107367 (= b_free!26871 (not b_next!26935))))

(declare-fun tp!328475 () Bool)

(declare-fun b_and!79191 () Bool)

(assert (=> b!1107367 (= tp!328475 b_and!79191)))

(declare-fun tp!328484 () Bool)

(declare-fun e!702135 () Bool)

(declare-fun tp!328477 () Bool)

(declare-fun e!702140 () Bool)

(declare-datatypes ((C!6664 0))(
  ( (C!6665 (val!3588 Int)) )
))
(declare-datatypes ((Regex!3137 0))(
  ( (ElementMatch!3137 (c!187966 C!6664)) (Concat!5070 (regOne!6786 Regex!3137) (regTwo!6786 Regex!3137)) (EmptyExpr!3137) (Star!3137 (reg!3466 Regex!3137)) (EmptyLang!3137) (Union!3137 (regOne!6787 Regex!3137) (regTwo!6787 Regex!3137)) )
))
(declare-datatypes ((List!10856 0))(
  ( (Nil!10832) (Cons!10832 (h!16233 Regex!3137) (t!105424 List!10856)) )
))
(declare-datatypes ((Context!1046 0))(
  ( (Context!1047 (exprs!1023 List!10856)) )
))
(declare-datatypes ((tuple2!11878 0))(
  ( (tuple2!11879 (_1!6777 Context!1046) (_2!6777 C!6664)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!11880 0))(
  ( (tuple2!11881 (_1!6778 tuple2!11878) (_2!6778 (InoxSet Context!1046))) )
))
(declare-datatypes ((List!10857 0))(
  ( (Nil!10833) (Cons!10833 (h!16234 tuple2!11880) (t!105425 List!10857)) )
))
(declare-datatypes ((Hashable!1247 0))(
  ( (HashableExt!1246 (__x!7563 Int)) )
))
(declare-datatypes ((array!4504 0))(
  ( (array!4505 (arr!2008 (Array (_ BitVec 32) (_ BitVec 64))) (size!8409 (_ BitVec 32))) )
))
(declare-datatypes ((array!4506 0))(
  ( (array!4507 (arr!2009 (Array (_ BitVec 32) List!10857)) (size!8410 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2550 0))(
  ( (LongMapFixedSize!2551 (defaultEntry!1635 Int) (mask!3762 (_ BitVec 32)) (extraKeys!1522 (_ BitVec 32)) (zeroValue!1532 List!10857) (minValue!1532 List!10857) (_size!2659 (_ BitVec 32)) (_keys!1569 array!4504) (_values!1554 array!4506) (_vacant!1336 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5041 0))(
  ( (Cell!5042 (v!20042 LongMapFixedSize!2550)) )
))
(declare-datatypes ((MutLongMap!1275 0))(
  ( (LongMap!1275 (underlying!2743 Cell!5041)) (MutLongMapExt!1274 (__x!7564 Int)) )
))
(declare-datatypes ((Cell!5043 0))(
  ( (Cell!5044 (v!20043 MutLongMap!1275)) )
))
(declare-datatypes ((MutableMap!1247 0))(
  ( (MutableMapExt!1246 (__x!7565 Int)) (HashMap!1247 (underlying!2744 Cell!5043) (hashF!3166 Hashable!1247) (_size!2660 (_ BitVec 32)) (defaultValue!1407 Int)) )
))
(declare-datatypes ((CacheUp!716 0))(
  ( (CacheUp!717 (cache!1628 MutableMap!1247)) )
))
(declare-fun cacheUp!384 () CacheUp!716)

(declare-fun array_inv!1448 (array!4504) Bool)

(declare-fun array_inv!1449 (array!4506) Bool)

(assert (=> b!1107346 (= e!702140 (and tp!328473 tp!328477 tp!328484 (array_inv!1448 (_keys!1569 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) (array_inv!1449 (_values!1554 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) e!702135))))

(declare-fun b!1107347 () Bool)

(declare-fun e!702124 () Bool)

(declare-fun e!702128 () Bool)

(assert (=> b!1107347 (= e!702124 e!702128)))

(declare-fun b!1107348 () Bool)

(declare-fun e!702122 () Bool)

(declare-fun lt!376068 () MutLongMap!1275)

(get-info :version)

(assert (=> b!1107348 (= e!702122 (and e!702124 ((_ is LongMap!1275) lt!376068)))))

(assert (=> b!1107348 (= lt!376068 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))

(declare-fun b!1107349 () Bool)

(declare-fun e!702129 () Bool)

(declare-fun tp!328478 () Bool)

(declare-fun mapRes!6159 () Bool)

(assert (=> b!1107349 (= e!702129 (and tp!328478 mapRes!6159))))

(declare-fun condMapEmpty!6159 () Bool)

(declare-datatypes ((tuple3!1094 0))(
  ( (tuple3!1095 (_1!6779 Regex!3137) (_2!6779 Context!1046) (_3!838 C!6664)) )
))
(declare-datatypes ((tuple2!11882 0))(
  ( (tuple2!11883 (_1!6780 tuple3!1094) (_2!6780 (InoxSet Context!1046))) )
))
(declare-datatypes ((List!10858 0))(
  ( (Nil!10834) (Cons!10834 (h!16235 tuple2!11882) (t!105426 List!10858)) )
))
(declare-datatypes ((array!4508 0))(
  ( (array!4509 (arr!2010 (Array (_ BitVec 32) List!10858)) (size!8411 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2552 0))(
  ( (LongMapFixedSize!2553 (defaultEntry!1636 Int) (mask!3763 (_ BitVec 32)) (extraKeys!1523 (_ BitVec 32)) (zeroValue!1533 List!10858) (minValue!1533 List!10858) (_size!2661 (_ BitVec 32)) (_keys!1570 array!4504) (_values!1555 array!4508) (_vacant!1337 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5045 0))(
  ( (Cell!5046 (v!20044 LongMapFixedSize!2552)) )
))
(declare-datatypes ((MutLongMap!1276 0))(
  ( (LongMap!1276 (underlying!2745 Cell!5045)) (MutLongMapExt!1275 (__x!7566 Int)) )
))
(declare-datatypes ((Cell!5047 0))(
  ( (Cell!5048 (v!20045 MutLongMap!1276)) )
))
(declare-datatypes ((Hashable!1248 0))(
  ( (HashableExt!1247 (__x!7567 Int)) )
))
(declare-datatypes ((MutableMap!1248 0))(
  ( (MutableMapExt!1247 (__x!7568 Int)) (HashMap!1248 (underlying!2746 Cell!5047) (hashF!3167 Hashable!1248) (_size!2662 (_ BitVec 32)) (defaultValue!1408 Int)) )
))
(declare-datatypes ((CacheDown!720 0))(
  ( (CacheDown!721 (cache!1629 MutableMap!1248)) )
))
(declare-fun cacheDown!397 () CacheDown!720)

(declare-fun mapDefault!6159 () List!10858)

(assert (=> b!1107349 (= condMapEmpty!6159 (= (arr!2010 (_values!1555 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) ((as const (Array (_ BitVec 32) List!10858)) mapDefault!6159)))))

(declare-fun b!1107350 () Bool)

(declare-fun e!702118 () Bool)

(declare-fun e!702130 () Bool)

(assert (=> b!1107350 (= e!702118 e!702130)))

(declare-fun res!490401 () Bool)

(declare-fun e!702134 () Bool)

(assert (=> start!95612 (=> (not res!490401) (not e!702134))))

(declare-datatypes ((List!10859 0))(
  ( (Nil!10835) (Cons!10835 (h!16236 C!6664) (t!105427 List!10859)) )
))
(declare-datatypes ((IArray!6853 0))(
  ( (IArray!6854 (innerList!3484 List!10859)) )
))
(declare-datatypes ((String!13252 0))(
  ( (String!13253 (value!61180 String)) )
))
(declare-datatypes ((List!10860 0))(
  ( (Nil!10836) (Cons!10836 (h!16237 (_ BitVec 16)) (t!105428 List!10860)) )
))
(declare-datatypes ((TokenValue!1933 0))(
  ( (FloatLiteralValue!3866 (text!13976 List!10860)) (TokenValueExt!1932 (__x!7569 Int)) (Broken!9665 (value!61181 List!10860)) (Object!1956) (End!1933) (Def!1933) (Underscore!1933) (Match!1933) (Else!1933) (Error!1933) (Case!1933) (If!1933) (Extends!1933) (Abstract!1933) (Class!1933) (Val!1933) (DelimiterValue!3866 (del!1993 List!10860)) (KeywordValue!1939 (value!61182 List!10860)) (CommentValue!3866 (value!61183 List!10860)) (WhitespaceValue!3866 (value!61184 List!10860)) (IndentationValue!1933 (value!61185 List!10860)) (String!13254) (Int32!1933) (Broken!9666 (value!61186 List!10860)) (Boolean!1934) (Unit!16465) (OperatorValue!1936 (op!1993 List!10860)) (IdentifierValue!3866 (value!61187 List!10860)) (IdentifierValue!3867 (value!61188 List!10860)) (WhitespaceValue!3867 (value!61189 List!10860)) (True!3866) (False!3866) (Broken!9667 (value!61190 List!10860)) (Broken!9668 (value!61191 List!10860)) (True!3867) (RightBrace!1933) (RightBracket!1933) (Colon!1933) (Null!1933) (Comma!1933) (LeftBracket!1933) (False!3867) (LeftBrace!1933) (ImaginaryLiteralValue!1933 (text!13977 List!10860)) (StringLiteralValue!5799 (value!61192 List!10860)) (EOFValue!1933 (value!61193 List!10860)) (IdentValue!1933 (value!61194 List!10860)) (DelimiterValue!3867 (value!61195 List!10860)) (DedentValue!1933 (value!61196 List!10860)) (NewLineValue!1933 (value!61197 List!10860)) (IntegerValue!5799 (value!61198 (_ BitVec 32)) (text!13978 List!10860)) (IntegerValue!5800 (value!61199 Int) (text!13979 List!10860)) (Times!1933) (Or!1933) (Equal!1933) (Minus!1933) (Broken!9669 (value!61200 List!10860)) (And!1933) (Div!1933) (LessEqual!1933) (Mod!1933) (Concat!5071) (Not!1933) (Plus!1933) (SpaceValue!1933 (value!61201 List!10860)) (IntegerValue!5801 (value!61202 Int) (text!13980 List!10860)) (StringLiteralValue!5800 (text!13981 List!10860)) (FloatLiteralValue!3867 (text!13982 List!10860)) (BytesLiteralValue!1933 (value!61203 List!10860)) (CommentValue!3867 (value!61204 List!10860)) (StringLiteralValue!5801 (value!61205 List!10860)) (ErrorTokenValue!1933 (msg!1994 List!10860)) )
))
(declare-datatypes ((Conc!3424 0))(
  ( (Node!3424 (left!9399 Conc!3424) (right!9729 Conc!3424) (csize!7078 Int) (cheight!3635 Int)) (Leaf!5368 (xs!6117 IArray!6853) (csize!7079 Int)) (Empty!3424) )
))
(declare-datatypes ((BalanceConc!6870 0))(
  ( (BalanceConc!6871 (c!187967 Conc!3424)) )
))
(declare-datatypes ((TokenValueInjection!3566 0))(
  ( (TokenValueInjection!3567 (toValue!2944 Int) (toChars!2803 Int)) )
))
(declare-datatypes ((Rule!3534 0))(
  ( (Rule!3535 (regex!1867 Regex!3137) (tag!2129 String!13252) (isSeparator!1867 Bool) (transformation!1867 TokenValueInjection!3566)) )
))
(declare-datatypes ((List!10861 0))(
  ( (Nil!10837) (Cons!10837 (h!16238 Rule!3534) (t!105429 List!10861)) )
))
(declare-fun rules!859 () List!10861)

(declare-fun isEmpty!6733 (List!10861) Bool)

(assert (=> start!95612 (= res!490401 (not (isEmpty!6733 rules!859)))))

(assert (=> start!95612 e!702134))

(declare-fun e!702138 () Bool)

(assert (=> start!95612 e!702138))

(declare-datatypes ((Token!3396 0))(
  ( (Token!3397 (value!61206 TokenValue!1933) (rule!3288 Rule!3534) (size!8412 Int) (originalCharacters!2421 List!10859)) )
))
(declare-datatypes ((List!10862 0))(
  ( (Nil!10838) (Cons!10838 (h!16239 Token!3396) (t!105430 List!10862)) )
))
(declare-datatypes ((IArray!6855 0))(
  ( (IArray!6856 (innerList!3485 List!10862)) )
))
(declare-datatypes ((Conc!3425 0))(
  ( (Node!3425 (left!9400 Conc!3425) (right!9730 Conc!3425) (csize!7080 Int) (cheight!3636 Int)) (Leaf!5369 (xs!6118 IArray!6855) (csize!7081 Int)) (Empty!3425) )
))
(declare-datatypes ((BalanceConc!6872 0))(
  ( (BalanceConc!6873 (c!187968 Conc!3425)) )
))
(declare-fun tokens!304 () BalanceConc!6872)

(declare-fun e!702139 () Bool)

(declare-fun inv!13910 (BalanceConc!6872) Bool)

(assert (=> start!95612 (and (inv!13910 tokens!304) e!702139)))

(declare-fun inv!13911 (CacheUp!716) Bool)

(assert (=> start!95612 (and (inv!13911 cacheUp!384) e!702118)))

(declare-fun e!702131 () Bool)

(declare-fun inv!13912 (CacheDown!720) Bool)

(assert (=> start!95612 (and (inv!13912 cacheDown!397) e!702131)))

(declare-fun mapNonEmpty!6158 () Bool)

(declare-fun tp!328471 () Bool)

(declare-fun tp!328485 () Bool)

(assert (=> mapNonEmpty!6158 (= mapRes!6159 (and tp!328471 tp!328485))))

(declare-fun mapValue!6158 () List!10858)

(declare-fun mapRest!6159 () (Array (_ BitVec 32) List!10858))

(declare-fun mapKey!6159 () (_ BitVec 32))

(assert (=> mapNonEmpty!6158 (= (arr!2010 (_values!1555 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) (store mapRest!6159 mapKey!6159 mapValue!6158))))

(declare-fun b!1107351 () Bool)

(declare-datatypes ((PrintableTokens!440 0))(
  ( (PrintableTokens!441 (rules!9155 List!10861) (tokens!1424 BalanceConc!6872)) )
))
(declare-datatypes ((Option!2465 0))(
  ( (None!2464) (Some!2464 (v!20046 PrintableTokens!440)) )
))
(declare-fun e!702137 () Option!2465)

(assert (=> b!1107351 (= e!702137 None!2464)))

(declare-fun tp!328479 () Bool)

(declare-fun tp!328472 () Bool)

(declare-fun e!702123 () Bool)

(declare-fun array_inv!1450 (array!4508) Bool)

(assert (=> b!1107352 (= e!702123 (and tp!328487 tp!328472 tp!328479 (array_inv!1448 (_keys!1570 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) (array_inv!1450 (_values!1555 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) e!702129))))

(declare-fun b!1107353 () Bool)

(declare-fun res!490402 () Bool)

(assert (=> b!1107353 (=> (not res!490402) (not e!702134))))

(declare-datatypes ((LexerInterface!1578 0))(
  ( (LexerInterfaceExt!1575 (__x!7570 Int)) (Lexer!1576) )
))
(declare-fun rulesInvariant!1453 (LexerInterface!1578 List!10861) Bool)

(assert (=> b!1107353 (= res!490402 (rulesInvariant!1453 Lexer!1576 rules!859))))

(declare-fun b!1107354 () Bool)

(declare-fun e!702126 () Bool)

(assert (=> b!1107354 (= e!702126 e!702123)))

(declare-fun b!1107355 () Bool)

(declare-fun e!702127 () Bool)

(assert (=> b!1107355 (= e!702127 e!702126)))

(declare-fun b!1107356 () Bool)

(declare-fun e!702125 () Bool)

(assert (=> b!1107356 (= e!702134 e!702125)))

(declare-fun res!490403 () Bool)

(assert (=> b!1107356 (=> (not res!490403) (not e!702125))))

(declare-fun lt!376065 () Option!2465)

(declare-fun isEmpty!6734 (Option!2465) Bool)

(assert (=> b!1107356 (= res!490403 (not (isEmpty!6734 lt!376065)))))

(assert (=> b!1107356 (= lt!376065 e!702137)))

(declare-fun c!187965 () Bool)

(declare-datatypes ((tuple3!1096 0))(
  ( (tuple3!1097 (_1!6781 Bool) (_2!6781 CacheUp!716) (_3!839 CacheDown!720)) )
))
(declare-fun separableTokensMem!6 (LexerInterface!1578 BalanceConc!6872 List!10861 CacheUp!716 CacheDown!720) tuple3!1096)

(assert (=> b!1107356 (= c!187965 (_1!6781 (separableTokensMem!6 Lexer!1576 tokens!304 rules!859 cacheUp!384 cacheDown!397)))))

(declare-fun b!1107357 () Bool)

(declare-fun res!490404 () Bool)

(assert (=> b!1107357 (=> (not res!490404) (not e!702134))))

(declare-fun rulesProduceEachTokenIndividually!621 (LexerInterface!1578 List!10861 BalanceConc!6872) Bool)

(assert (=> b!1107357 (= res!490404 (rulesProduceEachTokenIndividually!621 Lexer!1576 rules!859 tokens!304))))

(declare-fun e!702121 () Bool)

(assert (=> b!1107358 (= e!702121 (and tp!328474 tp!328470))))

(declare-fun b!1107359 () Bool)

(declare-fun e!702120 () Bool)

(declare-fun tp!328476 () Bool)

(assert (=> b!1107359 (= e!702138 (and e!702120 tp!328476))))

(declare-fun tp!328486 () Bool)

(declare-fun b!1107360 () Bool)

(declare-fun inv!13907 (String!13252) Bool)

(declare-fun inv!13913 (TokenValueInjection!3566) Bool)

(assert (=> b!1107360 (= e!702120 (and tp!328486 (inv!13907 (tag!2129 (h!16238 rules!859))) (inv!13913 (transformation!1867 (h!16238 rules!859))) e!702121))))

(assert (=> b!1107361 (= e!702130 (and e!702122 tp!328481))))

(declare-fun b!1107362 () Bool)

(declare-fun tp!328480 () Bool)

(declare-fun mapRes!6158 () Bool)

(assert (=> b!1107362 (= e!702135 (and tp!328480 mapRes!6158))))

(declare-fun condMapEmpty!6158 () Bool)

(declare-fun mapDefault!6158 () List!10857)

(assert (=> b!1107362 (= condMapEmpty!6158 (= (arr!2009 (_values!1554 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) ((as const (Array (_ BitVec 32) List!10857)) mapDefault!6158)))))

(declare-fun mapNonEmpty!6159 () Bool)

(declare-fun tp!328488 () Bool)

(declare-fun tp!328482 () Bool)

(assert (=> mapNonEmpty!6159 (= mapRes!6158 (and tp!328488 tp!328482))))

(declare-fun mapKey!6158 () (_ BitVec 32))

(declare-fun mapValue!6159 () List!10857)

(declare-fun mapRest!6158 () (Array (_ BitVec 32) List!10857))

(assert (=> mapNonEmpty!6159 (= (arr!2009 (_values!1554 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) (store mapRest!6158 mapKey!6158 mapValue!6159))))

(declare-fun lt!376067 () PrintableTokens!440)

(declare-fun b!1107363 () Bool)

(assert (=> b!1107363 (= e!702125 (or (not (= (rules!9155 lt!376067) rules!859)) (not (= (tokens!1424 lt!376067) tokens!304))))))

(declare-fun get!3782 (Option!2465) PrintableTokens!440)

(assert (=> b!1107363 (= lt!376067 (get!3782 lt!376065))))

(declare-fun b!1107364 () Bool)

(declare-fun tp!328483 () Bool)

(declare-fun inv!13914 (Conc!3425) Bool)

(assert (=> b!1107364 (= e!702139 (and (inv!13914 (c!187968 tokens!304)) tp!328483))))

(declare-fun mapIsEmpty!6158 () Bool)

(assert (=> mapIsEmpty!6158 mapRes!6159))

(declare-fun b!1107365 () Bool)

(assert (=> b!1107365 (= e!702137 (Some!2464 (PrintableTokens!441 rules!859 tokens!304)))))

(declare-fun b!1107366 () Bool)

(declare-fun e!702136 () Bool)

(assert (=> b!1107366 (= e!702131 e!702136)))

(declare-fun e!702133 () Bool)

(assert (=> b!1107367 (= e!702136 (and e!702133 tp!328475))))

(declare-fun mapIsEmpty!6159 () Bool)

(assert (=> mapIsEmpty!6159 mapRes!6158))

(declare-fun b!1107368 () Bool)

(declare-fun lt!376066 () MutLongMap!1276)

(assert (=> b!1107368 (= e!702133 (and e!702127 ((_ is LongMap!1276) lt!376066)))))

(assert (=> b!1107368 (= lt!376066 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))

(declare-fun b!1107369 () Bool)

(assert (=> b!1107369 (= e!702128 e!702140)))

(assert (= (and start!95612 res!490401) b!1107353))

(assert (= (and b!1107353 res!490402) b!1107357))

(assert (= (and b!1107357 res!490404) b!1107356))

(assert (= (and b!1107356 c!187965) b!1107365))

(assert (= (and b!1107356 (not c!187965)) b!1107351))

(assert (= (and b!1107356 res!490403) b!1107363))

(assert (= b!1107360 b!1107358))

(assert (= b!1107359 b!1107360))

(assert (= (and start!95612 ((_ is Cons!10837) rules!859)) b!1107359))

(assert (= start!95612 b!1107364))

(assert (= (and b!1107362 condMapEmpty!6158) mapIsEmpty!6159))

(assert (= (and b!1107362 (not condMapEmpty!6158)) mapNonEmpty!6159))

(assert (= b!1107346 b!1107362))

(assert (= b!1107369 b!1107346))

(assert (= b!1107347 b!1107369))

(assert (= (and b!1107348 ((_ is LongMap!1275) (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))) b!1107347))

(assert (= b!1107361 b!1107348))

(assert (= (and b!1107350 ((_ is HashMap!1247) (cache!1628 cacheUp!384))) b!1107361))

(assert (= start!95612 b!1107350))

(assert (= (and b!1107349 condMapEmpty!6159) mapIsEmpty!6158))

(assert (= (and b!1107349 (not condMapEmpty!6159)) mapNonEmpty!6158))

(assert (= b!1107352 b!1107349))

(assert (= b!1107354 b!1107352))

(assert (= b!1107355 b!1107354))

(assert (= (and b!1107368 ((_ is LongMap!1276) (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))) b!1107355))

(assert (= b!1107367 b!1107368))

(assert (= (and b!1107366 ((_ is HashMap!1248) (cache!1629 cacheDown!397))) b!1107367))

(assert (= start!95612 b!1107366))

(declare-fun m!1264571 () Bool)

(assert (=> b!1107364 m!1264571))

(declare-fun m!1264573 () Bool)

(assert (=> b!1107352 m!1264573))

(declare-fun m!1264575 () Bool)

(assert (=> b!1107352 m!1264575))

(declare-fun m!1264577 () Bool)

(assert (=> mapNonEmpty!6158 m!1264577))

(declare-fun m!1264579 () Bool)

(assert (=> start!95612 m!1264579))

(declare-fun m!1264581 () Bool)

(assert (=> start!95612 m!1264581))

(declare-fun m!1264583 () Bool)

(assert (=> start!95612 m!1264583))

(declare-fun m!1264585 () Bool)

(assert (=> start!95612 m!1264585))

(declare-fun m!1264587 () Bool)

(assert (=> b!1107356 m!1264587))

(declare-fun m!1264589 () Bool)

(assert (=> b!1107356 m!1264589))

(declare-fun m!1264591 () Bool)

(assert (=> mapNonEmpty!6159 m!1264591))

(declare-fun m!1264593 () Bool)

(assert (=> b!1107360 m!1264593))

(declare-fun m!1264595 () Bool)

(assert (=> b!1107360 m!1264595))

(declare-fun m!1264597 () Bool)

(assert (=> b!1107353 m!1264597))

(declare-fun m!1264599 () Bool)

(assert (=> b!1107346 m!1264599))

(declare-fun m!1264601 () Bool)

(assert (=> b!1107346 m!1264601))

(declare-fun m!1264603 () Bool)

(assert (=> b!1107363 m!1264603))

(declare-fun m!1264605 () Bool)

(assert (=> b!1107357 m!1264605))

(check-sat b_and!79189 (not b!1107356) (not b!1107364) (not b_next!26927) (not b!1107349) b_and!79191 (not b!1107357) (not b!1107346) b_and!79181 (not b!1107362) (not b!1107359) (not b!1107353) (not b!1107352) (not b_next!26929) (not mapNonEmpty!6159) b_and!79183 (not b_next!26925) (not b_next!26931) (not start!95612) b_and!79185 (not b_next!26935) (not mapNonEmpty!6158) (not b_next!26933) (not b!1107360) (not b!1107363) b_and!79187)
(check-sat b_and!79183 b_and!79189 (not b_next!26927) b_and!79191 (not b_next!26933) b_and!79181 b_and!79187 (not b_next!26929) (not b_next!26925) (not b_next!26931) b_and!79185 (not b_next!26935))
(get-model)

(declare-fun d!313442 () Bool)

(declare-fun c!187971 () Bool)

(assert (=> d!313442 (= c!187971 ((_ is Node!3425) (c!187968 tokens!304)))))

(declare-fun e!702145 () Bool)

(assert (=> d!313442 (= (inv!13914 (c!187968 tokens!304)) e!702145)))

(declare-fun b!1107376 () Bool)

(declare-fun inv!13915 (Conc!3425) Bool)

(assert (=> b!1107376 (= e!702145 (inv!13915 (c!187968 tokens!304)))))

(declare-fun b!1107377 () Bool)

(declare-fun e!702146 () Bool)

(assert (=> b!1107377 (= e!702145 e!702146)))

(declare-fun res!490409 () Bool)

(assert (=> b!1107377 (= res!490409 (not ((_ is Leaf!5369) (c!187968 tokens!304))))))

(assert (=> b!1107377 (=> res!490409 e!702146)))

(declare-fun b!1107378 () Bool)

(declare-fun inv!13916 (Conc!3425) Bool)

(assert (=> b!1107378 (= e!702146 (inv!13916 (c!187968 tokens!304)))))

(assert (= (and d!313442 c!187971) b!1107376))

(assert (= (and d!313442 (not c!187971)) b!1107377))

(assert (= (and b!1107377 (not res!490409)) b!1107378))

(declare-fun m!1264607 () Bool)

(assert (=> b!1107376 m!1264607))

(declare-fun m!1264609 () Bool)

(assert (=> b!1107378 m!1264609))

(assert (=> b!1107364 d!313442))

(declare-fun d!313444 () Bool)

(assert (=> d!313444 (= (inv!13907 (tag!2129 (h!16238 rules!859))) (= (mod (str.len (value!61180 (tag!2129 (h!16238 rules!859)))) 2) 0))))

(assert (=> b!1107360 d!313444))

(declare-fun d!313446 () Bool)

(declare-fun res!490412 () Bool)

(declare-fun e!702149 () Bool)

(assert (=> d!313446 (=> (not res!490412) (not e!702149))))

(declare-fun semiInverseModEq!708 (Int Int) Bool)

(assert (=> d!313446 (= res!490412 (semiInverseModEq!708 (toChars!2803 (transformation!1867 (h!16238 rules!859))) (toValue!2944 (transformation!1867 (h!16238 rules!859)))))))

(assert (=> d!313446 (= (inv!13913 (transformation!1867 (h!16238 rules!859))) e!702149)))

(declare-fun b!1107381 () Bool)

(declare-fun equivClasses!675 (Int Int) Bool)

(assert (=> b!1107381 (= e!702149 (equivClasses!675 (toChars!2803 (transformation!1867 (h!16238 rules!859))) (toValue!2944 (transformation!1867 (h!16238 rules!859)))))))

(assert (= (and d!313446 res!490412) b!1107381))

(declare-fun m!1264611 () Bool)

(assert (=> d!313446 m!1264611))

(declare-fun m!1264613 () Bool)

(assert (=> b!1107381 m!1264613))

(assert (=> b!1107360 d!313446))

(declare-fun d!313448 () Bool)

(declare-fun res!490415 () Bool)

(declare-fun e!702152 () Bool)

(assert (=> d!313448 (=> (not res!490415) (not e!702152))))

(declare-fun rulesValid!639 (LexerInterface!1578 List!10861) Bool)

(assert (=> d!313448 (= res!490415 (rulesValid!639 Lexer!1576 rules!859))))

(assert (=> d!313448 (= (rulesInvariant!1453 Lexer!1576 rules!859) e!702152)))

(declare-fun b!1107384 () Bool)

(declare-datatypes ((List!10863 0))(
  ( (Nil!10839) (Cons!10839 (h!16240 String!13252) (t!105435 List!10863)) )
))
(declare-fun noDuplicateTag!639 (LexerInterface!1578 List!10861 List!10863) Bool)

(assert (=> b!1107384 (= e!702152 (noDuplicateTag!639 Lexer!1576 rules!859 Nil!10839))))

(assert (= (and d!313448 res!490415) b!1107384))

(declare-fun m!1264615 () Bool)

(assert (=> d!313448 m!1264615))

(declare-fun m!1264617 () Bool)

(assert (=> b!1107384 m!1264617))

(assert (=> b!1107353 d!313448))

(declare-fun d!313450 () Bool)

(assert (=> d!313450 (= (get!3782 lt!376065) (v!20046 lt!376065))))

(assert (=> b!1107363 d!313450))

(declare-fun b!1107398 () Bool)

(declare-fun e!702164 () Bool)

(assert (=> b!1107398 (= e!702164 true)))

(declare-fun b!1107397 () Bool)

(declare-fun e!702163 () Bool)

(assert (=> b!1107397 (= e!702163 e!702164)))

(declare-fun b!1107396 () Bool)

(declare-fun e!702162 () Bool)

(assert (=> b!1107396 (= e!702162 e!702163)))

(declare-fun d!313452 () Bool)

(assert (=> d!313452 e!702162))

(assert (= b!1107397 b!1107398))

(assert (= b!1107396 b!1107397))

(assert (= (and d!313452 ((_ is Cons!10837) rules!859)) b!1107396))

(declare-fun order!6615 () Int)

(declare-fun lambda!44738 () Int)

(declare-fun order!6617 () Int)

(declare-fun dynLambda!4758 (Int Int) Int)

(declare-fun dynLambda!4759 (Int Int) Int)

(assert (=> b!1107398 (< (dynLambda!4758 order!6615 (toValue!2944 (transformation!1867 (h!16238 rules!859)))) (dynLambda!4759 order!6617 lambda!44738))))

(declare-fun order!6619 () Int)

(declare-fun dynLambda!4760 (Int Int) Int)

(assert (=> b!1107398 (< (dynLambda!4760 order!6619 (toChars!2803 (transformation!1867 (h!16238 rules!859)))) (dynLambda!4759 order!6617 lambda!44738))))

(assert (=> d!313452 true))

(declare-fun e!702155 () Bool)

(assert (=> d!313452 e!702155))

(declare-fun res!490418 () Bool)

(assert (=> d!313452 (=> (not res!490418) (not e!702155))))

(declare-fun lt!376071 () Bool)

(declare-fun forall!2543 (List!10862 Int) Bool)

(declare-fun list!3894 (BalanceConc!6872) List!10862)

(assert (=> d!313452 (= res!490418 (= lt!376071 (forall!2543 (list!3894 tokens!304) lambda!44738)))))

(declare-fun forall!2544 (BalanceConc!6872 Int) Bool)

(assert (=> d!313452 (= lt!376071 (forall!2544 tokens!304 lambda!44738))))

(assert (=> d!313452 (not (isEmpty!6733 rules!859))))

(assert (=> d!313452 (= (rulesProduceEachTokenIndividually!621 Lexer!1576 rules!859 tokens!304) lt!376071)))

(declare-fun b!1107387 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!460 (LexerInterface!1578 List!10861 List!10862) Bool)

(assert (=> b!1107387 (= e!702155 (= lt!376071 (rulesProduceEachTokenIndividuallyList!460 Lexer!1576 rules!859 (list!3894 tokens!304))))))

(assert (= (and d!313452 res!490418) b!1107387))

(declare-fun m!1264619 () Bool)

(assert (=> d!313452 m!1264619))

(assert (=> d!313452 m!1264619))

(declare-fun m!1264621 () Bool)

(assert (=> d!313452 m!1264621))

(declare-fun m!1264623 () Bool)

(assert (=> d!313452 m!1264623))

(assert (=> d!313452 m!1264579))

(assert (=> b!1107387 m!1264619))

(assert (=> b!1107387 m!1264619))

(declare-fun m!1264625 () Bool)

(assert (=> b!1107387 m!1264625))

(assert (=> b!1107357 d!313452))

(declare-fun d!313454 () Bool)

(assert (=> d!313454 (= (isEmpty!6733 rules!859) ((_ is Nil!10837) rules!859))))

(assert (=> start!95612 d!313454))

(declare-fun d!313456 () Bool)

(declare-fun isBalanced!939 (Conc!3425) Bool)

(assert (=> d!313456 (= (inv!13910 tokens!304) (isBalanced!939 (c!187968 tokens!304)))))

(declare-fun bs!260065 () Bool)

(assert (= bs!260065 d!313456))

(declare-fun m!1264627 () Bool)

(assert (=> bs!260065 m!1264627))

(assert (=> start!95612 d!313456))

(declare-fun d!313458 () Bool)

(declare-fun res!490421 () Bool)

(declare-fun e!702167 () Bool)

(assert (=> d!313458 (=> (not res!490421) (not e!702167))))

(assert (=> d!313458 (= res!490421 ((_ is HashMap!1247) (cache!1628 cacheUp!384)))))

(assert (=> d!313458 (= (inv!13911 cacheUp!384) e!702167)))

(declare-fun b!1107403 () Bool)

(declare-fun validCacheMapUp!116 (MutableMap!1247) Bool)

(assert (=> b!1107403 (= e!702167 (validCacheMapUp!116 (cache!1628 cacheUp!384)))))

(assert (= (and d!313458 res!490421) b!1107403))

(declare-fun m!1264629 () Bool)

(assert (=> b!1107403 m!1264629))

(assert (=> start!95612 d!313458))

(declare-fun d!313460 () Bool)

(declare-fun res!490424 () Bool)

(declare-fun e!702170 () Bool)

(assert (=> d!313460 (=> (not res!490424) (not e!702170))))

(assert (=> d!313460 (= res!490424 ((_ is HashMap!1248) (cache!1629 cacheDown!397)))))

(assert (=> d!313460 (= (inv!13912 cacheDown!397) e!702170)))

(declare-fun b!1107406 () Bool)

(declare-fun validCacheMapDown!116 (MutableMap!1248) Bool)

(assert (=> b!1107406 (= e!702170 (validCacheMapDown!116 (cache!1629 cacheDown!397)))))

(assert (= (and d!313460 res!490424) b!1107406))

(declare-fun m!1264631 () Bool)

(assert (=> b!1107406 m!1264631))

(assert (=> start!95612 d!313460))

(declare-fun d!313462 () Bool)

(assert (=> d!313462 (= (array_inv!1448 (_keys!1570 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) (bvsge (size!8409 (_keys!1570 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107352 d!313462))

(declare-fun d!313464 () Bool)

(assert (=> d!313464 (= (array_inv!1450 (_values!1555 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) (bvsge (size!8411 (_values!1555 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107352 d!313464))

(declare-fun d!313466 () Bool)

(assert (=> d!313466 (= (array_inv!1448 (_keys!1569 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) (bvsge (size!8409 (_keys!1569 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107346 d!313466))

(declare-fun d!313468 () Bool)

(assert (=> d!313468 (= (array_inv!1449 (_values!1554 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) (bvsge (size!8410 (_values!1554 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384))))))) #b00000000000000000000000000000000))))

(assert (=> b!1107346 d!313468))

(declare-fun d!313470 () Bool)

(assert (=> d!313470 (= (isEmpty!6734 lt!376065) (not ((_ is Some!2464) lt!376065)))))

(assert (=> b!1107356 d!313470))

(declare-fun d!313472 () Bool)

(declare-fun lt!376076 () tuple3!1096)

(declare-fun separableTokens!56 (LexerInterface!1578 BalanceConc!6872 List!10861) Bool)

(assert (=> d!313472 (= (_1!6781 lt!376076) (separableTokens!56 Lexer!1576 tokens!304 rules!859))))

(declare-fun lt!376077 () tuple3!1096)

(assert (=> d!313472 (= lt!376076 (tuple3!1097 (_1!6781 lt!376077) (_2!6781 lt!376077) (_3!839 lt!376077)))))

(declare-fun tokensListTwoByTwoPredicateSeparableMem!4 (LexerInterface!1578 BalanceConc!6872 Int List!10861 CacheUp!716 CacheDown!720) tuple3!1096)

(assert (=> d!313472 (= lt!376077 (tokensListTwoByTwoPredicateSeparableMem!4 Lexer!1576 tokens!304 0 rules!859 cacheUp!384 cacheDown!397))))

(assert (=> d!313472 (not (isEmpty!6733 rules!859))))

(assert (=> d!313472 (= (separableTokensMem!6 Lexer!1576 tokens!304 rules!859 cacheUp!384 cacheDown!397) lt!376076)))

(declare-fun bs!260066 () Bool)

(assert (= bs!260066 d!313472))

(declare-fun m!1264633 () Bool)

(assert (=> bs!260066 m!1264633))

(declare-fun m!1264635 () Bool)

(assert (=> bs!260066 m!1264635))

(assert (=> bs!260066 m!1264579))

(assert (=> b!1107356 d!313472))

(declare-fun tp!328497 () Bool)

(declare-fun tp!328495 () Bool)

(declare-fun e!702175 () Bool)

(declare-fun b!1107415 () Bool)

(assert (=> b!1107415 (= e!702175 (and (inv!13914 (left!9400 (c!187968 tokens!304))) tp!328495 (inv!13914 (right!9730 (c!187968 tokens!304))) tp!328497))))

(declare-fun b!1107417 () Bool)

(declare-fun e!702176 () Bool)

(declare-fun tp!328496 () Bool)

(assert (=> b!1107417 (= e!702176 tp!328496)))

(declare-fun b!1107416 () Bool)

(declare-fun inv!13917 (IArray!6855) Bool)

(assert (=> b!1107416 (= e!702175 (and (inv!13917 (xs!6118 (c!187968 tokens!304))) e!702176))))

(assert (=> b!1107364 (= tp!328483 (and (inv!13914 (c!187968 tokens!304)) e!702175))))

(assert (= (and b!1107364 ((_ is Node!3425) (c!187968 tokens!304))) b!1107415))

(assert (= b!1107416 b!1107417))

(assert (= (and b!1107364 ((_ is Leaf!5369) (c!187968 tokens!304))) b!1107416))

(declare-fun m!1264637 () Bool)

(assert (=> b!1107415 m!1264637))

(declare-fun m!1264639 () Bool)

(assert (=> b!1107415 m!1264639))

(declare-fun m!1264641 () Bool)

(assert (=> b!1107416 m!1264641))

(assert (=> b!1107364 m!1264571))

(declare-fun b!1107428 () Bool)

(declare-fun e!702179 () Bool)

(declare-fun tp_is_empty!5717 () Bool)

(assert (=> b!1107428 (= e!702179 tp_is_empty!5717)))

(declare-fun b!1107431 () Bool)

(declare-fun tp!328509 () Bool)

(declare-fun tp!328510 () Bool)

(assert (=> b!1107431 (= e!702179 (and tp!328509 tp!328510))))

(assert (=> b!1107360 (= tp!328486 e!702179)))

(declare-fun b!1107430 () Bool)

(declare-fun tp!328511 () Bool)

(assert (=> b!1107430 (= e!702179 tp!328511)))

(declare-fun b!1107429 () Bool)

(declare-fun tp!328512 () Bool)

(declare-fun tp!328508 () Bool)

(assert (=> b!1107429 (= e!702179 (and tp!328512 tp!328508))))

(assert (= (and b!1107360 ((_ is ElementMatch!3137) (regex!1867 (h!16238 rules!859)))) b!1107428))

(assert (= (and b!1107360 ((_ is Concat!5070) (regex!1867 (h!16238 rules!859)))) b!1107429))

(assert (= (and b!1107360 ((_ is Star!3137) (regex!1867 (h!16238 rules!859)))) b!1107430))

(assert (= (and b!1107360 ((_ is Union!3137) (regex!1867 (h!16238 rules!859)))) b!1107431))

(declare-fun b!1107446 () Bool)

(declare-fun setRes!7792 () Bool)

(declare-fun mapValue!6162 () List!10858)

(declare-fun tp!328535 () Bool)

(declare-fun tp!328538 () Bool)

(declare-fun e!702192 () Bool)

(declare-fun e!702196 () Bool)

(declare-fun inv!13918 (Context!1046) Bool)

(assert (=> b!1107446 (= e!702196 (and tp!328535 (inv!13918 (_2!6779 (_1!6780 (h!16235 mapValue!6162)))) e!702192 tp_is_empty!5717 setRes!7792 tp!328538))))

(declare-fun condSetEmpty!7792 () Bool)

(assert (=> b!1107446 (= condSetEmpty!7792 (= (_2!6780 (h!16235 mapValue!6162)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun mapNonEmpty!6162 () Bool)

(declare-fun mapRes!6162 () Bool)

(declare-fun tp!328541 () Bool)

(assert (=> mapNonEmpty!6162 (= mapRes!6162 (and tp!328541 e!702196))))

(declare-fun mapKey!6162 () (_ BitVec 32))

(declare-fun mapRest!6162 () (Array (_ BitVec 32) List!10858))

(assert (=> mapNonEmpty!6162 (= mapRest!6159 (store mapRest!6162 mapKey!6162 mapValue!6162))))

(declare-fun condMapEmpty!6162 () Bool)

(declare-fun mapDefault!6162 () List!10858)

(assert (=> mapNonEmpty!6158 (= condMapEmpty!6162 (= mapRest!6159 ((as const (Array (_ BitVec 32) List!10858)) mapDefault!6162)))))

(declare-fun e!702195 () Bool)

(assert (=> mapNonEmpty!6158 (= tp!328471 (and e!702195 mapRes!6162))))

(declare-fun b!1107447 () Bool)

(declare-fun e!702194 () Bool)

(declare-fun tp!328537 () Bool)

(assert (=> b!1107447 (= e!702194 tp!328537)))

(declare-fun setIsEmpty!7791 () Bool)

(declare-fun setRes!7791 () Bool)

(assert (=> setIsEmpty!7791 setRes!7791))

(declare-fun b!1107448 () Bool)

(declare-fun e!702197 () Bool)

(declare-fun tp!328539 () Bool)

(assert (=> b!1107448 (= e!702197 tp!328539)))

(declare-fun mapIsEmpty!6162 () Bool)

(assert (=> mapIsEmpty!6162 mapRes!6162))

(declare-fun tp!328542 () Bool)

(declare-fun setNonEmpty!7791 () Bool)

(declare-fun setElem!7791 () Context!1046)

(assert (=> setNonEmpty!7791 (= setRes!7792 (and tp!328542 (inv!13918 setElem!7791) e!702197))))

(declare-fun setRest!7791 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7791 (= (_2!6780 (h!16235 mapValue!6162)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7791 true) setRest!7791))))

(declare-fun setIsEmpty!7792 () Bool)

(assert (=> setIsEmpty!7792 setRes!7792))

(declare-fun b!1107449 () Bool)

(declare-fun tp!328543 () Bool)

(assert (=> b!1107449 (= e!702192 tp!328543)))

(declare-fun b!1107450 () Bool)

(declare-fun tp!328536 () Bool)

(declare-fun tp!328545 () Bool)

(assert (=> b!1107450 (= e!702195 (and tp!328545 (inv!13918 (_2!6779 (_1!6780 (h!16235 mapDefault!6162)))) e!702194 tp_is_empty!5717 setRes!7791 tp!328536))))

(declare-fun condSetEmpty!7791 () Bool)

(assert (=> b!1107450 (= condSetEmpty!7791 (= (_2!6780 (h!16235 mapDefault!6162)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107451 () Bool)

(declare-fun e!702193 () Bool)

(declare-fun tp!328544 () Bool)

(assert (=> b!1107451 (= e!702193 tp!328544)))

(declare-fun setElem!7792 () Context!1046)

(declare-fun setNonEmpty!7792 () Bool)

(declare-fun tp!328540 () Bool)

(assert (=> setNonEmpty!7792 (= setRes!7791 (and tp!328540 (inv!13918 setElem!7792) e!702193))))

(declare-fun setRest!7792 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7792 (= (_2!6780 (h!16235 mapDefault!6162)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7792 true) setRest!7792))))

(assert (= (and mapNonEmpty!6158 condMapEmpty!6162) mapIsEmpty!6162))

(assert (= (and mapNonEmpty!6158 (not condMapEmpty!6162)) mapNonEmpty!6162))

(assert (= b!1107446 b!1107449))

(assert (= (and b!1107446 condSetEmpty!7792) setIsEmpty!7792))

(assert (= (and b!1107446 (not condSetEmpty!7792)) setNonEmpty!7791))

(assert (= setNonEmpty!7791 b!1107448))

(assert (= (and mapNonEmpty!6162 ((_ is Cons!10834) mapValue!6162)) b!1107446))

(assert (= b!1107450 b!1107447))

(assert (= (and b!1107450 condSetEmpty!7791) setIsEmpty!7791))

(assert (= (and b!1107450 (not condSetEmpty!7791)) setNonEmpty!7792))

(assert (= setNonEmpty!7792 b!1107451))

(assert (= (and mapNonEmpty!6158 ((_ is Cons!10834) mapDefault!6162)) b!1107450))

(declare-fun m!1264643 () Bool)

(assert (=> b!1107446 m!1264643))

(declare-fun m!1264645 () Bool)

(assert (=> mapNonEmpty!6162 m!1264645))

(declare-fun m!1264647 () Bool)

(assert (=> setNonEmpty!7792 m!1264647))

(declare-fun m!1264649 () Bool)

(assert (=> b!1107450 m!1264649))

(declare-fun m!1264651 () Bool)

(assert (=> setNonEmpty!7791 m!1264651))

(declare-fun b!1107460 () Bool)

(declare-fun e!702205 () Bool)

(declare-fun tp!328560 () Bool)

(assert (=> b!1107460 (= e!702205 tp!328560)))

(declare-fun setIsEmpty!7795 () Bool)

(declare-fun setRes!7795 () Bool)

(assert (=> setIsEmpty!7795 setRes!7795))

(declare-fun tp!328556 () Bool)

(declare-fun e!702206 () Bool)

(declare-fun tp!328559 () Bool)

(declare-fun b!1107461 () Bool)

(assert (=> b!1107461 (= e!702206 (and tp!328559 (inv!13918 (_2!6779 (_1!6780 (h!16235 mapValue!6158)))) e!702205 tp_is_empty!5717 setRes!7795 tp!328556))))

(declare-fun condSetEmpty!7795 () Bool)

(assert (=> b!1107461 (= condSetEmpty!7795 (= (_2!6780 (h!16235 mapValue!6158)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107462 () Bool)

(declare-fun e!702204 () Bool)

(declare-fun tp!328558 () Bool)

(assert (=> b!1107462 (= e!702204 tp!328558)))

(assert (=> mapNonEmpty!6158 (= tp!328485 e!702206)))

(declare-fun setNonEmpty!7795 () Bool)

(declare-fun tp!328557 () Bool)

(declare-fun setElem!7795 () Context!1046)

(assert (=> setNonEmpty!7795 (= setRes!7795 (and tp!328557 (inv!13918 setElem!7795) e!702204))))

(declare-fun setRest!7795 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7795 (= (_2!6780 (h!16235 mapValue!6158)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7795 true) setRest!7795))))

(assert (= b!1107461 b!1107460))

(assert (= (and b!1107461 condSetEmpty!7795) setIsEmpty!7795))

(assert (= (and b!1107461 (not condSetEmpty!7795)) setNonEmpty!7795))

(assert (= setNonEmpty!7795 b!1107462))

(assert (= (and mapNonEmpty!6158 ((_ is Cons!10834) mapValue!6158)) b!1107461))

(declare-fun m!1264653 () Bool)

(assert (=> b!1107461 m!1264653))

(declare-fun m!1264655 () Bool)

(assert (=> setNonEmpty!7795 m!1264655))

(declare-fun b!1107463 () Bool)

(declare-fun e!702208 () Bool)

(declare-fun tp!328565 () Bool)

(assert (=> b!1107463 (= e!702208 tp!328565)))

(declare-fun setIsEmpty!7796 () Bool)

(declare-fun setRes!7796 () Bool)

(assert (=> setIsEmpty!7796 setRes!7796))

(declare-fun e!702209 () Bool)

(declare-fun tp!328561 () Bool)

(declare-fun tp!328564 () Bool)

(declare-fun b!1107464 () Bool)

(assert (=> b!1107464 (= e!702209 (and tp!328564 (inv!13918 (_2!6779 (_1!6780 (h!16235 mapDefault!6159)))) e!702208 tp_is_empty!5717 setRes!7796 tp!328561))))

(declare-fun condSetEmpty!7796 () Bool)

(assert (=> b!1107464 (= condSetEmpty!7796 (= (_2!6780 (h!16235 mapDefault!6159)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107465 () Bool)

(declare-fun e!702207 () Bool)

(declare-fun tp!328563 () Bool)

(assert (=> b!1107465 (= e!702207 tp!328563)))

(assert (=> b!1107349 (= tp!328478 e!702209)))

(declare-fun tp!328562 () Bool)

(declare-fun setElem!7796 () Context!1046)

(declare-fun setNonEmpty!7796 () Bool)

(assert (=> setNonEmpty!7796 (= setRes!7796 (and tp!328562 (inv!13918 setElem!7796) e!702207))))

(declare-fun setRest!7796 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7796 (= (_2!6780 (h!16235 mapDefault!6159)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7796 true) setRest!7796))))

(assert (= b!1107464 b!1107463))

(assert (= (and b!1107464 condSetEmpty!7796) setIsEmpty!7796))

(assert (= (and b!1107464 (not condSetEmpty!7796)) setNonEmpty!7796))

(assert (= setNonEmpty!7796 b!1107465))

(assert (= (and b!1107349 ((_ is Cons!10834) mapDefault!6159)) b!1107464))

(declare-fun m!1264657 () Bool)

(assert (=> b!1107464 m!1264657))

(declare-fun m!1264659 () Bool)

(assert (=> setNonEmpty!7796 m!1264659))

(declare-fun b!1107476 () Bool)

(declare-fun b_free!26873 () Bool)

(declare-fun b_next!26937 () Bool)

(assert (=> b!1107476 (= b_free!26873 (not b_next!26937))))

(declare-fun tp!328576 () Bool)

(declare-fun b_and!79193 () Bool)

(assert (=> b!1107476 (= tp!328576 b_and!79193)))

(declare-fun b_free!26875 () Bool)

(declare-fun b_next!26939 () Bool)

(assert (=> b!1107476 (= b_free!26875 (not b_next!26939))))

(declare-fun tp!328577 () Bool)

(declare-fun b_and!79195 () Bool)

(assert (=> b!1107476 (= tp!328577 b_and!79195)))

(declare-fun e!702221 () Bool)

(assert (=> b!1107476 (= e!702221 (and tp!328576 tp!328577))))

(declare-fun b!1107475 () Bool)

(declare-fun e!702218 () Bool)

(declare-fun tp!328574 () Bool)

(assert (=> b!1107475 (= e!702218 (and tp!328574 (inv!13907 (tag!2129 (h!16238 (t!105429 rules!859)))) (inv!13913 (transformation!1867 (h!16238 (t!105429 rules!859)))) e!702221))))

(declare-fun b!1107474 () Bool)

(declare-fun e!702220 () Bool)

(declare-fun tp!328575 () Bool)

(assert (=> b!1107474 (= e!702220 (and e!702218 tp!328575))))

(assert (=> b!1107359 (= tp!328476 e!702220)))

(assert (= b!1107475 b!1107476))

(assert (= b!1107474 b!1107475))

(assert (= (and b!1107359 ((_ is Cons!10837) (t!105429 rules!859))) b!1107474))

(declare-fun m!1264661 () Bool)

(assert (=> b!1107475 m!1264661))

(declare-fun m!1264663 () Bool)

(assert (=> b!1107475 m!1264663))

(declare-fun b!1107477 () Bool)

(declare-fun e!702223 () Bool)

(declare-fun tp!328582 () Bool)

(assert (=> b!1107477 (= e!702223 tp!328582)))

(declare-fun setIsEmpty!7797 () Bool)

(declare-fun setRes!7797 () Bool)

(assert (=> setIsEmpty!7797 setRes!7797))

(declare-fun b!1107478 () Bool)

(declare-fun tp!328578 () Bool)

(declare-fun e!702224 () Bool)

(declare-fun tp!328581 () Bool)

(assert (=> b!1107478 (= e!702224 (and tp!328581 (inv!13918 (_2!6779 (_1!6780 (h!16235 (zeroValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))))) e!702223 tp_is_empty!5717 setRes!7797 tp!328578))))

(declare-fun condSetEmpty!7797 () Bool)

(assert (=> b!1107478 (= condSetEmpty!7797 (= (_2!6780 (h!16235 (zeroValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107479 () Bool)

(declare-fun e!702222 () Bool)

(declare-fun tp!328580 () Bool)

(assert (=> b!1107479 (= e!702222 tp!328580)))

(assert (=> b!1107352 (= tp!328472 e!702224)))

(declare-fun tp!328579 () Bool)

(declare-fun setElem!7797 () Context!1046)

(declare-fun setNonEmpty!7797 () Bool)

(assert (=> setNonEmpty!7797 (= setRes!7797 (and tp!328579 (inv!13918 setElem!7797) e!702222))))

(declare-fun setRest!7797 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7797 (= (_2!6780 (h!16235 (zeroValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7797 true) setRest!7797))))

(assert (= b!1107478 b!1107477))

(assert (= (and b!1107478 condSetEmpty!7797) setIsEmpty!7797))

(assert (= (and b!1107478 (not condSetEmpty!7797)) setNonEmpty!7797))

(assert (= setNonEmpty!7797 b!1107479))

(assert (= (and b!1107352 ((_ is Cons!10834) (zeroValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))) b!1107478))

(declare-fun m!1264665 () Bool)

(assert (=> b!1107478 m!1264665))

(declare-fun m!1264667 () Bool)

(assert (=> setNonEmpty!7797 m!1264667))

(declare-fun b!1107480 () Bool)

(declare-fun e!702226 () Bool)

(declare-fun tp!328587 () Bool)

(assert (=> b!1107480 (= e!702226 tp!328587)))

(declare-fun setIsEmpty!7798 () Bool)

(declare-fun setRes!7798 () Bool)

(assert (=> setIsEmpty!7798 setRes!7798))

(declare-fun tp!328586 () Bool)

(declare-fun b!1107481 () Bool)

(declare-fun tp!328583 () Bool)

(declare-fun e!702227 () Bool)

(assert (=> b!1107481 (= e!702227 (and tp!328586 (inv!13918 (_2!6779 (_1!6780 (h!16235 (minValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))))) e!702226 tp_is_empty!5717 setRes!7798 tp!328583))))

(declare-fun condSetEmpty!7798 () Bool)

(assert (=> b!1107481 (= condSetEmpty!7798 (= (_2!6780 (h!16235 (minValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107482 () Bool)

(declare-fun e!702225 () Bool)

(declare-fun tp!328585 () Bool)

(assert (=> b!1107482 (= e!702225 tp!328585)))

(assert (=> b!1107352 (= tp!328479 e!702227)))

(declare-fun setElem!7798 () Context!1046)

(declare-fun setNonEmpty!7798 () Bool)

(declare-fun tp!328584 () Bool)

(assert (=> setNonEmpty!7798 (= setRes!7798 (and tp!328584 (inv!13918 setElem!7798) e!702225))))

(declare-fun setRest!7798 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7798 (= (_2!6780 (h!16235 (minValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7798 true) setRest!7798))))

(assert (= b!1107481 b!1107480))

(assert (= (and b!1107481 condSetEmpty!7798) setIsEmpty!7798))

(assert (= (and b!1107481 (not condSetEmpty!7798)) setNonEmpty!7798))

(assert (= setNonEmpty!7798 b!1107482))

(assert (= (and b!1107352 ((_ is Cons!10834) (minValue!1533 (v!20044 (underlying!2745 (v!20045 (underlying!2746 (cache!1629 cacheDown!397)))))))) b!1107481))

(declare-fun m!1264669 () Bool)

(assert (=> b!1107481 m!1264669))

(declare-fun m!1264671 () Bool)

(assert (=> setNonEmpty!7798 m!1264671))

(declare-fun condMapEmpty!6165 () Bool)

(declare-fun mapDefault!6165 () List!10857)

(assert (=> mapNonEmpty!6159 (= condMapEmpty!6165 (= mapRest!6158 ((as const (Array (_ BitVec 32) List!10857)) mapDefault!6165)))))

(declare-fun e!702241 () Bool)

(declare-fun mapRes!6165 () Bool)

(assert (=> mapNonEmpty!6159 (= tp!328488 (and e!702241 mapRes!6165))))

(declare-fun mapIsEmpty!6165 () Bool)

(assert (=> mapIsEmpty!6165 mapRes!6165))

(declare-fun tp!328612 () Bool)

(declare-fun e!702240 () Bool)

(declare-fun setRes!7804 () Bool)

(declare-fun setElem!7804 () Context!1046)

(declare-fun setNonEmpty!7803 () Bool)

(assert (=> setNonEmpty!7803 (= setRes!7804 (and tp!328612 (inv!13918 setElem!7804) e!702240))))

(declare-fun mapValue!6165 () List!10857)

(declare-fun setRest!7804 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7803 (= (_2!6778 (h!16234 mapValue!6165)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7804 true) setRest!7804))))

(declare-fun setRes!7803 () Bool)

(declare-fun e!702242 () Bool)

(declare-fun b!1107497 () Bool)

(declare-fun tp!328609 () Bool)

(assert (=> b!1107497 (= e!702241 (and (inv!13918 (_1!6777 (_1!6778 (h!16234 mapDefault!6165)))) e!702242 tp_is_empty!5717 setRes!7803 tp!328609))))

(declare-fun condSetEmpty!7804 () Bool)

(assert (=> b!1107497 (= condSetEmpty!7804 (= (_2!6778 (h!16234 mapDefault!6165)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun setNonEmpty!7804 () Bool)

(declare-fun tp!328613 () Bool)

(declare-fun setElem!7803 () Context!1046)

(declare-fun e!702245 () Bool)

(assert (=> setNonEmpty!7804 (= setRes!7803 (and tp!328613 (inv!13918 setElem!7803) e!702245))))

(declare-fun setRest!7803 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7804 (= (_2!6778 (h!16234 mapDefault!6165)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7803 true) setRest!7803))))

(declare-fun mapNonEmpty!6165 () Bool)

(declare-fun tp!328606 () Bool)

(declare-fun e!702244 () Bool)

(assert (=> mapNonEmpty!6165 (= mapRes!6165 (and tp!328606 e!702244))))

(declare-fun mapRest!6165 () (Array (_ BitVec 32) List!10857))

(declare-fun mapKey!6165 () (_ BitVec 32))

(assert (=> mapNonEmpty!6165 (= mapRest!6158 (store mapRest!6165 mapKey!6165 mapValue!6165))))

(declare-fun tp!328611 () Bool)

(declare-fun b!1107498 () Bool)

(declare-fun e!702243 () Bool)

(assert (=> b!1107498 (= e!702244 (and (inv!13918 (_1!6777 (_1!6778 (h!16234 mapValue!6165)))) e!702243 tp_is_empty!5717 setRes!7804 tp!328611))))

(declare-fun condSetEmpty!7803 () Bool)

(assert (=> b!1107498 (= condSetEmpty!7803 (= (_2!6778 (h!16234 mapValue!6165)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107499 () Bool)

(declare-fun tp!328608 () Bool)

(assert (=> b!1107499 (= e!702242 tp!328608)))

(declare-fun b!1107500 () Bool)

(declare-fun tp!328610 () Bool)

(assert (=> b!1107500 (= e!702243 tp!328610)))

(declare-fun setIsEmpty!7803 () Bool)

(assert (=> setIsEmpty!7803 setRes!7803))

(declare-fun b!1107501 () Bool)

(declare-fun tp!328614 () Bool)

(assert (=> b!1107501 (= e!702245 tp!328614)))

(declare-fun setIsEmpty!7804 () Bool)

(assert (=> setIsEmpty!7804 setRes!7804))

(declare-fun b!1107502 () Bool)

(declare-fun tp!328607 () Bool)

(assert (=> b!1107502 (= e!702240 tp!328607)))

(assert (= (and mapNonEmpty!6159 condMapEmpty!6165) mapIsEmpty!6165))

(assert (= (and mapNonEmpty!6159 (not condMapEmpty!6165)) mapNonEmpty!6165))

(assert (= b!1107498 b!1107500))

(assert (= (and b!1107498 condSetEmpty!7803) setIsEmpty!7804))

(assert (= (and b!1107498 (not condSetEmpty!7803)) setNonEmpty!7803))

(assert (= setNonEmpty!7803 b!1107502))

(assert (= (and mapNonEmpty!6165 ((_ is Cons!10833) mapValue!6165)) b!1107498))

(assert (= b!1107497 b!1107499))

(assert (= (and b!1107497 condSetEmpty!7804) setIsEmpty!7803))

(assert (= (and b!1107497 (not condSetEmpty!7804)) setNonEmpty!7804))

(assert (= setNonEmpty!7804 b!1107501))

(assert (= (and mapNonEmpty!6159 ((_ is Cons!10833) mapDefault!6165)) b!1107497))

(declare-fun m!1264673 () Bool)

(assert (=> b!1107497 m!1264673))

(declare-fun m!1264675 () Bool)

(assert (=> setNonEmpty!7804 m!1264675))

(declare-fun m!1264677 () Bool)

(assert (=> mapNonEmpty!6165 m!1264677))

(declare-fun m!1264679 () Bool)

(assert (=> b!1107498 m!1264679))

(declare-fun m!1264681 () Bool)

(assert (=> setNonEmpty!7803 m!1264681))

(declare-fun e!702254 () Bool)

(assert (=> mapNonEmpty!6159 (= tp!328482 e!702254)))

(declare-fun setIsEmpty!7807 () Bool)

(declare-fun setRes!7807 () Bool)

(assert (=> setIsEmpty!7807 setRes!7807))

(declare-fun tp!328623 () Bool)

(declare-fun e!702253 () Bool)

(declare-fun b!1107511 () Bool)

(assert (=> b!1107511 (= e!702254 (and (inv!13918 (_1!6777 (_1!6778 (h!16234 mapValue!6159)))) e!702253 tp_is_empty!5717 setRes!7807 tp!328623))))

(declare-fun condSetEmpty!7807 () Bool)

(assert (=> b!1107511 (= condSetEmpty!7807 (= (_2!6778 (h!16234 mapValue!6159)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107512 () Bool)

(declare-fun e!702252 () Bool)

(declare-fun tp!328626 () Bool)

(assert (=> b!1107512 (= e!702252 tp!328626)))

(declare-fun b!1107513 () Bool)

(declare-fun tp!328624 () Bool)

(assert (=> b!1107513 (= e!702253 tp!328624)))

(declare-fun tp!328625 () Bool)

(declare-fun setNonEmpty!7807 () Bool)

(declare-fun setElem!7807 () Context!1046)

(assert (=> setNonEmpty!7807 (= setRes!7807 (and tp!328625 (inv!13918 setElem!7807) e!702252))))

(declare-fun setRest!7807 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7807 (= (_2!6778 (h!16234 mapValue!6159)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7807 true) setRest!7807))))

(assert (= b!1107511 b!1107513))

(assert (= (and b!1107511 condSetEmpty!7807) setIsEmpty!7807))

(assert (= (and b!1107511 (not condSetEmpty!7807)) setNonEmpty!7807))

(assert (= setNonEmpty!7807 b!1107512))

(assert (= (and mapNonEmpty!6159 ((_ is Cons!10833) mapValue!6159)) b!1107511))

(declare-fun m!1264683 () Bool)

(assert (=> b!1107511 m!1264683))

(declare-fun m!1264685 () Bool)

(assert (=> setNonEmpty!7807 m!1264685))

(declare-fun e!702257 () Bool)

(assert (=> b!1107346 (= tp!328477 e!702257)))

(declare-fun setIsEmpty!7808 () Bool)

(declare-fun setRes!7808 () Bool)

(assert (=> setIsEmpty!7808 setRes!7808))

(declare-fun b!1107514 () Bool)

(declare-fun e!702256 () Bool)

(declare-fun tp!328627 () Bool)

(assert (=> b!1107514 (= e!702257 (and (inv!13918 (_1!6777 (_1!6778 (h!16234 (zeroValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))))) e!702256 tp_is_empty!5717 setRes!7808 tp!328627))))

(declare-fun condSetEmpty!7808 () Bool)

(assert (=> b!1107514 (= condSetEmpty!7808 (= (_2!6778 (h!16234 (zeroValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107515 () Bool)

(declare-fun e!702255 () Bool)

(declare-fun tp!328630 () Bool)

(assert (=> b!1107515 (= e!702255 tp!328630)))

(declare-fun b!1107516 () Bool)

(declare-fun tp!328628 () Bool)

(assert (=> b!1107516 (= e!702256 tp!328628)))

(declare-fun tp!328629 () Bool)

(declare-fun setElem!7808 () Context!1046)

(declare-fun setNonEmpty!7808 () Bool)

(assert (=> setNonEmpty!7808 (= setRes!7808 (and tp!328629 (inv!13918 setElem!7808) e!702255))))

(declare-fun setRest!7808 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7808 (= (_2!6778 (h!16234 (zeroValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7808 true) setRest!7808))))

(assert (= b!1107514 b!1107516))

(assert (= (and b!1107514 condSetEmpty!7808) setIsEmpty!7808))

(assert (= (and b!1107514 (not condSetEmpty!7808)) setNonEmpty!7808))

(assert (= setNonEmpty!7808 b!1107515))

(assert (= (and b!1107346 ((_ is Cons!10833) (zeroValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))) b!1107514))

(declare-fun m!1264687 () Bool)

(assert (=> b!1107514 m!1264687))

(declare-fun m!1264689 () Bool)

(assert (=> setNonEmpty!7808 m!1264689))

(declare-fun e!702260 () Bool)

(assert (=> b!1107346 (= tp!328484 e!702260)))

(declare-fun setIsEmpty!7809 () Bool)

(declare-fun setRes!7809 () Bool)

(assert (=> setIsEmpty!7809 setRes!7809))

(declare-fun b!1107517 () Bool)

(declare-fun tp!328631 () Bool)

(declare-fun e!702259 () Bool)

(assert (=> b!1107517 (= e!702260 (and (inv!13918 (_1!6777 (_1!6778 (h!16234 (minValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))))) e!702259 tp_is_empty!5717 setRes!7809 tp!328631))))

(declare-fun condSetEmpty!7809 () Bool)

(assert (=> b!1107517 (= condSetEmpty!7809 (= (_2!6778 (h!16234 (minValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107518 () Bool)

(declare-fun e!702258 () Bool)

(declare-fun tp!328634 () Bool)

(assert (=> b!1107518 (= e!702258 tp!328634)))

(declare-fun b!1107519 () Bool)

(declare-fun tp!328632 () Bool)

(assert (=> b!1107519 (= e!702259 tp!328632)))

(declare-fun setNonEmpty!7809 () Bool)

(declare-fun setElem!7809 () Context!1046)

(declare-fun tp!328633 () Bool)

(assert (=> setNonEmpty!7809 (= setRes!7809 (and tp!328633 (inv!13918 setElem!7809) e!702258))))

(declare-fun setRest!7809 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7809 (= (_2!6778 (h!16234 (minValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7809 true) setRest!7809))))

(assert (= b!1107517 b!1107519))

(assert (= (and b!1107517 condSetEmpty!7809) setIsEmpty!7809))

(assert (= (and b!1107517 (not condSetEmpty!7809)) setNonEmpty!7809))

(assert (= setNonEmpty!7809 b!1107518))

(assert (= (and b!1107346 ((_ is Cons!10833) (minValue!1532 (v!20042 (underlying!2743 (v!20043 (underlying!2744 (cache!1628 cacheUp!384)))))))) b!1107517))

(declare-fun m!1264691 () Bool)

(assert (=> b!1107517 m!1264691))

(declare-fun m!1264693 () Bool)

(assert (=> setNonEmpty!7809 m!1264693))

(declare-fun e!702263 () Bool)

(assert (=> b!1107362 (= tp!328480 e!702263)))

(declare-fun setIsEmpty!7810 () Bool)

(declare-fun setRes!7810 () Bool)

(assert (=> setIsEmpty!7810 setRes!7810))

(declare-fun e!702262 () Bool)

(declare-fun tp!328635 () Bool)

(declare-fun b!1107520 () Bool)

(assert (=> b!1107520 (= e!702263 (and (inv!13918 (_1!6777 (_1!6778 (h!16234 mapDefault!6158)))) e!702262 tp_is_empty!5717 setRes!7810 tp!328635))))

(declare-fun condSetEmpty!7810 () Bool)

(assert (=> b!1107520 (= condSetEmpty!7810 (= (_2!6778 (h!16234 mapDefault!6158)) ((as const (Array Context!1046 Bool)) false)))))

(declare-fun b!1107521 () Bool)

(declare-fun e!702261 () Bool)

(declare-fun tp!328638 () Bool)

(assert (=> b!1107521 (= e!702261 tp!328638)))

(declare-fun b!1107522 () Bool)

(declare-fun tp!328636 () Bool)

(assert (=> b!1107522 (= e!702262 tp!328636)))

(declare-fun setElem!7810 () Context!1046)

(declare-fun setNonEmpty!7810 () Bool)

(declare-fun tp!328637 () Bool)

(assert (=> setNonEmpty!7810 (= setRes!7810 (and tp!328637 (inv!13918 setElem!7810) e!702261))))

(declare-fun setRest!7810 () (InoxSet Context!1046))

(assert (=> setNonEmpty!7810 (= (_2!6778 (h!16234 mapDefault!6158)) ((_ map or) (store ((as const (Array Context!1046 Bool)) false) setElem!7810 true) setRest!7810))))

(assert (= b!1107520 b!1107522))

(assert (= (and b!1107520 condSetEmpty!7810) setIsEmpty!7810))

(assert (= (and b!1107520 (not condSetEmpty!7810)) setNonEmpty!7810))

(assert (= setNonEmpty!7810 b!1107521))

(assert (= (and b!1107362 ((_ is Cons!10833) mapDefault!6158)) b!1107520))

(declare-fun m!1264695 () Bool)

(assert (=> b!1107520 m!1264695))

(declare-fun m!1264697 () Bool)

(assert (=> setNonEmpty!7810 m!1264697))

(check-sat (not b!1107464) (not b!1107417) (not b!1107474) (not b!1107479) (not b!1107446) (not b!1107478) (not setNonEmpty!7809) b_and!79183 (not b!1107517) (not setNonEmpty!7792) (not b!1107500) (not setNonEmpty!7803) (not b!1107511) b_and!79189 (not b!1107514) (not b!1107522) (not b!1107463) (not b!1107364) (not b!1107480) (not b_next!26931) (not b!1107447) (not setNonEmpty!7795) (not b!1107481) (not b_next!26925) (not b!1107403) (not b!1107384) b_and!79185 (not b_next!26935) (not b!1107387) tp_is_empty!5717 (not b_next!26927) b_and!79195 (not d!313448) (not b!1107406) (not setNonEmpty!7798) (not setNonEmpty!7797) (not b!1107462) (not b!1107415) (not b!1107376) (not b!1107449) (not b!1107451) (not b!1107518) b_and!79191 (not b!1107516) (not setNonEmpty!7804) (not b_next!26933) (not b!1107512) (not setNonEmpty!7810) (not mapNonEmpty!6165) (not b!1107521) (not b!1107520) (not b!1107502) (not setNonEmpty!7808) (not b!1107460) (not b!1107461) (not b!1107378) (not b!1107499) (not b!1107475) (not b!1107381) (not b!1107416) (not b!1107448) (not b!1107450) (not b_next!26937) (not b!1107515) b_and!79193 (not b!1107498) (not setNonEmpty!7791) (not b!1107497) (not b!1107477) (not b!1107519) (not setNonEmpty!7807) b_and!79181 (not setNonEmpty!7796) (not b!1107501) (not d!313472) (not b!1107482) (not d!313446) b_and!79187 (not b!1107431) (not b!1107396) (not d!313456) (not mapNonEmpty!6162) (not d!313452) (not b!1107430) (not b!1107513) (not b!1107465) (not b_next!26939) (not b!1107429) (not b_next!26929))
(check-sat b_and!79183 b_and!79189 b_and!79191 (not b_next!26933) b_and!79181 b_and!79187 (not b_next!26925) (not b_next!26931) b_and!79185 (not b_next!26935) (not b_next!26927) b_and!79195 (not b_next!26937) b_and!79193 (not b_next!26939) (not b_next!26929))
