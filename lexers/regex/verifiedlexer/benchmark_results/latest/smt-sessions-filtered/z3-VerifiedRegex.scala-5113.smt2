; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261720 () Bool)

(assert start!261720)

(declare-fun b!2691467 () Bool)

(declare-fun b_free!76013 () Bool)

(declare-fun b_next!76717 () Bool)

(assert (=> b!2691467 (= b_free!76013 (not b_next!76717))))

(declare-fun tp!851340 () Bool)

(declare-fun b_and!199119 () Bool)

(assert (=> b!2691467 (= tp!851340 b_and!199119)))

(declare-fun b!2691485 () Bool)

(declare-fun b_free!76015 () Bool)

(declare-fun b_next!76719 () Bool)

(assert (=> b!2691485 (= b_free!76015 (not b_next!76719))))

(declare-fun tp!851324 () Bool)

(declare-fun b_and!199121 () Bool)

(assert (=> b!2691485 (= tp!851324 b_and!199121)))

(declare-fun b!2691449 () Bool)

(declare-fun b_free!76017 () Bool)

(declare-fun b_next!76721 () Bool)

(assert (=> b!2691449 (= b_free!76017 (not b_next!76721))))

(declare-fun tp!851331 () Bool)

(declare-fun b_and!199123 () Bool)

(assert (=> b!2691449 (= tp!851331 b_and!199123)))

(declare-fun b!2691476 () Bool)

(declare-fun b_free!76019 () Bool)

(declare-fun b_next!76723 () Bool)

(assert (=> b!2691476 (= b_free!76019 (not b_next!76723))))

(declare-fun tp!851332 () Bool)

(declare-fun b_and!199125 () Bool)

(assert (=> b!2691476 (= tp!851332 b_and!199125)))

(declare-fun b_free!76021 () Bool)

(declare-fun b_next!76725 () Bool)

(assert (=> b!2691476 (= b_free!76021 (not b_next!76725))))

(declare-fun tp!851333 () Bool)

(declare-fun b_and!199127 () Bool)

(assert (=> b!2691476 (= tp!851333 b_and!199127)))

(declare-fun b!2691457 () Bool)

(declare-fun b_free!76023 () Bool)

(declare-fun b_next!76727 () Bool)

(assert (=> b!2691457 (= b_free!76023 (not b_next!76727))))

(declare-fun tp!851329 () Bool)

(declare-fun b_and!199129 () Bool)

(assert (=> b!2691457 (= tp!851329 b_and!199129)))

(declare-fun b!2691446 () Bool)

(declare-fun res!1130823 () Bool)

(declare-fun e!1696900 () Bool)

(assert (=> b!2691446 (=> res!1130823 e!1696900)))

(declare-datatypes ((C!15940 0))(
  ( (C!15941 (val!9904 Int)) )
))
(declare-datatypes ((Regex!7891 0))(
  ( (ElementMatch!7891 (c!433872 C!15940)) (Concat!12852 (regOne!16294 Regex!7891) (regTwo!16294 Regex!7891)) (EmptyExpr!7891) (Star!7891 (reg!8220 Regex!7891)) (EmptyLang!7891) (Union!7891 (regOne!16295 Regex!7891) (regTwo!16295 Regex!7891)) )
))
(declare-datatypes ((List!31141 0))(
  ( (Nil!31041) (Cons!31041 (h!36461 Regex!7891) (t!225083 List!31141)) )
))
(declare-datatypes ((Context!4330 0))(
  ( (Context!4331 (exprs!2665 List!31141)) )
))
(declare-datatypes ((tuple3!4238 0))(
  ( (tuple3!4239 (_1!17881 Regex!7891) (_2!17881 Context!4330) (_3!2589 C!15940)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30584 0))(
  ( (tuple2!30585 (_1!17882 tuple3!4238) (_2!17882 (InoxSet Context!4330))) )
))
(declare-datatypes ((List!31142 0))(
  ( (Nil!31042) (Cons!31042 (h!36462 tuple2!30584) (t!225084 List!31142)) )
))
(declare-datatypes ((array!12512 0))(
  ( (array!12513 (arr!5590 (Array (_ BitVec 32) (_ BitVec 64))) (size!23976 (_ BitVec 32))) )
))
(declare-datatypes ((array!12514 0))(
  ( (array!12515 (arr!5591 (Array (_ BitVec 32) List!31142)) (size!23977 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7020 0))(
  ( (LongMapFixedSize!7021 (defaultEntry!3895 Int) (mask!9192 (_ BitVec 32)) (extraKeys!3759 (_ BitVec 32)) (zeroValue!3769 List!31142) (minValue!3769 List!31142) (_size!7063 (_ BitVec 32)) (_keys!3810 array!12512) (_values!3791 array!12514) (_vacant!3571 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!30586 0))(
  ( (tuple2!30587 (_1!17883 Context!4330) (_2!17883 C!15940)) )
))
(declare-datatypes ((tuple2!30588 0))(
  ( (tuple2!30589 (_1!17884 tuple2!30586) (_2!17884 (InoxSet Context!4330))) )
))
(declare-datatypes ((List!31143 0))(
  ( (Nil!31043) (Cons!31043 (h!36463 tuple2!30588) (t!225085 List!31143)) )
))
(declare-datatypes ((array!12516 0))(
  ( (array!12517 (arr!5592 (Array (_ BitVec 32) List!31143)) (size!23978 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7022 0))(
  ( (LongMapFixedSize!7023 (defaultEntry!3896 Int) (mask!9193 (_ BitVec 32)) (extraKeys!3760 (_ BitVec 32)) (zeroValue!3770 List!31143) (minValue!3770 List!31143) (_size!7064 (_ BitVec 32)) (_keys!3811 array!12512) (_values!3792 array!12516) (_vacant!3572 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13849 0))(
  ( (Cell!13850 (v!32837 LongMapFixedSize!7022)) )
))
(declare-datatypes ((List!31144 0))(
  ( (Nil!31044) (Cons!31044 (h!36464 (_ BitVec 16)) (t!225086 List!31144)) )
))
(declare-datatypes ((TokenValue!4961 0))(
  ( (FloatLiteralValue!9922 (text!35172 List!31144)) (TokenValueExt!4960 (__x!19931 Int)) (Broken!24805 (value!152650 List!31144)) (Object!5060) (End!4961) (Def!4961) (Underscore!4961) (Match!4961) (Else!4961) (Error!4961) (Case!4961) (If!4961) (Extends!4961) (Abstract!4961) (Class!4961) (Val!4961) (DelimiterValue!9922 (del!5021 List!31144)) (KeywordValue!4967 (value!152651 List!31144)) (CommentValue!9922 (value!152652 List!31144)) (WhitespaceValue!9922 (value!152653 List!31144)) (IndentationValue!4961 (value!152654 List!31144)) (String!34704) (Int32!4961) (Broken!24806 (value!152655 List!31144)) (Boolean!4962) (Unit!45168) (OperatorValue!4964 (op!5021 List!31144)) (IdentifierValue!9922 (value!152656 List!31144)) (IdentifierValue!9923 (value!152657 List!31144)) (WhitespaceValue!9923 (value!152658 List!31144)) (True!9922) (False!9922) (Broken!24807 (value!152659 List!31144)) (Broken!24808 (value!152660 List!31144)) (True!9923) (RightBrace!4961) (RightBracket!4961) (Colon!4961) (Null!4961) (Comma!4961) (LeftBracket!4961) (False!9923) (LeftBrace!4961) (ImaginaryLiteralValue!4961 (text!35173 List!31144)) (StringLiteralValue!14883 (value!152661 List!31144)) (EOFValue!4961 (value!152662 List!31144)) (IdentValue!4961 (value!152663 List!31144)) (DelimiterValue!9923 (value!152664 List!31144)) (DedentValue!4961 (value!152665 List!31144)) (NewLineValue!4961 (value!152666 List!31144)) (IntegerValue!14883 (value!152667 (_ BitVec 32)) (text!35174 List!31144)) (IntegerValue!14884 (value!152668 Int) (text!35175 List!31144)) (Times!4961) (Or!4961) (Equal!4961) (Minus!4961) (Broken!24809 (value!152669 List!31144)) (And!4961) (Div!4961) (LessEqual!4961) (Mod!4961) (Concat!12853) (Not!4961) (Plus!4961) (SpaceValue!4961 (value!152670 List!31144)) (IntegerValue!14885 (value!152671 Int) (text!35176 List!31144)) (StringLiteralValue!14884 (text!35177 List!31144)) (FloatLiteralValue!9923 (text!35178 List!31144)) (BytesLiteralValue!4961 (value!152672 List!31144)) (CommentValue!9923 (value!152673 List!31144)) (StringLiteralValue!14885 (value!152674 List!31144)) (ErrorTokenValue!4961 (msg!5022 List!31144)) )
))
(declare-datatypes ((List!31145 0))(
  ( (Nil!31045) (Cons!31045 (h!36465 C!15940) (t!225087 List!31145)) )
))
(declare-datatypes ((IArray!19419 0))(
  ( (IArray!19420 (innerList!9767 List!31145)) )
))
(declare-datatypes ((Conc!9707 0))(
  ( (Node!9707 (left!23944 Conc!9707) (right!24274 Conc!9707) (csize!19644 Int) (cheight!9918 Int)) (Leaf!14821 (xs!12743 IArray!19419) (csize!19645 Int)) (Empty!9707) )
))
(declare-datatypes ((String!34705 0))(
  ( (String!34706 (value!152675 String)) )
))
(declare-datatypes ((BalanceConc!19028 0))(
  ( (BalanceConc!19029 (c!433873 Conc!9707)) )
))
(declare-datatypes ((TokenValueInjection!9362 0))(
  ( (TokenValueInjection!9363 (toValue!6695 Int) (toChars!6554 Int)) )
))
(declare-datatypes ((Rule!9278 0))(
  ( (Rule!9279 (regex!4739 Regex!7891) (tag!5243 String!34705) (isSeparator!4739 Bool) (transformation!4739 TokenValueInjection!9362)) )
))
(declare-datatypes ((Token!8944 0))(
  ( (Token!8945 (value!152676 TokenValue!4961) (rule!7154 Rule!9278) (size!23979 Int) (originalCharacters!5503 List!31145)) )
))
(declare-datatypes ((tuple2!30590 0))(
  ( (tuple2!30591 (_1!17885 Token!8944) (_2!17885 BalanceConc!19028)) )
))
(declare-datatypes ((Option!6131 0))(
  ( (None!6130) (Some!6130 (v!32838 tuple2!30590)) )
))
(declare-datatypes ((Hashable!3426 0))(
  ( (HashableExt!3425 (__x!19932 Int)) )
))
(declare-datatypes ((MutLongMap!3510 0))(
  ( (LongMap!3510 (underlying!7223 Cell!13849)) (MutLongMapExt!3509 (__x!19933 Int)) )
))
(declare-datatypes ((Cell!13851 0))(
  ( (Cell!13852 (v!32839 MutLongMap!3510)) )
))
(declare-datatypes ((MutableMap!3416 0))(
  ( (MutableMapExt!3415 (__x!19934 Int)) (HashMap!3416 (underlying!7224 Cell!13851) (hashF!5458 Hashable!3426) (_size!7065 (_ BitVec 32)) (defaultValue!3587 Int)) )
))
(declare-datatypes ((CacheUp!2126 0))(
  ( (CacheUp!2127 (cache!3559 MutableMap!3416)) )
))
(declare-datatypes ((Cell!13853 0))(
  ( (Cell!13854 (v!32840 LongMapFixedSize!7020)) )
))
(declare-datatypes ((MutLongMap!3511 0))(
  ( (LongMap!3511 (underlying!7225 Cell!13853)) (MutLongMapExt!3510 (__x!19935 Int)) )
))
(declare-datatypes ((Cell!13855 0))(
  ( (Cell!13856 (v!32841 MutLongMap!3511)) )
))
(declare-datatypes ((Hashable!3427 0))(
  ( (HashableExt!3426 (__x!19936 Int)) )
))
(declare-datatypes ((MutableMap!3417 0))(
  ( (MutableMapExt!3416 (__x!19937 Int)) (HashMap!3417 (underlying!7226 Cell!13855) (hashF!5459 Hashable!3427) (_size!7066 (_ BitVec 32)) (defaultValue!3588 Int)) )
))
(declare-datatypes ((CacheDown!2238 0))(
  ( (CacheDown!2239 (cache!3560 MutableMap!3417)) )
))
(declare-datatypes ((tuple3!4240 0))(
  ( (tuple3!4241 (_1!17886 Option!6131) (_2!17886 CacheUp!2126) (_3!2590 CacheDown!2238)) )
))
(declare-fun lt!949792 () tuple3!4240)

(declare-fun lt!949799 () List!31145)

(declare-fun lt!949796 () BalanceConc!19028)

(declare-fun ++!7601 (List!31145 List!31145) List!31145)

(declare-fun list!11714 (BalanceConc!19028) List!31145)

(assert (=> b!2691446 (= res!1130823 (not (= lt!949799 (++!7601 (list!11714 lt!949796) (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792))))))))))

(declare-fun b!2691447 () Bool)

(declare-fun e!1696928 () Bool)

(declare-fun e!1696901 () Bool)

(assert (=> b!2691447 (= e!1696928 e!1696901)))

(declare-fun b!2691448 () Bool)

(declare-fun e!1696906 () Bool)

(declare-fun e!1696912 () Bool)

(declare-fun lt!949800 () MutLongMap!3511)

(get-info :version)

(assert (=> b!2691448 (= e!1696906 (and e!1696912 ((_ is LongMap!3511) lt!949800)))))

(declare-fun cacheDown!499 () CacheDown!2238)

(assert (=> b!2691448 (= lt!949800 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))

(declare-fun tp!851321 () Bool)

(declare-fun tp!851341 () Bool)

(declare-fun cacheUp!486 () CacheUp!2126)

(declare-fun e!1696924 () Bool)

(declare-fun array_inv!3991 (array!12512) Bool)

(declare-fun array_inv!3992 (array!12516) Bool)

(assert (=> b!2691449 (= e!1696901 (and tp!851331 tp!851341 tp!851321 (array_inv!3991 (_keys!3811 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) (array_inv!3992 (_values!3792 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) e!1696924))))

(declare-fun b!2691450 () Bool)

(declare-fun input!780 () BalanceConc!19028)

(declare-datatypes ((List!31146 0))(
  ( (Nil!31046) (Cons!31046 (h!36466 Rule!9278) (t!225088 List!31146)) )
))
(declare-fun rules!1381 () List!31146)

(declare-fun e!1696925 () Bool)

(declare-datatypes ((LexerInterface!4335 0))(
  ( (LexerInterfaceExt!4332 (__x!19938 Int)) (Lexer!4333) )
))
(declare-fun thiss!12257 () LexerInterface!4335)

(declare-datatypes ((List!31147 0))(
  ( (Nil!31047) (Cons!31047 (h!36467 Token!8944) (t!225089 List!31147)) )
))
(declare-datatypes ((IArray!19421 0))(
  ( (IArray!19422 (innerList!9768 List!31147)) )
))
(declare-datatypes ((Conc!9708 0))(
  ( (Node!9708 (left!23945 Conc!9708) (right!24275 Conc!9708) (csize!19646 Int) (cheight!9919 Int)) (Leaf!14822 (xs!12744 IArray!19421) (csize!19647 Int)) (Empty!9708) )
))
(declare-datatypes ((BalanceConc!19030 0))(
  ( (BalanceConc!19031 (c!433874 Conc!9708)) )
))
(declare-datatypes ((tuple2!30592 0))(
  ( (tuple2!30593 (_1!17887 BalanceConc!19030) (_2!17887 BalanceConc!19028)) )
))
(declare-fun lex!1955 (LexerInterface!4335 List!31146 BalanceConc!19028) tuple2!30592)

(declare-fun lexTailRecV2!867 (LexerInterface!4335 List!31146 BalanceConc!19028 BalanceConc!19028 BalanceConc!19028 BalanceConc!19030) tuple2!30592)

(assert (=> b!2691450 (= e!1696925 (= (lex!1955 thiss!12257 rules!1381 input!780) (lexTailRecV2!867 thiss!12257 rules!1381 input!780 (BalanceConc!19029 Empty!9707) input!780 (BalanceConc!19031 Empty!9708))))))

(declare-fun b!2691451 () Bool)

(declare-fun e!1696903 () Bool)

(declare-fun e!1696905 () Bool)

(assert (=> b!2691451 (= e!1696903 e!1696905)))

(declare-fun res!1130812 () Bool)

(assert (=> b!2691451 (=> (not res!1130812) (not e!1696905))))

(declare-fun lt!949786 () List!31145)

(declare-fun lt!949795 () List!31145)

(assert (=> b!2691451 (= res!1130812 (= lt!949799 (++!7601 lt!949795 lt!949786)))))

(declare-fun totalInput!354 () BalanceConc!19028)

(assert (=> b!2691451 (= lt!949799 (list!11714 totalInput!354))))

(assert (=> b!2691451 (= lt!949786 (list!11714 input!780))))

(declare-fun treated!26 () BalanceConc!19028)

(assert (=> b!2691451 (= lt!949795 (list!11714 treated!26))))

(declare-fun b!2691452 () Bool)

(declare-fun e!1696902 () Bool)

(assert (=> b!2691452 (= e!1696900 e!1696902)))

(declare-fun res!1130813 () Bool)

(assert (=> b!2691452 (=> res!1130813 e!1696902)))

(declare-fun lt!949790 () tuple2!30592)

(declare-fun lt!949808 () BalanceConc!19030)

(declare-fun list!11715 (BalanceConc!19030) List!31147)

(assert (=> b!2691452 (= res!1130813 (not (= (list!11715 (_1!17887 lt!949790)) (list!11715 lt!949808))))))

(declare-fun lexRec!598 (LexerInterface!4335 List!31146 BalanceConc!19028) tuple2!30592)

(assert (=> b!2691452 (= lt!949790 (lexRec!598 thiss!12257 rules!1381 lt!949796))))

(declare-fun b!2691453 () Bool)

(declare-fun e!1696930 () Bool)

(assert (=> b!2691453 (= e!1696905 e!1696930)))

(declare-fun res!1130818 () Bool)

(assert (=> b!2691453 (=> (not res!1130818) (not e!1696930))))

(declare-fun lt!949809 () List!31147)

(declare-fun lt!949789 () List!31147)

(assert (=> b!2691453 (= res!1130818 (= lt!949809 lt!949789))))

(declare-fun acc!348 () BalanceConc!19030)

(assert (=> b!2691453 (= lt!949789 (list!11715 acc!348))))

(declare-fun lt!949791 () tuple2!30592)

(assert (=> b!2691453 (= lt!949809 (list!11715 (_1!17887 lt!949791)))))

(assert (=> b!2691453 (= lt!949791 (lexRec!598 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2691454 () Bool)

(declare-fun res!1130822 () Bool)

(assert (=> b!2691454 (=> (not res!1130822) (not e!1696903))))

(declare-fun rulesInvariant!3826 (LexerInterface!4335 List!31146) Bool)

(assert (=> b!2691454 (= res!1130822 (rulesInvariant!3826 thiss!12257 rules!1381))))

(declare-fun b!2691455 () Bool)

(declare-fun res!1130817 () Bool)

(assert (=> b!2691455 (=> (not res!1130817) (not e!1696930))))

(declare-fun isEmpty!17712 (List!31145) Bool)

(assert (=> b!2691455 (= res!1130817 (isEmpty!17712 (list!11714 (_2!17887 lt!949791))))))

(declare-fun b!2691456 () Bool)

(declare-fun e!1696929 () Bool)

(declare-fun e!1696899 () Bool)

(assert (=> b!2691456 (= e!1696929 e!1696899)))

(declare-fun e!1696908 () Bool)

(declare-fun e!1696916 () Bool)

(assert (=> b!2691457 (= e!1696908 (and e!1696916 tp!851329))))

(declare-fun b!2691458 () Bool)

(assert (=> b!2691458 (= e!1696902 (isEmpty!17712 (list!11714 (_2!17887 lt!949790))))))

(declare-fun b!2691459 () Bool)

(declare-fun e!1696917 () Bool)

(declare-fun e!1696910 () Bool)

(declare-fun tp!851336 () Bool)

(assert (=> b!2691459 (= e!1696917 (and e!1696910 tp!851336))))

(declare-fun b!2691460 () Bool)

(declare-fun lt!949805 () tuple2!30592)

(declare-fun lt!949801 () Option!6131)

(assert (=> b!2691460 (= lt!949805 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949801))))))

(declare-fun e!1696909 () tuple2!30592)

(declare-fun prepend!1071 (BalanceConc!19030 Token!8944) BalanceConc!19030)

(assert (=> b!2691460 (= e!1696909 (tuple2!30593 (prepend!1071 (_1!17887 lt!949805) (_1!17885 (v!32838 lt!949801))) (_2!17887 lt!949805)))))

(declare-fun b!2691461 () Bool)

(declare-fun e!1696896 () Bool)

(assert (=> b!2691461 (= e!1696896 e!1696928)))

(declare-fun b!2691462 () Bool)

(declare-fun e!1696926 () Bool)

(declare-fun tp!851335 () Bool)

(declare-fun inv!42079 (Conc!9707) Bool)

(assert (=> b!2691462 (= e!1696926 (and (inv!42079 (c!433873 input!780)) tp!851335))))

(declare-fun b!2691463 () Bool)

(declare-fun res!1130814 () Bool)

(assert (=> b!2691463 (=> (not res!1130814) (not e!1696903))))

(declare-fun isEmpty!17713 (List!31146) Bool)

(assert (=> b!2691463 (= res!1130814 (not (isEmpty!17713 rules!1381)))))

(declare-fun b!2691464 () Bool)

(declare-fun lt!949804 () MutLongMap!3510)

(assert (=> b!2691464 (= e!1696916 (and e!1696896 ((_ is LongMap!3510) lt!949804)))))

(assert (=> b!2691464 (= lt!949804 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))

(declare-fun mapNonEmpty!16059 () Bool)

(declare-fun mapRes!16060 () Bool)

(declare-fun tp!851325 () Bool)

(declare-fun tp!851322 () Bool)

(assert (=> mapNonEmpty!16059 (= mapRes!16060 (and tp!851325 tp!851322))))

(declare-fun mapValue!16059 () List!31142)

(declare-fun mapKey!16060 () (_ BitVec 32))

(declare-fun mapRest!16059 () (Array (_ BitVec 32) List!31142))

(assert (=> mapNonEmpty!16059 (= (arr!5591 (_values!3791 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) (store mapRest!16059 mapKey!16060 mapValue!16059))))

(declare-fun b!2691465 () Bool)

(declare-fun tp!851328 () Bool)

(declare-fun mapRes!16059 () Bool)

(assert (=> b!2691465 (= e!1696924 (and tp!851328 mapRes!16059))))

(declare-fun condMapEmpty!16060 () Bool)

(declare-fun mapDefault!16059 () List!31143)

(assert (=> b!2691465 (= condMapEmpty!16060 (= (arr!5592 (_values!3792 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31143)) mapDefault!16059)))))

(declare-fun b!2691466 () Bool)

(declare-fun e!1696898 () Bool)

(assert (=> b!2691466 (= e!1696930 e!1696898)))

(declare-fun res!1130821 () Bool)

(assert (=> b!2691466 (=> (not res!1130821) (not e!1696898))))

(declare-fun lt!949787 () tuple2!30592)

(declare-fun lt!949782 () tuple2!30592)

(declare-fun ++!7602 (BalanceConc!19030 BalanceConc!19030) BalanceConc!19030)

(assert (=> b!2691466 (= res!1130821 (= (list!11715 (_1!17887 lt!949787)) (list!11715 (++!7602 acc!348 (_1!17887 lt!949782)))))))

(assert (=> b!2691466 (= lt!949782 (lexRec!598 thiss!12257 rules!1381 input!780))))

(assert (=> b!2691466 (= lt!949787 (lexRec!598 thiss!12257 rules!1381 totalInput!354))))

(declare-fun e!1696918 () Bool)

(declare-fun tp!851337 () Bool)

(declare-fun tp!851323 () Bool)

(declare-fun array_inv!3993 (array!12514) Bool)

(assert (=> b!2691467 (= e!1696899 (and tp!851340 tp!851337 tp!851323 (array_inv!3991 (_keys!3810 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) (array_inv!3993 (_values!3791 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) e!1696918))))

(declare-fun b!2691468 () Bool)

(declare-fun tp!851327 () Bool)

(declare-fun e!1696919 () Bool)

(declare-fun inv!42076 (String!34705) Bool)

(declare-fun inv!42080 (TokenValueInjection!9362) Bool)

(assert (=> b!2691468 (= e!1696910 (and tp!851327 (inv!42076 (tag!5243 (h!36466 rules!1381))) (inv!42080 (transformation!4739 (h!36466 rules!1381))) e!1696919))))

(declare-fun b!2691469 () Bool)

(declare-fun res!1130810 () Bool)

(assert (=> b!2691469 (=> res!1130810 e!1696900)))

(declare-fun valid!2719 (CacheDown!2238) Bool)

(assert (=> b!2691469 (= res!1130810 (not (valid!2719 (_3!2590 lt!949792))))))

(declare-fun b!2691470 () Bool)

(assert (=> b!2691470 (= e!1696912 e!1696929)))

(declare-fun mapNonEmpty!16060 () Bool)

(declare-fun tp!851330 () Bool)

(declare-fun tp!851334 () Bool)

(assert (=> mapNonEmpty!16060 (= mapRes!16059 (and tp!851330 tp!851334))))

(declare-fun mapKey!16059 () (_ BitVec 32))

(declare-fun mapValue!16060 () List!31143)

(declare-fun mapRest!16060 () (Array (_ BitVec 32) List!31143))

(assert (=> mapNonEmpty!16060 (= (arr!5592 (_values!3792 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) (store mapRest!16060 mapKey!16059 mapValue!16060))))

(declare-fun e!1696922 () Bool)

(declare-fun lt!949806 () tuple2!30592)

(declare-fun b!2691471 () Bool)

(declare-fun lt!949802 () Option!6131)

(assert (=> b!2691471 (= e!1696922 (= lt!949782 (tuple2!30593 (prepend!1071 (_1!17887 lt!949806) (_1!17885 (v!32838 lt!949802))) (_2!17887 lt!949806))))))

(declare-fun b!2691472 () Bool)

(declare-fun tp!851339 () Bool)

(assert (=> b!2691472 (= e!1696918 (and tp!851339 mapRes!16060))))

(declare-fun condMapEmpty!16059 () Bool)

(declare-fun mapDefault!16060 () List!31142)

(assert (=> b!2691472 (= condMapEmpty!16059 (= (arr!5591 (_values!3791 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31142)) mapDefault!16060)))))

(declare-fun b!2691473 () Bool)

(declare-fun res!1130816 () Bool)

(assert (=> b!2691473 (=> (not res!1130816) (not e!1696903))))

(assert (=> b!2691473 (= res!1130816 (valid!2719 cacheDown!499))))

(declare-fun b!2691474 () Bool)

(declare-fun res!1130820 () Bool)

(assert (=> b!2691474 (=> (not res!1130820) (not e!1696898))))

(assert (=> b!2691474 (= res!1130820 (= (list!11714 (_2!17887 lt!949787)) (list!11714 (_2!17887 lt!949782))))))

(declare-fun b!2691475 () Bool)

(declare-fun e!1696927 () Bool)

(declare-fun tp!851338 () Bool)

(assert (=> b!2691475 (= e!1696927 (and (inv!42079 (c!433873 totalInput!354)) tp!851338))))

(assert (=> b!2691476 (= e!1696919 (and tp!851332 tp!851333))))

(declare-fun b!2691477 () Bool)

(declare-fun e!1696914 () Bool)

(assert (=> b!2691477 (= e!1696898 (not e!1696914))))

(declare-fun res!1130825 () Bool)

(assert (=> b!2691477 (=> res!1130825 e!1696914)))

(assert (=> b!2691477 (= res!1130825 (not ((_ is Some!6130) (_1!17886 lt!949792))))))

(declare-fun maxPrefixZipperSequenceMem!11 (LexerInterface!4335 List!31146 BalanceConc!19028 CacheUp!2126 CacheDown!2238) tuple3!4240)

(assert (=> b!2691477 (= lt!949792 (maxPrefixZipperSequenceMem!11 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))

(assert (=> b!2691477 e!1696925))

(declare-fun res!1130815 () Bool)

(assert (=> b!2691477 (=> (not res!1130815) (not e!1696925))))

(declare-fun e!1696913 () tuple2!30592)

(declare-fun lexTailRec!23 (LexerInterface!4335 List!31146 BalanceConc!19028 BalanceConc!19028 BalanceConc!19028 BalanceConc!19030) tuple2!30592)

(assert (=> b!2691477 (= res!1130815 (= (lexTailRec!23 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1696913))))

(declare-fun c!433870 () Bool)

(assert (=> b!2691477 (= c!433870 ((_ is Some!6130) lt!949802))))

(declare-fun maxPrefixZipperSequence!999 (LexerInterface!4335 List!31146 BalanceConc!19028) Option!6131)

(assert (=> b!2691477 (= lt!949802 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 input!780))))

(declare-fun b!2691478 () Bool)

(declare-fun e!1696907 () Bool)

(declare-fun tp!851326 () Bool)

(assert (=> b!2691478 (= e!1696907 (and (inv!42079 (c!433873 treated!26)) tp!851326))))

(declare-fun b!2691479 () Bool)

(declare-fun e!1696904 () Bool)

(declare-fun e!1696911 () Bool)

(assert (=> b!2691479 (= e!1696904 e!1696911)))

(declare-fun b!2691480 () Bool)

(declare-fun e!1696897 () Bool)

(declare-fun tp!851320 () Bool)

(declare-fun inv!42081 (Conc!9708) Bool)

(assert (=> b!2691480 (= e!1696897 (and (inv!42081 (c!433874 acc!348)) tp!851320))))

(declare-fun b!2691481 () Bool)

(declare-fun lt!949783 () BalanceConc!19028)

(assert (=> b!2691481 (= e!1696909 (tuple2!30593 (BalanceConc!19031 Empty!9708) lt!949783))))

(declare-fun mapIsEmpty!16059 () Bool)

(assert (=> mapIsEmpty!16059 mapRes!16059))

(declare-fun b!2691482 () Bool)

(declare-fun e!1696923 () Bool)

(assert (=> b!2691482 (= e!1696923 e!1696908)))

(declare-fun mapIsEmpty!16060 () Bool)

(assert (=> mapIsEmpty!16060 mapRes!16060))

(declare-fun b!2691483 () Bool)

(declare-fun res!1130826 () Bool)

(assert (=> b!2691483 (=> (not res!1130826) (not e!1696903))))

(declare-fun valid!2720 (CacheUp!2126) Bool)

(assert (=> b!2691483 (= res!1130826 (valid!2720 cacheUp!486))))

(declare-fun b!2691484 () Bool)

(assert (=> b!2691484 (= e!1696914 e!1696900)))

(declare-fun res!1130824 () Bool)

(assert (=> b!2691484 (=> res!1130824 e!1696900)))

(assert (=> b!2691484 (= res!1130824 (not (valid!2720 (_2!17886 lt!949792))))))

(declare-fun append!766 (BalanceConc!19030 Token!8944) BalanceConc!19030)

(assert (=> b!2691484 (= lt!949808 (append!766 acc!348 (_1!17885 (v!32838 (_1!17886 lt!949792)))))))

(declare-fun ++!7603 (BalanceConc!19028 BalanceConc!19028) BalanceConc!19028)

(declare-fun charsOf!2986 (Token!8944) BalanceConc!19028)

(assert (=> b!2691484 (= lt!949796 (++!7603 treated!26 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))))))

(assert (=> b!2691485 (= e!1696911 (and e!1696906 tp!851324))))

(declare-fun res!1130811 () Bool)

(assert (=> start!261720 (=> (not res!1130811) (not e!1696903))))

(assert (=> start!261720 (= res!1130811 ((_ is Lexer!4333) thiss!12257))))

(assert (=> start!261720 e!1696903))

(declare-fun inv!42082 (BalanceConc!19028) Bool)

(assert (=> start!261720 (and (inv!42082 totalInput!354) e!1696927)))

(declare-fun inv!42083 (CacheUp!2126) Bool)

(assert (=> start!261720 (and (inv!42083 cacheUp!486) e!1696923)))

(declare-fun inv!42084 (BalanceConc!19030) Bool)

(assert (=> start!261720 (and (inv!42084 acc!348) e!1696897)))

(assert (=> start!261720 (and (inv!42082 input!780) e!1696926)))

(assert (=> start!261720 (and (inv!42082 treated!26) e!1696907)))

(assert (=> start!261720 e!1696917))

(assert (=> start!261720 true))

(declare-fun inv!42085 (CacheDown!2238) Bool)

(assert (=> start!261720 (and (inv!42085 cacheDown!499) e!1696904)))

(declare-fun lt!949781 () BalanceConc!19030)

(declare-fun b!2691486 () Bool)

(assert (=> b!2691486 (= e!1696913 (lexTailRec!23 thiss!12257 rules!1381 totalInput!354 lt!949783 (_2!17885 (v!32838 lt!949802)) lt!949781))))

(assert (=> b!2691486 (= lt!949806 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949802))))))

(declare-fun lt!949785 () BalanceConc!19028)

(assert (=> b!2691486 (= lt!949785 (charsOf!2986 (_1!17885 (v!32838 lt!949802))))))

(declare-fun lt!949797 () List!31145)

(assert (=> b!2691486 (= lt!949797 (list!11714 lt!949785))))

(declare-fun lt!949798 () List!31145)

(assert (=> b!2691486 (= lt!949798 (list!11714 (_2!17885 (v!32838 lt!949802))))))

(declare-datatypes ((Unit!45169 0))(
  ( (Unit!45170) )
))
(declare-fun lt!949788 () Unit!45169)

(declare-fun lemmaConcatAssociativity!1545 (List!31145 List!31145 List!31145) Unit!45169)

(assert (=> b!2691486 (= lt!949788 (lemmaConcatAssociativity!1545 lt!949795 lt!949797 lt!949798))))

(declare-fun lt!949784 () List!31145)

(assert (=> b!2691486 (= lt!949784 (++!7601 lt!949795 lt!949797))))

(declare-fun res!1130819 () Bool)

(assert (=> b!2691486 (= res!1130819 (= (++!7601 lt!949784 lt!949798) (++!7601 lt!949795 (++!7601 lt!949797 lt!949798))))))

(assert (=> b!2691486 (=> (not res!1130819) (not e!1696922))))

(assert (=> b!2691486 e!1696922))

(declare-fun lt!949793 () List!31147)

(assert (=> b!2691486 (= lt!949793 (Cons!31047 (_1!17885 (v!32838 lt!949802)) Nil!31047))))

(declare-fun lt!949807 () List!31147)

(assert (=> b!2691486 (= lt!949807 (list!11715 (_1!17887 lt!949806)))))

(declare-fun lt!949810 () Unit!45169)

(declare-fun lemmaConcatAssociativity!1546 (List!31147 List!31147 List!31147) Unit!45169)

(assert (=> b!2691486 (= lt!949810 (lemmaConcatAssociativity!1546 lt!949789 lt!949793 lt!949807))))

(declare-fun ++!7604 (List!31147 List!31147) List!31147)

(assert (=> b!2691486 (= (++!7604 (++!7604 lt!949789 lt!949793) lt!949807) (++!7604 lt!949789 (++!7604 lt!949793 lt!949807)))))

(assert (=> b!2691486 (= lt!949781 (append!766 acc!348 (_1!17885 (v!32838 lt!949802))))))

(declare-fun lt!949803 () List!31147)

(assert (=> b!2691486 (= lt!949803 (list!11715 lt!949781))))

(declare-fun lt!949794 () Unit!45169)

(declare-fun lemmaLexThenLexPrefix!403 (LexerInterface!4335 List!31146 List!31145 List!31145 List!31147 List!31147 List!31145) Unit!45169)

(assert (=> b!2691486 (= lt!949794 (lemmaLexThenLexPrefix!403 thiss!12257 rules!1381 lt!949784 lt!949798 lt!949803 lt!949807 (list!11714 (_2!17887 lt!949806))))))

(declare-datatypes ((tuple2!30594 0))(
  ( (tuple2!30595 (_1!17888 List!31147) (_2!17888 List!31145)) )
))
(declare-fun lexList!1190 (LexerInterface!4335 List!31146 List!31145) tuple2!30594)

(assert (=> b!2691486 (= (lexList!1190 thiss!12257 rules!1381 lt!949784) (tuple2!30595 lt!949803 Nil!31045))))

(assert (=> b!2691486 (= lt!949783 (++!7603 treated!26 lt!949785))))

(assert (=> b!2691486 (= lt!949801 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 lt!949783))))

(declare-fun c!433871 () Bool)

(assert (=> b!2691486 (= c!433871 ((_ is Some!6130) lt!949801))))

(assert (=> b!2691486 (= (lexRec!598 thiss!12257 rules!1381 lt!949783) e!1696909)))

(declare-fun b!2691487 () Bool)

(assert (=> b!2691487 (= e!1696913 (tuple2!30593 acc!348 input!780))))

(assert (= (and start!261720 res!1130811) b!2691463))

(assert (= (and b!2691463 res!1130814) b!2691454))

(assert (= (and b!2691454 res!1130822) b!2691483))

(assert (= (and b!2691483 res!1130826) b!2691473))

(assert (= (and b!2691473 res!1130816) b!2691451))

(assert (= (and b!2691451 res!1130812) b!2691453))

(assert (= (and b!2691453 res!1130818) b!2691455))

(assert (= (and b!2691455 res!1130817) b!2691466))

(assert (= (and b!2691466 res!1130821) b!2691474))

(assert (= (and b!2691474 res!1130820) b!2691477))

(assert (= (and b!2691477 c!433870) b!2691486))

(assert (= (and b!2691477 (not c!433870)) b!2691487))

(assert (= (and b!2691486 res!1130819) b!2691471))

(assert (= (and b!2691486 c!433871) b!2691460))

(assert (= (and b!2691486 (not c!433871)) b!2691481))

(assert (= (and b!2691477 res!1130815) b!2691450))

(assert (= (and b!2691477 (not res!1130825)) b!2691484))

(assert (= (and b!2691484 (not res!1130824)) b!2691469))

(assert (= (and b!2691469 (not res!1130810)) b!2691446))

(assert (= (and b!2691446 (not res!1130823)) b!2691452))

(assert (= (and b!2691452 (not res!1130813)) b!2691458))

(assert (= start!261720 b!2691475))

(assert (= (and b!2691465 condMapEmpty!16060) mapIsEmpty!16059))

(assert (= (and b!2691465 (not condMapEmpty!16060)) mapNonEmpty!16060))

(assert (= b!2691449 b!2691465))

(assert (= b!2691447 b!2691449))

(assert (= b!2691461 b!2691447))

(assert (= (and b!2691464 ((_ is LongMap!3510) (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))) b!2691461))

(assert (= b!2691457 b!2691464))

(assert (= (and b!2691482 ((_ is HashMap!3416) (cache!3559 cacheUp!486))) b!2691457))

(assert (= start!261720 b!2691482))

(assert (= start!261720 b!2691480))

(assert (= start!261720 b!2691462))

(assert (= start!261720 b!2691478))

(assert (= b!2691468 b!2691476))

(assert (= b!2691459 b!2691468))

(assert (= (and start!261720 ((_ is Cons!31046) rules!1381)) b!2691459))

(assert (= (and b!2691472 condMapEmpty!16059) mapIsEmpty!16060))

(assert (= (and b!2691472 (not condMapEmpty!16059)) mapNonEmpty!16059))

(assert (= b!2691467 b!2691472))

(assert (= b!2691456 b!2691467))

(assert (= b!2691470 b!2691456))

(assert (= (and b!2691448 ((_ is LongMap!3511) (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))) b!2691470))

(assert (= b!2691485 b!2691448))

(assert (= (and b!2691479 ((_ is HashMap!3417) (cache!3560 cacheDown!499))) b!2691485))

(assert (= start!261720 b!2691479))

(declare-fun m!3069113 () Bool)

(assert (=> b!2691467 m!3069113))

(declare-fun m!3069115 () Bool)

(assert (=> b!2691467 m!3069115))

(declare-fun m!3069117 () Bool)

(assert (=> b!2691473 m!3069117))

(declare-fun m!3069119 () Bool)

(assert (=> b!2691449 m!3069119))

(declare-fun m!3069121 () Bool)

(assert (=> b!2691449 m!3069121))

(declare-fun m!3069123 () Bool)

(assert (=> b!2691486 m!3069123))

(declare-fun m!3069125 () Bool)

(assert (=> b!2691486 m!3069125))

(assert (=> b!2691486 m!3069125))

(declare-fun m!3069127 () Bool)

(assert (=> b!2691486 m!3069127))

(declare-fun m!3069129 () Bool)

(assert (=> b!2691486 m!3069129))

(declare-fun m!3069131 () Bool)

(assert (=> b!2691486 m!3069131))

(declare-fun m!3069133 () Bool)

(assert (=> b!2691486 m!3069133))

(declare-fun m!3069135 () Bool)

(assert (=> b!2691486 m!3069135))

(declare-fun m!3069137 () Bool)

(assert (=> b!2691486 m!3069137))

(assert (=> b!2691486 m!3069129))

(declare-fun m!3069139 () Bool)

(assert (=> b!2691486 m!3069139))

(declare-fun m!3069141 () Bool)

(assert (=> b!2691486 m!3069141))

(declare-fun m!3069143 () Bool)

(assert (=> b!2691486 m!3069143))

(declare-fun m!3069145 () Bool)

(assert (=> b!2691486 m!3069145))

(declare-fun m!3069147 () Bool)

(assert (=> b!2691486 m!3069147))

(declare-fun m!3069149 () Bool)

(assert (=> b!2691486 m!3069149))

(declare-fun m!3069151 () Bool)

(assert (=> b!2691486 m!3069151))

(assert (=> b!2691486 m!3069145))

(declare-fun m!3069153 () Bool)

(assert (=> b!2691486 m!3069153))

(declare-fun m!3069155 () Bool)

(assert (=> b!2691486 m!3069155))

(assert (=> b!2691486 m!3069151))

(declare-fun m!3069157 () Bool)

(assert (=> b!2691486 m!3069157))

(declare-fun m!3069159 () Bool)

(assert (=> b!2691486 m!3069159))

(declare-fun m!3069161 () Bool)

(assert (=> b!2691486 m!3069161))

(declare-fun m!3069163 () Bool)

(assert (=> b!2691486 m!3069163))

(declare-fun m!3069165 () Bool)

(assert (=> b!2691486 m!3069165))

(declare-fun m!3069167 () Bool)

(assert (=> b!2691486 m!3069167))

(declare-fun m!3069169 () Bool)

(assert (=> b!2691486 m!3069169))

(declare-fun m!3069171 () Bool)

(assert (=> b!2691453 m!3069171))

(declare-fun m!3069173 () Bool)

(assert (=> b!2691453 m!3069173))

(declare-fun m!3069175 () Bool)

(assert (=> b!2691453 m!3069175))

(declare-fun m!3069177 () Bool)

(assert (=> b!2691454 m!3069177))

(declare-fun m!3069179 () Bool)

(assert (=> b!2691478 m!3069179))

(declare-fun m!3069181 () Bool)

(assert (=> start!261720 m!3069181))

(declare-fun m!3069183 () Bool)

(assert (=> start!261720 m!3069183))

(declare-fun m!3069185 () Bool)

(assert (=> start!261720 m!3069185))

(declare-fun m!3069187 () Bool)

(assert (=> start!261720 m!3069187))

(declare-fun m!3069189 () Bool)

(assert (=> start!261720 m!3069189))

(declare-fun m!3069191 () Bool)

(assert (=> start!261720 m!3069191))

(declare-fun m!3069193 () Bool)

(assert (=> b!2691474 m!3069193))

(declare-fun m!3069195 () Bool)

(assert (=> b!2691474 m!3069195))

(declare-fun m!3069197 () Bool)

(assert (=> b!2691462 m!3069197))

(declare-fun m!3069199 () Bool)

(assert (=> b!2691475 m!3069199))

(declare-fun m!3069201 () Bool)

(assert (=> b!2691450 m!3069201))

(declare-fun m!3069203 () Bool)

(assert (=> b!2691450 m!3069203))

(declare-fun m!3069205 () Bool)

(assert (=> b!2691483 m!3069205))

(declare-fun m!3069207 () Bool)

(assert (=> b!2691455 m!3069207))

(assert (=> b!2691455 m!3069207))

(declare-fun m!3069209 () Bool)

(assert (=> b!2691455 m!3069209))

(declare-fun m!3069211 () Bool)

(assert (=> b!2691458 m!3069211))

(assert (=> b!2691458 m!3069211))

(declare-fun m!3069213 () Bool)

(assert (=> b!2691458 m!3069213))

(declare-fun m!3069215 () Bool)

(assert (=> b!2691471 m!3069215))

(declare-fun m!3069217 () Bool)

(assert (=> mapNonEmpty!16059 m!3069217))

(declare-fun m!3069219 () Bool)

(assert (=> b!2691484 m!3069219))

(declare-fun m!3069221 () Bool)

(assert (=> b!2691484 m!3069221))

(declare-fun m!3069223 () Bool)

(assert (=> b!2691484 m!3069223))

(assert (=> b!2691484 m!3069223))

(declare-fun m!3069225 () Bool)

(assert (=> b!2691484 m!3069225))

(declare-fun m!3069227 () Bool)

(assert (=> b!2691480 m!3069227))

(declare-fun m!3069229 () Bool)

(assert (=> b!2691452 m!3069229))

(declare-fun m!3069231 () Bool)

(assert (=> b!2691452 m!3069231))

(declare-fun m!3069233 () Bool)

(assert (=> b!2691452 m!3069233))

(declare-fun m!3069235 () Bool)

(assert (=> mapNonEmpty!16060 m!3069235))

(declare-fun m!3069237 () Bool)

(assert (=> b!2691460 m!3069237))

(declare-fun m!3069239 () Bool)

(assert (=> b!2691460 m!3069239))

(declare-fun m!3069241 () Bool)

(assert (=> b!2691446 m!3069241))

(declare-fun m!3069243 () Bool)

(assert (=> b!2691446 m!3069243))

(assert (=> b!2691446 m!3069241))

(assert (=> b!2691446 m!3069243))

(declare-fun m!3069245 () Bool)

(assert (=> b!2691446 m!3069245))

(declare-fun m!3069247 () Bool)

(assert (=> b!2691477 m!3069247))

(declare-fun m!3069249 () Bool)

(assert (=> b!2691477 m!3069249))

(declare-fun m!3069251 () Bool)

(assert (=> b!2691477 m!3069251))

(declare-fun m!3069253 () Bool)

(assert (=> b!2691469 m!3069253))

(declare-fun m!3069255 () Bool)

(assert (=> b!2691451 m!3069255))

(declare-fun m!3069257 () Bool)

(assert (=> b!2691451 m!3069257))

(declare-fun m!3069259 () Bool)

(assert (=> b!2691451 m!3069259))

(declare-fun m!3069261 () Bool)

(assert (=> b!2691451 m!3069261))

(declare-fun m!3069263 () Bool)

(assert (=> b!2691466 m!3069263))

(declare-fun m!3069265 () Bool)

(assert (=> b!2691466 m!3069265))

(declare-fun m!3069267 () Bool)

(assert (=> b!2691466 m!3069267))

(declare-fun m!3069269 () Bool)

(assert (=> b!2691466 m!3069269))

(declare-fun m!3069271 () Bool)

(assert (=> b!2691466 m!3069271))

(assert (=> b!2691466 m!3069263))

(declare-fun m!3069273 () Bool)

(assert (=> b!2691468 m!3069273))

(declare-fun m!3069275 () Bool)

(assert (=> b!2691468 m!3069275))

(declare-fun m!3069277 () Bool)

(assert (=> b!2691463 m!3069277))

(check-sat (not b_next!76725) (not b_next!76717) (not b!2691455) (not start!261720) (not b!2691460) b_and!199121 (not b!2691465) (not b_next!76719) (not b!2691474) (not b_next!76727) (not mapNonEmpty!16059) (not b!2691453) b_and!199119 (not b!2691478) (not b_next!76723) (not b!2691472) (not b!2691483) (not b!2691467) (not b!2691466) b_and!199127 (not b!2691469) (not b!2691449) (not b!2691484) (not b!2691486) (not b!2691450) (not b!2691468) (not b!2691463) b_and!199129 (not b!2691471) (not b!2691451) (not b!2691480) b_and!199123 (not b!2691459) (not b_next!76721) (not b!2691473) (not b!2691452) (not mapNonEmpty!16060) (not b!2691454) (not b!2691462) (not b!2691477) (not b!2691458) b_and!199125 (not b!2691475) (not b!2691446))
(check-sat (not b_next!76727) b_and!199119 (not b_next!76723) b_and!199127 (not b_next!76725) (not b_next!76717) b_and!199129 b_and!199123 (not b_next!76721) b_and!199125 b_and!199121 (not b_next!76719))
(get-model)

(declare-fun d!771236 () Bool)

(declare-fun list!11716 (Conc!9707) List!31145)

(assert (=> d!771236 (= (list!11714 (_2!17887 lt!949787)) (list!11716 (c!433873 (_2!17887 lt!949787))))))

(declare-fun bs!483316 () Bool)

(assert (= bs!483316 d!771236))

(declare-fun m!3069279 () Bool)

(assert (=> bs!483316 m!3069279))

(assert (=> b!2691474 d!771236))

(declare-fun d!771238 () Bool)

(assert (=> d!771238 (= (list!11714 (_2!17887 lt!949782)) (list!11716 (c!433873 (_2!17887 lt!949782))))))

(declare-fun bs!483317 () Bool)

(assert (= bs!483317 d!771238))

(declare-fun m!3069281 () Bool)

(assert (=> bs!483317 m!3069281))

(assert (=> b!2691474 d!771238))

(declare-fun d!771240 () Bool)

(assert (=> d!771240 (= (isEmpty!17712 (list!11714 (_2!17887 lt!949791))) ((_ is Nil!31045) (list!11714 (_2!17887 lt!949791))))))

(assert (=> b!2691455 d!771240))

(declare-fun d!771242 () Bool)

(assert (=> d!771242 (= (list!11714 (_2!17887 lt!949791)) (list!11716 (c!433873 (_2!17887 lt!949791))))))

(declare-fun bs!483318 () Bool)

(assert (= bs!483318 d!771242))

(declare-fun m!3069283 () Bool)

(assert (=> bs!483318 m!3069283))

(assert (=> b!2691455 d!771242))

(declare-fun d!771244 () Bool)

(declare-fun list!11717 (Conc!9708) List!31147)

(assert (=> d!771244 (= (list!11715 acc!348) (list!11717 (c!433874 acc!348)))))

(declare-fun bs!483319 () Bool)

(assert (= bs!483319 d!771244))

(declare-fun m!3069285 () Bool)

(assert (=> bs!483319 m!3069285))

(assert (=> b!2691453 d!771244))

(declare-fun d!771246 () Bool)

(assert (=> d!771246 (= (list!11715 (_1!17887 lt!949791)) (list!11717 (c!433874 (_1!17887 lt!949791))))))

(declare-fun bs!483320 () Bool)

(assert (= bs!483320 d!771246))

(declare-fun m!3069287 () Bool)

(assert (=> bs!483320 m!3069287))

(assert (=> b!2691453 d!771246))

(declare-fun lt!949818 () tuple2!30592)

(declare-fun b!2691502 () Bool)

(declare-fun e!1696942 () Bool)

(assert (=> b!2691502 (= e!1696942 (= (list!11714 (_2!17887 lt!949818)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 treated!26)))))))

(declare-fun d!771248 () Bool)

(assert (=> d!771248 e!1696942))

(declare-fun res!1130838 () Bool)

(assert (=> d!771248 (=> (not res!1130838) (not e!1696942))))

(declare-fun e!1696941 () Bool)

(assert (=> d!771248 (= res!1130838 e!1696941)))

(declare-fun c!433879 () Bool)

(declare-fun size!23980 (BalanceConc!19030) Int)

(assert (=> d!771248 (= c!433879 (> (size!23980 (_1!17887 lt!949818)) 0))))

(declare-fun e!1696939 () tuple2!30592)

(assert (=> d!771248 (= lt!949818 e!1696939)))

(declare-fun c!433880 () Bool)

(declare-fun lt!949817 () Option!6131)

(assert (=> d!771248 (= c!433880 ((_ is Some!6130) lt!949817))))

(assert (=> d!771248 (= lt!949817 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 treated!26))))

(assert (=> d!771248 (= (lexRec!598 thiss!12257 rules!1381 treated!26) lt!949818)))

(declare-fun b!2691503 () Bool)

(assert (=> b!2691503 (= e!1696941 (= (list!11714 (_2!17887 lt!949818)) (list!11714 treated!26)))))

(declare-fun b!2691504 () Bool)

(declare-fun lt!949819 () tuple2!30592)

(assert (=> b!2691504 (= e!1696939 (tuple2!30593 (prepend!1071 (_1!17887 lt!949819) (_1!17885 (v!32838 lt!949817))) (_2!17887 lt!949819)))))

(assert (=> b!2691504 (= lt!949819 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949817))))))

(declare-fun b!2691505 () Bool)

(declare-fun res!1130839 () Bool)

(assert (=> b!2691505 (=> (not res!1130839) (not e!1696942))))

(assert (=> b!2691505 (= res!1130839 (= (list!11715 (_1!17887 lt!949818)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 treated!26)))))))

