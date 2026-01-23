; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!93944 () Bool)

(assert start!93944)

(declare-fun bs!258961 () Bool)

(declare-fun b!1096445 () Bool)

(assert (= bs!258961 (and b!1096445 start!93944)))

(declare-fun lambda!42662 () Int)

(declare-fun lambda!42661 () Int)

(assert (=> bs!258961 (not (= lambda!42662 lambda!42661))))

(declare-fun b!1096469 () Bool)

(declare-fun e!694184 () Bool)

(assert (=> b!1096469 (= e!694184 true)))

(declare-fun b!1096468 () Bool)

(declare-fun e!694183 () Bool)

(assert (=> b!1096468 (= e!694183 e!694184)))

(assert (=> b!1096445 e!694183))

(assert (= b!1096468 b!1096469))

(assert (= b!1096445 b!1096468))

(declare-fun lambda!42663 () Int)

(assert (=> bs!258961 (not (= lambda!42663 lambda!42661))))

(assert (=> b!1096445 (not (= lambda!42663 lambda!42662))))

(declare-fun b!1096471 () Bool)

(declare-fun e!694186 () Bool)

(assert (=> b!1096471 (= e!694186 true)))

(declare-fun b!1096470 () Bool)

(declare-fun e!694185 () Bool)

(assert (=> b!1096470 (= e!694185 e!694186)))

(assert (=> b!1096445 e!694185))

(assert (= b!1096470 b!1096471))

(assert (= b!1096445 b!1096470))

(declare-fun lambda!42664 () Int)

(assert (=> bs!258961 (not (= lambda!42664 lambda!42661))))

(assert (=> b!1096445 (not (= lambda!42664 lambda!42662))))

(assert (=> b!1096445 (not (= lambda!42664 lambda!42663))))

(declare-fun b!1096473 () Bool)

(declare-fun e!694188 () Bool)

(assert (=> b!1096473 (= e!694188 true)))

(declare-fun b!1096472 () Bool)

(declare-fun e!694187 () Bool)

(assert (=> b!1096472 (= e!694187 e!694188)))

(assert (=> b!1096445 e!694187))

(assert (= b!1096472 b!1096473))

(assert (= b!1096445 b!1096472))

(declare-fun b!1096444 () Bool)

(declare-datatypes ((Unit!16089 0))(
  ( (Unit!16090) )
))
(declare-fun e!694172 () Unit!16089)

(declare-fun err!2401 () Unit!16089)

(assert (=> b!1096444 (= e!694172 err!2401)))

(declare-datatypes ((List!10547 0))(
  ( (Nil!10531) (Cons!10531 (h!15932 (_ BitVec 16)) (t!103273 List!10547)) )
))
(declare-datatypes ((TokenValue!1867 0))(
  ( (FloatLiteralValue!3734 (text!13514 List!10547)) (TokenValueExt!1866 (__x!7449 Int)) (Broken!9335 (value!59257 List!10547)) (Object!1882) (End!1867) (Def!1867) (Underscore!1867) (Match!1867) (Else!1867) (Error!1867) (Case!1867) (If!1867) (Extends!1867) (Abstract!1867) (Class!1867) (Val!1867) (DelimiterValue!3734 (del!1927 List!10547)) (KeywordValue!1873 (value!59258 List!10547)) (CommentValue!3734 (value!59259 List!10547)) (WhitespaceValue!3734 (value!59260 List!10547)) (IndentationValue!1867 (value!59261 List!10547)) (String!12906) (Int32!1867) (Broken!9336 (value!59262 List!10547)) (Boolean!1868) (Unit!16091) (OperatorValue!1870 (op!1927 List!10547)) (IdentifierValue!3734 (value!59263 List!10547)) (IdentifierValue!3735 (value!59264 List!10547)) (WhitespaceValue!3735 (value!59265 List!10547)) (True!3734) (False!3734) (Broken!9337 (value!59266 List!10547)) (Broken!9338 (value!59267 List!10547)) (True!3735) (RightBrace!1867) (RightBracket!1867) (Colon!1867) (Null!1867) (Comma!1867) (LeftBracket!1867) (False!3735) (LeftBrace!1867) (ImaginaryLiteralValue!1867 (text!13515 List!10547)) (StringLiteralValue!5601 (value!59268 List!10547)) (EOFValue!1867 (value!59269 List!10547)) (IdentValue!1867 (value!59270 List!10547)) (DelimiterValue!3735 (value!59271 List!10547)) (DedentValue!1867 (value!59272 List!10547)) (NewLineValue!1867 (value!59273 List!10547)) (IntegerValue!5601 (value!59274 (_ BitVec 32)) (text!13516 List!10547)) (IntegerValue!5602 (value!59275 Int) (text!13517 List!10547)) (Times!1867) (Or!1867) (Equal!1867) (Minus!1867) (Broken!9339 (value!59276 List!10547)) (And!1867) (Div!1867) (LessEqual!1867) (Mod!1867) (Concat!4937) (Not!1867) (Plus!1867) (SpaceValue!1867 (value!59277 List!10547)) (IntegerValue!5603 (value!59278 Int) (text!13518 List!10547)) (StringLiteralValue!5602 (text!13519 List!10547)) (FloatLiteralValue!3735 (text!13520 List!10547)) (BytesLiteralValue!1867 (value!59279 List!10547)) (CommentValue!3735 (value!59280 List!10547)) (StringLiteralValue!5603 (value!59281 List!10547)) (ErrorTokenValue!1867 (msg!1928 List!10547)) )
))
(declare-datatypes ((Regex!3070 0))(
  ( (ElementMatch!3070 (c!186042 (_ BitVec 16))) (Concat!4938 (regOne!6652 Regex!3070) (regTwo!6652 Regex!3070)) (EmptyExpr!3070) (Star!3070 (reg!3399 Regex!3070)) (EmptyLang!3070) (Union!3070 (regOne!6653 Regex!3070) (regTwo!6653 Regex!3070)) )
))
(declare-datatypes ((String!12907 0))(
  ( (String!12908 (value!59282 String)) )
))
(declare-datatypes ((IArray!6465 0))(
  ( (IArray!6466 (innerList!3290 List!10547)) )
))
(declare-datatypes ((Conc!3230 0))(
  ( (Node!3230 (left!9064 Conc!3230) (right!9394 Conc!3230) (csize!6690 Int) (cheight!3441 Int)) (Leaf!5137 (xs!5923 IArray!6465) (csize!6691 Int)) (Empty!3230) )
))
(declare-datatypes ((BalanceConc!6474 0))(
  ( (BalanceConc!6475 (c!186043 Conc!3230)) )
))
(declare-datatypes ((TokenValueInjection!3434 0))(
  ( (TokenValueInjection!3435 (toValue!2878 Int) (toChars!2737 Int)) )
))
(declare-datatypes ((Rule!3402 0))(
  ( (Rule!3403 (regex!1801 Regex!3070) (tag!2063 String!12907) (isSeparator!1801 Bool) (transformation!1801 TokenValueInjection!3434)) )
))
(declare-datatypes ((Token!3268 0))(
  ( (Token!3269 (value!59283 TokenValue!1867) (rule!3224 Rule!3402) (size!8155 Int) (originalCharacters!2357 List!10547)) )
))
(declare-datatypes ((List!10548 0))(
  ( (Nil!10532) (Cons!10532 (h!15933 Token!3268) (t!103274 List!10548)) )
))
(declare-datatypes ((IArray!6467 0))(
  ( (IArray!6468 (innerList!3291 List!10548)) )
))
(declare-datatypes ((Conc!3231 0))(
  ( (Node!3231 (left!9065 Conc!3231) (right!9395 Conc!3231) (csize!6692 Int) (cheight!3442 Int)) (Leaf!5138 (xs!5924 IArray!6467) (csize!6693 Int)) (Empty!3231) )
))
(declare-datatypes ((List!10549 0))(
  ( (Nil!10533) (Cons!10533 (h!15934 Rule!3402) (t!103275 List!10549)) )
))
(declare-datatypes ((BalanceConc!6476 0))(
  ( (BalanceConc!6477 (c!186044 Conc!3231)) )
))
(declare-datatypes ((PrintableTokens!318 0))(
  ( (PrintableTokens!319 (rules!9088 List!10549) (tokens!1360 BalanceConc!6476)) )
))
(declare-datatypes ((tuple2!11728 0))(
  ( (tuple2!11729 (_1!6690 Int) (_2!6690 PrintableTokens!318)) )
))
(declare-fun lt!369669 () tuple2!11728)

(declare-fun lt!369657 () Unit!16089)

(declare-datatypes ((List!10550 0))(
  ( (Nil!10534) (Cons!10534 (h!15935 tuple2!11728) (t!103276 List!10550)) )
))
(declare-datatypes ((IArray!6469 0))(
  ( (IArray!6470 (innerList!3292 List!10550)) )
))
(declare-datatypes ((Conc!3232 0))(
  ( (Node!3232 (left!9066 Conc!3232) (right!9396 Conc!3232) (csize!6694 Int) (cheight!3443 Int)) (Leaf!5139 (xs!5925 IArray!6469) (csize!6695 Int)) (Empty!3232) )
))
(declare-datatypes ((BalanceConc!6478 0))(
  ( (BalanceConc!6479 (c!186045 Conc!3232)) )
))
(declare-fun lt!369654 () BalanceConc!6478)

(declare-fun forallContained!503 (List!10550 Int tuple2!11728) Unit!16089)

(declare-fun list!3783 (BalanceConc!6478) List!10550)

(assert (=> b!1096444 (= lt!369657 (forallContained!503 (list!3783 lt!369654) lambda!42662 lt!369669))))

(assert (=> b!1096444 true))

(declare-fun e!694178 () Bool)

(declare-fun e!694170 () Bool)

(assert (=> b!1096445 (= e!694178 e!694170)))

(declare-fun res!486832 () Bool)

(assert (=> b!1096445 (=> (not res!486832) (not e!694170))))

(declare-fun objs!8 () BalanceConc!6478)

(declare-fun contains!1805 (BalanceConc!6478 tuple2!11728) Bool)

(assert (=> b!1096445 (= res!486832 (contains!1805 objs!8 lt!369669))))

(declare-fun lt!369663 () BalanceConc!6478)

(declare-fun filter!282 (BalanceConc!6478 Int) BalanceConc!6478)

(assert (=> b!1096445 (= lt!369663 (filter!282 objs!8 lambda!42664))))

(declare-fun lt!369662 () BalanceConc!6478)

(assert (=> b!1096445 (= lt!369662 (filter!282 objs!8 lambda!42663))))

(assert (=> b!1096445 (= lt!369654 (filter!282 objs!8 lambda!42662))))

(declare-fun lt!369652 () Int)

(declare-fun apply!2084 (BalanceConc!6478 Int) tuple2!11728)

(assert (=> b!1096445 (= lt!369669 (apply!2084 objs!8 (ite (>= lt!369652 0) (div lt!369652 2) (- (div (- lt!369652) 2)))))))

(declare-fun b!1096446 () Bool)

(declare-fun e!694167 () Unit!16089)

(declare-fun err!2400 () Unit!16089)

(assert (=> b!1096446 (= e!694167 err!2400)))

(declare-fun lt!369655 () Unit!16089)

(assert (=> b!1096446 (= lt!369655 (forallContained!503 (list!3783 lt!369663) lambda!42664 lt!369669))))

(assert (=> b!1096446 true))

(declare-fun b!1096447 () Bool)

(declare-fun e!694165 () Bool)

(declare-fun lt!369679 () List!10550)

(declare-fun size!8156 (List!10550) Int)

(declare-fun filter!283 (List!10550 Int) List!10550)

(assert (=> b!1096447 (= e!694165 (< (size!8156 (filter!283 lt!369679 lambda!42664)) (size!8156 lt!369679)))))

(declare-fun b!1096448 () Bool)

(declare-fun Unit!16092 () Unit!16089)

(assert (=> b!1096448 (= e!694172 Unit!16092)))

(declare-fun b!1096449 () Bool)

(declare-fun e!694174 () Bool)

(assert (=> b!1096449 (= e!694170 e!694174)))

(declare-fun res!486826 () Bool)

(assert (=> b!1096449 (=> (not res!486826) (not e!694174))))

(declare-fun lt!369681 () Bool)

(assert (=> b!1096449 (= res!486826 (not lt!369681))))

(declare-fun lt!369658 () Unit!16089)

(assert (=> b!1096449 (= lt!369658 e!694172)))

(declare-fun c!186039 () Bool)

(assert (=> b!1096449 (= c!186039 lt!369681)))

(assert (=> b!1096449 (= lt!369681 (contains!1805 lt!369654 lt!369669))))

(declare-fun b!1096450 () Bool)

(declare-fun e!694171 () Bool)

(declare-fun e!694176 () Bool)

(assert (=> b!1096450 (= e!694171 e!694176)))

(declare-fun res!486830 () Bool)

(assert (=> b!1096450 (=> res!486830 e!694176)))

(declare-fun lt!369672 () Bool)

(assert (=> b!1096450 (= res!486830 lt!369672)))

(declare-fun lt!369668 () Unit!16089)

(assert (=> b!1096450 (= lt!369668 e!694167)))

(declare-fun c!186038 () Bool)

(assert (=> b!1096450 (= c!186038 lt!369672)))

(assert (=> b!1096450 (= lt!369672 (contains!1805 lt!369663 lt!369669))))

(declare-fun b!1096451 () Bool)

(declare-fun e!694173 () Unit!16089)

(declare-fun err!2399 () Unit!16089)

(assert (=> b!1096451 (= e!694173 err!2399)))

(declare-fun lt!369653 () Unit!16089)

(assert (=> b!1096451 (= lt!369653 (forallContained!503 (list!3783 objs!8) lambda!42662 lt!369669))))

(assert (=> b!1096451 true))

(declare-fun b!1096452 () Bool)

(assert (=> b!1096452 (= e!694174 (not e!694171))))

(declare-fun res!486831 () Bool)

(assert (=> b!1096452 (=> res!486831 e!694171)))

(declare-fun size!8157 (BalanceConc!6478) Int)

(assert (=> b!1096452 (= res!486831 (>= (size!8157 lt!369654) lt!369652))))

(declare-fun e!694175 () Bool)

(assert (=> b!1096452 e!694175))

(declare-fun res!486824 () Bool)

(assert (=> b!1096452 (=> res!486824 e!694175)))

(declare-fun lt!369667 () Bool)

(assert (=> b!1096452 (= res!486824 lt!369667)))

(declare-fun isEmpty!6675 (List!10550) Bool)

(assert (=> b!1096452 (= lt!369667 (isEmpty!6675 lt!369679))))

(declare-fun lt!369673 () Unit!16089)

(declare-fun lemmaNotForallFilterShorter!44 (List!10550 Int) Unit!16089)

(assert (=> b!1096452 (= lt!369673 (lemmaNotForallFilterShorter!44 lt!369679 lambda!42662))))

(assert (=> b!1096452 (= lt!369679 (list!3783 objs!8))))

(declare-fun lt!369671 () Unit!16089)

(assert (=> b!1096452 (= lt!369671 e!694173)))

(declare-fun c!186041 () Bool)

(declare-fun forall!2380 (BalanceConc!6478 Int) Bool)

(assert (=> b!1096452 (= c!186041 (forall!2380 objs!8 lambda!42662))))

(declare-fun b!1096453 () Bool)

(declare-fun e!694166 () Bool)

(assert (=> b!1096453 (= e!694176 e!694166)))

(declare-fun res!486829 () Bool)

(assert (=> b!1096453 (=> res!486829 e!694166)))

(assert (=> b!1096453 (= res!486829 (>= (size!8157 lt!369663) lt!369652))))

(assert (=> b!1096453 e!694165))

(declare-fun res!486828 () Bool)

(assert (=> b!1096453 (=> res!486828 e!694165)))

(assert (=> b!1096453 (= res!486828 lt!369667)))

(declare-fun lt!369660 () Unit!16089)

(assert (=> b!1096453 (= lt!369660 (lemmaNotForallFilterShorter!44 lt!369679 lambda!42664))))

(declare-fun lt!369678 () Unit!16089)

(declare-fun e!694169 () Unit!16089)

(assert (=> b!1096453 (= lt!369678 e!694169)))

(declare-fun c!186040 () Bool)

(assert (=> b!1096453 (= c!186040 (forall!2380 objs!8 lambda!42664))))

(declare-fun b!1096454 () Bool)

(declare-fun e!694177 () Bool)

(declare-fun tp!326669 () Bool)

(declare-fun inv!13505 (Conc!3232) Bool)

(assert (=> b!1096454 (= e!694177 (and (inv!13505 (c!186045 objs!8)) tp!326669))))

(declare-fun b!1096455 () Bool)

(declare-fun Unit!16093 () Unit!16089)

(assert (=> b!1096455 (= e!694173 Unit!16093)))

(declare-fun b!1096456 () Bool)

(assert (=> b!1096456 (= e!694166 (forall!2380 lt!369654 lambda!42661))))

(declare-fun lt!369674 () List!10550)

(declare-fun lt!369659 () Unit!16089)

(declare-fun lt!369656 () List!10550)

(declare-fun lemmaConcatPreservesForall!89 (List!10550 List!10550 Int) Unit!16089)

(declare-fun ++!2860 (List!10550 List!10550) List!10550)

(declare-fun sortObjectsByID!0 (BalanceConc!6478) BalanceConc!6478)

(assert (=> b!1096456 (= lt!369659 (lemmaConcatPreservesForall!89 (++!2860 lt!369674 lt!369656) (list!3783 (sortObjectsByID!0 lt!369663)) lambda!42661))))

(declare-fun lt!369666 () Unit!16089)

(assert (=> b!1096456 (= lt!369666 (lemmaConcatPreservesForall!89 lt!369674 lt!369656 lambda!42661))))

(assert (=> b!1096456 (= lt!369656 (list!3783 lt!369662))))

