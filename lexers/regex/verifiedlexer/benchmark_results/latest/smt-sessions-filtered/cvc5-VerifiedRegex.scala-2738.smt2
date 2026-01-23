; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!147068 () Bool)

(assert start!147068)

(declare-fun b!1575302 () Bool)

(declare-fun b_free!42399 () Bool)

(declare-fun b_next!43103 () Bool)

(assert (=> b!1575302 (= b_free!42399 (not b_next!43103))))

(declare-fun tp!463798 () Bool)

(declare-fun b_and!110253 () Bool)

(assert (=> b!1575302 (= tp!463798 b_and!110253)))

(declare-fun b_free!42401 () Bool)

(declare-fun b_next!43105 () Bool)

(assert (=> b!1575302 (= b_free!42401 (not b_next!43105))))

(declare-fun tp!463800 () Bool)

(declare-fun b_and!110255 () Bool)

(assert (=> b!1575302 (= tp!463800 b_and!110255)))

(declare-fun b!1575303 () Bool)

(declare-fun b_free!42403 () Bool)

(declare-fun b_next!43107 () Bool)

(assert (=> b!1575303 (= b_free!42403 (not b_next!43107))))

(declare-fun tp!463801 () Bool)

(declare-fun b_and!110257 () Bool)

(assert (=> b!1575303 (= tp!463801 b_and!110257)))

(declare-fun b_free!42405 () Bool)

(declare-fun b_next!43109 () Bool)

(assert (=> b!1575303 (= b_free!42405 (not b_next!43109))))

(declare-fun tp!463795 () Bool)

(declare-fun b_and!110259 () Bool)

(assert (=> b!1575303 (= tp!463795 b_and!110259)))

(declare-fun b!1575289 () Bool)

(declare-fun res!702118 () Bool)

(declare-fun e!1011882 () Bool)

(assert (=> b!1575289 (=> (not res!702118) (not e!1011882))))

(declare-datatypes ((List!17329 0))(
  ( (Nil!17259) (Cons!17259 (h!22660 (_ BitVec 16)) (t!143294 List!17329)) )
))
(declare-datatypes ((TokenValue!3126 0))(
  ( (FloatLiteralValue!6252 (text!22327 List!17329)) (TokenValueExt!3125 (__x!11554 Int)) (Broken!15630 (value!96174 List!17329)) (Object!3195) (End!3126) (Def!3126) (Underscore!3126) (Match!3126) (Else!3126) (Error!3126) (Case!3126) (If!3126) (Extends!3126) (Abstract!3126) (Class!3126) (Val!3126) (DelimiterValue!6252 (del!3186 List!17329)) (KeywordValue!3132 (value!96175 List!17329)) (CommentValue!6252 (value!96176 List!17329)) (WhitespaceValue!6252 (value!96177 List!17329)) (IndentationValue!3126 (value!96178 List!17329)) (String!19963) (Int32!3126) (Broken!15631 (value!96179 List!17329)) (Boolean!3127) (Unit!26663) (OperatorValue!3129 (op!3186 List!17329)) (IdentifierValue!6252 (value!96180 List!17329)) (IdentifierValue!6253 (value!96181 List!17329)) (WhitespaceValue!6253 (value!96182 List!17329)) (True!6252) (False!6252) (Broken!15632 (value!96183 List!17329)) (Broken!15633 (value!96184 List!17329)) (True!6253) (RightBrace!3126) (RightBracket!3126) (Colon!3126) (Null!3126) (Comma!3126) (LeftBracket!3126) (False!6253) (LeftBrace!3126) (ImaginaryLiteralValue!3126 (text!22328 List!17329)) (StringLiteralValue!9378 (value!96185 List!17329)) (EOFValue!3126 (value!96186 List!17329)) (IdentValue!3126 (value!96187 List!17329)) (DelimiterValue!6253 (value!96188 List!17329)) (DedentValue!3126 (value!96189 List!17329)) (NewLineValue!3126 (value!96190 List!17329)) (IntegerValue!9378 (value!96191 (_ BitVec 32)) (text!22329 List!17329)) (IntegerValue!9379 (value!96192 Int) (text!22330 List!17329)) (Times!3126) (Or!3126) (Equal!3126) (Minus!3126) (Broken!15634 (value!96193 List!17329)) (And!3126) (Div!3126) (LessEqual!3126) (Mod!3126) (Concat!7490) (Not!3126) (Plus!3126) (SpaceValue!3126 (value!96194 List!17329)) (IntegerValue!9380 (value!96195 Int) (text!22331 List!17329)) (StringLiteralValue!9379 (text!22332 List!17329)) (FloatLiteralValue!6253 (text!22333 List!17329)) (BytesLiteralValue!3126 (value!96196 List!17329)) (CommentValue!6253 (value!96197 List!17329)) (StringLiteralValue!9380 (value!96198 List!17329)) (ErrorTokenValue!3126 (msg!3187 List!17329)) )
))
(declare-datatypes ((C!8902 0))(
  ( (C!8903 (val!5047 Int)) )
))
(declare-datatypes ((List!17330 0))(
  ( (Nil!17260) (Cons!17260 (h!22661 C!8902) (t!143295 List!17330)) )
))
(declare-datatypes ((IArray!11445 0))(
  ( (IArray!11446 (innerList!5780 List!17330)) )
))
(declare-datatypes ((Conc!5720 0))(
  ( (Node!5720 (left!13956 Conc!5720) (right!14286 Conc!5720) (csize!11670 Int) (cheight!5931 Int)) (Leaf!8459 (xs!8524 IArray!11445) (csize!11671 Int)) (Empty!5720) )
))
(declare-datatypes ((BalanceConc!11384 0))(
  ( (BalanceConc!11385 (c!255347 Conc!5720)) )
))
(declare-datatypes ((Regex!4364 0))(
  ( (ElementMatch!4364 (c!255348 C!8902)) (Concat!7491 (regOne!9240 Regex!4364) (regTwo!9240 Regex!4364)) (EmptyExpr!4364) (Star!4364 (reg!4693 Regex!4364)) (EmptyLang!4364) (Union!4364 (regOne!9241 Regex!4364) (regTwo!9241 Regex!4364)) )
))
(declare-datatypes ((String!19964 0))(
  ( (String!19965 (value!96199 String)) )
))
(declare-datatypes ((TokenValueInjection!5912 0))(
  ( (TokenValueInjection!5913 (toValue!4431 Int) (toChars!4290 Int)) )
))
(declare-datatypes ((Rule!5872 0))(
  ( (Rule!5873 (regex!3036 Regex!4364) (tag!3302 String!19964) (isSeparator!3036 Bool) (transformation!3036 TokenValueInjection!5912)) )
))
(declare-datatypes ((List!17331 0))(
  ( (Nil!17261) (Cons!17261 (h!22662 Rule!5872) (t!143296 List!17331)) )
))
(declare-fun rules!1846 () List!17331)

(declare-datatypes ((LexerInterface!2665 0))(
  ( (LexerInterfaceExt!2662 (__x!11555 Int)) (Lexer!2663) )
))
(declare-fun thiss!17113 () LexerInterface!2665)

(declare-datatypes ((Token!5638 0))(
  ( (Token!5639 (value!96200 TokenValue!3126) (rule!4828 Rule!5872) (size!13907 Int) (originalCharacters!3850 List!17330)) )
))
(declare-datatypes ((List!17332 0))(
  ( (Nil!17262) (Cons!17262 (h!22663 Token!5638) (t!143297 List!17332)) )
))
(declare-fun tokens!457 () List!17332)

(declare-fun rulesProduceEachTokenIndividuallyList!867 (LexerInterface!2665 List!17331 List!17332) Bool)