(declare-fun b!2691506 () Bool)

(declare-fun e!1696940 () Bool)

(assert (=> b!2691506 (= e!1696941 e!1696940)))

(declare-fun res!1130837 () Bool)

(declare-fun size!23981 (BalanceConc!19028) Int)

(assert (=> b!2691506 (= res!1130837 (< (size!23981 (_2!17887 lt!949818)) (size!23981 treated!26)))))

(assert (=> b!2691506 (=> (not res!1130837) (not e!1696940))))

(declare-fun b!2691507 () Bool)

(assert (=> b!2691507 (= e!1696939 (tuple2!30593 (BalanceConc!19031 Empty!9708) treated!26))))

(declare-fun b!2691508 () Bool)

(declare-fun isEmpty!17714 (BalanceConc!19030) Bool)

(assert (=> b!2691508 (= e!1696940 (not (isEmpty!17714 (_1!17887 lt!949818))))))

(assert (= (and d!771248 c!433880) b!2691504))

(assert (= (and d!771248 (not c!433880)) b!2691507))

(assert (= (and d!771248 c!433879) b!2691506))

(assert (= (and d!771248 (not c!433879)) b!2691503))

(assert (= (and b!2691506 res!1130837) b!2691508))

(assert (= (and d!771248 res!1130838) b!2691505))

(assert (= (and b!2691505 res!1130839) b!2691502))

(declare-fun m!3069289 () Bool)

(assert (=> b!2691502 m!3069289))

(assert (=> b!2691502 m!3069261))

(assert (=> b!2691502 m!3069261))

(declare-fun m!3069291 () Bool)

(assert (=> b!2691502 m!3069291))

(declare-fun m!3069293 () Bool)

(assert (=> b!2691506 m!3069293))

(declare-fun m!3069295 () Bool)

(assert (=> b!2691506 m!3069295))

(assert (=> b!2691503 m!3069289))

(assert (=> b!2691503 m!3069261))

(declare-fun m!3069297 () Bool)

(assert (=> b!2691505 m!3069297))

(assert (=> b!2691505 m!3069261))

(assert (=> b!2691505 m!3069261))

(assert (=> b!2691505 m!3069291))

(declare-fun m!3069299 () Bool)

(assert (=> d!771248 m!3069299))

(declare-fun m!3069301 () Bool)

(assert (=> d!771248 m!3069301))

(declare-fun m!3069303 () Bool)

(assert (=> b!2691508 m!3069303))

(declare-fun m!3069305 () Bool)

(assert (=> b!2691504 m!3069305))

(declare-fun m!3069307 () Bool)

(assert (=> b!2691504 m!3069307))

(assert (=> b!2691453 d!771248))

(declare-fun d!771250 () Bool)

(declare-fun validCacheMapDown!354 (MutableMap!3417) Bool)

(assert (=> d!771250 (= (valid!2719 cacheDown!499) (validCacheMapDown!354 (cache!3560 cacheDown!499)))))

(declare-fun bs!483321 () Bool)

(assert (= bs!483321 d!771250))

(declare-fun m!3069309 () Bool)

(assert (=> bs!483321 m!3069309))

(assert (=> b!2691473 d!771250))

(declare-fun d!771252 () Bool)

(declare-fun res!1130842 () Bool)

(declare-fun e!1696945 () Bool)

(assert (=> d!771252 (=> (not res!1130842) (not e!1696945))))

(declare-fun rulesValid!1766 (LexerInterface!4335 List!31146) Bool)

(assert (=> d!771252 (= res!1130842 (rulesValid!1766 thiss!12257 rules!1381))))

(assert (=> d!771252 (= (rulesInvariant!3826 thiss!12257 rules!1381) e!1696945)))

(declare-fun b!2691511 () Bool)

(declare-datatypes ((List!31148 0))(
  ( (Nil!31048) (Cons!31048 (h!36468 String!34705) (t!225098 List!31148)) )
))
(declare-fun noDuplicateTag!1762 (LexerInterface!4335 List!31146 List!31148) Bool)

(assert (=> b!2691511 (= e!1696945 (noDuplicateTag!1762 thiss!12257 rules!1381 Nil!31048))))

(assert (= (and d!771252 res!1130842) b!2691511))

(declare-fun m!3069311 () Bool)

(assert (=> d!771252 m!3069311))

(declare-fun m!3069313 () Bool)

(assert (=> b!2691511 m!3069313))

(assert (=> b!2691454 d!771252))

(declare-fun b!2691520 () Bool)

(declare-fun e!1696950 () tuple3!4240)

(declare-fun lt!949843 () tuple3!4240)

(assert (=> b!2691520 (= e!1696950 (tuple3!4241 (_1!17886 lt!949843) (_2!17886 lt!949843) (_3!2590 lt!949843)))))

(declare-fun call!173377 () tuple3!4240)

(assert (=> b!2691520 (= lt!949843 call!173377)))

(declare-fun b!2691521 () Bool)

(declare-fun res!1130848 () Bool)

(declare-fun e!1696951 () Bool)

(assert (=> b!2691521 (=> (not res!1130848) (not e!1696951))))

(declare-fun lt!949839 () tuple3!4240)

(assert (=> b!2691521 (= res!1130848 (valid!2720 (_2!17886 lt!949839)))))

(declare-fun d!771254 () Bool)

(assert (=> d!771254 e!1696951))

(declare-fun res!1130847 () Bool)

(assert (=> d!771254 (=> (not res!1130847) (not e!1696951))))

(assert (=> d!771254 (= res!1130847 (= (_1!17886 lt!949839) (maxPrefixZipperSequence!999 thiss!12257 rules!1381 input!780)))))

(assert (=> d!771254 (= lt!949839 e!1696950)))

(declare-fun c!433883 () Bool)

(assert (=> d!771254 (= c!433883 (and ((_ is Cons!31046) rules!1381) ((_ is Nil!31046) (t!225088 rules!1381))))))

(declare-fun lt!949841 () Unit!45169)

(declare-fun lt!949842 () Unit!45169)

(assert (=> d!771254 (= lt!949841 lt!949842)))

(declare-fun lt!949837 () List!31145)

(declare-fun lt!949838 () List!31145)

(declare-fun isPrefix!2467 (List!31145 List!31145) Bool)

(assert (=> d!771254 (isPrefix!2467 lt!949837 lt!949838)))

(declare-fun lemmaIsPrefixRefl!1593 (List!31145 List!31145) Unit!45169)

(assert (=> d!771254 (= lt!949842 (lemmaIsPrefixRefl!1593 lt!949837 lt!949838))))

(assert (=> d!771254 (= lt!949838 (list!11714 input!780))))

(assert (=> d!771254 (= lt!949837 (list!11714 input!780))))

(declare-fun rulesValidInductive!1649 (LexerInterface!4335 List!31146) Bool)

(assert (=> d!771254 (rulesValidInductive!1649 thiss!12257 rules!1381)))

(assert (=> d!771254 (= (maxPrefixZipperSequenceMem!11 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499) lt!949839)))

(declare-fun bm!173372 () Bool)

(declare-fun maxPrefixOneRuleZipperSequenceMem!6 (LexerInterface!4335 Rule!9278 BalanceConc!19028 CacheUp!2126 CacheDown!2238) tuple3!4240)

(assert (=> bm!173372 (= call!173377 (maxPrefixOneRuleZipperSequenceMem!6 thiss!12257 (h!36466 rules!1381) input!780 cacheUp!486 cacheDown!499))))

(declare-fun b!2691522 () Bool)

(declare-fun lt!949840 () tuple3!4240)

(declare-fun lt!949836 () tuple3!4240)

(assert (=> b!2691522 (= e!1696950 (tuple3!4241 (ite (and ((_ is None!6130) (_1!17886 lt!949840)) ((_ is None!6130) (_1!17886 lt!949836))) None!6130 (ite ((_ is None!6130) (_1!17886 lt!949836)) (_1!17886 lt!949840) (ite ((_ is None!6130) (_1!17886 lt!949840)) (_1!17886 lt!949836) (ite (>= (size!23979 (_1!17885 (v!32838 (_1!17886 lt!949840)))) (size!23979 (_1!17885 (v!32838 (_1!17886 lt!949836))))) (_1!17886 lt!949840) (_1!17886 lt!949836))))) (_2!17886 lt!949836) (_3!2590 lt!949836)))))

(assert (=> b!2691522 (= lt!949840 call!173377)))

(assert (=> b!2691522 (= lt!949836 (maxPrefixZipperSequenceMem!11 thiss!12257 (t!225088 rules!1381) input!780 (_2!17886 lt!949840) (_3!2590 lt!949840)))))

(declare-fun b!2691523 () Bool)

(assert (=> b!2691523 (= e!1696951 (valid!2719 (_3!2590 lt!949839)))))

(assert (= (and d!771254 c!433883) b!2691520))

(assert (= (and d!771254 (not c!433883)) b!2691522))

(assert (= (or b!2691520 b!2691522) bm!173372))

(assert (= (and d!771254 res!1130847) b!2691521))

(assert (= (and b!2691521 res!1130848) b!2691523))

(declare-fun m!3069315 () Bool)

(assert (=> b!2691523 m!3069315))

(declare-fun m!3069317 () Bool)

(assert (=> b!2691521 m!3069317))

(assert (=> d!771254 m!3069251))

(assert (=> d!771254 m!3069259))

(declare-fun m!3069319 () Bool)

(assert (=> d!771254 m!3069319))

(declare-fun m!3069321 () Bool)

(assert (=> d!771254 m!3069321))

(declare-fun m!3069323 () Bool)

(assert (=> d!771254 m!3069323))

(declare-fun m!3069325 () Bool)

(assert (=> b!2691522 m!3069325))

(declare-fun m!3069327 () Bool)

(assert (=> bm!173372 m!3069327))

(assert (=> b!2691477 d!771254))

(declare-fun d!771256 () Bool)

(declare-fun e!1696960 () Bool)

(assert (=> d!771256 e!1696960))

(declare-fun res!1130851 () Bool)

(assert (=> d!771256 (=> (not res!1130851) (not e!1696960))))

(declare-fun lt!949917 () tuple2!30592)

(assert (=> d!771256 (= res!1130851 (= (list!11715 (_1!17887 lt!949917)) (list!11715 (_1!17887 (lexRec!598 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun e!1696963 () tuple2!30592)

(assert (=> d!771256 (= lt!949917 e!1696963)))

(declare-fun c!433890 () Bool)

(declare-fun lt!949909 () Option!6131)

(assert (=> d!771256 (= c!433890 ((_ is Some!6130) lt!949909))))

(assert (=> d!771256 (= lt!949909 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 input!780))))

(assert (=> d!771256 (= (lexTailRec!23 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!949917)))

(declare-fun b!2691538 () Bool)

(assert (=> b!2691538 (= e!1696963 (tuple2!30593 acc!348 input!780))))

(declare-fun b!2691539 () Bool)

(declare-fun lt!949913 () Option!6131)

(declare-fun lt!949910 () tuple2!30592)

(assert (=> b!2691539 (= lt!949910 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949913))))))

(declare-fun e!1696962 () tuple2!30592)

(assert (=> b!2691539 (= e!1696962 (tuple2!30593 (prepend!1071 (_1!17887 lt!949910) (_1!17885 (v!32838 lt!949913))) (_2!17887 lt!949910)))))

(declare-fun b!2691540 () Bool)

(declare-fun lt!949907 () Option!6131)

(declare-fun lt!949905 () tuple2!30592)

(assert (=> b!2691540 (= lt!949905 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949907))))))

(declare-fun e!1696961 () tuple2!30592)

(assert (=> b!2691540 (= e!1696961 (tuple2!30593 (prepend!1071 (_1!17887 lt!949905) (_1!17885 (v!32838 lt!949907))) (_2!17887 lt!949905)))))

(declare-fun b!2691541 () Bool)

(assert (=> b!2691541 (= e!1696963 (lexTailRec!23 thiss!12257 rules!1381 totalInput!354 (++!7603 treated!26 (charsOf!2986 (_1!17885 (v!32838 lt!949909)))) (_2!17885 (v!32838 lt!949909)) (append!766 acc!348 (_1!17885 (v!32838 lt!949909)))))))

(declare-fun lt!949895 () tuple2!30592)

(assert (=> b!2691541 (= lt!949895 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949909))))))

(declare-fun lt!949900 () List!31145)

(assert (=> b!2691541 (= lt!949900 (list!11714 treated!26))))

(declare-fun lt!949902 () List!31145)

(assert (=> b!2691541 (= lt!949902 (list!11714 (charsOf!2986 (_1!17885 (v!32838 lt!949909)))))))

(declare-fun lt!949903 () List!31145)

(assert (=> b!2691541 (= lt!949903 (list!11714 (_2!17885 (v!32838 lt!949909))))))

(declare-fun lt!949901 () Unit!45169)

(assert (=> b!2691541 (= lt!949901 (lemmaConcatAssociativity!1545 lt!949900 lt!949902 lt!949903))))

(assert (=> b!2691541 (= (++!7601 (++!7601 lt!949900 lt!949902) lt!949903) (++!7601 lt!949900 (++!7601 lt!949902 lt!949903)))))

(declare-fun lt!949916 () Unit!45169)

(assert (=> b!2691541 (= lt!949916 lt!949901)))

(assert (=> b!2691541 (= lt!949907 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 input!780))))

(declare-fun c!433891 () Bool)

(assert (=> b!2691541 (= c!433891 ((_ is Some!6130) lt!949907))))

(assert (=> b!2691541 (= (lexRec!598 thiss!12257 rules!1381 input!780) e!1696961)))

(declare-fun lt!949915 () Unit!45169)

(declare-fun Unit!45171 () Unit!45169)

(assert (=> b!2691541 (= lt!949915 Unit!45171)))

(declare-fun lt!949897 () List!31147)

(assert (=> b!2691541 (= lt!949897 (list!11715 acc!348))))

(declare-fun lt!949894 () List!31147)

(assert (=> b!2691541 (= lt!949894 (Cons!31047 (_1!17885 (v!32838 lt!949909)) Nil!31047))))

(declare-fun lt!949898 () List!31147)

(assert (=> b!2691541 (= lt!949898 (list!11715 (_1!17887 lt!949895)))))

(declare-fun lt!949906 () Unit!45169)

(assert (=> b!2691541 (= lt!949906 (lemmaConcatAssociativity!1546 lt!949897 lt!949894 lt!949898))))

