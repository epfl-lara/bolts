; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!261132 () Bool)

(assert start!261132)

(declare-fun b!2681537 () Bool)

(declare-fun b_free!75801 () Bool)

(declare-fun b_next!76505 () Bool)

(assert (=> b!2681537 (= b_free!75801 (not b_next!76505))))

(declare-fun tp!848433 () Bool)

(declare-fun b_and!198597 () Bool)

(assert (=> b!2681537 (= tp!848433 b_and!198597)))

(declare-fun b!2681544 () Bool)

(declare-fun b_free!75803 () Bool)

(declare-fun b_next!76507 () Bool)

(assert (=> b!2681544 (= b_free!75803 (not b_next!76507))))

(declare-fun tp!848415 () Bool)

(declare-fun b_and!198599 () Bool)

(assert (=> b!2681544 (= tp!848415 b_and!198599)))

(declare-fun b!2681547 () Bool)

(declare-fun b_free!75805 () Bool)

(declare-fun b_next!76509 () Bool)

(assert (=> b!2681547 (= b_free!75805 (not b_next!76509))))

(declare-fun tp!848417 () Bool)

(declare-fun b_and!198601 () Bool)

(assert (=> b!2681547 (= tp!848417 b_and!198601)))

(declare-fun b_free!75807 () Bool)

(declare-fun b_next!76511 () Bool)

(assert (=> b!2681547 (= b_free!75807 (not b_next!76511))))

(declare-fun tp!848430 () Bool)

(declare-fun b_and!198603 () Bool)

(assert (=> b!2681547 (= tp!848430 b_and!198603)))

(declare-fun b!2681540 () Bool)

(declare-fun b_free!75809 () Bool)

(declare-fun b_next!76513 () Bool)

(assert (=> b!2681540 (= b_free!75809 (not b_next!76513))))

(declare-fun tp!848436 () Bool)

(declare-fun b_and!198605 () Bool)

(assert (=> b!2681540 (= tp!848436 b_and!198605)))

(declare-fun b!2681546 () Bool)

(declare-fun b_free!75811 () Bool)

(declare-fun b_next!76515 () Bool)

(assert (=> b!2681546 (= b_free!75811 (not b_next!76515))))

(declare-fun tp!848418 () Bool)

(declare-fun b_and!198607 () Bool)

(assert (=> b!2681546 (= tp!848418 b_and!198607)))

(declare-fun b!2681530 () Bool)

(declare-fun e!1690712 () Bool)

(declare-fun e!1690728 () Bool)

(assert (=> b!2681530 (= e!1690712 e!1690728)))

(declare-fun b!2681531 () Bool)

(declare-fun e!1690729 () Bool)

(declare-fun e!1690722 () Bool)

(declare-fun tp!848424 () Bool)

(assert (=> b!2681531 (= e!1690729 (and e!1690722 tp!848424))))

(declare-fun b!2681532 () Bool)

(declare-fun e!1690740 () Bool)

(declare-fun e!1690727 () Bool)

(declare-datatypes ((C!15912 0))(
  ( (C!15913 (val!9890 Int)) )
))
(declare-datatypes ((Regex!7877 0))(
  ( (ElementMatch!7877 (c!431876 C!15912)) (Concat!12824 (regOne!16266 Regex!7877) (regTwo!16266 Regex!7877)) (EmptyExpr!7877) (Star!7877 (reg!8206 Regex!7877)) (EmptyLang!7877) (Union!7877 (regOne!16267 Regex!7877) (regTwo!16267 Regex!7877)) )
))
(declare-datatypes ((List!31036 0))(
  ( (Nil!30936) (Cons!30936 (h!36356 Regex!7877) (t!224537 List!31036)) )
))
(declare-datatypes ((Context!4302 0))(
  ( (Context!4303 (exprs!2651 List!31036)) )
))
(declare-datatypes ((tuple2!30412 0))(
  ( (tuple2!30413 (_1!17769 Context!4302) (_2!17769 C!15912)) )
))
(declare-datatypes ((array!12413 0))(
  ( (array!12414 (arr!5548 (Array (_ BitVec 32) (_ BitVec 64))) (size!23897 (_ BitVec 32))) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!30414 0))(
  ( (tuple2!30415 (_1!17770 tuple2!30412) (_2!17770 (InoxSet Context!4302))) )
))
(declare-datatypes ((List!31037 0))(
  ( (Nil!30937) (Cons!30937 (h!36357 tuple2!30414) (t!224538 List!31037)) )
))
(declare-datatypes ((array!12415 0))(
  ( (array!12416 (arr!5549 (Array (_ BitVec 32) List!31037)) (size!23898 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6964 0))(
  ( (LongMapFixedSize!6965 (defaultEntry!3867 Int) (mask!9157 (_ BitVec 32)) (extraKeys!3731 (_ BitVec 32)) (zeroValue!3741 List!31037) (minValue!3741 List!31037) (_size!7007 (_ BitVec 32)) (_keys!3782 array!12413) (_values!3763 array!12415) (_vacant!3543 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13737 0))(
  ( (Cell!13738 (v!32749 LongMapFixedSize!6964)) )
))
(declare-datatypes ((MutLongMap!3482 0))(
  ( (LongMap!3482 (underlying!7167 Cell!13737)) (MutLongMapExt!3481 (__x!19819 Int)) )
))
(declare-fun lt!944651 () MutLongMap!3482)

(get-info :version)

(assert (=> b!2681532 (= e!1690740 (and e!1690727 ((_ is LongMap!3482) lt!944651)))))

(declare-datatypes ((Hashable!3398 0))(
  ( (HashableExt!3397 (__x!19820 Int)) )
))
(declare-datatypes ((Cell!13739 0))(
  ( (Cell!13740 (v!32750 MutLongMap!3482)) )
))
(declare-datatypes ((MutableMap!3388 0))(
  ( (MutableMapExt!3387 (__x!19821 Int)) (HashMap!3388 (underlying!7168 Cell!13739) (hashF!5430 Hashable!3398) (_size!7008 (_ BitVec 32)) (defaultValue!3559 Int)) )
))
(declare-datatypes ((CacheUp!2098 0))(
  ( (CacheUp!2099 (cache!3531 MutableMap!3388)) )
))
(declare-fun cacheUp!486 () CacheUp!2098)

(assert (=> b!2681532 (= lt!944651 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))

(declare-fun b!2681533 () Bool)

(declare-fun e!1690730 () Bool)

(declare-datatypes ((List!31038 0))(
  ( (Nil!30938) (Cons!30938 (h!36358 C!15912) (t!224539 List!31038)) )
))
(declare-datatypes ((IArray!19363 0))(
  ( (IArray!19364 (innerList!9739 List!31038)) )
))
(declare-datatypes ((Conc!9679 0))(
  ( (Node!9679 (left!23905 Conc!9679) (right!24235 Conc!9679) (csize!19588 Int) (cheight!9890 Int)) (Leaf!14786 (xs!12709 IArray!19363) (csize!19589 Int)) (Empty!9679) )
))
(declare-datatypes ((BalanceConc!18972 0))(
  ( (BalanceConc!18973 (c!431877 Conc!9679)) )
))
(declare-fun input!780 () BalanceConc!18972)

(declare-fun tp!848426 () Bool)

(declare-fun inv!41959 (Conc!9679) Bool)

(assert (=> b!2681533 (= e!1690730 (and (inv!41959 (c!431877 input!780)) tp!848426))))

(declare-fun b!2681534 () Bool)

(declare-fun res!1127097 () Bool)

(declare-fun e!1690736 () Bool)

(assert (=> b!2681534 (=> (not res!1127097) (not e!1690736))))

(declare-datatypes ((List!31039 0))(
  ( (Nil!30939) (Cons!30939 (h!36359 (_ BitVec 16)) (t!224540 List!31039)) )
))
(declare-datatypes ((TokenValue!4947 0))(
  ( (FloatLiteralValue!9894 (text!35074 List!31039)) (TokenValueExt!4946 (__x!19822 Int)) (Broken!24735 (value!152251 List!31039)) (Object!5046) (End!4947) (Def!4947) (Underscore!4947) (Match!4947) (Else!4947) (Error!4947) (Case!4947) (If!4947) (Extends!4947) (Abstract!4947) (Class!4947) (Val!4947) (DelimiterValue!9894 (del!5007 List!31039)) (KeywordValue!4953 (value!152252 List!31039)) (CommentValue!9894 (value!152253 List!31039)) (WhitespaceValue!9894 (value!152254 List!31039)) (IndentationValue!4947 (value!152255 List!31039)) (String!34634) (Int32!4947) (Broken!24736 (value!152256 List!31039)) (Boolean!4948) (Unit!45086) (OperatorValue!4950 (op!5007 List!31039)) (IdentifierValue!9894 (value!152257 List!31039)) (IdentifierValue!9895 (value!152258 List!31039)) (WhitespaceValue!9895 (value!152259 List!31039)) (True!9894) (False!9894) (Broken!24737 (value!152260 List!31039)) (Broken!24738 (value!152261 List!31039)) (True!9895) (RightBrace!4947) (RightBracket!4947) (Colon!4947) (Null!4947) (Comma!4947) (LeftBracket!4947) (False!9895) (LeftBrace!4947) (ImaginaryLiteralValue!4947 (text!35075 List!31039)) (StringLiteralValue!14841 (value!152262 List!31039)) (EOFValue!4947 (value!152263 List!31039)) (IdentValue!4947 (value!152264 List!31039)) (DelimiterValue!9895 (value!152265 List!31039)) (DedentValue!4947 (value!152266 List!31039)) (NewLineValue!4947 (value!152267 List!31039)) (IntegerValue!14841 (value!152268 (_ BitVec 32)) (text!35076 List!31039)) (IntegerValue!14842 (value!152269 Int) (text!35077 List!31039)) (Times!4947) (Or!4947) (Equal!4947) (Minus!4947) (Broken!24739 (value!152270 List!31039)) (And!4947) (Div!4947) (LessEqual!4947) (Mod!4947) (Concat!12825) (Not!4947) (Plus!4947) (SpaceValue!4947 (value!152271 List!31039)) (IntegerValue!14843 (value!152272 Int) (text!35078 List!31039)) (StringLiteralValue!14842 (text!35079 List!31039)) (FloatLiteralValue!9895 (text!35080 List!31039)) (BytesLiteralValue!4947 (value!152273 List!31039)) (CommentValue!9895 (value!152274 List!31039)) (StringLiteralValue!14843 (value!152275 List!31039)) (ErrorTokenValue!4947 (msg!5008 List!31039)) )
))
(declare-datatypes ((String!34635 0))(
  ( (String!34636 (value!152276 String)) )
))
(declare-datatypes ((TokenValueInjection!9334 0))(
  ( (TokenValueInjection!9335 (toValue!6679 Int) (toChars!6538 Int)) )
))
(declare-datatypes ((Rule!9250 0))(
  ( (Rule!9251 (regex!4725 Regex!7877) (tag!5229 String!34635) (isSeparator!4725 Bool) (transformation!4725 TokenValueInjection!9334)) )
))
(declare-datatypes ((Token!8916 0))(
  ( (Token!8917 (value!152277 TokenValue!4947) (rule!7135 Rule!9250) (size!23899 Int) (originalCharacters!5489 List!31038)) )
))
(declare-datatypes ((List!31040 0))(
  ( (Nil!30940) (Cons!30940 (h!36360 Token!8916) (t!224541 List!31040)) )
))
(declare-datatypes ((IArray!19365 0))(
  ( (IArray!19366 (innerList!9740 List!31040)) )
))
(declare-datatypes ((Conc!9680 0))(
  ( (Node!9680 (left!23906 Conc!9680) (right!24236 Conc!9680) (csize!19590 Int) (cheight!9891 Int)) (Leaf!14787 (xs!12710 IArray!19365) (csize!19591 Int)) (Empty!9680) )
))
(declare-datatypes ((BalanceConc!18974 0))(
  ( (BalanceConc!18975 (c!431878 Conc!9680)) )
))
(declare-datatypes ((tuple2!30416 0))(
  ( (tuple2!30417 (_1!17771 BalanceConc!18974) (_2!17771 BalanceConc!18972)) )
))
(declare-fun lt!944659 () tuple2!30416)

(declare-fun isEmpty!17677 (List!31038) Bool)

(declare-fun list!11679 (BalanceConc!18972) List!31038)

(assert (=> b!2681534 (= res!1127097 (isEmpty!17677 (list!11679 (_2!17771 lt!944659))))))

(declare-datatypes ((LexerInterface!4321 0))(
  ( (LexerInterfaceExt!4318 (__x!19823 Int)) (Lexer!4319) )
))
(declare-fun thiss!12257 () LexerInterface!4321)

(declare-fun lt!944653 () BalanceConc!18974)

(declare-datatypes ((tuple2!30418 0))(
  ( (tuple2!30419 (_1!17772 Token!8916) (_2!17772 BalanceConc!18972)) )
))
(declare-datatypes ((Option!6113 0))(
  ( (None!6112) (Some!6112 (v!32751 tuple2!30418)) )
))
(declare-fun lt!944658 () Option!6113)

(declare-datatypes ((List!31041 0))(
  ( (Nil!30941) (Cons!30941 (h!36361 Rule!9250) (t!224542 List!31041)) )
))
(declare-fun rules!1381 () List!31041)

(declare-fun lt!944637 () BalanceConc!18972)

(declare-fun totalInput!354 () BalanceConc!18972)

(declare-fun b!2681535 () Bool)

(declare-fun e!1690735 () tuple2!30416)

(declare-fun lexTailRec!13 (LexerInterface!4321 List!31041 BalanceConc!18972 BalanceConc!18972 BalanceConc!18972 BalanceConc!18974) tuple2!30416)

(assert (=> b!2681535 (= e!1690735 (lexTailRec!13 thiss!12257 rules!1381 totalInput!354 lt!944637 (_2!17772 (v!32751 lt!944658)) lt!944653))))

(declare-fun lt!944643 () tuple2!30416)

(declare-fun lexRec!587 (LexerInterface!4321 List!31041 BalanceConc!18972) tuple2!30416)

(assert (=> b!2681535 (= lt!944643 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944658))))))

(declare-fun lt!944642 () BalanceConc!18972)

(declare-fun charsOf!2976 (Token!8916) BalanceConc!18972)

(assert (=> b!2681535 (= lt!944642 (charsOf!2976 (_1!17772 (v!32751 lt!944658))))))

(declare-fun lt!944649 () List!31038)

(assert (=> b!2681535 (= lt!944649 (list!11679 lt!944642))))

(declare-fun lt!944660 () List!31038)

(assert (=> b!2681535 (= lt!944660 (list!11679 (_2!17772 (v!32751 lt!944658))))))

(declare-datatypes ((Unit!45087 0))(
  ( (Unit!45088) )
))
(declare-fun lt!944657 () Unit!45087)

(declare-fun lt!944654 () List!31038)

(declare-fun lemmaConcatAssociativity!1528 (List!31038 List!31038 List!31038) Unit!45087)

(assert (=> b!2681535 (= lt!944657 (lemmaConcatAssociativity!1528 lt!944654 lt!944649 lt!944660))))

(declare-fun lt!944647 () List!31038)

(declare-fun ++!7554 (List!31038 List!31038) List!31038)

(assert (=> b!2681535 (= lt!944647 (++!7554 lt!944654 lt!944649))))

(declare-fun res!1127099 () Bool)

(assert (=> b!2681535 (= res!1127099 (= (++!7554 lt!944647 lt!944660) (++!7554 lt!944654 (++!7554 lt!944649 lt!944660))))))

(declare-fun e!1690710 () Bool)

(assert (=> b!2681535 (=> (not res!1127099) (not e!1690710))))

(assert (=> b!2681535 e!1690710))

(declare-fun lt!944645 () List!31040)

(assert (=> b!2681535 (= lt!944645 (Cons!30940 (_1!17772 (v!32751 lt!944658)) Nil!30940))))

(declare-fun lt!944655 () List!31040)

(declare-fun list!11680 (BalanceConc!18974) List!31040)

(assert (=> b!2681535 (= lt!944655 (list!11680 (_1!17771 lt!944643)))))

(declare-fun lt!944638 () List!31040)

(declare-fun lt!944639 () Unit!45087)

(declare-fun lemmaConcatAssociativity!1529 (List!31040 List!31040 List!31040) Unit!45087)

(assert (=> b!2681535 (= lt!944639 (lemmaConcatAssociativity!1529 lt!944638 lt!944645 lt!944655))))

(declare-fun ++!7555 (List!31040 List!31040) List!31040)

(assert (=> b!2681535 (= (++!7555 (++!7555 lt!944638 lt!944645) lt!944655) (++!7555 lt!944638 (++!7555 lt!944645 lt!944655)))))

(declare-fun acc!348 () BalanceConc!18974)

(declare-fun append!750 (BalanceConc!18974 Token!8916) BalanceConc!18974)

(assert (=> b!2681535 (= lt!944653 (append!750 acc!348 (_1!17772 (v!32751 lt!944658))))))

(declare-fun lt!944640 () List!31040)

(assert (=> b!2681535 (= lt!944640 (list!11680 lt!944653))))

(declare-fun lt!944646 () Unit!45087)

(declare-fun lemmaLexThenLexPrefix!395 (LexerInterface!4321 List!31041 List!31038 List!31038 List!31040 List!31040 List!31038) Unit!45087)

(assert (=> b!2681535 (= lt!944646 (lemmaLexThenLexPrefix!395 thiss!12257 rules!1381 lt!944647 lt!944660 lt!944640 lt!944655 (list!11679 (_2!17771 lt!944643))))))

(declare-datatypes ((tuple2!30420 0))(
  ( (tuple2!30421 (_1!17773 List!31040) (_2!17773 List!31038)) )
))
(declare-fun lexList!1182 (LexerInterface!4321 List!31041 List!31038) tuple2!30420)

(assert (=> b!2681535 (= (lexList!1182 thiss!12257 rules!1381 lt!944647) (tuple2!30421 lt!944640 Nil!30938))))

(declare-fun treated!26 () BalanceConc!18972)

(declare-fun ++!7556 (BalanceConc!18972 BalanceConc!18972) BalanceConc!18972)

(assert (=> b!2681535 (= lt!944637 (++!7556 treated!26 lt!944642))))

(declare-fun lt!944641 () Option!6113)

(declare-fun maxPrefixZipperSequence!989 (LexerInterface!4321 List!31041 BalanceConc!18972) Option!6113)

(assert (=> b!2681535 (= lt!944641 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 lt!944637))))

(declare-fun c!431874 () Bool)

(assert (=> b!2681535 (= c!431874 ((_ is Some!6112) lt!944641))))

(declare-fun e!1690718 () tuple2!30416)

(assert (=> b!2681535 (= (lexRec!587 thiss!12257 rules!1381 lt!944637) e!1690718)))

(declare-fun b!2681536 () Bool)

(declare-fun e!1690739 () Bool)

(assert (=> b!2681536 (= e!1690739 e!1690736)))

(declare-fun res!1127102 () Bool)

(assert (=> b!2681536 (=> (not res!1127102) (not e!1690736))))

(declare-fun lt!944656 () List!31040)

(assert (=> b!2681536 (= res!1127102 (= lt!944656 lt!944638))))

(assert (=> b!2681536 (= lt!944638 (list!11680 acc!348))))

(assert (=> b!2681536 (= lt!944656 (list!11680 (_1!17771 lt!944659)))))

(assert (=> b!2681536 (= lt!944659 (lexRec!587 thiss!12257 rules!1381 treated!26))))

(declare-fun e!1690721 () Bool)

(assert (=> b!2681537 (= e!1690728 (and e!1690721 tp!848433))))

(declare-fun b!2681538 () Bool)

(declare-fun lt!944650 () tuple2!30416)

(assert (=> b!2681538 (= lt!944650 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944641))))))

(declare-fun prepend!1057 (BalanceConc!18974 Token!8916) BalanceConc!18974)

(assert (=> b!2681538 (= e!1690718 (tuple2!30417 (prepend!1057 (_1!17771 lt!944650) (_1!17772 (v!32751 lt!944641))) (_2!17771 lt!944650)))))

(declare-fun b!2681539 () Bool)

(declare-fun e!1690741 () Bool)

(declare-fun e!1690726 () Bool)

(assert (=> b!2681539 (= e!1690741 e!1690726)))

