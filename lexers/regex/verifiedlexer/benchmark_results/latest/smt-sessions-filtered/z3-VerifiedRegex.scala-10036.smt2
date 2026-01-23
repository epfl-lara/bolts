; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!525146 () Bool)

(assert start!525146)

(declare-fun b!4976962 () Bool)

(declare-fun b_free!132995 () Bool)

(declare-fun b_next!133785 () Bool)

(assert (=> b!4976962 (= b_free!132995 (not b_next!133785))))

(declare-fun tp!1395640 () Bool)

(declare-fun b_and!349407 () Bool)

(assert (=> b!4976962 (= tp!1395640 b_and!349407)))

(declare-fun b_free!132997 () Bool)

(declare-fun b_next!133787 () Bool)

(assert (=> b!4976962 (= b_free!132997 (not b_next!133787))))

(declare-fun tp!1395642 () Bool)

(declare-fun b_and!349409 () Bool)

(assert (=> b!4976962 (= tp!1395642 b_and!349409)))

(declare-fun b!4976974 () Bool)

(declare-fun e!3110599 () Bool)

(assert (=> b!4976974 (= e!3110599 true)))

(declare-fun b!4976973 () Bool)

(declare-fun e!3110598 () Bool)

(assert (=> b!4976973 (= e!3110598 e!3110599)))

(declare-fun b!4976964 () Bool)

(assert (=> b!4976964 e!3110598))

(assert (= b!4976973 b!4976974))

(assert (= b!4976964 b!4976973))

(declare-fun order!26299 () Int)

(declare-fun lambda!247598 () Int)

(declare-fun order!26297 () Int)