(assert (=> b!1096456 (= lt!369674 (list!3783 (sortObjectsByID!0 lt!369654)))))

(declare-fun lt!369675 () List!10550)

(declare-fun forall!2381 (List!10550 Int) Bool)

(assert (=> b!1096456 (forall!2381 lt!369675 lambda!42661)))

(declare-fun lt!369661 () Unit!16089)

(declare-fun lemmaForallSubseq!46 (List!10550 List!10550 Int) Unit!16089)

(assert (=> b!1096456 (= lt!369661 (lemmaForallSubseq!46 lt!369675 lt!369679 lambda!42661))))

(assert (=> b!1096456 (= lt!369675 (list!3783 (filter!282 objs!8 lambda!42664)))))

(declare-fun lt!369680 () List!10550)

(assert (=> b!1096456 (forall!2381 lt!369680 lambda!42661)))

(declare-fun lt!369677 () Unit!16089)

(assert (=> b!1096456 (= lt!369677 (lemmaForallSubseq!46 lt!369680 lt!369679 lambda!42661))))

(assert (=> b!1096456 (= lt!369680 (list!3783 (filter!282 objs!8 lambda!42663)))))

(declare-fun lt!369676 () List!10550)

(assert (=> b!1096456 (forall!2381 lt!369676 lambda!42661)))

(declare-fun lt!369670 () Unit!16089)

(assert (=> b!1096456 (= lt!369670 (lemmaForallSubseq!46 lt!369676 lt!369679 lambda!42661))))

(assert (=> b!1096456 (= lt!369676 (list!3783 (filter!282 objs!8 lambda!42662)))))

(declare-fun lt!369664 () Unit!16089)

(declare-fun filterSubseq!38 (List!10550 Int) Unit!16089)

(assert (=> b!1096456 (= lt!369664 (filterSubseq!38 lt!369679 lambda!42664))))

(declare-fun lt!369651 () Unit!16089)

(assert (=> b!1096456 (= lt!369651 (filterSubseq!38 lt!369679 lambda!42663))))

(declare-fun lt!369665 () Unit!16089)

(assert (=> b!1096456 (= lt!369665 (filterSubseq!38 lt!369679 lambda!42662))))

(declare-fun b!1096457 () Bool)

(assert (=> b!1096457 (= e!694175 (< (size!8156 (filter!283 lt!369679 lambda!42662)) (size!8156 lt!369679)))))

(declare-fun b!1096458 () Bool)

(declare-fun Unit!16094 () Unit!16089)

(assert (=> b!1096458 (= e!694169 Unit!16094)))

(declare-fun b!1096459 () Bool)

(declare-fun Unit!16095 () Unit!16089)

(assert (=> b!1096459 (= e!694167 Unit!16095)))

(declare-fun res!486827 () Bool)

(declare-fun e!694168 () Bool)

(assert (=> start!93944 (=> (not res!486827) (not e!694168))))

(assert (=> start!93944 (= res!486827 (forall!2380 objs!8 lambda!42661))))

(assert (=> start!93944 e!694168))

(declare-fun inv!13506 (BalanceConc!6478) Bool)

(assert (=> start!93944 (and (inv!13506 objs!8) e!694177)))

(declare-fun b!1096460 () Bool)

(assert (=> b!1096460 (= e!694168 e!694178)))

(declare-fun res!486825 () Bool)

(assert (=> b!1096460 (=> (not res!486825) (not e!694178))))

(assert (=> b!1096460 (= res!486825 (> lt!369652 1))))

(assert (=> b!1096460 (= lt!369652 (size!8157 objs!8))))

(declare-fun b!1096461 () Bool)

(declare-fun err!2398 () Unit!16089)

(assert (=> b!1096461 (= e!694169 err!2398)))

(declare-fun lt!369650 () Unit!16089)

(assert (=> b!1096461 (= lt!369650 (forallContained!503 lt!369679 lambda!42664 lt!369669))))

(assert (=> b!1096461 true))

(assert (= (and start!93944 res!486827) b!1096460))

(assert (= (and b!1096460 res!486825) b!1096445))

(assert (= (and b!1096445 res!486832) b!1096449))

(assert (= (and b!1096449 c!186039) b!1096444))

(assert (= (and b!1096449 (not c!186039)) b!1096448))

(assert (= (and b!1096449 res!486826) b!1096452))

(assert (= (and b!1096452 c!186041) b!1096451))

(assert (= (and b!1096452 (not c!186041)) b!1096455))

(assert (= (and b!1096452 (not res!486824)) b!1096457))

(assert (= (and b!1096452 (not res!486831)) b!1096450))

(assert (= (and b!1096450 c!186038) b!1096446))

(assert (= (and b!1096450 (not c!186038)) b!1096459))

(assert (= (and b!1096450 (not res!486830)) b!1096453))

(assert (= (and b!1096453 c!186040) b!1096461))

(assert (= (and b!1096453 (not c!186040)) b!1096458))

(assert (= (and b!1096453 (not res!486828)) b!1096447))

(assert (= (and b!1096453 (not res!486829)) b!1096456))

(assert (= start!93944 b!1096454))

(declare-fun m!1251279 () Bool)

(assert (=> b!1096451 m!1251279))

(assert (=> b!1096451 m!1251279))

(declare-fun m!1251281 () Bool)

(assert (=> b!1096451 m!1251281))

(declare-fun m!1251283 () Bool)

(assert (=> b!1096449 m!1251283))

(declare-fun m!1251285 () Bool)

(assert (=> b!1096445 m!1251285))

(declare-fun m!1251287 () Bool)

(assert (=> b!1096445 m!1251287))

(declare-fun m!1251289 () Bool)

(assert (=> b!1096445 m!1251289))

(declare-fun m!1251291 () Bool)

(assert (=> b!1096445 m!1251291))

(declare-fun m!1251293 () Bool)

(assert (=> b!1096445 m!1251293))

(declare-fun m!1251295 () Bool)

(assert (=> start!93944 m!1251295))

(declare-fun m!1251297 () Bool)

(assert (=> start!93944 m!1251297))

(declare-fun m!1251299 () Bool)

(assert (=> b!1096447 m!1251299))

(assert (=> b!1096447 m!1251299))

(declare-fun m!1251301 () Bool)

(assert (=> b!1096447 m!1251301))

(declare-fun m!1251303 () Bool)

(assert (=> b!1096447 m!1251303))

(declare-fun m!1251305 () Bool)

(assert (=> b!1096461 m!1251305))

(declare-fun m!1251307 () Bool)

(assert (=> b!1096453 m!1251307))

(declare-fun m!1251309 () Bool)

(assert (=> b!1096453 m!1251309))

(declare-fun m!1251311 () Bool)

(assert (=> b!1096453 m!1251311))

(assert (=> b!1096452 m!1251279))

(declare-fun m!1251313 () Bool)

(assert (=> b!1096452 m!1251313))

(declare-fun m!1251315 () Bool)

(assert (=> b!1096452 m!1251315))

(declare-fun m!1251317 () Bool)

(assert (=> b!1096452 m!1251317))

(declare-fun m!1251319 () Bool)

(assert (=> b!1096452 m!1251319))

(declare-fun m!1251321 () Bool)

(assert (=> b!1096450 m!1251321))

(declare-fun m!1251323 () Bool)

(assert (=> b!1096444 m!1251323))

(assert (=> b!1096444 m!1251323))

(declare-fun m!1251325 () Bool)

(assert (=> b!1096444 m!1251325))

(declare-fun m!1251327 () Bool)

(assert (=> b!1096457 m!1251327))

(assert (=> b!1096457 m!1251327))

(declare-fun m!1251329 () Bool)

(assert (=> b!1096457 m!1251329))

(assert (=> b!1096457 m!1251303))

(declare-fun m!1251331 () Bool)

(assert (=> b!1096456 m!1251331))

(assert (=> b!1096456 m!1251287))

(declare-fun m!1251333 () Bool)

(assert (=> b!1096456 m!1251333))

(declare-fun m!1251335 () Bool)

(assert (=> b!1096456 m!1251335))

(declare-fun m!1251337 () Bool)

(assert (=> b!1096456 m!1251337))

(assert (=> b!1096456 m!1251331))

(declare-fun m!1251339 () Bool)

(assert (=> b!1096456 m!1251339))

(assert (=> b!1096456 m!1251285))

(declare-fun m!1251341 () Bool)

(assert (=> b!1096456 m!1251341))

(declare-fun m!1251343 () Bool)

(assert (=> b!1096456 m!1251343))

(declare-fun m!1251345 () Bool)

(assert (=> b!1096456 m!1251345))

(declare-fun m!1251347 () Bool)

(assert (=> b!1096456 m!1251347))

(declare-fun m!1251349 () Bool)

(assert (=> b!1096456 m!1251349))

(declare-fun m!1251351 () Bool)

(assert (=> b!1096456 m!1251351))

(assert (=> b!1096456 m!1251285))

(declare-fun m!1251353 () Bool)

(assert (=> b!1096456 m!1251353))

(assert (=> b!1096456 m!1251343))

(declare-fun m!1251355 () Bool)

(assert (=> b!1096456 m!1251355))

(declare-fun m!1251357 () Bool)

(assert (=> b!1096456 m!1251357))

(declare-fun m!1251359 () Bool)

(assert (=> b!1096456 m!1251359))

(assert (=> b!1096456 m!1251291))

(declare-fun m!1251361 () Bool)

(assert (=> b!1096456 m!1251361))

(declare-fun m!1251363 () Bool)

(assert (=> b!1096456 m!1251363))

(assert (=> b!1096456 m!1251339))

(declare-fun m!1251365 () Bool)

(assert (=> b!1096456 m!1251365))

(declare-fun m!1251367 () Bool)

(assert (=> b!1096456 m!1251367))

(declare-fun m!1251369 () Bool)

(assert (=> b!1096456 m!1251369))

(declare-fun m!1251371 () Bool)

(assert (=> b!1096456 m!1251371))

(assert (=> b!1096456 m!1251363))

(assert (=> b!1096456 m!1251291))

(assert (=> b!1096456 m!1251287))

(declare-fun m!1251373 () Bool)

(assert (=> b!1096460 m!1251373))

(declare-fun m!1251375 () Bool)

(assert (=> b!1096454 m!1251375))

(declare-fun m!1251377 () Bool)

(assert (=> b!1096446 m!1251377))

(assert (=> b!1096446 m!1251377))

(declare-fun m!1251379 () Bool)

(assert (=> b!1096446 m!1251379))

(push 1)

(assert (not b!1096446))

(assert (not b!1096449))

(assert (not b!1096470))

(assert (not b!1096472))

(assert (not b!1096471))

(assert (not b!1096461))

(assert (not b!1096447))

(assert (not b!1096473))

(assert (not b!1096460))

(assert (not start!93944))

(assert (not b!1096444))

(assert (not b!1096453))

(assert (not b!1096457))

(assert (not b!1096469))

(assert (not b!1096445))

(assert (not b!1096451))

(assert (not b!1096450))

(assert (not b!1096454))

(assert (not b!1096456))

(assert (not b!1096452))

(assert (not b!1096468))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!309685 () Bool)

(declare-fun lt!369780 () Int)

(assert (=> d!309685 (= lt!369780 (size!8156 (list!3783 lt!369663)))))

(declare-fun size!8161 (Conc!3232) Int)

(assert (=> d!309685 (= lt!369780 (size!8161 (c!186045 lt!369663)))))

(assert (=> d!309685 (= (size!8157 lt!369663) lt!369780)))

(declare-fun bs!258963 () Bool)

(assert (= bs!258963 d!309685))

(assert (=> bs!258963 m!1251377))

(assert (=> bs!258963 m!1251377))

(declare-fun m!1251483 () Bool)

(assert (=> bs!258963 m!1251483))

(declare-fun m!1251485 () Bool)

(assert (=> bs!258963 m!1251485))

(assert (=> b!1096453 d!309685))

(declare-fun d!309687 () Bool)

(declare-fun e!694243 () Bool)

(assert (=> d!309687 e!694243))

(declare-fun res!486862 () Bool)

(assert (=> d!309687 (=> res!486862 e!694243)))

(assert (=> d!309687 (= res!486862 (isEmpty!6675 lt!369679))))

(declare-fun lt!369783 () Unit!16089)

(declare-fun choose!7060 (List!10550 Int) Unit!16089)

(assert (=> d!309687 (= lt!369783 (choose!7060 lt!369679 lambda!42664))))

(assert (=> d!309687 (not (forall!2381 lt!369679 lambda!42664))))

(assert (=> d!309687 (= (lemmaNotForallFilterShorter!44 lt!369679 lambda!42664) lt!369783)))

(declare-fun b!1096542 () Bool)

(assert (=> b!1096542 (= e!694243 (< (size!8156 (filter!283 lt!369679 lambda!42664)) (size!8156 lt!369679)))))

(assert (= (and d!309687 (not res!486862)) b!1096542))

(assert (=> d!309687 m!1251319))

(declare-fun m!1251487 () Bool)

(assert (=> d!309687 m!1251487))

(declare-fun m!1251489 () Bool)

(assert (=> d!309687 m!1251489))

(assert (=> b!1096542 m!1251299))

(assert (=> b!1096542 m!1251299))

(assert (=> b!1096542 m!1251301))

(assert (=> b!1096542 m!1251303))

(assert (=> b!1096453 d!309687))

(declare-fun d!309689 () Bool)

(declare-fun lt!369786 () Bool)

(assert (=> d!309689 (= lt!369786 (forall!2381 (list!3783 objs!8) lambda!42664))))

(declare-fun forall!2384 (Conc!3232 Int) Bool)

(assert (=> d!309689 (= lt!369786 (forall!2384 (c!186045 objs!8) lambda!42664))))

(assert (=> d!309689 (= (forall!2380 objs!8 lambda!42664) lt!369786)))

(declare-fun bs!258964 () Bool)

(assert (= bs!258964 d!309689))

(assert (=> bs!258964 m!1251279))

(assert (=> bs!258964 m!1251279))

(declare-fun m!1251491 () Bool)

(assert (=> bs!258964 m!1251491))

(declare-fun m!1251493 () Bool)

(assert (=> bs!258964 m!1251493))

(assert (=> b!1096453 d!309689))

(declare-fun d!309691 () Bool)

(declare-fun dynLambda!4616 (Int tuple2!11728) Bool)

(assert (=> d!309691 (dynLambda!4616 lambda!42662 lt!369669)))

(declare-fun lt!369789 () Unit!16089)

(declare-fun choose!7061 (List!10550 Int tuple2!11728) Unit!16089)

(assert (=> d!309691 (= lt!369789 (choose!7061 (list!3783 lt!369654) lambda!42662 lt!369669))))

(declare-fun e!694246 () Bool)

(assert (=> d!309691 e!694246))

(declare-fun res!486865 () Bool)

(assert (=> d!309691 (=> (not res!486865) (not e!694246))))

(assert (=> d!309691 (= res!486865 (forall!2381 (list!3783 lt!369654) lambda!42662))))

(assert (=> d!309691 (= (forallContained!503 (list!3783 lt!369654) lambda!42662 lt!369669) lt!369789)))

(declare-fun b!1096545 () Bool)

(declare-fun contains!1807 (List!10550 tuple2!11728) Bool)

(assert (=> b!1096545 (= e!694246 (contains!1807 (list!3783 lt!369654) lt!369669))))

(assert (= (and d!309691 res!486865) b!1096545))

(declare-fun b_lambda!31627 () Bool)

(assert (=> (not b_lambda!31627) (not d!309691)))

(declare-fun m!1251495 () Bool)

(assert (=> d!309691 m!1251495))

(assert (=> d!309691 m!1251323))

(declare-fun m!1251497 () Bool)

(assert (=> d!309691 m!1251497))

(assert (=> d!309691 m!1251323))

(declare-fun m!1251499 () Bool)

(assert (=> d!309691 m!1251499))

(assert (=> b!1096545 m!1251323))

(declare-fun m!1251501 () Bool)

(assert (=> b!1096545 m!1251501))

(assert (=> b!1096444 d!309691))

(declare-fun d!309693 () Bool)

(declare-fun list!3785 (Conc!3232) List!10550)

(assert (=> d!309693 (= (list!3783 lt!369654) (list!3785 (c!186045 lt!369654)))))

(declare-fun bs!258965 () Bool)

(assert (= bs!258965 d!309693))

(declare-fun m!1251503 () Bool)

(assert (=> bs!258965 m!1251503))

(assert (=> b!1096444 d!309693))

(declare-fun d!309695 () Bool)

(declare-fun c!186064 () Bool)

(assert (=> d!309695 (= c!186064 (is-Node!3232 (c!186045 objs!8)))))

(declare-fun e!694251 () Bool)

(assert (=> d!309695 (= (inv!13505 (c!186045 objs!8)) e!694251)))

(declare-fun b!1096552 () Bool)

(declare-fun inv!13509 (Conc!3232) Bool)

(assert (=> b!1096552 (= e!694251 (inv!13509 (c!186045 objs!8)))))

(declare-fun b!1096553 () Bool)

(declare-fun e!694252 () Bool)

(assert (=> b!1096553 (= e!694251 e!694252)))

(declare-fun res!486868 () Bool)

(assert (=> b!1096553 (= res!486868 (not (is-Leaf!5139 (c!186045 objs!8))))))

(assert (=> b!1096553 (=> res!486868 e!694252)))

(declare-fun b!1096554 () Bool)

(declare-fun inv!13510 (Conc!3232) Bool)

(assert (=> b!1096554 (= e!694252 (inv!13510 (c!186045 objs!8)))))

(assert (= (and d!309695 c!186064) b!1096552))

(assert (= (and d!309695 (not c!186064)) b!1096553))

(assert (= (and b!1096553 (not res!486868)) b!1096554))

(declare-fun m!1251505 () Bool)

(assert (=> b!1096552 m!1251505))