(declare-datatypes ((tuple3!4186 0))(
  ( (tuple3!4187 (_1!17774 Regex!7877) (_2!17774 Context!4302) (_3!2563 C!15912)) )
))
(declare-datatypes ((tuple2!30422 0))(
  ( (tuple2!30423 (_1!17775 tuple3!4186) (_2!17775 (InoxSet Context!4302))) )
))
(declare-datatypes ((List!31042 0))(
  ( (Nil!30942) (Cons!30942 (h!36362 tuple2!30422) (t!224543 List!31042)) )
))
(declare-datatypes ((array!12417 0))(
  ( (array!12418 (arr!5550 (Array (_ BitVec 32) List!31042)) (size!23900 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6966 0))(
  ( (LongMapFixedSize!6967 (defaultEntry!3868 Int) (mask!9158 (_ BitVec 32)) (extraKeys!3732 (_ BitVec 32)) (zeroValue!3742 List!31042) (minValue!3742 List!31042) (_size!7009 (_ BitVec 32)) (_keys!3783 array!12413) (_values!3764 array!12417) (_vacant!3544 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13741 0))(
  ( (Cell!13742 (v!32752 LongMapFixedSize!6966)) )
))
(declare-datatypes ((MutLongMap!3483 0))(
  ( (LongMap!3483 (underlying!7169 Cell!13741)) (MutLongMapExt!3482 (__x!19824 Int)) )
))
(declare-datatypes ((Cell!13743 0))(
  ( (Cell!13744 (v!32753 MutLongMap!3483)) )
))
(declare-datatypes ((Hashable!3399 0))(
  ( (HashableExt!3398 (__x!19825 Int)) )
))
(declare-datatypes ((MutableMap!3389 0))(
  ( (MutableMapExt!3388 (__x!19826 Int)) (HashMap!3389 (underlying!7170 Cell!13743) (hashF!5431 Hashable!3399) (_size!7010 (_ BitVec 32)) (defaultValue!3560 Int)) )
))
(declare-datatypes ((CacheDown!2210 0))(
  ( (CacheDown!2211 (cache!3532 MutableMap!3389)) )
))
(declare-fun cacheDown!499 () CacheDown!2210)

(declare-fun tp!848435 () Bool)

(declare-fun e!1690733 () Bool)

(declare-fun tp!848423 () Bool)

(declare-fun array_inv!3961 (array!12413) Bool)

(declare-fun array_inv!3962 (array!12417) Bool)

(assert (=> b!2681540 (= e!1690726 (and tp!848436 tp!848435 tp!848423 (array_inv!3961 (_keys!3783 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) (array_inv!3962 (_values!3764 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) e!1690733))))

(declare-fun b!2681541 () Bool)

(declare-fun e!1690713 () Bool)

(declare-fun rulesValidInductive!1643 (LexerInterface!4321 List!31041) Bool)

(assert (=> b!2681541 (= e!1690713 (not (rulesValidInductive!1643 thiss!12257 rules!1381)))))

(declare-fun e!1690720 () Bool)

(assert (=> b!2681541 e!1690720))

(declare-fun res!1127105 () Bool)

(assert (=> b!2681541 (=> (not res!1127105) (not e!1690720))))

(assert (=> b!2681541 (= res!1127105 (= (lexTailRec!13 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) e!1690735))))

(declare-fun c!431875 () Bool)

(assert (=> b!2681541 (= c!431875 ((_ is Some!6112) lt!944658))))

(assert (=> b!2681541 (= lt!944658 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 input!780))))

(declare-fun b!2681542 () Bool)

(declare-fun e!1690725 () Bool)

(assert (=> b!2681542 (= e!1690725 e!1690739)))

(declare-fun res!1127101 () Bool)

(assert (=> b!2681542 (=> (not res!1127101) (not e!1690739))))

(assert (=> b!2681542 (= res!1127101 (= (list!11679 totalInput!354) (++!7554 lt!944654 (list!11679 input!780))))))

(assert (=> b!2681542 (= lt!944654 (list!11679 treated!26))))

(declare-fun b!2681543 () Bool)

(declare-fun e!1690732 () Bool)

(declare-fun tp!848416 () Bool)

(assert (=> b!2681543 (= e!1690732 (and (inv!41959 (c!431877 totalInput!354)) tp!848416))))

(declare-fun e!1690737 () Bool)

(assert (=> b!2681544 (= e!1690737 (and e!1690740 tp!848415))))

(declare-fun b!2681545 () Bool)

(declare-fun lt!944644 () tuple2!30416)

(assert (=> b!2681545 (= e!1690710 (= lt!944644 (tuple2!30417 (prepend!1057 (_1!17771 lt!944643) (_1!17772 (v!32751 lt!944658))) (_2!17771 lt!944643))))))

(declare-fun e!1690716 () Bool)

(declare-fun tp!848419 () Bool)

(declare-fun tp!848421 () Bool)

(declare-fun e!1690714 () Bool)

(declare-fun array_inv!3963 (array!12415) Bool)

(assert (=> b!2681546 (= e!1690714 (and tp!848418 tp!848419 tp!848421 (array_inv!3961 (_keys!3782 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) (array_inv!3963 (_values!3763 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) e!1690716))))

(declare-fun e!1690717 () Bool)

(assert (=> b!2681547 (= e!1690717 (and tp!848417 tp!848430))))

(declare-fun b!2681548 () Bool)

(declare-fun e!1690723 () Bool)

(declare-fun tp!848425 () Bool)

(declare-fun inv!41960 (Conc!9680) Bool)

(assert (=> b!2681548 (= e!1690723 (and (inv!41960 (c!431878 acc!348)) tp!848425))))

(declare-fun b!2681549 () Bool)

(declare-fun e!1690734 () Bool)

(assert (=> b!2681549 (= e!1690734 e!1690741)))

(declare-fun b!2681550 () Bool)

(declare-fun lt!944652 () MutLongMap!3483)

(assert (=> b!2681550 (= e!1690721 (and e!1690734 ((_ is LongMap!3483) lt!944652)))))

(assert (=> b!2681550 (= lt!944652 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))

(declare-fun b!2681551 () Bool)

(declare-fun e!1690738 () Bool)

(assert (=> b!2681551 (= e!1690738 e!1690714)))

(declare-fun b!2681552 () Bool)

(declare-fun tp!848422 () Bool)

(declare-fun mapRes!15941 () Bool)

(assert (=> b!2681552 (= e!1690733 (and tp!848422 mapRes!15941))))

(declare-fun condMapEmpty!15942 () Bool)

(declare-fun mapDefault!15942 () List!31042)

(assert (=> b!2681552 (= condMapEmpty!15942 (= (arr!5550 (_values!3764 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) ((as const (Array (_ BitVec 32) List!31042)) mapDefault!15942)))))

(declare-fun b!2681553 () Bool)

(declare-fun e!1690711 () Bool)

(declare-fun tp!848427 () Bool)

(assert (=> b!2681553 (= e!1690711 (and (inv!41959 (c!431877 treated!26)) tp!848427))))

(declare-fun b!2681554 () Bool)

(declare-fun res!1127096 () Bool)

(assert (=> b!2681554 (=> (not res!1127096) (not e!1690713))))

(declare-fun lt!944648 () tuple2!30416)

(assert (=> b!2681554 (= res!1127096 (= (list!11679 (_2!17771 lt!944648)) (list!11679 (_2!17771 lt!944644))))))

(declare-fun mapIsEmpty!15941 () Bool)

(declare-fun mapRes!15942 () Bool)

(assert (=> mapIsEmpty!15941 mapRes!15942))

(declare-fun b!2681555 () Bool)

(assert (=> b!2681555 (= e!1690736 e!1690713)))

(declare-fun res!1127103 () Bool)

(assert (=> b!2681555 (=> (not res!1127103) (not e!1690713))))

(declare-fun ++!7557 (BalanceConc!18974 BalanceConc!18974) BalanceConc!18974)

(assert (=> b!2681555 (= res!1127103 (= (list!11680 (_1!17771 lt!944648)) (list!11680 (++!7557 acc!348 (_1!17771 lt!944644)))))))

(assert (=> b!2681555 (= lt!944644 (lexRec!587 thiss!12257 rules!1381 input!780))))

(assert (=> b!2681555 (= lt!944648 (lexRec!587 thiss!12257 rules!1381 totalInput!354))))

(declare-fun b!2681556 () Bool)

(declare-fun e!1690724 () Bool)

(assert (=> b!2681556 (= e!1690724 e!1690737)))

(declare-fun b!2681557 () Bool)

(assert (=> b!2681557 (= e!1690735 (tuple2!30417 acc!348 input!780))))

(declare-fun b!2681558 () Bool)

(declare-fun res!1127104 () Bool)

(assert (=> b!2681558 (=> (not res!1127104) (not e!1690725))))

(declare-fun valid!2695 (CacheUp!2098) Bool)

(assert (=> b!2681558 (= res!1127104 (valid!2695 cacheUp!486))))

(declare-fun b!2681559 () Bool)

(declare-fun res!1127100 () Bool)

(assert (=> b!2681559 (=> (not res!1127100) (not e!1690725))))

(declare-fun isEmpty!17678 (List!31041) Bool)

(assert (=> b!2681559 (= res!1127100 (not (isEmpty!17678 rules!1381)))))

(declare-fun b!2681560 () Bool)

(declare-fun lex!1943 (LexerInterface!4321 List!31041 BalanceConc!18972) tuple2!30416)

(declare-fun lexTailRecV2!855 (LexerInterface!4321 List!31041 BalanceConc!18972 BalanceConc!18972 BalanceConc!18972 BalanceConc!18974) tuple2!30416)

(assert (=> b!2681560 (= e!1690720 (= (lex!1943 thiss!12257 rules!1381 input!780) (lexTailRecV2!855 thiss!12257 rules!1381 input!780 (BalanceConc!18973 Empty!9679) input!780 (BalanceConc!18975 Empty!9680))))))

(declare-fun b!2681561 () Bool)

(declare-fun tp!848432 () Bool)

(assert (=> b!2681561 (= e!1690716 (and tp!848432 mapRes!15942))))

(declare-fun condMapEmpty!15941 () Bool)

(declare-fun mapDefault!15941 () List!31037)

(assert (=> b!2681561 (= condMapEmpty!15941 (= (arr!5549 (_values!3763 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) ((as const (Array (_ BitVec 32) List!31037)) mapDefault!15941)))))

(declare-fun b!2681562 () Bool)

(assert (=> b!2681562 (= e!1690727 e!1690738)))

(declare-fun mapNonEmpty!15941 () Bool)

(declare-fun tp!848429 () Bool)

(declare-fun tp!848434 () Bool)

(assert (=> mapNonEmpty!15941 (= mapRes!15942 (and tp!848429 tp!848434))))

(declare-fun mapKey!15942 () (_ BitVec 32))

(declare-fun mapValue!15942 () List!31037)

(declare-fun mapRest!15942 () (Array (_ BitVec 32) List!31037))

(assert (=> mapNonEmpty!15941 (= (arr!5549 (_values!3763 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) (store mapRest!15942 mapKey!15942 mapValue!15942))))

(declare-fun b!2681563 () Bool)

(assert (=> b!2681563 (= e!1690718 (tuple2!30417 (BalanceConc!18975 Empty!9680) lt!944637))))

(declare-fun mapIsEmpty!15942 () Bool)

(assert (=> mapIsEmpty!15942 mapRes!15941))

(declare-fun tp!848431 () Bool)

(declare-fun b!2681564 () Bool)

(declare-fun inv!41956 (String!34635) Bool)

(declare-fun inv!41961 (TokenValueInjection!9334) Bool)

(assert (=> b!2681564 (= e!1690722 (and tp!848431 (inv!41956 (tag!5229 (h!36361 rules!1381))) (inv!41961 (transformation!4725 (h!36361 rules!1381))) e!1690717))))

(declare-fun res!1127107 () Bool)

(assert (=> start!261132 (=> (not res!1127107) (not e!1690725))))

(assert (=> start!261132 (= res!1127107 ((_ is Lexer!4319) thiss!12257))))

(assert (=> start!261132 e!1690725))

(declare-fun inv!41962 (BalanceConc!18972) Bool)

(assert (=> start!261132 (and (inv!41962 totalInput!354) e!1690732)))

(declare-fun inv!41963 (CacheUp!2098) Bool)

(assert (=> start!261132 (and (inv!41963 cacheUp!486) e!1690724)))

(declare-fun inv!41964 (BalanceConc!18974) Bool)

(assert (=> start!261132 (and (inv!41964 acc!348) e!1690723)))

(assert (=> start!261132 (and (inv!41962 input!780) e!1690730)))

(assert (=> start!261132 (and (inv!41962 treated!26) e!1690711)))

(assert (=> start!261132 e!1690729))

(assert (=> start!261132 true))

(declare-fun inv!41965 (CacheDown!2210) Bool)

(assert (=> start!261132 (and (inv!41965 cacheDown!499) e!1690712)))

(declare-fun b!2681565 () Bool)

(declare-fun res!1127106 () Bool)

(assert (=> b!2681565 (=> (not res!1127106) (not e!1690725))))

(declare-fun valid!2696 (CacheDown!2210) Bool)

(assert (=> b!2681565 (= res!1127106 (valid!2696 cacheDown!499))))

(declare-fun b!2681566 () Bool)

(declare-fun res!1127098 () Bool)

(assert (=> b!2681566 (=> (not res!1127098) (not e!1690725))))

(declare-fun rulesInvariant!3817 (LexerInterface!4321 List!31041) Bool)

(assert (=> b!2681566 (= res!1127098 (rulesInvariant!3817 thiss!12257 rules!1381))))

(declare-fun mapNonEmpty!15942 () Bool)

(declare-fun tp!848420 () Bool)

(declare-fun tp!848428 () Bool)

(assert (=> mapNonEmpty!15942 (= mapRes!15941 (and tp!848420 tp!848428))))

(declare-fun mapValue!15941 () List!31042)

(declare-fun mapRest!15941 () (Array (_ BitVec 32) List!31042))

(declare-fun mapKey!15941 () (_ BitVec 32))

(assert (=> mapNonEmpty!15942 (= (arr!5550 (_values!3764 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) (store mapRest!15941 mapKey!15941 mapValue!15941))))

(assert (= (and start!261132 res!1127107) b!2681559))

(assert (= (and b!2681559 res!1127100) b!2681566))

(assert (= (and b!2681566 res!1127098) b!2681558))

(assert (= (and b!2681558 res!1127104) b!2681565))

(assert (= (and b!2681565 res!1127106) b!2681542))

(assert (= (and b!2681542 res!1127101) b!2681536))

(assert (= (and b!2681536 res!1127102) b!2681534))

(assert (= (and b!2681534 res!1127097) b!2681555))

(assert (= (and b!2681555 res!1127103) b!2681554))

(assert (= (and b!2681554 res!1127096) b!2681541))

(assert (= (and b!2681541 c!431875) b!2681535))

(assert (= (and b!2681541 (not c!431875)) b!2681557))

(assert (= (and b!2681535 res!1127099) b!2681545))

(assert (= (and b!2681535 c!431874) b!2681538))

(assert (= (and b!2681535 (not c!431874)) b!2681563))

(assert (= (and b!2681541 res!1127105) b!2681560))

(assert (= start!261132 b!2681543))

(assert (= (and b!2681561 condMapEmpty!15941) mapIsEmpty!15941))

(assert (= (and b!2681561 (not condMapEmpty!15941)) mapNonEmpty!15941))

(assert (= b!2681546 b!2681561))

(assert (= b!2681551 b!2681546))

(assert (= b!2681562 b!2681551))

(assert (= (and b!2681532 ((_ is LongMap!3482) (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))) b!2681562))

(assert (= b!2681544 b!2681532))

(assert (= (and b!2681556 ((_ is HashMap!3388) (cache!3531 cacheUp!486))) b!2681544))

(assert (= start!261132 b!2681556))

(assert (= start!261132 b!2681548))

(assert (= start!261132 b!2681533))

(assert (= start!261132 b!2681553))

(assert (= b!2681564 b!2681547))

(assert (= b!2681531 b!2681564))

(assert (= (and start!261132 ((_ is Cons!30941) rules!1381)) b!2681531))

(assert (= (and b!2681552 condMapEmpty!15942) mapIsEmpty!15942))

(assert (= (and b!2681552 (not condMapEmpty!15942)) mapNonEmpty!15942))

(assert (= b!2681540 b!2681552))

(assert (= b!2681539 b!2681540))

(assert (= b!2681549 b!2681539))

(assert (= (and b!2681550 ((_ is LongMap!3483) (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))) b!2681549))

(assert (= b!2681537 b!2681550))

(assert (= (and b!2681530 ((_ is HashMap!3389) (cache!3532 cacheDown!499))) b!2681537))

(assert (= start!261132 b!2681530))

(declare-fun m!3049731 () Bool)

(assert (=> start!261132 m!3049731))

(declare-fun m!3049733 () Bool)

(assert (=> start!261132 m!3049733))

(declare-fun m!3049735 () Bool)

(assert (=> start!261132 m!3049735))

(declare-fun m!3049737 () Bool)

(assert (=> start!261132 m!3049737))

(declare-fun m!3049739 () Bool)

(assert (=> start!261132 m!3049739))

(declare-fun m!3049741 () Bool)

(assert (=> start!261132 m!3049741))

(declare-fun m!3049743 () Bool)

(assert (=> b!2681565 m!3049743))

(declare-fun m!3049745 () Bool)

(assert (=> b!2681540 m!3049745))

(declare-fun m!3049747 () Bool)

(assert (=> b!2681540 m!3049747))

(declare-fun m!3049749 () Bool)

(assert (=> b!2681554 m!3049749))

(declare-fun m!3049751 () Bool)

(assert (=> b!2681554 m!3049751))

(declare-fun m!3049753 () Bool)

(assert (=> b!2681548 m!3049753))

(declare-fun m!3049755 () Bool)

(assert (=> b!2681560 m!3049755))

(declare-fun m!3049757 () Bool)

(assert (=> b!2681560 m!3049757))

(declare-fun m!3049759 () Bool)

(assert (=> mapNonEmpty!15942 m!3049759))

(declare-fun m!3049761 () Bool)

(assert (=> b!2681564 m!3049761))

(declare-fun m!3049763 () Bool)

(assert (=> b!2681564 m!3049763))

(declare-fun m!3049765 () Bool)

(assert (=> b!2681558 m!3049765))

(declare-fun m!3049767 () Bool)

(assert (=> b!2681543 m!3049767))

(declare-fun m!3049769 () Bool)

(assert (=> b!2681542 m!3049769))

(declare-fun m!3049771 () Bool)

(assert (=> b!2681542 m!3049771))

(assert (=> b!2681542 m!3049771))

(declare-fun m!3049773 () Bool)

(assert (=> b!2681542 m!3049773))

(declare-fun m!3049775 () Bool)

(assert (=> b!2681542 m!3049775))

(declare-fun m!3049777 () Bool)

(assert (=> b!2681545 m!3049777))

(declare-fun m!3049779 () Bool)

(assert (=> b!2681546 m!3049779))

(declare-fun m!3049781 () Bool)

(assert (=> b!2681546 m!3049781))

(declare-fun m!3049783 () Bool)

(assert (=> b!2681535 m!3049783))

(declare-fun m!3049785 () Bool)

(assert (=> b!2681535 m!3049785))

(declare-fun m!3049787 () Bool)

(assert (=> b!2681535 m!3049787))

(declare-fun m!3049789 () Bool)

(assert (=> b!2681535 m!3049789))

(declare-fun m!3049791 () Bool)

(assert (=> b!2681535 m!3049791))

(declare-fun m!3049793 () Bool)

(assert (=> b!2681535 m!3049793))

(declare-fun m!3049795 () Bool)

(assert (=> b!2681535 m!3049795))

(declare-fun m!3049797 () Bool)

(assert (=> b!2681535 m!3049797))

(declare-fun m!3049799 () Bool)

(assert (=> b!2681535 m!3049799))

(declare-fun m!3049801 () Bool)

(assert (=> b!2681535 m!3049801))

(declare-fun m!3049803 () Bool)

(assert (=> b!2681535 m!3049803))

(declare-fun m!3049805 () Bool)

(assert (=> b!2681535 m!3049805))

(declare-fun m!3049807 () Bool)

(assert (=> b!2681535 m!3049807))

(declare-fun m!3049809 () Bool)

(assert (=> b!2681535 m!3049809))

(declare-fun m!3049811 () Bool)

(assert (=> b!2681535 m!3049811))

(declare-fun m!3049813 () Bool)

(assert (=> b!2681535 m!3049813))

(declare-fun m!3049815 () Bool)

(assert (=> b!2681535 m!3049815))

(assert (=> b!2681535 m!3049793))

(declare-fun m!3049817 () Bool)

(assert (=> b!2681535 m!3049817))

(declare-fun m!3049819 () Bool)

(assert (=> b!2681535 m!3049819))

(declare-fun m!3049821 () Bool)

(assert (=> b!2681535 m!3049821))

(assert (=> b!2681535 m!3049813))

(declare-fun m!3049823 () Bool)

(assert (=> b!2681535 m!3049823))

(assert (=> b!2681535 m!3049809))

(declare-fun m!3049825 () Bool)

(assert (=> b!2681535 m!3049825))

(declare-fun m!3049827 () Bool)

(assert (=> b!2681535 m!3049827))

(assert (=> b!2681535 m!3049787))

(declare-fun m!3049829 () Bool)

(assert (=> b!2681535 m!3049829))

(declare-fun m!3049831 () Bool)

(assert (=> b!2681536 m!3049831))

(declare-fun m!3049833 () Bool)

(assert (=> b!2681536 m!3049833))

(declare-fun m!3049835 () Bool)

(assert (=> b!2681536 m!3049835))

(declare-fun m!3049837 () Bool)

(assert (=> b!2681534 m!3049837))

(assert (=> b!2681534 m!3049837))

(declare-fun m!3049839 () Bool)

(assert (=> b!2681534 m!3049839))

(declare-fun m!3049841 () Bool)

(assert (=> b!2681538 m!3049841))

(declare-fun m!3049843 () Bool)

(assert (=> b!2681538 m!3049843))

(declare-fun m!3049845 () Bool)

(assert (=> b!2681559 m!3049845))

(declare-fun m!3049847 () Bool)

(assert (=> b!2681541 m!3049847))

(declare-fun m!3049849 () Bool)

(assert (=> b!2681541 m!3049849))

(declare-fun m!3049851 () Bool)

(assert (=> b!2681541 m!3049851))

(declare-fun m!3049853 () Bool)

(assert (=> mapNonEmpty!15941 m!3049853))

(declare-fun m!3049855 () Bool)

(assert (=> b!2681553 m!3049855))

(declare-fun m!3049857 () Bool)

(assert (=> b!2681566 m!3049857))

(declare-fun m!3049859 () Bool)

(assert (=> b!2681533 m!3049859))

(declare-fun m!3049861 () Bool)

(assert (=> b!2681555 m!3049861))

(declare-fun m!3049863 () Bool)

(assert (=> b!2681555 m!3049863))

(declare-fun m!3049865 () Bool)

(assert (=> b!2681555 m!3049865))

(declare-fun m!3049867 () Bool)

(assert (=> b!2681555 m!3049867))

(declare-fun m!3049869 () Bool)

(assert (=> b!2681555 m!3049869))

(assert (=> b!2681555 m!3049861))

(check-sat (not b!2681554) (not mapNonEmpty!15942) (not b!2681541) b_and!198599 (not b!2681561) (not b_next!76513) b_and!198607 (not b!2681542) (not b!2681535) (not b!2681564) (not b!2681565) b_and!198597 (not b!2681555) (not b_next!76505) (not b!2681546) b_and!198605 (not b!2681560) (not b!2681534) (not b!2681543) (not b!2681533) (not b_next!76515) (not b!2681552) (not b!2681558) (not b!2681548) (not b!2681540) (not b_next!76509) (not b!2681553) (not b_next!76507) (not b!2681545) (not b_next!76511) (not start!261132) (not b!2681566) (not mapNonEmpty!15941) (not b!2681559) (not b!2681538) (not b!2681531) b_and!198601 b_and!198603 (not b!2681536))
(check-sat b_and!198599 (not b_next!76513) b_and!198607 (not b_next!76515) (not b_next!76509) b_and!198597 (not b_next!76507) (not b_next!76511) (not b_next!76505) b_and!198601 b_and!198605 b_and!198603)
(get-model)

(declare-fun b!2681581 () Bool)

(declare-fun e!1690751 () Bool)

(declare-fun e!1690752 () Bool)

(assert (=> b!2681581 (= e!1690751 e!1690752)))

(declare-fun res!1127116 () Bool)

(declare-fun lt!944669 () tuple2!30416)

(declare-fun size!23901 (BalanceConc!18972) Int)

(assert (=> b!2681581 (= res!1127116 (< (size!23901 (_2!17771 lt!944669)) (size!23901 input!780)))))

(assert (=> b!2681581 (=> (not res!1127116) (not e!1690752))))

(declare-fun b!2681582 () Bool)

(declare-fun e!1690750 () tuple2!30416)

(assert (=> b!2681582 (= e!1690750 (tuple2!30417 (BalanceConc!18975 Empty!9680) input!780))))

(declare-fun b!2681583 () Bool)

(declare-fun isEmpty!17679 (BalanceConc!18974) Bool)

(assert (=> b!2681583 (= e!1690752 (not (isEmpty!17679 (_1!17771 lt!944669))))))

(declare-fun b!2681584 () Bool)

(declare-fun res!1127117 () Bool)

(declare-fun e!1690753 () Bool)

(assert (=> b!2681584 (=> (not res!1127117) (not e!1690753))))

(assert (=> b!2681584 (= res!1127117 (= (list!11680 (_1!17771 lt!944669)) (_1!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 input!780)))))))

(declare-fun b!2681585 () Bool)

(declare-fun lt!944667 () tuple2!30416)

(declare-fun lt!944668 () Option!6113)

(assert (=> b!2681585 (= e!1690750 (tuple2!30417 (prepend!1057 (_1!17771 lt!944667) (_1!17772 (v!32751 lt!944668))) (_2!17771 lt!944667)))))

(assert (=> b!2681585 (= lt!944667 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944668))))))

(declare-fun d!766589 () Bool)

(assert (=> d!766589 e!1690753))

(declare-fun res!1127118 () Bool)

(assert (=> d!766589 (=> (not res!1127118) (not e!1690753))))

(assert (=> d!766589 (= res!1127118 e!1690751)))

(declare-fun c!431883 () Bool)

(declare-fun size!23902 (BalanceConc!18974) Int)

(assert (=> d!766589 (= c!431883 (> (size!23902 (_1!17771 lt!944669)) 0))))

(assert (=> d!766589 (= lt!944669 e!1690750)))

(declare-fun c!431884 () Bool)

(assert (=> d!766589 (= c!431884 ((_ is Some!6112) lt!944668))))

(assert (=> d!766589 (= lt!944668 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 input!780))))

(assert (=> d!766589 (= (lexRec!587 thiss!12257 rules!1381 input!780) lt!944669)))

(declare-fun b!2681586 () Bool)

(assert (=> b!2681586 (= e!1690753 (= (list!11679 (_2!17771 lt!944669)) (_2!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 input!780)))))))

(declare-fun b!2681587 () Bool)

(assert (=> b!2681587 (= e!1690751 (= (list!11679 (_2!17771 lt!944669)) (list!11679 input!780)))))

(assert (= (and d!766589 c!431884) b!2681585))

(assert (= (and d!766589 (not c!431884)) b!2681582))

(assert (= (and d!766589 c!431883) b!2681581))

(assert (= (and d!766589 (not c!431883)) b!2681587))

(assert (= (and b!2681581 res!1127116) b!2681583))

(assert (= (and d!766589 res!1127118) b!2681584))

(assert (= (and b!2681584 res!1127117) b!2681586))

(declare-fun m!3049871 () Bool)

(assert (=> b!2681587 m!3049871))

(assert (=> b!2681587 m!3049771))

(declare-fun m!3049873 () Bool)

(assert (=> b!2681581 m!3049873))

(declare-fun m!3049875 () Bool)

(assert (=> b!2681581 m!3049875))

(declare-fun m!3049877 () Bool)

(assert (=> d!766589 m!3049877))

(assert (=> d!766589 m!3049851))

(declare-fun m!3049879 () Bool)

(assert (=> b!2681585 m!3049879))

(declare-fun m!3049881 () Bool)

(assert (=> b!2681585 m!3049881))

(declare-fun m!3049883 () Bool)

(assert (=> b!2681584 m!3049883))

(assert (=> b!2681584 m!3049771))

(assert (=> b!2681584 m!3049771))

(declare-fun m!3049885 () Bool)

(assert (=> b!2681584 m!3049885))

(declare-fun m!3049887 () Bool)

(assert (=> b!2681583 m!3049887))

(assert (=> b!2681586 m!3049871))

(assert (=> b!2681586 m!3049771))

(assert (=> b!2681586 m!3049771))

(assert (=> b!2681586 m!3049885))

(assert (=> b!2681555 d!766589))

(declare-fun b!2681588 () Bool)

(declare-fun e!1690755 () Bool)

(declare-fun e!1690756 () Bool)

(assert (=> b!2681588 (= e!1690755 e!1690756)))

(declare-fun res!1127119 () Bool)

(declare-fun lt!944672 () tuple2!30416)

(assert (=> b!2681588 (= res!1127119 (< (size!23901 (_2!17771 lt!944672)) (size!23901 totalInput!354)))))

(assert (=> b!2681588 (=> (not res!1127119) (not e!1690756))))

(declare-fun b!2681589 () Bool)

(declare-fun e!1690754 () tuple2!30416)

(assert (=> b!2681589 (= e!1690754 (tuple2!30417 (BalanceConc!18975 Empty!9680) totalInput!354))))

(declare-fun b!2681590 () Bool)

(assert (=> b!2681590 (= e!1690756 (not (isEmpty!17679 (_1!17771 lt!944672))))))

(declare-fun b!2681591 () Bool)

(declare-fun res!1127120 () Bool)

(declare-fun e!1690757 () Bool)

(assert (=> b!2681591 (=> (not res!1127120) (not e!1690757))))

(assert (=> b!2681591 (= res!1127120 (= (list!11680 (_1!17771 lt!944672)) (_1!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 totalInput!354)))))))

(declare-fun b!2681592 () Bool)

(declare-fun lt!944670 () tuple2!30416)

(declare-fun lt!944671 () Option!6113)

(assert (=> b!2681592 (= e!1690754 (tuple2!30417 (prepend!1057 (_1!17771 lt!944670) (_1!17772 (v!32751 lt!944671))) (_2!17771 lt!944670)))))

(assert (=> b!2681592 (= lt!944670 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944671))))))

(declare-fun d!766591 () Bool)

(assert (=> d!766591 e!1690757))

(declare-fun res!1127121 () Bool)

(assert (=> d!766591 (=> (not res!1127121) (not e!1690757))))

(assert (=> d!766591 (= res!1127121 e!1690755)))

(declare-fun c!431885 () Bool)

(assert (=> d!766591 (= c!431885 (> (size!23902 (_1!17771 lt!944672)) 0))))

(assert (=> d!766591 (= lt!944672 e!1690754)))

(declare-fun c!431886 () Bool)

(assert (=> d!766591 (= c!431886 ((_ is Some!6112) lt!944671))))

(assert (=> d!766591 (= lt!944671 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 totalInput!354))))

(assert (=> d!766591 (= (lexRec!587 thiss!12257 rules!1381 totalInput!354) lt!944672)))

(declare-fun b!2681593 () Bool)

(assert (=> b!2681593 (= e!1690757 (= (list!11679 (_2!17771 lt!944672)) (_2!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 totalInput!354)))))))

(declare-fun b!2681594 () Bool)

(assert (=> b!2681594 (= e!1690755 (= (list!11679 (_2!17771 lt!944672)) (list!11679 totalInput!354)))))

(assert (= (and d!766591 c!431886) b!2681592))

(assert (= (and d!766591 (not c!431886)) b!2681589))

(assert (= (and d!766591 c!431885) b!2681588))

(assert (= (and d!766591 (not c!431885)) b!2681594))

(assert (= (and b!2681588 res!1127119) b!2681590))

(assert (= (and d!766591 res!1127121) b!2681591))

(assert (= (and b!2681591 res!1127120) b!2681593))

(declare-fun m!3049889 () Bool)

(assert (=> b!2681594 m!3049889))

(assert (=> b!2681594 m!3049769))

(declare-fun m!3049891 () Bool)

(assert (=> b!2681588 m!3049891))

(declare-fun m!3049893 () Bool)

(assert (=> b!2681588 m!3049893))

(declare-fun m!3049895 () Bool)

(assert (=> d!766591 m!3049895))

(declare-fun m!3049897 () Bool)

(assert (=> d!766591 m!3049897))

(declare-fun m!3049899 () Bool)

(assert (=> b!2681592 m!3049899))

(declare-fun m!3049901 () Bool)

(assert (=> b!2681592 m!3049901))

(declare-fun m!3049903 () Bool)

(assert (=> b!2681591 m!3049903))

(assert (=> b!2681591 m!3049769))

(assert (=> b!2681591 m!3049769))

(declare-fun m!3049905 () Bool)

(assert (=> b!2681591 m!3049905))

(declare-fun m!3049907 () Bool)

(assert (=> b!2681590 m!3049907))

(assert (=> b!2681593 m!3049889))

(assert (=> b!2681593 m!3049769))

(assert (=> b!2681593 m!3049769))

(assert (=> b!2681593 m!3049905))

(assert (=> b!2681555 d!766591))

(declare-fun b!2681606 () Bool)

(declare-fun lt!944675 () BalanceConc!18974)

(declare-fun e!1690760 () Bool)

(assert (=> b!2681606 (= e!1690760 (= (list!11680 lt!944675) (++!7555 (list!11680 acc!348) (list!11680 (_1!17771 lt!944644)))))))

(declare-fun b!2681604 () Bool)

(declare-fun res!1127133 () Bool)

(assert (=> b!2681604 (=> (not res!1127133) (not e!1690760))))

(declare-fun height!1411 (Conc!9680) Int)

(declare-fun ++!7558 (Conc!9680 Conc!9680) Conc!9680)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2681604 (= res!1127133 (<= (height!1411 (++!7558 (c!431878 acc!348) (c!431878 (_1!17771 lt!944644)))) (+ (max!0 (height!1411 (c!431878 acc!348)) (height!1411 (c!431878 (_1!17771 lt!944644)))) 1)))))

(declare-fun b!2681603 () Bool)

(declare-fun res!1127132 () Bool)

(assert (=> b!2681603 (=> (not res!1127132) (not e!1690760))))

(declare-fun isBalanced!2929 (Conc!9680) Bool)

(assert (=> b!2681603 (= res!1127132 (isBalanced!2929 (++!7558 (c!431878 acc!348) (c!431878 (_1!17771 lt!944644)))))))

(declare-fun b!2681605 () Bool)

(declare-fun res!1127130 () Bool)

(assert (=> b!2681605 (=> (not res!1127130) (not e!1690760))))

(assert (=> b!2681605 (= res!1127130 (>= (height!1411 (++!7558 (c!431878 acc!348) (c!431878 (_1!17771 lt!944644)))) (max!0 (height!1411 (c!431878 acc!348)) (height!1411 (c!431878 (_1!17771 lt!944644))))))))

(declare-fun d!766593 () Bool)

(assert (=> d!766593 e!1690760))

(declare-fun res!1127131 () Bool)

(assert (=> d!766593 (=> (not res!1127131) (not e!1690760))))

(declare-fun appendAssocInst!651 (Conc!9680 Conc!9680) Bool)

(assert (=> d!766593 (= res!1127131 (appendAssocInst!651 (c!431878 acc!348) (c!431878 (_1!17771 lt!944644))))))

(assert (=> d!766593 (= lt!944675 (BalanceConc!18975 (++!7558 (c!431878 acc!348) (c!431878 (_1!17771 lt!944644)))))))

(assert (=> d!766593 (= (++!7557 acc!348 (_1!17771 lt!944644)) lt!944675)))

(assert (= (and d!766593 res!1127131) b!2681603))

(assert (= (and b!2681603 res!1127132) b!2681604))

(assert (= (and b!2681604 res!1127133) b!2681605))

(assert (= (and b!2681605 res!1127130) b!2681606))

(declare-fun m!3049909 () Bool)

(assert (=> b!2681603 m!3049909))

(assert (=> b!2681603 m!3049909))

(declare-fun m!3049911 () Bool)

(assert (=> b!2681603 m!3049911))

(declare-fun m!3049913 () Bool)

(assert (=> b!2681605 m!3049913))

(declare-fun m!3049915 () Bool)

(assert (=> b!2681605 m!3049915))

(assert (=> b!2681605 m!3049913))

(assert (=> b!2681605 m!3049915))

(declare-fun m!3049917 () Bool)

(assert (=> b!2681605 m!3049917))

(assert (=> b!2681605 m!3049909))

(assert (=> b!2681605 m!3049909))

(declare-fun m!3049919 () Bool)

(assert (=> b!2681605 m!3049919))

(declare-fun m!3049921 () Bool)

(assert (=> d!766593 m!3049921))

(assert (=> d!766593 m!3049909))

(declare-fun m!3049923 () Bool)

(assert (=> b!2681606 m!3049923))

(assert (=> b!2681606 m!3049831))

(declare-fun m!3049925 () Bool)

(assert (=> b!2681606 m!3049925))

(assert (=> b!2681606 m!3049831))

(assert (=> b!2681606 m!3049925))

(declare-fun m!3049927 () Bool)

(assert (=> b!2681606 m!3049927))

(assert (=> b!2681604 m!3049913))

(assert (=> b!2681604 m!3049915))

(assert (=> b!2681604 m!3049913))

(assert (=> b!2681604 m!3049915))

(assert (=> b!2681604 m!3049917))

(assert (=> b!2681604 m!3049909))

(assert (=> b!2681604 m!3049909))

(assert (=> b!2681604 m!3049919))

(assert (=> b!2681555 d!766593))

(declare-fun d!766595 () Bool)

(declare-fun list!11681 (Conc!9680) List!31040)

(assert (=> d!766595 (= (list!11680 (++!7557 acc!348 (_1!17771 lt!944644))) (list!11681 (c!431878 (++!7557 acc!348 (_1!17771 lt!944644)))))))

(declare-fun bs!480174 () Bool)

(assert (= bs!480174 d!766595))

(declare-fun m!3049929 () Bool)

(assert (=> bs!480174 m!3049929))

(assert (=> b!2681555 d!766595))

(declare-fun d!766597 () Bool)

(assert (=> d!766597 (= (list!11680 (_1!17771 lt!944648)) (list!11681 (c!431878 (_1!17771 lt!944648))))))

(declare-fun bs!480175 () Bool)

(assert (= bs!480175 d!766597))

(declare-fun m!3049931 () Bool)

(assert (=> bs!480175 m!3049931))

(assert (=> b!2681555 d!766597))

(declare-fun d!766599 () Bool)

(assert (=> d!766599 (= (inv!41956 (tag!5229 (h!36361 rules!1381))) (= (mod (str.len (value!152276 (tag!5229 (h!36361 rules!1381)))) 2) 0))))

(assert (=> b!2681564 d!766599))

(declare-fun d!766601 () Bool)

(declare-fun res!1127136 () Bool)

(declare-fun e!1690763 () Bool)

(assert (=> d!766601 (=> (not res!1127136) (not e!1690763))))

(declare-fun semiInverseModEq!1955 (Int Int) Bool)

(assert (=> d!766601 (= res!1127136 (semiInverseModEq!1955 (toChars!6538 (transformation!4725 (h!36361 rules!1381))) (toValue!6679 (transformation!4725 (h!36361 rules!1381)))))))

(assert (=> d!766601 (= (inv!41961 (transformation!4725 (h!36361 rules!1381))) e!1690763)))

(declare-fun b!2681609 () Bool)

(declare-fun equivClasses!1856 (Int Int) Bool)

(assert (=> b!2681609 (= e!1690763 (equivClasses!1856 (toChars!6538 (transformation!4725 (h!36361 rules!1381))) (toValue!6679 (transformation!4725 (h!36361 rules!1381)))))))

(assert (= (and d!766601 res!1127136) b!2681609))

(declare-fun m!3049933 () Bool)

(assert (=> d!766601 m!3049933))

(declare-fun m!3049935 () Bool)

(assert (=> b!2681609 m!3049935))

(assert (=> b!2681564 d!766601))

(declare-fun d!766603 () Bool)

(declare-fun e!1690766 () Bool)

(assert (=> d!766603 e!1690766))

(declare-fun res!1127139 () Bool)

(assert (=> d!766603 (=> (not res!1127139) (not e!1690766))))

(declare-fun append!751 (Conc!9680 Token!8916) Conc!9680)

(assert (=> d!766603 (= res!1127139 (isBalanced!2929 (append!751 (c!431878 acc!348) (_1!17772 (v!32751 lt!944658)))))))

