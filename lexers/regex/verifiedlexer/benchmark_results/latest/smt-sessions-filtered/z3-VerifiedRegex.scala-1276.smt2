; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!66292 () Bool)

(assert start!66292)

(declare-fun b!693539 () Bool)

(declare-fun b_free!19713 () Bool)

(declare-fun b_next!19777 () Bool)

(assert (=> b!693539 (= b_free!19713 (not b_next!19777))))

(declare-fun tp!209512 () Bool)

(declare-fun b_and!63507 () Bool)

(assert (=> b!693539 (= tp!209512 b_and!63507)))

(declare-fun b!693524 () Bool)

(declare-fun b_free!19715 () Bool)

(declare-fun b_next!19779 () Bool)

(assert (=> b!693524 (= b_free!19715 (not b_next!19779))))

(declare-fun tp!209509 () Bool)

(declare-fun b_and!63509 () Bool)

(assert (=> b!693524 (= tp!209509 b_and!63509)))

(declare-fun b!693537 () Bool)

(declare-fun b_free!19717 () Bool)

(declare-fun b_next!19781 () Bool)

(assert (=> b!693537 (= b_free!19717 (not b_next!19781))))

(declare-fun tp!209507 () Bool)

(declare-fun b_and!63511 () Bool)

(assert (=> b!693537 (= tp!209507 b_and!63511)))

(declare-fun b!693557 () Bool)

(declare-fun b_free!19719 () Bool)

(declare-fun b_next!19783 () Bool)

(assert (=> b!693557 (= b_free!19719 (not b_next!19783))))

(declare-fun tp!209511 () Bool)

(declare-fun b_and!63513 () Bool)

(assert (=> b!693557 (= tp!209511 b_and!63513)))

(declare-fun b!693548 () Bool)

(declare-fun b_free!19721 () Bool)

(declare-fun b_next!19785 () Bool)

(assert (=> b!693548 (= b_free!19721 (not b_next!19785))))

(declare-fun tp!209515 () Bool)

(declare-fun b_and!63515 () Bool)

(assert (=> b!693548 (= tp!209515 b_and!63515)))

(declare-fun b!693541 () Bool)

(declare-fun b_free!19723 () Bool)

(declare-fun b_next!19787 () Bool)

(assert (=> b!693541 (= b_free!19723 (not b_next!19787))))

(declare-fun tp!209536 () Bool)

(declare-fun b_and!63517 () Bool)

(assert (=> b!693541 (= tp!209536 b_and!63517)))

(declare-fun b_free!19725 () Bool)

(declare-fun b_next!19789 () Bool)

(assert (=> b!693541 (= b_free!19725 (not b_next!19789))))

(declare-fun tp!209524 () Bool)

(declare-fun b_and!63519 () Bool)

(assert (=> b!693541 (= tp!209524 b_and!63519)))

(declare-fun b!693536 () Bool)

(declare-fun b_free!19727 () Bool)

(declare-fun b_next!19791 () Bool)

(assert (=> b!693536 (= b_free!19727 (not b_next!19791))))

(declare-fun tp!209528 () Bool)

(declare-fun b_and!63521 () Bool)

(assert (=> b!693536 (= tp!209528 b_and!63521)))

(declare-fun b!693517 () Bool)

(declare-fun e!436537 () Bool)

(declare-fun e!436523 () Bool)

(assert (=> b!693517 (= e!436537 e!436523)))

(declare-fun b!693518 () Bool)

(declare-fun e!436548 () Bool)

(declare-fun e!436526 () Bool)

(assert (=> b!693518 (= e!436548 e!436526)))

(declare-fun e!436524 () Bool)

(declare-fun e!436546 () Bool)

(declare-fun b!693519 () Bool)

(declare-fun e!436529 () Bool)

