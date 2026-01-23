; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!525256 () Bool)

(assert start!525256)

(declare-fun b!4978388 () Bool)

(declare-fun b_free!133087 () Bool)

(declare-fun b_next!133877 () Bool)

(assert (=> b!4978388 (= b_free!133087 (not b_next!133877))))

(declare-fun tp!1396039 () Bool)

(declare-fun b_and!349499 () Bool)

(assert (=> b!4978388 (= tp!1396039 b_and!349499)))

(declare-fun b_free!133089 () Bool)

(declare-fun b_next!133879 () Bool)

(assert (=> b!4978388 (= b_free!133089 (not b_next!133879))))

(declare-fun tp!1396037 () Bool)

(declare-fun b_and!349501 () Bool)

(assert (=> b!4978388 (= tp!1396037 b_and!349501)))

(declare-fun b!4978404 () Bool)

(declare-fun e!3111692 () Bool)

(assert (=> b!4978404 (= e!3111692 true)))

(declare-fun b!4978403 () Bool)

(declare-fun e!3111691 () Bool)

(assert (=> b!4978403 (= e!3111691 e!3111692)))

(declare-fun b!4978394 () Bool)

(assert (=> b!4978394 e!3111691))

(assert (= b!4978403 b!4978404))

(assert (= b!4978394 b!4978403))

(declare-fun lambda!247747 () Int)

(declare-fun order!26437 () Int)

(declare-datatypes ((C!27610 0))(
  ( (C!27611 (val!23171 Int)) )
))
(declare-datatypes ((List!57690 0))(
  ( (Nil!57566) (Cons!57566 (h!64014 C!27610) (t!369702 List!57690)) )
))
(declare-datatypes ((IArray!30459 0))(
  ( (IArray!30460 (innerList!15287 List!57690)) )
))
(declare-datatypes ((List!57691 0))(
  ( (Nil!57567) (Cons!57567 (h!64015 (_ BitVec 16)) (t!369703 List!57691)) )
))
(declare-datatypes ((Regex!13680 0))(
  ( (ElementMatch!13680 (c!849355 C!27610)) (Concat!22437 (regOne!27872 Regex!13680) (regTwo!27872 Regex!13680)) (EmptyExpr!13680) (Star!13680 (reg!14009 Regex!13680)) (EmptyLang!13680) (Union!13680 (regOne!27873 Regex!13680) (regTwo!27873 Regex!13680)) )
))
(declare-datatypes ((Conc!15199 0))(
  ( (Node!15199 (left!42063 Conc!15199) (right!42393 Conc!15199) (csize!30628 Int) (cheight!15410 Int)) (Leaf!25248 (xs!18525 IArray!30459) (csize!30629 Int)) (Empty!15199) )
))
(declare-datatypes ((BalanceConc!29828 0))(
  ( (BalanceConc!29829 (c!849356 Conc!15199)) )
))
(declare-datatypes ((TokenValue!8757 0))(
  ( (FloatLiteralValue!17514 (text!61744 List!57691)) (TokenValueExt!8756 (__x!34807 Int)) (Broken!43785 (value!270137 List!57691)) (Object!8880) (End!8757) (Def!8757) (Underscore!8757) (Match!8757) (Else!8757) (Error!8757) (Case!8757) (If!8757) (Extends!8757) (Abstract!8757) (Class!8757) (Val!8757) (DelimiterValue!17514 (del!8817 List!57691)) (KeywordValue!8763 (value!270138 List!57691)) (CommentValue!17514 (value!270139 List!57691)) (WhitespaceValue!17514 (value!270140 List!57691)) (IndentationValue!8757 (value!270141 List!57691)) (String!65660) (Int32!8757) (Broken!43786 (value!270142 List!57691)) (Boolean!8758) (Unit!148584) (OperatorValue!8760 (op!8817 List!57691)) (IdentifierValue!17514 (value!270143 List!57691)) (IdentifierValue!17515 (value!270144 List!57691)) (WhitespaceValue!17515 (value!270145 List!57691)) (True!17514) (False!17514) (Broken!43787 (value!270146 List!57691)) (Broken!43788 (value!270147 List!57691)) (True!17515) (RightBrace!8757) (RightBracket!8757) (Colon!8757) (Null!8757) (Comma!8757) (LeftBracket!8757) (False!17515) (LeftBrace!8757) (ImaginaryLiteralValue!8757 (text!61745 List!57691)) (StringLiteralValue!26271 (value!270148 List!57691)) (EOFValue!8757 (value!270149 List!57691)) (IdentValue!8757 (value!270150 List!57691)) (DelimiterValue!17515 (value!270151 List!57691)) (DedentValue!8757 (value!270152 List!57691)) (NewLineValue!8757 (value!270153 List!57691)) (IntegerValue!26271 (value!270154 (_ BitVec 32)) (text!61746 List!57691)) (IntegerValue!26272 (value!270155 Int) (text!61747 List!57691)) (Times!8757) (Or!8757) (Equal!8757) (Minus!8757) (Broken!43789 (value!270156 List!57691)) (And!8757) (Div!8757) (LessEqual!8757) (Mod!8757) (Concat!22438) (Not!8757) (Plus!8757) (SpaceValue!8757 (value!270157 List!57691)) (IntegerValue!26273 (value!270158 Int) (text!61748 List!57691)) (StringLiteralValue!26272 (text!61749 List!57691)) (FloatLiteralValue!17515 (text!61750 List!57691)) (BytesLiteralValue!8757 (value!270159 List!57691)) (CommentValue!17515 (value!270160 List!57691)) (StringLiteralValue!26273 (value!270161 List!57691)) (ErrorTokenValue!8757 (msg!8818 List!57691)) )
))
(declare-datatypes ((String!65661 0))(
  ( (String!65662 (value!270162 String)) )
))
(declare-datatypes ((TokenValueInjection!16822 0))(
  ( (TokenValueInjection!16823 (toValue!11424 Int) (toChars!11283 Int)) )
))
(declare-datatypes ((Rule!16694 0))(
  ( (Rule!16695 (regex!8447 Regex!13680) (tag!9311 String!65661) (isSeparator!8447 Bool) (transformation!8447 TokenValueInjection!16822)) )
))
(declare-fun rule!200 () Rule!16694)

(declare-fun order!26435 () Int)

(declare-fun dynLambda!23309 (Int Int) Int)

(declare-fun dynLambda!23310 (Int Int) Int)

(assert (=> b!4978404 (< (dynLambda!23309 order!26435 (toValue!11424 (transformation!8447 rule!200))) (dynLambda!23310 order!26437 lambda!247747))))

(declare-fun order!26439 () Int)

(declare-fun dynLambda!23311 (Int Int) Int)

(assert (=> b!4978404 (< (dynLambda!23311 order!26439 (toChars!11283 (transformation!8447 rule!200))) (dynLambda!23310 order!26437 lambda!247747))))

(declare-fun b!4978387 () Bool)

(declare-fun res!2125279 () Bool)

(declare-fun e!3111680 () Bool)

(assert (=> b!4978387 (=> (not res!2125279) (not e!3111680))))

(declare-fun totalInput!520 () BalanceConc!29828)

(declare-fun input!1580 () BalanceConc!29828)

(declare-fun isEmpty!31057 (BalanceConc!29828) Bool)

(declare-datatypes ((tuple2!62464 0))(
  ( (tuple2!62465 (_1!34535 BalanceConc!29828) (_2!34535 BalanceConc!29828)) )
))
(declare-fun findLongestMatchWithZipperSequenceV2!210 (Regex!13680 BalanceConc!29828 BalanceConc!29828) tuple2!62464)

(assert (=> b!4978387 (= res!2125279 (not (isEmpty!31057 (_1!34535 (findLongestMatchWithZipperSequenceV2!210 (regex!8447 rule!200) input!1580 totalInput!520)))))))

(declare-fun e!3111681 () Bool)

(assert (=> b!4978388 (= e!3111681 (and tp!1396039 tp!1396037))))

(declare-fun b!4978389 () Bool)

(declare-fun e!3111683 () Bool)

(declare-datatypes ((tuple2!62466 0))(
  ( (tuple2!62467 (_1!34536 List!57690) (_2!34536 List!57690)) )
))
(declare-fun lt!2056509 () tuple2!62466)

(declare-fun matchR!6674 (Regex!13680 List!57690) Bool)

