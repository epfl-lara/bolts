; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!274786 () Bool)

(assert start!274786)

(declare-fun b!2829532 () Bool)

(declare-fun b_free!81209 () Bool)

(declare-fun b_next!81913 () Bool)

(assert (=> b!2829532 (= b_free!81209 (not b_next!81913))))

(declare-fun tp!903754 () Bool)

(declare-fun b_and!206867 () Bool)

(assert (=> b!2829532 (= tp!903754 b_and!206867)))

(declare-fun b_free!81211 () Bool)

(declare-fun b_next!81915 () Bool)

(assert (=> b!2829532 (= b_free!81211 (not b_next!81915))))

(declare-fun tp!903760 () Bool)

(declare-fun b_and!206869 () Bool)

(assert (=> b!2829532 (= tp!903760 b_and!206869)))

(declare-fun b!2829521 () Bool)

(declare-fun b_free!81213 () Bool)

(declare-fun b_next!81917 () Bool)

(assert (=> b!2829521 (= b_free!81213 (not b_next!81917))))

(declare-fun tp!903745 () Bool)

(declare-fun b_and!206871 () Bool)

(assert (=> b!2829521 (= tp!903745 b_and!206871)))

(declare-fun b!2829533 () Bool)

(declare-fun b_free!81215 () Bool)

(declare-fun b_next!81919 () Bool)

(assert (=> b!2829533 (= b_free!81215 (not b_next!81919))))

(declare-fun tp!903748 () Bool)

(declare-fun b_and!206873 () Bool)

(assert (=> b!2829533 (= tp!903748 b_and!206873)))

(declare-fun b!2829518 () Bool)

(declare-fun b_free!81217 () Bool)

(declare-fun b_next!81921 () Bool)

(assert (=> b!2829518 (= b_free!81217 (not b_next!81921))))

(declare-fun tp!903753 () Bool)

(declare-fun b_and!206875 () Bool)

(assert (=> b!2829518 (= tp!903753 b_and!206875)))

(declare-fun b!2829523 () Bool)

(declare-fun b_free!81219 () Bool)

(declare-fun b_next!81923 () Bool)

(assert (=> b!2829523 (= b_free!81219 (not b_next!81923))))

(declare-fun tp!903758 () Bool)

(declare-fun b_and!206877 () Bool)

(assert (=> b!2829523 (= tp!903758 b_and!206877)))

(declare-fun mapNonEmpty!18518 () Bool)

(declare-fun mapRes!18518 () Bool)

(declare-fun tp!903743 () Bool)

(declare-fun tp!903747 () Bool)

(assert (=> mapNonEmpty!18518 (= mapRes!18518 (and tp!903743 tp!903747))))