(declare-datatypes ((String!65543 0))(
  ( (String!65544 (value!269483 String)) )
))
(declare-datatypes ((C!27564 0))(
  ( (C!27565 (val!23148 Int)) )
))
(declare-datatypes ((List!57644 0))(
  ( (Nil!57520) (Cons!57520 (h!63968 C!27564) (t!369656 List!57644)) )
))
(declare-datatypes ((IArray!30413 0))(
  ( (IArray!30414 (innerList!15264 List!57644)) )
))
(declare-datatypes ((List!57645 0))(
  ( (Nil!57521) (Cons!57521 (h!63969 (_ BitVec 16)) (t!369657 List!57645)) )
))
(declare-datatypes ((Regex!13657 0))(
  ( (ElementMatch!13657 (c!849219 C!27564)) (Concat!22391 (regOne!27826 Regex!13657) (regTwo!27826 Regex!13657)) (EmptyExpr!13657) (Star!13657 (reg!13986 Regex!13657)) (EmptyLang!13657) (Union!13657 (regOne!27827 Regex!13657) (regTwo!27827 Regex!13657)) )
))
(declare-datatypes ((Conc!15176 0))(
  ( (Node!15176 (left!41982 Conc!15176) (right!42312 Conc!15176) (csize!30582 Int) (cheight!15387 Int)) (Leaf!25213 (xs!18502 IArray!30413) (csize!30583 Int)) (Empty!15176) )
))
(declare-datatypes ((BalanceConc!29782 0))(
  ( (BalanceConc!29783 (c!849220 Conc!15176)) )
))
(declare-datatypes ((TokenValue!8734 0))(
  ( (FloatLiteralValue!17468 (text!61583 List!57645)) (TokenValueExt!8733 (__x!34761 Int)) (Broken!43670 (value!269484 List!57645)) (Object!8857) (End!8734) (Def!8734) (Underscore!8734) (Match!8734) (Else!8734) (Error!8734) (Case!8734) (If!8734) (Extends!8734) (Abstract!8734) (Class!8734) (Val!8734) (DelimiterValue!17468 (del!8794 List!57645)) (KeywordValue!8740 (value!269485 List!57645)) (CommentValue!17468 (value!269486 List!57645)) (WhitespaceValue!17468 (value!269487 List!57645)) (IndentationValue!8734 (value!269488 List!57645)) (String!65545) (Int32!8734) (Broken!43671 (value!269489 List!57645)) (Boolean!8735) (Unit!148507) (OperatorValue!8737 (op!8794 List!57645)) (IdentifierValue!17468 (value!269490 List!57645)) (IdentifierValue!17469 (value!269491 List!57645)) (WhitespaceValue!17469 (value!269492 List!57645)) (True!17468) (False!17468) (Broken!43672 (value!269493 List!57645)) (Broken!43673 (value!269494 List!57645)) (True!17469) (RightBrace!8734) (RightBracket!8734) (Colon!8734) (Null!8734) (Comma!8734) (LeftBracket!8734) (False!17469) (LeftBrace!8734) (ImaginaryLiteralValue!8734 (text!61584 List!57645)) (StringLiteralValue!26202 (value!269495 List!57645)) (EOFValue!8734 (value!269496 List!57645)) (IdentValue!8734 (value!269497 List!57645)) (DelimiterValue!17469 (value!269498 List!57645)) (DedentValue!8734 (value!269499 List!57645)) (NewLineValue!8734 (value!269500 List!57645)) (IntegerValue!26202 (value!269501 (_ BitVec 32)) (text!61585 List!57645)) (IntegerValue!26203 (value!269502 Int) (text!61586 List!57645)) (Times!8734) (Or!8734) (Equal!8734) (Minus!8734) (Broken!43674 (value!269503 List!57645)) (And!8734) (Div!8734) (LessEqual!8734) (Mod!8734) (Concat!22392) (Not!8734) (Plus!8734) (SpaceValue!8734 (value!269504 List!57645)) (IntegerValue!26204 (value!269505 Int) (text!61587 List!57645)) (StringLiteralValue!26203 (text!61588 List!57645)) (FloatLiteralValue!17469 (text!61589 List!57645)) (BytesLiteralValue!8734 (value!269506 List!57645)) (CommentValue!17469 (value!269507 List!57645)) (StringLiteralValue!26204 (value!269508 List!57645)) (ErrorTokenValue!8734 (msg!8795 List!57645)) )
))
(declare-datatypes ((TokenValueInjection!16776 0))(
  ( (TokenValueInjection!16777 (toValue!11399 Int) (toChars!11258 Int)) )
))
(declare-datatypes ((Rule!16648 0))(
  ( (Rule!16649 (regex!8424 Regex!13657) (tag!9288 String!65543) (isSeparator!8424 Bool) (transformation!8424 TokenValueInjection!16776)) )
))
(declare-fun rule!200 () Rule!16648)

(declare-fun dynLambda!23240 (Int Int) Int)

(declare-fun dynLambda!23241 (Int Int) Int)

(assert (=> b!4976974 (< (dynLambda!23240 order!26297 (toValue!11399 (transformation!8424 rule!200))) (dynLambda!23241 order!26299 lambda!247598))))

(declare-fun order!26301 () Int)

(declare-fun dynLambda!23242 (Int Int) Int)

(assert (=> b!4976974 (< (dynLambda!23242 order!26301 (toChars!11258 (transformation!8424 rule!200))) (dynLambda!23241 order!26299 lambda!247598))))

(declare-fun b!4976956 () Bool)

(declare-fun e!3110587 () Bool)

(declare-fun input!1580 () BalanceConc!29782)

(declare-fun tp!1395641 () Bool)

(declare-fun inv!75252 (Conc!15176) Bool)

(assert (=> b!4976956 (= e!3110587 (and (inv!75252 (c!849220 input!1580)) tp!1395641))))

(declare-fun b!4976957 () Bool)

(declare-fun e!3110592 () Bool)

(declare-datatypes ((tuple2!62292 0))(
  ( (tuple2!62293 (_1!34449 List!57644) (_2!34449 List!57644)) )
))
(declare-fun lt!2055347 () tuple2!62292)

