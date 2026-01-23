; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!745696 () Bool)

(assert start!745696)

(declare-fun b!7904118 () Bool)

(declare-fun b_free!134847 () Bool)

(declare-fun b_next!135637 () Bool)

(assert (=> b!7904118 (= b_free!134847 (not b_next!135637))))

(declare-fun tp!2354677 () Bool)

(declare-fun b_and!352939 () Bool)

(assert (=> b!7904118 (= tp!2354677 b_and!352939)))

(declare-fun b_free!134849 () Bool)

(declare-fun b_next!135639 () Bool)

(assert (=> b!7904118 (= b_free!134849 (not b_next!135639))))

(declare-fun tp!2354680 () Bool)

(declare-fun b_and!352941 () Bool)

(assert (=> b!7904118 (= tp!2354680 b_and!352941)))

(declare-fun b!7904116 () Bool)

(declare-fun res!3136363 () Bool)

(declare-fun e!4665562 () Bool)

(assert (=> b!7904116 (=> res!3136363 e!4665562)))

(declare-datatypes ((List!74350 0))(
  ( (Nil!74226) (Cons!74226 (h!80674 (_ BitVec 16)) (t!389453 List!74350)) )
))
(declare-datatypes ((TokenValue!8926 0))(
  ( (FloatLiteralValue!17852 (text!62927 List!74350)) (TokenValueExt!8925 (__x!35139 Int)) (Broken!44630 (value!287340 List!74350)) (Object!9049) (End!8926) (Def!8926) (Underscore!8926) (Match!8926) (Else!8926) (Error!8926) (Case!8926) (If!8926) (Extends!8926) (Abstract!8926) (Class!8926) (Val!8926) (DelimiterValue!17852 (del!8986 List!74350)) (KeywordValue!8932 (value!287341 List!74350)) (CommentValue!17852 (value!287342 List!74350)) (WhitespaceValue!17852 (value!287343 List!74350)) (IndentationValue!8926 (value!287344 List!74350)) (String!83051) (Int32!8926) (Broken!44631 (value!287345 List!74350)) (Boolean!8927) (Unit!169262) (OperatorValue!8929 (op!8986 List!74350)) (IdentifierValue!17852 (value!287346 List!74350)) (IdentifierValue!17853 (value!287347 List!74350)) (WhitespaceValue!17853 (value!287348 List!74350)) (True!17852) (False!17852) (Broken!44632 (value!287349 List!74350)) (Broken!44633 (value!287350 List!74350)) (True!17853) (RightBrace!8926) (RightBracket!8926) (Colon!8926) (Null!8926) (Comma!8926) (LeftBracket!8926) (False!17853) (LeftBrace!8926) (ImaginaryLiteralValue!8926 (text!62928 List!74350)) (StringLiteralValue!26778 (value!287351 List!74350)) (EOFValue!8926 (value!287352 List!74350)) (IdentValue!8926 (value!287353 List!74350)) (DelimiterValue!17853 (value!287354 List!74350)) (DedentValue!8926 (value!287355 List!74350)) (NewLineValue!8926 (value!287356 List!74350)) (IntegerValue!26778 (value!287357 (_ BitVec 32)) (text!62929 List!74350)) (IntegerValue!26779 (value!287358 Int) (text!62930 List!74350)) (Times!8926) (Or!8926) (Equal!8926) (Minus!8926) (Broken!44634 (value!287359 List!74350)) (And!8926) (Div!8926) (LessEqual!8926) (Mod!8926) (Concat!30239) (Not!8926) (Plus!8926) (SpaceValue!8926 (value!287360 List!74350)) (IntegerValue!26780 (value!287361 Int) (text!62931 List!74350)) (StringLiteralValue!26779 (text!62932 List!74350)) (FloatLiteralValue!17853 (text!62933 List!74350)) (BytesLiteralValue!8926 (value!287362 List!74350)) (CommentValue!17853 (value!287363 List!74350)) (StringLiteralValue!26780 (value!287364 List!74350)) (ErrorTokenValue!8926 (msg!8987 List!74350)) )
))
(declare-datatypes ((C!42956 0))(
  ( (C!42957 (val!31942 Int)) )
))
(declare-datatypes ((List!74351 0))(
  ( (Nil!74227) (Cons!74227 (h!80675 C!42956) (t!389454 List!74351)) )
))
(declare-datatypes ((IArray!31629 0))(
  ( (IArray!31630 (innerList!15872 List!74351)) )
))
(declare-datatypes ((Conc!15784 0))(
  ( (Node!15784 (left!56616 Conc!15784) (right!56946 Conc!15784) (csize!31798 Int) (cheight!15995 Int)) (Leaf!30057 (xs!19166 IArray!31629) (csize!31799 Int)) (Empty!15784) )
))
(declare-datatypes ((BalanceConc!30686 0))(
  ( (BalanceConc!30687 (c!1450453 Conc!15784)) )
))
(declare-datatypes ((String!83052 0))(
  ( (String!83053 (value!287365 String)) )
))
(declare-datatypes ((Regex!21313 0))(
  ( (ElementMatch!21313 (c!1450454 C!42956)) (Concat!30240 (regOne!43138 Regex!21313) (regTwo!43138 Regex!21313)) (EmptyExpr!21313) (Star!21313 (reg!21642 Regex!21313)) (EmptyLang!21313) (Union!21313 (regOne!43139 Regex!21313) (regTwo!43139 Regex!21313)) )
))
(declare-datatypes ((TokenValueInjection!17160 0))(
  ( (TokenValueInjection!17161 (toValue!11663 Int) (toChars!11522 Int)) )
))
(declare-datatypes ((Rule!17020 0))(
  ( (Rule!17021 (regex!8610 Regex!21313) (tag!9474 String!83052) (isSeparator!8610 Bool) (transformation!8610 TokenValueInjection!17160)) )
))
(declare-datatypes ((Token!15640 0))(
  ( (Token!15641 (value!287366 TokenValue!8926) (rule!11900 Rule!17020) (size!43016 Int) (originalCharacters!8851 List!74351)) )
))
(declare-datatypes ((tuple2!70250 0))(
  ( (tuple2!70251 (_1!38428 Token!15640) (_2!38428 List!74351)) )
))
(declare-fun lt!2684494 () tuple2!70250)

(declare-fun input!1184 () List!74351)

(declare-fun size!43017 (List!74351) Int)

(assert (=> b!7904116 (= res!3136363 (>= (size!43017 (_2!38428 lt!2684494)) (size!43017 input!1184)))))

(declare-fun b!7904117 () Bool)

(declare-fun e!4665566 () Bool)

(declare-fun tp_is_empty!53001 () Bool)

(declare-fun tp!2354678 () Bool)

(assert (=> b!7904117 (= e!4665566 (and tp_is_empty!53001 tp!2354678))))

(declare-fun e!4665563 () Bool)

(assert (=> b!7904118 (= e!4665563 (and tp!2354677 tp!2354680))))

(declare-fun b!7904119 () Bool)

(declare-fun res!3136362 () Bool)

(assert (=> b!7904119 (=> res!3136362 e!4665562)))

(declare-fun lt!2684496 () List!74351)

(declare-fun ++!18168 (List!74351 List!74351) List!74351)

(assert (=> b!7904119 (= res!3136362 (not (= (++!18168 lt!2684496 (_2!38428 lt!2684494)) input!1184)))))

(declare-fun b!7904120 () Bool)

(declare-fun e!4665558 () Bool)

(assert (=> b!7904120 (= e!4665558 e!4665562)))

(declare-fun res!3136368 () Bool)

(assert (=> b!7904120 (=> res!3136368 e!4665562)))

(assert (=> b!7904120 (= res!3136368 (not (= lt!2684496 (originalCharacters!8851 (_1!38428 lt!2684494)))))))

(declare-fun list!19241 (BalanceConc!30686) List!74351)

(declare-fun charsOf!5554 (Token!15640) BalanceConc!30686)

(assert (=> b!7904120 (= lt!2684496 (list!19241 (charsOf!5554 (_1!38428 lt!2684494))))))

(declare-datatypes ((Option!17892 0))(
  ( (None!17891) (Some!17891 (v!55034 tuple2!70250)) )
))
(declare-fun lt!2684495 () Option!17892)

(declare-fun get!26669 (Option!17892) tuple2!70250)

(assert (=> b!7904120 (= lt!2684494 (get!26669 lt!2684495))))

(declare-fun b!7904121 () Bool)

(declare-fun res!3136370 () Bool)

(declare-fun e!4665565 () Bool)

(assert (=> b!7904121 (=> (not res!3136370) (not e!4665565))))

(declare-datatypes ((List!74352 0))(
  ( (Nil!74228) (Cons!74228 (h!80676 Rule!17020) (t!389455 List!74352)) )
))
(declare-fun rulesArg!141 () List!74352)

(declare-fun isEmpty!42590 (List!74352) Bool)

(assert (=> b!7904121 (= res!3136370 (not (isEmpty!42590 rulesArg!141)))))

(declare-fun b!7904122 () Bool)

(declare-fun e!4665560 () Bool)

(assert (=> b!7904122 (= e!4665565 (not e!4665560))))

(declare-fun res!3136364 () Bool)

(assert (=> b!7904122 (=> res!3136364 e!4665560)))

(get-info :version)

(assert (=> b!7904122 (= res!3136364 (or (and ((_ is Cons!74228) rulesArg!141) ((_ is Nil!74228) (t!389455 rulesArg!141))) (not ((_ is Cons!74228) rulesArg!141))))))

(declare-fun isPrefix!6443 (List!74351 List!74351) Bool)

(assert (=> b!7904122 (isPrefix!6443 input!1184 input!1184)))

(declare-datatypes ((Unit!169263 0))(
  ( (Unit!169264) )
))
(declare-fun lt!2684497 () Unit!169263)

(declare-fun lemmaIsPrefixRefl!3954 (List!74351 List!74351) Unit!169263)

(assert (=> b!7904122 (= lt!2684497 (lemmaIsPrefixRefl!3954 input!1184 input!1184))))

(declare-fun b!7904123 () Bool)

(declare-fun res!3136365 () Bool)

(assert (=> b!7904123 (=> res!3136365 e!4665562)))

(declare-fun apply!14339 (TokenValueInjection!17160 BalanceConc!30686) TokenValue!8926)

(declare-fun seqFromList!6157 (List!74351) BalanceConc!30686)

(assert (=> b!7904123 (= res!3136365 (not (= (value!287366 (_1!38428 lt!2684494)) (apply!14339 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494)))))))))

(declare-fun res!3136361 () Bool)

(assert (=> start!745696 (=> (not res!3136361) (not e!4665565))))

(declare-datatypes ((LexerInterface!8202 0))(
  ( (LexerInterfaceExt!8199 (__x!35140 Int)) (Lexer!8200) )
))
(declare-fun thiss!14377 () LexerInterface!8202)

(assert (=> start!745696 (= res!3136361 ((_ is Lexer!8200) thiss!14377))))

(assert (=> start!745696 e!4665565))

(assert (=> start!745696 true))

(declare-fun e!4665559 () Bool)

(assert (=> start!745696 e!4665559))

(assert (=> start!745696 e!4665566))

(declare-fun e!4665561 () Bool)

(declare-fun b!7904124 () Bool)

(declare-fun tp!2354679 () Bool)

(declare-fun inv!95217 (String!83052) Bool)

(declare-fun inv!95219 (TokenValueInjection!17160) Bool)

(assert (=> b!7904124 (= e!4665561 (and tp!2354679 (inv!95217 (tag!9474 (h!80676 rulesArg!141))) (inv!95219 (transformation!8610 (h!80676 rulesArg!141))) e!4665563))))

(declare-fun b!7904125 () Bool)

(assert (=> b!7904125 (= e!4665560 e!4665558)))

(declare-fun res!3136366 () Bool)

(assert (=> b!7904125 (=> res!3136366 e!4665558)))

(declare-fun lt!2684498 () Option!17892)

(assert (=> b!7904125 (= res!3136366 (or (and ((_ is None!17891) lt!2684498) ((_ is None!17891) lt!2684495)) ((_ is None!17891) lt!2684495) ((_ is None!17891) lt!2684498) (>= (size!43016 (_1!38428 (v!55034 lt!2684498))) (size!43016 (_1!38428 (v!55034 lt!2684495))))))))

(declare-fun maxPrefix!4743 (LexerInterface!8202 List!74352 List!74351) Option!17892)

(assert (=> b!7904125 (= lt!2684495 (maxPrefix!4743 thiss!14377 (t!389455 rulesArg!141) input!1184))))

(declare-fun maxPrefixOneRule!3790 (LexerInterface!8202 Rule!17020 List!74351) Option!17892)

(assert (=> b!7904125 (= lt!2684498 (maxPrefixOneRule!3790 thiss!14377 (h!80676 rulesArg!141) input!1184))))

(declare-fun b!7904126 () Bool)

(declare-fun res!3136367 () Bool)

(assert (=> b!7904126 (=> res!3136367 e!4665558)))

(declare-fun isEmpty!42591 (Option!17892) Bool)

(assert (=> b!7904126 (= res!3136367 (isEmpty!42591 lt!2684495))))

(declare-fun b!7904127 () Bool)

(declare-fun res!3136369 () Bool)

(assert (=> b!7904127 (=> (not res!3136369) (not e!4665565))))

(declare-fun rulesValidInductive!3421 (LexerInterface!8202 List!74352) Bool)

(assert (=> b!7904127 (= res!3136369 (rulesValidInductive!3421 thiss!14377 rulesArg!141))))

(declare-fun b!7904128 () Bool)

(declare-fun res!3136360 () Bool)

(assert (=> b!7904128 (=> res!3136360 e!4665558)))

(declare-fun isDefined!14468 (Option!17892) Bool)

(assert (=> b!7904128 (= res!3136360 (not (isDefined!14468 lt!2684495)))))

(declare-fun b!7904129 () Bool)

(declare-fun tp!2354676 () Bool)

(assert (=> b!7904129 (= e!4665559 (and e!4665561 tp!2354676))))

(declare-fun b!7904130 () Bool)

(declare-fun validRegex!11649 (Regex!21313) Bool)

(assert (=> b!7904130 (= e!4665562 (validRegex!11649 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))

(assert (= (and start!745696 res!3136361) b!7904127))

(assert (= (and b!7904127 res!3136369) b!7904121))

(assert (= (and b!7904121 res!3136370) b!7904122))

(assert (= (and b!7904122 (not res!3136364)) b!7904125))

(assert (= (and b!7904125 (not res!3136366)) b!7904126))

(assert (= (and b!7904126 (not res!3136367)) b!7904128))

(assert (= (and b!7904128 (not res!3136360)) b!7904120))

(assert (= (and b!7904120 (not res!3136368)) b!7904116))

(assert (= (and b!7904116 (not res!3136363)) b!7904119))

(assert (= (and b!7904119 (not res!3136362)) b!7904123))

(assert (= (and b!7904123 (not res!3136365)) b!7904130))

(assert (= b!7904124 b!7904118))

(assert (= b!7904129 b!7904124))

(assert (= (and start!745696 ((_ is Cons!74228) rulesArg!141)) b!7904129))

(assert (= (and start!745696 ((_ is Cons!74227) input!1184)) b!7904117))

(declare-fun m!8278710 () Bool)

(assert (=> b!7904125 m!8278710))

(declare-fun m!8278712 () Bool)

(assert (=> b!7904125 m!8278712))

(declare-fun m!8278714 () Bool)

(assert (=> b!7904122 m!8278714))

(declare-fun m!8278716 () Bool)

(assert (=> b!7904122 m!8278716))

(declare-fun m!8278718 () Bool)

(assert (=> b!7904119 m!8278718))

(declare-fun m!8278720 () Bool)

(assert (=> b!7904130 m!8278720))

(declare-fun m!8278722 () Bool)

(assert (=> b!7904123 m!8278722))

(assert (=> b!7904123 m!8278722))

(declare-fun m!8278724 () Bool)

(assert (=> b!7904123 m!8278724))

(declare-fun m!8278726 () Bool)

(assert (=> b!7904120 m!8278726))

(assert (=> b!7904120 m!8278726))

(declare-fun m!8278728 () Bool)

(assert (=> b!7904120 m!8278728))

(declare-fun m!8278730 () Bool)

(assert (=> b!7904120 m!8278730))

(declare-fun m!8278732 () Bool)

(assert (=> b!7904116 m!8278732))

(declare-fun m!8278734 () Bool)

(assert (=> b!7904116 m!8278734))

(declare-fun m!8278736 () Bool)

(assert (=> b!7904128 m!8278736))

(declare-fun m!8278738 () Bool)

(assert (=> b!7904121 m!8278738))

(declare-fun m!8278740 () Bool)

(assert (=> b!7904124 m!8278740))

(declare-fun m!8278742 () Bool)

(assert (=> b!7904124 m!8278742))

(declare-fun m!8278744 () Bool)

(assert (=> b!7904127 m!8278744))

(declare-fun m!8278746 () Bool)

(assert (=> b!7904126 m!8278746))

(check-sat (not b!7904126) (not b!7904127) (not b!7904129) (not b_next!135639) (not b!7904121) (not b!7904130) tp_is_empty!53001 (not b!7904119) (not b!7904123) (not b!7904124) (not b!7904122) b_and!352939 (not b!7904117) (not b_next!135637) b_and!352941 (not b!7904128) (not b!7904116) (not b!7904125) (not b!7904120))
(check-sat b_and!352941 b_and!352939 (not b_next!135639) (not b_next!135637))
(get-model)

(declare-fun b!7904175 () Bool)

(declare-fun e!4665597 () Option!17892)

(declare-fun lt!2684524 () Option!17892)

(declare-fun lt!2684523 () Option!17892)

(assert (=> b!7904175 (= e!4665597 (ite (and ((_ is None!17891) lt!2684524) ((_ is None!17891) lt!2684523)) None!17891 (ite ((_ is None!17891) lt!2684523) lt!2684524 (ite ((_ is None!17891) lt!2684524) lt!2684523 (ite (>= (size!43016 (_1!38428 (v!55034 lt!2684524))) (size!43016 (_1!38428 (v!55034 lt!2684523)))) lt!2684524 lt!2684523)))))))

(declare-fun call!733333 () Option!17892)

(assert (=> b!7904175 (= lt!2684524 call!733333)))

(assert (=> b!7904175 (= lt!2684523 (maxPrefix!4743 thiss!14377 (t!389455 (t!389455 rulesArg!141)) input!1184))))

(declare-fun bm!733328 () Bool)

(assert (=> bm!733328 (= call!733333 (maxPrefixOneRule!3790 thiss!14377 (h!80676 (t!389455 rulesArg!141)) input!1184))))

(declare-fun b!7904176 () Bool)

(declare-fun res!3136423 () Bool)

(declare-fun e!4665595 () Bool)

(assert (=> b!7904176 (=> (not res!3136423) (not e!4665595))))

(declare-fun lt!2684522 () Option!17892)

(assert (=> b!7904176 (= res!3136423 (= (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))) (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522)))))))

(declare-fun b!7904177 () Bool)

(declare-fun e!4665596 () Bool)

(assert (=> b!7904177 (= e!4665596 e!4665595)))

(declare-fun res!3136421 () Bool)

(assert (=> b!7904177 (=> (not res!3136421) (not e!4665595))))

(assert (=> b!7904177 (= res!3136421 (isDefined!14468 lt!2684522))))

(declare-fun d!2358941 () Bool)

(assert (=> d!2358941 e!4665596))

(declare-fun res!3136417 () Bool)

(assert (=> d!2358941 (=> res!3136417 e!4665596)))

(assert (=> d!2358941 (= res!3136417 (isEmpty!42591 lt!2684522))))

(assert (=> d!2358941 (= lt!2684522 e!4665597)))

(declare-fun c!1450457 () Bool)

(assert (=> d!2358941 (= c!1450457 (and ((_ is Cons!74228) (t!389455 rulesArg!141)) ((_ is Nil!74228) (t!389455 (t!389455 rulesArg!141)))))))

(declare-fun lt!2684520 () Unit!169263)

(declare-fun lt!2684521 () Unit!169263)

(assert (=> d!2358941 (= lt!2684520 lt!2684521)))

(assert (=> d!2358941 (isPrefix!6443 input!1184 input!1184)))

(assert (=> d!2358941 (= lt!2684521 (lemmaIsPrefixRefl!3954 input!1184 input!1184))))

(assert (=> d!2358941 (rulesValidInductive!3421 thiss!14377 (t!389455 rulesArg!141))))

(assert (=> d!2358941 (= (maxPrefix!4743 thiss!14377 (t!389455 rulesArg!141) input!1184) lt!2684522)))

(declare-fun b!7904178 () Bool)

(declare-fun contains!20890 (List!74352 Rule!17020) Bool)

(assert (=> b!7904178 (= e!4665595 (contains!20890 (t!389455 rulesArg!141) (rule!11900 (_1!38428 (get!26669 lt!2684522)))))))

(declare-fun b!7904179 () Bool)

(declare-fun res!3136420 () Bool)

(assert (=> b!7904179 (=> (not res!3136420) (not e!4665595))))

(assert (=> b!7904179 (= res!3136420 (< (size!43017 (_2!38428 (get!26669 lt!2684522))) (size!43017 input!1184)))))

(declare-fun b!7904180 () Bool)

(assert (=> b!7904180 (= e!4665597 call!733333)))

(declare-fun b!7904181 () Bool)

(declare-fun res!3136419 () Bool)

(assert (=> b!7904181 (=> (not res!3136419) (not e!4665595))))

(assert (=> b!7904181 (= res!3136419 (= (value!287366 (_1!38428 (get!26669 lt!2684522))) (apply!14339 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522)))))))))

(declare-fun b!7904182 () Bool)

(declare-fun res!3136422 () Bool)

(assert (=> b!7904182 (=> (not res!3136422) (not e!4665595))))

(assert (=> b!7904182 (= res!3136422 (= (++!18168 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))) (_2!38428 (get!26669 lt!2684522))) input!1184))))

(declare-fun b!7904183 () Bool)

(declare-fun res!3136418 () Bool)

(assert (=> b!7904183 (=> (not res!3136418) (not e!4665595))))

(declare-fun matchR!10650 (Regex!21313 List!74351) Bool)

(assert (=> b!7904183 (= res!3136418 (matchR!10650 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))))))

(assert (= (and d!2358941 c!1450457) b!7904180))

(assert (= (and d!2358941 (not c!1450457)) b!7904175))

(assert (= (or b!7904180 b!7904175) bm!733328))

(assert (= (and d!2358941 (not res!3136417)) b!7904177))

(assert (= (and b!7904177 res!3136421) b!7904176))

(assert (= (and b!7904176 res!3136423) b!7904179))

(assert (= (and b!7904179 res!3136420) b!7904182))

(assert (= (and b!7904182 res!3136422) b!7904181))

(assert (= (and b!7904181 res!3136419) b!7904183))

(assert (= (and b!7904183 res!3136418) b!7904178))

(declare-fun m!8278776 () Bool)

(assert (=> b!7904179 m!8278776))

(declare-fun m!8278778 () Bool)

(assert (=> b!7904179 m!8278778))

(assert (=> b!7904179 m!8278734))

(declare-fun m!8278780 () Bool)

(assert (=> b!7904175 m!8278780))

(assert (=> b!7904176 m!8278776))

(declare-fun m!8278782 () Bool)

(assert (=> b!7904176 m!8278782))

(assert (=> b!7904176 m!8278782))

(declare-fun m!8278784 () Bool)

(assert (=> b!7904176 m!8278784))

(declare-fun m!8278786 () Bool)

(assert (=> d!2358941 m!8278786))

(assert (=> d!2358941 m!8278714))

(assert (=> d!2358941 m!8278716))

(declare-fun m!8278788 () Bool)

(assert (=> d!2358941 m!8278788))

(assert (=> b!7904181 m!8278776))

(declare-fun m!8278790 () Bool)

(assert (=> b!7904181 m!8278790))

(assert (=> b!7904181 m!8278790))

(declare-fun m!8278792 () Bool)

(assert (=> b!7904181 m!8278792))

(assert (=> b!7904178 m!8278776))

(declare-fun m!8278794 () Bool)

(assert (=> b!7904178 m!8278794))

(assert (=> b!7904182 m!8278776))

(assert (=> b!7904182 m!8278782))

(assert (=> b!7904182 m!8278782))

(assert (=> b!7904182 m!8278784))

(assert (=> b!7904182 m!8278784))

(declare-fun m!8278796 () Bool)

(assert (=> b!7904182 m!8278796))

(declare-fun m!8278798 () Bool)

(assert (=> b!7904177 m!8278798))

(declare-fun m!8278800 () Bool)

(assert (=> bm!733328 m!8278800))

(assert (=> b!7904183 m!8278776))

(assert (=> b!7904183 m!8278782))

(assert (=> b!7904183 m!8278782))

(assert (=> b!7904183 m!8278784))

(assert (=> b!7904183 m!8278784))

(declare-fun m!8278802 () Bool)

(assert (=> b!7904183 m!8278802))

(assert (=> b!7904125 d!2358941))

(declare-fun b!7904202 () Bool)

(declare-fun res!3136443 () Bool)

(declare-fun e!4665608 () Bool)

(assert (=> b!7904202 (=> (not res!3136443) (not e!4665608))))

(declare-fun lt!2684538 () Option!17892)

(assert (=> b!7904202 (= res!3136443 (= (rule!11900 (_1!38428 (get!26669 lt!2684538))) (h!80676 rulesArg!141)))))

(declare-fun b!7904203 () Bool)

(declare-fun e!4665607 () Option!17892)

(assert (=> b!7904203 (= e!4665607 None!17891)))

(declare-fun b!7904204 () Bool)

(assert (=> b!7904204 (= e!4665608 (= (size!43016 (_1!38428 (get!26669 lt!2684538))) (size!43017 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538))))))))

(declare-fun b!7904205 () Bool)

(declare-fun res!3136442 () Bool)

(assert (=> b!7904205 (=> (not res!3136442) (not e!4665608))))

(assert (=> b!7904205 (= res!3136442 (= (value!287366 (_1!38428 (get!26669 lt!2684538))) (apply!14339 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538)))))))))

(declare-fun b!7904206 () Bool)

(declare-fun res!3136441 () Bool)

(assert (=> b!7904206 (=> (not res!3136441) (not e!4665608))))

(assert (=> b!7904206 (= res!3136441 (< (size!43017 (_2!38428 (get!26669 lt!2684538))) (size!43017 input!1184)))))