(assert (=> b!1575289 (= res!702118 (rulesProduceEachTokenIndividuallyList!867 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1011881 () Bool)

(declare-fun e!1011877 () Bool)

(declare-fun b!1575290 () Bool)

(declare-fun tp!463794 () Bool)

(declare-fun inv!21 (TokenValue!3126) Bool)

(assert (=> b!1575290 (= e!1011881 (and (inv!21 (value!96200 (h!22663 tokens!457))) e!1011877 tp!463794))))

(declare-fun e!1011883 () Bool)

(declare-fun b!1575291 () Bool)

(declare-fun tp!463799 () Bool)

(declare-fun inv!22670 (Token!5638) Bool)

(assert (=> b!1575291 (= e!1011883 (and (inv!22670 (h!22663 tokens!457)) e!1011881 tp!463799))))

(declare-fun b!1575292 () Bool)

(declare-fun e!1011880 () Bool)

(declare-fun e!1011887 () Bool)

(assert (=> b!1575292 (= e!1011880 e!1011887)))

(declare-fun res!702121 () Bool)

(assert (=> b!1575292 (=> res!702121 e!1011887)))

(declare-fun lt!547977 () List!17332)

(declare-fun lt!547980 () List!17332)

(declare-fun lt!547971 () List!17332)

(assert (=> b!1575292 (= res!702121 (or (not (= lt!547971 lt!547980)) (not (= lt!547980 lt!547977))))))

(declare-datatypes ((IArray!11447 0))(
  ( (IArray!11448 (innerList!5781 List!17332)) )
))
(declare-datatypes ((Conc!5721 0))(
  ( (Node!5721 (left!13957 Conc!5721) (right!14287 Conc!5721) (csize!11672 Int) (cheight!5932 Int)) (Leaf!8460 (xs!8525 IArray!11447) (csize!11673 Int)) (Empty!5721) )
))
(declare-datatypes ((BalanceConc!11386 0))(
  ( (BalanceConc!11387 (c!255349 Conc!5721)) )
))
(declare-fun lt!547973 () BalanceConc!11386)

(declare-fun list!6641 (BalanceConc!11386) List!17332)

(assert (=> b!1575292 (= lt!547980 (list!6641 lt!547973))))

(assert (=> b!1575292 (= lt!547971 lt!547977)))

(declare-fun prepend!504 (BalanceConc!11386 Token!5638) BalanceConc!11386)

(declare-fun seqFromList!1833 (List!17332) BalanceConc!11386)

(assert (=> b!1575292 (= lt!547977 (list!6641 (prepend!504 (seqFromList!1833 (t!143297 (t!143297 tokens!457))) (h!22663 (t!143297 tokens!457)))))))

(declare-datatypes ((Unit!26664 0))(
  ( (Unit!26665) )
))
(declare-fun lt!547976 () Unit!26664)

(declare-datatypes ((tuple2!16724 0))(
  ( (tuple2!16725 (_1!9764 BalanceConc!11386) (_2!9764 BalanceConc!11384)) )
))
(declare-fun lt!547967 () tuple2!16724)

(declare-fun seqFromListBHdTlConstructive!113 (Token!5638 List!17332 BalanceConc!11386) Unit!26664)

(assert (=> b!1575292 (= lt!547976 (seqFromListBHdTlConstructive!113 (h!22663 (t!143297 tokens!457)) (t!143297 (t!143297 tokens!457)) (_1!9764 lt!547967)))))

(declare-fun b!1575293 () Bool)

(declare-fun res!702125 () Bool)

(assert (=> b!1575293 (=> (not res!702125) (not e!1011882))))

(declare-fun isEmpty!10300 (List!17331) Bool)

(assert (=> b!1575293 (= res!702125 (not (isEmpty!10300 rules!1846)))))

(declare-fun b!1575294 () Bool)

(declare-fun e!1011886 () Bool)

(assert (=> b!1575294 (= e!1011882 e!1011886)))

(declare-fun res!702123 () Bool)

(assert (=> b!1575294 (=> (not res!702123) (not e!1011886))))

(declare-fun lt!547975 () List!17330)

(declare-fun lt!547969 () List!17330)

(assert (=> b!1575294 (= res!702123 (= lt!547975 lt!547969))))

(declare-fun lt!547974 () List!17330)

(declare-fun lt!547979 () List!17330)

(declare-fun ++!4472 (List!17330 List!17330) List!17330)

(assert (=> b!1575294 (= lt!547969 (++!4472 lt!547974 lt!547979))))

(declare-fun lt!547978 () BalanceConc!11384)

(declare-fun list!6642 (BalanceConc!11384) List!17330)

(assert (=> b!1575294 (= lt!547975 (list!6642 lt!547978))))

(declare-fun lt!547968 () BalanceConc!11384)

(assert (=> b!1575294 (= lt!547979 (list!6642 lt!547968))))

(declare-fun charsOf!1685 (Token!5638) BalanceConc!11384)

(assert (=> b!1575294 (= lt!547974 (list!6642 (charsOf!1685 (h!22663 tokens!457))))))

(declare-fun lex!1149 (LexerInterface!2665 List!17331 BalanceConc!11384) tuple2!16724)

(assert (=> b!1575294 (= lt!547967 (lex!1149 thiss!17113 rules!1846 lt!547968))))

(declare-fun print!1196 (LexerInterface!2665 BalanceConc!11386) BalanceConc!11384)

(assert (=> b!1575294 (= lt!547968 (print!1196 thiss!17113 lt!547973))))

(assert (=> b!1575294 (= lt!547973 (seqFromList!1833 (t!143297 tokens!457)))))

(assert (=> b!1575294 (= lt!547978 (print!1196 thiss!17113 (seqFromList!1833 tokens!457)))))

(declare-fun b!1575295 () Bool)

(declare-fun rulesProduceIndividualToken!1327 (LexerInterface!2665 List!17331 Token!5638) Bool)

(assert (=> b!1575295 (= e!1011887 (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 (t!143297 tokens!457))))))

(declare-fun e!1011878 () Bool)

(declare-fun b!1575296 () Bool)

(declare-fun tp!463797 () Bool)

(declare-fun inv!22667 (String!19964) Bool)

(declare-fun inv!22671 (TokenValueInjection!5912) Bool)

(assert (=> b!1575296 (= e!1011877 (and tp!463797 (inv!22667 (tag!3302 (rule!4828 (h!22663 tokens!457)))) (inv!22671 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) e!1011878))))

(declare-fun b!1575297 () Bool)

(declare-fun e!1011889 () Bool)

(declare-fun e!1011885 () Bool)

(declare-fun tp!463796 () Bool)

(assert (=> b!1575297 (= e!1011889 (and e!1011885 tp!463796))))

(declare-fun res!702124 () Bool)

(assert (=> start!147068 (=> (not res!702124) (not e!1011882))))

(assert (=> start!147068 (= res!702124 (is-Lexer!2663 thiss!17113))))

(assert (=> start!147068 e!1011882))

(assert (=> start!147068 true))

(assert (=> start!147068 e!1011889))

(assert (=> start!147068 e!1011883))

(declare-fun b!1575298 () Bool)

(declare-fun res!702120 () Bool)

(assert (=> b!1575298 (=> (not res!702120) (not e!1011882))))

(assert (=> b!1575298 (= res!702120 (and (not (is-Nil!17262 tokens!457)) (not (is-Nil!17262 (t!143297 tokens!457)))))))

(declare-fun b!1575299 () Bool)

(assert (=> b!1575299 (= e!1011886 (not e!1011880))))

(declare-fun res!702119 () Bool)

(assert (=> b!1575299 (=> res!702119 e!1011880)))

(assert (=> b!1575299 (= res!702119 (not (= lt!547971 (t!143297 tokens!457))))))

(assert (=> b!1575299 (= lt!547971 (list!6641 (_1!9764 lt!547967)))))

(declare-fun lt!547972 () Unit!26664)

(declare-fun theoremInvertabilityWhenTokenListSeparable!110 (LexerInterface!2665 List!17331 List!17332) Unit!26664)

(assert (=> b!1575299 (= lt!547972 (theoremInvertabilityWhenTokenListSeparable!110 thiss!17113 rules!1846 (t!143297 tokens!457)))))

(declare-fun isPrefix!1296 (List!17330 List!17330) Bool)

(assert (=> b!1575299 (isPrefix!1296 lt!547974 lt!547969)))

(declare-fun lt!547970 () Unit!26664)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!821 (List!17330 List!17330) Unit!26664)

(assert (=> b!1575299 (= lt!547970 (lemmaConcatTwoListThenFirstIsPrefix!821 lt!547974 lt!547979))))

(declare-fun b!1575300 () Bool)

(declare-fun res!702122 () Bool)

(assert (=> b!1575300 (=> (not res!702122) (not e!1011882))))

(declare-fun rulesInvariant!2334 (LexerInterface!2665 List!17331) Bool)

(assert (=> b!1575300 (= res!702122 (rulesInvariant!2334 thiss!17113 rules!1846))))

(declare-fun b!1575301 () Bool)

(declare-fun res!702116 () Bool)

(assert (=> b!1575301 (=> (not res!702116) (not e!1011882))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!358 (LexerInterface!2665 List!17332 List!17331) Bool)

(assert (=> b!1575301 (= res!702116 (tokensListTwoByTwoPredicateSeparableList!358 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1011888 () Bool)

(assert (=> b!1575302 (= e!1011888 (and tp!463798 tp!463800))))

(assert (=> b!1575303 (= e!1011878 (and tp!463801 tp!463795))))

(declare-fun b!1575304 () Bool)

(declare-fun res!702117 () Bool)

(assert (=> b!1575304 (=> res!702117 e!1011887)))

(assert (=> b!1575304 (= res!702117 (not (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 tokens!457))))))

(declare-fun tp!463793 () Bool)

(declare-fun b!1575305 () Bool)

(assert (=> b!1575305 (= e!1011885 (and tp!463793 (inv!22667 (tag!3302 (h!22662 rules!1846))) (inv!22671 (transformation!3036 (h!22662 rules!1846))) e!1011888))))

(assert (= (and start!147068 res!702124) b!1575293))

(assert (= (and b!1575293 res!702125) b!1575300))

(assert (= (and b!1575300 res!702122) b!1575289))

(assert (= (and b!1575289 res!702118) b!1575301))

(assert (= (and b!1575301 res!702116) b!1575298))

(assert (= (and b!1575298 res!702120) b!1575294))

(assert (= (and b!1575294 res!702123) b!1575299))

(assert (= (and b!1575299 (not res!702119)) b!1575292))

(assert (= (and b!1575292 (not res!702121)) b!1575304))

(assert (= (and b!1575304 (not res!702117)) b!1575295))

(assert (= b!1575305 b!1575302))

(assert (= b!1575297 b!1575305))

(assert (= (and start!147068 (is-Cons!17261 rules!1846)) b!1575297))

(assert (= b!1575296 b!1575303))

(assert (= b!1575290 b!1575296))

(assert (= b!1575291 b!1575290))

(assert (= (and start!147068 (is-Cons!17262 tokens!457)) b!1575291))

(declare-fun m!1854469 () Bool)

(assert (=> b!1575299 m!1854469))

(declare-fun m!1854471 () Bool)

(assert (=> b!1575299 m!1854471))

(declare-fun m!1854473 () Bool)

(assert (=> b!1575299 m!1854473))

(declare-fun m!1854475 () Bool)

(assert (=> b!1575299 m!1854475))

(declare-fun m!1854477 () Bool)

(assert (=> b!1575300 m!1854477))

(declare-fun m!1854479 () Bool)

(assert (=> b!1575289 m!1854479))

(declare-fun m!1854481 () Bool)

(assert (=> b!1575304 m!1854481))

(declare-fun m!1854483 () Bool)

(assert (=> b!1575294 m!1854483))

(declare-fun m!1854485 () Bool)

(assert (=> b!1575294 m!1854485))

(declare-fun m!1854487 () Bool)

(assert (=> b!1575294 m!1854487))

(declare-fun m!1854489 () Bool)

(assert (=> b!1575294 m!1854489))

(declare-fun m!1854491 () Bool)

(assert (=> b!1575294 m!1854491))

(declare-fun m!1854493 () Bool)

(assert (=> b!1575294 m!1854493))

(declare-fun m!1854495 () Bool)

(assert (=> b!1575294 m!1854495))

(declare-fun m!1854497 () Bool)

(assert (=> b!1575294 m!1854497))

(assert (=> b!1575294 m!1854487))

(declare-fun m!1854499 () Bool)

(assert (=> b!1575294 m!1854499))

(declare-fun m!1854501 () Bool)

(assert (=> b!1575294 m!1854501))

(assert (=> b!1575294 m!1854495))

(declare-fun m!1854503 () Bool)

(assert (=> b!1575301 m!1854503))

(declare-fun m!1854505 () Bool)

(assert (=> b!1575293 m!1854505))

(declare-fun m!1854507 () Bool)

(assert (=> b!1575305 m!1854507))

(declare-fun m!1854509 () Bool)

(assert (=> b!1575305 m!1854509))

(declare-fun m!1854511 () Bool)

(assert (=> b!1575291 m!1854511))

(declare-fun m!1854513 () Bool)

(assert (=> b!1575295 m!1854513))

(declare-fun m!1854515 () Bool)

(assert (=> b!1575292 m!1854515))

(declare-fun m!1854517 () Bool)

(assert (=> b!1575292 m!1854517))

(declare-fun m!1854519 () Bool)

(assert (=> b!1575292 m!1854519))

(declare-fun m!1854521 () Bool)

(assert (=> b!1575292 m!1854521))

(declare-fun m!1854523 () Bool)

(assert (=> b!1575292 m!1854523))

(assert (=> b!1575292 m!1854519))

(assert (=> b!1575292 m!1854521))

(declare-fun m!1854525 () Bool)

(assert (=> b!1575296 m!1854525))

(declare-fun m!1854527 () Bool)

(assert (=> b!1575296 m!1854527))

(declare-fun m!1854529 () Bool)

(assert (=> b!1575290 m!1854529))

(push 1)

(assert b_and!110259)

(assert (not b!1575294))

(assert (not b!1575290))

(assert b_and!110253)

(assert (not b!1575301))

(assert (not b!1575305))

(assert (not b_next!43103))

(assert (not b!1575304))

(assert (not b_next!43105))

(assert (not b!1575300))

(assert (not b!1575297))

(assert (not b_next!43107))

(assert (not b!1575291))

(assert (not b!1575293))

(assert b_and!110255)

(assert (not b!1575295))

(assert b_and!110257)

(assert (not b!1575296))

(assert (not b_next!43109))

(assert (not b!1575292))

(assert (not b!1575289))

(assert (not b!1575299))

(check-sat)

(pop 1)

(push 1)

(assert b_and!110259)

(assert (not b_next!43107))

(assert b_and!110255)

(assert b_and!110257)

(assert (not b_next!43109))

(assert b_and!110253)

(assert (not b_next!43103))

(assert (not b_next!43105))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!467725 () Bool)

(assert (=> d!467725 (= (inv!22667 (tag!3302 (h!22662 rules!1846))) (= (mod (str.len (value!96199 (tag!3302 (h!22662 rules!1846)))) 2) 0))))

(assert (=> b!1575305 d!467725))

(declare-fun d!467727 () Bool)

(declare-fun res!702165 () Bool)

(declare-fun e!1011935 () Bool)

(assert (=> d!467727 (=> (not res!702165) (not e!1011935))))

(declare-fun semiInverseModEq!1141 (Int Int) Bool)

(assert (=> d!467727 (= res!702165 (semiInverseModEq!1141 (toChars!4290 (transformation!3036 (h!22662 rules!1846))) (toValue!4431 (transformation!3036 (h!22662 rules!1846)))))))

(assert (=> d!467727 (= (inv!22671 (transformation!3036 (h!22662 rules!1846))) e!1011935)))

(declare-fun b!1575359 () Bool)

(declare-fun equivClasses!1082 (Int Int) Bool)

(assert (=> b!1575359 (= e!1011935 (equivClasses!1082 (toChars!4290 (transformation!3036 (h!22662 rules!1846))) (toValue!4431 (transformation!3036 (h!22662 rules!1846)))))))

(assert (= (and d!467727 res!702165) b!1575359))

(declare-fun m!1854593 () Bool)

(assert (=> d!467727 m!1854593))

(declare-fun m!1854595 () Bool)

(assert (=> b!1575359 m!1854595))

(assert (=> b!1575305 d!467727))

(declare-fun d!467729 () Bool)

(declare-fun lt!548025 () BalanceConc!11384)

(declare-fun printList!788 (LexerInterface!2665 List!17332) List!17330)

(assert (=> d!467729 (= (list!6642 lt!548025) (printList!788 thiss!17113 (list!6641 (seqFromList!1833 tokens!457))))))

(declare-fun printTailRec!724 (LexerInterface!2665 BalanceConc!11386 Int BalanceConc!11384) BalanceConc!11384)

(assert (=> d!467729 (= lt!548025 (printTailRec!724 thiss!17113 (seqFromList!1833 tokens!457) 0 (BalanceConc!11385 Empty!5720)))))

(assert (=> d!467729 (= (print!1196 thiss!17113 (seqFromList!1833 tokens!457)) lt!548025)))

(declare-fun bs!390460 () Bool)

(assert (= bs!390460 d!467729))

(declare-fun m!1854597 () Bool)

(assert (=> bs!390460 m!1854597))

(assert (=> bs!390460 m!1854487))

(declare-fun m!1854599 () Bool)

(assert (=> bs!390460 m!1854599))

(assert (=> bs!390460 m!1854599))

(declare-fun m!1854601 () Bool)

(assert (=> bs!390460 m!1854601))

(assert (=> bs!390460 m!1854487))

(declare-fun m!1854603 () Bool)

(assert (=> bs!390460 m!1854603))

(assert (=> b!1575294 d!467729))

(declare-fun d!467731 () Bool)

(declare-fun list!6645 (Conc!5720) List!17330)

(assert (=> d!467731 (= (list!6642 lt!547978) (list!6645 (c!255347 lt!547978)))))

(declare-fun bs!390461 () Bool)

(assert (= bs!390461 d!467731))

(declare-fun m!1854605 () Bool)

(assert (=> bs!390461 m!1854605))

(assert (=> b!1575294 d!467731))

(declare-fun b!1575369 () Bool)

(declare-fun e!1011940 () List!17330)

(assert (=> b!1575369 (= e!1011940 (Cons!17260 (h!22661 lt!547974) (++!4472 (t!143295 lt!547974) lt!547979)))))

(declare-fun b!1575371 () Bool)

(declare-fun e!1011941 () Bool)

(declare-fun lt!548028 () List!17330)

(assert (=> b!1575371 (= e!1011941 (or (not (= lt!547979 Nil!17260)) (= lt!548028 lt!547974)))))

(declare-fun b!1575370 () Bool)

(declare-fun res!702171 () Bool)

(assert (=> b!1575370 (=> (not res!702171) (not e!1011941))))

(declare-fun size!13909 (List!17330) Int)

(assert (=> b!1575370 (= res!702171 (= (size!13909 lt!548028) (+ (size!13909 lt!547974) (size!13909 lt!547979))))))

(declare-fun b!1575368 () Bool)

(assert (=> b!1575368 (= e!1011940 lt!547979)))

(declare-fun d!467733 () Bool)

(assert (=> d!467733 e!1011941))

(declare-fun res!702170 () Bool)

(assert (=> d!467733 (=> (not res!702170) (not e!1011941))))

(declare-fun content!2376 (List!17330) (Set C!8902))

(assert (=> d!467733 (= res!702170 (= (content!2376 lt!548028) (set.union (content!2376 lt!547974) (content!2376 lt!547979))))))

(assert (=> d!467733 (= lt!548028 e!1011940)))

(declare-fun c!255356 () Bool)

(assert (=> d!467733 (= c!255356 (is-Nil!17260 lt!547974))))

(assert (=> d!467733 (= (++!4472 lt!547974 lt!547979) lt!548028)))

(assert (= (and d!467733 c!255356) b!1575368))

(assert (= (and d!467733 (not c!255356)) b!1575369))

(assert (= (and d!467733 res!702170) b!1575370))

(assert (= (and b!1575370 res!702171) b!1575371))

(declare-fun m!1854607 () Bool)

(assert (=> b!1575369 m!1854607))

(declare-fun m!1854609 () Bool)

(assert (=> b!1575370 m!1854609))

(declare-fun m!1854611 () Bool)

(assert (=> b!1575370 m!1854611))

(declare-fun m!1854613 () Bool)

(assert (=> b!1575370 m!1854613))

(declare-fun m!1854615 () Bool)

(assert (=> d!467733 m!1854615))

(declare-fun m!1854617 () Bool)

(assert (=> d!467733 m!1854617))

(declare-fun m!1854619 () Bool)

(assert (=> d!467733 m!1854619))

(assert (=> b!1575294 d!467733))

(declare-fun d!467735 () Bool)

(declare-fun fromListB!782 (List!17332) BalanceConc!11386)

(assert (=> d!467735 (= (seqFromList!1833 tokens!457) (fromListB!782 tokens!457))))

(declare-fun bs!390462 () Bool)

(assert (= bs!390462 d!467735))

(declare-fun m!1854621 () Bool)

(assert (=> bs!390462 m!1854621))

(assert (=> b!1575294 d!467735))

(declare-fun d!467737 () Bool)

(assert (=> d!467737 (= (seqFromList!1833 (t!143297 tokens!457)) (fromListB!782 (t!143297 tokens!457)))))

(declare-fun bs!390463 () Bool)

(assert (= bs!390463 d!467737))

(declare-fun m!1854623 () Bool)

(assert (=> bs!390463 m!1854623))

(assert (=> b!1575294 d!467737))

(declare-fun d!467739 () Bool)

(assert (=> d!467739 (= (list!6642 (charsOf!1685 (h!22663 tokens!457))) (list!6645 (c!255347 (charsOf!1685 (h!22663 tokens!457)))))))

(declare-fun bs!390464 () Bool)

(assert (= bs!390464 d!467739))

(declare-fun m!1854625 () Bool)

(assert (=> bs!390464 m!1854625))

(assert (=> b!1575294 d!467739))

(declare-fun d!467741 () Bool)

(declare-fun lt!548029 () BalanceConc!11384)

(assert (=> d!467741 (= (list!6642 lt!548029) (printList!788 thiss!17113 (list!6641 lt!547973)))))

(assert (=> d!467741 (= lt!548029 (printTailRec!724 thiss!17113 lt!547973 0 (BalanceConc!11385 Empty!5720)))))

(assert (=> d!467741 (= (print!1196 thiss!17113 lt!547973) lt!548029)))

(declare-fun bs!390465 () Bool)

(assert (= bs!390465 d!467741))

(declare-fun m!1854627 () Bool)

(assert (=> bs!390465 m!1854627))

(assert (=> bs!390465 m!1854517))

(assert (=> bs!390465 m!1854517))

(declare-fun m!1854629 () Bool)

(assert (=> bs!390465 m!1854629))

(declare-fun m!1854631 () Bool)

(assert (=> bs!390465 m!1854631))

(assert (=> b!1575294 d!467741))

(declare-fun d!467743 () Bool)

(assert (=> d!467743 (= (list!6642 lt!547968) (list!6645 (c!255347 lt!547968)))))

(declare-fun bs!390466 () Bool)

(assert (= bs!390466 d!467743))

(declare-fun m!1854633 () Bool)

(assert (=> bs!390466 m!1854633))

(assert (=> b!1575294 d!467743))

(declare-fun b!1575393 () Bool)

(declare-fun e!1011956 () Bool)

(declare-fun lt!548032 () tuple2!16724)

(declare-datatypes ((tuple2!16728 0))(
  ( (tuple2!16729 (_1!9766 List!17332) (_2!9766 List!17330)) )
))
(declare-fun lexList!770 (LexerInterface!2665 List!17331 List!17330) tuple2!16728)

(assert (=> b!1575393 (= e!1011956 (= (list!6642 (_2!9764 lt!548032)) (_2!9766 (lexList!770 thiss!17113 rules!1846 (list!6642 lt!547968)))))))

(declare-fun b!1575394 () Bool)

(declare-fun res!702185 () Bool)

(assert (=> b!1575394 (=> (not res!702185) (not e!1011956))))

(assert (=> b!1575394 (= res!702185 (= (list!6641 (_1!9764 lt!548032)) (_1!9766 (lexList!770 thiss!17113 rules!1846 (list!6642 lt!547968)))))))

(declare-fun b!1575395 () Bool)

(declare-fun e!1011954 () Bool)

(assert (=> b!1575395 (= e!1011954 (= (_2!9764 lt!548032) lt!547968))))

(declare-fun b!1575396 () Bool)

(declare-fun e!1011955 () Bool)

(assert (=> b!1575396 (= e!1011954 e!1011955)))

(declare-fun res!702186 () Bool)

(declare-fun size!13910 (BalanceConc!11384) Int)

(assert (=> b!1575396 (= res!702186 (< (size!13910 (_2!9764 lt!548032)) (size!13910 lt!547968)))))

(assert (=> b!1575396 (=> (not res!702186) (not e!1011955))))

(declare-fun b!1575397 () Bool)

(declare-fun isEmpty!10302 (BalanceConc!11386) Bool)

(assert (=> b!1575397 (= e!1011955 (not (isEmpty!10302 (_1!9764 lt!548032))))))

(declare-fun d!467745 () Bool)

(assert (=> d!467745 e!1011956))

(declare-fun res!702184 () Bool)

(assert (=> d!467745 (=> (not res!702184) (not e!1011956))))

(assert (=> d!467745 (= res!702184 e!1011954)))

(declare-fun c!255359 () Bool)

(declare-fun size!13911 (BalanceConc!11386) Int)

(assert (=> d!467745 (= c!255359 (> (size!13911 (_1!9764 lt!548032)) 0))))

(declare-fun lexTailRecV2!493 (LexerInterface!2665 List!17331 BalanceConc!11384 BalanceConc!11384 BalanceConc!11384 BalanceConc!11386) tuple2!16724)

(assert (=> d!467745 (= lt!548032 (lexTailRecV2!493 thiss!17113 rules!1846 lt!547968 (BalanceConc!11385 Empty!5720) lt!547968 (BalanceConc!11387 Empty!5721)))))

(assert (=> d!467745 (= (lex!1149 thiss!17113 rules!1846 lt!547968) lt!548032)))

(assert (= (and d!467745 c!255359) b!1575396))

(assert (= (and d!467745 (not c!255359)) b!1575395))

(assert (= (and b!1575396 res!702186) b!1575397))

(assert (= (and d!467745 res!702184) b!1575394))

(assert (= (and b!1575394 res!702185) b!1575393))

(declare-fun m!1854649 () Bool)

(assert (=> b!1575394 m!1854649))

(assert (=> b!1575394 m!1854483))

(assert (=> b!1575394 m!1854483))

(declare-fun m!1854651 () Bool)

(assert (=> b!1575394 m!1854651))

(declare-fun m!1854653 () Bool)

(assert (=> b!1575393 m!1854653))

(assert (=> b!1575393 m!1854483))

(assert (=> b!1575393 m!1854483))

(assert (=> b!1575393 m!1854651))

(declare-fun m!1854655 () Bool)

(assert (=> d!467745 m!1854655))

(declare-fun m!1854657 () Bool)

(assert (=> d!467745 m!1854657))

(declare-fun m!1854659 () Bool)

(assert (=> b!1575397 m!1854659))

(declare-fun m!1854661 () Bool)

(assert (=> b!1575396 m!1854661))

(declare-fun m!1854663 () Bool)

(assert (=> b!1575396 m!1854663))

(assert (=> b!1575294 d!467745))

(declare-fun d!467753 () Bool)

(declare-fun lt!548035 () BalanceConc!11384)

(assert (=> d!467753 (= (list!6642 lt!548035) (originalCharacters!3850 (h!22663 tokens!457)))))

(declare-fun dynLambda!7644 (Int TokenValue!3126) BalanceConc!11384)

(assert (=> d!467753 (= lt!548035 (dynLambda!7644 (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) (value!96200 (h!22663 tokens!457))))))

(assert (=> d!467753 (= (charsOf!1685 (h!22663 tokens!457)) lt!548035)))

(declare-fun b_lambda!49579 () Bool)

(assert (=> (not b_lambda!49579) (not d!467753)))

(declare-fun tb!88667 () Bool)

(declare-fun t!143307 () Bool)

(assert (=> (and b!1575302 (= (toChars!4290 (transformation!3036 (h!22662 rules!1846))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457))))) t!143307) tb!88667))