(assert (=> b!2691541 (= (++!7604 (++!7604 lt!949897 lt!949894) lt!949898) (++!7604 lt!949897 (++!7604 lt!949894 lt!949898)))))

(declare-fun lt!949918 () Unit!45169)

(assert (=> b!2691541 (= lt!949918 lt!949906)))

(declare-fun lt!949914 () List!31145)

(assert (=> b!2691541 (= lt!949914 (++!7601 (list!11714 treated!26) (list!11714 (charsOf!2986 (_1!17885 (v!32838 lt!949909))))))))

(declare-fun lt!949899 () List!31145)

(assert (=> b!2691541 (= lt!949899 (list!11714 (_2!17885 (v!32838 lt!949909))))))

(declare-fun lt!949912 () List!31147)

(assert (=> b!2691541 (= lt!949912 (list!11715 (append!766 acc!348 (_1!17885 (v!32838 lt!949909)))))))

(declare-fun lt!949908 () Unit!45169)

(assert (=> b!2691541 (= lt!949908 (lemmaLexThenLexPrefix!403 thiss!12257 rules!1381 lt!949914 lt!949899 lt!949912 (list!11715 (_1!17887 lt!949895)) (list!11714 (_2!17887 lt!949895))))))

(assert (=> b!2691541 (= (lexList!1190 thiss!12257 rules!1381 lt!949914) (tuple2!30595 lt!949912 Nil!31045))))

(declare-fun lt!949896 () Unit!45169)

(assert (=> b!2691541 (= lt!949896 lt!949908)))

(declare-fun lt!949904 () BalanceConc!19028)

(assert (=> b!2691541 (= lt!949904 (++!7603 treated!26 (charsOf!2986 (_1!17885 (v!32838 lt!949909)))))))

(assert (=> b!2691541 (= lt!949913 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 lt!949904))))

(declare-fun c!433892 () Bool)

(assert (=> b!2691541 (= c!433892 ((_ is Some!6130) lt!949913))))

(assert (=> b!2691541 (= (lexRec!598 thiss!12257 rules!1381 (++!7603 treated!26 (charsOf!2986 (_1!17885 (v!32838 lt!949909))))) e!1696962)))

(declare-fun lt!949911 () Unit!45169)

(declare-fun Unit!45172 () Unit!45169)

(assert (=> b!2691541 (= lt!949911 Unit!45172)))

(declare-fun b!2691542 () Bool)