(declare-fun d!2358945 () Bool)

(declare-fun e!4665609 () Bool)

(assert (=> d!2358945 e!4665609))

(declare-fun res!3136440 () Bool)

(assert (=> d!2358945 (=> res!3136440 e!4665609)))

(assert (=> d!2358945 (= res!3136440 (isEmpty!42591 lt!2684538))))

(assert (=> d!2358945 (= lt!2684538 e!4665607)))

(declare-fun c!1450460 () Bool)

(declare-datatypes ((tuple2!70254 0))(
  ( (tuple2!70255 (_1!38430 List!74351) (_2!38430 List!74351)) )
))
(declare-fun lt!2684537 () tuple2!70254)

(declare-fun isEmpty!42593 (List!74351) Bool)

(assert (=> d!2358945 (= c!1450460 (isEmpty!42593 (_1!38430 lt!2684537)))))

(declare-fun findLongestMatch!1922 (Regex!21313 List!74351) tuple2!70254)

(assert (=> d!2358945 (= lt!2684537 (findLongestMatch!1922 (regex!8610 (h!80676 rulesArg!141)) input!1184))))

(declare-fun ruleValid!3936 (LexerInterface!8202 Rule!17020) Bool)

(assert (=> d!2358945 (ruleValid!3936 thiss!14377 (h!80676 rulesArg!141))))

(assert (=> d!2358945 (= (maxPrefixOneRule!3790 thiss!14377 (h!80676 rulesArg!141) input!1184) lt!2684538)))

(declare-fun b!7904207 () Bool)

(declare-fun e!4665606 () Bool)

(declare-fun findLongestMatchInner!2155 (Regex!21313 List!74351 Int List!74351 List!74351 Int) tuple2!70254)

(assert (=> b!7904207 (= e!4665606 (matchR!10650 (regex!8610 (h!80676 rulesArg!141)) (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(declare-fun b!7904208 () Bool)

(declare-fun res!3136444 () Bool)

(assert (=> b!7904208 (=> (not res!3136444) (not e!4665608))))

(assert (=> b!7904208 (= res!3136444 (= (++!18168 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538)))) (_2!38428 (get!26669 lt!2684538))) input!1184))))

(declare-fun b!7904209 () Bool)

(declare-fun size!43019 (BalanceConc!30686) Int)

(assert (=> b!7904209 (= e!4665607 (Some!17891 (tuple2!70251 (Token!15641 (apply!14339 (transformation!8610 (h!80676 rulesArg!141)) (seqFromList!6157 (_1!38430 lt!2684537))) (h!80676 rulesArg!141) (size!43019 (seqFromList!6157 (_1!38430 lt!2684537))) (_1!38430 lt!2684537)) (_2!38430 lt!2684537))))))

(declare-fun lt!2684535 () Unit!169263)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2118 (Regex!21313 List!74351) Unit!169263)

(assert (=> b!7904209 (= lt!2684535 (longestMatchIsAcceptedByMatchOrIsEmpty!2118 (regex!8610 (h!80676 rulesArg!141)) input!1184))))

(declare-fun res!3136438 () Bool)

(assert (=> b!7904209 (= res!3136438 (isEmpty!42593 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(assert (=> b!7904209 (=> res!3136438 e!4665606)))

(assert (=> b!7904209 e!4665606))

(declare-fun lt!2684539 () Unit!169263)

(assert (=> b!7904209 (= lt!2684539 lt!2684535)))

(declare-fun lt!2684536 () Unit!169263)

(declare-fun lemmaSemiInverse!2665 (TokenValueInjection!17160 BalanceConc!30686) Unit!169263)

(assert (=> b!7904209 (= lt!2684536 (lemmaSemiInverse!2665 (transformation!8610 (h!80676 rulesArg!141)) (seqFromList!6157 (_1!38430 lt!2684537))))))

(declare-fun b!7904210 () Bool)

(assert (=> b!7904210 (= e!4665609 e!4665608)))

(declare-fun res!3136439 () Bool)

(assert (=> b!7904210 (=> (not res!3136439) (not e!4665608))))

(assert (=> b!7904210 (= res!3136439 (matchR!10650 (regex!8610 (h!80676 rulesArg!141)) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))))))

(assert (= (and d!2358945 c!1450460) b!7904203))

(assert (= (and d!2358945 (not c!1450460)) b!7904209))

(assert (= (and b!7904209 (not res!3136438)) b!7904207))

(assert (= (and d!2358945 (not res!3136440)) b!7904210))

(assert (= (and b!7904210 res!3136439) b!7904208))

(assert (= (and b!7904208 res!3136444) b!7904206))

(assert (= (and b!7904206 res!3136441) b!7904202))

(assert (= (and b!7904202 res!3136443) b!7904205))

(assert (= (and b!7904205 res!3136442) b!7904204))

(declare-fun m!8278804 () Bool)

(assert (=> b!7904208 m!8278804))

(declare-fun m!8278806 () Bool)

(assert (=> b!7904208 m!8278806))

(assert (=> b!7904208 m!8278806))

(declare-fun m!8278808 () Bool)

(assert (=> b!7904208 m!8278808))

(assert (=> b!7904208 m!8278808))

(declare-fun m!8278810 () Bool)

(assert (=> b!7904208 m!8278810))

(assert (=> b!7904210 m!8278804))

(assert (=> b!7904210 m!8278806))

(assert (=> b!7904210 m!8278806))

(assert (=> b!7904210 m!8278808))

(assert (=> b!7904210 m!8278808))

(declare-fun m!8278812 () Bool)

(assert (=> b!7904210 m!8278812))

(declare-fun m!8278814 () Bool)

(assert (=> b!7904207 m!8278814))

(assert (=> b!7904207 m!8278734))

(assert (=> b!7904207 m!8278814))

(assert (=> b!7904207 m!8278734))

(declare-fun m!8278816 () Bool)

(assert (=> b!7904207 m!8278816))

(declare-fun m!8278818 () Bool)

(assert (=> b!7904207 m!8278818))

(assert (=> b!7904206 m!8278804))

(declare-fun m!8278820 () Bool)

(assert (=> b!7904206 m!8278820))

(assert (=> b!7904206 m!8278734))

(declare-fun m!8278822 () Bool)

(assert (=> d!2358945 m!8278822))

(declare-fun m!8278824 () Bool)

(assert (=> d!2358945 m!8278824))

(declare-fun m!8278826 () Bool)

(assert (=> d!2358945 m!8278826))

(declare-fun m!8278828 () Bool)

(assert (=> d!2358945 m!8278828))

(assert (=> b!7904204 m!8278804))

(declare-fun m!8278830 () Bool)

(assert (=> b!7904204 m!8278830))

(assert (=> b!7904205 m!8278804))

(declare-fun m!8278832 () Bool)

(assert (=> b!7904205 m!8278832))

(assert (=> b!7904205 m!8278832))

(declare-fun m!8278834 () Bool)

(assert (=> b!7904205 m!8278834))

(assert (=> b!7904202 m!8278804))

(assert (=> b!7904209 m!8278734))

(declare-fun m!8278836 () Bool)

(assert (=> b!7904209 m!8278836))

(assert (=> b!7904209 m!8278814))

(assert (=> b!7904209 m!8278836))

(declare-fun m!8278838 () Bool)

(assert (=> b!7904209 m!8278838))

(assert (=> b!7904209 m!8278836))

(declare-fun m!8278840 () Bool)

(assert (=> b!7904209 m!8278840))

(assert (=> b!7904209 m!8278814))

(assert (=> b!7904209 m!8278734))

(assert (=> b!7904209 m!8278816))

(declare-fun m!8278842 () Bool)

(assert (=> b!7904209 m!8278842))

(assert (=> b!7904209 m!8278836))

(declare-fun m!8278844 () Bool)

(assert (=> b!7904209 m!8278844))

(declare-fun m!8278846 () Bool)

(assert (=> b!7904209 m!8278846))

(assert (=> b!7904125 d!2358945))

(declare-fun d!2358947 () Bool)

(assert (=> d!2358947 (= (inv!95217 (tag!9474 (h!80676 rulesArg!141))) (= (mod (str.len (value!287365 (tag!9474 (h!80676 rulesArg!141)))) 2) 0))))

(assert (=> b!7904124 d!2358947))

(declare-fun d!2358949 () Bool)

(declare-fun res!3136447 () Bool)

(declare-fun e!4665612 () Bool)

(assert (=> d!2358949 (=> (not res!3136447) (not e!4665612))))

(declare-fun semiInverseModEq!3815 (Int Int) Bool)

(assert (=> d!2358949 (= res!3136447 (semiInverseModEq!3815 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))))))

(assert (=> d!2358949 (= (inv!95219 (transformation!8610 (h!80676 rulesArg!141))) e!4665612)))

(declare-fun b!7904213 () Bool)

(declare-fun equivClasses!3630 (Int Int) Bool)

(assert (=> b!7904213 (= e!4665612 (equivClasses!3630 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))))))

(assert (= (and d!2358949 res!3136447) b!7904213))

(declare-fun m!8278848 () Bool)

(assert (=> d!2358949 m!8278848))

(declare-fun m!8278850 () Bool)

(assert (=> b!7904213 m!8278850))

(assert (=> b!7904124 d!2358949))

(declare-fun d!2358951 () Bool)

(declare-fun dynLambda!30070 (Int BalanceConc!30686) TokenValue!8926)

(assert (=> d!2358951 (= (apply!14339 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494)))) (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494)))))))

(declare-fun b_lambda!289799 () Bool)

(assert (=> (not b_lambda!289799) (not d!2358951)))

(declare-fun t!389461 () Bool)

(declare-fun tb!262947 () Bool)

(assert (=> (and b!7904118 (= (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))))) t!389461) tb!262947))

(declare-fun result!360038 () Bool)

(declare-fun inv!21 (TokenValue!8926) Bool)

(assert (=> tb!262947 (= result!360038 (inv!21 (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))))))))

(declare-fun m!8278852 () Bool)

(assert (=> tb!262947 m!8278852))

(assert (=> d!2358951 t!389461))

(declare-fun b_and!352947 () Bool)

(assert (= b_and!352939 (and (=> t!389461 result!360038) b_and!352947)))

(assert (=> d!2358951 m!8278722))

(declare-fun m!8278854 () Bool)

(assert (=> d!2358951 m!8278854))

(assert (=> b!7904123 d!2358951))

(declare-fun d!2358953 () Bool)

(declare-fun fromListB!2778 (List!74351) BalanceConc!30686)

(assert (=> d!2358953 (= (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))) (fromListB!2778 (originalCharacters!8851 (_1!38428 lt!2684494))))))

(declare-fun bs!1968063 () Bool)

(assert (= bs!1968063 d!2358953))

(declare-fun m!8278856 () Bool)

(assert (=> bs!1968063 m!8278856))

(assert (=> b!7904123 d!2358953))

(declare-fun b!7904225 () Bool)

(declare-fun res!3136459 () Bool)

(declare-fun e!4665623 () Bool)

(assert (=> b!7904225 (=> (not res!3136459) (not e!4665623))))

(declare-fun head!16147 (List!74351) C!42956)

(assert (=> b!7904225 (= res!3136459 (= (head!16147 input!1184) (head!16147 input!1184)))))

(declare-fun b!7904226 () Bool)

(declare-fun tail!15690 (List!74351) List!74351)

(assert (=> b!7904226 (= e!4665623 (isPrefix!6443 (tail!15690 input!1184) (tail!15690 input!1184)))))

(declare-fun b!7904224 () Bool)

(declare-fun e!4665622 () Bool)

(assert (=> b!7904224 (= e!4665622 e!4665623)))

(declare-fun res!3136457 () Bool)

(assert (=> b!7904224 (=> (not res!3136457) (not e!4665623))))

(assert (=> b!7904224 (= res!3136457 (not ((_ is Nil!74227) input!1184)))))

(declare-fun d!2358955 () Bool)

(declare-fun e!4665624 () Bool)

(assert (=> d!2358955 e!4665624))

(declare-fun res!3136456 () Bool)

(assert (=> d!2358955 (=> res!3136456 e!4665624)))

(declare-fun lt!2684542 () Bool)

(assert (=> d!2358955 (= res!3136456 (not lt!2684542))))

(assert (=> d!2358955 (= lt!2684542 e!4665622)))

(declare-fun res!3136458 () Bool)

(assert (=> d!2358955 (=> res!3136458 e!4665622)))

(assert (=> d!2358955 (= res!3136458 ((_ is Nil!74227) input!1184))))

(assert (=> d!2358955 (= (isPrefix!6443 input!1184 input!1184) lt!2684542)))

(declare-fun b!7904227 () Bool)

(assert (=> b!7904227 (= e!4665624 (>= (size!43017 input!1184) (size!43017 input!1184)))))

(assert (= (and d!2358955 (not res!3136458)) b!7904224))

(assert (= (and b!7904224 res!3136457) b!7904225))

(assert (= (and b!7904225 res!3136459) b!7904226))

(assert (= (and d!2358955 (not res!3136456)) b!7904227))

(declare-fun m!8278858 () Bool)

(assert (=> b!7904225 m!8278858))

(assert (=> b!7904225 m!8278858))

(declare-fun m!8278860 () Bool)

(assert (=> b!7904226 m!8278860))

(assert (=> b!7904226 m!8278860))

(assert (=> b!7904226 m!8278860))

(assert (=> b!7904226 m!8278860))

(declare-fun m!8278862 () Bool)

(assert (=> b!7904226 m!8278862))

(assert (=> b!7904227 m!8278734))

(assert (=> b!7904227 m!8278734))

(assert (=> b!7904122 d!2358955))

(declare-fun d!2358957 () Bool)

(assert (=> d!2358957 (isPrefix!6443 input!1184 input!1184)))

(declare-fun lt!2684545 () Unit!169263)

(declare-fun choose!59721 (List!74351 List!74351) Unit!169263)

(assert (=> d!2358957 (= lt!2684545 (choose!59721 input!1184 input!1184))))

(assert (=> d!2358957 (= (lemmaIsPrefixRefl!3954 input!1184 input!1184) lt!2684545)))

(declare-fun bs!1968064 () Bool)

(assert (= bs!1968064 d!2358957))

(assert (=> bs!1968064 m!8278714))

(declare-fun m!8278864 () Bool)

(assert (=> bs!1968064 m!8278864))

(assert (=> b!7904122 d!2358957))

(declare-fun d!2358959 () Bool)

(assert (=> d!2358959 (= (isEmpty!42590 rulesArg!141) ((_ is Nil!74228) rulesArg!141))))

(assert (=> b!7904121 d!2358959))

(declare-fun d!2358961 () Bool)

(declare-fun list!19243 (Conc!15784) List!74351)

(assert (=> d!2358961 (= (list!19241 (charsOf!5554 (_1!38428 lt!2684494))) (list!19243 (c!1450453 (charsOf!5554 (_1!38428 lt!2684494)))))))

(declare-fun bs!1968065 () Bool)

(assert (= bs!1968065 d!2358961))

(declare-fun m!8278866 () Bool)

(assert (=> bs!1968065 m!8278866))

(assert (=> b!7904120 d!2358961))

(declare-fun d!2358963 () Bool)

(declare-fun lt!2684548 () BalanceConc!30686)

(assert (=> d!2358963 (= (list!19241 lt!2684548) (originalCharacters!8851 (_1!38428 lt!2684494)))))

(declare-fun dynLambda!30071 (Int TokenValue!8926) BalanceConc!30686)

(assert (=> d!2358963 (= lt!2684548 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))))

(assert (=> d!2358963 (= (charsOf!5554 (_1!38428 lt!2684494)) lt!2684548)))

(declare-fun b_lambda!289801 () Bool)

(assert (=> (not b_lambda!289801) (not d!2358963)))

(declare-fun tb!262949 () Bool)

(declare-fun t!389463 () Bool)

(assert (=> (and b!7904118 (= (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))))) t!389463) tb!262949))

(declare-fun b!7904232 () Bool)

(declare-fun e!4665627 () Bool)

(declare-fun tp!2354686 () Bool)

(declare-fun inv!95222 (Conc!15784) Bool)

(assert (=> b!7904232 (= e!4665627 (and (inv!95222 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))) tp!2354686))))

(declare-fun result!360042 () Bool)

(declare-fun inv!95223 (BalanceConc!30686) Bool)

(assert (=> tb!262949 (= result!360042 (and (inv!95223 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))) e!4665627))))

(assert (= tb!262949 b!7904232))

(declare-fun m!8278868 () Bool)

(assert (=> b!7904232 m!8278868))

(declare-fun m!8278870 () Bool)

(assert (=> tb!262949 m!8278870))

(assert (=> d!2358963 t!389463))

(declare-fun b_and!352949 () Bool)

(assert (= b_and!352941 (and (=> t!389463 result!360042) b_and!352949)))

(declare-fun m!8278872 () Bool)

(assert (=> d!2358963 m!8278872))

(declare-fun m!8278874 () Bool)

(assert (=> d!2358963 m!8278874))

(assert (=> b!7904120 d!2358963))

(declare-fun d!2358965 () Bool)

(assert (=> d!2358965 (= (get!26669 lt!2684495) (v!55034 lt!2684495))))

(assert (=> b!7904120 d!2358965))

(declare-fun b!7904251 () Bool)

(declare-fun e!4665644 () Bool)

(declare-fun call!733341 () Bool)

(assert (=> b!7904251 (= e!4665644 call!733341)))

(declare-fun b!7904252 () Bool)

(declare-fun res!3136472 () Bool)

(declare-fun e!4665647 () Bool)

(assert (=> b!7904252 (=> res!3136472 e!4665647)))