(declare-fun matchR!6651 (Regex!13657 List!57644) Bool)

(assert (=> b!4976957 (= e!3110592 (matchR!6651 (regex!8424 rule!200) (_1!34449 lt!2055347)))))

(declare-fun b!4976959 () Bool)

(declare-fun e!3110589 () Bool)

(declare-fun totalInput!520 () BalanceConc!29782)

(declare-fun tp!1395638 () Bool)

(assert (=> b!4976959 (= e!3110589 (and (inv!75252 (c!849220 totalInput!520)) tp!1395638))))

(declare-fun b!4976960 () Bool)

(declare-fun e!3110586 () Bool)

(assert (=> b!4976960 (= e!3110586 true)))

(declare-fun lt!2055346 () Int)

(declare-datatypes ((tuple2!62294 0))(
  ( (tuple2!62295 (_1!34450 BalanceConc!29782) (_2!34450 BalanceConc!29782)) )
))
(declare-fun lt!2055350 () tuple2!62294)

(declare-fun size!38120 (BalanceConc!29782) Int)

(assert (=> b!4976960 (= lt!2055346 (size!38120 (_1!34450 lt!2055350)))))

(declare-fun lt!2055345 () TokenValue!8734)

(declare-fun apply!13915 (TokenValueInjection!16776 BalanceConc!29782) TokenValue!8734)

(assert (=> b!4976960 (= lt!2055345 (apply!13915 (transformation!8424 rule!200) (_1!34450 lt!2055350)))))

(declare-datatypes ((Unit!148508 0))(
  ( (Unit!148509) )
))
(declare-fun lt!2055351 () Unit!148508)

(declare-fun ForallOf!1238 (Int BalanceConc!29782) Unit!148508)

(declare-fun seqFromList!6049 (List!57644) BalanceConc!29782)

(declare-fun list!18416 (BalanceConc!29782) List!57644)

(assert (=> b!4976960 (= lt!2055351 (ForallOf!1238 lambda!247598 (seqFromList!6049 (list!18416 (_1!34450 lt!2055350)))))))

(declare-fun lt!2055352 () Unit!148508)

(assert (=> b!4976960 (= lt!2055352 (ForallOf!1238 lambda!247598 (_1!34450 lt!2055350)))))

(declare-fun b!4976961 () Bool)

(declare-fun e!3110593 () Bool)

(assert (=> b!4976961 (= e!3110593 (not e!3110586))))

(declare-fun res!2124492 () Bool)

(assert (=> b!4976961 (=> res!2124492 e!3110586)))

(declare-fun semiInverseModEq!3717 (Int Int) Bool)

(assert (=> b!4976961 (= res!2124492 (not (semiInverseModEq!3717 (toChars!11258 (transformation!8424 rule!200)) (toValue!11399 (transformation!8424 rule!200)))))))

(declare-fun lt!2055348 () Unit!148508)

(declare-fun lemmaInv!1347 (TokenValueInjection!16776) Unit!148508)

(assert (=> b!4976961 (= lt!2055348 (lemmaInv!1347 (transformation!8424 rule!200)))))

(assert (=> b!4976961 e!3110592))

(declare-fun res!2124493 () Bool)

(assert (=> b!4976961 (=> res!2124493 e!3110592)))

(declare-fun isEmpty!31009 (List!57644) Bool)

(assert (=> b!4976961 (= res!2124493 (isEmpty!31009 (_1!34449 lt!2055347)))))

(declare-fun lt!2055344 () List!57644)

(declare-fun findLongestMatchInner!1868 (Regex!13657 List!57644 Int List!57644 List!57644 Int) tuple2!62292)

(declare-fun size!38121 (List!57644) Int)

(assert (=> b!4976961 (= lt!2055347 (findLongestMatchInner!1868 (regex!8424 rule!200) Nil!57520 (size!38121 Nil!57520) lt!2055344 lt!2055344 (size!38121 lt!2055344)))))

