; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!357964 () Bool)

(assert start!357964)

(declare-fun b!3826290 () Bool)

(declare-fun b_free!101581 () Bool)

(declare-fun b_next!102285 () Bool)

(assert (=> b!3826290 (= b_free!101581 (not b_next!102285))))

(declare-fun tp!1158298 () Bool)

(declare-fun b_and!284471 () Bool)

(assert (=> b!3826290 (= tp!1158298 b_and!284471)))

(declare-fun b_free!101583 () Bool)

(declare-fun b_next!102287 () Bool)

(assert (=> b!3826290 (= b_free!101583 (not b_next!102287))))

(declare-fun tp!1158295 () Bool)

(declare-fun b_and!284473 () Bool)

(assert (=> b!3826290 (= tp!1158295 b_and!284473)))

(declare-fun b!3826274 () Bool)

(declare-fun e!2363108 () Bool)

(declare-datatypes ((C!22440 0))(
  ( (C!22441 (val!13296 Int)) )
))
(declare-datatypes ((List!40536 0))(
  ( (Nil!40412) (Cons!40412 (h!45832 C!22440) (t!308855 List!40536)) )
))
(declare-datatypes ((IArray!24841 0))(
  ( (IArray!24842 (innerList!12478 List!40536)) )
))
(declare-datatypes ((Conc!12418 0))(
  ( (Node!12418 (left!31270 Conc!12418) (right!31600 Conc!12418) (csize!25066 Int) (cheight!12629 Int)) (Leaf!19227 (xs!15712 IArray!24841) (csize!25067 Int)) (Empty!12418) )
))
(declare-datatypes ((BalanceConc!24430 0))(
  ( (BalanceConc!24431 (c!667033 Conc!12418)) )
))
(declare-fun treated!13 () BalanceConc!24430)

(declare-fun tp!1158302 () Bool)

(declare-fun inv!54459 (Conc!12418) Bool)

(assert (=> b!3826274 (= e!2363108 (and (inv!54459 (c!667033 treated!13)) tp!1158302))))

(declare-fun b!3826275 () Bool)

(declare-fun e!2363119 () Bool)

(declare-fun input!678 () BalanceConc!24430)

(declare-fun tp!1158296 () Bool)

(assert (=> b!3826275 (= e!2363119 (and (inv!54459 (c!667033 input!678)) tp!1158296))))

(declare-fun b!3826276 () Bool)

(declare-fun res!1548918 () Bool)

(declare-fun e!2363112 () Bool)

(assert (=> b!3826276 (=> (not res!1548918) (not e!2363112))))

(declare-datatypes ((List!40537 0))(
  ( (Nil!40413) (Cons!40413 (h!45833 (_ BitVec 16)) (t!308856 List!40537)) )
))
(declare-datatypes ((TokenValue!6452 0))(
  ( (FloatLiteralValue!12904 (text!45609 List!40537)) (TokenValueExt!6451 (__x!25121 Int)) (Broken!32260 (value!197908 List!40537)) (Object!6575) (End!6452) (Def!6452) (Underscore!6452) (Match!6452) (Else!6452) (Error!6452) (Case!6452) (If!6452) (Extends!6452) (Abstract!6452) (Class!6452) (Val!6452) (DelimiterValue!12904 (del!6512 List!40537)) (KeywordValue!6458 (value!197909 List!40537)) (CommentValue!12904 (value!197910 List!40537)) (WhitespaceValue!12904 (value!197911 List!40537)) (IndentationValue!6452 (value!197912 List!40537)) (String!45941) (Int32!6452) (Broken!32261 (value!197913 List!40537)) (Boolean!6453) (Unit!58181) (OperatorValue!6455 (op!6512 List!40537)) (IdentifierValue!12904 (value!197914 List!40537)) (IdentifierValue!12905 (value!197915 List!40537)) (WhitespaceValue!12905 (value!197916 List!40537)) (True!12904) (False!12904) (Broken!32262 (value!197917 List!40537)) (Broken!32263 (value!197918 List!40537)) (True!12905) (RightBrace!6452) (RightBracket!6452) (Colon!6452) (Null!6452) (Comma!6452) (LeftBracket!6452) (False!12905) (LeftBrace!6452) (ImaginaryLiteralValue!6452 (text!45610 List!40537)) (StringLiteralValue!19356 (value!197919 List!40537)) (EOFValue!6452 (value!197920 List!40537)) (IdentValue!6452 (value!197921 List!40537)) (DelimiterValue!12905 (value!197922 List!40537)) (DedentValue!6452 (value!197923 List!40537)) (NewLineValue!6452 (value!197924 List!40537)) (IntegerValue!19356 (value!197925 (_ BitVec 32)) (text!45611 List!40537)) (IntegerValue!19357 (value!197926 Int) (text!45612 List!40537)) (Times!6452) (Or!6452) (Equal!6452) (Minus!6452) (Broken!32264 (value!197927 List!40537)) (And!6452) (Div!6452) (LessEqual!6452) (Mod!6452) (Concat!17579) (Not!6452) (Plus!6452) (SpaceValue!6452 (value!197928 List!40537)) (IntegerValue!19358 (value!197929 Int) (text!45613 List!40537)) (StringLiteralValue!19357 (text!45614 List!40537)) (FloatLiteralValue!12905 (text!45615 List!40537)) (BytesLiteralValue!6452 (value!197930 List!40537)) (CommentValue!12905 (value!197931 List!40537)) (StringLiteralValue!19358 (value!197932 List!40537)) (ErrorTokenValue!6452 (msg!6513 List!40537)) )
))
(declare-datatypes ((Regex!11127 0))(
  ( (ElementMatch!11127 (c!667034 C!22440)) (Concat!17580 (regOne!22766 Regex!11127) (regTwo!22766 Regex!11127)) (EmptyExpr!11127) (Star!11127 (reg!11456 Regex!11127)) (EmptyLang!11127) (Union!11127 (regOne!22767 Regex!11127) (regTwo!22767 Regex!11127)) )
))
(declare-datatypes ((String!45942 0))(
  ( (String!45943 (value!197933 String)) )
))
(declare-datatypes ((TokenValueInjection!12332 0))(
  ( (TokenValueInjection!12333 (toValue!8622 Int) (toChars!8481 Int)) )
))
(declare-datatypes ((Rule!12244 0))(
  ( (Rule!12245 (regex!6222 Regex!11127) (tag!7082 String!45942) (isSeparator!6222 Bool) (transformation!6222 TokenValueInjection!12332)) )
))
(declare-datatypes ((Token!11582 0))(
  ( (Token!11583 (value!197934 TokenValue!6452) (rule!9046 Rule!12244) (size!30456 Int) (originalCharacters!6822 List!40536)) )
))
(declare-datatypes ((List!40538 0))(
  ( (Nil!40414) (Cons!40414 (h!45834 Token!11582) (t!308857 List!40538)) )
))
(declare-datatypes ((IArray!24843 0))(
  ( (IArray!24844 (innerList!12479 List!40538)) )
))
(declare-datatypes ((Conc!12419 0))(
  ( (Node!12419 (left!31271 Conc!12419) (right!31601 Conc!12419) (csize!25068 Int) (cheight!12630 Int)) (Leaf!19228 (xs!15713 IArray!24843) (csize!25069 Int)) (Empty!12419) )
))
(declare-datatypes ((BalanceConc!24432 0))(
  ( (BalanceConc!24433 (c!667035 Conc!12419)) )
))
(declare-datatypes ((tuple2!39608 0))(
  ( (tuple2!39609 (_1!22938 BalanceConc!24432) (_2!22938 BalanceConc!24430)) )
))
(declare-fun lt!1328293 () tuple2!39608)

(declare-fun isEmpty!23841 (List!40536) Bool)

(declare-fun list!15047 (BalanceConc!24430) List!40536)

(assert (=> b!3826276 (= res!1548918 (isEmpty!23841 (list!15047 (_2!22938 lt!1328293))))))

(declare-fun b!3826277 () Bool)

(declare-fun e!2363117 () Bool)

(assert (=> b!3826277 (= e!2363112 e!2363117)))

(declare-fun res!1548928 () Bool)

(assert (=> b!3826277 (=> (not res!1548928) (not e!2363117))))

(declare-fun lt!1328290 () List!40538)

(declare-fun lt!1328313 () BalanceConc!24432)

(declare-fun list!15048 (BalanceConc!24432) List!40538)

(assert (=> b!3826277 (= res!1548928 (= lt!1328290 (list!15048 lt!1328313)))))

(declare-fun lt!1328297 () tuple2!39608)

(assert (=> b!3826277 (= lt!1328290 (list!15048 (_1!22938 lt!1328297)))))

(declare-fun acc!335 () BalanceConc!24432)

(declare-fun lt!1328314 () tuple2!39608)

(declare-fun ++!10177 (BalanceConc!24432 BalanceConc!24432) BalanceConc!24432)

(assert (=> b!3826277 (= lt!1328313 (++!10177 acc!335 (_1!22938 lt!1328314)))))

(declare-datatypes ((List!40539 0))(
  ( (Nil!40415) (Cons!40415 (h!45835 Rule!12244) (t!308858 List!40539)) )
))
(declare-fun rules!1265 () List!40539)

(declare-datatypes ((LexerInterface!5811 0))(
  ( (LexerInterfaceExt!5808 (__x!25122 Int)) (Lexer!5809) )
))
(declare-fun thiss!11876 () LexerInterface!5811)

(declare-fun lexRec!835 (LexerInterface!5811 List!40539 BalanceConc!24430) tuple2!39608)

(assert (=> b!3826277 (= lt!1328314 (lexRec!835 thiss!11876 rules!1265 input!678))))

(declare-fun totalInput!335 () BalanceConc!24430)

(assert (=> b!3826277 (= lt!1328297 (lexRec!835 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3826278 () Bool)

(declare-fun e!2363107 () Bool)

(declare-fun e!2363120 () Bool)

(assert (=> b!3826278 (= e!2363107 e!2363120)))

(declare-fun res!1548920 () Bool)

(assert (=> b!3826278 (=> (not res!1548920) (not e!2363120))))

(declare-fun lt!1328283 () tuple2!39608)

(assert (=> b!3826278 (= res!1548920 (= (list!15048 (_1!22938 lt!1328283)) lt!1328290))))

(declare-fun lt!1328295 () BalanceConc!24432)

(declare-datatypes ((tuple2!39610 0))(
  ( (tuple2!39611 (_1!22939 Token!11582) (_2!22939 BalanceConc!24430)) )
))
(declare-datatypes ((Option!8644 0))(
  ( (None!8643) (Some!8643 (v!38915 tuple2!39610)) )
))
(declare-fun lt!1328285 () Option!8644)

(declare-fun lt!1328305 () BalanceConc!24430)

(declare-fun lexTailRecV2!1155 (LexerInterface!5811 List!40539 BalanceConc!24430 BalanceConc!24430 BalanceConc!24430 BalanceConc!24432) tuple2!39608)

(assert (=> b!3826278 (= lt!1328283 (lexTailRecV2!1155 thiss!11876 rules!1265 totalInput!335 lt!1328305 (_2!22939 (v!38915 lt!1328285)) lt!1328295))))

(declare-fun e!2363121 () Bool)

(declare-fun lt!1328311 () tuple2!39608)

(declare-fun lt!1328299 () Option!8644)

(declare-fun b!3826279 () Bool)

(declare-fun lt!1328291 () tuple2!39608)

(declare-fun prepend!1376 (BalanceConc!24432 Token!11582) BalanceConc!24432)

(assert (=> b!3826279 (= e!2363121 (= lt!1328311 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328291) (_1!22939 (v!38915 lt!1328299))) (_2!22938 lt!1328291))))))

(assert (=> b!3826279 (= lt!1328291 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328299))))))

(declare-fun b!3826280 () Bool)

(declare-fun e!2363122 () Bool)

(declare-fun e!2363113 () Bool)

(assert (=> b!3826280 (= e!2363122 (not e!2363113))))

(declare-fun res!1548926 () Bool)

(assert (=> b!3826280 (=> res!1548926 e!2363113)))

(declare-fun lt!1328306 () List!40536)

(declare-fun lt!1328294 () List!40536)

(declare-fun isSuffix!994 (List!40536 List!40536) Bool)

(assert (=> b!3826280 (= res!1548926 (not (isSuffix!994 lt!1328306 lt!1328294)))))

(declare-fun lt!1328292 () List!40536)

(assert (=> b!3826280 (isSuffix!994 lt!1328306 lt!1328292)))

(declare-datatypes ((Unit!58182 0))(
  ( (Unit!58183) )
))
(declare-fun lt!1328303 () Unit!58182)

(declare-fun lt!1328289 () List!40536)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!679 (List!40536 List!40536) Unit!58182)

(assert (=> b!3826280 (= lt!1328303 (lemmaConcatTwoListThenFSndIsSuffix!679 lt!1328289 lt!1328306))))

(declare-fun b!3826281 () Bool)

(declare-fun res!1548924 () Bool)

(declare-fun e!2363118 () Bool)

(assert (=> b!3826281 (=> (not res!1548924) (not e!2363118))))

(declare-fun rulesInvariant!5154 (LexerInterface!5811 List!40539) Bool)

(assert (=> b!3826281 (= res!1548924 (rulesInvariant!5154 thiss!11876 rules!1265))))

(declare-fun b!3826282 () Bool)

(declare-fun e!2363111 () tuple2!39608)

(assert (=> b!3826282 (= e!2363111 (tuple2!39609 (BalanceConc!24433 Empty!12419) input!678))))

(declare-fun b!3826283 () Bool)

(declare-fun lt!1328298 () List!40536)

(assert (=> b!3826283 (= e!2363120 (= (list!15047 (_2!22938 lt!1328283)) lt!1328298))))

(declare-fun b!3826284 () Bool)

(assert (=> b!3826284 (= e!2363121 (= lt!1328311 (tuple2!39609 (BalanceConc!24433 Empty!12419) lt!1328305)))))

(declare-fun b!3826285 () Bool)

(declare-fun e!2363114 () Bool)

(assert (=> b!3826285 (= e!2363118 e!2363114)))

(declare-fun res!1548921 () Bool)

(assert (=> b!3826285 (=> (not res!1548921) (not e!2363114))))

(assert (=> b!3826285 (= res!1548921 (= lt!1328294 lt!1328292))))

(declare-fun ++!10178 (List!40536 List!40536) List!40536)

(assert (=> b!3826285 (= lt!1328292 (++!10178 lt!1328289 lt!1328306))))

(assert (=> b!3826285 (= lt!1328294 (list!15047 totalInput!335))))

(assert (=> b!3826285 (= lt!1328306 (list!15047 input!678))))

(assert (=> b!3826285 (= lt!1328289 (list!15047 treated!13))))

(declare-fun b!3826286 () Bool)

(declare-fun e!2363109 () Bool)

(declare-fun e!2363106 () Bool)

(declare-fun tp!1158299 () Bool)

(assert (=> b!3826286 (= e!2363109 (and e!2363106 tp!1158299))))

(declare-fun b!3826287 () Bool)

(assert (=> b!3826287 (= e!2363114 e!2363112)))

(declare-fun res!1548925 () Bool)

(assert (=> b!3826287 (=> (not res!1548925) (not e!2363112))))

(declare-fun lt!1328300 () List!40538)

(declare-fun lt!1328284 () List!40538)

(assert (=> b!3826287 (= res!1548925 (= lt!1328300 lt!1328284))))

(assert (=> b!3826287 (= lt!1328284 (list!15048 acc!335))))

(assert (=> b!3826287 (= lt!1328300 (list!15048 (_1!22938 lt!1328293)))))

(assert (=> b!3826287 (= lt!1328293 (lexRec!835 thiss!11876 rules!1265 treated!13))))

(declare-fun res!1548922 () Bool)

(assert (=> start!357964 (=> (not res!1548922) (not e!2363118))))

(get-info :version)

(assert (=> start!357964 (= res!1548922 ((_ is Lexer!5809) thiss!11876))))

(assert (=> start!357964 e!2363118))

(declare-fun inv!54460 (BalanceConc!24430) Bool)

(assert (=> start!357964 (and (inv!54460 input!678) e!2363119)))

(declare-fun e!2363115 () Bool)

(declare-fun inv!54461 (BalanceConc!24432) Bool)

(assert (=> start!357964 (and (inv!54461 acc!335) e!2363115)))

(assert (=> start!357964 (and (inv!54460 treated!13) e!2363108)))

(assert (=> start!357964 e!2363109))

(assert (=> start!357964 true))

(declare-fun e!2363116 () Bool)

(assert (=> start!357964 (and (inv!54460 totalInput!335) e!2363116)))

(declare-fun b!3826288 () Bool)

(declare-fun res!1548923 () Bool)

(assert (=> b!3826288 (=> (not res!1548923) (not e!2363118))))

(declare-fun isEmpty!23842 (List!40539) Bool)

(assert (=> b!3826288 (= res!1548923 (not (isEmpty!23842 rules!1265)))))

(declare-fun b!3826289 () Bool)

(declare-fun e!2363110 () Bool)

(assert (=> b!3826289 (= e!2363113 e!2363110)))

(declare-fun res!1548927 () Bool)

(assert (=> b!3826289 (=> res!1548927 e!2363110)))

(assert (=> b!3826289 (= res!1548927 (not ((_ is Some!8643) lt!1328285)))))

(declare-fun maxPrefixZipperSequenceV2!611 (LexerInterface!5811 List!40539 BalanceConc!24430 BalanceConc!24430) Option!8644)

(assert (=> b!3826289 (= lt!1328285 (maxPrefixZipperSequenceV2!611 thiss!11876 rules!1265 input!678 totalInput!335))))

(declare-fun e!2363105 () Bool)

(assert (=> b!3826290 (= e!2363105 (and tp!1158298 tp!1158295))))

(declare-fun b!3826291 () Bool)

(assert (=> b!3826291 (= e!2363110 e!2363107)))

(declare-fun res!1548919 () Bool)

(assert (=> b!3826291 (=> res!1548919 e!2363107)))

(declare-fun lt!1328304 () List!40536)

(assert (=> b!3826291 (= res!1548919 (not (isSuffix!994 lt!1328304 lt!1328294)))))

(declare-fun lt!1328302 () List!40536)

(assert (=> b!3826291 (isSuffix!994 lt!1328304 (++!10178 lt!1328302 lt!1328304))))

(declare-fun lt!1328282 () Unit!58182)

(assert (=> b!3826291 (= lt!1328282 (lemmaConcatTwoListThenFSndIsSuffix!679 lt!1328302 lt!1328304))))

(assert (=> b!3826291 (= lt!1328302 (list!15047 lt!1328305))))

(assert (=> b!3826291 e!2363121))

(declare-fun c!667032 () Bool)

(assert (=> b!3826291 (= c!667032 ((_ is Some!8643) lt!1328299))))

(assert (=> b!3826291 (= lt!1328311 (lexRec!835 thiss!11876 rules!1265 lt!1328305))))

(declare-fun maxPrefixZipperSequence!1217 (LexerInterface!5811 List!40539 BalanceConc!24430) Option!8644)

(assert (=> b!3826291 (= lt!1328299 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 lt!1328305))))

(declare-fun lt!1328309 () BalanceConc!24430)

(declare-fun ++!10179 (BalanceConc!24430 BalanceConc!24430) BalanceConc!24430)

(assert (=> b!3826291 (= lt!1328305 (++!10179 treated!13 lt!1328309))))

(declare-fun lt!1328315 () List!40536)

(declare-fun lt!1328288 () List!40538)

(declare-datatypes ((tuple2!39612 0))(
  ( (tuple2!39613 (_1!22940 List!40538) (_2!22940 List!40536)) )
))
(declare-fun lexList!1581 (LexerInterface!5811 List!40539 List!40536) tuple2!39612)

(assert (=> b!3826291 (= (lexList!1581 thiss!11876 rules!1265 lt!1328315) (tuple2!39613 lt!1328288 Nil!40412))))

(declare-fun lt!1328296 () tuple2!39608)

(declare-fun lt!1328312 () Unit!58182)

(declare-fun lt!1328287 () List!40538)

(declare-fun lemmaLexThenLexPrefix!573 (LexerInterface!5811 List!40539 List!40536 List!40536 List!40538 List!40538 List!40536) Unit!58182)

(assert (=> b!3826291 (= lt!1328312 (lemmaLexThenLexPrefix!573 thiss!11876 rules!1265 lt!1328315 lt!1328304 lt!1328288 lt!1328287 (list!15047 (_2!22938 lt!1328296))))))

(assert (=> b!3826291 (= lt!1328288 (list!15048 lt!1328295))))

(declare-fun append!1088 (BalanceConc!24432 Token!11582) BalanceConc!24432)

(assert (=> b!3826291 (= lt!1328295 (append!1088 acc!335 (_1!22939 (v!38915 lt!1328285))))))

(declare-fun lt!1328307 () List!40538)

(declare-fun ++!10180 (List!40538 List!40538) List!40538)

(assert (=> b!3826291 (= (++!10180 (++!10180 lt!1328284 lt!1328307) lt!1328287) (++!10180 lt!1328284 (++!10180 lt!1328307 lt!1328287)))))

(declare-fun lt!1328310 () Unit!58182)

(declare-fun lemmaConcatAssociativity!2203 (List!40538 List!40538 List!40538) Unit!58182)

(assert (=> b!3826291 (= lt!1328310 (lemmaConcatAssociativity!2203 lt!1328284 lt!1328307 lt!1328287))))

(assert (=> b!3826291 (= lt!1328287 (list!15048 (_1!22938 lt!1328296)))))

(assert (=> b!3826291 (= lt!1328307 (Cons!40414 (_1!22939 (v!38915 lt!1328285)) Nil!40414))))

(assert (=> b!3826291 (= lt!1328314 e!2363111)))

(declare-fun c!667031 () Bool)

(declare-fun lt!1328301 () Option!8644)

(assert (=> b!3826291 (= c!667031 ((_ is Some!8643) lt!1328301))))

(assert (=> b!3826291 (= lt!1328301 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 input!678))))

(declare-fun lt!1328286 () List!40536)

(assert (=> b!3826291 (= (++!10178 lt!1328315 lt!1328304) (++!10178 lt!1328289 (++!10178 lt!1328286 lt!1328304)))))

(assert (=> b!3826291 (= lt!1328315 (++!10178 lt!1328289 lt!1328286))))

(declare-fun lt!1328281 () Unit!58182)

(declare-fun lemmaConcatAssociativity!2204 (List!40536 List!40536 List!40536) Unit!58182)

(assert (=> b!3826291 (= lt!1328281 (lemmaConcatAssociativity!2204 lt!1328289 lt!1328286 lt!1328304))))

(assert (=> b!3826291 (= lt!1328304 (list!15047 (_2!22939 (v!38915 lt!1328285))))))

(assert (=> b!3826291 (= lt!1328286 (list!15047 lt!1328309))))

(declare-fun charsOf!4060 (Token!11582) BalanceConc!24430)

(assert (=> b!3826291 (= lt!1328309 (charsOf!4060 (_1!22939 (v!38915 lt!1328285))))))

(assert (=> b!3826291 (= lt!1328296 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328285))))))

(declare-fun b!3826292 () Bool)

(assert (=> b!3826292 (= e!2363117 e!2363122)))

(declare-fun res!1548929 () Bool)

(assert (=> b!3826292 (=> (not res!1548929) (not e!2363122))))

(assert (=> b!3826292 (= res!1548929 (= lt!1328298 (list!15047 (_2!22938 lt!1328314))))))

(assert (=> b!3826292 (= lt!1328298 (list!15047 (_2!22938 lt!1328297)))))

(declare-fun b!3826293 () Bool)

(declare-fun tp!1158297 () Bool)

(assert (=> b!3826293 (= e!2363116 (and (inv!54459 (c!667033 totalInput!335)) tp!1158297))))

(declare-fun b!3826294 () Bool)

(declare-fun tp!1158300 () Bool)

(declare-fun inv!54462 (Conc!12419) Bool)

(assert (=> b!3826294 (= e!2363115 (and (inv!54462 (c!667035 acc!335)) tp!1158300))))

(declare-fun b!3826295 () Bool)

(declare-fun lt!1328308 () tuple2!39608)

(assert (=> b!3826295 (= e!2363111 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328308) (_1!22939 (v!38915 lt!1328301))) (_2!22938 lt!1328308)))))

(assert (=> b!3826295 (= lt!1328308 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328301))))))

(declare-fun b!3826296 () Bool)

(declare-fun tp!1158301 () Bool)

(declare-fun inv!54453 (String!45942) Bool)

(declare-fun inv!54463 (TokenValueInjection!12332) Bool)