(assert (=> b!7904252 (= res!3136472 (not ((_ is Concat!30240) (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))

(declare-fun e!4665645 () Bool)

(assert (=> b!7904252 (= e!4665645 e!4665647)))

(declare-fun b!7904253 () Bool)

(declare-fun e!4665646 () Bool)

(assert (=> b!7904253 (= e!4665646 e!4665645)))

(declare-fun c!1450465 () Bool)

(assert (=> b!7904253 (= c!1450465 ((_ is Union!21313) (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))

(declare-fun b!7904254 () Bool)

(declare-fun res!3136471 () Bool)

(declare-fun e!4665648 () Bool)

(assert (=> b!7904254 (=> (not res!3136471) (not e!4665648))))

(assert (=> b!7904254 (= res!3136471 call!733341)))

(assert (=> b!7904254 (= e!4665645 e!4665648)))

(declare-fun b!7904255 () Bool)

(declare-fun e!4665642 () Bool)

(assert (=> b!7904255 (= e!4665646 e!4665642)))

(declare-fun res!3136474 () Bool)

(declare-fun nullable!9486 (Regex!21313) Bool)

(assert (=> b!7904255 (= res!3136474 (not (nullable!9486 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))

(assert (=> b!7904255 (=> (not res!3136474) (not e!4665642))))

(declare-fun b!7904256 () Bool)

(declare-fun call!733340 () Bool)

(assert (=> b!7904256 (= e!4665648 call!733340)))

(declare-fun b!7904257 () Bool)

(declare-fun e!4665643 () Bool)

(assert (=> b!7904257 (= e!4665643 e!4665646)))

(declare-fun c!1450466 () Bool)

(assert (=> b!7904257 (= c!1450466 ((_ is Star!21313) (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))

(declare-fun b!7904258 () Bool)

(assert (=> b!7904258 (= e!4665647 e!4665644)))

(declare-fun res!3136473 () Bool)

(assert (=> b!7904258 (=> (not res!3136473) (not e!4665644))))

(assert (=> b!7904258 (= res!3136473 call!733340)))

(declare-fun bm!733335 () Bool)

(assert (=> bm!733335 (= call!733340 (validRegex!11649 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))

(declare-fun d!2358967 () Bool)

(declare-fun res!3136470 () Bool)

(assert (=> d!2358967 (=> res!3136470 e!4665643)))

(assert (=> d!2358967 (= res!3136470 ((_ is ElementMatch!21313) (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))

(assert (=> d!2358967 (= (validRegex!11649 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) e!4665643)))

(declare-fun bm!733336 () Bool)

(declare-fun call!733342 () Bool)

(assert (=> bm!733336 (= call!733342 (validRegex!11649 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))

(declare-fun bm!733337 () Bool)

(assert (=> bm!733337 (= call!733341 call!733342)))

(declare-fun b!7904259 () Bool)

(assert (=> b!7904259 (= e!4665642 call!733342)))

(assert (= (and d!2358967 (not res!3136470)) b!7904257))

(assert (= (and b!7904257 c!1450466) b!7904255))

(assert (= (and b!7904257 (not c!1450466)) b!7904253))

(assert (= (and b!7904255 res!3136474) b!7904259))

(assert (= (and b!7904253 c!1450465) b!7904254))

(assert (= (and b!7904253 (not c!1450465)) b!7904252))

(assert (= (and b!7904254 res!3136471) b!7904256))

(assert (= (and b!7904252 (not res!3136472)) b!7904258))

(assert (= (and b!7904258 res!3136473) b!7904251))

(assert (= (or b!7904254 b!7904251) bm!733337))

(assert (= (or b!7904256 b!7904258) bm!733335))

(assert (= (or b!7904259 bm!733337) bm!733336))

(declare-fun m!8278876 () Bool)

(assert (=> b!7904255 m!8278876))

(declare-fun m!8278878 () Bool)

(assert (=> bm!733335 m!8278878))

(declare-fun m!8278880 () Bool)

(assert (=> bm!733336 m!8278880))

(assert (=> b!7904130 d!2358967))

(declare-fun b!7904292 () Bool)

(declare-fun res!3136491 () Bool)

(declare-fun e!4665670 () Bool)

(assert (=> b!7904292 (=> (not res!3136491) (not e!4665670))))

(declare-fun lt!2684552 () List!74351)

(assert (=> b!7904292 (= res!3136491 (= (size!43017 lt!2684552) (+ (size!43017 lt!2684496) (size!43017 (_2!38428 lt!2684494)))))))

(declare-fun b!7904290 () Bool)

(declare-fun e!4665669 () List!74351)

(assert (=> b!7904290 (= e!4665669 (_2!38428 lt!2684494))))

(declare-fun b!7904293 () Bool)

(assert (=> b!7904293 (= e!4665670 (or (not (= (_2!38428 lt!2684494) Nil!74227)) (= lt!2684552 lt!2684496)))))

(declare-fun d!2358969 () Bool)

(assert (=> d!2358969 e!4665670))

(declare-fun res!3136492 () Bool)

(assert (=> d!2358969 (=> (not res!3136492) (not e!4665670))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15719 (List!74351) (InoxSet C!42956))

(assert (=> d!2358969 (= res!3136492 (= (content!15719 lt!2684552) ((_ map or) (content!15719 lt!2684496) (content!15719 (_2!38428 lt!2684494)))))))

(assert (=> d!2358969 (= lt!2684552 e!4665669)))

(declare-fun c!1450473 () Bool)

(assert (=> d!2358969 (= c!1450473 ((_ is Nil!74227) lt!2684496))))

(assert (=> d!2358969 (= (++!18168 lt!2684496 (_2!38428 lt!2684494)) lt!2684552)))

(declare-fun b!7904291 () Bool)

(assert (=> b!7904291 (= e!4665669 (Cons!74227 (h!80675 lt!2684496) (++!18168 (t!389454 lt!2684496) (_2!38428 lt!2684494))))))

(assert (= (and d!2358969 c!1450473) b!7904290))

(assert (= (and d!2358969 (not c!1450473)) b!7904291))

(assert (= (and d!2358969 res!3136492) b!7904292))

(assert (= (and b!7904292 res!3136491) b!7904293))

(declare-fun m!8278888 () Bool)

(assert (=> b!7904292 m!8278888))

(declare-fun m!8278890 () Bool)

(assert (=> b!7904292 m!8278890))

(assert (=> b!7904292 m!8278732))

(declare-fun m!8278892 () Bool)

(assert (=> d!2358969 m!8278892))

(declare-fun m!8278894 () Bool)

(assert (=> d!2358969 m!8278894))

(declare-fun m!8278896 () Bool)

(assert (=> d!2358969 m!8278896))

(declare-fun m!8278898 () Bool)

(assert (=> b!7904291 m!8278898))

(assert (=> b!7904119 d!2358969))

(declare-fun d!2358973 () Bool)

(assert (=> d!2358973 (= (isDefined!14468 lt!2684495) (not (isEmpty!42591 lt!2684495)))))

(declare-fun bs!1968066 () Bool)

(assert (= bs!1968066 d!2358973))

(assert (=> bs!1968066 m!8278746))

(assert (=> b!7904128 d!2358973))

(declare-fun d!2358975 () Bool)

(assert (=> d!2358975 true))

(declare-fun lt!2684592 () Bool)

(declare-fun lambda!472471 () Int)

(declare-fun forall!18445 (List!74352 Int) Bool)

(assert (=> d!2358975 (= lt!2684592 (forall!18445 rulesArg!141 lambda!472471))))

(declare-fun e!4665731 () Bool)

(assert (=> d!2358975 (= lt!2684592 e!4665731)))

(declare-fun res!3136550 () Bool)

(assert (=> d!2358975 (=> res!3136550 e!4665731)))

(assert (=> d!2358975 (= res!3136550 (not ((_ is Cons!74228) rulesArg!141)))))

(assert (=> d!2358975 (= (rulesValidInductive!3421 thiss!14377 rulesArg!141) lt!2684592)))

(declare-fun b!7904411 () Bool)

(declare-fun e!4665732 () Bool)

(assert (=> b!7904411 (= e!4665731 e!4665732)))

(declare-fun res!3136551 () Bool)

(assert (=> b!7904411 (=> (not res!3136551) (not e!4665732))))

(assert (=> b!7904411 (= res!3136551 (ruleValid!3936 thiss!14377 (h!80676 rulesArg!141)))))

(declare-fun b!7904412 () Bool)

(assert (=> b!7904412 (= e!4665732 (rulesValidInductive!3421 thiss!14377 (t!389455 rulesArg!141)))))

(assert (= (and d!2358975 (not res!3136550)) b!7904411))

(assert (= (and b!7904411 res!3136551) b!7904412))

(declare-fun m!8278994 () Bool)

(assert (=> d!2358975 m!8278994))

(assert (=> b!7904411 m!8278828))

(assert (=> b!7904412 m!8278788))

(assert (=> b!7904127 d!2358975))

(declare-fun d!2358991 () Bool)

(declare-fun lt!2684595 () Int)

(assert (=> d!2358991 (>= lt!2684595 0)))

(declare-fun e!4665735 () Int)

(assert (=> d!2358991 (= lt!2684595 e!4665735)))

(declare-fun c!1450491 () Bool)

(assert (=> d!2358991 (= c!1450491 ((_ is Nil!74227) (_2!38428 lt!2684494)))))

(assert (=> d!2358991 (= (size!43017 (_2!38428 lt!2684494)) lt!2684595)))

(declare-fun b!7904419 () Bool)

(assert (=> b!7904419 (= e!4665735 0)))

(declare-fun b!7904420 () Bool)

(assert (=> b!7904420 (= e!4665735 (+ 1 (size!43017 (t!389454 (_2!38428 lt!2684494)))))))

(assert (= (and d!2358991 c!1450491) b!7904419))

(assert (= (and d!2358991 (not c!1450491)) b!7904420))

(declare-fun m!8278996 () Bool)

(assert (=> b!7904420 m!8278996))

(assert (=> b!7904116 d!2358991))

(declare-fun d!2358993 () Bool)

(declare-fun lt!2684596 () Int)

(assert (=> d!2358993 (>= lt!2684596 0)))

(declare-fun e!4665736 () Int)

(assert (=> d!2358993 (= lt!2684596 e!4665736)))

(declare-fun c!1450492 () Bool)

(assert (=> d!2358993 (= c!1450492 ((_ is Nil!74227) input!1184))))

(assert (=> d!2358993 (= (size!43017 input!1184) lt!2684596)))

(declare-fun b!7904421 () Bool)

(assert (=> b!7904421 (= e!4665736 0)))

(declare-fun b!7904422 () Bool)

(assert (=> b!7904422 (= e!4665736 (+ 1 (size!43017 (t!389454 input!1184))))))

(assert (= (and d!2358993 c!1450492) b!7904421))

(assert (= (and d!2358993 (not c!1450492)) b!7904422))

(declare-fun m!8278998 () Bool)

(assert (=> b!7904422 m!8278998))

(assert (=> b!7904116 d!2358993))

(declare-fun d!2358995 () Bool)

(assert (=> d!2358995 (= (isEmpty!42591 lt!2684495) (not ((_ is Some!17891) lt!2684495)))))

(assert (=> b!7904126 d!2358995))

(declare-fun b!7904436 () Bool)

(declare-fun e!4665739 () Bool)

(declare-fun tp!2354729 () Bool)

(declare-fun tp!2354727 () Bool)

(assert (=> b!7904436 (= e!4665739 (and tp!2354729 tp!2354727))))

(assert (=> b!7904124 (= tp!2354679 e!4665739)))

(declare-fun b!7904435 () Bool)

(declare-fun tp!2354731 () Bool)

(assert (=> b!7904435 (= e!4665739 tp!2354731)))

(declare-fun b!7904434 () Bool)

(declare-fun tp!2354730 () Bool)

(declare-fun tp!2354728 () Bool)

(assert (=> b!7904434 (= e!4665739 (and tp!2354730 tp!2354728))))

(declare-fun b!7904433 () Bool)

(assert (=> b!7904433 (= e!4665739 tp_is_empty!53001)))

(assert (= (and b!7904124 ((_ is ElementMatch!21313) (regex!8610 (h!80676 rulesArg!141)))) b!7904433))

(assert (= (and b!7904124 ((_ is Concat!30240) (regex!8610 (h!80676 rulesArg!141)))) b!7904434))

(assert (= (and b!7904124 ((_ is Star!21313) (regex!8610 (h!80676 rulesArg!141)))) b!7904435))

(assert (= (and b!7904124 ((_ is Union!21313) (regex!8610 (h!80676 rulesArg!141)))) b!7904436))

(declare-fun b!7904447 () Bool)

(declare-fun b_free!134855 () Bool)

(declare-fun b_next!135645 () Bool)

(assert (=> b!7904447 (= b_free!134855 (not b_next!135645))))

(declare-fun tb!262955 () Bool)

(declare-fun t!389469 () Bool)

(assert (=> (and b!7904447 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))))) t!389469) tb!262955))

(declare-fun result!360060 () Bool)

(assert (= result!360060 result!360038))

(assert (=> d!2358951 t!389469))

(declare-fun b_and!352955 () Bool)

(declare-fun tp!2354743 () Bool)

(assert (=> b!7904447 (= tp!2354743 (and (=> t!389469 result!360060) b_and!352955))))

(declare-fun b_free!134857 () Bool)

(declare-fun b_next!135647 () Bool)

(assert (=> b!7904447 (= b_free!134857 (not b_next!135647))))

(declare-fun tb!262957 () Bool)

(declare-fun t!389471 () Bool)

(assert (=> (and b!7904447 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))))) t!389471) tb!262957))

(declare-fun result!360062 () Bool)

(assert (= result!360062 result!360042))

(assert (=> d!2358963 t!389471))

(declare-fun tp!2354741 () Bool)

(declare-fun b_and!352957 () Bool)

(assert (=> b!7904447 (= tp!2354741 (and (=> t!389471 result!360062) b_and!352957))))

(declare-fun e!4665749 () Bool)

(assert (=> b!7904447 (= e!4665749 (and tp!2354743 tp!2354741))))

(declare-fun tp!2354742 () Bool)

(declare-fun b!7904446 () Bool)

(declare-fun e!4665748 () Bool)

(assert (=> b!7904446 (= e!4665748 (and tp!2354742 (inv!95217 (tag!9474 (h!80676 (t!389455 rulesArg!141)))) (inv!95219 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) e!4665749))))

(declare-fun b!7904445 () Bool)

(declare-fun e!4665751 () Bool)

(declare-fun tp!2354740 () Bool)

(assert (=> b!7904445 (= e!4665751 (and e!4665748 tp!2354740))))

(assert (=> b!7904129 (= tp!2354676 e!4665751)))

(assert (= b!7904446 b!7904447))

(assert (= b!7904445 b!7904446))

(assert (= (and b!7904129 ((_ is Cons!74228) (t!389455 rulesArg!141))) b!7904445))

(declare-fun m!8279000 () Bool)

(assert (=> b!7904446 m!8279000))

(declare-fun m!8279002 () Bool)

(assert (=> b!7904446 m!8279002))

(declare-fun b!7904452 () Bool)

(declare-fun e!4665754 () Bool)

(declare-fun tp!2354746 () Bool)

(assert (=> b!7904452 (= e!4665754 (and tp_is_empty!53001 tp!2354746))))

(assert (=> b!7904117 (= tp!2354678 e!4665754)))

(assert (= (and b!7904117 ((_ is Cons!74227) (t!389454 input!1184))) b!7904452))

(check-sat (not b!7904181) tp_is_empty!53001 (not b_lambda!289801) (not b!7904204) (not b!7904213) (not b!7904202) b_and!352955 (not bm!733335) (not d!2358945) (not b!7904209) (not b_next!135639) (not b!7904178) (not b!7904422) (not b!7904210) (not b!7904225) (not d!2358963) (not d!2358973) (not d!2358949) (not b_next!135645) (not bm!733328) (not b!7904435) (not b!7904205) (not b!7904226) (not b!7904232) (not b!7904291) (not b!7904176) (not b!7904412) (not b!7904452) (not b!7904434) b_and!352949 (not b!7904179) b_and!352957 (not b!7904255) b_and!352947 (not bm!733336) (not b!7904177) (not b_lambda!289799) (not b!7904227) (not b!7904445) (not d!2358975) (not b!7904420) (not b!7904411) (not tb!262947) (not d!2358957) (not b!7904175) (not b!7904446) (not tb!262949) (not b!7904183) (not b!7904182) (not b!7904208) (not b_next!135637) (not b!7904206) (not d!2358961) (not d!2358969) (not d!2358941) (not b_next!135647) (not b!7904207) (not b!7904292) (not d!2358953) (not b!7904436))
(check-sat b_and!352955 (not b_next!135639) (not b_next!135645) b_and!352949 b_and!352957 b_and!352947 (not b_next!135637) (not b_next!135647))
(get-model)

(declare-fun d!2359029 () Bool)

(assert (=> d!2359029 (= (inv!95217 (tag!9474 (h!80676 (t!389455 rulesArg!141)))) (= (mod (str.len (value!287365 (tag!9474 (h!80676 (t!389455 rulesArg!141))))) 2) 0))))

(assert (=> b!7904446 d!2359029))

(declare-fun d!2359031 () Bool)

(declare-fun res!3136594 () Bool)

(declare-fun e!4665799 () Bool)

(assert (=> d!2359031 (=> (not res!3136594) (not e!4665799))))

(assert (=> d!2359031 (= res!3136594 (semiInverseModEq!3815 (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141))))))))

(assert (=> d!2359031 (= (inv!95219 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) e!4665799)))

(declare-fun b!7904536 () Bool)

(assert (=> b!7904536 (= e!4665799 (equivClasses!3630 (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141))))))))

(assert (= (and d!2359031 res!3136594) b!7904536))

(declare-fun m!8279112 () Bool)

(assert (=> d!2359031 m!8279112))

(declare-fun m!8279114 () Bool)

(assert (=> b!7904536 m!8279114))

(assert (=> b!7904446 d!2359031))

(declare-fun d!2359035 () Bool)

(assert (=> d!2359035 (= (list!19241 lt!2684548) (list!19243 (c!1450453 lt!2684548)))))

(declare-fun bs!1968073 () Bool)

(assert (= bs!1968073 d!2359035))

(declare-fun m!8279116 () Bool)

(assert (=> bs!1968073 m!8279116))

(assert (=> d!2358963 d!2359035))

(declare-fun d!2359037 () Bool)

(assert (=> d!2359037 true))

(declare-fun order!29843 () Int)

(declare-fun order!29841 () Int)

(declare-fun lambda!472474 () Int)

(declare-fun dynLambda!30072 (Int Int) Int)

(declare-fun dynLambda!30073 (Int Int) Int)

(assert (=> d!2359037 (< (dynLambda!30072 order!29841 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141)))) (dynLambda!30073 order!29843 lambda!472474))))

(assert (=> d!2359037 true))

(declare-fun order!29845 () Int)

(declare-fun dynLambda!30074 (Int Int) Int)

(assert (=> d!2359037 (< (dynLambda!30074 order!29845 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) (dynLambda!30073 order!29843 lambda!472474))))

(declare-fun Forall!1845 (Int) Bool)

(assert (=> d!2359037 (= (semiInverseModEq!3815 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) (Forall!1845 lambda!472474))))

(declare-fun bs!1968075 () Bool)

(assert (= bs!1968075 d!2359037))

(declare-fun m!8279126 () Bool)

(assert (=> bs!1968075 m!8279126))

(assert (=> d!2358949 d!2359037))

(declare-fun d!2359047 () Bool)

(assert (=> d!2359047 (= (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))) (list!19243 (c!1450453 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))))))

(declare-fun bs!1968076 () Bool)

(assert (= bs!1968076 d!2359047))

(declare-fun m!8279128 () Bool)

(assert (=> bs!1968076 m!8279128))

(assert (=> b!7904176 d!2359047))

(declare-fun d!2359049 () Bool)

(declare-fun lt!2684633 () BalanceConc!30686)

(assert (=> d!2359049 (= (list!19241 lt!2684633) (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522))))))

(assert (=> d!2359049 (= lt!2684633 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))) (value!287366 (_1!38428 (get!26669 lt!2684522)))))))

(assert (=> d!2359049 (= (charsOf!5554 (_1!38428 (get!26669 lt!2684522))) lt!2684633)))

(declare-fun b_lambda!289805 () Bool)

(assert (=> (not b_lambda!289805) (not d!2359049)))

(declare-fun tb!262963 () Bool)

(declare-fun t!389478 () Bool)

(assert (=> (and b!7904118 (= (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))) t!389478) tb!262963))

(declare-fun b!7904544 () Bool)

(declare-fun e!4665802 () Bool)

(declare-fun tp!2354748 () Bool)

(assert (=> b!7904544 (= e!4665802 (and (inv!95222 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))) (value!287366 (_1!38428 (get!26669 lt!2684522)))))) tp!2354748))))

(declare-fun result!360070 () Bool)

(assert (=> tb!262963 (= result!360070 (and (inv!95223 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))) (value!287366 (_1!38428 (get!26669 lt!2684522))))) e!4665802))))

(assert (= tb!262963 b!7904544))

(declare-fun m!8279130 () Bool)

(assert (=> b!7904544 m!8279130))

(declare-fun m!8279132 () Bool)

(assert (=> tb!262963 m!8279132))

(assert (=> d!2359049 t!389478))

(declare-fun b_and!352963 () Bool)

(assert (= b_and!352949 (and (=> t!389478 result!360070) b_and!352963)))

(declare-fun tb!262965 () Bool)

(declare-fun t!389480 () Bool)

(assert (=> (and b!7904447 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))) t!389480) tb!262965))

(declare-fun result!360072 () Bool)

(assert (= result!360072 result!360070))

(assert (=> d!2359049 t!389480))

(declare-fun b_and!352965 () Bool)

(assert (= b_and!352957 (and (=> t!389480 result!360072) b_and!352965)))

(declare-fun m!8279134 () Bool)

(assert (=> d!2359049 m!8279134))

(declare-fun m!8279136 () Bool)

(assert (=> d!2359049 m!8279136))

(assert (=> b!7904176 d!2359049))

(declare-fun d!2359051 () Bool)

(assert (=> d!2359051 (= (get!26669 lt!2684522) (v!55034 lt!2684522))))

(assert (=> b!7904176 d!2359051))

(declare-fun b!7904545 () Bool)

(declare-fun res!3136601 () Bool)

(declare-fun e!4665805 () Bool)

(assert (=> b!7904545 (=> (not res!3136601) (not e!4665805))))

(declare-fun lt!2684637 () Option!17892)

(assert (=> b!7904545 (= res!3136601 (= (rule!11900 (_1!38428 (get!26669 lt!2684637))) (h!80676 (t!389455 rulesArg!141))))))

(declare-fun b!7904546 () Bool)

(declare-fun e!4665804 () Option!17892)

(assert (=> b!7904546 (= e!4665804 None!17891)))

(declare-fun b!7904547 () Bool)

(assert (=> b!7904547 (= e!4665805 (= (size!43016 (_1!38428 (get!26669 lt!2684637))) (size!43017 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684637))))))))

(declare-fun b!7904548 () Bool)

(declare-fun res!3136600 () Bool)

(assert (=> b!7904548 (=> (not res!3136600) (not e!4665805))))

(assert (=> b!7904548 (= res!3136600 (= (value!287366 (_1!38428 (get!26669 lt!2684637))) (apply!14339 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684637)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684637)))))))))

(declare-fun b!7904549 () Bool)

(declare-fun res!3136599 () Bool)

(assert (=> b!7904549 (=> (not res!3136599) (not e!4665805))))

(assert (=> b!7904549 (= res!3136599 (< (size!43017 (_2!38428 (get!26669 lt!2684637))) (size!43017 input!1184)))))

(declare-fun d!2359053 () Bool)

(declare-fun e!4665806 () Bool)

(assert (=> d!2359053 e!4665806))

(declare-fun res!3136598 () Bool)

(assert (=> d!2359053 (=> res!3136598 e!4665806)))

(assert (=> d!2359053 (= res!3136598 (isEmpty!42591 lt!2684637))))

(assert (=> d!2359053 (= lt!2684637 e!4665804)))

(declare-fun c!1450514 () Bool)

(declare-fun lt!2684636 () tuple2!70254)

(assert (=> d!2359053 (= c!1450514 (isEmpty!42593 (_1!38430 lt!2684636)))))

(assert (=> d!2359053 (= lt!2684636 (findLongestMatch!1922 (regex!8610 (h!80676 (t!389455 rulesArg!141))) input!1184))))

(assert (=> d!2359053 (ruleValid!3936 thiss!14377 (h!80676 (t!389455 rulesArg!141)))))

(assert (=> d!2359053 (= (maxPrefixOneRule!3790 thiss!14377 (h!80676 (t!389455 rulesArg!141)) input!1184) lt!2684637)))

(declare-fun b!7904550 () Bool)

(declare-fun e!4665803 () Bool)

(assert (=> b!7904550 (= e!4665803 (matchR!10650 (regex!8610 (h!80676 (t!389455 rulesArg!141))) (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 (t!389455 rulesArg!141))) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(declare-fun b!7904551 () Bool)

(declare-fun res!3136602 () Bool)

(assert (=> b!7904551 (=> (not res!3136602) (not e!4665805))))

(assert (=> b!7904551 (= res!3136602 (= (++!18168 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684637)))) (_2!38428 (get!26669 lt!2684637))) input!1184))))

(declare-fun b!7904552 () Bool)

(assert (=> b!7904552 (= e!4665804 (Some!17891 (tuple2!70251 (Token!15641 (apply!14339 (transformation!8610 (h!80676 (t!389455 rulesArg!141))) (seqFromList!6157 (_1!38430 lt!2684636))) (h!80676 (t!389455 rulesArg!141)) (size!43019 (seqFromList!6157 (_1!38430 lt!2684636))) (_1!38430 lt!2684636)) (_2!38430 lt!2684636))))))

(declare-fun lt!2684634 () Unit!169263)

(assert (=> b!7904552 (= lt!2684634 (longestMatchIsAcceptedByMatchOrIsEmpty!2118 (regex!8610 (h!80676 (t!389455 rulesArg!141))) input!1184))))

(declare-fun res!3136596 () Bool)

(assert (=> b!7904552 (= res!3136596 (isEmpty!42593 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 (t!389455 rulesArg!141))) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(assert (=> b!7904552 (=> res!3136596 e!4665803)))

(assert (=> b!7904552 e!4665803))

(declare-fun lt!2684638 () Unit!169263)

(assert (=> b!7904552 (= lt!2684638 lt!2684634)))

(declare-fun lt!2684635 () Unit!169263)

(assert (=> b!7904552 (= lt!2684635 (lemmaSemiInverse!2665 (transformation!8610 (h!80676 (t!389455 rulesArg!141))) (seqFromList!6157 (_1!38430 lt!2684636))))))

(declare-fun b!7904553 () Bool)

(assert (=> b!7904553 (= e!4665806 e!4665805)))

(declare-fun res!3136597 () Bool)

(assert (=> b!7904553 (=> (not res!3136597) (not e!4665805))))

(assert (=> b!7904553 (= res!3136597 (matchR!10650 (regex!8610 (h!80676 (t!389455 rulesArg!141))) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684637))))))))

(assert (= (and d!2359053 c!1450514) b!7904546))

(assert (= (and d!2359053 (not c!1450514)) b!7904552))

(assert (= (and b!7904552 (not res!3136596)) b!7904550))

(assert (= (and d!2359053 (not res!3136598)) b!7904553))

(assert (= (and b!7904553 res!3136597) b!7904551))

(assert (= (and b!7904551 res!3136602) b!7904549))

(assert (= (and b!7904549 res!3136599) b!7904545))

(assert (= (and b!7904545 res!3136601) b!7904548))

(assert (= (and b!7904548 res!3136600) b!7904547))

(declare-fun m!8279140 () Bool)

(assert (=> b!7904551 m!8279140))

(declare-fun m!8279142 () Bool)

(assert (=> b!7904551 m!8279142))

(assert (=> b!7904551 m!8279142))

(declare-fun m!8279144 () Bool)

(assert (=> b!7904551 m!8279144))

(assert (=> b!7904551 m!8279144))

(declare-fun m!8279146 () Bool)

(assert (=> b!7904551 m!8279146))

(assert (=> b!7904553 m!8279140))

(assert (=> b!7904553 m!8279142))

(assert (=> b!7904553 m!8279142))

(assert (=> b!7904553 m!8279144))

(assert (=> b!7904553 m!8279144))

(declare-fun m!8279148 () Bool)

(assert (=> b!7904553 m!8279148))

(assert (=> b!7904550 m!8278814))

(assert (=> b!7904550 m!8278734))

(assert (=> b!7904550 m!8278814))

(assert (=> b!7904550 m!8278734))

(declare-fun m!8279150 () Bool)

(assert (=> b!7904550 m!8279150))

(declare-fun m!8279152 () Bool)

(assert (=> b!7904550 m!8279152))

(assert (=> b!7904549 m!8279140))

(declare-fun m!8279154 () Bool)

(assert (=> b!7904549 m!8279154))

(assert (=> b!7904549 m!8278734))

(declare-fun m!8279156 () Bool)

(assert (=> d!2359053 m!8279156))

(declare-fun m!8279158 () Bool)

(assert (=> d!2359053 m!8279158))

(declare-fun m!8279160 () Bool)

(assert (=> d!2359053 m!8279160))

(declare-fun m!8279162 () Bool)

(assert (=> d!2359053 m!8279162))

(assert (=> b!7904547 m!8279140))

(declare-fun m!8279164 () Bool)

(assert (=> b!7904547 m!8279164))

(assert (=> b!7904548 m!8279140))

(declare-fun m!8279166 () Bool)

(assert (=> b!7904548 m!8279166))

(assert (=> b!7904548 m!8279166))

(declare-fun m!8279170 () Bool)

(assert (=> b!7904548 m!8279170))

(assert (=> b!7904545 m!8279140))

(assert (=> b!7904552 m!8278734))

(declare-fun m!8279172 () Bool)

(assert (=> b!7904552 m!8279172))

(assert (=> b!7904552 m!8278814))

(assert (=> b!7904552 m!8279172))

(declare-fun m!8279178 () Bool)

(assert (=> b!7904552 m!8279178))

(assert (=> b!7904552 m!8279172))

(declare-fun m!8279182 () Bool)

(assert (=> b!7904552 m!8279182))

(assert (=> b!7904552 m!8278814))

(assert (=> b!7904552 m!8278734))

(assert (=> b!7904552 m!8279150))

(declare-fun m!8279184 () Bool)

(assert (=> b!7904552 m!8279184))

(assert (=> b!7904552 m!8279172))

(declare-fun m!8279188 () Bool)

(assert (=> b!7904552 m!8279188))

(declare-fun m!8279190 () Bool)

(assert (=> b!7904552 m!8279190))

(assert (=> bm!733328 d!2359053))

(declare-fun b!7904572 () Bool)

(declare-fun e!4665816 () Option!17892)

(declare-fun lt!2684644 () Option!17892)

(declare-fun lt!2684643 () Option!17892)

(assert (=> b!7904572 (= e!4665816 (ite (and ((_ is None!17891) lt!2684644) ((_ is None!17891) lt!2684643)) None!17891 (ite ((_ is None!17891) lt!2684643) lt!2684644 (ite ((_ is None!17891) lt!2684644) lt!2684643 (ite (>= (size!43016 (_1!38428 (v!55034 lt!2684644))) (size!43016 (_1!38428 (v!55034 lt!2684643)))) lt!2684644 lt!2684643)))))))

(declare-fun call!733362 () Option!17892)

(assert (=> b!7904572 (= lt!2684644 call!733362)))

(assert (=> b!7904572 (= lt!2684643 (maxPrefix!4743 thiss!14377 (t!389455 (t!389455 (t!389455 rulesArg!141))) input!1184))))

(declare-fun bm!733357 () Bool)

(assert (=> bm!733357 (= call!733362 (maxPrefixOneRule!3790 thiss!14377 (h!80676 (t!389455 (t!389455 rulesArg!141))) input!1184))))

(declare-fun b!7904573 () Bool)

(declare-fun res!3136617 () Bool)

(declare-fun e!4665814 () Bool)

(assert (=> b!7904573 (=> (not res!3136617) (not e!4665814))))

(declare-fun lt!2684642 () Option!17892)

(assert (=> b!7904573 (= res!3136617 (= (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684642)))) (originalCharacters!8851 (_1!38428 (get!26669 lt!2684642)))))))

(declare-fun b!7904574 () Bool)

(declare-fun e!4665815 () Bool)

(assert (=> b!7904574 (= e!4665815 e!4665814)))

(declare-fun res!3136615 () Bool)

(assert (=> b!7904574 (=> (not res!3136615) (not e!4665814))))

(assert (=> b!7904574 (= res!3136615 (isDefined!14468 lt!2684642))))

(declare-fun d!2359057 () Bool)

(assert (=> d!2359057 e!4665815))

(declare-fun res!3136611 () Bool)

(assert (=> d!2359057 (=> res!3136611 e!4665815)))

(assert (=> d!2359057 (= res!3136611 (isEmpty!42591 lt!2684642))))

(assert (=> d!2359057 (= lt!2684642 e!4665816)))

(declare-fun c!1450518 () Bool)

(assert (=> d!2359057 (= c!1450518 (and ((_ is Cons!74228) (t!389455 (t!389455 rulesArg!141))) ((_ is Nil!74228) (t!389455 (t!389455 (t!389455 rulesArg!141))))))))

(declare-fun lt!2684640 () Unit!169263)

(declare-fun lt!2684641 () Unit!169263)

(assert (=> d!2359057 (= lt!2684640 lt!2684641)))

(assert (=> d!2359057 (isPrefix!6443 input!1184 input!1184)))

(assert (=> d!2359057 (= lt!2684641 (lemmaIsPrefixRefl!3954 input!1184 input!1184))))

(assert (=> d!2359057 (rulesValidInductive!3421 thiss!14377 (t!389455 (t!389455 rulesArg!141)))))

(assert (=> d!2359057 (= (maxPrefix!4743 thiss!14377 (t!389455 (t!389455 rulesArg!141)) input!1184) lt!2684642)))

(declare-fun b!7904575 () Bool)

(assert (=> b!7904575 (= e!4665814 (contains!20890 (t!389455 (t!389455 rulesArg!141)) (rule!11900 (_1!38428 (get!26669 lt!2684642)))))))

(declare-fun b!7904576 () Bool)

(declare-fun res!3136614 () Bool)

(assert (=> b!7904576 (=> (not res!3136614) (not e!4665814))))

(assert (=> b!7904576 (= res!3136614 (< (size!43017 (_2!38428 (get!26669 lt!2684642))) (size!43017 input!1184)))))

(declare-fun b!7904577 () Bool)

(assert (=> b!7904577 (= e!4665816 call!733362)))

(declare-fun b!7904578 () Bool)

(declare-fun res!3136613 () Bool)

(assert (=> b!7904578 (=> (not res!3136613) (not e!4665814))))

(assert (=> b!7904578 (= res!3136613 (= (value!287366 (_1!38428 (get!26669 lt!2684642))) (apply!14339 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684642)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684642)))))))))

(declare-fun b!7904579 () Bool)

(declare-fun res!3136616 () Bool)

(assert (=> b!7904579 (=> (not res!3136616) (not e!4665814))))