(declare-fun lt!944678 () BalanceConc!18974)

(assert (=> d!766603 (= lt!944678 (BalanceConc!18975 (append!751 (c!431878 acc!348) (_1!17772 (v!32751 lt!944658)))))))

(assert (=> d!766603 (= (append!750 acc!348 (_1!17772 (v!32751 lt!944658))) lt!944678)))

(declare-fun b!2681612 () Bool)

(declare-fun $colon+!162 (List!31040 Token!8916) List!31040)

(assert (=> b!2681612 (= e!1690766 (= (list!11680 lt!944678) ($colon+!162 (list!11680 acc!348) (_1!17772 (v!32751 lt!944658)))))))

(assert (= (and d!766603 res!1127139) b!2681612))

(declare-fun m!3049937 () Bool)

(assert (=> d!766603 m!3049937))

(assert (=> d!766603 m!3049937))

(declare-fun m!3049939 () Bool)

(assert (=> d!766603 m!3049939))

(declare-fun m!3049941 () Bool)

(assert (=> b!2681612 m!3049941))

(assert (=> b!2681612 m!3049831))

(assert (=> b!2681612 m!3049831))

(declare-fun m!3049943 () Bool)

(assert (=> b!2681612 m!3049943))

(assert (=> b!2681535 d!766603))

(declare-fun d!766605 () Bool)

(declare-fun list!11682 (Conc!9679) List!31038)

(assert (=> d!766605 (= (list!11679 (_2!17771 lt!944643)) (list!11682 (c!431877 (_2!17771 lt!944643))))))

(declare-fun bs!480176 () Bool)

(assert (= bs!480176 d!766605))

(declare-fun m!3049945 () Bool)

(assert (=> bs!480176 m!3049945))

(assert (=> b!2681535 d!766605))

(declare-fun d!766607 () Bool)

(assert (=> d!766607 (= (list!11679 (_2!17772 (v!32751 lt!944658))) (list!11682 (c!431877 (_2!17772 (v!32751 lt!944658)))))))

(declare-fun bs!480177 () Bool)

(assert (= bs!480177 d!766607))

(declare-fun m!3049947 () Bool)

(assert (=> bs!480177 m!3049947))

(assert (=> b!2681535 d!766607))

(declare-fun b!2681621 () Bool)

(declare-fun e!1690771 () List!31038)

(assert (=> b!2681621 (= e!1690771 lt!944660)))

(declare-fun b!2681622 () Bool)

(assert (=> b!2681622 (= e!1690771 (Cons!30938 (h!36358 lt!944649) (++!7554 (t!224539 lt!944649) lt!944660)))))

(declare-fun b!2681623 () Bool)

(declare-fun res!1127145 () Bool)

(declare-fun e!1690772 () Bool)

(assert (=> b!2681623 (=> (not res!1127145) (not e!1690772))))

(declare-fun lt!944681 () List!31038)

(declare-fun size!23903 (List!31038) Int)

(assert (=> b!2681623 (= res!1127145 (= (size!23903 lt!944681) (+ (size!23903 lt!944649) (size!23903 lt!944660))))))

(declare-fun d!766609 () Bool)

(assert (=> d!766609 e!1690772))

(declare-fun res!1127144 () Bool)

(assert (=> d!766609 (=> (not res!1127144) (not e!1690772))))

(declare-fun content!4390 (List!31038) (InoxSet C!15912))

(assert (=> d!766609 (= res!1127144 (= (content!4390 lt!944681) ((_ map or) (content!4390 lt!944649) (content!4390 lt!944660))))))

(assert (=> d!766609 (= lt!944681 e!1690771)))

(declare-fun c!431893 () Bool)

(assert (=> d!766609 (= c!431893 ((_ is Nil!30938) lt!944649))))

(assert (=> d!766609 (= (++!7554 lt!944649 lt!944660) lt!944681)))

(declare-fun b!2681624 () Bool)

(assert (=> b!2681624 (= e!1690772 (or (not (= lt!944660 Nil!30938)) (= lt!944681 lt!944649)))))

(assert (= (and d!766609 c!431893) b!2681621))

(assert (= (and d!766609 (not c!431893)) b!2681622))

(assert (= (and d!766609 res!1127144) b!2681623))

(assert (= (and b!2681623 res!1127145) b!2681624))

(declare-fun m!3049949 () Bool)

(assert (=> b!2681622 m!3049949))

(declare-fun m!3049951 () Bool)

(assert (=> b!2681623 m!3049951))

(declare-fun m!3049953 () Bool)

(assert (=> b!2681623 m!3049953))

(declare-fun m!3049955 () Bool)

(assert (=> b!2681623 m!3049955))

(declare-fun m!3049957 () Bool)

(assert (=> d!766609 m!3049957))

(declare-fun m!3049959 () Bool)

(assert (=> d!766609 m!3049959))

(declare-fun m!3049961 () Bool)

(assert (=> d!766609 m!3049961))

(assert (=> b!2681535 d!766609))

(declare-fun b!2681625 () Bool)

(declare-fun e!1690773 () List!31038)

(assert (=> b!2681625 (= e!1690773 lt!944660)))

(declare-fun b!2681626 () Bool)

(assert (=> b!2681626 (= e!1690773 (Cons!30938 (h!36358 lt!944647) (++!7554 (t!224539 lt!944647) lt!944660)))))

(declare-fun b!2681627 () Bool)

(declare-fun res!1127147 () Bool)

(declare-fun e!1690774 () Bool)

(assert (=> b!2681627 (=> (not res!1127147) (not e!1690774))))

(declare-fun lt!944682 () List!31038)

(assert (=> b!2681627 (= res!1127147 (= (size!23903 lt!944682) (+ (size!23903 lt!944647) (size!23903 lt!944660))))))

(declare-fun d!766611 () Bool)

(assert (=> d!766611 e!1690774))

(declare-fun res!1127146 () Bool)

(assert (=> d!766611 (=> (not res!1127146) (not e!1690774))))

(assert (=> d!766611 (= res!1127146 (= (content!4390 lt!944682) ((_ map or) (content!4390 lt!944647) (content!4390 lt!944660))))))

(assert (=> d!766611 (= lt!944682 e!1690773)))

(declare-fun c!431894 () Bool)

(assert (=> d!766611 (= c!431894 ((_ is Nil!30938) lt!944647))))

(assert (=> d!766611 (= (++!7554 lt!944647 lt!944660) lt!944682)))

(declare-fun b!2681628 () Bool)

(assert (=> b!2681628 (= e!1690774 (or (not (= lt!944660 Nil!30938)) (= lt!944682 lt!944647)))))

(assert (= (and d!766611 c!431894) b!2681625))

(assert (= (and d!766611 (not c!431894)) b!2681626))

(assert (= (and d!766611 res!1127146) b!2681627))

(assert (= (and b!2681627 res!1127147) b!2681628))

(declare-fun m!3049963 () Bool)

(assert (=> b!2681626 m!3049963))

(declare-fun m!3049965 () Bool)

(assert (=> b!2681627 m!3049965))

(declare-fun m!3049967 () Bool)

(assert (=> b!2681627 m!3049967))

(assert (=> b!2681627 m!3049955))

(declare-fun m!3049969 () Bool)

(assert (=> d!766611 m!3049969))

(declare-fun m!3049971 () Bool)

(assert (=> d!766611 m!3049971))

(assert (=> d!766611 m!3049961))

(assert (=> b!2681535 d!766611))

(declare-fun e!1690780 () List!31040)

(declare-fun b!2681638 () Bool)

(assert (=> b!2681638 (= e!1690780 (Cons!30940 (h!36360 lt!944638) (++!7555 (t!224541 lt!944638) (++!7555 lt!944645 lt!944655))))))

(declare-fun d!766613 () Bool)

(declare-fun e!1690779 () Bool)

(assert (=> d!766613 e!1690779))

(declare-fun res!1127152 () Bool)

(assert (=> d!766613 (=> (not res!1127152) (not e!1690779))))

(declare-fun lt!944685 () List!31040)

(declare-fun content!4391 (List!31040) (InoxSet Token!8916))

(assert (=> d!766613 (= res!1127152 (= (content!4391 lt!944685) ((_ map or) (content!4391 lt!944638) (content!4391 (++!7555 lt!944645 lt!944655)))))))

(assert (=> d!766613 (= lt!944685 e!1690780)))

(declare-fun c!431897 () Bool)

(assert (=> d!766613 (= c!431897 ((_ is Nil!30940) lt!944638))))

(assert (=> d!766613 (= (++!7555 lt!944638 (++!7555 lt!944645 lt!944655)) lt!944685)))

(declare-fun b!2681637 () Bool)

(assert (=> b!2681637 (= e!1690780 (++!7555 lt!944645 lt!944655))))

(declare-fun b!2681640 () Bool)

(assert (=> b!2681640 (= e!1690779 (or (not (= (++!7555 lt!944645 lt!944655) Nil!30940)) (= lt!944685 lt!944638)))))

(declare-fun b!2681639 () Bool)

(declare-fun res!1127153 () Bool)

(assert (=> b!2681639 (=> (not res!1127153) (not e!1690779))))

(declare-fun size!23904 (List!31040) Int)

(assert (=> b!2681639 (= res!1127153 (= (size!23904 lt!944685) (+ (size!23904 lt!944638) (size!23904 (++!7555 lt!944645 lt!944655)))))))

(assert (= (and d!766613 c!431897) b!2681637))

(assert (= (and d!766613 (not c!431897)) b!2681638))

(assert (= (and d!766613 res!1127152) b!2681639))

(assert (= (and b!2681639 res!1127153) b!2681640))

(assert (=> b!2681638 m!3049787))

(declare-fun m!3049973 () Bool)

(assert (=> b!2681638 m!3049973))

(declare-fun m!3049975 () Bool)

(assert (=> d!766613 m!3049975))

(declare-fun m!3049977 () Bool)

(assert (=> d!766613 m!3049977))

(assert (=> d!766613 m!3049787))

(declare-fun m!3049979 () Bool)

(assert (=> d!766613 m!3049979))

(declare-fun m!3049981 () Bool)

(assert (=> b!2681639 m!3049981))

(declare-fun m!3049983 () Bool)

(assert (=> b!2681639 m!3049983))

(assert (=> b!2681639 m!3049787))

(declare-fun m!3049985 () Bool)

(assert (=> b!2681639 m!3049985))

(assert (=> b!2681535 d!766613))

(declare-fun b!2681641 () Bool)

(declare-fun e!1690782 () Bool)

(declare-fun e!1690783 () Bool)

(assert (=> b!2681641 (= e!1690782 e!1690783)))

(declare-fun res!1127154 () Bool)

(declare-fun lt!944688 () tuple2!30416)

(assert (=> b!2681641 (= res!1127154 (< (size!23901 (_2!17771 lt!944688)) (size!23901 (_2!17772 (v!32751 lt!944658)))))))

(assert (=> b!2681641 (=> (not res!1127154) (not e!1690783))))

(declare-fun b!2681642 () Bool)

(declare-fun e!1690781 () tuple2!30416)

(assert (=> b!2681642 (= e!1690781 (tuple2!30417 (BalanceConc!18975 Empty!9680) (_2!17772 (v!32751 lt!944658))))))

(declare-fun b!2681643 () Bool)

(assert (=> b!2681643 (= e!1690783 (not (isEmpty!17679 (_1!17771 lt!944688))))))

(declare-fun b!2681644 () Bool)

(declare-fun res!1127155 () Bool)

(declare-fun e!1690784 () Bool)

(assert (=> b!2681644 (=> (not res!1127155) (not e!1690784))))

(assert (=> b!2681644 (= res!1127155 (= (list!11680 (_1!17771 lt!944688)) (_1!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 (_2!17772 (v!32751 lt!944658)))))))))

(declare-fun b!2681645 () Bool)

(declare-fun lt!944686 () tuple2!30416)

(declare-fun lt!944687 () Option!6113)

(assert (=> b!2681645 (= e!1690781 (tuple2!30417 (prepend!1057 (_1!17771 lt!944686) (_1!17772 (v!32751 lt!944687))) (_2!17771 lt!944686)))))

(assert (=> b!2681645 (= lt!944686 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944687))))))

(declare-fun d!766615 () Bool)

(assert (=> d!766615 e!1690784))

(declare-fun res!1127156 () Bool)

(assert (=> d!766615 (=> (not res!1127156) (not e!1690784))))

(assert (=> d!766615 (= res!1127156 e!1690782)))

(declare-fun c!431898 () Bool)

(assert (=> d!766615 (= c!431898 (> (size!23902 (_1!17771 lt!944688)) 0))))

(assert (=> d!766615 (= lt!944688 e!1690781)))

(declare-fun c!431899 () Bool)

(assert (=> d!766615 (= c!431899 ((_ is Some!6112) lt!944687))))

(assert (=> d!766615 (= lt!944687 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944658))))))

(assert (=> d!766615 (= (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944658))) lt!944688)))

(declare-fun b!2681646 () Bool)

(assert (=> b!2681646 (= e!1690784 (= (list!11679 (_2!17771 lt!944688)) (_2!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 (_2!17772 (v!32751 lt!944658)))))))))

(declare-fun b!2681647 () Bool)

(assert (=> b!2681647 (= e!1690782 (= (list!11679 (_2!17771 lt!944688)) (list!11679 (_2!17772 (v!32751 lt!944658)))))))

(assert (= (and d!766615 c!431899) b!2681645))

(assert (= (and d!766615 (not c!431899)) b!2681642))

(assert (= (and d!766615 c!431898) b!2681641))

(assert (= (and d!766615 (not c!431898)) b!2681647))

(assert (= (and b!2681641 res!1127154) b!2681643))

(assert (= (and d!766615 res!1127156) b!2681644))

(assert (= (and b!2681644 res!1127155) b!2681646))

(declare-fun m!3049987 () Bool)

(assert (=> b!2681647 m!3049987))

(assert (=> b!2681647 m!3049783))

(declare-fun m!3049989 () Bool)

(assert (=> b!2681641 m!3049989))

(declare-fun m!3049991 () Bool)

(assert (=> b!2681641 m!3049991))

(declare-fun m!3049993 () Bool)

(assert (=> d!766615 m!3049993))

(declare-fun m!3049995 () Bool)

(assert (=> d!766615 m!3049995))

(declare-fun m!3049997 () Bool)

(assert (=> b!2681645 m!3049997))

(declare-fun m!3049999 () Bool)

(assert (=> b!2681645 m!3049999))

(declare-fun m!3050001 () Bool)

(assert (=> b!2681644 m!3050001))

(assert (=> b!2681644 m!3049783))

(assert (=> b!2681644 m!3049783))

(declare-fun m!3050003 () Bool)

(assert (=> b!2681644 m!3050003))

(declare-fun m!3050005 () Bool)

(assert (=> b!2681643 m!3050005))

(assert (=> b!2681646 m!3049987))

(assert (=> b!2681646 m!3049783))

(assert (=> b!2681646 m!3049783))

(assert (=> b!2681646 m!3050003))

(assert (=> b!2681535 d!766615))

(declare-fun b!2681664 () Bool)

(declare-fun e!1690799 () Option!6113)

(declare-fun lt!944706 () Option!6113)

(declare-fun lt!944703 () Option!6113)

(assert (=> b!2681664 (= e!1690799 (ite (and ((_ is None!6112) lt!944706) ((_ is None!6112) lt!944703)) None!6112 (ite ((_ is None!6112) lt!944703) lt!944706 (ite ((_ is None!6112) lt!944706) lt!944703 (ite (>= (size!23899 (_1!17772 (v!32751 lt!944706))) (size!23899 (_1!17772 (v!32751 lt!944703)))) lt!944706 lt!944703)))))))

(declare-fun call!172771 () Option!6113)

(assert (=> b!2681664 (= lt!944706 call!172771)))

(assert (=> b!2681664 (= lt!944703 (maxPrefixZipperSequence!989 thiss!12257 (t!224542 rules!1381) lt!944637))))

(declare-fun b!2681665 () Bool)

(declare-fun e!1690798 () Bool)

(declare-fun e!1690801 () Bool)

(assert (=> b!2681665 (= e!1690798 e!1690801)))

(declare-fun res!1127171 () Bool)

(assert (=> b!2681665 (=> (not res!1127171) (not e!1690801))))

(declare-fun lt!944704 () Option!6113)

(declare-fun get!9701 (Option!6113) tuple2!30418)

(declare-datatypes ((tuple2!30424 0))(
  ( (tuple2!30425 (_1!17776 Token!8916) (_2!17776 List!31038)) )
))
(declare-datatypes ((Option!6114 0))(
  ( (None!6113) (Some!6113 (v!32756 tuple2!30424)) )
))
(declare-fun get!9702 (Option!6114) tuple2!30424)

(declare-fun maxPrefixZipper!449 (LexerInterface!4321 List!31041 List!31038) Option!6114)

(assert (=> b!2681665 (= res!1127171 (= (_1!17772 (get!9701 lt!944704)) (_1!17776 (get!9702 (maxPrefixZipper!449 thiss!12257 rules!1381 (list!11679 lt!944637))))))))

(declare-fun d!766617 () Bool)

(declare-fun e!1690802 () Bool)

(assert (=> d!766617 e!1690802))

(declare-fun res!1127169 () Bool)

(assert (=> d!766617 (=> (not res!1127169) (not e!1690802))))

(declare-fun isDefined!4851 (Option!6113) Bool)

(declare-fun isDefined!4852 (Option!6114) Bool)

(assert (=> d!766617 (= res!1127169 (= (isDefined!4851 lt!944704) (isDefined!4852 (maxPrefixZipper!449 thiss!12257 rules!1381 (list!11679 lt!944637)))))))

(assert (=> d!766617 (= lt!944704 e!1690799)))

(declare-fun c!431902 () Bool)

(assert (=> d!766617 (= c!431902 (and ((_ is Cons!30941) rules!1381) ((_ is Nil!30941) (t!224542 rules!1381))))))

(declare-fun lt!944709 () Unit!45087)

(declare-fun lt!944708 () Unit!45087)

(assert (=> d!766617 (= lt!944709 lt!944708)))

(declare-fun lt!944705 () List!31038)

(declare-fun lt!944707 () List!31038)

(declare-fun isPrefix!2462 (List!31038 List!31038) Bool)

(assert (=> d!766617 (isPrefix!2462 lt!944705 lt!944707)))

(declare-fun lemmaIsPrefixRefl!1588 (List!31038 List!31038) Unit!45087)

(assert (=> d!766617 (= lt!944708 (lemmaIsPrefixRefl!1588 lt!944705 lt!944707))))

(assert (=> d!766617 (= lt!944707 (list!11679 lt!944637))))

(assert (=> d!766617 (= lt!944705 (list!11679 lt!944637))))

(assert (=> d!766617 (rulesValidInductive!1643 thiss!12257 rules!1381)))

(assert (=> d!766617 (= (maxPrefixZipperSequence!989 thiss!12257 rules!1381 lt!944637) lt!944704)))

(declare-fun b!2681666 () Bool)

(declare-fun e!1690800 () Bool)

(assert (=> b!2681666 (= e!1690802 e!1690800)))

(declare-fun res!1127172 () Bool)

(assert (=> b!2681666 (=> res!1127172 e!1690800)))

(assert (=> b!2681666 (= res!1127172 (not (isDefined!4851 lt!944704)))))

(declare-fun b!2681667 () Bool)

(assert (=> b!2681667 (= e!1690801 (= (list!11679 (_2!17772 (get!9701 lt!944704))) (_2!17776 (get!9702 (maxPrefixZipper!449 thiss!12257 rules!1381 (list!11679 lt!944637))))))))

(declare-fun b!2681668 () Bool)

(declare-fun res!1127173 () Bool)

(assert (=> b!2681668 (=> (not res!1127173) (not e!1690802))))

(assert (=> b!2681668 (= res!1127173 e!1690798)))

(declare-fun res!1127174 () Bool)

(assert (=> b!2681668 (=> res!1127174 e!1690798)))

(assert (=> b!2681668 (= res!1127174 (not (isDefined!4851 lt!944704)))))

(declare-fun b!2681669 () Bool)

(assert (=> b!2681669 (= e!1690799 call!172771)))

(declare-fun b!2681670 () Bool)

(declare-fun e!1690797 () Bool)

(declare-fun maxPrefix!2345 (LexerInterface!4321 List!31041 List!31038) Option!6114)

(assert (=> b!2681670 (= e!1690797 (= (list!11679 (_2!17772 (get!9701 lt!944704))) (_2!17776 (get!9702 (maxPrefix!2345 thiss!12257 rules!1381 (list!11679 lt!944637))))))))

(declare-fun b!2681671 () Bool)

(assert (=> b!2681671 (= e!1690800 e!1690797)))

(declare-fun res!1127170 () Bool)

(assert (=> b!2681671 (=> (not res!1127170) (not e!1690797))))

(assert (=> b!2681671 (= res!1127170 (= (_1!17772 (get!9701 lt!944704)) (_1!17776 (get!9702 (maxPrefix!2345 thiss!12257 rules!1381 (list!11679 lt!944637))))))))

(declare-fun bm!172766 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!458 (LexerInterface!4321 Rule!9250 BalanceConc!18972) Option!6113)

(assert (=> bm!172766 (= call!172771 (maxPrefixOneRuleZipperSequence!458 thiss!12257 (h!36361 rules!1381) lt!944637))))

(assert (= (and d!766617 c!431902) b!2681669))

(assert (= (and d!766617 (not c!431902)) b!2681664))

(assert (= (or b!2681669 b!2681664) bm!172766))

(assert (= (and d!766617 res!1127169) b!2681668))

(assert (= (and b!2681668 (not res!1127174)) b!2681665))

(assert (= (and b!2681665 res!1127171) b!2681667))

(assert (= (and b!2681668 res!1127173) b!2681666))

(assert (= (and b!2681666 (not res!1127172)) b!2681671))

(assert (= (and b!2681671 res!1127170) b!2681670))

(declare-fun m!3050007 () Bool)

(assert (=> bm!172766 m!3050007))

(declare-fun m!3050009 () Bool)

(assert (=> b!2681671 m!3050009))

(declare-fun m!3050011 () Bool)

(assert (=> b!2681671 m!3050011))

(assert (=> b!2681671 m!3050011))

(declare-fun m!3050013 () Bool)

(assert (=> b!2681671 m!3050013))

(assert (=> b!2681671 m!3050013))

(declare-fun m!3050015 () Bool)

(assert (=> b!2681671 m!3050015))

(declare-fun m!3050017 () Bool)

(assert (=> b!2681667 m!3050017))

(declare-fun m!3050019 () Bool)

(assert (=> b!2681667 m!3050019))

(declare-fun m!3050021 () Bool)

(assert (=> b!2681667 m!3050021))

(assert (=> b!2681667 m!3050011))

(assert (=> b!2681667 m!3050017))

(assert (=> b!2681667 m!3050009))

(assert (=> b!2681667 m!3050011))

(declare-fun m!3050023 () Bool)

(assert (=> b!2681666 m!3050023))

(declare-fun m!3050025 () Bool)

(assert (=> d!766617 m!3050025))

(assert (=> d!766617 m!3049847))

(assert (=> d!766617 m!3050017))

(declare-fun m!3050027 () Bool)

(assert (=> d!766617 m!3050027))

(assert (=> d!766617 m!3050011))

(assert (=> d!766617 m!3050011))

(assert (=> d!766617 m!3050017))

(assert (=> d!766617 m!3050023))

(declare-fun m!3050029 () Bool)

(assert (=> d!766617 m!3050029))

(assert (=> b!2681665 m!3050009))

(assert (=> b!2681665 m!3050011))

(assert (=> b!2681665 m!3050011))

(assert (=> b!2681665 m!3050017))

(assert (=> b!2681665 m!3050017))

(assert (=> b!2681665 m!3050019))

(assert (=> b!2681668 m!3050023))

(declare-fun m!3050031 () Bool)

(assert (=> b!2681664 m!3050031))

(assert (=> b!2681670 m!3050021))

(assert (=> b!2681670 m!3050013))

(assert (=> b!2681670 m!3050015))

(assert (=> b!2681670 m!3050011))

(assert (=> b!2681670 m!3050013))

(assert (=> b!2681670 m!3050009))

(assert (=> b!2681670 m!3050011))

(assert (=> b!2681535 d!766617))

(declare-fun b!2681673 () Bool)

(declare-fun e!1690804 () List!31040)

(assert (=> b!2681673 (= e!1690804 (Cons!30940 (h!36360 lt!944638) (++!7555 (t!224541 lt!944638) lt!944645)))))

(declare-fun d!766619 () Bool)

(declare-fun e!1690803 () Bool)

(assert (=> d!766619 e!1690803))

(declare-fun res!1127175 () Bool)

(assert (=> d!766619 (=> (not res!1127175) (not e!1690803))))

(declare-fun lt!944710 () List!31040)

(assert (=> d!766619 (= res!1127175 (= (content!4391 lt!944710) ((_ map or) (content!4391 lt!944638) (content!4391 lt!944645))))))

(assert (=> d!766619 (= lt!944710 e!1690804)))

(declare-fun c!431903 () Bool)

(assert (=> d!766619 (= c!431903 ((_ is Nil!30940) lt!944638))))

(assert (=> d!766619 (= (++!7555 lt!944638 lt!944645) lt!944710)))

(declare-fun b!2681672 () Bool)

(assert (=> b!2681672 (= e!1690804 lt!944645)))

(declare-fun b!2681675 () Bool)

(assert (=> b!2681675 (= e!1690803 (or (not (= lt!944645 Nil!30940)) (= lt!944710 lt!944638)))))

(declare-fun b!2681674 () Bool)

(declare-fun res!1127176 () Bool)

(assert (=> b!2681674 (=> (not res!1127176) (not e!1690803))))

(assert (=> b!2681674 (= res!1127176 (= (size!23904 lt!944710) (+ (size!23904 lt!944638) (size!23904 lt!944645))))))

(assert (= (and d!766619 c!431903) b!2681672))

(assert (= (and d!766619 (not c!431903)) b!2681673))

(assert (= (and d!766619 res!1127175) b!2681674))

(assert (= (and b!2681674 res!1127176) b!2681675))

(declare-fun m!3050033 () Bool)

(assert (=> b!2681673 m!3050033))

(declare-fun m!3050035 () Bool)

(assert (=> d!766619 m!3050035))

(assert (=> d!766619 m!3049977))

(declare-fun m!3050037 () Bool)

(assert (=> d!766619 m!3050037))

(declare-fun m!3050039 () Bool)

(assert (=> b!2681674 m!3050039))

(assert (=> b!2681674 m!3049983))

(declare-fun m!3050041 () Bool)

(assert (=> b!2681674 m!3050041))

(assert (=> b!2681535 d!766619))

(declare-fun d!766621 () Bool)

(declare-fun lt!944713 () BalanceConc!18972)

(assert (=> d!766621 (= (list!11679 lt!944713) (originalCharacters!5489 (_1!17772 (v!32751 lt!944658))))))

(declare-fun dynLambda!13427 (Int TokenValue!4947) BalanceConc!18972)

(assert (=> d!766621 (= lt!944713 (dynLambda!13427 (toChars!6538 (transformation!4725 (rule!7135 (_1!17772 (v!32751 lt!944658))))) (value!152277 (_1!17772 (v!32751 lt!944658)))))))

(assert (=> d!766621 (= (charsOf!2976 (_1!17772 (v!32751 lt!944658))) lt!944713)))

(declare-fun b_lambda!81891 () Bool)

(assert (=> (not b_lambda!81891) (not d!766621)))

(declare-fun t!224545 () Bool)

(declare-fun tb!150589 () Bool)

(assert (=> (and b!2681547 (= (toChars!6538 (transformation!4725 (h!36361 rules!1381))) (toChars!6538 (transformation!4725 (rule!7135 (_1!17772 (v!32751 lt!944658)))))) t!224545) tb!150589))

(declare-fun b!2681680 () Bool)

(declare-fun e!1690807 () Bool)

(declare-fun tp!848439 () Bool)

(assert (=> b!2681680 (= e!1690807 (and (inv!41959 (c!431877 (dynLambda!13427 (toChars!6538 (transformation!4725 (rule!7135 (_1!17772 (v!32751 lt!944658))))) (value!152277 (_1!17772 (v!32751 lt!944658)))))) tp!848439))))

(declare-fun result!185962 () Bool)

(assert (=> tb!150589 (= result!185962 (and (inv!41962 (dynLambda!13427 (toChars!6538 (transformation!4725 (rule!7135 (_1!17772 (v!32751 lt!944658))))) (value!152277 (_1!17772 (v!32751 lt!944658))))) e!1690807))))

(assert (= tb!150589 b!2681680))

(declare-fun m!3050043 () Bool)

(assert (=> b!2681680 m!3050043))

(declare-fun m!3050045 () Bool)

(assert (=> tb!150589 m!3050045))

(assert (=> d!766621 t!224545))

(declare-fun b_and!198609 () Bool)

(assert (= b_and!198603 (and (=> t!224545 result!185962) b_and!198609)))

(declare-fun m!3050047 () Bool)

(assert (=> d!766621 m!3050047))

(declare-fun m!3050049 () Bool)

(assert (=> d!766621 m!3050049))

(assert (=> b!2681535 d!766621))

(declare-fun b!2681681 () Bool)

(declare-fun e!1690808 () List!31038)

(assert (=> b!2681681 (= e!1690808 lt!944649)))

(declare-fun b!2681682 () Bool)

(assert (=> b!2681682 (= e!1690808 (Cons!30938 (h!36358 lt!944654) (++!7554 (t!224539 lt!944654) lt!944649)))))

(declare-fun b!2681683 () Bool)

(declare-fun res!1127178 () Bool)

(declare-fun e!1690809 () Bool)

(assert (=> b!2681683 (=> (not res!1127178) (not e!1690809))))

(declare-fun lt!944714 () List!31038)

(assert (=> b!2681683 (= res!1127178 (= (size!23903 lt!944714) (+ (size!23903 lt!944654) (size!23903 lt!944649))))))

(declare-fun d!766623 () Bool)

(assert (=> d!766623 e!1690809))

(declare-fun res!1127177 () Bool)

(assert (=> d!766623 (=> (not res!1127177) (not e!1690809))))

(assert (=> d!766623 (= res!1127177 (= (content!4390 lt!944714) ((_ map or) (content!4390 lt!944654) (content!4390 lt!944649))))))

(assert (=> d!766623 (= lt!944714 e!1690808)))

(declare-fun c!431904 () Bool)

(assert (=> d!766623 (= c!431904 ((_ is Nil!30938) lt!944654))))

(assert (=> d!766623 (= (++!7554 lt!944654 lt!944649) lt!944714)))

(declare-fun b!2681684 () Bool)