(assert (=> b!3826296 (= e!2363106 (and tp!1158301 (inv!54453 (tag!7082 (h!45835 rules!1265))) (inv!54463 (transformation!6222 (h!45835 rules!1265))) e!2363105))))

(assert (= (and start!357964 res!1548922) b!3826288))

(assert (= (and b!3826288 res!1548923) b!3826281))

(assert (= (and b!3826281 res!1548924) b!3826285))

(assert (= (and b!3826285 res!1548921) b!3826287))

(assert (= (and b!3826287 res!1548925) b!3826276))

(assert (= (and b!3826276 res!1548918) b!3826277))

(assert (= (and b!3826277 res!1548928) b!3826292))

(assert (= (and b!3826292 res!1548929) b!3826280))

(assert (= (and b!3826280 (not res!1548926)) b!3826289))

(assert (= (and b!3826289 (not res!1548927)) b!3826291))

(assert (= (and b!3826291 c!667031) b!3826295))

(assert (= (and b!3826291 (not c!667031)) b!3826282))

(assert (= (and b!3826291 c!667032) b!3826279))

(assert (= (and b!3826291 (not c!667032)) b!3826284))

(assert (= (and b!3826291 (not res!1548919)) b!3826278))

(assert (= (and b!3826278 res!1548920) b!3826283))

(assert (= start!357964 b!3826275))

(assert (= start!357964 b!3826294))

(assert (= start!357964 b!3826274))

(assert (= b!3826296 b!3826290))

(assert (= b!3826286 b!3826296))

(assert (= (and start!357964 ((_ is Cons!40415) rules!1265)) b!3826286))

(assert (= start!357964 b!3826293))

(declare-fun m!4377789 () Bool)

(assert (=> b!3826289 m!4377789))

(declare-fun m!4377791 () Bool)

(assert (=> b!3826278 m!4377791))

(declare-fun m!4377793 () Bool)

(assert (=> b!3826278 m!4377793))

(declare-fun m!4377795 () Bool)

(assert (=> b!3826280 m!4377795))

(declare-fun m!4377797 () Bool)

(assert (=> b!3826280 m!4377797))

(declare-fun m!4377799 () Bool)

(assert (=> b!3826280 m!4377799))

(declare-fun m!4377801 () Bool)

(assert (=> b!3826292 m!4377801))

(declare-fun m!4377803 () Bool)

(assert (=> b!3826292 m!4377803))

(declare-fun m!4377805 () Bool)

(assert (=> b!3826283 m!4377805))

(declare-fun m!4377807 () Bool)

(assert (=> b!3826293 m!4377807))

(declare-fun m!4377809 () Bool)

(assert (=> b!3826274 m!4377809))

(declare-fun m!4377811 () Bool)

(assert (=> b!3826275 m!4377811))

(declare-fun m!4377813 () Bool)

(assert (=> b!3826277 m!4377813))

(declare-fun m!4377815 () Bool)

(assert (=> b!3826277 m!4377815))

(declare-fun m!4377817 () Bool)

(assert (=> b!3826277 m!4377817))

(declare-fun m!4377819 () Bool)

(assert (=> b!3826277 m!4377819))

(declare-fun m!4377821 () Bool)

(assert (=> b!3826277 m!4377821))

(declare-fun m!4377823 () Bool)

(assert (=> b!3826291 m!4377823))

(declare-fun m!4377825 () Bool)

(assert (=> b!3826291 m!4377825))

(declare-fun m!4377827 () Bool)

(assert (=> b!3826291 m!4377827))

(declare-fun m!4377829 () Bool)

(assert (=> b!3826291 m!4377829))

(declare-fun m!4377831 () Bool)

(assert (=> b!3826291 m!4377831))

(declare-fun m!4377833 () Bool)

(assert (=> b!3826291 m!4377833))

(declare-fun m!4377835 () Bool)

(assert (=> b!3826291 m!4377835))

(assert (=> b!3826291 m!4377835))

(declare-fun m!4377837 () Bool)

(assert (=> b!3826291 m!4377837))

(declare-fun m!4377839 () Bool)

(assert (=> b!3826291 m!4377839))

(declare-fun m!4377841 () Bool)

(assert (=> b!3826291 m!4377841))

(declare-fun m!4377843 () Bool)

(assert (=> b!3826291 m!4377843))

(declare-fun m!4377845 () Bool)

(assert (=> b!3826291 m!4377845))

(assert (=> b!3826291 m!4377843))

(assert (=> b!3826291 m!4377841))

(declare-fun m!4377847 () Bool)

(assert (=> b!3826291 m!4377847))

(declare-fun m!4377849 () Bool)

(assert (=> b!3826291 m!4377849))

(declare-fun m!4377851 () Bool)

(assert (=> b!3826291 m!4377851))

(declare-fun m!4377853 () Bool)

(assert (=> b!3826291 m!4377853))

(declare-fun m!4377855 () Bool)

(assert (=> b!3826291 m!4377855))

(declare-fun m!4377857 () Bool)

(assert (=> b!3826291 m!4377857))

(declare-fun m!4377859 () Bool)

(assert (=> b!3826291 m!4377859))

(assert (=> b!3826291 m!4377853))

(declare-fun m!4377861 () Bool)

(assert (=> b!3826291 m!4377861))

(declare-fun m!4377863 () Bool)

(assert (=> b!3826291 m!4377863))

(assert (=> b!3826291 m!4377825))

(declare-fun m!4377865 () Bool)

(assert (=> b!3826291 m!4377865))

(declare-fun m!4377867 () Bool)

(assert (=> b!3826291 m!4377867))

(declare-fun m!4377869 () Bool)

(assert (=> b!3826291 m!4377869))

(declare-fun m!4377871 () Bool)

(assert (=> b!3826291 m!4377871))

(declare-fun m!4377873 () Bool)

(assert (=> b!3826291 m!4377873))

(declare-fun m!4377875 () Bool)

(assert (=> b!3826291 m!4377875))

(declare-fun m!4377877 () Bool)

(assert (=> b!3826291 m!4377877))

(declare-fun m!4377879 () Bool)

(assert (=> b!3826291 m!4377879))

(declare-fun m!4377881 () Bool)

(assert (=> b!3826285 m!4377881))

(declare-fun m!4377883 () Bool)

(assert (=> b!3826285 m!4377883))

(declare-fun m!4377885 () Bool)

(assert (=> b!3826285 m!4377885))

(declare-fun m!4377887 () Bool)

(assert (=> b!3826285 m!4377887))

(declare-fun m!4377889 () Bool)

(assert (=> b!3826287 m!4377889))

(declare-fun m!4377891 () Bool)

(assert (=> b!3826287 m!4377891))

(declare-fun m!4377893 () Bool)

(assert (=> b!3826287 m!4377893))

(declare-fun m!4377895 () Bool)

(assert (=> b!3826288 m!4377895))

(declare-fun m!4377897 () Bool)

(assert (=> b!3826294 m!4377897))

(declare-fun m!4377899 () Bool)

(assert (=> start!357964 m!4377899))

(declare-fun m!4377901 () Bool)

(assert (=> start!357964 m!4377901))

(declare-fun m!4377903 () Bool)

(assert (=> start!357964 m!4377903))

(declare-fun m!4377905 () Bool)

(assert (=> start!357964 m!4377905))

(declare-fun m!4377907 () Bool)

(assert (=> b!3826276 m!4377907))

(assert (=> b!3826276 m!4377907))

(declare-fun m!4377909 () Bool)

(assert (=> b!3826276 m!4377909))

(declare-fun m!4377911 () Bool)

(assert (=> b!3826296 m!4377911))

(declare-fun m!4377913 () Bool)

(assert (=> b!3826296 m!4377913))

(declare-fun m!4377915 () Bool)

(assert (=> b!3826279 m!4377915))

(declare-fun m!4377917 () Bool)

(assert (=> b!3826279 m!4377917))

(declare-fun m!4377919 () Bool)

(assert (=> b!3826281 m!4377919))

(declare-fun m!4377921 () Bool)

(assert (=> b!3826295 m!4377921))

(declare-fun m!4377923 () Bool)

(assert (=> b!3826295 m!4377923))

(check-sat (not b_next!102287) (not b!3826287) (not b!3826296) (not b!3826274) (not b!3826275) (not b!3826280) (not b!3826289) (not start!357964) (not b!3826277) (not b!3826292) (not b!3826288) b_and!284471 (not b!3826276) (not b!3826295) (not b!3826278) (not b!3826283) (not b!3826294) (not b_next!102285) b_and!284473 (not b!3826281) (not b!3826291) (not b!3826279) (not b!3826285) (not b!3826293) (not b!3826286))
(check-sat b_and!284471 b_and!284473 (not b_next!102285) (not b_next!102287))
(get-model)

(declare-fun b!3826391 () Bool)

(declare-fun res!1548995 () Bool)

(declare-fun e!2363180 () Bool)

(assert (=> b!3826391 (=> (not res!1548995) (not e!2363180))))

(declare-fun lt!1328369 () tuple2!39608)

(assert (=> b!3826391 (= res!1548995 (= (list!15048 (_1!22938 lt!1328369)) (_1!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 totalInput!335)))))))

(declare-fun d!1135069 () Bool)

(assert (=> d!1135069 e!2363180))

(declare-fun res!1548993 () Bool)

(assert (=> d!1135069 (=> (not res!1548993) (not e!2363180))))

(declare-fun e!2363181 () Bool)

(assert (=> d!1135069 (= res!1548993 e!2363181)))

(declare-fun c!667056 () Bool)

(declare-fun size!30459 (BalanceConc!24432) Int)

(assert (=> d!1135069 (= c!667056 (> (size!30459 (_1!22938 lt!1328369)) 0))))

(declare-fun e!2363179 () tuple2!39608)

(assert (=> d!1135069 (= lt!1328369 e!2363179)))

(declare-fun c!667055 () Bool)

(declare-fun lt!1328368 () Option!8644)

(assert (=> d!1135069 (= c!667055 ((_ is Some!8643) lt!1328368))))

(assert (=> d!1135069 (= lt!1328368 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1135069 (= (lexRec!835 thiss!11876 rules!1265 totalInput!335) lt!1328369)))

(declare-fun b!3826392 () Bool)

(declare-fun e!2363178 () Bool)

(assert (=> b!3826392 (= e!2363181 e!2363178)))

(declare-fun res!1548994 () Bool)

(declare-fun size!30460 (BalanceConc!24430) Int)

(assert (=> b!3826392 (= res!1548994 (< (size!30460 (_2!22938 lt!1328369)) (size!30460 totalInput!335)))))

(assert (=> b!3826392 (=> (not res!1548994) (not e!2363178))))

(declare-fun b!3826393 () Bool)

(assert (=> b!3826393 (= e!2363181 (= (list!15047 (_2!22938 lt!1328369)) (list!15047 totalInput!335)))))

(declare-fun b!3826394 () Bool)

(declare-fun isEmpty!23843 (BalanceConc!24432) Bool)

(assert (=> b!3826394 (= e!2363178 (not (isEmpty!23843 (_1!22938 lt!1328369))))))

(declare-fun b!3826395 () Bool)

(declare-fun lt!1328367 () tuple2!39608)

(assert (=> b!3826395 (= e!2363179 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328367) (_1!22939 (v!38915 lt!1328368))) (_2!22938 lt!1328367)))))

(assert (=> b!3826395 (= lt!1328367 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328368))))))

(declare-fun b!3826396 () Bool)

(assert (=> b!3826396 (= e!2363179 (tuple2!39609 (BalanceConc!24433 Empty!12419) totalInput!335))))

(declare-fun b!3826397 () Bool)

(assert (=> b!3826397 (= e!2363180 (= (list!15047 (_2!22938 lt!1328369)) (_2!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 totalInput!335)))))))

(assert (= (and d!1135069 c!667055) b!3826395))

(assert (= (and d!1135069 (not c!667055)) b!3826396))

(assert (= (and d!1135069 c!667056) b!3826392))

(assert (= (and d!1135069 (not c!667056)) b!3826393))

(assert (= (and b!3826392 res!1548994) b!3826394))

(assert (= (and d!1135069 res!1548993) b!3826391))

(assert (= (and b!3826391 res!1548995) b!3826397))

(declare-fun m!4378071 () Bool)

(assert (=> b!3826391 m!4378071))

(assert (=> b!3826391 m!4377883))

(assert (=> b!3826391 m!4377883))

(declare-fun m!4378073 () Bool)

(assert (=> b!3826391 m!4378073))

(declare-fun m!4378075 () Bool)

(assert (=> d!1135069 m!4378075))

(declare-fun m!4378077 () Bool)

(assert (=> d!1135069 m!4378077))

(declare-fun m!4378079 () Bool)

(assert (=> b!3826393 m!4378079))

(assert (=> b!3826393 m!4377883))

(declare-fun m!4378081 () Bool)

(assert (=> b!3826395 m!4378081))

(declare-fun m!4378083 () Bool)

(assert (=> b!3826395 m!4378083))

(assert (=> b!3826397 m!4378079))

(assert (=> b!3826397 m!4377883))

(assert (=> b!3826397 m!4377883))

(assert (=> b!3826397 m!4378073))

(declare-fun m!4378085 () Bool)

(assert (=> b!3826392 m!4378085))

(declare-fun m!4378087 () Bool)

(assert (=> b!3826392 m!4378087))

(declare-fun m!4378089 () Bool)

(assert (=> b!3826394 m!4378089))

(assert (=> b!3826277 d!1135069))

(declare-fun d!1135093 () Bool)

(declare-fun list!15051 (Conc!12419) List!40538)

(assert (=> d!1135093 (= (list!15048 lt!1328313) (list!15051 (c!667035 lt!1328313)))))

(declare-fun bs!581868 () Bool)

(assert (= bs!581868 d!1135093))

(declare-fun m!4378091 () Bool)

(assert (=> bs!581868 m!4378091))

(assert (=> b!3826277 d!1135093))

(declare-fun b!3826398 () Bool)

(declare-fun res!1548998 () Bool)

(declare-fun e!2363184 () Bool)

(assert (=> b!3826398 (=> (not res!1548998) (not e!2363184))))

(declare-fun lt!1328372 () tuple2!39608)

(assert (=> b!3826398 (= res!1548998 (= (list!15048 (_1!22938 lt!1328372)) (_1!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 input!678)))))))

(declare-fun d!1135095 () Bool)

(assert (=> d!1135095 e!2363184))

(declare-fun res!1548996 () Bool)

(assert (=> d!1135095 (=> (not res!1548996) (not e!2363184))))

(declare-fun e!2363185 () Bool)

(assert (=> d!1135095 (= res!1548996 e!2363185)))

(declare-fun c!667058 () Bool)

(assert (=> d!1135095 (= c!667058 (> (size!30459 (_1!22938 lt!1328372)) 0))))

(declare-fun e!2363183 () tuple2!39608)

(assert (=> d!1135095 (= lt!1328372 e!2363183)))

(declare-fun c!667057 () Bool)

(declare-fun lt!1328371 () Option!8644)

(assert (=> d!1135095 (= c!667057 ((_ is Some!8643) lt!1328371))))

(assert (=> d!1135095 (= lt!1328371 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 input!678))))

(assert (=> d!1135095 (= (lexRec!835 thiss!11876 rules!1265 input!678) lt!1328372)))

(declare-fun b!3826399 () Bool)

(declare-fun e!2363182 () Bool)

(assert (=> b!3826399 (= e!2363185 e!2363182)))

(declare-fun res!1548997 () Bool)

(assert (=> b!3826399 (= res!1548997 (< (size!30460 (_2!22938 lt!1328372)) (size!30460 input!678)))))

(assert (=> b!3826399 (=> (not res!1548997) (not e!2363182))))

(declare-fun b!3826400 () Bool)

(assert (=> b!3826400 (= e!2363185 (= (list!15047 (_2!22938 lt!1328372)) (list!15047 input!678)))))

(declare-fun b!3826401 () Bool)

(assert (=> b!3826401 (= e!2363182 (not (isEmpty!23843 (_1!22938 lt!1328372))))))

(declare-fun b!3826402 () Bool)

(declare-fun lt!1328370 () tuple2!39608)

(assert (=> b!3826402 (= e!2363183 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328370) (_1!22939 (v!38915 lt!1328371))) (_2!22938 lt!1328370)))))

(assert (=> b!3826402 (= lt!1328370 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328371))))))

(declare-fun b!3826403 () Bool)

(assert (=> b!3826403 (= e!2363183 (tuple2!39609 (BalanceConc!24433 Empty!12419) input!678))))

(declare-fun b!3826404 () Bool)

(assert (=> b!3826404 (= e!2363184 (= (list!15047 (_2!22938 lt!1328372)) (_2!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 input!678)))))))

(assert (= (and d!1135095 c!667057) b!3826402))

(assert (= (and d!1135095 (not c!667057)) b!3826403))

(assert (= (and d!1135095 c!667058) b!3826399))

(assert (= (and d!1135095 (not c!667058)) b!3826400))

(assert (= (and b!3826399 res!1548997) b!3826401))

(assert (= (and d!1135095 res!1548996) b!3826398))

(assert (= (and b!3826398 res!1548998) b!3826404))

(declare-fun m!4378093 () Bool)

(assert (=> b!3826398 m!4378093))

(assert (=> b!3826398 m!4377885))

(assert (=> b!3826398 m!4377885))

(declare-fun m!4378095 () Bool)

(assert (=> b!3826398 m!4378095))

(declare-fun m!4378097 () Bool)

(assert (=> d!1135095 m!4378097))

(assert (=> d!1135095 m!4377867))

(declare-fun m!4378099 () Bool)

(assert (=> b!3826400 m!4378099))

(assert (=> b!3826400 m!4377885))

(declare-fun m!4378101 () Bool)

(assert (=> b!3826402 m!4378101))

(declare-fun m!4378103 () Bool)

(assert (=> b!3826402 m!4378103))

(assert (=> b!3826404 m!4378099))

(assert (=> b!3826404 m!4377885))

(assert (=> b!3826404 m!4377885))

(assert (=> b!3826404 m!4378095))

(declare-fun m!4378105 () Bool)

(assert (=> b!3826399 m!4378105))

(declare-fun m!4378107 () Bool)

(assert (=> b!3826399 m!4378107))

(declare-fun m!4378109 () Bool)

(assert (=> b!3826401 m!4378109))

(assert (=> b!3826277 d!1135095))

(declare-fun b!3826415 () Bool)

(declare-fun res!1549007 () Bool)

(declare-fun e!2363188 () Bool)

(assert (=> b!3826415 (=> (not res!1549007) (not e!2363188))))

(declare-fun height!1812 (Conc!12419) Int)

(declare-fun ++!10182 (Conc!12419 Conc!12419) Conc!12419)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3826415 (= res!1549007 (>= (height!1812 (++!10182 (c!667035 acc!335) (c!667035 (_1!22938 lt!1328314)))) (max!0 (height!1812 (c!667035 acc!335)) (height!1812 (c!667035 (_1!22938 lt!1328314))))))))

(declare-fun d!1135097 () Bool)

(assert (=> d!1135097 e!2363188))

(declare-fun res!1549008 () Bool)

(assert (=> d!1135097 (=> (not res!1549008) (not e!2363188))))

(declare-fun appendAssocInst!871 (Conc!12419 Conc!12419) Bool)

(assert (=> d!1135097 (= res!1549008 (appendAssocInst!871 (c!667035 acc!335) (c!667035 (_1!22938 lt!1328314))))))

(declare-fun lt!1328375 () BalanceConc!24432)

(assert (=> d!1135097 (= lt!1328375 (BalanceConc!24433 (++!10182 (c!667035 acc!335) (c!667035 (_1!22938 lt!1328314)))))))

(assert (=> d!1135097 (= (++!10177 acc!335 (_1!22938 lt!1328314)) lt!1328375)))

(declare-fun b!3826416 () Bool)

(assert (=> b!3826416 (= e!2363188 (= (list!15048 lt!1328375) (++!10180 (list!15048 acc!335) (list!15048 (_1!22938 lt!1328314)))))))

(declare-fun b!3826414 () Bool)

(declare-fun res!1549010 () Bool)

(assert (=> b!3826414 (=> (not res!1549010) (not e!2363188))))

(assert (=> b!3826414 (= res!1549010 (<= (height!1812 (++!10182 (c!667035 acc!335) (c!667035 (_1!22938 lt!1328314)))) (+ (max!0 (height!1812 (c!667035 acc!335)) (height!1812 (c!667035 (_1!22938 lt!1328314)))) 1)))))

(declare-fun b!3826413 () Bool)

(declare-fun res!1549009 () Bool)

(assert (=> b!3826413 (=> (not res!1549009) (not e!2363188))))

(declare-fun isBalanced!3597 (Conc!12419) Bool)

(assert (=> b!3826413 (= res!1549009 (isBalanced!3597 (++!10182 (c!667035 acc!335) (c!667035 (_1!22938 lt!1328314)))))))

(assert (= (and d!1135097 res!1549008) b!3826413))

(assert (= (and b!3826413 res!1549009) b!3826414))

(assert (= (and b!3826414 res!1549010) b!3826415))

(assert (= (and b!3826415 res!1549007) b!3826416))

(declare-fun m!4378111 () Bool)

(assert (=> b!3826414 m!4378111))

(declare-fun m!4378113 () Bool)

(assert (=> b!3826414 m!4378113))

(assert (=> b!3826414 m!4378111))

(declare-fun m!4378115 () Bool)

(assert (=> b!3826414 m!4378115))

(declare-fun m!4378117 () Bool)

(assert (=> b!3826414 m!4378117))

(declare-fun m!4378119 () Bool)

(assert (=> b!3826414 m!4378119))

(assert (=> b!3826414 m!4378117))

(assert (=> b!3826414 m!4378113))

(assert (=> b!3826413 m!4378117))

(assert (=> b!3826413 m!4378117))

(declare-fun m!4378121 () Bool)

(assert (=> b!3826413 m!4378121))

(declare-fun m!4378123 () Bool)

(assert (=> b!3826416 m!4378123))

(assert (=> b!3826416 m!4377889))

(declare-fun m!4378125 () Bool)

(assert (=> b!3826416 m!4378125))

(assert (=> b!3826416 m!4377889))

(assert (=> b!3826416 m!4378125))

(declare-fun m!4378127 () Bool)

(assert (=> b!3826416 m!4378127))

(assert (=> b!3826415 m!4378111))

(assert (=> b!3826415 m!4378113))

(assert (=> b!3826415 m!4378111))

(assert (=> b!3826415 m!4378115))

(assert (=> b!3826415 m!4378117))

(assert (=> b!3826415 m!4378119))

(assert (=> b!3826415 m!4378117))

(assert (=> b!3826415 m!4378113))

(declare-fun m!4378129 () Bool)

(assert (=> d!1135097 m!4378129))

(assert (=> d!1135097 m!4378117))

(assert (=> b!3826277 d!1135097))

(declare-fun d!1135099 () Bool)

(assert (=> d!1135099 (= (list!15048 (_1!22938 lt!1328297)) (list!15051 (c!667035 (_1!22938 lt!1328297))))))

(declare-fun bs!581869 () Bool)

(assert (= bs!581869 d!1135099))

(declare-fun m!4378131 () Bool)

(assert (=> bs!581869 m!4378131))

(assert (=> b!3826277 d!1135099))

(declare-fun d!1135101 () Bool)

(assert (=> d!1135101 (= (list!15048 acc!335) (list!15051 (c!667035 acc!335)))))

(declare-fun bs!581870 () Bool)

(assert (= bs!581870 d!1135101))

(declare-fun m!4378133 () Bool)

(assert (=> bs!581870 m!4378133))

(assert (=> b!3826287 d!1135101))

(declare-fun d!1135103 () Bool)

(assert (=> d!1135103 (= (list!15048 (_1!22938 lt!1328293)) (list!15051 (c!667035 (_1!22938 lt!1328293))))))

(declare-fun bs!581871 () Bool)

(assert (= bs!581871 d!1135103))

(declare-fun m!4378135 () Bool)

(assert (=> bs!581871 m!4378135))

(assert (=> b!3826287 d!1135103))

(declare-fun b!3826417 () Bool)

(declare-fun res!1549013 () Bool)

(declare-fun e!2363191 () Bool)

(assert (=> b!3826417 (=> (not res!1549013) (not e!2363191))))

(declare-fun lt!1328378 () tuple2!39608)

(assert (=> b!3826417 (= res!1549013 (= (list!15048 (_1!22938 lt!1328378)) (_1!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 treated!13)))))))

(declare-fun d!1135105 () Bool)

(assert (=> d!1135105 e!2363191))