(assert (=> b!7904579 (= res!3136616 (= (++!18168 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684642)))) (_2!38428 (get!26669 lt!2684642))) input!1184))))

(declare-fun b!7904580 () Bool)

(declare-fun res!3136612 () Bool)

(assert (=> b!7904580 (=> (not res!3136612) (not e!4665814))))

(assert (=> b!7904580 (= res!3136612 (matchR!10650 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684642)))) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684642))))))))

(assert (= (and d!2359057 c!1450518) b!7904577))

(assert (= (and d!2359057 (not c!1450518)) b!7904572))

(assert (= (or b!7904577 b!7904572) bm!733357))

(assert (= (and d!2359057 (not res!3136611)) b!7904574))

(assert (= (and b!7904574 res!3136615) b!7904573))

(assert (= (and b!7904573 res!3136617) b!7904576))

(assert (= (and b!7904576 res!3136614) b!7904579))

(assert (= (and b!7904579 res!3136616) b!7904578))

(assert (= (and b!7904578 res!3136613) b!7904580))

(assert (= (and b!7904580 res!3136612) b!7904575))

(declare-fun m!8279204 () Bool)

(assert (=> b!7904576 m!8279204))

(declare-fun m!8279206 () Bool)

(assert (=> b!7904576 m!8279206))

(assert (=> b!7904576 m!8278734))

(declare-fun m!8279208 () Bool)

(assert (=> b!7904572 m!8279208))

(assert (=> b!7904573 m!8279204))

(declare-fun m!8279214 () Bool)

(assert (=> b!7904573 m!8279214))

(assert (=> b!7904573 m!8279214))

(declare-fun m!8279218 () Bool)

(assert (=> b!7904573 m!8279218))

(declare-fun m!8279222 () Bool)

(assert (=> d!2359057 m!8279222))

(assert (=> d!2359057 m!8278714))

(assert (=> d!2359057 m!8278716))

(declare-fun m!8279224 () Bool)

(assert (=> d!2359057 m!8279224))

(assert (=> b!7904578 m!8279204))

(declare-fun m!8279226 () Bool)

(assert (=> b!7904578 m!8279226))

(assert (=> b!7904578 m!8279226))

(declare-fun m!8279228 () Bool)

(assert (=> b!7904578 m!8279228))

(assert (=> b!7904575 m!8279204))

(declare-fun m!8279230 () Bool)

(assert (=> b!7904575 m!8279230))

(assert (=> b!7904579 m!8279204))

(assert (=> b!7904579 m!8279214))

(assert (=> b!7904579 m!8279214))

(assert (=> b!7904579 m!8279218))

(assert (=> b!7904579 m!8279218))

(declare-fun m!8279232 () Bool)

(assert (=> b!7904579 m!8279232))

(declare-fun m!8279234 () Bool)

(assert (=> b!7904574 m!8279234))

(declare-fun m!8279236 () Bool)

(assert (=> bm!733357 m!8279236))

(assert (=> b!7904580 m!8279204))

(assert (=> b!7904580 m!8279214))

(assert (=> b!7904580 m!8279214))

(assert (=> b!7904580 m!8279218))

(assert (=> b!7904580 m!8279218))

(declare-fun m!8279238 () Bool)

(assert (=> b!7904580 m!8279238))

(assert (=> b!7904175 d!2359057))

(assert (=> d!2358957 d!2358955))

(declare-fun d!2359069 () Bool)

(assert (=> d!2359069 (isPrefix!6443 input!1184 input!1184)))

(assert (=> d!2359069 true))

(declare-fun _$45!2443 () Unit!169263)

(assert (=> d!2359069 (= (choose!59721 input!1184 input!1184) _$45!2443)))

(declare-fun bs!1968079 () Bool)

(assert (= bs!1968079 d!2359069))

(assert (=> bs!1968079 m!8278714))

(assert (=> d!2358957 d!2359069))

(declare-fun d!2359071 () Bool)

(declare-fun lt!2684647 () Int)

(assert (=> d!2359071 (>= lt!2684647 0)))

(declare-fun e!4665820 () Int)

(assert (=> d!2359071 (= lt!2684647 e!4665820)))

(declare-fun c!1450520 () Bool)

(assert (=> d!2359071 (= c!1450520 ((_ is Nil!74227) (t!389454 (_2!38428 lt!2684494))))))

(assert (=> d!2359071 (= (size!43017 (t!389454 (_2!38428 lt!2684494))) lt!2684647)))

(declare-fun b!7904586 () Bool)

(assert (=> b!7904586 (= e!4665820 0)))

(declare-fun b!7904587 () Bool)

(assert (=> b!7904587 (= e!4665820 (+ 1 (size!43017 (t!389454 (t!389454 (_2!38428 lt!2684494))))))))

(assert (= (and d!2359071 c!1450520) b!7904586))

(assert (= (and d!2359071 (not c!1450520)) b!7904587))

(declare-fun m!8279240 () Bool)

(assert (=> b!7904587 m!8279240))

(assert (=> b!7904420 d!2359071))

(declare-fun d!2359073 () Bool)

(assert (=> d!2359073 (= (isEmpty!42591 lt!2684522) (not ((_ is Some!17891) lt!2684522)))))

(assert (=> d!2358941 d!2359073))

(assert (=> d!2358941 d!2358955))

(assert (=> d!2358941 d!2358957))

(declare-fun bs!1968080 () Bool)

(declare-fun d!2359075 () Bool)

(assert (= bs!1968080 (and d!2359075 d!2358975)))

(declare-fun lambda!472479 () Int)

(assert (=> bs!1968080 (= lambda!472479 lambda!472471)))

(assert (=> d!2359075 true))

(declare-fun lt!2684648 () Bool)

(assert (=> d!2359075 (= lt!2684648 (forall!18445 (t!389455 rulesArg!141) lambda!472479))))

(declare-fun e!4665821 () Bool)

(assert (=> d!2359075 (= lt!2684648 e!4665821)))

(declare-fun res!3136620 () Bool)

(assert (=> d!2359075 (=> res!3136620 e!4665821)))

(assert (=> d!2359075 (= res!3136620 (not ((_ is Cons!74228) (t!389455 rulesArg!141))))))

(assert (=> d!2359075 (= (rulesValidInductive!3421 thiss!14377 (t!389455 rulesArg!141)) lt!2684648)))

(declare-fun b!7904588 () Bool)

(declare-fun e!4665822 () Bool)

(assert (=> b!7904588 (= e!4665821 e!4665822)))

(declare-fun res!3136621 () Bool)

(assert (=> b!7904588 (=> (not res!3136621) (not e!4665822))))

(assert (=> b!7904588 (= res!3136621 (ruleValid!3936 thiss!14377 (h!80676 (t!389455 rulesArg!141))))))

(declare-fun b!7904589 () Bool)

(assert (=> b!7904589 (= e!4665822 (rulesValidInductive!3421 thiss!14377 (t!389455 (t!389455 rulesArg!141))))))

(assert (= (and d!2359075 (not res!3136620)) b!7904588))

(assert (= (and b!7904588 res!3136621) b!7904589))

(declare-fun m!8279242 () Bool)

(assert (=> d!2359075 m!8279242))

(assert (=> b!7904588 m!8279162))

(assert (=> b!7904589 m!8279224))

(assert (=> d!2358941 d!2359075))

(declare-fun d!2359077 () Bool)

(assert (=> d!2359077 (= (isEmpty!42591 lt!2684538) (not ((_ is Some!17891) lt!2684538)))))

(assert (=> d!2358945 d!2359077))

(declare-fun d!2359079 () Bool)

(assert (=> d!2359079 (= (isEmpty!42593 (_1!38430 lt!2684537)) ((_ is Nil!74227) (_1!38430 lt!2684537)))))

(assert (=> d!2358945 d!2359079))

(declare-fun d!2359081 () Bool)

(declare-fun lt!2684671 () tuple2!70254)

(assert (=> d!2359081 (= (++!18168 (_1!38430 lt!2684671) (_2!38430 lt!2684671)) input!1184)))

(declare-fun sizeTr!453 (List!74351 Int) Int)

(assert (=> d!2359081 (= lt!2684671 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 0 input!1184 input!1184 (sizeTr!453 input!1184 0)))))

(declare-fun lt!2684670 () Unit!169263)

(declare-fun lt!2684669 () Unit!169263)

(assert (=> d!2359081 (= lt!2684670 lt!2684669)))

(declare-fun lt!2684674 () List!74351)

(declare-fun lt!2684676 () Int)

(assert (=> d!2359081 (= (sizeTr!453 lt!2684674 lt!2684676) (+ (size!43017 lt!2684674) lt!2684676))))

(declare-fun lemmaSizeTrEqualsSize!452 (List!74351 Int) Unit!169263)

(assert (=> d!2359081 (= lt!2684669 (lemmaSizeTrEqualsSize!452 lt!2684674 lt!2684676))))

(assert (=> d!2359081 (= lt!2684676 0)))

(assert (=> d!2359081 (= lt!2684674 Nil!74227)))

(declare-fun lt!2684675 () Unit!169263)

(declare-fun lt!2684673 () Unit!169263)

(assert (=> d!2359081 (= lt!2684675 lt!2684673)))

(declare-fun lt!2684672 () Int)

(assert (=> d!2359081 (= (sizeTr!453 input!1184 lt!2684672) (+ (size!43017 input!1184) lt!2684672))))

(assert (=> d!2359081 (= lt!2684673 (lemmaSizeTrEqualsSize!452 input!1184 lt!2684672))))

(assert (=> d!2359081 (= lt!2684672 0)))

(assert (=> d!2359081 (validRegex!11649 (regex!8610 (h!80676 rulesArg!141)))))

(assert (=> d!2359081 (= (findLongestMatch!1922 (regex!8610 (h!80676 rulesArg!141)) input!1184) lt!2684671)))

(declare-fun bs!1968084 () Bool)

(assert (= bs!1968084 d!2359081))

(declare-fun m!8279270 () Bool)

(assert (=> bs!1968084 m!8279270))

(declare-fun m!8279274 () Bool)

(assert (=> bs!1968084 m!8279274))

(declare-fun m!8279276 () Bool)

(assert (=> bs!1968084 m!8279276))

(declare-fun m!8279278 () Bool)

(assert (=> bs!1968084 m!8279278))

(declare-fun m!8279282 () Bool)

(assert (=> bs!1968084 m!8279282))

(declare-fun m!8279284 () Bool)

(assert (=> bs!1968084 m!8279284))

(declare-fun m!8279286 () Bool)

(assert (=> bs!1968084 m!8279286))

(assert (=> bs!1968084 m!8278734))

(assert (=> bs!1968084 m!8279274))

(declare-fun m!8279288 () Bool)

(assert (=> bs!1968084 m!8279288))

(declare-fun m!8279290 () Bool)

(assert (=> bs!1968084 m!8279290))

(assert (=> d!2358945 d!2359081))

(declare-fun d!2359097 () Bool)

(declare-fun res!3136649 () Bool)

(declare-fun e!4665856 () Bool)

(assert (=> d!2359097 (=> (not res!3136649) (not e!4665856))))

(assert (=> d!2359097 (= res!3136649 (validRegex!11649 (regex!8610 (h!80676 rulesArg!141))))))

(assert (=> d!2359097 (= (ruleValid!3936 thiss!14377 (h!80676 rulesArg!141)) e!4665856)))

(declare-fun b!7904641 () Bool)

(declare-fun res!3136650 () Bool)

(assert (=> b!7904641 (=> (not res!3136650) (not e!4665856))))

(assert (=> b!7904641 (= res!3136650 (not (nullable!9486 (regex!8610 (h!80676 rulesArg!141)))))))

(declare-fun b!7904642 () Bool)

(assert (=> b!7904642 (= e!4665856 (not (= (tag!9474 (h!80676 rulesArg!141)) (String!83053 ""))))))

(assert (= (and d!2359097 res!3136649) b!7904641))

(assert (= (and b!7904641 res!3136650) b!7904642))

(assert (=> d!2359097 m!8279282))

(declare-fun m!8279302 () Bool)

(assert (=> b!7904641 m!8279302))

(assert (=> d!2358945 d!2359097))

(declare-fun d!2359101 () Bool)

(declare-fun res!3136655 () Bool)

(declare-fun e!4665861 () Bool)

(assert (=> d!2359101 (=> res!3136655 e!4665861)))

(assert (=> d!2359101 (= res!3136655 ((_ is Nil!74228) rulesArg!141))))

(assert (=> d!2359101 (= (forall!18445 rulesArg!141 lambda!472471) e!4665861)))

(declare-fun b!7904647 () Bool)

(declare-fun e!4665862 () Bool)

(assert (=> b!7904647 (= e!4665861 e!4665862)))

(declare-fun res!3136656 () Bool)

(assert (=> b!7904647 (=> (not res!3136656) (not e!4665862))))

(declare-fun dynLambda!30078 (Int Rule!17020) Bool)

(assert (=> b!7904647 (= res!3136656 (dynLambda!30078 lambda!472471 (h!80676 rulesArg!141)))))

(declare-fun b!7904648 () Bool)

(assert (=> b!7904648 (= e!4665862 (forall!18445 (t!389455 rulesArg!141) lambda!472471))))

(assert (= (and d!2359101 (not res!3136655)) b!7904647))

(assert (= (and b!7904647 res!3136656) b!7904648))

(declare-fun b_lambda!289811 () Bool)

(assert (=> (not b_lambda!289811) (not b!7904647)))

(declare-fun m!8279304 () Bool)

(assert (=> b!7904647 m!8279304))

(declare-fun m!8279306 () Bool)

(assert (=> b!7904648 m!8279306))

(assert (=> d!2358975 d!2359101))

(declare-fun b!7904659 () Bool)

(declare-fun e!4665868 () List!74351)

(declare-fun list!19245 (IArray!31629) List!74351)

(assert (=> b!7904659 (= e!4665868 (list!19245 (xs!19166 (c!1450453 (charsOf!5554 (_1!38428 lt!2684494))))))))

(declare-fun b!7904658 () Bool)

(declare-fun e!4665867 () List!74351)

(assert (=> b!7904658 (= e!4665867 e!4665868)))

(declare-fun c!1450538 () Bool)

(assert (=> b!7904658 (= c!1450538 ((_ is Leaf!30057) (c!1450453 (charsOf!5554 (_1!38428 lt!2684494)))))))

(declare-fun b!7904657 () Bool)

(assert (=> b!7904657 (= e!4665867 Nil!74227)))

(declare-fun b!7904660 () Bool)

(assert (=> b!7904660 (= e!4665868 (++!18168 (list!19243 (left!56616 (c!1450453 (charsOf!5554 (_1!38428 lt!2684494))))) (list!19243 (right!56946 (c!1450453 (charsOf!5554 (_1!38428 lt!2684494)))))))))

(declare-fun d!2359103 () Bool)

(declare-fun c!1450537 () Bool)

(assert (=> d!2359103 (= c!1450537 ((_ is Empty!15784) (c!1450453 (charsOf!5554 (_1!38428 lt!2684494)))))))

(assert (=> d!2359103 (= (list!19243 (c!1450453 (charsOf!5554 (_1!38428 lt!2684494)))) e!4665867)))

(assert (= (and d!2359103 c!1450537) b!7904657))

(assert (= (and d!2359103 (not c!1450537)) b!7904658))

(assert (= (and b!7904658 c!1450538) b!7904659))

(assert (= (and b!7904658 (not c!1450538)) b!7904660))

(declare-fun m!8279308 () Bool)

(assert (=> b!7904659 m!8279308))

(declare-fun m!8279310 () Bool)

(assert (=> b!7904660 m!8279310))

(declare-fun m!8279312 () Bool)

(assert (=> b!7904660 m!8279312))

(assert (=> b!7904660 m!8279310))

(assert (=> b!7904660 m!8279312))

(declare-fun m!8279314 () Bool)

(assert (=> b!7904660 m!8279314))

(assert (=> d!2358961 d!2359103))

(declare-fun b!7904689 () Bool)

(declare-fun e!4665886 () Bool)

(declare-fun derivativeStep!6430 (Regex!21313 C!42956) Regex!21313)

(assert (=> b!7904689 (= e!4665886 (matchR!10650 (derivativeStep!6430 (regex!8610 (h!80676 rulesArg!141)) (head!16147 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538)))))) (tail!15690 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538)))))))))

(declare-fun b!7904690 () Bool)

(declare-fun e!4665884 () Bool)

(declare-fun e!4665889 () Bool)

(assert (=> b!7904690 (= e!4665884 e!4665889)))

(declare-fun res!3136675 () Bool)

(assert (=> b!7904690 (=> (not res!3136675) (not e!4665889))))

(declare-fun lt!2684680 () Bool)

(assert (=> b!7904690 (= res!3136675 (not lt!2684680))))

(declare-fun b!7904691 () Bool)

(declare-fun res!3136678 () Bool)

(assert (=> b!7904691 (=> res!3136678 e!4665884)))

(declare-fun e!4665883 () Bool)

(assert (=> b!7904691 (= res!3136678 e!4665883)))

(declare-fun res!3136673 () Bool)

(assert (=> b!7904691 (=> (not res!3136673) (not e!4665883))))

(assert (=> b!7904691 (= res!3136673 lt!2684680)))

(declare-fun b!7904692 () Bool)

(declare-fun e!4665885 () Bool)

(assert (=> b!7904692 (= e!4665885 (not lt!2684680))))

(declare-fun b!7904693 () Bool)

(declare-fun e!4665888 () Bool)

(declare-fun call!733369 () Bool)

(assert (=> b!7904693 (= e!4665888 (= lt!2684680 call!733369))))

(declare-fun b!7904694 () Bool)

(declare-fun e!4665887 () Bool)

(assert (=> b!7904694 (= e!4665887 (not (= (head!16147 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))) (c!1450454 (regex!8610 (h!80676 rulesArg!141))))))))

(declare-fun b!7904695 () Bool)

(assert (=> b!7904695 (= e!4665888 e!4665885)))

(declare-fun c!1450547 () Bool)

(assert (=> b!7904695 (= c!1450547 ((_ is EmptyLang!21313) (regex!8610 (h!80676 rulesArg!141))))))

(declare-fun b!7904696 () Bool)

(assert (=> b!7904696 (= e!4665889 e!4665887)))

(declare-fun res!3136680 () Bool)

(assert (=> b!7904696 (=> res!3136680 e!4665887)))

(assert (=> b!7904696 (= res!3136680 call!733369)))

(declare-fun b!7904697 () Bool)

(assert (=> b!7904697 (= e!4665886 (nullable!9486 (regex!8610 (h!80676 rulesArg!141))))))

(declare-fun bm!733364 () Bool)

(assert (=> bm!733364 (= call!733369 (isEmpty!42593 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))))))

(declare-fun b!7904698 () Bool)

(declare-fun res!3136677 () Bool)

(assert (=> b!7904698 (=> res!3136677 e!4665884)))

(assert (=> b!7904698 (= res!3136677 (not ((_ is ElementMatch!21313) (regex!8610 (h!80676 rulesArg!141)))))))

(assert (=> b!7904698 (= e!4665885 e!4665884)))

(declare-fun b!7904699 () Bool)

(declare-fun res!3136679 () Bool)

(assert (=> b!7904699 (=> res!3136679 e!4665887)))

(assert (=> b!7904699 (= res!3136679 (not (isEmpty!42593 (tail!15690 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))))))))

(declare-fun b!7904700 () Bool)

(declare-fun res!3136676 () Bool)

(assert (=> b!7904700 (=> (not res!3136676) (not e!4665883))))

(assert (=> b!7904700 (= res!3136676 (isEmpty!42593 (tail!15690 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538)))))))))

(declare-fun d!2359105 () Bool)

(assert (=> d!2359105 e!4665888))

(declare-fun c!1450545 () Bool)

(assert (=> d!2359105 (= c!1450545 ((_ is EmptyExpr!21313) (regex!8610 (h!80676 rulesArg!141))))))

(assert (=> d!2359105 (= lt!2684680 e!4665886)))

(declare-fun c!1450546 () Bool)

(assert (=> d!2359105 (= c!1450546 (isEmpty!42593 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))))))

(assert (=> d!2359105 (validRegex!11649 (regex!8610 (h!80676 rulesArg!141)))))

(assert (=> d!2359105 (= (matchR!10650 (regex!8610 (h!80676 rulesArg!141)) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))) lt!2684680)))

(declare-fun b!7904701 () Bool)

(declare-fun res!3136674 () Bool)

(assert (=> b!7904701 (=> (not res!3136674) (not e!4665883))))

(assert (=> b!7904701 (= res!3136674 (not call!733369))))

(declare-fun b!7904702 () Bool)

(assert (=> b!7904702 (= e!4665883 (= (head!16147 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))) (c!1450454 (regex!8610 (h!80676 rulesArg!141)))))))

(assert (= (and d!2359105 c!1450546) b!7904697))

(assert (= (and d!2359105 (not c!1450546)) b!7904689))

(assert (= (and d!2359105 c!1450545) b!7904693))

(assert (= (and d!2359105 (not c!1450545)) b!7904695))

(assert (= (and b!7904695 c!1450547) b!7904692))

(assert (= (and b!7904695 (not c!1450547)) b!7904698))

(assert (= (and b!7904698 (not res!3136677)) b!7904691))

(assert (= (and b!7904691 res!3136673) b!7904701))

(assert (= (and b!7904701 res!3136674) b!7904700))

(assert (= (and b!7904700 res!3136676) b!7904702))

(assert (= (and b!7904691 (not res!3136678)) b!7904690))

(assert (= (and b!7904690 res!3136675) b!7904696))

(assert (= (and b!7904696 (not res!3136680)) b!7904699))

(assert (= (and b!7904699 (not res!3136679)) b!7904694))

(assert (= (or b!7904693 b!7904696 b!7904701) bm!733364))

(assert (=> b!7904700 m!8278808))

(declare-fun m!8279316 () Bool)

(assert (=> b!7904700 m!8279316))

(assert (=> b!7904700 m!8279316))

(declare-fun m!8279318 () Bool)

(assert (=> b!7904700 m!8279318))

(assert (=> bm!733364 m!8278808))

(declare-fun m!8279320 () Bool)

(assert (=> bm!733364 m!8279320))

(assert (=> b!7904694 m!8278808))

(declare-fun m!8279322 () Bool)

(assert (=> b!7904694 m!8279322))

(assert (=> b!7904689 m!8278808))

(assert (=> b!7904689 m!8279322))

(assert (=> b!7904689 m!8279322))

(declare-fun m!8279324 () Bool)

(assert (=> b!7904689 m!8279324))

(assert (=> b!7904689 m!8278808))

(assert (=> b!7904689 m!8279316))

(assert (=> b!7904689 m!8279324))

(assert (=> b!7904689 m!8279316))

(declare-fun m!8279326 () Bool)

(assert (=> b!7904689 m!8279326))

(assert (=> b!7904699 m!8278808))

(assert (=> b!7904699 m!8279316))

(assert (=> b!7904699 m!8279316))

(assert (=> b!7904699 m!8279318))

(assert (=> b!7904702 m!8278808))

(assert (=> b!7904702 m!8279322))

(assert (=> b!7904697 m!8279302))

(assert (=> d!2359105 m!8278808))

(assert (=> d!2359105 m!8279320))

(assert (=> d!2359105 m!8279282))

(assert (=> b!7904210 d!2359105))

(declare-fun d!2359107 () Bool)

(assert (=> d!2359107 (= (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538)))) (list!19243 (c!1450453 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))))))

(declare-fun bs!1968085 () Bool)

(assert (= bs!1968085 d!2359107))

(declare-fun m!8279328 () Bool)

(assert (=> bs!1968085 m!8279328))

(assert (=> b!7904210 d!2359107))

(declare-fun d!2359109 () Bool)

(declare-fun lt!2684681 () BalanceConc!30686)

(assert (=> d!2359109 (= (list!19241 lt!2684681) (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538))))))

(assert (=> d!2359109 (= lt!2684681 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538))))) (value!287366 (_1!38428 (get!26669 lt!2684538)))))))

(assert (=> d!2359109 (= (charsOf!5554 (_1!38428 (get!26669 lt!2684538))) lt!2684681)))

(declare-fun b_lambda!289813 () Bool)

(assert (=> (not b_lambda!289813) (not d!2359109)))

(declare-fun tb!262975 () Bool)

(declare-fun t!389491 () Bool)

(assert (=> (and b!7904118 (= (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))))) t!389491) tb!262975))

(declare-fun b!7904703 () Bool)

(declare-fun e!4665890 () Bool)

(declare-fun tp!2354750 () Bool)

(assert (=> b!7904703 (= e!4665890 (and (inv!95222 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538))))) (value!287366 (_1!38428 (get!26669 lt!2684538)))))) tp!2354750))))

(declare-fun result!360082 () Bool)

(assert (=> tb!262975 (= result!360082 (and (inv!95223 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538))))) (value!287366 (_1!38428 (get!26669 lt!2684538))))) e!4665890))))

(assert (= tb!262975 b!7904703))

(declare-fun m!8279330 () Bool)

(assert (=> b!7904703 m!8279330))

(declare-fun m!8279332 () Bool)

(assert (=> tb!262975 m!8279332))

(assert (=> d!2359109 t!389491))

(declare-fun b_and!352975 () Bool)

(assert (= b_and!352963 (and (=> t!389491 result!360082) b_and!352975)))

(declare-fun tb!262977 () Bool)

(declare-fun t!389493 () Bool)

(assert (=> (and b!7904447 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))))) t!389493) tb!262977))

(declare-fun result!360084 () Bool)

(assert (= result!360084 result!360082))

(assert (=> d!2359109 t!389493))

(declare-fun b_and!352977 () Bool)

(assert (= b_and!352965 (and (=> t!389493 result!360084) b_and!352977)))

(declare-fun m!8279334 () Bool)

(assert (=> d!2359109 m!8279334))

(declare-fun m!8279336 () Bool)

(assert (=> d!2359109 m!8279336))

(assert (=> b!7904210 d!2359109))

(declare-fun d!2359111 () Bool)

(assert (=> d!2359111 (= (get!26669 lt!2684538) (v!55034 lt!2684538))))

(assert (=> b!7904210 d!2359111))

(declare-fun d!2359113 () Bool)

(declare-fun isBalanced!4476 (Conc!15784) Bool)

(assert (=> d!2359113 (= (inv!95223 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))) (isBalanced!4476 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))))))

(declare-fun bs!1968086 () Bool)

(assert (= bs!1968086 d!2359113))

