; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411690 () Bool)

(assert start!411690)

(declare-fun b!4285064 () Bool)

(declare-fun b_free!126971 () Bool)

(declare-fun b_next!127675 () Bool)

(assert (=> b!4285064 (= b_free!126971 (not b_next!127675))))

(declare-fun tp!1311723 () Bool)

(declare-fun b_and!338173 () Bool)

(assert (=> b!4285064 (= tp!1311723 b_and!338173)))

(declare-fun b!4285059 () Bool)

(declare-fun b_free!126973 () Bool)

(declare-fun b_next!127677 () Bool)

(assert (=> b!4285059 (= b_free!126973 (not b_next!127677))))

(declare-fun tp!1311717 () Bool)

(declare-fun b_and!338175 () Bool)

(assert (=> b!4285059 (= tp!1311717 b_and!338175)))

(declare-fun b!4285065 () Bool)

(declare-fun b_free!126975 () Bool)

(declare-fun b_next!127679 () Bool)

(assert (=> b!4285065 (= b_free!126975 (not b_next!127679))))

(declare-fun tp!1311725 () Bool)

(declare-fun b_and!338177 () Bool)

(assert (=> b!4285065 (= tp!1311725 b_and!338177)))

(declare-fun b!4285070 () Bool)

(declare-fun b_free!126977 () Bool)

(declare-fun b_next!127681 () Bool)

(assert (=> b!4285070 (= b_free!126977 (not b_next!127681))))

(declare-fun tp!1311722 () Bool)

(declare-fun b_and!338179 () Bool)

(assert (=> b!4285070 (= tp!1311722 b_and!338179)))

(declare-fun b_free!126979 () Bool)

(declare-fun b_next!127683 () Bool)

(assert (=> b!4285070 (= b_free!126979 (not b_next!127683))))

(declare-fun tp!1311710 () Bool)

(declare-fun b_and!338181 () Bool)

(assert (=> b!4285070 (= tp!1311710 b_and!338181)))

(declare-fun b!4285087 () Bool)

(declare-fun b_free!126981 () Bool)

(declare-fun b_next!127685 () Bool)

(assert (=> b!4285087 (= b_free!126981 (not b_next!127685))))

(declare-fun tp!1311729 () Bool)

(declare-fun b_and!338183 () Bool)

(assert (=> b!4285087 (= tp!1311729 b_and!338183)))

(declare-fun b!4285069 () Bool)

(declare-fun b_free!126983 () Bool)

(declare-fun b_next!127687 () Bool)

(assert (=> b!4285069 (= b_free!126983 (not b_next!127687))))

(declare-fun tp!1311720 () Bool)

(declare-fun b_and!338185 () Bool)

(assert (=> b!4285069 (= tp!1311720 b_and!338185)))

(declare-fun b!4285071 () Bool)

(declare-fun b_free!126985 () Bool)

(declare-fun b_next!127689 () Bool)

(assert (=> b!4285071 (= b_free!126985 (not b_next!127689))))

(declare-fun tp!1311734 () Bool)

(declare-fun b_and!338187 () Bool)

(assert (=> b!4285071 (= tp!1311734 b_and!338187)))

(declare-fun e!2660816 () Bool)

(declare-fun e!2660809 () Bool)

(assert (=> b!4285059 (= e!2660816 (and e!2660809 tp!1311717))))

(declare-fun b!4285060 () Bool)

(declare-fun e!2660833 () Bool)

(declare-fun tp!1311726 () Bool)

(declare-fun mapRes!19426 () Bool)

(assert (=> b!4285060 (= e!2660833 (and tp!1311726 mapRes!19426))))

(declare-fun condMapEmpty!19426 () Bool)