(declare-fun b!1575402 () Bool)

(declare-fun e!1011959 () Bool)

(declare-fun tp!463834 () Bool)

(declare-fun inv!22674 (Conc!5720) Bool)

(assert (=> b!1575402 (= e!1011959 (and (inv!22674 (c!255347 (dynLambda!7644 (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) (value!96200 (h!22663 tokens!457))))) tp!463834))))

(declare-fun result!107252 () Bool)

(declare-fun inv!22675 (BalanceConc!11384) Bool)

(assert (=> tb!88667 (= result!107252 (and (inv!22675 (dynLambda!7644 (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) (value!96200 (h!22663 tokens!457)))) e!1011959))))

(assert (= tb!88667 b!1575402))

(declare-fun m!1854665 () Bool)

(assert (=> b!1575402 m!1854665))

(declare-fun m!1854667 () Bool)

(assert (=> tb!88667 m!1854667))

(assert (=> d!467753 t!143307))

(declare-fun b_and!110273 () Bool)

(assert (= b_and!110255 (and (=> t!143307 result!107252) b_and!110273)))

(declare-fun t!143309 () Bool)

(declare-fun tb!88669 () Bool)

(assert (=> (and b!1575303 (= (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457))))) t!143309) tb!88669))

(declare-fun result!107256 () Bool)

