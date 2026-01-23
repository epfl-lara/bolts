; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!139542 () Bool)

(assert start!139542)

(declare-fun b!1485131 () Bool)

(declare-fun b_free!38535 () Bool)

(declare-fun b_next!39239 () Bool)

(assert (=> b!1485131 (= b_free!38535 (not b_next!39239))))

(declare-fun tp!422183 () Bool)

(declare-fun b_and!103253 () Bool)

(assert (=> b!1485131 (= tp!422183 b_and!103253)))

(declare-fun b!1485122 () Bool)

(declare-fun b_free!38537 () Bool)

(declare-fun b_next!39241 () Bool)

(assert (=> b!1485122 (= b_free!38537 (not b_next!39241))))

(declare-fun tp!422180 () Bool)

(declare-fun b_and!103255 () Bool)

(assert (=> b!1485122 (= tp!422180 b_and!103255)))

(declare-fun b!1485113 () Bool)

(declare-fun b_free!38539 () Bool)

(declare-fun b_next!39243 () Bool)

(assert (=> b!1485113 (= b_free!38539 (not b_next!39243))))

(declare-fun tp!422193 () Bool)

(declare-fun b_and!103257 () Bool)

(assert (=> b!1485113 (= tp!422193 b_and!103257)))

(declare-fun b!1485134 () Bool)

(declare-fun b_free!38541 () Bool)

(declare-fun b_next!39245 () Bool)

(assert (=> b!1485134 (= b_free!38541 (not b_next!39245))))

(declare-fun tp!422191 () Bool)

(declare-fun b_and!103259 () Bool)

(assert (=> b!1485134 (= tp!422191 b_and!103259)))

(declare-fun b_free!38543 () Bool)

(declare-fun b_next!39247 () Bool)

(assert (=> b!1485134 (= b_free!38543 (not b_next!39247))))

(declare-fun tp!422185 () Bool)

(declare-fun b_and!103261 () Bool)

(assert (=> b!1485134 (= tp!422185 b_and!103261)))

(declare-fun b!1485127 () Bool)

(declare-fun b_free!38545 () Bool)

(declare-fun b_next!39249 () Bool)

(assert (=> b!1485127 (= b_free!38545 (not b_next!39249))))

(declare-fun tp!422200 () Bool)

(declare-fun b_and!103263 () Bool)

(assert (=> b!1485127 (= tp!422200 b_and!103263)))

(declare-fun b!1485104 () Bool)

(declare-fun b_free!38547 () Bool)

(declare-fun b_next!39251 () Bool)

(assert (=> b!1485104 (= b_free!38547 (not b_next!39251))))

(declare-fun tp!422196 () Bool)

(declare-fun b_and!103265 () Bool)

(assert (=> b!1485104 (= tp!422196 b_and!103265)))

(declare-fun b!1485128 () Bool)

(declare-fun b_free!38549 () Bool)

(declare-fun b_next!39253 () Bool)

(assert (=> b!1485128 (= b_free!38549 (not b_next!39253))))

(declare-fun tp!422182 () Bool)

(declare-fun b_and!103267 () Bool)

(assert (=> b!1485128 (= tp!422182 b_and!103267)))

(declare-fun b!1485101 () Bool)

(declare-fun e!949959 () Bool)

(declare-fun e!949946 () Bool)

