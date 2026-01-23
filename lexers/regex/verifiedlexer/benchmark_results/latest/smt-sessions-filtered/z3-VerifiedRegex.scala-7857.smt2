; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411644 () Bool)

(assert start!411644)

(declare-fun b!4284651 () Bool)

(declare-fun b_free!126939 () Bool)

(declare-fun b_next!127643 () Bool)

(assert (=> b!4284651 (= b_free!126939 (not b_next!127643))))

(declare-fun tp!1311376 () Bool)

(declare-fun b_and!338141 () Bool)

(assert (=> b!4284651 (= tp!1311376 b_and!338141)))

(declare-fun b!4284631 () Bool)

(declare-fun b_free!126941 () Bool)

(declare-fun b_next!127645 () Bool)

(assert (=> b!4284631 (= b_free!126941 (not b_next!127645))))

(declare-fun tp!1311371 () Bool)

(declare-fun b_and!338143 () Bool)

(assert (=> b!4284631 (= tp!1311371 b_and!338143)))

(declare-fun b_free!126943 () Bool)

(declare-fun b_next!127647 () Bool)

(assert (=> b!4284631 (= b_free!126943 (not b_next!127647))))

(declare-fun tp!1311385 () Bool)

(declare-fun b_and!338145 () Bool)

(assert (=> b!4284631 (= tp!1311385 b_and!338145)))

(declare-fun b!4284634 () Bool)

(declare-fun b_free!126945 () Bool)

(declare-fun b_next!127649 () Bool)

(assert (=> b!4284634 (= b_free!126945 (not b_next!127649))))

(declare-fun tp!1311367 () Bool)

(declare-fun b_and!338147 () Bool)

(assert (=> b!4284634 (= tp!1311367 b_and!338147)))

(declare-fun b!4284661 () Bool)

(declare-fun b_free!126947 () Bool)

(declare-fun b_next!127651 () Bool)

(assert (=> b!4284661 (= b_free!126947 (not b_next!127651))))

(declare-fun tp!1311382 () Bool)

(declare-fun b_and!338149 () Bool)

(assert (=> b!4284661 (= tp!1311382 b_and!338149)))

(declare-fun b!4284644 () Bool)

(declare-fun b_free!126949 () Bool)

(declare-fun b_next!127653 () Bool)

(assert (=> b!4284644 (= b_free!126949 (not b_next!127653))))

(declare-fun tp!1311387 () Bool)

(declare-fun b_and!338151 () Bool)

(assert (=> b!4284644 (= tp!1311387 b_and!338151)))

(declare-fun b!4284632 () Bool)

(declare-fun b_free!126951 () Bool)

(declare-fun b_next!127655 () Bool)

(assert (=> b!4284632 (= b_free!126951 (not b_next!127655))))

(declare-fun tp!1311381 () Bool)

(declare-fun b_and!338153 () Bool)

(assert (=> b!4284632 (= tp!1311381 b_and!338153)))

(declare-fun b!4284658 () Bool)

(declare-fun b_free!126953 () Bool)

(declare-fun b_next!127657 () Bool)

(assert (=> b!4284658 (= b_free!126953 (not b_next!127657))))

(declare-fun tp!1311368 () Bool)

(declare-fun b_and!338155 () Bool)

(assert (=> b!4284658 (= tp!1311368 b_and!338155)))

(declare-fun res!1758065 () Bool)

(declare-fun e!2660469 () Bool)

(assert (=> start!411644 (=> (not res!1758065) (not e!2660469))))

(declare-datatypes ((LexerInterface!7598 0))(
  ( (LexerInterfaceExt!7595 (__x!28881 Int)) (Lexer!7596) )
))
(declare-fun thiss!16356 () LexerInterface!7598)

(get-info :version)

(assert (=> start!411644 (= res!1758065 ((_ is Lexer!7596) thiss!16356))))

(assert (=> start!411644 e!2660469))

(assert (=> start!411644 true))

(declare-fun e!2660451 () Bool)

(assert (=> start!411644 e!2660451))

(declare-datatypes ((C!26024 0))(
  ( (C!26025 (val!15338 Int)) )
))
(declare-datatypes ((List!47609 0))(
  ( (Nil!47485) (Cons!47485 (h!52905 C!26024) (t!354198 List!47609)) )
))
(declare-datatypes ((IArray!28773 0))(
  ( (IArray!28774 (innerList!14444 List!47609)) )
))
(declare-datatypes ((Conc!14356 0))(
  ( (Node!14356 (left!35341 Conc!14356) (right!35671 Conc!14356) (csize!28942 Int) (cheight!14567 Int)) (Leaf!22214 (xs!17662 IArray!28773) (csize!28943 Int)) (Empty!14356) )
))
(declare-datatypes ((BalanceConc!28202 0))(
  ( (BalanceConc!28203 (c!730041 Conc!14356)) )
))
(declare-fun input!1632 () BalanceConc!28202)

(declare-fun e!2660457 () Bool)

(declare-fun inv!62932 (BalanceConc!28202) Bool)

(assert (=> start!411644 (and (inv!62932 input!1632) e!2660457)))