(assert (=> b!2691542 (= e!1696960 (= (list!11714 (_2!17887 lt!949917)) (list!11714 (_2!17887 (lexRec!598 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2691543 () Bool)

(assert (=> b!2691543 (= e!1696962 (tuple2!30593 (BalanceConc!19031 Empty!9708) lt!949904))))

(declare-fun b!2691544 () Bool)

(assert (=> b!2691544 (= e!1696961 (tuple2!30593 (BalanceConc!19031 Empty!9708) input!780))))

(assert (= (and d!771256 c!433890) b!2691541))

(assert (= (and d!771256 (not c!433890)) b!2691538))

(assert (= (and b!2691541 c!433891) b!2691540))

(assert (= (and b!2691541 (not c!433891)) b!2691544))

(assert (= (and b!2691541 c!433892) b!2691539))

(assert (= (and b!2691541 (not c!433892)) b!2691543))

(assert (= (and d!771256 res!1130851) b!2691542))

(declare-fun m!3069329 () Bool)

(assert (=> b!2691541 m!3069329))

(declare-fun m!3069331 () Bool)

(assert (=> b!2691541 m!3069331))

(declare-fun m!3069333 () Bool)

(assert (=> b!2691541 m!3069333))

(assert (=> b!2691541 m!3069261))

(declare-fun m!3069335 () Bool)

(assert (=> b!2691541 m!3069335))

(declare-fun m!3069337 () Bool)

(assert (=> b!2691541 m!3069337))

(declare-fun m!3069339 () Bool)

(assert (=> b!2691541 m!3069339))

(declare-fun m!3069341 () Bool)

(assert (=> b!2691541 m!3069341))

(assert (=> b!2691541 m!3069271))

(assert (=> b!2691541 m!3069171))

(declare-fun m!3069343 () Bool)

(assert (=> b!2691541 m!3069343))

(assert (=> b!2691541 m!3069251))

(declare-fun m!3069345 () Bool)

(assert (=> b!2691541 m!3069345))

(declare-fun m!3069347 () Bool)

(assert (=> b!2691541 m!3069347))

(declare-fun m!3069349 () Bool)

(assert (=> b!2691541 m!3069349))

(assert (=> b!2691541 m!3069261))

(assert (=> b!2691541 m!3069337))

(declare-fun m!3069351 () Bool)

(assert (=> b!2691541 m!3069351))

(declare-fun m!3069353 () Bool)

(assert (=> b!2691541 m!3069353))

(declare-fun m!3069355 () Bool)

(assert (=> b!2691541 m!3069355))

(declare-fun m!3069357 () Bool)

(assert (=> b!2691541 m!3069357))

(assert (=> b!2691541 m!3069339))

(declare-fun m!3069359 () Bool)

(assert (=> b!2691541 m!3069359))

(declare-fun m!3069361 () Bool)

(assert (=> b!2691541 m!3069361))

(declare-fun m!3069363 () Bool)

(assert (=> b!2691541 m!3069363))

(declare-fun m!3069365 () Bool)

(assert (=> b!2691541 m!3069365))

(assert (=> b!2691541 m!3069363))

(assert (=> b!2691541 m!3069333))

(declare-fun m!3069367 () Bool)

(assert (=> b!2691541 m!3069367))

(assert (=> b!2691541 m!3069347))

(assert (=> b!2691541 m!3069339))

(declare-fun m!3069369 () Bool)

(assert (=> b!2691541 m!3069369))

(assert (=> b!2691541 m!3069335))

(assert (=> b!2691541 m!3069347))

(assert (=> b!2691541 m!3069335))

(declare-fun m!3069371 () Bool)

(assert (=> b!2691541 m!3069371))

(assert (=> b!2691541 m!3069355))

(assert (=> b!2691541 m!3069331))

(declare-fun m!3069373 () Bool)

(assert (=> b!2691541 m!3069373))

(assert (=> b!2691541 m!3069371))

(assert (=> b!2691541 m!3069345))

(declare-fun m!3069375 () Bool)

(assert (=> b!2691541 m!3069375))

(declare-fun m!3069377 () Bool)

(assert (=> b!2691541 m!3069377))

(declare-fun m!3069379 () Bool)

(assert (=> d!771256 m!3069379))

(assert (=> d!771256 m!3069267))

(declare-fun m!3069381 () Bool)

(assert (=> d!771256 m!3069381))

(assert (=> d!771256 m!3069251))

(declare-fun m!3069383 () Bool)

(assert (=> b!2691540 m!3069383))

(declare-fun m!3069385 () Bool)

(assert (=> b!2691540 m!3069385))

(declare-fun m!3069387 () Bool)

(assert (=> b!2691542 m!3069387))

(assert (=> b!2691542 m!3069267))

(declare-fun m!3069389 () Bool)

(assert (=> b!2691542 m!3069389))

(declare-fun m!3069391 () Bool)

(assert (=> b!2691539 m!3069391))

(declare-fun m!3069393 () Bool)

(assert (=> b!2691539 m!3069393))

(assert (=> b!2691477 d!771256))

(declare-fun call!173380 () Option!6131)

(declare-fun bm!173375 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!463 (LexerInterface!4335 Rule!9278 BalanceConc!19028) Option!6131)

(assert (=> bm!173375 (= call!173380 (maxPrefixOneRuleZipperSequence!463 thiss!12257 (h!36466 rules!1381) input!780))))

(declare-fun b!2691561 () Bool)

(declare-fun e!1696979 () Option!6131)

(assert (=> b!2691561 (= e!1696979 call!173380)))

(declare-fun b!2691562 () Bool)

(declare-fun e!1696980 () Bool)

(declare-fun e!1696977 () Bool)

(assert (=> b!2691562 (= e!1696980 e!1696977)))

(declare-fun res!1130867 () Bool)

(assert (=> b!2691562 (=> (not res!1130867) (not e!1696977))))

(declare-fun lt!949939 () Option!6131)

(declare-fun get!9718 (Option!6131) tuple2!30590)

(declare-datatypes ((tuple2!30596 0))(
  ( (tuple2!30597 (_1!17889 Token!8944) (_2!17889 List!31145)) )
))
(declare-datatypes ((Option!6132 0))(
  ( (None!6131) (Some!6131 (v!32844 tuple2!30596)) )
))
(declare-fun get!9719 (Option!6132) tuple2!30596)

(declare-fun maxPrefixZipper!454 (LexerInterface!4335 List!31146 List!31145) Option!6132)

(assert (=> b!2691562 (= res!1130867 (= (_1!17885 (get!9718 lt!949939)) (_1!17889 (get!9719 (maxPrefixZipper!454 thiss!12257 rules!1381 (list!11714 input!780))))))))

(declare-fun b!2691563 () Bool)

(declare-fun res!1130864 () Bool)

(declare-fun e!1696981 () Bool)

(assert (=> b!2691563 (=> (not res!1130864) (not e!1696981))))

(assert (=> b!2691563 (= res!1130864 e!1696980)))

(declare-fun res!1130869 () Bool)

(assert (=> b!2691563 (=> res!1130869 e!1696980)))

(declare-fun isDefined!4861 (Option!6131) Bool)

(assert (=> b!2691563 (= res!1130869 (not (isDefined!4861 lt!949939)))))

(declare-fun b!2691564 () Bool)

(declare-fun e!1696978 () Bool)

(declare-fun maxPrefix!2350 (LexerInterface!4335 List!31146 List!31145) Option!6132)

(assert (=> b!2691564 (= e!1696978 (= (list!11714 (_2!17885 (get!9718 lt!949939))) (_2!17889 (get!9719 (maxPrefix!2350 thiss!12257 rules!1381 (list!11714 input!780))))))))

(declare-fun b!2691565 () Bool)

(declare-fun e!1696976 () Bool)

(assert (=> b!2691565 (= e!1696981 e!1696976)))

(declare-fun res!1130866 () Bool)

(assert (=> b!2691565 (=> res!1130866 e!1696976)))

(assert (=> b!2691565 (= res!1130866 (not (isDefined!4861 lt!949939)))))

(declare-fun d!771258 () Bool)

(assert (=> d!771258 e!1696981))

(declare-fun res!1130868 () Bool)

(assert (=> d!771258 (=> (not res!1130868) (not e!1696981))))

(declare-fun isDefined!4862 (Option!6132) Bool)

(assert (=> d!771258 (= res!1130868 (= (isDefined!4861 lt!949939) (isDefined!4862 (maxPrefixZipper!454 thiss!12257 rules!1381 (list!11714 input!780)))))))

(assert (=> d!771258 (= lt!949939 e!1696979)))

(declare-fun c!433895 () Bool)

(assert (=> d!771258 (= c!433895 (and ((_ is Cons!31046) rules!1381) ((_ is Nil!31046) (t!225088 rules!1381))))))

(declare-fun lt!949933 () Unit!45169)

(declare-fun lt!949935 () Unit!45169)

(assert (=> d!771258 (= lt!949933 lt!949935)))

(declare-fun lt!949938 () List!31145)

(declare-fun lt!949937 () List!31145)

(assert (=> d!771258 (isPrefix!2467 lt!949938 lt!949937)))

(assert (=> d!771258 (= lt!949935 (lemmaIsPrefixRefl!1593 lt!949938 lt!949937))))

(assert (=> d!771258 (= lt!949937 (list!11714 input!780))))

(assert (=> d!771258 (= lt!949938 (list!11714 input!780))))

(assert (=> d!771258 (rulesValidInductive!1649 thiss!12257 rules!1381)))

(assert (=> d!771258 (= (maxPrefixZipperSequence!999 thiss!12257 rules!1381 input!780) lt!949939)))

(declare-fun b!2691566 () Bool)

(assert (=> b!2691566 (= e!1696977 (= (list!11714 (_2!17885 (get!9718 lt!949939))) (_2!17889 (get!9719 (maxPrefixZipper!454 thiss!12257 rules!1381 (list!11714 input!780))))))))

(declare-fun b!2691567 () Bool)

(declare-fun lt!949936 () Option!6131)

(declare-fun lt!949934 () Option!6131)

(assert (=> b!2691567 (= e!1696979 (ite (and ((_ is None!6130) lt!949936) ((_ is None!6130) lt!949934)) None!6130 (ite ((_ is None!6130) lt!949934) lt!949936 (ite ((_ is None!6130) lt!949936) lt!949934 (ite (>= (size!23979 (_1!17885 (v!32838 lt!949936))) (size!23979 (_1!17885 (v!32838 lt!949934)))) lt!949936 lt!949934)))))))

(assert (=> b!2691567 (= lt!949936 call!173380)))

(assert (=> b!2691567 (= lt!949934 (maxPrefixZipperSequence!999 thiss!12257 (t!225088 rules!1381) input!780))))

(declare-fun b!2691568 () Bool)

(assert (=> b!2691568 (= e!1696976 e!1696978)))

(declare-fun res!1130865 () Bool)

(assert (=> b!2691568 (=> (not res!1130865) (not e!1696978))))

(assert (=> b!2691568 (= res!1130865 (= (_1!17885 (get!9718 lt!949939)) (_1!17889 (get!9719 (maxPrefix!2350 thiss!12257 rules!1381 (list!11714 input!780))))))))

(assert (= (and d!771258 c!433895) b!2691561))

(assert (= (and d!771258 (not c!433895)) b!2691567))

(assert (= (or b!2691561 b!2691567) bm!173375))

(assert (= (and d!771258 res!1130868) b!2691563))

(assert (= (and b!2691563 (not res!1130869)) b!2691562))

(assert (= (and b!2691562 res!1130867) b!2691566))

(assert (= (and b!2691563 res!1130864) b!2691565))

(assert (= (and b!2691565 (not res!1130866)) b!2691568))

(assert (= (and b!2691568 res!1130865) b!2691564))

(declare-fun m!3069395 () Bool)

(assert (=> b!2691564 m!3069395))

(assert (=> b!2691564 m!3069259))

(declare-fun m!3069397 () Bool)

(assert (=> b!2691564 m!3069397))

(declare-fun m!3069399 () Bool)

(assert (=> b!2691564 m!3069399))

(assert (=> b!2691564 m!3069259))

(assert (=> b!2691564 m!3069397))

(declare-fun m!3069401 () Bool)

(assert (=> b!2691564 m!3069401))

(assert (=> b!2691562 m!3069395))

(assert (=> b!2691562 m!3069259))

(assert (=> b!2691562 m!3069259))

(declare-fun m!3069403 () Bool)

(assert (=> b!2691562 m!3069403))

(assert (=> b!2691562 m!3069403))

(declare-fun m!3069405 () Bool)

(assert (=> b!2691562 m!3069405))

(declare-fun m!3069407 () Bool)

(assert (=> b!2691565 m!3069407))

(assert (=> d!771258 m!3069259))

(assert (=> d!771258 m!3069403))

(assert (=> d!771258 m!3069319))

(assert (=> d!771258 m!3069407))

(declare-fun m!3069409 () Bool)

(assert (=> d!771258 m!3069409))

(assert (=> d!771258 m!3069403))

(declare-fun m!3069411 () Bool)

(assert (=> d!771258 m!3069411))

(declare-fun m!3069413 () Bool)

(assert (=> d!771258 m!3069413))

(assert (=> d!771258 m!3069259))

(assert (=> b!2691563 m!3069407))

(declare-fun m!3069415 () Bool)

(assert (=> b!2691567 m!3069415))

(assert (=> b!2691566 m!3069259))

(assert (=> b!2691566 m!3069403))

(assert (=> b!2691566 m!3069403))

(assert (=> b!2691566 m!3069405))

(assert (=> b!2691566 m!3069395))

(assert (=> b!2691566 m!3069399))

(assert (=> b!2691566 m!3069259))

(declare-fun m!3069417 () Bool)

(assert (=> bm!173375 m!3069417))

(assert (=> b!2691568 m!3069395))

(assert (=> b!2691568 m!3069259))

(assert (=> b!2691568 m!3069259))

(assert (=> b!2691568 m!3069397))

(assert (=> b!2691568 m!3069397))

(assert (=> b!2691568 m!3069401))

(assert (=> b!2691477 d!771258))

(declare-fun d!771260 () Bool)

(assert (=> d!771260 (= (isEmpty!17712 (list!11714 (_2!17887 lt!949790))) ((_ is Nil!31045) (list!11714 (_2!17887 lt!949790))))))

(assert (=> b!2691458 d!771260))

(declare-fun d!771262 () Bool)

(assert (=> d!771262 (= (list!11714 (_2!17887 lt!949790)) (list!11716 (c!433873 (_2!17887 lt!949790))))))

(declare-fun bs!483322 () Bool)

(assert (= bs!483322 d!771262))

(declare-fun m!3069419 () Bool)

(assert (=> bs!483322 m!3069419))

(assert (=> b!2691458 d!771262))

(declare-fun d!771264 () Bool)

(declare-fun c!433898 () Bool)

(assert (=> d!771264 (= c!433898 ((_ is Node!9707) (c!433873 totalInput!354)))))

(declare-fun e!1696986 () Bool)

(assert (=> d!771264 (= (inv!42079 (c!433873 totalInput!354)) e!1696986)))

(declare-fun b!2691575 () Bool)

(declare-fun inv!42086 (Conc!9707) Bool)

(assert (=> b!2691575 (= e!1696986 (inv!42086 (c!433873 totalInput!354)))))

(declare-fun b!2691576 () Bool)

(declare-fun e!1696987 () Bool)

(assert (=> b!2691576 (= e!1696986 e!1696987)))

(declare-fun res!1130872 () Bool)

(assert (=> b!2691576 (= res!1130872 (not ((_ is Leaf!14821) (c!433873 totalInput!354))))))

(assert (=> b!2691576 (=> res!1130872 e!1696987)))

(declare-fun b!2691577 () Bool)

(declare-fun inv!42087 (Conc!9707) Bool)

(assert (=> b!2691577 (= e!1696987 (inv!42087 (c!433873 totalInput!354)))))

(assert (= (and d!771264 c!433898) b!2691575))

(assert (= (and d!771264 (not c!433898)) b!2691576))

(assert (= (and b!2691576 (not res!1130872)) b!2691577))

(declare-fun m!3069421 () Bool)

(assert (=> b!2691575 m!3069421))

(declare-fun m!3069423 () Bool)

(assert (=> b!2691577 m!3069423))

(assert (=> b!2691475 d!771264))

(declare-fun d!771266 () Bool)

(assert (=> d!771266 (= (array_inv!3991 (_keys!3811 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) (bvsge (size!23976 (_keys!3811 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2691449 d!771266))

(declare-fun d!771268 () Bool)

(assert (=> d!771268 (= (array_inv!3992 (_values!3792 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) (bvsge (size!23978 (_values!3792 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2691449 d!771268))

(declare-fun b!2691588 () Bool)

(declare-fun e!1696994 () Bool)

(declare-fun lt!949942 () tuple2!30592)

(assert (=> b!2691588 (= e!1696994 (not (isEmpty!17714 (_1!17887 lt!949942))))))

(declare-fun d!771270 () Bool)

(declare-fun e!1696996 () Bool)

(assert (=> d!771270 e!1696996))

(declare-fun res!1130881 () Bool)

(assert (=> d!771270 (=> (not res!1130881) (not e!1696996))))

(declare-fun e!1696995 () Bool)

(assert (=> d!771270 (= res!1130881 e!1696995)))

(declare-fun c!433901 () Bool)

(assert (=> d!771270 (= c!433901 (> (size!23980 (_1!17887 lt!949942)) 0))))

(assert (=> d!771270 (= lt!949942 (lexTailRecV2!867 thiss!12257 rules!1381 input!780 (BalanceConc!19029 Empty!9707) input!780 (BalanceConc!19031 Empty!9708)))))

(assert (=> d!771270 (= (lex!1955 thiss!12257 rules!1381 input!780) lt!949942)))

(declare-fun b!2691589 () Bool)

(assert (=> b!2691589 (= e!1696995 e!1696994)))

(declare-fun res!1130880 () Bool)

(assert (=> b!2691589 (= res!1130880 (< (size!23981 (_2!17887 lt!949942)) (size!23981 input!780)))))

(assert (=> b!2691589 (=> (not res!1130880) (not e!1696994))))

(declare-fun b!2691590 () Bool)

(declare-fun res!1130879 () Bool)

(assert (=> b!2691590 (=> (not res!1130879) (not e!1696996))))

(assert (=> b!2691590 (= res!1130879 (= (list!11715 (_1!17887 lt!949942)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 input!780)))))))

(declare-fun b!2691591 () Bool)

(assert (=> b!2691591 (= e!1696995 (= (_2!17887 lt!949942) input!780))))

(declare-fun b!2691592 () Bool)

(assert (=> b!2691592 (= e!1696996 (= (list!11714 (_2!17887 lt!949942)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 input!780)))))))

(assert (= (and d!771270 c!433901) b!2691589))

(assert (= (and d!771270 (not c!433901)) b!2691591))

(assert (= (and b!2691589 res!1130880) b!2691588))

(assert (= (and d!771270 res!1130881) b!2691590))

(assert (= (and b!2691590 res!1130879) b!2691592))

(declare-fun m!3069425 () Bool)

(assert (=> b!2691589 m!3069425))

(declare-fun m!3069427 () Bool)

(assert (=> b!2691589 m!3069427))

(declare-fun m!3069429 () Bool)

(assert (=> b!2691590 m!3069429))

(assert (=> b!2691590 m!3069259))

(assert (=> b!2691590 m!3069259))

(declare-fun m!3069431 () Bool)

(assert (=> b!2691590 m!3069431))

(declare-fun m!3069433 () Bool)

(assert (=> d!771270 m!3069433))

(assert (=> d!771270 m!3069203))

(declare-fun m!3069435 () Bool)

(assert (=> b!2691588 m!3069435))

(declare-fun m!3069437 () Bool)

(assert (=> b!2691592 m!3069437))

(assert (=> b!2691592 m!3069259))

(assert (=> b!2691592 m!3069259))

(assert (=> b!2691592 m!3069431))

(assert (=> b!2691450 d!771270))

(declare-fun b!2691607 () Bool)

(declare-fun e!1697005 () tuple2!30592)

(declare-fun lt!950011 () BalanceConc!19028)

(assert (=> b!2691607 (= e!1697005 (tuple2!30593 (BalanceConc!19031 Empty!9708) lt!950011))))

(declare-fun d!771272 () Bool)

(declare-fun e!1697007 () Bool)

(assert (=> d!771272 e!1697007))

(declare-fun res!1130884 () Bool)

(assert (=> d!771272 (=> (not res!1130884) (not e!1697007))))

(declare-fun lt!950020 () tuple2!30592)

(assert (=> d!771272 (= res!1130884 (= (list!11715 (_1!17887 lt!950020)) (list!11715 (_1!17887 (lexRec!598 thiss!12257 rules!1381 input!780)))))))

(declare-fun e!1697006 () tuple2!30592)

(assert (=> d!771272 (= lt!950020 e!1697006)))

(declare-fun c!433908 () Bool)

(declare-fun lt!950026 () Option!6131)

(assert (=> d!771272 (= c!433908 ((_ is Some!6130) lt!950026))))

(declare-fun maxPrefixZipperSequenceV2!453 (LexerInterface!4335 List!31146 BalanceConc!19028 BalanceConc!19028) Option!6131)

(assert (=> d!771272 (= lt!950026 (maxPrefixZipperSequenceV2!453 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!950034 () Unit!45169)

(declare-fun lt!950032 () Unit!45169)

(assert (=> d!771272 (= lt!950034 lt!950032)))

(declare-fun lt!950015 () List!31145)

(declare-fun lt!950024 () List!31145)

(declare-fun isSuffix!828 (List!31145 List!31145) Bool)

(assert (=> d!771272 (isSuffix!828 lt!950015 (++!7601 lt!950024 lt!950015))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!513 (List!31145 List!31145) Unit!45169)

(assert (=> d!771272 (= lt!950032 (lemmaConcatTwoListThenFSndIsSuffix!513 lt!950024 lt!950015))))

(assert (=> d!771272 (= lt!950015 (list!11714 input!780))))

(assert (=> d!771272 (= lt!950024 (list!11714 (BalanceConc!19029 Empty!9707)))))

(assert (=> d!771272 (= (lexTailRecV2!867 thiss!12257 rules!1381 input!780 (BalanceConc!19029 Empty!9707) input!780 (BalanceConc!19031 Empty!9708)) lt!950020)))

(declare-fun lt!950039 () tuple2!30592)

(declare-fun b!2691608 () Bool)

(declare-fun lt!950036 () Option!6131)

(assert (=> b!2691608 (= lt!950039 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950036))))))

(declare-fun e!1697008 () tuple2!30592)

(assert (=> b!2691608 (= e!1697008 (tuple2!30593 (prepend!1071 (_1!17887 lt!950039) (_1!17885 (v!32838 lt!950036))) (_2!17887 lt!950039)))))

(declare-fun b!2691609 () Bool)

(assert (=> b!2691609 (= e!1697008 (tuple2!30593 (BalanceConc!19031 Empty!9708) input!780))))

(declare-fun lt!950025 () Option!6131)

(declare-fun lt!950031 () tuple2!30592)

(declare-fun b!2691610 () Bool)

(assert (=> b!2691610 (= lt!950031 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950025))))))

(assert (=> b!2691610 (= e!1697005 (tuple2!30593 (prepend!1071 (_1!17887 lt!950031) (_1!17885 (v!32838 lt!950025))) (_2!17887 lt!950031)))))

(declare-fun lt!950030 () BalanceConc!19028)

(declare-fun b!2691611 () Bool)

(assert (=> b!2691611 (= e!1697006 (lexTailRecV2!867 thiss!12257 rules!1381 input!780 lt!950030 (_2!17885 (v!32838 lt!950026)) (append!766 (BalanceConc!19031 Empty!9708) (_1!17885 (v!32838 lt!950026)))))))

(declare-fun lt!950033 () tuple2!30592)

(assert (=> b!2691611 (= lt!950033 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950026))))))

(declare-fun lt!950018 () List!31145)

(assert (=> b!2691611 (= lt!950018 (list!11714 (BalanceConc!19029 Empty!9707)))))

(declare-fun lt!950041 () List!31145)

(assert (=> b!2691611 (= lt!950041 (list!11714 (charsOf!2986 (_1!17885 (v!32838 lt!950026)))))))

(declare-fun lt!950017 () List!31145)

(assert (=> b!2691611 (= lt!950017 (list!11714 (_2!17885 (v!32838 lt!950026))))))

(declare-fun lt!950040 () Unit!45169)

(assert (=> b!2691611 (= lt!950040 (lemmaConcatAssociativity!1545 lt!950018 lt!950041 lt!950017))))

(assert (=> b!2691611 (= (++!7601 (++!7601 lt!950018 lt!950041) lt!950017) (++!7601 lt!950018 (++!7601 lt!950041 lt!950017)))))

(declare-fun lt!950043 () Unit!45169)

(assert (=> b!2691611 (= lt!950043 lt!950040)))

(assert (=> b!2691611 (= lt!950036 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 input!780))))

(declare-fun c!433909 () Bool)

(assert (=> b!2691611 (= c!433909 ((_ is Some!6130) lt!950036))))

(assert (=> b!2691611 (= (lexRec!598 thiss!12257 rules!1381 input!780) e!1697008)))

(declare-fun lt!950016 () Unit!45169)

(declare-fun Unit!45173 () Unit!45169)

(assert (=> b!2691611 (= lt!950016 Unit!45173)))

(declare-fun lt!950022 () List!31147)

(assert (=> b!2691611 (= lt!950022 (list!11715 (BalanceConc!19031 Empty!9708)))))

(declare-fun lt!950044 () List!31147)

(assert (=> b!2691611 (= lt!950044 (Cons!31047 (_1!17885 (v!32838 lt!950026)) Nil!31047))))

(declare-fun lt!950038 () List!31147)

(assert (=> b!2691611 (= lt!950038 (list!11715 (_1!17887 lt!950033)))))

(declare-fun lt!950042 () Unit!45169)

(assert (=> b!2691611 (= lt!950042 (lemmaConcatAssociativity!1546 lt!950022 lt!950044 lt!950038))))

(assert (=> b!2691611 (= (++!7604 (++!7604 lt!950022 lt!950044) lt!950038) (++!7604 lt!950022 (++!7604 lt!950044 lt!950038)))))

(declare-fun lt!950035 () Unit!45169)

(assert (=> b!2691611 (= lt!950035 lt!950042)))

(declare-fun lt!950014 () List!31145)

(assert (=> b!2691611 (= lt!950014 (++!7601 (list!11714 (BalanceConc!19029 Empty!9707)) (list!11714 (charsOf!2986 (_1!17885 (v!32838 lt!950026))))))))

(declare-fun lt!950029 () List!31145)

(assert (=> b!2691611 (= lt!950029 (list!11714 (_2!17885 (v!32838 lt!950026))))))

(declare-fun lt!950037 () List!31147)

(assert (=> b!2691611 (= lt!950037 (list!11715 (append!766 (BalanceConc!19031 Empty!9708) (_1!17885 (v!32838 lt!950026)))))))

(declare-fun lt!950019 () Unit!45169)

(assert (=> b!2691611 (= lt!950019 (lemmaLexThenLexPrefix!403 thiss!12257 rules!1381 lt!950014 lt!950029 lt!950037 (list!11715 (_1!17887 lt!950033)) (list!11714 (_2!17887 lt!950033))))))

(assert (=> b!2691611 (= (lexList!1190 thiss!12257 rules!1381 lt!950014) (tuple2!30595 lt!950037 Nil!31045))))

(declare-fun lt!950012 () Unit!45169)

(assert (=> b!2691611 (= lt!950012 lt!950019)))

(assert (=> b!2691611 (= lt!950011 (++!7603 (BalanceConc!19029 Empty!9707) (charsOf!2986 (_1!17885 (v!32838 lt!950026)))))))

(assert (=> b!2691611 (= lt!950025 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 lt!950011))))

(declare-fun c!433910 () Bool)

(assert (=> b!2691611 (= c!433910 ((_ is Some!6130) lt!950025))))

(assert (=> b!2691611 (= (lexRec!598 thiss!12257 rules!1381 (++!7603 (BalanceConc!19029 Empty!9707) (charsOf!2986 (_1!17885 (v!32838 lt!950026))))) e!1697005)))

(declare-fun lt!950021 () Unit!45169)

(declare-fun Unit!45174 () Unit!45169)

(assert (=> b!2691611 (= lt!950021 Unit!45174)))

(assert (=> b!2691611 (= lt!950030 (++!7603 (BalanceConc!19029 Empty!9707) (charsOf!2986 (_1!17885 (v!32838 lt!950026)))))))

(declare-fun lt!950013 () List!31145)

(assert (=> b!2691611 (= lt!950013 (list!11714 lt!950030))))

(declare-fun lt!950023 () List!31145)

(assert (=> b!2691611 (= lt!950023 (list!11714 (_2!17885 (v!32838 lt!950026))))))

(declare-fun lt!950028 () Unit!45169)

(assert (=> b!2691611 (= lt!950028 (lemmaConcatTwoListThenFSndIsSuffix!513 lt!950013 lt!950023))))

(assert (=> b!2691611 (isSuffix!828 lt!950023 (++!7601 lt!950013 lt!950023))))

(declare-fun lt!950027 () Unit!45169)

(assert (=> b!2691611 (= lt!950027 lt!950028)))

(declare-fun b!2691612 () Bool)

(assert (=> b!2691612 (= e!1697007 (= (list!11714 (_2!17887 lt!950020)) (list!11714 (_2!17887 (lexRec!598 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2691613 () Bool)

(assert (=> b!2691613 (= e!1697006 (tuple2!30593 (BalanceConc!19031 Empty!9708) input!780))))

(assert (= (and d!771272 c!433908) b!2691611))

(assert (= (and d!771272 (not c!433908)) b!2691613))

(assert (= (and b!2691611 c!433909) b!2691608))

(assert (= (and b!2691611 (not c!433909)) b!2691609))

(assert (= (and b!2691611 c!433910) b!2691610))

(assert (= (and b!2691611 (not c!433910)) b!2691607))

(assert (= (and d!771272 res!1130884) b!2691612))

(declare-fun m!3069439 () Bool)

(assert (=> d!771272 m!3069439))

(declare-fun m!3069441 () Bool)

(assert (=> d!771272 m!3069441))

(assert (=> d!771272 m!3069259))

(declare-fun m!3069443 () Bool)

(assert (=> d!771272 m!3069443))

(declare-fun m!3069445 () Bool)

(assert (=> d!771272 m!3069445))

(declare-fun m!3069447 () Bool)

(assert (=> d!771272 m!3069447))

(declare-fun m!3069449 () Bool)

(assert (=> d!771272 m!3069449))

(assert (=> d!771272 m!3069439))

(assert (=> d!771272 m!3069271))

(declare-fun m!3069451 () Bool)

(assert (=> d!771272 m!3069451))

(declare-fun m!3069453 () Bool)

(assert (=> b!2691610 m!3069453))

(declare-fun m!3069455 () Bool)

(assert (=> b!2691610 m!3069455))

(declare-fun m!3069457 () Bool)

(assert (=> b!2691608 m!3069457))

(declare-fun m!3069459 () Bool)

(assert (=> b!2691608 m!3069459))

(declare-fun m!3069461 () Bool)

(assert (=> b!2691611 m!3069461))

(declare-fun m!3069463 () Bool)

(assert (=> b!2691611 m!3069463))

(declare-fun m!3069465 () Bool)

(assert (=> b!2691611 m!3069465))

(declare-fun m!3069467 () Bool)

(assert (=> b!2691611 m!3069467))

(declare-fun m!3069469 () Bool)

(assert (=> b!2691611 m!3069469))

(declare-fun m!3069471 () Bool)

(assert (=> b!2691611 m!3069471))

(declare-fun m!3069473 () Bool)

(assert (=> b!2691611 m!3069473))

(declare-fun m!3069475 () Bool)

(assert (=> b!2691611 m!3069475))

(declare-fun m!3069477 () Bool)

(assert (=> b!2691611 m!3069477))

(declare-fun m!3069479 () Bool)

(assert (=> b!2691611 m!3069479))

(assert (=> b!2691611 m!3069477))

(assert (=> b!2691611 m!3069467))

(declare-fun m!3069481 () Bool)

(assert (=> b!2691611 m!3069481))

(assert (=> b!2691611 m!3069451))

(declare-fun m!3069483 () Bool)

(assert (=> b!2691611 m!3069483))

(declare-fun m!3069485 () Bool)

(assert (=> b!2691611 m!3069485))

(declare-fun m!3069487 () Bool)

(assert (=> b!2691611 m!3069487))

(assert (=> b!2691611 m!3069483))

(declare-fun m!3069489 () Bool)

(assert (=> b!2691611 m!3069489))

(declare-fun m!3069491 () Bool)

(assert (=> b!2691611 m!3069491))

(assert (=> b!2691611 m!3069473))

(declare-fun m!3069493 () Bool)

(assert (=> b!2691611 m!3069493))

(declare-fun m!3069495 () Bool)

(assert (=> b!2691611 m!3069495))

(assert (=> b!2691611 m!3069487))

(declare-fun m!3069497 () Bool)

(assert (=> b!2691611 m!3069497))

(assert (=> b!2691611 m!3069461))

(declare-fun m!3069499 () Bool)

(assert (=> b!2691611 m!3069499))

(assert (=> b!2691611 m!3069251))

(assert (=> b!2691611 m!3069475))

(assert (=> b!2691611 m!3069271))

(declare-fun m!3069501 () Bool)

(assert (=> b!2691611 m!3069501))

(declare-fun m!3069503 () Bool)

(assert (=> b!2691611 m!3069503))

(declare-fun m!3069505 () Bool)

(assert (=> b!2691611 m!3069505))

(assert (=> b!2691611 m!3069501))

(declare-fun m!3069507 () Bool)

(assert (=> b!2691611 m!3069507))

(declare-fun m!3069509 () Bool)

(assert (=> b!2691611 m!3069509))

(declare-fun m!3069511 () Bool)

(assert (=> b!2691611 m!3069511))

(declare-fun m!3069513 () Bool)

(assert (=> b!2691611 m!3069513))

(assert (=> b!2691611 m!3069451))

(assert (=> b!2691611 m!3069463))

(declare-fun m!3069515 () Bool)

(assert (=> b!2691611 m!3069515))

(assert (=> b!2691611 m!3069511))

(assert (=> b!2691611 m!3069461))

(assert (=> b!2691611 m!3069489))

(assert (=> b!2691611 m!3069473))

(declare-fun m!3069517 () Bool)

(assert (=> b!2691611 m!3069517))

(declare-fun m!3069519 () Bool)

(assert (=> b!2691611 m!3069519))

(declare-fun m!3069521 () Bool)

(assert (=> b!2691612 m!3069521))

(assert (=> b!2691612 m!3069271))

(declare-fun m!3069523 () Bool)

(assert (=> b!2691612 m!3069523))

(assert (=> b!2691450 d!771272))

(declare-fun d!771274 () Bool)

(assert (=> d!771274 (= (inv!42076 (tag!5243 (h!36466 rules!1381))) (= (mod (str.len (value!152675 (tag!5243 (h!36466 rules!1381)))) 2) 0))))

(assert (=> b!2691468 d!771274))

(declare-fun d!771276 () Bool)

(declare-fun res!1130887 () Bool)

(declare-fun e!1697011 () Bool)

(assert (=> d!771276 (=> (not res!1130887) (not e!1697011))))

(declare-fun semiInverseModEq!1960 (Int Int) Bool)

(assert (=> d!771276 (= res!1130887 (semiInverseModEq!1960 (toChars!6554 (transformation!4739 (h!36466 rules!1381))) (toValue!6695 (transformation!4739 (h!36466 rules!1381)))))))

(assert (=> d!771276 (= (inv!42080 (transformation!4739 (h!36466 rules!1381))) e!1697011)))

(declare-fun b!2691616 () Bool)

(declare-fun equivClasses!1861 (Int Int) Bool)

(assert (=> b!2691616 (= e!1697011 (equivClasses!1861 (toChars!6554 (transformation!4739 (h!36466 rules!1381))) (toValue!6695 (transformation!4739 (h!36466 rules!1381)))))))

(assert (= (and d!771276 res!1130887) b!2691616))

(declare-fun m!3069525 () Bool)

(assert (=> d!771276 m!3069525))

(declare-fun m!3069527 () Bool)

(assert (=> b!2691616 m!3069527))

(assert (=> b!2691468 d!771276))

(declare-fun d!771278 () Bool)

(assert (=> d!771278 (= (valid!2719 (_3!2590 lt!949792)) (validCacheMapDown!354 (cache!3560 (_3!2590 lt!949792))))))

(declare-fun bs!483323 () Bool)

(assert (= bs!483323 d!771278))

(declare-fun m!3069529 () Bool)

(assert (=> bs!483323 m!3069529))

(assert (=> b!2691469 d!771278))

(declare-fun d!771280 () Bool)

(declare-fun e!1697014 () Bool)

(assert (=> d!771280 e!1697014))

(declare-fun res!1130890 () Bool)

(assert (=> d!771280 (=> (not res!1130890) (not e!1697014))))

(declare-fun isBalanced!2939 (Conc!9708) Bool)

(declare-fun prepend!1072 (Conc!9708 Token!8944) Conc!9708)

(assert (=> d!771280 (= res!1130890 (isBalanced!2939 (prepend!1072 (c!433874 (_1!17887 lt!949806)) (_1!17885 (v!32838 lt!949802)))))))

(declare-fun lt!950047 () BalanceConc!19030)

(assert (=> d!771280 (= lt!950047 (BalanceConc!19031 (prepend!1072 (c!433874 (_1!17887 lt!949806)) (_1!17885 (v!32838 lt!949802)))))))

(assert (=> d!771280 (= (prepend!1071 (_1!17887 lt!949806) (_1!17885 (v!32838 lt!949802))) lt!950047)))

(declare-fun b!2691619 () Bool)

(assert (=> b!2691619 (= e!1697014 (= (list!11715 lt!950047) (Cons!31047 (_1!17885 (v!32838 lt!949802)) (list!11715 (_1!17887 lt!949806)))))))

(assert (= (and d!771280 res!1130890) b!2691619))

(declare-fun m!3069531 () Bool)

(assert (=> d!771280 m!3069531))

(assert (=> d!771280 m!3069531))

(declare-fun m!3069533 () Bool)

(assert (=> d!771280 m!3069533))

(declare-fun m!3069535 () Bool)

(assert (=> b!2691619 m!3069535))

(assert (=> b!2691619 m!3069163))

(assert (=> b!2691471 d!771280))

(declare-fun d!771282 () Bool)

(assert (=> d!771282 (= (list!11715 (_1!17887 lt!949790)) (list!11717 (c!433874 (_1!17887 lt!949790))))))

(declare-fun bs!483324 () Bool)

(assert (= bs!483324 d!771282))

(declare-fun m!3069537 () Bool)

(assert (=> bs!483324 m!3069537))

(assert (=> b!2691452 d!771282))

(declare-fun d!771284 () Bool)

(assert (=> d!771284 (= (list!11715 lt!949808) (list!11717 (c!433874 lt!949808)))))

(declare-fun bs!483325 () Bool)

(assert (= bs!483325 d!771284))

(declare-fun m!3069539 () Bool)

(assert (=> bs!483325 m!3069539))

(assert (=> b!2691452 d!771284))

(declare-fun e!1697018 () Bool)

(declare-fun b!2691620 () Bool)

(declare-fun lt!950049 () tuple2!30592)

(assert (=> b!2691620 (= e!1697018 (= (list!11714 (_2!17887 lt!950049)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 lt!949796)))))))

(declare-fun d!771286 () Bool)

(assert (=> d!771286 e!1697018))

(declare-fun res!1130892 () Bool)

(assert (=> d!771286 (=> (not res!1130892) (not e!1697018))))

(declare-fun e!1697017 () Bool)

(assert (=> d!771286 (= res!1130892 e!1697017)))

(declare-fun c!433912 () Bool)

(assert (=> d!771286 (= c!433912 (> (size!23980 (_1!17887 lt!950049)) 0))))

(declare-fun e!1697015 () tuple2!30592)

(assert (=> d!771286 (= lt!950049 e!1697015)))

(declare-fun c!433913 () Bool)

(declare-fun lt!950048 () Option!6131)

(assert (=> d!771286 (= c!433913 ((_ is Some!6130) lt!950048))))

(assert (=> d!771286 (= lt!950048 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 lt!949796))))

(assert (=> d!771286 (= (lexRec!598 thiss!12257 rules!1381 lt!949796) lt!950049)))

(declare-fun b!2691621 () Bool)

(assert (=> b!2691621 (= e!1697017 (= (list!11714 (_2!17887 lt!950049)) (list!11714 lt!949796)))))

(declare-fun b!2691622 () Bool)

(declare-fun lt!950050 () tuple2!30592)

(assert (=> b!2691622 (= e!1697015 (tuple2!30593 (prepend!1071 (_1!17887 lt!950050) (_1!17885 (v!32838 lt!950048))) (_2!17887 lt!950050)))))

(assert (=> b!2691622 (= lt!950050 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950048))))))

(declare-fun b!2691623 () Bool)

(declare-fun res!1130893 () Bool)

(assert (=> b!2691623 (=> (not res!1130893) (not e!1697018))))

(assert (=> b!2691623 (= res!1130893 (= (list!11715 (_1!17887 lt!950049)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 lt!949796)))))))

(declare-fun b!2691624 () Bool)

(declare-fun e!1697016 () Bool)

(assert (=> b!2691624 (= e!1697017 e!1697016)))

(declare-fun res!1130891 () Bool)

(assert (=> b!2691624 (= res!1130891 (< (size!23981 (_2!17887 lt!950049)) (size!23981 lt!949796)))))

(assert (=> b!2691624 (=> (not res!1130891) (not e!1697016))))

(declare-fun b!2691625 () Bool)

(assert (=> b!2691625 (= e!1697015 (tuple2!30593 (BalanceConc!19031 Empty!9708) lt!949796))))

(declare-fun b!2691626 () Bool)

(assert (=> b!2691626 (= e!1697016 (not (isEmpty!17714 (_1!17887 lt!950049))))))

(assert (= (and d!771286 c!433913) b!2691622))

(assert (= (and d!771286 (not c!433913)) b!2691625))

(assert (= (and d!771286 c!433912) b!2691624))

(assert (= (and d!771286 (not c!433912)) b!2691621))

(assert (= (and b!2691624 res!1130891) b!2691626))

(assert (= (and d!771286 res!1130892) b!2691623))

(assert (= (and b!2691623 res!1130893) b!2691620))

(declare-fun m!3069541 () Bool)

(assert (=> b!2691620 m!3069541))

(assert (=> b!2691620 m!3069241))

(assert (=> b!2691620 m!3069241))

(declare-fun m!3069543 () Bool)

(assert (=> b!2691620 m!3069543))

(declare-fun m!3069545 () Bool)

(assert (=> b!2691624 m!3069545))

(declare-fun m!3069547 () Bool)

(assert (=> b!2691624 m!3069547))

(assert (=> b!2691621 m!3069541))

(assert (=> b!2691621 m!3069241))

(declare-fun m!3069549 () Bool)

(assert (=> b!2691623 m!3069549))

(assert (=> b!2691623 m!3069241))

(assert (=> b!2691623 m!3069241))

(assert (=> b!2691623 m!3069543))

(declare-fun m!3069551 () Bool)

(assert (=> d!771286 m!3069551))

(declare-fun m!3069553 () Bool)

(assert (=> d!771286 m!3069553))

(declare-fun m!3069555 () Bool)

(assert (=> b!2691626 m!3069555))

(declare-fun m!3069557 () Bool)

(assert (=> b!2691622 m!3069557))

(declare-fun m!3069559 () Bool)

(assert (=> b!2691622 m!3069559))

(assert (=> b!2691452 d!771286))

(declare-fun b!2691637 () Bool)

(declare-fun res!1130898 () Bool)

(declare-fun e!1697023 () Bool)

(assert (=> b!2691637 (=> (not res!1130898) (not e!1697023))))

(declare-fun lt!950053 () List!31145)

(declare-fun size!23982 (List!31145) Int)

(assert (=> b!2691637 (= res!1130898 (= (size!23982 lt!950053) (+ (size!23982 lt!949795) (size!23982 lt!949786))))))

(declare-fun b!2691638 () Bool)

(assert (=> b!2691638 (= e!1697023 (or (not (= lt!949786 Nil!31045)) (= lt!950053 lt!949795)))))

(declare-fun b!2691636 () Bool)

(declare-fun e!1697024 () List!31145)

(assert (=> b!2691636 (= e!1697024 (Cons!31045 (h!36465 lt!949795) (++!7601 (t!225087 lt!949795) lt!949786)))))

(declare-fun b!2691635 () Bool)

(assert (=> b!2691635 (= e!1697024 lt!949786)))

(declare-fun d!771288 () Bool)

(assert (=> d!771288 e!1697023))

(declare-fun res!1130899 () Bool)

(assert (=> d!771288 (=> (not res!1130899) (not e!1697023))))

(declare-fun content!4402 (List!31145) (InoxSet C!15940))

(assert (=> d!771288 (= res!1130899 (= (content!4402 lt!950053) ((_ map or) (content!4402 lt!949795) (content!4402 lt!949786))))))

(assert (=> d!771288 (= lt!950053 e!1697024)))

(declare-fun c!433916 () Bool)

(assert (=> d!771288 (= c!433916 ((_ is Nil!31045) lt!949795))))

(assert (=> d!771288 (= (++!7601 lt!949795 lt!949786) lt!950053)))

(assert (= (and d!771288 c!433916) b!2691635))

(assert (= (and d!771288 (not c!433916)) b!2691636))

(assert (= (and d!771288 res!1130899) b!2691637))

(assert (= (and b!2691637 res!1130898) b!2691638))

(declare-fun m!3069561 () Bool)

(assert (=> b!2691637 m!3069561))

(declare-fun m!3069563 () Bool)

(assert (=> b!2691637 m!3069563))

(declare-fun m!3069565 () Bool)

(assert (=> b!2691637 m!3069565))

(declare-fun m!3069567 () Bool)

(assert (=> b!2691636 m!3069567))

(declare-fun m!3069569 () Bool)

(assert (=> d!771288 m!3069569))

(declare-fun m!3069571 () Bool)

(assert (=> d!771288 m!3069571))

(declare-fun m!3069573 () Bool)

(assert (=> d!771288 m!3069573))

(assert (=> b!2691451 d!771288))

(declare-fun d!771290 () Bool)

(assert (=> d!771290 (= (list!11714 totalInput!354) (list!11716 (c!433873 totalInput!354)))))

(declare-fun bs!483326 () Bool)

(assert (= bs!483326 d!771290))

(declare-fun m!3069575 () Bool)

(assert (=> bs!483326 m!3069575))

(assert (=> b!2691451 d!771290))

(declare-fun d!771292 () Bool)

(assert (=> d!771292 (= (list!11714 input!780) (list!11716 (c!433873 input!780)))))

(declare-fun bs!483327 () Bool)

(assert (= bs!483327 d!771292))

(declare-fun m!3069577 () Bool)

(assert (=> bs!483327 m!3069577))

(assert (=> b!2691451 d!771292))

(declare-fun d!771294 () Bool)

(assert (=> d!771294 (= (list!11714 treated!26) (list!11716 (c!433873 treated!26)))))

(declare-fun bs!483328 () Bool)

(assert (= bs!483328 d!771294))

(declare-fun m!3069579 () Bool)

(assert (=> bs!483328 m!3069579))

(assert (=> b!2691451 d!771294))

(declare-fun d!771296 () Bool)

(declare-fun validCacheMapUp!323 (MutableMap!3416) Bool)

(assert (=> d!771296 (= (valid!2720 cacheUp!486) (validCacheMapUp!323 (cache!3559 cacheUp!486)))))

(declare-fun bs!483329 () Bool)

(assert (= bs!483329 d!771296))

(declare-fun m!3069581 () Bool)

(assert (=> bs!483329 m!3069581))

(assert (=> b!2691483 d!771296))

(declare-fun d!771298 () Bool)

(assert (=> d!771298 (= (array_inv!3991 (_keys!3810 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) (bvsge (size!23976 (_keys!3810 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2691467 d!771298))

(declare-fun d!771300 () Bool)

(assert (=> d!771300 (= (array_inv!3993 (_values!3791 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) (bvsge (size!23977 (_values!3791 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2691467 d!771300))

(declare-fun d!771302 () Bool)

(declare-fun e!1697029 () Bool)

(assert (=> d!771302 e!1697029))

(declare-fun res!1130905 () Bool)

(assert (=> d!771302 (=> (not res!1130905) (not e!1697029))))

(declare-fun lt!950056 () List!31147)

(declare-fun content!4403 (List!31147) (InoxSet Token!8944))

(assert (=> d!771302 (= res!1130905 (= (content!4403 lt!950056) ((_ map or) (content!4403 lt!949789) (content!4403 (++!7604 lt!949793 lt!949807)))))))

(declare-fun e!1697030 () List!31147)

(assert (=> d!771302 (= lt!950056 e!1697030)))

(declare-fun c!433919 () Bool)

(assert (=> d!771302 (= c!433919 ((_ is Nil!31047) lt!949789))))

(assert (=> d!771302 (= (++!7604 lt!949789 (++!7604 lt!949793 lt!949807)) lt!950056)))

(declare-fun b!2691647 () Bool)

(assert (=> b!2691647 (= e!1697030 (++!7604 lt!949793 lt!949807))))

(declare-fun b!2691650 () Bool)

(assert (=> b!2691650 (= e!1697029 (or (not (= (++!7604 lt!949793 lt!949807) Nil!31047)) (= lt!950056 lt!949789)))))

(declare-fun b!2691649 () Bool)

(declare-fun res!1130904 () Bool)

(assert (=> b!2691649 (=> (not res!1130904) (not e!1697029))))

(declare-fun size!23983 (List!31147) Int)

(assert (=> b!2691649 (= res!1130904 (= (size!23983 lt!950056) (+ (size!23983 lt!949789) (size!23983 (++!7604 lt!949793 lt!949807)))))))

(declare-fun b!2691648 () Bool)

(assert (=> b!2691648 (= e!1697030 (Cons!31047 (h!36467 lt!949789) (++!7604 (t!225089 lt!949789) (++!7604 lt!949793 lt!949807))))))

(assert (= (and d!771302 c!433919) b!2691647))

(assert (= (and d!771302 (not c!433919)) b!2691648))

(assert (= (and d!771302 res!1130905) b!2691649))

(assert (= (and b!2691649 res!1130904) b!2691650))

(declare-fun m!3069583 () Bool)

(assert (=> d!771302 m!3069583))

(declare-fun m!3069585 () Bool)

(assert (=> d!771302 m!3069585))

(assert (=> d!771302 m!3069129))

(declare-fun m!3069587 () Bool)

(assert (=> d!771302 m!3069587))

(declare-fun m!3069589 () Bool)

(assert (=> b!2691649 m!3069589))

(declare-fun m!3069591 () Bool)

(assert (=> b!2691649 m!3069591))

(assert (=> b!2691649 m!3069129))

(declare-fun m!3069593 () Bool)

(assert (=> b!2691649 m!3069593))

(assert (=> b!2691648 m!3069129))

(declare-fun m!3069595 () Bool)

(assert (=> b!2691648 m!3069595))

(assert (=> b!2691486 d!771302))

(declare-fun d!771304 () Bool)

(declare-fun e!1697031 () Bool)

(assert (=> d!771304 e!1697031))

(declare-fun res!1130907 () Bool)

(assert (=> d!771304 (=> (not res!1130907) (not e!1697031))))

(declare-fun lt!950057 () List!31147)

(assert (=> d!771304 (= res!1130907 (= (content!4403 lt!950057) ((_ map or) (content!4403 lt!949793) (content!4403 lt!949807))))))

(declare-fun e!1697032 () List!31147)

(assert (=> d!771304 (= lt!950057 e!1697032)))

(declare-fun c!433920 () Bool)

(assert (=> d!771304 (= c!433920 ((_ is Nil!31047) lt!949793))))

(assert (=> d!771304 (= (++!7604 lt!949793 lt!949807) lt!950057)))

(declare-fun b!2691651 () Bool)

(assert (=> b!2691651 (= e!1697032 lt!949807)))

(declare-fun b!2691654 () Bool)

(assert (=> b!2691654 (= e!1697031 (or (not (= lt!949807 Nil!31047)) (= lt!950057 lt!949793)))))

(declare-fun b!2691653 () Bool)

(declare-fun res!1130906 () Bool)

(assert (=> b!2691653 (=> (not res!1130906) (not e!1697031))))

(assert (=> b!2691653 (= res!1130906 (= (size!23983 lt!950057) (+ (size!23983 lt!949793) (size!23983 lt!949807))))))

(declare-fun b!2691652 () Bool)

(assert (=> b!2691652 (= e!1697032 (Cons!31047 (h!36467 lt!949793) (++!7604 (t!225089 lt!949793) lt!949807)))))

(assert (= (and d!771304 c!433920) b!2691651))

(assert (= (and d!771304 (not c!433920)) b!2691652))

(assert (= (and d!771304 res!1130907) b!2691653))

(assert (= (and b!2691653 res!1130906) b!2691654))

(declare-fun m!3069597 () Bool)

(assert (=> d!771304 m!3069597))

(declare-fun m!3069599 () Bool)

(assert (=> d!771304 m!3069599))

(declare-fun m!3069601 () Bool)

(assert (=> d!771304 m!3069601))

(declare-fun m!3069603 () Bool)

(assert (=> b!2691653 m!3069603))

(declare-fun m!3069605 () Bool)

(assert (=> b!2691653 m!3069605))

(declare-fun m!3069607 () Bool)

(assert (=> b!2691653 m!3069607))

(declare-fun m!3069609 () Bool)

(assert (=> b!2691652 m!3069609))

(assert (=> b!2691486 d!771304))

(declare-fun b!2691657 () Bool)

(declare-fun res!1130908 () Bool)

(declare-fun e!1697033 () Bool)

(assert (=> b!2691657 (=> (not res!1130908) (not e!1697033))))

(declare-fun lt!950058 () List!31145)

(assert (=> b!2691657 (= res!1130908 (= (size!23982 lt!950058) (+ (size!23982 lt!949784) (size!23982 lt!949798))))))

(declare-fun b!2691658 () Bool)

(assert (=> b!2691658 (= e!1697033 (or (not (= lt!949798 Nil!31045)) (= lt!950058 lt!949784)))))

(declare-fun b!2691656 () Bool)

(declare-fun e!1697034 () List!31145)

(assert (=> b!2691656 (= e!1697034 (Cons!31045 (h!36465 lt!949784) (++!7601 (t!225087 lt!949784) lt!949798)))))

(declare-fun b!2691655 () Bool)

(assert (=> b!2691655 (= e!1697034 lt!949798)))

(declare-fun d!771306 () Bool)

(assert (=> d!771306 e!1697033))

(declare-fun res!1130909 () Bool)

(assert (=> d!771306 (=> (not res!1130909) (not e!1697033))))

(assert (=> d!771306 (= res!1130909 (= (content!4402 lt!950058) ((_ map or) (content!4402 lt!949784) (content!4402 lt!949798))))))

(assert (=> d!771306 (= lt!950058 e!1697034)))

(declare-fun c!433921 () Bool)

(assert (=> d!771306 (= c!433921 ((_ is Nil!31045) lt!949784))))

(assert (=> d!771306 (= (++!7601 lt!949784 lt!949798) lt!950058)))

(assert (= (and d!771306 c!433921) b!2691655))

(assert (= (and d!771306 (not c!433921)) b!2691656))

(assert (= (and d!771306 res!1130909) b!2691657))

(assert (= (and b!2691657 res!1130908) b!2691658))

(declare-fun m!3069611 () Bool)

(assert (=> b!2691657 m!3069611))

(declare-fun m!3069613 () Bool)

(assert (=> b!2691657 m!3069613))

(declare-fun m!3069615 () Bool)

(assert (=> b!2691657 m!3069615))

(declare-fun m!3069617 () Bool)

(assert (=> b!2691656 m!3069617))

(declare-fun m!3069619 () Bool)

(assert (=> d!771306 m!3069619))

(declare-fun m!3069621 () Bool)

(assert (=> d!771306 m!3069621))

(declare-fun m!3069623 () Bool)

(assert (=> d!771306 m!3069623))

(assert (=> b!2691486 d!771306))

(declare-fun b!2691669 () Bool)

(declare-fun e!1697043 () tuple2!30594)

(assert (=> b!2691669 (= e!1697043 (tuple2!30595 Nil!31047 lt!949784))))

(declare-fun b!2691670 () Bool)

(declare-fun e!1697042 () Bool)

(declare-fun e!1697041 () Bool)

(assert (=> b!2691670 (= e!1697042 e!1697041)))

(declare-fun res!1130912 () Bool)

(declare-fun lt!950066 () tuple2!30594)

(assert (=> b!2691670 (= res!1130912 (< (size!23982 (_2!17888 lt!950066)) (size!23982 lt!949784)))))

(assert (=> b!2691670 (=> (not res!1130912) (not e!1697041))))

(declare-fun b!2691671 () Bool)

(declare-fun isEmpty!17715 (List!31147) Bool)

(assert (=> b!2691671 (= e!1697041 (not (isEmpty!17715 (_1!17888 lt!950066))))))

(declare-fun b!2691672 () Bool)

(declare-fun lt!950067 () Option!6132)

(declare-fun lt!950065 () tuple2!30594)

(assert (=> b!2691672 (= e!1697043 (tuple2!30595 (Cons!31047 (_1!17889 (v!32844 lt!950067)) (_1!17888 lt!950065)) (_2!17888 lt!950065)))))

(assert (=> b!2691672 (= lt!950065 (lexList!1190 thiss!12257 rules!1381 (_2!17889 (v!32844 lt!950067))))))

(declare-fun b!2691673 () Bool)

(assert (=> b!2691673 (= e!1697042 (= (_2!17888 lt!950066) lt!949784))))

(declare-fun d!771308 () Bool)

(assert (=> d!771308 e!1697042))

(declare-fun c!433926 () Bool)

(assert (=> d!771308 (= c!433926 (> (size!23983 (_1!17888 lt!950066)) 0))))

(assert (=> d!771308 (= lt!950066 e!1697043)))

(declare-fun c!433927 () Bool)

(assert (=> d!771308 (= c!433927 ((_ is Some!6131) lt!950067))))

(assert (=> d!771308 (= lt!950067 (maxPrefix!2350 thiss!12257 rules!1381 lt!949784))))

(assert (=> d!771308 (= (lexList!1190 thiss!12257 rules!1381 lt!949784) lt!950066)))

(assert (= (and d!771308 c!433927) b!2691672))

(assert (= (and d!771308 (not c!433927)) b!2691669))

(assert (= (and d!771308 c!433926) b!2691670))

(assert (= (and d!771308 (not c!433926)) b!2691673))

(assert (= (and b!2691670 res!1130912) b!2691671))

(declare-fun m!3069625 () Bool)

(assert (=> b!2691670 m!3069625))

(assert (=> b!2691670 m!3069613))

(declare-fun m!3069627 () Bool)

(assert (=> b!2691671 m!3069627))

(declare-fun m!3069629 () Bool)

(assert (=> b!2691672 m!3069629))

(declare-fun m!3069631 () Bool)

(assert (=> d!771308 m!3069631))

(declare-fun m!3069633 () Bool)

(assert (=> d!771308 m!3069633))

(assert (=> b!2691486 d!771308))

(declare-fun d!771310 () Bool)

(assert (=> d!771310 (= (list!11714 (_2!17885 (v!32838 lt!949802))) (list!11716 (c!433873 (_2!17885 (v!32838 lt!949802)))))))

(declare-fun bs!483330 () Bool)

(assert (= bs!483330 d!771310))

(declare-fun m!3069635 () Bool)

(assert (=> bs!483330 m!3069635))

(assert (=> b!2691486 d!771310))

(declare-fun d!771312 () Bool)

(declare-fun e!1697044 () Bool)

(assert (=> d!771312 e!1697044))

(declare-fun res!1130913 () Bool)

(assert (=> d!771312 (=> (not res!1130913) (not e!1697044))))

(declare-fun lt!950091 () tuple2!30592)

(assert (=> d!771312 (= res!1130913 (= (list!11715 (_1!17887 lt!950091)) (list!11715 (_1!17887 (lexRec!598 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun e!1697047 () tuple2!30592)

(assert (=> d!771312 (= lt!950091 e!1697047)))

(declare-fun c!433928 () Bool)

(declare-fun lt!950083 () Option!6131)

(assert (=> d!771312 (= c!433928 ((_ is Some!6130) lt!950083))))

(assert (=> d!771312 (= lt!950083 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949802))))))

(assert (=> d!771312 (= (lexTailRec!23 thiss!12257 rules!1381 totalInput!354 lt!949783 (_2!17885 (v!32838 lt!949802)) lt!949781) lt!950091)))

(declare-fun b!2691674 () Bool)

(assert (=> b!2691674 (= e!1697047 (tuple2!30593 lt!949781 (_2!17885 (v!32838 lt!949802))))))

(declare-fun lt!950084 () tuple2!30592)

(declare-fun lt!950087 () Option!6131)

(declare-fun b!2691675 () Bool)

(assert (=> b!2691675 (= lt!950084 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950087))))))

(declare-fun e!1697046 () tuple2!30592)

(assert (=> b!2691675 (= e!1697046 (tuple2!30593 (prepend!1071 (_1!17887 lt!950084) (_1!17885 (v!32838 lt!950087))) (_2!17887 lt!950084)))))

(declare-fun lt!950081 () Option!6131)

(declare-fun b!2691676 () Bool)

(declare-fun lt!950079 () tuple2!30592)

(assert (=> b!2691676 (= lt!950079 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950081))))))

(declare-fun e!1697045 () tuple2!30592)

(assert (=> b!2691676 (= e!1697045 (tuple2!30593 (prepend!1071 (_1!17887 lt!950079) (_1!17885 (v!32838 lt!950081))) (_2!17887 lt!950079)))))

(declare-fun b!2691677 () Bool)

(assert (=> b!2691677 (= e!1697047 (lexTailRec!23 thiss!12257 rules!1381 totalInput!354 (++!7603 lt!949783 (charsOf!2986 (_1!17885 (v!32838 lt!950083)))) (_2!17885 (v!32838 lt!950083)) (append!766 lt!949781 (_1!17885 (v!32838 lt!950083)))))))

(declare-fun lt!950069 () tuple2!30592)

(assert (=> b!2691677 (= lt!950069 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950083))))))

(declare-fun lt!950074 () List!31145)

(assert (=> b!2691677 (= lt!950074 (list!11714 lt!949783))))

(declare-fun lt!950076 () List!31145)

(assert (=> b!2691677 (= lt!950076 (list!11714 (charsOf!2986 (_1!17885 (v!32838 lt!950083)))))))

(declare-fun lt!950077 () List!31145)

(assert (=> b!2691677 (= lt!950077 (list!11714 (_2!17885 (v!32838 lt!950083))))))

(declare-fun lt!950075 () Unit!45169)

(assert (=> b!2691677 (= lt!950075 (lemmaConcatAssociativity!1545 lt!950074 lt!950076 lt!950077))))

(assert (=> b!2691677 (= (++!7601 (++!7601 lt!950074 lt!950076) lt!950077) (++!7601 lt!950074 (++!7601 lt!950076 lt!950077)))))

(declare-fun lt!950090 () Unit!45169)

(assert (=> b!2691677 (= lt!950090 lt!950075)))

(assert (=> b!2691677 (= lt!950081 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949802))))))

(declare-fun c!433929 () Bool)

(assert (=> b!2691677 (= c!433929 ((_ is Some!6130) lt!950081))))

(assert (=> b!2691677 (= (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949802))) e!1697045)))

(declare-fun lt!950089 () Unit!45169)

(declare-fun Unit!45175 () Unit!45169)

(assert (=> b!2691677 (= lt!950089 Unit!45175)))

(declare-fun lt!950071 () List!31147)

(assert (=> b!2691677 (= lt!950071 (list!11715 lt!949781))))

(declare-fun lt!950068 () List!31147)

(assert (=> b!2691677 (= lt!950068 (Cons!31047 (_1!17885 (v!32838 lt!950083)) Nil!31047))))

(declare-fun lt!950072 () List!31147)

(assert (=> b!2691677 (= lt!950072 (list!11715 (_1!17887 lt!950069)))))

(declare-fun lt!950080 () Unit!45169)

(assert (=> b!2691677 (= lt!950080 (lemmaConcatAssociativity!1546 lt!950071 lt!950068 lt!950072))))

(assert (=> b!2691677 (= (++!7604 (++!7604 lt!950071 lt!950068) lt!950072) (++!7604 lt!950071 (++!7604 lt!950068 lt!950072)))))

(declare-fun lt!950092 () Unit!45169)

(assert (=> b!2691677 (= lt!950092 lt!950080)))

(declare-fun lt!950088 () List!31145)

(assert (=> b!2691677 (= lt!950088 (++!7601 (list!11714 lt!949783) (list!11714 (charsOf!2986 (_1!17885 (v!32838 lt!950083))))))))

(declare-fun lt!950073 () List!31145)

(assert (=> b!2691677 (= lt!950073 (list!11714 (_2!17885 (v!32838 lt!950083))))))

(declare-fun lt!950086 () List!31147)

(assert (=> b!2691677 (= lt!950086 (list!11715 (append!766 lt!949781 (_1!17885 (v!32838 lt!950083)))))))

(declare-fun lt!950082 () Unit!45169)

(assert (=> b!2691677 (= lt!950082 (lemmaLexThenLexPrefix!403 thiss!12257 rules!1381 lt!950088 lt!950073 lt!950086 (list!11715 (_1!17887 lt!950069)) (list!11714 (_2!17887 lt!950069))))))

(assert (=> b!2691677 (= (lexList!1190 thiss!12257 rules!1381 lt!950088) (tuple2!30595 lt!950086 Nil!31045))))

(declare-fun lt!950070 () Unit!45169)

(assert (=> b!2691677 (= lt!950070 lt!950082)))

(declare-fun lt!950078 () BalanceConc!19028)

(assert (=> b!2691677 (= lt!950078 (++!7603 lt!949783 (charsOf!2986 (_1!17885 (v!32838 lt!950083)))))))

(assert (=> b!2691677 (= lt!950087 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 lt!950078))))

(declare-fun c!433930 () Bool)

(assert (=> b!2691677 (= c!433930 ((_ is Some!6130) lt!950087))))

(assert (=> b!2691677 (= (lexRec!598 thiss!12257 rules!1381 (++!7603 lt!949783 (charsOf!2986 (_1!17885 (v!32838 lt!950083))))) e!1697046)))

(declare-fun lt!950085 () Unit!45169)

(declare-fun Unit!45176 () Unit!45169)

(assert (=> b!2691677 (= lt!950085 Unit!45176)))

(declare-fun b!2691678 () Bool)

(assert (=> b!2691678 (= e!1697044 (= (list!11714 (_2!17887 lt!950091)) (list!11714 (_2!17887 (lexRec!598 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2691679 () Bool)

(assert (=> b!2691679 (= e!1697046 (tuple2!30593 (BalanceConc!19031 Empty!9708) lt!950078))))

(declare-fun b!2691680 () Bool)

(assert (=> b!2691680 (= e!1697045 (tuple2!30593 (BalanceConc!19031 Empty!9708) (_2!17885 (v!32838 lt!949802))))))

(assert (= (and d!771312 c!433928) b!2691677))

(assert (= (and d!771312 (not c!433928)) b!2691674))

(assert (= (and b!2691677 c!433929) b!2691676))

(assert (= (and b!2691677 (not c!433929)) b!2691680))

(assert (= (and b!2691677 c!433930) b!2691675))

(assert (= (and b!2691677 (not c!433930)) b!2691679))

(assert (= (and d!771312 res!1130913) b!2691678))

(declare-fun m!3069637 () Bool)

(assert (=> b!2691677 m!3069637))

(declare-fun m!3069639 () Bool)

(assert (=> b!2691677 m!3069639))

(declare-fun m!3069641 () Bool)

(assert (=> b!2691677 m!3069641))

(declare-fun m!3069643 () Bool)

(assert (=> b!2691677 m!3069643))

(declare-fun m!3069645 () Bool)

(assert (=> b!2691677 m!3069645))

(declare-fun m!3069647 () Bool)

(assert (=> b!2691677 m!3069647))

(declare-fun m!3069649 () Bool)

(assert (=> b!2691677 m!3069649))

(declare-fun m!3069651 () Bool)

(assert (=> b!2691677 m!3069651))

(assert (=> b!2691677 m!3069149))

(assert (=> b!2691677 m!3069131))

(declare-fun m!3069653 () Bool)

(assert (=> b!2691677 m!3069653))

(declare-fun m!3069655 () Bool)

(assert (=> b!2691677 m!3069655))

(declare-fun m!3069657 () Bool)

(assert (=> b!2691677 m!3069657))

(declare-fun m!3069659 () Bool)

(assert (=> b!2691677 m!3069659))

(declare-fun m!3069661 () Bool)

(assert (=> b!2691677 m!3069661))

(assert (=> b!2691677 m!3069643))

(assert (=> b!2691677 m!3069647))

(declare-fun m!3069663 () Bool)

(assert (=> b!2691677 m!3069663))

(declare-fun m!3069665 () Bool)

(assert (=> b!2691677 m!3069665))

(declare-fun m!3069667 () Bool)

(assert (=> b!2691677 m!3069667))

(declare-fun m!3069669 () Bool)

(assert (=> b!2691677 m!3069669))

(assert (=> b!2691677 m!3069649))

(declare-fun m!3069671 () Bool)

(assert (=> b!2691677 m!3069671))

(declare-fun m!3069673 () Bool)

(assert (=> b!2691677 m!3069673))

(declare-fun m!3069675 () Bool)

(assert (=> b!2691677 m!3069675))

(declare-fun m!3069677 () Bool)

(assert (=> b!2691677 m!3069677))

(assert (=> b!2691677 m!3069675))

(assert (=> b!2691677 m!3069641))

(declare-fun m!3069679 () Bool)

(assert (=> b!2691677 m!3069679))

(assert (=> b!2691677 m!3069659))

(assert (=> b!2691677 m!3069649))

(declare-fun m!3069681 () Bool)

(assert (=> b!2691677 m!3069681))

(assert (=> b!2691677 m!3069645))

(assert (=> b!2691677 m!3069659))

(assert (=> b!2691677 m!3069645))

(declare-fun m!3069683 () Bool)

(assert (=> b!2691677 m!3069683))

(assert (=> b!2691677 m!3069667))

(assert (=> b!2691677 m!3069639))

(declare-fun m!3069685 () Bool)

(assert (=> b!2691677 m!3069685))

(assert (=> b!2691677 m!3069683))

(assert (=> b!2691677 m!3069657))

(declare-fun m!3069687 () Bool)

(assert (=> b!2691677 m!3069687))

(declare-fun m!3069689 () Bool)

(assert (=> b!2691677 m!3069689))

(declare-fun m!3069691 () Bool)

(assert (=> d!771312 m!3069691))

(assert (=> d!771312 m!3069267))

(assert (=> d!771312 m!3069381))

(assert (=> d!771312 m!3069655))

(declare-fun m!3069693 () Bool)

(assert (=> b!2691676 m!3069693))

(declare-fun m!3069695 () Bool)

(assert (=> b!2691676 m!3069695))

(declare-fun m!3069697 () Bool)

(assert (=> b!2691678 m!3069697))

(assert (=> b!2691678 m!3069267))

(assert (=> b!2691678 m!3069389))

(declare-fun m!3069699 () Bool)

(assert (=> b!2691675 m!3069699))

(declare-fun m!3069701 () Bool)

(assert (=> b!2691675 m!3069701))

(assert (=> b!2691486 d!771312))

(declare-fun b!2691681 () Bool)

(declare-fun e!1697051 () Bool)

(declare-fun lt!950094 () tuple2!30592)

(assert (=> b!2691681 (= e!1697051 (= (list!11714 (_2!17887 lt!950094)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 lt!949783)))))))

(declare-fun d!771314 () Bool)

(assert (=> d!771314 e!1697051))

(declare-fun res!1130915 () Bool)

(assert (=> d!771314 (=> (not res!1130915) (not e!1697051))))

(declare-fun e!1697050 () Bool)

(assert (=> d!771314 (= res!1130915 e!1697050)))

(declare-fun c!433931 () Bool)

(assert (=> d!771314 (= c!433931 (> (size!23980 (_1!17887 lt!950094)) 0))))

(declare-fun e!1697048 () tuple2!30592)

(assert (=> d!771314 (= lt!950094 e!1697048)))

(declare-fun c!433932 () Bool)

(declare-fun lt!950093 () Option!6131)

(assert (=> d!771314 (= c!433932 ((_ is Some!6130) lt!950093))))

(assert (=> d!771314 (= lt!950093 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 lt!949783))))

(assert (=> d!771314 (= (lexRec!598 thiss!12257 rules!1381 lt!949783) lt!950094)))

(declare-fun b!2691682 () Bool)

(assert (=> b!2691682 (= e!1697050 (= (list!11714 (_2!17887 lt!950094)) (list!11714 lt!949783)))))

(declare-fun b!2691683 () Bool)

(declare-fun lt!950095 () tuple2!30592)

(assert (=> b!2691683 (= e!1697048 (tuple2!30593 (prepend!1071 (_1!17887 lt!950095) (_1!17885 (v!32838 lt!950093))) (_2!17887 lt!950095)))))

(assert (=> b!2691683 (= lt!950095 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950093))))))

(declare-fun b!2691684 () Bool)

(declare-fun res!1130916 () Bool)

(assert (=> b!2691684 (=> (not res!1130916) (not e!1697051))))

(assert (=> b!2691684 (= res!1130916 (= (list!11715 (_1!17887 lt!950094)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 lt!949783)))))))