(declare-fun m!1251507 () Bool)

(assert (=> b!1096554 m!1251507))

(assert (=> b!1096454 d!309695))

(declare-fun d!309697 () Bool)

(assert (=> d!309697 (dynLambda!4616 lambda!42664 lt!369669)))

(declare-fun lt!369790 () Unit!16089)

(assert (=> d!309697 (= lt!369790 (choose!7061 lt!369679 lambda!42664 lt!369669))))

(declare-fun e!694253 () Bool)

(assert (=> d!309697 e!694253))

(declare-fun res!486869 () Bool)

(assert (=> d!309697 (=> (not res!486869) (not e!694253))))

(assert (=> d!309697 (= res!486869 (forall!2381 lt!369679 lambda!42664))))

(assert (=> d!309697 (= (forallContained!503 lt!369679 lambda!42664 lt!369669) lt!369790)))

(declare-fun b!1096555 () Bool)

(assert (=> b!1096555 (= e!694253 (contains!1807 lt!369679 lt!369669))))

(assert (= (and d!309697 res!486869) b!1096555))

(declare-fun b_lambda!31629 () Bool)

(assert (=> (not b_lambda!31629) (not d!309697)))

(declare-fun m!1251509 () Bool)

(assert (=> d!309697 m!1251509))

(declare-fun m!1251511 () Bool)

(assert (=> d!309697 m!1251511))

(assert (=> d!309697 m!1251489))

(declare-fun m!1251513 () Bool)

(assert (=> b!1096555 m!1251513))

(assert (=> b!1096461 d!309697))

(declare-fun d!309699 () Bool)

(declare-fun lt!369791 () Bool)

(assert (=> d!309699 (= lt!369791 (forall!2381 (list!3783 objs!8) lambda!42661))))

(assert (=> d!309699 (= lt!369791 (forall!2384 (c!186045 objs!8) lambda!42661))))

(assert (=> d!309699 (= (forall!2380 objs!8 lambda!42661) lt!369791)))

(declare-fun bs!258966 () Bool)

(assert (= bs!258966 d!309699))

(assert (=> bs!258966 m!1251279))

(assert (=> bs!258966 m!1251279))

(declare-fun m!1251515 () Bool)

(assert (=> bs!258966 m!1251515))

(declare-fun m!1251517 () Bool)

(assert (=> bs!258966 m!1251517))

(assert (=> start!93944 d!309699))

(declare-fun d!309701 () Bool)

(declare-fun isBalanced!893 (Conc!3232) Bool)

(assert (=> d!309701 (= (inv!13506 objs!8) (isBalanced!893 (c!186045 objs!8)))))

(declare-fun bs!258967 () Bool)

(assert (= bs!258967 d!309701))

(declare-fun m!1251519 () Bool)

(assert (=> bs!258967 m!1251519))

(assert (=> start!93944 d!309701))

(declare-fun d!309703 () Bool)

(declare-fun lt!369794 () Bool)

(assert (=> d!309703 (= lt!369794 (contains!1807 (list!3783 lt!369663) lt!369669))))

(declare-fun contains!1808 (Conc!3232 tuple2!11728) Bool)

(assert (=> d!309703 (= lt!369794 (contains!1808 (c!186045 lt!369663) lt!369669))))

(assert (=> d!309703 (= (contains!1805 lt!369663 lt!369669) lt!369794)))

(declare-fun bs!258968 () Bool)

(assert (= bs!258968 d!309703))

(assert (=> bs!258968 m!1251377))

(assert (=> bs!258968 m!1251377))

(declare-fun m!1251521 () Bool)

(assert (=> bs!258968 m!1251521))

(declare-fun m!1251523 () Bool)

(assert (=> bs!258968 m!1251523))

(assert (=> b!1096450 d!309703))

(declare-fun d!309705 () Bool)

(assert (=> d!309705 (= (list!3783 objs!8) (list!3785 (c!186045 objs!8)))))

(declare-fun bs!258969 () Bool)

(assert (= bs!258969 d!309705))

(declare-fun m!1251525 () Bool)

(assert (=> bs!258969 m!1251525))

(assert (=> b!1096452 d!309705))

(declare-fun d!309707 () Bool)

(declare-fun e!694254 () Bool)

(assert (=> d!309707 e!694254))

(declare-fun res!486870 () Bool)

(assert (=> d!309707 (=> res!486870 e!694254)))

(assert (=> d!309707 (= res!486870 (isEmpty!6675 lt!369679))))

(declare-fun lt!369795 () Unit!16089)

(assert (=> d!309707 (= lt!369795 (choose!7060 lt!369679 lambda!42662))))

(assert (=> d!309707 (not (forall!2381 lt!369679 lambda!42662))))

(assert (=> d!309707 (= (lemmaNotForallFilterShorter!44 lt!369679 lambda!42662) lt!369795)))

(declare-fun b!1096556 () Bool)

(assert (=> b!1096556 (= e!694254 (< (size!8156 (filter!283 lt!369679 lambda!42662)) (size!8156 lt!369679)))))

(assert (= (and d!309707 (not res!486870)) b!1096556))

(assert (=> d!309707 m!1251319))

(declare-fun m!1251527 () Bool)

(assert (=> d!309707 m!1251527))

(declare-fun m!1251529 () Bool)

(assert (=> d!309707 m!1251529))

(assert (=> b!1096556 m!1251327))

(assert (=> b!1096556 m!1251327))

(assert (=> b!1096556 m!1251329))

(assert (=> b!1096556 m!1251303))

(assert (=> b!1096452 d!309707))

(declare-fun d!309709 () Bool)

(declare-fun lt!369796 () Int)

(assert (=> d!309709 (= lt!369796 (size!8156 (list!3783 lt!369654)))))

(assert (=> d!309709 (= lt!369796 (size!8161 (c!186045 lt!369654)))))

(assert (=> d!309709 (= (size!8157 lt!369654) lt!369796)))

(declare-fun bs!258970 () Bool)

(assert (= bs!258970 d!309709))

(assert (=> bs!258970 m!1251323))

(assert (=> bs!258970 m!1251323))

(declare-fun m!1251531 () Bool)

(assert (=> bs!258970 m!1251531))

(declare-fun m!1251533 () Bool)

(assert (=> bs!258970 m!1251533))

(assert (=> b!1096452 d!309709))

(declare-fun d!309711 () Bool)

(declare-fun lt!369797 () Bool)

(assert (=> d!309711 (= lt!369797 (forall!2381 (list!3783 objs!8) lambda!42662))))

(assert (=> d!309711 (= lt!369797 (forall!2384 (c!186045 objs!8) lambda!42662))))

(assert (=> d!309711 (= (forall!2380 objs!8 lambda!42662) lt!369797)))

(declare-fun bs!258971 () Bool)

(assert (= bs!258971 d!309711))

(assert (=> bs!258971 m!1251279))

(assert (=> bs!258971 m!1251279))

(declare-fun m!1251535 () Bool)

(assert (=> bs!258971 m!1251535))

(declare-fun m!1251537 () Bool)

(assert (=> bs!258971 m!1251537))

(assert (=> b!1096452 d!309711))

(declare-fun d!309713 () Bool)

(assert (=> d!309713 (= (isEmpty!6675 lt!369679) (is-Nil!10534 lt!369679))))

(assert (=> b!1096452 d!309713))

(declare-fun d!309715 () Bool)

(assert (=> d!309715 (dynLambda!4616 lambda!42662 lt!369669)))

(declare-fun lt!369798 () Unit!16089)

(assert (=> d!309715 (= lt!369798 (choose!7061 (list!3783 objs!8) lambda!42662 lt!369669))))

(declare-fun e!694255 () Bool)

(assert (=> d!309715 e!694255))

(declare-fun res!486871 () Bool)

(assert (=> d!309715 (=> (not res!486871) (not e!694255))))

(assert (=> d!309715 (= res!486871 (forall!2381 (list!3783 objs!8) lambda!42662))))

(assert (=> d!309715 (= (forallContained!503 (list!3783 objs!8) lambda!42662 lt!369669) lt!369798)))

(declare-fun b!1096557 () Bool)

(assert (=> b!1096557 (= e!694255 (contains!1807 (list!3783 objs!8) lt!369669))))

(assert (= (and d!309715 res!486871) b!1096557))

(declare-fun b_lambda!31631 () Bool)

(assert (=> (not b_lambda!31631) (not d!309715)))

(assert (=> d!309715 m!1251495))

(assert (=> d!309715 m!1251279))

(declare-fun m!1251539 () Bool)

(assert (=> d!309715 m!1251539))

(assert (=> d!309715 m!1251279))

(assert (=> d!309715 m!1251535))

(assert (=> b!1096557 m!1251279))

(declare-fun m!1251541 () Bool)

(assert (=> b!1096557 m!1251541))

(assert (=> b!1096451 d!309715))

(assert (=> b!1096451 d!309705))

(declare-fun d!309717 () Bool)

(declare-fun lt!369801 () Int)

(assert (=> d!309717 (>= lt!369801 0)))

(declare-fun e!694258 () Int)

(assert (=> d!309717 (= lt!369801 e!694258)))

(declare-fun c!186067 () Bool)

(assert (=> d!309717 (= c!186067 (is-Nil!10534 (filter!283 lt!369679 lambda!42664)))))

(assert (=> d!309717 (= (size!8156 (filter!283 lt!369679 lambda!42664)) lt!369801)))

(declare-fun b!1096562 () Bool)

(assert (=> b!1096562 (= e!694258 0)))

(declare-fun b!1096563 () Bool)

(assert (=> b!1096563 (= e!694258 (+ 1 (size!8156 (t!103276 (filter!283 lt!369679 lambda!42664)))))))

(assert (= (and d!309717 c!186067) b!1096562))

(assert (= (and d!309717 (not c!186067)) b!1096563))

(declare-fun m!1251543 () Bool)

(assert (=> b!1096563 m!1251543))

(assert (=> b!1096447 d!309717))

(declare-fun b!1096580 () Bool)

(declare-fun e!694269 () List!10550)

(declare-fun call!80349 () List!10550)

(assert (=> b!1096580 (= e!694269 call!80349)))

(declare-fun d!309719 () Bool)

(declare-fun e!694268 () Bool)

(assert (=> d!309719 e!694268))

(declare-fun res!486877 () Bool)

(assert (=> d!309719 (=> (not res!486877) (not e!694268))))

(declare-fun lt!369806 () List!10550)

(assert (=> d!309719 (= res!486877 (<= (size!8156 lt!369806) (size!8156 lt!369679)))))

(declare-fun e!694267 () List!10550)

(assert (=> d!309719 (= lt!369806 e!694267)))

(declare-fun c!186074 () Bool)

(assert (=> d!309719 (= c!186074 (is-Nil!10534 lt!369679))))

(assert (=> d!309719 (= (filter!283 lt!369679 lambda!42664) lt!369806)))

(declare-fun b!1096581 () Bool)

(assert (=> b!1096581 (= e!694267 Nil!10534)))

(declare-fun b!1096582 () Bool)

(assert (=> b!1096582 (= e!694269 (Cons!10534 (h!15935 lt!369679) call!80349))))

(declare-fun b!1096583 () Bool)

(assert (=> b!1096583 (= e!694268 (forall!2381 lt!369806 lambda!42664))))

(declare-fun b!1096584 () Bool)

(declare-fun res!486876 () Bool)

(assert (=> b!1096584 (=> (not res!486876) (not e!694268))))

(declare-fun content!1521 (List!10550) (Set tuple2!11728))

(assert (=> b!1096584 (= res!486876 (set.subset (content!1521 lt!369806) (content!1521 lt!369679)))))

(declare-fun b!1096585 () Bool)

(assert (=> b!1096585 (= e!694267 e!694269)))

(declare-fun c!186075 () Bool)

(assert (=> b!1096585 (= c!186075 (dynLambda!4616 lambda!42664 (h!15935 lt!369679)))))

(declare-fun bm!80344 () Bool)

(assert (=> bm!80344 (= call!80349 (filter!283 (t!103276 lt!369679) lambda!42664))))

(assert (= (and d!309719 c!186074) b!1096581))

(assert (= (and d!309719 (not c!186074)) b!1096585))

(assert (= (and b!1096585 c!186075) b!1096582))

(assert (= (and b!1096585 (not c!186075)) b!1096580))

(assert (= (or b!1096582 b!1096580) bm!80344))

(assert (= (and d!309719 res!486877) b!1096584))

(assert (= (and b!1096584 res!486876) b!1096583))

(declare-fun b_lambda!31633 () Bool)

(assert (=> (not b_lambda!31633) (not b!1096585)))

(declare-fun m!1251545 () Bool)

(assert (=> b!1096583 m!1251545))

(declare-fun m!1251547 () Bool)

(assert (=> b!1096585 m!1251547))

(declare-fun m!1251549 () Bool)

(assert (=> d!309719 m!1251549))

(assert (=> d!309719 m!1251303))

(declare-fun m!1251551 () Bool)

(assert (=> bm!80344 m!1251551))

(declare-fun m!1251553 () Bool)

(assert (=> b!1096584 m!1251553))

(declare-fun m!1251555 () Bool)

(assert (=> b!1096584 m!1251555))

(assert (=> b!1096447 d!309719))

(declare-fun d!309723 () Bool)

(declare-fun lt!369807 () Int)

(assert (=> d!309723 (>= lt!369807 0)))

(declare-fun e!694270 () Int)

(assert (=> d!309723 (= lt!369807 e!694270)))

(declare-fun c!186076 () Bool)

(assert (=> d!309723 (= c!186076 (is-Nil!10534 lt!369679))))

(assert (=> d!309723 (= (size!8156 lt!369679) lt!369807)))

(declare-fun b!1096586 () Bool)

(assert (=> b!1096586 (= e!694270 0)))

(declare-fun b!1096587 () Bool)

(assert (=> b!1096587 (= e!694270 (+ 1 (size!8156 (t!103276 lt!369679))))))

(assert (= (and d!309723 c!186076) b!1096586))

(assert (= (and d!309723 (not c!186076)) b!1096587))

(declare-fun m!1251557 () Bool)

(assert (=> b!1096587 m!1251557))

(assert (=> b!1096447 d!309723))

(declare-fun d!309725 () Bool)

(declare-fun lt!369808 () Int)

(assert (=> d!309725 (= lt!369808 (size!8156 (list!3783 objs!8)))))

(assert (=> d!309725 (= lt!369808 (size!8161 (c!186045 objs!8)))))

(assert (=> d!309725 (= (size!8157 objs!8) lt!369808)))

(declare-fun bs!258972 () Bool)

(assert (= bs!258972 d!309725))

(assert (=> bs!258972 m!1251279))

(assert (=> bs!258972 m!1251279))

(declare-fun m!1251559 () Bool)

(assert (=> bs!258972 m!1251559))

(declare-fun m!1251561 () Bool)

(assert (=> bs!258972 m!1251561))

(assert (=> b!1096460 d!309725))

(declare-fun d!309727 () Bool)

(declare-fun lt!369810 () Bool)

(assert (=> d!309727 (= lt!369810 (contains!1807 (list!3783 lt!369654) lt!369669))))

(assert (=> d!309727 (= lt!369810 (contains!1808 (c!186045 lt!369654) lt!369669))))

(assert (=> d!309727 (= (contains!1805 lt!369654 lt!369669) lt!369810)))

(declare-fun bs!258973 () Bool)

(assert (= bs!258973 d!309727))

(assert (=> bs!258973 m!1251323))

(assert (=> bs!258973 m!1251323))

(assert (=> bs!258973 m!1251501))

(declare-fun m!1251563 () Bool)

(assert (=> bs!258973 m!1251563))

(assert (=> b!1096449 d!309727))

(declare-fun d!309729 () Bool)

(assert (=> d!309729 (= (list!3783 (filter!282 objs!8 lambda!42664)) (list!3785 (c!186045 (filter!282 objs!8 lambda!42664))))))

(declare-fun bs!258974 () Bool)

(assert (= bs!258974 d!309729))

(declare-fun m!1251565 () Bool)

(assert (=> bs!258974 m!1251565))

(assert (=> b!1096456 d!309729))

(declare-fun d!309731 () Bool)

(assert (=> d!309731 (forall!2381 (++!2860 (++!2860 lt!369674 lt!369656) (list!3783 (sortObjectsByID!0 lt!369663))) lambda!42661)))

(declare-fun lt!369813 () Unit!16089)

(declare-fun choose!7062 (List!10550 List!10550 Int) Unit!16089)

(assert (=> d!309731 (= lt!369813 (choose!7062 (++!2860 lt!369674 lt!369656) (list!3783 (sortObjectsByID!0 lt!369663)) lambda!42661))))

(assert (=> d!309731 (forall!2381 (++!2860 lt!369674 lt!369656) lambda!42661)))

(assert (=> d!309731 (= (lemmaConcatPreservesForall!89 (++!2860 lt!369674 lt!369656) (list!3783 (sortObjectsByID!0 lt!369663)) lambda!42661) lt!369813)))

(declare-fun bs!258975 () Bool)

(assert (= bs!258975 d!309731))

(assert (=> bs!258975 m!1251363))

(assert (=> bs!258975 m!1251339))

(declare-fun m!1251569 () Bool)

(assert (=> bs!258975 m!1251569))

(assert (=> bs!258975 m!1251569))

(declare-fun m!1251571 () Bool)

(assert (=> bs!258975 m!1251571))

(assert (=> bs!258975 m!1251363))

(assert (=> bs!258975 m!1251339))

(declare-fun m!1251573 () Bool)

(assert (=> bs!258975 m!1251573))

(assert (=> bs!258975 m!1251363))

(declare-fun m!1251575 () Bool)

(assert (=> bs!258975 m!1251575))

(assert (=> b!1096456 d!309731))

(declare-fun d!309735 () Bool)

(declare-fun res!486882 () Bool)

(declare-fun e!694276 () Bool)