(declare-datatypes ((Regex!12913 0))(
  ( (ElementMatch!12913 (c!730042 C!26024)) (Concat!21227 (regOne!26338 Regex!12913) (regTwo!26338 Regex!12913)) (EmptyExpr!12913) (Star!12913 (reg!13242 Regex!12913)) (EmptyLang!12913) (Union!12913 (regOne!26339 Regex!12913) (regTwo!26339 Regex!12913)) )
))
(declare-datatypes ((List!47610 0))(
  ( (Nil!47486) (Cons!47486 (h!52906 Regex!12913) (t!354199 List!47610)) )
))
(declare-datatypes ((Context!5606 0))(
  ( (Context!5607 (exprs!3303 List!47610)) )
))
(declare-datatypes ((Hashable!4204 0))(
  ( (HashableExt!4203 (__x!28882 Int)) )
))
(declare-datatypes ((tuple3!5350 0))(
  ( (tuple3!5351 (_1!25597 Regex!12913) (_2!25597 Context!5606) (_3!3152 C!26024)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44890 0))(
  ( (tuple2!44891 (_1!25598 tuple3!5350) (_2!25598 (InoxSet Context!5606))) )
))
(declare-datatypes ((List!47611 0))(
  ( (Nil!47487) (Cons!47487 (h!52907 tuple2!44890) (t!354200 List!47611)) )
))
(declare-datatypes ((array!15384 0))(
  ( (array!15385 (arr!6868 (Array (_ BitVec 32) List!47611)) (size!34802 (_ BitVec 32))) )
))
(declare-datatypes ((array!15386 0))(
  ( (array!15387 (arr!6869 (Array (_ BitVec 32) (_ BitVec 64))) (size!34803 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8576 0))(
  ( (LongMapFixedSize!8577 (defaultEntry!4673 Int) (mask!12714 (_ BitVec 32)) (extraKeys!4537 (_ BitVec 32)) (zeroValue!4547 List!47611) (minValue!4547 List!47611) (_size!8619 (_ BitVec 32)) (_keys!4588 array!15386) (_values!4569 array!15384) (_vacant!4349 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16961 0))(
  ( (Cell!16962 (v!41384 LongMapFixedSize!8576)) )
))
(declare-datatypes ((MutLongMap!4288 0))(
  ( (LongMap!4288 (underlying!8805 Cell!16961)) (MutLongMapExt!4287 (__x!28883 Int)) )
))
(declare-datatypes ((Cell!16963 0))(
  ( (Cell!16964 (v!41385 MutLongMap!4288)) )
))
(declare-datatypes ((MutableMap!4194 0))(
  ( (MutableMapExt!4193 (__x!28884 Int)) (HashMap!4194 (underlying!8806 Cell!16963) (hashF!6236 Hashable!4204) (_size!8620 (_ BitVec 32)) (defaultValue!4365 Int)) )
))
(declare-datatypes ((CacheDown!2858 0))(
  ( (CacheDown!2859 (cache!4334 MutableMap!4194)) )
))
(declare-fun cacheDown!738 () CacheDown!2858)

(declare-fun e!2660450 () Bool)

(declare-fun inv!62933 (CacheDown!2858) Bool)

(assert (=> start!411644 (and (inv!62933 cacheDown!738) e!2660450)))

(declare-datatypes ((Hashable!4205 0))(
  ( (HashableExt!4204 (__x!28885 Int)) )
))
(declare-datatypes ((tuple2!44892 0))(
  ( (tuple2!44893 (_1!25599 (InoxSet Context!5606)) (_2!25599 Int)) )
))
(declare-datatypes ((tuple2!44894 0))(
  ( (tuple2!44895 (_1!25600 tuple2!44892) (_2!25600 Int)) )
))
(declare-datatypes ((List!47612 0))(
  ( (Nil!47488) (Cons!47488 (h!52908 tuple2!44894) (t!354201 List!47612)) )
))
(declare-datatypes ((array!15388 0))(
  ( (array!15389 (arr!6870 (Array (_ BitVec 32) List!47612)) (size!34804 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8578 0))(
  ( (LongMapFixedSize!8579 (defaultEntry!4674 Int) (mask!12715 (_ BitVec 32)) (extraKeys!4538 (_ BitVec 32)) (zeroValue!4548 List!47612) (minValue!4548 List!47612) (_size!8621 (_ BitVec 32)) (_keys!4589 array!15386) (_values!4570 array!15388) (_vacant!4350 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16965 0))(
  ( (Cell!16966 (v!41386 LongMapFixedSize!8578)) )
))
(declare-datatypes ((MutLongMap!4289 0))(
  ( (LongMap!4289 (underlying!8807 Cell!16965)) (MutLongMapExt!4288 (__x!28886 Int)) )
))
(declare-datatypes ((Cell!16967 0))(
  ( (Cell!16968 (v!41387 MutLongMap!4289)) )
))
(declare-datatypes ((MutableMap!4195 0))(
  ( (MutableMapExt!4194 (__x!28887 Int)) (HashMap!4195 (underlying!8808 Cell!16967) (hashF!6237 Hashable!4205) (_size!8622 (_ BitVec 32)) (defaultValue!4366 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!400 0))(
  ( (CacheFindLongestMatch!401 (cache!4335 MutableMap!4195) (totalInput!4301 BalanceConc!28202)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!400)

(declare-fun e!2660466 () Bool)

(declare-fun inv!62934 (CacheFindLongestMatch!400) Bool)

(assert (=> start!411644 (and (inv!62934 cacheFindLongestMatch!156) e!2660466)))

(declare-fun totalInput!528 () BalanceConc!28202)

(declare-fun e!2660459 () Bool)

(assert (=> start!411644 (and (inv!62932 totalInput!528) e!2660459)))

(declare-datatypes ((tuple2!44896 0))(
  ( (tuple2!44897 (_1!25601 Context!5606) (_2!25601 C!26024)) )
))
(declare-datatypes ((tuple2!44898 0))(
  ( (tuple2!44899 (_1!25602 tuple2!44896) (_2!25602 (InoxSet Context!5606))) )
))
(declare-datatypes ((List!47613 0))(
  ( (Nil!47489) (Cons!47489 (h!52909 tuple2!44898) (t!354202 List!47613)) )
))
(declare-datatypes ((array!15390 0))(
  ( (array!15391 (arr!6871 (Array (_ BitVec 32) List!47613)) (size!34805 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8580 0))(
  ( (LongMapFixedSize!8581 (defaultEntry!4675 Int) (mask!12716 (_ BitVec 32)) (extraKeys!4539 (_ BitVec 32)) (zeroValue!4549 List!47613) (minValue!4549 List!47613) (_size!8623 (_ BitVec 32)) (_keys!4590 array!15386) (_values!4571 array!15390) (_vacant!4351 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16969 0))(
  ( (Cell!16970 (v!41388 LongMapFixedSize!8580)) )
))
(declare-datatypes ((MutLongMap!4290 0))(
  ( (LongMap!4290 (underlying!8809 Cell!16969)) (MutLongMapExt!4289 (__x!28888 Int)) )
))
(declare-datatypes ((Cell!16971 0))(
  ( (Cell!16972 (v!41389 MutLongMap!4290)) )
))
(declare-datatypes ((Hashable!4206 0))(
  ( (HashableExt!4205 (__x!28889 Int)) )
))
(declare-datatypes ((MutableMap!4196 0))(
  ( (MutableMapExt!4195 (__x!28890 Int)) (HashMap!4196 (underlying!8810 Cell!16971) (hashF!6238 Hashable!4206) (_size!8624 (_ BitVec 32)) (defaultValue!4367 Int)) )
))
(declare-datatypes ((CacheUp!2738 0))(
  ( (CacheUp!2739 (cache!4336 MutableMap!4196)) )
))
(declare-fun cacheUp!725 () CacheUp!2738)

(declare-fun e!2660470 () Bool)

(declare-fun inv!62935 (CacheUp!2738) Bool)

(assert (=> start!411644 (and (inv!62935 cacheUp!725) e!2660470)))

(declare-fun b!4284630 () Bool)

(declare-fun res!1758063 () Bool)

(assert (=> b!4284630 (=> (not res!1758063) (not e!2660469))))

(declare-fun isSuffix!1011 (List!47609 List!47609) Bool)

(declare-fun list!17323 (BalanceConc!28202) List!47609)

(assert (=> b!4284630 (= res!1758063 (isSuffix!1011 (list!17323 input!1632) (list!17323 totalInput!528)))))

(declare-fun e!2660471 () Bool)

(assert (=> b!4284631 (= e!2660471 (and tp!1311371 tp!1311385))))

(declare-fun e!2660449 () Bool)

(declare-fun e!2660474 () Bool)

(declare-fun tp!1311391 () Bool)

(declare-fun tp!1311383 () Bool)

(declare-fun array_inv!4920 (array!15386) Bool)

(declare-fun array_inv!4921 (array!15384) Bool)

(assert (=> b!4284632 (= e!2660449 (and tp!1311381 tp!1311391 tp!1311383 (array_inv!4920 (_keys!4588 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) (array_inv!4921 (_values!4569 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) e!2660474))))

(declare-fun b!4284633 () Bool)

(declare-fun e!2660460 () Bool)

(declare-fun e!2660445 () Bool)

(declare-fun lt!1515603 () MutLongMap!4289)

(assert (=> b!4284633 (= e!2660460 (and e!2660445 ((_ is LongMap!4289) lt!1515603)))))

(assert (=> b!4284633 (= lt!1515603 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))

(declare-fun mapNonEmpty!19398 () Bool)

(declare-fun mapRes!19399 () Bool)

(declare-fun tp!1311365 () Bool)

(declare-fun tp!1311390 () Bool)

(assert (=> mapNonEmpty!19398 (= mapRes!19399 (and tp!1311365 tp!1311390))))

(declare-fun mapValue!19398 () List!47613)

(declare-fun mapKey!19399 () (_ BitVec 32))

(declare-fun mapRest!19399 () (Array (_ BitVec 32) List!47613))

(assert (=> mapNonEmpty!19398 (= (arr!6871 (_values!4571 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) (store mapRest!19399 mapKey!19399 mapValue!19398))))

(declare-fun e!2660444 () Bool)

(declare-fun tp!1311389 () Bool)

(declare-fun e!2660452 () Bool)

(declare-fun tp!1311375 () Bool)

(declare-fun array_inv!4922 (array!15390) Bool)

(assert (=> b!4284634 (= e!2660444 (and tp!1311367 tp!1311389 tp!1311375 (array_inv!4920 (_keys!4590 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) (array_inv!4922 (_values!4571 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) e!2660452))))

(declare-fun b!4284635 () Bool)

(declare-fun e!2660467 () Bool)

(assert (=> b!4284635 (= e!2660467 e!2660449)))

(declare-fun b!4284636 () Bool)

(declare-fun e!2660443 () Bool)

(declare-fun e!2660446 () Bool)

(declare-fun lt!1515602 () MutLongMap!4290)

(assert (=> b!4284636 (= e!2660443 (and e!2660446 ((_ is LongMap!4290) lt!1515602)))))

(assert (=> b!4284636 (= lt!1515602 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))

(declare-fun b!4284637 () Bool)

(declare-fun res!1758066 () Bool)

(assert (=> b!4284637 (=> (not res!1758066) (not e!2660469))))

(declare-datatypes ((List!47614 0))(
  ( (Nil!47490) (Cons!47490 (h!52910 (_ BitVec 16)) (t!354203 List!47614)) )
))
(declare-datatypes ((TokenValue!8314 0))(
  ( (FloatLiteralValue!16628 (text!58643 List!47614)) (TokenValueExt!8313 (__x!28891 Int)) (Broken!41570 (value!250905 List!47614)) (Object!8437) (End!8314) (Def!8314) (Underscore!8314) (Match!8314) (Else!8314) (Error!8314) (Case!8314) (If!8314) (Extends!8314) (Abstract!8314) (Class!8314) (Val!8314) (DelimiterValue!16628 (del!8374 List!47614)) (KeywordValue!8320 (value!250906 List!47614)) (CommentValue!16628 (value!250907 List!47614)) (WhitespaceValue!16628 (value!250908 List!47614)) (IndentationValue!8314 (value!250909 List!47614)) (String!55567) (Int32!8314) (Broken!41571 (value!250910 List!47614)) (Boolean!8315) (Unit!66372) (OperatorValue!8317 (op!8374 List!47614)) (IdentifierValue!16628 (value!250911 List!47614)) (IdentifierValue!16629 (value!250912 List!47614)) (WhitespaceValue!16629 (value!250913 List!47614)) (True!16628) (False!16628) (Broken!41572 (value!250914 List!47614)) (Broken!41573 (value!250915 List!47614)) (True!16629) (RightBrace!8314) (RightBracket!8314) (Colon!8314) (Null!8314) (Comma!8314) (LeftBracket!8314) (False!16629) (LeftBrace!8314) (ImaginaryLiteralValue!8314 (text!58644 List!47614)) (StringLiteralValue!24942 (value!250916 List!47614)) (EOFValue!8314 (value!250917 List!47614)) (IdentValue!8314 (value!250918 List!47614)) (DelimiterValue!16629 (value!250919 List!47614)) (DedentValue!8314 (value!250920 List!47614)) (NewLineValue!8314 (value!250921 List!47614)) (IntegerValue!24942 (value!250922 (_ BitVec 32)) (text!58645 List!47614)) (IntegerValue!24943 (value!250923 Int) (text!58646 List!47614)) (Times!8314) (Or!8314) (Equal!8314) (Minus!8314) (Broken!41574 (value!250924 List!47614)) (And!8314) (Div!8314) (LessEqual!8314) (Mod!8314) (Concat!21228) (Not!8314) (Plus!8314) (SpaceValue!8314 (value!250925 List!47614)) (IntegerValue!24944 (value!250926 Int) (text!58647 List!47614)) (StringLiteralValue!24943 (text!58648 List!47614)) (FloatLiteralValue!16629 (text!58649 List!47614)) (BytesLiteralValue!8314 (value!250927 List!47614)) (CommentValue!16629 (value!250928 List!47614)) (StringLiteralValue!24944 (value!250929 List!47614)) (ErrorTokenValue!8314 (msg!8375 List!47614)) )
))
(declare-datatypes ((String!55568 0))(
  ( (String!55569 (value!250930 String)) )
))
(declare-datatypes ((TokenValueInjection!15936 0))(
  ( (TokenValueInjection!15937 (toValue!10855 Int) (toChars!10714 Int)) )
))
(declare-datatypes ((Rule!15808 0))(
  ( (Rule!15809 (regex!8004 Regex!12913) (tag!8868 String!55568) (isSeparator!8004 Bool) (transformation!8004 TokenValueInjection!15936)) )
))
(declare-fun rule!232 () Rule!15808)

(declare-fun ruleValid!3620 (LexerInterface!7598 Rule!15808) Bool)

(assert (=> b!4284637 (= res!1758066 (ruleValid!3620 thiss!16356 rule!232))))

(declare-fun mapIsEmpty!19398 () Bool)

(declare-fun mapRes!19400 () Bool)

(assert (=> mapIsEmpty!19398 mapRes!19400))

(declare-fun b!4284638 () Bool)

(declare-fun e!2660453 () Bool)

(assert (=> b!4284638 (= e!2660450 e!2660453)))

(declare-fun b!4284639 () Bool)

(declare-fun res!1758064 () Bool)

(assert (=> b!4284639 (=> (not res!1758064) (not e!2660469))))

(declare-fun valid!3330 (CacheDown!2858) Bool)

(assert (=> b!4284639 (= res!1758064 (valid!3330 cacheDown!738))))

(declare-fun mapNonEmpty!19399 () Bool)

(declare-fun tp!1311377 () Bool)

(declare-fun tp!1311379 () Bool)

(assert (=> mapNonEmpty!19399 (= mapRes!19400 (and tp!1311377 tp!1311379))))

(declare-fun mapRest!19400 () (Array (_ BitVec 32) List!47611))

(declare-fun mapKey!19400 () (_ BitVec 32))

(declare-fun mapValue!19399 () List!47611)

(assert (=> mapNonEmpty!19399 (= (arr!6868 (_values!4569 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) (store mapRest!19400 mapKey!19400 mapValue!19399))))

(declare-fun b!4284640 () Bool)

(declare-fun e!2660448 () Bool)

(declare-fun e!2660465 () Bool)

(assert (=> b!4284640 (= e!2660448 e!2660465)))

(declare-fun b!4284641 () Bool)

(declare-fun tp!1311372 () Bool)

(assert (=> b!4284641 (= e!2660474 (and tp!1311372 mapRes!19400))))

(declare-fun condMapEmpty!19399 () Bool)

(declare-fun mapDefault!19399 () List!47611)

(assert (=> b!4284641 (= condMapEmpty!19399 (= (arr!6868 (_values!4569 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47611)) mapDefault!19399)))))

(declare-fun b!4284642 () Bool)

(declare-fun tp!1311380 () Bool)

(assert (=> b!4284642 (= e!2660452 (and tp!1311380 mapRes!19399))))

(declare-fun condMapEmpty!19398 () Bool)

(declare-fun mapDefault!19400 () List!47613)

(assert (=> b!4284642 (= condMapEmpty!19398 (= (arr!6871 (_values!4571 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47613)) mapDefault!19400)))))

(declare-fun b!4284643 () Bool)

(declare-fun e!2660462 () Bool)

(assert (=> b!4284643 (= e!2660462 e!2660467)))

(declare-fun e!2660463 () Bool)

(assert (=> b!4284644 (= e!2660463 (and e!2660443 tp!1311387))))

(declare-fun b!4284645 () Bool)

(declare-fun e!2660447 () Bool)

(declare-fun tp!1311384 () Bool)

(declare-fun mapRes!19398 () Bool)

(assert (=> b!4284645 (= e!2660447 (and tp!1311384 mapRes!19398))))

(declare-fun condMapEmpty!19400 () Bool)

(declare-fun mapDefault!19398 () List!47612)

(assert (=> b!4284645 (= condMapEmpty!19400 (= (arr!6870 (_values!4570 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47612)) mapDefault!19398)))))

(declare-fun b!4284646 () Bool)

(declare-fun e!2660461 () Bool)

(assert (=> b!4284646 (= e!2660469 e!2660461)))

(declare-fun res!1758067 () Bool)

(assert (=> b!4284646 (=> (not res!1758067) (not e!2660461))))

(declare-datatypes ((tuple2!44900 0))(
  ( (tuple2!44901 (_1!25603 BalanceConc!28202) (_2!25603 BalanceConc!28202)) )
))
(declare-datatypes ((tuple4!954 0))(
  ( (tuple4!955 (_1!25604 tuple2!44900) (_2!25604 CacheUp!2738) (_3!3153 CacheDown!2858) (_4!477 CacheFindLongestMatch!400)) )
))
(declare-fun lt!1515600 () tuple4!954)

(declare-fun findLongestMatchWithZipperSequenceV2!120 (Regex!12913 BalanceConc!28202 BalanceConc!28202) tuple2!44900)

(assert (=> b!4284646 (= res!1758067 (= (_1!25604 lt!1515600) (findLongestMatchWithZipperSequenceV2!120 (regex!8004 rule!232) input!1632 totalInput!528)))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!43 (Regex!12913 BalanceConc!28202 BalanceConc!28202 CacheUp!2738 CacheDown!2858 CacheFindLongestMatch!400) tuple4!954)

(assert (=> b!4284646 (= lt!1515600 (findLongestMatchWithZipperSequenceV2Mem!43 (regex!8004 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun b!4284647 () Bool)

(declare-fun tp!1311388 () Bool)

(declare-fun inv!62936 (Conc!14356) Bool)

(assert (=> b!4284647 (= e!2660457 (and (inv!62936 (c!730041 input!1632)) tp!1311388))))

(declare-fun b!4284648 () Bool)

(declare-fun res!1758062 () Bool)

(assert (=> b!4284648 (=> (not res!1758062) (not e!2660469))))

(declare-fun valid!3331 (CacheUp!2738) Bool)

(assert (=> b!4284648 (= res!1758062 (valid!3331 cacheUp!725))))

(declare-fun b!4284649 () Bool)

(assert (=> b!4284649 (= e!2660445 e!2660448)))

(declare-fun e!2660455 () Bool)

(declare-fun e!2660464 () Bool)

(declare-fun b!4284650 () Bool)

(assert (=> b!4284650 (= e!2660466 (and e!2660455 (inv!62932 (totalInput!4301 cacheFindLongestMatch!156)) e!2660464))))

(assert (=> b!4284651 (= e!2660455 (and e!2660460 tp!1311376))))

(declare-fun b!4284652 () Bool)

(declare-fun e!2660454 () Bool)

(declare-fun lt!1515601 () MutLongMap!4288)

(assert (=> b!4284652 (= e!2660454 (and e!2660462 ((_ is LongMap!4288) lt!1515601)))))

(assert (=> b!4284652 (= lt!1515601 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))

(declare-fun b!4284653 () Bool)

(declare-fun validRegex!5839 (Regex!12913) Bool)

(assert (=> b!4284653 (= e!2660461 (not (validRegex!5839 (regex!8004 rule!232))))))

(declare-fun b!4284654 () Bool)

(declare-fun tp!1311373 () Bool)

(declare-fun inv!62925 (String!55568) Bool)

(declare-fun inv!62937 (TokenValueInjection!15936) Bool)

(assert (=> b!4284654 (= e!2660451 (and tp!1311373 (inv!62925 (tag!8868 rule!232)) (inv!62937 (transformation!8004 rule!232)) e!2660471))))

(declare-fun b!4284655 () Bool)

(assert (=> b!4284655 (= e!2660470 e!2660463)))

(declare-fun b!4284656 () Bool)

(declare-fun e!2660456 () Bool)

(assert (=> b!4284656 (= e!2660446 e!2660456)))

(declare-fun b!4284657 () Bool)

(declare-fun res!1758068 () Bool)

(assert (=> b!4284657 (=> (not res!1758068) (not e!2660469))))

(declare-fun valid!3332 (CacheFindLongestMatch!400) Bool)

(assert (=> b!4284657 (= res!1758068 (valid!3332 cacheFindLongestMatch!156))))

(assert (=> b!4284658 (= e!2660453 (and e!2660454 tp!1311368))))

(declare-fun mapNonEmpty!19400 () Bool)

(declare-fun tp!1311386 () Bool)

(declare-fun tp!1311369 () Bool)

(assert (=> mapNonEmpty!19400 (= mapRes!19398 (and tp!1311386 tp!1311369))))

(declare-fun mapKey!19398 () (_ BitVec 32))

(declare-fun mapValue!19400 () List!47612)

(declare-fun mapRest!19398 () (Array (_ BitVec 32) List!47612))

(assert (=> mapNonEmpty!19400 (= (arr!6870 (_values!4570 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) (store mapRest!19398 mapKey!19398 mapValue!19400))))

(declare-fun mapIsEmpty!19399 () Bool)

(assert (=> mapIsEmpty!19399 mapRes!19399))

(declare-fun b!4284659 () Bool)

(declare-fun tp!1311366 () Bool)

(assert (=> b!4284659 (= e!2660464 (and (inv!62936 (c!730041 (totalInput!4301 cacheFindLongestMatch!156))) tp!1311366))))

(declare-fun b!4284660 () Bool)

(declare-fun tp!1311374 () Bool)

(assert (=> b!4284660 (= e!2660459 (and (inv!62936 (c!730041 totalInput!528)) tp!1311374))))

(declare-fun tp!1311378 () Bool)

(declare-fun tp!1311370 () Bool)

(declare-fun array_inv!4923 (array!15388) Bool)

(assert (=> b!4284661 (= e!2660465 (and tp!1311382 tp!1311378 tp!1311370 (array_inv!4920 (_keys!4589 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) (array_inv!4923 (_values!4570 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) e!2660447))))

(declare-fun b!4284662 () Bool)

(declare-fun res!1758061 () Bool)

(assert (=> b!4284662 (=> (not res!1758061) (not e!2660469))))

(assert (=> b!4284662 (= res!1758061 (= (totalInput!4301 cacheFindLongestMatch!156) totalInput!528))))

(declare-fun mapIsEmpty!19400 () Bool)

(assert (=> mapIsEmpty!19400 mapRes!19398))

(declare-fun b!4284663 () Bool)

(declare-fun res!1758069 () Bool)

(assert (=> b!4284663 (=> (not res!1758069) (not e!2660461))))

(declare-fun isEmpty!28012 (BalanceConc!28202) Bool)

(assert (=> b!4284663 (= res!1758069 (not (isEmpty!28012 (_1!25603 (_1!25604 lt!1515600)))))))

(declare-fun b!4284664 () Bool)

(assert (=> b!4284664 (= e!2660456 e!2660444)))

(assert (= (and start!411644 res!1758065) b!4284637))

(assert (= (and b!4284637 res!1758066) b!4284648))

(assert (= (and b!4284648 res!1758062) b!4284639))

(assert (= (and b!4284639 res!1758064) b!4284657))

(assert (= (and b!4284657 res!1758068) b!4284630))

(assert (= (and b!4284630 res!1758063) b!4284662))

(assert (= (and b!4284662 res!1758061) b!4284646))

(assert (= (and b!4284646 res!1758067) b!4284663))

(assert (= (and b!4284663 res!1758069) b!4284653))

(assert (= b!4284654 b!4284631))

(assert (= start!411644 b!4284654))

(assert (= start!411644 b!4284647))

(assert (= (and b!4284641 condMapEmpty!19399) mapIsEmpty!19398))

(assert (= (and b!4284641 (not condMapEmpty!19399)) mapNonEmpty!19399))

(assert (= b!4284632 b!4284641))

(assert (= b!4284635 b!4284632))

(assert (= b!4284643 b!4284635))

(assert (= (and b!4284652 ((_ is LongMap!4288) (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))) b!4284643))

(assert (= b!4284658 b!4284652))

(assert (= (and b!4284638 ((_ is HashMap!4194) (cache!4334 cacheDown!738))) b!4284658))

(assert (= start!411644 b!4284638))

(assert (= (and b!4284645 condMapEmpty!19400) mapIsEmpty!19400))

(assert (= (and b!4284645 (not condMapEmpty!19400)) mapNonEmpty!19400))

(assert (= b!4284661 b!4284645))

(assert (= b!4284640 b!4284661))

(assert (= b!4284649 b!4284640))

(assert (= (and b!4284633 ((_ is LongMap!4289) (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))) b!4284649))

(assert (= b!4284651 b!4284633))

(assert (= (and b!4284650 ((_ is HashMap!4195) (cache!4335 cacheFindLongestMatch!156))) b!4284651))

(assert (= b!4284650 b!4284659))

(assert (= start!411644 b!4284650))

(assert (= start!411644 b!4284660))

(assert (= (and b!4284642 condMapEmpty!19398) mapIsEmpty!19399))

(assert (= (and b!4284642 (not condMapEmpty!19398)) mapNonEmpty!19398))

(assert (= b!4284634 b!4284642))

(assert (= b!4284664 b!4284634))

(assert (= b!4284656 b!4284664))

(assert (= (and b!4284636 ((_ is LongMap!4290) (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))) b!4284656))

(assert (= b!4284644 b!4284636))

(assert (= (and b!4284655 ((_ is HashMap!4196) (cache!4336 cacheUp!725))) b!4284644))

(assert (= start!411644 b!4284655))

(declare-fun m!4880761 () Bool)

(assert (=> b!4284659 m!4880761))

(declare-fun m!4880763 () Bool)

(assert (=> b!4284646 m!4880763))

(declare-fun m!4880765 () Bool)

(assert (=> b!4284646 m!4880765))

(declare-fun m!4880767 () Bool)

(assert (=> b!4284634 m!4880767))

(declare-fun m!4880769 () Bool)

(assert (=> b!4284634 m!4880769))

(declare-fun m!4880771 () Bool)

(assert (=> b!4284648 m!4880771))

(declare-fun m!4880773 () Bool)

(assert (=> b!4284663 m!4880773))

(declare-fun m!4880775 () Bool)

(assert (=> b!4284660 m!4880775))

(declare-fun m!4880777 () Bool)

(assert (=> b!4284657 m!4880777))

(declare-fun m!4880779 () Bool)

(assert (=> start!411644 m!4880779))

(declare-fun m!4880781 () Bool)

(assert (=> start!411644 m!4880781))

(declare-fun m!4880783 () Bool)

(assert (=> start!411644 m!4880783))

(declare-fun m!4880785 () Bool)

(assert (=> start!411644 m!4880785))

(declare-fun m!4880787 () Bool)

(assert (=> start!411644 m!4880787))

(declare-fun m!4880789 () Bool)

(assert (=> b!4284647 m!4880789))

(declare-fun m!4880791 () Bool)

(assert (=> b!4284632 m!4880791))

(declare-fun m!4880793 () Bool)

(assert (=> b!4284632 m!4880793))

(declare-fun m!4880795 () Bool)

(assert (=> b!4284639 m!4880795))

(declare-fun m!4880797 () Bool)

(assert (=> mapNonEmpty!19400 m!4880797))

(declare-fun m!4880799 () Bool)

(assert (=> b!4284630 m!4880799))

(declare-fun m!4880801 () Bool)

(assert (=> b!4284630 m!4880801))

(assert (=> b!4284630 m!4880799))

(assert (=> b!4284630 m!4880801))

(declare-fun m!4880803 () Bool)

(assert (=> b!4284630 m!4880803))

(declare-fun m!4880805 () Bool)

(assert (=> b!4284650 m!4880805))

(declare-fun m!4880807 () Bool)

(assert (=> b!4284654 m!4880807))

(declare-fun m!4880809 () Bool)

(assert (=> b!4284654 m!4880809))

(declare-fun m!4880811 () Bool)

(assert (=> b!4284661 m!4880811))

(declare-fun m!4880813 () Bool)

(assert (=> b!4284661 m!4880813))

(declare-fun m!4880815 () Bool)

(assert (=> b!4284653 m!4880815))

(declare-fun m!4880817 () Bool)

(assert (=> mapNonEmpty!19399 m!4880817))

(declare-fun m!4880819 () Bool)

(assert (=> mapNonEmpty!19398 m!4880819))

(declare-fun m!4880821 () Bool)

(assert (=> b!4284637 m!4880821))

(check-sat (not b!4284659) (not b!4284657) (not b!4284647) (not b!4284653) (not b!4284650) (not b!4284663) (not b!4284660) b_and!338155 (not b_next!127647) b_and!338141 (not b!4284654) (not b!4284632) (not b_next!127643) (not b!4284642) b_and!338151 (not b_next!127645) (not b!4284641) (not b!4284637) (not b!4284661) (not b_next!127651) (not mapNonEmpty!19399) b_and!338149 (not mapNonEmpty!19398) (not b_next!127655) (not b!4284639) b_and!338145 (not b!4284634) b_and!338147 (not b_next!127657) (not b!4284645) (not b!4284648) (not start!411644) (not mapNonEmpty!19400) (not b!4284630) (not b!4284646) (not b_next!127649) b_and!338153 (not b_next!127653) b_and!338143)
(check-sat (not b_next!127651) b_and!338155 (not b_next!127657) (not b_next!127647) b_and!338141 (not b_next!127649) (not b_next!127643) b_and!338151 (not b_next!127645) b_and!338149 (not b_next!127655) b_and!338145 b_and!338147 b_and!338153 (not b_next!127653) b_and!338143)
(get-model)

(declare-fun d!1265104 () Bool)

(declare-fun res!1758074 () Bool)

(declare-fun e!2660477 () Bool)

(assert (=> d!1265104 (=> (not res!1758074) (not e!2660477))))

(assert (=> d!1265104 (= res!1758074 ((_ is HashMap!4196) (cache!4336 cacheUp!725)))))

(assert (=> d!1265104 (= (inv!62935 cacheUp!725) e!2660477)))

(declare-fun b!4284667 () Bool)

(declare-fun validCacheMapUp!412 (MutableMap!4196) Bool)

(assert (=> b!4284667 (= e!2660477 (validCacheMapUp!412 (cache!4336 cacheUp!725)))))

(assert (= (and d!1265104 res!1758074) b!4284667))

(declare-fun m!4880823 () Bool)

(assert (=> b!4284667 m!4880823))

(assert (=> start!411644 d!1265104))

(declare-fun d!1265106 () Bool)

(declare-fun res!1758077 () Bool)

(declare-fun e!2660480 () Bool)

(assert (=> d!1265106 (=> (not res!1758077) (not e!2660480))))

(assert (=> d!1265106 (= res!1758077 ((_ is HashMap!4195) (cache!4335 cacheFindLongestMatch!156)))))

(assert (=> d!1265106 (= (inv!62934 cacheFindLongestMatch!156) e!2660480)))

(declare-fun b!4284670 () Bool)

(declare-fun validCacheMapFindLongestMatch!69 (MutableMap!4195 BalanceConc!28202) Bool)

(assert (=> b!4284670 (= e!2660480 (validCacheMapFindLongestMatch!69 (cache!4335 cacheFindLongestMatch!156) (totalInput!4301 cacheFindLongestMatch!156)))))

(assert (= (and d!1265106 res!1758077) b!4284670))

(declare-fun m!4880825 () Bool)

(assert (=> b!4284670 m!4880825))

(assert (=> start!411644 d!1265106))

(declare-fun d!1265108 () Bool)

(declare-fun res!1758080 () Bool)

(declare-fun e!2660483 () Bool)

(assert (=> d!1265108 (=> (not res!1758080) (not e!2660483))))

(assert (=> d!1265108 (= res!1758080 ((_ is HashMap!4194) (cache!4334 cacheDown!738)))))

(assert (=> d!1265108 (= (inv!62933 cacheDown!738) e!2660483)))

(declare-fun b!4284673 () Bool)

(declare-fun validCacheMapDown!443 (MutableMap!4194) Bool)

(assert (=> b!4284673 (= e!2660483 (validCacheMapDown!443 (cache!4334 cacheDown!738)))))

(assert (= (and d!1265108 res!1758080) b!4284673))

(declare-fun m!4880827 () Bool)

(assert (=> b!4284673 m!4880827))

(assert (=> start!411644 d!1265108))

(declare-fun d!1265110 () Bool)

(declare-fun isBalanced!3876 (Conc!14356) Bool)

(assert (=> d!1265110 (= (inv!62932 totalInput!528) (isBalanced!3876 (c!730041 totalInput!528)))))

(declare-fun bs!602806 () Bool)

(assert (= bs!602806 d!1265110))

(declare-fun m!4880829 () Bool)

(assert (=> bs!602806 m!4880829))

(assert (=> start!411644 d!1265110))

(declare-fun d!1265112 () Bool)

(assert (=> d!1265112 (= (inv!62932 input!1632) (isBalanced!3876 (c!730041 input!1632)))))

(declare-fun bs!602807 () Bool)

(assert (= bs!602807 d!1265112))

(declare-fun m!4880831 () Bool)

(assert (=> bs!602807 m!4880831))

(assert (=> start!411644 d!1265112))

(declare-fun d!1265114 () Bool)

(declare-fun c!730045 () Bool)

(assert (=> d!1265114 (= c!730045 ((_ is Node!14356) (c!730041 input!1632)))))

(declare-fun e!2660488 () Bool)

(assert (=> d!1265114 (= (inv!62936 (c!730041 input!1632)) e!2660488)))

(declare-fun b!4284680 () Bool)

(declare-fun inv!62938 (Conc!14356) Bool)

(assert (=> b!4284680 (= e!2660488 (inv!62938 (c!730041 input!1632)))))

(declare-fun b!4284681 () Bool)

(declare-fun e!2660489 () Bool)

(assert (=> b!4284681 (= e!2660488 e!2660489)))

(declare-fun res!1758083 () Bool)

(assert (=> b!4284681 (= res!1758083 (not ((_ is Leaf!22214) (c!730041 input!1632))))))

(assert (=> b!4284681 (=> res!1758083 e!2660489)))

(declare-fun b!4284682 () Bool)

(declare-fun inv!62939 (Conc!14356) Bool)

(assert (=> b!4284682 (= e!2660489 (inv!62939 (c!730041 input!1632)))))

(assert (= (and d!1265114 c!730045) b!4284680))

(assert (= (and d!1265114 (not c!730045)) b!4284681))

(assert (= (and b!4284681 (not res!1758083)) b!4284682))

(declare-fun m!4880833 () Bool)

(assert (=> b!4284680 m!4880833))

(declare-fun m!4880835 () Bool)

(assert (=> b!4284682 m!4880835))

(assert (=> b!4284647 d!1265114))

(declare-fun d!1265116 () Bool)

(declare-fun lt!1515606 () tuple2!44900)

(declare-datatypes ((tuple2!44902 0))(
  ( (tuple2!44903 (_1!25605 List!47609) (_2!25605 List!47609)) )
))
(declare-fun findLongestMatch!1617 (Regex!12913 List!47609) tuple2!44902)

(assert (=> d!1265116 (= (tuple2!44903 (list!17323 (_1!25603 lt!1515606)) (list!17323 (_2!25603 lt!1515606))) (findLongestMatch!1617 (regex!8004 rule!232) (list!17323 input!1632)))))

(declare-fun choose!26130 (Regex!12913 BalanceConc!28202 BalanceConc!28202) tuple2!44900)

(assert (=> d!1265116 (= lt!1515606 (choose!26130 (regex!8004 rule!232) input!1632 totalInput!528))))

(assert (=> d!1265116 (validRegex!5839 (regex!8004 rule!232))))

(assert (=> d!1265116 (= (findLongestMatchWithZipperSequenceV2!120 (regex!8004 rule!232) input!1632 totalInput!528) lt!1515606)))

(declare-fun bs!602808 () Bool)

(assert (= bs!602808 d!1265116))

(assert (=> bs!602808 m!4880799))

(declare-fun m!4880837 () Bool)

(assert (=> bs!602808 m!4880837))

(assert (=> bs!602808 m!4880815))

(assert (=> bs!602808 m!4880799))

(declare-fun m!4880839 () Bool)

(assert (=> bs!602808 m!4880839))

(declare-fun m!4880841 () Bool)

(assert (=> bs!602808 m!4880841))

(declare-fun m!4880843 () Bool)

(assert (=> bs!602808 m!4880843))

(assert (=> b!4284646 d!1265116))

(declare-fun b!4284693 () Bool)

(declare-fun res!1758094 () Bool)

(declare-fun e!2660492 () Bool)

(assert (=> b!4284693 (=> (not res!1758094) (not e!2660492))))

(declare-fun lt!1515609 () tuple4!954)

(assert (=> b!4284693 (= res!1758094 (valid!3332 (_4!477 lt!1515609)))))

(declare-fun b!4284694 () Bool)

(assert (=> b!4284694 (= e!2660492 (= (totalInput!4301 (_4!477 lt!1515609)) totalInput!528))))

(declare-fun b!4284692 () Bool)

(declare-fun res!1758092 () Bool)

(assert (=> b!4284692 (=> (not res!1758092) (not e!2660492))))

(assert (=> b!4284692 (= res!1758092 (valid!3331 (_2!25604 lt!1515609)))))

(declare-fun b!4284691 () Bool)

(declare-fun res!1758093 () Bool)

(assert (=> b!4284691 (=> (not res!1758093) (not e!2660492))))

(assert (=> b!4284691 (= res!1758093 (valid!3330 (_3!3153 lt!1515609)))))

(declare-fun d!1265118 () Bool)

(assert (=> d!1265118 e!2660492))

(declare-fun res!1758095 () Bool)

(assert (=> d!1265118 (=> (not res!1758095) (not e!2660492))))

(assert (=> d!1265118 (= res!1758095 (= (_1!25604 lt!1515609) (findLongestMatchWithZipperSequenceV2!120 (regex!8004 rule!232) input!1632 totalInput!528)))))

(declare-fun choose!26131 (Regex!12913 BalanceConc!28202 BalanceConc!28202 CacheUp!2738 CacheDown!2858 CacheFindLongestMatch!400) tuple4!954)

(assert (=> d!1265118 (= lt!1515609 (choose!26131 (regex!8004 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(assert (=> d!1265118 (validRegex!5839 (regex!8004 rule!232))))

(assert (=> d!1265118 (= (findLongestMatchWithZipperSequenceV2Mem!43 (regex!8004 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156) lt!1515609)))

(assert (= (and d!1265118 res!1758095) b!4284691))

(assert (= (and b!4284691 res!1758093) b!4284692))

(assert (= (and b!4284692 res!1758092) b!4284693))

(assert (= (and b!4284693 res!1758094) b!4284694))

(declare-fun m!4880845 () Bool)

(assert (=> b!4284693 m!4880845))

(declare-fun m!4880847 () Bool)

(assert (=> b!4284692 m!4880847))

(declare-fun m!4880849 () Bool)

(assert (=> b!4284691 m!4880849))

(assert (=> d!1265118 m!4880763))

(declare-fun m!4880851 () Bool)

(assert (=> d!1265118 m!4880851))

(assert (=> d!1265118 m!4880815))

(assert (=> b!4284646 d!1265118))

(declare-fun d!1265120 () Bool)

(assert (=> d!1265120 (= (valid!3332 cacheFindLongestMatch!156) (validCacheMapFindLongestMatch!69 (cache!4335 cacheFindLongestMatch!156) (totalInput!4301 cacheFindLongestMatch!156)))))

(declare-fun bs!602809 () Bool)

(assert (= bs!602809 d!1265120))

(assert (=> bs!602809 m!4880825))

(assert (=> b!4284657 d!1265120))

(declare-fun d!1265122 () Bool)

(declare-fun res!1758100 () Bool)

(declare-fun e!2660495 () Bool)

(assert (=> d!1265122 (=> (not res!1758100) (not e!2660495))))

(assert (=> d!1265122 (= res!1758100 (validRegex!5839 (regex!8004 rule!232)))))

(assert (=> d!1265122 (= (ruleValid!3620 thiss!16356 rule!232) e!2660495)))

(declare-fun b!4284699 () Bool)

(declare-fun res!1758101 () Bool)

(assert (=> b!4284699 (=> (not res!1758101) (not e!2660495))))

(declare-fun nullable!4531 (Regex!12913) Bool)

(assert (=> b!4284699 (= res!1758101 (not (nullable!4531 (regex!8004 rule!232))))))

(declare-fun b!4284700 () Bool)

(assert (=> b!4284700 (= e!2660495 (not (= (tag!8868 rule!232) (String!55569 ""))))))

(assert (= (and d!1265122 res!1758100) b!4284699))

(assert (= (and b!4284699 res!1758101) b!4284700))

(assert (=> d!1265122 m!4880815))

(declare-fun m!4880853 () Bool)

(assert (=> b!4284699 m!4880853))

(assert (=> b!4284637 d!1265122))

(declare-fun d!1265124 () Bool)

(assert (=> d!1265124 (= (inv!62932 (totalInput!4301 cacheFindLongestMatch!156)) (isBalanced!3876 (c!730041 (totalInput!4301 cacheFindLongestMatch!156))))))

(declare-fun bs!602810 () Bool)

(assert (= bs!602810 d!1265124))

(declare-fun m!4880855 () Bool)

(assert (=> bs!602810 m!4880855))

(assert (=> b!4284650 d!1265124))

(declare-fun d!1265126 () Bool)

(declare-fun c!730046 () Bool)

(assert (=> d!1265126 (= c!730046 ((_ is Node!14356) (c!730041 (totalInput!4301 cacheFindLongestMatch!156))))))

(declare-fun e!2660496 () Bool)

(assert (=> d!1265126 (= (inv!62936 (c!730041 (totalInput!4301 cacheFindLongestMatch!156))) e!2660496)))

(declare-fun b!4284701 () Bool)

(assert (=> b!4284701 (= e!2660496 (inv!62938 (c!730041 (totalInput!4301 cacheFindLongestMatch!156))))))

(declare-fun b!4284702 () Bool)

(declare-fun e!2660497 () Bool)

(assert (=> b!4284702 (= e!2660496 e!2660497)))

(declare-fun res!1758102 () Bool)

(assert (=> b!4284702 (= res!1758102 (not ((_ is Leaf!22214) (c!730041 (totalInput!4301 cacheFindLongestMatch!156)))))))

(assert (=> b!4284702 (=> res!1758102 e!2660497)))

(declare-fun b!4284703 () Bool)

(assert (=> b!4284703 (= e!2660497 (inv!62939 (c!730041 (totalInput!4301 cacheFindLongestMatch!156))))))

(assert (= (and d!1265126 c!730046) b!4284701))

(assert (= (and d!1265126 (not c!730046)) b!4284702))

(assert (= (and b!4284702 (not res!1758102)) b!4284703))

(declare-fun m!4880857 () Bool)

(assert (=> b!4284701 m!4880857))

(declare-fun m!4880859 () Bool)

(assert (=> b!4284703 m!4880859))

(assert (=> b!4284659 d!1265126))

(declare-fun d!1265128 () Bool)

(assert (=> d!1265128 (= (array_inv!4920 (_keys!4588 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) (bvsge (size!34803 (_keys!4588 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284632 d!1265128))

(declare-fun d!1265130 () Bool)

(assert (=> d!1265130 (= (array_inv!4921 (_values!4569 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) (bvsge (size!34802 (_values!4569 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284632 d!1265130))

(declare-fun d!1265132 () Bool)

(assert (=> d!1265132 (= (valid!3330 cacheDown!738) (validCacheMapDown!443 (cache!4334 cacheDown!738)))))

(declare-fun bs!602811 () Bool)

(assert (= bs!602811 d!1265132))

(assert (=> bs!602811 m!4880827))

(assert (=> b!4284639 d!1265132))

(declare-fun d!1265134 () Bool)

(assert (=> d!1265134 (= (valid!3331 cacheUp!725) (validCacheMapUp!412 (cache!4336 cacheUp!725)))))

(declare-fun bs!602812 () Bool)

(assert (= bs!602812 d!1265134))

(assert (=> bs!602812 m!4880823))

(assert (=> b!4284648 d!1265134))

(declare-fun d!1265136 () Bool)

(declare-fun e!2660500 () Bool)

(assert (=> d!1265136 e!2660500))

(declare-fun res!1758105 () Bool)

(assert (=> d!1265136 (=> res!1758105 e!2660500)))

(declare-fun lt!1515612 () Bool)

(assert (=> d!1265136 (= res!1758105 (not lt!1515612))))

(declare-fun drop!2185 (List!47609 Int) List!47609)

(declare-fun size!34806 (List!47609) Int)

(assert (=> d!1265136 (= lt!1515612 (= (list!17323 input!1632) (drop!2185 (list!17323 totalInput!528) (- (size!34806 (list!17323 totalInput!528)) (size!34806 (list!17323 input!1632))))))))

(assert (=> d!1265136 (= (isSuffix!1011 (list!17323 input!1632) (list!17323 totalInput!528)) lt!1515612)))

(declare-fun b!4284706 () Bool)

(assert (=> b!4284706 (= e!2660500 (>= (size!34806 (list!17323 totalInput!528)) (size!34806 (list!17323 input!1632))))))

(assert (= (and d!1265136 (not res!1758105)) b!4284706))

(assert (=> d!1265136 m!4880801))

(declare-fun m!4880861 () Bool)

(assert (=> d!1265136 m!4880861))

(assert (=> d!1265136 m!4880799))

(declare-fun m!4880863 () Bool)

(assert (=> d!1265136 m!4880863))

(assert (=> d!1265136 m!4880801))

(declare-fun m!4880865 () Bool)

(assert (=> d!1265136 m!4880865))

(assert (=> b!4284706 m!4880801))

(assert (=> b!4284706 m!4880861))

(assert (=> b!4284706 m!4880799))

(assert (=> b!4284706 m!4880863))

(assert (=> b!4284630 d!1265136))

(declare-fun d!1265138 () Bool)

(declare-fun list!17324 (Conc!14356) List!47609)

(assert (=> d!1265138 (= (list!17323 input!1632) (list!17324 (c!730041 input!1632)))))

(declare-fun bs!602813 () Bool)

(assert (= bs!602813 d!1265138))

(declare-fun m!4880867 () Bool)

(assert (=> bs!602813 m!4880867))

(assert (=> b!4284630 d!1265138))

(declare-fun d!1265140 () Bool)

(assert (=> d!1265140 (= (list!17323 totalInput!528) (list!17324 (c!730041 totalInput!528)))))

(declare-fun bs!602814 () Bool)

(assert (= bs!602814 d!1265140))

(declare-fun m!4880869 () Bool)

(assert (=> bs!602814 m!4880869))

(assert (=> b!4284630 d!1265140))

(declare-fun b!4284725 () Bool)

(declare-fun e!2660520 () Bool)

(declare-fun e!2660519 () Bool)

(assert (=> b!4284725 (= e!2660520 e!2660519)))

(declare-fun res!1758117 () Bool)

(assert (=> b!4284725 (=> (not res!1758117) (not e!2660519))))

(declare-fun call!294440 () Bool)

(assert (=> b!4284725 (= res!1758117 call!294440)))

(declare-fun call!294438 () Bool)

(declare-fun c!730052 () Bool)

(declare-fun c!730051 () Bool)

(declare-fun bm!294434 () Bool)

(assert (=> bm!294434 (= call!294438 (validRegex!5839 (ite c!730052 (reg!13242 (regex!8004 rule!232)) (ite c!730051 (regTwo!26339 (regex!8004 rule!232)) (regTwo!26338 (regex!8004 rule!232))))))))

(declare-fun b!4284726 () Bool)

(declare-fun e!2660521 () Bool)

(declare-fun e!2660517 () Bool)

(assert (=> b!4284726 (= e!2660521 e!2660517)))

(assert (=> b!4284726 (= c!730051 ((_ is Union!12913) (regex!8004 rule!232)))))

(declare-fun b!4284727 () Bool)

(declare-fun e!2660515 () Bool)

(declare-fun call!294439 () Bool)

(assert (=> b!4284727 (= e!2660515 call!294439)))

(declare-fun b!4284728 () Bool)

(declare-fun res!1758119 () Bool)

(assert (=> b!4284728 (=> res!1758119 e!2660520)))

(assert (=> b!4284728 (= res!1758119 (not ((_ is Concat!21227) (regex!8004 rule!232))))))

(assert (=> b!4284728 (= e!2660517 e!2660520)))

(declare-fun bm!294435 () Bool)

(assert (=> bm!294435 (= call!294439 call!294438)))

(declare-fun b!4284729 () Bool)

(declare-fun e!2660518 () Bool)

(assert (=> b!4284729 (= e!2660521 e!2660518)))

(declare-fun res!1758118 () Bool)

(assert (=> b!4284729 (= res!1758118 (not (nullable!4531 (reg!13242 (regex!8004 rule!232)))))))

(assert (=> b!4284729 (=> (not res!1758118) (not e!2660518))))

(declare-fun bm!294433 () Bool)

(assert (=> bm!294433 (= call!294440 (validRegex!5839 (ite c!730051 (regOne!26339 (regex!8004 rule!232)) (regOne!26338 (regex!8004 rule!232)))))))

(declare-fun d!1265142 () Bool)

(declare-fun res!1758116 () Bool)

(declare-fun e!2660516 () Bool)

(assert (=> d!1265142 (=> res!1758116 e!2660516)))

(assert (=> d!1265142 (= res!1758116 ((_ is ElementMatch!12913) (regex!8004 rule!232)))))

(assert (=> d!1265142 (= (validRegex!5839 (regex!8004 rule!232)) e!2660516)))

(declare-fun b!4284730 () Bool)

(declare-fun res!1758120 () Bool)

(assert (=> b!4284730 (=> (not res!1758120) (not e!2660515))))

(assert (=> b!4284730 (= res!1758120 call!294440)))

(assert (=> b!4284730 (= e!2660517 e!2660515)))

(declare-fun b!4284731 () Bool)

(assert (=> b!4284731 (= e!2660516 e!2660521)))

(assert (=> b!4284731 (= c!730052 ((_ is Star!12913) (regex!8004 rule!232)))))

(declare-fun b!4284732 () Bool)

(assert (=> b!4284732 (= e!2660519 call!294439)))

(declare-fun b!4284733 () Bool)

(assert (=> b!4284733 (= e!2660518 call!294438)))

(assert (= (and d!1265142 (not res!1758116)) b!4284731))

(assert (= (and b!4284731 c!730052) b!4284729))

(assert (= (and b!4284731 (not c!730052)) b!4284726))

(assert (= (and b!4284729 res!1758118) b!4284733))

(assert (= (and b!4284726 c!730051) b!4284730))

(assert (= (and b!4284726 (not c!730051)) b!4284728))

(assert (= (and b!4284730 res!1758120) b!4284727))

(assert (= (and b!4284728 (not res!1758119)) b!4284725))

(assert (= (and b!4284725 res!1758117) b!4284732))

(assert (= (or b!4284727 b!4284732) bm!294435))

(assert (= (or b!4284730 b!4284725) bm!294433))

(assert (= (or b!4284733 bm!294435) bm!294434))

(declare-fun m!4880871 () Bool)

(assert (=> bm!294434 m!4880871))

(declare-fun m!4880873 () Bool)

(assert (=> b!4284729 m!4880873))

(declare-fun m!4880875 () Bool)

(assert (=> bm!294433 m!4880875))

(assert (=> b!4284653 d!1265142))

(declare-fun d!1265144 () Bool)

(assert (=> d!1265144 (= (array_inv!4920 (_keys!4589 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) (bvsge (size!34803 (_keys!4589 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284661 d!1265144))

(declare-fun d!1265146 () Bool)

(assert (=> d!1265146 (= (array_inv!4923 (_values!4570 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) (bvsge (size!34804 (_values!4570 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284661 d!1265146))

(declare-fun d!1265148 () Bool)

(declare-fun c!730053 () Bool)

(assert (=> d!1265148 (= c!730053 ((_ is Node!14356) (c!730041 totalInput!528)))))

(declare-fun e!2660522 () Bool)

(assert (=> d!1265148 (= (inv!62936 (c!730041 totalInput!528)) e!2660522)))

(declare-fun b!4284734 () Bool)

(assert (=> b!4284734 (= e!2660522 (inv!62938 (c!730041 totalInput!528)))))

(declare-fun b!4284735 () Bool)

(declare-fun e!2660523 () Bool)

(assert (=> b!4284735 (= e!2660522 e!2660523)))

(declare-fun res!1758121 () Bool)

(assert (=> b!4284735 (= res!1758121 (not ((_ is Leaf!22214) (c!730041 totalInput!528))))))

(assert (=> b!4284735 (=> res!1758121 e!2660523)))

(declare-fun b!4284736 () Bool)

(assert (=> b!4284736 (= e!2660523 (inv!62939 (c!730041 totalInput!528)))))

(assert (= (and d!1265148 c!730053) b!4284734))

(assert (= (and d!1265148 (not c!730053)) b!4284735))

(assert (= (and b!4284735 (not res!1758121)) b!4284736))

(declare-fun m!4880877 () Bool)

(assert (=> b!4284734 m!4880877))

(declare-fun m!4880879 () Bool)

(assert (=> b!4284736 m!4880879))

(assert (=> b!4284660 d!1265148))

(declare-fun d!1265150 () Bool)

(declare-fun lt!1515615 () Bool)

(declare-fun isEmpty!28013 (List!47609) Bool)

(assert (=> d!1265150 (= lt!1515615 (isEmpty!28013 (list!17323 (_1!25603 (_1!25604 lt!1515600)))))))

(declare-fun isEmpty!28014 (Conc!14356) Bool)

(assert (=> d!1265150 (= lt!1515615 (isEmpty!28014 (c!730041 (_1!25603 (_1!25604 lt!1515600)))))))

(assert (=> d!1265150 (= (isEmpty!28012 (_1!25603 (_1!25604 lt!1515600))) lt!1515615)))

(declare-fun bs!602815 () Bool)

(assert (= bs!602815 d!1265150))

(declare-fun m!4880881 () Bool)

(assert (=> bs!602815 m!4880881))

(assert (=> bs!602815 m!4880881))

(declare-fun m!4880883 () Bool)

(assert (=> bs!602815 m!4880883))

(declare-fun m!4880885 () Bool)

(assert (=> bs!602815 m!4880885))

(assert (=> b!4284663 d!1265150))

(declare-fun d!1265152 () Bool)

(assert (=> d!1265152 (= (inv!62925 (tag!8868 rule!232)) (= (mod (str.len (value!250930 (tag!8868 rule!232))) 2) 0))))

(assert (=> b!4284654 d!1265152))

(declare-fun d!1265154 () Bool)

(declare-fun res!1758124 () Bool)

(declare-fun e!2660526 () Bool)

(assert (=> d!1265154 (=> (not res!1758124) (not e!2660526))))

(declare-fun semiInverseModEq!3534 (Int Int) Bool)

(assert (=> d!1265154 (= res!1758124 (semiInverseModEq!3534 (toChars!10714 (transformation!8004 rule!232)) (toValue!10855 (transformation!8004 rule!232))))))

(assert (=> d!1265154 (= (inv!62937 (transformation!8004 rule!232)) e!2660526)))

(declare-fun b!4284739 () Bool)

(declare-fun equivClasses!3413 (Int Int) Bool)

(assert (=> b!4284739 (= e!2660526 (equivClasses!3413 (toChars!10714 (transformation!8004 rule!232)) (toValue!10855 (transformation!8004 rule!232))))))

(assert (= (and d!1265154 res!1758124) b!4284739))

(declare-fun m!4880887 () Bool)

(assert (=> d!1265154 m!4880887))

(declare-fun m!4880889 () Bool)

(assert (=> b!4284739 m!4880889))

(assert (=> b!4284654 d!1265154))

(declare-fun d!1265156 () Bool)

(assert (=> d!1265156 (= (array_inv!4920 (_keys!4590 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) (bvsge (size!34803 (_keys!4590 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284634 d!1265156))

(declare-fun d!1265158 () Bool)

(assert (=> d!1265158 (= (array_inv!4922 (_values!4571 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) (bvsge (size!34805 (_values!4571 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284634 d!1265158))

(declare-fun tp!1311398 () Bool)

(declare-fun b!4284748 () Bool)

(declare-fun tp!1311400 () Bool)

(declare-fun e!2660531 () Bool)

(assert (=> b!4284748 (= e!2660531 (and (inv!62936 (left!35341 (c!730041 input!1632))) tp!1311400 (inv!62936 (right!35671 (c!730041 input!1632))) tp!1311398))))

(declare-fun b!4284750 () Bool)

(declare-fun e!2660532 () Bool)

(declare-fun tp!1311399 () Bool)

(assert (=> b!4284750 (= e!2660532 tp!1311399)))

(declare-fun b!4284749 () Bool)

(declare-fun inv!62940 (IArray!28773) Bool)

(assert (=> b!4284749 (= e!2660531 (and (inv!62940 (xs!17662 (c!730041 input!1632))) e!2660532))))

(assert (=> b!4284647 (= tp!1311388 (and (inv!62936 (c!730041 input!1632)) e!2660531))))

(assert (= (and b!4284647 ((_ is Node!14356) (c!730041 input!1632))) b!4284748))

(assert (= b!4284749 b!4284750))

(assert (= (and b!4284647 ((_ is Leaf!22214) (c!730041 input!1632))) b!4284749))

(declare-fun m!4880891 () Bool)

(assert (=> b!4284748 m!4880891))

(declare-fun m!4880893 () Bool)

(assert (=> b!4284748 m!4880893))

(declare-fun m!4880895 () Bool)

(assert (=> b!4284749 m!4880895))

(assert (=> b!4284647 m!4880789))

(declare-fun tp!1311403 () Bool)

(declare-fun e!2660533 () Bool)

(declare-fun tp!1311401 () Bool)

(declare-fun b!4284751 () Bool)

(assert (=> b!4284751 (= e!2660533 (and (inv!62936 (left!35341 (c!730041 (totalInput!4301 cacheFindLongestMatch!156)))) tp!1311403 (inv!62936 (right!35671 (c!730041 (totalInput!4301 cacheFindLongestMatch!156)))) tp!1311401))))

(declare-fun b!4284753 () Bool)

(declare-fun e!2660534 () Bool)

(declare-fun tp!1311402 () Bool)

(assert (=> b!4284753 (= e!2660534 tp!1311402)))

(declare-fun b!4284752 () Bool)

(assert (=> b!4284752 (= e!2660533 (and (inv!62940 (xs!17662 (c!730041 (totalInput!4301 cacheFindLongestMatch!156)))) e!2660534))))

(assert (=> b!4284659 (= tp!1311366 (and (inv!62936 (c!730041 (totalInput!4301 cacheFindLongestMatch!156))) e!2660533))))

(assert (= (and b!4284659 ((_ is Node!14356) (c!730041 (totalInput!4301 cacheFindLongestMatch!156)))) b!4284751))

(assert (= b!4284752 b!4284753))

(assert (= (and b!4284659 ((_ is Leaf!22214) (c!730041 (totalInput!4301 cacheFindLongestMatch!156)))) b!4284752))

(declare-fun m!4880897 () Bool)

(assert (=> b!4284751 m!4880897))

(declare-fun m!4880899 () Bool)

(assert (=> b!4284751 m!4880899))

(declare-fun m!4880901 () Bool)

(assert (=> b!4284752 m!4880901))

(assert (=> b!4284659 m!4880761))

(declare-fun b!4284762 () Bool)

(declare-fun e!2660543 () Bool)

(declare-fun tp!1311417 () Bool)

(assert (=> b!4284762 (= e!2660543 tp!1311417)))

(declare-fun e!2660542 () Bool)

(assert (=> b!4284632 (= tp!1311391 e!2660542)))

(declare-fun setIsEmpty!26120 () Bool)

(declare-fun setRes!26120 () Bool)

(assert (=> setIsEmpty!26120 setRes!26120))

(declare-fun b!4284763 () Bool)

(declare-fun e!2660541 () Bool)

(declare-fun tp!1311414 () Bool)

(assert (=> b!4284763 (= e!2660541 tp!1311414)))

(declare-fun tp!1311418 () Bool)

(declare-fun b!4284764 () Bool)

(declare-fun tp_is_empty!23061 () Bool)

(declare-fun tp!1311416 () Bool)

(declare-fun inv!62941 (Context!5606) Bool)

(assert (=> b!4284764 (= e!2660542 (and tp!1311416 (inv!62941 (_2!25597 (_1!25598 (h!52907 (zeroValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))))) e!2660541 tp_is_empty!23061 setRes!26120 tp!1311418))))

(declare-fun condSetEmpty!26120 () Bool)

(assert (=> b!4284764 (= condSetEmpty!26120 (= (_2!25598 (h!52907 (zeroValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun setNonEmpty!26120 () Bool)

(declare-fun setElem!26120 () Context!5606)

(declare-fun tp!1311415 () Bool)

(assert (=> setNonEmpty!26120 (= setRes!26120 (and tp!1311415 (inv!62941 setElem!26120) e!2660543))))

(declare-fun setRest!26120 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26120 (= (_2!25598 (h!52907 (zeroValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26120 true) setRest!26120))))

(assert (= b!4284764 b!4284763))

(assert (= (and b!4284764 condSetEmpty!26120) setIsEmpty!26120))

(assert (= (and b!4284764 (not condSetEmpty!26120)) setNonEmpty!26120))

(assert (= setNonEmpty!26120 b!4284762))

(assert (= (and b!4284632 ((_ is Cons!47487) (zeroValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))) b!4284764))

(declare-fun m!4880903 () Bool)

(assert (=> b!4284764 m!4880903))

(declare-fun m!4880905 () Bool)

(assert (=> setNonEmpty!26120 m!4880905))

(declare-fun b!4284765 () Bool)

(declare-fun e!2660546 () Bool)

(declare-fun tp!1311422 () Bool)

(assert (=> b!4284765 (= e!2660546 tp!1311422)))

(declare-fun e!2660545 () Bool)

(assert (=> b!4284632 (= tp!1311383 e!2660545)))

(declare-fun setIsEmpty!26121 () Bool)

(declare-fun setRes!26121 () Bool)

(assert (=> setIsEmpty!26121 setRes!26121))

(declare-fun b!4284766 () Bool)

(declare-fun e!2660544 () Bool)

(declare-fun tp!1311419 () Bool)

(assert (=> b!4284766 (= e!2660544 tp!1311419)))

(declare-fun b!4284767 () Bool)

(declare-fun tp!1311423 () Bool)

(declare-fun tp!1311421 () Bool)

(assert (=> b!4284767 (= e!2660545 (and tp!1311421 (inv!62941 (_2!25597 (_1!25598 (h!52907 (minValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))))) e!2660544 tp_is_empty!23061 setRes!26121 tp!1311423))))

(declare-fun condSetEmpty!26121 () Bool)

(assert (=> b!4284767 (= condSetEmpty!26121 (= (_2!25598 (h!52907 (minValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun tp!1311420 () Bool)

(declare-fun setNonEmpty!26121 () Bool)

(declare-fun setElem!26121 () Context!5606)

(assert (=> setNonEmpty!26121 (= setRes!26121 (and tp!1311420 (inv!62941 setElem!26121) e!2660546))))

(declare-fun setRest!26121 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26121 (= (_2!25598 (h!52907 (minValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26121 true) setRest!26121))))

(assert (= b!4284767 b!4284766))

(assert (= (and b!4284767 condSetEmpty!26121) setIsEmpty!26121))

(assert (= (and b!4284767 (not condSetEmpty!26121)) setNonEmpty!26121))

(assert (= setNonEmpty!26121 b!4284765))

(assert (= (and b!4284632 ((_ is Cons!47487) (minValue!4547 (v!41384 (underlying!8805 (v!41385 (underlying!8806 (cache!4334 cacheDown!738)))))))) b!4284767))

(declare-fun m!4880907 () Bool)

(assert (=> b!4284767 m!4880907))

(declare-fun m!4880909 () Bool)

(assert (=> setNonEmpty!26121 m!4880909))

(declare-fun mapIsEmpty!19403 () Bool)

(declare-fun mapRes!19403 () Bool)

(assert (=> mapIsEmpty!19403 mapRes!19403))

(declare-fun setNonEmpty!26126 () Bool)

(declare-fun setRes!26126 () Bool)

(declare-fun e!2660560 () Bool)

(declare-fun tp!1311446 () Bool)

(declare-fun setElem!26126 () Context!5606)

(assert (=> setNonEmpty!26126 (= setRes!26126 (and tp!1311446 (inv!62941 setElem!26126) e!2660560))))

(declare-fun mapDefault!19403 () List!47611)

(declare-fun setRest!26127 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26126 (= (_2!25598 (h!52907 mapDefault!19403)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26126 true) setRest!26127))))

(declare-fun b!4284783 () Bool)

(declare-fun tp!1311454 () Bool)

(assert (=> b!4284783 (= e!2660560 tp!1311454)))

(declare-fun mapValue!19403 () List!47611)

(declare-fun setRes!26127 () Bool)

(declare-fun tp!1311447 () Bool)

(declare-fun b!4284784 () Bool)

(declare-fun e!2660559 () Bool)

(declare-fun tp!1311451 () Bool)

(declare-fun e!2660563 () Bool)

(assert (=> b!4284784 (= e!2660563 (and tp!1311447 (inv!62941 (_2!25597 (_1!25598 (h!52907 mapValue!19403)))) e!2660559 tp_is_empty!23061 setRes!26127 tp!1311451))))

(declare-fun condSetEmpty!26127 () Bool)

(assert (=> b!4284784 (= condSetEmpty!26127 (= (_2!25598 (h!52907 mapValue!19403)) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun setIsEmpty!26126 () Bool)

(assert (=> setIsEmpty!26126 setRes!26126))

(declare-fun setIsEmpty!26127 () Bool)

(assert (=> setIsEmpty!26127 setRes!26127))

(declare-fun e!2660561 () Bool)

(declare-fun tp!1311448 () Bool)

(declare-fun setNonEmpty!26127 () Bool)

(declare-fun setElem!26127 () Context!5606)

(assert (=> setNonEmpty!26127 (= setRes!26127 (and tp!1311448 (inv!62941 setElem!26127) e!2660561))))

(declare-fun setRest!26126 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26127 (= (_2!25598 (h!52907 mapValue!19403)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26127 true) setRest!26126))))

(declare-fun b!4284782 () Bool)

(declare-fun tp!1311453 () Bool)

(assert (=> b!4284782 (= e!2660561 tp!1311453)))

(declare-fun condMapEmpty!19403 () Bool)

(assert (=> mapNonEmpty!19399 (= condMapEmpty!19403 (= mapRest!19400 ((as const (Array (_ BitVec 32) List!47611)) mapDefault!19403)))))

(declare-fun e!2660562 () Bool)

(assert (=> mapNonEmpty!19399 (= tp!1311377 (and e!2660562 mapRes!19403))))

(declare-fun mapNonEmpty!19403 () Bool)

(declare-fun tp!1311449 () Bool)

(assert (=> mapNonEmpty!19403 (= mapRes!19403 (and tp!1311449 e!2660563))))

(declare-fun mapRest!19403 () (Array (_ BitVec 32) List!47611))

(declare-fun mapKey!19403 () (_ BitVec 32))

(assert (=> mapNonEmpty!19403 (= mapRest!19400 (store mapRest!19403 mapKey!19403 mapValue!19403))))

(declare-fun b!4284785 () Bool)

(declare-fun tp!1311455 () Bool)

(assert (=> b!4284785 (= e!2660559 tp!1311455)))

(declare-fun b!4284786 () Bool)

(declare-fun e!2660564 () Bool)

(declare-fun tp!1311456 () Bool)

(assert (=> b!4284786 (= e!2660564 tp!1311456)))

(declare-fun tp!1311452 () Bool)

(declare-fun tp!1311450 () Bool)

(declare-fun b!4284787 () Bool)

(assert (=> b!4284787 (= e!2660562 (and tp!1311450 (inv!62941 (_2!25597 (_1!25598 (h!52907 mapDefault!19403)))) e!2660564 tp_is_empty!23061 setRes!26126 tp!1311452))))

(declare-fun condSetEmpty!26126 () Bool)

(assert (=> b!4284787 (= condSetEmpty!26126 (= (_2!25598 (h!52907 mapDefault!19403)) ((as const (Array Context!5606 Bool)) false)))))

(assert (= (and mapNonEmpty!19399 condMapEmpty!19403) mapIsEmpty!19403))

(assert (= (and mapNonEmpty!19399 (not condMapEmpty!19403)) mapNonEmpty!19403))

(assert (= b!4284784 b!4284785))

(assert (= (and b!4284784 condSetEmpty!26127) setIsEmpty!26127))

(assert (= (and b!4284784 (not condSetEmpty!26127)) setNonEmpty!26127))

(assert (= setNonEmpty!26127 b!4284782))

(assert (= (and mapNonEmpty!19403 ((_ is Cons!47487) mapValue!19403)) b!4284784))

(assert (= b!4284787 b!4284786))

(assert (= (and b!4284787 condSetEmpty!26126) setIsEmpty!26126))

(assert (= (and b!4284787 (not condSetEmpty!26126)) setNonEmpty!26126))

(assert (= setNonEmpty!26126 b!4284783))

(assert (= (and mapNonEmpty!19399 ((_ is Cons!47487) mapDefault!19403)) b!4284787))

(declare-fun m!4880911 () Bool)

(assert (=> b!4284784 m!4880911))

(declare-fun m!4880913 () Bool)

(assert (=> setNonEmpty!26126 m!4880913))

(declare-fun m!4880915 () Bool)

(assert (=> mapNonEmpty!19403 m!4880915))

(declare-fun m!4880917 () Bool)

(assert (=> setNonEmpty!26127 m!4880917))

(declare-fun m!4880919 () Bool)

(assert (=> b!4284787 m!4880919))

(declare-fun b!4284788 () Bool)

(declare-fun e!2660567 () Bool)

(declare-fun tp!1311460 () Bool)

(assert (=> b!4284788 (= e!2660567 tp!1311460)))

(declare-fun e!2660566 () Bool)

(assert (=> mapNonEmpty!19399 (= tp!1311379 e!2660566)))

(declare-fun setIsEmpty!26128 () Bool)

(declare-fun setRes!26128 () Bool)

(assert (=> setIsEmpty!26128 setRes!26128))

(declare-fun b!4284789 () Bool)

(declare-fun e!2660565 () Bool)

(declare-fun tp!1311457 () Bool)

(assert (=> b!4284789 (= e!2660565 tp!1311457)))

(declare-fun tp!1311459 () Bool)

(declare-fun tp!1311461 () Bool)

(declare-fun b!4284790 () Bool)

(assert (=> b!4284790 (= e!2660566 (and tp!1311459 (inv!62941 (_2!25597 (_1!25598 (h!52907 mapValue!19399)))) e!2660565 tp_is_empty!23061 setRes!26128 tp!1311461))))

(declare-fun condSetEmpty!26128 () Bool)

(assert (=> b!4284790 (= condSetEmpty!26128 (= (_2!25598 (h!52907 mapValue!19399)) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun tp!1311458 () Bool)

(declare-fun setNonEmpty!26128 () Bool)

(declare-fun setElem!26128 () Context!5606)

(assert (=> setNonEmpty!26128 (= setRes!26128 (and tp!1311458 (inv!62941 setElem!26128) e!2660567))))

(declare-fun setRest!26128 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26128 (= (_2!25598 (h!52907 mapValue!19399)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26128 true) setRest!26128))))

(assert (= b!4284790 b!4284789))

(assert (= (and b!4284790 condSetEmpty!26128) setIsEmpty!26128))

(assert (= (and b!4284790 (not condSetEmpty!26128)) setNonEmpty!26128))

(assert (= setNonEmpty!26128 b!4284788))

(assert (= (and mapNonEmpty!19399 ((_ is Cons!47487) mapValue!19399)) b!4284790))

(declare-fun m!4880921 () Bool)

(assert (=> b!4284790 m!4880921))

(declare-fun m!4880923 () Bool)

(assert (=> setNonEmpty!26128 m!4880923))

(declare-fun setIsEmpty!26133 () Bool)

(declare-fun setRes!26134 () Bool)

(assert (=> setIsEmpty!26133 setRes!26134))

(declare-fun condMapEmpty!19406 () Bool)

(declare-fun mapDefault!19406 () List!47612)

(assert (=> mapNonEmpty!19400 (= condMapEmpty!19406 (= mapRest!19398 ((as const (Array (_ BitVec 32) List!47612)) mapDefault!19406)))))

(declare-fun e!2660576 () Bool)

(declare-fun mapRes!19406 () Bool)

(assert (=> mapNonEmpty!19400 (= tp!1311386 (and e!2660576 mapRes!19406))))

(declare-fun mapNonEmpty!19406 () Bool)

(declare-fun tp!1311479 () Bool)

(declare-fun e!2660578 () Bool)

(assert (=> mapNonEmpty!19406 (= mapRes!19406 (and tp!1311479 e!2660578))))

(declare-fun mapRest!19406 () (Array (_ BitVec 32) List!47612))

(declare-fun mapValue!19406 () List!47612)

(declare-fun mapKey!19406 () (_ BitVec 32))

(assert (=> mapNonEmpty!19406 (= mapRest!19398 (store mapRest!19406 mapKey!19406 mapValue!19406))))

(declare-fun b!4284801 () Bool)

(declare-fun e!2660577 () Bool)

(declare-fun tp!1311476 () Bool)

(assert (=> b!4284801 (= e!2660577 tp!1311476)))

(declare-fun setIsEmpty!26134 () Bool)

(declare-fun setRes!26133 () Bool)

(assert (=> setIsEmpty!26134 setRes!26133))

(declare-fun tp!1311480 () Bool)

(declare-fun setElem!26133 () Context!5606)

(declare-fun e!2660579 () Bool)

(declare-fun setNonEmpty!26133 () Bool)

(assert (=> setNonEmpty!26133 (= setRes!26134 (and tp!1311480 (inv!62941 setElem!26133) e!2660579))))

(declare-fun setRest!26133 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26133 (= (_1!25599 (_1!25600 (h!52908 mapValue!19406))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26133 true) setRest!26133))))

(declare-fun b!4284802 () Bool)

(declare-fun tp!1311478 () Bool)

(assert (=> b!4284802 (= e!2660578 (and setRes!26134 tp!1311478))))

(declare-fun condSetEmpty!26134 () Bool)

(assert (=> b!4284802 (= condSetEmpty!26134 (= (_1!25599 (_1!25600 (h!52908 mapValue!19406))) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun b!4284803 () Bool)

(declare-fun tp!1311481 () Bool)

(assert (=> b!4284803 (= e!2660576 (and setRes!26133 tp!1311481))))

(declare-fun condSetEmpty!26133 () Bool)

(assert (=> b!4284803 (= condSetEmpty!26133 (= (_1!25599 (_1!25600 (h!52908 mapDefault!19406))) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun b!4284804 () Bool)

(declare-fun tp!1311482 () Bool)

(assert (=> b!4284804 (= e!2660579 tp!1311482)))

(declare-fun setElem!26134 () Context!5606)

(declare-fun tp!1311477 () Bool)

(declare-fun setNonEmpty!26134 () Bool)

(assert (=> setNonEmpty!26134 (= setRes!26133 (and tp!1311477 (inv!62941 setElem!26134) e!2660577))))

(declare-fun setRest!26134 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26134 (= (_1!25599 (_1!25600 (h!52908 mapDefault!19406))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26134 true) setRest!26134))))

(declare-fun mapIsEmpty!19406 () Bool)

(assert (=> mapIsEmpty!19406 mapRes!19406))

(assert (= (and mapNonEmpty!19400 condMapEmpty!19406) mapIsEmpty!19406))

(assert (= (and mapNonEmpty!19400 (not condMapEmpty!19406)) mapNonEmpty!19406))

(assert (= (and b!4284802 condSetEmpty!26134) setIsEmpty!26133))

(assert (= (and b!4284802 (not condSetEmpty!26134)) setNonEmpty!26133))

(assert (= setNonEmpty!26133 b!4284804))

(assert (= (and mapNonEmpty!19406 ((_ is Cons!47488) mapValue!19406)) b!4284802))

(assert (= (and b!4284803 condSetEmpty!26133) setIsEmpty!26134))

(assert (= (and b!4284803 (not condSetEmpty!26133)) setNonEmpty!26134))

(assert (= setNonEmpty!26134 b!4284801))

(assert (= (and mapNonEmpty!19400 ((_ is Cons!47488) mapDefault!19406)) b!4284803))

(declare-fun m!4880925 () Bool)

(assert (=> mapNonEmpty!19406 m!4880925))

(declare-fun m!4880927 () Bool)

(assert (=> setNonEmpty!26133 m!4880927))

(declare-fun m!4880929 () Bool)

(assert (=> setNonEmpty!26134 m!4880929))

(declare-fun e!2660585 () Bool)

(assert (=> mapNonEmpty!19400 (= tp!1311369 e!2660585)))

(declare-fun b!4284812 () Bool)

(declare-fun e!2660584 () Bool)

(declare-fun tp!1311490 () Bool)

(assert (=> b!4284812 (= e!2660584 tp!1311490)))

(declare-fun setNonEmpty!26137 () Bool)

(declare-fun setElem!26137 () Context!5606)

(declare-fun setRes!26137 () Bool)

(declare-fun tp!1311489 () Bool)

(assert (=> setNonEmpty!26137 (= setRes!26137 (and tp!1311489 (inv!62941 setElem!26137) e!2660584))))

(declare-fun setRest!26137 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26137 (= (_1!25599 (_1!25600 (h!52908 mapValue!19400))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26137 true) setRest!26137))))

(declare-fun setIsEmpty!26137 () Bool)

(assert (=> setIsEmpty!26137 setRes!26137))

(declare-fun b!4284811 () Bool)

(declare-fun tp!1311491 () Bool)

(assert (=> b!4284811 (= e!2660585 (and setRes!26137 tp!1311491))))

(declare-fun condSetEmpty!26137 () Bool)

(assert (=> b!4284811 (= condSetEmpty!26137 (= (_1!25599 (_1!25600 (h!52908 mapValue!19400))) ((as const (Array Context!5606 Bool)) false)))))

(assert (= (and b!4284811 condSetEmpty!26137) setIsEmpty!26137))

(assert (= (and b!4284811 (not condSetEmpty!26137)) setNonEmpty!26137))

(assert (= setNonEmpty!26137 b!4284812))

(assert (= (and mapNonEmpty!19400 ((_ is Cons!47488) mapValue!19400)) b!4284811))

(declare-fun m!4880931 () Bool)

(assert (=> setNonEmpty!26137 m!4880931))

(declare-fun e!2660594 () Bool)

(assert (=> b!4284642 (= tp!1311380 e!2660594)))

(declare-fun b!4284821 () Bool)

(declare-fun e!2660593 () Bool)

(declare-fun tp!1311501 () Bool)

(assert (=> b!4284821 (= e!2660593 tp!1311501)))

(declare-fun e!2660592 () Bool)

(declare-fun b!4284822 () Bool)

(declare-fun tp!1311502 () Bool)

(declare-fun setRes!26140 () Bool)

(assert (=> b!4284822 (= e!2660594 (and (inv!62941 (_1!25601 (_1!25602 (h!52909 mapDefault!19400)))) e!2660592 tp_is_empty!23061 setRes!26140 tp!1311502))))

(declare-fun condSetEmpty!26140 () Bool)

(assert (=> b!4284822 (= condSetEmpty!26140 (= (_2!25602 (h!52909 mapDefault!19400)) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun b!4284823 () Bool)

(declare-fun tp!1311503 () Bool)

(assert (=> b!4284823 (= e!2660592 tp!1311503)))

(declare-fun setIsEmpty!26140 () Bool)

(assert (=> setIsEmpty!26140 setRes!26140))

(declare-fun setNonEmpty!26140 () Bool)

(declare-fun tp!1311500 () Bool)

(declare-fun setElem!26140 () Context!5606)

(assert (=> setNonEmpty!26140 (= setRes!26140 (and tp!1311500 (inv!62941 setElem!26140) e!2660593))))

(declare-fun setRest!26140 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26140 (= (_2!25602 (h!52909 mapDefault!19400)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26140 true) setRest!26140))))

(assert (= b!4284822 b!4284823))

(assert (= (and b!4284822 condSetEmpty!26140) setIsEmpty!26140))

(assert (= (and b!4284822 (not condSetEmpty!26140)) setNonEmpty!26140))

(assert (= setNonEmpty!26140 b!4284821))

(assert (= (and b!4284642 ((_ is Cons!47489) mapDefault!19400)) b!4284822))

(declare-fun m!4880933 () Bool)

(assert (=> b!4284822 m!4880933))

(declare-fun m!4880935 () Bool)

(assert (=> setNonEmpty!26140 m!4880935))

(declare-fun e!2660596 () Bool)

(assert (=> b!4284661 (= tp!1311378 e!2660596)))

(declare-fun b!4284825 () Bool)

(declare-fun e!2660595 () Bool)

(declare-fun tp!1311505 () Bool)

(assert (=> b!4284825 (= e!2660595 tp!1311505)))

(declare-fun setNonEmpty!26141 () Bool)

(declare-fun tp!1311504 () Bool)

(declare-fun setRes!26141 () Bool)

(declare-fun setElem!26141 () Context!5606)

(assert (=> setNonEmpty!26141 (= setRes!26141 (and tp!1311504 (inv!62941 setElem!26141) e!2660595))))

(declare-fun setRest!26141 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26141 (= (_1!25599 (_1!25600 (h!52908 (zeroValue!4548 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26141 true) setRest!26141))))

(declare-fun setIsEmpty!26141 () Bool)

(assert (=> setIsEmpty!26141 setRes!26141))

(declare-fun b!4284824 () Bool)

(declare-fun tp!1311506 () Bool)

(assert (=> b!4284824 (= e!2660596 (and setRes!26141 tp!1311506))))

(declare-fun condSetEmpty!26141 () Bool)

(assert (=> b!4284824 (= condSetEmpty!26141 (= (_1!25599 (_1!25600 (h!52908 (zeroValue!4548 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5606 Bool)) false)))))

(assert (= (and b!4284824 condSetEmpty!26141) setIsEmpty!26141))

(assert (= (and b!4284824 (not condSetEmpty!26141)) setNonEmpty!26141))

(assert (= setNonEmpty!26141 b!4284825))

(assert (= (and b!4284661 ((_ is Cons!47488) (zeroValue!4548 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156)))))))) b!4284824))

(declare-fun m!4880937 () Bool)

(assert (=> setNonEmpty!26141 m!4880937))

(declare-fun e!2660598 () Bool)

(assert (=> b!4284661 (= tp!1311370 e!2660598)))

(declare-fun b!4284827 () Bool)

(declare-fun e!2660597 () Bool)

(declare-fun tp!1311508 () Bool)

(assert (=> b!4284827 (= e!2660597 tp!1311508)))

(declare-fun setNonEmpty!26142 () Bool)

(declare-fun tp!1311507 () Bool)

(declare-fun setElem!26142 () Context!5606)

(declare-fun setRes!26142 () Bool)

(assert (=> setNonEmpty!26142 (= setRes!26142 (and tp!1311507 (inv!62941 setElem!26142) e!2660597))))

(declare-fun setRest!26142 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26142 (= (_1!25599 (_1!25600 (h!52908 (minValue!4548 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26142 true) setRest!26142))))

(declare-fun setIsEmpty!26142 () Bool)

(assert (=> setIsEmpty!26142 setRes!26142))

(declare-fun b!4284826 () Bool)

(declare-fun tp!1311509 () Bool)

(assert (=> b!4284826 (= e!2660598 (and setRes!26142 tp!1311509))))

(declare-fun condSetEmpty!26142 () Bool)

(assert (=> b!4284826 (= condSetEmpty!26142 (= (_1!25599 (_1!25600 (h!52908 (minValue!4548 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5606 Bool)) false)))))

(assert (= (and b!4284826 condSetEmpty!26142) setIsEmpty!26142))

(assert (= (and b!4284826 (not condSetEmpty!26142)) setNonEmpty!26142))

(assert (= setNonEmpty!26142 b!4284827))

(assert (= (and b!4284661 ((_ is Cons!47488) (minValue!4548 (v!41386 (underlying!8807 (v!41387 (underlying!8808 (cache!4335 cacheFindLongestMatch!156)))))))) b!4284826))

(declare-fun m!4880939 () Bool)

(assert (=> setNonEmpty!26142 m!4880939))

(declare-fun mapIsEmpty!19409 () Bool)

(declare-fun mapRes!19409 () Bool)

(assert (=> mapIsEmpty!19409 mapRes!19409))

(declare-fun setIsEmpty!26147 () Bool)

(declare-fun setRes!26148 () Bool)

(assert (=> setIsEmpty!26147 setRes!26148))

(declare-fun b!4284842 () Bool)

(declare-fun e!2660614 () Bool)

(declare-fun tp!1311533 () Bool)

(assert (=> b!4284842 (= e!2660614 tp!1311533)))

(declare-fun b!4284843 () Bool)

(declare-fun e!2660611 () Bool)

(declare-fun tp!1311532 () Bool)

(assert (=> b!4284843 (= e!2660611 tp!1311532)))

(declare-fun b!4284844 () Bool)

(declare-fun e!2660616 () Bool)

(declare-fun tp!1311529 () Bool)

(assert (=> b!4284844 (= e!2660616 tp!1311529)))

(declare-fun setNonEmpty!26147 () Bool)

(declare-fun setElem!26148 () Context!5606)

(declare-fun tp!1311530 () Bool)

(declare-fun e!2660615 () Bool)

(assert (=> setNonEmpty!26147 (= setRes!26148 (and tp!1311530 (inv!62941 setElem!26148) e!2660615))))

(declare-fun mapDefault!19409 () List!47613)

(declare-fun setRest!26148 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26147 (= (_2!25602 (h!52909 mapDefault!19409)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26148 true) setRest!26148))))

(declare-fun b!4284845 () Bool)

(declare-fun tp!1311534 () Bool)

(assert (=> b!4284845 (= e!2660615 tp!1311534)))

(declare-fun setNonEmpty!26148 () Bool)

(declare-fun setRes!26147 () Bool)

(declare-fun setElem!26147 () Context!5606)

(declare-fun tp!1311528 () Bool)

(assert (=> setNonEmpty!26148 (= setRes!26147 (and tp!1311528 (inv!62941 setElem!26147) e!2660614))))

(declare-fun mapValue!19409 () List!47613)

(declare-fun setRest!26147 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26148 (= (_2!25602 (h!52909 mapValue!19409)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26147 true) setRest!26147))))

(declare-fun b!4284847 () Bool)

(declare-fun e!2660612 () Bool)

(declare-fun tp!1311536 () Bool)

(assert (=> b!4284847 (= e!2660612 (and (inv!62941 (_1!25601 (_1!25602 (h!52909 mapDefault!19409)))) e!2660616 tp_is_empty!23061 setRes!26148 tp!1311536))))

(declare-fun condSetEmpty!26147 () Bool)

(assert (=> b!4284847 (= condSetEmpty!26147 (= (_2!25602 (h!52909 mapDefault!19409)) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun setIsEmpty!26148 () Bool)

(assert (=> setIsEmpty!26148 setRes!26147))

(declare-fun mapNonEmpty!19409 () Bool)

(declare-fun tp!1311531 () Bool)

(declare-fun e!2660613 () Bool)

(assert (=> mapNonEmpty!19409 (= mapRes!19409 (and tp!1311531 e!2660613))))

(declare-fun mapRest!19409 () (Array (_ BitVec 32) List!47613))

(declare-fun mapKey!19409 () (_ BitVec 32))

(assert (=> mapNonEmpty!19409 (= mapRest!19399 (store mapRest!19409 mapKey!19409 mapValue!19409))))

(declare-fun condMapEmpty!19409 () Bool)

(assert (=> mapNonEmpty!19398 (= condMapEmpty!19409 (= mapRest!19399 ((as const (Array (_ BitVec 32) List!47613)) mapDefault!19409)))))

(assert (=> mapNonEmpty!19398 (= tp!1311365 (and e!2660612 mapRes!19409))))

(declare-fun tp!1311535 () Bool)

(declare-fun b!4284846 () Bool)

(assert (=> b!4284846 (= e!2660613 (and (inv!62941 (_1!25601 (_1!25602 (h!52909 mapValue!19409)))) e!2660611 tp_is_empty!23061 setRes!26147 tp!1311535))))

(declare-fun condSetEmpty!26148 () Bool)

(assert (=> b!4284846 (= condSetEmpty!26148 (= (_2!25602 (h!52909 mapValue!19409)) ((as const (Array Context!5606 Bool)) false)))))

(assert (= (and mapNonEmpty!19398 condMapEmpty!19409) mapIsEmpty!19409))

(assert (= (and mapNonEmpty!19398 (not condMapEmpty!19409)) mapNonEmpty!19409))

(assert (= b!4284846 b!4284843))

(assert (= (and b!4284846 condSetEmpty!26148) setIsEmpty!26148))

(assert (= (and b!4284846 (not condSetEmpty!26148)) setNonEmpty!26148))

(assert (= setNonEmpty!26148 b!4284842))

(assert (= (and mapNonEmpty!19409 ((_ is Cons!47489) mapValue!19409)) b!4284846))

(assert (= b!4284847 b!4284844))

(assert (= (and b!4284847 condSetEmpty!26147) setIsEmpty!26147))

(assert (= (and b!4284847 (not condSetEmpty!26147)) setNonEmpty!26147))

(assert (= setNonEmpty!26147 b!4284845))

(assert (= (and mapNonEmpty!19398 ((_ is Cons!47489) mapDefault!19409)) b!4284847))

(declare-fun m!4880941 () Bool)

(assert (=> setNonEmpty!26148 m!4880941))

(declare-fun m!4880943 () Bool)

(assert (=> setNonEmpty!26147 m!4880943))

(declare-fun m!4880945 () Bool)

(assert (=> b!4284846 m!4880945))

(declare-fun m!4880947 () Bool)

(assert (=> b!4284847 m!4880947))

(declare-fun m!4880949 () Bool)

(assert (=> mapNonEmpty!19409 m!4880949))

(declare-fun e!2660619 () Bool)

(assert (=> mapNonEmpty!19398 (= tp!1311390 e!2660619)))

(declare-fun b!4284848 () Bool)

(declare-fun e!2660618 () Bool)

(declare-fun tp!1311538 () Bool)

(assert (=> b!4284848 (= e!2660618 tp!1311538)))

(declare-fun tp!1311539 () Bool)

(declare-fun e!2660617 () Bool)

(declare-fun setRes!26149 () Bool)

(declare-fun b!4284849 () Bool)

(assert (=> b!4284849 (= e!2660619 (and (inv!62941 (_1!25601 (_1!25602 (h!52909 mapValue!19398)))) e!2660617 tp_is_empty!23061 setRes!26149 tp!1311539))))

(declare-fun condSetEmpty!26149 () Bool)

(assert (=> b!4284849 (= condSetEmpty!26149 (= (_2!25602 (h!52909 mapValue!19398)) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun b!4284850 () Bool)

(declare-fun tp!1311540 () Bool)

(assert (=> b!4284850 (= e!2660617 tp!1311540)))

(declare-fun setIsEmpty!26149 () Bool)

(assert (=> setIsEmpty!26149 setRes!26149))

(declare-fun setElem!26149 () Context!5606)

(declare-fun tp!1311537 () Bool)

(declare-fun setNonEmpty!26149 () Bool)

(assert (=> setNonEmpty!26149 (= setRes!26149 (and tp!1311537 (inv!62941 setElem!26149) e!2660618))))

(declare-fun setRest!26149 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26149 (= (_2!25602 (h!52909 mapValue!19398)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26149 true) setRest!26149))))

(assert (= b!4284849 b!4284850))

(assert (= (and b!4284849 condSetEmpty!26149) setIsEmpty!26149))

(assert (= (and b!4284849 (not condSetEmpty!26149)) setNonEmpty!26149))

(assert (= setNonEmpty!26149 b!4284848))

(assert (= (and mapNonEmpty!19398 ((_ is Cons!47489) mapValue!19398)) b!4284849))

(declare-fun m!4880951 () Bool)

(assert (=> b!4284849 m!4880951))

(declare-fun m!4880953 () Bool)

(assert (=> setNonEmpty!26149 m!4880953))

(declare-fun b!4284851 () Bool)

(declare-fun tp!1311541 () Bool)

(declare-fun e!2660620 () Bool)

(declare-fun tp!1311543 () Bool)

(assert (=> b!4284851 (= e!2660620 (and (inv!62936 (left!35341 (c!730041 totalInput!528))) tp!1311543 (inv!62936 (right!35671 (c!730041 totalInput!528))) tp!1311541))))

(declare-fun b!4284853 () Bool)

(declare-fun e!2660621 () Bool)

(declare-fun tp!1311542 () Bool)

(assert (=> b!4284853 (= e!2660621 tp!1311542)))

(declare-fun b!4284852 () Bool)

(assert (=> b!4284852 (= e!2660620 (and (inv!62940 (xs!17662 (c!730041 totalInput!528))) e!2660621))))

(assert (=> b!4284660 (= tp!1311374 (and (inv!62936 (c!730041 totalInput!528)) e!2660620))))

(assert (= (and b!4284660 ((_ is Node!14356) (c!730041 totalInput!528))) b!4284851))

(assert (= b!4284852 b!4284853))

(assert (= (and b!4284660 ((_ is Leaf!22214) (c!730041 totalInput!528))) b!4284852))

(declare-fun m!4880955 () Bool)

(assert (=> b!4284851 m!4880955))

(declare-fun m!4880957 () Bool)

(assert (=> b!4284851 m!4880957))

(declare-fun m!4880959 () Bool)

(assert (=> b!4284852 m!4880959))

(assert (=> b!4284660 m!4880775))

(declare-fun b!4284854 () Bool)

(declare-fun e!2660624 () Bool)

(declare-fun tp!1311547 () Bool)

(assert (=> b!4284854 (= e!2660624 tp!1311547)))

(declare-fun e!2660623 () Bool)

(assert (=> b!4284641 (= tp!1311372 e!2660623)))

(declare-fun setIsEmpty!26150 () Bool)

(declare-fun setRes!26150 () Bool)

(assert (=> setIsEmpty!26150 setRes!26150))

(declare-fun b!4284855 () Bool)

(declare-fun e!2660622 () Bool)

(declare-fun tp!1311544 () Bool)

(assert (=> b!4284855 (= e!2660622 tp!1311544)))

(declare-fun b!4284856 () Bool)

(declare-fun tp!1311548 () Bool)

(declare-fun tp!1311546 () Bool)

(assert (=> b!4284856 (= e!2660623 (and tp!1311546 (inv!62941 (_2!25597 (_1!25598 (h!52907 mapDefault!19399)))) e!2660622 tp_is_empty!23061 setRes!26150 tp!1311548))))

(declare-fun condSetEmpty!26150 () Bool)

(assert (=> b!4284856 (= condSetEmpty!26150 (= (_2!25598 (h!52907 mapDefault!19399)) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun tp!1311545 () Bool)

(declare-fun setElem!26150 () Context!5606)

(declare-fun setNonEmpty!26150 () Bool)

(assert (=> setNonEmpty!26150 (= setRes!26150 (and tp!1311545 (inv!62941 setElem!26150) e!2660624))))

(declare-fun setRest!26150 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26150 (= (_2!25598 (h!52907 mapDefault!19399)) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26150 true) setRest!26150))))

(assert (= b!4284856 b!4284855))

(assert (= (and b!4284856 condSetEmpty!26150) setIsEmpty!26150))

(assert (= (and b!4284856 (not condSetEmpty!26150)) setNonEmpty!26150))

(assert (= setNonEmpty!26150 b!4284854))

(assert (= (and b!4284641 ((_ is Cons!47487) mapDefault!19399)) b!4284856))

(declare-fun m!4880961 () Bool)

(assert (=> b!4284856 m!4880961))

(declare-fun m!4880963 () Bool)

(assert (=> setNonEmpty!26150 m!4880963))

(declare-fun e!2660626 () Bool)

(assert (=> b!4284645 (= tp!1311384 e!2660626)))

(declare-fun b!4284858 () Bool)

(declare-fun e!2660625 () Bool)

(declare-fun tp!1311550 () Bool)

(assert (=> b!4284858 (= e!2660625 tp!1311550)))

(declare-fun tp!1311549 () Bool)

(declare-fun setElem!26151 () Context!5606)

(declare-fun setRes!26151 () Bool)

(declare-fun setNonEmpty!26151 () Bool)

(assert (=> setNonEmpty!26151 (= setRes!26151 (and tp!1311549 (inv!62941 setElem!26151) e!2660625))))

(declare-fun setRest!26151 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26151 (= (_1!25599 (_1!25600 (h!52908 mapDefault!19398))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26151 true) setRest!26151))))

(declare-fun setIsEmpty!26151 () Bool)

(assert (=> setIsEmpty!26151 setRes!26151))

(declare-fun b!4284857 () Bool)

(declare-fun tp!1311551 () Bool)

(assert (=> b!4284857 (= e!2660626 (and setRes!26151 tp!1311551))))

(declare-fun condSetEmpty!26151 () Bool)

(assert (=> b!4284857 (= condSetEmpty!26151 (= (_1!25599 (_1!25600 (h!52908 mapDefault!19398))) ((as const (Array Context!5606 Bool)) false)))))

(assert (= (and b!4284857 condSetEmpty!26151) setIsEmpty!26151))

(assert (= (and b!4284857 (not condSetEmpty!26151)) setNonEmpty!26151))

(assert (= setNonEmpty!26151 b!4284858))

(assert (= (and b!4284645 ((_ is Cons!47488) mapDefault!19398)) b!4284857))

(declare-fun m!4880965 () Bool)

(assert (=> setNonEmpty!26151 m!4880965))

(declare-fun b!4284872 () Bool)

(declare-fun e!2660629 () Bool)

(declare-fun tp!1311565 () Bool)

(declare-fun tp!1311564 () Bool)

(assert (=> b!4284872 (= e!2660629 (and tp!1311565 tp!1311564))))

(declare-fun b!4284869 () Bool)

(assert (=> b!4284869 (= e!2660629 tp_is_empty!23061)))

(assert (=> b!4284654 (= tp!1311373 e!2660629)))

(declare-fun b!4284870 () Bool)

(declare-fun tp!1311563 () Bool)

(declare-fun tp!1311562 () Bool)

(assert (=> b!4284870 (= e!2660629 (and tp!1311563 tp!1311562))))

(declare-fun b!4284871 () Bool)

(declare-fun tp!1311566 () Bool)

(assert (=> b!4284871 (= e!2660629 tp!1311566)))

(assert (= (and b!4284654 ((_ is ElementMatch!12913) (regex!8004 rule!232))) b!4284869))

(assert (= (and b!4284654 ((_ is Concat!21227) (regex!8004 rule!232))) b!4284870))

(assert (= (and b!4284654 ((_ is Star!12913) (regex!8004 rule!232))) b!4284871))

(assert (= (and b!4284654 ((_ is Union!12913) (regex!8004 rule!232))) b!4284872))

(declare-fun e!2660632 () Bool)

(assert (=> b!4284634 (= tp!1311389 e!2660632)))

(declare-fun b!4284873 () Bool)

(declare-fun e!2660631 () Bool)

(declare-fun tp!1311568 () Bool)

(assert (=> b!4284873 (= e!2660631 tp!1311568)))

(declare-fun tp!1311569 () Bool)

(declare-fun setRes!26152 () Bool)

(declare-fun b!4284874 () Bool)

(declare-fun e!2660630 () Bool)

(assert (=> b!4284874 (= e!2660632 (and (inv!62941 (_1!25601 (_1!25602 (h!52909 (zeroValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))))) e!2660630 tp_is_empty!23061 setRes!26152 tp!1311569))))

(declare-fun condSetEmpty!26152 () Bool)

(assert (=> b!4284874 (= condSetEmpty!26152 (= (_2!25602 (h!52909 (zeroValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun b!4284875 () Bool)

(declare-fun tp!1311570 () Bool)

(assert (=> b!4284875 (= e!2660630 tp!1311570)))

(declare-fun setIsEmpty!26152 () Bool)

(assert (=> setIsEmpty!26152 setRes!26152))

(declare-fun tp!1311567 () Bool)

(declare-fun setNonEmpty!26152 () Bool)

(declare-fun setElem!26152 () Context!5606)

(assert (=> setNonEmpty!26152 (= setRes!26152 (and tp!1311567 (inv!62941 setElem!26152) e!2660631))))

(declare-fun setRest!26152 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26152 (= (_2!25602 (h!52909 (zeroValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26152 true) setRest!26152))))

(assert (= b!4284874 b!4284875))

(assert (= (and b!4284874 condSetEmpty!26152) setIsEmpty!26152))

(assert (= (and b!4284874 (not condSetEmpty!26152)) setNonEmpty!26152))

(assert (= setNonEmpty!26152 b!4284873))

(assert (= (and b!4284634 ((_ is Cons!47489) (zeroValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))) b!4284874))

(declare-fun m!4880967 () Bool)

(assert (=> b!4284874 m!4880967))

(declare-fun m!4880969 () Bool)

(assert (=> setNonEmpty!26152 m!4880969))

(declare-fun e!2660635 () Bool)

(assert (=> b!4284634 (= tp!1311375 e!2660635)))

(declare-fun b!4284876 () Bool)

(declare-fun e!2660634 () Bool)

(declare-fun tp!1311572 () Bool)

(assert (=> b!4284876 (= e!2660634 tp!1311572)))

(declare-fun e!2660633 () Bool)

(declare-fun b!4284877 () Bool)

(declare-fun setRes!26153 () Bool)

(declare-fun tp!1311573 () Bool)

(assert (=> b!4284877 (= e!2660635 (and (inv!62941 (_1!25601 (_1!25602 (h!52909 (minValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))))) e!2660633 tp_is_empty!23061 setRes!26153 tp!1311573))))

(declare-fun condSetEmpty!26153 () Bool)

(assert (=> b!4284877 (= condSetEmpty!26153 (= (_2!25602 (h!52909 (minValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))) ((as const (Array Context!5606 Bool)) false)))))

(declare-fun b!4284878 () Bool)

(declare-fun tp!1311574 () Bool)

(assert (=> b!4284878 (= e!2660633 tp!1311574)))

(declare-fun setIsEmpty!26153 () Bool)

(assert (=> setIsEmpty!26153 setRes!26153))

(declare-fun setElem!26153 () Context!5606)

(declare-fun setNonEmpty!26153 () Bool)

(declare-fun tp!1311571 () Bool)

(assert (=> setNonEmpty!26153 (= setRes!26153 (and tp!1311571 (inv!62941 setElem!26153) e!2660634))))

(declare-fun setRest!26153 () (InoxSet Context!5606))

(assert (=> setNonEmpty!26153 (= (_2!25602 (h!52909 (minValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5606 Bool)) false) setElem!26153 true) setRest!26153))))

(assert (= b!4284877 b!4284878))

(assert (= (and b!4284877 condSetEmpty!26153) setIsEmpty!26153))

(assert (= (and b!4284877 (not condSetEmpty!26153)) setNonEmpty!26153))

(assert (= setNonEmpty!26153 b!4284876))

(assert (= (and b!4284634 ((_ is Cons!47489) (minValue!4549 (v!41388 (underlying!8809 (v!41389 (underlying!8810 (cache!4336 cacheUp!725)))))))) b!4284877))

(declare-fun m!4880971 () Bool)

(assert (=> b!4284877 m!4880971))

(declare-fun m!4880973 () Bool)

(assert (=> setNonEmpty!26153 m!4880973))

(check-sat (not b!4284842) (not setNonEmpty!26137) (not d!1265132) (not b!4284877) (not b!4284682) (not mapNonEmpty!19406) (not b!4284659) (not d!1265138) (not setNonEmpty!26120) (not b!4284827) (not b!4284701) (not b!4284748) b_and!338151 (not b_next!127645) (not b!4284751) (not d!1265134) (not setNonEmpty!26148) (not b!4284787) (not b!4284785) (not b!4284826) (not b!4284647) (not bm!294433) (not b!4284876) (not b!4284703) (not b!4284843) (not setNonEmpty!26133) (not b!4284764) (not mapNonEmpty!19409) (not b!4284766) (not b!4284812) (not b!4284848) (not b!4284680) (not b!4284729) (not d!1265136) (not d!1265112) (not d!1265110) (not d!1265140) (not d!1265150) (not b!4284852) (not b!4284870) (not setNonEmpty!26140) (not b!4284691) (not b!4284846) (not b!4284857) (not b!4284790) (not setNonEmpty!26151) (not b!4284699) (not b!4284802) (not b!4284854) (not b!4284872) (not setNonEmpty!26153) (not b!4284853) (not b!4284763) (not d!1265122) (not b!4284873) (not setNonEmpty!26128) (not setNonEmpty!26126) (not b!4284856) (not b!4284823) (not b!4284789) (not setNonEmpty!26141) (not b!4284762) (not setNonEmpty!26127) (not b!4284850) (not b!4284673) (not b!4284811) (not b!4284660) (not d!1265120) (not b!4284765) (not b_next!127651) (not b!4284706) (not b!4284752) (not setNonEmpty!26147) b_and!338149 (not b!4284804) (not b_next!127655) tp_is_empty!23061 (not b!4284822) b_and!338155 (not b!4284825) b_and!338145 (not b!4284845) b_and!338147 (not b!4284788) (not setNonEmpty!26150) (not b!4284849) (not b_next!127657) (not setNonEmpty!26121) (not b!4284871) (not b!4284782) (not b!4284753) (not setNonEmpty!26152) (not mapNonEmpty!19403) (not b_next!127647) (not d!1265124) (not bm!294434) (not b!4284803) (not b!4284847) (not b!4284875) (not setNonEmpty!26149) b_and!338141 (not d!1265118) (not b!4284692) (not b!4284821) (not b!4284734) (not b!4284693) (not setNonEmpty!26134) (not b!4284667) (not b!4284767) (not b!4284874) (not d!1265154) (not b_next!127649) (not b!4284858) (not b!4284784) (not b!4284736) (not b!4284824) b_and!338153 (not b_next!127653) (not b!4284783) b_and!338143 (not setNonEmpty!26142) (not b!4284786) (not b!4284801) (not b!4284750) (not b!4284739) (not b!4284749) (not b!4284851) (not b!4284670) (not d!1265116) (not b_next!127643) (not b!4284844) (not b!4284855) (not b!4284878))
(check-sat (not b_next!127651) b_and!338155 (not b_next!127657) (not b_next!127647) b_and!338141 (not b_next!127649) (not b_next!127643) b_and!338151 (not b_next!127645) b_and!338149 (not b_next!127655) b_and!338145 b_and!338147 b_and!338153 (not b_next!127653) b_and!338143)