(declare-datatypes ((C!4296 0))(
  ( (C!4297 (val!2378 Int)) )
))
(declare-datatypes ((List!7542 0))(
  ( (Nil!7528) (Cons!7528 (h!12929 C!4296) (t!87365 List!7542)) )
))
(declare-datatypes ((IArray!5311 0))(
  ( (IArray!5312 (innerList!2713 List!7542)) )
))
(declare-datatypes ((Regex!1847 0))(
  ( (ElementMatch!1847 (c!121761 C!4296)) (Concat!3399 (regOne!4206 Regex!1847) (regTwo!4206 Regex!1847)) (EmptyExpr!1847) (Star!1847 (reg!2176 Regex!1847)) (EmptyLang!1847) (Union!1847 (regOne!4207 Regex!1847) (regTwo!4207 Regex!1847)) )
))
(declare-datatypes ((Hashable!755 0))(
  ( (HashableExt!754 (__x!5449 Int)) )
))
(declare-datatypes ((Conc!2655 0))(
  ( (Node!2655 (left!6013 Conc!2655) (right!6343 Conc!2655) (csize!5540 Int) (cheight!2866 Int)) (Leaf!3932 (xs!5308 IArray!5311) (csize!5541 Int)) (Empty!2655) )
))
(declare-datatypes ((BalanceConc!5322 0))(
  ( (BalanceConc!5323 (c!121762 Conc!2655)) )
))
(declare-datatypes ((List!7543 0))(
  ( (Nil!7529) (Cons!7529 (h!12930 Regex!1847) (t!87366 List!7543)) )
))
(declare-datatypes ((Context!498 0))(
  ( (Context!499 (exprs!749 List!7543)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!7942 0))(
  ( (tuple2!7943 (_1!4391 (InoxSet Context!498)) (_2!4391 Int)) )
))
(declare-datatypes ((tuple2!7944 0))(
  ( (tuple2!7945 (_1!4392 tuple2!7942) (_2!4392 Int)) )
))
(declare-datatypes ((array!2925 0))(
  ( (array!2926 (arr!1320 (Array (_ BitVec 32) (_ BitVec 64))) (size!6155 (_ BitVec 32))) )
))
(declare-datatypes ((List!7544 0))(
  ( (Nil!7530) (Cons!7530 (h!12931 tuple2!7944) (t!87367 List!7544)) )
))
(declare-datatypes ((array!2927 0))(
  ( (array!2928 (arr!1321 (Array (_ BitVec 32) List!7544)) (size!6156 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1566 0))(
  ( (LongMapFixedSize!1567 (defaultEntry!1139 Int) (mask!2591 (_ BitVec 32)) (extraKeys!1030 (_ BitVec 32)) (zeroValue!1040 List!7544) (minValue!1040 List!7544) (_size!1675 (_ BitVec 32)) (_keys!1077 array!2925) (_values!1062 array!2927) (_vacant!844 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3073 0))(
  ( (Cell!3074 (v!17688 LongMapFixedSize!1566)) )
))
(declare-datatypes ((MutLongMap!783 0))(
  ( (LongMap!783 (underlying!1749 Cell!3073)) (MutLongMapExt!782 (__x!5450 Int)) )
))
(declare-datatypes ((Cell!3075 0))(
  ( (Cell!3076 (v!17689 MutLongMap!783)) )
))
(declare-datatypes ((MutableMap!755 0))(
  ( (MutableMapExt!754 (__x!5451 Int)) (HashMap!755 (underlying!1750 Cell!3075) (hashF!2663 Hashable!755) (_size!1676 (_ BitVec 32)) (defaultValue!906 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!50 0))(
  ( (CacheFindLongestMatch!51 (cache!1142 MutableMap!755) (totalInput!1807 BalanceConc!5322)) )
))
(declare-fun cacheFindLongestMatch!74 () CacheFindLongestMatch!50)

(declare-fun inv!9649 (BalanceConc!5322) Bool)

(assert (=> b!693519 (= e!436524 (and e!436529 (inv!9649 (totalInput!1807 cacheFindLongestMatch!74)) e!436546))))

(declare-fun b!693520 () Bool)

(declare-fun e!436547 () Bool)

(declare-fun tp!209534 () Bool)

(declare-fun mapRes!3157 () Bool)

(assert (=> b!693520 (= e!436547 (and tp!209534 mapRes!3157))))

(declare-fun condMapEmpty!3155 () Bool)

(declare-datatypes ((tuple3!724 0))(
  ( (tuple3!725 (_1!4393 Regex!1847) (_2!4393 Context!498) (_3!420 C!4296)) )
))
(declare-datatypes ((tuple2!7946 0))(
  ( (tuple2!7947 (_1!4394 tuple3!724) (_2!4394 (InoxSet Context!498))) )
))
(declare-datatypes ((List!7545 0))(
  ( (Nil!7531) (Cons!7531 (h!12932 tuple2!7946) (t!87368 List!7545)) )
))
(declare-datatypes ((array!2929 0))(
  ( (array!2930 (arr!1322 (Array (_ BitVec 32) List!7545)) (size!6157 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1568 0))(
  ( (LongMapFixedSize!1569 (defaultEntry!1140 Int) (mask!2592 (_ BitVec 32)) (extraKeys!1031 (_ BitVec 32)) (zeroValue!1041 List!7545) (minValue!1041 List!7545) (_size!1677 (_ BitVec 32)) (_keys!1078 array!2925) (_values!1063 array!2929) (_vacant!845 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3077 0))(
  ( (Cell!3078 (v!17690 LongMapFixedSize!1568)) )
))
(declare-datatypes ((MutLongMap!784 0))(
  ( (LongMap!784 (underlying!1751 Cell!3077)) (MutLongMapExt!783 (__x!5452 Int)) )
))
(declare-datatypes ((Cell!3079 0))(
  ( (Cell!3080 (v!17691 MutLongMap!784)) )
))
(declare-datatypes ((Hashable!756 0))(
  ( (HashableExt!755 (__x!5453 Int)) )
))
(declare-datatypes ((MutableMap!756 0))(
  ( (MutableMapExt!755 (__x!5454 Int)) (HashMap!756 (underlying!1752 Cell!3079) (hashF!2664 Hashable!756) (_size!1678 (_ BitVec 32)) (defaultValue!907 Int)) )
))
(declare-datatypes ((CacheDown!396 0))(
  ( (CacheDown!397 (cache!1143 MutableMap!756)) )
))
(declare-fun cacheDown!515 () CacheDown!396)

(declare-fun mapDefault!3157 () List!7545)

(assert (=> b!693520 (= condMapEmpty!3155 (= (arr!1322 (_values!1063 (v!17690 (underlying!1751 (v!17691 (underlying!1752 (cache!1143 cacheDown!515))))))) ((as const (Array (_ BitVec 32) List!7545)) mapDefault!3157)))))

(declare-fun b!693521 () Bool)

(declare-fun e!436512 () Bool)

(declare-fun e!436519 () Bool)

(assert (=> b!693521 (= e!436512 e!436519)))

(declare-fun res!314232 () Bool)

(assert (=> b!693521 (=> (not res!314232) (not e!436519))))

(declare-fun lt!285153 () List!7542)

(declare-fun lt!285151 () List!7542)

(assert (=> b!693521 (= res!314232 (= lt!285153 lt!285151))))

(declare-fun lt!285150 () List!7542)

(declare-fun lt!285145 () List!7542)

(declare-fun ++!1964 (List!7542 List!7542) List!7542)

(assert (=> b!693521 (= lt!285151 (++!1964 lt!285150 lt!285145))))

(declare-fun totalInput!378 () BalanceConc!5322)

(declare-fun list!3158 (BalanceConc!5322) List!7542)

(assert (=> b!693521 (= lt!285153 (list!3158 totalInput!378))))

(declare-fun input!870 () BalanceConc!5322)

(assert (=> b!693521 (= lt!285145 (list!3158 input!870))))

(declare-fun treated!50 () BalanceConc!5322)

(assert (=> b!693521 (= lt!285150 (list!3158 treated!50))))

(declare-fun b!693522 () Bool)

(declare-fun res!314228 () Bool)

(declare-fun e!436513 () Bool)

(assert (=> b!693522 (=> (not res!314228) (not e!436513))))

(declare-datatypes ((List!7546 0))(
  ( (Nil!7532) (Cons!7532 (h!12933 (_ BitVec 16)) (t!87369 List!7546)) )
))
(declare-datatypes ((TokenValue!1552 0))(
  ( (FloatLiteralValue!3104 (text!11309 List!7546)) (TokenValueExt!1551 (__x!5455 Int)) (Broken!7760 (value!48617 List!7546)) (Object!1565) (End!1552) (Def!1552) (Underscore!1552) (Match!1552) (Else!1552) (Error!1552) (Case!1552) (If!1552) (Extends!1552) (Abstract!1552) (Class!1552) (Val!1552) (DelimiterValue!3104 (del!1612 List!7546)) (KeywordValue!1558 (value!48618 List!7546)) (CommentValue!3104 (value!48619 List!7546)) (WhitespaceValue!3104 (value!48620 List!7546)) (IndentationValue!1552 (value!48621 List!7546)) (String!9485) (Int32!1552) (Broken!7761 (value!48622 List!7546)) (Boolean!1553) (Unit!12659) (OperatorValue!1555 (op!1612 List!7546)) (IdentifierValue!3104 (value!48623 List!7546)) (IdentifierValue!3105 (value!48624 List!7546)) (WhitespaceValue!3105 (value!48625 List!7546)) (True!3104) (False!3104) (Broken!7762 (value!48626 List!7546)) (Broken!7763 (value!48627 List!7546)) (True!3105) (RightBrace!1552) (RightBracket!1552) (Colon!1552) (Null!1552) (Comma!1552) (LeftBracket!1552) (False!3105) (LeftBrace!1552) (ImaginaryLiteralValue!1552 (text!11310 List!7546)) (StringLiteralValue!4656 (value!48628 List!7546)) (EOFValue!1552 (value!48629 List!7546)) (IdentValue!1552 (value!48630 List!7546)) (DelimiterValue!3105 (value!48631 List!7546)) (DedentValue!1552 (value!48632 List!7546)) (NewLineValue!1552 (value!48633 List!7546)) (IntegerValue!4656 (value!48634 (_ BitVec 32)) (text!11311 List!7546)) (IntegerValue!4657 (value!48635 Int) (text!11312 List!7546)) (Times!1552) (Or!1552) (Equal!1552) (Minus!1552) (Broken!7764 (value!48636 List!7546)) (And!1552) (Div!1552) (LessEqual!1552) (Mod!1552) (Concat!3400) (Not!1552) (Plus!1552) (SpaceValue!1552 (value!48637 List!7546)) (IntegerValue!4658 (value!48638 Int) (text!11313 List!7546)) (StringLiteralValue!4657 (text!11314 List!7546)) (FloatLiteralValue!3105 (text!11315 List!7546)) (BytesLiteralValue!1552 (value!48639 List!7546)) (CommentValue!3105 (value!48640 List!7546)) (StringLiteralValue!4658 (value!48641 List!7546)) (ErrorTokenValue!1552 (msg!1613 List!7546)) )
))
(declare-datatypes ((String!9486 0))(
  ( (String!9487 (value!48642 String)) )
))
(declare-datatypes ((TokenValueInjection!2840 0))(
  ( (TokenValueInjection!2841 (toValue!2472 Int) (toChars!2331 Int)) )
))
(declare-datatypes ((Rule!2816 0))(
  ( (Rule!2817 (regex!1508 Regex!1847) (tag!1770 String!9486) (isSeparator!1508 Bool) (transformation!1508 TokenValueInjection!2840)) )
))
(declare-datatypes ((Token!2716 0))(
  ( (Token!2717 (value!48643 TokenValue!1552) (rule!2547 Rule!2816) (size!6158 Int) (originalCharacters!1783 List!7542)) )
))
(declare-datatypes ((List!7547 0))(
  ( (Nil!7533) (Cons!7533 (h!12934 Token!2716) (t!87370 List!7547)) )
))
(declare-datatypes ((IArray!5313 0))(
  ( (IArray!5314 (innerList!2714 List!7547)) )
))
(declare-datatypes ((Conc!2656 0))(
  ( (Node!2656 (left!6014 Conc!2656) (right!6344 Conc!2656) (csize!5542 Int) (cheight!2867 Int)) (Leaf!3933 (xs!5309 IArray!5313) (csize!5543 Int)) (Empty!2656) )
))
(declare-datatypes ((BalanceConc!5324 0))(
  ( (BalanceConc!5325 (c!121763 Conc!2656)) )
))
(declare-datatypes ((tuple2!7948 0))(
  ( (tuple2!7949 (_1!4395 BalanceConc!5324) (_2!4395 BalanceConc!5322)) )
))
(declare-fun lt!285154 () tuple2!7948)

(declare-fun lt!285146 () tuple2!7948)

(assert (=> b!693522 (= res!314228 (= (list!3158 (_2!4395 lt!285154)) (list!3158 (_2!4395 lt!285146))))))

(declare-fun res!314225 () Bool)

(assert (=> start!66292 (=> (not res!314225) (not e!436512))))

(declare-datatypes ((LexerInterface!1321 0))(
  ( (LexerInterfaceExt!1318 (__x!5456 Int)) (Lexer!1319) )
))
(declare-fun thiss!12529 () LexerInterface!1321)

(get-info :version)

(assert (=> start!66292 (= res!314225 ((_ is Lexer!1319) thiss!12529))))

(assert (=> start!66292 e!436512))

(declare-fun acc!372 () BalanceConc!5324)

(declare-fun e!436545 () Bool)

(declare-fun inv!9650 (BalanceConc!5324) Bool)

(assert (=> start!66292 (and (inv!9650 acc!372) e!436545)))

(declare-fun e!436518 () Bool)

(assert (=> start!66292 (and (inv!9649 treated!50) e!436518)))

(declare-fun e!436520 () Bool)

(assert (=> start!66292 (and (inv!9649 totalInput!378) e!436520)))

(declare-fun e!436543 () Bool)

(assert (=> start!66292 (and (inv!9649 input!870) e!436543)))

(declare-fun e!436525 () Bool)

(assert (=> start!66292 e!436525))

(assert (=> start!66292 true))

(declare-datatypes ((tuple2!7950 0))(
  ( (tuple2!7951 (_1!4396 Context!498) (_2!4396 C!4296)) )
))
(declare-datatypes ((tuple2!7952 0))(
  ( (tuple2!7953 (_1!4397 tuple2!7950) (_2!4397 (InoxSet Context!498))) )
))
(declare-datatypes ((List!7548 0))(
  ( (Nil!7534) (Cons!7534 (h!12935 tuple2!7952) (t!87371 List!7548)) )
))
(declare-datatypes ((array!2931 0))(
  ( (array!2932 (arr!1323 (Array (_ BitVec 32) List!7548)) (size!6159 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1570 0))(
  ( (LongMapFixedSize!1571 (defaultEntry!1141 Int) (mask!2593 (_ BitVec 32)) (extraKeys!1032 (_ BitVec 32)) (zeroValue!1042 List!7548) (minValue!1042 List!7548) (_size!1679 (_ BitVec 32)) (_keys!1079 array!2925) (_values!1064 array!2931) (_vacant!846 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!3081 0))(
  ( (Cell!3082 (v!17692 LongMapFixedSize!1570)) )
))
(declare-datatypes ((MutLongMap!785 0))(
  ( (LongMap!785 (underlying!1753 Cell!3081)) (MutLongMapExt!784 (__x!5457 Int)) )
))
(declare-datatypes ((Hashable!757 0))(
  ( (HashableExt!756 (__x!5458 Int)) )
))
(declare-datatypes ((Cell!3083 0))(
  ( (Cell!3084 (v!17693 MutLongMap!785)) )
))
(declare-datatypes ((MutableMap!757 0))(
  ( (MutableMapExt!756 (__x!5459 Int)) (HashMap!757 (underlying!1754 Cell!3083) (hashF!2665 Hashable!757) (_size!1680 (_ BitVec 32)) (defaultValue!908 Int)) )
))
(declare-datatypes ((CacheUp!390 0))(
  ( (CacheUp!391 (cache!1144 MutableMap!757)) )
))
(declare-fun cacheUp!502 () CacheUp!390)

(declare-fun e!436541 () Bool)

(declare-fun inv!9651 (CacheUp!390) Bool)

(assert (=> start!66292 (and (inv!9651 cacheUp!502) e!436541)))

(declare-fun inv!9652 (CacheDown!396) Bool)

(assert (=> start!66292 (and (inv!9652 cacheDown!515) e!436537)))

(declare-fun inv!9653 (CacheFindLongestMatch!50) Bool)

(assert (=> start!66292 (and (inv!9653 cacheFindLongestMatch!74) e!436524)))

(declare-fun b!693523 () Bool)

(declare-fun e!436539 () Bool)

(assert (=> b!693523 (= e!436539 true)))

(declare-fun lt!285152 () Bool)

(declare-datatypes ((List!7549 0))(
  ( (Nil!7535) (Cons!7535 (h!12936 Rule!2816) (t!87372 List!7549)) )
))
(declare-fun rules!1486 () List!7549)

(declare-fun rulesValidInductive!521 (LexerInterface!1321 List!7549) Bool)

(assert (=> b!693523 (= lt!285152 (rulesValidInductive!521 thiss!12529 rules!1486))))

(declare-fun e!436544 () Bool)

(declare-fun e!436521 () Bool)

(assert (=> b!693524 (= e!436544 (and e!436521 tp!209509))))

(declare-fun b!693525 () Bool)

(declare-fun e!436515 () Bool)

(declare-fun e!436517 () Bool)

(assert (=> b!693525 (= e!436515 e!436517)))

(declare-fun b!693526 () Bool)

(declare-fun tp!209523 () Bool)

(declare-fun inv!9654 (Conc!2655) Bool)

(assert (=> b!693526 (= e!436518 (and (inv!9654 (c!121762 treated!50)) tp!209523))))

(declare-fun b!693527 () Bool)

(declare-fun e!436514 () Bool)

(declare-fun e!436516 () Bool)

(assert (=> b!693527 (= e!436514 e!436516)))

(declare-fun b!693528 () Bool)

(declare-fun e!436528 () Bool)

(declare-fun tp!209510 () Bool)

(assert (=> b!693528 (= e!436525 (and e!436528 tp!209510))))

(declare-fun mapNonEmpty!3155 () Bool)

(declare-fun tp!209530 () Bool)

(declare-fun tp!209529 () Bool)

(assert (=> mapNonEmpty!3155 (= mapRes!3157 (and tp!209530 tp!209529))))

(declare-fun mapKey!3155 () (_ BitVec 32))

(declare-fun mapRest!3157 () (Array (_ BitVec 32) List!7545))

(declare-fun mapValue!3155 () List!7545)

(assert (=> mapNonEmpty!3155 (= (arr!1322 (_values!1063 (v!17690 (underlying!1751 (v!17691 (underlying!1752 (cache!1143 cacheDown!515))))))) (store mapRest!3157 mapKey!3155 mapValue!3155))))

(declare-fun b!693529 () Bool)

(declare-fun res!314230 () Bool)

(assert (=> b!693529 (=> (not res!314230) (not e!436512))))

(declare-fun isEmpty!4888 (List!7549) Bool)

(assert (=> b!693529 (= res!314230 (not (isEmpty!4888 rules!1486)))))

(declare-fun b!693530 () Bool)

(declare-fun res!314226 () Bool)

(assert (=> b!693530 (=> (not res!314226) (not e!436513))))

(declare-fun valid!673 (CacheFindLongestMatch!50) Bool)

(assert (=> b!693530 (= res!314226 (valid!673 cacheFindLongestMatch!74))))

(declare-fun b!693531 () Bool)

(declare-fun e!436535 () Bool)

(assert (=> b!693531 (= e!436535 e!436515)))

(declare-fun b!693532 () Bool)

(declare-fun res!314229 () Bool)

(declare-fun e!436522 () Bool)

(assert (=> b!693532 (=> (not res!314229) (not e!436522))))

(declare-fun lt!285144 () tuple2!7948)

(declare-fun isEmpty!4889 (List!7542) Bool)

(assert (=> b!693532 (= res!314229 (isEmpty!4889 (list!3158 (_2!4395 lt!285144))))))

(declare-fun b!693533 () Bool)

(declare-fun res!314223 () Bool)

(assert (=> b!693533 (=> (not res!314223) (not e!436512))))

(declare-fun rulesInvariant!1254 (LexerInterface!1321 List!7549) Bool)

(assert (=> b!693533 (= res!314223 (rulesInvariant!1254 thiss!12529 rules!1486))))

(declare-fun b!693534 () Bool)

(assert (=> b!693534 (= e!436541 e!436544)))

(declare-fun b!693535 () Bool)

(assert (=> b!693535 (= e!436519 e!436522)))

(declare-fun res!314227 () Bool)

(assert (=> b!693535 (=> (not res!314227) (not e!436522))))

(declare-fun list!3159 (BalanceConc!5324) List!7547)

(assert (=> b!693535 (= res!314227 (= (list!3159 (_1!4395 lt!285144)) (list!3159 acc!372)))))

(declare-fun lexRec!164 (LexerInterface!1321 List!7549 BalanceConc!5322) tuple2!7948)

(assert (=> b!693535 (= lt!285144 (lexRec!164 thiss!12529 rules!1486 treated!50))))

(declare-fun e!436534 () Bool)

(assert (=> b!693536 (= e!436523 (and e!436534 tp!209528))))

(declare-fun mapIsEmpty!3155 () Bool)

(declare-fun mapRes!3155 () Bool)

(assert (=> mapIsEmpty!3155 mapRes!3155))

(declare-fun e!436531 () Bool)

(declare-fun tp!209518 () Bool)

(declare-fun tp!209525 () Bool)

(declare-fun array_inv!969 (array!2925) Bool)

(declare-fun array_inv!970 (array!2927) Bool)

(assert (=> b!693537 (= e!436517 (and tp!209507 tp!209525 tp!209518 (array_inv!969 (_keys!1077 (v!17688 (underlying!1749 (v!17689 (underlying!1750 (cache!1142 cacheFindLongestMatch!74))))))) (array_inv!970 (_values!1062 (v!17688 (underlying!1749 (v!17689 (underlying!1750 (cache!1142 cacheFindLongestMatch!74))))))) e!436531))))

(declare-fun mapIsEmpty!3156 () Bool)

(assert (=> mapIsEmpty!3156 mapRes!3157))

(declare-fun mapNonEmpty!3156 () Bool)

(declare-fun mapRes!3156 () Bool)

(declare-fun tp!209514 () Bool)

(declare-fun tp!209535 () Bool)

(assert (=> mapNonEmpty!3156 (= mapRes!3156 (and tp!209514 tp!209535))))

(declare-fun mapValue!3156 () List!7544)

(declare-fun mapRest!3156 () (Array (_ BitVec 32) List!7544))

(declare-fun mapKey!3157 () (_ BitVec 32))

(assert (=> mapNonEmpty!3156 (= (arr!1321 (_values!1062 (v!17688 (underlying!1749 (v!17689 (underlying!1750 (cache!1142 cacheFindLongestMatch!74))))))) (store mapRest!3156 mapKey!3157 mapValue!3156))))

(declare-fun b!693538 () Bool)

(declare-fun e!436530 () Bool)

(declare-fun tp!209516 () Bool)

(assert (=> b!693538 (= e!436530 (and tp!209516 mapRes!3155))))

(declare-fun condMapEmpty!3157 () Bool)

(declare-fun mapDefault!3155 () List!7548)

(assert (=> b!693538 (= condMapEmpty!3157 (= (arr!1323 (_values!1064 (v!17692 (underlying!1753 (v!17693 (underlying!1754 (cache!1144 cacheUp!502))))))) ((as const (Array (_ BitVec 32) List!7548)) mapDefault!3155)))))

(declare-fun e!436532 () Bool)

(assert (=> b!693539 (= e!436529 (and e!436532 tp!209512))))

(declare-fun b!693540 () Bool)

(declare-fun lt!285148 () MutLongMap!783)

(assert (=> b!693540 (= e!436532 (and e!436535 ((_ is LongMap!783) lt!285148)))))

(assert (=> b!693540 (= lt!285148 (v!17689 (underlying!1750 (cache!1142 cacheFindLongestMatch!74))))))

(declare-fun e!436511 () Bool)

(assert (=> b!693541 (= e!436511 (and tp!209536 tp!209524))))

(declare-fun b!693542 () Bool)

(declare-fun tp!209508 () Bool)

(declare-fun inv!9646 (String!9486) Bool)

(declare-fun inv!9655 (TokenValueInjection!2840) Bool)

(assert (=> b!693542 (= e!436528 (and tp!209508 (inv!9646 (tag!1770 (h!12936 rules!1486))) (inv!9655 (transformation!1508 (h!12936 rules!1486))) e!436511))))

(declare-fun b!693543 () Bool)

(declare-fun tp!209526 () Bool)

(assert (=> b!693543 (= e!436543 (and (inv!9654 (c!121762 input!870)) tp!209526))))

(declare-fun b!693544 () Bool)

(declare-fun e!436540 () Bool)

(assert (=> b!693544 (= e!436540 e!436514)))

(declare-fun mapNonEmpty!3157 () Bool)

(declare-fun tp!209533 () Bool)

(declare-fun tp!209513 () Bool)

(assert (=> mapNonEmpty!3157 (= mapRes!3155 (and tp!209533 tp!209513))))

(declare-fun mapKey!3156 () (_ BitVec 32))

(declare-fun mapValue!3157 () List!7548)

(declare-fun mapRest!3155 () (Array (_ BitVec 32) List!7548))

(assert (=> mapNonEmpty!3157 (= (arr!1323 (_values!1064 (v!17692 (underlying!1753 (v!17693 (underlying!1754 (cache!1144 cacheUp!502))))))) (store mapRest!3155 mapKey!3156 mapValue!3157))))

(declare-fun b!693545 () Bool)

(declare-fun res!314233 () Bool)

(assert (=> b!693545 (=> (not res!314233) (not e!436513))))

(assert (=> b!693545 (= res!314233 (= (totalInput!1807 cacheFindLongestMatch!74) totalInput!378))))

(declare-fun b!693546 () Bool)

(declare-fun res!314221 () Bool)

(assert (=> b!693546 (=> (not res!314221) (not e!436513))))

(declare-fun valid!674 (CacheUp!390) Bool)

(assert (=> b!693546 (= res!314221 (valid!674 cacheUp!502))))

(declare-fun b!693547 () Bool)

(declare-fun res!314222 () Bool)

(assert (=> b!693547 (=> (not res!314222) (not e!436513))))

(declare-fun valid!675 (CacheDown!396) Bool)

(assert (=> b!693547 (= res!314222 (valid!675 cacheDown!515))))

(declare-fun tp!209532 () Bool)

(declare-fun tp!209522 () Bool)

(declare-fun array_inv!971 (array!2931) Bool)

(assert (=> b!693548 (= e!436516 (and tp!209515 tp!209532 tp!209522 (array_inv!969 (_keys!1079 (v!17692 (underlying!1753 (v!17693 (underlying!1754 (cache!1144 cacheUp!502))))))) (array_inv!971 (_values!1064 (v!17692 (underlying!1753 (v!17693 (underlying!1754 (cache!1144 cacheUp!502))))))) e!436530))))

(declare-fun b!693549 () Bool)

(assert (=> b!693549 (= e!436522 e!436513)))

(declare-fun res!314231 () Bool)

(assert (=> b!693549 (=> (not res!314231) (not e!436513))))

(declare-fun ++!1965 (BalanceConc!5324 BalanceConc!5324) BalanceConc!5324)

(assert (=> b!693549 (= res!314231 (= (list!3159 (_1!4395 lt!285154)) (list!3159 (++!1965 acc!372 (_1!4395 lt!285146)))))))

(assert (=> b!693549 (= lt!285146 (lexRec!164 thiss!12529 rules!1486 input!870))))

(assert (=> b!693549 (= lt!285154 (lexRec!164 thiss!12529 rules!1486 totalInput!378))))

(declare-fun b!693550 () Bool)

(assert (=> b!693550 (= e!436513 (not e!436539))))

(declare-fun res!314224 () Bool)

(assert (=> b!693550 (=> res!314224 e!436539)))

(declare-fun isSuffix!131 (List!7542 List!7542) Bool)

(assert (=> b!693550 (= res!314224 (not (isSuffix!131 lt!285145 lt!285153)))))

(assert (=> b!693550 (isSuffix!131 lt!285145 lt!285151)))

(declare-datatypes ((Unit!12660 0))(
  ( (Unit!12661) )
))
(declare-fun lt!285147 () Unit!12660)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!131 (List!7542 List!7542) Unit!12660)

(assert (=> b!693550 (= lt!285147 (lemmaConcatTwoListThenFSndIsSuffix!131 lt!285150 lt!285145))))

(declare-fun b!693551 () Bool)

(declare-fun e!436527 () Bool)

(declare-fun lt!285149 () MutLongMap!784)

(assert (=> b!693551 (= e!436534 (and e!436527 ((_ is LongMap!784) lt!285149)))))

(assert (=> b!693551 (= lt!285149 (v!17691 (underlying!1752 (cache!1143 cacheDown!515))))))

(declare-fun mapIsEmpty!3157 () Bool)

(assert (=> mapIsEmpty!3157 mapRes!3156))

(declare-fun b!693552 () Bool)

(declare-fun tp!209519 () Bool)

(assert (=> b!693552 (= e!436520 (and (inv!9654 (c!121762 totalInput!378)) tp!209519))))

(declare-fun b!693553 () Bool)

(assert (=> b!693553 (= e!436527 e!436548)))

(declare-fun b!693554 () Bool)

(declare-fun tp!209531 () Bool)

(assert (=> b!693554 (= e!436546 (and (inv!9654 (c!121762 (totalInput!1807 cacheFindLongestMatch!74))) tp!209531))))

(declare-fun b!693555 () Bool)

(declare-fun tp!209520 () Bool)

(declare-fun inv!9656 (Conc!2656) Bool)

(assert (=> b!693555 (= e!436545 (and (inv!9656 (c!121763 acc!372)) tp!209520))))

(declare-fun b!693556 () Bool)

(declare-fun lt!285155 () MutLongMap!785)

(assert (=> b!693556 (= e!436521 (and e!436540 ((_ is LongMap!785) lt!285155)))))

(assert (=> b!693556 (= lt!285155 (v!17693 (underlying!1754 (cache!1144 cacheUp!502))))))

(declare-fun tp!209517 () Bool)

(declare-fun tp!209521 () Bool)

(declare-fun array_inv!972 (array!2929) Bool)

(assert (=> b!693557 (= e!436526 (and tp!209511 tp!209521 tp!209517 (array_inv!969 (_keys!1078 (v!17690 (underlying!1751 (v!17691 (underlying!1752 (cache!1143 cacheDown!515))))))) (array_inv!972 (_values!1063 (v!17690 (underlying!1751 (v!17691 (underlying!1752 (cache!1143 cacheDown!515))))))) e!436547))))

(declare-fun b!693558 () Bool)

(declare-fun tp!209527 () Bool)

(assert (=> b!693558 (= e!436531 (and tp!209527 mapRes!3156))))

(declare-fun condMapEmpty!3156 () Bool)

(declare-fun mapDefault!3156 () List!7544)

(assert (=> b!693558 (= condMapEmpty!3156 (= (arr!1321 (_values!1062 (v!17688 (underlying!1749 (v!17689 (underlying!1750 (cache!1142 cacheFindLongestMatch!74))))))) ((as const (Array (_ BitVec 32) List!7544)) mapDefault!3156)))))

(assert (= (and start!66292 res!314225) b!693529))

(assert (= (and b!693529 res!314230) b!693533))

(assert (= (and b!693533 res!314223) b!693521))

(assert (= (and b!693521 res!314232) b!693535))

(assert (= (and b!693535 res!314227) b!693532))

(assert (= (and b!693532 res!314229) b!693549))

(assert (= (and b!693549 res!314231) b!693522))

(assert (= (and b!693522 res!314228) b!693546))

(assert (= (and b!693546 res!314221) b!693547))

(assert (= (and b!693547 res!314222) b!693530))

(assert (= (and b!693530 res!314226) b!693545))

(assert (= (and b!693545 res!314233) b!693550))

(assert (= (and b!693550 (not res!314224)) b!693523))

(assert (= start!66292 b!693555))

(assert (= start!66292 b!693526))

(assert (= start!66292 b!693552))

(assert (= start!66292 b!693543))

(assert (= b!693542 b!693541))

(assert (= b!693528 b!693542))

(assert (= (and start!66292 ((_ is Cons!7535) rules!1486)) b!693528))

(assert (= (and b!693538 condMapEmpty!3157) mapIsEmpty!3155))

(assert (= (and b!693538 (not condMapEmpty!3157)) mapNonEmpty!3157))

(assert (= b!693548 b!693538))

(assert (= b!693527 b!693548))

(assert (= b!693544 b!693527))

(assert (= (and b!693556 ((_ is LongMap!785) (v!17693 (underlying!1754 (cache!1144 cacheUp!502))))) b!693544))

(assert (= b!693524 b!693556))

(assert (= (and b!693534 ((_ is HashMap!757) (cache!1144 cacheUp!502))) b!693524))

(assert (= start!66292 b!693534))

(assert (= (and b!693520 condMapEmpty!3155) mapIsEmpty!3156))

(assert (= (and b!693520 (not condMapEmpty!3155)) mapNonEmpty!3155))

(assert (= b!693557 b!693520))

(assert (= b!693518 b!693557))

(assert (= b!693553 b!693518))

(assert (= (and b!693551 ((_ is LongMap!784) (v!17691 (underlying!1752 (cache!1143 cacheDown!515))))) b!693553))

(assert (= b!693536 b!693551))

(assert (= (and b!693517 ((_ is HashMap!756) (cache!1143 cacheDown!515))) b!693536))

(assert (= start!66292 b!693517))

(assert (= (and b!693558 condMapEmpty!3156) mapIsEmpty!3157))

(assert (= (and b!693558 (not condMapEmpty!3156)) mapNonEmpty!3156))

(assert (= b!693537 b!693558))

(assert (= b!693525 b!693537))

(assert (= b!693531 b!693525))

(assert (= (and b!693540 ((_ is LongMap!783) (v!17689 (underlying!1750 (cache!1142 cacheFindLongestMatch!74))))) b!693531))

(assert (= b!693539 b!693540))

(assert (= (and b!693519 ((_ is HashMap!755) (cache!1142 cacheFindLongestMatch!74))) b!693539))

(assert (= b!693519 b!693554))

(assert (= start!66292 b!693519))

(declare-fun m!949669 () Bool)

(assert (=> mapNonEmpty!3155 m!949669))

(declare-fun m!949671 () Bool)

(assert (=> b!693547 m!949671))

(declare-fun m!949673 () Bool)

(assert (=> b!693548 m!949673))

(declare-fun m!949675 () Bool)

(assert (=> b!693548 m!949675))

(declare-fun m!949677 () Bool)

(assert (=> b!693523 m!949677))

(declare-fun m!949679 () Bool)

(assert (=> b!693555 m!949679))

(declare-fun m!949681 () Bool)

(assert (=> b!693533 m!949681))

(declare-fun m!949683 () Bool)

(assert (=> b!693530 m!949683))

(declare-fun m!949685 () Bool)

(assert (=> mapNonEmpty!3157 m!949685))

(declare-fun m!949687 () Bool)

(assert (=> b!693543 m!949687))

(declare-fun m!949689 () Bool)

(assert (=> b!693519 m!949689))

(declare-fun m!949691 () Bool)

(assert (=> b!693535 m!949691))

(declare-fun m!949693 () Bool)

(assert (=> b!693535 m!949693))

(declare-fun m!949695 () Bool)

(assert (=> b!693535 m!949695))

(declare-fun m!949697 () Bool)

(assert (=> b!693522 m!949697))

(declare-fun m!949699 () Bool)

(assert (=> b!693522 m!949699))

(declare-fun m!949701 () Bool)

(assert (=> b!693521 m!949701))

(declare-fun m!949703 () Bool)

(assert (=> b!693521 m!949703))

(declare-fun m!949705 () Bool)

(assert (=> b!693521 m!949705))

(declare-fun m!949707 () Bool)

(assert (=> b!693521 m!949707))

(declare-fun m!949709 () Bool)

(assert (=> b!693554 m!949709))

(declare-fun m!949711 () Bool)

(assert (=> b!693542 m!949711))

(declare-fun m!949713 () Bool)

(assert (=> b!693542 m!949713))

(declare-fun m!949715 () Bool)

(assert (=> mapNonEmpty!3156 m!949715))

(declare-fun m!949717 () Bool)

(assert (=> b!693550 m!949717))

(declare-fun m!949719 () Bool)

(assert (=> b!693550 m!949719))

(declare-fun m!949721 () Bool)

(assert (=> b!693550 m!949721))

(declare-fun m!949723 () Bool)

(assert (=> b!693526 m!949723))

(declare-fun m!949725 () Bool)

(assert (=> b!693537 m!949725))

(declare-fun m!949727 () Bool)

(assert (=> b!693537 m!949727))

(declare-fun m!949729 () Bool)

(assert (=> b!693557 m!949729))

(declare-fun m!949731 () Bool)

(assert (=> b!693557 m!949731))

(declare-fun m!949733 () Bool)

(assert (=> b!693529 m!949733))

(declare-fun m!949735 () Bool)

(assert (=> b!693532 m!949735))

(assert (=> b!693532 m!949735))

(declare-fun m!949737 () Bool)

(assert (=> b!693532 m!949737))

(declare-fun m!949739 () Bool)

(assert (=> b!693552 m!949739))

(declare-fun m!949741 () Bool)

(assert (=> b!693546 m!949741))

(declare-fun m!949743 () Bool)

(assert (=> start!66292 m!949743))

(declare-fun m!949745 () Bool)

(assert (=> start!66292 m!949745))

(declare-fun m!949747 () Bool)

(assert (=> start!66292 m!949747))

(declare-fun m!949749 () Bool)

(assert (=> start!66292 m!949749))

(declare-fun m!949751 () Bool)

(assert (=> start!66292 m!949751))

(declare-fun m!949753 () Bool)

(assert (=> start!66292 m!949753))

(declare-fun m!949755 () Bool)

(assert (=> start!66292 m!949755))

(declare-fun m!949757 () Bool)

(assert (=> b!693549 m!949757))

(assert (=> b!693549 m!949757))

(declare-fun m!949759 () Bool)

(assert (=> b!693549 m!949759))

(declare-fun m!949761 () Bool)

(assert (=> b!693549 m!949761))

(declare-fun m!949763 () Bool)

(assert (=> b!693549 m!949763))

(declare-fun m!949765 () Bool)

(assert (=> b!693549 m!949765))

(check-sat b_and!63507 (not b_next!19779) (not start!66292) (not b!693549) (not b!693552) (not b!693523) (not mapNonEmpty!3157) (not b!693558) (not b!693542) (not b_next!19791) (not b!693528) (not b!693522) (not b!693526) (not b!693532) (not b_next!19783) (not b!693530) b_and!63521 (not b!693543) (not b!693533) (not b!693555) (not b_next!19789) (not b!693521) b_and!63519 b_and!63517 (not b!693546) (not b_next!19781) (not b!693548) (not b!693535) (not mapNonEmpty!3156) (not b!693554) (not b!693538) b_and!63509 b_and!63515 (not b!693520) (not b_next!19777) (not mapNonEmpty!3155) b_and!63511 (not b!693547) (not b!693550) (not b_next!19785) (not b!693519) b_and!63513 (not b!693537) (not b!693557) (not b!693529) (not b_next!19787))
(check-sat (not b_next!19783) b_and!63521 b_and!63507 (not b_next!19779) b_and!63517 (not b_next!19781) (not b_next!19791) b_and!63511 (not b_next!19787) (not b_next!19789) b_and!63519 b_and!63509 b_and!63515 (not b_next!19777) (not b_next!19785) b_and!63513)