(declare-fun b!2691685 () Bool)

(declare-fun e!1697049 () Bool)

(assert (=> b!2691685 (= e!1697050 e!1697049)))

(declare-fun res!1130914 () Bool)

(assert (=> b!2691685 (= res!1130914 (< (size!23981 (_2!17887 lt!950094)) (size!23981 lt!949783)))))

(assert (=> b!2691685 (=> (not res!1130914) (not e!1697049))))

(declare-fun b!2691686 () Bool)

(assert (=> b!2691686 (= e!1697048 (tuple2!30593 (BalanceConc!19031 Empty!9708) lt!949783))))

(declare-fun b!2691687 () Bool)

(assert (=> b!2691687 (= e!1697049 (not (isEmpty!17714 (_1!17887 lt!950094))))))

(assert (= (and d!771314 c!433932) b!2691683))

(assert (= (and d!771314 (not c!433932)) b!2691686))

(assert (= (and d!771314 c!433931) b!2691685))

(assert (= (and d!771314 (not c!433931)) b!2691682))

(assert (= (and b!2691685 res!1130914) b!2691687))

(assert (= (and d!771314 res!1130915) b!2691684))

(assert (= (and b!2691684 res!1130916) b!2691681))

(declare-fun m!3069703 () Bool)

(assert (=> b!2691681 m!3069703))

(assert (=> b!2691681 m!3069643))

(assert (=> b!2691681 m!3069643))

(declare-fun m!3069705 () Bool)

(assert (=> b!2691681 m!3069705))

(declare-fun m!3069707 () Bool)

(assert (=> b!2691685 m!3069707))

(declare-fun m!3069709 () Bool)

(assert (=> b!2691685 m!3069709))

(assert (=> b!2691682 m!3069703))

(assert (=> b!2691682 m!3069643))

(declare-fun m!3069711 () Bool)

(assert (=> b!2691684 m!3069711))

(assert (=> b!2691684 m!3069643))

(assert (=> b!2691684 m!3069643))

(assert (=> b!2691684 m!3069705))

(declare-fun m!3069713 () Bool)

(assert (=> d!771314 m!3069713))

(assert (=> d!771314 m!3069147))

(declare-fun m!3069715 () Bool)

(assert (=> b!2691687 m!3069715))

(declare-fun m!3069717 () Bool)

(assert (=> b!2691683 m!3069717))

(declare-fun m!3069719 () Bool)

(assert (=> b!2691683 m!3069719))

(assert (=> b!2691486 d!771314))

(declare-fun b!2691690 () Bool)

(declare-fun res!1130917 () Bool)

(declare-fun e!1697052 () Bool)

(assert (=> b!2691690 (=> (not res!1130917) (not e!1697052))))

(declare-fun lt!950096 () List!31145)

(assert (=> b!2691690 (= res!1130917 (= (size!23982 lt!950096) (+ (size!23982 lt!949795) (size!23982 (++!7601 lt!949797 lt!949798)))))))

(declare-fun b!2691691 () Bool)

(assert (=> b!2691691 (= e!1697052 (or (not (= (++!7601 lt!949797 lt!949798) Nil!31045)) (= lt!950096 lt!949795)))))

(declare-fun e!1697053 () List!31145)

(declare-fun b!2691689 () Bool)

(assert (=> b!2691689 (= e!1697053 (Cons!31045 (h!36465 lt!949795) (++!7601 (t!225087 lt!949795) (++!7601 lt!949797 lt!949798))))))

(declare-fun b!2691688 () Bool)

(assert (=> b!2691688 (= e!1697053 (++!7601 lt!949797 lt!949798))))

(declare-fun d!771316 () Bool)

(assert (=> d!771316 e!1697052))

(declare-fun res!1130918 () Bool)

(assert (=> d!771316 (=> (not res!1130918) (not e!1697052))))

(assert (=> d!771316 (= res!1130918 (= (content!4402 lt!950096) ((_ map or) (content!4402 lt!949795) (content!4402 (++!7601 lt!949797 lt!949798)))))))

(assert (=> d!771316 (= lt!950096 e!1697053)))

(declare-fun c!433933 () Bool)

(assert (=> d!771316 (= c!433933 ((_ is Nil!31045) lt!949795))))

(assert (=> d!771316 (= (++!7601 lt!949795 (++!7601 lt!949797 lt!949798)) lt!950096)))

(assert (= (and d!771316 c!433933) b!2691688))

(assert (= (and d!771316 (not c!433933)) b!2691689))

(assert (= (and d!771316 res!1130918) b!2691690))

(assert (= (and b!2691690 res!1130917) b!2691691))

(declare-fun m!3069721 () Bool)

(assert (=> b!2691690 m!3069721))

(assert (=> b!2691690 m!3069563))

(assert (=> b!2691690 m!3069145))

(declare-fun m!3069723 () Bool)

(assert (=> b!2691690 m!3069723))

(assert (=> b!2691689 m!3069145))

(declare-fun m!3069725 () Bool)

(assert (=> b!2691689 m!3069725))

(declare-fun m!3069727 () Bool)

(assert (=> d!771316 m!3069727))

(assert (=> d!771316 m!3069571))

(assert (=> d!771316 m!3069145))

(declare-fun m!3069729 () Bool)

(assert (=> d!771316 m!3069729))

(assert (=> b!2691486 d!771316))

(declare-fun d!771318 () Bool)

(assert (=> d!771318 (= (list!11715 (_1!17887 lt!949806)) (list!11717 (c!433874 (_1!17887 lt!949806))))))

(declare-fun bs!483331 () Bool)

(assert (= bs!483331 d!771318))

(declare-fun m!3069731 () Bool)

(assert (=> bs!483331 m!3069731))

(assert (=> b!2691486 d!771318))

(declare-fun d!771320 () Bool)

(declare-fun e!1697054 () Bool)

(assert (=> d!771320 e!1697054))

(declare-fun res!1130920 () Bool)

(assert (=> d!771320 (=> (not res!1130920) (not e!1697054))))

(declare-fun lt!950097 () List!31147)

(assert (=> d!771320 (= res!1130920 (= (content!4403 lt!950097) ((_ map or) (content!4403 (++!7604 lt!949789 lt!949793)) (content!4403 lt!949807))))))

(declare-fun e!1697055 () List!31147)

(assert (=> d!771320 (= lt!950097 e!1697055)))

(declare-fun c!433934 () Bool)

(assert (=> d!771320 (= c!433934 ((_ is Nil!31047) (++!7604 lt!949789 lt!949793)))))

(assert (=> d!771320 (= (++!7604 (++!7604 lt!949789 lt!949793) lt!949807) lt!950097)))

(declare-fun b!2691692 () Bool)

(assert (=> b!2691692 (= e!1697055 lt!949807)))

(declare-fun b!2691695 () Bool)

(assert (=> b!2691695 (= e!1697054 (or (not (= lt!949807 Nil!31047)) (= lt!950097 (++!7604 lt!949789 lt!949793))))))

(declare-fun b!2691694 () Bool)

(declare-fun res!1130919 () Bool)

(assert (=> b!2691694 (=> (not res!1130919) (not e!1697054))))

(assert (=> b!2691694 (= res!1130919 (= (size!23983 lt!950097) (+ (size!23983 (++!7604 lt!949789 lt!949793)) (size!23983 lt!949807))))))

(declare-fun b!2691693 () Bool)

(assert (=> b!2691693 (= e!1697055 (Cons!31047 (h!36467 (++!7604 lt!949789 lt!949793)) (++!7604 (t!225089 (++!7604 lt!949789 lt!949793)) lt!949807)))))

(assert (= (and d!771320 c!433934) b!2691692))

(assert (= (and d!771320 (not c!433934)) b!2691693))

(assert (= (and d!771320 res!1130920) b!2691694))

(assert (= (and b!2691694 res!1130919) b!2691695))

(declare-fun m!3069733 () Bool)

(assert (=> d!771320 m!3069733))

(assert (=> d!771320 m!3069151))

(declare-fun m!3069735 () Bool)

(assert (=> d!771320 m!3069735))

(assert (=> d!771320 m!3069601))

(declare-fun m!3069737 () Bool)

(assert (=> b!2691694 m!3069737))

(assert (=> b!2691694 m!3069151))

(declare-fun m!3069739 () Bool)

(assert (=> b!2691694 m!3069739))

(assert (=> b!2691694 m!3069607))

(declare-fun m!3069741 () Bool)

(assert (=> b!2691693 m!3069741))

(assert (=> b!2691486 d!771320))

(declare-fun b!2691698 () Bool)

(declare-fun res!1130921 () Bool)

(declare-fun e!1697056 () Bool)

(assert (=> b!2691698 (=> (not res!1130921) (not e!1697056))))

(declare-fun lt!950098 () List!31145)

(assert (=> b!2691698 (= res!1130921 (= (size!23982 lt!950098) (+ (size!23982 lt!949797) (size!23982 lt!949798))))))

(declare-fun b!2691699 () Bool)

(assert (=> b!2691699 (= e!1697056 (or (not (= lt!949798 Nil!31045)) (= lt!950098 lt!949797)))))

(declare-fun b!2691697 () Bool)

(declare-fun e!1697057 () List!31145)

(assert (=> b!2691697 (= e!1697057 (Cons!31045 (h!36465 lt!949797) (++!7601 (t!225087 lt!949797) lt!949798)))))

(declare-fun b!2691696 () Bool)

(assert (=> b!2691696 (= e!1697057 lt!949798)))

(declare-fun d!771322 () Bool)

(assert (=> d!771322 e!1697056))

(declare-fun res!1130922 () Bool)

(assert (=> d!771322 (=> (not res!1130922) (not e!1697056))))

(assert (=> d!771322 (= res!1130922 (= (content!4402 lt!950098) ((_ map or) (content!4402 lt!949797) (content!4402 lt!949798))))))

(assert (=> d!771322 (= lt!950098 e!1697057)))

(declare-fun c!433935 () Bool)

(assert (=> d!771322 (= c!433935 ((_ is Nil!31045) lt!949797))))

(assert (=> d!771322 (= (++!7601 lt!949797 lt!949798) lt!950098)))

(assert (= (and d!771322 c!433935) b!2691696))

(assert (= (and d!771322 (not c!433935)) b!2691697))

(assert (= (and d!771322 res!1130922) b!2691698))

(assert (= (and b!2691698 res!1130921) b!2691699))

(declare-fun m!3069743 () Bool)

(assert (=> b!2691698 m!3069743))

(declare-fun m!3069745 () Bool)

(assert (=> b!2691698 m!3069745))

(assert (=> b!2691698 m!3069615))

(declare-fun m!3069747 () Bool)

(assert (=> b!2691697 m!3069747))

(declare-fun m!3069749 () Bool)

(assert (=> d!771322 m!3069749))

(declare-fun m!3069751 () Bool)

(assert (=> d!771322 m!3069751))

(assert (=> d!771322 m!3069623))

(assert (=> b!2691486 d!771322))

(declare-fun d!771324 () Bool)

(assert (=> d!771324 (= (list!11715 lt!949781) (list!11717 (c!433874 lt!949781)))))

(declare-fun bs!483332 () Bool)

(assert (= bs!483332 d!771324))

(declare-fun m!3069753 () Bool)

(assert (=> bs!483332 m!3069753))

(assert (=> b!2691486 d!771324))

(declare-fun e!1697061 () Bool)

(declare-fun b!2691700 () Bool)

(declare-fun lt!950100 () tuple2!30592)

(assert (=> b!2691700 (= e!1697061 (= (list!11714 (_2!17887 lt!950100)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 (_2!17885 (v!32838 lt!949802)))))))))

(declare-fun d!771326 () Bool)

(assert (=> d!771326 e!1697061))

(declare-fun res!1130924 () Bool)

(assert (=> d!771326 (=> (not res!1130924) (not e!1697061))))

(declare-fun e!1697060 () Bool)

(assert (=> d!771326 (= res!1130924 e!1697060)))

(declare-fun c!433936 () Bool)

(assert (=> d!771326 (= c!433936 (> (size!23980 (_1!17887 lt!950100)) 0))))

(declare-fun e!1697058 () tuple2!30592)

(assert (=> d!771326 (= lt!950100 e!1697058)))

(declare-fun c!433937 () Bool)

(declare-fun lt!950099 () Option!6131)

(assert (=> d!771326 (= c!433937 ((_ is Some!6130) lt!950099))))

(assert (=> d!771326 (= lt!950099 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949802))))))

(assert (=> d!771326 (= (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949802))) lt!950100)))

(declare-fun b!2691701 () Bool)

(assert (=> b!2691701 (= e!1697060 (= (list!11714 (_2!17887 lt!950100)) (list!11714 (_2!17885 (v!32838 lt!949802)))))))

(declare-fun b!2691702 () Bool)

(declare-fun lt!950101 () tuple2!30592)

(assert (=> b!2691702 (= e!1697058 (tuple2!30593 (prepend!1071 (_1!17887 lt!950101) (_1!17885 (v!32838 lt!950099))) (_2!17887 lt!950101)))))

(assert (=> b!2691702 (= lt!950101 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950099))))))

(declare-fun b!2691703 () Bool)

(declare-fun res!1130925 () Bool)

(assert (=> b!2691703 (=> (not res!1130925) (not e!1697061))))

(assert (=> b!2691703 (= res!1130925 (= (list!11715 (_1!17887 lt!950100)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 (_2!17885 (v!32838 lt!949802)))))))))

(declare-fun b!2691704 () Bool)

(declare-fun e!1697059 () Bool)

(assert (=> b!2691704 (= e!1697060 e!1697059)))

(declare-fun res!1130923 () Bool)

(assert (=> b!2691704 (= res!1130923 (< (size!23981 (_2!17887 lt!950100)) (size!23981 (_2!17885 (v!32838 lt!949802)))))))

(assert (=> b!2691704 (=> (not res!1130923) (not e!1697059))))

(declare-fun b!2691705 () Bool)

(assert (=> b!2691705 (= e!1697058 (tuple2!30593 (BalanceConc!19031 Empty!9708) (_2!17885 (v!32838 lt!949802))))))

(declare-fun b!2691706 () Bool)

(assert (=> b!2691706 (= e!1697059 (not (isEmpty!17714 (_1!17887 lt!950100))))))

(assert (= (and d!771326 c!433937) b!2691702))

(assert (= (and d!771326 (not c!433937)) b!2691705))

(assert (= (and d!771326 c!433936) b!2691704))

(assert (= (and d!771326 (not c!433936)) b!2691701))

(assert (= (and b!2691704 res!1130923) b!2691706))

(assert (= (and d!771326 res!1130924) b!2691703))

(assert (= (and b!2691703 res!1130925) b!2691700))

(declare-fun m!3069755 () Bool)

(assert (=> b!2691700 m!3069755))

(assert (=> b!2691700 m!3069161))

(assert (=> b!2691700 m!3069161))

(declare-fun m!3069757 () Bool)

(assert (=> b!2691700 m!3069757))

(declare-fun m!3069759 () Bool)

(assert (=> b!2691704 m!3069759))

(declare-fun m!3069761 () Bool)

(assert (=> b!2691704 m!3069761))

(assert (=> b!2691701 m!3069755))

(assert (=> b!2691701 m!3069161))

(declare-fun m!3069763 () Bool)

(assert (=> b!2691703 m!3069763))

(assert (=> b!2691703 m!3069161))

(assert (=> b!2691703 m!3069161))

(assert (=> b!2691703 m!3069757))

(declare-fun m!3069765 () Bool)

(assert (=> d!771326 m!3069765))

(assert (=> d!771326 m!3069655))

(declare-fun m!3069767 () Bool)

(assert (=> b!2691706 m!3069767))

(declare-fun m!3069769 () Bool)

(assert (=> b!2691702 m!3069769))

(declare-fun m!3069771 () Bool)

(assert (=> b!2691702 m!3069771))

(assert (=> b!2691486 d!771326))

(declare-fun d!771328 () Bool)

(assert (=> d!771328 (= (list!11714 (_2!17887 lt!949806)) (list!11716 (c!433873 (_2!17887 lt!949806))))))

(declare-fun bs!483333 () Bool)

(assert (= bs!483333 d!771328))

(declare-fun m!3069773 () Bool)

(assert (=> bs!483333 m!3069773))

(assert (=> b!2691486 d!771328))

(declare-fun d!771330 () Bool)

(assert (=> d!771330 (= (list!11714 lt!949785) (list!11716 (c!433873 lt!949785)))))

(declare-fun bs!483334 () Bool)

(assert (= bs!483334 d!771330))

(declare-fun m!3069775 () Bool)

(assert (=> bs!483334 m!3069775))

(assert (=> b!2691486 d!771330))

(declare-fun d!771332 () Bool)

(declare-fun lt!950104 () BalanceConc!19028)

(assert (=> d!771332 (= (list!11714 lt!950104) (originalCharacters!5503 (_1!17885 (v!32838 lt!949802))))))

(declare-fun dynLambda!13442 (Int TokenValue!4961) BalanceConc!19028)

(assert (=> d!771332 (= lt!950104 (dynLambda!13442 (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 lt!949802))))) (value!152676 (_1!17885 (v!32838 lt!949802)))))))

(assert (=> d!771332 (= (charsOf!2986 (_1!17885 (v!32838 lt!949802))) lt!950104)))

(declare-fun b_lambda!82135 () Bool)

(assert (=> (not b_lambda!82135) (not d!771332)))

(declare-fun t!225091 () Bool)

(declare-fun tb!151017 () Bool)

(assert (=> (and b!2691476 (= (toChars!6554 (transformation!4739 (h!36466 rules!1381))) (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 lt!949802)))))) t!225091) tb!151017))

(declare-fun b!2691711 () Bool)

(declare-fun e!1697064 () Bool)

(declare-fun tp!851344 () Bool)

(assert (=> b!2691711 (= e!1697064 (and (inv!42079 (c!433873 (dynLambda!13442 (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 lt!949802))))) (value!152676 (_1!17885 (v!32838 lt!949802)))))) tp!851344))))

(declare-fun result!186492 () Bool)

(assert (=> tb!151017 (= result!186492 (and (inv!42082 (dynLambda!13442 (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 lt!949802))))) (value!152676 (_1!17885 (v!32838 lt!949802))))) e!1697064))))

(assert (= tb!151017 b!2691711))

(declare-fun m!3069777 () Bool)

(assert (=> b!2691711 m!3069777))

(declare-fun m!3069779 () Bool)

(assert (=> tb!151017 m!3069779))

(assert (=> d!771332 t!225091))

(declare-fun b_and!199131 () Bool)

(assert (= b_and!199127 (and (=> t!225091 result!186492) b_and!199131)))

(declare-fun m!3069781 () Bool)

(assert (=> d!771332 m!3069781))

(declare-fun m!3069783 () Bool)

(assert (=> d!771332 m!3069783))

(assert (=> b!2691486 d!771332))

(declare-fun d!771334 () Bool)

(assert (=> d!771334 (= (++!7601 (++!7601 lt!949795 lt!949797) lt!949798) (++!7601 lt!949795 (++!7601 lt!949797 lt!949798)))))

(declare-fun lt!950107 () Unit!45169)

(declare-fun choose!15908 (List!31145 List!31145 List!31145) Unit!45169)

(assert (=> d!771334 (= lt!950107 (choose!15908 lt!949795 lt!949797 lt!949798))))

(assert (=> d!771334 (= (lemmaConcatAssociativity!1545 lt!949795 lt!949797 lt!949798) lt!950107)))

(declare-fun bs!483335 () Bool)

(assert (= bs!483335 d!771334))

(assert (=> bs!483335 m!3069145))

(assert (=> bs!483335 m!3069153))

(assert (=> bs!483335 m!3069159))

(assert (=> bs!483335 m!3069145))

(declare-fun m!3069785 () Bool)

(assert (=> bs!483335 m!3069785))

(assert (=> bs!483335 m!3069159))

(declare-fun m!3069787 () Bool)

(assert (=> bs!483335 m!3069787))

(assert (=> b!2691486 d!771334))

(declare-fun bm!173376 () Bool)

(declare-fun call!173381 () Option!6131)

(assert (=> bm!173376 (= call!173381 (maxPrefixOneRuleZipperSequence!463 thiss!12257 (h!36466 rules!1381) lt!949783))))

(declare-fun b!2691712 () Bool)

(declare-fun e!1697068 () Option!6131)

(assert (=> b!2691712 (= e!1697068 call!173381)))

(declare-fun b!2691713 () Bool)

(declare-fun e!1697069 () Bool)

(declare-fun e!1697066 () Bool)

(assert (=> b!2691713 (= e!1697069 e!1697066)))

(declare-fun res!1130929 () Bool)

(assert (=> b!2691713 (=> (not res!1130929) (not e!1697066))))

(declare-fun lt!950114 () Option!6131)

(assert (=> b!2691713 (= res!1130929 (= (_1!17885 (get!9718 lt!950114)) (_1!17889 (get!9719 (maxPrefixZipper!454 thiss!12257 rules!1381 (list!11714 lt!949783))))))))

(declare-fun b!2691714 () Bool)

(declare-fun res!1130926 () Bool)

(declare-fun e!1697070 () Bool)

(assert (=> b!2691714 (=> (not res!1130926) (not e!1697070))))

(assert (=> b!2691714 (= res!1130926 e!1697069)))

(declare-fun res!1130931 () Bool)

(assert (=> b!2691714 (=> res!1130931 e!1697069)))

(assert (=> b!2691714 (= res!1130931 (not (isDefined!4861 lt!950114)))))

(declare-fun e!1697067 () Bool)

(declare-fun b!2691715 () Bool)

(assert (=> b!2691715 (= e!1697067 (= (list!11714 (_2!17885 (get!9718 lt!950114))) (_2!17889 (get!9719 (maxPrefix!2350 thiss!12257 rules!1381 (list!11714 lt!949783))))))))

(declare-fun b!2691716 () Bool)

(declare-fun e!1697065 () Bool)

(assert (=> b!2691716 (= e!1697070 e!1697065)))

(declare-fun res!1130928 () Bool)

(assert (=> b!2691716 (=> res!1130928 e!1697065)))

(assert (=> b!2691716 (= res!1130928 (not (isDefined!4861 lt!950114)))))

(declare-fun d!771336 () Bool)

(assert (=> d!771336 e!1697070))

(declare-fun res!1130930 () Bool)

(assert (=> d!771336 (=> (not res!1130930) (not e!1697070))))

(assert (=> d!771336 (= res!1130930 (= (isDefined!4861 lt!950114) (isDefined!4862 (maxPrefixZipper!454 thiss!12257 rules!1381 (list!11714 lt!949783)))))))

(assert (=> d!771336 (= lt!950114 e!1697068)))

(declare-fun c!433938 () Bool)

(assert (=> d!771336 (= c!433938 (and ((_ is Cons!31046) rules!1381) ((_ is Nil!31046) (t!225088 rules!1381))))))

(declare-fun lt!950108 () Unit!45169)

(declare-fun lt!950110 () Unit!45169)

(assert (=> d!771336 (= lt!950108 lt!950110)))

(declare-fun lt!950113 () List!31145)

(declare-fun lt!950112 () List!31145)

(assert (=> d!771336 (isPrefix!2467 lt!950113 lt!950112)))

(assert (=> d!771336 (= lt!950110 (lemmaIsPrefixRefl!1593 lt!950113 lt!950112))))

(assert (=> d!771336 (= lt!950112 (list!11714 lt!949783))))

(assert (=> d!771336 (= lt!950113 (list!11714 lt!949783))))

(assert (=> d!771336 (rulesValidInductive!1649 thiss!12257 rules!1381)))

(assert (=> d!771336 (= (maxPrefixZipperSequence!999 thiss!12257 rules!1381 lt!949783) lt!950114)))

(declare-fun b!2691717 () Bool)

(assert (=> b!2691717 (= e!1697066 (= (list!11714 (_2!17885 (get!9718 lt!950114))) (_2!17889 (get!9719 (maxPrefixZipper!454 thiss!12257 rules!1381 (list!11714 lt!949783))))))))

(declare-fun b!2691718 () Bool)

(declare-fun lt!950111 () Option!6131)

(declare-fun lt!950109 () Option!6131)

(assert (=> b!2691718 (= e!1697068 (ite (and ((_ is None!6130) lt!950111) ((_ is None!6130) lt!950109)) None!6130 (ite ((_ is None!6130) lt!950109) lt!950111 (ite ((_ is None!6130) lt!950111) lt!950109 (ite (>= (size!23979 (_1!17885 (v!32838 lt!950111))) (size!23979 (_1!17885 (v!32838 lt!950109)))) lt!950111 lt!950109)))))))

(assert (=> b!2691718 (= lt!950111 call!173381)))

(assert (=> b!2691718 (= lt!950109 (maxPrefixZipperSequence!999 thiss!12257 (t!225088 rules!1381) lt!949783))))

(declare-fun b!2691719 () Bool)

(assert (=> b!2691719 (= e!1697065 e!1697067)))

(declare-fun res!1130927 () Bool)

(assert (=> b!2691719 (=> (not res!1130927) (not e!1697067))))

(assert (=> b!2691719 (= res!1130927 (= (_1!17885 (get!9718 lt!950114)) (_1!17889 (get!9719 (maxPrefix!2350 thiss!12257 rules!1381 (list!11714 lt!949783))))))))

(assert (= (and d!771336 c!433938) b!2691712))

(assert (= (and d!771336 (not c!433938)) b!2691718))

(assert (= (or b!2691712 b!2691718) bm!173376))

(assert (= (and d!771336 res!1130930) b!2691714))

(assert (= (and b!2691714 (not res!1130931)) b!2691713))

(assert (= (and b!2691713 res!1130929) b!2691717))