(declare-fun lt!2055349 () Unit!148508)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1829 (Regex!13657 List!57644) Unit!148508)

(assert (=> b!4976961 (= lt!2055349 (longestMatchIsAcceptedByMatchOrIsEmpty!1829 (regex!8424 rule!200) lt!2055344))))

(declare-fun e!3110585 () Bool)

(assert (=> b!4976962 (= e!3110585 (and tp!1395640 tp!1395642))))

(declare-fun b!4976963 () Bool)

(declare-fun tp!1395639 () Bool)

(declare-fun e!3110588 () Bool)

(declare-fun inv!75248 (String!65543) Bool)

(declare-fun inv!75253 (TokenValueInjection!16776) Bool)

(assert (=> b!4976963 (= e!3110588 (and tp!1395639 (inv!75248 (tag!9288 rule!200)) (inv!75253 (transformation!8424 rule!200)) e!3110585))))

(declare-fun res!2124489 () Bool)

(assert (=> b!4976964 (=> res!2124489 e!3110586)))

(declare-fun Forall!1774 (Int) Bool)

(assert (=> b!4976964 (= res!2124489 (not (Forall!1774 lambda!247598)))))

(declare-fun b!4976965 () Bool)

(declare-fun e!3110591 () Bool)

(assert (=> b!4976965 (= e!3110591 e!3110593)))

(declare-fun res!2124495 () Bool)

(assert (=> b!4976965 (=> (not res!2124495) (not e!3110593))))

(declare-fun isEmpty!31010 (BalanceConc!29782) Bool)

(assert (=> b!4976965 (= res!2124495 (not (isEmpty!31010 (_1!34450 lt!2055350))))))

(declare-fun findLongestMatchWithZipperSequenceV2!187 (Regex!13657 BalanceConc!29782 BalanceConc!29782) tuple2!62294)

(assert (=> b!4976965 (= lt!2055350 (findLongestMatchWithZipperSequenceV2!187 (regex!8424 rule!200) input!1580 totalInput!520))))

(declare-fun b!4976966 () Bool)

(declare-fun res!2124491 () Bool)

(declare-fun e!3110590 () Bool)

(assert (=> b!4976966 (=> (not res!2124491) (not e!3110590))))

(declare-datatypes ((LexerInterface!8016 0))(
  ( (LexerInterfaceExt!8013 (__x!34762 Int)) (Lexer!8014) )
))
(declare-fun thiss!16165 () LexerInterface!8016)

(declare-fun ruleValid!3832 (LexerInterface!8016 Rule!16648) Bool)

(assert (=> b!4976966 (= res!2124491 (ruleValid!3832 thiss!16165 rule!200))))

(declare-fun b!4976958 () Bool)

(assert (=> b!4976958 (= e!3110590 e!3110591)))

(declare-fun res!2124490 () Bool)

(assert (=> b!4976958 (=> (not res!2124490) (not e!3110591))))

(declare-fun isSuffix!1223 (List!57644 List!57644) Bool)

(assert (=> b!4976958 (= res!2124490 (isSuffix!1223 lt!2055344 (list!18416 totalInput!520)))))

(assert (=> b!4976958 (= lt!2055344 (list!18416 input!1580))))

(declare-fun res!2124494 () Bool)

(assert (=> start!525146 (=> (not res!2124494) (not e!3110590))))

(get-info :version)

(assert (=> start!525146 (= res!2124494 ((_ is Lexer!8014) thiss!16165))))

(assert (=> start!525146 e!3110590))

(assert (=> start!525146 true))

(assert (=> start!525146 e!3110588))

(declare-fun inv!75254 (BalanceConc!29782) Bool)

(assert (=> start!525146 (and (inv!75254 input!1580) e!3110587)))