(declare-fun res!1549011 () Bool)

(assert (=> d!1135105 (=> (not res!1549011) (not e!2363191))))

(declare-fun e!2363192 () Bool)

(assert (=> d!1135105 (= res!1549011 e!2363192)))

(declare-fun c!667063 () Bool)

(assert (=> d!1135105 (= c!667063 (> (size!30459 (_1!22938 lt!1328378)) 0))))

(declare-fun e!2363190 () tuple2!39608)

(assert (=> d!1135105 (= lt!1328378 e!2363190)))

(declare-fun c!667062 () Bool)

(declare-fun lt!1328377 () Option!8644)

(assert (=> d!1135105 (= c!667062 ((_ is Some!8643) lt!1328377))))

(assert (=> d!1135105 (= lt!1328377 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1135105 (= (lexRec!835 thiss!11876 rules!1265 treated!13) lt!1328378)))

(declare-fun b!3826418 () Bool)

(declare-fun e!2363189 () Bool)

(assert (=> b!3826418 (= e!2363192 e!2363189)))

(declare-fun res!1549012 () Bool)

(assert (=> b!3826418 (= res!1549012 (< (size!30460 (_2!22938 lt!1328378)) (size!30460 treated!13)))))

(assert (=> b!3826418 (=> (not res!1549012) (not e!2363189))))

(declare-fun b!3826419 () Bool)

(assert (=> b!3826419 (= e!2363192 (= (list!15047 (_2!22938 lt!1328378)) (list!15047 treated!13)))))

(declare-fun b!3826420 () Bool)

(assert (=> b!3826420 (= e!2363189 (not (isEmpty!23843 (_1!22938 lt!1328378))))))

(declare-fun b!3826421 () Bool)

(declare-fun lt!1328376 () tuple2!39608)

(assert (=> b!3826421 (= e!2363190 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328376) (_1!22939 (v!38915 lt!1328377))) (_2!22938 lt!1328376)))))

(assert (=> b!3826421 (= lt!1328376 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328377))))))

(declare-fun b!3826422 () Bool)

(assert (=> b!3826422 (= e!2363190 (tuple2!39609 (BalanceConc!24433 Empty!12419) treated!13))))

(declare-fun b!3826423 () Bool)

(assert (=> b!3826423 (= e!2363191 (= (list!15047 (_2!22938 lt!1328378)) (_2!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 treated!13)))))))

(assert (= (and d!1135105 c!667062) b!3826421))

(assert (= (and d!1135105 (not c!667062)) b!3826422))

(assert (= (and d!1135105 c!667063) b!3826418))

(assert (= (and d!1135105 (not c!667063)) b!3826419))

(assert (= (and b!3826418 res!1549012) b!3826420))

(assert (= (and d!1135105 res!1549011) b!3826417))

(assert (= (and b!3826417 res!1549013) b!3826423))

(declare-fun m!4378137 () Bool)

(assert (=> b!3826417 m!4378137))

(assert (=> b!3826417 m!4377887))

(assert (=> b!3826417 m!4377887))

(declare-fun m!4378139 () Bool)

(assert (=> b!3826417 m!4378139))

(declare-fun m!4378141 () Bool)

(assert (=> d!1135105 m!4378141))

(declare-fun m!4378143 () Bool)

(assert (=> d!1135105 m!4378143))

(declare-fun m!4378145 () Bool)

(assert (=> b!3826419 m!4378145))

(assert (=> b!3826419 m!4377887))

(declare-fun m!4378147 () Bool)

(assert (=> b!3826421 m!4378147))

(declare-fun m!4378149 () Bool)

(assert (=> b!3826421 m!4378149))

(assert (=> b!3826423 m!4378145))

(assert (=> b!3826423 m!4377887))

(assert (=> b!3826423 m!4377887))

(assert (=> b!3826423 m!4378139))

(declare-fun m!4378151 () Bool)

(assert (=> b!3826418 m!4378151))

(declare-fun m!4378153 () Bool)

(assert (=> b!3826418 m!4378153))

(declare-fun m!4378155 () Bool)

(assert (=> b!3826420 m!4378155))

(assert (=> b!3826287 d!1135105))

(declare-fun d!1135107 () Bool)

(assert (=> d!1135107 (= (isEmpty!23841 (list!15047 (_2!22938 lt!1328293))) ((_ is Nil!40412) (list!15047 (_2!22938 lt!1328293))))))

(assert (=> b!3826276 d!1135107))

(declare-fun d!1135109 () Bool)

(declare-fun list!15052 (Conc!12418) List!40536)

(assert (=> d!1135109 (= (list!15047 (_2!22938 lt!1328293)) (list!15052 (c!667033 (_2!22938 lt!1328293))))))

(declare-fun bs!581872 () Bool)

(assert (= bs!581872 d!1135109))

(declare-fun m!4378157 () Bool)

(assert (=> bs!581872 m!4378157))

(assert (=> b!3826276 d!1135109))

(declare-fun d!1135111 () Bool)

(declare-fun c!667070 () Bool)

(assert (=> d!1135111 (= c!667070 ((_ is Node!12418) (c!667033 input!678)))))

(declare-fun e!2363205 () Bool)

(assert (=> d!1135111 (= (inv!54459 (c!667033 input!678)) e!2363205)))

(declare-fun b!3826444 () Bool)

(declare-fun inv!54464 (Conc!12418) Bool)

(assert (=> b!3826444 (= e!2363205 (inv!54464 (c!667033 input!678)))))

(declare-fun b!3826445 () Bool)

(declare-fun e!2363206 () Bool)

(assert (=> b!3826445 (= e!2363205 e!2363206)))

(declare-fun res!1549022 () Bool)

(assert (=> b!3826445 (= res!1549022 (not ((_ is Leaf!19227) (c!667033 input!678))))))

(assert (=> b!3826445 (=> res!1549022 e!2363206)))

(declare-fun b!3826446 () Bool)

(declare-fun inv!54465 (Conc!12418) Bool)

(assert (=> b!3826446 (= e!2363206 (inv!54465 (c!667033 input!678)))))

(assert (= (and d!1135111 c!667070) b!3826444))

(assert (= (and d!1135111 (not c!667070)) b!3826445))

(assert (= (and b!3826445 (not res!1549022)) b!3826446))

(declare-fun m!4378159 () Bool)

(assert (=> b!3826444 m!4378159))

(declare-fun m!4378161 () Bool)

(assert (=> b!3826446 m!4378161))

(assert (=> b!3826275 d!1135111))

(declare-fun d!1135113 () Bool)

(assert (=> d!1135113 (= (inv!54453 (tag!7082 (h!45835 rules!1265))) (= (mod (str.len (value!197933 (tag!7082 (h!45835 rules!1265)))) 2) 0))))

(assert (=> b!3826296 d!1135113))

(declare-fun d!1135115 () Bool)

(declare-fun res!1549028 () Bool)

(declare-fun e!2363213 () Bool)

(assert (=> d!1135115 (=> (not res!1549028) (not e!2363213))))

(declare-fun semiInverseModEq!2668 (Int Int) Bool)

(assert (=> d!1135115 (= res!1549028 (semiInverseModEq!2668 (toChars!8481 (transformation!6222 (h!45835 rules!1265))) (toValue!8622 (transformation!6222 (h!45835 rules!1265)))))))

(assert (=> d!1135115 (= (inv!54463 (transformation!6222 (h!45835 rules!1265))) e!2363213)))

(declare-fun b!3826456 () Bool)

(declare-fun equivClasses!2567 (Int Int) Bool)

(assert (=> b!3826456 (= e!2363213 (equivClasses!2567 (toChars!8481 (transformation!6222 (h!45835 rules!1265))) (toValue!8622 (transformation!6222 (h!45835 rules!1265)))))))

(assert (= (and d!1135115 res!1549028) b!3826456))

(declare-fun m!4378181 () Bool)

(assert (=> d!1135115 m!4378181))

(declare-fun m!4378183 () Bool)

(assert (=> b!3826456 m!4378183))

(assert (=> b!3826296 d!1135115))

(declare-fun b!3826468 () Bool)

(declare-fun e!2363219 () Bool)

(declare-fun lt!1328390 () List!40536)

(assert (=> b!3826468 (= e!2363219 (or (not (= lt!1328306 Nil!40412)) (= lt!1328390 lt!1328289)))))

(declare-fun b!3826466 () Bool)

(declare-fun e!2363218 () List!40536)

(assert (=> b!3826466 (= e!2363218 (Cons!40412 (h!45832 lt!1328289) (++!10178 (t!308855 lt!1328289) lt!1328306)))))

(declare-fun d!1135119 () Bool)

(assert (=> d!1135119 e!2363219))

(declare-fun res!1549033 () Bool)

(assert (=> d!1135119 (=> (not res!1549033) (not e!2363219))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5987 (List!40536) (InoxSet C!22440))

(assert (=> d!1135119 (= res!1549033 (= (content!5987 lt!1328390) ((_ map or) (content!5987 lt!1328289) (content!5987 lt!1328306))))))

(assert (=> d!1135119 (= lt!1328390 e!2363218)))

(declare-fun c!667075 () Bool)

(assert (=> d!1135119 (= c!667075 ((_ is Nil!40412) lt!1328289))))

(assert (=> d!1135119 (= (++!10178 lt!1328289 lt!1328306) lt!1328390)))

(declare-fun b!3826465 () Bool)

(assert (=> b!3826465 (= e!2363218 lt!1328306)))

(declare-fun b!3826467 () Bool)

(declare-fun res!1549034 () Bool)

(assert (=> b!3826467 (=> (not res!1549034) (not e!2363219))))

(declare-fun size!30463 (List!40536) Int)

(assert (=> b!3826467 (= res!1549034 (= (size!30463 lt!1328390) (+ (size!30463 lt!1328289) (size!30463 lt!1328306))))))

(assert (= (and d!1135119 c!667075) b!3826465))

(assert (= (and d!1135119 (not c!667075)) b!3826466))

(assert (= (and d!1135119 res!1549033) b!3826467))

(assert (= (and b!3826467 res!1549034) b!3826468))

(declare-fun m!4378185 () Bool)

(assert (=> b!3826466 m!4378185))

(declare-fun m!4378187 () Bool)

(assert (=> d!1135119 m!4378187))

(declare-fun m!4378189 () Bool)

(assert (=> d!1135119 m!4378189))

(declare-fun m!4378191 () Bool)

(assert (=> d!1135119 m!4378191))

(declare-fun m!4378193 () Bool)

(assert (=> b!3826467 m!4378193))

(declare-fun m!4378195 () Bool)

(assert (=> b!3826467 m!4378195))

(declare-fun m!4378197 () Bool)

(assert (=> b!3826467 m!4378197))

(assert (=> b!3826285 d!1135119))

(declare-fun d!1135121 () Bool)

(assert (=> d!1135121 (= (list!15047 totalInput!335) (list!15052 (c!667033 totalInput!335)))))

(declare-fun bs!581873 () Bool)

(assert (= bs!581873 d!1135121))

(declare-fun m!4378199 () Bool)

(assert (=> bs!581873 m!4378199))

(assert (=> b!3826285 d!1135121))

(declare-fun d!1135123 () Bool)

(assert (=> d!1135123 (= (list!15047 input!678) (list!15052 (c!667033 input!678)))))

(declare-fun bs!581874 () Bool)

(assert (= bs!581874 d!1135123))

(declare-fun m!4378201 () Bool)

(assert (=> bs!581874 m!4378201))

(assert (=> b!3826285 d!1135123))

(declare-fun d!1135125 () Bool)

(assert (=> d!1135125 (= (list!15047 treated!13) (list!15052 (c!667033 treated!13)))))

(declare-fun bs!581875 () Bool)

(assert (= bs!581875 d!1135125))

(declare-fun m!4378203 () Bool)

(assert (=> bs!581875 m!4378203))

(assert (=> b!3826285 d!1135125))

(declare-fun d!1135127 () Bool)

(declare-fun c!667076 () Bool)

(assert (=> d!1135127 (= c!667076 ((_ is Node!12418) (c!667033 treated!13)))))

(declare-fun e!2363220 () Bool)

(assert (=> d!1135127 (= (inv!54459 (c!667033 treated!13)) e!2363220)))

(declare-fun b!3826469 () Bool)

(assert (=> b!3826469 (= e!2363220 (inv!54464 (c!667033 treated!13)))))

(declare-fun b!3826470 () Bool)

(declare-fun e!2363221 () Bool)

(assert (=> b!3826470 (= e!2363220 e!2363221)))

(declare-fun res!1549035 () Bool)

(assert (=> b!3826470 (= res!1549035 (not ((_ is Leaf!19227) (c!667033 treated!13))))))

(assert (=> b!3826470 (=> res!1549035 e!2363221)))

(declare-fun b!3826471 () Bool)

(assert (=> b!3826471 (= e!2363221 (inv!54465 (c!667033 treated!13)))))

(assert (= (and d!1135127 c!667076) b!3826469))

(assert (= (and d!1135127 (not c!667076)) b!3826470))

(assert (= (and b!3826470 (not res!1549035)) b!3826471))

(declare-fun m!4378205 () Bool)

(assert (=> b!3826469 m!4378205))

(declare-fun m!4378207 () Bool)

(assert (=> b!3826471 m!4378207))

(assert (=> b!3826274 d!1135127))

(declare-fun d!1135129 () Bool)

(declare-fun e!2363224 () Bool)

(assert (=> d!1135129 e!2363224))

(declare-fun res!1549038 () Bool)

(assert (=> d!1135129 (=> (not res!1549038) (not e!2363224))))

(declare-fun prepend!1377 (Conc!12419 Token!11582) Conc!12419)

(assert (=> d!1135129 (= res!1549038 (isBalanced!3597 (prepend!1377 (c!667035 (_1!22938 lt!1328308)) (_1!22939 (v!38915 lt!1328301)))))))

(declare-fun lt!1328393 () BalanceConc!24432)

(assert (=> d!1135129 (= lt!1328393 (BalanceConc!24433 (prepend!1377 (c!667035 (_1!22938 lt!1328308)) (_1!22939 (v!38915 lt!1328301)))))))

(assert (=> d!1135129 (= (prepend!1376 (_1!22938 lt!1328308) (_1!22939 (v!38915 lt!1328301))) lt!1328393)))

(declare-fun b!3826474 () Bool)

(assert (=> b!3826474 (= e!2363224 (= (list!15048 lt!1328393) (Cons!40414 (_1!22939 (v!38915 lt!1328301)) (list!15048 (_1!22938 lt!1328308)))))))

(assert (= (and d!1135129 res!1549038) b!3826474))

(declare-fun m!4378209 () Bool)

(assert (=> d!1135129 m!4378209))

(assert (=> d!1135129 m!4378209))

(declare-fun m!4378211 () Bool)

(assert (=> d!1135129 m!4378211))

(declare-fun m!4378213 () Bool)

(assert (=> b!3826474 m!4378213))

(declare-fun m!4378215 () Bool)

(assert (=> b!3826474 m!4378215))

(assert (=> b!3826295 d!1135129))

(declare-fun b!3826475 () Bool)

(declare-fun res!1549041 () Bool)

(declare-fun e!2363227 () Bool)

(assert (=> b!3826475 (=> (not res!1549041) (not e!2363227))))

(declare-fun lt!1328396 () tuple2!39608)

(assert (=> b!3826475 (= res!1549041 (= (list!15048 (_1!22938 lt!1328396)) (_1!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 (_2!22939 (v!38915 lt!1328301)))))))))

(declare-fun d!1135131 () Bool)

(assert (=> d!1135131 e!2363227))

(declare-fun res!1549039 () Bool)

(assert (=> d!1135131 (=> (not res!1549039) (not e!2363227))))

(declare-fun e!2363228 () Bool)

(assert (=> d!1135131 (= res!1549039 e!2363228)))

(declare-fun c!667079 () Bool)

(assert (=> d!1135131 (= c!667079 (> (size!30459 (_1!22938 lt!1328396)) 0))))

(declare-fun e!2363226 () tuple2!39608)

(assert (=> d!1135131 (= lt!1328396 e!2363226)))

(declare-fun c!667078 () Bool)

(declare-fun lt!1328395 () Option!8644)

(assert (=> d!1135131 (= c!667078 ((_ is Some!8643) lt!1328395))))

(assert (=> d!1135131 (= lt!1328395 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328301))))))

(assert (=> d!1135131 (= (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328301))) lt!1328396)))

(declare-fun b!3826476 () Bool)

(declare-fun e!2363225 () Bool)

(assert (=> b!3826476 (= e!2363228 e!2363225)))

(declare-fun res!1549040 () Bool)

(assert (=> b!3826476 (= res!1549040 (< (size!30460 (_2!22938 lt!1328396)) (size!30460 (_2!22939 (v!38915 lt!1328301)))))))

(assert (=> b!3826476 (=> (not res!1549040) (not e!2363225))))

(declare-fun b!3826477 () Bool)

(assert (=> b!3826477 (= e!2363228 (= (list!15047 (_2!22938 lt!1328396)) (list!15047 (_2!22939 (v!38915 lt!1328301)))))))

(declare-fun b!3826478 () Bool)

(assert (=> b!3826478 (= e!2363225 (not (isEmpty!23843 (_1!22938 lt!1328396))))))

(declare-fun b!3826479 () Bool)

(declare-fun lt!1328394 () tuple2!39608)

(assert (=> b!3826479 (= e!2363226 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328394) (_1!22939 (v!38915 lt!1328395))) (_2!22938 lt!1328394)))))

(assert (=> b!3826479 (= lt!1328394 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328395))))))

(declare-fun b!3826480 () Bool)

(assert (=> b!3826480 (= e!2363226 (tuple2!39609 (BalanceConc!24433 Empty!12419) (_2!22939 (v!38915 lt!1328301))))))

(declare-fun b!3826481 () Bool)

(assert (=> b!3826481 (= e!2363227 (= (list!15047 (_2!22938 lt!1328396)) (_2!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 (_2!22939 (v!38915 lt!1328301)))))))))

(assert (= (and d!1135131 c!667078) b!3826479))

(assert (= (and d!1135131 (not c!667078)) b!3826480))

(assert (= (and d!1135131 c!667079) b!3826476))

(assert (= (and d!1135131 (not c!667079)) b!3826477))

(assert (= (and b!3826476 res!1549040) b!3826478))

(assert (= (and d!1135131 res!1549039) b!3826475))

(assert (= (and b!3826475 res!1549041) b!3826481))

(declare-fun m!4378217 () Bool)

(assert (=> b!3826475 m!4378217))

(declare-fun m!4378219 () Bool)

(assert (=> b!3826475 m!4378219))

(assert (=> b!3826475 m!4378219))

(declare-fun m!4378221 () Bool)

(assert (=> b!3826475 m!4378221))

(declare-fun m!4378223 () Bool)

(assert (=> d!1135131 m!4378223))

(declare-fun m!4378225 () Bool)

(assert (=> d!1135131 m!4378225))

(declare-fun m!4378227 () Bool)

(assert (=> b!3826477 m!4378227))

(assert (=> b!3826477 m!4378219))

(declare-fun m!4378229 () Bool)

(assert (=> b!3826479 m!4378229))

(declare-fun m!4378231 () Bool)

(assert (=> b!3826479 m!4378231))

(assert (=> b!3826481 m!4378227))

(assert (=> b!3826481 m!4378219))

(assert (=> b!3826481 m!4378219))

(assert (=> b!3826481 m!4378221))

(declare-fun m!4378233 () Bool)

(assert (=> b!3826476 m!4378233))

(declare-fun m!4378235 () Bool)

(assert (=> b!3826476 m!4378235))

(declare-fun m!4378237 () Bool)

(assert (=> b!3826478 m!4378237))

(assert (=> b!3826295 d!1135131))

(declare-fun d!1135133 () Bool)

(declare-fun c!667086 () Bool)

(assert (=> d!1135133 (= c!667086 ((_ is Node!12419) (c!667035 acc!335)))))

(declare-fun e!2363239 () Bool)

(assert (=> d!1135133 (= (inv!54462 (c!667035 acc!335)) e!2363239)))

(declare-fun b!3826498 () Bool)

(declare-fun inv!54466 (Conc!12419) Bool)

(assert (=> b!3826498 (= e!2363239 (inv!54466 (c!667035 acc!335)))))

(declare-fun b!3826499 () Bool)

(declare-fun e!2363240 () Bool)

(assert (=> b!3826499 (= e!2363239 e!2363240)))

(declare-fun res!1549046 () Bool)

(assert (=> b!3826499 (= res!1549046 (not ((_ is Leaf!19228) (c!667035 acc!335))))))

(assert (=> b!3826499 (=> res!1549046 e!2363240)))

(declare-fun b!3826500 () Bool)

(declare-fun inv!54467 (Conc!12419) Bool)

(assert (=> b!3826500 (= e!2363240 (inv!54467 (c!667035 acc!335)))))

(assert (= (and d!1135133 c!667086) b!3826498))

(assert (= (and d!1135133 (not c!667086)) b!3826499))

(assert (= (and b!3826499 (not res!1549046)) b!3826500))

(declare-fun m!4378239 () Bool)

(assert (=> b!3826498 m!4378239))

(declare-fun m!4378241 () Bool)

(assert (=> b!3826500 m!4378241))

(assert (=> b!3826294 d!1135133))

(declare-fun d!1135135 () Bool)

(assert (=> d!1135135 (= (list!15047 (_2!22938 lt!1328283)) (list!15052 (c!667033 (_2!22938 lt!1328283))))))

(declare-fun bs!581876 () Bool)

(assert (= bs!581876 d!1135135))

(declare-fun m!4378243 () Bool)

(assert (=> bs!581876 m!4378243))

(assert (=> b!3826283 d!1135135))

(declare-fun d!1135137 () Bool)

(declare-fun c!667087 () Bool)

(assert (=> d!1135137 (= c!667087 ((_ is Node!12418) (c!667033 totalInput!335)))))

(declare-fun e!2363241 () Bool)

(assert (=> d!1135137 (= (inv!54459 (c!667033 totalInput!335)) e!2363241)))

(declare-fun b!3826501 () Bool)

(assert (=> b!3826501 (= e!2363241 (inv!54464 (c!667033 totalInput!335)))))

(declare-fun b!3826502 () Bool)

(declare-fun e!2363242 () Bool)

(assert (=> b!3826502 (= e!2363241 e!2363242)))

(declare-fun res!1549047 () Bool)

(assert (=> b!3826502 (= res!1549047 (not ((_ is Leaf!19227) (c!667033 totalInput!335))))))

(assert (=> b!3826502 (=> res!1549047 e!2363242)))

(declare-fun b!3826503 () Bool)

(assert (=> b!3826503 (= e!2363242 (inv!54465 (c!667033 totalInput!335)))))

(assert (= (and d!1135137 c!667087) b!3826501))

(assert (= (and d!1135137 (not c!667087)) b!3826502))

(assert (= (and b!3826502 (not res!1549047)) b!3826503))

(declare-fun m!4378245 () Bool)

(assert (=> b!3826501 m!4378245))

(declare-fun m!4378247 () Bool)

(assert (=> b!3826503 m!4378247))

(assert (=> b!3826293 d!1135137))

(declare-fun d!1135139 () Bool)

(declare-fun isBalanced!3598 (Conc!12418) Bool)

(assert (=> d!1135139 (= (inv!54460 input!678) (isBalanced!3598 (c!667033 input!678)))))

(declare-fun bs!581877 () Bool)

(assert (= bs!581877 d!1135139))

(declare-fun m!4378257 () Bool)

(assert (=> bs!581877 m!4378257))

(assert (=> start!357964 d!1135139))

(declare-fun d!1135141 () Bool)

(assert (=> d!1135141 (= (inv!54461 acc!335) (isBalanced!3597 (c!667035 acc!335)))))

(declare-fun bs!581879 () Bool)

(assert (= bs!581879 d!1135141))

(declare-fun m!4378269 () Bool)

(assert (=> bs!581879 m!4378269))

(assert (=> start!357964 d!1135141))

(declare-fun d!1135149 () Bool)

(assert (=> d!1135149 (= (inv!54460 treated!13) (isBalanced!3598 (c!667033 treated!13)))))

(declare-fun bs!581880 () Bool)

(assert (= bs!581880 d!1135149))

(declare-fun m!4378271 () Bool)

(assert (=> bs!581880 m!4378271))

(assert (=> start!357964 d!1135149))

(declare-fun d!1135151 () Bool)

(assert (=> d!1135151 (= (inv!54460 totalInput!335) (isBalanced!3598 (c!667033 totalInput!335)))))

(declare-fun bs!581881 () Bool)