(declare-datatypes ((C!16932 0))(
  ( (C!16933 (val!10478 Int)) )
))
(declare-datatypes ((Regex!8375 0))(
  ( (ElementMatch!8375 (c!457757 C!16932)) (Concat!13589 (regOne!17262 Regex!8375) (regTwo!17262 Regex!8375)) (EmptyExpr!8375) (Star!8375 (reg!8704 Regex!8375)) (EmptyLang!8375) (Union!8375 (regOne!17263 Regex!8375) (regTwo!17263 Regex!8375)) )
))
(declare-datatypes ((List!33398 0))(
  ( (Nil!33274) (Cons!33274 (h!38694 Regex!8375) (t!231247 List!33398)) )
))
(declare-datatypes ((Context!4958 0))(
  ( (Context!4959 (exprs!2979 List!33398)) )
))
(declare-datatypes ((tuple2!33460 0))(
  ( (tuple2!33461 (_1!19828 Context!4958) (_2!19828 C!16932)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!33462 0))(
  ( (tuple2!33463 (_1!19829 tuple2!33460) (_2!19829 (InoxSet Context!4958))) )
))
(declare-datatypes ((List!33399 0))(
  ( (Nil!33275) (Cons!33275 (h!38695 tuple2!33462) (t!231248 List!33399)) )
))
(declare-fun mapRest!18519 () (Array (_ BitVec 32) List!33399))

(declare-fun mapKey!18518 () (_ BitVec 32))

(declare-fun mapValue!18518 () List!33399)

(declare-datatypes ((array!14495 0))(
  ( (array!14496 (arr!6459 (Array (_ BitVec 32) List!33399)) (size!25902 (_ BitVec 32))) )
))
(declare-datatypes ((array!14497 0))(
  ( (array!14498 (arr!6460 (Array (_ BitVec 32) (_ BitVec 64))) (size!25903 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8154 0))(
  ( (LongMapFixedSize!8155 (defaultEntry!4462 Int) (mask!10045 (_ BitVec 32)) (extraKeys!4326 (_ BitVec 32)) (zeroValue!4336 List!33399) (minValue!4336 List!33399) (_size!8197 (_ BitVec 32)) (_keys!4377 array!14497) (_values!4358 array!14495) (_vacant!4138 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!3993 0))(
  ( (HashableExt!3992 (__x!22124 Int)) )
))
(declare-datatypes ((Cell!16117 0))(
  ( (Cell!16118 (v!34311 LongMapFixedSize!8154)) )
))
(declare-datatypes ((MutLongMap!4077 0))(
  ( (LongMap!4077 (underlying!8383 Cell!16117)) (MutLongMapExt!4076 (__x!22125 Int)) )
))
(declare-datatypes ((Cell!16119 0))(
  ( (Cell!16120 (v!34312 MutLongMap!4077)) )
))
(declare-datatypes ((MutableMap!3983 0))(
  ( (MutableMapExt!3982 (__x!22126 Int)) (HashMap!3983 (underlying!8384 Cell!16119) (hashF!6025 Hashable!3993) (_size!8198 (_ BitVec 32)) (defaultValue!4154 Int)) )
))
(declare-datatypes ((CacheUp!2680 0))(
  ( (CacheUp!2681 (cache!4118 MutableMap!3983)) )
))
(declare-fun cacheUp!420 () CacheUp!2680)

(assert (=> mapNonEmpty!18518 (= (arr!6459 (_values!4358 (v!34311 (underlying!8383 (v!34312 (underlying!8384 (cache!4118 cacheUp!420))))))) (store mapRest!18519 mapKey!18518 mapValue!18518))))

(declare-fun b!2829510 () Bool)

(declare-fun e!1791096 () Bool)

(declare-fun e!1791088 () Bool)

(assert (=> b!2829510 (= e!1791096 e!1791088)))

(declare-fun res!1177921 () Bool)

(assert (=> b!2829510 (=> res!1177921 e!1791088)))

(declare-datatypes ((String!36591 0))(
  ( (String!36592 (value!160387 String)) )
))
(declare-datatypes ((List!33400 0))(
  ( (Nil!33276) (Cons!33276 (h!38696 C!16932) (t!231249 List!33400)) )
))
(declare-datatypes ((IArray!20651 0))(
  ( (IArray!20652 (innerList!10383 List!33400)) )
))
(declare-datatypes ((Conc!10323 0))(
  ( (Node!10323 (left!25126 Conc!10323) (right!25456 Conc!10323) (csize!20876 Int) (cheight!10534 Int)) (Leaf!15723 (xs!13435 IArray!20651) (csize!20877 Int)) (Empty!10323) )
))
(declare-datatypes ((BalanceConc!20284 0))(
  ( (BalanceConc!20285 (c!457758 Conc!10323)) )
))
(declare-datatypes ((List!33401 0))(
  ( (Nil!33277) (Cons!33277 (h!38697 (_ BitVec 16)) (t!231250 List!33401)) )
))
(declare-datatypes ((TokenValue!5214 0))(
  ( (FloatLiteralValue!10428 (text!36943 List!33401)) (TokenValueExt!5213 (__x!22127 Int)) (Broken!26070 (value!160388 List!33401)) (Object!5337) (End!5214) (Def!5214) (Underscore!5214) (Match!5214) (Else!5214) (Error!5214) (Case!5214) (If!5214) (Extends!5214) (Abstract!5214) (Class!5214) (Val!5214) (DelimiterValue!10428 (del!5274 List!33401)) (KeywordValue!5220 (value!160389 List!33401)) (CommentValue!10428 (value!160390 List!33401)) (WhitespaceValue!10428 (value!160391 List!33401)) (IndentationValue!5214 (value!160392 List!33401)) (String!36593) (Int32!5214) (Broken!26071 (value!160393 List!33401)) (Boolean!5215) (Unit!47306) (OperatorValue!5217 (op!5274 List!33401)) (IdentifierValue!10428 (value!160394 List!33401)) (IdentifierValue!10429 (value!160395 List!33401)) (WhitespaceValue!10429 (value!160396 List!33401)) (True!10428) (False!10428) (Broken!26072 (value!160397 List!33401)) (Broken!26073 (value!160398 List!33401)) (True!10429) (RightBrace!5214) (RightBracket!5214) (Colon!5214) (Null!5214) (Comma!5214) (LeftBracket!5214) (False!10429) (LeftBrace!5214) (ImaginaryLiteralValue!5214 (text!36944 List!33401)) (StringLiteralValue!15642 (value!160399 List!33401)) (EOFValue!5214 (value!160400 List!33401)) (IdentValue!5214 (value!160401 List!33401)) (DelimiterValue!10429 (value!160402 List!33401)) (DedentValue!5214 (value!160403 List!33401)) (NewLineValue!5214 (value!160404 List!33401)) (IntegerValue!15642 (value!160405 (_ BitVec 32)) (text!36945 List!33401)) (IntegerValue!15643 (value!160406 Int) (text!36946 List!33401)) (Times!5214) (Or!5214) (Equal!5214) (Minus!5214) (Broken!26074 (value!160407 List!33401)) (And!5214) (Div!5214) (LessEqual!5214) (Mod!5214) (Concat!13590) (Not!5214) (Plus!5214) (SpaceValue!5214 (value!160408 List!33401)) (IntegerValue!15644 (value!160409 Int) (text!36947 List!33401)) (StringLiteralValue!15643 (text!36948 List!33401)) (FloatLiteralValue!10429 (text!36949 List!33401)) (BytesLiteralValue!5214 (value!160410 List!33401)) (CommentValue!10429 (value!160411 List!33401)) (StringLiteralValue!15644 (value!160412 List!33401)) (ErrorTokenValue!5214 (msg!5275 List!33401)) )
))
(declare-datatypes ((TokenValueInjection!9856 0))(
  ( (TokenValueInjection!9857 (toValue!7010 Int) (toChars!6869 Int)) )
))
(declare-datatypes ((Rule!9768 0))(
  ( (Rule!9769 (regex!4984 Regex!8375) (tag!5488 String!36591) (isSeparator!4984 Bool) (transformation!4984 TokenValueInjection!9856)) )
))
(declare-datatypes ((Token!9370 0))(
  ( (Token!9371 (value!160413 TokenValue!5214) (rule!7412 Rule!9768) (size!25904 Int) (originalCharacters!5716 List!33400)) )
))
(declare-datatypes ((List!33402 0))(
  ( (Nil!33278) (Cons!33278 (h!38698 Token!9370) (t!231251 List!33402)) )
))
(declare-datatypes ((IArray!20653 0))(
  ( (IArray!20654 (innerList!10384 List!33402)) )
))
(declare-datatypes ((Conc!10324 0))(
  ( (Node!10324 (left!25127 Conc!10324) (right!25457 Conc!10324) (csize!20878 Int) (cheight!10535 Int)) (Leaf!15724 (xs!13436 IArray!20653) (csize!20879 Int)) (Empty!10324) )
))
(declare-datatypes ((BalanceConc!20286 0))(
  ( (BalanceConc!20287 (c!457759 Conc!10324)) )
))
(declare-fun v!6247 () BalanceConc!20286)

(declare-fun lt!1009183 () Token!9370)

(declare-fun contains!6078 (BalanceConc!20286 Token!9370) Bool)

(assert (=> b!2829510 (= res!1177921 (not (contains!6078 v!6247 lt!1009183)))))

(declare-fun from!827 () Int)

(declare-fun apply!7769 (BalanceConc!20286 Int) Token!9370)

(assert (=> b!2829510 (= lt!1009183 (apply!7769 v!6247 (+ 1 from!827)))))

(declare-fun b!2829511 () Bool)

(declare-fun e!1791087 () Bool)

(declare-fun tp!903757 () Bool)

(assert (=> b!2829511 (= e!1791087 (and tp!903757 mapRes!18518))))

(declare-fun condMapEmpty!18519 () Bool)

(declare-fun mapDefault!18519 () List!33399)

(assert (=> b!2829511 (= condMapEmpty!18519 (= (arr!6459 (_values!4358 (v!34311 (underlying!8383 (v!34312 (underlying!8384 (cache!4118 cacheUp!420))))))) ((as const (Array (_ BitVec 32) List!33399)) mapDefault!18519)))))

(declare-fun mapIsEmpty!18518 () Bool)

(assert (=> mapIsEmpty!18518 mapRes!18518))

(declare-fun b!2829512 () Bool)

(declare-fun res!1177923 () Bool)

(declare-fun e!1791094 () Bool)

(assert (=> b!2829512 (=> (not res!1177923) (not e!1791094))))

(declare-datatypes ((LexerInterface!4574 0))(
  ( (LexerInterfaceExt!4571 (__x!22128 Int)) (Lexer!4572) )
))
(declare-fun thiss!11212 () LexerInterface!4574)

(declare-datatypes ((List!33403 0))(
  ( (Nil!33279) (Cons!33279 (h!38699 Rule!9768) (t!231252 List!33403)) )
))
(declare-fun rules!1102 () List!33403)

(declare-fun rulesInvariant!3991 (LexerInterface!4574 List!33403) Bool)

(assert (=> b!2829512 (= res!1177923 (rulesInvariant!3991 thiss!11212 rules!1102))))

(declare-fun b!2829513 () Bool)

(declare-fun e!1791101 () Bool)

(declare-fun e!1791107 () Bool)

(assert (=> b!2829513 (= e!1791101 e!1791107)))

(declare-fun b!2829514 () Bool)

(declare-fun e!1791090 () Bool)

(declare-fun e!1791098 () Bool)

(assert (=> b!2829514 (= e!1791090 e!1791098)))

(declare-fun b!2829515 () Bool)

(declare-fun e!1791089 () Bool)

(declare-fun e!1791091 () Bool)

(assert (=> b!2829515 (= e!1791089 e!1791091)))

(declare-fun b!2829516 () Bool)

(declare-fun res!1177927 () Bool)

(assert (=> b!2829516 (=> res!1177927 e!1791088)))

(declare-fun lt!1009177 () List!33402)

(declare-fun contains!6079 (List!33402 Token!9370) Bool)

(assert (=> b!2829516 (= res!1177927 (not (contains!6079 lt!1009177 lt!1009183)))))

(declare-fun e!1791095 () Bool)

(declare-fun tp!903751 () Bool)

(declare-fun e!1791108 () Bool)

(declare-datatypes ((tuple3!5256 0))(
  ( (tuple3!5257 (_1!19830 Regex!8375) (_2!19830 Context!4958) (_3!3098 C!16932)) )
))
(declare-datatypes ((Hashable!3994 0))(
  ( (HashableExt!3993 (__x!22129 Int)) )
))
(declare-datatypes ((tuple2!33464 0))(
  ( (tuple2!33465 (_1!19831 tuple3!5256) (_2!19831 (InoxSet Context!4958))) )
))
(declare-datatypes ((List!33404 0))(
  ( (Nil!33280) (Cons!33280 (h!38700 tuple2!33464) (t!231253 List!33404)) )
))
(declare-datatypes ((array!14499 0))(
  ( (array!14500 (arr!6461 (Array (_ BitVec 32) List!33404)) (size!25905 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!8156 0))(
  ( (LongMapFixedSize!8157 (defaultEntry!4463 Int) (mask!10046 (_ BitVec 32)) (extraKeys!4327 (_ BitVec 32)) (zeroValue!4337 List!33404) (minValue!4337 List!33404) (_size!8199 (_ BitVec 32)) (_keys!4378 array!14497) (_values!4359 array!14499) (_vacant!4139 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!16121 0))(
  ( (Cell!16122 (v!34313 LongMapFixedSize!8156)) )
))
(declare-datatypes ((MutLongMap!4078 0))(
  ( (LongMap!4078 (underlying!8385 Cell!16121)) (MutLongMapExt!4077 (__x!22130 Int)) )
))
(declare-datatypes ((Cell!16123 0))(
  ( (Cell!16124 (v!34314 MutLongMap!4078)) )
))
(declare-datatypes ((MutableMap!3984 0))(
  ( (MutableMapExt!3983 (__x!22131 Int)) (HashMap!3984 (underlying!8386 Cell!16123) (hashF!6026 Hashable!3994) (_size!8200 (_ BitVec 32)) (defaultValue!4155 Int)) )
))
(declare-datatypes ((CacheDown!2802 0))(
  ( (CacheDown!2803 (cache!4119 MutableMap!3984)) )
))
(declare-fun cacheDown!433 () CacheDown!2802)

(declare-fun tp!903755 () Bool)

(declare-fun array_inv!4624 (array!14497) Bool)

(declare-fun array_inv!4625 (array!14499) Bool)

(assert (=> b!2829518 (= e!1791108 (and tp!903753 tp!903755 tp!903751 (array_inv!4624 (_keys!4378 (v!34313 (underlying!8385 (v!34314 (underlying!8386 (cache!4119 cacheDown!433))))))) (array_inv!4625 (_values!4359 (v!34313 (underlying!8385 (v!34314 (underlying!8386 (cache!4119 cacheDown!433))))))) e!1791095))))

(declare-fun b!2829519 () Bool)

(declare-fun res!1177928 () Bool)

(assert (=> b!2829519 (=> (not res!1177928) (not e!1791094))))

(declare-fun rulesProduceEachTokenIndividually!1094 (LexerInterface!4574 List!33403 BalanceConc!20286) Bool)

(assert (=> b!2829519 (= res!1177928 (rulesProduceEachTokenIndividually!1094 thiss!11212 rules!1102 v!6247))))

(declare-fun b!2829520 () Bool)

(declare-fun e!1791097 () Bool)

(declare-fun e!1791085 () Bool)

(declare-fun tp!903742 () Bool)

(assert (=> b!2829520 (= e!1791097 (and e!1791085 tp!903742))))

(declare-fun e!1791104 () Bool)

(assert (=> b!2829521 (= e!1791098 (and e!1791104 tp!903745))))

(declare-fun b!2829522 () Bool)

(declare-fun e!1791093 () Bool)

(declare-fun tp!903756 () Bool)

(declare-fun inv!45232 (Conc!10324) Bool)

(assert (=> b!2829522 (= e!1791093 (and (inv!45232 (c!457759 v!6247)) tp!903756))))

(declare-fun tp!903746 () Bool)

(declare-fun tp!903744 () Bool)

(declare-fun e!1791083 () Bool)

(declare-fun array_inv!4626 (array!14495) Bool)

(assert (=> b!2829523 (= e!1791083 (and tp!903758 tp!903744 tp!903746 (array_inv!4624 (_keys!4377 (v!34311 (underlying!8383 (v!34312 (underlying!8384 (cache!4118 cacheUp!420))))))) (array_inv!4626 (_values!4358 (v!34311 (underlying!8383 (v!34312 (underlying!8384 (cache!4118 cacheUp!420))))))) e!1791087))))

(declare-fun b!2829524 () Bool)

(declare-fun e!1791082 () Bool)

(assert (=> b!2829524 (= e!1791082 true)))

(declare-datatypes ((tuple3!5258 0))(
  ( (tuple3!5259 (_1!19832 Bool) (_2!19832 CacheUp!2680) (_3!3099 CacheDown!2802)) )
))
(declare-fun lt!1009174 () tuple3!5258)

(declare-fun lt!1009180 () tuple3!5258)

(declare-fun tokensListTwoByTwoPredicateSeparableMem!8 (LexerInterface!4574 BalanceConc!20286 Int List!33403 CacheUp!2680 CacheDown!2802) tuple3!5258)

(assert (=> b!2829524 (= lt!1009180 (tokensListTwoByTwoPredicateSeparableMem!8 thiss!11212 v!6247 (+ 1 from!827) rules!1102 (_2!19832 lt!1009174) (_3!3099 lt!1009174)))))

(declare-fun b!2829525 () Bool)

(declare-fun e!1791103 () Bool)

(assert (=> b!2829525 (= e!1791103 e!1791108)))

(declare-fun b!2829526 () Bool)

(declare-fun res!1177919 () Bool)

(assert (=> b!2829526 (=> res!1177919 e!1791096)))

(declare-fun lt!1009184 () Token!9370)

(assert (=> b!2829526 (= res!1177919 (not (contains!6079 lt!1009177 lt!1009184)))))

(declare-fun b!2829527 () Bool)

(assert (=> b!2829527 (= e!1791107 e!1791083)))

(declare-fun e!1791084 () Bool)

(declare-fun tp!903752 () Bool)

(declare-fun b!2829528 () Bool)

(declare-fun inv!45231 (String!36591) Bool)

(declare-fun inv!45233 (TokenValueInjection!9856) Bool)

(assert (=> b!2829528 (= e!1791085 (and tp!903752 (inv!45231 (tag!5488 (h!38699 rules!1102))) (inv!45233 (transformation!4984 (h!38699 rules!1102))) e!1791084))))

(declare-fun b!2829529 () Bool)

(declare-fun res!1177925 () Bool)

(assert (=> b!2829529 (=> (not res!1177925) (not e!1791094))))

(declare-fun isEmpty!18382 (List!33403) Bool)

(assert (=> b!2829529 (= res!1177925 (not (isEmpty!18382 rules!1102)))))

(declare-fun mapIsEmpty!18519 () Bool)

(declare-fun mapRes!18519 () Bool)

(assert (=> mapIsEmpty!18519 mapRes!18519))

(declare-fun mapNonEmpty!18519 () Bool)

(declare-fun tp!903749 () Bool)

(declare-fun tp!903750 () Bool)

(assert (=> mapNonEmpty!18519 (= mapRes!18519 (and tp!903749 tp!903750))))

(declare-fun mapValue!18519 () List!33404)

(declare-fun mapKey!18519 () (_ BitVec 32))

(declare-fun mapRest!18518 () (Array (_ BitVec 32) List!33404))

(assert (=> mapNonEmpty!18519 (= (arr!6461 (_values!4359 (v!34313 (underlying!8385 (v!34314 (underlying!8386 (cache!4119 cacheDown!433))))))) (store mapRest!18518 mapKey!18519 mapValue!18519))))

(declare-fun b!2829530 () Bool)

(declare-fun tp!903759 () Bool)

(assert (=> b!2829530 (= e!1791095 (and tp!903759 mapRes!18519))))

(declare-fun condMapEmpty!18518 () Bool)

(declare-fun mapDefault!18518 () List!33404)

(assert (=> b!2829530 (= condMapEmpty!18518 (= (arr!6461 (_values!4359 (v!34313 (underlying!8385 (v!34314 (underlying!8386 (cache!4119 cacheDown!433))))))) ((as const (Array (_ BitVec 32) List!33404)) mapDefault!18518)))))

(declare-fun b!2829531 () Bool)

(declare-fun e!1791105 () Bool)

(declare-fun lt!1009185 () MutLongMap!4078)

(get-info :version)

(assert (=> b!2829531 (= e!1791104 (and e!1791105 ((_ is LongMap!4078) lt!1009185)))))

(assert (=> b!2829531 (= lt!1009185 (v!34314 (underlying!8386 (cache!4119 cacheDown!433))))))

(assert (=> b!2829532 (= e!1791084 (and tp!903754 tp!903760))))

(declare-fun e!1791086 () Bool)

(assert (=> b!2829533 (= e!1791091 (and e!1791086 tp!903748))))

(declare-fun b!2829534 () Bool)

(declare-fun res!1177918 () Bool)

(assert (=> b!2829534 (=> (not res!1177918) (not e!1791094))))

(declare-fun lt!1009175 () Int)

(assert (=> b!2829534 (= res!1177918 (< from!827 (- lt!1009175 1)))))

(declare-fun res!1177920 () Bool)

(declare-fun e!1791106 () Bool)

(assert (=> start!274786 (=> (not res!1177920) (not e!1791106))))

(assert (=> start!274786 (= res!1177920 (and ((_ is Lexer!4572) thiss!11212) (>= from!827 0)))))

(assert (=> start!274786 e!1791106))

(assert (=> start!274786 e!1791097))

(declare-fun inv!45234 (BalanceConc!20286) Bool)

(assert (=> start!274786 (and (inv!45234 v!6247) e!1791093)))

(assert (=> start!274786 true))

(declare-fun inv!45235 (CacheDown!2802) Bool)

(assert (=> start!274786 (and (inv!45235 cacheDown!433) e!1791090)))

(declare-fun inv!45236 (CacheUp!2680) Bool)

(assert (=> start!274786 (and (inv!45236 cacheUp!420) e!1791089)))

(declare-fun b!2829517 () Bool)

(declare-fun lt!1009179 () MutLongMap!4077)

(assert (=> b!2829517 (= e!1791086 (and e!1791101 ((_ is LongMap!4077) lt!1009179)))))

(assert (=> b!2829517 (= lt!1009179 (v!34312 (underlying!8384 (cache!4118 cacheUp!420))))))

(declare-fun b!2829535 () Bool)

(assert (=> b!2829535 (= e!1791094 (not e!1791096))))

(declare-fun res!1177922 () Bool)

(assert (=> b!2829535 (=> res!1177922 e!1791096)))

(assert (=> b!2829535 (= res!1177922 (not (contains!6078 v!6247 lt!1009184)))))

(assert (=> b!2829535 (= lt!1009184 (apply!7769 v!6247 from!827))))

(declare-fun lt!1009181 () List!33402)

(declare-fun tail!4463 (List!33402) List!33402)

(declare-fun drop!1787 (List!33402 Int) List!33402)

(assert (=> b!2829535 (= (tail!4463 lt!1009181) (drop!1787 lt!1009177 (+ 2 from!827)))))

(declare-datatypes ((Unit!47307 0))(
  ( (Unit!47308) )
))
(declare-fun lt!1009189 () Unit!47307)

(declare-fun lemmaDropTail!873 (List!33402 Int) Unit!47307)

(assert (=> b!2829535 (= lt!1009189 (lemmaDropTail!873 lt!1009177 (+ 1 from!827)))))

(declare-fun lt!1009178 () List!33402)

(assert (=> b!2829535 (= (tail!4463 lt!1009178) lt!1009181)))

(declare-fun lt!1009186 () Unit!47307)

(assert (=> b!2829535 (= lt!1009186 (lemmaDropTail!873 lt!1009177 from!827))))

(declare-fun head!6238 (List!33402) Token!9370)

(declare-fun apply!7770 (List!33402 Int) Token!9370)

(assert (=> b!2829535 (= (head!6238 lt!1009181) (apply!7770 lt!1009177 (+ 1 from!827)))))

(assert (=> b!2829535 (= lt!1009181 (drop!1787 lt!1009177 (+ 1 from!827)))))

(declare-fun lt!1009182 () Unit!47307)

(declare-fun lemmaDropApply!985 (List!33402 Int) Unit!47307)

(assert (=> b!2829535 (= lt!1009182 (lemmaDropApply!985 lt!1009177 (+ 1 from!827)))))

(assert (=> b!2829535 (= (head!6238 lt!1009178) (apply!7770 lt!1009177 from!827))))

(assert (=> b!2829535 (= lt!1009178 (drop!1787 lt!1009177 from!827))))

(declare-fun lt!1009187 () Unit!47307)

(assert (=> b!2829535 (= lt!1009187 (lemmaDropApply!985 lt!1009177 from!827))))

(declare-fun list!12459 (BalanceConc!20286) List!33402)

(assert (=> b!2829535 (= lt!1009177 (list!12459 v!6247))))

(declare-fun b!2829536 () Bool)

(declare-fun e!1791100 () Bool)

(declare-fun size!25906 (BalanceConc!20284) Int)

(declare-fun charsOf!3090 (Token!9370) BalanceConc!20284)

(assert (=> b!2829536 (= e!1791100 (> (size!25906 (charsOf!3090 lt!1009183)) 0))))

(declare-fun b!2829537 () Bool)

(assert (=> b!2829537 (= e!1791088 e!1791082)))

(declare-fun res!1177924 () Bool)

(assert (=> b!2829537 (=> res!1177924 e!1791082)))

(assert (=> b!2829537 (= res!1177924 (not (_1!19832 lt!1009174)))))

(declare-fun separableTokensPredicateMem!4 (LexerInterface!4574 Token!9370 Token!9370 List!33403 CacheUp!2680 CacheDown!2802) tuple3!5258)

(assert (=> b!2829537 (= lt!1009174 (separableTokensPredicateMem!4 thiss!11212 lt!1009184 lt!1009183 rules!1102 cacheUp!420 cacheDown!433))))

(assert (=> b!2829537 e!1791100))

(declare-fun res!1177926 () Bool)

(assert (=> b!2829537 (=> (not res!1177926) (not e!1791100))))

(declare-fun rulesProduceIndividualToken!2111 (LexerInterface!4574 List!33403 Token!9370) Bool)

(assert (=> b!2829537 (= res!1177926 (rulesProduceIndividualToken!2111 thiss!11212 rules!1102 lt!1009183))))

(declare-fun lt!1009188 () Unit!47307)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!729 (LexerInterface!4574 List!33403 List!33402 Token!9370) Unit!47307)

(assert (=> b!2829537 (= lt!1009188 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!729 thiss!11212 rules!1102 lt!1009177 lt!1009183))))

(assert (=> b!2829537 (rulesProduceIndividualToken!2111 thiss!11212 rules!1102 lt!1009184)))

(declare-fun lt!1009176 () Unit!47307)

(assert (=> b!2829537 (= lt!1009176 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!729 thiss!11212 rules!1102 lt!1009177 lt!1009184))))

(declare-fun b!2829538 () Bool)

(assert (=> b!2829538 (= e!1791106 e!1791094)))

(declare-fun res!1177917 () Bool)

(assert (=> b!2829538 (=> (not res!1177917) (not e!1791094))))

(assert (=> b!2829538 (= res!1177917 (<= from!827 lt!1009175))))

(declare-fun size!25907 (BalanceConc!20286) Int)

(assert (=> b!2829538 (= lt!1009175 (size!25907 v!6247))))

(declare-fun b!2829539 () Bool)

(assert (=> b!2829539 (= e!1791105 e!1791103)))

(assert (= (and start!274786 res!1177920) b!2829538))

(assert (= (and b!2829538 res!1177917) b!2829529))

(assert (= (and b!2829529 res!1177925) b!2829512))

(assert (= (and b!2829512 res!1177923) b!2829519))

(assert (= (and b!2829519 res!1177928) b!2829534))

(assert (= (and b!2829534 res!1177918) b!2829535))

(assert (= (and b!2829535 (not res!1177922)) b!2829526))

(assert (= (and b!2829526 (not res!1177919)) b!2829510))

(assert (= (and b!2829510 (not res!1177921)) b!2829516))

(assert (= (and b!2829516 (not res!1177927)) b!2829537))

(assert (= (and b!2829537 res!1177926) b!2829536))

(assert (= (and b!2829537 (not res!1177924)) b!2829524))

(assert (= b!2829528 b!2829532))

(assert (= b!2829520 b!2829528))

(assert (= (and start!274786 ((_ is Cons!33279) rules!1102)) b!2829520))

(assert (= start!274786 b!2829522))

(assert (= (and b!2829530 condMapEmpty!18518) mapIsEmpty!18519))

(assert (= (and b!2829530 (not condMapEmpty!18518)) mapNonEmpty!18519))

(assert (= b!2829518 b!2829530))

(assert (= b!2829525 b!2829518))

(assert (= b!2829539 b!2829525))

(assert (= (and b!2829531 ((_ is LongMap!4078) (v!34314 (underlying!8386 (cache!4119 cacheDown!433))))) b!2829539))

(assert (= b!2829521 b!2829531))

(assert (= (and b!2829514 ((_ is HashMap!3984) (cache!4119 cacheDown!433))) b!2829521))

(assert (= start!274786 b!2829514))

(assert (= (and b!2829511 condMapEmpty!18519) mapIsEmpty!18518))

(assert (= (and b!2829511 (not condMapEmpty!18519)) mapNonEmpty!18518))

(assert (= b!2829523 b!2829511))

(assert (= b!2829527 b!2829523))

(assert (= b!2829513 b!2829527))

(assert (= (and b!2829517 ((_ is LongMap!4077) (v!34312 (underlying!8384 (cache!4118 cacheUp!420))))) b!2829513))

(assert (= b!2829533 b!2829517))

(assert (= (and b!2829515 ((_ is HashMap!3983) (cache!4118 cacheUp!420))) b!2829533))

(assert (= start!274786 b!2829515))

(declare-fun m!3259003 () Bool)

(assert (=> start!274786 m!3259003))

(declare-fun m!3259005 () Bool)

(assert (=> start!274786 m!3259005))

(declare-fun m!3259007 () Bool)

(assert (=> start!274786 m!3259007))

(declare-fun m!3259009 () Bool)

(assert (=> b!2829519 m!3259009))

(declare-fun m!3259011 () Bool)

(assert (=> mapNonEmpty!18519 m!3259011))

(declare-fun m!3259013 () Bool)

(assert (=> b!2829510 m!3259013))

(declare-fun m!3259015 () Bool)

(assert (=> b!2829510 m!3259015))

(declare-fun m!3259017 () Bool)

(assert (=> b!2829518 m!3259017))

(declare-fun m!3259019 () Bool)

(assert (=> b!2829518 m!3259019))

(declare-fun m!3259021 () Bool)

(assert (=> b!2829538 m!3259021))

(declare-fun m!3259023 () Bool)

(assert (=> b!2829524 m!3259023))

(declare-fun m!3259025 () Bool)

(assert (=> b!2829523 m!3259025))

(declare-fun m!3259027 () Bool)

(assert (=> b!2829523 m!3259027))

(declare-fun m!3259029 () Bool)

(assert (=> b!2829526 m!3259029))

(declare-fun m!3259031 () Bool)

(assert (=> b!2829522 m!3259031))

(declare-fun m!3259033 () Bool)

(assert (=> b!2829529 m!3259033))

(declare-fun m!3259035 () Bool)

(assert (=> b!2829528 m!3259035))

(declare-fun m!3259037 () Bool)

(assert (=> b!2829528 m!3259037))

(declare-fun m!3259039 () Bool)

(assert (=> b!2829512 m!3259039))

(declare-fun m!3259041 () Bool)

(assert (=> b!2829516 m!3259041))

(declare-fun m!3259043 () Bool)

(assert (=> b!2829536 m!3259043))

(assert (=> b!2829536 m!3259043))

(declare-fun m!3259045 () Bool)

(assert (=> b!2829536 m!3259045))

(declare-fun m!3259047 () Bool)

(assert (=> b!2829537 m!3259047))

(declare-fun m!3259049 () Bool)

(assert (=> b!2829537 m!3259049))

(declare-fun m!3259051 () Bool)

(assert (=> b!2829537 m!3259051))

(declare-fun m!3259053 () Bool)

(assert (=> b!2829537 m!3259053))

(declare-fun m!3259055 () Bool)

(assert (=> b!2829537 m!3259055))

(declare-fun m!3259057 () Bool)

(assert (=> b!2829535 m!3259057))

(declare-fun m!3259059 () Bool)

(assert (=> b!2829535 m!3259059))

(declare-fun m!3259061 () Bool)

(assert (=> b!2829535 m!3259061))

(declare-fun m!3259063 () Bool)

(assert (=> b!2829535 m!3259063))

(declare-fun m!3259065 () Bool)

(assert (=> b!2829535 m!3259065))

(declare-fun m!3259067 () Bool)

(assert (=> b!2829535 m!3259067))

(declare-fun m!3259069 () Bool)

(assert (=> b!2829535 m!3259069))

(declare-fun m!3259071 () Bool)

(assert (=> b!2829535 m!3259071))

(declare-fun m!3259073 () Bool)

(assert (=> b!2829535 m!3259073))

(declare-fun m!3259075 () Bool)

(assert (=> b!2829535 m!3259075))

(declare-fun m!3259077 () Bool)

(assert (=> b!2829535 m!3259077))

(declare-fun m!3259079 () Bool)

(assert (=> b!2829535 m!3259079))

(declare-fun m!3259081 () Bool)

(assert (=> b!2829535 m!3259081))

(declare-fun m!3259083 () Bool)

(assert (=> b!2829535 m!3259083))

(declare-fun m!3259085 () Bool)

(assert (=> b!2829535 m!3259085))

(declare-fun m!3259087 () Bool)

(assert (=> b!2829535 m!3259087))

(declare-fun m!3259089 () Bool)

(assert (=> mapNonEmpty!18518 m!3259089))

(check-sat (not b!2829535) b_and!206875 (not start!274786) b_and!206873 (not b!2829510) (not b!2829536) (not b!2829522) (not b_next!81913) (not b!2829530) b_and!206869 (not b_next!81919) (not mapNonEmpty!18519) (not b!2829518) (not b!2829519) (not b!2829529) (not mapNonEmpty!18518) (not b_next!81921) (not b_next!81917) (not b!2829526) (not b!2829524) (not b!2829511) (not b!2829538) (not b_next!81915) (not b!2829512) (not b!2829537) b_and!206871 (not b!2829520) b_and!206877 (not b!2829528) (not b!2829516) (not b!2829523) (not b_next!81923) b_and!206867)
(check-sat b_and!206875 b_and!206873 (not b_next!81913) b_and!206869 b_and!206877 (not b_next!81919) (not b_next!81921) (not b_next!81917) (not b_next!81915) b_and!206871 (not b_next!81923) b_and!206867)
