; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!141310 () Bool)

(assert start!141310)

(declare-fun b!1514174 () Bool)

(declare-fun b_free!39291 () Bool)

(declare-fun b_next!39995 () Bool)

(assert (=> b!1514174 (= b_free!39291 (not b_next!39995))))

(declare-fun tp!433481 () Bool)

(declare-fun b_and!105309 () Bool)

(assert (=> b!1514174 (= tp!433481 b_and!105309)))

(declare-fun b!1514175 () Bool)

(declare-fun b_free!39293 () Bool)

(declare-fun b_next!39997 () Bool)

(assert (=> b!1514175 (= b_free!39293 (not b_next!39997))))

(declare-fun tp!433477 () Bool)

(declare-fun b_and!105311 () Bool)

(assert (=> b!1514175 (= tp!433477 b_and!105311)))

(declare-fun b!1514196 () Bool)

(declare-fun b_free!39295 () Bool)

(declare-fun b_next!39999 () Bool)

(assert (=> b!1514196 (= b_free!39295 (not b_next!39999))))

(declare-fun tp!433501 () Bool)

(declare-fun b_and!105313 () Bool)

(assert (=> b!1514196 (= tp!433501 b_and!105313)))

(declare-fun b!1514192 () Bool)

(declare-fun b_free!39297 () Bool)

(declare-fun b_next!40001 () Bool)

(assert (=> b!1514192 (= b_free!39297 (not b_next!40001))))

(declare-fun tp!433497 () Bool)

(declare-fun b_and!105315 () Bool)

(assert (=> b!1514192 (= tp!433497 b_and!105315)))

(declare-fun b_free!39299 () Bool)

(declare-fun b_next!40003 () Bool)

(assert (=> b!1514192 (= b_free!39299 (not b_next!40003))))

(declare-fun tp!433480 () Bool)

(declare-fun b_and!105317 () Bool)

(assert (=> b!1514192 (= tp!433480 b_and!105317)))

(declare-fun b!1514198 () Bool)

(declare-fun b_free!39301 () Bool)

(declare-fun b_next!40005 () Bool)

(assert (=> b!1514198 (= b_free!39301 (not b_next!40005))))

(declare-fun tp!433506 () Bool)

(declare-fun b_and!105319 () Bool)

(assert (=> b!1514198 (= tp!433506 b_and!105319)))

(declare-fun b!1514216 () Bool)

(declare-fun b_free!39303 () Bool)

(declare-fun b_next!40007 () Bool)

(assert (=> b!1514216 (= b_free!39303 (not b_next!40007))))

(declare-fun tp!433491 () Bool)

(declare-fun b_and!105321 () Bool)

(assert (=> b!1514216 (= tp!433491 b_and!105321)))

(declare-fun b!1514210 () Bool)

(declare-fun b_free!39305 () Bool)

(declare-fun b_next!40009 () Bool)

(assert (=> b!1514210 (= b_free!39305 (not b_next!40009))))

(declare-fun tp!433485 () Bool)

(declare-fun b_and!105323 () Bool)

(assert (=> b!1514210 (= tp!433485 b_and!105323)))

(declare-fun b!1514173 () Bool)

(declare-fun e!968414 () Bool)

(declare-datatypes ((C!8500 0))(
  ( (C!8501 (val!4822 Int)) )
))
(declare-datatypes ((List!16150 0))(
  ( (Nil!16082) (Cons!16082 (h!21483 C!8500) (t!139434 List!16150)) )
))
(declare-datatypes ((IArray!10889 0))(
  ( (IArray!10890 (innerList!5502 List!16150)) )
))
(declare-datatypes ((Conc!5442 0))(
  ( (Node!5442 (left!13369 Conc!5442) (right!13699 Conc!5442) (csize!11114 Int) (cheight!5653 Int)) (Leaf!8068 (xs!8225 IArray!10889) (csize!11115 Int)) (Empty!5442) )
))
(declare-datatypes ((BalanceConc!10826 0))(
  ( (BalanceConc!10827 (c!248118 Conc!5442)) )
))
(declare-fun totalInput!458 () BalanceConc!10826)

(declare-fun tp!433498 () Bool)

(declare-fun inv!21322 (Conc!5442) Bool)

(assert (=> b!1514173 (= e!968414 (and (inv!21322 (c!248118 totalInput!458)) tp!433498))))

(declare-fun e!968397 () Bool)

(declare-fun e!968415 () Bool)

(assert (=> b!1514174 (= e!968397 (and e!968415 tp!433481))))

(declare-fun e!968420 () Bool)

(declare-fun e!968419 () Bool)

(assert (=> b!1514175 (= e!968420 (and e!968419 tp!433477))))

(declare-fun b!1514176 () Bool)

(declare-fun e!968408 () Bool)

(declare-fun e!968406 () Bool)

(assert (=> b!1514176 (= e!968408 e!968406)))

(declare-fun mapNonEmpty!7032 () Bool)

(declare-fun mapRes!7032 () Bool)

(declare-fun tp!433493 () Bool)

(declare-fun tp!433495 () Bool)

(assert (=> mapNonEmpty!7032 (= mapRes!7032 (and tp!433493 tp!433495))))

