; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!141194 () Bool)

(assert start!141194)

(declare-fun b!1512988 () Bool)

(declare-fun b_free!39247 () Bool)

(declare-fun b_next!39951 () Bool)

(assert (=> b!1512988 (= b_free!39247 (not b_next!39951))))

(declare-fun tp!432801 () Bool)

(declare-fun b_and!105265 () Bool)

(assert (=> b!1512988 (= tp!432801 b_and!105265)))

(declare-fun b_free!39249 () Bool)

(declare-fun b_next!39953 () Bool)

(assert (=> b!1512988 (= b_free!39249 (not b_next!39953))))

(declare-fun tp!432776 () Bool)

(declare-fun b_and!105267 () Bool)

(assert (=> b!1512988 (= tp!432776 b_and!105267)))

(declare-fun b!1513005 () Bool)

(declare-fun b_free!39251 () Bool)

(declare-fun b_next!39955 () Bool)

(assert (=> b!1513005 (= b_free!39251 (not b_next!39955))))

(declare-fun tp!432790 () Bool)

(declare-fun b_and!105269 () Bool)

(assert (=> b!1513005 (= tp!432790 b_and!105269)))

(declare-fun b!1512975 () Bool)

(declare-fun b_free!39253 () Bool)

(declare-fun b_next!39957 () Bool)

(assert (=> b!1512975 (= b_free!39253 (not b_next!39957))))

(declare-fun tp!432774 () Bool)

(declare-fun b_and!105271 () Bool)

(assert (=> b!1512975 (= tp!432774 b_and!105271)))

(declare-fun b!1512999 () Bool)

(declare-fun b_free!39255 () Bool)

(declare-fun b_next!39959 () Bool)

(assert (=> b!1512999 (= b_free!39255 (not b_next!39959))))

(declare-fun tp!432773 () Bool)

(declare-fun b_and!105273 () Bool)

(assert (=> b!1512999 (= tp!432773 b_and!105273)))

(declare-fun b!1512994 () Bool)

(declare-fun b_free!39257 () Bool)

(declare-fun b_next!39961 () Bool)

(assert (=> b!1512994 (= b_free!39257 (not b_next!39961))))

(declare-fun tp!432787 () Bool)

(declare-fun b_and!105275 () Bool)

(assert (=> b!1512994 (= tp!432787 b_and!105275)))

(declare-fun b!1512977 () Bool)

(declare-fun b_free!39259 () Bool)

(declare-fun b_next!39963 () Bool)

(assert (=> b!1512977 (= b_free!39259 (not b_next!39963))))

(declare-fun tp!432795 () Bool)

(declare-fun b_and!105277 () Bool)

(assert (=> b!1512977 (= tp!432795 b_and!105277)))

(declare-fun b!1512983 () Bool)

(declare-fun b_free!39261 () Bool)

(declare-fun b_next!39965 () Bool)

(assert (=> b!1512983 (= b_free!39261 (not b_next!39965))))

(declare-fun tp!432780 () Bool)

(declare-fun b_and!105279 () Bool)

(assert (=> b!1512983 (= tp!432780 b_and!105279)))

(declare-fun b!1512972 () Bool)

(declare-fun e!967543 () Bool)

(declare-fun e!967573 () Bool)

(assert (=> b!1512972 (= e!967543 e!967573)))

(declare-fun res!680765 () Bool)

(assert (=> b!1512972 (=> (not res!680765) (not e!967573))))

(declare-datatypes ((List!16137 0))(
  ( (Nil!16069) (Cons!16069 (h!21470 (_ BitVec 16)) (t!139415 List!16137)) )
))
(declare-datatypes ((TokenValue!2934 0))(
  ( (FloatLiteralValue!5868 (text!20983 List!16137)) (TokenValueExt!2933 (__x!10032 Int)) (Broken!14670 (value!90688 List!16137)) (Object!3001) (End!2934) (Def!2934) (Underscore!2934) (Match!2934) (Else!2934) (Error!2934) (Case!2934) (If!2934) (Extends!2934) (Abstract!2934) (Class!2934) (Val!2934) (DelimiterValue!5868 (del!2994 List!16137)) (KeywordValue!2940 (value!90689 List!16137)) (CommentValue!5868 (value!90690 List!16137)) (WhitespaceValue!5868 (value!90691 List!16137)) (IndentationValue!2934 (value!90692 List!16137)) (String!18931) (Int32!2934) (Broken!14671 (value!90693 List!16137)) (Boolean!2935) (Unit!25744) (OperatorValue!2937 (op!2994 List!16137)) (IdentifierValue!5868 (value!90694 List!16137)) (IdentifierValue!5869 (value!90695 List!16137)) (WhitespaceValue!5869 (value!90696 List!16137)) (True!5868) (False!5868) (Broken!14672 (value!90697 List!16137)) (Broken!14673 (value!90698 List!16137)) (True!5869) (RightBrace!2934) (RightBracket!2934) (Colon!2934) (Null!2934) (Comma!2934) (LeftBracket!2934) (False!5869) (LeftBrace!2934) (ImaginaryLiteralValue!2934 (text!20984 List!16137)) (StringLiteralValue!8802 (value!90699 List!16137)) (EOFValue!2934 (value!90700 List!16137)) (IdentValue!2934 (value!90701 List!16137)) (DelimiterValue!5869 (value!90702 List!16137)) (DedentValue!2934 (value!90703 List!16137)) (NewLineValue!2934 (value!90704 List!16137)) (IntegerValue!8802 (value!90705 (_ BitVec 32)) (text!20985 List!16137)) (IntegerValue!8803 (value!90706 Int) (text!20986 List!16137)) (Times!2934) (Or!2934) (Equal!2934) (Minus!2934) (Broken!14674 (value!90707 List!16137)) (And!2934) (Div!2934) (LessEqual!2934) (Mod!2934) (Concat!7093) (Not!2934) (Plus!2934) (SpaceValue!2934 (value!90708 List!16137)) (IntegerValue!8804 (value!90709 Int) (text!20987 List!16137)) (StringLiteralValue!8803 (text!20988 List!16137)) (FloatLiteralValue!5869 (text!20989 List!16137)) (BytesLiteralValue!2934 (value!90710 List!16137)) (CommentValue!5869 (value!90711 List!16137)) (StringLiteralValue!8804 (value!90712 List!16137)) (ErrorTokenValue!2934 (msg!2995 List!16137)) )
))
(declare-datatypes ((C!8496 0))(
  ( (C!8497 (val!4820 Int)) )
))
(declare-datatypes ((List!16138 0))(
  ( (Nil!16070) (Cons!16070 (h!21471 C!8496) (t!139416 List!16138)) )
))
(declare-datatypes ((IArray!10883 0))(
  ( (IArray!10884 (innerList!5499 List!16138)) )
))
(declare-datatypes ((Conc!5439 0))(
  ( (Node!5439 (left!13363 Conc!5439) (right!13693 Conc!5439) (csize!11108 Int) (cheight!5650 Int)) (Leaf!8064 (xs!8220 IArray!10883) (csize!11109 Int)) (Empty!5439) )
))
(declare-datatypes ((BalanceConc!10820 0))(
  ( (BalanceConc!10821 (c!247983 Conc!5439)) )
))
(declare-datatypes ((Regex!4159 0))(
  ( (ElementMatch!4159 (c!247984 C!8496)) (Concat!7094 (regOne!8830 Regex!4159) (regTwo!8830 Regex!4159)) (EmptyExpr!4159) (Star!4159 (reg!4488 Regex!4159)) (EmptyLang!4159) (Union!4159 (regOne!8831 Regex!4159) (regTwo!8831 Regex!4159)) )
))
(declare-datatypes ((String!18932 0))(
  ( (String!18933 (value!90713 String)) )
))
(declare-datatypes ((TokenValueInjection!5528 0))(
  ( (TokenValueInjection!5529 (toValue!4193 Int) (toChars!4052 Int)) )
))
(declare-datatypes ((Rule!5488 0))(
  ( (Rule!5489 (regex!2844 Regex!4159) (tag!3108 String!18932) (isSeparator!2844 Bool) (transformation!2844 TokenValueInjection!5528)) )
))
(declare-datatypes ((Token!5350 0))(
  ( (Token!5351 (value!90714 TokenValue!2934) (rule!4637 Rule!5488) (size!12993 Int) (originalCharacters!3706 List!16138)) )
))
(declare-datatypes ((List!16139 0))(
  ( (Nil!16071) (Cons!16071 (h!21472 Token!5350) (t!139417 List!16139)) )
))
(declare-datatypes ((IArray!10885 0))(
  ( (IArray!10886 (innerList!5500 List!16139)) )
))
(declare-datatypes ((Conc!5440 0))(
  ( (Node!5440 (left!13364 Conc!5440) (right!13694 Conc!5440) (csize!11110 Int) (cheight!5651 Int)) (Leaf!8065 (xs!8221 IArray!10885) (csize!11111 Int)) (Empty!5440) )
))
(declare-datatypes ((BalanceConc!10822 0))(
  ( (BalanceConc!10823 (c!247985 Conc!5440)) )
))
(declare-fun acc!392 () BalanceConc!10822)

(declare-datatypes ((tuple2!14938 0))(
  ( (tuple2!14939 (_1!8486 BalanceConc!10822) (_2!8486 BalanceConc!10820)) )
))
(declare-fun lt!526153 () tuple2!14938)

(declare-fun lt!526154 () tuple2!14938)

(declare-fun list!6347 (BalanceConc!10822) List!16139)

(declare-fun ++!4357 (BalanceConc!10822 BalanceConc!10822) BalanceConc!10822)

(assert (=> b!1512972 (= res!680765 (= (list!6347 (_1!8486 lt!526154)) (list!6347 (++!4357 acc!392 (_1!8486 lt!526153)))))))

(declare-datatypes ((LexerInterface!2496 0))(
  ( (LexerInterfaceExt!2493 (__x!10033 Int)) (Lexer!2494) )
))
(declare-fun thiss!13241 () LexerInterface!2496)

(declare-datatypes ((List!16140 0))(
  ( (Nil!16072) (Cons!16072 (h!21473 Rule!5488) (t!139418 List!16140)) )
))
(declare-fun rules!1640 () List!16140)

(declare-fun input!1102 () BalanceConc!10820)

(declare-fun lexRec!331 (LexerInterface!2496 List!16140 BalanceConc!10820) tuple2!14938)

(assert (=> b!1512972 (= lt!526153 (lexRec!331 thiss!13241 rules!1640 input!1102))))

(declare-fun totalInput!458 () BalanceConc!10820)

(assert (=> b!1512972 (= lt!526154 (lexRec!331 thiss!13241 rules!1640 totalInput!458))))

(declare-fun b!1512973 () Bool)

(declare-fun res!680756 () Bool)

(assert (=> b!1512973 (=> (not res!680756) (not e!967573))))

(declare-datatypes ((List!16141 0))(
  ( (Nil!16073) (Cons!16073 (h!21474 Regex!4159) (t!139419 List!16141)) )
))
(declare-datatypes ((Context!1354 0))(
  ( (Context!1355 (exprs!1177 List!16141)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1358 0))(
  ( (tuple3!1359 (_1!8487 (InoxSet Context!1354)) (_2!8487 Int) (_3!1017 Int)) )
))
(declare-datatypes ((tuple2!14940 0))(
  ( (tuple2!14941 (_1!8488 tuple3!1358) (_2!8488 Int)) )
))
(declare-datatypes ((List!16142 0))(
  ( (Nil!16074) (Cons!16074 (h!21475 tuple2!14940) (t!139420 List!16142)) )
))
(declare-datatypes ((array!5184 0))(
  ( (array!5185 (arr!2311 (Array (_ BitVec 32) List!16142)) (size!12994 (_ BitVec 32))) )
))
(declare-datatypes ((array!5186 0))(
  ( (array!5187 (arr!2312 (Array (_ BitVec 32) (_ BitVec 64))) (size!12995 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2954 0))(
  ( (LongMapFixedSize!2955 (defaultEntry!1837 Int) (mask!4645 (_ BitVec 32)) (extraKeys!1724 (_ BitVec 32)) (zeroValue!1734 List!16142) (minValue!1734 List!16142) (_size!3035 (_ BitVec 32)) (_keys!1771 array!5186) (_values!1756 array!5184) (_vacant!1538 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5793 0))(
  ( (Cell!5794 (v!22882 LongMapFixedSize!2954)) )
))
(declare-datatypes ((MutLongMap!1477 0))(
  ( (LongMap!1477 (underlying!3163 Cell!5793)) (MutLongMapExt!1476 (__x!10034 Int)) )
))
(declare-datatypes ((Cell!5795 0))(
  ( (Cell!5796 (v!22883 MutLongMap!1477)) )
))
(declare-datatypes ((Hashable!1421 0))(
  ( (HashableExt!1420 (__x!10035 Int)) )
))
(declare-datatypes ((MutableMap!1421 0))(
  ( (MutableMapExt!1420 (__x!10036 Int)) (HashMap!1421 (underlying!3164 Cell!5795) (hashF!3340 Hashable!1421) (_size!3036 (_ BitVec 32)) (defaultValue!1581 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!270 0))(
  ( (CacheFurthestNullable!271 (cache!1802 MutableMap!1421) (totalInput!2296 BalanceConc!10820)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!270)

(assert (=> b!1512973 (= res!680756 (= (totalInput!2296 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1512974 () Bool)

(declare-fun e!967546 () Bool)

(declare-fun tp!432778 () Bool)

(declare-fun mapRes!7004 () Bool)

(assert (=> b!1512974 (= e!967546 (and tp!432778 mapRes!7004))))

(declare-fun condMapEmpty!7003 () Bool)

(declare-datatypes ((tuple2!14942 0))(
  ( (tuple2!14943 (_1!8489 Context!1354) (_2!8489 C!8496)) )
))
(declare-datatypes ((tuple2!14944 0))(
  ( (tuple2!14945 (_1!8490 tuple2!14942) (_2!8490 (InoxSet Context!1354))) )
))
(declare-datatypes ((List!16143 0))(
  ( (Nil!16075) (Cons!16075 (h!21476 tuple2!14944) (t!139421 List!16143)) )
))
(declare-datatypes ((array!5188 0))(
  ( (array!5189 (arr!2313 (Array (_ BitVec 32) List!16143)) (size!12996 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2956 0))(
  ( (LongMapFixedSize!2957 (defaultEntry!1838 Int) (mask!4646 (_ BitVec 32)) (extraKeys!1725 (_ BitVec 32)) (zeroValue!1735 List!16143) (minValue!1735 List!16143) (_size!3037 (_ BitVec 32)) (_keys!1772 array!5186) (_values!1757 array!5188) (_vacant!1539 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!1422 0))(
  ( (HashableExt!1421 (__x!10037 Int)) )
))
(declare-datatypes ((Cell!5797 0))(
  ( (Cell!5798 (v!22884 LongMapFixedSize!2956)) )
))
(declare-datatypes ((MutLongMap!1478 0))(
  ( (LongMap!1478 (underlying!3165 Cell!5797)) (MutLongMapExt!1477 (__x!10038 Int)) )
))
(declare-datatypes ((Cell!5799 0))(
  ( (Cell!5800 (v!22885 MutLongMap!1478)) )
))
(declare-datatypes ((MutableMap!1422 0))(
  ( (MutableMapExt!1421 (__x!10039 Int)) (HashMap!1422 (underlying!3166 Cell!5799) (hashF!3341 Hashable!1422) (_size!3038 (_ BitVec 32)) (defaultValue!1582 Int)) )
))
(declare-datatypes ((CacheUp!848 0))(
  ( (CacheUp!849 (cache!1803 MutableMap!1422)) )
))
(declare-fun cacheUp!616 () CacheUp!848)

(declare-fun mapDefault!7002 () List!16143)

(assert (=> b!1512974 (= condMapEmpty!7003 (= (arr!2313 (_values!1757 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16143)) mapDefault!7002)))))

(declare-fun e!967571 () Bool)

(declare-fun e!967558 () Bool)

(assert (=> b!1512975 (= e!967571 (and e!967558 tp!432774))))

(declare-fun b!1512976 () Bool)

(declare-fun e!967544 () Bool)

(declare-fun e!967575 () Bool)

(declare-fun tp!432796 () Bool)

(assert (=> b!1512976 (= e!967544 (and e!967575 tp!432796))))

(declare-fun e!967548 () Bool)

(declare-fun e!967562 () Bool)

(assert (=> b!1512977 (= e!967548 (and e!967562 tp!432795))))

(declare-fun b!1512978 () Bool)

(declare-fun e!967561 () Bool)

(declare-fun e!967564 () Bool)

(declare-fun lt!526155 () MutLongMap!1478)

(get-info :version)

(assert (=> b!1512978 (= e!967561 (and e!967564 ((_ is LongMap!1478) lt!526155)))))

(assert (=> b!1512978 (= lt!526155 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))

(declare-fun b!1512979 () Bool)

(declare-fun res!680764 () Bool)

(assert (=> b!1512979 (=> (not res!680764) (not e!967573))))

(declare-fun valid!1179 (CacheFurthestNullable!270) Bool)

(assert (=> b!1512979 (= res!680764 (valid!1179 cacheFurthestNullable!64))))

(declare-fun b!1512980 () Bool)

(declare-fun res!680759 () Bool)

(assert (=> b!1512980 (=> (not res!680759) (not e!967573))))

(declare-fun valid!1180 (CacheUp!848) Bool)

(assert (=> b!1512980 (= res!680759 (valid!1180 cacheUp!616))))

(declare-fun b!1512981 () Bool)

(declare-fun res!680762 () Bool)

(declare-fun e!967565 () Bool)

(assert (=> b!1512981 (=> (not res!680762) (not e!967565))))

(declare-fun isEmpty!9929 (List!16140) Bool)

(assert (=> b!1512981 (= res!680762 (not (isEmpty!9929 rules!1640)))))

(declare-fun b!1512982 () Bool)

(declare-fun e!967551 () Bool)

(declare-fun tp!432781 () Bool)

(declare-fun inv!21303 (Conc!5439) Bool)

(assert (=> b!1512982 (= e!967551 (and (inv!21303 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) tp!432781))))

(declare-fun tp!432772 () Bool)

(declare-fun e!967560 () Bool)

(declare-fun tp!432783 () Bool)

(declare-fun array_inv!1669 (array!5186) Bool)

(declare-fun array_inv!1670 (array!5188) Bool)

(assert (=> b!1512983 (= e!967560 (and tp!432780 tp!432772 tp!432783 (array_inv!1669 (_keys!1772 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) (array_inv!1670 (_values!1757 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) e!967546))))

(declare-fun b!1512984 () Bool)

(declare-fun e!967550 () Bool)

(declare-fun e!967545 () Bool)

(assert (=> b!1512984 (= e!967550 e!967545)))

(declare-fun b!1512985 () Bool)

(declare-fun e!967563 () Bool)

(declare-fun e!967552 () Bool)

(assert (=> b!1512985 (= e!967563 e!967552)))

(declare-fun b!1512986 () Bool)

(declare-fun e!967567 () Bool)

(assert (=> b!1512986 (= e!967567 e!967560)))

(declare-fun mapIsEmpty!7002 () Bool)

(declare-fun mapRes!7002 () Bool)

(assert (=> mapIsEmpty!7002 mapRes!7002))

(declare-fun mapNonEmpty!7002 () Bool)

(declare-fun tp!432794 () Bool)

(declare-fun tp!432782 () Bool)

(assert (=> mapNonEmpty!7002 (= mapRes!7002 (and tp!432794 tp!432782))))

(declare-datatypes ((tuple3!1360 0))(
  ( (tuple3!1361 (_1!8491 Regex!4159) (_2!8491 Context!1354) (_3!1018 C!8496)) )
))
(declare-datatypes ((tuple2!14946 0))(
  ( (tuple2!14947 (_1!8492 tuple3!1360) (_2!8492 (InoxSet Context!1354))) )
))
(declare-datatypes ((List!16144 0))(
  ( (Nil!16076) (Cons!16076 (h!21477 tuple2!14946) (t!139422 List!16144)) )
))
(declare-datatypes ((array!5190 0))(
  ( (array!5191 (arr!2314 (Array (_ BitVec 32) List!16144)) (size!12997 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2958 0))(
  ( (LongMapFixedSize!2959 (defaultEntry!1839 Int) (mask!4647 (_ BitVec 32)) (extraKeys!1726 (_ BitVec 32)) (zeroValue!1736 List!16144) (minValue!1736 List!16144) (_size!3039 (_ BitVec 32)) (_keys!1773 array!5186) (_values!1758 array!5190) (_vacant!1540 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5801 0))(
  ( (Cell!5802 (v!22886 LongMapFixedSize!2958)) )
))
(declare-datatypes ((MutLongMap!1479 0))(
  ( (LongMap!1479 (underlying!3167 Cell!5801)) (MutLongMapExt!1478 (__x!10040 Int)) )
))
(declare-datatypes ((Cell!5803 0))(
  ( (Cell!5804 (v!22887 MutLongMap!1479)) )
))
(declare-datatypes ((Hashable!1423 0))(
  ( (HashableExt!1422 (__x!10041 Int)) )
))
(declare-datatypes ((MutableMap!1423 0))(
  ( (MutableMapExt!1422 (__x!10042 Int)) (HashMap!1423 (underlying!3168 Cell!5803) (hashF!3342 Hashable!1423) (_size!3040 (_ BitVec 32)) (defaultValue!1583 Int)) )
))
(declare-datatypes ((CacheDown!852 0))(
  ( (CacheDown!853 (cache!1804 MutableMap!1423)) )
))
(declare-fun cacheDown!629 () CacheDown!852)

(declare-fun mapValue!7002 () List!16144)

(declare-fun mapRest!7004 () (Array (_ BitVec 32) List!16144))

(declare-fun mapKey!7003 () (_ BitVec 32))

(assert (=> mapNonEmpty!7002 (= (arr!2314 (_values!1758 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) (store mapRest!7004 mapKey!7003 mapValue!7002))))

(declare-fun b!1512987 () Bool)

(declare-fun e!967549 () Bool)

(declare-fun e!967570 () Bool)

(assert (=> b!1512987 (= e!967549 e!967570)))

(declare-fun e!967574 () Bool)

(assert (=> b!1512988 (= e!967574 (and tp!432801 tp!432776))))

(declare-fun b!1512989 () Bool)

(declare-fun res!680766 () Bool)

(assert (=> b!1512989 (=> (not res!680766) (not e!967573))))

(declare-fun valid!1181 (CacheDown!852) Bool)

(assert (=> b!1512989 (= res!680766 (valid!1181 cacheDown!629))))

(declare-fun res!680757 () Bool)

(assert (=> start!141194 (=> (not res!680757) (not e!967565))))

(assert (=> start!141194 (= res!680757 ((_ is Lexer!2494) thiss!13241))))

(assert (=> start!141194 e!967565))

(declare-fun e!967542 () Bool)

(declare-fun inv!21304 (BalanceConc!10822) Bool)

(assert (=> start!141194 (and (inv!21304 acc!392) e!967542)))

(declare-fun inv!21305 (CacheUp!848) Bool)

(assert (=> start!141194 (and (inv!21305 cacheUp!616) e!967563)))

(declare-fun e!967554 () Bool)

(declare-fun inv!21306 (CacheDown!852) Bool)

(assert (=> start!141194 (and (inv!21306 cacheDown!629) e!967554)))

(declare-fun e!967540 () Bool)

(declare-fun inv!21307 (BalanceConc!10820) Bool)

(assert (=> start!141194 (and (inv!21307 input!1102) e!967540)))

(declare-fun treated!70 () BalanceConc!10820)

(declare-fun e!967556 () Bool)

(assert (=> start!141194 (and (inv!21307 treated!70) e!967556)))

(assert (=> start!141194 true))

(assert (=> start!141194 e!967544))

(declare-fun e!967572 () Bool)

(declare-fun inv!21308 (CacheFurthestNullable!270) Bool)

(assert (=> start!141194 (and (inv!21308 cacheFurthestNullable!64) e!967572)))

(declare-fun e!967568 () Bool)

(assert (=> start!141194 (and (inv!21307 totalInput!458) e!967568)))

(declare-fun b!1512990 () Bool)

(declare-fun e!967553 () Bool)

(declare-fun tp!432793 () Bool)

(assert (=> b!1512990 (= e!967553 (and tp!432793 mapRes!7002))))

(declare-fun condMapEmpty!7002 () Bool)

(declare-fun mapDefault!7004 () List!16144)

(assert (=> b!1512990 (= condMapEmpty!7002 (= (arr!2314 (_values!1758 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16144)) mapDefault!7004)))))

(declare-fun b!1512991 () Bool)

(declare-fun res!680767 () Bool)

(assert (=> b!1512991 (=> (not res!680767) (not e!967565))))

(declare-fun rulesInvariant!2270 (LexerInterface!2496 List!16140) Bool)

(assert (=> b!1512991 (= res!680767 (rulesInvariant!2270 thiss!13241 rules!1640))))

(declare-fun mapNonEmpty!7003 () Bool)

(declare-fun mapRes!7003 () Bool)

(declare-fun tp!432799 () Bool)

(declare-fun tp!432797 () Bool)

(assert (=> mapNonEmpty!7003 (= mapRes!7003 (and tp!432799 tp!432797))))

(declare-fun mapRest!7002 () (Array (_ BitVec 32) List!16142))

(declare-fun mapKey!7002 () (_ BitVec 32))

(declare-fun mapValue!7003 () List!16142)

(assert (=> mapNonEmpty!7003 (= (arr!2311 (_values!1756 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) (store mapRest!7002 mapKey!7002 mapValue!7003))))

(declare-fun tp!432777 () Bool)

(declare-fun b!1512992 () Bool)

(declare-fun inv!21301 (String!18932) Bool)

(declare-fun inv!21309 (TokenValueInjection!5528) Bool)

(assert (=> b!1512992 (= e!967575 (and tp!432777 (inv!21301 (tag!3108 (h!21473 rules!1640))) (inv!21309 (transformation!2844 (h!21473 rules!1640))) e!967574))))

(declare-fun mapIsEmpty!7003 () Bool)

(assert (=> mapIsEmpty!7003 mapRes!7004))

(declare-fun b!1512993 () Bool)

(declare-fun tp!432791 () Bool)

(declare-fun inv!21310 (Conc!5440) Bool)

(assert (=> b!1512993 (= e!967542 (and (inv!21310 (c!247985 acc!392)) tp!432791))))

(declare-fun tp!432798 () Bool)

(declare-fun tp!432788 () Bool)

(declare-fun array_inv!1671 (array!5190) Bool)

(assert (=> b!1512994 (= e!967570 (and tp!432787 tp!432788 tp!432798 (array_inv!1669 (_keys!1773 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) (array_inv!1671 (_values!1758 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) e!967553))))

(declare-fun b!1512995 () Bool)

(declare-fun e!967569 () Bool)

(assert (=> b!1512995 (= e!967545 e!967569)))

(declare-fun b!1512996 () Bool)

(assert (=> b!1512996 (= e!967572 (and e!967548 (inv!21307 (totalInput!2296 cacheFurthestNullable!64)) e!967551))))

(declare-fun mapIsEmpty!7004 () Bool)

(assert (=> mapIsEmpty!7004 mapRes!7003))

(declare-fun b!1512997 () Bool)

(declare-fun e!967557 () Bool)

(assert (=> b!1512997 (= e!967557 e!967549)))

(declare-fun b!1512998 () Bool)

(assert (=> b!1512998 (= e!967564 e!967567)))

(declare-fun mapNonEmpty!7004 () Bool)

(declare-fun tp!432789 () Bool)

(declare-fun tp!432785 () Bool)

(assert (=> mapNonEmpty!7004 (= mapRes!7004 (and tp!432789 tp!432785))))

(declare-fun mapKey!7004 () (_ BitVec 32))

(declare-fun mapValue!7004 () List!16143)

(declare-fun mapRest!7003 () (Array (_ BitVec 32) List!16143))

(assert (=> mapNonEmpty!7004 (= (arr!2313 (_values!1757 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) (store mapRest!7003 mapKey!7004 mapValue!7004))))

(declare-fun e!967559 () Bool)

(declare-fun tp!432792 () Bool)

(declare-fun tp!432800 () Bool)

(declare-fun array_inv!1672 (array!5184) Bool)

(assert (=> b!1512999 (= e!967569 (and tp!432773 tp!432792 tp!432800 (array_inv!1669 (_keys!1771 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) (array_inv!1672 (_values!1756 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) e!967559))))

(declare-fun b!1513000 () Bool)

(assert (=> b!1513000 (= e!967565 e!967543)))

(declare-fun res!680758 () Bool)

(assert (=> b!1513000 (=> (not res!680758) (not e!967543))))

(declare-fun lt!526151 () tuple2!14938)

(assert (=> b!1513000 (= res!680758 (= (list!6347 (_1!8486 lt!526151)) (list!6347 acc!392)))))

(assert (=> b!1513000 (= lt!526151 (lexRec!331 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1513001 () Bool)

(declare-fun res!680761 () Bool)

(assert (=> b!1513001 (=> (not res!680761) (not e!967543))))

(declare-fun isEmpty!9930 (List!16138) Bool)

(declare-fun list!6348 (BalanceConc!10820) List!16138)

(assert (=> b!1513001 (= res!680761 (isEmpty!9930 (list!6348 (_2!8486 lt!526151))))))

(declare-fun b!1513002 () Bool)

(assert (=> b!1513002 (= e!967554 e!967571)))

(declare-fun b!1513003 () Bool)

(declare-fun tp!432775 () Bool)

(assert (=> b!1513003 (= e!967556 (and (inv!21303 (c!247983 treated!70)) tp!432775))))

(declare-fun b!1513004 () Bool)

(declare-fun tp!432786 () Bool)

(assert (=> b!1513004 (= e!967568 (and (inv!21303 (c!247983 totalInput!458)) tp!432786))))

(assert (=> b!1513005 (= e!967552 (and e!967561 tp!432790))))

(declare-fun b!1513006 () Bool)

(declare-fun res!680760 () Bool)

(assert (=> b!1513006 (=> (not res!680760) (not e!967573))))

(assert (=> b!1513006 (= res!680760 (= (list!6348 (_2!8486 lt!526154)) (list!6348 (_2!8486 lt!526153))))))

(declare-fun b!1513007 () Bool)

(declare-fun size!12998 (BalanceConc!10820) Int)

(assert (=> b!1513007 (= e!967573 (< (size!12998 input!1102) 0))))

(declare-fun b!1513008 () Bool)

(declare-fun res!680763 () Bool)

(assert (=> b!1513008 (=> (not res!680763) (not e!967565))))

(declare-fun ++!4358 (List!16138 List!16138) List!16138)

(assert (=> b!1513008 (= res!680763 (= (list!6348 totalInput!458) (++!4358 (list!6348 treated!70) (list!6348 input!1102))))))

(declare-fun b!1513009 () Bool)

(declare-fun tp!432784 () Bool)

(assert (=> b!1513009 (= e!967540 (and (inv!21303 (c!247983 input!1102)) tp!432784))))

(declare-fun b!1513010 () Bool)

(declare-fun lt!526150 () MutLongMap!1479)

(assert (=> b!1513010 (= e!967558 (and e!967557 ((_ is LongMap!1479) lt!526150)))))

(assert (=> b!1513010 (= lt!526150 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))

(declare-fun b!1513011 () Bool)

(declare-fun lt!526152 () MutLongMap!1477)

(assert (=> b!1513011 (= e!967562 (and e!967550 ((_ is LongMap!1477) lt!526152)))))

(assert (=> b!1513011 (= lt!526152 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))

(declare-fun b!1513012 () Bool)

(declare-fun tp!432779 () Bool)

(assert (=> b!1513012 (= e!967559 (and tp!432779 mapRes!7003))))

(declare-fun condMapEmpty!7004 () Bool)

(declare-fun mapDefault!7003 () List!16142)

(assert (=> b!1513012 (= condMapEmpty!7004 (= (arr!2311 (_values!1756 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16142)) mapDefault!7003)))))

(assert (= (and start!141194 res!680757) b!1512981))

(assert (= (and b!1512981 res!680762) b!1512991))

(assert (= (and b!1512991 res!680767) b!1513008))

(assert (= (and b!1513008 res!680763) b!1513000))

(assert (= (and b!1513000 res!680758) b!1513001))

(assert (= (and b!1513001 res!680761) b!1512972))

(assert (= (and b!1512972 res!680765) b!1513006))

(assert (= (and b!1513006 res!680760) b!1512980))

(assert (= (and b!1512980 res!680759) b!1512989))

(assert (= (and b!1512989 res!680766) b!1512979))

(assert (= (and b!1512979 res!680764) b!1512973))

(assert (= (and b!1512973 res!680756) b!1513007))

(assert (= start!141194 b!1512993))

(assert (= (and b!1512974 condMapEmpty!7003) mapIsEmpty!7003))

(assert (= (and b!1512974 (not condMapEmpty!7003)) mapNonEmpty!7004))

(assert (= b!1512983 b!1512974))

(assert (= b!1512986 b!1512983))

(assert (= b!1512998 b!1512986))

(assert (= (and b!1512978 ((_ is LongMap!1478) (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))) b!1512998))

(assert (= b!1513005 b!1512978))

(assert (= (and b!1512985 ((_ is HashMap!1422) (cache!1803 cacheUp!616))) b!1513005))

(assert (= start!141194 b!1512985))

(assert (= (and b!1512990 condMapEmpty!7002) mapIsEmpty!7002))

(assert (= (and b!1512990 (not condMapEmpty!7002)) mapNonEmpty!7002))

(assert (= b!1512994 b!1512990))

(assert (= b!1512987 b!1512994))

(assert (= b!1512997 b!1512987))

(assert (= (and b!1513010 ((_ is LongMap!1479) (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))) b!1512997))

(assert (= b!1512975 b!1513010))

(assert (= (and b!1513002 ((_ is HashMap!1423) (cache!1804 cacheDown!629))) b!1512975))

(assert (= start!141194 b!1513002))

(assert (= start!141194 b!1513009))

(assert (= start!141194 b!1513003))

(assert (= b!1512992 b!1512988))

(assert (= b!1512976 b!1512992))

(assert (= (and start!141194 ((_ is Cons!16072) rules!1640)) b!1512976))

(assert (= (and b!1513012 condMapEmpty!7004) mapIsEmpty!7004))

(assert (= (and b!1513012 (not condMapEmpty!7004)) mapNonEmpty!7003))

(assert (= b!1512999 b!1513012))

(assert (= b!1512995 b!1512999))

(assert (= b!1512984 b!1512995))

(assert (= (and b!1513011 ((_ is LongMap!1477) (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))) b!1512984))

(assert (= b!1512977 b!1513011))

(assert (= (and b!1512996 ((_ is HashMap!1421) (cache!1802 cacheFurthestNullable!64))) b!1512977))

(assert (= b!1512996 b!1512982))

(assert (= start!141194 b!1512996))

(assert (= start!141194 b!1513004))

(declare-fun m!1777066 () Bool)

(assert (=> b!1512993 m!1777066))

(declare-fun m!1777068 () Bool)

(assert (=> mapNonEmpty!7002 m!1777068))

(declare-fun m!1777070 () Bool)

(assert (=> mapNonEmpty!7004 m!1777070))

(declare-fun m!1777072 () Bool)

(assert (=> b!1513006 m!1777072))

(declare-fun m!1777074 () Bool)

(assert (=> b!1513006 m!1777074))

(declare-fun m!1777076 () Bool)

(assert (=> b!1513004 m!1777076))

(declare-fun m!1777078 () Bool)

(assert (=> b!1513003 m!1777078))

(declare-fun m!1777080 () Bool)

(assert (=> b!1512999 m!1777080))

(declare-fun m!1777082 () Bool)

(assert (=> b!1512999 m!1777082))

(declare-fun m!1777084 () Bool)

(assert (=> b!1512989 m!1777084))

(declare-fun m!1777086 () Bool)

(assert (=> mapNonEmpty!7003 m!1777086))

(declare-fun m!1777088 () Bool)

(assert (=> start!141194 m!1777088))

(declare-fun m!1777090 () Bool)

(assert (=> start!141194 m!1777090))

(declare-fun m!1777092 () Bool)

(assert (=> start!141194 m!1777092))

(declare-fun m!1777094 () Bool)

(assert (=> start!141194 m!1777094))

(declare-fun m!1777096 () Bool)

(assert (=> start!141194 m!1777096))

(declare-fun m!1777098 () Bool)

(assert (=> start!141194 m!1777098))

(declare-fun m!1777100 () Bool)

(assert (=> start!141194 m!1777100))

(declare-fun m!1777102 () Bool)

(assert (=> b!1512983 m!1777102))

(declare-fun m!1777104 () Bool)

(assert (=> b!1512983 m!1777104))

(declare-fun m!1777106 () Bool)

(assert (=> b!1512981 m!1777106))

(declare-fun m!1777108 () Bool)

(assert (=> b!1513008 m!1777108))

(declare-fun m!1777110 () Bool)

(assert (=> b!1513008 m!1777110))

(declare-fun m!1777112 () Bool)

(assert (=> b!1513008 m!1777112))

(assert (=> b!1513008 m!1777110))

(assert (=> b!1513008 m!1777112))

(declare-fun m!1777114 () Bool)

(assert (=> b!1513008 m!1777114))

(declare-fun m!1777116 () Bool)

(assert (=> b!1513007 m!1777116))

(declare-fun m!1777118 () Bool)

(assert (=> b!1512994 m!1777118))

(declare-fun m!1777120 () Bool)

(assert (=> b!1512994 m!1777120))

(declare-fun m!1777122 () Bool)

(assert (=> b!1512992 m!1777122))

(declare-fun m!1777124 () Bool)

(assert (=> b!1512992 m!1777124))

(declare-fun m!1777126 () Bool)

(assert (=> b!1512972 m!1777126))

(declare-fun m!1777128 () Bool)

(assert (=> b!1512972 m!1777128))

(declare-fun m!1777130 () Bool)

(assert (=> b!1512972 m!1777130))

(assert (=> b!1512972 m!1777128))

(declare-fun m!1777132 () Bool)

(assert (=> b!1512972 m!1777132))

(declare-fun m!1777134 () Bool)

(assert (=> b!1512972 m!1777134))

(declare-fun m!1777136 () Bool)

(assert (=> b!1513000 m!1777136))

(declare-fun m!1777138 () Bool)

(assert (=> b!1513000 m!1777138))

(declare-fun m!1777140 () Bool)

(assert (=> b!1513000 m!1777140))

(declare-fun m!1777142 () Bool)

(assert (=> b!1512996 m!1777142))

(declare-fun m!1777144 () Bool)

(assert (=> b!1512991 m!1777144))

(declare-fun m!1777146 () Bool)

(assert (=> b!1512982 m!1777146))

(declare-fun m!1777148 () Bool)

(assert (=> b!1512979 m!1777148))

(declare-fun m!1777150 () Bool)

(assert (=> b!1513009 m!1777150))

(declare-fun m!1777152 () Bool)

(assert (=> b!1513001 m!1777152))

(assert (=> b!1513001 m!1777152))

(declare-fun m!1777154 () Bool)

(assert (=> b!1513001 m!1777154))

(declare-fun m!1777156 () Bool)

(assert (=> b!1512980 m!1777156))

(check-sat (not b_next!39959) (not b!1512972) (not b_next!39965) (not b_next!39953) (not b!1513004) (not b!1513007) (not b!1512991) (not mapNonEmpty!7002) (not b_next!39963) (not b_next!39957) (not b!1513009) (not b!1512996) b_and!105273 (not b!1512980) (not b!1512994) (not b_next!39951) b_and!105269 b_and!105267 (not b!1512993) (not mapNonEmpty!7003) (not b!1513006) (not b!1512974) (not b!1513003) (not b!1512983) (not b!1512989) (not b!1512976) (not b_next!39955) (not start!141194) b_and!105279 (not b!1512979) (not b!1513000) (not b!1513008) (not b!1512981) (not b!1513001) (not mapNonEmpty!7004) b_and!105265 (not b!1512990) b_and!105271 (not b!1512992) (not b_next!39961) b_and!105275 (not b!1512999) (not b!1512982) b_and!105277 (not b!1513012))
(check-sat (not b_next!39959) (not b_next!39965) b_and!105273 (not b_next!39953) (not b_next!39951) (not b_next!39955) b_and!105279 (not b_next!39963) (not b_next!39961) (not b_next!39957) b_and!105269 b_and!105267 b_and!105265 b_and!105271 b_and!105275 b_and!105277)
(get-model)

(declare-fun d!447957 () Bool)

(assert (=> d!447957 (= (array_inv!1669 (_keys!1771 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) (bvsge (size!12995 (_keys!1771 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512999 d!447957))

(declare-fun d!447959 () Bool)

(assert (=> d!447959 (= (array_inv!1672 (_values!1756 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) (bvsge (size!12994 (_values!1756 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512999 d!447959))

(declare-fun d!447961 () Bool)

(declare-fun list!6349 (Conc!5440) List!16139)

(assert (=> d!447961 (= (list!6347 (++!4357 acc!392 (_1!8486 lt!526153))) (list!6349 (c!247985 (++!4357 acc!392 (_1!8486 lt!526153)))))))

(declare-fun bs!364436 () Bool)

(assert (= bs!364436 d!447961))

(declare-fun m!1777158 () Bool)

(assert (=> bs!364436 m!1777158))

(assert (=> b!1512972 d!447961))

(declare-fun d!447963 () Bool)

(assert (=> d!447963 (= (list!6347 (_1!8486 lt!526154)) (list!6349 (c!247985 (_1!8486 lt!526154))))))

(declare-fun bs!364437 () Bool)

(assert (= bs!364437 d!447963))

(declare-fun m!1777160 () Bool)

(assert (=> bs!364437 m!1777160))

(assert (=> b!1512972 d!447963))

(declare-fun b!1513028 () Bool)

(declare-fun e!967585 () Bool)

(declare-fun e!967587 () Bool)

(assert (=> b!1513028 (= e!967585 e!967587)))

(declare-fun res!680775 () Bool)

(declare-fun lt!526163 () tuple2!14938)

(assert (=> b!1513028 (= res!680775 (< (size!12998 (_2!8486 lt!526163)) (size!12998 input!1102)))))

(assert (=> b!1513028 (=> (not res!680775) (not e!967587))))

(declare-fun b!1513029 () Bool)

(declare-fun res!680776 () Bool)

(declare-fun e!967586 () Bool)

(assert (=> b!1513029 (=> (not res!680776) (not e!967586))))

(declare-datatypes ((tuple2!14948 0))(
  ( (tuple2!14949 (_1!8493 List!16139) (_2!8493 List!16138)) )
))
(declare-fun lexList!747 (LexerInterface!2496 List!16140 List!16138) tuple2!14948)

(assert (=> b!1513029 (= res!680776 (= (list!6347 (_1!8486 lt!526163)) (_1!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 input!1102)))))))

(declare-fun b!1513030 () Bool)

(declare-fun e!967584 () tuple2!14938)

(declare-fun lt!526164 () tuple2!14938)

(declare-datatypes ((tuple2!14950 0))(
  ( (tuple2!14951 (_1!8494 Token!5350) (_2!8494 BalanceConc!10820)) )
))
(declare-datatypes ((Option!2930 0))(
  ( (None!2929) (Some!2929 (v!22888 tuple2!14950)) )
))
(declare-fun lt!526162 () Option!2930)

(declare-fun prepend!465 (BalanceConc!10822 Token!5350) BalanceConc!10822)

(assert (=> b!1513030 (= e!967584 (tuple2!14939 (prepend!465 (_1!8486 lt!526164) (_1!8494 (v!22888 lt!526162))) (_2!8486 lt!526164)))))

(assert (=> b!1513030 (= lt!526164 (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526162))))))

(declare-fun b!1513031 () Bool)

(assert (=> b!1513031 (= e!967585 (= (list!6348 (_2!8486 lt!526163)) (list!6348 input!1102)))))

(declare-fun d!447965 () Bool)

(assert (=> d!447965 e!967586))

(declare-fun res!680774 () Bool)

(assert (=> d!447965 (=> (not res!680774) (not e!967586))))

(assert (=> d!447965 (= res!680774 e!967585)))

(declare-fun c!247992 () Bool)

(declare-fun size!12999 (BalanceConc!10822) Int)

(assert (=> d!447965 (= c!247992 (> (size!12999 (_1!8486 lt!526163)) 0))))

(assert (=> d!447965 (= lt!526163 e!967584)))

(declare-fun c!247991 () Bool)

(assert (=> d!447965 (= c!247991 ((_ is Some!2929) lt!526162))))

(declare-fun maxPrefixZipperSequence!589 (LexerInterface!2496 List!16140 BalanceConc!10820) Option!2930)

(assert (=> d!447965 (= lt!526162 (maxPrefixZipperSequence!589 thiss!13241 rules!1640 input!1102))))

(assert (=> d!447965 (= (lexRec!331 thiss!13241 rules!1640 input!1102) lt!526163)))

(declare-fun b!1513027 () Bool)

(declare-fun isEmpty!9931 (BalanceConc!10822) Bool)

(assert (=> b!1513027 (= e!967587 (not (isEmpty!9931 (_1!8486 lt!526163))))))

(declare-fun b!1513032 () Bool)

(assert (=> b!1513032 (= e!967586 (= (list!6348 (_2!8486 lt!526163)) (_2!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 input!1102)))))))

(declare-fun b!1513033 () Bool)

(assert (=> b!1513033 (= e!967584 (tuple2!14939 (BalanceConc!10823 Empty!5440) input!1102))))

(assert (= (and d!447965 c!247991) b!1513030))

(assert (= (and d!447965 (not c!247991)) b!1513033))

(assert (= (and d!447965 c!247992) b!1513028))

(assert (= (and d!447965 (not c!247992)) b!1513031))

(assert (= (and b!1513028 res!680775) b!1513027))

(assert (= (and d!447965 res!680774) b!1513029))

(assert (= (and b!1513029 res!680776) b!1513032))

(declare-fun m!1777162 () Bool)

(assert (=> b!1513032 m!1777162))

(assert (=> b!1513032 m!1777112))

(assert (=> b!1513032 m!1777112))

(declare-fun m!1777164 () Bool)

(assert (=> b!1513032 m!1777164))

(declare-fun m!1777166 () Bool)

(assert (=> b!1513027 m!1777166))

(declare-fun m!1777168 () Bool)

(assert (=> b!1513028 m!1777168))

(assert (=> b!1513028 m!1777116))

(declare-fun m!1777170 () Bool)

(assert (=> b!1513030 m!1777170))

(declare-fun m!1777172 () Bool)

(assert (=> b!1513030 m!1777172))

(assert (=> b!1513031 m!1777162))

(assert (=> b!1513031 m!1777112))

(declare-fun m!1777174 () Bool)

(assert (=> d!447965 m!1777174))

(declare-fun m!1777176 () Bool)

(assert (=> d!447965 m!1777176))

(declare-fun m!1777178 () Bool)

(assert (=> b!1513029 m!1777178))

(assert (=> b!1513029 m!1777112))

(assert (=> b!1513029 m!1777112))

(assert (=> b!1513029 m!1777164))

(assert (=> b!1512972 d!447965))

(declare-fun b!1513035 () Bool)

(declare-fun e!967589 () Bool)

(declare-fun e!967591 () Bool)

(assert (=> b!1513035 (= e!967589 e!967591)))

(declare-fun res!680778 () Bool)

(declare-fun lt!526166 () tuple2!14938)

(assert (=> b!1513035 (= res!680778 (< (size!12998 (_2!8486 lt!526166)) (size!12998 totalInput!458)))))

(assert (=> b!1513035 (=> (not res!680778) (not e!967591))))

(declare-fun b!1513036 () Bool)

(declare-fun res!680779 () Bool)

(declare-fun e!967590 () Bool)

(assert (=> b!1513036 (=> (not res!680779) (not e!967590))))

(assert (=> b!1513036 (= res!680779 (= (list!6347 (_1!8486 lt!526166)) (_1!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 totalInput!458)))))))

(declare-fun b!1513037 () Bool)

(declare-fun e!967588 () tuple2!14938)

(declare-fun lt!526167 () tuple2!14938)

(declare-fun lt!526165 () Option!2930)

(assert (=> b!1513037 (= e!967588 (tuple2!14939 (prepend!465 (_1!8486 lt!526167) (_1!8494 (v!22888 lt!526165))) (_2!8486 lt!526167)))))

(assert (=> b!1513037 (= lt!526167 (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526165))))))

(declare-fun b!1513038 () Bool)

(assert (=> b!1513038 (= e!967589 (= (list!6348 (_2!8486 lt!526166)) (list!6348 totalInput!458)))))

(declare-fun d!447967 () Bool)

(assert (=> d!447967 e!967590))

(declare-fun res!680777 () Bool)

(assert (=> d!447967 (=> (not res!680777) (not e!967590))))

(assert (=> d!447967 (= res!680777 e!967589)))

(declare-fun c!247994 () Bool)

(assert (=> d!447967 (= c!247994 (> (size!12999 (_1!8486 lt!526166)) 0))))

(assert (=> d!447967 (= lt!526166 e!967588)))

(declare-fun c!247993 () Bool)

(assert (=> d!447967 (= c!247993 ((_ is Some!2929) lt!526165))))

(assert (=> d!447967 (= lt!526165 (maxPrefixZipperSequence!589 thiss!13241 rules!1640 totalInput!458))))

(assert (=> d!447967 (= (lexRec!331 thiss!13241 rules!1640 totalInput!458) lt!526166)))

(declare-fun b!1513034 () Bool)

(assert (=> b!1513034 (= e!967591 (not (isEmpty!9931 (_1!8486 lt!526166))))))

(declare-fun b!1513039 () Bool)

(assert (=> b!1513039 (= e!967590 (= (list!6348 (_2!8486 lt!526166)) (_2!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 totalInput!458)))))))

(declare-fun b!1513040 () Bool)

(assert (=> b!1513040 (= e!967588 (tuple2!14939 (BalanceConc!10823 Empty!5440) totalInput!458))))

(assert (= (and d!447967 c!247993) b!1513037))

(assert (= (and d!447967 (not c!247993)) b!1513040))

(assert (= (and d!447967 c!247994) b!1513035))

(assert (= (and d!447967 (not c!247994)) b!1513038))

(assert (= (and b!1513035 res!680778) b!1513034))

(assert (= (and d!447967 res!680777) b!1513036))

(assert (= (and b!1513036 res!680779) b!1513039))

(declare-fun m!1777180 () Bool)

(assert (=> b!1513039 m!1777180))

(assert (=> b!1513039 m!1777108))

(assert (=> b!1513039 m!1777108))

(declare-fun m!1777182 () Bool)

(assert (=> b!1513039 m!1777182))

(declare-fun m!1777184 () Bool)

(assert (=> b!1513034 m!1777184))

(declare-fun m!1777186 () Bool)

(assert (=> b!1513035 m!1777186))

(declare-fun m!1777188 () Bool)

(assert (=> b!1513035 m!1777188))

(declare-fun m!1777190 () Bool)

(assert (=> b!1513037 m!1777190))

(declare-fun m!1777192 () Bool)

(assert (=> b!1513037 m!1777192))

(assert (=> b!1513038 m!1777180))

(assert (=> b!1513038 m!1777108))

(declare-fun m!1777194 () Bool)

(assert (=> d!447967 m!1777194))

(declare-fun m!1777196 () Bool)

(assert (=> d!447967 m!1777196))

(declare-fun m!1777198 () Bool)

(assert (=> b!1513036 m!1777198))

(assert (=> b!1513036 m!1777108))

(assert (=> b!1513036 m!1777108))

(assert (=> b!1513036 m!1777182))

(assert (=> b!1512972 d!447967))

(declare-fun b!1513050 () Bool)

(declare-fun res!680788 () Bool)

(declare-fun e!967594 () Bool)

(assert (=> b!1513050 (=> (not res!680788) (not e!967594))))

(declare-fun height!811 (Conc!5440) Int)

(declare-fun ++!4359 (Conc!5440 Conc!5440) Conc!5440)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1513050 (= res!680788 (<= (height!811 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))) (+ (max!0 (height!811 (c!247985 acc!392)) (height!811 (c!247985 (_1!8486 lt!526153)))) 1)))))

(declare-fun b!1513049 () Bool)

(declare-fun res!680791 () Bool)

(assert (=> b!1513049 (=> (not res!680791) (not e!967594))))

(declare-fun isBalanced!1609 (Conc!5440) Bool)

(assert (=> b!1513049 (= res!680791 (isBalanced!1609 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))))))

(declare-fun d!447969 () Bool)

(assert (=> d!447969 e!967594))

(declare-fun res!680789 () Bool)

(assert (=> d!447969 (=> (not res!680789) (not e!967594))))

(declare-fun appendAssocInst!369 (Conc!5440 Conc!5440) Bool)

(assert (=> d!447969 (= res!680789 (appendAssocInst!369 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))))

(declare-fun lt!526170 () BalanceConc!10822)

(assert (=> d!447969 (= lt!526170 (BalanceConc!10823 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))))))

(assert (=> d!447969 (= (++!4357 acc!392 (_1!8486 lt!526153)) lt!526170)))

(declare-fun b!1513052 () Bool)

(declare-fun ++!4360 (List!16139 List!16139) List!16139)

(assert (=> b!1513052 (= e!967594 (= (list!6347 lt!526170) (++!4360 (list!6347 acc!392) (list!6347 (_1!8486 lt!526153)))))))

(declare-fun b!1513051 () Bool)

(declare-fun res!680790 () Bool)

(assert (=> b!1513051 (=> (not res!680790) (not e!967594))))

(assert (=> b!1513051 (= res!680790 (>= (height!811 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))) (max!0 (height!811 (c!247985 acc!392)) (height!811 (c!247985 (_1!8486 lt!526153))))))))

(assert (= (and d!447969 res!680789) b!1513049))

(assert (= (and b!1513049 res!680791) b!1513050))

(assert (= (and b!1513050 res!680788) b!1513051))

(assert (= (and b!1513051 res!680790) b!1513052))

(declare-fun m!1777200 () Bool)

(assert (=> d!447969 m!1777200))

(declare-fun m!1777202 () Bool)

(assert (=> d!447969 m!1777202))

(assert (=> b!1513050 m!1777202))

(declare-fun m!1777204 () Bool)

(assert (=> b!1513050 m!1777204))

(assert (=> b!1513050 m!1777202))

(declare-fun m!1777206 () Bool)

(assert (=> b!1513050 m!1777206))

(declare-fun m!1777208 () Bool)

(assert (=> b!1513050 m!1777208))

(assert (=> b!1513050 m!1777204))

(declare-fun m!1777210 () Bool)

(assert (=> b!1513050 m!1777210))

(assert (=> b!1513050 m!1777208))

(assert (=> b!1513049 m!1777202))

(assert (=> b!1513049 m!1777202))

(declare-fun m!1777212 () Bool)

(assert (=> b!1513049 m!1777212))

(assert (=> b!1513051 m!1777202))

(assert (=> b!1513051 m!1777204))

(assert (=> b!1513051 m!1777202))

(assert (=> b!1513051 m!1777206))

(assert (=> b!1513051 m!1777208))

(assert (=> b!1513051 m!1777204))

(assert (=> b!1513051 m!1777210))

(assert (=> b!1513051 m!1777208))

(declare-fun m!1777214 () Bool)

(assert (=> b!1513052 m!1777214))

(assert (=> b!1513052 m!1777138))

(declare-fun m!1777216 () Bool)

(assert (=> b!1513052 m!1777216))

(assert (=> b!1513052 m!1777138))

(assert (=> b!1513052 m!1777216))

(declare-fun m!1777218 () Bool)

(assert (=> b!1513052 m!1777218))

(assert (=> b!1512972 d!447969))

(declare-fun d!447971 () Bool)

(assert (=> d!447971 (= (array_inv!1669 (_keys!1772 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) (bvsge (size!12995 (_keys!1772 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512983 d!447971))

(declare-fun d!447973 () Bool)

(assert (=> d!447973 (= (array_inv!1670 (_values!1757 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) (bvsge (size!12996 (_values!1757 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512983 d!447973))

(declare-fun d!447975 () Bool)

(declare-fun c!248000 () Bool)

(assert (=> d!447975 (= c!248000 ((_ is Node!5439) (c!247983 input!1102)))))

(declare-fun e!967599 () Bool)

(assert (=> d!447975 (= (inv!21303 (c!247983 input!1102)) e!967599)))

(declare-fun b!1513059 () Bool)

(declare-fun inv!21311 (Conc!5439) Bool)

(assert (=> b!1513059 (= e!967599 (inv!21311 (c!247983 input!1102)))))

(declare-fun b!1513060 () Bool)

(declare-fun e!967600 () Bool)

(assert (=> b!1513060 (= e!967599 e!967600)))

(declare-fun res!680794 () Bool)

(assert (=> b!1513060 (= res!680794 (not ((_ is Leaf!8064) (c!247983 input!1102))))))

(assert (=> b!1513060 (=> res!680794 e!967600)))

(declare-fun b!1513061 () Bool)

(declare-fun inv!21312 (Conc!5439) Bool)

(assert (=> b!1513061 (= e!967600 (inv!21312 (c!247983 input!1102)))))

(assert (= (and d!447975 c!248000) b!1513059))

(assert (= (and d!447975 (not c!248000)) b!1513060))

(assert (= (and b!1513060 (not res!680794)) b!1513061))

(declare-fun m!1777220 () Bool)

(assert (=> b!1513059 m!1777220))

(declare-fun m!1777222 () Bool)

(assert (=> b!1513061 m!1777222))

(assert (=> b!1513009 d!447975))

(declare-fun d!447977 () Bool)

(assert (=> d!447977 (= (list!6347 (_1!8486 lt!526151)) (list!6349 (c!247985 (_1!8486 lt!526151))))))

(declare-fun bs!364438 () Bool)

(assert (= bs!364438 d!447977))

(declare-fun m!1777224 () Bool)

(assert (=> bs!364438 m!1777224))

(assert (=> b!1513000 d!447977))

(declare-fun d!447979 () Bool)

(assert (=> d!447979 (= (list!6347 acc!392) (list!6349 (c!247985 acc!392)))))

(declare-fun bs!364439 () Bool)

(assert (= bs!364439 d!447979))

(declare-fun m!1777226 () Bool)

(assert (=> bs!364439 m!1777226))

(assert (=> b!1513000 d!447979))

(declare-fun b!1513063 () Bool)

(declare-fun e!967602 () Bool)

(declare-fun e!967604 () Bool)

(assert (=> b!1513063 (= e!967602 e!967604)))

(declare-fun res!680796 () Bool)

(declare-fun lt!526172 () tuple2!14938)

(assert (=> b!1513063 (= res!680796 (< (size!12998 (_2!8486 lt!526172)) (size!12998 treated!70)))))

(assert (=> b!1513063 (=> (not res!680796) (not e!967604))))

(declare-fun b!1513064 () Bool)

(declare-fun res!680797 () Bool)

(declare-fun e!967603 () Bool)

(assert (=> b!1513064 (=> (not res!680797) (not e!967603))))

(assert (=> b!1513064 (= res!680797 (= (list!6347 (_1!8486 lt!526172)) (_1!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 treated!70)))))))

(declare-fun b!1513065 () Bool)

(declare-fun e!967601 () tuple2!14938)

(declare-fun lt!526173 () tuple2!14938)

(declare-fun lt!526171 () Option!2930)

(assert (=> b!1513065 (= e!967601 (tuple2!14939 (prepend!465 (_1!8486 lt!526173) (_1!8494 (v!22888 lt!526171))) (_2!8486 lt!526173)))))

(assert (=> b!1513065 (= lt!526173 (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526171))))))

(declare-fun b!1513066 () Bool)

(assert (=> b!1513066 (= e!967602 (= (list!6348 (_2!8486 lt!526172)) (list!6348 treated!70)))))

(declare-fun d!447981 () Bool)

(assert (=> d!447981 e!967603))

(declare-fun res!680795 () Bool)

(assert (=> d!447981 (=> (not res!680795) (not e!967603))))

(assert (=> d!447981 (= res!680795 e!967602)))

(declare-fun c!248002 () Bool)

(assert (=> d!447981 (= c!248002 (> (size!12999 (_1!8486 lt!526172)) 0))))

(assert (=> d!447981 (= lt!526172 e!967601)))

(declare-fun c!248001 () Bool)

(assert (=> d!447981 (= c!248001 ((_ is Some!2929) lt!526171))))

(assert (=> d!447981 (= lt!526171 (maxPrefixZipperSequence!589 thiss!13241 rules!1640 treated!70))))

(assert (=> d!447981 (= (lexRec!331 thiss!13241 rules!1640 treated!70) lt!526172)))

(declare-fun b!1513062 () Bool)

(assert (=> b!1513062 (= e!967604 (not (isEmpty!9931 (_1!8486 lt!526172))))))

(declare-fun b!1513067 () Bool)

(assert (=> b!1513067 (= e!967603 (= (list!6348 (_2!8486 lt!526172)) (_2!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 treated!70)))))))

(declare-fun b!1513068 () Bool)

(assert (=> b!1513068 (= e!967601 (tuple2!14939 (BalanceConc!10823 Empty!5440) treated!70))))

(assert (= (and d!447981 c!248001) b!1513065))

(assert (= (and d!447981 (not c!248001)) b!1513068))

(assert (= (and d!447981 c!248002) b!1513063))

(assert (= (and d!447981 (not c!248002)) b!1513066))

(assert (= (and b!1513063 res!680796) b!1513062))

(assert (= (and d!447981 res!680795) b!1513064))

(assert (= (and b!1513064 res!680797) b!1513067))

(declare-fun m!1777228 () Bool)

(assert (=> b!1513067 m!1777228))

(assert (=> b!1513067 m!1777110))

(assert (=> b!1513067 m!1777110))

(declare-fun m!1777230 () Bool)

(assert (=> b!1513067 m!1777230))

(declare-fun m!1777232 () Bool)

(assert (=> b!1513062 m!1777232))

(declare-fun m!1777234 () Bool)

(assert (=> b!1513063 m!1777234))

(declare-fun m!1777236 () Bool)

(assert (=> b!1513063 m!1777236))

(declare-fun m!1777238 () Bool)

(assert (=> b!1513065 m!1777238))

(declare-fun m!1777240 () Bool)

(assert (=> b!1513065 m!1777240))

(assert (=> b!1513066 m!1777228))

(assert (=> b!1513066 m!1777110))

(declare-fun m!1777242 () Bool)

(assert (=> d!447981 m!1777242))

(declare-fun m!1777244 () Bool)

(assert (=> d!447981 m!1777244))

(declare-fun m!1777246 () Bool)

(assert (=> b!1513064 m!1777246))

(assert (=> b!1513064 m!1777110))

(assert (=> b!1513064 m!1777110))

(assert (=> b!1513064 m!1777230))

(assert (=> b!1513000 d!447981))

(declare-fun d!447983 () Bool)

(assert (=> d!447983 (= (inv!21301 (tag!3108 (h!21473 rules!1640))) (= (mod (str.len (value!90713 (tag!3108 (h!21473 rules!1640)))) 2) 0))))

(assert (=> b!1512992 d!447983))

(declare-fun d!447985 () Bool)

(declare-fun res!680800 () Bool)

(declare-fun e!967607 () Bool)

(assert (=> d!447985 (=> (not res!680800) (not e!967607))))

(declare-fun semiInverseModEq!1071 (Int Int) Bool)

(assert (=> d!447985 (= res!680800 (semiInverseModEq!1071 (toChars!4052 (transformation!2844 (h!21473 rules!1640))) (toValue!4193 (transformation!2844 (h!21473 rules!1640)))))))

(assert (=> d!447985 (= (inv!21309 (transformation!2844 (h!21473 rules!1640))) e!967607)))

(declare-fun b!1513071 () Bool)

(declare-fun equivClasses!1030 (Int Int) Bool)

(assert (=> b!1513071 (= e!967607 (equivClasses!1030 (toChars!4052 (transformation!2844 (h!21473 rules!1640))) (toValue!4193 (transformation!2844 (h!21473 rules!1640)))))))

(assert (= (and d!447985 res!680800) b!1513071))

(declare-fun m!1777248 () Bool)

(assert (=> d!447985 m!1777248))

(declare-fun m!1777250 () Bool)

(assert (=> b!1513071 m!1777250))

(assert (=> b!1512992 d!447985))

(declare-fun d!447987 () Bool)

(assert (=> d!447987 (= (isEmpty!9929 rules!1640) ((_ is Nil!16072) rules!1640))))

(assert (=> b!1512981 d!447987))

(declare-fun d!447989 () Bool)

(declare-fun lt!526176 () Int)

(declare-fun size!13000 (List!16138) Int)

(assert (=> d!447989 (= lt!526176 (size!13000 (list!6348 input!1102)))))

(declare-fun size!13001 (Conc!5439) Int)

(assert (=> d!447989 (= lt!526176 (size!13001 (c!247983 input!1102)))))

(assert (=> d!447989 (= (size!12998 input!1102) lt!526176)))

(declare-fun bs!364440 () Bool)

(assert (= bs!364440 d!447989))

(assert (=> bs!364440 m!1777112))

(assert (=> bs!364440 m!1777112))

(declare-fun m!1777252 () Bool)

(assert (=> bs!364440 m!1777252))

(declare-fun m!1777254 () Bool)

(assert (=> bs!364440 m!1777254))

(assert (=> b!1513007 d!447989))

(declare-fun d!447991 () Bool)

(declare-fun validCacheMapUp!135 (MutableMap!1422) Bool)

(assert (=> d!447991 (= (valid!1180 cacheUp!616) (validCacheMapUp!135 (cache!1803 cacheUp!616)))))

(declare-fun bs!364441 () Bool)

(assert (= bs!364441 d!447991))

(declare-fun m!1777256 () Bool)

(assert (=> bs!364441 m!1777256))

(assert (=> b!1512980 d!447991))

(declare-fun d!447993 () Bool)

(declare-fun list!6350 (Conc!5439) List!16138)

(assert (=> d!447993 (= (list!6348 (_2!8486 lt!526154)) (list!6350 (c!247983 (_2!8486 lt!526154))))))

(declare-fun bs!364442 () Bool)

(assert (= bs!364442 d!447993))

(declare-fun m!1777258 () Bool)

(assert (=> bs!364442 m!1777258))

(assert (=> b!1513006 d!447993))

(declare-fun d!447995 () Bool)

(assert (=> d!447995 (= (list!6348 (_2!8486 lt!526153)) (list!6350 (c!247983 (_2!8486 lt!526153))))))

(declare-fun bs!364443 () Bool)

(assert (= bs!364443 d!447995))

(declare-fun m!1777260 () Bool)

(assert (=> bs!364443 m!1777260))

(assert (=> b!1513006 d!447995))

(declare-fun d!447997 () Bool)

(declare-fun validCacheMapDown!135 (MutableMap!1423) Bool)

(assert (=> d!447997 (= (valid!1181 cacheDown!629) (validCacheMapDown!135 (cache!1804 cacheDown!629)))))

(declare-fun bs!364444 () Bool)

(assert (= bs!364444 d!447997))

(declare-fun m!1777262 () Bool)

(assert (=> bs!364444 m!1777262))

(assert (=> b!1512989 d!447997))

(declare-fun d!447999 () Bool)

(declare-fun c!248003 () Bool)

(assert (=> d!447999 (= c!248003 ((_ is Node!5439) (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))

(declare-fun e!967608 () Bool)

(assert (=> d!447999 (= (inv!21303 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) e!967608)))

(declare-fun b!1513072 () Bool)

(assert (=> b!1513072 (= e!967608 (inv!21311 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))

(declare-fun b!1513073 () Bool)

(declare-fun e!967609 () Bool)

(assert (=> b!1513073 (= e!967608 e!967609)))

(declare-fun res!680801 () Bool)

(assert (=> b!1513073 (= res!680801 (not ((_ is Leaf!8064) (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(assert (=> b!1513073 (=> res!680801 e!967609)))

(declare-fun b!1513074 () Bool)

(assert (=> b!1513074 (= e!967609 (inv!21312 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))

(assert (= (and d!447999 c!248003) b!1513072))

(assert (= (and d!447999 (not c!248003)) b!1513073))

(assert (= (and b!1513073 (not res!680801)) b!1513074))

(declare-fun m!1777264 () Bool)

(assert (=> b!1513072 m!1777264))

(declare-fun m!1777266 () Bool)

(assert (=> b!1513074 m!1777266))

(assert (=> b!1512982 d!447999))

(declare-fun d!448001 () Bool)

(assert (=> d!448001 (= (list!6348 totalInput!458) (list!6350 (c!247983 totalInput!458)))))

(declare-fun bs!364445 () Bool)

(assert (= bs!364445 d!448001))

(declare-fun m!1777268 () Bool)

(assert (=> bs!364445 m!1777268))

(assert (=> b!1513008 d!448001))

(declare-fun b!1513083 () Bool)

(declare-fun e!967615 () List!16138)

(assert (=> b!1513083 (= e!967615 (list!6348 input!1102))))

(declare-fun lt!526179 () List!16138)

(declare-fun b!1513086 () Bool)

(declare-fun e!967614 () Bool)

(assert (=> b!1513086 (= e!967614 (or (not (= (list!6348 input!1102) Nil!16070)) (= lt!526179 (list!6348 treated!70))))))

(declare-fun b!1513085 () Bool)

(declare-fun res!680806 () Bool)

(assert (=> b!1513085 (=> (not res!680806) (not e!967614))))

(assert (=> b!1513085 (= res!680806 (= (size!13000 lt!526179) (+ (size!13000 (list!6348 treated!70)) (size!13000 (list!6348 input!1102)))))))

(declare-fun b!1513084 () Bool)

(assert (=> b!1513084 (= e!967615 (Cons!16070 (h!21471 (list!6348 treated!70)) (++!4358 (t!139416 (list!6348 treated!70)) (list!6348 input!1102))))))

(declare-fun d!448003 () Bool)

(assert (=> d!448003 e!967614))

(declare-fun res!680807 () Bool)

(assert (=> d!448003 (=> (not res!680807) (not e!967614))))

(declare-fun content!2314 (List!16138) (InoxSet C!8496))

(assert (=> d!448003 (= res!680807 (= (content!2314 lt!526179) ((_ map or) (content!2314 (list!6348 treated!70)) (content!2314 (list!6348 input!1102)))))))

(assert (=> d!448003 (= lt!526179 e!967615)))

(declare-fun c!248006 () Bool)

(assert (=> d!448003 (= c!248006 ((_ is Nil!16070) (list!6348 treated!70)))))

(assert (=> d!448003 (= (++!4358 (list!6348 treated!70) (list!6348 input!1102)) lt!526179)))

(assert (= (and d!448003 c!248006) b!1513083))

(assert (= (and d!448003 (not c!248006)) b!1513084))

(assert (= (and d!448003 res!680807) b!1513085))

(assert (= (and b!1513085 res!680806) b!1513086))

(declare-fun m!1777270 () Bool)

(assert (=> b!1513085 m!1777270))

(assert (=> b!1513085 m!1777110))

(declare-fun m!1777272 () Bool)

(assert (=> b!1513085 m!1777272))

(assert (=> b!1513085 m!1777112))

(assert (=> b!1513085 m!1777252))

(assert (=> b!1513084 m!1777112))

(declare-fun m!1777274 () Bool)

(assert (=> b!1513084 m!1777274))

(declare-fun m!1777276 () Bool)

(assert (=> d!448003 m!1777276))

(assert (=> d!448003 m!1777110))

(declare-fun m!1777278 () Bool)

(assert (=> d!448003 m!1777278))

(assert (=> d!448003 m!1777112))

(declare-fun m!1777280 () Bool)

(assert (=> d!448003 m!1777280))

(assert (=> b!1513008 d!448003))

(declare-fun d!448005 () Bool)

(assert (=> d!448005 (= (list!6348 treated!70) (list!6350 (c!247983 treated!70)))))

(declare-fun bs!364446 () Bool)

(assert (= bs!364446 d!448005))

(declare-fun m!1777282 () Bool)

(assert (=> bs!364446 m!1777282))

(assert (=> b!1513008 d!448005))

(declare-fun d!448007 () Bool)

(assert (=> d!448007 (= (list!6348 input!1102) (list!6350 (c!247983 input!1102)))))

(declare-fun bs!364447 () Bool)

(assert (= bs!364447 d!448007))

(declare-fun m!1777284 () Bool)

(assert (=> bs!364447 m!1777284))

(assert (=> b!1513008 d!448007))

(declare-fun d!448009 () Bool)

(declare-fun res!680810 () Bool)

(declare-fun e!967618 () Bool)

(assert (=> d!448009 (=> (not res!680810) (not e!967618))))

(declare-fun rulesValid!1042 (LexerInterface!2496 List!16140) Bool)

(assert (=> d!448009 (= res!680810 (rulesValid!1042 thiss!13241 rules!1640))))

(assert (=> d!448009 (= (rulesInvariant!2270 thiss!13241 rules!1640) e!967618)))

(declare-fun b!1513089 () Bool)

(declare-datatypes ((List!16145 0))(
  ( (Nil!16077) (Cons!16077 (h!21478 String!18932) (t!139423 List!16145)) )
))
(declare-fun noDuplicateTag!1042 (LexerInterface!2496 List!16140 List!16145) Bool)

(assert (=> b!1513089 (= e!967618 (noDuplicateTag!1042 thiss!13241 rules!1640 Nil!16077))))

(assert (= (and d!448009 res!680810) b!1513089))

(declare-fun m!1777286 () Bool)

(assert (=> d!448009 m!1777286))

(declare-fun m!1777288 () Bool)

(assert (=> b!1513089 m!1777288))

(assert (=> b!1512991 d!448009))

(declare-fun d!448011 () Bool)

(declare-fun c!248007 () Bool)

(assert (=> d!448011 (= c!248007 ((_ is Node!5439) (c!247983 totalInput!458)))))

(declare-fun e!967619 () Bool)

(assert (=> d!448011 (= (inv!21303 (c!247983 totalInput!458)) e!967619)))

(declare-fun b!1513090 () Bool)

(assert (=> b!1513090 (= e!967619 (inv!21311 (c!247983 totalInput!458)))))

(declare-fun b!1513091 () Bool)

(declare-fun e!967620 () Bool)

(assert (=> b!1513091 (= e!967619 e!967620)))

(declare-fun res!680811 () Bool)

(assert (=> b!1513091 (= res!680811 (not ((_ is Leaf!8064) (c!247983 totalInput!458))))))

(assert (=> b!1513091 (=> res!680811 e!967620)))

(declare-fun b!1513092 () Bool)

(assert (=> b!1513092 (= e!967620 (inv!21312 (c!247983 totalInput!458)))))

(assert (= (and d!448011 c!248007) b!1513090))

(assert (= (and d!448011 (not c!248007)) b!1513091))

(assert (= (and b!1513091 (not res!680811)) b!1513092))

(declare-fun m!1777290 () Bool)

(assert (=> b!1513090 m!1777290))

(declare-fun m!1777292 () Bool)

(assert (=> b!1513092 m!1777292))

(assert (=> b!1513004 d!448011))

(declare-fun d!448013 () Bool)

(declare-fun isBalanced!1610 (Conc!5439) Bool)

(assert (=> d!448013 (= (inv!21307 (totalInput!2296 cacheFurthestNullable!64)) (isBalanced!1610 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))

(declare-fun bs!364448 () Bool)

(assert (= bs!364448 d!448013))

(declare-fun m!1777294 () Bool)

(assert (=> bs!364448 m!1777294))

(assert (=> b!1512996 d!448013))

(declare-fun d!448015 () Bool)

(declare-fun validCacheMapFurthestNullable!48 (MutableMap!1421 BalanceConc!10820) Bool)

(assert (=> d!448015 (= (valid!1179 cacheFurthestNullable!64) (validCacheMapFurthestNullable!48 (cache!1802 cacheFurthestNullable!64) (totalInput!2296 cacheFurthestNullable!64)))))

(declare-fun bs!364449 () Bool)

(assert (= bs!364449 d!448015))

(declare-fun m!1777296 () Bool)

(assert (=> bs!364449 m!1777296))

(assert (=> b!1512979 d!448015))

(declare-fun d!448017 () Bool)

(declare-fun c!248010 () Bool)

(assert (=> d!448017 (= c!248010 ((_ is Node!5440) (c!247985 acc!392)))))

(declare-fun e!967625 () Bool)

(assert (=> d!448017 (= (inv!21310 (c!247985 acc!392)) e!967625)))

(declare-fun b!1513099 () Bool)

(declare-fun inv!21313 (Conc!5440) Bool)

(assert (=> b!1513099 (= e!967625 (inv!21313 (c!247985 acc!392)))))

(declare-fun b!1513100 () Bool)

(declare-fun e!967626 () Bool)

(assert (=> b!1513100 (= e!967625 e!967626)))

(declare-fun res!680814 () Bool)

(assert (=> b!1513100 (= res!680814 (not ((_ is Leaf!8065) (c!247985 acc!392))))))

(assert (=> b!1513100 (=> res!680814 e!967626)))

(declare-fun b!1513101 () Bool)

(declare-fun inv!21314 (Conc!5440) Bool)

(assert (=> b!1513101 (= e!967626 (inv!21314 (c!247985 acc!392)))))

(assert (= (and d!448017 c!248010) b!1513099))

(assert (= (and d!448017 (not c!248010)) b!1513100))

(assert (= (and b!1513100 (not res!680814)) b!1513101))

(declare-fun m!1777298 () Bool)

(assert (=> b!1513099 m!1777298))

(declare-fun m!1777300 () Bool)

(assert (=> b!1513101 m!1777300))

(assert (=> b!1512993 d!448017))

(declare-fun d!448019 () Bool)

(assert (=> d!448019 (= (isEmpty!9930 (list!6348 (_2!8486 lt!526151))) ((_ is Nil!16070) (list!6348 (_2!8486 lt!526151))))))

(assert (=> b!1513001 d!448019))

(declare-fun d!448021 () Bool)

(assert (=> d!448021 (= (list!6348 (_2!8486 lt!526151)) (list!6350 (c!247983 (_2!8486 lt!526151))))))

(declare-fun bs!364450 () Bool)

(assert (= bs!364450 d!448021))

(declare-fun m!1777302 () Bool)

(assert (=> bs!364450 m!1777302))

(assert (=> b!1513001 d!448021))

(declare-fun d!448023 () Bool)

(assert (=> d!448023 (= (array_inv!1669 (_keys!1773 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) (bvsge (size!12995 (_keys!1773 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512994 d!448023))

(declare-fun d!448025 () Bool)

(assert (=> d!448025 (= (array_inv!1671 (_values!1758 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) (bvsge (size!12997 (_values!1758 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))) #b00000000000000000000000000000000))))

(assert (=> b!1512994 d!448025))

(declare-fun d!448027 () Bool)

(declare-fun c!248011 () Bool)

(assert (=> d!448027 (= c!248011 ((_ is Node!5439) (c!247983 treated!70)))))

(declare-fun e!967627 () Bool)

(assert (=> d!448027 (= (inv!21303 (c!247983 treated!70)) e!967627)))

(declare-fun b!1513102 () Bool)

(assert (=> b!1513102 (= e!967627 (inv!21311 (c!247983 treated!70)))))

(declare-fun b!1513103 () Bool)

(declare-fun e!967628 () Bool)

(assert (=> b!1513103 (= e!967627 e!967628)))

(declare-fun res!680815 () Bool)

(assert (=> b!1513103 (= res!680815 (not ((_ is Leaf!8064) (c!247983 treated!70))))))

(assert (=> b!1513103 (=> res!680815 e!967628)))

(declare-fun b!1513104 () Bool)

(assert (=> b!1513104 (= e!967628 (inv!21312 (c!247983 treated!70)))))

(assert (= (and d!448027 c!248011) b!1513102))

(assert (= (and d!448027 (not c!248011)) b!1513103))

(assert (= (and b!1513103 (not res!680815)) b!1513104))

(declare-fun m!1777304 () Bool)

(assert (=> b!1513102 m!1777304))

(declare-fun m!1777306 () Bool)

(assert (=> b!1513104 m!1777306))

(assert (=> b!1513003 d!448027))

(declare-fun d!448029 () Bool)

(assert (=> d!448029 (= (inv!21307 treated!70) (isBalanced!1610 (c!247983 treated!70)))))

(declare-fun bs!364451 () Bool)

(assert (= bs!364451 d!448029))

(declare-fun m!1777308 () Bool)

(assert (=> bs!364451 m!1777308))

(assert (=> start!141194 d!448029))

(declare-fun d!448031 () Bool)

(assert (=> d!448031 (= (inv!21307 input!1102) (isBalanced!1610 (c!247983 input!1102)))))

(declare-fun bs!364452 () Bool)

(assert (= bs!364452 d!448031))

(declare-fun m!1777310 () Bool)

(assert (=> bs!364452 m!1777310))

(assert (=> start!141194 d!448031))

(declare-fun d!448033 () Bool)

(declare-fun res!680818 () Bool)

(declare-fun e!967631 () Bool)

(assert (=> d!448033 (=> (not res!680818) (not e!967631))))

(assert (=> d!448033 (= res!680818 ((_ is HashMap!1421) (cache!1802 cacheFurthestNullable!64)))))

(assert (=> d!448033 (= (inv!21308 cacheFurthestNullable!64) e!967631)))

(declare-fun b!1513107 () Bool)

(assert (=> b!1513107 (= e!967631 (validCacheMapFurthestNullable!48 (cache!1802 cacheFurthestNullable!64) (totalInput!2296 cacheFurthestNullable!64)))))

(assert (= (and d!448033 res!680818) b!1513107))

(assert (=> b!1513107 m!1777296))

(assert (=> start!141194 d!448033))

(declare-fun d!448035 () Bool)

(declare-fun res!680821 () Bool)

(declare-fun e!967634 () Bool)

(assert (=> d!448035 (=> (not res!680821) (not e!967634))))

(assert (=> d!448035 (= res!680821 ((_ is HashMap!1423) (cache!1804 cacheDown!629)))))

(assert (=> d!448035 (= (inv!21306 cacheDown!629) e!967634)))

(declare-fun b!1513110 () Bool)

(assert (=> b!1513110 (= e!967634 (validCacheMapDown!135 (cache!1804 cacheDown!629)))))

(assert (= (and d!448035 res!680821) b!1513110))

(assert (=> b!1513110 m!1777262))

(assert (=> start!141194 d!448035))

(declare-fun d!448037 () Bool)

(assert (=> d!448037 (= (inv!21307 totalInput!458) (isBalanced!1610 (c!247983 totalInput!458)))))

(declare-fun bs!364453 () Bool)

(assert (= bs!364453 d!448037))

(declare-fun m!1777312 () Bool)

(assert (=> bs!364453 m!1777312))

(assert (=> start!141194 d!448037))

(declare-fun d!448039 () Bool)

(assert (=> d!448039 (= (inv!21304 acc!392) (isBalanced!1609 (c!247985 acc!392)))))

(declare-fun bs!364454 () Bool)

(assert (= bs!364454 d!448039))

(declare-fun m!1777314 () Bool)

(assert (=> bs!364454 m!1777314))

(assert (=> start!141194 d!448039))

(declare-fun d!448041 () Bool)

(declare-fun res!680824 () Bool)

(declare-fun e!967637 () Bool)

(assert (=> d!448041 (=> (not res!680824) (not e!967637))))

(assert (=> d!448041 (= res!680824 ((_ is HashMap!1422) (cache!1803 cacheUp!616)))))

(assert (=> d!448041 (= (inv!21305 cacheUp!616) e!967637)))

(declare-fun b!1513113 () Bool)

(assert (=> b!1513113 (= e!967637 (validCacheMapUp!135 (cache!1803 cacheUp!616)))))

(assert (= (and d!448041 res!680824) b!1513113))

(assert (=> b!1513113 m!1777256))

(assert (=> start!141194 d!448041))

(declare-fun mapIsEmpty!7007 () Bool)

(declare-fun mapRes!7007 () Bool)

(assert (=> mapIsEmpty!7007 mapRes!7007))

(declare-fun setNonEmpty!9110 () Bool)

(declare-fun setElem!9110 () Context!1354)

(declare-fun setRes!9110 () Bool)

(declare-fun tp!432822 () Bool)

(declare-fun e!967646 () Bool)

(declare-fun inv!21315 (Context!1354) Bool)

(assert (=> setNonEmpty!9110 (= setRes!9110 (and tp!432822 (inv!21315 setElem!9110) e!967646))))

(declare-fun mapDefault!7007 () List!16142)

(declare-fun setRest!9111 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9110 (= (_1!8487 (_1!8488 (h!21475 mapDefault!7007))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9110 true) setRest!9111))))

(declare-fun b!1513124 () Bool)

(declare-fun e!967647 () Bool)

(declare-fun tp!432817 () Bool)

(assert (=> b!1513124 (= e!967647 tp!432817)))

(declare-fun condMapEmpty!7007 () Bool)

(assert (=> mapNonEmpty!7003 (= condMapEmpty!7007 (= mapRest!7002 ((as const (Array (_ BitVec 32) List!16142)) mapDefault!7007)))))

(declare-fun e!967648 () Bool)

(assert (=> mapNonEmpty!7003 (= tp!432799 (and e!967648 mapRes!7007))))

(declare-fun b!1513125 () Bool)

(declare-fun tp!432819 () Bool)

(assert (=> b!1513125 (= e!967648 (and setRes!9110 tp!432819))))

(declare-fun condSetEmpty!9110 () Bool)

(assert (=> b!1513125 (= condSetEmpty!9110 (= (_1!8487 (_1!8488 (h!21475 mapDefault!7007))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun mapNonEmpty!7007 () Bool)

(declare-fun tp!432821 () Bool)

(declare-fun e!967649 () Bool)

(assert (=> mapNonEmpty!7007 (= mapRes!7007 (and tp!432821 e!967649))))

(declare-fun mapValue!7007 () List!16142)

(declare-fun mapKey!7007 () (_ BitVec 32))

(declare-fun mapRest!7007 () (Array (_ BitVec 32) List!16142))

(assert (=> mapNonEmpty!7007 (= mapRest!7002 (store mapRest!7007 mapKey!7007 mapValue!7007))))

(declare-fun b!1513126 () Bool)

(declare-fun setRes!9111 () Bool)

(declare-fun tp!432818 () Bool)

(assert (=> b!1513126 (= e!967649 (and setRes!9111 tp!432818))))

(declare-fun condSetEmpty!9111 () Bool)

(assert (=> b!1513126 (= condSetEmpty!9111 (= (_1!8487 (_1!8488 (h!21475 mapValue!7007))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setIsEmpty!9110 () Bool)

(assert (=> setIsEmpty!9110 setRes!9110))

(declare-fun b!1513127 () Bool)

(declare-fun tp!432816 () Bool)

(assert (=> b!1513127 (= e!967646 tp!432816)))

(declare-fun tp!432820 () Bool)

(declare-fun setElem!9111 () Context!1354)

(declare-fun setNonEmpty!9111 () Bool)

(assert (=> setNonEmpty!9111 (= setRes!9111 (and tp!432820 (inv!21315 setElem!9111) e!967647))))

(declare-fun setRest!9110 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9111 (= (_1!8487 (_1!8488 (h!21475 mapValue!7007))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9111 true) setRest!9110))))

(declare-fun setIsEmpty!9111 () Bool)

(assert (=> setIsEmpty!9111 setRes!9111))

(assert (= (and mapNonEmpty!7003 condMapEmpty!7007) mapIsEmpty!7007))

(assert (= (and mapNonEmpty!7003 (not condMapEmpty!7007)) mapNonEmpty!7007))

(assert (= (and b!1513126 condSetEmpty!9111) setIsEmpty!9111))

(assert (= (and b!1513126 (not condSetEmpty!9111)) setNonEmpty!9111))

(assert (= setNonEmpty!9111 b!1513124))

(assert (= (and mapNonEmpty!7007 ((_ is Cons!16074) mapValue!7007)) b!1513126))

(assert (= (and b!1513125 condSetEmpty!9110) setIsEmpty!9110))

(assert (= (and b!1513125 (not condSetEmpty!9110)) setNonEmpty!9110))

(assert (= setNonEmpty!9110 b!1513127))

(assert (= (and mapNonEmpty!7003 ((_ is Cons!16074) mapDefault!7007)) b!1513125))

(declare-fun m!1777316 () Bool)

(assert (=> setNonEmpty!9110 m!1777316))

(declare-fun m!1777318 () Bool)

(assert (=> mapNonEmpty!7007 m!1777318))

(declare-fun m!1777320 () Bool)

(assert (=> setNonEmpty!9111 m!1777320))

(declare-fun e!967654 () Bool)

(declare-fun setElem!9114 () Context!1354)

(declare-fun tp!432830 () Bool)

(declare-fun setNonEmpty!9114 () Bool)

(declare-fun setRes!9114 () Bool)

(assert (=> setNonEmpty!9114 (= setRes!9114 (and tp!432830 (inv!21315 setElem!9114) e!967654))))

(declare-fun setRest!9114 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9114 (= (_1!8487 (_1!8488 (h!21475 mapValue!7003))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9114 true) setRest!9114))))

(declare-fun b!1513135 () Bool)

(declare-fun tp!432829 () Bool)

(assert (=> b!1513135 (= e!967654 tp!432829)))

(declare-fun setIsEmpty!9114 () Bool)

(assert (=> setIsEmpty!9114 setRes!9114))

(declare-fun e!967655 () Bool)

(assert (=> mapNonEmpty!7003 (= tp!432797 e!967655)))

(declare-fun b!1513134 () Bool)

(declare-fun tp!432831 () Bool)

(assert (=> b!1513134 (= e!967655 (and setRes!9114 tp!432831))))

(declare-fun condSetEmpty!9114 () Bool)

(assert (=> b!1513134 (= condSetEmpty!9114 (= (_1!8487 (_1!8488 (h!21475 mapValue!7003))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513134 condSetEmpty!9114) setIsEmpty!9114))

(assert (= (and b!1513134 (not condSetEmpty!9114)) setNonEmpty!9114))

(assert (= setNonEmpty!9114 b!1513135))

(assert (= (and mapNonEmpty!7003 ((_ is Cons!16074) mapValue!7003)) b!1513134))

(declare-fun m!1777322 () Bool)

(assert (=> setNonEmpty!9114 m!1777322))

(declare-fun setNonEmpty!9115 () Bool)

(declare-fun tp!432833 () Bool)

(declare-fun setElem!9115 () Context!1354)

(declare-fun setRes!9115 () Bool)

(declare-fun e!967656 () Bool)

(assert (=> setNonEmpty!9115 (= setRes!9115 (and tp!432833 (inv!21315 setElem!9115) e!967656))))

(declare-fun setRest!9115 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9115 (= (_1!8487 (_1!8488 (h!21475 (zeroValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9115 true) setRest!9115))))

(declare-fun b!1513137 () Bool)

(declare-fun tp!432832 () Bool)

(assert (=> b!1513137 (= e!967656 tp!432832)))

(declare-fun setIsEmpty!9115 () Bool)

(assert (=> setIsEmpty!9115 setRes!9115))

(declare-fun e!967657 () Bool)

(assert (=> b!1512999 (= tp!432792 e!967657)))

(declare-fun b!1513136 () Bool)

(declare-fun tp!432834 () Bool)

(assert (=> b!1513136 (= e!967657 (and setRes!9115 tp!432834))))

(declare-fun condSetEmpty!9115 () Bool)

(assert (=> b!1513136 (= condSetEmpty!9115 (= (_1!8487 (_1!8488 (h!21475 (zeroValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513136 condSetEmpty!9115) setIsEmpty!9115))

(assert (= (and b!1513136 (not condSetEmpty!9115)) setNonEmpty!9115))

(assert (= setNonEmpty!9115 b!1513137))

(assert (= (and b!1512999 ((_ is Cons!16074) (zeroValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64)))))))) b!1513136))

(declare-fun m!1777324 () Bool)

(assert (=> setNonEmpty!9115 m!1777324))

(declare-fun setRes!9116 () Bool)

(declare-fun setElem!9116 () Context!1354)

(declare-fun tp!432836 () Bool)

(declare-fun setNonEmpty!9116 () Bool)

(declare-fun e!967658 () Bool)

(assert (=> setNonEmpty!9116 (= setRes!9116 (and tp!432836 (inv!21315 setElem!9116) e!967658))))

(declare-fun setRest!9116 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9116 (= (_1!8487 (_1!8488 (h!21475 (minValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9116 true) setRest!9116))))

(declare-fun b!1513139 () Bool)

(declare-fun tp!432835 () Bool)

(assert (=> b!1513139 (= e!967658 tp!432835)))

(declare-fun setIsEmpty!9116 () Bool)

(assert (=> setIsEmpty!9116 setRes!9116))

(declare-fun e!967659 () Bool)

(assert (=> b!1512999 (= tp!432800 e!967659)))

(declare-fun b!1513138 () Bool)

(declare-fun tp!432837 () Bool)

(assert (=> b!1513138 (= e!967659 (and setRes!9116 tp!432837))))

(declare-fun condSetEmpty!9116 () Bool)

(assert (=> b!1513138 (= condSetEmpty!9116 (= (_1!8487 (_1!8488 (h!21475 (minValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513138 condSetEmpty!9116) setIsEmpty!9116))

(assert (= (and b!1513138 (not condSetEmpty!9116)) setNonEmpty!9116))

(assert (= setNonEmpty!9116 b!1513139))

(assert (= (and b!1512999 ((_ is Cons!16074) (minValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64)))))))) b!1513138))

(declare-fun m!1777326 () Bool)

(assert (=> setNonEmpty!9116 m!1777326))

(declare-fun setIsEmpty!9121 () Bool)

(declare-fun setRes!9122 () Bool)

(assert (=> setIsEmpty!9121 setRes!9122))

(declare-fun setNonEmpty!9121 () Bool)

(declare-fun tp!432861 () Bool)

(declare-fun e!967677 () Bool)

(declare-fun setElem!9121 () Context!1354)

(assert (=> setNonEmpty!9121 (= setRes!9122 (and tp!432861 (inv!21315 setElem!9121) e!967677))))

(declare-fun mapDefault!7010 () List!16143)

(declare-fun setRest!9121 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9121 (= (_2!8490 (h!21476 mapDefault!7010)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9121 true) setRest!9121))))

(declare-fun tp!432858 () Bool)

(declare-fun e!967676 () Bool)

(declare-fun tp_is_empty!7015 () Bool)

(declare-fun e!967674 () Bool)

(declare-fun b!1513154 () Bool)

(assert (=> b!1513154 (= e!967676 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 mapDefault!7010)))) e!967674 tp_is_empty!7015 setRes!9122 tp!432858))))

(declare-fun condSetEmpty!9121 () Bool)

(assert (=> b!1513154 (= condSetEmpty!9121 (= (_2!8490 (h!21476 mapDefault!7010)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513155 () Bool)

(declare-fun e!967673 () Bool)

(declare-fun tp!432863 () Bool)

(assert (=> b!1513155 (= e!967673 tp!432863)))

(declare-fun b!1513156 () Bool)

(declare-fun tp!432860 () Bool)

(assert (=> b!1513156 (= e!967674 tp!432860)))

(declare-fun e!967672 () Bool)

(declare-fun setRes!9121 () Bool)

(declare-fun setNonEmpty!9122 () Bool)

(declare-fun tp!432862 () Bool)

(declare-fun setElem!9122 () Context!1354)

(assert (=> setNonEmpty!9122 (= setRes!9121 (and tp!432862 (inv!21315 setElem!9122) e!967672))))

(declare-fun mapValue!7010 () List!16143)

(declare-fun setRest!9122 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9122 (= (_2!8490 (h!21476 mapValue!7010)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9122 true) setRest!9122))))

(declare-fun mapIsEmpty!7010 () Bool)

(declare-fun mapRes!7010 () Bool)

(assert (=> mapIsEmpty!7010 mapRes!7010))

(declare-fun condMapEmpty!7010 () Bool)

(assert (=> mapNonEmpty!7004 (= condMapEmpty!7010 (= mapRest!7003 ((as const (Array (_ BitVec 32) List!16143)) mapDefault!7010)))))

(assert (=> mapNonEmpty!7004 (= tp!432789 (and e!967676 mapRes!7010))))

(declare-fun b!1513157 () Bool)

(declare-fun e!967675 () Bool)

(declare-fun tp!432857 () Bool)

(assert (=> b!1513157 (= e!967675 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 mapValue!7010)))) e!967673 tp_is_empty!7015 setRes!9121 tp!432857))))

(declare-fun condSetEmpty!9122 () Bool)

(assert (=> b!1513157 (= condSetEmpty!9122 (= (_2!8490 (h!21476 mapValue!7010)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setIsEmpty!9122 () Bool)

(assert (=> setIsEmpty!9122 setRes!9121))

(declare-fun mapNonEmpty!7010 () Bool)

(declare-fun tp!432856 () Bool)

(assert (=> mapNonEmpty!7010 (= mapRes!7010 (and tp!432856 e!967675))))

(declare-fun mapRest!7010 () (Array (_ BitVec 32) List!16143))

(declare-fun mapKey!7010 () (_ BitVec 32))

(assert (=> mapNonEmpty!7010 (= mapRest!7003 (store mapRest!7010 mapKey!7010 mapValue!7010))))

(declare-fun b!1513158 () Bool)

(declare-fun tp!432859 () Bool)

(assert (=> b!1513158 (= e!967672 tp!432859)))

(declare-fun b!1513159 () Bool)

(declare-fun tp!432864 () Bool)

(assert (=> b!1513159 (= e!967677 tp!432864)))

(assert (= (and mapNonEmpty!7004 condMapEmpty!7010) mapIsEmpty!7010))

(assert (= (and mapNonEmpty!7004 (not condMapEmpty!7010)) mapNonEmpty!7010))

(assert (= b!1513157 b!1513155))

(assert (= (and b!1513157 condSetEmpty!9122) setIsEmpty!9122))

(assert (= (and b!1513157 (not condSetEmpty!9122)) setNonEmpty!9122))

(assert (= setNonEmpty!9122 b!1513158))

(assert (= (and mapNonEmpty!7010 ((_ is Cons!16075) mapValue!7010)) b!1513157))

(assert (= b!1513154 b!1513156))

(assert (= (and b!1513154 condSetEmpty!9121) setIsEmpty!9121))

(assert (= (and b!1513154 (not condSetEmpty!9121)) setNonEmpty!9121))

(assert (= setNonEmpty!9121 b!1513159))

(assert (= (and mapNonEmpty!7004 ((_ is Cons!16075) mapDefault!7010)) b!1513154))

(declare-fun m!1777328 () Bool)

(assert (=> setNonEmpty!9121 m!1777328))

(declare-fun m!1777330 () Bool)

(assert (=> setNonEmpty!9122 m!1777330))

(declare-fun m!1777332 () Bool)

(assert (=> b!1513154 m!1777332))

(declare-fun m!1777334 () Bool)

(assert (=> mapNonEmpty!7010 m!1777334))

(declare-fun m!1777336 () Bool)

(assert (=> b!1513157 m!1777336))

(declare-fun e!967684 () Bool)

(assert (=> mapNonEmpty!7004 (= tp!432785 e!967684)))

(declare-fun setIsEmpty!9125 () Bool)

(declare-fun setRes!9125 () Bool)

(assert (=> setIsEmpty!9125 setRes!9125))

(declare-fun setElem!9125 () Context!1354)

(declare-fun tp!432875 () Bool)

(declare-fun setNonEmpty!9125 () Bool)

(declare-fun e!967685 () Bool)

(assert (=> setNonEmpty!9125 (= setRes!9125 (and tp!432875 (inv!21315 setElem!9125) e!967685))))

(declare-fun setRest!9125 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9125 (= (_2!8490 (h!21476 mapValue!7004)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9125 true) setRest!9125))))

(declare-fun b!1513168 () Bool)

(declare-fun e!967686 () Bool)

(declare-fun tp!432873 () Bool)

(assert (=> b!1513168 (= e!967686 tp!432873)))

(declare-fun b!1513169 () Bool)

(declare-fun tp!432876 () Bool)

(assert (=> b!1513169 (= e!967685 tp!432876)))

(declare-fun tp!432874 () Bool)

(declare-fun b!1513170 () Bool)

(assert (=> b!1513170 (= e!967684 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 mapValue!7004)))) e!967686 tp_is_empty!7015 setRes!9125 tp!432874))))

(declare-fun condSetEmpty!9125 () Bool)

(assert (=> b!1513170 (= condSetEmpty!9125 (= (_2!8490 (h!21476 mapValue!7004)) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513170 b!1513168))

(assert (= (and b!1513170 condSetEmpty!9125) setIsEmpty!9125))

(assert (= (and b!1513170 (not condSetEmpty!9125)) setNonEmpty!9125))

(assert (= setNonEmpty!9125 b!1513169))

(assert (= (and mapNonEmpty!7004 ((_ is Cons!16075) mapValue!7004)) b!1513170))

(declare-fun m!1777338 () Bool)

(assert (=> setNonEmpty!9125 m!1777338))

(declare-fun m!1777340 () Bool)

(assert (=> b!1513170 m!1777340))

(declare-fun e!967687 () Bool)

(assert (=> b!1512983 (= tp!432772 e!967687)))

(declare-fun setIsEmpty!9126 () Bool)

(declare-fun setRes!9126 () Bool)

(assert (=> setIsEmpty!9126 setRes!9126))

(declare-fun setElem!9126 () Context!1354)

(declare-fun tp!432879 () Bool)

(declare-fun setNonEmpty!9126 () Bool)

(declare-fun e!967688 () Bool)

(assert (=> setNonEmpty!9126 (= setRes!9126 (and tp!432879 (inv!21315 setElem!9126) e!967688))))

(declare-fun setRest!9126 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9126 (= (_2!8490 (h!21476 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9126 true) setRest!9126))))

(declare-fun b!1513171 () Bool)

(declare-fun e!967689 () Bool)

(declare-fun tp!432877 () Bool)

(assert (=> b!1513171 (= e!967689 tp!432877)))

(declare-fun b!1513172 () Bool)

(declare-fun tp!432880 () Bool)

(assert (=> b!1513172 (= e!967688 tp!432880)))

(declare-fun tp!432878 () Bool)

(declare-fun b!1513173 () Bool)

(assert (=> b!1513173 (= e!967687 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))) e!967689 tp_is_empty!7015 setRes!9126 tp!432878))))

(declare-fun condSetEmpty!9126 () Bool)

(assert (=> b!1513173 (= condSetEmpty!9126 (= (_2!8490 (h!21476 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513173 b!1513171))

(assert (= (and b!1513173 condSetEmpty!9126) setIsEmpty!9126))

(assert (= (and b!1513173 (not condSetEmpty!9126)) setNonEmpty!9126))

(assert (= setNonEmpty!9126 b!1513172))

(assert (= (and b!1512983 ((_ is Cons!16075) (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))) b!1513173))

(declare-fun m!1777342 () Bool)

(assert (=> setNonEmpty!9126 m!1777342))

(declare-fun m!1777344 () Bool)

(assert (=> b!1513173 m!1777344))

(declare-fun e!967690 () Bool)

(assert (=> b!1512983 (= tp!432783 e!967690)))

(declare-fun setIsEmpty!9127 () Bool)

(declare-fun setRes!9127 () Bool)

(assert (=> setIsEmpty!9127 setRes!9127))

(declare-fun setElem!9127 () Context!1354)

(declare-fun tp!432883 () Bool)

(declare-fun setNonEmpty!9127 () Bool)

(declare-fun e!967691 () Bool)

(assert (=> setNonEmpty!9127 (= setRes!9127 (and tp!432883 (inv!21315 setElem!9127) e!967691))))

(declare-fun setRest!9127 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9127 (= (_2!8490 (h!21476 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9127 true) setRest!9127))))

(declare-fun b!1513174 () Bool)

(declare-fun e!967692 () Bool)

(declare-fun tp!432881 () Bool)

(assert (=> b!1513174 (= e!967692 tp!432881)))

(declare-fun b!1513175 () Bool)

(declare-fun tp!432884 () Bool)

(assert (=> b!1513175 (= e!967691 tp!432884)))

(declare-fun tp!432882 () Bool)

(declare-fun b!1513176 () Bool)

(assert (=> b!1513176 (= e!967690 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))) e!967692 tp_is_empty!7015 setRes!9127 tp!432882))))

(declare-fun condSetEmpty!9127 () Bool)

(assert (=> b!1513176 (= condSetEmpty!9127 (= (_2!8490 (h!21476 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513176 b!1513174))

(assert (= (and b!1513176 condSetEmpty!9127) setIsEmpty!9127))

(assert (= (and b!1513176 (not condSetEmpty!9127)) setNonEmpty!9127))

(assert (= setNonEmpty!9127 b!1513175))

(assert (= (and b!1512983 ((_ is Cons!16075) (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))) b!1513176))

(declare-fun m!1777346 () Bool)

(assert (=> setNonEmpty!9127 m!1777346))

(declare-fun m!1777348 () Bool)

(assert (=> b!1513176 m!1777348))

(declare-fun tp!432893 () Bool)

(declare-fun e!967698 () Bool)

(declare-fun tp!432891 () Bool)

(declare-fun b!1513185 () Bool)

(assert (=> b!1513185 (= e!967698 (and (inv!21303 (left!13363 (c!247983 input!1102))) tp!432891 (inv!21303 (right!13693 (c!247983 input!1102))) tp!432893))))

(declare-fun b!1513187 () Bool)

(declare-fun e!967697 () Bool)

(declare-fun tp!432892 () Bool)

(assert (=> b!1513187 (= e!967697 tp!432892)))

(declare-fun b!1513186 () Bool)

(declare-fun inv!21316 (IArray!10883) Bool)

(assert (=> b!1513186 (= e!967698 (and (inv!21316 (xs!8220 (c!247983 input!1102))) e!967697))))

(assert (=> b!1513009 (= tp!432784 (and (inv!21303 (c!247983 input!1102)) e!967698))))

(assert (= (and b!1513009 ((_ is Node!5439) (c!247983 input!1102))) b!1513185))

(assert (= b!1513186 b!1513187))

(assert (= (and b!1513009 ((_ is Leaf!8064) (c!247983 input!1102))) b!1513186))

(declare-fun m!1777350 () Bool)

(assert (=> b!1513185 m!1777350))

(declare-fun m!1777352 () Bool)

(assert (=> b!1513185 m!1777352))

(declare-fun m!1777354 () Bool)

(assert (=> b!1513186 m!1777354))

(assert (=> b!1513009 m!1777150))

(declare-fun e!967699 () Bool)

(assert (=> b!1512974 (= tp!432778 e!967699)))

(declare-fun setIsEmpty!9128 () Bool)

(declare-fun setRes!9128 () Bool)

(assert (=> setIsEmpty!9128 setRes!9128))

(declare-fun e!967700 () Bool)

(declare-fun setElem!9128 () Context!1354)

(declare-fun setNonEmpty!9128 () Bool)

(declare-fun tp!432896 () Bool)

(assert (=> setNonEmpty!9128 (= setRes!9128 (and tp!432896 (inv!21315 setElem!9128) e!967700))))

(declare-fun setRest!9128 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9128 (= (_2!8490 (h!21476 mapDefault!7002)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9128 true) setRest!9128))))

(declare-fun b!1513188 () Bool)

(declare-fun e!967701 () Bool)

(declare-fun tp!432894 () Bool)

(assert (=> b!1513188 (= e!967701 tp!432894)))

(declare-fun b!1513189 () Bool)

(declare-fun tp!432897 () Bool)

(assert (=> b!1513189 (= e!967700 tp!432897)))

(declare-fun b!1513190 () Bool)

(declare-fun tp!432895 () Bool)

(assert (=> b!1513190 (= e!967699 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 mapDefault!7002)))) e!967701 tp_is_empty!7015 setRes!9128 tp!432895))))

(declare-fun condSetEmpty!9128 () Bool)

(assert (=> b!1513190 (= condSetEmpty!9128 (= (_2!8490 (h!21476 mapDefault!7002)) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513190 b!1513188))

(assert (= (and b!1513190 condSetEmpty!9128) setIsEmpty!9128))

(assert (= (and b!1513190 (not condSetEmpty!9128)) setNonEmpty!9128))

(assert (= setNonEmpty!9128 b!1513189))

(assert (= (and b!1512974 ((_ is Cons!16075) mapDefault!7002)) b!1513190))

(declare-fun m!1777356 () Bool)

(assert (=> setNonEmpty!9128 m!1777356))

(declare-fun m!1777358 () Bool)

(assert (=> b!1513190 m!1777358))

(declare-fun b!1513202 () Bool)

(declare-fun e!967704 () Bool)

(declare-fun tp!432912 () Bool)

(declare-fun tp!432910 () Bool)

(assert (=> b!1513202 (= e!967704 (and tp!432912 tp!432910))))

(declare-fun b!1513203 () Bool)

(declare-fun tp!432908 () Bool)

(assert (=> b!1513203 (= e!967704 tp!432908)))

(assert (=> b!1512992 (= tp!432777 e!967704)))

(declare-fun b!1513201 () Bool)

(assert (=> b!1513201 (= e!967704 tp_is_empty!7015)))

(declare-fun b!1513204 () Bool)

(declare-fun tp!432911 () Bool)

(declare-fun tp!432909 () Bool)

(assert (=> b!1513204 (= e!967704 (and tp!432911 tp!432909))))

(assert (= (and b!1512992 ((_ is ElementMatch!4159) (regex!2844 (h!21473 rules!1640)))) b!1513201))

(assert (= (and b!1512992 ((_ is Concat!7094) (regex!2844 (h!21473 rules!1640)))) b!1513202))

(assert (= (and b!1512992 ((_ is Star!4159) (regex!2844 (h!21473 rules!1640)))) b!1513203))

(assert (= (and b!1512992 ((_ is Union!4159) (regex!2844 (h!21473 rules!1640)))) b!1513204))

(declare-fun tp!432915 () Bool)

(declare-fun e!967706 () Bool)

(declare-fun tp!432913 () Bool)

(declare-fun b!1513205 () Bool)

(assert (=> b!1513205 (= e!967706 (and (inv!21303 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) tp!432913 (inv!21303 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) tp!432915))))

(declare-fun b!1513207 () Bool)

(declare-fun e!967705 () Bool)

(declare-fun tp!432914 () Bool)

(assert (=> b!1513207 (= e!967705 tp!432914)))

(declare-fun b!1513206 () Bool)

(assert (=> b!1513206 (= e!967706 (and (inv!21316 (xs!8220 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) e!967705))))

(assert (=> b!1512982 (= tp!432781 (and (inv!21303 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) e!967706))))

(assert (= (and b!1512982 ((_ is Node!5439) (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) b!1513205))

(assert (= b!1513206 b!1513207))

(assert (= (and b!1512982 ((_ is Leaf!8064) (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) b!1513206))

(declare-fun m!1777360 () Bool)

(assert (=> b!1513205 m!1777360))

(declare-fun m!1777362 () Bool)

(assert (=> b!1513205 m!1777362))

(declare-fun m!1777364 () Bool)

(assert (=> b!1513206 m!1777364))

(assert (=> b!1512982 m!1777146))

(declare-fun b!1513216 () Bool)

(declare-fun e!967714 () Bool)

(declare-fun tp!432927 () Bool)

(assert (=> b!1513216 (= e!967714 tp!432927)))

(declare-fun setIsEmpty!9131 () Bool)

(declare-fun setRes!9131 () Bool)

(assert (=> setIsEmpty!9131 setRes!9131))

(declare-fun e!967713 () Bool)

(assert (=> b!1512990 (= tp!432793 e!967713)))

(declare-fun setElem!9131 () Context!1354)

(declare-fun setNonEmpty!9131 () Bool)

(declare-fun tp!432930 () Bool)

(assert (=> setNonEmpty!9131 (= setRes!9131 (and tp!432930 (inv!21315 setElem!9131) e!967714))))

(declare-fun setRest!9131 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9131 (= (_2!8492 (h!21477 mapDefault!7004)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9131 true) setRest!9131))))

(declare-fun tp!432926 () Bool)

(declare-fun tp!432929 () Bool)

(declare-fun e!967715 () Bool)

(declare-fun b!1513217 () Bool)

(assert (=> b!1513217 (= e!967713 (and tp!432926 (inv!21315 (_2!8491 (_1!8492 (h!21477 mapDefault!7004)))) e!967715 tp_is_empty!7015 setRes!9131 tp!432929))))

(declare-fun condSetEmpty!9131 () Bool)

(assert (=> b!1513217 (= condSetEmpty!9131 (= (_2!8492 (h!21477 mapDefault!7004)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513218 () Bool)

(declare-fun tp!432928 () Bool)

(assert (=> b!1513218 (= e!967715 tp!432928)))

(assert (= b!1513217 b!1513218))

(assert (= (and b!1513217 condSetEmpty!9131) setIsEmpty!9131))

(assert (= (and b!1513217 (not condSetEmpty!9131)) setNonEmpty!9131))

(assert (= setNonEmpty!9131 b!1513216))

(assert (= (and b!1512990 ((_ is Cons!16076) mapDefault!7004)) b!1513217))

(declare-fun m!1777366 () Bool)

(assert (=> setNonEmpty!9131 m!1777366))

(declare-fun m!1777368 () Bool)

(assert (=> b!1513217 m!1777368))

(declare-fun b!1513219 () Bool)

(declare-fun tp!432933 () Bool)

(declare-fun e!967717 () Bool)

(declare-fun tp!432931 () Bool)

(assert (=> b!1513219 (= e!967717 (and (inv!21303 (left!13363 (c!247983 totalInput!458))) tp!432931 (inv!21303 (right!13693 (c!247983 totalInput!458))) tp!432933))))

(declare-fun b!1513221 () Bool)

(declare-fun e!967716 () Bool)

(declare-fun tp!432932 () Bool)

(assert (=> b!1513221 (= e!967716 tp!432932)))

(declare-fun b!1513220 () Bool)

(assert (=> b!1513220 (= e!967717 (and (inv!21316 (xs!8220 (c!247983 totalInput!458))) e!967716))))

(assert (=> b!1513004 (= tp!432786 (and (inv!21303 (c!247983 totalInput!458)) e!967717))))

(assert (= (and b!1513004 ((_ is Node!5439) (c!247983 totalInput!458))) b!1513219))

(assert (= b!1513220 b!1513221))

(assert (= (and b!1513004 ((_ is Leaf!8064) (c!247983 totalInput!458))) b!1513220))

(declare-fun m!1777370 () Bool)

(assert (=> b!1513219 m!1777370))

(declare-fun m!1777372 () Bool)

(assert (=> b!1513219 m!1777372))

(declare-fun m!1777374 () Bool)

(assert (=> b!1513220 m!1777374))

(assert (=> b!1513004 m!1777076))

(declare-fun b!1513236 () Bool)

(declare-fun e!967734 () Bool)

(declare-fun tp!432965 () Bool)

(assert (=> b!1513236 (= e!967734 tp!432965)))

(declare-fun e!967731 () Bool)

(declare-fun setNonEmpty!9136 () Bool)

(declare-fun tp!432962 () Bool)

(declare-fun setRes!9136 () Bool)

(declare-fun setElem!9136 () Context!1354)

(assert (=> setNonEmpty!9136 (= setRes!9136 (and tp!432962 (inv!21315 setElem!9136) e!967731))))

(declare-fun mapValue!7013 () List!16144)

(declare-fun setRest!9136 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9136 (= (_2!8492 (h!21477 mapValue!7013)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9136 true) setRest!9136))))

(declare-fun mapNonEmpty!7013 () Bool)

(declare-fun mapRes!7013 () Bool)

(declare-fun tp!432961 () Bool)

(declare-fun e!967732 () Bool)

(assert (=> mapNonEmpty!7013 (= mapRes!7013 (and tp!432961 e!967732))))

(declare-fun mapKey!7013 () (_ BitVec 32))

(declare-fun mapRest!7013 () (Array (_ BitVec 32) List!16144))

(assert (=> mapNonEmpty!7013 (= mapRest!7004 (store mapRest!7013 mapKey!7013 mapValue!7013))))

(declare-fun condMapEmpty!7013 () Bool)

(declare-fun mapDefault!7013 () List!16144)

(assert (=> mapNonEmpty!7002 (= condMapEmpty!7013 (= mapRest!7004 ((as const (Array (_ BitVec 32) List!16144)) mapDefault!7013)))))

(declare-fun e!967733 () Bool)

(assert (=> mapNonEmpty!7002 (= tp!432794 (and e!967733 mapRes!7013))))

(declare-fun setRes!9137 () Bool)

(declare-fun e!967730 () Bool)

(declare-fun tp!432966 () Bool)

(declare-fun b!1513237 () Bool)

(declare-fun tp!432963 () Bool)

(assert (=> b!1513237 (= e!967733 (and tp!432963 (inv!21315 (_2!8491 (_1!8492 (h!21477 mapDefault!7013)))) e!967730 tp_is_empty!7015 setRes!9137 tp!432966))))

(declare-fun condSetEmpty!9137 () Bool)

(assert (=> b!1513237 (= condSetEmpty!9137 (= (_2!8492 (h!21477 mapDefault!7013)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513238 () Bool)

(declare-fun tp!432964 () Bool)

(assert (=> b!1513238 (= e!967730 tp!432964)))

(declare-fun setIsEmpty!9136 () Bool)

(assert (=> setIsEmpty!9136 setRes!9136))

(declare-fun b!1513239 () Bool)

(declare-fun e!967735 () Bool)

(declare-fun tp!432957 () Bool)

(assert (=> b!1513239 (= e!967735 tp!432957)))

(declare-fun mapIsEmpty!7013 () Bool)

(assert (=> mapIsEmpty!7013 mapRes!7013))

(declare-fun setIsEmpty!9137 () Bool)

(assert (=> setIsEmpty!9137 setRes!9137))

(declare-fun tp!432960 () Bool)

(declare-fun b!1513240 () Bool)

(declare-fun tp!432958 () Bool)

(assert (=> b!1513240 (= e!967732 (and tp!432958 (inv!21315 (_2!8491 (_1!8492 (h!21477 mapValue!7013)))) e!967735 tp_is_empty!7015 setRes!9136 tp!432960))))

(declare-fun condSetEmpty!9136 () Bool)

(assert (=> b!1513240 (= condSetEmpty!9136 (= (_2!8492 (h!21477 mapValue!7013)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513241 () Bool)

(declare-fun tp!432956 () Bool)

(assert (=> b!1513241 (= e!967731 tp!432956)))

(declare-fun setElem!9137 () Context!1354)

(declare-fun tp!432959 () Bool)

(declare-fun setNonEmpty!9137 () Bool)

(assert (=> setNonEmpty!9137 (= setRes!9137 (and tp!432959 (inv!21315 setElem!9137) e!967734))))

(declare-fun setRest!9137 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9137 (= (_2!8492 (h!21477 mapDefault!7013)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9137 true) setRest!9137))))

(assert (= (and mapNonEmpty!7002 condMapEmpty!7013) mapIsEmpty!7013))

(assert (= (and mapNonEmpty!7002 (not condMapEmpty!7013)) mapNonEmpty!7013))

(assert (= b!1513240 b!1513239))

(assert (= (and b!1513240 condSetEmpty!9136) setIsEmpty!9136))

(assert (= (and b!1513240 (not condSetEmpty!9136)) setNonEmpty!9136))

(assert (= setNonEmpty!9136 b!1513241))

(assert (= (and mapNonEmpty!7013 ((_ is Cons!16076) mapValue!7013)) b!1513240))

(assert (= b!1513237 b!1513238))

(assert (= (and b!1513237 condSetEmpty!9137) setIsEmpty!9137))

(assert (= (and b!1513237 (not condSetEmpty!9137)) setNonEmpty!9137))

(assert (= setNonEmpty!9137 b!1513236))

(assert (= (and mapNonEmpty!7002 ((_ is Cons!16076) mapDefault!7013)) b!1513237))

(declare-fun m!1777376 () Bool)

(assert (=> mapNonEmpty!7013 m!1777376))

(declare-fun m!1777378 () Bool)

(assert (=> b!1513240 m!1777378))

(declare-fun m!1777380 () Bool)

(assert (=> setNonEmpty!9137 m!1777380))

(declare-fun m!1777382 () Bool)

(assert (=> b!1513237 m!1777382))

(declare-fun m!1777384 () Bool)

(assert (=> setNonEmpty!9136 m!1777384))

(declare-fun b!1513242 () Bool)

(declare-fun e!967737 () Bool)

(declare-fun tp!432968 () Bool)

(assert (=> b!1513242 (= e!967737 tp!432968)))

(declare-fun setIsEmpty!9138 () Bool)

(declare-fun setRes!9138 () Bool)

(assert (=> setIsEmpty!9138 setRes!9138))

(declare-fun e!967736 () Bool)

(assert (=> mapNonEmpty!7002 (= tp!432782 e!967736)))

(declare-fun setNonEmpty!9138 () Bool)

(declare-fun setElem!9138 () Context!1354)

(declare-fun tp!432971 () Bool)

(assert (=> setNonEmpty!9138 (= setRes!9138 (and tp!432971 (inv!21315 setElem!9138) e!967737))))

(declare-fun setRest!9138 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9138 (= (_2!8492 (h!21477 mapValue!7002)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9138 true) setRest!9138))))

(declare-fun b!1513243 () Bool)

(declare-fun tp!432970 () Bool)

(declare-fun e!967738 () Bool)

(declare-fun tp!432967 () Bool)

(assert (=> b!1513243 (= e!967736 (and tp!432967 (inv!21315 (_2!8491 (_1!8492 (h!21477 mapValue!7002)))) e!967738 tp_is_empty!7015 setRes!9138 tp!432970))))

(declare-fun condSetEmpty!9138 () Bool)

(assert (=> b!1513243 (= condSetEmpty!9138 (= (_2!8492 (h!21477 mapValue!7002)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513244 () Bool)

(declare-fun tp!432969 () Bool)

(assert (=> b!1513244 (= e!967738 tp!432969)))

(assert (= b!1513243 b!1513244))

(assert (= (and b!1513243 condSetEmpty!9138) setIsEmpty!9138))

(assert (= (and b!1513243 (not condSetEmpty!9138)) setNonEmpty!9138))

(assert (= setNonEmpty!9138 b!1513242))

(assert (= (and mapNonEmpty!7002 ((_ is Cons!16076) mapValue!7002)) b!1513243))

(declare-fun m!1777386 () Bool)

(assert (=> setNonEmpty!9138 m!1777386))

(declare-fun m!1777388 () Bool)

(assert (=> b!1513243 m!1777388))

(declare-fun setNonEmpty!9139 () Bool)

(declare-fun setRes!9139 () Bool)

(declare-fun e!967739 () Bool)

(declare-fun setElem!9139 () Context!1354)

(declare-fun tp!432973 () Bool)

(assert (=> setNonEmpty!9139 (= setRes!9139 (and tp!432973 (inv!21315 setElem!9139) e!967739))))

(declare-fun setRest!9139 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9139 (= (_1!8487 (_1!8488 (h!21475 mapDefault!7003))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9139 true) setRest!9139))))

(declare-fun b!1513246 () Bool)

(declare-fun tp!432972 () Bool)

(assert (=> b!1513246 (= e!967739 tp!432972)))

(declare-fun setIsEmpty!9139 () Bool)

(assert (=> setIsEmpty!9139 setRes!9139))

(declare-fun e!967740 () Bool)

(assert (=> b!1513012 (= tp!432779 e!967740)))

(declare-fun b!1513245 () Bool)

(declare-fun tp!432974 () Bool)

(assert (=> b!1513245 (= e!967740 (and setRes!9139 tp!432974))))

(declare-fun condSetEmpty!9139 () Bool)

(assert (=> b!1513245 (= condSetEmpty!9139 (= (_1!8487 (_1!8488 (h!21475 mapDefault!7003))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513245 condSetEmpty!9139) setIsEmpty!9139))

(assert (= (and b!1513245 (not condSetEmpty!9139)) setNonEmpty!9139))

(assert (= setNonEmpty!9139 b!1513246))

(assert (= (and b!1513012 ((_ is Cons!16074) mapDefault!7003)) b!1513245))

(declare-fun m!1777390 () Bool)

(assert (=> setNonEmpty!9139 m!1777390))

(declare-fun tp!432983 () Bool)

(declare-fun e!967746 () Bool)

(declare-fun tp!432982 () Bool)

(declare-fun b!1513255 () Bool)

(assert (=> b!1513255 (= e!967746 (and (inv!21310 (left!13364 (c!247985 acc!392))) tp!432982 (inv!21310 (right!13694 (c!247985 acc!392))) tp!432983))))

(declare-fun b!1513257 () Bool)

(declare-fun e!967745 () Bool)

(declare-fun tp!432981 () Bool)

(assert (=> b!1513257 (= e!967745 tp!432981)))

(declare-fun b!1513256 () Bool)

(declare-fun inv!21317 (IArray!10885) Bool)

(assert (=> b!1513256 (= e!967746 (and (inv!21317 (xs!8221 (c!247985 acc!392))) e!967745))))

(assert (=> b!1512993 (= tp!432791 (and (inv!21310 (c!247985 acc!392)) e!967746))))

(assert (= (and b!1512993 ((_ is Node!5440) (c!247985 acc!392))) b!1513255))

(assert (= b!1513256 b!1513257))

(assert (= (and b!1512993 ((_ is Leaf!8065) (c!247985 acc!392))) b!1513256))

(declare-fun m!1777392 () Bool)

(assert (=> b!1513255 m!1777392))

(declare-fun m!1777394 () Bool)

(assert (=> b!1513255 m!1777394))

(declare-fun m!1777396 () Bool)

(assert (=> b!1513256 m!1777396))

(assert (=> b!1512993 m!1777066))

(declare-fun b!1513258 () Bool)

(declare-fun e!967748 () Bool)

(declare-fun tp!432985 () Bool)

(assert (=> b!1513258 (= e!967748 tp!432985)))

(declare-fun setIsEmpty!9140 () Bool)

(declare-fun setRes!9140 () Bool)

(assert (=> setIsEmpty!9140 setRes!9140))

(declare-fun e!967747 () Bool)

(assert (=> b!1512994 (= tp!432788 e!967747)))

(declare-fun tp!432988 () Bool)

(declare-fun setNonEmpty!9140 () Bool)

(declare-fun setElem!9140 () Context!1354)

(assert (=> setNonEmpty!9140 (= setRes!9140 (and tp!432988 (inv!21315 setElem!9140) e!967748))))

(declare-fun setRest!9140 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9140 (= (_2!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9140 true) setRest!9140))))

(declare-fun e!967749 () Bool)

(declare-fun b!1513259 () Bool)

(declare-fun tp!432984 () Bool)

(declare-fun tp!432987 () Bool)

(assert (=> b!1513259 (= e!967747 (and tp!432984 (inv!21315 (_2!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))) e!967749 tp_is_empty!7015 setRes!9140 tp!432987))))

(declare-fun condSetEmpty!9140 () Bool)

(assert (=> b!1513259 (= condSetEmpty!9140 (= (_2!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513260 () Bool)

(declare-fun tp!432986 () Bool)

(assert (=> b!1513260 (= e!967749 tp!432986)))

(assert (= b!1513259 b!1513260))

(assert (= (and b!1513259 condSetEmpty!9140) setIsEmpty!9140))

(assert (= (and b!1513259 (not condSetEmpty!9140)) setNonEmpty!9140))

(assert (= setNonEmpty!9140 b!1513258))

(assert (= (and b!1512994 ((_ is Cons!16076) (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))) b!1513259))

(declare-fun m!1777398 () Bool)

(assert (=> setNonEmpty!9140 m!1777398))

(declare-fun m!1777400 () Bool)

(assert (=> b!1513259 m!1777400))

(declare-fun b!1513261 () Bool)

(declare-fun e!967751 () Bool)

(declare-fun tp!432990 () Bool)

(assert (=> b!1513261 (= e!967751 tp!432990)))

(declare-fun setIsEmpty!9141 () Bool)

(declare-fun setRes!9141 () Bool)

(assert (=> setIsEmpty!9141 setRes!9141))

(declare-fun e!967750 () Bool)

(assert (=> b!1512994 (= tp!432798 e!967750)))

(declare-fun setElem!9141 () Context!1354)

(declare-fun tp!432993 () Bool)

(declare-fun setNonEmpty!9141 () Bool)

(assert (=> setNonEmpty!9141 (= setRes!9141 (and tp!432993 (inv!21315 setElem!9141) e!967751))))

(declare-fun setRest!9141 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9141 (= (_2!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9141 true) setRest!9141))))

(declare-fun b!1513262 () Bool)

(declare-fun tp!432989 () Bool)

(declare-fun tp!432992 () Bool)

(declare-fun e!967752 () Bool)

(assert (=> b!1513262 (= e!967750 (and tp!432989 (inv!21315 (_2!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))) e!967752 tp_is_empty!7015 setRes!9141 tp!432992))))

(declare-fun condSetEmpty!9141 () Bool)

(assert (=> b!1513262 (= condSetEmpty!9141 (= (_2!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513263 () Bool)

(declare-fun tp!432991 () Bool)

(assert (=> b!1513263 (= e!967752 tp!432991)))

(assert (= b!1513262 b!1513263))

(assert (= (and b!1513262 condSetEmpty!9141) setIsEmpty!9141))

(assert (= (and b!1513262 (not condSetEmpty!9141)) setNonEmpty!9141))

(assert (= setNonEmpty!9141 b!1513261))

(assert (= (and b!1512994 ((_ is Cons!16076) (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))) b!1513262))

(declare-fun m!1777402 () Bool)

(assert (=> setNonEmpty!9141 m!1777402))

(declare-fun m!1777404 () Bool)

(assert (=> b!1513262 m!1777404))

(declare-fun e!967754 () Bool)

(declare-fun tp!432996 () Bool)

(declare-fun tp!432994 () Bool)

(declare-fun b!1513264 () Bool)

(assert (=> b!1513264 (= e!967754 (and (inv!21303 (left!13363 (c!247983 treated!70))) tp!432994 (inv!21303 (right!13693 (c!247983 treated!70))) tp!432996))))

(declare-fun b!1513266 () Bool)

(declare-fun e!967753 () Bool)

(declare-fun tp!432995 () Bool)

(assert (=> b!1513266 (= e!967753 tp!432995)))

(declare-fun b!1513265 () Bool)

(assert (=> b!1513265 (= e!967754 (and (inv!21316 (xs!8220 (c!247983 treated!70))) e!967753))))

(assert (=> b!1513003 (= tp!432775 (and (inv!21303 (c!247983 treated!70)) e!967754))))

(assert (= (and b!1513003 ((_ is Node!5439) (c!247983 treated!70))) b!1513264))

(assert (= b!1513265 b!1513266))

(assert (= (and b!1513003 ((_ is Leaf!8064) (c!247983 treated!70))) b!1513265))

(declare-fun m!1777406 () Bool)

(assert (=> b!1513264 m!1777406))

(declare-fun m!1777408 () Bool)

(assert (=> b!1513264 m!1777408))

(declare-fun m!1777410 () Bool)

(assert (=> b!1513265 m!1777410))

(assert (=> b!1513003 m!1777078))

(declare-fun b!1513277 () Bool)

(declare-fun b_free!39263 () Bool)

(declare-fun b_next!39967 () Bool)

(assert (=> b!1513277 (= b_free!39263 (not b_next!39967))))

(declare-fun tp!433006 () Bool)

(declare-fun b_and!105281 () Bool)

(assert (=> b!1513277 (= tp!433006 b_and!105281)))

(declare-fun b_free!39265 () Bool)

(declare-fun b_next!39969 () Bool)

(assert (=> b!1513277 (= b_free!39265 (not b_next!39969))))

(declare-fun tp!433008 () Bool)

(declare-fun b_and!105283 () Bool)

(assert (=> b!1513277 (= tp!433008 b_and!105283)))

(declare-fun e!967766 () Bool)

(assert (=> b!1513277 (= e!967766 (and tp!433006 tp!433008))))

(declare-fun e!967763 () Bool)

(declare-fun b!1513276 () Bool)

(declare-fun tp!433005 () Bool)

(assert (=> b!1513276 (= e!967763 (and tp!433005 (inv!21301 (tag!3108 (h!21473 (t!139418 rules!1640)))) (inv!21309 (transformation!2844 (h!21473 (t!139418 rules!1640)))) e!967766))))

(declare-fun b!1513275 () Bool)

(declare-fun e!967764 () Bool)

(declare-fun tp!433007 () Bool)

(assert (=> b!1513275 (= e!967764 (and e!967763 tp!433007))))

(assert (=> b!1512976 (= tp!432796 e!967764)))

(assert (= b!1513276 b!1513277))

(assert (= b!1513275 b!1513276))

(assert (= (and b!1512976 ((_ is Cons!16072) (t!139418 rules!1640))) b!1513275))

(declare-fun m!1777412 () Bool)

(assert (=> b!1513276 m!1777412))

(declare-fun m!1777414 () Bool)

(assert (=> b!1513276 m!1777414))

(check-sat (not b!1513084) (not d!448031) (not b!1513262) (not b_next!39959) (not b!1513110) (not setNonEmpty!9126) (not b!1513051) (not d!447965) (not b!1513237) (not setNonEmpty!9128) (not b!1513135) (not setNonEmpty!9122) (not b!1513085) (not d!447985) (not b_next!39965) (not b!1513218) (not b_next!39969) (not b!1513185) (not b!1513276) (not b!1513186) (not b!1513074) (not b!1513059) b_and!105273 (not b!1513071) (not b!1513090) (not d!448013) (not b!1513137) (not b!1513168) (not b!1513246) (not b!1513158) (not d!448021) (not b!1513217) (not b!1513030) (not b!1513028) (not b!1513065) (not d!447997) (not d!447979) (not b_next!39953) (not b!1513039) (not b!1513031) (not b!1513064) (not b!1513257) (not b!1513126) (not b_next!39951) (not d!447961) (not b!1513138) (not b!1513004) (not mapNonEmpty!7010) (not b!1513169) b_and!105269 (not d!447981) (not b!1513258) (not b!1513072) b_and!105267 (not b!1513107) (not d!447963) (not b!1513173) (not d!448015) (not setNonEmpty!9121) (not b!1513264) (not b!1512993) (not b!1513104) (not b!1513207) (not b!1513242) (not b!1513240) (not b!1513156) (not b!1513154) (not d!447993) (not b!1513102) (not b!1513188) (not b!1513003) (not d!448039) (not b!1513139) (not b!1513157) (not setNonEmpty!9140) (not setNonEmpty!9125) (not b!1513261) (not b!1513236) (not d!448007) (not mapNonEmpty!7007) (not b!1513134) (not b!1513202) (not setNonEmpty!9115) (not b!1513221) (not setNonEmpty!9137) (not b!1513204) (not b!1513203) (not mapNonEmpty!7013) (not b!1513036) (not setNonEmpty!9138) (not b!1513259) (not b!1513219) (not b!1513176) b_and!105283 (not b!1513174) (not b!1513052) (not b!1513127) (not d!448005) (not b!1513265) (not b!1513035) (not b_next!39955) b_and!105281 (not b!1513175) (not b!1513092) (not setNonEmpty!9141) (not d!448009) b_and!105279 (not b!1513067) (not b!1513256) (not b!1513205) (not d!447967) (not setNonEmpty!9110) (not b_next!39967) (not b!1513275) (not b!1513113) (not setNonEmpty!9131) (not b!1513049) (not b!1513032) (not b!1513029) (not b_next!39963) (not b!1513206) (not b!1513038) (not b!1513050) (not b!1513190) (not b!1513159) (not b!1513263) (not setNonEmpty!9116) b_and!105265 b_and!105271 (not b!1513136) (not d!448029) (not b!1513255) (not setNonEmpty!9139) (not b!1513260) (not d!447989) (not b!1513027) (not b!1513216) (not setNonEmpty!9136) (not b!1513099) (not b!1513124) (not b!1513238) tp_is_empty!7015 (not b!1513171) (not b_next!39961) b_and!105275 (not b!1513089) (not b!1512982) (not d!448037) (not b!1513245) (not b!1513034) (not d!447995) (not b!1513244) (not b!1513220) (not b!1513172) b_and!105277 (not b_next!39957) (not d!448001) (not setNonEmpty!9111) (not b!1513241) (not b!1513125) (not b!1513189) (not b!1513170) (not d!447977) (not b!1513155) (not b!1513239) (not b!1513009) (not setNonEmpty!9114) (not d!447991) (not b!1513037) (not b!1513061) (not b!1513243) (not b!1513066) (not b!1513101) (not d!448003) (not setNonEmpty!9127) (not b!1513187) (not b!1513063) (not d!447969) (not b!1513062) (not b!1513266))
(check-sat (not b_next!39959) (not b_next!39965) (not b_next!39953) (not b_next!39951) b_and!105283 b_and!105279 (not b_next!39967) (not b_next!39963) (not b_next!39961) (not b_next!39957) b_and!105273 (not b_next!39969) b_and!105269 b_and!105267 (not b_next!39955) b_and!105281 b_and!105265 b_and!105271 b_and!105275 b_and!105277)
(get-model)

(declare-fun d!448043 () Bool)

(declare-fun c!248012 () Bool)

(assert (=> d!448043 (= c!248012 ((_ is Node!5439) (left!13363 (c!247983 input!1102))))))

(declare-fun e!967767 () Bool)

(assert (=> d!448043 (= (inv!21303 (left!13363 (c!247983 input!1102))) e!967767)))

(declare-fun b!1513278 () Bool)

(assert (=> b!1513278 (= e!967767 (inv!21311 (left!13363 (c!247983 input!1102))))))

(declare-fun b!1513279 () Bool)

(declare-fun e!967768 () Bool)

(assert (=> b!1513279 (= e!967767 e!967768)))

(declare-fun res!680831 () Bool)

(assert (=> b!1513279 (= res!680831 (not ((_ is Leaf!8064) (left!13363 (c!247983 input!1102)))))))

(assert (=> b!1513279 (=> res!680831 e!967768)))

(declare-fun b!1513280 () Bool)

(assert (=> b!1513280 (= e!967768 (inv!21312 (left!13363 (c!247983 input!1102))))))

(assert (= (and d!448043 c!248012) b!1513278))

(assert (= (and d!448043 (not c!248012)) b!1513279))

(assert (= (and b!1513279 (not res!680831)) b!1513280))

(declare-fun m!1777416 () Bool)

(assert (=> b!1513278 m!1777416))

(declare-fun m!1777418 () Bool)

(assert (=> b!1513280 m!1777418))

(assert (=> b!1513185 d!448043))

(declare-fun d!448045 () Bool)

(declare-fun c!248013 () Bool)

(assert (=> d!448045 (= c!248013 ((_ is Node!5439) (right!13693 (c!247983 input!1102))))))

(declare-fun e!967769 () Bool)

(assert (=> d!448045 (= (inv!21303 (right!13693 (c!247983 input!1102))) e!967769)))

(declare-fun b!1513281 () Bool)

(assert (=> b!1513281 (= e!967769 (inv!21311 (right!13693 (c!247983 input!1102))))))

(declare-fun b!1513282 () Bool)

(declare-fun e!967770 () Bool)

(assert (=> b!1513282 (= e!967769 e!967770)))

(declare-fun res!680832 () Bool)

(assert (=> b!1513282 (= res!680832 (not ((_ is Leaf!8064) (right!13693 (c!247983 input!1102)))))))

(assert (=> b!1513282 (=> res!680832 e!967770)))

(declare-fun b!1513283 () Bool)

(assert (=> b!1513283 (= e!967770 (inv!21312 (right!13693 (c!247983 input!1102))))))

(assert (= (and d!448045 c!248013) b!1513281))

(assert (= (and d!448045 (not c!248013)) b!1513282))

(assert (= (and b!1513282 (not res!680832)) b!1513283))

(declare-fun m!1777420 () Bool)

(assert (=> b!1513281 m!1777420))

(declare-fun m!1777422 () Bool)

(assert (=> b!1513283 m!1777422))

(assert (=> b!1513185 d!448045))

(declare-fun d!448047 () Bool)

(declare-fun lambda!64512 () Int)

(declare-fun forall!3856 (List!16141 Int) Bool)

(assert (=> d!448047 (= (inv!21315 (_2!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))) (forall!3856 (exprs!1177 (_2!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))) lambda!64512))))

(declare-fun bs!364455 () Bool)

(assert (= bs!364455 d!448047))

(declare-fun m!1777424 () Bool)

(assert (=> bs!364455 m!1777424))

(assert (=> b!1513262 d!448047))

(declare-fun bs!364456 () Bool)

(declare-fun d!448049 () Bool)

(assert (= bs!364456 (and d!448049 d!448047)))

(declare-fun lambda!64513 () Int)

(assert (=> bs!364456 (= lambda!64513 lambda!64512)))

(assert (=> d!448049 (= (inv!21315 (_2!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))) (forall!3856 (exprs!1177 (_2!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))) lambda!64513))))

(declare-fun bs!364457 () Bool)

(assert (= bs!364457 d!448049))

(declare-fun m!1777426 () Bool)

(assert (=> bs!364457 m!1777426))

(assert (=> b!1513259 d!448049))

(declare-fun b!1513292 () Bool)

(declare-fun e!967775 () List!16138)

(assert (=> b!1513292 (= e!967775 Nil!16070)))

(declare-fun d!448051 () Bool)

(declare-fun c!248018 () Bool)

(assert (=> d!448051 (= c!248018 ((_ is Empty!5439) (c!247983 treated!70)))))

(assert (=> d!448051 (= (list!6350 (c!247983 treated!70)) e!967775)))

(declare-fun b!1513295 () Bool)

(declare-fun e!967776 () List!16138)

(assert (=> b!1513295 (= e!967776 (++!4358 (list!6350 (left!13363 (c!247983 treated!70))) (list!6350 (right!13693 (c!247983 treated!70)))))))

(declare-fun b!1513293 () Bool)

(assert (=> b!1513293 (= e!967775 e!967776)))

(declare-fun c!248019 () Bool)

(assert (=> b!1513293 (= c!248019 ((_ is Leaf!8064) (c!247983 treated!70)))))

(declare-fun b!1513294 () Bool)

(declare-fun list!6351 (IArray!10883) List!16138)

(assert (=> b!1513294 (= e!967776 (list!6351 (xs!8220 (c!247983 treated!70))))))

(assert (= (and d!448051 c!248018) b!1513292))

(assert (= (and d!448051 (not c!248018)) b!1513293))

(assert (= (and b!1513293 c!248019) b!1513294))

(assert (= (and b!1513293 (not c!248019)) b!1513295))

(declare-fun m!1777428 () Bool)

(assert (=> b!1513295 m!1777428))

(declare-fun m!1777430 () Bool)

(assert (=> b!1513295 m!1777430))

(assert (=> b!1513295 m!1777428))

(assert (=> b!1513295 m!1777430))

(declare-fun m!1777432 () Bool)

(assert (=> b!1513295 m!1777432))

(declare-fun m!1777434 () Bool)

(assert (=> b!1513294 m!1777434))

(assert (=> d!448005 d!448051))

(declare-fun b!1513308 () Bool)

(declare-fun res!680845 () Bool)

(declare-fun e!967781 () Bool)

(assert (=> b!1513308 (=> (not res!680845) (not e!967781))))

(assert (=> b!1513308 (= res!680845 (isBalanced!1610 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(declare-fun d!448053 () Bool)

(declare-fun res!680847 () Bool)

(declare-fun e!967782 () Bool)

(assert (=> d!448053 (=> res!680847 e!967782)))

(assert (=> d!448053 (= res!680847 (not ((_ is Node!5439) (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(assert (=> d!448053 (= (isBalanced!1610 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) e!967782)))

(declare-fun b!1513309 () Bool)

(declare-fun res!680846 () Bool)

(assert (=> b!1513309 (=> (not res!680846) (not e!967781))))

(declare-fun height!812 (Conc!5439) Int)

(assert (=> b!1513309 (= res!680846 (<= (- (height!812 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) (height!812 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) 1))))

(declare-fun b!1513310 () Bool)

(declare-fun isEmpty!9932 (Conc!5439) Bool)

(assert (=> b!1513310 (= e!967781 (not (isEmpty!9932 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))))

(declare-fun b!1513311 () Bool)

(declare-fun res!680850 () Bool)

(assert (=> b!1513311 (=> (not res!680850) (not e!967781))))

(assert (=> b!1513311 (= res!680850 (not (isEmpty!9932 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))))

(declare-fun b!1513312 () Bool)

(declare-fun res!680848 () Bool)

(assert (=> b!1513312 (=> (not res!680848) (not e!967781))))

(assert (=> b!1513312 (= res!680848 (isBalanced!1610 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(declare-fun b!1513313 () Bool)

(assert (=> b!1513313 (= e!967782 e!967781)))

(declare-fun res!680849 () Bool)

(assert (=> b!1513313 (=> (not res!680849) (not e!967781))))

(assert (=> b!1513313 (= res!680849 (<= (- 1) (- (height!812 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) (height!812 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))))

(assert (= (and d!448053 (not res!680847)) b!1513313))

(assert (= (and b!1513313 res!680849) b!1513309))

(assert (= (and b!1513309 res!680846) b!1513312))

(assert (= (and b!1513312 res!680848) b!1513308))

(assert (= (and b!1513308 res!680845) b!1513311))

(assert (= (and b!1513311 res!680850) b!1513310))

(declare-fun m!1777436 () Bool)

(assert (=> b!1513313 m!1777436))

(declare-fun m!1777438 () Bool)

(assert (=> b!1513313 m!1777438))

(declare-fun m!1777440 () Bool)

(assert (=> b!1513310 m!1777440))

(declare-fun m!1777442 () Bool)

(assert (=> b!1513312 m!1777442))

(declare-fun m!1777444 () Bool)

(assert (=> b!1513311 m!1777444))

(assert (=> b!1513309 m!1777436))

(assert (=> b!1513309 m!1777438))

(declare-fun m!1777446 () Bool)

(assert (=> b!1513308 m!1777446))

(assert (=> d!448013 d!448053))

(declare-fun bs!364458 () Bool)

(declare-fun d!448055 () Bool)

(assert (= bs!364458 (and d!448055 d!448047)))

(declare-fun lambda!64514 () Int)

(assert (=> bs!364458 (= lambda!64514 lambda!64512)))

(declare-fun bs!364459 () Bool)

(assert (= bs!364459 (and d!448055 d!448049)))

(assert (=> bs!364459 (= lambda!64514 lambda!64513)))

(assert (=> d!448055 (= (inv!21315 setElem!9128) (forall!3856 (exprs!1177 setElem!9128) lambda!64514))))

(declare-fun bs!364460 () Bool)

(assert (= bs!364460 d!448055))

(declare-fun m!1777448 () Bool)

(assert (=> bs!364460 m!1777448))

(assert (=> setNonEmpty!9128 d!448055))

(declare-fun d!448057 () Bool)

(declare-fun res!680855 () Bool)

(declare-fun e!967785 () Bool)

(assert (=> d!448057 (=> (not res!680855) (not e!967785))))

(assert (=> d!448057 (= res!680855 (<= (size!13000 (list!6351 (xs!8220 (c!247983 input!1102)))) 512))))

(assert (=> d!448057 (= (inv!21312 (c!247983 input!1102)) e!967785)))

(declare-fun b!1513318 () Bool)

(declare-fun res!680856 () Bool)

(assert (=> b!1513318 (=> (not res!680856) (not e!967785))))

(assert (=> b!1513318 (= res!680856 (= (csize!11109 (c!247983 input!1102)) (size!13000 (list!6351 (xs!8220 (c!247983 input!1102))))))))

(declare-fun b!1513319 () Bool)

(assert (=> b!1513319 (= e!967785 (and (> (csize!11109 (c!247983 input!1102)) 0) (<= (csize!11109 (c!247983 input!1102)) 512)))))

(assert (= (and d!448057 res!680855) b!1513318))

(assert (= (and b!1513318 res!680856) b!1513319))

(declare-fun m!1777450 () Bool)

(assert (=> d!448057 m!1777450))

(assert (=> d!448057 m!1777450))

(declare-fun m!1777452 () Bool)

(assert (=> d!448057 m!1777452))

(assert (=> b!1513318 m!1777450))

(assert (=> b!1513318 m!1777450))

(assert (=> b!1513318 m!1777452))

(assert (=> b!1513061 d!448057))

(declare-fun bs!364461 () Bool)

(declare-fun d!448059 () Bool)

(assert (= bs!364461 (and d!448059 d!448047)))

(declare-fun lambda!64515 () Int)

(assert (=> bs!364461 (= lambda!64515 lambda!64512)))

(declare-fun bs!364462 () Bool)

(assert (= bs!364462 (and d!448059 d!448049)))

(assert (=> bs!364462 (= lambda!64515 lambda!64513)))

(declare-fun bs!364463 () Bool)

(assert (= bs!364463 (and d!448059 d!448055)))

(assert (=> bs!364463 (= lambda!64515 lambda!64514)))

(assert (=> d!448059 (= (inv!21315 setElem!9115) (forall!3856 (exprs!1177 setElem!9115) lambda!64515))))

(declare-fun bs!364464 () Bool)

(assert (= bs!364464 d!448059))

(declare-fun m!1777454 () Bool)

(assert (=> bs!364464 m!1777454))

(assert (=> setNonEmpty!9115 d!448059))

(declare-fun d!448061 () Bool)

(declare-fun res!680863 () Bool)

(declare-fun e!967788 () Bool)

(assert (=> d!448061 (=> (not res!680863) (not e!967788))))

(declare-fun size!13002 (Conc!5440) Int)

(assert (=> d!448061 (= res!680863 (= (csize!11110 (c!247985 acc!392)) (+ (size!13002 (left!13364 (c!247985 acc!392))) (size!13002 (right!13694 (c!247985 acc!392))))))))

(assert (=> d!448061 (= (inv!21313 (c!247985 acc!392)) e!967788)))

(declare-fun b!1513326 () Bool)

(declare-fun res!680864 () Bool)

(assert (=> b!1513326 (=> (not res!680864) (not e!967788))))

(assert (=> b!1513326 (= res!680864 (and (not (= (left!13364 (c!247985 acc!392)) Empty!5440)) (not (= (right!13694 (c!247985 acc!392)) Empty!5440))))))

(declare-fun b!1513327 () Bool)

(declare-fun res!680865 () Bool)

(assert (=> b!1513327 (=> (not res!680865) (not e!967788))))

(assert (=> b!1513327 (= res!680865 (= (cheight!5651 (c!247985 acc!392)) (+ (max!0 (height!811 (left!13364 (c!247985 acc!392))) (height!811 (right!13694 (c!247985 acc!392)))) 1)))))

(declare-fun b!1513328 () Bool)

(assert (=> b!1513328 (= e!967788 (<= 0 (cheight!5651 (c!247985 acc!392))))))

(assert (= (and d!448061 res!680863) b!1513326))

(assert (= (and b!1513326 res!680864) b!1513327))

(assert (= (and b!1513327 res!680865) b!1513328))

(declare-fun m!1777456 () Bool)

(assert (=> d!448061 m!1777456))

(declare-fun m!1777458 () Bool)

(assert (=> d!448061 m!1777458))

(declare-fun m!1777460 () Bool)

(assert (=> b!1513327 m!1777460))

(declare-fun m!1777462 () Bool)

(assert (=> b!1513327 m!1777462))

(assert (=> b!1513327 m!1777460))

(assert (=> b!1513327 m!1777462))

(declare-fun m!1777464 () Bool)

(assert (=> b!1513327 m!1777464))

(assert (=> b!1513099 d!448061))

(declare-fun bs!364465 () Bool)

(declare-fun d!448063 () Bool)

(assert (= bs!364465 (and d!448063 d!448047)))

(declare-fun lambda!64516 () Int)

(assert (=> bs!364465 (= lambda!64516 lambda!64512)))

(declare-fun bs!364466 () Bool)

(assert (= bs!364466 (and d!448063 d!448049)))

(assert (=> bs!364466 (= lambda!64516 lambda!64513)))

(declare-fun bs!364467 () Bool)

(assert (= bs!364467 (and d!448063 d!448055)))

(assert (=> bs!364467 (= lambda!64516 lambda!64514)))

(declare-fun bs!364468 () Bool)

(assert (= bs!364468 (and d!448063 d!448059)))

(assert (=> bs!364468 (= lambda!64516 lambda!64515)))

(assert (=> d!448063 (= (inv!21315 setElem!9139) (forall!3856 (exprs!1177 setElem!9139) lambda!64516))))

(declare-fun bs!364469 () Bool)

(assert (= bs!364469 d!448063))

(declare-fun m!1777466 () Bool)

(assert (=> bs!364469 m!1777466))

(assert (=> setNonEmpty!9139 d!448063))

(declare-fun d!448065 () Bool)

(declare-fun lt!526180 () Int)

(assert (=> d!448065 (= lt!526180 (size!13000 (list!6348 (_2!8486 lt!526163))))))

(assert (=> d!448065 (= lt!526180 (size!13001 (c!247983 (_2!8486 lt!526163))))))

(assert (=> d!448065 (= (size!12998 (_2!8486 lt!526163)) lt!526180)))

(declare-fun bs!364470 () Bool)

(assert (= bs!364470 d!448065))

(assert (=> bs!364470 m!1777162))

(assert (=> bs!364470 m!1777162))

(declare-fun m!1777468 () Bool)

(assert (=> bs!364470 m!1777468))

(declare-fun m!1777470 () Bool)

(assert (=> bs!364470 m!1777470))

(assert (=> b!1513028 d!448065))

(assert (=> b!1513028 d!447989))

(declare-fun d!448067 () Bool)

(assert (=> d!448067 (= (list!6348 (_2!8486 lt!526166)) (list!6350 (c!247983 (_2!8486 lt!526166))))))

(declare-fun bs!364471 () Bool)

(assert (= bs!364471 d!448067))

(declare-fun m!1777472 () Bool)

(assert (=> bs!364471 m!1777472))

(assert (=> b!1513038 d!448067))

(assert (=> b!1513038 d!448001))

(declare-fun d!448069 () Bool)

(declare-fun lt!526183 () Int)

(declare-fun size!13003 (List!16139) Int)

(assert (=> d!448069 (= lt!526183 (size!13003 (list!6347 (_1!8486 lt!526172))))))

(assert (=> d!448069 (= lt!526183 (size!13002 (c!247985 (_1!8486 lt!526172))))))

(assert (=> d!448069 (= (size!12999 (_1!8486 lt!526172)) lt!526183)))

(declare-fun bs!364472 () Bool)

(assert (= bs!364472 d!448069))

(assert (=> bs!364472 m!1777246))

(assert (=> bs!364472 m!1777246))

(declare-fun m!1777474 () Bool)

(assert (=> bs!364472 m!1777474))

(declare-fun m!1777476 () Bool)

(assert (=> bs!364472 m!1777476))

(assert (=> d!447981 d!448069))

(declare-fun e!967801 () Bool)

(declare-fun b!1513345 () Bool)

(declare-fun lt!526199 () Option!2930)

(declare-fun get!4738 (Option!2930) tuple2!14950)

(declare-datatypes ((tuple2!14952 0))(
  ( (tuple2!14953 (_1!8495 Token!5350) (_2!8495 List!16138)) )
))
(declare-datatypes ((Option!2931 0))(
  ( (None!2930) (Some!2930 (v!22890 tuple2!14952)) )
))
(declare-fun get!4739 (Option!2931) tuple2!14952)

(declare-fun maxPrefixZipper!260 (LexerInterface!2496 List!16140 List!16138) Option!2931)

(assert (=> b!1513345 (= e!967801 (= (list!6348 (_2!8494 (get!4738 lt!526199))) (_2!8495 (get!4739 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 treated!70))))))))

(declare-fun b!1513346 () Bool)

(declare-fun e!967802 () Bool)

(declare-fun e!967803 () Bool)

(assert (=> b!1513346 (= e!967802 e!967803)))

(declare-fun res!680881 () Bool)

(assert (=> b!1513346 (=> res!680881 e!967803)))

(declare-fun isDefined!2355 (Option!2930) Bool)

(assert (=> b!1513346 (= res!680881 (not (isDefined!2355 lt!526199)))))

(declare-fun b!1513347 () Bool)

(declare-fun e!967805 () Option!2930)

(declare-fun call!100336 () Option!2930)

(assert (=> b!1513347 (= e!967805 call!100336)))

(declare-fun d!448071 () Bool)

(assert (=> d!448071 e!967802))

(declare-fun res!680880 () Bool)

(assert (=> d!448071 (=> (not res!680880) (not e!967802))))

(declare-fun isDefined!2356 (Option!2931) Bool)

(assert (=> d!448071 (= res!680880 (= (isDefined!2355 lt!526199) (isDefined!2356 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 treated!70)))))))

(assert (=> d!448071 (= lt!526199 e!967805)))

(declare-fun c!248022 () Bool)

(assert (=> d!448071 (= c!248022 (and ((_ is Cons!16072) rules!1640) ((_ is Nil!16072) (t!139418 rules!1640))))))

(declare-datatypes ((Unit!25745 0))(
  ( (Unit!25746) )
))
(declare-fun lt!526200 () Unit!25745)

(declare-fun lt!526201 () Unit!25745)

(assert (=> d!448071 (= lt!526200 lt!526201)))

(declare-fun lt!526202 () List!16138)

(declare-fun lt!526198 () List!16138)

(declare-fun isPrefix!1219 (List!16138 List!16138) Bool)

(assert (=> d!448071 (isPrefix!1219 lt!526202 lt!526198)))

(declare-fun lemmaIsPrefixRefl!849 (List!16138 List!16138) Unit!25745)

(assert (=> d!448071 (= lt!526201 (lemmaIsPrefixRefl!849 lt!526202 lt!526198))))

(assert (=> d!448071 (= lt!526198 (list!6348 treated!70))))

(assert (=> d!448071 (= lt!526202 (list!6348 treated!70))))

(declare-fun rulesValidInductive!857 (LexerInterface!2496 List!16140) Bool)

(assert (=> d!448071 (rulesValidInductive!857 thiss!13241 rules!1640)))

(assert (=> d!448071 (= (maxPrefixZipperSequence!589 thiss!13241 rules!1640 treated!70) lt!526199)))

(declare-fun b!1513348 () Bool)

(declare-fun res!680879 () Bool)

(assert (=> b!1513348 (=> (not res!680879) (not e!967802))))

(declare-fun e!967806 () Bool)

(assert (=> b!1513348 (= res!680879 e!967806)))

(declare-fun res!680878 () Bool)

(assert (=> b!1513348 (=> res!680878 e!967806)))

(assert (=> b!1513348 (= res!680878 (not (isDefined!2355 lt!526199)))))

(declare-fun b!1513349 () Bool)

(declare-fun e!967804 () Bool)

(declare-fun maxPrefix!1209 (LexerInterface!2496 List!16140 List!16138) Option!2931)

(assert (=> b!1513349 (= e!967804 (= (list!6348 (_2!8494 (get!4738 lt!526199))) (_2!8495 (get!4739 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 treated!70))))))))

(declare-fun b!1513350 () Bool)

(assert (=> b!1513350 (= e!967803 e!967804)))

(declare-fun res!680882 () Bool)

(assert (=> b!1513350 (=> (not res!680882) (not e!967804))))

(assert (=> b!1513350 (= res!680882 (= (_1!8494 (get!4738 lt!526199)) (_1!8495 (get!4739 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 treated!70))))))))

(declare-fun bm!100331 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!279 (LexerInterface!2496 Rule!5488 BalanceConc!10820) Option!2930)

(assert (=> bm!100331 (= call!100336 (maxPrefixOneRuleZipperSequence!279 thiss!13241 (h!21473 rules!1640) treated!70))))

(declare-fun b!1513351 () Bool)

(declare-fun lt!526203 () Option!2930)

(declare-fun lt!526204 () Option!2930)

(assert (=> b!1513351 (= e!967805 (ite (and ((_ is None!2929) lt!526203) ((_ is None!2929) lt!526204)) None!2929 (ite ((_ is None!2929) lt!526204) lt!526203 (ite ((_ is None!2929) lt!526203) lt!526204 (ite (>= (size!12993 (_1!8494 (v!22888 lt!526203))) (size!12993 (_1!8494 (v!22888 lt!526204)))) lt!526203 lt!526204)))))))

(assert (=> b!1513351 (= lt!526203 call!100336)))

(assert (=> b!1513351 (= lt!526204 (maxPrefixZipperSequence!589 thiss!13241 (t!139418 rules!1640) treated!70))))

(declare-fun b!1513352 () Bool)

(assert (=> b!1513352 (= e!967806 e!967801)))

(declare-fun res!680883 () Bool)

(assert (=> b!1513352 (=> (not res!680883) (not e!967801))))

(assert (=> b!1513352 (= res!680883 (= (_1!8494 (get!4738 lt!526199)) (_1!8495 (get!4739 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 treated!70))))))))

(assert (= (and d!448071 c!248022) b!1513347))

(assert (= (and d!448071 (not c!248022)) b!1513351))

(assert (= (or b!1513347 b!1513351) bm!100331))

(assert (= (and d!448071 res!680880) b!1513348))

(assert (= (and b!1513348 (not res!680878)) b!1513352))

(assert (= (and b!1513352 res!680883) b!1513345))

(assert (= (and b!1513348 res!680879) b!1513346))

(assert (= (and b!1513346 (not res!680881)) b!1513350))

(assert (= (and b!1513350 res!680882) b!1513349))

(declare-fun m!1777478 () Bool)

(assert (=> b!1513349 m!1777478))

(declare-fun m!1777480 () Bool)

(assert (=> b!1513349 m!1777480))

(declare-fun m!1777482 () Bool)

(assert (=> b!1513349 m!1777482))

(declare-fun m!1777484 () Bool)

(assert (=> b!1513349 m!1777484))

(assert (=> b!1513349 m!1777110))

(assert (=> b!1513349 m!1777482))

(assert (=> b!1513349 m!1777110))

(assert (=> b!1513352 m!1777480))

(assert (=> b!1513352 m!1777110))

(assert (=> b!1513352 m!1777110))

(declare-fun m!1777486 () Bool)

(assert (=> b!1513352 m!1777486))

(assert (=> b!1513352 m!1777486))

(declare-fun m!1777488 () Bool)

(assert (=> b!1513352 m!1777488))

(declare-fun m!1777490 () Bool)

(assert (=> b!1513346 m!1777490))

(assert (=> b!1513348 m!1777490))

(assert (=> b!1513345 m!1777478))

(assert (=> b!1513345 m!1777110))

(assert (=> b!1513345 m!1777486))

(assert (=> b!1513345 m!1777480))

(assert (=> b!1513345 m!1777486))

(assert (=> b!1513345 m!1777488))

(assert (=> b!1513345 m!1777110))

(assert (=> d!448071 m!1777110))

(assert (=> d!448071 m!1777486))

(assert (=> d!448071 m!1777490))

(declare-fun m!1777492 () Bool)

(assert (=> d!448071 m!1777492))

(assert (=> d!448071 m!1777486))

(declare-fun m!1777494 () Bool)

(assert (=> d!448071 m!1777494))

(assert (=> d!448071 m!1777110))

(declare-fun m!1777496 () Bool)

(assert (=> d!448071 m!1777496))

(declare-fun m!1777498 () Bool)

(assert (=> d!448071 m!1777498))

(declare-fun m!1777500 () Bool)

(assert (=> bm!100331 m!1777500))

(assert (=> b!1513350 m!1777480))

(assert (=> b!1513350 m!1777110))

(assert (=> b!1513350 m!1777110))

(assert (=> b!1513350 m!1777482))

(assert (=> b!1513350 m!1777482))

(assert (=> b!1513350 m!1777484))

(declare-fun m!1777502 () Bool)

(assert (=> b!1513351 m!1777502))

(assert (=> d!447981 d!448071))

(declare-fun d!448073 () Bool)

(assert (=> d!448073 (= (list!6348 (_2!8486 lt!526172)) (list!6350 (c!247983 (_2!8486 lt!526172))))))

(declare-fun bs!364473 () Bool)

(assert (= bs!364473 d!448073))

(declare-fun m!1777504 () Bool)

(assert (=> bs!364473 m!1777504))

(assert (=> b!1513066 d!448073))

(assert (=> b!1513066 d!448005))

(declare-fun bs!364474 () Bool)

(declare-fun d!448075 () Bool)

(assert (= bs!364474 (and d!448075 d!448063)))

(declare-fun lambda!64517 () Int)

(assert (=> bs!364474 (= lambda!64517 lambda!64516)))

(declare-fun bs!364475 () Bool)

(assert (= bs!364475 (and d!448075 d!448049)))

(assert (=> bs!364475 (= lambda!64517 lambda!64513)))

(declare-fun bs!364476 () Bool)

(assert (= bs!364476 (and d!448075 d!448059)))

(assert (=> bs!364476 (= lambda!64517 lambda!64515)))

(declare-fun bs!364477 () Bool)

(assert (= bs!364477 (and d!448075 d!448055)))

(assert (=> bs!364477 (= lambda!64517 lambda!64514)))

(declare-fun bs!364478 () Bool)

(assert (= bs!364478 (and d!448075 d!448047)))

(assert (=> bs!364478 (= lambda!64517 lambda!64512)))

(assert (=> d!448075 (= (inv!21315 setElem!9126) (forall!3856 (exprs!1177 setElem!9126) lambda!64517))))

(declare-fun bs!364479 () Bool)

(assert (= bs!364479 d!448075))

(declare-fun m!1777506 () Bool)

(assert (=> bs!364479 m!1777506))

(assert (=> setNonEmpty!9126 d!448075))

(assert (=> b!1512982 d!447999))

(declare-fun d!448077 () Bool)

(assert (=> d!448077 (= (height!811 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))) (ite ((_ is Empty!5440) (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))) 0 (ite ((_ is Leaf!8065) (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))) 1 (cheight!5651 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))))))))

(assert (=> b!1513050 d!448077))

(declare-fun d!448079 () Bool)

(assert (=> d!448079 (= (max!0 (height!811 (c!247985 acc!392)) (height!811 (c!247985 (_1!8486 lt!526153)))) (ite (< (height!811 (c!247985 acc!392)) (height!811 (c!247985 (_1!8486 lt!526153)))) (height!811 (c!247985 (_1!8486 lt!526153))) (height!811 (c!247985 acc!392))))))

(assert (=> b!1513050 d!448079))

(declare-fun bm!100364 () Bool)

(declare-fun call!100375 () Conc!5440)

(declare-fun call!100369 () Conc!5440)

(assert (=> bm!100364 (= call!100375 call!100369)))

(declare-fun bm!100365 () Bool)

(declare-fun call!100372 () Conc!5440)

(assert (=> bm!100365 (= call!100372 call!100369)))

(declare-fun b!1513395 () Bool)

(declare-fun res!680898 () Bool)

(declare-fun e!967835 () Bool)

(assert (=> b!1513395 (=> (not res!680898) (not e!967835))))

(declare-fun lt!526215 () Conc!5440)

(assert (=> b!1513395 (= res!680898 (<= (height!811 lt!526215) (+ (max!0 (height!811 (c!247985 acc!392)) (height!811 (c!247985 (_1!8486 lt!526153)))) 1)))))

(declare-fun c!248042 () Bool)

(declare-fun lt!526214 () Conc!5440)

(declare-fun call!100383 () Conc!5440)

(declare-fun c!248045 () Bool)

(declare-fun c!248040 () Bool)

(declare-fun call!100370 () Conc!5440)

(declare-fun bm!100366 () Bool)

(declare-fun lt!526213 () Conc!5440)

(declare-fun <>!116 (Conc!5440 Conc!5440) Conc!5440)

(assert (=> bm!100366 (= call!100383 (<>!116 (ite c!248042 (ite c!248045 (left!13364 (c!247985 acc!392)) call!100370) (ite c!248040 lt!526214 (right!13694 (left!13364 (c!247985 (_1!8486 lt!526153)))))) (ite c!248042 (ite c!248045 call!100370 lt!526213) (ite c!248040 (right!13694 (left!13364 (c!247985 (_1!8486 lt!526153)))) (right!13694 (c!247985 (_1!8486 lt!526153)))))))))

(declare-fun b!1513396 () Bool)

(declare-fun e!967828 () Conc!5440)

(assert (=> b!1513396 (= e!967828 (c!247985 (_1!8486 lt!526153)))))

(declare-fun b!1513398 () Bool)

(declare-fun e!967832 () Conc!5440)

(assert (=> b!1513398 (= e!967832 call!100372)))

(declare-fun b!1513399 () Bool)

(declare-fun c!248046 () Bool)

(declare-fun lt!526216 () Int)

(assert (=> b!1513399 (= c!248046 (and (<= (- 1) lt!526216) (<= lt!526216 1)))))

(assert (=> b!1513399 (= lt!526216 (- (height!811 (c!247985 (_1!8486 lt!526153))) (height!811 (c!247985 acc!392))))))

(declare-fun e!967830 () Conc!5440)

(declare-fun e!967827 () Conc!5440)

(assert (=> b!1513399 (= e!967830 e!967827)))

(declare-fun b!1513400 () Bool)

(declare-fun e!967829 () Conc!5440)

(assert (=> b!1513400 (= e!967827 e!967829)))

(assert (=> b!1513400 (= c!248042 (< lt!526216 (- 1)))))

(declare-fun call!100381 () Int)

(declare-fun bm!100367 () Bool)

(assert (=> bm!100367 (= call!100381 (height!811 (ite c!248042 (left!13364 (c!247985 acc!392)) (c!247985 (_1!8486 lt!526153)))))))

(declare-fun b!1513401 () Bool)

(assert (=> b!1513401 (= e!967830 (c!247985 acc!392))))

(declare-fun bm!100368 () Bool)

(assert (=> bm!100368 (= call!100370 call!100372)))

(declare-fun b!1513402 () Bool)

(assert (=> b!1513402 (= e!967828 e!967830)))

(declare-fun c!248043 () Bool)

(assert (=> b!1513402 (= c!248043 (= (c!247985 (_1!8486 lt!526153)) Empty!5440))))

(declare-fun b!1513403 () Bool)

(declare-fun e!967836 () Conc!5440)

(declare-fun call!100371 () Conc!5440)

(assert (=> b!1513403 (= e!967836 call!100371)))

(declare-fun bm!100369 () Bool)

(declare-fun call!100382 () Conc!5440)

(declare-fun call!100384 () Conc!5440)

(assert (=> bm!100369 (= call!100382 call!100384)))

(declare-fun bm!100370 () Bool)

(declare-fun call!100379 () Conc!5440)

(assert (=> bm!100370 (= call!100369 call!100379)))

(declare-fun b!1513404 () Bool)

(declare-fun e!967834 () Conc!5440)

(declare-fun call!100378 () Conc!5440)

(assert (=> b!1513404 (= e!967834 call!100378)))

(declare-fun b!1513405 () Bool)

(declare-fun res!680894 () Bool)

(assert (=> b!1513405 (=> (not res!680894) (not e!967835))))

(assert (=> b!1513405 (= res!680894 (>= (height!811 lt!526215) (max!0 (height!811 (c!247985 acc!392)) (height!811 (c!247985 (_1!8486 lt!526153))))))))

(declare-fun b!1513406 () Bool)

(declare-fun e!967833 () Conc!5440)

(assert (=> b!1513406 (= e!967833 call!100375)))

(declare-fun b!1513407 () Bool)

(assert (=> b!1513407 (= e!967836 call!100371)))

(declare-fun b!1513408 () Bool)

(assert (=> b!1513408 (= e!967832 e!967834)))

(assert (=> b!1513408 (= lt!526213 call!100382)))

(declare-fun call!100373 () Int)

(declare-fun call!100377 () Int)

(assert (=> b!1513408 (= c!248045 (= call!100373 (- call!100377 3)))))

(declare-fun b!1513409 () Bool)

(declare-fun c!248044 () Bool)

(declare-fun call!100374 () Int)

(assert (=> b!1513409 (= c!248044 (>= call!100381 call!100374))))

(assert (=> b!1513409 (= e!967829 e!967832)))

(declare-fun b!1513410 () Bool)

(declare-fun res!680897 () Bool)

(assert (=> b!1513410 (=> (not res!680897) (not e!967835))))

(assert (=> b!1513410 (= res!680897 (isBalanced!1609 lt!526215))))

(declare-fun bm!100371 () Bool)

(declare-fun call!100380 () Conc!5440)

(assert (=> bm!100371 (= call!100380 call!100384)))

(declare-fun bm!100372 () Bool)

(assert (=> bm!100372 (= call!100377 (height!811 (ite c!248042 (c!247985 acc!392) (right!13694 (c!247985 (_1!8486 lt!526153))))))))

(declare-fun b!1513411 () Bool)

(assert (=> b!1513411 (= e!967834 call!100378)))

(declare-fun b!1513412 () Bool)

(declare-fun e!967831 () Bool)

(assert (=> b!1513412 (= e!967831 (isBalanced!1609 (c!247985 (_1!8486 lt!526153))))))

(declare-fun bm!100373 () Bool)

(assert (=> bm!100373 (= call!100373 (height!811 (ite c!248042 lt!526213 (left!13364 (c!247985 (_1!8486 lt!526153))))))))

(declare-fun b!1513397 () Bool)

(assert (=> b!1513397 (= e!967835 (= (list!6349 lt!526215) (++!4360 (list!6349 (c!247985 acc!392)) (list!6349 (c!247985 (_1!8486 lt!526153))))))))

(declare-fun d!448081 () Bool)

(assert (=> d!448081 e!967835))

(declare-fun res!680895 () Bool)

(assert (=> d!448081 (=> (not res!680895) (not e!967835))))

(assert (=> d!448081 (= res!680895 (appendAssocInst!369 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))))

(assert (=> d!448081 (= lt!526215 e!967828)))

(declare-fun c!248041 () Bool)

(assert (=> d!448081 (= c!248041 (= (c!247985 acc!392) Empty!5440))))

(assert (=> d!448081 e!967831))

(declare-fun res!680896 () Bool)

(assert (=> d!448081 (=> (not res!680896) (not e!967831))))

(assert (=> d!448081 (= res!680896 (isBalanced!1609 (c!247985 acc!392)))))

(assert (=> d!448081 (= (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))) lt!526215)))

(declare-fun bm!100374 () Bool)

(assert (=> bm!100374 (= call!100378 call!100383)))

(declare-fun bm!100375 () Bool)

(declare-fun call!100376 () Conc!5440)

(assert (=> bm!100375 (= call!100376 call!100383)))

(declare-fun bm!100376 () Bool)

(assert (=> bm!100376 (= call!100371 call!100375)))

(declare-fun bm!100377 () Bool)

(assert (=> bm!100377 (= call!100374 (height!811 (ite c!248042 (right!13694 (c!247985 acc!392)) lt!526214)))))

(declare-fun b!1513413 () Bool)

(declare-fun c!248039 () Bool)

(assert (=> b!1513413 (= c!248039 (>= call!100377 call!100373))))

(assert (=> b!1513413 (= e!967829 e!967833)))

(declare-fun bm!100378 () Bool)

(assert (=> bm!100378 (= call!100384 (++!4359 (ite c!248042 (ite c!248044 (right!13694 (c!247985 acc!392)) (right!13694 (right!13694 (c!247985 acc!392)))) (c!247985 acc!392)) (ite c!248042 (c!247985 (_1!8486 lt!526153)) (ite c!248039 (left!13364 (c!247985 (_1!8486 lt!526153))) (left!13364 (left!13364 (c!247985 (_1!8486 lt!526153))))))))))

(declare-fun bm!100379 () Bool)

(assert (=> bm!100379 (= call!100379 (<>!116 (ite c!248046 (c!247985 acc!392) (ite c!248042 (ite c!248044 (left!13364 (c!247985 acc!392)) (ite c!248045 (left!13364 (right!13694 (c!247985 acc!392))) (left!13364 (c!247985 acc!392)))) (ite c!248039 call!100380 (ite c!248040 call!100376 lt!526214)))) (ite c!248046 (c!247985 (_1!8486 lt!526153)) (ite c!248042 (ite c!248044 call!100382 (ite c!248045 lt!526213 (left!13364 (right!13694 (c!247985 acc!392))))) (ite (or c!248039 c!248040) (right!13694 (c!247985 (_1!8486 lt!526153))) call!100376)))))))

(declare-fun b!1513414 () Bool)

(assert (=> b!1513414 (= e!967827 call!100379)))

(declare-fun b!1513415 () Bool)

(assert (=> b!1513415 (= e!967833 e!967836)))

(assert (=> b!1513415 (= lt!526214 call!100380)))

(assert (=> b!1513415 (= c!248040 (= call!100374 (- call!100381 3)))))

(assert (= (and d!448081 res!680896) b!1513412))

(assert (= (and d!448081 c!248041) b!1513396))

(assert (= (and d!448081 (not c!248041)) b!1513402))

(assert (= (and b!1513402 c!248043) b!1513401))

(assert (= (and b!1513402 (not c!248043)) b!1513399))

(assert (= (and b!1513399 c!248046) b!1513414))

(assert (= (and b!1513399 (not c!248046)) b!1513400))

(assert (= (and b!1513400 c!248042) b!1513409))

(assert (= (and b!1513400 (not c!248042)) b!1513413))

(assert (= (and b!1513409 c!248044) b!1513398))

(assert (= (and b!1513409 (not c!248044)) b!1513408))

(assert (= (and b!1513408 c!248045) b!1513411))

(assert (= (and b!1513408 (not c!248045)) b!1513404))

(assert (= (or b!1513411 b!1513404) bm!100368))

(assert (= (or b!1513411 b!1513404) bm!100374))

(assert (= (or b!1513398 b!1513408) bm!100369))

(assert (= (or b!1513398 bm!100368) bm!100365))

(assert (= (and b!1513413 c!248039) b!1513406))

(assert (= (and b!1513413 (not c!248039)) b!1513415))

(assert (= (and b!1513415 c!248040) b!1513407))

(assert (= (and b!1513415 (not c!248040)) b!1513403))

(assert (= (or b!1513407 b!1513403) bm!100375))

(assert (= (or b!1513407 b!1513403) bm!100376))

(assert (= (or b!1513406 b!1513415) bm!100371))

(assert (= (or b!1513406 bm!100376) bm!100364))

(assert (= (or b!1513409 b!1513415) bm!100377))

(assert (= (or b!1513409 b!1513415) bm!100367))

(assert (= (or b!1513408 b!1513413) bm!100372))

(assert (= (or bm!100374 bm!100375) bm!100366))

(assert (= (or bm!100365 bm!100364) bm!100370))

(assert (= (or bm!100369 bm!100371) bm!100378))

(assert (= (or b!1513408 b!1513413) bm!100373))

(assert (= (or b!1513414 bm!100370) bm!100379))

(assert (= (and d!448081 res!680895) b!1513410))

(assert (= (and b!1513410 res!680897) b!1513395))

(assert (= (and b!1513395 res!680898) b!1513405))

(assert (= (and b!1513405 res!680894) b!1513397))

(declare-fun m!1777508 () Bool)

(assert (=> b!1513412 m!1777508))

(declare-fun m!1777510 () Bool)

(assert (=> b!1513410 m!1777510))

(declare-fun m!1777512 () Bool)

(assert (=> bm!100366 m!1777512))

(declare-fun m!1777514 () Bool)

(assert (=> bm!100377 m!1777514))

(declare-fun m!1777516 () Bool)

(assert (=> bm!100367 m!1777516))

(declare-fun m!1777518 () Bool)

(assert (=> b!1513405 m!1777518))

(assert (=> b!1513405 m!1777208))

(assert (=> b!1513405 m!1777204))

(assert (=> b!1513405 m!1777208))

(assert (=> b!1513405 m!1777204))

(assert (=> b!1513405 m!1777210))

(assert (=> b!1513399 m!1777204))

(assert (=> b!1513399 m!1777208))

(assert (=> b!1513395 m!1777518))

(assert (=> b!1513395 m!1777208))

(assert (=> b!1513395 m!1777204))

(assert (=> b!1513395 m!1777208))

(assert (=> b!1513395 m!1777204))

(assert (=> b!1513395 m!1777210))

(declare-fun m!1777520 () Bool)

(assert (=> b!1513397 m!1777520))

(assert (=> b!1513397 m!1777226))

(declare-fun m!1777522 () Bool)

(assert (=> b!1513397 m!1777522))

(assert (=> b!1513397 m!1777226))

(assert (=> b!1513397 m!1777522))

(declare-fun m!1777524 () Bool)

(assert (=> b!1513397 m!1777524))

(declare-fun m!1777526 () Bool)

(assert (=> bm!100379 m!1777526))

(declare-fun m!1777528 () Bool)

(assert (=> bm!100372 m!1777528))

(declare-fun m!1777530 () Bool)

(assert (=> bm!100373 m!1777530))

(declare-fun m!1777532 () Bool)

(assert (=> bm!100378 m!1777532))

(assert (=> d!448081 m!1777200))

(assert (=> d!448081 m!1777314))

(assert (=> b!1513050 d!448081))

(declare-fun d!448083 () Bool)

(assert (=> d!448083 (= (height!811 (c!247985 acc!392)) (ite ((_ is Empty!5440) (c!247985 acc!392)) 0 (ite ((_ is Leaf!8065) (c!247985 acc!392)) 1 (cheight!5651 (c!247985 acc!392)))))))

(assert (=> b!1513050 d!448083))

(declare-fun d!448085 () Bool)

(assert (=> d!448085 (= (height!811 (c!247985 (_1!8486 lt!526153))) (ite ((_ is Empty!5440) (c!247985 (_1!8486 lt!526153))) 0 (ite ((_ is Leaf!8065) (c!247985 (_1!8486 lt!526153))) 1 (cheight!5651 (c!247985 (_1!8486 lt!526153))))))))

(assert (=> b!1513050 d!448085))

(declare-fun b!1513421 () Bool)

(assert (=> b!1513421 true))

(declare-fun d!448087 () Bool)

(declare-fun res!680903 () Bool)

(declare-fun e!967839 () Bool)

(assert (=> d!448087 (=> (not res!680903) (not e!967839))))

(declare-fun valid!1182 (MutableMap!1421) Bool)

(assert (=> d!448087 (= res!680903 (valid!1182 (cache!1802 cacheFurthestNullable!64)))))

(assert (=> d!448087 (= (validCacheMapFurthestNullable!48 (cache!1802 cacheFurthestNullable!64) (totalInput!2296 cacheFurthestNullable!64)) e!967839)))

(declare-fun b!1513420 () Bool)

(declare-fun res!680904 () Bool)

(assert (=> b!1513420 (=> (not res!680904) (not e!967839))))

(declare-fun invariantList!220 (List!16142) Bool)

(declare-datatypes ((ListMap!489 0))(
  ( (ListMap!490 (toList!814 List!16142)) )
))
(declare-fun map!3422 (MutableMap!1421) ListMap!489)

(assert (=> b!1513420 (= res!680904 (invariantList!220 (toList!814 (map!3422 (cache!1802 cacheFurthestNullable!64)))))))

(declare-fun lambda!64520 () Int)

(declare-fun forall!3857 (List!16142 Int) Bool)

(assert (=> b!1513421 (= e!967839 (forall!3857 (toList!814 (map!3422 (cache!1802 cacheFurthestNullable!64))) lambda!64520))))

(assert (= (and d!448087 res!680903) b!1513420))

(assert (= (and b!1513420 res!680904) b!1513421))

(declare-fun m!1777535 () Bool)

(assert (=> d!448087 m!1777535))

(declare-fun m!1777537 () Bool)

(assert (=> b!1513420 m!1777537))

(declare-fun m!1777539 () Bool)

(assert (=> b!1513420 m!1777539))

(assert (=> b!1513421 m!1777537))

(declare-fun m!1777541 () Bool)

(assert (=> b!1513421 m!1777541))

(assert (=> d!448015 d!448087))

(declare-fun bs!364480 () Bool)

(declare-fun d!448089 () Bool)

(assert (= bs!364480 (and d!448089 d!448049)))

(declare-fun lambda!64521 () Int)

(assert (=> bs!364480 (= lambda!64521 lambda!64513)))

(declare-fun bs!364481 () Bool)

(assert (= bs!364481 (and d!448089 d!448059)))

(assert (=> bs!364481 (= lambda!64521 lambda!64515)))

(declare-fun bs!364482 () Bool)

(assert (= bs!364482 (and d!448089 d!448055)))

(assert (=> bs!364482 (= lambda!64521 lambda!64514)))

(declare-fun bs!364483 () Bool)

(assert (= bs!364483 (and d!448089 d!448047)))

(assert (=> bs!364483 (= lambda!64521 lambda!64512)))

(declare-fun bs!364484 () Bool)

(assert (= bs!364484 (and d!448089 d!448075)))

(assert (=> bs!364484 (= lambda!64521 lambda!64517)))

(declare-fun bs!364485 () Bool)

(assert (= bs!364485 (and d!448089 d!448063)))

(assert (=> bs!364485 (= lambda!64521 lambda!64516)))

(assert (=> d!448089 (= (inv!21315 (_2!8491 (_1!8492 (h!21477 mapDefault!7004)))) (forall!3856 (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapDefault!7004)))) lambda!64521))))

(declare-fun bs!364486 () Bool)

(assert (= bs!364486 d!448089))

(declare-fun m!1777543 () Bool)

(assert (=> bs!364486 m!1777543))

(assert (=> b!1513217 d!448089))

(declare-fun d!448091 () Bool)

(assert (=> d!448091 (= (inv!21316 (xs!8220 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) (<= (size!13000 (innerList!5499 (xs!8220 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) 2147483647))))

(declare-fun bs!364487 () Bool)

(assert (= bs!364487 d!448091))

(declare-fun m!1777545 () Bool)

(assert (=> bs!364487 m!1777545))

(assert (=> b!1513206 d!448091))

(declare-fun d!448093 () Bool)

(declare-fun lt!526219 () Bool)

(declare-fun isEmpty!9933 (List!16139) Bool)

(assert (=> d!448093 (= lt!526219 (isEmpty!9933 (list!6347 (_1!8486 lt!526166))))))

(declare-fun isEmpty!9934 (Conc!5440) Bool)

(assert (=> d!448093 (= lt!526219 (isEmpty!9934 (c!247985 (_1!8486 lt!526166))))))

(assert (=> d!448093 (= (isEmpty!9931 (_1!8486 lt!526166)) lt!526219)))

(declare-fun bs!364488 () Bool)

(assert (= bs!364488 d!448093))

(assert (=> bs!364488 m!1777198))

(assert (=> bs!364488 m!1777198))

(declare-fun m!1777547 () Bool)

(assert (=> bs!364488 m!1777547))

(declare-fun m!1777549 () Bool)

(assert (=> bs!364488 m!1777549))

(assert (=> b!1513034 d!448093))

(declare-fun d!448095 () Bool)

(declare-fun res!680905 () Bool)

(declare-fun e!967840 () Bool)

(assert (=> d!448095 (=> (not res!680905) (not e!967840))))

(assert (=> d!448095 (= res!680905 (<= (size!13000 (list!6351 (xs!8220 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) 512))))

(assert (=> d!448095 (= (inv!21312 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) e!967840)))

(declare-fun b!1513424 () Bool)

(declare-fun res!680906 () Bool)

(assert (=> b!1513424 (=> (not res!680906) (not e!967840))))

(assert (=> b!1513424 (= res!680906 (= (csize!11109 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) (size!13000 (list!6351 (xs!8220 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))))

(declare-fun b!1513425 () Bool)

(assert (=> b!1513425 (= e!967840 (and (> (csize!11109 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) 0) (<= (csize!11109 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) 512)))))

(assert (= (and d!448095 res!680905) b!1513424))

(assert (= (and b!1513424 res!680906) b!1513425))

(declare-fun m!1777551 () Bool)

(assert (=> d!448095 m!1777551))

(assert (=> d!448095 m!1777551))

(declare-fun m!1777553 () Bool)

(assert (=> d!448095 m!1777553))

(assert (=> b!1513424 m!1777551))

(assert (=> b!1513424 m!1777551))

(assert (=> b!1513424 m!1777553))

(assert (=> b!1513074 d!448095))

(declare-fun d!448097 () Bool)

(declare-fun lt!526220 () Bool)

(assert (=> d!448097 (= lt!526220 (isEmpty!9933 (list!6347 (_1!8486 lt!526172))))))

(assert (=> d!448097 (= lt!526220 (isEmpty!9934 (c!247985 (_1!8486 lt!526172))))))

(assert (=> d!448097 (= (isEmpty!9931 (_1!8486 lt!526172)) lt!526220)))

(declare-fun bs!364489 () Bool)

(assert (= bs!364489 d!448097))

(assert (=> bs!364489 m!1777246))

(assert (=> bs!364489 m!1777246))

(declare-fun m!1777555 () Bool)

(assert (=> bs!364489 m!1777555))

(declare-fun m!1777557 () Bool)

(assert (=> bs!364489 m!1777557))

(assert (=> b!1513062 d!448097))

(declare-fun bs!364490 () Bool)

(declare-fun d!448099 () Bool)

(assert (= bs!364490 (and d!448099 d!448049)))

(declare-fun lambda!64522 () Int)

(assert (=> bs!364490 (= lambda!64522 lambda!64513)))

(declare-fun bs!364491 () Bool)

(assert (= bs!364491 (and d!448099 d!448059)))

(assert (=> bs!364491 (= lambda!64522 lambda!64515)))

(declare-fun bs!364492 () Bool)

(assert (= bs!364492 (and d!448099 d!448055)))

(assert (=> bs!364492 (= lambda!64522 lambda!64514)))

(declare-fun bs!364493 () Bool)

(assert (= bs!364493 (and d!448099 d!448047)))

(assert (=> bs!364493 (= lambda!64522 lambda!64512)))

(declare-fun bs!364494 () Bool)

(assert (= bs!364494 (and d!448099 d!448089)))

(assert (=> bs!364494 (= lambda!64522 lambda!64521)))

(declare-fun bs!364495 () Bool)

(assert (= bs!364495 (and d!448099 d!448075)))

(assert (=> bs!364495 (= lambda!64522 lambda!64517)))

(declare-fun bs!364496 () Bool)

(assert (= bs!364496 (and d!448099 d!448063)))

(assert (=> bs!364496 (= lambda!64522 lambda!64516)))

(assert (=> d!448099 (= (inv!21315 setElem!9140) (forall!3856 (exprs!1177 setElem!9140) lambda!64522))))

(declare-fun bs!364497 () Bool)

(assert (= bs!364497 d!448099))

(declare-fun m!1777559 () Bool)

(assert (=> bs!364497 m!1777559))

(assert (=> setNonEmpty!9140 d!448099))

(assert (=> b!1513009 d!447975))

(declare-fun bs!364498 () Bool)

(declare-fun d!448101 () Bool)

(assert (= bs!364498 (and d!448101 d!448049)))

(declare-fun lambda!64523 () Int)

(assert (=> bs!364498 (= lambda!64523 lambda!64513)))

(declare-fun bs!364499 () Bool)

(assert (= bs!364499 (and d!448101 d!448059)))

(assert (=> bs!364499 (= lambda!64523 lambda!64515)))

(declare-fun bs!364500 () Bool)

(assert (= bs!364500 (and d!448101 d!448055)))

(assert (=> bs!364500 (= lambda!64523 lambda!64514)))

(declare-fun bs!364501 () Bool)

(assert (= bs!364501 (and d!448101 d!448089)))

(assert (=> bs!364501 (= lambda!64523 lambda!64521)))

(declare-fun bs!364502 () Bool)

(assert (= bs!364502 (and d!448101 d!448075)))

(assert (=> bs!364502 (= lambda!64523 lambda!64517)))

(declare-fun bs!364503 () Bool)

(assert (= bs!364503 (and d!448101 d!448063)))

(assert (=> bs!364503 (= lambda!64523 lambda!64516)))

(declare-fun bs!364504 () Bool)

(assert (= bs!364504 (and d!448101 d!448047)))

(assert (=> bs!364504 (= lambda!64523 lambda!64512)))

(declare-fun bs!364505 () Bool)

(assert (= bs!364505 (and d!448101 d!448099)))

(assert (=> bs!364505 (= lambda!64523 lambda!64522)))

(assert (=> d!448101 (= (inv!21315 setElem!9141) (forall!3856 (exprs!1177 setElem!9141) lambda!64523))))

(declare-fun bs!364506 () Bool)

(assert (= bs!364506 d!448101))

(declare-fun m!1777561 () Bool)

(assert (=> bs!364506 m!1777561))

(assert (=> setNonEmpty!9141 d!448101))

(declare-fun d!448103 () Bool)

(assert (=> d!448103 true))

(declare-fun order!9539 () Int)

(declare-fun lambda!64526 () Int)

(declare-fun order!9541 () Int)

(declare-fun dynLambda!7220 (Int Int) Int)

(declare-fun dynLambda!7221 (Int Int) Int)

(assert (=> d!448103 (< (dynLambda!7220 order!9539 (toChars!4052 (transformation!2844 (h!21473 rules!1640)))) (dynLambda!7221 order!9541 lambda!64526))))

(assert (=> d!448103 true))

(declare-fun order!9543 () Int)

(declare-fun dynLambda!7222 (Int Int) Int)

(assert (=> d!448103 (< (dynLambda!7222 order!9543 (toValue!4193 (transformation!2844 (h!21473 rules!1640)))) (dynLambda!7221 order!9541 lambda!64526))))

(declare-fun Forall!579 (Int) Bool)

(assert (=> d!448103 (= (semiInverseModEq!1071 (toChars!4052 (transformation!2844 (h!21473 rules!1640))) (toValue!4193 (transformation!2844 (h!21473 rules!1640)))) (Forall!579 lambda!64526))))

(declare-fun bs!364507 () Bool)

(assert (= bs!364507 d!448103))

(declare-fun m!1777563 () Bool)

(assert (=> bs!364507 m!1777563))

(assert (=> d!447985 d!448103))

(declare-fun d!448105 () Bool)

(assert (=> d!448105 (= (inv!21316 (xs!8220 (c!247983 totalInput!458))) (<= (size!13000 (innerList!5499 (xs!8220 (c!247983 totalInput!458)))) 2147483647))))

(declare-fun bs!364508 () Bool)

(assert (= bs!364508 d!448105))

(declare-fun m!1777565 () Bool)

(assert (=> bs!364508 m!1777565))

(assert (=> b!1513220 d!448105))

(declare-fun d!448107 () Bool)

(assert (=> d!448107 (= (inv!21316 (xs!8220 (c!247983 treated!70))) (<= (size!13000 (innerList!5499 (xs!8220 (c!247983 treated!70)))) 2147483647))))

(declare-fun bs!364509 () Bool)

(assert (= bs!364509 d!448107))

(declare-fun m!1777567 () Bool)

(assert (=> bs!364509 m!1777567))

(assert (=> b!1513265 d!448107))

(declare-fun bs!364510 () Bool)

(declare-fun d!448109 () Bool)

(assert (= bs!364510 (and d!448109 d!448059)))

(declare-fun lambda!64527 () Int)

(assert (=> bs!364510 (= lambda!64527 lambda!64515)))

(declare-fun bs!364511 () Bool)

(assert (= bs!364511 (and d!448109 d!448055)))

(assert (=> bs!364511 (= lambda!64527 lambda!64514)))

(declare-fun bs!364512 () Bool)

(assert (= bs!364512 (and d!448109 d!448089)))

(assert (=> bs!364512 (= lambda!64527 lambda!64521)))

(declare-fun bs!364513 () Bool)

(assert (= bs!364513 (and d!448109 d!448075)))

(assert (=> bs!364513 (= lambda!64527 lambda!64517)))

(declare-fun bs!364514 () Bool)

(assert (= bs!364514 (and d!448109 d!448063)))

(assert (=> bs!364514 (= lambda!64527 lambda!64516)))

(declare-fun bs!364515 () Bool)

(assert (= bs!364515 (and d!448109 d!448101)))

(assert (=> bs!364515 (= lambda!64527 lambda!64523)))

(declare-fun bs!364516 () Bool)

(assert (= bs!364516 (and d!448109 d!448049)))

(assert (=> bs!364516 (= lambda!64527 lambda!64513)))

(declare-fun bs!364517 () Bool)

(assert (= bs!364517 (and d!448109 d!448047)))

(assert (=> bs!364517 (= lambda!64527 lambda!64512)))

(declare-fun bs!364518 () Bool)

(assert (= bs!364518 (and d!448109 d!448099)))

(assert (=> bs!364518 (= lambda!64527 lambda!64522)))

(assert (=> d!448109 (= (inv!21315 (_1!8489 (_1!8490 (h!21476 mapValue!7004)))) (forall!3856 (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapValue!7004)))) lambda!64527))))

(declare-fun bs!364519 () Bool)

(assert (= bs!364519 d!448109))

(declare-fun m!1777569 () Bool)

(assert (=> bs!364519 m!1777569))

(assert (=> b!1513170 d!448109))

(declare-fun d!448111 () Bool)

(declare-fun lt!526221 () Int)

(assert (=> d!448111 (= lt!526221 (size!13003 (list!6347 (_1!8486 lt!526166))))))

(assert (=> d!448111 (= lt!526221 (size!13002 (c!247985 (_1!8486 lt!526166))))))

(assert (=> d!448111 (= (size!12999 (_1!8486 lt!526166)) lt!526221)))

(declare-fun bs!364520 () Bool)

(assert (= bs!364520 d!448111))

(assert (=> bs!364520 m!1777198))

(assert (=> bs!364520 m!1777198))

(declare-fun m!1777571 () Bool)

(assert (=> bs!364520 m!1777571))

(declare-fun m!1777573 () Bool)

(assert (=> bs!364520 m!1777573))

(assert (=> d!447967 d!448111))

(declare-fun b!1513430 () Bool)

(declare-fun e!967841 () Bool)

(declare-fun lt!526223 () Option!2930)

(assert (=> b!1513430 (= e!967841 (= (list!6348 (_2!8494 (get!4738 lt!526223))) (_2!8495 (get!4739 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 totalInput!458))))))))

(declare-fun b!1513431 () Bool)

(declare-fun e!967842 () Bool)

(declare-fun e!967843 () Bool)

(assert (=> b!1513431 (= e!967842 e!967843)))

(declare-fun res!680910 () Bool)

(assert (=> b!1513431 (=> res!680910 e!967843)))

(assert (=> b!1513431 (= res!680910 (not (isDefined!2355 lt!526223)))))

(declare-fun b!1513432 () Bool)

(declare-fun e!967845 () Option!2930)

(declare-fun call!100385 () Option!2930)

(assert (=> b!1513432 (= e!967845 call!100385)))

(declare-fun d!448113 () Bool)

(assert (=> d!448113 e!967842))

(declare-fun res!680909 () Bool)

(assert (=> d!448113 (=> (not res!680909) (not e!967842))))

(assert (=> d!448113 (= res!680909 (= (isDefined!2355 lt!526223) (isDefined!2356 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 totalInput!458)))))))

(assert (=> d!448113 (= lt!526223 e!967845)))

(declare-fun c!248047 () Bool)

(assert (=> d!448113 (= c!248047 (and ((_ is Cons!16072) rules!1640) ((_ is Nil!16072) (t!139418 rules!1640))))))

(declare-fun lt!526224 () Unit!25745)

(declare-fun lt!526225 () Unit!25745)

(assert (=> d!448113 (= lt!526224 lt!526225)))

(declare-fun lt!526226 () List!16138)

(declare-fun lt!526222 () List!16138)

(assert (=> d!448113 (isPrefix!1219 lt!526226 lt!526222)))

(assert (=> d!448113 (= lt!526225 (lemmaIsPrefixRefl!849 lt!526226 lt!526222))))

(assert (=> d!448113 (= lt!526222 (list!6348 totalInput!458))))

(assert (=> d!448113 (= lt!526226 (list!6348 totalInput!458))))

(assert (=> d!448113 (rulesValidInductive!857 thiss!13241 rules!1640)))

(assert (=> d!448113 (= (maxPrefixZipperSequence!589 thiss!13241 rules!1640 totalInput!458) lt!526223)))

(declare-fun b!1513433 () Bool)

(declare-fun res!680908 () Bool)

(assert (=> b!1513433 (=> (not res!680908) (not e!967842))))

(declare-fun e!967846 () Bool)

(assert (=> b!1513433 (= res!680908 e!967846)))

(declare-fun res!680907 () Bool)

(assert (=> b!1513433 (=> res!680907 e!967846)))

(assert (=> b!1513433 (= res!680907 (not (isDefined!2355 lt!526223)))))

(declare-fun e!967844 () Bool)

(declare-fun b!1513434 () Bool)

(assert (=> b!1513434 (= e!967844 (= (list!6348 (_2!8494 (get!4738 lt!526223))) (_2!8495 (get!4739 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 totalInput!458))))))))

(declare-fun b!1513435 () Bool)

(assert (=> b!1513435 (= e!967843 e!967844)))

(declare-fun res!680911 () Bool)

(assert (=> b!1513435 (=> (not res!680911) (not e!967844))))

(assert (=> b!1513435 (= res!680911 (= (_1!8494 (get!4738 lt!526223)) (_1!8495 (get!4739 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 totalInput!458))))))))

(declare-fun bm!100380 () Bool)

(assert (=> bm!100380 (= call!100385 (maxPrefixOneRuleZipperSequence!279 thiss!13241 (h!21473 rules!1640) totalInput!458))))

(declare-fun b!1513436 () Bool)

(declare-fun lt!526227 () Option!2930)

(declare-fun lt!526228 () Option!2930)

(assert (=> b!1513436 (= e!967845 (ite (and ((_ is None!2929) lt!526227) ((_ is None!2929) lt!526228)) None!2929 (ite ((_ is None!2929) lt!526228) lt!526227 (ite ((_ is None!2929) lt!526227) lt!526228 (ite (>= (size!12993 (_1!8494 (v!22888 lt!526227))) (size!12993 (_1!8494 (v!22888 lt!526228)))) lt!526227 lt!526228)))))))

(assert (=> b!1513436 (= lt!526227 call!100385)))

(assert (=> b!1513436 (= lt!526228 (maxPrefixZipperSequence!589 thiss!13241 (t!139418 rules!1640) totalInput!458))))

(declare-fun b!1513437 () Bool)

(assert (=> b!1513437 (= e!967846 e!967841)))

(declare-fun res!680912 () Bool)

(assert (=> b!1513437 (=> (not res!680912) (not e!967841))))

(assert (=> b!1513437 (= res!680912 (= (_1!8494 (get!4738 lt!526223)) (_1!8495 (get!4739 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 totalInput!458))))))))

(assert (= (and d!448113 c!248047) b!1513432))

(assert (= (and d!448113 (not c!248047)) b!1513436))

(assert (= (or b!1513432 b!1513436) bm!100380))

(assert (= (and d!448113 res!680909) b!1513433))

(assert (= (and b!1513433 (not res!680907)) b!1513437))

(assert (= (and b!1513437 res!680912) b!1513430))

(assert (= (and b!1513433 res!680908) b!1513431))

(assert (= (and b!1513431 (not res!680910)) b!1513435))

(assert (= (and b!1513435 res!680911) b!1513434))

(declare-fun m!1777575 () Bool)

(assert (=> b!1513434 m!1777575))

(declare-fun m!1777577 () Bool)

(assert (=> b!1513434 m!1777577))

(declare-fun m!1777579 () Bool)

(assert (=> b!1513434 m!1777579))

(declare-fun m!1777581 () Bool)

(assert (=> b!1513434 m!1777581))

(assert (=> b!1513434 m!1777108))

(assert (=> b!1513434 m!1777579))

(assert (=> b!1513434 m!1777108))

(assert (=> b!1513437 m!1777577))

(assert (=> b!1513437 m!1777108))

(assert (=> b!1513437 m!1777108))

(declare-fun m!1777583 () Bool)

(assert (=> b!1513437 m!1777583))

(assert (=> b!1513437 m!1777583))

(declare-fun m!1777585 () Bool)

(assert (=> b!1513437 m!1777585))

(declare-fun m!1777587 () Bool)

(assert (=> b!1513431 m!1777587))

(assert (=> b!1513433 m!1777587))

(assert (=> b!1513430 m!1777575))

(assert (=> b!1513430 m!1777108))

(assert (=> b!1513430 m!1777583))

(assert (=> b!1513430 m!1777577))

(assert (=> b!1513430 m!1777583))

(assert (=> b!1513430 m!1777585))

(assert (=> b!1513430 m!1777108))

(assert (=> d!448113 m!1777108))

(assert (=> d!448113 m!1777583))

(assert (=> d!448113 m!1777587))

(declare-fun m!1777589 () Bool)

(assert (=> d!448113 m!1777589))

(assert (=> d!448113 m!1777583))

(declare-fun m!1777591 () Bool)

(assert (=> d!448113 m!1777591))

(assert (=> d!448113 m!1777108))

(declare-fun m!1777593 () Bool)

(assert (=> d!448113 m!1777593))

(assert (=> d!448113 m!1777498))

(declare-fun m!1777595 () Bool)

(assert (=> bm!100380 m!1777595))

(assert (=> b!1513435 m!1777577))

(assert (=> b!1513435 m!1777108))

(assert (=> b!1513435 m!1777108))

(assert (=> b!1513435 m!1777579))

(assert (=> b!1513435 m!1777579))

(assert (=> b!1513435 m!1777581))

(declare-fun m!1777597 () Bool)

(assert (=> b!1513436 m!1777597))

(assert (=> d!447967 d!448113))

(declare-fun d!448115 () Bool)

(assert (=> d!448115 (= (list!6348 (_2!8486 lt!526163)) (list!6350 (c!247983 (_2!8486 lt!526163))))))

(declare-fun bs!364521 () Bool)

(assert (= bs!364521 d!448115))

(declare-fun m!1777599 () Bool)

(assert (=> bs!364521 m!1777599))

(assert (=> b!1513032 d!448115))

(declare-fun b!1513448 () Bool)

(declare-fun e!967853 () Bool)

(declare-fun lt!526236 () tuple2!14948)

(assert (=> b!1513448 (= e!967853 (= (_2!8493 lt!526236) (list!6348 input!1102)))))

(declare-fun b!1513449 () Bool)

(declare-fun e!967855 () tuple2!14948)

(declare-fun lt!526237 () Option!2931)

(declare-fun lt!526235 () tuple2!14948)

(assert (=> b!1513449 (= e!967855 (tuple2!14949 (Cons!16071 (_1!8495 (v!22890 lt!526237)) (_1!8493 lt!526235)) (_2!8493 lt!526235)))))

(assert (=> b!1513449 (= lt!526235 (lexList!747 thiss!13241 rules!1640 (_2!8495 (v!22890 lt!526237))))))

(declare-fun b!1513450 () Bool)

(assert (=> b!1513450 (= e!967855 (tuple2!14949 Nil!16071 (list!6348 input!1102)))))

(declare-fun b!1513451 () Bool)

(declare-fun e!967854 () Bool)

(assert (=> b!1513451 (= e!967853 e!967854)))

(declare-fun res!680915 () Bool)

(assert (=> b!1513451 (= res!680915 (< (size!13000 (_2!8493 lt!526236)) (size!13000 (list!6348 input!1102))))))

(assert (=> b!1513451 (=> (not res!680915) (not e!967854))))

(declare-fun b!1513452 () Bool)

(assert (=> b!1513452 (= e!967854 (not (isEmpty!9933 (_1!8493 lt!526236))))))

(declare-fun d!448117 () Bool)

(assert (=> d!448117 e!967853))

(declare-fun c!248053 () Bool)

(assert (=> d!448117 (= c!248053 (> (size!13003 (_1!8493 lt!526236)) 0))))

(assert (=> d!448117 (= lt!526236 e!967855)))

(declare-fun c!248052 () Bool)

(assert (=> d!448117 (= c!248052 ((_ is Some!2930) lt!526237))))

(assert (=> d!448117 (= lt!526237 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 input!1102)))))

(assert (=> d!448117 (= (lexList!747 thiss!13241 rules!1640 (list!6348 input!1102)) lt!526236)))

(assert (= (and d!448117 c!248052) b!1513449))

(assert (= (and d!448117 (not c!248052)) b!1513450))

(assert (= (and d!448117 c!248053) b!1513451))

(assert (= (and d!448117 (not c!248053)) b!1513448))

(assert (= (and b!1513451 res!680915) b!1513452))

(declare-fun m!1777601 () Bool)

(assert (=> b!1513449 m!1777601))

(declare-fun m!1777603 () Bool)

(assert (=> b!1513451 m!1777603))

(assert (=> b!1513451 m!1777112))

(assert (=> b!1513451 m!1777252))

(declare-fun m!1777605 () Bool)

(assert (=> b!1513452 m!1777605))

(declare-fun m!1777607 () Bool)

(assert (=> d!448117 m!1777607))

(assert (=> d!448117 m!1777112))

(declare-fun m!1777609 () Bool)

(assert (=> d!448117 m!1777609))

(assert (=> b!1513032 d!448117))

(assert (=> b!1513032 d!448007))

(declare-fun bs!364522 () Bool)

(declare-fun d!448119 () Bool)

(assert (= bs!364522 (and d!448119 d!448059)))

(declare-fun lambda!64528 () Int)

(assert (=> bs!364522 (= lambda!64528 lambda!64515)))

(declare-fun bs!364523 () Bool)

(assert (= bs!364523 (and d!448119 d!448109)))

(assert (=> bs!364523 (= lambda!64528 lambda!64527)))

(declare-fun bs!364524 () Bool)

(assert (= bs!364524 (and d!448119 d!448055)))

(assert (=> bs!364524 (= lambda!64528 lambda!64514)))

(declare-fun bs!364525 () Bool)

(assert (= bs!364525 (and d!448119 d!448089)))

(assert (=> bs!364525 (= lambda!64528 lambda!64521)))

(declare-fun bs!364526 () Bool)

(assert (= bs!364526 (and d!448119 d!448075)))

(assert (=> bs!364526 (= lambda!64528 lambda!64517)))

(declare-fun bs!364527 () Bool)

(assert (= bs!364527 (and d!448119 d!448063)))

(assert (=> bs!364527 (= lambda!64528 lambda!64516)))

(declare-fun bs!364528 () Bool)

(assert (= bs!364528 (and d!448119 d!448101)))

(assert (=> bs!364528 (= lambda!64528 lambda!64523)))

(declare-fun bs!364529 () Bool)

(assert (= bs!364529 (and d!448119 d!448049)))

(assert (=> bs!364529 (= lambda!64528 lambda!64513)))

(declare-fun bs!364530 () Bool)

(assert (= bs!364530 (and d!448119 d!448047)))

(assert (=> bs!364530 (= lambda!64528 lambda!64512)))

(declare-fun bs!364531 () Bool)

(assert (= bs!364531 (and d!448119 d!448099)))

(assert (=> bs!364531 (= lambda!64528 lambda!64522)))

(assert (=> d!448119 (= (inv!21315 (_2!8491 (_1!8492 (h!21477 mapValue!7002)))) (forall!3856 (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapValue!7002)))) lambda!64528))))

(declare-fun bs!364532 () Bool)

(assert (= bs!364532 d!448119))

(declare-fun m!1777611 () Bool)

(assert (=> bs!364532 m!1777611))

(assert (=> b!1513243 d!448119))

(declare-fun bs!364533 () Bool)

(declare-fun d!448121 () Bool)

(assert (= bs!364533 (and d!448121 d!448059)))

(declare-fun lambda!64529 () Int)

(assert (=> bs!364533 (= lambda!64529 lambda!64515)))

(declare-fun bs!364534 () Bool)

(assert (= bs!364534 (and d!448121 d!448109)))

(assert (=> bs!364534 (= lambda!64529 lambda!64527)))

(declare-fun bs!364535 () Bool)

(assert (= bs!364535 (and d!448121 d!448055)))

(assert (=> bs!364535 (= lambda!64529 lambda!64514)))

(declare-fun bs!364536 () Bool)

(assert (= bs!364536 (and d!448121 d!448089)))

(assert (=> bs!364536 (= lambda!64529 lambda!64521)))

(declare-fun bs!364537 () Bool)

(assert (= bs!364537 (and d!448121 d!448075)))

(assert (=> bs!364537 (= lambda!64529 lambda!64517)))

(declare-fun bs!364538 () Bool)

(assert (= bs!364538 (and d!448121 d!448063)))

(assert (=> bs!364538 (= lambda!64529 lambda!64516)))

(declare-fun bs!364539 () Bool)

(assert (= bs!364539 (and d!448121 d!448101)))

(assert (=> bs!364539 (= lambda!64529 lambda!64523)))

(declare-fun bs!364540 () Bool)

(assert (= bs!364540 (and d!448121 d!448049)))

(assert (=> bs!364540 (= lambda!64529 lambda!64513)))

(declare-fun bs!364541 () Bool)

(assert (= bs!364541 (and d!448121 d!448119)))

(assert (=> bs!364541 (= lambda!64529 lambda!64528)))

(declare-fun bs!364542 () Bool)

(assert (= bs!364542 (and d!448121 d!448047)))

(assert (=> bs!364542 (= lambda!64529 lambda!64512)))

(declare-fun bs!364543 () Bool)

(assert (= bs!364543 (and d!448121 d!448099)))

(assert (=> bs!364543 (= lambda!64529 lambda!64522)))

(assert (=> d!448121 (= (inv!21315 setElem!9137) (forall!3856 (exprs!1177 setElem!9137) lambda!64529))))

(declare-fun bs!364544 () Bool)

(assert (= bs!364544 d!448121))

(declare-fun m!1777613 () Bool)

(assert (=> bs!364544 m!1777613))

(assert (=> setNonEmpty!9137 d!448121))

(declare-fun d!448123 () Bool)

(declare-fun lt!526238 () Bool)

(assert (=> d!448123 (= lt!526238 (isEmpty!9933 (list!6347 (_1!8486 lt!526163))))))

(assert (=> d!448123 (= lt!526238 (isEmpty!9934 (c!247985 (_1!8486 lt!526163))))))

(assert (=> d!448123 (= (isEmpty!9931 (_1!8486 lt!526163)) lt!526238)))

(declare-fun bs!364545 () Bool)

(assert (= bs!364545 d!448123))

(assert (=> bs!364545 m!1777178))

(assert (=> bs!364545 m!1777178))

(declare-fun m!1777615 () Bool)

(assert (=> bs!364545 m!1777615))

(declare-fun m!1777617 () Bool)

(assert (=> bs!364545 m!1777617))

(assert (=> b!1513027 d!448123))

(declare-fun bs!364546 () Bool)

(declare-fun d!448125 () Bool)

(assert (= bs!364546 (and d!448125 d!448059)))

(declare-fun lambda!64530 () Int)

(assert (=> bs!364546 (= lambda!64530 lambda!64515)))

(declare-fun bs!364547 () Bool)

(assert (= bs!364547 (and d!448125 d!448055)))

(assert (=> bs!364547 (= lambda!64530 lambda!64514)))

(declare-fun bs!364548 () Bool)

(assert (= bs!364548 (and d!448125 d!448089)))

(assert (=> bs!364548 (= lambda!64530 lambda!64521)))

(declare-fun bs!364549 () Bool)

(assert (= bs!364549 (and d!448125 d!448075)))

(assert (=> bs!364549 (= lambda!64530 lambda!64517)))

(declare-fun bs!364550 () Bool)

(assert (= bs!364550 (and d!448125 d!448063)))

(assert (=> bs!364550 (= lambda!64530 lambda!64516)))

(declare-fun bs!364551 () Bool)

(assert (= bs!364551 (and d!448125 d!448101)))

(assert (=> bs!364551 (= lambda!64530 lambda!64523)))

(declare-fun bs!364552 () Bool)

(assert (= bs!364552 (and d!448125 d!448049)))

(assert (=> bs!364552 (= lambda!64530 lambda!64513)))

(declare-fun bs!364553 () Bool)

(assert (= bs!364553 (and d!448125 d!448121)))

(assert (=> bs!364553 (= lambda!64530 lambda!64529)))

(declare-fun bs!364554 () Bool)

(assert (= bs!364554 (and d!448125 d!448109)))

(assert (=> bs!364554 (= lambda!64530 lambda!64527)))

(declare-fun bs!364555 () Bool)

(assert (= bs!364555 (and d!448125 d!448119)))

(assert (=> bs!364555 (= lambda!64530 lambda!64528)))

(declare-fun bs!364556 () Bool)

(assert (= bs!364556 (and d!448125 d!448047)))

(assert (=> bs!364556 (= lambda!64530 lambda!64512)))

(declare-fun bs!364557 () Bool)

(assert (= bs!364557 (and d!448125 d!448099)))

(assert (=> bs!364557 (= lambda!64530 lambda!64522)))

(assert (=> d!448125 (= (inv!21315 (_1!8489 (_1!8490 (h!21476 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))) (forall!3856 (exprs!1177 (_1!8489 (_1!8490 (h!21476 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))) lambda!64530))))

(declare-fun bs!364558 () Bool)

(assert (= bs!364558 d!448125))

(declare-fun m!1777619 () Bool)

(assert (=> bs!364558 m!1777619))

(assert (=> b!1513173 d!448125))

(declare-fun d!448127 () Bool)

(declare-fun res!680916 () Bool)

(declare-fun e!967856 () Bool)

(assert (=> d!448127 (=> (not res!680916) (not e!967856))))

(assert (=> d!448127 (= res!680916 (<= (size!13000 (list!6351 (xs!8220 (c!247983 totalInput!458)))) 512))))

(assert (=> d!448127 (= (inv!21312 (c!247983 totalInput!458)) e!967856)))

(declare-fun b!1513453 () Bool)

(declare-fun res!680917 () Bool)

(assert (=> b!1513453 (=> (not res!680917) (not e!967856))))

(assert (=> b!1513453 (= res!680917 (= (csize!11109 (c!247983 totalInput!458)) (size!13000 (list!6351 (xs!8220 (c!247983 totalInput!458))))))))

(declare-fun b!1513454 () Bool)

(assert (=> b!1513454 (= e!967856 (and (> (csize!11109 (c!247983 totalInput!458)) 0) (<= (csize!11109 (c!247983 totalInput!458)) 512)))))

(assert (= (and d!448127 res!680916) b!1513453))

(assert (= (and b!1513453 res!680917) b!1513454))

(declare-fun m!1777621 () Bool)

(assert (=> d!448127 m!1777621))

(assert (=> d!448127 m!1777621))

(declare-fun m!1777623 () Bool)

(assert (=> d!448127 m!1777623))

(assert (=> b!1513453 m!1777621))

(assert (=> b!1513453 m!1777621))

(assert (=> b!1513453 m!1777623))

(assert (=> b!1513092 d!448127))

(declare-fun d!448129 () Bool)

(declare-fun c!248054 () Bool)

(assert (=> d!448129 (= c!248054 ((_ is Node!5439) (left!13363 (c!247983 treated!70))))))

(declare-fun e!967857 () Bool)

(assert (=> d!448129 (= (inv!21303 (left!13363 (c!247983 treated!70))) e!967857)))

(declare-fun b!1513455 () Bool)

(assert (=> b!1513455 (= e!967857 (inv!21311 (left!13363 (c!247983 treated!70))))))

(declare-fun b!1513456 () Bool)

(declare-fun e!967858 () Bool)

(assert (=> b!1513456 (= e!967857 e!967858)))

(declare-fun res!680918 () Bool)

(assert (=> b!1513456 (= res!680918 (not ((_ is Leaf!8064) (left!13363 (c!247983 treated!70)))))))

(assert (=> b!1513456 (=> res!680918 e!967858)))

(declare-fun b!1513457 () Bool)

(assert (=> b!1513457 (= e!967858 (inv!21312 (left!13363 (c!247983 treated!70))))))

(assert (= (and d!448129 c!248054) b!1513455))

(assert (= (and d!448129 (not c!248054)) b!1513456))

(assert (= (and b!1513456 (not res!680918)) b!1513457))

(declare-fun m!1777625 () Bool)

(assert (=> b!1513455 m!1777625))

(declare-fun m!1777627 () Bool)

(assert (=> b!1513457 m!1777627))

(assert (=> b!1513264 d!448129))

(declare-fun d!448131 () Bool)

(declare-fun c!248055 () Bool)

(assert (=> d!448131 (= c!248055 ((_ is Node!5439) (right!13693 (c!247983 treated!70))))))

(declare-fun e!967859 () Bool)

(assert (=> d!448131 (= (inv!21303 (right!13693 (c!247983 treated!70))) e!967859)))

(declare-fun b!1513458 () Bool)

(assert (=> b!1513458 (= e!967859 (inv!21311 (right!13693 (c!247983 treated!70))))))

(declare-fun b!1513459 () Bool)

(declare-fun e!967860 () Bool)

(assert (=> b!1513459 (= e!967859 e!967860)))

(declare-fun res!680919 () Bool)

(assert (=> b!1513459 (= res!680919 (not ((_ is Leaf!8064) (right!13693 (c!247983 treated!70)))))))

(assert (=> b!1513459 (=> res!680919 e!967860)))

(declare-fun b!1513460 () Bool)

(assert (=> b!1513460 (= e!967860 (inv!21312 (right!13693 (c!247983 treated!70))))))

(assert (= (and d!448131 c!248055) b!1513458))

(assert (= (and d!448131 (not c!248055)) b!1513459))

(assert (= (and b!1513459 (not res!680919)) b!1513460))

(declare-fun m!1777629 () Bool)

(assert (=> b!1513458 m!1777629))

(declare-fun m!1777631 () Bool)

(assert (=> b!1513460 m!1777631))

(assert (=> b!1513264 d!448131))

(declare-fun d!448133 () Bool)

(declare-fun c!248060 () Bool)

(assert (=> d!448133 (= c!248060 ((_ is Empty!5440) (c!247985 acc!392)))))

(declare-fun e!967865 () List!16139)

(assert (=> d!448133 (= (list!6349 (c!247985 acc!392)) e!967865)))

(declare-fun b!1513471 () Bool)

(declare-fun e!967866 () List!16139)

(declare-fun list!6352 (IArray!10885) List!16139)

(assert (=> b!1513471 (= e!967866 (list!6352 (xs!8221 (c!247985 acc!392))))))

(declare-fun b!1513470 () Bool)

(assert (=> b!1513470 (= e!967865 e!967866)))

(declare-fun c!248061 () Bool)

(assert (=> b!1513470 (= c!248061 ((_ is Leaf!8065) (c!247985 acc!392)))))

(declare-fun b!1513469 () Bool)

(assert (=> b!1513469 (= e!967865 Nil!16071)))

(declare-fun b!1513472 () Bool)

(assert (=> b!1513472 (= e!967866 (++!4360 (list!6349 (left!13364 (c!247985 acc!392))) (list!6349 (right!13694 (c!247985 acc!392)))))))

(assert (= (and d!448133 c!248060) b!1513469))

(assert (= (and d!448133 (not c!248060)) b!1513470))

(assert (= (and b!1513470 c!248061) b!1513471))

(assert (= (and b!1513470 (not c!248061)) b!1513472))

(declare-fun m!1777633 () Bool)

(assert (=> b!1513471 m!1777633))

(declare-fun m!1777635 () Bool)

(assert (=> b!1513472 m!1777635))

(declare-fun m!1777637 () Bool)

(assert (=> b!1513472 m!1777637))

(assert (=> b!1513472 m!1777635))

(assert (=> b!1513472 m!1777637))

(declare-fun m!1777639 () Bool)

(assert (=> b!1513472 m!1777639))

(assert (=> d!447979 d!448133))

(declare-fun d!448135 () Bool)

(declare-fun e!967869 () Bool)

(assert (=> d!448135 e!967869))

(declare-fun res!680922 () Bool)

(assert (=> d!448135 (=> (not res!680922) (not e!967869))))

(declare-fun prepend!466 (Conc!5440 Token!5350) Conc!5440)

(assert (=> d!448135 (= res!680922 (isBalanced!1609 (prepend!466 (c!247985 (_1!8486 lt!526167)) (_1!8494 (v!22888 lt!526165)))))))

(declare-fun lt!526241 () BalanceConc!10822)

(assert (=> d!448135 (= lt!526241 (BalanceConc!10823 (prepend!466 (c!247985 (_1!8486 lt!526167)) (_1!8494 (v!22888 lt!526165)))))))

(assert (=> d!448135 (= (prepend!465 (_1!8486 lt!526167) (_1!8494 (v!22888 lt!526165))) lt!526241)))

(declare-fun b!1513475 () Bool)

(assert (=> b!1513475 (= e!967869 (= (list!6347 lt!526241) (Cons!16071 (_1!8494 (v!22888 lt!526165)) (list!6347 (_1!8486 lt!526167)))))))

(assert (= (and d!448135 res!680922) b!1513475))

(declare-fun m!1777641 () Bool)

(assert (=> d!448135 m!1777641))

(assert (=> d!448135 m!1777641))

(declare-fun m!1777643 () Bool)

(assert (=> d!448135 m!1777643))

(declare-fun m!1777645 () Bool)

(assert (=> b!1513475 m!1777645))

(declare-fun m!1777647 () Bool)

(assert (=> b!1513475 m!1777647))

(assert (=> b!1513037 d!448135))

(declare-fun b!1513477 () Bool)

(declare-fun e!967871 () Bool)

(declare-fun e!967873 () Bool)

(assert (=> b!1513477 (= e!967871 e!967873)))

(declare-fun res!680924 () Bool)

(declare-fun lt!526243 () tuple2!14938)

(assert (=> b!1513477 (= res!680924 (< (size!12998 (_2!8486 lt!526243)) (size!12998 (_2!8494 (v!22888 lt!526165)))))))

(assert (=> b!1513477 (=> (not res!680924) (not e!967873))))

(declare-fun b!1513478 () Bool)

(declare-fun res!680925 () Bool)

(declare-fun e!967872 () Bool)

(assert (=> b!1513478 (=> (not res!680925) (not e!967872))))

(assert (=> b!1513478 (= res!680925 (= (list!6347 (_1!8486 lt!526243)) (_1!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 (_2!8494 (v!22888 lt!526165)))))))))

(declare-fun b!1513479 () Bool)

(declare-fun e!967870 () tuple2!14938)

(declare-fun lt!526244 () tuple2!14938)

(declare-fun lt!526242 () Option!2930)

(assert (=> b!1513479 (= e!967870 (tuple2!14939 (prepend!465 (_1!8486 lt!526244) (_1!8494 (v!22888 lt!526242))) (_2!8486 lt!526244)))))

(assert (=> b!1513479 (= lt!526244 (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526242))))))

(declare-fun b!1513480 () Bool)

(assert (=> b!1513480 (= e!967871 (= (list!6348 (_2!8486 lt!526243)) (list!6348 (_2!8494 (v!22888 lt!526165)))))))

(declare-fun d!448137 () Bool)

(assert (=> d!448137 e!967872))

(declare-fun res!680923 () Bool)

(assert (=> d!448137 (=> (not res!680923) (not e!967872))))

(assert (=> d!448137 (= res!680923 e!967871)))

(declare-fun c!248064 () Bool)

(assert (=> d!448137 (= c!248064 (> (size!12999 (_1!8486 lt!526243)) 0))))

(assert (=> d!448137 (= lt!526243 e!967870)))

(declare-fun c!248063 () Bool)

(assert (=> d!448137 (= c!248063 ((_ is Some!2929) lt!526242))))

(assert (=> d!448137 (= lt!526242 (maxPrefixZipperSequence!589 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526165))))))

(assert (=> d!448137 (= (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526165))) lt!526243)))

(declare-fun b!1513476 () Bool)

(assert (=> b!1513476 (= e!967873 (not (isEmpty!9931 (_1!8486 lt!526243))))))

(declare-fun b!1513481 () Bool)

(assert (=> b!1513481 (= e!967872 (= (list!6348 (_2!8486 lt!526243)) (_2!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 (_2!8494 (v!22888 lt!526165)))))))))

(declare-fun b!1513482 () Bool)

(assert (=> b!1513482 (= e!967870 (tuple2!14939 (BalanceConc!10823 Empty!5440) (_2!8494 (v!22888 lt!526165))))))

(assert (= (and d!448137 c!248063) b!1513479))

(assert (= (and d!448137 (not c!248063)) b!1513482))

(assert (= (and d!448137 c!248064) b!1513477))

(assert (= (and d!448137 (not c!248064)) b!1513480))

(assert (= (and b!1513477 res!680924) b!1513476))

(assert (= (and d!448137 res!680923) b!1513478))

(assert (= (and b!1513478 res!680925) b!1513481))

(declare-fun m!1777649 () Bool)

(assert (=> b!1513481 m!1777649))

(declare-fun m!1777651 () Bool)

(assert (=> b!1513481 m!1777651))

(assert (=> b!1513481 m!1777651))

(declare-fun m!1777653 () Bool)

(assert (=> b!1513481 m!1777653))

(declare-fun m!1777655 () Bool)

(assert (=> b!1513476 m!1777655))

(declare-fun m!1777657 () Bool)

(assert (=> b!1513477 m!1777657))

(declare-fun m!1777659 () Bool)

(assert (=> b!1513477 m!1777659))

(declare-fun m!1777661 () Bool)

(assert (=> b!1513479 m!1777661))

(declare-fun m!1777663 () Bool)

(assert (=> b!1513479 m!1777663))

(assert (=> b!1513480 m!1777649))

(assert (=> b!1513480 m!1777651))

(declare-fun m!1777665 () Bool)

(assert (=> d!448137 m!1777665))

(declare-fun m!1777667 () Bool)

(assert (=> d!448137 m!1777667))

(declare-fun m!1777669 () Bool)

(assert (=> b!1513478 m!1777669))

(assert (=> b!1513478 m!1777651))

(assert (=> b!1513478 m!1777651))

(assert (=> b!1513478 m!1777653))

(assert (=> b!1513037 d!448137))

(declare-fun bs!364559 () Bool)

(declare-fun d!448139 () Bool)

(assert (= bs!364559 (and d!448139 d!448125)))

(declare-fun lambda!64531 () Int)

(assert (=> bs!364559 (= lambda!64531 lambda!64530)))

(declare-fun bs!364560 () Bool)

(assert (= bs!364560 (and d!448139 d!448059)))

(assert (=> bs!364560 (= lambda!64531 lambda!64515)))

(declare-fun bs!364561 () Bool)

(assert (= bs!364561 (and d!448139 d!448055)))

(assert (=> bs!364561 (= lambda!64531 lambda!64514)))

(declare-fun bs!364562 () Bool)

(assert (= bs!364562 (and d!448139 d!448089)))

(assert (=> bs!364562 (= lambda!64531 lambda!64521)))

(declare-fun bs!364563 () Bool)

(assert (= bs!364563 (and d!448139 d!448075)))

(assert (=> bs!364563 (= lambda!64531 lambda!64517)))

(declare-fun bs!364564 () Bool)

(assert (= bs!364564 (and d!448139 d!448063)))

(assert (=> bs!364564 (= lambda!64531 lambda!64516)))

(declare-fun bs!364565 () Bool)

(assert (= bs!364565 (and d!448139 d!448101)))

(assert (=> bs!364565 (= lambda!64531 lambda!64523)))

(declare-fun bs!364566 () Bool)

(assert (= bs!364566 (and d!448139 d!448049)))

(assert (=> bs!364566 (= lambda!64531 lambda!64513)))

(declare-fun bs!364567 () Bool)

(assert (= bs!364567 (and d!448139 d!448121)))

(assert (=> bs!364567 (= lambda!64531 lambda!64529)))

(declare-fun bs!364568 () Bool)

(assert (= bs!364568 (and d!448139 d!448109)))

(assert (=> bs!364568 (= lambda!64531 lambda!64527)))

(declare-fun bs!364569 () Bool)

(assert (= bs!364569 (and d!448139 d!448119)))

(assert (=> bs!364569 (= lambda!64531 lambda!64528)))

(declare-fun bs!364570 () Bool)

(assert (= bs!364570 (and d!448139 d!448047)))

(assert (=> bs!364570 (= lambda!64531 lambda!64512)))

(declare-fun bs!364571 () Bool)

(assert (= bs!364571 (and d!448139 d!448099)))

(assert (=> bs!364571 (= lambda!64531 lambda!64522)))

(assert (=> d!448139 (= (inv!21315 (_1!8489 (_1!8490 (h!21476 mapValue!7010)))) (forall!3856 (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapValue!7010)))) lambda!64531))))

(declare-fun bs!364572 () Bool)

(assert (= bs!364572 d!448139))

(declare-fun m!1777671 () Bool)

(assert (=> bs!364572 m!1777671))

(assert (=> b!1513157 d!448139))

(declare-fun d!448141 () Bool)

(declare-fun c!248065 () Bool)

(assert (=> d!448141 (= c!248065 ((_ is Node!5439) (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(declare-fun e!967874 () Bool)

(assert (=> d!448141 (= (inv!21303 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) e!967874)))

(declare-fun b!1513483 () Bool)

(assert (=> b!1513483 (= e!967874 (inv!21311 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(declare-fun b!1513484 () Bool)

(declare-fun e!967875 () Bool)

(assert (=> b!1513484 (= e!967874 e!967875)))

(declare-fun res!680926 () Bool)

(assert (=> b!1513484 (= res!680926 (not ((_ is Leaf!8064) (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))))

(assert (=> b!1513484 (=> res!680926 e!967875)))

(declare-fun b!1513485 () Bool)

(assert (=> b!1513485 (= e!967875 (inv!21312 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(assert (= (and d!448141 c!248065) b!1513483))

(assert (= (and d!448141 (not c!248065)) b!1513484))

(assert (= (and b!1513484 (not res!680926)) b!1513485))

(declare-fun m!1777673 () Bool)

(assert (=> b!1513483 m!1777673))

(declare-fun m!1777675 () Bool)

(assert (=> b!1513485 m!1777675))

(assert (=> b!1513205 d!448141))

(declare-fun d!448143 () Bool)

(declare-fun c!248066 () Bool)

(assert (=> d!448143 (= c!248066 ((_ is Node!5439) (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(declare-fun e!967876 () Bool)

(assert (=> d!448143 (= (inv!21303 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) e!967876)))

(declare-fun b!1513486 () Bool)

(assert (=> b!1513486 (= e!967876 (inv!21311 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(declare-fun b!1513487 () Bool)

(declare-fun e!967877 () Bool)

(assert (=> b!1513487 (= e!967876 e!967877)))

(declare-fun res!680927 () Bool)

(assert (=> b!1513487 (= res!680927 (not ((_ is Leaf!8064) (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))))))

(assert (=> b!1513487 (=> res!680927 e!967877)))

(declare-fun b!1513488 () Bool)

(assert (=> b!1513488 (= e!967877 (inv!21312 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(assert (= (and d!448143 c!248066) b!1513486))

(assert (= (and d!448143 (not c!248066)) b!1513487))

(assert (= (and b!1513487 (not res!680927)) b!1513488))

(declare-fun m!1777677 () Bool)

(assert (=> b!1513486 m!1777677))

(declare-fun m!1777679 () Bool)

(assert (=> b!1513488 m!1777679))

(assert (=> b!1513205 d!448143))

(declare-fun d!448145 () Bool)

(declare-fun e!967878 () Bool)

(assert (=> d!448145 e!967878))

(declare-fun res!680928 () Bool)

(assert (=> d!448145 (=> (not res!680928) (not e!967878))))

(assert (=> d!448145 (= res!680928 (isBalanced!1609 (prepend!466 (c!247985 (_1!8486 lt!526173)) (_1!8494 (v!22888 lt!526171)))))))

(declare-fun lt!526245 () BalanceConc!10822)

(assert (=> d!448145 (= lt!526245 (BalanceConc!10823 (prepend!466 (c!247985 (_1!8486 lt!526173)) (_1!8494 (v!22888 lt!526171)))))))

(assert (=> d!448145 (= (prepend!465 (_1!8486 lt!526173) (_1!8494 (v!22888 lt!526171))) lt!526245)))

(declare-fun b!1513489 () Bool)

(assert (=> b!1513489 (= e!967878 (= (list!6347 lt!526245) (Cons!16071 (_1!8494 (v!22888 lt!526171)) (list!6347 (_1!8486 lt!526173)))))))

(assert (= (and d!448145 res!680928) b!1513489))

(declare-fun m!1777681 () Bool)

(assert (=> d!448145 m!1777681))

(assert (=> d!448145 m!1777681))

(declare-fun m!1777683 () Bool)

(assert (=> d!448145 m!1777683))

(declare-fun m!1777685 () Bool)

(assert (=> b!1513489 m!1777685))

(declare-fun m!1777687 () Bool)

(assert (=> b!1513489 m!1777687))

(assert (=> b!1513065 d!448145))

(declare-fun b!1513491 () Bool)

(declare-fun e!967880 () Bool)

(declare-fun e!967882 () Bool)

(assert (=> b!1513491 (= e!967880 e!967882)))

(declare-fun res!680930 () Bool)

(declare-fun lt!526247 () tuple2!14938)

(assert (=> b!1513491 (= res!680930 (< (size!12998 (_2!8486 lt!526247)) (size!12998 (_2!8494 (v!22888 lt!526171)))))))

(assert (=> b!1513491 (=> (not res!680930) (not e!967882))))

(declare-fun b!1513492 () Bool)

(declare-fun res!680931 () Bool)

(declare-fun e!967881 () Bool)

(assert (=> b!1513492 (=> (not res!680931) (not e!967881))))

(assert (=> b!1513492 (= res!680931 (= (list!6347 (_1!8486 lt!526247)) (_1!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 (_2!8494 (v!22888 lt!526171)))))))))

(declare-fun b!1513493 () Bool)

(declare-fun e!967879 () tuple2!14938)

(declare-fun lt!526248 () tuple2!14938)

(declare-fun lt!526246 () Option!2930)

(assert (=> b!1513493 (= e!967879 (tuple2!14939 (prepend!465 (_1!8486 lt!526248) (_1!8494 (v!22888 lt!526246))) (_2!8486 lt!526248)))))

(assert (=> b!1513493 (= lt!526248 (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526246))))))

(declare-fun b!1513494 () Bool)

(assert (=> b!1513494 (= e!967880 (= (list!6348 (_2!8486 lt!526247)) (list!6348 (_2!8494 (v!22888 lt!526171)))))))

(declare-fun d!448147 () Bool)

(assert (=> d!448147 e!967881))

(declare-fun res!680929 () Bool)

(assert (=> d!448147 (=> (not res!680929) (not e!967881))))

(assert (=> d!448147 (= res!680929 e!967880)))

(declare-fun c!248068 () Bool)

(assert (=> d!448147 (= c!248068 (> (size!12999 (_1!8486 lt!526247)) 0))))

(assert (=> d!448147 (= lt!526247 e!967879)))

(declare-fun c!248067 () Bool)

(assert (=> d!448147 (= c!248067 ((_ is Some!2929) lt!526246))))

(assert (=> d!448147 (= lt!526246 (maxPrefixZipperSequence!589 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526171))))))

(assert (=> d!448147 (= (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526171))) lt!526247)))

(declare-fun b!1513490 () Bool)

(assert (=> b!1513490 (= e!967882 (not (isEmpty!9931 (_1!8486 lt!526247))))))

(declare-fun b!1513495 () Bool)

(assert (=> b!1513495 (= e!967881 (= (list!6348 (_2!8486 lt!526247)) (_2!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 (_2!8494 (v!22888 lt!526171)))))))))

(declare-fun b!1513496 () Bool)

(assert (=> b!1513496 (= e!967879 (tuple2!14939 (BalanceConc!10823 Empty!5440) (_2!8494 (v!22888 lt!526171))))))

(assert (= (and d!448147 c!248067) b!1513493))

(assert (= (and d!448147 (not c!248067)) b!1513496))

(assert (= (and d!448147 c!248068) b!1513491))

(assert (= (and d!448147 (not c!248068)) b!1513494))

(assert (= (and b!1513491 res!680930) b!1513490))

(assert (= (and d!448147 res!680929) b!1513492))

(assert (= (and b!1513492 res!680931) b!1513495))

(declare-fun m!1777689 () Bool)

(assert (=> b!1513495 m!1777689))

(declare-fun m!1777691 () Bool)

(assert (=> b!1513495 m!1777691))

(assert (=> b!1513495 m!1777691))

(declare-fun m!1777693 () Bool)

(assert (=> b!1513495 m!1777693))

(declare-fun m!1777695 () Bool)

(assert (=> b!1513490 m!1777695))

(declare-fun m!1777697 () Bool)

(assert (=> b!1513491 m!1777697))

(declare-fun m!1777699 () Bool)

(assert (=> b!1513491 m!1777699))

(declare-fun m!1777701 () Bool)

(assert (=> b!1513493 m!1777701))

(declare-fun m!1777703 () Bool)

(assert (=> b!1513493 m!1777703))

(assert (=> b!1513494 m!1777689))

(assert (=> b!1513494 m!1777691))

(declare-fun m!1777705 () Bool)

(assert (=> d!448147 m!1777705))

(declare-fun m!1777707 () Bool)

(assert (=> d!448147 m!1777707))

(declare-fun m!1777709 () Bool)

(assert (=> b!1513492 m!1777709))

(assert (=> b!1513492 m!1777691))

(assert (=> b!1513492 m!1777691))

(assert (=> b!1513492 m!1777693))

(assert (=> b!1513065 d!448147))

(declare-fun bs!364573 () Bool)

(declare-fun d!448149 () Bool)

(assert (= bs!364573 (and d!448149 d!448125)))

(declare-fun lambda!64532 () Int)

(assert (=> bs!364573 (= lambda!64532 lambda!64530)))

(declare-fun bs!364574 () Bool)

(assert (= bs!364574 (and d!448149 d!448139)))

(assert (=> bs!364574 (= lambda!64532 lambda!64531)))

(declare-fun bs!364575 () Bool)

(assert (= bs!364575 (and d!448149 d!448059)))

(assert (=> bs!364575 (= lambda!64532 lambda!64515)))

(declare-fun bs!364576 () Bool)

(assert (= bs!364576 (and d!448149 d!448055)))

(assert (=> bs!364576 (= lambda!64532 lambda!64514)))

(declare-fun bs!364577 () Bool)

(assert (= bs!364577 (and d!448149 d!448089)))

(assert (=> bs!364577 (= lambda!64532 lambda!64521)))

(declare-fun bs!364578 () Bool)

(assert (= bs!364578 (and d!448149 d!448075)))

(assert (=> bs!364578 (= lambda!64532 lambda!64517)))

(declare-fun bs!364579 () Bool)

(assert (= bs!364579 (and d!448149 d!448063)))

(assert (=> bs!364579 (= lambda!64532 lambda!64516)))

(declare-fun bs!364580 () Bool)

(assert (= bs!364580 (and d!448149 d!448101)))

(assert (=> bs!364580 (= lambda!64532 lambda!64523)))

(declare-fun bs!364581 () Bool)

(assert (= bs!364581 (and d!448149 d!448049)))

(assert (=> bs!364581 (= lambda!64532 lambda!64513)))

(declare-fun bs!364582 () Bool)

(assert (= bs!364582 (and d!448149 d!448121)))

(assert (=> bs!364582 (= lambda!64532 lambda!64529)))

(declare-fun bs!364583 () Bool)

(assert (= bs!364583 (and d!448149 d!448109)))

(assert (=> bs!364583 (= lambda!64532 lambda!64527)))

(declare-fun bs!364584 () Bool)

(assert (= bs!364584 (and d!448149 d!448119)))

(assert (=> bs!364584 (= lambda!64532 lambda!64528)))

(declare-fun bs!364585 () Bool)

(assert (= bs!364585 (and d!448149 d!448047)))

(assert (=> bs!364585 (= lambda!64532 lambda!64512)))

(declare-fun bs!364586 () Bool)

(assert (= bs!364586 (and d!448149 d!448099)))

(assert (=> bs!364586 (= lambda!64532 lambda!64522)))

(assert (=> d!448149 (= (inv!21315 setElem!9127) (forall!3856 (exprs!1177 setElem!9127) lambda!64532))))

(declare-fun bs!364587 () Bool)

(assert (= bs!364587 d!448149))

(declare-fun m!1777711 () Bool)

(assert (=> bs!364587 m!1777711))

(assert (=> setNonEmpty!9127 d!448149))

(declare-fun d!448151 () Bool)

(assert (=> d!448151 true))

(declare-fun order!9545 () Int)

(declare-fun lambda!64535 () Int)

(declare-fun dynLambda!7223 (Int Int) Int)

(assert (=> d!448151 (< (dynLambda!7222 order!9543 (toValue!4193 (transformation!2844 (h!21473 rules!1640)))) (dynLambda!7223 order!9545 lambda!64535))))

(declare-fun Forall2!481 (Int) Bool)

(assert (=> d!448151 (= (equivClasses!1030 (toChars!4052 (transformation!2844 (h!21473 rules!1640))) (toValue!4193 (transformation!2844 (h!21473 rules!1640)))) (Forall2!481 lambda!64535))))

(declare-fun bs!364588 () Bool)

(assert (= bs!364588 d!448151))

(declare-fun m!1777713 () Bool)

(assert (=> bs!364588 m!1777713))

(assert (=> b!1513071 d!448151))

(declare-fun bs!364589 () Bool)

(declare-fun d!448153 () Bool)

(assert (= bs!364589 (and d!448153 d!448125)))

(declare-fun lambda!64536 () Int)

(assert (=> bs!364589 (= lambda!64536 lambda!64530)))

(declare-fun bs!364590 () Bool)

(assert (= bs!364590 (and d!448153 d!448139)))

(assert (=> bs!364590 (= lambda!64536 lambda!64531)))

(declare-fun bs!364591 () Bool)

(assert (= bs!364591 (and d!448153 d!448059)))

(assert (=> bs!364591 (= lambda!64536 lambda!64515)))

(declare-fun bs!364592 () Bool)

(assert (= bs!364592 (and d!448153 d!448055)))

(assert (=> bs!364592 (= lambda!64536 lambda!64514)))

(declare-fun bs!364593 () Bool)

(assert (= bs!364593 (and d!448153 d!448149)))

(assert (=> bs!364593 (= lambda!64536 lambda!64532)))

(declare-fun bs!364594 () Bool)

(assert (= bs!364594 (and d!448153 d!448089)))

(assert (=> bs!364594 (= lambda!64536 lambda!64521)))

(declare-fun bs!364595 () Bool)

(assert (= bs!364595 (and d!448153 d!448075)))

(assert (=> bs!364595 (= lambda!64536 lambda!64517)))

(declare-fun bs!364596 () Bool)

(assert (= bs!364596 (and d!448153 d!448063)))

(assert (=> bs!364596 (= lambda!64536 lambda!64516)))

(declare-fun bs!364597 () Bool)

(assert (= bs!364597 (and d!448153 d!448101)))

(assert (=> bs!364597 (= lambda!64536 lambda!64523)))

(declare-fun bs!364598 () Bool)

(assert (= bs!364598 (and d!448153 d!448049)))

(assert (=> bs!364598 (= lambda!64536 lambda!64513)))

(declare-fun bs!364599 () Bool)

(assert (= bs!364599 (and d!448153 d!448121)))

(assert (=> bs!364599 (= lambda!64536 lambda!64529)))

(declare-fun bs!364600 () Bool)

(assert (= bs!364600 (and d!448153 d!448109)))

(assert (=> bs!364600 (= lambda!64536 lambda!64527)))

(declare-fun bs!364601 () Bool)

(assert (= bs!364601 (and d!448153 d!448119)))

(assert (=> bs!364601 (= lambda!64536 lambda!64528)))

(declare-fun bs!364602 () Bool)

(assert (= bs!364602 (and d!448153 d!448047)))

(assert (=> bs!364602 (= lambda!64536 lambda!64512)))

(declare-fun bs!364603 () Bool)

(assert (= bs!364603 (and d!448153 d!448099)))

(assert (=> bs!364603 (= lambda!64536 lambda!64522)))

(assert (=> d!448153 (= (inv!21315 setElem!9116) (forall!3856 (exprs!1177 setElem!9116) lambda!64536))))

(declare-fun bs!364604 () Bool)

(assert (= bs!364604 d!448153))

(declare-fun m!1777715 () Bool)

(assert (=> bs!364604 m!1777715))

(assert (=> setNonEmpty!9116 d!448153))

(declare-fun d!448155 () Bool)

(declare-fun res!680940 () Bool)

(declare-fun e!967889 () Bool)

(assert (=> d!448155 (=> (not res!680940) (not e!967889))))

(declare-fun valid!1183 (MutableMap!1423) Bool)

(assert (=> d!448155 (= res!680940 (valid!1183 (cache!1804 cacheDown!629)))))

(assert (=> d!448155 (= (validCacheMapDown!135 (cache!1804 cacheDown!629)) e!967889)))

(declare-fun b!1513507 () Bool)

(declare-fun res!680941 () Bool)

(assert (=> b!1513507 (=> (not res!680941) (not e!967889))))

(declare-fun invariantList!221 (List!16144) Bool)

(declare-datatypes ((ListMap!491 0))(
  ( (ListMap!492 (toList!815 List!16144)) )
))
(declare-fun map!3423 (MutableMap!1423) ListMap!491)

(assert (=> b!1513507 (= res!680941 (invariantList!221 (toList!815 (map!3423 (cache!1804 cacheDown!629)))))))

(declare-fun b!1513508 () Bool)

(declare-fun lambda!64539 () Int)

(declare-fun forall!3858 (List!16144 Int) Bool)

(assert (=> b!1513508 (= e!967889 (forall!3858 (toList!815 (map!3423 (cache!1804 cacheDown!629))) lambda!64539))))

(assert (= (and d!448155 res!680940) b!1513507))

(assert (= (and b!1513507 res!680941) b!1513508))

(declare-fun m!1777718 () Bool)

(assert (=> d!448155 m!1777718))

(declare-fun m!1777720 () Bool)

(assert (=> b!1513507 m!1777720))

(declare-fun m!1777722 () Bool)

(assert (=> b!1513507 m!1777722))

(assert (=> b!1513508 m!1777720))

(declare-fun m!1777724 () Bool)

(assert (=> b!1513508 m!1777724))

(assert (=> b!1513110 d!448155))

(declare-fun bs!364605 () Bool)

(declare-fun d!448157 () Bool)

(assert (= bs!364605 (and d!448157 d!448125)))

(declare-fun lambda!64540 () Int)

(assert (=> bs!364605 (= lambda!64540 lambda!64530)))

(declare-fun bs!364606 () Bool)

(assert (= bs!364606 (and d!448157 d!448139)))

(assert (=> bs!364606 (= lambda!64540 lambda!64531)))

(declare-fun bs!364607 () Bool)

(assert (= bs!364607 (and d!448157 d!448059)))

(assert (=> bs!364607 (= lambda!64540 lambda!64515)))

(declare-fun bs!364608 () Bool)

(assert (= bs!364608 (and d!448157 d!448153)))

(assert (=> bs!364608 (= lambda!64540 lambda!64536)))

(declare-fun bs!364609 () Bool)

(assert (= bs!364609 (and d!448157 d!448055)))

(assert (=> bs!364609 (= lambda!64540 lambda!64514)))

(declare-fun bs!364610 () Bool)

(assert (= bs!364610 (and d!448157 d!448149)))

(assert (=> bs!364610 (= lambda!64540 lambda!64532)))

(declare-fun bs!364611 () Bool)

(assert (= bs!364611 (and d!448157 d!448089)))

(assert (=> bs!364611 (= lambda!64540 lambda!64521)))

(declare-fun bs!364612 () Bool)

(assert (= bs!364612 (and d!448157 d!448075)))

(assert (=> bs!364612 (= lambda!64540 lambda!64517)))

(declare-fun bs!364613 () Bool)

(assert (= bs!364613 (and d!448157 d!448063)))

(assert (=> bs!364613 (= lambda!64540 lambda!64516)))

(declare-fun bs!364614 () Bool)

(assert (= bs!364614 (and d!448157 d!448101)))

(assert (=> bs!364614 (= lambda!64540 lambda!64523)))

(declare-fun bs!364615 () Bool)

(assert (= bs!364615 (and d!448157 d!448049)))

(assert (=> bs!364615 (= lambda!64540 lambda!64513)))

(declare-fun bs!364616 () Bool)

(assert (= bs!364616 (and d!448157 d!448121)))

(assert (=> bs!364616 (= lambda!64540 lambda!64529)))

(declare-fun bs!364617 () Bool)

(assert (= bs!364617 (and d!448157 d!448109)))

(assert (=> bs!364617 (= lambda!64540 lambda!64527)))

(declare-fun bs!364618 () Bool)

(assert (= bs!364618 (and d!448157 d!448119)))

(assert (=> bs!364618 (= lambda!64540 lambda!64528)))

(declare-fun bs!364619 () Bool)

(assert (= bs!364619 (and d!448157 d!448047)))

(assert (=> bs!364619 (= lambda!64540 lambda!64512)))

(declare-fun bs!364620 () Bool)

(assert (= bs!364620 (and d!448157 d!448099)))

(assert (=> bs!364620 (= lambda!64540 lambda!64522)))

(assert (=> d!448157 (= (inv!21315 (_1!8489 (_1!8490 (h!21476 mapDefault!7002)))) (forall!3856 (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapDefault!7002)))) lambda!64540))))

(declare-fun bs!364621 () Bool)

(assert (= bs!364621 d!448157))

(declare-fun m!1777726 () Bool)

(assert (=> bs!364621 m!1777726))

(assert (=> b!1513190 d!448157))

(declare-fun bs!364622 () Bool)

(declare-fun d!448159 () Bool)

(assert (= bs!364622 (and d!448159 d!448125)))

(declare-fun lambda!64541 () Int)

(assert (=> bs!364622 (= lambda!64541 lambda!64530)))

(declare-fun bs!364623 () Bool)

(assert (= bs!364623 (and d!448159 d!448157)))

(assert (=> bs!364623 (= lambda!64541 lambda!64540)))

(declare-fun bs!364624 () Bool)

(assert (= bs!364624 (and d!448159 d!448139)))

(assert (=> bs!364624 (= lambda!64541 lambda!64531)))

(declare-fun bs!364625 () Bool)

(assert (= bs!364625 (and d!448159 d!448059)))

(assert (=> bs!364625 (= lambda!64541 lambda!64515)))

(declare-fun bs!364626 () Bool)

(assert (= bs!364626 (and d!448159 d!448153)))

(assert (=> bs!364626 (= lambda!64541 lambda!64536)))

(declare-fun bs!364627 () Bool)

(assert (= bs!364627 (and d!448159 d!448055)))

(assert (=> bs!364627 (= lambda!64541 lambda!64514)))

(declare-fun bs!364628 () Bool)

(assert (= bs!364628 (and d!448159 d!448149)))

(assert (=> bs!364628 (= lambda!64541 lambda!64532)))

(declare-fun bs!364629 () Bool)

(assert (= bs!364629 (and d!448159 d!448089)))

(assert (=> bs!364629 (= lambda!64541 lambda!64521)))

(declare-fun bs!364630 () Bool)

(assert (= bs!364630 (and d!448159 d!448075)))

(assert (=> bs!364630 (= lambda!64541 lambda!64517)))

(declare-fun bs!364631 () Bool)

(assert (= bs!364631 (and d!448159 d!448063)))

(assert (=> bs!364631 (= lambda!64541 lambda!64516)))

(declare-fun bs!364632 () Bool)

(assert (= bs!364632 (and d!448159 d!448101)))

(assert (=> bs!364632 (= lambda!64541 lambda!64523)))

(declare-fun bs!364633 () Bool)

(assert (= bs!364633 (and d!448159 d!448049)))

(assert (=> bs!364633 (= lambda!64541 lambda!64513)))

(declare-fun bs!364634 () Bool)

(assert (= bs!364634 (and d!448159 d!448121)))

(assert (=> bs!364634 (= lambda!64541 lambda!64529)))

(declare-fun bs!364635 () Bool)

(assert (= bs!364635 (and d!448159 d!448109)))

(assert (=> bs!364635 (= lambda!64541 lambda!64527)))

(declare-fun bs!364636 () Bool)

(assert (= bs!364636 (and d!448159 d!448119)))

(assert (=> bs!364636 (= lambda!64541 lambda!64528)))

(declare-fun bs!364637 () Bool)

(assert (= bs!364637 (and d!448159 d!448047)))

(assert (=> bs!364637 (= lambda!64541 lambda!64512)))

(declare-fun bs!364638 () Bool)

(assert (= bs!364638 (and d!448159 d!448099)))

(assert (=> bs!364638 (= lambda!64541 lambda!64522)))

(assert (=> d!448159 (= (inv!21315 (_2!8491 (_1!8492 (h!21477 mapDefault!7013)))) (forall!3856 (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapDefault!7013)))) lambda!64541))))

(declare-fun bs!364639 () Bool)

(assert (= bs!364639 d!448159))

(declare-fun m!1777728 () Bool)

(assert (=> bs!364639 m!1777728))

(assert (=> b!1513237 d!448159))

(declare-fun d!448161 () Bool)

(declare-fun res!680942 () Bool)

(declare-fun e!967890 () Bool)

(assert (=> d!448161 (=> (not res!680942) (not e!967890))))

(assert (=> d!448161 (= res!680942 (<= (size!13000 (list!6351 (xs!8220 (c!247983 treated!70)))) 512))))

(assert (=> d!448161 (= (inv!21312 (c!247983 treated!70)) e!967890)))

(declare-fun b!1513509 () Bool)

(declare-fun res!680943 () Bool)

(assert (=> b!1513509 (=> (not res!680943) (not e!967890))))

(assert (=> b!1513509 (= res!680943 (= (csize!11109 (c!247983 treated!70)) (size!13000 (list!6351 (xs!8220 (c!247983 treated!70))))))))

(declare-fun b!1513510 () Bool)

(assert (=> b!1513510 (= e!967890 (and (> (csize!11109 (c!247983 treated!70)) 0) (<= (csize!11109 (c!247983 treated!70)) 512)))))

(assert (= (and d!448161 res!680942) b!1513509))

(assert (= (and b!1513509 res!680943) b!1513510))

(assert (=> d!448161 m!1777434))

(assert (=> d!448161 m!1777434))

(declare-fun m!1777730 () Bool)

(assert (=> d!448161 m!1777730))

(assert (=> b!1513509 m!1777434))

(assert (=> b!1513509 m!1777434))

(assert (=> b!1513509 m!1777730))

(assert (=> b!1513104 d!448161))

(declare-fun b!1513523 () Bool)

(declare-fun e!967895 () Bool)

(assert (=> b!1513523 (= e!967895 (not (isEmpty!9934 (right!13694 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))))))))

(declare-fun b!1513524 () Bool)

(declare-fun res!680957 () Bool)

(assert (=> b!1513524 (=> (not res!680957) (not e!967895))))

(assert (=> b!1513524 (= res!680957 (<= (- (height!811 (left!13364 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))) (height!811 (right!13694 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))))) 1))))

(declare-fun b!1513525 () Bool)

(declare-fun res!680959 () Bool)

(assert (=> b!1513525 (=> (not res!680959) (not e!967895))))

(assert (=> b!1513525 (= res!680959 (isBalanced!1609 (left!13364 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))))))

(declare-fun d!448163 () Bool)

(declare-fun res!680961 () Bool)

(declare-fun e!967896 () Bool)

(assert (=> d!448163 (=> res!680961 e!967896)))

(assert (=> d!448163 (= res!680961 (not ((_ is Node!5440) (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))))))

(assert (=> d!448163 (= (isBalanced!1609 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))) e!967896)))

(declare-fun b!1513526 () Bool)

(declare-fun res!680960 () Bool)

(assert (=> b!1513526 (=> (not res!680960) (not e!967895))))

(assert (=> b!1513526 (= res!680960 (not (isEmpty!9934 (left!13364 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153)))))))))

(declare-fun b!1513527 () Bool)

(assert (=> b!1513527 (= e!967896 e!967895)))

(declare-fun res!680958 () Bool)

(assert (=> b!1513527 (=> (not res!680958) (not e!967895))))

(assert (=> b!1513527 (= res!680958 (<= (- 1) (- (height!811 (left!13364 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))) (height!811 (right!13694 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))))))))

(declare-fun b!1513528 () Bool)

(declare-fun res!680956 () Bool)

(assert (=> b!1513528 (=> (not res!680956) (not e!967895))))

(assert (=> b!1513528 (= res!680956 (isBalanced!1609 (right!13694 (++!4359 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))))))))

(assert (= (and d!448163 (not res!680961)) b!1513527))

(assert (= (and b!1513527 res!680958) b!1513524))

(assert (= (and b!1513524 res!680957) b!1513525))

(assert (= (and b!1513525 res!680959) b!1513528))

(assert (= (and b!1513528 res!680956) b!1513526))

(assert (= (and b!1513526 res!680960) b!1513523))

(declare-fun m!1777732 () Bool)

(assert (=> b!1513525 m!1777732))

(declare-fun m!1777734 () Bool)

(assert (=> b!1513527 m!1777734))

(declare-fun m!1777736 () Bool)

(assert (=> b!1513527 m!1777736))

(assert (=> b!1513524 m!1777734))

(assert (=> b!1513524 m!1777736))

(declare-fun m!1777738 () Bool)

(assert (=> b!1513528 m!1777738))

(declare-fun m!1777740 () Bool)

(assert (=> b!1513526 m!1777740))

(declare-fun m!1777742 () Bool)

(assert (=> b!1513523 m!1777742))

(assert (=> b!1513049 d!448163))

(assert (=> b!1513049 d!448081))

(declare-fun bs!364640 () Bool)

(declare-fun d!448165 () Bool)

(assert (= bs!364640 (and d!448165 d!448125)))

(declare-fun lambda!64542 () Int)

(assert (=> bs!364640 (= lambda!64542 lambda!64530)))

(declare-fun bs!364641 () Bool)

(assert (= bs!364641 (and d!448165 d!448157)))

(assert (=> bs!364641 (= lambda!64542 lambda!64540)))

(declare-fun bs!364642 () Bool)

(assert (= bs!364642 (and d!448165 d!448139)))

(assert (=> bs!364642 (= lambda!64542 lambda!64531)))

(declare-fun bs!364643 () Bool)

(assert (= bs!364643 (and d!448165 d!448059)))

(assert (=> bs!364643 (= lambda!64542 lambda!64515)))

(declare-fun bs!364644 () Bool)

(assert (= bs!364644 (and d!448165 d!448153)))

(assert (=> bs!364644 (= lambda!64542 lambda!64536)))

(declare-fun bs!364645 () Bool)

(assert (= bs!364645 (and d!448165 d!448055)))

(assert (=> bs!364645 (= lambda!64542 lambda!64514)))

(declare-fun bs!364646 () Bool)

(assert (= bs!364646 (and d!448165 d!448149)))

(assert (=> bs!364646 (= lambda!64542 lambda!64532)))

(declare-fun bs!364647 () Bool)

(assert (= bs!364647 (and d!448165 d!448159)))

(assert (=> bs!364647 (= lambda!64542 lambda!64541)))

(declare-fun bs!364648 () Bool)

(assert (= bs!364648 (and d!448165 d!448089)))

(assert (=> bs!364648 (= lambda!64542 lambda!64521)))

(declare-fun bs!364649 () Bool)

(assert (= bs!364649 (and d!448165 d!448075)))

(assert (=> bs!364649 (= lambda!64542 lambda!64517)))

(declare-fun bs!364650 () Bool)

(assert (= bs!364650 (and d!448165 d!448063)))

(assert (=> bs!364650 (= lambda!64542 lambda!64516)))

(declare-fun bs!364651 () Bool)

(assert (= bs!364651 (and d!448165 d!448101)))

(assert (=> bs!364651 (= lambda!64542 lambda!64523)))

(declare-fun bs!364652 () Bool)

(assert (= bs!364652 (and d!448165 d!448049)))

(assert (=> bs!364652 (= lambda!64542 lambda!64513)))

(declare-fun bs!364653 () Bool)

(assert (= bs!364653 (and d!448165 d!448121)))

(assert (=> bs!364653 (= lambda!64542 lambda!64529)))

(declare-fun bs!364654 () Bool)

(assert (= bs!364654 (and d!448165 d!448109)))

(assert (=> bs!364654 (= lambda!64542 lambda!64527)))

(declare-fun bs!364655 () Bool)

(assert (= bs!364655 (and d!448165 d!448119)))

(assert (=> bs!364655 (= lambda!64542 lambda!64528)))

(declare-fun bs!364656 () Bool)

(assert (= bs!364656 (and d!448165 d!448047)))

(assert (=> bs!364656 (= lambda!64542 lambda!64512)))

(declare-fun bs!364657 () Bool)

(assert (= bs!364657 (and d!448165 d!448099)))

(assert (=> bs!364657 (= lambda!64542 lambda!64522)))

(assert (=> d!448165 (= (inv!21315 setElem!9131) (forall!3856 (exprs!1177 setElem!9131) lambda!64542))))

(declare-fun bs!364658 () Bool)

(assert (= bs!364658 d!448165))

(declare-fun m!1777744 () Bool)

(assert (=> bs!364658 m!1777744))

(assert (=> setNonEmpty!9131 d!448165))

(declare-fun bs!364659 () Bool)

(declare-fun d!448167 () Bool)

(assert (= bs!364659 (and d!448167 d!448125)))

(declare-fun lambda!64543 () Int)

(assert (=> bs!364659 (= lambda!64543 lambda!64530)))

(declare-fun bs!364660 () Bool)

(assert (= bs!364660 (and d!448167 d!448157)))

(assert (=> bs!364660 (= lambda!64543 lambda!64540)))

(declare-fun bs!364661 () Bool)

(assert (= bs!364661 (and d!448167 d!448139)))

(assert (=> bs!364661 (= lambda!64543 lambda!64531)))

(declare-fun bs!364662 () Bool)

(assert (= bs!364662 (and d!448167 d!448165)))

(assert (=> bs!364662 (= lambda!64543 lambda!64542)))

(declare-fun bs!364663 () Bool)

(assert (= bs!364663 (and d!448167 d!448059)))

(assert (=> bs!364663 (= lambda!64543 lambda!64515)))

(declare-fun bs!364664 () Bool)

(assert (= bs!364664 (and d!448167 d!448153)))

(assert (=> bs!364664 (= lambda!64543 lambda!64536)))

(declare-fun bs!364665 () Bool)

(assert (= bs!364665 (and d!448167 d!448055)))

(assert (=> bs!364665 (= lambda!64543 lambda!64514)))

(declare-fun bs!364666 () Bool)

(assert (= bs!364666 (and d!448167 d!448149)))

(assert (=> bs!364666 (= lambda!64543 lambda!64532)))

(declare-fun bs!364667 () Bool)

(assert (= bs!364667 (and d!448167 d!448159)))

(assert (=> bs!364667 (= lambda!64543 lambda!64541)))

(declare-fun bs!364668 () Bool)

(assert (= bs!364668 (and d!448167 d!448089)))

(assert (=> bs!364668 (= lambda!64543 lambda!64521)))

(declare-fun bs!364669 () Bool)

(assert (= bs!364669 (and d!448167 d!448075)))

(assert (=> bs!364669 (= lambda!64543 lambda!64517)))

(declare-fun bs!364670 () Bool)

(assert (= bs!364670 (and d!448167 d!448063)))

(assert (=> bs!364670 (= lambda!64543 lambda!64516)))

(declare-fun bs!364671 () Bool)

(assert (= bs!364671 (and d!448167 d!448101)))

(assert (=> bs!364671 (= lambda!64543 lambda!64523)))

(declare-fun bs!364672 () Bool)

(assert (= bs!364672 (and d!448167 d!448049)))

(assert (=> bs!364672 (= lambda!64543 lambda!64513)))

(declare-fun bs!364673 () Bool)

(assert (= bs!364673 (and d!448167 d!448121)))

(assert (=> bs!364673 (= lambda!64543 lambda!64529)))

(declare-fun bs!364674 () Bool)

(assert (= bs!364674 (and d!448167 d!448109)))

(assert (=> bs!364674 (= lambda!64543 lambda!64527)))

(declare-fun bs!364675 () Bool)

(assert (= bs!364675 (and d!448167 d!448119)))

(assert (=> bs!364675 (= lambda!64543 lambda!64528)))

(declare-fun bs!364676 () Bool)

(assert (= bs!364676 (and d!448167 d!448047)))

(assert (=> bs!364676 (= lambda!64543 lambda!64512)))

(declare-fun bs!364677 () Bool)

(assert (= bs!364677 (and d!448167 d!448099)))

(assert (=> bs!364677 (= lambda!64543 lambda!64522)))

(assert (=> d!448167 (= (inv!21315 setElem!9110) (forall!3856 (exprs!1177 setElem!9110) lambda!64543))))

(declare-fun bs!364678 () Bool)

(assert (= bs!364678 d!448167))

(declare-fun m!1777746 () Bool)

(assert (=> bs!364678 m!1777746))

(assert (=> setNonEmpty!9110 d!448167))

(declare-fun d!448169 () Bool)

(assert (=> d!448169 (= (inv!21317 (xs!8221 (c!247985 acc!392))) (<= (size!13003 (innerList!5500 (xs!8221 (c!247985 acc!392)))) 2147483647))))

(declare-fun bs!364679 () Bool)

(assert (= bs!364679 d!448169))

(declare-fun m!1777748 () Bool)

(assert (=> bs!364679 m!1777748))

(assert (=> b!1513256 d!448169))

(declare-fun d!448171 () Bool)

(declare-fun res!680968 () Bool)

(declare-fun e!967899 () Bool)

(assert (=> d!448171 (=> (not res!680968) (not e!967899))))

(assert (=> d!448171 (= res!680968 (= (csize!11108 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) (+ (size!13001 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) (size!13001 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))))

(assert (=> d!448171 (= (inv!21311 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) e!967899)))

(declare-fun b!1513535 () Bool)

(declare-fun res!680969 () Bool)

(assert (=> b!1513535 (=> (not res!680969) (not e!967899))))

(assert (=> b!1513535 (= res!680969 (and (not (= (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) Empty!5439)) (not (= (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) Empty!5439))))))

(declare-fun b!1513536 () Bool)

(declare-fun res!680970 () Bool)

(assert (=> b!1513536 (=> (not res!680970) (not e!967899))))

(assert (=> b!1513536 (= res!680970 (= (cheight!5650 (c!247983 (totalInput!2296 cacheFurthestNullable!64))) (+ (max!0 (height!812 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) (height!812 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) 1)))))

(declare-fun b!1513537 () Bool)

(assert (=> b!1513537 (= e!967899 (<= 0 (cheight!5650 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))))

(assert (= (and d!448171 res!680968) b!1513535))

(assert (= (and b!1513535 res!680969) b!1513536))

(assert (= (and b!1513536 res!680970) b!1513537))

(declare-fun m!1777750 () Bool)

(assert (=> d!448171 m!1777750))

(declare-fun m!1777752 () Bool)

(assert (=> d!448171 m!1777752))

(assert (=> b!1513536 m!1777436))

(assert (=> b!1513536 m!1777438))

(assert (=> b!1513536 m!1777436))

(assert (=> b!1513536 m!1777438))

(declare-fun m!1777754 () Bool)

(assert (=> b!1513536 m!1777754))

(assert (=> b!1513072 d!448171))

(declare-fun bs!364680 () Bool)

(declare-fun d!448173 () Bool)

(assert (= bs!364680 (and d!448173 d!448125)))

(declare-fun lambda!64544 () Int)

(assert (=> bs!364680 (= lambda!64544 lambda!64530)))

(declare-fun bs!364681 () Bool)

(assert (= bs!364681 (and d!448173 d!448157)))

(assert (=> bs!364681 (= lambda!64544 lambda!64540)))

(declare-fun bs!364682 () Bool)

(assert (= bs!364682 (and d!448173 d!448139)))

(assert (=> bs!364682 (= lambda!64544 lambda!64531)))

(declare-fun bs!364683 () Bool)

(assert (= bs!364683 (and d!448173 d!448165)))

(assert (=> bs!364683 (= lambda!64544 lambda!64542)))

(declare-fun bs!364684 () Bool)

(assert (= bs!364684 (and d!448173 d!448059)))

(assert (=> bs!364684 (= lambda!64544 lambda!64515)))

(declare-fun bs!364685 () Bool)

(assert (= bs!364685 (and d!448173 d!448153)))

(assert (=> bs!364685 (= lambda!64544 lambda!64536)))

(declare-fun bs!364686 () Bool)

(assert (= bs!364686 (and d!448173 d!448055)))

(assert (=> bs!364686 (= lambda!64544 lambda!64514)))

(declare-fun bs!364687 () Bool)

(assert (= bs!364687 (and d!448173 d!448149)))

(assert (=> bs!364687 (= lambda!64544 lambda!64532)))

(declare-fun bs!364688 () Bool)

(assert (= bs!364688 (and d!448173 d!448159)))

(assert (=> bs!364688 (= lambda!64544 lambda!64541)))

(declare-fun bs!364689 () Bool)

(assert (= bs!364689 (and d!448173 d!448075)))

(assert (=> bs!364689 (= lambda!64544 lambda!64517)))

(declare-fun bs!364690 () Bool)

(assert (= bs!364690 (and d!448173 d!448063)))

(assert (=> bs!364690 (= lambda!64544 lambda!64516)))

(declare-fun bs!364691 () Bool)

(assert (= bs!364691 (and d!448173 d!448101)))

(assert (=> bs!364691 (= lambda!64544 lambda!64523)))

(declare-fun bs!364692 () Bool)

(assert (= bs!364692 (and d!448173 d!448049)))

(assert (=> bs!364692 (= lambda!64544 lambda!64513)))

(declare-fun bs!364693 () Bool)

(assert (= bs!364693 (and d!448173 d!448121)))

(assert (=> bs!364693 (= lambda!64544 lambda!64529)))

(declare-fun bs!364694 () Bool)

(assert (= bs!364694 (and d!448173 d!448109)))

(assert (=> bs!364694 (= lambda!64544 lambda!64527)))

(declare-fun bs!364695 () Bool)

(assert (= bs!364695 (and d!448173 d!448119)))

(assert (=> bs!364695 (= lambda!64544 lambda!64528)))

(declare-fun bs!364696 () Bool)

(assert (= bs!364696 (and d!448173 d!448047)))

(assert (=> bs!364696 (= lambda!64544 lambda!64512)))

(declare-fun bs!364697 () Bool)

(assert (= bs!364697 (and d!448173 d!448099)))

(assert (=> bs!364697 (= lambda!64544 lambda!64522)))

(declare-fun bs!364698 () Bool)

(assert (= bs!364698 (and d!448173 d!448167)))

(assert (=> bs!364698 (= lambda!64544 lambda!64543)))

(declare-fun bs!364699 () Bool)

(assert (= bs!364699 (and d!448173 d!448089)))

(assert (=> bs!364699 (= lambda!64544 lambda!64521)))

(assert (=> d!448173 (= (inv!21315 setElem!9114) (forall!3856 (exprs!1177 setElem!9114) lambda!64544))))

(declare-fun bs!364700 () Bool)

(assert (= bs!364700 d!448173))

(declare-fun m!1777756 () Bool)

(assert (=> bs!364700 m!1777756))

(assert (=> setNonEmpty!9114 d!448173))

(declare-fun d!448175 () Bool)

(declare-fun res!680975 () Bool)

(declare-fun e!967904 () Bool)

(assert (=> d!448175 (=> res!680975 e!967904)))

(assert (=> d!448175 (= res!680975 ((_ is Nil!16072) rules!1640))))

(assert (=> d!448175 (= (noDuplicateTag!1042 thiss!13241 rules!1640 Nil!16077) e!967904)))

(declare-fun b!1513542 () Bool)

(declare-fun e!967905 () Bool)

(assert (=> b!1513542 (= e!967904 e!967905)))

(declare-fun res!680976 () Bool)

(assert (=> b!1513542 (=> (not res!680976) (not e!967905))))

(declare-fun contains!2969 (List!16145 String!18932) Bool)

(assert (=> b!1513542 (= res!680976 (not (contains!2969 Nil!16077 (tag!3108 (h!21473 rules!1640)))))))

(declare-fun b!1513543 () Bool)

(assert (=> b!1513543 (= e!967905 (noDuplicateTag!1042 thiss!13241 (t!139418 rules!1640) (Cons!16077 (tag!3108 (h!21473 rules!1640)) Nil!16077)))))

(assert (= (and d!448175 (not res!680975)) b!1513542))

(assert (= (and b!1513542 res!680976) b!1513543))

(declare-fun m!1777758 () Bool)

(assert (=> b!1513542 m!1777758))

(declare-fun m!1777760 () Bool)

(assert (=> b!1513543 m!1777760))

(assert (=> b!1513089 d!448175))

(assert (=> b!1513004 d!448011))

(declare-fun d!448177 () Bool)

(assert (=> d!448177 (= (inv!21301 (tag!3108 (h!21473 (t!139418 rules!1640)))) (= (mod (str.len (value!90713 (tag!3108 (h!21473 (t!139418 rules!1640))))) 2) 0))))

(assert (=> b!1513276 d!448177))

(declare-fun d!448179 () Bool)

(declare-fun res!680977 () Bool)

(declare-fun e!967906 () Bool)

(assert (=> d!448179 (=> (not res!680977) (not e!967906))))

(assert (=> d!448179 (= res!680977 (semiInverseModEq!1071 (toChars!4052 (transformation!2844 (h!21473 (t!139418 rules!1640)))) (toValue!4193 (transformation!2844 (h!21473 (t!139418 rules!1640))))))))

(assert (=> d!448179 (= (inv!21309 (transformation!2844 (h!21473 (t!139418 rules!1640)))) e!967906)))

(declare-fun b!1513544 () Bool)

(assert (=> b!1513544 (= e!967906 (equivClasses!1030 (toChars!4052 (transformation!2844 (h!21473 (t!139418 rules!1640)))) (toValue!4193 (transformation!2844 (h!21473 (t!139418 rules!1640))))))))

(assert (= (and d!448179 res!680977) b!1513544))

(declare-fun m!1777762 () Bool)

(assert (=> d!448179 m!1777762))

(declare-fun m!1777764 () Bool)

(assert (=> b!1513544 m!1777764))

(assert (=> b!1513276 d!448179))

(declare-fun d!448181 () Bool)

(declare-fun res!680982 () Bool)

(declare-fun e!967909 () Bool)

(assert (=> d!448181 (=> (not res!680982) (not e!967909))))

(assert (=> d!448181 (= res!680982 (<= (size!13003 (list!6352 (xs!8221 (c!247985 acc!392)))) 512))))

(assert (=> d!448181 (= (inv!21314 (c!247985 acc!392)) e!967909)))

(declare-fun b!1513549 () Bool)

(declare-fun res!680983 () Bool)

(assert (=> b!1513549 (=> (not res!680983) (not e!967909))))

(assert (=> b!1513549 (= res!680983 (= (csize!11111 (c!247985 acc!392)) (size!13003 (list!6352 (xs!8221 (c!247985 acc!392))))))))

(declare-fun b!1513550 () Bool)

(assert (=> b!1513550 (= e!967909 (and (> (csize!11111 (c!247985 acc!392)) 0) (<= (csize!11111 (c!247985 acc!392)) 512)))))

(assert (= (and d!448181 res!680982) b!1513549))

(assert (= (and b!1513549 res!680983) b!1513550))

(assert (=> d!448181 m!1777633))

(assert (=> d!448181 m!1777633))

(declare-fun m!1777766 () Bool)

(assert (=> d!448181 m!1777766))

(assert (=> b!1513549 m!1777633))

(assert (=> b!1513549 m!1777633))

(assert (=> b!1513549 m!1777766))

(assert (=> b!1513101 d!448181))

(declare-fun d!448183 () Bool)

(declare-fun c!248069 () Bool)

(assert (=> d!448183 (= c!248069 ((_ is Node!5439) (left!13363 (c!247983 totalInput!458))))))

(declare-fun e!967910 () Bool)

(assert (=> d!448183 (= (inv!21303 (left!13363 (c!247983 totalInput!458))) e!967910)))

(declare-fun b!1513551 () Bool)

(assert (=> b!1513551 (= e!967910 (inv!21311 (left!13363 (c!247983 totalInput!458))))))

(declare-fun b!1513552 () Bool)

(declare-fun e!967911 () Bool)

(assert (=> b!1513552 (= e!967910 e!967911)))

(declare-fun res!680984 () Bool)

(assert (=> b!1513552 (= res!680984 (not ((_ is Leaf!8064) (left!13363 (c!247983 totalInput!458)))))))

(assert (=> b!1513552 (=> res!680984 e!967911)))

(declare-fun b!1513553 () Bool)

(assert (=> b!1513553 (= e!967911 (inv!21312 (left!13363 (c!247983 totalInput!458))))))

(assert (= (and d!448183 c!248069) b!1513551))

(assert (= (and d!448183 (not c!248069)) b!1513552))

(assert (= (and b!1513552 (not res!680984)) b!1513553))

(declare-fun m!1777768 () Bool)

(assert (=> b!1513551 m!1777768))

(declare-fun m!1777770 () Bool)

(assert (=> b!1513553 m!1777770))

(assert (=> b!1513219 d!448183))

(declare-fun d!448185 () Bool)

(declare-fun c!248070 () Bool)

(assert (=> d!448185 (= c!248070 ((_ is Node!5439) (right!13693 (c!247983 totalInput!458))))))

(declare-fun e!967912 () Bool)

(assert (=> d!448185 (= (inv!21303 (right!13693 (c!247983 totalInput!458))) e!967912)))

(declare-fun b!1513554 () Bool)

(assert (=> b!1513554 (= e!967912 (inv!21311 (right!13693 (c!247983 totalInput!458))))))

(declare-fun b!1513555 () Bool)

(declare-fun e!967913 () Bool)

(assert (=> b!1513555 (= e!967912 e!967913)))

(declare-fun res!680985 () Bool)

(assert (=> b!1513555 (= res!680985 (not ((_ is Leaf!8064) (right!13693 (c!247983 totalInput!458)))))))

(assert (=> b!1513555 (=> res!680985 e!967913)))

(declare-fun b!1513556 () Bool)

(assert (=> b!1513556 (= e!967913 (inv!21312 (right!13693 (c!247983 totalInput!458))))))

(assert (= (and d!448185 c!248070) b!1513554))

(assert (= (and d!448185 (not c!248070)) b!1513555))

(assert (= (and b!1513555 (not res!680985)) b!1513556))

(declare-fun m!1777772 () Bool)

(assert (=> b!1513554 m!1777772))

(declare-fun m!1777774 () Bool)

(assert (=> b!1513556 m!1777774))

(assert (=> b!1513219 d!448185))

(declare-fun d!448187 () Bool)

(declare-fun res!680986 () Bool)

(declare-fun e!967914 () Bool)

(assert (=> d!448187 (=> (not res!680986) (not e!967914))))

(assert (=> d!448187 (= res!680986 (= (csize!11108 (c!247983 input!1102)) (+ (size!13001 (left!13363 (c!247983 input!1102))) (size!13001 (right!13693 (c!247983 input!1102))))))))

(assert (=> d!448187 (= (inv!21311 (c!247983 input!1102)) e!967914)))

(declare-fun b!1513557 () Bool)

(declare-fun res!680987 () Bool)

(assert (=> b!1513557 (=> (not res!680987) (not e!967914))))

(assert (=> b!1513557 (= res!680987 (and (not (= (left!13363 (c!247983 input!1102)) Empty!5439)) (not (= (right!13693 (c!247983 input!1102)) Empty!5439))))))

(declare-fun b!1513558 () Bool)

(declare-fun res!680988 () Bool)

(assert (=> b!1513558 (=> (not res!680988) (not e!967914))))

(assert (=> b!1513558 (= res!680988 (= (cheight!5650 (c!247983 input!1102)) (+ (max!0 (height!812 (left!13363 (c!247983 input!1102))) (height!812 (right!13693 (c!247983 input!1102)))) 1)))))

(declare-fun b!1513559 () Bool)

(assert (=> b!1513559 (= e!967914 (<= 0 (cheight!5650 (c!247983 input!1102))))))

(assert (= (and d!448187 res!680986) b!1513557))

(assert (= (and b!1513557 res!680987) b!1513558))

(assert (= (and b!1513558 res!680988) b!1513559))

(declare-fun m!1777776 () Bool)

(assert (=> d!448187 m!1777776))

(declare-fun m!1777778 () Bool)

(assert (=> d!448187 m!1777778))

(declare-fun m!1777780 () Bool)

(assert (=> b!1513558 m!1777780))

(declare-fun m!1777782 () Bool)

(assert (=> b!1513558 m!1777782))

(assert (=> b!1513558 m!1777780))

(assert (=> b!1513558 m!1777782))

(declare-fun m!1777784 () Bool)

(assert (=> b!1513558 m!1777784))

(assert (=> b!1513059 d!448187))

(declare-fun d!448189 () Bool)

(declare-fun c!248073 () Bool)

(assert (=> d!448189 (= c!248073 ((_ is Nil!16070) lt!526179))))

(declare-fun e!967917 () (InoxSet C!8496))

(assert (=> d!448189 (= (content!2314 lt!526179) e!967917)))

(declare-fun b!1513564 () Bool)

(assert (=> b!1513564 (= e!967917 ((as const (Array C!8496 Bool)) false))))

(declare-fun b!1513565 () Bool)

(assert (=> b!1513565 (= e!967917 ((_ map or) (store ((as const (Array C!8496 Bool)) false) (h!21471 lt!526179) true) (content!2314 (t!139416 lt!526179))))))

(assert (= (and d!448189 c!248073) b!1513564))

(assert (= (and d!448189 (not c!248073)) b!1513565))

(declare-fun m!1777786 () Bool)

(assert (=> b!1513565 m!1777786))

(declare-fun m!1777788 () Bool)

(assert (=> b!1513565 m!1777788))

(assert (=> d!448003 d!448189))

(declare-fun d!448191 () Bool)

(declare-fun c!248074 () Bool)

(assert (=> d!448191 (= c!248074 ((_ is Nil!16070) (list!6348 treated!70)))))

(declare-fun e!967918 () (InoxSet C!8496))

(assert (=> d!448191 (= (content!2314 (list!6348 treated!70)) e!967918)))

(declare-fun b!1513566 () Bool)

(assert (=> b!1513566 (= e!967918 ((as const (Array C!8496 Bool)) false))))

(declare-fun b!1513567 () Bool)

(assert (=> b!1513567 (= e!967918 ((_ map or) (store ((as const (Array C!8496 Bool)) false) (h!21471 (list!6348 treated!70)) true) (content!2314 (t!139416 (list!6348 treated!70)))))))

(assert (= (and d!448191 c!248074) b!1513566))

(assert (= (and d!448191 (not c!248074)) b!1513567))

(declare-fun m!1777790 () Bool)

(assert (=> b!1513567 m!1777790))

(declare-fun m!1777792 () Bool)

(assert (=> b!1513567 m!1777792))

(assert (=> d!448003 d!448191))

(declare-fun d!448193 () Bool)

(declare-fun c!248075 () Bool)

(assert (=> d!448193 (= c!248075 ((_ is Nil!16070) (list!6348 input!1102)))))

(declare-fun e!967919 () (InoxSet C!8496))

(assert (=> d!448193 (= (content!2314 (list!6348 input!1102)) e!967919)))

(declare-fun b!1513568 () Bool)

(assert (=> b!1513568 (= e!967919 ((as const (Array C!8496 Bool)) false))))

(declare-fun b!1513569 () Bool)

(assert (=> b!1513569 (= e!967919 ((_ map or) (store ((as const (Array C!8496 Bool)) false) (h!21471 (list!6348 input!1102)) true) (content!2314 (t!139416 (list!6348 input!1102)))))))

(assert (= (and d!448193 c!248075) b!1513568))

(assert (= (and d!448193 (not c!248075)) b!1513569))

(declare-fun m!1777794 () Bool)

(assert (=> b!1513569 m!1777794))

(declare-fun m!1777796 () Bool)

(assert (=> b!1513569 m!1777796))

(assert (=> d!448003 d!448193))

(declare-fun bs!364701 () Bool)

(declare-fun d!448195 () Bool)

(assert (= bs!364701 (and d!448195 d!448125)))

(declare-fun lambda!64545 () Int)

(assert (=> bs!364701 (= lambda!64545 lambda!64530)))

(declare-fun bs!364702 () Bool)

(assert (= bs!364702 (and d!448195 d!448157)))

(assert (=> bs!364702 (= lambda!64545 lambda!64540)))

(declare-fun bs!364703 () Bool)

(assert (= bs!364703 (and d!448195 d!448139)))

(assert (=> bs!364703 (= lambda!64545 lambda!64531)))

(declare-fun bs!364704 () Bool)

(assert (= bs!364704 (and d!448195 d!448165)))

(assert (=> bs!364704 (= lambda!64545 lambda!64542)))

(declare-fun bs!364705 () Bool)

(assert (= bs!364705 (and d!448195 d!448059)))

(assert (=> bs!364705 (= lambda!64545 lambda!64515)))

(declare-fun bs!364706 () Bool)

(assert (= bs!364706 (and d!448195 d!448153)))

(assert (=> bs!364706 (= lambda!64545 lambda!64536)))

(declare-fun bs!364707 () Bool)

(assert (= bs!364707 (and d!448195 d!448173)))

(assert (=> bs!364707 (= lambda!64545 lambda!64544)))

(declare-fun bs!364708 () Bool)

(assert (= bs!364708 (and d!448195 d!448055)))

(assert (=> bs!364708 (= lambda!64545 lambda!64514)))

(declare-fun bs!364709 () Bool)

(assert (= bs!364709 (and d!448195 d!448149)))

(assert (=> bs!364709 (= lambda!64545 lambda!64532)))

(declare-fun bs!364710 () Bool)

(assert (= bs!364710 (and d!448195 d!448159)))

(assert (=> bs!364710 (= lambda!64545 lambda!64541)))

(declare-fun bs!364711 () Bool)

(assert (= bs!364711 (and d!448195 d!448075)))

(assert (=> bs!364711 (= lambda!64545 lambda!64517)))

(declare-fun bs!364712 () Bool)

(assert (= bs!364712 (and d!448195 d!448063)))

(assert (=> bs!364712 (= lambda!64545 lambda!64516)))

(declare-fun bs!364713 () Bool)

(assert (= bs!364713 (and d!448195 d!448101)))

(assert (=> bs!364713 (= lambda!64545 lambda!64523)))

(declare-fun bs!364714 () Bool)

(assert (= bs!364714 (and d!448195 d!448049)))

(assert (=> bs!364714 (= lambda!64545 lambda!64513)))

(declare-fun bs!364715 () Bool)

(assert (= bs!364715 (and d!448195 d!448121)))

(assert (=> bs!364715 (= lambda!64545 lambda!64529)))

(declare-fun bs!364716 () Bool)

(assert (= bs!364716 (and d!448195 d!448109)))

(assert (=> bs!364716 (= lambda!64545 lambda!64527)))

(declare-fun bs!364717 () Bool)

(assert (= bs!364717 (and d!448195 d!448119)))

(assert (=> bs!364717 (= lambda!64545 lambda!64528)))

(declare-fun bs!364718 () Bool)

(assert (= bs!364718 (and d!448195 d!448047)))

(assert (=> bs!364718 (= lambda!64545 lambda!64512)))

(declare-fun bs!364719 () Bool)

(assert (= bs!364719 (and d!448195 d!448099)))

(assert (=> bs!364719 (= lambda!64545 lambda!64522)))

(declare-fun bs!364720 () Bool)

(assert (= bs!364720 (and d!448195 d!448167)))

(assert (=> bs!364720 (= lambda!64545 lambda!64543)))

(declare-fun bs!364721 () Bool)

(assert (= bs!364721 (and d!448195 d!448089)))

(assert (=> bs!364721 (= lambda!64545 lambda!64521)))

(assert (=> d!448195 (= (inv!21315 setElem!9138) (forall!3856 (exprs!1177 setElem!9138) lambda!64545))))

(declare-fun bs!364722 () Bool)

(assert (= bs!364722 d!448195))

(declare-fun m!1777798 () Bool)

(assert (=> bs!364722 m!1777798))

(assert (=> setNonEmpty!9138 d!448195))

(declare-fun b!1513588 () Bool)

(declare-fun e!967938 () Bool)

(declare-fun appendAssoc!88 (List!16139 List!16139 List!16139) Bool)

(assert (=> b!1513588 (= e!967938 (appendAssoc!88 (list!6349 (left!13364 (c!247985 acc!392))) (list!6349 (left!13364 (right!13694 (c!247985 acc!392)))) (++!4360 (list!6349 (right!13694 (right!13694 (c!247985 acc!392)))) (list!6349 (c!247985 (_1!8486 lt!526153))))))))

(declare-fun d!448197 () Bool)

(declare-fun e!967939 () Bool)

(assert (=> d!448197 e!967939))

(declare-fun res!681013 () Bool)

(assert (=> d!448197 (=> (not res!681013) (not e!967939))))

(declare-fun e!967944 () Bool)

(assert (=> d!448197 (= res!681013 e!967944)))

(declare-fun res!681014 () Bool)

(assert (=> d!448197 (=> res!681014 e!967944)))

(assert (=> d!448197 (= res!681014 (not ((_ is Node!5440) (c!247985 acc!392))))))

(assert (=> d!448197 (= (appendAssocInst!369 (c!247985 acc!392) (c!247985 (_1!8486 lt!526153))) true)))

(declare-fun b!1513589 () Bool)

(declare-fun e!967942 () Bool)

(declare-fun e!967941 () Bool)

(assert (=> b!1513589 (= e!967942 e!967941)))

(declare-fun res!681015 () Bool)

(assert (=> b!1513589 (=> (not res!681015) (not e!967941))))

(assert (=> b!1513589 (= res!681015 (appendAssoc!88 (list!6349 (c!247985 acc!392)) (list!6349 (left!13364 (left!13364 (c!247985 (_1!8486 lt!526153))))) (list!6349 (right!13694 (left!13364 (c!247985 (_1!8486 lt!526153)))))))))

(declare-fun b!1513590 () Bool)

(declare-fun e!967943 () Bool)

(assert (=> b!1513590 (= e!967939 e!967943)))

(declare-fun res!681010 () Bool)

(assert (=> b!1513590 (=> res!681010 e!967943)))

(assert (=> b!1513590 (= res!681010 (not ((_ is Node!5440) (c!247985 (_1!8486 lt!526153)))))))

(declare-fun b!1513591 () Bool)

(declare-fun e!967946 () Bool)

(assert (=> b!1513591 (= e!967946 e!967942)))

(declare-fun res!681011 () Bool)

(assert (=> b!1513591 (=> res!681011 e!967942)))

(assert (=> b!1513591 (= res!681011 (not ((_ is Node!5440) (left!13364 (c!247985 (_1!8486 lt!526153))))))))

(declare-fun b!1513592 () Bool)

(declare-fun e!967945 () Bool)

(declare-fun e!967940 () Bool)

(assert (=> b!1513592 (= e!967945 e!967940)))

(declare-fun res!681009 () Bool)

(assert (=> b!1513592 (=> res!681009 e!967940)))

(assert (=> b!1513592 (= res!681009 (not ((_ is Node!5440) (right!13694 (c!247985 acc!392)))))))

(declare-fun b!1513593 () Bool)

(assert (=> b!1513593 (= e!967941 (appendAssoc!88 (++!4360 (list!6349 (c!247985 acc!392)) (list!6349 (left!13364 (left!13364 (c!247985 (_1!8486 lt!526153)))))) (list!6349 (right!13694 (left!13364 (c!247985 (_1!8486 lt!526153))))) (list!6349 (right!13694 (c!247985 (_1!8486 lt!526153))))))))

(declare-fun b!1513594 () Bool)

(assert (=> b!1513594 (= e!967940 e!967938)))

(declare-fun res!681008 () Bool)

(assert (=> b!1513594 (=> (not res!681008) (not e!967938))))

(assert (=> b!1513594 (= res!681008 (appendAssoc!88 (list!6349 (left!13364 (right!13694 (c!247985 acc!392)))) (list!6349 (right!13694 (right!13694 (c!247985 acc!392)))) (list!6349 (c!247985 (_1!8486 lt!526153)))))))

(declare-fun b!1513595 () Bool)

(assert (=> b!1513595 (= e!967944 e!967945)))

(declare-fun res!681012 () Bool)

(assert (=> b!1513595 (=> (not res!681012) (not e!967945))))

(assert (=> b!1513595 (= res!681012 (appendAssoc!88 (list!6349 (left!13364 (c!247985 acc!392))) (list!6349 (right!13694 (c!247985 acc!392))) (list!6349 (c!247985 (_1!8486 lt!526153)))))))

(declare-fun b!1513596 () Bool)

(assert (=> b!1513596 (= e!967943 e!967946)))

(declare-fun res!681007 () Bool)

(assert (=> b!1513596 (=> (not res!681007) (not e!967946))))

(assert (=> b!1513596 (= res!681007 (appendAssoc!88 (list!6349 (c!247985 acc!392)) (list!6349 (left!13364 (c!247985 (_1!8486 lt!526153)))) (list!6349 (right!13694 (c!247985 (_1!8486 lt!526153))))))))

(assert (= (and d!448197 (not res!681014)) b!1513595))

(assert (= (and b!1513595 res!681012) b!1513592))

(assert (= (and b!1513592 (not res!681009)) b!1513594))

(assert (= (and b!1513594 res!681008) b!1513588))

(assert (= (and d!448197 res!681013) b!1513590))

(assert (= (and b!1513590 (not res!681010)) b!1513596))

(assert (= (and b!1513596 res!681007) b!1513591))

(assert (= (and b!1513591 (not res!681011)) b!1513589))

(assert (= (and b!1513589 res!681015) b!1513593))

(declare-fun m!1777800 () Bool)

(assert (=> b!1513594 m!1777800))

(declare-fun m!1777802 () Bool)

(assert (=> b!1513594 m!1777802))

(assert (=> b!1513594 m!1777522))

(assert (=> b!1513594 m!1777800))

(assert (=> b!1513594 m!1777802))

(assert (=> b!1513594 m!1777522))

(declare-fun m!1777804 () Bool)

(assert (=> b!1513594 m!1777804))

(assert (=> b!1513595 m!1777635))

(assert (=> b!1513595 m!1777637))

(assert (=> b!1513595 m!1777522))

(assert (=> b!1513595 m!1777635))

(assert (=> b!1513595 m!1777637))

(assert (=> b!1513595 m!1777522))

(declare-fun m!1777806 () Bool)

(assert (=> b!1513595 m!1777806))

(assert (=> b!1513589 m!1777226))

(declare-fun m!1777808 () Bool)

(assert (=> b!1513589 m!1777808))

(declare-fun m!1777810 () Bool)

(assert (=> b!1513589 m!1777810))

(assert (=> b!1513589 m!1777226))

(assert (=> b!1513589 m!1777808))

(assert (=> b!1513589 m!1777810))

(declare-fun m!1777812 () Bool)

(assert (=> b!1513589 m!1777812))

(assert (=> b!1513596 m!1777226))

(declare-fun m!1777814 () Bool)

(assert (=> b!1513596 m!1777814))

(declare-fun m!1777816 () Bool)

(assert (=> b!1513596 m!1777816))

(assert (=> b!1513596 m!1777226))

(assert (=> b!1513596 m!1777814))

(assert (=> b!1513596 m!1777816))

(declare-fun m!1777818 () Bool)

(assert (=> b!1513596 m!1777818))

(assert (=> b!1513593 m!1777808))

(assert (=> b!1513593 m!1777816))

(declare-fun m!1777820 () Bool)

(assert (=> b!1513593 m!1777820))

(assert (=> b!1513593 m!1777810))

(assert (=> b!1513593 m!1777816))

(declare-fun m!1777822 () Bool)

(assert (=> b!1513593 m!1777822))

(assert (=> b!1513593 m!1777226))

(assert (=> b!1513593 m!1777810))

(assert (=> b!1513593 m!1777226))

(assert (=> b!1513593 m!1777808))

(assert (=> b!1513593 m!1777820))

(assert (=> b!1513588 m!1777800))

(assert (=> b!1513588 m!1777802))

(assert (=> b!1513588 m!1777522))

(declare-fun m!1777824 () Bool)

(assert (=> b!1513588 m!1777824))

(assert (=> b!1513588 m!1777635))

(assert (=> b!1513588 m!1777802))

(assert (=> b!1513588 m!1777635))

(assert (=> b!1513588 m!1777800))

(assert (=> b!1513588 m!1777824))

(declare-fun m!1777826 () Bool)

(assert (=> b!1513588 m!1777826))

(assert (=> b!1513588 m!1777522))

(assert (=> d!447969 d!448197))

(assert (=> d!447969 d!448081))

(declare-fun d!448199 () Bool)

(declare-fun lt!526249 () Int)

(assert (=> d!448199 (= lt!526249 (size!13003 (list!6347 (_1!8486 lt!526163))))))

(assert (=> d!448199 (= lt!526249 (size!13002 (c!247985 (_1!8486 lt!526163))))))

(assert (=> d!448199 (= (size!12999 (_1!8486 lt!526163)) lt!526249)))

(declare-fun bs!364723 () Bool)

(assert (= bs!364723 d!448199))

(assert (=> bs!364723 m!1777178))

(assert (=> bs!364723 m!1777178))

(declare-fun m!1777828 () Bool)

(assert (=> bs!364723 m!1777828))

(declare-fun m!1777830 () Bool)

(assert (=> bs!364723 m!1777830))

(assert (=> d!447965 d!448199))

(declare-fun b!1513597 () Bool)

(declare-fun e!967947 () Bool)

(declare-fun lt!526251 () Option!2930)

(assert (=> b!1513597 (= e!967947 (= (list!6348 (_2!8494 (get!4738 lt!526251))) (_2!8495 (get!4739 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 input!1102))))))))

(declare-fun b!1513598 () Bool)

(declare-fun e!967948 () Bool)

(declare-fun e!967949 () Bool)

(assert (=> b!1513598 (= e!967948 e!967949)))

(declare-fun res!681019 () Bool)

(assert (=> b!1513598 (=> res!681019 e!967949)))

(assert (=> b!1513598 (= res!681019 (not (isDefined!2355 lt!526251)))))

(declare-fun b!1513599 () Bool)

(declare-fun e!967951 () Option!2930)

(declare-fun call!100386 () Option!2930)

(assert (=> b!1513599 (= e!967951 call!100386)))

(declare-fun d!448201 () Bool)

(assert (=> d!448201 e!967948))

(declare-fun res!681018 () Bool)

(assert (=> d!448201 (=> (not res!681018) (not e!967948))))

(assert (=> d!448201 (= res!681018 (= (isDefined!2355 lt!526251) (isDefined!2356 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 input!1102)))))))

(assert (=> d!448201 (= lt!526251 e!967951)))

(declare-fun c!248076 () Bool)

(assert (=> d!448201 (= c!248076 (and ((_ is Cons!16072) rules!1640) ((_ is Nil!16072) (t!139418 rules!1640))))))

(declare-fun lt!526252 () Unit!25745)

(declare-fun lt!526253 () Unit!25745)

(assert (=> d!448201 (= lt!526252 lt!526253)))

(declare-fun lt!526254 () List!16138)

(declare-fun lt!526250 () List!16138)

(assert (=> d!448201 (isPrefix!1219 lt!526254 lt!526250)))

(assert (=> d!448201 (= lt!526253 (lemmaIsPrefixRefl!849 lt!526254 lt!526250))))

(assert (=> d!448201 (= lt!526250 (list!6348 input!1102))))

(assert (=> d!448201 (= lt!526254 (list!6348 input!1102))))

(assert (=> d!448201 (rulesValidInductive!857 thiss!13241 rules!1640)))

(assert (=> d!448201 (= (maxPrefixZipperSequence!589 thiss!13241 rules!1640 input!1102) lt!526251)))

(declare-fun b!1513600 () Bool)

(declare-fun res!681017 () Bool)

(assert (=> b!1513600 (=> (not res!681017) (not e!967948))))

(declare-fun e!967952 () Bool)

(assert (=> b!1513600 (= res!681017 e!967952)))

(declare-fun res!681016 () Bool)

(assert (=> b!1513600 (=> res!681016 e!967952)))

(assert (=> b!1513600 (= res!681016 (not (isDefined!2355 lt!526251)))))

(declare-fun e!967950 () Bool)

(declare-fun b!1513601 () Bool)

(assert (=> b!1513601 (= e!967950 (= (list!6348 (_2!8494 (get!4738 lt!526251))) (_2!8495 (get!4739 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 input!1102))))))))

(declare-fun b!1513602 () Bool)

(assert (=> b!1513602 (= e!967949 e!967950)))

(declare-fun res!681020 () Bool)

(assert (=> b!1513602 (=> (not res!681020) (not e!967950))))

(assert (=> b!1513602 (= res!681020 (= (_1!8494 (get!4738 lt!526251)) (_1!8495 (get!4739 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 input!1102))))))))

(declare-fun bm!100381 () Bool)

(assert (=> bm!100381 (= call!100386 (maxPrefixOneRuleZipperSequence!279 thiss!13241 (h!21473 rules!1640) input!1102))))

(declare-fun b!1513603 () Bool)

(declare-fun lt!526255 () Option!2930)

(declare-fun lt!526256 () Option!2930)

(assert (=> b!1513603 (= e!967951 (ite (and ((_ is None!2929) lt!526255) ((_ is None!2929) lt!526256)) None!2929 (ite ((_ is None!2929) lt!526256) lt!526255 (ite ((_ is None!2929) lt!526255) lt!526256 (ite (>= (size!12993 (_1!8494 (v!22888 lt!526255))) (size!12993 (_1!8494 (v!22888 lt!526256)))) lt!526255 lt!526256)))))))

(assert (=> b!1513603 (= lt!526255 call!100386)))

(assert (=> b!1513603 (= lt!526256 (maxPrefixZipperSequence!589 thiss!13241 (t!139418 rules!1640) input!1102))))

(declare-fun b!1513604 () Bool)

(assert (=> b!1513604 (= e!967952 e!967947)))

(declare-fun res!681021 () Bool)

(assert (=> b!1513604 (=> (not res!681021) (not e!967947))))

(assert (=> b!1513604 (= res!681021 (= (_1!8494 (get!4738 lt!526251)) (_1!8495 (get!4739 (maxPrefixZipper!260 thiss!13241 rules!1640 (list!6348 input!1102))))))))

(assert (= (and d!448201 c!248076) b!1513599))

(assert (= (and d!448201 (not c!248076)) b!1513603))

(assert (= (or b!1513599 b!1513603) bm!100381))

(assert (= (and d!448201 res!681018) b!1513600))

(assert (= (and b!1513600 (not res!681016)) b!1513604))

(assert (= (and b!1513604 res!681021) b!1513597))

(assert (= (and b!1513600 res!681017) b!1513598))

(assert (= (and b!1513598 (not res!681019)) b!1513602))

(assert (= (and b!1513602 res!681020) b!1513601))

(declare-fun m!1777832 () Bool)

(assert (=> b!1513601 m!1777832))

(declare-fun m!1777834 () Bool)

(assert (=> b!1513601 m!1777834))

(assert (=> b!1513601 m!1777609))

(declare-fun m!1777836 () Bool)

(assert (=> b!1513601 m!1777836))

(assert (=> b!1513601 m!1777112))

(assert (=> b!1513601 m!1777609))

(assert (=> b!1513601 m!1777112))

(assert (=> b!1513604 m!1777834))

(assert (=> b!1513604 m!1777112))

(assert (=> b!1513604 m!1777112))

(declare-fun m!1777838 () Bool)

(assert (=> b!1513604 m!1777838))

(assert (=> b!1513604 m!1777838))

(declare-fun m!1777840 () Bool)

(assert (=> b!1513604 m!1777840))

(declare-fun m!1777842 () Bool)

(assert (=> b!1513598 m!1777842))

(assert (=> b!1513600 m!1777842))

(assert (=> b!1513597 m!1777832))

(assert (=> b!1513597 m!1777112))

(assert (=> b!1513597 m!1777838))

(assert (=> b!1513597 m!1777834))

(assert (=> b!1513597 m!1777838))

(assert (=> b!1513597 m!1777840))

(assert (=> b!1513597 m!1777112))

(assert (=> d!448201 m!1777112))

(assert (=> d!448201 m!1777838))

(assert (=> d!448201 m!1777842))

(declare-fun m!1777844 () Bool)

(assert (=> d!448201 m!1777844))

(assert (=> d!448201 m!1777838))

(declare-fun m!1777846 () Bool)

(assert (=> d!448201 m!1777846))

(assert (=> d!448201 m!1777112))

(declare-fun m!1777848 () Bool)

(assert (=> d!448201 m!1777848))

(assert (=> d!448201 m!1777498))

(declare-fun m!1777850 () Bool)

(assert (=> bm!100381 m!1777850))

(assert (=> b!1513602 m!1777834))

(assert (=> b!1513602 m!1777112))

(assert (=> b!1513602 m!1777112))

(assert (=> b!1513602 m!1777609))

(assert (=> b!1513602 m!1777609))

(assert (=> b!1513602 m!1777836))

(declare-fun m!1777852 () Bool)

(assert (=> b!1513603 m!1777852))

(assert (=> d!447965 d!448201))

(assert (=> b!1513031 d!448115))

(assert (=> b!1513031 d!448007))

(declare-fun bs!364724 () Bool)

(declare-fun d!448203 () Bool)

(assert (= bs!364724 (and d!448203 d!448125)))

(declare-fun lambda!64546 () Int)

(assert (=> bs!364724 (= lambda!64546 lambda!64530)))

(declare-fun bs!364725 () Bool)

(assert (= bs!364725 (and d!448203 d!448157)))

(assert (=> bs!364725 (= lambda!64546 lambda!64540)))

(declare-fun bs!364726 () Bool)

(assert (= bs!364726 (and d!448203 d!448165)))

(assert (=> bs!364726 (= lambda!64546 lambda!64542)))

(declare-fun bs!364727 () Bool)

(assert (= bs!364727 (and d!448203 d!448059)))

(assert (=> bs!364727 (= lambda!64546 lambda!64515)))

(declare-fun bs!364728 () Bool)

(assert (= bs!364728 (and d!448203 d!448153)))

(assert (=> bs!364728 (= lambda!64546 lambda!64536)))

(declare-fun bs!364729 () Bool)

(assert (= bs!364729 (and d!448203 d!448173)))

(assert (=> bs!364729 (= lambda!64546 lambda!64544)))

(declare-fun bs!364730 () Bool)

(assert (= bs!364730 (and d!448203 d!448055)))

(assert (=> bs!364730 (= lambda!64546 lambda!64514)))

(declare-fun bs!364731 () Bool)

(assert (= bs!364731 (and d!448203 d!448149)))

(assert (=> bs!364731 (= lambda!64546 lambda!64532)))

(declare-fun bs!364732 () Bool)

(assert (= bs!364732 (and d!448203 d!448159)))

(assert (=> bs!364732 (= lambda!64546 lambda!64541)))

(declare-fun bs!364733 () Bool)

(assert (= bs!364733 (and d!448203 d!448195)))

(assert (=> bs!364733 (= lambda!64546 lambda!64545)))

(declare-fun bs!364734 () Bool)

(assert (= bs!364734 (and d!448203 d!448139)))

(assert (=> bs!364734 (= lambda!64546 lambda!64531)))

(declare-fun bs!364735 () Bool)

(assert (= bs!364735 (and d!448203 d!448075)))

(assert (=> bs!364735 (= lambda!64546 lambda!64517)))

(declare-fun bs!364736 () Bool)

(assert (= bs!364736 (and d!448203 d!448063)))

(assert (=> bs!364736 (= lambda!64546 lambda!64516)))

(declare-fun bs!364737 () Bool)

(assert (= bs!364737 (and d!448203 d!448101)))

(assert (=> bs!364737 (= lambda!64546 lambda!64523)))

(declare-fun bs!364738 () Bool)

(assert (= bs!364738 (and d!448203 d!448049)))

(assert (=> bs!364738 (= lambda!64546 lambda!64513)))

(declare-fun bs!364739 () Bool)

(assert (= bs!364739 (and d!448203 d!448121)))

(assert (=> bs!364739 (= lambda!64546 lambda!64529)))

(declare-fun bs!364740 () Bool)

(assert (= bs!364740 (and d!448203 d!448109)))

(assert (=> bs!364740 (= lambda!64546 lambda!64527)))

(declare-fun bs!364741 () Bool)

(assert (= bs!364741 (and d!448203 d!448119)))

(assert (=> bs!364741 (= lambda!64546 lambda!64528)))

(declare-fun bs!364742 () Bool)

(assert (= bs!364742 (and d!448203 d!448047)))

(assert (=> bs!364742 (= lambda!64546 lambda!64512)))

(declare-fun bs!364743 () Bool)

(assert (= bs!364743 (and d!448203 d!448099)))

(assert (=> bs!364743 (= lambda!64546 lambda!64522)))

(declare-fun bs!364744 () Bool)

(assert (= bs!364744 (and d!448203 d!448167)))

(assert (=> bs!364744 (= lambda!64546 lambda!64543)))

(declare-fun bs!364745 () Bool)

(assert (= bs!364745 (and d!448203 d!448089)))

(assert (=> bs!364745 (= lambda!64546 lambda!64521)))

(assert (=> d!448203 (= (inv!21315 (_1!8489 (_1!8490 (h!21476 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))) (forall!3856 (exprs!1177 (_1!8489 (_1!8490 (h!21476 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))) lambda!64546))))

(declare-fun bs!364746 () Bool)

(assert (= bs!364746 d!448203))

(declare-fun m!1777854 () Bool)

(assert (=> bs!364746 m!1777854))

(assert (=> b!1513176 d!448203))

(declare-fun d!448205 () Bool)

(declare-fun c!248077 () Bool)

(assert (=> d!448205 (= c!248077 ((_ is Empty!5440) (c!247985 (_1!8486 lt!526154))))))

(declare-fun e!967953 () List!16139)

(assert (=> d!448205 (= (list!6349 (c!247985 (_1!8486 lt!526154))) e!967953)))

(declare-fun b!1513607 () Bool)

(declare-fun e!967954 () List!16139)

(assert (=> b!1513607 (= e!967954 (list!6352 (xs!8221 (c!247985 (_1!8486 lt!526154)))))))

(declare-fun b!1513606 () Bool)

(assert (=> b!1513606 (= e!967953 e!967954)))

(declare-fun c!248078 () Bool)

(assert (=> b!1513606 (= c!248078 ((_ is Leaf!8065) (c!247985 (_1!8486 lt!526154))))))

(declare-fun b!1513605 () Bool)

(assert (=> b!1513605 (= e!967953 Nil!16071)))

(declare-fun b!1513608 () Bool)

(assert (=> b!1513608 (= e!967954 (++!4360 (list!6349 (left!13364 (c!247985 (_1!8486 lt!526154)))) (list!6349 (right!13694 (c!247985 (_1!8486 lt!526154))))))))

(assert (= (and d!448205 c!248077) b!1513605))

(assert (= (and d!448205 (not c!248077)) b!1513606))

(assert (= (and b!1513606 c!248078) b!1513607))

(assert (= (and b!1513606 (not c!248078)) b!1513608))

(declare-fun m!1777856 () Bool)

(assert (=> b!1513607 m!1777856))

(declare-fun m!1777858 () Bool)

(assert (=> b!1513608 m!1777858))

(declare-fun m!1777860 () Bool)

(assert (=> b!1513608 m!1777860))

(assert (=> b!1513608 m!1777858))

(assert (=> b!1513608 m!1777860))

(declare-fun m!1777862 () Bool)

(assert (=> b!1513608 m!1777862))

(assert (=> d!447963 d!448205))

(declare-fun bs!364747 () Bool)

(declare-fun d!448207 () Bool)

(assert (= bs!364747 (and d!448207 d!448125)))

(declare-fun lambda!64547 () Int)

(assert (=> bs!364747 (= lambda!64547 lambda!64530)))

(declare-fun bs!364748 () Bool)

(assert (= bs!364748 (and d!448207 d!448157)))

(assert (=> bs!364748 (= lambda!64547 lambda!64540)))

(declare-fun bs!364749 () Bool)

(assert (= bs!364749 (and d!448207 d!448165)))

(assert (=> bs!364749 (= lambda!64547 lambda!64542)))

(declare-fun bs!364750 () Bool)

(assert (= bs!364750 (and d!448207 d!448059)))

(assert (=> bs!364750 (= lambda!64547 lambda!64515)))

(declare-fun bs!364751 () Bool)

(assert (= bs!364751 (and d!448207 d!448153)))

(assert (=> bs!364751 (= lambda!64547 lambda!64536)))

(declare-fun bs!364752 () Bool)

(assert (= bs!364752 (and d!448207 d!448173)))

(assert (=> bs!364752 (= lambda!64547 lambda!64544)))

(declare-fun bs!364753 () Bool)

(assert (= bs!364753 (and d!448207 d!448203)))

(assert (=> bs!364753 (= lambda!64547 lambda!64546)))

(declare-fun bs!364754 () Bool)

(assert (= bs!364754 (and d!448207 d!448055)))

(assert (=> bs!364754 (= lambda!64547 lambda!64514)))

(declare-fun bs!364755 () Bool)

(assert (= bs!364755 (and d!448207 d!448149)))

(assert (=> bs!364755 (= lambda!64547 lambda!64532)))

(declare-fun bs!364756 () Bool)

(assert (= bs!364756 (and d!448207 d!448159)))

(assert (=> bs!364756 (= lambda!64547 lambda!64541)))

(declare-fun bs!364757 () Bool)

(assert (= bs!364757 (and d!448207 d!448195)))

(assert (=> bs!364757 (= lambda!64547 lambda!64545)))

(declare-fun bs!364758 () Bool)

(assert (= bs!364758 (and d!448207 d!448139)))

(assert (=> bs!364758 (= lambda!64547 lambda!64531)))

(declare-fun bs!364759 () Bool)

(assert (= bs!364759 (and d!448207 d!448075)))

(assert (=> bs!364759 (= lambda!64547 lambda!64517)))

(declare-fun bs!364760 () Bool)

(assert (= bs!364760 (and d!448207 d!448063)))

(assert (=> bs!364760 (= lambda!64547 lambda!64516)))

(declare-fun bs!364761 () Bool)

(assert (= bs!364761 (and d!448207 d!448101)))

(assert (=> bs!364761 (= lambda!64547 lambda!64523)))

(declare-fun bs!364762 () Bool)

(assert (= bs!364762 (and d!448207 d!448049)))

(assert (=> bs!364762 (= lambda!64547 lambda!64513)))

(declare-fun bs!364763 () Bool)

(assert (= bs!364763 (and d!448207 d!448121)))

(assert (=> bs!364763 (= lambda!64547 lambda!64529)))

(declare-fun bs!364764 () Bool)

(assert (= bs!364764 (and d!448207 d!448109)))

(assert (=> bs!364764 (= lambda!64547 lambda!64527)))

(declare-fun bs!364765 () Bool)

(assert (= bs!364765 (and d!448207 d!448119)))

(assert (=> bs!364765 (= lambda!64547 lambda!64528)))

(declare-fun bs!364766 () Bool)

(assert (= bs!364766 (and d!448207 d!448047)))

(assert (=> bs!364766 (= lambda!64547 lambda!64512)))

(declare-fun bs!364767 () Bool)

(assert (= bs!364767 (and d!448207 d!448099)))

(assert (=> bs!364767 (= lambda!64547 lambda!64522)))

(declare-fun bs!364768 () Bool)

(assert (= bs!364768 (and d!448207 d!448167)))

(assert (=> bs!364768 (= lambda!64547 lambda!64543)))

(declare-fun bs!364769 () Bool)

(assert (= bs!364769 (and d!448207 d!448089)))

(assert (=> bs!364769 (= lambda!64547 lambda!64521)))

(assert (=> d!448207 (= (inv!21315 setElem!9111) (forall!3856 (exprs!1177 setElem!9111) lambda!64547))))

(declare-fun bs!364770 () Bool)

(assert (= bs!364770 d!448207))

(declare-fun m!1777864 () Bool)

(assert (=> bs!364770 m!1777864))

(assert (=> setNonEmpty!9111 d!448207))

(declare-fun d!448209 () Bool)

(assert (=> d!448209 (= (list!6347 (_1!8486 lt!526166)) (list!6349 (c!247985 (_1!8486 lt!526166))))))

(declare-fun bs!364771 () Bool)

(assert (= bs!364771 d!448209))

(declare-fun m!1777866 () Bool)

(assert (=> bs!364771 m!1777866))

(assert (=> b!1513036 d!448209))

(declare-fun b!1513609 () Bool)

(declare-fun e!967955 () Bool)

(declare-fun lt!526258 () tuple2!14948)

(assert (=> b!1513609 (= e!967955 (= (_2!8493 lt!526258) (list!6348 totalInput!458)))))

(declare-fun b!1513610 () Bool)

(declare-fun e!967957 () tuple2!14948)

(declare-fun lt!526259 () Option!2931)

(declare-fun lt!526257 () tuple2!14948)

(assert (=> b!1513610 (= e!967957 (tuple2!14949 (Cons!16071 (_1!8495 (v!22890 lt!526259)) (_1!8493 lt!526257)) (_2!8493 lt!526257)))))

(assert (=> b!1513610 (= lt!526257 (lexList!747 thiss!13241 rules!1640 (_2!8495 (v!22890 lt!526259))))))

(declare-fun b!1513611 () Bool)

(assert (=> b!1513611 (= e!967957 (tuple2!14949 Nil!16071 (list!6348 totalInput!458)))))

(declare-fun b!1513612 () Bool)

(declare-fun e!967956 () Bool)

(assert (=> b!1513612 (= e!967955 e!967956)))

(declare-fun res!681022 () Bool)

(assert (=> b!1513612 (= res!681022 (< (size!13000 (_2!8493 lt!526258)) (size!13000 (list!6348 totalInput!458))))))

(assert (=> b!1513612 (=> (not res!681022) (not e!967956))))

(declare-fun b!1513613 () Bool)

(assert (=> b!1513613 (= e!967956 (not (isEmpty!9933 (_1!8493 lt!526258))))))

(declare-fun d!448211 () Bool)

(assert (=> d!448211 e!967955))

(declare-fun c!248080 () Bool)

(assert (=> d!448211 (= c!248080 (> (size!13003 (_1!8493 lt!526258)) 0))))

(assert (=> d!448211 (= lt!526258 e!967957)))

(declare-fun c!248079 () Bool)

(assert (=> d!448211 (= c!248079 ((_ is Some!2930) lt!526259))))

(assert (=> d!448211 (= lt!526259 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 totalInput!458)))))

(assert (=> d!448211 (= (lexList!747 thiss!13241 rules!1640 (list!6348 totalInput!458)) lt!526258)))

(assert (= (and d!448211 c!248079) b!1513610))

(assert (= (and d!448211 (not c!248079)) b!1513611))

(assert (= (and d!448211 c!248080) b!1513612))

(assert (= (and d!448211 (not c!248080)) b!1513609))

(assert (= (and b!1513612 res!681022) b!1513613))

(declare-fun m!1777868 () Bool)

(assert (=> b!1513610 m!1777868))

(declare-fun m!1777870 () Bool)

(assert (=> b!1513612 m!1777870))

(assert (=> b!1513612 m!1777108))

(declare-fun m!1777872 () Bool)

(assert (=> b!1513612 m!1777872))

(declare-fun m!1777874 () Bool)

(assert (=> b!1513613 m!1777874))

(declare-fun m!1777876 () Bool)

(assert (=> d!448211 m!1777876))

(assert (=> d!448211 m!1777108))

(assert (=> d!448211 m!1777579))

(assert (=> b!1513036 d!448211))

(assert (=> b!1513036 d!448001))

(declare-fun b!1513614 () Bool)

(declare-fun e!967958 () List!16138)

(assert (=> b!1513614 (= e!967958 Nil!16070)))

(declare-fun d!448213 () Bool)

(declare-fun c!248081 () Bool)

(assert (=> d!448213 (= c!248081 ((_ is Empty!5439) (c!247983 totalInput!458)))))

(assert (=> d!448213 (= (list!6350 (c!247983 totalInput!458)) e!967958)))

(declare-fun b!1513617 () Bool)

(declare-fun e!967959 () List!16138)

(assert (=> b!1513617 (= e!967959 (++!4358 (list!6350 (left!13363 (c!247983 totalInput!458))) (list!6350 (right!13693 (c!247983 totalInput!458)))))))

(declare-fun b!1513615 () Bool)

(assert (=> b!1513615 (= e!967958 e!967959)))

(declare-fun c!248082 () Bool)

(assert (=> b!1513615 (= c!248082 ((_ is Leaf!8064) (c!247983 totalInput!458)))))

(declare-fun b!1513616 () Bool)

(assert (=> b!1513616 (= e!967959 (list!6351 (xs!8220 (c!247983 totalInput!458))))))

(assert (= (and d!448213 c!248081) b!1513614))

(assert (= (and d!448213 (not c!248081)) b!1513615))

(assert (= (and b!1513615 c!248082) b!1513616))

(assert (= (and b!1513615 (not c!248082)) b!1513617))

(declare-fun m!1777878 () Bool)

(assert (=> b!1513617 m!1777878))

(declare-fun m!1777880 () Bool)

(assert (=> b!1513617 m!1777880))

(assert (=> b!1513617 m!1777878))

(assert (=> b!1513617 m!1777880))

(declare-fun m!1777882 () Bool)

(assert (=> b!1513617 m!1777882))

(assert (=> b!1513616 m!1777621))

(assert (=> d!448001 d!448213))

(declare-fun d!448215 () Bool)

(assert (=> d!448215 true))

(declare-fun lt!526262 () Bool)

(assert (=> d!448215 (= lt!526262 (rulesValidInductive!857 thiss!13241 rules!1640))))

(declare-fun lambda!64550 () Int)

(declare-fun forall!3859 (List!16140 Int) Bool)

(assert (=> d!448215 (= lt!526262 (forall!3859 rules!1640 lambda!64550))))

(assert (=> d!448215 (= (rulesValid!1042 thiss!13241 rules!1640) lt!526262)))

(declare-fun bs!364772 () Bool)

(assert (= bs!364772 d!448215))

(assert (=> bs!364772 m!1777498))

(declare-fun m!1777884 () Bool)

(assert (=> bs!364772 m!1777884))

(assert (=> d!448009 d!448215))

(declare-fun d!448217 () Bool)

(assert (=> d!448217 (= (list!6347 lt!526170) (list!6349 (c!247985 lt!526170)))))

(declare-fun bs!364773 () Bool)

(assert (= bs!364773 d!448217))

(declare-fun m!1777886 () Bool)

(assert (=> bs!364773 m!1777886))

(assert (=> b!1513052 d!448217))

(declare-fun b!1513628 () Bool)

(declare-fun e!967965 () List!16139)

(assert (=> b!1513628 (= e!967965 (list!6347 (_1!8486 lt!526153)))))

(declare-fun e!967964 () Bool)

(declare-fun lt!526265 () List!16139)

(declare-fun b!1513631 () Bool)

(assert (=> b!1513631 (= e!967964 (or (not (= (list!6347 (_1!8486 lt!526153)) Nil!16071)) (= lt!526265 (list!6347 acc!392))))))

(declare-fun b!1513629 () Bool)

(assert (=> b!1513629 (= e!967965 (Cons!16071 (h!21472 (list!6347 acc!392)) (++!4360 (t!139417 (list!6347 acc!392)) (list!6347 (_1!8486 lt!526153)))))))

(declare-fun b!1513630 () Bool)

(declare-fun res!681027 () Bool)

(assert (=> b!1513630 (=> (not res!681027) (not e!967964))))

(assert (=> b!1513630 (= res!681027 (= (size!13003 lt!526265) (+ (size!13003 (list!6347 acc!392)) (size!13003 (list!6347 (_1!8486 lt!526153))))))))

(declare-fun d!448219 () Bool)

(assert (=> d!448219 e!967964))

(declare-fun res!681028 () Bool)

(assert (=> d!448219 (=> (not res!681028) (not e!967964))))

(declare-fun content!2315 (List!16139) (InoxSet Token!5350))

(assert (=> d!448219 (= res!681028 (= (content!2315 lt!526265) ((_ map or) (content!2315 (list!6347 acc!392)) (content!2315 (list!6347 (_1!8486 lt!526153))))))))

(assert (=> d!448219 (= lt!526265 e!967965)))

(declare-fun c!248085 () Bool)

(assert (=> d!448219 (= c!248085 ((_ is Nil!16071) (list!6347 acc!392)))))

(assert (=> d!448219 (= (++!4360 (list!6347 acc!392) (list!6347 (_1!8486 lt!526153))) lt!526265)))

(assert (= (and d!448219 c!248085) b!1513628))

(assert (= (and d!448219 (not c!248085)) b!1513629))

(assert (= (and d!448219 res!681028) b!1513630))

(assert (= (and b!1513630 res!681027) b!1513631))

(assert (=> b!1513629 m!1777216))

(declare-fun m!1777888 () Bool)

(assert (=> b!1513629 m!1777888))

(declare-fun m!1777890 () Bool)

(assert (=> b!1513630 m!1777890))

(assert (=> b!1513630 m!1777138))

(declare-fun m!1777892 () Bool)

(assert (=> b!1513630 m!1777892))

(assert (=> b!1513630 m!1777216))

(declare-fun m!1777894 () Bool)

(assert (=> b!1513630 m!1777894))

(declare-fun m!1777896 () Bool)

(assert (=> d!448219 m!1777896))

(assert (=> d!448219 m!1777138))

(declare-fun m!1777898 () Bool)

(assert (=> d!448219 m!1777898))

(assert (=> d!448219 m!1777216))

(declare-fun m!1777900 () Bool)

(assert (=> d!448219 m!1777900))

(assert (=> b!1513052 d!448219))

(assert (=> b!1513052 d!447979))

(declare-fun d!448221 () Bool)

(assert (=> d!448221 (= (list!6347 (_1!8486 lt!526153)) (list!6349 (c!247985 (_1!8486 lt!526153))))))

(declare-fun bs!364774 () Bool)

(assert (= bs!364774 d!448221))

(assert (=> bs!364774 m!1777522))

(assert (=> b!1513052 d!448221))

(declare-fun b!1513632 () Bool)

(declare-fun e!967966 () Bool)

(assert (=> b!1513632 (= e!967966 (not (isEmpty!9934 (right!13694 (c!247985 acc!392)))))))

(declare-fun b!1513633 () Bool)

(declare-fun res!681030 () Bool)

(assert (=> b!1513633 (=> (not res!681030) (not e!967966))))

(assert (=> b!1513633 (= res!681030 (<= (- (height!811 (left!13364 (c!247985 acc!392))) (height!811 (right!13694 (c!247985 acc!392)))) 1))))

(declare-fun b!1513634 () Bool)

(declare-fun res!681032 () Bool)

(assert (=> b!1513634 (=> (not res!681032) (not e!967966))))

(assert (=> b!1513634 (= res!681032 (isBalanced!1609 (left!13364 (c!247985 acc!392))))))

(declare-fun d!448223 () Bool)

(declare-fun res!681034 () Bool)

(declare-fun e!967967 () Bool)

(assert (=> d!448223 (=> res!681034 e!967967)))

(assert (=> d!448223 (= res!681034 (not ((_ is Node!5440) (c!247985 acc!392))))))

(assert (=> d!448223 (= (isBalanced!1609 (c!247985 acc!392)) e!967967)))

(declare-fun b!1513635 () Bool)

(declare-fun res!681033 () Bool)

(assert (=> b!1513635 (=> (not res!681033) (not e!967966))))

(assert (=> b!1513635 (= res!681033 (not (isEmpty!9934 (left!13364 (c!247985 acc!392)))))))

(declare-fun b!1513636 () Bool)

(assert (=> b!1513636 (= e!967967 e!967966)))

(declare-fun res!681031 () Bool)

(assert (=> b!1513636 (=> (not res!681031) (not e!967966))))

(assert (=> b!1513636 (= res!681031 (<= (- 1) (- (height!811 (left!13364 (c!247985 acc!392))) (height!811 (right!13694 (c!247985 acc!392))))))))

(declare-fun b!1513637 () Bool)

(declare-fun res!681029 () Bool)

(assert (=> b!1513637 (=> (not res!681029) (not e!967966))))

(assert (=> b!1513637 (= res!681029 (isBalanced!1609 (right!13694 (c!247985 acc!392))))))

(assert (= (and d!448223 (not res!681034)) b!1513636))

(assert (= (and b!1513636 res!681031) b!1513633))

(assert (= (and b!1513633 res!681030) b!1513634))

(assert (= (and b!1513634 res!681032) b!1513637))

(assert (= (and b!1513637 res!681029) b!1513635))

(assert (= (and b!1513635 res!681033) b!1513632))

(declare-fun m!1777902 () Bool)

(assert (=> b!1513634 m!1777902))

(assert (=> b!1513636 m!1777460))

(assert (=> b!1513636 m!1777462))

(assert (=> b!1513633 m!1777460))

(assert (=> b!1513633 m!1777462))

(declare-fun m!1777904 () Bool)

(assert (=> b!1513637 m!1777904))

(declare-fun m!1777906 () Bool)

(assert (=> b!1513635 m!1777906))

(declare-fun m!1777908 () Bool)

(assert (=> b!1513632 m!1777908))

(assert (=> d!448039 d!448223))

(assert (=> d!447997 d!448155))

(declare-fun d!448225 () Bool)

(declare-fun res!681039 () Bool)

(declare-fun e!967970 () Bool)

(assert (=> d!448225 (=> (not res!681039) (not e!967970))))

(declare-fun valid!1184 (MutableMap!1422) Bool)

(assert (=> d!448225 (= res!681039 (valid!1184 (cache!1803 cacheUp!616)))))

(assert (=> d!448225 (= (validCacheMapUp!135 (cache!1803 cacheUp!616)) e!967970)))

(declare-fun b!1513642 () Bool)

(declare-fun res!681040 () Bool)

(assert (=> b!1513642 (=> (not res!681040) (not e!967970))))

(declare-fun invariantList!222 (List!16143) Bool)

(declare-datatypes ((ListMap!493 0))(
  ( (ListMap!494 (toList!816 List!16143)) )
))
(declare-fun map!3424 (MutableMap!1422) ListMap!493)

(assert (=> b!1513642 (= res!681040 (invariantList!222 (toList!816 (map!3424 (cache!1803 cacheUp!616)))))))

(declare-fun b!1513643 () Bool)

(declare-fun lambda!64553 () Int)

(declare-fun forall!3860 (List!16143 Int) Bool)

(assert (=> b!1513643 (= e!967970 (forall!3860 (toList!816 (map!3424 (cache!1803 cacheUp!616))) lambda!64553))))

(assert (= (and d!448225 res!681039) b!1513642))

(assert (= (and b!1513642 res!681040) b!1513643))

(declare-fun m!1777911 () Bool)

(assert (=> d!448225 m!1777911))

(declare-fun m!1777913 () Bool)

(assert (=> b!1513642 m!1777913))

(declare-fun m!1777915 () Bool)

(assert (=> b!1513642 m!1777915))

(assert (=> b!1513643 m!1777913))

(declare-fun m!1777917 () Bool)

(assert (=> b!1513643 m!1777917))

(assert (=> d!447991 d!448225))

(assert (=> b!1513107 d!448087))

(declare-fun d!448227 () Bool)

(assert (=> d!448227 (= (list!6347 (_1!8486 lt!526172)) (list!6349 (c!247985 (_1!8486 lt!526172))))))

(declare-fun bs!364775 () Bool)

(assert (= bs!364775 d!448227))

(declare-fun m!1777919 () Bool)

(assert (=> bs!364775 m!1777919))

(assert (=> b!1513064 d!448227))

(declare-fun b!1513644 () Bool)

(declare-fun e!967971 () Bool)

(declare-fun lt!526267 () tuple2!14948)

(assert (=> b!1513644 (= e!967971 (= (_2!8493 lt!526267) (list!6348 treated!70)))))

(declare-fun b!1513645 () Bool)

(declare-fun e!967973 () tuple2!14948)

(declare-fun lt!526268 () Option!2931)

(declare-fun lt!526266 () tuple2!14948)

(assert (=> b!1513645 (= e!967973 (tuple2!14949 (Cons!16071 (_1!8495 (v!22890 lt!526268)) (_1!8493 lt!526266)) (_2!8493 lt!526266)))))

(assert (=> b!1513645 (= lt!526266 (lexList!747 thiss!13241 rules!1640 (_2!8495 (v!22890 lt!526268))))))

(declare-fun b!1513646 () Bool)

(assert (=> b!1513646 (= e!967973 (tuple2!14949 Nil!16071 (list!6348 treated!70)))))

(declare-fun b!1513647 () Bool)

(declare-fun e!967972 () Bool)

(assert (=> b!1513647 (= e!967971 e!967972)))

(declare-fun res!681041 () Bool)

(assert (=> b!1513647 (= res!681041 (< (size!13000 (_2!8493 lt!526267)) (size!13000 (list!6348 treated!70))))))

(assert (=> b!1513647 (=> (not res!681041) (not e!967972))))

(declare-fun b!1513648 () Bool)

(assert (=> b!1513648 (= e!967972 (not (isEmpty!9933 (_1!8493 lt!526267))))))

(declare-fun d!448229 () Bool)

(assert (=> d!448229 e!967971))

(declare-fun c!248087 () Bool)

(assert (=> d!448229 (= c!248087 (> (size!13003 (_1!8493 lt!526267)) 0))))

(assert (=> d!448229 (= lt!526267 e!967973)))

(declare-fun c!248086 () Bool)

(assert (=> d!448229 (= c!248086 ((_ is Some!2930) lt!526268))))

(assert (=> d!448229 (= lt!526268 (maxPrefix!1209 thiss!13241 rules!1640 (list!6348 treated!70)))))

(assert (=> d!448229 (= (lexList!747 thiss!13241 rules!1640 (list!6348 treated!70)) lt!526267)))

(assert (= (and d!448229 c!248086) b!1513645))

(assert (= (and d!448229 (not c!248086)) b!1513646))

(assert (= (and d!448229 c!248087) b!1513647))

(assert (= (and d!448229 (not c!248087)) b!1513644))

(assert (= (and b!1513647 res!681041) b!1513648))

(declare-fun m!1777921 () Bool)

(assert (=> b!1513645 m!1777921))

(declare-fun m!1777923 () Bool)

(assert (=> b!1513647 m!1777923))

(assert (=> b!1513647 m!1777110))

(assert (=> b!1513647 m!1777272))

(declare-fun m!1777925 () Bool)

(assert (=> b!1513648 m!1777925))

(declare-fun m!1777927 () Bool)

(assert (=> d!448229 m!1777927))

(assert (=> d!448229 m!1777110))

(assert (=> d!448229 m!1777482))

(assert (=> b!1513064 d!448229))

(assert (=> b!1513064 d!448005))

(assert (=> b!1512993 d!448017))

(declare-fun d!448231 () Bool)

(declare-fun c!248088 () Bool)

(assert (=> d!448231 (= c!248088 ((_ is Empty!5440) (c!247985 (++!4357 acc!392 (_1!8486 lt!526153)))))))

(declare-fun e!967974 () List!16139)

(assert (=> d!448231 (= (list!6349 (c!247985 (++!4357 acc!392 (_1!8486 lt!526153)))) e!967974)))

(declare-fun b!1513651 () Bool)

(declare-fun e!967975 () List!16139)

(assert (=> b!1513651 (= e!967975 (list!6352 (xs!8221 (c!247985 (++!4357 acc!392 (_1!8486 lt!526153))))))))

(declare-fun b!1513650 () Bool)

(assert (=> b!1513650 (= e!967974 e!967975)))

(declare-fun c!248089 () Bool)

(assert (=> b!1513650 (= c!248089 ((_ is Leaf!8065) (c!247985 (++!4357 acc!392 (_1!8486 lt!526153)))))))

(declare-fun b!1513649 () Bool)

(assert (=> b!1513649 (= e!967974 Nil!16071)))

(declare-fun b!1513652 () Bool)

(assert (=> b!1513652 (= e!967975 (++!4360 (list!6349 (left!13364 (c!247985 (++!4357 acc!392 (_1!8486 lt!526153))))) (list!6349 (right!13694 (c!247985 (++!4357 acc!392 (_1!8486 lt!526153)))))))))

(assert (= (and d!448231 c!248088) b!1513649))

(assert (= (and d!448231 (not c!248088)) b!1513650))

(assert (= (and b!1513650 c!248089) b!1513651))

(assert (= (and b!1513650 (not c!248089)) b!1513652))

(declare-fun m!1777929 () Bool)

(assert (=> b!1513651 m!1777929))

(declare-fun m!1777931 () Bool)

(assert (=> b!1513652 m!1777931))

(declare-fun m!1777933 () Bool)

(assert (=> b!1513652 m!1777933))

(assert (=> b!1513652 m!1777931))

(assert (=> b!1513652 m!1777933))

(declare-fun m!1777935 () Bool)

(assert (=> b!1513652 m!1777935))

(assert (=> d!447961 d!448231))

(declare-fun d!448233 () Bool)

(declare-fun c!248090 () Bool)

(assert (=> d!448233 (= c!248090 ((_ is Empty!5440) (c!247985 (_1!8486 lt!526151))))))

(declare-fun e!967976 () List!16139)

(assert (=> d!448233 (= (list!6349 (c!247985 (_1!8486 lt!526151))) e!967976)))

(declare-fun b!1513655 () Bool)

(declare-fun e!967977 () List!16139)

(assert (=> b!1513655 (= e!967977 (list!6352 (xs!8221 (c!247985 (_1!8486 lt!526151)))))))

(declare-fun b!1513654 () Bool)

(assert (=> b!1513654 (= e!967976 e!967977)))

(declare-fun c!248091 () Bool)

(assert (=> b!1513654 (= c!248091 ((_ is Leaf!8065) (c!247985 (_1!8486 lt!526151))))))

(declare-fun b!1513653 () Bool)

(assert (=> b!1513653 (= e!967976 Nil!16071)))

(declare-fun b!1513656 () Bool)

(assert (=> b!1513656 (= e!967977 (++!4360 (list!6349 (left!13364 (c!247985 (_1!8486 lt!526151)))) (list!6349 (right!13694 (c!247985 (_1!8486 lt!526151))))))))

(assert (= (and d!448233 c!248090) b!1513653))

(assert (= (and d!448233 (not c!248090)) b!1513654))

(assert (= (and b!1513654 c!248091) b!1513655))

(assert (= (and b!1513654 (not c!248091)) b!1513656))

(declare-fun m!1777937 () Bool)

(assert (=> b!1513655 m!1777937))

(declare-fun m!1777939 () Bool)

(assert (=> b!1513656 m!1777939))

(declare-fun m!1777941 () Bool)

(assert (=> b!1513656 m!1777941))

(assert (=> b!1513656 m!1777939))

(assert (=> b!1513656 m!1777941))

(declare-fun m!1777943 () Bool)

(assert (=> b!1513656 m!1777943))

(assert (=> d!447977 d!448233))

(declare-fun bs!364776 () Bool)

(declare-fun d!448235 () Bool)

(assert (= bs!364776 (and d!448235 d!448125)))

(declare-fun lambda!64554 () Int)

(assert (=> bs!364776 (= lambda!64554 lambda!64530)))

(declare-fun bs!364777 () Bool)

(assert (= bs!364777 (and d!448235 d!448157)))

(assert (=> bs!364777 (= lambda!64554 lambda!64540)))

(declare-fun bs!364778 () Bool)

(assert (= bs!364778 (and d!448235 d!448165)))

(assert (=> bs!364778 (= lambda!64554 lambda!64542)))

(declare-fun bs!364779 () Bool)

(assert (= bs!364779 (and d!448235 d!448207)))

(assert (=> bs!364779 (= lambda!64554 lambda!64547)))

(declare-fun bs!364780 () Bool)

(assert (= bs!364780 (and d!448235 d!448059)))

(assert (=> bs!364780 (= lambda!64554 lambda!64515)))

(declare-fun bs!364781 () Bool)

(assert (= bs!364781 (and d!448235 d!448153)))

(assert (=> bs!364781 (= lambda!64554 lambda!64536)))

(declare-fun bs!364782 () Bool)

(assert (= bs!364782 (and d!448235 d!448173)))

(assert (=> bs!364782 (= lambda!64554 lambda!64544)))

(declare-fun bs!364783 () Bool)

(assert (= bs!364783 (and d!448235 d!448203)))

(assert (=> bs!364783 (= lambda!64554 lambda!64546)))

(declare-fun bs!364784 () Bool)

(assert (= bs!364784 (and d!448235 d!448055)))

(assert (=> bs!364784 (= lambda!64554 lambda!64514)))

(declare-fun bs!364785 () Bool)

(assert (= bs!364785 (and d!448235 d!448149)))

(assert (=> bs!364785 (= lambda!64554 lambda!64532)))

(declare-fun bs!364786 () Bool)

(assert (= bs!364786 (and d!448235 d!448159)))

(assert (=> bs!364786 (= lambda!64554 lambda!64541)))

(declare-fun bs!364787 () Bool)

(assert (= bs!364787 (and d!448235 d!448195)))

(assert (=> bs!364787 (= lambda!64554 lambda!64545)))

(declare-fun bs!364788 () Bool)

(assert (= bs!364788 (and d!448235 d!448139)))

(assert (=> bs!364788 (= lambda!64554 lambda!64531)))

(declare-fun bs!364789 () Bool)

(assert (= bs!364789 (and d!448235 d!448075)))

(assert (=> bs!364789 (= lambda!64554 lambda!64517)))

(declare-fun bs!364790 () Bool)

(assert (= bs!364790 (and d!448235 d!448063)))

(assert (=> bs!364790 (= lambda!64554 lambda!64516)))

(declare-fun bs!364791 () Bool)

(assert (= bs!364791 (and d!448235 d!448101)))

(assert (=> bs!364791 (= lambda!64554 lambda!64523)))

(declare-fun bs!364792 () Bool)

(assert (= bs!364792 (and d!448235 d!448049)))

(assert (=> bs!364792 (= lambda!64554 lambda!64513)))

(declare-fun bs!364793 () Bool)

(assert (= bs!364793 (and d!448235 d!448121)))

(assert (=> bs!364793 (= lambda!64554 lambda!64529)))

(declare-fun bs!364794 () Bool)

(assert (= bs!364794 (and d!448235 d!448109)))

(assert (=> bs!364794 (= lambda!64554 lambda!64527)))

(declare-fun bs!364795 () Bool)

(assert (= bs!364795 (and d!448235 d!448119)))

(assert (=> bs!364795 (= lambda!64554 lambda!64528)))

(declare-fun bs!364796 () Bool)

(assert (= bs!364796 (and d!448235 d!448047)))

(assert (=> bs!364796 (= lambda!64554 lambda!64512)))

(declare-fun bs!364797 () Bool)

(assert (= bs!364797 (and d!448235 d!448099)))

(assert (=> bs!364797 (= lambda!64554 lambda!64522)))

(declare-fun bs!364798 () Bool)

(assert (= bs!364798 (and d!448235 d!448167)))

(assert (=> bs!364798 (= lambda!64554 lambda!64543)))

(declare-fun bs!364799 () Bool)

(assert (= bs!364799 (and d!448235 d!448089)))

(assert (=> bs!364799 (= lambda!64554 lambda!64521)))

(assert (=> d!448235 (= (inv!21315 (_1!8489 (_1!8490 (h!21476 mapDefault!7010)))) (forall!3856 (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapDefault!7010)))) lambda!64554))))

(declare-fun bs!364800 () Bool)

(assert (= bs!364800 d!448235))

(declare-fun m!1777945 () Bool)

(assert (=> bs!364800 m!1777945))

(assert (=> b!1513154 d!448235))

(declare-fun d!448237 () Bool)

(declare-fun lt!526271 () Int)

(assert (=> d!448237 (>= lt!526271 0)))

(declare-fun e!967980 () Int)

(assert (=> d!448237 (= lt!526271 e!967980)))

(declare-fun c!248094 () Bool)

(assert (=> d!448237 (= c!248094 ((_ is Nil!16070) lt!526179))))

(assert (=> d!448237 (= (size!13000 lt!526179) lt!526271)))

(declare-fun b!1513661 () Bool)

(assert (=> b!1513661 (= e!967980 0)))

(declare-fun b!1513662 () Bool)

(assert (=> b!1513662 (= e!967980 (+ 1 (size!13000 (t!139416 lt!526179))))))

(assert (= (and d!448237 c!248094) b!1513661))

(assert (= (and d!448237 (not c!248094)) b!1513662))

(declare-fun m!1777947 () Bool)

(assert (=> b!1513662 m!1777947))

(assert (=> b!1513085 d!448237))

(declare-fun d!448239 () Bool)

(declare-fun lt!526272 () Int)

(assert (=> d!448239 (>= lt!526272 0)))

(declare-fun e!967981 () Int)

(assert (=> d!448239 (= lt!526272 e!967981)))

(declare-fun c!248095 () Bool)

(assert (=> d!448239 (= c!248095 ((_ is Nil!16070) (list!6348 treated!70)))))

(assert (=> d!448239 (= (size!13000 (list!6348 treated!70)) lt!526272)))

(declare-fun b!1513663 () Bool)

(assert (=> b!1513663 (= e!967981 0)))

(declare-fun b!1513664 () Bool)

(assert (=> b!1513664 (= e!967981 (+ 1 (size!13000 (t!139416 (list!6348 treated!70)))))))

(assert (= (and d!448239 c!248095) b!1513663))

(assert (= (and d!448239 (not c!248095)) b!1513664))

(declare-fun m!1777949 () Bool)

(assert (=> b!1513664 m!1777949))

(assert (=> b!1513085 d!448239))

(declare-fun d!448241 () Bool)

(declare-fun lt!526273 () Int)

(assert (=> d!448241 (>= lt!526273 0)))

(declare-fun e!967982 () Int)

(assert (=> d!448241 (= lt!526273 e!967982)))

(declare-fun c!248096 () Bool)

(assert (=> d!448241 (= c!248096 ((_ is Nil!16070) (list!6348 input!1102)))))

(assert (=> d!448241 (= (size!13000 (list!6348 input!1102)) lt!526273)))

(declare-fun b!1513665 () Bool)

(assert (=> b!1513665 (= e!967982 0)))

(declare-fun b!1513666 () Bool)

(assert (=> b!1513666 (= e!967982 (+ 1 (size!13000 (t!139416 (list!6348 input!1102)))))))

(assert (= (and d!448241 c!248096) b!1513665))

(assert (= (and d!448241 (not c!248096)) b!1513666))

(declare-fun m!1777951 () Bool)

(assert (=> b!1513666 m!1777951))

(assert (=> b!1513085 d!448241))

(declare-fun d!448243 () Bool)

(assert (=> d!448243 (= (inv!21316 (xs!8220 (c!247983 input!1102))) (<= (size!13000 (innerList!5499 (xs!8220 (c!247983 input!1102)))) 2147483647))))

(declare-fun bs!364801 () Bool)

(assert (= bs!364801 d!448243))

(declare-fun m!1777953 () Bool)

(assert (=> bs!364801 m!1777953))

(assert (=> b!1513186 d!448243))

(declare-fun bs!364802 () Bool)

(declare-fun d!448245 () Bool)

(assert (= bs!364802 (and d!448245 d!448125)))

(declare-fun lambda!64555 () Int)

(assert (=> bs!364802 (= lambda!64555 lambda!64530)))

(declare-fun bs!364803 () Bool)

(assert (= bs!364803 (and d!448245 d!448157)))

(assert (=> bs!364803 (= lambda!64555 lambda!64540)))

(declare-fun bs!364804 () Bool)

(assert (= bs!364804 (and d!448245 d!448165)))

(assert (=> bs!364804 (= lambda!64555 lambda!64542)))

(declare-fun bs!364805 () Bool)

(assert (= bs!364805 (and d!448245 d!448207)))

(assert (=> bs!364805 (= lambda!64555 lambda!64547)))

(declare-fun bs!364806 () Bool)

(assert (= bs!364806 (and d!448245 d!448059)))

(assert (=> bs!364806 (= lambda!64555 lambda!64515)))

(declare-fun bs!364807 () Bool)

(assert (= bs!364807 (and d!448245 d!448153)))

(assert (=> bs!364807 (= lambda!64555 lambda!64536)))

(declare-fun bs!364808 () Bool)

(assert (= bs!364808 (and d!448245 d!448235)))

(assert (=> bs!364808 (= lambda!64555 lambda!64554)))

(declare-fun bs!364809 () Bool)

(assert (= bs!364809 (and d!448245 d!448173)))

(assert (=> bs!364809 (= lambda!64555 lambda!64544)))

(declare-fun bs!364810 () Bool)

(assert (= bs!364810 (and d!448245 d!448203)))

(assert (=> bs!364810 (= lambda!64555 lambda!64546)))

(declare-fun bs!364811 () Bool)

(assert (= bs!364811 (and d!448245 d!448055)))

(assert (=> bs!364811 (= lambda!64555 lambda!64514)))

(declare-fun bs!364812 () Bool)

(assert (= bs!364812 (and d!448245 d!448149)))

(assert (=> bs!364812 (= lambda!64555 lambda!64532)))

(declare-fun bs!364813 () Bool)

(assert (= bs!364813 (and d!448245 d!448159)))

(assert (=> bs!364813 (= lambda!64555 lambda!64541)))

(declare-fun bs!364814 () Bool)

(assert (= bs!364814 (and d!448245 d!448195)))

(assert (=> bs!364814 (= lambda!64555 lambda!64545)))

(declare-fun bs!364815 () Bool)

(assert (= bs!364815 (and d!448245 d!448139)))

(assert (=> bs!364815 (= lambda!64555 lambda!64531)))

(declare-fun bs!364816 () Bool)

(assert (= bs!364816 (and d!448245 d!448075)))

(assert (=> bs!364816 (= lambda!64555 lambda!64517)))

(declare-fun bs!364817 () Bool)

(assert (= bs!364817 (and d!448245 d!448063)))

(assert (=> bs!364817 (= lambda!64555 lambda!64516)))

(declare-fun bs!364818 () Bool)

(assert (= bs!364818 (and d!448245 d!448101)))

(assert (=> bs!364818 (= lambda!64555 lambda!64523)))

(declare-fun bs!364819 () Bool)

(assert (= bs!364819 (and d!448245 d!448049)))

(assert (=> bs!364819 (= lambda!64555 lambda!64513)))

(declare-fun bs!364820 () Bool)

(assert (= bs!364820 (and d!448245 d!448121)))

(assert (=> bs!364820 (= lambda!64555 lambda!64529)))

(declare-fun bs!364821 () Bool)

(assert (= bs!364821 (and d!448245 d!448109)))

(assert (=> bs!364821 (= lambda!64555 lambda!64527)))

(declare-fun bs!364822 () Bool)

(assert (= bs!364822 (and d!448245 d!448119)))

(assert (=> bs!364822 (= lambda!64555 lambda!64528)))

(declare-fun bs!364823 () Bool)

(assert (= bs!364823 (and d!448245 d!448047)))

(assert (=> bs!364823 (= lambda!64555 lambda!64512)))

(declare-fun bs!364824 () Bool)

(assert (= bs!364824 (and d!448245 d!448099)))

(assert (=> bs!364824 (= lambda!64555 lambda!64522)))

(declare-fun bs!364825 () Bool)

(assert (= bs!364825 (and d!448245 d!448167)))

(assert (=> bs!364825 (= lambda!64555 lambda!64543)))

(declare-fun bs!364826 () Bool)

(assert (= bs!364826 (and d!448245 d!448089)))

(assert (=> bs!364826 (= lambda!64555 lambda!64521)))

(assert (=> d!448245 (= (inv!21315 setElem!9136) (forall!3856 (exprs!1177 setElem!9136) lambda!64555))))

(declare-fun bs!364827 () Bool)

(assert (= bs!364827 d!448245))

(declare-fun m!1777955 () Bool)

(assert (=> bs!364827 m!1777955))

(assert (=> setNonEmpty!9136 d!448245))

(declare-fun d!448247 () Bool)

(declare-fun res!681042 () Bool)

(declare-fun e!967983 () Bool)

(assert (=> d!448247 (=> (not res!681042) (not e!967983))))

(assert (=> d!448247 (= res!681042 (= (csize!11108 (c!247983 treated!70)) (+ (size!13001 (left!13363 (c!247983 treated!70))) (size!13001 (right!13693 (c!247983 treated!70))))))))

(assert (=> d!448247 (= (inv!21311 (c!247983 treated!70)) e!967983)))

(declare-fun b!1513667 () Bool)

(declare-fun res!681043 () Bool)

(assert (=> b!1513667 (=> (not res!681043) (not e!967983))))

(assert (=> b!1513667 (= res!681043 (and (not (= (left!13363 (c!247983 treated!70)) Empty!5439)) (not (= (right!13693 (c!247983 treated!70)) Empty!5439))))))

(declare-fun b!1513668 () Bool)

(declare-fun res!681044 () Bool)

(assert (=> b!1513668 (=> (not res!681044) (not e!967983))))

(assert (=> b!1513668 (= res!681044 (= (cheight!5650 (c!247983 treated!70)) (+ (max!0 (height!812 (left!13363 (c!247983 treated!70))) (height!812 (right!13693 (c!247983 treated!70)))) 1)))))

(declare-fun b!1513669 () Bool)

(assert (=> b!1513669 (= e!967983 (<= 0 (cheight!5650 (c!247983 treated!70))))))

(assert (= (and d!448247 res!681042) b!1513667))

(assert (= (and b!1513667 res!681043) b!1513668))

(assert (= (and b!1513668 res!681044) b!1513669))

(declare-fun m!1777957 () Bool)

(assert (=> d!448247 m!1777957))

(declare-fun m!1777959 () Bool)

(assert (=> d!448247 m!1777959))

(declare-fun m!1777961 () Bool)

(assert (=> b!1513668 m!1777961))

(declare-fun m!1777963 () Bool)

(assert (=> b!1513668 m!1777963))

(assert (=> b!1513668 m!1777961))

(assert (=> b!1513668 m!1777963))

(declare-fun m!1777965 () Bool)

(assert (=> b!1513668 m!1777965))

(assert (=> b!1513102 d!448247))

(declare-fun d!448249 () Bool)

(declare-fun c!248097 () Bool)

(assert (=> d!448249 (= c!248097 ((_ is Node!5440) (left!13364 (c!247985 acc!392))))))

(declare-fun e!967984 () Bool)

(assert (=> d!448249 (= (inv!21310 (left!13364 (c!247985 acc!392))) e!967984)))

(declare-fun b!1513670 () Bool)

(assert (=> b!1513670 (= e!967984 (inv!21313 (left!13364 (c!247985 acc!392))))))

(declare-fun b!1513671 () Bool)

(declare-fun e!967985 () Bool)

(assert (=> b!1513671 (= e!967984 e!967985)))

(declare-fun res!681045 () Bool)

(assert (=> b!1513671 (= res!681045 (not ((_ is Leaf!8065) (left!13364 (c!247985 acc!392)))))))

(assert (=> b!1513671 (=> res!681045 e!967985)))

(declare-fun b!1513672 () Bool)

(assert (=> b!1513672 (= e!967985 (inv!21314 (left!13364 (c!247985 acc!392))))))

(assert (= (and d!448249 c!248097) b!1513670))

(assert (= (and d!448249 (not c!248097)) b!1513671))

(assert (= (and b!1513671 (not res!681045)) b!1513672))

(declare-fun m!1777967 () Bool)

(assert (=> b!1513670 m!1777967))

(declare-fun m!1777969 () Bool)

(assert (=> b!1513672 m!1777969))

(assert (=> b!1513255 d!448249))

(declare-fun d!448251 () Bool)

(declare-fun c!248098 () Bool)

(assert (=> d!448251 (= c!248098 ((_ is Node!5440) (right!13694 (c!247985 acc!392))))))

(declare-fun e!967986 () Bool)

(assert (=> d!448251 (= (inv!21310 (right!13694 (c!247985 acc!392))) e!967986)))

(declare-fun b!1513673 () Bool)

(assert (=> b!1513673 (= e!967986 (inv!21313 (right!13694 (c!247985 acc!392))))))

(declare-fun b!1513674 () Bool)

(declare-fun e!967987 () Bool)

(assert (=> b!1513674 (= e!967986 e!967987)))

(declare-fun res!681046 () Bool)

(assert (=> b!1513674 (= res!681046 (not ((_ is Leaf!8065) (right!13694 (c!247985 acc!392)))))))

(assert (=> b!1513674 (=> res!681046 e!967987)))

(declare-fun b!1513675 () Bool)

(assert (=> b!1513675 (= e!967987 (inv!21314 (right!13694 (c!247985 acc!392))))))

(assert (= (and d!448251 c!248098) b!1513673))

(assert (= (and d!448251 (not c!248098)) b!1513674))

(assert (= (and b!1513674 (not res!681046)) b!1513675))

(declare-fun m!1777971 () Bool)

(assert (=> b!1513673 m!1777971))

(declare-fun m!1777973 () Bool)

(assert (=> b!1513675 m!1777973))

(assert (=> b!1513255 d!448251))

(assert (=> d!447989 d!448241))

(assert (=> d!447989 d!448007))

(declare-fun d!448253 () Bool)

(declare-fun lt!526276 () Int)

(assert (=> d!448253 (= lt!526276 (size!13000 (list!6350 (c!247983 input!1102))))))

(assert (=> d!448253 (= lt!526276 (ite ((_ is Empty!5439) (c!247983 input!1102)) 0 (ite ((_ is Leaf!8064) (c!247983 input!1102)) (csize!11109 (c!247983 input!1102)) (csize!11108 (c!247983 input!1102)))))))

(assert (=> d!448253 (= (size!13001 (c!247983 input!1102)) lt!526276)))

(declare-fun bs!364828 () Bool)

(assert (= bs!364828 d!448253))

(assert (=> bs!364828 m!1777284))

(assert (=> bs!364828 m!1777284))

(declare-fun m!1777975 () Bool)

(assert (=> bs!364828 m!1777975))

(assert (=> d!447989 d!448253))

(declare-fun b!1513676 () Bool)

(declare-fun e!967988 () List!16138)

(assert (=> b!1513676 (= e!967988 Nil!16070)))

(declare-fun d!448255 () Bool)

(declare-fun c!248099 () Bool)

(assert (=> d!448255 (= c!248099 ((_ is Empty!5439) (c!247983 (_2!8486 lt!526154))))))

(assert (=> d!448255 (= (list!6350 (c!247983 (_2!8486 lt!526154))) e!967988)))

(declare-fun b!1513679 () Bool)

(declare-fun e!967989 () List!16138)

(assert (=> b!1513679 (= e!967989 (++!4358 (list!6350 (left!13363 (c!247983 (_2!8486 lt!526154)))) (list!6350 (right!13693 (c!247983 (_2!8486 lt!526154))))))))

(declare-fun b!1513677 () Bool)

(assert (=> b!1513677 (= e!967988 e!967989)))

(declare-fun c!248100 () Bool)

(assert (=> b!1513677 (= c!248100 ((_ is Leaf!8064) (c!247983 (_2!8486 lt!526154))))))

(declare-fun b!1513678 () Bool)

(assert (=> b!1513678 (= e!967989 (list!6351 (xs!8220 (c!247983 (_2!8486 lt!526154)))))))

(assert (= (and d!448255 c!248099) b!1513676))

(assert (= (and d!448255 (not c!248099)) b!1513677))

(assert (= (and b!1513677 c!248100) b!1513678))

(assert (= (and b!1513677 (not c!248100)) b!1513679))

(declare-fun m!1777977 () Bool)

(assert (=> b!1513679 m!1777977))

(declare-fun m!1777979 () Bool)

(assert (=> b!1513679 m!1777979))

(assert (=> b!1513679 m!1777977))

(assert (=> b!1513679 m!1777979))

(declare-fun m!1777981 () Bool)

(assert (=> b!1513679 m!1777981))

(declare-fun m!1777983 () Bool)

(assert (=> b!1513678 m!1777983))

(assert (=> d!447993 d!448255))

(declare-fun b!1513680 () Bool)

(declare-fun res!681047 () Bool)

(declare-fun e!967990 () Bool)

(assert (=> b!1513680 (=> (not res!681047) (not e!967990))))

(assert (=> b!1513680 (= res!681047 (isBalanced!1610 (right!13693 (c!247983 input!1102))))))

(declare-fun d!448257 () Bool)

(declare-fun res!681049 () Bool)

(declare-fun e!967991 () Bool)

(assert (=> d!448257 (=> res!681049 e!967991)))

(assert (=> d!448257 (= res!681049 (not ((_ is Node!5439) (c!247983 input!1102))))))

(assert (=> d!448257 (= (isBalanced!1610 (c!247983 input!1102)) e!967991)))

(declare-fun b!1513681 () Bool)

(declare-fun res!681048 () Bool)

(assert (=> b!1513681 (=> (not res!681048) (not e!967990))))

(assert (=> b!1513681 (= res!681048 (<= (- (height!812 (left!13363 (c!247983 input!1102))) (height!812 (right!13693 (c!247983 input!1102)))) 1))))

(declare-fun b!1513682 () Bool)

(assert (=> b!1513682 (= e!967990 (not (isEmpty!9932 (right!13693 (c!247983 input!1102)))))))

(declare-fun b!1513683 () Bool)

(declare-fun res!681052 () Bool)

(assert (=> b!1513683 (=> (not res!681052) (not e!967990))))

(assert (=> b!1513683 (= res!681052 (not (isEmpty!9932 (left!13363 (c!247983 input!1102)))))))

(declare-fun b!1513684 () Bool)

(declare-fun res!681050 () Bool)

(assert (=> b!1513684 (=> (not res!681050) (not e!967990))))

(assert (=> b!1513684 (= res!681050 (isBalanced!1610 (left!13363 (c!247983 input!1102))))))

(declare-fun b!1513685 () Bool)

(assert (=> b!1513685 (= e!967991 e!967990)))

(declare-fun res!681051 () Bool)

(assert (=> b!1513685 (=> (not res!681051) (not e!967990))))

(assert (=> b!1513685 (= res!681051 (<= (- 1) (- (height!812 (left!13363 (c!247983 input!1102))) (height!812 (right!13693 (c!247983 input!1102))))))))

(assert (= (and d!448257 (not res!681049)) b!1513685))

(assert (= (and b!1513685 res!681051) b!1513681))

(assert (= (and b!1513681 res!681048) b!1513684))

(assert (= (and b!1513684 res!681050) b!1513680))

(assert (= (and b!1513680 res!681047) b!1513683))

(assert (= (and b!1513683 res!681052) b!1513682))

(assert (=> b!1513685 m!1777780))

(assert (=> b!1513685 m!1777782))

(declare-fun m!1777985 () Bool)

(assert (=> b!1513682 m!1777985))

(declare-fun m!1777987 () Bool)

(assert (=> b!1513684 m!1777987))

(declare-fun m!1777989 () Bool)

(assert (=> b!1513683 m!1777989))

(assert (=> b!1513681 m!1777780))

(assert (=> b!1513681 m!1777782))

(declare-fun m!1777991 () Bool)

(assert (=> b!1513680 m!1777991))

(assert (=> d!448031 d!448257))

(declare-fun d!448259 () Bool)

(declare-fun e!967992 () Bool)

(assert (=> d!448259 e!967992))

(declare-fun res!681053 () Bool)

(assert (=> d!448259 (=> (not res!681053) (not e!967992))))

(assert (=> d!448259 (= res!681053 (isBalanced!1609 (prepend!466 (c!247985 (_1!8486 lt!526164)) (_1!8494 (v!22888 lt!526162)))))))

(declare-fun lt!526277 () BalanceConc!10822)

(assert (=> d!448259 (= lt!526277 (BalanceConc!10823 (prepend!466 (c!247985 (_1!8486 lt!526164)) (_1!8494 (v!22888 lt!526162)))))))

(assert (=> d!448259 (= (prepend!465 (_1!8486 lt!526164) (_1!8494 (v!22888 lt!526162))) lt!526277)))

(declare-fun b!1513686 () Bool)

(assert (=> b!1513686 (= e!967992 (= (list!6347 lt!526277) (Cons!16071 (_1!8494 (v!22888 lt!526162)) (list!6347 (_1!8486 lt!526164)))))))

(assert (= (and d!448259 res!681053) b!1513686))

(declare-fun m!1777993 () Bool)

(assert (=> d!448259 m!1777993))

(assert (=> d!448259 m!1777993))

(declare-fun m!1777995 () Bool)

(assert (=> d!448259 m!1777995))

(declare-fun m!1777997 () Bool)

(assert (=> b!1513686 m!1777997))

(declare-fun m!1777999 () Bool)

(assert (=> b!1513686 m!1777999))

(assert (=> b!1513030 d!448259))

(declare-fun b!1513688 () Bool)

(declare-fun e!967994 () Bool)

(declare-fun e!967996 () Bool)

(assert (=> b!1513688 (= e!967994 e!967996)))

(declare-fun res!681055 () Bool)

(declare-fun lt!526279 () tuple2!14938)

(assert (=> b!1513688 (= res!681055 (< (size!12998 (_2!8486 lt!526279)) (size!12998 (_2!8494 (v!22888 lt!526162)))))))

(assert (=> b!1513688 (=> (not res!681055) (not e!967996))))

(declare-fun b!1513689 () Bool)

(declare-fun res!681056 () Bool)

(declare-fun e!967995 () Bool)

(assert (=> b!1513689 (=> (not res!681056) (not e!967995))))

(assert (=> b!1513689 (= res!681056 (= (list!6347 (_1!8486 lt!526279)) (_1!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 (_2!8494 (v!22888 lt!526162)))))))))

(declare-fun b!1513690 () Bool)

(declare-fun e!967993 () tuple2!14938)

(declare-fun lt!526280 () tuple2!14938)

(declare-fun lt!526278 () Option!2930)

(assert (=> b!1513690 (= e!967993 (tuple2!14939 (prepend!465 (_1!8486 lt!526280) (_1!8494 (v!22888 lt!526278))) (_2!8486 lt!526280)))))

(assert (=> b!1513690 (= lt!526280 (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526278))))))

(declare-fun b!1513691 () Bool)

(assert (=> b!1513691 (= e!967994 (= (list!6348 (_2!8486 lt!526279)) (list!6348 (_2!8494 (v!22888 lt!526162)))))))

(declare-fun d!448261 () Bool)

(assert (=> d!448261 e!967995))

(declare-fun res!681054 () Bool)

(assert (=> d!448261 (=> (not res!681054) (not e!967995))))

(assert (=> d!448261 (= res!681054 e!967994)))

(declare-fun c!248102 () Bool)

(assert (=> d!448261 (= c!248102 (> (size!12999 (_1!8486 lt!526279)) 0))))

(assert (=> d!448261 (= lt!526279 e!967993)))

(declare-fun c!248101 () Bool)

(assert (=> d!448261 (= c!248101 ((_ is Some!2929) lt!526278))))

(assert (=> d!448261 (= lt!526278 (maxPrefixZipperSequence!589 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526162))))))

(assert (=> d!448261 (= (lexRec!331 thiss!13241 rules!1640 (_2!8494 (v!22888 lt!526162))) lt!526279)))

(declare-fun b!1513687 () Bool)

(assert (=> b!1513687 (= e!967996 (not (isEmpty!9931 (_1!8486 lt!526279))))))

(declare-fun b!1513692 () Bool)

(assert (=> b!1513692 (= e!967995 (= (list!6348 (_2!8486 lt!526279)) (_2!8493 (lexList!747 thiss!13241 rules!1640 (list!6348 (_2!8494 (v!22888 lt!526162)))))))))

(declare-fun b!1513693 () Bool)

(assert (=> b!1513693 (= e!967993 (tuple2!14939 (BalanceConc!10823 Empty!5440) (_2!8494 (v!22888 lt!526162))))))

(assert (= (and d!448261 c!248101) b!1513690))

(assert (= (and d!448261 (not c!248101)) b!1513693))

(assert (= (and d!448261 c!248102) b!1513688))

(assert (= (and d!448261 (not c!248102)) b!1513691))

(assert (= (and b!1513688 res!681055) b!1513687))

(assert (= (and d!448261 res!681054) b!1513689))

(assert (= (and b!1513689 res!681056) b!1513692))

(declare-fun m!1778001 () Bool)

(assert (=> b!1513692 m!1778001))

(declare-fun m!1778003 () Bool)

(assert (=> b!1513692 m!1778003))

(assert (=> b!1513692 m!1778003))

(declare-fun m!1778005 () Bool)

(assert (=> b!1513692 m!1778005))

(declare-fun m!1778007 () Bool)

(assert (=> b!1513687 m!1778007))

(declare-fun m!1778009 () Bool)

(assert (=> b!1513688 m!1778009))

(declare-fun m!1778011 () Bool)

(assert (=> b!1513688 m!1778011))

(declare-fun m!1778013 () Bool)

(assert (=> b!1513690 m!1778013))

(declare-fun m!1778015 () Bool)

(assert (=> b!1513690 m!1778015))

(assert (=> b!1513691 m!1778001))

(assert (=> b!1513691 m!1778003))

(declare-fun m!1778017 () Bool)

(assert (=> d!448261 m!1778017))

(declare-fun m!1778019 () Bool)

(assert (=> d!448261 m!1778019))

(declare-fun m!1778021 () Bool)

(assert (=> b!1513689 m!1778021))

(assert (=> b!1513689 m!1778003))

(assert (=> b!1513689 m!1778003))

(assert (=> b!1513689 m!1778005))

(assert (=> b!1513030 d!448261))

(assert (=> b!1513003 d!448027))

(declare-fun d!448263 () Bool)

(declare-fun res!681057 () Bool)

(declare-fun e!967997 () Bool)

(assert (=> d!448263 (=> (not res!681057) (not e!967997))))

(assert (=> d!448263 (= res!681057 (= (csize!11108 (c!247983 totalInput!458)) (+ (size!13001 (left!13363 (c!247983 totalInput!458))) (size!13001 (right!13693 (c!247983 totalInput!458))))))))

(assert (=> d!448263 (= (inv!21311 (c!247983 totalInput!458)) e!967997)))

(declare-fun b!1513694 () Bool)

(declare-fun res!681058 () Bool)

(assert (=> b!1513694 (=> (not res!681058) (not e!967997))))

(assert (=> b!1513694 (= res!681058 (and (not (= (left!13363 (c!247983 totalInput!458)) Empty!5439)) (not (= (right!13693 (c!247983 totalInput!458)) Empty!5439))))))

(declare-fun b!1513695 () Bool)

(declare-fun res!681059 () Bool)

(assert (=> b!1513695 (=> (not res!681059) (not e!967997))))

(assert (=> b!1513695 (= res!681059 (= (cheight!5650 (c!247983 totalInput!458)) (+ (max!0 (height!812 (left!13363 (c!247983 totalInput!458))) (height!812 (right!13693 (c!247983 totalInput!458)))) 1)))))

(declare-fun b!1513696 () Bool)

(assert (=> b!1513696 (= e!967997 (<= 0 (cheight!5650 (c!247983 totalInput!458))))))

(assert (= (and d!448263 res!681057) b!1513694))

(assert (= (and b!1513694 res!681058) b!1513695))

(assert (= (and b!1513695 res!681059) b!1513696))

(declare-fun m!1778023 () Bool)

(assert (=> d!448263 m!1778023))

(declare-fun m!1778025 () Bool)

(assert (=> d!448263 m!1778025))

(declare-fun m!1778027 () Bool)

(assert (=> b!1513695 m!1778027))

(declare-fun m!1778029 () Bool)

(assert (=> b!1513695 m!1778029))

(assert (=> b!1513695 m!1778027))

(assert (=> b!1513695 m!1778029))

(declare-fun m!1778031 () Bool)

(assert (=> b!1513695 m!1778031))

(assert (=> b!1513090 d!448263))

(declare-fun d!448265 () Bool)

(assert (=> d!448265 (= (list!6347 (_1!8486 lt!526163)) (list!6349 (c!247985 (_1!8486 lt!526163))))))

(declare-fun bs!364829 () Bool)

(assert (= bs!364829 d!448265))

(declare-fun m!1778033 () Bool)

(assert (=> bs!364829 m!1778033))

(assert (=> b!1513029 d!448265))

(assert (=> b!1513029 d!448117))

(assert (=> b!1513029 d!448007))

(assert (=> b!1513039 d!448067))

(assert (=> b!1513039 d!448211))

(assert (=> b!1513039 d!448001))

(assert (=> b!1513113 d!448225))

(declare-fun d!448267 () Bool)

(declare-fun lt!526281 () Int)

(assert (=> d!448267 (= lt!526281 (size!13000 (list!6348 (_2!8486 lt!526166))))))

(assert (=> d!448267 (= lt!526281 (size!13001 (c!247983 (_2!8486 lt!526166))))))

(assert (=> d!448267 (= (size!12998 (_2!8486 lt!526166)) lt!526281)))

(declare-fun bs!364830 () Bool)

(assert (= bs!364830 d!448267))

(assert (=> bs!364830 m!1777180))

(assert (=> bs!364830 m!1777180))

(declare-fun m!1778035 () Bool)

(assert (=> bs!364830 m!1778035))

(declare-fun m!1778037 () Bool)

(assert (=> bs!364830 m!1778037))

(assert (=> b!1513035 d!448267))

(declare-fun d!448269 () Bool)

(declare-fun lt!526282 () Int)

(assert (=> d!448269 (= lt!526282 (size!13000 (list!6348 totalInput!458)))))

(assert (=> d!448269 (= lt!526282 (size!13001 (c!247983 totalInput!458)))))

(assert (=> d!448269 (= (size!12998 totalInput!458) lt!526282)))

(declare-fun bs!364831 () Bool)

(assert (= bs!364831 d!448269))

(assert (=> bs!364831 m!1777108))

(assert (=> bs!364831 m!1777108))

(assert (=> bs!364831 m!1777872))

(declare-fun m!1778039 () Bool)

(assert (=> bs!364831 m!1778039))

(assert (=> b!1513035 d!448269))

(declare-fun bs!364832 () Bool)

(declare-fun d!448271 () Bool)

(assert (= bs!364832 (and d!448271 d!448125)))

(declare-fun lambda!64556 () Int)

(assert (=> bs!364832 (= lambda!64556 lambda!64530)))

(declare-fun bs!364833 () Bool)

(assert (= bs!364833 (and d!448271 d!448157)))

(assert (=> bs!364833 (= lambda!64556 lambda!64540)))

(declare-fun bs!364834 () Bool)

(assert (= bs!364834 (and d!448271 d!448165)))

(assert (=> bs!364834 (= lambda!64556 lambda!64542)))

(declare-fun bs!364835 () Bool)

(assert (= bs!364835 (and d!448271 d!448207)))

(assert (=> bs!364835 (= lambda!64556 lambda!64547)))

(declare-fun bs!364836 () Bool)

(assert (= bs!364836 (and d!448271 d!448059)))

(assert (=> bs!364836 (= lambda!64556 lambda!64515)))

(declare-fun bs!364837 () Bool)

(assert (= bs!364837 (and d!448271 d!448153)))

(assert (=> bs!364837 (= lambda!64556 lambda!64536)))

(declare-fun bs!364838 () Bool)

(assert (= bs!364838 (and d!448271 d!448235)))

(assert (=> bs!364838 (= lambda!64556 lambda!64554)))

(declare-fun bs!364839 () Bool)

(assert (= bs!364839 (and d!448271 d!448173)))

(assert (=> bs!364839 (= lambda!64556 lambda!64544)))

(declare-fun bs!364840 () Bool)

(assert (= bs!364840 (and d!448271 d!448203)))

(assert (=> bs!364840 (= lambda!64556 lambda!64546)))

(declare-fun bs!364841 () Bool)

(assert (= bs!364841 (and d!448271 d!448055)))

(assert (=> bs!364841 (= lambda!64556 lambda!64514)))

(declare-fun bs!364842 () Bool)

(assert (= bs!364842 (and d!448271 d!448149)))

(assert (=> bs!364842 (= lambda!64556 lambda!64532)))

(declare-fun bs!364843 () Bool)

(assert (= bs!364843 (and d!448271 d!448159)))

(assert (=> bs!364843 (= lambda!64556 lambda!64541)))

(declare-fun bs!364844 () Bool)

(assert (= bs!364844 (and d!448271 d!448195)))

(assert (=> bs!364844 (= lambda!64556 lambda!64545)))

(declare-fun bs!364845 () Bool)

(assert (= bs!364845 (and d!448271 d!448139)))

(assert (=> bs!364845 (= lambda!64556 lambda!64531)))

(declare-fun bs!364846 () Bool)

(assert (= bs!364846 (and d!448271 d!448075)))

(assert (=> bs!364846 (= lambda!64556 lambda!64517)))

(declare-fun bs!364847 () Bool)

(assert (= bs!364847 (and d!448271 d!448063)))

(assert (=> bs!364847 (= lambda!64556 lambda!64516)))

(declare-fun bs!364848 () Bool)

(assert (= bs!364848 (and d!448271 d!448101)))

(assert (=> bs!364848 (= lambda!64556 lambda!64523)))

(declare-fun bs!364849 () Bool)

(assert (= bs!364849 (and d!448271 d!448049)))

(assert (=> bs!364849 (= lambda!64556 lambda!64513)))

(declare-fun bs!364850 () Bool)

(assert (= bs!364850 (and d!448271 d!448121)))

(assert (=> bs!364850 (= lambda!64556 lambda!64529)))

(declare-fun bs!364851 () Bool)

(assert (= bs!364851 (and d!448271 d!448109)))

(assert (=> bs!364851 (= lambda!64556 lambda!64527)))

(declare-fun bs!364852 () Bool)

(assert (= bs!364852 (and d!448271 d!448119)))

(assert (=> bs!364852 (= lambda!64556 lambda!64528)))

(declare-fun bs!364853 () Bool)

(assert (= bs!364853 (and d!448271 d!448047)))

(assert (=> bs!364853 (= lambda!64556 lambda!64512)))

(declare-fun bs!364854 () Bool)

(assert (= bs!364854 (and d!448271 d!448099)))

(assert (=> bs!364854 (= lambda!64556 lambda!64522)))

(declare-fun bs!364855 () Bool)

(assert (= bs!364855 (and d!448271 d!448167)))

(assert (=> bs!364855 (= lambda!64556 lambda!64543)))

(declare-fun bs!364856 () Bool)

(assert (= bs!364856 (and d!448271 d!448245)))

(assert (=> bs!364856 (= lambda!64556 lambda!64555)))

(declare-fun bs!364857 () Bool)

(assert (= bs!364857 (and d!448271 d!448089)))

(assert (=> bs!364857 (= lambda!64556 lambda!64521)))

(assert (=> d!448271 (= (inv!21315 (_2!8491 (_1!8492 (h!21477 mapValue!7013)))) (forall!3856 (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapValue!7013)))) lambda!64556))))

(declare-fun bs!364858 () Bool)

(assert (= bs!364858 d!448271))

(declare-fun m!1778041 () Bool)

(assert (=> bs!364858 m!1778041))

(assert (=> b!1513240 d!448271))

(declare-fun b!1513697 () Bool)

(declare-fun res!681060 () Bool)

(declare-fun e!967998 () Bool)

(assert (=> b!1513697 (=> (not res!681060) (not e!967998))))

(assert (=> b!1513697 (= res!681060 (isBalanced!1610 (right!13693 (c!247983 treated!70))))))

(declare-fun d!448273 () Bool)

(declare-fun res!681062 () Bool)

(declare-fun e!967999 () Bool)

(assert (=> d!448273 (=> res!681062 e!967999)))

(assert (=> d!448273 (= res!681062 (not ((_ is Node!5439) (c!247983 treated!70))))))

(assert (=> d!448273 (= (isBalanced!1610 (c!247983 treated!70)) e!967999)))

(declare-fun b!1513698 () Bool)

(declare-fun res!681061 () Bool)

(assert (=> b!1513698 (=> (not res!681061) (not e!967998))))

(assert (=> b!1513698 (= res!681061 (<= (- (height!812 (left!13363 (c!247983 treated!70))) (height!812 (right!13693 (c!247983 treated!70)))) 1))))

(declare-fun b!1513699 () Bool)

(assert (=> b!1513699 (= e!967998 (not (isEmpty!9932 (right!13693 (c!247983 treated!70)))))))

(declare-fun b!1513700 () Bool)

(declare-fun res!681065 () Bool)

(assert (=> b!1513700 (=> (not res!681065) (not e!967998))))

(assert (=> b!1513700 (= res!681065 (not (isEmpty!9932 (left!13363 (c!247983 treated!70)))))))

(declare-fun b!1513701 () Bool)

(declare-fun res!681063 () Bool)

(assert (=> b!1513701 (=> (not res!681063) (not e!967998))))

(assert (=> b!1513701 (= res!681063 (isBalanced!1610 (left!13363 (c!247983 treated!70))))))

(declare-fun b!1513702 () Bool)

(assert (=> b!1513702 (= e!967999 e!967998)))

(declare-fun res!681064 () Bool)

(assert (=> b!1513702 (=> (not res!681064) (not e!967998))))

(assert (=> b!1513702 (= res!681064 (<= (- 1) (- (height!812 (left!13363 (c!247983 treated!70))) (height!812 (right!13693 (c!247983 treated!70))))))))

(assert (= (and d!448273 (not res!681062)) b!1513702))

(assert (= (and b!1513702 res!681064) b!1513698))

(assert (= (and b!1513698 res!681061) b!1513701))

(assert (= (and b!1513701 res!681063) b!1513697))

(assert (= (and b!1513697 res!681060) b!1513700))

(assert (= (and b!1513700 res!681065) b!1513699))

(assert (=> b!1513702 m!1777961))

(assert (=> b!1513702 m!1777963))

(declare-fun m!1778043 () Bool)

(assert (=> b!1513699 m!1778043))

(declare-fun m!1778045 () Bool)

(assert (=> b!1513701 m!1778045))

(declare-fun m!1778047 () Bool)

(assert (=> b!1513700 m!1778047))

(assert (=> b!1513698 m!1777961))

(assert (=> b!1513698 m!1777963))

(declare-fun m!1778049 () Bool)

(assert (=> b!1513697 m!1778049))

(assert (=> d!448029 d!448273))

(declare-fun bs!364859 () Bool)

(declare-fun d!448275 () Bool)

(assert (= bs!364859 (and d!448275 d!448125)))

(declare-fun lambda!64557 () Int)

(assert (=> bs!364859 (= lambda!64557 lambda!64530)))

(declare-fun bs!364860 () Bool)

(assert (= bs!364860 (and d!448275 d!448157)))

(assert (=> bs!364860 (= lambda!64557 lambda!64540)))

(declare-fun bs!364861 () Bool)

(assert (= bs!364861 (and d!448275 d!448165)))

(assert (=> bs!364861 (= lambda!64557 lambda!64542)))

(declare-fun bs!364862 () Bool)

(assert (= bs!364862 (and d!448275 d!448207)))

(assert (=> bs!364862 (= lambda!64557 lambda!64547)))

(declare-fun bs!364863 () Bool)

(assert (= bs!364863 (and d!448275 d!448059)))

(assert (=> bs!364863 (= lambda!64557 lambda!64515)))

(declare-fun bs!364864 () Bool)

(assert (= bs!364864 (and d!448275 d!448153)))

(assert (=> bs!364864 (= lambda!64557 lambda!64536)))

(declare-fun bs!364865 () Bool)

(assert (= bs!364865 (and d!448275 d!448173)))

(assert (=> bs!364865 (= lambda!64557 lambda!64544)))

(declare-fun bs!364866 () Bool)

(assert (= bs!364866 (and d!448275 d!448203)))

(assert (=> bs!364866 (= lambda!64557 lambda!64546)))

(declare-fun bs!364867 () Bool)

(assert (= bs!364867 (and d!448275 d!448055)))

(assert (=> bs!364867 (= lambda!64557 lambda!64514)))

(declare-fun bs!364868 () Bool)

(assert (= bs!364868 (and d!448275 d!448149)))

(assert (=> bs!364868 (= lambda!64557 lambda!64532)))

(declare-fun bs!364869 () Bool)

(assert (= bs!364869 (and d!448275 d!448159)))

(assert (=> bs!364869 (= lambda!64557 lambda!64541)))

(declare-fun bs!364870 () Bool)

(assert (= bs!364870 (and d!448275 d!448195)))

(assert (=> bs!364870 (= lambda!64557 lambda!64545)))

(declare-fun bs!364871 () Bool)

(assert (= bs!364871 (and d!448275 d!448139)))

(assert (=> bs!364871 (= lambda!64557 lambda!64531)))

(declare-fun bs!364872 () Bool)

(assert (= bs!364872 (and d!448275 d!448075)))

(assert (=> bs!364872 (= lambda!64557 lambda!64517)))

(declare-fun bs!364873 () Bool)

(assert (= bs!364873 (and d!448275 d!448063)))

(assert (=> bs!364873 (= lambda!64557 lambda!64516)))

(declare-fun bs!364874 () Bool)

(assert (= bs!364874 (and d!448275 d!448101)))

(assert (=> bs!364874 (= lambda!64557 lambda!64523)))

(declare-fun bs!364875 () Bool)

(assert (= bs!364875 (and d!448275 d!448049)))

(assert (=> bs!364875 (= lambda!64557 lambda!64513)))

(declare-fun bs!364876 () Bool)

(assert (= bs!364876 (and d!448275 d!448271)))

(assert (=> bs!364876 (= lambda!64557 lambda!64556)))

(declare-fun bs!364877 () Bool)

(assert (= bs!364877 (and d!448275 d!448235)))

(assert (=> bs!364877 (= lambda!64557 lambda!64554)))

(declare-fun bs!364878 () Bool)

(assert (= bs!364878 (and d!448275 d!448121)))

(assert (=> bs!364878 (= lambda!64557 lambda!64529)))

(declare-fun bs!364879 () Bool)

(assert (= bs!364879 (and d!448275 d!448109)))

(assert (=> bs!364879 (= lambda!64557 lambda!64527)))

(declare-fun bs!364880 () Bool)

(assert (= bs!364880 (and d!448275 d!448119)))

(assert (=> bs!364880 (= lambda!64557 lambda!64528)))

(declare-fun bs!364881 () Bool)

(assert (= bs!364881 (and d!448275 d!448047)))

(assert (=> bs!364881 (= lambda!64557 lambda!64512)))

(declare-fun bs!364882 () Bool)

(assert (= bs!364882 (and d!448275 d!448099)))

(assert (=> bs!364882 (= lambda!64557 lambda!64522)))

(declare-fun bs!364883 () Bool)

(assert (= bs!364883 (and d!448275 d!448167)))

(assert (=> bs!364883 (= lambda!64557 lambda!64543)))

(declare-fun bs!364884 () Bool)

(assert (= bs!364884 (and d!448275 d!448245)))

(assert (=> bs!364884 (= lambda!64557 lambda!64555)))

(declare-fun bs!364885 () Bool)

(assert (= bs!364885 (and d!448275 d!448089)))

(assert (=> bs!364885 (= lambda!64557 lambda!64521)))

(assert (=> d!448275 (= (inv!21315 setElem!9125) (forall!3856 (exprs!1177 setElem!9125) lambda!64557))))

(declare-fun bs!364886 () Bool)

(assert (= bs!364886 d!448275))

(declare-fun m!1778051 () Bool)

(assert (=> bs!364886 m!1778051))

(assert (=> setNonEmpty!9125 d!448275))

(assert (=> b!1513067 d!448073))

(assert (=> b!1513067 d!448229))

(assert (=> b!1513067 d!448005))

(declare-fun b!1513703 () Bool)

(declare-fun e!968000 () List!16138)

(assert (=> b!1513703 (= e!968000 Nil!16070)))

(declare-fun d!448277 () Bool)

(declare-fun c!248103 () Bool)

(assert (=> d!448277 (= c!248103 ((_ is Empty!5439) (c!247983 (_2!8486 lt!526151))))))

(assert (=> d!448277 (= (list!6350 (c!247983 (_2!8486 lt!526151))) e!968000)))

(declare-fun b!1513706 () Bool)

(declare-fun e!968001 () List!16138)

(assert (=> b!1513706 (= e!968001 (++!4358 (list!6350 (left!13363 (c!247983 (_2!8486 lt!526151)))) (list!6350 (right!13693 (c!247983 (_2!8486 lt!526151))))))))

(declare-fun b!1513704 () Bool)

(assert (=> b!1513704 (= e!968000 e!968001)))

(declare-fun c!248104 () Bool)

(assert (=> b!1513704 (= c!248104 ((_ is Leaf!8064) (c!247983 (_2!8486 lt!526151))))))

(declare-fun b!1513705 () Bool)

(assert (=> b!1513705 (= e!968001 (list!6351 (xs!8220 (c!247983 (_2!8486 lt!526151)))))))

(assert (= (and d!448277 c!248103) b!1513703))

(assert (= (and d!448277 (not c!248103)) b!1513704))

(assert (= (and b!1513704 c!248104) b!1513705))

(assert (= (and b!1513704 (not c!248104)) b!1513706))

(declare-fun m!1778053 () Bool)

(assert (=> b!1513706 m!1778053))

(declare-fun m!1778055 () Bool)

(assert (=> b!1513706 m!1778055))

(assert (=> b!1513706 m!1778053))

(assert (=> b!1513706 m!1778055))

(declare-fun m!1778057 () Bool)

(assert (=> b!1513706 m!1778057))

(declare-fun m!1778059 () Bool)

(assert (=> b!1513705 m!1778059))

(assert (=> d!448021 d!448277))

(declare-fun d!448279 () Bool)

(declare-fun lt!526283 () Int)

(assert (=> d!448279 (= lt!526283 (size!13000 (list!6348 (_2!8486 lt!526172))))))

(assert (=> d!448279 (= lt!526283 (size!13001 (c!247983 (_2!8486 lt!526172))))))

(assert (=> d!448279 (= (size!12998 (_2!8486 lt!526172)) lt!526283)))

(declare-fun bs!364887 () Bool)

(assert (= bs!364887 d!448279))

(assert (=> bs!364887 m!1777228))

(assert (=> bs!364887 m!1777228))

(declare-fun m!1778061 () Bool)

(assert (=> bs!364887 m!1778061))

(declare-fun m!1778063 () Bool)

(assert (=> bs!364887 m!1778063))

(assert (=> b!1513063 d!448279))

(declare-fun d!448281 () Bool)

(declare-fun lt!526284 () Int)

(assert (=> d!448281 (= lt!526284 (size!13000 (list!6348 treated!70)))))

(assert (=> d!448281 (= lt!526284 (size!13001 (c!247983 treated!70)))))

(assert (=> d!448281 (= (size!12998 treated!70) lt!526284)))

(declare-fun bs!364888 () Bool)

(assert (= bs!364888 d!448281))

(assert (=> bs!364888 m!1777110))

(assert (=> bs!364888 m!1777110))

(assert (=> bs!364888 m!1777272))

(declare-fun m!1778065 () Bool)

(assert (=> bs!364888 m!1778065))

(assert (=> b!1513063 d!448281))

(assert (=> b!1513051 d!448077))

(assert (=> b!1513051 d!448079))

(assert (=> b!1513051 d!448081))

(assert (=> b!1513051 d!448083))

(assert (=> b!1513051 d!448085))

(declare-fun bs!364889 () Bool)

(declare-fun d!448283 () Bool)

(assert (= bs!364889 (and d!448283 d!448125)))

(declare-fun lambda!64558 () Int)

(assert (=> bs!364889 (= lambda!64558 lambda!64530)))

(declare-fun bs!364890 () Bool)

(assert (= bs!364890 (and d!448283 d!448157)))

(assert (=> bs!364890 (= lambda!64558 lambda!64540)))

(declare-fun bs!364891 () Bool)

(assert (= bs!364891 (and d!448283 d!448165)))

(assert (=> bs!364891 (= lambda!64558 lambda!64542)))

(declare-fun bs!364892 () Bool)

(assert (= bs!364892 (and d!448283 d!448207)))

(assert (=> bs!364892 (= lambda!64558 lambda!64547)))

(declare-fun bs!364893 () Bool)

(assert (= bs!364893 (and d!448283 d!448059)))

(assert (=> bs!364893 (= lambda!64558 lambda!64515)))

(declare-fun bs!364894 () Bool)

(assert (= bs!364894 (and d!448283 d!448173)))

(assert (=> bs!364894 (= lambda!64558 lambda!64544)))

(declare-fun bs!364895 () Bool)

(assert (= bs!364895 (and d!448283 d!448203)))

(assert (=> bs!364895 (= lambda!64558 lambda!64546)))

(declare-fun bs!364896 () Bool)

(assert (= bs!364896 (and d!448283 d!448055)))

(assert (=> bs!364896 (= lambda!64558 lambda!64514)))

(declare-fun bs!364897 () Bool)

(assert (= bs!364897 (and d!448283 d!448149)))

(assert (=> bs!364897 (= lambda!64558 lambda!64532)))

(declare-fun bs!364898 () Bool)

(assert (= bs!364898 (and d!448283 d!448159)))

(assert (=> bs!364898 (= lambda!64558 lambda!64541)))

(declare-fun bs!364899 () Bool)

(assert (= bs!364899 (and d!448283 d!448195)))

(assert (=> bs!364899 (= lambda!64558 lambda!64545)))

(declare-fun bs!364900 () Bool)

(assert (= bs!364900 (and d!448283 d!448139)))

(assert (=> bs!364900 (= lambda!64558 lambda!64531)))

(declare-fun bs!364901 () Bool)

(assert (= bs!364901 (and d!448283 d!448075)))

(assert (=> bs!364901 (= lambda!64558 lambda!64517)))

(declare-fun bs!364902 () Bool)

(assert (= bs!364902 (and d!448283 d!448063)))

(assert (=> bs!364902 (= lambda!64558 lambda!64516)))

(declare-fun bs!364903 () Bool)

(assert (= bs!364903 (and d!448283 d!448101)))

(assert (=> bs!364903 (= lambda!64558 lambda!64523)))

(declare-fun bs!364904 () Bool)

(assert (= bs!364904 (and d!448283 d!448049)))

(assert (=> bs!364904 (= lambda!64558 lambda!64513)))

(declare-fun bs!364905 () Bool)

(assert (= bs!364905 (and d!448283 d!448275)))

(assert (=> bs!364905 (= lambda!64558 lambda!64557)))

(declare-fun bs!364906 () Bool)

(assert (= bs!364906 (and d!448283 d!448153)))

(assert (=> bs!364906 (= lambda!64558 lambda!64536)))

(declare-fun bs!364907 () Bool)

(assert (= bs!364907 (and d!448283 d!448271)))

(assert (=> bs!364907 (= lambda!64558 lambda!64556)))

(declare-fun bs!364908 () Bool)

(assert (= bs!364908 (and d!448283 d!448235)))

(assert (=> bs!364908 (= lambda!64558 lambda!64554)))

(declare-fun bs!364909 () Bool)

(assert (= bs!364909 (and d!448283 d!448121)))

(assert (=> bs!364909 (= lambda!64558 lambda!64529)))

(declare-fun bs!364910 () Bool)

(assert (= bs!364910 (and d!448283 d!448109)))

(assert (=> bs!364910 (= lambda!64558 lambda!64527)))

(declare-fun bs!364911 () Bool)

(assert (= bs!364911 (and d!448283 d!448119)))

(assert (=> bs!364911 (= lambda!64558 lambda!64528)))

(declare-fun bs!364912 () Bool)

(assert (= bs!364912 (and d!448283 d!448047)))

(assert (=> bs!364912 (= lambda!64558 lambda!64512)))

(declare-fun bs!364913 () Bool)

(assert (= bs!364913 (and d!448283 d!448099)))

(assert (=> bs!364913 (= lambda!64558 lambda!64522)))

(declare-fun bs!364914 () Bool)

(assert (= bs!364914 (and d!448283 d!448167)))

(assert (=> bs!364914 (= lambda!64558 lambda!64543)))

(declare-fun bs!364915 () Bool)

(assert (= bs!364915 (and d!448283 d!448245)))

(assert (=> bs!364915 (= lambda!64558 lambda!64555)))

(declare-fun bs!364916 () Bool)

(assert (= bs!364916 (and d!448283 d!448089)))

(assert (=> bs!364916 (= lambda!64558 lambda!64521)))

(assert (=> d!448283 (= (inv!21315 setElem!9122) (forall!3856 (exprs!1177 setElem!9122) lambda!64558))))

(declare-fun bs!364917 () Bool)

(assert (= bs!364917 d!448283))

(declare-fun m!1778067 () Bool)

(assert (=> bs!364917 m!1778067))

(assert (=> setNonEmpty!9122 d!448283))

(declare-fun b!1513707 () Bool)

(declare-fun e!968003 () List!16138)

(assert (=> b!1513707 (= e!968003 (list!6348 input!1102))))

(declare-fun b!1513710 () Bool)

(declare-fun e!968002 () Bool)

(declare-fun lt!526285 () List!16138)

(assert (=> b!1513710 (= e!968002 (or (not (= (list!6348 input!1102) Nil!16070)) (= lt!526285 (t!139416 (list!6348 treated!70)))))))

(declare-fun b!1513709 () Bool)

(declare-fun res!681066 () Bool)

(assert (=> b!1513709 (=> (not res!681066) (not e!968002))))

(assert (=> b!1513709 (= res!681066 (= (size!13000 lt!526285) (+ (size!13000 (t!139416 (list!6348 treated!70))) (size!13000 (list!6348 input!1102)))))))

(declare-fun b!1513708 () Bool)

(assert (=> b!1513708 (= e!968003 (Cons!16070 (h!21471 (t!139416 (list!6348 treated!70))) (++!4358 (t!139416 (t!139416 (list!6348 treated!70))) (list!6348 input!1102))))))

(declare-fun d!448285 () Bool)

(assert (=> d!448285 e!968002))

(declare-fun res!681067 () Bool)

(assert (=> d!448285 (=> (not res!681067) (not e!968002))))

(assert (=> d!448285 (= res!681067 (= (content!2314 lt!526285) ((_ map or) (content!2314 (t!139416 (list!6348 treated!70))) (content!2314 (list!6348 input!1102)))))))

(assert (=> d!448285 (= lt!526285 e!968003)))

(declare-fun c!248105 () Bool)

(assert (=> d!448285 (= c!248105 ((_ is Nil!16070) (t!139416 (list!6348 treated!70))))))

(assert (=> d!448285 (= (++!4358 (t!139416 (list!6348 treated!70)) (list!6348 input!1102)) lt!526285)))

(assert (= (and d!448285 c!248105) b!1513707))

(assert (= (and d!448285 (not c!248105)) b!1513708))

(assert (= (and d!448285 res!681067) b!1513709))

(assert (= (and b!1513709 res!681066) b!1513710))

(declare-fun m!1778069 () Bool)

(assert (=> b!1513709 m!1778069))

(assert (=> b!1513709 m!1777949))

(assert (=> b!1513709 m!1777112))

(assert (=> b!1513709 m!1777252))

(assert (=> b!1513708 m!1777112))

(declare-fun m!1778071 () Bool)

(assert (=> b!1513708 m!1778071))

(declare-fun m!1778073 () Bool)

(assert (=> d!448285 m!1778073))

(assert (=> d!448285 m!1777792))

(assert (=> d!448285 m!1777112))

(assert (=> d!448285 m!1777280))

(assert (=> b!1513084 d!448285))

(declare-fun b!1513711 () Bool)

(declare-fun e!968004 () List!16138)

(assert (=> b!1513711 (= e!968004 Nil!16070)))

(declare-fun d!448287 () Bool)

(declare-fun c!248106 () Bool)

(assert (=> d!448287 (= c!248106 ((_ is Empty!5439) (c!247983 input!1102)))))

(assert (=> d!448287 (= (list!6350 (c!247983 input!1102)) e!968004)))

(declare-fun b!1513714 () Bool)

(declare-fun e!968005 () List!16138)

(assert (=> b!1513714 (= e!968005 (++!4358 (list!6350 (left!13363 (c!247983 input!1102))) (list!6350 (right!13693 (c!247983 input!1102)))))))

(declare-fun b!1513712 () Bool)

(assert (=> b!1513712 (= e!968004 e!968005)))

(declare-fun c!248107 () Bool)

(assert (=> b!1513712 (= c!248107 ((_ is Leaf!8064) (c!247983 input!1102)))))

(declare-fun b!1513713 () Bool)

(assert (=> b!1513713 (= e!968005 (list!6351 (xs!8220 (c!247983 input!1102))))))

(assert (= (and d!448287 c!248106) b!1513711))

(assert (= (and d!448287 (not c!248106)) b!1513712))

(assert (= (and b!1513712 c!248107) b!1513713))

(assert (= (and b!1513712 (not c!248107)) b!1513714))

(declare-fun m!1778075 () Bool)

(assert (=> b!1513714 m!1778075))

(declare-fun m!1778077 () Bool)

(assert (=> b!1513714 m!1778077))

(assert (=> b!1513714 m!1778075))

(assert (=> b!1513714 m!1778077))

(declare-fun m!1778079 () Bool)

(assert (=> b!1513714 m!1778079))

(assert (=> b!1513713 m!1777450))

(assert (=> d!448007 d!448287))

(declare-fun bs!364918 () Bool)

(declare-fun d!448289 () Bool)

(assert (= bs!364918 (and d!448289 d!448125)))

(declare-fun lambda!64559 () Int)

(assert (=> bs!364918 (= lambda!64559 lambda!64530)))

(declare-fun bs!364919 () Bool)

(assert (= bs!364919 (and d!448289 d!448157)))

(assert (=> bs!364919 (= lambda!64559 lambda!64540)))

(declare-fun bs!364920 () Bool)

(assert (= bs!364920 (and d!448289 d!448165)))

(assert (=> bs!364920 (= lambda!64559 lambda!64542)))

(declare-fun bs!364921 () Bool)

(assert (= bs!364921 (and d!448289 d!448207)))

(assert (=> bs!364921 (= lambda!64559 lambda!64547)))

(declare-fun bs!364922 () Bool)

(assert (= bs!364922 (and d!448289 d!448059)))

(assert (=> bs!364922 (= lambda!64559 lambda!64515)))

(declare-fun bs!364923 () Bool)

(assert (= bs!364923 (and d!448289 d!448173)))

(assert (=> bs!364923 (= lambda!64559 lambda!64544)))

(declare-fun bs!364924 () Bool)

(assert (= bs!364924 (and d!448289 d!448203)))

(assert (=> bs!364924 (= lambda!64559 lambda!64546)))

(declare-fun bs!364925 () Bool)

(assert (= bs!364925 (and d!448289 d!448055)))

(assert (=> bs!364925 (= lambda!64559 lambda!64514)))

(declare-fun bs!364926 () Bool)

(assert (= bs!364926 (and d!448289 d!448283)))

(assert (=> bs!364926 (= lambda!64559 lambda!64558)))

(declare-fun bs!364927 () Bool)

(assert (= bs!364927 (and d!448289 d!448149)))

(assert (=> bs!364927 (= lambda!64559 lambda!64532)))

(declare-fun bs!364928 () Bool)

(assert (= bs!364928 (and d!448289 d!448159)))

(assert (=> bs!364928 (= lambda!64559 lambda!64541)))

(declare-fun bs!364929 () Bool)

(assert (= bs!364929 (and d!448289 d!448195)))

(assert (=> bs!364929 (= lambda!64559 lambda!64545)))

(declare-fun bs!364930 () Bool)

(assert (= bs!364930 (and d!448289 d!448139)))

(assert (=> bs!364930 (= lambda!64559 lambda!64531)))

(declare-fun bs!364931 () Bool)

(assert (= bs!364931 (and d!448289 d!448075)))

(assert (=> bs!364931 (= lambda!64559 lambda!64517)))

(declare-fun bs!364932 () Bool)

(assert (= bs!364932 (and d!448289 d!448063)))

(assert (=> bs!364932 (= lambda!64559 lambda!64516)))

(declare-fun bs!364933 () Bool)

(assert (= bs!364933 (and d!448289 d!448101)))

(assert (=> bs!364933 (= lambda!64559 lambda!64523)))

(declare-fun bs!364934 () Bool)

(assert (= bs!364934 (and d!448289 d!448049)))

(assert (=> bs!364934 (= lambda!64559 lambda!64513)))

(declare-fun bs!364935 () Bool)

(assert (= bs!364935 (and d!448289 d!448275)))

(assert (=> bs!364935 (= lambda!64559 lambda!64557)))

(declare-fun bs!364936 () Bool)

(assert (= bs!364936 (and d!448289 d!448153)))

(assert (=> bs!364936 (= lambda!64559 lambda!64536)))

(declare-fun bs!364937 () Bool)

(assert (= bs!364937 (and d!448289 d!448271)))

(assert (=> bs!364937 (= lambda!64559 lambda!64556)))

(declare-fun bs!364938 () Bool)

(assert (= bs!364938 (and d!448289 d!448235)))

(assert (=> bs!364938 (= lambda!64559 lambda!64554)))

(declare-fun bs!364939 () Bool)

(assert (= bs!364939 (and d!448289 d!448121)))

(assert (=> bs!364939 (= lambda!64559 lambda!64529)))

(declare-fun bs!364940 () Bool)

(assert (= bs!364940 (and d!448289 d!448109)))

(assert (=> bs!364940 (= lambda!64559 lambda!64527)))

(declare-fun bs!364941 () Bool)

(assert (= bs!364941 (and d!448289 d!448119)))

(assert (=> bs!364941 (= lambda!64559 lambda!64528)))

(declare-fun bs!364942 () Bool)

(assert (= bs!364942 (and d!448289 d!448047)))

(assert (=> bs!364942 (= lambda!64559 lambda!64512)))

(declare-fun bs!364943 () Bool)

(assert (= bs!364943 (and d!448289 d!448099)))

(assert (=> bs!364943 (= lambda!64559 lambda!64522)))

(declare-fun bs!364944 () Bool)

(assert (= bs!364944 (and d!448289 d!448167)))

(assert (=> bs!364944 (= lambda!64559 lambda!64543)))

(declare-fun bs!364945 () Bool)

(assert (= bs!364945 (and d!448289 d!448245)))

(assert (=> bs!364945 (= lambda!64559 lambda!64555)))

(declare-fun bs!364946 () Bool)

(assert (= bs!364946 (and d!448289 d!448089)))

(assert (=> bs!364946 (= lambda!64559 lambda!64521)))

(assert (=> d!448289 (= (inv!21315 setElem!9121) (forall!3856 (exprs!1177 setElem!9121) lambda!64559))))

(declare-fun bs!364947 () Bool)

(assert (= bs!364947 d!448289))

(declare-fun m!1778081 () Bool)

(assert (=> bs!364947 m!1778081))

(assert (=> setNonEmpty!9121 d!448289))

(declare-fun b!1513715 () Bool)

(declare-fun e!968006 () List!16138)

(assert (=> b!1513715 (= e!968006 Nil!16070)))

(declare-fun d!448291 () Bool)

(declare-fun c!248108 () Bool)

(assert (=> d!448291 (= c!248108 ((_ is Empty!5439) (c!247983 (_2!8486 lt!526153))))))

(assert (=> d!448291 (= (list!6350 (c!247983 (_2!8486 lt!526153))) e!968006)))

(declare-fun b!1513718 () Bool)

(declare-fun e!968007 () List!16138)

(assert (=> b!1513718 (= e!968007 (++!4358 (list!6350 (left!13363 (c!247983 (_2!8486 lt!526153)))) (list!6350 (right!13693 (c!247983 (_2!8486 lt!526153))))))))

(declare-fun b!1513716 () Bool)

(assert (=> b!1513716 (= e!968006 e!968007)))

(declare-fun c!248109 () Bool)

(assert (=> b!1513716 (= c!248109 ((_ is Leaf!8064) (c!247983 (_2!8486 lt!526153))))))

(declare-fun b!1513717 () Bool)

(assert (=> b!1513717 (= e!968007 (list!6351 (xs!8220 (c!247983 (_2!8486 lt!526153)))))))

(assert (= (and d!448291 c!248108) b!1513715))

(assert (= (and d!448291 (not c!248108)) b!1513716))

(assert (= (and b!1513716 c!248109) b!1513717))

(assert (= (and b!1513716 (not c!248109)) b!1513718))

(declare-fun m!1778083 () Bool)

(assert (=> b!1513718 m!1778083))

(declare-fun m!1778085 () Bool)

(assert (=> b!1513718 m!1778085))

(assert (=> b!1513718 m!1778083))

(assert (=> b!1513718 m!1778085))

(declare-fun m!1778087 () Bool)

(assert (=> b!1513718 m!1778087))

(declare-fun m!1778089 () Bool)

(assert (=> b!1513717 m!1778089))

(assert (=> d!447995 d!448291))

(declare-fun b!1513719 () Bool)

(declare-fun res!681068 () Bool)

(declare-fun e!968008 () Bool)

(assert (=> b!1513719 (=> (not res!681068) (not e!968008))))

(assert (=> b!1513719 (= res!681068 (isBalanced!1610 (right!13693 (c!247983 totalInput!458))))))

(declare-fun d!448293 () Bool)

(declare-fun res!681070 () Bool)

(declare-fun e!968009 () Bool)

(assert (=> d!448293 (=> res!681070 e!968009)))

(assert (=> d!448293 (= res!681070 (not ((_ is Node!5439) (c!247983 totalInput!458))))))

(assert (=> d!448293 (= (isBalanced!1610 (c!247983 totalInput!458)) e!968009)))

(declare-fun b!1513720 () Bool)

(declare-fun res!681069 () Bool)

(assert (=> b!1513720 (=> (not res!681069) (not e!968008))))

(assert (=> b!1513720 (= res!681069 (<= (- (height!812 (left!13363 (c!247983 totalInput!458))) (height!812 (right!13693 (c!247983 totalInput!458)))) 1))))

(declare-fun b!1513721 () Bool)

(assert (=> b!1513721 (= e!968008 (not (isEmpty!9932 (right!13693 (c!247983 totalInput!458)))))))

(declare-fun b!1513722 () Bool)

(declare-fun res!681073 () Bool)

(assert (=> b!1513722 (=> (not res!681073) (not e!968008))))

(assert (=> b!1513722 (= res!681073 (not (isEmpty!9932 (left!13363 (c!247983 totalInput!458)))))))

(declare-fun b!1513723 () Bool)

(declare-fun res!681071 () Bool)

(assert (=> b!1513723 (=> (not res!681071) (not e!968008))))

(assert (=> b!1513723 (= res!681071 (isBalanced!1610 (left!13363 (c!247983 totalInput!458))))))

(declare-fun b!1513724 () Bool)

(assert (=> b!1513724 (= e!968009 e!968008)))

(declare-fun res!681072 () Bool)

(assert (=> b!1513724 (=> (not res!681072) (not e!968008))))

(assert (=> b!1513724 (= res!681072 (<= (- 1) (- (height!812 (left!13363 (c!247983 totalInput!458))) (height!812 (right!13693 (c!247983 totalInput!458))))))))

(assert (= (and d!448293 (not res!681070)) b!1513724))

(assert (= (and b!1513724 res!681072) b!1513720))

(assert (= (and b!1513720 res!681069) b!1513723))

(assert (= (and b!1513723 res!681071) b!1513719))

(assert (= (and b!1513719 res!681068) b!1513722))

(assert (= (and b!1513722 res!681073) b!1513721))

(assert (=> b!1513724 m!1778027))

(assert (=> b!1513724 m!1778029))

(declare-fun m!1778091 () Bool)

(assert (=> b!1513721 m!1778091))

(declare-fun m!1778093 () Bool)

(assert (=> b!1513723 m!1778093))

(declare-fun m!1778095 () Bool)

(assert (=> b!1513722 m!1778095))

(assert (=> b!1513720 m!1778027))

(assert (=> b!1513720 m!1778029))

(declare-fun m!1778097 () Bool)

(assert (=> b!1513719 m!1778097))

(assert (=> d!448037 d!448293))

(declare-fun tp!433011 () Bool)

(declare-fun b!1513725 () Bool)

(declare-fun tp!433009 () Bool)

(declare-fun e!968011 () Bool)

(assert (=> b!1513725 (= e!968011 (and (inv!21303 (left!13363 (left!13363 (c!247983 input!1102)))) tp!433009 (inv!21303 (right!13693 (left!13363 (c!247983 input!1102)))) tp!433011))))

(declare-fun b!1513727 () Bool)

(declare-fun e!968010 () Bool)

(declare-fun tp!433010 () Bool)

(assert (=> b!1513727 (= e!968010 tp!433010)))

(declare-fun b!1513726 () Bool)

(assert (=> b!1513726 (= e!968011 (and (inv!21316 (xs!8220 (left!13363 (c!247983 input!1102)))) e!968010))))

(assert (=> b!1513185 (= tp!432891 (and (inv!21303 (left!13363 (c!247983 input!1102))) e!968011))))

(assert (= (and b!1513185 ((_ is Node!5439) (left!13363 (c!247983 input!1102)))) b!1513725))

(assert (= b!1513726 b!1513727))

(assert (= (and b!1513185 ((_ is Leaf!8064) (left!13363 (c!247983 input!1102)))) b!1513726))

(declare-fun m!1778099 () Bool)

(assert (=> b!1513725 m!1778099))

(declare-fun m!1778101 () Bool)

(assert (=> b!1513725 m!1778101))

(declare-fun m!1778103 () Bool)

(assert (=> b!1513726 m!1778103))

(assert (=> b!1513185 m!1777350))

(declare-fun b!1513728 () Bool)

(declare-fun e!968013 () Bool)

(declare-fun tp!433014 () Bool)

(declare-fun tp!433012 () Bool)

(assert (=> b!1513728 (= e!968013 (and (inv!21303 (left!13363 (right!13693 (c!247983 input!1102)))) tp!433012 (inv!21303 (right!13693 (right!13693 (c!247983 input!1102)))) tp!433014))))

(declare-fun b!1513730 () Bool)

(declare-fun e!968012 () Bool)

(declare-fun tp!433013 () Bool)

(assert (=> b!1513730 (= e!968012 tp!433013)))

(declare-fun b!1513729 () Bool)

(assert (=> b!1513729 (= e!968013 (and (inv!21316 (xs!8220 (right!13693 (c!247983 input!1102)))) e!968012))))

(assert (=> b!1513185 (= tp!432893 (and (inv!21303 (right!13693 (c!247983 input!1102))) e!968013))))

(assert (= (and b!1513185 ((_ is Node!5439) (right!13693 (c!247983 input!1102)))) b!1513728))

(assert (= b!1513729 b!1513730))

(assert (= (and b!1513185 ((_ is Leaf!8064) (right!13693 (c!247983 input!1102)))) b!1513729))

(declare-fun m!1778105 () Bool)

(assert (=> b!1513728 m!1778105))

(declare-fun m!1778107 () Bool)

(assert (=> b!1513728 m!1778107))

(declare-fun m!1778109 () Bool)

(assert (=> b!1513729 m!1778109))

(assert (=> b!1513185 m!1777352))

(declare-fun b!1513735 () Bool)

(declare-fun e!968016 () Bool)

(declare-fun tp!433019 () Bool)

(declare-fun tp!433020 () Bool)

(assert (=> b!1513735 (= e!968016 (and tp!433019 tp!433020))))

(assert (=> b!1513189 (= tp!432897 e!968016)))

(assert (= (and b!1513189 ((_ is Cons!16073) (exprs!1177 setElem!9128))) b!1513735))

(declare-fun b!1513736 () Bool)

(declare-fun e!968021 () Bool)

(declare-fun tp!433030 () Bool)

(assert (=> b!1513736 (= e!968021 tp!433030)))

(declare-fun e!968018 () Bool)

(declare-fun tp!433027 () Bool)

(declare-fun setElem!9142 () Context!1354)

(declare-fun setRes!9142 () Bool)

(declare-fun setNonEmpty!9142 () Bool)

(assert (=> setNonEmpty!9142 (= setRes!9142 (and tp!433027 (inv!21315 setElem!9142) e!968018))))

(declare-fun mapValue!7014 () List!16144)

(declare-fun setRest!9142 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9142 (= (_2!8492 (h!21477 mapValue!7014)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9142 true) setRest!9142))))

(declare-fun mapNonEmpty!7014 () Bool)

(declare-fun mapRes!7014 () Bool)

(declare-fun tp!433026 () Bool)

(declare-fun e!968019 () Bool)

(assert (=> mapNonEmpty!7014 (= mapRes!7014 (and tp!433026 e!968019))))

(declare-fun mapRest!7014 () (Array (_ BitVec 32) List!16144))

(declare-fun mapKey!7014 () (_ BitVec 32))

(assert (=> mapNonEmpty!7014 (= mapRest!7013 (store mapRest!7014 mapKey!7014 mapValue!7014))))

(declare-fun condMapEmpty!7014 () Bool)

(declare-fun mapDefault!7014 () List!16144)

(assert (=> mapNonEmpty!7013 (= condMapEmpty!7014 (= mapRest!7013 ((as const (Array (_ BitVec 32) List!16144)) mapDefault!7014)))))

(declare-fun e!968020 () Bool)

(assert (=> mapNonEmpty!7013 (= tp!432961 (and e!968020 mapRes!7014))))

(declare-fun b!1513737 () Bool)

(declare-fun tp!433028 () Bool)

(declare-fun tp!433031 () Bool)

(declare-fun e!968017 () Bool)

(declare-fun setRes!9143 () Bool)

(assert (=> b!1513737 (= e!968020 (and tp!433028 (inv!21315 (_2!8491 (_1!8492 (h!21477 mapDefault!7014)))) e!968017 tp_is_empty!7015 setRes!9143 tp!433031))))

(declare-fun condSetEmpty!9143 () Bool)

(assert (=> b!1513737 (= condSetEmpty!9143 (= (_2!8492 (h!21477 mapDefault!7014)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513738 () Bool)

(declare-fun tp!433029 () Bool)

(assert (=> b!1513738 (= e!968017 tp!433029)))

(declare-fun setIsEmpty!9142 () Bool)

(assert (=> setIsEmpty!9142 setRes!9142))

(declare-fun b!1513739 () Bool)

(declare-fun e!968022 () Bool)

(declare-fun tp!433022 () Bool)

(assert (=> b!1513739 (= e!968022 tp!433022)))

(declare-fun mapIsEmpty!7014 () Bool)

(assert (=> mapIsEmpty!7014 mapRes!7014))

(declare-fun setIsEmpty!9143 () Bool)

(assert (=> setIsEmpty!9143 setRes!9143))

(declare-fun tp!433025 () Bool)

(declare-fun tp!433023 () Bool)

(declare-fun b!1513740 () Bool)

(assert (=> b!1513740 (= e!968019 (and tp!433023 (inv!21315 (_2!8491 (_1!8492 (h!21477 mapValue!7014)))) e!968022 tp_is_empty!7015 setRes!9142 tp!433025))))

(declare-fun condSetEmpty!9142 () Bool)

(assert (=> b!1513740 (= condSetEmpty!9142 (= (_2!8492 (h!21477 mapValue!7014)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513741 () Bool)

(declare-fun tp!433021 () Bool)

(assert (=> b!1513741 (= e!968018 tp!433021)))

(declare-fun tp!433024 () Bool)

(declare-fun setNonEmpty!9143 () Bool)

(declare-fun setElem!9143 () Context!1354)

(assert (=> setNonEmpty!9143 (= setRes!9143 (and tp!433024 (inv!21315 setElem!9143) e!968021))))

(declare-fun setRest!9143 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9143 (= (_2!8492 (h!21477 mapDefault!7014)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9143 true) setRest!9143))))

(assert (= (and mapNonEmpty!7013 condMapEmpty!7014) mapIsEmpty!7014))

(assert (= (and mapNonEmpty!7013 (not condMapEmpty!7014)) mapNonEmpty!7014))

(assert (= b!1513740 b!1513739))

(assert (= (and b!1513740 condSetEmpty!9142) setIsEmpty!9142))

(assert (= (and b!1513740 (not condSetEmpty!9142)) setNonEmpty!9142))

(assert (= setNonEmpty!9142 b!1513741))

(assert (= (and mapNonEmpty!7014 ((_ is Cons!16076) mapValue!7014)) b!1513740))

(assert (= b!1513737 b!1513738))

(assert (= (and b!1513737 condSetEmpty!9143) setIsEmpty!9143))

(assert (= (and b!1513737 (not condSetEmpty!9143)) setNonEmpty!9143))

(assert (= setNonEmpty!9143 b!1513736))

(assert (= (and mapNonEmpty!7013 ((_ is Cons!16076) mapDefault!7014)) b!1513737))

(declare-fun m!1778111 () Bool)

(assert (=> mapNonEmpty!7014 m!1778111))

(declare-fun m!1778113 () Bool)

(assert (=> b!1513740 m!1778113))

(declare-fun m!1778115 () Bool)

(assert (=> setNonEmpty!9143 m!1778115))

(declare-fun m!1778117 () Bool)

(assert (=> b!1513737 m!1778117))

(declare-fun m!1778119 () Bool)

(assert (=> setNonEmpty!9142 m!1778119))

(declare-fun b!1513743 () Bool)

(declare-fun e!968023 () Bool)

(declare-fun tp!433036 () Bool)

(declare-fun tp!433034 () Bool)

(assert (=> b!1513743 (= e!968023 (and tp!433036 tp!433034))))

(declare-fun b!1513744 () Bool)

(declare-fun tp!433032 () Bool)

(assert (=> b!1513744 (= e!968023 tp!433032)))

(assert (=> b!1513262 (= tp!432989 e!968023)))

(declare-fun b!1513742 () Bool)

(assert (=> b!1513742 (= e!968023 tp_is_empty!7015)))

(declare-fun b!1513745 () Bool)

(declare-fun tp!433035 () Bool)

(declare-fun tp!433033 () Bool)

(assert (=> b!1513745 (= e!968023 (and tp!433035 tp!433033))))

(assert (= (and b!1513262 ((_ is ElementMatch!4159) (_1!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513742))

(assert (= (and b!1513262 ((_ is Concat!7094) (_1!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513743))

(assert (= (and b!1513262 ((_ is Star!4159) (_1!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513744))

(assert (= (and b!1513262 ((_ is Union!4159) (_1!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513745))

(declare-fun b!1513746 () Bool)

(declare-fun e!968025 () Bool)

(declare-fun tp!433038 () Bool)

(assert (=> b!1513746 (= e!968025 tp!433038)))

(declare-fun setIsEmpty!9144 () Bool)

(declare-fun setRes!9144 () Bool)

(assert (=> setIsEmpty!9144 setRes!9144))

(declare-fun e!968024 () Bool)

(assert (=> b!1513262 (= tp!432992 e!968024)))

(declare-fun setElem!9144 () Context!1354)

(declare-fun tp!433041 () Bool)

(declare-fun setNonEmpty!9144 () Bool)

(assert (=> setNonEmpty!9144 (= setRes!9144 (and tp!433041 (inv!21315 setElem!9144) e!968025))))

(declare-fun setRest!9144 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9144 (= (_2!8492 (h!21477 (t!139422 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9144 true) setRest!9144))))

(declare-fun tp!433040 () Bool)

(declare-fun tp!433037 () Bool)

(declare-fun b!1513747 () Bool)

(declare-fun e!968026 () Bool)

(assert (=> b!1513747 (= e!968024 (and tp!433037 (inv!21315 (_2!8491 (_1!8492 (h!21477 (t!139422 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) e!968026 tp_is_empty!7015 setRes!9144 tp!433040))))

(declare-fun condSetEmpty!9144 () Bool)

(assert (=> b!1513747 (= condSetEmpty!9144 (= (_2!8492 (h!21477 (t!139422 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513748 () Bool)

(declare-fun tp!433039 () Bool)

(assert (=> b!1513748 (= e!968026 tp!433039)))

(assert (= b!1513747 b!1513748))

(assert (= (and b!1513747 condSetEmpty!9144) setIsEmpty!9144))

(assert (= (and b!1513747 (not condSetEmpty!9144)) setNonEmpty!9144))

(assert (= setNonEmpty!9144 b!1513746))

(assert (= (and b!1513262 ((_ is Cons!16076) (t!139422 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))) b!1513747))

(declare-fun m!1778121 () Bool)

(assert (=> setNonEmpty!9144 m!1778121))

(declare-fun m!1778123 () Bool)

(assert (=> b!1513747 m!1778123))

(declare-fun b!1513753 () Bool)

(declare-fun e!968029 () Bool)

(declare-fun tp!433044 () Bool)

(assert (=> b!1513753 (= e!968029 (and tp_is_empty!7015 tp!433044))))

(assert (=> b!1513187 (= tp!432892 e!968029)))

(assert (= (and b!1513187 ((_ is Cons!16070) (innerList!5499 (xs!8220 (c!247983 input!1102))))) b!1513753))

(declare-fun b!1513755 () Bool)

(declare-fun e!968030 () Bool)

(declare-fun tp!433049 () Bool)

(declare-fun tp!433047 () Bool)

(assert (=> b!1513755 (= e!968030 (and tp!433049 tp!433047))))

(declare-fun b!1513756 () Bool)

(declare-fun tp!433045 () Bool)

(assert (=> b!1513756 (= e!968030 tp!433045)))

(assert (=> b!1513259 (= tp!432984 e!968030)))

(declare-fun b!1513754 () Bool)

(assert (=> b!1513754 (= e!968030 tp_is_empty!7015)))

(declare-fun b!1513757 () Bool)

(declare-fun tp!433048 () Bool)

(declare-fun tp!433046 () Bool)

(assert (=> b!1513757 (= e!968030 (and tp!433048 tp!433046))))

(assert (= (and b!1513259 ((_ is ElementMatch!4159) (_1!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513754))

(assert (= (and b!1513259 ((_ is Concat!7094) (_1!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513755))

(assert (= (and b!1513259 ((_ is Star!4159) (_1!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513756))

(assert (= (and b!1513259 ((_ is Union!4159) (_1!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) b!1513757))

(declare-fun b!1513758 () Bool)

(declare-fun e!968032 () Bool)

(declare-fun tp!433051 () Bool)

(assert (=> b!1513758 (= e!968032 tp!433051)))

(declare-fun setIsEmpty!9145 () Bool)

(declare-fun setRes!9145 () Bool)

(assert (=> setIsEmpty!9145 setRes!9145))

(declare-fun e!968031 () Bool)

(assert (=> b!1513259 (= tp!432987 e!968031)))

(declare-fun setNonEmpty!9145 () Bool)

(declare-fun setElem!9145 () Context!1354)

(declare-fun tp!433054 () Bool)

(assert (=> setNonEmpty!9145 (= setRes!9145 (and tp!433054 (inv!21315 setElem!9145) e!968032))))

(declare-fun setRest!9145 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9145 (= (_2!8492 (h!21477 (t!139422 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9145 true) setRest!9145))))

(declare-fun e!968033 () Bool)

(declare-fun tp!433053 () Bool)

(declare-fun tp!433050 () Bool)

(declare-fun b!1513759 () Bool)

(assert (=> b!1513759 (= e!968031 (and tp!433050 (inv!21315 (_2!8491 (_1!8492 (h!21477 (t!139422 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))))) e!968033 tp_is_empty!7015 setRes!9145 tp!433053))))

(declare-fun condSetEmpty!9145 () Bool)

(assert (=> b!1513759 (= condSetEmpty!9145 (= (_2!8492 (h!21477 (t!139422 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513760 () Bool)

(declare-fun tp!433052 () Bool)

(assert (=> b!1513760 (= e!968033 tp!433052)))

(assert (= b!1513759 b!1513760))

(assert (= (and b!1513759 condSetEmpty!9145) setIsEmpty!9145))

(assert (= (and b!1513759 (not condSetEmpty!9145)) setNonEmpty!9145))

(assert (= setNonEmpty!9145 b!1513758))

(assert (= (and b!1513259 ((_ is Cons!16076) (t!139422 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629))))))))) b!1513759))

(declare-fun m!1778125 () Bool)

(assert (=> setNonEmpty!9145 m!1778125))

(declare-fun m!1778127 () Bool)

(assert (=> b!1513759 m!1778127))

(declare-fun b!1513761 () Bool)

(declare-fun e!968034 () Bool)

(declare-fun tp!433055 () Bool)

(assert (=> b!1513761 (= e!968034 (and tp_is_empty!7015 tp!433055))))

(assert (=> b!1513221 (= tp!432932 e!968034)))

(assert (= (and b!1513221 ((_ is Cons!16070) (innerList!5499 (xs!8220 (c!247983 totalInput!458))))) b!1513761))

(declare-fun b!1513763 () Bool)

(declare-fun e!968035 () Bool)

(declare-fun tp!433060 () Bool)

(declare-fun tp!433058 () Bool)

(assert (=> b!1513763 (= e!968035 (and tp!433060 tp!433058))))

(declare-fun b!1513764 () Bool)

(declare-fun tp!433056 () Bool)

(assert (=> b!1513764 (= e!968035 tp!433056)))

(assert (=> b!1513203 (= tp!432908 e!968035)))

(declare-fun b!1513762 () Bool)

(assert (=> b!1513762 (= e!968035 tp_is_empty!7015)))

(declare-fun b!1513765 () Bool)

(declare-fun tp!433059 () Bool)

(declare-fun tp!433057 () Bool)

(assert (=> b!1513765 (= e!968035 (and tp!433059 tp!433057))))

(assert (= (and b!1513203 ((_ is ElementMatch!4159) (reg!4488 (regex!2844 (h!21473 rules!1640))))) b!1513762))

(assert (= (and b!1513203 ((_ is Concat!7094) (reg!4488 (regex!2844 (h!21473 rules!1640))))) b!1513763))

(assert (= (and b!1513203 ((_ is Star!4159) (reg!4488 (regex!2844 (h!21473 rules!1640))))) b!1513764))

(assert (= (and b!1513203 ((_ is Union!4159) (reg!4488 (regex!2844 (h!21473 rules!1640))))) b!1513765))

(declare-fun condSetEmpty!9148 () Bool)

(assert (=> setNonEmpty!9114 (= condSetEmpty!9148 (= setRest!9114 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9148 () Bool)

(assert (=> setNonEmpty!9114 (= tp!432830 setRes!9148)))

(declare-fun setIsEmpty!9148 () Bool)

(assert (=> setIsEmpty!9148 setRes!9148))

(declare-fun tp!433065 () Bool)

(declare-fun setNonEmpty!9148 () Bool)

(declare-fun e!968038 () Bool)

(declare-fun setElem!9148 () Context!1354)

(assert (=> setNonEmpty!9148 (= setRes!9148 (and tp!433065 (inv!21315 setElem!9148) e!968038))))

(declare-fun setRest!9148 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9148 (= setRest!9114 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9148 true) setRest!9148))))

(declare-fun b!1513770 () Bool)

(declare-fun tp!433066 () Bool)

(assert (=> b!1513770 (= e!968038 tp!433066)))

(assert (= (and setNonEmpty!9114 condSetEmpty!9148) setIsEmpty!9148))

(assert (= (and setNonEmpty!9114 (not condSetEmpty!9148)) setNonEmpty!9148))

(assert (= setNonEmpty!9148 b!1513770))

(declare-fun m!1778129 () Bool)

(assert (=> setNonEmpty!9148 m!1778129))

(declare-fun condSetEmpty!9149 () Bool)

(assert (=> setNonEmpty!9128 (= condSetEmpty!9149 (= setRest!9128 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9149 () Bool)

(assert (=> setNonEmpty!9128 (= tp!432896 setRes!9149)))

(declare-fun setIsEmpty!9149 () Bool)

(assert (=> setIsEmpty!9149 setRes!9149))

(declare-fun setNonEmpty!9149 () Bool)

(declare-fun e!968039 () Bool)

(declare-fun tp!433067 () Bool)

(declare-fun setElem!9149 () Context!1354)

(assert (=> setNonEmpty!9149 (= setRes!9149 (and tp!433067 (inv!21315 setElem!9149) e!968039))))

(declare-fun setRest!9149 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9149 (= setRest!9128 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9149 true) setRest!9149))))

(declare-fun b!1513771 () Bool)

(declare-fun tp!433068 () Bool)

(assert (=> b!1513771 (= e!968039 tp!433068)))

(assert (= (and setNonEmpty!9128 condSetEmpty!9149) setIsEmpty!9149))

(assert (= (and setNonEmpty!9128 (not condSetEmpty!9149)) setNonEmpty!9149))

(assert (= setNonEmpty!9149 b!1513771))

(declare-fun m!1778131 () Bool)

(assert (=> setNonEmpty!9149 m!1778131))

(declare-fun b!1513772 () Bool)

(declare-fun e!968040 () Bool)

(declare-fun tp!433069 () Bool)

(declare-fun tp!433070 () Bool)

(assert (=> b!1513772 (= e!968040 (and tp!433069 tp!433070))))

(assert (=> b!1513236 (= tp!432965 e!968040)))

(assert (= (and b!1513236 ((_ is Cons!16073) (exprs!1177 setElem!9137))) b!1513772))

(declare-fun b!1513773 () Bool)

(declare-fun e!968041 () Bool)

(declare-fun tp!433071 () Bool)

(declare-fun tp!433072 () Bool)

(assert (=> b!1513773 (= e!968041 (and tp!433071 tp!433072))))

(assert (=> b!1513244 (= tp!432969 e!968041)))

(assert (= (and b!1513244 ((_ is Cons!16073) (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapValue!7002)))))) b!1513773))

(declare-fun b!1513775 () Bool)

(declare-fun e!968042 () Bool)

(declare-fun tp!433077 () Bool)

(declare-fun tp!433075 () Bool)

(assert (=> b!1513775 (= e!968042 (and tp!433077 tp!433075))))

(declare-fun b!1513776 () Bool)

(declare-fun tp!433073 () Bool)

(assert (=> b!1513776 (= e!968042 tp!433073)))

(assert (=> b!1513276 (= tp!433005 e!968042)))

(declare-fun b!1513774 () Bool)

(assert (=> b!1513774 (= e!968042 tp_is_empty!7015)))

(declare-fun b!1513777 () Bool)

(declare-fun tp!433076 () Bool)

(declare-fun tp!433074 () Bool)

(assert (=> b!1513777 (= e!968042 (and tp!433076 tp!433074))))

(assert (= (and b!1513276 ((_ is ElementMatch!4159) (regex!2844 (h!21473 (t!139418 rules!1640))))) b!1513774))

(assert (= (and b!1513276 ((_ is Concat!7094) (regex!2844 (h!21473 (t!139418 rules!1640))))) b!1513775))

(assert (= (and b!1513276 ((_ is Star!4159) (regex!2844 (h!21473 (t!139418 rules!1640))))) b!1513776))

(assert (= (and b!1513276 ((_ is Union!4159) (regex!2844 (h!21473 (t!139418 rules!1640))))) b!1513777))

(declare-fun e!968044 () Bool)

(declare-fun tp!433078 () Bool)

(declare-fun b!1513778 () Bool)

(declare-fun tp!433080 () Bool)

(assert (=> b!1513778 (= e!968044 (and (inv!21303 (left!13363 (left!13363 (c!247983 totalInput!458)))) tp!433078 (inv!21303 (right!13693 (left!13363 (c!247983 totalInput!458)))) tp!433080))))

(declare-fun b!1513780 () Bool)

(declare-fun e!968043 () Bool)

(declare-fun tp!433079 () Bool)

(assert (=> b!1513780 (= e!968043 tp!433079)))

(declare-fun b!1513779 () Bool)

(assert (=> b!1513779 (= e!968044 (and (inv!21316 (xs!8220 (left!13363 (c!247983 totalInput!458)))) e!968043))))

(assert (=> b!1513219 (= tp!432931 (and (inv!21303 (left!13363 (c!247983 totalInput!458))) e!968044))))

(assert (= (and b!1513219 ((_ is Node!5439) (left!13363 (c!247983 totalInput!458)))) b!1513778))

(assert (= b!1513779 b!1513780))

(assert (= (and b!1513219 ((_ is Leaf!8064) (left!13363 (c!247983 totalInput!458)))) b!1513779))

(declare-fun m!1778133 () Bool)

(assert (=> b!1513778 m!1778133))

(declare-fun m!1778135 () Bool)

(assert (=> b!1513778 m!1778135))

(declare-fun m!1778137 () Bool)

(assert (=> b!1513779 m!1778137))

(assert (=> b!1513219 m!1777370))

(declare-fun b!1513781 () Bool)

(declare-fun tp!433083 () Bool)

(declare-fun tp!433081 () Bool)

(declare-fun e!968046 () Bool)

(assert (=> b!1513781 (= e!968046 (and (inv!21303 (left!13363 (right!13693 (c!247983 totalInput!458)))) tp!433081 (inv!21303 (right!13693 (right!13693 (c!247983 totalInput!458)))) tp!433083))))

(declare-fun b!1513783 () Bool)

(declare-fun e!968045 () Bool)

(declare-fun tp!433082 () Bool)

(assert (=> b!1513783 (= e!968045 tp!433082)))

(declare-fun b!1513782 () Bool)

(assert (=> b!1513782 (= e!968046 (and (inv!21316 (xs!8220 (right!13693 (c!247983 totalInput!458)))) e!968045))))

(assert (=> b!1513219 (= tp!432933 (and (inv!21303 (right!13693 (c!247983 totalInput!458))) e!968046))))

(assert (= (and b!1513219 ((_ is Node!5439) (right!13693 (c!247983 totalInput!458)))) b!1513781))

(assert (= b!1513782 b!1513783))

(assert (= (and b!1513219 ((_ is Leaf!8064) (right!13693 (c!247983 totalInput!458)))) b!1513782))

(declare-fun m!1778139 () Bool)

(assert (=> b!1513781 m!1778139))

(declare-fun m!1778141 () Bool)

(assert (=> b!1513781 m!1778141))

(declare-fun m!1778143 () Bool)

(assert (=> b!1513782 m!1778143))

(assert (=> b!1513219 m!1777372))

(declare-fun e!968047 () Bool)

(declare-fun setNonEmpty!9150 () Bool)

(declare-fun tp!433085 () Bool)

(declare-fun setRes!9150 () Bool)

(declare-fun setElem!9150 () Context!1354)

(assert (=> setNonEmpty!9150 (= setRes!9150 (and tp!433085 (inv!21315 setElem!9150) e!968047))))

(declare-fun setRest!9150 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9150 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapValue!7003)))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9150 true) setRest!9150))))

(declare-fun b!1513785 () Bool)

(declare-fun tp!433084 () Bool)

(assert (=> b!1513785 (= e!968047 tp!433084)))

(declare-fun setIsEmpty!9150 () Bool)

(assert (=> setIsEmpty!9150 setRes!9150))

(declare-fun e!968048 () Bool)

(assert (=> b!1513134 (= tp!432831 e!968048)))

(declare-fun b!1513784 () Bool)

(declare-fun tp!433086 () Bool)

(assert (=> b!1513784 (= e!968048 (and setRes!9150 tp!433086))))

(declare-fun condSetEmpty!9150 () Bool)

(assert (=> b!1513784 (= condSetEmpty!9150 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapValue!7003)))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513784 condSetEmpty!9150) setIsEmpty!9150))

(assert (= (and b!1513784 (not condSetEmpty!9150)) setNonEmpty!9150))

(assert (= setNonEmpty!9150 b!1513785))

(assert (= (and b!1513134 ((_ is Cons!16074) (t!139420 mapValue!7003))) b!1513784))

(declare-fun m!1778145 () Bool)

(assert (=> setNonEmpty!9150 m!1778145))

(declare-fun condSetEmpty!9151 () Bool)

(assert (=> setNonEmpty!9115 (= condSetEmpty!9151 (= setRest!9115 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9151 () Bool)

(assert (=> setNonEmpty!9115 (= tp!432833 setRes!9151)))

(declare-fun setIsEmpty!9151 () Bool)

(assert (=> setIsEmpty!9151 setRes!9151))

(declare-fun e!968049 () Bool)

(declare-fun tp!433087 () Bool)

(declare-fun setElem!9151 () Context!1354)

(declare-fun setNonEmpty!9151 () Bool)

(assert (=> setNonEmpty!9151 (= setRes!9151 (and tp!433087 (inv!21315 setElem!9151) e!968049))))

(declare-fun setRest!9151 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9151 (= setRest!9115 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9151 true) setRest!9151))))

(declare-fun b!1513786 () Bool)

(declare-fun tp!433088 () Bool)

(assert (=> b!1513786 (= e!968049 tp!433088)))

(assert (= (and setNonEmpty!9115 condSetEmpty!9151) setIsEmpty!9151))

(assert (= (and setNonEmpty!9115 (not condSetEmpty!9151)) setNonEmpty!9151))

(assert (= setNonEmpty!9151 b!1513786))

(declare-fun m!1778147 () Bool)

(assert (=> setNonEmpty!9151 m!1778147))

(declare-fun b!1513787 () Bool)

(declare-fun e!968050 () Bool)

(declare-fun tp!433089 () Bool)

(declare-fun tp!433090 () Bool)

(assert (=> b!1513787 (= e!968050 (and tp!433089 tp!433090))))

(assert (=> b!1513159 (= tp!432864 e!968050)))

(assert (= (and b!1513159 ((_ is Cons!16073) (exprs!1177 setElem!9121))) b!1513787))

(declare-fun condSetEmpty!9152 () Bool)

(assert (=> setNonEmpty!9138 (= condSetEmpty!9152 (= setRest!9138 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9152 () Bool)

(assert (=> setNonEmpty!9138 (= tp!432971 setRes!9152)))

(declare-fun setIsEmpty!9152 () Bool)

(assert (=> setIsEmpty!9152 setRes!9152))

(declare-fun e!968051 () Bool)

(declare-fun setElem!9152 () Context!1354)

(declare-fun tp!433091 () Bool)

(declare-fun setNonEmpty!9152 () Bool)

(assert (=> setNonEmpty!9152 (= setRes!9152 (and tp!433091 (inv!21315 setElem!9152) e!968051))))

(declare-fun setRest!9152 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9152 (= setRest!9138 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9152 true) setRest!9152))))

(declare-fun b!1513788 () Bool)

(declare-fun tp!433092 () Bool)

(assert (=> b!1513788 (= e!968051 tp!433092)))

(assert (= (and setNonEmpty!9138 condSetEmpty!9152) setIsEmpty!9152))

(assert (= (and setNonEmpty!9138 (not condSetEmpty!9152)) setNonEmpty!9152))

(assert (= setNonEmpty!9152 b!1513788))

(declare-fun m!1778149 () Bool)

(assert (=> setNonEmpty!9152 m!1778149))

(declare-fun b!1513789 () Bool)

(declare-fun e!968052 () Bool)

(declare-fun tp!433093 () Bool)

(assert (=> b!1513789 (= e!968052 (and tp_is_empty!7015 tp!433093))))

(assert (=> b!1513266 (= tp!432995 e!968052)))

(assert (= (and b!1513266 ((_ is Cons!16070) (innerList!5499 (xs!8220 (c!247983 treated!70))))) b!1513789))

(declare-fun b!1513790 () Bool)

(declare-fun e!968053 () Bool)

(declare-fun tp!433094 () Bool)

(declare-fun tp!433095 () Bool)

(assert (=> b!1513790 (= e!968053 (and tp!433094 tp!433095))))

(assert (=> b!1513172 (= tp!432880 e!968053)))

(assert (= (and b!1513172 ((_ is Cons!16073) (exprs!1177 setElem!9126))) b!1513790))

(declare-fun condSetEmpty!9153 () Bool)

(assert (=> setNonEmpty!9139 (= condSetEmpty!9153 (= setRest!9139 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9153 () Bool)

(assert (=> setNonEmpty!9139 (= tp!432973 setRes!9153)))

(declare-fun setIsEmpty!9153 () Bool)

(assert (=> setIsEmpty!9153 setRes!9153))

(declare-fun setNonEmpty!9153 () Bool)

(declare-fun setElem!9153 () Context!1354)

(declare-fun tp!433096 () Bool)

(declare-fun e!968054 () Bool)

(assert (=> setNonEmpty!9153 (= setRes!9153 (and tp!433096 (inv!21315 setElem!9153) e!968054))))

(declare-fun setRest!9153 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9153 (= setRest!9139 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9153 true) setRest!9153))))

(declare-fun b!1513791 () Bool)

(declare-fun tp!433097 () Bool)

(assert (=> b!1513791 (= e!968054 tp!433097)))

(assert (= (and setNonEmpty!9139 condSetEmpty!9153) setIsEmpty!9153))

(assert (= (and setNonEmpty!9139 (not condSetEmpty!9153)) setNonEmpty!9153))

(assert (= setNonEmpty!9153 b!1513791))

(declare-fun m!1778151 () Bool)

(assert (=> setNonEmpty!9153 m!1778151))

(declare-fun e!968055 () Bool)

(assert (=> b!1513176 (= tp!432882 e!968055)))

(declare-fun setIsEmpty!9154 () Bool)

(declare-fun setRes!9154 () Bool)

(assert (=> setIsEmpty!9154 setRes!9154))

(declare-fun setNonEmpty!9154 () Bool)

(declare-fun tp!433100 () Bool)

(declare-fun e!968056 () Bool)

(declare-fun setElem!9154 () Context!1354)

(assert (=> setNonEmpty!9154 (= setRes!9154 (and tp!433100 (inv!21315 setElem!9154) e!968056))))

(declare-fun setRest!9154 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9154 (= (_2!8490 (h!21476 (t!139421 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9154 true) setRest!9154))))

(declare-fun b!1513792 () Bool)

(declare-fun e!968057 () Bool)

(declare-fun tp!433098 () Bool)

(assert (=> b!1513792 (= e!968057 tp!433098)))

(declare-fun b!1513793 () Bool)

(declare-fun tp!433101 () Bool)

(assert (=> b!1513793 (= e!968056 tp!433101)))

(declare-fun b!1513794 () Bool)

(declare-fun tp!433099 () Bool)

(assert (=> b!1513794 (= e!968055 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (t!139421 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))))) e!968057 tp_is_empty!7015 setRes!9154 tp!433099))))

(declare-fun condSetEmpty!9154 () Bool)

(assert (=> b!1513794 (= condSetEmpty!9154 (= (_2!8490 (h!21476 (t!139421 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513794 b!1513792))

(assert (= (and b!1513794 condSetEmpty!9154) setIsEmpty!9154))

(assert (= (and b!1513794 (not condSetEmpty!9154)) setNonEmpty!9154))

(assert (= setNonEmpty!9154 b!1513793))

(assert (= (and b!1513176 ((_ is Cons!16075) (t!139421 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))) b!1513794))

(declare-fun m!1778153 () Bool)

(assert (=> setNonEmpty!9154 m!1778153))

(declare-fun m!1778155 () Bool)

(assert (=> b!1513794 m!1778155))

(declare-fun condSetEmpty!9155 () Bool)

(assert (=> setNonEmpty!9111 (= condSetEmpty!9155 (= setRest!9110 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9155 () Bool)

(assert (=> setNonEmpty!9111 (= tp!432820 setRes!9155)))

(declare-fun setIsEmpty!9155 () Bool)

(assert (=> setIsEmpty!9155 setRes!9155))

(declare-fun setNonEmpty!9155 () Bool)

(declare-fun tp!433102 () Bool)

(declare-fun setElem!9155 () Context!1354)

(declare-fun e!968058 () Bool)

(assert (=> setNonEmpty!9155 (= setRes!9155 (and tp!433102 (inv!21315 setElem!9155) e!968058))))

(declare-fun setRest!9155 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9155 (= setRest!9110 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9155 true) setRest!9155))))

(declare-fun b!1513795 () Bool)

(declare-fun tp!433103 () Bool)

(assert (=> b!1513795 (= e!968058 tp!433103)))

(assert (= (and setNonEmpty!9111 condSetEmpty!9155) setIsEmpty!9155))

(assert (= (and setNonEmpty!9111 (not condSetEmpty!9155)) setNonEmpty!9155))

(assert (= setNonEmpty!9155 b!1513795))

(declare-fun m!1778157 () Bool)

(assert (=> setNonEmpty!9155 m!1778157))

(declare-fun b!1513796 () Bool)

(declare-fun e!968059 () Bool)

(declare-fun tp!433104 () Bool)

(declare-fun tp!433105 () Bool)

(assert (=> b!1513796 (= e!968059 (and tp!433104 tp!433105))))

(assert (=> b!1513168 (= tp!432873 e!968059)))

(assert (= (and b!1513168 ((_ is Cons!16073) (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapValue!7004)))))) b!1513796))

(declare-fun b!1513797 () Bool)

(declare-fun e!968060 () Bool)

(declare-fun tp!433106 () Bool)

(declare-fun tp!433107 () Bool)

(assert (=> b!1513797 (= e!968060 (and tp!433106 tp!433107))))

(assert (=> b!1513158 (= tp!432859 e!968060)))

(assert (= (and b!1513158 ((_ is Cons!16073) (exprs!1177 setElem!9122))) b!1513797))

(declare-fun b!1513798 () Bool)

(declare-fun e!968061 () Bool)

(declare-fun tp!433108 () Bool)

(declare-fun tp!433109 () Bool)

(assert (=> b!1513798 (= e!968061 (and tp!433108 tp!433109))))

(assert (=> b!1513139 (= tp!432835 e!968061)))

(assert (= (and b!1513139 ((_ is Cons!16073) (exprs!1177 setElem!9116))) b!1513798))

(declare-fun condSetEmpty!9156 () Bool)

(assert (=> setNonEmpty!9126 (= condSetEmpty!9156 (= setRest!9126 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9156 () Bool)

(assert (=> setNonEmpty!9126 (= tp!432879 setRes!9156)))

(declare-fun setIsEmpty!9156 () Bool)

(assert (=> setIsEmpty!9156 setRes!9156))

(declare-fun e!968062 () Bool)

(declare-fun setNonEmpty!9156 () Bool)

(declare-fun setElem!9156 () Context!1354)

(declare-fun tp!433110 () Bool)

(assert (=> setNonEmpty!9156 (= setRes!9156 (and tp!433110 (inv!21315 setElem!9156) e!968062))))

(declare-fun setRest!9156 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9156 (= setRest!9126 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9156 true) setRest!9156))))

(declare-fun b!1513799 () Bool)

(declare-fun tp!433111 () Bool)

(assert (=> b!1513799 (= e!968062 tp!433111)))

(assert (= (and setNonEmpty!9126 condSetEmpty!9156) setIsEmpty!9156))

(assert (= (and setNonEmpty!9126 (not condSetEmpty!9156)) setNonEmpty!9156))

(assert (= setNonEmpty!9156 b!1513799))

(declare-fun m!1778159 () Bool)

(assert (=> setNonEmpty!9156 m!1778159))

(declare-fun setRes!9157 () Bool)

(declare-fun e!968063 () Bool)

(declare-fun setElem!9157 () Context!1354)

(declare-fun setNonEmpty!9157 () Bool)

(declare-fun tp!433113 () Bool)

(assert (=> setNonEmpty!9157 (= setRes!9157 (and tp!433113 (inv!21315 setElem!9157) e!968063))))

(declare-fun setRest!9157 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9157 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapDefault!7003)))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9157 true) setRest!9157))))

(declare-fun b!1513801 () Bool)

(declare-fun tp!433112 () Bool)

(assert (=> b!1513801 (= e!968063 tp!433112)))

(declare-fun setIsEmpty!9157 () Bool)

(assert (=> setIsEmpty!9157 setRes!9157))

(declare-fun e!968064 () Bool)

(assert (=> b!1513245 (= tp!432974 e!968064)))

(declare-fun b!1513800 () Bool)

(declare-fun tp!433114 () Bool)

(assert (=> b!1513800 (= e!968064 (and setRes!9157 tp!433114))))

(declare-fun condSetEmpty!9157 () Bool)

(assert (=> b!1513800 (= condSetEmpty!9157 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapDefault!7003)))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513800 condSetEmpty!9157) setIsEmpty!9157))

(assert (= (and b!1513800 (not condSetEmpty!9157)) setNonEmpty!9157))

(assert (= setNonEmpty!9157 b!1513801))

(assert (= (and b!1513245 ((_ is Cons!16074) (t!139420 mapDefault!7003))) b!1513800))

(declare-fun m!1778161 () Bool)

(assert (=> setNonEmpty!9157 m!1778161))

(declare-fun b!1513802 () Bool)

(declare-fun e!968065 () Bool)

(declare-fun tp!433115 () Bool)

(declare-fun tp!433116 () Bool)

(assert (=> b!1513802 (= e!968065 (and tp!433115 tp!433116))))

(assert (=> b!1513174 (= tp!432881 e!968065)))

(assert (= (and b!1513174 ((_ is Cons!16073) (exprs!1177 (_1!8489 (_1!8490 (h!21476 (minValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))))) b!1513802))

(declare-fun b!1513803 () Bool)

(declare-fun e!968066 () Bool)

(declare-fun tp!433117 () Bool)

(declare-fun tp!433118 () Bool)

(assert (=> b!1513803 (= e!968066 (and tp!433117 tp!433118))))

(assert (=> b!1513241 (= tp!432956 e!968066)))

(assert (= (and b!1513241 ((_ is Cons!16073) (exprs!1177 setElem!9136))) b!1513803))

(declare-fun b!1513804 () Bool)

(declare-fun e!968067 () Bool)

(declare-fun tp!433119 () Bool)

(declare-fun tp!433120 () Bool)

(assert (=> b!1513804 (= e!968067 (and tp!433119 tp!433120))))

(assert (=> b!1513124 (= tp!432817 e!968067)))

(assert (= (and b!1513124 ((_ is Cons!16073) (exprs!1177 setElem!9111))) b!1513804))

(declare-fun b!1513805 () Bool)

(declare-fun e!968068 () Bool)

(declare-fun tp!433121 () Bool)

(declare-fun tp!433122 () Bool)

(assert (=> b!1513805 (= e!968068 (and tp!433121 tp!433122))))

(assert (=> b!1513239 (= tp!432957 e!968068)))

(assert (= (and b!1513239 ((_ is Cons!16073) (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapValue!7013)))))) b!1513805))

(declare-fun b!1513806 () Bool)

(declare-fun e!968069 () Bool)

(declare-fun tp!433123 () Bool)

(declare-fun tp!433124 () Bool)

(assert (=> b!1513806 (= e!968069 (and tp!433123 tp!433124))))

(assert (=> b!1513156 (= tp!432860 e!968069)))

(assert (= (and b!1513156 ((_ is Cons!16073) (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapDefault!7010)))))) b!1513806))

(declare-fun b!1513808 () Bool)

(declare-fun e!968070 () Bool)

(declare-fun tp!433129 () Bool)

(declare-fun tp!433127 () Bool)

(assert (=> b!1513808 (= e!968070 (and tp!433129 tp!433127))))

(declare-fun b!1513809 () Bool)

(declare-fun tp!433125 () Bool)

(assert (=> b!1513809 (= e!968070 tp!433125)))

(assert (=> b!1513217 (= tp!432926 e!968070)))

(declare-fun b!1513807 () Bool)

(assert (=> b!1513807 (= e!968070 tp_is_empty!7015)))

(declare-fun b!1513810 () Bool)

(declare-fun tp!433128 () Bool)

(declare-fun tp!433126 () Bool)

(assert (=> b!1513810 (= e!968070 (and tp!433128 tp!433126))))

(assert (= (and b!1513217 ((_ is ElementMatch!4159) (_1!8491 (_1!8492 (h!21477 mapDefault!7004))))) b!1513807))

(assert (= (and b!1513217 ((_ is Concat!7094) (_1!8491 (_1!8492 (h!21477 mapDefault!7004))))) b!1513808))

(assert (= (and b!1513217 ((_ is Star!4159) (_1!8491 (_1!8492 (h!21477 mapDefault!7004))))) b!1513809))

(assert (= (and b!1513217 ((_ is Union!4159) (_1!8491 (_1!8492 (h!21477 mapDefault!7004))))) b!1513810))

(declare-fun b!1513811 () Bool)

(declare-fun e!968072 () Bool)

(declare-fun tp!433131 () Bool)

(assert (=> b!1513811 (= e!968072 tp!433131)))

(declare-fun setIsEmpty!9158 () Bool)

(declare-fun setRes!9158 () Bool)

(assert (=> setIsEmpty!9158 setRes!9158))

(declare-fun e!968071 () Bool)

(assert (=> b!1513217 (= tp!432929 e!968071)))

(declare-fun setElem!9158 () Context!1354)

(declare-fun setNonEmpty!9158 () Bool)

(declare-fun tp!433134 () Bool)

(assert (=> setNonEmpty!9158 (= setRes!9158 (and tp!433134 (inv!21315 setElem!9158) e!968072))))

(declare-fun setRest!9158 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9158 (= (_2!8492 (h!21477 (t!139422 mapDefault!7004))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9158 true) setRest!9158))))

(declare-fun tp!433130 () Bool)

(declare-fun tp!433133 () Bool)

(declare-fun b!1513812 () Bool)

(declare-fun e!968073 () Bool)

(assert (=> b!1513812 (= e!968071 (and tp!433130 (inv!21315 (_2!8491 (_1!8492 (h!21477 (t!139422 mapDefault!7004))))) e!968073 tp_is_empty!7015 setRes!9158 tp!433133))))

(declare-fun condSetEmpty!9158 () Bool)

(assert (=> b!1513812 (= condSetEmpty!9158 (= (_2!8492 (h!21477 (t!139422 mapDefault!7004))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513813 () Bool)

(declare-fun tp!433132 () Bool)

(assert (=> b!1513813 (= e!968073 tp!433132)))

(assert (= b!1513812 b!1513813))

(assert (= (and b!1513812 condSetEmpty!9158) setIsEmpty!9158))

(assert (= (and b!1513812 (not condSetEmpty!9158)) setNonEmpty!9158))

(assert (= setNonEmpty!9158 b!1513811))

(assert (= (and b!1513217 ((_ is Cons!16076) (t!139422 mapDefault!7004))) b!1513812))

(declare-fun m!1778163 () Bool)

(assert (=> setNonEmpty!9158 m!1778163))

(declare-fun m!1778165 () Bool)

(assert (=> b!1513812 m!1778165))

(declare-fun mapIsEmpty!7015 () Bool)

(declare-fun mapRes!7015 () Bool)

(assert (=> mapIsEmpty!7015 mapRes!7015))

(declare-fun setNonEmpty!9159 () Bool)

(declare-fun setElem!9159 () Context!1354)

(declare-fun tp!433141 () Bool)

(declare-fun e!968074 () Bool)

(declare-fun setRes!9159 () Bool)

(assert (=> setNonEmpty!9159 (= setRes!9159 (and tp!433141 (inv!21315 setElem!9159) e!968074))))

(declare-fun mapDefault!7015 () List!16142)

(declare-fun setRest!9160 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9159 (= (_1!8487 (_1!8488 (h!21475 mapDefault!7015))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9159 true) setRest!9160))))

(declare-fun b!1513814 () Bool)

(declare-fun e!968075 () Bool)

(declare-fun tp!433136 () Bool)

(assert (=> b!1513814 (= e!968075 tp!433136)))

(declare-fun condMapEmpty!7015 () Bool)

(assert (=> mapNonEmpty!7007 (= condMapEmpty!7015 (= mapRest!7007 ((as const (Array (_ BitVec 32) List!16142)) mapDefault!7015)))))

(declare-fun e!968076 () Bool)

(assert (=> mapNonEmpty!7007 (= tp!432821 (and e!968076 mapRes!7015))))

(declare-fun b!1513815 () Bool)

(declare-fun tp!433138 () Bool)

(assert (=> b!1513815 (= e!968076 (and setRes!9159 tp!433138))))

(declare-fun condSetEmpty!9159 () Bool)

(assert (=> b!1513815 (= condSetEmpty!9159 (= (_1!8487 (_1!8488 (h!21475 mapDefault!7015))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun mapNonEmpty!7015 () Bool)

(declare-fun tp!433140 () Bool)

(declare-fun e!968077 () Bool)

(assert (=> mapNonEmpty!7015 (= mapRes!7015 (and tp!433140 e!968077))))

(declare-fun mapValue!7015 () List!16142)

(declare-fun mapRest!7015 () (Array (_ BitVec 32) List!16142))

(declare-fun mapKey!7015 () (_ BitVec 32))

(assert (=> mapNonEmpty!7015 (= mapRest!7007 (store mapRest!7015 mapKey!7015 mapValue!7015))))

(declare-fun b!1513816 () Bool)

(declare-fun setRes!9160 () Bool)

(declare-fun tp!433137 () Bool)

(assert (=> b!1513816 (= e!968077 (and setRes!9160 tp!433137))))

(declare-fun condSetEmpty!9160 () Bool)

(assert (=> b!1513816 (= condSetEmpty!9160 (= (_1!8487 (_1!8488 (h!21475 mapValue!7015))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setIsEmpty!9159 () Bool)

(assert (=> setIsEmpty!9159 setRes!9159))

(declare-fun b!1513817 () Bool)

(declare-fun tp!433135 () Bool)

(assert (=> b!1513817 (= e!968074 tp!433135)))

(declare-fun setElem!9160 () Context!1354)

(declare-fun setNonEmpty!9160 () Bool)

(declare-fun tp!433139 () Bool)

(assert (=> setNonEmpty!9160 (= setRes!9160 (and tp!433139 (inv!21315 setElem!9160) e!968075))))

(declare-fun setRest!9159 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9160 (= (_1!8487 (_1!8488 (h!21475 mapValue!7015))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9160 true) setRest!9159))))

(declare-fun setIsEmpty!9160 () Bool)

(assert (=> setIsEmpty!9160 setRes!9160))

(assert (= (and mapNonEmpty!7007 condMapEmpty!7015) mapIsEmpty!7015))

(assert (= (and mapNonEmpty!7007 (not condMapEmpty!7015)) mapNonEmpty!7015))

(assert (= (and b!1513816 condSetEmpty!9160) setIsEmpty!9160))

(assert (= (and b!1513816 (not condSetEmpty!9160)) setNonEmpty!9160))

(assert (= setNonEmpty!9160 b!1513814))

(assert (= (and mapNonEmpty!7015 ((_ is Cons!16074) mapValue!7015)) b!1513816))

(assert (= (and b!1513815 condSetEmpty!9159) setIsEmpty!9159))

(assert (= (and b!1513815 (not condSetEmpty!9159)) setNonEmpty!9159))

(assert (= setNonEmpty!9159 b!1513817))

(assert (= (and mapNonEmpty!7007 ((_ is Cons!16074) mapDefault!7015)) b!1513815))

(declare-fun m!1778167 () Bool)

(assert (=> setNonEmpty!9159 m!1778167))

(declare-fun m!1778169 () Bool)

(assert (=> mapNonEmpty!7015 m!1778169))

(declare-fun m!1778171 () Bool)

(assert (=> setNonEmpty!9160 m!1778171))

(declare-fun b!1513818 () Bool)

(declare-fun e!968078 () Bool)

(declare-fun tp!433142 () Bool)

(declare-fun tp!433143 () Bool)

(assert (=> b!1513818 (= e!968078 (and tp!433142 tp!433143))))

(assert (=> b!1513238 (= tp!432964 e!968078)))

(assert (= (and b!1513238 ((_ is Cons!16073) (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapDefault!7013)))))) b!1513818))

(declare-fun e!968079 () Bool)

(assert (=> b!1513154 (= tp!432858 e!968079)))

(declare-fun setIsEmpty!9161 () Bool)

(declare-fun setRes!9161 () Bool)

(assert (=> setIsEmpty!9161 setRes!9161))

(declare-fun tp!433146 () Bool)

(declare-fun e!968080 () Bool)

(declare-fun setNonEmpty!9161 () Bool)

(declare-fun setElem!9161 () Context!1354)

(assert (=> setNonEmpty!9161 (= setRes!9161 (and tp!433146 (inv!21315 setElem!9161) e!968080))))

(declare-fun setRest!9161 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9161 (= (_2!8490 (h!21476 (t!139421 mapDefault!7010))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9161 true) setRest!9161))))

(declare-fun b!1513819 () Bool)

(declare-fun e!968081 () Bool)

(declare-fun tp!433144 () Bool)

(assert (=> b!1513819 (= e!968081 tp!433144)))

(declare-fun b!1513820 () Bool)

(declare-fun tp!433147 () Bool)

(assert (=> b!1513820 (= e!968080 tp!433147)))

(declare-fun b!1513821 () Bool)

(declare-fun tp!433145 () Bool)

(assert (=> b!1513821 (= e!968079 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (t!139421 mapDefault!7010))))) e!968081 tp_is_empty!7015 setRes!9161 tp!433145))))

(declare-fun condSetEmpty!9161 () Bool)

(assert (=> b!1513821 (= condSetEmpty!9161 (= (_2!8490 (h!21476 (t!139421 mapDefault!7010))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513821 b!1513819))

(assert (= (and b!1513821 condSetEmpty!9161) setIsEmpty!9161))

(assert (= (and b!1513821 (not condSetEmpty!9161)) setNonEmpty!9161))

(assert (= setNonEmpty!9161 b!1513820))

(assert (= (and b!1513154 ((_ is Cons!16075) (t!139421 mapDefault!7010))) b!1513821))

(declare-fun m!1778173 () Bool)

(assert (=> setNonEmpty!9161 m!1778173))

(declare-fun m!1778175 () Bool)

(assert (=> b!1513821 m!1778175))

(declare-fun b!1513823 () Bool)

(declare-fun e!968082 () Bool)

(declare-fun tp!433152 () Bool)

(declare-fun tp!433150 () Bool)

(assert (=> b!1513823 (= e!968082 (and tp!433152 tp!433150))))

(declare-fun b!1513824 () Bool)

(declare-fun tp!433148 () Bool)

(assert (=> b!1513824 (= e!968082 tp!433148)))

(assert (=> b!1513204 (= tp!432911 e!968082)))

(declare-fun b!1513822 () Bool)

(assert (=> b!1513822 (= e!968082 tp_is_empty!7015)))

(declare-fun b!1513825 () Bool)

(declare-fun tp!433151 () Bool)

(declare-fun tp!433149 () Bool)

(assert (=> b!1513825 (= e!968082 (and tp!433151 tp!433149))))

(assert (= (and b!1513204 ((_ is ElementMatch!4159) (regOne!8831 (regex!2844 (h!21473 rules!1640))))) b!1513822))

(assert (= (and b!1513204 ((_ is Concat!7094) (regOne!8831 (regex!2844 (h!21473 rules!1640))))) b!1513823))

(assert (= (and b!1513204 ((_ is Star!4159) (regOne!8831 (regex!2844 (h!21473 rules!1640))))) b!1513824))

(assert (= (and b!1513204 ((_ is Union!4159) (regOne!8831 (regex!2844 (h!21473 rules!1640))))) b!1513825))

(declare-fun b!1513827 () Bool)

(declare-fun e!968083 () Bool)

(declare-fun tp!433157 () Bool)

(declare-fun tp!433155 () Bool)

(assert (=> b!1513827 (= e!968083 (and tp!433157 tp!433155))))

(declare-fun b!1513828 () Bool)

(declare-fun tp!433153 () Bool)

(assert (=> b!1513828 (= e!968083 tp!433153)))

(assert (=> b!1513204 (= tp!432909 e!968083)))

(declare-fun b!1513826 () Bool)

(assert (=> b!1513826 (= e!968083 tp_is_empty!7015)))

(declare-fun b!1513829 () Bool)

(declare-fun tp!433156 () Bool)

(declare-fun tp!433154 () Bool)

(assert (=> b!1513829 (= e!968083 (and tp!433156 tp!433154))))

(assert (= (and b!1513204 ((_ is ElementMatch!4159) (regTwo!8831 (regex!2844 (h!21473 rules!1640))))) b!1513826))

(assert (= (and b!1513204 ((_ is Concat!7094) (regTwo!8831 (regex!2844 (h!21473 rules!1640))))) b!1513827))

(assert (= (and b!1513204 ((_ is Star!4159) (regTwo!8831 (regex!2844 (h!21473 rules!1640))))) b!1513828))

(assert (= (and b!1513204 ((_ is Union!4159) (regTwo!8831 (regex!2844 (h!21473 rules!1640))))) b!1513829))

(declare-fun condSetEmpty!9162 () Bool)

(assert (=> setNonEmpty!9140 (= condSetEmpty!9162 (= setRest!9140 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9162 () Bool)

(assert (=> setNonEmpty!9140 (= tp!432988 setRes!9162)))

(declare-fun setIsEmpty!9162 () Bool)

(assert (=> setIsEmpty!9162 setRes!9162))

(declare-fun tp!433158 () Bool)

(declare-fun setNonEmpty!9162 () Bool)

(declare-fun e!968084 () Bool)

(declare-fun setElem!9162 () Context!1354)

(assert (=> setNonEmpty!9162 (= setRes!9162 (and tp!433158 (inv!21315 setElem!9162) e!968084))))

(declare-fun setRest!9162 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9162 (= setRest!9140 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9162 true) setRest!9162))))

(declare-fun b!1513830 () Bool)

(declare-fun tp!433159 () Bool)

(assert (=> b!1513830 (= e!968084 tp!433159)))

(assert (= (and setNonEmpty!9140 condSetEmpty!9162) setIsEmpty!9162))

(assert (= (and setNonEmpty!9140 (not condSetEmpty!9162)) setNonEmpty!9162))

(assert (= setNonEmpty!9162 b!1513830))

(declare-fun m!1778177 () Bool)

(assert (=> setNonEmpty!9162 m!1778177))

(declare-fun b!1513831 () Bool)

(declare-fun e!968085 () Bool)

(declare-fun tp!433160 () Bool)

(declare-fun tp!433161 () Bool)

(assert (=> b!1513831 (= e!968085 (and tp!433160 tp!433161))))

(assert (=> b!1513188 (= tp!432894 e!968085)))

(assert (= (and b!1513188 ((_ is Cons!16073) (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapDefault!7002)))))) b!1513831))

(declare-fun condSetEmpty!9163 () Bool)

(assert (=> setNonEmpty!9136 (= condSetEmpty!9163 (= setRest!9136 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9163 () Bool)

(assert (=> setNonEmpty!9136 (= tp!432962 setRes!9163)))

(declare-fun setIsEmpty!9163 () Bool)

(assert (=> setIsEmpty!9163 setRes!9163))

(declare-fun tp!433162 () Bool)

(declare-fun setElem!9163 () Context!1354)

(declare-fun setNonEmpty!9163 () Bool)

(declare-fun e!968086 () Bool)

(assert (=> setNonEmpty!9163 (= setRes!9163 (and tp!433162 (inv!21315 setElem!9163) e!968086))))

(declare-fun setRest!9163 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9163 (= setRest!9136 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9163 true) setRest!9163))))

(declare-fun b!1513832 () Bool)

(declare-fun tp!433163 () Bool)

(assert (=> b!1513832 (= e!968086 tp!433163)))

(assert (= (and setNonEmpty!9136 condSetEmpty!9163) setIsEmpty!9163))

(assert (= (and setNonEmpty!9136 (not condSetEmpty!9163)) setNonEmpty!9163))

(assert (= setNonEmpty!9163 b!1513832))

(declare-fun m!1778179 () Bool)

(assert (=> setNonEmpty!9163 m!1778179))

(declare-fun condSetEmpty!9164 () Bool)

(assert (=> setNonEmpty!9141 (= condSetEmpty!9164 (= setRest!9141 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9164 () Bool)

(assert (=> setNonEmpty!9141 (= tp!432993 setRes!9164)))

(declare-fun setIsEmpty!9164 () Bool)

(assert (=> setIsEmpty!9164 setRes!9164))

(declare-fun setNonEmpty!9164 () Bool)

(declare-fun setElem!9164 () Context!1354)

(declare-fun tp!433164 () Bool)

(declare-fun e!968087 () Bool)

(assert (=> setNonEmpty!9164 (= setRes!9164 (and tp!433164 (inv!21315 setElem!9164) e!968087))))

(declare-fun setRest!9164 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9164 (= setRest!9141 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9164 true) setRest!9164))))

(declare-fun b!1513833 () Bool)

(declare-fun tp!433165 () Bool)

(assert (=> b!1513833 (= e!968087 tp!433165)))

(assert (= (and setNonEmpty!9141 condSetEmpty!9164) setIsEmpty!9164))

(assert (= (and setNonEmpty!9141 (not condSetEmpty!9164)) setNonEmpty!9164))

(assert (= setNonEmpty!9164 b!1513833))

(declare-fun m!1778181 () Bool)

(assert (=> setNonEmpty!9164 m!1778181))

(declare-fun b!1513847 () Bool)

(declare-fun b_free!39267 () Bool)

(declare-fun b_next!39971 () Bool)

(assert (=> b!1513847 (= b_free!39267 (not b_next!39971))))

(declare-fun tp!433178 () Bool)

(declare-fun b_and!105285 () Bool)

(assert (=> b!1513847 (= tp!433178 b_and!105285)))

(declare-fun b_free!39269 () Bool)

(declare-fun b_next!39973 () Bool)

(assert (=> b!1513847 (= b_free!39269 (not b_next!39973))))

(declare-fun tp!433179 () Bool)

(declare-fun b_and!105287 () Bool)

(assert (=> b!1513847 (= tp!433179 b_and!105287)))

(declare-fun e!968104 () Bool)

(declare-fun e!968105 () Bool)

(declare-fun b!1513845 () Bool)

(declare-fun tp!433177 () Bool)

(declare-fun inv!21 (TokenValue!2934) Bool)

(assert (=> b!1513845 (= e!968104 (and (inv!21 (value!90714 (h!21472 (innerList!5500 (xs!8221 (c!247985 acc!392)))))) e!968105 tp!433177))))

(declare-fun e!968101 () Bool)

(assert (=> b!1513847 (= e!968101 (and tp!433178 tp!433179))))

(declare-fun e!968102 () Bool)

(assert (=> b!1513257 (= tp!432981 e!968102)))

(declare-fun b!1513844 () Bool)

(declare-fun tp!433180 () Bool)

(declare-fun inv!21318 (Token!5350) Bool)

(assert (=> b!1513844 (= e!968102 (and (inv!21318 (h!21472 (innerList!5500 (xs!8221 (c!247985 acc!392))))) e!968104 tp!433180))))

(declare-fun b!1513846 () Bool)

(declare-fun tp!433176 () Bool)

(assert (=> b!1513846 (= e!968105 (and tp!433176 (inv!21301 (tag!3108 (rule!4637 (h!21472 (innerList!5500 (xs!8221 (c!247985 acc!392))))))) (inv!21309 (transformation!2844 (rule!4637 (h!21472 (innerList!5500 (xs!8221 (c!247985 acc!392))))))) e!968101))))

(assert (= b!1513846 b!1513847))

(assert (= b!1513845 b!1513846))

(assert (= b!1513844 b!1513845))

(assert (= (and b!1513257 ((_ is Cons!16071) (innerList!5500 (xs!8221 (c!247985 acc!392))))) b!1513844))

(declare-fun m!1778183 () Bool)

(assert (=> b!1513845 m!1778183))

(declare-fun m!1778185 () Bool)

(assert (=> b!1513844 m!1778185))

(declare-fun m!1778187 () Bool)

(assert (=> b!1513846 m!1778187))

(declare-fun m!1778189 () Bool)

(assert (=> b!1513846 m!1778189))

(declare-fun b!1513849 () Bool)

(declare-fun e!968106 () Bool)

(declare-fun tp!433185 () Bool)

(declare-fun tp!433183 () Bool)

(assert (=> b!1513849 (= e!968106 (and tp!433185 tp!433183))))

(declare-fun b!1513850 () Bool)

(declare-fun tp!433181 () Bool)

(assert (=> b!1513850 (= e!968106 tp!433181)))

(assert (=> b!1513202 (= tp!432912 e!968106)))

(declare-fun b!1513848 () Bool)

(assert (=> b!1513848 (= e!968106 tp_is_empty!7015)))

(declare-fun b!1513851 () Bool)

(declare-fun tp!433184 () Bool)

(declare-fun tp!433182 () Bool)

(assert (=> b!1513851 (= e!968106 (and tp!433184 tp!433182))))

(assert (= (and b!1513202 ((_ is ElementMatch!4159) (regOne!8830 (regex!2844 (h!21473 rules!1640))))) b!1513848))

(assert (= (and b!1513202 ((_ is Concat!7094) (regOne!8830 (regex!2844 (h!21473 rules!1640))))) b!1513849))

(assert (= (and b!1513202 ((_ is Star!4159) (regOne!8830 (regex!2844 (h!21473 rules!1640))))) b!1513850))

(assert (= (and b!1513202 ((_ is Union!4159) (regOne!8830 (regex!2844 (h!21473 rules!1640))))) b!1513851))

(declare-fun b!1513853 () Bool)

(declare-fun e!968107 () Bool)

(declare-fun tp!433190 () Bool)

(declare-fun tp!433188 () Bool)

(assert (=> b!1513853 (= e!968107 (and tp!433190 tp!433188))))

(declare-fun b!1513854 () Bool)

(declare-fun tp!433186 () Bool)

(assert (=> b!1513854 (= e!968107 tp!433186)))

(assert (=> b!1513202 (= tp!432910 e!968107)))

(declare-fun b!1513852 () Bool)

(assert (=> b!1513852 (= e!968107 tp_is_empty!7015)))

(declare-fun b!1513855 () Bool)

(declare-fun tp!433189 () Bool)

(declare-fun tp!433187 () Bool)

(assert (=> b!1513855 (= e!968107 (and tp!433189 tp!433187))))

(assert (= (and b!1513202 ((_ is ElementMatch!4159) (regTwo!8830 (regex!2844 (h!21473 rules!1640))))) b!1513852))

(assert (= (and b!1513202 ((_ is Concat!7094) (regTwo!8830 (regex!2844 (h!21473 rules!1640))))) b!1513853))

(assert (= (and b!1513202 ((_ is Star!4159) (regTwo!8830 (regex!2844 (h!21473 rules!1640))))) b!1513854))

(assert (= (and b!1513202 ((_ is Union!4159) (regTwo!8830 (regex!2844 (h!21473 rules!1640))))) b!1513855))

(declare-fun b!1513856 () Bool)

(declare-fun e!968108 () Bool)

(declare-fun tp!433191 () Bool)

(declare-fun tp!433192 () Bool)

(assert (=> b!1513856 (= e!968108 (and tp!433191 tp!433192))))

(assert (=> b!1513258 (= tp!432985 e!968108)))

(assert (= (and b!1513258 ((_ is Cons!16073) (exprs!1177 setElem!9140))) b!1513856))

(declare-fun b!1513857 () Bool)

(declare-fun e!968109 () Bool)

(declare-fun tp!433193 () Bool)

(declare-fun tp!433194 () Bool)

(assert (=> b!1513857 (= e!968109 (and tp!433193 tp!433194))))

(assert (=> b!1513261 (= tp!432990 e!968109)))

(assert (= (and b!1513261 ((_ is Cons!16073) (exprs!1177 setElem!9141))) b!1513857))

(declare-fun b!1513858 () Bool)

(declare-fun e!968110 () Bool)

(declare-fun tp!433195 () Bool)

(declare-fun tp!433196 () Bool)

(assert (=> b!1513858 (= e!968110 (and tp!433195 tp!433196))))

(assert (=> b!1513135 (= tp!432829 e!968110)))

(assert (= (and b!1513135 ((_ is Cons!16073) (exprs!1177 setElem!9114))) b!1513858))

(declare-fun tp!433198 () Bool)

(declare-fun tp!433199 () Bool)

(declare-fun b!1513859 () Bool)

(declare-fun e!968112 () Bool)

(assert (=> b!1513859 (= e!968112 (and (inv!21310 (left!13364 (left!13364 (c!247985 acc!392)))) tp!433198 (inv!21310 (right!13694 (left!13364 (c!247985 acc!392)))) tp!433199))))

(declare-fun b!1513861 () Bool)

(declare-fun e!968111 () Bool)

(declare-fun tp!433197 () Bool)

(assert (=> b!1513861 (= e!968111 tp!433197)))

(declare-fun b!1513860 () Bool)

(assert (=> b!1513860 (= e!968112 (and (inv!21317 (xs!8221 (left!13364 (c!247985 acc!392)))) e!968111))))

(assert (=> b!1513255 (= tp!432982 (and (inv!21310 (left!13364 (c!247985 acc!392))) e!968112))))

(assert (= (and b!1513255 ((_ is Node!5440) (left!13364 (c!247985 acc!392)))) b!1513859))

(assert (= b!1513860 b!1513861))

(assert (= (and b!1513255 ((_ is Leaf!8065) (left!13364 (c!247985 acc!392)))) b!1513860))

(declare-fun m!1778191 () Bool)

(assert (=> b!1513859 m!1778191))

(declare-fun m!1778193 () Bool)

(assert (=> b!1513859 m!1778193))

(declare-fun m!1778195 () Bool)

(assert (=> b!1513860 m!1778195))

(assert (=> b!1513255 m!1777392))

(declare-fun b!1513862 () Bool)

(declare-fun tp!433202 () Bool)

(declare-fun e!968114 () Bool)

(declare-fun tp!433201 () Bool)

(assert (=> b!1513862 (= e!968114 (and (inv!21310 (left!13364 (right!13694 (c!247985 acc!392)))) tp!433201 (inv!21310 (right!13694 (right!13694 (c!247985 acc!392)))) tp!433202))))

(declare-fun b!1513864 () Bool)

(declare-fun e!968113 () Bool)

(declare-fun tp!433200 () Bool)

(assert (=> b!1513864 (= e!968113 tp!433200)))

(declare-fun b!1513863 () Bool)

(assert (=> b!1513863 (= e!968114 (and (inv!21317 (xs!8221 (right!13694 (c!247985 acc!392)))) e!968113))))

(assert (=> b!1513255 (= tp!432983 (and (inv!21310 (right!13694 (c!247985 acc!392))) e!968114))))

(assert (= (and b!1513255 ((_ is Node!5440) (right!13694 (c!247985 acc!392)))) b!1513862))

(assert (= b!1513863 b!1513864))

(assert (= (and b!1513255 ((_ is Leaf!8065) (right!13694 (c!247985 acc!392)))) b!1513863))

(declare-fun m!1778197 () Bool)

(assert (=> b!1513862 m!1778197))

(declare-fun m!1778199 () Bool)

(assert (=> b!1513862 m!1778199))

(declare-fun m!1778201 () Bool)

(assert (=> b!1513863 m!1778201))

(assert (=> b!1513255 m!1777394))

(declare-fun e!968115 () Bool)

(assert (=> b!1513170 (= tp!432874 e!968115)))

(declare-fun setIsEmpty!9165 () Bool)

(declare-fun setRes!9165 () Bool)

(assert (=> setIsEmpty!9165 setRes!9165))

(declare-fun e!968116 () Bool)

(declare-fun setElem!9165 () Context!1354)

(declare-fun tp!433205 () Bool)

(declare-fun setNonEmpty!9165 () Bool)

(assert (=> setNonEmpty!9165 (= setRes!9165 (and tp!433205 (inv!21315 setElem!9165) e!968116))))

(declare-fun setRest!9165 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9165 (= (_2!8490 (h!21476 (t!139421 mapValue!7004))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9165 true) setRest!9165))))

(declare-fun b!1513865 () Bool)

(declare-fun e!968117 () Bool)

(declare-fun tp!433203 () Bool)

(assert (=> b!1513865 (= e!968117 tp!433203)))

(declare-fun b!1513866 () Bool)

(declare-fun tp!433206 () Bool)

(assert (=> b!1513866 (= e!968116 tp!433206)))

(declare-fun tp!433204 () Bool)

(declare-fun b!1513867 () Bool)

(assert (=> b!1513867 (= e!968115 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (t!139421 mapValue!7004))))) e!968117 tp_is_empty!7015 setRes!9165 tp!433204))))

(declare-fun condSetEmpty!9165 () Bool)

(assert (=> b!1513867 (= condSetEmpty!9165 (= (_2!8490 (h!21476 (t!139421 mapValue!7004))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513867 b!1513865))

(assert (= (and b!1513867 condSetEmpty!9165) setIsEmpty!9165))

(assert (= (and b!1513867 (not condSetEmpty!9165)) setNonEmpty!9165))

(assert (= setNonEmpty!9165 b!1513866))

(assert (= (and b!1513170 ((_ is Cons!16075) (t!139421 mapValue!7004))) b!1513867))

(declare-fun m!1778203 () Bool)

(assert (=> setNonEmpty!9165 m!1778203))

(declare-fun m!1778205 () Bool)

(assert (=> b!1513867 m!1778205))

(declare-fun b!1513868 () Bool)

(declare-fun e!968118 () Bool)

(declare-fun tp!433207 () Bool)

(declare-fun tp!433208 () Bool)

(assert (=> b!1513868 (= e!968118 (and tp!433207 tp!433208))))

(assert (=> b!1513137 (= tp!432832 e!968118)))

(assert (= (and b!1513137 ((_ is Cons!16073) (exprs!1177 setElem!9115))) b!1513868))

(declare-fun b!1513871 () Bool)

(declare-fun b_free!39271 () Bool)

(declare-fun b_next!39975 () Bool)

(assert (=> b!1513871 (= b_free!39271 (not b_next!39975))))

(declare-fun tp!433210 () Bool)

(declare-fun b_and!105289 () Bool)

(assert (=> b!1513871 (= tp!433210 b_and!105289)))

(declare-fun b_free!39273 () Bool)

(declare-fun b_next!39977 () Bool)

(assert (=> b!1513871 (= b_free!39273 (not b_next!39977))))

(declare-fun tp!433212 () Bool)

(declare-fun b_and!105291 () Bool)

(assert (=> b!1513871 (= tp!433212 b_and!105291)))

(declare-fun e!968122 () Bool)

(assert (=> b!1513871 (= e!968122 (and tp!433210 tp!433212))))

(declare-fun tp!433209 () Bool)

(declare-fun e!968119 () Bool)

(declare-fun b!1513870 () Bool)

(assert (=> b!1513870 (= e!968119 (and tp!433209 (inv!21301 (tag!3108 (h!21473 (t!139418 (t!139418 rules!1640))))) (inv!21309 (transformation!2844 (h!21473 (t!139418 (t!139418 rules!1640))))) e!968122))))

(declare-fun b!1513869 () Bool)

(declare-fun e!968120 () Bool)

(declare-fun tp!433211 () Bool)

(assert (=> b!1513869 (= e!968120 (and e!968119 tp!433211))))

(assert (=> b!1513275 (= tp!433007 e!968120)))

(assert (= b!1513870 b!1513871))

(assert (= b!1513869 b!1513870))

(assert (= (and b!1513275 ((_ is Cons!16072) (t!139418 (t!139418 rules!1640)))) b!1513869))

(declare-fun m!1778207 () Bool)

(assert (=> b!1513870 m!1778207))

(declare-fun m!1778209 () Bool)

(assert (=> b!1513870 m!1778209))

(declare-fun b!1513873 () Bool)

(declare-fun e!968123 () Bool)

(declare-fun tp!433217 () Bool)

(declare-fun tp!433215 () Bool)

(assert (=> b!1513873 (= e!968123 (and tp!433217 tp!433215))))

(declare-fun b!1513874 () Bool)

(declare-fun tp!433213 () Bool)

(assert (=> b!1513874 (= e!968123 tp!433213)))

(assert (=> b!1513243 (= tp!432967 e!968123)))

(declare-fun b!1513872 () Bool)

(assert (=> b!1513872 (= e!968123 tp_is_empty!7015)))

(declare-fun b!1513875 () Bool)

(declare-fun tp!433216 () Bool)

(declare-fun tp!433214 () Bool)

(assert (=> b!1513875 (= e!968123 (and tp!433216 tp!433214))))

(assert (= (and b!1513243 ((_ is ElementMatch!4159) (_1!8491 (_1!8492 (h!21477 mapValue!7002))))) b!1513872))

(assert (= (and b!1513243 ((_ is Concat!7094) (_1!8491 (_1!8492 (h!21477 mapValue!7002))))) b!1513873))

(assert (= (and b!1513243 ((_ is Star!4159) (_1!8491 (_1!8492 (h!21477 mapValue!7002))))) b!1513874))

(assert (= (and b!1513243 ((_ is Union!4159) (_1!8491 (_1!8492 (h!21477 mapValue!7002))))) b!1513875))

(declare-fun b!1513876 () Bool)

(declare-fun e!968125 () Bool)

(declare-fun tp!433219 () Bool)

(assert (=> b!1513876 (= e!968125 tp!433219)))

(declare-fun setIsEmpty!9166 () Bool)

(declare-fun setRes!9166 () Bool)

(assert (=> setIsEmpty!9166 setRes!9166))

(declare-fun e!968124 () Bool)

(assert (=> b!1513243 (= tp!432970 e!968124)))

(declare-fun setNonEmpty!9166 () Bool)

(declare-fun tp!433222 () Bool)

(declare-fun setElem!9166 () Context!1354)

(assert (=> setNonEmpty!9166 (= setRes!9166 (and tp!433222 (inv!21315 setElem!9166) e!968125))))

(declare-fun setRest!9166 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9166 (= (_2!8492 (h!21477 (t!139422 mapValue!7002))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9166 true) setRest!9166))))

(declare-fun b!1513877 () Bool)

(declare-fun tp!433221 () Bool)

(declare-fun tp!433218 () Bool)

(declare-fun e!968126 () Bool)

(assert (=> b!1513877 (= e!968124 (and tp!433218 (inv!21315 (_2!8491 (_1!8492 (h!21477 (t!139422 mapValue!7002))))) e!968126 tp_is_empty!7015 setRes!9166 tp!433221))))

(declare-fun condSetEmpty!9166 () Bool)

(assert (=> b!1513877 (= condSetEmpty!9166 (= (_2!8492 (h!21477 (t!139422 mapValue!7002))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513878 () Bool)

(declare-fun tp!433220 () Bool)

(assert (=> b!1513878 (= e!968126 tp!433220)))

(assert (= b!1513877 b!1513878))

(assert (= (and b!1513877 condSetEmpty!9166) setIsEmpty!9166))

(assert (= (and b!1513877 (not condSetEmpty!9166)) setNonEmpty!9166))

(assert (= setNonEmpty!9166 b!1513876))

(assert (= (and b!1513243 ((_ is Cons!16076) (t!139422 mapValue!7002))) b!1513877))

(declare-fun m!1778211 () Bool)

(assert (=> setNonEmpty!9166 m!1778211))

(declare-fun m!1778213 () Bool)

(assert (=> b!1513877 m!1778213))

(declare-fun b!1513879 () Bool)

(declare-fun e!968127 () Bool)

(declare-fun tp!433223 () Bool)

(declare-fun tp!433224 () Bool)

(assert (=> b!1513879 (= e!968127 (and tp!433223 tp!433224))))

(assert (=> b!1513127 (= tp!432816 e!968127)))

(assert (= (and b!1513127 ((_ is Cons!16073) (exprs!1177 setElem!9110))) b!1513879))

(declare-fun condSetEmpty!9167 () Bool)

(assert (=> setNonEmpty!9137 (= condSetEmpty!9167 (= setRest!9137 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9167 () Bool)

(assert (=> setNonEmpty!9137 (= tp!432959 setRes!9167)))

(declare-fun setIsEmpty!9167 () Bool)

(assert (=> setIsEmpty!9167 setRes!9167))

(declare-fun tp!433225 () Bool)

(declare-fun setElem!9167 () Context!1354)

(declare-fun setNonEmpty!9167 () Bool)

(declare-fun e!968128 () Bool)

(assert (=> setNonEmpty!9167 (= setRes!9167 (and tp!433225 (inv!21315 setElem!9167) e!968128))))

(declare-fun setRest!9167 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9167 (= setRest!9137 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9167 true) setRest!9167))))

(declare-fun b!1513880 () Bool)

(declare-fun tp!433226 () Bool)

(assert (=> b!1513880 (= e!968128 tp!433226)))

(assert (= (and setNonEmpty!9137 condSetEmpty!9167) setIsEmpty!9167))

(assert (= (and setNonEmpty!9137 (not condSetEmpty!9167)) setNonEmpty!9167))

(assert (= setNonEmpty!9167 b!1513880))

(declare-fun m!1778215 () Bool)

(assert (=> setNonEmpty!9167 m!1778215))

(declare-fun setElem!9168 () Context!1354)

(declare-fun setRes!9168 () Bool)

(declare-fun e!968129 () Bool)

(declare-fun setNonEmpty!9168 () Bool)

(declare-fun tp!433228 () Bool)

(assert (=> setNonEmpty!9168 (= setRes!9168 (and tp!433228 (inv!21315 setElem!9168) e!968129))))

(declare-fun setRest!9168 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9168 (= (_1!8487 (_1!8488 (h!21475 (t!139420 (zeroValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64)))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9168 true) setRest!9168))))

(declare-fun b!1513882 () Bool)

(declare-fun tp!433227 () Bool)

(assert (=> b!1513882 (= e!968129 tp!433227)))

(declare-fun setIsEmpty!9168 () Bool)

(assert (=> setIsEmpty!9168 setRes!9168))

(declare-fun e!968130 () Bool)

(assert (=> b!1513136 (= tp!432834 e!968130)))

(declare-fun b!1513881 () Bool)

(declare-fun tp!433229 () Bool)

(assert (=> b!1513881 (= e!968130 (and setRes!9168 tp!433229))))

(declare-fun condSetEmpty!9168 () Bool)

(assert (=> b!1513881 (= condSetEmpty!9168 (= (_1!8487 (_1!8488 (h!21475 (t!139420 (zeroValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64)))))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513881 condSetEmpty!9168) setIsEmpty!9168))

(assert (= (and b!1513881 (not condSetEmpty!9168)) setNonEmpty!9168))

(assert (= setNonEmpty!9168 b!1513882))

(assert (= (and b!1513136 ((_ is Cons!16074) (t!139420 (zeroValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))))) b!1513881))

(declare-fun m!1778217 () Bool)

(assert (=> setNonEmpty!9168 m!1778217))

(declare-fun setIsEmpty!9169 () Bool)

(declare-fun setRes!9170 () Bool)

(assert (=> setIsEmpty!9169 setRes!9170))

(declare-fun tp!433235 () Bool)

(declare-fun setElem!9169 () Context!1354)

(declare-fun e!968136 () Bool)

(declare-fun setNonEmpty!9169 () Bool)

(assert (=> setNonEmpty!9169 (= setRes!9170 (and tp!433235 (inv!21315 setElem!9169) e!968136))))

(declare-fun mapDefault!7016 () List!16143)

(declare-fun setRest!9169 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9169 (= (_2!8490 (h!21476 mapDefault!7016)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9169 true) setRest!9169))))

(declare-fun e!968135 () Bool)

(declare-fun e!968133 () Bool)

(declare-fun tp!433232 () Bool)

(declare-fun b!1513883 () Bool)

(assert (=> b!1513883 (= e!968135 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 mapDefault!7016)))) e!968133 tp_is_empty!7015 setRes!9170 tp!433232))))

(declare-fun condSetEmpty!9169 () Bool)

(assert (=> b!1513883 (= condSetEmpty!9169 (= (_2!8490 (h!21476 mapDefault!7016)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513884 () Bool)

(declare-fun e!968132 () Bool)

(declare-fun tp!433237 () Bool)

(assert (=> b!1513884 (= e!968132 tp!433237)))

(declare-fun b!1513885 () Bool)

(declare-fun tp!433234 () Bool)

(assert (=> b!1513885 (= e!968133 tp!433234)))

(declare-fun tp!433236 () Bool)

(declare-fun setNonEmpty!9170 () Bool)

(declare-fun setElem!9170 () Context!1354)

(declare-fun e!968131 () Bool)

(declare-fun setRes!9169 () Bool)

(assert (=> setNonEmpty!9170 (= setRes!9169 (and tp!433236 (inv!21315 setElem!9170) e!968131))))

(declare-fun mapValue!7016 () List!16143)

(declare-fun setRest!9170 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9170 (= (_2!8490 (h!21476 mapValue!7016)) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9170 true) setRest!9170))))

(declare-fun mapIsEmpty!7016 () Bool)

(declare-fun mapRes!7016 () Bool)

(assert (=> mapIsEmpty!7016 mapRes!7016))

(declare-fun condMapEmpty!7016 () Bool)

(assert (=> mapNonEmpty!7010 (= condMapEmpty!7016 (= mapRest!7010 ((as const (Array (_ BitVec 32) List!16143)) mapDefault!7016)))))

(assert (=> mapNonEmpty!7010 (= tp!432856 (and e!968135 mapRes!7016))))

(declare-fun b!1513886 () Bool)

(declare-fun tp!433231 () Bool)

(declare-fun e!968134 () Bool)

(assert (=> b!1513886 (= e!968134 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 mapValue!7016)))) e!968132 tp_is_empty!7015 setRes!9169 tp!433231))))

(declare-fun condSetEmpty!9170 () Bool)

(assert (=> b!1513886 (= condSetEmpty!9170 (= (_2!8490 (h!21476 mapValue!7016)) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setIsEmpty!9170 () Bool)

(assert (=> setIsEmpty!9170 setRes!9169))

(declare-fun mapNonEmpty!7016 () Bool)

(declare-fun tp!433230 () Bool)

(assert (=> mapNonEmpty!7016 (= mapRes!7016 (and tp!433230 e!968134))))

(declare-fun mapKey!7016 () (_ BitVec 32))

(declare-fun mapRest!7016 () (Array (_ BitVec 32) List!16143))

(assert (=> mapNonEmpty!7016 (= mapRest!7010 (store mapRest!7016 mapKey!7016 mapValue!7016))))

(declare-fun b!1513887 () Bool)

(declare-fun tp!433233 () Bool)

(assert (=> b!1513887 (= e!968131 tp!433233)))

(declare-fun b!1513888 () Bool)

(declare-fun tp!433238 () Bool)

(assert (=> b!1513888 (= e!968136 tp!433238)))

(assert (= (and mapNonEmpty!7010 condMapEmpty!7016) mapIsEmpty!7016))

(assert (= (and mapNonEmpty!7010 (not condMapEmpty!7016)) mapNonEmpty!7016))

(assert (= b!1513886 b!1513884))

(assert (= (and b!1513886 condSetEmpty!9170) setIsEmpty!9170))

(assert (= (and b!1513886 (not condSetEmpty!9170)) setNonEmpty!9170))

(assert (= setNonEmpty!9170 b!1513887))

(assert (= (and mapNonEmpty!7016 ((_ is Cons!16075) mapValue!7016)) b!1513886))

(assert (= b!1513883 b!1513885))

(assert (= (and b!1513883 condSetEmpty!9169) setIsEmpty!9169))

(assert (= (and b!1513883 (not condSetEmpty!9169)) setNonEmpty!9169))

(assert (= setNonEmpty!9169 b!1513888))

(assert (= (and mapNonEmpty!7010 ((_ is Cons!16075) mapDefault!7016)) b!1513883))

(declare-fun m!1778219 () Bool)

(assert (=> setNonEmpty!9169 m!1778219))

(declare-fun m!1778221 () Bool)

(assert (=> setNonEmpty!9170 m!1778221))

(declare-fun m!1778223 () Bool)

(assert (=> b!1513883 m!1778223))

(declare-fun m!1778225 () Bool)

(assert (=> mapNonEmpty!7016 m!1778225))

(declare-fun m!1778227 () Bool)

(assert (=> b!1513886 m!1778227))

(declare-fun b!1513889 () Bool)

(declare-fun e!968137 () Bool)

(declare-fun tp!433239 () Bool)

(declare-fun tp!433240 () Bool)

(assert (=> b!1513889 (= e!968137 (and tp!433239 tp!433240))))

(assert (=> b!1513169 (= tp!432876 e!968137)))

(assert (= (and b!1513169 ((_ is Cons!16073) (exprs!1177 setElem!9125))) b!1513889))

(declare-fun b!1513890 () Bool)

(declare-fun e!968138 () Bool)

(declare-fun tp!433241 () Bool)

(declare-fun tp!433242 () Bool)

(assert (=> b!1513890 (= e!968138 (and tp!433241 tp!433242))))

(assert (=> b!1513242 (= tp!432968 e!968138)))

(assert (= (and b!1513242 ((_ is Cons!16073) (exprs!1177 setElem!9138))) b!1513890))

(declare-fun e!968139 () Bool)

(assert (=> b!1513173 (= tp!432878 e!968139)))

(declare-fun setIsEmpty!9171 () Bool)

(declare-fun setRes!9171 () Bool)

(assert (=> setIsEmpty!9171 setRes!9171))

(declare-fun setNonEmpty!9171 () Bool)

(declare-fun e!968140 () Bool)

(declare-fun setElem!9171 () Context!1354)

(declare-fun tp!433245 () Bool)

(assert (=> setNonEmpty!9171 (= setRes!9171 (and tp!433245 (inv!21315 setElem!9171) e!968140))))

(declare-fun setRest!9171 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9171 (= (_2!8490 (h!21476 (t!139421 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9171 true) setRest!9171))))

(declare-fun b!1513891 () Bool)

(declare-fun e!968141 () Bool)

(declare-fun tp!433243 () Bool)

(assert (=> b!1513891 (= e!968141 tp!433243)))

(declare-fun b!1513892 () Bool)

(declare-fun tp!433246 () Bool)

(assert (=> b!1513892 (= e!968140 tp!433246)))

(declare-fun b!1513893 () Bool)

(declare-fun tp!433244 () Bool)

(assert (=> b!1513893 (= e!968139 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (t!139421 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))))) e!968141 tp_is_empty!7015 setRes!9171 tp!433244))))

(declare-fun condSetEmpty!9171 () Bool)

(assert (=> b!1513893 (= condSetEmpty!9171 (= (_2!8490 (h!21476 (t!139421 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513893 b!1513891))

(assert (= (and b!1513893 condSetEmpty!9171) setIsEmpty!9171))

(assert (= (and b!1513893 (not condSetEmpty!9171)) setNonEmpty!9171))

(assert (= setNonEmpty!9171 b!1513892))

(assert (= (and b!1513173 ((_ is Cons!16075) (t!139421 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616))))))))) b!1513893))

(declare-fun m!1778229 () Bool)

(assert (=> setNonEmpty!9171 m!1778229))

(declare-fun m!1778231 () Bool)

(assert (=> b!1513893 m!1778231))

(declare-fun b!1513894 () Bool)

(declare-fun e!968142 () Bool)

(declare-fun tp!433247 () Bool)

(declare-fun tp!433248 () Bool)

(assert (=> b!1513894 (= e!968142 (and tp!433247 tp!433248))))

(assert (=> b!1513246 (= tp!432972 e!968142)))

(assert (= (and b!1513246 ((_ is Cons!16073) (exprs!1177 setElem!9139))) b!1513894))

(declare-fun e!968144 () Bool)

(declare-fun b!1513895 () Bool)

(declare-fun tp!433251 () Bool)

(declare-fun tp!433249 () Bool)

(assert (=> b!1513895 (= e!968144 (and (inv!21303 (left!13363 (left!13363 (c!247983 treated!70)))) tp!433249 (inv!21303 (right!13693 (left!13363 (c!247983 treated!70)))) tp!433251))))

(declare-fun b!1513897 () Bool)

(declare-fun e!968143 () Bool)

(declare-fun tp!433250 () Bool)

(assert (=> b!1513897 (= e!968143 tp!433250)))

(declare-fun b!1513896 () Bool)

(assert (=> b!1513896 (= e!968144 (and (inv!21316 (xs!8220 (left!13363 (c!247983 treated!70)))) e!968143))))

(assert (=> b!1513264 (= tp!432994 (and (inv!21303 (left!13363 (c!247983 treated!70))) e!968144))))

(assert (= (and b!1513264 ((_ is Node!5439) (left!13363 (c!247983 treated!70)))) b!1513895))

(assert (= b!1513896 b!1513897))

(assert (= (and b!1513264 ((_ is Leaf!8064) (left!13363 (c!247983 treated!70)))) b!1513896))

(declare-fun m!1778233 () Bool)

(assert (=> b!1513895 m!1778233))

(declare-fun m!1778235 () Bool)

(assert (=> b!1513895 m!1778235))

(declare-fun m!1778237 () Bool)

(assert (=> b!1513896 m!1778237))

(assert (=> b!1513264 m!1777406))

(declare-fun tp!433254 () Bool)

(declare-fun b!1513898 () Bool)

(declare-fun e!968146 () Bool)

(declare-fun tp!433252 () Bool)

(assert (=> b!1513898 (= e!968146 (and (inv!21303 (left!13363 (right!13693 (c!247983 treated!70)))) tp!433252 (inv!21303 (right!13693 (right!13693 (c!247983 treated!70)))) tp!433254))))

(declare-fun b!1513900 () Bool)

(declare-fun e!968145 () Bool)

(declare-fun tp!433253 () Bool)

(assert (=> b!1513900 (= e!968145 tp!433253)))

(declare-fun b!1513899 () Bool)

(assert (=> b!1513899 (= e!968146 (and (inv!21316 (xs!8220 (right!13693 (c!247983 treated!70)))) e!968145))))

(assert (=> b!1513264 (= tp!432996 (and (inv!21303 (right!13693 (c!247983 treated!70))) e!968146))))

(assert (= (and b!1513264 ((_ is Node!5439) (right!13693 (c!247983 treated!70)))) b!1513898))

(assert (= b!1513899 b!1513900))

(assert (= (and b!1513264 ((_ is Leaf!8064) (right!13693 (c!247983 treated!70)))) b!1513899))

(declare-fun m!1778239 () Bool)

(assert (=> b!1513898 m!1778239))

(declare-fun m!1778241 () Bool)

(assert (=> b!1513898 m!1778241))

(declare-fun m!1778243 () Bool)

(assert (=> b!1513899 m!1778243))

(assert (=> b!1513264 m!1777408))

(declare-fun b!1513901 () Bool)

(declare-fun e!968147 () Bool)

(declare-fun tp!433255 () Bool)

(assert (=> b!1513901 (= e!968147 (and tp_is_empty!7015 tp!433255))))

(assert (=> b!1513207 (= tp!432914 e!968147)))

(assert (= (and b!1513207 ((_ is Cons!16070) (innerList!5499 (xs!8220 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))))) b!1513901))

(declare-fun e!968148 () Bool)

(declare-fun setNonEmpty!9172 () Bool)

(declare-fun setElem!9172 () Context!1354)

(declare-fun setRes!9172 () Bool)

(declare-fun tp!433257 () Bool)

(assert (=> setNonEmpty!9172 (= setRes!9172 (and tp!433257 (inv!21315 setElem!9172) e!968148))))

(declare-fun setRest!9172 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9172 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapValue!7007)))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9172 true) setRest!9172))))

(declare-fun b!1513903 () Bool)

(declare-fun tp!433256 () Bool)

(assert (=> b!1513903 (= e!968148 tp!433256)))

(declare-fun setIsEmpty!9172 () Bool)

(assert (=> setIsEmpty!9172 setRes!9172))

(declare-fun e!968149 () Bool)

(assert (=> b!1513126 (= tp!432818 e!968149)))

(declare-fun b!1513902 () Bool)

(declare-fun tp!433258 () Bool)

(assert (=> b!1513902 (= e!968149 (and setRes!9172 tp!433258))))

(declare-fun condSetEmpty!9172 () Bool)

(assert (=> b!1513902 (= condSetEmpty!9172 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapValue!7007)))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513902 condSetEmpty!9172) setIsEmpty!9172))

(assert (= (and b!1513902 (not condSetEmpty!9172)) setNonEmpty!9172))

(assert (= setNonEmpty!9172 b!1513903))

(assert (= (and b!1513126 ((_ is Cons!16074) (t!139420 mapValue!7007))) b!1513902))

(declare-fun m!1778245 () Bool)

(assert (=> setNonEmpty!9172 m!1778245))

(declare-fun b!1513905 () Bool)

(declare-fun e!968150 () Bool)

(declare-fun tp!433263 () Bool)

(declare-fun tp!433261 () Bool)

(assert (=> b!1513905 (= e!968150 (and tp!433263 tp!433261))))

(declare-fun b!1513906 () Bool)

(declare-fun tp!433259 () Bool)

(assert (=> b!1513906 (= e!968150 tp!433259)))

(assert (=> b!1513240 (= tp!432958 e!968150)))

(declare-fun b!1513904 () Bool)

(assert (=> b!1513904 (= e!968150 tp_is_empty!7015)))

(declare-fun b!1513907 () Bool)

(declare-fun tp!433262 () Bool)

(declare-fun tp!433260 () Bool)

(assert (=> b!1513907 (= e!968150 (and tp!433262 tp!433260))))

(assert (= (and b!1513240 ((_ is ElementMatch!4159) (_1!8491 (_1!8492 (h!21477 mapValue!7013))))) b!1513904))

(assert (= (and b!1513240 ((_ is Concat!7094) (_1!8491 (_1!8492 (h!21477 mapValue!7013))))) b!1513905))

(assert (= (and b!1513240 ((_ is Star!4159) (_1!8491 (_1!8492 (h!21477 mapValue!7013))))) b!1513906))

(assert (= (and b!1513240 ((_ is Union!4159) (_1!8491 (_1!8492 (h!21477 mapValue!7013))))) b!1513907))

(declare-fun b!1513908 () Bool)

(declare-fun e!968152 () Bool)

(declare-fun tp!433265 () Bool)

(assert (=> b!1513908 (= e!968152 tp!433265)))

(declare-fun setIsEmpty!9173 () Bool)

(declare-fun setRes!9173 () Bool)

(assert (=> setIsEmpty!9173 setRes!9173))

(declare-fun e!968151 () Bool)

(assert (=> b!1513240 (= tp!432960 e!968151)))

(declare-fun setElem!9173 () Context!1354)

(declare-fun setNonEmpty!9173 () Bool)

(declare-fun tp!433268 () Bool)

(assert (=> setNonEmpty!9173 (= setRes!9173 (and tp!433268 (inv!21315 setElem!9173) e!968152))))

(declare-fun setRest!9173 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9173 (= (_2!8492 (h!21477 (t!139422 mapValue!7013))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9173 true) setRest!9173))))

(declare-fun e!968153 () Bool)

(declare-fun tp!433267 () Bool)

(declare-fun b!1513909 () Bool)

(declare-fun tp!433264 () Bool)

(assert (=> b!1513909 (= e!968151 (and tp!433264 (inv!21315 (_2!8491 (_1!8492 (h!21477 (t!139422 mapValue!7013))))) e!968153 tp_is_empty!7015 setRes!9173 tp!433267))))

(declare-fun condSetEmpty!9173 () Bool)

(assert (=> b!1513909 (= condSetEmpty!9173 (= (_2!8492 (h!21477 (t!139422 mapValue!7013))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513910 () Bool)

(declare-fun tp!433266 () Bool)

(assert (=> b!1513910 (= e!968153 tp!433266)))

(assert (= b!1513909 b!1513910))

(assert (= (and b!1513909 condSetEmpty!9173) setIsEmpty!9173))

(assert (= (and b!1513909 (not condSetEmpty!9173)) setNonEmpty!9173))

(assert (= setNonEmpty!9173 b!1513908))

(assert (= (and b!1513240 ((_ is Cons!16076) (t!139422 mapValue!7013))) b!1513909))

(declare-fun m!1778247 () Bool)

(assert (=> setNonEmpty!9173 m!1778247))

(declare-fun m!1778249 () Bool)

(assert (=> b!1513909 m!1778249))

(declare-fun b!1513911 () Bool)

(declare-fun e!968154 () Bool)

(declare-fun tp!433269 () Bool)

(declare-fun tp!433270 () Bool)

(assert (=> b!1513911 (= e!968154 (and tp!433269 tp!433270))))

(assert (=> b!1513175 (= tp!432884 e!968154)))

(assert (= (and b!1513175 ((_ is Cons!16073) (exprs!1177 setElem!9127))) b!1513911))

(declare-fun e!968155 () Bool)

(assert (=> b!1513157 (= tp!432857 e!968155)))

(declare-fun setIsEmpty!9174 () Bool)

(declare-fun setRes!9174 () Bool)

(assert (=> setIsEmpty!9174 setRes!9174))

(declare-fun setElem!9174 () Context!1354)

(declare-fun setNonEmpty!9174 () Bool)

(declare-fun e!968156 () Bool)

(declare-fun tp!433273 () Bool)

(assert (=> setNonEmpty!9174 (= setRes!9174 (and tp!433273 (inv!21315 setElem!9174) e!968156))))

(declare-fun setRest!9174 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9174 (= (_2!8490 (h!21476 (t!139421 mapValue!7010))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9174 true) setRest!9174))))

(declare-fun b!1513912 () Bool)

(declare-fun e!968157 () Bool)

(declare-fun tp!433271 () Bool)

(assert (=> b!1513912 (= e!968157 tp!433271)))

(declare-fun b!1513913 () Bool)

(declare-fun tp!433274 () Bool)

(assert (=> b!1513913 (= e!968156 tp!433274)))

(declare-fun b!1513914 () Bool)

(declare-fun tp!433272 () Bool)

(assert (=> b!1513914 (= e!968155 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (t!139421 mapValue!7010))))) e!968157 tp_is_empty!7015 setRes!9174 tp!433272))))

(declare-fun condSetEmpty!9174 () Bool)

(assert (=> b!1513914 (= condSetEmpty!9174 (= (_2!8490 (h!21476 (t!139421 mapValue!7010))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513914 b!1513912))

(assert (= (and b!1513914 condSetEmpty!9174) setIsEmpty!9174))

(assert (= (and b!1513914 (not condSetEmpty!9174)) setNonEmpty!9174))

(assert (= setNonEmpty!9174 b!1513913))

(assert (= (and b!1513157 ((_ is Cons!16075) (t!139421 mapValue!7010))) b!1513914))

(declare-fun m!1778251 () Bool)

(assert (=> setNonEmpty!9174 m!1778251))

(declare-fun m!1778253 () Bool)

(assert (=> b!1513914 m!1778253))

(declare-fun condSetEmpty!9175 () Bool)

(assert (=> setNonEmpty!9125 (= condSetEmpty!9175 (= setRest!9125 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9175 () Bool)

(assert (=> setNonEmpty!9125 (= tp!432875 setRes!9175)))

(declare-fun setIsEmpty!9175 () Bool)

(assert (=> setIsEmpty!9175 setRes!9175))

(declare-fun setElem!9175 () Context!1354)

(declare-fun tp!433275 () Bool)

(declare-fun e!968158 () Bool)

(declare-fun setNonEmpty!9175 () Bool)

(assert (=> setNonEmpty!9175 (= setRes!9175 (and tp!433275 (inv!21315 setElem!9175) e!968158))))

(declare-fun setRest!9175 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9175 (= setRest!9125 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9175 true) setRest!9175))))

(declare-fun b!1513915 () Bool)

(declare-fun tp!433276 () Bool)

(assert (=> b!1513915 (= e!968158 tp!433276)))

(assert (= (and setNonEmpty!9125 condSetEmpty!9175) setIsEmpty!9175))

(assert (= (and setNonEmpty!9125 (not condSetEmpty!9175)) setNonEmpty!9175))

(assert (= setNonEmpty!9175 b!1513915))

(declare-fun m!1778255 () Bool)

(assert (=> setNonEmpty!9175 m!1778255))

(declare-fun b!1513916 () Bool)

(declare-fun e!968159 () Bool)

(declare-fun tp!433277 () Bool)

(declare-fun tp!433278 () Bool)

(assert (=> b!1513916 (= e!968159 (and tp!433277 tp!433278))))

(assert (=> b!1513171 (= tp!432877 e!968159)))

(assert (= (and b!1513171 ((_ is Cons!16073) (exprs!1177 (_1!8489 (_1!8490 (h!21476 (zeroValue!1735 (v!22884 (underlying!3165 (v!22885 (underlying!3166 (cache!1803 cacheUp!616)))))))))))) b!1513916))

(declare-fun e!968160 () Bool)

(declare-fun setNonEmpty!9176 () Bool)

(declare-fun setElem!9176 () Context!1354)

(declare-fun tp!433280 () Bool)

(declare-fun setRes!9176 () Bool)

(assert (=> setNonEmpty!9176 (= setRes!9176 (and tp!433280 (inv!21315 setElem!9176) e!968160))))

(declare-fun setRest!9176 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9176 (= (_1!8487 (_1!8488 (h!21475 (t!139420 (minValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64)))))))))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9176 true) setRest!9176))))

(declare-fun b!1513918 () Bool)

(declare-fun tp!433279 () Bool)

(assert (=> b!1513918 (= e!968160 tp!433279)))

(declare-fun setIsEmpty!9176 () Bool)

(assert (=> setIsEmpty!9176 setRes!9176))

(declare-fun e!968161 () Bool)

(assert (=> b!1513138 (= tp!432837 e!968161)))

(declare-fun b!1513917 () Bool)

(declare-fun tp!433281 () Bool)

(assert (=> b!1513917 (= e!968161 (and setRes!9176 tp!433281))))

(declare-fun condSetEmpty!9176 () Bool)

(assert (=> b!1513917 (= condSetEmpty!9176 (= (_1!8487 (_1!8488 (h!21475 (t!139420 (minValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64)))))))))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513917 condSetEmpty!9176) setIsEmpty!9176))

(assert (= (and b!1513917 (not condSetEmpty!9176)) setNonEmpty!9176))

(assert (= setNonEmpty!9176 b!1513918))

(assert (= (and b!1513138 ((_ is Cons!16074) (t!139420 (minValue!1734 (v!22882 (underlying!3163 (v!22883 (underlying!3164 (cache!1802 cacheFurthestNullable!64))))))))) b!1513917))

(declare-fun m!1778257 () Bool)

(assert (=> setNonEmpty!9176 m!1778257))

(declare-fun b!1513919 () Bool)

(declare-fun e!968162 () Bool)

(declare-fun tp!433282 () Bool)

(declare-fun tp!433283 () Bool)

(assert (=> b!1513919 (= e!968162 (and tp!433282 tp!433283))))

(assert (=> b!1513155 (= tp!432863 e!968162)))

(assert (= (and b!1513155 ((_ is Cons!16073) (exprs!1177 (_1!8489 (_1!8490 (h!21476 mapValue!7010)))))) b!1513919))

(declare-fun tp!433284 () Bool)

(declare-fun tp!433286 () Bool)

(declare-fun b!1513920 () Bool)

(declare-fun e!968164 () Bool)

(assert (=> b!1513920 (= e!968164 (and (inv!21303 (left!13363 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) tp!433284 (inv!21303 (right!13693 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) tp!433286))))

(declare-fun b!1513922 () Bool)

(declare-fun e!968163 () Bool)

(declare-fun tp!433285 () Bool)

(assert (=> b!1513922 (= e!968163 tp!433285)))

(declare-fun b!1513921 () Bool)

(assert (=> b!1513921 (= e!968164 (and (inv!21316 (xs!8220 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) e!968163))))

(assert (=> b!1513205 (= tp!432913 (and (inv!21303 (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) e!968164))))

(assert (= (and b!1513205 ((_ is Node!5439) (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) b!1513920))

(assert (= b!1513921 b!1513922))

(assert (= (and b!1513205 ((_ is Leaf!8064) (left!13363 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) b!1513921))

(declare-fun m!1778259 () Bool)

(assert (=> b!1513920 m!1778259))

(declare-fun m!1778261 () Bool)

(assert (=> b!1513920 m!1778261))

(declare-fun m!1778263 () Bool)

(assert (=> b!1513921 m!1778263))

(assert (=> b!1513205 m!1777360))

(declare-fun tp!433289 () Bool)

(declare-fun e!968166 () Bool)

(declare-fun b!1513923 () Bool)

(declare-fun tp!433287 () Bool)

(assert (=> b!1513923 (= e!968166 (and (inv!21303 (left!13363 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) tp!433287 (inv!21303 (right!13693 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) tp!433289))))

(declare-fun b!1513925 () Bool)

(declare-fun e!968165 () Bool)

(declare-fun tp!433288 () Bool)

(assert (=> b!1513925 (= e!968165 tp!433288)))

(declare-fun b!1513924 () Bool)

(assert (=> b!1513924 (= e!968166 (and (inv!21316 (xs!8220 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) e!968165))))

(assert (=> b!1513205 (= tp!432915 (and (inv!21303 (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64)))) e!968166))))

(assert (= (and b!1513205 ((_ is Node!5439) (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) b!1513923))

(assert (= b!1513924 b!1513925))

(assert (= (and b!1513205 ((_ is Leaf!8064) (right!13693 (c!247983 (totalInput!2296 cacheFurthestNullable!64))))) b!1513924))

(declare-fun m!1778265 () Bool)

(assert (=> b!1513923 m!1778265))

(declare-fun m!1778267 () Bool)

(assert (=> b!1513923 m!1778267))

(declare-fun m!1778269 () Bool)

(assert (=> b!1513924 m!1778269))

(assert (=> b!1513205 m!1777362))

(declare-fun b!1513926 () Bool)

(declare-fun e!968167 () Bool)

(declare-fun tp!433290 () Bool)

(declare-fun tp!433291 () Bool)

(assert (=> b!1513926 (= e!968167 (and tp!433290 tp!433291))))

(assert (=> b!1513218 (= tp!432928 e!968167)))

(assert (= (and b!1513218 ((_ is Cons!16073) (exprs!1177 (_2!8491 (_1!8492 (h!21477 mapDefault!7004)))))) b!1513926))

(declare-fun setElem!9177 () Context!1354)

(declare-fun setNonEmpty!9177 () Bool)

(declare-fun tp!433293 () Bool)

(declare-fun e!968168 () Bool)

(declare-fun setRes!9177 () Bool)

(assert (=> setNonEmpty!9177 (= setRes!9177 (and tp!433293 (inv!21315 setElem!9177) e!968168))))

(declare-fun setRest!9177 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9177 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapDefault!7007)))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9177 true) setRest!9177))))

(declare-fun b!1513928 () Bool)

(declare-fun tp!433292 () Bool)

(assert (=> b!1513928 (= e!968168 tp!433292)))

(declare-fun setIsEmpty!9177 () Bool)

(assert (=> setIsEmpty!9177 setRes!9177))

(declare-fun e!968169 () Bool)

(assert (=> b!1513125 (= tp!432819 e!968169)))

(declare-fun b!1513927 () Bool)

(declare-fun tp!433294 () Bool)

(assert (=> b!1513927 (= e!968169 (and setRes!9177 tp!433294))))

(declare-fun condSetEmpty!9177 () Bool)

(assert (=> b!1513927 (= condSetEmpty!9177 (= (_1!8487 (_1!8488 (h!21475 (t!139420 mapDefault!7007)))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= (and b!1513927 condSetEmpty!9177) setIsEmpty!9177))

(assert (= (and b!1513927 (not condSetEmpty!9177)) setNonEmpty!9177))

(assert (= setNonEmpty!9177 b!1513928))

(assert (= (and b!1513125 ((_ is Cons!16074) (t!139420 mapDefault!7007))) b!1513927))

(declare-fun m!1778271 () Bool)

(assert (=> setNonEmpty!9177 m!1778271))

(declare-fun condSetEmpty!9178 () Bool)

(assert (=> setNonEmpty!9127 (= condSetEmpty!9178 (= setRest!9127 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9178 () Bool)

(assert (=> setNonEmpty!9127 (= tp!432883 setRes!9178)))

(declare-fun setIsEmpty!9178 () Bool)

(assert (=> setIsEmpty!9178 setRes!9178))

(declare-fun setNonEmpty!9178 () Bool)

(declare-fun setElem!9178 () Context!1354)

(declare-fun tp!433295 () Bool)

(declare-fun e!968170 () Bool)

(assert (=> setNonEmpty!9178 (= setRes!9178 (and tp!433295 (inv!21315 setElem!9178) e!968170))))

(declare-fun setRest!9178 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9178 (= setRest!9127 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9178 true) setRest!9178))))

(declare-fun b!1513929 () Bool)

(declare-fun tp!433296 () Bool)

(assert (=> b!1513929 (= e!968170 tp!433296)))

(assert (= (and setNonEmpty!9127 condSetEmpty!9178) setIsEmpty!9178))

(assert (= (and setNonEmpty!9127 (not condSetEmpty!9178)) setNonEmpty!9178))

(assert (= setNonEmpty!9178 b!1513929))

(declare-fun m!1778273 () Bool)

(assert (=> setNonEmpty!9178 m!1778273))

(declare-fun condSetEmpty!9179 () Bool)

(assert (=> setNonEmpty!9116 (= condSetEmpty!9179 (= setRest!9116 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9179 () Bool)

(assert (=> setNonEmpty!9116 (= tp!432836 setRes!9179)))

(declare-fun setIsEmpty!9179 () Bool)

(assert (=> setIsEmpty!9179 setRes!9179))

(declare-fun tp!433297 () Bool)

(declare-fun e!968171 () Bool)

(declare-fun setElem!9179 () Context!1354)

(declare-fun setNonEmpty!9179 () Bool)

(assert (=> setNonEmpty!9179 (= setRes!9179 (and tp!433297 (inv!21315 setElem!9179) e!968171))))

(declare-fun setRest!9179 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9179 (= setRest!9116 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9179 true) setRest!9179))))

(declare-fun b!1513930 () Bool)

(declare-fun tp!433298 () Bool)

(assert (=> b!1513930 (= e!968171 tp!433298)))

(assert (= (and setNonEmpty!9116 condSetEmpty!9179) setIsEmpty!9179))

(assert (= (and setNonEmpty!9116 (not condSetEmpty!9179)) setNonEmpty!9179))

(assert (= setNonEmpty!9179 b!1513930))

(declare-fun m!1778275 () Bool)

(assert (=> setNonEmpty!9179 m!1778275))

(declare-fun condSetEmpty!9180 () Bool)

(assert (=> setNonEmpty!9122 (= condSetEmpty!9180 (= setRest!9122 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9180 () Bool)

(assert (=> setNonEmpty!9122 (= tp!432862 setRes!9180)))

(declare-fun setIsEmpty!9180 () Bool)

(assert (=> setIsEmpty!9180 setRes!9180))

(declare-fun setElem!9180 () Context!1354)

(declare-fun setNonEmpty!9180 () Bool)

(declare-fun tp!433299 () Bool)

(declare-fun e!968172 () Bool)

(assert (=> setNonEmpty!9180 (= setRes!9180 (and tp!433299 (inv!21315 setElem!9180) e!968172))))

(declare-fun setRest!9180 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9180 (= setRest!9122 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9180 true) setRest!9180))))

(declare-fun b!1513931 () Bool)

(declare-fun tp!433300 () Bool)

(assert (=> b!1513931 (= e!968172 tp!433300)))

(assert (= (and setNonEmpty!9122 condSetEmpty!9180) setIsEmpty!9180))

(assert (= (and setNonEmpty!9122 (not condSetEmpty!9180)) setNonEmpty!9180))

(assert (= setNonEmpty!9180 b!1513931))

(declare-fun m!1778277 () Bool)

(assert (=> setNonEmpty!9180 m!1778277))

(declare-fun b!1513932 () Bool)

(declare-fun e!968173 () Bool)

(declare-fun tp!433301 () Bool)

(declare-fun tp!433302 () Bool)

(assert (=> b!1513932 (= e!968173 (and tp!433301 tp!433302))))

(assert (=> b!1513216 (= tp!432927 e!968173)))

(assert (= (and b!1513216 ((_ is Cons!16073) (exprs!1177 setElem!9131))) b!1513932))

(declare-fun b!1513933 () Bool)

(declare-fun e!968174 () Bool)

(declare-fun tp!433303 () Bool)

(declare-fun tp!433304 () Bool)

(assert (=> b!1513933 (= e!968174 (and tp!433303 tp!433304))))

(assert (=> b!1513260 (= tp!432986 e!968174)))

(assert (= (and b!1513260 ((_ is Cons!16073) (exprs!1177 (_2!8491 (_1!8492 (h!21477 (zeroValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))))) b!1513933))

(declare-fun e!968175 () Bool)

(assert (=> b!1513190 (= tp!432895 e!968175)))

(declare-fun setIsEmpty!9181 () Bool)

(declare-fun setRes!9181 () Bool)

(assert (=> setIsEmpty!9181 setRes!9181))

(declare-fun e!968176 () Bool)

(declare-fun tp!433307 () Bool)

(declare-fun setNonEmpty!9181 () Bool)

(declare-fun setElem!9181 () Context!1354)

(assert (=> setNonEmpty!9181 (= setRes!9181 (and tp!433307 (inv!21315 setElem!9181) e!968176))))

(declare-fun setRest!9181 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9181 (= (_2!8490 (h!21476 (t!139421 mapDefault!7002))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9181 true) setRest!9181))))

(declare-fun b!1513934 () Bool)

(declare-fun e!968177 () Bool)

(declare-fun tp!433305 () Bool)

(assert (=> b!1513934 (= e!968177 tp!433305)))

(declare-fun b!1513935 () Bool)

(declare-fun tp!433308 () Bool)

(assert (=> b!1513935 (= e!968176 tp!433308)))

(declare-fun tp!433306 () Bool)

(declare-fun b!1513936 () Bool)

(assert (=> b!1513936 (= e!968175 (and (inv!21315 (_1!8489 (_1!8490 (h!21476 (t!139421 mapDefault!7002))))) e!968177 tp_is_empty!7015 setRes!9181 tp!433306))))

(declare-fun condSetEmpty!9181 () Bool)

(assert (=> b!1513936 (= condSetEmpty!9181 (= (_2!8490 (h!21476 (t!139421 mapDefault!7002))) ((as const (Array Context!1354 Bool)) false)))))

(assert (= b!1513936 b!1513934))

(assert (= (and b!1513936 condSetEmpty!9181) setIsEmpty!9181))

(assert (= (and b!1513936 (not condSetEmpty!9181)) setNonEmpty!9181))

(assert (= setNonEmpty!9181 b!1513935))

(assert (= (and b!1513190 ((_ is Cons!16075) (t!139421 mapDefault!7002))) b!1513936))

(declare-fun m!1778279 () Bool)

(assert (=> setNonEmpty!9181 m!1778279))

(declare-fun m!1778281 () Bool)

(assert (=> b!1513936 m!1778281))

(declare-fun b!1513938 () Bool)

(declare-fun e!968178 () Bool)

(declare-fun tp!433313 () Bool)

(declare-fun tp!433311 () Bool)

(assert (=> b!1513938 (= e!968178 (and tp!433313 tp!433311))))

(declare-fun b!1513939 () Bool)

(declare-fun tp!433309 () Bool)

(assert (=> b!1513939 (= e!968178 tp!433309)))

(assert (=> b!1513237 (= tp!432963 e!968178)))

(declare-fun b!1513937 () Bool)

(assert (=> b!1513937 (= e!968178 tp_is_empty!7015)))

(declare-fun b!1513940 () Bool)

(declare-fun tp!433312 () Bool)

(declare-fun tp!433310 () Bool)

(assert (=> b!1513940 (= e!968178 (and tp!433312 tp!433310))))

(assert (= (and b!1513237 ((_ is ElementMatch!4159) (_1!8491 (_1!8492 (h!21477 mapDefault!7013))))) b!1513937))

(assert (= (and b!1513237 ((_ is Concat!7094) (_1!8491 (_1!8492 (h!21477 mapDefault!7013))))) b!1513938))

(assert (= (and b!1513237 ((_ is Star!4159) (_1!8491 (_1!8492 (h!21477 mapDefault!7013))))) b!1513939))

(assert (= (and b!1513237 ((_ is Union!4159) (_1!8491 (_1!8492 (h!21477 mapDefault!7013))))) b!1513940))

(declare-fun b!1513941 () Bool)

(declare-fun e!968180 () Bool)

(declare-fun tp!433315 () Bool)

(assert (=> b!1513941 (= e!968180 tp!433315)))

(declare-fun setIsEmpty!9182 () Bool)

(declare-fun setRes!9182 () Bool)

(assert (=> setIsEmpty!9182 setRes!9182))

(declare-fun e!968179 () Bool)

(assert (=> b!1513237 (= tp!432966 e!968179)))

(declare-fun tp!433318 () Bool)

(declare-fun setNonEmpty!9182 () Bool)

(declare-fun setElem!9182 () Context!1354)

(assert (=> setNonEmpty!9182 (= setRes!9182 (and tp!433318 (inv!21315 setElem!9182) e!968180))))

(declare-fun setRest!9182 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9182 (= (_2!8492 (h!21477 (t!139422 mapDefault!7013))) ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9182 true) setRest!9182))))

(declare-fun b!1513942 () Bool)

(declare-fun tp!433314 () Bool)

(declare-fun tp!433317 () Bool)

(declare-fun e!968181 () Bool)

(assert (=> b!1513942 (= e!968179 (and tp!433314 (inv!21315 (_2!8491 (_1!8492 (h!21477 (t!139422 mapDefault!7013))))) e!968181 tp_is_empty!7015 setRes!9182 tp!433317))))

(declare-fun condSetEmpty!9182 () Bool)

(assert (=> b!1513942 (= condSetEmpty!9182 (= (_2!8492 (h!21477 (t!139422 mapDefault!7013))) ((as const (Array Context!1354 Bool)) false)))))

(declare-fun b!1513943 () Bool)

(declare-fun tp!433316 () Bool)

(assert (=> b!1513943 (= e!968181 tp!433316)))

(assert (= b!1513942 b!1513943))

(assert (= (and b!1513942 condSetEmpty!9182) setIsEmpty!9182))

(assert (= (and b!1513942 (not condSetEmpty!9182)) setNonEmpty!9182))

(assert (= setNonEmpty!9182 b!1513941))

(assert (= (and b!1513237 ((_ is Cons!16076) (t!139422 mapDefault!7013))) b!1513942))

(declare-fun m!1778283 () Bool)

(assert (=> setNonEmpty!9182 m!1778283))

(declare-fun m!1778285 () Bool)

(assert (=> b!1513942 m!1778285))

(declare-fun b!1513944 () Bool)

(declare-fun e!968182 () Bool)

(declare-fun tp!433319 () Bool)

(declare-fun tp!433320 () Bool)

(assert (=> b!1513944 (= e!968182 (and tp!433319 tp!433320))))

(assert (=> b!1513263 (= tp!432991 e!968182)))

(assert (= (and b!1513263 ((_ is Cons!16073) (exprs!1177 (_2!8491 (_1!8492 (h!21477 (minValue!1736 (v!22886 (underlying!3167 (v!22887 (underlying!3168 (cache!1804 cacheDown!629)))))))))))) b!1513944))

(declare-fun condSetEmpty!9183 () Bool)

(assert (=> setNonEmpty!9121 (= condSetEmpty!9183 (= setRest!9121 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9183 () Bool)

(assert (=> setNonEmpty!9121 (= tp!432861 setRes!9183)))

(declare-fun setIsEmpty!9183 () Bool)

(assert (=> setIsEmpty!9183 setRes!9183))

(declare-fun tp!433321 () Bool)

(declare-fun setNonEmpty!9183 () Bool)

(declare-fun e!968183 () Bool)

(declare-fun setElem!9183 () Context!1354)

(assert (=> setNonEmpty!9183 (= setRes!9183 (and tp!433321 (inv!21315 setElem!9183) e!968183))))

(declare-fun setRest!9183 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9183 (= setRest!9121 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9183 true) setRest!9183))))

(declare-fun b!1513945 () Bool)

(declare-fun tp!433322 () Bool)

(assert (=> b!1513945 (= e!968183 tp!433322)))

(assert (= (and setNonEmpty!9121 condSetEmpty!9183) setIsEmpty!9183))

(assert (= (and setNonEmpty!9121 (not condSetEmpty!9183)) setNonEmpty!9183))

(assert (= setNonEmpty!9183 b!1513945))

(declare-fun m!1778287 () Bool)

(assert (=> setNonEmpty!9183 m!1778287))

(declare-fun condSetEmpty!9184 () Bool)

(assert (=> setNonEmpty!9131 (= condSetEmpty!9184 (= setRest!9131 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9184 () Bool)

(assert (=> setNonEmpty!9131 (= tp!432930 setRes!9184)))

(declare-fun setIsEmpty!9184 () Bool)

(assert (=> setIsEmpty!9184 setRes!9184))

(declare-fun setElem!9184 () Context!1354)

(declare-fun tp!433323 () Bool)

(declare-fun setNonEmpty!9184 () Bool)

(declare-fun e!968184 () Bool)

(assert (=> setNonEmpty!9184 (= setRes!9184 (and tp!433323 (inv!21315 setElem!9184) e!968184))))

(declare-fun setRest!9184 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9184 (= setRest!9131 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9184 true) setRest!9184))))

(declare-fun b!1513946 () Bool)

(declare-fun tp!433324 () Bool)

(assert (=> b!1513946 (= e!968184 tp!433324)))

(assert (= (and setNonEmpty!9131 condSetEmpty!9184) setIsEmpty!9184))

(assert (= (and setNonEmpty!9131 (not condSetEmpty!9184)) setNonEmpty!9184))

(assert (= setNonEmpty!9184 b!1513946))

(declare-fun m!1778289 () Bool)

(assert (=> setNonEmpty!9184 m!1778289))

(declare-fun condSetEmpty!9185 () Bool)

(assert (=> setNonEmpty!9110 (= condSetEmpty!9185 (= setRest!9111 ((as const (Array Context!1354 Bool)) false)))))

(declare-fun setRes!9185 () Bool)

(assert (=> setNonEmpty!9110 (= tp!432822 setRes!9185)))

(declare-fun setIsEmpty!9185 () Bool)

(assert (=> setIsEmpty!9185 setRes!9185))

(declare-fun e!968185 () Bool)

(declare-fun tp!433325 () Bool)

(declare-fun setElem!9185 () Context!1354)

(declare-fun setNonEmpty!9185 () Bool)

(assert (=> setNonEmpty!9185 (= setRes!9185 (and tp!433325 (inv!21315 setElem!9185) e!968185))))

(declare-fun setRest!9185 () (InoxSet Context!1354))

(assert (=> setNonEmpty!9185 (= setRest!9111 ((_ map or) (store ((as const (Array Context!1354 Bool)) false) setElem!9185 true) setRest!9185))))

(declare-fun b!1513947 () Bool)

(declare-fun tp!433326 () Bool)

(assert (=> b!1513947 (= e!968185 tp!433326)))

(assert (= (and setNonEmpty!9110 condSetEmpty!9185) setIsEmpty!9185))

(assert (= (and setNonEmpty!9110 (not condSetEmpty!9185)) setNonEmpty!9185))

(assert (= setNonEmpty!9185 b!1513947))

(declare-fun m!1778291 () Bool)

(assert (=> setNonEmpty!9185 m!1778291))

(check-sat (not b!1513589) (not b!1513651) (not b!1513888) (not d!448263) (not b_next!39959) (not b!1513735) (not bm!100378) (not b!1513781) (not d!448173) b_and!105291 (not d!448111) (not b!1513405) (not d!448269) (not d!448271) (not b!1513830) (not d!448137) (not d!448253) (not b!1513723) (not b!1513924) (not b!1513765) (not b!1513776) (not d!448247) (not b!1513738) (not b!1513420) (not b!1513709) (not b!1513430) (not b!1513880) (not setNonEmpty!9172) (not b!1513278) (not b!1513902) (not b!1513778) (not b!1513775) (not b!1513598) (not b!1513643) (not b!1513901) (not b!1513849) (not b!1513668) (not b!1513813) (not b!1513745) (not b!1513753) (not b!1513946) (not b!1513688) (not b!1513483) (not b_next!39965) (not b!1513770) (not b!1513846) (not b!1513664) (not b!1513942) (not b!1513792) (not b!1513596) (not d!448159) (not b!1513433) (not b!1513730) (not d!448093) (not b!1513945) (not b!1513786) (not b!1513832) (not d!448265) (not b!1513796) (not b!1513929) (not b!1513692) (not b!1513352) (not b!1513558) (not b!1513727) (not b!1513933) (not b!1513690) (not b!1513855) b_and!105273 (not b!1513397) (not b_next!39969) (not d!448267) (not b!1513185) (not b!1513943) (not b!1513882) b_and!105287 (not setNonEmpty!9156) (not b!1513782) (not setNonEmpty!9182) (not b!1513719) (not b!1513914) (not b!1513421) (not b!1513682) (not b!1513935) (not bm!100379) (not b!1513647) (not setNonEmpty!9149) (not setNonEmpty!9142) (not b!1513616) (not b!1513295) (not b!1513862) b_and!105285 (not b!1513736) (not setNonEmpty!9176) (not b!1513802) (not b!1513700) (not b!1513607) (not b!1513629) (not b!1513858) (not b!1513864) (not setNonEmpty!9155) (not d!448075) (not b!1513894) (not b!1513860) (not b!1513857) (not b!1513705) (not d!448215) (not b!1513867) (not b!1513670) (not b!1513890) (not d!448209) (not setNonEmpty!9180) (not setNonEmpty!9153) (not b_next!39953) (not b!1513757) (not b!1513737) (not d!448105) (not b!1513726) (not b!1513908) (not d!448229) (not d!448047) (not d!448067) (not d!448119) (not b!1513600) (not d!448139) (not d!448101) (not b!1513280) (not b!1513913) (not b!1513635) (not setNonEmpty!9174) (not b!1513758) (not d!448061) (not b!1513597) (not b!1513907) (not b!1513883) (not b!1513721) (not b!1513861) (not b_next!39951) (not b!1513893) (not b!1513898) (not d!448289) (not b!1513662) (not b_next!39975) (not b!1513681) (not b!1513940) (not b!1513708) (not d!448103) (not b!1513613) (not b!1513551) (not setNonEmpty!9161) (not b!1513395) (not b!1513471) (not d!448107) (not d!448073) (not b!1513720) (not b!1513724) (not b!1513905) (not b!1513895) (not b!1513818) (not mapNonEmpty!7016) (not b!1513567) (not b!1513475) (not b!1513729) (not d!448243) (not setNonEmpty!9166) (not b!1513486) (not d!448161) (not b!1513543) (not b!1513897) (not b!1513825) (not b!1513915) (not b!1513801) (not b!1513824) (not setNonEmpty!9151) (not b!1513816) (not d!448069) (not b!1513701) (not b!1513798) (not b!1513789) (not d!448211) b_and!105269 (not setNonEmpty!9150) (not d!448157) (not d!448221) b_and!105267 (not b!1513351) (not d!448165) (not b!1513476) (not b!1513553) (not b!1513508) (not b!1513795) (not b!1513728) (not b!1513771) (not b!1513431) (not b!1513495) (not b!1513636) (not b!1513821) (not b!1513870) (not b!1513683) (not b_next!39971) (not b!1513678) (not b!1513760) (not b!1513481) (not b!1513435) (not d!448089) (not d!448245) (not b!1513856) (not b!1513851) (not b!1513264) (not d!448145) (not b!1513480) (not b!1513869) (not b!1513634) (not b!1513549) (not setNonEmpty!9171) (not d!448151) (not b!1513850) (not b!1513934) (not b!1513923) (not b!1513451) (not b!1513509) (not b!1513829) (not b!1513925) (not b!1513603) (not setNonEmpty!9177) (not b!1513633) (not b!1513876) (not b!1513527) (not setNonEmpty!9145) (not b!1513803) (not b!1513823) (not d!448179) (not b!1513452) (not b!1513695) (not d!448259) (not d!448097) (not b!1513756) (not d!448199) (not b!1513859) (not b!1513594) (not b!1513655) (not b!1513656) (not d!448127) (not b!1513790) (not b!1513810) (not b!1513936) (not b!1513748) (not b!1513281) (not d!448153) (not d!448281) (not b!1513702) (not bm!100366) (not b!1513673) (not b!1513780) (not b!1513944) (not b_next!39973) (not b!1513345) (not b!1513903) (not b!1513648) (not mapNonEmpty!7014) (not b!1513542) (not b!1513938) (not b!1513424) (not b!1513755) (not d!448099) (not b!1513926) (not d!448235) (not b!1513866) (not b!1513313) (not b!1513604) (not setNonEmpty!9159) (not b!1513689) (not setNonEmpty!9144) (not b!1513941) (not d!448181) (not d!448113) (not b!1513348) (not b!1513680) (not d!448203) (not b!1513718) (not d!448135) (not b!1513588) (not b!1513787) (not b!1513437) (not d!448167) (not b!1513805) (not d!448225) (not d!448091) (not b!1513346) (not b!1513747) (not b!1513844) (not d!448109) (not b!1513492) (not b!1513642) (not b!1513906) (not b!1513536) (not setNonEmpty!9175) (not b!1513602) (not b!1513863) (not b!1513349) (not b!1513524) (not b!1513928) (not b!1513477) (not b!1513746) (not b!1513528) (not b!1513645) (not b!1513691) (not b!1513717) (not d!448057) (not b!1513219) (not b!1513493) (not b!1513761) (not d!448065) b_and!105283 (not b!1513610) (not b!1513773) (not b!1513797) (not b!1513911) (not d!448087) (not b!1513759) (not setNonEmpty!9154) (not b!1513764) (not b!1513632) (not b!1513820) (not b!1513544) (not b_next!39955) (not b!1513794) (not b!1513743) b_and!105281 (not d!448207) (not b!1513831) (not b!1513714) (not b!1513565) (not bm!100331) (not bm!100372) (not b!1513853) (not b!1513874) (not b!1513785) (not b!1513783) (not b!1513556) (not d!448095) (not setNonEmpty!9143) (not b!1513699) (not d!448169) (not b!1513947) (not b!1513698) b_and!105279 (not b!1513490) (not b!1513685) (not d!448171) (not b!1513833) (not setNonEmpty!9167) (not setNonEmpty!9185) (not setNonEmpty!9162) (not d!448121) (not b!1513608) (not d!448195) (not b!1513886) (not b!1513205) (not setNonEmpty!9170) (not d!448261) (not b!1513637) (not b!1513350) (not b!1513311) (not b!1513804) (not b_next!39967) (not d!448123) (not b!1513784) (not b!1513887) (not b!1513399) (not b!1513910) (not b!1513327) (not b!1513809) (not b!1513896) (not setNonEmpty!9152) (not b!1513595) (not b!1513312) (not b!1513684) (not d!448125) (not setNonEmpty!9168) (not b!1513453) (not b!1513318) (not b!1513449) (not b!1513763) (not setNonEmpty!9148) (not b!1513434) (not b!1513891) (not b!1513916) (not b!1513494) (not b!1513922) (not b!1513713) (not bm!100373) (not b_next!39963) (not b!1513672) (not b!1513455) (not b!1513930) (not b!1513889) (not b!1513725) (not b!1513410) (not b!1513488) (not b!1513479) (not b!1513612) (not bm!100381) (not b!1513877) (not b!1513909) (not d!448219) b_and!105265 (not b!1513310) (not b!1513920) (not b!1513554) b_and!105271 (not setNonEmpty!9178) (not setNonEmpty!9179) (not b!1513617) (not b!1513772) (not d!448063) (not b!1513255) (not b!1513868) (not b!1513854) (not d!448059) (not b!1513800) (not b!1513812) (not setNonEmpty!9183) (not setNonEmpty!9164) (not d!448285) (not d!448227) (not b!1513873) (not b!1513491) (not b!1513892) tp_is_empty!7015 (not b!1513489) (not b!1513679) (not d!448081) (not b!1513793) (not b!1513460) (not d!448155) (not b!1513827) b_and!105289 (not b!1513828) (not b_next!39961) (not b!1513523) (not b!1513436) (not d!448275) (not d!448201) (not b!1513526) (not b!1513412) (not d!448283) (not d!448115) (not b!1513507) (not setNonEmpty!9184) (not b!1513814) (not b!1513884) (not b!1513900) (not b!1513294) (not bm!100367) (not b!1513919) (not d!448049) (not d!448117) (not b!1513478) (not b!1513918) b_and!105277 (not b!1513601) b_and!105275 (not setNonEmpty!9158) (not b!1513899) (not b!1513777) (not b!1513740) (not b!1513697) (not d!448279) (not b!1513744) (not d!448055) (not d!448071) (not b!1513885) (not b!1513879) (not b!1513865) (not b!1513741) (not b!1513525) (not b!1513806) (not setNonEmpty!9157) (not b!1513817) (not b_next!39957) (not setNonEmpty!9181) (not b!1513630) (not setNonEmpty!9163) (not b!1513706) (not b!1513309) (not b!1513931) (not d!448147) (not b!1513811) (not b!1513791) (not b!1513799) (not b!1513912) (not b!1513458) (not d!448149) (not b!1513921) (not b!1513815) (not b!1513457) (not setNonEmpty!9160) (not b!1513593) (not b!1513939) (not b!1513878) (not b!1513788) (not b!1513283) (not b_next!39977) (not b!1513687) (not mapNonEmpty!7015) (not b!1513485) (not b!1513779) (not b!1513875) (not b!1513675) (not b!1513722) (not setNonEmpty!9173) (not b!1513472) (not b!1513881) (not b!1513917) (not bm!100377) (not setNonEmpty!9169) (not b!1513845) (not b!1513932) (not d!448217) (not b!1513819) (not b!1513927) (not b!1513808) (not b!1513739) (not b!1513308) (not b!1513652) (not d!448187) (not b!1513569) (not bm!100380) (not b!1513686) (not b!1513666) (not setNonEmpty!9165))
(check-sat (not b_next!39965) b_and!105285 (not b_next!39953) (not b_next!39951) (not b_next!39975) (not b_next!39971) (not b_next!39973) b_and!105283 b_and!105279 (not b_next!39967) (not b_next!39963) (not b_next!39957) (not b_next!39977) (not b_next!39959) b_and!105291 b_and!105273 (not b_next!39969) b_and!105287 b_and!105269 b_and!105267 (not b_next!39955) b_and!105281 b_and!105265 b_and!105271 b_and!105289 (not b_next!39961) b_and!105275 b_and!105277)