(assert (=> d!309735 (=> res!486882 e!694276)))

(assert (=> d!309735 (= res!486882 (is-Nil!10534 lt!369676))))

(assert (=> d!309735 (= (forall!2381 lt!369676 lambda!42661) e!694276)))

(declare-fun b!1096594 () Bool)

(declare-fun e!694277 () Bool)

(assert (=> b!1096594 (= e!694276 e!694277)))

(declare-fun res!486883 () Bool)

(assert (=> b!1096594 (=> (not res!486883) (not e!694277))))

(assert (=> b!1096594 (= res!486883 (dynLambda!4616 lambda!42661 (h!15935 lt!369676)))))

(declare-fun b!1096595 () Bool)

(assert (=> b!1096595 (= e!694277 (forall!2381 (t!103276 lt!369676) lambda!42661))))

(assert (= (and d!309735 (not res!486882)) b!1096594))

(assert (= (and b!1096594 res!486883) b!1096595))

(declare-fun b_lambda!31635 () Bool)

(assert (=> (not b_lambda!31635) (not b!1096594)))

(declare-fun m!1251577 () Bool)

(assert (=> b!1096594 m!1251577))

(declare-fun m!1251579 () Bool)

(assert (=> b!1096595 m!1251579))

(assert (=> b!1096456 d!309735))

(declare-fun d!309737 () Bool)

(assert (=> d!309737 (forall!2381 lt!369676 lambda!42661)))

(declare-fun lt!369818 () Unit!16089)

(declare-fun choose!7063 (List!10550 List!10550 Int) Unit!16089)

(assert (=> d!309737 (= lt!369818 (choose!7063 lt!369676 lt!369679 lambda!42661))))

(assert (=> d!309737 (forall!2381 lt!369679 lambda!42661)))

(assert (=> d!309737 (= (lemmaForallSubseq!46 lt!369676 lt!369679 lambda!42661) lt!369818)))

(declare-fun bs!258976 () Bool)

(assert (= bs!258976 d!309737))

(assert (=> bs!258976 m!1251369))

(declare-fun m!1251581 () Bool)

(assert (=> bs!258976 m!1251581))

(declare-fun m!1251583 () Bool)

(assert (=> bs!258976 m!1251583))

(assert (=> b!1096456 d!309737))

(declare-fun d!309739 () Bool)

(assert (=> d!309739 (forall!2381 lt!369675 lambda!42661)))

(declare-fun lt!369819 () Unit!16089)

(assert (=> d!309739 (= lt!369819 (choose!7063 lt!369675 lt!369679 lambda!42661))))

(assert (=> d!309739 (forall!2381 lt!369679 lambda!42661)))

(assert (=> d!309739 (= (lemmaForallSubseq!46 lt!369675 lt!369679 lambda!42661) lt!369819)))

(declare-fun bs!258977 () Bool)

(assert (= bs!258977 d!309739))

(assert (=> bs!258977 m!1251337))

(declare-fun m!1251585 () Bool)

(assert (=> bs!258977 m!1251585))

(assert (=> bs!258977 m!1251583))

(assert (=> b!1096456 d!309739))

(declare-fun d!309741 () Bool)

(assert (=> d!309741 (= (list!3783 (sortObjectsByID!0 lt!369663)) (list!3785 (c!186045 (sortObjectsByID!0 lt!369663))))))

(declare-fun bs!258978 () Bool)

(assert (= bs!258978 d!309741))

(declare-fun m!1251587 () Bool)

(assert (=> bs!258978 m!1251587))

(assert (=> b!1096456 d!309741))

(declare-fun d!309743 () Bool)

(assert (=> d!309743 (= (list!3783 (filter!282 objs!8 lambda!42663)) (list!3785 (c!186045 (filter!282 objs!8 lambda!42663))))))

(declare-fun bs!258979 () Bool)

(assert (= bs!258979 d!309743))

(declare-fun m!1251589 () Bool)

(assert (=> bs!258979 m!1251589))

(assert (=> b!1096456 d!309743))

(declare-fun d!309745 () Bool)

(assert (=> d!309745 (= (list!3783 (sortObjectsByID!0 lt!369654)) (list!3785 (c!186045 (sortObjectsByID!0 lt!369654))))))

(declare-fun bs!258980 () Bool)

(assert (= bs!258980 d!309745))

(declare-fun m!1251591 () Bool)

(assert (=> bs!258980 m!1251591))

(assert (=> b!1096456 d!309745))

(declare-fun bs!258984 () Bool)

(declare-fun b!1096661 () Bool)

(assert (= bs!258984 (and b!1096661 start!93944)))

(declare-fun lambda!42763 () Int)

(assert (=> bs!258984 (not (= lambda!42763 lambda!42661))))

(declare-fun bs!258985 () Bool)

(assert (= bs!258985 (and b!1096661 b!1096445)))

(declare-fun lt!369938 () tuple2!11728)

(assert (=> bs!258985 (= (= (_1!6690 lt!369938) (_1!6690 lt!369669)) (= lambda!42763 lambda!42662))))

(assert (=> bs!258985 (not (= lambda!42763 lambda!42663))))

(assert (=> bs!258985 (not (= lambda!42763 lambda!42664))))

(declare-fun b!1096670 () Bool)

(declare-fun e!694323 () Bool)

(assert (=> b!1096670 (= e!694323 true)))

(declare-fun b!1096669 () Bool)

(declare-fun e!694322 () Bool)

(assert (=> b!1096669 (= e!694322 e!694323)))

(assert (=> b!1096661 e!694322))

(assert (= b!1096669 b!1096670))

(assert (= b!1096661 b!1096669))

(declare-fun lambda!42764 () Int)

(assert (=> bs!258984 (not (= lambda!42764 lambda!42661))))

(assert (=> bs!258985 (not (= lambda!42764 lambda!42664))))

(assert (=> b!1096661 (not (= lambda!42764 lambda!42763))))

(assert (=> bs!258985 (not (= lambda!42764 lambda!42662))))

(assert (=> bs!258985 (= (= (_1!6690 lt!369938) (_1!6690 lt!369669)) (= lambda!42764 lambda!42663))))

(declare-fun b!1096672 () Bool)

(declare-fun e!694325 () Bool)

(assert (=> b!1096672 (= e!694325 true)))

(declare-fun b!1096671 () Bool)

(declare-fun e!694324 () Bool)

(assert (=> b!1096671 (= e!694324 e!694325)))

(assert (=> b!1096661 e!694324))

(assert (= b!1096671 b!1096672))

(assert (= b!1096661 b!1096671))

(declare-fun lambda!42765 () Int)

(assert (=> bs!258984 (not (= lambda!42765 lambda!42661))))

(assert (=> bs!258985 (= (= (_1!6690 lt!369938) (_1!6690 lt!369669)) (= lambda!42765 lambda!42664))))

(assert (=> b!1096661 (not (= lambda!42765 lambda!42763))))

(assert (=> b!1096661 (not (= lambda!42765 lambda!42764))))

(assert (=> bs!258985 (not (= lambda!42765 lambda!42662))))

(assert (=> bs!258985 (not (= lambda!42765 lambda!42663))))

(declare-fun b!1096674 () Bool)

(declare-fun e!694327 () Bool)

(assert (=> b!1096674 (= e!694327 true)))

(declare-fun b!1096673 () Bool)

(declare-fun e!694326 () Bool)

(assert (=> b!1096673 (= e!694326 e!694327)))

(assert (=> b!1096661 e!694326))

(assert (= b!1096673 b!1096674))

(assert (= b!1096661 b!1096673))

(declare-fun lambda!42766 () Int)

(assert (=> b!1096661 (not (= lambda!42766 lambda!42765))))

(assert (=> bs!258984 (= lambda!42766 lambda!42661)))

(assert (=> bs!258985 (not (= lambda!42766 lambda!42664))))

(assert (=> b!1096661 (not (= lambda!42766 lambda!42763))))

(assert (=> b!1096661 (not (= lambda!42766 lambda!42764))))

(assert (=> bs!258985 (not (= lambda!42766 lambda!42662))))

(assert (=> bs!258985 (not (= lambda!42766 lambda!42663))))

(declare-fun bs!258986 () Bool)

(declare-fun d!309747 () Bool)

(assert (= bs!258986 (and d!309747 b!1096661)))

(declare-fun lambda!42767 () Int)

(assert (=> bs!258986 (not (= lambda!42767 lambda!42765))))

(declare-fun bs!258987 () Bool)

(assert (= bs!258987 (and d!309747 start!93944)))

(assert (=> bs!258987 (= lambda!42767 lambda!42661)))

(declare-fun bs!258988 () Bool)

(assert (= bs!258988 (and d!309747 b!1096445)))

(assert (=> bs!258988 (not (= lambda!42767 lambda!42664))))

(assert (=> bs!258986 (= lambda!42767 lambda!42766)))

(assert (=> bs!258986 (not (= lambda!42767 lambda!42763))))

(assert (=> bs!258986 (not (= lambda!42767 lambda!42764))))

(assert (=> bs!258988 (not (= lambda!42767 lambda!42662))))

(assert (=> bs!258988 (not (= lambda!42767 lambda!42663))))

(declare-fun b!1096657 () Bool)

(declare-fun e!694316 () BalanceConc!6478)

(assert (=> b!1096657 (= e!694316 lt!369663)))

(declare-fun b!1096658 () Bool)

(declare-fun e!694318 () Unit!16089)

(declare-fun Unit!16103 () Unit!16089)

(assert (=> b!1096658 (= e!694318 Unit!16103)))

(declare-fun b!1096659 () Bool)

(assert (=> b!1096659 true))

(declare-fun lt!369940 () Unit!16089)

(assert (=> b!1096659 (= lt!369940 (forallContained!503 (list!3783 lt!369663) lambda!42765 lt!369938))))

(declare-fun e!694321 () Unit!16089)

(declare-fun err!2429 () Unit!16089)

(assert (=> b!1096659 (= e!694321 err!2429)))

(declare-fun lt!369932 () BalanceConc!6478)

(assert (=> d!309747 (forall!2380 lt!369932 lambda!42767)))

(assert (=> d!309747 (= lt!369932 e!694316)))

(declare-fun c!186098 () Bool)

(assert (=> d!309747 (= c!186098 (<= (size!8157 lt!369663) 1))))

(assert (=> d!309747 (= (sortObjectsByID!0 lt!369663) lt!369932)))

(declare-fun b!1096660 () Bool)

(assert (=> b!1096660 true))

(declare-fun lt!369939 () Unit!16089)

(assert (=> b!1096660 (= lt!369939 (forallContained!503 (list!3783 lt!369663) lambda!42763 lt!369938))))

(declare-fun e!694317 () Unit!16089)

(declare-fun err!2428 () Unit!16089)

(assert (=> b!1096660 (= e!694317 err!2428)))

(declare-fun lt!369927 () BalanceConc!6478)

(declare-fun lt!369926 () BalanceConc!6478)

(declare-fun lt!369935 () BalanceConc!6478)

(declare-fun ++!2862 (BalanceConc!6478 BalanceConc!6478) BalanceConc!6478)

(assert (=> b!1096661 (= e!694316 (++!2862 (++!2862 (sortObjectsByID!0 lt!369927) lt!369926) (sortObjectsByID!0 lt!369935)))))

(assert (=> b!1096661 (= lt!369938 (apply!2084 lt!369663 (ite (>= (size!8157 lt!369663) 0) (div (size!8157 lt!369663) 2) (- (div (- (size!8157 lt!369663)) 2)))))))

(assert (=> b!1096661 (= lt!369927 (filter!282 lt!369663 lambda!42763))))

(assert (=> b!1096661 (= lt!369926 (filter!282 lt!369663 lambda!42764))))

(assert (=> b!1096661 (= lt!369935 (filter!282 lt!369663 lambda!42765))))

(declare-fun c!186100 () Bool)

(assert (=> b!1096661 (= c!186100 (contains!1805 lt!369927 lt!369938))))

(declare-fun lt!369920 () Unit!16089)

(assert (=> b!1096661 (= lt!369920 e!694318)))

(declare-fun c!186101 () Bool)

(assert (=> b!1096661 (= c!186101 (forall!2380 lt!369663 lambda!42763))))

(declare-fun lt!369931 () Unit!16089)

(assert (=> b!1096661 (= lt!369931 e!694317)))

(declare-fun lt!369913 () List!10550)

(assert (=> b!1096661 (= lt!369913 (list!3783 lt!369663))))

(declare-fun lt!369924 () Unit!16089)

(assert (=> b!1096661 (= lt!369924 (lemmaNotForallFilterShorter!44 lt!369913 lambda!42763))))

(declare-fun res!486905 () Bool)

(assert (=> b!1096661 (= res!486905 (isEmpty!6675 lt!369913))))

(declare-fun e!694320 () Bool)

(assert (=> b!1096661 (=> res!486905 e!694320)))

(assert (=> b!1096661 e!694320))

(declare-fun lt!369942 () Unit!16089)

(assert (=> b!1096661 (= lt!369942 lt!369924)))

(declare-fun c!186099 () Bool)

(assert (=> b!1096661 (= c!186099 (contains!1805 lt!369935 lt!369938))))

(declare-fun lt!369943 () Unit!16089)

(declare-fun e!694315 () Unit!16089)

(assert (=> b!1096661 (= lt!369943 e!694315)))

(declare-fun c!186102 () Bool)

(assert (=> b!1096661 (= c!186102 (forall!2380 lt!369663 lambda!42765))))

(declare-fun lt!369922 () Unit!16089)

(assert (=> b!1096661 (= lt!369922 e!694321)))

(declare-fun lt!369928 () List!10550)

(assert (=> b!1096661 (= lt!369928 (list!3783 lt!369663))))

(declare-fun lt!369909 () Unit!16089)

(assert (=> b!1096661 (= lt!369909 (lemmaNotForallFilterShorter!44 lt!369928 lambda!42765))))

(declare-fun res!486906 () Bool)

(assert (=> b!1096661 (= res!486906 (isEmpty!6675 lt!369928))))

(declare-fun e!694319 () Bool)

(assert (=> b!1096661 (=> res!486906 e!694319)))

(assert (=> b!1096661 e!694319))

(declare-fun lt!369936 () Unit!16089)

(assert (=> b!1096661 (= lt!369936 lt!369909)))

(declare-fun lt!369921 () Unit!16089)

(assert (=> b!1096661 (= lt!369921 (filterSubseq!38 (list!3783 lt!369663) lambda!42763))))

(declare-fun lt!369911 () Unit!16089)

(assert (=> b!1096661 (= lt!369911 (filterSubseq!38 (list!3783 lt!369663) lambda!42764))))

(declare-fun lt!369914 () Unit!16089)

(assert (=> b!1096661 (= lt!369914 (filterSubseq!38 (list!3783 lt!369663) lambda!42765))))

(declare-fun lt!369919 () List!10550)

(assert (=> b!1096661 (= lt!369919 (list!3783 (filter!282 lt!369663 lambda!42763)))))

(declare-fun lt!369937 () List!10550)

(assert (=> b!1096661 (= lt!369937 (list!3783 lt!369663))))

(declare-fun lt!369925 () Unit!16089)

(assert (=> b!1096661 (= lt!369925 (lemmaForallSubseq!46 lt!369919 lt!369937 lambda!42766))))

(assert (=> b!1096661 (forall!2381 lt!369919 lambda!42766)))

(declare-fun lt!369929 () Unit!16089)

(assert (=> b!1096661 (= lt!369929 lt!369925)))

(declare-fun lt!369910 () List!10550)

(assert (=> b!1096661 (= lt!369910 (list!3783 (filter!282 lt!369663 lambda!42764)))))

(declare-fun lt!369933 () List!10550)

(assert (=> b!1096661 (= lt!369933 (list!3783 lt!369663))))

(declare-fun lt!369917 () Unit!16089)

(assert (=> b!1096661 (= lt!369917 (lemmaForallSubseq!46 lt!369910 lt!369933 lambda!42766))))

(assert (=> b!1096661 (forall!2381 lt!369910 lambda!42766)))

(declare-fun lt!369916 () Unit!16089)

(assert (=> b!1096661 (= lt!369916 lt!369917)))

(declare-fun lt!369915 () List!10550)

(assert (=> b!1096661 (= lt!369915 (list!3783 (filter!282 lt!369663 lambda!42765)))))

(declare-fun lt!369923 () List!10550)

(assert (=> b!1096661 (= lt!369923 (list!3783 lt!369663))))

(declare-fun lt!369908 () Unit!16089)

(assert (=> b!1096661 (= lt!369908 (lemmaForallSubseq!46 lt!369915 lt!369923 lambda!42766))))

(assert (=> b!1096661 (forall!2381 lt!369915 lambda!42766)))

(declare-fun lt!369941 () Unit!16089)

(assert (=> b!1096661 (= lt!369941 lt!369908)))

(declare-fun lt!369930 () Unit!16089)

(assert (=> b!1096661 (= lt!369930 (lemmaConcatPreservesForall!89 (list!3783 (sortObjectsByID!0 lt!369927)) (list!3783 lt!369926) lambda!42766))))

(declare-fun lt!369918 () Unit!16089)

(assert (=> b!1096661 (= lt!369918 (lemmaConcatPreservesForall!89 (++!2860 (list!3783 (sortObjectsByID!0 lt!369927)) (list!3783 lt!369926)) (list!3783 (sortObjectsByID!0 lt!369935)) lambda!42766))))

(declare-fun b!1096662 () Bool)

(declare-fun Unit!16104 () Unit!16089)

(assert (=> b!1096662 (= e!694315 Unit!16104)))

(declare-fun b!1096663 () Bool)

(assert (=> b!1096663 true))

(declare-fun lt!369912 () Unit!16089)

(assert (=> b!1096663 (= lt!369912 (forallContained!503 (list!3783 lt!369935) lambda!42765 lt!369938))))

(declare-fun err!2426 () Unit!16089)

