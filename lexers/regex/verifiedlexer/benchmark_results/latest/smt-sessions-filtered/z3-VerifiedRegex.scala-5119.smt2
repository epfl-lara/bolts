; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!262058 () Bool)

(assert start!262058)

(declare-fun b!2695903 () Bool)

(declare-fun b_free!76177 () Bool)

(declare-fun b_next!76881 () Bool)

(assert (=> b!2695903 (= b_free!76177 (not b_next!76881))))

(declare-fun tp!852902 () Bool)

(declare-fun b_and!199307 () Bool)

(assert (=> b!2695903 (= tp!852902 b_and!199307)))

(declare-fun b!2695902 () Bool)

(declare-fun b_free!76179 () Bool)

(declare-fun b_next!76883 () Bool)

(assert (=> b!2695902 (= b_free!76179 (not b_next!76883))))

(declare-fun tp!852891 () Bool)

(declare-fun b_and!199309 () Bool)

(assert (=> b!2695902 (= tp!852891 b_and!199309)))

(declare-fun b_free!76181 () Bool)

(declare-fun b_next!76885 () Bool)

(assert (=> b!2695902 (= b_free!76181 (not b_next!76885))))

(declare-fun tp!852899 () Bool)

(declare-fun b_and!199311 () Bool)

(assert (=> b!2695902 (= tp!852899 b_and!199311)))

(declare-fun b!2695915 () Bool)

(declare-fun b_free!76183 () Bool)

(declare-fun b_next!76887 () Bool)

(assert (=> b!2695915 (= b_free!76183 (not b_next!76887))))

(declare-fun tp!852900 () Bool)

(declare-fun b_and!199313 () Bool)

(assert (=> b!2695915 (= tp!852900 b_and!199313)))

(declare-fun b!2695899 () Bool)

(declare-fun b_free!76185 () Bool)

(declare-fun b_next!76889 () Bool)

(assert (=> b!2695899 (= b_free!76185 (not b_next!76889))))

(declare-fun tp!852901 () Bool)

(declare-fun b_and!199315 () Bool)

(assert (=> b!2695899 (= tp!852901 b_and!199315)))

(declare-fun b!2695905 () Bool)

(declare-fun b_free!76187 () Bool)

(declare-fun b_next!76891 () Bool)

(assert (=> b!2695905 (= b_free!76187 (not b_next!76891))))

(declare-fun tp!852910 () Bool)

(declare-fun b_and!199317 () Bool)

(assert (=> b!2695905 (= tp!852910 b_and!199317)))

(declare-fun b!2695891 () Bool)

(declare-fun e!1699969 () Bool)

(declare-fun e!1699956 () Bool)

