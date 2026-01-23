; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!140578 () Bool)

(assert start!140578)

(declare-fun b!1503784 () Bool)

(declare-fun b_free!38915 () Bool)

(declare-fun b_next!39619 () Bool)

(assert (=> b!1503784 (= b_free!38915 (not b_next!39619))))

(declare-fun tp!428794 () Bool)

(declare-fun b_and!104603 () Bool)

(assert (=> b!1503784 (= tp!428794 b_and!104603)))

(declare-fun b!1503755 () Bool)

(declare-fun b_free!38917 () Bool)

(declare-fun b_next!39621 () Bool)

(assert (=> b!1503755 (= b_free!38917 (not b_next!39621))))

(declare-fun tp!428791 () Bool)

(declare-fun b_and!104605 () Bool)

(assert (=> b!1503755 (= tp!428791 b_and!104605)))

(declare-fun b!1503770 () Bool)

(declare-fun b_free!38919 () Bool)

(declare-fun b_next!39623 () Bool)

(assert (=> b!1503770 (= b_free!38919 (not b_next!39623))))

(declare-fun tp!428801 () Bool)

(declare-fun b_and!104607 () Bool)

(assert (=> b!1503770 (= tp!428801 b_and!104607)))

(declare-fun b!1503765 () Bool)

(declare-fun b_free!38921 () Bool)

(declare-fun b_next!39625 () Bool)

(assert (=> b!1503765 (= b_free!38921 (not b_next!39625))))

(declare-fun tp!428808 () Bool)

(declare-fun b_and!104609 () Bool)

(assert (=> b!1503765 (= tp!428808 b_and!104609)))

(declare-fun b!1503758 () Bool)

(declare-fun b_free!38923 () Bool)

(declare-fun b_next!39627 () Bool)

(assert (=> b!1503758 (= b_free!38923 (not b_next!39627))))

(declare-fun tp!428813 () Bool)

(declare-fun b_and!104611 () Bool)

(assert (=> b!1503758 (= tp!428813 b_and!104611)))

(declare-fun b!1503760 () Bool)

(declare-fun b_free!38925 () Bool)

(declare-fun b_next!39629 () Bool)

(assert (=> b!1503760 (= b_free!38925 (not b_next!39629))))

(declare-fun tp!428790 () Bool)

(declare-fun b_and!104613 () Bool)

(assert (=> b!1503760 (= tp!428790 b_and!104613)))

(declare-fun b_free!38927 () Bool)

(declare-fun b_next!39631 () Bool)

(assert (=> b!1503760 (= b_free!38927 (not b_next!39631))))

(declare-fun tp!428809 () Bool)

(declare-fun b_and!104615 () Bool)

(assert (=> b!1503760 (= tp!428809 b_and!104615)))

(declare-fun b!1503767 () Bool)

(declare-fun b_free!38929 () Bool)

(declare-fun b_next!39633 () Bool)

(assert (=> b!1503767 (= b_free!38929 (not b_next!39633))))

(declare-fun tp!428797 () Bool)

(declare-fun b_and!104617 () Bool)

(assert (=> b!1503767 (= tp!428797 b_and!104617)))

(declare-fun e!961371 () Bool)

(declare-fun e!961361 () Bool)

(declare-datatypes ((List!15988 0))(
  ( (Nil!15920) (Cons!15920 (h!21321 (_ BitVec 16)) (t!138917 List!15988)) )
))
(declare-datatypes ((TokenValue!2916 0))(
  ( (FloatLiteralValue!5832 (text!20857 List!15988)) (TokenValueExt!2915 (__x!9838 Int)) (Broken!14580 (value!90175 List!15988)) (Object!2983) (End!2916) (Def!2916) (Underscore!2916) (Match!2916) (Else!2916) (Error!2916) (Case!2916) (If!2916) (Extends!2916) (Abstract!2916) (Class!2916) (Val!2916) (DelimiterValue!5832 (del!2976 List!15988)) (KeywordValue!2922 (value!90176 List!15988)) (CommentValue!5832 (value!90177 List!15988)) (WhitespaceValue!5832 (value!90178 List!15988)) (IndentationValue!2916 (value!90179 List!15988)) (String!18841) (Int32!2916) (Broken!14581 (value!90180 List!15988)) (Boolean!2917) (Unit!25690) (OperatorValue!2919 (op!2976 List!15988)) (IdentifierValue!5832 (value!90181 List!15988)) (IdentifierValue!5833 (value!90182 List!15988)) (WhitespaceValue!5833 (value!90183 List!15988)) (True!5832) (False!5832) (Broken!14582 (value!90184 List!15988)) (Broken!14583 (value!90185 List!15988)) (True!5833) (RightBrace!2916) (RightBracket!2916) (Colon!2916) (Null!2916) (Comma!2916) (LeftBracket!2916) (False!5833) (LeftBrace!2916) (ImaginaryLiteralValue!2916 (text!20858 List!15988)) (StringLiteralValue!8748 (value!90186 List!15988)) (EOFValue!2916 (value!90187 List!15988)) (IdentValue!2916 (value!90188 List!15988)) (DelimiterValue!5833 (value!90189 List!15988)) (DedentValue!2916 (value!90190 List!15988)) (NewLineValue!2916 (value!90191 List!15988)) (IntegerValue!8748 (value!90192 (_ BitVec 32)) (text!20859 List!15988)) (IntegerValue!8749 (value!90193 Int) (text!20860 List!15988)) (Times!2916) (Or!2916) (Equal!2916) (Minus!2916) (Broken!14584 (value!90194 List!15988)) (And!2916) (Div!2916) (LessEqual!2916) (Mod!2916) (Concat!7057) (Not!2916) (Plus!2916) (SpaceValue!2916 (value!90195 List!15988)) (IntegerValue!8750 (value!90196 Int) (text!20861 List!15988)) (StringLiteralValue!8749 (text!20862 List!15988)) (FloatLiteralValue!5833 (text!20863 List!15988)) (BytesLiteralValue!2916 (value!90197 List!15988)) (CommentValue!5833 (value!90198 List!15988)) (StringLiteralValue!8750 (value!90199 List!15988)) (ErrorTokenValue!2916 (msg!2977 List!15988)) )
))
(declare-datatypes ((C!8460 0))(
  ( (C!8461 (val!4802 Int)) )
))
(declare-datatypes ((List!15989 0))(
  ( (Nil!15921) (Cons!15921 (h!21322 C!8460) (t!138918 List!15989)) )
))
(declare-datatypes ((IArray!10811 0))(
  ( (IArray!10812 (innerList!5463 List!15989)) )
))
(declare-datatypes ((Conc!5403 0))(
  ( (Node!5403 (left!13316 Conc!5403) (right!13646 Conc!5403) (csize!11036 Int) (cheight!5614 Int)) (Leaf!8019 (xs!8178 IArray!10811) (csize!11037 Int)) (Empty!5403) )
))
(declare-datatypes ((BalanceConc!10748 0))(
  ( (BalanceConc!10749 (c!246612 Conc!5403)) )
))
(declare-datatypes ((Regex!4141 0))(
  ( (ElementMatch!4141 (c!246613 C!8460)) (Concat!7058 (regOne!8794 Regex!4141) (regTwo!8794 Regex!4141)) (EmptyExpr!4141) (Star!4141 (reg!4470 Regex!4141)) (EmptyLang!4141) (Union!4141 (regOne!8795 Regex!4141) (regTwo!8795 Regex!4141)) )
))
(declare-datatypes ((String!18842 0))(
  ( (String!18843 (value!90200 String)) )
))
(declare-datatypes ((TokenValueInjection!5492 0))(
  ( (TokenValueInjection!5493 (toValue!4173 Int) (toChars!4032 Int)) )
))
(declare-datatypes ((Rule!5452 0))(
  ( (Rule!5453 (regex!2826 Regex!4141) (tag!3090 String!18842) (isSeparator!2826 Bool) (transformation!2826 TokenValueInjection!5492)) )
))
(declare-datatypes ((List!15990 0))(
  ( (Nil!15922) (Cons!15922 (h!21323 Rule!5452) (t!138919 List!15990)) )
))
(declare-fun rules!1640 () List!15990)