(assert (=> b!1096663 (= e!694315 err!2426)))

(declare-fun b!1096664 () Bool)

(assert (=> b!1096664 (= e!694319 (< (size!8156 (filter!283 lt!369928 lambda!42765)) (size!8156 lt!369928)))))

(declare-fun b!1096665 () Bool)

(assert (=> b!1096665 true))

(declare-fun lt!369934 () Unit!16089)

(assert (=> b!1096665 (= lt!369934 (forallContained!503 (list!3783 lt!369927) lambda!42763 lt!369938))))

(declare-fun err!2427 () Unit!16089)

(assert (=> b!1096665 (= e!694318 err!2427)))

(declare-fun b!1096666 () Bool)

(declare-fun Unit!16105 () Unit!16089)

(assert (=> b!1096666 (= e!694317 Unit!16105)))

(declare-fun b!1096667 () Bool)

(assert (=> b!1096667 (= e!694320 (< (size!8156 (filter!283 lt!369913 lambda!42763)) (size!8156 lt!369913)))))

(declare-fun b!1096668 () Bool)

(declare-fun Unit!16106 () Unit!16089)

(assert (=> b!1096668 (= e!694321 Unit!16106)))

(assert (= (and d!309747 c!186098) b!1096657))

(assert (= (and d!309747 (not c!186098)) b!1096661))

(assert (= (and b!1096661 c!186100) b!1096665))

(assert (= (and b!1096661 (not c!186100)) b!1096658))

(assert (= (and b!1096661 c!186101) b!1096660))

(assert (= (and b!1096661 (not c!186101)) b!1096666))

(assert (= (and b!1096661 (not res!486905)) b!1096667))

(assert (= (and b!1096661 c!186099) b!1096663))

(assert (= (and b!1096661 (not c!186099)) b!1096662))

(assert (= (and b!1096661 c!186102) b!1096659))

(assert (= (and b!1096661 (not c!186102)) b!1096668))

(assert (= (and b!1096661 (not res!486906)) b!1096664))

(declare-fun m!1251639 () Bool)

(assert (=> b!1096661 m!1251639))

(declare-fun m!1251641 () Bool)

(assert (=> b!1096661 m!1251641))

(declare-fun m!1251643 () Bool)

(assert (=> b!1096661 m!1251643))

(declare-fun m!1251645 () Bool)

(assert (=> b!1096661 m!1251645))

(declare-fun m!1251647 () Bool)

(assert (=> b!1096661 m!1251647))

(declare-fun m!1251649 () Bool)

(assert (=> b!1096661 m!1251649))

(assert (=> b!1096661 m!1251639))

(declare-fun m!1251651 () Bool)

(assert (=> b!1096661 m!1251651))

(declare-fun m!1251653 () Bool)

(assert (=> b!1096661 m!1251653))

(declare-fun m!1251655 () Bool)

(assert (=> b!1096661 m!1251655))

(declare-fun m!1251657 () Bool)

(assert (=> b!1096661 m!1251657))

(assert (=> b!1096661 m!1251639))

(declare-fun m!1251659 () Bool)

(assert (=> b!1096661 m!1251659))

(declare-fun m!1251661 () Bool)

(assert (=> b!1096661 m!1251661))

(assert (=> b!1096661 m!1251377))

(declare-fun m!1251663 () Bool)

(assert (=> b!1096661 m!1251663))

(assert (=> b!1096661 m!1251377))

(assert (=> b!1096661 m!1251377))

(declare-fun m!1251665 () Bool)

(assert (=> b!1096661 m!1251665))

(assert (=> b!1096661 m!1251655))

(declare-fun m!1251667 () Bool)

(assert (=> b!1096661 m!1251667))

(declare-fun m!1251669 () Bool)

(assert (=> b!1096661 m!1251669))

(declare-fun m!1251671 () Bool)

(assert (=> b!1096661 m!1251671))

(assert (=> b!1096661 m!1251657))

(declare-fun m!1251673 () Bool)

(assert (=> b!1096661 m!1251673))

(declare-fun m!1251675 () Bool)

(assert (=> b!1096661 m!1251675))

(declare-fun m!1251677 () Bool)

(assert (=> b!1096661 m!1251677))

(declare-fun m!1251679 () Bool)

(assert (=> b!1096661 m!1251679))

(assert (=> b!1096661 m!1251655))

(assert (=> b!1096661 m!1251377))

(declare-fun m!1251681 () Bool)

(assert (=> b!1096661 m!1251681))

(declare-fun m!1251683 () Bool)

(assert (=> b!1096661 m!1251683))

(declare-fun m!1251685 () Bool)

(assert (=> b!1096661 m!1251685))

(declare-fun m!1251687 () Bool)

(assert (=> b!1096661 m!1251687))

(assert (=> b!1096661 m!1251645))

(assert (=> b!1096661 m!1251685))

(declare-fun m!1251689 () Bool)

(assert (=> b!1096661 m!1251689))

(assert (=> b!1096661 m!1251689))

(declare-fun m!1251691 () Bool)

(assert (=> b!1096661 m!1251691))

(declare-fun m!1251693 () Bool)

(assert (=> b!1096661 m!1251693))

(assert (=> b!1096661 m!1251653))

(assert (=> b!1096661 m!1251653))

(declare-fun m!1251695 () Bool)

(assert (=> b!1096661 m!1251695))

(declare-fun m!1251697 () Bool)

(assert (=> b!1096661 m!1251697))

(assert (=> b!1096661 m!1251689))

(declare-fun m!1251699 () Bool)

(assert (=> b!1096661 m!1251699))

(declare-fun m!1251701 () Bool)

(assert (=> b!1096661 m!1251701))

(assert (=> b!1096661 m!1251657))

(assert (=> b!1096661 m!1251673))

(assert (=> b!1096661 m!1251683))

(assert (=> b!1096661 m!1251673))

(assert (=> b!1096661 m!1251667))

(assert (=> b!1096661 m!1251645))

(declare-fun m!1251703 () Bool)

(assert (=> b!1096661 m!1251703))

(assert (=> b!1096661 m!1251307))

(declare-fun m!1251705 () Bool)

(assert (=> b!1096661 m!1251705))

(declare-fun m!1251707 () Bool)

(assert (=> b!1096665 m!1251707))

(assert (=> b!1096665 m!1251707))

(declare-fun m!1251709 () Bool)

(assert (=> b!1096665 m!1251709))

(assert (=> b!1096660 m!1251377))

(assert (=> b!1096660 m!1251377))

(declare-fun m!1251711 () Bool)

(assert (=> b!1096660 m!1251711))

(declare-fun m!1251713 () Bool)

(assert (=> b!1096667 m!1251713))

(assert (=> b!1096667 m!1251713))

(declare-fun m!1251715 () Bool)

(assert (=> b!1096667 m!1251715))

(declare-fun m!1251717 () Bool)

(assert (=> b!1096667 m!1251717))

(assert (=> b!1096659 m!1251377))

(assert (=> b!1096659 m!1251377))

(declare-fun m!1251719 () Bool)

(assert (=> b!1096659 m!1251719))

(declare-fun m!1251721 () Bool)

(assert (=> b!1096664 m!1251721))

(assert (=> b!1096664 m!1251721))

(declare-fun m!1251723 () Bool)

(assert (=> b!1096664 m!1251723))

(declare-fun m!1251725 () Bool)

(assert (=> b!1096664 m!1251725))

(declare-fun m!1251727 () Bool)

(assert (=> b!1096663 m!1251727))

(assert (=> b!1096663 m!1251727))

(declare-fun m!1251729 () Bool)

(assert (=> b!1096663 m!1251729))

(declare-fun m!1251731 () Bool)

(assert (=> d!309747 m!1251731))

(assert (=> d!309747 m!1251307))

(assert (=> b!1096456 d!309747))

(declare-fun d!309767 () Bool)

(declare-fun res!486907 () Bool)

(declare-fun e!694328 () Bool)

(assert (=> d!309767 (=> res!486907 e!694328)))

(assert (=> d!309767 (= res!486907 (is-Nil!10534 lt!369680))))

(assert (=> d!309767 (= (forall!2381 lt!369680 lambda!42661) e!694328)))

(declare-fun b!1096675 () Bool)

(declare-fun e!694329 () Bool)

(assert (=> b!1096675 (= e!694328 e!694329)))

(declare-fun res!486908 () Bool)

(assert (=> b!1096675 (=> (not res!486908) (not e!694329))))

(assert (=> b!1096675 (= res!486908 (dynLambda!4616 lambda!42661 (h!15935 lt!369680)))))

(declare-fun b!1096676 () Bool)

(assert (=> b!1096676 (= e!694329 (forall!2381 (t!103276 lt!369680) lambda!42661))))

(assert (= (and d!309767 (not res!486907)) b!1096675))

(assert (= (and b!1096675 res!486908) b!1096676))

(declare-fun b_lambda!31643 () Bool)

(assert (=> (not b_lambda!31643) (not b!1096675)))

(declare-fun m!1251733 () Bool)

(assert (=> b!1096675 m!1251733))

(declare-fun m!1251735 () Bool)

(assert (=> b!1096676 m!1251735))

(assert (=> b!1096456 d!309767))

(declare-fun d!309769 () Bool)

(declare-fun e!694332 () Bool)

(assert (=> d!309769 e!694332))

(declare-fun res!486911 () Bool)

(assert (=> d!309769 (=> (not res!486911) (not e!694332))))

(declare-fun filter!286 (Conc!3232 Int) Conc!3232)

(assert (=> d!309769 (= res!486911 (isBalanced!893 (filter!286 (c!186045 objs!8) lambda!42664)))))

(declare-fun lt!369946 () BalanceConc!6478)

(assert (=> d!309769 (= lt!369946 (BalanceConc!6479 (filter!286 (c!186045 objs!8) lambda!42664)))))

(assert (=> d!309769 (= (filter!282 objs!8 lambda!42664) lt!369946)))

(declare-fun b!1096679 () Bool)

(assert (=> b!1096679 (= e!694332 (= (list!3783 lt!369946) (filter!283 (list!3783 objs!8) lambda!42664)))))

(assert (= (and d!309769 res!486911) b!1096679))

(declare-fun m!1251737 () Bool)

(assert (=> d!309769 m!1251737))

(assert (=> d!309769 m!1251737))

(declare-fun m!1251739 () Bool)

(assert (=> d!309769 m!1251739))

(declare-fun m!1251741 () Bool)

(assert (=> b!1096679 m!1251741))

(assert (=> b!1096679 m!1251279))

(assert (=> b!1096679 m!1251279))

(declare-fun m!1251743 () Bool)

(assert (=> b!1096679 m!1251743))

(assert (=> b!1096456 d!309769))

(declare-fun b!1096689 () Bool)

(declare-fun e!694338 () List!10550)

(assert (=> b!1096689 (= e!694338 (Cons!10534 (h!15935 lt!369674) (++!2860 (t!103276 lt!369674) lt!369656)))))

(declare-fun b!1096688 () Bool)

(assert (=> b!1096688 (= e!694338 lt!369656)))

(declare-fun b!1096690 () Bool)

(declare-fun res!486916 () Bool)

(declare-fun e!694337 () Bool)

(assert (=> b!1096690 (=> (not res!486916) (not e!694337))))

(declare-fun lt!369949 () List!10550)

(assert (=> b!1096690 (= res!486916 (= (size!8156 lt!369949) (+ (size!8156 lt!369674) (size!8156 lt!369656))))))

(declare-fun d!309771 () Bool)

(assert (=> d!309771 e!694337))

(declare-fun res!486917 () Bool)

(assert (=> d!309771 (=> (not res!486917) (not e!694337))))

(assert (=> d!309771 (= res!486917 (= (content!1521 lt!369949) (set.union (content!1521 lt!369674) (content!1521 lt!369656))))))

(assert (=> d!309771 (= lt!369949 e!694338)))

(declare-fun c!186106 () Bool)

(assert (=> d!309771 (= c!186106 (is-Nil!10534 lt!369674))))

(assert (=> d!309771 (= (++!2860 lt!369674 lt!369656) lt!369949)))

(declare-fun b!1096691 () Bool)

(assert (=> b!1096691 (= e!694337 (or (not (= lt!369656 Nil!10534)) (= lt!369949 lt!369674)))))

(assert (= (and d!309771 c!186106) b!1096688))

(assert (= (and d!309771 (not c!186106)) b!1096689))

(assert (= (and d!309771 res!486917) b!1096690))

(assert (= (and b!1096690 res!486916) b!1096691))

(declare-fun m!1251745 () Bool)

(assert (=> b!1096689 m!1251745))

(declare-fun m!1251747 () Bool)

(assert (=> b!1096690 m!1251747))

(declare-fun m!1251749 () Bool)

(assert (=> b!1096690 m!1251749))

(declare-fun m!1251751 () Bool)

(assert (=> b!1096690 m!1251751))

(declare-fun m!1251753 () Bool)

(assert (=> d!309771 m!1251753))

(declare-fun m!1251755 () Bool)

(assert (=> d!309771 m!1251755))

(declare-fun m!1251757 () Bool)

(assert (=> d!309771 m!1251757))

(assert (=> b!1096456 d!309771))

(declare-fun bs!258989 () Bool)

(declare-fun b!1096696 () Bool)

(assert (= bs!258989 (and b!1096696 b!1096661)))

(declare-fun lambda!42768 () Int)

(assert (=> bs!258989 (not (= lambda!42768 lambda!42765))))

(declare-fun bs!258990 () Bool)

(assert (= bs!258990 (and b!1096696 start!93944)))

(assert (=> bs!258990 (not (= lambda!42768 lambda!42661))))

(declare-fun bs!258991 () Bool)

(assert (= bs!258991 (and b!1096696 b!1096445)))

(assert (=> bs!258991 (not (= lambda!42768 lambda!42664))))

(assert (=> bs!258989 (not (= lambda!42768 lambda!42766))))

(declare-fun lt!369980 () tuple2!11728)

(assert (=> bs!258989 (= (= (_1!6690 lt!369980) (_1!6690 lt!369938)) (= lambda!42768 lambda!42763))))

(assert (=> bs!258989 (not (= lambda!42768 lambda!42764))))

(declare-fun bs!258992 () Bool)

(assert (= bs!258992 (and b!1096696 d!309747)))

(assert (=> bs!258992 (not (= lambda!42768 lambda!42767))))

(assert (=> bs!258991 (= (= (_1!6690 lt!369980) (_1!6690 lt!369669)) (= lambda!42768 lambda!42662))))

(assert (=> bs!258991 (not (= lambda!42768 lambda!42663))))

(declare-fun b!1096705 () Bool)

(declare-fun e!694347 () Bool)

(assert (=> b!1096705 (= e!694347 true)))

(declare-fun b!1096704 () Bool)

(declare-fun e!694346 () Bool)

(assert (=> b!1096704 (= e!694346 e!694347)))

(assert (=> b!1096696 e!694346))

(assert (= b!1096704 b!1096705))

(assert (= b!1096696 b!1096704))

(declare-fun lambda!42769 () Int)

(assert (=> bs!258989 (not (= lambda!42769 lambda!42765))))

(assert (=> bs!258990 (not (= lambda!42769 lambda!42661))))

(assert (=> bs!258991 (not (= lambda!42769 lambda!42664))))

(assert (=> bs!258989 (not (= lambda!42769 lambda!42766))))

(assert (=> bs!258989 (not (= lambda!42769 lambda!42763))))

(assert (=> bs!258989 (= (= (_1!6690 lt!369980) (_1!6690 lt!369938)) (= lambda!42769 lambda!42764))))

(assert (=> bs!258992 (not (= lambda!42769 lambda!42767))))

(assert (=> bs!258991 (not (= lambda!42769 lambda!42662))))

(assert (=> b!1096696 (not (= lambda!42769 lambda!42768))))

(assert (=> bs!258991 (= (= (_1!6690 lt!369980) (_1!6690 lt!369669)) (= lambda!42769 lambda!42663))))

(declare-fun b!1096707 () Bool)

(declare-fun e!694349 () Bool)

(assert (=> b!1096707 (= e!694349 true)))

(declare-fun b!1096706 () Bool)

(declare-fun e!694348 () Bool)

(assert (=> b!1096706 (= e!694348 e!694349)))

(assert (=> b!1096696 e!694348))

(assert (= b!1096706 b!1096707))

(assert (= b!1096696 b!1096706))

(declare-fun lambda!42770 () Int)

(assert (=> bs!258990 (not (= lambda!42770 lambda!42661))))

(assert (=> bs!258991 (= (= (_1!6690 lt!369980) (_1!6690 lt!369669)) (= lambda!42770 lambda!42664))))

(assert (=> bs!258989 (not (= lambda!42770 lambda!42766))))

(assert (=> bs!258989 (not (= lambda!42770 lambda!42763))))

(assert (=> bs!258989 (not (= lambda!42770 lambda!42764))))

(assert (=> bs!258992 (not (= lambda!42770 lambda!42767))))

(assert (=> bs!258991 (not (= lambda!42770 lambda!42662))))

(assert (=> b!1096696 (not (= lambda!42770 lambda!42768))))

(assert (=> bs!258991 (not (= lambda!42770 lambda!42663))))

(assert (=> b!1096696 (not (= lambda!42770 lambda!42769))))

(assert (=> bs!258989 (= (= (_1!6690 lt!369980) (_1!6690 lt!369938)) (= lambda!42770 lambda!42765))))

(declare-fun b!1096709 () Bool)

(declare-fun e!694351 () Bool)

(assert (=> b!1096709 (= e!694351 true)))

(declare-fun b!1096708 () Bool)

(declare-fun e!694350 () Bool)

(assert (=> b!1096708 (= e!694350 e!694351)))

(assert (=> b!1096696 e!694350))

(assert (= b!1096708 b!1096709))

(assert (= b!1096696 b!1096708))

(declare-fun lambda!42771 () Int)