(assert (=> b!4978389 (= e!3111683 (matchR!6674 (regex!8447 rule!200) (_1!34536 lt!2056509)))))

(declare-fun b!4978390 () Bool)

(declare-fun e!3111686 () Bool)

(assert (=> b!4978390 (= e!3111686 e!3111680)))

(declare-fun res!2125281 () Bool)

(assert (=> b!4978390 (=> (not res!2125281) (not e!3111680))))

(declare-fun lt!2056512 () List!57690)

(declare-fun isSuffix!1246 (List!57690 List!57690) Bool)

(declare-fun list!18441 (BalanceConc!29828) List!57690)

(assert (=> b!4978390 (= res!2125281 (isSuffix!1246 lt!2056512 (list!18441 totalInput!520)))))

(assert (=> b!4978390 (= lt!2056512 (list!18441 input!1580))))

(declare-fun b!4978391 () Bool)

(declare-fun res!2125278 () Bool)

(assert (=> b!4978391 (=> (not res!2125278) (not e!3111686))))

(declare-datatypes ((LexerInterface!8039 0))(
  ( (LexerInterfaceExt!8036 (__x!34808 Int)) (Lexer!8037) )
))
(declare-fun thiss!16165 () LexerInterface!8039)

(declare-fun ruleValid!3855 (LexerInterface!8039 Rule!16694) Bool)

(assert (=> b!4978391 (= res!2125278 (ruleValid!3855 thiss!16165 rule!200))))

(declare-fun b!4978392 () Bool)

(declare-fun e!3111679 () Bool)

(declare-fun tp!1396038 () Bool)

(declare-fun inv!75363 (Conc!15199) Bool)

(assert (=> b!4978392 (= e!3111679 (and (inv!75363 (c!849356 input!1580)) tp!1396038))))

(declare-fun b!4978393 () Bool)

(declare-fun e!3111685 () Bool)

(declare-fun tp!1396040 () Bool)

(assert (=> b!4978393 (= e!3111685 (and (inv!75363 (c!849356 totalInput!520)) tp!1396040))))

(declare-fun e!3111678 () Bool)

(declare-fun Forall!1797 (Int) Bool)

(assert (=> b!4978394 (= e!3111678 (Forall!1797 lambda!247747))))

(declare-fun e!3111682 () Bool)

(declare-fun tp!1396041 () Bool)

(declare-fun b!4978395 () Bool)

(declare-fun inv!75360 (String!65661) Bool)

(declare-fun inv!75364 (TokenValueInjection!16822) Bool)

(assert (=> b!4978395 (= e!3111682 (and tp!1396041 (inv!75360 (tag!9311 rule!200)) (inv!75364 (transformation!8447 rule!200)) e!3111681))))

(declare-fun res!2125277 () Bool)

(assert (=> start!525256 (=> (not res!2125277) (not e!3111686))))

(assert (=> start!525256 (= res!2125277 (is-Lexer!8037 thiss!16165))))

(assert (=> start!525256 e!3111686))

(assert (=> start!525256 true))

(assert (=> start!525256 e!3111682))

(declare-fun inv!75365 (BalanceConc!29828) Bool)

(assert (=> start!525256 (and (inv!75365 input!1580) e!3111679)))

(assert (=> start!525256 (and (inv!75365 totalInput!520) e!3111685)))

(declare-fun b!4978396 () Bool)

(assert (=> b!4978396 (= e!3111680 (not e!3111678))))

(declare-fun res!2125276 () Bool)

(assert (=> b!4978396 (=> res!2125276 e!3111678)))

(declare-fun semiInverseModEq!3740 (Int Int) Bool)

(assert (=> b!4978396 (= res!2125276 (not (semiInverseModEq!3740 (toChars!11283 (transformation!8447 rule!200)) (toValue!11424 (transformation!8447 rule!200)))))))

(declare-datatypes ((Unit!148585 0))(
  ( (Unit!148586) )
))
(declare-fun lt!2056511 () Unit!148585)

(declare-fun lemmaInv!1370 (TokenValueInjection!16822) Unit!148585)

(assert (=> b!4978396 (= lt!2056511 (lemmaInv!1370 (transformation!8447 rule!200)))))

(assert (=> b!4978396 e!3111683))

(declare-fun res!2125280 () Bool)

(assert (=> b!4978396 (=> res!2125280 e!3111683)))

(declare-fun isEmpty!31058 (List!57690) Bool)

(assert (=> b!4978396 (= res!2125280 (isEmpty!31058 (_1!34536 lt!2056509)))))

(declare-fun findLongestMatchInner!1891 (Regex!13680 List!57690 Int List!57690 List!57690 Int) tuple2!62466)

(declare-fun size!38184 (List!57690) Int)

(assert (=> b!4978396 (= lt!2056509 (findLongestMatchInner!1891 (regex!8447 rule!200) Nil!57566 (size!38184 Nil!57566) lt!2056512 lt!2056512 (size!38184 lt!2056512)))))

(declare-fun lt!2056510 () Unit!148585)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1852 (Regex!13680 List!57690) Unit!148585)

(assert (=> b!4978396 (= lt!2056510 (longestMatchIsAcceptedByMatchOrIsEmpty!1852 (regex!8447 rule!200) lt!2056512))))

(assert (= (and start!525256 res!2125277) b!4978391))

(assert (= (and b!4978391 res!2125278) b!4978390))

(assert (= (and b!4978390 res!2125281) b!4978387))

(assert (= (and b!4978387 res!2125279) b!4978396))

(assert (= (and b!4978396 (not res!2125280)) b!4978389))

(assert (= (and b!4978396 (not res!2125276)) b!4978394))

(assert (= b!4978395 b!4978388))

(assert (= start!525256 b!4978395))

(assert (= start!525256 b!4978392))

(assert (= start!525256 b!4978393))

(declare-fun m!6008934 () Bool)

(assert (=> b!4978390 m!6008934))

(assert (=> b!4978390 m!6008934))

(declare-fun m!6008936 () Bool)

(assert (=> b!4978390 m!6008936))

(declare-fun m!6008938 () Bool)

(assert (=> b!4978390 m!6008938))

(declare-fun m!6008940 () Bool)

(assert (=> b!4978391 m!6008940))

(declare-fun m!6008942 () Bool)

(assert (=> b!4978389 m!6008942))

(declare-fun m!6008944 () Bool)

(assert (=> b!4978392 m!6008944))

(declare-fun m!6008946 () Bool)

(assert (=> b!4978393 m!6008946))

(declare-fun m!6008948 () Bool)

(assert (=> start!525256 m!6008948))

(declare-fun m!6008950 () Bool)

(assert (=> start!525256 m!6008950))

(declare-fun m!6008952 () Bool)

(assert (=> b!4978396 m!6008952))

(declare-fun m!6008954 () Bool)

(assert (=> b!4978396 m!6008954))

(declare-fun m!6008956 () Bool)

(assert (=> b!4978396 m!6008956))

(declare-fun m!6008958 () Bool)

(assert (=> b!4978396 m!6008958))

(declare-fun m!6008960 () Bool)

(assert (=> b!4978396 m!6008960))

(declare-fun m!6008962 () Bool)

(assert (=> b!4978396 m!6008962))

(assert (=> b!4978396 m!6008956))

(assert (=> b!4978396 m!6008954))

(declare-fun m!6008964 () Bool)

(assert (=> b!4978396 m!6008964))

(declare-fun m!6008966 () Bool)

(assert (=> b!4978395 m!6008966))

(declare-fun m!6008968 () Bool)

(assert (=> b!4978395 m!6008968))

(declare-fun m!6008970 () Bool)

(assert (=> b!4978387 m!6008970))

(declare-fun m!6008972 () Bool)

(assert (=> b!4978387 m!6008972))

(declare-fun m!6008974 () Bool)

(assert (=> b!4978394 m!6008974))

(push 1)

(assert (not b!4978395))

(assert (not b!4978389))

(assert (not b!4978394))

(assert (not start!525256))

(assert b_and!349499)

(assert (not b!4978393))

(assert (not b!4978390))

(assert (not b_next!133879))

(assert (not b!4978391))

(assert b_and!349501)

(assert (not b!4978392))

(assert (not b!4978387))

(assert (not b_next!133877))

(assert (not b!4978396))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349501)

(assert b_and!349499)