(assert (=> start!525146 (and (inv!75254 totalInput!520) e!3110589)))

(assert (= (and start!525146 res!2124494) b!4976966))

(assert (= (and b!4976966 res!2124491) b!4976958))

(assert (= (and b!4976958 res!2124490) b!4976965))

(assert (= (and b!4976965 res!2124495) b!4976961))

(assert (= (and b!4976961 (not res!2124493)) b!4976957))

(assert (= (and b!4976961 (not res!2124492)) b!4976964))

(assert (= (and b!4976964 (not res!2124489)) b!4976960))

(assert (= b!4976963 b!4976962))

(assert (= start!525146 b!4976963))

(assert (= start!525146 b!4976956))

(assert (= start!525146 b!4976959))

(declare-fun m!6007196 () Bool)

(assert (=> b!4976966 m!6007196))

(declare-fun m!6007198 () Bool)

(assert (=> b!4976956 m!6007198))

(declare-fun m!6007200 () Bool)

(assert (=> b!4976963 m!6007200))

(declare-fun m!6007202 () Bool)

(assert (=> b!4976963 m!6007202))

(declare-fun m!6007204 () Bool)

(assert (=> b!4976960 m!6007204))

(declare-fun m!6007206 () Bool)

(assert (=> b!4976960 m!6007206))

(assert (=> b!4976960 m!6007206))

(declare-fun m!6007208 () Bool)

(assert (=> b!4976960 m!6007208))

(declare-fun m!6007210 () Bool)

(assert (=> b!4976960 m!6007210))

(declare-fun m!6007212 () Bool)

(assert (=> b!4976960 m!6007212))

(declare-fun m!6007214 () Bool)

(assert (=> b!4976960 m!6007214))

(assert (=> b!4976960 m!6007204))

(declare-fun m!6007216 () Bool)

(assert (=> b!4976959 m!6007216))

(declare-fun m!6007218 () Bool)

(assert (=> b!4976965 m!6007218))

(declare-fun m!6007220 () Bool)

(assert (=> b!4976965 m!6007220))

(declare-fun m!6007222 () Bool)

(assert (=> b!4976961 m!6007222))

(declare-fun m!6007224 () Bool)

(assert (=> b!4976961 m!6007224))

(declare-fun m!6007226 () Bool)

(assert (=> b!4976961 m!6007226))

(declare-fun m!6007228 () Bool)

(assert (=> b!4976961 m!6007228))

(assert (=> b!4976961 m!6007224))

(declare-fun m!6007230 () Bool)

(assert (=> b!4976961 m!6007230))

(assert (=> b!4976961 m!6007222))

(declare-fun m!6007232 () Bool)

(assert (=> b!4976961 m!6007232))

(declare-fun m!6007234 () Bool)

(assert (=> b!4976961 m!6007234))

(declare-fun m!6007236 () Bool)

(assert (=> b!4976958 m!6007236))

(assert (=> b!4976958 m!6007236))

(declare-fun m!6007238 () Bool)

(assert (=> b!4976958 m!6007238))

(declare-fun m!6007240 () Bool)

(assert (=> b!4976958 m!6007240))

(declare-fun m!6007242 () Bool)

(assert (=> b!4976964 m!6007242))

(declare-fun m!6007244 () Bool)

(assert (=> b!4976957 m!6007244))

(declare-fun m!6007246 () Bool)

(assert (=> start!525146 m!6007246))

(declare-fun m!6007248 () Bool)

(assert (=> start!525146 m!6007248))

(check-sat (not b!4976964) (not b!4976956) (not b!4976960) (not b_next!133785) (not b_next!133787) (not b!4976965) b_and!349407 (not b!4976966) (not b!4976963) b_and!349409 (not b!4976957) (not start!525146) (not b!4976958) (not b!4976961) (not b!4976959))
(check-sat b_and!349409 b_and!349407 (not b_next!133787) (not b_next!133785))