(assert (=> bs!258990 (= lambda!42771 lambda!42661)))

(assert (=> bs!258991 (not (= lambda!42771 lambda!42664))))

(assert (=> bs!258989 (= lambda!42771 lambda!42766)))

(assert (=> bs!258989 (not (= lambda!42771 lambda!42763))))

(assert (=> bs!258989 (not (= lambda!42771 lambda!42764))))

(assert (=> bs!258992 (= lambda!42771 lambda!42767)))

(assert (=> bs!258991 (not (= lambda!42771 lambda!42662))))

(assert (=> b!1096696 (not (= lambda!42771 lambda!42768))))

(assert (=> b!1096696 (not (= lambda!42771 lambda!42770))))

(assert (=> bs!258991 (not (= lambda!42771 lambda!42663))))

(assert (=> b!1096696 (not (= lambda!42771 lambda!42769))))

(assert (=> bs!258989 (not (= lambda!42771 lambda!42765))))

(declare-fun bs!258993 () Bool)

(declare-fun d!309773 () Bool)

(assert (= bs!258993 (and d!309773 start!93944)))

(declare-fun lambda!42772 () Int)

(assert (=> bs!258993 (= lambda!42772 lambda!42661)))

(declare-fun bs!258994 () Bool)

(assert (= bs!258994 (and d!309773 b!1096445)))

(assert (=> bs!258994 (not (= lambda!42772 lambda!42664))))

(declare-fun bs!258995 () Bool)

(assert (= bs!258995 (and d!309773 b!1096661)))

(assert (=> bs!258995 (= lambda!42772 lambda!42766)))

(assert (=> bs!258995 (not (= lambda!42772 lambda!42763))))

(assert (=> bs!258995 (not (= lambda!42772 lambda!42764))))

(declare-fun bs!258996 () Bool)

(assert (= bs!258996 (and d!309773 d!309747)))

(assert (=> bs!258996 (= lambda!42772 lambda!42767)))

(assert (=> bs!258994 (not (= lambda!42772 lambda!42662))))

(declare-fun bs!258997 () Bool)

(assert (= bs!258997 (and d!309773 b!1096696)))

(assert (=> bs!258997 (= lambda!42772 lambda!42771)))

(assert (=> bs!258997 (not (= lambda!42772 lambda!42768))))

(assert (=> bs!258997 (not (= lambda!42772 lambda!42770))))

(assert (=> bs!258994 (not (= lambda!42772 lambda!42663))))

(assert (=> bs!258997 (not (= lambda!42772 lambda!42769))))

(assert (=> bs!258995 (not (= lambda!42772 lambda!42765))))

(declare-fun b!1096692 () Bool)

(declare-fun e!694340 () BalanceConc!6478)

(assert (=> b!1096692 (= e!694340 lt!369654)))

(declare-fun b!1096693 () Bool)

(declare-fun e!694342 () Unit!16089)

(declare-fun Unit!16107 () Unit!16089)

(assert (=> b!1096693 (= e!694342 Unit!16107)))

(declare-fun b!1096694 () Bool)

(assert (=> b!1096694 true))

(declare-fun lt!369982 () Unit!16089)

(assert (=> b!1096694 (= lt!369982 (forallContained!503 (list!3783 lt!369654) lambda!42770 lt!369980))))

(declare-fun e!694345 () Unit!16089)

(declare-fun err!2433 () Unit!16089)

(assert (=> b!1096694 (= e!694345 err!2433)))

(declare-fun lt!369974 () BalanceConc!6478)

(assert (=> d!309773 (forall!2380 lt!369974 lambda!42772)))

(assert (=> d!309773 (= lt!369974 e!694340)))

(declare-fun c!186107 () Bool)

(assert (=> d!309773 (= c!186107 (<= (size!8157 lt!369654) 1))))

(assert (=> d!309773 (= (sortObjectsByID!0 lt!369654) lt!369974)))

(declare-fun b!1096695 () Bool)

(assert (=> b!1096695 true))

(declare-fun lt!369981 () Unit!16089)

(assert (=> b!1096695 (= lt!369981 (forallContained!503 (list!3783 lt!369654) lambda!42768 lt!369980))))

(declare-fun e!694341 () Unit!16089)

(declare-fun err!2432 () Unit!16089)

(assert (=> b!1096695 (= e!694341 err!2432)))

(declare-fun lt!369969 () BalanceConc!6478)

(declare-fun lt!369968 () BalanceConc!6478)

(declare-fun lt!369977 () BalanceConc!6478)

(assert (=> b!1096696 (= e!694340 (++!2862 (++!2862 (sortObjectsByID!0 lt!369969) lt!369968) (sortObjectsByID!0 lt!369977)))))

(assert (=> b!1096696 (= lt!369980 (apply!2084 lt!369654 (ite (>= (size!8157 lt!369654) 0) (div (size!8157 lt!369654) 2) (- (div (- (size!8157 lt!369654)) 2)))))))

(assert (=> b!1096696 (= lt!369969 (filter!282 lt!369654 lambda!42768))))

(assert (=> b!1096696 (= lt!369968 (filter!282 lt!369654 lambda!42769))))

(assert (=> b!1096696 (= lt!369977 (filter!282 lt!369654 lambda!42770))))

(declare-fun c!186109 () Bool)

(assert (=> b!1096696 (= c!186109 (contains!1805 lt!369969 lt!369980))))

(declare-fun lt!369962 () Unit!16089)

(assert (=> b!1096696 (= lt!369962 e!694342)))

(declare-fun c!186110 () Bool)

(assert (=> b!1096696 (= c!186110 (forall!2380 lt!369654 lambda!42768))))

(declare-fun lt!369973 () Unit!16089)

(assert (=> b!1096696 (= lt!369973 e!694341)))

(declare-fun lt!369955 () List!10550)

(assert (=> b!1096696 (= lt!369955 (list!3783 lt!369654))))

(declare-fun lt!369966 () Unit!16089)

(assert (=> b!1096696 (= lt!369966 (lemmaNotForallFilterShorter!44 lt!369955 lambda!42768))))

(declare-fun res!486918 () Bool)

(assert (=> b!1096696 (= res!486918 (isEmpty!6675 lt!369955))))

(declare-fun e!694344 () Bool)

(assert (=> b!1096696 (=> res!486918 e!694344)))

(assert (=> b!1096696 e!694344))

(declare-fun lt!369984 () Unit!16089)

(assert (=> b!1096696 (= lt!369984 lt!369966)))

(declare-fun c!186108 () Bool)

(assert (=> b!1096696 (= c!186108 (contains!1805 lt!369977 lt!369980))))

(declare-fun lt!369985 () Unit!16089)

(declare-fun e!694339 () Unit!16089)

(assert (=> b!1096696 (= lt!369985 e!694339)))

(declare-fun c!186111 () Bool)

(assert (=> b!1096696 (= c!186111 (forall!2380 lt!369654 lambda!42770))))

(declare-fun lt!369964 () Unit!16089)

(assert (=> b!1096696 (= lt!369964 e!694345)))

(declare-fun lt!369970 () List!10550)

(assert (=> b!1096696 (= lt!369970 (list!3783 lt!369654))))

(declare-fun lt!369951 () Unit!16089)

(assert (=> b!1096696 (= lt!369951 (lemmaNotForallFilterShorter!44 lt!369970 lambda!42770))))

(declare-fun res!486919 () Bool)

(assert (=> b!1096696 (= res!486919 (isEmpty!6675 lt!369970))))

(declare-fun e!694343 () Bool)

(assert (=> b!1096696 (=> res!486919 e!694343)))

(assert (=> b!1096696 e!694343))

(declare-fun lt!369978 () Unit!16089)

(assert (=> b!1096696 (= lt!369978 lt!369951)))

(declare-fun lt!369963 () Unit!16089)

(assert (=> b!1096696 (= lt!369963 (filterSubseq!38 (list!3783 lt!369654) lambda!42768))))

(declare-fun lt!369953 () Unit!16089)

(assert (=> b!1096696 (= lt!369953 (filterSubseq!38 (list!3783 lt!369654) lambda!42769))))

(declare-fun lt!369956 () Unit!16089)

(assert (=> b!1096696 (= lt!369956 (filterSubseq!38 (list!3783 lt!369654) lambda!42770))))

(declare-fun lt!369961 () List!10550)

(assert (=> b!1096696 (= lt!369961 (list!3783 (filter!282 lt!369654 lambda!42768)))))

(declare-fun lt!369979 () List!10550)

(assert (=> b!1096696 (= lt!369979 (list!3783 lt!369654))))

(declare-fun lt!369967 () Unit!16089)

(assert (=> b!1096696 (= lt!369967 (lemmaForallSubseq!46 lt!369961 lt!369979 lambda!42771))))

(assert (=> b!1096696 (forall!2381 lt!369961 lambda!42771)))

(declare-fun lt!369971 () Unit!16089)

(assert (=> b!1096696 (= lt!369971 lt!369967)))

(declare-fun lt!369952 () List!10550)

(assert (=> b!1096696 (= lt!369952 (list!3783 (filter!282 lt!369654 lambda!42769)))))

(declare-fun lt!369975 () List!10550)

(assert (=> b!1096696 (= lt!369975 (list!3783 lt!369654))))

(declare-fun lt!369959 () Unit!16089)

(assert (=> b!1096696 (= lt!369959 (lemmaForallSubseq!46 lt!369952 lt!369975 lambda!42771))))

(assert (=> b!1096696 (forall!2381 lt!369952 lambda!42771)))

(declare-fun lt!369958 () Unit!16089)

(assert (=> b!1096696 (= lt!369958 lt!369959)))

(declare-fun lt!369957 () List!10550)

(assert (=> b!1096696 (= lt!369957 (list!3783 (filter!282 lt!369654 lambda!42770)))))

(declare-fun lt!369965 () List!10550)

(assert (=> b!1096696 (= lt!369965 (list!3783 lt!369654))))

(declare-fun lt!369950 () Unit!16089)

(assert (=> b!1096696 (= lt!369950 (lemmaForallSubseq!46 lt!369957 lt!369965 lambda!42771))))

(assert (=> b!1096696 (forall!2381 lt!369957 lambda!42771)))

(declare-fun lt!369983 () Unit!16089)

(assert (=> b!1096696 (= lt!369983 lt!369950)))

(declare-fun lt!369972 () Unit!16089)

(assert (=> b!1096696 (= lt!369972 (lemmaConcatPreservesForall!89 (list!3783 (sortObjectsByID!0 lt!369969)) (list!3783 lt!369968) lambda!42771))))

(declare-fun lt!369960 () Unit!16089)

(assert (=> b!1096696 (= lt!369960 (lemmaConcatPreservesForall!89 (++!2860 (list!3783 (sortObjectsByID!0 lt!369969)) (list!3783 lt!369968)) (list!3783 (sortObjectsByID!0 lt!369977)) lambda!42771))))

(declare-fun b!1096697 () Bool)

(declare-fun Unit!16108 () Unit!16089)

(assert (=> b!1096697 (= e!694339 Unit!16108)))

(declare-fun b!1096698 () Bool)

(assert (=> b!1096698 true))

(declare-fun lt!369954 () Unit!16089)

(assert (=> b!1096698 (= lt!369954 (forallContained!503 (list!3783 lt!369977) lambda!42770 lt!369980))))

(declare-fun err!2430 () Unit!16089)

(assert (=> b!1096698 (= e!694339 err!2430)))

(declare-fun b!1096699 () Bool)

(assert (=> b!1096699 (= e!694343 (< (size!8156 (filter!283 lt!369970 lambda!42770)) (size!8156 lt!369970)))))

(declare-fun b!1096700 () Bool)

(assert (=> b!1096700 true))

(declare-fun lt!369976 () Unit!16089)

(assert (=> b!1096700 (= lt!369976 (forallContained!503 (list!3783 lt!369969) lambda!42768 lt!369980))))

(declare-fun err!2431 () Unit!16089)

(assert (=> b!1096700 (= e!694342 err!2431)))

(declare-fun b!1096701 () Bool)

(declare-fun Unit!16109 () Unit!16089)

(assert (=> b!1096701 (= e!694341 Unit!16109)))

(declare-fun b!1096702 () Bool)

(assert (=> b!1096702 (= e!694344 (< (size!8156 (filter!283 lt!369955 lambda!42768)) (size!8156 lt!369955)))))

(declare-fun b!1096703 () Bool)

(declare-fun Unit!16110 () Unit!16089)

(assert (=> b!1096703 (= e!694345 Unit!16110)))

(assert (= (and d!309773 c!186107) b!1096692))

(assert (= (and d!309773 (not c!186107)) b!1096696))

(assert (= (and b!1096696 c!186109) b!1096700))

(assert (= (and b!1096696 (not c!186109)) b!1096693))

(assert (= (and b!1096696 c!186110) b!1096695))

(assert (= (and b!1096696 (not c!186110)) b!1096701))

(assert (= (and b!1096696 (not res!486918)) b!1096702))

(assert (= (and b!1096696 c!186108) b!1096698))

(assert (= (and b!1096696 (not c!186108)) b!1096697))

(assert (= (and b!1096696 c!186111) b!1096694))

(assert (= (and b!1096696 (not c!186111)) b!1096703))

(assert (= (and b!1096696 (not res!486919)) b!1096699))

(declare-fun m!1251759 () Bool)

(assert (=> b!1096696 m!1251759))

(declare-fun m!1251761 () Bool)

(assert (=> b!1096696 m!1251761))

(declare-fun m!1251763 () Bool)

(assert (=> b!1096696 m!1251763))

(declare-fun m!1251765 () Bool)

(assert (=> b!1096696 m!1251765))

(declare-fun m!1251767 () Bool)

(assert (=> b!1096696 m!1251767))

(declare-fun m!1251769 () Bool)

(assert (=> b!1096696 m!1251769))

(assert (=> b!1096696 m!1251759))

(declare-fun m!1251771 () Bool)

(assert (=> b!1096696 m!1251771))

(declare-fun m!1251773 () Bool)

(assert (=> b!1096696 m!1251773))

(declare-fun m!1251775 () Bool)

(assert (=> b!1096696 m!1251775))

(declare-fun m!1251777 () Bool)

(assert (=> b!1096696 m!1251777))

(assert (=> b!1096696 m!1251759))

(declare-fun m!1251779 () Bool)

(assert (=> b!1096696 m!1251779))

(declare-fun m!1251781 () Bool)

(assert (=> b!1096696 m!1251781))

(assert (=> b!1096696 m!1251323))

(declare-fun m!1251783 () Bool)

(assert (=> b!1096696 m!1251783))

(assert (=> b!1096696 m!1251323))

(assert (=> b!1096696 m!1251323))

(declare-fun m!1251785 () Bool)

(assert (=> b!1096696 m!1251785))

(assert (=> b!1096696 m!1251775))

(declare-fun m!1251787 () Bool)

(assert (=> b!1096696 m!1251787))

(declare-fun m!1251789 () Bool)

(assert (=> b!1096696 m!1251789))

(declare-fun m!1251791 () Bool)

(assert (=> b!1096696 m!1251791))

(assert (=> b!1096696 m!1251777))

(declare-fun m!1251793 () Bool)

(assert (=> b!1096696 m!1251793))

(declare-fun m!1251795 () Bool)

(assert (=> b!1096696 m!1251795))

(declare-fun m!1251797 () Bool)

(assert (=> b!1096696 m!1251797))

(declare-fun m!1251799 () Bool)

(assert (=> b!1096696 m!1251799))

(assert (=> b!1096696 m!1251775))

(assert (=> b!1096696 m!1251323))

(declare-fun m!1251801 () Bool)

(assert (=> b!1096696 m!1251801))

(declare-fun m!1251803 () Bool)

(assert (=> b!1096696 m!1251803))

(declare-fun m!1251805 () Bool)

(assert (=> b!1096696 m!1251805))

(declare-fun m!1251807 () Bool)

(assert (=> b!1096696 m!1251807))

(assert (=> b!1096696 m!1251765))

(assert (=> b!1096696 m!1251805))

(declare-fun m!1251809 () Bool)

(assert (=> b!1096696 m!1251809))

(assert (=> b!1096696 m!1251809))

(declare-fun m!1251811 () Bool)

(assert (=> b!1096696 m!1251811))

(declare-fun m!1251813 () Bool)

(assert (=> b!1096696 m!1251813))

(assert (=> b!1096696 m!1251773))

(assert (=> b!1096696 m!1251773))

(declare-fun m!1251815 () Bool)

(assert (=> b!1096696 m!1251815))

(declare-fun m!1251817 () Bool)

(assert (=> b!1096696 m!1251817))

(assert (=> b!1096696 m!1251809))

(declare-fun m!1251819 () Bool)

(assert (=> b!1096696 m!1251819))

(declare-fun m!1251821 () Bool)

(assert (=> b!1096696 m!1251821))

(assert (=> b!1096696 m!1251777))

(assert (=> b!1096696 m!1251793))

(assert (=> b!1096696 m!1251803))

(assert (=> b!1096696 m!1251793))

(assert (=> b!1096696 m!1251787))

(assert (=> b!1096696 m!1251765))

(declare-fun m!1251823 () Bool)

(assert (=> b!1096696 m!1251823))

(assert (=> b!1096696 m!1251315))

(declare-fun m!1251825 () Bool)

(assert (=> b!1096696 m!1251825))

(declare-fun m!1251827 () Bool)

(assert (=> b!1096700 m!1251827))

(assert (=> b!1096700 m!1251827))

(declare-fun m!1251829 () Bool)

(assert (=> b!1096700 m!1251829))

(assert (=> b!1096695 m!1251323))

(assert (=> b!1096695 m!1251323))

(declare-fun m!1251831 () Bool)

(assert (=> b!1096695 m!1251831))

(declare-fun m!1251833 () Bool)

(assert (=> b!1096702 m!1251833))

(assert (=> b!1096702 m!1251833))

(declare-fun m!1251835 () Bool)