(assert (not b_next!133879))

(assert (not b_next!133877))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1603013 () Bool)

(declare-fun choose!36740 (Int) Bool)

(assert (=> d!1603013 (= (Forall!1797 lambda!247747) (choose!36740 lambda!247747))))

(declare-fun bs!1184039 () Bool)

(assert (= bs!1184039 d!1603013))

(declare-fun m!6009018 () Bool)

(assert (=> bs!1184039 m!6009018))

(assert (=> b!4978394 d!1603013))

(declare-fun b!4978471 () Bool)

(declare-fun res!2125326 () Bool)

(declare-fun e!3111743 () Bool)

(assert (=> b!4978471 (=> (not res!2125326) (not e!3111743))))

(declare-fun call!347140 () Bool)

(assert (=> b!4978471 (= res!2125326 (not call!347140))))

(declare-fun b!4978472 () Bool)

(declare-fun head!10681 (List!57690) C!27610)

(assert (=> b!4978472 (= e!3111743 (= (head!10681 (_1!34536 lt!2056509)) (c!849355 (regex!8447 rule!200))))))

(declare-fun b!4978473 () Bool)

(declare-fun e!3111742 () Bool)

(declare-fun lt!2056527 () Bool)

(assert (=> b!4978473 (= e!3111742 (= lt!2056527 call!347140))))

(declare-fun b!4978474 () Bool)

(declare-fun e!3111740 () Bool)

(declare-fun derivativeStep!3932 (Regex!13680 C!27610) Regex!13680)

(declare-fun tail!9814 (List!57690) List!57690)

(assert (=> b!4978474 (= e!3111740 (matchR!6674 (derivativeStep!3932 (regex!8447 rule!200) (head!10681 (_1!34536 lt!2056509))) (tail!9814 (_1!34536 lt!2056509))))))

(declare-fun bm!347135 () Bool)

(assert (=> bm!347135 (= call!347140 (isEmpty!31058 (_1!34536 lt!2056509)))))

(declare-fun d!1603015 () Bool)

(assert (=> d!1603015 e!3111742))

(declare-fun c!849367 () Bool)

(assert (=> d!1603015 (= c!849367 (is-EmptyExpr!13680 (regex!8447 rule!200)))))

(assert (=> d!1603015 (= lt!2056527 e!3111740)))

(declare-fun c!849365 () Bool)

(assert (=> d!1603015 (= c!849365 (isEmpty!31058 (_1!34536 lt!2056509)))))

(declare-fun validRegex!5981 (Regex!13680) Bool)

(assert (=> d!1603015 (validRegex!5981 (regex!8447 rule!200))))

(assert (=> d!1603015 (= (matchR!6674 (regex!8447 rule!200) (_1!34536 lt!2056509)) lt!2056527)))

(declare-fun b!4978475 () Bool)

(declare-fun res!2125325 () Bool)

(declare-fun e!3111745 () Bool)

(assert (=> b!4978475 (=> res!2125325 e!3111745)))

(assert (=> b!4978475 (= res!2125325 (not (is-ElementMatch!13680 (regex!8447 rule!200))))))

(declare-fun e!3111741 () Bool)

(assert (=> b!4978475 (= e!3111741 e!3111745)))

(declare-fun b!4978476 () Bool)

(assert (=> b!4978476 (= e!3111742 e!3111741)))

(declare-fun c!849366 () Bool)

(assert (=> b!4978476 (= c!849366 (is-EmptyLang!13680 (regex!8447 rule!200)))))

(declare-fun b!4978477 () Bool)

(declare-fun res!2125320 () Bool)

(assert (=> b!4978477 (=> res!2125320 e!3111745)))

(assert (=> b!4978477 (= res!2125320 e!3111743)))

(declare-fun res!2125321 () Bool)

(assert (=> b!4978477 (=> (not res!2125321) (not e!3111743))))

(assert (=> b!4978477 (= res!2125321 lt!2056527)))

(declare-fun b!4978478 () Bool)

(declare-fun e!3111744 () Bool)

(assert (=> b!4978478 (= e!3111745 e!3111744)))

(declare-fun res!2125324 () Bool)

(assert (=> b!4978478 (=> (not res!2125324) (not e!3111744))))

(assert (=> b!4978478 (= res!2125324 (not lt!2056527))))

(declare-fun b!4978479 () Bool)

(declare-fun nullable!4632 (Regex!13680) Bool)

(assert (=> b!4978479 (= e!3111740 (nullable!4632 (regex!8447 rule!200)))))

(declare-fun b!4978480 () Bool)

(declare-fun e!3111746 () Bool)

(assert (=> b!4978480 (= e!3111746 (not (= (head!10681 (_1!34536 lt!2056509)) (c!849355 (regex!8447 rule!200)))))))

(declare-fun b!4978481 () Bool)

(declare-fun res!2125327 () Bool)

(assert (=> b!4978481 (=> (not res!2125327) (not e!3111743))))

(assert (=> b!4978481 (= res!2125327 (isEmpty!31058 (tail!9814 (_1!34536 lt!2056509))))))

(declare-fun b!4978482 () Bool)

(assert (=> b!4978482 (= e!3111741 (not lt!2056527))))

(declare-fun b!4978483 () Bool)

(declare-fun res!2125322 () Bool)

(assert (=> b!4978483 (=> res!2125322 e!3111746)))

(assert (=> b!4978483 (= res!2125322 (not (isEmpty!31058 (tail!9814 (_1!34536 lt!2056509)))))))

(declare-fun b!4978484 () Bool)

(assert (=> b!4978484 (= e!3111744 e!3111746)))

(declare-fun res!2125323 () Bool)

(assert (=> b!4978484 (=> res!2125323 e!3111746)))

(assert (=> b!4978484 (= res!2125323 call!347140)))

(assert (= (and d!1603015 c!849365) b!4978479))

(assert (= (and d!1603015 (not c!849365)) b!4978474))

(assert (= (and d!1603015 c!849367) b!4978473))

(assert (= (and d!1603015 (not c!849367)) b!4978476))

(assert (= (and b!4978476 c!849366) b!4978482))

(assert (= (and b!4978476 (not c!849366)) b!4978475))

(assert (= (and b!4978475 (not res!2125325)) b!4978477))

(assert (= (and b!4978477 res!2125321) b!4978471))

(assert (= (and b!4978471 res!2125326) b!4978481))

(assert (= (and b!4978481 res!2125327) b!4978472))

(assert (= (and b!4978477 (not res!2125320)) b!4978478))

(assert (= (and b!4978478 res!2125324) b!4978484))

(assert (= (and b!4978484 (not res!2125323)) b!4978483))

(assert (= (and b!4978483 (not res!2125322)) b!4978480))

(assert (= (or b!4978473 b!4978471 b!4978484) bm!347135))

(assert (=> d!1603015 m!6008962))

(declare-fun m!6009020 () Bool)

(assert (=> d!1603015 m!6009020))

(declare-fun m!6009022 () Bool)

(assert (=> b!4978474 m!6009022))

(assert (=> b!4978474 m!6009022))

(declare-fun m!6009024 () Bool)

(assert (=> b!4978474 m!6009024))

(declare-fun m!6009026 () Bool)

(assert (=> b!4978474 m!6009026))

(assert (=> b!4978474 m!6009024))

(assert (=> b!4978474 m!6009026))

(declare-fun m!6009028 () Bool)

(assert (=> b!4978474 m!6009028))

(assert (=> b!4978483 m!6009026))

(assert (=> b!4978483 m!6009026))

(declare-fun m!6009030 () Bool)

(assert (=> b!4978483 m!6009030))

(assert (=> bm!347135 m!6008962))

(assert (=> b!4978472 m!6009022))

(declare-fun m!6009032 () Bool)

(assert (=> b!4978479 m!6009032))

(assert (=> b!4978480 m!6009022))

(assert (=> b!4978481 m!6009026))

(assert (=> b!4978481 m!6009026))

(assert (=> b!4978481 m!6009030))

(assert (=> b!4978389 d!1603015))

(declare-fun d!1603017 () Bool)

(declare-fun c!849370 () Bool)

(assert (=> d!1603017 (= c!849370 (is-Node!15199 (c!849356 totalInput!520)))))

(declare-fun e!3111751 () Bool)

(assert (=> d!1603017 (= (inv!75363 (c!849356 totalInput!520)) e!3111751)))