(assert (= result!107256 result!107252))

(assert (=> d!467753 t!143309))

(declare-fun b_and!110275 () Bool)

(assert (= b_and!110259 (and (=> t!143309 result!107256) b_and!110275)))

(declare-fun m!1854669 () Bool)

(assert (=> d!467753 m!1854669))

(declare-fun m!1854671 () Bool)

(assert (=> d!467753 m!1854671))

(assert (=> b!1575294 d!467753))

(declare-fun d!467755 () Bool)

(assert (=> d!467755 (= (inv!22667 (tag!3302 (rule!4828 (h!22663 tokens!457)))) (= (mod (str.len (value!96199 (tag!3302 (rule!4828 (h!22663 tokens!457))))) 2) 0))))

(assert (=> b!1575296 d!467755))

(declare-fun d!467757 () Bool)

(declare-fun res!702187 () Bool)

(declare-fun e!1011960 () Bool)

(assert (=> d!467757 (=> (not res!702187) (not e!1011960))))

(assert (=> d!467757 (= res!702187 (semiInverseModEq!1141 (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) (toValue!4431 (transformation!3036 (rule!4828 (h!22663 tokens!457))))))))

(assert (=> d!467757 (= (inv!22671 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) e!1011960)))

(declare-fun b!1575403 () Bool)

(assert (=> b!1575403 (= e!1011960 (equivClasses!1082 (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) (toValue!4431 (transformation!3036 (rule!4828 (h!22663 tokens!457))))))))

(assert (= (and d!467757 res!702187) b!1575403))

(declare-fun m!1854673 () Bool)

(assert (=> d!467757 m!1854673))

(declare-fun m!1854675 () Bool)

(assert (=> b!1575403 m!1854675))

(assert (=> b!1575296 d!467757))

(declare-fun d!467759 () Bool)

(declare-fun lt!548040 () Bool)

(declare-fun e!1011966 () Bool)

(assert (=> d!467759 (= lt!548040 e!1011966)))

(declare-fun res!702195 () Bool)

(assert (=> d!467759 (=> (not res!702195) (not e!1011966))))

(declare-fun singletonSeq!1370 (Token!5638) BalanceConc!11386)

(assert (=> d!467759 (= res!702195 (= (list!6641 (_1!9764 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (singletonSeq!1370 (h!22663 (t!143297 tokens!457))))))) (list!6641 (singletonSeq!1370 (h!22663 (t!143297 tokens!457))))))))

(declare-fun e!1011965 () Bool)

(assert (=> d!467759 (= lt!548040 e!1011965)))

(declare-fun res!702196 () Bool)

(assert (=> d!467759 (=> (not res!702196) (not e!1011965))))

(declare-fun lt!548041 () tuple2!16724)

(assert (=> d!467759 (= res!702196 (= (size!13911 (_1!9764 lt!548041)) 1))))

(assert (=> d!467759 (= lt!548041 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (singletonSeq!1370 (h!22663 (t!143297 tokens!457))))))))

(assert (=> d!467759 (not (isEmpty!10300 rules!1846))))

(assert (=> d!467759 (= (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 (t!143297 tokens!457))) lt!548040)))

(declare-fun b!1575410 () Bool)

(declare-fun res!702194 () Bool)

(assert (=> b!1575410 (=> (not res!702194) (not e!1011965))))

(declare-fun apply!4171 (BalanceConc!11386 Int) Token!5638)

(assert (=> b!1575410 (= res!702194 (= (apply!4171 (_1!9764 lt!548041) 0) (h!22663 (t!143297 tokens!457))))))

(declare-fun b!1575411 () Bool)

(declare-fun isEmpty!10303 (BalanceConc!11384) Bool)

(assert (=> b!1575411 (= e!1011965 (isEmpty!10303 (_2!9764 lt!548041)))))

(declare-fun b!1575412 () Bool)

(assert (=> b!1575412 (= e!1011966 (isEmpty!10303 (_2!9764 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (singletonSeq!1370 (h!22663 (t!143297 tokens!457))))))))))

(assert (= (and d!467759 res!702196) b!1575410))

(assert (= (and b!1575410 res!702194) b!1575411))

(assert (= (and d!467759 res!702195) b!1575412))

(declare-fun m!1854677 () Bool)

(assert (=> d!467759 m!1854677))

(declare-fun m!1854679 () Bool)

(assert (=> d!467759 m!1854679))

(declare-fun m!1854681 () Bool)

(assert (=> d!467759 m!1854681))

(declare-fun m!1854683 () Bool)

(assert (=> d!467759 m!1854683))

(declare-fun m!1854685 () Bool)

(assert (=> d!467759 m!1854685))

(assert (=> d!467759 m!1854681))

(assert (=> d!467759 m!1854677))

(assert (=> d!467759 m!1854505))

(assert (=> d!467759 m!1854681))

(declare-fun m!1854687 () Bool)

(assert (=> d!467759 m!1854687))

(declare-fun m!1854689 () Bool)

(assert (=> b!1575410 m!1854689))

(declare-fun m!1854691 () Bool)

(assert (=> b!1575411 m!1854691))

(assert (=> b!1575412 m!1854681))

(assert (=> b!1575412 m!1854681))

(assert (=> b!1575412 m!1854677))

(assert (=> b!1575412 m!1854677))

(assert (=> b!1575412 m!1854679))

(declare-fun m!1854693 () Bool)

(assert (=> b!1575412 m!1854693))

(assert (=> b!1575295 d!467759))

(declare-fun d!467761 () Bool)

(declare-fun e!1011969 () Bool)

(assert (=> d!467761 e!1011969))

(declare-fun res!702199 () Bool)

(assert (=> d!467761 (=> (not res!702199) (not e!1011969))))

(declare-fun isBalanced!1679 (Conc!5721) Bool)

(declare-fun prepend!506 (Conc!5721 Token!5638) Conc!5721)

(assert (=> d!467761 (= res!702199 (isBalanced!1679 (prepend!506 (c!255349 (seqFromList!1833 (t!143297 (t!143297 tokens!457)))) (h!22663 (t!143297 tokens!457)))))))

(declare-fun lt!548044 () BalanceConc!11386)

(assert (=> d!467761 (= lt!548044 (BalanceConc!11387 (prepend!506 (c!255349 (seqFromList!1833 (t!143297 (t!143297 tokens!457)))) (h!22663 (t!143297 tokens!457)))))))

(assert (=> d!467761 (= (prepend!504 (seqFromList!1833 (t!143297 (t!143297 tokens!457))) (h!22663 (t!143297 tokens!457))) lt!548044)))

(declare-fun b!1575415 () Bool)

(assert (=> b!1575415 (= e!1011969 (= (list!6641 lt!548044) (Cons!17262 (h!22663 (t!143297 tokens!457)) (list!6641 (seqFromList!1833 (t!143297 (t!143297 tokens!457)))))))))

(assert (= (and d!467761 res!702199) b!1575415))

(declare-fun m!1854695 () Bool)

(assert (=> d!467761 m!1854695))

(assert (=> d!467761 m!1854695))

(declare-fun m!1854697 () Bool)

(assert (=> d!467761 m!1854697))

(declare-fun m!1854699 () Bool)

(assert (=> b!1575415 m!1854699))

(assert (=> b!1575415 m!1854519))

(declare-fun m!1854701 () Bool)

(assert (=> b!1575415 m!1854701))

(assert (=> b!1575292 d!467761))

(declare-fun d!467763 () Bool)

(assert (=> d!467763 (= (list!6641 (_1!9764 lt!547967)) (list!6641 (prepend!504 (seqFromList!1833 (t!143297 (t!143297 tokens!457))) (h!22663 (t!143297 tokens!457)))))))

(declare-fun lt!548047 () Unit!26664)

(declare-fun choose!9424 (Token!5638 List!17332 BalanceConc!11386) Unit!26664)

(assert (=> d!467763 (= lt!548047 (choose!9424 (h!22663 (t!143297 tokens!457)) (t!143297 (t!143297 tokens!457)) (_1!9764 lt!547967)))))

(declare-fun $colon$colon!260 (List!17332 Token!5638) List!17332)

(assert (=> d!467763 (= (list!6641 (_1!9764 lt!547967)) (list!6641 (seqFromList!1833 ($colon$colon!260 (t!143297 (t!143297 tokens!457)) (h!22663 (t!143297 tokens!457))))))))

(assert (=> d!467763 (= (seqFromListBHdTlConstructive!113 (h!22663 (t!143297 tokens!457)) (t!143297 (t!143297 tokens!457)) (_1!9764 lt!547967)) lt!548047)))

(declare-fun bs!390468 () Bool)

(assert (= bs!390468 d!467763))

(assert (=> bs!390468 m!1854519))

(assert (=> bs!390468 m!1854521))

(declare-fun m!1854703 () Bool)

(assert (=> bs!390468 m!1854703))

(declare-fun m!1854705 () Bool)

(assert (=> bs!390468 m!1854705))

(declare-fun m!1854707 () Bool)

(assert (=> bs!390468 m!1854707))

(assert (=> bs!390468 m!1854707))

(declare-fun m!1854709 () Bool)

(assert (=> bs!390468 m!1854709))

(assert (=> bs!390468 m!1854521))

(assert (=> bs!390468 m!1854523))

(assert (=> bs!390468 m!1854519))

(assert (=> bs!390468 m!1854705))

(assert (=> bs!390468 m!1854469))

(assert (=> b!1575292 d!467763))

(declare-fun d!467765 () Bool)

(assert (=> d!467765 (= (seqFromList!1833 (t!143297 (t!143297 tokens!457))) (fromListB!782 (t!143297 (t!143297 tokens!457))))))

(declare-fun bs!390469 () Bool)

(assert (= bs!390469 d!467765))

(declare-fun m!1854711 () Bool)

(assert (=> bs!390469 m!1854711))

(assert (=> b!1575292 d!467765))

(declare-fun d!467767 () Bool)

(declare-fun list!6646 (Conc!5721) List!17332)

(assert (=> d!467767 (= (list!6641 lt!547973) (list!6646 (c!255349 lt!547973)))))

(declare-fun bs!390470 () Bool)

(assert (= bs!390470 d!467767))

(declare-fun m!1854713 () Bool)

(assert (=> bs!390470 m!1854713))

(assert (=> b!1575292 d!467767))

(declare-fun d!467769 () Bool)

(assert (=> d!467769 (= (list!6641 (prepend!504 (seqFromList!1833 (t!143297 (t!143297 tokens!457))) (h!22663 (t!143297 tokens!457)))) (list!6646 (c!255349 (prepend!504 (seqFromList!1833 (t!143297 (t!143297 tokens!457))) (h!22663 (t!143297 tokens!457))))))))

(declare-fun bs!390471 () Bool)

(assert (= bs!390471 d!467769))

(declare-fun m!1854715 () Bool)

(assert (=> bs!390471 m!1854715))

(assert (=> b!1575292 d!467769))

(declare-fun d!467771 () Bool)

(declare-fun res!702204 () Bool)

(declare-fun e!1011972 () Bool)

(assert (=> d!467771 (=> (not res!702204) (not e!1011972))))

(declare-fun isEmpty!10304 (List!17330) Bool)

(assert (=> d!467771 (= res!702204 (not (isEmpty!10304 (originalCharacters!3850 (h!22663 tokens!457)))))))