(declare-fun tp!428815 () Bool)

(declare-fun b!1503735 () Bool)

(declare-fun inv!21137 (String!18842) Bool)

(declare-fun inv!21138 (TokenValueInjection!5492) Bool)

(assert (=> b!1503735 (= e!961361 (and tp!428815 (inv!21137 (tag!3090 (h!21323 rules!1640))) (inv!21138 (transformation!2826 (h!21323 rules!1640))) e!961371))))

(declare-fun mapNonEmpty!6789 () Bool)

(declare-fun mapRes!6790 () Bool)

(declare-fun tp!428807 () Bool)

(declare-fun tp!428796 () Bool)

(assert (=> mapNonEmpty!6789 (= mapRes!6790 (and tp!428807 tp!428796))))

(declare-datatypes ((List!15991 0))(
  ( (Nil!15923) (Cons!15923 (h!21324 Regex!4141) (t!138920 List!15991)) )
))
(declare-datatypes ((Context!1318 0))(
  ( (Context!1319 (exprs!1159 List!15991)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1288 0))(
  ( (tuple3!1289 (_1!8305 (InoxSet Context!1318)) (_2!8305 Int) (_3!959 Int)) )
))
(declare-datatypes ((tuple2!14692 0))(
  ( (tuple2!14693 (_1!8306 tuple3!1288) (_2!8306 Int)) )
))
(declare-datatypes ((List!15992 0))(
  ( (Nil!15924) (Cons!15924 (h!21325 tuple2!14692) (t!138921 List!15992)) )
))
(declare-fun mapRest!6789 () (Array (_ BitVec 32) List!15992))

(declare-fun mapValue!6790 () List!15992)

(declare-fun mapKey!6790 () (_ BitVec 32))

(declare-datatypes ((array!5022 0))(
  ( (array!5023 (arr!2240 (Array (_ BitVec 32) List!15992)) (size!12881 (_ BitVec 32))) )
))
(declare-datatypes ((array!5024 0))(
  ( (array!5025 (arr!2241 (Array (_ BitVec 32) (_ BitVec 64))) (size!12882 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2848 0))(
  ( (LongMapFixedSize!2849 (defaultEntry!1784 Int) (mask!4583 (_ BitVec 32)) (extraKeys!1671 (_ BitVec 32)) (zeroValue!1681 List!15992) (minValue!1681 List!15992) (_size!2929 (_ BitVec 32)) (_keys!1718 array!5024) (_values!1703 array!5022) (_vacant!1485 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5581 0))(
  ( (Cell!5582 (v!22743 LongMapFixedSize!2848)) )
))
(declare-datatypes ((MutLongMap!1424 0))(
  ( (LongMap!1424 (underlying!3057 Cell!5581)) (MutLongMapExt!1423 (__x!9839 Int)) )
))
(declare-datatypes ((Cell!5583 0))(
  ( (Cell!5584 (v!22744 MutLongMap!1424)) )
))
(declare-datatypes ((Hashable!1368 0))(
  ( (HashableExt!1367 (__x!9840 Int)) )
))
(declare-datatypes ((MutableMap!1368 0))(
  ( (MutableMapExt!1367 (__x!9841 Int)) (HashMap!1368 (underlying!3058 Cell!5583) (hashF!3287 Hashable!1368) (_size!2930 (_ BitVec 32)) (defaultValue!1528 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!236 0))(
  ( (CacheFurthestNullable!237 (cache!1749 MutableMap!1368) (totalInput!2270 BalanceConc!10748)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!236)

(assert (=> mapNonEmpty!6789 (= (arr!2240 (_values!1703 (v!22743 (underlying!3057 (v!22744 (underlying!3058 (cache!1749 cacheFurthestNullable!64))))))) (store mapRest!6789 mapKey!6790 mapValue!6790))))

(declare-fun b!1503736 () Bool)

(declare-fun e!961384 () Bool)

(declare-fun tp!428798 () Bool)

(declare-fun inv!21139 (Conc!5403) Bool)

(assert (=> b!1503736 (= e!961384 (and (inv!21139 (c!246612 (totalInput!2270 cacheFurthestNullable!64))) tp!428798))))

(declare-fun b!1503737 () Bool)

(declare-fun e!961393 () Bool)

(declare-fun e!961399 () Bool)

(assert (=> b!1503737 (= e!961393 e!961399)))

(declare-fun b!1503738 () Bool)

(declare-fun e!961389 () Bool)

(declare-fun input!1102 () BalanceConc!10748)

(declare-fun tp!428814 () Bool)

(assert (=> b!1503738 (= e!961389 (and (inv!21139 (c!246612 input!1102)) tp!428814))))

(declare-fun b!1503739 () Bool)

(declare-fun e!961367 () Bool)

(declare-fun e!961398 () Bool)

(assert (=> b!1503739 (= e!961367 e!961398)))

(declare-fun res!677461 () Bool)

(assert (=> b!1503739 (=> (not res!677461) (not e!961398))))

(declare-datatypes ((Token!5314 0))(
  ( (Token!5315 (value!90201 TokenValue!2916) (rule!4615 Rule!5452) (size!12883 Int) (originalCharacters!3688 List!15989)) )
))
(declare-datatypes ((List!15993 0))(
  ( (Nil!15925) (Cons!15925 (h!21326 Token!5314) (t!138922 List!15993)) )
))
(declare-datatypes ((IArray!10813 0))(
  ( (IArray!10814 (innerList!5464 List!15993)) )
))
(declare-datatypes ((Conc!5404 0))(
  ( (Node!5404 (left!13317 Conc!5404) (right!13647 Conc!5404) (csize!11038 Int) (cheight!5615 Int)) (Leaf!8020 (xs!8179 IArray!10813) (csize!11039 Int)) (Empty!5404) )
))
(declare-datatypes ((BalanceConc!10750 0))(
  ( (BalanceConc!10751 (c!246614 Conc!5404)) )
))
(declare-fun acc!392 () BalanceConc!10750)

(declare-datatypes ((tuple2!14694 0))(
  ( (tuple2!14695 (_1!8307 BalanceConc!10750) (_2!8307 BalanceConc!10748)) )
))
(declare-fun lt!522501 () tuple2!14694)

(declare-fun lt!522482 () tuple2!14694)

(declare-fun list!6305 (BalanceConc!10750) List!15993)

(declare-fun ++!4302 (BalanceConc!10750 BalanceConc!10750) BalanceConc!10750)

(assert (=> b!1503739 (= res!677461 (= (list!6305 (_1!8307 lt!522501)) (list!6305 (++!4302 acc!392 (_1!8307 lt!522482)))))))

(declare-datatypes ((LexerInterface!2479 0))(
  ( (LexerInterfaceExt!2476 (__x!9842 Int)) (Lexer!2477) )
))
(declare-fun thiss!13241 () LexerInterface!2479)

(declare-fun lexRec!316 (LexerInterface!2479 List!15990 BalanceConc!10748) tuple2!14694)

(assert (=> b!1503739 (= lt!522482 (lexRec!316 thiss!13241 rules!1640 input!1102))))

(declare-fun totalInput!458 () BalanceConc!10748)

(assert (=> b!1503739 (= lt!522501 (lexRec!316 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1503740 () Bool)

(declare-fun e!961364 () Bool)

(declare-fun e!961376 () Bool)

(assert (=> b!1503740 (= e!961364 e!961376)))

(declare-fun b!1503741 () Bool)

(declare-fun res!677459 () Bool)

(declare-fun e!961374 () Bool)

(assert (=> b!1503741 (=> (not res!677459) (not e!961374))))

(declare-fun isEmpty!9890 (List!15990) Bool)

(assert (=> b!1503741 (= res!677459 (not (isEmpty!9890 rules!1640)))))

(declare-fun b!1503742 () Bool)

(declare-fun e!961402 () Bool)

(declare-fun e!961388 () Bool)

(assert (=> b!1503742 (= e!961402 e!961388)))

(declare-fun b!1503743 () Bool)

(declare-fun e!961373 () Bool)

(assert (=> b!1503743 (= e!961398 (not e!961373))))

(declare-fun res!677451 () Bool)

(assert (=> b!1503743 (=> res!677451 e!961373)))

(declare-fun lt!522485 () List!15989)

(declare-fun lt!522497 () List!15989)

(declare-fun isSuffix!289 (List!15989 List!15989) Bool)

(assert (=> b!1503743 (= res!677451 (not (isSuffix!289 lt!522485 lt!522497)))))

(declare-fun lt!522511 () List!15989)

(assert (=> b!1503743 (isSuffix!289 lt!522485 lt!522511)))

(declare-datatypes ((Unit!25691 0))(
  ( (Unit!25692) )
))
(declare-fun lt!522515 () Unit!25691)

(declare-fun lt!522512 () List!15989)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!267 (List!15989 List!15989) Unit!25691)

(assert (=> b!1503743 (= lt!522515 (lemmaConcatTwoListThenFSndIsSuffix!267 lt!522512 lt!522485))))

(declare-fun b!1503744 () Bool)

(declare-fun e!961390 () Bool)

(declare-fun e!961372 () Bool)

(assert (=> b!1503744 (= e!961390 e!961372)))

(declare-fun b!1503745 () Bool)

(declare-fun res!677464 () Bool)

(declare-fun e!961401 () Bool)

(assert (=> b!1503745 (=> res!677464 e!961401)))

(declare-fun lt!522502 () tuple2!14694)

(declare-fun isEmpty!9891 (List!15989) Bool)

(declare-fun list!6306 (BalanceConc!10748) List!15989)

(assert (=> b!1503745 (= res!677464 (not (isEmpty!9891 (list!6306 (_2!8307 lt!522502)))))))

(declare-fun b!1503746 () Bool)

(declare-fun e!961387 () Bool)

(declare-fun tp!428817 () Bool)

(assert (=> b!1503746 (= e!961387 (and (inv!21139 (c!246612 totalInput!458)) tp!428817))))

(declare-fun b!1503747 () Bool)

(declare-fun e!961379 () Bool)

(declare-fun e!961394 () Bool)

(declare-fun lt!522490 () MutLongMap!1424)

(get-info :version)

(assert (=> b!1503747 (= e!961379 (and e!961394 ((_ is LongMap!1424) lt!522490)))))

(assert (=> b!1503747 (= lt!522490 (v!22744 (underlying!3058 (cache!1749 cacheFurthestNullable!64))))))

(declare-fun mapNonEmpty!6790 () Bool)

(declare-fun mapRes!6789 () Bool)

(declare-fun tp!428789 () Bool)

(declare-fun tp!428816 () Bool)

(assert (=> mapNonEmpty!6790 (= mapRes!6789 (and tp!428789 tp!428816))))

(declare-datatypes ((tuple3!1290 0))(
  ( (tuple3!1291 (_1!8308 Regex!4141) (_2!8308 Context!1318) (_3!960 C!8460)) )
))
(declare-datatypes ((tuple2!14696 0))(
  ( (tuple2!14697 (_1!8309 tuple3!1290) (_2!8309 (InoxSet Context!1318))) )
))
(declare-datatypes ((List!15994 0))(
  ( (Nil!15926) (Cons!15926 (h!21327 tuple2!14696) (t!138923 List!15994)) )
))
(declare-datatypes ((array!5026 0))(
  ( (array!5027 (arr!2242 (Array (_ BitVec 32) List!15994)) (size!12884 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2850 0))(
  ( (LongMapFixedSize!2851 (defaultEntry!1785 Int) (mask!4584 (_ BitVec 32)) (extraKeys!1672 (_ BitVec 32)) (zeroValue!1682 List!15994) (minValue!1682 List!15994) (_size!2931 (_ BitVec 32)) (_keys!1719 array!5024) (_values!1704 array!5026) (_vacant!1486 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5585 0))(
  ( (Cell!5586 (v!22745 LongMapFixedSize!2850)) )
))
(declare-datatypes ((MutLongMap!1425 0))(
  ( (LongMap!1425 (underlying!3059 Cell!5585)) (MutLongMapExt!1424 (__x!9843 Int)) )
))
(declare-datatypes ((Cell!5587 0))(
  ( (Cell!5588 (v!22746 MutLongMap!1425)) )
))
(declare-datatypes ((Hashable!1369 0))(
  ( (HashableExt!1368 (__x!9844 Int)) )
))
(declare-datatypes ((MutableMap!1369 0))(
  ( (MutableMapExt!1368 (__x!9845 Int)) (HashMap!1369 (underlying!3060 Cell!5587) (hashF!3288 Hashable!1369) (_size!2932 (_ BitVec 32)) (defaultValue!1529 Int)) )
))
(declare-datatypes ((CacheDown!816 0))(
  ( (CacheDown!817 (cache!1750 MutableMap!1369)) )
))
(declare-fun cacheDown!629 () CacheDown!816)

(declare-fun mapValue!6789 () List!15994)

(declare-fun mapKey!6789 () (_ BitVec 32))

(declare-fun mapRest!6791 () (Array (_ BitVec 32) List!15994))

(assert (=> mapNonEmpty!6790 (= (arr!2242 (_values!1704 (v!22745 (underlying!3059 (v!22746 (underlying!3060 (cache!1750 cacheDown!629))))))) (store mapRest!6791 mapKey!6789 mapValue!6789))))

(declare-fun b!1503748 () Bool)

(declare-fun res!677460 () Bool)

(assert (=> b!1503748 (=> (not res!677460) (not e!961398))))

(declare-fun valid!1135 (CacheDown!816) Bool)

(assert (=> b!1503748 (= res!677460 (valid!1135 cacheDown!629))))

(declare-fun mapIsEmpty!6789 () Bool)

(assert (=> mapIsEmpty!6789 mapRes!6790))

(declare-fun res!677454 () Bool)

(assert (=> start!140578 (=> (not res!677454) (not e!961374))))

(assert (=> start!140578 (= res!677454 ((_ is Lexer!2477) thiss!13241))))

(assert (=> start!140578 e!961374))

(declare-fun e!961369 () Bool)

(declare-fun inv!21140 (BalanceConc!10750) Bool)

(assert (=> start!140578 (and (inv!21140 acc!392) e!961369)))

(declare-datatypes ((tuple2!14698 0))(
  ( (tuple2!14699 (_1!8310 Context!1318) (_2!8310 C!8460)) )
))
(declare-datatypes ((tuple2!14700 0))(
  ( (tuple2!14701 (_1!8311 tuple2!14698) (_2!8311 (InoxSet Context!1318))) )
))
(declare-datatypes ((List!15995 0))(
  ( (Nil!15927) (Cons!15927 (h!21328 tuple2!14700) (t!138924 List!15995)) )
))
(declare-datatypes ((array!5028 0))(
  ( (array!5029 (arr!2243 (Array (_ BitVec 32) List!15995)) (size!12885 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2852 0))(
  ( (LongMapFixedSize!2853 (defaultEntry!1786 Int) (mask!4585 (_ BitVec 32)) (extraKeys!1673 (_ BitVec 32)) (zeroValue!1683 List!15995) (minValue!1683 List!15995) (_size!2933 (_ BitVec 32)) (_keys!1720 array!5024) (_values!1705 array!5028) (_vacant!1487 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1370 0))(
  ( (HashableExt!1369 (__x!9846 Int)) )
))
(declare-datatypes ((Cell!5589 0))(
  ( (Cell!5590 (v!22747 LongMapFixedSize!2852)) )
))
(declare-datatypes ((MutLongMap!1426 0))(
  ( (LongMap!1426 (underlying!3061 Cell!5589)) (MutLongMapExt!1425 (__x!9847 Int)) )
))
(declare-datatypes ((Cell!5591 0))(
  ( (Cell!5592 (v!22748 MutLongMap!1426)) )
))
(declare-datatypes ((MutableMap!1370 0))(
  ( (MutableMapExt!1369 (__x!9848 Int)) (HashMap!1370 (underlying!3062 Cell!5591) (hashF!3289 Hashable!1370) (_size!2934 (_ BitVec 32)) (defaultValue!1530 Int)) )
))
(declare-datatypes ((CacheUp!812 0))(
  ( (CacheUp!813 (cache!1751 MutableMap!1370)) )
))
(declare-fun cacheUp!616 () CacheUp!812)

(declare-fun e!961365 () Bool)

(declare-fun inv!21141 (CacheUp!812) Bool)

(assert (=> start!140578 (and (inv!21141 cacheUp!616) e!961365)))

(declare-fun inv!21142 (CacheDown!816) Bool)

(assert (=> start!140578 (and (inv!21142 cacheDown!629) e!961364)))

(declare-fun inv!21143 (BalanceConc!10748) Bool)

(assert (=> start!140578 (and (inv!21143 input!1102) e!961389)))

(declare-fun treated!70 () BalanceConc!10748)

(declare-fun e!961383 () Bool)

(assert (=> start!140578 (and (inv!21143 treated!70) e!961383)))

(assert (=> start!140578 true))

(declare-fun e!961377 () Bool)

(assert (=> start!140578 e!961377))

(declare-fun e!961397 () Bool)

(declare-fun inv!21144 (CacheFurthestNullable!236) Bool)

(assert (=> start!140578 (and (inv!21144 cacheFurthestNullable!64) e!961397)))

(assert (=> start!140578 (and (inv!21143 totalInput!458) e!961387)))

(declare-fun b!1503749 () Bool)

(declare-fun e!961382 () tuple2!14694)

(assert (=> b!1503749 (= e!961382 (tuple2!14695 (BalanceConc!10751 Empty!5404) input!1102))))

(declare-fun b!1503750 () Bool)

(declare-fun res!677448 () Bool)

(assert (=> b!1503750 (=> (not res!677448) (not e!961367))))

(declare-fun lt!522494 () tuple2!14694)

(assert (=> b!1503750 (= res!677448 (isEmpty!9891 (list!6306 (_2!8307 lt!522494))))))

(declare-fun b!1503751 () Bool)

(declare-fun e!961400 () Bool)

(declare-fun tp!428804 () Bool)

(assert (=> b!1503751 (= e!961400 (and tp!428804 mapRes!6789))))

(declare-fun condMapEmpty!6790 () Bool)

(declare-fun mapDefault!6790 () List!15994)

(assert (=> b!1503751 (= condMapEmpty!6790 (= (arr!2242 (_values!1704 (v!22745 (underlying!3059 (v!22746 (underlying!3060 (cache!1750 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!15994)) mapDefault!6790)))))

(declare-fun b!1503752 () Bool)

(declare-fun e!961363 () Bool)

(assert (=> b!1503752 (= e!961374 e!961363)))

(declare-fun res!677465 () Bool)

(assert (=> b!1503752 (=> (not res!677465) (not e!961363))))

(assert (=> b!1503752 (= res!677465 (= lt!522497 lt!522511))))

(declare-fun ++!4303 (List!15989 List!15989) List!15989)

(assert (=> b!1503752 (= lt!522511 (++!4303 lt!522512 lt!522485))))

(assert (=> b!1503752 (= lt!522497 (list!6306 totalInput!458))))

(assert (=> b!1503752 (= lt!522485 (list!6306 input!1102))))

(assert (=> b!1503752 (= lt!522512 (list!6306 treated!70))))

(declare-datatypes ((tuple2!14702 0))(
  ( (tuple2!14703 (_1!8312 Token!5314) (_2!8312 BalanceConc!10748)) )
))
(declare-datatypes ((Option!2911 0))(
  ( (None!2910) (Some!2910 (v!22749 tuple2!14702)) )
))
(declare-fun lt!522507 () Option!2911)

(declare-fun e!961375 () Bool)

(declare-fun lt!522504 () tuple2!14694)

(declare-fun b!1503753 () Bool)

(declare-fun prepend!450 (BalanceConc!10750 Token!5314) BalanceConc!10750)

(assert (=> b!1503753 (= e!961375 (= lt!522502 (tuple2!14695 (prepend!450 (_1!8307 lt!522504) (_1!8312 (v!22749 lt!522507))) (_2!8307 lt!522504))))))

(assert (=> b!1503753 (= lt!522504 (lexRec!316 thiss!13241 rules!1640 (_2!8312 (v!22749 lt!522507))))))

(declare-fun b!1503754 () Bool)

(declare-fun res!677457 () Bool)

(assert (=> b!1503754 (=> res!677457 e!961401)))

(declare-datatypes ((tuple4!630 0))(
  ( (tuple4!631 (_1!8313 Option!2911) (_2!8313 CacheUp!812) (_3!961 CacheDown!816) (_4!315 CacheFurthestNullable!236)) )
))
(declare-fun lt!522491 () tuple4!630)

(assert (=> b!1503754 (= res!677457 (not (valid!1135 (_3!961 lt!522491))))))

(declare-fun e!961381 () Bool)

(assert (=> b!1503755 (= e!961381 (and e!961379 tp!428791))))

(declare-fun b!1503756 () Bool)

(declare-fun res!677456 () Bool)

(assert (=> b!1503756 (=> (not res!677456) (not e!961398))))

(assert (=> b!1503756 (= res!677456 (= (totalInput!2270 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1503757 () Bool)

(declare-fun e!961368 () Bool)

(assert (=> b!1503757 (= e!961368 e!961393)))

(declare-fun e!961385 () Bool)

(declare-fun e!961362 () Bool)

(assert (=> b!1503758 (= e!961385 (and e!961362 tp!428813))))

(declare-fun b!1503759 () Bool)

(declare-fun tp!428812 () Bool)

(assert (=> b!1503759 (= e!961383 (and (inv!21139 (c!246612 treated!70)) tp!428812))))

(assert (=> b!1503760 (= e!961371 (and tp!428790 tp!428809))))

(declare-fun b!1503761 () Bool)

(declare-fun lt!522495 () MutLongMap!1426)

(assert (=> b!1503761 (= e!961362 (and e!961390 ((_ is LongMap!1426) lt!522495)))))

(assert (=> b!1503761 (= lt!522495 (v!22748 (underlying!3062 (cache!1751 cacheUp!616))))))

(declare-fun b!1503762 () Bool)

(declare-fun res!677449 () Bool)

(assert (=> b!1503762 (=> res!677449 e!961401)))

(declare-fun lt!522499 () List!15993)

(assert (=> b!1503762 (= res!677449 (not (= (list!6305 (_1!8307 lt!522502)) lt!522499)))))

(declare-fun b!1503763 () Bool)

(assert (=> b!1503763 (= e!961397 (and e!961381 (inv!21143 (totalInput!2270 cacheFurthestNullable!64)) e!961384))))

(declare-fun b!1503764 () Bool)

(declare-fun e!961391 () Bool)

(declare-fun tp!428802 () Bool)

(assert (=> b!1503764 (= e!961391 (and tp!428802 mapRes!6790))))

(declare-fun condMapEmpty!6789 () Bool)

(declare-fun mapDefault!6791 () List!15992)

(assert (=> b!1503764 (= condMapEmpty!6789 (= (arr!2240 (_values!1703 (v!22743 (underlying!3057 (v!22744 (underlying!3058 (cache!1749 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!15992)) mapDefault!6791)))))

(declare-fun e!961392 () Bool)

(assert (=> b!1503765 (= e!961376 (and e!961392 tp!428808))))

(declare-fun b!1503766 () Bool)

(declare-fun res!677458 () Bool)

(assert (=> b!1503766 (=> (not res!677458) (not e!961398))))

(declare-fun valid!1136 (CacheUp!812) Bool)

(assert (=> b!1503766 (= res!677458 (valid!1136 cacheUp!616))))

(declare-fun tp!428793 () Bool)

(declare-fun e!961378 () Bool)

(declare-fun tp!428810 () Bool)

(declare-fun e!961395 () Bool)

(declare-fun array_inv!1626 (array!5024) Bool)

(declare-fun array_inv!1627 (array!5028) Bool)

(assert (=> b!1503767 (= e!961395 (and tp!428797 tp!428810 tp!428793 (array_inv!1626 (_keys!1720 (v!22747 (underlying!3061 (v!22748 (underlying!3062 (cache!1751 cacheUp!616))))))) (array_inv!1627 (_values!1705 (v!22747 (underlying!3061 (v!22748 (underlying!3062 (cache!1751 cacheUp!616))))))) e!961378))))

(declare-fun b!1503768 () Bool)

(declare-fun res!677453 () Bool)

(assert (=> b!1503768 (=> res!677453 e!961401)))

(declare-fun lt!522484 () List!15989)

(assert (=> b!1503768 (= res!677453 (not (= lt!522497 lt!522484)))))

(declare-fun b!1503769 () Bool)

(declare-fun lt!522488 () MutLongMap!1425)

(assert (=> b!1503769 (= e!961392 (and e!961368 ((_ is LongMap!1425) lt!522488)))))

(assert (=> b!1503769 (= lt!522488 (v!22746 (underlying!3060 (cache!1750 cacheDown!629))))))

(declare-fun tp!428818 () Bool)

(declare-fun tp!428803 () Bool)

(declare-fun array_inv!1628 (array!5026) Bool)

(assert (=> b!1503770 (= e!961399 (and tp!428801 tp!428803 tp!428818 (array_inv!1626 (_keys!1719 (v!22745 (underlying!3059 (v!22746 (underlying!3060 (cache!1750 cacheDown!629))))))) (array_inv!1628 (_values!1704 (v!22745 (underlying!3059 (v!22746 (underlying!3060 (cache!1750 cacheDown!629))))))) e!961400))))

(declare-fun b!1503771 () Bool)

(assert (=> b!1503771 (= e!961401 true)))

(declare-fun lt!522503 () List!15993)

(declare-fun lt!522517 () BalanceConc!10750)

(declare-fun lt!522510 () tuple2!14694)

(assert (=> b!1503771 (= lt!522503 (list!6305 (++!4302 lt!522517 (_1!8307 lt!522510))))))

(declare-fun b!1503772 () Bool)

(declare-fun tp!428800 () Bool)

(declare-fun mapRes!6791 () Bool)

(assert (=> b!1503772 (= e!961378 (and tp!428800 mapRes!6791))))

(declare-fun condMapEmpty!6791 () Bool)

(declare-fun mapDefault!6789 () List!15995)

(assert (=> b!1503772 (= condMapEmpty!6791 (= (arr!2243 (_values!1705 (v!22747 (underlying!3061 (v!22748 (underlying!3062 (cache!1751 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!15995)) mapDefault!6789)))))

(declare-fun b!1503773 () Bool)

(assert (=> b!1503773 (= e!961363 e!961367)))

(declare-fun res!677455 () Bool)

(assert (=> b!1503773 (=> (not res!677455) (not e!961367))))

(declare-fun lt!522505 () List!15993)

(declare-fun lt!522492 () List!15993)

(assert (=> b!1503773 (= res!677455 (= lt!522505 lt!522492))))

(assert (=> b!1503773 (= lt!522492 (list!6305 acc!392))))

(assert (=> b!1503773 (= lt!522505 (list!6305 (_1!8307 lt!522494)))))

(assert (=> b!1503773 (= lt!522494 (lexRec!316 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1503774 () Bool)

(assert (=> b!1503774 (= e!961372 e!961395)))

(declare-fun b!1503775 () Bool)

(declare-fun tp!428795 () Bool)

(assert (=> b!1503775 (= e!961377 (and e!961361 tp!428795))))

(declare-fun b!1503776 () Bool)

(declare-fun res!677466 () Bool)

(assert (=> b!1503776 (=> res!677466 e!961401)))

(assert (=> b!1503776 (= res!677466 (not (valid!1136 (_2!8313 lt!522491))))))

(declare-fun b!1503777 () Bool)

(declare-fun res!677452 () Bool)

(assert (=> b!1503777 (=> res!677452 e!961401)))

(declare-fun valid!1137 (CacheFurthestNullable!236) Bool)

(assert (=> b!1503777 (= res!677452 (not (valid!1137 (_4!315 lt!522491))))))

(declare-fun b!1503778 () Bool)

(declare-fun e!961366 () Bool)

(assert (=> b!1503778 (= e!961373 e!961366)))

(declare-fun res!677463 () Bool)

(assert (=> b!1503778 (=> res!677463 e!961366)))

(assert (=> b!1503778 (= res!677463 (not ((_ is Some!2910) (_1!8313 lt!522491))))))

(declare-fun maxPrefixZipperSequenceV3Mem!16 (LexerInterface!2479 List!15990 BalanceConc!10748 BalanceConc!10748 CacheUp!812 CacheDown!816 CacheFurthestNullable!236) tuple4!630)

(assert (=> b!1503778 (= lt!522491 (maxPrefixZipperSequenceV3Mem!16 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(declare-fun b!1503779 () Bool)

(declare-fun res!677462 () Bool)

(assert (=> b!1503779 (=> (not res!677462) (not e!961398))))

(assert (=> b!1503779 (= res!677462 (valid!1137 cacheFurthestNullable!64))))

(declare-fun mapIsEmpty!6790 () Bool)

(assert (=> mapIsEmpty!6790 mapRes!6789))

(declare-fun b!1503780 () Bool)

(assert (=> b!1503780 (= e!961394 e!961402)))

(declare-fun b!1503781 () Bool)

(declare-fun res!677450 () Bool)

(assert (=> b!1503781 (=> (not res!677450) (not e!961398))))

(assert (=> b!1503781 (= res!677450 (= (list!6306 (_2!8307 lt!522501)) (list!6306 (_2!8307 lt!522482))))))

(declare-fun mapIsEmpty!6791 () Bool)

(assert (=> mapIsEmpty!6791 mapRes!6791))

(declare-fun mapNonEmpty!6791 () Bool)

(declare-fun tp!428792 () Bool)

(declare-fun tp!428806 () Bool)

(assert (=> mapNonEmpty!6791 (= mapRes!6791 (and tp!428792 tp!428806))))

(declare-fun mapValue!6791 () List!15995)

(declare-fun mapKey!6791 () (_ BitVec 32))

(declare-fun mapRest!6790 () (Array (_ BitVec 32) List!15995))

(assert (=> mapNonEmpty!6791 (= (arr!2243 (_values!1705 (v!22747 (underlying!3061 (v!22748 (underlying!3062 (cache!1751 cacheUp!616))))))) (store mapRest!6790 mapKey!6791 mapValue!6791))))

(declare-fun b!1503782 () Bool)

(assert (=> b!1503782 (= e!961365 e!961385)))

(declare-fun b!1503783 () Bool)

(declare-fun res!677447 () Bool)

(assert (=> b!1503783 (=> (not res!677447) (not e!961374))))

(declare-fun rulesInvariant!2259 (LexerInterface!2479 List!15990) Bool)

(assert (=> b!1503783 (= res!677447 (rulesInvariant!2259 thiss!13241 rules!1640))))

(declare-fun tp!428805 () Bool)

(declare-fun tp!428799 () Bool)

(declare-fun array_inv!1629 (array!5022) Bool)

(assert (=> b!1503784 (= e!961388 (and tp!428794 tp!428799 tp!428805 (array_inv!1626 (_keys!1718 (v!22743 (underlying!3057 (v!22744 (underlying!3058 (cache!1749 cacheFurthestNullable!64))))))) (array_inv!1629 (_values!1703 (v!22743 (underlying!3057 (v!22744 (underlying!3058 (cache!1749 cacheFurthestNullable!64))))))) e!961391))))

(declare-fun b!1503785 () Bool)

(assert (=> b!1503785 (= e!961366 e!961401)))

(declare-fun res!677446 () Bool)

(assert (=> b!1503785 (=> res!677446 e!961401)))

(declare-fun lt!522513 () List!15989)

(assert (=> b!1503785 (= res!677446 (not (isSuffix!289 lt!522513 lt!522497)))))

(assert (=> b!1503785 (isSuffix!289 lt!522513 lt!522484)))

(declare-fun lt!522489 () List!15989)

(assert (=> b!1503785 (= lt!522484 (++!4303 lt!522489 lt!522513))))

(declare-fun lt!522487 () Unit!25691)

(assert (=> b!1503785 (= lt!522487 (lemmaConcatTwoListThenFSndIsSuffix!267 lt!522489 lt!522513))))

(declare-fun lt!522508 () BalanceConc!10748)

(assert (=> b!1503785 (= lt!522489 (list!6306 lt!522508))))

(assert (=> b!1503785 e!961375))

(declare-fun c!246610 () Bool)

(assert (=> b!1503785 (= c!246610 ((_ is Some!2910) lt!522507))))

(assert (=> b!1503785 (= lt!522502 (lexRec!316 thiss!13241 rules!1640 lt!522508))))

(declare-fun maxPrefixZipperSequence!578 (LexerInterface!2479 List!15990 BalanceConc!10748) Option!2911)

(assert (=> b!1503785 (= lt!522507 (maxPrefixZipperSequence!578 thiss!13241 rules!1640 lt!522508))))

(declare-fun lt!522493 () BalanceConc!10748)

(declare-fun ++!4304 (BalanceConc!10748 BalanceConc!10748) BalanceConc!10748)

(assert (=> b!1503785 (= lt!522508 (++!4304 treated!70 lt!522493))))

(declare-fun lt!522483 () List!15989)

(declare-datatypes ((tuple2!14704 0))(
  ( (tuple2!14705 (_1!8314 List!15993) (_2!8314 List!15989)) )
))
(declare-fun lexList!736 (LexerInterface!2479 List!15990 List!15989) tuple2!14704)

(assert (=> b!1503785 (= (lexList!736 thiss!13241 rules!1640 lt!522483) (tuple2!14705 lt!522499 Nil!15921))))

(declare-fun lt!522498 () List!15993)

(declare-fun lt!522496 () Unit!25691)

(declare-fun lemmaLexThenLexPrefix!218 (LexerInterface!2479 List!15990 List!15989 List!15989 List!15993 List!15993 List!15989) Unit!25691)

(assert (=> b!1503785 (= lt!522496 (lemmaLexThenLexPrefix!218 thiss!13241 rules!1640 lt!522483 lt!522513 lt!522499 lt!522498 (list!6306 (_2!8307 lt!522510))))))

(assert (=> b!1503785 (= lt!522499 (list!6305 lt!522517))))

(declare-fun append!485 (BalanceConc!10750 Token!5314) BalanceConc!10750)

(assert (=> b!1503785 (= lt!522517 (append!485 acc!392 (_1!8312 (v!22749 (_1!8313 lt!522491)))))))

(declare-fun lt!522514 () List!15993)

(declare-fun ++!4305 (List!15993 List!15993) List!15993)

(assert (=> b!1503785 (= (++!4305 (++!4305 lt!522492 lt!522514) lt!522498) (++!4305 lt!522492 (++!4305 lt!522514 lt!522498)))))

(declare-fun lt!522516 () Unit!25691)

(declare-fun lemmaConcatAssociativity!919 (List!15993 List!15993 List!15993) Unit!25691)

(assert (=> b!1503785 (= lt!522516 (lemmaConcatAssociativity!919 lt!522492 lt!522514 lt!522498))))

(assert (=> b!1503785 (= lt!522498 (list!6305 (_1!8307 lt!522510)))))

(assert (=> b!1503785 (= lt!522514 (Cons!15925 (_1!8312 (v!22749 (_1!8313 lt!522491))) Nil!15925))))

(assert (=> b!1503785 (= lt!522482 e!961382)))

(declare-fun c!246611 () Bool)

(declare-fun lt!522506 () Option!2911)

(assert (=> b!1503785 (= c!246611 ((_ is Some!2910) lt!522506))))

(assert (=> b!1503785 (= lt!522506 (maxPrefixZipperSequence!578 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!522509 () List!15989)

(assert (=> b!1503785 (= (++!4303 lt!522483 lt!522513) (++!4303 lt!522512 (++!4303 lt!522509 lt!522513)))))

(assert (=> b!1503785 (= lt!522483 (++!4303 lt!522512 lt!522509))))

(declare-fun lt!522500 () Unit!25691)

(declare-fun lemmaConcatAssociativity!920 (List!15989 List!15989 List!15989) Unit!25691)

(assert (=> b!1503785 (= lt!522500 (lemmaConcatAssociativity!920 lt!522512 lt!522509 lt!522513))))

(assert (=> b!1503785 (= lt!522513 (list!6306 (_2!8312 (v!22749 (_1!8313 lt!522491)))))))

(assert (=> b!1503785 (= lt!522509 (list!6306 lt!522493))))

(declare-fun charsOf!1619 (Token!5314) BalanceConc!10748)

(assert (=> b!1503785 (= lt!522493 (charsOf!1619 (_1!8312 (v!22749 (_1!8313 lt!522491)))))))

(assert (=> b!1503785 (= lt!522510 (lexRec!316 thiss!13241 rules!1640 (_2!8312 (v!22749 (_1!8313 lt!522491)))))))

(declare-fun b!1503786 () Bool)

(declare-fun lt!522486 () tuple2!14694)

(assert (=> b!1503786 (= e!961382 (tuple2!14695 (prepend!450 (_1!8307 lt!522486) (_1!8312 (v!22749 lt!522506))) (_2!8307 lt!522486)))))

(assert (=> b!1503786 (= lt!522486 (lexRec!316 thiss!13241 rules!1640 (_2!8312 (v!22749 lt!522506))))))

(declare-fun b!1503787 () Bool)

(declare-fun tp!428811 () Bool)

(declare-fun inv!21145 (Conc!5404) Bool)

(assert (=> b!1503787 (= e!961369 (and (inv!21145 (c!246614 acc!392)) tp!428811))))

(declare-fun b!1503788 () Bool)

(assert (=> b!1503788 (= e!961375 (= lt!522502 (tuple2!14695 (BalanceConc!10751 Empty!5404) lt!522508)))))

(assert (= (and start!140578 res!677454) b!1503741))

(assert (= (and b!1503741 res!677459) b!1503783))

(assert (= (and b!1503783 res!677447) b!1503752))

(assert (= (and b!1503752 res!677465) b!1503773))

(assert (= (and b!1503773 res!677455) b!1503750))

(assert (= (and b!1503750 res!677448) b!1503739))

(assert (= (and b!1503739 res!677461) b!1503781))

(assert (= (and b!1503781 res!677450) b!1503766))

(assert (= (and b!1503766 res!677458) b!1503748))

(assert (= (and b!1503748 res!677460) b!1503779))

(assert (= (and b!1503779 res!677462) b!1503756))

(assert (= (and b!1503756 res!677456) b!1503743))

(assert (= (and b!1503743 (not res!677451)) b!1503778))

(assert (= (and b!1503778 (not res!677463)) b!1503785))

(assert (= (and b!1503785 c!246611) b!1503786))

(assert (= (and b!1503785 (not c!246611)) b!1503749))

(assert (= (and b!1503785 c!246610) b!1503753))

(assert (= (and b!1503785 (not c!246610)) b!1503788))

(assert (= (and b!1503785 (not res!677446)) b!1503777))

(assert (= (and b!1503777 (not res!677452)) b!1503776))

(assert (= (and b!1503776 (not res!677466)) b!1503754))

(assert (= (and b!1503754 (not res!677457)) b!1503768))

(assert (= (and b!1503768 (not res!677453)) b!1503762))

(assert (= (and b!1503762 (not res!677449)) b!1503745))

(assert (= (and b!1503745 (not res!677464)) b!1503771))

(assert (= start!140578 b!1503787))

(assert (= (and b!1503772 condMapEmpty!6791) mapIsEmpty!6791))

(assert (= (and b!1503772 (not condMapEmpty!6791)) mapNonEmpty!6791))

(assert (= b!1503767 b!1503772))

(assert (= b!1503774 b!1503767))

(assert (= b!1503744 b!1503774))

(assert (= (and b!1503761 ((_ is LongMap!1426) (v!22748 (underlying!3062 (cache!1751 cacheUp!616))))) b!1503744))

(assert (= b!1503758 b!1503761))

(assert (= (and b!1503782 ((_ is HashMap!1370) (cache!1751 cacheUp!616))) b!1503758))

(assert (= start!140578 b!1503782))

(assert (= (and b!1503751 condMapEmpty!6790) mapIsEmpty!6790))

(assert (= (and b!1503751 (not condMapEmpty!6790)) mapNonEmpty!6790))

(assert (= b!1503770 b!1503751))

(assert (= b!1503737 b!1503770))

(assert (= b!1503757 b!1503737))

(assert (= (and b!1503769 ((_ is LongMap!1425) (v!22746 (underlying!3060 (cache!1750 cacheDown!629))))) b!1503757))

(assert (= b!1503765 b!1503769))

(assert (= (and b!1503740 ((_ is HashMap!1369) (cache!1750 cacheDown!629))) b!1503765))

(assert (= start!140578 b!1503740))

(assert (= start!140578 b!1503738))

(assert (= start!140578 b!1503759))

(assert (= b!1503735 b!1503760))

(assert (= b!1503775 b!1503735))

(assert (= (and start!140578 ((_ is Cons!15922) rules!1640)) b!1503775))

(assert (= (and b!1503764 condMapEmpty!6789) mapIsEmpty!6789))

(assert (= (and b!1503764 (not condMapEmpty!6789)) mapNonEmpty!6789))

(assert (= b!1503784 b!1503764))

(assert (= b!1503742 b!1503784))

(assert (= b!1503780 b!1503742))

(assert (= (and b!1503747 ((_ is LongMap!1424) (v!22744 (underlying!3058 (cache!1749 cacheFurthestNullable!64))))) b!1503780))

(assert (= b!1503755 b!1503747))

(assert (= (and b!1503763 ((_ is HashMap!1368) (cache!1749 cacheFurthestNullable!64))) b!1503755))

(assert (= b!1503763 b!1503736))

(assert (= start!140578 b!1503763))

(assert (= start!140578 b!1503746))

(declare-fun m!1763091 () Bool)

(assert (=> b!1503773 m!1763091))

(declare-fun m!1763093 () Bool)

(assert (=> b!1503773 m!1763093))

(declare-fun m!1763095 () Bool)

(assert (=> b!1503773 m!1763095))

(declare-fun m!1763097 () Bool)

(assert (=> b!1503781 m!1763097))

(declare-fun m!1763099 () Bool)

(assert (=> b!1503781 m!1763099))

(declare-fun m!1763101 () Bool)

(assert (=> b!1503783 m!1763101))

(declare-fun m!1763103 () Bool)

(assert (=> b!1503767 m!1763103))

(declare-fun m!1763105 () Bool)

(assert (=> b!1503767 m!1763105))

(declare-fun m!1763107 () Bool)

(assert (=> start!140578 m!1763107))

(declare-fun m!1763109 () Bool)

(assert (=> start!140578 m!1763109))

(declare-fun m!1763111 () Bool)

(assert (=> start!140578 m!1763111))

(declare-fun m!1763113 () Bool)

(assert (=> start!140578 m!1763113))

(declare-fun m!1763115 () Bool)

(assert (=> start!140578 m!1763115))

(declare-fun m!1763117 () Bool)

(assert (=> start!140578 m!1763117))

(declare-fun m!1763119 () Bool)

(assert (=> start!140578 m!1763119))

(declare-fun m!1763121 () Bool)

(assert (=> b!1503763 m!1763121))

(declare-fun m!1763123 () Bool)

(assert (=> b!1503762 m!1763123))

(declare-fun m!1763125 () Bool)

(assert (=> b!1503759 m!1763125))

(declare-fun m!1763127 () Bool)

(assert (=> b!1503748 m!1763127))

(declare-fun m!1763129 () Bool)

(assert (=> b!1503786 m!1763129))

(declare-fun m!1763131 () Bool)

(assert (=> b!1503786 m!1763131))

(declare-fun m!1763133 () Bool)

(assert (=> mapNonEmpty!6789 m!1763133))

(declare-fun m!1763135 () Bool)

(assert (=> b!1503739 m!1763135))

(declare-fun m!1763137 () Bool)

(assert (=> b!1503739 m!1763137))

(declare-fun m!1763139 () Bool)

(assert (=> b!1503739 m!1763139))

(declare-fun m!1763141 () Bool)

(assert (=> b!1503739 m!1763141))

(declare-fun m!1763143 () Bool)

(assert (=> b!1503739 m!1763143))

(assert (=> b!1503739 m!1763135))

(declare-fun m!1763145 () Bool)

(assert (=> mapNonEmpty!6790 m!1763145))

(declare-fun m!1763147 () Bool)

(assert (=> b!1503779 m!1763147))

(declare-fun m!1763149 () Bool)

(assert (=> b!1503766 m!1763149))

(declare-fun m!1763151 () Bool)

(assert (=> b!1503753 m!1763151))

(declare-fun m!1763153 () Bool)

(assert (=> b!1503753 m!1763153))

(declare-fun m!1763155 () Bool)

(assert (=> b!1503746 m!1763155))

(declare-fun m!1763157 () Bool)

(assert (=> b!1503771 m!1763157))

(assert (=> b!1503771 m!1763157))

(declare-fun m!1763159 () Bool)

(assert (=> b!1503771 m!1763159))

(declare-fun m!1763161 () Bool)

(assert (=> b!1503754 m!1763161))

(declare-fun m!1763163 () Bool)

(assert (=> b!1503784 m!1763163))

(declare-fun m!1763165 () Bool)

(assert (=> b!1503784 m!1763165))

(declare-fun m!1763167 () Bool)

(assert (=> b!1503778 m!1763167))

(declare-fun m!1763169 () Bool)

(assert (=> b!1503770 m!1763169))

(declare-fun m!1763171 () Bool)

(assert (=> b!1503770 m!1763171))

(declare-fun m!1763173 () Bool)

(assert (=> b!1503735 m!1763173))

(declare-fun m!1763175 () Bool)

(assert (=> b!1503735 m!1763175))

(declare-fun m!1763177 () Bool)

(assert (=> b!1503752 m!1763177))

(declare-fun m!1763179 () Bool)

(assert (=> b!1503752 m!1763179))

(declare-fun m!1763181 () Bool)

(assert (=> b!1503752 m!1763181))

(declare-fun m!1763183 () Bool)

(assert (=> b!1503752 m!1763183))

(declare-fun m!1763185 () Bool)

(assert (=> b!1503743 m!1763185))

(declare-fun m!1763187 () Bool)

(assert (=> b!1503743 m!1763187))

(declare-fun m!1763189 () Bool)

(assert (=> b!1503743 m!1763189))

(declare-fun m!1763191 () Bool)

(assert (=> b!1503776 m!1763191))

(declare-fun m!1763193 () Bool)

(assert (=> b!1503750 m!1763193))

(assert (=> b!1503750 m!1763193))

(declare-fun m!1763195 () Bool)

(assert (=> b!1503750 m!1763195))

(declare-fun m!1763197 () Bool)

(assert (=> b!1503785 m!1763197))

(declare-fun m!1763199 () Bool)

(assert (=> b!1503785 m!1763199))

(declare-fun m!1763201 () Bool)

(assert (=> b!1503785 m!1763201))

(declare-fun m!1763203 () Bool)

(assert (=> b!1503785 m!1763203))

(declare-fun m!1763205 () Bool)

(assert (=> b!1503785 m!1763205))

(declare-fun m!1763207 () Bool)

(assert (=> b!1503785 m!1763207))

(declare-fun m!1763209 () Bool)

(assert (=> b!1503785 m!1763209))

(declare-fun m!1763211 () Bool)

(assert (=> b!1503785 m!1763211))

(declare-fun m!1763213 () Bool)

(assert (=> b!1503785 m!1763213))

(declare-fun m!1763215 () Bool)

(assert (=> b!1503785 m!1763215))

(declare-fun m!1763217 () Bool)

(assert (=> b!1503785 m!1763217))

(declare-fun m!1763219 () Bool)

(assert (=> b!1503785 m!1763219))

(assert (=> b!1503785 m!1763213))

(declare-fun m!1763221 () Bool)

(assert (=> b!1503785 m!1763221))

(declare-fun m!1763223 () Bool)

(assert (=> b!1503785 m!1763223))

(declare-fun m!1763225 () Bool)

(assert (=> b!1503785 m!1763225))

(declare-fun m!1763227 () Bool)

(assert (=> b!1503785 m!1763227))

(declare-fun m!1763229 () Bool)

(assert (=> b!1503785 m!1763229))

(declare-fun m!1763231 () Bool)

(assert (=> b!1503785 m!1763231))

(declare-fun m!1763233 () Bool)

(assert (=> b!1503785 m!1763233))

(declare-fun m!1763235 () Bool)

(assert (=> b!1503785 m!1763235))

(declare-fun m!1763237 () Bool)

(assert (=> b!1503785 m!1763237))

(declare-fun m!1763239 () Bool)

(assert (=> b!1503785 m!1763239))

(declare-fun m!1763241 () Bool)

(assert (=> b!1503785 m!1763241))

(declare-fun m!1763243 () Bool)

(assert (=> b!1503785 m!1763243))

(assert (=> b!1503785 m!1763203))

(declare-fun m!1763245 () Bool)

(assert (=> b!1503785 m!1763245))

(declare-fun m!1763247 () Bool)

(assert (=> b!1503785 m!1763247))

(assert (=> b!1503785 m!1763199))

(declare-fun m!1763249 () Bool)

(assert (=> b!1503785 m!1763249))

(assert (=> b!1503785 m!1763219))

(declare-fun m!1763251 () Bool)

(assert (=> b!1503785 m!1763251))

(declare-fun m!1763253 () Bool)

(assert (=> b!1503785 m!1763253))

(declare-fun m!1763255 () Bool)

(assert (=> b!1503777 m!1763255))

(declare-fun m!1763257 () Bool)

(assert (=> b!1503787 m!1763257))

(declare-fun m!1763259 () Bool)

(assert (=> b!1503741 m!1763259))

(declare-fun m!1763261 () Bool)

(assert (=> b!1503745 m!1763261))

(assert (=> b!1503745 m!1763261))

(declare-fun m!1763263 () Bool)

(assert (=> b!1503745 m!1763263))

(declare-fun m!1763265 () Bool)

(assert (=> mapNonEmpty!6791 m!1763265))

(declare-fun m!1763267 () Bool)

(assert (=> b!1503738 m!1763267))

(declare-fun m!1763269 () Bool)

(assert (=> b!1503736 m!1763269))

(check-sat (not b!1503748) (not b!1503762) (not b_next!39625) (not b!1503778) b_and!104613 (not b!1503739) (not b_next!39621) (not b!1503753) (not b!1503770) (not b_next!39633) b_and!104615 b_and!104605 (not b!1503781) (not b_next!39627) (not b!1503783) (not b!1503763) (not b!1503787) (not b!1503750) (not b!1503743) (not b!1503754) (not mapNonEmpty!6789) (not b!1503746) b_and!104603 (not b!1503776) (not b!1503784) b_and!104617 (not b!1503738) (not b!1503759) (not b!1503786) (not b!1503773) (not mapNonEmpty!6791) (not b!1503785) (not b!1503775) (not b_next!39631) (not b_next!39629) (not b!1503779) (not b!1503767) (not start!140578) (not b!1503766) (not b_next!39619) (not b!1503741) (not b!1503752) (not b!1503751) (not b!1503736) b_and!104609 (not b!1503764) (not b!1503745) (not b_next!39623) (not mapNonEmpty!6790) (not b!1503771) b_and!104607 (not b!1503772) (not b!1503777) (not b!1503735) b_and!104611)
(check-sat (not b_next!39627) (not b_next!39625) b_and!104603 b_and!104617 b_and!104613 (not b_next!39621) (not b_next!39619) b_and!104609 (not b_next!39623) (not b_next!39633) b_and!104615 b_and!104605 b_and!104607 b_and!104611 (not b_next!39631) (not b_next!39629))