(declare-fun b!4978491 () Bool)

(declare-fun inv!75369 (Conc!15199) Bool)

(assert (=> b!4978491 (= e!3111751 (inv!75369 (c!849356 totalInput!520)))))

(declare-fun b!4978492 () Bool)

(declare-fun e!3111752 () Bool)

(assert (=> b!4978492 (= e!3111751 e!3111752)))

(declare-fun res!2125330 () Bool)

(assert (=> b!4978492 (= res!2125330 (not (is-Leaf!25248 (c!849356 totalInput!520))))))

(assert (=> b!4978492 (=> res!2125330 e!3111752)))

(declare-fun b!4978493 () Bool)

(declare-fun inv!75370 (Conc!15199) Bool)

(assert (=> b!4978493 (= e!3111752 (inv!75370 (c!849356 totalInput!520)))))

(assert (= (and d!1603017 c!849370) b!4978491))

(assert (= (and d!1603017 (not c!849370)) b!4978492))

(assert (= (and b!4978492 (not res!2125330)) b!4978493))

(declare-fun m!6009034 () Bool)

(assert (=> b!4978491 m!6009034))

(declare-fun m!6009036 () Bool)

(assert (=> b!4978493 m!6009036))

(assert (=> b!4978393 d!1603017))

(declare-fun d!1603019 () Bool)

(declare-fun c!849371 () Bool)

(assert (=> d!1603019 (= c!849371 (is-Node!15199 (c!849356 input!1580)))))

(declare-fun e!3111753 () Bool)

(assert (=> d!1603019 (= (inv!75363 (c!849356 input!1580)) e!3111753)))

(declare-fun b!4978494 () Bool)

(assert (=> b!4978494 (= e!3111753 (inv!75369 (c!849356 input!1580)))))

(declare-fun b!4978495 () Bool)

(declare-fun e!3111754 () Bool)

(assert (=> b!4978495 (= e!3111753 e!3111754)))

(declare-fun res!2125331 () Bool)

(assert (=> b!4978495 (= res!2125331 (not (is-Leaf!25248 (c!849356 input!1580))))))

(assert (=> b!4978495 (=> res!2125331 e!3111754)))

(declare-fun b!4978496 () Bool)

(assert (=> b!4978496 (= e!3111754 (inv!75370 (c!849356 input!1580)))))

(assert (= (and d!1603019 c!849371) b!4978494))

(assert (= (and d!1603019 (not c!849371)) b!4978495))

(assert (= (and b!4978495 (not res!2125331)) b!4978496))

(declare-fun m!6009038 () Bool)

(assert (=> b!4978494 m!6009038))

(declare-fun m!6009040 () Bool)

(assert (=> b!4978496 m!6009040))

(assert (=> b!4978392 d!1603019))

(declare-fun lt!2056530 () Bool)

(declare-fun d!1603021 () Bool)

(assert (=> d!1603021 (= lt!2056530 (isEmpty!31058 (list!18441 (_1!34535 (findLongestMatchWithZipperSequenceV2!210 (regex!8447 rule!200) input!1580 totalInput!520)))))))

(declare-fun isEmpty!31061 (Conc!15199) Bool)

(assert (=> d!1603021 (= lt!2056530 (isEmpty!31061 (c!849356 (_1!34535 (findLongestMatchWithZipperSequenceV2!210 (regex!8447 rule!200) input!1580 totalInput!520)))))))

(assert (=> d!1603021 (= (isEmpty!31057 (_1!34535 (findLongestMatchWithZipperSequenceV2!210 (regex!8447 rule!200) input!1580 totalInput!520))) lt!2056530)))

(declare-fun bs!1184040 () Bool)

(assert (= bs!1184040 d!1603021))

(declare-fun m!6009042 () Bool)

(assert (=> bs!1184040 m!6009042))

(assert (=> bs!1184040 m!6009042))

(declare-fun m!6009044 () Bool)

(assert (=> bs!1184040 m!6009044))

(declare-fun m!6009046 () Bool)

(assert (=> bs!1184040 m!6009046))

(assert (=> b!4978387 d!1603021))

(declare-fun d!1603023 () Bool)

(declare-fun lt!2056533 () tuple2!62464)

(declare-fun findLongestMatch!1707 (Regex!13680 List!57690) tuple2!62466)

(assert (=> d!1603023 (= (tuple2!62467 (list!18441 (_1!34535 lt!2056533)) (list!18441 (_2!34535 lt!2056533))) (findLongestMatch!1707 (regex!8447 rule!200) (list!18441 input!1580)))))

(declare-fun choose!36741 (Regex!13680 BalanceConc!29828 BalanceConc!29828) tuple2!62464)

(assert (=> d!1603023 (= lt!2056533 (choose!36741 (regex!8447 rule!200) input!1580 totalInput!520))))

(assert (=> d!1603023 (validRegex!5981 (regex!8447 rule!200))))

(assert (=> d!1603023 (= (findLongestMatchWithZipperSequenceV2!210 (regex!8447 rule!200) input!1580 totalInput!520) lt!2056533)))

(declare-fun bs!1184041 () Bool)

(assert (= bs!1184041 d!1603023))

(declare-fun m!6009048 () Bool)

(assert (=> bs!1184041 m!6009048))

(declare-fun m!6009050 () Bool)

(assert (=> bs!1184041 m!6009050))

(declare-fun m!6009052 () Bool)

(assert (=> bs!1184041 m!6009052))

(assert (=> bs!1184041 m!6009020))

(assert (=> bs!1184041 m!6008938))

(assert (=> bs!1184041 m!6008938))

(declare-fun m!6009054 () Bool)

(assert (=> bs!1184041 m!6009054))

(assert (=> b!4978387 d!1603023))

(declare-fun d!1603025 () Bool)

(declare-fun e!3111760 () Bool)

(assert (=> d!1603025 e!3111760))

(declare-fun res!2125337 () Bool)

(assert (=> d!1603025 (=> res!2125337 e!3111760)))

(assert (=> d!1603025 (= res!2125337 (isEmpty!31058 (_1!34536 (findLongestMatchInner!1891 (regex!8447 rule!200) Nil!57566 (size!38184 Nil!57566) lt!2056512 lt!2056512 (size!38184 lt!2056512)))))))

(declare-fun lt!2056539 () Unit!148585)

(declare-fun choose!36742 (Regex!13680 List!57690) Unit!148585)

(assert (=> d!1603025 (= lt!2056539 (choose!36742 (regex!8447 rule!200) lt!2056512))))

(assert (=> d!1603025 (validRegex!5981 (regex!8447 rule!200))))

(assert (=> d!1603025 (= (longestMatchIsAcceptedByMatchOrIsEmpty!1852 (regex!8447 rule!200) lt!2056512) lt!2056539)))

(declare-fun b!4978502 () Bool)

(assert (=> b!4978502 (= e!3111760 (matchR!6674 (regex!8447 rule!200) (_1!34536 (findLongestMatchInner!1891 (regex!8447 rule!200) Nil!57566 (size!38184 Nil!57566) lt!2056512 lt!2056512 (size!38184 lt!2056512)))))))

(assert (= (and d!1603025 (not res!2125337)) b!4978502))

(declare-fun m!6009060 () Bool)

(assert (=> d!1603025 m!6009060))

(declare-fun m!6009062 () Bool)

(assert (=> d!1603025 m!6009062))

(assert (=> d!1603025 m!6008954))

(assert (=> d!1603025 m!6008954))

(assert (=> d!1603025 m!6008956))

(assert (=> d!1603025 m!6008958))

(assert (=> d!1603025 m!6008956))

(assert (=> d!1603025 m!6009020))

(assert (=> b!4978502 m!6008954))

(assert (=> b!4978502 m!6008956))

(assert (=> b!4978502 m!6008954))

(assert (=> b!4978502 m!6008956))

(assert (=> b!4978502 m!6008958))

(declare-fun m!6009064 () Bool)

(assert (=> b!4978502 m!6009064))

(assert (=> b!4978396 d!1603025))

(declare-fun d!1603031 () Bool)

(declare-fun lt!2056542 () Int)

(assert (=> d!1603031 (>= lt!2056542 0)))

(declare-fun e!3111763 () Int)

(assert (=> d!1603031 (= lt!2056542 e!3111763)))

(declare-fun c!849374 () Bool)

