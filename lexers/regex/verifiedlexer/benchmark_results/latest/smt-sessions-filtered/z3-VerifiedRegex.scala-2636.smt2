; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!142780 () Bool)

(assert start!142780)

(declare-fun b!1535653 () Bool)

(declare-fun b_free!39779 () Bool)

(declare-fun b_next!40483 () Bool)

(assert (=> b!1535653 (= b_free!39779 (not b_next!40483))))

(declare-fun tp!442627 () Bool)

(declare-fun b_and!106657 () Bool)

(assert (=> b!1535653 (= tp!442627 b_and!106657)))

(declare-fun b!1535673 () Bool)

(declare-fun b_free!39781 () Bool)

(declare-fun b_next!40485 () Bool)

(assert (=> b!1535673 (= b_free!39781 (not b_next!40485))))

(declare-fun tp!442635 () Bool)

(declare-fun b_and!106659 () Bool)

(assert (=> b!1535673 (= tp!442635 b_and!106659)))

(declare-fun b!1535666 () Bool)

(declare-fun b_free!39783 () Bool)

(declare-fun b_next!40487 () Bool)

(assert (=> b!1535666 (= b_free!39783 (not b_next!40487))))

(declare-fun tp!442630 () Bool)

(declare-fun b_and!106661 () Bool)

(assert (=> b!1535666 (= tp!442630 b_and!106661)))

(declare-fun b!1535683 () Bool)

(declare-fun b_free!39785 () Bool)

(declare-fun b_next!40489 () Bool)

(assert (=> b!1535683 (= b_free!39785 (not b_next!40489))))

(declare-fun tp!442642 () Bool)

(declare-fun b_and!106663 () Bool)

(assert (=> b!1535683 (= tp!442642 b_and!106663)))

(declare-fun b!1535678 () Bool)

(declare-fun b_free!39787 () Bool)

(declare-fun b_next!40491 () Bool)

(assert (=> b!1535678 (= b_free!39787 (not b_next!40491))))

(declare-fun tp!442643 () Bool)

(declare-fun b_and!106665 () Bool)

(assert (=> b!1535678 (= tp!442643 b_and!106665)))

(declare-fun b_free!39789 () Bool)

(declare-fun b_next!40493 () Bool)

(assert (=> b!1535678 (= b_free!39789 (not b_next!40493))))

(declare-fun tp!442634 () Bool)

(declare-fun b_and!106667 () Bool)

(assert (=> b!1535678 (= tp!442634 b_and!106667)))

(declare-fun b!1535665 () Bool)

(declare-fun b_free!39791 () Bool)

(declare-fun b_next!40495 () Bool)

(assert (=> b!1535665 (= b_free!39791 (not b_next!40495))))

(declare-fun tp!442646 () Bool)

(declare-fun b_and!106669 () Bool)

(assert (=> b!1535665 (= tp!442646 b_and!106669)))

(declare-fun b!1535668 () Bool)

(declare-fun b_free!39793 () Bool)

(declare-fun b_next!40497 () Bool)

(assert (=> b!1535668 (= b_free!39793 (not b_next!40497))))

(declare-fun tp!442647 () Bool)

(declare-fun b_and!106671 () Bool)

(assert (=> b!1535668 (= tp!442647 b_and!106671)))

(declare-fun mapIsEmpty!7329 () Bool)

(declare-fun mapRes!7331 () Bool)

(assert (=> mapIsEmpty!7329 mapRes!7331))

(declare-fun tp!442638 () Bool)

(declare-fun e!981949 () Bool)

(declare-fun e!981926 () Bool)

(declare-fun tp!442639 () Bool)