(declare-datatypes ((Regex!4161 0))(
  ( (ElementMatch!4161 (c!248119 C!8500)) (Concat!7096 (regOne!8834 Regex!4161) (regTwo!8834 Regex!4161)) (EmptyExpr!4161) (Star!4161 (reg!4490 Regex!4161)) (EmptyLang!4161) (Union!4161 (regOne!8835 Regex!4161) (regTwo!8835 Regex!4161)) )
))
(declare-datatypes ((List!16151 0))(
  ( (Nil!16083) (Cons!16083 (h!21484 Regex!4161) (t!139435 List!16151)) )
))
(declare-datatypes ((Context!1358 0))(
  ( (Context!1359 (exprs!1179 List!16151)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple3!1364 0))(
  ( (tuple3!1365 (_1!8500 (InoxSet Context!1358)) (_2!8500 Int) (_3!1020 Int)) )
))
(declare-datatypes ((tuple2!14960 0))(
  ( (tuple2!14961 (_1!8501 tuple3!1364) (_2!8501 Int)) )
))
(declare-datatypes ((List!16152 0))(
  ( (Nil!16084) (Cons!16084 (h!21485 tuple2!14960) (t!139436 List!16152)) )
))
(declare-fun mapValue!7032 () List!16152)

(declare-fun mapRest!7034 () (Array (_ BitVec 32) List!16152))

(declare-fun mapKey!7033 () (_ BitVec 32))

(declare-datatypes ((array!5202 0))(
  ( (array!5203 (arr!2318 (Array (_ BitVec 32) List!16152)) (size!13007 (_ BitVec 32))) )
))
(declare-datatypes ((array!5204 0))(
  ( (array!5205 (arr!2319 (Array (_ BitVec 32) (_ BitVec 64))) (size!13008 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2964 0))(
  ( (LongMapFixedSize!2965 (defaultEntry!1842 Int) (mask!4651 (_ BitVec 32)) (extraKeys!1729 (_ BitVec 32)) (zeroValue!1739 List!16152) (minValue!1739 List!16152) (_size!3045 (_ BitVec 32)) (_keys!1776 array!5204) (_values!1761 array!5202) (_vacant!1543 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5813 0))(
  ( (Cell!5814 (v!22895 LongMapFixedSize!2964)) )
))
(declare-datatypes ((MutLongMap!1482 0))(
  ( (LongMap!1482 (underlying!3173 Cell!5813)) (MutLongMapExt!1481 (__x!10049 Int)) )
))
(declare-datatypes ((Cell!5815 0))(
  ( (Cell!5816 (v!22896 MutLongMap!1482)) )
))
(declare-datatypes ((Hashable!1426 0))(
  ( (HashableExt!1425 (__x!10050 Int)) )
))
(declare-datatypes ((MutableMap!1426 0))(
  ( (MutableMapExt!1425 (__x!10051 Int)) (HashMap!1426 (underlying!3174 Cell!5815) (hashF!3345 Hashable!1426) (_size!3046 (_ BitVec 32)) (defaultValue!1586 Int)) )
))
(declare-datatypes ((CacheFurthestNullable!274 0))(
  ( (CacheFurthestNullable!275 (cache!1807 MutableMap!1426) (totalInput!2299 BalanceConc!10826)) )
))
(declare-fun cacheFurthestNullable!64 () CacheFurthestNullable!274)

(assert (=> mapNonEmpty!7032 (= (arr!2318 (_values!1761 (v!22895 (underlying!3173 (v!22896 (underlying!3174 (cache!1807 cacheFurthestNullable!64))))))) (store mapRest!7034 mapKey!7033 mapValue!7032))))

(declare-fun b!1514177 () Bool)

(declare-fun res!681155 () Bool)

(declare-fun e!968424 () Bool)

(assert (=> b!1514177 (=> (not res!681155) (not e!968424))))

(declare-datatypes ((List!16153 0))(
  ( (Nil!16085) (Cons!16085 (h!21486 (_ BitVec 16)) (t!139437 List!16153)) )
))
(declare-datatypes ((TokenValue!2935 0))(
  ( (FloatLiteralValue!5870 (text!20990 List!16153)) (TokenValueExt!2934 (__x!10052 Int)) (Broken!14675 (value!90718 List!16153)) (Object!3002) (End!2935) (Def!2935) (Underscore!2935) (Match!2935) (Else!2935) (Error!2935) (Case!2935) (If!2935) (Extends!2935) (Abstract!2935) (Class!2935) (Val!2935) (DelimiterValue!5870 (del!2995 List!16153)) (KeywordValue!2941 (value!90719 List!16153)) (CommentValue!5870 (value!90720 List!16153)) (WhitespaceValue!5870 (value!90721 List!16153)) (IndentationValue!2935 (value!90722 List!16153)) (String!18938) (Int32!2935) (Broken!14676 (value!90723 List!16153)) (Boolean!2936) (Unit!25747) (OperatorValue!2938 (op!2995 List!16153)) (IdentifierValue!5870 (value!90724 List!16153)) (IdentifierValue!5871 (value!90725 List!16153)) (WhitespaceValue!5871 (value!90726 List!16153)) (True!5870) (False!5870) (Broken!14677 (value!90727 List!16153)) (Broken!14678 (value!90728 List!16153)) (True!5871) (RightBrace!2935) (RightBracket!2935) (Colon!2935) (Null!2935) (Comma!2935) (LeftBracket!2935) (False!5871) (LeftBrace!2935) (ImaginaryLiteralValue!2935 (text!20991 List!16153)) (StringLiteralValue!8805 (value!90729 List!16153)) (EOFValue!2935 (value!90730 List!16153)) (IdentValue!2935 (value!90731 List!16153)) (DelimiterValue!5871 (value!90732 List!16153)) (DedentValue!2935 (value!90733 List!16153)) (NewLineValue!2935 (value!90734 List!16153)) (IntegerValue!8805 (value!90735 (_ BitVec 32)) (text!20992 List!16153)) (IntegerValue!8806 (value!90736 Int) (text!20993 List!16153)) (Times!2935) (Or!2935) (Equal!2935) (Minus!2935) (Broken!14679 (value!90737 List!16153)) (And!2935) (Div!2935) (LessEqual!2935) (Mod!2935) (Concat!7097) (Not!2935) (Plus!2935) (SpaceValue!2935 (value!90738 List!16153)) (IntegerValue!8807 (value!90739 Int) (text!20994 List!16153)) (StringLiteralValue!8806 (text!20995 List!16153)) (FloatLiteralValue!5871 (text!20996 List!16153)) (BytesLiteralValue!2935 (value!90740 List!16153)) (CommentValue!5871 (value!90741 List!16153)) (StringLiteralValue!8807 (value!90742 List!16153)) (ErrorTokenValue!2935 (msg!2996 List!16153)) )
))
(declare-datatypes ((String!18939 0))(
  ( (String!18940 (value!90743 String)) )
))
(declare-datatypes ((TokenValueInjection!5530 0))(
  ( (TokenValueInjection!5531 (toValue!4196 Int) (toChars!4055 Int)) )
))
(declare-datatypes ((Rule!5490 0))(
  ( (Rule!5491 (regex!2845 Regex!4161) (tag!3109 String!18939) (isSeparator!2845 Bool) (transformation!2845 TokenValueInjection!5530)) )
))
(declare-datatypes ((Token!5352 0))(
  ( (Token!5353 (value!90744 TokenValue!2935) (rule!4638 Rule!5490) (size!13009 Int) (originalCharacters!3707 List!16150)) )
))
(declare-datatypes ((List!16154 0))(
  ( (Nil!16086) (Cons!16086 (h!21487 Token!5352) (t!139438 List!16154)) )
))
(declare-datatypes ((IArray!10891 0))(
  ( (IArray!10892 (innerList!5503 List!16154)) )
))
(declare-datatypes ((Conc!5443 0))(
  ( (Node!5443 (left!13370 Conc!5443) (right!13700 Conc!5443) (csize!11116 Int) (cheight!5654 Int)) (Leaf!8069 (xs!8226 IArray!10891) (csize!11117 Int)) (Empty!5443) )
))
(declare-datatypes ((BalanceConc!10828 0))(
  ( (BalanceConc!10829 (c!248120 Conc!5443)) )
))
(declare-datatypes ((tuple2!14962 0))(
  ( (tuple2!14963 (_1!8502 BalanceConc!10828) (_2!8502 BalanceConc!10826)) )
))
(declare-fun lt!526430 () tuple2!14962)

(declare-fun lt!526416 () tuple2!14962)

(declare-fun list!6353 (BalanceConc!10826) List!16150)

(assert (=> b!1514177 (= res!681155 (= (list!6353 (_2!8502 lt!526430)) (list!6353 (_2!8502 lt!526416))))))

(declare-fun b!1514178 () Bool)

(declare-fun e!968407 () tuple2!14962)

(declare-fun input!1102 () BalanceConc!10826)

(assert (=> b!1514178 (= e!968407 (tuple2!14963 (BalanceConc!10829 Empty!5443) input!1102))))

(declare-fun b!1514179 () Bool)

(declare-fun e!968418 () Bool)

(assert (=> b!1514179 (= e!968418 e!968408)))

(declare-fun b!1514180 () Bool)

(declare-fun res!681148 () Bool)

(declare-fun e!968388 () Bool)

(assert (=> b!1514180 (=> (not res!681148) (not e!968388))))

(declare-datatypes ((LexerInterface!2497 0))(
  ( (LexerInterfaceExt!2494 (__x!10053 Int)) (Lexer!2495) )
))
(declare-fun thiss!13241 () LexerInterface!2497)

(declare-datatypes ((List!16155 0))(
  ( (Nil!16087) (Cons!16087 (h!21488 Rule!5490) (t!139439 List!16155)) )
))
(declare-fun rules!1640 () List!16155)

(declare-fun rulesInvariant!2271 (LexerInterface!2497 List!16155) Bool)

(assert (=> b!1514180 (= res!681148 (rulesInvariant!2271 thiss!13241 rules!1640))))

(declare-fun b!1514181 () Bool)

(declare-fun res!681145 () Bool)

(declare-fun e!968390 () Bool)

(assert (=> b!1514181 (=> (not res!681145) (not e!968390))))

(declare-fun lt!526420 () tuple2!14962)

(declare-fun isEmpty!9935 (List!16150) Bool)

(assert (=> b!1514181 (= res!681145 (isEmpty!9935 (list!6353 (_2!8502 lt!526420))))))

(declare-fun b!1514182 () Bool)

(declare-fun res!681146 () Bool)

(assert (=> b!1514182 (=> (not res!681146) (not e!968388))))

(declare-fun isEmpty!9936 (List!16155) Bool)

(assert (=> b!1514182 (= res!681146 (not (isEmpty!9936 rules!1640)))))

(declare-fun b!1514183 () Bool)

(declare-fun e!968410 () Bool)

(declare-fun e!968399 () Bool)

(assert (=> b!1514183 (= e!968410 e!968399)))

(declare-fun b!1514184 () Bool)

(declare-fun e!968417 () Bool)

(declare-fun e!968398 () Bool)

(assert (=> b!1514184 (= e!968417 e!968398)))

(declare-fun b!1514185 () Bool)

(declare-fun e!968391 () Bool)

(declare-fun tp!433488 () Bool)

(assert (=> b!1514185 (= e!968391 (and (inv!21322 (c!248118 (totalInput!2299 cacheFurthestNullable!64))) tp!433488))))

(declare-fun b!1514186 () Bool)

(declare-fun e!968400 () Bool)

(declare-fun tp!433487 () Bool)

(assert (=> b!1514186 (= e!968400 (and tp!433487 mapRes!7032))))

(declare-fun condMapEmpty!7034 () Bool)

(declare-fun mapDefault!7032 () List!16152)

(assert (=> b!1514186 (= condMapEmpty!7034 (= (arr!2318 (_values!1761 (v!22895 (underlying!3173 (v!22896 (underlying!3174 (cache!1807 cacheFurthestNullable!64))))))) ((as const (Array (_ BitVec 32) List!16152)) mapDefault!7032)))))

(declare-fun mapIsEmpty!7032 () Bool)

(assert (=> mapIsEmpty!7032 mapRes!7032))

(declare-fun b!1514187 () Bool)

(declare-fun e!968392 () Bool)

(assert (=> b!1514187 (= e!968424 (not e!968392))))

(declare-fun res!681149 () Bool)

(assert (=> b!1514187 (=> res!681149 e!968392)))

(declare-fun lt!526429 () List!16150)

(declare-fun lt!526415 () List!16150)

(declare-fun isSuffix!302 (List!16150 List!16150) Bool)

(assert (=> b!1514187 (= res!681149 (not (isSuffix!302 lt!526429 lt!526415)))))

(declare-fun lt!526417 () List!16150)

(assert (=> b!1514187 (isSuffix!302 lt!526429 lt!526417)))

(declare-datatypes ((Unit!25748 0))(
  ( (Unit!25749) )
))
(declare-fun lt!526411 () Unit!25748)

(declare-fun lt!526425 () List!16150)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!280 (List!16150 List!16150) Unit!25748)

(assert (=> b!1514187 (= lt!526411 (lemmaConcatTwoListThenFSndIsSuffix!280 lt!526425 lt!526429))))

(declare-fun b!1514188 () Bool)

(declare-fun e!968409 () Bool)

(declare-fun e!968412 () Bool)

(declare-fun tp!433478 () Bool)

(assert (=> b!1514188 (= e!968409 (and e!968412 tp!433478))))

(declare-fun b!1514189 () Bool)

(declare-fun e!968411 () Bool)

(declare-fun tp!433503 () Bool)

(assert (=> b!1514189 (= e!968411 (and (inv!21322 (c!248118 input!1102)) tp!433503))))

(declare-fun b!1514190 () Bool)

(declare-fun e!968413 () Bool)

(declare-fun tp!433500 () Bool)

(declare-fun mapRes!7033 () Bool)

(assert (=> b!1514190 (= e!968413 (and tp!433500 mapRes!7033))))

(declare-fun condMapEmpty!7033 () Bool)

(declare-datatypes ((tuple3!1366 0))(
  ( (tuple3!1367 (_1!8503 Regex!4161) (_2!8503 Context!1358) (_3!1021 C!8500)) )
))
(declare-datatypes ((tuple2!14964 0))(
  ( (tuple2!14965 (_1!8504 tuple3!1366) (_2!8504 (InoxSet Context!1358))) )
))
(declare-datatypes ((List!16156 0))(
  ( (Nil!16088) (Cons!16088 (h!21489 tuple2!14964) (t!139440 List!16156)) )
))
(declare-datatypes ((array!5206 0))(
  ( (array!5207 (arr!2320 (Array (_ BitVec 32) List!16156)) (size!13010 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2966 0))(
  ( (LongMapFixedSize!2967 (defaultEntry!1843 Int) (mask!4652 (_ BitVec 32)) (extraKeys!1730 (_ BitVec 32)) (zeroValue!1740 List!16156) (minValue!1740 List!16156) (_size!3047 (_ BitVec 32)) (_keys!1777 array!5204) (_values!1762 array!5206) (_vacant!1544 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5817 0))(
  ( (Cell!5818 (v!22897 LongMapFixedSize!2966)) )
))
(declare-datatypes ((MutLongMap!1483 0))(
  ( (LongMap!1483 (underlying!3175 Cell!5817)) (MutLongMapExt!1482 (__x!10054 Int)) )
))
(declare-datatypes ((Cell!5819 0))(
  ( (Cell!5820 (v!22898 MutLongMap!1483)) )
))
(declare-datatypes ((Hashable!1427 0))(
  ( (HashableExt!1426 (__x!10055 Int)) )
))
(declare-datatypes ((MutableMap!1427 0))(
  ( (MutableMapExt!1426 (__x!10056 Int)) (HashMap!1427 (underlying!3176 Cell!5819) (hashF!3346 Hashable!1427) (_size!3048 (_ BitVec 32)) (defaultValue!1587 Int)) )
))
(declare-datatypes ((CacheDown!854 0))(
  ( (CacheDown!855 (cache!1808 MutableMap!1427)) )
))
(declare-fun cacheDown!629 () CacheDown!854)

(declare-fun mapDefault!7033 () List!16156)

(assert (=> b!1514190 (= condMapEmpty!7033 (= (arr!2320 (_values!1762 (v!22897 (underlying!3175 (v!22898 (underlying!3176 (cache!1808 cacheDown!629))))))) ((as const (Array (_ BitVec 32) List!16156)) mapDefault!7033)))))

(declare-fun b!1514191 () Bool)

(declare-fun e!968423 () Bool)

(declare-fun e!968395 () Bool)

(declare-datatypes ((tuple2!14966 0))(
  ( (tuple2!14967 (_1!8505 Context!1358) (_2!8505 C!8500)) )
))
(declare-datatypes ((tuple2!14968 0))(
  ( (tuple2!14969 (_1!8506 tuple2!14966) (_2!8506 (InoxSet Context!1358))) )
))
(declare-datatypes ((List!16157 0))(
  ( (Nil!16089) (Cons!16089 (h!21490 tuple2!14968) (t!139441 List!16157)) )
))
(declare-datatypes ((array!5208 0))(
  ( (array!5209 (arr!2321 (Array (_ BitVec 32) List!16157)) (size!13011 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2968 0))(
  ( (LongMapFixedSize!2969 (defaultEntry!1844 Int) (mask!4653 (_ BitVec 32)) (extraKeys!1731 (_ BitVec 32)) (zeroValue!1741 List!16157) (minValue!1741 List!16157) (_size!3049 (_ BitVec 32)) (_keys!1778 array!5204) (_values!1763 array!5208) (_vacant!1545 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!5821 0))(
  ( (Cell!5822 (v!22899 LongMapFixedSize!2968)) )
))
(declare-datatypes ((MutLongMap!1484 0))(
  ( (LongMap!1484 (underlying!3177 Cell!5821)) (MutLongMapExt!1483 (__x!10057 Int)) )
))
(declare-fun lt!526426 () MutLongMap!1484)

(get-info :version)

(assert (=> b!1514191 (= e!968423 (and e!968395 ((_ is LongMap!1484) lt!526426)))))

(declare-datatypes ((Hashable!1428 0))(
  ( (HashableExt!1427 (__x!10058 Int)) )
))
(declare-datatypes ((Cell!5823 0))(
  ( (Cell!5824 (v!22900 MutLongMap!1484)) )
))
(declare-datatypes ((MutableMap!1428 0))(
  ( (MutableMapExt!1427 (__x!10059 Int)) (HashMap!1428 (underlying!3178 Cell!5823) (hashF!3347 Hashable!1428) (_size!3050 (_ BitVec 32)) (defaultValue!1588 Int)) )
))
(declare-datatypes ((CacheUp!852 0))(
  ( (CacheUp!853 (cache!1809 MutableMap!1428)) )
))
(declare-fun cacheUp!616 () CacheUp!852)

(assert (=> b!1514191 (= lt!526426 (v!22900 (underlying!3178 (cache!1809 cacheUp!616))))))

(declare-fun e!968401 () Bool)

(assert (=> b!1514192 (= e!968401 (and tp!433497 tp!433480))))

(declare-fun mapIsEmpty!7033 () Bool)

(assert (=> mapIsEmpty!7033 mapRes!7033))

(declare-fun b!1514193 () Bool)

(declare-fun res!681151 () Bool)

(assert (=> b!1514193 (=> (not res!681151) (not e!968424))))

(assert (=> b!1514193 (= res!681151 (= (totalInput!2299 cacheFurthestNullable!64) totalInput!458))))

(declare-fun b!1514194 () Bool)

(declare-fun e!968425 () Bool)

(declare-fun treated!70 () BalanceConc!10826)

(declare-fun tp!433505 () Bool)

(assert (=> b!1514194 (= e!968425 (and (inv!21322 (c!248118 treated!70)) tp!433505))))

(declare-fun b!1514195 () Bool)

(declare-fun res!681154 () Bool)

(assert (=> b!1514195 (=> (not res!681154) (not e!968424))))

(declare-fun valid!1185 (CacheFurthestNullable!274) Bool)

(assert (=> b!1514195 (= res!681154 (valid!1185 cacheFurthestNullable!64))))

(declare-fun e!968416 () Bool)

(assert (=> b!1514196 (= e!968416 (and e!968423 tp!433501))))

(declare-fun b!1514197 () Bool)

(declare-fun e!968386 () Bool)

(assert (=> b!1514197 (= e!968388 e!968386)))

(declare-fun res!681147 () Bool)

(assert (=> b!1514197 (=> (not res!681147) (not e!968386))))

(assert (=> b!1514197 (= res!681147 (= lt!526415 lt!526417))))

(declare-fun ++!4361 (List!16150 List!16150) List!16150)

(assert (=> b!1514197 (= lt!526417 (++!4361 lt!526425 lt!526429))))

(assert (=> b!1514197 (= lt!526415 (list!6353 totalInput!458))))

(assert (=> b!1514197 (= lt!526429 (list!6353 input!1102))))

(assert (=> b!1514197 (= lt!526425 (list!6353 treated!70))))

(declare-fun tp!433490 () Bool)

(declare-fun e!968393 () Bool)

(declare-fun tp!433502 () Bool)

(declare-fun array_inv!1673 (array!5204) Bool)

(declare-fun array_inv!1674 (array!5208) Bool)

(assert (=> b!1514198 (= e!968399 (and tp!433506 tp!433502 tp!433490 (array_inv!1673 (_keys!1778 (v!22899 (underlying!3177 (v!22900 (underlying!3178 (cache!1809 cacheUp!616))))))) (array_inv!1674 (_values!1763 (v!22899 (underlying!3177 (v!22900 (underlying!3178 (cache!1809 cacheUp!616))))))) e!968393))))

(declare-fun b!1514199 () Bool)

(declare-fun e!968403 () Bool)

(assert (=> b!1514199 (= e!968398 e!968403)))

(declare-fun b!1514200 () Bool)

(declare-fun res!681150 () Bool)

(assert (=> b!1514200 (=> (not res!681150) (not e!968424))))

(declare-fun valid!1186 (CacheUp!852) Bool)

(assert (=> b!1514200 (= res!681150 (valid!1186 cacheUp!616))))

(declare-fun mapNonEmpty!7033 () Bool)

(declare-fun tp!433486 () Bool)

(declare-fun tp!433499 () Bool)

(assert (=> mapNonEmpty!7033 (= mapRes!7033 (and tp!433486 tp!433499))))

(declare-fun mapKey!7032 () (_ BitVec 32))

(declare-fun mapValue!7034 () List!16156)

(declare-fun mapRest!7033 () (Array (_ BitVec 32) List!16156))

(assert (=> mapNonEmpty!7033 (= (arr!2320 (_values!1762 (v!22897 (underlying!3175 (v!22898 (underlying!3176 (cache!1808 cacheDown!629))))))) (store mapRest!7033 mapKey!7032 mapValue!7034))))

(declare-fun b!1514201 () Bool)

(declare-fun lt!526423 () tuple2!14962)

(declare-datatypes ((tuple2!14970 0))(
  ( (tuple2!14971 (_1!8507 Token!5352) (_2!8507 BalanceConc!10826)) )
))
(declare-datatypes ((Option!2932 0))(
  ( (None!2931) (Some!2931 (v!22901 tuple2!14970)) )
))
(declare-fun lt!526422 () Option!2932)

(declare-fun prepend!467 (BalanceConc!10828 Token!5352) BalanceConc!10828)

(assert (=> b!1514201 (= e!968407 (tuple2!14963 (prepend!467 (_1!8502 lt!526423) (_1!8507 (v!22901 lt!526422))) (_2!8502 lt!526423)))))

(declare-fun lexRec!332 (LexerInterface!2497 List!16155 BalanceConc!10826) tuple2!14962)

(assert (=> b!1514201 (= lt!526423 (lexRec!332 thiss!13241 rules!1640 (_2!8507 (v!22901 lt!526422))))))

(declare-fun mapNonEmpty!7034 () Bool)

(declare-fun mapRes!7034 () Bool)

(declare-fun tp!433504 () Bool)

(declare-fun tp!433484 () Bool)

(assert (=> mapNonEmpty!7034 (= mapRes!7034 (and tp!433504 tp!433484))))

(declare-fun mapRest!7032 () (Array (_ BitVec 32) List!16157))

(declare-fun mapValue!7033 () List!16157)

(declare-fun mapKey!7034 () (_ BitVec 32))

(assert (=> mapNonEmpty!7034 (= (arr!2321 (_values!1763 (v!22899 (underlying!3177 (v!22900 (underlying!3178 (cache!1809 cacheUp!616))))))) (store mapRest!7032 mapKey!7034 mapValue!7033))))

(declare-fun e!968394 () Bool)

(declare-fun b!1514202 () Bool)

(declare-fun inv!21323 (BalanceConc!10826) Bool)

(assert (=> b!1514202 (= e!968394 (and e!968420 (inv!21323 (totalInput!2299 cacheFurthestNullable!64)) e!968391))))

(declare-fun b!1514203 () Bool)

(declare-fun tp!433489 () Bool)

(assert (=> b!1514203 (= e!968393 (and tp!433489 mapRes!7034))))

(declare-fun condMapEmpty!7032 () Bool)

(declare-fun mapDefault!7034 () List!16157)

(assert (=> b!1514203 (= condMapEmpty!7032 (= (arr!2321 (_values!1763 (v!22899 (underlying!3177 (v!22900 (underlying!3178 (cache!1809 cacheUp!616))))))) ((as const (Array (_ BitVec 32) List!16157)) mapDefault!7034)))))

(declare-fun b!1514204 () Bool)

(assert (=> b!1514204 (= e!968386 e!968390)))

(declare-fun res!681156 () Bool)

(assert (=> b!1514204 (=> (not res!681156) (not e!968390))))

(declare-fun lt!526427 () List!16154)

(declare-fun lt!526421 () List!16154)

(assert (=> b!1514204 (= res!681156 (= lt!526427 lt!526421))))

(declare-fun acc!392 () BalanceConc!10828)

(declare-fun list!6354 (BalanceConc!10828) List!16154)

(assert (=> b!1514204 (= lt!526421 (list!6354 acc!392))))

(assert (=> b!1514204 (= lt!526427 (list!6354 (_1!8502 lt!526420)))))

(assert (=> b!1514204 (= lt!526420 (lexRec!332 thiss!13241 rules!1640 treated!70))))

(declare-fun b!1514205 () Bool)

(declare-fun e!968421 () Bool)

(declare-fun tp!433492 () Bool)

(declare-fun inv!21324 (Conc!5443) Bool)

(assert (=> b!1514205 (= e!968421 (and (inv!21324 (c!248120 acc!392)) tp!433492))))

(declare-fun b!1514206 () Bool)

(declare-fun res!681144 () Bool)

(assert (=> b!1514206 (=> (not res!681144) (not e!968424))))

(declare-fun valid!1187 (CacheDown!854) Bool)

(assert (=> b!1514206 (= res!681144 (valid!1187 cacheDown!629))))

(declare-fun b!1514207 () Bool)

(declare-fun tp!433494 () Bool)

(declare-fun inv!21321 (String!18939) Bool)

(declare-fun inv!21325 (TokenValueInjection!5530) Bool)

(assert (=> b!1514207 (= e!968412 (and tp!433494 (inv!21321 (tag!3109 (h!21488 rules!1640))) (inv!21325 (transformation!2845 (h!21488 rules!1640))) e!968401))))

(declare-fun b!1514208 () Bool)

(declare-fun e!968402 () Bool)

(assert (=> b!1514208 (= e!968402 e!968397)))

(declare-fun b!1514209 () Bool)

(assert (=> b!1514209 (= e!968390 e!968424)))

(declare-fun res!681157 () Bool)

(assert (=> b!1514209 (=> (not res!681157) (not e!968424))))

(declare-fun ++!4362 (BalanceConc!10828 BalanceConc!10828) BalanceConc!10828)

(assert (=> b!1514209 (= res!681157 (= (list!6354 (_1!8502 lt!526430)) (list!6354 (++!4362 acc!392 (_1!8502 lt!526416)))))))

(assert (=> b!1514209 (= lt!526416 (lexRec!332 thiss!13241 rules!1640 input!1102))))

(assert (=> b!1514209 (= lt!526430 (lexRec!332 thiss!13241 rules!1640 totalInput!458))))

(declare-fun tp!433479 () Bool)

(declare-fun tp!433496 () Bool)

(declare-fun array_inv!1675 (array!5206) Bool)

(assert (=> b!1514210 (= e!968406 (and tp!433485 tp!433479 tp!433496 (array_inv!1673 (_keys!1777 (v!22897 (underlying!3175 (v!22898 (underlying!3176 (cache!1808 cacheDown!629))))))) (array_inv!1675 (_values!1762 (v!22897 (underlying!3175 (v!22898 (underlying!3176 (cache!1808 cacheDown!629))))))) e!968413))))

(declare-fun b!1514211 () Bool)

(assert (=> b!1514211 (= e!968395 e!968410)))

(declare-fun b!1514212 () Bool)

(declare-fun lt!526432 () MutLongMap!1483)

(assert (=> b!1514212 (= e!968415 (and e!968418 ((_ is LongMap!1483) lt!526432)))))

(assert (=> b!1514212 (= lt!526432 (v!22898 (underlying!3176 (cache!1808 cacheDown!629))))))

(declare-fun b!1514213 () Bool)

(declare-fun e!968387 () Bool)

(assert (=> b!1514213 (= e!968387 e!968416)))

(declare-fun b!1514214 () Bool)

(declare-fun lt!526418 () MutLongMap!1482)

(assert (=> b!1514214 (= e!968419 (and e!968417 ((_ is LongMap!1482) lt!526418)))))

(assert (=> b!1514214 (= lt!526418 (v!22896 (underlying!3174 (cache!1807 cacheFurthestNullable!64))))))

(declare-fun b!1514215 () Bool)

(declare-fun e!968404 () Bool)

(assert (=> b!1514215 (= e!968404 true)))

(declare-fun lt!526431 () List!16150)

(declare-fun lt!526428 () tuple2!14962)

(assert (=> b!1514215 (= lt!526431 (list!6353 (_2!8502 lt!526428)))))

(declare-fun lt!526434 () List!16154)

(declare-datatypes ((tuple4!676 0))(
  ( (tuple4!677 (_1!8508 Option!2932) (_2!8508 CacheUp!852) (_3!1022 CacheDown!854) (_4!338 CacheFurthestNullable!274)) )
))
(declare-fun lt!526424 () tuple4!676)

(declare-fun append!502 (BalanceConc!10828 Token!5352) BalanceConc!10828)

(assert (=> b!1514215 (= lt!526434 (list!6354 (append!502 acc!392 (_1!8507 (v!22901 (_1!8508 lt!526424))))))))

(declare-fun lt!526419 () List!16154)

(declare-fun lt!526435 () List!16154)

(declare-fun ++!4363 (List!16154 List!16154) List!16154)

(assert (=> b!1514215 (= (++!4363 (++!4363 lt!526421 lt!526419) lt!526435) (++!4363 lt!526421 (++!4363 lt!526419 lt!526435)))))

(declare-fun lt!526413 () Unit!25748)

(declare-fun lemmaConcatAssociativity!942 (List!16154 List!16154 List!16154) Unit!25748)

(assert (=> b!1514215 (= lt!526413 (lemmaConcatAssociativity!942 lt!526421 lt!526419 lt!526435))))

(assert (=> b!1514215 (= lt!526435 (list!6354 (_1!8502 lt!526428)))))

(assert (=> b!1514215 (= lt!526419 (Cons!16086 (_1!8507 (v!22901 (_1!8508 lt!526424))) Nil!16086))))

(assert (=> b!1514215 (= lt!526416 e!968407)))

(declare-fun c!248117 () Bool)

(assert (=> b!1514215 (= c!248117 ((_ is Some!2931) lt!526422))))

(declare-fun maxPrefixZipperSequence!590 (LexerInterface!2497 List!16155 BalanceConc!10826) Option!2932)

(assert (=> b!1514215 (= lt!526422 (maxPrefixZipperSequence!590 thiss!13241 rules!1640 input!1102))))

(declare-fun lt!526412 () List!16150)

(declare-fun lt!526414 () List!16150)

(assert (=> b!1514215 (= (++!4361 (++!4361 lt!526425 lt!526412) lt!526414) (++!4361 lt!526425 (++!4361 lt!526412 lt!526414)))))

(declare-fun lt!526433 () Unit!25748)

(declare-fun lemmaConcatAssociativity!943 (List!16150 List!16150 List!16150) Unit!25748)

(assert (=> b!1514215 (= lt!526433 (lemmaConcatAssociativity!943 lt!526425 lt!526412 lt!526414))))

(assert (=> b!1514215 (= lt!526414 (list!6353 (_2!8507 (v!22901 (_1!8508 lt!526424)))))))

(declare-fun charsOf!1630 (Token!5352) BalanceConc!10826)

(assert (=> b!1514215 (= lt!526412 (list!6353 (charsOf!1630 (_1!8507 (v!22901 (_1!8508 lt!526424))))))))

(assert (=> b!1514215 (= lt!526428 (lexRec!332 thiss!13241 rules!1640 (_2!8507 (v!22901 (_1!8508 lt!526424)))))))

(declare-fun res!681152 () Bool)

(assert (=> start!141310 (=> (not res!681152) (not e!968388))))

(assert (=> start!141310 (= res!681152 ((_ is Lexer!2495) thiss!13241))))

(assert (=> start!141310 e!968388))

(declare-fun inv!21326 (BalanceConc!10828) Bool)

(assert (=> start!141310 (and (inv!21326 acc!392) e!968421)))

(declare-fun inv!21327 (CacheUp!852) Bool)

(assert (=> start!141310 (and (inv!21327 cacheUp!616) e!968387)))

(declare-fun inv!21328 (CacheDown!854) Bool)

(assert (=> start!141310 (and (inv!21328 cacheDown!629) e!968402)))

(assert (=> start!141310 (and (inv!21323 input!1102) e!968411)))

(assert (=> start!141310 (and (inv!21323 treated!70) e!968425)))

(assert (=> start!141310 true))

(assert (=> start!141310 e!968409))

(declare-fun inv!21329 (CacheFurthestNullable!274) Bool)

(assert (=> start!141310 (and (inv!21329 cacheFurthestNullable!64) e!968394)))

(assert (=> start!141310 (and (inv!21323 totalInput!458) e!968414)))

(declare-fun mapIsEmpty!7034 () Bool)

(assert (=> mapIsEmpty!7034 mapRes!7034))

(declare-fun tp!433482 () Bool)

(declare-fun tp!433483 () Bool)

(declare-fun array_inv!1676 (array!5202) Bool)

(assert (=> b!1514216 (= e!968403 (and tp!433491 tp!433483 tp!433482 (array_inv!1673 (_keys!1776 (v!22895 (underlying!3173 (v!22896 (underlying!3174 (cache!1807 cacheFurthestNullable!64))))))) (array_inv!1676 (_values!1761 (v!22895 (underlying!3173 (v!22896 (underlying!3174 (cache!1807 cacheFurthestNullable!64))))))) e!968400))))

(declare-fun b!1514217 () Bool)

(assert (=> b!1514217 (= e!968392 e!968404)))

(declare-fun res!681153 () Bool)

(assert (=> b!1514217 (=> res!681153 e!968404)))

(assert (=> b!1514217 (= res!681153 (not ((_ is Some!2931) (_1!8508 lt!526424))))))

(declare-fun maxPrefixZipperSequenceV3Mem!26 (LexerInterface!2497 List!16155 BalanceConc!10826 BalanceConc!10826 CacheUp!852 CacheDown!854 CacheFurthestNullable!274) tuple4!676)

(assert (=> b!1514217 (= lt!526424 (maxPrefixZipperSequenceV3Mem!26 thiss!13241 rules!1640 input!1102 totalInput!458 cacheUp!616 cacheDown!629 cacheFurthestNullable!64))))

(assert (= (and start!141310 res!681152) b!1514182))

(assert (= (and b!1514182 res!681146) b!1514180))

(assert (= (and b!1514180 res!681148) b!1514197))

(assert (= (and b!1514197 res!681147) b!1514204))

(assert (= (and b!1514204 res!681156) b!1514181))

(assert (= (and b!1514181 res!681145) b!1514209))

(assert (= (and b!1514209 res!681157) b!1514177))

(assert (= (and b!1514177 res!681155) b!1514200))

(assert (= (and b!1514200 res!681150) b!1514206))

(assert (= (and b!1514206 res!681144) b!1514195))

(assert (= (and b!1514195 res!681154) b!1514193))

(assert (= (and b!1514193 res!681151) b!1514187))

(assert (= (and b!1514187 (not res!681149)) b!1514217))

(assert (= (and b!1514217 (not res!681153)) b!1514215))

(assert (= (and b!1514215 c!248117) b!1514201))

(assert (= (and b!1514215 (not c!248117)) b!1514178))

(assert (= start!141310 b!1514205))

(assert (= (and b!1514203 condMapEmpty!7032) mapIsEmpty!7034))

(assert (= (and b!1514203 (not condMapEmpty!7032)) mapNonEmpty!7034))

(assert (= b!1514198 b!1514203))

(assert (= b!1514183 b!1514198))

(assert (= b!1514211 b!1514183))

(assert (= (and b!1514191 ((_ is LongMap!1484) (v!22900 (underlying!3178 (cache!1809 cacheUp!616))))) b!1514211))

(assert (= b!1514196 b!1514191))

(assert (= (and b!1514213 ((_ is HashMap!1428) (cache!1809 cacheUp!616))) b!1514196))

(assert (= start!141310 b!1514213))

(assert (= (and b!1514190 condMapEmpty!7033) mapIsEmpty!7033))

(assert (= (and b!1514190 (not condMapEmpty!7033)) mapNonEmpty!7033))

(assert (= b!1514210 b!1514190))

(assert (= b!1514176 b!1514210))

(assert (= b!1514179 b!1514176))

(assert (= (and b!1514212 ((_ is LongMap!1483) (v!22898 (underlying!3176 (cache!1808 cacheDown!629))))) b!1514179))

(assert (= b!1514174 b!1514212))

(assert (= (and b!1514208 ((_ is HashMap!1427) (cache!1808 cacheDown!629))) b!1514174))

(assert (= start!141310 b!1514208))

(assert (= start!141310 b!1514189))

(assert (= start!141310 b!1514194))

(assert (= b!1514207 b!1514192))

(assert (= b!1514188 b!1514207))

(assert (= (and start!141310 ((_ is Cons!16087) rules!1640)) b!1514188))

(assert (= (and b!1514186 condMapEmpty!7034) mapIsEmpty!7032))

(assert (= (and b!1514186 (not condMapEmpty!7034)) mapNonEmpty!7032))

(assert (= b!1514216 b!1514186))

(assert (= b!1514199 b!1514216))

(assert (= b!1514184 b!1514199))

(assert (= (and b!1514214 ((_ is LongMap!1482) (v!22896 (underlying!3174 (cache!1807 cacheFurthestNullable!64))))) b!1514184))

(assert (= b!1514175 b!1514214))

(assert (= (and b!1514202 ((_ is HashMap!1426) (cache!1807 cacheFurthestNullable!64))) b!1514175))

(assert (= b!1514202 b!1514185))

(assert (= start!141310 b!1514202))

(assert (= start!141310 b!1514173))

(declare-fun m!1778433 () Bool)

(assert (=> b!1514217 m!1778433))

(declare-fun m!1778435 () Bool)

(assert (=> b!1514201 m!1778435))

(declare-fun m!1778437 () Bool)

(assert (=> b!1514201 m!1778437))

(declare-fun m!1778439 () Bool)

(assert (=> b!1514215 m!1778439))

(declare-fun m!1778441 () Bool)

(assert (=> b!1514215 m!1778441))

(declare-fun m!1778443 () Bool)

(assert (=> b!1514215 m!1778443))

(declare-fun m!1778445 () Bool)

(assert (=> b!1514215 m!1778445))

(declare-fun m!1778447 () Bool)

(assert (=> b!1514215 m!1778447))

(declare-fun m!1778449 () Bool)

(assert (=> b!1514215 m!1778449))

(declare-fun m!1778451 () Bool)

(assert (=> b!1514215 m!1778451))

(declare-fun m!1778453 () Bool)

(assert (=> b!1514215 m!1778453))

(declare-fun m!1778455 () Bool)

(assert (=> b!1514215 m!1778455))

(declare-fun m!1778457 () Bool)

(assert (=> b!1514215 m!1778457))

(declare-fun m!1778459 () Bool)

(assert (=> b!1514215 m!1778459))

(declare-fun m!1778461 () Bool)

(assert (=> b!1514215 m!1778461))

(assert (=> b!1514215 m!1778453))

(declare-fun m!1778463 () Bool)

(assert (=> b!1514215 m!1778463))

(declare-fun m!1778465 () Bool)

(assert (=> b!1514215 m!1778465))

(assert (=> b!1514215 m!1778463))

(declare-fun m!1778467 () Bool)

(assert (=> b!1514215 m!1778467))

(declare-fun m!1778469 () Bool)

(assert (=> b!1514215 m!1778469))

(declare-fun m!1778471 () Bool)

(assert (=> b!1514215 m!1778471))

(declare-fun m!1778473 () Bool)

(assert (=> b!1514215 m!1778473))

(assert (=> b!1514215 m!1778457))

(assert (=> b!1514215 m!1778441))

(assert (=> b!1514215 m!1778473))

(declare-fun m!1778475 () Bool)

(assert (=> b!1514215 m!1778475))

(assert (=> b!1514215 m!1778467))

(declare-fun m!1778477 () Bool)

(assert (=> b!1514197 m!1778477))

(declare-fun m!1778479 () Bool)

(assert (=> b!1514197 m!1778479))

(declare-fun m!1778481 () Bool)

(assert (=> b!1514197 m!1778481))

(declare-fun m!1778483 () Bool)

(assert (=> b!1514197 m!1778483))

(declare-fun m!1778485 () Bool)

(assert (=> b!1514173 m!1778485))

(declare-fun m!1778487 () Bool)

(assert (=> b!1514181 m!1778487))

(assert (=> b!1514181 m!1778487))

(declare-fun m!1778489 () Bool)

(assert (=> b!1514181 m!1778489))

(declare-fun m!1778491 () Bool)

(assert (=> b!1514189 m!1778491))

(declare-fun m!1778493 () Bool)

(assert (=> b!1514216 m!1778493))

(declare-fun m!1778495 () Bool)

(assert (=> b!1514216 m!1778495))

(declare-fun m!1778497 () Bool)

(assert (=> b!1514204 m!1778497))

(declare-fun m!1778499 () Bool)

(assert (=> b!1514204 m!1778499))

(declare-fun m!1778501 () Bool)

(assert (=> b!1514204 m!1778501))

(declare-fun m!1778503 () Bool)

(assert (=> b!1514195 m!1778503))

(declare-fun m!1778505 () Bool)

(assert (=> start!141310 m!1778505))

(declare-fun m!1778507 () Bool)

(assert (=> start!141310 m!1778507))

(declare-fun m!1778509 () Bool)

(assert (=> start!141310 m!1778509))

(declare-fun m!1778511 () Bool)

(assert (=> start!141310 m!1778511))

(declare-fun m!1778513 () Bool)

(assert (=> start!141310 m!1778513))

(declare-fun m!1778515 () Bool)

(assert (=> start!141310 m!1778515))

(declare-fun m!1778517 () Bool)

(assert (=> start!141310 m!1778517))

(declare-fun m!1778519 () Bool)

(assert (=> b!1514182 m!1778519))

(declare-fun m!1778521 () Bool)

(assert (=> mapNonEmpty!7034 m!1778521))

(declare-fun m!1778523 () Bool)

(assert (=> b!1514194 m!1778523))

(declare-fun m!1778525 () Bool)

(assert (=> b!1514206 m!1778525))

(declare-fun m!1778527 () Bool)

(assert (=> b!1514200 m!1778527))

(declare-fun m!1778529 () Bool)

(assert (=> b!1514185 m!1778529))

(declare-fun m!1778531 () Bool)

(assert (=> b!1514202 m!1778531))

(declare-fun m!1778533 () Bool)

(assert (=> b!1514198 m!1778533))

(declare-fun m!1778535 () Bool)

(assert (=> b!1514198 m!1778535))

(declare-fun m!1778537 () Bool)

(assert (=> b!1514205 m!1778537))

(declare-fun m!1778539 () Bool)

(assert (=> b!1514187 m!1778539))

(declare-fun m!1778541 () Bool)

(assert (=> b!1514187 m!1778541))

(declare-fun m!1778543 () Bool)

(assert (=> b!1514187 m!1778543))

(declare-fun m!1778545 () Bool)

(assert (=> b!1514180 m!1778545))

(declare-fun m!1778547 () Bool)

(assert (=> b!1514177 m!1778547))

(declare-fun m!1778549 () Bool)

(assert (=> b!1514177 m!1778549))

(declare-fun m!1778551 () Bool)

(assert (=> b!1514210 m!1778551))

(declare-fun m!1778553 () Bool)

(assert (=> b!1514210 m!1778553))

(declare-fun m!1778555 () Bool)

(assert (=> b!1514207 m!1778555))

(declare-fun m!1778557 () Bool)

(assert (=> b!1514207 m!1778557))

(declare-fun m!1778559 () Bool)

(assert (=> b!1514209 m!1778559))

(declare-fun m!1778561 () Bool)

(assert (=> b!1514209 m!1778561))

(declare-fun m!1778563 () Bool)

(assert (=> b!1514209 m!1778563))

(declare-fun m!1778565 () Bool)

(assert (=> b!1514209 m!1778565))

(assert (=> b!1514209 m!1778559))

(declare-fun m!1778567 () Bool)

(assert (=> b!1514209 m!1778567))

(declare-fun m!1778569 () Bool)

(assert (=> mapNonEmpty!7032 m!1778569))

(declare-fun m!1778571 () Bool)

(assert (=> mapNonEmpty!7033 m!1778571))

(check-sat (not start!141310) b_and!105323 (not mapNonEmpty!7033) b_and!105315 (not b_next!40009) b_and!105313 (not b!1514206) (not b!1514185) (not b!1514194) (not b!1514204) (not b!1514203) (not b!1514173) (not b_next!40007) (not b!1514201) (not b!1514188) b_and!105311 (not b!1514207) (not b!1514215) (not b_next!40003) (not b!1514202) b_and!105319 (not b_next!39997) (not b_next!39999) (not b!1514186) (not b!1514197) (not b!1514182) (not b!1514210) (not b_next!40001) (not mapNonEmpty!7032) (not b!1514177) (not b_next!39995) (not b_next!40005) (not b!1514190) b_and!105309 (not b!1514187) (not b!1514189) b_and!105317 (not b!1514205) (not b!1514195) (not b!1514181) (not b!1514216) b_and!105321 (not mapNonEmpty!7034) (not b!1514180) (not b!1514200) (not b!1514198) (not b!1514209) (not b!1514217))
(check-sat (not b_next!40007) b_and!105323 b_and!105311 (not b_next!40003) b_and!105315 (not b_next!40009) b_and!105313 (not b_next!40001) (not b_next!39995) b_and!105317 b_and!105321 b_and!105319 (not b_next!39997) (not b_next!39999) (not b_next!40005) b_and!105309)