(declare-fun m!8279338 () Bool)

(assert (=> bs!1968086 m!8279338))

(assert (=> tb!262949 d!2359113))

(declare-fun d!2359115 () Bool)

(assert (=> d!2359115 (= (seqFromList!6157 (_1!38430 lt!2684537)) (fromListB!2778 (_1!38430 lt!2684537)))))

(declare-fun bs!1968087 () Bool)

(assert (= bs!1968087 d!2359115))

(declare-fun m!8279340 () Bool)

(assert (=> bs!1968087 m!8279340))

(assert (=> b!7904209 d!2359115))

(declare-fun d!2359117 () Bool)

(declare-fun e!4665893 () Bool)

(assert (=> d!2359117 e!4665893))

(declare-fun res!3136683 () Bool)

(assert (=> d!2359117 (=> res!3136683 e!4665893)))

(assert (=> d!2359117 (= res!3136683 (isEmpty!42593 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(declare-fun lt!2684684 () Unit!169263)

(declare-fun choose!59722 (Regex!21313 List!74351) Unit!169263)

(assert (=> d!2359117 (= lt!2684684 (choose!59722 (regex!8610 (h!80676 rulesArg!141)) input!1184))))

(assert (=> d!2359117 (validRegex!11649 (regex!8610 (h!80676 rulesArg!141)))))

(assert (=> d!2359117 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2118 (regex!8610 (h!80676 rulesArg!141)) input!1184) lt!2684684)))

(declare-fun b!7904706 () Bool)

(assert (=> b!7904706 (= e!4665893 (matchR!10650 (regex!8610 (h!80676 rulesArg!141)) (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(assert (= (and d!2359117 (not res!3136683)) b!7904706))

(assert (=> d!2359117 m!8279282))

(assert (=> d!2359117 m!8278814))

(assert (=> d!2359117 m!8278814))

(assert (=> d!2359117 m!8278734))

(assert (=> d!2359117 m!8278816))

(declare-fun m!8279342 () Bool)

(assert (=> d!2359117 m!8279342))

(assert (=> d!2359117 m!8278842))

(assert (=> d!2359117 m!8278734))

(assert (=> b!7904706 m!8278814))

(assert (=> b!7904706 m!8278734))

(assert (=> b!7904706 m!8278814))

(assert (=> b!7904706 m!8278734))

(assert (=> b!7904706 m!8278816))

(assert (=> b!7904706 m!8278818))

(assert (=> b!7904209 d!2359117))

(declare-fun d!2359119 () Bool)

(assert (=> d!2359119 (= (isEmpty!42593 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))) ((_ is Nil!74227) (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(assert (=> b!7904209 d!2359119))

(declare-fun d!2359121 () Bool)

(assert (=> d!2359121 (= (apply!14339 (transformation!8610 (h!80676 rulesArg!141)) (seqFromList!6157 (_1!38430 lt!2684537))) (dynLambda!30070 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (seqFromList!6157 (_1!38430 lt!2684537))))))

(declare-fun b_lambda!289815 () Bool)

(assert (=> (not b_lambda!289815) (not d!2359121)))

(declare-fun t!389495 () Bool)

(declare-fun tb!262979 () Bool)

(assert (=> (and b!7904118 (= (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) t!389495) tb!262979))

(declare-fun result!360086 () Bool)

(assert (=> tb!262979 (= result!360086 (inv!21 (dynLambda!30070 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (seqFromList!6157 (_1!38430 lt!2684537)))))))

(declare-fun m!8279344 () Bool)

(assert (=> tb!262979 m!8279344))

(assert (=> d!2359121 t!389495))

(declare-fun b_and!352979 () Bool)

(assert (= b_and!352947 (and (=> t!389495 result!360086) b_and!352979)))

(declare-fun t!389497 () Bool)

(declare-fun tb!262981 () Bool)

(assert (=> (and b!7904447 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) t!389497) tb!262981))

(declare-fun result!360088 () Bool)

(assert (= result!360088 result!360086))

(assert (=> d!2359121 t!389497))

(declare-fun b_and!352981 () Bool)

(assert (= b_and!352955 (and (=> t!389497 result!360088) b_and!352981)))

(assert (=> d!2359121 m!8278836))

(declare-fun m!8279346 () Bool)

(assert (=> d!2359121 m!8279346))

(assert (=> b!7904209 d!2359121))

(declare-fun bm!733405 () Bool)

(declare-fun call!733412 () List!74351)

(assert (=> bm!733405 (= call!733412 (tail!15690 input!1184))))

(declare-fun b!7904808 () Bool)

(declare-fun e!4665966 () tuple2!70254)

(assert (=> b!7904808 (= e!4665966 (tuple2!70255 Nil!74227 input!1184))))

(declare-fun b!7904809 () Bool)

(declare-fun c!1450587 () Bool)

(declare-fun call!733414 () Bool)

(assert (=> b!7904809 (= c!1450587 call!733414)))

(declare-fun lt!2684857 () Unit!169263)

(declare-fun lt!2684845 () Unit!169263)

(assert (=> b!7904809 (= lt!2684857 lt!2684845)))

(assert (=> b!7904809 (= input!1184 Nil!74227)))

(declare-fun call!733417 () Unit!169263)

(assert (=> b!7904809 (= lt!2684845 call!733417)))

(declare-fun lt!2684846 () Unit!169263)

(declare-fun lt!2684841 () Unit!169263)

(assert (=> b!7904809 (= lt!2684846 lt!2684841)))

(declare-fun call!733411 () Bool)

(assert (=> b!7904809 call!733411))

(declare-fun call!733410 () Unit!169263)

(assert (=> b!7904809 (= lt!2684841 call!733410)))

(declare-fun e!4665963 () tuple2!70254)

(declare-fun e!4665961 () tuple2!70254)

(assert (=> b!7904809 (= e!4665963 e!4665961)))

(declare-fun bm!733406 () Bool)

(assert (=> bm!733406 (= call!733410 (lemmaIsPrefixRefl!3954 input!1184 input!1184))))

(declare-fun b!7904810 () Bool)

(declare-fun e!4665962 () tuple2!70254)

(assert (=> b!7904810 (= e!4665962 (tuple2!70255 Nil!74227 input!1184))))

(declare-fun b!7904811 () Bool)

(assert (=> b!7904811 (= e!4665961 (tuple2!70255 Nil!74227 input!1184))))

(declare-fun b!7904812 () Bool)

(declare-fun c!1450583 () Bool)

(assert (=> b!7904812 (= c!1450583 call!733414)))

(declare-fun lt!2684855 () Unit!169263)

(declare-fun lt!2684849 () Unit!169263)

(assert (=> b!7904812 (= lt!2684855 lt!2684849)))

(declare-fun lt!2684851 () C!42956)

(declare-fun lt!2684861 () List!74351)

(assert (=> b!7904812 (= (++!18168 (++!18168 Nil!74227 (Cons!74227 lt!2684851 Nil!74227)) lt!2684861) input!1184)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3472 (List!74351 C!42956 List!74351 List!74351) Unit!169263)

(assert (=> b!7904812 (= lt!2684849 (lemmaMoveElementToOtherListKeepsConcatEq!3472 Nil!74227 lt!2684851 lt!2684861 input!1184))))

(assert (=> b!7904812 (= lt!2684861 (tail!15690 input!1184))))

(assert (=> b!7904812 (= lt!2684851 (head!16147 input!1184))))

(declare-fun lt!2684853 () Unit!169263)

(declare-fun lt!2684868 () Unit!169263)

(assert (=> b!7904812 (= lt!2684853 lt!2684868)))

(declare-fun getSuffix!3685 (List!74351 List!74351) List!74351)

(assert (=> b!7904812 (isPrefix!6443 (++!18168 Nil!74227 (Cons!74227 (head!16147 (getSuffix!3685 input!1184 Nil!74227)) Nil!74227)) input!1184)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1250 (List!74351 List!74351) Unit!169263)

(assert (=> b!7904812 (= lt!2684868 (lemmaAddHeadSuffixToPrefixStillPrefix!1250 Nil!74227 input!1184))))

(declare-fun lt!2684842 () Unit!169263)

(declare-fun lt!2684858 () Unit!169263)

(assert (=> b!7904812 (= lt!2684842 lt!2684858)))

(assert (=> b!7904812 (= lt!2684858 (lemmaAddHeadSuffixToPrefixStillPrefix!1250 Nil!74227 input!1184))))

(declare-fun lt!2684863 () List!74351)

(assert (=> b!7904812 (= lt!2684863 (++!18168 Nil!74227 (Cons!74227 (head!16147 input!1184) Nil!74227)))))

(declare-fun lt!2684859 () Unit!169263)

(declare-fun e!4665964 () Unit!169263)

(assert (=> b!7904812 (= lt!2684859 e!4665964)))

(declare-fun c!1450588 () Bool)

(assert (=> b!7904812 (= c!1450588 (= (size!43017 Nil!74227) (size!43017 input!1184)))))

(declare-fun lt!2684866 () Unit!169263)

(declare-fun lt!2684865 () Unit!169263)

(assert (=> b!7904812 (= lt!2684866 lt!2684865)))

(assert (=> b!7904812 (<= (size!43017 Nil!74227) (size!43017 input!1184))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1030 (List!74351 List!74351) Unit!169263)

(assert (=> b!7904812 (= lt!2684865 (lemmaIsPrefixThenSmallerEqSize!1030 Nil!74227 input!1184))))

(declare-fun e!4665960 () tuple2!70254)

(assert (=> b!7904812 (= e!4665963 e!4665960)))

(declare-fun bm!733407 () Bool)

(declare-fun call!733416 () Regex!21313)

(declare-fun call!733415 () C!42956)

(assert (=> bm!733407 (= call!733416 (derivativeStep!6430 (regex!8610 (h!80676 rulesArg!141)) call!733415))))

(declare-fun d!2359123 () Bool)

(declare-fun e!4665967 () Bool)

(assert (=> d!2359123 e!4665967))

(declare-fun res!3136712 () Bool)

(assert (=> d!2359123 (=> (not res!3136712) (not e!4665967))))

(declare-fun lt!2684862 () tuple2!70254)

(assert (=> d!2359123 (= res!3136712 (= (++!18168 (_1!38430 lt!2684862) (_2!38430 lt!2684862)) input!1184))))

(assert (=> d!2359123 (= lt!2684862 e!4665966)))

(declare-fun c!1450586 () Bool)

(declare-fun lostCause!1917 (Regex!21313) Bool)

(assert (=> d!2359123 (= c!1450586 (lostCause!1917 (regex!8610 (h!80676 rulesArg!141))))))

(declare-fun lt!2684867 () Unit!169263)

(declare-fun Unit!169265 () Unit!169263)

(assert (=> d!2359123 (= lt!2684867 Unit!169265)))

(assert (=> d!2359123 (= (getSuffix!3685 input!1184 Nil!74227) input!1184)))

(declare-fun lt!2684860 () Unit!169263)

(declare-fun lt!2684864 () Unit!169263)

(assert (=> d!2359123 (= lt!2684860 lt!2684864)))

(declare-fun lt!2684850 () List!74351)

(assert (=> d!2359123 (= input!1184 lt!2684850)))

(declare-fun lemmaSamePrefixThenSameSuffix!2933 (List!74351 List!74351 List!74351 List!74351 List!74351) Unit!169263)

(assert (=> d!2359123 (= lt!2684864 (lemmaSamePrefixThenSameSuffix!2933 Nil!74227 input!1184 Nil!74227 lt!2684850 input!1184))))

(assert (=> d!2359123 (= lt!2684850 (getSuffix!3685 input!1184 Nil!74227))))

(declare-fun lt!2684844 () Unit!169263)

(declare-fun lt!2684856 () Unit!169263)

(assert (=> d!2359123 (= lt!2684844 lt!2684856)))

(assert (=> d!2359123 (isPrefix!6443 Nil!74227 (++!18168 Nil!74227 input!1184))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3795 (List!74351 List!74351) Unit!169263)

(assert (=> d!2359123 (= lt!2684856 (lemmaConcatTwoListThenFirstIsPrefix!3795 Nil!74227 input!1184))))

(assert (=> d!2359123 (validRegex!11649 (regex!8610 (h!80676 rulesArg!141)))))

(assert (=> d!2359123 (= (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)) lt!2684862)))

(declare-fun b!7904813 () Bool)

(assert (=> b!7904813 (= e!4665961 (tuple2!70255 Nil!74227 Nil!74227))))

(declare-fun b!7904814 () Bool)

(declare-fun e!4665965 () Bool)

(assert (=> b!7904814 (= e!4665967 e!4665965)))

(declare-fun res!3136711 () Bool)

(assert (=> b!7904814 (=> res!3136711 e!4665965)))

(assert (=> b!7904814 (= res!3136711 (isEmpty!42593 (_1!38430 lt!2684862)))))

(declare-fun b!7904815 () Bool)

(assert (=> b!7904815 (= e!4665965 (>= (size!43017 (_1!38430 lt!2684862)) (size!43017 Nil!74227)))))

(declare-fun b!7904816 () Bool)

(assert (=> b!7904816 (= e!4665966 e!4665963)))

(declare-fun c!1450585 () Bool)

(assert (=> b!7904816 (= c!1450585 (= (size!43017 Nil!74227) (size!43017 input!1184)))))

(declare-fun bm!733408 () Bool)

(assert (=> bm!733408 (= call!733411 (isPrefix!6443 input!1184 input!1184))))

(declare-fun b!7904817 () Bool)

(declare-fun lt!2684852 () tuple2!70254)

(assert (=> b!7904817 (= e!4665962 lt!2684852)))

(declare-fun b!7904818 () Bool)

(declare-fun Unit!169266 () Unit!169263)

(assert (=> b!7904818 (= e!4665964 Unit!169266)))

(declare-fun lt!2684854 () Unit!169263)

(assert (=> b!7904818 (= lt!2684854 call!733410)))

(assert (=> b!7904818 call!733411))

(declare-fun lt!2684843 () Unit!169263)

(assert (=> b!7904818 (= lt!2684843 lt!2684854)))

(declare-fun lt!2684847 () Unit!169263)

(assert (=> b!7904818 (= lt!2684847 call!733417)))

(assert (=> b!7904818 (= input!1184 Nil!74227)))

(declare-fun lt!2684848 () Unit!169263)

(assert (=> b!7904818 (= lt!2684848 lt!2684847)))

(assert (=> b!7904818 false))

(declare-fun bm!733409 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1565 (List!74351 List!74351 List!74351) Unit!169263)

(assert (=> bm!733409 (= call!733417 (lemmaIsPrefixSameLengthThenSameList!1565 input!1184 Nil!74227 input!1184))))

(declare-fun b!7904819 () Bool)

(declare-fun Unit!169267 () Unit!169263)

(assert (=> b!7904819 (= e!4665964 Unit!169267)))

(declare-fun bm!733410 () Bool)

(assert (=> bm!733410 (= call!733414 (nullable!9486 (regex!8610 (h!80676 rulesArg!141))))))

(declare-fun bm!733411 () Bool)

(assert (=> bm!733411 (= call!733415 (head!16147 input!1184))))

(declare-fun b!7904820 () Bool)

(declare-fun call!733413 () tuple2!70254)

(assert (=> b!7904820 (= e!4665960 call!733413)))

(declare-fun b!7904821 () Bool)

(assert (=> b!7904821 (= e!4665960 e!4665962)))

(assert (=> b!7904821 (= lt!2684852 call!733413)))

(declare-fun c!1450584 () Bool)

(assert (=> b!7904821 (= c!1450584 (isEmpty!42593 (_1!38430 lt!2684852)))))

(declare-fun bm!733412 () Bool)

(assert (=> bm!733412 (= call!733413 (findLongestMatchInner!2155 call!733416 lt!2684863 (+ (size!43017 Nil!74227) 1) call!733412 input!1184 (size!43017 input!1184)))))

(assert (= (and d!2359123 c!1450586) b!7904808))

(assert (= (and d!2359123 (not c!1450586)) b!7904816))

(assert (= (and b!7904816 c!1450585) b!7904809))

(assert (= (and b!7904816 (not c!1450585)) b!7904812))

(assert (= (and b!7904809 c!1450587) b!7904813))

(assert (= (and b!7904809 (not c!1450587)) b!7904811))

(assert (= (and b!7904812 c!1450588) b!7904818))

(assert (= (and b!7904812 (not c!1450588)) b!7904819))

(assert (= (and b!7904812 c!1450583) b!7904821))

(assert (= (and b!7904812 (not c!1450583)) b!7904820))

(assert (= (and b!7904821 c!1450584) b!7904810))

(assert (= (and b!7904821 (not c!1450584)) b!7904817))

(assert (= (or b!7904821 b!7904820) bm!733405))

(assert (= (or b!7904821 b!7904820) bm!733411))

(assert (= (or b!7904821 b!7904820) bm!733407))

(assert (= (or b!7904821 b!7904820) bm!733412))

(assert (= (or b!7904809 b!7904818) bm!733408))

(assert (= (or b!7904809 b!7904812) bm!733410))

(assert (= (or b!7904809 b!7904818) bm!733406))

(assert (= (or b!7904809 b!7904818) bm!733409))

(assert (= (and d!2359123 res!3136712) b!7904814))

(assert (= (and b!7904814 (not res!3136711)) b!7904815))

(assert (=> bm!733412 m!8278734))

(declare-fun m!8279472 () Bool)

(assert (=> bm!733412 m!8279472))

(assert (=> bm!733408 m!8278714))

(declare-fun m!8279474 () Bool)

(assert (=> b!7904812 m!8279474))

(assert (=> b!7904812 m!8278734))

(declare-fun m!8279476 () Bool)

(assert (=> b!7904812 m!8279476))

(assert (=> b!7904812 m!8278860))

(declare-fun m!8279478 () Bool)

(assert (=> b!7904812 m!8279478))

(declare-fun m!8279480 () Bool)

(assert (=> b!7904812 m!8279480))

(assert (=> b!7904812 m!8278858))

(declare-fun m!8279482 () Bool)

(assert (=> b!7904812 m!8279482))

(declare-fun m!8279484 () Bool)

(assert (=> b!7904812 m!8279484))

(assert (=> b!7904812 m!8279476))

(declare-fun m!8279486 () Bool)

(assert (=> b!7904812 m!8279486))

(declare-fun m!8279488 () Bool)

(assert (=> b!7904812 m!8279488))

(assert (=> b!7904812 m!8278814))

(assert (=> b!7904812 m!8279478))

(declare-fun m!8279490 () Bool)

(assert (=> b!7904812 m!8279490))

(assert (=> b!7904812 m!8279488))

(declare-fun m!8279492 () Bool)

(assert (=> b!7904812 m!8279492))

(assert (=> bm!733405 m!8278860))

(declare-fun m!8279494 () Bool)

(assert (=> b!7904815 m!8279494))

(assert (=> b!7904815 m!8278814))

(declare-fun m!8279496 () Bool)

(assert (=> b!7904814 m!8279496))

(assert (=> bm!733410 m!8279302))

(declare-fun m!8279500 () Bool)

(assert (=> bm!733409 m!8279500))

(declare-fun m!8279502 () Bool)

(assert (=> b!7904821 m!8279502))

(declare-fun m!8279504 () Bool)

(assert (=> d!2359123 m!8279504))

(declare-fun m!8279506 () Bool)

(assert (=> d!2359123 m!8279506))

(assert (=> d!2359123 m!8279476))

(assert (=> d!2359123 m!8279282))

(declare-fun m!8279508 () Bool)

(assert (=> d!2359123 m!8279508))

(assert (=> d!2359123 m!8279504))

(declare-fun m!8279510 () Bool)

(assert (=> d!2359123 m!8279510))

(declare-fun m!8279512 () Bool)

(assert (=> d!2359123 m!8279512))

(declare-fun m!8279514 () Bool)

(assert (=> d!2359123 m!8279514))

(assert (=> bm!733406 m!8278716))

(assert (=> bm!733411 m!8278858))

(declare-fun m!8279516 () Bool)

(assert (=> bm!733407 m!8279516))

(assert (=> b!7904209 d!2359123))

(declare-fun d!2359167 () Bool)

(declare-fun lt!2684880 () Int)

(assert (=> d!2359167 (= lt!2684880 (size!43017 (list!19241 (seqFromList!6157 (_1!38430 lt!2684537)))))))

(declare-fun size!43020 (Conc!15784) Int)

(assert (=> d!2359167 (= lt!2684880 (size!43020 (c!1450453 (seqFromList!6157 (_1!38430 lt!2684537)))))))

(assert (=> d!2359167 (= (size!43019 (seqFromList!6157 (_1!38430 lt!2684537))) lt!2684880)))

(declare-fun bs!1968093 () Bool)

(assert (= bs!1968093 d!2359167))

(assert (=> bs!1968093 m!8278836))

(declare-fun m!8279520 () Bool)

(assert (=> bs!1968093 m!8279520))

(assert (=> bs!1968093 m!8279520))

(declare-fun m!8279522 () Bool)

(assert (=> bs!1968093 m!8279522))

(declare-fun m!8279524 () Bool)

(assert (=> bs!1968093 m!8279524))

(assert (=> b!7904209 d!2359167))

(assert (=> b!7904209 d!2358993))

(declare-fun d!2359173 () Bool)

(declare-fun lt!2684881 () Int)

(assert (=> d!2359173 (>= lt!2684881 0)))

(declare-fun e!4665979 () Int)

(assert (=> d!2359173 (= lt!2684881 e!4665979)))

(declare-fun c!1450593 () Bool)

(assert (=> d!2359173 (= c!1450593 ((_ is Nil!74227) Nil!74227))))

(assert (=> d!2359173 (= (size!43017 Nil!74227) lt!2684881)))

(declare-fun b!7904843 () Bool)

(assert (=> b!7904843 (= e!4665979 0)))

(declare-fun b!7904844 () Bool)

(assert (=> b!7904844 (= e!4665979 (+ 1 (size!43017 (t!389454 Nil!74227))))))

(assert (= (and d!2359173 c!1450593) b!7904843))

(assert (= (and d!2359173 (not c!1450593)) b!7904844))

(declare-fun m!8279526 () Bool)

(assert (=> b!7904844 m!8279526))

(assert (=> b!7904209 d!2359173))

(declare-fun bs!1968094 () Bool)

(declare-fun d!2359175 () Bool)

(assert (= bs!1968094 (and d!2359175 d!2359037)))

(declare-fun lambda!472488 () Int)

(assert (=> bs!1968094 (= lambda!472488 lambda!472474)))

(declare-fun b!7904858 () Bool)

(declare-fun e!4665988 () Bool)

(assert (=> b!7904858 (= e!4665988 true)))

(assert (=> d!2359175 e!4665988))

(assert (= d!2359175 b!7904858))

(assert (=> b!7904858 (< (dynLambda!30074 order!29845 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) (dynLambda!30073 order!29843 lambda!472488))))

(assert (=> b!7904858 (< (dynLambda!30072 order!29841 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141)))) (dynLambda!30073 order!29843 lambda!472488))))

(assert (=> d!2359175 (= (list!19241 (dynLambda!30071 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (dynLambda!30070 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (seqFromList!6157 (_1!38430 lt!2684537))))) (list!19241 (seqFromList!6157 (_1!38430 lt!2684537))))))

(declare-fun lt!2684884 () Unit!169263)

(declare-fun ForallOf!1301 (Int BalanceConc!30686) Unit!169263)

(assert (=> d!2359175 (= lt!2684884 (ForallOf!1301 lambda!472488 (seqFromList!6157 (_1!38430 lt!2684537))))))

(assert (=> d!2359175 (= (lemmaSemiInverse!2665 (transformation!8610 (h!80676 rulesArg!141)) (seqFromList!6157 (_1!38430 lt!2684537))) lt!2684884)))

(declare-fun b_lambda!289827 () Bool)

(assert (=> (not b_lambda!289827) (not d!2359175)))

(declare-fun t!389511 () Bool)

(declare-fun tb!262995 () Bool)

(assert (=> (and b!7904118 (= (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toChars!11522 (transformation!8610 (h!80676 rulesArg!141)))) t!389511) tb!262995))

(declare-fun tp!2354752 () Bool)

(declare-fun b!7904863 () Bool)

(declare-fun e!4665991 () Bool)

(assert (=> b!7904863 (= e!4665991 (and (inv!95222 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (dynLambda!30070 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (seqFromList!6157 (_1!38430 lt!2684537)))))) tp!2354752))))

(declare-fun result!360102 () Bool)

(assert (=> tb!262995 (= result!360102 (and (inv!95223 (dynLambda!30071 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (dynLambda!30070 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (seqFromList!6157 (_1!38430 lt!2684537))))) e!4665991))))

(assert (= tb!262995 b!7904863))

(declare-fun m!8279558 () Bool)

(assert (=> b!7904863 m!8279558))

(declare-fun m!8279560 () Bool)

(assert (=> tb!262995 m!8279560))

(assert (=> d!2359175 t!389511))

(declare-fun b_and!352999 () Bool)

(assert (= b_and!352975 (and (=> t!389511 result!360102) b_and!352999)))

(declare-fun t!389513 () Bool)

(declare-fun tb!262997 () Bool)

(assert (=> (and b!7904447 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toChars!11522 (transformation!8610 (h!80676 rulesArg!141)))) t!389513) tb!262997))

(declare-fun result!360104 () Bool)

(assert (= result!360104 result!360102))

(assert (=> d!2359175 t!389513))

(declare-fun b_and!353001 () Bool)

(assert (= b_and!352977 (and (=> t!389513 result!360104) b_and!353001)))

(declare-fun b_lambda!289829 () Bool)

(assert (=> (not b_lambda!289829) (not d!2359175)))

(assert (=> d!2359175 t!389495))

(declare-fun b_and!353003 () Bool)

(assert (= b_and!352979 (and (=> t!389495 result!360086) b_and!353003)))

(assert (=> d!2359175 t!389497))

(declare-fun b_and!353005 () Bool)

(assert (= b_and!352981 (and (=> t!389497 result!360088) b_and!353005)))

(assert (=> d!2359175 m!8278836))

(assert (=> d!2359175 m!8279346))

(assert (=> d!2359175 m!8278836))

(assert (=> d!2359175 m!8279520))

(assert (=> d!2359175 m!8278836))

(declare-fun m!8279562 () Bool)

(assert (=> d!2359175 m!8279562))

(assert (=> d!2359175 m!8279346))

(declare-fun m!8279564 () Bool)

(assert (=> d!2359175 m!8279564))

(assert (=> d!2359175 m!8279564))

(declare-fun m!8279570 () Bool)

(assert (=> d!2359175 m!8279570))

(assert (=> b!7904209 d!2359175))

(declare-fun d!2359183 () Bool)

(assert (=> d!2359183 true))

(declare-fun lambda!472491 () Int)

(declare-fun order!29855 () Int)

(declare-fun dynLambda!30080 (Int Int) Int)

(assert (=> d!2359183 (< (dynLambda!30074 order!29845 (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) (dynLambda!30080 order!29855 lambda!472491))))

(declare-fun Forall2!1317 (Int) Bool)

(assert (=> d!2359183 (= (equivClasses!3630 (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) (Forall2!1317 lambda!472491))))

(declare-fun bs!1968095 () Bool)

(assert (= bs!1968095 d!2359183))

(declare-fun m!8279582 () Bool)

(assert (=> bs!1968095 m!8279582))

(assert (=> b!7904213 d!2359183))

(declare-fun b!7904912 () Bool)

(declare-fun res!3136731 () Bool)

(declare-fun e!4666013 () Bool)

(assert (=> b!7904912 (=> (not res!3136731) (not e!4666013))))

(declare-fun lt!2684885 () List!74351)

(assert (=> b!7904912 (= res!3136731 (= (size!43017 lt!2684885) (+ (size!43017 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))) (size!43017 (_2!38428 (get!26669 lt!2684538))))))))

(declare-fun b!7904910 () Bool)

(declare-fun e!4666012 () List!74351)

(assert (=> b!7904910 (= e!4666012 (_2!38428 (get!26669 lt!2684538)))))

(declare-fun b!7904913 () Bool)

(assert (=> b!7904913 (= e!4666013 (or (not (= (_2!38428 (get!26669 lt!2684538)) Nil!74227)) (= lt!2684885 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538)))))))))

(declare-fun d!2359187 () Bool)

(assert (=> d!2359187 e!4666013))

(declare-fun res!3136732 () Bool)

(assert (=> d!2359187 (=> (not res!3136732) (not e!4666013))))

(assert (=> d!2359187 (= res!3136732 (= (content!15719 lt!2684885) ((_ map or) (content!15719 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))) (content!15719 (_2!38428 (get!26669 lt!2684538))))))))