(assert (=> d!467771 (= (inv!22670 (h!22663 tokens!457)) e!1011972)))

(declare-fun b!1575420 () Bool)

(declare-fun res!702205 () Bool)

(assert (=> b!1575420 (=> (not res!702205) (not e!1011972))))

(assert (=> b!1575420 (= res!702205 (= (originalCharacters!3850 (h!22663 tokens!457)) (list!6642 (dynLambda!7644 (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))) (value!96200 (h!22663 tokens!457))))))))

(declare-fun b!1575421 () Bool)

(assert (=> b!1575421 (= e!1011972 (= (size!13907 (h!22663 tokens!457)) (size!13909 (originalCharacters!3850 (h!22663 tokens!457)))))))

(assert (= (and d!467771 res!702204) b!1575420))

(assert (= (and b!1575420 res!702205) b!1575421))

(declare-fun b_lambda!49581 () Bool)

(assert (=> (not b_lambda!49581) (not b!1575420)))

(assert (=> b!1575420 t!143307))

(declare-fun b_and!110277 () Bool)

(assert (= b_and!110273 (and (=> t!143307 result!107252) b_and!110277)))

(assert (=> b!1575420 t!143309))

(declare-fun b_and!110279 () Bool)

(assert (= b_and!110275 (and (=> t!143309 result!107256) b_and!110279)))

(declare-fun m!1854717 () Bool)

(assert (=> d!467771 m!1854717))

(assert (=> b!1575420 m!1854671))

(assert (=> b!1575420 m!1854671))

(declare-fun m!1854719 () Bool)

(assert (=> b!1575420 m!1854719))

(declare-fun m!1854721 () Bool)

(assert (=> b!1575421 m!1854721))

(assert (=> b!1575291 d!467771))

(declare-fun d!467773 () Bool)

(assert (=> d!467773 (= (isEmpty!10300 rules!1846) (is-Nil!17261 rules!1846))))

(assert (=> b!1575293 d!467773))

(declare-fun d!467775 () Bool)

(declare-fun lt!548048 () Bool)

(declare-fun e!1011974 () Bool)

(assert (=> d!467775 (= lt!548048 e!1011974)))

(declare-fun res!702207 () Bool)

(assert (=> d!467775 (=> (not res!702207) (not e!1011974))))

(assert (=> d!467775 (= res!702207 (= (list!6641 (_1!9764 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (singletonSeq!1370 (h!22663 tokens!457)))))) (list!6641 (singletonSeq!1370 (h!22663 tokens!457)))))))

(declare-fun e!1011973 () Bool)

(assert (=> d!467775 (= lt!548048 e!1011973)))

(declare-fun res!702208 () Bool)

(assert (=> d!467775 (=> (not res!702208) (not e!1011973))))

(declare-fun lt!548049 () tuple2!16724)

(assert (=> d!467775 (= res!702208 (= (size!13911 (_1!9764 lt!548049)) 1))))

(assert (=> d!467775 (= lt!548049 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (singletonSeq!1370 (h!22663 tokens!457)))))))

(assert (=> d!467775 (not (isEmpty!10300 rules!1846))))

(assert (=> d!467775 (= (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 tokens!457)) lt!548048)))

(declare-fun b!1575422 () Bool)

(declare-fun res!702206 () Bool)

(assert (=> b!1575422 (=> (not res!702206) (not e!1011973))))

(assert (=> b!1575422 (= res!702206 (= (apply!4171 (_1!9764 lt!548049) 0) (h!22663 tokens!457)))))

(declare-fun b!1575423 () Bool)

(assert (=> b!1575423 (= e!1011973 (isEmpty!10303 (_2!9764 lt!548049)))))

(declare-fun b!1575424 () Bool)

(assert (=> b!1575424 (= e!1011974 (isEmpty!10303 (_2!9764 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (singletonSeq!1370 (h!22663 tokens!457)))))))))

(assert (= (and d!467775 res!702208) b!1575422))

(assert (= (and b!1575422 res!702206) b!1575423))

(assert (= (and d!467775 res!702207) b!1575424))

(declare-fun m!1854723 () Bool)

(assert (=> d!467775 m!1854723))

(declare-fun m!1854725 () Bool)

(assert (=> d!467775 m!1854725))

(declare-fun m!1854727 () Bool)

(assert (=> d!467775 m!1854727))

(declare-fun m!1854729 () Bool)

(assert (=> d!467775 m!1854729))

(declare-fun m!1854731 () Bool)

(assert (=> d!467775 m!1854731))

(assert (=> d!467775 m!1854727))

(assert (=> d!467775 m!1854723))

(assert (=> d!467775 m!1854505))

(assert (=> d!467775 m!1854727))

(declare-fun m!1854733 () Bool)

(assert (=> d!467775 m!1854733))

(declare-fun m!1854735 () Bool)

(assert (=> b!1575422 m!1854735))

(declare-fun m!1854737 () Bool)

(assert (=> b!1575423 m!1854737))

(assert (=> b!1575424 m!1854727))

(assert (=> b!1575424 m!1854727))

(assert (=> b!1575424 m!1854723))

(assert (=> b!1575424 m!1854723))

(assert (=> b!1575424 m!1854725))

(declare-fun m!1854739 () Bool)

(assert (=> b!1575424 m!1854739))

(assert (=> b!1575304 d!467775))

(declare-fun b!1575486 () Bool)

(declare-fun e!1012022 () Bool)

(assert (=> b!1575486 (= e!1012022 true)))

(declare-fun b!1575485 () Bool)

(declare-fun e!1012021 () Bool)

(assert (=> b!1575485 (= e!1012021 e!1012022)))

(declare-fun b!1575484 () Bool)

(declare-fun e!1012020 () Bool)

(assert (=> b!1575484 (= e!1012020 e!1012021)))

(declare-fun d!467777 () Bool)

(assert (=> d!467777 e!1012020))

(assert (= b!1575485 b!1575486))

(assert (= b!1575484 b!1575485))

(assert (= (and d!467777 (is-Cons!17261 rules!1846)) b!1575484))

(declare-fun order!10161 () Int)

(declare-fun order!10163 () Int)

(declare-fun lambda!66365 () Int)

(declare-fun dynLambda!7645 (Int Int) Int)

(declare-fun dynLambda!7646 (Int Int) Int)

(assert (=> b!1575486 (< (dynLambda!7645 order!10161 (toValue!4431 (transformation!3036 (h!22662 rules!1846)))) (dynLambda!7646 order!10163 lambda!66365))))

(declare-fun order!10165 () Int)

(declare-fun dynLambda!7647 (Int Int) Int)

(assert (=> b!1575486 (< (dynLambda!7647 order!10165 (toChars!4290 (transformation!3036 (h!22662 rules!1846)))) (dynLambda!7646 order!10163 lambda!66365))))

(assert (=> d!467777 true))

(declare-fun lt!548157 () Bool)

(declare-fun forall!3977 (List!17332 Int) Bool)

(assert (=> d!467777 (= lt!548157 (forall!3977 tokens!457 lambda!66365))))

(declare-fun e!1012013 () Bool)

(assert (=> d!467777 (= lt!548157 e!1012013)))

(declare-fun res!702240 () Bool)

(assert (=> d!467777 (=> res!702240 e!1012013)))

(assert (=> d!467777 (= res!702240 (not (is-Cons!17262 tokens!457)))))

(assert (=> d!467777 (not (isEmpty!10300 rules!1846))))

(assert (=> d!467777 (= (rulesProduceEachTokenIndividuallyList!867 thiss!17113 rules!1846 tokens!457) lt!548157)))

(declare-fun b!1575474 () Bool)

(declare-fun e!1012012 () Bool)

(assert (=> b!1575474 (= e!1012013 e!1012012)))

(declare-fun res!702241 () Bool)

(assert (=> b!1575474 (=> (not res!702241) (not e!1012012))))

(assert (=> b!1575474 (= res!702241 (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 tokens!457)))))

(declare-fun b!1575475 () Bool)

(assert (=> b!1575475 (= e!1012012 (rulesProduceEachTokenIndividuallyList!867 thiss!17113 rules!1846 (t!143297 tokens!457)))))

(assert (= (and d!467777 (not res!702240)) b!1575474))

(assert (= (and b!1575474 res!702241) b!1575475))

(declare-fun m!1854857 () Bool)

(assert (=> d!467777 m!1854857))

(assert (=> d!467777 m!1854505))

(assert (=> b!1575474 m!1854481))

(declare-fun m!1854859 () Bool)

(assert (=> b!1575475 m!1854859))

(assert (=> b!1575289 d!467777))

(declare-fun d!467795 () Bool)

(declare-fun res!702244 () Bool)

(declare-fun e!1012025 () Bool)

(assert (=> d!467795 (=> (not res!702244) (not e!1012025))))

(declare-fun rulesValid!1069 (LexerInterface!2665 List!17331) Bool)

(assert (=> d!467795 (= res!702244 (rulesValid!1069 thiss!17113 rules!1846))))

(assert (=> d!467795 (= (rulesInvariant!2334 thiss!17113 rules!1846) e!1012025)))

(declare-fun b!1575491 () Bool)

(declare-datatypes ((List!17337 0))(
  ( (Nil!17267) (Cons!17267 (h!22668 String!19964) (t!143320 List!17337)) )
))
(declare-fun noDuplicateTag!1069 (LexerInterface!2665 List!17331 List!17337) Bool)

(assert (=> b!1575491 (= e!1012025 (noDuplicateTag!1069 thiss!17113 rules!1846 Nil!17267))))

(assert (= (and d!467795 res!702244) b!1575491))

(declare-fun m!1854861 () Bool)

(assert (=> d!467795 m!1854861))

(declare-fun m!1854863 () Bool)

(assert (=> b!1575491 m!1854863))

(assert (=> b!1575300 d!467795))

(declare-fun d!467797 () Bool)

(assert (=> d!467797 (= (list!6641 (_1!9764 lt!547967)) (list!6646 (c!255349 (_1!9764 lt!547967))))))

(declare-fun bs!390473 () Bool)

(assert (= bs!390473 d!467797))

(declare-fun m!1854865 () Bool)

(assert (=> bs!390473 m!1854865))

(assert (=> b!1575299 d!467797))

(declare-fun d!467799 () Bool)

(declare-fun e!1012035 () Bool)

(assert (=> d!467799 e!1012035))

(declare-fun res!702251 () Bool)

(assert (=> d!467799 (=> (not res!702251) (not e!1012035))))

(assert (=> d!467799 (= res!702251 (= (list!6641 (_1!9764 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (seqFromList!1833 (t!143297 tokens!457)))))) (t!143297 tokens!457)))))

(declare-fun lt!548218 () Unit!26664)

(declare-fun e!1012034 () Unit!26664)

(assert (=> d!467799 (= lt!548218 e!1012034)))

(declare-fun c!255372 () Bool)

(assert (=> d!467799 (= c!255372 (or (is-Nil!17262 (t!143297 tokens!457)) (is-Nil!17262 (t!143297 (t!143297 tokens!457)))))))

(assert (=> d!467799 (not (isEmpty!10300 rules!1846))))

(assert (=> d!467799 (= (theoremInvertabilityWhenTokenListSeparable!110 thiss!17113 rules!1846 (t!143297 tokens!457)) lt!548218)))

(declare-fun b!1575502 () Bool)

(declare-fun Unit!26669 () Unit!26664)

(assert (=> b!1575502 (= e!1012034 Unit!26669)))

(declare-fun b!1575503 () Bool)

(declare-fun Unit!26670 () Unit!26664)

(assert (=> b!1575503 (= e!1012034 Unit!26670)))

(declare-fun lt!548226 () BalanceConc!11384)

(assert (=> b!1575503 (= lt!548226 (print!1196 thiss!17113 (seqFromList!1833 (t!143297 tokens!457))))))

(declare-fun lt!548235 () BalanceConc!11384)

(assert (=> b!1575503 (= lt!548235 (print!1196 thiss!17113 (seqFromList!1833 (t!143297 (t!143297 tokens!457)))))))

(declare-fun lt!548232 () tuple2!16724)

(assert (=> b!1575503 (= lt!548232 (lex!1149 thiss!17113 rules!1846 lt!548235))))

(declare-fun lt!548219 () List!17330)