(declare-datatypes ((C!15964 0))(
  ( (C!15965 (val!9916 Int)) )
))
(declare-datatypes ((Regex!7903 0))(
  ( (ElementMatch!7903 (c!434607 C!15964)) (Concat!12876 (regOne!16318 Regex!7903) (regTwo!16318 Regex!7903)) (EmptyExpr!7903) (Star!7903 (reg!8232 Regex!7903)) (EmptyLang!7903) (Union!7903 (regOne!16319 Regex!7903) (regTwo!16319 Regex!7903)) )
))
(declare-datatypes ((List!31228 0))(
  ( (Nil!31128) (Cons!31128 (h!36548 Regex!7903) (t!225235 List!31228)) )
))
(declare-datatypes ((Context!4354 0))(
  ( (Context!4355 (exprs!2677 List!31228)) )
))
(declare-datatypes ((tuple2!30726 0))(
  ( (tuple2!30727 (_1!17979 Context!4354) (_2!17979 C!15964)) )
))
(declare-datatypes ((array!12593 0))(
  ( (array!12594 (arr!5626 (Array (_ BitVec 32) (_ BitVec 64))) (size!24038 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30728 0))(
  ( (tuple2!30729 (_1!17980 tuple2!30726) (_2!17980 (InoxSet Context!4354))) )
))
(declare-datatypes ((List!31229 0))(
  ( (Nil!31129) (Cons!31129 (h!36549 tuple2!30728) (t!225236 List!31229)) )
))
(declare-datatypes ((array!12595 0))(
  ( (array!12596 (arr!5627 (Array (_ BitVec 32) List!31229)) (size!24039 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7068 0))(
  ( (LongMapFixedSize!7069 (defaultEntry!3919 Int) (mask!9222 (_ BitVec 32)) (extraKeys!3783 (_ BitVec 32)) (zeroValue!3793 List!31229) (minValue!3793 List!31229) (_size!7111 (_ BitVec 32)) (_keys!3834 array!12593) (_values!3815 array!12595) (_vacant!3595 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13945 0))(
  ( (Cell!13946 (v!32907 LongMapFixedSize!7068)) )
))
(declare-datatypes ((MutLongMap!3534 0))(
  ( (LongMap!3534 (underlying!7271 Cell!13945)) (MutLongMapExt!3533 (__x!20027 Int)) )
))
(declare-fun lt!952511 () MutLongMap!3534)

(get-info :version)

(assert (=> b!2695891 (= e!1699969 (and e!1699956 ((_ is LongMap!3534) lt!952511)))))

(declare-datatypes ((Hashable!3450 0))(
  ( (HashableExt!3449 (__x!20028 Int)) )
))
(declare-datatypes ((Cell!13947 0))(
  ( (Cell!13948 (v!32908 MutLongMap!3534)) )
))
(declare-datatypes ((MutableMap!3440 0))(
  ( (MutableMapExt!3439 (__x!20029 Int)) (HashMap!3440 (underlying!7272 Cell!13947) (hashF!5482 Hashable!3450) (_size!7112 (_ BitVec 32)) (defaultValue!3611 Int)) )
))
(declare-datatypes ((CacheUp!2150 0))(
  ( (CacheUp!2151 (cache!3583 MutableMap!3440)) )
))
(declare-fun cacheUp!486 () CacheUp!2150)

(assert (=> b!2695891 (= lt!952511 (v!32908 (underlying!7272 (cache!3583 cacheUp!486))))))

(declare-fun b!2695892 () Bool)

(declare-fun e!1699968 () Bool)

(declare-fun e!1699973 () Bool)

(assert (=> b!2695892 (= e!1699968 e!1699973)))

(declare-fun b!2695893 () Bool)

(declare-fun res!1132545 () Bool)

(declare-fun e!1699965 () Bool)

(assert (=> b!2695893 (=> (not res!1132545) (not e!1699965))))

(declare-datatypes ((List!31230 0))(
  ( (Nil!31130) (Cons!31130 (h!36550 (_ BitVec 16)) (t!225237 List!31230)) )
))
(declare-datatypes ((TokenValue!4973 0))(
  ( (FloatLiteralValue!9946 (text!35256 List!31230)) (TokenValueExt!4972 (__x!20030 Int)) (Broken!24865 (value!152992 List!31230)) (Object!5072) (End!4973) (Def!4973) (Underscore!4973) (Match!4973) (Else!4973) (Error!4973) (Case!4973) (If!4973) (Extends!4973) (Abstract!4973) (Class!4973) (Val!4973) (DelimiterValue!9946 (del!5033 List!31230)) (KeywordValue!4979 (value!152993 List!31230)) (CommentValue!9946 (value!152994 List!31230)) (WhitespaceValue!9946 (value!152995 List!31230)) (IndentationValue!4973 (value!152996 List!31230)) (String!34764) (Int32!4973) (Broken!24866 (value!152997 List!31230)) (Boolean!4974) (Unit!45218) (OperatorValue!4976 (op!5033 List!31230)) (IdentifierValue!9946 (value!152998 List!31230)) (IdentifierValue!9947 (value!152999 List!31230)) (WhitespaceValue!9947 (value!153000 List!31230)) (True!9946) (False!9946) (Broken!24867 (value!153001 List!31230)) (Broken!24868 (value!153002 List!31230)) (True!9947) (RightBrace!4973) (RightBracket!4973) (Colon!4973) (Null!4973) (Comma!4973) (LeftBracket!4973) (False!9947) (LeftBrace!4973) (ImaginaryLiteralValue!4973 (text!35257 List!31230)) (StringLiteralValue!14919 (value!153003 List!31230)) (EOFValue!4973 (value!153004 List!31230)) (IdentValue!4973 (value!153005 List!31230)) (DelimiterValue!9947 (value!153006 List!31230)) (DedentValue!4973 (value!153007 List!31230)) (NewLineValue!4973 (value!153008 List!31230)) (IntegerValue!14919 (value!153009 (_ BitVec 32)) (text!35258 List!31230)) (IntegerValue!14920 (value!153010 Int) (text!35259 List!31230)) (Times!4973) (Or!4973) (Equal!4973) (Minus!4973) (Broken!24869 (value!153011 List!31230)) (And!4973) (Div!4973) (LessEqual!4973) (Mod!4973) (Concat!12877) (Not!4973) (Plus!4973) (SpaceValue!4973 (value!153012 List!31230)) (IntegerValue!14921 (value!153013 Int) (text!35260 List!31230)) (StringLiteralValue!14920 (text!35261 List!31230)) (FloatLiteralValue!9947 (text!35262 List!31230)) (BytesLiteralValue!4973 (value!153014 List!31230)) (CommentValue!9947 (value!153015 List!31230)) (StringLiteralValue!14921 (value!153016 List!31230)) (ErrorTokenValue!4973 (msg!5034 List!31230)) )
))
(declare-datatypes ((String!34765 0))(
  ( (String!34766 (value!153017 String)) )
))
(declare-datatypes ((List!31231 0))(
  ( (Nil!31131) (Cons!31131 (h!36551 C!15964) (t!225238 List!31231)) )
))
(declare-datatypes ((IArray!19467 0))(
  ( (IArray!19468 (innerList!9791 List!31231)) )
))
(declare-datatypes ((Conc!9731 0))(
  ( (Node!9731 (left!23976 Conc!9731) (right!24306 Conc!9731) (csize!19692 Int) (cheight!9942 Int)) (Leaf!14851 (xs!12771 IArray!19467) (csize!19693 Int)) (Empty!9731) )
))
(declare-datatypes ((BalanceConc!19076 0))(
  ( (BalanceConc!19077 (c!434608 Conc!9731)) )
))
(declare-datatypes ((TokenValueInjection!9386 0))(
  ( (TokenValueInjection!9387 (toValue!6709 Int) (toChars!6568 Int)) )
))
(declare-datatypes ((Rule!9302 0))(
  ( (Rule!9303 (regex!4751 Regex!7903) (tag!5255 String!34765) (isSeparator!4751 Bool) (transformation!4751 TokenValueInjection!9386)) )
))
(declare-datatypes ((Token!8968 0))(
  ( (Token!8969 (value!153018 TokenValue!4973) (rule!7168 Rule!9302) (size!24040 Int) (originalCharacters!5515 List!31231)) )
))
(declare-datatypes ((List!31232 0))(
  ( (Nil!31132) (Cons!31132 (h!36552 Token!8968) (t!225239 List!31232)) )
))
(declare-datatypes ((IArray!19469 0))(
  ( (IArray!19470 (innerList!9792 List!31232)) )
))
(declare-datatypes ((Conc!9732 0))(
  ( (Node!9732 (left!23977 Conc!9732) (right!24307 Conc!9732) (csize!19694 Int) (cheight!9943 Int)) (Leaf!14852 (xs!12772 IArray!19469) (csize!19695 Int)) (Empty!9732) )
))
(declare-datatypes ((BalanceConc!19078 0))(
  ( (BalanceConc!19079 (c!434609 Conc!9732)) )
))
(declare-datatypes ((tuple2!30730 0))(
  ( (tuple2!30731 (_1!17981 BalanceConc!19078) (_2!17981 BalanceConc!19076)) )
))
(declare-fun lt!952514 () tuple2!30730)

(declare-fun lt!952508 () tuple2!30730)

(declare-fun list!11743 (BalanceConc!19076) List!31231)

(assert (=> b!2695893 (= res!1132545 (= (list!11743 (_2!17981 lt!952514)) (list!11743 (_2!17981 lt!952508))))))

(declare-fun res!1132555 () Bool)

(declare-fun e!1699980 () Bool)

(assert (=> start!262058 (=> (not res!1132555) (not e!1699980))))

(declare-datatypes ((LexerInterface!4347 0))(
  ( (LexerInterfaceExt!4344 (__x!20031 Int)) (Lexer!4345) )
))
(declare-fun thiss!12257 () LexerInterface!4347)

(assert (=> start!262058 (= res!1132555 ((_ is Lexer!4345) thiss!12257))))

(assert (=> start!262058 e!1699980))

(declare-fun totalInput!354 () BalanceConc!19076)

(declare-fun e!1699963 () Bool)

(declare-fun inv!42181 (BalanceConc!19076) Bool)

(assert (=> start!262058 (and (inv!42181 totalInput!354) e!1699963)))

(declare-fun e!1699964 () Bool)

(declare-fun inv!42182 (CacheUp!2150) Bool)

(assert (=> start!262058 (and (inv!42182 cacheUp!486) e!1699964)))

(declare-fun acc!348 () BalanceConc!19078)

(declare-fun e!1699975 () Bool)

(declare-fun inv!42183 (BalanceConc!19078) Bool)

(assert (=> start!262058 (and (inv!42183 acc!348) e!1699975)))

(declare-fun input!780 () BalanceConc!19076)

(declare-fun e!1699970 () Bool)

(assert (=> start!262058 (and (inv!42181 input!780) e!1699970)))

(declare-fun treated!26 () BalanceConc!19076)

(declare-fun e!1699952 () Bool)

(assert (=> start!262058 (and (inv!42181 treated!26) e!1699952)))

(declare-fun e!1699977 () Bool)

(assert (=> start!262058 e!1699977))

(assert (=> start!262058 true))

(declare-datatypes ((tuple3!4292 0))(
  ( (tuple3!4293 (_1!17982 Regex!7903) (_2!17982 Context!4354) (_3!2616 C!15964)) )
))
(declare-datatypes ((tuple2!30732 0))(
  ( (tuple2!30733 (_1!17983 tuple3!4292) (_2!17983 (InoxSet Context!4354))) )
))
(declare-datatypes ((List!31233 0))(
  ( (Nil!31133) (Cons!31133 (h!36553 tuple2!30732) (t!225240 List!31233)) )
))
(declare-datatypes ((array!12597 0))(
  ( (array!12598 (arr!5628 (Array (_ BitVec 32) List!31233)) (size!24041 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!7070 0))(
  ( (LongMapFixedSize!7071 (defaultEntry!3920 Int) (mask!9223 (_ BitVec 32)) (extraKeys!3784 (_ BitVec 32)) (zeroValue!3794 List!31233) (minValue!3794 List!31233) (_size!7113 (_ BitVec 32)) (_keys!3835 array!12593) (_values!3816 array!12597) (_vacant!3596 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13949 0))(
  ( (Cell!13950 (v!32909 LongMapFixedSize!7070)) )
))
(declare-datatypes ((MutLongMap!3535 0))(
  ( (LongMap!3535 (underlying!7273 Cell!13949)) (MutLongMapExt!3534 (__x!20032 Int)) )
))
(declare-datatypes ((Cell!13951 0))(
  ( (Cell!13952 (v!32910 MutLongMap!3535)) )
))
(declare-datatypes ((Hashable!3451 0))(
  ( (HashableExt!3450 (__x!20033 Int)) )
))
(declare-datatypes ((MutableMap!3441 0))(
  ( (MutableMapExt!3440 (__x!20034 Int)) (HashMap!3441 (underlying!7274 Cell!13951) (hashF!5483 Hashable!3451) (_size!7114 (_ BitVec 32)) (defaultValue!3612 Int)) )
))
(declare-datatypes ((CacheDown!2262 0))(
  ( (CacheDown!2263 (cache!3584 MutableMap!3441)) )
))
(declare-fun cacheDown!499 () CacheDown!2262)

(declare-fun inv!42184 (CacheDown!2262) Bool)

(assert (=> start!262058 (and (inv!42184 cacheDown!499) e!1699968)))

(declare-fun b!2695894 () Bool)

(declare-fun e!1699953 () Bool)

(declare-fun e!1699983 () Bool)

(assert (=> b!2695894 (= e!1699953 e!1699983)))

(declare-fun b!2695895 () Bool)

(declare-fun res!1132557 () Bool)

(assert (=> b!2695895 (=> (not res!1132557) (not e!1699980))))

(declare-fun valid!2740 (CacheUp!2150) Bool)

(assert (=> b!2695895 (= res!1132557 (valid!2740 cacheUp!486))))

(declare-fun b!2695896 () Bool)

(declare-fun tp!852894 () Bool)

(declare-fun inv!42185 (Conc!9731) Bool)

(assert (=> b!2695896 (= e!1699952 (and (inv!42185 (c!434608 treated!26)) tp!852894))))

(declare-fun b!2695897 () Bool)

(declare-fun e!1699958 () Bool)

(assert (=> b!2695897 (= e!1699958 true)))

(declare-fun lt!952509 () List!31232)

(declare-fun lt!952522 () tuple2!30730)

(declare-fun list!11744 (BalanceConc!19078) List!31232)

(assert (=> b!2695897 (= lt!952509 (list!11744 (_1!17981 lt!952522)))))

(declare-fun b!2695898 () Bool)

(declare-fun e!1699955 () Bool)

(declare-fun tp!852908 () Bool)

(declare-fun mapRes!16151 () Bool)

(assert (=> b!2695898 (= e!1699955 (and tp!852908 mapRes!16151))))

(declare-fun condMapEmpty!16151 () Bool)

(declare-fun mapDefault!16151 () List!31229)

(assert (=> b!2695898 (= condMapEmpty!16151 (= (arr!5627 (_values!3815 (v!32907 (underlying!7271 (v!32908 (underlying!7272 (cache!3583 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31229)) mapDefault!16151)))))

(declare-fun e!1699966 () Bool)

(declare-fun tp!852911 () Bool)

(declare-fun tp!852898 () Bool)

(declare-fun e!1699984 () Bool)

(declare-fun array_inv!4022 (array!12593) Bool)

(declare-fun array_inv!4023 (array!12597) Bool)

(assert (=> b!2695899 (= e!1699966 (and tp!852901 tp!852911 tp!852898 (array_inv!4022 (_keys!3835 (v!32909 (underlying!7273 (v!32910 (underlying!7274 (cache!3584 cacheDown!499))))))) (array_inv!4023 (_values!3816 (v!32909 (underlying!7273 (v!32910 (underlying!7274 (cache!3584 cacheDown!499))))))) e!1699984))))

(declare-fun b!2695900 () Bool)

(declare-fun e!1699982 () Bool)

(declare-fun tp!852892 () Bool)

(assert (=> b!2695900 (= e!1699977 (and e!1699982 tp!852892))))

(declare-fun e!1699959 () Bool)

(declare-fun b!2695901 () Bool)

(declare-fun tp!852890 () Bool)

(declare-datatypes ((List!31234 0))(
  ( (Nil!31134) (Cons!31134 (h!36554 Rule!9302) (t!225241 List!31234)) )
))
(declare-fun rules!1381 () List!31234)

(declare-fun inv!42180 (String!34765) Bool)

(declare-fun inv!42186 (TokenValueInjection!9386) Bool)

(assert (=> b!2695901 (= e!1699982 (and tp!852890 (inv!42180 (tag!5255 (h!36554 rules!1381))) (inv!42186 (transformation!4751 (h!36554 rules!1381))) e!1699959))))

(assert (=> b!2695902 (= e!1699959 (and tp!852891 tp!852899))))

(declare-fun e!1699971 () Bool)

(assert (=> b!2695903 (= e!1699971 (and e!1699969 tp!852902))))

(declare-fun b!2695904 () Bool)

(declare-fun tp!852907 () Bool)

(assert (=> b!2695904 (= e!1699970 (and (inv!42185 (c!434608 input!780)) tp!852907))))

(declare-fun tp!852903 () Bool)

(declare-fun tp!852896 () Bool)

(declare-fun array_inv!4024 (array!12595) Bool)

(assert (=> b!2695905 (= e!1699983 (and tp!852910 tp!852896 tp!852903 (array_inv!4022 (_keys!3834 (v!32907 (underlying!7271 (v!32908 (underlying!7272 (cache!3583 cacheUp!486))))))) (array_inv!4024 (_values!3815 (v!32907 (underlying!7271 (v!32908 (underlying!7272 (cache!3583 cacheUp!486))))))) e!1699955))))

(declare-fun mapIsEmpty!16151 () Bool)

(declare-fun mapRes!16152 () Bool)

(assert (=> mapIsEmpty!16151 mapRes!16152))

(declare-fun b!2695906 () Bool)

(declare-fun res!1132554 () Bool)

(assert (=> b!2695906 (=> (not res!1132554) (not e!1699980))))

(declare-fun valid!2741 (CacheDown!2262) Bool)

(assert (=> b!2695906 (= res!1132554 (valid!2741 cacheDown!499))))

(declare-fun b!2695907 () Bool)

(declare-fun e!1699981 () Bool)

(declare-fun lex!1962 (LexerInterface!4347 List!31234 BalanceConc!19076) tuple2!30730)

(declare-fun lexTailRecV2!874 (LexerInterface!4347 List!31234 BalanceConc!19076 BalanceConc!19076 BalanceConc!19076 BalanceConc!19078) tuple2!30730)

(assert (=> b!2695907 (= e!1699981 (= (lex!1962 thiss!12257 rules!1381 input!780) (lexTailRecV2!874 thiss!12257 rules!1381 input!780 (BalanceConc!19077 Empty!9731) input!780 (BalanceConc!19079 Empty!9732))))))

(declare-fun b!2695908 () Bool)

(declare-fun res!1132550 () Bool)

(assert (=> b!2695908 (=> (not res!1132550) (not e!1699980))))

(declare-fun isEmpty!17741 (List!31234) Bool)

(assert (=> b!2695908 (= res!1132550 (not (isEmpty!17741 rules!1381)))))

(declare-fun b!2695909 () Bool)

(assert (=> b!2695909 (= e!1699964 e!1699971)))

(declare-fun b!2695910 () Bool)

(declare-fun e!1699979 () Bool)

(assert (=> b!2695910 (= e!1699980 e!1699979)))

(declare-fun res!1132546 () Bool)

(assert (=> b!2695910 (=> (not res!1132546) (not e!1699979))))

(declare-fun lt!952523 () List!31231)

(declare-fun ++!7639 (List!31231 List!31231) List!31231)

(assert (=> b!2695910 (= res!1132546 (= (list!11743 totalInput!354) (++!7639 lt!952523 (list!11743 input!780))))))

(assert (=> b!2695910 (= lt!952523 (list!11743 treated!26))))

(declare-fun mapNonEmpty!16151 () Bool)

(declare-fun tp!852906 () Bool)

(declare-fun tp!852893 () Bool)

(assert (=> mapNonEmpty!16151 (= mapRes!16152 (and tp!852906 tp!852893))))

(declare-fun mapKey!16151 () (_ BitVec 32))

(declare-fun mapRest!16152 () (Array (_ BitVec 32) List!31233))

(declare-fun mapValue!16152 () List!31233)

(assert (=> mapNonEmpty!16151 (= (arr!5628 (_values!3816 (v!32909 (underlying!7273 (v!32910 (underlying!7274 (cache!3584 cacheDown!499))))))) (store mapRest!16152 mapKey!16151 mapValue!16152))))

(declare-fun b!2695911 () Bool)

(declare-fun e!1699960 () Bool)

(assert (=> b!2695911 (= e!1699960 e!1699966)))

(declare-fun b!2695912 () Bool)

(assert (=> b!2695912 (= e!1699965 (not e!1699958))))

(declare-fun res!1132548 () Bool)

(assert (=> b!2695912 (=> res!1132548 e!1699958)))

(declare-datatypes ((tuple2!30734 0))(
  ( (tuple2!30735 (_1!17984 Token!8968) (_2!17984 BalanceConc!19076)) )
))
(declare-datatypes ((Option!6145 0))(
  ( (None!6144) (Some!6144 (v!32911 tuple2!30734)) )
))
(declare-datatypes ((tuple3!4294 0))(
  ( (tuple3!4295 (_1!17985 Option!6145) (_2!17985 CacheUp!2150) (_3!2617 CacheDown!2262)) )
))
(declare-fun maxPrefixZipperSequenceMem!21 (LexerInterface!4347 List!31234 BalanceConc!19076 CacheUp!2150 CacheDown!2262) tuple3!4294)

(assert (=> b!2695912 (= res!1132548 ((_ is Some!6144) (_1!17985 (maxPrefixZipperSequenceMem!21 thiss!12257 rules!1381 input!780 cacheUp!486 cacheDown!499))))))

(assert (=> b!2695912 e!1699981))

(declare-fun res!1132551 () Bool)

(assert (=> b!2695912 (=> (not res!1132551) (not e!1699981))))

(declare-fun e!1699957 () tuple2!30730)

(assert (=> b!2695912 (= res!1132551 (= lt!952522 e!1699957))))

(declare-fun c!434605 () Bool)

(declare-fun lt!952524 () Option!6145)

(assert (=> b!2695912 (= c!434605 ((_ is Some!6144) lt!952524))))

(declare-fun lexTailRec!33 (LexerInterface!4347 List!31234 BalanceConc!19076 BalanceConc!19076 BalanceConc!19076 BalanceConc!19078) tuple2!30730)

(assert (=> b!2695912 (= lt!952522 (lexTailRec!33 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348))))

(declare-fun maxPrefixZipperSequence!1009 (LexerInterface!4347 List!31234 BalanceConc!19076) Option!6145)

(assert (=> b!2695912 (= lt!952524 (maxPrefixZipperSequence!1009 thiss!12257 rules!1381 input!780))))

(declare-fun b!2695913 () Bool)

(declare-fun tp!852904 () Bool)

(assert (=> b!2695913 (= e!1699984 (and tp!852904 mapRes!16152))))

(declare-fun condMapEmpty!16152 () Bool)

(declare-fun mapDefault!16152 () List!31233)

(assert (=> b!2695913 (= condMapEmpty!16152 (= (arr!5628 (_values!3816 (v!32909 (underlying!7273 (v!32910 (underlying!7274 (cache!3584 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31233)) mapDefault!16152)))))

(declare-fun b!2695914 () Bool)

(declare-fun e!1699978 () Bool)

(assert (=> b!2695914 (= e!1699978 e!1699960)))

(declare-fun e!1699967 () Bool)

(assert (=> b!2695915 (= e!1699973 (and e!1699967 tp!852900))))

(declare-fun lt!952526 () tuple2!30730)

(declare-fun b!2695916 () Bool)

(declare-fun lt!952510 () Option!6145)

(declare-fun lexRec!609 (LexerInterface!4347 List!31234 BalanceConc!19076) tuple2!30730)

(assert (=> b!2695916 (= lt!952526 (lexRec!609 thiss!12257 rules!1381 (_2!17984 (v!32911 lt!952510))))))

(declare-fun e!1699962 () tuple2!30730)

(declare-fun prepend!1083 (BalanceConc!19078 Token!8968) BalanceConc!19078)

(assert (=> b!2695916 (= e!1699962 (tuple2!30731 (prepend!1083 (_1!17981 lt!952526) (_1!17984 (v!32911 lt!952510))) (_2!17981 lt!952526)))))

(declare-fun b!2695917 () Bool)

(declare-fun e!1699976 () Bool)

(assert (=> b!2695917 (= e!1699979 e!1699976)))

(declare-fun res!1132552 () Bool)

(assert (=> b!2695917 (=> (not res!1132552) (not e!1699976))))

(declare-fun lt!952512 () List!31232)

(declare-fun lt!952520 () List!31232)

(assert (=> b!2695917 (= res!1132552 (= lt!952512 lt!952520))))

(assert (=> b!2695917 (= lt!952520 (list!11744 acc!348))))

(declare-fun lt!952507 () tuple2!30730)

(assert (=> b!2695917 (= lt!952512 (list!11744 (_1!17981 lt!952507)))))

(assert (=> b!2695917 (= lt!952507 (lexRec!609 thiss!12257 rules!1381 treated!26))))

(declare-fun b!2695918 () Bool)

(declare-fun tp!852895 () Bool)

(declare-fun inv!42187 (Conc!9732) Bool)

(assert (=> b!2695918 (= e!1699975 (and (inv!42187 (c!434609 acc!348)) tp!852895))))

(declare-fun mapIsEmpty!16152 () Bool)

(assert (=> mapIsEmpty!16152 mapRes!16151))

(declare-fun b!2695919 () Bool)

(assert (=> b!2695919 (= e!1699976 e!1699965)))

(declare-fun res!1132553 () Bool)

(assert (=> b!2695919 (=> (not res!1132553) (not e!1699965))))

(declare-fun ++!7640 (BalanceConc!19078 BalanceConc!19078) BalanceConc!19078)

(assert (=> b!2695919 (= res!1132553 (= (list!11744 (_1!17981 lt!952514)) (list!11744 (++!7640 acc!348 (_1!17981 lt!952508)))))))

(assert (=> b!2695919 (= lt!952508 (lexRec!609 thiss!12257 rules!1381 input!780))))

(assert (=> b!2695919 (= lt!952514 (lexRec!609 thiss!12257 rules!1381 totalInput!354))))

(declare-fun mapNonEmpty!16152 () Bool)

(declare-fun tp!852897 () Bool)

(declare-fun tp!852909 () Bool)

(assert (=> mapNonEmpty!16152 (= mapRes!16151 (and tp!852897 tp!852909))))

(declare-fun mapKey!16152 () (_ BitVec 32))

(declare-fun mapRest!16151 () (Array (_ BitVec 32) List!31229))

(declare-fun mapValue!16151 () List!31229)

(assert (=> mapNonEmpty!16152 (= (arr!5627 (_values!3815 (v!32907 (underlying!7271 (v!32908 (underlying!7272 (cache!3583 cacheUp!486))))))) (store mapRest!16151 mapKey!16152 mapValue!16151))))

(declare-fun lt!952501 () tuple2!30730)

(declare-fun b!2695920 () Bool)

(declare-fun e!1699954 () Bool)

(assert (=> b!2695920 (= e!1699954 (= lt!952508 (tuple2!30731 (prepend!1083 (_1!17981 lt!952501) (_1!17984 (v!32911 lt!952524))) (_2!17981 lt!952501))))))

(declare-fun b!2695921 () Bool)

(declare-fun res!1132547 () Bool)

(assert (=> b!2695921 (=> (not res!1132547) (not e!1699980))))

(declare-fun rulesInvariant!3835 (LexerInterface!4347 List!31234) Bool)

(assert (=> b!2695921 (= res!1132547 (rulesInvariant!3835 thiss!12257 rules!1381))))

(declare-fun b!2695922 () Bool)

(declare-fun res!1132556 () Bool)

(assert (=> b!2695922 (=> (not res!1132556) (not e!1699976))))

(declare-fun isEmpty!17742 (List!31231) Bool)

(assert (=> b!2695922 (= res!1132556 (isEmpty!17742 (list!11743 (_2!17981 lt!952507))))))

(declare-fun lt!952513 () BalanceConc!19076)

(declare-fun b!2695923 () Bool)

(declare-fun lt!952504 () BalanceConc!19078)

(assert (=> b!2695923 (= e!1699957 (lexTailRec!33 thiss!12257 rules!1381 totalInput!354 lt!952513 (_2!17984 (v!32911 lt!952524)) lt!952504))))

(assert (=> b!2695923 (= lt!952501 (lexRec!609 thiss!12257 rules!1381 (_2!17984 (v!32911 lt!952524))))))

(declare-fun lt!952519 () BalanceConc!19076)

(declare-fun charsOf!2994 (Token!8968) BalanceConc!19076)

(assert (=> b!2695923 (= lt!952519 (charsOf!2994 (_1!17984 (v!32911 lt!952524))))))

(declare-fun lt!952521 () List!31231)

(assert (=> b!2695923 (= lt!952521 (list!11743 lt!952519))))

(declare-fun lt!952518 () List!31231)

(assert (=> b!2695923 (= lt!952518 (list!11743 (_2!17984 (v!32911 lt!952524))))))

(declare-datatypes ((Unit!45219 0))(
  ( (Unit!45220) )
))
(declare-fun lt!952503 () Unit!45219)

(declare-fun lemmaConcatAssociativity!1560 (List!31231 List!31231 List!31231) Unit!45219)

(assert (=> b!2695923 (= lt!952503 (lemmaConcatAssociativity!1560 lt!952523 lt!952521 lt!952518))))

(declare-fun lt!952506 () List!31231)

(assert (=> b!2695923 (= lt!952506 (++!7639 lt!952523 lt!952521))))

(declare-fun res!1132549 () Bool)

(assert (=> b!2695923 (= res!1132549 (= (++!7639 lt!952506 lt!952518) (++!7639 lt!952523 (++!7639 lt!952521 lt!952518))))))

(assert (=> b!2695923 (=> (not res!1132549) (not e!1699954))))

(assert (=> b!2695923 e!1699954))

(declare-fun lt!952505 () List!31232)

(assert (=> b!2695923 (= lt!952505 (Cons!31132 (_1!17984 (v!32911 lt!952524)) Nil!31132))))

(declare-fun lt!952502 () List!31232)

(assert (=> b!2695923 (= lt!952502 (list!11744 (_1!17981 lt!952501)))))

(declare-fun lt!952525 () Unit!45219)

(declare-fun lemmaConcatAssociativity!1561 (List!31232 List!31232 List!31232) Unit!45219)

(assert (=> b!2695923 (= lt!952525 (lemmaConcatAssociativity!1561 lt!952520 lt!952505 lt!952502))))

(declare-fun ++!7641 (List!31232 List!31232) List!31232)

(assert (=> b!2695923 (= (++!7641 (++!7641 lt!952520 lt!952505) lt!952502) (++!7641 lt!952520 (++!7641 lt!952505 lt!952502)))))

(declare-fun append!778 (BalanceConc!19078 Token!8968) BalanceConc!19078)

(assert (=> b!2695923 (= lt!952504 (append!778 acc!348 (_1!17984 (v!32911 lt!952524))))))

(declare-fun lt!952515 () List!31232)

(assert (=> b!2695923 (= lt!952515 (list!11744 lt!952504))))

(declare-fun lt!952517 () Unit!45219)

(declare-fun lemmaLexThenLexPrefix!410 (LexerInterface!4347 List!31234 List!31231 List!31231 List!31232 List!31232 List!31231) Unit!45219)

(assert (=> b!2695923 (= lt!952517 (lemmaLexThenLexPrefix!410 thiss!12257 rules!1381 lt!952506 lt!952518 lt!952515 lt!952502 (list!11743 (_2!17981 lt!952501))))))

(declare-datatypes ((tuple2!30736 0))(
  ( (tuple2!30737 (_1!17986 List!31232) (_2!17986 List!31231)) )
))
(declare-fun lexList!1197 (LexerInterface!4347 List!31234 List!31231) tuple2!30736)

(assert (=> b!2695923 (= (lexList!1197 thiss!12257 rules!1381 lt!952506) (tuple2!30737 lt!952515 Nil!31131))))

(declare-fun ++!7642 (BalanceConc!19076 BalanceConc!19076) BalanceConc!19076)

(assert (=> b!2695923 (= lt!952513 (++!7642 treated!26 lt!952519))))

(assert (=> b!2695923 (= lt!952510 (maxPrefixZipperSequence!1009 thiss!12257 rules!1381 lt!952513))))

(declare-fun c!434606 () Bool)

(assert (=> b!2695923 (= c!434606 ((_ is Some!6144) lt!952510))))

(assert (=> b!2695923 (= (lexRec!609 thiss!12257 rules!1381 lt!952513) e!1699962)))

(declare-fun b!2695924 () Bool)

(assert (=> b!2695924 (= e!1699957 (tuple2!30731 acc!348 input!780))))

(declare-fun b!2695925 () Bool)

(assert (=> b!2695925 (= e!1699956 e!1699953)))

(declare-fun b!2695926 () Bool)

(declare-fun tp!852905 () Bool)

(assert (=> b!2695926 (= e!1699963 (and (inv!42185 (c!434608 totalInput!354)) tp!852905))))

(declare-fun b!2695927 () Bool)

(declare-fun lt!952516 () MutLongMap!3535)

(assert (=> b!2695927 (= e!1699967 (and e!1699978 ((_ is LongMap!3535) lt!952516)))))

(assert (=> b!2695927 (= lt!952516 (v!32910 (underlying!7274 (cache!3584 cacheDown!499))))))

(declare-fun b!2695928 () Bool)

(assert (=> b!2695928 (= e!1699962 (tuple2!30731 (BalanceConc!19079 Empty!9732) lt!952513))))

(assert (= (and start!262058 res!1132555) b!2695908))

(assert (= (and b!2695908 res!1132550) b!2695921))

(assert (= (and b!2695921 res!1132547) b!2695895))

(assert (= (and b!2695895 res!1132557) b!2695906))

(assert (= (and b!2695906 res!1132554) b!2695910))

(assert (= (and b!2695910 res!1132546) b!2695917))

(assert (= (and b!2695917 res!1132552) b!2695922))

(assert (= (and b!2695922 res!1132556) b!2695919))

(assert (= (and b!2695919 res!1132553) b!2695893))

(assert (= (and b!2695893 res!1132545) b!2695912))

(assert (= (and b!2695912 c!434605) b!2695923))

(assert (= (and b!2695912 (not c!434605)) b!2695924))

(assert (= (and b!2695923 res!1132549) b!2695920))

(assert (= (and b!2695923 c!434606) b!2695916))

(assert (= (and b!2695923 (not c!434606)) b!2695928))

(assert (= (and b!2695912 res!1132551) b!2695907))

(assert (= (and b!2695912 (not res!1132548)) b!2695897))

(assert (= start!262058 b!2695926))

(assert (= (and b!2695898 condMapEmpty!16151) mapIsEmpty!16152))

(assert (= (and b!2695898 (not condMapEmpty!16151)) mapNonEmpty!16152))

(assert (= b!2695905 b!2695898))

(assert (= b!2695894 b!2695905))

(assert (= b!2695925 b!2695894))

(assert (= (and b!2695891 ((_ is LongMap!3534) (v!32908 (underlying!7272 (cache!3583 cacheUp!486))))) b!2695925))

(assert (= b!2695903 b!2695891))

(assert (= (and b!2695909 ((_ is HashMap!3440) (cache!3583 cacheUp!486))) b!2695903))

(assert (= start!262058 b!2695909))

(assert (= start!262058 b!2695918))

(assert (= start!262058 b!2695904))

(assert (= start!262058 b!2695896))

(assert (= b!2695901 b!2695902))

(assert (= b!2695900 b!2695901))

(assert (= (and start!262058 ((_ is Cons!31134) rules!1381)) b!2695900))

(assert (= (and b!2695913 condMapEmpty!16152) mapIsEmpty!16151))

(assert (= (and b!2695913 (not condMapEmpty!16152)) mapNonEmpty!16151))

(assert (= b!2695899 b!2695913))

(assert (= b!2695911 b!2695899))

(assert (= b!2695914 b!2695911))

(assert (= (and b!2695927 ((_ is LongMap!3535) (v!32910 (underlying!7274 (cache!3584 cacheDown!499))))) b!2695914))

(assert (= b!2695915 b!2695927))

(assert (= (and b!2695892 ((_ is HashMap!3441) (cache!3584 cacheDown!499))) b!2695915))

(assert (= start!262058 b!2695892))

(declare-fun m!3076927 () Bool)

(assert (=> b!2695917 m!3076927))

(declare-fun m!3076929 () Bool)

(assert (=> b!2695917 m!3076929))

(declare-fun m!3076931 () Bool)

(assert (=> b!2695917 m!3076931))

(declare-fun m!3076933 () Bool)

(assert (=> b!2695922 m!3076933))

(assert (=> b!2695922 m!3076933))

(declare-fun m!3076935 () Bool)

(assert (=> b!2695922 m!3076935))

(declare-fun m!3076937 () Bool)

(assert (=> b!2695926 m!3076937))

(declare-fun m!3076939 () Bool)

(assert (=> mapNonEmpty!16151 m!3076939))

(declare-fun m!3076941 () Bool)

(assert (=> b!2695910 m!3076941))

(declare-fun m!3076943 () Bool)

(assert (=> b!2695910 m!3076943))

(assert (=> b!2695910 m!3076943))

(declare-fun m!3076945 () Bool)

(assert (=> b!2695910 m!3076945))

(declare-fun m!3076947 () Bool)

(assert (=> b!2695910 m!3076947))

(declare-fun m!3076949 () Bool)

(assert (=> start!262058 m!3076949))

(declare-fun m!3076951 () Bool)

(assert (=> start!262058 m!3076951))

(declare-fun m!3076953 () Bool)

(assert (=> start!262058 m!3076953))

(declare-fun m!3076955 () Bool)

(assert (=> start!262058 m!3076955))

(declare-fun m!3076957 () Bool)

(assert (=> start!262058 m!3076957))

(declare-fun m!3076959 () Bool)

(assert (=> start!262058 m!3076959))

(declare-fun m!3076961 () Bool)

(assert (=> b!2695895 m!3076961))

(declare-fun m!3076963 () Bool)

(assert (=> b!2695923 m!3076963))

(declare-fun m!3076965 () Bool)

(assert (=> b!2695923 m!3076965))

(declare-fun m!3076967 () Bool)

(assert (=> b!2695923 m!3076967))

(declare-fun m!3076969 () Bool)

(assert (=> b!2695923 m!3076969))

(declare-fun m!3076971 () Bool)

(assert (=> b!2695923 m!3076971))

(declare-fun m!3076973 () Bool)

(assert (=> b!2695923 m!3076973))

(assert (=> b!2695923 m!3076969))

(declare-fun m!3076975 () Bool)

(assert (=> b!2695923 m!3076975))

(declare-fun m!3076977 () Bool)

(assert (=> b!2695923 m!3076977))

(declare-fun m!3076979 () Bool)

(assert (=> b!2695923 m!3076979))

(declare-fun m!3076981 () Bool)

(assert (=> b!2695923 m!3076981))

(declare-fun m!3076983 () Bool)

(assert (=> b!2695923 m!3076983))

(declare-fun m!3076985 () Bool)

(assert (=> b!2695923 m!3076985))

(declare-fun m!3076987 () Bool)

(assert (=> b!2695923 m!3076987))

(declare-fun m!3076989 () Bool)

(assert (=> b!2695923 m!3076989))

(declare-fun m!3076991 () Bool)

(assert (=> b!2695923 m!3076991))

(assert (=> b!2695923 m!3076983))

(declare-fun m!3076993 () Bool)

(assert (=> b!2695923 m!3076993))

(declare-fun m!3076995 () Bool)

(assert (=> b!2695923 m!3076995))

(declare-fun m!3076997 () Bool)

(assert (=> b!2695923 m!3076997))

(declare-fun m!3076999 () Bool)

(assert (=> b!2695923 m!3076999))

(declare-fun m!3077001 () Bool)

(assert (=> b!2695923 m!3077001))

(declare-fun m!3077003 () Bool)

(assert (=> b!2695923 m!3077003))

(declare-fun m!3077005 () Bool)

(assert (=> b!2695923 m!3077005))

(assert (=> b!2695923 m!3076997))

(declare-fun m!3077007 () Bool)

(assert (=> b!2695923 m!3077007))

(declare-fun m!3077009 () Bool)

(assert (=> b!2695923 m!3077009))

(assert (=> b!2695923 m!3077003))

(declare-fun m!3077011 () Bool)

(assert (=> b!2695908 m!3077011))

(declare-fun m!3077013 () Bool)

(assert (=> b!2695901 m!3077013))

(declare-fun m!3077015 () Bool)

(assert (=> b!2695901 m!3077015))

(declare-fun m!3077017 () Bool)

(assert (=> b!2695919 m!3077017))

(declare-fun m!3077019 () Bool)

(assert (=> b!2695919 m!3077019))

(declare-fun m!3077021 () Bool)

(assert (=> b!2695919 m!3077021))

(declare-fun m!3077023 () Bool)

(assert (=> b!2695919 m!3077023))

(declare-fun m!3077025 () Bool)

(assert (=> b!2695919 m!3077025))

(assert (=> b!2695919 m!3077023))

(declare-fun m!3077027 () Bool)

(assert (=> b!2695904 m!3077027))

(declare-fun m!3077029 () Bool)

(assert (=> b!2695912 m!3077029))

(declare-fun m!3077031 () Bool)

(assert (=> b!2695912 m!3077031))

(declare-fun m!3077033 () Bool)

(assert (=> b!2695912 m!3077033))

(declare-fun m!3077035 () Bool)

(assert (=> b!2695899 m!3077035))

(declare-fun m!3077037 () Bool)

(assert (=> b!2695899 m!3077037))

(declare-fun m!3077039 () Bool)

(assert (=> b!2695920 m!3077039))

(declare-fun m!3077041 () Bool)

(assert (=> mapNonEmpty!16152 m!3077041))

(declare-fun m!3077043 () Bool)

(assert (=> b!2695906 m!3077043))

(declare-fun m!3077045 () Bool)

(assert (=> b!2695893 m!3077045))

(declare-fun m!3077047 () Bool)

(assert (=> b!2695893 m!3077047))

(declare-fun m!3077049 () Bool)

(assert (=> b!2695916 m!3077049))

(declare-fun m!3077051 () Bool)

(assert (=> b!2695916 m!3077051))

(declare-fun m!3077053 () Bool)

(assert (=> b!2695897 m!3077053))

(declare-fun m!3077055 () Bool)

(assert (=> b!2695907 m!3077055))

(declare-fun m!3077057 () Bool)

(assert (=> b!2695907 m!3077057))

(declare-fun m!3077059 () Bool)

(assert (=> b!2695918 m!3077059))

(declare-fun m!3077061 () Bool)

(assert (=> b!2695921 m!3077061))

(declare-fun m!3077063 () Bool)

(assert (=> b!2695896 m!3077063))

(declare-fun m!3077065 () Bool)

(assert (=> b!2695905 m!3077065))

(declare-fun m!3077067 () Bool)

(assert (=> b!2695905 m!3077067))

(check-sat b_and!199317 (not b!2695918) (not b!2695893) (not b!2695904) (not b!2695920) (not b!2695921) (not b!2695919) (not b!2695906) (not b!2695926) (not b!2695917) (not b_next!76885) (not b_next!76883) (not b_next!76881) (not b!2695901) (not b!2695916) (not b!2695898) (not b_next!76887) (not mapNonEmpty!16152) b_and!199309 (not b!2695897) (not b_next!76889) (not b_next!76891) b_and!199307 (not b!2695908) (not b!2695913) (not b!2695910) (not b!2695895) b_and!199315 (not b!2695905) (not b!2695899) (not b!2695923) (not b!2695912) (not b!2695907) (not b!2695922) b_and!199313 (not b!2695900) (not mapNonEmpty!16151) (not start!262058) b_and!199311 (not b!2695896))
(check-sat b_and!199317 (not b_next!76887) b_and!199309 b_and!199315 b_and!199313 (not b_next!76885) b_and!199311 (not b_next!76883) (not b_next!76881) (not b_next!76889) (not b_next!76891) b_and!199307)