(assert (=> d!2359187 (= lt!2684885 e!4666012)))

(declare-fun c!1450603 () Bool)

(assert (=> d!2359187 (= c!1450603 ((_ is Nil!74227) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))))))

(assert (=> d!2359187 (= (++!18168 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538)))) (_2!38428 (get!26669 lt!2684538))) lt!2684885)))

(declare-fun b!7904911 () Bool)

(assert (=> b!7904911 (= e!4666012 (Cons!74227 (h!80675 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))) (++!18168 (t!389454 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684538))))) (_2!38428 (get!26669 lt!2684538)))))))

(assert (= (and d!2359187 c!1450603) b!7904910))

(assert (= (and d!2359187 (not c!1450603)) b!7904911))

(assert (= (and d!2359187 res!3136732) b!7904912))

(assert (= (and b!7904912 res!3136731) b!7904913))

(declare-fun m!8279584 () Bool)

(assert (=> b!7904912 m!8279584))

(assert (=> b!7904912 m!8278808))

(declare-fun m!8279590 () Bool)

(assert (=> b!7904912 m!8279590))

(assert (=> b!7904912 m!8278820))

(declare-fun m!8279592 () Bool)

(assert (=> d!2359187 m!8279592))

(assert (=> d!2359187 m!8278808))

(declare-fun m!8279594 () Bool)

(assert (=> d!2359187 m!8279594))

(declare-fun m!8279598 () Bool)

(assert (=> d!2359187 m!8279598))

(declare-fun m!8279600 () Bool)

(assert (=> b!7904911 m!8279600))

(assert (=> b!7904208 d!2359187))

(assert (=> b!7904208 d!2359107))

(assert (=> b!7904208 d!2359109))

(assert (=> b!7904208 d!2359111))

(declare-fun b!7904917 () Bool)

(declare-fun e!4666019 () Bool)

(assert (=> b!7904917 (= e!4666019 (matchR!10650 (derivativeStep!6430 (regex!8610 (h!80676 rulesArg!141)) (head!16147 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184))))) (tail!15690 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184))))))))

(declare-fun b!7904918 () Bool)

(declare-fun e!4666017 () Bool)

(declare-fun e!4666022 () Bool)

(assert (=> b!7904918 (= e!4666017 e!4666022)))

(declare-fun res!3136735 () Bool)

(assert (=> b!7904918 (=> (not res!3136735) (not e!4666022))))

(declare-fun lt!2684886 () Bool)

(assert (=> b!7904918 (= res!3136735 (not lt!2684886))))

(declare-fun b!7904919 () Bool)

(declare-fun res!3136738 () Bool)

(assert (=> b!7904919 (=> res!3136738 e!4666017)))

(declare-fun e!4666016 () Bool)

(assert (=> b!7904919 (= res!3136738 e!4666016)))

(declare-fun res!3136733 () Bool)

(assert (=> b!7904919 (=> (not res!3136733) (not e!4666016))))

(assert (=> b!7904919 (= res!3136733 lt!2684886)))

(declare-fun b!7904920 () Bool)

(declare-fun e!4666018 () Bool)

(assert (=> b!7904920 (= e!4666018 (not lt!2684886))))

(declare-fun b!7904921 () Bool)

(declare-fun e!4666021 () Bool)

(declare-fun call!733419 () Bool)

(assert (=> b!7904921 (= e!4666021 (= lt!2684886 call!733419))))

(declare-fun b!7904922 () Bool)

(declare-fun e!4666020 () Bool)

(assert (=> b!7904922 (= e!4666020 (not (= (head!16147 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))) (c!1450454 (regex!8610 (h!80676 rulesArg!141))))))))

(declare-fun b!7904923 () Bool)

(assert (=> b!7904923 (= e!4666021 e!4666018)))

(declare-fun c!1450606 () Bool)

(assert (=> b!7904923 (= c!1450606 ((_ is EmptyLang!21313) (regex!8610 (h!80676 rulesArg!141))))))

(declare-fun b!7904924 () Bool)

(assert (=> b!7904924 (= e!4666022 e!4666020)))

(declare-fun res!3136740 () Bool)

(assert (=> b!7904924 (=> res!3136740 e!4666020)))

(assert (=> b!7904924 (= res!3136740 call!733419)))

(declare-fun b!7904925 () Bool)

(assert (=> b!7904925 (= e!4666019 (nullable!9486 (regex!8610 (h!80676 rulesArg!141))))))

(declare-fun bm!733414 () Bool)

(assert (=> bm!733414 (= call!733419 (isEmpty!42593 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(declare-fun b!7904926 () Bool)

(declare-fun res!3136737 () Bool)

(assert (=> b!7904926 (=> res!3136737 e!4666017)))

(assert (=> b!7904926 (= res!3136737 (not ((_ is ElementMatch!21313) (regex!8610 (h!80676 rulesArg!141)))))))

(assert (=> b!7904926 (= e!4666018 e!4666017)))

(declare-fun b!7904927 () Bool)

(declare-fun res!3136739 () Bool)

(assert (=> b!7904927 (=> res!3136739 e!4666020)))

(assert (=> b!7904927 (= res!3136739 (not (isEmpty!42593 (tail!15690 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))))

(declare-fun b!7904928 () Bool)

(declare-fun res!3136736 () Bool)

(assert (=> b!7904928 (=> (not res!3136736) (not e!4666016))))

(assert (=> b!7904928 (= res!3136736 (isEmpty!42593 (tail!15690 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184))))))))

(declare-fun d!2359189 () Bool)

(assert (=> d!2359189 e!4666021))

(declare-fun c!1450604 () Bool)

(assert (=> d!2359189 (= c!1450604 ((_ is EmptyExpr!21313) (regex!8610 (h!80676 rulesArg!141))))))

(assert (=> d!2359189 (= lt!2684886 e!4666019)))

(declare-fun c!1450605 () Bool)

(assert (=> d!2359189 (= c!1450605 (isEmpty!42593 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))))))

(assert (=> d!2359189 (validRegex!11649 (regex!8610 (h!80676 rulesArg!141)))))

(assert (=> d!2359189 (= (matchR!10650 (regex!8610 (h!80676 rulesArg!141)) (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))) lt!2684886)))

(declare-fun b!7904929 () Bool)

(declare-fun res!3136734 () Bool)

(assert (=> b!7904929 (=> (not res!3136734) (not e!4666016))))

(assert (=> b!7904929 (= res!3136734 (not call!733419))))

(declare-fun b!7904930 () Bool)

(assert (=> b!7904930 (= e!4666016 (= (head!16147 (_1!38430 (findLongestMatchInner!2155 (regex!8610 (h!80676 rulesArg!141)) Nil!74227 (size!43017 Nil!74227) input!1184 input!1184 (size!43017 input!1184)))) (c!1450454 (regex!8610 (h!80676 rulesArg!141)))))))

(assert (= (and d!2359189 c!1450605) b!7904925))

(assert (= (and d!2359189 (not c!1450605)) b!7904917))

(assert (= (and d!2359189 c!1450604) b!7904921))

(assert (= (and d!2359189 (not c!1450604)) b!7904923))

(assert (= (and b!7904923 c!1450606) b!7904920))

(assert (= (and b!7904923 (not c!1450606)) b!7904926))

(assert (= (and b!7904926 (not res!3136737)) b!7904919))

(assert (= (and b!7904919 res!3136733) b!7904929))

(assert (= (and b!7904929 res!3136734) b!7904928))

(assert (= (and b!7904928 res!3136736) b!7904930))

(assert (= (and b!7904919 (not res!3136738)) b!7904918))

(assert (= (and b!7904918 res!3136735) b!7904924))

(assert (= (and b!7904924 (not res!3136740)) b!7904927))

(assert (= (and b!7904927 (not res!3136739)) b!7904922))

(assert (= (or b!7904921 b!7904924 b!7904929) bm!733414))

(declare-fun m!8279602 () Bool)

(assert (=> b!7904928 m!8279602))

(assert (=> b!7904928 m!8279602))

(declare-fun m!8279604 () Bool)

(assert (=> b!7904928 m!8279604))

(assert (=> bm!733414 m!8278842))

(declare-fun m!8279606 () Bool)

(assert (=> b!7904922 m!8279606))

(assert (=> b!7904917 m!8279606))

(assert (=> b!7904917 m!8279606))

(declare-fun m!8279608 () Bool)

(assert (=> b!7904917 m!8279608))

(assert (=> b!7904917 m!8279602))

(assert (=> b!7904917 m!8279608))

(assert (=> b!7904917 m!8279602))

(declare-fun m!8279610 () Bool)

(assert (=> b!7904917 m!8279610))

(assert (=> b!7904927 m!8279602))

(assert (=> b!7904927 m!8279602))

(assert (=> b!7904927 m!8279604))

(assert (=> b!7904930 m!8279606))

(assert (=> b!7904925 m!8279302))

(assert (=> d!2359189 m!8278842))

(assert (=> d!2359189 m!8279282))

(assert (=> b!7904207 d!2359189))

(assert (=> b!7904207 d!2359123))

(assert (=> b!7904207 d!2359173))

(assert (=> b!7904207 d!2358993))

(assert (=> b!7904227 d!2358993))

(declare-fun d!2359193 () Bool)

(declare-fun lt!2684887 () Int)

(assert (=> d!2359193 (>= lt!2684887 0)))

(declare-fun e!4666023 () Int)

(assert (=> d!2359193 (= lt!2684887 e!4666023)))

(declare-fun c!1450607 () Bool)

(assert (=> d!2359193 (= c!1450607 ((_ is Nil!74227) (_2!38428 (get!26669 lt!2684538))))))

(assert (=> d!2359193 (= (size!43017 (_2!38428 (get!26669 lt!2684538))) lt!2684887)))

(declare-fun b!7904931 () Bool)

(assert (=> b!7904931 (= e!4666023 0)))

(declare-fun b!7904932 () Bool)

(assert (=> b!7904932 (= e!4666023 (+ 1 (size!43017 (t!389454 (_2!38428 (get!26669 lt!2684538))))))))

(assert (= (and d!2359193 c!1450607) b!7904931))

(assert (= (and d!2359193 (not c!1450607)) b!7904932))

(declare-fun m!8279612 () Bool)

(assert (=> b!7904932 m!8279612))

(assert (=> b!7904206 d!2359193))

(assert (=> b!7904206 d!2359111))

(assert (=> b!7904206 d!2358993))

(declare-fun b!7904934 () Bool)

(declare-fun res!3136744 () Bool)

(declare-fun e!4666025 () Bool)

(assert (=> b!7904934 (=> (not res!3136744) (not e!4666025))))

(assert (=> b!7904934 (= res!3136744 (= (head!16147 (tail!15690 input!1184)) (head!16147 (tail!15690 input!1184))))))

(declare-fun b!7904935 () Bool)

(assert (=> b!7904935 (= e!4666025 (isPrefix!6443 (tail!15690 (tail!15690 input!1184)) (tail!15690 (tail!15690 input!1184))))))

(declare-fun b!7904933 () Bool)

(declare-fun e!4666024 () Bool)

(assert (=> b!7904933 (= e!4666024 e!4666025)))

(declare-fun res!3136742 () Bool)

(assert (=> b!7904933 (=> (not res!3136742) (not e!4666025))))

(assert (=> b!7904933 (= res!3136742 (not ((_ is Nil!74227) (tail!15690 input!1184))))))

(declare-fun d!2359195 () Bool)

(declare-fun e!4666026 () Bool)

(assert (=> d!2359195 e!4666026))

(declare-fun res!3136741 () Bool)

(assert (=> d!2359195 (=> res!3136741 e!4666026)))

(declare-fun lt!2684888 () Bool)

(assert (=> d!2359195 (= res!3136741 (not lt!2684888))))

(assert (=> d!2359195 (= lt!2684888 e!4666024)))

(declare-fun res!3136743 () Bool)

(assert (=> d!2359195 (=> res!3136743 e!4666024)))

(assert (=> d!2359195 (= res!3136743 ((_ is Nil!74227) (tail!15690 input!1184)))))

(assert (=> d!2359195 (= (isPrefix!6443 (tail!15690 input!1184) (tail!15690 input!1184)) lt!2684888)))

(declare-fun b!7904936 () Bool)

(assert (=> b!7904936 (= e!4666026 (>= (size!43017 (tail!15690 input!1184)) (size!43017 (tail!15690 input!1184))))))

(assert (= (and d!2359195 (not res!3136743)) b!7904933))

(assert (= (and b!7904933 res!3136742) b!7904934))

(assert (= (and b!7904934 res!3136744) b!7904935))

(assert (= (and d!2359195 (not res!3136741)) b!7904936))

(assert (=> b!7904934 m!8278860))

(declare-fun m!8279614 () Bool)

(assert (=> b!7904934 m!8279614))

(assert (=> b!7904934 m!8278860))

(assert (=> b!7904934 m!8279614))

(assert (=> b!7904935 m!8278860))

(declare-fun m!8279616 () Bool)

(assert (=> b!7904935 m!8279616))

(assert (=> b!7904935 m!8278860))

(assert (=> b!7904935 m!8279616))

(assert (=> b!7904935 m!8279616))

(assert (=> b!7904935 m!8279616))

(declare-fun m!8279618 () Bool)

(assert (=> b!7904935 m!8279618))

(assert (=> b!7904936 m!8278860))

(declare-fun m!8279620 () Bool)

(assert (=> b!7904936 m!8279620))

(assert (=> b!7904936 m!8278860))

(assert (=> b!7904936 m!8279620))

(assert (=> b!7904226 d!2359195))

(declare-fun d!2359197 () Bool)

(assert (=> d!2359197 (= (tail!15690 input!1184) (t!389454 input!1184))))

(assert (=> b!7904226 d!2359197))

(assert (=> b!7904205 d!2359111))

(declare-fun d!2359199 () Bool)

(assert (=> d!2359199 (= (apply!14339 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538))))) (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538))))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538))))))))

(declare-fun b_lambda!289843 () Bool)

(assert (=> (not b_lambda!289843) (not d!2359199)))

(declare-fun tb!263015 () Bool)

(declare-fun t!389531 () Bool)

(assert (=> (and b!7904118 (= (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))))) t!389531) tb!263015))

(declare-fun result!360124 () Bool)

(assert (=> tb!263015 (= result!360124 (inv!21 (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538))))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538)))))))))

(declare-fun m!8279622 () Bool)

(assert (=> tb!263015 m!8279622))

(assert (=> d!2359199 t!389531))

(declare-fun b_and!353011 () Bool)

(assert (= b_and!353003 (and (=> t!389531 result!360124) b_and!353011)))

(declare-fun tb!263017 () Bool)

(declare-fun t!389533 () Bool)

(assert (=> (and b!7904447 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))))) t!389533) tb!263017))

(declare-fun result!360126 () Bool)

(assert (= result!360126 result!360124))

(assert (=> d!2359199 t!389533))

(declare-fun b_and!353013 () Bool)

(assert (= b_and!353005 (and (=> t!389533 result!360126) b_and!353013)))

(assert (=> d!2359199 m!8278832))

(declare-fun m!8279624 () Bool)

(assert (=> d!2359199 m!8279624))

(assert (=> b!7904205 d!2359199))

(declare-fun d!2359201 () Bool)

(assert (=> d!2359201 (= (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538)))) (fromListB!2778 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538)))))))

(declare-fun bs!1968097 () Bool)

(assert (= bs!1968097 d!2359201))

(declare-fun m!8279626 () Bool)

(assert (=> bs!1968097 m!8279626))

(assert (=> b!7904205 d!2359201))

(declare-fun d!2359203 () Bool)

(assert (=> d!2359203 (= (head!16147 input!1184) (h!80675 input!1184))))

(assert (=> b!7904225 d!2359203))

(declare-fun d!2359205 () Bool)

(declare-fun c!1450610 () Bool)

(assert (=> d!2359205 (= c!1450610 ((_ is Node!15784) (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))))))

(declare-fun e!4666032 () Bool)

(assert (=> d!2359205 (= (inv!95222 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))) e!4666032)))

(declare-fun b!7904943 () Bool)

(declare-fun inv!95224 (Conc!15784) Bool)

(assert (=> b!7904943 (= e!4666032 (inv!95224 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))))))

(declare-fun b!7904944 () Bool)

(declare-fun e!4666033 () Bool)

(assert (=> b!7904944 (= e!4666032 e!4666033)))

(declare-fun res!3136747 () Bool)

(assert (=> b!7904944 (= res!3136747 (not ((_ is Leaf!30057) (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))))))))

(assert (=> b!7904944 (=> res!3136747 e!4666033)))

(declare-fun b!7904945 () Bool)

(declare-fun inv!95225 (Conc!15784) Bool)

(assert (=> b!7904945 (= e!4666033 (inv!95225 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))))))

(assert (= (and d!2359205 c!1450610) b!7904943))

(assert (= (and d!2359205 (not c!1450610)) b!7904944))

(assert (= (and b!7904944 (not res!3136747)) b!7904945))

(declare-fun m!8279628 () Bool)

(assert (=> b!7904943 m!8279628))

(declare-fun m!8279630 () Bool)

(assert (=> b!7904945 m!8279630))

(assert (=> b!7904232 d!2359205))

(assert (=> b!7904204 d!2359111))

(declare-fun d!2359207 () Bool)

(declare-fun lt!2684889 () Int)

(assert (=> d!2359207 (>= lt!2684889 0)))

(declare-fun e!4666034 () Int)

(assert (=> d!2359207 (= lt!2684889 e!4666034)))

(declare-fun c!1450611 () Bool)

(assert (=> d!2359207 (= c!1450611 ((_ is Nil!74227) (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538)))))))

(assert (=> d!2359207 (= (size!43017 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538)))) lt!2684889)))

(declare-fun b!7904946 () Bool)

(assert (=> b!7904946 (= e!4666034 0)))

(declare-fun b!7904947 () Bool)

(assert (=> b!7904947 (= e!4666034 (+ 1 (size!43017 (t!389454 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684538)))))))))

(assert (= (and d!2359207 c!1450611) b!7904946))

(assert (= (and d!2359207 (not c!1450611)) b!7904947))

(declare-fun m!8279632 () Bool)

(assert (=> b!7904947 m!8279632))

(assert (=> b!7904204 d!2359207))

(declare-fun b!7904948 () Bool)

(declare-fun e!4666038 () Bool)

(assert (=> b!7904948 (= e!4666038 (matchR!10650 (derivativeStep!6430 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))) (head!16147 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))))) (tail!15690 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))))))))

(declare-fun b!7904949 () Bool)

(declare-fun e!4666036 () Bool)

(declare-fun e!4666041 () Bool)

(assert (=> b!7904949 (= e!4666036 e!4666041)))

(declare-fun res!3136750 () Bool)

(assert (=> b!7904949 (=> (not res!3136750) (not e!4666041))))

(declare-fun lt!2684890 () Bool)

(assert (=> b!7904949 (= res!3136750 (not lt!2684890))))

(declare-fun b!7904950 () Bool)

(declare-fun res!3136753 () Bool)

(assert (=> b!7904950 (=> res!3136753 e!4666036)))

(declare-fun e!4666035 () Bool)

(assert (=> b!7904950 (= res!3136753 e!4666035)))

(declare-fun res!3136748 () Bool)

(assert (=> b!7904950 (=> (not res!3136748) (not e!4666035))))

(assert (=> b!7904950 (= res!3136748 lt!2684890)))

(declare-fun b!7904951 () Bool)

(declare-fun e!4666037 () Bool)

(assert (=> b!7904951 (= e!4666037 (not lt!2684890))))

(declare-fun b!7904952 () Bool)

(declare-fun e!4666040 () Bool)

(declare-fun call!733420 () Bool)

(assert (=> b!7904952 (= e!4666040 (= lt!2684890 call!733420))))

(declare-fun b!7904953 () Bool)

(declare-fun e!4666039 () Bool)

(assert (=> b!7904953 (= e!4666039 (not (= (head!16147 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))) (c!1450454 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))))))))

(declare-fun b!7904954 () Bool)

(assert (=> b!7904954 (= e!4666040 e!4666037)))

(declare-fun c!1450614 () Bool)

(assert (=> b!7904954 (= c!1450614 ((_ is EmptyLang!21313) (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))))))

(declare-fun b!7904955 () Bool)

(assert (=> b!7904955 (= e!4666041 e!4666039)))

(declare-fun res!3136755 () Bool)

(assert (=> b!7904955 (=> res!3136755 e!4666039)))

(assert (=> b!7904955 (= res!3136755 call!733420)))

(declare-fun b!7904956 () Bool)

(assert (=> b!7904956 (= e!4666038 (nullable!9486 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))))))

(declare-fun bm!733415 () Bool)

(assert (=> bm!733415 (= call!733420 (isEmpty!42593 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))))))

(declare-fun b!7904957 () Bool)

(declare-fun res!3136752 () Bool)

(assert (=> b!7904957 (=> res!3136752 e!4666036)))

(assert (=> b!7904957 (= res!3136752 (not ((_ is ElementMatch!21313) (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))))))

(assert (=> b!7904957 (= e!4666037 e!4666036)))

(declare-fun b!7904958 () Bool)

(declare-fun res!3136754 () Bool)

(assert (=> b!7904958 (=> res!3136754 e!4666039)))

(assert (=> b!7904958 (= res!3136754 (not (isEmpty!42593 (tail!15690 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))))))))

(declare-fun b!7904959 () Bool)

(declare-fun res!3136751 () Bool)

(assert (=> b!7904959 (=> (not res!3136751) (not e!4666035))))

(assert (=> b!7904959 (= res!3136751 (isEmpty!42593 (tail!15690 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))))))))

(declare-fun d!2359209 () Bool)

(assert (=> d!2359209 e!4666040))

(declare-fun c!1450612 () Bool)

(assert (=> d!2359209 (= c!1450612 ((_ is EmptyExpr!21313) (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))))))

(assert (=> d!2359209 (= lt!2684890 e!4666038)))

(declare-fun c!1450613 () Bool)

(assert (=> d!2359209 (= c!1450613 (isEmpty!42593 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))))))

(assert (=> d!2359209 (validRegex!11649 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))))

(assert (=> d!2359209 (= (matchR!10650 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))) lt!2684890)))

(declare-fun b!7904960 () Bool)

(declare-fun res!3136749 () Bool)

(assert (=> b!7904960 (=> (not res!3136749) (not e!4666035))))

(assert (=> b!7904960 (= res!3136749 (not call!733420))))

(declare-fun b!7904961 () Bool)

(assert (=> b!7904961 (= e!4666035 (= (head!16147 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))) (c!1450454 (regex!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))))))

(assert (= (and d!2359209 c!1450613) b!7904956))

(assert (= (and d!2359209 (not c!1450613)) b!7904948))

(assert (= (and d!2359209 c!1450612) b!7904952))

(assert (= (and d!2359209 (not c!1450612)) b!7904954))

(assert (= (and b!7904954 c!1450614) b!7904951))

(assert (= (and b!7904954 (not c!1450614)) b!7904957))

(assert (= (and b!7904957 (not res!3136752)) b!7904950))

(assert (= (and b!7904950 res!3136748) b!7904960))

(assert (= (and b!7904960 res!3136749) b!7904959))

(assert (= (and b!7904959 res!3136751) b!7904961))

(assert (= (and b!7904950 (not res!3136753)) b!7904949))

(assert (= (and b!7904949 res!3136750) b!7904955))

(assert (= (and b!7904955 (not res!3136755)) b!7904958))

(assert (= (and b!7904958 (not res!3136754)) b!7904953))

(assert (= (or b!7904952 b!7904955 b!7904960) bm!733415))

(assert (=> b!7904959 m!8278784))

(declare-fun m!8279634 () Bool)

(assert (=> b!7904959 m!8279634))

(assert (=> b!7904959 m!8279634))

(declare-fun m!8279636 () Bool)

(assert (=> b!7904959 m!8279636))

(assert (=> bm!733415 m!8278784))

(declare-fun m!8279638 () Bool)

(assert (=> bm!733415 m!8279638))

(assert (=> b!7904953 m!8278784))

(declare-fun m!8279640 () Bool)

(assert (=> b!7904953 m!8279640))

(assert (=> b!7904948 m!8278784))

(assert (=> b!7904948 m!8279640))

(assert (=> b!7904948 m!8279640))

(declare-fun m!8279642 () Bool)