(assert (=> b!2681684 (= e!1690809 (or (not (= lt!944649 Nil!30938)) (= lt!944714 lt!944654)))))

(assert (= (and d!766623 c!431904) b!2681681))

(assert (= (and d!766623 (not c!431904)) b!2681682))

(assert (= (and d!766623 res!1127177) b!2681683))

(assert (= (and b!2681683 res!1127178) b!2681684))

(declare-fun m!3050051 () Bool)

(assert (=> b!2681682 m!3050051))

(declare-fun m!3050053 () Bool)

(assert (=> b!2681683 m!3050053))

(declare-fun m!3050055 () Bool)

(assert (=> b!2681683 m!3050055))

(assert (=> b!2681683 m!3049953))

(declare-fun m!3050057 () Bool)

(assert (=> d!766623 m!3050057))

(declare-fun m!3050059 () Bool)

(assert (=> d!766623 m!3050059))

(assert (=> d!766623 m!3049959))

(assert (=> b!2681535 d!766623))

(declare-fun b!2681693 () Bool)

(declare-fun res!1127187 () Bool)

(declare-fun e!1690812 () Bool)

(assert (=> b!2681693 (=> (not res!1127187) (not e!1690812))))

(declare-fun isBalanced!2930 (Conc!9679) Bool)

(declare-fun ++!7559 (Conc!9679 Conc!9679) Conc!9679)

(assert (=> b!2681693 (= res!1127187 (isBalanced!2930 (++!7559 (c!431877 treated!26) (c!431877 lt!944642))))))

(declare-fun b!2681694 () Bool)

(declare-fun res!1127188 () Bool)

(assert (=> b!2681694 (=> (not res!1127188) (not e!1690812))))

(declare-fun height!1412 (Conc!9679) Int)

(assert (=> b!2681694 (= res!1127188 (<= (height!1412 (++!7559 (c!431877 treated!26) (c!431877 lt!944642))) (+ (max!0 (height!1412 (c!431877 treated!26)) (height!1412 (c!431877 lt!944642))) 1)))))

(declare-fun lt!944717 () BalanceConc!18972)

(declare-fun b!2681696 () Bool)

(assert (=> b!2681696 (= e!1690812 (= (list!11679 lt!944717) (++!7554 (list!11679 treated!26) (list!11679 lt!944642))))))

(declare-fun b!2681695 () Bool)

(declare-fun res!1127190 () Bool)

(assert (=> b!2681695 (=> (not res!1127190) (not e!1690812))))

(assert (=> b!2681695 (= res!1127190 (>= (height!1412 (++!7559 (c!431877 treated!26) (c!431877 lt!944642))) (max!0 (height!1412 (c!431877 treated!26)) (height!1412 (c!431877 lt!944642)))))))

(declare-fun d!766625 () Bool)

(assert (=> d!766625 e!1690812))

(declare-fun res!1127189 () Bool)

(assert (=> d!766625 (=> (not res!1127189) (not e!1690812))))

(declare-fun appendAssocInst!652 (Conc!9679 Conc!9679) Bool)

(assert (=> d!766625 (= res!1127189 (appendAssocInst!652 (c!431877 treated!26) (c!431877 lt!944642)))))

(assert (=> d!766625 (= lt!944717 (BalanceConc!18973 (++!7559 (c!431877 treated!26) (c!431877 lt!944642))))))

(assert (=> d!766625 (= (++!7556 treated!26 lt!944642) lt!944717)))

(assert (= (and d!766625 res!1127189) b!2681693))

(assert (= (and b!2681693 res!1127187) b!2681694))

(assert (= (and b!2681694 res!1127188) b!2681695))

(assert (= (and b!2681695 res!1127190) b!2681696))

(declare-fun m!3050061 () Bool)

(assert (=> b!2681696 m!3050061))

(assert (=> b!2681696 m!3049775))

(assert (=> b!2681696 m!3049799))

(assert (=> b!2681696 m!3049775))

(assert (=> b!2681696 m!3049799))

(declare-fun m!3050063 () Bool)

(assert (=> b!2681696 m!3050063))

(declare-fun m!3050065 () Bool)

(assert (=> b!2681693 m!3050065))

(assert (=> b!2681693 m!3050065))

(declare-fun m!3050067 () Bool)

(assert (=> b!2681693 m!3050067))

(declare-fun m!3050069 () Bool)

(assert (=> d!766625 m!3050069))

(assert (=> d!766625 m!3050065))

(declare-fun m!3050071 () Bool)

(assert (=> b!2681694 m!3050071))

(assert (=> b!2681694 m!3050065))

(declare-fun m!3050073 () Bool)

(assert (=> b!2681694 m!3050073))

(assert (=> b!2681694 m!3050065))

(declare-fun m!3050075 () Bool)

(assert (=> b!2681694 m!3050075))

(assert (=> b!2681694 m!3050071))

(assert (=> b!2681694 m!3050073))

(declare-fun m!3050077 () Bool)

(assert (=> b!2681694 m!3050077))

(assert (=> b!2681695 m!3050071))

(assert (=> b!2681695 m!3050065))

(assert (=> b!2681695 m!3050073))

(assert (=> b!2681695 m!3050065))

(assert (=> b!2681695 m!3050075))

(assert (=> b!2681695 m!3050071))

(assert (=> b!2681695 m!3050073))

(assert (=> b!2681695 m!3050077))

(assert (=> b!2681535 d!766625))

(declare-fun d!766627 () Bool)

(assert (=> d!766627 (= (list!11680 (_1!17771 lt!944643)) (list!11681 (c!431878 (_1!17771 lt!944643))))))

(declare-fun bs!480178 () Bool)

(assert (= bs!480178 d!766627))

(declare-fun m!3050079 () Bool)

(assert (=> bs!480178 m!3050079))

(assert (=> b!2681535 d!766627))

(declare-fun b!2681697 () Bool)

(declare-fun e!1690813 () List!31038)

(assert (=> b!2681697 (= e!1690813 (++!7554 lt!944649 lt!944660))))

(declare-fun b!2681698 () Bool)

(assert (=> b!2681698 (= e!1690813 (Cons!30938 (h!36358 lt!944654) (++!7554 (t!224539 lt!944654) (++!7554 lt!944649 lt!944660))))))

(declare-fun b!2681699 () Bool)

(declare-fun res!1127192 () Bool)

(declare-fun e!1690814 () Bool)

(assert (=> b!2681699 (=> (not res!1127192) (not e!1690814))))

(declare-fun lt!944718 () List!31038)

(assert (=> b!2681699 (= res!1127192 (= (size!23903 lt!944718) (+ (size!23903 lt!944654) (size!23903 (++!7554 lt!944649 lt!944660)))))))

(declare-fun d!766629 () Bool)

(assert (=> d!766629 e!1690814))

(declare-fun res!1127191 () Bool)

(assert (=> d!766629 (=> (not res!1127191) (not e!1690814))))

(assert (=> d!766629 (= res!1127191 (= (content!4390 lt!944718) ((_ map or) (content!4390 lt!944654) (content!4390 (++!7554 lt!944649 lt!944660)))))))

(assert (=> d!766629 (= lt!944718 e!1690813)))

(declare-fun c!431908 () Bool)

(assert (=> d!766629 (= c!431908 ((_ is Nil!30938) lt!944654))))

(assert (=> d!766629 (= (++!7554 lt!944654 (++!7554 lt!944649 lt!944660)) lt!944718)))

(declare-fun b!2681700 () Bool)

(assert (=> b!2681700 (= e!1690814 (or (not (= (++!7554 lt!944649 lt!944660) Nil!30938)) (= lt!944718 lt!944654)))))

(assert (= (and d!766629 c!431908) b!2681697))

(assert (= (and d!766629 (not c!431908)) b!2681698))

(assert (= (and d!766629 res!1127191) b!2681699))

(assert (= (and b!2681699 res!1127192) b!2681700))

(assert (=> b!2681698 m!3049793))

(declare-fun m!3050081 () Bool)

(assert (=> b!2681698 m!3050081))

(declare-fun m!3050083 () Bool)

(assert (=> b!2681699 m!3050083))

(assert (=> b!2681699 m!3050055))

(assert (=> b!2681699 m!3049793))

(declare-fun m!3050085 () Bool)

(assert (=> b!2681699 m!3050085))

(declare-fun m!3050087 () Bool)

(assert (=> d!766629 m!3050087))

(assert (=> d!766629 m!3050059))

(assert (=> d!766629 m!3049793))

(declare-fun m!3050089 () Bool)

(assert (=> d!766629 m!3050089))

(assert (=> b!2681535 d!766629))

(declare-fun b!2681711 () Bool)

(declare-fun e!1690823 () Bool)

(declare-fun e!1690821 () Bool)

(assert (=> b!2681711 (= e!1690823 e!1690821)))

(declare-fun res!1127195 () Bool)

(declare-fun lt!944726 () tuple2!30420)

(assert (=> b!2681711 (= res!1127195 (< (size!23903 (_2!17773 lt!944726)) (size!23903 lt!944647)))))

(assert (=> b!2681711 (=> (not res!1127195) (not e!1690821))))

(declare-fun b!2681712 () Bool)

(declare-fun isEmpty!17680 (List!31040) Bool)

(assert (=> b!2681712 (= e!1690821 (not (isEmpty!17680 (_1!17773 lt!944726))))))

(declare-fun b!2681713 () Bool)

(assert (=> b!2681713 (= e!1690823 (= (_2!17773 lt!944726) lt!944647))))

(declare-fun d!766631 () Bool)

(assert (=> d!766631 e!1690823))

(declare-fun c!431913 () Bool)

(assert (=> d!766631 (= c!431913 (> (size!23904 (_1!17773 lt!944726)) 0))))

(declare-fun e!1690822 () tuple2!30420)

(assert (=> d!766631 (= lt!944726 e!1690822)))

(declare-fun c!431914 () Bool)

(declare-fun lt!944727 () Option!6114)

(assert (=> d!766631 (= c!431914 ((_ is Some!6113) lt!944727))))

(assert (=> d!766631 (= lt!944727 (maxPrefix!2345 thiss!12257 rules!1381 lt!944647))))

(assert (=> d!766631 (= (lexList!1182 thiss!12257 rules!1381 lt!944647) lt!944726)))

(declare-fun b!2681714 () Bool)

(declare-fun lt!944725 () tuple2!30420)

(assert (=> b!2681714 (= e!1690822 (tuple2!30421 (Cons!30940 (_1!17776 (v!32756 lt!944727)) (_1!17773 lt!944725)) (_2!17773 lt!944725)))))

(assert (=> b!2681714 (= lt!944725 (lexList!1182 thiss!12257 rules!1381 (_2!17776 (v!32756 lt!944727))))))

(declare-fun b!2681715 () Bool)

(assert (=> b!2681715 (= e!1690822 (tuple2!30421 Nil!30940 lt!944647))))

(assert (= (and d!766631 c!431914) b!2681714))

(assert (= (and d!766631 (not c!431914)) b!2681715))

(assert (= (and d!766631 c!431913) b!2681711))

(assert (= (and d!766631 (not c!431913)) b!2681713))

(assert (= (and b!2681711 res!1127195) b!2681712))

(declare-fun m!3050091 () Bool)

(assert (=> b!2681711 m!3050091))

(assert (=> b!2681711 m!3049967))

(declare-fun m!3050093 () Bool)

(assert (=> b!2681712 m!3050093))

(declare-fun m!3050095 () Bool)

(assert (=> d!766631 m!3050095))

(declare-fun m!3050097 () Bool)

(assert (=> d!766631 m!3050097))

(declare-fun m!3050099 () Bool)

(assert (=> b!2681714 m!3050099))

(assert (=> b!2681535 d!766631))

(declare-fun d!766633 () Bool)

(assert (=> d!766633 (= (list!11679 lt!944642) (list!11682 (c!431877 lt!944642)))))

(declare-fun bs!480179 () Bool)

(assert (= bs!480179 d!766633))

(declare-fun m!3050101 () Bool)

(assert (=> bs!480179 m!3050101))

(assert (=> b!2681535 d!766633))

(declare-fun b!2681716 () Bool)

(declare-fun e!1690825 () Bool)

(declare-fun e!1690826 () Bool)

(assert (=> b!2681716 (= e!1690825 e!1690826)))

(declare-fun res!1127196 () Bool)

(declare-fun lt!944730 () tuple2!30416)

(assert (=> b!2681716 (= res!1127196 (< (size!23901 (_2!17771 lt!944730)) (size!23901 lt!944637)))))

(assert (=> b!2681716 (=> (not res!1127196) (not e!1690826))))

(declare-fun b!2681717 () Bool)

(declare-fun e!1690824 () tuple2!30416)

(assert (=> b!2681717 (= e!1690824 (tuple2!30417 (BalanceConc!18975 Empty!9680) lt!944637))))

(declare-fun b!2681718 () Bool)

(assert (=> b!2681718 (= e!1690826 (not (isEmpty!17679 (_1!17771 lt!944730))))))

(declare-fun b!2681719 () Bool)

(declare-fun res!1127197 () Bool)

(declare-fun e!1690827 () Bool)

(assert (=> b!2681719 (=> (not res!1127197) (not e!1690827))))

(assert (=> b!2681719 (= res!1127197 (= (list!11680 (_1!17771 lt!944730)) (_1!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 lt!944637)))))))

(declare-fun b!2681720 () Bool)

(declare-fun lt!944728 () tuple2!30416)

(declare-fun lt!944729 () Option!6113)

(assert (=> b!2681720 (= e!1690824 (tuple2!30417 (prepend!1057 (_1!17771 lt!944728) (_1!17772 (v!32751 lt!944729))) (_2!17771 lt!944728)))))

(assert (=> b!2681720 (= lt!944728 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944729))))))

(declare-fun d!766635 () Bool)

(assert (=> d!766635 e!1690827))

(declare-fun res!1127198 () Bool)

(assert (=> d!766635 (=> (not res!1127198) (not e!1690827))))

(assert (=> d!766635 (= res!1127198 e!1690825)))

(declare-fun c!431915 () Bool)

(assert (=> d!766635 (= c!431915 (> (size!23902 (_1!17771 lt!944730)) 0))))

(assert (=> d!766635 (= lt!944730 e!1690824)))

(declare-fun c!431916 () Bool)

(assert (=> d!766635 (= c!431916 ((_ is Some!6112) lt!944729))))

(assert (=> d!766635 (= lt!944729 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 lt!944637))))

(assert (=> d!766635 (= (lexRec!587 thiss!12257 rules!1381 lt!944637) lt!944730)))

(declare-fun b!2681721 () Bool)

(assert (=> b!2681721 (= e!1690827 (= (list!11679 (_2!17771 lt!944730)) (_2!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 lt!944637)))))))

(declare-fun b!2681722 () Bool)

(assert (=> b!2681722 (= e!1690825 (= (list!11679 (_2!17771 lt!944730)) (list!11679 lt!944637)))))

(assert (= (and d!766635 c!431916) b!2681720))

(assert (= (and d!766635 (not c!431916)) b!2681717))

(assert (= (and d!766635 c!431915) b!2681716))

(assert (= (and d!766635 (not c!431915)) b!2681722))

(assert (= (and b!2681716 res!1127196) b!2681718))

(assert (= (and d!766635 res!1127198) b!2681719))

(assert (= (and b!2681719 res!1127197) b!2681721))

(declare-fun m!3050103 () Bool)

(assert (=> b!2681722 m!3050103))

(assert (=> b!2681722 m!3050011))

(declare-fun m!3050105 () Bool)

(assert (=> b!2681716 m!3050105))

(declare-fun m!3050107 () Bool)

(assert (=> b!2681716 m!3050107))

(declare-fun m!3050109 () Bool)

(assert (=> d!766635 m!3050109))

(assert (=> d!766635 m!3049821))

(declare-fun m!3050111 () Bool)

(assert (=> b!2681720 m!3050111))

(declare-fun m!3050113 () Bool)

(assert (=> b!2681720 m!3050113))

(declare-fun m!3050115 () Bool)

(assert (=> b!2681719 m!3050115))

(assert (=> b!2681719 m!3050011))

(assert (=> b!2681719 m!3050011))

(declare-fun m!3050117 () Bool)

(assert (=> b!2681719 m!3050117))

(declare-fun m!3050119 () Bool)

(assert (=> b!2681718 m!3050119))

(assert (=> b!2681721 m!3050103))

(assert (=> b!2681721 m!3050011))

(assert (=> b!2681721 m!3050011))

(assert (=> b!2681721 m!3050117))

(assert (=> b!2681535 d!766635))

(declare-fun d!766637 () Bool)

(assert (=> d!766637 (= (lexList!1182 thiss!12257 rules!1381 lt!944647) (tuple2!30421 lt!944640 Nil!30938))))

(declare-fun lt!944733 () Unit!45087)

(declare-fun choose!15882 (LexerInterface!4321 List!31041 List!31038 List!31038 List!31040 List!31040 List!31038) Unit!45087)

(assert (=> d!766637 (= lt!944733 (choose!15882 thiss!12257 rules!1381 lt!944647 lt!944660 lt!944640 lt!944655 (list!11679 (_2!17771 lt!944643))))))

(assert (=> d!766637 (not (isEmpty!17678 rules!1381))))

(assert (=> d!766637 (= (lemmaLexThenLexPrefix!395 thiss!12257 rules!1381 lt!944647 lt!944660 lt!944640 lt!944655 (list!11679 (_2!17771 lt!944643))) lt!944733)))

(declare-fun bs!480180 () Bool)

(assert (= bs!480180 d!766637))

(assert (=> bs!480180 m!3049791))

(assert (=> bs!480180 m!3049809))

(declare-fun m!3050121 () Bool)

(assert (=> bs!480180 m!3050121))

(assert (=> bs!480180 m!3049845))

(assert (=> b!2681535 d!766637))

(declare-fun e!1690829 () List!31040)

(declare-fun b!2681724 () Bool)

(assert (=> b!2681724 (= e!1690829 (Cons!30940 (h!36360 (++!7555 lt!944638 lt!944645)) (++!7555 (t!224541 (++!7555 lt!944638 lt!944645)) lt!944655)))))

(declare-fun d!766639 () Bool)

(declare-fun e!1690828 () Bool)

(assert (=> d!766639 e!1690828))

(declare-fun res!1127199 () Bool)

(assert (=> d!766639 (=> (not res!1127199) (not e!1690828))))

(declare-fun lt!944734 () List!31040)

(assert (=> d!766639 (= res!1127199 (= (content!4391 lt!944734) ((_ map or) (content!4391 (++!7555 lt!944638 lt!944645)) (content!4391 lt!944655))))))

(assert (=> d!766639 (= lt!944734 e!1690829)))

(declare-fun c!431917 () Bool)

(assert (=> d!766639 (= c!431917 ((_ is Nil!30940) (++!7555 lt!944638 lt!944645)))))

(assert (=> d!766639 (= (++!7555 (++!7555 lt!944638 lt!944645) lt!944655) lt!944734)))

(declare-fun b!2681723 () Bool)

(assert (=> b!2681723 (= e!1690829 lt!944655)))

(declare-fun b!2681726 () Bool)

(assert (=> b!2681726 (= e!1690828 (or (not (= lt!944655 Nil!30940)) (= lt!944734 (++!7555 lt!944638 lt!944645))))))

(declare-fun b!2681725 () Bool)

(declare-fun res!1127200 () Bool)

(assert (=> b!2681725 (=> (not res!1127200) (not e!1690828))))

(assert (=> b!2681725 (= res!1127200 (= (size!23904 lt!944734) (+ (size!23904 (++!7555 lt!944638 lt!944645)) (size!23904 lt!944655))))))

(assert (= (and d!766639 c!431917) b!2681723))

(assert (= (and d!766639 (not c!431917)) b!2681724))

(assert (= (and d!766639 res!1127199) b!2681725))

(assert (= (and b!2681725 res!1127200) b!2681726))

(declare-fun m!3050123 () Bool)

(assert (=> b!2681724 m!3050123))

(declare-fun m!3050125 () Bool)

(assert (=> d!766639 m!3050125))

(assert (=> d!766639 m!3049813))

(declare-fun m!3050127 () Bool)

(assert (=> d!766639 m!3050127))

(declare-fun m!3050129 () Bool)

(assert (=> d!766639 m!3050129))

(declare-fun m!3050131 () Bool)

(assert (=> b!2681725 m!3050131))

(assert (=> b!2681725 m!3049813))

(declare-fun m!3050133 () Bool)

(assert (=> b!2681725 m!3050133))

(declare-fun m!3050135 () Bool)

(assert (=> b!2681725 m!3050135))

(assert (=> b!2681535 d!766639))

(declare-fun d!766641 () Bool)

(assert (=> d!766641 (= (list!11680 lt!944653) (list!11681 (c!431878 lt!944653)))))

(declare-fun bs!480181 () Bool)

(assert (= bs!480181 d!766641))

(declare-fun m!3050137 () Bool)

(assert (=> bs!480181 m!3050137))

(assert (=> b!2681535 d!766641))

(declare-fun d!766643 () Bool)

(assert (=> d!766643 (= (++!7554 (++!7554 lt!944654 lt!944649) lt!944660) (++!7554 lt!944654 (++!7554 lt!944649 lt!944660)))))

(declare-fun lt!944737 () Unit!45087)

(declare-fun choose!15883 (List!31038 List!31038 List!31038) Unit!45087)

(assert (=> d!766643 (= lt!944737 (choose!15883 lt!944654 lt!944649 lt!944660))))

(assert (=> d!766643 (= (lemmaConcatAssociativity!1528 lt!944654 lt!944649 lt!944660) lt!944737)))

(declare-fun bs!480182 () Bool)

(assert (= bs!480182 d!766643))

(assert (=> bs!480182 m!3049793))

(assert (=> bs!480182 m!3049803))

(declare-fun m!3050139 () Bool)

(assert (=> bs!480182 m!3050139))

(assert (=> bs!480182 m!3049803))

(assert (=> bs!480182 m!3049793))

(assert (=> bs!480182 m!3049817))

(declare-fun m!3050141 () Bool)

(assert (=> bs!480182 m!3050141))

(assert (=> b!2681535 d!766643))

(declare-fun b!2681728 () Bool)

(declare-fun e!1690831 () List!31040)

(assert (=> b!2681728 (= e!1690831 (Cons!30940 (h!36360 lt!944645) (++!7555 (t!224541 lt!944645) lt!944655)))))

(declare-fun d!766645 () Bool)

(declare-fun e!1690830 () Bool)

(assert (=> d!766645 e!1690830))

(declare-fun res!1127201 () Bool)

(assert (=> d!766645 (=> (not res!1127201) (not e!1690830))))

(declare-fun lt!944738 () List!31040)

(assert (=> d!766645 (= res!1127201 (= (content!4391 lt!944738) ((_ map or) (content!4391 lt!944645) (content!4391 lt!944655))))))

(assert (=> d!766645 (= lt!944738 e!1690831)))

(declare-fun c!431918 () Bool)

(assert (=> d!766645 (= c!431918 ((_ is Nil!30940) lt!944645))))

(assert (=> d!766645 (= (++!7555 lt!944645 lt!944655) lt!944738)))

(declare-fun b!2681727 () Bool)

(assert (=> b!2681727 (= e!1690831 lt!944655)))

(declare-fun b!2681730 () Bool)

(assert (=> b!2681730 (= e!1690830 (or (not (= lt!944655 Nil!30940)) (= lt!944738 lt!944645)))))

(declare-fun b!2681729 () Bool)

(declare-fun res!1127202 () Bool)

(assert (=> b!2681729 (=> (not res!1127202) (not e!1690830))))

(assert (=> b!2681729 (= res!1127202 (= (size!23904 lt!944738) (+ (size!23904 lt!944645) (size!23904 lt!944655))))))

(assert (= (and d!766645 c!431918) b!2681727))

(assert (= (and d!766645 (not c!431918)) b!2681728))

(assert (= (and d!766645 res!1127201) b!2681729))

(assert (= (and b!2681729 res!1127202) b!2681730))

(declare-fun m!3050143 () Bool)

(assert (=> b!2681728 m!3050143))

(declare-fun m!3050145 () Bool)

(assert (=> d!766645 m!3050145))

(assert (=> d!766645 m!3050037))

(assert (=> d!766645 m!3050129))

(declare-fun m!3050147 () Bool)

(assert (=> b!2681729 m!3050147))

(assert (=> b!2681729 m!3050041))

(assert (=> b!2681729 m!3050135))

(assert (=> b!2681535 d!766645))

(declare-fun d!766647 () Bool)

(assert (=> d!766647 (= (++!7555 (++!7555 lt!944638 lt!944645) lt!944655) (++!7555 lt!944638 (++!7555 lt!944645 lt!944655)))))

(declare-fun lt!944741 () Unit!45087)

(declare-fun choose!15884 (List!31040 List!31040 List!31040) Unit!45087)

(assert (=> d!766647 (= lt!944741 (choose!15884 lt!944638 lt!944645 lt!944655))))

(assert (=> d!766647 (= (lemmaConcatAssociativity!1529 lt!944638 lt!944645 lt!944655) lt!944741)))

(declare-fun bs!480183 () Bool)

(assert (= bs!480183 d!766647))

(assert (=> bs!480183 m!3049787))

(assert (=> bs!480183 m!3049787))

(assert (=> bs!480183 m!3049789))

(assert (=> bs!480183 m!3049813))

(assert (=> bs!480183 m!3049813))

(assert (=> bs!480183 m!3049823))

(declare-fun m!3050149 () Bool)

(assert (=> bs!480183 m!3050149))

(assert (=> b!2681535 d!766647))

(declare-fun b!2681745 () Bool)

(declare-fun e!1690840 () tuple2!30416)

(assert (=> b!2681745 (= e!1690840 (tuple2!30417 lt!944653 (_2!17772 (v!32751 lt!944658))))))

(declare-fun e!1690841 () Bool)

(declare-fun lt!944808 () tuple2!30416)

(declare-fun b!2681746 () Bool)

(assert (=> b!2681746 (= e!1690841 (= (list!11679 (_2!17771 lt!944808)) (list!11679 (_2!17771 (lexRec!587 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2681748 () Bool)

(declare-fun e!1690843 () tuple2!30416)

(declare-fun lt!944811 () BalanceConc!18972)

(assert (=> b!2681748 (= e!1690843 (tuple2!30417 (BalanceConc!18975 Empty!9680) lt!944811))))

(declare-fun lt!944798 () Option!6113)

(declare-fun b!2681749 () Bool)

(assert (=> b!2681749 (= e!1690840 (lexTailRec!13 thiss!12257 rules!1381 totalInput!354 (++!7556 lt!944637 (charsOf!2976 (_1!17772 (v!32751 lt!944798)))) (_2!17772 (v!32751 lt!944798)) (append!750 lt!944653 (_1!17772 (v!32751 lt!944798)))))))

(declare-fun lt!944806 () tuple2!30416)

(assert (=> b!2681749 (= lt!944806 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944798))))))

(declare-fun lt!944815 () List!31038)

(assert (=> b!2681749 (= lt!944815 (list!11679 lt!944637))))

(declare-fun lt!944802 () List!31038)

(assert (=> b!2681749 (= lt!944802 (list!11679 (charsOf!2976 (_1!17772 (v!32751 lt!944798)))))))

(declare-fun lt!944810 () List!31038)

(assert (=> b!2681749 (= lt!944810 (list!11679 (_2!17772 (v!32751 lt!944798))))))

(declare-fun lt!944793 () Unit!45087)

(assert (=> b!2681749 (= lt!944793 (lemmaConcatAssociativity!1528 lt!944815 lt!944802 lt!944810))))

(assert (=> b!2681749 (= (++!7554 (++!7554 lt!944815 lt!944802) lt!944810) (++!7554 lt!944815 (++!7554 lt!944802 lt!944810)))))

(declare-fun lt!944792 () Unit!45087)

(assert (=> b!2681749 (= lt!944792 lt!944793)))

(declare-fun lt!944816 () Option!6113)

(assert (=> b!2681749 (= lt!944816 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944658))))))

(declare-fun c!431926 () Bool)

(assert (=> b!2681749 (= c!431926 ((_ is Some!6112) lt!944816))))

(declare-fun e!1690842 () tuple2!30416)

(assert (=> b!2681749 (= (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944658))) e!1690842)))

(declare-fun lt!944801 () Unit!45087)

(declare-fun Unit!45089 () Unit!45087)

(assert (=> b!2681749 (= lt!944801 Unit!45089)))

(declare-fun lt!944796 () List!31040)

(assert (=> b!2681749 (= lt!944796 (list!11680 lt!944653))))

(declare-fun lt!944799 () List!31040)

(assert (=> b!2681749 (= lt!944799 (Cons!30940 (_1!17772 (v!32751 lt!944798)) Nil!30940))))

(declare-fun lt!944794 () List!31040)

(assert (=> b!2681749 (= lt!944794 (list!11680 (_1!17771 lt!944806)))))

(declare-fun lt!944804 () Unit!45087)

(assert (=> b!2681749 (= lt!944804 (lemmaConcatAssociativity!1529 lt!944796 lt!944799 lt!944794))))

(assert (=> b!2681749 (= (++!7555 (++!7555 lt!944796 lt!944799) lt!944794) (++!7555 lt!944796 (++!7555 lt!944799 lt!944794)))))

(declare-fun lt!944807 () Unit!45087)

(assert (=> b!2681749 (= lt!944807 lt!944804)))

(declare-fun lt!944812 () List!31038)

(assert (=> b!2681749 (= lt!944812 (++!7554 (list!11679 lt!944637) (list!11679 (charsOf!2976 (_1!17772 (v!32751 lt!944798))))))))

(declare-fun lt!944813 () List!31038)

(assert (=> b!2681749 (= lt!944813 (list!11679 (_2!17772 (v!32751 lt!944798))))))

(declare-fun lt!944803 () List!31040)

(assert (=> b!2681749 (= lt!944803 (list!11680 (append!750 lt!944653 (_1!17772 (v!32751 lt!944798)))))))

(declare-fun lt!944797 () Unit!45087)

(assert (=> b!2681749 (= lt!944797 (lemmaLexThenLexPrefix!395 thiss!12257 rules!1381 lt!944812 lt!944813 lt!944803 (list!11680 (_1!17771 lt!944806)) (list!11679 (_2!17771 lt!944806))))))

(assert (=> b!2681749 (= (lexList!1182 thiss!12257 rules!1381 lt!944812) (tuple2!30421 lt!944803 Nil!30938))))

(declare-fun lt!944800 () Unit!45087)

(assert (=> b!2681749 (= lt!944800 lt!944797)))