(assert (=> b!1575503 (= lt!548219 (list!6642 (charsOf!1685 (h!22663 (t!143297 tokens!457)))))))

(declare-fun lt!548225 () List!17330)

(assert (=> b!1575503 (= lt!548225 (list!6642 lt!548235))))

(declare-fun lt!548229 () Unit!26664)

(assert (=> b!1575503 (= lt!548229 (lemmaConcatTwoListThenFirstIsPrefix!821 lt!548219 lt!548225))))

(assert (=> b!1575503 (isPrefix!1296 lt!548219 (++!4472 lt!548219 lt!548225))))

(declare-fun lt!548234 () Unit!26664)

(assert (=> b!1575503 (= lt!548234 lt!548229)))

(declare-fun lt!548223 () Unit!26664)

(assert (=> b!1575503 (= lt!548223 (theoremInvertabilityWhenTokenListSeparable!110 thiss!17113 rules!1846 (t!143297 (t!143297 tokens!457))))))

(declare-fun lt!548230 () Unit!26664)

(assert (=> b!1575503 (= lt!548230 (seqFromListBHdTlConstructive!113 (h!22663 (t!143297 (t!143297 tokens!457))) (t!143297 (t!143297 (t!143297 tokens!457))) (_1!9764 lt!548232)))))

(assert (=> b!1575503 (= (list!6641 (_1!9764 lt!548232)) (list!6641 (prepend!504 (seqFromList!1833 (t!143297 (t!143297 (t!143297 tokens!457)))) (h!22663 (t!143297 (t!143297 tokens!457))))))))

(declare-fun lt!548214 () Unit!26664)

(assert (=> b!1575503 (= lt!548214 lt!548230)))

(declare-datatypes ((tuple2!16730 0))(
  ( (tuple2!16731 (_1!9767 Token!5638) (_2!9767 List!17330)) )
))
(declare-datatypes ((Option!3083 0))(
  ( (None!3082) (Some!3082 (v!23896 tuple2!16730)) )
))
(declare-fun lt!548227 () Option!3083)

(declare-fun maxPrefix!1233 (LexerInterface!2665 List!17331 List!17330) Option!3083)

(assert (=> b!1575503 (= lt!548227 (maxPrefix!1233 thiss!17113 rules!1846 (list!6642 lt!548226)))))

(assert (=> b!1575503 (= (print!1196 thiss!17113 (singletonSeq!1370 (h!22663 (t!143297 tokens!457)))) (printTailRec!724 thiss!17113 (singletonSeq!1370 (h!22663 (t!143297 tokens!457))) 0 (BalanceConc!11385 Empty!5720)))))

(declare-fun lt!548221 () Unit!26664)

(declare-fun Unit!26671 () Unit!26664)

(assert (=> b!1575503 (= lt!548221 Unit!26671)))

(declare-fun lt!548233 () Unit!26664)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!253 (LexerInterface!2665 List!17331 List!17330 List!17330) Unit!26664)

(assert (=> b!1575503 (= lt!548233 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!253 thiss!17113 rules!1846 (list!6642 (charsOf!1685 (h!22663 (t!143297 tokens!457)))) (list!6642 lt!548235)))))

(assert (=> b!1575503 (= (list!6642 (charsOf!1685 (h!22663 (t!143297 tokens!457)))) (originalCharacters!3850 (h!22663 (t!143297 tokens!457))))))

(declare-fun lt!548216 () Unit!26664)

(declare-fun Unit!26672 () Unit!26664)

(assert (=> b!1575503 (= lt!548216 Unit!26672)))

(declare-fun singletonSeq!1371 (C!8902) BalanceConc!11384)

(declare-fun apply!4172 (BalanceConc!11384 Int) C!8902)

(declare-fun head!3158 (List!17330) C!8902)

(assert (=> b!1575503 (= (list!6642 (singletonSeq!1371 (apply!4172 (charsOf!1685 (h!22663 (t!143297 (t!143297 tokens!457)))) 0))) (Cons!17260 (head!3158 (originalCharacters!3850 (h!22663 (t!143297 (t!143297 tokens!457))))) Nil!17260))))

(declare-fun lt!548215 () Unit!26664)

(declare-fun Unit!26673 () Unit!26664)

(assert (=> b!1575503 (= lt!548215 Unit!26673)))

(assert (=> b!1575503 (= (list!6642 (singletonSeq!1371 (apply!4172 (charsOf!1685 (h!22663 (t!143297 (t!143297 tokens!457)))) 0))) (Cons!17260 (head!3158 (list!6642 lt!548235)) Nil!17260))))

(declare-fun lt!548224 () Unit!26664)

(declare-fun Unit!26674 () Unit!26664)

(assert (=> b!1575503 (= lt!548224 Unit!26674)))

(declare-fun head!3159 (BalanceConc!11384) C!8902)

(assert (=> b!1575503 (= (list!6642 (singletonSeq!1371 (apply!4172 (charsOf!1685 (h!22663 (t!143297 (t!143297 tokens!457)))) 0))) (Cons!17260 (head!3159 lt!548235) Nil!17260))))

(declare-fun lt!548236 () Unit!26664)

(declare-fun Unit!26675 () Unit!26664)

(assert (=> b!1575503 (= lt!548236 Unit!26675)))

(declare-fun isDefined!2478 (Option!3083) Bool)

(assert (=> b!1575503 (isDefined!2478 (maxPrefix!1233 thiss!17113 rules!1846 (originalCharacters!3850 (h!22663 (t!143297 tokens!457)))))))

(declare-fun lt!548222 () Unit!26664)

(declare-fun Unit!26676 () Unit!26664)

(assert (=> b!1575503 (= lt!548222 Unit!26676)))

(assert (=> b!1575503 (isDefined!2478 (maxPrefix!1233 thiss!17113 rules!1846 (list!6642 (charsOf!1685 (h!22663 (t!143297 tokens!457))))))))

(declare-fun lt!548231 () Unit!26664)

(declare-fun Unit!26677 () Unit!26664)

(assert (=> b!1575503 (= lt!548231 Unit!26677)))

(declare-fun lt!548220 () Unit!26664)

(declare-fun Unit!26678 () Unit!26664)

(assert (=> b!1575503 (= lt!548220 Unit!26678)))

(declare-fun get!4935 (Option!3083) tuple2!16730)

(assert (=> b!1575503 (= (_1!9767 (get!4935 (maxPrefix!1233 thiss!17113 rules!1846 (list!6642 (charsOf!1685 (h!22663 (t!143297 tokens!457))))))) (h!22663 (t!143297 tokens!457)))))

(declare-fun lt!548237 () Unit!26664)

(declare-fun Unit!26679 () Unit!26664)

(assert (=> b!1575503 (= lt!548237 Unit!26679)))

(assert (=> b!1575503 (isEmpty!10304 (_2!9767 (get!4935 (maxPrefix!1233 thiss!17113 rules!1846 (list!6642 (charsOf!1685 (h!22663 (t!143297 tokens!457))))))))))

(declare-fun lt!548213 () Unit!26664)

(declare-fun Unit!26680 () Unit!26664)

(assert (=> b!1575503 (= lt!548213 Unit!26680)))

(declare-fun matchR!1901 (Regex!4364 List!17330) Bool)

(assert (=> b!1575503 (matchR!1901 (regex!3036 (rule!4828 (h!22663 (t!143297 tokens!457)))) (list!6642 (charsOf!1685 (h!22663 (t!143297 tokens!457)))))))

(declare-fun lt!548217 () Unit!26664)

(declare-fun Unit!26681 () Unit!26664)

(assert (=> b!1575503 (= lt!548217 Unit!26681)))

(assert (=> b!1575503 (= (rule!4828 (h!22663 (t!143297 tokens!457))) (rule!4828 (h!22663 (t!143297 tokens!457))))))

(declare-fun lt!548228 () Unit!26664)

(declare-fun Unit!26682 () Unit!26664)

(assert (=> b!1575503 (= lt!548228 Unit!26682)))

(declare-fun lt!548212 () Unit!26664)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!51 (LexerInterface!2665 List!17331 Token!5638 Rule!5872 List!17330) Unit!26664)

(assert (=> b!1575503 (= lt!548212 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!51 thiss!17113 rules!1846 (h!22663 (t!143297 tokens!457)) (rule!4828 (h!22663 (t!143297 tokens!457))) (list!6642 lt!548235)))))

(declare-fun b!1575504 () Bool)

(assert (=> b!1575504 (= e!1012035 (isEmpty!10303 (_2!9764 (lex!1149 thiss!17113 rules!1846 (print!1196 thiss!17113 (seqFromList!1833 (t!143297 tokens!457)))))))))

(assert (= (and d!467799 c!255372) b!1575502))

(assert (= (and d!467799 (not c!255372)) b!1575503))

(assert (= (and d!467799 res!702251) b!1575504))

(assert (=> d!467799 m!1854485))

(declare-fun m!1854867 () Bool)

(assert (=> d!467799 m!1854867))

(assert (=> d!467799 m!1854505))

(declare-fun m!1854869 () Bool)

(assert (=> d!467799 m!1854869))

(declare-fun m!1854871 () Bool)

(assert (=> d!467799 m!1854871))

(assert (=> d!467799 m!1854485))

(assert (=> d!467799 m!1854869))

(assert (=> b!1575503 m!1854485))

(declare-fun m!1854873 () Bool)

(assert (=> b!1575503 m!1854873))

(declare-fun m!1854875 () Bool)

(assert (=> b!1575503 m!1854875))

(declare-fun m!1854877 () Bool)

(assert (=> b!1575503 m!1854877))

(declare-fun m!1854879 () Bool)

(assert (=> b!1575503 m!1854879))

(declare-fun m!1854881 () Bool)

(assert (=> b!1575503 m!1854881))

(assert (=> b!1575503 m!1854681))

(declare-fun m!1854883 () Bool)

(assert (=> b!1575503 m!1854883))

(declare-fun m!1854885 () Bool)

(assert (=> b!1575503 m!1854885))

(assert (=> b!1575503 m!1854681))

(assert (=> b!1575503 m!1854677))

(declare-fun m!1854887 () Bool)

(assert (=> b!1575503 m!1854887))

(declare-fun m!1854889 () Bool)

(assert (=> b!1575503 m!1854889))

(declare-fun m!1854891 () Bool)

(assert (=> b!1575503 m!1854891))

(declare-fun m!1854893 () Bool)

(assert (=> b!1575503 m!1854893))

(declare-fun m!1854895 () Bool)

(assert (=> b!1575503 m!1854895))

(declare-fun m!1854897 () Bool)

(assert (=> b!1575503 m!1854897))

(declare-fun m!1854899 () Bool)

(assert (=> b!1575503 m!1854899))

(declare-fun m!1854901 () Bool)

(assert (=> b!1575503 m!1854901))

(declare-fun m!1854903 () Bool)

(assert (=> b!1575503 m!1854903))

(declare-fun m!1854905 () Bool)

(assert (=> b!1575503 m!1854905))

(assert (=> b!1575503 m!1854901))

(assert (=> b!1575503 m!1854879))

(assert (=> b!1575503 m!1854885))

(assert (=> b!1575503 m!1854901))

(declare-fun m!1854907 () Bool)

(assert (=> b!1575503 m!1854907))

(assert (=> b!1575503 m!1854895))

(declare-fun m!1854909 () Bool)

(assert (=> b!1575503 m!1854909))

(declare-fun m!1854911 () Bool)

(assert (=> b!1575503 m!1854911))

(assert (=> b!1575503 m!1854889))

(assert (=> b!1575503 m!1854901))

(assert (=> b!1575503 m!1854897))

(declare-fun m!1854913 () Bool)

(assert (=> b!1575503 m!1854913))

(declare-fun m!1854915 () Bool)

(assert (=> b!1575503 m!1854915))

(assert (=> b!1575503 m!1854519))

(assert (=> b!1575503 m!1854887))

(declare-fun m!1854917 () Bool)

(assert (=> b!1575503 m!1854917))

(assert (=> b!1575503 m!1854897))

(declare-fun m!1854919 () Bool)

(assert (=> b!1575503 m!1854919))

(declare-fun m!1854921 () Bool)

(assert (=> b!1575503 m!1854921))

(declare-fun m!1854923 () Bool)

(assert (=> b!1575503 m!1854923))

(declare-fun m!1854925 () Bool)

