; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!411602 () Bool)

(assert start!411602)

(declare-fun b!4284247 () Bool)

(declare-fun b_free!126907 () Bool)

(declare-fun b_next!127611 () Bool)

(assert (=> b!4284247 (= b_free!126907 (not b_next!127611))))

(declare-fun tp!1311031 () Bool)

(declare-fun b_and!338109 () Bool)

(assert (=> b!4284247 (= tp!1311031 b_and!338109)))

(declare-fun b!4284263 () Bool)

(declare-fun b_free!126909 () Bool)

(declare-fun b_next!127613 () Bool)

(assert (=> b!4284263 (= b_free!126909 (not b_next!127613))))

(declare-fun tp!1311029 () Bool)

(declare-fun b_and!338111 () Bool)

(assert (=> b!4284263 (= tp!1311029 b_and!338111)))

(declare-fun b!4284258 () Bool)

(declare-fun b_free!126911 () Bool)

(declare-fun b_next!127615 () Bool)

(assert (=> b!4284258 (= b_free!126911 (not b_next!127615))))

(declare-fun tp!1311032 () Bool)

(declare-fun b_and!338113 () Bool)

(assert (=> b!4284258 (= tp!1311032 b_and!338113)))

(declare-fun b!4284235 () Bool)

(declare-fun b_free!126913 () Bool)

(declare-fun b_next!127617 () Bool)

(assert (=> b!4284235 (= b_free!126913 (not b_next!127617))))

(declare-fun tp!1311038 () Bool)

(declare-fun b_and!338115 () Bool)

(assert (=> b!4284235 (= tp!1311038 b_and!338115)))

(declare-fun b!4284240 () Bool)

(declare-fun b_free!126915 () Bool)

(declare-fun b_next!127619 () Bool)

(assert (=> b!4284240 (= b_free!126915 (not b_next!127619))))

(declare-fun tp!1311046 () Bool)

(declare-fun b_and!338117 () Bool)

(assert (=> b!4284240 (= tp!1311046 b_and!338117)))

(declare-fun b!4284264 () Bool)

(declare-fun b_free!126917 () Bool)

(declare-fun b_next!127621 () Bool)

(assert (=> b!4284264 (= b_free!126917 (not b_next!127621))))

(declare-fun tp!1311028 () Bool)

(declare-fun b_and!338119 () Bool)

(assert (=> b!4284264 (= tp!1311028 b_and!338119)))

(declare-fun b!4284250 () Bool)

(declare-fun b_free!126919 () Bool)

(declare-fun b_next!127623 () Bool)

(assert (=> b!4284250 (= b_free!126919 (not b_next!127623))))

(declare-fun tp!1311045 () Bool)

(declare-fun b_and!338121 () Bool)

(assert (=> b!4284250 (= tp!1311045 b_and!338121)))

(declare-fun b_free!126921 () Bool)

(declare-fun b_next!127625 () Bool)

(assert (=> b!4284250 (= b_free!126921 (not b_next!127625))))

(declare-fun tp!1311035 () Bool)

(declare-fun b_and!338123 () Bool)

(assert (=> b!4284250 (= tp!1311035 b_and!338123)))

(declare-fun b!4284236 () Bool)

(declare-fun e!2660126 () Bool)

(declare-datatypes ((C!26020 0))(
  ( (C!26021 (val!15336 Int)) )
))
(declare-datatypes ((List!47597 0))(
  ( (Nil!47473) (Cons!47473 (h!52893 C!26020) (t!354186 List!47597)) )
))
(declare-datatypes ((IArray!28769 0))(
  ( (IArray!28770 (innerList!14442 List!47597)) )
))
(declare-datatypes ((Conc!14354 0))(
  ( (Node!14354 (left!35338 Conc!14354) (right!35668 Conc!14354) (csize!28938 Int) (cheight!14565 Int)) (Leaf!22211 (xs!17660 IArray!28769) (csize!28939 Int)) (Empty!14354) )
))
(declare-datatypes ((BalanceConc!28198 0))(
  ( (BalanceConc!28199 (c!730032 Conc!14354)) )
))
(declare-fun totalInput!528 () BalanceConc!28198)

(declare-fun tp!1311044 () Bool)

(declare-fun inv!62913 (Conc!14354) Bool)

(assert (=> b!4284236 (= e!2660126 (and (inv!62913 (c!730032 totalInput!528)) tp!1311044))))

(declare-fun b!4284237 () Bool)

(declare-fun e!2660138 () Bool)

(declare-fun e!2660121 () Bool)

(assert (=> b!4284237 (= e!2660138 e!2660121)))

(declare-fun mapIsEmpty!19371 () Bool)

(declare-fun mapRes!19373 () Bool)

(assert (=> mapIsEmpty!19371 mapRes!19373))

(declare-datatypes ((List!47598 0))(
  ( (Nil!47474) (Cons!47474 (h!52894 (_ BitVec 16)) (t!354187 List!47598)) )
))
(declare-datatypes ((TokenValue!8312 0))(
  ( (FloatLiteralValue!16624 (text!58629 List!47598)) (TokenValueExt!8311 (__x!28859 Int)) (Broken!41560 (value!250850 List!47598)) (Object!8435) (End!8312) (Def!8312) (Underscore!8312) (Match!8312) (Else!8312) (Error!8312) (Case!8312) (If!8312) (Extends!8312) (Abstract!8312) (Class!8312) (Val!8312) (DelimiterValue!16624 (del!8372 List!47598)) (KeywordValue!8318 (value!250851 List!47598)) (CommentValue!16624 (value!250852 List!47598)) (WhitespaceValue!16624 (value!250853 List!47598)) (IndentationValue!8312 (value!250854 List!47598)) (String!55557) (Int32!8312) (Broken!41561 (value!250855 List!47598)) (Boolean!8313) (Unit!66370) (OperatorValue!8315 (op!8372 List!47598)) (IdentifierValue!16624 (value!250856 List!47598)) (IdentifierValue!16625 (value!250857 List!47598)) (WhitespaceValue!16625 (value!250858 List!47598)) (True!16624) (False!16624) (Broken!41562 (value!250859 List!47598)) (Broken!41563 (value!250860 List!47598)) (True!16625) (RightBrace!8312) (RightBracket!8312) (Colon!8312) (Null!8312) (Comma!8312) (LeftBracket!8312) (False!16625) (LeftBrace!8312) (ImaginaryLiteralValue!8312 (text!58630 List!47598)) (StringLiteralValue!24936 (value!250861 List!47598)) (EOFValue!8312 (value!250862 List!47598)) (IdentValue!8312 (value!250863 List!47598)) (DelimiterValue!16625 (value!250864 List!47598)) (DedentValue!8312 (value!250865 List!47598)) (NewLineValue!8312 (value!250866 List!47598)) (IntegerValue!24936 (value!250867 (_ BitVec 32)) (text!58631 List!47598)) (IntegerValue!24937 (value!250868 Int) (text!58632 List!47598)) (Times!8312) (Or!8312) (Equal!8312) (Minus!8312) (Broken!41564 (value!250869 List!47598)) (And!8312) (Div!8312) (LessEqual!8312) (Mod!8312) (Concat!21223) (Not!8312) (Plus!8312) (SpaceValue!8312 (value!250870 List!47598)) (IntegerValue!24938 (value!250871 Int) (text!58633 List!47598)) (StringLiteralValue!24937 (text!58634 List!47598)) (FloatLiteralValue!16625 (text!58635 List!47598)) (BytesLiteralValue!8312 (value!250872 List!47598)) (CommentValue!16625 (value!250873 List!47598)) (StringLiteralValue!24938 (value!250874 List!47598)) (ErrorTokenValue!8312 (msg!8373 List!47598)) )
))
(declare-datatypes ((Regex!12911 0))(
  ( (ElementMatch!12911 (c!730033 C!26020)) (Concat!21224 (regOne!26334 Regex!12911) (regTwo!26334 Regex!12911)) (EmptyExpr!12911) (Star!12911 (reg!13240 Regex!12911)) (EmptyLang!12911) (Union!12911 (regOne!26335 Regex!12911) (regTwo!26335 Regex!12911)) )
))
(declare-datatypes ((String!55558 0))(
  ( (String!55559 (value!250875 String)) )
))
(declare-datatypes ((TokenValueInjection!15932 0))(
  ( (TokenValueInjection!15933 (toValue!10853 Int) (toChars!10712 Int)) )
))
(declare-datatypes ((Rule!15804 0))(
  ( (Rule!15805 (regex!8002 Regex!12911) (tag!8866 String!55558) (isSeparator!8002 Bool) (transformation!8002 TokenValueInjection!15932)) )
))
(declare-fun rule!232 () Rule!15804)

(declare-fun tp!1311037 () Bool)

(declare-fun b!4284238 () Bool)

(declare-fun e!2660131 () Bool)

(declare-fun e!2660133 () Bool)

(declare-fun inv!62912 (String!55558) Bool)

(declare-fun inv!62914 (TokenValueInjection!15932) Bool)

(assert (=> b!4284238 (= e!2660133 (and tp!1311037 (inv!62912 (tag!8866 rule!232)) (inv!62914 (transformation!8002 rule!232)) e!2660131))))

(declare-fun b!4284239 () Bool)

(declare-fun e!2660140 () Bool)

(declare-fun e!2660135 () Bool)

(assert (=> b!4284239 (= e!2660140 e!2660135)))

(declare-fun tp!1311020 () Bool)

(declare-fun e!2660134 () Bool)

(declare-fun tp!1311027 () Bool)