(declare-datatypes ((C!26028 0))(
  ( (C!26029 (val!15340 Int)) )
))
(declare-datatypes ((Regex!12915 0))(
  ( (ElementMatch!12915 (c!730056 C!26028)) (Concat!21231 (regOne!26342 Regex!12915) (regTwo!26342 Regex!12915)) (EmptyExpr!12915) (Star!12915 (reg!13244 Regex!12915)) (EmptyLang!12915) (Union!12915 (regOne!26343 Regex!12915) (regTwo!26343 Regex!12915)) )
))
(declare-datatypes ((List!47621 0))(
  ( (Nil!47497) (Cons!47497 (h!52917 Regex!12915) (t!354210 List!47621)) )
))
(declare-datatypes ((Context!5610 0))(
  ( (Context!5611 (exprs!3305 List!47621)) )
))
(declare-datatypes ((tuple2!44916 0))(
  ( (tuple2!44917 (_1!25613 Context!5610) (_2!25613 C!26028)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44918 0))(
  ( (tuple2!44919 (_1!25614 tuple2!44916) (_2!25614 (InoxSet Context!5610))) )
))
(declare-datatypes ((List!47622 0))(
  ( (Nil!47498) (Cons!47498 (h!52918 tuple2!44918) (t!354211 List!47622)) )
))
(declare-datatypes ((array!15404 0))(
  ( (array!15405 (arr!6876 (Array (_ BitVec 32) (_ BitVec 64))) (size!34811 (_ BitVec 32))) )
))
(declare-datatypes ((array!15406 0))(
  ( (array!15407 (arr!6877 (Array (_ BitVec 32) List!47622)) (size!34812 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8588 0))(
  ( (LongMapFixedSize!8589 (defaultEntry!4679 Int) (mask!12721 (_ BitVec 32)) (extraKeys!4543 (_ BitVec 32)) (zeroValue!4553 List!47622) (minValue!4553 List!47622) (_size!8631 (_ BitVec 32)) (_keys!4594 array!15404) (_values!4575 array!15406) (_vacant!4355 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16985 0))(
  ( (Cell!16986 (v!41396 LongMapFixedSize!8588)) )
))
(declare-datatypes ((MutLongMap!4294 0))(
  ( (LongMap!4294 (underlying!8817 Cell!16985)) (MutLongMapExt!4293 (__x!28902 Int)) )
))
(declare-datatypes ((Cell!16987 0))(
  ( (Cell!16988 (v!41397 MutLongMap!4294)) )
))
(declare-datatypes ((Hashable!4210 0))(
  ( (HashableExt!4209 (__x!28903 Int)) )
))
(declare-datatypes ((MutableMap!4200 0))(
  ( (MutableMapExt!4199 (__x!28904 Int)) (HashMap!4200 (underlying!8818 Cell!16987) (hashF!6242 Hashable!4210) (_size!8632 (_ BitVec 32)) (defaultValue!4371 Int)) )
))
(declare-datatypes ((CacheUp!2742 0))(
  ( (CacheUp!2743 (cache!4340 MutableMap!4200)) )
))
(declare-fun cacheUp!725 () CacheUp!2742)

(declare-fun mapDefault!19426 () List!47622)

(assert (=> b!4285060 (= condMapEmpty!19426 (= (arr!6877 (_values!4575 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47622)) mapDefault!19426)))))

(declare-fun mapIsEmpty!19425 () Bool)

(declare-fun mapRes!19427 () Bool)

(assert (=> mapIsEmpty!19425 mapRes!19427))

(declare-fun res!1758175 () Bool)

(declare-fun e!2660825 () Bool)

(assert (=> start!411690 (=> (not res!1758175) (not e!2660825))))

(declare-datatypes ((LexerInterface!7599 0))(
  ( (LexerInterfaceExt!7596 (__x!28905 Int)) (Lexer!7597) )
))
(declare-fun thiss!16356 () LexerInterface!7599)

(get-info :version)

(assert (=> start!411690 (= res!1758175 ((_ is Lexer!7597) thiss!16356))))

(assert (=> start!411690 e!2660825))

(assert (=> start!411690 true))

(declare-fun e!2660818 () Bool)

(assert (=> start!411690 e!2660818))

(declare-datatypes ((List!47623 0))(
  ( (Nil!47499) (Cons!47499 (h!52919 C!26028) (t!354212 List!47623)) )
))
(declare-datatypes ((IArray!28777 0))(
  ( (IArray!28778 (innerList!14446 List!47623)) )
))
(declare-datatypes ((Conc!14358 0))(
  ( (Node!14358 (left!35344 Conc!14358) (right!35674 Conc!14358) (csize!28946 Int) (cheight!14569 Int)) (Leaf!22217 (xs!17664 IArray!28777) (csize!28947 Int)) (Empty!14358) )
))
(declare-datatypes ((BalanceConc!28206 0))(
  ( (BalanceConc!28207 (c!730057 Conc!14358)) )
))
(declare-fun input!1632 () BalanceConc!28206)

(declare-fun e!2660808 () Bool)

(declare-fun inv!62945 (BalanceConc!28206) Bool)

(assert (=> start!411690 (and (inv!62945 input!1632) e!2660808)))

(declare-datatypes ((Hashable!4211 0))(
  ( (HashableExt!4210 (__x!28906 Int)) )
))
(declare-datatypes ((tuple3!5354 0))(
  ( (tuple3!5355 (_1!25615 Regex!12915) (_2!25615 Context!5610) (_3!3155 C!26028)) )
))
(declare-datatypes ((tuple2!44920 0))(
  ( (tuple2!44921 (_1!25616 tuple3!5354) (_2!25616 (InoxSet Context!5610))) )
))
(declare-datatypes ((List!47624 0))(
  ( (Nil!47500) (Cons!47500 (h!52920 tuple2!44920) (t!354213 List!47624)) )
))
(declare-datatypes ((array!15408 0))(
  ( (array!15409 (arr!6878 (Array (_ BitVec 32) List!47624)) (size!34813 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8590 0))(
  ( (LongMapFixedSize!8591 (defaultEntry!4680 Int) (mask!12722 (_ BitVec 32)) (extraKeys!4544 (_ BitVec 32)) (zeroValue!4554 List!47624) (minValue!4554 List!47624) (_size!8633 (_ BitVec 32)) (_keys!4595 array!15404) (_values!4576 array!15408) (_vacant!4356 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16989 0))(
  ( (Cell!16990 (v!41398 LongMapFixedSize!8590)) )
))
(declare-datatypes ((MutLongMap!4295 0))(
  ( (LongMap!4295 (underlying!8819 Cell!16989)) (MutLongMapExt!4294 (__x!28907 Int)) )
))
(declare-datatypes ((Cell!16991 0))(
  ( (Cell!16992 (v!41399 MutLongMap!4295)) )
))
(declare-datatypes ((MutableMap!4201 0))(
  ( (MutableMapExt!4200 (__x!28908 Int)) (HashMap!4201 (underlying!8820 Cell!16991) (hashF!6243 Hashable!4211) (_size!8634 (_ BitVec 32)) (defaultValue!4372 Int)) )
))
(declare-datatypes ((CacheDown!2862 0))(
  ( (CacheDown!2863 (cache!4341 MutableMap!4201)) )
))
(declare-fun cacheDown!738 () CacheDown!2862)

(declare-fun e!2660838 () Bool)

(declare-fun inv!62946 (CacheDown!2862) Bool)

(assert (=> start!411690 (and (inv!62946 cacheDown!738) e!2660838)))

(declare-datatypes ((Hashable!4212 0))(
  ( (HashableExt!4211 (__x!28909 Int)) )
))
(declare-datatypes ((tuple2!44922 0))(
  ( (tuple2!44923 (_1!25617 (InoxSet Context!5610)) (_2!25617 Int)) )
))
(declare-datatypes ((tuple2!44924 0))(
  ( (tuple2!44925 (_1!25618 tuple2!44922) (_2!25618 Int)) )
))
(declare-datatypes ((List!47625 0))(
  ( (Nil!47501) (Cons!47501 (h!52921 tuple2!44924) (t!354214 List!47625)) )
))
(declare-datatypes ((array!15410 0))(
  ( (array!15411 (arr!6879 (Array (_ BitVec 32) List!47625)) (size!34814 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8592 0))(
  ( (LongMapFixedSize!8593 (defaultEntry!4681 Int) (mask!12723 (_ BitVec 32)) (extraKeys!4545 (_ BitVec 32)) (zeroValue!4555 List!47625) (minValue!4555 List!47625) (_size!8635 (_ BitVec 32)) (_keys!4596 array!15404) (_values!4577 array!15410) (_vacant!4357 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16993 0))(
  ( (Cell!16994 (v!41400 LongMapFixedSize!8592)) )
))
(declare-datatypes ((MutLongMap!4296 0))(
  ( (LongMap!4296 (underlying!8821 Cell!16993)) (MutLongMapExt!4295 (__x!28910 Int)) )
))
(declare-datatypes ((Cell!16995 0))(
  ( (Cell!16996 (v!41401 MutLongMap!4296)) )
))
(declare-datatypes ((MutableMap!4202 0))(
  ( (MutableMapExt!4201 (__x!28911 Int)) (HashMap!4202 (underlying!8822 Cell!16995) (hashF!6244 Hashable!4212) (_size!8636 (_ BitVec 32)) (defaultValue!4373 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!404 0))(
  ( (CacheFindLongestMatch!405 (cache!4342 MutableMap!4202) (totalInput!4305 BalanceConc!28206)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!404)

(declare-fun e!2660807 () Bool)

(declare-fun inv!62947 (CacheFindLongestMatch!404) Bool)

(assert (=> start!411690 (and (inv!62947 cacheFindLongestMatch!156) e!2660807)))

(declare-fun totalInput!528 () BalanceConc!28206)

(declare-fun e!2660827 () Bool)

(assert (=> start!411690 (and (inv!62945 totalInput!528) e!2660827)))

(declare-fun e!2660819 () Bool)

(declare-fun inv!62948 (CacheUp!2742) Bool)

(assert (=> start!411690 (and (inv!62948 cacheUp!725) e!2660819)))

(declare-fun b!4285061 () Bool)

(assert (=> b!4285061 (= e!2660819 e!2660816)))

(declare-fun b!4285062 () Bool)

(declare-fun e!2660814 () Bool)

(declare-fun e!2660829 () Bool)

(assert (=> b!4285062 (= e!2660814 e!2660829)))

(declare-fun b!4285063 () Bool)

(declare-fun tp!1311718 () Bool)

(declare-fun inv!62949 (Conc!14358) Bool)

(assert (=> b!4285063 (= e!2660808 (and (inv!62949 (c!730057 input!1632)) tp!1311718))))

(declare-fun e!2660824 () Bool)

(declare-fun e!2660826 () Bool)

(declare-fun tp!1311735 () Bool)

(declare-fun tp!1311721 () Bool)

(declare-fun array_inv!4924 (array!15404) Bool)

(declare-fun array_inv!4925 (array!15408) Bool)

(assert (=> b!4285064 (= e!2660826 (and tp!1311723 tp!1311735 tp!1311721 (array_inv!4924 (_keys!4595 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) (array_inv!4925 (_values!4576 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) e!2660824))))

(declare-fun e!2660828 () Bool)

(declare-fun tp!1311733 () Bool)

(declare-fun tp!1311716 () Bool)

(declare-fun e!2660839 () Bool)

(declare-fun array_inv!4926 (array!15410) Bool)

(assert (=> b!4285065 (= e!2660828 (and tp!1311725 tp!1311716 tp!1311733 (array_inv!4924 (_keys!4596 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) (array_inv!4926 (_values!4577 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) e!2660839))))

(declare-fun mapNonEmpty!19425 () Bool)

(declare-fun mapRes!19425 () Bool)

(declare-fun tp!1311732 () Bool)

(declare-fun tp!1311724 () Bool)

(assert (=> mapNonEmpty!19425 (= mapRes!19425 (and tp!1311732 tp!1311724))))

(declare-fun mapValue!19426 () List!47624)

(declare-fun mapKey!19425 () (_ BitVec 32))

(declare-fun mapRest!19426 () (Array (_ BitVec 32) List!47624))

(assert (=> mapNonEmpty!19425 (= (arr!6878 (_values!4576 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) (store mapRest!19426 mapKey!19425 mapValue!19426))))

(declare-fun e!2660837 () Bool)

(declare-datatypes ((List!47626 0))(
  ( (Nil!47502) (Cons!47502 (h!52922 (_ BitVec 16)) (t!354215 List!47626)) )
))
(declare-datatypes ((TokenValue!8316 0))(
  ( (FloatLiteralValue!16632 (text!58657 List!47626)) (TokenValueExt!8315 (__x!28912 Int)) (Broken!41580 (value!250960 List!47626)) (Object!8439) (End!8316) (Def!8316) (Underscore!8316) (Match!8316) (Else!8316) (Error!8316) (Case!8316) (If!8316) (Extends!8316) (Abstract!8316) (Class!8316) (Val!8316) (DelimiterValue!16632 (del!8376 List!47626)) (KeywordValue!8322 (value!250961 List!47626)) (CommentValue!16632 (value!250962 List!47626)) (WhitespaceValue!16632 (value!250963 List!47626)) (IndentationValue!8316 (value!250964 List!47626)) (String!55577) (Int32!8316) (Broken!41581 (value!250965 List!47626)) (Boolean!8317) (Unit!66374) (OperatorValue!8319 (op!8376 List!47626)) (IdentifierValue!16632 (value!250966 List!47626)) (IdentifierValue!16633 (value!250967 List!47626)) (WhitespaceValue!16633 (value!250968 List!47626)) (True!16632) (False!16632) (Broken!41582 (value!250969 List!47626)) (Broken!41583 (value!250970 List!47626)) (True!16633) (RightBrace!8316) (RightBracket!8316) (Colon!8316) (Null!8316) (Comma!8316) (LeftBracket!8316) (False!16633) (LeftBrace!8316) (ImaginaryLiteralValue!8316 (text!58658 List!47626)) (StringLiteralValue!24948 (value!250971 List!47626)) (EOFValue!8316 (value!250972 List!47626)) (IdentValue!8316 (value!250973 List!47626)) (DelimiterValue!16633 (value!250974 List!47626)) (DedentValue!8316 (value!250975 List!47626)) (NewLineValue!8316 (value!250976 List!47626)) (IntegerValue!24948 (value!250977 (_ BitVec 32)) (text!58659 List!47626)) (IntegerValue!24949 (value!250978 Int) (text!58660 List!47626)) (Times!8316) (Or!8316) (Equal!8316) (Minus!8316) (Broken!41584 (value!250979 List!47626)) (And!8316) (Div!8316) (LessEqual!8316) (Mod!8316) (Concat!21232) (Not!8316) (Plus!8316) (SpaceValue!8316 (value!250980 List!47626)) (IntegerValue!24950 (value!250981 Int) (text!58661 List!47626)) (StringLiteralValue!24949 (text!58662 List!47626)) (FloatLiteralValue!16633 (text!58663 List!47626)) (BytesLiteralValue!8316 (value!250982 List!47626)) (CommentValue!16633 (value!250983 List!47626)) (StringLiteralValue!24950 (value!250984 List!47626)) (ErrorTokenValue!8316 (msg!8377 List!47626)) )
))
(declare-datatypes ((String!55578 0))(
  ( (String!55579 (value!250985 String)) )
))
(declare-datatypes ((TokenValueInjection!15940 0))(
  ( (TokenValueInjection!15941 (toValue!10857 Int) (toChars!10716 Int)) )
))
(declare-datatypes ((Rule!15812 0))(
  ( (Rule!15813 (regex!8006 Regex!12915) (tag!8870 String!55578) (isSeparator!8006 Bool) (transformation!8006 TokenValueInjection!15940)) )
))
(declare-fun rule!232 () Rule!15812)

(declare-fun tp!1311714 () Bool)

(declare-fun b!4285066 () Bool)

(declare-fun inv!62944 (String!55578) Bool)

(declare-fun inv!62950 (TokenValueInjection!15940) Bool)

(assert (=> b!4285066 (= e!2660818 (and tp!1311714 (inv!62944 (tag!8870 rule!232)) (inv!62950 (transformation!8006 rule!232)) e!2660837))))

(declare-fun b!4285067 () Bool)

(declare-fun e!2660813 () Bool)

(declare-fun e!2660806 () Bool)

(assert (=> b!4285067 (= e!2660813 e!2660806)))

(declare-fun b!4285068 () Bool)

(declare-fun res!1758176 () Bool)

(assert (=> b!4285068 (=> (not res!1758176) (not e!2660825))))

(declare-fun valid!3334 (CacheDown!2862) Bool)

(assert (=> b!4285068 (= res!1758176 (valid!3334 cacheDown!738))))

(declare-fun e!2660822 () Bool)

(declare-fun e!2660815 () Bool)

(assert (=> b!4285069 (= e!2660822 (and e!2660815 tp!1311720))))

(declare-fun mapIsEmpty!19426 () Bool)

(assert (=> mapIsEmpty!19426 mapRes!19425))

(assert (=> b!4285070 (= e!2660837 (and tp!1311722 tp!1311710))))

(declare-fun e!2660832 () Bool)

(declare-fun e!2660820 () Bool)

(assert (=> b!4285071 (= e!2660832 (and e!2660820 tp!1311734))))

(declare-fun mapNonEmpty!19426 () Bool)

(declare-fun tp!1311719 () Bool)

(declare-fun tp!1311713 () Bool)

(assert (=> mapNonEmpty!19426 (= mapRes!19427 (and tp!1311719 tp!1311713))))

(declare-fun mapKey!19426 () (_ BitVec 32))

(declare-fun mapRest!19427 () (Array (_ BitVec 32) List!47625))

(declare-fun mapValue!19425 () List!47625)

(assert (=> mapNonEmpty!19426 (= (arr!6879 (_values!4577 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) (store mapRest!19427 mapKey!19426 mapValue!19425))))

(declare-fun b!4285072 () Bool)

(declare-fun e!2660830 () Bool)

(assert (=> b!4285072 (= e!2660825 e!2660830)))

(declare-fun res!1758183 () Bool)

(assert (=> b!4285072 (=> (not res!1758183) (not e!2660830))))

(declare-fun lt!1515662 () List!47623)

(declare-fun isSuffix!1012 (List!47623 List!47623) Bool)

(declare-fun list!17325 (BalanceConc!28206) List!47623)

(assert (=> b!4285072 (= res!1758183 (isSuffix!1012 lt!1515662 (list!17325 totalInput!528)))))

(assert (=> b!4285072 (= lt!1515662 (list!17325 input!1632))))

(declare-fun b!4285073 () Bool)

(declare-fun e!2660811 () Bool)

(declare-fun e!2660817 () Bool)

(assert (=> b!4285073 (= e!2660811 e!2660817)))

(declare-fun b!4285074 () Bool)

(declare-fun tp!1311731 () Bool)

(assert (=> b!4285074 (= e!2660824 (and tp!1311731 mapRes!19425))))

(declare-fun condMapEmpty!19427 () Bool)

(declare-fun mapDefault!19425 () List!47624)

(assert (=> b!4285074 (= condMapEmpty!19427 (= (arr!6878 (_values!4576 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47624)) mapDefault!19425)))))

(declare-fun b!4285075 () Bool)

(declare-fun res!1758179 () Bool)

(assert (=> b!4285075 (=> (not res!1758179) (not e!2660825))))

(declare-fun valid!3335 (CacheUp!2742) Bool)

(assert (=> b!4285075 (= res!1758179 (valid!3335 cacheUp!725))))

(declare-fun b!4285076 () Bool)

(declare-fun e!2660831 () Bool)

(assert (=> b!4285076 (= e!2660817 e!2660831)))

(declare-fun mapNonEmpty!19427 () Bool)

(declare-fun tp!1311712 () Bool)

(declare-fun tp!1311715 () Bool)

(assert (=> mapNonEmpty!19427 (= mapRes!19426 (and tp!1311712 tp!1311715))))

(declare-fun mapRest!19425 () (Array (_ BitVec 32) List!47622))

(declare-fun mapValue!19427 () List!47622)

(declare-fun mapKey!19427 () (_ BitVec 32))

(assert (=> mapNonEmpty!19427 (= (arr!6877 (_values!4575 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) (store mapRest!19425 mapKey!19427 mapValue!19427))))

(declare-fun b!4285077 () Bool)

(declare-fun e!2660823 () Bool)

(declare-fun tp!1311727 () Bool)

(assert (=> b!4285077 (= e!2660823 (and (inv!62949 (c!730057 (totalInput!4305 cacheFindLongestMatch!156))) tp!1311727))))

(declare-fun b!4285078 () Bool)

(declare-fun res!1758180 () Bool)

(assert (=> b!4285078 (=> (not res!1758180) (not e!2660825))))

(declare-fun ruleValid!3621 (LexerInterface!7599 Rule!15812) Bool)

(assert (=> b!4285078 (= res!1758180 (ruleValid!3621 thiss!16356 rule!232))))

(declare-fun b!4285079 () Bool)

(declare-fun res!1758178 () Bool)

(declare-fun e!2660812 () Bool)

(assert (=> b!4285079 (=> (not res!1758178) (not e!2660812))))

(declare-datatypes ((tuple2!44926 0))(
  ( (tuple2!44927 (_1!25619 BalanceConc!28206) (_2!25619 BalanceConc!28206)) )
))
(declare-datatypes ((tuple4!956 0))(
  ( (tuple4!957 (_1!25620 tuple2!44926) (_2!25620 CacheUp!2742) (_3!3156 CacheDown!2862) (_4!478 CacheFindLongestMatch!404)) )
))
(declare-fun lt!1515658 () tuple4!956)

(declare-fun isEmpty!28015 (BalanceConc!28206) Bool)

(assert (=> b!4285079 (= res!1758178 (not (isEmpty!28015 (_1!25619 (_1!25620 lt!1515658)))))))

(declare-fun b!4285080 () Bool)

(declare-fun tp!1311728 () Bool)

(assert (=> b!4285080 (= e!2660839 (and tp!1311728 mapRes!19427))))

(declare-fun condMapEmpty!19425 () Bool)

(declare-fun mapDefault!19427 () List!47625)

(assert (=> b!4285080 (= condMapEmpty!19425 (= (arr!6879 (_values!4577 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47625)) mapDefault!19427)))))

(declare-fun b!4285081 () Bool)

(declare-datatypes ((Token!14614 0))(
  ( (Token!14615 (value!250986 TokenValue!8316) (rule!11130 Rule!15812) (size!34815 Int) (originalCharacters!8338 List!47623)) )
))
(declare-fun inv!62951 (Token!14614) Bool)

(declare-fun apply!10825 (TokenValueInjection!15940 BalanceConc!28206) TokenValue!8316)

(declare-fun size!34816 (BalanceConc!28206) Int)

(assert (=> b!4285081 (= e!2660812 (not (inv!62951 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658)))))))))

(declare-datatypes ((Unit!66375 0))(
  ( (Unit!66376) )
))
(declare-fun lt!1515656 () Unit!66375)

(declare-fun lemmaSemiInverse!2545 (TokenValueInjection!15940 BalanceConc!28206) Unit!66375)

(assert (=> b!4285081 (= lt!1515656 (lemmaSemiInverse!2545 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))))))

(declare-fun e!2660836 () Bool)

(assert (=> b!4285081 e!2660836))

(declare-fun res!1758181 () Bool)

(assert (=> b!4285081 (=> res!1758181 e!2660836)))

(declare-datatypes ((tuple2!44928 0))(
  ( (tuple2!44929 (_1!25621 List!47623) (_2!25621 List!47623)) )
))
(declare-fun lt!1515660 () tuple2!44928)

(declare-fun isEmpty!28016 (List!47623) Bool)

(assert (=> b!4285081 (= res!1758181 (isEmpty!28016 (_1!25621 lt!1515660)))))

(declare-fun findLongestMatchInner!1714 (Regex!12915 List!47623 Int List!47623 List!47623 Int) tuple2!44928)

(declare-fun size!34817 (List!47623) Int)

(assert (=> b!4285081 (= lt!1515660 (findLongestMatchInner!1714 (regex!8006 rule!232) Nil!47499 (size!34817 Nil!47499) lt!1515662 lt!1515662 (size!34817 lt!1515662)))))

(declare-fun lt!1515663 () Unit!66375)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1677 (Regex!12915 List!47623) Unit!66375)

(assert (=> b!4285081 (= lt!1515663 (longestMatchIsAcceptedByMatchOrIsEmpty!1677 (regex!8006 rule!232) lt!1515662))))

(declare-fun b!4285082 () Bool)

(assert (=> b!4285082 (= e!2660806 e!2660828)))

(declare-fun b!4285083 () Bool)

(declare-fun res!1758184 () Bool)

(assert (=> b!4285083 (=> (not res!1758184) (not e!2660825))))

(declare-fun valid!3336 (CacheFindLongestMatch!404) Bool)

(assert (=> b!4285083 (= res!1758184 (valid!3336 cacheFindLongestMatch!156))))

(declare-fun b!4285084 () Bool)

(assert (=> b!4285084 (= e!2660829 e!2660826)))

(declare-fun mapIsEmpty!19427 () Bool)

(assert (=> mapIsEmpty!19427 mapRes!19426))

(declare-fun b!4285085 () Bool)

(assert (=> b!4285085 (= e!2660838 e!2660832)))

(declare-fun b!4285086 () Bool)

(assert (=> b!4285086 (= e!2660807 (and e!2660822 (inv!62945 (totalInput!4305 cacheFindLongestMatch!156)) e!2660823))))

(declare-fun tp!1311711 () Bool)

(declare-fun tp!1311730 () Bool)

(declare-fun array_inv!4927 (array!15406) Bool)

(assert (=> b!4285087 (= e!2660831 (and tp!1311729 tp!1311711 tp!1311730 (array_inv!4924 (_keys!4594 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) (array_inv!4927 (_values!4575 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) e!2660833))))

(declare-fun b!4285088 () Bool)

(declare-fun lt!1515661 () MutLongMap!4295)

(assert (=> b!4285088 (= e!2660820 (and e!2660814 ((_ is LongMap!4295) lt!1515661)))))

(assert (=> b!4285088 (= lt!1515661 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))

(declare-fun b!4285089 () Bool)

(declare-fun tp!1311736 () Bool)

(assert (=> b!4285089 (= e!2660827 (and (inv!62949 (c!730057 totalInput!528)) tp!1311736))))

(declare-fun b!4285090 () Bool)

(declare-fun lt!1515657 () MutLongMap!4294)

(assert (=> b!4285090 (= e!2660809 (and e!2660811 ((_ is LongMap!4294) lt!1515657)))))

(assert (=> b!4285090 (= lt!1515657 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))

(declare-fun b!4285091 () Bool)

(declare-fun lt!1515659 () MutLongMap!4296)

(assert (=> b!4285091 (= e!2660815 (and e!2660813 ((_ is LongMap!4296) lt!1515659)))))

(assert (=> b!4285091 (= lt!1515659 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))

(declare-fun b!4285092 () Bool)

(declare-fun matchR!6485 (Regex!12915 List!47623) Bool)

(assert (=> b!4285092 (= e!2660836 (matchR!6485 (regex!8006 rule!232) (_1!25621 lt!1515660)))))

(declare-fun b!4285093 () Bool)

(assert (=> b!4285093 (= e!2660830 e!2660812)))

(declare-fun res!1758182 () Bool)

(assert (=> b!4285093 (=> (not res!1758182) (not e!2660812))))

(declare-fun findLongestMatchWithZipperSequenceV2!121 (Regex!12915 BalanceConc!28206 BalanceConc!28206) tuple2!44926)

(assert (=> b!4285093 (= res!1758182 (= (_1!25620 lt!1515658) (findLongestMatchWithZipperSequenceV2!121 (regex!8006 rule!232) input!1632 totalInput!528)))))

(declare-fun findLongestMatchWithZipperSequenceV2Mem!44 (Regex!12915 BalanceConc!28206 BalanceConc!28206 CacheUp!2742 CacheDown!2862 CacheFindLongestMatch!404) tuple4!956)

(assert (=> b!4285093 (= lt!1515658 (findLongestMatchWithZipperSequenceV2Mem!44 (regex!8006 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun b!4285094 () Bool)

(declare-fun res!1758177 () Bool)

(assert (=> b!4285094 (=> (not res!1758177) (not e!2660830))))

(assert (=> b!4285094 (= res!1758177 (= (totalInput!4305 cacheFindLongestMatch!156) totalInput!528))))

(assert (= (and start!411690 res!1758175) b!4285078))

(assert (= (and b!4285078 res!1758180) b!4285075))

(assert (= (and b!4285075 res!1758179) b!4285068))

(assert (= (and b!4285068 res!1758176) b!4285083))

(assert (= (and b!4285083 res!1758184) b!4285072))

(assert (= (and b!4285072 res!1758183) b!4285094))

(assert (= (and b!4285094 res!1758177) b!4285093))

(assert (= (and b!4285093 res!1758182) b!4285079))

(assert (= (and b!4285079 res!1758178) b!4285081))

(assert (= (and b!4285081 (not res!1758181)) b!4285092))

(assert (= b!4285066 b!4285070))

(assert (= start!411690 b!4285066))

(assert (= start!411690 b!4285063))

(assert (= (and b!4285074 condMapEmpty!19427) mapIsEmpty!19426))

(assert (= (and b!4285074 (not condMapEmpty!19427)) mapNonEmpty!19425))

(assert (= b!4285064 b!4285074))

(assert (= b!4285084 b!4285064))

(assert (= b!4285062 b!4285084))

(assert (= (and b!4285088 ((_ is LongMap!4295) (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))) b!4285062))

(assert (= b!4285071 b!4285088))

(assert (= (and b!4285085 ((_ is HashMap!4201) (cache!4341 cacheDown!738))) b!4285071))

(assert (= start!411690 b!4285085))

(assert (= (and b!4285080 condMapEmpty!19425) mapIsEmpty!19425))

(assert (= (and b!4285080 (not condMapEmpty!19425)) mapNonEmpty!19426))

(assert (= b!4285065 b!4285080))

(assert (= b!4285082 b!4285065))

(assert (= b!4285067 b!4285082))

(assert (= (and b!4285091 ((_ is LongMap!4296) (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))) b!4285067))

(assert (= b!4285069 b!4285091))

(assert (= (and b!4285086 ((_ is HashMap!4202) (cache!4342 cacheFindLongestMatch!156))) b!4285069))

(assert (= b!4285086 b!4285077))

(assert (= start!411690 b!4285086))

(assert (= start!411690 b!4285089))

(assert (= (and b!4285060 condMapEmpty!19426) mapIsEmpty!19427))

(assert (= (and b!4285060 (not condMapEmpty!19426)) mapNonEmpty!19427))

(assert (= b!4285087 b!4285060))

(assert (= b!4285076 b!4285087))

(assert (= b!4285073 b!4285076))

(assert (= (and b!4285090 ((_ is LongMap!4294) (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))) b!4285073))

(assert (= b!4285059 b!4285090))

(assert (= (and b!4285061 ((_ is HashMap!4200) (cache!4340 cacheUp!725))) b!4285059))

(assert (= start!411690 b!4285061))

(declare-fun m!4881057 () Bool)

(assert (=> b!4285063 m!4881057))

(declare-fun m!4881059 () Bool)

(assert (=> b!4285092 m!4881059))

(declare-fun m!4881061 () Bool)

(assert (=> mapNonEmpty!19426 m!4881061))

(declare-fun m!4881063 () Bool)

(assert (=> b!4285081 m!4881063))

(declare-fun m!4881065 () Bool)

(assert (=> b!4285081 m!4881065))

(declare-fun m!4881067 () Bool)

(assert (=> b!4285081 m!4881067))

(declare-fun m!4881069 () Bool)

(assert (=> b!4285081 m!4881069))

(declare-fun m!4881071 () Bool)

(assert (=> b!4285081 m!4881071))

(declare-fun m!4881073 () Bool)

(assert (=> b!4285081 m!4881073))

(declare-fun m!4881075 () Bool)

(assert (=> b!4285081 m!4881075))

(assert (=> b!4285081 m!4881067))

(declare-fun m!4881077 () Bool)

(assert (=> b!4285081 m!4881077))

(declare-fun m!4881079 () Bool)

(assert (=> b!4285081 m!4881079))

(declare-fun m!4881081 () Bool)

(assert (=> b!4285081 m!4881081))

(assert (=> b!4285081 m!4881075))

(declare-fun m!4881083 () Bool)

(assert (=> b!4285079 m!4881083))

(declare-fun m!4881085 () Bool)

(assert (=> b!4285068 m!4881085))

(declare-fun m!4881087 () Bool)

(assert (=> b!4285083 m!4881087))

(declare-fun m!4881089 () Bool)

(assert (=> b!4285075 m!4881089))

(declare-fun m!4881091 () Bool)

(assert (=> b!4285065 m!4881091))

(declare-fun m!4881093 () Bool)

(assert (=> b!4285065 m!4881093))

(declare-fun m!4881095 () Bool)

(assert (=> start!411690 m!4881095))

(declare-fun m!4881097 () Bool)

(assert (=> start!411690 m!4881097))

(declare-fun m!4881099 () Bool)

(assert (=> start!411690 m!4881099))

(declare-fun m!4881101 () Bool)

(assert (=> start!411690 m!4881101))

(declare-fun m!4881103 () Bool)

(assert (=> start!411690 m!4881103))

(declare-fun m!4881105 () Bool)

(assert (=> b!4285086 m!4881105))

(declare-fun m!4881107 () Bool)

(assert (=> b!4285078 m!4881107))

(declare-fun m!4881109 () Bool)

(assert (=> b!4285064 m!4881109))

(declare-fun m!4881111 () Bool)

(assert (=> b!4285064 m!4881111))

(declare-fun m!4881113 () Bool)

(assert (=> b!4285077 m!4881113))

(declare-fun m!4881115 () Bool)

(assert (=> b!4285066 m!4881115))

(declare-fun m!4881117 () Bool)

(assert (=> b!4285066 m!4881117))

(declare-fun m!4881119 () Bool)

(assert (=> mapNonEmpty!19427 m!4881119))

(declare-fun m!4881121 () Bool)

(assert (=> b!4285072 m!4881121))

(assert (=> b!4285072 m!4881121))

(declare-fun m!4881123 () Bool)

(assert (=> b!4285072 m!4881123))

(declare-fun m!4881125 () Bool)

(assert (=> b!4285072 m!4881125))

(declare-fun m!4881127 () Bool)

(assert (=> mapNonEmpty!19425 m!4881127))

(declare-fun m!4881129 () Bool)

(assert (=> b!4285093 m!4881129))

(declare-fun m!4881131 () Bool)

(assert (=> b!4285093 m!4881131))

(declare-fun m!4881133 () Bool)

(assert (=> b!4285087 m!4881133))

(declare-fun m!4881135 () Bool)

(assert (=> b!4285087 m!4881135))

(declare-fun m!4881137 () Bool)

(assert (=> b!4285089 m!4881137))

(check-sat (not b!4285078) b_and!338179 b_and!338175 (not b!4285068) (not mapNonEmpty!19427) b_and!338173 (not b!4285092) (not b_next!127677) (not b_next!127687) (not b!4285075) (not b!4285087) (not b!4285063) (not start!411690) (not b!4285074) (not b!4285093) (not b_next!127685) (not b!4285083) (not b!4285060) (not b!4285086) (not b!4285064) (not mapNonEmpty!19425) (not b!4285066) (not b_next!127689) b_and!338187 b_and!338185 (not b!4285081) (not b!4285072) (not b_next!127681) (not b!4285080) (not b!4285077) (not b_next!127679) b_and!338177 b_and!338181 b_and!338183 (not b!4285089) (not mapNonEmpty!19426) (not b_next!127683) (not b!4285079) (not b_next!127675) (not b!4285065))
(check-sat b_and!338179 b_and!338175 (not b_next!127685) (not b_next!127681) b_and!338173 b_and!338183 (not b_next!127683) (not b_next!127675) (not b_next!127677) (not b_next!127687) (not b_next!127689) b_and!338187 b_and!338185 (not b_next!127679) b_and!338177 b_and!338181)
(get-model)

(declare-fun d!1265161 () Bool)

(declare-fun validCacheMapDown!444 (MutableMap!4201) Bool)

(assert (=> d!1265161 (= (valid!3334 cacheDown!738) (validCacheMapDown!444 (cache!4341 cacheDown!738)))))

(declare-fun bs!602818 () Bool)

(assert (= bs!602818 d!1265161))

(declare-fun m!4881139 () Bool)

(assert (=> bs!602818 m!4881139))

(assert (=> b!4285068 d!1265161))

(declare-fun d!1265163 () Bool)

(declare-fun c!730060 () Bool)

(assert (=> d!1265163 (= c!730060 ((_ is Node!14358) (c!730057 (totalInput!4305 cacheFindLongestMatch!156))))))

(declare-fun e!2660844 () Bool)

(assert (=> d!1265163 (= (inv!62949 (c!730057 (totalInput!4305 cacheFindLongestMatch!156))) e!2660844)))

(declare-fun b!4285101 () Bool)

(declare-fun inv!62952 (Conc!14358) Bool)

(assert (=> b!4285101 (= e!2660844 (inv!62952 (c!730057 (totalInput!4305 cacheFindLongestMatch!156))))))

(declare-fun b!4285102 () Bool)

(declare-fun e!2660845 () Bool)

(assert (=> b!4285102 (= e!2660844 e!2660845)))

(declare-fun res!1758189 () Bool)

(assert (=> b!4285102 (= res!1758189 (not ((_ is Leaf!22217) (c!730057 (totalInput!4305 cacheFindLongestMatch!156)))))))

(assert (=> b!4285102 (=> res!1758189 e!2660845)))

(declare-fun b!4285103 () Bool)

(declare-fun inv!62953 (Conc!14358) Bool)

(assert (=> b!4285103 (= e!2660845 (inv!62953 (c!730057 (totalInput!4305 cacheFindLongestMatch!156))))))

(assert (= (and d!1265163 c!730060) b!4285101))

(assert (= (and d!1265163 (not c!730060)) b!4285102))

(assert (= (and b!4285102 (not res!1758189)) b!4285103))

(declare-fun m!4881141 () Bool)

(assert (=> b!4285101 m!4881141))

(declare-fun m!4881143 () Bool)

(assert (=> b!4285103 m!4881143))

(assert (=> b!4285077 d!1265163))

(declare-fun d!1265165 () Bool)

(declare-fun isBalanced!3877 (Conc!14358) Bool)

(assert (=> d!1265165 (= (inv!62945 (totalInput!4305 cacheFindLongestMatch!156)) (isBalanced!3877 (c!730057 (totalInput!4305 cacheFindLongestMatch!156))))))

(declare-fun bs!602819 () Bool)

(assert (= bs!602819 d!1265165))

(declare-fun m!4881145 () Bool)

(assert (=> bs!602819 m!4881145))

(assert (=> b!4285086 d!1265165))

(declare-fun d!1265167 () Bool)

(declare-fun res!1758194 () Bool)

(declare-fun e!2660848 () Bool)

(assert (=> d!1265167 (=> (not res!1758194) (not e!2660848))))

(declare-fun validRegex!5840 (Regex!12915) Bool)

(assert (=> d!1265167 (= res!1758194 (validRegex!5840 (regex!8006 rule!232)))))

(assert (=> d!1265167 (= (ruleValid!3621 thiss!16356 rule!232) e!2660848)))

(declare-fun b!4285108 () Bool)

(declare-fun res!1758195 () Bool)

(assert (=> b!4285108 (=> (not res!1758195) (not e!2660848))))

(declare-fun nullable!4532 (Regex!12915) Bool)

(assert (=> b!4285108 (= res!1758195 (not (nullable!4532 (regex!8006 rule!232))))))

(declare-fun b!4285109 () Bool)

(assert (=> b!4285109 (= e!2660848 (not (= (tag!8870 rule!232) (String!55579 ""))))))

(assert (= (and d!1265167 res!1758194) b!4285108))

(assert (= (and b!4285108 res!1758195) b!4285109))

(declare-fun m!4881147 () Bool)

(assert (=> d!1265167 m!4881147))

(declare-fun m!4881149 () Bool)

(assert (=> b!4285108 m!4881149))

(assert (=> b!4285078 d!1265167))

(declare-fun d!1265169 () Bool)

(assert (=> d!1265169 (= (array_inv!4924 (_keys!4594 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) (bvsge (size!34811 (_keys!4594 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285087 d!1265169))

(declare-fun d!1265171 () Bool)

(assert (=> d!1265171 (= (array_inv!4927 (_values!4575 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) (bvsge (size!34812 (_values!4575 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285087 d!1265171))

(declare-fun d!1265173 () Bool)

(declare-fun c!730061 () Bool)

(assert (=> d!1265173 (= c!730061 ((_ is Node!14358) (c!730057 totalInput!528)))))

(declare-fun e!2660849 () Bool)

(assert (=> d!1265173 (= (inv!62949 (c!730057 totalInput!528)) e!2660849)))

(declare-fun b!4285110 () Bool)

(assert (=> b!4285110 (= e!2660849 (inv!62952 (c!730057 totalInput!528)))))

(declare-fun b!4285111 () Bool)

(declare-fun e!2660850 () Bool)

(assert (=> b!4285111 (= e!2660849 e!2660850)))

(declare-fun res!1758196 () Bool)

(assert (=> b!4285111 (= res!1758196 (not ((_ is Leaf!22217) (c!730057 totalInput!528))))))

(assert (=> b!4285111 (=> res!1758196 e!2660850)))

(declare-fun b!4285112 () Bool)

(assert (=> b!4285112 (= e!2660850 (inv!62953 (c!730057 totalInput!528)))))

(assert (= (and d!1265173 c!730061) b!4285110))

(assert (= (and d!1265173 (not c!730061)) b!4285111))

(assert (= (and b!4285111 (not res!1758196)) b!4285112))

(declare-fun m!4881151 () Bool)

(assert (=> b!4285110 m!4881151))

(declare-fun m!4881153 () Bool)

(assert (=> b!4285112 m!4881153))

(assert (=> b!4285089 d!1265173))

(declare-fun d!1265175 () Bool)

(declare-fun lt!1515666 () Bool)

(assert (=> d!1265175 (= lt!1515666 (isEmpty!28016 (list!17325 (_1!25619 (_1!25620 lt!1515658)))))))

(declare-fun isEmpty!28017 (Conc!14358) Bool)

(assert (=> d!1265175 (= lt!1515666 (isEmpty!28017 (c!730057 (_1!25619 (_1!25620 lt!1515658)))))))

(assert (=> d!1265175 (= (isEmpty!28015 (_1!25619 (_1!25620 lt!1515658))) lt!1515666)))

(declare-fun bs!602820 () Bool)

(assert (= bs!602820 d!1265175))

(assert (=> bs!602820 m!4881069))

(assert (=> bs!602820 m!4881069))

(declare-fun m!4881155 () Bool)

(assert (=> bs!602820 m!4881155))

(declare-fun m!4881157 () Bool)

(assert (=> bs!602820 m!4881157))

(assert (=> b!4285079 d!1265175))

(declare-fun d!1265177 () Bool)

(assert (=> d!1265177 (= (isEmpty!28016 (_1!25621 lt!1515660)) ((_ is Nil!47499) (_1!25621 lt!1515660)))))

(assert (=> b!4285081 d!1265177))

(declare-fun d!1265179 () Bool)

(declare-fun lt!1515669 () Int)

(assert (=> d!1265179 (= lt!1515669 (size!34817 (list!17325 (_1!25619 (_1!25620 lt!1515658)))))))

(declare-fun size!34818 (Conc!14358) Int)

(assert (=> d!1265179 (= lt!1515669 (size!34818 (c!730057 (_1!25619 (_1!25620 lt!1515658)))))))

(assert (=> d!1265179 (= (size!34816 (_1!25619 (_1!25620 lt!1515658))) lt!1515669)))

(declare-fun bs!602821 () Bool)

(assert (= bs!602821 d!1265179))

(assert (=> bs!602821 m!4881069))

(assert (=> bs!602821 m!4881069))

(declare-fun m!4881159 () Bool)

(assert (=> bs!602821 m!4881159))

(declare-fun m!4881161 () Bool)

(assert (=> bs!602821 m!4881161))

(assert (=> b!4285081 d!1265179))

(declare-fun d!1265181 () Bool)

(declare-fun lt!1515672 () Int)

(assert (=> d!1265181 (>= lt!1515672 0)))

(declare-fun e!2660853 () Int)

(assert (=> d!1265181 (= lt!1515672 e!2660853)))

(declare-fun c!730064 () Bool)

(assert (=> d!1265181 (= c!730064 ((_ is Nil!47499) lt!1515662))))

(assert (=> d!1265181 (= (size!34817 lt!1515662) lt!1515672)))

(declare-fun b!4285117 () Bool)

(assert (=> b!4285117 (= e!2660853 0)))

(declare-fun b!4285118 () Bool)

(assert (=> b!4285118 (= e!2660853 (+ 1 (size!34817 (t!354212 lt!1515662))))))

(assert (= (and d!1265181 c!730064) b!4285117))

(assert (= (and d!1265181 (not c!730064)) b!4285118))

(declare-fun m!4881163 () Bool)

(assert (=> b!4285118 m!4881163))

(assert (=> b!4285081 d!1265181))

(declare-fun d!1265183 () Bool)

(declare-fun e!2660856 () Bool)

(assert (=> d!1265183 e!2660856))

(declare-fun res!1758199 () Bool)

(assert (=> d!1265183 (=> res!1758199 e!2660856)))

(assert (=> d!1265183 (= res!1758199 (isEmpty!28016 (_1!25621 (findLongestMatchInner!1714 (regex!8006 rule!232) Nil!47499 (size!34817 Nil!47499) lt!1515662 lt!1515662 (size!34817 lt!1515662)))))))

(declare-fun lt!1515675 () Unit!66375)

(declare-fun choose!26132 (Regex!12915 List!47623) Unit!66375)

(assert (=> d!1265183 (= lt!1515675 (choose!26132 (regex!8006 rule!232) lt!1515662))))

(assert (=> d!1265183 (validRegex!5840 (regex!8006 rule!232))))

(assert (=> d!1265183 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1677 (regex!8006 rule!232) lt!1515662) lt!1515675)))

(declare-fun b!4285121 () Bool)

(assert (=> b!4285121 (= e!2660856 (matchR!6485 (regex!8006 rule!232) (_1!25621 (findLongestMatchInner!1714 (regex!8006 rule!232) Nil!47499 (size!34817 Nil!47499) lt!1515662 lt!1515662 (size!34817 lt!1515662)))))))

(assert (= (and d!1265183 (not res!1758199)) b!4285121))

(assert (=> d!1265183 m!4881067))

(assert (=> d!1265183 m!4881147))

(assert (=> d!1265183 m!4881075))

(declare-fun m!4881165 () Bool)

(assert (=> d!1265183 m!4881165))

(declare-fun m!4881167 () Bool)

(assert (=> d!1265183 m!4881167))

(assert (=> d!1265183 m!4881075))

(assert (=> d!1265183 m!4881067))

(assert (=> d!1265183 m!4881077))

(assert (=> b!4285121 m!4881075))

(assert (=> b!4285121 m!4881067))

(assert (=> b!4285121 m!4881075))

(assert (=> b!4285121 m!4881067))

(assert (=> b!4285121 m!4881077))

(declare-fun m!4881169 () Bool)

(assert (=> b!4285121 m!4881169))

(assert (=> b!4285081 d!1265183))

(declare-fun b!4285150 () Bool)

(declare-fun e!2660878 () tuple2!44928)

(declare-fun lt!1515746 () tuple2!44928)

(assert (=> b!4285150 (= e!2660878 lt!1515746)))

(declare-fun bm!294452 () Bool)

(declare-fun call!294463 () Regex!12915)

(declare-fun call!294458 () C!26028)

(declare-fun derivativeStep!3858 (Regex!12915 C!26028) Regex!12915)

(assert (=> bm!294452 (= call!294463 (derivativeStep!3858 (regex!8006 rule!232) call!294458))))

(declare-fun b!4285151 () Bool)

(declare-fun e!2660875 () Bool)

(declare-fun lt!1515743 () tuple2!44928)

(assert (=> b!4285151 (= e!2660875 (>= (size!34817 (_1!25621 lt!1515743)) (size!34817 Nil!47499)))))

(declare-fun b!4285152 () Bool)

(declare-fun e!2660880 () tuple2!44928)

(assert (=> b!4285152 (= e!2660880 e!2660878)))

(declare-fun call!294461 () tuple2!44928)

(assert (=> b!4285152 (= lt!1515746 call!294461)))

(declare-fun c!730077 () Bool)

(assert (=> b!4285152 (= c!730077 (isEmpty!28016 (_1!25621 lt!1515746)))))

(declare-fun b!4285153 () Bool)

(declare-fun e!2660873 () Unit!66375)

(declare-fun Unit!66377 () Unit!66375)

(assert (=> b!4285153 (= e!2660873 Unit!66377)))

(declare-fun b!4285154 () Bool)

(assert (=> b!4285154 (= e!2660878 (tuple2!44929 Nil!47499 lt!1515662))))

(declare-fun bm!294453 () Bool)

(declare-fun call!294460 () Unit!66375)

(declare-fun lemmaIsPrefixRefl!3156 (List!47623 List!47623) Unit!66375)

(assert (=> bm!294453 (= call!294460 (lemmaIsPrefixRefl!3156 lt!1515662 lt!1515662))))

(declare-fun b!4285155 () Bool)

(declare-fun c!730081 () Bool)

(declare-fun call!294459 () Bool)

(assert (=> b!4285155 (= c!730081 call!294459)))

(declare-fun lt!1515733 () Unit!66375)

(declare-fun lt!1515750 () Unit!66375)

(assert (=> b!4285155 (= lt!1515733 lt!1515750)))

(assert (=> b!4285155 (= lt!1515662 Nil!47499)))

(declare-fun call!294462 () Unit!66375)

(assert (=> b!4285155 (= lt!1515750 call!294462)))

(declare-fun lt!1515759 () Unit!66375)

(declare-fun lt!1515737 () Unit!66375)

(assert (=> b!4285155 (= lt!1515759 lt!1515737)))

(declare-fun call!294464 () Bool)

(assert (=> b!4285155 call!294464))

(assert (=> b!4285155 (= lt!1515737 call!294460)))

(declare-fun e!2660874 () tuple2!44928)

(declare-fun e!2660877 () tuple2!44928)

(assert (=> b!4285155 (= e!2660874 e!2660877)))

(declare-fun bm!294454 () Bool)

(declare-fun isPrefix!4759 (List!47623 List!47623) Bool)

(assert (=> bm!294454 (= call!294464 (isPrefix!4759 lt!1515662 lt!1515662))))

(declare-fun b!4285156 () Bool)

(assert (=> b!4285156 (= e!2660877 (tuple2!44929 Nil!47499 Nil!47499))))

(declare-fun b!4285157 () Bool)

(assert (=> b!4285157 (= e!2660877 (tuple2!44929 Nil!47499 lt!1515662))))

(declare-fun b!4285158 () Bool)

(declare-fun e!2660876 () tuple2!44928)

(assert (=> b!4285158 (= e!2660876 (tuple2!44929 Nil!47499 lt!1515662))))

(declare-fun bm!294455 () Bool)

(declare-fun call!294457 () List!47623)

(declare-fun tail!6889 (List!47623) List!47623)

(assert (=> bm!294455 (= call!294457 (tail!6889 lt!1515662))))

(declare-fun bm!294456 () Bool)

(assert (=> bm!294456 (= call!294459 (nullable!4532 (regex!8006 rule!232)))))

(declare-fun b!4285159 () Bool)

(declare-fun e!2660879 () Bool)

(assert (=> b!4285159 (= e!2660879 e!2660875)))

(declare-fun res!1758205 () Bool)

(assert (=> b!4285159 (=> res!1758205 e!2660875)))

(assert (=> b!4285159 (= res!1758205 (isEmpty!28016 (_1!25621 lt!1515743)))))

(declare-fun b!4285160 () Bool)

(declare-fun Unit!66378 () Unit!66375)

(assert (=> b!4285160 (= e!2660873 Unit!66378)))

(declare-fun lt!1515749 () Unit!66375)

(assert (=> b!4285160 (= lt!1515749 call!294460)))

(assert (=> b!4285160 call!294464))

(declare-fun lt!1515758 () Unit!66375)

(assert (=> b!4285160 (= lt!1515758 lt!1515749)))

(declare-fun lt!1515744 () Unit!66375)

(assert (=> b!4285160 (= lt!1515744 call!294462)))

(assert (=> b!4285160 (= lt!1515662 Nil!47499)))

(declare-fun lt!1515738 () Unit!66375)

(assert (=> b!4285160 (= lt!1515738 lt!1515744)))

(assert (=> b!4285160 false))

(declare-fun b!4285161 () Bool)

(assert (=> b!4285161 (= e!2660876 e!2660874)))

(declare-fun c!730082 () Bool)

(assert (=> b!4285161 (= c!730082 (= (size!34817 Nil!47499) (size!34817 lt!1515662)))))

(declare-fun d!1265185 () Bool)

(assert (=> d!1265185 e!2660879))

(declare-fun res!1758204 () Bool)

(assert (=> d!1265185 (=> (not res!1758204) (not e!2660879))))

(declare-fun ++!12106 (List!47623 List!47623) List!47623)

(assert (=> d!1265185 (= res!1758204 (= (++!12106 (_1!25621 lt!1515743) (_2!25621 lt!1515743)) lt!1515662))))

(assert (=> d!1265185 (= lt!1515743 e!2660876)))

(declare-fun c!730078 () Bool)

(declare-fun lostCause!1066 (Regex!12915) Bool)

(assert (=> d!1265185 (= c!730078 (lostCause!1066 (regex!8006 rule!232)))))

(declare-fun lt!1515745 () Unit!66375)

(declare-fun Unit!66379 () Unit!66375)

(assert (=> d!1265185 (= lt!1515745 Unit!66379)))

(declare-fun getSuffix!2867 (List!47623 List!47623) List!47623)

(assert (=> d!1265185 (= (getSuffix!2867 lt!1515662 Nil!47499) lt!1515662)))

(declare-fun lt!1515752 () Unit!66375)

(declare-fun lt!1515755 () Unit!66375)

(assert (=> d!1265185 (= lt!1515752 lt!1515755)))

(declare-fun lt!1515747 () List!47623)

(assert (=> d!1265185 (= lt!1515662 lt!1515747)))

(declare-fun lemmaSamePrefixThenSameSuffix!2283 (List!47623 List!47623 List!47623 List!47623 List!47623) Unit!66375)

(assert (=> d!1265185 (= lt!1515755 (lemmaSamePrefixThenSameSuffix!2283 Nil!47499 lt!1515662 Nil!47499 lt!1515747 lt!1515662))))

(assert (=> d!1265185 (= lt!1515747 (getSuffix!2867 lt!1515662 Nil!47499))))

(declare-fun lt!1515734 () Unit!66375)

(declare-fun lt!1515739 () Unit!66375)

(assert (=> d!1265185 (= lt!1515734 lt!1515739)))

(assert (=> d!1265185 (isPrefix!4759 Nil!47499 (++!12106 Nil!47499 lt!1515662))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3103 (List!47623 List!47623) Unit!66375)

(assert (=> d!1265185 (= lt!1515739 (lemmaConcatTwoListThenFirstIsPrefix!3103 Nil!47499 lt!1515662))))

(assert (=> d!1265185 (validRegex!5840 (regex!8006 rule!232))))

(assert (=> d!1265185 (= (findLongestMatchInner!1714 (regex!8006 rule!232) Nil!47499 (size!34817 Nil!47499) lt!1515662 lt!1515662 (size!34817 lt!1515662)) lt!1515743)))

(declare-fun b!4285162 () Bool)

(assert (=> b!4285162 (= e!2660880 call!294461)))

(declare-fun bm!294457 () Bool)

(declare-fun lt!1515754 () List!47623)

(assert (=> bm!294457 (= call!294461 (findLongestMatchInner!1714 call!294463 lt!1515754 (+ (size!34817 Nil!47499) 1) call!294457 lt!1515662 (size!34817 lt!1515662)))))

(declare-fun bm!294458 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1038 (List!47623 List!47623 List!47623) Unit!66375)

(assert (=> bm!294458 (= call!294462 (lemmaIsPrefixSameLengthThenSameList!1038 lt!1515662 Nil!47499 lt!1515662))))

(declare-fun b!4285163 () Bool)

(declare-fun c!730079 () Bool)

(assert (=> b!4285163 (= c!730079 call!294459)))

(declare-fun lt!1515742 () Unit!66375)

(declare-fun lt!1515753 () Unit!66375)

(assert (=> b!4285163 (= lt!1515742 lt!1515753)))

(declare-fun lt!1515748 () C!26028)

(declare-fun lt!1515741 () List!47623)

(assert (=> b!4285163 (= (++!12106 (++!12106 Nil!47499 (Cons!47499 lt!1515748 Nil!47499)) lt!1515741) lt!1515662)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1310 (List!47623 C!26028 List!47623 List!47623) Unit!66375)

(assert (=> b!4285163 (= lt!1515753 (lemmaMoveElementToOtherListKeepsConcatEq!1310 Nil!47499 lt!1515748 lt!1515741 lt!1515662))))

(assert (=> b!4285163 (= lt!1515741 (tail!6889 lt!1515662))))

(declare-fun head!9018 (List!47623) C!26028)

(assert (=> b!4285163 (= lt!1515748 (head!9018 lt!1515662))))

(declare-fun lt!1515756 () Unit!66375)

(declare-fun lt!1515751 () Unit!66375)

(assert (=> b!4285163 (= lt!1515756 lt!1515751)))

(assert (=> b!4285163 (isPrefix!4759 (++!12106 Nil!47499 (Cons!47499 (head!9018 (getSuffix!2867 lt!1515662 Nil!47499)) Nil!47499)) lt!1515662)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!692 (List!47623 List!47623) Unit!66375)

(assert (=> b!4285163 (= lt!1515751 (lemmaAddHeadSuffixToPrefixStillPrefix!692 Nil!47499 lt!1515662))))

(declare-fun lt!1515732 () Unit!66375)

(declare-fun lt!1515757 () Unit!66375)

(assert (=> b!4285163 (= lt!1515732 lt!1515757)))

(assert (=> b!4285163 (= lt!1515757 (lemmaAddHeadSuffixToPrefixStillPrefix!692 Nil!47499 lt!1515662))))

(assert (=> b!4285163 (= lt!1515754 (++!12106 Nil!47499 (Cons!47499 (head!9018 lt!1515662) Nil!47499)))))

(declare-fun lt!1515740 () Unit!66375)

(assert (=> b!4285163 (= lt!1515740 e!2660873)))

(declare-fun c!730080 () Bool)

(assert (=> b!4285163 (= c!730080 (= (size!34817 Nil!47499) (size!34817 lt!1515662)))))

(declare-fun lt!1515736 () Unit!66375)

(declare-fun lt!1515735 () Unit!66375)

(assert (=> b!4285163 (= lt!1515736 lt!1515735)))

(assert (=> b!4285163 (<= (size!34817 Nil!47499) (size!34817 lt!1515662))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!604 (List!47623 List!47623) Unit!66375)

(assert (=> b!4285163 (= lt!1515735 (lemmaIsPrefixThenSmallerEqSize!604 Nil!47499 lt!1515662))))

(assert (=> b!4285163 (= e!2660874 e!2660880)))

(declare-fun bm!294459 () Bool)

(assert (=> bm!294459 (= call!294458 (head!9018 lt!1515662))))

(assert (= (and d!1265185 c!730078) b!4285158))

(assert (= (and d!1265185 (not c!730078)) b!4285161))

(assert (= (and b!4285161 c!730082) b!4285155))

(assert (= (and b!4285161 (not c!730082)) b!4285163))

(assert (= (and b!4285155 c!730081) b!4285156))

(assert (= (and b!4285155 (not c!730081)) b!4285157))

(assert (= (and b!4285163 c!730080) b!4285160))

(assert (= (and b!4285163 (not c!730080)) b!4285153))

(assert (= (and b!4285163 c!730079) b!4285152))

(assert (= (and b!4285163 (not c!730079)) b!4285162))

(assert (= (and b!4285152 c!730077) b!4285154))

(assert (= (and b!4285152 (not c!730077)) b!4285150))

(assert (= (or b!4285152 b!4285162) bm!294455))

(assert (= (or b!4285152 b!4285162) bm!294459))

(assert (= (or b!4285152 b!4285162) bm!294452))

(assert (= (or b!4285152 b!4285162) bm!294457))

(assert (= (or b!4285155 b!4285160) bm!294458))

(assert (= (or b!4285155 b!4285160) bm!294453))

(assert (= (or b!4285155 b!4285160) bm!294454))

(assert (= (or b!4285155 b!4285163) bm!294456))

(assert (= (and d!1265185 res!1758204) b!4285159))

(assert (= (and b!4285159 (not res!1758205)) b!4285151))

(declare-fun m!4881171 () Bool)

(assert (=> b!4285163 m!4881171))

(declare-fun m!4881173 () Bool)

(assert (=> b!4285163 m!4881173))

(assert (=> b!4285163 m!4881075))

(assert (=> b!4285163 m!4881067))

(declare-fun m!4881175 () Bool)

(assert (=> b!4285163 m!4881175))

(assert (=> b!4285163 m!4881171))

(declare-fun m!4881177 () Bool)

(assert (=> b!4285163 m!4881177))

(declare-fun m!4881179 () Bool)

(assert (=> b!4285163 m!4881179))

(declare-fun m!4881181 () Bool)

(assert (=> b!4285163 m!4881181))

(declare-fun m!4881183 () Bool)

(assert (=> b!4285163 m!4881183))

(declare-fun m!4881185 () Bool)

(assert (=> b!4285163 m!4881185))

(declare-fun m!4881187 () Bool)

(assert (=> b!4285163 m!4881187))

(declare-fun m!4881189 () Bool)

(assert (=> b!4285163 m!4881189))

(declare-fun m!4881191 () Bool)

(assert (=> b!4285163 m!4881191))

(assert (=> b!4285163 m!4881181))

(assert (=> b!4285163 m!4881177))

(declare-fun m!4881193 () Bool)

(assert (=> b!4285163 m!4881193))

(declare-fun m!4881195 () Bool)

(assert (=> bm!294454 m!4881195))

(assert (=> bm!294455 m!4881193))

(declare-fun m!4881197 () Bool)

(assert (=> bm!294452 m!4881197))

(declare-fun m!4881199 () Bool)

(assert (=> b!4285151 m!4881199))

(assert (=> b!4285151 m!4881075))

(declare-fun m!4881201 () Bool)

(assert (=> d!1265185 m!4881201))

(assert (=> d!1265185 m!4881201))

(declare-fun m!4881203 () Bool)

(assert (=> d!1265185 m!4881203))

(declare-fun m!4881205 () Bool)

(assert (=> d!1265185 m!4881205))

(declare-fun m!4881207 () Bool)

(assert (=> d!1265185 m!4881207))

(assert (=> d!1265185 m!4881147))

(declare-fun m!4881209 () Bool)

(assert (=> d!1265185 m!4881209))

(declare-fun m!4881211 () Bool)

(assert (=> d!1265185 m!4881211))

(assert (=> d!1265185 m!4881177))

(assert (=> bm!294459 m!4881175))

(assert (=> bm!294456 m!4881149))

(declare-fun m!4881213 () Bool)

(assert (=> b!4285159 m!4881213))

(declare-fun m!4881215 () Bool)

(assert (=> bm!294453 m!4881215))

(declare-fun m!4881217 () Bool)

(assert (=> b!4285152 m!4881217))

(declare-fun m!4881219 () Bool)

(assert (=> bm!294458 m!4881219))

(assert (=> bm!294457 m!4881067))

(declare-fun m!4881221 () Bool)

(assert (=> bm!294457 m!4881221))

(assert (=> b!4285081 d!1265185))

(declare-fun d!1265187 () Bool)

(declare-fun list!17326 (Conc!14358) List!47623)

(assert (=> d!1265187 (= (list!17325 (_1!25619 (_1!25620 lt!1515658))) (list!17326 (c!730057 (_1!25619 (_1!25620 lt!1515658)))))))

(declare-fun bs!602822 () Bool)

(assert (= bs!602822 d!1265187))

(declare-fun m!4881223 () Bool)

(assert (=> bs!602822 m!4881223))

(assert (=> b!4285081 d!1265187))

(declare-fun d!1265189 () Bool)

(declare-fun lt!1515760 () Int)

(assert (=> d!1265189 (>= lt!1515760 0)))

(declare-fun e!2660881 () Int)

(assert (=> d!1265189 (= lt!1515760 e!2660881)))

(declare-fun c!730083 () Bool)

(assert (=> d!1265189 (= c!730083 ((_ is Nil!47499) Nil!47499))))

(assert (=> d!1265189 (= (size!34817 Nil!47499) lt!1515760)))

(declare-fun b!4285164 () Bool)

(assert (=> b!4285164 (= e!2660881 0)))

(declare-fun b!4285165 () Bool)

(assert (=> b!4285165 (= e!2660881 (+ 1 (size!34817 (t!354212 Nil!47499))))))

(assert (= (and d!1265189 c!730083) b!4285164))

(assert (= (and d!1265189 (not c!730083)) b!4285165))

(declare-fun m!4881225 () Bool)

(assert (=> b!4285165 m!4881225))

(assert (=> b!4285081 d!1265189))

(declare-fun d!1265191 () Bool)

(declare-fun dynLambda!20316 (Int BalanceConc!28206) TokenValue!8316)

(assert (=> d!1265191 (= (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) (dynLambda!20316 (toValue!10857 (transformation!8006 rule!232)) (_1!25619 (_1!25620 lt!1515658))))))

(declare-fun b_lambda!126091 () Bool)

(assert (=> (not b_lambda!126091) (not d!1265191)))

(declare-fun t!354217 () Bool)

(declare-fun tb!257083 () Bool)

(assert (=> (and b!4285070 (= (toValue!10857 (transformation!8006 rule!232)) (toValue!10857 (transformation!8006 rule!232))) t!354217) tb!257083))

(declare-fun result!314038 () Bool)

(declare-fun inv!21 (TokenValue!8316) Bool)

(assert (=> tb!257083 (= result!314038 (inv!21 (dynLambda!20316 (toValue!10857 (transformation!8006 rule!232)) (_1!25619 (_1!25620 lt!1515658)))))))

(declare-fun m!4881227 () Bool)

(assert (=> tb!257083 m!4881227))

(assert (=> d!1265191 t!354217))

(declare-fun b_and!338189 () Bool)

(assert (= b_and!338179 (and (=> t!354217 result!314038) b_and!338189)))

(declare-fun m!4881229 () Bool)

(assert (=> d!1265191 m!4881229))

(assert (=> b!4285081 d!1265191))

(declare-fun b!4285172 () Bool)

(declare-fun e!2660887 () Bool)

(assert (=> b!4285172 (= e!2660887 true)))

(declare-fun d!1265193 () Bool)

(assert (=> d!1265193 e!2660887))

(assert (= d!1265193 b!4285172))

(declare-fun lambda!131477 () Int)

(declare-fun order!25029 () Int)

(declare-fun order!25031 () Int)

(declare-fun dynLambda!20317 (Int Int) Int)

(declare-fun dynLambda!20318 (Int Int) Int)

(assert (=> b!4285172 (< (dynLambda!20317 order!25029 (toValue!10857 (transformation!8006 rule!232))) (dynLambda!20318 order!25031 lambda!131477))))

(declare-fun order!25033 () Int)

(declare-fun dynLambda!20319 (Int Int) Int)

(assert (=> b!4285172 (< (dynLambda!20319 order!25033 (toChars!10716 (transformation!8006 rule!232))) (dynLambda!20318 order!25031 lambda!131477))))

(declare-fun dynLambda!20320 (Int TokenValue!8316) BalanceConc!28206)

(assert (=> d!1265193 (= (list!17325 (dynLambda!20320 (toChars!10716 (transformation!8006 rule!232)) (dynLambda!20316 (toValue!10857 (transformation!8006 rule!232)) (_1!25619 (_1!25620 lt!1515658))))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))))

(declare-fun lt!1515763 () Unit!66375)

(declare-fun ForallOf!1094 (Int BalanceConc!28206) Unit!66375)

(assert (=> d!1265193 (= lt!1515763 (ForallOf!1094 lambda!131477 (_1!25619 (_1!25620 lt!1515658))))))

(assert (=> d!1265193 (= (lemmaSemiInverse!2545 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) lt!1515763)))

(declare-fun b_lambda!126093 () Bool)

(assert (=> (not b_lambda!126093) (not d!1265193)))

(declare-fun t!354219 () Bool)

(declare-fun tb!257085 () Bool)

(assert (=> (and b!4285070 (= (toChars!10716 (transformation!8006 rule!232)) (toChars!10716 (transformation!8006 rule!232))) t!354219) tb!257085))

(declare-fun tp!1311739 () Bool)

(declare-fun e!2660890 () Bool)

(declare-fun b!4285177 () Bool)

(assert (=> b!4285177 (= e!2660890 (and (inv!62949 (c!730057 (dynLambda!20320 (toChars!10716 (transformation!8006 rule!232)) (dynLambda!20316 (toValue!10857 (transformation!8006 rule!232)) (_1!25619 (_1!25620 lt!1515658)))))) tp!1311739))))

(declare-fun result!314042 () Bool)

(assert (=> tb!257085 (= result!314042 (and (inv!62945 (dynLambda!20320 (toChars!10716 (transformation!8006 rule!232)) (dynLambda!20316 (toValue!10857 (transformation!8006 rule!232)) (_1!25619 (_1!25620 lt!1515658))))) e!2660890))))

(assert (= tb!257085 b!4285177))

(declare-fun m!4881231 () Bool)

(assert (=> b!4285177 m!4881231))

(declare-fun m!4881233 () Bool)

(assert (=> tb!257085 m!4881233))

(assert (=> d!1265193 t!354219))

(declare-fun b_and!338191 () Bool)

(assert (= b_and!338181 (and (=> t!354219 result!314042) b_and!338191)))

(declare-fun b_lambda!126095 () Bool)

(assert (=> (not b_lambda!126095) (not d!1265193)))

(assert (=> d!1265193 t!354217))

(declare-fun b_and!338193 () Bool)

(assert (= b_and!338189 (and (=> t!354217 result!314038) b_and!338193)))

(assert (=> d!1265193 m!4881229))

(declare-fun m!4881235 () Bool)

(assert (=> d!1265193 m!4881235))

(assert (=> d!1265193 m!4881069))

(assert (=> d!1265193 m!4881229))

(declare-fun m!4881237 () Bool)

(assert (=> d!1265193 m!4881237))

(assert (=> d!1265193 m!4881235))

(declare-fun m!4881239 () Bool)

(assert (=> d!1265193 m!4881239))

(assert (=> b!4285081 d!1265193))

(declare-fun d!1265195 () Bool)

(declare-fun res!1758210 () Bool)

(declare-fun e!2660893 () Bool)

(assert (=> d!1265195 (=> (not res!1758210) (not e!2660893))))

(assert (=> d!1265195 (= res!1758210 (not (isEmpty!28016 (originalCharacters!8338 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))))))))

(assert (=> d!1265195 (= (inv!62951 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))) e!2660893)))

(declare-fun b!4285182 () Bool)

(declare-fun res!1758211 () Bool)

(assert (=> b!4285182 (=> (not res!1758211) (not e!2660893))))

(assert (=> b!4285182 (= res!1758211 (= (originalCharacters!8338 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))) (list!17325 (dynLambda!20320 (toChars!10716 (transformation!8006 (rule!11130 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))))) (value!250986 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658)))))))))))

(declare-fun b!4285183 () Bool)

(assert (=> b!4285183 (= e!2660893 (= (size!34815 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))) (size!34817 (originalCharacters!8338 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))))))))

(assert (= (and d!1265195 res!1758210) b!4285182))

(assert (= (and b!4285182 res!1758211) b!4285183))

(declare-fun b_lambda!126097 () Bool)

(assert (=> (not b_lambda!126097) (not b!4285182)))

(declare-fun tb!257087 () Bool)

(declare-fun t!354221 () Bool)

(assert (=> (and b!4285070 (= (toChars!10716 (transformation!8006 rule!232)) (toChars!10716 (transformation!8006 (rule!11130 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658)))))))) t!354221) tb!257087))

(declare-fun b!4285184 () Bool)

(declare-fun tp!1311740 () Bool)

(declare-fun e!2660894 () Bool)

(assert (=> b!4285184 (= e!2660894 (and (inv!62949 (c!730057 (dynLambda!20320 (toChars!10716 (transformation!8006 (rule!11130 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))))) (value!250986 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658)))))))) tp!1311740))))

(declare-fun result!314046 () Bool)

(assert (=> tb!257087 (= result!314046 (and (inv!62945 (dynLambda!20320 (toChars!10716 (transformation!8006 (rule!11130 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))))) (value!250986 (Token!14615 (apply!10825 (transformation!8006 rule!232) (_1!25619 (_1!25620 lt!1515658))) rule!232 (size!34816 (_1!25619 (_1!25620 lt!1515658))) (list!17325 (_1!25619 (_1!25620 lt!1515658))))))) e!2660894))))

(assert (= tb!257087 b!4285184))

(declare-fun m!4881241 () Bool)

(assert (=> b!4285184 m!4881241))

(declare-fun m!4881243 () Bool)

(assert (=> tb!257087 m!4881243))

(assert (=> b!4285182 t!354221))

(declare-fun b_and!338195 () Bool)

(assert (= b_and!338191 (and (=> t!354221 result!314046) b_and!338195)))

(declare-fun m!4881245 () Bool)

(assert (=> d!1265195 m!4881245))

(declare-fun m!4881247 () Bool)

(assert (=> b!4285182 m!4881247))

(assert (=> b!4285182 m!4881247))

(declare-fun m!4881249 () Bool)

(assert (=> b!4285182 m!4881249))

(declare-fun m!4881251 () Bool)

(assert (=> b!4285183 m!4881251))

(assert (=> b!4285081 d!1265195))

(declare-fun d!1265197 () Bool)

(declare-fun c!730085 () Bool)

(assert (=> d!1265197 (= c!730085 ((_ is Node!14358) (c!730057 input!1632)))))

(declare-fun e!2660895 () Bool)

(assert (=> d!1265197 (= (inv!62949 (c!730057 input!1632)) e!2660895)))

(declare-fun b!4285185 () Bool)

(assert (=> b!4285185 (= e!2660895 (inv!62952 (c!730057 input!1632)))))

(declare-fun b!4285186 () Bool)

(declare-fun e!2660896 () Bool)

(assert (=> b!4285186 (= e!2660895 e!2660896)))

(declare-fun res!1758212 () Bool)

(assert (=> b!4285186 (= res!1758212 (not ((_ is Leaf!22217) (c!730057 input!1632))))))

(assert (=> b!4285186 (=> res!1758212 e!2660896)))

(declare-fun b!4285187 () Bool)

(assert (=> b!4285187 (= e!2660896 (inv!62953 (c!730057 input!1632)))))

(assert (= (and d!1265197 c!730085) b!4285185))

(assert (= (and d!1265197 (not c!730085)) b!4285186))

(assert (= (and b!4285186 (not res!1758212)) b!4285187))

(declare-fun m!4881253 () Bool)

(assert (=> b!4285185 m!4881253))

(declare-fun m!4881255 () Bool)

(assert (=> b!4285187 m!4881255))

(assert (=> b!4285063 d!1265197))

(declare-fun b!4285216 () Bool)

(declare-fun e!2660915 () Bool)

(assert (=> b!4285216 (= e!2660915 (= (head!9018 (_1!25621 lt!1515660)) (c!730056 (regex!8006 rule!232))))))

(declare-fun b!4285217 () Bool)

(declare-fun e!2660913 () Bool)

(assert (=> b!4285217 (= e!2660913 (not (= (head!9018 (_1!25621 lt!1515660)) (c!730056 (regex!8006 rule!232)))))))

(declare-fun bm!294462 () Bool)

(declare-fun call!294467 () Bool)

(assert (=> bm!294462 (= call!294467 (isEmpty!28016 (_1!25621 lt!1515660)))))

(declare-fun b!4285218 () Bool)

(declare-fun e!2660916 () Bool)

(assert (=> b!4285218 (= e!2660916 (nullable!4532 (regex!8006 rule!232)))))

(declare-fun b!4285219 () Bool)

(declare-fun e!2660914 () Bool)

(declare-fun e!2660917 () Bool)

(assert (=> b!4285219 (= e!2660914 e!2660917)))

(declare-fun c!730092 () Bool)

(assert (=> b!4285219 (= c!730092 ((_ is EmptyLang!12915) (regex!8006 rule!232)))))

(declare-fun b!4285220 () Bool)

(declare-fun e!2660911 () Bool)

(declare-fun e!2660912 () Bool)

(assert (=> b!4285220 (= e!2660911 e!2660912)))

(declare-fun res!1758235 () Bool)

(assert (=> b!4285220 (=> (not res!1758235) (not e!2660912))))

(declare-fun lt!1515766 () Bool)

(assert (=> b!4285220 (= res!1758235 (not lt!1515766))))

(declare-fun b!4285221 () Bool)

(declare-fun res!1758233 () Bool)

(assert (=> b!4285221 (=> res!1758233 e!2660911)))

(assert (=> b!4285221 (= res!1758233 e!2660915)))

(declare-fun res!1758229 () Bool)

(assert (=> b!4285221 (=> (not res!1758229) (not e!2660915))))

(assert (=> b!4285221 (= res!1758229 lt!1515766)))

(declare-fun b!4285222 () Bool)

(declare-fun res!1758230 () Bool)

(assert (=> b!4285222 (=> (not res!1758230) (not e!2660915))))

(assert (=> b!4285222 (= res!1758230 (not call!294467))))

(declare-fun b!4285223 () Bool)

(declare-fun res!1758231 () Bool)

(assert (=> b!4285223 (=> (not res!1758231) (not e!2660915))))

(assert (=> b!4285223 (= res!1758231 (isEmpty!28016 (tail!6889 (_1!25621 lt!1515660))))))

(declare-fun b!4285224 () Bool)

(declare-fun res!1758232 () Bool)

(assert (=> b!4285224 (=> res!1758232 e!2660911)))

(assert (=> b!4285224 (= res!1758232 (not ((_ is ElementMatch!12915) (regex!8006 rule!232))))))

(assert (=> b!4285224 (= e!2660917 e!2660911)))

(declare-fun b!4285225 () Bool)

(assert (=> b!4285225 (= e!2660912 e!2660913)))

(declare-fun res!1758236 () Bool)

(assert (=> b!4285225 (=> res!1758236 e!2660913)))

(assert (=> b!4285225 (= res!1758236 call!294467)))

(declare-fun b!4285226 () Bool)

(assert (=> b!4285226 (= e!2660914 (= lt!1515766 call!294467))))

(declare-fun b!4285227 () Bool)

(assert (=> b!4285227 (= e!2660916 (matchR!6485 (derivativeStep!3858 (regex!8006 rule!232) (head!9018 (_1!25621 lt!1515660))) (tail!6889 (_1!25621 lt!1515660))))))

(declare-fun b!4285228 () Bool)

(assert (=> b!4285228 (= e!2660917 (not lt!1515766))))

(declare-fun b!4285229 () Bool)

(declare-fun res!1758234 () Bool)

(assert (=> b!4285229 (=> res!1758234 e!2660913)))

(assert (=> b!4285229 (= res!1758234 (not (isEmpty!28016 (tail!6889 (_1!25621 lt!1515660)))))))

(declare-fun d!1265199 () Bool)

(assert (=> d!1265199 e!2660914))

(declare-fun c!730093 () Bool)

(assert (=> d!1265199 (= c!730093 ((_ is EmptyExpr!12915) (regex!8006 rule!232)))))

(assert (=> d!1265199 (= lt!1515766 e!2660916)))

(declare-fun c!730094 () Bool)

(assert (=> d!1265199 (= c!730094 (isEmpty!28016 (_1!25621 lt!1515660)))))

(assert (=> d!1265199 (validRegex!5840 (regex!8006 rule!232))))

(assert (=> d!1265199 (= (matchR!6485 (regex!8006 rule!232) (_1!25621 lt!1515660)) lt!1515766)))

(assert (= (and d!1265199 c!730094) b!4285218))

(assert (= (and d!1265199 (not c!730094)) b!4285227))

(assert (= (and d!1265199 c!730093) b!4285226))

(assert (= (and d!1265199 (not c!730093)) b!4285219))

(assert (= (and b!4285219 c!730092) b!4285228))

(assert (= (and b!4285219 (not c!730092)) b!4285224))

(assert (= (and b!4285224 (not res!1758232)) b!4285221))

(assert (= (and b!4285221 res!1758229) b!4285222))

(assert (= (and b!4285222 res!1758230) b!4285223))

(assert (= (and b!4285223 res!1758231) b!4285216))

(assert (= (and b!4285221 (not res!1758233)) b!4285220))

(assert (= (and b!4285220 res!1758235) b!4285225))

(assert (= (and b!4285225 (not res!1758236)) b!4285229))

(assert (= (and b!4285229 (not res!1758234)) b!4285217))

(assert (= (or b!4285226 b!4285222 b!4285225) bm!294462))

(assert (=> d!1265199 m!4881065))

(assert (=> d!1265199 m!4881147))

(declare-fun m!4881257 () Bool)

(assert (=> b!4285229 m!4881257))

(assert (=> b!4285229 m!4881257))

(declare-fun m!4881259 () Bool)

(assert (=> b!4285229 m!4881259))

(declare-fun m!4881261 () Bool)

(assert (=> b!4285217 m!4881261))

(assert (=> b!4285227 m!4881261))

(assert (=> b!4285227 m!4881261))

(declare-fun m!4881263 () Bool)

(assert (=> b!4285227 m!4881263))

(assert (=> b!4285227 m!4881257))

(assert (=> b!4285227 m!4881263))

(assert (=> b!4285227 m!4881257))

(declare-fun m!4881265 () Bool)

(assert (=> b!4285227 m!4881265))

(assert (=> bm!294462 m!4881065))

(assert (=> b!4285216 m!4881261))

(assert (=> b!4285223 m!4881257))

(assert (=> b!4285223 m!4881257))

(assert (=> b!4285223 m!4881259))

(assert (=> b!4285218 m!4881149))

(assert (=> b!4285092 d!1265199))

(declare-fun d!1265201 () Bool)

(assert (=> d!1265201 (= (array_inv!4924 (_keys!4596 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) (bvsge (size!34811 (_keys!4596 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285065 d!1265201))

(declare-fun d!1265203 () Bool)

(assert (=> d!1265203 (= (array_inv!4926 (_values!4577 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) (bvsge (size!34814 (_values!4577 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285065 d!1265203))

(declare-fun d!1265205 () Bool)

(declare-fun e!2660920 () Bool)

(assert (=> d!1265205 e!2660920))

(declare-fun res!1758239 () Bool)

(assert (=> d!1265205 (=> res!1758239 e!2660920)))

(declare-fun lt!1515769 () Bool)

(assert (=> d!1265205 (= res!1758239 (not lt!1515769))))

(declare-fun drop!2186 (List!47623 Int) List!47623)

(assert (=> d!1265205 (= lt!1515769 (= lt!1515662 (drop!2186 (list!17325 totalInput!528) (- (size!34817 (list!17325 totalInput!528)) (size!34817 lt!1515662)))))))

(assert (=> d!1265205 (= (isSuffix!1012 lt!1515662 (list!17325 totalInput!528)) lt!1515769)))

(declare-fun b!4285232 () Bool)

(assert (=> b!4285232 (= e!2660920 (>= (size!34817 (list!17325 totalInput!528)) (size!34817 lt!1515662)))))

(assert (= (and d!1265205 (not res!1758239)) b!4285232))

(assert (=> d!1265205 m!4881121))

(declare-fun m!4881267 () Bool)

(assert (=> d!1265205 m!4881267))

(assert (=> d!1265205 m!4881067))

(assert (=> d!1265205 m!4881121))

(declare-fun m!4881269 () Bool)

(assert (=> d!1265205 m!4881269))

(assert (=> b!4285232 m!4881121))

(assert (=> b!4285232 m!4881267))

(assert (=> b!4285232 m!4881067))

(assert (=> b!4285072 d!1265205))

(declare-fun d!1265207 () Bool)

(assert (=> d!1265207 (= (list!17325 totalInput!528) (list!17326 (c!730057 totalInput!528)))))

(declare-fun bs!602823 () Bool)

(assert (= bs!602823 d!1265207))

(declare-fun m!4881271 () Bool)

(assert (=> bs!602823 m!4881271))

(assert (=> b!4285072 d!1265207))

(declare-fun d!1265209 () Bool)

(assert (=> d!1265209 (= (list!17325 input!1632) (list!17326 (c!730057 input!1632)))))

(declare-fun bs!602824 () Bool)

(assert (= bs!602824 d!1265209))

(declare-fun m!4881273 () Bool)

(assert (=> bs!602824 m!4881273))

(assert (=> b!4285072 d!1265209))

(declare-fun d!1265211 () Bool)

(assert (=> d!1265211 (= (array_inv!4924 (_keys!4595 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) (bvsge (size!34811 (_keys!4595 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285064 d!1265211))

(declare-fun d!1265213 () Bool)

(assert (=> d!1265213 (= (array_inv!4925 (_values!4576 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) (bvsge (size!34813 (_values!4576 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4285064 d!1265213))

(declare-fun d!1265215 () Bool)

(declare-fun lt!1515772 () tuple2!44926)

(declare-fun findLongestMatch!1618 (Regex!12915 List!47623) tuple2!44928)

(assert (=> d!1265215 (= (tuple2!44929 (list!17325 (_1!25619 lt!1515772)) (list!17325 (_2!25619 lt!1515772))) (findLongestMatch!1618 (regex!8006 rule!232) (list!17325 input!1632)))))

(declare-fun choose!26133 (Regex!12915 BalanceConc!28206 BalanceConc!28206) tuple2!44926)

(assert (=> d!1265215 (= lt!1515772 (choose!26133 (regex!8006 rule!232) input!1632 totalInput!528))))

(assert (=> d!1265215 (validRegex!5840 (regex!8006 rule!232))))

(assert (=> d!1265215 (= (findLongestMatchWithZipperSequenceV2!121 (regex!8006 rule!232) input!1632 totalInput!528) lt!1515772)))

(declare-fun bs!602825 () Bool)

(assert (= bs!602825 d!1265215))

(assert (=> bs!602825 m!4881125))

(assert (=> bs!602825 m!4881147))

(declare-fun m!4881275 () Bool)

(assert (=> bs!602825 m!4881275))

(declare-fun m!4881277 () Bool)

(assert (=> bs!602825 m!4881277))

(assert (=> bs!602825 m!4881125))

(declare-fun m!4881279 () Bool)

(assert (=> bs!602825 m!4881279))

(declare-fun m!4881281 () Bool)

(assert (=> bs!602825 m!4881281))

(assert (=> b!4285093 d!1265215))

(declare-fun b!4285241 () Bool)

(declare-fun res!1758249 () Bool)

(declare-fun e!2660923 () Bool)

(assert (=> b!4285241 (=> (not res!1758249) (not e!2660923))))

(declare-fun lt!1515775 () tuple4!956)

(assert (=> b!4285241 (= res!1758249 (valid!3334 (_3!3156 lt!1515775)))))

(declare-fun d!1265217 () Bool)

(assert (=> d!1265217 e!2660923))

(declare-fun res!1758250 () Bool)

(assert (=> d!1265217 (=> (not res!1758250) (not e!2660923))))

(assert (=> d!1265217 (= res!1758250 (= (_1!25620 lt!1515775) (findLongestMatchWithZipperSequenceV2!121 (regex!8006 rule!232) input!1632 totalInput!528)))))

(declare-fun choose!26134 (Regex!12915 BalanceConc!28206 BalanceConc!28206 CacheUp!2742 CacheDown!2862 CacheFindLongestMatch!404) tuple4!956)

(assert (=> d!1265217 (= lt!1515775 (choose!26134 (regex!8006 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(assert (=> d!1265217 (validRegex!5840 (regex!8006 rule!232))))

(assert (=> d!1265217 (= (findLongestMatchWithZipperSequenceV2Mem!44 (regex!8006 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156) lt!1515775)))

(declare-fun b!4285243 () Bool)

(declare-fun res!1758251 () Bool)

(assert (=> b!4285243 (=> (not res!1758251) (not e!2660923))))

(assert (=> b!4285243 (= res!1758251 (valid!3336 (_4!478 lt!1515775)))))

(declare-fun b!4285242 () Bool)

(declare-fun res!1758248 () Bool)

(assert (=> b!4285242 (=> (not res!1758248) (not e!2660923))))

(assert (=> b!4285242 (= res!1758248 (valid!3335 (_2!25620 lt!1515775)))))

(declare-fun b!4285244 () Bool)

(assert (=> b!4285244 (= e!2660923 (= (totalInput!4305 (_4!478 lt!1515775)) totalInput!528))))

(assert (= (and d!1265217 res!1758250) b!4285241))

(assert (= (and b!4285241 res!1758249) b!4285242))

(assert (= (and b!4285242 res!1758248) b!4285243))

(assert (= (and b!4285243 res!1758251) b!4285244))

(declare-fun m!4881283 () Bool)

(assert (=> b!4285241 m!4881283))

(assert (=> d!1265217 m!4881129))

(declare-fun m!4881285 () Bool)

(assert (=> d!1265217 m!4881285))

(assert (=> d!1265217 m!4881147))

(declare-fun m!4881287 () Bool)

(assert (=> b!4285243 m!4881287))

(declare-fun m!4881289 () Bool)

(assert (=> b!4285242 m!4881289))

(assert (=> b!4285093 d!1265217))

(declare-fun d!1265219 () Bool)

(declare-fun validCacheMapFindLongestMatch!70 (MutableMap!4202 BalanceConc!28206) Bool)

(assert (=> d!1265219 (= (valid!3336 cacheFindLongestMatch!156) (validCacheMapFindLongestMatch!70 (cache!4342 cacheFindLongestMatch!156) (totalInput!4305 cacheFindLongestMatch!156)))))

(declare-fun bs!602826 () Bool)

(assert (= bs!602826 d!1265219))

(declare-fun m!4881291 () Bool)

(assert (=> bs!602826 m!4881291))

(assert (=> b!4285083 d!1265219))

(declare-fun d!1265221 () Bool)

(declare-fun validCacheMapUp!413 (MutableMap!4200) Bool)

(assert (=> d!1265221 (= (valid!3335 cacheUp!725) (validCacheMapUp!413 (cache!4340 cacheUp!725)))))

(declare-fun bs!602827 () Bool)

(assert (= bs!602827 d!1265221))

(declare-fun m!4881293 () Bool)

(assert (=> bs!602827 m!4881293))

(assert (=> b!4285075 d!1265221))

(declare-fun d!1265223 () Bool)

(declare-fun res!1758254 () Bool)

(declare-fun e!2660926 () Bool)

(assert (=> d!1265223 (=> (not res!1758254) (not e!2660926))))

(assert (=> d!1265223 (= res!1758254 ((_ is HashMap!4200) (cache!4340 cacheUp!725)))))

(assert (=> d!1265223 (= (inv!62948 cacheUp!725) e!2660926)))

(declare-fun b!4285247 () Bool)

(assert (=> b!4285247 (= e!2660926 (validCacheMapUp!413 (cache!4340 cacheUp!725)))))

(assert (= (and d!1265223 res!1758254) b!4285247))

(assert (=> b!4285247 m!4881293))

(assert (=> start!411690 d!1265223))

(declare-fun d!1265225 () Bool)

(declare-fun res!1758257 () Bool)

(declare-fun e!2660929 () Bool)

(assert (=> d!1265225 (=> (not res!1758257) (not e!2660929))))

(assert (=> d!1265225 (= res!1758257 ((_ is HashMap!4202) (cache!4342 cacheFindLongestMatch!156)))))

(assert (=> d!1265225 (= (inv!62947 cacheFindLongestMatch!156) e!2660929)))

(declare-fun b!4285250 () Bool)

(assert (=> b!4285250 (= e!2660929 (validCacheMapFindLongestMatch!70 (cache!4342 cacheFindLongestMatch!156) (totalInput!4305 cacheFindLongestMatch!156)))))

(assert (= (and d!1265225 res!1758257) b!4285250))

(assert (=> b!4285250 m!4881291))

(assert (=> start!411690 d!1265225))

(declare-fun d!1265227 () Bool)

(declare-fun res!1758260 () Bool)

(declare-fun e!2660932 () Bool)

(assert (=> d!1265227 (=> (not res!1758260) (not e!2660932))))

(assert (=> d!1265227 (= res!1758260 ((_ is HashMap!4201) (cache!4341 cacheDown!738)))))

(assert (=> d!1265227 (= (inv!62946 cacheDown!738) e!2660932)))

(declare-fun b!4285253 () Bool)

(assert (=> b!4285253 (= e!2660932 (validCacheMapDown!444 (cache!4341 cacheDown!738)))))

(assert (= (and d!1265227 res!1758260) b!4285253))

(assert (=> b!4285253 m!4881139))

(assert (=> start!411690 d!1265227))

(declare-fun d!1265229 () Bool)

(assert (=> d!1265229 (= (inv!62945 totalInput!528) (isBalanced!3877 (c!730057 totalInput!528)))))

(declare-fun bs!602828 () Bool)

(assert (= bs!602828 d!1265229))

(declare-fun m!4881295 () Bool)

(assert (=> bs!602828 m!4881295))

(assert (=> start!411690 d!1265229))

(declare-fun d!1265231 () Bool)

(assert (=> d!1265231 (= (inv!62945 input!1632) (isBalanced!3877 (c!730057 input!1632)))))

(declare-fun bs!602829 () Bool)

(assert (= bs!602829 d!1265231))

(declare-fun m!4881297 () Bool)

(assert (=> bs!602829 m!4881297))

(assert (=> start!411690 d!1265231))

(declare-fun d!1265233 () Bool)

(assert (=> d!1265233 (= (inv!62944 (tag!8870 rule!232)) (= (mod (str.len (value!250985 (tag!8870 rule!232))) 2) 0))))

(assert (=> b!4285066 d!1265233))

(declare-fun d!1265235 () Bool)

(declare-fun res!1758263 () Bool)

(declare-fun e!2660935 () Bool)

(assert (=> d!1265235 (=> (not res!1758263) (not e!2660935))))

(declare-fun semiInverseModEq!3535 (Int Int) Bool)

(assert (=> d!1265235 (= res!1758263 (semiInverseModEq!3535 (toChars!10716 (transformation!8006 rule!232)) (toValue!10857 (transformation!8006 rule!232))))))

(assert (=> d!1265235 (= (inv!62950 (transformation!8006 rule!232)) e!2660935)))

(declare-fun b!4285256 () Bool)

(declare-fun equivClasses!3414 (Int Int) Bool)

(assert (=> b!4285256 (= e!2660935 (equivClasses!3414 (toChars!10716 (transformation!8006 rule!232)) (toValue!10857 (transformation!8006 rule!232))))))

(assert (= (and d!1265235 res!1758263) b!4285256))

(declare-fun m!4881299 () Bool)

(assert (=> d!1265235 m!4881299))

(declare-fun m!4881301 () Bool)

(assert (=> b!4285256 m!4881301))

(assert (=> b!4285066 d!1265235))

(declare-fun tp!1311749 () Bool)

(declare-fun e!2660940 () Bool)

(declare-fun tp!1311748 () Bool)

(declare-fun b!4285265 () Bool)

(assert (=> b!4285265 (= e!2660940 (and (inv!62949 (left!35344 (c!730057 (totalInput!4305 cacheFindLongestMatch!156)))) tp!1311748 (inv!62949 (right!35674 (c!730057 (totalInput!4305 cacheFindLongestMatch!156)))) tp!1311749))))

(declare-fun b!4285267 () Bool)

(declare-fun e!2660941 () Bool)

(declare-fun tp!1311747 () Bool)

(assert (=> b!4285267 (= e!2660941 tp!1311747)))

(declare-fun b!4285266 () Bool)

(declare-fun inv!62954 (IArray!28777) Bool)

(assert (=> b!4285266 (= e!2660940 (and (inv!62954 (xs!17664 (c!730057 (totalInput!4305 cacheFindLongestMatch!156)))) e!2660941))))

(assert (=> b!4285077 (= tp!1311727 (and (inv!62949 (c!730057 (totalInput!4305 cacheFindLongestMatch!156))) e!2660940))))

(assert (= (and b!4285077 ((_ is Node!14358) (c!730057 (totalInput!4305 cacheFindLongestMatch!156)))) b!4285265))

(assert (= b!4285266 b!4285267))

(assert (= (and b!4285077 ((_ is Leaf!22217) (c!730057 (totalInput!4305 cacheFindLongestMatch!156)))) b!4285266))

(declare-fun m!4881303 () Bool)

(assert (=> b!4285265 m!4881303))

(declare-fun m!4881305 () Bool)

(assert (=> b!4285265 m!4881305))

(declare-fun m!4881307 () Bool)

(assert (=> b!4285266 m!4881307))

(assert (=> b!4285077 m!4881113))

(declare-fun b!4285276 () Bool)

(declare-fun e!2660948 () Bool)

(declare-fun tp!1311761 () Bool)

(assert (=> b!4285276 (= e!2660948 tp!1311761)))

(declare-fun tp!1311758 () Bool)

(declare-fun setRes!26156 () Bool)

(declare-fun setNonEmpty!26156 () Bool)

(declare-fun setElem!26156 () Context!5610)

(declare-fun inv!62955 (Context!5610) Bool)

(assert (=> setNonEmpty!26156 (= setRes!26156 (and tp!1311758 (inv!62955 setElem!26156) e!2660948))))

(declare-fun setRest!26156 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26156 (= (_2!25614 (h!52918 mapDefault!19426)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26156 true) setRest!26156))))

(declare-fun setIsEmpty!26156 () Bool)

(assert (=> setIsEmpty!26156 setRes!26156))

(declare-fun e!2660950 () Bool)

(assert (=> b!4285060 (= tp!1311726 e!2660950)))

(declare-fun b!4285277 () Bool)

(declare-fun e!2660949 () Bool)

(declare-fun tp!1311760 () Bool)

(assert (=> b!4285277 (= e!2660949 tp!1311760)))

(declare-fun b!4285278 () Bool)

(declare-fun tp!1311759 () Bool)

(declare-fun tp_is_empty!23063 () Bool)

(assert (=> b!4285278 (= e!2660950 (and (inv!62955 (_1!25613 (_1!25614 (h!52918 mapDefault!19426)))) e!2660949 tp_is_empty!23063 setRes!26156 tp!1311759))))

(declare-fun condSetEmpty!26156 () Bool)

(assert (=> b!4285278 (= condSetEmpty!26156 (= (_2!25614 (h!52918 mapDefault!19426)) ((as const (Array Context!5610 Bool)) false)))))

(assert (= b!4285278 b!4285277))

(assert (= (and b!4285278 condSetEmpty!26156) setIsEmpty!26156))

(assert (= (and b!4285278 (not condSetEmpty!26156)) setNonEmpty!26156))

(assert (= setNonEmpty!26156 b!4285276))

(assert (= (and b!4285060 ((_ is Cons!47498) mapDefault!19426)) b!4285278))

(declare-fun m!4881309 () Bool)

(assert (=> setNonEmpty!26156 m!4881309))

(declare-fun m!4881311 () Bool)

(assert (=> b!4285278 m!4881311))

(declare-fun e!2660968 () Bool)

(declare-fun b!4285293 () Bool)

(declare-fun e!2660966 () Bool)

(declare-fun mapDefault!19430 () List!47622)

(declare-fun setRes!26162 () Bool)

(declare-fun tp!1311781 () Bool)

(assert (=> b!4285293 (= e!2660968 (and (inv!62955 (_1!25613 (_1!25614 (h!52918 mapDefault!19430)))) e!2660966 tp_is_empty!23063 setRes!26162 tp!1311781))))

(declare-fun condSetEmpty!26162 () Bool)

(assert (=> b!4285293 (= condSetEmpty!26162 (= (_2!25614 (h!52918 mapDefault!19430)) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun b!4285294 () Bool)

(declare-fun e!2660967 () Bool)

(declare-fun tp!1311787 () Bool)

(assert (=> b!4285294 (= e!2660967 tp!1311787)))

(declare-fun b!4285295 () Bool)

(declare-fun mapValue!19430 () List!47622)

(declare-fun e!2660963 () Bool)

(declare-fun tp!1311782 () Bool)

(declare-fun setRes!26161 () Bool)

(declare-fun e!2660965 () Bool)

(assert (=> b!4285295 (= e!2660963 (and (inv!62955 (_1!25613 (_1!25614 (h!52918 mapValue!19430)))) e!2660965 tp_is_empty!23063 setRes!26161 tp!1311782))))

(declare-fun condSetEmpty!26161 () Bool)

(assert (=> b!4285295 (= condSetEmpty!26161 (= (_2!25614 (h!52918 mapValue!19430)) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun setIsEmpty!26161 () Bool)

(assert (=> setIsEmpty!26161 setRes!26161))

(declare-fun b!4285296 () Bool)

(declare-fun tp!1311786 () Bool)

(assert (=> b!4285296 (= e!2660966 tp!1311786)))

(declare-fun tp!1311788 () Bool)

(declare-fun e!2660964 () Bool)

(declare-fun setNonEmpty!26161 () Bool)

(declare-fun setElem!26162 () Context!5610)

(assert (=> setNonEmpty!26161 (= setRes!26162 (and tp!1311788 (inv!62955 setElem!26162) e!2660964))))

(declare-fun setRest!26161 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26161 (= (_2!25614 (h!52918 mapDefault!19430)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26162 true) setRest!26161))))

(declare-fun mapNonEmpty!19430 () Bool)

(declare-fun mapRes!19430 () Bool)

(declare-fun tp!1311785 () Bool)

(assert (=> mapNonEmpty!19430 (= mapRes!19430 (and tp!1311785 e!2660963))))

(declare-fun mapRest!19430 () (Array (_ BitVec 32) List!47622))

(declare-fun mapKey!19430 () (_ BitVec 32))

(assert (=> mapNonEmpty!19430 (= mapRest!19425 (store mapRest!19430 mapKey!19430 mapValue!19430))))

(declare-fun condMapEmpty!19430 () Bool)

(assert (=> mapNonEmpty!19427 (= condMapEmpty!19430 (= mapRest!19425 ((as const (Array (_ BitVec 32) List!47622)) mapDefault!19430)))))

(assert (=> mapNonEmpty!19427 (= tp!1311712 (and e!2660968 mapRes!19430))))

(declare-fun mapIsEmpty!19430 () Bool)

(assert (=> mapIsEmpty!19430 mapRes!19430))

(declare-fun b!4285297 () Bool)

(declare-fun tp!1311784 () Bool)

(assert (=> b!4285297 (= e!2660965 tp!1311784)))

(declare-fun setIsEmpty!26162 () Bool)

(assert (=> setIsEmpty!26162 setRes!26162))

(declare-fun b!4285298 () Bool)

(declare-fun tp!1311783 () Bool)

(assert (=> b!4285298 (= e!2660964 tp!1311783)))

(declare-fun setNonEmpty!26162 () Bool)

(declare-fun setElem!26161 () Context!5610)

(declare-fun tp!1311780 () Bool)

(assert (=> setNonEmpty!26162 (= setRes!26161 (and tp!1311780 (inv!62955 setElem!26161) e!2660967))))

(declare-fun setRest!26162 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26162 (= (_2!25614 (h!52918 mapValue!19430)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26161 true) setRest!26162))))

(assert (= (and mapNonEmpty!19427 condMapEmpty!19430) mapIsEmpty!19430))

(assert (= (and mapNonEmpty!19427 (not condMapEmpty!19430)) mapNonEmpty!19430))

(assert (= b!4285295 b!4285297))

(assert (= (and b!4285295 condSetEmpty!26161) setIsEmpty!26161))

(assert (= (and b!4285295 (not condSetEmpty!26161)) setNonEmpty!26162))

(assert (= setNonEmpty!26162 b!4285294))

(assert (= (and mapNonEmpty!19430 ((_ is Cons!47498) mapValue!19430)) b!4285295))

(assert (= b!4285293 b!4285296))

(assert (= (and b!4285293 condSetEmpty!26162) setIsEmpty!26162))

(assert (= (and b!4285293 (not condSetEmpty!26162)) setNonEmpty!26161))

(assert (= setNonEmpty!26161 b!4285298))

(assert (= (and mapNonEmpty!19427 ((_ is Cons!47498) mapDefault!19430)) b!4285293))

(declare-fun m!4881313 () Bool)

(assert (=> setNonEmpty!26162 m!4881313))

(declare-fun m!4881315 () Bool)

(assert (=> setNonEmpty!26161 m!4881315))

(declare-fun m!4881317 () Bool)

(assert (=> b!4285293 m!4881317))

(declare-fun m!4881319 () Bool)

(assert (=> mapNonEmpty!19430 m!4881319))

(declare-fun m!4881321 () Bool)

(assert (=> b!4285295 m!4881321))

(declare-fun b!4285299 () Bool)

(declare-fun e!2660969 () Bool)

(declare-fun tp!1311792 () Bool)

(assert (=> b!4285299 (= e!2660969 tp!1311792)))

(declare-fun setNonEmpty!26163 () Bool)

(declare-fun tp!1311789 () Bool)

(declare-fun setRes!26163 () Bool)

(declare-fun setElem!26163 () Context!5610)

(assert (=> setNonEmpty!26163 (= setRes!26163 (and tp!1311789 (inv!62955 setElem!26163) e!2660969))))

(declare-fun setRest!26163 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26163 (= (_2!25614 (h!52918 mapValue!19427)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26163 true) setRest!26163))))

(declare-fun setIsEmpty!26163 () Bool)

(assert (=> setIsEmpty!26163 setRes!26163))

(declare-fun e!2660971 () Bool)

(assert (=> mapNonEmpty!19427 (= tp!1311715 e!2660971)))

(declare-fun b!4285300 () Bool)

(declare-fun e!2660970 () Bool)

(declare-fun tp!1311791 () Bool)

(assert (=> b!4285300 (= e!2660970 tp!1311791)))

(declare-fun b!4285301 () Bool)

(declare-fun tp!1311790 () Bool)

(assert (=> b!4285301 (= e!2660971 (and (inv!62955 (_1!25613 (_1!25614 (h!52918 mapValue!19427)))) e!2660970 tp_is_empty!23063 setRes!26163 tp!1311790))))

(declare-fun condSetEmpty!26163 () Bool)

(assert (=> b!4285301 (= condSetEmpty!26163 (= (_2!25614 (h!52918 mapValue!19427)) ((as const (Array Context!5610 Bool)) false)))))

(assert (= b!4285301 b!4285300))

(assert (= (and b!4285301 condSetEmpty!26163) setIsEmpty!26163))

(assert (= (and b!4285301 (not condSetEmpty!26163)) setNonEmpty!26163))

(assert (= setNonEmpty!26163 b!4285299))

(assert (= (and mapNonEmpty!19427 ((_ is Cons!47498) mapValue!19427)) b!4285301))

(declare-fun m!4881323 () Bool)

(assert (=> setNonEmpty!26163 m!4881323))

(declare-fun m!4881325 () Bool)

(assert (=> b!4285301 m!4881325))

(declare-fun b!4285302 () Bool)

(declare-fun e!2660972 () Bool)

(declare-fun tp!1311796 () Bool)

(assert (=> b!4285302 (= e!2660972 tp!1311796)))

(declare-fun setElem!26164 () Context!5610)

(declare-fun tp!1311793 () Bool)

(declare-fun setNonEmpty!26164 () Bool)

(declare-fun setRes!26164 () Bool)

(assert (=> setNonEmpty!26164 (= setRes!26164 (and tp!1311793 (inv!62955 setElem!26164) e!2660972))))

(declare-fun setRest!26164 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26164 (= (_2!25614 (h!52918 (zeroValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26164 true) setRest!26164))))

(declare-fun setIsEmpty!26164 () Bool)

(assert (=> setIsEmpty!26164 setRes!26164))

(declare-fun e!2660974 () Bool)

(assert (=> b!4285087 (= tp!1311711 e!2660974)))

(declare-fun b!4285303 () Bool)

(declare-fun e!2660973 () Bool)

(declare-fun tp!1311795 () Bool)

(assert (=> b!4285303 (= e!2660973 tp!1311795)))

(declare-fun b!4285304 () Bool)

(declare-fun tp!1311794 () Bool)

(assert (=> b!4285304 (= e!2660974 (and (inv!62955 (_1!25613 (_1!25614 (h!52918 (zeroValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))))) e!2660973 tp_is_empty!23063 setRes!26164 tp!1311794))))

(declare-fun condSetEmpty!26164 () Bool)

(assert (=> b!4285304 (= condSetEmpty!26164 (= (_2!25614 (h!52918 (zeroValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))) ((as const (Array Context!5610 Bool)) false)))))

(assert (= b!4285304 b!4285303))

(assert (= (and b!4285304 condSetEmpty!26164) setIsEmpty!26164))

(assert (= (and b!4285304 (not condSetEmpty!26164)) setNonEmpty!26164))

(assert (= setNonEmpty!26164 b!4285302))

(assert (= (and b!4285087 ((_ is Cons!47498) (zeroValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))) b!4285304))

(declare-fun m!4881327 () Bool)

(assert (=> setNonEmpty!26164 m!4881327))

(declare-fun m!4881329 () Bool)

(assert (=> b!4285304 m!4881329))

(declare-fun b!4285305 () Bool)

(declare-fun e!2660975 () Bool)

(declare-fun tp!1311800 () Bool)

(assert (=> b!4285305 (= e!2660975 tp!1311800)))

(declare-fun setRes!26165 () Bool)

(declare-fun tp!1311797 () Bool)

(declare-fun setElem!26165 () Context!5610)

(declare-fun setNonEmpty!26165 () Bool)

(assert (=> setNonEmpty!26165 (= setRes!26165 (and tp!1311797 (inv!62955 setElem!26165) e!2660975))))

(declare-fun setRest!26165 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26165 (= (_2!25614 (h!52918 (minValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26165 true) setRest!26165))))

(declare-fun setIsEmpty!26165 () Bool)

(assert (=> setIsEmpty!26165 setRes!26165))

(declare-fun e!2660977 () Bool)

(assert (=> b!4285087 (= tp!1311730 e!2660977)))

(declare-fun b!4285306 () Bool)

(declare-fun e!2660976 () Bool)

(declare-fun tp!1311799 () Bool)

(assert (=> b!4285306 (= e!2660976 tp!1311799)))

(declare-fun tp!1311798 () Bool)

(declare-fun b!4285307 () Bool)

(assert (=> b!4285307 (= e!2660977 (and (inv!62955 (_1!25613 (_1!25614 (h!52918 (minValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))))) e!2660976 tp_is_empty!23063 setRes!26165 tp!1311798))))

(declare-fun condSetEmpty!26165 () Bool)

(assert (=> b!4285307 (= condSetEmpty!26165 (= (_2!25614 (h!52918 (minValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))) ((as const (Array Context!5610 Bool)) false)))))

(assert (= b!4285307 b!4285306))

(assert (= (and b!4285307 condSetEmpty!26165) setIsEmpty!26165))

(assert (= (and b!4285307 (not condSetEmpty!26165)) setNonEmpty!26165))

(assert (= setNonEmpty!26165 b!4285305))

(assert (= (and b!4285087 ((_ is Cons!47498) (minValue!4553 (v!41396 (underlying!8817 (v!41397 (underlying!8818 (cache!4340 cacheUp!725)))))))) b!4285307))

(declare-fun m!4881331 () Bool)

(assert (=> setNonEmpty!26165 m!4881331))

(declare-fun m!4881333 () Bool)

(assert (=> b!4285307 m!4881333))

(declare-fun tp!1311802 () Bool)

(declare-fun e!2660978 () Bool)

(declare-fun b!4285308 () Bool)

(declare-fun tp!1311803 () Bool)

(assert (=> b!4285308 (= e!2660978 (and (inv!62949 (left!35344 (c!730057 totalInput!528))) tp!1311802 (inv!62949 (right!35674 (c!730057 totalInput!528))) tp!1311803))))

(declare-fun b!4285310 () Bool)

(declare-fun e!2660979 () Bool)

(declare-fun tp!1311801 () Bool)

(assert (=> b!4285310 (= e!2660979 tp!1311801)))

(declare-fun b!4285309 () Bool)

(assert (=> b!4285309 (= e!2660978 (and (inv!62954 (xs!17664 (c!730057 totalInput!528))) e!2660979))))

(assert (=> b!4285089 (= tp!1311736 (and (inv!62949 (c!730057 totalInput!528)) e!2660978))))

(assert (= (and b!4285089 ((_ is Node!14358) (c!730057 totalInput!528))) b!4285308))

(assert (= b!4285309 b!4285310))

(assert (= (and b!4285089 ((_ is Leaf!22217) (c!730057 totalInput!528))) b!4285309))

(declare-fun m!4881335 () Bool)

(assert (=> b!4285308 m!4881335))

(declare-fun m!4881337 () Bool)

(assert (=> b!4285308 m!4881337))

(declare-fun m!4881339 () Bool)

(assert (=> b!4285309 m!4881339))

(assert (=> b!4285089 m!4881137))

(declare-fun mapIsEmpty!19433 () Bool)

(declare-fun mapRes!19433 () Bool)

(assert (=> mapIsEmpty!19433 mapRes!19433))

(declare-fun condMapEmpty!19433 () Bool)

(declare-fun mapDefault!19433 () List!47625)

(assert (=> mapNonEmpty!19426 (= condMapEmpty!19433 (= mapRest!19427 ((as const (Array (_ BitVec 32) List!47625)) mapDefault!19433)))))

(declare-fun e!2660989 () Bool)

(assert (=> mapNonEmpty!19426 (= tp!1311719 (and e!2660989 mapRes!19433))))

(declare-fun setNonEmpty!26170 () Bool)

(declare-fun tp!1311820 () Bool)

(declare-fun e!2660988 () Bool)

(declare-fun setRes!26171 () Bool)

(declare-fun setElem!26171 () Context!5610)

(assert (=> setNonEmpty!26170 (= setRes!26171 (and tp!1311820 (inv!62955 setElem!26171) e!2660988))))

(declare-fun setRest!26170 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26170 (= (_1!25617 (_1!25618 (h!52921 mapDefault!19433))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26171 true) setRest!26170))))

(declare-fun b!4285321 () Bool)

(declare-fun e!2660990 () Bool)

(declare-fun setRes!26170 () Bool)

(declare-fun tp!1311822 () Bool)

(assert (=> b!4285321 (= e!2660990 (and setRes!26170 tp!1311822))))

(declare-fun condSetEmpty!26170 () Bool)

(declare-fun mapValue!19433 () List!47625)

(assert (=> b!4285321 (= condSetEmpty!26170 (= (_1!25617 (_1!25618 (h!52921 mapValue!19433))) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun b!4285322 () Bool)

(declare-fun tp!1311818 () Bool)

(assert (=> b!4285322 (= e!2660988 tp!1311818)))

(declare-fun setIsEmpty!26170 () Bool)

(assert (=> setIsEmpty!26170 setRes!26170))

(declare-fun tp!1311819 () Bool)

(declare-fun setNonEmpty!26171 () Bool)

(declare-fun setElem!26170 () Context!5610)

(declare-fun e!2660991 () Bool)

(assert (=> setNonEmpty!26171 (= setRes!26170 (and tp!1311819 (inv!62955 setElem!26170) e!2660991))))

(declare-fun setRest!26171 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26171 (= (_1!25617 (_1!25618 (h!52921 mapValue!19433))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26170 true) setRest!26171))))

(declare-fun mapNonEmpty!19433 () Bool)

(declare-fun tp!1311821 () Bool)

(assert (=> mapNonEmpty!19433 (= mapRes!19433 (and tp!1311821 e!2660990))))

(declare-fun mapRest!19433 () (Array (_ BitVec 32) List!47625))

(declare-fun mapKey!19433 () (_ BitVec 32))

(assert (=> mapNonEmpty!19433 (= mapRest!19427 (store mapRest!19433 mapKey!19433 mapValue!19433))))

(declare-fun setIsEmpty!26171 () Bool)

(assert (=> setIsEmpty!26171 setRes!26171))

(declare-fun b!4285323 () Bool)

(declare-fun tp!1311823 () Bool)

(assert (=> b!4285323 (= e!2660991 tp!1311823)))

(declare-fun b!4285324 () Bool)

(declare-fun tp!1311824 () Bool)

(assert (=> b!4285324 (= e!2660989 (and setRes!26171 tp!1311824))))

(declare-fun condSetEmpty!26171 () Bool)

(assert (=> b!4285324 (= condSetEmpty!26171 (= (_1!25617 (_1!25618 (h!52921 mapDefault!19433))) ((as const (Array Context!5610 Bool)) false)))))

(assert (= (and mapNonEmpty!19426 condMapEmpty!19433) mapIsEmpty!19433))

(assert (= (and mapNonEmpty!19426 (not condMapEmpty!19433)) mapNonEmpty!19433))

(assert (= (and b!4285321 condSetEmpty!26170) setIsEmpty!26170))

(assert (= (and b!4285321 (not condSetEmpty!26170)) setNonEmpty!26171))

(assert (= setNonEmpty!26171 b!4285323))

(assert (= (and mapNonEmpty!19433 ((_ is Cons!47501) mapValue!19433)) b!4285321))

(assert (= (and b!4285324 condSetEmpty!26171) setIsEmpty!26171))

(assert (= (and b!4285324 (not condSetEmpty!26171)) setNonEmpty!26170))

(assert (= setNonEmpty!26170 b!4285322))

(assert (= (and mapNonEmpty!19426 ((_ is Cons!47501) mapDefault!19433)) b!4285324))

(declare-fun m!4881341 () Bool)

(assert (=> setNonEmpty!26170 m!4881341))

(declare-fun m!4881343 () Bool)

(assert (=> setNonEmpty!26171 m!4881343))

(declare-fun m!4881345 () Bool)

(assert (=> mapNonEmpty!19433 m!4881345))

(declare-fun setNonEmpty!26174 () Bool)

(declare-fun tp!1311831 () Bool)

(declare-fun e!2660997 () Bool)

(declare-fun setRes!26174 () Bool)

(declare-fun setElem!26174 () Context!5610)

(assert (=> setNonEmpty!26174 (= setRes!26174 (and tp!1311831 (inv!62955 setElem!26174) e!2660997))))

(declare-fun setRest!26174 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26174 (= (_1!25617 (_1!25618 (h!52921 mapValue!19425))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26174 true) setRest!26174))))

(declare-fun e!2660996 () Bool)

(assert (=> mapNonEmpty!19426 (= tp!1311713 e!2660996)))

(declare-fun b!4285331 () Bool)

(declare-fun tp!1311832 () Bool)

(assert (=> b!4285331 (= e!2660996 (and setRes!26174 tp!1311832))))

(declare-fun condSetEmpty!26174 () Bool)

(assert (=> b!4285331 (= condSetEmpty!26174 (= (_1!25617 (_1!25618 (h!52921 mapValue!19425))) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun b!4285332 () Bool)

(declare-fun tp!1311833 () Bool)

(assert (=> b!4285332 (= e!2660997 tp!1311833)))

(declare-fun setIsEmpty!26174 () Bool)

(assert (=> setIsEmpty!26174 setRes!26174))

(assert (= (and b!4285331 condSetEmpty!26174) setIsEmpty!26174))

(assert (= (and b!4285331 (not condSetEmpty!26174)) setNonEmpty!26174))

(assert (= setNonEmpty!26174 b!4285332))

(assert (= (and mapNonEmpty!19426 ((_ is Cons!47501) mapValue!19425)) b!4285331))

(declare-fun m!4881347 () Bool)

(assert (=> setNonEmpty!26174 m!4881347))

(declare-fun e!2660998 () Bool)

(declare-fun tp!1311835 () Bool)

(declare-fun tp!1311836 () Bool)

(declare-fun b!4285333 () Bool)

(assert (=> b!4285333 (= e!2660998 (and (inv!62949 (left!35344 (c!730057 input!1632))) tp!1311835 (inv!62949 (right!35674 (c!730057 input!1632))) tp!1311836))))

(declare-fun b!4285335 () Bool)

(declare-fun e!2660999 () Bool)

(declare-fun tp!1311834 () Bool)

(assert (=> b!4285335 (= e!2660999 tp!1311834)))

(declare-fun b!4285334 () Bool)

(assert (=> b!4285334 (= e!2660998 (and (inv!62954 (xs!17664 (c!730057 input!1632))) e!2660999))))

(assert (=> b!4285063 (= tp!1311718 (and (inv!62949 (c!730057 input!1632)) e!2660998))))

(assert (= (and b!4285063 ((_ is Node!14358) (c!730057 input!1632))) b!4285333))

(assert (= b!4285334 b!4285335))

(assert (= (and b!4285063 ((_ is Leaf!22217) (c!730057 input!1632))) b!4285334))

(declare-fun m!4881349 () Bool)

(assert (=> b!4285333 m!4881349))

(declare-fun m!4881351 () Bool)

(assert (=> b!4285333 m!4881351))

(declare-fun m!4881353 () Bool)

(assert (=> b!4285334 m!4881353))

(assert (=> b!4285063 m!4881057))

(declare-fun e!2661001 () Bool)

(declare-fun tp!1311837 () Bool)

(declare-fun setNonEmpty!26175 () Bool)

(declare-fun setElem!26175 () Context!5610)

(declare-fun setRes!26175 () Bool)

(assert (=> setNonEmpty!26175 (= setRes!26175 (and tp!1311837 (inv!62955 setElem!26175) e!2661001))))

(declare-fun setRest!26175 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26175 (= (_1!25617 (_1!25618 (h!52921 mapDefault!19427))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26175 true) setRest!26175))))

(declare-fun e!2661000 () Bool)

(assert (=> b!4285080 (= tp!1311728 e!2661000)))

(declare-fun b!4285336 () Bool)

(declare-fun tp!1311838 () Bool)

(assert (=> b!4285336 (= e!2661000 (and setRes!26175 tp!1311838))))

(declare-fun condSetEmpty!26175 () Bool)

(assert (=> b!4285336 (= condSetEmpty!26175 (= (_1!25617 (_1!25618 (h!52921 mapDefault!19427))) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun b!4285337 () Bool)

(declare-fun tp!1311839 () Bool)

(assert (=> b!4285337 (= e!2661001 tp!1311839)))

(declare-fun setIsEmpty!26175 () Bool)

(assert (=> setIsEmpty!26175 setRes!26175))

(assert (= (and b!4285336 condSetEmpty!26175) setIsEmpty!26175))

(assert (= (and b!4285336 (not condSetEmpty!26175)) setNonEmpty!26175))

(assert (= setNonEmpty!26175 b!4285337))

(assert (= (and b!4285080 ((_ is Cons!47501) mapDefault!19427)) b!4285336))

(declare-fun m!4881355 () Bool)

(assert (=> setNonEmpty!26175 m!4881355))

(declare-fun setElem!26176 () Context!5610)

(declare-fun tp!1311840 () Bool)

(declare-fun setRes!26176 () Bool)

(declare-fun e!2661003 () Bool)

(declare-fun setNonEmpty!26176 () Bool)

(assert (=> setNonEmpty!26176 (= setRes!26176 (and tp!1311840 (inv!62955 setElem!26176) e!2661003))))

(declare-fun setRest!26176 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26176 (= (_1!25617 (_1!25618 (h!52921 (zeroValue!4555 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26176 true) setRest!26176))))

(declare-fun e!2661002 () Bool)

(assert (=> b!4285065 (= tp!1311716 e!2661002)))

(declare-fun b!4285338 () Bool)

(declare-fun tp!1311841 () Bool)

(assert (=> b!4285338 (= e!2661002 (and setRes!26176 tp!1311841))))

(declare-fun condSetEmpty!26176 () Bool)

(assert (=> b!4285338 (= condSetEmpty!26176 (= (_1!25617 (_1!25618 (h!52921 (zeroValue!4555 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun b!4285339 () Bool)

(declare-fun tp!1311842 () Bool)

(assert (=> b!4285339 (= e!2661003 tp!1311842)))

(declare-fun setIsEmpty!26176 () Bool)

(assert (=> setIsEmpty!26176 setRes!26176))

(assert (= (and b!4285338 condSetEmpty!26176) setIsEmpty!26176))

(assert (= (and b!4285338 (not condSetEmpty!26176)) setNonEmpty!26176))

(assert (= setNonEmpty!26176 b!4285339))

(assert (= (and b!4285065 ((_ is Cons!47501) (zeroValue!4555 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156)))))))) b!4285338))

(declare-fun m!4881357 () Bool)

(assert (=> setNonEmpty!26176 m!4881357))

(declare-fun setRes!26177 () Bool)

(declare-fun e!2661005 () Bool)

(declare-fun setNonEmpty!26177 () Bool)

(declare-fun tp!1311843 () Bool)

(declare-fun setElem!26177 () Context!5610)

(assert (=> setNonEmpty!26177 (= setRes!26177 (and tp!1311843 (inv!62955 setElem!26177) e!2661005))))

(declare-fun setRest!26177 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26177 (= (_1!25617 (_1!25618 (h!52921 (minValue!4555 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26177 true) setRest!26177))))

(declare-fun e!2661004 () Bool)

(assert (=> b!4285065 (= tp!1311733 e!2661004)))

(declare-fun b!4285340 () Bool)

(declare-fun tp!1311844 () Bool)

(assert (=> b!4285340 (= e!2661004 (and setRes!26177 tp!1311844))))

(declare-fun condSetEmpty!26177 () Bool)

(assert (=> b!4285340 (= condSetEmpty!26177 (= (_1!25617 (_1!25618 (h!52921 (minValue!4555 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun b!4285341 () Bool)

(declare-fun tp!1311845 () Bool)

(assert (=> b!4285341 (= e!2661005 tp!1311845)))

(declare-fun setIsEmpty!26177 () Bool)

(assert (=> setIsEmpty!26177 setRes!26177))

(assert (= (and b!4285340 condSetEmpty!26177) setIsEmpty!26177))

(assert (= (and b!4285340 (not condSetEmpty!26177)) setNonEmpty!26177))

(assert (= setNonEmpty!26177 b!4285341))

(assert (= (and b!4285065 ((_ is Cons!47501) (minValue!4555 (v!41400 (underlying!8821 (v!41401 (underlying!8822 (cache!4342 cacheFindLongestMatch!156)))))))) b!4285340))

(declare-fun m!4881359 () Bool)

(assert (=> setNonEmpty!26177 m!4881359))

(declare-fun setIsEmpty!26180 () Bool)

(declare-fun setRes!26180 () Bool)

(assert (=> setIsEmpty!26180 setRes!26180))

(declare-fun b!4285350 () Bool)

(declare-fun e!2661014 () Bool)

(declare-fun tp!1311856 () Bool)

(assert (=> b!4285350 (= e!2661014 tp!1311856)))

(declare-fun b!4285351 () Bool)

(declare-fun e!2661012 () Bool)

(declare-fun tp!1311859 () Bool)

(assert (=> b!4285351 (= e!2661012 tp!1311859)))

(declare-fun b!4285352 () Bool)

(declare-fun tp!1311860 () Bool)

(declare-fun tp!1311857 () Bool)

(declare-fun e!2661013 () Bool)

(assert (=> b!4285352 (= e!2661013 (and tp!1311860 (inv!62955 (_2!25615 (_1!25616 (h!52920 (zeroValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))))) e!2661014 tp_is_empty!23063 setRes!26180 tp!1311857))))

(declare-fun condSetEmpty!26180 () Bool)

(assert (=> b!4285352 (= condSetEmpty!26180 (= (_2!25616 (h!52920 (zeroValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))) ((as const (Array Context!5610 Bool)) false)))))

(assert (=> b!4285064 (= tp!1311735 e!2661013)))

(declare-fun setElem!26180 () Context!5610)

(declare-fun setNonEmpty!26180 () Bool)

(declare-fun tp!1311858 () Bool)

(assert (=> setNonEmpty!26180 (= setRes!26180 (and tp!1311858 (inv!62955 setElem!26180) e!2661012))))

(declare-fun setRest!26180 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26180 (= (_2!25616 (h!52920 (zeroValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26180 true) setRest!26180))))

(assert (= b!4285352 b!4285350))

(assert (= (and b!4285352 condSetEmpty!26180) setIsEmpty!26180))

(assert (= (and b!4285352 (not condSetEmpty!26180)) setNonEmpty!26180))

(assert (= setNonEmpty!26180 b!4285351))

(assert (= (and b!4285064 ((_ is Cons!47500) (zeroValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))) b!4285352))

(declare-fun m!4881361 () Bool)

(assert (=> b!4285352 m!4881361))

(declare-fun m!4881363 () Bool)

(assert (=> setNonEmpty!26180 m!4881363))

(declare-fun setIsEmpty!26181 () Bool)

(declare-fun setRes!26181 () Bool)

(assert (=> setIsEmpty!26181 setRes!26181))

(declare-fun b!4285353 () Bool)

(declare-fun e!2661017 () Bool)

(declare-fun tp!1311861 () Bool)

(assert (=> b!4285353 (= e!2661017 tp!1311861)))

(declare-fun b!4285354 () Bool)

(declare-fun e!2661015 () Bool)

(declare-fun tp!1311864 () Bool)

(assert (=> b!4285354 (= e!2661015 tp!1311864)))

(declare-fun b!4285355 () Bool)

(declare-fun tp!1311865 () Bool)

(declare-fun tp!1311862 () Bool)

(declare-fun e!2661016 () Bool)

(assert (=> b!4285355 (= e!2661016 (and tp!1311865 (inv!62955 (_2!25615 (_1!25616 (h!52920 (minValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))))) e!2661017 tp_is_empty!23063 setRes!26181 tp!1311862))))

(declare-fun condSetEmpty!26181 () Bool)

(assert (=> b!4285355 (= condSetEmpty!26181 (= (_2!25616 (h!52920 (minValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))) ((as const (Array Context!5610 Bool)) false)))))

(assert (=> b!4285064 (= tp!1311721 e!2661016)))

(declare-fun setNonEmpty!26181 () Bool)

(declare-fun tp!1311863 () Bool)

(declare-fun setElem!26181 () Context!5610)

(assert (=> setNonEmpty!26181 (= setRes!26181 (and tp!1311863 (inv!62955 setElem!26181) e!2661015))))

(declare-fun setRest!26181 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26181 (= (_2!25616 (h!52920 (minValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26181 true) setRest!26181))))

(assert (= b!4285355 b!4285353))

(assert (= (and b!4285355 condSetEmpty!26181) setIsEmpty!26181))

(assert (= (and b!4285355 (not condSetEmpty!26181)) setNonEmpty!26181))

(assert (= setNonEmpty!26181 b!4285354))

(assert (= (and b!4285064 ((_ is Cons!47500) (minValue!4554 (v!41398 (underlying!8819 (v!41399 (underlying!8820 (cache!4341 cacheDown!738)))))))) b!4285355))

(declare-fun m!4881365 () Bool)

(assert (=> b!4285355 m!4881365))

(declare-fun m!4881367 () Bool)

(assert (=> setNonEmpty!26181 m!4881367))

(declare-fun setIsEmpty!26182 () Bool)

(declare-fun setRes!26182 () Bool)

(assert (=> setIsEmpty!26182 setRes!26182))

(declare-fun b!4285356 () Bool)

(declare-fun e!2661020 () Bool)

(declare-fun tp!1311866 () Bool)

(assert (=> b!4285356 (= e!2661020 tp!1311866)))

(declare-fun b!4285357 () Bool)

(declare-fun e!2661018 () Bool)

(declare-fun tp!1311869 () Bool)

(assert (=> b!4285357 (= e!2661018 tp!1311869)))

(declare-fun tp!1311870 () Bool)

(declare-fun b!4285358 () Bool)

(declare-fun e!2661019 () Bool)

(declare-fun tp!1311867 () Bool)

(assert (=> b!4285358 (= e!2661019 (and tp!1311870 (inv!62955 (_2!25615 (_1!25616 (h!52920 mapDefault!19425)))) e!2661020 tp_is_empty!23063 setRes!26182 tp!1311867))))

(declare-fun condSetEmpty!26182 () Bool)

(assert (=> b!4285358 (= condSetEmpty!26182 (= (_2!25616 (h!52920 mapDefault!19425)) ((as const (Array Context!5610 Bool)) false)))))

(assert (=> b!4285074 (= tp!1311731 e!2661019)))

(declare-fun setElem!26182 () Context!5610)

(declare-fun tp!1311868 () Bool)

(declare-fun setNonEmpty!26182 () Bool)

(assert (=> setNonEmpty!26182 (= setRes!26182 (and tp!1311868 (inv!62955 setElem!26182) e!2661018))))

(declare-fun setRest!26182 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26182 (= (_2!25616 (h!52920 mapDefault!19425)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26182 true) setRest!26182))))

(assert (= b!4285358 b!4285356))

(assert (= (and b!4285358 condSetEmpty!26182) setIsEmpty!26182))

(assert (= (and b!4285358 (not condSetEmpty!26182)) setNonEmpty!26182))

(assert (= setNonEmpty!26182 b!4285357))

(assert (= (and b!4285074 ((_ is Cons!47500) mapDefault!19425)) b!4285358))

(declare-fun m!4881369 () Bool)

(assert (=> b!4285358 m!4881369))

(declare-fun m!4881371 () Bool)

(assert (=> setNonEmpty!26182 m!4881371))

(declare-fun e!2661034 () Bool)

(declare-fun setRes!26188 () Bool)

(declare-fun mapValue!19436 () List!47624)

(declare-fun e!2661035 () Bool)

(declare-fun tp!1311898 () Bool)

(declare-fun b!4285373 () Bool)

(declare-fun tp!1311901 () Bool)

(assert (=> b!4285373 (= e!2661035 (and tp!1311901 (inv!62955 (_2!25615 (_1!25616 (h!52920 mapValue!19436)))) e!2661034 tp_is_empty!23063 setRes!26188 tp!1311898))))

(declare-fun condSetEmpty!26188 () Bool)

(assert (=> b!4285373 (= condSetEmpty!26188 (= (_2!25616 (h!52920 mapValue!19436)) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun tp!1311897 () Bool)

(declare-fun e!2661037 () Bool)

(declare-fun setNonEmpty!26187 () Bool)

(declare-fun setElem!26188 () Context!5610)

(declare-fun setRes!26187 () Bool)

(assert (=> setNonEmpty!26187 (= setRes!26187 (and tp!1311897 (inv!62955 setElem!26188) e!2661037))))

(declare-fun mapDefault!19436 () List!47624)

(declare-fun setRest!26187 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26187 (= (_2!25616 (h!52920 mapDefault!19436)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26188 true) setRest!26187))))

(declare-fun b!4285375 () Bool)

(declare-fun e!2661036 () Bool)

(declare-fun tp!1311900 () Bool)

(assert (=> b!4285375 (= e!2661036 tp!1311900)))

(declare-fun tp!1311899 () Bool)

(declare-fun b!4285376 () Bool)

(declare-fun e!2661033 () Bool)

(declare-fun tp!1311896 () Bool)

(assert (=> b!4285376 (= e!2661033 (and tp!1311896 (inv!62955 (_2!25615 (_1!25616 (h!52920 mapDefault!19436)))) e!2661036 tp_is_empty!23063 setRes!26187 tp!1311899))))

(declare-fun condSetEmpty!26187 () Bool)

(assert (=> b!4285376 (= condSetEmpty!26187 (= (_2!25616 (h!52920 mapDefault!19436)) ((as const (Array Context!5610 Bool)) false)))))

(declare-fun b!4285377 () Bool)

(declare-fun tp!1311894 () Bool)

(assert (=> b!4285377 (= e!2661034 tp!1311894)))

(declare-fun setIsEmpty!26187 () Bool)

(assert (=> setIsEmpty!26187 setRes!26188))

(declare-fun mapIsEmpty!19436 () Bool)

(declare-fun mapRes!19436 () Bool)

(assert (=> mapIsEmpty!19436 mapRes!19436))

(declare-fun setElem!26187 () Context!5610)

(declare-fun tp!1311893 () Bool)

(declare-fun setNonEmpty!26188 () Bool)

(declare-fun e!2661038 () Bool)

(assert (=> setNonEmpty!26188 (= setRes!26188 (and tp!1311893 (inv!62955 setElem!26187) e!2661038))))

(declare-fun setRest!26188 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26188 (= (_2!25616 (h!52920 mapValue!19436)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26187 true) setRest!26188))))

(declare-fun b!4285378 () Bool)

(declare-fun tp!1311902 () Bool)

(assert (=> b!4285378 (= e!2661038 tp!1311902)))

(declare-fun condMapEmpty!19436 () Bool)

(assert (=> mapNonEmpty!19425 (= condMapEmpty!19436 (= mapRest!19426 ((as const (Array (_ BitVec 32) List!47624)) mapDefault!19436)))))

(assert (=> mapNonEmpty!19425 (= tp!1311732 (and e!2661033 mapRes!19436))))

(declare-fun b!4285374 () Bool)

(declare-fun tp!1311903 () Bool)

(assert (=> b!4285374 (= e!2661037 tp!1311903)))

(declare-fun setIsEmpty!26188 () Bool)

(assert (=> setIsEmpty!26188 setRes!26187))

(declare-fun mapNonEmpty!19436 () Bool)

(declare-fun tp!1311895 () Bool)

(assert (=> mapNonEmpty!19436 (= mapRes!19436 (and tp!1311895 e!2661035))))

(declare-fun mapRest!19436 () (Array (_ BitVec 32) List!47624))

(declare-fun mapKey!19436 () (_ BitVec 32))

(assert (=> mapNonEmpty!19436 (= mapRest!19426 (store mapRest!19436 mapKey!19436 mapValue!19436))))

(assert (= (and mapNonEmpty!19425 condMapEmpty!19436) mapIsEmpty!19436))

(assert (= (and mapNonEmpty!19425 (not condMapEmpty!19436)) mapNonEmpty!19436))

(assert (= b!4285373 b!4285377))

(assert (= (and b!4285373 condSetEmpty!26188) setIsEmpty!26187))

(assert (= (and b!4285373 (not condSetEmpty!26188)) setNonEmpty!26188))

(assert (= setNonEmpty!26188 b!4285378))

(assert (= (and mapNonEmpty!19436 ((_ is Cons!47500) mapValue!19436)) b!4285373))

(assert (= b!4285376 b!4285375))

(assert (= (and b!4285376 condSetEmpty!26187) setIsEmpty!26188))

(assert (= (and b!4285376 (not condSetEmpty!26187)) setNonEmpty!26187))

(assert (= setNonEmpty!26187 b!4285374))

(assert (= (and mapNonEmpty!19425 ((_ is Cons!47500) mapDefault!19436)) b!4285376))

(declare-fun m!4881373 () Bool)

(assert (=> setNonEmpty!26188 m!4881373))

(declare-fun m!4881375 () Bool)

(assert (=> setNonEmpty!26187 m!4881375))

(declare-fun m!4881377 () Bool)

(assert (=> b!4285373 m!4881377))

(declare-fun m!4881379 () Bool)

(assert (=> b!4285376 m!4881379))

(declare-fun m!4881381 () Bool)

(assert (=> mapNonEmpty!19436 m!4881381))

(declare-fun setIsEmpty!26189 () Bool)

(declare-fun setRes!26189 () Bool)

(assert (=> setIsEmpty!26189 setRes!26189))

(declare-fun b!4285379 () Bool)

(declare-fun e!2661041 () Bool)

(declare-fun tp!1311904 () Bool)

(assert (=> b!4285379 (= e!2661041 tp!1311904)))

(declare-fun b!4285380 () Bool)

(declare-fun e!2661039 () Bool)

(declare-fun tp!1311907 () Bool)

(assert (=> b!4285380 (= e!2661039 tp!1311907)))

(declare-fun tp!1311905 () Bool)

(declare-fun tp!1311908 () Bool)

(declare-fun e!2661040 () Bool)

(declare-fun b!4285381 () Bool)

(assert (=> b!4285381 (= e!2661040 (and tp!1311908 (inv!62955 (_2!25615 (_1!25616 (h!52920 mapValue!19426)))) e!2661041 tp_is_empty!23063 setRes!26189 tp!1311905))))

(declare-fun condSetEmpty!26189 () Bool)

(assert (=> b!4285381 (= condSetEmpty!26189 (= (_2!25616 (h!52920 mapValue!19426)) ((as const (Array Context!5610 Bool)) false)))))

(assert (=> mapNonEmpty!19425 (= tp!1311724 e!2661040)))

(declare-fun setElem!26189 () Context!5610)

(declare-fun tp!1311906 () Bool)

(declare-fun setNonEmpty!26189 () Bool)

(assert (=> setNonEmpty!26189 (= setRes!26189 (and tp!1311906 (inv!62955 setElem!26189) e!2661039))))

(declare-fun setRest!26189 () (InoxSet Context!5610))

(assert (=> setNonEmpty!26189 (= (_2!25616 (h!52920 mapValue!19426)) ((_ map or) (store ((as const (Array Context!5610 Bool)) false) setElem!26189 true) setRest!26189))))

(assert (= b!4285381 b!4285379))

(assert (= (and b!4285381 condSetEmpty!26189) setIsEmpty!26189))

(assert (= (and b!4285381 (not condSetEmpty!26189)) setNonEmpty!26189))

(assert (= setNonEmpty!26189 b!4285380))

(assert (= (and mapNonEmpty!19425 ((_ is Cons!47500) mapValue!19426)) b!4285381))

(declare-fun m!4881383 () Bool)

(assert (=> b!4285381 m!4881383))

(declare-fun m!4881385 () Bool)

(assert (=> setNonEmpty!26189 m!4881385))

(declare-fun b!4285392 () Bool)

(declare-fun e!2661044 () Bool)

(assert (=> b!4285392 (= e!2661044 tp_is_empty!23063)))

(declare-fun b!4285394 () Bool)

(declare-fun tp!1311920 () Bool)

(assert (=> b!4285394 (= e!2661044 tp!1311920)))

(declare-fun b!4285393 () Bool)

(declare-fun tp!1311919 () Bool)

(declare-fun tp!1311921 () Bool)

(assert (=> b!4285393 (= e!2661044 (and tp!1311919 tp!1311921))))

(assert (=> b!4285066 (= tp!1311714 e!2661044)))

(declare-fun b!4285395 () Bool)

(declare-fun tp!1311922 () Bool)

(declare-fun tp!1311923 () Bool)

(assert (=> b!4285395 (= e!2661044 (and tp!1311922 tp!1311923))))

(assert (= (and b!4285066 ((_ is ElementMatch!12915) (regex!8006 rule!232))) b!4285392))

(assert (= (and b!4285066 ((_ is Concat!21231) (regex!8006 rule!232))) b!4285393))

(assert (= (and b!4285066 ((_ is Star!12915) (regex!8006 rule!232))) b!4285394))

(assert (= (and b!4285066 ((_ is Union!12915) (regex!8006 rule!232))) b!4285395))

(declare-fun b_lambda!126099 () Bool)

(assert (= b_lambda!126095 (or (and b!4285070 b_free!126977) b_lambda!126099)))

(declare-fun b_lambda!126101 () Bool)

(assert (= b_lambda!126093 (or (and b!4285070 b_free!126979) b_lambda!126101)))

(declare-fun b_lambda!126103 () Bool)

(assert (= b_lambda!126091 (or (and b!4285070 b_free!126977) b_lambda!126103)))

(check-sat (not b!4285242) (not setNonEmpty!26156) (not b_next!127677) (not b_next!127687) (not b!4285351) (not b!4285375) (not bm!294453) (not b!4285110) (not d!1265209) (not d!1265215) (not b!4285118) b_and!338193 (not setNonEmpty!26162) (not b!4285108) (not b!4285217) (not b!4285357) (not b!4285306) (not bm!294456) (not b!4285333) (not b!4285296) (not b!4285377) (not b!4285223) (not d!1265207) (not tb!257085) (not b!4285293) (not setNonEmpty!26170) (not b!4285307) (not setNonEmpty!26174) (not b!4285341) (not b!4285378) (not d!1265217) (not bm!294459) (not b!4285266) (not b!4285294) b_and!338175 (not b!4285310) (not b!4285379) (not setNonEmpty!26165) (not b!4285250) (not b!4285356) (not d!1265199) (not d!1265165) (not d!1265167) (not b!4285332) (not b!4285063) (not b!4285302) (not b!4285352) (not setNonEmpty!26182) (not d!1265235) (not b!4285335) (not b!4285381) (not setNonEmpty!26180) (not b!4285354) (not d!1265161) (not b!4285216) (not b!4285394) (not b!4285112) (not b!4285380) (not d!1265187) (not b!4285350) (not mapNonEmpty!19436) (not b!4285103) (not b!4285229) (not b_lambda!126097) (not b_next!127685) (not b!4285276) (not b!4285295) (not bm!294457) (not d!1265179) (not b!4285277) (not b!4285331) (not setNonEmpty!26163) (not d!1265193) (not b!4285323) (not b!4285267) (not b_next!127689) (not d!1265229) (not b!4285355) b_and!338187 b_and!338185 (not b!4285265) (not setNonEmpty!26189) (not b_lambda!126101) (not b_lambda!126103) (not setNonEmpty!26161) (not b!4285376) (not b!4285253) (not setNonEmpty!26187) (not tb!257087) (not b!4285305) (not b!4285339) (not b!4285297) (not b_lambda!126099) (not b!4285152) b_and!338195 (not b!4285247) (not b!4285159) (not d!1265195) (not b!4285300) (not setNonEmpty!26175) (not b!4285299) (not b!4285337) (not b!4285298) (not d!1265183) (not mapNonEmpty!19430) (not b!4285182) (not bm!294462) (not b!4285395) (not b!4285334) (not b_next!127681) (not d!1265185) (not b!4285165) (not b!4285077) (not b_next!127679) (not b!4285278) (not d!1265221) b_and!338177 (not setNonEmpty!26188) (not mapNonEmpty!19433) (not b!4285151) (not b!4285163) (not b!4285218) (not b!4285303) (not tb!257083) (not setNonEmpty!26181) (not setNonEmpty!26176) (not b!4285243) (not b!4285185) (not b!4285177) (not b!4285309) (not b!4285256) (not bm!294455) (not b!4285353) (not bm!294454) (not b!4285324) (not setNonEmpty!26164) (not setNonEmpty!26177) tp_is_empty!23063 (not b!4285187) (not b!4285301) (not b!4285340) (not b!4285121) (not d!1265205) (not b!4285101) (not b!4285374) (not b!4285393) b_and!338173 b_and!338183 (not b!4285321) (not b!4285089) (not bm!294452) (not d!1265175) (not b!4285183) (not b!4285358) (not d!1265231) (not b!4285241) (not b!4285336) (not bm!294458) (not b!4285373) (not d!1265219) (not b_next!127683) (not b!4285184) (not b!4285338) (not b_next!127675) (not b!4285232) (not setNonEmpty!26171) (not b!4285227) (not b!4285304) (not b!4285308) (not b!4285322))
(check-sat b_and!338193 b_and!338175 (not b_next!127685) b_and!338195 (not b_next!127681) b_and!338173 b_and!338183 (not b_next!127683) (not b_next!127675) (not b_next!127677) (not b_next!127687) (not b_next!127689) b_and!338187 b_and!338185 (not b_next!127679) b_and!338177)