(assert (=> b!1096702 m!1251835))

(declare-fun m!1251837 () Bool)

(assert (=> b!1096702 m!1251837))

(assert (=> b!1096694 m!1251323))

(assert (=> b!1096694 m!1251323))

(declare-fun m!1251839 () Bool)

(assert (=> b!1096694 m!1251839))

(declare-fun m!1251841 () Bool)

(assert (=> b!1096699 m!1251841))

(assert (=> b!1096699 m!1251841))

(declare-fun m!1251843 () Bool)

(assert (=> b!1096699 m!1251843))

(declare-fun m!1251845 () Bool)

(assert (=> b!1096699 m!1251845))

(declare-fun m!1251847 () Bool)

(assert (=> b!1096698 m!1251847))

(assert (=> b!1096698 m!1251847))

(declare-fun m!1251849 () Bool)

(assert (=> b!1096698 m!1251849))

(declare-fun m!1251851 () Bool)

(assert (=> d!309773 m!1251851))

(assert (=> d!309773 m!1251315))

(assert (=> b!1096456 d!309773))

(declare-fun d!309775 () Bool)

(declare-fun lt!369986 () Bool)

(assert (=> d!309775 (= lt!369986 (forall!2381 (list!3783 lt!369654) lambda!42661))))

(assert (=> d!309775 (= lt!369986 (forall!2384 (c!186045 lt!369654) lambda!42661))))

(assert (=> d!309775 (= (forall!2380 lt!369654 lambda!42661) lt!369986)))

(declare-fun bs!258998 () Bool)

(assert (= bs!258998 d!309775))

(assert (=> bs!258998 m!1251323))

(assert (=> bs!258998 m!1251323))

(declare-fun m!1251853 () Bool)

(assert (=> bs!258998 m!1251853))

(declare-fun m!1251855 () Bool)

(assert (=> bs!258998 m!1251855))

(assert (=> b!1096456 d!309775))

(declare-fun d!309777 () Bool)

(assert (=> d!309777 (forall!2381 (++!2860 lt!369674 lt!369656) lambda!42661)))

(declare-fun lt!369987 () Unit!16089)

(assert (=> d!309777 (= lt!369987 (choose!7062 lt!369674 lt!369656 lambda!42661))))

(assert (=> d!309777 (forall!2381 lt!369674 lambda!42661)))

(assert (=> d!309777 (= (lemmaConcatPreservesForall!89 lt!369674 lt!369656 lambda!42661) lt!369987)))

(declare-fun bs!258999 () Bool)

(assert (= bs!258999 d!309777))

(assert (=> bs!258999 m!1251363))

(assert (=> bs!258999 m!1251363))

(assert (=> bs!258999 m!1251575))

(declare-fun m!1251857 () Bool)

(assert (=> bs!258999 m!1251857))

(declare-fun m!1251859 () Bool)

(assert (=> bs!258999 m!1251859))

(assert (=> b!1096456 d!309777))

(declare-fun d!309779 () Bool)

(declare-fun res!486920 () Bool)

(declare-fun e!694352 () Bool)

(assert (=> d!309779 (=> res!486920 e!694352)))

(assert (=> d!309779 (= res!486920 (is-Nil!10534 lt!369675))))

(assert (=> d!309779 (= (forall!2381 lt!369675 lambda!42661) e!694352)))

(declare-fun b!1096710 () Bool)

(declare-fun e!694353 () Bool)

(assert (=> b!1096710 (= e!694352 e!694353)))

(declare-fun res!486921 () Bool)

(assert (=> b!1096710 (=> (not res!486921) (not e!694353))))

(assert (=> b!1096710 (= res!486921 (dynLambda!4616 lambda!42661 (h!15935 lt!369675)))))

(declare-fun b!1096711 () Bool)

(assert (=> b!1096711 (= e!694353 (forall!2381 (t!103276 lt!369675) lambda!42661))))

(assert (= (and d!309779 (not res!486920)) b!1096710))

(assert (= (and b!1096710 res!486921) b!1096711))

(declare-fun b_lambda!31645 () Bool)

(assert (=> (not b_lambda!31645) (not b!1096710)))

(declare-fun m!1251861 () Bool)

(assert (=> b!1096710 m!1251861))

(declare-fun m!1251863 () Bool)

(assert (=> b!1096711 m!1251863))

(assert (=> b!1096456 d!309779))

(declare-fun d!309781 () Bool)

(declare-fun subseq!149 (List!10550 List!10550) Bool)

(assert (=> d!309781 (subseq!149 (filter!283 lt!369679 lambda!42664) lt!369679)))

(declare-fun lt!369990 () Unit!16089)

(declare-fun choose!7066 (List!10550 Int) Unit!16089)

(assert (=> d!309781 (= lt!369990 (choose!7066 lt!369679 lambda!42664))))

(assert (=> d!309781 (= (filterSubseq!38 lt!369679 lambda!42664) lt!369990)))

(declare-fun bs!259000 () Bool)

(assert (= bs!259000 d!309781))

(assert (=> bs!259000 m!1251299))

(assert (=> bs!259000 m!1251299))

(declare-fun m!1251865 () Bool)

(assert (=> bs!259000 m!1251865))

(declare-fun m!1251867 () Bool)

(assert (=> bs!259000 m!1251867))

(assert (=> b!1096456 d!309781))

(declare-fun d!309783 () Bool)

(assert (=> d!309783 (subseq!149 (filter!283 lt!369679 lambda!42662) lt!369679)))

(declare-fun lt!369991 () Unit!16089)

(assert (=> d!309783 (= lt!369991 (choose!7066 lt!369679 lambda!42662))))

(assert (=> d!309783 (= (filterSubseq!38 lt!369679 lambda!42662) lt!369991)))

(declare-fun bs!259001 () Bool)

(assert (= bs!259001 d!309783))

(assert (=> bs!259001 m!1251327))

(assert (=> bs!259001 m!1251327))

(declare-fun m!1251869 () Bool)

(assert (=> bs!259001 m!1251869))

(declare-fun m!1251871 () Bool)

(assert (=> bs!259001 m!1251871))

(assert (=> b!1096456 d!309783))

(declare-fun d!309785 () Bool)

(assert (=> d!309785 (= (list!3783 (filter!282 objs!8 lambda!42662)) (list!3785 (c!186045 (filter!282 objs!8 lambda!42662))))))

(declare-fun bs!259002 () Bool)

(assert (= bs!259002 d!309785))

(declare-fun m!1251873 () Bool)

(assert (=> bs!259002 m!1251873))

(assert (=> b!1096456 d!309785))

(declare-fun d!309787 () Bool)

(assert (=> d!309787 (subseq!149 (filter!283 lt!369679 lambda!42663) lt!369679)))

(declare-fun lt!369992 () Unit!16089)

(assert (=> d!309787 (= lt!369992 (choose!7066 lt!369679 lambda!42663))))

(assert (=> d!309787 (= (filterSubseq!38 lt!369679 lambda!42663) lt!369992)))

(declare-fun bs!259003 () Bool)

(assert (= bs!259003 d!309787))

(declare-fun m!1251875 () Bool)

(assert (=> bs!259003 m!1251875))

(assert (=> bs!259003 m!1251875))

(declare-fun m!1251877 () Bool)

(assert (=> bs!259003 m!1251877))

(declare-fun m!1251879 () Bool)

(assert (=> bs!259003 m!1251879))

(assert (=> b!1096456 d!309787))

(declare-fun d!309789 () Bool)

(assert (=> d!309789 (= (list!3783 lt!369662) (list!3785 (c!186045 lt!369662)))))

(declare-fun bs!259004 () Bool)

(assert (= bs!259004 d!309789))

(declare-fun m!1251881 () Bool)

(assert (=> bs!259004 m!1251881))

(assert (=> b!1096456 d!309789))

(declare-fun d!309791 () Bool)

(declare-fun e!694354 () Bool)

(assert (=> d!309791 e!694354))

(declare-fun res!486922 () Bool)

(assert (=> d!309791 (=> (not res!486922) (not e!694354))))

(assert (=> d!309791 (= res!486922 (isBalanced!893 (filter!286 (c!186045 objs!8) lambda!42662)))))

(declare-fun lt!369993 () BalanceConc!6478)

(assert (=> d!309791 (= lt!369993 (BalanceConc!6479 (filter!286 (c!186045 objs!8) lambda!42662)))))

(assert (=> d!309791 (= (filter!282 objs!8 lambda!42662) lt!369993)))

(declare-fun b!1096712 () Bool)

(assert (=> b!1096712 (= e!694354 (= (list!3783 lt!369993) (filter!283 (list!3783 objs!8) lambda!42662)))))

(assert (= (and d!309791 res!486922) b!1096712))

(declare-fun m!1251883 () Bool)

(assert (=> d!309791 m!1251883))

(assert (=> d!309791 m!1251883))

(declare-fun m!1251885 () Bool)

(assert (=> d!309791 m!1251885))

(declare-fun m!1251887 () Bool)

(assert (=> b!1096712 m!1251887))

(assert (=> b!1096712 m!1251279))

(assert (=> b!1096712 m!1251279))

(declare-fun m!1251889 () Bool)

(assert (=> b!1096712 m!1251889))

(assert (=> b!1096456 d!309791))

(declare-fun d!309793 () Bool)

(assert (=> d!309793 (forall!2381 lt!369680 lambda!42661)))

(declare-fun lt!369994 () Unit!16089)

(assert (=> d!309793 (= lt!369994 (choose!7063 lt!369680 lt!369679 lambda!42661))))

(assert (=> d!309793 (forall!2381 lt!369679 lambda!42661)))

(assert (=> d!309793 (= (lemmaForallSubseq!46 lt!369680 lt!369679 lambda!42661) lt!369994)))

(declare-fun bs!259005 () Bool)

(assert (= bs!259005 d!309793))

(assert (=> bs!259005 m!1251341))

(declare-fun m!1251891 () Bool)

(assert (=> bs!259005 m!1251891))

(assert (=> bs!259005 m!1251583))

(assert (=> b!1096456 d!309793))

(declare-fun d!309795 () Bool)

(declare-fun e!694355 () Bool)

(assert (=> d!309795 e!694355))

(declare-fun res!486923 () Bool)

(assert (=> d!309795 (=> (not res!486923) (not e!694355))))

(assert (=> d!309795 (= res!486923 (isBalanced!893 (filter!286 (c!186045 objs!8) lambda!42663)))))

(declare-fun lt!369995 () BalanceConc!6478)

(assert (=> d!309795 (= lt!369995 (BalanceConc!6479 (filter!286 (c!186045 objs!8) lambda!42663)))))

(assert (=> d!309795 (= (filter!282 objs!8 lambda!42663) lt!369995)))

(declare-fun b!1096713 () Bool)

(assert (=> b!1096713 (= e!694355 (= (list!3783 lt!369995) (filter!283 (list!3783 objs!8) lambda!42663)))))

(assert (= (and d!309795 res!486923) b!1096713))

(declare-fun m!1251893 () Bool)

(assert (=> d!309795 m!1251893))

(assert (=> d!309795 m!1251893))

(declare-fun m!1251895 () Bool)

(assert (=> d!309795 m!1251895))

(declare-fun m!1251897 () Bool)

(assert (=> b!1096713 m!1251897))

(assert (=> b!1096713 m!1251279))

(assert (=> b!1096713 m!1251279))

(declare-fun m!1251899 () Bool)

(assert (=> b!1096713 m!1251899))

(assert (=> b!1096456 d!309795))

(assert (=> b!1096445 d!309769))

(declare-fun d!309797 () Bool)

(declare-fun lt!369998 () tuple2!11728)

(declare-fun apply!2086 (List!10550 Int) tuple2!11728)

(assert (=> d!309797 (= lt!369998 (apply!2086 (list!3783 objs!8) (ite (>= lt!369652 0) (div lt!369652 2) (- (div (- lt!369652) 2)))))))

(declare-fun apply!2087 (Conc!3232 Int) tuple2!11728)

(assert (=> d!309797 (= lt!369998 (apply!2087 (c!186045 objs!8) (ite (>= lt!369652 0) (div lt!369652 2) (- (div (- lt!369652) 2)))))))

(declare-fun e!694358 () Bool)

(assert (=> d!309797 e!694358))

(declare-fun res!486926 () Bool)

(assert (=> d!309797 (=> (not res!486926) (not e!694358))))

(assert (=> d!309797 (= res!486926 (<= 0 (ite (>= lt!369652 0) (div lt!369652 2) (- (div (- lt!369652) 2)))))))

(assert (=> d!309797 (= (apply!2084 objs!8 (ite (>= lt!369652 0) (div lt!369652 2) (- (div (- lt!369652) 2)))) lt!369998)))

(declare-fun b!1096716 () Bool)

(assert (=> b!1096716 (= e!694358 (< (ite (>= lt!369652 0) (div lt!369652 2) (- (div (- lt!369652) 2))) (size!8157 objs!8)))))

(assert (= (and d!309797 res!486926) b!1096716))

(assert (=> d!309797 m!1251279))

(assert (=> d!309797 m!1251279))

(declare-fun m!1251901 () Bool)

(assert (=> d!309797 m!1251901))

(declare-fun m!1251903 () Bool)

(assert (=> d!309797 m!1251903))

(assert (=> b!1096716 m!1251373))

(assert (=> b!1096445 d!309797))

(declare-fun d!309799 () Bool)

(declare-fun lt!369999 () Bool)

(assert (=> d!309799 (= lt!369999 (contains!1807 (list!3783 objs!8) lt!369669))))

(assert (=> d!309799 (= lt!369999 (contains!1808 (c!186045 objs!8) lt!369669))))

(assert (=> d!309799 (= (contains!1805 objs!8 lt!369669) lt!369999)))

(declare-fun bs!259006 () Bool)

(assert (= bs!259006 d!309799))

(assert (=> bs!259006 m!1251279))

(assert (=> bs!259006 m!1251279))

(assert (=> bs!259006 m!1251541))

(declare-fun m!1251905 () Bool)

(assert (=> bs!259006 m!1251905))

(assert (=> b!1096445 d!309799))

(assert (=> b!1096445 d!309791))

(assert (=> b!1096445 d!309795))

(declare-fun d!309801 () Bool)

(declare-fun lt!370000 () Int)

(assert (=> d!309801 (>= lt!370000 0)))

(declare-fun e!694359 () Int)

(assert (=> d!309801 (= lt!370000 e!694359)))

(declare-fun c!186112 () Bool)

(assert (=> d!309801 (= c!186112 (is-Nil!10534 (filter!283 lt!369679 lambda!42662)))))

(assert (=> d!309801 (= (size!8156 (filter!283 lt!369679 lambda!42662)) lt!370000)))

(declare-fun b!1096717 () Bool)

(assert (=> b!1096717 (= e!694359 0)))

(declare-fun b!1096718 () Bool)

(assert (=> b!1096718 (= e!694359 (+ 1 (size!8156 (t!103276 (filter!283 lt!369679 lambda!42662)))))))

(assert (= (and d!309801 c!186112) b!1096717))

(assert (= (and d!309801 (not c!186112)) b!1096718))

(declare-fun m!1251907 () Bool)

(assert (=> b!1096718 m!1251907))

(assert (=> b!1096457 d!309801))

(declare-fun b!1096719 () Bool)

(declare-fun e!694362 () List!10550)

(declare-fun call!80354 () List!10550)

(assert (=> b!1096719 (= e!694362 call!80354)))

(declare-fun d!309803 () Bool)

(declare-fun e!694361 () Bool)

(assert (=> d!309803 e!694361))

(declare-fun res!486928 () Bool)

(assert (=> d!309803 (=> (not res!486928) (not e!694361))))

(declare-fun lt!370001 () List!10550)

(assert (=> d!309803 (= res!486928 (<= (size!8156 lt!370001) (size!8156 lt!369679)))))

(declare-fun e!694360 () List!10550)

(assert (=> d!309803 (= lt!370001 e!694360)))

(declare-fun c!186113 () Bool)

(assert (=> d!309803 (= c!186113 (is-Nil!10534 lt!369679))))

(assert (=> d!309803 (= (filter!283 lt!369679 lambda!42662) lt!370001)))

(declare-fun b!1096720 () Bool)

(assert (=> b!1096720 (= e!694360 Nil!10534)))

(declare-fun b!1096721 () Bool)

(assert (=> b!1096721 (= e!694362 (Cons!10534 (h!15935 lt!369679) call!80354))))

(declare-fun b!1096722 () Bool)

(assert (=> b!1096722 (= e!694361 (forall!2381 lt!370001 lambda!42662))))

(declare-fun b!1096723 () Bool)

(declare-fun res!486927 () Bool)

(assert (=> b!1096723 (=> (not res!486927) (not e!694361))))

(assert (=> b!1096723 (= res!486927 (set.subset (content!1521 lt!370001) (content!1521 lt!369679)))))

(declare-fun b!1096724 () Bool)

(assert (=> b!1096724 (= e!694360 e!694362)))

(declare-fun c!186114 () Bool)

(assert (=> b!1096724 (= c!186114 (dynLambda!4616 lambda!42662 (h!15935 lt!369679)))))

(declare-fun bm!80349 () Bool)

(assert (=> bm!80349 (= call!80354 (filter!283 (t!103276 lt!369679) lambda!42662))))

(assert (= (and d!309803 c!186113) b!1096720))

(assert (= (and d!309803 (not c!186113)) b!1096724))

(assert (= (and b!1096724 c!186114) b!1096721))

(assert (= (and b!1096724 (not c!186114)) b!1096719))

(assert (= (or b!1096721 b!1096719) bm!80349))

(assert (= (and d!309803 res!486928) b!1096723))

(assert (= (and b!1096723 res!486927) b!1096722))

(declare-fun b_lambda!31647 () Bool)

(assert (=> (not b_lambda!31647) (not b!1096724)))

(declare-fun m!1251909 () Bool)