(declare-datatypes ((List!47599 0))(
  ( (Nil!47475) (Cons!47475 (h!52895 Regex!12911) (t!354188 List!47599)) )
))
(declare-datatypes ((Context!5602 0))(
  ( (Context!5603 (exprs!3301 List!47599)) )
))
(declare-datatypes ((tuple2!44864 0))(
  ( (tuple2!44865 (_1!25580 Context!5602) (_2!25580 C!26020)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!44866 0))(
  ( (tuple2!44867 (_1!25581 tuple2!44864) (_2!25581 (InoxSet Context!5602))) )
))
(declare-datatypes ((List!47600 0))(
  ( (Nil!47476) (Cons!47476 (h!52896 tuple2!44866) (t!354189 List!47600)) )
))
(declare-datatypes ((array!15364 0))(
  ( (array!15365 (arr!6860 (Array (_ BitVec 32) (_ BitVec 64))) (size!34793 (_ BitVec 32))) )
))
(declare-datatypes ((array!15366 0))(
  ( (array!15367 (arr!6861 (Array (_ BitVec 32) List!47600)) (size!34794 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8564 0))(
  ( (LongMapFixedSize!8565 (defaultEntry!4667 Int) (mask!12707 (_ BitVec 32)) (extraKeys!4531 (_ BitVec 32)) (zeroValue!4541 List!47600) (minValue!4541 List!47600) (_size!8607 (_ BitVec 32)) (_keys!4582 array!15364) (_values!4563 array!15366) (_vacant!4343 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16937 0))(
  ( (Cell!16938 (v!41372 LongMapFixedSize!8564)) )
))
(declare-datatypes ((MutLongMap!4282 0))(
  ( (LongMap!4282 (underlying!8793 Cell!16937)) (MutLongMapExt!4281 (__x!28860 Int)) )
))
(declare-datatypes ((Cell!16939 0))(
  ( (Cell!16940 (v!41373 MutLongMap!4282)) )
))
(declare-datatypes ((Hashable!4198 0))(
  ( (HashableExt!4197 (__x!28861 Int)) )
))
(declare-datatypes ((MutableMap!4188 0))(
  ( (MutableMapExt!4187 (__x!28862 Int)) (HashMap!4188 (underlying!8794 Cell!16939) (hashF!6230 Hashable!4198) (_size!8608 (_ BitVec 32)) (defaultValue!4359 Int)) )
))
(declare-datatypes ((CacheUp!2734 0))(
  ( (CacheUp!2735 (cache!4328 MutableMap!4188)) )
))
(declare-fun cacheUp!725 () CacheUp!2734)

(declare-fun e!2660117 () Bool)

(declare-fun array_inv!4913 (array!15364) Bool)

(declare-fun array_inv!4914 (array!15366) Bool)

(assert (=> b!4284240 (= e!2660117 (and tp!1311046 tp!1311020 tp!1311027 (array_inv!4913 (_keys!4582 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) (array_inv!4914 (_values!4563 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) e!2660134))))

(declare-fun e!2660112 () Bool)

(declare-fun b!4284241 () Bool)

(declare-fun input!1632 () BalanceConc!28198)

(declare-datatypes ((Hashable!4199 0))(
  ( (HashableExt!4198 (__x!28863 Int)) )
))
(declare-datatypes ((tuple3!5346 0))(
  ( (tuple3!5347 (_1!25582 Regex!12911) (_2!25582 Context!5602) (_3!3148 C!26020)) )
))
(declare-datatypes ((tuple2!44868 0))(
  ( (tuple2!44869 (_1!25583 tuple3!5346) (_2!25583 (InoxSet Context!5602))) )
))
(declare-datatypes ((List!47601 0))(
  ( (Nil!47477) (Cons!47477 (h!52897 tuple2!44868) (t!354190 List!47601)) )
))
(declare-datatypes ((array!15368 0))(
  ( (array!15369 (arr!6862 (Array (_ BitVec 32) List!47601)) (size!34795 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8566 0))(
  ( (LongMapFixedSize!8567 (defaultEntry!4668 Int) (mask!12708 (_ BitVec 32)) (extraKeys!4532 (_ BitVec 32)) (zeroValue!4542 List!47601) (minValue!4542 List!47601) (_size!8609 (_ BitVec 32)) (_keys!4583 array!15364) (_values!4564 array!15368) (_vacant!4344 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16941 0))(
  ( (Cell!16942 (v!41374 LongMapFixedSize!8566)) )
))
(declare-datatypes ((MutLongMap!4283 0))(
  ( (LongMap!4283 (underlying!8795 Cell!16941)) (MutLongMapExt!4282 (__x!28864 Int)) )
))
(declare-datatypes ((Cell!16943 0))(
  ( (Cell!16944 (v!41375 MutLongMap!4283)) )
))
(declare-datatypes ((MutableMap!4189 0))(
  ( (MutableMapExt!4188 (__x!28865 Int)) (HashMap!4189 (underlying!8796 Cell!16943) (hashF!6231 Hashable!4199) (_size!8610 (_ BitVec 32)) (defaultValue!4360 Int)) )
))
(declare-datatypes ((CacheDown!2854 0))(
  ( (CacheDown!2855 (cache!4329 MutableMap!4189)) )
))
(declare-fun cacheDown!738 () CacheDown!2854)

(declare-datatypes ((Hashable!4200 0))(
  ( (HashableExt!4199 (__x!28866 Int)) )
))
(declare-datatypes ((tuple2!44870 0))(
  ( (tuple2!44871 (_1!25584 (InoxSet Context!5602)) (_2!25584 Int)) )
))
(declare-datatypes ((tuple2!44872 0))(
  ( (tuple2!44873 (_1!25585 tuple2!44870) (_2!25585 Int)) )
))
(declare-datatypes ((List!47602 0))(
  ( (Nil!47478) (Cons!47478 (h!52898 tuple2!44872) (t!354191 List!47602)) )
))
(declare-datatypes ((array!15370 0))(
  ( (array!15371 (arr!6863 (Array (_ BitVec 32) List!47602)) (size!34796 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8568 0))(
  ( (LongMapFixedSize!8569 (defaultEntry!4669 Int) (mask!12709 (_ BitVec 32)) (extraKeys!4533 (_ BitVec 32)) (zeroValue!4543 List!47602) (minValue!4543 List!47602) (_size!8611 (_ BitVec 32)) (_keys!4584 array!15364) (_values!4565 array!15370) (_vacant!4345 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16945 0))(
  ( (Cell!16946 (v!41376 LongMapFixedSize!8568)) )
))
(declare-datatypes ((MutLongMap!4284 0))(
  ( (LongMap!4284 (underlying!8797 Cell!16945)) (MutLongMapExt!4283 (__x!28867 Int)) )
))
(declare-datatypes ((Cell!16947 0))(
  ( (Cell!16948 (v!41377 MutLongMap!4284)) )
))
(declare-datatypes ((MutableMap!4190 0))(
  ( (MutableMapExt!4189 (__x!28868 Int)) (HashMap!4190 (underlying!8798 Cell!16947) (hashF!6232 Hashable!4200) (_size!8612 (_ BitVec 32)) (defaultValue!4361 Int)) )
))
(declare-datatypes ((CacheFindLongestMatch!396 0))(
  ( (CacheFindLongestMatch!397 (cache!4330 MutableMap!4190) (totalInput!4297 BalanceConc!28198)) )
))
(declare-fun cacheFindLongestMatch!156 () CacheFindLongestMatch!396)

(declare-datatypes ((tuple2!44874 0))(
  ( (tuple2!44875 (_1!25586 BalanceConc!28198) (_2!25586 BalanceConc!28198)) )
))
(declare-datatypes ((tuple4!950 0))(
  ( (tuple4!951 (_1!25587 tuple2!44874) (_2!25587 CacheUp!2734) (_3!3149 CacheDown!2854) (_4!475 CacheFindLongestMatch!396)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2Mem!41 (Regex!12911 BalanceConc!28198 BalanceConc!28198 CacheUp!2734 CacheDown!2854 CacheFindLongestMatch!396) tuple4!950)

(declare-fun findLongestMatchWithZipperSequenceV2!118 (Regex!12911 BalanceConc!28198 BalanceConc!28198) tuple2!44874)

(assert (=> b!4284241 (= e!2660112 (not (= (_1!25587 (findLongestMatchWithZipperSequenceV2Mem!41 (regex!8002 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156)) (findLongestMatchWithZipperSequenceV2!118 (regex!8002 rule!232) input!1632 totalInput!528))))))

(declare-fun mapNonEmpty!19371 () Bool)

(declare-fun tp!1311024 () Bool)

(declare-fun tp!1311036 () Bool)

(assert (=> mapNonEmpty!19371 (= mapRes!19373 (and tp!1311024 tp!1311036))))

(declare-fun mapValue!19373 () List!47600)

(declare-fun mapKey!19372 () (_ BitVec 32))

(declare-fun mapRest!19372 () (Array (_ BitVec 32) List!47600))

(assert (=> mapNonEmpty!19371 (= (arr!6861 (_values!4563 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) (store mapRest!19372 mapKey!19372 mapValue!19373))))

(declare-fun b!4284242 () Bool)

(declare-fun e!2660116 () Bool)

(declare-fun tp!1311030 () Bool)

(declare-fun mapRes!19371 () Bool)

(assert (=> b!4284242 (= e!2660116 (and tp!1311030 mapRes!19371))))

(declare-fun condMapEmpty!19371 () Bool)

(declare-fun mapDefault!19372 () List!47602)

(assert (=> b!4284242 (= condMapEmpty!19371 (= (arr!6863 (_values!4565 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) ((as const (Array (_ BitVec 32) List!47602)) mapDefault!19372)))))

(declare-fun mapNonEmpty!19372 () Bool)

(declare-fun mapRes!19372 () Bool)

(declare-fun tp!1311041 () Bool)

(declare-fun tp!1311039 () Bool)

(assert (=> mapNonEmpty!19372 (= mapRes!19372 (and tp!1311041 tp!1311039))))

(declare-fun mapRest!19371 () (Array (_ BitVec 32) List!47601))

(declare-fun mapKey!19373 () (_ BitVec 32))

(declare-fun mapValue!19371 () List!47601)

(assert (=> mapNonEmpty!19372 (= (arr!6862 (_values!4564 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) (store mapRest!19371 mapKey!19373 mapValue!19371))))

(declare-fun b!4284243 () Bool)

(declare-fun e!2660136 () Bool)

(declare-fun tp!1311023 () Bool)

(assert (=> b!4284243 (= e!2660136 (and (inv!62913 (c!730032 (totalInput!4297 cacheFindLongestMatch!156))) tp!1311023))))

(declare-fun b!4284244 () Bool)

(declare-fun e!2660125 () Bool)

(declare-fun e!2660113 () Bool)

(declare-fun lt!1515570 () MutLongMap!4283)

(get-info :version)

(assert (=> b!4284244 (= e!2660125 (and e!2660113 ((_ is LongMap!4283) lt!1515570)))))

(assert (=> b!4284244 (= lt!1515570 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))

(declare-fun b!4284245 () Bool)

(declare-fun res!1757972 () Bool)

(assert (=> b!4284245 (=> (not res!1757972) (not e!2660112))))

(declare-fun valid!3325 (CacheFindLongestMatch!396) Bool)

(assert (=> b!4284245 (= res!1757972 (valid!3325 cacheFindLongestMatch!156))))

(declare-fun b!4284246 () Bool)

(declare-fun res!1757971 () Bool)

(assert (=> b!4284246 (=> (not res!1757971) (not e!2660112))))

(declare-fun isSuffix!1009 (List!47597 List!47597) Bool)

(declare-fun list!17320 (BalanceConc!28198) List!47597)

(assert (=> b!4284246 (= res!1757971 (isSuffix!1009 (list!17320 input!1632) (list!17320 totalInput!528)))))

(declare-fun e!2660142 () Bool)

(declare-fun e!2660118 () Bool)

(assert (=> b!4284247 (= e!2660142 (and e!2660118 tp!1311031))))

(assert (=> b!4284235 (= e!2660121 (and e!2660125 tp!1311038))))

(declare-fun res!1757973 () Bool)

(assert (=> start!411602 (=> (not res!1757973) (not e!2660112))))

(declare-datatypes ((LexerInterface!7596 0))(
  ( (LexerInterfaceExt!7593 (__x!28869 Int)) (Lexer!7594) )
))
(declare-fun thiss!16356 () LexerInterface!7596)

(assert (=> start!411602 (= res!1757973 ((_ is Lexer!7594) thiss!16356))))

(assert (=> start!411602 e!2660112))

(assert (=> start!411602 true))

(assert (=> start!411602 e!2660133))

(declare-fun e!2660141 () Bool)

(declare-fun inv!62915 (BalanceConc!28198) Bool)

(assert (=> start!411602 (and (inv!62915 input!1632) e!2660141)))

(declare-fun inv!62916 (CacheDown!2854) Bool)

(assert (=> start!411602 (and (inv!62916 cacheDown!738) e!2660138)))

(declare-fun e!2660129 () Bool)

(declare-fun inv!62917 (CacheFindLongestMatch!396) Bool)

(assert (=> start!411602 (and (inv!62917 cacheFindLongestMatch!156) e!2660129)))

(assert (=> start!411602 (and (inv!62915 totalInput!528) e!2660126)))

(declare-fun e!2660123 () Bool)

(declare-fun inv!62918 (CacheUp!2734) Bool)

(assert (=> start!411602 (and (inv!62918 cacheUp!725) e!2660123)))

(declare-fun b!4284248 () Bool)

(declare-fun tp!1311025 () Bool)

(assert (=> b!4284248 (= e!2660134 (and tp!1311025 mapRes!19373))))

(declare-fun condMapEmpty!19372 () Bool)

(declare-fun mapDefault!19371 () List!47600)

(assert (=> b!4284248 (= condMapEmpty!19372 (= (arr!6861 (_values!4563 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) ((as const (Array (_ BitVec 32) List!47600)) mapDefault!19371)))))

(declare-fun b!4284249 () Bool)

(declare-fun tp!1311022 () Bool)

(assert (=> b!4284249 (= e!2660141 (and (inv!62913 (c!730032 input!1632)) tp!1311022))))

(assert (=> b!4284250 (= e!2660131 (and tp!1311045 tp!1311035))))

(declare-fun mapIsEmpty!19372 () Bool)

(assert (=> mapIsEmpty!19372 mapRes!19372))

(declare-fun b!4284251 () Bool)

(declare-fun res!1757969 () Bool)

(assert (=> b!4284251 (=> (not res!1757969) (not e!2660112))))

(declare-fun valid!3326 (CacheDown!2854) Bool)

(assert (=> b!4284251 (= res!1757969 (valid!3326 cacheDown!738))))

(declare-fun b!4284252 () Bool)

(declare-fun e!2660124 () Bool)

(declare-fun tp!1311042 () Bool)

(assert (=> b!4284252 (= e!2660124 (and tp!1311042 mapRes!19372))))

(declare-fun condMapEmpty!19373 () Bool)

(declare-fun mapDefault!19373 () List!47601)

(assert (=> b!4284252 (= condMapEmpty!19373 (= (arr!6862 (_values!4564 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) ((as const (Array (_ BitVec 32) List!47601)) mapDefault!19373)))))

(declare-fun b!4284253 () Bool)

(declare-fun e!2660127 () Bool)

(assert (=> b!4284253 (= e!2660123 e!2660127)))

(declare-fun b!4284254 () Bool)

(declare-fun e!2660115 () Bool)

(declare-fun e!2660120 () Bool)

(assert (=> b!4284254 (= e!2660115 e!2660120)))

(declare-fun b!4284255 () Bool)

(declare-fun e!2660128 () Bool)

(assert (=> b!4284255 (= e!2660135 e!2660128)))

(declare-fun mapNonEmpty!19373 () Bool)

(declare-fun tp!1311040 () Bool)

(declare-fun tp!1311043 () Bool)

(assert (=> mapNonEmpty!19373 (= mapRes!19371 (and tp!1311040 tp!1311043))))

(declare-fun mapValue!19372 () List!47602)

(declare-fun mapKey!19371 () (_ BitVec 32))

(declare-fun mapRest!19373 () (Array (_ BitVec 32) List!47602))

(assert (=> mapNonEmpty!19373 (= (arr!6863 (_values!4565 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) (store mapRest!19373 mapKey!19371 mapValue!19372))))

(declare-fun mapIsEmpty!19373 () Bool)

(assert (=> mapIsEmpty!19373 mapRes!19371))

(declare-fun b!4284256 () Bool)

(declare-fun e!2660137 () Bool)

(assert (=> b!4284256 (= e!2660137 e!2660117)))

(declare-fun b!4284257 () Bool)

(declare-fun res!1757970 () Bool)

(assert (=> b!4284257 (=> (not res!1757970) (not e!2660112))))

(assert (=> b!4284257 (= res!1757970 (= (totalInput!4297 cacheFindLongestMatch!156) totalInput!528))))

(declare-fun e!2660132 () Bool)

(assert (=> b!4284258 (= e!2660127 (and e!2660132 tp!1311032))))

(declare-fun b!4284259 () Bool)

(assert (=> b!4284259 (= e!2660129 (and e!2660142 (inv!62915 (totalInput!4297 cacheFindLongestMatch!156)) e!2660136))))

(declare-fun b!4284260 () Bool)

(declare-fun e!2660122 () Bool)

(declare-fun lt!1515569 () MutLongMap!4282)

(assert (=> b!4284260 (= e!2660132 (and e!2660122 ((_ is LongMap!4282) lt!1515569)))))

(assert (=> b!4284260 (= lt!1515569 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))

(declare-fun b!4284261 () Bool)

(assert (=> b!4284261 (= e!2660113 e!2660115)))

(declare-fun b!4284262 () Bool)

(declare-fun lt!1515568 () MutLongMap!4284)

(assert (=> b!4284262 (= e!2660118 (and e!2660140 ((_ is LongMap!4284) lt!1515568)))))

(assert (=> b!4284262 (= lt!1515568 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))

(declare-fun tp!1311033 () Bool)

(declare-fun tp!1311034 () Bool)

(declare-fun array_inv!4915 (array!15370) Bool)

(assert (=> b!4284263 (= e!2660128 (and tp!1311029 tp!1311033 tp!1311034 (array_inv!4913 (_keys!4584 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) (array_inv!4915 (_values!4565 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) e!2660116))))

(declare-fun tp!1311026 () Bool)

(declare-fun tp!1311021 () Bool)

(declare-fun array_inv!4916 (array!15368) Bool)

(assert (=> b!4284264 (= e!2660120 (and tp!1311028 tp!1311026 tp!1311021 (array_inv!4913 (_keys!4583 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) (array_inv!4916 (_values!4564 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) e!2660124))))

(declare-fun b!4284265 () Bool)

(declare-fun res!1757974 () Bool)

(assert (=> b!4284265 (=> (not res!1757974) (not e!2660112))))

(declare-fun valid!3327 (CacheUp!2734) Bool)

(assert (=> b!4284265 (= res!1757974 (valid!3327 cacheUp!725))))

(declare-fun b!4284266 () Bool)

(declare-fun res!1757975 () Bool)

(assert (=> b!4284266 (=> (not res!1757975) (not e!2660112))))

(declare-fun ruleValid!3619 (LexerInterface!7596 Rule!15804) Bool)

(assert (=> b!4284266 (= res!1757975 (ruleValid!3619 thiss!16356 rule!232))))

(declare-fun b!4284267 () Bool)

(assert (=> b!4284267 (= e!2660122 e!2660137)))

(assert (= (and start!411602 res!1757973) b!4284266))

(assert (= (and b!4284266 res!1757975) b!4284265))

(assert (= (and b!4284265 res!1757974) b!4284251))

(assert (= (and b!4284251 res!1757969) b!4284245))

(assert (= (and b!4284245 res!1757972) b!4284246))

(assert (= (and b!4284246 res!1757971) b!4284257))

(assert (= (and b!4284257 res!1757970) b!4284241))

(assert (= b!4284238 b!4284250))

(assert (= start!411602 b!4284238))

(assert (= start!411602 b!4284249))

(assert (= (and b!4284252 condMapEmpty!19373) mapIsEmpty!19372))

(assert (= (and b!4284252 (not condMapEmpty!19373)) mapNonEmpty!19372))

(assert (= b!4284264 b!4284252))

(assert (= b!4284254 b!4284264))

(assert (= b!4284261 b!4284254))

(assert (= (and b!4284244 ((_ is LongMap!4283) (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))) b!4284261))

(assert (= b!4284235 b!4284244))

(assert (= (and b!4284237 ((_ is HashMap!4189) (cache!4329 cacheDown!738))) b!4284235))

(assert (= start!411602 b!4284237))

(assert (= (and b!4284242 condMapEmpty!19371) mapIsEmpty!19373))

(assert (= (and b!4284242 (not condMapEmpty!19371)) mapNonEmpty!19373))

(assert (= b!4284263 b!4284242))

(assert (= b!4284255 b!4284263))

(assert (= b!4284239 b!4284255))

(assert (= (and b!4284262 ((_ is LongMap!4284) (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))) b!4284239))

(assert (= b!4284247 b!4284262))

(assert (= (and b!4284259 ((_ is HashMap!4190) (cache!4330 cacheFindLongestMatch!156))) b!4284247))

(assert (= b!4284259 b!4284243))

(assert (= start!411602 b!4284259))

(assert (= start!411602 b!4284236))

(assert (= (and b!4284248 condMapEmpty!19372) mapIsEmpty!19371))

(assert (= (and b!4284248 (not condMapEmpty!19372)) mapNonEmpty!19371))

(assert (= b!4284240 b!4284248))

(assert (= b!4284256 b!4284240))

(assert (= b!4284267 b!4284256))

(assert (= (and b!4284260 ((_ is LongMap!4282) (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))) b!4284267))

(assert (= b!4284258 b!4284260))

(assert (= (and b!4284253 ((_ is HashMap!4188) (cache!4328 cacheUp!725))) b!4284258))

(assert (= start!411602 b!4284253))

(declare-fun m!4880499 () Bool)

(assert (=> b!4284263 m!4880499))

(declare-fun m!4880501 () Bool)

(assert (=> b!4284263 m!4880501))

(declare-fun m!4880503 () Bool)

(assert (=> start!411602 m!4880503))

(declare-fun m!4880505 () Bool)

(assert (=> start!411602 m!4880505))

(declare-fun m!4880507 () Bool)

(assert (=> start!411602 m!4880507))

(declare-fun m!4880509 () Bool)

(assert (=> start!411602 m!4880509))

(declare-fun m!4880511 () Bool)

(assert (=> start!411602 m!4880511))

(declare-fun m!4880513 () Bool)

(assert (=> b!4284236 m!4880513))

(declare-fun m!4880515 () Bool)

(assert (=> b!4284259 m!4880515))

(declare-fun m!4880517 () Bool)

(assert (=> b!4284249 m!4880517))

(declare-fun m!4880519 () Bool)

(assert (=> b!4284264 m!4880519))

(declare-fun m!4880521 () Bool)

(assert (=> b!4284264 m!4880521))

(declare-fun m!4880523 () Bool)

(assert (=> b!4284265 m!4880523))

(declare-fun m!4880525 () Bool)

(assert (=> b!4284243 m!4880525))

(declare-fun m!4880527 () Bool)

(assert (=> mapNonEmpty!19373 m!4880527))

(declare-fun m!4880529 () Bool)

(assert (=> b!4284246 m!4880529))

(declare-fun m!4880531 () Bool)

(assert (=> b!4284246 m!4880531))

(assert (=> b!4284246 m!4880529))

(assert (=> b!4284246 m!4880531))

(declare-fun m!4880533 () Bool)

(assert (=> b!4284246 m!4880533))

(declare-fun m!4880535 () Bool)

(assert (=> b!4284240 m!4880535))

(declare-fun m!4880537 () Bool)

(assert (=> b!4284240 m!4880537))

(declare-fun m!4880539 () Bool)

(assert (=> b!4284238 m!4880539))

(declare-fun m!4880541 () Bool)

(assert (=> b!4284238 m!4880541))

(declare-fun m!4880543 () Bool)

(assert (=> mapNonEmpty!19371 m!4880543))

(declare-fun m!4880545 () Bool)

(assert (=> mapNonEmpty!19372 m!4880545))

(declare-fun m!4880547 () Bool)

(assert (=> b!4284266 m!4880547))

(declare-fun m!4880549 () Bool)

(assert (=> b!4284251 m!4880549))

(declare-fun m!4880551 () Bool)

(assert (=> b!4284241 m!4880551))

(declare-fun m!4880553 () Bool)

(assert (=> b!4284241 m!4880553))

(declare-fun m!4880555 () Bool)

(assert (=> b!4284245 m!4880555))

(check-sat (not mapNonEmpty!19372) b_and!338119 (not b!4284251) (not b!4284266) (not b_next!127617) (not b_next!127625) b_and!338121 (not start!411602) (not b!4284259) b_and!338115 b_and!338113 (not b!4284238) (not b!4284240) (not b_next!127613) (not mapNonEmpty!19371) (not b!4284243) (not b!4284263) (not b!4284246) b_and!338123 (not b!4284248) (not b_next!127615) (not mapNonEmpty!19373) (not b_next!127621) (not b!4284265) b_and!338111 (not b_next!127619) (not b!4284264) b_and!338117 (not b!4284252) (not b_next!127623) b_and!338109 (not b_next!127611) (not b!4284241) (not b!4284245) (not b!4284249) (not b!4284236) (not b!4284242))
(check-sat b_and!338119 (not b_next!127613) (not b_next!127617) b_and!338123 (not b_next!127625) (not b_next!127615) b_and!338121 (not b_next!127619) b_and!338117 (not b_next!127611) b_and!338115 b_and!338113 (not b_next!127621) b_and!338111 (not b_next!127623) b_and!338109)
(get-model)

(declare-fun d!1265051 () Bool)

(declare-fun c!730036 () Bool)

(assert (=> d!1265051 (= c!730036 ((_ is Node!14354) (c!730032 (totalInput!4297 cacheFindLongestMatch!156))))))

(declare-fun e!2660147 () Bool)

(assert (=> d!1265051 (= (inv!62913 (c!730032 (totalInput!4297 cacheFindLongestMatch!156))) e!2660147)))

(declare-fun b!4284274 () Bool)

(declare-fun inv!62919 (Conc!14354) Bool)

(assert (=> b!4284274 (= e!2660147 (inv!62919 (c!730032 (totalInput!4297 cacheFindLongestMatch!156))))))

(declare-fun b!4284275 () Bool)

(declare-fun e!2660148 () Bool)

(assert (=> b!4284275 (= e!2660147 e!2660148)))

(declare-fun res!1757980 () Bool)

(assert (=> b!4284275 (= res!1757980 (not ((_ is Leaf!22211) (c!730032 (totalInput!4297 cacheFindLongestMatch!156)))))))

(assert (=> b!4284275 (=> res!1757980 e!2660148)))

(declare-fun b!4284276 () Bool)

(declare-fun inv!62920 (Conc!14354) Bool)

(assert (=> b!4284276 (= e!2660148 (inv!62920 (c!730032 (totalInput!4297 cacheFindLongestMatch!156))))))

(assert (= (and d!1265051 c!730036) b!4284274))

(assert (= (and d!1265051 (not c!730036)) b!4284275))

(assert (= (and b!4284275 (not res!1757980)) b!4284276))

(declare-fun m!4880557 () Bool)

(assert (=> b!4284274 m!4880557))

(declare-fun m!4880559 () Bool)

(assert (=> b!4284276 m!4880559))

(assert (=> b!4284243 d!1265051))

(declare-fun d!1265053 () Bool)

(declare-fun c!730037 () Bool)

(assert (=> d!1265053 (= c!730037 ((_ is Node!14354) (c!730032 totalInput!528)))))

(declare-fun e!2660149 () Bool)

(assert (=> d!1265053 (= (inv!62913 (c!730032 totalInput!528)) e!2660149)))

(declare-fun b!4284277 () Bool)

(assert (=> b!4284277 (= e!2660149 (inv!62919 (c!730032 totalInput!528)))))

(declare-fun b!4284278 () Bool)

(declare-fun e!2660150 () Bool)

(assert (=> b!4284278 (= e!2660149 e!2660150)))

(declare-fun res!1757981 () Bool)

(assert (=> b!4284278 (= res!1757981 (not ((_ is Leaf!22211) (c!730032 totalInput!528))))))

(assert (=> b!4284278 (=> res!1757981 e!2660150)))

(declare-fun b!4284279 () Bool)

(assert (=> b!4284279 (= e!2660150 (inv!62920 (c!730032 totalInput!528)))))

(assert (= (and d!1265053 c!730037) b!4284277))

(assert (= (and d!1265053 (not c!730037)) b!4284278))

(assert (= (and b!4284278 (not res!1757981)) b!4284279))

(declare-fun m!4880561 () Bool)

(assert (=> b!4284277 m!4880561))

(declare-fun m!4880563 () Bool)

(assert (=> b!4284279 m!4880563))

(assert (=> b!4284236 d!1265053))

(declare-fun d!1265055 () Bool)

(declare-fun validCacheMapFindLongestMatch!68 (MutableMap!4190 BalanceConc!28198) Bool)

(assert (=> d!1265055 (= (valid!3325 cacheFindLongestMatch!156) (validCacheMapFindLongestMatch!68 (cache!4330 cacheFindLongestMatch!156) (totalInput!4297 cacheFindLongestMatch!156)))))

(declare-fun bs!602795 () Bool)

(assert (= bs!602795 d!1265055))

(declare-fun m!4880565 () Bool)

(assert (=> bs!602795 m!4880565))

(assert (=> b!4284245 d!1265055))

(declare-fun d!1265057 () Bool)

(assert (=> d!1265057 (= (array_inv!4913 (_keys!4584 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) (bvsge (size!34793 (_keys!4584 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284263 d!1265057))

(declare-fun d!1265059 () Bool)

(assert (=> d!1265059 (= (array_inv!4915 (_values!4565 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) (bvsge (size!34796 (_values!4565 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284263 d!1265059))

(declare-fun d!1265061 () Bool)

(declare-fun isBalanced!3875 (Conc!14354) Bool)

(assert (=> d!1265061 (= (inv!62915 (totalInput!4297 cacheFindLongestMatch!156)) (isBalanced!3875 (c!730032 (totalInput!4297 cacheFindLongestMatch!156))))))

(declare-fun bs!602796 () Bool)

(assert (= bs!602796 d!1265061))

(declare-fun m!4880567 () Bool)

(assert (=> bs!602796 m!4880567))

(assert (=> b!4284259 d!1265061))

(declare-fun d!1265063 () Bool)

(declare-fun validCacheMapDown!442 (MutableMap!4189) Bool)

(assert (=> d!1265063 (= (valid!3326 cacheDown!738) (validCacheMapDown!442 (cache!4329 cacheDown!738)))))

(declare-fun bs!602797 () Bool)

(assert (= bs!602797 d!1265063))

(declare-fun m!4880569 () Bool)

(assert (=> bs!602797 m!4880569))

(assert (=> b!4284251 d!1265063))

(declare-fun d!1265065 () Bool)

(declare-fun c!730038 () Bool)

(assert (=> d!1265065 (= c!730038 ((_ is Node!14354) (c!730032 input!1632)))))

(declare-fun e!2660151 () Bool)

(assert (=> d!1265065 (= (inv!62913 (c!730032 input!1632)) e!2660151)))

(declare-fun b!4284280 () Bool)

(assert (=> b!4284280 (= e!2660151 (inv!62919 (c!730032 input!1632)))))

(declare-fun b!4284281 () Bool)

(declare-fun e!2660152 () Bool)

(assert (=> b!4284281 (= e!2660151 e!2660152)))

(declare-fun res!1757982 () Bool)

(assert (=> b!4284281 (= res!1757982 (not ((_ is Leaf!22211) (c!730032 input!1632))))))

(assert (=> b!4284281 (=> res!1757982 e!2660152)))

(declare-fun b!4284282 () Bool)

(assert (=> b!4284282 (= e!2660152 (inv!62920 (c!730032 input!1632)))))

(assert (= (and d!1265065 c!730038) b!4284280))

(assert (= (and d!1265065 (not c!730038)) b!4284281))

(assert (= (and b!4284281 (not res!1757982)) b!4284282))

(declare-fun m!4880571 () Bool)

(assert (=> b!4284280 m!4880571))

(declare-fun m!4880573 () Bool)

(assert (=> b!4284282 m!4880573))

(assert (=> b!4284249 d!1265065))

(declare-fun d!1265067 () Bool)

(assert (=> d!1265067 (= (array_inv!4913 (_keys!4582 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) (bvsge (size!34793 (_keys!4582 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284240 d!1265067))

(declare-fun d!1265069 () Bool)

(assert (=> d!1265069 (= (array_inv!4914 (_values!4563 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) (bvsge (size!34794 (_values!4563 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284240 d!1265069))

(declare-fun d!1265071 () Bool)

(declare-fun e!2660155 () Bool)

(assert (=> d!1265071 e!2660155))

(declare-fun res!1757992 () Bool)

(assert (=> d!1265071 (=> (not res!1757992) (not e!2660155))))

(declare-fun lt!1515573 () tuple4!950)

(assert (=> d!1265071 (= res!1757992 (= (_1!25587 lt!1515573) (findLongestMatchWithZipperSequenceV2!118 (regex!8002 rule!232) input!1632 totalInput!528)))))

(declare-fun choose!26128 (Regex!12911 BalanceConc!28198 BalanceConc!28198 CacheUp!2734 CacheDown!2854 CacheFindLongestMatch!396) tuple4!950)

(assert (=> d!1265071 (= lt!1515573 (choose!26128 (regex!8002 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156))))

(declare-fun validRegex!5838 (Regex!12911) Bool)

(assert (=> d!1265071 (validRegex!5838 (regex!8002 rule!232))))

(assert (=> d!1265071 (= (findLongestMatchWithZipperSequenceV2Mem!41 (regex!8002 rule!232) input!1632 totalInput!528 cacheUp!725 cacheDown!738 cacheFindLongestMatch!156) lt!1515573)))

(declare-fun b!4284291 () Bool)

(declare-fun res!1757993 () Bool)

(assert (=> b!4284291 (=> (not res!1757993) (not e!2660155))))

(assert (=> b!4284291 (= res!1757993 (valid!3326 (_3!3149 lt!1515573)))))

(declare-fun b!4284294 () Bool)

(assert (=> b!4284294 (= e!2660155 (= (totalInput!4297 (_4!475 lt!1515573)) totalInput!528))))

(declare-fun b!4284292 () Bool)

(declare-fun res!1757994 () Bool)

(assert (=> b!4284292 (=> (not res!1757994) (not e!2660155))))

(assert (=> b!4284292 (= res!1757994 (valid!3327 (_2!25587 lt!1515573)))))

(declare-fun b!4284293 () Bool)

(declare-fun res!1757991 () Bool)

(assert (=> b!4284293 (=> (not res!1757991) (not e!2660155))))

(assert (=> b!4284293 (= res!1757991 (valid!3325 (_4!475 lt!1515573)))))

(assert (= (and d!1265071 res!1757992) b!4284291))

(assert (= (and b!4284291 res!1757993) b!4284292))

(assert (= (and b!4284292 res!1757994) b!4284293))

(assert (= (and b!4284293 res!1757991) b!4284294))

(assert (=> d!1265071 m!4880553))

(declare-fun m!4880575 () Bool)

(assert (=> d!1265071 m!4880575))

(declare-fun m!4880577 () Bool)

(assert (=> d!1265071 m!4880577))

(declare-fun m!4880579 () Bool)

(assert (=> b!4284291 m!4880579))

(declare-fun m!4880581 () Bool)

(assert (=> b!4284292 m!4880581))

(declare-fun m!4880583 () Bool)

(assert (=> b!4284293 m!4880583))

(assert (=> b!4284241 d!1265071))

(declare-fun d!1265073 () Bool)

(declare-fun lt!1515576 () tuple2!44874)

(declare-datatypes ((tuple2!44876 0))(
  ( (tuple2!44877 (_1!25588 List!47597) (_2!25588 List!47597)) )
))
(declare-fun findLongestMatch!1616 (Regex!12911 List!47597) tuple2!44876)

(assert (=> d!1265073 (= (tuple2!44877 (list!17320 (_1!25586 lt!1515576)) (list!17320 (_2!25586 lt!1515576))) (findLongestMatch!1616 (regex!8002 rule!232) (list!17320 input!1632)))))

(declare-fun choose!26129 (Regex!12911 BalanceConc!28198 BalanceConc!28198) tuple2!44874)

(assert (=> d!1265073 (= lt!1515576 (choose!26129 (regex!8002 rule!232) input!1632 totalInput!528))))

(assert (=> d!1265073 (validRegex!5838 (regex!8002 rule!232))))

(assert (=> d!1265073 (= (findLongestMatchWithZipperSequenceV2!118 (regex!8002 rule!232) input!1632 totalInput!528) lt!1515576)))

(declare-fun bs!602798 () Bool)

(assert (= bs!602798 d!1265073))

(assert (=> bs!602798 m!4880577))

(declare-fun m!4880585 () Bool)

(assert (=> bs!602798 m!4880585))

(assert (=> bs!602798 m!4880529))

(declare-fun m!4880587 () Bool)

(assert (=> bs!602798 m!4880587))

(declare-fun m!4880589 () Bool)

(assert (=> bs!602798 m!4880589))

(declare-fun m!4880591 () Bool)

(assert (=> bs!602798 m!4880591))

(assert (=> bs!602798 m!4880529))

(assert (=> b!4284241 d!1265073))

(declare-fun d!1265075 () Bool)

(assert (=> d!1265075 (= (array_inv!4913 (_keys!4583 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) (bvsge (size!34793 (_keys!4583 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284264 d!1265075))

(declare-fun d!1265077 () Bool)

(assert (=> d!1265077 (= (array_inv!4916 (_values!4564 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) (bvsge (size!34795 (_values!4564 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738))))))) #b00000000000000000000000000000000))))

(assert (=> b!4284264 d!1265077))

(declare-fun d!1265079 () Bool)

(declare-fun e!2660158 () Bool)

(assert (=> d!1265079 e!2660158))

(declare-fun res!1757997 () Bool)

(assert (=> d!1265079 (=> res!1757997 e!2660158)))

(declare-fun lt!1515579 () Bool)

(assert (=> d!1265079 (= res!1757997 (not lt!1515579))))

(declare-fun drop!2184 (List!47597 Int) List!47597)

(declare-fun size!34797 (List!47597) Int)

(assert (=> d!1265079 (= lt!1515579 (= (list!17320 input!1632) (drop!2184 (list!17320 totalInput!528) (- (size!34797 (list!17320 totalInput!528)) (size!34797 (list!17320 input!1632))))))))

(assert (=> d!1265079 (= (isSuffix!1009 (list!17320 input!1632) (list!17320 totalInput!528)) lt!1515579)))

(declare-fun b!4284297 () Bool)

(assert (=> b!4284297 (= e!2660158 (>= (size!34797 (list!17320 totalInput!528)) (size!34797 (list!17320 input!1632))))))

(assert (= (and d!1265079 (not res!1757997)) b!4284297))

(assert (=> d!1265079 m!4880531))

(declare-fun m!4880593 () Bool)

(assert (=> d!1265079 m!4880593))

(assert (=> d!1265079 m!4880529))

(declare-fun m!4880595 () Bool)

(assert (=> d!1265079 m!4880595))

(assert (=> d!1265079 m!4880531))

(declare-fun m!4880597 () Bool)

(assert (=> d!1265079 m!4880597))

(assert (=> b!4284297 m!4880531))

(assert (=> b!4284297 m!4880593))

(assert (=> b!4284297 m!4880529))

(assert (=> b!4284297 m!4880595))

(assert (=> b!4284246 d!1265079))

(declare-fun d!1265081 () Bool)

(declare-fun list!17321 (Conc!14354) List!47597)

(assert (=> d!1265081 (= (list!17320 input!1632) (list!17321 (c!730032 input!1632)))))

(declare-fun bs!602799 () Bool)

(assert (= bs!602799 d!1265081))

(declare-fun m!4880599 () Bool)

(assert (=> bs!602799 m!4880599))

(assert (=> b!4284246 d!1265081))

(declare-fun d!1265083 () Bool)

(assert (=> d!1265083 (= (list!17320 totalInput!528) (list!17321 (c!730032 totalInput!528)))))

(declare-fun bs!602800 () Bool)

(assert (= bs!602800 d!1265083))

(declare-fun m!4880601 () Bool)

(assert (=> bs!602800 m!4880601))

(assert (=> b!4284246 d!1265083))

(declare-fun d!1265085 () Bool)

(declare-fun res!1758000 () Bool)

(declare-fun e!2660161 () Bool)

(assert (=> d!1265085 (=> (not res!1758000) (not e!2660161))))

(assert (=> d!1265085 (= res!1758000 ((_ is HashMap!4188) (cache!4328 cacheUp!725)))))

(assert (=> d!1265085 (= (inv!62918 cacheUp!725) e!2660161)))

(declare-fun b!4284300 () Bool)

(declare-fun validCacheMapUp!411 (MutableMap!4188) Bool)

(assert (=> b!4284300 (= e!2660161 (validCacheMapUp!411 (cache!4328 cacheUp!725)))))

(assert (= (and d!1265085 res!1758000) b!4284300))

(declare-fun m!4880603 () Bool)

(assert (=> b!4284300 m!4880603))

(assert (=> start!411602 d!1265085))

(declare-fun d!1265087 () Bool)

(declare-fun res!1758003 () Bool)

(declare-fun e!2660164 () Bool)

(assert (=> d!1265087 (=> (not res!1758003) (not e!2660164))))

(assert (=> d!1265087 (= res!1758003 ((_ is HashMap!4190) (cache!4330 cacheFindLongestMatch!156)))))

(assert (=> d!1265087 (= (inv!62917 cacheFindLongestMatch!156) e!2660164)))

(declare-fun b!4284303 () Bool)

(assert (=> b!4284303 (= e!2660164 (validCacheMapFindLongestMatch!68 (cache!4330 cacheFindLongestMatch!156) (totalInput!4297 cacheFindLongestMatch!156)))))

(assert (= (and d!1265087 res!1758003) b!4284303))

(assert (=> b!4284303 m!4880565))

(assert (=> start!411602 d!1265087))

(declare-fun d!1265089 () Bool)

(declare-fun res!1758006 () Bool)

(declare-fun e!2660167 () Bool)

(assert (=> d!1265089 (=> (not res!1758006) (not e!2660167))))

(assert (=> d!1265089 (= res!1758006 ((_ is HashMap!4189) (cache!4329 cacheDown!738)))))

(assert (=> d!1265089 (= (inv!62916 cacheDown!738) e!2660167)))

(declare-fun b!4284306 () Bool)

(assert (=> b!4284306 (= e!2660167 (validCacheMapDown!442 (cache!4329 cacheDown!738)))))

(assert (= (and d!1265089 res!1758006) b!4284306))

(assert (=> b!4284306 m!4880569))

(assert (=> start!411602 d!1265089))

(declare-fun d!1265091 () Bool)

(assert (=> d!1265091 (= (inv!62915 totalInput!528) (isBalanced!3875 (c!730032 totalInput!528)))))

(declare-fun bs!602801 () Bool)

(assert (= bs!602801 d!1265091))

(declare-fun m!4880605 () Bool)

(assert (=> bs!602801 m!4880605))

(assert (=> start!411602 d!1265091))

(declare-fun d!1265093 () Bool)

(assert (=> d!1265093 (= (inv!62915 input!1632) (isBalanced!3875 (c!730032 input!1632)))))

(declare-fun bs!602802 () Bool)

(assert (= bs!602802 d!1265093))

(declare-fun m!4880607 () Bool)

(assert (=> bs!602802 m!4880607))

(assert (=> start!411602 d!1265093))

(declare-fun d!1265095 () Bool)

(assert (=> d!1265095 (= (inv!62912 (tag!8866 rule!232)) (= (mod (str.len (value!250875 (tag!8866 rule!232))) 2) 0))))

(assert (=> b!4284238 d!1265095))

(declare-fun d!1265097 () Bool)

(declare-fun res!1758009 () Bool)

(declare-fun e!2660170 () Bool)

(assert (=> d!1265097 (=> (not res!1758009) (not e!2660170))))

(declare-fun semiInverseModEq!3533 (Int Int) Bool)

(assert (=> d!1265097 (= res!1758009 (semiInverseModEq!3533 (toChars!10712 (transformation!8002 rule!232)) (toValue!10853 (transformation!8002 rule!232))))))

(assert (=> d!1265097 (= (inv!62914 (transformation!8002 rule!232)) e!2660170)))

(declare-fun b!4284309 () Bool)

(declare-fun equivClasses!3412 (Int Int) Bool)

(assert (=> b!4284309 (= e!2660170 (equivClasses!3412 (toChars!10712 (transformation!8002 rule!232)) (toValue!10853 (transformation!8002 rule!232))))))

(assert (= (and d!1265097 res!1758009) b!4284309))

(declare-fun m!4880609 () Bool)

(assert (=> d!1265097 m!4880609))

(declare-fun m!4880611 () Bool)

(assert (=> b!4284309 m!4880611))

(assert (=> b!4284238 d!1265097))

(declare-fun d!1265099 () Bool)

(assert (=> d!1265099 (= (valid!3327 cacheUp!725) (validCacheMapUp!411 (cache!4328 cacheUp!725)))))

(declare-fun bs!602803 () Bool)

(assert (= bs!602803 d!1265099))

(assert (=> bs!602803 m!4880603))

(assert (=> b!4284265 d!1265099))

(declare-fun d!1265101 () Bool)

(declare-fun res!1758014 () Bool)

(declare-fun e!2660173 () Bool)

(assert (=> d!1265101 (=> (not res!1758014) (not e!2660173))))

(assert (=> d!1265101 (= res!1758014 (validRegex!5838 (regex!8002 rule!232)))))

(assert (=> d!1265101 (= (ruleValid!3619 thiss!16356 rule!232) e!2660173)))

(declare-fun b!4284314 () Bool)

(declare-fun res!1758015 () Bool)

(assert (=> b!4284314 (=> (not res!1758015) (not e!2660173))))

(declare-fun nullable!4530 (Regex!12911) Bool)

(assert (=> b!4284314 (= res!1758015 (not (nullable!4530 (regex!8002 rule!232))))))

(declare-fun b!4284315 () Bool)

(assert (=> b!4284315 (= e!2660173 (not (= (tag!8866 rule!232) (String!55559 ""))))))

(assert (= (and d!1265101 res!1758014) b!4284314))

(assert (= (and b!4284314 res!1758015) b!4284315))

(assert (=> d!1265101 m!4880577))

(declare-fun m!4880613 () Bool)

(assert (=> b!4284314 m!4880613))

(assert (=> b!4284266 d!1265101))

(declare-fun tp!1311053 () Bool)

(declare-fun b!4284324 () Bool)

(declare-fun e!2660178 () Bool)

(declare-fun tp!1311055 () Bool)

(assert (=> b!4284324 (= e!2660178 (and (inv!62913 (left!35338 (c!730032 (totalInput!4297 cacheFindLongestMatch!156)))) tp!1311055 (inv!62913 (right!35668 (c!730032 (totalInput!4297 cacheFindLongestMatch!156)))) tp!1311053))))

(declare-fun b!4284326 () Bool)

(declare-fun e!2660179 () Bool)

(declare-fun tp!1311054 () Bool)

(assert (=> b!4284326 (= e!2660179 tp!1311054)))

(declare-fun b!4284325 () Bool)

(declare-fun inv!62921 (IArray!28769) Bool)

(assert (=> b!4284325 (= e!2660178 (and (inv!62921 (xs!17660 (c!730032 (totalInput!4297 cacheFindLongestMatch!156)))) e!2660179))))

(assert (=> b!4284243 (= tp!1311023 (and (inv!62913 (c!730032 (totalInput!4297 cacheFindLongestMatch!156))) e!2660178))))

(assert (= (and b!4284243 ((_ is Node!14354) (c!730032 (totalInput!4297 cacheFindLongestMatch!156)))) b!4284324))

(assert (= b!4284325 b!4284326))

(assert (= (and b!4284243 ((_ is Leaf!22211) (c!730032 (totalInput!4297 cacheFindLongestMatch!156)))) b!4284325))

(declare-fun m!4880615 () Bool)

(assert (=> b!4284324 m!4880615))

(declare-fun m!4880617 () Bool)

(assert (=> b!4284324 m!4880617))

(declare-fun m!4880619 () Bool)

(assert (=> b!4284325 m!4880619))

(assert (=> b!4284243 m!4880525))

(declare-fun e!2660180 () Bool)

(declare-fun b!4284327 () Bool)

(declare-fun tp!1311058 () Bool)

(declare-fun tp!1311056 () Bool)

(assert (=> b!4284327 (= e!2660180 (and (inv!62913 (left!35338 (c!730032 totalInput!528))) tp!1311058 (inv!62913 (right!35668 (c!730032 totalInput!528))) tp!1311056))))

(declare-fun b!4284329 () Bool)

(declare-fun e!2660181 () Bool)

(declare-fun tp!1311057 () Bool)

(assert (=> b!4284329 (= e!2660181 tp!1311057)))

(declare-fun b!4284328 () Bool)

(assert (=> b!4284328 (= e!2660180 (and (inv!62921 (xs!17660 (c!730032 totalInput!528))) e!2660181))))

(assert (=> b!4284236 (= tp!1311044 (and (inv!62913 (c!730032 totalInput!528)) e!2660180))))

(assert (= (and b!4284236 ((_ is Node!14354) (c!730032 totalInput!528))) b!4284327))

(assert (= b!4284328 b!4284329))

(assert (= (and b!4284236 ((_ is Leaf!22211) (c!730032 totalInput!528))) b!4284328))

(declare-fun m!4880621 () Bool)

(assert (=> b!4284327 m!4880621))

(declare-fun m!4880623 () Bool)

(assert (=> b!4284327 m!4880623))

(declare-fun m!4880625 () Bool)

(assert (=> b!4284328 m!4880625))

(assert (=> b!4284236 m!4880513))

(declare-fun b!4284337 () Bool)

(declare-fun e!2660187 () Bool)

(declare-fun tp!1311065 () Bool)

(assert (=> b!4284337 (= e!2660187 tp!1311065)))

(declare-fun setIsEmpty!26084 () Bool)

(declare-fun setRes!26084 () Bool)

(assert (=> setIsEmpty!26084 setRes!26084))

(declare-fun b!4284336 () Bool)

(declare-fun e!2660186 () Bool)

(declare-fun tp!1311066 () Bool)

(assert (=> b!4284336 (= e!2660186 (and setRes!26084 tp!1311066))))

(declare-fun condSetEmpty!26084 () Bool)

(assert (=> b!4284336 (= condSetEmpty!26084 (= (_1!25584 (_1!25585 (h!52898 (zeroValue!4543 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun setElem!26084 () Context!5602)

(declare-fun tp!1311067 () Bool)

(declare-fun setNonEmpty!26084 () Bool)

(declare-fun inv!62922 (Context!5602) Bool)

(assert (=> setNonEmpty!26084 (= setRes!26084 (and tp!1311067 (inv!62922 setElem!26084) e!2660187))))

(declare-fun setRest!26084 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26084 (= (_1!25584 (_1!25585 (h!52898 (zeroValue!4543 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26084 true) setRest!26084))))

(assert (=> b!4284263 (= tp!1311033 e!2660186)))

(assert (= (and b!4284336 condSetEmpty!26084) setIsEmpty!26084))

(assert (= (and b!4284336 (not condSetEmpty!26084)) setNonEmpty!26084))

(assert (= setNonEmpty!26084 b!4284337))

(assert (= (and b!4284263 ((_ is Cons!47478) (zeroValue!4543 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156)))))))) b!4284336))

(declare-fun m!4880627 () Bool)

(assert (=> setNonEmpty!26084 m!4880627))

(declare-fun b!4284339 () Bool)

(declare-fun e!2660189 () Bool)

(declare-fun tp!1311068 () Bool)

(assert (=> b!4284339 (= e!2660189 tp!1311068)))

(declare-fun setIsEmpty!26085 () Bool)

(declare-fun setRes!26085 () Bool)

(assert (=> setIsEmpty!26085 setRes!26085))

(declare-fun b!4284338 () Bool)

(declare-fun e!2660188 () Bool)

(declare-fun tp!1311069 () Bool)

(assert (=> b!4284338 (= e!2660188 (and setRes!26085 tp!1311069))))

(declare-fun condSetEmpty!26085 () Bool)

(assert (=> b!4284338 (= condSetEmpty!26085 (= (_1!25584 (_1!25585 (h!52898 (minValue!4543 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))))) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun setElem!26085 () Context!5602)

(declare-fun tp!1311070 () Bool)

(declare-fun setNonEmpty!26085 () Bool)

(assert (=> setNonEmpty!26085 (= setRes!26085 (and tp!1311070 (inv!62922 setElem!26085) e!2660189))))

(declare-fun setRest!26085 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26085 (= (_1!25584 (_1!25585 (h!52898 (minValue!4543 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156))))))))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26085 true) setRest!26085))))

(assert (=> b!4284263 (= tp!1311034 e!2660188)))

(assert (= (and b!4284338 condSetEmpty!26085) setIsEmpty!26085))

(assert (= (and b!4284338 (not condSetEmpty!26085)) setNonEmpty!26085))

(assert (= setNonEmpty!26085 b!4284339))

(assert (= (and b!4284263 ((_ is Cons!47478) (minValue!4543 (v!41376 (underlying!8797 (v!41377 (underlying!8798 (cache!4330 cacheFindLongestMatch!156)))))))) b!4284338))

(declare-fun m!4880629 () Bool)

(assert (=> setNonEmpty!26085 m!4880629))

(declare-fun b!4284354 () Bool)

(declare-fun e!2660207 () Bool)

(declare-fun tp!1311092 () Bool)

(assert (=> b!4284354 (= e!2660207 tp!1311092)))

(declare-fun condMapEmpty!19376 () Bool)

(declare-fun mapDefault!19376 () List!47600)

(assert (=> mapNonEmpty!19371 (= condMapEmpty!19376 (= mapRest!19372 ((as const (Array (_ BitVec 32) List!47600)) mapDefault!19376)))))

(declare-fun e!2660202 () Bool)

(declare-fun mapRes!19376 () Bool)

(assert (=> mapNonEmpty!19371 (= tp!1311024 (and e!2660202 mapRes!19376))))

(declare-fun setIsEmpty!26090 () Bool)

(declare-fun setRes!26091 () Bool)

(assert (=> setIsEmpty!26090 setRes!26091))

(declare-fun mapIsEmpty!19376 () Bool)

(assert (=> mapIsEmpty!19376 mapRes!19376))

(declare-fun b!4284355 () Bool)

(declare-fun e!2660206 () Bool)

(declare-fun tp!1311094 () Bool)

(assert (=> b!4284355 (= e!2660206 tp!1311094)))

(declare-fun mapValue!19376 () List!47600)

(declare-fun tp!1311095 () Bool)

(declare-fun e!2660204 () Bool)

(declare-fun b!4284356 () Bool)

(declare-fun tp_is_empty!23059 () Bool)

(declare-fun e!2660203 () Bool)

(assert (=> b!4284356 (= e!2660204 (and (inv!62922 (_1!25580 (_1!25581 (h!52896 mapValue!19376)))) e!2660203 tp_is_empty!23059 setRes!26091 tp!1311095))))

(declare-fun condSetEmpty!26090 () Bool)

(assert (=> b!4284356 (= condSetEmpty!26090 (= (_2!25581 (h!52896 mapValue!19376)) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun b!4284357 () Bool)

(declare-fun e!2660205 () Bool)

(declare-fun tp!1311089 () Bool)

(assert (=> b!4284357 (= e!2660205 tp!1311089)))

(declare-fun b!4284358 () Bool)

(declare-fun tp!1311097 () Bool)

(assert (=> b!4284358 (= e!2660203 tp!1311097)))

(declare-fun mapNonEmpty!19376 () Bool)

(declare-fun tp!1311091 () Bool)

(assert (=> mapNonEmpty!19376 (= mapRes!19376 (and tp!1311091 e!2660204))))

(declare-fun mapKey!19376 () (_ BitVec 32))

(declare-fun mapRest!19376 () (Array (_ BitVec 32) List!47600))

(assert (=> mapNonEmpty!19376 (= mapRest!19372 (store mapRest!19376 mapKey!19376 mapValue!19376))))

(declare-fun tp!1311090 () Bool)

(declare-fun setRes!26090 () Bool)

(declare-fun setElem!26091 () Context!5602)

(declare-fun setNonEmpty!26090 () Bool)

(assert (=> setNonEmpty!26090 (= setRes!26090 (and tp!1311090 (inv!62922 setElem!26091) e!2660206))))

(declare-fun setRest!26090 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26090 (= (_2!25581 (h!52896 mapDefault!19376)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26091 true) setRest!26090))))

(declare-fun setNonEmpty!26091 () Bool)

(declare-fun setElem!26090 () Context!5602)

(declare-fun tp!1311096 () Bool)

(assert (=> setNonEmpty!26091 (= setRes!26091 (and tp!1311096 (inv!62922 setElem!26090) e!2660205))))

(declare-fun setRest!26091 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26091 (= (_2!25581 (h!52896 mapValue!19376)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26090 true) setRest!26091))))

(declare-fun b!4284359 () Bool)

(declare-fun tp!1311093 () Bool)

(assert (=> b!4284359 (= e!2660202 (and (inv!62922 (_1!25580 (_1!25581 (h!52896 mapDefault!19376)))) e!2660207 tp_is_empty!23059 setRes!26090 tp!1311093))))

(declare-fun condSetEmpty!26091 () Bool)

(assert (=> b!4284359 (= condSetEmpty!26091 (= (_2!25581 (h!52896 mapDefault!19376)) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun setIsEmpty!26091 () Bool)

(assert (=> setIsEmpty!26091 setRes!26090))

(assert (= (and mapNonEmpty!19371 condMapEmpty!19376) mapIsEmpty!19376))

(assert (= (and mapNonEmpty!19371 (not condMapEmpty!19376)) mapNonEmpty!19376))

(assert (= b!4284356 b!4284358))

(assert (= (and b!4284356 condSetEmpty!26090) setIsEmpty!26090))

(assert (= (and b!4284356 (not condSetEmpty!26090)) setNonEmpty!26091))

(assert (= setNonEmpty!26091 b!4284357))

(assert (= (and mapNonEmpty!19376 ((_ is Cons!47476) mapValue!19376)) b!4284356))

(assert (= b!4284359 b!4284354))

(assert (= (and b!4284359 condSetEmpty!26091) setIsEmpty!26091))

(assert (= (and b!4284359 (not condSetEmpty!26091)) setNonEmpty!26090))

(assert (= setNonEmpty!26090 b!4284355))

(assert (= (and mapNonEmpty!19371 ((_ is Cons!47476) mapDefault!19376)) b!4284359))

(declare-fun m!4880631 () Bool)

(assert (=> setNonEmpty!26091 m!4880631))

(declare-fun m!4880633 () Bool)

(assert (=> b!4284359 m!4880633))

(declare-fun m!4880635 () Bool)

(assert (=> mapNonEmpty!19376 m!4880635))

(declare-fun m!4880637 () Bool)

(assert (=> setNonEmpty!26090 m!4880637))

(declare-fun m!4880639 () Bool)

(assert (=> b!4284356 m!4880639))

(declare-fun b!4284368 () Bool)

(declare-fun e!2660214 () Bool)

(declare-fun tp!1311108 () Bool)

(assert (=> b!4284368 (= e!2660214 tp!1311108)))

(declare-fun b!4284369 () Bool)

(declare-fun e!2660215 () Bool)

(declare-fun tp!1311106 () Bool)

(assert (=> b!4284369 (= e!2660215 tp!1311106)))

(declare-fun e!2660216 () Bool)

(assert (=> mapNonEmpty!19371 (= tp!1311036 e!2660216)))

(declare-fun setIsEmpty!26094 () Bool)

(declare-fun setRes!26094 () Bool)

(assert (=> setIsEmpty!26094 setRes!26094))

(declare-fun b!4284370 () Bool)

(declare-fun tp!1311107 () Bool)

(assert (=> b!4284370 (= e!2660216 (and (inv!62922 (_1!25580 (_1!25581 (h!52896 mapValue!19373)))) e!2660215 tp_is_empty!23059 setRes!26094 tp!1311107))))

(declare-fun condSetEmpty!26094 () Bool)

(assert (=> b!4284370 (= condSetEmpty!26094 (= (_2!25581 (h!52896 mapValue!19373)) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun setElem!26094 () Context!5602)

(declare-fun tp!1311109 () Bool)

(declare-fun setNonEmpty!26094 () Bool)

(assert (=> setNonEmpty!26094 (= setRes!26094 (and tp!1311109 (inv!62922 setElem!26094) e!2660214))))

(declare-fun setRest!26094 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26094 (= (_2!25581 (h!52896 mapValue!19373)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26094 true) setRest!26094))))

(assert (= b!4284370 b!4284369))

(assert (= (and b!4284370 condSetEmpty!26094) setIsEmpty!26094))

(assert (= (and b!4284370 (not condSetEmpty!26094)) setNonEmpty!26094))

(assert (= setNonEmpty!26094 b!4284368))

(assert (= (and mapNonEmpty!19371 ((_ is Cons!47476) mapValue!19373)) b!4284370))

(declare-fun m!4880641 () Bool)

(assert (=> b!4284370 m!4880641))

(declare-fun m!4880643 () Bool)

(assert (=> setNonEmpty!26094 m!4880643))

(declare-fun b!4284372 () Bool)

(declare-fun e!2660218 () Bool)

(declare-fun tp!1311110 () Bool)

(assert (=> b!4284372 (= e!2660218 tp!1311110)))

(declare-fun setIsEmpty!26095 () Bool)

(declare-fun setRes!26095 () Bool)

(assert (=> setIsEmpty!26095 setRes!26095))

(declare-fun b!4284371 () Bool)

(declare-fun e!2660217 () Bool)

(declare-fun tp!1311111 () Bool)

(assert (=> b!4284371 (= e!2660217 (and setRes!26095 tp!1311111))))

(declare-fun condSetEmpty!26095 () Bool)

(assert (=> b!4284371 (= condSetEmpty!26095 (= (_1!25584 (_1!25585 (h!52898 mapDefault!19372))) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun tp!1311112 () Bool)

(declare-fun setElem!26095 () Context!5602)

(declare-fun setNonEmpty!26095 () Bool)

(assert (=> setNonEmpty!26095 (= setRes!26095 (and tp!1311112 (inv!62922 setElem!26095) e!2660218))))

(declare-fun setRest!26095 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26095 (= (_1!25584 (_1!25585 (h!52898 mapDefault!19372))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26095 true) setRest!26095))))

(assert (=> b!4284242 (= tp!1311030 e!2660217)))

(assert (= (and b!4284371 condSetEmpty!26095) setIsEmpty!26095))

(assert (= (and b!4284371 (not condSetEmpty!26095)) setNonEmpty!26095))

(assert (= setNonEmpty!26095 b!4284372))

(assert (= (and b!4284242 ((_ is Cons!47478) mapDefault!19372)) b!4284371))

(declare-fun m!4880645 () Bool)

(assert (=> setNonEmpty!26095 m!4880645))

(declare-fun b!4284381 () Bool)

(declare-fun e!2660226 () Bool)

(declare-fun tp!1311123 () Bool)

(assert (=> b!4284381 (= e!2660226 tp!1311123)))

(declare-fun e!2660227 () Bool)

(assert (=> b!4284252 (= tp!1311042 e!2660227)))

(declare-fun setIsEmpty!26098 () Bool)

(declare-fun setRes!26098 () Bool)

(assert (=> setIsEmpty!26098 setRes!26098))

(declare-fun setNonEmpty!26098 () Bool)

(declare-fun setElem!26098 () Context!5602)

(declare-fun e!2660225 () Bool)

(declare-fun tp!1311126 () Bool)

(assert (=> setNonEmpty!26098 (= setRes!26098 (and tp!1311126 (inv!62922 setElem!26098) e!2660225))))

(declare-fun setRest!26098 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26098 (= (_2!25583 (h!52897 mapDefault!19373)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26098 true) setRest!26098))))

(declare-fun b!4284382 () Bool)

(declare-fun tp!1311124 () Bool)

(assert (=> b!4284382 (= e!2660225 tp!1311124)))

(declare-fun b!4284383 () Bool)

(declare-fun tp!1311127 () Bool)

(declare-fun tp!1311125 () Bool)

(assert (=> b!4284383 (= e!2660227 (and tp!1311127 (inv!62922 (_2!25582 (_1!25583 (h!52897 mapDefault!19373)))) e!2660226 tp_is_empty!23059 setRes!26098 tp!1311125))))

(declare-fun condSetEmpty!26098 () Bool)

(assert (=> b!4284383 (= condSetEmpty!26098 (= (_2!25583 (h!52897 mapDefault!19373)) ((as const (Array Context!5602 Bool)) false)))))

(assert (= b!4284383 b!4284381))

(assert (= (and b!4284383 condSetEmpty!26098) setIsEmpty!26098))

(assert (= (and b!4284383 (not condSetEmpty!26098)) setNonEmpty!26098))

(assert (= setNonEmpty!26098 b!4284382))

(assert (= (and b!4284252 ((_ is Cons!47477) mapDefault!19373)) b!4284383))

(declare-fun m!4880647 () Bool)

(assert (=> setNonEmpty!26098 m!4880647))

(declare-fun m!4880649 () Bool)

(assert (=> b!4284383 m!4880649))

(declare-fun mapValue!19379 () List!47601)

(declare-fun setRes!26103 () Bool)

(declare-fun b!4284398 () Bool)

(declare-fun e!2660243 () Bool)

(declare-fun tp!1311159 () Bool)

(declare-fun e!2660245 () Bool)

(declare-fun tp!1311157 () Bool)

(assert (=> b!4284398 (= e!2660243 (and tp!1311157 (inv!62922 (_2!25582 (_1!25583 (h!52897 mapValue!19379)))) e!2660245 tp_is_empty!23059 setRes!26103 tp!1311159))))

(declare-fun condSetEmpty!26104 () Bool)

(assert (=> b!4284398 (= condSetEmpty!26104 (= (_2!25583 (h!52897 mapValue!19379)) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun b!4284399 () Bool)

(declare-fun tp!1311156 () Bool)

(assert (=> b!4284399 (= e!2660245 tp!1311156)))

(declare-fun b!4284400 () Bool)

(declare-fun e!2660240 () Bool)

(declare-fun tp!1311151 () Bool)

(assert (=> b!4284400 (= e!2660240 tp!1311151)))

(declare-fun e!2660241 () Bool)

(declare-fun setRes!26104 () Bool)

(declare-fun mapDefault!19379 () List!47601)

(declare-fun b!4284401 () Bool)

(declare-fun tp!1311160 () Bool)

(declare-fun tp!1311155 () Bool)

(assert (=> b!4284401 (= e!2660241 (and tp!1311160 (inv!62922 (_2!25582 (_1!25583 (h!52897 mapDefault!19379)))) e!2660240 tp_is_empty!23059 setRes!26104 tp!1311155))))

(declare-fun condSetEmpty!26103 () Bool)

(assert (=> b!4284401 (= condSetEmpty!26103 (= (_2!25583 (h!52897 mapDefault!19379)) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun b!4284402 () Bool)

(declare-fun e!2660244 () Bool)

(declare-fun tp!1311150 () Bool)

(assert (=> b!4284402 (= e!2660244 tp!1311150)))

(declare-fun mapNonEmpty!19379 () Bool)

(declare-fun mapRes!19379 () Bool)

(declare-fun tp!1311153 () Bool)

(assert (=> mapNonEmpty!19379 (= mapRes!19379 (and tp!1311153 e!2660243))))

(declare-fun mapRest!19379 () (Array (_ BitVec 32) List!47601))

(declare-fun mapKey!19379 () (_ BitVec 32))

(assert (=> mapNonEmpty!19379 (= mapRest!19371 (store mapRest!19379 mapKey!19379 mapValue!19379))))

(declare-fun tp!1311152 () Bool)

(declare-fun e!2660242 () Bool)

(declare-fun setNonEmpty!26103 () Bool)

(declare-fun setElem!26104 () Context!5602)

(assert (=> setNonEmpty!26103 (= setRes!26103 (and tp!1311152 (inv!62922 setElem!26104) e!2660242))))

(declare-fun setRest!26104 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26103 (= (_2!25583 (h!52897 mapValue!19379)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26104 true) setRest!26104))))

(declare-fun setIsEmpty!26103 () Bool)

(assert (=> setIsEmpty!26103 setRes!26103))

(declare-fun setNonEmpty!26104 () Bool)

(declare-fun setElem!26103 () Context!5602)

(declare-fun tp!1311154 () Bool)

(assert (=> setNonEmpty!26104 (= setRes!26104 (and tp!1311154 (inv!62922 setElem!26103) e!2660244))))

(declare-fun setRest!26103 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26104 (= (_2!25583 (h!52897 mapDefault!19379)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26103 true) setRest!26103))))

(declare-fun condMapEmpty!19379 () Bool)

(assert (=> mapNonEmpty!19372 (= condMapEmpty!19379 (= mapRest!19371 ((as const (Array (_ BitVec 32) List!47601)) mapDefault!19379)))))

(assert (=> mapNonEmpty!19372 (= tp!1311041 (and e!2660241 mapRes!19379))))

(declare-fun setIsEmpty!26104 () Bool)

(assert (=> setIsEmpty!26104 setRes!26104))

(declare-fun b!4284403 () Bool)

(declare-fun tp!1311158 () Bool)

(assert (=> b!4284403 (= e!2660242 tp!1311158)))

(declare-fun mapIsEmpty!19379 () Bool)

(assert (=> mapIsEmpty!19379 mapRes!19379))

(assert (= (and mapNonEmpty!19372 condMapEmpty!19379) mapIsEmpty!19379))

(assert (= (and mapNonEmpty!19372 (not condMapEmpty!19379)) mapNonEmpty!19379))

(assert (= b!4284398 b!4284399))

(assert (= (and b!4284398 condSetEmpty!26104) setIsEmpty!26103))

(assert (= (and b!4284398 (not condSetEmpty!26104)) setNonEmpty!26103))

(assert (= setNonEmpty!26103 b!4284403))

(assert (= (and mapNonEmpty!19379 ((_ is Cons!47477) mapValue!19379)) b!4284398))

(assert (= b!4284401 b!4284400))

(assert (= (and b!4284401 condSetEmpty!26103) setIsEmpty!26104))

(assert (= (and b!4284401 (not condSetEmpty!26103)) setNonEmpty!26104))

(assert (= setNonEmpty!26104 b!4284402))

(assert (= (and mapNonEmpty!19372 ((_ is Cons!47477) mapDefault!19379)) b!4284401))

(declare-fun m!4880651 () Bool)

(assert (=> setNonEmpty!26104 m!4880651))

(declare-fun m!4880653 () Bool)

(assert (=> b!4284398 m!4880653))

(declare-fun m!4880655 () Bool)

(assert (=> b!4284401 m!4880655))

(declare-fun m!4880657 () Bool)

(assert (=> setNonEmpty!26103 m!4880657))

(declare-fun m!4880659 () Bool)

(assert (=> mapNonEmpty!19379 m!4880659))

(declare-fun b!4284404 () Bool)

(declare-fun e!2660247 () Bool)

(declare-fun tp!1311161 () Bool)

(assert (=> b!4284404 (= e!2660247 tp!1311161)))

(declare-fun e!2660248 () Bool)

(assert (=> mapNonEmpty!19372 (= tp!1311039 e!2660248)))

(declare-fun setIsEmpty!26105 () Bool)

(declare-fun setRes!26105 () Bool)

(assert (=> setIsEmpty!26105 setRes!26105))

(declare-fun setElem!26105 () Context!5602)

(declare-fun e!2660246 () Bool)

(declare-fun setNonEmpty!26105 () Bool)

(declare-fun tp!1311164 () Bool)

(assert (=> setNonEmpty!26105 (= setRes!26105 (and tp!1311164 (inv!62922 setElem!26105) e!2660246))))

(declare-fun setRest!26105 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26105 (= (_2!25583 (h!52897 mapValue!19371)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26105 true) setRest!26105))))

(declare-fun b!4284405 () Bool)

(declare-fun tp!1311162 () Bool)

(assert (=> b!4284405 (= e!2660246 tp!1311162)))

(declare-fun tp!1311165 () Bool)

(declare-fun b!4284406 () Bool)

(declare-fun tp!1311163 () Bool)

(assert (=> b!4284406 (= e!2660248 (and tp!1311165 (inv!62922 (_2!25582 (_1!25583 (h!52897 mapValue!19371)))) e!2660247 tp_is_empty!23059 setRes!26105 tp!1311163))))

(declare-fun condSetEmpty!26105 () Bool)

(assert (=> b!4284406 (= condSetEmpty!26105 (= (_2!25583 (h!52897 mapValue!19371)) ((as const (Array Context!5602 Bool)) false)))))

(assert (= b!4284406 b!4284404))

(assert (= (and b!4284406 condSetEmpty!26105) setIsEmpty!26105))

(assert (= (and b!4284406 (not condSetEmpty!26105)) setNonEmpty!26105))

(assert (= setNonEmpty!26105 b!4284405))

(assert (= (and mapNonEmpty!19372 ((_ is Cons!47477) mapValue!19371)) b!4284406))

(declare-fun m!4880661 () Bool)

(assert (=> setNonEmpty!26105 m!4880661))

(declare-fun m!4880663 () Bool)

(assert (=> b!4284406 m!4880663))

(declare-fun b!4284407 () Bool)

(declare-fun e!2660249 () Bool)

(declare-fun tp!1311168 () Bool)

(assert (=> b!4284407 (= e!2660249 tp!1311168)))

(declare-fun b!4284408 () Bool)

(declare-fun e!2660250 () Bool)

(declare-fun tp!1311166 () Bool)

(assert (=> b!4284408 (= e!2660250 tp!1311166)))

(declare-fun e!2660251 () Bool)

(assert (=> b!4284248 (= tp!1311025 e!2660251)))

(declare-fun setIsEmpty!26106 () Bool)

(declare-fun setRes!26106 () Bool)

(assert (=> setIsEmpty!26106 setRes!26106))

(declare-fun b!4284409 () Bool)

(declare-fun tp!1311167 () Bool)

(assert (=> b!4284409 (= e!2660251 (and (inv!62922 (_1!25580 (_1!25581 (h!52896 mapDefault!19371)))) e!2660250 tp_is_empty!23059 setRes!26106 tp!1311167))))

(declare-fun condSetEmpty!26106 () Bool)

(assert (=> b!4284409 (= condSetEmpty!26106 (= (_2!25581 (h!52896 mapDefault!19371)) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun tp!1311169 () Bool)

(declare-fun setElem!26106 () Context!5602)

(declare-fun setNonEmpty!26106 () Bool)

(assert (=> setNonEmpty!26106 (= setRes!26106 (and tp!1311169 (inv!62922 setElem!26106) e!2660249))))

(declare-fun setRest!26106 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26106 (= (_2!25581 (h!52896 mapDefault!19371)) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26106 true) setRest!26106))))

(assert (= b!4284409 b!4284408))

(assert (= (and b!4284409 condSetEmpty!26106) setIsEmpty!26106))

(assert (= (and b!4284409 (not condSetEmpty!26106)) setNonEmpty!26106))

(assert (= setNonEmpty!26106 b!4284407))

(assert (= (and b!4284248 ((_ is Cons!47476) mapDefault!19371)) b!4284409))

(declare-fun m!4880665 () Bool)

(assert (=> b!4284409 m!4880665))

(declare-fun m!4880667 () Bool)

(assert (=> setNonEmpty!26106 m!4880667))

(declare-fun b!4284410 () Bool)

(declare-fun e!2660252 () Bool)

(declare-fun tp!1311172 () Bool)

(declare-fun tp!1311170 () Bool)

(assert (=> b!4284410 (= e!2660252 (and (inv!62913 (left!35338 (c!730032 input!1632))) tp!1311172 (inv!62913 (right!35668 (c!730032 input!1632))) tp!1311170))))

(declare-fun b!4284412 () Bool)

(declare-fun e!2660253 () Bool)

(declare-fun tp!1311171 () Bool)

(assert (=> b!4284412 (= e!2660253 tp!1311171)))

(declare-fun b!4284411 () Bool)

(assert (=> b!4284411 (= e!2660252 (and (inv!62921 (xs!17660 (c!730032 input!1632))) e!2660253))))

(assert (=> b!4284249 (= tp!1311022 (and (inv!62913 (c!730032 input!1632)) e!2660252))))

(assert (= (and b!4284249 ((_ is Node!14354) (c!730032 input!1632))) b!4284410))

(assert (= b!4284411 b!4284412))

(assert (= (and b!4284249 ((_ is Leaf!22211) (c!730032 input!1632))) b!4284411))

(declare-fun m!4880669 () Bool)

(assert (=> b!4284410 m!4880669))

(declare-fun m!4880671 () Bool)

(assert (=> b!4284410 m!4880671))

(declare-fun m!4880673 () Bool)

(assert (=> b!4284411 m!4880673))

(assert (=> b!4284249 m!4880517))

(declare-fun b!4284413 () Bool)

(declare-fun e!2660254 () Bool)

(declare-fun tp!1311175 () Bool)

(assert (=> b!4284413 (= e!2660254 tp!1311175)))

(declare-fun b!4284414 () Bool)

(declare-fun e!2660255 () Bool)

(declare-fun tp!1311173 () Bool)

(assert (=> b!4284414 (= e!2660255 tp!1311173)))

(declare-fun e!2660256 () Bool)

(assert (=> b!4284240 (= tp!1311020 e!2660256)))

(declare-fun setIsEmpty!26107 () Bool)

(declare-fun setRes!26107 () Bool)

(assert (=> setIsEmpty!26107 setRes!26107))

(declare-fun b!4284415 () Bool)

(declare-fun tp!1311174 () Bool)

(assert (=> b!4284415 (= e!2660256 (and (inv!62922 (_1!25580 (_1!25581 (h!52896 (zeroValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))))) e!2660255 tp_is_empty!23059 setRes!26107 tp!1311174))))

(declare-fun condSetEmpty!26107 () Bool)

(assert (=> b!4284415 (= condSetEmpty!26107 (= (_2!25581 (h!52896 (zeroValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun tp!1311176 () Bool)

(declare-fun setElem!26107 () Context!5602)

(declare-fun setNonEmpty!26107 () Bool)

(assert (=> setNonEmpty!26107 (= setRes!26107 (and tp!1311176 (inv!62922 setElem!26107) e!2660254))))

(declare-fun setRest!26107 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26107 (= (_2!25581 (h!52896 (zeroValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26107 true) setRest!26107))))

(assert (= b!4284415 b!4284414))

(assert (= (and b!4284415 condSetEmpty!26107) setIsEmpty!26107))

(assert (= (and b!4284415 (not condSetEmpty!26107)) setNonEmpty!26107))

(assert (= setNonEmpty!26107 b!4284413))

(assert (= (and b!4284240 ((_ is Cons!47476) (zeroValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))) b!4284415))

(declare-fun m!4880675 () Bool)

(assert (=> b!4284415 m!4880675))

(declare-fun m!4880677 () Bool)

(assert (=> setNonEmpty!26107 m!4880677))

(declare-fun b!4284416 () Bool)

(declare-fun e!2660257 () Bool)

(declare-fun tp!1311179 () Bool)

(assert (=> b!4284416 (= e!2660257 tp!1311179)))

(declare-fun b!4284417 () Bool)

(declare-fun e!2660258 () Bool)

(declare-fun tp!1311177 () Bool)

(assert (=> b!4284417 (= e!2660258 tp!1311177)))

(declare-fun e!2660259 () Bool)

(assert (=> b!4284240 (= tp!1311027 e!2660259)))

(declare-fun setIsEmpty!26108 () Bool)

(declare-fun setRes!26108 () Bool)

(assert (=> setIsEmpty!26108 setRes!26108))

(declare-fun tp!1311178 () Bool)

(declare-fun b!4284418 () Bool)

(assert (=> b!4284418 (= e!2660259 (and (inv!62922 (_1!25580 (_1!25581 (h!52896 (minValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))))) e!2660258 tp_is_empty!23059 setRes!26108 tp!1311178))))

(declare-fun condSetEmpty!26108 () Bool)

(assert (=> b!4284418 (= condSetEmpty!26108 (= (_2!25581 (h!52896 (minValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun tp!1311180 () Bool)

(declare-fun setElem!26108 () Context!5602)

(declare-fun setNonEmpty!26108 () Bool)

(assert (=> setNonEmpty!26108 (= setRes!26108 (and tp!1311180 (inv!62922 setElem!26108) e!2660257))))

(declare-fun setRest!26108 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26108 (= (_2!25581 (h!52896 (minValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26108 true) setRest!26108))))

(assert (= b!4284418 b!4284417))

(assert (= (and b!4284418 condSetEmpty!26108) setIsEmpty!26108))

(assert (= (and b!4284418 (not condSetEmpty!26108)) setNonEmpty!26108))

(assert (= setNonEmpty!26108 b!4284416))

(assert (= (and b!4284240 ((_ is Cons!47476) (minValue!4541 (v!41372 (underlying!8793 (v!41373 (underlying!8794 (cache!4328 cacheUp!725)))))))) b!4284418))

(declare-fun m!4880679 () Bool)

(assert (=> b!4284418 m!4880679))

(declare-fun m!4880681 () Bool)

(assert (=> setNonEmpty!26108 m!4880681))

(declare-fun b!4284419 () Bool)

(declare-fun e!2660261 () Bool)

(declare-fun tp!1311181 () Bool)

(assert (=> b!4284419 (= e!2660261 tp!1311181)))

(declare-fun e!2660262 () Bool)

(assert (=> b!4284264 (= tp!1311026 e!2660262)))

(declare-fun setIsEmpty!26109 () Bool)

(declare-fun setRes!26109 () Bool)

(assert (=> setIsEmpty!26109 setRes!26109))

(declare-fun tp!1311184 () Bool)

(declare-fun e!2660260 () Bool)

(declare-fun setNonEmpty!26109 () Bool)

(declare-fun setElem!26109 () Context!5602)

(assert (=> setNonEmpty!26109 (= setRes!26109 (and tp!1311184 (inv!62922 setElem!26109) e!2660260))))

(declare-fun setRest!26109 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26109 (= (_2!25583 (h!52897 (zeroValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26109 true) setRest!26109))))

(declare-fun b!4284420 () Bool)

(declare-fun tp!1311182 () Bool)

(assert (=> b!4284420 (= e!2660260 tp!1311182)))

(declare-fun tp!1311183 () Bool)

(declare-fun b!4284421 () Bool)

(declare-fun tp!1311185 () Bool)

(assert (=> b!4284421 (= e!2660262 (and tp!1311185 (inv!62922 (_2!25582 (_1!25583 (h!52897 (zeroValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))))) e!2660261 tp_is_empty!23059 setRes!26109 tp!1311183))))

(declare-fun condSetEmpty!26109 () Bool)

(assert (=> b!4284421 (= condSetEmpty!26109 (= (_2!25583 (h!52897 (zeroValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))) ((as const (Array Context!5602 Bool)) false)))))

(assert (= b!4284421 b!4284419))

(assert (= (and b!4284421 condSetEmpty!26109) setIsEmpty!26109))

(assert (= (and b!4284421 (not condSetEmpty!26109)) setNonEmpty!26109))

(assert (= setNonEmpty!26109 b!4284420))

(assert (= (and b!4284264 ((_ is Cons!47477) (zeroValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))) b!4284421))

(declare-fun m!4880683 () Bool)

(assert (=> setNonEmpty!26109 m!4880683))

(declare-fun m!4880685 () Bool)

(assert (=> b!4284421 m!4880685))

(declare-fun b!4284422 () Bool)

(declare-fun e!2660264 () Bool)

(declare-fun tp!1311186 () Bool)

(assert (=> b!4284422 (= e!2660264 tp!1311186)))

(declare-fun e!2660265 () Bool)

(assert (=> b!4284264 (= tp!1311021 e!2660265)))

(declare-fun setIsEmpty!26110 () Bool)

(declare-fun setRes!26110 () Bool)

(assert (=> setIsEmpty!26110 setRes!26110))

(declare-fun setNonEmpty!26110 () Bool)

(declare-fun setElem!26110 () Context!5602)

(declare-fun e!2660263 () Bool)

(declare-fun tp!1311189 () Bool)

(assert (=> setNonEmpty!26110 (= setRes!26110 (and tp!1311189 (inv!62922 setElem!26110) e!2660263))))

(declare-fun setRest!26110 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26110 (= (_2!25583 (h!52897 (minValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26110 true) setRest!26110))))

(declare-fun b!4284423 () Bool)

(declare-fun tp!1311187 () Bool)

(assert (=> b!4284423 (= e!2660263 tp!1311187)))

(declare-fun tp!1311190 () Bool)

(declare-fun tp!1311188 () Bool)

(declare-fun b!4284424 () Bool)

(assert (=> b!4284424 (= e!2660265 (and tp!1311190 (inv!62922 (_2!25582 (_1!25583 (h!52897 (minValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))))) e!2660264 tp_is_empty!23059 setRes!26110 tp!1311188))))

(declare-fun condSetEmpty!26110 () Bool)

(assert (=> b!4284424 (= condSetEmpty!26110 (= (_2!25583 (h!52897 (minValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))) ((as const (Array Context!5602 Bool)) false)))))

(assert (= b!4284424 b!4284422))

(assert (= (and b!4284424 condSetEmpty!26110) setIsEmpty!26110))

(assert (= (and b!4284424 (not condSetEmpty!26110)) setNonEmpty!26110))

(assert (= setNonEmpty!26110 b!4284423))

(assert (= (and b!4284264 ((_ is Cons!47477) (minValue!4542 (v!41374 (underlying!8795 (v!41375 (underlying!8796 (cache!4329 cacheDown!738)))))))) b!4284424))

(declare-fun m!4880687 () Bool)

(assert (=> setNonEmpty!26110 m!4880687))

(declare-fun m!4880689 () Bool)

(assert (=> b!4284424 m!4880689))

(declare-fun condMapEmpty!19382 () Bool)

(declare-fun mapDefault!19382 () List!47602)

(assert (=> mapNonEmpty!19373 (= condMapEmpty!19382 (= mapRest!19373 ((as const (Array (_ BitVec 32) List!47602)) mapDefault!19382)))))

(declare-fun e!2660274 () Bool)

(declare-fun mapRes!19382 () Bool)

(assert (=> mapNonEmpty!19373 (= tp!1311040 (and e!2660274 mapRes!19382))))

(declare-fun e!2660277 () Bool)

(declare-fun setRes!26115 () Bool)

(declare-fun setNonEmpty!26115 () Bool)

(declare-fun tp!1311207 () Bool)

(declare-fun setElem!26115 () Context!5602)

(assert (=> setNonEmpty!26115 (= setRes!26115 (and tp!1311207 (inv!62922 setElem!26115) e!2660277))))

(declare-fun mapValue!19382 () List!47602)

(declare-fun setRest!26115 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26115 (= (_1!25584 (_1!25585 (h!52898 mapValue!19382))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26115 true) setRest!26115))))

(declare-fun setRes!26116 () Bool)

(declare-fun e!2660275 () Bool)

(declare-fun tp!1311208 () Bool)

(declare-fun setNonEmpty!26116 () Bool)

(declare-fun setElem!26116 () Context!5602)

(assert (=> setNonEmpty!26116 (= setRes!26116 (and tp!1311208 (inv!62922 setElem!26116) e!2660275))))

(declare-fun setRest!26116 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26116 (= (_1!25584 (_1!25585 (h!52898 mapDefault!19382))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26116 true) setRest!26116))))

(declare-fun setIsEmpty!26115 () Bool)

(assert (=> setIsEmpty!26115 setRes!26115))

(declare-fun mapNonEmpty!19382 () Bool)

(declare-fun tp!1311205 () Bool)

(declare-fun e!2660276 () Bool)

(assert (=> mapNonEmpty!19382 (= mapRes!19382 (and tp!1311205 e!2660276))))

(declare-fun mapKey!19382 () (_ BitVec 32))

(declare-fun mapRest!19382 () (Array (_ BitVec 32) List!47602))

(assert (=> mapNonEmpty!19382 (= mapRest!19373 (store mapRest!19382 mapKey!19382 mapValue!19382))))

(declare-fun b!4284435 () Bool)

(declare-fun tp!1311206 () Bool)

(assert (=> b!4284435 (= e!2660277 tp!1311206)))

(declare-fun b!4284436 () Bool)

(declare-fun tp!1311211 () Bool)

(assert (=> b!4284436 (= e!2660276 (and setRes!26115 tp!1311211))))

(declare-fun condSetEmpty!26116 () Bool)

(assert (=> b!4284436 (= condSetEmpty!26116 (= (_1!25584 (_1!25585 (h!52898 mapValue!19382))) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun setIsEmpty!26116 () Bool)

(assert (=> setIsEmpty!26116 setRes!26116))

(declare-fun b!4284437 () Bool)

(declare-fun tp!1311209 () Bool)

(assert (=> b!4284437 (= e!2660275 tp!1311209)))

(declare-fun mapIsEmpty!19382 () Bool)

(assert (=> mapIsEmpty!19382 mapRes!19382))

(declare-fun b!4284438 () Bool)

(declare-fun tp!1311210 () Bool)

(assert (=> b!4284438 (= e!2660274 (and setRes!26116 tp!1311210))))

(declare-fun condSetEmpty!26115 () Bool)

(assert (=> b!4284438 (= condSetEmpty!26115 (= (_1!25584 (_1!25585 (h!52898 mapDefault!19382))) ((as const (Array Context!5602 Bool)) false)))))

(assert (= (and mapNonEmpty!19373 condMapEmpty!19382) mapIsEmpty!19382))

(assert (= (and mapNonEmpty!19373 (not condMapEmpty!19382)) mapNonEmpty!19382))

(assert (= (and b!4284436 condSetEmpty!26116) setIsEmpty!26115))

(assert (= (and b!4284436 (not condSetEmpty!26116)) setNonEmpty!26115))

(assert (= setNonEmpty!26115 b!4284435))

(assert (= (and mapNonEmpty!19382 ((_ is Cons!47478) mapValue!19382)) b!4284436))

(assert (= (and b!4284438 condSetEmpty!26115) setIsEmpty!26116))

(assert (= (and b!4284438 (not condSetEmpty!26115)) setNonEmpty!26116))

(assert (= setNonEmpty!26116 b!4284437))

(assert (= (and mapNonEmpty!19373 ((_ is Cons!47478) mapDefault!19382)) b!4284438))

(declare-fun m!4880691 () Bool)

(assert (=> setNonEmpty!26115 m!4880691))

(declare-fun m!4880693 () Bool)

(assert (=> setNonEmpty!26116 m!4880693))

(declare-fun m!4880695 () Bool)

(assert (=> mapNonEmpty!19382 m!4880695))

(declare-fun b!4284440 () Bool)

(declare-fun e!2660279 () Bool)

(declare-fun tp!1311212 () Bool)

(assert (=> b!4284440 (= e!2660279 tp!1311212)))

(declare-fun setIsEmpty!26117 () Bool)

(declare-fun setRes!26117 () Bool)

(assert (=> setIsEmpty!26117 setRes!26117))

(declare-fun b!4284439 () Bool)

(declare-fun e!2660278 () Bool)

(declare-fun tp!1311213 () Bool)

(assert (=> b!4284439 (= e!2660278 (and setRes!26117 tp!1311213))))

(declare-fun condSetEmpty!26117 () Bool)

(assert (=> b!4284439 (= condSetEmpty!26117 (= (_1!25584 (_1!25585 (h!52898 mapValue!19372))) ((as const (Array Context!5602 Bool)) false)))))

(declare-fun setNonEmpty!26117 () Bool)

(declare-fun setElem!26117 () Context!5602)

(declare-fun tp!1311214 () Bool)

(assert (=> setNonEmpty!26117 (= setRes!26117 (and tp!1311214 (inv!62922 setElem!26117) e!2660279))))

(declare-fun setRest!26117 () (InoxSet Context!5602))

(assert (=> setNonEmpty!26117 (= (_1!25584 (_1!25585 (h!52898 mapValue!19372))) ((_ map or) (store ((as const (Array Context!5602 Bool)) false) setElem!26117 true) setRest!26117))))

(assert (=> mapNonEmpty!19373 (= tp!1311043 e!2660278)))

(assert (= (and b!4284439 condSetEmpty!26117) setIsEmpty!26117))

(assert (= (and b!4284439 (not condSetEmpty!26117)) setNonEmpty!26117))

(assert (= setNonEmpty!26117 b!4284440))

(assert (= (and mapNonEmpty!19373 ((_ is Cons!47478) mapValue!19372)) b!4284439))

(declare-fun m!4880697 () Bool)

(assert (=> setNonEmpty!26117 m!4880697))

(declare-fun b!4284452 () Bool)

(declare-fun e!2660282 () Bool)

(declare-fun tp!1311225 () Bool)

(declare-fun tp!1311228 () Bool)

(assert (=> b!4284452 (= e!2660282 (and tp!1311225 tp!1311228))))

(assert (=> b!4284238 (= tp!1311037 e!2660282)))

(declare-fun b!4284453 () Bool)

(declare-fun tp!1311227 () Bool)

(assert (=> b!4284453 (= e!2660282 tp!1311227)))

(declare-fun b!4284451 () Bool)

(assert (=> b!4284451 (= e!2660282 tp_is_empty!23059)))

(declare-fun b!4284454 () Bool)

(declare-fun tp!1311229 () Bool)

(declare-fun tp!1311226 () Bool)

(assert (=> b!4284454 (= e!2660282 (and tp!1311229 tp!1311226))))

(assert (= (and b!4284238 ((_ is ElementMatch!12911) (regex!8002 rule!232))) b!4284451))

(assert (= (and b!4284238 ((_ is Concat!21224) (regex!8002 rule!232))) b!4284452))

(assert (= (and b!4284238 ((_ is Star!12911) (regex!8002 rule!232))) b!4284453))

(assert (= (and b!4284238 ((_ is Union!12911) (regex!8002 rule!232))) b!4284454))

(check-sat (not setNonEmpty!26110) (not b!4284407) (not setNonEmpty!26095) (not b!4284357) (not d!1265079) (not b!4284452) (not b!4284415) b_and!338119 b_and!338115 (not setNonEmpty!26116) b_and!338113 (not b!4284398) (not b!4284354) (not b!4284328) (not d!1265101) (not setNonEmpty!26103) (not b!4284405) (not b!4284329) (not b!4284435) (not b!4284438) (not b_next!127613) (not d!1265055) (not mapNonEmpty!19379) (not b!4284243) (not d!1265083) (not b!4284282) (not b!4284440) (not b!4284306) (not b!4284303) (not b!4284436) (not b!4284371) (not setNonEmpty!26091) (not b!4284439) (not b!4284437) (not b!4284338) (not b!4284399) (not setNonEmpty!26094) (not b!4284414) (not d!1265097) (not mapNonEmpty!19382) (not b_next!127617) (not b!4284418) (not d!1265099) (not b!4284292) (not b!4284383) (not d!1265063) b_and!338123 (not b!4284339) (not b!4284280) (not b!4284420) (not b_next!127625) (not b!4284400) (not d!1265081) (not setNonEmpty!26084) (not b!4284408) (not b!4284381) (not b!4284454) (not b_next!127615) (not b!4284406) (not b!4284336) (not setNonEmpty!26090) (not b!4284453) (not b!4284402) (not mapNonEmpty!19376) (not b!4284324) (not b!4284293) (not b!4284370) (not d!1265073) (not setNonEmpty!26098) (not d!1265093) (not setNonEmpty!26117) (not setNonEmpty!26106) (not b!4284309) (not b!4284276) b_and!338121 (not d!1265091) (not setNonEmpty!26107) (not b_next!127621) b_and!338111 (not d!1265071) (not b!4284300) (not b_next!127619) (not b!4284277) (not b!4284382) (not setNonEmpty!26115) (not b!4284326) tp_is_empty!23059 b_and!338117 (not setNonEmpty!26105) (not setNonEmpty!26085) (not b!4284409) (not b!4284372) (not b!4284411) (not b_next!127623) b_and!338109 (not b!4284358) (not b!4284424) (not b!4284401) (not setNonEmpty!26108) (not b!4284291) (not b!4284279) (not b!4284325) (not b!4284416) (not b!4284410) (not setNonEmpty!26109) (not b!4284412) (not b!4284337) (not b_next!127611) (not b!4284314) (not b!4284249) (not b!4284369) (not b!4284359) (not setNonEmpty!26104) (not b!4284413) (not b!4284419) (not b!4284423) (not b!4284327) (not b!4284422) (not b!4284297) (not b!4284368) (not b!4284421) (not b!4284236) (not b!4284356) (not b!4284417) (not b!4284403) (not b!4284404) (not d!1265061) (not b!4284274) (not b!4284355))
(check-sat b_and!338119 (not b_next!127613) (not b_next!127617) b_and!338123 (not b_next!127625) (not b_next!127615) b_and!338121 (not b_next!127619) b_and!338117 (not b_next!127611) b_and!338115 b_and!338113 (not b_next!127621) b_and!338111 (not b_next!127623) b_and!338109)