(assert (=> b!2681749 (= lt!944811 (++!7556 lt!944637 (charsOf!2976 (_1!17772 (v!32751 lt!944798)))))))

(declare-fun lt!944795 () Option!6113)

(assert (=> b!2681749 (= lt!944795 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 lt!944811))))

(declare-fun c!431927 () Bool)

(assert (=> b!2681749 (= c!431927 ((_ is Some!6112) lt!944795))))

(assert (=> b!2681749 (= (lexRec!587 thiss!12257 rules!1381 (++!7556 lt!944637 (charsOf!2976 (_1!17772 (v!32751 lt!944798))))) e!1690843)))

(declare-fun lt!944814 () Unit!45087)

(declare-fun Unit!45090 () Unit!45087)

(assert (=> b!2681749 (= lt!944814 Unit!45090)))

(declare-fun b!2681750 () Bool)

(assert (=> b!2681750 (= e!1690842 (tuple2!30417 (BalanceConc!18975 Empty!9680) (_2!17772 (v!32751 lt!944658))))))

(declare-fun b!2681751 () Bool)

(declare-fun lt!944809 () tuple2!30416)

(assert (=> b!2681751 (= lt!944809 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944795))))))

(assert (=> b!2681751 (= e!1690843 (tuple2!30417 (prepend!1057 (_1!17771 lt!944809) (_1!17772 (v!32751 lt!944795))) (_2!17771 lt!944809)))))

(declare-fun d!766649 () Bool)

(assert (=> d!766649 e!1690841))

(declare-fun res!1127205 () Bool)

(assert (=> d!766649 (=> (not res!1127205) (not e!1690841))))

(assert (=> d!766649 (= res!1127205 (= (list!11680 (_1!17771 lt!944808)) (list!11680 (_1!17771 (lexRec!587 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!766649 (= lt!944808 e!1690840)))

(declare-fun c!431925 () Bool)

(assert (=> d!766649 (= c!431925 ((_ is Some!6112) lt!944798))))

(assert (=> d!766649 (= lt!944798 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944658))))))

(assert (=> d!766649 (= (lexTailRec!13 thiss!12257 rules!1381 totalInput!354 lt!944637 (_2!17772 (v!32751 lt!944658)) lt!944653) lt!944808)))

(declare-fun lt!944805 () tuple2!30416)

(declare-fun b!2681747 () Bool)

(assert (=> b!2681747 (= lt!944805 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944816))))))

(assert (=> b!2681747 (= e!1690842 (tuple2!30417 (prepend!1057 (_1!17771 lt!944805) (_1!17772 (v!32751 lt!944816))) (_2!17771 lt!944805)))))

(assert (= (and d!766649 c!431925) b!2681749))

(assert (= (and d!766649 (not c!431925)) b!2681745))

(assert (= (and b!2681749 c!431926) b!2681747))

(assert (= (and b!2681749 (not c!431926)) b!2681750))

(assert (= (and b!2681749 c!431927) b!2681751))

(assert (= (and b!2681749 (not c!431927)) b!2681748))

(assert (= (and d!766649 res!1127205) b!2681746))

(declare-fun m!3050151 () Bool)

(assert (=> b!2681746 m!3050151))

(assert (=> b!2681746 m!3049869))

(declare-fun m!3050153 () Bool)

(assert (=> b!2681746 m!3050153))

(declare-fun m!3050155 () Bool)

(assert (=> b!2681751 m!3050155))

(declare-fun m!3050157 () Bool)

(assert (=> b!2681751 m!3050157))

(declare-fun m!3050159 () Bool)

(assert (=> d!766649 m!3050159))

(assert (=> d!766649 m!3049869))

(declare-fun m!3050161 () Bool)

(assert (=> d!766649 m!3050161))

(assert (=> d!766649 m!3049995))

(declare-fun m!3050163 () Bool)

(assert (=> b!2681747 m!3050163))

(declare-fun m!3050165 () Bool)

(assert (=> b!2681747 m!3050165))

(declare-fun m!3050167 () Bool)

(assert (=> b!2681749 m!3050167))

(declare-fun m!3050169 () Bool)

(assert (=> b!2681749 m!3050169))

(declare-fun m!3050171 () Bool)

(assert (=> b!2681749 m!3050171))

(declare-fun m!3050173 () Bool)

(assert (=> b!2681749 m!3050173))

(assert (=> b!2681749 m!3049825))

(declare-fun m!3050175 () Bool)

(assert (=> b!2681749 m!3050175))

(declare-fun m!3050177 () Bool)

(assert (=> b!2681749 m!3050177))

(declare-fun m!3050179 () Bool)

(assert (=> b!2681749 m!3050179))

(declare-fun m!3050181 () Bool)

(assert (=> b!2681749 m!3050181))

(declare-fun m!3050183 () Bool)

(assert (=> b!2681749 m!3050183))

(declare-fun m!3050185 () Bool)

(assert (=> b!2681749 m!3050185))

(declare-fun m!3050187 () Bool)

(assert (=> b!2681749 m!3050187))

(declare-fun m!3050189 () Bool)

(assert (=> b!2681749 m!3050189))

(declare-fun m!3050191 () Bool)

(assert (=> b!2681749 m!3050191))

(declare-fun m!3050193 () Bool)

(assert (=> b!2681749 m!3050193))

(assert (=> b!2681749 m!3050171))

(declare-fun m!3050195 () Bool)

(assert (=> b!2681749 m!3050195))

(assert (=> b!2681749 m!3050011))

(assert (=> b!2681749 m!3050195))

(declare-fun m!3050197 () Bool)

(assert (=> b!2681749 m!3050197))

(assert (=> b!2681749 m!3050011))

(assert (=> b!2681749 m!3050185))

(declare-fun m!3050199 () Bool)

(assert (=> b!2681749 m!3050199))

(declare-fun m!3050201 () Bool)

(assert (=> b!2681749 m!3050201))

(assert (=> b!2681749 m!3050167))

(declare-fun m!3050203 () Bool)

(assert (=> b!2681749 m!3050203))

(assert (=> b!2681749 m!3050187))

(declare-fun m!3050205 () Bool)

(assert (=> b!2681749 m!3050205))

(declare-fun m!3050207 () Bool)

(assert (=> b!2681749 m!3050207))

(assert (=> b!2681749 m!3050171))

(assert (=> b!2681749 m!3050173))

(declare-fun m!3050209 () Bool)

(assert (=> b!2681749 m!3050209))

(assert (=> b!2681749 m!3049995))

(assert (=> b!2681749 m!3050205))

(assert (=> b!2681749 m!3049829))

(assert (=> b!2681749 m!3050183))

(declare-fun m!3050211 () Bool)

(assert (=> b!2681749 m!3050211))

(assert (=> b!2681749 m!3050173))

(assert (=> b!2681749 m!3050185))

(declare-fun m!3050213 () Bool)

(assert (=> b!2681749 m!3050213))

(assert (=> b!2681749 m!3050179))

(assert (=> b!2681749 m!3050189))

(declare-fun m!3050215 () Bool)

(assert (=> b!2681749 m!3050215))

(assert (=> b!2681535 d!766649))

(declare-fun d!766651 () Bool)

(assert (=> d!766651 (= (isEmpty!17677 (list!11679 (_2!17771 lt!944659))) ((_ is Nil!30938) (list!11679 (_2!17771 lt!944659))))))

(assert (=> b!2681534 d!766651))

(declare-fun d!766653 () Bool)

(assert (=> d!766653 (= (list!11679 (_2!17771 lt!944659)) (list!11682 (c!431877 (_2!17771 lt!944659))))))

(declare-fun bs!480184 () Bool)

(assert (= bs!480184 d!766653))

(declare-fun m!3050217 () Bool)

(assert (=> bs!480184 m!3050217))

(assert (=> b!2681534 d!766653))

(declare-fun d!766655 () Bool)

(declare-fun e!1690846 () Bool)

(assert (=> d!766655 e!1690846))

(declare-fun res!1127208 () Bool)

(assert (=> d!766655 (=> (not res!1127208) (not e!1690846))))

(declare-fun prepend!1058 (Conc!9680 Token!8916) Conc!9680)

(assert (=> d!766655 (= res!1127208 (isBalanced!2929 (prepend!1058 (c!431878 (_1!17771 lt!944643)) (_1!17772 (v!32751 lt!944658)))))))

(declare-fun lt!944819 () BalanceConc!18974)

(assert (=> d!766655 (= lt!944819 (BalanceConc!18975 (prepend!1058 (c!431878 (_1!17771 lt!944643)) (_1!17772 (v!32751 lt!944658)))))))

(assert (=> d!766655 (= (prepend!1057 (_1!17771 lt!944643) (_1!17772 (v!32751 lt!944658))) lt!944819)))

(declare-fun b!2681754 () Bool)

(assert (=> b!2681754 (= e!1690846 (= (list!11680 lt!944819) (Cons!30940 (_1!17772 (v!32751 lt!944658)) (list!11680 (_1!17771 lt!944643)))))))

(assert (= (and d!766655 res!1127208) b!2681754))

(declare-fun m!3050219 () Bool)

(assert (=> d!766655 m!3050219))

(assert (=> d!766655 m!3050219))

(declare-fun m!3050221 () Bool)

(assert (=> d!766655 m!3050221))

(declare-fun m!3050223 () Bool)

(assert (=> b!2681754 m!3050223))

(assert (=> b!2681754 m!3049785))

(assert (=> b!2681545 d!766655))

(declare-fun d!766657 () Bool)

(declare-fun validCacheMapDown!349 (MutableMap!3389) Bool)

(assert (=> d!766657 (= (valid!2696 cacheDown!499) (validCacheMapDown!349 (cache!3532 cacheDown!499)))))

(declare-fun bs!480185 () Bool)

(assert (= bs!480185 d!766657))

(declare-fun m!3050225 () Bool)

(assert (=> bs!480185 m!3050225))

(assert (=> b!2681565 d!766657))

(declare-fun d!766659 () Bool)

(assert (=> d!766659 (= (list!11680 acc!348) (list!11681 (c!431878 acc!348)))))

(declare-fun bs!480186 () Bool)

(assert (= bs!480186 d!766659))

(declare-fun m!3050227 () Bool)

(assert (=> bs!480186 m!3050227))

(assert (=> b!2681536 d!766659))

(declare-fun d!766661 () Bool)

(assert (=> d!766661 (= (list!11680 (_1!17771 lt!944659)) (list!11681 (c!431878 (_1!17771 lt!944659))))))

(declare-fun bs!480187 () Bool)

(assert (= bs!480187 d!766661))

(declare-fun m!3050229 () Bool)

(assert (=> bs!480187 m!3050229))

(assert (=> b!2681536 d!766661))

(declare-fun b!2681755 () Bool)

(declare-fun e!1690848 () Bool)

(declare-fun e!1690849 () Bool)

(assert (=> b!2681755 (= e!1690848 e!1690849)))

(declare-fun res!1127209 () Bool)

(declare-fun lt!944822 () tuple2!30416)

(assert (=> b!2681755 (= res!1127209 (< (size!23901 (_2!17771 lt!944822)) (size!23901 treated!26)))))

(assert (=> b!2681755 (=> (not res!1127209) (not e!1690849))))

(declare-fun b!2681756 () Bool)

(declare-fun e!1690847 () tuple2!30416)

(assert (=> b!2681756 (= e!1690847 (tuple2!30417 (BalanceConc!18975 Empty!9680) treated!26))))

(declare-fun b!2681757 () Bool)

(assert (=> b!2681757 (= e!1690849 (not (isEmpty!17679 (_1!17771 lt!944822))))))

(declare-fun b!2681758 () Bool)

(declare-fun res!1127210 () Bool)

(declare-fun e!1690850 () Bool)

(assert (=> b!2681758 (=> (not res!1127210) (not e!1690850))))

(assert (=> b!2681758 (= res!1127210 (= (list!11680 (_1!17771 lt!944822)) (_1!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 treated!26)))))))

(declare-fun b!2681759 () Bool)

(declare-fun lt!944820 () tuple2!30416)

(declare-fun lt!944821 () Option!6113)

(assert (=> b!2681759 (= e!1690847 (tuple2!30417 (prepend!1057 (_1!17771 lt!944820) (_1!17772 (v!32751 lt!944821))) (_2!17771 lt!944820)))))

(assert (=> b!2681759 (= lt!944820 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944821))))))

(declare-fun d!766663 () Bool)

(assert (=> d!766663 e!1690850))

(declare-fun res!1127211 () Bool)

(assert (=> d!766663 (=> (not res!1127211) (not e!1690850))))

(assert (=> d!766663 (= res!1127211 e!1690848)))

(declare-fun c!431929 () Bool)

(assert (=> d!766663 (= c!431929 (> (size!23902 (_1!17771 lt!944822)) 0))))

(assert (=> d!766663 (= lt!944822 e!1690847)))

(declare-fun c!431930 () Bool)

(assert (=> d!766663 (= c!431930 ((_ is Some!6112) lt!944821))))

(assert (=> d!766663 (= lt!944821 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 treated!26))))

(assert (=> d!766663 (= (lexRec!587 thiss!12257 rules!1381 treated!26) lt!944822)))

(declare-fun b!2681760 () Bool)

(assert (=> b!2681760 (= e!1690850 (= (list!11679 (_2!17771 lt!944822)) (_2!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 treated!26)))))))

(declare-fun b!2681761 () Bool)

(assert (=> b!2681761 (= e!1690848 (= (list!11679 (_2!17771 lt!944822)) (list!11679 treated!26)))))

(assert (= (and d!766663 c!431930) b!2681759))

(assert (= (and d!766663 (not c!431930)) b!2681756))

(assert (= (and d!766663 c!431929) b!2681755))

(assert (= (and d!766663 (not c!431929)) b!2681761))

(assert (= (and b!2681755 res!1127209) b!2681757))

(assert (= (and d!766663 res!1127211) b!2681758))

(assert (= (and b!2681758 res!1127210) b!2681760))

(declare-fun m!3050231 () Bool)

(assert (=> b!2681761 m!3050231))

(assert (=> b!2681761 m!3049775))

(declare-fun m!3050233 () Bool)

(assert (=> b!2681755 m!3050233))

(declare-fun m!3050235 () Bool)

(assert (=> b!2681755 m!3050235))

(declare-fun m!3050237 () Bool)

(assert (=> d!766663 m!3050237))

(declare-fun m!3050239 () Bool)

(assert (=> d!766663 m!3050239))

(declare-fun m!3050241 () Bool)

(assert (=> b!2681759 m!3050241))

(declare-fun m!3050243 () Bool)

(assert (=> b!2681759 m!3050243))

(declare-fun m!3050245 () Bool)

(assert (=> b!2681758 m!3050245))

(assert (=> b!2681758 m!3049775))

(assert (=> b!2681758 m!3049775))

(declare-fun m!3050247 () Bool)

(assert (=> b!2681758 m!3050247))

(declare-fun m!3050249 () Bool)

(assert (=> b!2681757 m!3050249))

(assert (=> b!2681760 m!3050231))

(assert (=> b!2681760 m!3049775))

(assert (=> b!2681760 m!3049775))

(assert (=> b!2681760 m!3050247))

(assert (=> b!2681536 d!766663))

(declare-fun d!766665 () Bool)

(assert (=> d!766665 (= (array_inv!3961 (_keys!3782 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) (bvsge (size!23897 (_keys!3782 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2681546 d!766665))

(declare-fun d!766667 () Bool)

(assert (=> d!766667 (= (array_inv!3963 (_values!3763 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) (bvsge (size!23898 (_values!3763 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486))))))) #b00000000000000000000000000000000))))

(assert (=> b!2681546 d!766667))

(declare-fun d!766669 () Bool)

(declare-fun c!431933 () Bool)

(assert (=> d!766669 (= c!431933 ((_ is Node!9679) (c!431877 totalInput!354)))))

(declare-fun e!1690855 () Bool)

(assert (=> d!766669 (= (inv!41959 (c!431877 totalInput!354)) e!1690855)))

(declare-fun b!2681768 () Bool)

(declare-fun inv!41966 (Conc!9679) Bool)

(assert (=> b!2681768 (= e!1690855 (inv!41966 (c!431877 totalInput!354)))))

(declare-fun b!2681769 () Bool)

(declare-fun e!1690856 () Bool)

(assert (=> b!2681769 (= e!1690855 e!1690856)))

(declare-fun res!1127214 () Bool)

(assert (=> b!2681769 (= res!1127214 (not ((_ is Leaf!14786) (c!431877 totalInput!354))))))

(assert (=> b!2681769 (=> res!1127214 e!1690856)))

(declare-fun b!2681770 () Bool)

(declare-fun inv!41967 (Conc!9679) Bool)

(assert (=> b!2681770 (= e!1690856 (inv!41967 (c!431877 totalInput!354)))))

(assert (= (and d!766669 c!431933) b!2681768))

(assert (= (and d!766669 (not c!431933)) b!2681769))

(assert (= (and b!2681769 (not res!1127214)) b!2681770))

(declare-fun m!3050251 () Bool)

(assert (=> b!2681768 m!3050251))

(declare-fun m!3050253 () Bool)

(assert (=> b!2681770 m!3050253))

(assert (=> b!2681543 d!766669))

(declare-fun d!766671 () Bool)

(assert (=> d!766671 (= (list!11679 totalInput!354) (list!11682 (c!431877 totalInput!354)))))

(declare-fun bs!480188 () Bool)

(assert (= bs!480188 d!766671))

(declare-fun m!3050255 () Bool)

(assert (=> bs!480188 m!3050255))

(assert (=> b!2681542 d!766671))

(declare-fun b!2681771 () Bool)

(declare-fun e!1690857 () List!31038)

(assert (=> b!2681771 (= e!1690857 (list!11679 input!780))))

(declare-fun b!2681772 () Bool)

(assert (=> b!2681772 (= e!1690857 (Cons!30938 (h!36358 lt!944654) (++!7554 (t!224539 lt!944654) (list!11679 input!780))))))

(declare-fun b!2681773 () Bool)

(declare-fun res!1127216 () Bool)

(declare-fun e!1690858 () Bool)

(assert (=> b!2681773 (=> (not res!1127216) (not e!1690858))))

(declare-fun lt!944823 () List!31038)

(assert (=> b!2681773 (= res!1127216 (= (size!23903 lt!944823) (+ (size!23903 lt!944654) (size!23903 (list!11679 input!780)))))))

(declare-fun d!766673 () Bool)

(assert (=> d!766673 e!1690858))

(declare-fun res!1127215 () Bool)

(assert (=> d!766673 (=> (not res!1127215) (not e!1690858))))

(assert (=> d!766673 (= res!1127215 (= (content!4390 lt!944823) ((_ map or) (content!4390 lt!944654) (content!4390 (list!11679 input!780)))))))

(assert (=> d!766673 (= lt!944823 e!1690857)))

(declare-fun c!431934 () Bool)

(assert (=> d!766673 (= c!431934 ((_ is Nil!30938) lt!944654))))

(assert (=> d!766673 (= (++!7554 lt!944654 (list!11679 input!780)) lt!944823)))

(declare-fun b!2681774 () Bool)

(assert (=> b!2681774 (= e!1690858 (or (not (= (list!11679 input!780) Nil!30938)) (= lt!944823 lt!944654)))))

(assert (= (and d!766673 c!431934) b!2681771))

(assert (= (and d!766673 (not c!431934)) b!2681772))

(assert (= (and d!766673 res!1127215) b!2681773))

(assert (= (and b!2681773 res!1127216) b!2681774))

(assert (=> b!2681772 m!3049771))

(declare-fun m!3050257 () Bool)

(assert (=> b!2681772 m!3050257))

(declare-fun m!3050259 () Bool)

(assert (=> b!2681773 m!3050259))

(assert (=> b!2681773 m!3050055))

(assert (=> b!2681773 m!3049771))

(declare-fun m!3050261 () Bool)

(assert (=> b!2681773 m!3050261))

(declare-fun m!3050263 () Bool)

(assert (=> d!766673 m!3050263))

(assert (=> d!766673 m!3050059))

(assert (=> d!766673 m!3049771))

(declare-fun m!3050265 () Bool)

(assert (=> d!766673 m!3050265))

(assert (=> b!2681542 d!766673))

(declare-fun d!766675 () Bool)

(assert (=> d!766675 (= (list!11679 input!780) (list!11682 (c!431877 input!780)))))

(declare-fun bs!480189 () Bool)

(assert (= bs!480189 d!766675))

(declare-fun m!3050267 () Bool)

(assert (=> bs!480189 m!3050267))

(assert (=> b!2681542 d!766675))

(declare-fun d!766677 () Bool)

(assert (=> d!766677 (= (list!11679 treated!26) (list!11682 (c!431877 treated!26)))))

(declare-fun bs!480190 () Bool)

(assert (= bs!480190 d!766677))

(declare-fun m!3050269 () Bool)

(assert (=> bs!480190 m!3050269))

(assert (=> b!2681542 d!766677))

(declare-fun d!766679 () Bool)

(declare-fun c!431935 () Bool)

(assert (=> d!766679 (= c!431935 ((_ is Node!9679) (c!431877 treated!26)))))

(declare-fun e!1690859 () Bool)

(assert (=> d!766679 (= (inv!41959 (c!431877 treated!26)) e!1690859)))

(declare-fun b!2681775 () Bool)

(assert (=> b!2681775 (= e!1690859 (inv!41966 (c!431877 treated!26)))))

(declare-fun b!2681776 () Bool)

(declare-fun e!1690860 () Bool)

(assert (=> b!2681776 (= e!1690859 e!1690860)))

(declare-fun res!1127217 () Bool)

(assert (=> b!2681776 (= res!1127217 (not ((_ is Leaf!14786) (c!431877 treated!26))))))

(assert (=> b!2681776 (=> res!1127217 e!1690860)))

(declare-fun b!2681777 () Bool)

(assert (=> b!2681777 (= e!1690860 (inv!41967 (c!431877 treated!26)))))

(assert (= (and d!766679 c!431935) b!2681775))

(assert (= (and d!766679 (not c!431935)) b!2681776))

(assert (= (and b!2681776 (not res!1127217)) b!2681777))

(declare-fun m!3050271 () Bool)

(assert (=> b!2681775 m!3050271))

(declare-fun m!3050273 () Bool)

(assert (=> b!2681777 m!3050273))

(assert (=> b!2681553 d!766679))

(declare-fun d!766681 () Bool)

(assert (=> d!766681 (= (inv!41962 input!780) (isBalanced!2930 (c!431877 input!780)))))

(declare-fun bs!480191 () Bool)

(assert (= bs!480191 d!766681))

(declare-fun m!3050275 () Bool)

(assert (=> bs!480191 m!3050275))

(assert (=> start!261132 d!766681))

(declare-fun d!766683 () Bool)

(assert (=> d!766683 (= (inv!41962 treated!26) (isBalanced!2930 (c!431877 treated!26)))))

(declare-fun bs!480192 () Bool)

(assert (= bs!480192 d!766683))

(declare-fun m!3050277 () Bool)

(assert (=> bs!480192 m!3050277))

(assert (=> start!261132 d!766683))

(declare-fun d!766685 () Bool)

(declare-fun res!1127220 () Bool)

(declare-fun e!1690863 () Bool)

(assert (=> d!766685 (=> (not res!1127220) (not e!1690863))))

(assert (=> d!766685 (= res!1127220 ((_ is HashMap!3388) (cache!3531 cacheUp!486)))))

(assert (=> d!766685 (= (inv!41963 cacheUp!486) e!1690863)))

(declare-fun b!2681780 () Bool)

(declare-fun validCacheMapUp!318 (MutableMap!3388) Bool)

(assert (=> b!2681780 (= e!1690863 (validCacheMapUp!318 (cache!3531 cacheUp!486)))))

(assert (= (and d!766685 res!1127220) b!2681780))

(declare-fun m!3050279 () Bool)

(assert (=> b!2681780 m!3050279))

(assert (=> start!261132 d!766685))

(declare-fun d!766687 () Bool)

(declare-fun res!1127223 () Bool)

(declare-fun e!1690866 () Bool)

(assert (=> d!766687 (=> (not res!1127223) (not e!1690866))))

(assert (=> d!766687 (= res!1127223 ((_ is HashMap!3389) (cache!3532 cacheDown!499)))))

(assert (=> d!766687 (= (inv!41965 cacheDown!499) e!1690866)))

(declare-fun b!2681783 () Bool)

(assert (=> b!2681783 (= e!1690866 (validCacheMapDown!349 (cache!3532 cacheDown!499)))))

(assert (= (and d!766687 res!1127223) b!2681783))

(assert (=> b!2681783 m!3050225))

(assert (=> start!261132 d!766687))

(declare-fun d!766689 () Bool)

(assert (=> d!766689 (= (inv!41964 acc!348) (isBalanced!2929 (c!431878 acc!348)))))

(declare-fun bs!480193 () Bool)

(assert (= bs!480193 d!766689))

(declare-fun m!3050281 () Bool)

(assert (=> bs!480193 m!3050281))

(assert (=> start!261132 d!766689))

(declare-fun d!766691 () Bool)

(assert (=> d!766691 (= (inv!41962 totalInput!354) (isBalanced!2930 (c!431877 totalInput!354)))))

(declare-fun bs!480194 () Bool)

(assert (= bs!480194 d!766691))

(declare-fun m!3050283 () Bool)

(assert (=> bs!480194 m!3050283))

(assert (=> start!261132 d!766691))

(declare-fun d!766693 () Bool)

(assert (=> d!766693 (= (list!11679 (_2!17771 lt!944648)) (list!11682 (c!431877 (_2!17771 lt!944648))))))

(declare-fun bs!480195 () Bool)

(assert (= bs!480195 d!766693))

(declare-fun m!3050285 () Bool)

(assert (=> bs!480195 m!3050285))

(assert (=> b!2681554 d!766693))

(declare-fun d!766695 () Bool)

(assert (=> d!766695 (= (list!11679 (_2!17771 lt!944644)) (list!11682 (c!431877 (_2!17771 lt!944644))))))

(declare-fun bs!480196 () Bool)

(assert (= bs!480196 d!766695))

(declare-fun m!3050287 () Bool)

(assert (=> bs!480196 m!3050287))

(assert (=> b!2681554 d!766695))

(declare-fun d!766697 () Bool)

(declare-fun c!431936 () Bool)

(assert (=> d!766697 (= c!431936 ((_ is Node!9679) (c!431877 input!780)))))

(declare-fun e!1690867 () Bool)

(assert (=> d!766697 (= (inv!41959 (c!431877 input!780)) e!1690867)))

(declare-fun b!2681784 () Bool)

(assert (=> b!2681784 (= e!1690867 (inv!41966 (c!431877 input!780)))))

(declare-fun b!2681785 () Bool)

(declare-fun e!1690868 () Bool)

(assert (=> b!2681785 (= e!1690867 e!1690868)))

(declare-fun res!1127224 () Bool)

(assert (=> b!2681785 (= res!1127224 (not ((_ is Leaf!14786) (c!431877 input!780))))))

(assert (=> b!2681785 (=> res!1127224 e!1690868)))

(declare-fun b!2681786 () Bool)

(assert (=> b!2681786 (= e!1690868 (inv!41967 (c!431877 input!780)))))

(assert (= (and d!766697 c!431936) b!2681784))

(assert (= (and d!766697 (not c!431936)) b!2681785))

(assert (= (and b!2681785 (not res!1127224)) b!2681786))

(declare-fun m!3050289 () Bool)

(assert (=> b!2681784 m!3050289))

(declare-fun m!3050291 () Bool)

(assert (=> b!2681786 m!3050291))

(assert (=> b!2681533 d!766697))

(declare-fun d!766699 () Bool)

(assert (=> d!766699 (= (array_inv!3961 (_keys!3783 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) (bvsge (size!23897 (_keys!3783 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2681540 d!766699))

(declare-fun d!766701 () Bool)

(assert (=> d!766701 (= (array_inv!3962 (_values!3764 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) (bvsge (size!23900 (_values!3764 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499))))))) #b00000000000000000000000000000000))))

(assert (=> b!2681540 d!766701))

(declare-fun b!2681797 () Bool)

(declare-fun e!1690877 () Bool)

(declare-fun e!1690876 () Bool)

(assert (=> b!2681797 (= e!1690877 e!1690876)))

(declare-fun res!1127232 () Bool)

(declare-fun lt!944826 () tuple2!30416)

(assert (=> b!2681797 (= res!1127232 (< (size!23901 (_2!17771 lt!944826)) (size!23901 input!780)))))

(assert (=> b!2681797 (=> (not res!1127232) (not e!1690876))))

(declare-fun e!1690875 () Bool)

(declare-fun b!2681798 () Bool)

(assert (=> b!2681798 (= e!1690875 (= (list!11679 (_2!17771 lt!944826)) (_2!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 input!780)))))))

(declare-fun d!766703 () Bool)

(assert (=> d!766703 e!1690875))

(declare-fun res!1127231 () Bool)

(assert (=> d!766703 (=> (not res!1127231) (not e!1690875))))

(assert (=> d!766703 (= res!1127231 e!1690877)))

(declare-fun c!431939 () Bool)

(assert (=> d!766703 (= c!431939 (> (size!23902 (_1!17771 lt!944826)) 0))))

(assert (=> d!766703 (= lt!944826 (lexTailRecV2!855 thiss!12257 rules!1381 input!780 (BalanceConc!18973 Empty!9679) input!780 (BalanceConc!18975 Empty!9680)))))

(assert (=> d!766703 (= (lex!1943 thiss!12257 rules!1381 input!780) lt!944826)))

(declare-fun b!2681799 () Bool)

(assert (=> b!2681799 (= e!1690877 (= (_2!17771 lt!944826) input!780))))

(declare-fun b!2681800 () Bool)

(assert (=> b!2681800 (= e!1690876 (not (isEmpty!17679 (_1!17771 lt!944826))))))

(declare-fun b!2681801 () Bool)

(declare-fun res!1127233 () Bool)

(assert (=> b!2681801 (=> (not res!1127233) (not e!1690875))))

(assert (=> b!2681801 (= res!1127233 (= (list!11680 (_1!17771 lt!944826)) (_1!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 input!780)))))))

(assert (= (and d!766703 c!431939) b!2681797))

(assert (= (and d!766703 (not c!431939)) b!2681799))

(assert (= (and b!2681797 res!1127232) b!2681800))

(assert (= (and d!766703 res!1127231) b!2681801))

(assert (= (and b!2681801 res!1127233) b!2681798))

(declare-fun m!3050293 () Bool)

(assert (=> b!2681800 m!3050293))

(declare-fun m!3050295 () Bool)

(assert (=> b!2681797 m!3050295))

(assert (=> b!2681797 m!3049875))

(declare-fun m!3050297 () Bool)

(assert (=> b!2681798 m!3050297))

(assert (=> b!2681798 m!3049771))

(assert (=> b!2681798 m!3049771))

(assert (=> b!2681798 m!3049885))

(declare-fun m!3050299 () Bool)

(assert (=> b!2681801 m!3050299))

(assert (=> b!2681801 m!3049771))

(assert (=> b!2681801 m!3049771))

(assert (=> b!2681801 m!3049885))

(declare-fun m!3050301 () Bool)

(assert (=> d!766703 m!3050301))

(assert (=> d!766703 m!3049757))

(assert (=> b!2681560 d!766703))

(declare-fun b!2681816 () Bool)

(declare-fun lt!944900 () tuple2!30416)

(declare-fun e!1690887 () Bool)

(assert (=> b!2681816 (= e!1690887 (= (list!11679 (_2!17771 lt!944900)) (list!11679 (_2!17771 (lexRec!587 thiss!12257 rules!1381 input!780)))))))

(declare-fun b!2681817 () Bool)

(declare-fun e!1690886 () tuple2!30416)

(assert (=> b!2681817 (= e!1690886 (tuple2!30417 (BalanceConc!18975 Empty!9680) input!780))))

(declare-fun lt!944906 () tuple2!30416)

(declare-fun lt!944897 () Option!6113)

(declare-fun b!2681818 () Bool)

(assert (=> b!2681818 (= lt!944906 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944897))))))

(declare-fun e!1690889 () tuple2!30416)

(assert (=> b!2681818 (= e!1690889 (tuple2!30417 (prepend!1057 (_1!17771 lt!944906) (_1!17772 (v!32751 lt!944897))) (_2!17771 lt!944906)))))

(declare-fun b!2681819 () Bool)

(declare-fun e!1690888 () tuple2!30416)

(assert (=> b!2681819 (= e!1690888 (tuple2!30417 (BalanceConc!18975 Empty!9680) input!780))))

(declare-fun b!2681821 () Bool)

(declare-fun lt!944920 () tuple2!30416)

(declare-fun lt!944915 () Option!6113)

(assert (=> b!2681821 (= lt!944920 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944915))))))