(declare-datatypes ((C!8424 0))(
  ( (C!8425 (val!4784 Int)) )
))
(declare-datatypes ((Regex!4123 0))(
  ( (ElementMatch!4123 (c!243262 C!8424)) (Concat!7022 (regOne!8758 Regex!4123) (regTwo!8758 Regex!4123)) (EmptyExpr!4123) (Star!4123 (reg!4452 Regex!4123)) (EmptyLang!4123) (Union!4123 (regOne!8759 Regex!4123) (regTwo!8759 Regex!4123)) )
))
(declare-datatypes ((List!15842 0))(
  ( (Nil!15774) (Cons!15774 (h!21175 Regex!4123) (t!137764 List!15842)) )
))
(declare-datatypes ((Context!1282 0))(
  ( (Context!1283 (exprs!1141 List!15842)) )
))
(declare-datatypes ((tuple3!1224 0))(
  ( (tuple3!1225 (_1!8127 Regex!4123) (_2!8127 Context!1282) (_3!905 C!8424)) )
))
(declare-datatypes ((array!4870 0))(
  ( (array!4871 (arr!2174 (Array (_ BitVec 32) (_ BitVec 64))) (size!12769 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!14444 0))(
  ( (tuple2!14445 (_1!8128 tuple3!1224) (_2!8128 (InoxSet Context!1282))) )
))
(declare-datatypes ((List!15843 0))(
  ( (Nil!15775) (Cons!15775 (h!21176 tuple2!14444) (t!137765 List!15843)) )
))
(declare-datatypes ((array!4872 0))(
  ( (array!4873 (arr!2175 (Array (_ BitVec 32) List!15843)) (size!12770 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2752 0))(
  ( (LongMapFixedSize!2753 (defaultEntry!1736 Int) (mask!4526 (_ BitVec 32)) (extraKeys!1623 (_ BitVec 32)) (zeroValue!1633 List!15843) (minValue!1633 List!15843) (_size!2833 (_ BitVec 32)) (_keys!1670 array!4870) (_values!1655 array!4872) (_vacant!1437 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5389 0))(
  ( (Cell!5390 (v!22606 LongMapFixedSize!2752)) )
))
(declare-datatypes ((MutLongMap!1376 0))(
  ( (LongMap!1376 (underlying!2961 Cell!5389)) (MutLongMapExt!1375 (__x!9663 Int)) )
))
(declare-fun lt!515732 () MutLongMap!1376)

(get-info :version)

(assert (=> b!1485101 (= e!949959 (and e!949946 ((_ is LongMap!1376) lt!515732)))))

(declare-datatypes ((Cell!5391 0))(
  ( (Cell!5392 (v!22607 MutLongMap!1376)) )
))
(declare-datatypes ((Hashable!1320 0))(
  ( (HashableExt!1319 (__x!9664 Int)) )
))
(declare-datatypes ((MutableMap!1320 0))(
  ( (MutableMapExt!1319 (__x!9665 Int)) (HashMap!1320 (underlying!2962 Cell!5391) (hashF!3239 Hashable!1320) (_size!2834 (_ BitVec 32)) (defaultValue!1480 Int)) )
))
(declare-datatypes ((CacheDown!784 0))(
  ( (CacheDown!785 (cache!1701 MutableMap!1320)) )
))
(declare-fun cacheDown!629 () CacheDown!784)

(assert (=> b!1485101 (= lt!515732 (v!22607 (underlying!2962 (cache!1701 cacheDown!629))))))

(declare-fun b!1485102 () Bool)

(declare-fun res!670647 () Bool)

(declare-fun e!949942 () Bool)

(assert (=> b!1485102 (=> (not res!670647) (not e!949942))))

(declare-datatypes ((tuple2!14446 0))(
  ( (tuple2!14447 (_1!8129 Context!1282) (_2!8129 C!8424)) )
))
(declare-datatypes ((tuple2!14448 0))(
  ( (tuple2!14449 (_1!8130 tuple2!14446) (_2!8130 (InoxSet Context!1282))) )
))
(declare-datatypes ((List!15844 0))(
  ( (Nil!15776) (Cons!15776 (h!21177 tuple2!14448) (t!137766 List!15844)) )
))
(declare-datatypes ((array!4874 0))(
  ( (array!4875 (arr!2176 (Array (_ BitVec 32) List!15844)) (size!12771 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2754 0))(
  ( (LongMapFixedSize!2755 (defaultEntry!1737 Int) (mask!4527 (_ BitVec 32)) (extraKeys!1624 (_ BitVec 32)) (zeroValue!1634 List!15844) (minValue!1634 List!15844) (_size!2835 (_ BitVec 32)) (_keys!1671 array!4870) (_values!1656 array!4874) (_vacant!1438 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1321 0))(
  ( (HashableExt!1320 (__x!9666 Int)) )
))
(declare-datatypes ((Cell!5393 0))(
  ( (Cell!5394 (v!22608 LongMapFixedSize!2754)) )
))
(declare-datatypes ((MutLongMap!1377 0))(
  ( (LongMap!1377 (underlying!2963 Cell!5393)) (MutLongMapExt!1376 (__x!9667 Int)) )
))
(declare-datatypes ((Cell!5395 0))(
  ( (Cell!5396 (v!22609 MutLongMap!1377)) )
))
(declare-datatypes ((MutableMap!1321 0))(
  ( (MutableMapExt!1320 (__x!9668 Int)) (HashMap!1321 (underlying!2964 Cell!5395) (hashF!3240 Hashable!1321) (_size!2836 (_ BitVec 32)) (defaultValue!1481 Int)) )
))
(declare-datatypes ((CacheUp!780 0))(
  ( (CacheUp!781 (cache!1702 MutableMap!1321)) )
))
(declare-fun cacheUp!616 () CacheUp!780)

(declare-fun valid!1082 (CacheUp!780) Bool)

(assert (=> b!1485102 (= res!670647 (valid!1082 cacheUp!616))))

(declare-fun b!1485103 () Bool)

(declare-fun e!949963 () Bool)

(declare-datatypes ((List!15845 0))(
  ( (Nil!15777) (Cons!15777 (h!21178 (_ BitVec 16)) (t!137767 List!15845)) )
))
(declare-datatypes ((TokenValue!2899 0))(
  ( (FloatLiteralValue!5798 (text!20738 List!15845)) (TokenValueExt!2898 (__x!9669 Int)) (Broken!14495 (value!89689 List!15845)) (Object!2966) (End!2899) (Def!2899) (Underscore!2899) (Match!2899) (Else!2899) (Error!2899) (Case!2899) (If!2899) (Extends!2899) (Abstract!2899) (Class!2899) (Val!2899) (DelimiterValue!5798 (del!2959 List!15845)) (KeywordValue!2905 (value!89690 List!15845)) (CommentValue!5798 (value!89691 List!15845)) (WhitespaceValue!5798 (value!89692 List!15845)) (IndentationValue!2899 (value!89693 List!15845)) (String!18754) (Int32!2899) (Broken!14496 (value!89694 List!15845)) (Boolean!2900) (Unit!25621) (OperatorValue!2902 (op!2959 List!15845)) (IdentifierValue!5798 (value!89695 List!15845)) (IdentifierValue!5799 (value!89696 List!15845)) (WhitespaceValue!5799 (value!89697 List!15845)) (True!5798) (False!5798) (Broken!14497 (value!89698 List!15845)) (Broken!14498 (value!89699 List!15845)) (True!5799) (RightBrace!2899) (RightBracket!2899) (Colon!2899) (Null!2899) (Comma!2899) (LeftBracket!2899) (False!5799) (LeftBrace!2899) (ImaginaryLiteralValue!2899 (text!20739 List!15845)) (StringLiteralValue!8697 (value!89700 List!15845)) (EOFValue!2899 (value!89701 List!15845)) (IdentValue!2899 (value!89702 List!15845)) (DelimiterValue!5799 (value!89703 List!15845)) (DedentValue!2899 (value!89704 List!15845)) (NewLineValue!2899 (value!89705 List!15845)) (IntegerValue!8697 (value!89706 (_ BitVec 32)) (text!20740 List!15845)) (IntegerValue!8698 (value!89707 Int) (text!20741 List!15845)) (Times!2899) (Or!2899) (Equal!2899) (Minus!2899) (Broken!14499 (value!89708 List!15845)) (And!2899) (Div!2899) (LessEqual!2899) (Mod!2899) (Concat!7023) (Not!2899) (Plus!2899) (SpaceValue!2899 (value!89709 List!15845)) (IntegerValue!8699 (value!89710 Int) (text!20742 List!15845)) (StringLiteralValue!8698 (text!20743 List!15845)) (FloatLiteralValue!5799 (text!20744 List!15845)) (BytesLiteralValue!2899 (value!89711 List!15845)) (CommentValue!5799 (value!89712 List!15845)) (StringLiteralValue!8699 (value!89713 List!15845)) (ErrorTokenValue!2899 (msg!2960 List!15845)) )
))
(declare-datatypes ((List!15846 0))(
  ( (Nil!15778) (Cons!15778 (h!21179 C!8424) (t!137768 List!15846)) )
))
(declare-datatypes ((IArray!10743 0))(
  ( (IArray!10744 (innerList!5429 List!15846)) )
))
(declare-datatypes ((Conc!5369 0))(
  ( (Node!5369 (left!13267 Conc!5369) (right!13597 Conc!5369) (csize!10968 Int) (cheight!5580 Int)) (Leaf!7976 (xs!8126 IArray!10743) (csize!10969 Int)) (Empty!5369) )
))
(declare-datatypes ((BalanceConc!10680 0))(
  ( (BalanceConc!10681 (c!243263 Conc!5369)) )
))
(declare-datatypes ((String!18755 0))(
  ( (String!18756 (value!89714 String)) )
))
(declare-datatypes ((TokenValueInjection!5458 0))(
  ( (TokenValueInjection!5459 (toValue!4150 Int) (toChars!4009 Int)) )
))
(declare-datatypes ((Rule!5418 0))(
  ( (Rule!5419 (regex!2809 Regex!4123) (tag!3073 String!18755) (isSeparator!2809 Bool) (transformation!2809 TokenValueInjection!5458)) )
))
(declare-datatypes ((Token!5280 0))(
  ( (Token!5281 (value!89715 TokenValue!2899) (rule!4586 Rule!5418) (size!12772 Int) (originalCharacters!3671 List!15846)) )
))
(declare-datatypes ((List!15847 0))(
  ( (Nil!15779) (Cons!15779 (h!21180 Token!5280) (t!137769 List!15847)) )
))
(declare-datatypes ((IArray!10745 0))(
  ( (IArray!10746 (innerList!5430 List!15847)) )
))
(declare-datatypes ((Conc!5370 0))(
  ( (Node!5370 (left!13268 Conc!5370) (right!13598 Conc!5370) (csize!10970 Int) (cheight!5581 Int)) (Leaf!7977 (xs!8127 IArray!10745) (csize!10971 Int)) (Empty!5370) )
))
(declare-datatypes ((BalanceConc!10682 0))(
  ( (BalanceConc!10683 (c!243264 Conc!5370)) )
))
(declare-fun acc!392 () BalanceConc!10682)

(declare-fun tp!422198 () Bool)

(declare-fun inv!20988 (Conc!5370) Bool)

(assert (=> b!1485103 (= e!949963 (and (inv!20988 (c!243264 acc!392)) tp!422198))))

(declare-fun e!949947 () Bool)

(declare-fun e!949933 () Bool)

(assert (=> b!1485104 (= e!949947 (and e!949933 tp!422196))))

(declare-fun b!1485105 () Bool)

(declare-fun res!670654 () Bool)

(assert (=> b!1485105 (=> (not res!670654) (not e!949942))))

(declare-datatypes ((tuple3!1226 0))(
  ( (tuple3!1227 (_1!8131 (InoxSet Context!1282)) (_2!8131 Int) (_3!906 Int)) )
))
(declare-datatypes ((tuple2!14450 0))(
  ( (tuple2!14451 (_1!8132 tuple3!1226) (_2!8132 Int)) )
))
(declare-datatypes ((List!15848 0))(
  ( (Nil!15780) (Cons!15780 (h!21181 tuple2!14450) (t!137770 List!15848)) )
))
(declare-datatypes ((array!4876 0))(
  ( (array!4877 (arr!2177 (Array (_ BitVec 32) List!15848)) (size!12773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2756 0))(
  ( (LongMapFixedSize!2757 (defaultEntry!1738 Int) (mask!4528 (_ BitVec 32)) (extraKeys!1625 (_ BitVec 32)) (zeroValue!1635 List!15848) (minValue!1635 List!15848) (_size!2837 (_ BitVec 32)) (_keys!1672 array!4870) (_values!1657 array!4876) (_vacant!1439 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5397 0))(
  ( (Cell!5398 (v!22610 LongMapFixedSize!2756)) )
))
(declare-datatypes ((MutLongMap!1378 0))(
  ( (LongMap!1378 (underlying!2965 Cell!5397)) (MutLongMapExt!1377 (__x!9670 Int)) )
))
(declare-datatypes ((Cell!5399 0))(
  ( (Cell!5400 (v!22611 MutLongMap!1378)) )
))
(declare-datatypes ((Hashable!1322 0))(
  ( (HashableExt!1321 (__x!9671 Int)) )
))
(declare-datatypes ((MutableMap!1322 0))(
  ( (MutableMapExt!1321 (__x!9672 Int)) (HashMap!1322 (underlying!2966 Cell!5399) (hashF!3241 Hashable!1322) (_size!2838 (_ BitVec 32)) (defaultValue!1482 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!204 0))(
  ( (CacheFurthestNullable!205 (cache!1703 MutableMap!1322) (totalInput!2237 BalanceConc!10680)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!204)

(declare-fun totalInput!458 () BalanceConc!10680)

(assert (=> b!1485105 (= res!670654 (= (totalInput!2237 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1485107 () Bool)

(declare-fun e!949935 () Bool)

(declare-fun e!949945 () Bool)

(assert (=> b!1485107 (= e!949935 e!949945)))

(declare-fun b!1485108 () Bool)

(declare-fun e!949930 () Bool)

(declare-fun e!949964 () Bool)

(declare-fun tp!422204 () Bool)

(assert (=> b!1485108 (= e!949930 (and e!949964 tp!422204))))

(declare-fun b!1485109 () Bool)

(declare-fun e!949948 () Bool)

(declare-fun e!949956 () Bool)

(assert (=> b!1485109 (= e!949948 e!949956)))

(declare-fun res!670644 () Bool)

(assert (=> b!1485109 (=> (not res!670644) (not e!949956))))

(declare-fun lt!515731 () List!15846)

(declare-fun lt!515737 () List!15846)

(assert (=> b!1485109 (= res!670644 (= lt!515731 lt!515737))))

(declare-fun lt!515740 () List!15846)

(declare-fun lt!515733 () List!15846)

(declare-fun ++!4249 (List!15846 List!15846) List!15846)

(assert (=> b!1485109 (= lt!515737 (++!4249 lt!515740 lt!515733))))

(declare-fun list!6263 (BalanceConc!10680) List!15846)

(assert (=> b!1485109 (= lt!515731 (list!6263 totalInput!458))))

(declare-fun input!1102 () BalanceConc!10680)

(assert (=> b!1485109 (= lt!515733 (list!6263 input!1102))))

(declare-fun treated!70 () BalanceConc!10680)

(assert (=> b!1485109 (= lt!515740 (list!6263 treated!70))))

(declare-fun mapIsEmpty!6564 () Bool)

(declare-fun mapRes!6564 () Bool)

(assert (=> mapIsEmpty!6564 mapRes!6564))

(declare-fun mapIsEmpty!6565 () Bool)

(declare-fun mapRes!6566 () Bool)

(assert (=> mapIsEmpty!6565 mapRes!6566))

(declare-fun b!1485110 () Bool)

(declare-fun res!670653 () Bool)

(declare-fun e!949952 () Bool)

(assert (=> b!1485110 (=> (not res!670653) (not e!949952))))

(declare-datatypes ((tuple2!14452 0))(
  ( (tuple2!14453 (_1!8133 BalanceConc!10682) (_2!8133 BalanceConc!10680)) )
))
(declare-fun lt!515736 () tuple2!14452)

(declare-fun isEmpty!9843 (List!15846) Bool)

(assert (=> b!1485110 (= res!670653 (isEmpty!9843 (list!6263 (_2!8133 lt!515736))))))

(declare-fun b!1485111 () Bool)

(declare-fun e!949943 () Bool)

(declare-fun tp!422190 () Bool)

(assert (=> b!1485111 (= e!949943 (and tp!422190 mapRes!6566))))

(declare-fun condMapEmpty!6566 () Bool)

(declare-fun mapDefault!6564 () List!15844)

(assert (=> b!1485111 (= condMapEmpty!6566 (= (arr!2176 (_values!1656 (v!22608 (underlying!2963 (v!22609 (underlying!2964 (cache!1702 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15844)) mapDefault!6564)))))

(declare-fun b!1485112 () Bool)

(declare-fun res!670646 () Bool)

(assert (=> b!1485112 (=> (not res!670646) (not e!949942))))

(declare-fun lt!515727 () tuple2!14452)

(declare-fun lt!515742 () tuple2!14452)

(assert (=> b!1485112 (= res!670646 (= (list!6263 (_2!8133 lt!515727)) (list!6263 (_2!8133 lt!515742))))))

(declare-fun e!949940 () Bool)

(declare-fun e!949937 () Bool)

(assert (=> b!1485113 (= e!949940 (and e!949937 tp!422193))))

(declare-fun b!1485114 () Bool)

(declare-datatypes ((List!15849 0))(
  ( (Nil!15781) (Cons!15781 (h!21182 Rule!5418) (t!137771 List!15849)) )
))
(declare-fun rules!1640 () List!15849)

(declare-fun tp!422186 () Bool)

(declare-fun e!949962 () Bool)

(declare-fun inv!20987 (String!18755) Bool)

(declare-fun inv!20989 (TokenValueInjection!5458) Bool)

(assert (=> b!1485114 (= e!949964 (and tp!422186 (inv!20987 (tag!3073 (h!21182 rules!1640))) (inv!20989 (transformation!2809 (h!21182 rules!1640))) e!949962))))

(declare-fun b!1485115 () Bool)

(declare-fun e!949929 () Bool)

(declare-fun tp!422208 () Bool)

(declare-fun inv!20990 (Conc!5369) Bool)

(assert (=> b!1485115 (= e!949929 (and (inv!20990 (c!243263 (totalInput!2237 cacheFurthestNullable!64))) tp!422208))))

(declare-fun b!1485106 () Bool)

(declare-fun e!949939 () Bool)

(declare-fun e!949953 () Bool)

(assert (=> b!1485106 (= e!949939 e!949953)))

(declare-fun res!670649 () Bool)

(assert (=> start!139542 (=> (not res!670649) (not e!949948))))

(declare-datatypes ((LexerInterface!2465 0))(
  ( (LexerInterfaceExt!2462 (__x!9673 Int)) (Lexer!2463) )
))
(declare-fun thiss!13241 () LexerInterface!2465)

(assert (=> start!139542 (= res!670649 ((_ is Lexer!2463) thiss!13241))))

(assert (=> start!139542 e!949948))

(declare-fun inv!20991 (BalanceConc!10682) Bool)

(assert (=> start!139542 (and (inv!20991 acc!392) e!949963)))

(declare-fun e!949955 () Bool)

(declare-fun inv!20992 (CacheUp!780) Bool)

(assert (=> start!139542 (and (inv!20992 cacheUp!616) e!949955)))

(declare-fun inv!20993 (CacheDown!784) Bool)

(assert (=> start!139542 (and (inv!20993 cacheDown!629) e!949935)))

(declare-fun e!949966 () Bool)

(declare-fun inv!20994 (BalanceConc!10680) Bool)

(assert (=> start!139542 (and (inv!20994 input!1102) e!949966)))

(declare-fun e!949960 () Bool)

(assert (=> start!139542 (and (inv!20994 treated!70) e!949960)))

(assert (=> start!139542 true))

(assert (=> start!139542 e!949930))

(declare-fun e!949965 () Bool)

(declare-fun inv!20995 (CacheFurthestNullable!204) Bool)

(assert (=> start!139542 (and (inv!20995 cacheFurthestNullable!64) e!949965)))

(declare-fun e!949932 () Bool)

(assert (=> start!139542 (and (inv!20994 totalInput!458) e!949932)))

(declare-fun b!1485116 () Bool)

(declare-fun res!670648 () Bool)

(assert (=> b!1485116 (=> (not res!670648) (not e!949942))))

(declare-fun valid!1083 (CacheFurthestNullable!204) Bool)

(assert (=> b!1485116 (= res!670648 (valid!1083 cacheFurthestNullable!64))))

(declare-fun b!1485117 () Bool)

(declare-fun tp!422206 () Bool)

(assert (=> b!1485117 (= e!949966 (and (inv!20990 (c!243263 input!1102)) tp!422206))))

(declare-fun b!1485118 () Bool)

(declare-fun e!949938 () Bool)

(declare-fun tp!422194 () Bool)

(declare-fun mapRes!6565 () Bool)

(assert (=> b!1485118 (= e!949938 (and tp!422194 mapRes!6565))))

(declare-fun condMapEmpty!6565 () Bool)

(declare-fun mapDefault!6566 () List!15843)

(assert (=> b!1485118 (= condMapEmpty!6565 (= (arr!2175 (_values!1655 (v!22606 (underlying!2961 (v!22607 (underlying!2962 (cache!1701 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15843)) mapDefault!6566)))))

(declare-fun b!1485119 () Bool)

(declare-fun tp!422195 () Bool)

(assert (=> b!1485119 (= e!949932 (and (inv!20990 (c!243263 totalInput!458)) tp!422195))))

(declare-fun b!1485120 () Bool)

(assert (=> b!1485120 (= e!949952 e!949942)))

(declare-fun res!670642 () Bool)

(assert (=> b!1485120 (=> (not res!670642) (not e!949942))))

(declare-fun list!6264 (BalanceConc!10682) List!15847)

(declare-fun ++!4250 (BalanceConc!10682 BalanceConc!10682) BalanceConc!10682)

(assert (=> b!1485120 (= res!670642 (= (list!6264 (_1!8133 lt!515727)) (list!6264 (++!4250 acc!392 (_1!8133 lt!515742)))))))

(declare-fun lexRec!302 (LexerInterface!2465 List!15849 BalanceConc!10680) tuple2!14452)

(assert (=> b!1485120 (= lt!515742 (lexRec!302 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1485120 (= lt!515727 (lexRec!302 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1485121 () Bool)

(declare-fun e!949957 () Bool)

(declare-fun e!949931 () Bool)

(assert (=> b!1485121 (= e!949957 e!949931)))

(declare-fun res!670641 () Bool)

(assert (=> b!1485121 (=> res!670641 e!949931)))

(declare-datatypes ((tuple2!14454 0))(
  ( (tuple2!14455 (_1!8134 Token!5280) (_2!8134 BalanceConc!10680)) )
))
(declare-datatypes ((Option!2892 0))(
  ( (None!2891) (Some!2891 (v!22612 tuple2!14454)) )
))
(declare-datatypes ((tuple4!586 0))(
  ( (tuple4!587 (_1!8135 Option!2892) (_2!8135 CacheUp!780) (_3!907 CacheDown!784) (_4!293 CacheFurthestNullable!204)) )
))
(declare-fun lt!515738 () tuple4!586)

(assert (=> b!1485121 (= res!670641 (not ((_ is Some!2891) (_1!8135 lt!515738))))))

(declare-fun maxPrefixZipperSequenceV3Mem!6 (LexerInterface!2465 List!15849 BalanceConc!10680 BalanceConc!10680 CacheUp!780 CacheDown!784 CacheFurthestNullable!204) tuple4!586)

(assert (=> b!1485121 (= lt!515738 (maxPrefixZipperSequenceV3Mem!6 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun tp!422184 () Bool)

(declare-fun tp!422201 () Bool)

(declare-fun array_inv!1579 (array!4870) Bool)

(declare-fun array_inv!1580 (array!4874) Bool)

(assert (=> b!1485122 (= e!949953 (and tp!422180 tp!422201 tp!422184 (array_inv!1579 (_keys!1671 (v!22608 (underlying!2963 (v!22609 (underlying!2964 (cache!1702 cacheUp!616))))))) (array_inv!1580 (_values!1656 (v!22608 (underlying!2963 (v!22609 (underlying!2964 (cache!1702 cacheUp!616))))))) e!949943))))

(declare-fun b!1485123 () Bool)

(declare-fun e!949950 () Bool)

(assert (=> b!1485123 (= e!949950 e!949939)))

(declare-fun b!1485124 () Bool)

(declare-fun e!949951 () Bool)

(declare-fun lt!515728 () MutLongMap!1378)

(assert (=> b!1485124 (= e!949937 (and e!949951 ((_ is LongMap!1378) lt!515728)))))

(assert (=> b!1485124 (= lt!515728 (v!22611 (underlying!2966 (cache!1703 cacheFurthestNullable!64))))))

(declare-fun b!1485125 () Bool)

(declare-fun e!949941 () Bool)

(declare-fun e!949936 () Bool)

(assert (=> b!1485125 (= e!949941 e!949936)))

(declare-fun b!1485126 () Bool)

(assert (=> b!1485126 (= e!949955 e!949947)))

(declare-fun mapNonEmpty!6564 () Bool)

(declare-fun tp!422192 () Bool)

(declare-fun tp!422187 () Bool)

(assert (=> mapNonEmpty!6564 (= mapRes!6566 (and tp!422192 tp!422187))))

(declare-fun mapValue!6565 () List!15844)

(declare-fun mapRest!6566 () (Array (_ BitVec 32) List!15844))

(declare-fun mapKey!6565 () (_ BitVec 32))

(assert (=> mapNonEmpty!6564 (= (arr!2176 (_values!1656 (v!22608 (underlying!2963 (v!22609 (underlying!2964 (cache!1702 cacheUp!616))))))) (store mapRest!6566 mapKey!6565 mapValue!6565))))

(declare-fun tp!422207 () Bool)

(declare-fun tp!422189 () Bool)

(declare-fun e!949949 () Bool)

(declare-fun array_inv!1581 (array!4876) Bool)

(assert (=> b!1485127 (= e!949936 (and tp!422200 tp!422189 tp!422207 (array_inv!1579 (_keys!1672 (v!22610 (underlying!2965 (v!22611 (underlying!2966 (cache!1703 cacheFurthestNullable!64))))))) (array_inv!1581 (_values!1657 (v!22610 (underlying!2965 (v!22611 (underlying!2966 (cache!1703 cacheFurthestNullable!64))))))) e!949949))))

(assert (=> b!1485128 (= e!949945 (and e!949959 tp!422182))))

(declare-fun b!1485129 () Bool)

(declare-fun tp!422205 () Bool)

(assert (=> b!1485129 (= e!949949 (and tp!422205 mapRes!6564))))

(declare-fun condMapEmpty!6564 () Bool)

(declare-fun mapDefault!6565 () List!15848)

(assert (=> b!1485129 (= condMapEmpty!6564 (= (arr!2177 (_values!1657 (v!22610 (underlying!2965 (v!22611 (underlying!2966 (cache!1703 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15848)) mapDefault!6565)))))

(declare-fun b!1485130 () Bool)

(declare-fun lt!515734 () MutLongMap!1377)

(assert (=> b!1485130 (= e!949933 (and e!949950 ((_ is LongMap!1377) lt!515734)))))

(assert (=> b!1485130 (= lt!515734 (v!22609 (underlying!2964 (cache!1702 cacheUp!616))))))

(declare-fun tp!422203 () Bool)

(declare-fun tp!422209 () Bool)

(declare-fun e!949961 () Bool)

(declare-fun array_inv!1582 (array!4872) Bool)

(assert (=> b!1485131 (= e!949961 (and tp!422183 tp!422203 tp!422209 (array_inv!1579 (_keys!1670 (v!22606 (underlying!2961 (v!22607 (underlying!2962 (cache!1701 cacheDown!629))))))) (array_inv!1582 (_values!1655 (v!22606 (underlying!2961 (v!22607 (underlying!2962 (cache!1701 cacheDown!629))))))) e!949938))))

(declare-fun b!1485132 () Bool)

(declare-fun e!949958 () Bool)

(assert (=> b!1485132 (= e!949946 e!949958)))

(declare-fun b!1485133 () Bool)

(assert (=> b!1485133 (= e!949956 e!949952)))

(declare-fun res!670643 () Bool)

(assert (=> b!1485133 (=> (not res!670643) (not e!949952))))

(assert (=> b!1485133 (= res!670643 (= (list!6264 (_1!8133 lt!515736)) (list!6264 acc!392)))))

(assert (=> b!1485133 (= lt!515736 (lexRec!302 thiss!13241 rules!1640 treated!70))))

(assert (=> b!1485134 (= e!949962 (and tp!422191 tp!422185))))

(declare-fun mapIsEmpty!6566 () Bool)

(assert (=> mapIsEmpty!6566 mapRes!6565))

(declare-fun b!1485135 () Bool)

(declare-fun res!670650 () Bool)

(assert (=> b!1485135 (=> (not res!670650) (not e!949942))))

(declare-fun valid!1084 (CacheDown!784) Bool)

(assert (=> b!1485135 (= res!670650 (valid!1084 cacheDown!629))))

(declare-fun mapNonEmpty!6565 () Bool)

(declare-fun tp!422188 () Bool)

(declare-fun tp!422197 () Bool)

(assert (=> mapNonEmpty!6565 (= mapRes!6565 (and tp!422188 tp!422197))))

(declare-fun mapKey!6564 () (_ BitVec 32))

(declare-fun mapRest!6565 () (Array (_ BitVec 32) List!15843))

(declare-fun mapValue!6566 () List!15843)

(assert (=> mapNonEmpty!6565 (= (arr!2175 (_values!1655 (v!22606 (underlying!2961 (v!22607 (underlying!2962 (cache!1701 cacheDown!629))))))) (store mapRest!6565 mapKey!6564 mapValue!6566))))

(declare-fun b!1485136 () Bool)

(assert (=> b!1485136 (= e!949958 e!949961)))

(declare-fun b!1485137 () Bool)

(assert (=> b!1485137 (= e!949942 (not e!949957))))

(declare-fun res!670651 () Bool)

(assert (=> b!1485137 (=> res!670651 e!949957)))

(declare-fun isSuffix!278 (List!15846 List!15846) Bool)

(assert (=> b!1485137 (= res!670651 (not (isSuffix!278 lt!515733 lt!515731)))))

(assert (=> b!1485137 (isSuffix!278 lt!515733 lt!515737)))

(declare-datatypes ((Unit!25622 0))(
  ( (Unit!25623) )
))
(declare-fun lt!515739 () Unit!25622)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!256 (List!15846 List!15846) Unit!25622)

(assert (=> b!1485137 (= lt!515739 (lemmaConcatTwoListThenFSndIsSuffix!256 lt!515740 lt!515733))))

(declare-fun b!1485138 () Bool)

(assert (=> b!1485138 (= e!949951 e!949941)))

(declare-fun b!1485139 () Bool)

(assert (=> b!1485139 (= e!949965 (and e!949940 (inv!20994 (totalInput!2237 cacheFurthestNullable!64)) e!949929))))

(declare-fun b!1485140 () Bool)

(declare-fun res!670652 () Bool)

(assert (=> b!1485140 (=> (not res!670652) (not e!949948))))

(declare-fun rulesInvariant!2250 (LexerInterface!2465 List!15849) Bool)

(assert (=> b!1485140 (= res!670652 (rulesInvariant!2250 thiss!13241 rules!1640))))

(declare-fun b!1485141 () Bool)

(declare-fun res!670645 () Bool)

(assert (=> b!1485141 (=> (not res!670645) (not e!949948))))

(declare-fun isEmpty!9844 (List!15849) Bool)

(assert (=> b!1485141 (= res!670645 (not (isEmpty!9844 rules!1640)))))

(declare-fun b!1485142 () Bool)

(assert (=> b!1485142 (= e!949931 true)))

(declare-fun lt!515735 () List!15846)

(declare-fun lt!515741 () List!15846)

(assert (=> b!1485142 (= (++!4249 (++!4249 lt!515740 lt!515735) lt!515741) (++!4249 lt!515740 (++!4249 lt!515735 lt!515741)))))

(declare-fun lt!515729 () Unit!25622)

(declare-fun lemmaConcatAssociativity!895 (List!15846 List!15846 List!15846) Unit!25622)

(assert (=> b!1485142 (= lt!515729 (lemmaConcatAssociativity!895 lt!515740 lt!515735 lt!515741))))

(assert (=> b!1485142 (= lt!515741 (list!6263 (_2!8134 (v!22612 (_1!8135 lt!515738)))))))

(declare-fun charsOf!1608 (Token!5280) BalanceConc!10680)

(assert (=> b!1485142 (= lt!515735 (list!6263 (charsOf!1608 (_1!8134 (v!22612 (_1!8135 lt!515738))))))))

(declare-fun lt!515730 () tuple2!14452)

(assert (=> b!1485142 (= lt!515730 (lexRec!302 thiss!13241 rules!1640 (_2!8134 (v!22612 (_1!8135 lt!515738)))))))

(declare-fun b!1485143 () Bool)

(declare-fun tp!422202 () Bool)

(assert (=> b!1485143 (= e!949960 (and (inv!20990 (c!243263 treated!70)) tp!422202))))

(declare-fun mapNonEmpty!6566 () Bool)

(declare-fun tp!422199 () Bool)

(declare-fun tp!422181 () Bool)

(assert (=> mapNonEmpty!6566 (= mapRes!6564 (and tp!422199 tp!422181))))

(declare-fun mapKey!6566 () (_ BitVec 32))

(declare-fun mapValue!6564 () List!15848)

(declare-fun mapRest!6564 () (Array (_ BitVec 32) List!15848))

(assert (=> mapNonEmpty!6566 (= (arr!2177 (_values!1657 (v!22610 (underlying!2965 (v!22611 (underlying!2966 (cache!1703 cacheFurthestNullable!64))))))) (store mapRest!6564 mapKey!6566 mapValue!6564))))

(assert (= (and start!139542 res!670649) b!1485141))

(assert (= (and b!1485141 res!670645) b!1485140))

(assert (= (and b!1485140 res!670652) b!1485109))

(assert (= (and b!1485109 res!670644) b!1485133))

(assert (= (and b!1485133 res!670643) b!1485110))

(assert (= (and b!1485110 res!670653) b!1485120))

(assert (= (and b!1485120 res!670642) b!1485112))

(assert (= (and b!1485112 res!670646) b!1485102))

(assert (= (and b!1485102 res!670647) b!1485135))

(assert (= (and b!1485135 res!670650) b!1485116))

(assert (= (and b!1485116 res!670648) b!1485105))

(assert (= (and b!1485105 res!670654) b!1485137))

(assert (= (and b!1485137 (not res!670651)) b!1485121))

(assert (= (and b!1485121 (not res!670641)) b!1485142))

(assert (= start!139542 b!1485103))

(assert (= (and b!1485111 condMapEmpty!6566) mapIsEmpty!6565))

(assert (= (and b!1485111 (not condMapEmpty!6566)) mapNonEmpty!6564))

(assert (= b!1485122 b!1485111))

(assert (= b!1485106 b!1485122))

(assert (= b!1485123 b!1485106))

(assert (= (and b!1485130 ((_ is LongMap!1377) (v!22609 (underlying!2964 (cache!1702 cacheUp!616))))) b!1485123))

(assert (= b!1485104 b!1485130))

(assert (= (and b!1485126 ((_ is HashMap!1321) (cache!1702 cacheUp!616))) b!1485104))

(assert (= start!139542 b!1485126))

(assert (= (and b!1485118 condMapEmpty!6565) mapIsEmpty!6566))

(assert (= (and b!1485118 (not condMapEmpty!6565)) mapNonEmpty!6565))

(assert (= b!1485131 b!1485118))

(assert (= b!1485136 b!1485131))

(assert (= b!1485132 b!1485136))

(assert (= (and b!1485101 ((_ is LongMap!1376) (v!22607 (underlying!2962 (cache!1701 cacheDown!629))))) b!1485132))

(assert (= b!1485128 b!1485101))

(assert (= (and b!1485107 ((_ is HashMap!1320) (cache!1701 cacheDown!629))) b!1485128))

(assert (= start!139542 b!1485107))

(assert (= start!139542 b!1485117))

(assert (= start!139542 b!1485143))

(assert (= b!1485114 b!1485134))

(assert (= b!1485108 b!1485114))

(assert (= (and start!139542 ((_ is Cons!15781) rules!1640)) b!1485108))

(assert (= (and b!1485129 condMapEmpty!6564) mapIsEmpty!6564))

(assert (= (and b!1485129 (not condMapEmpty!6564)) mapNonEmpty!6566))

(assert (= b!1485127 b!1485129))

(assert (= b!1485125 b!1485127))

(assert (= b!1485138 b!1485125))

(assert (= (and b!1485124 ((_ is LongMap!1378) (v!22611 (underlying!2966 (cache!1703 cacheFurthestNullable!64))))) b!1485138))

(assert (= b!1485113 b!1485124))

(assert (= (and b!1485139 ((_ is HashMap!1322) (cache!1703 cacheFurthestNullable!64))) b!1485113))

(assert (= b!1485139 b!1485115))

(assert (= start!139542 b!1485139))

(assert (= start!139542 b!1485119))

(declare-fun m!1731578 () Bool)

(assert (=> b!1485143 m!1731578))

(declare-fun m!1731580 () Bool)

(assert (=> b!1485119 m!1731580))

(declare-fun m!1731582 () Bool)

(assert (=> b!1485133 m!1731582))

(declare-fun m!1731584 () Bool)

(assert (=> b!1485133 m!1731584))

(declare-fun m!1731586 () Bool)

(assert (=> b!1485133 m!1731586))

(declare-fun m!1731588 () Bool)

(assert (=> b!1485117 m!1731588))

(declare-fun m!1731590 () Bool)

(assert (=> b!1485137 m!1731590))

(declare-fun m!1731592 () Bool)

(assert (=> b!1485137 m!1731592))

(declare-fun m!1731594 () Bool)

(assert (=> b!1485137 m!1731594))

(declare-fun m!1731596 () Bool)

(assert (=> b!1485114 m!1731596))

(declare-fun m!1731598 () Bool)

(assert (=> b!1485114 m!1731598))

(declare-fun m!1731600 () Bool)

(assert (=> start!139542 m!1731600))

(declare-fun m!1731602 () Bool)

(assert (=> start!139542 m!1731602))

(declare-fun m!1731604 () Bool)

(assert (=> start!139542 m!1731604))

(declare-fun m!1731606 () Bool)

(assert (=> start!139542 m!1731606))

(declare-fun m!1731608 () Bool)

(assert (=> start!139542 m!1731608))

(declare-fun m!1731610 () Bool)

(assert (=> start!139542 m!1731610))

(declare-fun m!1731612 () Bool)

(assert (=> start!139542 m!1731612))

(declare-fun m!1731614 () Bool)

(assert (=> b!1485115 m!1731614))

(declare-fun m!1731616 () Bool)

(assert (=> b!1485103 m!1731616))

(declare-fun m!1731618 () Bool)

(assert (=> b!1485140 m!1731618))

(declare-fun m!1731620 () Bool)

(assert (=> b!1485109 m!1731620))

(declare-fun m!1731622 () Bool)

(assert (=> b!1485109 m!1731622))

(declare-fun m!1731624 () Bool)

(assert (=> b!1485109 m!1731624))

(declare-fun m!1731626 () Bool)

(assert (=> b!1485109 m!1731626))

(declare-fun m!1731628 () Bool)

(assert (=> b!1485141 m!1731628))

(declare-fun m!1731630 () Bool)

(assert (=> b!1485139 m!1731630))

(declare-fun m!1731632 () Bool)

(assert (=> b!1485127 m!1731632))

(declare-fun m!1731634 () Bool)

(assert (=> b!1485127 m!1731634))

(declare-fun m!1731636 () Bool)

(assert (=> b!1485112 m!1731636))

(declare-fun m!1731638 () Bool)

(assert (=> b!1485112 m!1731638))

(declare-fun m!1731640 () Bool)

(assert (=> b!1485110 m!1731640))

(assert (=> b!1485110 m!1731640))

(declare-fun m!1731642 () Bool)

(assert (=> b!1485110 m!1731642))

(declare-fun m!1731644 () Bool)

(assert (=> b!1485142 m!1731644))

(declare-fun m!1731646 () Bool)

(assert (=> b!1485142 m!1731646))

(declare-fun m!1731648 () Bool)

(assert (=> b!1485142 m!1731648))

(assert (=> b!1485142 m!1731644))

(declare-fun m!1731650 () Bool)

(assert (=> b!1485142 m!1731650))

(declare-fun m!1731652 () Bool)

(assert (=> b!1485142 m!1731652))

(assert (=> b!1485142 m!1731650))

(declare-fun m!1731654 () Bool)

(assert (=> b!1485142 m!1731654))

(declare-fun m!1731656 () Bool)

(assert (=> b!1485142 m!1731656))

(declare-fun m!1731658 () Bool)

(assert (=> b!1485142 m!1731658))

(assert (=> b!1485142 m!1731658))

(declare-fun m!1731660 () Bool)

(assert (=> b!1485142 m!1731660))

(declare-fun m!1731662 () Bool)

(assert (=> b!1485122 m!1731662))

(declare-fun m!1731664 () Bool)

(assert (=> b!1485122 m!1731664))

(declare-fun m!1731666 () Bool)

(assert (=> b!1485116 m!1731666))

(declare-fun m!1731668 () Bool)

(assert (=> b!1485102 m!1731668))

(declare-fun m!1731670 () Bool)

(assert (=> mapNonEmpty!6565 m!1731670))

(declare-fun m!1731672 () Bool)

(assert (=> b!1485120 m!1731672))

(declare-fun m!1731674 () Bool)

(assert (=> b!1485120 m!1731674))

(declare-fun m!1731676 () Bool)

(assert (=> b!1485120 m!1731676))

(declare-fun m!1731678 () Bool)

(assert (=> b!1485120 m!1731678))

(declare-fun m!1731680 () Bool)

(assert (=> b!1485120 m!1731680))

(assert (=> b!1485120 m!1731676))

(declare-fun m!1731682 () Bool)

(assert (=> b!1485131 m!1731682))

(declare-fun m!1731684 () Bool)

(assert (=> b!1485131 m!1731684))

(declare-fun m!1731686 () Bool)

(assert (=> mapNonEmpty!6566 m!1731686))

(declare-fun m!1731688 () Bool)

(assert (=> mapNonEmpty!6564 m!1731688))

(declare-fun m!1731690 () Bool)

(assert (=> b!1485121 m!1731690))

(declare-fun m!1731692 () Bool)

(assert (=> b!1485135 m!1731692))

(check-sat (not b!1485116) (not b_next!39243) (not mapNonEmpty!6565) (not b!1485129) (not b!1485102) b_and!103267 b_and!103253 (not b!1485117) b_and!103265 (not b!1485120) b_and!103263 (not start!139542) (not b!1485139) (not b!1485121) (not b!1485114) (not b_next!39253) (not b_next!39247) (not b!1485131) (not mapNonEmpty!6566) (not b!1485122) (not b!1485141) (not b!1485135) b_and!103261 (not b!1485127) b_and!103255 (not b_next!39249) (not b!1485115) (not b!1485108) (not b!1485137) (not b_next!39251) (not b!1485133) (not b!1485109) (not b!1485110) b_and!103257 (not b!1485119) (not b!1485112) (not b_next!39245) (not b_next!39241) (not mapNonEmpty!6564) (not b!1485118) (not b!1485143) (not b!1485142) (not b!1485111) b_and!103259 (not b!1485140) (not b_next!39239) (not b!1485103))
(check-sat (not b_next!39253) (not b_next!39247) (not b_next!39243) (not b_next!39249) (not b_next!39251) b_and!103257 b_and!103267 b_and!103253 b_and!103259 (not b_next!39239) b_and!103265 b_and!103263 b_and!103255 b_and!103261 (not b_next!39245) (not b_next!39241))