(assert (=> d!1603031 (= c!849374 (is-Nil!57566 lt!2056512))))

(assert (=> d!1603031 (= (size!38184 lt!2056512) lt!2056542)))

(declare-fun b!4978507 () Bool)

(assert (=> b!4978507 (= e!3111763 0)))

(declare-fun b!4978508 () Bool)

(assert (=> b!4978508 (= e!3111763 (+ 1 (size!38184 (t!369702 lt!2056512))))))

(assert (= (and d!1603031 c!849374) b!4978507))

(assert (= (and d!1603031 (not c!849374)) b!4978508))

(declare-fun m!6009070 () Bool)

(assert (=> b!4978508 m!6009070))

(assert (=> b!4978396 d!1603031))

(declare-fun bm!347155 () Bool)

(declare-fun call!347165 () Regex!13680)

(declare-fun call!347167 () C!27610)

(assert (=> bm!347155 (= call!347165 (derivativeStep!3932 (regex!8447 rule!200) call!347167))))

(declare-fun b!4978594 () Bool)

(declare-fun e!3111817 () Bool)

(declare-fun e!3111819 () Bool)

(assert (=> b!4978594 (= e!3111817 e!3111819)))

(declare-fun res!2125374 () Bool)

(assert (=> b!4978594 (=> res!2125374 e!3111819)))

(declare-fun lt!2056623 () tuple2!62466)

(assert (=> b!4978594 (= res!2125374 (isEmpty!31058 (_1!34536 lt!2056623)))))

(declare-fun bm!347156 () Bool)

(declare-fun call!347163 () Unit!148585)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1218 (List!57690 List!57690 List!57690) Unit!148585)

(assert (=> bm!347156 (= call!347163 (lemmaIsPrefixSameLengthThenSameList!1218 lt!2056512 Nil!57566 lt!2056512))))

(declare-fun bm!347157 () Bool)

(declare-fun lt!2056619 () List!57690)

(declare-fun call!347164 () List!57690)

(declare-fun call!347160 () tuple2!62466)

(assert (=> bm!347157 (= call!347160 (findLongestMatchInner!1891 call!347165 lt!2056619 (+ (size!38184 Nil!57566) 1) call!347164 lt!2056512 (size!38184 lt!2056512)))))

(declare-fun b!4978595 () Bool)

(declare-fun e!3111814 () tuple2!62466)

(assert (=> b!4978595 (= e!3111814 (tuple2!62467 Nil!57566 lt!2056512))))

(declare-fun b!4978596 () Bool)

(declare-fun e!3111815 () tuple2!62466)

(declare-fun e!3111818 () tuple2!62466)

(assert (=> b!4978596 (= e!3111815 e!3111818)))

(declare-fun lt!2056617 () tuple2!62466)

(assert (=> b!4978596 (= lt!2056617 call!347160)))

(declare-fun c!849403 () Bool)

(assert (=> b!4978596 (= c!849403 (isEmpty!31058 (_1!34536 lt!2056617)))))

(declare-fun bm!347158 () Bool)

(assert (=> bm!347158 (= call!347167 (head!10681 lt!2056512))))

(declare-fun b!4978597 () Bool)

(assert (=> b!4978597 (= e!3111819 (>= (size!38184 (_1!34536 lt!2056623)) (size!38184 Nil!57566)))))

(declare-fun b!4978598 () Bool)

(declare-fun c!849405 () Bool)

(declare-fun call!347166 () Bool)

(assert (=> b!4978598 (= c!849405 call!347166)))

(declare-fun lt!2056618 () Unit!148585)

(declare-fun lt!2056622 () Unit!148585)

(assert (=> b!4978598 (= lt!2056618 lt!2056622)))

(declare-fun lt!2056621 () C!27610)

(declare-fun lt!2056611 () List!57690)

(declare-fun ++!12544 (List!57690 List!57690) List!57690)