(assert (=> b!2681821 (= e!1690888 (tuple2!30417 (prepend!1057 (_1!17771 lt!944920) (_1!17772 (v!32751 lt!944915))) (_2!17771 lt!944920)))))

(declare-fun b!2681822 () Bool)

(declare-fun lt!944923 () BalanceConc!18972)

(assert (=> b!2681822 (= e!1690889 (tuple2!30417 (BalanceConc!18975 Empty!9680) lt!944923))))

(declare-fun lt!944902 () Option!6113)

(declare-fun b!2681820 () Bool)

(declare-fun lt!944914 () BalanceConc!18972)

(assert (=> b!2681820 (= e!1690886 (lexTailRecV2!855 thiss!12257 rules!1381 input!780 lt!944914 (_2!17772 (v!32751 lt!944902)) (append!750 (BalanceConc!18975 Empty!9680) (_1!17772 (v!32751 lt!944902)))))))

(declare-fun lt!944924 () tuple2!30416)

(assert (=> b!2681820 (= lt!944924 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944902))))))

(declare-fun lt!944895 () List!31038)

(assert (=> b!2681820 (= lt!944895 (list!11679 (BalanceConc!18973 Empty!9679)))))

(declare-fun lt!944911 () List!31038)

(assert (=> b!2681820 (= lt!944911 (list!11679 (charsOf!2976 (_1!17772 (v!32751 lt!944902)))))))

(declare-fun lt!944905 () List!31038)

(assert (=> b!2681820 (= lt!944905 (list!11679 (_2!17772 (v!32751 lt!944902))))))

(declare-fun lt!944904 () Unit!45087)

(assert (=> b!2681820 (= lt!944904 (lemmaConcatAssociativity!1528 lt!944895 lt!944911 lt!944905))))

(assert (=> b!2681820 (= (++!7554 (++!7554 lt!944895 lt!944911) lt!944905) (++!7554 lt!944895 (++!7554 lt!944911 lt!944905)))))

(declare-fun lt!944918 () Unit!45087)

(assert (=> b!2681820 (= lt!944918 lt!944904)))

(assert (=> b!2681820 (= lt!944915 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 input!780))))

(declare-fun c!431947 () Bool)

(assert (=> b!2681820 (= c!431947 ((_ is Some!6112) lt!944915))))

(assert (=> b!2681820 (= (lexRec!587 thiss!12257 rules!1381 input!780) e!1690888)))

(declare-fun lt!944907 () Unit!45087)

(declare-fun Unit!45091 () Unit!45087)

(assert (=> b!2681820 (= lt!944907 Unit!45091)))

(declare-fun lt!944913 () List!31040)

(assert (=> b!2681820 (= lt!944913 (list!11680 (BalanceConc!18975 Empty!9680)))))

(declare-fun lt!944919 () List!31040)

(assert (=> b!2681820 (= lt!944919 (Cons!30940 (_1!17772 (v!32751 lt!944902)) Nil!30940))))

(declare-fun lt!944901 () List!31040)

(assert (=> b!2681820 (= lt!944901 (list!11680 (_1!17771 lt!944924)))))

(declare-fun lt!944909 () Unit!45087)

(assert (=> b!2681820 (= lt!944909 (lemmaConcatAssociativity!1529 lt!944913 lt!944919 lt!944901))))

(assert (=> b!2681820 (= (++!7555 (++!7555 lt!944913 lt!944919) lt!944901) (++!7555 lt!944913 (++!7555 lt!944919 lt!944901)))))

(declare-fun lt!944912 () Unit!45087)

(assert (=> b!2681820 (= lt!944912 lt!944909)))

(declare-fun lt!944922 () List!31038)

(assert (=> b!2681820 (= lt!944922 (++!7554 (list!11679 (BalanceConc!18973 Empty!9679)) (list!11679 (charsOf!2976 (_1!17772 (v!32751 lt!944902))))))))

(declare-fun lt!944917 () List!31038)

(assert (=> b!2681820 (= lt!944917 (list!11679 (_2!17772 (v!32751 lt!944902))))))

(declare-fun lt!944927 () List!31040)

(assert (=> b!2681820 (= lt!944927 (list!11680 (append!750 (BalanceConc!18975 Empty!9680) (_1!17772 (v!32751 lt!944902)))))))

(declare-fun lt!944896 () Unit!45087)

(assert (=> b!2681820 (= lt!944896 (lemmaLexThenLexPrefix!395 thiss!12257 rules!1381 lt!944922 lt!944917 lt!944927 (list!11680 (_1!17771 lt!944924)) (list!11679 (_2!17771 lt!944924))))))

(assert (=> b!2681820 (= (lexList!1182 thiss!12257 rules!1381 lt!944922) (tuple2!30421 lt!944927 Nil!30938))))

(declare-fun lt!944926 () Unit!45087)

(assert (=> b!2681820 (= lt!944926 lt!944896)))

(assert (=> b!2681820 (= lt!944923 (++!7556 (BalanceConc!18973 Empty!9679) (charsOf!2976 (_1!17772 (v!32751 lt!944902)))))))

(assert (=> b!2681820 (= lt!944897 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 lt!944923))))

(declare-fun c!431948 () Bool)

(assert (=> b!2681820 (= c!431948 ((_ is Some!6112) lt!944897))))

(assert (=> b!2681820 (= (lexRec!587 thiss!12257 rules!1381 (++!7556 (BalanceConc!18973 Empty!9679) (charsOf!2976 (_1!17772 (v!32751 lt!944902))))) e!1690889)))

(declare-fun lt!944921 () Unit!45087)

(declare-fun Unit!45092 () Unit!45087)

(assert (=> b!2681820 (= lt!944921 Unit!45092)))

(assert (=> b!2681820 (= lt!944914 (++!7556 (BalanceConc!18973 Empty!9679) (charsOf!2976 (_1!17772 (v!32751 lt!944902)))))))

(declare-fun lt!944908 () List!31038)

(assert (=> b!2681820 (= lt!944908 (list!11679 lt!944914))))

(declare-fun lt!944899 () List!31038)

(assert (=> b!2681820 (= lt!944899 (list!11679 (_2!17772 (v!32751 lt!944902))))))

(declare-fun lt!944916 () Unit!45087)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!508 (List!31038 List!31038) Unit!45087)

(assert (=> b!2681820 (= lt!944916 (lemmaConcatTwoListThenFSndIsSuffix!508 lt!944908 lt!944899))))

(declare-fun isSuffix!823 (List!31038 List!31038) Bool)

(assert (=> b!2681820 (isSuffix!823 lt!944899 (++!7554 lt!944908 lt!944899))))

(declare-fun lt!944903 () Unit!45087)

(assert (=> b!2681820 (= lt!944903 lt!944916)))

(declare-fun d!766705 () Bool)

(assert (=> d!766705 e!1690887))

(declare-fun res!1127236 () Bool)

(assert (=> d!766705 (=> (not res!1127236) (not e!1690887))))

(assert (=> d!766705 (= res!1127236 (= (list!11680 (_1!17771 lt!944900)) (list!11680 (_1!17771 (lexRec!587 thiss!12257 rules!1381 input!780)))))))

(assert (=> d!766705 (= lt!944900 e!1690886)))

(declare-fun c!431946 () Bool)

(assert (=> d!766705 (= c!431946 ((_ is Some!6112) lt!944902))))

(declare-fun maxPrefixZipperSequenceV2!448 (LexerInterface!4321 List!31041 BalanceConc!18972 BalanceConc!18972) Option!6113)

(assert (=> d!766705 (= lt!944902 (maxPrefixZipperSequenceV2!448 thiss!12257 rules!1381 input!780 input!780))))

(declare-fun lt!944898 () Unit!45087)

(declare-fun lt!944928 () Unit!45087)

(assert (=> d!766705 (= lt!944898 lt!944928)))

(declare-fun lt!944910 () List!31038)

(declare-fun lt!944925 () List!31038)

(assert (=> d!766705 (isSuffix!823 lt!944910 (++!7554 lt!944925 lt!944910))))

(assert (=> d!766705 (= lt!944928 (lemmaConcatTwoListThenFSndIsSuffix!508 lt!944925 lt!944910))))

(assert (=> d!766705 (= lt!944910 (list!11679 input!780))))

(assert (=> d!766705 (= lt!944925 (list!11679 (BalanceConc!18973 Empty!9679)))))

(assert (=> d!766705 (= (lexTailRecV2!855 thiss!12257 rules!1381 input!780 (BalanceConc!18973 Empty!9679) input!780 (BalanceConc!18975 Empty!9680)) lt!944900)))

(assert (= (and d!766705 c!431946) b!2681820))

(assert (= (and d!766705 (not c!431946)) b!2681817))

(assert (= (and b!2681820 c!431947) b!2681821))

(assert (= (and b!2681820 (not c!431947)) b!2681819))

(assert (= (and b!2681820 c!431948) b!2681818))

(assert (= (and b!2681820 (not c!431948)) b!2681822))

(assert (= (and d!766705 res!1127236) b!2681816))

(declare-fun m!3050303 () Bool)

(assert (=> b!2681820 m!3050303))

(declare-fun m!3050305 () Bool)

(assert (=> b!2681820 m!3050305))

(declare-fun m!3050307 () Bool)

(assert (=> b!2681820 m!3050307))

(declare-fun m!3050309 () Bool)

(assert (=> b!2681820 m!3050309))

(declare-fun m!3050311 () Bool)

(assert (=> b!2681820 m!3050311))

(declare-fun m!3050313 () Bool)

(assert (=> b!2681820 m!3050313))

(declare-fun m!3050315 () Bool)

(assert (=> b!2681820 m!3050315))

(declare-fun m!3050317 () Bool)

(assert (=> b!2681820 m!3050317))

(declare-fun m!3050319 () Bool)

(assert (=> b!2681820 m!3050319))

(declare-fun m!3050321 () Bool)

(assert (=> b!2681820 m!3050321))

(declare-fun m!3050323 () Bool)

(assert (=> b!2681820 m!3050323))

(declare-fun m!3050325 () Bool)

(assert (=> b!2681820 m!3050325))

(declare-fun m!3050327 () Bool)

(assert (=> b!2681820 m!3050327))

(declare-fun m!3050329 () Bool)

(assert (=> b!2681820 m!3050329))

(assert (=> b!2681820 m!3050311))

(declare-fun m!3050331 () Bool)

(assert (=> b!2681820 m!3050331))

(declare-fun m!3050333 () Bool)

(assert (=> b!2681820 m!3050333))

(declare-fun m!3050335 () Bool)

(assert (=> b!2681820 m!3050335))

(assert (=> b!2681820 m!3050327))

(assert (=> b!2681820 m!3050305))

(declare-fun m!3050337 () Bool)

(assert (=> b!2681820 m!3050337))

(declare-fun m!3050339 () Bool)

(assert (=> b!2681820 m!3050339))

(declare-fun m!3050341 () Bool)

(assert (=> b!2681820 m!3050341))

(assert (=> b!2681820 m!3050313))

(assert (=> b!2681820 m!3050321))

(assert (=> b!2681820 m!3050303))

(declare-fun m!3050343 () Bool)

(assert (=> b!2681820 m!3050343))

(declare-fun m!3050345 () Bool)

(assert (=> b!2681820 m!3050345))

(declare-fun m!3050347 () Bool)

(assert (=> b!2681820 m!3050347))

(assert (=> b!2681820 m!3050309))

(declare-fun m!3050349 () Bool)

(assert (=> b!2681820 m!3050349))

(declare-fun m!3050351 () Bool)

(assert (=> b!2681820 m!3050351))

(declare-fun m!3050353 () Bool)

(assert (=> b!2681820 m!3050353))

(assert (=> b!2681820 m!3050347))

(declare-fun m!3050355 () Bool)

(assert (=> b!2681820 m!3050355))

(assert (=> b!2681820 m!3050309))

(assert (=> b!2681820 m!3050323))

(assert (=> b!2681820 m!3049851))

(assert (=> b!2681820 m!3049867))

(assert (=> b!2681820 m!3050317))

(declare-fun m!3050357 () Bool)

(assert (=> b!2681820 m!3050357))

(assert (=> b!2681820 m!3050351))

(assert (=> b!2681820 m!3050343))

(assert (=> b!2681820 m!3050305))

(declare-fun m!3050359 () Bool)

(assert (=> b!2681820 m!3050359))

(declare-fun m!3050361 () Bool)

(assert (=> b!2681820 m!3050361))

(declare-fun m!3050363 () Bool)

(assert (=> b!2681820 m!3050363))

(declare-fun m!3050365 () Bool)

(assert (=> d!766705 m!3050365))

(declare-fun m!3050367 () Bool)

(assert (=> d!766705 m!3050367))

(assert (=> d!766705 m!3050365))

(declare-fun m!3050369 () Bool)

(assert (=> d!766705 m!3050369))

(declare-fun m!3050371 () Bool)

(assert (=> d!766705 m!3050371))

(declare-fun m!3050373 () Bool)

(assert (=> d!766705 m!3050373))

(assert (=> d!766705 m!3049771))

(declare-fun m!3050375 () Bool)

(assert (=> d!766705 m!3050375))

(assert (=> d!766705 m!3050321))

(assert (=> d!766705 m!3049867))

(declare-fun m!3050377 () Bool)

(assert (=> b!2681816 m!3050377))

(assert (=> b!2681816 m!3049867))

(declare-fun m!3050379 () Bool)

(assert (=> b!2681816 m!3050379))

(declare-fun m!3050381 () Bool)

(assert (=> b!2681818 m!3050381))

(declare-fun m!3050383 () Bool)

(assert (=> b!2681818 m!3050383))

(declare-fun m!3050385 () Bool)

(assert (=> b!2681821 m!3050385))

(declare-fun m!3050387 () Bool)

(assert (=> b!2681821 m!3050387))

(assert (=> b!2681560 d!766705))

(declare-fun d!766707 () Bool)

(assert (=> d!766707 true))

(declare-fun lt!944931 () Bool)

(declare-fun lambda!100103 () Int)

(declare-fun forall!6533 (List!31041 Int) Bool)

(assert (=> d!766707 (= lt!944931 (forall!6533 rules!1381 lambda!100103))))

(declare-fun e!1690895 () Bool)

(assert (=> d!766707 (= lt!944931 e!1690895)))

(declare-fun res!1127241 () Bool)

(assert (=> d!766707 (=> res!1127241 e!1690895)))

(assert (=> d!766707 (= res!1127241 (not ((_ is Cons!30941) rules!1381)))))

(assert (=> d!766707 (= (rulesValidInductive!1643 thiss!12257 rules!1381) lt!944931)))

(declare-fun b!2681827 () Bool)

(declare-fun e!1690894 () Bool)

(assert (=> b!2681827 (= e!1690895 e!1690894)))

(declare-fun res!1127242 () Bool)

(assert (=> b!2681827 (=> (not res!1127242) (not e!1690894))))

(declare-fun ruleValid!1558 (LexerInterface!4321 Rule!9250) Bool)

(assert (=> b!2681827 (= res!1127242 (ruleValid!1558 thiss!12257 (h!36361 rules!1381)))))

(declare-fun b!2681828 () Bool)

(assert (=> b!2681828 (= e!1690894 (rulesValidInductive!1643 thiss!12257 (t!224542 rules!1381)))))

(assert (= (and d!766707 (not res!1127241)) b!2681827))

(assert (= (and b!2681827 res!1127242) b!2681828))

(declare-fun m!3050389 () Bool)

(assert (=> d!766707 m!3050389))

(declare-fun m!3050391 () Bool)

(assert (=> b!2681827 m!3050391))

(declare-fun m!3050393 () Bool)

(assert (=> b!2681828 m!3050393))

(assert (=> b!2681541 d!766707))

(declare-fun b!2681831 () Bool)

(declare-fun e!1690896 () tuple2!30416)

(assert (=> b!2681831 (= e!1690896 (tuple2!30417 acc!348 input!780))))

(declare-fun e!1690897 () Bool)

(declare-fun b!2681832 () Bool)

(declare-fun lt!944948 () tuple2!30416)

(assert (=> b!2681832 (= e!1690897 (= (list!11679 (_2!17771 lt!944948)) (list!11679 (_2!17771 (lexRec!587 thiss!12257 rules!1381 totalInput!354)))))))

(declare-fun b!2681834 () Bool)

(declare-fun e!1690899 () tuple2!30416)

(declare-fun lt!944951 () BalanceConc!18972)

(assert (=> b!2681834 (= e!1690899 (tuple2!30417 (BalanceConc!18975 Empty!9680) lt!944951))))

(declare-fun b!2681835 () Bool)

(declare-fun lt!944938 () Option!6113)

(assert (=> b!2681835 (= e!1690896 (lexTailRec!13 thiss!12257 rules!1381 totalInput!354 (++!7556 treated!26 (charsOf!2976 (_1!17772 (v!32751 lt!944938)))) (_2!17772 (v!32751 lt!944938)) (append!750 acc!348 (_1!17772 (v!32751 lt!944938)))))))

(declare-fun lt!944946 () tuple2!30416)

(assert (=> b!2681835 (= lt!944946 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944938))))))

(declare-fun lt!944955 () List!31038)

(assert (=> b!2681835 (= lt!944955 (list!11679 treated!26))))

(declare-fun lt!944942 () List!31038)

(assert (=> b!2681835 (= lt!944942 (list!11679 (charsOf!2976 (_1!17772 (v!32751 lt!944938)))))))

(declare-fun lt!944950 () List!31038)

(assert (=> b!2681835 (= lt!944950 (list!11679 (_2!17772 (v!32751 lt!944938))))))

(declare-fun lt!944933 () Unit!45087)

(assert (=> b!2681835 (= lt!944933 (lemmaConcatAssociativity!1528 lt!944955 lt!944942 lt!944950))))

(assert (=> b!2681835 (= (++!7554 (++!7554 lt!944955 lt!944942) lt!944950) (++!7554 lt!944955 (++!7554 lt!944942 lt!944950)))))

(declare-fun lt!944932 () Unit!45087)

(assert (=> b!2681835 (= lt!944932 lt!944933)))

(declare-fun lt!944956 () Option!6113)

(assert (=> b!2681835 (= lt!944956 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 input!780))))

(declare-fun c!431950 () Bool)

(assert (=> b!2681835 (= c!431950 ((_ is Some!6112) lt!944956))))

(declare-fun e!1690898 () tuple2!30416)

(assert (=> b!2681835 (= (lexRec!587 thiss!12257 rules!1381 input!780) e!1690898)))

(declare-fun lt!944941 () Unit!45087)

(declare-fun Unit!45093 () Unit!45087)

(assert (=> b!2681835 (= lt!944941 Unit!45093)))

(declare-fun lt!944936 () List!31040)

(assert (=> b!2681835 (= lt!944936 (list!11680 acc!348))))

(declare-fun lt!944939 () List!31040)

(assert (=> b!2681835 (= lt!944939 (Cons!30940 (_1!17772 (v!32751 lt!944938)) Nil!30940))))

(declare-fun lt!944934 () List!31040)

(assert (=> b!2681835 (= lt!944934 (list!11680 (_1!17771 lt!944946)))))

(declare-fun lt!944944 () Unit!45087)

(assert (=> b!2681835 (= lt!944944 (lemmaConcatAssociativity!1529 lt!944936 lt!944939 lt!944934))))

(assert (=> b!2681835 (= (++!7555 (++!7555 lt!944936 lt!944939) lt!944934) (++!7555 lt!944936 (++!7555 lt!944939 lt!944934)))))

(declare-fun lt!944947 () Unit!45087)

(assert (=> b!2681835 (= lt!944947 lt!944944)))

(declare-fun lt!944952 () List!31038)

(assert (=> b!2681835 (= lt!944952 (++!7554 (list!11679 treated!26) (list!11679 (charsOf!2976 (_1!17772 (v!32751 lt!944938))))))))

(declare-fun lt!944953 () List!31038)

(assert (=> b!2681835 (= lt!944953 (list!11679 (_2!17772 (v!32751 lt!944938))))))

(declare-fun lt!944943 () List!31040)

(assert (=> b!2681835 (= lt!944943 (list!11680 (append!750 acc!348 (_1!17772 (v!32751 lt!944938)))))))

(declare-fun lt!944937 () Unit!45087)

(assert (=> b!2681835 (= lt!944937 (lemmaLexThenLexPrefix!395 thiss!12257 rules!1381 lt!944952 lt!944953 lt!944943 (list!11680 (_1!17771 lt!944946)) (list!11679 (_2!17771 lt!944946))))))

(assert (=> b!2681835 (= (lexList!1182 thiss!12257 rules!1381 lt!944952) (tuple2!30421 lt!944943 Nil!30938))))

(declare-fun lt!944940 () Unit!45087)

(assert (=> b!2681835 (= lt!944940 lt!944937)))

(assert (=> b!2681835 (= lt!944951 (++!7556 treated!26 (charsOf!2976 (_1!17772 (v!32751 lt!944938)))))))

(declare-fun lt!944935 () Option!6113)

(assert (=> b!2681835 (= lt!944935 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 lt!944951))))

(declare-fun c!431951 () Bool)

(assert (=> b!2681835 (= c!431951 ((_ is Some!6112) lt!944935))))

(assert (=> b!2681835 (= (lexRec!587 thiss!12257 rules!1381 (++!7556 treated!26 (charsOf!2976 (_1!17772 (v!32751 lt!944938))))) e!1690899)))

(declare-fun lt!944954 () Unit!45087)

(declare-fun Unit!45094 () Unit!45087)

(assert (=> b!2681835 (= lt!944954 Unit!45094)))

(declare-fun b!2681836 () Bool)

(assert (=> b!2681836 (= e!1690898 (tuple2!30417 (BalanceConc!18975 Empty!9680) input!780))))

(declare-fun b!2681837 () Bool)

(declare-fun lt!944949 () tuple2!30416)

(assert (=> b!2681837 (= lt!944949 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944935))))))

(assert (=> b!2681837 (= e!1690899 (tuple2!30417 (prepend!1057 (_1!17771 lt!944949) (_1!17772 (v!32751 lt!944935))) (_2!17771 lt!944949)))))

(declare-fun d!766709 () Bool)

(assert (=> d!766709 e!1690897))

(declare-fun res!1127243 () Bool)

(assert (=> d!766709 (=> (not res!1127243) (not e!1690897))))

(assert (=> d!766709 (= res!1127243 (= (list!11680 (_1!17771 lt!944948)) (list!11680 (_1!17771 (lexRec!587 thiss!12257 rules!1381 totalInput!354)))))))

(assert (=> d!766709 (= lt!944948 e!1690896)))

(declare-fun c!431949 () Bool)

(assert (=> d!766709 (= c!431949 ((_ is Some!6112) lt!944938))))

(assert (=> d!766709 (= lt!944938 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 input!780))))

(assert (=> d!766709 (= (lexTailRec!13 thiss!12257 rules!1381 totalInput!354 treated!26 input!780 acc!348) lt!944948)))

(declare-fun b!2681833 () Bool)

(declare-fun lt!944945 () tuple2!30416)

(assert (=> b!2681833 (= lt!944945 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944956))))))

(assert (=> b!2681833 (= e!1690898 (tuple2!30417 (prepend!1057 (_1!17771 lt!944945) (_1!17772 (v!32751 lt!944956))) (_2!17771 lt!944945)))))

(assert (= (and d!766709 c!431949) b!2681835))

(assert (= (and d!766709 (not c!431949)) b!2681831))

(assert (= (and b!2681835 c!431950) b!2681833))

(assert (= (and b!2681835 (not c!431950)) b!2681836))

(assert (= (and b!2681835 c!431951) b!2681837))

(assert (= (and b!2681835 (not c!431951)) b!2681834))

(assert (= (and d!766709 res!1127243) b!2681832))

(declare-fun m!3050395 () Bool)

(assert (=> b!2681832 m!3050395))

(assert (=> b!2681832 m!3049869))

(assert (=> b!2681832 m!3050153))

(declare-fun m!3050397 () Bool)

(assert (=> b!2681837 m!3050397))

(declare-fun m!3050399 () Bool)

(assert (=> b!2681837 m!3050399))

(declare-fun m!3050401 () Bool)

(assert (=> d!766709 m!3050401))

(assert (=> d!766709 m!3049869))

(assert (=> d!766709 m!3050161))

(assert (=> d!766709 m!3049851))

(declare-fun m!3050403 () Bool)

(assert (=> b!2681833 m!3050403))

(declare-fun m!3050405 () Bool)

(assert (=> b!2681833 m!3050405))

(declare-fun m!3050407 () Bool)

(assert (=> b!2681835 m!3050407))

(declare-fun m!3050409 () Bool)

(assert (=> b!2681835 m!3050409))

(declare-fun m!3050411 () Bool)

(assert (=> b!2681835 m!3050411))

(declare-fun m!3050413 () Bool)

(assert (=> b!2681835 m!3050413))

(assert (=> b!2681835 m!3049867))

(declare-fun m!3050415 () Bool)

(assert (=> b!2681835 m!3050415))

(declare-fun m!3050417 () Bool)

(assert (=> b!2681835 m!3050417))

(declare-fun m!3050419 () Bool)

(assert (=> b!2681835 m!3050419))

(declare-fun m!3050421 () Bool)

(assert (=> b!2681835 m!3050421))

(declare-fun m!3050423 () Bool)

(assert (=> b!2681835 m!3050423))

(declare-fun m!3050425 () Bool)

(assert (=> b!2681835 m!3050425))

(declare-fun m!3050427 () Bool)

(assert (=> b!2681835 m!3050427))

(declare-fun m!3050429 () Bool)

(assert (=> b!2681835 m!3050429))

(declare-fun m!3050431 () Bool)

(assert (=> b!2681835 m!3050431))

(declare-fun m!3050433 () Bool)

(assert (=> b!2681835 m!3050433))

(assert (=> b!2681835 m!3050411))

(declare-fun m!3050435 () Bool)

(assert (=> b!2681835 m!3050435))

(assert (=> b!2681835 m!3049775))

(assert (=> b!2681835 m!3050435))

(declare-fun m!3050437 () Bool)

(assert (=> b!2681835 m!3050437))

(assert (=> b!2681835 m!3049775))

(assert (=> b!2681835 m!3050425))

(declare-fun m!3050439 () Bool)

(assert (=> b!2681835 m!3050439))

(declare-fun m!3050441 () Bool)

(assert (=> b!2681835 m!3050441))

(assert (=> b!2681835 m!3050407))

(declare-fun m!3050443 () Bool)

(assert (=> b!2681835 m!3050443))

(assert (=> b!2681835 m!3050427))

(declare-fun m!3050445 () Bool)

(assert (=> b!2681835 m!3050445))

(declare-fun m!3050447 () Bool)

(assert (=> b!2681835 m!3050447))

(assert (=> b!2681835 m!3050411))

(assert (=> b!2681835 m!3050413))

(declare-fun m!3050449 () Bool)

(assert (=> b!2681835 m!3050449))

(assert (=> b!2681835 m!3049851))

(assert (=> b!2681835 m!3050445))

(assert (=> b!2681835 m!3049831))

(assert (=> b!2681835 m!3050423))

(declare-fun m!3050451 () Bool)

(assert (=> b!2681835 m!3050451))

(assert (=> b!2681835 m!3050413))

(assert (=> b!2681835 m!3050425))

(declare-fun m!3050453 () Bool)

(assert (=> b!2681835 m!3050453))

(assert (=> b!2681835 m!3050419))

(assert (=> b!2681835 m!3050429))

(declare-fun m!3050455 () Bool)

(assert (=> b!2681835 m!3050455))

(assert (=> b!2681541 d!766709))

(declare-fun b!2681838 () Bool)

(declare-fun e!1690902 () Option!6113)

(declare-fun lt!944960 () Option!6113)

(declare-fun lt!944957 () Option!6113)

(assert (=> b!2681838 (= e!1690902 (ite (and ((_ is None!6112) lt!944960) ((_ is None!6112) lt!944957)) None!6112 (ite ((_ is None!6112) lt!944957) lt!944960 (ite ((_ is None!6112) lt!944960) lt!944957 (ite (>= (size!23899 (_1!17772 (v!32751 lt!944960))) (size!23899 (_1!17772 (v!32751 lt!944957)))) lt!944960 lt!944957)))))))

(declare-fun call!172772 () Option!6113)

(assert (=> b!2681838 (= lt!944960 call!172772)))

(assert (=> b!2681838 (= lt!944957 (maxPrefixZipperSequence!989 thiss!12257 (t!224542 rules!1381) input!780))))

(declare-fun b!2681839 () Bool)

(declare-fun e!1690901 () Bool)

(declare-fun e!1690904 () Bool)