(assert (= bs!581881 d!1135151))

(declare-fun m!4378273 () Bool)

(assert (=> bs!581881 m!4378273))

(assert (=> start!357964 d!1135151))

(declare-fun d!1135153 () Bool)

(assert (=> d!1135153 (= (list!15047 (_2!22938 lt!1328314)) (list!15052 (c!667033 (_2!22938 lt!1328314))))))

(declare-fun bs!581882 () Bool)

(assert (= bs!581882 d!1135153))

(declare-fun m!4378275 () Bool)

(assert (=> bs!581882 m!4378275))

(assert (=> b!3826292 d!1135153))

(declare-fun d!1135155 () Bool)

(assert (=> d!1135155 (= (list!15047 (_2!22938 lt!1328297)) (list!15052 (c!667033 (_2!22938 lt!1328297))))))

(declare-fun bs!581883 () Bool)

(assert (= bs!581883 d!1135155))

(declare-fun m!4378277 () Bool)

(assert (=> bs!581883 m!4378277))

(assert (=> b!3826292 d!1135155))

(declare-fun d!1135157 () Bool)

(declare-fun res!1549059 () Bool)

(declare-fun e!2363256 () Bool)

(assert (=> d!1135157 (=> (not res!1549059) (not e!2363256))))

(declare-fun rulesValid!2403 (LexerInterface!5811 List!40539) Bool)

(assert (=> d!1135157 (= res!1549059 (rulesValid!2403 thiss!11876 rules!1265))))

(assert (=> d!1135157 (= (rulesInvariant!5154 thiss!11876 rules!1265) e!2363256)))

(declare-fun b!3826523 () Bool)

(declare-datatypes ((List!40540 0))(
  ( (Nil!40416) (Cons!40416 (h!45836 String!45942) (t!308867 List!40540)) )
))
(declare-fun noDuplicateTag!2404 (LexerInterface!5811 List!40539 List!40540) Bool)

(assert (=> b!3826523 (= e!2363256 (noDuplicateTag!2404 thiss!11876 rules!1265 Nil!40416))))

(assert (= (and d!1135157 res!1549059) b!3826523))

(declare-fun m!4378305 () Bool)

(assert (=> d!1135157 m!4378305))

(declare-fun m!4378307 () Bool)

(assert (=> b!3826523 m!4378307))

(assert (=> b!3826281 d!1135157))

(declare-fun d!1135163 () Bool)

(declare-fun e!2363259 () Bool)

(assert (=> d!1135163 e!2363259))

(declare-fun res!1549062 () Bool)

(assert (=> d!1135163 (=> (not res!1549062) (not e!2363259))))

(declare-fun append!1090 (Conc!12419 Token!11582) Conc!12419)

(assert (=> d!1135163 (= res!1549062 (isBalanced!3597 (append!1090 (c!667035 acc!335) (_1!22939 (v!38915 lt!1328285)))))))

(declare-fun lt!1328419 () BalanceConc!24432)

(assert (=> d!1135163 (= lt!1328419 (BalanceConc!24433 (append!1090 (c!667035 acc!335) (_1!22939 (v!38915 lt!1328285)))))))

(assert (=> d!1135163 (= (append!1088 acc!335 (_1!22939 (v!38915 lt!1328285))) lt!1328419)))

(declare-fun b!3826526 () Bool)

(declare-fun $colon+!283 (List!40538 Token!11582) List!40538)

(assert (=> b!3826526 (= e!2363259 (= (list!15048 lt!1328419) ($colon+!283 (list!15048 acc!335) (_1!22939 (v!38915 lt!1328285)))))))

(assert (= (and d!1135163 res!1549062) b!3826526))

(declare-fun m!4378313 () Bool)

(assert (=> d!1135163 m!4378313))

(assert (=> d!1135163 m!4378313))

(declare-fun m!4378315 () Bool)

(assert (=> d!1135163 m!4378315))

(declare-fun m!4378317 () Bool)

(assert (=> b!3826526 m!4378317))

(assert (=> b!3826526 m!4377889))

(assert (=> b!3826526 m!4377889))

(declare-fun m!4378319 () Bool)

(assert (=> b!3826526 m!4378319))

(assert (=> b!3826291 d!1135163))

(declare-fun b!3826579 () Bool)

(declare-fun e!2363293 () Bool)

(declare-fun e!2363294 () Bool)

(assert (=> b!3826579 (= e!2363293 e!2363294)))

(declare-fun res!1549095 () Bool)

(assert (=> b!3826579 (=> (not res!1549095) (not e!2363294))))

(declare-fun lt!1328453 () Option!8644)

(declare-fun get!13407 (Option!8644) tuple2!39610)

(declare-datatypes ((tuple2!39616 0))(
  ( (tuple2!39617 (_1!22942 Token!11582) (_2!22942 List!40536)) )
))
(declare-datatypes ((Option!8646 0))(
  ( (None!8645) (Some!8645 (v!38921 tuple2!39616)) )
))
(declare-fun get!13408 (Option!8646) tuple2!39616)

(declare-fun maxPrefix!3123 (LexerInterface!5811 List!40539 List!40536) Option!8646)

(assert (=> b!3826579 (= res!1549095 (= (_1!22939 (get!13407 lt!1328453)) (_1!22942 (get!13408 (maxPrefix!3123 thiss!11876 rules!1265 (list!15047 lt!1328305))))))))

(declare-fun b!3826580 () Bool)

(declare-fun e!2363296 () Option!8644)

(declare-fun lt!1328452 () Option!8644)

(declare-fun lt!1328454 () Option!8644)

(assert (=> b!3826580 (= e!2363296 (ite (and ((_ is None!8643) lt!1328452) ((_ is None!8643) lt!1328454)) None!8643 (ite ((_ is None!8643) lt!1328454) lt!1328452 (ite ((_ is None!8643) lt!1328452) lt!1328454 (ite (>= (size!30456 (_1!22939 (v!38915 lt!1328452))) (size!30456 (_1!22939 (v!38915 lt!1328454)))) lt!1328452 lt!1328454)))))))

(declare-fun call!281159 () Option!8644)

(assert (=> b!3826580 (= lt!1328452 call!281159)))

(assert (=> b!3826580 (= lt!1328454 (maxPrefixZipperSequence!1217 thiss!11876 (t!308858 rules!1265) lt!1328305))))

(declare-fun b!3826581 () Bool)

(declare-fun res!1549094 () Bool)

(declare-fun e!2363292 () Bool)

(assert (=> b!3826581 (=> (not res!1549094) (not e!2363292))))

(declare-fun e!2363297 () Bool)

(assert (=> b!3826581 (= res!1549094 e!2363297)))

(declare-fun res!1549091 () Bool)

(assert (=> b!3826581 (=> res!1549091 e!2363297)))

(declare-fun isDefined!6806 (Option!8644) Bool)

(assert (=> b!3826581 (= res!1549091 (not (isDefined!6806 lt!1328453)))))

(declare-fun b!3826582 () Bool)

(assert (=> b!3826582 (= e!2363292 e!2363293)))

(declare-fun res!1549093 () Bool)

(assert (=> b!3826582 (=> res!1549093 e!2363293)))

(assert (=> b!3826582 (= res!1549093 (not (isDefined!6806 lt!1328453)))))

(declare-fun bm!281154 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!570 (LexerInterface!5811 Rule!12244 BalanceConc!24430) Option!8644)

(assert (=> bm!281154 (= call!281159 (maxPrefixOneRuleZipperSequence!570 thiss!11876 (h!45835 rules!1265) lt!1328305))))

(declare-fun e!2363295 () Bool)

(declare-fun b!3826583 () Bool)

(declare-fun maxPrefixZipper!555 (LexerInterface!5811 List!40539 List!40536) Option!8646)

(assert (=> b!3826583 (= e!2363295 (= (list!15047 (_2!22939 (get!13407 lt!1328453))) (_2!22942 (get!13408 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 lt!1328305))))))))

(declare-fun b!3826584 () Bool)

(assert (=> b!3826584 (= e!2363297 e!2363295)))

(declare-fun res!1549096 () Bool)

(assert (=> b!3826584 (=> (not res!1549096) (not e!2363295))))

(assert (=> b!3826584 (= res!1549096 (= (_1!22939 (get!13407 lt!1328453)) (_1!22942 (get!13408 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 lt!1328305))))))))

(declare-fun b!3826585 () Bool)

(assert (=> b!3826585 (= e!2363296 call!281159)))

(declare-fun b!3826586 () Bool)

(assert (=> b!3826586 (= e!2363294 (= (list!15047 (_2!22939 (get!13407 lt!1328453))) (_2!22942 (get!13408 (maxPrefix!3123 thiss!11876 rules!1265 (list!15047 lt!1328305))))))))

(declare-fun d!1135167 () Bool)

(assert (=> d!1135167 e!2363292))

(declare-fun res!1549092 () Bool)

(assert (=> d!1135167 (=> (not res!1549092) (not e!2363292))))

(declare-fun isDefined!6807 (Option!8646) Bool)

(assert (=> d!1135167 (= res!1549092 (= (isDefined!6806 lt!1328453) (isDefined!6807 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 lt!1328305)))))))

(assert (=> d!1135167 (= lt!1328453 e!2363296)))

(declare-fun c!667105 () Bool)

(assert (=> d!1135167 (= c!667105 (and ((_ is Cons!40415) rules!1265) ((_ is Nil!40415) (t!308858 rules!1265))))))

(declare-fun lt!1328448 () Unit!58182)

(declare-fun lt!1328449 () Unit!58182)

(assert (=> d!1135167 (= lt!1328448 lt!1328449)))

(declare-fun lt!1328451 () List!40536)

(declare-fun lt!1328450 () List!40536)

(declare-fun isPrefix!3331 (List!40536 List!40536) Bool)

(assert (=> d!1135167 (isPrefix!3331 lt!1328451 lt!1328450)))

(declare-fun lemmaIsPrefixRefl!2116 (List!40536 List!40536) Unit!58182)

(assert (=> d!1135167 (= lt!1328449 (lemmaIsPrefixRefl!2116 lt!1328451 lt!1328450))))

(assert (=> d!1135167 (= lt!1328450 (list!15047 lt!1328305))))

(assert (=> d!1135167 (= lt!1328451 (list!15047 lt!1328305))))

(declare-fun rulesValidInductive!2190 (LexerInterface!5811 List!40539) Bool)

(assert (=> d!1135167 (rulesValidInductive!2190 thiss!11876 rules!1265)))

(assert (=> d!1135167 (= (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 lt!1328305) lt!1328453)))

(assert (= (and d!1135167 c!667105) b!3826585))

(assert (= (and d!1135167 (not c!667105)) b!3826580))

(assert (= (or b!3826585 b!3826580) bm!281154))

(assert (= (and d!1135167 res!1549092) b!3826581))

(assert (= (and b!3826581 (not res!1549091)) b!3826584))

(assert (= (and b!3826584 res!1549096) b!3826583))

(assert (= (and b!3826581 res!1549094) b!3826582))

(assert (= (and b!3826582 (not res!1549093)) b!3826579))

(assert (= (and b!3826579 res!1549095) b!3826586))

(declare-fun m!4378403 () Bool)

(assert (=> d!1135167 m!4378403))

(declare-fun m!4378405 () Bool)

(assert (=> d!1135167 m!4378405))

(declare-fun m!4378407 () Bool)

(assert (=> d!1135167 m!4378407))

(declare-fun m!4378409 () Bool)

(assert (=> d!1135167 m!4378409))

(declare-fun m!4378411 () Bool)

(assert (=> d!1135167 m!4378411))

(assert (=> d!1135167 m!4377863))

(assert (=> d!1135167 m!4378405))

(assert (=> d!1135167 m!4377863))

(declare-fun m!4378413 () Bool)

(assert (=> d!1135167 m!4378413))

(declare-fun m!4378415 () Bool)

(assert (=> bm!281154 m!4378415))

(declare-fun m!4378417 () Bool)

(assert (=> b!3826579 m!4378417))

(assert (=> b!3826579 m!4377863))

(assert (=> b!3826579 m!4377863))

(declare-fun m!4378419 () Bool)

(assert (=> b!3826579 m!4378419))

(assert (=> b!3826579 m!4378419))

(declare-fun m!4378421 () Bool)

(assert (=> b!3826579 m!4378421))

(assert (=> b!3826581 m!4378409))

(assert (=> b!3826582 m!4378409))

(assert (=> b!3826583 m!4377863))

(assert (=> b!3826583 m!4378405))

(assert (=> b!3826583 m!4377863))

(declare-fun m!4378423 () Bool)

(assert (=> b!3826583 m!4378423))

(assert (=> b!3826583 m!4378405))

(declare-fun m!4378425 () Bool)

(assert (=> b!3826583 m!4378425))

(assert (=> b!3826583 m!4378417))

(declare-fun m!4378427 () Bool)

(assert (=> b!3826580 m!4378427))

(assert (=> b!3826586 m!4378419))

(assert (=> b!3826586 m!4378421))

(assert (=> b!3826586 m!4377863))

(assert (=> b!3826586 m!4378419))

(assert (=> b!3826586 m!4377863))

(assert (=> b!3826586 m!4378417))

(assert (=> b!3826586 m!4378423))

(assert (=> b!3826584 m!4378417))

(assert (=> b!3826584 m!4377863))

(assert (=> b!3826584 m!4377863))

(assert (=> b!3826584 m!4378405))

(assert (=> b!3826584 m!4378405))

(assert (=> b!3826584 m!4378425))

(assert (=> b!3826291 d!1135167))

(declare-fun d!1135191 () Bool)

(assert (=> d!1135191 (= (list!15048 lt!1328295) (list!15051 (c!667035 lt!1328295)))))

(declare-fun bs!581890 () Bool)

(assert (= bs!581890 d!1135191))

(declare-fun m!4378429 () Bool)

(assert (=> bs!581890 m!4378429))

(assert (=> b!3826291 d!1135191))

(declare-fun d!1135193 () Bool)

(assert (=> d!1135193 (= (lexList!1581 thiss!11876 rules!1265 lt!1328315) (tuple2!39613 lt!1328288 Nil!40412))))

(declare-fun lt!1328457 () Unit!58182)

(declare-fun choose!22523 (LexerInterface!5811 List!40539 List!40536 List!40536 List!40538 List!40538 List!40536) Unit!58182)

(assert (=> d!1135193 (= lt!1328457 (choose!22523 thiss!11876 rules!1265 lt!1328315 lt!1328304 lt!1328288 lt!1328287 (list!15047 (_2!22938 lt!1328296))))))

(assert (=> d!1135193 (not (isEmpty!23842 rules!1265))))

(assert (=> d!1135193 (= (lemmaLexThenLexPrefix!573 thiss!11876 rules!1265 lt!1328315 lt!1328304 lt!1328288 lt!1328287 (list!15047 (_2!22938 lt!1328296))) lt!1328457)))

(declare-fun bs!581891 () Bool)

(assert (= bs!581891 d!1135193))

(assert (=> bs!581891 m!4377851))

(assert (=> bs!581891 m!4377843))

(declare-fun m!4378431 () Bool)

(assert (=> bs!581891 m!4378431))

(assert (=> bs!581891 m!4377895))

(assert (=> b!3826291 d!1135193))

(declare-fun b!3826590 () Bool)

(declare-fun lt!1328458 () List!40536)

(declare-fun e!2363299 () Bool)

(assert (=> b!3826590 (= e!2363299 (or (not (= lt!1328304 Nil!40412)) (= lt!1328458 lt!1328286)))))

(declare-fun b!3826588 () Bool)

(declare-fun e!2363298 () List!40536)

(assert (=> b!3826588 (= e!2363298 (Cons!40412 (h!45832 lt!1328286) (++!10178 (t!308855 lt!1328286) lt!1328304)))))

(declare-fun d!1135195 () Bool)

(assert (=> d!1135195 e!2363299))

(declare-fun res!1549097 () Bool)

(assert (=> d!1135195 (=> (not res!1549097) (not e!2363299))))

(assert (=> d!1135195 (= res!1549097 (= (content!5987 lt!1328458) ((_ map or) (content!5987 lt!1328286) (content!5987 lt!1328304))))))

(assert (=> d!1135195 (= lt!1328458 e!2363298)))

(declare-fun c!667106 () Bool)

(assert (=> d!1135195 (= c!667106 ((_ is Nil!40412) lt!1328286))))

(assert (=> d!1135195 (= (++!10178 lt!1328286 lt!1328304) lt!1328458)))

(declare-fun b!3826587 () Bool)

(assert (=> b!3826587 (= e!2363298 lt!1328304)))

(declare-fun b!3826589 () Bool)

(declare-fun res!1549098 () Bool)

(assert (=> b!3826589 (=> (not res!1549098) (not e!2363299))))

(assert (=> b!3826589 (= res!1549098 (= (size!30463 lt!1328458) (+ (size!30463 lt!1328286) (size!30463 lt!1328304))))))

(assert (= (and d!1135195 c!667106) b!3826587))

(assert (= (and d!1135195 (not c!667106)) b!3826588))

(assert (= (and d!1135195 res!1549097) b!3826589))

(assert (= (and b!3826589 res!1549098) b!3826590))

(declare-fun m!4378433 () Bool)

(assert (=> b!3826588 m!4378433))

(declare-fun m!4378435 () Bool)

(assert (=> d!1135195 m!4378435))

(declare-fun m!4378437 () Bool)

(assert (=> d!1135195 m!4378437))

(declare-fun m!4378439 () Bool)

(assert (=> d!1135195 m!4378439))

(declare-fun m!4378441 () Bool)

(assert (=> b!3826589 m!4378441))

(declare-fun m!4378443 () Bool)

(assert (=> b!3826589 m!4378443))

(declare-fun m!4378445 () Bool)

(assert (=> b!3826589 m!4378445))

(assert (=> b!3826291 d!1135195))

(declare-fun e!2363301 () Bool)

(declare-fun b!3826594 () Bool)

(declare-fun lt!1328459 () List!40536)

(assert (=> b!3826594 (= e!2363301 (or (not (= (++!10178 lt!1328286 lt!1328304) Nil!40412)) (= lt!1328459 lt!1328289)))))

(declare-fun e!2363300 () List!40536)

(declare-fun b!3826592 () Bool)

(assert (=> b!3826592 (= e!2363300 (Cons!40412 (h!45832 lt!1328289) (++!10178 (t!308855 lt!1328289) (++!10178 lt!1328286 lt!1328304))))))

(declare-fun d!1135197 () Bool)

(assert (=> d!1135197 e!2363301))

(declare-fun res!1549099 () Bool)

(assert (=> d!1135197 (=> (not res!1549099) (not e!2363301))))

(assert (=> d!1135197 (= res!1549099 (= (content!5987 lt!1328459) ((_ map or) (content!5987 lt!1328289) (content!5987 (++!10178 lt!1328286 lt!1328304)))))))

(assert (=> d!1135197 (= lt!1328459 e!2363300)))

(declare-fun c!667107 () Bool)

(assert (=> d!1135197 (= c!667107 ((_ is Nil!40412) lt!1328289))))

(assert (=> d!1135197 (= (++!10178 lt!1328289 (++!10178 lt!1328286 lt!1328304)) lt!1328459)))

(declare-fun b!3826591 () Bool)

(assert (=> b!3826591 (= e!2363300 (++!10178 lt!1328286 lt!1328304))))

(declare-fun b!3826593 () Bool)

(declare-fun res!1549100 () Bool)

(assert (=> b!3826593 (=> (not res!1549100) (not e!2363301))))

(assert (=> b!3826593 (= res!1549100 (= (size!30463 lt!1328459) (+ (size!30463 lt!1328289) (size!30463 (++!10178 lt!1328286 lt!1328304)))))))

(assert (= (and d!1135197 c!667107) b!3826591))

(assert (= (and d!1135197 (not c!667107)) b!3826592))

(assert (= (and d!1135197 res!1549099) b!3826593))

(assert (= (and b!3826593 res!1549100) b!3826594))

(assert (=> b!3826592 m!4377825))

(declare-fun m!4378447 () Bool)

(assert (=> b!3826592 m!4378447))

(declare-fun m!4378449 () Bool)

(assert (=> d!1135197 m!4378449))

(assert (=> d!1135197 m!4378189))

(assert (=> d!1135197 m!4377825))

(declare-fun m!4378451 () Bool)

(assert (=> d!1135197 m!4378451))

(declare-fun m!4378453 () Bool)

(assert (=> b!3826593 m!4378453))

(assert (=> b!3826593 m!4378195))

(assert (=> b!3826593 m!4377825))

(declare-fun m!4378455 () Bool)

(assert (=> b!3826593 m!4378455))

(assert (=> b!3826291 d!1135197))

(declare-fun d!1135199 () Bool)

(declare-fun lt!1328462 () BalanceConc!24430)

(assert (=> d!1135199 (= (list!15047 lt!1328462) (originalCharacters!6822 (_1!22939 (v!38915 lt!1328285))))))

(declare-fun dynLambda!17502 (Int TokenValue!6452) BalanceConc!24430)

(assert (=> d!1135199 (= lt!1328462 (dynLambda!17502 (toChars!8481 (transformation!6222 (rule!9046 (_1!22939 (v!38915 lt!1328285))))) (value!197934 (_1!22939 (v!38915 lt!1328285)))))))

(assert (=> d!1135199 (= (charsOf!4060 (_1!22939 (v!38915 lt!1328285))) lt!1328462)))

(declare-fun b_lambda!111961 () Bool)

(assert (=> (not b_lambda!111961) (not d!1135199)))

(declare-fun t!308862 () Bool)

(declare-fun tb!219671 () Bool)

(assert (=> (and b!3826290 (= (toChars!8481 (transformation!6222 (h!45835 rules!1265))) (toChars!8481 (transformation!6222 (rule!9046 (_1!22939 (v!38915 lt!1328285)))))) t!308862) tb!219671))

(declare-fun b!3826599 () Bool)

(declare-fun e!2363304 () Bool)

(declare-fun tp!1158308 () Bool)

(assert (=> b!3826599 (= e!2363304 (and (inv!54459 (c!667033 (dynLambda!17502 (toChars!8481 (transformation!6222 (rule!9046 (_1!22939 (v!38915 lt!1328285))))) (value!197934 (_1!22939 (v!38915 lt!1328285)))))) tp!1158308))))

(declare-fun result!267754 () Bool)

(assert (=> tb!219671 (= result!267754 (and (inv!54460 (dynLambda!17502 (toChars!8481 (transformation!6222 (rule!9046 (_1!22939 (v!38915 lt!1328285))))) (value!197934 (_1!22939 (v!38915 lt!1328285))))) e!2363304))))

(assert (= tb!219671 b!3826599))

(declare-fun m!4378457 () Bool)

(assert (=> b!3826599 m!4378457))

(declare-fun m!4378459 () Bool)

(assert (=> tb!219671 m!4378459))

(assert (=> d!1135199 t!308862))

(declare-fun b_and!284477 () Bool)

(assert (= b_and!284473 (and (=> t!308862 result!267754) b_and!284477)))

(declare-fun m!4378461 () Bool)

(assert (=> d!1135199 m!4378461))

(declare-fun m!4378463 () Bool)

(assert (=> d!1135199 m!4378463))

(assert (=> b!3826291 d!1135199))

(declare-fun b!3826608 () Bool)

(declare-fun e!2363310 () List!40538)

(assert (=> b!3826608 (= e!2363310 lt!1328287)))

(declare-fun lt!1328465 () List!40538)

(declare-fun b!3826611 () Bool)

(declare-fun e!2363309 () Bool)

(assert (=> b!3826611 (= e!2363309 (or (not (= lt!1328287 Nil!40414)) (= lt!1328465 (++!10180 lt!1328284 lt!1328307))))))

(declare-fun b!3826610 () Bool)

(declare-fun res!1549106 () Bool)

(assert (=> b!3826610 (=> (not res!1549106) (not e!2363309))))

(declare-fun size!30464 (List!40538) Int)

(assert (=> b!3826610 (= res!1549106 (= (size!30464 lt!1328465) (+ (size!30464 (++!10180 lt!1328284 lt!1328307)) (size!30464 lt!1328287))))))

(declare-fun b!3826609 () Bool)

(assert (=> b!3826609 (= e!2363310 (Cons!40414 (h!45834 (++!10180 lt!1328284 lt!1328307)) (++!10180 (t!308857 (++!10180 lt!1328284 lt!1328307)) lt!1328287)))))

(declare-fun d!1135201 () Bool)

(assert (=> d!1135201 e!2363309))

(declare-fun res!1549105 () Bool)

(assert (=> d!1135201 (=> (not res!1549105) (not e!2363309))))