(declare-datatypes ((C!8544 0))(
  ( (C!8545 (val!4844 Int)) )
))
(declare-datatypes ((Regex!4183 0))(
  ( (ElementMatch!4183 (c!251544 C!8544)) (Concat!7135 (regOne!8878 Regex!4183) (regTwo!8878 Regex!4183)) (EmptyExpr!4183) (Star!4183 (reg!4512 Regex!4183)) (EmptyLang!4183) (Union!4183 (regOne!8879 Regex!4183) (regTwo!8879 Regex!4183)) )
))
(declare-datatypes ((List!16320 0))(
  ( (Nil!16252) (Cons!16252 (h!21653 Regex!4183) (t!140526 List!16320)) )
))
(declare-datatypes ((Context!1402 0))(
  ( (Context!1403 (exprs!1201 List!16320)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1446 0))(
  ( (tuple3!1447 (_1!8708 (InoxSet Context!1402)) (_2!8708 Int) (_3!1087 Int)) )
))
(declare-datatypes ((tuple2!15242 0))(
  ( (tuple2!15243 (_1!8709 tuple3!1446) (_2!8709 Int)) )
))
(declare-datatypes ((List!16321 0))(
  ( (Nil!16253) (Cons!16253 (h!21654 tuple2!15242) (t!140527 List!16321)) )
))
(declare-datatypes ((List!16322 0))(
  ( (Nil!16254) (Cons!16254 (h!21655 C!8544) (t!140528 List!16322)) )
))
(declare-datatypes ((IArray!10957 0))(
  ( (IArray!10958 (innerList!5536 List!16322)) )
))
(declare-datatypes ((array!5398 0))(
  ( (array!5399 (arr!2400 (Array (_ BitVec 32) (_ BitVec 64))) (size!13144 (_ BitVec 32))) )
))
(declare-datatypes ((array!5400 0))(
  ( (array!5401 (arr!2401 (Array (_ BitVec 32) List!16321)) (size!13145 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3084 0))(
  ( (LongMapFixedSize!3085 (defaultEntry!1902 Int) (mask!4722 (_ BitVec 32)) (extraKeys!1789 (_ BitVec 32)) (zeroValue!1799 List!16321) (minValue!1799 List!16321) (_size!3165 (_ BitVec 32)) (_keys!1836 array!5398) (_values!1821 array!5400) (_vacant!1603 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1486 0))(
  ( (HashableExt!1485 (__x!10263 Int)) )
))
(declare-datatypes ((Cell!6053 0))(
  ( (Cell!6054 (v!23064 LongMapFixedSize!3084)) )
))
(declare-datatypes ((MutLongMap!1542 0))(
  ( (LongMap!1542 (underlying!3293 Cell!6053)) (MutLongMapExt!1541 (__x!10264 Int)) )
))
(declare-datatypes ((Cell!6055 0))(
  ( (Cell!6056 (v!23065 MutLongMap!1542)) )
))
(declare-datatypes ((MutableMap!1486 0))(
  ( (MutableMapExt!1485 (__x!10265 Int)) (HashMap!1486 (underlying!3294 Cell!6055) (hashF!3405 Hashable!1486) (_size!3166 (_ BitVec 32)) (defaultValue!1646 Int)) )
))
(declare-datatypes ((Conc!5476 0))(
  ( (Node!5476 (left!13426 Conc!5476) (right!13756 Conc!5476) (csize!11182 Int) (cheight!5687 Int)) (Leaf!8113 (xs!8276 IArray!10957) (csize!11183 Int)) (Empty!5476) )
))
(declare-datatypes ((BalanceConc!10894 0))(
  ( (BalanceConc!10895 (c!251545 Conc!5476)) )
))
(declare-datatypes ((CacheFurthestNullable!316 0))(
  ( (CacheFurthestNullable!317 (cache!1867 MutableMap!1486) (totalInput!2346 BalanceConc!10894)) )
))
(declare-fun cacheFurthestNullable!81 () CacheFurthestNullable!316)

(declare-fun array_inv!1731 (array!5398) Bool)

(declare-fun array_inv!1732 (array!5400) Bool)

(assert (=> b!1535653 (= e!981926 (and tp!442627 tp!442639 tp!442638 (array_inv!1731 (_keys!1836 (v!23064 (underlying!3293 (v!23065 (underlying!3294 (cache!1867 cacheFurthestNullable!81))))))) (array_inv!1732 (_values!1821 (v!23064 (underlying!3293 (v!23065 (underlying!3294 (cache!1867 cacheFurthestNullable!81))))))) e!981949))))

(declare-fun b!1535654 () Bool)

(declare-fun e!981945 () Bool)

(declare-fun totalInput!496 () BalanceConc!10894)

(declare-fun tp!442648 () Bool)

(declare-fun inv!21521 (Conc!5476) Bool)

(assert (=> b!1535654 (= e!981945 (and (inv!21521 (c!251545 totalInput!496)) tp!442648))))

(declare-fun e!981935 () Bool)

(declare-fun b!1535655 () Bool)

(declare-fun e!981946 () Bool)

(declare-fun e!981941 () Bool)

(declare-fun inv!21522 (BalanceConc!10894) Bool)

(assert (=> b!1535655 (= e!981941 (and e!981946 (inv!21522 (totalInput!2346 cacheFurthestNullable!81)) e!981935))))

(declare-fun b!1535656 () Bool)

(declare-fun e!981955 () Bool)

(declare-fun e!981957 () Bool)

(declare-datatypes ((tuple3!1448 0))(
  ( (tuple3!1449 (_1!8710 Regex!4183) (_2!8710 Context!1402) (_3!1088 C!8544)) )
))
(declare-datatypes ((tuple2!15244 0))(
  ( (tuple2!15245 (_1!8711 tuple3!1448) (_2!8711 (InoxSet Context!1402))) )
))
(declare-datatypes ((List!16323 0))(
  ( (Nil!16255) (Cons!16255 (h!21656 tuple2!15244) (t!140529 List!16323)) )
))
(declare-datatypes ((array!5402 0))(
  ( (array!5403 (arr!2402 (Array (_ BitVec 32) List!16323)) (size!13146 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3086 0))(
  ( (LongMapFixedSize!3087 (defaultEntry!1903 Int) (mask!4723 (_ BitVec 32)) (extraKeys!1790 (_ BitVec 32)) (zeroValue!1800 List!16323) (minValue!1800 List!16323) (_size!3167 (_ BitVec 32)) (_keys!1837 array!5398) (_values!1822 array!5402) (_vacant!1604 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6057 0))(
  ( (Cell!6058 (v!23066 LongMapFixedSize!3086)) )
))
(declare-datatypes ((MutLongMap!1543 0))(
  ( (LongMap!1543 (underlying!3295 Cell!6057)) (MutLongMapExt!1542 (__x!10266 Int)) )
))
(declare-fun lt!533207 () MutLongMap!1543)

(get-info :version)

(assert (=> b!1535656 (= e!981955 (and e!981957 ((_ is LongMap!1543) lt!533207)))))

(declare-datatypes ((Cell!6059 0))(
  ( (Cell!6060 (v!23067 MutLongMap!1543)) )
))
(declare-datatypes ((Hashable!1487 0))(
  ( (HashableExt!1486 (__x!10267 Int)) )
))
(declare-datatypes ((MutableMap!1487 0))(
  ( (MutableMapExt!1486 (__x!10268 Int)) (HashMap!1487 (underlying!3296 Cell!6059) (hashF!3406 Hashable!1487) (_size!3168 (_ BitVec 32)) (defaultValue!1647 Int)) )
))
(declare-datatypes ((CacheDown!894 0))(
  ( (CacheDown!895 (cache!1868 MutableMap!1487)) )
))
(declare-fun cacheDown!708 () CacheDown!894)

(assert (=> b!1535656 (= lt!533207 (v!23067 (underlying!3296 (cache!1868 cacheDown!708))))))

(declare-fun b!1535657 () Bool)

(declare-fun e!981928 () Bool)

(declare-fun e!981924 () Bool)

(declare-datatypes ((List!16324 0))(
  ( (Nil!16256) (Cons!16256 (h!21657 (_ BitVec 16)) (t!140530 List!16324)) )
))
(declare-datatypes ((TokenValue!2952 0))(
  ( (FloatLiteralValue!5904 (text!21109 List!16324)) (TokenValueExt!2951 (__x!10269 Int)) (Broken!14760 (value!91206 List!16324)) (Object!3019) (End!2952) (Def!2952) (Underscore!2952) (Match!2952) (Else!2952) (Error!2952) (Case!2952) (If!2952) (Extends!2952) (Abstract!2952) (Class!2952) (Val!2952) (DelimiterValue!5904 (del!3012 List!16324)) (KeywordValue!2958 (value!91207 List!16324)) (CommentValue!5904 (value!91208 List!16324)) (WhitespaceValue!5904 (value!91209 List!16324)) (IndentationValue!2952 (value!91210 List!16324)) (String!19033) (Int32!2952) (Broken!14761 (value!91211 List!16324)) (Boolean!2953) (Unit!25820) (OperatorValue!2955 (op!3012 List!16324)) (IdentifierValue!5904 (value!91212 List!16324)) (IdentifierValue!5905 (value!91213 List!16324)) (WhitespaceValue!5905 (value!91214 List!16324)) (True!5904) (False!5904) (Broken!14762 (value!91215 List!16324)) (Broken!14763 (value!91216 List!16324)) (True!5905) (RightBrace!2952) (RightBracket!2952) (Colon!2952) (Null!2952) (Comma!2952) (LeftBracket!2952) (False!5905) (LeftBrace!2952) (ImaginaryLiteralValue!2952 (text!21110 List!16324)) (StringLiteralValue!8856 (value!91217 List!16324)) (EOFValue!2952 (value!91218 List!16324)) (IdentValue!2952 (value!91219 List!16324)) (DelimiterValue!5905 (value!91220 List!16324)) (DedentValue!2952 (value!91221 List!16324)) (NewLineValue!2952 (value!91222 List!16324)) (IntegerValue!8856 (value!91223 (_ BitVec 32)) (text!21111 List!16324)) (IntegerValue!8857 (value!91224 Int) (text!21112 List!16324)) (Times!2952) (Or!2952) (Equal!2952) (Minus!2952) (Broken!14764 (value!91225 List!16324)) (And!2952) (Div!2952) (LessEqual!2952) (Mod!2952) (Concat!7136) (Not!2952) (Plus!2952) (SpaceValue!2952 (value!91226 List!16324)) (IntegerValue!8858 (value!91227 Int) (text!21113 List!16324)) (StringLiteralValue!8857 (text!21114 List!16324)) (FloatLiteralValue!5905 (text!21115 List!16324)) (BytesLiteralValue!2952 (value!91228 List!16324)) (CommentValue!5905 (value!91229 List!16324)) (StringLiteralValue!8858 (value!91230 List!16324)) (ErrorTokenValue!2952 (msg!3013 List!16324)) )
))
(declare-datatypes ((String!19034 0))(
  ( (String!19035 (value!91231 String)) )
))
(declare-datatypes ((TokenValueInjection!5564 0))(
  ( (TokenValueInjection!5565 (toValue!4223 Int) (toChars!4082 Int)) )
))
(declare-datatypes ((Rule!5524 0))(
  ( (Rule!5525 (regex!2862 Regex!4183) (tag!3126 String!19034) (isSeparator!2862 Bool) (transformation!2862 TokenValueInjection!5564)) )
))
(declare-datatypes ((List!16325 0))(
  ( (Nil!16257) (Cons!16257 (h!21658 Rule!5524) (t!140531 List!16325)) )
))
(declare-fun rulesArg!359 () List!16325)

(declare-fun tp!442652 () Bool)

(declare-fun inv!21518 (String!19034) Bool)

(declare-fun inv!21523 (TokenValueInjection!5564) Bool)

(assert (=> b!1535657 (= e!981928 (and tp!442652 (inv!21518 (tag!3126 (h!21658 rulesArg!359))) (inv!21523 (transformation!2862 (h!21658 rulesArg!359))) e!981924))))

(declare-fun mapNonEmpty!7329 () Bool)

(declare-fun mapRes!7329 () Bool)

(declare-fun tp!442626 () Bool)

(declare-fun tp!442650 () Bool)

(assert (=> mapNonEmpty!7329 (= mapRes!7329 (and tp!442626 tp!442650))))

(declare-datatypes ((tuple2!15246 0))(
  ( (tuple2!15247 (_1!8712 Context!1402) (_2!8712 C!8544)) )
))
(declare-datatypes ((tuple2!15248 0))(
  ( (tuple2!15249 (_1!8713 tuple2!15246) (_2!8713 (InoxSet Context!1402))) )
))
(declare-datatypes ((List!16326 0))(
  ( (Nil!16258) (Cons!16258 (h!21659 tuple2!15248) (t!140532 List!16326)) )
))
(declare-fun mapRest!7329 () (Array (_ BitVec 32) List!16326))

(declare-datatypes ((array!5404 0))(
  ( (array!5405 (arr!2403 (Array (_ BitVec 32) List!16326)) (size!13147 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3088 0))(
  ( (LongMapFixedSize!3089 (defaultEntry!1904 Int) (mask!4724 (_ BitVec 32)) (extraKeys!1791 (_ BitVec 32)) (zeroValue!1801 List!16326) (minValue!1801 List!16326) (_size!3169 (_ BitVec 32)) (_keys!1838 array!5398) (_values!1823 array!5404) (_vacant!1605 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!6061 0))(
  ( (Cell!6062 (v!23068 LongMapFixedSize!3088)) )
))
(declare-datatypes ((MutLongMap!1544 0))(
  ( (LongMap!1544 (underlying!3297 Cell!6061)) (MutLongMapExt!1543 (__x!10270 Int)) )
))
(declare-datatypes ((Cell!6063 0))(
  ( (Cell!6064 (v!23069 MutLongMap!1544)) )
))
(declare-datatypes ((Hashable!1488 0))(
  ( (HashableExt!1487 (__x!10271 Int)) )
))
(declare-datatypes ((MutableMap!1488 0))(
  ( (MutableMapExt!1487 (__x!10272 Int)) (HashMap!1488 (underlying!3298 Cell!6063) (hashF!3407 Hashable!1488) (_size!3170 (_ BitVec 32)) (defaultValue!1648 Int)) )
))
(declare-datatypes ((CacheUp!890 0))(
  ( (CacheUp!891 (cache!1869 MutableMap!1488)) )
))
(declare-fun cacheUp!695 () CacheUp!890)

(declare-fun mapValue!7329 () List!16326)

(declare-fun mapKey!7331 () (_ BitVec 32))

(assert (=> mapNonEmpty!7329 (= (arr!2403 (_values!1823 (v!23068 (underlying!3297 (v!23069 (underlying!3298 (cache!1869 cacheUp!695))))))) (store mapRest!7329 mapKey!7331 mapValue!7329))))

(declare-fun b!1535658 () Bool)

(declare-fun e!981931 () Bool)

(declare-fun e!981930 () Bool)

(assert (=> b!1535658 (= e!981931 e!981930)))

(declare-fun b!1535659 () Bool)

(declare-fun res!688646 () Bool)

(declare-fun e!981951 () Bool)

(assert (=> b!1535659 (=> (not res!688646) (not e!981951))))

(declare-datatypes ((LexerInterface!2514 0))(
  ( (LexerInterfaceExt!2511 (__x!10273 Int)) (Lexer!2512) )
))
(declare-fun thiss!15733 () LexerInterface!2514)

(declare-fun rulesValidInductive!869 (LexerInterface!2514 List!16325) Bool)

(assert (=> b!1535659 (= res!688646 (rulesValidInductive!869 thiss!15733 rulesArg!359))))

(declare-fun b!1535660 () Bool)

(declare-fun e!981954 () Bool)

(declare-fun e!981950 () Bool)

(assert (=> b!1535660 (= e!981954 e!981950)))

(declare-fun b!1535661 () Bool)

(declare-fun tp!442640 () Bool)

(assert (=> b!1535661 (= e!981935 (and (inv!21521 (c!251545 (totalInput!2346 cacheFurthestNullable!81))) tp!442640))))

(declare-fun b!1535662 () Bool)

(declare-fun e!981932 () Bool)

(declare-fun tp!442637 () Bool)

(assert (=> b!1535662 (= e!981932 (and tp!442637 mapRes!7331))))

(declare-fun condMapEmpty!7329 () Bool)

(declare-fun mapDefault!7331 () List!16323)

(assert (=> b!1535662 (= condMapEmpty!7329 (= (arr!2402 (_values!1822 (v!23066 (underlying!3295 (v!23067 (underlying!3296 (cache!1868 cacheDown!708))))))) ((as const (Array (_ BitVec 32) List!16323)) mapDefault!7331)))))

(declare-fun b!1535663 () Bool)

(declare-fun e!981936 () Bool)

(assert (=> b!1535663 (= e!981936 true)))

(declare-fun lt!533206 () Bool)

(declare-fun ruleValid!642 (LexerInterface!2514 Rule!5524) Bool)

(assert (=> b!1535663 (= lt!533206 (ruleValid!642 thiss!15733 (h!21658 rulesArg!359)))))

(declare-fun b!1535664 () Bool)

(declare-fun e!981939 () Bool)

(declare-fun e!981933 () Bool)

(assert (=> b!1535664 (= e!981939 e!981933)))

(declare-fun e!981937 () Bool)

(declare-fun tp!442645 () Bool)

(declare-fun e!981940 () Bool)

(declare-fun tp!442651 () Bool)

(declare-fun array_inv!1733 (array!5404) Bool)

(assert (=> b!1535665 (= e!981937 (and tp!442646 tp!442645 tp!442651 (array_inv!1731 (_keys!1838 (v!23068 (underlying!3297 (v!23069 (underlying!3298 (cache!1869 cacheUp!695))))))) (array_inv!1733 (_values!1823 (v!23068 (underlying!3297 (v!23069 (underlying!3298 (cache!1869 cacheUp!695))))))) e!981940))))

(declare-fun mapIsEmpty!7330 () Bool)

(assert (=> mapIsEmpty!7330 mapRes!7329))

(assert (=> b!1535666 (= e!981950 (and e!981955 tp!442630))))

(declare-fun b!1535667 () Bool)

(declare-fun res!688645 () Bool)

(declare-fun e!981934 () Bool)

(assert (=> b!1535667 (=> (not res!688645) (not e!981934))))

(declare-fun valid!1261 (CacheUp!890) Bool)

(assert (=> b!1535667 (= res!688645 (valid!1261 cacheUp!695))))

(declare-fun e!981948 () Bool)

(assert (=> b!1535668 (= e!981946 (and e!981948 tp!442647))))

(declare-fun b!1535669 () Bool)

(assert (=> b!1535669 (= e!981951 e!981934)))

(declare-fun res!688649 () Bool)

(assert (=> b!1535669 (=> (not res!688649) (not e!981934))))

(declare-fun lt!533209 () List!16322)

(declare-fun isSuffix!316 (List!16322 List!16322) Bool)

(declare-fun list!6407 (BalanceConc!10894) List!16322)

(assert (=> b!1535669 (= res!688649 (isSuffix!316 lt!533209 (list!6407 totalInput!496)))))

(declare-fun input!1460 () BalanceConc!10894)

(assert (=> b!1535669 (= lt!533209 (list!6407 input!1460))))

(declare-fun b!1535670 () Bool)

(assert (=> b!1535670 (= e!981934 (not e!981936))))

(declare-fun res!688647 () Bool)

(assert (=> b!1535670 (=> res!688647 e!981936)))

(assert (=> b!1535670 (= res!688647 (or (not ((_ is Cons!16257) rulesArg!359)) (not ((_ is Nil!16257) (t!140531 rulesArg!359)))))))

(declare-fun isPrefix!1229 (List!16322 List!16322) Bool)

(assert (=> b!1535670 (isPrefix!1229 lt!533209 lt!533209)))

(declare-datatypes ((Unit!25821 0))(
  ( (Unit!25822) )
))
(declare-fun lt!533208 () Unit!25821)

(declare-fun lemmaIsPrefixRefl!859 (List!16322 List!16322) Unit!25821)

(assert (=> b!1535670 (= lt!533208 (lemmaIsPrefixRefl!859 lt!533209 lt!533209))))

(declare-fun b!1535671 () Bool)

(declare-fun res!688652 () Bool)

(assert (=> b!1535671 (=> (not res!688652) (not e!981951))))

(declare-fun isEmpty!9997 (List!16325) Bool)

(assert (=> b!1535671 (= res!688652 (not (isEmpty!9997 rulesArg!359)))))

(declare-fun b!1535672 () Bool)

(assert (=> b!1535672 (= e!981930 e!981937)))

(declare-fun tp!442628 () Bool)

(declare-fun tp!442649 () Bool)

(declare-fun e!981938 () Bool)

(declare-fun array_inv!1734 (array!5402) Bool)

(assert (=> b!1535673 (= e!981938 (and tp!442635 tp!442628 tp!442649 (array_inv!1731 (_keys!1837 (v!23066 (underlying!3295 (v!23067 (underlying!3296 (cache!1868 cacheDown!708))))))) (array_inv!1734 (_values!1822 (v!23066 (underlying!3295 (v!23067 (underlying!3296 (cache!1868 cacheDown!708))))))) e!981932))))

(declare-fun b!1535674 () Bool)

(declare-fun res!688650 () Bool)

(assert (=> b!1535674 (=> (not res!688650) (not e!981934))))

(declare-fun valid!1262 (CacheDown!894) Bool)

(assert (=> b!1535674 (= res!688650 (valid!1262 cacheDown!708))))

(declare-fun b!1535675 () Bool)

(declare-fun e!981943 () Bool)

(declare-fun e!981952 () Bool)

(assert (=> b!1535675 (= e!981943 e!981952)))

(declare-fun b!1535676 () Bool)

(declare-fun res!688651 () Bool)

(assert (=> b!1535676 (=> (not res!688651) (not e!981934))))

(assert (=> b!1535676 (= res!688651 (= (totalInput!2346 cacheFurthestNullable!81) totalInput!496))))

(declare-fun b!1535677 () Bool)

(declare-fun e!981944 () Bool)

(assert (=> b!1535677 (= e!981944 e!981938)))

(assert (=> b!1535678 (= e!981924 (and tp!442643 tp!442634))))

(declare-fun mapNonEmpty!7330 () Bool)

(declare-fun tp!442631 () Bool)

(declare-fun tp!442629 () Bool)

(assert (=> mapNonEmpty!7330 (= mapRes!7331 (and tp!442631 tp!442629))))

(declare-fun mapKey!7329 () (_ BitVec 32))

(declare-fun mapValue!7330 () List!16323)

(declare-fun mapRest!7331 () (Array (_ BitVec 32) List!16323))

(assert (=> mapNonEmpty!7330 (= (arr!2402 (_values!1822 (v!23066 (underlying!3295 (v!23067 (underlying!3296 (cache!1868 cacheDown!708))))))) (store mapRest!7331 mapKey!7329 mapValue!7330))))

(declare-fun res!688648 () Bool)

(assert (=> start!142780 (=> (not res!688648) (not e!981951))))

(assert (=> start!142780 (= res!688648 ((_ is Lexer!2512) thiss!15733))))

(assert (=> start!142780 e!981951))

(declare-fun inv!21524 (CacheUp!890) Bool)

(assert (=> start!142780 (and (inv!21524 cacheUp!695) e!981943)))

(declare-fun e!981925 () Bool)

(assert (=> start!142780 (and (inv!21522 input!1460) e!981925)))

(declare-fun inv!21525 (CacheDown!894) Bool)

(assert (=> start!142780 (and (inv!21525 cacheDown!708) e!981954)))

(assert (=> start!142780 true))

(assert (=> start!142780 (and (inv!21522 totalInput!496) e!981945)))

(declare-fun e!981956 () Bool)

(assert (=> start!142780 e!981956))

(declare-fun inv!21526 (CacheFurthestNullable!316) Bool)

(assert (=> start!142780 (and (inv!21526 cacheFurthestNullable!81) e!981941)))

(declare-fun b!1535679 () Bool)

(declare-fun tp!442644 () Bool)

(declare-fun mapRes!7330 () Bool)

(assert (=> b!1535679 (= e!981949 (and tp!442644 mapRes!7330))))

(declare-fun condMapEmpty!7330 () Bool)

(declare-fun mapDefault!7330 () List!16321)

(assert (=> b!1535679 (= condMapEmpty!7330 (= (arr!2401 (_values!1821 (v!23064 (underlying!3293 (v!23065 (underlying!3294 (cache!1867 cacheFurthestNullable!81))))))) ((as const (Array (_ BitVec 32) List!16321)) mapDefault!7330)))))

(declare-fun b!1535680 () Bool)

(declare-fun tp!442625 () Bool)

(assert (=> b!1535680 (= e!981925 (and (inv!21521 (c!251545 input!1460)) tp!442625))))

(declare-fun b!1535681 () Bool)

(assert (=> b!1535681 (= e!981957 e!981944)))

(declare-fun mapIsEmpty!7331 () Bool)

(assert (=> mapIsEmpty!7331 mapRes!7330))

(declare-fun b!1535682 () Bool)

(declare-fun lt!533210 () MutLongMap!1542)

(assert (=> b!1535682 (= e!981948 (and e!981939 ((_ is LongMap!1542) lt!533210)))))

(assert (=> b!1535682 (= lt!533210 (v!23065 (underlying!3294 (cache!1867 cacheFurthestNullable!81))))))

(declare-fun e!981953 () Bool)

(assert (=> b!1535683 (= e!981952 (and e!981953 tp!442642))))

(declare-fun b!1535684 () Bool)

(declare-fun lt!533205 () MutLongMap!1544)

(assert (=> b!1535684 (= e!981953 (and e!981931 ((_ is LongMap!1544) lt!533205)))))

(assert (=> b!1535684 (= lt!533205 (v!23069 (underlying!3298 (cache!1869 cacheUp!695))))))

(declare-fun b!1535685 () Bool)

(declare-fun tp!442636 () Bool)

(assert (=> b!1535685 (= e!981956 (and e!981928 tp!442636))))

(declare-fun b!1535686 () Bool)

(assert (=> b!1535686 (= e!981933 e!981926)))

(declare-fun b!1535687 () Bool)

(declare-fun tp!442632 () Bool)

(assert (=> b!1535687 (= e!981940 (and tp!442632 mapRes!7329))))

(declare-fun condMapEmpty!7331 () Bool)

(declare-fun mapDefault!7329 () List!16326)

(assert (=> b!1535687 (= condMapEmpty!7331 (= (arr!2403 (_values!1823 (v!23068 (underlying!3297 (v!23069 (underlying!3298 (cache!1869 cacheUp!695))))))) ((as const (Array (_ BitVec 32) List!16326)) mapDefault!7329)))))

(declare-fun b!1535688 () Bool)

(declare-fun res!688644 () Bool)

(assert (=> b!1535688 (=> (not res!688644) (not e!981934))))

(declare-fun valid!1263 (CacheFurthestNullable!316) Bool)

(assert (=> b!1535688 (= res!688644 (valid!1263 cacheFurthestNullable!81))))

(declare-fun mapNonEmpty!7331 () Bool)

(declare-fun tp!442641 () Bool)

(declare-fun tp!442633 () Bool)

(assert (=> mapNonEmpty!7331 (= mapRes!7330 (and tp!442641 tp!442633))))

(declare-fun mapRest!7330 () (Array (_ BitVec 32) List!16321))

(declare-fun mapKey!7330 () (_ BitVec 32))

(declare-fun mapValue!7331 () List!16321)

(assert (=> mapNonEmpty!7331 (= (arr!2401 (_values!1821 (v!23064 (underlying!3293 (v!23065 (underlying!3294 (cache!1867 cacheFurthestNullable!81))))))) (store mapRest!7330 mapKey!7330 mapValue!7331))))

(assert (= (and start!142780 res!688648) b!1535659))

(assert (= (and b!1535659 res!688646) b!1535671))

(assert (= (and b!1535671 res!688652) b!1535669))

(assert (= (and b!1535669 res!688649) b!1535667))

(assert (= (and b!1535667 res!688645) b!1535674))

(assert (= (and b!1535674 res!688650) b!1535688))

(assert (= (and b!1535688 res!688644) b!1535676))

(assert (= (and b!1535676 res!688651) b!1535670))

(assert (= (and b!1535670 (not res!688647)) b!1535663))

(assert (= (and b!1535687 condMapEmpty!7331) mapIsEmpty!7330))

(assert (= (and b!1535687 (not condMapEmpty!7331)) mapNonEmpty!7329))

(assert (= b!1535665 b!1535687))

(assert (= b!1535672 b!1535665))

(assert (= b!1535658 b!1535672))

(assert (= (and b!1535684 ((_ is LongMap!1544) (v!23069 (underlying!3298 (cache!1869 cacheUp!695))))) b!1535658))

(assert (= b!1535683 b!1535684))

(assert (= (and b!1535675 ((_ is HashMap!1488) (cache!1869 cacheUp!695))) b!1535683))

(assert (= start!142780 b!1535675))

(assert (= start!142780 b!1535680))

(assert (= (and b!1535662 condMapEmpty!7329) mapIsEmpty!7329))

(assert (= (and b!1535662 (not condMapEmpty!7329)) mapNonEmpty!7330))

(assert (= b!1535673 b!1535662))

(assert (= b!1535677 b!1535673))

(assert (= b!1535681 b!1535677))

(assert (= (and b!1535656 ((_ is LongMap!1543) (v!23067 (underlying!3296 (cache!1868 cacheDown!708))))) b!1535681))

(assert (= b!1535666 b!1535656))

(assert (= (and b!1535660 ((_ is HashMap!1487) (cache!1868 cacheDown!708))) b!1535666))

(assert (= start!142780 b!1535660))

(assert (= start!142780 b!1535654))

(assert (= b!1535657 b!1535678))

(assert (= b!1535685 b!1535657))

(assert (= (and start!142780 ((_ is Cons!16257) rulesArg!359)) b!1535685))

(assert (= (and b!1535679 condMapEmpty!7330) mapIsEmpty!7331))

(assert (= (and b!1535679 (not condMapEmpty!7330)) mapNonEmpty!7331))

(assert (= b!1535653 b!1535679))

(assert (= b!1535686 b!1535653))

(assert (= b!1535664 b!1535686))

(assert (= (and b!1535682 ((_ is LongMap!1542) (v!23065 (underlying!3294 (cache!1867 cacheFurthestNullable!81))))) b!1535664))

(assert (= b!1535668 b!1535682))

(assert (= (and b!1535655 ((_ is HashMap!1486) (cache!1867 cacheFurthestNullable!81))) b!1535668))

(assert (= b!1535655 b!1535661))

(assert (= start!142780 b!1535655))

(declare-fun m!1811218 () Bool)

(assert (=> b!1535663 m!1811218))

(declare-fun m!1811220 () Bool)

(assert (=> b!1535659 m!1811220))

(declare-fun m!1811222 () Bool)

(assert (=> mapNonEmpty!7331 m!1811222))

(declare-fun m!1811224 () Bool)

(assert (=> b!1535680 m!1811224))

(declare-fun m!1811226 () Bool)

(assert (=> b!1535669 m!1811226))

(assert (=> b!1535669 m!1811226))

(declare-fun m!1811228 () Bool)

(assert (=> b!1535669 m!1811228))

(declare-fun m!1811230 () Bool)

(assert (=> b!1535669 m!1811230))

(declare-fun m!1811232 () Bool)

(assert (=> b!1535655 m!1811232))

(declare-fun m!1811234 () Bool)

(assert (=> b!1535653 m!1811234))

(declare-fun m!1811236 () Bool)

(assert (=> b!1535653 m!1811236))

(declare-fun m!1811238 () Bool)

(assert (=> b!1535688 m!1811238))

(declare-fun m!1811240 () Bool)

(assert (=> b!1535673 m!1811240))

(declare-fun m!1811242 () Bool)

(assert (=> b!1535673 m!1811242))

(declare-fun m!1811244 () Bool)

(assert (=> b!1535661 m!1811244))

(declare-fun m!1811246 () Bool)

(assert (=> b!1535665 m!1811246))

(declare-fun m!1811248 () Bool)

(assert (=> b!1535665 m!1811248))

(declare-fun m!1811250 () Bool)

(assert (=> b!1535657 m!1811250))

(declare-fun m!1811252 () Bool)

(assert (=> b!1535657 m!1811252))

(declare-fun m!1811254 () Bool)

(assert (=> b!1535667 m!1811254))

(declare-fun m!1811256 () Bool)

(assert (=> b!1535671 m!1811256))

(declare-fun m!1811258 () Bool)

(assert (=> mapNonEmpty!7330 m!1811258))

(declare-fun m!1811260 () Bool)

(assert (=> b!1535670 m!1811260))

(declare-fun m!1811262 () Bool)

(assert (=> b!1535670 m!1811262))

(declare-fun m!1811264 () Bool)

(assert (=> b!1535674 m!1811264))

(declare-fun m!1811266 () Bool)

(assert (=> mapNonEmpty!7329 m!1811266))

(declare-fun m!1811268 () Bool)

(assert (=> b!1535654 m!1811268))

(declare-fun m!1811270 () Bool)

(assert (=> start!142780 m!1811270))

(declare-fun m!1811272 () Bool)

(assert (=> start!142780 m!1811272))

(declare-fun m!1811274 () Bool)

(assert (=> start!142780 m!1811274))

(declare-fun m!1811276 () Bool)

(assert (=> start!142780 m!1811276))

(declare-fun m!1811278 () Bool)

(assert (=> start!142780 m!1811278))

(check-sat (not b_next!40489) (not b!1535659) (not b!1535680) (not b_next!40487) (not b!1535665) (not b_next!40495) (not b!1535679) b_and!106661 (not mapNonEmpty!7329) (not b!1535687) (not b!1535685) (not b_next!40491) (not b_next!40485) (not b!1535657) b_and!106669 (not b!1535662) (not b!1535671) (not b!1535654) b_and!106671 b_and!106663 (not mapNonEmpty!7330) b_and!106665 (not b!1535663) b_and!106659 (not b_next!40483) (not b_next!40497) (not b!1535667) (not b!1535669) (not b!1535670) (not b!1535661) (not b!1535688) (not b_next!40493) (not b!1535653) b_and!106657 (not b!1535655) (not b!1535674) b_and!106667 (not start!142780) (not mapNonEmpty!7331) (not b!1535673))
(check-sat (not b_next!40489) (not b_next!40487) b_and!106669 (not b_next!40495) b_and!106659 b_and!106661 (not b_next!40493) b_and!106657 (not b_next!40491) b_and!106667 (not b_next!40485) b_and!106671 b_and!106663 b_and!106665 (not b_next!40483) (not b_next!40497))