(assert (=> b!2681839 (= e!1690901 e!1690904)))

(declare-fun res!1127246 () Bool)

(assert (=> b!2681839 (=> (not res!1127246) (not e!1690904))))

(declare-fun lt!944958 () Option!6113)

(assert (=> b!2681839 (= res!1127246 (= (_1!17772 (get!9701 lt!944958)) (_1!17776 (get!9702 (maxPrefixZipper!449 thiss!12257 rules!1381 (list!11679 input!780))))))))

(declare-fun d!766711 () Bool)

(declare-fun e!1690905 () Bool)

(assert (=> d!766711 e!1690905))

(declare-fun res!1127244 () Bool)

(assert (=> d!766711 (=> (not res!1127244) (not e!1690905))))

(assert (=> d!766711 (= res!1127244 (= (isDefined!4851 lt!944958) (isDefined!4852 (maxPrefixZipper!449 thiss!12257 rules!1381 (list!11679 input!780)))))))

(assert (=> d!766711 (= lt!944958 e!1690902)))

(declare-fun c!431952 () Bool)

(assert (=> d!766711 (= c!431952 (and ((_ is Cons!30941) rules!1381) ((_ is Nil!30941) (t!224542 rules!1381))))))

(declare-fun lt!944963 () Unit!45087)

(declare-fun lt!944962 () Unit!45087)

(assert (=> d!766711 (= lt!944963 lt!944962)))

(declare-fun lt!944959 () List!31038)

(declare-fun lt!944961 () List!31038)

(assert (=> d!766711 (isPrefix!2462 lt!944959 lt!944961)))

(assert (=> d!766711 (= lt!944962 (lemmaIsPrefixRefl!1588 lt!944959 lt!944961))))

(assert (=> d!766711 (= lt!944961 (list!11679 input!780))))

(assert (=> d!766711 (= lt!944959 (list!11679 input!780))))

(assert (=> d!766711 (rulesValidInductive!1643 thiss!12257 rules!1381)))

(assert (=> d!766711 (= (maxPrefixZipperSequence!989 thiss!12257 rules!1381 input!780) lt!944958)))

(declare-fun b!2681840 () Bool)

(declare-fun e!1690903 () Bool)

(assert (=> b!2681840 (= e!1690905 e!1690903)))

(declare-fun res!1127247 () Bool)

(assert (=> b!2681840 (=> res!1127247 e!1690903)))

(assert (=> b!2681840 (= res!1127247 (not (isDefined!4851 lt!944958)))))

(declare-fun b!2681841 () Bool)

(assert (=> b!2681841 (= e!1690904 (= (list!11679 (_2!17772 (get!9701 lt!944958))) (_2!17776 (get!9702 (maxPrefixZipper!449 thiss!12257 rules!1381 (list!11679 input!780))))))))

(declare-fun b!2681842 () Bool)

(declare-fun res!1127248 () Bool)

(assert (=> b!2681842 (=> (not res!1127248) (not e!1690905))))

(assert (=> b!2681842 (= res!1127248 e!1690901)))

(declare-fun res!1127249 () Bool)

(assert (=> b!2681842 (=> res!1127249 e!1690901)))

(assert (=> b!2681842 (= res!1127249 (not (isDefined!4851 lt!944958)))))

(declare-fun b!2681843 () Bool)

(assert (=> b!2681843 (= e!1690902 call!172772)))

(declare-fun b!2681844 () Bool)

(declare-fun e!1690900 () Bool)

(assert (=> b!2681844 (= e!1690900 (= (list!11679 (_2!17772 (get!9701 lt!944958))) (_2!17776 (get!9702 (maxPrefix!2345 thiss!12257 rules!1381 (list!11679 input!780))))))))

(declare-fun b!2681845 () Bool)

(assert (=> b!2681845 (= e!1690903 e!1690900)))

(declare-fun res!1127245 () Bool)

(assert (=> b!2681845 (=> (not res!1127245) (not e!1690900))))

(assert (=> b!2681845 (= res!1127245 (= (_1!17772 (get!9701 lt!944958)) (_1!17776 (get!9702 (maxPrefix!2345 thiss!12257 rules!1381 (list!11679 input!780))))))))

(declare-fun bm!172767 () Bool)

(assert (=> bm!172767 (= call!172772 (maxPrefixOneRuleZipperSequence!458 thiss!12257 (h!36361 rules!1381) input!780))))

(assert (= (and d!766711 c!431952) b!2681843))

(assert (= (and d!766711 (not c!431952)) b!2681838))

(assert (= (or b!2681843 b!2681838) bm!172767))

(assert (= (and d!766711 res!1127244) b!2681842))

(assert (= (and b!2681842 (not res!1127249)) b!2681839))

(assert (= (and b!2681839 res!1127246) b!2681841))

(assert (= (and b!2681842 res!1127248) b!2681840))

(assert (= (and b!2681840 (not res!1127247)) b!2681845))

(assert (= (and b!2681845 res!1127245) b!2681844))

(declare-fun m!3050457 () Bool)

(assert (=> bm!172767 m!3050457))

(declare-fun m!3050459 () Bool)

(assert (=> b!2681845 m!3050459))

(assert (=> b!2681845 m!3049771))

(assert (=> b!2681845 m!3049771))

(declare-fun m!3050461 () Bool)

(assert (=> b!2681845 m!3050461))

(assert (=> b!2681845 m!3050461))

(declare-fun m!3050463 () Bool)

(assert (=> b!2681845 m!3050463))

(declare-fun m!3050465 () Bool)

(assert (=> b!2681841 m!3050465))

(declare-fun m!3050467 () Bool)

(assert (=> b!2681841 m!3050467))

(declare-fun m!3050469 () Bool)

(assert (=> b!2681841 m!3050469))

(assert (=> b!2681841 m!3049771))

(assert (=> b!2681841 m!3050465))

(assert (=> b!2681841 m!3050459))

(assert (=> b!2681841 m!3049771))

(declare-fun m!3050471 () Bool)

(assert (=> b!2681840 m!3050471))

(declare-fun m!3050473 () Bool)

(assert (=> d!766711 m!3050473))

(assert (=> d!766711 m!3049847))

(assert (=> d!766711 m!3050465))

(declare-fun m!3050475 () Bool)

(assert (=> d!766711 m!3050475))

(assert (=> d!766711 m!3049771))

(assert (=> d!766711 m!3049771))

(assert (=> d!766711 m!3050465))

(assert (=> d!766711 m!3050471))

(declare-fun m!3050477 () Bool)

(assert (=> d!766711 m!3050477))

(assert (=> b!2681839 m!3050459))

(assert (=> b!2681839 m!3049771))

(assert (=> b!2681839 m!3049771))

(assert (=> b!2681839 m!3050465))

(assert (=> b!2681839 m!3050465))

(assert (=> b!2681839 m!3050467))

(assert (=> b!2681842 m!3050471))

(declare-fun m!3050479 () Bool)

(assert (=> b!2681838 m!3050479))

(assert (=> b!2681844 m!3050469))

(assert (=> b!2681844 m!3050461))

(assert (=> b!2681844 m!3050463))

(assert (=> b!2681844 m!3049771))

(assert (=> b!2681844 m!3050461))

(assert (=> b!2681844 m!3050459))

(assert (=> b!2681844 m!3049771))

(assert (=> b!2681541 d!766711))

(declare-fun d!766713 () Bool)

(declare-fun c!431955 () Bool)

(assert (=> d!766713 (= c!431955 ((_ is Node!9680) (c!431878 acc!348)))))

(declare-fun e!1690910 () Bool)

(assert (=> d!766713 (= (inv!41960 (c!431878 acc!348)) e!1690910)))

(declare-fun b!2681852 () Bool)

(declare-fun inv!41968 (Conc!9680) Bool)

(assert (=> b!2681852 (= e!1690910 (inv!41968 (c!431878 acc!348)))))

(declare-fun b!2681853 () Bool)

(declare-fun e!1690911 () Bool)

(assert (=> b!2681853 (= e!1690910 e!1690911)))

(declare-fun res!1127252 () Bool)

(assert (=> b!2681853 (= res!1127252 (not ((_ is Leaf!14787) (c!431878 acc!348))))))

(assert (=> b!2681853 (=> res!1127252 e!1690911)))

(declare-fun b!2681854 () Bool)

(declare-fun inv!41969 (Conc!9680) Bool)

(assert (=> b!2681854 (= e!1690911 (inv!41969 (c!431878 acc!348)))))

(assert (= (and d!766713 c!431955) b!2681852))

(assert (= (and d!766713 (not c!431955)) b!2681853))

(assert (= (and b!2681853 (not res!1127252)) b!2681854))

(declare-fun m!3050481 () Bool)

(assert (=> b!2681852 m!3050481))

(declare-fun m!3050483 () Bool)

(assert (=> b!2681854 m!3050483))

(assert (=> b!2681548 d!766713))

(declare-fun d!766715 () Bool)

(assert (=> d!766715 (= (valid!2695 cacheUp!486) (validCacheMapUp!318 (cache!3531 cacheUp!486)))))

(declare-fun bs!480197 () Bool)

(assert (= bs!480197 d!766715))

(assert (=> bs!480197 m!3050279))

(assert (=> b!2681558 d!766715))

(declare-fun d!766717 () Bool)

(declare-fun res!1127255 () Bool)

(declare-fun e!1690914 () Bool)

(assert (=> d!766717 (=> (not res!1127255) (not e!1690914))))

(declare-fun rulesValid!1761 (LexerInterface!4321 List!31041) Bool)

(assert (=> d!766717 (= res!1127255 (rulesValid!1761 thiss!12257 rules!1381))))

(assert (=> d!766717 (= (rulesInvariant!3817 thiss!12257 rules!1381) e!1690914)))

(declare-fun b!2681857 () Bool)

(declare-datatypes ((List!31043 0))(
  ( (Nil!30943) (Cons!30943 (h!36363 String!34635) (t!224548 List!31043)) )
))
(declare-fun noDuplicateTag!1757 (LexerInterface!4321 List!31041 List!31043) Bool)

(assert (=> b!2681857 (= e!1690914 (noDuplicateTag!1757 thiss!12257 rules!1381 Nil!30943))))

(assert (= (and d!766717 res!1127255) b!2681857))

(declare-fun m!3050485 () Bool)

(assert (=> d!766717 m!3050485))

(declare-fun m!3050487 () Bool)

(assert (=> b!2681857 m!3050487))

(assert (=> b!2681566 d!766717))

(declare-fun d!766719 () Bool)

(assert (=> d!766719 (= (isEmpty!17678 rules!1381) ((_ is Nil!30941) rules!1381))))

(assert (=> b!2681559 d!766719))

(declare-fun b!2681858 () Bool)

(declare-fun e!1690916 () Bool)

(declare-fun e!1690917 () Bool)

(assert (=> b!2681858 (= e!1690916 e!1690917)))

(declare-fun res!1127256 () Bool)

(declare-fun lt!944966 () tuple2!30416)

(assert (=> b!2681858 (= res!1127256 (< (size!23901 (_2!17771 lt!944966)) (size!23901 (_2!17772 (v!32751 lt!944641)))))))

(assert (=> b!2681858 (=> (not res!1127256) (not e!1690917))))

(declare-fun b!2681859 () Bool)

(declare-fun e!1690915 () tuple2!30416)

(assert (=> b!2681859 (= e!1690915 (tuple2!30417 (BalanceConc!18975 Empty!9680) (_2!17772 (v!32751 lt!944641))))))

(declare-fun b!2681860 () Bool)

(assert (=> b!2681860 (= e!1690917 (not (isEmpty!17679 (_1!17771 lt!944966))))))

(declare-fun b!2681861 () Bool)

(declare-fun res!1127257 () Bool)

(declare-fun e!1690918 () Bool)

(assert (=> b!2681861 (=> (not res!1127257) (not e!1690918))))

(assert (=> b!2681861 (= res!1127257 (= (list!11680 (_1!17771 lt!944966)) (_1!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 (_2!17772 (v!32751 lt!944641)))))))))

(declare-fun b!2681862 () Bool)

(declare-fun lt!944964 () tuple2!30416)

(declare-fun lt!944965 () Option!6113)

(assert (=> b!2681862 (= e!1690915 (tuple2!30417 (prepend!1057 (_1!17771 lt!944964) (_1!17772 (v!32751 lt!944965))) (_2!17771 lt!944964)))))

(assert (=> b!2681862 (= lt!944964 (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944965))))))

(declare-fun d!766721 () Bool)

(assert (=> d!766721 e!1690918))

(declare-fun res!1127258 () Bool)

(assert (=> d!766721 (=> (not res!1127258) (not e!1690918))))

(assert (=> d!766721 (= res!1127258 e!1690916)))

(declare-fun c!431956 () Bool)

(assert (=> d!766721 (= c!431956 (> (size!23902 (_1!17771 lt!944966)) 0))))

(assert (=> d!766721 (= lt!944966 e!1690915)))

(declare-fun c!431957 () Bool)

(assert (=> d!766721 (= c!431957 ((_ is Some!6112) lt!944965))))

(assert (=> d!766721 (= lt!944965 (maxPrefixZipperSequence!989 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944641))))))

(assert (=> d!766721 (= (lexRec!587 thiss!12257 rules!1381 (_2!17772 (v!32751 lt!944641))) lt!944966)))

(declare-fun b!2681863 () Bool)

(assert (=> b!2681863 (= e!1690918 (= (list!11679 (_2!17771 lt!944966)) (_2!17773 (lexList!1182 thiss!12257 rules!1381 (list!11679 (_2!17772 (v!32751 lt!944641)))))))))

(declare-fun b!2681864 () Bool)

(assert (=> b!2681864 (= e!1690916 (= (list!11679 (_2!17771 lt!944966)) (list!11679 (_2!17772 (v!32751 lt!944641)))))))

(assert (= (and d!766721 c!431957) b!2681862))

(assert (= (and d!766721 (not c!431957)) b!2681859))

(assert (= (and d!766721 c!431956) b!2681858))

(assert (= (and d!766721 (not c!431956)) b!2681864))

(assert (= (and b!2681858 res!1127256) b!2681860))

(assert (= (and d!766721 res!1127258) b!2681861))

(assert (= (and b!2681861 res!1127257) b!2681863))

(declare-fun m!3050489 () Bool)

(assert (=> b!2681864 m!3050489))

(declare-fun m!3050491 () Bool)

(assert (=> b!2681864 m!3050491))

(declare-fun m!3050493 () Bool)

(assert (=> b!2681858 m!3050493))

(declare-fun m!3050495 () Bool)

(assert (=> b!2681858 m!3050495))

(declare-fun m!3050497 () Bool)

(assert (=> d!766721 m!3050497))

(declare-fun m!3050499 () Bool)

(assert (=> d!766721 m!3050499))

(declare-fun m!3050501 () Bool)

(assert (=> b!2681862 m!3050501))

(declare-fun m!3050503 () Bool)

(assert (=> b!2681862 m!3050503))

(declare-fun m!3050505 () Bool)

(assert (=> b!2681861 m!3050505))

(assert (=> b!2681861 m!3050491))

(assert (=> b!2681861 m!3050491))

(declare-fun m!3050507 () Bool)

(assert (=> b!2681861 m!3050507))

(declare-fun m!3050509 () Bool)

(assert (=> b!2681860 m!3050509))

(assert (=> b!2681863 m!3050489))

(assert (=> b!2681863 m!3050491))

(assert (=> b!2681863 m!3050491))

(assert (=> b!2681863 m!3050507))

(assert (=> b!2681538 d!766721))

(declare-fun d!766723 () Bool)

(declare-fun e!1690919 () Bool)

(assert (=> d!766723 e!1690919))

(declare-fun res!1127259 () Bool)

(assert (=> d!766723 (=> (not res!1127259) (not e!1690919))))

(assert (=> d!766723 (= res!1127259 (isBalanced!2929 (prepend!1058 (c!431878 (_1!17771 lt!944650)) (_1!17772 (v!32751 lt!944641)))))))

(declare-fun lt!944967 () BalanceConc!18974)

(assert (=> d!766723 (= lt!944967 (BalanceConc!18975 (prepend!1058 (c!431878 (_1!17771 lt!944650)) (_1!17772 (v!32751 lt!944641)))))))

(assert (=> d!766723 (= (prepend!1057 (_1!17771 lt!944650) (_1!17772 (v!32751 lt!944641))) lt!944967)))

(declare-fun b!2681865 () Bool)

(assert (=> b!2681865 (= e!1690919 (= (list!11680 lt!944967) (Cons!30940 (_1!17772 (v!32751 lt!944641)) (list!11680 (_1!17771 lt!944650)))))))

(assert (= (and d!766723 res!1127259) b!2681865))

(declare-fun m!3050511 () Bool)

(assert (=> d!766723 m!3050511))

(assert (=> d!766723 m!3050511))

(declare-fun m!3050513 () Bool)

(assert (=> d!766723 m!3050513))

(declare-fun m!3050515 () Bool)

(assert (=> b!2681865 m!3050515))

(declare-fun m!3050517 () Bool)

(assert (=> b!2681865 m!3050517))

(assert (=> b!2681538 d!766723))

(declare-fun b!2681877 () Bool)

(declare-fun e!1690922 () Bool)

(declare-fun tp!848452 () Bool)

(declare-fun tp!848450 () Bool)

(assert (=> b!2681877 (= e!1690922 (and tp!848452 tp!848450))))

(assert (=> b!2681564 (= tp!848431 e!1690922)))

(declare-fun b!2681878 () Bool)

(declare-fun tp!848453 () Bool)

(assert (=> b!2681878 (= e!1690922 tp!848453)))

(declare-fun b!2681876 () Bool)

(declare-fun tp_is_empty!13839 () Bool)

(assert (=> b!2681876 (= e!1690922 tp_is_empty!13839)))

(declare-fun b!2681879 () Bool)

(declare-fun tp!848451 () Bool)

(declare-fun tp!848454 () Bool)

(assert (=> b!2681879 (= e!1690922 (and tp!848451 tp!848454))))

(assert (= (and b!2681564 ((_ is ElementMatch!7877) (regex!4725 (h!36361 rules!1381)))) b!2681876))

(assert (= (and b!2681564 ((_ is Concat!12824) (regex!4725 (h!36361 rules!1381)))) b!2681877))

(assert (= (and b!2681564 ((_ is Star!7877) (regex!4725 (h!36361 rules!1381)))) b!2681878))

(assert (= (and b!2681564 ((_ is Union!7877) (regex!4725 (h!36361 rules!1381)))) b!2681879))

(declare-fun tp!848465 () Bool)

(declare-fun e!1690930 () Bool)

(declare-fun setRes!20949 () Bool)

(declare-fun b!2681888 () Bool)

(declare-fun e!1690931 () Bool)

(declare-fun inv!41970 (Context!4302) Bool)

(assert (=> b!2681888 (= e!1690930 (and (inv!41970 (_1!17769 (_1!17770 (h!36357 (zeroValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))))) e!1690931 tp_is_empty!13839 setRes!20949 tp!848465))))

(declare-fun condSetEmpty!20949 () Bool)