(assert (= (and b!2691714 res!1130926) b!2691716))

(assert (= (and b!2691716 (not res!1130928)) b!2691719))

(assert (= (and b!2691719 res!1130927) b!2691715))

(declare-fun m!3069789 () Bool)

(assert (=> b!2691715 m!3069789))

(assert (=> b!2691715 m!3069643))

(declare-fun m!3069791 () Bool)

(assert (=> b!2691715 m!3069791))

(declare-fun m!3069793 () Bool)

(assert (=> b!2691715 m!3069793))

(assert (=> b!2691715 m!3069643))

(assert (=> b!2691715 m!3069791))

(declare-fun m!3069795 () Bool)

(assert (=> b!2691715 m!3069795))

(assert (=> b!2691713 m!3069789))

(assert (=> b!2691713 m!3069643))

(assert (=> b!2691713 m!3069643))

(declare-fun m!3069797 () Bool)

(assert (=> b!2691713 m!3069797))

(assert (=> b!2691713 m!3069797))

(declare-fun m!3069799 () Bool)

(assert (=> b!2691713 m!3069799))

(declare-fun m!3069801 () Bool)

(assert (=> b!2691716 m!3069801))

(assert (=> d!771336 m!3069643))

(assert (=> d!771336 m!3069797))

(assert (=> d!771336 m!3069319))

(assert (=> d!771336 m!3069801))

(declare-fun m!3069803 () Bool)

(assert (=> d!771336 m!3069803))

(assert (=> d!771336 m!3069797))

(declare-fun m!3069805 () Bool)

(assert (=> d!771336 m!3069805))

(declare-fun m!3069807 () Bool)

(assert (=> d!771336 m!3069807))

(assert (=> d!771336 m!3069643))

(assert (=> b!2691714 m!3069801))

(declare-fun m!3069809 () Bool)

(assert (=> b!2691718 m!3069809))

(assert (=> b!2691717 m!3069643))

(assert (=> b!2691717 m!3069797))

(assert (=> b!2691717 m!3069797))

(assert (=> b!2691717 m!3069799))

(assert (=> b!2691717 m!3069789))

(assert (=> b!2691717 m!3069793))

(assert (=> b!2691717 m!3069643))

(declare-fun m!3069811 () Bool)

(assert (=> bm!173376 m!3069811))

(assert (=> b!2691719 m!3069789))

(assert (=> b!2691719 m!3069643))

(assert (=> b!2691719 m!3069643))

(assert (=> b!2691719 m!3069791))

(assert (=> b!2691719 m!3069791))

(assert (=> b!2691719 m!3069795))

(assert (=> b!2691486 d!771336))

(declare-fun d!771338 () Bool)

(assert (=> d!771338 (= (++!7604 (++!7604 lt!949789 lt!949793) lt!949807) (++!7604 lt!949789 (++!7604 lt!949793 lt!949807)))))

(declare-fun lt!950117 () Unit!45169)

(declare-fun choose!15909 (List!31147 List!31147 List!31147) Unit!45169)

(assert (=> d!771338 (= lt!950117 (choose!15909 lt!949789 lt!949793 lt!949807))))

(assert (=> d!771338 (= (lemmaConcatAssociativity!1546 lt!949789 lt!949793 lt!949807) lt!950117)))

(declare-fun bs!483336 () Bool)

(assert (= bs!483336 d!771338))

(assert (=> bs!483336 m!3069151))

(assert (=> bs!483336 m!3069129))

(assert (=> bs!483336 m!3069151))

(assert (=> bs!483336 m!3069157))

(declare-fun m!3069813 () Bool)

(assert (=> bs!483336 m!3069813))

(assert (=> bs!483336 m!3069129))

(assert (=> bs!483336 m!3069139))

(assert (=> b!2691486 d!771338))

(declare-fun d!771340 () Bool)

(declare-fun e!1697073 () Bool)

(assert (=> d!771340 e!1697073))

(declare-fun res!1130943 () Bool)

(assert (=> d!771340 (=> (not res!1130943) (not e!1697073))))

(declare-fun appendAssocInst!661 (Conc!9707 Conc!9707) Bool)

(assert (=> d!771340 (= res!1130943 (appendAssocInst!661 (c!433873 treated!26) (c!433873 lt!949785)))))

(declare-fun lt!950120 () BalanceConc!19028)

(declare-fun ++!7605 (Conc!9707 Conc!9707) Conc!9707)

(assert (=> d!771340 (= lt!950120 (BalanceConc!19029 (++!7605 (c!433873 treated!26) (c!433873 lt!949785))))))

(assert (=> d!771340 (= (++!7603 treated!26 lt!949785) lt!950120)))

(declare-fun b!2691730 () Bool)

(declare-fun res!1130942 () Bool)

(assert (=> b!2691730 (=> (not res!1130942) (not e!1697073))))

(declare-fun height!1421 (Conc!9707) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2691730 (= res!1130942 (>= (height!1421 (++!7605 (c!433873 treated!26) (c!433873 lt!949785))) (max!0 (height!1421 (c!433873 treated!26)) (height!1421 (c!433873 lt!949785)))))))

(declare-fun b!2691728 () Bool)

(declare-fun res!1130941 () Bool)

(assert (=> b!2691728 (=> (not res!1130941) (not e!1697073))))

(declare-fun isBalanced!2940 (Conc!9707) Bool)

(assert (=> b!2691728 (= res!1130941 (isBalanced!2940 (++!7605 (c!433873 treated!26) (c!433873 lt!949785))))))

(declare-fun b!2691731 () Bool)

(assert (=> b!2691731 (= e!1697073 (= (list!11714 lt!950120) (++!7601 (list!11714 treated!26) (list!11714 lt!949785))))))

(declare-fun b!2691729 () Bool)

(declare-fun res!1130940 () Bool)

(assert (=> b!2691729 (=> (not res!1130940) (not e!1697073))))

(assert (=> b!2691729 (= res!1130940 (<= (height!1421 (++!7605 (c!433873 treated!26) (c!433873 lt!949785))) (+ (max!0 (height!1421 (c!433873 treated!26)) (height!1421 (c!433873 lt!949785))) 1)))))

(assert (= (and d!771340 res!1130943) b!2691728))

(assert (= (and b!2691728 res!1130941) b!2691729))

(assert (= (and b!2691729 res!1130940) b!2691730))

(assert (= (and b!2691730 res!1130942) b!2691731))

(declare-fun m!3069815 () Bool)

(assert (=> b!2691731 m!3069815))

(assert (=> b!2691731 m!3069261))

(assert (=> b!2691731 m!3069143))

(assert (=> b!2691731 m!3069261))

(assert (=> b!2691731 m!3069143))

(declare-fun m!3069817 () Bool)

(assert (=> b!2691731 m!3069817))

(declare-fun m!3069819 () Bool)

(assert (=> b!2691728 m!3069819))

(assert (=> b!2691728 m!3069819))

(declare-fun m!3069821 () Bool)

(assert (=> b!2691728 m!3069821))

(declare-fun m!3069823 () Bool)

(assert (=> d!771340 m!3069823))

(assert (=> d!771340 m!3069819))

(assert (=> b!2691730 m!3069819))

(declare-fun m!3069825 () Bool)

(assert (=> b!2691730 m!3069825))

(declare-fun m!3069827 () Bool)

(assert (=> b!2691730 m!3069827))

(assert (=> b!2691730 m!3069825))

(declare-fun m!3069829 () Bool)

(assert (=> b!2691730 m!3069829))

(assert (=> b!2691730 m!3069819))

(declare-fun m!3069831 () Bool)

(assert (=> b!2691730 m!3069831))

(assert (=> b!2691730 m!3069827))

(assert (=> b!2691729 m!3069819))

(assert (=> b!2691729 m!3069825))

(assert (=> b!2691729 m!3069827))

(assert (=> b!2691729 m!3069825))

(assert (=> b!2691729 m!3069829))

(assert (=> b!2691729 m!3069819))

(assert (=> b!2691729 m!3069831))

(assert (=> b!2691729 m!3069827))

(assert (=> b!2691486 d!771340))

(declare-fun b!2691734 () Bool)

(declare-fun res!1130944 () Bool)

(declare-fun e!1697074 () Bool)

(assert (=> b!2691734 (=> (not res!1130944) (not e!1697074))))

(declare-fun lt!950121 () List!31145)

(assert (=> b!2691734 (= res!1130944 (= (size!23982 lt!950121) (+ (size!23982 lt!949795) (size!23982 lt!949797))))))

(declare-fun b!2691735 () Bool)

(assert (=> b!2691735 (= e!1697074 (or (not (= lt!949797 Nil!31045)) (= lt!950121 lt!949795)))))

(declare-fun b!2691733 () Bool)

(declare-fun e!1697075 () List!31145)

(assert (=> b!2691733 (= e!1697075 (Cons!31045 (h!36465 lt!949795) (++!7601 (t!225087 lt!949795) lt!949797)))))

(declare-fun b!2691732 () Bool)

(assert (=> b!2691732 (= e!1697075 lt!949797)))

(declare-fun d!771342 () Bool)

(assert (=> d!771342 e!1697074))

(declare-fun res!1130945 () Bool)

(assert (=> d!771342 (=> (not res!1130945) (not e!1697074))))

(assert (=> d!771342 (= res!1130945 (= (content!4402 lt!950121) ((_ map or) (content!4402 lt!949795) (content!4402 lt!949797))))))

(assert (=> d!771342 (= lt!950121 e!1697075)))

(declare-fun c!433942 () Bool)

(assert (=> d!771342 (= c!433942 ((_ is Nil!31045) lt!949795))))

(assert (=> d!771342 (= (++!7601 lt!949795 lt!949797) lt!950121)))

(assert (= (and d!771342 c!433942) b!2691732))

(assert (= (and d!771342 (not c!433942)) b!2691733))

(assert (= (and d!771342 res!1130945) b!2691734))

(assert (= (and b!2691734 res!1130944) b!2691735))

(declare-fun m!3069833 () Bool)

(assert (=> b!2691734 m!3069833))

(assert (=> b!2691734 m!3069563))

(assert (=> b!2691734 m!3069745))

(declare-fun m!3069835 () Bool)

(assert (=> b!2691733 m!3069835))

(declare-fun m!3069837 () Bool)

(assert (=> d!771342 m!3069837))

(assert (=> d!771342 m!3069571))

(assert (=> d!771342 m!3069751))

(assert (=> b!2691486 d!771342))

(declare-fun d!771344 () Bool)

(declare-fun e!1697078 () Bool)

(assert (=> d!771344 e!1697078))

(declare-fun res!1130948 () Bool)

(assert (=> d!771344 (=> (not res!1130948) (not e!1697078))))

(declare-fun append!767 (Conc!9708 Token!8944) Conc!9708)

(assert (=> d!771344 (= res!1130948 (isBalanced!2939 (append!767 (c!433874 acc!348) (_1!17885 (v!32838 lt!949802)))))))

(declare-fun lt!950124 () BalanceConc!19030)

(assert (=> d!771344 (= lt!950124 (BalanceConc!19031 (append!767 (c!433874 acc!348) (_1!17885 (v!32838 lt!949802)))))))

(assert (=> d!771344 (= (append!766 acc!348 (_1!17885 (v!32838 lt!949802))) lt!950124)))

(declare-fun b!2691738 () Bool)

(declare-fun $colon+!167 (List!31147 Token!8944) List!31147)

(assert (=> b!2691738 (= e!1697078 (= (list!11715 lt!950124) ($colon+!167 (list!11715 acc!348) (_1!17885 (v!32838 lt!949802)))))))

(assert (= (and d!771344 res!1130948) b!2691738))

(declare-fun m!3069839 () Bool)

(assert (=> d!771344 m!3069839))

(assert (=> d!771344 m!3069839))

(declare-fun m!3069841 () Bool)

(assert (=> d!771344 m!3069841))

(declare-fun m!3069843 () Bool)

(assert (=> b!2691738 m!3069843))

(assert (=> b!2691738 m!3069171))

(assert (=> b!2691738 m!3069171))

(declare-fun m!3069845 () Bool)

(assert (=> b!2691738 m!3069845))

(assert (=> b!2691486 d!771344))

(declare-fun d!771346 () Bool)

(declare-fun e!1697079 () Bool)

(assert (=> d!771346 e!1697079))

(declare-fun res!1130950 () Bool)

(assert (=> d!771346 (=> (not res!1130950) (not e!1697079))))

(declare-fun lt!950125 () List!31147)

(assert (=> d!771346 (= res!1130950 (= (content!4403 lt!950125) ((_ map or) (content!4403 lt!949789) (content!4403 lt!949793))))))

(declare-fun e!1697080 () List!31147)

(assert (=> d!771346 (= lt!950125 e!1697080)))

(declare-fun c!433944 () Bool)

(assert (=> d!771346 (= c!433944 ((_ is Nil!31047) lt!949789))))

(assert (=> d!771346 (= (++!7604 lt!949789 lt!949793) lt!950125)))

(declare-fun b!2691739 () Bool)

(assert (=> b!2691739 (= e!1697080 lt!949793)))

(declare-fun b!2691742 () Bool)

(assert (=> b!2691742 (= e!1697079 (or (not (= lt!949793 Nil!31047)) (= lt!950125 lt!949789)))))

(declare-fun b!2691741 () Bool)

(declare-fun res!1130949 () Bool)

(assert (=> b!2691741 (=> (not res!1130949) (not e!1697079))))

(assert (=> b!2691741 (= res!1130949 (= (size!23983 lt!950125) (+ (size!23983 lt!949789) (size!23983 lt!949793))))))

(declare-fun b!2691740 () Bool)

(assert (=> b!2691740 (= e!1697080 (Cons!31047 (h!36467 lt!949789) (++!7604 (t!225089 lt!949789) lt!949793)))))

(assert (= (and d!771346 c!433944) b!2691739))

(assert (= (and d!771346 (not c!433944)) b!2691740))

(assert (= (and d!771346 res!1130950) b!2691741))

(assert (= (and b!2691741 res!1130949) b!2691742))

(declare-fun m!3069847 () Bool)

(assert (=> d!771346 m!3069847))

(assert (=> d!771346 m!3069585))

(assert (=> d!771346 m!3069599))

(declare-fun m!3069849 () Bool)

(assert (=> b!2691741 m!3069849))

(assert (=> b!2691741 m!3069591))

(assert (=> b!2691741 m!3069605))

(declare-fun m!3069851 () Bool)

(assert (=> b!2691740 m!3069851))

(assert (=> b!2691486 d!771346))

(declare-fun d!771348 () Bool)

(assert (=> d!771348 (= (lexList!1190 thiss!12257 rules!1381 lt!949784) (tuple2!30595 lt!949803 Nil!31045))))

(declare-fun lt!950128 () Unit!45169)

(declare-fun choose!15910 (LexerInterface!4335 List!31146 List!31145 List!31145 List!31147 List!31147 List!31145) Unit!45169)

(assert (=> d!771348 (= lt!950128 (choose!15910 thiss!12257 rules!1381 lt!949784 lt!949798 lt!949803 lt!949807 (list!11714 (_2!17887 lt!949806))))))

(assert (=> d!771348 (not (isEmpty!17713 rules!1381))))

(assert (=> d!771348 (= (lemmaLexThenLexPrefix!403 thiss!12257 rules!1381 lt!949784 lt!949798 lt!949803 lt!949807 (list!11714 (_2!17887 lt!949806))) lt!950128)))

(declare-fun bs!483337 () Bool)

(assert (= bs!483337 d!771348))

(assert (=> bs!483337 m!3069133))

(assert (=> bs!483337 m!3069125))

(declare-fun m!3069853 () Bool)

(assert (=> bs!483337 m!3069853))

(assert (=> bs!483337 m!3069277))

(assert (=> b!2691486 d!771348))

(declare-fun d!771350 () Bool)

(assert (=> d!771350 (= (valid!2720 (_2!17886 lt!949792)) (validCacheMapUp!323 (cache!3559 (_2!17886 lt!949792))))))

(declare-fun bs!483338 () Bool)

(assert (= bs!483338 d!771350))

(declare-fun m!3069855 () Bool)

(assert (=> bs!483338 m!3069855))

(assert (=> b!2691484 d!771350))

(declare-fun d!771352 () Bool)

(declare-fun e!1697081 () Bool)

(assert (=> d!771352 e!1697081))

(declare-fun res!1130951 () Bool)

(assert (=> d!771352 (=> (not res!1130951) (not e!1697081))))

(assert (=> d!771352 (= res!1130951 (isBalanced!2939 (append!767 (c!433874 acc!348) (_1!17885 (v!32838 (_1!17886 lt!949792))))))))

(declare-fun lt!950129 () BalanceConc!19030)

(assert (=> d!771352 (= lt!950129 (BalanceConc!19031 (append!767 (c!433874 acc!348) (_1!17885 (v!32838 (_1!17886 lt!949792))))))))

(assert (=> d!771352 (= (append!766 acc!348 (_1!17885 (v!32838 (_1!17886 lt!949792)))) lt!950129)))

(declare-fun b!2691743 () Bool)

(assert (=> b!2691743 (= e!1697081 (= (list!11715 lt!950129) ($colon+!167 (list!11715 acc!348) (_1!17885 (v!32838 (_1!17886 lt!949792))))))))

(assert (= (and d!771352 res!1130951) b!2691743))

(declare-fun m!3069857 () Bool)

(assert (=> d!771352 m!3069857))

(assert (=> d!771352 m!3069857))

(declare-fun m!3069859 () Bool)

(assert (=> d!771352 m!3069859))

(declare-fun m!3069861 () Bool)

(assert (=> b!2691743 m!3069861))

(assert (=> b!2691743 m!3069171))

(assert (=> b!2691743 m!3069171))

(declare-fun m!3069863 () Bool)

(assert (=> b!2691743 m!3069863))

(assert (=> b!2691484 d!771352))

(declare-fun d!771354 () Bool)

(declare-fun e!1697082 () Bool)

(assert (=> d!771354 e!1697082))

(declare-fun res!1130955 () Bool)

(assert (=> d!771354 (=> (not res!1130955) (not e!1697082))))

(assert (=> d!771354 (= res!1130955 (appendAssocInst!661 (c!433873 treated!26) (c!433873 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792)))))))))

(declare-fun lt!950130 () BalanceConc!19028)

(assert (=> d!771354 (= lt!950130 (BalanceConc!19029 (++!7605 (c!433873 treated!26) (c!433873 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))))))))

(assert (=> d!771354 (= (++!7603 treated!26 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))) lt!950130)))

(declare-fun b!2691746 () Bool)

(declare-fun res!1130954 () Bool)

(assert (=> b!2691746 (=> (not res!1130954) (not e!1697082))))

(assert (=> b!2691746 (= res!1130954 (>= (height!1421 (++!7605 (c!433873 treated!26) (c!433873 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))))) (max!0 (height!1421 (c!433873 treated!26)) (height!1421 (c!433873 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792)))))))))))

(declare-fun b!2691744 () Bool)

(declare-fun res!1130953 () Bool)

(assert (=> b!2691744 (=> (not res!1130953) (not e!1697082))))

(assert (=> b!2691744 (= res!1130953 (isBalanced!2940 (++!7605 (c!433873 treated!26) (c!433873 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))))))))

(declare-fun b!2691747 () Bool)

(assert (=> b!2691747 (= e!1697082 (= (list!11714 lt!950130) (++!7601 (list!11714 treated!26) (list!11714 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))))))))

(declare-fun b!2691745 () Bool)

(declare-fun res!1130952 () Bool)

(assert (=> b!2691745 (=> (not res!1130952) (not e!1697082))))

(assert (=> b!2691745 (= res!1130952 (<= (height!1421 (++!7605 (c!433873 treated!26) (c!433873 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))))) (+ (max!0 (height!1421 (c!433873 treated!26)) (height!1421 (c!433873 (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792))))))) 1)))))

(assert (= (and d!771354 res!1130955) b!2691744))

(assert (= (and b!2691744 res!1130953) b!2691745))

(assert (= (and b!2691745 res!1130952) b!2691746))

(assert (= (and b!2691746 res!1130954) b!2691747))

(declare-fun m!3069865 () Bool)

(assert (=> b!2691747 m!3069865))

(assert (=> b!2691747 m!3069261))

(assert (=> b!2691747 m!3069223))

(declare-fun m!3069867 () Bool)

(assert (=> b!2691747 m!3069867))

(assert (=> b!2691747 m!3069261))

(assert (=> b!2691747 m!3069867))

(declare-fun m!3069869 () Bool)

(assert (=> b!2691747 m!3069869))

(declare-fun m!3069871 () Bool)

(assert (=> b!2691744 m!3069871))

(assert (=> b!2691744 m!3069871))

(declare-fun m!3069873 () Bool)

(assert (=> b!2691744 m!3069873))

(declare-fun m!3069875 () Bool)

(assert (=> d!771354 m!3069875))

(assert (=> d!771354 m!3069871))

(assert (=> b!2691746 m!3069871))

(declare-fun m!3069877 () Bool)

(assert (=> b!2691746 m!3069877))

(assert (=> b!2691746 m!3069827))

(assert (=> b!2691746 m!3069877))

(declare-fun m!3069879 () Bool)

(assert (=> b!2691746 m!3069879))

(assert (=> b!2691746 m!3069871))

(declare-fun m!3069881 () Bool)

(assert (=> b!2691746 m!3069881))

(assert (=> b!2691746 m!3069827))

(assert (=> b!2691745 m!3069871))

(assert (=> b!2691745 m!3069877))

(assert (=> b!2691745 m!3069827))

(assert (=> b!2691745 m!3069877))

(assert (=> b!2691745 m!3069879))

(assert (=> b!2691745 m!3069871))

(assert (=> b!2691745 m!3069881))

(assert (=> b!2691745 m!3069827))

(assert (=> b!2691484 d!771354))

(declare-fun d!771356 () Bool)

(declare-fun lt!950131 () BalanceConc!19028)

(assert (=> d!771356 (= (list!11714 lt!950131) (originalCharacters!5503 (_1!17885 (v!32838 (_1!17886 lt!949792)))))))

(assert (=> d!771356 (= lt!950131 (dynLambda!13442 (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 (_1!17886 lt!949792)))))) (value!152676 (_1!17885 (v!32838 (_1!17886 lt!949792))))))))

(assert (=> d!771356 (= (charsOf!2986 (_1!17885 (v!32838 (_1!17886 lt!949792)))) lt!950131)))

(declare-fun b_lambda!82137 () Bool)

(assert (=> (not b_lambda!82137) (not d!771356)))

(declare-fun t!225093 () Bool)

(declare-fun tb!151019 () Bool)

(assert (=> (and b!2691476 (= (toChars!6554 (transformation!4739 (h!36466 rules!1381))) (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 (_1!17886 lt!949792))))))) t!225093) tb!151019))

(declare-fun b!2691748 () Bool)

(declare-fun e!1697083 () Bool)

(declare-fun tp!851345 () Bool)

(assert (=> b!2691748 (= e!1697083 (and (inv!42079 (c!433873 (dynLambda!13442 (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 (_1!17886 lt!949792)))))) (value!152676 (_1!17885 (v!32838 (_1!17886 lt!949792))))))) tp!851345))))

(declare-fun result!186496 () Bool)

(assert (=> tb!151019 (= result!186496 (and (inv!42082 (dynLambda!13442 (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 (_1!17886 lt!949792)))))) (value!152676 (_1!17885 (v!32838 (_1!17886 lt!949792)))))) e!1697083))))

(assert (= tb!151019 b!2691748))

(declare-fun m!3069883 () Bool)

(assert (=> b!2691748 m!3069883))

(declare-fun m!3069885 () Bool)

(assert (=> tb!151019 m!3069885))

(assert (=> d!771356 t!225093))

(declare-fun b_and!199133 () Bool)

(assert (= b_and!199131 (and (=> t!225093 result!186496) b_and!199133)))

(declare-fun m!3069887 () Bool)

(assert (=> d!771356 m!3069887))

(declare-fun m!3069889 () Bool)

(assert (=> d!771356 m!3069889))

(assert (=> b!2691484 d!771356))

(declare-fun d!771358 () Bool)

(declare-fun e!1697086 () Bool)

(assert (=> d!771358 e!1697086))

(declare-fun res!1130967 () Bool)

(assert (=> d!771358 (=> (not res!1130967) (not e!1697086))))

(declare-fun appendAssocInst!662 (Conc!9708 Conc!9708) Bool)

(assert (=> d!771358 (= res!1130967 (appendAssocInst!662 (c!433874 acc!348) (c!433874 (_1!17887 lt!949782))))))

(declare-fun lt!950134 () BalanceConc!19030)

(declare-fun ++!7606 (Conc!9708 Conc!9708) Conc!9708)

(assert (=> d!771358 (= lt!950134 (BalanceConc!19031 (++!7606 (c!433874 acc!348) (c!433874 (_1!17887 lt!949782)))))))

(assert (=> d!771358 (= (++!7602 acc!348 (_1!17887 lt!949782)) lt!950134)))

(declare-fun b!2691757 () Bool)

(declare-fun res!1130965 () Bool)

(assert (=> b!2691757 (=> (not res!1130965) (not e!1697086))))

(assert (=> b!2691757 (= res!1130965 (isBalanced!2939 (++!7606 (c!433874 acc!348) (c!433874 (_1!17887 lt!949782)))))))

(declare-fun b!2691760 () Bool)

(assert (=> b!2691760 (= e!1697086 (= (list!11715 lt!950134) (++!7604 (list!11715 acc!348) (list!11715 (_1!17887 lt!949782)))))))

(declare-fun b!2691759 () Bool)

(declare-fun res!1130964 () Bool)

(assert (=> b!2691759 (=> (not res!1130964) (not e!1697086))))

(declare-fun height!1422 (Conc!9708) Int)

(assert (=> b!2691759 (= res!1130964 (>= (height!1422 (++!7606 (c!433874 acc!348) (c!433874 (_1!17887 lt!949782)))) (max!0 (height!1422 (c!433874 acc!348)) (height!1422 (c!433874 (_1!17887 lt!949782))))))))

(declare-fun b!2691758 () Bool)

(declare-fun res!1130966 () Bool)

(assert (=> b!2691758 (=> (not res!1130966) (not e!1697086))))

(assert (=> b!2691758 (= res!1130966 (<= (height!1422 (++!7606 (c!433874 acc!348) (c!433874 (_1!17887 lt!949782)))) (+ (max!0 (height!1422 (c!433874 acc!348)) (height!1422 (c!433874 (_1!17887 lt!949782)))) 1)))))

(assert (= (and d!771358 res!1130967) b!2691757))

(assert (= (and b!2691757 res!1130965) b!2691758))

(assert (= (and b!2691758 res!1130966) b!2691759))

(assert (= (and b!2691759 res!1130964) b!2691760))

(declare-fun m!3069891 () Bool)

(assert (=> d!771358 m!3069891))

(declare-fun m!3069893 () Bool)

(assert (=> d!771358 m!3069893))

(assert (=> b!2691759 m!3069893))

(declare-fun m!3069895 () Bool)

(assert (=> b!2691759 m!3069895))

(declare-fun m!3069897 () Bool)

(assert (=> b!2691759 m!3069897))

(assert (=> b!2691759 m!3069893))

(declare-fun m!3069899 () Bool)

(assert (=> b!2691759 m!3069899))

(assert (=> b!2691759 m!3069897))

(declare-fun m!3069901 () Bool)

(assert (=> b!2691759 m!3069901))

(assert (=> b!2691759 m!3069899))

(assert (=> b!2691757 m!3069893))

(assert (=> b!2691757 m!3069893))

(declare-fun m!3069903 () Bool)

(assert (=> b!2691757 m!3069903))

(assert (=> b!2691758 m!3069893))

(assert (=> b!2691758 m!3069895))

(assert (=> b!2691758 m!3069897))

(assert (=> b!2691758 m!3069893))

(assert (=> b!2691758 m!3069899))

(assert (=> b!2691758 m!3069897))

(assert (=> b!2691758 m!3069901))

(assert (=> b!2691758 m!3069899))

(declare-fun m!3069905 () Bool)

(assert (=> b!2691760 m!3069905))

(assert (=> b!2691760 m!3069171))

(declare-fun m!3069907 () Bool)

(assert (=> b!2691760 m!3069907))

(assert (=> b!2691760 m!3069171))

(assert (=> b!2691760 m!3069907))

(declare-fun m!3069909 () Bool)

(assert (=> b!2691760 m!3069909))

(assert (=> b!2691466 d!771358))

(declare-fun lt!950136 () tuple2!30592)

(declare-fun b!2691761 () Bool)

(declare-fun e!1697090 () Bool)

(assert (=> b!2691761 (= e!1697090 (= (list!11714 (_2!17887 lt!950136)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 input!780)))))))

(declare-fun d!771360 () Bool)

(assert (=> d!771360 e!1697090))

(declare-fun res!1130969 () Bool)

(assert (=> d!771360 (=> (not res!1130969) (not e!1697090))))

(declare-fun e!1697089 () Bool)

(assert (=> d!771360 (= res!1130969 e!1697089)))

(declare-fun c!433948 () Bool)

(assert (=> d!771360 (= c!433948 (> (size!23980 (_1!17887 lt!950136)) 0))))

(declare-fun e!1697087 () tuple2!30592)

(assert (=> d!771360 (= lt!950136 e!1697087)))

(declare-fun c!433949 () Bool)

(declare-fun lt!950135 () Option!6131)

(assert (=> d!771360 (= c!433949 ((_ is Some!6130) lt!950135))))

(assert (=> d!771360 (= lt!950135 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 input!780))))

(assert (=> d!771360 (= (lexRec!598 thiss!12257 rules!1381 input!780) lt!950136)))

(declare-fun b!2691762 () Bool)

(assert (=> b!2691762 (= e!1697089 (= (list!11714 (_2!17887 lt!950136)) (list!11714 input!780)))))

(declare-fun b!2691763 () Bool)

(declare-fun lt!950137 () tuple2!30592)

(assert (=> b!2691763 (= e!1697087 (tuple2!30593 (prepend!1071 (_1!17887 lt!950137) (_1!17885 (v!32838 lt!950135))) (_2!17887 lt!950137)))))

(assert (=> b!2691763 (= lt!950137 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950135))))))

(declare-fun b!2691764 () Bool)

(declare-fun res!1130970 () Bool)

(assert (=> b!2691764 (=> (not res!1130970) (not e!1697090))))

(assert (=> b!2691764 (= res!1130970 (= (list!11715 (_1!17887 lt!950136)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 input!780)))))))

(declare-fun b!2691765 () Bool)

(declare-fun e!1697088 () Bool)

(assert (=> b!2691765 (= e!1697089 e!1697088)))

(declare-fun res!1130968 () Bool)

(assert (=> b!2691765 (= res!1130968 (< (size!23981 (_2!17887 lt!950136)) (size!23981 input!780)))))

(assert (=> b!2691765 (=> (not res!1130968) (not e!1697088))))

(declare-fun b!2691766 () Bool)

(assert (=> b!2691766 (= e!1697087 (tuple2!30593 (BalanceConc!19031 Empty!9708) input!780))))

(declare-fun b!2691767 () Bool)

(assert (=> b!2691767 (= e!1697088 (not (isEmpty!17714 (_1!17887 lt!950136))))))

(assert (= (and d!771360 c!433949) b!2691763))

(assert (= (and d!771360 (not c!433949)) b!2691766))

(assert (= (and d!771360 c!433948) b!2691765))

(assert (= (and d!771360 (not c!433948)) b!2691762))

(assert (= (and b!2691765 res!1130968) b!2691767))

(assert (= (and d!771360 res!1130969) b!2691764))

(assert (= (and b!2691764 res!1130970) b!2691761))

(declare-fun m!3069911 () Bool)

(assert (=> b!2691761 m!3069911))

(assert (=> b!2691761 m!3069259))

(assert (=> b!2691761 m!3069259))

(assert (=> b!2691761 m!3069431))

(declare-fun m!3069913 () Bool)

(assert (=> b!2691765 m!3069913))

(assert (=> b!2691765 m!3069427))

(assert (=> b!2691762 m!3069911))

(assert (=> b!2691762 m!3069259))

(declare-fun m!3069915 () Bool)

(assert (=> b!2691764 m!3069915))

(assert (=> b!2691764 m!3069259))

(assert (=> b!2691764 m!3069259))

(assert (=> b!2691764 m!3069431))

(declare-fun m!3069917 () Bool)

(assert (=> d!771360 m!3069917))

(assert (=> d!771360 m!3069251))

(declare-fun m!3069919 () Bool)

(assert (=> b!2691767 m!3069919))

(declare-fun m!3069921 () Bool)

(assert (=> b!2691763 m!3069921))

(declare-fun m!3069923 () Bool)

(assert (=> b!2691763 m!3069923))

(assert (=> b!2691466 d!771360))

(declare-fun e!1697094 () Bool)

(declare-fun b!2691768 () Bool)

(declare-fun lt!950139 () tuple2!30592)

(assert (=> b!2691768 (= e!1697094 (= (list!11714 (_2!17887 lt!950139)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 totalInput!354)))))))

(declare-fun d!771362 () Bool)

(assert (=> d!771362 e!1697094))

(declare-fun res!1130972 () Bool)

(assert (=> d!771362 (=> (not res!1130972) (not e!1697094))))

(declare-fun e!1697093 () Bool)

(assert (=> d!771362 (= res!1130972 e!1697093)))

(declare-fun c!433950 () Bool)

(assert (=> d!771362 (= c!433950 (> (size!23980 (_1!17887 lt!950139)) 0))))

(declare-fun e!1697091 () tuple2!30592)

(assert (=> d!771362 (= lt!950139 e!1697091)))

(declare-fun c!433951 () Bool)

(declare-fun lt!950138 () Option!6131)

(assert (=> d!771362 (= c!433951 ((_ is Some!6130) lt!950138))))