(assert (=> b!1575503 m!1854925))

(assert (=> b!1575503 m!1854893))

(assert (=> b!1575503 m!1854897))

(declare-fun m!1854927 () Bool)

(assert (=> b!1575503 m!1854927))

(assert (=> b!1575503 m!1854905))

(declare-fun m!1854929 () Bool)

(assert (=> b!1575503 m!1854929))

(assert (=> b!1575503 m!1854879))

(declare-fun m!1854931 () Bool)

(assert (=> b!1575503 m!1854931))

(assert (=> b!1575503 m!1854899))

(assert (=> b!1575503 m!1854911))

(assert (=> b!1575503 m!1854681))

(assert (=> b!1575503 m!1854921))

(assert (=> b!1575503 m!1854485))

(assert (=> b!1575503 m!1854869))

(declare-fun m!1854933 () Bool)

(assert (=> b!1575503 m!1854933))

(assert (=> b!1575503 m!1854519))

(declare-fun m!1854935 () Bool)

(assert (=> b!1575503 m!1854935))

(declare-fun m!1854937 () Bool)

(assert (=> b!1575503 m!1854937))

(assert (=> b!1575504 m!1854485))

(assert (=> b!1575504 m!1854485))

(assert (=> b!1575504 m!1854869))

(assert (=> b!1575504 m!1854869))

(assert (=> b!1575504 m!1854871))

(declare-fun m!1854939 () Bool)

(assert (=> b!1575504 m!1854939))

(assert (=> b!1575299 d!467799))

(declare-fun b!1575515 () Bool)

(declare-fun e!1012042 () Bool)

(declare-fun tail!2237 (List!17330) List!17330)

(assert (=> b!1575515 (= e!1012042 (isPrefix!1296 (tail!2237 lt!547974) (tail!2237 lt!547969)))))

(declare-fun b!1575514 () Bool)

(declare-fun res!702263 () Bool)

(assert (=> b!1575514 (=> (not res!702263) (not e!1012042))))

(assert (=> b!1575514 (= res!702263 (= (head!3158 lt!547974) (head!3158 lt!547969)))))

(declare-fun b!1575513 () Bool)

(declare-fun e!1012044 () Bool)

(assert (=> b!1575513 (= e!1012044 e!1012042)))

(declare-fun res!702261 () Bool)

(assert (=> b!1575513 (=> (not res!702261) (not e!1012042))))

(assert (=> b!1575513 (= res!702261 (not (is-Nil!17260 lt!547969)))))

(declare-fun b!1575516 () Bool)

(declare-fun e!1012043 () Bool)

(assert (=> b!1575516 (= e!1012043 (>= (size!13909 lt!547969) (size!13909 lt!547974)))))

(declare-fun d!467801 () Bool)

(assert (=> d!467801 e!1012043))

(declare-fun res!702260 () Bool)

(assert (=> d!467801 (=> res!702260 e!1012043)))

(declare-fun lt!548240 () Bool)

(assert (=> d!467801 (= res!702260 (not lt!548240))))

(assert (=> d!467801 (= lt!548240 e!1012044)))

(declare-fun res!702262 () Bool)

(assert (=> d!467801 (=> res!702262 e!1012044)))

(assert (=> d!467801 (= res!702262 (is-Nil!17260 lt!547974))))

(assert (=> d!467801 (= (isPrefix!1296 lt!547974 lt!547969) lt!548240)))

(assert (= (and d!467801 (not res!702262)) b!1575513))

(assert (= (and b!1575513 res!702261) b!1575514))

(assert (= (and b!1575514 res!702263) b!1575515))

(assert (= (and d!467801 (not res!702260)) b!1575516))

(declare-fun m!1854941 () Bool)

(assert (=> b!1575515 m!1854941))

(declare-fun m!1854943 () Bool)

(assert (=> b!1575515 m!1854943))

(assert (=> b!1575515 m!1854941))

(assert (=> b!1575515 m!1854943))

(declare-fun m!1854945 () Bool)

(assert (=> b!1575515 m!1854945))

(declare-fun m!1854947 () Bool)

(assert (=> b!1575514 m!1854947))

(declare-fun m!1854949 () Bool)

(assert (=> b!1575514 m!1854949))

(declare-fun m!1854951 () Bool)

(assert (=> b!1575516 m!1854951))

(assert (=> b!1575516 m!1854611))

(assert (=> b!1575299 d!467801))

(declare-fun d!467803 () Bool)

(assert (=> d!467803 (isPrefix!1296 lt!547974 (++!4472 lt!547974 lt!547979))))

(declare-fun lt!548243 () Unit!26664)

(declare-fun choose!9425 (List!17330 List!17330) Unit!26664)

(assert (=> d!467803 (= lt!548243 (choose!9425 lt!547974 lt!547979))))

(assert (=> d!467803 (= (lemmaConcatTwoListThenFirstIsPrefix!821 lt!547974 lt!547979) lt!548243)))

(declare-fun bs!390474 () Bool)

(assert (= bs!390474 d!467803))

(assert (=> bs!390474 m!1854501))

(assert (=> bs!390474 m!1854501))

(declare-fun m!1854953 () Bool)

(assert (=> bs!390474 m!1854953))

(declare-fun m!1854955 () Bool)

(assert (=> bs!390474 m!1854955))

(assert (=> b!1575299 d!467803))

(declare-fun d!467805 () Bool)

(declare-fun res!702271 () Bool)

(declare-fun e!1012061 () Bool)

(assert (=> d!467805 (=> res!702271 e!1012061)))

(assert (=> d!467805 (= res!702271 (or (not (is-Cons!17262 tokens!457)) (not (is-Cons!17262 (t!143297 tokens!457)))))))

(assert (=> d!467805 (= (tokensListTwoByTwoPredicateSeparableList!358 thiss!17113 tokens!457 rules!1846) e!1012061)))

(declare-fun b!1575537 () Bool)

(declare-fun e!1012062 () Bool)

(assert (=> b!1575537 (= e!1012061 e!1012062)))

(declare-fun res!702272 () Bool)

(assert (=> b!1575537 (=> (not res!702272) (not e!1012062))))

(declare-fun separableTokensPredicate!607 (LexerInterface!2665 Token!5638 Token!5638 List!17331) Bool)

(assert (=> b!1575537 (= res!702272 (separableTokensPredicate!607 thiss!17113 (h!22663 tokens!457) (h!22663 (t!143297 tokens!457)) rules!1846))))

(declare-fun lt!548261 () Unit!26664)

(declare-fun Unit!26683 () Unit!26664)

(assert (=> b!1575537 (= lt!548261 Unit!26683)))

(assert (=> b!1575537 (> (size!13910 (charsOf!1685 (h!22663 (t!143297 tokens!457)))) 0)))

(declare-fun lt!548260 () Unit!26664)

(declare-fun Unit!26684 () Unit!26664)

(assert (=> b!1575537 (= lt!548260 Unit!26684)))

(assert (=> b!1575537 (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 (t!143297 tokens!457)))))

(declare-fun lt!548264 () Unit!26664)

(declare-fun Unit!26685 () Unit!26664)

(assert (=> b!1575537 (= lt!548264 Unit!26685)))

(assert (=> b!1575537 (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 tokens!457))))

(declare-fun lt!548262 () Unit!26664)

(declare-fun lt!548259 () Unit!26664)

(assert (=> b!1575537 (= lt!548262 lt!548259)))

(assert (=> b!1575537 (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 (t!143297 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!506 (LexerInterface!2665 List!17331 List!17332 Token!5638) Unit!26664)

(assert (=> b!1575537 (= lt!548259 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!506 thiss!17113 rules!1846 tokens!457 (h!22663 (t!143297 tokens!457))))))

(declare-fun lt!548265 () Unit!26664)

(declare-fun lt!548263 () Unit!26664)

(assert (=> b!1575537 (= lt!548265 lt!548263)))

(assert (=> b!1575537 (rulesProduceIndividualToken!1327 thiss!17113 rules!1846 (h!22663 tokens!457))))

(assert (=> b!1575537 (= lt!548263 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!506 thiss!17113 rules!1846 tokens!457 (h!22663 tokens!457)))))

(declare-fun b!1575538 () Bool)

(assert (=> b!1575538 (= e!1012062 (tokensListTwoByTwoPredicateSeparableList!358 thiss!17113 (Cons!17262 (h!22663 (t!143297 tokens!457)) (t!143297 (t!143297 tokens!457))) rules!1846))))

(assert (= (and d!467805 (not res!702271)) b!1575537))

(assert (= (and b!1575537 res!702272) b!1575538))

(declare-fun m!1854965 () Bool)

(assert (=> b!1575537 m!1854965))

(declare-fun m!1854967 () Bool)

(assert (=> b!1575537 m!1854967))

(assert (=> b!1575537 m!1854513))

(assert (=> b!1575537 m!1854885))

(declare-fun m!1854969 () Bool)

(assert (=> b!1575537 m!1854969))

(assert (=> b!1575537 m!1854481))

(assert (=> b!1575537 m!1854885))

(declare-fun m!1854971 () Bool)

(assert (=> b!1575537 m!1854971))

(declare-fun m!1854973 () Bool)

(assert (=> b!1575538 m!1854973))

(assert (=> b!1575301 d!467805))

(declare-fun b!1575549 () Bool)

(declare-fun e!1012071 () Bool)

(declare-fun inv!16 (TokenValue!3126) Bool)

(assert (=> b!1575549 (= e!1012071 (inv!16 (value!96200 (h!22663 tokens!457))))))

(declare-fun b!1575550 () Bool)

(declare-fun e!1012070 () Bool)

(assert (=> b!1575550 (= e!1012071 e!1012070)))

(declare-fun c!255378 () Bool)

(assert (=> b!1575550 (= c!255378 (is-IntegerValue!9379 (value!96200 (h!22663 tokens!457))))))

(declare-fun b!1575551 () Bool)

(declare-fun inv!17 (TokenValue!3126) Bool)

(assert (=> b!1575551 (= e!1012070 (inv!17 (value!96200 (h!22663 tokens!457))))))

(declare-fun b!1575552 () Bool)

(declare-fun e!1012069 () Bool)

(declare-fun inv!15 (TokenValue!3126) Bool)

(assert (=> b!1575552 (= e!1012069 (inv!15 (value!96200 (h!22663 tokens!457))))))

(declare-fun b!1575553 () Bool)

(declare-fun res!702275 () Bool)

(assert (=> b!1575553 (=> res!702275 e!1012069)))

(assert (=> b!1575553 (= res!702275 (not (is-IntegerValue!9380 (value!96200 (h!22663 tokens!457)))))))

(assert (=> b!1575553 (= e!1012070 e!1012069)))

(declare-fun d!467813 () Bool)

(declare-fun c!255377 () Bool)

(assert (=> d!467813 (= c!255377 (is-IntegerValue!9378 (value!96200 (h!22663 tokens!457))))))

(assert (=> d!467813 (= (inv!21 (value!96200 (h!22663 tokens!457))) e!1012071)))

(assert (= (and d!467813 c!255377) b!1575549))

(assert (= (and d!467813 (not c!255377)) b!1575550))

(assert (= (and b!1575550 c!255378) b!1575551))

(assert (= (and b!1575550 (not c!255378)) b!1575553))

(assert (= (and b!1575553 (not res!702275)) b!1575552))

(declare-fun m!1854975 () Bool)

(assert (=> b!1575549 m!1854975))

(declare-fun m!1854977 () Bool)

(assert (=> b!1575551 m!1854977))

(declare-fun m!1854979 () Bool)

(assert (=> b!1575552 m!1854979))

(assert (=> b!1575290 d!467813))

(declare-fun b!1575566 () Bool)

(declare-fun e!1012074 () Bool)

(declare-fun tp!463847 () Bool)

(assert (=> b!1575566 (= e!1012074 tp!463847)))

(declare-fun b!1575567 () Bool)

(declare-fun tp!463846 () Bool)

(declare-fun tp!463848 () Bool)

(assert (=> b!1575567 (= e!1012074 (and tp!463846 tp!463848))))

(declare-fun b!1575564 () Bool)

(declare-fun tp_is_empty!7163 () Bool)

(assert (=> b!1575564 (= e!1012074 tp_is_empty!7163)))

(assert (=> b!1575305 (= tp!463793 e!1012074)))

(declare-fun b!1575565 () Bool)

(declare-fun tp!463845 () Bool)

(declare-fun tp!463849 () Bool)

(assert (=> b!1575565 (= e!1012074 (and tp!463845 tp!463849))))

(assert (= (and b!1575305 (is-ElementMatch!4364 (regex!3036 (h!22662 rules!1846)))) b!1575564))

(assert (= (and b!1575305 (is-Concat!7491 (regex!3036 (h!22662 rules!1846)))) b!1575565))

(assert (= (and b!1575305 (is-Star!4364 (regex!3036 (h!22662 rules!1846)))) b!1575566))

(assert (= (and b!1575305 (is-Union!4364 (regex!3036 (h!22662 rules!1846)))) b!1575567))

(declare-fun b!1575570 () Bool)

(declare-fun e!1012075 () Bool)

(declare-fun tp!463852 () Bool)

(assert (=> b!1575570 (= e!1012075 tp!463852)))

(declare-fun b!1575571 () Bool)

(declare-fun tp!463851 () Bool)

(declare-fun tp!463853 () Bool)

(assert (=> b!1575571 (= e!1012075 (and tp!463851 tp!463853))))

(declare-fun b!1575568 () Bool)

(assert (=> b!1575568 (= e!1012075 tp_is_empty!7163)))

(assert (=> b!1575296 (= tp!463797 e!1012075)))

(declare-fun b!1575569 () Bool)

(declare-fun tp!463850 () Bool)

(declare-fun tp!463854 () Bool)

(assert (=> b!1575569 (= e!1012075 (and tp!463850 tp!463854))))

(assert (= (and b!1575296 (is-ElementMatch!4364 (regex!3036 (rule!4828 (h!22663 tokens!457))))) b!1575568))

(assert (= (and b!1575296 (is-Concat!7491 (regex!3036 (rule!4828 (h!22663 tokens!457))))) b!1575569))

(assert (= (and b!1575296 (is-Star!4364 (regex!3036 (rule!4828 (h!22663 tokens!457))))) b!1575570))

(assert (= (and b!1575296 (is-Union!4364 (regex!3036 (rule!4828 (h!22663 tokens!457))))) b!1575571))

(declare-fun b!1575576 () Bool)

(declare-fun e!1012078 () Bool)

(declare-fun tp!463857 () Bool)

(assert (=> b!1575576 (= e!1012078 (and tp_is_empty!7163 tp!463857))))

(assert (=> b!1575290 (= tp!463794 e!1012078)))

(assert (= (and b!1575290 (is-Cons!17260 (originalCharacters!3850 (h!22663 tokens!457)))) b!1575576))

(declare-fun b!1575587 () Bool)

(declare-fun b_free!42415 () Bool)

(declare-fun b_next!43119 () Bool)

(assert (=> b!1575587 (= b_free!42415 (not b_next!43119))))

(declare-fun tp!463869 () Bool)

(declare-fun b_and!110281 () Bool)

(assert (=> b!1575587 (= tp!463869 b_and!110281)))

(declare-fun b_free!42417 () Bool)

(declare-fun b_next!43121 () Bool)

(assert (=> b!1575587 (= b_free!42417 (not b_next!43121))))

(declare-fun tb!88671 () Bool)

(declare-fun t!143316 () Bool)

(assert (=> (and b!1575587 (= (toChars!4290 (transformation!3036 (h!22662 (t!143296 rules!1846)))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457))))) t!143316) tb!88671))