(declare-fun content!5988 (List!40538) (InoxSet Token!11582))

(assert (=> d!1135201 (= res!1549105 (= (content!5988 lt!1328465) ((_ map or) (content!5988 (++!10180 lt!1328284 lt!1328307)) (content!5988 lt!1328287))))))

(assert (=> d!1135201 (= lt!1328465 e!2363310)))

(declare-fun c!667110 () Bool)

(assert (=> d!1135201 (= c!667110 ((_ is Nil!40414) (++!10180 lt!1328284 lt!1328307)))))

(assert (=> d!1135201 (= (++!10180 (++!10180 lt!1328284 lt!1328307) lt!1328287) lt!1328465)))

(assert (= (and d!1135201 c!667110) b!3826608))

(assert (= (and d!1135201 (not c!667110)) b!3826609))

(assert (= (and d!1135201 res!1549105) b!3826610))

(assert (= (and b!3826610 res!1549106) b!3826611))

(declare-fun m!4378465 () Bool)

(assert (=> b!3826610 m!4378465))

(assert (=> b!3826610 m!4377853))

(declare-fun m!4378467 () Bool)

(assert (=> b!3826610 m!4378467))

(declare-fun m!4378469 () Bool)

(assert (=> b!3826610 m!4378469))

(declare-fun m!4378471 () Bool)

(assert (=> b!3826609 m!4378471))

(declare-fun m!4378473 () Bool)

(assert (=> d!1135201 m!4378473))

(assert (=> d!1135201 m!4377853))

(declare-fun m!4378475 () Bool)

(assert (=> d!1135201 m!4378475))

(declare-fun m!4378477 () Bool)

(assert (=> d!1135201 m!4378477))

(assert (=> b!3826291 d!1135201))

(declare-fun b!3826612 () Bool)

(declare-fun res!1549109 () Bool)

(declare-fun e!2363313 () Bool)

(assert (=> b!3826612 (=> (not res!1549109) (not e!2363313))))

(declare-fun lt!1328468 () tuple2!39608)

(assert (=> b!3826612 (= res!1549109 (= (list!15048 (_1!22938 lt!1328468)) (_1!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 lt!1328305)))))))

(declare-fun d!1135203 () Bool)

(assert (=> d!1135203 e!2363313))

(declare-fun res!1549107 () Bool)

(assert (=> d!1135203 (=> (not res!1549107) (not e!2363313))))

(declare-fun e!2363314 () Bool)

(assert (=> d!1135203 (= res!1549107 e!2363314)))

(declare-fun c!667112 () Bool)

(assert (=> d!1135203 (= c!667112 (> (size!30459 (_1!22938 lt!1328468)) 0))))

(declare-fun e!2363312 () tuple2!39608)

(assert (=> d!1135203 (= lt!1328468 e!2363312)))

(declare-fun c!667111 () Bool)

(declare-fun lt!1328467 () Option!8644)

(assert (=> d!1135203 (= c!667111 ((_ is Some!8643) lt!1328467))))

(assert (=> d!1135203 (= lt!1328467 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 lt!1328305))))

(assert (=> d!1135203 (= (lexRec!835 thiss!11876 rules!1265 lt!1328305) lt!1328468)))

(declare-fun b!3826613 () Bool)

(declare-fun e!2363311 () Bool)

(assert (=> b!3826613 (= e!2363314 e!2363311)))

(declare-fun res!1549108 () Bool)

(assert (=> b!3826613 (= res!1549108 (< (size!30460 (_2!22938 lt!1328468)) (size!30460 lt!1328305)))))

(assert (=> b!3826613 (=> (not res!1549108) (not e!2363311))))

(declare-fun b!3826614 () Bool)

(assert (=> b!3826614 (= e!2363314 (= (list!15047 (_2!22938 lt!1328468)) (list!15047 lt!1328305)))))

(declare-fun b!3826615 () Bool)

(assert (=> b!3826615 (= e!2363311 (not (isEmpty!23843 (_1!22938 lt!1328468))))))

(declare-fun b!3826616 () Bool)

(declare-fun lt!1328466 () tuple2!39608)

(assert (=> b!3826616 (= e!2363312 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328466) (_1!22939 (v!38915 lt!1328467))) (_2!22938 lt!1328466)))))

(assert (=> b!3826616 (= lt!1328466 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328467))))))

(declare-fun b!3826617 () Bool)

(assert (=> b!3826617 (= e!2363312 (tuple2!39609 (BalanceConc!24433 Empty!12419) lt!1328305))))

(declare-fun b!3826618 () Bool)

(assert (=> b!3826618 (= e!2363313 (= (list!15047 (_2!22938 lt!1328468)) (_2!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 lt!1328305)))))))

(assert (= (and d!1135203 c!667111) b!3826616))

(assert (= (and d!1135203 (not c!667111)) b!3826617))

(assert (= (and d!1135203 c!667112) b!3826613))

(assert (= (and d!1135203 (not c!667112)) b!3826614))

(assert (= (and b!3826613 res!1549108) b!3826615))

(assert (= (and d!1135203 res!1549107) b!3826612))

(assert (= (and b!3826612 res!1549109) b!3826618))

(declare-fun m!4378479 () Bool)

(assert (=> b!3826612 m!4378479))

(assert (=> b!3826612 m!4377863))

(assert (=> b!3826612 m!4377863))

(declare-fun m!4378481 () Bool)

(assert (=> b!3826612 m!4378481))

(declare-fun m!4378483 () Bool)

(assert (=> d!1135203 m!4378483))

(assert (=> d!1135203 m!4377849))

(declare-fun m!4378485 () Bool)

(assert (=> b!3826614 m!4378485))

(assert (=> b!3826614 m!4377863))

(declare-fun m!4378487 () Bool)

(assert (=> b!3826616 m!4378487))

(declare-fun m!4378489 () Bool)

(assert (=> b!3826616 m!4378489))

(assert (=> b!3826618 m!4378485))

(assert (=> b!3826618 m!4377863))

(assert (=> b!3826618 m!4377863))

(assert (=> b!3826618 m!4378481))

(declare-fun m!4378491 () Bool)

(assert (=> b!3826613 m!4378491))

(declare-fun m!4378493 () Bool)

(assert (=> b!3826613 m!4378493))

(declare-fun m!4378495 () Bool)

(assert (=> b!3826615 m!4378495))

(assert (=> b!3826291 d!1135203))

(declare-fun d!1135205 () Bool)

(assert (=> d!1135205 (= (list!15047 lt!1328309) (list!15052 (c!667033 lt!1328309)))))

(declare-fun bs!581892 () Bool)

(assert (= bs!581892 d!1135205))

(declare-fun m!4378497 () Bool)

(assert (=> bs!581892 m!4378497))

(assert (=> b!3826291 d!1135205))

(declare-fun d!1135207 () Bool)

(declare-fun e!2363317 () Bool)

(assert (=> d!1135207 e!2363317))

(declare-fun res!1549112 () Bool)

(assert (=> d!1135207 (=> res!1549112 e!2363317)))

(declare-fun lt!1328471 () Bool)

(assert (=> d!1135207 (= res!1549112 (not lt!1328471))))

(declare-fun drop!2131 (List!40536 Int) List!40536)

(assert (=> d!1135207 (= lt!1328471 (= lt!1328304 (drop!2131 (++!10178 lt!1328302 lt!1328304) (- (size!30463 (++!10178 lt!1328302 lt!1328304)) (size!30463 lt!1328304)))))))

(assert (=> d!1135207 (= (isSuffix!994 lt!1328304 (++!10178 lt!1328302 lt!1328304)) lt!1328471)))

(declare-fun b!3826621 () Bool)

(assert (=> b!3826621 (= e!2363317 (>= (size!30463 (++!10178 lt!1328302 lt!1328304)) (size!30463 lt!1328304)))))

(assert (= (and d!1135207 (not res!1549112)) b!3826621))

(assert (=> d!1135207 m!4377835))

(declare-fun m!4378499 () Bool)

(assert (=> d!1135207 m!4378499))

(assert (=> d!1135207 m!4378445))

(assert (=> d!1135207 m!4377835))

(declare-fun m!4378501 () Bool)

(assert (=> d!1135207 m!4378501))

(assert (=> b!3826621 m!4377835))

(assert (=> b!3826621 m!4378499))

(assert (=> b!3826621 m!4378445))

(assert (=> b!3826291 d!1135207))

(declare-fun d!1135209 () Bool)

(assert (=> d!1135209 (= (list!15048 (_1!22938 lt!1328296)) (list!15051 (c!667035 (_1!22938 lt!1328296))))))

(declare-fun bs!581893 () Bool)

(assert (= bs!581893 d!1135209))

(declare-fun m!4378503 () Bool)

(assert (=> bs!581893 m!4378503))

(assert (=> b!3826291 d!1135209))

(declare-fun d!1135211 () Bool)

(assert (=> d!1135211 (= (++!10180 (++!10180 lt!1328284 lt!1328307) lt!1328287) (++!10180 lt!1328284 (++!10180 lt!1328307 lt!1328287)))))

(declare-fun lt!1328474 () Unit!58182)

(declare-fun choose!22524 (List!40538 List!40538 List!40538) Unit!58182)

(assert (=> d!1135211 (= lt!1328474 (choose!22524 lt!1328284 lt!1328307 lt!1328287))))

(assert (=> d!1135211 (= (lemmaConcatAssociativity!2203 lt!1328284 lt!1328307 lt!1328287) lt!1328474)))

(declare-fun bs!581894 () Bool)

(assert (= bs!581894 d!1135211))

(declare-fun m!4378505 () Bool)

(assert (=> bs!581894 m!4378505))

(assert (=> bs!581894 m!4377841))

(assert (=> bs!581894 m!4377847))

(assert (=> bs!581894 m!4377841))

(assert (=> bs!581894 m!4377853))

(assert (=> bs!581894 m!4377853))

(assert (=> bs!581894 m!4377855))

(assert (=> b!3826291 d!1135211))

(declare-fun b!3826622 () Bool)

(declare-fun e!2363319 () Bool)

(declare-fun e!2363320 () Bool)

(assert (=> b!3826622 (= e!2363319 e!2363320)))

(declare-fun res!1549117 () Bool)

(assert (=> b!3826622 (=> (not res!1549117) (not e!2363320))))

(declare-fun lt!1328480 () Option!8644)

(assert (=> b!3826622 (= res!1549117 (= (_1!22939 (get!13407 lt!1328480)) (_1!22942 (get!13408 (maxPrefix!3123 thiss!11876 rules!1265 (list!15047 input!678))))))))

(declare-fun b!3826623 () Bool)

(declare-fun e!2363322 () Option!8644)

(declare-fun lt!1328479 () Option!8644)

(declare-fun lt!1328481 () Option!8644)

(assert (=> b!3826623 (= e!2363322 (ite (and ((_ is None!8643) lt!1328479) ((_ is None!8643) lt!1328481)) None!8643 (ite ((_ is None!8643) lt!1328481) lt!1328479 (ite ((_ is None!8643) lt!1328479) lt!1328481 (ite (>= (size!30456 (_1!22939 (v!38915 lt!1328479))) (size!30456 (_1!22939 (v!38915 lt!1328481)))) lt!1328479 lt!1328481)))))))

(declare-fun call!281160 () Option!8644)

(assert (=> b!3826623 (= lt!1328479 call!281160)))

(assert (=> b!3826623 (= lt!1328481 (maxPrefixZipperSequence!1217 thiss!11876 (t!308858 rules!1265) input!678))))

(declare-fun b!3826624 () Bool)

(declare-fun res!1549116 () Bool)

(declare-fun e!2363318 () Bool)

(assert (=> b!3826624 (=> (not res!1549116) (not e!2363318))))

(declare-fun e!2363323 () Bool)

(assert (=> b!3826624 (= res!1549116 e!2363323)))

(declare-fun res!1549113 () Bool)

(assert (=> b!3826624 (=> res!1549113 e!2363323)))

(assert (=> b!3826624 (= res!1549113 (not (isDefined!6806 lt!1328480)))))

(declare-fun b!3826625 () Bool)

(assert (=> b!3826625 (= e!2363318 e!2363319)))

(declare-fun res!1549115 () Bool)

(assert (=> b!3826625 (=> res!1549115 e!2363319)))

(assert (=> b!3826625 (= res!1549115 (not (isDefined!6806 lt!1328480)))))

(declare-fun bm!281155 () Bool)

(assert (=> bm!281155 (= call!281160 (maxPrefixOneRuleZipperSequence!570 thiss!11876 (h!45835 rules!1265) input!678))))

(declare-fun b!3826626 () Bool)

(declare-fun e!2363321 () Bool)

(assert (=> b!3826626 (= e!2363321 (= (list!15047 (_2!22939 (get!13407 lt!1328480))) (_2!22942 (get!13408 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 input!678))))))))

(declare-fun b!3826627 () Bool)

(assert (=> b!3826627 (= e!2363323 e!2363321)))

(declare-fun res!1549118 () Bool)

(assert (=> b!3826627 (=> (not res!1549118) (not e!2363321))))

(assert (=> b!3826627 (= res!1549118 (= (_1!22939 (get!13407 lt!1328480)) (_1!22942 (get!13408 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 input!678))))))))

(declare-fun b!3826628 () Bool)

(assert (=> b!3826628 (= e!2363322 call!281160)))

(declare-fun b!3826629 () Bool)

(assert (=> b!3826629 (= e!2363320 (= (list!15047 (_2!22939 (get!13407 lt!1328480))) (_2!22942 (get!13408 (maxPrefix!3123 thiss!11876 rules!1265 (list!15047 input!678))))))))

(declare-fun d!1135213 () Bool)

(assert (=> d!1135213 e!2363318))

(declare-fun res!1549114 () Bool)

(assert (=> d!1135213 (=> (not res!1549114) (not e!2363318))))

(assert (=> d!1135213 (= res!1549114 (= (isDefined!6806 lt!1328480) (isDefined!6807 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 input!678)))))))

(assert (=> d!1135213 (= lt!1328480 e!2363322)))

(declare-fun c!667113 () Bool)

(assert (=> d!1135213 (= c!667113 (and ((_ is Cons!40415) rules!1265) ((_ is Nil!40415) (t!308858 rules!1265))))))

(declare-fun lt!1328475 () Unit!58182)

(declare-fun lt!1328476 () Unit!58182)

(assert (=> d!1135213 (= lt!1328475 lt!1328476)))

(declare-fun lt!1328478 () List!40536)

(declare-fun lt!1328477 () List!40536)

(assert (=> d!1135213 (isPrefix!3331 lt!1328478 lt!1328477)))

(assert (=> d!1135213 (= lt!1328476 (lemmaIsPrefixRefl!2116 lt!1328478 lt!1328477))))

(assert (=> d!1135213 (= lt!1328477 (list!15047 input!678))))

(assert (=> d!1135213 (= lt!1328478 (list!15047 input!678))))

(assert (=> d!1135213 (rulesValidInductive!2190 thiss!11876 rules!1265)))

(assert (=> d!1135213 (= (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 input!678) lt!1328480)))

(assert (= (and d!1135213 c!667113) b!3826628))

(assert (= (and d!1135213 (not c!667113)) b!3826623))

(assert (= (or b!3826628 b!3826623) bm!281155))

(assert (= (and d!1135213 res!1549114) b!3826624))

(assert (= (and b!3826624 (not res!1549113)) b!3826627))

(assert (= (and b!3826627 res!1549118) b!3826626))

(assert (= (and b!3826624 res!1549116) b!3826625))

(assert (= (and b!3826625 (not res!1549115)) b!3826622))

(assert (= (and b!3826622 res!1549117) b!3826629))

(assert (=> d!1135213 m!4378403))

(declare-fun m!4378507 () Bool)

(assert (=> d!1135213 m!4378507))

(declare-fun m!4378509 () Bool)

(assert (=> d!1135213 m!4378509))

(declare-fun m!4378511 () Bool)

(assert (=> d!1135213 m!4378511))

(declare-fun m!4378513 () Bool)

(assert (=> d!1135213 m!4378513))

(assert (=> d!1135213 m!4377885))

(assert (=> d!1135213 m!4378507))

(assert (=> d!1135213 m!4377885))

(declare-fun m!4378515 () Bool)

(assert (=> d!1135213 m!4378515))

(declare-fun m!4378517 () Bool)

(assert (=> bm!281155 m!4378517))

(declare-fun m!4378519 () Bool)

(assert (=> b!3826622 m!4378519))

(assert (=> b!3826622 m!4377885))

(assert (=> b!3826622 m!4377885))

(declare-fun m!4378521 () Bool)

(assert (=> b!3826622 m!4378521))

(assert (=> b!3826622 m!4378521))

(declare-fun m!4378523 () Bool)

(assert (=> b!3826622 m!4378523))

(assert (=> b!3826624 m!4378511))

(assert (=> b!3826625 m!4378511))

(assert (=> b!3826626 m!4377885))

(assert (=> b!3826626 m!4378507))

(assert (=> b!3826626 m!4377885))

(declare-fun m!4378525 () Bool)

(assert (=> b!3826626 m!4378525))

(assert (=> b!3826626 m!4378507))

(declare-fun m!4378527 () Bool)

(assert (=> b!3826626 m!4378527))

(assert (=> b!3826626 m!4378519))

(declare-fun m!4378529 () Bool)

(assert (=> b!3826623 m!4378529))

(assert (=> b!3826629 m!4378521))

(assert (=> b!3826629 m!4378523))

(assert (=> b!3826629 m!4377885))

(assert (=> b!3826629 m!4378521))

(assert (=> b!3826629 m!4377885))

(assert (=> b!3826629 m!4378519))

(assert (=> b!3826629 m!4378525))

(assert (=> b!3826627 m!4378519))

(assert (=> b!3826627 m!4377885))

(assert (=> b!3826627 m!4377885))

(assert (=> b!3826627 m!4378507))

(assert (=> b!3826627 m!4378507))

(assert (=> b!3826627 m!4378527))

(assert (=> b!3826291 d!1135213))

(declare-fun d!1135215 () Bool)

(assert (=> d!1135215 (= (list!15047 (_2!22938 lt!1328296)) (list!15052 (c!667033 (_2!22938 lt!1328296))))))

(declare-fun bs!581895 () Bool)

(assert (= bs!581895 d!1135215))

(declare-fun m!4378531 () Bool)

(assert (=> bs!581895 m!4378531))

(assert (=> b!3826291 d!1135215))

(declare-fun b!3826633 () Bool)

(declare-fun e!2363325 () Bool)

(declare-fun lt!1328482 () List!40536)

(assert (=> b!3826633 (= e!2363325 (or (not (= lt!1328304 Nil!40412)) (= lt!1328482 lt!1328302)))))

(declare-fun b!3826631 () Bool)

(declare-fun e!2363324 () List!40536)

(assert (=> b!3826631 (= e!2363324 (Cons!40412 (h!45832 lt!1328302) (++!10178 (t!308855 lt!1328302) lt!1328304)))))

(declare-fun d!1135217 () Bool)

(assert (=> d!1135217 e!2363325))

(declare-fun res!1549119 () Bool)

(assert (=> d!1135217 (=> (not res!1549119) (not e!2363325))))

(assert (=> d!1135217 (= res!1549119 (= (content!5987 lt!1328482) ((_ map or) (content!5987 lt!1328302) (content!5987 lt!1328304))))))

(assert (=> d!1135217 (= lt!1328482 e!2363324)))

(declare-fun c!667114 () Bool)

(assert (=> d!1135217 (= c!667114 ((_ is Nil!40412) lt!1328302))))

(assert (=> d!1135217 (= (++!10178 lt!1328302 lt!1328304) lt!1328482)))

(declare-fun b!3826630 () Bool)

(assert (=> b!3826630 (= e!2363324 lt!1328304)))

(declare-fun b!3826632 () Bool)

(declare-fun res!1549120 () Bool)

(assert (=> b!3826632 (=> (not res!1549120) (not e!2363325))))

(assert (=> b!3826632 (= res!1549120 (= (size!30463 lt!1328482) (+ (size!30463 lt!1328302) (size!30463 lt!1328304))))))

(assert (= (and d!1135217 c!667114) b!3826630))

(assert (= (and d!1135217 (not c!667114)) b!3826631))

(assert (= (and d!1135217 res!1549119) b!3826632))

(assert (= (and b!3826632 res!1549120) b!3826633))

(declare-fun m!4378533 () Bool)

(assert (=> b!3826631 m!4378533))

(declare-fun m!4378535 () Bool)

(assert (=> d!1135217 m!4378535))

(declare-fun m!4378537 () Bool)

(assert (=> d!1135217 m!4378537))

(assert (=> d!1135217 m!4378439))

(declare-fun m!4378539 () Bool)

(assert (=> b!3826632 m!4378539))

(declare-fun m!4378541 () Bool)

(assert (=> b!3826632 m!4378541))

(assert (=> b!3826632 m!4378445))

(assert (=> b!3826291 d!1135217))

(declare-fun e!2363327 () Bool)

(declare-fun lt!1328483 () List!40536)

(declare-fun b!3826637 () Bool)

(assert (=> b!3826637 (= e!2363327 (or (not (= lt!1328304 Nil!40412)) (= lt!1328483 lt!1328315)))))

(declare-fun b!3826635 () Bool)

(declare-fun e!2363326 () List!40536)

(assert (=> b!3826635 (= e!2363326 (Cons!40412 (h!45832 lt!1328315) (++!10178 (t!308855 lt!1328315) lt!1328304)))))

(declare-fun d!1135219 () Bool)

(assert (=> d!1135219 e!2363327))

(declare-fun res!1549121 () Bool)

(assert (=> d!1135219 (=> (not res!1549121) (not e!2363327))))

(assert (=> d!1135219 (= res!1549121 (= (content!5987 lt!1328483) ((_ map or) (content!5987 lt!1328315) (content!5987 lt!1328304))))))

(assert (=> d!1135219 (= lt!1328483 e!2363326)))

(declare-fun c!667115 () Bool)

(assert (=> d!1135219 (= c!667115 ((_ is Nil!40412) lt!1328315))))

(assert (=> d!1135219 (= (++!10178 lt!1328315 lt!1328304) lt!1328483)))

(declare-fun b!3826634 () Bool)

(assert (=> b!3826634 (= e!2363326 lt!1328304)))

(declare-fun b!3826636 () Bool)

(declare-fun res!1549122 () Bool)

(assert (=> b!3826636 (=> (not res!1549122) (not e!2363327))))

(assert (=> b!3826636 (= res!1549122 (= (size!30463 lt!1328483) (+ (size!30463 lt!1328315) (size!30463 lt!1328304))))))

(assert (= (and d!1135219 c!667115) b!3826634))

(assert (= (and d!1135219 (not c!667115)) b!3826635))

(assert (= (and d!1135219 res!1549121) b!3826636))

(assert (= (and b!3826636 res!1549122) b!3826637))

(declare-fun m!4378543 () Bool)

(assert (=> b!3826635 m!4378543))

(declare-fun m!4378545 () Bool)

(assert (=> d!1135219 m!4378545))

(declare-fun m!4378547 () Bool)

(assert (=> d!1135219 m!4378547))

(assert (=> d!1135219 m!4378439))

(declare-fun m!4378549 () Bool)

(assert (=> b!3826636 m!4378549))

(declare-fun m!4378551 () Bool)

(assert (=> b!3826636 m!4378551))

(assert (=> b!3826636 m!4378445))

(assert (=> b!3826291 d!1135219))

(declare-fun d!1135221 () Bool)

(assert (=> d!1135221 (= (list!15047 (_2!22939 (v!38915 lt!1328285))) (list!15052 (c!667033 (_2!22939 (v!38915 lt!1328285)))))))

(declare-fun bs!581896 () Bool)

(assert (= bs!581896 d!1135221))

(declare-fun m!4378553 () Bool)

(assert (=> bs!581896 m!4378553))

(assert (=> b!3826291 d!1135221))

(declare-fun b!3826638 () Bool)

(declare-fun e!2363329 () List!40538)

(assert (=> b!3826638 (= e!2363329 lt!1328287)))

(declare-fun b!3826641 () Bool)

(declare-fun lt!1328484 () List!40538)

(declare-fun e!2363328 () Bool)

(assert (=> b!3826641 (= e!2363328 (or (not (= lt!1328287 Nil!40414)) (= lt!1328484 lt!1328307)))))

(declare-fun b!3826640 () Bool)

(declare-fun res!1549124 () Bool)

(assert (=> b!3826640 (=> (not res!1549124) (not e!2363328))))

(assert (=> b!3826640 (= res!1549124 (= (size!30464 lt!1328484) (+ (size!30464 lt!1328307) (size!30464 lt!1328287))))))