(assert (=> d!771362 (= lt!950138 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!771362 (= (lexRec!598 thiss!12257 rules!1381 totalInput!354) lt!950139)))

(declare-fun b!2691769 () Bool)

(assert (=> b!2691769 (= e!1697093 (= (list!11714 (_2!17887 lt!950139)) (list!11714 totalInput!354)))))

(declare-fun b!2691770 () Bool)

(declare-fun lt!950140 () tuple2!30592)

(assert (=> b!2691770 (= e!1697091 (tuple2!30593 (prepend!1071 (_1!17887 lt!950140) (_1!17885 (v!32838 lt!950138))) (_2!17887 lt!950140)))))

(assert (=> b!2691770 (= lt!950140 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950138))))))

(declare-fun b!2691771 () Bool)

(declare-fun res!1130973 () Bool)

(assert (=> b!2691771 (=> (not res!1130973) (not e!1697094))))

(assert (=> b!2691771 (= res!1130973 (= (list!11715 (_1!17887 lt!950139)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 totalInput!354)))))))

(declare-fun b!2691772 () Bool)

(declare-fun e!1697092 () Bool)

(assert (=> b!2691772 (= e!1697093 e!1697092)))

(declare-fun res!1130971 () Bool)

(assert (=> b!2691772 (= res!1130971 (< (size!23981 (_2!17887 lt!950139)) (size!23981 totalInput!354)))))

(assert (=> b!2691772 (=> (not res!1130971) (not e!1697092))))

(declare-fun b!2691773 () Bool)

(assert (=> b!2691773 (= e!1697091 (tuple2!30593 (BalanceConc!19031 Empty!9708) totalInput!354))))

(declare-fun b!2691774 () Bool)

(assert (=> b!2691774 (= e!1697092 (not (isEmpty!17714 (_1!17887 lt!950139))))))

(assert (= (and d!771362 c!433951) b!2691770))

(assert (= (and d!771362 (not c!433951)) b!2691773))

(assert (= (and d!771362 c!433950) b!2691772))

(assert (= (and d!771362 (not c!433950)) b!2691769))

(assert (= (and b!2691772 res!1130971) b!2691774))

(assert (= (and d!771362 res!1130972) b!2691771))

(assert (= (and b!2691771 res!1130973) b!2691768))

(declare-fun m!3069925 () Bool)

(assert (=> b!2691768 m!3069925))

(assert (=> b!2691768 m!3069257))

(assert (=> b!2691768 m!3069257))

(declare-fun m!3069927 () Bool)

(assert (=> b!2691768 m!3069927))

(declare-fun m!3069929 () Bool)

(assert (=> b!2691772 m!3069929))

(declare-fun m!3069931 () Bool)

(assert (=> b!2691772 m!3069931))

(assert (=> b!2691769 m!3069925))

(assert (=> b!2691769 m!3069257))

(declare-fun m!3069933 () Bool)

(assert (=> b!2691771 m!3069933))

(assert (=> b!2691771 m!3069257))

(assert (=> b!2691771 m!3069257))

(assert (=> b!2691771 m!3069927))

(declare-fun m!3069935 () Bool)

(assert (=> d!771362 m!3069935))

(declare-fun m!3069937 () Bool)

(assert (=> d!771362 m!3069937))

(declare-fun m!3069939 () Bool)

(assert (=> b!2691774 m!3069939))

(declare-fun m!3069941 () Bool)

(assert (=> b!2691770 m!3069941))

(declare-fun m!3069943 () Bool)

(assert (=> b!2691770 m!3069943))

(assert (=> b!2691466 d!771362))

(declare-fun d!771364 () Bool)

(assert (=> d!771364 (= (list!11715 (++!7602 acc!348 (_1!17887 lt!949782))) (list!11717 (c!433874 (++!7602 acc!348 (_1!17887 lt!949782)))))))

(declare-fun bs!483339 () Bool)

(assert (= bs!483339 d!771364))

(declare-fun m!3069945 () Bool)

(assert (=> bs!483339 m!3069945))

(assert (=> b!2691466 d!771364))

(declare-fun d!771366 () Bool)

(assert (=> d!771366 (= (list!11715 (_1!17887 lt!949787)) (list!11717 (c!433874 (_1!17887 lt!949787))))))

(declare-fun bs!483340 () Bool)

(assert (= bs!483340 d!771366))

(declare-fun m!3069947 () Bool)

(assert (=> bs!483340 m!3069947))

(assert (=> b!2691466 d!771366))

(declare-fun b!2691777 () Bool)

(declare-fun res!1130974 () Bool)

(declare-fun e!1697095 () Bool)

(assert (=> b!2691777 (=> (not res!1130974) (not e!1697095))))

(declare-fun lt!950141 () List!31145)

(assert (=> b!2691777 (= res!1130974 (= (size!23982 lt!950141) (+ (size!23982 (list!11714 lt!949796)) (size!23982 (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792))))))))))

(declare-fun b!2691778 () Bool)

(assert (=> b!2691778 (= e!1697095 (or (not (= (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792)))) Nil!31045)) (= lt!950141 (list!11714 lt!949796))))))

(declare-fun b!2691776 () Bool)

(declare-fun e!1697096 () List!31145)

(assert (=> b!2691776 (= e!1697096 (Cons!31045 (h!36465 (list!11714 lt!949796)) (++!7601 (t!225087 (list!11714 lt!949796)) (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792)))))))))

(declare-fun b!2691775 () Bool)

(assert (=> b!2691775 (= e!1697096 (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792)))))))

(declare-fun d!771368 () Bool)

(assert (=> d!771368 e!1697095))

(declare-fun res!1130975 () Bool)

(assert (=> d!771368 (=> (not res!1130975) (not e!1697095))))

(assert (=> d!771368 (= res!1130975 (= (content!4402 lt!950141) ((_ map or) (content!4402 (list!11714 lt!949796)) (content!4402 (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792))))))))))

(assert (=> d!771368 (= lt!950141 e!1697096)))

(declare-fun c!433952 () Bool)

(assert (=> d!771368 (= c!433952 ((_ is Nil!31045) (list!11714 lt!949796)))))

(assert (=> d!771368 (= (++!7601 (list!11714 lt!949796) (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792))))) lt!950141)))

(assert (= (and d!771368 c!433952) b!2691775))

(assert (= (and d!771368 (not c!433952)) b!2691776))

(assert (= (and d!771368 res!1130975) b!2691777))

(assert (= (and b!2691777 res!1130974) b!2691778))

(declare-fun m!3069949 () Bool)

(assert (=> b!2691777 m!3069949))

(assert (=> b!2691777 m!3069241))

(declare-fun m!3069951 () Bool)

(assert (=> b!2691777 m!3069951))

(assert (=> b!2691777 m!3069243))

(declare-fun m!3069953 () Bool)

(assert (=> b!2691777 m!3069953))

(assert (=> b!2691776 m!3069243))

(declare-fun m!3069955 () Bool)

(assert (=> b!2691776 m!3069955))

(declare-fun m!3069957 () Bool)

(assert (=> d!771368 m!3069957))

(assert (=> d!771368 m!3069241))

(declare-fun m!3069959 () Bool)

(assert (=> d!771368 m!3069959))

(assert (=> d!771368 m!3069243))

(declare-fun m!3069961 () Bool)

(assert (=> d!771368 m!3069961))

(assert (=> b!2691446 d!771368))

(declare-fun d!771370 () Bool)

(assert (=> d!771370 (= (list!11714 lt!949796) (list!11716 (c!433873 lt!949796)))))

(declare-fun bs!483341 () Bool)

(assert (= bs!483341 d!771370))

(declare-fun m!3069963 () Bool)

(assert (=> bs!483341 m!3069963))

(assert (=> b!2691446 d!771370))

(declare-fun d!771372 () Bool)

(assert (=> d!771372 (= (list!11714 (_2!17885 (v!32838 (_1!17886 lt!949792)))) (list!11716 (c!433873 (_2!17885 (v!32838 (_1!17886 lt!949792))))))))

(declare-fun bs!483342 () Bool)

(assert (= bs!483342 d!771372))

(declare-fun m!3069965 () Bool)

(assert (=> bs!483342 m!3069965))

(assert (=> b!2691446 d!771372))

(declare-fun e!1697100 () Bool)

(declare-fun b!2691779 () Bool)

(declare-fun lt!950143 () tuple2!30592)

(assert (=> b!2691779 (= e!1697100 (= (list!11714 (_2!17887 lt!950143)) (_2!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 (_2!17885 (v!32838 lt!949801)))))))))

(declare-fun d!771374 () Bool)

(assert (=> d!771374 e!1697100))

(declare-fun res!1130977 () Bool)

(assert (=> d!771374 (=> (not res!1130977) (not e!1697100))))

(declare-fun e!1697099 () Bool)

(assert (=> d!771374 (= res!1130977 e!1697099)))

(declare-fun c!433953 () Bool)

(assert (=> d!771374 (= c!433953 (> (size!23980 (_1!17887 lt!950143)) 0))))

(declare-fun e!1697097 () tuple2!30592)

(assert (=> d!771374 (= lt!950143 e!1697097)))

(declare-fun c!433954 () Bool)

(declare-fun lt!950142 () Option!6131)

(assert (=> d!771374 (= c!433954 ((_ is Some!6130) lt!950142))))

(assert (=> d!771374 (= lt!950142 (maxPrefixZipperSequence!999 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949801))))))

(assert (=> d!771374 (= (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!949801))) lt!950143)))

(declare-fun b!2691780 () Bool)

(assert (=> b!2691780 (= e!1697099 (= (list!11714 (_2!17887 lt!950143)) (list!11714 (_2!17885 (v!32838 lt!949801)))))))

(declare-fun b!2691781 () Bool)

(declare-fun lt!950144 () tuple2!30592)

(assert (=> b!2691781 (= e!1697097 (tuple2!30593 (prepend!1071 (_1!17887 lt!950144) (_1!17885 (v!32838 lt!950142))) (_2!17887 lt!950144)))))

(assert (=> b!2691781 (= lt!950144 (lexRec!598 thiss!12257 rules!1381 (_2!17885 (v!32838 lt!950142))))))

(declare-fun b!2691782 () Bool)

(declare-fun res!1130978 () Bool)

(assert (=> b!2691782 (=> (not res!1130978) (not e!1697100))))

(assert (=> b!2691782 (= res!1130978 (= (list!11715 (_1!17887 lt!950143)) (_1!17888 (lexList!1190 thiss!12257 rules!1381 (list!11714 (_2!17885 (v!32838 lt!949801)))))))))

(declare-fun b!2691783 () Bool)

(declare-fun e!1697098 () Bool)

(assert (=> b!2691783 (= e!1697099 e!1697098)))

(declare-fun res!1130976 () Bool)

(assert (=> b!2691783 (= res!1130976 (< (size!23981 (_2!17887 lt!950143)) (size!23981 (_2!17885 (v!32838 lt!949801)))))))

(assert (=> b!2691783 (=> (not res!1130976) (not e!1697098))))

(declare-fun b!2691784 () Bool)

(assert (=> b!2691784 (= e!1697097 (tuple2!30593 (BalanceConc!19031 Empty!9708) (_2!17885 (v!32838 lt!949801))))))

(declare-fun b!2691785 () Bool)

(assert (=> b!2691785 (= e!1697098 (not (isEmpty!17714 (_1!17887 lt!950143))))))

(assert (= (and d!771374 c!433954) b!2691781))

(assert (= (and d!771374 (not c!433954)) b!2691784))

(assert (= (and d!771374 c!433953) b!2691783))

(assert (= (and d!771374 (not c!433953)) b!2691780))

(assert (= (and b!2691783 res!1130976) b!2691785))

(assert (= (and d!771374 res!1130977) b!2691782))

(assert (= (and b!2691782 res!1130978) b!2691779))

(declare-fun m!3069967 () Bool)

(assert (=> b!2691779 m!3069967))

(declare-fun m!3069969 () Bool)

(assert (=> b!2691779 m!3069969))

(assert (=> b!2691779 m!3069969))

(declare-fun m!3069971 () Bool)

(assert (=> b!2691779 m!3069971))

(declare-fun m!3069973 () Bool)

(assert (=> b!2691783 m!3069973))

(declare-fun m!3069975 () Bool)

(assert (=> b!2691783 m!3069975))

(assert (=> b!2691780 m!3069967))

(assert (=> b!2691780 m!3069969))

(declare-fun m!3069977 () Bool)

(assert (=> b!2691782 m!3069977))

(assert (=> b!2691782 m!3069969))

(assert (=> b!2691782 m!3069969))

(assert (=> b!2691782 m!3069971))

(declare-fun m!3069979 () Bool)

(assert (=> d!771374 m!3069979))

(declare-fun m!3069981 () Bool)

(assert (=> d!771374 m!3069981))

(declare-fun m!3069983 () Bool)

(assert (=> b!2691785 m!3069983))

(declare-fun m!3069985 () Bool)

(assert (=> b!2691781 m!3069985))

(declare-fun m!3069987 () Bool)

(assert (=> b!2691781 m!3069987))

(assert (=> b!2691460 d!771374))

(declare-fun d!771376 () Bool)

(declare-fun e!1697101 () Bool)

(assert (=> d!771376 e!1697101))

(declare-fun res!1130979 () Bool)

(assert (=> d!771376 (=> (not res!1130979) (not e!1697101))))

(assert (=> d!771376 (= res!1130979 (isBalanced!2939 (prepend!1072 (c!433874 (_1!17887 lt!949805)) (_1!17885 (v!32838 lt!949801)))))))

(declare-fun lt!950145 () BalanceConc!19030)

(assert (=> d!771376 (= lt!950145 (BalanceConc!19031 (prepend!1072 (c!433874 (_1!17887 lt!949805)) (_1!17885 (v!32838 lt!949801)))))))

(assert (=> d!771376 (= (prepend!1071 (_1!17887 lt!949805) (_1!17885 (v!32838 lt!949801))) lt!950145)))

(declare-fun b!2691786 () Bool)

(assert (=> b!2691786 (= e!1697101 (= (list!11715 lt!950145) (Cons!31047 (_1!17885 (v!32838 lt!949801)) (list!11715 (_1!17887 lt!949805)))))))

(assert (= (and d!771376 res!1130979) b!2691786))

(declare-fun m!3069989 () Bool)

(assert (=> d!771376 m!3069989))

(assert (=> d!771376 m!3069989))

(declare-fun m!3069991 () Bool)

(assert (=> d!771376 m!3069991))

(declare-fun m!3069993 () Bool)

(assert (=> b!2691786 m!3069993))

(declare-fun m!3069995 () Bool)

(assert (=> b!2691786 m!3069995))

(assert (=> b!2691460 d!771376))

(declare-fun d!771378 () Bool)

(declare-fun c!433957 () Bool)

(assert (=> d!771378 (= c!433957 ((_ is Node!9708) (c!433874 acc!348)))))

(declare-fun e!1697106 () Bool)

(assert (=> d!771378 (= (inv!42081 (c!433874 acc!348)) e!1697106)))

(declare-fun b!2691793 () Bool)

(declare-fun inv!42088 (Conc!9708) Bool)

(assert (=> b!2691793 (= e!1697106 (inv!42088 (c!433874 acc!348)))))

(declare-fun b!2691794 () Bool)

(declare-fun e!1697107 () Bool)

(assert (=> b!2691794 (= e!1697106 e!1697107)))

(declare-fun res!1130982 () Bool)

(assert (=> b!2691794 (= res!1130982 (not ((_ is Leaf!14822) (c!433874 acc!348))))))

(assert (=> b!2691794 (=> res!1130982 e!1697107)))

(declare-fun b!2691795 () Bool)

(declare-fun inv!42089 (Conc!9708) Bool)

(assert (=> b!2691795 (= e!1697107 (inv!42089 (c!433874 acc!348)))))

(assert (= (and d!771378 c!433957) b!2691793))

(assert (= (and d!771378 (not c!433957)) b!2691794))

(assert (= (and b!2691794 (not res!1130982)) b!2691795))

(declare-fun m!3069997 () Bool)

(assert (=> b!2691793 m!3069997))

(declare-fun m!3069999 () Bool)

(assert (=> b!2691795 m!3069999))

(assert (=> b!2691480 d!771378))

(declare-fun d!771380 () Bool)

(declare-fun c!433958 () Bool)

(assert (=> d!771380 (= c!433958 ((_ is Node!9707) (c!433873 treated!26)))))

(declare-fun e!1697108 () Bool)

(assert (=> d!771380 (= (inv!42079 (c!433873 treated!26)) e!1697108)))

(declare-fun b!2691796 () Bool)

(assert (=> b!2691796 (= e!1697108 (inv!42086 (c!433873 treated!26)))))

(declare-fun b!2691797 () Bool)

(declare-fun e!1697109 () Bool)

(assert (=> b!2691797 (= e!1697108 e!1697109)))

(declare-fun res!1130983 () Bool)

(assert (=> b!2691797 (= res!1130983 (not ((_ is Leaf!14821) (c!433873 treated!26))))))

(assert (=> b!2691797 (=> res!1130983 e!1697109)))

(declare-fun b!2691798 () Bool)

(assert (=> b!2691798 (= e!1697109 (inv!42087 (c!433873 treated!26)))))

(assert (= (and d!771380 c!433958) b!2691796))

(assert (= (and d!771380 (not c!433958)) b!2691797))

(assert (= (and b!2691797 (not res!1130983)) b!2691798))

(declare-fun m!3070001 () Bool)

(assert (=> b!2691796 m!3070001))

(declare-fun m!3070003 () Bool)

(assert (=> b!2691798 m!3070003))

(assert (=> b!2691478 d!771380))

(declare-fun d!771382 () Bool)

(assert (=> d!771382 (= (isEmpty!17713 rules!1381) ((_ is Nil!31046) rules!1381))))

(assert (=> b!2691463 d!771382))

(declare-fun d!771384 () Bool)

(assert (=> d!771384 (= (inv!42082 input!780) (isBalanced!2940 (c!433873 input!780)))))

(declare-fun bs!483343 () Bool)

(assert (= bs!483343 d!771384))

(declare-fun m!3070005 () Bool)

(assert (=> bs!483343 m!3070005))

(assert (=> start!261720 d!771384))

(declare-fun d!771386 () Bool)

(assert (=> d!771386 (= (inv!42082 treated!26) (isBalanced!2940 (c!433873 treated!26)))))

(declare-fun bs!483344 () Bool)

(assert (= bs!483344 d!771386))

(declare-fun m!3070007 () Bool)

(assert (=> bs!483344 m!3070007))

(assert (=> start!261720 d!771386))

(declare-fun d!771388 () Bool)

(declare-fun res!1130986 () Bool)

(declare-fun e!1697112 () Bool)

(assert (=> d!771388 (=> (not res!1130986) (not e!1697112))))

(assert (=> d!771388 (= res!1130986 ((_ is HashMap!3416) (cache!3559 cacheUp!486)))))

(assert (=> d!771388 (= (inv!42083 cacheUp!486) e!1697112)))

(declare-fun b!2691801 () Bool)

(assert (=> b!2691801 (= e!1697112 (validCacheMapUp!323 (cache!3559 cacheUp!486)))))

(assert (= (and d!771388 res!1130986) b!2691801))

(assert (=> b!2691801 m!3069581))

(assert (=> start!261720 d!771388))

(declare-fun d!771390 () Bool)

(declare-fun res!1130989 () Bool)

(declare-fun e!1697115 () Bool)

(assert (=> d!771390 (=> (not res!1130989) (not e!1697115))))

(assert (=> d!771390 (= res!1130989 ((_ is HashMap!3417) (cache!3560 cacheDown!499)))))

(assert (=> d!771390 (= (inv!42085 cacheDown!499) e!1697115)))

(declare-fun b!2691804 () Bool)

(assert (=> b!2691804 (= e!1697115 (validCacheMapDown!354 (cache!3560 cacheDown!499)))))

(assert (= (and d!771390 res!1130989) b!2691804))

(assert (=> b!2691804 m!3069309))

(assert (=> start!261720 d!771390))

(declare-fun d!771392 () Bool)

(assert (=> d!771392 (= (inv!42084 acc!348) (isBalanced!2939 (c!433874 acc!348)))))

(declare-fun bs!483345 () Bool)

(assert (= bs!483345 d!771392))

(declare-fun m!3070009 () Bool)

(assert (=> bs!483345 m!3070009))

(assert (=> start!261720 d!771392))

(declare-fun d!771394 () Bool)

(assert (=> d!771394 (= (inv!42082 totalInput!354) (isBalanced!2940 (c!433873 totalInput!354)))))

(declare-fun bs!483346 () Bool)

(assert (= bs!483346 d!771394))

(declare-fun m!3070011 () Bool)

(assert (=> bs!483346 m!3070011))

(assert (=> start!261720 d!771394))

(declare-fun d!771396 () Bool)

(declare-fun c!433959 () Bool)

(assert (=> d!771396 (= c!433959 ((_ is Node!9707) (c!433873 input!780)))))

(declare-fun e!1697116 () Bool)

(assert (=> d!771396 (= (inv!42079 (c!433873 input!780)) e!1697116)))

(declare-fun b!2691805 () Bool)

(assert (=> b!2691805 (= e!1697116 (inv!42086 (c!433873 input!780)))))

(declare-fun b!2691806 () Bool)

(declare-fun e!1697117 () Bool)

(assert (=> b!2691806 (= e!1697116 e!1697117)))

(declare-fun res!1130990 () Bool)

(assert (=> b!2691806 (= res!1130990 (not ((_ is Leaf!14821) (c!433873 input!780))))))

(assert (=> b!2691806 (=> res!1130990 e!1697117)))

(declare-fun b!2691807 () Bool)

(assert (=> b!2691807 (= e!1697117 (inv!42087 (c!433873 input!780)))))

(assert (= (and d!771396 c!433959) b!2691805))

(assert (= (and d!771396 (not c!433959)) b!2691806))

(assert (= (and b!2691806 (not res!1130990)) b!2691807))

(declare-fun m!3070013 () Bool)

(assert (=> b!2691805 m!3070013))

(declare-fun m!3070015 () Bool)

(assert (=> b!2691807 m!3070015))

(assert (=> b!2691462 d!771396))

(declare-fun b!2691822 () Bool)

(declare-fun e!1697132 () Bool)

(declare-fun tp!851372 () Bool)

(assert (=> b!2691822 (= e!1697132 tp!851372)))

(declare-fun e!1697131 () Bool)

(declare-fun mapDefault!16063 () List!31142)

(declare-fun e!1697133 () Bool)

(declare-fun tp_is_empty!13849 () Bool)

(declare-fun tp!851375 () Bool)

(declare-fun b!2691823 () Bool)

(declare-fun tp!851374 () Bool)

(declare-fun setRes!21150 () Bool)

(declare-fun inv!42090 (Context!4330) Bool)

(assert (=> b!2691823 (= e!1697133 (and tp!851375 (inv!42090 (_2!17881 (_1!17882 (h!36462 mapDefault!16063)))) e!1697131 tp_is_empty!13849 setRes!21150 tp!851374))))

(declare-fun condSetEmpty!21149 () Bool)

(assert (=> b!2691823 (= condSetEmpty!21149 (= (_2!17882 (h!36462 mapDefault!16063)) ((as const (Array Context!4330 Bool)) false)))))

(declare-fun mapIsEmpty!16063 () Bool)

(declare-fun mapRes!16063 () Bool)

(assert (=> mapIsEmpty!16063 mapRes!16063))

(declare-fun mapNonEmpty!16063 () Bool)

(declare-fun tp!851371 () Bool)

(declare-fun e!1697135 () Bool)

(assert (=> mapNonEmpty!16063 (= mapRes!16063 (and tp!851371 e!1697135))))

(declare-fun mapRest!16063 () (Array (_ BitVec 32) List!31142))

(declare-fun mapValue!16063 () List!31142)

(declare-fun mapKey!16063 () (_ BitVec 32))

(assert (=> mapNonEmpty!16063 (= mapRest!16059 (store mapRest!16063 mapKey!16063 mapValue!16063))))

(declare-fun b!2691824 () Bool)

(declare-fun e!1697130 () Bool)

(declare-fun tp!851369 () Bool)

(assert (=> b!2691824 (= e!1697130 tp!851369)))

(declare-fun setIsEmpty!21149 () Bool)

(assert (=> setIsEmpty!21149 setRes!21150))

(declare-fun b!2691825 () Bool)

(declare-fun e!1697134 () Bool)

(declare-fun tp!851373 () Bool)

(assert (=> b!2691825 (= e!1697134 tp!851373)))

(declare-fun b!2691826 () Bool)

(declare-fun tp!851370 () Bool)

(assert (=> b!2691826 (= e!1697131 tp!851370)))

(declare-fun tp!851377 () Bool)

(declare-fun setRes!21149 () Bool)

(declare-fun b!2691827 () Bool)

(declare-fun tp!851368 () Bool)

(assert (=> b!2691827 (= e!1697135 (and tp!851368 (inv!42090 (_2!17881 (_1!17882 (h!36462 mapValue!16063)))) e!1697132 tp_is_empty!13849 setRes!21149 tp!851377))))

(declare-fun condSetEmpty!21150 () Bool)

(assert (=> b!2691827 (= condSetEmpty!21150 (= (_2!17882 (h!36462 mapValue!16063)) ((as const (Array Context!4330 Bool)) false)))))

(declare-fun setNonEmpty!21149 () Bool)

(declare-fun setElem!21149 () Context!4330)

(declare-fun tp!851376 () Bool)

(assert (=> setNonEmpty!21149 (= setRes!21149 (and tp!851376 (inv!42090 setElem!21149) e!1697130))))

(declare-fun setRest!21150 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21149 (= (_2!17882 (h!36462 mapValue!16063)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21149 true) setRest!21150))))

(declare-fun condMapEmpty!16063 () Bool)

(assert (=> mapNonEmpty!16059 (= condMapEmpty!16063 (= mapRest!16059 ((as const (Array (_ BitVec 32) List!31142)) mapDefault!16063)))))

(assert (=> mapNonEmpty!16059 (= tp!851325 (and e!1697133 mapRes!16063))))

(declare-fun setIsEmpty!21150 () Bool)

(assert (=> setIsEmpty!21150 setRes!21149))

(declare-fun setElem!21150 () Context!4330)

(declare-fun tp!851378 () Bool)

(declare-fun setNonEmpty!21150 () Bool)

(assert (=> setNonEmpty!21150 (= setRes!21150 (and tp!851378 (inv!42090 setElem!21150) e!1697134))))

(declare-fun setRest!21149 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21150 (= (_2!17882 (h!36462 mapDefault!16063)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21150 true) setRest!21149))))

(assert (= (and mapNonEmpty!16059 condMapEmpty!16063) mapIsEmpty!16063))

(assert (= (and mapNonEmpty!16059 (not condMapEmpty!16063)) mapNonEmpty!16063))

(assert (= b!2691827 b!2691822))

(assert (= (and b!2691827 condSetEmpty!21150) setIsEmpty!21150))

(assert (= (and b!2691827 (not condSetEmpty!21150)) setNonEmpty!21149))

(assert (= setNonEmpty!21149 b!2691824))

(assert (= (and mapNonEmpty!16063 ((_ is Cons!31042) mapValue!16063)) b!2691827))

(assert (= b!2691823 b!2691826))

(assert (= (and b!2691823 condSetEmpty!21149) setIsEmpty!21149))

(assert (= (and b!2691823 (not condSetEmpty!21149)) setNonEmpty!21150))

(assert (= setNonEmpty!21150 b!2691825))

(assert (= (and mapNonEmpty!16059 ((_ is Cons!31042) mapDefault!16063)) b!2691823))

(declare-fun m!3070017 () Bool)

(assert (=> setNonEmpty!21149 m!3070017))

(declare-fun m!3070019 () Bool)

(assert (=> b!2691823 m!3070019))

(declare-fun m!3070021 () Bool)

(assert (=> setNonEmpty!21150 m!3070021))

(declare-fun m!3070023 () Bool)

(assert (=> mapNonEmpty!16063 m!3070023))

(declare-fun m!3070025 () Bool)

(assert (=> b!2691827 m!3070025))

(declare-fun setIsEmpty!21153 () Bool)

(declare-fun setRes!21153 () Bool)

(assert (=> setIsEmpty!21153 setRes!21153))

(declare-fun b!2691836 () Bool)

(declare-fun tp!851389 () Bool)

(declare-fun e!1697142 () Bool)

(declare-fun e!1697143 () Bool)

(declare-fun tp!851391 () Bool)

(assert (=> b!2691836 (= e!1697142 (and tp!851391 (inv!42090 (_2!17881 (_1!17882 (h!36462 mapValue!16059)))) e!1697143 tp_is_empty!13849 setRes!21153 tp!851389))))

(declare-fun condSetEmpty!21153 () Bool)

(assert (=> b!2691836 (= condSetEmpty!21153 (= (_2!17882 (h!36462 mapValue!16059)) ((as const (Array Context!4330 Bool)) false)))))

(assert (=> mapNonEmpty!16059 (= tp!851322 e!1697142)))

(declare-fun b!2691837 () Bool)

(declare-fun tp!851390 () Bool)

(assert (=> b!2691837 (= e!1697143 tp!851390)))

(declare-fun e!1697144 () Bool)

(declare-fun setElem!21153 () Context!4330)

(declare-fun tp!851393 () Bool)

(declare-fun setNonEmpty!21153 () Bool)

(assert (=> setNonEmpty!21153 (= setRes!21153 (and tp!851393 (inv!42090 setElem!21153) e!1697144))))

(declare-fun setRest!21153 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21153 (= (_2!17882 (h!36462 mapValue!16059)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21153 true) setRest!21153))))

(declare-fun b!2691838 () Bool)

(declare-fun tp!851392 () Bool)

(assert (=> b!2691838 (= e!1697144 tp!851392)))

(assert (= b!2691836 b!2691837))

(assert (= (and b!2691836 condSetEmpty!21153) setIsEmpty!21153))

(assert (= (and b!2691836 (not condSetEmpty!21153)) setNonEmpty!21153))

(assert (= setNonEmpty!21153 b!2691838))

(assert (= (and mapNonEmpty!16059 ((_ is Cons!31042) mapValue!16059)) b!2691836))

(declare-fun m!3070027 () Bool)

(assert (=> b!2691836 m!3070027))

(declare-fun m!3070029 () Bool)

(assert (=> setNonEmpty!21153 m!3070029))

(declare-fun e!1697153 () Bool)

(assert (=> b!2691465 (= tp!851328 e!1697153)))

(declare-fun tp!851404 () Bool)

(declare-fun setElem!21156 () Context!4330)

(declare-fun setNonEmpty!21156 () Bool)

(declare-fun setRes!21156 () Bool)

(declare-fun e!1697151 () Bool)

(assert (=> setNonEmpty!21156 (= setRes!21156 (and tp!851404 (inv!42090 setElem!21156) e!1697151))))

(declare-fun setRest!21156 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21156 (= (_2!17884 (h!36463 mapDefault!16059)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21156 true) setRest!21156))))

(declare-fun setIsEmpty!21156 () Bool)

(assert (=> setIsEmpty!21156 setRes!21156))

(declare-fun b!2691847 () Bool)

(declare-fun tp!851402 () Bool)

(assert (=> b!2691847 (= e!1697151 tp!851402)))

(declare-fun b!2691848 () Bool)

(declare-fun e!1697152 () Bool)

(declare-fun tp!851405 () Bool)

(assert (=> b!2691848 (= e!1697152 tp!851405)))

(declare-fun tp!851403 () Bool)

(declare-fun b!2691849 () Bool)

(assert (=> b!2691849 (= e!1697153 (and (inv!42090 (_1!17883 (_1!17884 (h!36463 mapDefault!16059)))) e!1697152 tp_is_empty!13849 setRes!21156 tp!851403))))

(declare-fun condSetEmpty!21156 () Bool)

(assert (=> b!2691849 (= condSetEmpty!21156 (= (_2!17884 (h!36463 mapDefault!16059)) ((as const (Array Context!4330 Bool)) false)))))

(assert (= b!2691849 b!2691848))

(assert (= (and b!2691849 condSetEmpty!21156) setIsEmpty!21156))

(assert (= (and b!2691849 (not condSetEmpty!21156)) setNonEmpty!21156))

(assert (= setNonEmpty!21156 b!2691847))

(assert (= (and b!2691465 ((_ is Cons!31043) mapDefault!16059)) b!2691849))

(declare-fun m!3070031 () Bool)

(assert (=> setNonEmpty!21156 m!3070031))

(declare-fun m!3070033 () Bool)

(assert (=> b!2691849 m!3070033))

(declare-fun setIsEmpty!21157 () Bool)

(declare-fun setRes!21157 () Bool)

(assert (=> setIsEmpty!21157 setRes!21157))

(declare-fun e!1697154 () Bool)

(declare-fun tp!851406 () Bool)

(declare-fun b!2691850 () Bool)

(declare-fun e!1697155 () Bool)

(declare-fun tp!851408 () Bool)

(assert (=> b!2691850 (= e!1697154 (and tp!851408 (inv!42090 (_2!17881 (_1!17882 (h!36462 (zeroValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))))) e!1697155 tp_is_empty!13849 setRes!21157 tp!851406))))

(declare-fun condSetEmpty!21157 () Bool)

(assert (=> b!2691850 (= condSetEmpty!21157 (= (_2!17882 (h!36462 (zeroValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))) ((as const (Array Context!4330 Bool)) false)))))

(assert (=> b!2691467 (= tp!851337 e!1697154)))

(declare-fun b!2691851 () Bool)

(declare-fun tp!851407 () Bool)

(assert (=> b!2691851 (= e!1697155 tp!851407)))

(declare-fun e!1697156 () Bool)

(declare-fun setNonEmpty!21157 () Bool)

(declare-fun tp!851410 () Bool)

(declare-fun setElem!21157 () Context!4330)

(assert (=> setNonEmpty!21157 (= setRes!21157 (and tp!851410 (inv!42090 setElem!21157) e!1697156))))

(declare-fun setRest!21157 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21157 (= (_2!17882 (h!36462 (zeroValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21157 true) setRest!21157))))

(declare-fun b!2691852 () Bool)

(declare-fun tp!851409 () Bool)