(assert (=> b!4978598 (= (++!12544 (++!12544 Nil!57566 (Cons!57566 lt!2056621 Nil!57566)) lt!2056611) lt!2056512)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1455 (List!57690 C!27610 List!57690 List!57690) Unit!148585)

(assert (=> b!4978598 (= lt!2056622 (lemmaMoveElementToOtherListKeepsConcatEq!1455 Nil!57566 lt!2056621 lt!2056611 lt!2056512))))

(assert (=> b!4978598 (= lt!2056611 (tail!9814 lt!2056512))))

(assert (=> b!4978598 (= lt!2056621 (head!10681 lt!2056512))))

(declare-fun lt!2056630 () Unit!148585)

(declare-fun lt!2056628 () Unit!148585)

(assert (=> b!4978598 (= lt!2056630 lt!2056628)))

(declare-fun isPrefix!5258 (List!57690 List!57690) Bool)

(declare-fun getSuffix!3098 (List!57690 List!57690) List!57690)

(assert (=> b!4978598 (isPrefix!5258 (++!12544 Nil!57566 (Cons!57566 (head!10681 (getSuffix!3098 lt!2056512 Nil!57566)) Nil!57566)) lt!2056512)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!845 (List!57690 List!57690) Unit!148585)

(assert (=> b!4978598 (= lt!2056628 (lemmaAddHeadSuffixToPrefixStillPrefix!845 Nil!57566 lt!2056512))))

(declare-fun lt!2056633 () Unit!148585)

(declare-fun lt!2056629 () Unit!148585)

(assert (=> b!4978598 (= lt!2056633 lt!2056629)))

(assert (=> b!4978598 (= lt!2056629 (lemmaAddHeadSuffixToPrefixStillPrefix!845 Nil!57566 lt!2056512))))

(assert (=> b!4978598 (= lt!2056619 (++!12544 Nil!57566 (Cons!57566 (head!10681 lt!2056512) Nil!57566)))))

(declare-fun lt!2056607 () Unit!148585)

(declare-fun e!3111812 () Unit!148585)

(assert (=> b!4978598 (= lt!2056607 e!3111812)))

(declare-fun c!849400 () Bool)

(assert (=> b!4978598 (= c!849400 (= (size!38184 Nil!57566) (size!38184 lt!2056512)))))

(declare-fun lt!2056609 () Unit!148585)

(declare-fun lt!2056631 () Unit!148585)

(assert (=> b!4978598 (= lt!2056609 lt!2056631)))

(assert (=> b!4978598 (<= (size!38184 Nil!57566) (size!38184 lt!2056512))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!771 (List!57690 List!57690) Unit!148585)

(assert (=> b!4978598 (= lt!2056631 (lemmaIsPrefixThenSmallerEqSize!771 Nil!57566 lt!2056512))))

(declare-fun e!3111813 () tuple2!62466)

(assert (=> b!4978598 (= e!3111813 e!3111815)))

(declare-fun d!1603037 () Bool)

(assert (=> d!1603037 e!3111817))

(declare-fun res!2125373 () Bool)

(assert (=> d!1603037 (=> (not res!2125373) (not e!3111817))))

(assert (=> d!1603037 (= res!2125373 (= (++!12544 (_1!34536 lt!2056623) (_2!34536 lt!2056623)) lt!2056512))))

(declare-fun e!3111816 () tuple2!62466)

(assert (=> d!1603037 (= lt!2056623 e!3111816)))

(declare-fun c!849401 () Bool)

(declare-fun lostCause!1142 (Regex!13680) Bool)

(assert (=> d!1603037 (= c!849401 (lostCause!1142 (regex!8447 rule!200)))))

(declare-fun lt!2056615 () Unit!148585)

(declare-fun Unit!148590 () Unit!148585)

(assert (=> d!1603037 (= lt!2056615 Unit!148590)))

(assert (=> d!1603037 (= (getSuffix!3098 lt!2056512 Nil!57566) lt!2056512)))

(declare-fun lt!2056625 () Unit!148585)

(declare-fun lt!2056627 () Unit!148585)

(assert (=> d!1603037 (= lt!2056625 lt!2056627)))

(declare-fun lt!2056634 () List!57690)

(assert (=> d!1603037 (= lt!2056512 lt!2056634)))

(declare-fun lemmaSamePrefixThenSameSuffix!2510 (List!57690 List!57690 List!57690 List!57690 List!57690) Unit!148585)

(assert (=> d!1603037 (= lt!2056627 (lemmaSamePrefixThenSameSuffix!2510 Nil!57566 lt!2056512 Nil!57566 lt!2056634 lt!2056512))))

(assert (=> d!1603037 (= lt!2056634 (getSuffix!3098 lt!2056512 Nil!57566))))

(declare-fun lt!2056624 () Unit!148585)

(declare-fun lt!2056620 () Unit!148585)

(assert (=> d!1603037 (= lt!2056624 lt!2056620)))

(assert (=> d!1603037 (isPrefix!5258 Nil!57566 (++!12544 Nil!57566 lt!2056512))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3356 (List!57690 List!57690) Unit!148585)

(assert (=> d!1603037 (= lt!2056620 (lemmaConcatTwoListThenFirstIsPrefix!3356 Nil!57566 lt!2056512))))

(assert (=> d!1603037 (validRegex!5981 (regex!8447 rule!200))))

(assert (=> d!1603037 (= (findLongestMatchInner!1891 (regex!8447 rule!200) Nil!57566 (size!38184 Nil!57566) lt!2056512 lt!2056512 (size!38184 lt!2056512)) lt!2056623)))

(declare-fun b!4978599 () Bool)

(assert (=> b!4978599 (= e!3111814 (tuple2!62467 Nil!57566 Nil!57566))))

(declare-fun b!4978600 () Bool)

(declare-fun Unit!148591 () Unit!148585)

(assert (=> b!4978600 (= e!3111812 Unit!148591)))

(declare-fun lt!2056612 () Unit!148585)

(declare-fun call!347161 () Unit!148585)

(assert (=> b!4978600 (= lt!2056612 call!347161)))

(declare-fun call!347162 () Bool)

(assert (=> b!4978600 call!347162))

(declare-fun lt!2056608 () Unit!148585)

(assert (=> b!4978600 (= lt!2056608 lt!2056612)))

(declare-fun lt!2056614 () Unit!148585)

(assert (=> b!4978600 (= lt!2056614 call!347163)))

(assert (=> b!4978600 (= lt!2056512 Nil!57566)))

(declare-fun lt!2056616 () Unit!148585)

(assert (=> b!4978600 (= lt!2056616 lt!2056614)))

(assert (=> b!4978600 false))

(declare-fun bm!347159 () Bool)

(assert (=> bm!347159 (= call!347164 (tail!9814 lt!2056512))))

(declare-fun b!4978601 () Bool)

(declare-fun c!849404 () Bool)

(assert (=> b!4978601 (= c!849404 call!347166)))

(declare-fun lt!2056632 () Unit!148585)

(declare-fun lt!2056613 () Unit!148585)

(assert (=> b!4978601 (= lt!2056632 lt!2056613)))

(assert (=> b!4978601 (= lt!2056512 Nil!57566)))

(assert (=> b!4978601 (= lt!2056613 call!347163)))

(declare-fun lt!2056626 () Unit!148585)

(declare-fun lt!2056610 () Unit!148585)

(assert (=> b!4978601 (= lt!2056626 lt!2056610)))

(assert (=> b!4978601 call!347162))

(assert (=> b!4978601 (= lt!2056610 call!347161)))

(assert (=> b!4978601 (= e!3111813 e!3111814)))

(declare-fun b!4978602 () Bool)

(assert (=> b!4978602 (= e!3111818 (tuple2!62467 Nil!57566 lt!2056512))))

(declare-fun b!4978603 () Bool)

(assert (=> b!4978603 (= e!3111816 (tuple2!62467 Nil!57566 lt!2056512))))

(declare-fun bm!347160 () Bool)

(assert (=> bm!347160 (= call!347162 (isPrefix!5258 lt!2056512 lt!2056512))))

(declare-fun b!4978604 () Bool)

(assert (=> b!4978604 (= e!3111815 call!347160)))

(declare-fun bm!347161 () Bool)

(assert (=> bm!347161 (= call!347166 (nullable!4632 (regex!8447 rule!200)))))

(declare-fun b!4978605 () Bool)

(assert (=> b!4978605 (= e!3111816 e!3111813)))

(declare-fun c!849402 () Bool)

(assert (=> b!4978605 (= c!849402 (= (size!38184 Nil!57566) (size!38184 lt!2056512)))))

(declare-fun b!4978606 () Bool)

(assert (=> b!4978606 (= e!3111818 lt!2056617)))

(declare-fun b!4978607 () Bool)

(declare-fun Unit!148592 () Unit!148585)

(assert (=> b!4978607 (= e!3111812 Unit!148592)))

(declare-fun bm!347162 () Bool)

(declare-fun lemmaIsPrefixRefl!3582 (List!57690 List!57690) Unit!148585)

(assert (=> bm!347162 (= call!347161 (lemmaIsPrefixRefl!3582 lt!2056512 lt!2056512))))

(assert (= (and d!1603037 c!849401) b!4978603))

(assert (= (and d!1603037 (not c!849401)) b!4978605))

(assert (= (and b!4978605 c!849402) b!4978601))

(assert (= (and b!4978605 (not c!849402)) b!4978598))

(assert (= (and b!4978601 c!849404) b!4978599))

(assert (= (and b!4978601 (not c!849404)) b!4978595))

(assert (= (and b!4978598 c!849400) b!4978600))

(assert (= (and b!4978598 (not c!849400)) b!4978607))

(assert (= (and b!4978598 c!849405) b!4978596))

(assert (= (and b!4978598 (not c!849405)) b!4978604))

(assert (= (and b!4978596 c!849403) b!4978602))

(assert (= (and b!4978596 (not c!849403)) b!4978606))

(assert (= (or b!4978596 b!4978604) bm!347158))

(assert (= (or b!4978596 b!4978604) bm!347159))

(assert (= (or b!4978596 b!4978604) bm!347155))

(assert (= (or b!4978596 b!4978604) bm!347157))

(assert (= (or b!4978601 b!4978600) bm!347160))

(assert (= (or b!4978601 b!4978600) bm!347156))

(assert (= (or b!4978601 b!4978600) bm!347162))

(assert (= (or b!4978601 b!4978598) bm!347161))

(assert (= (and d!1603037 res!2125373) b!4978594))

(assert (= (and b!4978594 (not res!2125374)) b!4978597))

(declare-fun m!6009112 () Bool)

(assert (=> bm!347162 m!6009112))

(declare-fun m!6009114 () Bool)

(assert (=> d!1603037 m!6009114))

(declare-fun m!6009116 () Bool)

(assert (=> d!1603037 m!6009116))

(declare-fun m!6009118 () Bool)

(assert (=> d!1603037 m!6009118))

(declare-fun m!6009120 () Bool)

(assert (=> d!1603037 m!6009120))

(declare-fun m!6009122 () Bool)

(assert (=> d!1603037 m!6009122))

(assert (=> d!1603037 m!6009020))

(declare-fun m!6009124 () Bool)

(assert (=> d!1603037 m!6009124))

(assert (=> d!1603037 m!6009122))

(declare-fun m!6009126 () Bool)

(assert (=> d!1603037 m!6009126))

(declare-fun m!6009128 () Bool)

(assert (=> b!4978597 m!6009128))

(assert (=> b!4978597 m!6008954))

(declare-fun m!6009130 () Bool)

(assert (=> b!4978596 m!6009130))

(declare-fun m!6009132 () Bool)

(assert (=> b!4978594 m!6009132))

(declare-fun m!6009134 () Bool)

(assert (=> bm!347155 m!6009134))

(assert (=> bm!347157 m!6008956))

(declare-fun m!6009136 () Bool)

(assert (=> bm!347157 m!6009136))

(declare-fun m!6009138 () Bool)

(assert (=> bm!347159 m!6009138))

(assert (=> bm!347161 m!6009032))

(declare-fun m!6009140 () Bool)

(assert (=> bm!347160 m!6009140))

(declare-fun m!6009142 () Bool)

(assert (=> b!4978598 m!6009142))

(declare-fun m!6009144 () Bool)

(assert (=> b!4978598 m!6009144))

(assert (=> b!4978598 m!6008956))

(declare-fun m!6009146 () Bool)

(assert (=> b!4978598 m!6009146))

(assert (=> b!4978598 m!6009120))

(declare-fun m!6009148 () Bool)

(assert (=> b!4978598 m!6009148))

(declare-fun m!6009150 () Bool)

(assert (=> b!4978598 m!6009150))

(declare-fun m!6009152 () Bool)

(assert (=> b!4978598 m!6009152))

(declare-fun m!6009154 () Bool)

(assert (=> b!4978598 m!6009154))

(assert (=> b!4978598 m!6009146))

(declare-fun m!6009156 () Bool)

(assert (=> b!4978598 m!6009156))

(assert (=> b!4978598 m!6009138))

(assert (=> b!4978598 m!6009120))

(declare-fun m!6009158 () Bool)

(assert (=> b!4978598 m!6009158))

(assert (=> b!4978598 m!6008954))

(assert (=> b!4978598 m!6009142))

(declare-fun m!6009160 () Bool)

(assert (=> b!4978598 m!6009160))

(declare-fun m!6009162 () Bool)

(assert (=> bm!347156 m!6009162))

(assert (=> bm!347158 m!6009154))

(assert (=> b!4978396 d!1603037))

(declare-fun d!1603055 () Bool)

(declare-fun lt!2056636 () Int)

(assert (=> d!1603055 (>= lt!2056636 0)))

(declare-fun e!3111820 () Int)

(assert (=> d!1603055 (= lt!2056636 e!3111820)))

(declare-fun c!849406 () Bool)

(assert (=> d!1603055 (= c!849406 (is-Nil!57566 Nil!57566))))

(assert (=> d!1603055 (= (size!38184 Nil!57566) lt!2056636)))

(declare-fun b!4978608 () Bool)

(assert (=> b!4978608 (= e!3111820 0)))

(declare-fun b!4978609 () Bool)

(assert (=> b!4978609 (= e!3111820 (+ 1 (size!38184 (t!369702 Nil!57566))))))

(assert (= (and d!1603055 c!849406) b!4978608))

(assert (= (and d!1603055 (not c!849406)) b!4978609))

(declare-fun m!6009164 () Bool)

(assert (=> b!4978609 m!6009164))

(assert (=> b!4978396 d!1603055))

(declare-fun d!1603057 () Bool)

(declare-fun e!3111823 () Bool)

(assert (=> d!1603057 e!3111823))

(declare-fun res!2125377 () Bool)

(assert (=> d!1603057 (=> (not res!2125377) (not e!3111823))))

(assert (=> d!1603057 (= res!2125377 (semiInverseModEq!3740 (toChars!11283 (transformation!8447 rule!200)) (toValue!11424 (transformation!8447 rule!200))))))

(declare-fun Unit!148593 () Unit!148585)

(assert (=> d!1603057 (= (lemmaInv!1370 (transformation!8447 rule!200)) Unit!148593)))

(declare-fun b!4978612 () Bool)

(declare-fun equivClasses!3562 (Int Int) Bool)

(assert (=> b!4978612 (= e!3111823 (equivClasses!3562 (toChars!11283 (transformation!8447 rule!200)) (toValue!11424 (transformation!8447 rule!200))))))

(assert (= (and d!1603057 res!2125377) b!4978612))

(assert (=> d!1603057 m!6008964))

(declare-fun m!6009170 () Bool)

(assert (=> b!4978612 m!6009170))

(assert (=> b!4978396 d!1603057))

(declare-fun d!1603063 () Bool)

(assert (=> d!1603063 (= (isEmpty!31058 (_1!34536 lt!2056509)) (is-Nil!57566 (_1!34536 lt!2056509)))))

(assert (=> b!4978396 d!1603063))

(declare-fun bs!1184049 () Bool)

(declare-fun d!1603065 () Bool)

(assert (= bs!1184049 (and d!1603065 b!4978394)))

(declare-fun lambda!247753 () Int)

(assert (=> bs!1184049 (= lambda!247753 lambda!247747)))

(assert (=> d!1603065 true))

(assert (=> d!1603065 (< (dynLambda!23311 order!26439 (toChars!11283 (transformation!8447 rule!200))) (dynLambda!23310 order!26437 lambda!247753))))

(assert (=> d!1603065 true))

(assert (=> d!1603065 (< (dynLambda!23309 order!26435 (toValue!11424 (transformation!8447 rule!200))) (dynLambda!23310 order!26437 lambda!247753))))

(assert (=> d!1603065 (= (semiInverseModEq!3740 (toChars!11283 (transformation!8447 rule!200)) (toValue!11424 (transformation!8447 rule!200))) (Forall!1797 lambda!247753))))

(declare-fun bs!1184050 () Bool)

(assert (= bs!1184050 d!1603065))

(declare-fun m!6009172 () Bool)

(assert (=> bs!1184050 m!6009172))

(assert (=> b!4978396 d!1603065))

(declare-fun d!1603069 () Bool)

(declare-fun isBalanced!4217 (Conc!15199) Bool)

(assert (=> d!1603069 (= (inv!75365 input!1580) (isBalanced!4217 (c!849356 input!1580)))))

(declare-fun bs!1184051 () Bool)

(assert (= bs!1184051 d!1603069))

(declare-fun m!6009174 () Bool)

(assert (=> bs!1184051 m!6009174))

(assert (=> start!525256 d!1603069))

(declare-fun d!1603071 () Bool)

(assert (=> d!1603071 (= (inv!75365 totalInput!520) (isBalanced!4217 (c!849356 totalInput!520)))))

(declare-fun bs!1184052 () Bool)

(assert (= bs!1184052 d!1603071))

(declare-fun m!6009176 () Bool)

(assert (=> bs!1184052 m!6009176))

(assert (=> start!525256 d!1603071))

(declare-fun d!1603073 () Bool)

(declare-fun res!2125390 () Bool)

(declare-fun e!3111831 () Bool)

(assert (=> d!1603073 (=> (not res!2125390) (not e!3111831))))

(assert (=> d!1603073 (= res!2125390 (validRegex!5981 (regex!8447 rule!200)))))

(assert (=> d!1603073 (= (ruleValid!3855 thiss!16165 rule!200) e!3111831)))

(declare-fun b!4978629 () Bool)

(declare-fun res!2125391 () Bool)

(assert (=> b!4978629 (=> (not res!2125391) (not e!3111831))))

(assert (=> b!4978629 (= res!2125391 (not (nullable!4632 (regex!8447 rule!200))))))

(declare-fun b!4978630 () Bool)

(assert (=> b!4978630 (= e!3111831 (not (= (tag!9311 rule!200) (String!65662 ""))))))

(assert (= (and d!1603073 res!2125390) b!4978629))

(assert (= (and b!4978629 res!2125391) b!4978630))

(assert (=> d!1603073 m!6009020))

(assert (=> b!4978629 m!6009032))

(assert (=> b!4978391 d!1603073))

(declare-fun d!1603075 () Bool)

(declare-fun e!3111835 () Bool)

(assert (=> d!1603075 e!3111835))

(declare-fun res!2125395 () Bool)

(assert (=> d!1603075 (=> res!2125395 e!3111835)))

(declare-fun lt!2056639 () Bool)

(assert (=> d!1603075 (= res!2125395 (not lt!2056639))))

(declare-fun drop!2363 (List!57690 Int) List!57690)

(assert (=> d!1603075 (= lt!2056639 (= lt!2056512 (drop!2363 (list!18441 totalInput!520) (- (size!38184 (list!18441 totalInput!520)) (size!38184 lt!2056512)))))))

(assert (=> d!1603075 (= (isSuffix!1246 lt!2056512 (list!18441 totalInput!520)) lt!2056639)))

(declare-fun b!4978634 () Bool)

(assert (=> b!4978634 (= e!3111835 (>= (size!38184 (list!18441 totalInput!520)) (size!38184 lt!2056512)))))

(assert (= (and d!1603075 (not res!2125395)) b!4978634))

(assert (=> d!1603075 m!6008934))

(declare-fun m!6009178 () Bool)

(assert (=> d!1603075 m!6009178))

(assert (=> d!1603075 m!6008956))

(assert (=> d!1603075 m!6008934))

(declare-fun m!6009180 () Bool)

(assert (=> d!1603075 m!6009180))

(assert (=> b!4978634 m!6008934))

(assert (=> b!4978634 m!6009178))

(assert (=> b!4978634 m!6008956))

(assert (=> b!4978390 d!1603075))

(declare-fun d!1603081 () Bool)

(declare-fun list!18443 (Conc!15199) List!57690)

(assert (=> d!1603081 (= (list!18441 totalInput!520) (list!18443 (c!849356 totalInput!520)))))

(declare-fun bs!1184053 () Bool)

(assert (= bs!1184053 d!1603081))

(declare-fun m!6009182 () Bool)

(assert (=> bs!1184053 m!6009182))

(assert (=> b!4978390 d!1603081))

(declare-fun d!1603083 () Bool)

(assert (=> d!1603083 (= (list!18441 input!1580) (list!18443 (c!849356 input!1580)))))

(declare-fun bs!1184054 () Bool)

(assert (= bs!1184054 d!1603083))

(declare-fun m!6009184 () Bool)

(assert (=> bs!1184054 m!6009184))

(assert (=> b!4978390 d!1603083))

(declare-fun d!1603085 () Bool)

(assert (=> d!1603085 (= (inv!75360 (tag!9311 rule!200)) (= (mod (str.len (value!270162 (tag!9311 rule!200))) 2) 0))))

(assert (=> b!4978395 d!1603085))

(declare-fun d!1603087 () Bool)

(declare-fun res!2125398 () Bool)

(declare-fun e!3111838 () Bool)

(assert (=> d!1603087 (=> (not res!2125398) (not e!3111838))))

(assert (=> d!1603087 (= res!2125398 (semiInverseModEq!3740 (toChars!11283 (transformation!8447 rule!200)) (toValue!11424 (transformation!8447 rule!200))))))

(assert (=> d!1603087 (= (inv!75364 (transformation!8447 rule!200)) e!3111838)))

(declare-fun b!4978637 () Bool)

(assert (=> b!4978637 (= e!3111838 (equivClasses!3562 (toChars!11283 (transformation!8447 rule!200)) (toValue!11424 (transformation!8447 rule!200))))))

(assert (= (and d!1603087 res!2125398) b!4978637))

(assert (=> d!1603087 m!6008964))

(assert (=> b!4978637 m!6009170))

(assert (=> b!4978395 d!1603087))

(declare-fun b!4978646 () Bool)

(declare-fun tp!1396063 () Bool)

(declare-fun e!3111843 () Bool)

(declare-fun tp!1396065 () Bool)

(assert (=> b!4978646 (= e!3111843 (and (inv!75363 (left!42063 (c!849356 totalInput!520))) tp!1396065 (inv!75363 (right!42393 (c!849356 totalInput!520))) tp!1396063))))

(declare-fun b!4978648 () Bool)

(declare-fun e!3111844 () Bool)

(declare-fun tp!1396064 () Bool)

(assert (=> b!4978648 (= e!3111844 tp!1396064)))

(declare-fun b!4978647 () Bool)

(declare-fun inv!75371 (IArray!30459) Bool)

(assert (=> b!4978647 (= e!3111843 (and (inv!75371 (xs!18525 (c!849356 totalInput!520))) e!3111844))))

(assert (=> b!4978393 (= tp!1396040 (and (inv!75363 (c!849356 totalInput!520)) e!3111843))))

(assert (= (and b!4978393 (is-Node!15199 (c!849356 totalInput!520))) b!4978646))

(assert (= b!4978647 b!4978648))

(assert (= (and b!4978393 (is-Leaf!25248 (c!849356 totalInput!520))) b!4978647))

(declare-fun m!6009186 () Bool)

(assert (=> b!4978646 m!6009186))

(declare-fun m!6009188 () Bool)

(assert (=> b!4978646 m!6009188))

(declare-fun m!6009190 () Bool)

(assert (=> b!4978647 m!6009190))

(assert (=> b!4978393 m!6008946))

(declare-fun b!4978649 () Bool)

(declare-fun tp!1396066 () Bool)

(declare-fun tp!1396068 () Bool)

(declare-fun e!3111845 () Bool)

(assert (=> b!4978649 (= e!3111845 (and (inv!75363 (left!42063 (c!849356 input!1580))) tp!1396068 (inv!75363 (right!42393 (c!849356 input!1580))) tp!1396066))))

(declare-fun b!4978651 () Bool)

(declare-fun e!3111846 () Bool)

(declare-fun tp!1396067 () Bool)

(assert (=> b!4978651 (= e!3111846 tp!1396067)))

(declare-fun b!4978650 () Bool)

(assert (=> b!4978650 (= e!3111845 (and (inv!75371 (xs!18525 (c!849356 input!1580))) e!3111846))))

(assert (=> b!4978392 (= tp!1396038 (and (inv!75363 (c!849356 input!1580)) e!3111845))))

(assert (= (and b!4978392 (is-Node!15199 (c!849356 input!1580))) b!4978649))

(assert (= b!4978650 b!4978651))

(assert (= (and b!4978392 (is-Leaf!25248 (c!849356 input!1580))) b!4978650))

(declare-fun m!6009192 () Bool)

(assert (=> b!4978649 m!6009192))

(declare-fun m!6009194 () Bool)

(assert (=> b!4978649 m!6009194))

(declare-fun m!6009196 () Bool)

(assert (=> b!4978650 m!6009196))

(assert (=> b!4978392 m!6008944))

(declare-fun e!3111849 () Bool)

(assert (=> b!4978395 (= tp!1396041 e!3111849)))

(declare-fun b!4978663 () Bool)

(declare-fun tp!1396079 () Bool)

(declare-fun tp!1396080 () Bool)

(assert (=> b!4978663 (= e!3111849 (and tp!1396079 tp!1396080))))

(declare-fun b!4978665 () Bool)

(declare-fun tp!1396083 () Bool)

(declare-fun tp!1396081 () Bool)

(assert (=> b!4978665 (= e!3111849 (and tp!1396083 tp!1396081))))

(declare-fun b!4978662 () Bool)

(declare-fun tp_is_empty!36365 () Bool)

(assert (=> b!4978662 (= e!3111849 tp_is_empty!36365)))

(declare-fun b!4978664 () Bool)

(declare-fun tp!1396082 () Bool)

(assert (=> b!4978664 (= e!3111849 tp!1396082)))

(assert (= (and b!4978395 (is-ElementMatch!13680 (regex!8447 rule!200))) b!4978662))

(assert (= (and b!4978395 (is-Concat!22437 (regex!8447 rule!200))) b!4978663))

(assert (= (and b!4978395 (is-Star!13680 (regex!8447 rule!200))) b!4978664))

(assert (= (and b!4978395 (is-Union!13680 (regex!8447 rule!200))) b!4978665))

(push 1)

(assert (not b!4978494))

(assert (not d!1603023))

(assert (not d!1603075))

(assert b_and!349499)

(assert (not b!4978651))

(assert b_and!349501)

(assert (not b!4978650))

(assert (not bm!347159))

(assert (not d!1603069))

(assert (not b!4978648))

(assert (not d!1603057))

(assert (not b!4978491))

(assert (not b!4978609))

(assert (not b!4978594))

(assert (not bm!347135))

(assert (not d!1603087))

(assert (not d!1603071))

(assert (not b!4978393))

(assert (not bm!347157))

(assert (not b!4978646))

(assert (not bm!347162))

(assert (not d!1603021))

(assert (not d!1603065))

(assert (not b!4978496))

(assert (not b!4978474))

(assert (not b!4978612))

(assert (not b!4978664))

(assert (not d!1603025))

(assert (not b!4978598))

(assert (not d!1603037))

(assert (not bm!347156))

(assert (not b!4978479))

(assert (not b!4978634))

(assert (not b!4978502))

(assert (not b!4978647))

(assert (not bm!347155))

(assert (not b!4978649))

(assert (not b_next!133877))

(assert (not b!4978637))

(assert (not b!4978663))

(assert (not b!4978472))

(assert (not bm!347160))

(assert (not b_next!133879))

(assert (not b!4978597))

(assert (not b!4978480))

(assert (not b!4978493))

(assert (not b!4978481))

(assert (not bm!347158))

(assert (not d!1603073))

(assert (not bm!347161))

(assert (not b!4978392))

(assert (not b!4978665))

(assert (not d!1603083))

(assert tp_is_empty!36365)

(assert (not b!4978508))

(assert (not d!1603081))

(assert (not b!4978483))

(assert (not b!4978596))

(assert (not d!1603013))

(assert (not b!4978629))

(assert (not d!1603015))

(check-sat)

(pop 1)

(push 1)

(assert b_and!349501)

(assert b_and!349499)

(assert (not b_next!133879))

(assert (not b_next!133877))

(check-sat)

(pop 1)