(assert (=> b!7904948 m!8279642))

(assert (=> b!7904948 m!8278784))

(assert (=> b!7904948 m!8279634))

(assert (=> b!7904948 m!8279642))

(assert (=> b!7904948 m!8279634))

(declare-fun m!8279644 () Bool)

(assert (=> b!7904948 m!8279644))

(assert (=> b!7904958 m!8278784))

(assert (=> b!7904958 m!8279634))

(assert (=> b!7904958 m!8279634))

(assert (=> b!7904958 m!8279636))

(assert (=> b!7904961 m!8278784))

(assert (=> b!7904961 m!8279640))

(declare-fun m!8279646 () Bool)

(assert (=> b!7904956 m!8279646))

(assert (=> d!2359209 m!8278784))

(assert (=> d!2359209 m!8279638))

(declare-fun m!8279648 () Bool)

(assert (=> d!2359209 m!8279648))

(assert (=> b!7904183 d!2359209))

(assert (=> b!7904183 d!2359051))

(assert (=> b!7904183 d!2359047))

(assert (=> b!7904183 d!2359049))

(declare-fun b!7904972 () Bool)

(declare-fun res!3136758 () Bool)

(declare-fun e!4666048 () Bool)

(assert (=> b!7904972 (=> res!3136758 e!4666048)))

(assert (=> b!7904972 (= res!3136758 (not ((_ is IntegerValue!26780) (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494)))))))))

(declare-fun e!4666050 () Bool)

(assert (=> b!7904972 (= e!4666050 e!4666048)))

(declare-fun b!7904974 () Bool)

(declare-fun e!4666049 () Bool)

(declare-fun inv!16 (TokenValue!8926) Bool)

(assert (=> b!7904974 (= e!4666049 (inv!16 (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))))))))

(declare-fun b!7904975 () Bool)

(assert (=> b!7904975 (= e!4666049 e!4666050)))

(declare-fun c!1450619 () Bool)

(assert (=> b!7904975 (= c!1450619 ((_ is IntegerValue!26779) (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))))))))

(declare-fun b!7904976 () Bool)

(declare-fun inv!15 (TokenValue!8926) Bool)

(assert (=> b!7904976 (= e!4666048 (inv!15 (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))))))))

(declare-fun b!7904973 () Bool)

(declare-fun inv!17 (TokenValue!8926) Bool)

(assert (=> b!7904973 (= e!4666050 (inv!17 (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))))))))

(declare-fun d!2359211 () Bool)

(declare-fun c!1450620 () Bool)

(assert (=> d!2359211 (= c!1450620 ((_ is IntegerValue!26778) (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))))))))

(assert (=> d!2359211 (= (inv!21 (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 lt!2684494))))) e!4666049)))

(assert (= (and d!2359211 c!1450620) b!7904974))

(assert (= (and d!2359211 (not c!1450620)) b!7904975))

(assert (= (and b!7904975 c!1450619) b!7904973))

(assert (= (and b!7904975 (not c!1450619)) b!7904972))

(assert (= (and b!7904972 (not res!3136758)) b!7904976))

(declare-fun m!8279650 () Bool)

(assert (=> b!7904974 m!8279650))

(declare-fun m!8279652 () Bool)

(assert (=> b!7904976 m!8279652))

(declare-fun m!8279654 () Bool)

(assert (=> b!7904973 m!8279654))

(assert (=> tb!262947 d!2359211))

(declare-fun b!7904977 () Bool)

(declare-fun e!4666053 () Bool)

(declare-fun call!733422 () Bool)

(assert (=> b!7904977 (= e!4666053 call!733422)))

(declare-fun b!7904978 () Bool)

(declare-fun res!3136761 () Bool)

(declare-fun e!4666056 () Bool)

(assert (=> b!7904978 (=> res!3136761 e!4666056)))

(assert (=> b!7904978 (= res!3136761 (not ((_ is Concat!30240) (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))))

(declare-fun e!4666054 () Bool)

(assert (=> b!7904978 (= e!4666054 e!4666056)))

(declare-fun b!7904979 () Bool)

(declare-fun e!4666055 () Bool)

(assert (=> b!7904979 (= e!4666055 e!4666054)))

(declare-fun c!1450621 () Bool)

(assert (=> b!7904979 (= c!1450621 ((_ is Union!21313) (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))

(declare-fun b!7904980 () Bool)

(declare-fun res!3136760 () Bool)

(declare-fun e!4666057 () Bool)

(assert (=> b!7904980 (=> (not res!3136760) (not e!4666057))))

(assert (=> b!7904980 (= res!3136760 call!733422)))

(assert (=> b!7904980 (= e!4666054 e!4666057)))

(declare-fun b!7904981 () Bool)

(declare-fun e!4666051 () Bool)

(assert (=> b!7904981 (= e!4666055 e!4666051)))

(declare-fun res!3136763 () Bool)

(assert (=> b!7904981 (= res!3136763 (not (nullable!9486 (reg!21642 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))))

(assert (=> b!7904981 (=> (not res!3136763) (not e!4666051))))

(declare-fun b!7904982 () Bool)

(declare-fun call!733421 () Bool)

(assert (=> b!7904982 (= e!4666057 call!733421)))

(declare-fun b!7904983 () Bool)

(declare-fun e!4666052 () Bool)

(assert (=> b!7904983 (= e!4666052 e!4666055)))

(declare-fun c!1450622 () Bool)

(assert (=> b!7904983 (= c!1450622 ((_ is Star!21313) (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))

(declare-fun b!7904984 () Bool)

(assert (=> b!7904984 (= e!4666056 e!4666053)))

(declare-fun res!3136762 () Bool)

(assert (=> b!7904984 (=> (not res!3136762) (not e!4666053))))

(assert (=> b!7904984 (= res!3136762 call!733421)))

(declare-fun bm!733416 () Bool)

(assert (=> bm!733416 (= call!733421 (validRegex!11649 (ite c!1450621 (regTwo!43139 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))) (regOne!43138 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))))

(declare-fun d!2359213 () Bool)

(declare-fun res!3136759 () Bool)

(assert (=> d!2359213 (=> res!3136759 e!4666052)))

(assert (=> d!2359213 (= res!3136759 ((_ is ElementMatch!21313) (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))

(assert (=> d!2359213 (= (validRegex!11649 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))) e!4666052)))

(declare-fun call!733423 () Bool)

(declare-fun bm!733417 () Bool)

(assert (=> bm!733417 (= call!733423 (validRegex!11649 (ite c!1450622 (reg!21642 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))) (ite c!1450621 (regOne!43139 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))) (regTwo!43138 (ite c!1450466 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (ite c!1450465 (regOne!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regTwo!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))))))

(declare-fun bm!733418 () Bool)

(assert (=> bm!733418 (= call!733422 call!733423)))

(declare-fun b!7904985 () Bool)

(assert (=> b!7904985 (= e!4666051 call!733423)))

(assert (= (and d!2359213 (not res!3136759)) b!7904983))

(assert (= (and b!7904983 c!1450622) b!7904981))

(assert (= (and b!7904983 (not c!1450622)) b!7904979))

(assert (= (and b!7904981 res!3136763) b!7904985))

(assert (= (and b!7904979 c!1450621) b!7904980))

(assert (= (and b!7904979 (not c!1450621)) b!7904978))

(assert (= (and b!7904980 res!3136760) b!7904982))

(assert (= (and b!7904978 (not res!3136761)) b!7904984))

(assert (= (and b!7904984 res!3136762) b!7904977))

(assert (= (or b!7904980 b!7904977) bm!733418))

(assert (= (or b!7904982 b!7904984) bm!733416))

(assert (= (or b!7904985 bm!733418) bm!733417))

(declare-fun m!8279656 () Bool)

(assert (=> b!7904981 m!8279656))

(declare-fun m!8279658 () Bool)

(assert (=> bm!733416 m!8279658))

(declare-fun m!8279660 () Bool)

(assert (=> bm!733417 m!8279660))

(assert (=> bm!733336 d!2359213))

(declare-fun b!7904986 () Bool)

(declare-fun e!4666060 () Bool)

(declare-fun call!733425 () Bool)

(assert (=> b!7904986 (= e!4666060 call!733425)))

(declare-fun b!7904987 () Bool)

(declare-fun res!3136766 () Bool)

(declare-fun e!4666063 () Bool)

(assert (=> b!7904987 (=> res!3136766 e!4666063)))

(assert (=> b!7904987 (= res!3136766 (not ((_ is Concat!30240) (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))

(declare-fun e!4666061 () Bool)

(assert (=> b!7904987 (= e!4666061 e!4666063)))

(declare-fun b!7904988 () Bool)

(declare-fun e!4666062 () Bool)

(assert (=> b!7904988 (= e!4666062 e!4666061)))

(declare-fun c!1450623 () Bool)

(assert (=> b!7904988 (= c!1450623 ((_ is Union!21313) (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))

(declare-fun b!7904989 () Bool)

(declare-fun res!3136765 () Bool)

(declare-fun e!4666064 () Bool)

(assert (=> b!7904989 (=> (not res!3136765) (not e!4666064))))

(assert (=> b!7904989 (= res!3136765 call!733425)))

(assert (=> b!7904989 (= e!4666061 e!4666064)))

(declare-fun b!7904990 () Bool)

(declare-fun e!4666058 () Bool)

(assert (=> b!7904990 (= e!4666062 e!4666058)))

(declare-fun res!3136768 () Bool)

(assert (=> b!7904990 (= res!3136768 (not (nullable!9486 (reg!21642 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))))

(assert (=> b!7904990 (=> (not res!3136768) (not e!4666058))))

(declare-fun b!7904991 () Bool)

(declare-fun call!733424 () Bool)

(assert (=> b!7904991 (= e!4666064 call!733424)))

(declare-fun b!7904992 () Bool)

(declare-fun e!4666059 () Bool)

(assert (=> b!7904992 (= e!4666059 e!4666062)))

(declare-fun c!1450624 () Bool)

(assert (=> b!7904992 (= c!1450624 ((_ is Star!21313) (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))

(declare-fun b!7904993 () Bool)

(assert (=> b!7904993 (= e!4666063 e!4666060)))

(declare-fun res!3136767 () Bool)

(assert (=> b!7904993 (=> (not res!3136767) (not e!4666060))))

(assert (=> b!7904993 (= res!3136767 call!733424)))

(declare-fun bm!733419 () Bool)

(assert (=> bm!733419 (= call!733424 (validRegex!11649 (ite c!1450623 (regTwo!43139 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))) (regOne!43138 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))))

(declare-fun d!2359215 () Bool)

(declare-fun res!3136764 () Bool)

(assert (=> d!2359215 (=> res!3136764 e!4666059)))

(assert (=> d!2359215 (= res!3136764 ((_ is ElementMatch!21313) (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))))))

(assert (=> d!2359215 (= (validRegex!11649 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))) e!4666059)))

(declare-fun bm!733420 () Bool)

(declare-fun call!733426 () Bool)

(assert (=> bm!733420 (= call!733426 (validRegex!11649 (ite c!1450624 (reg!21642 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))) (ite c!1450623 (regOne!43139 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))))) (regTwo!43138 (ite c!1450465 (regTwo!43139 (regex!8610 (rule!11900 (_1!38428 lt!2684494)))) (regOne!43138 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))))))

(declare-fun bm!733421 () Bool)

(assert (=> bm!733421 (= call!733425 call!733426)))

(declare-fun b!7904994 () Bool)

(assert (=> b!7904994 (= e!4666058 call!733426)))

(assert (= (and d!2359215 (not res!3136764)) b!7904992))

(assert (= (and b!7904992 c!1450624) b!7904990))

(assert (= (and b!7904992 (not c!1450624)) b!7904988))

(assert (= (and b!7904990 res!3136768) b!7904994))

(assert (= (and b!7904988 c!1450623) b!7904989))

(assert (= (and b!7904988 (not c!1450623)) b!7904987))

(assert (= (and b!7904989 res!3136765) b!7904991))

(assert (= (and b!7904987 (not res!3136766)) b!7904993))

(assert (= (and b!7904993 res!3136767) b!7904986))

(assert (= (or b!7904989 b!7904986) bm!733421))

(assert (= (or b!7904991 b!7904993) bm!733419))

(assert (= (or b!7904994 bm!733421) bm!733420))

(declare-fun m!8279662 () Bool)

(assert (=> b!7904990 m!8279662))

(declare-fun m!8279664 () Bool)

(assert (=> bm!733419 m!8279664))

(declare-fun m!8279666 () Bool)

(assert (=> bm!733420 m!8279666))

(assert (=> bm!733335 d!2359215))

(declare-fun b!7904997 () Bool)

(declare-fun res!3136769 () Bool)

(declare-fun e!4666066 () Bool)

(assert (=> b!7904997 (=> (not res!3136769) (not e!4666066))))

(declare-fun lt!2684891 () List!74351)

(assert (=> b!7904997 (= res!3136769 (= (size!43017 lt!2684891) (+ (size!43017 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))) (size!43017 (_2!38428 (get!26669 lt!2684522))))))))

(declare-fun b!7904995 () Bool)

(declare-fun e!4666065 () List!74351)

(assert (=> b!7904995 (= e!4666065 (_2!38428 (get!26669 lt!2684522)))))

(declare-fun b!7904998 () Bool)

(assert (=> b!7904998 (= e!4666066 (or (not (= (_2!38428 (get!26669 lt!2684522)) Nil!74227)) (= lt!2684891 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))))))))

(declare-fun d!2359217 () Bool)

(assert (=> d!2359217 e!4666066))

(declare-fun res!3136770 () Bool)

(assert (=> d!2359217 (=> (not res!3136770) (not e!4666066))))

(assert (=> d!2359217 (= res!3136770 (= (content!15719 lt!2684891) ((_ map or) (content!15719 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))) (content!15719 (_2!38428 (get!26669 lt!2684522))))))))

(assert (=> d!2359217 (= lt!2684891 e!4666065)))

(declare-fun c!1450625 () Bool)

(assert (=> d!2359217 (= c!1450625 ((_ is Nil!74227) (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))))))

(assert (=> d!2359217 (= (++!18168 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522)))) (_2!38428 (get!26669 lt!2684522))) lt!2684891)))

(declare-fun b!7904996 () Bool)

(assert (=> b!7904996 (= e!4666065 (Cons!74227 (h!80675 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))) (++!18168 (t!389454 (list!19241 (charsOf!5554 (_1!38428 (get!26669 lt!2684522))))) (_2!38428 (get!26669 lt!2684522)))))))

(assert (= (and d!2359217 c!1450625) b!7904995))

(assert (= (and d!2359217 (not c!1450625)) b!7904996))

(assert (= (and d!2359217 res!3136770) b!7904997))

(assert (= (and b!7904997 res!3136769) b!7904998))

(declare-fun m!8279668 () Bool)

(assert (=> b!7904997 m!8279668))

(assert (=> b!7904997 m!8278784))

(declare-fun m!8279670 () Bool)

(assert (=> b!7904997 m!8279670))

(assert (=> b!7904997 m!8278778))

(declare-fun m!8279672 () Bool)

(assert (=> d!2359217 m!8279672))

(assert (=> d!2359217 m!8278784))

(declare-fun m!8279674 () Bool)

(assert (=> d!2359217 m!8279674))

(declare-fun m!8279676 () Bool)

(assert (=> d!2359217 m!8279676))

(declare-fun m!8279678 () Bool)

(assert (=> b!7904996 m!8279678))

(assert (=> b!7904182 d!2359217))

(assert (=> b!7904182 d!2359047))

(assert (=> b!7904182 d!2359049))

(assert (=> b!7904182 d!2359051))

(assert (=> b!7904202 d!2359111))

(assert (=> d!2358973 d!2358995))

(assert (=> b!7904181 d!2359051))

(declare-fun d!2359219 () Bool)

(assert (=> d!2359219 (= (apply!14339 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522))))) (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522))))))))

(declare-fun b_lambda!289845 () Bool)

(assert (=> (not b_lambda!289845) (not d!2359219)))

(declare-fun t!389535 () Bool)

(declare-fun tb!263019 () Bool)

(assert (=> (and b!7904118 (= (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))) t!389535) tb!263019))

(declare-fun result!360128 () Bool)

(assert (=> tb!263019 (= result!360128 (inv!21 (dynLambda!30070 (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522))))) (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522)))))))))

(declare-fun m!8279680 () Bool)

(assert (=> tb!263019 m!8279680))

(assert (=> d!2359219 t!389535))

(declare-fun b_and!353015 () Bool)

(assert (= b_and!353011 (and (=> t!389535 result!360128) b_and!353015)))

(declare-fun t!389537 () Bool)

(declare-fun tb!263021 () Bool)

(assert (=> (and b!7904447 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))) t!389537) tb!263021))

(declare-fun result!360130 () Bool)

(assert (= result!360130 result!360128))

(assert (=> d!2359219 t!389537))

(declare-fun b_and!353017 () Bool)

(assert (= b_and!353013 (and (=> t!389537 result!360130) b_and!353017)))

(assert (=> d!2359219 m!8278790))

(declare-fun m!8279682 () Bool)

(assert (=> d!2359219 m!8279682))

(assert (=> b!7904181 d!2359219))

(declare-fun d!2359221 () Bool)

(assert (=> d!2359221 (= (seqFromList!6157 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522)))) (fromListB!2778 (originalCharacters!8851 (_1!38428 (get!26669 lt!2684522)))))))

(declare-fun bs!1968098 () Bool)

(assert (= bs!1968098 d!2359221))

(declare-fun m!8279684 () Bool)

(assert (=> bs!1968098 m!8279684))

(assert (=> b!7904181 d!2359221))

(assert (=> b!7904412 d!2359075))

(declare-fun d!2359223 () Bool)

(declare-fun e!4666070 () Bool)

(assert (=> d!2359223 e!4666070))

(declare-fun res!3136773 () Bool)

(assert (=> d!2359223 (=> (not res!3136773) (not e!4666070))))

(declare-fun lt!2684894 () BalanceConc!30686)

(assert (=> d!2359223 (= res!3136773 (= (list!19241 lt!2684894) (originalCharacters!8851 (_1!38428 lt!2684494))))))

(declare-fun fromList!964 (List!74351) Conc!15784)

(assert (=> d!2359223 (= lt!2684894 (BalanceConc!30687 (fromList!964 (originalCharacters!8851 (_1!38428 lt!2684494)))))))

(assert (=> d!2359223 (= (fromListB!2778 (originalCharacters!8851 (_1!38428 lt!2684494))) lt!2684894)))

(declare-fun b!7905001 () Bool)

(assert (=> b!7905001 (= e!4666070 (isBalanced!4476 (fromList!964 (originalCharacters!8851 (_1!38428 lt!2684494)))))))

(assert (= (and d!2359223 res!3136773) b!7905001))

(declare-fun m!8279686 () Bool)

(assert (=> d!2359223 m!8279686))

(declare-fun m!8279688 () Bool)

(assert (=> d!2359223 m!8279688))

(assert (=> b!7905001 m!8279688))

(assert (=> b!7905001 m!8279688))

(declare-fun m!8279690 () Bool)

(assert (=> b!7905001 m!8279690))

(assert (=> d!2358953 d!2359223))

(assert (=> b!7904411 d!2359097))

(declare-fun d!2359225 () Bool)

(declare-fun lt!2684895 () Int)

(assert (=> d!2359225 (>= lt!2684895 0)))

(declare-fun e!4666071 () Int)

(assert (=> d!2359225 (= lt!2684895 e!4666071)))

(declare-fun c!1450627 () Bool)

(assert (=> d!2359225 (= c!1450627 ((_ is Nil!74227) (t!389454 input!1184)))))

(assert (=> d!2359225 (= (size!43017 (t!389454 input!1184)) lt!2684895)))

(declare-fun b!7905002 () Bool)

(assert (=> b!7905002 (= e!4666071 0)))

(declare-fun b!7905003 () Bool)

(assert (=> b!7905003 (= e!4666071 (+ 1 (size!43017 (t!389454 (t!389454 input!1184)))))))

(assert (= (and d!2359225 c!1450627) b!7905002))

(assert (= (and d!2359225 (not c!1450627)) b!7905003))

(declare-fun m!8279692 () Bool)

(assert (=> b!7905003 m!8279692))

(assert (=> b!7904422 d!2359225))

(declare-fun d!2359227 () Bool)

(declare-fun lt!2684896 () Int)

(assert (=> d!2359227 (>= lt!2684896 0)))

(declare-fun e!4666072 () Int)

(assert (=> d!2359227 (= lt!2684896 e!4666072)))

(declare-fun c!1450628 () Bool)

(assert (=> d!2359227 (= c!1450628 ((_ is Nil!74227) (_2!38428 (get!26669 lt!2684522))))))

(assert (=> d!2359227 (= (size!43017 (_2!38428 (get!26669 lt!2684522))) lt!2684896)))

(declare-fun b!7905004 () Bool)

(assert (=> b!7905004 (= e!4666072 0)))

(declare-fun b!7905005 () Bool)

(assert (=> b!7905005 (= e!4666072 (+ 1 (size!43017 (t!389454 (_2!38428 (get!26669 lt!2684522))))))))

(assert (= (and d!2359227 c!1450628) b!7905004))

(assert (= (and d!2359227 (not c!1450628)) b!7905005))

(declare-fun m!8279694 () Bool)

(assert (=> b!7905005 m!8279694))

(assert (=> b!7904179 d!2359227))

(assert (=> b!7904179 d!2359051))

(assert (=> b!7904179 d!2358993))

(declare-fun d!2359229 () Bool)

(declare-fun lt!2684897 () Int)

(assert (=> d!2359229 (>= lt!2684897 0)))

(declare-fun e!4666073 () Int)

(assert (=> d!2359229 (= lt!2684897 e!4666073)))

(declare-fun c!1450629 () Bool)

(assert (=> d!2359229 (= c!1450629 ((_ is Nil!74227) lt!2684552))))

(assert (=> d!2359229 (= (size!43017 lt!2684552) lt!2684897)))

(declare-fun b!7905006 () Bool)

(assert (=> b!7905006 (= e!4666073 0)))

(declare-fun b!7905007 () Bool)

(assert (=> b!7905007 (= e!4666073 (+ 1 (size!43017 (t!389454 lt!2684552))))))

(assert (= (and d!2359229 c!1450629) b!7905006))

(assert (= (and d!2359229 (not c!1450629)) b!7905007))

(declare-fun m!8279696 () Bool)

(assert (=> b!7905007 m!8279696))

(assert (=> b!7904292 d!2359229))

(declare-fun d!2359231 () Bool)

(declare-fun lt!2684898 () Int)

(assert (=> d!2359231 (>= lt!2684898 0)))

(declare-fun e!4666074 () Int)

(assert (=> d!2359231 (= lt!2684898 e!4666074)))

(declare-fun c!1450630 () Bool)

(assert (=> d!2359231 (= c!1450630 ((_ is Nil!74227) lt!2684496))))

(assert (=> d!2359231 (= (size!43017 lt!2684496) lt!2684898)))

(declare-fun b!7905008 () Bool)

(assert (=> b!7905008 (= e!4666074 0)))

(declare-fun b!7905009 () Bool)

(assert (=> b!7905009 (= e!4666074 (+ 1 (size!43017 (t!389454 lt!2684496))))))

(assert (= (and d!2359231 c!1450630) b!7905008))

(assert (= (and d!2359231 (not c!1450630)) b!7905009))

(declare-fun m!8279698 () Bool)

(assert (=> b!7905009 m!8279698))

(assert (=> b!7904292 d!2359231))

(assert (=> b!7904292 d!2358991))

(declare-fun d!2359233 () Bool)

(declare-fun nullableFct!3753 (Regex!21313) Bool)

(assert (=> d!2359233 (= (nullable!9486 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))) (nullableFct!3753 (reg!21642 (regex!8610 (rule!11900 (_1!38428 lt!2684494))))))))

(declare-fun bs!1968099 () Bool)

(assert (= bs!1968099 d!2359233))

(declare-fun m!8279700 () Bool)

(assert (=> bs!1968099 m!8279700))

(assert (=> b!7904255 d!2359233))

(declare-fun b!7905012 () Bool)

(declare-fun res!3136774 () Bool)

(declare-fun e!4666076 () Bool)

(assert (=> b!7905012 (=> (not res!3136774) (not e!4666076))))

(declare-fun lt!2684899 () List!74351)

(assert (=> b!7905012 (= res!3136774 (= (size!43017 lt!2684899) (+ (size!43017 (t!389454 lt!2684496)) (size!43017 (_2!38428 lt!2684494)))))))

(declare-fun b!7905010 () Bool)

(declare-fun e!4666075 () List!74351)

(assert (=> b!7905010 (= e!4666075 (_2!38428 lt!2684494))))

(declare-fun b!7905013 () Bool)

(assert (=> b!7905013 (= e!4666076 (or (not (= (_2!38428 lt!2684494) Nil!74227)) (= lt!2684899 (t!389454 lt!2684496))))))

(declare-fun d!2359235 () Bool)

(assert (=> d!2359235 e!4666076))

(declare-fun res!3136775 () Bool)

(assert (=> d!2359235 (=> (not res!3136775) (not e!4666076))))

(assert (=> d!2359235 (= res!3136775 (= (content!15719 lt!2684899) ((_ map or) (content!15719 (t!389454 lt!2684496)) (content!15719 (_2!38428 lt!2684494)))))))

(assert (=> d!2359235 (= lt!2684899 e!4666075)))

(declare-fun c!1450631 () Bool)

(assert (=> d!2359235 (= c!1450631 ((_ is Nil!74227) (t!389454 lt!2684496)))))

(assert (=> d!2359235 (= (++!18168 (t!389454 lt!2684496) (_2!38428 lt!2684494)) lt!2684899)))

(declare-fun b!7905011 () Bool)

(assert (=> b!7905011 (= e!4666075 (Cons!74227 (h!80675 (t!389454 lt!2684496)) (++!18168 (t!389454 (t!389454 lt!2684496)) (_2!38428 lt!2684494))))))

(assert (= (and d!2359235 c!1450631) b!7905010))

(assert (= (and d!2359235 (not c!1450631)) b!7905011))

(assert (= (and d!2359235 res!3136775) b!7905012))

(assert (= (and b!7905012 res!3136774) b!7905013))

(declare-fun m!8279702 () Bool)

(assert (=> b!7905012 m!8279702))

(assert (=> b!7905012 m!8279698))

(assert (=> b!7905012 m!8278732))

(declare-fun m!8279704 () Bool)