(assert (=> b!1096722 m!1251909))

(declare-fun m!1251911 () Bool)

(assert (=> b!1096724 m!1251911))

(declare-fun m!1251913 () Bool)

(assert (=> d!309803 m!1251913))

(assert (=> d!309803 m!1251303))

(declare-fun m!1251915 () Bool)

(assert (=> bm!80349 m!1251915))

(declare-fun m!1251917 () Bool)

(assert (=> b!1096723 m!1251917))

(assert (=> b!1096723 m!1251555))

(assert (=> b!1096457 d!309803))

(assert (=> b!1096457 d!309723))

(declare-fun d!309805 () Bool)

(assert (=> d!309805 (dynLambda!4616 lambda!42664 lt!369669)))

(declare-fun lt!370002 () Unit!16089)

(assert (=> d!309805 (= lt!370002 (choose!7061 (list!3783 lt!369663) lambda!42664 lt!369669))))

(declare-fun e!694363 () Bool)

(assert (=> d!309805 e!694363))

(declare-fun res!486929 () Bool)

(assert (=> d!309805 (=> (not res!486929) (not e!694363))))

(assert (=> d!309805 (= res!486929 (forall!2381 (list!3783 lt!369663) lambda!42664))))

(assert (=> d!309805 (= (forallContained!503 (list!3783 lt!369663) lambda!42664 lt!369669) lt!370002)))

(declare-fun b!1096725 () Bool)

(assert (=> b!1096725 (= e!694363 (contains!1807 (list!3783 lt!369663) lt!369669))))

(assert (= (and d!309805 res!486929) b!1096725))

(declare-fun b_lambda!31649 () Bool)

(assert (=> (not b_lambda!31649) (not d!309805)))

(assert (=> d!309805 m!1251509))

(assert (=> d!309805 m!1251377))

(declare-fun m!1251919 () Bool)

(assert (=> d!309805 m!1251919))

(assert (=> d!309805 m!1251377))

(declare-fun m!1251921 () Bool)

(assert (=> d!309805 m!1251921))

(assert (=> b!1096725 m!1251377))

(assert (=> b!1096725 m!1251521))

(assert (=> b!1096446 d!309805))

(declare-fun d!309807 () Bool)

(assert (=> d!309807 (= (list!3783 lt!369663) (list!3785 (c!186045 lt!369663)))))

(declare-fun bs!259007 () Bool)

(assert (= bs!259007 d!309807))

(declare-fun m!1251923 () Bool)

(assert (=> bs!259007 m!1251923))

(assert (=> b!1096446 d!309807))

(declare-fun b!1096734 () Bool)

(declare-fun e!694368 () Bool)

(assert (=> b!1096734 (= e!694368 true)))

(declare-fun b!1096736 () Bool)

(declare-fun e!694369 () Bool)

(assert (=> b!1096736 (= e!694369 true)))

(declare-fun b!1096735 () Bool)

(assert (=> b!1096735 (= e!694368 e!694369)))

(assert (=> b!1096473 e!694368))

(assert (= (and b!1096473 (is-Node!3231 (c!186044 (tokens!1360 (_2!6690 lt!369669))))) b!1096734))

(assert (= b!1096735 b!1096736))

(assert (= (and b!1096473 (is-Leaf!5138 (c!186044 (tokens!1360 (_2!6690 lt!369669))))) b!1096735))

(declare-fun b!1096737 () Bool)

(declare-fun e!694370 () Bool)

(assert (=> b!1096737 (= e!694370 true)))

(declare-fun b!1096739 () Bool)

(declare-fun e!694371 () Bool)

(assert (=> b!1096739 (= e!694371 true)))

(declare-fun b!1096738 () Bool)

(assert (=> b!1096738 (= e!694370 e!694371)))

(assert (=> b!1096469 e!694370))

(assert (= (and b!1096469 (is-Node!3231 (c!186044 (tokens!1360 (_2!6690 lt!369669))))) b!1096737))

(assert (= b!1096738 b!1096739))

(assert (= (and b!1096469 (is-Leaf!5138 (c!186044 (tokens!1360 (_2!6690 lt!369669))))) b!1096738))

(declare-fun b!1096750 () Bool)

(declare-fun e!694380 () Bool)

(assert (=> b!1096750 (= e!694380 true)))

(declare-fun b!1096749 () Bool)

(declare-fun e!694379 () Bool)

(assert (=> b!1096749 (= e!694379 e!694380)))

(declare-fun b!1096748 () Bool)

(declare-fun e!694378 () Bool)

(assert (=> b!1096748 (= e!694378 e!694379)))

(assert (=> b!1096472 e!694378))

(assert (= b!1096749 b!1096750))

(assert (= b!1096748 b!1096749))

(assert (= (and b!1096472 (is-Cons!10533 (rules!9088 (_2!6690 lt!369669)))) b!1096748))

(declare-fun order!6357 () Int)

(declare-fun order!6359 () Int)

(declare-fun dynLambda!4618 (Int Int) Int)

(declare-fun dynLambda!4619 (Int Int) Int)

(assert (=> b!1096750 (< (dynLambda!4618 order!6357 (toValue!2878 (transformation!1801 (h!15934 (rules!9088 (_2!6690 lt!369669)))))) (dynLambda!4619 order!6359 lambda!42664))))

(declare-fun order!6361 () Int)

(declare-fun dynLambda!4620 (Int Int) Int)

(assert (=> b!1096750 (< (dynLambda!4620 order!6361 (toChars!2737 (transformation!1801 (h!15934 (rules!9088 (_2!6690 lt!369669)))))) (dynLambda!4619 order!6359 lambda!42664))))

(declare-fun tp!326679 () Bool)

(declare-fun tp!326680 () Bool)

(declare-fun e!694385 () Bool)

(declare-fun b!1096759 () Bool)

(assert (=> b!1096759 (= e!694385 (and (inv!13505 (left!9066 (c!186045 objs!8))) tp!326679 (inv!13505 (right!9396 (c!186045 objs!8))) tp!326680))))

(declare-fun b!1096761 () Bool)

(declare-fun e!694386 () Bool)

(declare-fun tp!326681 () Bool)

(assert (=> b!1096761 (= e!694386 tp!326681)))

(declare-fun b!1096760 () Bool)

(declare-fun inv!13511 (IArray!6469) Bool)

(assert (=> b!1096760 (= e!694385 (and (inv!13511 (xs!5925 (c!186045 objs!8))) e!694386))))

(assert (=> b!1096454 (= tp!326669 (and (inv!13505 (c!186045 objs!8)) e!694385))))

(assert (= (and b!1096454 (is-Node!3232 (c!186045 objs!8))) b!1096759))

(assert (= b!1096760 b!1096761))

(assert (= (and b!1096454 (is-Leaf!5139 (c!186045 objs!8))) b!1096760))

(declare-fun m!1251925 () Bool)

(assert (=> b!1096759 m!1251925))

(declare-fun m!1251927 () Bool)

(assert (=> b!1096759 m!1251927))

(declare-fun m!1251929 () Bool)

(assert (=> b!1096760 m!1251929))

(assert (=> b!1096454 m!1251375))

(declare-fun b!1096764 () Bool)

(declare-fun e!694389 () Bool)

(assert (=> b!1096764 (= e!694389 true)))

(declare-fun b!1096763 () Bool)

(declare-fun e!694388 () Bool)

(assert (=> b!1096763 (= e!694388 e!694389)))

(declare-fun b!1096762 () Bool)

(declare-fun e!694387 () Bool)

(assert (=> b!1096762 (= e!694387 e!694388)))

(assert (=> b!1096468 e!694387))

(assert (= b!1096763 b!1096764))

(assert (= b!1096762 b!1096763))

(assert (= (and b!1096468 (is-Cons!10533 (rules!9088 (_2!6690 lt!369669)))) b!1096762))

(assert (=> b!1096764 (< (dynLambda!4618 order!6357 (toValue!2878 (transformation!1801 (h!15934 (rules!9088 (_2!6690 lt!369669)))))) (dynLambda!4619 order!6359 lambda!42662))))

(assert (=> b!1096764 (< (dynLambda!4620 order!6361 (toChars!2737 (transformation!1801 (h!15934 (rules!9088 (_2!6690 lt!369669)))))) (dynLambda!4619 order!6359 lambda!42662))))

(declare-fun b!1096767 () Bool)

(declare-fun e!694392 () Bool)

(assert (=> b!1096767 (= e!694392 true)))

(declare-fun b!1096766 () Bool)

(declare-fun e!694391 () Bool)

(assert (=> b!1096766 (= e!694391 e!694392)))

(declare-fun b!1096765 () Bool)

(declare-fun e!694390 () Bool)

(assert (=> b!1096765 (= e!694390 e!694391)))

(assert (=> b!1096470 e!694390))

(assert (= b!1096766 b!1096767))

(assert (= b!1096765 b!1096766))

(assert (= (and b!1096470 (is-Cons!10533 (rules!9088 (_2!6690 lt!369669)))) b!1096765))

(assert (=> b!1096767 (< (dynLambda!4618 order!6357 (toValue!2878 (transformation!1801 (h!15934 (rules!9088 (_2!6690 lt!369669)))))) (dynLambda!4619 order!6359 lambda!42663))))

(assert (=> b!1096767 (< (dynLambda!4620 order!6361 (toChars!2737 (transformation!1801 (h!15934 (rules!9088 (_2!6690 lt!369669)))))) (dynLambda!4619 order!6359 lambda!42663))))

(declare-fun b!1096768 () Bool)

(declare-fun e!694393 () Bool)

(assert (=> b!1096768 (= e!694393 true)))

(declare-fun b!1096770 () Bool)

(declare-fun e!694394 () Bool)

(assert (=> b!1096770 (= e!694394 true)))

(declare-fun b!1096769 () Bool)

(assert (=> b!1096769 (= e!694393 e!694394)))

(assert (=> b!1096471 e!694393))

(assert (= (and b!1096471 (is-Node!3231 (c!186044 (tokens!1360 (_2!6690 lt!369669))))) b!1096768))

(assert (= b!1096769 b!1096770))

(assert (= (and b!1096471 (is-Leaf!5138 (c!186044 (tokens!1360 (_2!6690 lt!369669))))) b!1096769))

(declare-fun b_lambda!31651 () Bool)

(assert (= b_lambda!31633 (or b!1096445 b_lambda!31651)))

(declare-fun bs!259008 () Bool)

(declare-fun d!309809 () Bool)

(assert (= bs!259008 (and d!309809 b!1096445)))

(assert (=> bs!259008 (= (dynLambda!4616 lambda!42664 (h!15935 lt!369679)) (> (_1!6690 (h!15935 lt!369679)) (_1!6690 lt!369669)))))

(assert (=> b!1096585 d!309809))

(declare-fun b_lambda!31653 () Bool)

(assert (= b_lambda!31647 (or b!1096445 b_lambda!31653)))

(declare-fun bs!259009 () Bool)

(declare-fun d!309811 () Bool)

(assert (= bs!259009 (and d!309811 b!1096445)))

(assert (=> bs!259009 (= (dynLambda!4616 lambda!42662 (h!15935 lt!369679)) (< (_1!6690 (h!15935 lt!369679)) (_1!6690 lt!369669)))))

(assert (=> b!1096724 d!309811))

(declare-fun b_lambda!31655 () Bool)

(assert (= b_lambda!31649 (or b!1096445 b_lambda!31655)))

(declare-fun bs!259010 () Bool)

(declare-fun d!309813 () Bool)

(assert (= bs!259010 (and d!309813 b!1096445)))

(assert (=> bs!259010 (= (dynLambda!4616 lambda!42664 lt!369669) (> (_1!6690 lt!369669) (_1!6690 lt!369669)))))

(assert (=> d!309805 d!309813))

(declare-fun b_lambda!31657 () Bool)

(assert (= b_lambda!31631 (or b!1096445 b_lambda!31657)))

(declare-fun bs!259011 () Bool)

(declare-fun d!309815 () Bool)

(assert (= bs!259011 (and d!309815 b!1096445)))

(assert (=> bs!259011 (= (dynLambda!4616 lambda!42662 lt!369669) (< (_1!6690 lt!369669) (_1!6690 lt!369669)))))

(assert (=> d!309715 d!309815))

(declare-fun b_lambda!31659 () Bool)

(assert (= b_lambda!31645 (or start!93944 b_lambda!31659)))

(declare-fun bs!259012 () Bool)

(declare-fun d!309817 () Bool)

(assert (= bs!259012 (and d!309817 start!93944)))

(declare-fun usesJsonRules!0 (PrintableTokens!318) Bool)

(assert (=> bs!259012 (= (dynLambda!4616 lambda!42661 (h!15935 lt!369675)) (usesJsonRules!0 (_2!6690 (h!15935 lt!369675))))))

(declare-fun m!1251931 () Bool)

(assert (=> bs!259012 m!1251931))

(assert (=> b!1096710 d!309817))

(declare-fun b_lambda!31661 () Bool)

(assert (= b_lambda!31643 (or start!93944 b_lambda!31661)))

(declare-fun bs!259013 () Bool)

(declare-fun d!309819 () Bool)

(assert (= bs!259013 (and d!309819 start!93944)))

(assert (=> bs!259013 (= (dynLambda!4616 lambda!42661 (h!15935 lt!369680)) (usesJsonRules!0 (_2!6690 (h!15935 lt!369680))))))

(declare-fun m!1251933 () Bool)

(assert (=> bs!259013 m!1251933))

(assert (=> b!1096675 d!309819))

(declare-fun b_lambda!31663 () Bool)

(assert (= b_lambda!31629 (or b!1096445 b_lambda!31663)))

(assert (=> d!309697 d!309813))

(declare-fun b_lambda!31665 () Bool)

(assert (= b_lambda!31635 (or start!93944 b_lambda!31665)))

(declare-fun bs!259014 () Bool)

(declare-fun d!309821 () Bool)

(assert (= bs!259014 (and d!309821 start!93944)))

(assert (=> bs!259014 (= (dynLambda!4616 lambda!42661 (h!15935 lt!369676)) (usesJsonRules!0 (_2!6690 (h!15935 lt!369676))))))

(declare-fun m!1251935 () Bool)

(assert (=> bs!259014 m!1251935))

(assert (=> b!1096594 d!309821))

(declare-fun b_lambda!31667 () Bool)

(assert (= b_lambda!31627 (or b!1096445 b_lambda!31667)))

(assert (=> d!309691 d!309815))

(push 1)

(assert (not d!309703))

(assert (not b!1096736))

(assert (not d!309803))

(assert (not b!1096765))

(assert (not b!1096770))

(assert (not b!1096557))

(assert (not b!1096673))

(assert (not b!1096709))

(assert (not d!309769))

(assert (not d!309777))

(assert (not b!1096542))

(assert (not b!1096669))

(assert (not b!1096707))

(assert (not b!1096545))

(assert (not b!1096695))

(assert (not d!309727))

(assert (not b_lambda!31663))

(assert (not b!1096737))

(assert (not b!1096702))

(assert (not b!1096704))

(assert (not d!309771))

(assert (not d!309789))

(assert (not b!1096723))

(assert (not b_lambda!31665))

(assert (not d!309707))

(assert (not bm!80349))

(assert (not b!1096759))

(assert (not d!309805))

(assert (not b!1096676))

(assert (not b!1096739))

(assert (not b!1096762))

(assert (not b!1096670))

(assert (not d!309745))

(assert (not b_lambda!31651))

(assert (not b!1096454))

(assert (not b_lambda!31657))

(assert (not b!1096718))

(assert (not b!1096694))

(assert (not d!309791))

(assert (not d!309693))

(assert (not d!309711))

(assert (not b!1096595))

(assert (not b!1096768))

(assert (not d!309687))

(assert (not b_lambda!31655))

(assert (not d!309787))

(assert (not d!309743))

(assert (not b!1096563))

(assert (not b!1096699))

(assert (not b!1096671))

(assert (not b!1096689))

(assert (not b_lambda!31661))

(assert (not d!309781))

(assert (not b_lambda!31667))

(assert (not b!1096667))

(assert (not b!1096664))

(assert (not b!1096708))

(assert (not b!1096705))

(assert (not b_lambda!31653))

(assert (not d!309739))

(assert (not d!309799))

(assert (not d!309719))

(assert (not b!1096716))

(assert (not b!1096659))

(assert (not b!1096584))

(assert (not b!1096696))

(assert (not d!309773))

(assert (not d!309689))

(assert (not d!309807))

(assert (not d!309775))

(assert (not d!309795))

(assert (not d!309699))

(assert (not d!309701))

(assert (not b!1096660))

(assert (not b!1096556))

(assert (not bs!259012))

(assert (not d!309729))

(assert (not b!1096663))

(assert (not b!1096706))

(assert (not b!1096734))

(assert (not b!1096552))

(assert (not d!309705))

(assert (not b!1096711))

(assert (not b!1096554))

(assert (not b!1096583))

(assert (not b!1096674))

(assert (not b!1096661))

(assert (not b!1096690))

(assert (not b!1096679))

(assert (not b!1096748))

(assert (not b!1096761))

(assert (not d!309715))

(assert (not b!1096722))

(assert (not d!309731))

(assert (not b!1096665))

(assert (not b!1096713))

(assert (not d!309697))

(assert (not b!1096672))

(assert (not b!1096700))

(assert (not b_lambda!31659))

(assert (not d!309785))

(assert (not bs!259013))

(assert (not b!1096587))

(assert (not d!309737))

(assert (not d!309793))

(assert (not bs!259014))

(assert (not d!309685))

(assert (not b!1096725))

(assert (not d!309797))

(assert (not d!309725))

(assert (not b!1096760))

(assert (not bm!80344))

(assert (not d!309783))

(assert (not d!309747))

(assert (not d!309741))

(assert (not d!309691))

(assert (not b!1096698))

(assert (not b!1096712))

(assert (not d!309709))

(assert (not b!1096555))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