(declare-fun result!107264 () Bool)

(assert (= result!107264 result!107252))

(assert (=> d!467753 t!143316))

(assert (=> b!1575420 t!143316))

(declare-fun b_and!110283 () Bool)

(declare-fun tp!463866 () Bool)

(assert (=> b!1575587 (= tp!463866 (and (=> t!143316 result!107264) b_and!110283))))

(declare-fun e!1012090 () Bool)

(assert (=> b!1575587 (= e!1012090 (and tp!463869 tp!463866))))

(declare-fun b!1575586 () Bool)

(declare-fun e!1012088 () Bool)

(declare-fun tp!463867 () Bool)

(assert (=> b!1575586 (= e!1012088 (and tp!463867 (inv!22667 (tag!3302 (h!22662 (t!143296 rules!1846)))) (inv!22671 (transformation!3036 (h!22662 (t!143296 rules!1846)))) e!1012090))))

(declare-fun b!1575585 () Bool)

(declare-fun e!1012089 () Bool)

(declare-fun tp!463868 () Bool)

(assert (=> b!1575585 (= e!1012089 (and e!1012088 tp!463868))))

(assert (=> b!1575297 (= tp!463796 e!1012089)))

(assert (= b!1575586 b!1575587))

(assert (= b!1575585 b!1575586))

(assert (= (and b!1575297 (is-Cons!17261 (t!143296 rules!1846))) b!1575585))

(declare-fun m!1854981 () Bool)

(assert (=> b!1575586 m!1854981))

(declare-fun m!1854983 () Bool)

(assert (=> b!1575586 m!1854983))

(declare-fun b!1575601 () Bool)

(declare-fun b_free!42419 () Bool)

(declare-fun b_next!43123 () Bool)

(assert (=> b!1575601 (= b_free!42419 (not b_next!43123))))

(declare-fun tp!463880 () Bool)

(declare-fun b_and!110285 () Bool)

(assert (=> b!1575601 (= tp!463880 b_and!110285)))

(declare-fun b_free!42421 () Bool)

(declare-fun b_next!43125 () Bool)

(assert (=> b!1575601 (= b_free!42421 (not b_next!43125))))

(declare-fun t!143318 () Bool)

(declare-fun tb!88673 () Bool)

(assert (=> (and b!1575601 (= (toChars!4290 (transformation!3036 (rule!4828 (h!22663 (t!143297 tokens!457))))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457))))) t!143318) tb!88673))

(declare-fun result!107268 () Bool)

(assert (= result!107268 result!107252))

(assert (=> d!467753 t!143318))

(assert (=> b!1575420 t!143318))

(declare-fun tp!463884 () Bool)

(declare-fun b_and!110287 () Bool)

(assert (=> b!1575601 (= tp!463884 (and (=> t!143318 result!107268) b_and!110287))))

(declare-fun tp!463882 () Bool)

(declare-fun e!1012106 () Bool)

(declare-fun b!1575599 () Bool)

(declare-fun e!1012103 () Bool)

(assert (=> b!1575599 (= e!1012106 (and (inv!21 (value!96200 (h!22663 (t!143297 tokens!457)))) e!1012103 tp!463882))))

(declare-fun e!1012104 () Bool)

(assert (=> b!1575601 (= e!1012104 (and tp!463880 tp!463884))))

(declare-fun b!1575598 () Bool)

(declare-fun tp!463881 () Bool)

(declare-fun e!1012105 () Bool)

(assert (=> b!1575598 (= e!1012105 (and (inv!22670 (h!22663 (t!143297 tokens!457))) e!1012106 tp!463881))))

(declare-fun tp!463883 () Bool)

(declare-fun b!1575600 () Bool)

(assert (=> b!1575600 (= e!1012103 (and tp!463883 (inv!22667 (tag!3302 (rule!4828 (h!22663 (t!143297 tokens!457))))) (inv!22671 (transformation!3036 (rule!4828 (h!22663 (t!143297 tokens!457))))) e!1012104))))

(assert (=> b!1575291 (= tp!463799 e!1012105)))

(assert (= b!1575600 b!1575601))

(assert (= b!1575599 b!1575600))

(assert (= b!1575598 b!1575599))

(assert (= (and b!1575291 (is-Cons!17262 (t!143297 tokens!457))) b!1575598))

(declare-fun m!1854985 () Bool)

(assert (=> b!1575599 m!1854985))

(declare-fun m!1854987 () Bool)

(assert (=> b!1575598 m!1854987))

(declare-fun m!1854989 () Bool)

(assert (=> b!1575600 m!1854989))

(declare-fun m!1854991 () Bool)

(assert (=> b!1575600 m!1854991))

(declare-fun b_lambda!49583 () Bool)

(assert (= b_lambda!49579 (or (and b!1575302 b_free!42401 (= (toChars!4290 (transformation!3036 (h!22662 rules!1846))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))))) (and b!1575303 b_free!42405) (and b!1575587 b_free!42417 (= (toChars!4290 (transformation!3036 (h!22662 (t!143296 rules!1846)))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))))) (and b!1575601 b_free!42421 (= (toChars!4290 (transformation!3036 (rule!4828 (h!22663 (t!143297 tokens!457))))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))))) b_lambda!49583)))

(declare-fun b_lambda!49585 () Bool)

(assert (= b_lambda!49581 (or (and b!1575302 b_free!42401 (= (toChars!4290 (transformation!3036 (h!22662 rules!1846))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))))) (and b!1575303 b_free!42405) (and b!1575587 b_free!42417 (= (toChars!4290 (transformation!3036 (h!22662 (t!143296 rules!1846)))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))))) (and b!1575601 b_free!42421 (= (toChars!4290 (transformation!3036 (rule!4828 (h!22663 (t!143297 tokens!457))))) (toChars!4290 (transformation!3036 (rule!4828 (h!22663 tokens!457)))))) b_lambda!49585)))

(push 1)

(assert (not b!1575503))

(assert (not d!467733))

(assert (not b!1575515))

(assert (not d!467741))

(assert (not d!467769))

(assert (not b!1575474))

(assert (not b!1575475))

(assert (not b_next!43121))

(assert (not b!1575491))

(assert (not d!467737))

(assert (not b!1575393))

(assert (not b!1575394))

(assert (not b_next!43119))

(assert (not d!467745))

(assert (not b!1575359))

(assert (not b!1575403))

(assert (not b_next!43107))

(assert (not b!1575585))

(assert b_and!110283)

(assert (not d!467739))

(assert (not b!1575396))

(assert (not d!467759))

(assert (not b!1575410))

(assert (not b!1575538))

(assert (not b!1575576))

(assert (not b!1575415))

(assert (not d!467731))

(assert b_and!110257)

(assert (not b!1575412))

(assert b_and!110277)

(assert (not b!1575411))

(assert (not b!1575569))

(assert (not d!467735))

(assert (not b_next!43125))

(assert (not d!467777))

(assert (not b!1575516))

(assert (not d!467799))

(assert (not b_lambda!49583))

(assert (not b_next!43109))

(assert (not b!1575537))

(assert b_and!110253)

(assert (not b!1575586))

(assert (not b!1575551))

(assert (not b!1575421))

(assert (not b!1575423))

(assert (not d!467757))

(assert (not d!467771))

(assert (not b_next!43123))

(assert (not d!467761))

(assert (not b!1575514))

(assert (not d!467795))

(assert (not d!467729))

(assert (not b!1575484))

(assert tp_is_empty!7163)

(assert (not b!1575599))

(assert (not b!1575397))

(assert (not b!1575600))

(assert (not b_lambda!49585))

(assert (not b!1575369))

(assert (not b!1575552))

(assert (not b!1575566))

(assert (not b_next!43103))

(assert (not b!1575420))

(assert (not b!1575571))

(assert b_and!110281)

(assert (not d!467797))

(assert b_and!110287)

(assert b_and!110279)

(assert (not b!1575424))

(assert (not b!1575567))

(assert (not d!467743))

(assert (not d!467753))

(assert (not d!467763))

(assert (not tb!88667))

(assert (not b!1575570))

(assert (not b!1575598))

(assert (not b!1575422))

(assert b_and!110285)

(assert (not d!467803))

(assert (not d!467727))

(assert (not d!467765))

(assert (not d!467767))

(assert (not b!1575370))

(assert (not b!1575565))

(assert (not b!1575402))

(assert (not b!1575504))

(assert (not b!1575549))

(assert (not b_next!43105))

(assert (not d!467775))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!43121))

(assert (not b_next!43119))

(assert (not b_next!43125))

(assert (not b_next!43109))

(assert b_and!110253)

(assert (not b_next!43123))

(assert b_and!110285)

(assert (not b_next!43105))

(assert (not b_next!43107))

(assert b_and!110283)

(assert b_and!110257)

(assert b_and!110277)

(assert (not b_next!43103))

(assert b_and!110281)

(assert b_and!110287)

(assert b_and!110279)

(check-sat)

(pop 1)