(declare-fun b!3826639 () Bool)

(assert (=> b!3826639 (= e!2363329 (Cons!40414 (h!45834 lt!1328307) (++!10180 (t!308857 lt!1328307) lt!1328287)))))

(declare-fun d!1135223 () Bool)

(assert (=> d!1135223 e!2363328))

(declare-fun res!1549123 () Bool)

(assert (=> d!1135223 (=> (not res!1549123) (not e!2363328))))

(assert (=> d!1135223 (= res!1549123 (= (content!5988 lt!1328484) ((_ map or) (content!5988 lt!1328307) (content!5988 lt!1328287))))))

(assert (=> d!1135223 (= lt!1328484 e!2363329)))

(declare-fun c!667116 () Bool)

(assert (=> d!1135223 (= c!667116 ((_ is Nil!40414) lt!1328307))))

(assert (=> d!1135223 (= (++!10180 lt!1328307 lt!1328287) lt!1328484)))

(assert (= (and d!1135223 c!667116) b!3826638))

(assert (= (and d!1135223 (not c!667116)) b!3826639))

(assert (= (and d!1135223 res!1549123) b!3826640))

(assert (= (and b!3826640 res!1549124) b!3826641))

(declare-fun m!4378555 () Bool)

(assert (=> b!3826640 m!4378555))

(declare-fun m!4378557 () Bool)

(assert (=> b!3826640 m!4378557))

(assert (=> b!3826640 m!4378469))

(declare-fun m!4378559 () Bool)

(assert (=> b!3826639 m!4378559))

(declare-fun m!4378561 () Bool)

(assert (=> d!1135223 m!4378561))

(declare-fun m!4378563 () Bool)

(assert (=> d!1135223 m!4378563))

(assert (=> d!1135223 m!4378477))

(assert (=> b!3826291 d!1135223))

(declare-fun b!3826652 () Bool)

(declare-fun e!2363337 () tuple2!39612)

(declare-fun lt!1328493 () Option!8646)

(declare-fun lt!1328491 () tuple2!39612)

(assert (=> b!3826652 (= e!2363337 (tuple2!39613 (Cons!40414 (_1!22942 (v!38921 lt!1328493)) (_1!22940 lt!1328491)) (_2!22940 lt!1328491)))))

(assert (=> b!3826652 (= lt!1328491 (lexList!1581 thiss!11876 rules!1265 (_2!22942 (v!38921 lt!1328493))))))

(declare-fun b!3826653 () Bool)

(declare-fun e!2363338 () Bool)

(declare-fun lt!1328492 () tuple2!39612)

(assert (=> b!3826653 (= e!2363338 (= (_2!22940 lt!1328492) lt!1328315))))

(declare-fun b!3826654 () Bool)

(declare-fun e!2363336 () Bool)

(assert (=> b!3826654 (= e!2363338 e!2363336)))

(declare-fun res!1549127 () Bool)

(assert (=> b!3826654 (= res!1549127 (< (size!30463 (_2!22940 lt!1328492)) (size!30463 lt!1328315)))))

(assert (=> b!3826654 (=> (not res!1549127) (not e!2363336))))

(declare-fun b!3826655 () Bool)

(declare-fun isEmpty!23846 (List!40538) Bool)

(assert (=> b!3826655 (= e!2363336 (not (isEmpty!23846 (_1!22940 lt!1328492))))))

(declare-fun d!1135225 () Bool)

(assert (=> d!1135225 e!2363338))

(declare-fun c!667122 () Bool)

(assert (=> d!1135225 (= c!667122 (> (size!30464 (_1!22940 lt!1328492)) 0))))

(assert (=> d!1135225 (= lt!1328492 e!2363337)))

(declare-fun c!667121 () Bool)

(assert (=> d!1135225 (= c!667121 ((_ is Some!8645) lt!1328493))))

(assert (=> d!1135225 (= lt!1328493 (maxPrefix!3123 thiss!11876 rules!1265 lt!1328315))))

(assert (=> d!1135225 (= (lexList!1581 thiss!11876 rules!1265 lt!1328315) lt!1328492)))

(declare-fun b!3826656 () Bool)

(assert (=> b!3826656 (= e!2363337 (tuple2!39613 Nil!40414 lt!1328315))))

(assert (= (and d!1135225 c!667121) b!3826652))

(assert (= (and d!1135225 (not c!667121)) b!3826656))

(assert (= (and d!1135225 c!667122) b!3826654))

(assert (= (and d!1135225 (not c!667122)) b!3826653))

(assert (= (and b!3826654 res!1549127) b!3826655))

(declare-fun m!4378565 () Bool)

(assert (=> b!3826652 m!4378565))

(declare-fun m!4378567 () Bool)

(assert (=> b!3826654 m!4378567))

(assert (=> b!3826654 m!4378551))

(declare-fun m!4378569 () Bool)

(assert (=> b!3826655 m!4378569))

(declare-fun m!4378571 () Bool)

(assert (=> d!1135225 m!4378571))

(declare-fun m!4378573 () Bool)

(assert (=> d!1135225 m!4378573))

(assert (=> b!3826291 d!1135225))

(declare-fun d!1135227 () Bool)

(declare-fun e!2363339 () Bool)

(assert (=> d!1135227 e!2363339))

(declare-fun res!1549128 () Bool)

(assert (=> d!1135227 (=> res!1549128 e!2363339)))

(declare-fun lt!1328494 () Bool)

(assert (=> d!1135227 (= res!1549128 (not lt!1328494))))

(assert (=> d!1135227 (= lt!1328494 (= lt!1328304 (drop!2131 lt!1328294 (- (size!30463 lt!1328294) (size!30463 lt!1328304)))))))

(assert (=> d!1135227 (= (isSuffix!994 lt!1328304 lt!1328294) lt!1328494)))

(declare-fun b!3826657 () Bool)

(assert (=> b!3826657 (= e!2363339 (>= (size!30463 lt!1328294) (size!30463 lt!1328304)))))

(assert (= (and d!1135227 (not res!1549128)) b!3826657))

(declare-fun m!4378575 () Bool)

(assert (=> d!1135227 m!4378575))

(assert (=> d!1135227 m!4378445))

(declare-fun m!4378577 () Bool)

(assert (=> d!1135227 m!4378577))

(assert (=> b!3826657 m!4378575))

(assert (=> b!3826657 m!4378445))

(assert (=> b!3826291 d!1135227))

(declare-fun lt!1328495 () List!40536)

(declare-fun e!2363341 () Bool)

(declare-fun b!3826661 () Bool)

(assert (=> b!3826661 (= e!2363341 (or (not (= lt!1328286 Nil!40412)) (= lt!1328495 lt!1328289)))))

(declare-fun b!3826659 () Bool)

(declare-fun e!2363340 () List!40536)

(assert (=> b!3826659 (= e!2363340 (Cons!40412 (h!45832 lt!1328289) (++!10178 (t!308855 lt!1328289) lt!1328286)))))

(declare-fun d!1135229 () Bool)

(assert (=> d!1135229 e!2363341))

(declare-fun res!1549129 () Bool)

(assert (=> d!1135229 (=> (not res!1549129) (not e!2363341))))

(assert (=> d!1135229 (= res!1549129 (= (content!5987 lt!1328495) ((_ map or) (content!5987 lt!1328289) (content!5987 lt!1328286))))))

(assert (=> d!1135229 (= lt!1328495 e!2363340)))

(declare-fun c!667123 () Bool)

(assert (=> d!1135229 (= c!667123 ((_ is Nil!40412) lt!1328289))))

(assert (=> d!1135229 (= (++!10178 lt!1328289 lt!1328286) lt!1328495)))

(declare-fun b!3826658 () Bool)

(assert (=> b!3826658 (= e!2363340 lt!1328286)))

(declare-fun b!3826660 () Bool)

(declare-fun res!1549130 () Bool)

(assert (=> b!3826660 (=> (not res!1549130) (not e!2363341))))

(assert (=> b!3826660 (= res!1549130 (= (size!30463 lt!1328495) (+ (size!30463 lt!1328289) (size!30463 lt!1328286))))))

(assert (= (and d!1135229 c!667123) b!3826658))

(assert (= (and d!1135229 (not c!667123)) b!3826659))

(assert (= (and d!1135229 res!1549129) b!3826660))

(assert (= (and b!3826660 res!1549130) b!3826661))

(declare-fun m!4378579 () Bool)

(assert (=> b!3826659 m!4378579))

(declare-fun m!4378581 () Bool)

(assert (=> d!1135229 m!4378581))

(assert (=> d!1135229 m!4378189))

(assert (=> d!1135229 m!4378437))

(declare-fun m!4378583 () Bool)

(assert (=> b!3826660 m!4378583))

(assert (=> b!3826660 m!4378195))

(assert (=> b!3826660 m!4378443))

(assert (=> b!3826291 d!1135229))

(declare-fun d!1135231 () Bool)

(assert (=> d!1135231 (= (++!10178 (++!10178 lt!1328289 lt!1328286) lt!1328304) (++!10178 lt!1328289 (++!10178 lt!1328286 lt!1328304)))))

(declare-fun lt!1328498 () Unit!58182)

(declare-fun choose!22525 (List!40536 List!40536 List!40536) Unit!58182)

(assert (=> d!1135231 (= lt!1328498 (choose!22525 lt!1328289 lt!1328286 lt!1328304))))

(assert (=> d!1135231 (= (lemmaConcatAssociativity!2204 lt!1328289 lt!1328286 lt!1328304) lt!1328498)))

(declare-fun bs!581897 () Bool)

(assert (= bs!581897 d!1135231))

(assert (=> bs!581897 m!4377871))

(declare-fun m!4378585 () Bool)

(assert (=> bs!581897 m!4378585))

(assert (=> bs!581897 m!4377825))

(assert (=> bs!581897 m!4377865))

(declare-fun m!4378587 () Bool)

(assert (=> bs!581897 m!4378587))

(assert (=> bs!581897 m!4377825))

(assert (=> bs!581897 m!4377871))

(assert (=> b!3826291 d!1135231))

(declare-fun b!3826662 () Bool)

(declare-fun e!2363343 () List!40538)

(assert (=> b!3826662 (= e!2363343 lt!1328307)))

(declare-fun b!3826665 () Bool)

(declare-fun e!2363342 () Bool)

(declare-fun lt!1328499 () List!40538)

(assert (=> b!3826665 (= e!2363342 (or (not (= lt!1328307 Nil!40414)) (= lt!1328499 lt!1328284)))))

(declare-fun b!3826664 () Bool)

(declare-fun res!1549132 () Bool)

(assert (=> b!3826664 (=> (not res!1549132) (not e!2363342))))

(assert (=> b!3826664 (= res!1549132 (= (size!30464 lt!1328499) (+ (size!30464 lt!1328284) (size!30464 lt!1328307))))))

(declare-fun b!3826663 () Bool)

(assert (=> b!3826663 (= e!2363343 (Cons!40414 (h!45834 lt!1328284) (++!10180 (t!308857 lt!1328284) lt!1328307)))))

(declare-fun d!1135233 () Bool)

(assert (=> d!1135233 e!2363342))

(declare-fun res!1549131 () Bool)

(assert (=> d!1135233 (=> (not res!1549131) (not e!2363342))))

(assert (=> d!1135233 (= res!1549131 (= (content!5988 lt!1328499) ((_ map or) (content!5988 lt!1328284) (content!5988 lt!1328307))))))

(assert (=> d!1135233 (= lt!1328499 e!2363343)))

(declare-fun c!667124 () Bool)

(assert (=> d!1135233 (= c!667124 ((_ is Nil!40414) lt!1328284))))

(assert (=> d!1135233 (= (++!10180 lt!1328284 lt!1328307) lt!1328499)))

(assert (= (and d!1135233 c!667124) b!3826662))

(assert (= (and d!1135233 (not c!667124)) b!3826663))

(assert (= (and d!1135233 res!1549131) b!3826664))

(assert (= (and b!3826664 res!1549132) b!3826665))

(declare-fun m!4378589 () Bool)

(assert (=> b!3826664 m!4378589))

(declare-fun m!4378591 () Bool)

(assert (=> b!3826664 m!4378591))

(assert (=> b!3826664 m!4378557))

(declare-fun m!4378593 () Bool)

(assert (=> b!3826663 m!4378593))

(declare-fun m!4378595 () Bool)

(assert (=> d!1135233 m!4378595))

(declare-fun m!4378597 () Bool)

(assert (=> d!1135233 m!4378597))

(assert (=> d!1135233 m!4378563))

(assert (=> b!3826291 d!1135233))

(declare-fun e!2363346 () Bool)

(declare-fun lt!1328502 () BalanceConc!24430)

(declare-fun b!3826677 () Bool)

(assert (=> b!3826677 (= e!2363346 (= (list!15047 lt!1328502) (++!10178 (list!15047 treated!13) (list!15047 lt!1328309))))))

(declare-fun d!1135235 () Bool)

(assert (=> d!1135235 e!2363346))

(declare-fun res!1549142 () Bool)

(assert (=> d!1135235 (=> (not res!1549142) (not e!2363346))))

(declare-fun appendAssocInst!873 (Conc!12418 Conc!12418) Bool)

(assert (=> d!1135235 (= res!1549142 (appendAssocInst!873 (c!667033 treated!13) (c!667033 lt!1328309)))))

(declare-fun ++!10184 (Conc!12418 Conc!12418) Conc!12418)

(assert (=> d!1135235 (= lt!1328502 (BalanceConc!24431 (++!10184 (c!667033 treated!13) (c!667033 lt!1328309))))))

(assert (=> d!1135235 (= (++!10179 treated!13 lt!1328309) lt!1328502)))

(declare-fun b!3826674 () Bool)

(declare-fun res!1549141 () Bool)

(assert (=> b!3826674 (=> (not res!1549141) (not e!2363346))))

(assert (=> b!3826674 (= res!1549141 (isBalanced!3598 (++!10184 (c!667033 treated!13) (c!667033 lt!1328309))))))

(declare-fun b!3826676 () Bool)

(declare-fun res!1549143 () Bool)

(assert (=> b!3826676 (=> (not res!1549143) (not e!2363346))))

(declare-fun height!1814 (Conc!12418) Int)

(assert (=> b!3826676 (= res!1549143 (>= (height!1814 (++!10184 (c!667033 treated!13) (c!667033 lt!1328309))) (max!0 (height!1814 (c!667033 treated!13)) (height!1814 (c!667033 lt!1328309)))))))

(declare-fun b!3826675 () Bool)

(declare-fun res!1549144 () Bool)

(assert (=> b!3826675 (=> (not res!1549144) (not e!2363346))))

(assert (=> b!3826675 (= res!1549144 (<= (height!1814 (++!10184 (c!667033 treated!13) (c!667033 lt!1328309))) (+ (max!0 (height!1814 (c!667033 treated!13)) (height!1814 (c!667033 lt!1328309))) 1)))))

(assert (= (and d!1135235 res!1549142) b!3826674))

(assert (= (and b!3826674 res!1549141) b!3826675))

(assert (= (and b!3826675 res!1549144) b!3826676))

(assert (= (and b!3826676 res!1549143) b!3826677))

(declare-fun m!4378599 () Bool)

(assert (=> b!3826677 m!4378599))

(assert (=> b!3826677 m!4377887))

(assert (=> b!3826677 m!4377859))

(assert (=> b!3826677 m!4377887))

(assert (=> b!3826677 m!4377859))

(declare-fun m!4378601 () Bool)

(assert (=> b!3826677 m!4378601))

(declare-fun m!4378603 () Bool)

(assert (=> b!3826676 m!4378603))

(declare-fun m!4378605 () Bool)

(assert (=> b!3826676 m!4378605))

(declare-fun m!4378607 () Bool)

(assert (=> b!3826676 m!4378607))

(declare-fun m!4378609 () Bool)

(assert (=> b!3826676 m!4378609))

(assert (=> b!3826676 m!4378607))

(assert (=> b!3826676 m!4378605))

(assert (=> b!3826676 m!4378603))

(declare-fun m!4378611 () Bool)

(assert (=> b!3826676 m!4378611))

(declare-fun m!4378613 () Bool)

(assert (=> d!1135235 m!4378613))

(assert (=> d!1135235 m!4378607))

(assert (=> b!3826674 m!4378607))

(assert (=> b!3826674 m!4378607))

(declare-fun m!4378615 () Bool)

(assert (=> b!3826674 m!4378615))

(assert (=> b!3826675 m!4378603))

(assert (=> b!3826675 m!4378605))

(assert (=> b!3826675 m!4378607))

(assert (=> b!3826675 m!4378609))

(assert (=> b!3826675 m!4378607))

(assert (=> b!3826675 m!4378605))

(assert (=> b!3826675 m!4378603))

(assert (=> b!3826675 m!4378611))

(assert (=> b!3826291 d!1135235))

(declare-fun b!3826678 () Bool)

(declare-fun res!1549147 () Bool)

(declare-fun e!2363349 () Bool)

(assert (=> b!3826678 (=> (not res!1549147) (not e!2363349))))

(declare-fun lt!1328505 () tuple2!39608)

(assert (=> b!3826678 (= res!1549147 (= (list!15048 (_1!22938 lt!1328505)) (_1!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 (_2!22939 (v!38915 lt!1328285)))))))))

(declare-fun d!1135237 () Bool)

(assert (=> d!1135237 e!2363349))

(declare-fun res!1549145 () Bool)

(assert (=> d!1135237 (=> (not res!1549145) (not e!2363349))))

(declare-fun e!2363350 () Bool)

(assert (=> d!1135237 (= res!1549145 e!2363350)))

(declare-fun c!667129 () Bool)

(assert (=> d!1135237 (= c!667129 (> (size!30459 (_1!22938 lt!1328505)) 0))))

(declare-fun e!2363348 () tuple2!39608)

(assert (=> d!1135237 (= lt!1328505 e!2363348)))

(declare-fun c!667128 () Bool)

(declare-fun lt!1328504 () Option!8644)

(assert (=> d!1135237 (= c!667128 ((_ is Some!8643) lt!1328504))))

(assert (=> d!1135237 (= lt!1328504 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328285))))))

(assert (=> d!1135237 (= (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328285))) lt!1328505)))

(declare-fun b!3826679 () Bool)

(declare-fun e!2363347 () Bool)

(assert (=> b!3826679 (= e!2363350 e!2363347)))

(declare-fun res!1549146 () Bool)

(assert (=> b!3826679 (= res!1549146 (< (size!30460 (_2!22938 lt!1328505)) (size!30460 (_2!22939 (v!38915 lt!1328285)))))))

(assert (=> b!3826679 (=> (not res!1549146) (not e!2363347))))

(declare-fun b!3826680 () Bool)

(assert (=> b!3826680 (= e!2363350 (= (list!15047 (_2!22938 lt!1328505)) (list!15047 (_2!22939 (v!38915 lt!1328285)))))))

(declare-fun b!3826681 () Bool)

(assert (=> b!3826681 (= e!2363347 (not (isEmpty!23843 (_1!22938 lt!1328505))))))

(declare-fun b!3826682 () Bool)

(declare-fun lt!1328503 () tuple2!39608)

(assert (=> b!3826682 (= e!2363348 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328503) (_1!22939 (v!38915 lt!1328504))) (_2!22938 lt!1328503)))))

(assert (=> b!3826682 (= lt!1328503 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328504))))))

(declare-fun b!3826683 () Bool)

(assert (=> b!3826683 (= e!2363348 (tuple2!39609 (BalanceConc!24433 Empty!12419) (_2!22939 (v!38915 lt!1328285))))))

(declare-fun b!3826684 () Bool)

(assert (=> b!3826684 (= e!2363349 (= (list!15047 (_2!22938 lt!1328505)) (_2!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 (_2!22939 (v!38915 lt!1328285)))))))))

(assert (= (and d!1135237 c!667128) b!3826682))

(assert (= (and d!1135237 (not c!667128)) b!3826683))

(assert (= (and d!1135237 c!667129) b!3826679))

(assert (= (and d!1135237 (not c!667129)) b!3826680))

(assert (= (and b!3826679 res!1549146) b!3826681))

(assert (= (and d!1135237 res!1549145) b!3826678))

(assert (= (and b!3826678 res!1549147) b!3826684))

(declare-fun m!4378617 () Bool)

(assert (=> b!3826678 m!4378617))

(assert (=> b!3826678 m!4377879))

(assert (=> b!3826678 m!4377879))

(declare-fun m!4378619 () Bool)

(assert (=> b!3826678 m!4378619))

(declare-fun m!4378621 () Bool)

(assert (=> d!1135237 m!4378621))

(declare-fun m!4378623 () Bool)

(assert (=> d!1135237 m!4378623))

(declare-fun m!4378625 () Bool)

(assert (=> b!3826680 m!4378625))

(assert (=> b!3826680 m!4377879))

(declare-fun m!4378627 () Bool)

(assert (=> b!3826682 m!4378627))

(declare-fun m!4378629 () Bool)

(assert (=> b!3826682 m!4378629))

(assert (=> b!3826684 m!4378625))

(assert (=> b!3826684 m!4377879))

(assert (=> b!3826684 m!4377879))

(assert (=> b!3826684 m!4378619))

(declare-fun m!4378631 () Bool)

(assert (=> b!3826679 m!4378631))

(declare-fun m!4378633 () Bool)

(assert (=> b!3826679 m!4378633))

(declare-fun m!4378635 () Bool)

(assert (=> b!3826681 m!4378635))

(assert (=> b!3826291 d!1135237))

(declare-fun d!1135239 () Bool)

(assert (=> d!1135239 (isSuffix!994 lt!1328304 (++!10178 lt!1328302 lt!1328304))))

(declare-fun lt!1328508 () Unit!58182)

(declare-fun choose!22526 (List!40536 List!40536) Unit!58182)

(assert (=> d!1135239 (= lt!1328508 (choose!22526 lt!1328302 lt!1328304))))

(assert (=> d!1135239 (= (lemmaConcatTwoListThenFSndIsSuffix!679 lt!1328302 lt!1328304) lt!1328508)))

(declare-fun bs!581898 () Bool)

(assert (= bs!581898 d!1135239))

(assert (=> bs!581898 m!4377835))

(assert (=> bs!581898 m!4377835))

(assert (=> bs!581898 m!4377837))

(declare-fun m!4378637 () Bool)

(assert (=> bs!581898 m!4378637))

(assert (=> b!3826291 d!1135239))

(declare-fun b!3826685 () Bool)

(declare-fun e!2363352 () List!40538)

(assert (=> b!3826685 (= e!2363352 (++!10180 lt!1328307 lt!1328287))))

(declare-fun lt!1328509 () List!40538)

(declare-fun b!3826688 () Bool)

(declare-fun e!2363351 () Bool)

(assert (=> b!3826688 (= e!2363351 (or (not (= (++!10180 lt!1328307 lt!1328287) Nil!40414)) (= lt!1328509 lt!1328284)))))

(declare-fun b!3826687 () Bool)

(declare-fun res!1549149 () Bool)

(assert (=> b!3826687 (=> (not res!1549149) (not e!2363351))))

(assert (=> b!3826687 (= res!1549149 (= (size!30464 lt!1328509) (+ (size!30464 lt!1328284) (size!30464 (++!10180 lt!1328307 lt!1328287)))))))

(declare-fun b!3826686 () Bool)

(assert (=> b!3826686 (= e!2363352 (Cons!40414 (h!45834 lt!1328284) (++!10180 (t!308857 lt!1328284) (++!10180 lt!1328307 lt!1328287))))))

(declare-fun d!1135241 () Bool)

(assert (=> d!1135241 e!2363351))

(declare-fun res!1549148 () Bool)

(assert (=> d!1135241 (=> (not res!1549148) (not e!2363351))))

(assert (=> d!1135241 (= res!1549148 (= (content!5988 lt!1328509) ((_ map or) (content!5988 lt!1328284) (content!5988 (++!10180 lt!1328307 lt!1328287)))))))

(assert (=> d!1135241 (= lt!1328509 e!2363352)))

(declare-fun c!667130 () Bool)

(assert (=> d!1135241 (= c!667130 ((_ is Nil!40414) lt!1328284))))

(assert (=> d!1135241 (= (++!10180 lt!1328284 (++!10180 lt!1328307 lt!1328287)) lt!1328509)))

(assert (= (and d!1135241 c!667130) b!3826685))

(assert (= (and d!1135241 (not c!667130)) b!3826686))

(assert (= (and d!1135241 res!1549148) b!3826687))

(assert (= (and b!3826687 res!1549149) b!3826688))

(declare-fun m!4378639 () Bool)