(assert (=> d!2359235 m!8279704))

(declare-fun m!8279706 () Bool)

(assert (=> d!2359235 m!8279706))

(assert (=> d!2359235 m!8278896))

(declare-fun m!8279708 () Bool)

(assert (=> b!7905011 m!8279708))

(assert (=> b!7904291 d!2359235))

(declare-fun d!2359237 () Bool)

(declare-fun lt!2684902 () Bool)

(declare-fun content!15721 (List!74352) (InoxSet Rule!17020))

(assert (=> d!2359237 (= lt!2684902 (select (content!15721 (t!389455 rulesArg!141)) (rule!11900 (_1!38428 (get!26669 lt!2684522)))))))

(declare-fun e!4666082 () Bool)

(assert (=> d!2359237 (= lt!2684902 e!4666082)))

(declare-fun res!3136780 () Bool)

(assert (=> d!2359237 (=> (not res!3136780) (not e!4666082))))

(assert (=> d!2359237 (= res!3136780 ((_ is Cons!74228) (t!389455 rulesArg!141)))))

(assert (=> d!2359237 (= (contains!20890 (t!389455 rulesArg!141) (rule!11900 (_1!38428 (get!26669 lt!2684522)))) lt!2684902)))

(declare-fun b!7905018 () Bool)

(declare-fun e!4666081 () Bool)

(assert (=> b!7905018 (= e!4666082 e!4666081)))

(declare-fun res!3136781 () Bool)

(assert (=> b!7905018 (=> res!3136781 e!4666081)))

(assert (=> b!7905018 (= res!3136781 (= (h!80676 (t!389455 rulesArg!141)) (rule!11900 (_1!38428 (get!26669 lt!2684522)))))))

(declare-fun b!7905019 () Bool)

(assert (=> b!7905019 (= e!4666081 (contains!20890 (t!389455 (t!389455 rulesArg!141)) (rule!11900 (_1!38428 (get!26669 lt!2684522)))))))

(assert (= (and d!2359237 res!3136780) b!7905018))

(assert (= (and b!7905018 (not res!3136781)) b!7905019))

(declare-fun m!8279710 () Bool)

(assert (=> d!2359237 m!8279710))

(declare-fun m!8279712 () Bool)

(assert (=> d!2359237 m!8279712))

(declare-fun m!8279714 () Bool)

(assert (=> b!7905019 m!8279714))

(assert (=> b!7904178 d!2359237))

(assert (=> b!7904178 d!2359051))

(declare-fun d!2359239 () Bool)

(declare-fun c!1450634 () Bool)

(assert (=> d!2359239 (= c!1450634 ((_ is Nil!74227) lt!2684552))))

(declare-fun e!4666085 () (InoxSet C!42956))

(assert (=> d!2359239 (= (content!15719 lt!2684552) e!4666085)))

(declare-fun b!7905024 () Bool)

(assert (=> b!7905024 (= e!4666085 ((as const (Array C!42956 Bool)) false))))

(declare-fun b!7905025 () Bool)

(assert (=> b!7905025 (= e!4666085 ((_ map or) (store ((as const (Array C!42956 Bool)) false) (h!80675 lt!2684552) true) (content!15719 (t!389454 lt!2684552))))))

(assert (= (and d!2359239 c!1450634) b!7905024))

(assert (= (and d!2359239 (not c!1450634)) b!7905025))

(declare-fun m!8279716 () Bool)

(assert (=> b!7905025 m!8279716))

(declare-fun m!8279718 () Bool)

(assert (=> b!7905025 m!8279718))

(assert (=> d!2358969 d!2359239))

(declare-fun d!2359241 () Bool)

(declare-fun c!1450635 () Bool)

(assert (=> d!2359241 (= c!1450635 ((_ is Nil!74227) lt!2684496))))

(declare-fun e!4666086 () (InoxSet C!42956))

(assert (=> d!2359241 (= (content!15719 lt!2684496) e!4666086)))

(declare-fun b!7905026 () Bool)

(assert (=> b!7905026 (= e!4666086 ((as const (Array C!42956 Bool)) false))))

(declare-fun b!7905027 () Bool)

(assert (=> b!7905027 (= e!4666086 ((_ map or) (store ((as const (Array C!42956 Bool)) false) (h!80675 lt!2684496) true) (content!15719 (t!389454 lt!2684496))))))

(assert (= (and d!2359241 c!1450635) b!7905026))

(assert (= (and d!2359241 (not c!1450635)) b!7905027))

(declare-fun m!8279720 () Bool)

(assert (=> b!7905027 m!8279720))

(assert (=> b!7905027 m!8279706))

(assert (=> d!2358969 d!2359241))

(declare-fun d!2359243 () Bool)

(declare-fun c!1450636 () Bool)

(assert (=> d!2359243 (= c!1450636 ((_ is Nil!74227) (_2!38428 lt!2684494)))))

(declare-fun e!4666087 () (InoxSet C!42956))

(assert (=> d!2359243 (= (content!15719 (_2!38428 lt!2684494)) e!4666087)))

(declare-fun b!7905028 () Bool)

(assert (=> b!7905028 (= e!4666087 ((as const (Array C!42956 Bool)) false))))

(declare-fun b!7905029 () Bool)

(assert (=> b!7905029 (= e!4666087 ((_ map or) (store ((as const (Array C!42956 Bool)) false) (h!80675 (_2!38428 lt!2684494)) true) (content!15719 (t!389454 (_2!38428 lt!2684494)))))))

(assert (= (and d!2359243 c!1450636) b!7905028))

(assert (= (and d!2359243 (not c!1450636)) b!7905029))

(declare-fun m!8279722 () Bool)

(assert (=> b!7905029 m!8279722))

(declare-fun m!8279724 () Bool)

(assert (=> b!7905029 m!8279724))

(assert (=> d!2358969 d!2359243))

(declare-fun d!2359245 () Bool)

(assert (=> d!2359245 (= (isDefined!14468 lt!2684522) (not (isEmpty!42591 lt!2684522)))))

(declare-fun bs!1968100 () Bool)

(assert (= bs!1968100 d!2359245))

(assert (=> bs!1968100 m!8278786))

(assert (=> b!7904177 d!2359245))

(declare-fun b!7905033 () Bool)

(declare-fun e!4666088 () Bool)

(declare-fun tp!2354799 () Bool)

(declare-fun tp!2354797 () Bool)

(assert (=> b!7905033 (= e!4666088 (and tp!2354799 tp!2354797))))

(assert (=> b!7904446 (= tp!2354742 e!4666088)))

(declare-fun b!7905032 () Bool)

(declare-fun tp!2354801 () Bool)

(assert (=> b!7905032 (= e!4666088 tp!2354801)))

(declare-fun b!7905031 () Bool)

(declare-fun tp!2354800 () Bool)

(declare-fun tp!2354798 () Bool)

(assert (=> b!7905031 (= e!4666088 (and tp!2354800 tp!2354798))))

(declare-fun b!7905030 () Bool)

(assert (=> b!7905030 (= e!4666088 tp_is_empty!53001)))

(assert (= (and b!7904446 ((_ is ElementMatch!21313) (regex!8610 (h!80676 (t!389455 rulesArg!141))))) b!7905030))

(assert (= (and b!7904446 ((_ is Concat!30240) (regex!8610 (h!80676 (t!389455 rulesArg!141))))) b!7905031))

(assert (= (and b!7904446 ((_ is Star!21313) (regex!8610 (h!80676 (t!389455 rulesArg!141))))) b!7905032))

(assert (= (and b!7904446 ((_ is Union!21313) (regex!8610 (h!80676 (t!389455 rulesArg!141))))) b!7905033))

(declare-fun b!7905037 () Bool)

(declare-fun e!4666089 () Bool)

(declare-fun tp!2354804 () Bool)

(declare-fun tp!2354802 () Bool)

(assert (=> b!7905037 (= e!4666089 (and tp!2354804 tp!2354802))))

(assert (=> b!7904436 (= tp!2354729 e!4666089)))

(declare-fun b!7905036 () Bool)

(declare-fun tp!2354806 () Bool)

(assert (=> b!7905036 (= e!4666089 tp!2354806)))

(declare-fun b!7905035 () Bool)

(declare-fun tp!2354805 () Bool)

(declare-fun tp!2354803 () Bool)

(assert (=> b!7905035 (= e!4666089 (and tp!2354805 tp!2354803))))

(declare-fun b!7905034 () Bool)

(assert (=> b!7905034 (= e!4666089 tp_is_empty!53001)))

(assert (= (and b!7904436 ((_ is ElementMatch!21313) (regOne!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905034))

(assert (= (and b!7904436 ((_ is Concat!30240) (regOne!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905035))

(assert (= (and b!7904436 ((_ is Star!21313) (regOne!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905036))

(assert (= (and b!7904436 ((_ is Union!21313) (regOne!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905037))

(declare-fun b!7905041 () Bool)

(declare-fun e!4666090 () Bool)

(declare-fun tp!2354809 () Bool)

(declare-fun tp!2354807 () Bool)

(assert (=> b!7905041 (= e!4666090 (and tp!2354809 tp!2354807))))

(assert (=> b!7904436 (= tp!2354727 e!4666090)))

(declare-fun b!7905040 () Bool)

(declare-fun tp!2354811 () Bool)

(assert (=> b!7905040 (= e!4666090 tp!2354811)))

(declare-fun b!7905039 () Bool)

(declare-fun tp!2354810 () Bool)

(declare-fun tp!2354808 () Bool)

(assert (=> b!7905039 (= e!4666090 (and tp!2354810 tp!2354808))))

(declare-fun b!7905038 () Bool)

(assert (=> b!7905038 (= e!4666090 tp_is_empty!53001)))

(assert (= (and b!7904436 ((_ is ElementMatch!21313) (regTwo!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905038))

(assert (= (and b!7904436 ((_ is Concat!30240) (regTwo!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905039))

(assert (= (and b!7904436 ((_ is Star!21313) (regTwo!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905040))

(assert (= (and b!7904436 ((_ is Union!21313) (regTwo!43139 (regex!8610 (h!80676 rulesArg!141))))) b!7905041))

(declare-fun b!7905044 () Bool)

(declare-fun b_free!134863 () Bool)

(declare-fun b_next!135653 () Bool)

(assert (=> b!7905044 (= b_free!134863 (not b_next!135653))))

(declare-fun t!389539 () Bool)

(declare-fun tb!263023 () Bool)

(assert (=> (and b!7905044 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141)))) t!389539) tb!263023))

(declare-fun result!360132 () Bool)

(assert (= result!360132 result!360086))

(assert (=> d!2359175 t!389539))

(assert (=> d!2359121 t!389539))

(declare-fun t!389541 () Bool)

(declare-fun tb!263025 () Bool)

(assert (=> (and b!7905044 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))))) t!389541) tb!263025))

(declare-fun result!360134 () Bool)

(assert (= result!360134 result!360038))

(assert (=> d!2358951 t!389541))

(declare-fun tb!263027 () Bool)

(declare-fun t!389543 () Bool)

(assert (=> (and b!7905044 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))))) t!389543) tb!263027))

(declare-fun result!360136 () Bool)

(assert (= result!360136 result!360124))

(assert (=> d!2359199 t!389543))

(declare-fun t!389545 () Bool)

(declare-fun tb!263029 () Bool)

(assert (=> (and b!7905044 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))) t!389545) tb!263029))

(declare-fun result!360138 () Bool)

(assert (= result!360138 result!360128))

(assert (=> d!2359219 t!389545))

(declare-fun b_and!353019 () Bool)

(declare-fun tp!2354815 () Bool)

(assert (=> b!7905044 (= tp!2354815 (and (=> t!389539 result!360132) (=> t!389541 result!360134) (=> t!389543 result!360136) (=> t!389545 result!360138) b_and!353019))))

(declare-fun b_free!134865 () Bool)

(declare-fun b_next!135655 () Bool)

(assert (=> b!7905044 (= b_free!134865 (not b_next!135655))))

(declare-fun t!389547 () Bool)

(declare-fun tb!263031 () Bool)

(assert (=> (and b!7905044 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494))))) t!389547) tb!263031))

(declare-fun result!360140 () Bool)

(assert (= result!360140 result!360042))

(assert (=> d!2358963 t!389547))

(declare-fun t!389549 () Bool)

(declare-fun tb!263033 () Bool)

(assert (=> (and b!7905044 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684522)))))) t!389549) tb!263033))

(declare-fun result!360142 () Bool)

(assert (= result!360142 result!360070))

(assert (=> d!2359049 t!389549))

(declare-fun t!389551 () Bool)

(declare-fun tb!263035 () Bool)

(assert (=> (and b!7905044 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 (get!26669 lt!2684538)))))) t!389551) tb!263035))

(declare-fun result!360144 () Bool)

(assert (= result!360144 result!360082))

(assert (=> d!2359109 t!389551))

(declare-fun t!389553 () Bool)

(declare-fun tb!263037 () Bool)

(assert (=> (and b!7905044 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toChars!11522 (transformation!8610 (h!80676 rulesArg!141)))) t!389553) tb!263037))

(declare-fun result!360146 () Bool)

(assert (= result!360146 result!360102))

(assert (=> d!2359175 t!389553))

(declare-fun tp!2354813 () Bool)

(declare-fun b_and!353021 () Bool)

(assert (=> b!7905044 (= tp!2354813 (and (=> t!389547 result!360140) (=> t!389549 result!360142) (=> t!389551 result!360144) (=> t!389553 result!360146) b_and!353021))))

(declare-fun e!4666092 () Bool)

(assert (=> b!7905044 (= e!4666092 (and tp!2354815 tp!2354813))))

(declare-fun b!7905043 () Bool)

(declare-fun tp!2354814 () Bool)

(declare-fun e!4666091 () Bool)

(assert (=> b!7905043 (= e!4666091 (and tp!2354814 (inv!95217 (tag!9474 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (inv!95219 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) e!4666092))))

(declare-fun b!7905042 () Bool)

(declare-fun e!4666094 () Bool)

(declare-fun tp!2354812 () Bool)

(assert (=> b!7905042 (= e!4666094 (and e!4666091 tp!2354812))))

(assert (=> b!7904445 (= tp!2354740 e!4666094)))

(assert (= b!7905043 b!7905044))

(assert (= b!7905042 b!7905043))

(assert (= (and b!7904445 ((_ is Cons!74228) (t!389455 (t!389455 rulesArg!141)))) b!7905042))

(declare-fun m!8279726 () Bool)

(assert (=> b!7905043 m!8279726))

(declare-fun m!8279728 () Bool)

(assert (=> b!7905043 m!8279728))

(declare-fun b!7905048 () Bool)

(declare-fun e!4666095 () Bool)

(declare-fun tp!2354818 () Bool)

(declare-fun tp!2354816 () Bool)

(assert (=> b!7905048 (= e!4666095 (and tp!2354818 tp!2354816))))

(assert (=> b!7904435 (= tp!2354731 e!4666095)))

(declare-fun b!7905047 () Bool)

(declare-fun tp!2354820 () Bool)

(assert (=> b!7905047 (= e!4666095 tp!2354820)))

(declare-fun b!7905046 () Bool)

(declare-fun tp!2354819 () Bool)

(declare-fun tp!2354817 () Bool)

(assert (=> b!7905046 (= e!4666095 (and tp!2354819 tp!2354817))))

(declare-fun b!7905045 () Bool)

(assert (=> b!7905045 (= e!4666095 tp_is_empty!53001)))

(assert (= (and b!7904435 ((_ is ElementMatch!21313) (reg!21642 (regex!8610 (h!80676 rulesArg!141))))) b!7905045))

(assert (= (and b!7904435 ((_ is Concat!30240) (reg!21642 (regex!8610 (h!80676 rulesArg!141))))) b!7905046))

(assert (= (and b!7904435 ((_ is Star!21313) (reg!21642 (regex!8610 (h!80676 rulesArg!141))))) b!7905047))

(assert (= (and b!7904435 ((_ is Union!21313) (reg!21642 (regex!8610 (h!80676 rulesArg!141))))) b!7905048))

(declare-fun b!7905052 () Bool)

(declare-fun e!4666096 () Bool)

(declare-fun tp!2354823 () Bool)

(declare-fun tp!2354821 () Bool)

(assert (=> b!7905052 (= e!4666096 (and tp!2354823 tp!2354821))))

(assert (=> b!7904434 (= tp!2354730 e!4666096)))

(declare-fun b!7905051 () Bool)

(declare-fun tp!2354825 () Bool)

(assert (=> b!7905051 (= e!4666096 tp!2354825)))

(declare-fun b!7905050 () Bool)

(declare-fun tp!2354824 () Bool)

(declare-fun tp!2354822 () Bool)

(assert (=> b!7905050 (= e!4666096 (and tp!2354824 tp!2354822))))

(declare-fun b!7905049 () Bool)

(assert (=> b!7905049 (= e!4666096 tp_is_empty!53001)))

(assert (= (and b!7904434 ((_ is ElementMatch!21313) (regOne!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905049))

(assert (= (and b!7904434 ((_ is Concat!30240) (regOne!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905050))

(assert (= (and b!7904434 ((_ is Star!21313) (regOne!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905051))

(assert (= (and b!7904434 ((_ is Union!21313) (regOne!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905052))

(declare-fun b!7905056 () Bool)

(declare-fun e!4666097 () Bool)

(declare-fun tp!2354828 () Bool)

(declare-fun tp!2354826 () Bool)

(assert (=> b!7905056 (= e!4666097 (and tp!2354828 tp!2354826))))

(assert (=> b!7904434 (= tp!2354728 e!4666097)))

(declare-fun b!7905055 () Bool)

(declare-fun tp!2354830 () Bool)

(assert (=> b!7905055 (= e!4666097 tp!2354830)))

(declare-fun b!7905054 () Bool)

(declare-fun tp!2354829 () Bool)

(declare-fun tp!2354827 () Bool)

(assert (=> b!7905054 (= e!4666097 (and tp!2354829 tp!2354827))))

(declare-fun b!7905053 () Bool)

(assert (=> b!7905053 (= e!4666097 tp_is_empty!53001)))

(assert (= (and b!7904434 ((_ is ElementMatch!21313) (regTwo!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905053))

(assert (= (and b!7904434 ((_ is Concat!30240) (regTwo!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905054))

(assert (= (and b!7904434 ((_ is Star!21313) (regTwo!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905055))

(assert (= (and b!7904434 ((_ is Union!21313) (regTwo!43138 (regex!8610 (h!80676 rulesArg!141))))) b!7905056))

(declare-fun b!7905065 () Bool)

(declare-fun e!4666102 () Bool)

(declare-fun tp!2354839 () Bool)

(declare-fun tp!2354837 () Bool)

(assert (=> b!7905065 (= e!4666102 (and (inv!95222 (left!56616 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))))) tp!2354839 (inv!95222 (right!56946 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))))) tp!2354837))))

(declare-fun b!7905067 () Bool)

(declare-fun e!4666103 () Bool)

(declare-fun tp!2354838 () Bool)

(assert (=> b!7905067 (= e!4666103 tp!2354838)))

(declare-fun b!7905066 () Bool)

(declare-fun inv!95229 (IArray!31629) Bool)

(assert (=> b!7905066 (= e!4666102 (and (inv!95229 (xs!19166 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))))) e!4666103))))

(assert (=> b!7904232 (= tp!2354686 (and (inv!95222 (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494))))) e!4666102))))

(assert (= (and b!7904232 ((_ is Node!15784) (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))))) b!7905065))

(assert (= b!7905066 b!7905067))

(assert (= (and b!7904232 ((_ is Leaf!30057) (c!1450453 (dynLambda!30071 (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))) (value!287366 (_1!38428 lt!2684494)))))) b!7905066))

(declare-fun m!8279730 () Bool)

(assert (=> b!7905065 m!8279730))

(declare-fun m!8279732 () Bool)

(assert (=> b!7905065 m!8279732))

(declare-fun m!8279734 () Bool)

(assert (=> b!7905066 m!8279734))

(assert (=> b!7904232 m!8278868))

(declare-fun b!7905068 () Bool)

(declare-fun e!4666104 () Bool)

(declare-fun tp!2354840 () Bool)

(assert (=> b!7905068 (= e!4666104 (and tp_is_empty!53001 tp!2354840))))

(assert (=> b!7904452 (= tp!2354746 e!4666104)))

(assert (= (and b!7904452 ((_ is Cons!74227) (t!389454 (t!389454 input!1184)))) b!7905068))

(declare-fun b_lambda!289847 () Bool)

(assert (= b_lambda!289799 (or (and b!7904118 b_free!134847 (= (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))))) (and b!7904447 b_free!134855 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))))) (and b!7905044 b_free!134863 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toValue!11663 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))))) b_lambda!289847)))

(declare-fun b_lambda!289849 () Bool)

(assert (= b_lambda!289827 (or (and b!7904118 b_free!134849) (and b!7904447 b_free!134857 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))))) (and b!7905044 b_free!134865 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))))) b_lambda!289849)))

(declare-fun b_lambda!289851 () Bool)

(assert (= b_lambda!289815 (or (and b!7904118 b_free!134847) (and b!7904447 b_free!134855 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))))) (and b!7905044 b_free!134863 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))))) b_lambda!289851)))

(declare-fun b_lambda!289853 () Bool)

(assert (= b_lambda!289811 (or d!2358975 b_lambda!289853)))

(declare-fun bs!1968101 () Bool)

(declare-fun d!2359247 () Bool)

(assert (= bs!1968101 (and d!2359247 d!2358975)))

(assert (=> bs!1968101 (= (dynLambda!30078 lambda!472471 (h!80676 rulesArg!141)) (ruleValid!3936 thiss!14377 (h!80676 rulesArg!141)))))

(assert (=> bs!1968101 m!8278828))

(assert (=> b!7904647 d!2359247))

(declare-fun b_lambda!289855 () Bool)

(assert (= b_lambda!289801 (or (and b!7904118 b_free!134849 (= (toChars!11522 (transformation!8610 (h!80676 rulesArg!141))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))))) (and b!7904447 b_free!134857 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))))) (and b!7905044 b_free!134865 (= (toChars!11522 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toChars!11522 (transformation!8610 (rule!11900 (_1!38428 lt!2684494)))))) b_lambda!289855)))

(declare-fun b_lambda!289857 () Bool)

(assert (= b_lambda!289829 (or (and b!7904118 b_free!134847) (and b!7904447 b_free!134855 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 rulesArg!141)))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))))) (and b!7905044 b_free!134863 (= (toValue!11663 (transformation!8610 (h!80676 (t!389455 (t!389455 rulesArg!141))))) (toValue!11663 (transformation!8610 (h!80676 rulesArg!141))))) b_lambda!289857)))

(check-sat (not d!2359107) (not b!7904947) (not bm!733417) (not b!7905068) (not b!7904815) (not d!2359189) (not d!2359235) (not d!2359037) (not bm!733411) (not d!2359109) (not bm!733405) (not b!7904706) (not d!2359117) (not b!7904814) (not d!2359223) (not bm!733408) (not b_next!135653) (not b!7904572) (not tb!262979) (not b!7905065) (not b!7905066) (not b_next!135639) (not b!7905033) (not b!7904863) (not b!7904551) (not b!7904548) (not d!2359123) (not b!7905005) (not b!7905056) (not b!7904659) (not b!7905042) (not b!7905046) (not d!2359069) (not b!7905031) (not b!7904935) (not b!7904934) (not b!7904997) (not b!7904694) (not d!2359221) (not b!7904961) (not tb!262975) tp_is_empty!53001 (not b!7904973) (not b!7904936) (not bm!733407) (not b!7904589) (not b_next!135645) (not b!7904697) (not d!2359237) (not b!7905027) (not d!2359183) (not b!7905039) (not b!7905043) (not b!7904976) (not b!7904689) (not b!7905032) (not bm!733419) (not d!2359245) (not d!2359167) (not b!7904702) (not b!7905012) b_and!353017 (not bm!733409) (not d!2359217) (not b!7905001) (not b!7904544) (not bm!733357) (not b!7904553) (not tb!262995) (not b!7905052) (not bm!733420) (not b!7904232) b_and!353001 (not bs!1968101) (not b!7904580) (not d!2359187) b_and!353019 (not b!7904579) (not b!7904821) (not b!7905054) (not b!7905048) (not b!7904552) (not b_lambda!289843) (not bm!733415) (not b!7904587) (not b!7904703) (not b!7904576) (not d!2359097) (not b_lambda!289855) (not b!7904700) (not bm!733410) (not bm!733416) (not b!7904648) (not b!7905007) (not b_next!135655) (not b!7905009) (not b_lambda!289847) (not b!7904812) (not b_lambda!289849) (not b!7904958) (not d!2359233) (not b_lambda!289851) (not tb!262963) (not b!7904536) (not b!7905041) (not b_lambda!289805) (not b!7904956) (not b!7904943) (not b!7905051) (not d!2359081) (not b!7905003) (not b!7905025) (not b!7904959) (not b!7904925) (not b!7904549) (not d!2359035) (not b!7905035) (not d!2359209) (not d!2359057) (not b_lambda!289857) (not b!7905040) (not b!7904545) (not d!2359201) (not b!7905029) (not b!7905019) (not d!2359105) (not b!7904550) (not b!7904974) (not b!7905036) (not bm!733414) (not b!7904660) b_and!353015 (not b!7904996) (not b_lambda!289845) (not b!7904917) (not tb!263019) (not b!7905037) (not b_lambda!289853) (not b!7904945) (not b!7904948) (not bm!733364) (not b!7904928) (not d!2359175) (not d!2359113) (not b!7905067) (not b!7904699) (not b!7904953) (not b!7904844) (not d!2359053) (not b!7904911) (not b!7904930) (not b!7904575) (not b_lambda!289813) (not b!7904932) (not d!2359047) (not b_next!135637) (not b!7905055) (not b!7905011) (not bm!733406) (not b!7905047) (not b!7904981) (not b!7905050) (not d!2359031) (not b!7904547) (not tb!263015) (not bm!733412) (not b!7904927) (not b!7904573) (not b!7904574) (not d!2359115) (not d!2359075) (not b!7904578) (not b_next!135647) (not b!7904922) b_and!352999 (not b!7904912) (not d!2359049) (not b!7904588) (not b!7904990) (not b!7904641) b_and!353021)
(check-sat (not b_next!135653) (not b_next!135639) (not b_next!135645) b_and!353017 b_and!353001 b_and!353019 (not b_next!135655) b_and!353015 (not b_next!135637) b_and!353021 (not b_next!135647) b_and!352999)