(assert (=> b!2691852 (= e!1697156 tp!851409)))

(assert (= b!2691850 b!2691851))

(assert (= (and b!2691850 condSetEmpty!21157) setIsEmpty!21157))

(assert (= (and b!2691850 (not condSetEmpty!21157)) setNonEmpty!21157))

(assert (= setNonEmpty!21157 b!2691852))

(assert (= (and b!2691467 ((_ is Cons!31042) (zeroValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))) b!2691850))

(declare-fun m!3070035 () Bool)

(assert (=> b!2691850 m!3070035))

(declare-fun m!3070037 () Bool)

(assert (=> setNonEmpty!21157 m!3070037))

(declare-fun setIsEmpty!21158 () Bool)

(declare-fun setRes!21158 () Bool)

(assert (=> setIsEmpty!21158 setRes!21158))

(declare-fun e!1697158 () Bool)

(declare-fun tp!851413 () Bool)

(declare-fun tp!851411 () Bool)

(declare-fun b!2691853 () Bool)

(declare-fun e!1697157 () Bool)

(assert (=> b!2691853 (= e!1697157 (and tp!851413 (inv!42090 (_2!17881 (_1!17882 (h!36462 (minValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))))) e!1697158 tp_is_empty!13849 setRes!21158 tp!851411))))

(declare-fun condSetEmpty!21158 () Bool)

(assert (=> b!2691853 (= condSetEmpty!21158 (= (_2!17882 (h!36462 (minValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))) ((as const (Array Context!4330 Bool)) false)))))

(assert (=> b!2691467 (= tp!851323 e!1697157)))

(declare-fun b!2691854 () Bool)

(declare-fun tp!851412 () Bool)

(assert (=> b!2691854 (= e!1697158 tp!851412)))

(declare-fun setNonEmpty!21158 () Bool)

(declare-fun e!1697159 () Bool)

(declare-fun setElem!21158 () Context!4330)

(declare-fun tp!851415 () Bool)

(assert (=> setNonEmpty!21158 (= setRes!21158 (and tp!851415 (inv!42090 setElem!21158) e!1697159))))

(declare-fun setRest!21158 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21158 (= (_2!17882 (h!36462 (minValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21158 true) setRest!21158))))

(declare-fun b!2691855 () Bool)

(declare-fun tp!851414 () Bool)

(assert (=> b!2691855 (= e!1697159 tp!851414)))

(assert (= b!2691853 b!2691854))

(assert (= (and b!2691853 condSetEmpty!21158) setIsEmpty!21158))

(assert (= (and b!2691853 (not condSetEmpty!21158)) setNonEmpty!21158))

(assert (= setNonEmpty!21158 b!2691855))

(assert (= (and b!2691467 ((_ is Cons!31042) (minValue!3769 (v!32840 (underlying!7225 (v!32841 (underlying!7226 (cache!3560 cacheDown!499)))))))) b!2691853))

(declare-fun m!3070039 () Bool)

(assert (=> b!2691853 m!3070039))

(declare-fun m!3070041 () Bool)

(assert (=> setNonEmpty!21158 m!3070041))

(declare-fun tp!851422 () Bool)

(declare-fun tp!851423 () Bool)

(declare-fun b!2691864 () Bool)

(declare-fun e!1697165 () Bool)

(assert (=> b!2691864 (= e!1697165 (and (inv!42079 (left!23944 (c!433873 totalInput!354))) tp!851423 (inv!42079 (right!24274 (c!433873 totalInput!354))) tp!851422))))

(declare-fun b!2691866 () Bool)

(declare-fun e!1697164 () Bool)

(declare-fun tp!851424 () Bool)

(assert (=> b!2691866 (= e!1697164 tp!851424)))

(declare-fun b!2691865 () Bool)

(declare-fun inv!42091 (IArray!19419) Bool)

(assert (=> b!2691865 (= e!1697165 (and (inv!42091 (xs!12743 (c!433873 totalInput!354))) e!1697164))))

(assert (=> b!2691475 (= tp!851338 (and (inv!42079 (c!433873 totalInput!354)) e!1697165))))

(assert (= (and b!2691475 ((_ is Node!9707) (c!433873 totalInput!354))) b!2691864))

(assert (= b!2691865 b!2691866))

(assert (= (and b!2691475 ((_ is Leaf!14821) (c!433873 totalInput!354))) b!2691865))

(declare-fun m!3070043 () Bool)

(assert (=> b!2691864 m!3070043))

(declare-fun m!3070045 () Bool)

(assert (=> b!2691864 m!3070045))

(declare-fun m!3070047 () Bool)

(assert (=> b!2691865 m!3070047))

(assert (=> b!2691475 m!3069199))

(declare-fun e!1697168 () Bool)

(assert (=> b!2691449 (= tp!851341 e!1697168)))

(declare-fun setNonEmpty!21159 () Bool)

(declare-fun setElem!21159 () Context!4330)

(declare-fun e!1697166 () Bool)

(declare-fun setRes!21159 () Bool)

(declare-fun tp!851427 () Bool)

(assert (=> setNonEmpty!21159 (= setRes!21159 (and tp!851427 (inv!42090 setElem!21159) e!1697166))))

(declare-fun setRest!21159 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21159 (= (_2!17884 (h!36463 (zeroValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21159 true) setRest!21159))))

(declare-fun setIsEmpty!21159 () Bool)

(assert (=> setIsEmpty!21159 setRes!21159))

(declare-fun b!2691867 () Bool)

(declare-fun tp!851425 () Bool)

(assert (=> b!2691867 (= e!1697166 tp!851425)))

(declare-fun b!2691868 () Bool)

(declare-fun e!1697167 () Bool)

(declare-fun tp!851428 () Bool)

(assert (=> b!2691868 (= e!1697167 tp!851428)))

(declare-fun tp!851426 () Bool)

(declare-fun b!2691869 () Bool)

(assert (=> b!2691869 (= e!1697168 (and (inv!42090 (_1!17883 (_1!17884 (h!36463 (zeroValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))))) e!1697167 tp_is_empty!13849 setRes!21159 tp!851426))))

(declare-fun condSetEmpty!21159 () Bool)

(assert (=> b!2691869 (= condSetEmpty!21159 (= (_2!17884 (h!36463 (zeroValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))) ((as const (Array Context!4330 Bool)) false)))))

(assert (= b!2691869 b!2691868))

(assert (= (and b!2691869 condSetEmpty!21159) setIsEmpty!21159))

(assert (= (and b!2691869 (not condSetEmpty!21159)) setNonEmpty!21159))

(assert (= setNonEmpty!21159 b!2691867))

(assert (= (and b!2691449 ((_ is Cons!31043) (zeroValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))) b!2691869))

(declare-fun m!3070049 () Bool)

(assert (=> setNonEmpty!21159 m!3070049))

(declare-fun m!3070051 () Bool)

(assert (=> b!2691869 m!3070051))

(declare-fun e!1697171 () Bool)

(assert (=> b!2691449 (= tp!851321 e!1697171)))

(declare-fun e!1697169 () Bool)

(declare-fun tp!851431 () Bool)

(declare-fun setNonEmpty!21160 () Bool)

(declare-fun setRes!21160 () Bool)

(declare-fun setElem!21160 () Context!4330)

(assert (=> setNonEmpty!21160 (= setRes!21160 (and tp!851431 (inv!42090 setElem!21160) e!1697169))))

(declare-fun setRest!21160 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21160 (= (_2!17884 (h!36463 (minValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21160 true) setRest!21160))))

(declare-fun setIsEmpty!21160 () Bool)

(assert (=> setIsEmpty!21160 setRes!21160))

(declare-fun b!2691870 () Bool)

(declare-fun tp!851429 () Bool)

(assert (=> b!2691870 (= e!1697169 tp!851429)))

(declare-fun b!2691871 () Bool)

(declare-fun e!1697170 () Bool)

(declare-fun tp!851432 () Bool)

(assert (=> b!2691871 (= e!1697170 tp!851432)))

(declare-fun tp!851430 () Bool)

(declare-fun b!2691872 () Bool)

(assert (=> b!2691872 (= e!1697171 (and (inv!42090 (_1!17883 (_1!17884 (h!36463 (minValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))))) e!1697170 tp_is_empty!13849 setRes!21160 tp!851430))))

(declare-fun condSetEmpty!21160 () Bool)

(assert (=> b!2691872 (= condSetEmpty!21160 (= (_2!17884 (h!36463 (minValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))) ((as const (Array Context!4330 Bool)) false)))))

(assert (= b!2691872 b!2691871))

(assert (= (and b!2691872 condSetEmpty!21160) setIsEmpty!21160))

(assert (= (and b!2691872 (not condSetEmpty!21160)) setNonEmpty!21160))

(assert (= setNonEmpty!21160 b!2691870))

(assert (= (and b!2691449 ((_ is Cons!31043) (minValue!3770 (v!32837 (underlying!7223 (v!32839 (underlying!7224 (cache!3559 cacheUp!486)))))))) b!2691872))

(declare-fun m!3070053 () Bool)

(assert (=> setNonEmpty!21160 m!3070053))

(declare-fun m!3070055 () Bool)

(assert (=> b!2691872 m!3070055))

(declare-fun e!1697177 () Bool)

(declare-fun b!2691881 () Bool)

(declare-fun tp!851441 () Bool)

(declare-fun tp!851439 () Bool)

(assert (=> b!2691881 (= e!1697177 (and (inv!42081 (left!23945 (c!433874 acc!348))) tp!851441 (inv!42081 (right!24275 (c!433874 acc!348))) tp!851439))))

(declare-fun b!2691883 () Bool)

(declare-fun e!1697176 () Bool)

(declare-fun tp!851440 () Bool)

(assert (=> b!2691883 (= e!1697176 tp!851440)))

(declare-fun b!2691882 () Bool)

(declare-fun inv!42092 (IArray!19421) Bool)

(assert (=> b!2691882 (= e!1697177 (and (inv!42092 (xs!12744 (c!433874 acc!348))) e!1697176))))

(assert (=> b!2691480 (= tp!851320 (and (inv!42081 (c!433874 acc!348)) e!1697177))))

(assert (= (and b!2691480 ((_ is Node!9708) (c!433874 acc!348))) b!2691881))

(assert (= b!2691882 b!2691883))

(assert (= (and b!2691480 ((_ is Leaf!14822) (c!433874 acc!348))) b!2691882))

(declare-fun m!3070057 () Bool)

(assert (=> b!2691881 m!3070057))

(declare-fun m!3070059 () Bool)

(assert (=> b!2691881 m!3070059))

(declare-fun m!3070061 () Bool)

(assert (=> b!2691882 m!3070061))

(assert (=> b!2691480 m!3069227))

(declare-fun b!2691895 () Bool)

(declare-fun e!1697180 () Bool)

(declare-fun tp!851453 () Bool)

(declare-fun tp!851454 () Bool)

(assert (=> b!2691895 (= e!1697180 (and tp!851453 tp!851454))))

(assert (=> b!2691468 (= tp!851327 e!1697180)))

(declare-fun b!2691894 () Bool)

(assert (=> b!2691894 (= e!1697180 tp_is_empty!13849)))

(declare-fun b!2691897 () Bool)

(declare-fun tp!851455 () Bool)

(declare-fun tp!851452 () Bool)

(assert (=> b!2691897 (= e!1697180 (and tp!851455 tp!851452))))

(declare-fun b!2691896 () Bool)

(declare-fun tp!851456 () Bool)

(assert (=> b!2691896 (= e!1697180 tp!851456)))

(assert (= (and b!2691468 ((_ is ElementMatch!7891) (regex!4739 (h!36466 rules!1381)))) b!2691894))

(assert (= (and b!2691468 ((_ is Concat!12852) (regex!4739 (h!36466 rules!1381)))) b!2691895))

(assert (= (and b!2691468 ((_ is Star!7891) (regex!4739 (h!36466 rules!1381)))) b!2691896))

(assert (= (and b!2691468 ((_ is Union!7891) (regex!4739 (h!36466 rules!1381)))) b!2691897))

(declare-fun b!2691898 () Bool)

(declare-fun tp!851457 () Bool)

(declare-fun e!1697182 () Bool)

(declare-fun tp!851458 () Bool)

(assert (=> b!2691898 (= e!1697182 (and (inv!42079 (left!23944 (c!433873 treated!26))) tp!851458 (inv!42079 (right!24274 (c!433873 treated!26))) tp!851457))))

(declare-fun b!2691900 () Bool)

(declare-fun e!1697181 () Bool)

(declare-fun tp!851459 () Bool)

(assert (=> b!2691900 (= e!1697181 tp!851459)))

(declare-fun b!2691899 () Bool)

(assert (=> b!2691899 (= e!1697182 (and (inv!42091 (xs!12743 (c!433873 treated!26))) e!1697181))))

(assert (=> b!2691478 (= tp!851326 (and (inv!42079 (c!433873 treated!26)) e!1697182))))

(assert (= (and b!2691478 ((_ is Node!9707) (c!433873 treated!26))) b!2691898))

(assert (= b!2691899 b!2691900))

(assert (= (and b!2691478 ((_ is Leaf!14821) (c!433873 treated!26))) b!2691899))

(declare-fun m!3070063 () Bool)

(assert (=> b!2691898 m!3070063))

(declare-fun m!3070065 () Bool)

(assert (=> b!2691898 m!3070065))

(declare-fun m!3070067 () Bool)

(assert (=> b!2691899 m!3070067))

(assert (=> b!2691478 m!3069179))

(declare-fun b!2691911 () Bool)

(declare-fun b_free!76025 () Bool)

(declare-fun b_next!76729 () Bool)

(assert (=> b!2691911 (= b_free!76025 (not b_next!76729))))

(declare-fun tp!851470 () Bool)

(declare-fun b_and!199135 () Bool)

(assert (=> b!2691911 (= tp!851470 b_and!199135)))

(declare-fun b_free!76027 () Bool)

(declare-fun b_next!76731 () Bool)

(assert (=> b!2691911 (= b_free!76027 (not b_next!76731))))

(declare-fun tb!151021 () Bool)

(declare-fun t!225095 () Bool)

(assert (=> (and b!2691911 (= (toChars!6554 (transformation!4739 (h!36466 (t!225088 rules!1381)))) (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 lt!949802)))))) t!225095) tb!151021))

(declare-fun result!186512 () Bool)

(assert (= result!186512 result!186492))

(assert (=> d!771332 t!225095))

(declare-fun t!225097 () Bool)

(declare-fun tb!151023 () Bool)

(assert (=> (and b!2691911 (= (toChars!6554 (transformation!4739 (h!36466 (t!225088 rules!1381)))) (toChars!6554 (transformation!4739 (rule!7154 (_1!17885 (v!32838 (_1!17886 lt!949792))))))) t!225097) tb!151023))

(declare-fun result!186514 () Bool)

(assert (= result!186514 result!186496))

(assert (=> d!771356 t!225097))

(declare-fun tp!851468 () Bool)

(declare-fun b_and!199137 () Bool)

(assert (=> b!2691911 (= tp!851468 (and (=> t!225095 result!186512) (=> t!225097 result!186514) b_and!199137))))

(declare-fun e!1697192 () Bool)

(assert (=> b!2691911 (= e!1697192 (and tp!851470 tp!851468))))

(declare-fun tp!851469 () Bool)

(declare-fun e!1697194 () Bool)

(declare-fun b!2691910 () Bool)

(assert (=> b!2691910 (= e!1697194 (and tp!851469 (inv!42076 (tag!5243 (h!36466 (t!225088 rules!1381)))) (inv!42080 (transformation!4739 (h!36466 (t!225088 rules!1381)))) e!1697192))))

(declare-fun b!2691909 () Bool)

(declare-fun e!1697191 () Bool)

(declare-fun tp!851471 () Bool)

(assert (=> b!2691909 (= e!1697191 (and e!1697194 tp!851471))))

(assert (=> b!2691459 (= tp!851336 e!1697191)))

(assert (= b!2691910 b!2691911))

(assert (= b!2691909 b!2691910))

(assert (= (and b!2691459 ((_ is Cons!31046) (t!225088 rules!1381))) b!2691909))

(declare-fun m!3070069 () Bool)

(assert (=> b!2691910 m!3070069))

(declare-fun m!3070071 () Bool)

(assert (=> b!2691910 m!3070071))

(declare-fun setIsEmpty!21161 () Bool)

(declare-fun setRes!21161 () Bool)

(assert (=> setIsEmpty!21161 setRes!21161))

(declare-fun b!2691912 () Bool)

(declare-fun tp!851474 () Bool)

(declare-fun tp!851472 () Bool)

(declare-fun e!1697195 () Bool)

(declare-fun e!1697196 () Bool)

(assert (=> b!2691912 (= e!1697195 (and tp!851474 (inv!42090 (_2!17881 (_1!17882 (h!36462 mapDefault!16060)))) e!1697196 tp_is_empty!13849 setRes!21161 tp!851472))))

(declare-fun condSetEmpty!21161 () Bool)

(assert (=> b!2691912 (= condSetEmpty!21161 (= (_2!17882 (h!36462 mapDefault!16060)) ((as const (Array Context!4330 Bool)) false)))))

(assert (=> b!2691472 (= tp!851339 e!1697195)))

(declare-fun b!2691913 () Bool)

(declare-fun tp!851473 () Bool)

(assert (=> b!2691913 (= e!1697196 tp!851473)))

(declare-fun setElem!21161 () Context!4330)

(declare-fun e!1697197 () Bool)

(declare-fun tp!851476 () Bool)

(declare-fun setNonEmpty!21161 () Bool)

(assert (=> setNonEmpty!21161 (= setRes!21161 (and tp!851476 (inv!42090 setElem!21161) e!1697197))))

(declare-fun setRest!21161 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21161 (= (_2!17882 (h!36462 mapDefault!16060)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21161 true) setRest!21161))))

(declare-fun b!2691914 () Bool)

(declare-fun tp!851475 () Bool)

(assert (=> b!2691914 (= e!1697197 tp!851475)))

(assert (= b!2691912 b!2691913))

(assert (= (and b!2691912 condSetEmpty!21161) setIsEmpty!21161))

(assert (= (and b!2691912 (not condSetEmpty!21161)) setNonEmpty!21161))

(assert (= setNonEmpty!21161 b!2691914))

(assert (= (and b!2691472 ((_ is Cons!31042) mapDefault!16060)) b!2691912))

(declare-fun m!3070073 () Bool)

(assert (=> b!2691912 m!3070073))

(declare-fun m!3070075 () Bool)

(assert (=> setNonEmpty!21161 m!3070075))

(declare-fun e!1697211 () Bool)

(declare-fun e!1697213 () Bool)

(declare-fun b!2691930 () Bool)

(declare-fun tp!851500 () Bool)

(declare-fun setRes!21166 () Bool)

(declare-fun mapDefault!16066 () List!31143)

(assert (=> b!2691930 (= e!1697213 (and (inv!42090 (_1!17883 (_1!17884 (h!36463 mapDefault!16066)))) e!1697211 tp_is_empty!13849 setRes!21166 tp!851500))))

(declare-fun condSetEmpty!21166 () Bool)

(assert (=> b!2691930 (= condSetEmpty!21166 (= (_2!17884 (h!36463 mapDefault!16066)) ((as const (Array Context!4330 Bool)) false)))))

(declare-fun e!1697214 () Bool)

(declare-fun b!2691931 () Bool)

(declare-fun setRes!21167 () Bool)

(declare-fun mapValue!16066 () List!31143)

(declare-fun tp!851503 () Bool)

(declare-fun e!1697212 () Bool)

(assert (=> b!2691931 (= e!1697212 (and (inv!42090 (_1!17883 (_1!17884 (h!36463 mapValue!16066)))) e!1697214 tp_is_empty!13849 setRes!21167 tp!851503))))

(declare-fun condSetEmpty!21167 () Bool)

(assert (=> b!2691931 (= condSetEmpty!21167 (= (_2!17884 (h!36463 mapValue!16066)) ((as const (Array Context!4330 Bool)) false)))))

(declare-fun setNonEmpty!21166 () Bool)

(declare-fun e!1697215 () Bool)

(declare-fun tp!851498 () Bool)

(declare-fun setElem!21167 () Context!4330)

(assert (=> setNonEmpty!21166 (= setRes!21167 (and tp!851498 (inv!42090 setElem!21167) e!1697215))))

(declare-fun setRest!21166 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21166 (= (_2!17884 (h!36463 mapValue!16066)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21167 true) setRest!21166))))

(declare-fun tp!851495 () Bool)

(declare-fun setNonEmpty!21167 () Bool)

(declare-fun e!1697210 () Bool)

(declare-fun setElem!21166 () Context!4330)

(assert (=> setNonEmpty!21167 (= setRes!21166 (and tp!851495 (inv!42090 setElem!21166) e!1697210))))

(declare-fun setRest!21167 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21167 (= (_2!17884 (h!36463 mapDefault!16066)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21166 true) setRest!21167))))

(declare-fun mapNonEmpty!16066 () Bool)

(declare-fun mapRes!16066 () Bool)

(declare-fun tp!851501 () Bool)

(assert (=> mapNonEmpty!16066 (= mapRes!16066 (and tp!851501 e!1697212))))

(declare-fun mapRest!16066 () (Array (_ BitVec 32) List!31143))

(declare-fun mapKey!16066 () (_ BitVec 32))

(assert (=> mapNonEmpty!16066 (= mapRest!16060 (store mapRest!16066 mapKey!16066 mapValue!16066))))

(declare-fun setIsEmpty!21166 () Bool)

(assert (=> setIsEmpty!21166 setRes!21167))

(declare-fun mapIsEmpty!16066 () Bool)

(assert (=> mapIsEmpty!16066 mapRes!16066))

(declare-fun b!2691932 () Bool)

(declare-fun tp!851497 () Bool)

(assert (=> b!2691932 (= e!1697211 tp!851497)))

(declare-fun setIsEmpty!21167 () Bool)

(assert (=> setIsEmpty!21167 setRes!21166))

(declare-fun b!2691929 () Bool)

(declare-fun tp!851496 () Bool)

(assert (=> b!2691929 (= e!1697214 tp!851496)))

(declare-fun condMapEmpty!16066 () Bool)

(assert (=> mapNonEmpty!16060 (= condMapEmpty!16066 (= mapRest!16060 ((as const (Array (_ BitVec 32) List!31143)) mapDefault!16066)))))

(assert (=> mapNonEmpty!16060 (= tp!851330 (and e!1697213 mapRes!16066))))

(declare-fun b!2691933 () Bool)

(declare-fun tp!851502 () Bool)

(assert (=> b!2691933 (= e!1697210 tp!851502)))

(declare-fun b!2691934 () Bool)

(declare-fun tp!851499 () Bool)

(assert (=> b!2691934 (= e!1697215 tp!851499)))

(assert (= (and mapNonEmpty!16060 condMapEmpty!16066) mapIsEmpty!16066))

(assert (= (and mapNonEmpty!16060 (not condMapEmpty!16066)) mapNonEmpty!16066))

(assert (= b!2691931 b!2691929))

(assert (= (and b!2691931 condSetEmpty!21167) setIsEmpty!21166))

(assert (= (and b!2691931 (not condSetEmpty!21167)) setNonEmpty!21166))

(assert (= setNonEmpty!21166 b!2691934))

(assert (= (and mapNonEmpty!16066 ((_ is Cons!31043) mapValue!16066)) b!2691931))

(assert (= b!2691930 b!2691932))

(assert (= (and b!2691930 condSetEmpty!21166) setIsEmpty!21167))

(assert (= (and b!2691930 (not condSetEmpty!21166)) setNonEmpty!21167))

(assert (= setNonEmpty!21167 b!2691933))

(assert (= (and mapNonEmpty!16060 ((_ is Cons!31043) mapDefault!16066)) b!2691930))

(declare-fun m!3070077 () Bool)

(assert (=> b!2691931 m!3070077))

(declare-fun m!3070079 () Bool)

(assert (=> b!2691930 m!3070079))

(declare-fun m!3070081 () Bool)

(assert (=> setNonEmpty!21166 m!3070081))

(declare-fun m!3070083 () Bool)

(assert (=> setNonEmpty!21167 m!3070083))

(declare-fun m!3070085 () Bool)

(assert (=> mapNonEmpty!16066 m!3070085))

(declare-fun e!1697218 () Bool)

(assert (=> mapNonEmpty!16060 (= tp!851334 e!1697218)))

(declare-fun e!1697216 () Bool)

(declare-fun setRes!21168 () Bool)

(declare-fun setElem!21168 () Context!4330)

(declare-fun setNonEmpty!21168 () Bool)

(declare-fun tp!851506 () Bool)

(assert (=> setNonEmpty!21168 (= setRes!21168 (and tp!851506 (inv!42090 setElem!21168) e!1697216))))

(declare-fun setRest!21168 () (InoxSet Context!4330))

(assert (=> setNonEmpty!21168 (= (_2!17884 (h!36463 mapValue!16060)) ((_ map or) (store ((as const (Array Context!4330 Bool)) false) setElem!21168 true) setRest!21168))))

(declare-fun setIsEmpty!21168 () Bool)

(assert (=> setIsEmpty!21168 setRes!21168))

(declare-fun b!2691935 () Bool)

(declare-fun tp!851504 () Bool)

(assert (=> b!2691935 (= e!1697216 tp!851504)))

(declare-fun b!2691936 () Bool)

(declare-fun e!1697217 () Bool)

(declare-fun tp!851507 () Bool)

(assert (=> b!2691936 (= e!1697217 tp!851507)))

(declare-fun b!2691937 () Bool)

(declare-fun tp!851505 () Bool)

(assert (=> b!2691937 (= e!1697218 (and (inv!42090 (_1!17883 (_1!17884 (h!36463 mapValue!16060)))) e!1697217 tp_is_empty!13849 setRes!21168 tp!851505))))

(declare-fun condSetEmpty!21168 () Bool)

(assert (=> b!2691937 (= condSetEmpty!21168 (= (_2!17884 (h!36463 mapValue!16060)) ((as const (Array Context!4330 Bool)) false)))))

(assert (= b!2691937 b!2691936))

(assert (= (and b!2691937 condSetEmpty!21168) setIsEmpty!21168))

(assert (= (and b!2691937 (not condSetEmpty!21168)) setNonEmpty!21168))

(assert (= setNonEmpty!21168 b!2691935))

(assert (= (and mapNonEmpty!16060 ((_ is Cons!31043) mapValue!16060)) b!2691937))

(declare-fun m!3070087 () Bool)

(assert (=> setNonEmpty!21168 m!3070087))

(declare-fun m!3070089 () Bool)

(assert (=> b!2691937 m!3070089))

(declare-fun e!1697220 () Bool)

(declare-fun tp!851509 () Bool)

(declare-fun tp!851508 () Bool)

(declare-fun b!2691938 () Bool)

(assert (=> b!2691938 (= e!1697220 (and (inv!42079 (left!23944 (c!433873 input!780))) tp!851509 (inv!42079 (right!24274 (c!433873 input!780))) tp!851508))))

(declare-fun b!2691940 () Bool)

(declare-fun e!1697219 () Bool)

(declare-fun tp!851510 () Bool)

(assert (=> b!2691940 (= e!1697219 tp!851510)))

(declare-fun b!2691939 () Bool)

(assert (=> b!2691939 (= e!1697220 (and (inv!42091 (xs!12743 (c!433873 input!780))) e!1697219))))

(assert (=> b!2691462 (= tp!851335 (and (inv!42079 (c!433873 input!780)) e!1697220))))

(assert (= (and b!2691462 ((_ is Node!9707) (c!433873 input!780))) b!2691938))

(assert (= b!2691939 b!2691940))

(assert (= (and b!2691462 ((_ is Leaf!14821) (c!433873 input!780))) b!2691939))

(declare-fun m!3070091 () Bool)

(assert (=> b!2691938 m!3070091))

(declare-fun m!3070093 () Bool)

(assert (=> b!2691938 m!3070093))

(declare-fun m!3070095 () Bool)

(assert (=> b!2691939 m!3070095))

(assert (=> b!2691462 m!3069197))

(check-sat (not d!771326) (not d!771254) (not b_next!76727) (not b!2691700) (not b!2691827) (not b!2691882) (not d!771370) (not d!771334) (not d!771372) b_and!199119 (not b!2691478) (not b!2691675) (not mapNonEmpty!16063) (not b!2691849) (not d!771354) (not b_next!76723) (not b!2691701) (not b!2691758) (not b!2691648) (not b!2691622) (not d!771236) (not b!2691769) (not b!2691912) (not setNonEmpty!21166) (not setNonEmpty!21150) (not d!771350) (not d!771376) (not b!2691589) (not b!2691936) (not b!2691868) (not setNonEmpty!21157) (not d!771248) (not b!2691568) (not b!2691697) (not b!2691853) (not d!771252) (not b!2691763) (not b!2691542) (not d!771280) (not b!2691805) (not b!2691539) (not b!2691565) (not b!2691730) (not b!2691764) (not b!2691851) (not b!2691774) (not b!2691771) (not d!771272) (not b!2691807) (not d!771246) (not b!2691511) (not b!2691717) (not b!2691854) (not bm!173376) (not b!2691932) (not b!2691848) (not d!771312) (not b!2691780) (not d!771296) (not setNonEmpty!21161) (not d!771336) (not b!2691759) (not b!2691590) (not b!2691734) (not b!2691649) (not b!2691716) (not d!771340) (not b!2691713) (not b!2691505) (not b!2691900) (not b!2691567) (not b!2691940) (not b!2691682) (not bm!173375) (not d!771278) (not b_next!76725) (not d!771244) (not b!2691728) (not b!2691541) (not b!2691822) (not b!2691895) (not b!2691656) (not d!771374) (not b!2691865) (not b!2691836) (not b_next!76731) (not mapNonEmpty!16066) (not d!771362) (not b!2691624) (not b!2691798) (not b!2691503) (not b_lambda!82137) (not b_next!76717) (not b!2691869) (not d!771322) (not d!771352) (not b!2691786) (not b!2691838) (not b!2691733) (not b!2691704) (not b!2691929) b_and!199135 (not b!2691740) (not d!771304) (not b!2691522) (not d!771282) (not d!771258) (not b!2691521) (not d!771338) (not b!2691781) (not b!2691671) (not setNonEmpty!21160) (not b!2691852) (not setNonEmpty!21168) (not b!2691611) (not b!2691706) b_and!199129 (not b!2691855) (not d!771308) (not d!771342) (not b!2691899) (not b!2691480) (not b!2691776) (not d!771276) (not b!2691690) (not d!771250) (not b!2691653) (not b!2691652) (not b!2691738) (not b!2691564) (not d!771318) (not b!2691693) (not b!2691715) (not b!2691850) (not b!2691620) (not b!2691837) (not b!2691777) (not setNonEmpty!21153) (not b!2691872) (not d!771358) (not d!771288) (not b_next!76729) (not b!2691745) (not b!2691939) b_and!199123 (not b!2691824) (not b!2691685) (not b!2691677) (not b!2691610) (not b_next!76721) (not b!2691676) (not b!2691702) (not b!2691870) (not setNonEmpty!21149) (not b!2691681) (not setNonEmpty!21158) (not b!2691867) (not b!2691935) (not b!2691747) (not b!2691761) b_and!199133 tp_is_empty!13849 (not d!771270) (not b!2691770) (not b!2691563) (not b!2691931) (not b!2691687) (not b!2691462) (not b!2691636) (not d!771262) (not b!2691746) (not b!2691795) (not bm!173372) (not b!2691823) (not b!2691502) (not b!2691621) (not b!2691785) (not b!2691744) (not d!771324) (not b!2691743) (not b!2691760) (not b!2691748) (not d!771332) (not b!2691566) (not d!771242) (not d!771348) (not b!2691793) b_and!199125 (not b!2691670) (not d!771384) (not b!2691657) (not b!2691757) (not b!2691825) (not d!771386) (not b!2691577) (not d!771238) (not b!2691703) (not b!2691623) (not b!2691741) (not b!2691796) (not b!2691592) (not b!2691719) (not b!2691871) (not d!771366) (not b!2691913) (not b!2691938) (not d!771284) b_and!199121 (not b!2691678) (not b!2691767) (not b!2691683) (not d!771356) (not b!2691937) (not b!2691765) (not b!2691506) (not tb!151017) (not b!2691772) (not b!2691866) (not d!771346) (not b!2691714) (not b!2691934) (not d!771320) (not d!771302) (not d!771368) (not d!771306) (not b!2691508) (not b!2691914) (not b!2691608) (not b!2691575) (not b!2691881) (not tb!151019) (not b!2691910) (not b!2691694) (not b!2691804) (not b!2691731) (not b!2691897) (not d!771310) (not b!2691768) (not d!771292) (not d!771316) (not b_lambda!82135) (not b!2691729) (not b!2691626) (not b!2691801) (not d!771392) (not d!771290) (not setNonEmpty!21167) (not b!2691711) (not b_next!76719) (not b!2691637) (not setNonEmpty!21159) (not b!2691562) (not b!2691540) (not b!2691933) (not b!2691698) (not d!771286) (not d!771328) (not b!2691612) (not d!771256) (not b!2691718) (not b!2691864) (not b!2691689) (not d!771364) (not b!2691896) (not b!2691847) (not b!2691672) (not b!2691588) (not b!2691826) (not d!771330) (not b!2691783) (not d!771294) (not d!771344) (not b!2691684) (not d!771314) (not b!2691909) (not b!2691898) (not d!771360) (not b!2691930) (not b!2691475) (not b!2691782) (not b!2691762) (not b!2691523) b_and!199137 (not b!2691883) (not b!2691619) (not b!2691616) (not d!771394) (not setNonEmpty!21156) (not b!2691779) (not b!2691504))
(check-sat (not b_next!76727) b_and!199119 (not b_next!76723) (not b_next!76725) (not b_next!76731) (not b_next!76717) b_and!199135 b_and!199129 (not b_next!76721) b_and!199133 b_and!199125 b_and!199121 (not b_next!76719) b_and!199137 b_and!199123 (not b_next!76729))