(assert (=> b!2681888 (= condSetEmpty!20949 (= (_2!17770 (h!36357 (zeroValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681889 () Bool)

(declare-fun e!1690929 () Bool)

(declare-fun tp!848464 () Bool)

(assert (=> b!2681889 (= e!1690929 tp!848464)))

(declare-fun setElem!20949 () Context!4302)

(declare-fun setNonEmpty!20949 () Bool)

(declare-fun tp!848466 () Bool)

(assert (=> setNonEmpty!20949 (= setRes!20949 (and tp!848466 (inv!41970 setElem!20949) e!1690929))))

(declare-fun setRest!20949 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20949 (= (_2!17770 (h!36357 (zeroValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20949 true) setRest!20949))))

(declare-fun b!2681890 () Bool)

(declare-fun tp!848463 () Bool)

(assert (=> b!2681890 (= e!1690931 tp!848463)))

(declare-fun setIsEmpty!20949 () Bool)

(assert (=> setIsEmpty!20949 setRes!20949))

(assert (=> b!2681546 (= tp!848419 e!1690930)))

(assert (= b!2681888 b!2681890))

(assert (= (and b!2681888 condSetEmpty!20949) setIsEmpty!20949))

(assert (= (and b!2681888 (not condSetEmpty!20949)) setNonEmpty!20949))

(assert (= setNonEmpty!20949 b!2681889))

(assert (= (and b!2681546 ((_ is Cons!30937) (zeroValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))) b!2681888))

(declare-fun m!3050519 () Bool)

(assert (=> b!2681888 m!3050519))

(declare-fun m!3050521 () Bool)

(assert (=> setNonEmpty!20949 m!3050521))

(declare-fun tp!848469 () Bool)

(declare-fun e!1690933 () Bool)

(declare-fun setRes!20950 () Bool)

(declare-fun b!2681891 () Bool)

(declare-fun e!1690934 () Bool)

(assert (=> b!2681891 (= e!1690933 (and (inv!41970 (_1!17769 (_1!17770 (h!36357 (minValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))))) e!1690934 tp_is_empty!13839 setRes!20950 tp!848469))))

(declare-fun condSetEmpty!20950 () Bool)

(assert (=> b!2681891 (= condSetEmpty!20950 (= (_2!17770 (h!36357 (minValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681892 () Bool)

(declare-fun e!1690932 () Bool)

(declare-fun tp!848468 () Bool)

(assert (=> b!2681892 (= e!1690932 tp!848468)))

(declare-fun setNonEmpty!20950 () Bool)

(declare-fun setElem!20950 () Context!4302)

(declare-fun tp!848470 () Bool)

(assert (=> setNonEmpty!20950 (= setRes!20950 (and tp!848470 (inv!41970 setElem!20950) e!1690932))))

(declare-fun setRest!20950 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20950 (= (_2!17770 (h!36357 (minValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20950 true) setRest!20950))))

(declare-fun b!2681893 () Bool)

(declare-fun tp!848467 () Bool)

(assert (=> b!2681893 (= e!1690934 tp!848467)))

(declare-fun setIsEmpty!20950 () Bool)

(assert (=> setIsEmpty!20950 setRes!20950))

(assert (=> b!2681546 (= tp!848421 e!1690933)))

(assert (= b!2681891 b!2681893))

(assert (= (and b!2681891 condSetEmpty!20950) setIsEmpty!20950))

(assert (= (and b!2681891 (not condSetEmpty!20950)) setNonEmpty!20950))

(assert (= setNonEmpty!20950 b!2681892))

(assert (= (and b!2681546 ((_ is Cons!30937) (minValue!3741 (v!32749 (underlying!7167 (v!32750 (underlying!7168 (cache!3531 cacheUp!486)))))))) b!2681891))

(declare-fun m!3050523 () Bool)

(assert (=> b!2681891 m!3050523))

(declare-fun m!3050525 () Bool)

(assert (=> setNonEmpty!20950 m!3050525))

(declare-fun e!1690951 () Bool)

(declare-fun setElem!20955 () Context!4302)

(declare-fun setRes!20956 () Bool)

(declare-fun tp!848490 () Bool)

(declare-fun setNonEmpty!20955 () Bool)

(assert (=> setNonEmpty!20955 (= setRes!20956 (and tp!848490 (inv!41970 setElem!20955) e!1690951))))

(declare-fun mapDefault!15945 () List!31037)

(declare-fun setRest!20955 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20955 (= (_2!17770 (h!36357 mapDefault!15945)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20955 true) setRest!20955))))

(declare-fun condMapEmpty!15945 () Bool)

(assert (=> mapNonEmpty!15941 (= condMapEmpty!15945 (= mapRest!15942 ((as const (Array (_ BitVec 32) List!31037)) mapDefault!15945)))))

(declare-fun e!1690950 () Bool)

(declare-fun mapRes!15945 () Bool)

(assert (=> mapNonEmpty!15941 (= tp!848429 (and e!1690950 mapRes!15945))))

(declare-fun b!2681908 () Bool)

(declare-fun e!1690947 () Bool)

(declare-fun tp!848492 () Bool)

(assert (=> b!2681908 (= e!1690947 tp!848492)))

(declare-fun b!2681909 () Bool)

(declare-fun tp!848494 () Bool)

(assert (=> b!2681909 (= e!1690951 tp!848494)))

(declare-fun setIsEmpty!20955 () Bool)

(assert (=> setIsEmpty!20955 setRes!20956))

(declare-fun tp!848493 () Bool)

(declare-fun b!2681910 () Bool)

(declare-fun e!1690952 () Bool)

(declare-fun setRes!20955 () Bool)

(declare-fun mapValue!15945 () List!31037)

(assert (=> b!2681910 (= e!1690952 (and (inv!41970 (_1!17769 (_1!17770 (h!36357 mapValue!15945)))) e!1690947 tp_is_empty!13839 setRes!20955 tp!848493))))

(declare-fun condSetEmpty!20955 () Bool)

(assert (=> b!2681910 (= condSetEmpty!20955 (= (_2!17770 (h!36357 mapValue!15945)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681911 () Bool)

(declare-fun e!1690949 () Bool)

(declare-fun tp!848497 () Bool)

(assert (=> b!2681911 (= e!1690949 tp!848497)))

(declare-fun mapIsEmpty!15945 () Bool)

(assert (=> mapIsEmpty!15945 mapRes!15945))

(declare-fun setNonEmpty!20956 () Bool)

(declare-fun tp!848495 () Bool)

(declare-fun setElem!20956 () Context!4302)

(declare-fun e!1690948 () Bool)

(assert (=> setNonEmpty!20956 (= setRes!20955 (and tp!848495 (inv!41970 setElem!20956) e!1690948))))

(declare-fun setRest!20956 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20956 (= (_2!17770 (h!36357 mapValue!15945)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20956 true) setRest!20956))))

(declare-fun mapNonEmpty!15945 () Bool)

(declare-fun tp!848489 () Bool)

(assert (=> mapNonEmpty!15945 (= mapRes!15945 (and tp!848489 e!1690952))))

(declare-fun mapRest!15945 () (Array (_ BitVec 32) List!31037))

(declare-fun mapKey!15945 () (_ BitVec 32))

(assert (=> mapNonEmpty!15945 (= mapRest!15942 (store mapRest!15945 mapKey!15945 mapValue!15945))))

(declare-fun setIsEmpty!20956 () Bool)

(assert (=> setIsEmpty!20956 setRes!20955))

(declare-fun b!2681912 () Bool)

(declare-fun tp!848496 () Bool)

(assert (=> b!2681912 (= e!1690950 (and (inv!41970 (_1!17769 (_1!17770 (h!36357 mapDefault!15945)))) e!1690949 tp_is_empty!13839 setRes!20956 tp!848496))))

(declare-fun condSetEmpty!20956 () Bool)

(assert (=> b!2681912 (= condSetEmpty!20956 (= (_2!17770 (h!36357 mapDefault!15945)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681913 () Bool)

(declare-fun tp!848491 () Bool)

(assert (=> b!2681913 (= e!1690948 tp!848491)))

(assert (= (and mapNonEmpty!15941 condMapEmpty!15945) mapIsEmpty!15945))

(assert (= (and mapNonEmpty!15941 (not condMapEmpty!15945)) mapNonEmpty!15945))

(assert (= b!2681910 b!2681908))

(assert (= (and b!2681910 condSetEmpty!20955) setIsEmpty!20956))

(assert (= (and b!2681910 (not condSetEmpty!20955)) setNonEmpty!20956))

(assert (= setNonEmpty!20956 b!2681913))

(assert (= (and mapNonEmpty!15945 ((_ is Cons!30937) mapValue!15945)) b!2681910))

(assert (= b!2681912 b!2681911))

(assert (= (and b!2681912 condSetEmpty!20956) setIsEmpty!20955))

(assert (= (and b!2681912 (not condSetEmpty!20956)) setNonEmpty!20955))

(assert (= setNonEmpty!20955 b!2681909))

(assert (= (and mapNonEmpty!15941 ((_ is Cons!30937) mapDefault!15945)) b!2681912))

(declare-fun m!3050527 () Bool)

(assert (=> b!2681910 m!3050527))

(declare-fun m!3050529 () Bool)

(assert (=> mapNonEmpty!15945 m!3050529))

(declare-fun m!3050531 () Bool)

(assert (=> b!2681912 m!3050531))

(declare-fun m!3050533 () Bool)

(assert (=> setNonEmpty!20955 m!3050533))

(declare-fun m!3050535 () Bool)

(assert (=> setNonEmpty!20956 m!3050535))

(declare-fun b!2681914 () Bool)

(declare-fun e!1690955 () Bool)

(declare-fun setRes!20957 () Bool)

(declare-fun e!1690954 () Bool)

(declare-fun tp!848500 () Bool)

(assert (=> b!2681914 (= e!1690954 (and (inv!41970 (_1!17769 (_1!17770 (h!36357 mapValue!15942)))) e!1690955 tp_is_empty!13839 setRes!20957 tp!848500))))

(declare-fun condSetEmpty!20957 () Bool)

(assert (=> b!2681914 (= condSetEmpty!20957 (= (_2!17770 (h!36357 mapValue!15942)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681915 () Bool)

(declare-fun e!1690953 () Bool)

(declare-fun tp!848499 () Bool)

(assert (=> b!2681915 (= e!1690953 tp!848499)))

(declare-fun setElem!20957 () Context!4302)

(declare-fun setNonEmpty!20957 () Bool)

(declare-fun tp!848501 () Bool)

(assert (=> setNonEmpty!20957 (= setRes!20957 (and tp!848501 (inv!41970 setElem!20957) e!1690953))))

(declare-fun setRest!20957 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20957 (= (_2!17770 (h!36357 mapValue!15942)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20957 true) setRest!20957))))

(declare-fun b!2681916 () Bool)

(declare-fun tp!848498 () Bool)

(assert (=> b!2681916 (= e!1690955 tp!848498)))

(declare-fun setIsEmpty!20957 () Bool)

(assert (=> setIsEmpty!20957 setRes!20957))

(assert (=> mapNonEmpty!15941 (= tp!848434 e!1690954)))

(assert (= b!2681914 b!2681916))

(assert (= (and b!2681914 condSetEmpty!20957) setIsEmpty!20957))

(assert (= (and b!2681914 (not condSetEmpty!20957)) setNonEmpty!20957))

(assert (= setNonEmpty!20957 b!2681915))

(assert (= (and mapNonEmpty!15941 ((_ is Cons!30937) mapValue!15942)) b!2681914))

(declare-fun m!3050537 () Bool)

(assert (=> b!2681914 m!3050537))

(declare-fun m!3050539 () Bool)

(assert (=> setNonEmpty!20957 m!3050539))

(declare-fun b!2681925 () Bool)

(declare-fun tp!848508 () Bool)

(declare-fun e!1690961 () Bool)

(declare-fun tp!848510 () Bool)

(assert (=> b!2681925 (= e!1690961 (and (inv!41959 (left!23905 (c!431877 totalInput!354))) tp!848510 (inv!41959 (right!24235 (c!431877 totalInput!354))) tp!848508))))

(declare-fun b!2681927 () Bool)

(declare-fun e!1690960 () Bool)

(declare-fun tp!848509 () Bool)

(assert (=> b!2681927 (= e!1690960 tp!848509)))

(declare-fun b!2681926 () Bool)

(declare-fun inv!41971 (IArray!19363) Bool)

(assert (=> b!2681926 (= e!1690961 (and (inv!41971 (xs!12709 (c!431877 totalInput!354))) e!1690960))))

(assert (=> b!2681543 (= tp!848416 (and (inv!41959 (c!431877 totalInput!354)) e!1690961))))

(assert (= (and b!2681543 ((_ is Node!9679) (c!431877 totalInput!354))) b!2681925))

(assert (= b!2681926 b!2681927))

(assert (= (and b!2681543 ((_ is Leaf!14786) (c!431877 totalInput!354))) b!2681926))

(declare-fun m!3050541 () Bool)

(assert (=> b!2681925 m!3050541))

(declare-fun m!3050543 () Bool)

(assert (=> b!2681925 m!3050543))

(declare-fun m!3050545 () Bool)

(assert (=> b!2681926 m!3050545))

(assert (=> b!2681543 m!3049767))

(declare-fun tp!848513 () Bool)

(declare-fun e!1690963 () Bool)

(declare-fun b!2681928 () Bool)

(declare-fun tp!848511 () Bool)

(assert (=> b!2681928 (= e!1690963 (and (inv!41959 (left!23905 (c!431877 treated!26))) tp!848513 (inv!41959 (right!24235 (c!431877 treated!26))) tp!848511))))

(declare-fun b!2681930 () Bool)

(declare-fun e!1690962 () Bool)

(declare-fun tp!848512 () Bool)

(assert (=> b!2681930 (= e!1690962 tp!848512)))

(declare-fun b!2681929 () Bool)

(assert (=> b!2681929 (= e!1690963 (and (inv!41971 (xs!12709 (c!431877 treated!26))) e!1690962))))

(assert (=> b!2681553 (= tp!848427 (and (inv!41959 (c!431877 treated!26)) e!1690963))))

(assert (= (and b!2681553 ((_ is Node!9679) (c!431877 treated!26))) b!2681928))

(assert (= b!2681929 b!2681930))

(assert (= (and b!2681553 ((_ is Leaf!14786) (c!431877 treated!26))) b!2681929))

(declare-fun m!3050547 () Bool)

(assert (=> b!2681928 m!3050547))

(declare-fun m!3050549 () Bool)

(assert (=> b!2681928 m!3050549))

(declare-fun m!3050551 () Bool)

(assert (=> b!2681929 m!3050551))

(assert (=> b!2681553 m!3049855))

(declare-fun e!1690965 () Bool)

(declare-fun tp!848516 () Bool)

(declare-fun b!2681931 () Bool)

(declare-fun tp!848514 () Bool)

(assert (=> b!2681931 (= e!1690965 (and (inv!41959 (left!23905 (c!431877 input!780))) tp!848516 (inv!41959 (right!24235 (c!431877 input!780))) tp!848514))))

(declare-fun b!2681933 () Bool)

(declare-fun e!1690964 () Bool)

(declare-fun tp!848515 () Bool)

(assert (=> b!2681933 (= e!1690964 tp!848515)))

(declare-fun b!2681932 () Bool)

(assert (=> b!2681932 (= e!1690965 (and (inv!41971 (xs!12709 (c!431877 input!780))) e!1690964))))

(assert (=> b!2681533 (= tp!848426 (and (inv!41959 (c!431877 input!780)) e!1690965))))

(assert (= (and b!2681533 ((_ is Node!9679) (c!431877 input!780))) b!2681931))

(assert (= b!2681932 b!2681933))

(assert (= (and b!2681533 ((_ is Leaf!14786) (c!431877 input!780))) b!2681932))

(declare-fun m!3050553 () Bool)

(assert (=> b!2681931 m!3050553))

(declare-fun m!3050555 () Bool)

(assert (=> b!2681931 m!3050555))

(declare-fun m!3050557 () Bool)

(assert (=> b!2681932 m!3050557))

(assert (=> b!2681533 m!3049859))

(declare-fun b!2681942 () Bool)

(declare-fun e!1690972 () Bool)

(declare-fun tp!848527 () Bool)

(assert (=> b!2681942 (= e!1690972 tp!848527)))

(declare-fun setRes!20960 () Bool)

(declare-fun tp!848530 () Bool)

(declare-fun setNonEmpty!20960 () Bool)

(declare-fun setElem!20960 () Context!4302)

(assert (=> setNonEmpty!20960 (= setRes!20960 (and tp!848530 (inv!41970 setElem!20960) e!1690972))))

(declare-fun setRest!20960 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20960 (= (_2!17775 (h!36362 (zeroValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20960 true) setRest!20960))))

(declare-fun setIsEmpty!20960 () Bool)

(assert (=> setIsEmpty!20960 setRes!20960))

(declare-fun e!1690973 () Bool)

(declare-fun tp!848531 () Bool)

(declare-fun tp!848529 () Bool)

(declare-fun e!1690974 () Bool)

(declare-fun b!2681944 () Bool)

(assert (=> b!2681944 (= e!1690974 (and tp!848531 (inv!41970 (_2!17774 (_1!17775 (h!36362 (zeroValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))))) e!1690973 tp_is_empty!13839 setRes!20960 tp!848529))))

(declare-fun condSetEmpty!20960 () Bool)

(assert (=> b!2681944 (= condSetEmpty!20960 (= (_2!17775 (h!36362 (zeroValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681943 () Bool)

(declare-fun tp!848528 () Bool)

(assert (=> b!2681943 (= e!1690973 tp!848528)))

(assert (=> b!2681540 (= tp!848435 e!1690974)))

(assert (= b!2681944 b!2681943))

(assert (= (and b!2681944 condSetEmpty!20960) setIsEmpty!20960))

(assert (= (and b!2681944 (not condSetEmpty!20960)) setNonEmpty!20960))

(assert (= setNonEmpty!20960 b!2681942))

(assert (= (and b!2681540 ((_ is Cons!30942) (zeroValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))) b!2681944))

(declare-fun m!3050559 () Bool)

(assert (=> setNonEmpty!20960 m!3050559))

(declare-fun m!3050561 () Bool)

(assert (=> b!2681944 m!3050561))

(declare-fun b!2681945 () Bool)

(declare-fun e!1690975 () Bool)

(declare-fun tp!848532 () Bool)

(assert (=> b!2681945 (= e!1690975 tp!848532)))

(declare-fun setRes!20961 () Bool)

(declare-fun setElem!20961 () Context!4302)

(declare-fun setNonEmpty!20961 () Bool)

(declare-fun tp!848535 () Bool)

(assert (=> setNonEmpty!20961 (= setRes!20961 (and tp!848535 (inv!41970 setElem!20961) e!1690975))))

(declare-fun setRest!20961 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20961 (= (_2!17775 (h!36362 (minValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20961 true) setRest!20961))))

(declare-fun setIsEmpty!20961 () Bool)

(assert (=> setIsEmpty!20961 setRes!20961))

(declare-fun e!1690977 () Bool)

(declare-fun tp!848534 () Bool)

(declare-fun tp!848536 () Bool)

(declare-fun e!1690976 () Bool)

(declare-fun b!2681947 () Bool)

(assert (=> b!2681947 (= e!1690977 (and tp!848536 (inv!41970 (_2!17774 (_1!17775 (h!36362 (minValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))))) e!1690976 tp_is_empty!13839 setRes!20961 tp!848534))))

(declare-fun condSetEmpty!20961 () Bool)

(assert (=> b!2681947 (= condSetEmpty!20961 (= (_2!17775 (h!36362 (minValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681946 () Bool)

(declare-fun tp!848533 () Bool)

(assert (=> b!2681946 (= e!1690976 tp!848533)))

(assert (=> b!2681540 (= tp!848423 e!1690977)))

(assert (= b!2681947 b!2681946))

(assert (= (and b!2681947 condSetEmpty!20961) setIsEmpty!20961))

(assert (= (and b!2681947 (not condSetEmpty!20961)) setNonEmpty!20961))

(assert (= setNonEmpty!20961 b!2681945))

(assert (= (and b!2681540 ((_ is Cons!30942) (minValue!3742 (v!32752 (underlying!7169 (v!32753 (underlying!7170 (cache!3532 cacheDown!499)))))))) b!2681947))

(declare-fun m!3050563 () Bool)

(assert (=> setNonEmpty!20961 m!3050563))

(declare-fun m!3050565 () Bool)

(assert (=> b!2681947 m!3050565))

(declare-fun b!2681948 () Bool)

(declare-fun e!1690978 () Bool)

(declare-fun tp!848537 () Bool)

(assert (=> b!2681948 (= e!1690978 tp!848537)))

(declare-fun setNonEmpty!20962 () Bool)

(declare-fun setRes!20962 () Bool)

(declare-fun setElem!20962 () Context!4302)

(declare-fun tp!848540 () Bool)

(assert (=> setNonEmpty!20962 (= setRes!20962 (and tp!848540 (inv!41970 setElem!20962) e!1690978))))

(declare-fun setRest!20962 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20962 (= (_2!17775 (h!36362 mapDefault!15942)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20962 true) setRest!20962))))

(declare-fun setIsEmpty!20962 () Bool)

(assert (=> setIsEmpty!20962 setRes!20962))

(declare-fun b!2681950 () Bool)

(declare-fun e!1690980 () Bool)

(declare-fun tp!848539 () Bool)

(declare-fun tp!848541 () Bool)

(declare-fun e!1690979 () Bool)

(assert (=> b!2681950 (= e!1690980 (and tp!848541 (inv!41970 (_2!17774 (_1!17775 (h!36362 mapDefault!15942)))) e!1690979 tp_is_empty!13839 setRes!20962 tp!848539))))

(declare-fun condSetEmpty!20962 () Bool)

(assert (=> b!2681950 (= condSetEmpty!20962 (= (_2!17775 (h!36362 mapDefault!15942)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681949 () Bool)

(declare-fun tp!848538 () Bool)

(assert (=> b!2681949 (= e!1690979 tp!848538)))

(assert (=> b!2681552 (= tp!848422 e!1690980)))

(assert (= b!2681950 b!2681949))

(assert (= (and b!2681950 condSetEmpty!20962) setIsEmpty!20962))

(assert (= (and b!2681950 (not condSetEmpty!20962)) setNonEmpty!20962))

(assert (= setNonEmpty!20962 b!2681948))

(assert (= (and b!2681552 ((_ is Cons!30942) mapDefault!15942)) b!2681950))

(declare-fun m!3050567 () Bool)

(assert (=> setNonEmpty!20962 m!3050567))

(declare-fun m!3050569 () Bool)

(assert (=> b!2681950 m!3050569))

(declare-fun b!2681961 () Bool)

(declare-fun b_free!75813 () Bool)

(declare-fun b_next!76517 () Bool)

(assert (=> b!2681961 (= b_free!75813 (not b_next!76517))))

(declare-fun tp!848551 () Bool)

(declare-fun b_and!198611 () Bool)

(assert (=> b!2681961 (= tp!848551 b_and!198611)))

(declare-fun b_free!75815 () Bool)

(declare-fun b_next!76519 () Bool)

(assert (=> b!2681961 (= b_free!75815 (not b_next!76519))))

(declare-fun t!224547 () Bool)

(declare-fun tb!150591 () Bool)

(assert (=> (and b!2681961 (= (toChars!6538 (transformation!4725 (h!36361 (t!224542 rules!1381)))) (toChars!6538 (transformation!4725 (rule!7135 (_1!17772 (v!32751 lt!944658)))))) t!224547) tb!150591))

(declare-fun result!185978 () Bool)

(assert (= result!185978 result!185962))

(assert (=> d!766621 t!224547))

(declare-fun tp!848552 () Bool)

(declare-fun b_and!198613 () Bool)

(assert (=> b!2681961 (= tp!848552 (and (=> t!224547 result!185978) b_and!198613))))

(declare-fun e!1690991 () Bool)

(assert (=> b!2681961 (= e!1690991 (and tp!848551 tp!848552))))

(declare-fun e!1690990 () Bool)

(declare-fun tp!848553 () Bool)

(declare-fun b!2681960 () Bool)

(assert (=> b!2681960 (= e!1690990 (and tp!848553 (inv!41956 (tag!5229 (h!36361 (t!224542 rules!1381)))) (inv!41961 (transformation!4725 (h!36361 (t!224542 rules!1381)))) e!1690991))))

(declare-fun b!2681959 () Bool)

(declare-fun e!1690989 () Bool)

(declare-fun tp!848550 () Bool)

(assert (=> b!2681959 (= e!1690989 (and e!1690990 tp!848550))))

(assert (=> b!2681531 (= tp!848424 e!1690989)))

(assert (= b!2681960 b!2681961))

(assert (= b!2681959 b!2681960))

(assert (= (and b!2681531 ((_ is Cons!30941) (t!224542 rules!1381))) b!2681959))

(declare-fun m!3050571 () Bool)

(assert (=> b!2681960 m!3050571))

(declare-fun m!3050573 () Bool)

(assert (=> b!2681960 m!3050573))

(declare-fun e!1690994 () Bool)

(declare-fun setRes!20963 () Bool)

(declare-fun b!2681962 () Bool)

(declare-fun tp!848556 () Bool)

(declare-fun e!1690995 () Bool)

(assert (=> b!2681962 (= e!1690994 (and (inv!41970 (_1!17769 (_1!17770 (h!36357 mapDefault!15941)))) e!1690995 tp_is_empty!13839 setRes!20963 tp!848556))))

(declare-fun condSetEmpty!20963 () Bool)

(assert (=> b!2681962 (= condSetEmpty!20963 (= (_2!17770 (h!36357 mapDefault!15941)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681963 () Bool)

(declare-fun e!1690993 () Bool)

(declare-fun tp!848555 () Bool)

(assert (=> b!2681963 (= e!1690993 tp!848555)))

(declare-fun setElem!20963 () Context!4302)

(declare-fun tp!848557 () Bool)

(declare-fun setNonEmpty!20963 () Bool)

(assert (=> setNonEmpty!20963 (= setRes!20963 (and tp!848557 (inv!41970 setElem!20963) e!1690993))))

(declare-fun setRest!20963 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20963 (= (_2!17770 (h!36357 mapDefault!15941)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20963 true) setRest!20963))))

(declare-fun b!2681964 () Bool)

(declare-fun tp!848554 () Bool)

(assert (=> b!2681964 (= e!1690995 tp!848554)))

(declare-fun setIsEmpty!20963 () Bool)

(assert (=> setIsEmpty!20963 setRes!20963))

(assert (=> b!2681561 (= tp!848432 e!1690994)))

(assert (= b!2681962 b!2681964))

(assert (= (and b!2681962 condSetEmpty!20963) setIsEmpty!20963))

(assert (= (and b!2681962 (not condSetEmpty!20963)) setNonEmpty!20963))

(assert (= setNonEmpty!20963 b!2681963))

(assert (= (and b!2681561 ((_ is Cons!30937) mapDefault!15941)) b!2681962))

(declare-fun m!3050575 () Bool)

(assert (=> b!2681962 m!3050575))

(declare-fun m!3050577 () Bool)

(assert (=> setNonEmpty!20963 m!3050577))

(declare-fun tp!848565 () Bool)

(declare-fun tp!848566 () Bool)

(declare-fun e!1691000 () Bool)

(declare-fun b!2681973 () Bool)

(assert (=> b!2681973 (= e!1691000 (and (inv!41960 (left!23906 (c!431878 acc!348))) tp!848566 (inv!41960 (right!24236 (c!431878 acc!348))) tp!848565))))

(declare-fun b!2681975 () Bool)

(declare-fun e!1691001 () Bool)

(declare-fun tp!848564 () Bool)

(assert (=> b!2681975 (= e!1691001 tp!848564)))

(declare-fun b!2681974 () Bool)

(declare-fun inv!41972 (IArray!19365) Bool)

(assert (=> b!2681974 (= e!1691000 (and (inv!41972 (xs!12710 (c!431878 acc!348))) e!1691001))))

(assert (=> b!2681548 (= tp!848425 (and (inv!41960 (c!431878 acc!348)) e!1691000))))

(assert (= (and b!2681548 ((_ is Node!9680) (c!431878 acc!348))) b!2681973))

(assert (= b!2681974 b!2681975))

(assert (= (and b!2681548 ((_ is Leaf!14787) (c!431878 acc!348))) b!2681974))

(declare-fun m!3050579 () Bool)

(assert (=> b!2681973 m!3050579))

(declare-fun m!3050581 () Bool)

(assert (=> b!2681973 m!3050581))

(declare-fun m!3050583 () Bool)

(assert (=> b!2681974 m!3050583))

(assert (=> b!2681548 m!3049753))

(declare-fun b!2681990 () Bool)

(declare-fun e!1691014 () Bool)

(declare-fun tp!848590 () Bool)

(assert (=> b!2681990 (= e!1691014 tp!848590)))

(declare-fun b!2681991 () Bool)

(declare-fun e!1691018 () Bool)

(declare-fun tp!848599 () Bool)

(assert (=> b!2681991 (= e!1691018 tp!848599)))

(declare-fun setIsEmpty!20968 () Bool)

(declare-fun setRes!20969 () Bool)

(assert (=> setIsEmpty!20968 setRes!20969))

(declare-fun e!1691017 () Bool)

(declare-fun setElem!20968 () Context!4302)

(declare-fun setNonEmpty!20968 () Bool)

(declare-fun tp!848593 () Bool)

(declare-fun setRes!20968 () Bool)

(assert (=> setNonEmpty!20968 (= setRes!20968 (and tp!848593 (inv!41970 setElem!20968) e!1691017))))

(declare-fun mapDefault!15948 () List!31042)

(declare-fun setRest!20968 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20968 (= (_2!17775 (h!36362 mapDefault!15948)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20968 true) setRest!20968))))

(declare-fun setIsEmpty!20969 () Bool)

(assert (=> setIsEmpty!20969 setRes!20968))

(declare-fun mapIsEmpty!15948 () Bool)

(declare-fun mapRes!15948 () Bool)

(assert (=> mapIsEmpty!15948 mapRes!15948))

(declare-fun b!2681993 () Bool)

(declare-fun tp!848595 () Bool)

(declare-fun tp!848592 () Bool)

(declare-fun e!1691015 () Bool)

(declare-fun mapValue!15948 () List!31042)

(assert (=> b!2681993 (= e!1691015 (and tp!848595 (inv!41970 (_2!17774 (_1!17775 (h!36362 mapValue!15948)))) e!1691014 tp_is_empty!13839 setRes!20969 tp!848592))))

(declare-fun condSetEmpty!20968 () Bool)

(assert (=> b!2681993 (= condSetEmpty!20968 (= (_2!17775 (h!36362 mapValue!15948)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun condMapEmpty!15948 () Bool)

(assert (=> mapNonEmpty!15942 (= condMapEmpty!15948 (= mapRest!15941 ((as const (Array (_ BitVec 32) List!31042)) mapDefault!15948)))))

(declare-fun e!1691016 () Bool)

(assert (=> mapNonEmpty!15942 (= tp!848420 (and e!1691016 mapRes!15948))))

(declare-fun tp!848598 () Bool)

(declare-fun b!2681992 () Bool)

(declare-fun tp!848597 () Bool)

(assert (=> b!2681992 (= e!1691016 (and tp!848597 (inv!41970 (_2!17774 (_1!17775 (h!36362 mapDefault!15948)))) e!1691018 tp_is_empty!13839 setRes!20968 tp!848598))))

(declare-fun condSetEmpty!20969 () Bool)

(assert (=> b!2681992 (= condSetEmpty!20969 (= (_2!17775 (h!36362 mapDefault!15948)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681994 () Bool)

(declare-fun e!1691019 () Bool)

(declare-fun tp!848589 () Bool)

(assert (=> b!2681994 (= e!1691019 tp!848589)))

(declare-fun b!2681995 () Bool)

(declare-fun tp!848594 () Bool)

(assert (=> b!2681995 (= e!1691017 tp!848594)))

(declare-fun setElem!20969 () Context!4302)

(declare-fun tp!848591 () Bool)

(declare-fun setNonEmpty!20969 () Bool)

(assert (=> setNonEmpty!20969 (= setRes!20969 (and tp!848591 (inv!41970 setElem!20969) e!1691019))))

(declare-fun setRest!20969 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20969 (= (_2!17775 (h!36362 mapValue!15948)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20969 true) setRest!20969))))

(declare-fun mapNonEmpty!15948 () Bool)

(declare-fun tp!848596 () Bool)

(assert (=> mapNonEmpty!15948 (= mapRes!15948 (and tp!848596 e!1691015))))

(declare-fun mapRest!15948 () (Array (_ BitVec 32) List!31042))

(declare-fun mapKey!15948 () (_ BitVec 32))

(assert (=> mapNonEmpty!15948 (= mapRest!15941 (store mapRest!15948 mapKey!15948 mapValue!15948))))

(assert (= (and mapNonEmpty!15942 condMapEmpty!15948) mapIsEmpty!15948))

(assert (= (and mapNonEmpty!15942 (not condMapEmpty!15948)) mapNonEmpty!15948))

(assert (= b!2681993 b!2681990))

(assert (= (and b!2681993 condSetEmpty!20968) setIsEmpty!20968))

(assert (= (and b!2681993 (not condSetEmpty!20968)) setNonEmpty!20969))

(assert (= setNonEmpty!20969 b!2681994))

(assert (= (and mapNonEmpty!15948 ((_ is Cons!30942) mapValue!15948)) b!2681993))

(assert (= b!2681992 b!2681991))

(assert (= (and b!2681992 condSetEmpty!20969) setIsEmpty!20969))

(assert (= (and b!2681992 (not condSetEmpty!20969)) setNonEmpty!20968))

(assert (= setNonEmpty!20968 b!2681995))

(assert (= (and mapNonEmpty!15942 ((_ is Cons!30942) mapDefault!15948)) b!2681992))

(declare-fun m!3050585 () Bool)

(assert (=> setNonEmpty!20968 m!3050585))

(declare-fun m!3050587 () Bool)

(assert (=> b!2681993 m!3050587))

(declare-fun m!3050589 () Bool)

(assert (=> setNonEmpty!20969 m!3050589))

(declare-fun m!3050591 () Bool)

(assert (=> mapNonEmpty!15948 m!3050591))

(declare-fun m!3050593 () Bool)

(assert (=> b!2681992 m!3050593))

(declare-fun b!2681996 () Bool)

(declare-fun e!1691020 () Bool)

(declare-fun tp!848600 () Bool)

(assert (=> b!2681996 (= e!1691020 tp!848600)))

(declare-fun tp!848603 () Bool)

(declare-fun setElem!20970 () Context!4302)

(declare-fun setRes!20970 () Bool)

(declare-fun setNonEmpty!20970 () Bool)

(assert (=> setNonEmpty!20970 (= setRes!20970 (and tp!848603 (inv!41970 setElem!20970) e!1691020))))

(declare-fun setRest!20970 () (InoxSet Context!4302))

(assert (=> setNonEmpty!20970 (= (_2!17775 (h!36362 mapValue!15941)) ((_ map or) (store ((as const (Array Context!4302 Bool)) false) setElem!20970 true) setRest!20970))))

(declare-fun setIsEmpty!20970 () Bool)

(assert (=> setIsEmpty!20970 setRes!20970))

(declare-fun tp!848602 () Bool)

(declare-fun e!1691021 () Bool)

(declare-fun tp!848604 () Bool)

(declare-fun b!2681998 () Bool)

(declare-fun e!1691022 () Bool)

(assert (=> b!2681998 (= e!1691022 (and tp!848604 (inv!41970 (_2!17774 (_1!17775 (h!36362 mapValue!15941)))) e!1691021 tp_is_empty!13839 setRes!20970 tp!848602))))

(declare-fun condSetEmpty!20970 () Bool)

(assert (=> b!2681998 (= condSetEmpty!20970 (= (_2!17775 (h!36362 mapValue!15941)) ((as const (Array Context!4302 Bool)) false)))))

(declare-fun b!2681997 () Bool)

(declare-fun tp!848601 () Bool)

(assert (=> b!2681997 (= e!1691021 tp!848601)))

(assert (=> mapNonEmpty!15942 (= tp!848428 e!1691022)))

(assert (= b!2681998 b!2681997))

(assert (= (and b!2681998 condSetEmpty!20970) setIsEmpty!20970))

(assert (= (and b!2681998 (not condSetEmpty!20970)) setNonEmpty!20970))

(assert (= setNonEmpty!20970 b!2681996))

(assert (= (and mapNonEmpty!15942 ((_ is Cons!30942) mapValue!15941)) b!2681998))

(declare-fun m!3050595 () Bool)

(assert (=> setNonEmpty!20970 m!3050595))

(declare-fun m!3050597 () Bool)

(assert (=> b!2681998 m!3050597))

(check-sat (not b!2681693) (not b!2681543) (not b!2681820) (not b!2681694) (not b!2681533) (not d!766661) (not b!2681926) (not b!2681860) (not b!2681592) (not b!2681729) (not b!2681623) (not b_next!76517) (not b!2681858) (not b!2681908) (not b!2681840) (not b!2681680) (not b!2681973) (not b!2681591) (not b!2681839) (not setNonEmpty!20957) (not d!766607) (not b!2681768) (not b!2681927) b_and!198613 (not setNonEmpty!20970) (not d!766707) (not b!2681877) (not b!2681612) (not d!766673) (not setNonEmpty!20969) (not b!2681950) (not setNonEmpty!20962) (not d!766671) (not b!2681622) (not b!2681929) (not b!2681942) (not b!2681828) (not b!2681777) (not b!2681963) (not d!766625) (not b!2681698) (not b!2681667) b_and!198599 (not b_next!76519) (not b!2681670) (not b!2681990) (not d!766613) (not d!766623) b_and!198609 (not setNonEmpty!20949) (not b!2681878) (not b!2681997) (not b!2681854) (not b!2681864) (not b!2681841) (not b!2681666) (not b!2681757) (not b!2681865) (not b!2681627) (not b!2681724) (not b!2681992) (not b!2681797) (not b_next!76513) (not b!2681800) (not b!2681747) (not d!766721) (not b!2681816) (not b!2681925) (not b!2681588) (not b!2681775) b_and!198607 (not b!2681910) (not d!766593) (not b!2681770) (not d!766717) (not b!2681585) (not b!2681683) (not b!2681943) (not setNonEmpty!20956) (not b!2681584) (not b!2681783) (not d!766629) (not b!2681786) (not d!766689) (not b!2681695) (not setNonEmpty!20961) (not b!2681862) (not b!2681751) (not b!2681996) (not b!2681892) (not b!2681712) (not b!2681879) (not b!2681893) (not b!2681838) (not b_next!76515) (not b!2681671) (not b!2681725) (not b!2681991) (not b!2681626) (not d!766635) (not b!2681716) (not b!2681761) (not b!2681722) (not b!2681718) (not d!766627) (not b!2681818) (not b!2681928) (not d!766631) (not tb!150589) (not d!766691) (not b!2681833) (not b!2681932) (not b!2681673) (not d!766695) (not b!2681798) (not b!2681760) (not b!2681609) (not d!766615) (not b!2681665) (not d!766617) (not b!2681975) (not b!2681827) (not mapNonEmpty!15948) (not b!2681581) (not b!2681606) (not b!2681993) (not b!2681944) (not d!766639) (not d!766693) (not setNonEmpty!20968) (not b!2681548) (not d!766601) (not b!2681837) (not d!766641) (not b!2681720) (not b!2681604) (not b!2681645) (not d!766591) (not d!766705) (not d!766657) (not b!2681759) (not b!2681728) (not d!766603) (not d!766645) (not b!2681888) (not d!766659) (not d!766675) (not b!2681749) (not d!766649) (not b_next!76509) (not setNonEmpty!20960) (not b!2681587) (not b!2681605) (not b!2681593) (not b!2681603) (not bm!172767) (not mapNonEmpty!15945) (not d!766681) (not d!766663) (not b!2681994) (not b!2681916) (not b!2681699) (not b!2681638) (not b!2681674) (not b!2681696) b_and!198597 (not b!2681773) (not d!766715) (not b!2681933) (not b!2681842) (not b!2681844) (not d!766621) (not d!766653) (not b!2681643) (not b!2681714) (not setNonEmpty!20955) (not b!2681946) (not bm!172766) (not b!2681913) (not b!2681852) (not b!2681832) (not b!2681586) (not b!2681553) (not b!2681639) (not d!766597) (not b_next!76507) (not b!2681755) (not d!766677) (not b!2681857) (not b!2681912) (not b!2681594) (not b!2681948) (not b!2681780) (not b!2681959) (not b!2681915) (not d!766605) (not b!2681947) (not b!2681890) (not b!2681962) (not b!2681949) (not b!2681646) (not b!2681721) (not setNonEmpty!20963) b_and!198611 (not d!766703) (not b!2681758) (not b_next!76511) (not b!2681772) (not b!2681641) (not d!766647) (not b_next!76505) (not d!766589) (not d!766709) (not b!2681647) (not b!2681835) (not b!2681974) (not setNonEmpty!20950) (not b!2681801) (not b!2681711) (not b!2681861) (not b!2681863) (not b!2681719) (not b!2681845) (not b!2681930) (not d!766619) tp_is_empty!13839 (not d!766633) (not b!2681668) (not d!766655) b_and!198601 (not b!2681821) (not b!2681664) (not b!2681889) (not d!766723) (not b!2681931) (not b!2681964) (not b!2681754) (not b!2681644) (not b!2681960) (not b!2681995) (not d!766711) (not d!766683) (not b!2681914) (not b!2681909) b_and!198605 (not d!766609) (not d!766611) (not b!2681583) (not b!2681682) (not d!766643) (not b_lambda!81891) (not d!766595) (not b!2681891) (not b!2681784) (not b!2681945) (not d!766637) (not b!2681590) (not b!2681746) (not b!2681998) (not b!2681911))
(check-sat (not b_next!76517) b_and!198613 (not b_next!76513) b_and!198607 (not b_next!76515) (not b_next!76509) b_and!198597 (not b_next!76507) (not b_next!76505) b_and!198601 b_and!198605 b_and!198599 b_and!198609 (not b_next!76519) (not b_next!76511) b_and!198611)