(assert (=> b!3826687 m!4378639))

(assert (=> b!3826687 m!4378591))

(assert (=> b!3826687 m!4377841))

(declare-fun m!4378641 () Bool)

(assert (=> b!3826687 m!4378641))

(assert (=> b!3826686 m!4377841))

(declare-fun m!4378643 () Bool)

(assert (=> b!3826686 m!4378643))

(declare-fun m!4378645 () Bool)

(assert (=> d!1135241 m!4378645))

(assert (=> d!1135241 m!4378597))

(assert (=> d!1135241 m!4377841))

(declare-fun m!4378647 () Bool)

(assert (=> d!1135241 m!4378647))

(assert (=> b!3826291 d!1135241))

(declare-fun d!1135243 () Bool)

(assert (=> d!1135243 (= (list!15047 lt!1328305) (list!15052 (c!667033 lt!1328305)))))

(declare-fun bs!581899 () Bool)

(assert (= bs!581899 d!1135243))

(declare-fun m!4378649 () Bool)

(assert (=> bs!581899 m!4378649))

(assert (=> b!3826291 d!1135243))

(declare-fun d!1135245 () Bool)

(declare-fun e!2363353 () Bool)

(assert (=> d!1135245 e!2363353))

(declare-fun res!1549150 () Bool)

(assert (=> d!1135245 (=> res!1549150 e!2363353)))

(declare-fun lt!1328520 () Bool)

(assert (=> d!1135245 (= res!1549150 (not lt!1328520))))

(assert (=> d!1135245 (= lt!1328520 (= lt!1328306 (drop!2131 lt!1328294 (- (size!30463 lt!1328294) (size!30463 lt!1328306)))))))

(assert (=> d!1135245 (= (isSuffix!994 lt!1328306 lt!1328294) lt!1328520)))

(declare-fun b!3826689 () Bool)

(assert (=> b!3826689 (= e!2363353 (>= (size!30463 lt!1328294) (size!30463 lt!1328306)))))

(assert (= (and d!1135245 (not res!1549150)) b!3826689))

(assert (=> d!1135245 m!4378575))

(assert (=> d!1135245 m!4378197))

(declare-fun m!4378651 () Bool)

(assert (=> d!1135245 m!4378651))

(assert (=> b!3826689 m!4378575))

(assert (=> b!3826689 m!4378197))

(assert (=> b!3826280 d!1135245))

(declare-fun d!1135247 () Bool)

(declare-fun e!2363354 () Bool)

(assert (=> d!1135247 e!2363354))

(declare-fun res!1549151 () Bool)

(assert (=> d!1135247 (=> res!1549151 e!2363354)))

(declare-fun lt!1328521 () Bool)

(assert (=> d!1135247 (= res!1549151 (not lt!1328521))))

(assert (=> d!1135247 (= lt!1328521 (= lt!1328306 (drop!2131 lt!1328292 (- (size!30463 lt!1328292) (size!30463 lt!1328306)))))))

(assert (=> d!1135247 (= (isSuffix!994 lt!1328306 lt!1328292) lt!1328521)))

(declare-fun b!3826690 () Bool)

(assert (=> b!3826690 (= e!2363354 (>= (size!30463 lt!1328292) (size!30463 lt!1328306)))))

(assert (= (and d!1135247 (not res!1549151)) b!3826690))

(declare-fun m!4378653 () Bool)

(assert (=> d!1135247 m!4378653))

(assert (=> d!1135247 m!4378197))

(declare-fun m!4378655 () Bool)

(assert (=> d!1135247 m!4378655))

(assert (=> b!3826690 m!4378653))

(assert (=> b!3826690 m!4378197))

(assert (=> b!3826280 d!1135247))

(declare-fun d!1135249 () Bool)

(assert (=> d!1135249 (isSuffix!994 lt!1328306 (++!10178 lt!1328289 lt!1328306))))

(declare-fun lt!1328524 () Unit!58182)

(assert (=> d!1135249 (= lt!1328524 (choose!22526 lt!1328289 lt!1328306))))

(assert (=> d!1135249 (= (lemmaConcatTwoListThenFSndIsSuffix!679 lt!1328289 lt!1328306) lt!1328524)))

(declare-fun bs!581900 () Bool)

(assert (= bs!581900 d!1135249))

(assert (=> bs!581900 m!4377881))

(assert (=> bs!581900 m!4377881))

(declare-fun m!4378657 () Bool)

(assert (=> bs!581900 m!4378657))

(declare-fun m!4378659 () Bool)

(assert (=> bs!581900 m!4378659))

(assert (=> b!3826280 d!1135249))

(declare-fun d!1135251 () Bool)

(declare-fun e!2363355 () Bool)

(assert (=> d!1135251 e!2363355))

(declare-fun res!1549152 () Bool)

(assert (=> d!1135251 (=> (not res!1549152) (not e!2363355))))

(assert (=> d!1135251 (= res!1549152 (isBalanced!3597 (prepend!1377 (c!667035 (_1!22938 lt!1328291)) (_1!22939 (v!38915 lt!1328299)))))))

(declare-fun lt!1328525 () BalanceConc!24432)

(assert (=> d!1135251 (= lt!1328525 (BalanceConc!24433 (prepend!1377 (c!667035 (_1!22938 lt!1328291)) (_1!22939 (v!38915 lt!1328299)))))))

(assert (=> d!1135251 (= (prepend!1376 (_1!22938 lt!1328291) (_1!22939 (v!38915 lt!1328299))) lt!1328525)))

(declare-fun b!3826693 () Bool)

(assert (=> b!3826693 (= e!2363355 (= (list!15048 lt!1328525) (Cons!40414 (_1!22939 (v!38915 lt!1328299)) (list!15048 (_1!22938 lt!1328291)))))))

(assert (= (and d!1135251 res!1549152) b!3826693))

(declare-fun m!4378661 () Bool)

(assert (=> d!1135251 m!4378661))

(assert (=> d!1135251 m!4378661))

(declare-fun m!4378663 () Bool)

(assert (=> d!1135251 m!4378663))

(declare-fun m!4378665 () Bool)

(assert (=> b!3826693 m!4378665))

(declare-fun m!4378667 () Bool)

(assert (=> b!3826693 m!4378667))

(assert (=> b!3826279 d!1135251))

(declare-fun b!3826696 () Bool)

(declare-fun res!1549155 () Bool)

(declare-fun e!2363360 () Bool)

(assert (=> b!3826696 (=> (not res!1549155) (not e!2363360))))

(declare-fun lt!1328530 () tuple2!39608)

(assert (=> b!3826696 (= res!1549155 (= (list!15048 (_1!22938 lt!1328530)) (_1!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 (_2!22939 (v!38915 lt!1328299)))))))))

(declare-fun d!1135253 () Bool)

(assert (=> d!1135253 e!2363360))

(declare-fun res!1549153 () Bool)

(assert (=> d!1135253 (=> (not res!1549153) (not e!2363360))))

(declare-fun e!2363361 () Bool)

(assert (=> d!1135253 (= res!1549153 e!2363361)))

(declare-fun c!667134 () Bool)

(assert (=> d!1135253 (= c!667134 (> (size!30459 (_1!22938 lt!1328530)) 0))))

(declare-fun e!2363359 () tuple2!39608)

(assert (=> d!1135253 (= lt!1328530 e!2363359)))

(declare-fun c!667133 () Bool)

(declare-fun lt!1328529 () Option!8644)

(assert (=> d!1135253 (= c!667133 ((_ is Some!8643) lt!1328529))))

(assert (=> d!1135253 (= lt!1328529 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328299))))))

(assert (=> d!1135253 (= (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328299))) lt!1328530)))

(declare-fun b!3826697 () Bool)

(declare-fun e!2363358 () Bool)

(assert (=> b!3826697 (= e!2363361 e!2363358)))

(declare-fun res!1549154 () Bool)

(assert (=> b!3826697 (= res!1549154 (< (size!30460 (_2!22938 lt!1328530)) (size!30460 (_2!22939 (v!38915 lt!1328299)))))))

(assert (=> b!3826697 (=> (not res!1549154) (not e!2363358))))

(declare-fun b!3826698 () Bool)

(assert (=> b!3826698 (= e!2363361 (= (list!15047 (_2!22938 lt!1328530)) (list!15047 (_2!22939 (v!38915 lt!1328299)))))))

(declare-fun b!3826699 () Bool)

(assert (=> b!3826699 (= e!2363358 (not (isEmpty!23843 (_1!22938 lt!1328530))))))

(declare-fun b!3826700 () Bool)

(declare-fun lt!1328528 () tuple2!39608)

(assert (=> b!3826700 (= e!2363359 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328528) (_1!22939 (v!38915 lt!1328529))) (_2!22938 lt!1328528)))))

(assert (=> b!3826700 (= lt!1328528 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328529))))))

(declare-fun b!3826701 () Bool)

(assert (=> b!3826701 (= e!2363359 (tuple2!39609 (BalanceConc!24433 Empty!12419) (_2!22939 (v!38915 lt!1328299))))))

(declare-fun b!3826702 () Bool)

(assert (=> b!3826702 (= e!2363360 (= (list!15047 (_2!22938 lt!1328530)) (_2!22940 (lexList!1581 thiss!11876 rules!1265 (list!15047 (_2!22939 (v!38915 lt!1328299)))))))))

(assert (= (and d!1135253 c!667133) b!3826700))

(assert (= (and d!1135253 (not c!667133)) b!3826701))

(assert (= (and d!1135253 c!667134) b!3826697))

(assert (= (and d!1135253 (not c!667134)) b!3826698))

(assert (= (and b!3826697 res!1549154) b!3826699))

(assert (= (and d!1135253 res!1549153) b!3826696))

(assert (= (and b!3826696 res!1549155) b!3826702))

(declare-fun m!4378669 () Bool)

(assert (=> b!3826696 m!4378669))

(declare-fun m!4378671 () Bool)

(assert (=> b!3826696 m!4378671))

(assert (=> b!3826696 m!4378671))

(declare-fun m!4378673 () Bool)

(assert (=> b!3826696 m!4378673))

(declare-fun m!4378675 () Bool)

(assert (=> d!1135253 m!4378675))

(declare-fun m!4378677 () Bool)

(assert (=> d!1135253 m!4378677))

(declare-fun m!4378679 () Bool)

(assert (=> b!3826698 m!4378679))

(assert (=> b!3826698 m!4378671))

(declare-fun m!4378681 () Bool)

(assert (=> b!3826700 m!4378681))

(declare-fun m!4378683 () Bool)

(assert (=> b!3826700 m!4378683))

(assert (=> b!3826702 m!4378679))

(assert (=> b!3826702 m!4378671))

(assert (=> b!3826702 m!4378671))

(assert (=> b!3826702 m!4378673))

(declare-fun m!4378685 () Bool)

(assert (=> b!3826697 m!4378685))

(declare-fun m!4378687 () Bool)

(assert (=> b!3826697 m!4378687))

(declare-fun m!4378689 () Bool)

(assert (=> b!3826699 m!4378689))

(assert (=> b!3826279 d!1135253))

(declare-fun b!3826739 () Bool)

(declare-fun e!2363386 () Bool)

(declare-fun e!2363391 () Bool)

(assert (=> b!3826739 (= e!2363386 e!2363391)))

(declare-fun res!1549172 () Bool)

(assert (=> b!3826739 (=> (not res!1549172) (not e!2363391))))

(declare-fun lt!1328634 () Option!8644)

(assert (=> b!3826739 (= res!1549172 (= (_1!22939 (get!13407 lt!1328634)) (_1!22942 (get!13408 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 input!678))))))))

(declare-fun bm!281158 () Bool)

(declare-fun call!281163 () Option!8644)

(declare-fun maxPrefixOneRuleZipperSequenceV2!249 (LexerInterface!5811 Rule!12244 BalanceConc!24430 BalanceConc!24430) Option!8644)

(assert (=> bm!281158 (= call!281163 (maxPrefixOneRuleZipperSequenceV2!249 thiss!11876 (h!45835 rules!1265) input!678 totalInput!335))))

(declare-fun b!3826741 () Bool)

(declare-fun e!2363388 () Option!8644)

(declare-fun lt!1328639 () Option!8644)

(declare-fun lt!1328633 () Option!8644)

(assert (=> b!3826741 (= e!2363388 (ite (and ((_ is None!8643) lt!1328639) ((_ is None!8643) lt!1328633)) None!8643 (ite ((_ is None!8643) lt!1328633) lt!1328639 (ite ((_ is None!8643) lt!1328639) lt!1328633 (ite (>= (size!30456 (_1!22939 (v!38915 lt!1328639))) (size!30456 (_1!22939 (v!38915 lt!1328633)))) lt!1328639 lt!1328633)))))))

(assert (=> b!3826741 (= lt!1328639 call!281163)))

(assert (=> b!3826741 (= lt!1328633 (maxPrefixZipperSequenceV2!611 thiss!11876 (t!308858 rules!1265) input!678 totalInput!335))))

(declare-fun b!3826742 () Bool)

(declare-fun res!1549174 () Bool)

(declare-fun e!2363390 () Bool)

(assert (=> b!3826742 (=> (not res!1549174) (not e!2363390))))

(assert (=> b!3826742 (= res!1549174 e!2363386)))

(declare-fun res!1549177 () Bool)

(assert (=> b!3826742 (=> res!1549177 e!2363386)))

(assert (=> b!3826742 (= res!1549177 (not (isDefined!6806 lt!1328634)))))

(declare-fun b!3826743 () Bool)

(declare-fun e!2363387 () Bool)

(declare-fun e!2363389 () Bool)

(assert (=> b!3826743 (= e!2363387 e!2363389)))

(declare-fun res!1549175 () Bool)

(assert (=> b!3826743 (=> (not res!1549175) (not e!2363389))))

(assert (=> b!3826743 (= res!1549175 (= (_1!22939 (get!13407 lt!1328634)) (_1!22942 (get!13408 (maxPrefix!3123 thiss!11876 rules!1265 (list!15047 input!678))))))))

(declare-fun b!3826744 () Bool)

(assert (=> b!3826744 (= e!2363390 e!2363387)))

(declare-fun res!1549173 () Bool)

(assert (=> b!3826744 (=> res!1549173 e!2363387)))

(assert (=> b!3826744 (= res!1549173 (not (isDefined!6806 lt!1328634)))))

(declare-fun b!3826745 () Bool)

(assert (=> b!3826745 (= e!2363391 (= (list!15047 (_2!22939 (get!13407 lt!1328634))) (_2!22942 (get!13408 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 input!678))))))))

(declare-fun b!3826746 () Bool)

(assert (=> b!3826746 (= e!2363388 call!281163)))

(declare-fun d!1135255 () Bool)

(assert (=> d!1135255 e!2363390))

(declare-fun res!1549176 () Bool)

(assert (=> d!1135255 (=> (not res!1549176) (not e!2363390))))

(assert (=> d!1135255 (= res!1549176 (= (isDefined!6806 lt!1328634) (isDefined!6807 (maxPrefixZipper!555 thiss!11876 rules!1265 (list!15047 input!678)))))))

(assert (=> d!1135255 (= lt!1328634 e!2363388)))

(declare-fun c!667145 () Bool)

(assert (=> d!1135255 (= c!667145 (and ((_ is Cons!40415) rules!1265) ((_ is Nil!40415) (t!308858 rules!1265))))))

(declare-fun lt!1328635 () Unit!58182)

(declare-fun lt!1328637 () Unit!58182)

(assert (=> d!1135255 (= lt!1328635 lt!1328637)))

(declare-fun lt!1328636 () List!40536)

(declare-fun lt!1328638 () List!40536)

(assert (=> d!1135255 (isPrefix!3331 lt!1328636 lt!1328638)))

(assert (=> d!1135255 (= lt!1328637 (lemmaIsPrefixRefl!2116 lt!1328636 lt!1328638))))

(assert (=> d!1135255 (= lt!1328638 (list!15047 input!678))))

(assert (=> d!1135255 (= lt!1328636 (list!15047 input!678))))

(assert (=> d!1135255 (rulesValidInductive!2190 thiss!11876 rules!1265)))

(assert (=> d!1135255 (= (maxPrefixZipperSequenceV2!611 thiss!11876 rules!1265 input!678 totalInput!335) lt!1328634)))

(declare-fun b!3826740 () Bool)

(assert (=> b!3826740 (= e!2363389 (= (list!15047 (_2!22939 (get!13407 lt!1328634))) (_2!22942 (get!13408 (maxPrefix!3123 thiss!11876 rules!1265 (list!15047 input!678))))))))

(assert (= (and d!1135255 c!667145) b!3826746))

(assert (= (and d!1135255 (not c!667145)) b!3826741))

(assert (= (or b!3826746 b!3826741) bm!281158))

(assert (= (and d!1135255 res!1549176) b!3826742))

(assert (= (and b!3826742 (not res!1549177)) b!3826739))

(assert (= (and b!3826739 res!1549172) b!3826745))

(assert (= (and b!3826742 res!1549174) b!3826744))

(assert (= (and b!3826744 (not res!1549173)) b!3826743))

(assert (= (and b!3826743 res!1549175) b!3826740))

(assert (=> b!3826740 m!4377885))

(assert (=> b!3826740 m!4378521))

(assert (=> b!3826740 m!4377885))

(assert (=> b!3826740 m!4378521))

(assert (=> b!3826740 m!4378523))

(declare-fun m!4378777 () Bool)

(assert (=> b!3826740 m!4378777))

(declare-fun m!4378779 () Bool)

(assert (=> b!3826740 m!4378779))

(declare-fun m!4378781 () Bool)

(assert (=> b!3826741 m!4378781))

(assert (=> d!1135255 m!4378507))

(assert (=> d!1135255 m!4378509))

(declare-fun m!4378783 () Bool)

(assert (=> d!1135255 m!4378783))

(declare-fun m!4378785 () Bool)

(assert (=> d!1135255 m!4378785))

(declare-fun m!4378787 () Bool)

(assert (=> d!1135255 m!4378787))

(assert (=> d!1135255 m!4377885))

(assert (=> d!1135255 m!4377885))

(assert (=> d!1135255 m!4378507))

(assert (=> d!1135255 m!4378403))

(assert (=> b!3826744 m!4378787))

(assert (=> b!3826743 m!4378777))

(assert (=> b!3826743 m!4377885))

(assert (=> b!3826743 m!4377885))

(assert (=> b!3826743 m!4378521))

(assert (=> b!3826743 m!4378521))

(assert (=> b!3826743 m!4378523))

(assert (=> b!3826742 m!4378787))

(assert (=> b!3826739 m!4378777))

(assert (=> b!3826739 m!4377885))

(assert (=> b!3826739 m!4377885))

(assert (=> b!3826739 m!4378507))

(assert (=> b!3826739 m!4378507))

(assert (=> b!3826739 m!4378527))

(assert (=> b!3826745 m!4377885))

(assert (=> b!3826745 m!4377885))

(assert (=> b!3826745 m!4378507))

(assert (=> b!3826745 m!4378507))

(assert (=> b!3826745 m!4378527))

(assert (=> b!3826745 m!4378777))

(assert (=> b!3826745 m!4378779))

(declare-fun m!4378789 () Bool)

(assert (=> bm!281158 m!4378789))

(assert (=> b!3826289 d!1135255))

(declare-fun d!1135261 () Bool)

(assert (=> d!1135261 (= (list!15048 (_1!22938 lt!1328283)) (list!15051 (c!667035 (_1!22938 lt!1328283))))))

(declare-fun bs!581901 () Bool)

(assert (= bs!581901 d!1135261))

(declare-fun m!4378791 () Bool)

(assert (=> bs!581901 m!4378791))

(assert (=> b!3826278 d!1135261))

(declare-fun b!3826909 () Bool)

(declare-fun e!2363494 () tuple2!39608)

(assert (=> b!3826909 (= e!2363494 (tuple2!39609 lt!1328295 (_2!22939 (v!38915 lt!1328285))))))

(declare-fun lt!1328772 () Option!8644)

(declare-fun lt!1328784 () BalanceConc!24430)

(declare-fun b!3826910 () Bool)

(assert (=> b!3826910 (= e!2363494 (lexTailRecV2!1155 thiss!11876 rules!1265 totalInput!335 lt!1328784 (_2!22939 (v!38915 lt!1328772)) (append!1088 lt!1328295 (_1!22939 (v!38915 lt!1328772)))))))

(declare-fun lt!1328769 () tuple2!39608)

(assert (=> b!3826910 (= lt!1328769 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328772))))))

(declare-fun lt!1328764 () List!40536)

(assert (=> b!3826910 (= lt!1328764 (list!15047 lt!1328305))))

(declare-fun lt!1328761 () List!40536)

(assert (=> b!3826910 (= lt!1328761 (list!15047 (charsOf!4060 (_1!22939 (v!38915 lt!1328772)))))))

(declare-fun lt!1328775 () List!40536)

(assert (=> b!3826910 (= lt!1328775 (list!15047 (_2!22939 (v!38915 lt!1328772))))))

(declare-fun lt!1328773 () Unit!58182)

(assert (=> b!3826910 (= lt!1328773 (lemmaConcatAssociativity!2204 lt!1328764 lt!1328761 lt!1328775))))

(assert (=> b!3826910 (= (++!10178 (++!10178 lt!1328764 lt!1328761) lt!1328775) (++!10178 lt!1328764 (++!10178 lt!1328761 lt!1328775)))))

(declare-fun lt!1328779 () Unit!58182)

(assert (=> b!3826910 (= lt!1328779 lt!1328773)))

(declare-fun lt!1328763 () Option!8644)

(assert (=> b!3826910 (= lt!1328763 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328285))))))

(declare-fun c!667173 () Bool)

(assert (=> b!3826910 (= c!667173 ((_ is Some!8643) lt!1328763))))

(declare-fun e!2363492 () tuple2!39608)

(assert (=> b!3826910 (= (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328285))) e!2363492)))

(declare-fun lt!1328785 () Unit!58182)

(declare-fun Unit!58186 () Unit!58182)

(assert (=> b!3826910 (= lt!1328785 Unit!58186)))

(declare-fun lt!1328759 () List!40538)

(assert (=> b!3826910 (= lt!1328759 (list!15048 lt!1328295))))

(declare-fun lt!1328783 () List!40538)

(assert (=> b!3826910 (= lt!1328783 (Cons!40414 (_1!22939 (v!38915 lt!1328772)) Nil!40414))))

(declare-fun lt!1328771 () List!40538)

(assert (=> b!3826910 (= lt!1328771 (list!15048 (_1!22938 lt!1328769)))))

(declare-fun lt!1328766 () Unit!58182)

(assert (=> b!3826910 (= lt!1328766 (lemmaConcatAssociativity!2203 lt!1328759 lt!1328783 lt!1328771))))

(assert (=> b!3826910 (= (++!10180 (++!10180 lt!1328759 lt!1328783) lt!1328771) (++!10180 lt!1328759 (++!10180 lt!1328783 lt!1328771)))))

(declare-fun lt!1328776 () Unit!58182)

(assert (=> b!3826910 (= lt!1328776 lt!1328766)))

(declare-fun lt!1328778 () List!40536)

(assert (=> b!3826910 (= lt!1328778 (++!10178 (list!15047 lt!1328305) (list!15047 (charsOf!4060 (_1!22939 (v!38915 lt!1328772))))))))

(declare-fun lt!1328756 () List!40536)

(assert (=> b!3826910 (= lt!1328756 (list!15047 (_2!22939 (v!38915 lt!1328772))))))

(declare-fun lt!1328780 () List!40538)

(assert (=> b!3826910 (= lt!1328780 (list!15048 (append!1088 lt!1328295 (_1!22939 (v!38915 lt!1328772)))))))

(declare-fun lt!1328767 () Unit!58182)

(assert (=> b!3826910 (= lt!1328767 (lemmaLexThenLexPrefix!573 thiss!11876 rules!1265 lt!1328778 lt!1328756 lt!1328780 (list!15048 (_1!22938 lt!1328769)) (list!15047 (_2!22938 lt!1328769))))))

(assert (=> b!3826910 (= (lexList!1581 thiss!11876 rules!1265 lt!1328778) (tuple2!39613 lt!1328780 Nil!40412))))

(declare-fun lt!1328757 () Unit!58182)

(assert (=> b!3826910 (= lt!1328757 lt!1328767)))

(declare-fun lt!1328768 () BalanceConc!24430)

(assert (=> b!3826910 (= lt!1328768 (++!10179 lt!1328305 (charsOf!4060 (_1!22939 (v!38915 lt!1328772)))))))

(declare-fun lt!1328758 () Option!8644)

(assert (=> b!3826910 (= lt!1328758 (maxPrefixZipperSequence!1217 thiss!11876 rules!1265 lt!1328768))))

(declare-fun c!667174 () Bool)

(assert (=> b!3826910 (= c!667174 ((_ is Some!8643) lt!1328758))))

(declare-fun e!2363493 () tuple2!39608)

(assert (=> b!3826910 (= (lexRec!835 thiss!11876 rules!1265 (++!10179 lt!1328305 (charsOf!4060 (_1!22939 (v!38915 lt!1328772))))) e!2363493)))

(declare-fun lt!1328781 () Unit!58182)

(declare-fun Unit!58187 () Unit!58182)

(assert (=> b!3826910 (= lt!1328781 Unit!58187)))

(assert (=> b!3826910 (= lt!1328784 (++!10179 lt!1328305 (charsOf!4060 (_1!22939 (v!38915 lt!1328772)))))))

(declare-fun lt!1328786 () List!40536)

(assert (=> b!3826910 (= lt!1328786 (list!15047 lt!1328784))))

(declare-fun lt!1328760 () List!40536)

(assert (=> b!3826910 (= lt!1328760 (list!15047 (_2!22939 (v!38915 lt!1328772))))))

(declare-fun lt!1328754 () Unit!58182)

(assert (=> b!3826910 (= lt!1328754 (lemmaConcatTwoListThenFSndIsSuffix!679 lt!1328786 lt!1328760))))

(assert (=> b!3826910 (isSuffix!994 lt!1328760 (++!10178 lt!1328786 lt!1328760))))

(declare-fun lt!1328777 () Unit!58182)

(assert (=> b!3826910 (= lt!1328777 lt!1328754)))

(declare-fun b!3826911 () Bool)

(assert (=> b!3826911 (= e!2363493 (tuple2!39609 (BalanceConc!24433 Empty!12419) lt!1328768))))

(declare-fun d!1135263 () Bool)

(declare-fun e!2363495 () Bool)

(assert (=> d!1135263 e!2363495))

(declare-fun res!1549241 () Bool)

(assert (=> d!1135263 (=> (not res!1549241) (not e!2363495))))

(declare-fun lt!1328765 () tuple2!39608)

(assert (=> d!1135263 (= res!1549241 (= (list!15048 (_1!22938 lt!1328765)) (list!15048 (_1!22938 (lexRec!835 thiss!11876 rules!1265 totalInput!335)))))))

(assert (=> d!1135263 (= lt!1328765 e!2363494)))

(declare-fun c!667175 () Bool)

(assert (=> d!1135263 (= c!667175 ((_ is Some!8643) lt!1328772))))

(assert (=> d!1135263 (= lt!1328772 (maxPrefixZipperSequenceV2!611 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328285)) totalInput!335))))

(declare-fun lt!1328774 () Unit!58182)

(declare-fun lt!1328770 () Unit!58182)

(assert (=> d!1135263 (= lt!1328774 lt!1328770)))

(declare-fun lt!1328782 () List!40536)

(declare-fun lt!1328755 () List!40536)

(assert (=> d!1135263 (isSuffix!994 lt!1328782 (++!10178 lt!1328755 lt!1328782))))

(assert (=> d!1135263 (= lt!1328770 (lemmaConcatTwoListThenFSndIsSuffix!679 lt!1328755 lt!1328782))))

(assert (=> d!1135263 (= lt!1328782 (list!15047 (_2!22939 (v!38915 lt!1328285))))))

(assert (=> d!1135263 (= lt!1328755 (list!15047 lt!1328305))))

(assert (=> d!1135263 (= (lexTailRecV2!1155 thiss!11876 rules!1265 totalInput!335 lt!1328305 (_2!22939 (v!38915 lt!1328285)) lt!1328295) lt!1328765)))

(declare-fun lt!1328762 () tuple2!39608)

(declare-fun b!3826912 () Bool)

(assert (=> b!3826912 (= lt!1328762 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328763))))))

(assert (=> b!3826912 (= e!2363492 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328762) (_1!22939 (v!38915 lt!1328763))) (_2!22938 lt!1328762)))))

(declare-fun b!3826913 () Bool)

(assert (=> b!3826913 (= e!2363495 (= (list!15047 (_2!22938 lt!1328765)) (list!15047 (_2!22938 (lexRec!835 thiss!11876 rules!1265 totalInput!335)))))))

(declare-fun b!3826914 () Bool)

(assert (=> b!3826914 (= e!2363492 (tuple2!39609 (BalanceConc!24433 Empty!12419) (_2!22939 (v!38915 lt!1328285))))))

(declare-fun b!3826915 () Bool)

(declare-fun lt!1328787 () tuple2!39608)

(assert (=> b!3826915 (= lt!1328787 (lexRec!835 thiss!11876 rules!1265 (_2!22939 (v!38915 lt!1328758))))))

(assert (=> b!3826915 (= e!2363493 (tuple2!39609 (prepend!1376 (_1!22938 lt!1328787) (_1!22939 (v!38915 lt!1328758))) (_2!22938 lt!1328787)))))

(assert (= (and d!1135263 c!667175) b!3826910))

(assert (= (and d!1135263 (not c!667175)) b!3826909))

(assert (= (and b!3826910 c!667173) b!3826912))

(assert (= (and b!3826910 (not c!667173)) b!3826914))

(assert (= (and b!3826910 c!667174) b!3826915))

(assert (= (and b!3826910 (not c!667174)) b!3826911))

(assert (= (and d!1135263 res!1549241) b!3826913))

(declare-fun m!4379011 () Bool)

(assert (=> d!1135263 m!4379011))

(declare-fun m!4379013 () Bool)

(assert (=> d!1135263 m!4379013))

(declare-fun m!4379015 () Bool)

(assert (=> d!1135263 m!4379015))

(assert (=> d!1135263 m!4379011))

(declare-fun m!4379017 () Bool)

(assert (=> d!1135263 m!4379017))

(assert (=> d!1135263 m!4377879))

(assert (=> d!1135263 m!4377821))

(assert (=> d!1135263 m!4377863))

(declare-fun m!4379019 () Bool)

(assert (=> d!1135263 m!4379019))

(declare-fun m!4379021 () Bool)

(assert (=> d!1135263 m!4379021))

(declare-fun m!4379023 () Bool)

(assert (=> b!3826912 m!4379023))

(declare-fun m!4379025 () Bool)

(assert (=> b!3826912 m!4379025))

(declare-fun m!4379027 () Bool)

(assert (=> b!3826915 m!4379027))

(declare-fun m!4379029 () Bool)

(assert (=> b!3826915 m!4379029))

(declare-fun m!4379031 () Bool)

(assert (=> b!3826913 m!4379031))

(assert (=> b!3826913 m!4377821))

(declare-fun m!4379033 () Bool)

(assert (=> b!3826913 m!4379033))

(assert (=> b!3826910 m!4377857))

(declare-fun m!4379035 () Bool)

(assert (=> b!3826910 m!4379035))

(declare-fun m!4379037 () Bool)

(assert (=> b!3826910 m!4379037))

(declare-fun m!4379039 () Bool)

(assert (=> b!3826910 m!4379039))

(declare-fun m!4379041 () Bool)

(assert (=> b!3826910 m!4379041))

(declare-fun m!4379043 () Bool)

(assert (=> b!3826910 m!4379043))

(declare-fun m!4379045 () Bool)

(assert (=> b!3826910 m!4379045))

(declare-fun m!4379047 () Bool)

(assert (=> b!3826910 m!4379047))

(declare-fun m!4379049 () Bool)

(assert (=> b!3826910 m!4379049))

(declare-fun m!4379051 () Bool)

(assert (=> b!3826910 m!4379051))

(declare-fun m!4379053 () Bool)

(assert (=> b!3826910 m!4379053))

(assert (=> b!3826910 m!4379043))

(declare-fun m!4379055 () Bool)

(assert (=> b!3826910 m!4379055))

(assert (=> b!3826910 m!4377863))

(assert (=> b!3826910 m!4378623))

(declare-fun m!4379057 () Bool)

(assert (=> b!3826910 m!4379057))

(declare-fun m!4379059 () Bool)

(assert (=> b!3826910 m!4379059))

(declare-fun m!4379061 () Bool)

(assert (=> b!3826910 m!4379061))

(declare-fun m!4379063 () Bool)

(assert (=> b!3826910 m!4379063))

(assert (=> b!3826910 m!4377875))

(assert (=> b!3826910 m!4379043))

(declare-fun m!4379065 () Bool)

(assert (=> b!3826910 m!4379065))

(declare-fun m!4379067 () Bool)

(assert (=> b!3826910 m!4379067))

(assert (=> b!3826910 m!4379041))

(declare-fun m!4379069 () Bool)

(assert (=> b!3826910 m!4379069))

(assert (=> b!3826910 m!4379061))

(declare-fun m!4379071 () Bool)

(assert (=> b!3826910 m!4379071))

(assert (=> b!3826910 m!4379053))

(declare-fun m!4379073 () Bool)

(assert (=> b!3826910 m!4379073))

(declare-fun m!4379075 () Bool)

(assert (=> b!3826910 m!4379075))

(declare-fun m!4379077 () Bool)

(assert (=> b!3826910 m!4379077))

(declare-fun m!4379079 () Bool)

(assert (=> b!3826910 m!4379079))

(assert (=> b!3826910 m!4379067))

(assert (=> b!3826910 m!4379061))

(assert (=> b!3826910 m!4379063))

(declare-fun m!4379081 () Bool)

(assert (=> b!3826910 m!4379081))

(declare-fun m!4379083 () Bool)

(assert (=> b!3826910 m!4379083))

(assert (=> b!3826910 m!4379035))

(assert (=> b!3826910 m!4379045))

(assert (=> b!3826910 m!4379075))

(assert (=> b!3826910 m!4379079))

(declare-fun m!4379085 () Bool)

(assert (=> b!3826910 m!4379085))

(declare-fun m!4379087 () Bool)

(assert (=> b!3826910 m!4379087))

(declare-fun m!4379089 () Bool)

(assert (=> b!3826910 m!4379089))

(assert (=> b!3826910 m!4377863))

(assert (=> b!3826910 m!4379071))

(declare-fun m!4379091 () Bool)

(assert (=> b!3826910 m!4379091))

(assert (=> b!3826278 d!1135263))

(declare-fun d!1135311 () Bool)

(assert (=> d!1135311 (= (isEmpty!23842 rules!1265) ((_ is Nil!40415) rules!1265))))

(assert (=> b!3826288 d!1135311))

(declare-fun e!2363501 () Bool)

(declare-fun tp!1158368 () Bool)

(declare-fun tp!1158367 () Bool)

(declare-fun b!3826924 () Bool)

(assert (=> b!3826924 (= e!2363501 (and (inv!54459 (left!31270 (c!667033 totalInput!335))) tp!1158368 (inv!54459 (right!31600 (c!667033 totalInput!335))) tp!1158367))))

(declare-fun b!3826926 () Bool)

(declare-fun e!2363500 () Bool)

(declare-fun tp!1158366 () Bool)

(assert (=> b!3826926 (= e!2363500 tp!1158366)))

(declare-fun b!3826925 () Bool)

(declare-fun inv!54474 (IArray!24841) Bool)

(assert (=> b!3826925 (= e!2363501 (and (inv!54474 (xs!15712 (c!667033 totalInput!335))) e!2363500))))

(assert (=> b!3826293 (= tp!1158297 (and (inv!54459 (c!667033 totalInput!335)) e!2363501))))

(assert (= (and b!3826293 ((_ is Node!12418) (c!667033 totalInput!335))) b!3826924))

(assert (= b!3826925 b!3826926))

(assert (= (and b!3826293 ((_ is Leaf!19227) (c!667033 totalInput!335))) b!3826925))

(declare-fun m!4379093 () Bool)

(assert (=> b!3826924 m!4379093))

(declare-fun m!4379095 () Bool)

(assert (=> b!3826924 m!4379095))

(declare-fun m!4379097 () Bool)

(assert (=> b!3826925 m!4379097))

(assert (=> b!3826293 m!4377807))

(declare-fun b!3826937 () Bool)

(declare-fun b_free!101589 () Bool)

(declare-fun b_next!102293 () Bool)

(assert (=> b!3826937 (= b_free!101589 (not b_next!102293))))

(declare-fun tp!1158378 () Bool)

(declare-fun b_and!284483 () Bool)

(assert (=> b!3826937 (= tp!1158378 b_and!284483)))

(declare-fun b_free!101591 () Bool)

(declare-fun b_next!102295 () Bool)

(assert (=> b!3826937 (= b_free!101591 (not b_next!102295))))

(declare-fun tb!219675 () Bool)

(declare-fun t!308866 () Bool)

(assert (=> (and b!3826937 (= (toChars!8481 (transformation!6222 (h!45835 (t!308858 rules!1265)))) (toChars!8481 (transformation!6222 (rule!9046 (_1!22939 (v!38915 lt!1328285)))))) t!308866) tb!219675))

(declare-fun result!267772 () Bool)

(assert (= result!267772 result!267754))

(assert (=> d!1135199 t!308866))

(declare-fun tp!1158379 () Bool)

(declare-fun b_and!284485 () Bool)

(assert (=> b!3826937 (= tp!1158379 (and (=> t!308866 result!267772) b_and!284485))))

(declare-fun e!2363512 () Bool)

(assert (=> b!3826937 (= e!2363512 (and tp!1158378 tp!1158379))))

(declare-fun b!3826936 () Bool)

(declare-fun e!2363510 () Bool)

(declare-fun tp!1158380 () Bool)

(assert (=> b!3826936 (= e!2363510 (and tp!1158380 (inv!54453 (tag!7082 (h!45835 (t!308858 rules!1265)))) (inv!54463 (transformation!6222 (h!45835 (t!308858 rules!1265)))) e!2363512))))

(declare-fun b!3826935 () Bool)

(declare-fun e!2363511 () Bool)

(declare-fun tp!1158377 () Bool)

(assert (=> b!3826935 (= e!2363511 (and e!2363510 tp!1158377))))

(assert (=> b!3826286 (= tp!1158299 e!2363511)))

(assert (= b!3826936 b!3826937))

(assert (= b!3826935 b!3826936))

(assert (= (and b!3826286 ((_ is Cons!40415) (t!308858 rules!1265))) b!3826935))

(declare-fun m!4379099 () Bool)

(assert (=> b!3826936 m!4379099))

(declare-fun m!4379101 () Bool)

(assert (=> b!3826936 m!4379101))

(declare-fun tp!1158383 () Bool)

(declare-fun b!3826938 () Bool)

(declare-fun e!2363515 () Bool)

(declare-fun tp!1158382 () Bool)

(assert (=> b!3826938 (= e!2363515 (and (inv!54459 (left!31270 (c!667033 input!678))) tp!1158383 (inv!54459 (right!31600 (c!667033 input!678))) tp!1158382))))

(declare-fun b!3826940 () Bool)

(declare-fun e!2363514 () Bool)

(declare-fun tp!1158381 () Bool)

(assert (=> b!3826940 (= e!2363514 tp!1158381)))

(declare-fun b!3826939 () Bool)

(assert (=> b!3826939 (= e!2363515 (and (inv!54474 (xs!15712 (c!667033 input!678))) e!2363514))))

(assert (=> b!3826275 (= tp!1158296 (and (inv!54459 (c!667033 input!678)) e!2363515))))

(assert (= (and b!3826275 ((_ is Node!12418) (c!667033 input!678))) b!3826938))

(assert (= b!3826939 b!3826940))

(assert (= (and b!3826275 ((_ is Leaf!19227) (c!667033 input!678))) b!3826939))

(declare-fun m!4379103 () Bool)

(assert (=> b!3826938 m!4379103))

(declare-fun m!4379105 () Bool)

(assert (=> b!3826938 m!4379105))

(declare-fun m!4379107 () Bool)

(assert (=> b!3826939 m!4379107))

(assert (=> b!3826275 m!4377811))

(declare-fun b!3826954 () Bool)

(declare-fun e!2363518 () Bool)

(declare-fun tp!1158394 () Bool)

(declare-fun tp!1158397 () Bool)

(assert (=> b!3826954 (= e!2363518 (and tp!1158394 tp!1158397))))

(declare-fun b!3826953 () Bool)

(declare-fun tp!1158395 () Bool)

(assert (=> b!3826953 (= e!2363518 tp!1158395)))

(declare-fun b!3826952 () Bool)

(declare-fun tp!1158396 () Bool)

(declare-fun tp!1158398 () Bool)

(assert (=> b!3826952 (= e!2363518 (and tp!1158396 tp!1158398))))

(assert (=> b!3826296 (= tp!1158301 e!2363518)))

(declare-fun b!3826951 () Bool)

(declare-fun tp_is_empty!19205 () Bool)

(assert (=> b!3826951 (= e!2363518 tp_is_empty!19205)))

(assert (= (and b!3826296 ((_ is ElementMatch!11127) (regex!6222 (h!45835 rules!1265)))) b!3826951))

(assert (= (and b!3826296 ((_ is Concat!17580) (regex!6222 (h!45835 rules!1265)))) b!3826952))

(assert (= (and b!3826296 ((_ is Star!11127) (regex!6222 (h!45835 rules!1265)))) b!3826953))

(assert (= (and b!3826296 ((_ is Union!11127) (regex!6222 (h!45835 rules!1265)))) b!3826954))

(declare-fun e!2363520 () Bool)

(declare-fun tp!1158400 () Bool)

(declare-fun tp!1158401 () Bool)

(declare-fun b!3826955 () Bool)

(assert (=> b!3826955 (= e!2363520 (and (inv!54459 (left!31270 (c!667033 treated!13))) tp!1158401 (inv!54459 (right!31600 (c!667033 treated!13))) tp!1158400))))

(declare-fun b!3826957 () Bool)

(declare-fun e!2363519 () Bool)

(declare-fun tp!1158399 () Bool)

(assert (=> b!3826957 (= e!2363519 tp!1158399)))

(declare-fun b!3826956 () Bool)

(assert (=> b!3826956 (= e!2363520 (and (inv!54474 (xs!15712 (c!667033 treated!13))) e!2363519))))

(assert (=> b!3826274 (= tp!1158302 (and (inv!54459 (c!667033 treated!13)) e!2363520))))

(assert (= (and b!3826274 ((_ is Node!12418) (c!667033 treated!13))) b!3826955))

(assert (= b!3826956 b!3826957))

(assert (= (and b!3826274 ((_ is Leaf!19227) (c!667033 treated!13))) b!3826956))

(declare-fun m!4379109 () Bool)

(assert (=> b!3826955 m!4379109))

(declare-fun m!4379111 () Bool)

(assert (=> b!3826955 m!4379111))

(declare-fun m!4379113 () Bool)

(assert (=> b!3826956 m!4379113))

(assert (=> b!3826274 m!4377809))

(declare-fun tp!1158409 () Bool)

(declare-fun tp!1158408 () Bool)

(declare-fun e!2363525 () Bool)

(declare-fun b!3826966 () Bool)

(assert (=> b!3826966 (= e!2363525 (and (inv!54462 (left!31271 (c!667035 acc!335))) tp!1158409 (inv!54462 (right!31601 (c!667035 acc!335))) tp!1158408))))

(declare-fun b!3826968 () Bool)

(declare-fun e!2363526 () Bool)

(declare-fun tp!1158410 () Bool)

(assert (=> b!3826968 (= e!2363526 tp!1158410)))

(declare-fun b!3826967 () Bool)

(declare-fun inv!54475 (IArray!24843) Bool)

(assert (=> b!3826967 (= e!2363525 (and (inv!54475 (xs!15713 (c!667035 acc!335))) e!2363526))))

(assert (=> b!3826294 (= tp!1158300 (and (inv!54462 (c!667035 acc!335)) e!2363525))))

(assert (= (and b!3826294 ((_ is Node!12419) (c!667035 acc!335))) b!3826966))

(assert (= b!3826967 b!3826968))

(assert (= (and b!3826294 ((_ is Leaf!19228) (c!667035 acc!335))) b!3826967))

(declare-fun m!4379115 () Bool)

(assert (=> b!3826966 m!4379115))

(declare-fun m!4379117 () Bool)

(assert (=> b!3826966 m!4379117))

(declare-fun m!4379119 () Bool)

(assert (=> b!3826967 m!4379119))

(assert (=> b!3826294 m!4377897))

(check-sat (not b!3826693) (not b!3826402) (not b!3826686) (not b!3826967) (not b!3826523) (not b!3826394) (not b!3826912) (not b!3826690) (not b!3826953) b_and!284471 (not b!3826479) (not d!1135135) (not d!1135261) (not b!3826624) (not d!1135225) (not d!1135237) (not b!3826700) (not b!3826742) (not b!3826935) (not d!1135099) (not b!3826627) (not b_next!102287) (not b!3826677) (not d!1135233) (not d!1135167) (not b!3826397) (not b!3826640) (not d!1135115) (not b!3826913) (not d!1135201) (not d!1135235) (not d!1135251) (not d!1135191) (not b!3826400) (not d!1135245) (not tb!219671) (not d!1135215) (not b!3826952) (not d!1135101) (not b!3826500) (not bm!281154) (not b!3826621) (not b!3826613) (not b!3826444) (not b!3826687) (not b!3826698) (not d!1135193) (not b!3826467) (not b!3826663) (not b_lambda!111961) (not b!3826655) tp_is_empty!19205 (not b!3826399) (not b!3826925) (not b!3826391) (not b!3826588) (not b!3826740) (not d!1135151) (not b!3826681) (not b!3826697) (not b!3826675) (not d!1135205) (not d!1135219) (not d!1135229) (not b!3826501) (not d!1135103) (not b!3826739) (not b!3826466) (not b!3826294) (not d!1135109) (not b_next!102285) (not d!1135095) (not d!1135097) (not d!1135211) (not d!1135217) (not d!1135199) (not b!3826414) (not b!3826392) (not d!1135221) (not b!3826581) (not b!3826419) (not b!3826416) (not b!3826940) (not d!1135139) (not d!1135153) (not b!3826592) (not b!3826593) (not b!3826954) (not d!1135195) (not b!3826924) (not b!3826939) (not b!3826938) (not b!3826469) (not b!3826274) (not d!1135157) (not b!3826609) (not b!3826632) (not d!1135121) (not b!3826612) (not d!1135131) (not b!3826580) (not b!3826636) (not b!3826275) (not b!3826614) (not b!3826393) (not b!3826475) (not d!1135123) (not b!3826471) (not b!3826966) (not bm!281158) (not b!3826415) (not b!3826956) (not b!3826745) (not b!3826682) (not b!3826401) b_and!284477 (not b!3826503) (not b!3826626) (not b!3826968) (not b!3826631) (not b!3826474) (not b!3826477) (not bm!281155) (not d!1135119) (not b!3826664) (not d!1135207) (not b!3826639) (not b!3826741) (not b!3826404) (not b!3826616) (not b!3826579) (not d!1135069) (not d!1135105) (not d!1135223) (not b!3826417) b_and!284485 (not b!3826481) (not b!3826582) (not b!3826584) (not b_next!102295) (not b!3826476) (not b!3826957) (not d!1135231) (not b!3826652) (not d!1135149) (not b!3826689) (not b!3826699) (not d!1135129) (not d!1135163) (not b!3826398) (not b!3826625) (not b!3826420) (not d!1135227) (not b!3826654) (not b!3826610) (not b!3826910) (not d!1135255) (not b!3826615) (not b!3826657) (not b!3826680) (not b!3826678) (not b!3826955) (not b!3826629) (not b!3826395) (not b!3826744) (not b!3826293) (not b!3826418) (not d!1135239) (not d!1135093) (not b!3826702) (not b!3826743) (not b!3826696) (not d!1135155) (not d!1135141) (not b!3826589) (not b!3826586) (not d!1135253) (not b!3826676) (not b!3826421) (not d!1135209) (not d!1135263) (not d!1135213) (not b!3826456) (not d!1135125) (not b!3826446) (not b!3826526) (not b!3826660) (not b!3826679) (not b!3826674) (not b!3826618) (not b!3826478) (not d!1135241) (not b!3826659) (not d!1135249) (not b!3826936) (not b!3826623) (not b!3826622) (not b!3826915) (not d!1135197) (not b!3826423) (not b!3826684) (not b!3826498) (not b!3826635) (not b_next!102293) (not b!3826583) (not b!3826926) (not d!1135203) (not d!1135243) (not d!1135247) b_and!284483 (not b!3826413) (not b!3826599))
(check-sat b_and!284471 (not b_next!102287) (not b_next!102285) b_and!284477 (not b_next!102293) b_and!284483 b_and!284485 (not b_next!102295))
