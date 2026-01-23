; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!220976 () Bool)

(assert start!220976)

(declare-fun b!2262351 () Bool)

(declare-fun b_free!66845 () Bool)

(declare-fun b_next!67549 () Bool)

(assert (=> b!2262351 (= b_free!66845 (not b_next!67549))))

(declare-fun tp!715555 () Bool)

(declare-fun b_and!177809 () Bool)

(assert (=> b!2262351 (= tp!715555 b_and!177809)))

(declare-fun b_free!66847 () Bool)

(declare-fun b_next!67551 () Bool)

(assert (=> b!2262351 (= b_free!66847 (not b_next!67551))))

(declare-fun tp!715554 () Bool)

(declare-fun b_and!177811 () Bool)

(assert (=> b!2262351 (= tp!715554 b_and!177811)))

(declare-fun b!2262364 () Bool)

(declare-fun b_free!66849 () Bool)

(declare-fun b_next!67553 () Bool)

(assert (=> b!2262364 (= b_free!66849 (not b_next!67553))))

(declare-fun tp!715565 () Bool)

(declare-fun b_and!177813 () Bool)

(assert (=> b!2262364 (= tp!715565 b_and!177813)))

(declare-fun b_free!66851 () Bool)

(declare-fun b_next!67555 () Bool)

(assert (=> b!2262364 (= b_free!66851 (not b_next!67555))))

(declare-fun tp!715553 () Bool)

(declare-fun b_and!177815 () Bool)

(assert (=> b!2262364 (= tp!715553 b_and!177815)))

(declare-fun b!2262371 () Bool)

(declare-fun b_free!66853 () Bool)

(declare-fun b_next!67557 () Bool)

(assert (=> b!2262371 (= b_free!66853 (not b_next!67557))))

(declare-fun tp!715557 () Bool)

(declare-fun b_and!177817 () Bool)

(assert (=> b!2262371 (= tp!715557 b_and!177817)))

(declare-fun b_free!66855 () Bool)

(declare-fun b_next!67559 () Bool)

(assert (=> b!2262371 (= b_free!66855 (not b_next!67559))))

(declare-fun tp!715564 () Bool)

(declare-fun b_and!177819 () Bool)

(assert (=> b!2262371 (= tp!715564 b_and!177819)))

(declare-fun b!2262372 () Bool)

(declare-fun b_free!66857 () Bool)

(declare-fun b_next!67561 () Bool)

(assert (=> b!2262372 (= b_free!66857 (not b_next!67561))))

(declare-fun tp!715560 () Bool)

(declare-fun b_and!177821 () Bool)

(assert (=> b!2262372 (= tp!715560 b_and!177821)))

(declare-fun b_free!66859 () Bool)

(declare-fun b_next!67563 () Bool)

(assert (=> b!2262372 (= b_free!66859 (not b_next!67563))))

(declare-fun tp!715563 () Bool)

(declare-fun b_and!177823 () Bool)

(assert (=> b!2262372 (= tp!715563 b_and!177823)))

(declare-fun b!2262342 () Bool)

(declare-fun e!1448542 () Bool)

(declare-fun e!1448537 () Bool)

(assert (=> b!2262342 (= e!1448542 e!1448537)))

(declare-fun res!967074 () Bool)

(assert (=> b!2262342 (=> res!967074 e!1448537)))

(declare-fun lt!840518 () Int)

(declare-fun lt!840515 () Int)

(assert (=> b!2262342 (= res!967074 (> lt!840518 lt!840515))))

(declare-datatypes ((List!26957 0))(
  ( (Nil!26863) (Cons!26863 (h!32264 (_ BitVec 16)) (t!201789 List!26957)) )
))
(declare-datatypes ((TokenValue!4435 0))(
  ( (FloatLiteralValue!8870 (text!31490 List!26957)) (TokenValueExt!4434 (__x!17930 Int)) (Broken!22175 (value!135574 List!26957)) (Object!4528) (End!4435) (Def!4435) (Underscore!4435) (Match!4435) (Else!4435) (Error!4435) (Case!4435) (If!4435) (Extends!4435) (Abstract!4435) (Class!4435) (Val!4435) (DelimiterValue!8870 (del!4495 List!26957)) (KeywordValue!4441 (value!135575 List!26957)) (CommentValue!8870 (value!135576 List!26957)) (WhitespaceValue!8870 (value!135577 List!26957)) (IndentationValue!4435 (value!135578 List!26957)) (String!29278) (Int32!4435) (Broken!22176 (value!135579 List!26957)) (Boolean!4436) (Unit!39799) (OperatorValue!4438 (op!4495 List!26957)) (IdentifierValue!8870 (value!135580 List!26957)) (IdentifierValue!8871 (value!135581 List!26957)) (WhitespaceValue!8871 (value!135582 List!26957)) (True!8870) (False!8870) (Broken!22177 (value!135583 List!26957)) (Broken!22178 (value!135584 List!26957)) (True!8871) (RightBrace!4435) (RightBracket!4435) (Colon!4435) (Null!4435) (Comma!4435) (LeftBracket!4435) (False!8871) (LeftBrace!4435) (ImaginaryLiteralValue!4435 (text!31491 List!26957)) (StringLiteralValue!13305 (value!135585 List!26957)) (EOFValue!4435 (value!135586 List!26957)) (IdentValue!4435 (value!135587 List!26957)) (DelimiterValue!8871 (value!135588 List!26957)) (DedentValue!4435 (value!135589 List!26957)) (NewLineValue!4435 (value!135590 List!26957)) (IntegerValue!13305 (value!135591 (_ BitVec 32)) (text!31492 List!26957)) (IntegerValue!13306 (value!135592 Int) (text!31493 List!26957)) (Times!4435) (Or!4435) (Equal!4435) (Minus!4435) (Broken!22179 (value!135593 List!26957)) (And!4435) (Div!4435) (LessEqual!4435) (Mod!4435) (Concat!11056) (Not!4435) (Plus!4435) (SpaceValue!4435 (value!135594 List!26957)) (IntegerValue!13307 (value!135595 Int) (text!31494 List!26957)) (StringLiteralValue!13306 (text!31495 List!26957)) (FloatLiteralValue!8871 (text!31496 List!26957)) (BytesLiteralValue!4435 (value!135596 List!26957)) (CommentValue!8871 (value!135597 List!26957)) (StringLiteralValue!13307 (value!135598 List!26957)) (ErrorTokenValue!4435 (msg!4496 List!26957)) )
))
(declare-datatypes ((C!13388 0))(
  ( (C!13389 (val!7742 Int)) )
))
(declare-datatypes ((List!26958 0))(
  ( (Nil!26864) (Cons!26864 (h!32265 C!13388) (t!201790 List!26958)) )
))
(declare-datatypes ((IArray!17393 0))(
  ( (IArray!17394 (innerList!8754 List!26958)) )
))
(declare-datatypes ((Conc!8694 0))(
  ( (Node!8694 (left!20391 Conc!8694) (right!20721 Conc!8694) (csize!17618 Int) (cheight!8905 Int)) (Leaf!12816 (xs!11636 IArray!17393) (csize!17619 Int)) (Empty!8694) )
))
(declare-datatypes ((BalanceConc!17116 0))(
  ( (BalanceConc!17117 (c!359412 Conc!8694)) )
))
(declare-datatypes ((Regex!6621 0))(
  ( (ElementMatch!6621 (c!359413 C!13388)) (Concat!11057 (regOne!13754 Regex!6621) (regTwo!13754 Regex!6621)) (EmptyExpr!6621) (Star!6621 (reg!6950 Regex!6621)) (EmptyLang!6621) (Union!6621 (regOne!13755 Regex!6621) (regTwo!13755 Regex!6621)) )
))
(declare-datatypes ((String!29279 0))(
  ( (String!29280 (value!135599 String)) )
))
(declare-datatypes ((TokenValueInjection!8410 0))(
  ( (TokenValueInjection!8411 (toValue!6023 Int) (toChars!5882 Int)) )
))
(declare-datatypes ((Rule!8346 0))(
  ( (Rule!8347 (regex!4273 Regex!6621) (tag!4763 String!29279) (isSeparator!4273 Bool) (transformation!4273 TokenValueInjection!8410)) )
))
(declare-datatypes ((List!26959 0))(
  ( (Nil!26865) (Cons!26865 (h!32266 Rule!8346) (t!201791 List!26959)) )
))
(declare-fun rules!1750 () List!26959)

(declare-fun otherR!12 () Rule!8346)

(declare-fun getIndex!294 (List!26959 Rule!8346) Int)

(assert (=> b!2262342 (= lt!840515 (getIndex!294 rules!1750 otherR!12))))

(declare-fun r!2363 () Rule!8346)

(assert (=> b!2262342 (= lt!840518 (getIndex!294 rules!1750 r!2363))))

(declare-datatypes ((LexerInterface!3870 0))(
  ( (LexerInterfaceExt!3867 (__x!17931 Int)) (Lexer!3868) )
))
(declare-fun thiss!16613 () LexerInterface!3870)

(declare-fun ruleValid!1365 (LexerInterface!3870 Rule!8346) Bool)

(assert (=> b!2262342 (ruleValid!1365 thiss!16613 otherR!12)))

(declare-datatypes ((Unit!39800 0))(
  ( (Unit!39801) )
))
(declare-fun lt!840520 () Unit!39800)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!772 (LexerInterface!3870 Rule!8346 List!26959) Unit!39800)

(assert (=> b!2262342 (= lt!840520 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!772 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2262343 () Bool)

(declare-fun e!1448536 () Bool)

(declare-fun e!1448545 () Bool)

(assert (=> b!2262343 (= e!1448536 e!1448545)))

(declare-fun res!967073 () Bool)

(assert (=> b!2262343 (=> res!967073 e!1448545)))

(declare-fun input!1722 () List!26958)

(declare-fun lt!840524 () List!26958)

(declare-fun size!21056 (List!26958) Int)

(assert (=> b!2262343 (= res!967073 (< (size!21056 input!1722) (size!21056 lt!840524)))))

(declare-datatypes ((Token!8024 0))(
  ( (Token!8025 (value!135600 TokenValue!4435) (rule!6585 Rule!8346) (size!21057 Int) (originalCharacters!5043 List!26958)) )
))
(declare-datatypes ((tuple2!26462 0))(
  ( (tuple2!26463 (_1!15741 Token!8024) (_2!15741 List!26958)) )
))
(declare-fun lt!840516 () tuple2!26462)

(declare-fun isPrefix!2263 (List!26958 List!26958) Bool)

(declare-fun ++!6541 (List!26958 List!26958) List!26958)

(assert (=> b!2262343 (isPrefix!2263 lt!840524 (++!6541 lt!840524 (_2!15741 lt!840516)))))

(declare-fun lt!840517 () Unit!39800)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1488 (List!26958 List!26958) Unit!39800)

(assert (=> b!2262343 (= lt!840517 (lemmaConcatTwoListThenFirstIsPrefix!1488 lt!840524 (_2!15741 lt!840516)))))

(declare-datatypes ((List!26960 0))(
  ( (Nil!26866) (Cons!26866 (h!32267 Token!8024) (t!201792 List!26960)) )
))
(declare-fun tokens!456 () List!26960)

(declare-fun list!10369 (BalanceConc!17116) List!26958)

(declare-fun charsOf!2661 (Token!8024) BalanceConc!17116)

(assert (=> b!2262343 (= lt!840524 (list!10369 (charsOf!2661 (h!32267 tokens!456))))))

(declare-datatypes ((Option!5249 0))(
  ( (None!5248) (Some!5248 (v!30284 tuple2!26462)) )
))
(declare-fun get!8103 (Option!5249) tuple2!26462)

(declare-fun maxPrefix!2144 (LexerInterface!3870 List!26959 List!26958) Option!5249)

(assert (=> b!2262343 (= lt!840516 (get!8103 (maxPrefix!2144 thiss!16613 rules!1750 input!1722)))))

(declare-fun b!2262344 () Bool)

(declare-fun res!967085 () Bool)

(declare-fun e!1448565 () Bool)

(assert (=> b!2262344 (=> (not res!967085) (not e!1448565))))

(assert (=> b!2262344 (= res!967085 (not (= r!2363 otherR!12)))))

(declare-fun b!2262345 () Bool)

(declare-fun e!1448556 () Bool)

(declare-fun e!1448559 () Bool)

(assert (=> b!2262345 (= e!1448556 e!1448559)))

(declare-fun res!967071 () Bool)

(assert (=> b!2262345 (=> (not res!967071) (not e!1448559))))

(declare-fun suffix!886 () List!26958)

(declare-datatypes ((IArray!17395 0))(
  ( (IArray!17396 (innerList!8755 List!26960)) )
))
(declare-datatypes ((Conc!8695 0))(
  ( (Node!8695 (left!20392 Conc!8695) (right!20722 Conc!8695) (csize!17620 Int) (cheight!8906 Int)) (Leaf!12817 (xs!11637 IArray!17395) (csize!17621 Int)) (Empty!8695) )
))
(declare-datatypes ((BalanceConc!17118 0))(
  ( (BalanceConc!17119 (c!359414 Conc!8695)) )
))
(declare-datatypes ((tuple2!26464 0))(
  ( (tuple2!26465 (_1!15742 BalanceConc!17118) (_2!15742 BalanceConc!17116)) )
))
(declare-fun lt!840522 () tuple2!26464)

(declare-datatypes ((tuple2!26466 0))(
  ( (tuple2!26467 (_1!15743 List!26960) (_2!15743 List!26958)) )
))
(declare-fun list!10370 (BalanceConc!17118) List!26960)

(assert (=> b!2262345 (= res!967071 (= (tuple2!26467 (list!10370 (_1!15742 lt!840522)) (list!10369 (_2!15742 lt!840522))) (tuple2!26467 tokens!456 suffix!886)))))

(declare-fun lex!1709 (LexerInterface!3870 List!26959 BalanceConc!17116) tuple2!26464)

(declare-fun seqFromList!2977 (List!26958) BalanceConc!17116)

(assert (=> b!2262345 (= lt!840522 (lex!1709 thiss!16613 rules!1750 (seqFromList!2977 input!1722)))))

(declare-fun b!2262346 () Bool)

(declare-fun e!1448557 () Bool)

(declare-fun tp_is_empty!10463 () Bool)

(declare-fun tp!715561 () Bool)

(assert (=> b!2262346 (= e!1448557 (and tp_is_empty!10463 tp!715561))))

(declare-fun tp!715550 () Bool)

(declare-fun b!2262347 () Bool)

(declare-fun e!1448539 () Bool)

(declare-fun e!1448544 () Bool)

(declare-fun inv!36404 (String!29279) Bool)

(declare-fun inv!36407 (TokenValueInjection!8410) Bool)

(assert (=> b!2262347 (= e!1448539 (and tp!715550 (inv!36404 (tag!4763 (h!32266 rules!1750))) (inv!36407 (transformation!4273 (h!32266 rules!1750))) e!1448544))))

(declare-fun b!2262348 () Bool)

(assert (=> b!2262348 (= e!1448565 (not e!1448542))))

(declare-fun res!967083 () Bool)

(assert (=> b!2262348 (=> res!967083 e!1448542)))

(declare-fun e!1448546 () Bool)

(assert (=> b!2262348 (= res!967083 e!1448546)))

(declare-fun res!967081 () Bool)

(assert (=> b!2262348 (=> (not res!967081) (not e!1448546))))

(declare-fun lt!840519 () Bool)

(assert (=> b!2262348 (= res!967081 (not lt!840519))))

(assert (=> b!2262348 (ruleValid!1365 thiss!16613 r!2363)))

(declare-fun lt!840523 () Unit!39800)

(assert (=> b!2262348 (= lt!840523 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!772 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2262349 () Bool)

(declare-fun matchR!2882 (Regex!6621 List!26958) Bool)

(declare-fun head!4856 (List!26960) Token!8024)

(assert (=> b!2262349 (= e!1448546 (not (matchR!2882 (regex!4273 r!2363) (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(declare-fun b!2262350 () Bool)

(declare-fun e!1448543 () Bool)

(declare-fun tp!715559 () Bool)

(assert (=> b!2262350 (= e!1448543 (and e!1448539 tp!715559))))

(assert (=> b!2262351 (= e!1448544 (and tp!715555 tp!715554))))

(declare-fun b!2262352 () Bool)

(assert (=> b!2262352 (= e!1448537 e!1448536)))

(declare-fun res!967076 () Bool)

(assert (=> b!2262352 (=> res!967076 e!1448536)))

(get-info :version)

(assert (=> b!2262352 (= res!967076 ((_ is Nil!26866) tokens!456))))

(declare-fun lt!840514 () Unit!39800)

(declare-fun e!1448547 () Unit!39800)

(assert (=> b!2262352 (= lt!840514 e!1448547)))

(declare-fun c!359411 () Bool)

(assert (=> b!2262352 (= c!359411 (= lt!840518 lt!840515))))

(declare-fun b!2262353 () Bool)

(declare-fun res!967069 () Bool)

(assert (=> b!2262353 (=> (not res!967069) (not e!1448556))))

(declare-fun contains!4629 (List!26959 Rule!8346) Bool)

(assert (=> b!2262353 (= res!967069 (contains!4629 rules!1750 otherR!12))))

(declare-fun b!2262354 () Bool)

(declare-fun Unit!39802 () Unit!39800)

(assert (=> b!2262354 (= e!1448547 Unit!39802)))

(declare-fun b!2262355 () Bool)

(declare-fun e!1448540 () Bool)

(declare-fun otherP!12 () List!26958)

(declare-fun size!21058 (BalanceConc!17116) Int)

(assert (=> b!2262355 (= e!1448540 (<= (size!21058 (charsOf!2661 (head!4856 tokens!456))) (size!21056 otherP!12)))))

(declare-fun b!2262356 () Bool)

(declare-fun e!1448551 () Bool)

(assert (=> b!2262356 (= e!1448551 (= (rule!6585 (head!4856 tokens!456)) r!2363))))

(declare-fun b!2262357 () Bool)

(declare-fun e!1448550 () Bool)

(declare-fun tp!715556 () Bool)

(assert (=> b!2262357 (= e!1448550 (and tp_is_empty!10463 tp!715556))))

(declare-fun b!2262358 () Bool)

(declare-fun Unit!39803 () Unit!39800)

(assert (=> b!2262358 (= e!1448547 Unit!39803)))

(declare-fun lt!840521 () Unit!39800)

(declare-fun lemmaSameIndexThenSameElement!140 (List!26959 Rule!8346 Rule!8346) Unit!39800)

(assert (=> b!2262358 (= lt!840521 (lemmaSameIndexThenSameElement!140 rules!1750 r!2363 otherR!12))))

(assert (=> b!2262358 false))

(declare-fun b!2262359 () Bool)

(declare-fun res!967084 () Bool)

(assert (=> b!2262359 (=> (not res!967084) (not e!1448556))))

(declare-fun rulesInvariant!3372 (LexerInterface!3870 List!26959) Bool)

(assert (=> b!2262359 (= res!967084 (rulesInvariant!3372 thiss!16613 rules!1750))))

(declare-fun b!2262360 () Bool)

(declare-fun res!967080 () Bool)

(assert (=> b!2262360 (=> (not res!967080) (not e!1448556))))

(declare-fun isEmpty!15191 (List!26959) Bool)

(assert (=> b!2262360 (= res!967080 (not (isEmpty!15191 rules!1750)))))

(declare-fun tp!715549 () Bool)

(declare-fun e!1448555 () Bool)

(declare-fun e!1448563 () Bool)

(declare-fun b!2262361 () Bool)

(declare-fun inv!21 (TokenValue!4435) Bool)

(assert (=> b!2262361 (= e!1448555 (and (inv!21 (value!135600 (h!32267 tokens!456))) e!1448563 tp!715549))))

(declare-fun b!2262362 () Bool)

(declare-fun res!967070 () Bool)

(assert (=> b!2262362 (=> (not res!967070) (not e!1448565))))

(assert (=> b!2262362 (= res!967070 e!1448551)))

(declare-fun res!967072 () Bool)

(assert (=> b!2262362 (=> res!967072 e!1448551)))

(assert (=> b!2262362 (= res!967072 lt!840519)))

(declare-fun tp!715562 () Bool)

(declare-fun e!1448553 () Bool)

(declare-fun b!2262363 () Bool)

(declare-fun inv!36408 (Token!8024) Bool)

(assert (=> b!2262363 (= e!1448553 (and (inv!36408 (h!32267 tokens!456)) e!1448555 tp!715562))))

(declare-fun e!1448549 () Bool)

(assert (=> b!2262364 (= e!1448549 (and tp!715565 tp!715553))))

(declare-fun res!967077 () Bool)

(assert (=> start!220976 (=> (not res!967077) (not e!1448556))))

(assert (=> start!220976 (= res!967077 ((_ is Lexer!3868) thiss!16613))))

(assert (=> start!220976 e!1448556))

(assert (=> start!220976 true))

(declare-fun e!1448552 () Bool)

(assert (=> start!220976 e!1448552))

(declare-fun e!1448558 () Bool)

(assert (=> start!220976 e!1448558))

(assert (=> start!220976 e!1448550))

(assert (=> start!220976 e!1448557))

(assert (=> start!220976 e!1448543))

(declare-fun e!1448564 () Bool)

(assert (=> start!220976 e!1448564))

(assert (=> start!220976 e!1448553))

(declare-fun b!2262365 () Bool)

(declare-fun res!967075 () Bool)

(assert (=> b!2262365 (=> (not res!967075) (not e!1448556))))

(assert (=> b!2262365 (= res!967075 (contains!4629 rules!1750 r!2363))))

(declare-fun b!2262366 () Bool)

(declare-fun tp!715548 () Bool)

(declare-fun e!1448538 () Bool)

(assert (=> b!2262366 (= e!1448564 (and tp!715548 (inv!36404 (tag!4763 r!2363)) (inv!36407 (transformation!4273 r!2363)) e!1448538))))

(declare-fun b!2262367 () Bool)

(declare-fun tp!715552 () Bool)

(assert (=> b!2262367 (= e!1448558 (and tp!715552 (inv!36404 (tag!4763 otherR!12)) (inv!36407 (transformation!4273 otherR!12)) e!1448549))))

(declare-fun b!2262368 () Bool)

(declare-fun res!967078 () Bool)

(assert (=> b!2262368 (=> (not res!967078) (not e!1448565))))

(assert (=> b!2262368 (= res!967078 (isPrefix!2263 otherP!12 input!1722))))

(declare-fun b!2262369 () Bool)

(assert (=> b!2262369 (= e!1448545 (isPrefix!2263 lt!840524 input!1722))))

(declare-fun b!2262370 () Bool)

(declare-fun e!1448554 () Bool)

(declare-fun tp!715551 () Bool)

(assert (=> b!2262370 (= e!1448563 (and tp!715551 (inv!36404 (tag!4763 (rule!6585 (h!32267 tokens!456)))) (inv!36407 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) e!1448554))))

(assert (=> b!2262371 (= e!1448538 (and tp!715557 tp!715564))))

(assert (=> b!2262372 (= e!1448554 (and tp!715560 tp!715563))))

(declare-fun b!2262373 () Bool)

(declare-fun tp!715558 () Bool)

(assert (=> b!2262373 (= e!1448552 (and tp_is_empty!10463 tp!715558))))

(declare-fun b!2262374 () Bool)

(assert (=> b!2262374 (= e!1448559 e!1448565)))

(declare-fun res!967079 () Bool)

(assert (=> b!2262374 (=> (not res!967079) (not e!1448565))))

(assert (=> b!2262374 (= res!967079 e!1448540)))

(declare-fun res!967082 () Bool)

(assert (=> b!2262374 (=> res!967082 e!1448540)))

(assert (=> b!2262374 (= res!967082 lt!840519)))

(declare-fun isEmpty!15192 (List!26960) Bool)

(assert (=> b!2262374 (= lt!840519 (isEmpty!15192 tokens!456))))

(assert (= (and start!220976 res!967077) b!2262360))

(assert (= (and b!2262360 res!967080) b!2262359))

(assert (= (and b!2262359 res!967084) b!2262365))

(assert (= (and b!2262365 res!967075) b!2262353))

(assert (= (and b!2262353 res!967069) b!2262345))

(assert (= (and b!2262345 res!967071) b!2262374))

(assert (= (and b!2262374 (not res!967082)) b!2262355))

(assert (= (and b!2262374 res!967079) b!2262362))

(assert (= (and b!2262362 (not res!967072)) b!2262356))

(assert (= (and b!2262362 res!967070) b!2262368))

(assert (= (and b!2262368 res!967078) b!2262344))

(assert (= (and b!2262344 res!967085) b!2262348))

(assert (= (and b!2262348 res!967081) b!2262349))

(assert (= (and b!2262348 (not res!967083)) b!2262342))

(assert (= (and b!2262342 (not res!967074)) b!2262352))

(assert (= (and b!2262352 c!359411) b!2262358))

(assert (= (and b!2262352 (not c!359411)) b!2262354))

(assert (= (and b!2262352 (not res!967076)) b!2262343))

(assert (= (and b!2262343 (not res!967073)) b!2262369))

(assert (= (and start!220976 ((_ is Cons!26864) input!1722)) b!2262373))

(assert (= b!2262367 b!2262364))

(assert (= start!220976 b!2262367))

(assert (= (and start!220976 ((_ is Cons!26864) suffix!886)) b!2262357))

(assert (= (and start!220976 ((_ is Cons!26864) otherP!12)) b!2262346))

(assert (= b!2262347 b!2262351))

(assert (= b!2262350 b!2262347))

(assert (= (and start!220976 ((_ is Cons!26865) rules!1750)) b!2262350))

(assert (= b!2262366 b!2262371))

(assert (= start!220976 b!2262366))

(assert (= b!2262370 b!2262372))

(assert (= b!2262361 b!2262370))

(assert (= b!2262363 b!2262361))

(assert (= (and start!220976 ((_ is Cons!26866) tokens!456)) b!2262363))

(declare-fun m!2691777 () Bool)

(assert (=> b!2262361 m!2691777))

(declare-fun m!2691779 () Bool)

(assert (=> b!2262345 m!2691779))

(declare-fun m!2691781 () Bool)

(assert (=> b!2262345 m!2691781))

(declare-fun m!2691783 () Bool)

(assert (=> b!2262345 m!2691783))

(assert (=> b!2262345 m!2691783))

(declare-fun m!2691785 () Bool)

(assert (=> b!2262345 m!2691785))

(declare-fun m!2691787 () Bool)

(assert (=> b!2262355 m!2691787))

(assert (=> b!2262355 m!2691787))

(declare-fun m!2691789 () Bool)

(assert (=> b!2262355 m!2691789))

(assert (=> b!2262355 m!2691789))

(declare-fun m!2691791 () Bool)

(assert (=> b!2262355 m!2691791))

(declare-fun m!2691793 () Bool)

(assert (=> b!2262355 m!2691793))

(declare-fun m!2691795 () Bool)

(assert (=> b!2262342 m!2691795))

(declare-fun m!2691797 () Bool)

(assert (=> b!2262342 m!2691797))

(declare-fun m!2691799 () Bool)

(assert (=> b!2262342 m!2691799))

(declare-fun m!2691801 () Bool)

(assert (=> b!2262342 m!2691801))

(declare-fun m!2691803 () Bool)

(assert (=> b!2262369 m!2691803))

(declare-fun m!2691805 () Bool)

(assert (=> b!2262343 m!2691805))

(declare-fun m!2691807 () Bool)

(assert (=> b!2262343 m!2691807))

(declare-fun m!2691809 () Bool)

(assert (=> b!2262343 m!2691809))

(declare-fun m!2691811 () Bool)

(assert (=> b!2262343 m!2691811))

(declare-fun m!2691813 () Bool)

(assert (=> b!2262343 m!2691813))

(assert (=> b!2262343 m!2691811))

(declare-fun m!2691815 () Bool)

(assert (=> b!2262343 m!2691815))

(assert (=> b!2262343 m!2691805))

(declare-fun m!2691817 () Bool)

(assert (=> b!2262343 m!2691817))

(declare-fun m!2691819 () Bool)

(assert (=> b!2262343 m!2691819))

(declare-fun m!2691821 () Bool)

(assert (=> b!2262343 m!2691821))

(assert (=> b!2262343 m!2691817))

(declare-fun m!2691823 () Bool)

(assert (=> b!2262358 m!2691823))

(declare-fun m!2691825 () Bool)

(assert (=> b!2262365 m!2691825))

(declare-fun m!2691827 () Bool)

(assert (=> b!2262360 m!2691827))

(declare-fun m!2691829 () Bool)

(assert (=> b!2262374 m!2691829))

(declare-fun m!2691831 () Bool)

(assert (=> b!2262359 m!2691831))

(declare-fun m!2691833 () Bool)

(assert (=> b!2262366 m!2691833))

(declare-fun m!2691835 () Bool)

(assert (=> b!2262366 m!2691835))

(declare-fun m!2691837 () Bool)

(assert (=> b!2262348 m!2691837))

(declare-fun m!2691839 () Bool)

(assert (=> b!2262348 m!2691839))

(declare-fun m!2691841 () Bool)

(assert (=> b!2262370 m!2691841))

(declare-fun m!2691843 () Bool)

(assert (=> b!2262370 m!2691843))

(declare-fun m!2691845 () Bool)

(assert (=> b!2262347 m!2691845))

(declare-fun m!2691847 () Bool)

(assert (=> b!2262347 m!2691847))

(declare-fun m!2691849 () Bool)

(assert (=> b!2262353 m!2691849))

(assert (=> b!2262349 m!2691787))

(assert (=> b!2262349 m!2691787))

(assert (=> b!2262349 m!2691789))

(assert (=> b!2262349 m!2691789))

(declare-fun m!2691851 () Bool)

(assert (=> b!2262349 m!2691851))

(assert (=> b!2262349 m!2691851))

(declare-fun m!2691853 () Bool)

(assert (=> b!2262349 m!2691853))

(declare-fun m!2691855 () Bool)

(assert (=> b!2262368 m!2691855))

(assert (=> b!2262356 m!2691787))

(declare-fun m!2691857 () Bool)

(assert (=> b!2262367 m!2691857))

(declare-fun m!2691859 () Bool)

(assert (=> b!2262367 m!2691859))

(declare-fun m!2691861 () Bool)

(assert (=> b!2262363 m!2691861))

(check-sat (not b!2262357) (not b_next!67553) (not b!2262347) (not b!2262368) (not b!2262359) (not b!2262373) (not b!2262350) b_and!177813 b_and!177811 (not b!2262346) (not b_next!67551) (not b!2262345) (not b!2262358) (not b!2262342) (not b!2262370) (not b_next!67559) tp_is_empty!10463 b_and!177809 b_and!177815 b_and!177817 (not b_next!67555) (not b!2262356) (not b!2262369) (not b!2262349) (not b!2262343) (not b!2262363) b_and!177821 b_and!177823 (not b!2262360) (not b!2262365) (not b!2262361) (not b!2262367) (not b_next!67549) (not b!2262374) (not b!2262353) (not b!2262366) (not b!2262355) b_and!177819 (not b_next!67557) (not b_next!67563) (not b_next!67561) (not b!2262348))
(check-sat (not b_next!67553) (not b_next!67555) b_and!177821 b_and!177823 (not b_next!67549) b_and!177813 b_and!177819 b_and!177811 (not b_next!67551) (not b_next!67559) b_and!177809 b_and!177815 b_and!177817 (not b_next!67557) (not b_next!67563) (not b_next!67561))
(get-model)

(declare-fun d!670214 () Bool)

(declare-fun res!967109 () Bool)

(declare-fun e!1448574 () Bool)

(assert (=> d!670214 (=> (not res!967109) (not e!1448574))))

(declare-fun isEmpty!15194 (List!26958) Bool)

(assert (=> d!670214 (= res!967109 (not (isEmpty!15194 (originalCharacters!5043 (h!32267 tokens!456)))))))

(assert (=> d!670214 (= (inv!36408 (h!32267 tokens!456)) e!1448574)))

(declare-fun b!2262390 () Bool)

(declare-fun res!967110 () Bool)

(assert (=> b!2262390 (=> (not res!967110) (not e!1448574))))

(declare-fun dynLambda!11655 (Int TokenValue!4435) BalanceConc!17116)

(assert (=> b!2262390 (= res!967110 (= (originalCharacters!5043 (h!32267 tokens!456)) (list!10369 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))))))

(declare-fun b!2262391 () Bool)

(assert (=> b!2262391 (= e!1448574 (= (size!21057 (h!32267 tokens!456)) (size!21056 (originalCharacters!5043 (h!32267 tokens!456)))))))

(assert (= (and d!670214 res!967109) b!2262390))

(assert (= (and b!2262390 res!967110) b!2262391))

(declare-fun b_lambda!72179 () Bool)

(assert (=> (not b_lambda!72179) (not b!2262390)))

(declare-fun t!201802 () Bool)

(declare-fun tb!134151 () Bool)

(assert (=> (and b!2262351 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201802) tb!134151))

(declare-fun b!2262396 () Bool)

(declare-fun e!1448577 () Bool)

(declare-fun tp!715571 () Bool)

(declare-fun inv!36411 (Conc!8694) Bool)

(assert (=> b!2262396 (= e!1448577 (and (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))) tp!715571))))

(declare-fun result!163560 () Bool)

(declare-fun inv!36412 (BalanceConc!17116) Bool)

(assert (=> tb!134151 (= result!163560 (and (inv!36412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))) e!1448577))))

(assert (= tb!134151 b!2262396))

(declare-fun m!2691879 () Bool)

(assert (=> b!2262396 m!2691879))

(declare-fun m!2691881 () Bool)

(assert (=> tb!134151 m!2691881))

(assert (=> b!2262390 t!201802))

(declare-fun b_and!177833 () Bool)

(assert (= b_and!177811 (and (=> t!201802 result!163560) b_and!177833)))

(declare-fun t!201804 () Bool)

(declare-fun tb!134153 () Bool)

(assert (=> (and b!2262364 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201804) tb!134153))

(declare-fun result!163564 () Bool)

(assert (= result!163564 result!163560))

(assert (=> b!2262390 t!201804))

(declare-fun b_and!177835 () Bool)

(assert (= b_and!177815 (and (=> t!201804 result!163564) b_and!177835)))

(declare-fun t!201806 () Bool)

(declare-fun tb!134155 () Bool)

(assert (=> (and b!2262371 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201806) tb!134155))

(declare-fun result!163566 () Bool)

(assert (= result!163566 result!163560))

(assert (=> b!2262390 t!201806))

(declare-fun b_and!177837 () Bool)

(assert (= b_and!177819 (and (=> t!201806 result!163566) b_and!177837)))

(declare-fun t!201808 () Bool)

(declare-fun tb!134157 () Bool)

(assert (=> (and b!2262372 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201808) tb!134157))

(declare-fun result!163568 () Bool)

(assert (= result!163568 result!163560))

(assert (=> b!2262390 t!201808))

(declare-fun b_and!177839 () Bool)

(assert (= b_and!177823 (and (=> t!201808 result!163568) b_and!177839)))

(declare-fun m!2691883 () Bool)

(assert (=> d!670214 m!2691883))

(declare-fun m!2691885 () Bool)

(assert (=> b!2262390 m!2691885))

(assert (=> b!2262390 m!2691885))

(declare-fun m!2691887 () Bool)

(assert (=> b!2262390 m!2691887))

(declare-fun m!2691889 () Bool)

(assert (=> b!2262391 m!2691889))

(assert (=> b!2262363 d!670214))

(declare-fun d!670216 () Bool)

(declare-fun lt!840527 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3581 (List!26959) (InoxSet Rule!8346))

(assert (=> d!670216 (= lt!840527 (select (content!3581 rules!1750) otherR!12))))

(declare-fun e!1448582 () Bool)

(assert (=> d!670216 (= lt!840527 e!1448582)))

(declare-fun res!967116 () Bool)

(assert (=> d!670216 (=> (not res!967116) (not e!1448582))))

(assert (=> d!670216 (= res!967116 ((_ is Cons!26865) rules!1750))))

(assert (=> d!670216 (= (contains!4629 rules!1750 otherR!12) lt!840527)))

(declare-fun b!2262401 () Bool)

(declare-fun e!1448583 () Bool)

(assert (=> b!2262401 (= e!1448582 e!1448583)))

(declare-fun res!967115 () Bool)

(assert (=> b!2262401 (=> res!967115 e!1448583)))

(assert (=> b!2262401 (= res!967115 (= (h!32266 rules!1750) otherR!12))))

(declare-fun b!2262402 () Bool)

(assert (=> b!2262402 (= e!1448583 (contains!4629 (t!201791 rules!1750) otherR!12))))

(assert (= (and d!670216 res!967116) b!2262401))

(assert (= (and b!2262401 (not res!967115)) b!2262402))

(declare-fun m!2691891 () Bool)

(assert (=> d!670216 m!2691891))

(declare-fun m!2691893 () Bool)

(assert (=> d!670216 m!2691893))

(declare-fun m!2691895 () Bool)

(assert (=> b!2262402 m!2691895))

(assert (=> b!2262353 d!670216))

(declare-fun d!670218 () Bool)

(declare-fun lt!840530 () Int)

(assert (=> d!670218 (>= lt!840530 0)))

(declare-fun e!1448589 () Int)

(assert (=> d!670218 (= lt!840530 e!1448589)))

(declare-fun c!359419 () Bool)

(assert (=> d!670218 (= c!359419 (and ((_ is Cons!26865) rules!1750) (= (h!32266 rules!1750) otherR!12)))))

(assert (=> d!670218 (contains!4629 rules!1750 otherR!12)))

(assert (=> d!670218 (= (getIndex!294 rules!1750 otherR!12) lt!840530)))

(declare-fun b!2262412 () Bool)

(declare-fun e!1448590 () Int)

(assert (=> b!2262412 (= e!1448589 e!1448590)))

(declare-fun c!359420 () Bool)

(assert (=> b!2262412 (= c!359420 (and ((_ is Cons!26865) rules!1750) (not (= (h!32266 rules!1750) otherR!12))))))

(declare-fun b!2262411 () Bool)

(assert (=> b!2262411 (= e!1448589 0)))

(declare-fun b!2262414 () Bool)

(assert (=> b!2262414 (= e!1448590 (- 1))))

(declare-fun b!2262413 () Bool)

(assert (=> b!2262413 (= e!1448590 (+ 1 (getIndex!294 (t!201791 rules!1750) otherR!12)))))

(assert (= (and d!670218 c!359419) b!2262411))

(assert (= (and d!670218 (not c!359419)) b!2262412))

(assert (= (and b!2262412 c!359420) b!2262413))

(assert (= (and b!2262412 (not c!359420)) b!2262414))

(assert (=> d!670218 m!2691849))

(declare-fun m!2691897 () Bool)

(assert (=> b!2262413 m!2691897))

(assert (=> b!2262342 d!670218))

(declare-fun d!670220 () Bool)

(declare-fun lt!840531 () Int)

(assert (=> d!670220 (>= lt!840531 0)))

(declare-fun e!1448591 () Int)

(assert (=> d!670220 (= lt!840531 e!1448591)))

(declare-fun c!359421 () Bool)

(assert (=> d!670220 (= c!359421 (and ((_ is Cons!26865) rules!1750) (= (h!32266 rules!1750) r!2363)))))

(assert (=> d!670220 (contains!4629 rules!1750 r!2363)))

(assert (=> d!670220 (= (getIndex!294 rules!1750 r!2363) lt!840531)))

(declare-fun b!2262416 () Bool)

(declare-fun e!1448592 () Int)

(assert (=> b!2262416 (= e!1448591 e!1448592)))

(declare-fun c!359422 () Bool)

(assert (=> b!2262416 (= c!359422 (and ((_ is Cons!26865) rules!1750) (not (= (h!32266 rules!1750) r!2363))))))

(declare-fun b!2262415 () Bool)

(assert (=> b!2262415 (= e!1448591 0)))

(declare-fun b!2262418 () Bool)

(assert (=> b!2262418 (= e!1448592 (- 1))))

(declare-fun b!2262417 () Bool)

(assert (=> b!2262417 (= e!1448592 (+ 1 (getIndex!294 (t!201791 rules!1750) r!2363)))))

(assert (= (and d!670220 c!359421) b!2262415))

(assert (= (and d!670220 (not c!359421)) b!2262416))

(assert (= (and b!2262416 c!359422) b!2262417))

(assert (= (and b!2262416 (not c!359422)) b!2262418))

(assert (=> d!670220 m!2691825))

(declare-fun m!2691899 () Bool)

(assert (=> b!2262417 m!2691899))

(assert (=> b!2262342 d!670220))

(declare-fun d!670222 () Bool)

(declare-fun res!967121 () Bool)

(declare-fun e!1448595 () Bool)

(assert (=> d!670222 (=> (not res!967121) (not e!1448595))))

(declare-fun validRegex!2480 (Regex!6621) Bool)

(assert (=> d!670222 (= res!967121 (validRegex!2480 (regex!4273 otherR!12)))))

(assert (=> d!670222 (= (ruleValid!1365 thiss!16613 otherR!12) e!1448595)))

(declare-fun b!2262423 () Bool)

(declare-fun res!967122 () Bool)

(assert (=> b!2262423 (=> (not res!967122) (not e!1448595))))

(declare-fun nullable!1822 (Regex!6621) Bool)

(assert (=> b!2262423 (= res!967122 (not (nullable!1822 (regex!4273 otherR!12))))))

(declare-fun b!2262424 () Bool)

(assert (=> b!2262424 (= e!1448595 (not (= (tag!4763 otherR!12) (String!29280 ""))))))

(assert (= (and d!670222 res!967121) b!2262423))

(assert (= (and b!2262423 res!967122) b!2262424))

(declare-fun m!2691901 () Bool)

(assert (=> d!670222 m!2691901))

(declare-fun m!2691903 () Bool)

(assert (=> b!2262423 m!2691903))

(assert (=> b!2262342 d!670222))

(declare-fun d!670224 () Bool)

(assert (=> d!670224 (ruleValid!1365 thiss!16613 otherR!12)))

(declare-fun lt!840534 () Unit!39800)

(declare-fun choose!13231 (LexerInterface!3870 Rule!8346 List!26959) Unit!39800)

(assert (=> d!670224 (= lt!840534 (choose!13231 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!670224 (contains!4629 rules!1750 otherR!12)))

(assert (=> d!670224 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!772 thiss!16613 otherR!12 rules!1750) lt!840534)))

(declare-fun bs!455552 () Bool)

(assert (= bs!455552 d!670224))

(assert (=> bs!455552 m!2691799))

(declare-fun m!2691905 () Bool)

(assert (=> bs!455552 m!2691905))

(assert (=> bs!455552 m!2691849))

(assert (=> b!2262342 d!670224))

(declare-fun d!670226 () Bool)

(assert (=> d!670226 (= (isEmpty!15192 tokens!456) ((_ is Nil!26866) tokens!456))))

(assert (=> b!2262374 d!670226))

(declare-fun d!670228 () Bool)

(declare-fun e!1448603 () Bool)

(assert (=> d!670228 e!1448603))

(declare-fun res!967134 () Bool)

(assert (=> d!670228 (=> res!967134 e!1448603)))

(declare-fun lt!840537 () Bool)

(assert (=> d!670228 (= res!967134 (not lt!840537))))

(declare-fun e!1448604 () Bool)

(assert (=> d!670228 (= lt!840537 e!1448604)))

(declare-fun res!967133 () Bool)

(assert (=> d!670228 (=> res!967133 e!1448604)))

(assert (=> d!670228 (= res!967133 ((_ is Nil!26864) lt!840524))))

(assert (=> d!670228 (= (isPrefix!2263 lt!840524 (++!6541 lt!840524 (_2!15741 lt!840516))) lt!840537)))

(declare-fun b!2262436 () Bool)

(assert (=> b!2262436 (= e!1448603 (>= (size!21056 (++!6541 lt!840524 (_2!15741 lt!840516))) (size!21056 lt!840524)))))

(declare-fun b!2262435 () Bool)

(declare-fun e!1448602 () Bool)

(declare-fun tail!3265 (List!26958) List!26958)

(assert (=> b!2262435 (= e!1448602 (isPrefix!2263 (tail!3265 lt!840524) (tail!3265 (++!6541 lt!840524 (_2!15741 lt!840516)))))))

(declare-fun b!2262434 () Bool)

(declare-fun res!967131 () Bool)

(assert (=> b!2262434 (=> (not res!967131) (not e!1448602))))

(declare-fun head!4858 (List!26958) C!13388)

(assert (=> b!2262434 (= res!967131 (= (head!4858 lt!840524) (head!4858 (++!6541 lt!840524 (_2!15741 lt!840516)))))))

(declare-fun b!2262433 () Bool)

(assert (=> b!2262433 (= e!1448604 e!1448602)))

(declare-fun res!967132 () Bool)

(assert (=> b!2262433 (=> (not res!967132) (not e!1448602))))

(assert (=> b!2262433 (= res!967132 (not ((_ is Nil!26864) (++!6541 lt!840524 (_2!15741 lt!840516)))))))

(assert (= (and d!670228 (not res!967133)) b!2262433))

(assert (= (and b!2262433 res!967132) b!2262434))

(assert (= (and b!2262434 res!967131) b!2262435))

(assert (= (and d!670228 (not res!967134)) b!2262436))

(assert (=> b!2262436 m!2691805))

(declare-fun m!2691907 () Bool)

(assert (=> b!2262436 m!2691907))

(assert (=> b!2262436 m!2691815))

(declare-fun m!2691909 () Bool)

(assert (=> b!2262435 m!2691909))

(assert (=> b!2262435 m!2691805))

(declare-fun m!2691911 () Bool)

(assert (=> b!2262435 m!2691911))

(assert (=> b!2262435 m!2691909))

(assert (=> b!2262435 m!2691911))

(declare-fun m!2691913 () Bool)

(assert (=> b!2262435 m!2691913))

(declare-fun m!2691915 () Bool)

(assert (=> b!2262434 m!2691915))

(assert (=> b!2262434 m!2691805))

(declare-fun m!2691917 () Bool)

(assert (=> b!2262434 m!2691917))

(assert (=> b!2262343 d!670228))

(declare-fun d!670230 () Bool)

(declare-fun lt!840540 () Int)

(assert (=> d!670230 (>= lt!840540 0)))

(declare-fun e!1448607 () Int)

(assert (=> d!670230 (= lt!840540 e!1448607)))

(declare-fun c!359425 () Bool)

(assert (=> d!670230 (= c!359425 ((_ is Nil!26864) input!1722))))

(assert (=> d!670230 (= (size!21056 input!1722) lt!840540)))

(declare-fun b!2262441 () Bool)

(assert (=> b!2262441 (= e!1448607 0)))

(declare-fun b!2262442 () Bool)

(assert (=> b!2262442 (= e!1448607 (+ 1 (size!21056 (t!201790 input!1722))))))

(assert (= (and d!670230 c!359425) b!2262441))

(assert (= (and d!670230 (not c!359425)) b!2262442))

(declare-fun m!2691919 () Bool)

(assert (=> b!2262442 m!2691919))

(assert (=> b!2262343 d!670230))

(declare-fun d!670232 () Bool)

(declare-fun list!10373 (Conc!8694) List!26958)

(assert (=> d!670232 (= (list!10369 (charsOf!2661 (h!32267 tokens!456))) (list!10373 (c!359412 (charsOf!2661 (h!32267 tokens!456)))))))

(declare-fun bs!455553 () Bool)

(assert (= bs!455553 d!670232))

(declare-fun m!2691921 () Bool)

(assert (=> bs!455553 m!2691921))

(assert (=> b!2262343 d!670232))

(declare-fun d!670234 () Bool)

(declare-fun lt!840543 () BalanceConc!17116)

(assert (=> d!670234 (= (list!10369 lt!840543) (originalCharacters!5043 (h!32267 tokens!456)))))

(assert (=> d!670234 (= lt!840543 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))))

(assert (=> d!670234 (= (charsOf!2661 (h!32267 tokens!456)) lt!840543)))

(declare-fun b_lambda!72181 () Bool)

(assert (=> (not b_lambda!72181) (not d!670234)))

(assert (=> d!670234 t!201802))

(declare-fun b_and!177841 () Bool)

(assert (= b_and!177833 (and (=> t!201802 result!163560) b_and!177841)))

(assert (=> d!670234 t!201804))

(declare-fun b_and!177843 () Bool)

(assert (= b_and!177835 (and (=> t!201804 result!163564) b_and!177843)))

(assert (=> d!670234 t!201806))

(declare-fun b_and!177845 () Bool)

(assert (= b_and!177837 (and (=> t!201806 result!163566) b_and!177845)))

(assert (=> d!670234 t!201808))

(declare-fun b_and!177847 () Bool)

(assert (= b_and!177839 (and (=> t!201808 result!163568) b_and!177847)))

(declare-fun m!2691923 () Bool)

(assert (=> d!670234 m!2691923))

(assert (=> d!670234 m!2691885))

(assert (=> b!2262343 d!670234))

(declare-fun b!2262451 () Bool)

(declare-fun e!1448613 () List!26958)

(assert (=> b!2262451 (= e!1448613 (_2!15741 lt!840516))))

(declare-fun lt!840546 () List!26958)

(declare-fun e!1448612 () Bool)

(declare-fun b!2262454 () Bool)

(assert (=> b!2262454 (= e!1448612 (or (not (= (_2!15741 lt!840516) Nil!26864)) (= lt!840546 lt!840524)))))

(declare-fun d!670236 () Bool)

(assert (=> d!670236 e!1448612))

(declare-fun res!967139 () Bool)

(assert (=> d!670236 (=> (not res!967139) (not e!1448612))))

(declare-fun content!3582 (List!26958) (InoxSet C!13388))

(assert (=> d!670236 (= res!967139 (= (content!3582 lt!840546) ((_ map or) (content!3582 lt!840524) (content!3582 (_2!15741 lt!840516)))))))

(assert (=> d!670236 (= lt!840546 e!1448613)))

(declare-fun c!359428 () Bool)

(assert (=> d!670236 (= c!359428 ((_ is Nil!26864) lt!840524))))

(assert (=> d!670236 (= (++!6541 lt!840524 (_2!15741 lt!840516)) lt!840546)))

(declare-fun b!2262452 () Bool)

(assert (=> b!2262452 (= e!1448613 (Cons!26864 (h!32265 lt!840524) (++!6541 (t!201790 lt!840524) (_2!15741 lt!840516))))))

(declare-fun b!2262453 () Bool)

(declare-fun res!967140 () Bool)

(assert (=> b!2262453 (=> (not res!967140) (not e!1448612))))

(assert (=> b!2262453 (= res!967140 (= (size!21056 lt!840546) (+ (size!21056 lt!840524) (size!21056 (_2!15741 lt!840516)))))))

(assert (= (and d!670236 c!359428) b!2262451))

(assert (= (and d!670236 (not c!359428)) b!2262452))

(assert (= (and d!670236 res!967139) b!2262453))

(assert (= (and b!2262453 res!967140) b!2262454))

(declare-fun m!2691925 () Bool)

(assert (=> d!670236 m!2691925))

(declare-fun m!2691927 () Bool)

(assert (=> d!670236 m!2691927))

(declare-fun m!2691929 () Bool)

(assert (=> d!670236 m!2691929))

(declare-fun m!2691931 () Bool)

(assert (=> b!2262452 m!2691931))

(declare-fun m!2691933 () Bool)

(assert (=> b!2262453 m!2691933))

(assert (=> b!2262453 m!2691815))

(declare-fun m!2691935 () Bool)

(assert (=> b!2262453 m!2691935))

(assert (=> b!2262343 d!670236))

(declare-fun d!670238 () Bool)

(declare-fun lt!840547 () Int)

(assert (=> d!670238 (>= lt!840547 0)))

(declare-fun e!1448614 () Int)

(assert (=> d!670238 (= lt!840547 e!1448614)))

(declare-fun c!359429 () Bool)

(assert (=> d!670238 (= c!359429 ((_ is Nil!26864) lt!840524))))

(assert (=> d!670238 (= (size!21056 lt!840524) lt!840547)))

(declare-fun b!2262455 () Bool)

(assert (=> b!2262455 (= e!1448614 0)))

(declare-fun b!2262456 () Bool)

(assert (=> b!2262456 (= e!1448614 (+ 1 (size!21056 (t!201790 lt!840524))))))

(assert (= (and d!670238 c!359429) b!2262455))

(assert (= (and d!670238 (not c!359429)) b!2262456))

(declare-fun m!2691937 () Bool)

(assert (=> b!2262456 m!2691937))

(assert (=> b!2262343 d!670238))

(declare-fun d!670240 () Bool)

(assert (=> d!670240 (= (get!8103 (maxPrefix!2144 thiss!16613 rules!1750 input!1722)) (v!30284 (maxPrefix!2144 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2262343 d!670240))

(declare-fun b!2262490 () Bool)

(declare-fun res!967168 () Bool)

(declare-fun e!1448632 () Bool)

(assert (=> b!2262490 (=> (not res!967168) (not e!1448632))))

(declare-fun lt!840562 () Option!5249)

(assert (=> b!2262490 (= res!967168 (< (size!21056 (_2!15741 (get!8103 lt!840562))) (size!21056 input!1722)))))

(declare-fun b!2262491 () Bool)

(declare-fun e!1448631 () Option!5249)

(declare-fun call!135885 () Option!5249)

(assert (=> b!2262491 (= e!1448631 call!135885)))

(declare-fun b!2262492 () Bool)

(declare-fun e!1448630 () Bool)

(assert (=> b!2262492 (= e!1448630 e!1448632)))

(declare-fun res!967165 () Bool)

(assert (=> b!2262492 (=> (not res!967165) (not e!1448632))))

(declare-fun isDefined!4195 (Option!5249) Bool)

(assert (=> b!2262492 (= res!967165 (isDefined!4195 lt!840562))))

(declare-fun b!2262493 () Bool)

(assert (=> b!2262493 (= e!1448632 (contains!4629 rules!1750 (rule!6585 (_1!15741 (get!8103 lt!840562)))))))

(declare-fun b!2262494 () Bool)

(declare-fun res!967170 () Bool)

(assert (=> b!2262494 (=> (not res!967170) (not e!1448632))))

(assert (=> b!2262494 (= res!967170 (matchR!2882 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))) (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))))))

(declare-fun b!2262495 () Bool)

(declare-fun res!967166 () Bool)

(assert (=> b!2262495 (=> (not res!967166) (not e!1448632))))

(assert (=> b!2262495 (= res!967166 (= (++!6541 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))) (_2!15741 (get!8103 lt!840562))) input!1722))))

(declare-fun b!2262496 () Bool)

(declare-fun lt!840563 () Option!5249)

(declare-fun lt!840564 () Option!5249)

(assert (=> b!2262496 (= e!1448631 (ite (and ((_ is None!5248) lt!840563) ((_ is None!5248) lt!840564)) None!5248 (ite ((_ is None!5248) lt!840564) lt!840563 (ite ((_ is None!5248) lt!840563) lt!840564 (ite (>= (size!21057 (_1!15741 (v!30284 lt!840563))) (size!21057 (_1!15741 (v!30284 lt!840564)))) lt!840563 lt!840564)))))))

(assert (=> b!2262496 (= lt!840563 call!135885)))

(assert (=> b!2262496 (= lt!840564 (maxPrefix!2144 thiss!16613 (t!201791 rules!1750) input!1722))))

(declare-fun b!2262497 () Bool)

(declare-fun res!967164 () Bool)

(assert (=> b!2262497 (=> (not res!967164) (not e!1448632))))

(declare-fun apply!6578 (TokenValueInjection!8410 BalanceConc!17116) TokenValue!4435)

(assert (=> b!2262497 (= res!967164 (= (value!135600 (_1!15741 (get!8103 lt!840562))) (apply!6578 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))) (seqFromList!2977 (originalCharacters!5043 (_1!15741 (get!8103 lt!840562)))))))))

(declare-fun bm!135880 () Bool)

(declare-fun maxPrefixOneRule!1341 (LexerInterface!3870 Rule!8346 List!26958) Option!5249)

(assert (=> bm!135880 (= call!135885 (maxPrefixOneRule!1341 thiss!16613 (h!32266 rules!1750) input!1722))))

(declare-fun d!670242 () Bool)

(assert (=> d!670242 e!1448630))

(declare-fun res!967167 () Bool)

(assert (=> d!670242 (=> res!967167 e!1448630)))

(declare-fun isEmpty!15196 (Option!5249) Bool)

(assert (=> d!670242 (= res!967167 (isEmpty!15196 lt!840562))))

(assert (=> d!670242 (= lt!840562 e!1448631)))

(declare-fun c!359435 () Bool)

(assert (=> d!670242 (= c!359435 (and ((_ is Cons!26865) rules!1750) ((_ is Nil!26865) (t!201791 rules!1750))))))

(declare-fun lt!840565 () Unit!39800)

(declare-fun lt!840561 () Unit!39800)

(assert (=> d!670242 (= lt!840565 lt!840561)))

(assert (=> d!670242 (isPrefix!2263 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1450 (List!26958 List!26958) Unit!39800)

(assert (=> d!670242 (= lt!840561 (lemmaIsPrefixRefl!1450 input!1722 input!1722))))

(declare-fun rulesValidInductive!1492 (LexerInterface!3870 List!26959) Bool)

(assert (=> d!670242 (rulesValidInductive!1492 thiss!16613 rules!1750)))

(assert (=> d!670242 (= (maxPrefix!2144 thiss!16613 rules!1750 input!1722) lt!840562)))

(declare-fun b!2262498 () Bool)

(declare-fun res!967169 () Bool)

(assert (=> b!2262498 (=> (not res!967169) (not e!1448632))))

(assert (=> b!2262498 (= res!967169 (= (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))) (originalCharacters!5043 (_1!15741 (get!8103 lt!840562)))))))

(assert (= (and d!670242 c!359435) b!2262491))

(assert (= (and d!670242 (not c!359435)) b!2262496))

(assert (= (or b!2262491 b!2262496) bm!135880))

(assert (= (and d!670242 (not res!967167)) b!2262492))

(assert (= (and b!2262492 res!967165) b!2262498))

(assert (= (and b!2262498 res!967169) b!2262490))

(assert (= (and b!2262490 res!967168) b!2262495))

(assert (= (and b!2262495 res!967166) b!2262497))

(assert (= (and b!2262497 res!967164) b!2262494))

(assert (= (and b!2262494 res!967170) b!2262493))

(declare-fun m!2691957 () Bool)

(assert (=> b!2262497 m!2691957))

(declare-fun m!2691959 () Bool)

(assert (=> b!2262497 m!2691959))

(assert (=> b!2262497 m!2691959))

(declare-fun m!2691961 () Bool)

(assert (=> b!2262497 m!2691961))

(declare-fun m!2691963 () Bool)

(assert (=> bm!135880 m!2691963))

(assert (=> b!2262493 m!2691957))

(declare-fun m!2691965 () Bool)

(assert (=> b!2262493 m!2691965))

(assert (=> b!2262494 m!2691957))

(declare-fun m!2691967 () Bool)

(assert (=> b!2262494 m!2691967))

(assert (=> b!2262494 m!2691967))

(declare-fun m!2691969 () Bool)

(assert (=> b!2262494 m!2691969))

(assert (=> b!2262494 m!2691969))

(declare-fun m!2691973 () Bool)

(assert (=> b!2262494 m!2691973))

(declare-fun m!2691975 () Bool)

(assert (=> d!670242 m!2691975))

(declare-fun m!2691977 () Bool)

(assert (=> d!670242 m!2691977))

(declare-fun m!2691979 () Bool)

(assert (=> d!670242 m!2691979))

(declare-fun m!2691981 () Bool)

(assert (=> d!670242 m!2691981))

(assert (=> b!2262490 m!2691957))

(declare-fun m!2691983 () Bool)

(assert (=> b!2262490 m!2691983))

(assert (=> b!2262490 m!2691809))

(assert (=> b!2262498 m!2691957))

(assert (=> b!2262498 m!2691967))

(assert (=> b!2262498 m!2691967))

(assert (=> b!2262498 m!2691969))

(declare-fun m!2691985 () Bool)

(assert (=> b!2262492 m!2691985))

(assert (=> b!2262495 m!2691957))

(assert (=> b!2262495 m!2691967))

(assert (=> b!2262495 m!2691967))

(assert (=> b!2262495 m!2691969))

(assert (=> b!2262495 m!2691969))

(declare-fun m!2691987 () Bool)

(assert (=> b!2262495 m!2691987))

(declare-fun m!2691989 () Bool)

(assert (=> b!2262496 m!2691989))

(assert (=> b!2262343 d!670242))

(declare-fun d!670248 () Bool)

(assert (=> d!670248 (isPrefix!2263 lt!840524 (++!6541 lt!840524 (_2!15741 lt!840516)))))

(declare-fun lt!840568 () Unit!39800)

(declare-fun choose!13233 (List!26958 List!26958) Unit!39800)

(assert (=> d!670248 (= lt!840568 (choose!13233 lt!840524 (_2!15741 lt!840516)))))

(assert (=> d!670248 (= (lemmaConcatTwoListThenFirstIsPrefix!1488 lt!840524 (_2!15741 lt!840516)) lt!840568)))

(declare-fun bs!455555 () Bool)

(assert (= bs!455555 d!670248))

(assert (=> bs!455555 m!2691805))

(assert (=> bs!455555 m!2691805))

(assert (=> bs!455555 m!2691807))

(declare-fun m!2691991 () Bool)

(assert (=> bs!455555 m!2691991))

(assert (=> b!2262343 d!670248))

(declare-fun b!2262569 () Bool)

(declare-fun res!967213 () Bool)

(declare-fun e!1448672 () Bool)

(assert (=> b!2262569 (=> (not res!967213) (not e!1448672))))

(assert (=> b!2262569 (= res!967213 (isEmpty!15194 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(declare-fun b!2262570 () Bool)

(declare-fun e!1448668 () Bool)

(declare-fun e!1448669 () Bool)

(assert (=> b!2262570 (= e!1448668 e!1448669)))

(declare-fun c!359451 () Bool)

(assert (=> b!2262570 (= c!359451 ((_ is EmptyLang!6621) (regex!4273 r!2363)))))

(declare-fun b!2262571 () Bool)

(declare-fun e!1448670 () Bool)

(declare-fun e!1448671 () Bool)

(assert (=> b!2262571 (= e!1448670 e!1448671)))

(declare-fun res!967218 () Bool)

(assert (=> b!2262571 (=> res!967218 e!1448671)))

(declare-fun call!135891 () Bool)

(assert (=> b!2262571 (= res!967218 call!135891)))

(declare-fun b!2262572 () Bool)

(declare-fun e!1448673 () Bool)

(declare-fun derivativeStep!1484 (Regex!6621 C!13388) Regex!6621)

(assert (=> b!2262572 (= e!1448673 (matchR!2882 (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(declare-fun b!2262573 () Bool)

(declare-fun e!1448674 () Bool)

(assert (=> b!2262573 (= e!1448674 e!1448670)))

(declare-fun res!967211 () Bool)

(assert (=> b!2262573 (=> (not res!967211) (not e!1448670))))

(declare-fun lt!840574 () Bool)

(assert (=> b!2262573 (= res!967211 (not lt!840574))))

(declare-fun b!2262574 () Bool)

(assert (=> b!2262574 (= e!1448671 (not (= (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))) (c!359413 (regex!4273 r!2363)))))))

(declare-fun b!2262575 () Bool)

(assert (=> b!2262575 (= e!1448669 (not lt!840574))))

(declare-fun d!670250 () Bool)

(assert (=> d!670250 e!1448668))

(declare-fun c!359453 () Bool)

(assert (=> d!670250 (= c!359453 ((_ is EmptyExpr!6621) (regex!4273 r!2363)))))

(assert (=> d!670250 (= lt!840574 e!1448673)))

(declare-fun c!359452 () Bool)

(assert (=> d!670250 (= c!359452 (isEmpty!15194 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))

(assert (=> d!670250 (validRegex!2480 (regex!4273 r!2363))))

(assert (=> d!670250 (= (matchR!2882 (regex!4273 r!2363) (list!10369 (charsOf!2661 (head!4856 tokens!456)))) lt!840574)))

(declare-fun b!2262576 () Bool)

(assert (=> b!2262576 (= e!1448672 (= (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))) (c!359413 (regex!4273 r!2363))))))

(declare-fun b!2262577 () Bool)

(assert (=> b!2262577 (= e!1448668 (= lt!840574 call!135891))))

(declare-fun b!2262578 () Bool)

(declare-fun res!967214 () Bool)

(assert (=> b!2262578 (=> (not res!967214) (not e!1448672))))

(assert (=> b!2262578 (= res!967214 (not call!135891))))

(declare-fun b!2262579 () Bool)

(declare-fun res!967216 () Bool)

(assert (=> b!2262579 (=> res!967216 e!1448671)))

(assert (=> b!2262579 (= res!967216 (not (isEmpty!15194 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))

(declare-fun b!2262580 () Bool)

(declare-fun res!967212 () Bool)

(assert (=> b!2262580 (=> res!967212 e!1448674)))

(assert (=> b!2262580 (= res!967212 (not ((_ is ElementMatch!6621) (regex!4273 r!2363))))))

(assert (=> b!2262580 (= e!1448669 e!1448674)))

(declare-fun bm!135886 () Bool)

(assert (=> bm!135886 (= call!135891 (isEmpty!15194 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))

(declare-fun b!2262581 () Bool)

(assert (=> b!2262581 (= e!1448673 (nullable!1822 (regex!4273 r!2363)))))

(declare-fun b!2262582 () Bool)

(declare-fun res!967217 () Bool)

(assert (=> b!2262582 (=> res!967217 e!1448674)))

(assert (=> b!2262582 (= res!967217 e!1448672)))

(declare-fun res!967215 () Bool)

(assert (=> b!2262582 (=> (not res!967215) (not e!1448672))))

(assert (=> b!2262582 (= res!967215 lt!840574)))

(assert (= (and d!670250 c!359452) b!2262581))

(assert (= (and d!670250 (not c!359452)) b!2262572))

(assert (= (and d!670250 c!359453) b!2262577))

(assert (= (and d!670250 (not c!359453)) b!2262570))

(assert (= (and b!2262570 c!359451) b!2262575))

(assert (= (and b!2262570 (not c!359451)) b!2262580))

(assert (= (and b!2262580 (not res!967212)) b!2262582))

(assert (= (and b!2262582 res!967215) b!2262578))

(assert (= (and b!2262578 res!967214) b!2262569))

(assert (= (and b!2262569 res!967213) b!2262576))

(assert (= (and b!2262582 (not res!967217)) b!2262573))

(assert (= (and b!2262573 res!967211) b!2262571))

(assert (= (and b!2262571 (not res!967218)) b!2262579))

(assert (= (and b!2262579 (not res!967216)) b!2262574))

(assert (= (or b!2262577 b!2262571 b!2262578) bm!135886))

(assert (=> bm!135886 m!2691851))

(declare-fun m!2692011 () Bool)

(assert (=> bm!135886 m!2692011))

(assert (=> b!2262572 m!2691851))

(declare-fun m!2692013 () Bool)

(assert (=> b!2262572 m!2692013))

(assert (=> b!2262572 m!2692013))

(declare-fun m!2692015 () Bool)

(assert (=> b!2262572 m!2692015))

(assert (=> b!2262572 m!2691851))

(declare-fun m!2692017 () Bool)

(assert (=> b!2262572 m!2692017))

(assert (=> b!2262572 m!2692015))

(assert (=> b!2262572 m!2692017))

(declare-fun m!2692019 () Bool)

(assert (=> b!2262572 m!2692019))

(assert (=> b!2262574 m!2691851))

(assert (=> b!2262574 m!2692013))

(declare-fun m!2692021 () Bool)

(assert (=> b!2262581 m!2692021))

(assert (=> b!2262576 m!2691851))

(assert (=> b!2262576 m!2692013))

(assert (=> d!670250 m!2691851))

(assert (=> d!670250 m!2692011))

(declare-fun m!2692023 () Bool)

(assert (=> d!670250 m!2692023))

(assert (=> b!2262579 m!2691851))

(assert (=> b!2262579 m!2692017))

(assert (=> b!2262579 m!2692017))

(declare-fun m!2692025 () Bool)

(assert (=> b!2262579 m!2692025))

(assert (=> b!2262569 m!2691851))

(assert (=> b!2262569 m!2692017))

(assert (=> b!2262569 m!2692017))

(assert (=> b!2262569 m!2692025))

(assert (=> b!2262349 d!670250))

(declare-fun d!670256 () Bool)

(assert (=> d!670256 (= (list!10369 (charsOf!2661 (head!4856 tokens!456))) (list!10373 (c!359412 (charsOf!2661 (head!4856 tokens!456)))))))

(declare-fun bs!455557 () Bool)

(assert (= bs!455557 d!670256))

(declare-fun m!2692027 () Bool)

(assert (=> bs!455557 m!2692027))

(assert (=> b!2262349 d!670256))

(declare-fun d!670258 () Bool)

(declare-fun lt!840578 () BalanceConc!17116)

(assert (=> d!670258 (= (list!10369 lt!840578) (originalCharacters!5043 (head!4856 tokens!456)))))

(assert (=> d!670258 (= lt!840578 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))))

(assert (=> d!670258 (= (charsOf!2661 (head!4856 tokens!456)) lt!840578)))

(declare-fun b_lambda!72185 () Bool)

(assert (=> (not b_lambda!72185) (not d!670258)))

(declare-fun tb!134167 () Bool)

(declare-fun t!201818 () Bool)

(assert (=> (and b!2262351 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201818) tb!134167))

(declare-fun b!2262584 () Bool)

(declare-fun e!1448676 () Bool)

(declare-fun tp!715573 () Bool)

(assert (=> b!2262584 (= e!1448676 (and (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))) tp!715573))))

(declare-fun result!163578 () Bool)

(assert (=> tb!134167 (= result!163578 (and (inv!36412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))) e!1448676))))

(assert (= tb!134167 b!2262584))

(declare-fun m!2692037 () Bool)

(assert (=> b!2262584 m!2692037))

(declare-fun m!2692039 () Bool)

(assert (=> tb!134167 m!2692039))

(assert (=> d!670258 t!201818))

(declare-fun b_and!177857 () Bool)

(assert (= b_and!177841 (and (=> t!201818 result!163578) b_and!177857)))

(declare-fun tb!134169 () Bool)

(declare-fun t!201820 () Bool)

(assert (=> (and b!2262364 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201820) tb!134169))

(declare-fun result!163580 () Bool)

(assert (= result!163580 result!163578))

(assert (=> d!670258 t!201820))

(declare-fun b_and!177859 () Bool)

(assert (= b_and!177843 (and (=> t!201820 result!163580) b_and!177859)))

(declare-fun t!201822 () Bool)

(declare-fun tb!134171 () Bool)

(assert (=> (and b!2262371 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201822) tb!134171))

(declare-fun result!163582 () Bool)

(assert (= result!163582 result!163578))

(assert (=> d!670258 t!201822))

(declare-fun b_and!177861 () Bool)

(assert (= b_and!177845 (and (=> t!201822 result!163582) b_and!177861)))

(declare-fun t!201824 () Bool)

(declare-fun tb!134173 () Bool)

(assert (=> (and b!2262372 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201824) tb!134173))

(declare-fun result!163584 () Bool)

(assert (= result!163584 result!163578))

(assert (=> d!670258 t!201824))

(declare-fun b_and!177863 () Bool)

(assert (= b_and!177847 (and (=> t!201824 result!163584) b_and!177863)))

(declare-fun m!2692041 () Bool)

(assert (=> d!670258 m!2692041))

(declare-fun m!2692043 () Bool)

(assert (=> d!670258 m!2692043))

(assert (=> b!2262349 d!670258))

(declare-fun d!670264 () Bool)

(assert (=> d!670264 (= (head!4856 tokens!456) (h!32267 tokens!456))))

(assert (=> b!2262349 d!670264))

(declare-fun d!670266 () Bool)

(assert (=> d!670266 (= (inv!36404 (tag!4763 (rule!6585 (h!32267 tokens!456)))) (= (mod (str.len (value!135599 (tag!4763 (rule!6585 (h!32267 tokens!456))))) 2) 0))))

(assert (=> b!2262370 d!670266))

(declare-fun d!670268 () Bool)

(declare-fun res!967221 () Bool)

(declare-fun e!1448679 () Bool)

(assert (=> d!670268 (=> (not res!967221) (not e!1448679))))

(declare-fun semiInverseModEq!1724 (Int Int) Bool)

(assert (=> d!670268 (= res!967221 (semiInverseModEq!1724 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))))))

(assert (=> d!670268 (= (inv!36407 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) e!1448679)))

(declare-fun b!2262587 () Bool)

(declare-fun equivClasses!1643 (Int Int) Bool)

(assert (=> b!2262587 (= e!1448679 (equivClasses!1643 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))))))

(assert (= (and d!670268 res!967221) b!2262587))

(declare-fun m!2692047 () Bool)

(assert (=> d!670268 m!2692047))

(declare-fun m!2692049 () Bool)

(assert (=> b!2262587 m!2692049))

(assert (=> b!2262370 d!670268))

(declare-fun d!670274 () Bool)

(assert (=> d!670274 (= (isEmpty!15191 rules!1750) ((_ is Nil!26865) rules!1750))))

(assert (=> b!2262360 d!670274))

(declare-fun b!2262613 () Bool)

(declare-fun res!967227 () Bool)

(declare-fun e!1448695 () Bool)

(assert (=> b!2262613 (=> res!967227 e!1448695)))

(assert (=> b!2262613 (= res!967227 (not ((_ is IntegerValue!13307) (value!135600 (h!32267 tokens!456)))))))

(declare-fun e!1448697 () Bool)

(assert (=> b!2262613 (= e!1448697 e!1448695)))

(declare-fun b!2262614 () Bool)

(declare-fun e!1448696 () Bool)

(assert (=> b!2262614 (= e!1448696 e!1448697)))

(declare-fun c!359465 () Bool)

(assert (=> b!2262614 (= c!359465 ((_ is IntegerValue!13306) (value!135600 (h!32267 tokens!456))))))

(declare-fun b!2262615 () Bool)

(declare-fun inv!17 (TokenValue!4435) Bool)

(assert (=> b!2262615 (= e!1448697 (inv!17 (value!135600 (h!32267 tokens!456))))))

(declare-fun d!670276 () Bool)

(declare-fun c!359464 () Bool)

(assert (=> d!670276 (= c!359464 ((_ is IntegerValue!13305) (value!135600 (h!32267 tokens!456))))))

(assert (=> d!670276 (= (inv!21 (value!135600 (h!32267 tokens!456))) e!1448696)))

(declare-fun b!2262616 () Bool)

(declare-fun inv!16 (TokenValue!4435) Bool)

(assert (=> b!2262616 (= e!1448696 (inv!16 (value!135600 (h!32267 tokens!456))))))

(declare-fun b!2262617 () Bool)

(declare-fun inv!15 (TokenValue!4435) Bool)

(assert (=> b!2262617 (= e!1448695 (inv!15 (value!135600 (h!32267 tokens!456))))))

(assert (= (and d!670276 c!359464) b!2262616))

(assert (= (and d!670276 (not c!359464)) b!2262614))

(assert (= (and b!2262614 c!359465) b!2262615))

(assert (= (and b!2262614 (not c!359465)) b!2262613))

(assert (= (and b!2262613 (not res!967227)) b!2262617))

(declare-fun m!2692057 () Bool)

(assert (=> b!2262615 m!2692057))

(declare-fun m!2692059 () Bool)

(assert (=> b!2262616 m!2692059))

(declare-fun m!2692061 () Bool)

(assert (=> b!2262617 m!2692061))

(assert (=> b!2262361 d!670276))

(declare-fun d!670282 () Bool)

(assert (=> d!670282 (= (inv!36404 (tag!4763 (h!32266 rules!1750))) (= (mod (str.len (value!135599 (tag!4763 (h!32266 rules!1750)))) 2) 0))))

(assert (=> b!2262347 d!670282))

(declare-fun d!670284 () Bool)

(declare-fun res!967230 () Bool)

(declare-fun e!1448700 () Bool)

(assert (=> d!670284 (=> (not res!967230) (not e!1448700))))

(assert (=> d!670284 (= res!967230 (semiInverseModEq!1724 (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 (h!32266 rules!1750)))))))

(assert (=> d!670284 (= (inv!36407 (transformation!4273 (h!32266 rules!1750))) e!1448700)))

(declare-fun b!2262620 () Bool)

(assert (=> b!2262620 (= e!1448700 (equivClasses!1643 (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 (h!32266 rules!1750)))))))

(assert (= (and d!670284 res!967230) b!2262620))

(declare-fun m!2692063 () Bool)

(assert (=> d!670284 m!2692063))

(declare-fun m!2692065 () Bool)

(assert (=> b!2262620 m!2692065))

(assert (=> b!2262347 d!670284))

(declare-fun d!670286 () Bool)

(declare-fun e!1448702 () Bool)

(assert (=> d!670286 e!1448702))

(declare-fun res!967234 () Bool)

(assert (=> d!670286 (=> res!967234 e!1448702)))

(declare-fun lt!840582 () Bool)

(assert (=> d!670286 (= res!967234 (not lt!840582))))

(declare-fun e!1448703 () Bool)

(assert (=> d!670286 (= lt!840582 e!1448703)))

(declare-fun res!967233 () Bool)

(assert (=> d!670286 (=> res!967233 e!1448703)))

(assert (=> d!670286 (= res!967233 ((_ is Nil!26864) otherP!12))))

(assert (=> d!670286 (= (isPrefix!2263 otherP!12 input!1722) lt!840582)))

(declare-fun b!2262624 () Bool)

(assert (=> b!2262624 (= e!1448702 (>= (size!21056 input!1722) (size!21056 otherP!12)))))

(declare-fun b!2262623 () Bool)

(declare-fun e!1448701 () Bool)

(assert (=> b!2262623 (= e!1448701 (isPrefix!2263 (tail!3265 otherP!12) (tail!3265 input!1722)))))

(declare-fun b!2262622 () Bool)

(declare-fun res!967231 () Bool)

(assert (=> b!2262622 (=> (not res!967231) (not e!1448701))))

(assert (=> b!2262622 (= res!967231 (= (head!4858 otherP!12) (head!4858 input!1722)))))

(declare-fun b!2262621 () Bool)

(assert (=> b!2262621 (= e!1448703 e!1448701)))

(declare-fun res!967232 () Bool)

(assert (=> b!2262621 (=> (not res!967232) (not e!1448701))))

(assert (=> b!2262621 (= res!967232 (not ((_ is Nil!26864) input!1722)))))

(assert (= (and d!670286 (not res!967233)) b!2262621))

(assert (= (and b!2262621 res!967232) b!2262622))

(assert (= (and b!2262622 res!967231) b!2262623))

(assert (= (and d!670286 (not res!967234)) b!2262624))

(assert (=> b!2262624 m!2691809))

(assert (=> b!2262624 m!2691793))

(declare-fun m!2692067 () Bool)

(assert (=> b!2262623 m!2692067))

(declare-fun m!2692069 () Bool)

(assert (=> b!2262623 m!2692069))

(assert (=> b!2262623 m!2692067))

(assert (=> b!2262623 m!2692069))

(declare-fun m!2692071 () Bool)

(assert (=> b!2262623 m!2692071))

(declare-fun m!2692073 () Bool)

(assert (=> b!2262622 m!2692073))

(declare-fun m!2692075 () Bool)

(assert (=> b!2262622 m!2692075))

(assert (=> b!2262368 d!670286))

(declare-fun d!670288 () Bool)

(declare-fun e!1448706 () Bool)

(assert (=> d!670288 e!1448706))

(declare-fun res!967239 () Bool)

(assert (=> d!670288 (=> res!967239 e!1448706)))

(declare-fun lt!840583 () Bool)

(assert (=> d!670288 (= res!967239 (not lt!840583))))

(declare-fun e!1448707 () Bool)

(assert (=> d!670288 (= lt!840583 e!1448707)))

(declare-fun res!967238 () Bool)

(assert (=> d!670288 (=> res!967238 e!1448707)))

(assert (=> d!670288 (= res!967238 ((_ is Nil!26864) lt!840524))))

(assert (=> d!670288 (= (isPrefix!2263 lt!840524 input!1722) lt!840583)))

(declare-fun b!2262629 () Bool)

(assert (=> b!2262629 (= e!1448706 (>= (size!21056 input!1722) (size!21056 lt!840524)))))

(declare-fun b!2262628 () Bool)

(declare-fun e!1448705 () Bool)

(assert (=> b!2262628 (= e!1448705 (isPrefix!2263 (tail!3265 lt!840524) (tail!3265 input!1722)))))

(declare-fun b!2262627 () Bool)

(declare-fun res!967236 () Bool)

(assert (=> b!2262627 (=> (not res!967236) (not e!1448705))))

(assert (=> b!2262627 (= res!967236 (= (head!4858 lt!840524) (head!4858 input!1722)))))

(declare-fun b!2262626 () Bool)

(assert (=> b!2262626 (= e!1448707 e!1448705)))

(declare-fun res!967237 () Bool)

(assert (=> b!2262626 (=> (not res!967237) (not e!1448705))))

(assert (=> b!2262626 (= res!967237 (not ((_ is Nil!26864) input!1722)))))

(assert (= (and d!670288 (not res!967238)) b!2262626))

(assert (= (and b!2262626 res!967237) b!2262627))

(assert (= (and b!2262627 res!967236) b!2262628))

(assert (= (and d!670288 (not res!967239)) b!2262629))

(assert (=> b!2262629 m!2691809))

(assert (=> b!2262629 m!2691815))

(assert (=> b!2262628 m!2691909))

(assert (=> b!2262628 m!2692069))

(assert (=> b!2262628 m!2691909))

(assert (=> b!2262628 m!2692069))

(declare-fun m!2692081 () Bool)

(assert (=> b!2262628 m!2692081))

(assert (=> b!2262627 m!2691915))

(assert (=> b!2262627 m!2692075))

(assert (=> b!2262369 d!670288))

(declare-fun d!670292 () Bool)

(assert (=> d!670292 (= r!2363 otherR!12)))

(declare-fun lt!840586 () Unit!39800)

(declare-fun choose!13235 (List!26959 Rule!8346 Rule!8346) Unit!39800)

(assert (=> d!670292 (= lt!840586 (choose!13235 rules!1750 r!2363 otherR!12))))

(assert (=> d!670292 (contains!4629 rules!1750 r!2363)))

(assert (=> d!670292 (= (lemmaSameIndexThenSameElement!140 rules!1750 r!2363 otherR!12) lt!840586)))

(declare-fun bs!455559 () Bool)

(assert (= bs!455559 d!670292))

(declare-fun m!2692083 () Bool)

(assert (=> bs!455559 m!2692083))

(assert (=> bs!455559 m!2691825))

(assert (=> b!2262358 d!670292))

(declare-fun d!670294 () Bool)

(declare-fun res!967254 () Bool)

(declare-fun e!1448719 () Bool)

(assert (=> d!670294 (=> (not res!967254) (not e!1448719))))

(declare-fun rulesValid!1567 (LexerInterface!3870 List!26959) Bool)

(assert (=> d!670294 (= res!967254 (rulesValid!1567 thiss!16613 rules!1750))))

(assert (=> d!670294 (= (rulesInvariant!3372 thiss!16613 rules!1750) e!1448719)))

(declare-fun b!2262644 () Bool)

(declare-datatypes ((List!26961 0))(
  ( (Nil!26867) (Cons!26867 (h!32268 String!29279) (t!201841 List!26961)) )
))
(declare-fun noDuplicateTag!1565 (LexerInterface!3870 List!26959 List!26961) Bool)

(assert (=> b!2262644 (= e!1448719 (noDuplicateTag!1565 thiss!16613 rules!1750 Nil!26867))))

(assert (= (and d!670294 res!967254) b!2262644))

(declare-fun m!2692095 () Bool)

(assert (=> d!670294 m!2692095))

(declare-fun m!2692097 () Bool)

(assert (=> b!2262644 m!2692097))

(assert (=> b!2262359 d!670294))

(declare-fun d!670298 () Bool)

(declare-fun res!967255 () Bool)

(declare-fun e!1448720 () Bool)

(assert (=> d!670298 (=> (not res!967255) (not e!1448720))))

(assert (=> d!670298 (= res!967255 (validRegex!2480 (regex!4273 r!2363)))))

(assert (=> d!670298 (= (ruleValid!1365 thiss!16613 r!2363) e!1448720)))

(declare-fun b!2262645 () Bool)

(declare-fun res!967256 () Bool)

(assert (=> b!2262645 (=> (not res!967256) (not e!1448720))))

(assert (=> b!2262645 (= res!967256 (not (nullable!1822 (regex!4273 r!2363))))))

(declare-fun b!2262646 () Bool)

(assert (=> b!2262646 (= e!1448720 (not (= (tag!4763 r!2363) (String!29280 ""))))))

(assert (= (and d!670298 res!967255) b!2262645))

(assert (= (and b!2262645 res!967256) b!2262646))

(assert (=> d!670298 m!2692023))

(assert (=> b!2262645 m!2692021))

(assert (=> b!2262348 d!670298))

(declare-fun d!670300 () Bool)

(assert (=> d!670300 (ruleValid!1365 thiss!16613 r!2363)))

(declare-fun lt!840590 () Unit!39800)

(assert (=> d!670300 (= lt!840590 (choose!13231 thiss!16613 r!2363 rules!1750))))

(assert (=> d!670300 (contains!4629 rules!1750 r!2363)))

(assert (=> d!670300 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!772 thiss!16613 r!2363 rules!1750) lt!840590)))

(declare-fun bs!455560 () Bool)

(assert (= bs!455560 d!670300))

(assert (=> bs!455560 m!2691837))

(declare-fun m!2692099 () Bool)

(assert (=> bs!455560 m!2692099))

(assert (=> bs!455560 m!2691825))

(assert (=> b!2262348 d!670300))

(declare-fun d!670302 () Bool)

(declare-fun lt!840591 () Bool)

(assert (=> d!670302 (= lt!840591 (select (content!3581 rules!1750) r!2363))))

(declare-fun e!1448721 () Bool)

(assert (=> d!670302 (= lt!840591 e!1448721)))

(declare-fun res!967258 () Bool)

(assert (=> d!670302 (=> (not res!967258) (not e!1448721))))

(assert (=> d!670302 (= res!967258 ((_ is Cons!26865) rules!1750))))

(assert (=> d!670302 (= (contains!4629 rules!1750 r!2363) lt!840591)))

(declare-fun b!2262647 () Bool)

(declare-fun e!1448722 () Bool)

(assert (=> b!2262647 (= e!1448721 e!1448722)))

(declare-fun res!967257 () Bool)

(assert (=> b!2262647 (=> res!967257 e!1448722)))

(assert (=> b!2262647 (= res!967257 (= (h!32266 rules!1750) r!2363))))

(declare-fun b!2262648 () Bool)

(assert (=> b!2262648 (= e!1448722 (contains!4629 (t!201791 rules!1750) r!2363))))

(assert (= (and d!670302 res!967258) b!2262647))

(assert (= (and b!2262647 (not res!967257)) b!2262648))

(assert (=> d!670302 m!2691891))

(declare-fun m!2692101 () Bool)

(assert (=> d!670302 m!2692101))

(declare-fun m!2692103 () Bool)

(assert (=> b!2262648 m!2692103))

(assert (=> b!2262365 d!670302))

(declare-fun d!670304 () Bool)

(declare-fun lt!840596 () Int)

(assert (=> d!670304 (= lt!840596 (size!21056 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))

(declare-fun size!21061 (Conc!8694) Int)

(assert (=> d!670304 (= lt!840596 (size!21061 (c!359412 (charsOf!2661 (head!4856 tokens!456)))))))

(assert (=> d!670304 (= (size!21058 (charsOf!2661 (head!4856 tokens!456))) lt!840596)))

(declare-fun bs!455561 () Bool)

(assert (= bs!455561 d!670304))

(assert (=> bs!455561 m!2691789))

(assert (=> bs!455561 m!2691851))

(assert (=> bs!455561 m!2691851))

(declare-fun m!2692105 () Bool)

(assert (=> bs!455561 m!2692105))

(declare-fun m!2692107 () Bool)

(assert (=> bs!455561 m!2692107))

(assert (=> b!2262355 d!670304))

(assert (=> b!2262355 d!670258))

(assert (=> b!2262355 d!670264))

(declare-fun d!670306 () Bool)

(declare-fun lt!840597 () Int)

(assert (=> d!670306 (>= lt!840597 0)))

(declare-fun e!1448727 () Int)

(assert (=> d!670306 (= lt!840597 e!1448727)))

(declare-fun c!359468 () Bool)

(assert (=> d!670306 (= c!359468 ((_ is Nil!26864) otherP!12))))

(assert (=> d!670306 (= (size!21056 otherP!12) lt!840597)))

(declare-fun b!2262657 () Bool)

(assert (=> b!2262657 (= e!1448727 0)))

(declare-fun b!2262658 () Bool)

(assert (=> b!2262658 (= e!1448727 (+ 1 (size!21056 (t!201790 otherP!12))))))

(assert (= (and d!670306 c!359468) b!2262657))

(assert (= (and d!670306 (not c!359468)) b!2262658))

(declare-fun m!2692109 () Bool)

(assert (=> b!2262658 m!2692109))

(assert (=> b!2262355 d!670306))

(declare-fun d!670308 () Bool)

(declare-fun list!10374 (Conc!8695) List!26960)

(assert (=> d!670308 (= (list!10370 (_1!15742 lt!840522)) (list!10374 (c!359414 (_1!15742 lt!840522))))))

(declare-fun bs!455562 () Bool)

(assert (= bs!455562 d!670308))

(declare-fun m!2692111 () Bool)

(assert (=> bs!455562 m!2692111))

(assert (=> b!2262345 d!670308))

(declare-fun d!670310 () Bool)

(assert (=> d!670310 (= (list!10369 (_2!15742 lt!840522)) (list!10373 (c!359412 (_2!15742 lt!840522))))))

(declare-fun bs!455563 () Bool)

(assert (= bs!455563 d!670310))

(declare-fun m!2692113 () Bool)

(assert (=> bs!455563 m!2692113))

(assert (=> b!2262345 d!670310))

(declare-fun b!2262815 () Bool)

(declare-fun e!1448826 () Bool)

(declare-fun e!1448825 () Bool)

(assert (=> b!2262815 (= e!1448826 e!1448825)))

(declare-fun res!967323 () Bool)

(declare-fun lt!840642 () tuple2!26464)

(assert (=> b!2262815 (= res!967323 (< (size!21058 (_2!15742 lt!840642)) (size!21058 (seqFromList!2977 input!1722))))))

(assert (=> b!2262815 (=> (not res!967323) (not e!1448825))))

(declare-fun e!1448827 () Bool)

(declare-fun b!2262816 () Bool)

(declare-fun lexList!1068 (LexerInterface!3870 List!26959 List!26958) tuple2!26466)

(assert (=> b!2262816 (= e!1448827 (= (list!10369 (_2!15742 lt!840642)) (_2!15743 (lexList!1068 thiss!16613 rules!1750 (list!10369 (seqFromList!2977 input!1722))))))))

(declare-fun b!2262818 () Bool)

(declare-fun isEmpty!15198 (BalanceConc!17118) Bool)

(assert (=> b!2262818 (= e!1448825 (not (isEmpty!15198 (_1!15742 lt!840642))))))

(declare-fun b!2262819 () Bool)

(declare-fun res!967324 () Bool)

(assert (=> b!2262819 (=> (not res!967324) (not e!1448827))))

(assert (=> b!2262819 (= res!967324 (= (list!10370 (_1!15742 lt!840642)) (_1!15743 (lexList!1068 thiss!16613 rules!1750 (list!10369 (seqFromList!2977 input!1722))))))))

(declare-fun d!670312 () Bool)

(assert (=> d!670312 e!1448827))

(declare-fun res!967322 () Bool)

(assert (=> d!670312 (=> (not res!967322) (not e!1448827))))

(assert (=> d!670312 (= res!967322 e!1448826)))

(declare-fun c!359488 () Bool)

(declare-fun size!21062 (BalanceConc!17118) Int)

(assert (=> d!670312 (= c!359488 (> (size!21062 (_1!15742 lt!840642)) 0))))

(declare-fun lexTailRecV2!743 (LexerInterface!3870 List!26959 BalanceConc!17116 BalanceConc!17116 BalanceConc!17116 BalanceConc!17118) tuple2!26464)

(assert (=> d!670312 (= lt!840642 (lexTailRecV2!743 thiss!16613 rules!1750 (seqFromList!2977 input!1722) (BalanceConc!17117 Empty!8694) (seqFromList!2977 input!1722) (BalanceConc!17119 Empty!8695)))))

(assert (=> d!670312 (= (lex!1709 thiss!16613 rules!1750 (seqFromList!2977 input!1722)) lt!840642)))

(declare-fun b!2262817 () Bool)

(assert (=> b!2262817 (= e!1448826 (= (_2!15742 lt!840642) (seqFromList!2977 input!1722)))))

(assert (= (and d!670312 c!359488) b!2262815))

(assert (= (and d!670312 (not c!359488)) b!2262817))

(assert (= (and b!2262815 res!967323) b!2262818))

(assert (= (and d!670312 res!967322) b!2262819))

(assert (= (and b!2262819 res!967324) b!2262816))

(declare-fun m!2692239 () Bool)

(assert (=> b!2262815 m!2692239))

(assert (=> b!2262815 m!2691783))

(declare-fun m!2692241 () Bool)

(assert (=> b!2262815 m!2692241))

(declare-fun m!2692243 () Bool)

(assert (=> b!2262819 m!2692243))

(assert (=> b!2262819 m!2691783))

(declare-fun m!2692245 () Bool)

(assert (=> b!2262819 m!2692245))

(assert (=> b!2262819 m!2692245))

(declare-fun m!2692247 () Bool)

(assert (=> b!2262819 m!2692247))

(declare-fun m!2692249 () Bool)

(assert (=> d!670312 m!2692249))

(assert (=> d!670312 m!2691783))

(assert (=> d!670312 m!2691783))

(declare-fun m!2692251 () Bool)

(assert (=> d!670312 m!2692251))

(declare-fun m!2692253 () Bool)

(assert (=> b!2262816 m!2692253))

(assert (=> b!2262816 m!2691783))

(assert (=> b!2262816 m!2692245))

(assert (=> b!2262816 m!2692245))

(assert (=> b!2262816 m!2692247))

(declare-fun m!2692255 () Bool)

(assert (=> b!2262818 m!2692255))

(assert (=> b!2262345 d!670312))

(declare-fun d!670368 () Bool)

(declare-fun fromListB!1334 (List!26958) BalanceConc!17116)

(assert (=> d!670368 (= (seqFromList!2977 input!1722) (fromListB!1334 input!1722))))

(declare-fun bs!455569 () Bool)

(assert (= bs!455569 d!670368))

(declare-fun m!2692257 () Bool)

(assert (=> bs!455569 m!2692257))

(assert (=> b!2262345 d!670368))

(declare-fun d!670370 () Bool)

(assert (=> d!670370 (= (inv!36404 (tag!4763 r!2363)) (= (mod (str.len (value!135599 (tag!4763 r!2363))) 2) 0))))

(assert (=> b!2262366 d!670370))

(declare-fun d!670372 () Bool)

(declare-fun res!967325 () Bool)

(declare-fun e!1448828 () Bool)

(assert (=> d!670372 (=> (not res!967325) (not e!1448828))))

(assert (=> d!670372 (= res!967325 (semiInverseModEq!1724 (toChars!5882 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 r!2363))))))

(assert (=> d!670372 (= (inv!36407 (transformation!4273 r!2363)) e!1448828)))

(declare-fun b!2262820 () Bool)

(assert (=> b!2262820 (= e!1448828 (equivClasses!1643 (toChars!5882 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 r!2363))))))

(assert (= (and d!670372 res!967325) b!2262820))

(declare-fun m!2692259 () Bool)

(assert (=> d!670372 m!2692259))

(declare-fun m!2692261 () Bool)

(assert (=> b!2262820 m!2692261))

(assert (=> b!2262366 d!670372))

(declare-fun d!670374 () Bool)

(assert (=> d!670374 (= (inv!36404 (tag!4763 otherR!12)) (= (mod (str.len (value!135599 (tag!4763 otherR!12))) 2) 0))))

(assert (=> b!2262367 d!670374))

(declare-fun d!670376 () Bool)

(declare-fun res!967326 () Bool)

(declare-fun e!1448829 () Bool)

(assert (=> d!670376 (=> (not res!967326) (not e!1448829))))

(assert (=> d!670376 (= res!967326 (semiInverseModEq!1724 (toChars!5882 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 otherR!12))))))

(assert (=> d!670376 (= (inv!36407 (transformation!4273 otherR!12)) e!1448829)))

(declare-fun b!2262821 () Bool)

(assert (=> b!2262821 (= e!1448829 (equivClasses!1643 (toChars!5882 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 otherR!12))))))

(assert (= (and d!670376 res!967326) b!2262821))

(declare-fun m!2692263 () Bool)

(assert (=> d!670376 m!2692263))

(declare-fun m!2692265 () Bool)

(assert (=> b!2262821 m!2692265))

(assert (=> b!2262367 d!670376))

(assert (=> b!2262356 d!670264))

(declare-fun b!2262826 () Bool)

(declare-fun e!1448832 () Bool)

(declare-fun tp!715639 () Bool)

(assert (=> b!2262826 (= e!1448832 (and tp_is_empty!10463 tp!715639))))

(assert (=> b!2262373 (= tp!715558 e!1448832)))

(assert (= (and b!2262373 ((_ is Cons!26864) (t!201790 input!1722))) b!2262826))

(declare-fun b!2262840 () Bool)

(declare-fun b_free!66869 () Bool)

(declare-fun b_next!67573 () Bool)

(assert (=> b!2262840 (= b_free!66869 (not b_next!67573))))

(declare-fun tp!715653 () Bool)

(declare-fun b_and!177881 () Bool)

(assert (=> b!2262840 (= tp!715653 b_and!177881)))

(declare-fun b_free!66871 () Bool)

(declare-fun b_next!67575 () Bool)

(assert (=> b!2262840 (= b_free!66871 (not b_next!67575))))

(declare-fun t!201834 () Bool)

(declare-fun tb!134183 () Bool)

(assert (=> (and b!2262840 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201834) tb!134183))

(declare-fun result!163606 () Bool)

(assert (= result!163606 result!163560))

(assert (=> b!2262390 t!201834))

(assert (=> d!670234 t!201834))

(declare-fun t!201836 () Bool)

(declare-fun tb!134185 () Bool)

(assert (=> (and b!2262840 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201836) tb!134185))

(declare-fun result!163608 () Bool)

(assert (= result!163608 result!163578))

(assert (=> d!670258 t!201836))

(declare-fun b_and!177883 () Bool)

(declare-fun tp!715654 () Bool)

(assert (=> b!2262840 (= tp!715654 (and (=> t!201834 result!163606) (=> t!201836 result!163608) b_and!177883))))

(declare-fun e!1448846 () Bool)

(declare-fun b!2262839 () Bool)

(declare-fun tp!715650 () Bool)

(declare-fun e!1448849 () Bool)

(assert (=> b!2262839 (= e!1448846 (and tp!715650 (inv!36404 (tag!4763 (rule!6585 (h!32267 (t!201792 tokens!456))))) (inv!36407 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) e!1448849))))

(assert (=> b!2262840 (= e!1448849 (and tp!715653 tp!715654))))

(declare-fun b!2262838 () Bool)

(declare-fun tp!715652 () Bool)

(declare-fun e!1448848 () Bool)

(assert (=> b!2262838 (= e!1448848 (and (inv!21 (value!135600 (h!32267 (t!201792 tokens!456)))) e!1448846 tp!715652))))

(declare-fun e!1448845 () Bool)

(assert (=> b!2262363 (= tp!715562 e!1448845)))

(declare-fun b!2262837 () Bool)

(declare-fun tp!715651 () Bool)

(assert (=> b!2262837 (= e!1448845 (and (inv!36408 (h!32267 (t!201792 tokens!456))) e!1448848 tp!715651))))

(assert (= b!2262839 b!2262840))

(assert (= b!2262838 b!2262839))

(assert (= b!2262837 b!2262838))

(assert (= (and b!2262363 ((_ is Cons!26866) (t!201792 tokens!456))) b!2262837))

(declare-fun m!2692267 () Bool)

(assert (=> b!2262839 m!2692267))

(declare-fun m!2692269 () Bool)

(assert (=> b!2262839 m!2692269))

(declare-fun m!2692271 () Bool)

(assert (=> b!2262838 m!2692271))

(declare-fun m!2692273 () Bool)

(assert (=> b!2262837 m!2692273))

(declare-fun b!2262852 () Bool)

(declare-fun e!1448853 () Bool)

(declare-fun tp!715665 () Bool)

(declare-fun tp!715667 () Bool)

(assert (=> b!2262852 (= e!1448853 (and tp!715665 tp!715667))))

(declare-fun b!2262851 () Bool)

(assert (=> b!2262851 (= e!1448853 tp_is_empty!10463)))

(declare-fun b!2262854 () Bool)

(declare-fun tp!715668 () Bool)

(declare-fun tp!715666 () Bool)

(assert (=> b!2262854 (= e!1448853 (and tp!715668 tp!715666))))

(declare-fun b!2262853 () Bool)

(declare-fun tp!715669 () Bool)

(assert (=> b!2262853 (= e!1448853 tp!715669)))

(assert (=> b!2262370 (= tp!715551 e!1448853)))

(assert (= (and b!2262370 ((_ is ElementMatch!6621) (regex!4273 (rule!6585 (h!32267 tokens!456))))) b!2262851))

(assert (= (and b!2262370 ((_ is Concat!11057) (regex!4273 (rule!6585 (h!32267 tokens!456))))) b!2262852))

(assert (= (and b!2262370 ((_ is Star!6621) (regex!4273 (rule!6585 (h!32267 tokens!456))))) b!2262853))

(assert (= (and b!2262370 ((_ is Union!6621) (regex!4273 (rule!6585 (h!32267 tokens!456))))) b!2262854))

(declare-fun b!2262855 () Bool)

(declare-fun e!1448854 () Bool)

(declare-fun tp!715670 () Bool)

(assert (=> b!2262855 (= e!1448854 (and tp_is_empty!10463 tp!715670))))

(assert (=> b!2262361 (= tp!715549 e!1448854)))

(assert (= (and b!2262361 ((_ is Cons!26864) (originalCharacters!5043 (h!32267 tokens!456)))) b!2262855))

(declare-fun b!2262866 () Bool)

(declare-fun b_free!66873 () Bool)

(declare-fun b_next!67577 () Bool)

(assert (=> b!2262866 (= b_free!66873 (not b_next!67577))))

(declare-fun tp!715679 () Bool)

(declare-fun b_and!177885 () Bool)

(assert (=> b!2262866 (= tp!715679 b_and!177885)))

(declare-fun b_free!66875 () Bool)

(declare-fun b_next!67579 () Bool)

(assert (=> b!2262866 (= b_free!66875 (not b_next!67579))))

(declare-fun t!201838 () Bool)

(declare-fun tb!134187 () Bool)

(assert (=> (and b!2262866 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201838) tb!134187))

(declare-fun result!163614 () Bool)

(assert (= result!163614 result!163560))

(assert (=> b!2262390 t!201838))

(assert (=> d!670234 t!201838))

(declare-fun t!201840 () Bool)

(declare-fun tb!134189 () Bool)

(assert (=> (and b!2262866 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201840) tb!134189))

(declare-fun result!163616 () Bool)

(assert (= result!163616 result!163578))

(assert (=> d!670258 t!201840))

(declare-fun b_and!177887 () Bool)

(declare-fun tp!715682 () Bool)

(assert (=> b!2262866 (= tp!715682 (and (=> t!201838 result!163614) (=> t!201840 result!163616) b_and!177887))))

(declare-fun e!1448865 () Bool)

(assert (=> b!2262866 (= e!1448865 (and tp!715679 tp!715682))))

(declare-fun b!2262865 () Bool)

(declare-fun tp!715680 () Bool)

(declare-fun e!1448863 () Bool)

(assert (=> b!2262865 (= e!1448863 (and tp!715680 (inv!36404 (tag!4763 (h!32266 (t!201791 rules!1750)))) (inv!36407 (transformation!4273 (h!32266 (t!201791 rules!1750)))) e!1448865))))

(declare-fun b!2262864 () Bool)

(declare-fun e!1448864 () Bool)

(declare-fun tp!715681 () Bool)

(assert (=> b!2262864 (= e!1448864 (and e!1448863 tp!715681))))

(assert (=> b!2262350 (= tp!715559 e!1448864)))

(assert (= b!2262865 b!2262866))

(assert (= b!2262864 b!2262865))

(assert (= (and b!2262350 ((_ is Cons!26865) (t!201791 rules!1750))) b!2262864))

(declare-fun m!2692275 () Bool)

(assert (=> b!2262865 m!2692275))

(declare-fun m!2692277 () Bool)

(assert (=> b!2262865 m!2692277))

(declare-fun b!2262867 () Bool)

(declare-fun e!1448867 () Bool)

(declare-fun tp!715683 () Bool)

(assert (=> b!2262867 (= e!1448867 (and tp_is_empty!10463 tp!715683))))

(assert (=> b!2262357 (= tp!715556 e!1448867)))

(assert (= (and b!2262357 ((_ is Cons!26864) (t!201790 suffix!886))) b!2262867))

(declare-fun b!2262868 () Bool)

(declare-fun e!1448868 () Bool)

(declare-fun tp!715684 () Bool)

(assert (=> b!2262868 (= e!1448868 (and tp_is_empty!10463 tp!715684))))

(assert (=> b!2262346 (= tp!715561 e!1448868)))

(assert (= (and b!2262346 ((_ is Cons!26864) (t!201790 otherP!12))) b!2262868))

(declare-fun b!2262870 () Bool)

(declare-fun e!1448869 () Bool)

(declare-fun tp!715685 () Bool)

(declare-fun tp!715687 () Bool)

(assert (=> b!2262870 (= e!1448869 (and tp!715685 tp!715687))))

(declare-fun b!2262869 () Bool)

(assert (=> b!2262869 (= e!1448869 tp_is_empty!10463)))

(declare-fun b!2262872 () Bool)

(declare-fun tp!715688 () Bool)

(declare-fun tp!715686 () Bool)

(assert (=> b!2262872 (= e!1448869 (and tp!715688 tp!715686))))

(declare-fun b!2262871 () Bool)

(declare-fun tp!715689 () Bool)

(assert (=> b!2262871 (= e!1448869 tp!715689)))

(assert (=> b!2262347 (= tp!715550 e!1448869)))

(assert (= (and b!2262347 ((_ is ElementMatch!6621) (regex!4273 (h!32266 rules!1750)))) b!2262869))

(assert (= (and b!2262347 ((_ is Concat!11057) (regex!4273 (h!32266 rules!1750)))) b!2262870))

(assert (= (and b!2262347 ((_ is Star!6621) (regex!4273 (h!32266 rules!1750)))) b!2262871))

(assert (= (and b!2262347 ((_ is Union!6621) (regex!4273 (h!32266 rules!1750)))) b!2262872))

(declare-fun b!2262874 () Bool)

(declare-fun e!1448870 () Bool)

(declare-fun tp!715690 () Bool)

(declare-fun tp!715692 () Bool)

(assert (=> b!2262874 (= e!1448870 (and tp!715690 tp!715692))))

(declare-fun b!2262873 () Bool)

(assert (=> b!2262873 (= e!1448870 tp_is_empty!10463)))

(declare-fun b!2262876 () Bool)

(declare-fun tp!715693 () Bool)

(declare-fun tp!715691 () Bool)

(assert (=> b!2262876 (= e!1448870 (and tp!715693 tp!715691))))

(declare-fun b!2262875 () Bool)

(declare-fun tp!715694 () Bool)

(assert (=> b!2262875 (= e!1448870 tp!715694)))

(assert (=> b!2262366 (= tp!715548 e!1448870)))

(assert (= (and b!2262366 ((_ is ElementMatch!6621) (regex!4273 r!2363))) b!2262873))

(assert (= (and b!2262366 ((_ is Concat!11057) (regex!4273 r!2363))) b!2262874))

(assert (= (and b!2262366 ((_ is Star!6621) (regex!4273 r!2363))) b!2262875))

(assert (= (and b!2262366 ((_ is Union!6621) (regex!4273 r!2363))) b!2262876))

(declare-fun b!2262878 () Bool)

(declare-fun e!1448871 () Bool)

(declare-fun tp!715695 () Bool)

(declare-fun tp!715697 () Bool)

(assert (=> b!2262878 (= e!1448871 (and tp!715695 tp!715697))))

(declare-fun b!2262877 () Bool)

(assert (=> b!2262877 (= e!1448871 tp_is_empty!10463)))

(declare-fun b!2262880 () Bool)

(declare-fun tp!715698 () Bool)

(declare-fun tp!715696 () Bool)

(assert (=> b!2262880 (= e!1448871 (and tp!715698 tp!715696))))

(declare-fun b!2262879 () Bool)

(declare-fun tp!715699 () Bool)

(assert (=> b!2262879 (= e!1448871 tp!715699)))

(assert (=> b!2262367 (= tp!715552 e!1448871)))

(assert (= (and b!2262367 ((_ is ElementMatch!6621) (regex!4273 otherR!12))) b!2262877))

(assert (= (and b!2262367 ((_ is Concat!11057) (regex!4273 otherR!12))) b!2262878))

(assert (= (and b!2262367 ((_ is Star!6621) (regex!4273 otherR!12))) b!2262879))

(assert (= (and b!2262367 ((_ is Union!6621) (regex!4273 otherR!12))) b!2262880))

(declare-fun b_lambda!72193 () Bool)

(assert (= b_lambda!72181 (or (and b!2262372 b_free!66859) (and b!2262351 b_free!66847 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262866 b_free!66875 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262840 b_free!66871 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262364 b_free!66851 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262371 b_free!66855 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) b_lambda!72193)))

(declare-fun b_lambda!72195 () Bool)

(assert (= b_lambda!72179 (or (and b!2262372 b_free!66859) (and b!2262351 b_free!66847 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262866 b_free!66875 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262840 b_free!66871 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262364 b_free!66851 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (and b!2262371 b_free!66855 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) b_lambda!72195)))

(check-sat (not b!2262413) (not b!2262870) (not b!2262837) (not b!2262569) (not b!2262818) (not b!2262815) (not b_next!67551) (not b!2262616) (not d!670376) (not d!670220) (not b!2262493) (not b!2262587) (not b!2262878) (not d!670248) (not d!670304) (not b!2262498) (not d!670298) (not b!2262627) (not b!2262576) (not d!670214) b_and!177863 (not b!2262868) (not b!2262442) (not b_next!67577) (not b!2262855) (not b_next!67553) (not b!2262838) (not b_next!67559) (not b_next!67575) tp_is_empty!10463 b_and!177809 (not d!670284) (not b!2262816) (not b!2262852) (not b_next!67573) b_and!177881 (not b!2262453) (not d!670242) (not b!2262434) (not d!670368) b_and!177861 (not b_next!67579) (not b!2262391) b_and!177857 (not d!670302) (not d!670222) (not b!2262879) b_and!177887 (not b!2262658) (not b!2262839) (not b!2262496) b_and!177817 (not b!2262622) (not d!670308) (not b_lambda!72185) (not d!670232) (not d!670236) (not d!670218) (not b!2262876) (not b!2262872) (not bm!135886) (not b!2262423) (not b!2262390) (not d!670250) (not b!2262880) (not b!2262854) (not b!2262821) (not b!2262615) (not b!2262579) b_and!177885 (not b_next!67555) (not b!2262584) (not b!2262620) (not d!670258) (not tb!134151) (not b!2262452) (not b!2262497) (not b!2262826) (not b!2262456) (not b_lambda!72193) (not b!2262624) b_and!177821 (not b!2262819) (not d!670310) (not tb!134167) (not b!2262417) (not b_lambda!72195) (not b!2262435) (not b!2262572) (not d!670312) (not b!2262644) (not b!2262648) (not b!2262581) (not b!2262492) (not b!2262402) (not d!670372) (not b!2262875) (not b!2262871) (not b!2262864) (not b!2262494) (not d!670256) (not b!2262853) (not b!2262436) (not b!2262867) (not d!670234) b_and!177883 (not d!670224) (not b!2262490) (not b!2262874) (not b!2262495) (not b!2262617) (not b!2262645) (not bm!135880) (not b_next!67549) (not b!2262629) (not b!2262628) b_and!177859 (not d!670268) b_and!177813 (not b!2262865) (not b!2262820) (not d!670292) (not d!670300) (not d!670216) (not d!670294) (not b_next!67561) (not b!2262574) (not b_next!67557) (not b!2262396) (not b_next!67563) (not b!2262623))
(check-sat (not b_next!67551) b_and!177863 b_and!177887 b_and!177817 b_and!177821 b_and!177883 b_and!177813 (not b_next!67577) (not b_next!67553) (not b_next!67559) b_and!177809 (not b_next!67575) (not b_next!67573) b_and!177881 b_and!177861 (not b_next!67579) b_and!177857 b_and!177885 (not b_next!67555) (not b_next!67549) b_and!177859 (not b_next!67557) (not b_next!67563) (not b_next!67561))
(get-model)

(assert (=> d!670218 d!670216))

(declare-fun d!670378 () Bool)

(assert (=> d!670378 (= (isDefined!4195 lt!840562) (not (isEmpty!15196 lt!840562)))))

(declare-fun bs!455570 () Bool)

(assert (= bs!455570 d!670378))

(assert (=> bs!455570 m!2691975))

(assert (=> b!2262492 d!670378))

(declare-fun d!670380 () Bool)

(assert (=> d!670380 true))

(declare-fun lambda!85350 () Int)

(declare-fun order!14991 () Int)

(declare-fun order!14989 () Int)

(declare-fun dynLambda!11656 (Int Int) Int)

(declare-fun dynLambda!11657 (Int Int) Int)

(assert (=> d!670380 (< (dynLambda!11656 order!14989 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (dynLambda!11657 order!14991 lambda!85350))))

(assert (=> d!670380 true))

(declare-fun order!14993 () Int)

(declare-fun dynLambda!11658 (Int Int) Int)

(assert (=> d!670380 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (dynLambda!11657 order!14991 lambda!85350))))

(declare-fun Forall!1070 (Int) Bool)

(assert (=> d!670380 (= (semiInverseModEq!1724 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (Forall!1070 lambda!85350))))

(declare-fun bs!455575 () Bool)

(assert (= bs!455575 d!670380))

(declare-fun m!2692323 () Bool)

(assert (=> bs!455575 m!2692323))

(assert (=> d!670268 d!670380))

(declare-fun d!670410 () Bool)

(declare-fun lt!840655 () Int)

(assert (=> d!670410 (= lt!840655 (size!21056 (list!10369 (_2!15742 lt!840642))))))

(assert (=> d!670410 (= lt!840655 (size!21061 (c!359412 (_2!15742 lt!840642))))))

(assert (=> d!670410 (= (size!21058 (_2!15742 lt!840642)) lt!840655)))

(declare-fun bs!455576 () Bool)

(assert (= bs!455576 d!670410))

(assert (=> bs!455576 m!2692253))

(assert (=> bs!455576 m!2692253))

(declare-fun m!2692325 () Bool)

(assert (=> bs!455576 m!2692325))

(declare-fun m!2692327 () Bool)

(assert (=> bs!455576 m!2692327))

(assert (=> b!2262815 d!670410))

(declare-fun d!670412 () Bool)

(declare-fun lt!840656 () Int)

(assert (=> d!670412 (= lt!840656 (size!21056 (list!10369 (seqFromList!2977 input!1722))))))

(assert (=> d!670412 (= lt!840656 (size!21061 (c!359412 (seqFromList!2977 input!1722))))))

(assert (=> d!670412 (= (size!21058 (seqFromList!2977 input!1722)) lt!840656)))

(declare-fun bs!455577 () Bool)

(assert (= bs!455577 d!670412))

(assert (=> bs!455577 m!2691783))

(assert (=> bs!455577 m!2692245))

(assert (=> bs!455577 m!2692245))

(declare-fun m!2692329 () Bool)

(assert (=> bs!455577 m!2692329))

(declare-fun m!2692331 () Bool)

(assert (=> bs!455577 m!2692331))

(assert (=> b!2262815 d!670412))

(declare-fun d!670414 () Bool)

(declare-fun e!1448888 () Bool)

(assert (=> d!670414 e!1448888))

(declare-fun res!967345 () Bool)

(assert (=> d!670414 (=> res!967345 e!1448888)))

(declare-fun lt!840657 () Bool)

(assert (=> d!670414 (= res!967345 (not lt!840657))))

(declare-fun e!1448889 () Bool)

(assert (=> d!670414 (= lt!840657 e!1448889)))

(declare-fun res!967344 () Bool)

(assert (=> d!670414 (=> res!967344 e!1448889)))

(assert (=> d!670414 (= res!967344 ((_ is Nil!26864) (tail!3265 lt!840524)))))

(assert (=> d!670414 (= (isPrefix!2263 (tail!3265 lt!840524) (tail!3265 (++!6541 lt!840524 (_2!15741 lt!840516)))) lt!840657)))

(declare-fun b!2262912 () Bool)

(assert (=> b!2262912 (= e!1448888 (>= (size!21056 (tail!3265 (++!6541 lt!840524 (_2!15741 lt!840516)))) (size!21056 (tail!3265 lt!840524))))))

(declare-fun b!2262911 () Bool)

(declare-fun e!1448887 () Bool)

(assert (=> b!2262911 (= e!1448887 (isPrefix!2263 (tail!3265 (tail!3265 lt!840524)) (tail!3265 (tail!3265 (++!6541 lt!840524 (_2!15741 lt!840516))))))))

(declare-fun b!2262910 () Bool)

(declare-fun res!967342 () Bool)

(assert (=> b!2262910 (=> (not res!967342) (not e!1448887))))

(assert (=> b!2262910 (= res!967342 (= (head!4858 (tail!3265 lt!840524)) (head!4858 (tail!3265 (++!6541 lt!840524 (_2!15741 lt!840516))))))))

(declare-fun b!2262909 () Bool)

(assert (=> b!2262909 (= e!1448889 e!1448887)))

(declare-fun res!967343 () Bool)

(assert (=> b!2262909 (=> (not res!967343) (not e!1448887))))

(assert (=> b!2262909 (= res!967343 (not ((_ is Nil!26864) (tail!3265 (++!6541 lt!840524 (_2!15741 lt!840516))))))))

(assert (= (and d!670414 (not res!967344)) b!2262909))

(assert (= (and b!2262909 res!967343) b!2262910))

(assert (= (and b!2262910 res!967342) b!2262911))

(assert (= (and d!670414 (not res!967345)) b!2262912))

(assert (=> b!2262912 m!2691911))

(declare-fun m!2692333 () Bool)

(assert (=> b!2262912 m!2692333))

(assert (=> b!2262912 m!2691909))

(declare-fun m!2692335 () Bool)

(assert (=> b!2262912 m!2692335))

(assert (=> b!2262911 m!2691909))

(declare-fun m!2692337 () Bool)

(assert (=> b!2262911 m!2692337))

(assert (=> b!2262911 m!2691911))

(declare-fun m!2692339 () Bool)

(assert (=> b!2262911 m!2692339))

(assert (=> b!2262911 m!2692337))

(assert (=> b!2262911 m!2692339))

(declare-fun m!2692341 () Bool)

(assert (=> b!2262911 m!2692341))

(assert (=> b!2262910 m!2691909))

(declare-fun m!2692343 () Bool)

(assert (=> b!2262910 m!2692343))

(assert (=> b!2262910 m!2691911))

(declare-fun m!2692345 () Bool)

(assert (=> b!2262910 m!2692345))

(assert (=> b!2262435 d!670414))

(declare-fun d!670416 () Bool)

(assert (=> d!670416 (= (tail!3265 lt!840524) (t!201790 lt!840524))))

(assert (=> b!2262435 d!670416))

(declare-fun d!670418 () Bool)

(assert (=> d!670418 (= (tail!3265 (++!6541 lt!840524 (_2!15741 lt!840516))) (t!201790 (++!6541 lt!840524 (_2!15741 lt!840516))))))

(assert (=> b!2262435 d!670418))

(declare-fun b!2262913 () Bool)

(declare-fun res!967348 () Bool)

(declare-fun e!1448894 () Bool)

(assert (=> b!2262913 (=> (not res!967348) (not e!1448894))))

(assert (=> b!2262913 (= res!967348 (isEmpty!15194 (tail!3265 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))))))))

(declare-fun b!2262914 () Bool)

(declare-fun e!1448890 () Bool)

(declare-fun e!1448891 () Bool)

(assert (=> b!2262914 (= e!1448890 e!1448891)))

(declare-fun c!359497 () Bool)

(assert (=> b!2262914 (= c!359497 ((_ is EmptyLang!6621) (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))))))

(declare-fun b!2262915 () Bool)

(declare-fun e!1448892 () Bool)

(declare-fun e!1448893 () Bool)

(assert (=> b!2262915 (= e!1448892 e!1448893)))

(declare-fun res!967353 () Bool)

(assert (=> b!2262915 (=> res!967353 e!1448893)))

(declare-fun call!135895 () Bool)

(assert (=> b!2262915 (= res!967353 call!135895)))

(declare-fun b!2262916 () Bool)

(declare-fun e!1448895 () Bool)

(assert (=> b!2262916 (= e!1448895 (matchR!2882 (derivativeStep!1484 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))) (head!4858 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))))) (tail!3265 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))))))))

(declare-fun b!2262917 () Bool)

(declare-fun e!1448896 () Bool)

(assert (=> b!2262917 (= e!1448896 e!1448892)))

(declare-fun res!967346 () Bool)

(assert (=> b!2262917 (=> (not res!967346) (not e!1448892))))

(declare-fun lt!840658 () Bool)

(assert (=> b!2262917 (= res!967346 (not lt!840658))))

(declare-fun b!2262918 () Bool)

(assert (=> b!2262918 (= e!1448893 (not (= (head!4858 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))) (c!359413 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))))))))

(declare-fun b!2262919 () Bool)

(assert (=> b!2262919 (= e!1448891 (not lt!840658))))

(declare-fun d!670420 () Bool)

(assert (=> d!670420 e!1448890))

(declare-fun c!359499 () Bool)

(assert (=> d!670420 (= c!359499 ((_ is EmptyExpr!6621) (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))))))

(assert (=> d!670420 (= lt!840658 e!1448895)))

(declare-fun c!359498 () Bool)

(assert (=> d!670420 (= c!359498 (isEmpty!15194 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))))))

(assert (=> d!670420 (validRegex!2480 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))))

(assert (=> d!670420 (= (matchR!2882 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))) (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))) lt!840658)))

(declare-fun b!2262920 () Bool)

(assert (=> b!2262920 (= e!1448894 (= (head!4858 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))) (c!359413 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))))))

(declare-fun b!2262921 () Bool)

(assert (=> b!2262921 (= e!1448890 (= lt!840658 call!135895))))

(declare-fun b!2262922 () Bool)

(declare-fun res!967349 () Bool)

(assert (=> b!2262922 (=> (not res!967349) (not e!1448894))))

(assert (=> b!2262922 (= res!967349 (not call!135895))))

(declare-fun b!2262923 () Bool)

(declare-fun res!967351 () Bool)

(assert (=> b!2262923 (=> res!967351 e!1448893)))

(assert (=> b!2262923 (= res!967351 (not (isEmpty!15194 (tail!3265 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))))))))

(declare-fun b!2262924 () Bool)

(declare-fun res!967347 () Bool)

(assert (=> b!2262924 (=> res!967347 e!1448896)))

(assert (=> b!2262924 (= res!967347 (not ((_ is ElementMatch!6621) (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))))))

(assert (=> b!2262924 (= e!1448891 e!1448896)))

(declare-fun bm!135890 () Bool)

(assert (=> bm!135890 (= call!135895 (isEmpty!15194 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))))))

(declare-fun b!2262925 () Bool)

(assert (=> b!2262925 (= e!1448895 (nullable!1822 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))))))

(declare-fun b!2262926 () Bool)

(declare-fun res!967352 () Bool)

(assert (=> b!2262926 (=> res!967352 e!1448896)))

(assert (=> b!2262926 (= res!967352 e!1448894)))

(declare-fun res!967350 () Bool)

(assert (=> b!2262926 (=> (not res!967350) (not e!1448894))))

(assert (=> b!2262926 (= res!967350 lt!840658)))

(assert (= (and d!670420 c!359498) b!2262925))

(assert (= (and d!670420 (not c!359498)) b!2262916))

(assert (= (and d!670420 c!359499) b!2262921))

(assert (= (and d!670420 (not c!359499)) b!2262914))

(assert (= (and b!2262914 c!359497) b!2262919))

(assert (= (and b!2262914 (not c!359497)) b!2262924))

(assert (= (and b!2262924 (not res!967347)) b!2262926))

(assert (= (and b!2262926 res!967350) b!2262922))

(assert (= (and b!2262922 res!967349) b!2262913))

(assert (= (and b!2262913 res!967348) b!2262920))

(assert (= (and b!2262926 (not res!967352)) b!2262917))

(assert (= (and b!2262917 res!967346) b!2262915))

(assert (= (and b!2262915 (not res!967353)) b!2262923))

(assert (= (and b!2262923 (not res!967351)) b!2262918))

(assert (= (or b!2262921 b!2262915 b!2262922) bm!135890))

(assert (=> bm!135890 m!2691969))

(declare-fun m!2692347 () Bool)

(assert (=> bm!135890 m!2692347))

(assert (=> b!2262916 m!2691969))

(declare-fun m!2692349 () Bool)

(assert (=> b!2262916 m!2692349))

(assert (=> b!2262916 m!2692349))

(declare-fun m!2692351 () Bool)

(assert (=> b!2262916 m!2692351))

(assert (=> b!2262916 m!2691969))

(declare-fun m!2692353 () Bool)

(assert (=> b!2262916 m!2692353))

(assert (=> b!2262916 m!2692351))

(assert (=> b!2262916 m!2692353))

(declare-fun m!2692355 () Bool)

(assert (=> b!2262916 m!2692355))

(assert (=> b!2262918 m!2691969))

(assert (=> b!2262918 m!2692349))

(declare-fun m!2692357 () Bool)

(assert (=> b!2262925 m!2692357))

(assert (=> b!2262920 m!2691969))

(assert (=> b!2262920 m!2692349))

(assert (=> d!670420 m!2691969))

(assert (=> d!670420 m!2692347))

(declare-fun m!2692359 () Bool)

(assert (=> d!670420 m!2692359))

(assert (=> b!2262923 m!2691969))

(assert (=> b!2262923 m!2692353))

(assert (=> b!2262923 m!2692353))

(declare-fun m!2692361 () Bool)

(assert (=> b!2262923 m!2692361))

(assert (=> b!2262913 m!2691969))

(assert (=> b!2262913 m!2692353))

(assert (=> b!2262913 m!2692353))

(assert (=> b!2262913 m!2692361))

(assert (=> b!2262494 d!670420))

(declare-fun d!670422 () Bool)

(assert (=> d!670422 (= (get!8103 lt!840562) (v!30284 lt!840562))))

(assert (=> b!2262494 d!670422))

(declare-fun d!670424 () Bool)

(assert (=> d!670424 (= (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))) (list!10373 (c!359412 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))))))

(declare-fun bs!455578 () Bool)

(assert (= bs!455578 d!670424))

(declare-fun m!2692363 () Bool)

(assert (=> bs!455578 m!2692363))

(assert (=> b!2262494 d!670424))

(declare-fun d!670426 () Bool)

(declare-fun lt!840659 () BalanceConc!17116)

(assert (=> d!670426 (= (list!10369 lt!840659) (originalCharacters!5043 (_1!15741 (get!8103 lt!840562))))))

(assert (=> d!670426 (= lt!840659 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))) (value!135600 (_1!15741 (get!8103 lt!840562)))))))

(assert (=> d!670426 (= (charsOf!2661 (_1!15741 (get!8103 lt!840562))) lt!840659)))

(declare-fun b_lambda!72199 () Bool)

(assert (=> (not b_lambda!72199) (not d!670426)))

(declare-fun tb!134203 () Bool)

(declare-fun t!201856 () Bool)

(assert (=> (and b!2262866 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201856) tb!134203))

(declare-fun b!2262927 () Bool)

(declare-fun e!1448897 () Bool)

(declare-fun tp!715701 () Bool)

(assert (=> b!2262927 (= e!1448897 (and (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))) (value!135600 (_1!15741 (get!8103 lt!840562)))))) tp!715701))))

(declare-fun result!163630 () Bool)

(assert (=> tb!134203 (= result!163630 (and (inv!36412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))) (value!135600 (_1!15741 (get!8103 lt!840562))))) e!1448897))))

(assert (= tb!134203 b!2262927))

(declare-fun m!2692365 () Bool)

(assert (=> b!2262927 m!2692365))

(declare-fun m!2692367 () Bool)

(assert (=> tb!134203 m!2692367))

(assert (=> d!670426 t!201856))

(declare-fun b_and!177901 () Bool)

(assert (= b_and!177887 (and (=> t!201856 result!163630) b_and!177901)))

(declare-fun t!201858 () Bool)

(declare-fun tb!134205 () Bool)

(assert (=> (and b!2262351 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201858) tb!134205))

(declare-fun result!163632 () Bool)

(assert (= result!163632 result!163630))

(assert (=> d!670426 t!201858))

(declare-fun b_and!177903 () Bool)

(assert (= b_and!177857 (and (=> t!201858 result!163632) b_and!177903)))

(declare-fun t!201860 () Bool)

(declare-fun tb!134207 () Bool)

(assert (=> (and b!2262371 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201860) tb!134207))

(declare-fun result!163634 () Bool)

(assert (= result!163634 result!163630))

(assert (=> d!670426 t!201860))

(declare-fun b_and!177905 () Bool)

(assert (= b_and!177861 (and (=> t!201860 result!163634) b_and!177905)))

(declare-fun tb!134209 () Bool)

(declare-fun t!201862 () Bool)

(assert (=> (and b!2262372 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201862) tb!134209))

(declare-fun result!163636 () Bool)

(assert (= result!163636 result!163630))

(assert (=> d!670426 t!201862))

(declare-fun b_and!177907 () Bool)

(assert (= b_and!177863 (and (=> t!201862 result!163636) b_and!177907)))

(declare-fun t!201864 () Bool)

(declare-fun tb!134211 () Bool)

(assert (=> (and b!2262364 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201864) tb!134211))

(declare-fun result!163638 () Bool)

(assert (= result!163638 result!163630))

(assert (=> d!670426 t!201864))

(declare-fun b_and!177909 () Bool)

(assert (= b_and!177859 (and (=> t!201864 result!163638) b_and!177909)))

(declare-fun t!201866 () Bool)

(declare-fun tb!134213 () Bool)

(assert (=> (and b!2262840 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201866) tb!134213))

(declare-fun result!163640 () Bool)

(assert (= result!163640 result!163630))

(assert (=> d!670426 t!201866))

(declare-fun b_and!177911 () Bool)

(assert (= b_and!177883 (and (=> t!201866 result!163640) b_and!177911)))

(declare-fun m!2692369 () Bool)

(assert (=> d!670426 m!2692369))

(declare-fun m!2692371 () Bool)

(assert (=> d!670426 m!2692371))

(assert (=> b!2262494 d!670426))

(declare-fun d!670428 () Bool)

(assert (=> d!670428 (= (list!10370 (_1!15742 lt!840642)) (list!10374 (c!359414 (_1!15742 lt!840642))))))

(declare-fun bs!455579 () Bool)

(assert (= bs!455579 d!670428))

(declare-fun m!2692373 () Bool)

(assert (=> bs!455579 m!2692373))

(assert (=> b!2262819 d!670428))

(declare-fun b!2262938 () Bool)

(declare-fun e!1448906 () Bool)

(declare-fun e!1448904 () Bool)

(assert (=> b!2262938 (= e!1448906 e!1448904)))

(declare-fun res!967356 () Bool)

(declare-fun lt!840666 () tuple2!26466)

(assert (=> b!2262938 (= res!967356 (< (size!21056 (_2!15743 lt!840666)) (size!21056 (list!10369 (seqFromList!2977 input!1722)))))))

(assert (=> b!2262938 (=> (not res!967356) (not e!1448904))))

(declare-fun b!2262939 () Bool)

(declare-fun e!1448905 () tuple2!26466)

(assert (=> b!2262939 (= e!1448905 (tuple2!26467 Nil!26866 (list!10369 (seqFromList!2977 input!1722))))))

(declare-fun b!2262940 () Bool)

(assert (=> b!2262940 (= e!1448904 (not (isEmpty!15192 (_1!15743 lt!840666))))))

(declare-fun d!670430 () Bool)

(assert (=> d!670430 e!1448906))

(declare-fun c!359504 () Bool)

(declare-fun size!21063 (List!26960) Int)

(assert (=> d!670430 (= c!359504 (> (size!21063 (_1!15743 lt!840666)) 0))))

(assert (=> d!670430 (= lt!840666 e!1448905)))

(declare-fun c!359505 () Bool)

(declare-fun lt!840667 () Option!5249)

(assert (=> d!670430 (= c!359505 ((_ is Some!5248) lt!840667))))

(assert (=> d!670430 (= lt!840667 (maxPrefix!2144 thiss!16613 rules!1750 (list!10369 (seqFromList!2977 input!1722))))))

(assert (=> d!670430 (= (lexList!1068 thiss!16613 rules!1750 (list!10369 (seqFromList!2977 input!1722))) lt!840666)))

(declare-fun b!2262941 () Bool)

(declare-fun lt!840668 () tuple2!26466)

(assert (=> b!2262941 (= e!1448905 (tuple2!26467 (Cons!26866 (_1!15741 (v!30284 lt!840667)) (_1!15743 lt!840668)) (_2!15743 lt!840668)))))

(assert (=> b!2262941 (= lt!840668 (lexList!1068 thiss!16613 rules!1750 (_2!15741 (v!30284 lt!840667))))))

(declare-fun b!2262942 () Bool)

(assert (=> b!2262942 (= e!1448906 (= (_2!15743 lt!840666) (list!10369 (seqFromList!2977 input!1722))))))

(assert (= (and d!670430 c!359505) b!2262941))

(assert (= (and d!670430 (not c!359505)) b!2262939))

(assert (= (and d!670430 c!359504) b!2262938))

(assert (= (and d!670430 (not c!359504)) b!2262942))

(assert (= (and b!2262938 res!967356) b!2262940))

(declare-fun m!2692375 () Bool)

(assert (=> b!2262938 m!2692375))

(assert (=> b!2262938 m!2692245))

(assert (=> b!2262938 m!2692329))

(declare-fun m!2692377 () Bool)

(assert (=> b!2262940 m!2692377))

(declare-fun m!2692379 () Bool)

(assert (=> d!670430 m!2692379))

(assert (=> d!670430 m!2692245))

(declare-fun m!2692381 () Bool)

(assert (=> d!670430 m!2692381))

(declare-fun m!2692383 () Bool)

(assert (=> b!2262941 m!2692383))

(assert (=> b!2262819 d!670430))

(declare-fun d!670432 () Bool)

(assert (=> d!670432 (= (list!10369 (seqFromList!2977 input!1722)) (list!10373 (c!359412 (seqFromList!2977 input!1722))))))

(declare-fun bs!455580 () Bool)

(assert (= bs!455580 d!670432))

(declare-fun m!2692385 () Bool)

(assert (=> bs!455580 m!2692385))

(assert (=> b!2262819 d!670432))

(declare-fun d!670434 () Bool)

(declare-fun lt!840669 () Int)

(assert (=> d!670434 (>= lt!840669 0)))

(declare-fun e!1448907 () Int)

(assert (=> d!670434 (= lt!840669 e!1448907)))

(declare-fun c!359506 () Bool)

(assert (=> d!670434 (= c!359506 ((_ is Nil!26864) (_2!15741 (get!8103 lt!840562))))))

(assert (=> d!670434 (= (size!21056 (_2!15741 (get!8103 lt!840562))) lt!840669)))

(declare-fun b!2262943 () Bool)

(assert (=> b!2262943 (= e!1448907 0)))

(declare-fun b!2262944 () Bool)

(assert (=> b!2262944 (= e!1448907 (+ 1 (size!21056 (t!201790 (_2!15741 (get!8103 lt!840562))))))))

(assert (= (and d!670434 c!359506) b!2262943))

(assert (= (and d!670434 (not c!359506)) b!2262944))

(declare-fun m!2692387 () Bool)

(assert (=> b!2262944 m!2692387))

(assert (=> b!2262490 d!670434))

(assert (=> b!2262490 d!670422))

(assert (=> b!2262490 d!670230))

(declare-fun d!670436 () Bool)

(declare-fun nullableFct!432 (Regex!6621) Bool)

(assert (=> d!670436 (= (nullable!1822 (regex!4273 r!2363)) (nullableFct!432 (regex!4273 r!2363)))))

(declare-fun bs!455581 () Bool)

(assert (= bs!455581 d!670436))

(declare-fun m!2692389 () Bool)

(assert (=> bs!455581 m!2692389))

(assert (=> b!2262581 d!670436))

(declare-fun d!670438 () Bool)

(assert (=> d!670438 true))

(declare-fun lambda!85353 () Int)

(declare-fun order!14995 () Int)

(declare-fun dynLambda!11659 (Int Int) Int)

(assert (=> d!670438 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (dynLambda!11659 order!14995 lambda!85353))))

(declare-fun Forall2!687 (Int) Bool)

(assert (=> d!670438 (= (equivClasses!1643 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (Forall2!687 lambda!85353))))

(declare-fun bs!455582 () Bool)

(assert (= bs!455582 d!670438))

(declare-fun m!2692391 () Bool)

(assert (=> bs!455582 m!2692391))

(assert (=> b!2262587 d!670438))

(declare-fun d!670440 () Bool)

(declare-fun e!1448912 () Bool)

(assert (=> d!670440 e!1448912))

(declare-fun res!967361 () Bool)

(assert (=> d!670440 (=> (not res!967361) (not e!1448912))))

(declare-fun lt!840672 () BalanceConc!17116)

(assert (=> d!670440 (= res!967361 (= (list!10369 lt!840672) input!1722))))

(declare-fun fromList!517 (List!26958) Conc!8694)

(assert (=> d!670440 (= lt!840672 (BalanceConc!17117 (fromList!517 input!1722)))))

(assert (=> d!670440 (= (fromListB!1334 input!1722) lt!840672)))

(declare-fun b!2262951 () Bool)

(declare-fun isBalanced!2660 (Conc!8694) Bool)

(assert (=> b!2262951 (= e!1448912 (isBalanced!2660 (fromList!517 input!1722)))))

(assert (= (and d!670440 res!967361) b!2262951))

(declare-fun m!2692393 () Bool)

(assert (=> d!670440 m!2692393))

(declare-fun m!2692395 () Bool)

(assert (=> d!670440 m!2692395))

(assert (=> b!2262951 m!2692395))

(assert (=> b!2262951 m!2692395))

(declare-fun m!2692397 () Bool)

(assert (=> b!2262951 m!2692397))

(assert (=> d!670368 d!670440))

(declare-fun d!670442 () Bool)

(declare-fun lt!840673 () Bool)

(assert (=> d!670442 (= lt!840673 (select (content!3581 (t!201791 rules!1750)) r!2363))))

(declare-fun e!1448913 () Bool)

(assert (=> d!670442 (= lt!840673 e!1448913)))

(declare-fun res!967363 () Bool)

(assert (=> d!670442 (=> (not res!967363) (not e!1448913))))

(assert (=> d!670442 (= res!967363 ((_ is Cons!26865) (t!201791 rules!1750)))))

(assert (=> d!670442 (= (contains!4629 (t!201791 rules!1750) r!2363) lt!840673)))

(declare-fun b!2262952 () Bool)

(declare-fun e!1448914 () Bool)

(assert (=> b!2262952 (= e!1448913 e!1448914)))

(declare-fun res!967362 () Bool)

(assert (=> b!2262952 (=> res!967362 e!1448914)))

(assert (=> b!2262952 (= res!967362 (= (h!32266 (t!201791 rules!1750)) r!2363))))

(declare-fun b!2262953 () Bool)

(assert (=> b!2262953 (= e!1448914 (contains!4629 (t!201791 (t!201791 rules!1750)) r!2363))))

(assert (= (and d!670442 res!967363) b!2262952))

(assert (= (and b!2262952 (not res!967362)) b!2262953))

(declare-fun m!2692399 () Bool)

(assert (=> d!670442 m!2692399))

(declare-fun m!2692401 () Bool)

(assert (=> d!670442 m!2692401))

(declare-fun m!2692403 () Bool)

(assert (=> b!2262953 m!2692403))

(assert (=> b!2262648 d!670442))

(declare-fun bs!455583 () Bool)

(declare-fun d!670444 () Bool)

(assert (= bs!455583 (and d!670444 d!670438)))

(declare-fun lambda!85354 () Int)

(assert (=> bs!455583 (= (= (toValue!6023 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (= lambda!85354 lambda!85353))))

(assert (=> d!670444 true))

(assert (=> d!670444 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 otherR!12))) (dynLambda!11659 order!14995 lambda!85354))))

(assert (=> d!670444 (= (equivClasses!1643 (toChars!5882 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 otherR!12))) (Forall2!687 lambda!85354))))

(declare-fun bs!455584 () Bool)

(assert (= bs!455584 d!670444))

(declare-fun m!2692405 () Bool)

(assert (=> bs!455584 m!2692405))

(assert (=> b!2262821 d!670444))

(declare-fun b!2262972 () Bool)

(declare-fun e!1448935 () Bool)

(declare-fun e!1448932 () Bool)

(assert (=> b!2262972 (= e!1448935 e!1448932)))

(declare-fun res!967374 () Bool)

(assert (=> b!2262972 (=> (not res!967374) (not e!1448932))))

(declare-fun call!135903 () Bool)

(assert (=> b!2262972 (= res!967374 call!135903)))

(declare-fun b!2262973 () Bool)

(declare-fun e!1448934 () Bool)

(declare-fun e!1448931 () Bool)

(assert (=> b!2262973 (= e!1448934 e!1448931)))

(declare-fun c!359513 () Bool)

(assert (=> b!2262973 (= c!359513 ((_ is Union!6621) (regex!4273 otherR!12)))))

(declare-fun b!2262974 () Bool)

(declare-fun call!135902 () Bool)

(assert (=> b!2262974 (= e!1448932 call!135902)))

(declare-fun b!2262976 () Bool)

(declare-fun res!967378 () Bool)

(assert (=> b!2262976 (=> res!967378 e!1448935)))

(assert (=> b!2262976 (= res!967378 (not ((_ is Concat!11057) (regex!4273 otherR!12))))))

(assert (=> b!2262976 (= e!1448931 e!1448935)))

(declare-fun bm!135897 () Bool)

(declare-fun c!359512 () Bool)

(declare-fun call!135904 () Bool)

(assert (=> bm!135897 (= call!135904 (validRegex!2480 (ite c!359512 (reg!6950 (regex!4273 otherR!12)) (ite c!359513 (regOne!13755 (regex!4273 otherR!12)) (regTwo!13754 (regex!4273 otherR!12))))))))

(declare-fun b!2262977 () Bool)

(declare-fun e!1448933 () Bool)

(assert (=> b!2262977 (= e!1448933 e!1448934)))

(assert (=> b!2262977 (= c!359512 ((_ is Star!6621) (regex!4273 otherR!12)))))

(declare-fun bm!135898 () Bool)

(assert (=> bm!135898 (= call!135902 call!135904)))

(declare-fun bm!135899 () Bool)

(assert (=> bm!135899 (= call!135903 (validRegex!2480 (ite c!359513 (regTwo!13755 (regex!4273 otherR!12)) (regOne!13754 (regex!4273 otherR!12)))))))

(declare-fun b!2262978 () Bool)

(declare-fun e!1448930 () Bool)

(assert (=> b!2262978 (= e!1448930 call!135904)))

(declare-fun b!2262975 () Bool)

(declare-fun e!1448929 () Bool)

(assert (=> b!2262975 (= e!1448929 call!135903)))

(declare-fun d!670446 () Bool)

(declare-fun res!967376 () Bool)

(assert (=> d!670446 (=> res!967376 e!1448933)))

(assert (=> d!670446 (= res!967376 ((_ is ElementMatch!6621) (regex!4273 otherR!12)))))

(assert (=> d!670446 (= (validRegex!2480 (regex!4273 otherR!12)) e!1448933)))

(declare-fun b!2262979 () Bool)

(declare-fun res!967375 () Bool)

(assert (=> b!2262979 (=> (not res!967375) (not e!1448929))))

(assert (=> b!2262979 (= res!967375 call!135902)))

(assert (=> b!2262979 (= e!1448931 e!1448929)))

(declare-fun b!2262980 () Bool)

(assert (=> b!2262980 (= e!1448934 e!1448930)))

(declare-fun res!967377 () Bool)

(assert (=> b!2262980 (= res!967377 (not (nullable!1822 (reg!6950 (regex!4273 otherR!12)))))))

(assert (=> b!2262980 (=> (not res!967377) (not e!1448930))))

(assert (= (and d!670446 (not res!967376)) b!2262977))

(assert (= (and b!2262977 c!359512) b!2262980))

(assert (= (and b!2262977 (not c!359512)) b!2262973))

(assert (= (and b!2262980 res!967377) b!2262978))

(assert (= (and b!2262973 c!359513) b!2262979))

(assert (= (and b!2262973 (not c!359513)) b!2262976))

(assert (= (and b!2262979 res!967375) b!2262975))

(assert (= (and b!2262976 (not res!967378)) b!2262972))

(assert (= (and b!2262972 res!967374) b!2262974))

(assert (= (or b!2262979 b!2262974) bm!135898))

(assert (= (or b!2262975 b!2262972) bm!135899))

(assert (= (or b!2262978 bm!135898) bm!135897))

(declare-fun m!2692407 () Bool)

(assert (=> bm!135897 m!2692407))

(declare-fun m!2692409 () Bool)

(assert (=> bm!135899 m!2692409))

(declare-fun m!2692411 () Bool)

(assert (=> b!2262980 m!2692411))

(assert (=> d!670222 d!670446))

(declare-fun b!2262999 () Bool)

(declare-fun res!967399 () Bool)

(declare-fun e!1448945 () Bool)

(assert (=> b!2262999 (=> (not res!967399) (not e!1448945))))

(declare-fun lt!840687 () Option!5249)

(assert (=> b!2262999 (= res!967399 (= (++!6541 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840687)))) (_2!15741 (get!8103 lt!840687))) input!1722))))

(declare-fun b!2263000 () Bool)

(declare-fun e!1448947 () Bool)

(assert (=> b!2263000 (= e!1448947 e!1448945)))

(declare-fun res!967393 () Bool)

(assert (=> b!2263000 (=> (not res!967393) (not e!1448945))))

(assert (=> b!2263000 (= res!967393 (matchR!2882 (regex!4273 (h!32266 rules!1750)) (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840687))))))))

(declare-fun b!2263002 () Bool)

(declare-fun e!1448944 () Bool)

(declare-datatypes ((tuple2!26468 0))(
  ( (tuple2!26469 (_1!15744 List!26958) (_2!15744 List!26958)) )
))
(declare-fun findLongestMatchInner!698 (Regex!6621 List!26958 Int List!26958 List!26958 Int) tuple2!26468)

(assert (=> b!2263002 (= e!1448944 (matchR!2882 (regex!4273 (h!32266 rules!1750)) (_1!15744 (findLongestMatchInner!698 (regex!4273 (h!32266 rules!1750)) Nil!26864 (size!21056 Nil!26864) input!1722 input!1722 (size!21056 input!1722)))))))

(declare-fun b!2263003 () Bool)

(declare-fun res!967396 () Bool)

(assert (=> b!2263003 (=> (not res!967396) (not e!1448945))))

(assert (=> b!2263003 (= res!967396 (= (rule!6585 (_1!15741 (get!8103 lt!840687))) (h!32266 rules!1750)))))

(declare-fun b!2263004 () Bool)

(declare-fun e!1448946 () Option!5249)

(assert (=> b!2263004 (= e!1448946 None!5248)))

(declare-fun b!2263005 () Bool)

(assert (=> b!2263005 (= e!1448945 (= (size!21057 (_1!15741 (get!8103 lt!840687))) (size!21056 (originalCharacters!5043 (_1!15741 (get!8103 lt!840687))))))))

(declare-fun d!670448 () Bool)

(assert (=> d!670448 e!1448947))

(declare-fun res!967395 () Bool)

(assert (=> d!670448 (=> res!967395 e!1448947)))

(assert (=> d!670448 (= res!967395 (isEmpty!15196 lt!840687))))

(assert (=> d!670448 (= lt!840687 e!1448946)))

(declare-fun c!359516 () Bool)

(declare-fun lt!840686 () tuple2!26468)

(assert (=> d!670448 (= c!359516 (isEmpty!15194 (_1!15744 lt!840686)))))

(declare-fun findLongestMatch!627 (Regex!6621 List!26958) tuple2!26468)

(assert (=> d!670448 (= lt!840686 (findLongestMatch!627 (regex!4273 (h!32266 rules!1750)) input!1722))))

(assert (=> d!670448 (ruleValid!1365 thiss!16613 (h!32266 rules!1750))))

(assert (=> d!670448 (= (maxPrefixOneRule!1341 thiss!16613 (h!32266 rules!1750) input!1722) lt!840687)))

(declare-fun b!2263001 () Bool)

(declare-fun res!967398 () Bool)

(assert (=> b!2263001 (=> (not res!967398) (not e!1448945))))

(assert (=> b!2263001 (= res!967398 (= (value!135600 (_1!15741 (get!8103 lt!840687))) (apply!6578 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840687)))) (seqFromList!2977 (originalCharacters!5043 (_1!15741 (get!8103 lt!840687)))))))))

(declare-fun b!2263006 () Bool)

(assert (=> b!2263006 (= e!1448946 (Some!5248 (tuple2!26463 (Token!8025 (apply!6578 (transformation!4273 (h!32266 rules!1750)) (seqFromList!2977 (_1!15744 lt!840686))) (h!32266 rules!1750) (size!21058 (seqFromList!2977 (_1!15744 lt!840686))) (_1!15744 lt!840686)) (_2!15744 lt!840686))))))

(declare-fun lt!840688 () Unit!39800)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!671 (Regex!6621 List!26958) Unit!39800)

(assert (=> b!2263006 (= lt!840688 (longestMatchIsAcceptedByMatchOrIsEmpty!671 (regex!4273 (h!32266 rules!1750)) input!1722))))

(declare-fun res!967397 () Bool)

(assert (=> b!2263006 (= res!967397 (isEmpty!15194 (_1!15744 (findLongestMatchInner!698 (regex!4273 (h!32266 rules!1750)) Nil!26864 (size!21056 Nil!26864) input!1722 input!1722 (size!21056 input!1722)))))))

(assert (=> b!2263006 (=> res!967397 e!1448944)))

(assert (=> b!2263006 e!1448944))

(declare-fun lt!840685 () Unit!39800)

(assert (=> b!2263006 (= lt!840685 lt!840688)))

(declare-fun lt!840684 () Unit!39800)

(declare-fun lemmaSemiInverse!1021 (TokenValueInjection!8410 BalanceConc!17116) Unit!39800)

(assert (=> b!2263006 (= lt!840684 (lemmaSemiInverse!1021 (transformation!4273 (h!32266 rules!1750)) (seqFromList!2977 (_1!15744 lt!840686))))))

(declare-fun b!2263007 () Bool)

(declare-fun res!967394 () Bool)

(assert (=> b!2263007 (=> (not res!967394) (not e!1448945))))

(assert (=> b!2263007 (= res!967394 (< (size!21056 (_2!15741 (get!8103 lt!840687))) (size!21056 input!1722)))))

(assert (= (and d!670448 c!359516) b!2263004))

(assert (= (and d!670448 (not c!359516)) b!2263006))

(assert (= (and b!2263006 (not res!967397)) b!2263002))

(assert (= (and d!670448 (not res!967395)) b!2263000))

(assert (= (and b!2263000 res!967393) b!2262999))

(assert (= (and b!2262999 res!967399) b!2263007))

(assert (= (and b!2263007 res!967394) b!2263003))

(assert (= (and b!2263003 res!967396) b!2263001))

(assert (= (and b!2263001 res!967398) b!2263005))

(declare-fun m!2692413 () Bool)

(assert (=> d!670448 m!2692413))

(declare-fun m!2692415 () Bool)

(assert (=> d!670448 m!2692415))

(declare-fun m!2692417 () Bool)

(assert (=> d!670448 m!2692417))

(declare-fun m!2692419 () Bool)

(assert (=> d!670448 m!2692419))

(declare-fun m!2692421 () Bool)

(assert (=> b!2263003 m!2692421))

(assert (=> b!2263005 m!2692421))

(declare-fun m!2692423 () Bool)

(assert (=> b!2263005 m!2692423))

(assert (=> b!2263007 m!2692421))

(declare-fun m!2692425 () Bool)

(assert (=> b!2263007 m!2692425))

(assert (=> b!2263007 m!2691809))

(assert (=> b!2263001 m!2692421))

(declare-fun m!2692427 () Bool)

(assert (=> b!2263001 m!2692427))

(assert (=> b!2263001 m!2692427))

(declare-fun m!2692429 () Bool)

(assert (=> b!2263001 m!2692429))

(assert (=> b!2262999 m!2692421))

(declare-fun m!2692431 () Bool)

(assert (=> b!2262999 m!2692431))

(assert (=> b!2262999 m!2692431))

(declare-fun m!2692433 () Bool)

(assert (=> b!2262999 m!2692433))

(assert (=> b!2262999 m!2692433))

(declare-fun m!2692435 () Bool)

(assert (=> b!2262999 m!2692435))

(declare-fun m!2692437 () Bool)

(assert (=> b!2263006 m!2692437))

(declare-fun m!2692439 () Bool)

(assert (=> b!2263006 m!2692439))

(declare-fun m!2692441 () Bool)

(assert (=> b!2263006 m!2692441))

(assert (=> b!2263006 m!2692439))

(assert (=> b!2263006 m!2692439))

(declare-fun m!2692443 () Bool)

(assert (=> b!2263006 m!2692443))

(declare-fun m!2692445 () Bool)

(assert (=> b!2263006 m!2692445))

(assert (=> b!2263006 m!2692439))

(declare-fun m!2692447 () Bool)

(assert (=> b!2263006 m!2692447))

(assert (=> b!2263006 m!2692437))

(assert (=> b!2263006 m!2691809))

(declare-fun m!2692449 () Bool)

(assert (=> b!2263006 m!2692449))

(declare-fun m!2692451 () Bool)

(assert (=> b!2263006 m!2692451))

(assert (=> b!2263006 m!2691809))

(assert (=> b!2263002 m!2692437))

(assert (=> b!2263002 m!2691809))

(assert (=> b!2263002 m!2692437))

(assert (=> b!2263002 m!2691809))

(assert (=> b!2263002 m!2692449))

(declare-fun m!2692453 () Bool)

(assert (=> b!2263002 m!2692453))

(assert (=> b!2263000 m!2692421))

(assert (=> b!2263000 m!2692431))

(assert (=> b!2263000 m!2692431))

(assert (=> b!2263000 m!2692433))

(assert (=> b!2263000 m!2692433))

(declare-fun m!2692455 () Bool)

(assert (=> b!2263000 m!2692455))

(assert (=> bm!135880 d!670448))

(declare-fun d!670450 () Bool)

(declare-fun c!359519 () Bool)

(assert (=> d!670450 (= c!359519 ((_ is Nil!26864) lt!840546))))

(declare-fun e!1448950 () (InoxSet C!13388))

(assert (=> d!670450 (= (content!3582 lt!840546) e!1448950)))

(declare-fun b!2263012 () Bool)

(assert (=> b!2263012 (= e!1448950 ((as const (Array C!13388 Bool)) false))))

(declare-fun b!2263013 () Bool)

(assert (=> b!2263013 (= e!1448950 ((_ map or) (store ((as const (Array C!13388 Bool)) false) (h!32265 lt!840546) true) (content!3582 (t!201790 lt!840546))))))

(assert (= (and d!670450 c!359519) b!2263012))

(assert (= (and d!670450 (not c!359519)) b!2263013))

(declare-fun m!2692457 () Bool)

(assert (=> b!2263013 m!2692457))

(declare-fun m!2692459 () Bool)

(assert (=> b!2263013 m!2692459))

(assert (=> d!670236 d!670450))

(declare-fun d!670452 () Bool)

(declare-fun c!359520 () Bool)

(assert (=> d!670452 (= c!359520 ((_ is Nil!26864) lt!840524))))

(declare-fun e!1448951 () (InoxSet C!13388))

(assert (=> d!670452 (= (content!3582 lt!840524) e!1448951)))

(declare-fun b!2263014 () Bool)

(assert (=> b!2263014 (= e!1448951 ((as const (Array C!13388 Bool)) false))))

(declare-fun b!2263015 () Bool)

(assert (=> b!2263015 (= e!1448951 ((_ map or) (store ((as const (Array C!13388 Bool)) false) (h!32265 lt!840524) true) (content!3582 (t!201790 lt!840524))))))

(assert (= (and d!670452 c!359520) b!2263014))

(assert (= (and d!670452 (not c!359520)) b!2263015))

(declare-fun m!2692461 () Bool)

(assert (=> b!2263015 m!2692461))

(declare-fun m!2692463 () Bool)

(assert (=> b!2263015 m!2692463))

(assert (=> d!670236 d!670452))

(declare-fun d!670454 () Bool)

(declare-fun c!359521 () Bool)

(assert (=> d!670454 (= c!359521 ((_ is Nil!26864) (_2!15741 lt!840516)))))

(declare-fun e!1448952 () (InoxSet C!13388))

(assert (=> d!670454 (= (content!3582 (_2!15741 lt!840516)) e!1448952)))

(declare-fun b!2263016 () Bool)

(assert (=> b!2263016 (= e!1448952 ((as const (Array C!13388 Bool)) false))))

(declare-fun b!2263017 () Bool)

(assert (=> b!2263017 (= e!1448952 ((_ map or) (store ((as const (Array C!13388 Bool)) false) (h!32265 (_2!15741 lt!840516)) true) (content!3582 (t!201790 (_2!15741 lt!840516)))))))

(assert (= (and d!670454 c!359521) b!2263016))

(assert (= (and d!670454 (not c!359521)) b!2263017))

(declare-fun m!2692465 () Bool)

(assert (=> b!2263017 m!2692465))

(declare-fun m!2692467 () Bool)

(assert (=> b!2263017 m!2692467))

(assert (=> d!670236 d!670454))

(declare-fun d!670456 () Bool)

(assert (=> d!670456 (= (head!4858 otherP!12) (h!32265 otherP!12))))

(assert (=> b!2262622 d!670456))

(declare-fun d!670458 () Bool)

(assert (=> d!670458 (= (head!4858 input!1722) (h!32265 input!1722))))

(assert (=> b!2262622 d!670458))

(declare-fun d!670460 () Bool)

(declare-fun lt!840689 () Int)

(assert (=> d!670460 (>= lt!840689 0)))

(declare-fun e!1448953 () Int)

(assert (=> d!670460 (= lt!840689 e!1448953)))

(declare-fun c!359522 () Bool)

(assert (=> d!670460 (= c!359522 ((_ is Nil!26864) (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))

(assert (=> d!670460 (= (size!21056 (list!10369 (charsOf!2661 (head!4856 tokens!456)))) lt!840689)))

(declare-fun b!2263018 () Bool)

(assert (=> b!2263018 (= e!1448953 0)))

(declare-fun b!2263019 () Bool)

(assert (=> b!2263019 (= e!1448953 (+ 1 (size!21056 (t!201790 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))

(assert (= (and d!670460 c!359522) b!2263018))

(assert (= (and d!670460 (not c!359522)) b!2263019))

(declare-fun m!2692469 () Bool)

(assert (=> b!2263019 m!2692469))

(assert (=> d!670304 d!670460))

(assert (=> d!670304 d!670256))

(declare-fun d!670462 () Bool)

(declare-fun lt!840692 () Int)

(assert (=> d!670462 (= lt!840692 (size!21056 (list!10373 (c!359412 (charsOf!2661 (head!4856 tokens!456))))))))

(assert (=> d!670462 (= lt!840692 (ite ((_ is Empty!8694) (c!359412 (charsOf!2661 (head!4856 tokens!456)))) 0 (ite ((_ is Leaf!12816) (c!359412 (charsOf!2661 (head!4856 tokens!456)))) (csize!17619 (c!359412 (charsOf!2661 (head!4856 tokens!456)))) (csize!17618 (c!359412 (charsOf!2661 (head!4856 tokens!456)))))))))

(assert (=> d!670462 (= (size!21061 (c!359412 (charsOf!2661 (head!4856 tokens!456)))) lt!840692)))

(declare-fun bs!455585 () Bool)

(assert (= bs!455585 d!670462))

(assert (=> bs!455585 m!2692027))

(assert (=> bs!455585 m!2692027))

(declare-fun m!2692471 () Bool)

(assert (=> bs!455585 m!2692471))

(assert (=> d!670304 d!670462))

(declare-fun b!2263020 () Bool)

(declare-fun res!967404 () Bool)

(declare-fun e!1448956 () Bool)

(assert (=> b!2263020 (=> (not res!967404) (not e!1448956))))

(declare-fun lt!840694 () Option!5249)

(assert (=> b!2263020 (= res!967404 (< (size!21056 (_2!15741 (get!8103 lt!840694))) (size!21056 input!1722)))))

(declare-fun b!2263021 () Bool)

(declare-fun e!1448955 () Option!5249)

(declare-fun call!135905 () Option!5249)

(assert (=> b!2263021 (= e!1448955 call!135905)))

(declare-fun b!2263022 () Bool)

(declare-fun e!1448954 () Bool)

(assert (=> b!2263022 (= e!1448954 e!1448956)))

(declare-fun res!967401 () Bool)

(assert (=> b!2263022 (=> (not res!967401) (not e!1448956))))

(assert (=> b!2263022 (= res!967401 (isDefined!4195 lt!840694))))

(declare-fun b!2263023 () Bool)

(assert (=> b!2263023 (= e!1448956 (contains!4629 (t!201791 rules!1750) (rule!6585 (_1!15741 (get!8103 lt!840694)))))))

(declare-fun b!2263024 () Bool)

(declare-fun res!967406 () Bool)

(assert (=> b!2263024 (=> (not res!967406) (not e!1448956))))

(assert (=> b!2263024 (= res!967406 (matchR!2882 (regex!4273 (rule!6585 (_1!15741 (get!8103 lt!840694)))) (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840694))))))))

(declare-fun b!2263025 () Bool)

(declare-fun res!967402 () Bool)

(assert (=> b!2263025 (=> (not res!967402) (not e!1448956))))

(assert (=> b!2263025 (= res!967402 (= (++!6541 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840694)))) (_2!15741 (get!8103 lt!840694))) input!1722))))

(declare-fun b!2263026 () Bool)

(declare-fun lt!840695 () Option!5249)

(declare-fun lt!840696 () Option!5249)

(assert (=> b!2263026 (= e!1448955 (ite (and ((_ is None!5248) lt!840695) ((_ is None!5248) lt!840696)) None!5248 (ite ((_ is None!5248) lt!840696) lt!840695 (ite ((_ is None!5248) lt!840695) lt!840696 (ite (>= (size!21057 (_1!15741 (v!30284 lt!840695))) (size!21057 (_1!15741 (v!30284 lt!840696)))) lt!840695 lt!840696)))))))

(assert (=> b!2263026 (= lt!840695 call!135905)))

(assert (=> b!2263026 (= lt!840696 (maxPrefix!2144 thiss!16613 (t!201791 (t!201791 rules!1750)) input!1722))))

(declare-fun b!2263027 () Bool)

(declare-fun res!967400 () Bool)

(assert (=> b!2263027 (=> (not res!967400) (not e!1448956))))

(assert (=> b!2263027 (= res!967400 (= (value!135600 (_1!15741 (get!8103 lt!840694))) (apply!6578 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840694)))) (seqFromList!2977 (originalCharacters!5043 (_1!15741 (get!8103 lt!840694)))))))))

(declare-fun bm!135900 () Bool)

(assert (=> bm!135900 (= call!135905 (maxPrefixOneRule!1341 thiss!16613 (h!32266 (t!201791 rules!1750)) input!1722))))

(declare-fun d!670464 () Bool)

(assert (=> d!670464 e!1448954))

(declare-fun res!967403 () Bool)

(assert (=> d!670464 (=> res!967403 e!1448954)))

(assert (=> d!670464 (= res!967403 (isEmpty!15196 lt!840694))))

(assert (=> d!670464 (= lt!840694 e!1448955)))

(declare-fun c!359523 () Bool)

(assert (=> d!670464 (= c!359523 (and ((_ is Cons!26865) (t!201791 rules!1750)) ((_ is Nil!26865) (t!201791 (t!201791 rules!1750)))))))

(declare-fun lt!840697 () Unit!39800)

(declare-fun lt!840693 () Unit!39800)

(assert (=> d!670464 (= lt!840697 lt!840693)))

(assert (=> d!670464 (isPrefix!2263 input!1722 input!1722)))

(assert (=> d!670464 (= lt!840693 (lemmaIsPrefixRefl!1450 input!1722 input!1722))))

(assert (=> d!670464 (rulesValidInductive!1492 thiss!16613 (t!201791 rules!1750))))

(assert (=> d!670464 (= (maxPrefix!2144 thiss!16613 (t!201791 rules!1750) input!1722) lt!840694)))

(declare-fun b!2263028 () Bool)

(declare-fun res!967405 () Bool)

(assert (=> b!2263028 (=> (not res!967405) (not e!1448956))))

(assert (=> b!2263028 (= res!967405 (= (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840694)))) (originalCharacters!5043 (_1!15741 (get!8103 lt!840694)))))))

(assert (= (and d!670464 c!359523) b!2263021))

(assert (= (and d!670464 (not c!359523)) b!2263026))

(assert (= (or b!2263021 b!2263026) bm!135900))

(assert (= (and d!670464 (not res!967403)) b!2263022))

(assert (= (and b!2263022 res!967401) b!2263028))

(assert (= (and b!2263028 res!967405) b!2263020))

(assert (= (and b!2263020 res!967404) b!2263025))

(assert (= (and b!2263025 res!967402) b!2263027))

(assert (= (and b!2263027 res!967400) b!2263024))

(assert (= (and b!2263024 res!967406) b!2263023))

(declare-fun m!2692473 () Bool)

(assert (=> b!2263027 m!2692473))

(declare-fun m!2692475 () Bool)

(assert (=> b!2263027 m!2692475))

(assert (=> b!2263027 m!2692475))

(declare-fun m!2692477 () Bool)

(assert (=> b!2263027 m!2692477))

(declare-fun m!2692479 () Bool)

(assert (=> bm!135900 m!2692479))

(assert (=> b!2263023 m!2692473))

(declare-fun m!2692481 () Bool)

(assert (=> b!2263023 m!2692481))

(assert (=> b!2263024 m!2692473))

(declare-fun m!2692483 () Bool)

(assert (=> b!2263024 m!2692483))

(assert (=> b!2263024 m!2692483))

(declare-fun m!2692485 () Bool)

(assert (=> b!2263024 m!2692485))

(assert (=> b!2263024 m!2692485))

(declare-fun m!2692487 () Bool)

(assert (=> b!2263024 m!2692487))

(declare-fun m!2692489 () Bool)

(assert (=> d!670464 m!2692489))

(assert (=> d!670464 m!2691977))

(assert (=> d!670464 m!2691979))

(declare-fun m!2692491 () Bool)

(assert (=> d!670464 m!2692491))

(assert (=> b!2263020 m!2692473))

(declare-fun m!2692493 () Bool)

(assert (=> b!2263020 m!2692493))

(assert (=> b!2263020 m!2691809))

(assert (=> b!2263028 m!2692473))

(assert (=> b!2263028 m!2692483))

(assert (=> b!2263028 m!2692483))

(assert (=> b!2263028 m!2692485))

(declare-fun m!2692495 () Bool)

(assert (=> b!2263022 m!2692495))

(assert (=> b!2263025 m!2692473))

(assert (=> b!2263025 m!2692483))

(assert (=> b!2263025 m!2692483))

(assert (=> b!2263025 m!2692485))

(assert (=> b!2263025 m!2692485))

(declare-fun m!2692497 () Bool)

(assert (=> b!2263025 m!2692497))

(declare-fun m!2692499 () Bool)

(assert (=> b!2263026 m!2692499))

(assert (=> b!2262496 d!670464))

(declare-fun d!670466 () Bool)

(declare-fun lt!840698 () Int)

(assert (=> d!670466 (>= lt!840698 0)))

(declare-fun e!1448957 () Int)

(assert (=> d!670466 (= lt!840698 e!1448957)))

(declare-fun c!359524 () Bool)

(assert (=> d!670466 (= c!359524 ((_ is Nil!26864) (t!201790 otherP!12)))))

(assert (=> d!670466 (= (size!21056 (t!201790 otherP!12)) lt!840698)))

(declare-fun b!2263029 () Bool)

(assert (=> b!2263029 (= e!1448957 0)))

(declare-fun b!2263030 () Bool)

(assert (=> b!2263030 (= e!1448957 (+ 1 (size!21056 (t!201790 (t!201790 otherP!12)))))))

(assert (= (and d!670466 c!359524) b!2263029))

(assert (= (and d!670466 (not c!359524)) b!2263030))

(declare-fun m!2692501 () Bool)

(assert (=> b!2263030 m!2692501))

(assert (=> b!2262658 d!670466))

(assert (=> d!670248 d!670228))

(assert (=> d!670248 d!670236))

(declare-fun d!670468 () Bool)

(assert (=> d!670468 (isPrefix!2263 lt!840524 (++!6541 lt!840524 (_2!15741 lt!840516)))))

(assert (=> d!670468 true))

(declare-fun _$46!1296 () Unit!39800)

(assert (=> d!670468 (= (choose!13233 lt!840524 (_2!15741 lt!840516)) _$46!1296)))

(declare-fun bs!455586 () Bool)

(assert (= bs!455586 d!670468))

(assert (=> bs!455586 m!2691805))

(assert (=> bs!455586 m!2691805))

(assert (=> bs!455586 m!2691807))

(assert (=> d!670248 d!670468))

(declare-fun d!670470 () Bool)

(assert (=> d!670470 (= (isEmpty!15194 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) ((_ is Nil!26864) (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(assert (=> b!2262569 d!670470))

(declare-fun d!670472 () Bool)

(assert (=> d!670472 (= (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456)))) (t!201790 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))

(assert (=> b!2262569 d!670472))

(declare-fun d!670474 () Bool)

(declare-fun c!359529 () Bool)

(assert (=> d!670474 (= c!359529 ((_ is Empty!8695) (c!359414 (_1!15742 lt!840522))))))

(declare-fun e!1448962 () List!26960)

(assert (=> d!670474 (= (list!10374 (c!359414 (_1!15742 lt!840522))) e!1448962)))

(declare-fun b!2263041 () Bool)

(declare-fun e!1448963 () List!26960)

(declare-fun list!10375 (IArray!17395) List!26960)

(assert (=> b!2263041 (= e!1448963 (list!10375 (xs!11637 (c!359414 (_1!15742 lt!840522)))))))

(declare-fun b!2263042 () Bool)

(declare-fun ++!6542 (List!26960 List!26960) List!26960)

(assert (=> b!2263042 (= e!1448963 (++!6542 (list!10374 (left!20392 (c!359414 (_1!15742 lt!840522)))) (list!10374 (right!20722 (c!359414 (_1!15742 lt!840522))))))))

(declare-fun b!2263040 () Bool)

(assert (=> b!2263040 (= e!1448962 e!1448963)))

(declare-fun c!359530 () Bool)

(assert (=> b!2263040 (= c!359530 ((_ is Leaf!12817) (c!359414 (_1!15742 lt!840522))))))

(declare-fun b!2263039 () Bool)

(assert (=> b!2263039 (= e!1448962 Nil!26866)))

(assert (= (and d!670474 c!359529) b!2263039))

(assert (= (and d!670474 (not c!359529)) b!2263040))

(assert (= (and b!2263040 c!359530) b!2263041))

(assert (= (and b!2263040 (not c!359530)) b!2263042))

(declare-fun m!2692503 () Bool)

(assert (=> b!2263041 m!2692503))

(declare-fun m!2692505 () Bool)

(assert (=> b!2263042 m!2692505))

(declare-fun m!2692507 () Bool)

(assert (=> b!2263042 m!2692507))

(assert (=> b!2263042 m!2692505))

(assert (=> b!2263042 m!2692507))

(declare-fun m!2692509 () Bool)

(assert (=> b!2263042 m!2692509))

(assert (=> d!670308 d!670474))

(declare-fun d!670476 () Bool)

(declare-fun charsToBigInt!1 (List!26957) Int)

(assert (=> d!670476 (= (inv!17 (value!135600 (h!32267 tokens!456))) (= (charsToBigInt!1 (text!31493 (value!135600 (h!32267 tokens!456)))) (value!135592 (value!135600 (h!32267 tokens!456)))))))

(declare-fun bs!455587 () Bool)

(assert (= bs!455587 d!670476))

(declare-fun m!2692511 () Bool)

(assert (=> bs!455587 m!2692511))

(assert (=> b!2262615 d!670476))

(declare-fun d!670478 () Bool)

(declare-fun res!967407 () Bool)

(declare-fun e!1448964 () Bool)

(assert (=> d!670478 (=> (not res!967407) (not e!1448964))))

(assert (=> d!670478 (= res!967407 (not (isEmpty!15194 (originalCharacters!5043 (h!32267 (t!201792 tokens!456))))))))

(assert (=> d!670478 (= (inv!36408 (h!32267 (t!201792 tokens!456))) e!1448964)))

(declare-fun b!2263043 () Bool)

(declare-fun res!967408 () Bool)

(assert (=> b!2263043 (=> (not res!967408) (not e!1448964))))

(assert (=> b!2263043 (= res!967408 (= (originalCharacters!5043 (h!32267 (t!201792 tokens!456))) (list!10369 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (value!135600 (h!32267 (t!201792 tokens!456)))))))))

(declare-fun b!2263044 () Bool)

(assert (=> b!2263044 (= e!1448964 (= (size!21057 (h!32267 (t!201792 tokens!456))) (size!21056 (originalCharacters!5043 (h!32267 (t!201792 tokens!456))))))))

(assert (= (and d!670478 res!967407) b!2263043))

(assert (= (and b!2263043 res!967408) b!2263044))

(declare-fun b_lambda!72201 () Bool)

(assert (=> (not b_lambda!72201) (not b!2263043)))

(declare-fun t!201870 () Bool)

(declare-fun tb!134215 () Bool)

(assert (=> (and b!2262372 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201870) tb!134215))

(declare-fun b!2263045 () Bool)

(declare-fun e!1448965 () Bool)

(declare-fun tp!715702 () Bool)

(assert (=> b!2263045 (= e!1448965 (and (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (value!135600 (h!32267 (t!201792 tokens!456)))))) tp!715702))))

(declare-fun result!163642 () Bool)

(assert (=> tb!134215 (= result!163642 (and (inv!36412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (value!135600 (h!32267 (t!201792 tokens!456))))) e!1448965))))

(assert (= tb!134215 b!2263045))

(declare-fun m!2692513 () Bool)

(assert (=> b!2263045 m!2692513))

(declare-fun m!2692515 () Bool)

(assert (=> tb!134215 m!2692515))

(assert (=> b!2263043 t!201870))

(declare-fun b_and!177913 () Bool)

(assert (= b_and!177907 (and (=> t!201870 result!163642) b_and!177913)))

(declare-fun t!201872 () Bool)

(declare-fun tb!134217 () Bool)

(assert (=> (and b!2262840 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201872) tb!134217))

(declare-fun result!163644 () Bool)

(assert (= result!163644 result!163642))

(assert (=> b!2263043 t!201872))

(declare-fun b_and!177915 () Bool)

(assert (= b_and!177911 (and (=> t!201872 result!163644) b_and!177915)))

(declare-fun t!201874 () Bool)

(declare-fun tb!134219 () Bool)

(assert (=> (and b!2262364 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201874) tb!134219))

(declare-fun result!163646 () Bool)

(assert (= result!163646 result!163642))

(assert (=> b!2263043 t!201874))

(declare-fun b_and!177917 () Bool)

(assert (= b_and!177909 (and (=> t!201874 result!163646) b_and!177917)))

(declare-fun t!201876 () Bool)

(declare-fun tb!134221 () Bool)

(assert (=> (and b!2262866 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201876) tb!134221))

(declare-fun result!163648 () Bool)

(assert (= result!163648 result!163642))

(assert (=> b!2263043 t!201876))

(declare-fun b_and!177919 () Bool)

(assert (= b_and!177901 (and (=> t!201876 result!163648) b_and!177919)))

(declare-fun tb!134223 () Bool)

(declare-fun t!201878 () Bool)

(assert (=> (and b!2262371 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201878) tb!134223))

(declare-fun result!163650 () Bool)

(assert (= result!163650 result!163642))

(assert (=> b!2263043 t!201878))

(declare-fun b_and!177921 () Bool)

(assert (= b_and!177905 (and (=> t!201878 result!163650) b_and!177921)))

(declare-fun tb!134225 () Bool)

(declare-fun t!201880 () Bool)

(assert (=> (and b!2262351 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201880) tb!134225))

(declare-fun result!163652 () Bool)

(assert (= result!163652 result!163642))

(assert (=> b!2263043 t!201880))

(declare-fun b_and!177923 () Bool)

(assert (= b_and!177903 (and (=> t!201880 result!163652) b_and!177923)))

(declare-fun m!2692517 () Bool)

(assert (=> d!670478 m!2692517))

(declare-fun m!2692519 () Bool)

(assert (=> b!2263043 m!2692519))

(assert (=> b!2263043 m!2692519))

(declare-fun m!2692521 () Bool)

(assert (=> b!2263043 m!2692521))

(declare-fun m!2692523 () Bool)

(assert (=> b!2263044 m!2692523))

(assert (=> b!2262837 d!670478))

(declare-fun d!670480 () Bool)

(declare-fun res!967413 () Bool)

(declare-fun e!1448970 () Bool)

(assert (=> d!670480 (=> res!967413 e!1448970)))

(assert (=> d!670480 (= res!967413 ((_ is Nil!26865) rules!1750))))

(assert (=> d!670480 (= (noDuplicateTag!1565 thiss!16613 rules!1750 Nil!26867) e!1448970)))

(declare-fun b!2263050 () Bool)

(declare-fun e!1448971 () Bool)

(assert (=> b!2263050 (= e!1448970 e!1448971)))

(declare-fun res!967414 () Bool)

(assert (=> b!2263050 (=> (not res!967414) (not e!1448971))))

(declare-fun contains!4630 (List!26961 String!29279) Bool)

(assert (=> b!2263050 (= res!967414 (not (contains!4630 Nil!26867 (tag!4763 (h!32266 rules!1750)))))))

(declare-fun b!2263051 () Bool)

(assert (=> b!2263051 (= e!1448971 (noDuplicateTag!1565 thiss!16613 (t!201791 rules!1750) (Cons!26867 (tag!4763 (h!32266 rules!1750)) Nil!26867)))))

(assert (= (and d!670480 (not res!967413)) b!2263050))

(assert (= (and b!2263050 res!967414) b!2263051))

(declare-fun m!2692525 () Bool)

(assert (=> b!2263050 m!2692525))

(declare-fun m!2692527 () Bool)

(assert (=> b!2263051 m!2692527))

(assert (=> b!2262644 d!670480))

(declare-fun bs!455588 () Bool)

(declare-fun d!670482 () Bool)

(assert (= bs!455588 (and d!670482 d!670380)))

(declare-fun lambda!85355 () Int)

(assert (=> bs!455588 (= (and (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (= (toValue!6023 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (= lambda!85355 lambda!85350))))

(assert (=> d!670482 true))

(assert (=> d!670482 (< (dynLambda!11656 order!14989 (toChars!5882 (transformation!4273 (h!32266 rules!1750)))) (dynLambda!11657 order!14991 lambda!85355))))

(assert (=> d!670482 true))

(assert (=> d!670482 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 (h!32266 rules!1750)))) (dynLambda!11657 order!14991 lambda!85355))))

(assert (=> d!670482 (= (semiInverseModEq!1724 (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 (h!32266 rules!1750)))) (Forall!1070 lambda!85355))))

(declare-fun bs!455589 () Bool)

(assert (= bs!455589 d!670482))

(declare-fun m!2692529 () Bool)

(assert (=> bs!455589 m!2692529))

(assert (=> d!670284 d!670482))

(assert (=> d!670300 d!670298))

(declare-fun d!670484 () Bool)

(assert (=> d!670484 (ruleValid!1365 thiss!16613 r!2363)))

(assert (=> d!670484 true))

(declare-fun _$65!1068 () Unit!39800)

(assert (=> d!670484 (= (choose!13231 thiss!16613 r!2363 rules!1750) _$65!1068)))

(declare-fun bs!455590 () Bool)

(assert (= bs!455590 d!670484))

(assert (=> bs!455590 m!2691837))

(assert (=> d!670300 d!670484))

(assert (=> d!670300 d!670302))

(assert (=> b!2262624 d!670230))

(assert (=> b!2262624 d!670306))

(declare-fun d!670486 () Bool)

(assert (=> d!670486 (= (head!4858 lt!840524) (h!32265 lt!840524))))

(assert (=> b!2262627 d!670486))

(assert (=> b!2262627 d!670458))

(assert (=> d!670224 d!670222))

(declare-fun d!670488 () Bool)

(assert (=> d!670488 (ruleValid!1365 thiss!16613 otherR!12)))

(assert (=> d!670488 true))

(declare-fun _$65!1069 () Unit!39800)

(assert (=> d!670488 (= (choose!13231 thiss!16613 otherR!12 rules!1750) _$65!1069)))

(declare-fun bs!455591 () Bool)

(assert (= bs!455591 d!670488))

(assert (=> bs!455591 m!2691799))

(assert (=> d!670224 d!670488))

(assert (=> d!670224 d!670216))

(declare-fun d!670490 () Bool)

(declare-fun lt!840701 () Int)

(assert (=> d!670490 (= lt!840701 (size!21063 (list!10370 (_1!15742 lt!840642))))))

(declare-fun size!21065 (Conc!8695) Int)

(assert (=> d!670490 (= lt!840701 (size!21065 (c!359414 (_1!15742 lt!840642))))))

(assert (=> d!670490 (= (size!21062 (_1!15742 lt!840642)) lt!840701)))

(declare-fun bs!455592 () Bool)

(assert (= bs!455592 d!670490))

(assert (=> bs!455592 m!2692243))

(assert (=> bs!455592 m!2692243))

(declare-fun m!2692531 () Bool)

(assert (=> bs!455592 m!2692531))

(declare-fun m!2692533 () Bool)

(assert (=> bs!455592 m!2692533))

(assert (=> d!670312 d!670490))

(declare-fun lt!840816 () tuple2!26464)

(declare-fun b!2263253 () Bool)

(declare-fun e!1449094 () Bool)

(declare-fun lexRec!520 (LexerInterface!3870 List!26959 BalanceConc!17116) tuple2!26464)

(assert (=> b!2263253 (= e!1449094 (= (list!10369 (_2!15742 lt!840816)) (list!10369 (_2!15742 (lexRec!520 thiss!16613 rules!1750 (seqFromList!2977 input!1722))))))))

(declare-fun b!2263254 () Bool)

(declare-fun e!1449093 () tuple2!26464)

(assert (=> b!2263254 (= e!1449093 (tuple2!26465 (BalanceConc!17119 Empty!8695) (seqFromList!2977 input!1722)))))

(declare-fun lt!840821 () BalanceConc!17116)

(declare-fun b!2263255 () Bool)

(declare-datatypes ((tuple2!26470 0))(
  ( (tuple2!26471 (_1!15745 Token!8024) (_2!15745 BalanceConc!17116)) )
))
(declare-datatypes ((Option!5250 0))(
  ( (None!5249) (Some!5249 (v!30287 tuple2!26470)) )
))
(declare-fun lt!840829 () Option!5250)

(declare-fun append!683 (BalanceConc!17118 Token!8024) BalanceConc!17118)

(assert (=> b!2263255 (= e!1449093 (lexTailRecV2!743 thiss!16613 rules!1750 (seqFromList!2977 input!1722) lt!840821 (_2!15745 (v!30287 lt!840829)) (append!683 (BalanceConc!17119 Empty!8695) (_1!15745 (v!30287 lt!840829)))))))

(declare-fun lt!840817 () tuple2!26464)

(assert (=> b!2263255 (= lt!840817 (lexRec!520 thiss!16613 rules!1750 (_2!15745 (v!30287 lt!840829))))))

(declare-fun lt!840834 () List!26958)

(assert (=> b!2263255 (= lt!840834 (list!10369 (BalanceConc!17117 Empty!8694)))))

(declare-fun lt!840831 () List!26958)

(assert (=> b!2263255 (= lt!840831 (list!10369 (charsOf!2661 (_1!15745 (v!30287 lt!840829)))))))

(declare-fun lt!840822 () List!26958)

(assert (=> b!2263255 (= lt!840822 (list!10369 (_2!15745 (v!30287 lt!840829))))))

(declare-fun lt!840836 () Unit!39800)

(declare-fun lemmaConcatAssociativity!1352 (List!26958 List!26958 List!26958) Unit!39800)

(assert (=> b!2263255 (= lt!840836 (lemmaConcatAssociativity!1352 lt!840834 lt!840831 lt!840822))))

(assert (=> b!2263255 (= (++!6541 (++!6541 lt!840834 lt!840831) lt!840822) (++!6541 lt!840834 (++!6541 lt!840831 lt!840822)))))

(declare-fun lt!840805 () Unit!39800)

(assert (=> b!2263255 (= lt!840805 lt!840836)))

(declare-fun lt!840832 () Option!5250)

(declare-fun maxPrefixZipperSequence!855 (LexerInterface!3870 List!26959 BalanceConc!17116) Option!5250)

(assert (=> b!2263255 (= lt!840832 (maxPrefixZipperSequence!855 thiss!16613 rules!1750 (seqFromList!2977 input!1722)))))

(declare-fun c!359593 () Bool)

(assert (=> b!2263255 (= c!359593 ((_ is Some!5249) lt!840832))))

(declare-fun e!1449095 () tuple2!26464)

(assert (=> b!2263255 (= (lexRec!520 thiss!16613 rules!1750 (seqFromList!2977 input!1722)) e!1449095)))

(declare-fun lt!840811 () Unit!39800)

(declare-fun Unit!39804 () Unit!39800)

(assert (=> b!2263255 (= lt!840811 Unit!39804)))

(declare-fun lt!840810 () List!26960)

(assert (=> b!2263255 (= lt!840810 (list!10370 (BalanceConc!17119 Empty!8695)))))

(declare-fun lt!840835 () List!26960)

(assert (=> b!2263255 (= lt!840835 (Cons!26866 (_1!15745 (v!30287 lt!840829)) Nil!26866))))

(declare-fun lt!840830 () List!26960)

(assert (=> b!2263255 (= lt!840830 (list!10370 (_1!15742 lt!840817)))))

(declare-fun lt!840824 () Unit!39800)

(declare-fun lemmaConcatAssociativity!1353 (List!26960 List!26960 List!26960) Unit!39800)

(assert (=> b!2263255 (= lt!840824 (lemmaConcatAssociativity!1353 lt!840810 lt!840835 lt!840830))))

(assert (=> b!2263255 (= (++!6542 (++!6542 lt!840810 lt!840835) lt!840830) (++!6542 lt!840810 (++!6542 lt!840835 lt!840830)))))

(declare-fun lt!840828 () Unit!39800)

(assert (=> b!2263255 (= lt!840828 lt!840824)))

(declare-fun lt!840823 () List!26958)

(assert (=> b!2263255 (= lt!840823 (++!6541 (list!10369 (BalanceConc!17117 Empty!8694)) (list!10369 (charsOf!2661 (_1!15745 (v!30287 lt!840829))))))))

(declare-fun lt!840825 () List!26958)

(assert (=> b!2263255 (= lt!840825 (list!10369 (_2!15745 (v!30287 lt!840829))))))

(declare-fun lt!840827 () List!26960)

(assert (=> b!2263255 (= lt!840827 (list!10370 (append!683 (BalanceConc!17119 Empty!8695) (_1!15745 (v!30287 lt!840829)))))))

(declare-fun lt!840826 () Unit!39800)

(declare-fun lemmaLexThenLexPrefix!334 (LexerInterface!3870 List!26959 List!26958 List!26958 List!26960 List!26960 List!26958) Unit!39800)

(assert (=> b!2263255 (= lt!840826 (lemmaLexThenLexPrefix!334 thiss!16613 rules!1750 lt!840823 lt!840825 lt!840827 (list!10370 (_1!15742 lt!840817)) (list!10369 (_2!15742 lt!840817))))))

(assert (=> b!2263255 (= (lexList!1068 thiss!16613 rules!1750 lt!840823) (tuple2!26467 lt!840827 Nil!26864))))

(declare-fun lt!840804 () Unit!39800)

(assert (=> b!2263255 (= lt!840804 lt!840826)))

(declare-fun lt!840819 () BalanceConc!17116)

(declare-fun ++!6543 (BalanceConc!17116 BalanceConc!17116) BalanceConc!17116)

(assert (=> b!2263255 (= lt!840819 (++!6543 (BalanceConc!17117 Empty!8694) (charsOf!2661 (_1!15745 (v!30287 lt!840829)))))))

(declare-fun lt!840806 () Option!5250)

(assert (=> b!2263255 (= lt!840806 (maxPrefixZipperSequence!855 thiss!16613 rules!1750 lt!840819))))

(declare-fun c!359594 () Bool)

(assert (=> b!2263255 (= c!359594 ((_ is Some!5249) lt!840806))))

(declare-fun e!1449092 () tuple2!26464)

(assert (=> b!2263255 (= (lexRec!520 thiss!16613 rules!1750 (++!6543 (BalanceConc!17117 Empty!8694) (charsOf!2661 (_1!15745 (v!30287 lt!840829))))) e!1449092)))

(declare-fun lt!840833 () Unit!39800)

(declare-fun Unit!39805 () Unit!39800)

(assert (=> b!2263255 (= lt!840833 Unit!39805)))

(assert (=> b!2263255 (= lt!840821 (++!6543 (BalanceConc!17117 Empty!8694) (charsOf!2661 (_1!15745 (v!30287 lt!840829)))))))

(declare-fun lt!840814 () List!26958)

(assert (=> b!2263255 (= lt!840814 (list!10369 lt!840821))))

(declare-fun lt!840820 () List!26958)

(assert (=> b!2263255 (= lt!840820 (list!10369 (_2!15745 (v!30287 lt!840829))))))

(declare-fun lt!840813 () Unit!39800)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!450 (List!26958 List!26958) Unit!39800)

(assert (=> b!2263255 (= lt!840813 (lemmaConcatTwoListThenFSndIsSuffix!450 lt!840814 lt!840820))))

(declare-fun isSuffix!756 (List!26958 List!26958) Bool)

(assert (=> b!2263255 (isSuffix!756 lt!840820 (++!6541 lt!840814 lt!840820))))

(declare-fun lt!840837 () Unit!39800)

(assert (=> b!2263255 (= lt!840837 lt!840813)))

(declare-fun d!670492 () Bool)

(assert (=> d!670492 e!1449094))

(declare-fun res!967483 () Bool)

(assert (=> d!670492 (=> (not res!967483) (not e!1449094))))

(assert (=> d!670492 (= res!967483 (= (list!10370 (_1!15742 lt!840816)) (list!10370 (_1!15742 (lexRec!520 thiss!16613 rules!1750 (seqFromList!2977 input!1722))))))))

(assert (=> d!670492 (= lt!840816 e!1449093)))

(declare-fun c!359595 () Bool)

(assert (=> d!670492 (= c!359595 ((_ is Some!5249) lt!840829))))

(declare-fun maxPrefixZipperSequenceV2!390 (LexerInterface!3870 List!26959 BalanceConc!17116 BalanceConc!17116) Option!5250)

(assert (=> d!670492 (= lt!840829 (maxPrefixZipperSequenceV2!390 thiss!16613 rules!1750 (seqFromList!2977 input!1722) (seqFromList!2977 input!1722)))))

(declare-fun lt!840812 () Unit!39800)

(declare-fun lt!840809 () Unit!39800)

(assert (=> d!670492 (= lt!840812 lt!840809)))

(declare-fun lt!840815 () List!26958)

(declare-fun lt!840807 () List!26958)

(assert (=> d!670492 (isSuffix!756 lt!840815 (++!6541 lt!840807 lt!840815))))

(assert (=> d!670492 (= lt!840809 (lemmaConcatTwoListThenFSndIsSuffix!450 lt!840807 lt!840815))))

(assert (=> d!670492 (= lt!840815 (list!10369 (seqFromList!2977 input!1722)))))

(assert (=> d!670492 (= lt!840807 (list!10369 (BalanceConc!17117 Empty!8694)))))

(assert (=> d!670492 (= (lexTailRecV2!743 thiss!16613 rules!1750 (seqFromList!2977 input!1722) (BalanceConc!17117 Empty!8694) (seqFromList!2977 input!1722) (BalanceConc!17119 Empty!8695)) lt!840816)))

(declare-fun b!2263256 () Bool)

(assert (=> b!2263256 (= e!1449095 (tuple2!26465 (BalanceConc!17119 Empty!8695) (seqFromList!2977 input!1722)))))

(declare-fun b!2263257 () Bool)

(declare-fun lt!840818 () tuple2!26464)

(assert (=> b!2263257 (= lt!840818 (lexRec!520 thiss!16613 rules!1750 (_2!15745 (v!30287 lt!840832))))))

(declare-fun prepend!990 (BalanceConc!17118 Token!8024) BalanceConc!17118)

(assert (=> b!2263257 (= e!1449095 (tuple2!26465 (prepend!990 (_1!15742 lt!840818) (_1!15745 (v!30287 lt!840832))) (_2!15742 lt!840818)))))

(declare-fun b!2263258 () Bool)

(assert (=> b!2263258 (= e!1449092 (tuple2!26465 (BalanceConc!17119 Empty!8695) lt!840819))))

(declare-fun lt!840808 () tuple2!26464)

(declare-fun b!2263259 () Bool)

(assert (=> b!2263259 (= lt!840808 (lexRec!520 thiss!16613 rules!1750 (_2!15745 (v!30287 lt!840806))))))

(assert (=> b!2263259 (= e!1449092 (tuple2!26465 (prepend!990 (_1!15742 lt!840808) (_1!15745 (v!30287 lt!840806))) (_2!15742 lt!840808)))))

(assert (= (and d!670492 c!359595) b!2263255))

(assert (= (and d!670492 (not c!359595)) b!2263254))

(assert (= (and b!2263255 c!359593) b!2263257))

(assert (= (and b!2263255 (not c!359593)) b!2263256))

(assert (= (and b!2263255 c!359594) b!2263259))

(assert (= (and b!2263255 (not c!359594)) b!2263258))

(assert (= (and d!670492 res!967483) b!2263253))

(declare-fun m!2692749 () Bool)

(assert (=> b!2263259 m!2692749))

(declare-fun m!2692751 () Bool)

(assert (=> b!2263259 m!2692751))

(declare-fun m!2692753 () Bool)

(assert (=> b!2263255 m!2692753))

(declare-fun m!2692755 () Bool)

(assert (=> b!2263255 m!2692755))

(declare-fun m!2692757 () Bool)

(assert (=> b!2263255 m!2692757))

(declare-fun m!2692759 () Bool)

(assert (=> b!2263255 m!2692759))

(declare-fun m!2692761 () Bool)

(assert (=> b!2263255 m!2692761))

(declare-fun m!2692763 () Bool)

(assert (=> b!2263255 m!2692763))

(declare-fun m!2692765 () Bool)

(assert (=> b!2263255 m!2692765))

(declare-fun m!2692767 () Bool)

(assert (=> b!2263255 m!2692767))

(declare-fun m!2692769 () Bool)

(assert (=> b!2263255 m!2692769))

(declare-fun m!2692771 () Bool)

(assert (=> b!2263255 m!2692771))

(assert (=> b!2263255 m!2692757))

(declare-fun m!2692773 () Bool)

(assert (=> b!2263255 m!2692773))

(declare-fun m!2692775 () Bool)

(assert (=> b!2263255 m!2692775))

(declare-fun m!2692777 () Bool)

(assert (=> b!2263255 m!2692777))

(declare-fun m!2692779 () Bool)

(assert (=> b!2263255 m!2692779))

(declare-fun m!2692781 () Bool)

(assert (=> b!2263255 m!2692781))

(declare-fun m!2692783 () Bool)

(assert (=> b!2263255 m!2692783))

(declare-fun m!2692785 () Bool)

(assert (=> b!2263255 m!2692785))

(declare-fun m!2692787 () Bool)

(assert (=> b!2263255 m!2692787))

(declare-fun m!2692789 () Bool)

(assert (=> b!2263255 m!2692789))

(declare-fun m!2692791 () Bool)

(assert (=> b!2263255 m!2692791))

(assert (=> b!2263255 m!2692791))

(assert (=> b!2263255 m!2692769))

(declare-fun m!2692793 () Bool)

(assert (=> b!2263255 m!2692793))

(declare-fun m!2692795 () Bool)

(assert (=> b!2263255 m!2692795))

(declare-fun m!2692797 () Bool)

(assert (=> b!2263255 m!2692797))

(assert (=> b!2263255 m!2692761))

(declare-fun m!2692799 () Bool)

(assert (=> b!2263255 m!2692799))

(assert (=> b!2263255 m!2692793))

(assert (=> b!2263255 m!2692779))

(assert (=> b!2263255 m!2692781))

(declare-fun m!2692801 () Bool)

(assert (=> b!2263255 m!2692801))

(assert (=> b!2263255 m!2691783))

(declare-fun m!2692803 () Bool)

(assert (=> b!2263255 m!2692803))

(declare-fun m!2692805 () Bool)

(assert (=> b!2263255 m!2692805))

(assert (=> b!2263255 m!2692753))

(assert (=> b!2263255 m!2692803))

(assert (=> b!2263255 m!2692791))

(assert (=> b!2263255 m!2692787))

(assert (=> b!2263255 m!2691783))

(declare-fun m!2692807 () Bool)

(assert (=> b!2263255 m!2692807))

(assert (=> b!2263255 m!2692767))

(declare-fun m!2692809 () Bool)

(assert (=> b!2263255 m!2692809))

(assert (=> b!2263255 m!2692803))

(declare-fun m!2692811 () Bool)

(assert (=> b!2263255 m!2692811))

(assert (=> b!2263255 m!2691783))

(declare-fun m!2692813 () Bool)

(assert (=> b!2263255 m!2692813))

(assert (=> b!2263255 m!2692773))

(declare-fun m!2692815 () Bool)

(assert (=> b!2263255 m!2692815))

(declare-fun m!2692817 () Bool)

(assert (=> b!2263255 m!2692817))

(declare-fun m!2692819 () Bool)

(assert (=> d!670492 m!2692819))

(declare-fun m!2692821 () Bool)

(assert (=> d!670492 m!2692821))

(assert (=> d!670492 m!2691783))

(assert (=> d!670492 m!2692245))

(assert (=> d!670492 m!2691783))

(assert (=> d!670492 m!2692813))

(assert (=> d!670492 m!2692767))

(assert (=> d!670492 m!2691783))

(assert (=> d!670492 m!2691783))

(declare-fun m!2692823 () Bool)

(assert (=> d!670492 m!2692823))

(declare-fun m!2692825 () Bool)

(assert (=> d!670492 m!2692825))

(declare-fun m!2692827 () Bool)

(assert (=> d!670492 m!2692827))

(assert (=> d!670492 m!2692819))

(declare-fun m!2692829 () Bool)

(assert (=> d!670492 m!2692829))

(declare-fun m!2692831 () Bool)

(assert (=> b!2263257 m!2692831))

(declare-fun m!2692833 () Bool)

(assert (=> b!2263257 m!2692833))

(declare-fun m!2692835 () Bool)

(assert (=> b!2263253 m!2692835))

(assert (=> b!2263253 m!2691783))

(assert (=> b!2263253 m!2692813))

(declare-fun m!2692837 () Bool)

(assert (=> b!2263253 m!2692837))

(assert (=> d!670312 d!670492))

(declare-fun d!670622 () Bool)

(declare-fun charsToBigInt!0 (List!26957 Int) Int)

(assert (=> d!670622 (= (inv!15 (value!135600 (h!32267 tokens!456))) (= (charsToBigInt!0 (text!31494 (value!135600 (h!32267 tokens!456))) 0) (value!135595 (value!135600 (h!32267 tokens!456)))))))

(declare-fun bs!455627 () Bool)

(assert (= bs!455627 d!670622))

(declare-fun m!2692839 () Bool)

(assert (=> bs!455627 m!2692839))

(assert (=> b!2262617 d!670622))

(declare-fun d!670624 () Bool)

(assert (=> d!670624 (= (inv!36404 (tag!4763 (rule!6585 (h!32267 (t!201792 tokens!456))))) (= (mod (str.len (value!135599 (tag!4763 (rule!6585 (h!32267 (t!201792 tokens!456)))))) 2) 0))))

(assert (=> b!2262839 d!670624))

(declare-fun d!670626 () Bool)

(declare-fun res!967484 () Bool)

(declare-fun e!1449096 () Bool)

(assert (=> d!670626 (=> (not res!967484) (not e!1449096))))

(assert (=> d!670626 (= res!967484 (semiInverseModEq!1724 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))))))

(assert (=> d!670626 (= (inv!36407 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) e!1449096)))

(declare-fun b!2263260 () Bool)

(assert (=> b!2263260 (= e!1449096 (equivClasses!1643 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))))))

(assert (= (and d!670626 res!967484) b!2263260))

(declare-fun m!2692841 () Bool)

(assert (=> d!670626 m!2692841))

(declare-fun m!2692843 () Bool)

(assert (=> b!2263260 m!2692843))

(assert (=> b!2262839 d!670626))

(declare-fun d!670628 () Bool)

(assert (=> d!670628 (= (list!10369 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))) (list!10373 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))))))

(declare-fun bs!455628 () Bool)

(assert (= bs!455628 d!670628))

(declare-fun m!2692845 () Bool)

(assert (=> bs!455628 m!2692845))

(assert (=> b!2262390 d!670628))

(declare-fun b!2263271 () Bool)

(declare-fun e!1449102 () List!26958)

(declare-fun list!10376 (IArray!17393) List!26958)

(assert (=> b!2263271 (= e!1449102 (list!10376 (xs!11636 (c!359412 (charsOf!2661 (head!4856 tokens!456))))))))

(declare-fun d!670630 () Bool)

(declare-fun c!359600 () Bool)

(assert (=> d!670630 (= c!359600 ((_ is Empty!8694) (c!359412 (charsOf!2661 (head!4856 tokens!456)))))))

(declare-fun e!1449101 () List!26958)

(assert (=> d!670630 (= (list!10373 (c!359412 (charsOf!2661 (head!4856 tokens!456)))) e!1449101)))

(declare-fun b!2263272 () Bool)

(assert (=> b!2263272 (= e!1449102 (++!6541 (list!10373 (left!20391 (c!359412 (charsOf!2661 (head!4856 tokens!456))))) (list!10373 (right!20721 (c!359412 (charsOf!2661 (head!4856 tokens!456)))))))))

(declare-fun b!2263270 () Bool)

(assert (=> b!2263270 (= e!1449101 e!1449102)))

(declare-fun c!359601 () Bool)

(assert (=> b!2263270 (= c!359601 ((_ is Leaf!12816) (c!359412 (charsOf!2661 (head!4856 tokens!456)))))))

(declare-fun b!2263269 () Bool)

(assert (=> b!2263269 (= e!1449101 Nil!26864)))

(assert (= (and d!670630 c!359600) b!2263269))

(assert (= (and d!670630 (not c!359600)) b!2263270))

(assert (= (and b!2263270 c!359601) b!2263271))

(assert (= (and b!2263270 (not c!359601)) b!2263272))

(declare-fun m!2692847 () Bool)

(assert (=> b!2263271 m!2692847))

(declare-fun m!2692849 () Bool)

(assert (=> b!2263272 m!2692849))

(declare-fun m!2692851 () Bool)

(assert (=> b!2263272 m!2692851))

(assert (=> b!2263272 m!2692849))

(assert (=> b!2263272 m!2692851))

(declare-fun m!2692853 () Bool)

(assert (=> b!2263272 m!2692853))

(assert (=> d!670256 d!670630))

(declare-fun d!670632 () Bool)

(declare-fun c!359604 () Bool)

(assert (=> d!670632 (= c!359604 ((_ is Nil!26865) rules!1750))))

(declare-fun e!1449105 () (InoxSet Rule!8346))

(assert (=> d!670632 (= (content!3581 rules!1750) e!1449105)))

(declare-fun b!2263277 () Bool)

(assert (=> b!2263277 (= e!1449105 ((as const (Array Rule!8346 Bool)) false))))

(declare-fun b!2263278 () Bool)

(assert (=> b!2263278 (= e!1449105 ((_ map or) (store ((as const (Array Rule!8346 Bool)) false) (h!32266 rules!1750) true) (content!3581 (t!201791 rules!1750))))))

(assert (= (and d!670632 c!359604) b!2263277))

(assert (= (and d!670632 (not c!359604)) b!2263278))

(declare-fun m!2692855 () Bool)

(assert (=> b!2263278 m!2692855))

(assert (=> b!2263278 m!2692399))

(assert (=> d!670302 d!670632))

(declare-fun bs!455629 () Bool)

(declare-fun d!670634 () Bool)

(assert (= bs!455629 (and d!670634 d!670438)))

(declare-fun lambda!85370 () Int)

(assert (=> bs!455629 (= (= (toValue!6023 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (= lambda!85370 lambda!85353))))

(declare-fun bs!455630 () Bool)

(assert (= bs!455630 (and d!670634 d!670444)))

(assert (=> bs!455630 (= (= (toValue!6023 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 otherR!12))) (= lambda!85370 lambda!85354))))

(assert (=> d!670634 true))

(assert (=> d!670634 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 r!2363))) (dynLambda!11659 order!14995 lambda!85370))))

(assert (=> d!670634 (= (equivClasses!1643 (toChars!5882 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 r!2363))) (Forall2!687 lambda!85370))))

(declare-fun bs!455631 () Bool)

(assert (= bs!455631 d!670634))

(declare-fun m!2692857 () Bool)

(assert (=> bs!455631 m!2692857))

(assert (=> b!2262820 d!670634))

(assert (=> b!2262629 d!670230))

(assert (=> b!2262629 d!670238))

(declare-fun b!2263281 () Bool)

(declare-fun e!1449107 () List!26958)

(assert (=> b!2263281 (= e!1449107 (list!10376 (xs!11636 (c!359412 (charsOf!2661 (h!32267 tokens!456))))))))

(declare-fun d!670636 () Bool)

(declare-fun c!359605 () Bool)

(assert (=> d!670636 (= c!359605 ((_ is Empty!8694) (c!359412 (charsOf!2661 (h!32267 tokens!456)))))))

(declare-fun e!1449106 () List!26958)

(assert (=> d!670636 (= (list!10373 (c!359412 (charsOf!2661 (h!32267 tokens!456)))) e!1449106)))

(declare-fun b!2263282 () Bool)

(assert (=> b!2263282 (= e!1449107 (++!6541 (list!10373 (left!20391 (c!359412 (charsOf!2661 (h!32267 tokens!456))))) (list!10373 (right!20721 (c!359412 (charsOf!2661 (h!32267 tokens!456)))))))))

(declare-fun b!2263280 () Bool)

(assert (=> b!2263280 (= e!1449106 e!1449107)))

(declare-fun c!359606 () Bool)

(assert (=> b!2263280 (= c!359606 ((_ is Leaf!12816) (c!359412 (charsOf!2661 (h!32267 tokens!456)))))))

(declare-fun b!2263279 () Bool)

(assert (=> b!2263279 (= e!1449106 Nil!26864)))

(assert (= (and d!670636 c!359605) b!2263279))

(assert (= (and d!670636 (not c!359605)) b!2263280))

(assert (= (and b!2263280 c!359606) b!2263281))

(assert (= (and b!2263280 (not c!359606)) b!2263282))

(declare-fun m!2692859 () Bool)

(assert (=> b!2263281 m!2692859))

(declare-fun m!2692861 () Bool)

(assert (=> b!2263282 m!2692861))

(declare-fun m!2692863 () Bool)

(assert (=> b!2263282 m!2692863))

(assert (=> b!2263282 m!2692861))

(assert (=> b!2263282 m!2692863))

(declare-fun m!2692865 () Bool)

(assert (=> b!2263282 m!2692865))

(assert (=> d!670232 d!670636))

(assert (=> d!670220 d!670302))

(declare-fun d!670638 () Bool)

(declare-fun lt!840838 () Int)

(assert (=> d!670638 (>= lt!840838 0)))

(declare-fun e!1449108 () Int)

(assert (=> d!670638 (= lt!840838 e!1449108)))

(declare-fun c!359607 () Bool)

(assert (=> d!670638 (= c!359607 ((_ is Nil!26864) (t!201790 input!1722)))))

(assert (=> d!670638 (= (size!21056 (t!201790 input!1722)) lt!840838)))

(declare-fun b!2263283 () Bool)

(assert (=> b!2263283 (= e!1449108 0)))

(declare-fun b!2263284 () Bool)

(assert (=> b!2263284 (= e!1449108 (+ 1 (size!21056 (t!201790 (t!201790 input!1722)))))))

(assert (= (and d!670638 c!359607) b!2263283))

(assert (= (and d!670638 (not c!359607)) b!2263284))

(declare-fun m!2692867 () Bool)

(assert (=> b!2263284 m!2692867))

(assert (=> b!2262442 d!670638))

(declare-fun d!670640 () Bool)

(assert (=> d!670640 (= (isEmpty!15194 (originalCharacters!5043 (h!32267 tokens!456))) ((_ is Nil!26864) (originalCharacters!5043 (h!32267 tokens!456))))))

(assert (=> d!670214 d!670640))

(declare-fun d!670642 () Bool)

(assert (=> d!670642 (= (isEmpty!15194 (list!10369 (charsOf!2661 (head!4856 tokens!456)))) ((_ is Nil!26864) (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))

(assert (=> d!670250 d!670642))

(declare-fun b!2263285 () Bool)

(declare-fun e!1449115 () Bool)

(declare-fun e!1449112 () Bool)

(assert (=> b!2263285 (= e!1449115 e!1449112)))

(declare-fun res!967485 () Bool)

(assert (=> b!2263285 (=> (not res!967485) (not e!1449112))))

(declare-fun call!135930 () Bool)

(assert (=> b!2263285 (= res!967485 call!135930)))

(declare-fun b!2263286 () Bool)

(declare-fun e!1449114 () Bool)

(declare-fun e!1449111 () Bool)

(assert (=> b!2263286 (= e!1449114 e!1449111)))

(declare-fun c!359609 () Bool)

(assert (=> b!2263286 (= c!359609 ((_ is Union!6621) (regex!4273 r!2363)))))

(declare-fun b!2263287 () Bool)

(declare-fun call!135929 () Bool)

(assert (=> b!2263287 (= e!1449112 call!135929)))

(declare-fun b!2263289 () Bool)

(declare-fun res!967489 () Bool)

(assert (=> b!2263289 (=> res!967489 e!1449115)))

(assert (=> b!2263289 (= res!967489 (not ((_ is Concat!11057) (regex!4273 r!2363))))))

(assert (=> b!2263289 (= e!1449111 e!1449115)))

(declare-fun call!135931 () Bool)

(declare-fun bm!135924 () Bool)

(declare-fun c!359608 () Bool)

(assert (=> bm!135924 (= call!135931 (validRegex!2480 (ite c!359608 (reg!6950 (regex!4273 r!2363)) (ite c!359609 (regOne!13755 (regex!4273 r!2363)) (regTwo!13754 (regex!4273 r!2363))))))))

(declare-fun b!2263290 () Bool)

(declare-fun e!1449113 () Bool)

(assert (=> b!2263290 (= e!1449113 e!1449114)))

(assert (=> b!2263290 (= c!359608 ((_ is Star!6621) (regex!4273 r!2363)))))

(declare-fun bm!135925 () Bool)

(assert (=> bm!135925 (= call!135929 call!135931)))

(declare-fun bm!135926 () Bool)

(assert (=> bm!135926 (= call!135930 (validRegex!2480 (ite c!359609 (regTwo!13755 (regex!4273 r!2363)) (regOne!13754 (regex!4273 r!2363)))))))

(declare-fun b!2263291 () Bool)

(declare-fun e!1449110 () Bool)

(assert (=> b!2263291 (= e!1449110 call!135931)))

(declare-fun b!2263288 () Bool)

(declare-fun e!1449109 () Bool)

(assert (=> b!2263288 (= e!1449109 call!135930)))

(declare-fun d!670644 () Bool)

(declare-fun res!967487 () Bool)

(assert (=> d!670644 (=> res!967487 e!1449113)))

(assert (=> d!670644 (= res!967487 ((_ is ElementMatch!6621) (regex!4273 r!2363)))))

(assert (=> d!670644 (= (validRegex!2480 (regex!4273 r!2363)) e!1449113)))

(declare-fun b!2263292 () Bool)

(declare-fun res!967486 () Bool)

(assert (=> b!2263292 (=> (not res!967486) (not e!1449109))))

(assert (=> b!2263292 (= res!967486 call!135929)))

(assert (=> b!2263292 (= e!1449111 e!1449109)))

(declare-fun b!2263293 () Bool)

(assert (=> b!2263293 (= e!1449114 e!1449110)))

(declare-fun res!967488 () Bool)

(assert (=> b!2263293 (= res!967488 (not (nullable!1822 (reg!6950 (regex!4273 r!2363)))))))

(assert (=> b!2263293 (=> (not res!967488) (not e!1449110))))

(assert (= (and d!670644 (not res!967487)) b!2263290))

(assert (= (and b!2263290 c!359608) b!2263293))

(assert (= (and b!2263290 (not c!359608)) b!2263286))

(assert (= (and b!2263293 res!967488) b!2263291))

(assert (= (and b!2263286 c!359609) b!2263292))

(assert (= (and b!2263286 (not c!359609)) b!2263289))

(assert (= (and b!2263292 res!967486) b!2263288))

(assert (= (and b!2263289 (not res!967489)) b!2263285))

(assert (= (and b!2263285 res!967485) b!2263287))

(assert (= (or b!2263292 b!2263287) bm!135925))

(assert (= (or b!2263288 b!2263285) bm!135926))

(assert (= (or b!2263291 bm!135925) bm!135924))

(declare-fun m!2692869 () Bool)

(assert (=> bm!135924 m!2692869))

(declare-fun m!2692871 () Bool)

(assert (=> bm!135926 m!2692871))

(declare-fun m!2692873 () Bool)

(assert (=> b!2263293 m!2692873))

(assert (=> d!670250 d!670644))

(declare-fun d!670646 () Bool)

(declare-fun lt!840839 () Int)

(assert (=> d!670646 (>= lt!840839 0)))

(declare-fun e!1449116 () Int)

(assert (=> d!670646 (= lt!840839 e!1449116)))

(declare-fun c!359610 () Bool)

(assert (=> d!670646 (= c!359610 ((_ is Nil!26864) lt!840546))))

(assert (=> d!670646 (= (size!21056 lt!840546) lt!840839)))

(declare-fun b!2263294 () Bool)

(assert (=> b!2263294 (= e!1449116 0)))

(declare-fun b!2263295 () Bool)

(assert (=> b!2263295 (= e!1449116 (+ 1 (size!21056 (t!201790 lt!840546))))))

(assert (= (and d!670646 c!359610) b!2263294))

(assert (= (and d!670646 (not c!359610)) b!2263295))

(declare-fun m!2692875 () Bool)

(assert (=> b!2263295 m!2692875))

(assert (=> b!2262453 d!670646))

(assert (=> b!2262453 d!670238))

(declare-fun d!670648 () Bool)

(declare-fun lt!840840 () Int)

(assert (=> d!670648 (>= lt!840840 0)))

(declare-fun e!1449117 () Int)

(assert (=> d!670648 (= lt!840840 e!1449117)))

(declare-fun c!359611 () Bool)

(assert (=> d!670648 (= c!359611 ((_ is Nil!26864) (_2!15741 lt!840516)))))

(assert (=> d!670648 (= (size!21056 (_2!15741 lt!840516)) lt!840840)))

(declare-fun b!2263296 () Bool)

(assert (=> b!2263296 (= e!1449117 0)))

(declare-fun b!2263297 () Bool)

(assert (=> b!2263297 (= e!1449117 (+ 1 (size!21056 (t!201790 (_2!15741 lt!840516)))))))

(assert (= (and d!670648 c!359611) b!2263296))

(assert (= (and d!670648 (not c!359611)) b!2263297))

(declare-fun m!2692877 () Bool)

(assert (=> b!2263297 m!2692877))

(assert (=> b!2262453 d!670648))

(declare-fun d!670650 () Bool)

(assert (=> d!670650 (= (list!10369 lt!840578) (list!10373 (c!359412 lt!840578)))))

(declare-fun bs!455632 () Bool)

(assert (= bs!455632 d!670650))

(declare-fun m!2692879 () Bool)

(assert (=> bs!455632 m!2692879))

(assert (=> d!670258 d!670650))

(declare-fun d!670652 () Bool)

(declare-fun lt!840841 () Int)

(assert (=> d!670652 (>= lt!840841 0)))

(declare-fun e!1449118 () Int)

(assert (=> d!670652 (= lt!840841 e!1449118)))

(declare-fun c!359612 () Bool)

(assert (=> d!670652 (= c!359612 (and ((_ is Cons!26865) (t!201791 rules!1750)) (= (h!32266 (t!201791 rules!1750)) r!2363)))))

(assert (=> d!670652 (contains!4629 (t!201791 rules!1750) r!2363)))

(assert (=> d!670652 (= (getIndex!294 (t!201791 rules!1750) r!2363) lt!840841)))

(declare-fun b!2263299 () Bool)

(declare-fun e!1449119 () Int)

(assert (=> b!2263299 (= e!1449118 e!1449119)))

(declare-fun c!359613 () Bool)

(assert (=> b!2263299 (= c!359613 (and ((_ is Cons!26865) (t!201791 rules!1750)) (not (= (h!32266 (t!201791 rules!1750)) r!2363))))))

(declare-fun b!2263298 () Bool)

(assert (=> b!2263298 (= e!1449118 0)))

(declare-fun b!2263301 () Bool)

(assert (=> b!2263301 (= e!1449119 (- 1))))

(declare-fun b!2263300 () Bool)

(assert (=> b!2263300 (= e!1449119 (+ 1 (getIndex!294 (t!201791 (t!201791 rules!1750)) r!2363)))))

(assert (= (and d!670652 c!359612) b!2263298))

(assert (= (and d!670652 (not c!359612)) b!2263299))

(assert (= (and b!2263299 c!359613) b!2263300))

(assert (= (and b!2263299 (not c!359613)) b!2263301))

(assert (=> d!670652 m!2692103))

(declare-fun m!2692881 () Bool)

(assert (=> b!2263300 m!2692881))

(assert (=> b!2262417 d!670652))

(declare-fun d!670654 () Bool)

(assert (=> d!670654 true))

(declare-fun lt!840844 () Bool)

(assert (=> d!670654 (= lt!840844 (rulesValidInductive!1492 thiss!16613 rules!1750))))

(declare-fun lambda!85373 () Int)

(declare-fun forall!5473 (List!26959 Int) Bool)

(assert (=> d!670654 (= lt!840844 (forall!5473 rules!1750 lambda!85373))))

(assert (=> d!670654 (= (rulesValid!1567 thiss!16613 rules!1750) lt!840844)))

(declare-fun bs!455633 () Bool)

(assert (= bs!455633 d!670654))

(assert (=> bs!455633 m!2691981))

(declare-fun m!2692883 () Bool)

(assert (=> bs!455633 m!2692883))

(assert (=> d!670294 d!670654))

(assert (=> b!2262434 d!670486))

(declare-fun d!670656 () Bool)

(assert (=> d!670656 (= (head!4858 (++!6541 lt!840524 (_2!15741 lt!840516))) (h!32265 (++!6541 lt!840524 (_2!15741 lt!840516))))))

(assert (=> b!2262434 d!670656))

(declare-fun d!670658 () Bool)

(declare-fun lt!840845 () Bool)

(assert (=> d!670658 (= lt!840845 (select (content!3581 rules!1750) (rule!6585 (_1!15741 (get!8103 lt!840562)))))))

(declare-fun e!1449120 () Bool)

(assert (=> d!670658 (= lt!840845 e!1449120)))

(declare-fun res!967491 () Bool)

(assert (=> d!670658 (=> (not res!967491) (not e!1449120))))

(assert (=> d!670658 (= res!967491 ((_ is Cons!26865) rules!1750))))

(assert (=> d!670658 (= (contains!4629 rules!1750 (rule!6585 (_1!15741 (get!8103 lt!840562)))) lt!840845)))

(declare-fun b!2263304 () Bool)

(declare-fun e!1449121 () Bool)

(assert (=> b!2263304 (= e!1449120 e!1449121)))

(declare-fun res!967490 () Bool)

(assert (=> b!2263304 (=> res!967490 e!1449121)))

(assert (=> b!2263304 (= res!967490 (= (h!32266 rules!1750) (rule!6585 (_1!15741 (get!8103 lt!840562)))))))

(declare-fun b!2263305 () Bool)

(assert (=> b!2263305 (= e!1449121 (contains!4629 (t!201791 rules!1750) (rule!6585 (_1!15741 (get!8103 lt!840562)))))))

(assert (= (and d!670658 res!967491) b!2263304))

(assert (= (and b!2263304 (not res!967490)) b!2263305))

(assert (=> d!670658 m!2691891))

(declare-fun m!2692885 () Bool)

(assert (=> d!670658 m!2692885))

(declare-fun m!2692887 () Bool)

(assert (=> b!2263305 m!2692887))

(assert (=> b!2262493 d!670658))

(assert (=> b!2262493 d!670422))

(declare-fun d!670660 () Bool)

(assert (=> d!670660 (= (isEmpty!15196 lt!840562) (not ((_ is Some!5248) lt!840562)))))

(assert (=> d!670242 d!670660))

(declare-fun d!670662 () Bool)

(declare-fun e!1449123 () Bool)

(assert (=> d!670662 e!1449123))

(declare-fun res!967495 () Bool)

(assert (=> d!670662 (=> res!967495 e!1449123)))

(declare-fun lt!840846 () Bool)

(assert (=> d!670662 (= res!967495 (not lt!840846))))

(declare-fun e!1449124 () Bool)

(assert (=> d!670662 (= lt!840846 e!1449124)))

(declare-fun res!967494 () Bool)

(assert (=> d!670662 (=> res!967494 e!1449124)))

(assert (=> d!670662 (= res!967494 ((_ is Nil!26864) input!1722))))

(assert (=> d!670662 (= (isPrefix!2263 input!1722 input!1722) lt!840846)))

(declare-fun b!2263309 () Bool)

(assert (=> b!2263309 (= e!1449123 (>= (size!21056 input!1722) (size!21056 input!1722)))))

(declare-fun b!2263308 () Bool)

(declare-fun e!1449122 () Bool)

(assert (=> b!2263308 (= e!1449122 (isPrefix!2263 (tail!3265 input!1722) (tail!3265 input!1722)))))

(declare-fun b!2263307 () Bool)

(declare-fun res!967492 () Bool)

(assert (=> b!2263307 (=> (not res!967492) (not e!1449122))))

(assert (=> b!2263307 (= res!967492 (= (head!4858 input!1722) (head!4858 input!1722)))))

(declare-fun b!2263306 () Bool)

(assert (=> b!2263306 (= e!1449124 e!1449122)))

(declare-fun res!967493 () Bool)

(assert (=> b!2263306 (=> (not res!967493) (not e!1449122))))

(assert (=> b!2263306 (= res!967493 (not ((_ is Nil!26864) input!1722)))))

(assert (= (and d!670662 (not res!967494)) b!2263306))

(assert (= (and b!2263306 res!967493) b!2263307))

(assert (= (and b!2263307 res!967492) b!2263308))

(assert (= (and d!670662 (not res!967495)) b!2263309))

(assert (=> b!2263309 m!2691809))

(assert (=> b!2263309 m!2691809))

(assert (=> b!2263308 m!2692069))

(assert (=> b!2263308 m!2692069))

(assert (=> b!2263308 m!2692069))

(assert (=> b!2263308 m!2692069))

(declare-fun m!2692889 () Bool)

(assert (=> b!2263308 m!2692889))

(assert (=> b!2263307 m!2692075))

(assert (=> b!2263307 m!2692075))

(assert (=> d!670242 d!670662))

(declare-fun d!670664 () Bool)

(assert (=> d!670664 (isPrefix!2263 input!1722 input!1722)))

(declare-fun lt!840849 () Unit!39800)

(declare-fun choose!13237 (List!26958 List!26958) Unit!39800)

(assert (=> d!670664 (= lt!840849 (choose!13237 input!1722 input!1722))))

(assert (=> d!670664 (= (lemmaIsPrefixRefl!1450 input!1722 input!1722) lt!840849)))

(declare-fun bs!455634 () Bool)

(assert (= bs!455634 d!670664))

(assert (=> bs!455634 m!2691977))

(declare-fun m!2692891 () Bool)

(assert (=> bs!455634 m!2692891))

(assert (=> d!670242 d!670664))

(declare-fun bs!455635 () Bool)

(declare-fun d!670666 () Bool)

(assert (= bs!455635 (and d!670666 d!670654)))

(declare-fun lambda!85376 () Int)

(assert (=> bs!455635 (= lambda!85376 lambda!85373)))

(assert (=> d!670666 true))

(declare-fun lt!840852 () Bool)

(assert (=> d!670666 (= lt!840852 (forall!5473 rules!1750 lambda!85376))))

(declare-fun e!1449129 () Bool)

(assert (=> d!670666 (= lt!840852 e!1449129)))

(declare-fun res!967501 () Bool)

(assert (=> d!670666 (=> res!967501 e!1449129)))

(assert (=> d!670666 (= res!967501 (not ((_ is Cons!26865) rules!1750)))))

(assert (=> d!670666 (= (rulesValidInductive!1492 thiss!16613 rules!1750) lt!840852)))

(declare-fun b!2263314 () Bool)

(declare-fun e!1449130 () Bool)

(assert (=> b!2263314 (= e!1449129 e!1449130)))

(declare-fun res!967500 () Bool)

(assert (=> b!2263314 (=> (not res!967500) (not e!1449130))))

(assert (=> b!2263314 (= res!967500 (ruleValid!1365 thiss!16613 (h!32266 rules!1750)))))

(declare-fun b!2263315 () Bool)

(assert (=> b!2263315 (= e!1449130 (rulesValidInductive!1492 thiss!16613 (t!201791 rules!1750)))))

(assert (= (and d!670666 (not res!967501)) b!2263314))

(assert (= (and b!2263314 res!967500) b!2263315))

(declare-fun m!2692893 () Bool)

(assert (=> d!670666 m!2692893))

(assert (=> b!2263314 m!2692419))

(assert (=> b!2263315 m!2692491))

(assert (=> d!670242 d!670666))

(assert (=> b!2262579 d!670470))

(assert (=> b!2262579 d!670472))

(declare-fun d!670668 () Bool)

(assert (=> d!670668 (= (list!10369 (_2!15742 lt!840642)) (list!10373 (c!359412 (_2!15742 lt!840642))))))

(declare-fun bs!455636 () Bool)

(assert (= bs!455636 d!670668))

(declare-fun m!2692895 () Bool)

(assert (=> bs!455636 m!2692895))

(assert (=> b!2262816 d!670668))

(assert (=> b!2262816 d!670430))

(assert (=> b!2262816 d!670432))

(declare-fun d!670670 () Bool)

(assert (=> d!670670 (= (nullable!1822 (regex!4273 otherR!12)) (nullableFct!432 (regex!4273 otherR!12)))))

(declare-fun bs!455637 () Bool)

(assert (= bs!455637 d!670670))

(declare-fun m!2692897 () Bool)

(assert (=> bs!455637 m!2692897))

(assert (=> b!2262423 d!670670))

(assert (=> d!670298 d!670644))

(declare-fun bs!455638 () Bool)

(declare-fun d!670672 () Bool)

(assert (= bs!455638 (and d!670672 d!670380)))

(declare-fun lambda!85377 () Int)

(assert (=> bs!455638 (= (and (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (= (toValue!6023 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (= lambda!85377 lambda!85350))))

(declare-fun bs!455639 () Bool)

(assert (= bs!455639 (and d!670672 d!670482)))

(assert (=> bs!455639 (= (and (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (h!32266 rules!1750)))) (= (toValue!6023 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 (h!32266 rules!1750))))) (= lambda!85377 lambda!85355))))

(assert (=> d!670672 true))

(assert (=> d!670672 (< (dynLambda!11656 order!14989 (toChars!5882 (transformation!4273 otherR!12))) (dynLambda!11657 order!14991 lambda!85377))))

(assert (=> d!670672 true))

(assert (=> d!670672 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 otherR!12))) (dynLambda!11657 order!14991 lambda!85377))))

(assert (=> d!670672 (= (semiInverseModEq!1724 (toChars!5882 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 otherR!12))) (Forall!1070 lambda!85377))))

(declare-fun bs!455640 () Bool)

(assert (= bs!455640 d!670672))

(declare-fun m!2692899 () Bool)

(assert (=> bs!455640 m!2692899))

(assert (=> d!670376 d!670672))

(assert (=> bm!135886 d!670642))

(declare-fun d!670674 () Bool)

(declare-fun lt!840855 () Bool)

(assert (=> d!670674 (= lt!840855 (isEmpty!15192 (list!10370 (_1!15742 lt!840642))))))

(declare-fun isEmpty!15199 (Conc!8695) Bool)

(assert (=> d!670674 (= lt!840855 (isEmpty!15199 (c!359414 (_1!15742 lt!840642))))))

(assert (=> d!670674 (= (isEmpty!15198 (_1!15742 lt!840642)) lt!840855)))

(declare-fun bs!455641 () Bool)

(assert (= bs!455641 d!670674))

(assert (=> bs!455641 m!2692243))

(assert (=> bs!455641 m!2692243))

(declare-fun m!2692901 () Bool)

(assert (=> bs!455641 m!2692901))

(declare-fun m!2692903 () Bool)

(assert (=> bs!455641 m!2692903))

(assert (=> b!2262818 d!670674))

(assert (=> b!2262497 d!670422))

(declare-fun d!670676 () Bool)

(declare-fun dynLambda!11665 (Int BalanceConc!17116) TokenValue!4435)

(assert (=> d!670676 (= (apply!6578 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))) (seqFromList!2977 (originalCharacters!5043 (_1!15741 (get!8103 lt!840562))))) (dynLambda!11665 (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))) (seqFromList!2977 (originalCharacters!5043 (_1!15741 (get!8103 lt!840562))))))))

(declare-fun b_lambda!72207 () Bool)

(assert (=> (not b_lambda!72207) (not d!670676)))

(declare-fun t!201908 () Bool)

(declare-fun tb!134251 () Bool)

(assert (=> (and b!2262351 (= (toValue!6023 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201908) tb!134251))

(declare-fun result!163680 () Bool)

(assert (=> tb!134251 (= result!163680 (inv!21 (dynLambda!11665 (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562))))) (seqFromList!2977 (originalCharacters!5043 (_1!15741 (get!8103 lt!840562)))))))))

(declare-fun m!2692905 () Bool)

(assert (=> tb!134251 m!2692905))

(assert (=> d!670676 t!201908))

(declare-fun b_and!177949 () Bool)

(assert (= b_and!177809 (and (=> t!201908 result!163680) b_and!177949)))

(declare-fun t!201910 () Bool)

(declare-fun tb!134253 () Bool)

(assert (=> (and b!2262372 (= (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201910) tb!134253))

(declare-fun result!163684 () Bool)

(assert (= result!163684 result!163680))

(assert (=> d!670676 t!201910))

(declare-fun b_and!177951 () Bool)

(assert (= b_and!177821 (and (=> t!201910 result!163684) b_and!177951)))

(declare-fun t!201912 () Bool)

(declare-fun tb!134255 () Bool)

(assert (=> (and b!2262840 (= (toValue!6023 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201912) tb!134255))

(declare-fun result!163686 () Bool)

(assert (= result!163686 result!163680))

(assert (=> d!670676 t!201912))

(declare-fun b_and!177953 () Bool)

(assert (= b_and!177881 (and (=> t!201912 result!163686) b_and!177953)))

(declare-fun tb!134257 () Bool)

(declare-fun t!201914 () Bool)

(assert (=> (and b!2262371 (= (toValue!6023 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201914) tb!134257))

(declare-fun result!163688 () Bool)

(assert (= result!163688 result!163680))

(assert (=> d!670676 t!201914))

(declare-fun b_and!177955 () Bool)

(assert (= b_and!177817 (and (=> t!201914 result!163688) b_and!177955)))

(declare-fun tb!134259 () Bool)

(declare-fun t!201916 () Bool)

(assert (=> (and b!2262866 (= (toValue!6023 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201916) tb!134259))

(declare-fun result!163690 () Bool)

(assert (= result!163690 result!163680))

(assert (=> d!670676 t!201916))

(declare-fun b_and!177957 () Bool)

(assert (= b_and!177885 (and (=> t!201916 result!163690) b_and!177957)))

(declare-fun tb!134261 () Bool)

(declare-fun t!201918 () Bool)

(assert (=> (and b!2262364 (= (toValue!6023 (transformation!4273 otherR!12)) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201918) tb!134261))

(declare-fun result!163692 () Bool)

(assert (= result!163692 result!163680))

(assert (=> d!670676 t!201918))

(declare-fun b_and!177959 () Bool)

(assert (= b_and!177813 (and (=> t!201918 result!163692) b_and!177959)))

(assert (=> d!670676 m!2691959))

(declare-fun m!2692907 () Bool)

(assert (=> d!670676 m!2692907))

(assert (=> b!2262497 d!670676))

(declare-fun d!670678 () Bool)

(assert (=> d!670678 (= (seqFromList!2977 (originalCharacters!5043 (_1!15741 (get!8103 lt!840562)))) (fromListB!1334 (originalCharacters!5043 (_1!15741 (get!8103 lt!840562)))))))

(declare-fun bs!455642 () Bool)

(assert (= bs!455642 d!670678))

(declare-fun m!2692909 () Bool)

(assert (=> bs!455642 m!2692909))

(assert (=> b!2262497 d!670678))

(assert (=> b!2262498 d!670424))

(assert (=> b!2262498 d!670426))

(assert (=> b!2262498 d!670422))

(declare-fun d!670680 () Bool)

(declare-fun c!359616 () Bool)

(assert (=> d!670680 (= c!359616 ((_ is Node!8694) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))))))

(declare-fun e!1449138 () Bool)

(assert (=> d!670680 (= (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))) e!1449138)))

(declare-fun b!2263324 () Bool)

(declare-fun inv!36413 (Conc!8694) Bool)

(assert (=> b!2263324 (= e!1449138 (inv!36413 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))))))

(declare-fun b!2263325 () Bool)

(declare-fun e!1449139 () Bool)

(assert (=> b!2263325 (= e!1449138 e!1449139)))

(declare-fun res!967504 () Bool)

(assert (=> b!2263325 (= res!967504 (not ((_ is Leaf!12816) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))))))))

(assert (=> b!2263325 (=> res!967504 e!1449139)))

(declare-fun b!2263326 () Bool)

(declare-fun inv!36414 (Conc!8694) Bool)

(assert (=> b!2263326 (= e!1449139 (inv!36414 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))))))

(assert (= (and d!670680 c!359616) b!2263324))

(assert (= (and d!670680 (not c!359616)) b!2263325))

(assert (= (and b!2263325 (not res!967504)) b!2263326))

(declare-fun m!2692911 () Bool)

(assert (=> b!2263324 m!2692911))

(declare-fun m!2692913 () Bool)

(assert (=> b!2263326 m!2692913))

(assert (=> b!2262584 d!670680))

(declare-fun d!670682 () Bool)

(assert (=> d!670682 (= r!2363 otherR!12)))

(assert (=> d!670682 true))

(declare-fun _$42!193 () Unit!39800)

(assert (=> d!670682 (= (choose!13235 rules!1750 r!2363 otherR!12) _$42!193)))

(assert (=> d!670292 d!670682))

(assert (=> d!670292 d!670302))

(declare-fun d!670684 () Bool)

(declare-fun e!1449141 () Bool)

(assert (=> d!670684 e!1449141))

(declare-fun res!967508 () Bool)

(assert (=> d!670684 (=> res!967508 e!1449141)))

(declare-fun lt!840856 () Bool)

(assert (=> d!670684 (= res!967508 (not lt!840856))))

(declare-fun e!1449142 () Bool)

(assert (=> d!670684 (= lt!840856 e!1449142)))

(declare-fun res!967507 () Bool)

(assert (=> d!670684 (=> res!967507 e!1449142)))

(assert (=> d!670684 (= res!967507 ((_ is Nil!26864) (tail!3265 otherP!12)))))

(assert (=> d!670684 (= (isPrefix!2263 (tail!3265 otherP!12) (tail!3265 input!1722)) lt!840856)))

(declare-fun b!2263330 () Bool)

(assert (=> b!2263330 (= e!1449141 (>= (size!21056 (tail!3265 input!1722)) (size!21056 (tail!3265 otherP!12))))))

(declare-fun b!2263329 () Bool)

(declare-fun e!1449140 () Bool)

(assert (=> b!2263329 (= e!1449140 (isPrefix!2263 (tail!3265 (tail!3265 otherP!12)) (tail!3265 (tail!3265 input!1722))))))

(declare-fun b!2263328 () Bool)

(declare-fun res!967505 () Bool)

(assert (=> b!2263328 (=> (not res!967505) (not e!1449140))))

(assert (=> b!2263328 (= res!967505 (= (head!4858 (tail!3265 otherP!12)) (head!4858 (tail!3265 input!1722))))))

(declare-fun b!2263327 () Bool)

(assert (=> b!2263327 (= e!1449142 e!1449140)))

(declare-fun res!967506 () Bool)

(assert (=> b!2263327 (=> (not res!967506) (not e!1449140))))

(assert (=> b!2263327 (= res!967506 (not ((_ is Nil!26864) (tail!3265 input!1722))))))

(assert (= (and d!670684 (not res!967507)) b!2263327))

(assert (= (and b!2263327 res!967506) b!2263328))

(assert (= (and b!2263328 res!967505) b!2263329))

(assert (= (and d!670684 (not res!967508)) b!2263330))

(assert (=> b!2263330 m!2692069))

(declare-fun m!2692915 () Bool)

(assert (=> b!2263330 m!2692915))

(assert (=> b!2263330 m!2692067))

(declare-fun m!2692917 () Bool)

(assert (=> b!2263330 m!2692917))

(assert (=> b!2263329 m!2692067))

(declare-fun m!2692919 () Bool)

(assert (=> b!2263329 m!2692919))

(assert (=> b!2263329 m!2692069))

(declare-fun m!2692921 () Bool)

(assert (=> b!2263329 m!2692921))

(assert (=> b!2263329 m!2692919))

(assert (=> b!2263329 m!2692921))

(declare-fun m!2692923 () Bool)

(assert (=> b!2263329 m!2692923))

(assert (=> b!2263328 m!2692067))

(declare-fun m!2692925 () Bool)

(assert (=> b!2263328 m!2692925))

(assert (=> b!2263328 m!2692069))

(declare-fun m!2692927 () Bool)

(assert (=> b!2263328 m!2692927))

(assert (=> b!2262623 d!670684))

(declare-fun d!670686 () Bool)

(assert (=> d!670686 (= (tail!3265 otherP!12) (t!201790 otherP!12))))

(assert (=> b!2262623 d!670686))

(declare-fun d!670688 () Bool)

(assert (=> d!670688 (= (tail!3265 input!1722) (t!201790 input!1722))))

(assert (=> b!2262623 d!670688))

(declare-fun d!670690 () Bool)

(declare-fun lt!840857 () Int)

(assert (=> d!670690 (>= lt!840857 0)))

(declare-fun e!1449143 () Int)

(assert (=> d!670690 (= lt!840857 e!1449143)))

(declare-fun c!359617 () Bool)

(assert (=> d!670690 (= c!359617 ((_ is Nil!26864) (++!6541 lt!840524 (_2!15741 lt!840516))))))

(assert (=> d!670690 (= (size!21056 (++!6541 lt!840524 (_2!15741 lt!840516))) lt!840857)))

(declare-fun b!2263331 () Bool)

(assert (=> b!2263331 (= e!1449143 0)))

(declare-fun b!2263332 () Bool)

(assert (=> b!2263332 (= e!1449143 (+ 1 (size!21056 (t!201790 (++!6541 lt!840524 (_2!15741 lt!840516))))))))

(assert (= (and d!670690 c!359617) b!2263331))

(assert (= (and d!670690 (not c!359617)) b!2263332))

(declare-fun m!2692929 () Bool)

(assert (=> b!2263332 m!2692929))

(assert (=> b!2262436 d!670690))

(assert (=> b!2262436 d!670238))

(declare-fun b!2263333 () Bool)

(declare-fun e!1449145 () List!26958)

(assert (=> b!2263333 (= e!1449145 (_2!15741 (get!8103 lt!840562)))))

(declare-fun b!2263336 () Bool)

(declare-fun e!1449144 () Bool)

(declare-fun lt!840858 () List!26958)

(assert (=> b!2263336 (= e!1449144 (or (not (= (_2!15741 (get!8103 lt!840562)) Nil!26864)) (= lt!840858 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))))))))

(declare-fun d!670692 () Bool)

(assert (=> d!670692 e!1449144))

(declare-fun res!967509 () Bool)

(assert (=> d!670692 (=> (not res!967509) (not e!1449144))))

(assert (=> d!670692 (= res!967509 (= (content!3582 lt!840858) ((_ map or) (content!3582 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))) (content!3582 (_2!15741 (get!8103 lt!840562))))))))

(assert (=> d!670692 (= lt!840858 e!1449145)))

(declare-fun c!359618 () Bool)

(assert (=> d!670692 (= c!359618 ((_ is Nil!26864) (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))))))

(assert (=> d!670692 (= (++!6541 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562)))) (_2!15741 (get!8103 lt!840562))) lt!840858)))

(declare-fun b!2263334 () Bool)

(assert (=> b!2263334 (= e!1449145 (Cons!26864 (h!32265 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))) (++!6541 (t!201790 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))) (_2!15741 (get!8103 lt!840562)))))))

(declare-fun b!2263335 () Bool)

(declare-fun res!967510 () Bool)

(assert (=> b!2263335 (=> (not res!967510) (not e!1449144))))

(assert (=> b!2263335 (= res!967510 (= (size!21056 lt!840858) (+ (size!21056 (list!10369 (charsOf!2661 (_1!15741 (get!8103 lt!840562))))) (size!21056 (_2!15741 (get!8103 lt!840562))))))))

(assert (= (and d!670692 c!359618) b!2263333))

(assert (= (and d!670692 (not c!359618)) b!2263334))

(assert (= (and d!670692 res!967509) b!2263335))

(assert (= (and b!2263335 res!967510) b!2263336))

(declare-fun m!2692931 () Bool)

(assert (=> d!670692 m!2692931))

(assert (=> d!670692 m!2691969))

(declare-fun m!2692933 () Bool)

(assert (=> d!670692 m!2692933))

(declare-fun m!2692935 () Bool)

(assert (=> d!670692 m!2692935))

(declare-fun m!2692937 () Bool)

(assert (=> b!2263334 m!2692937))

(declare-fun m!2692939 () Bool)

(assert (=> b!2263335 m!2692939))

(assert (=> b!2263335 m!2691969))

(declare-fun m!2692941 () Bool)

(assert (=> b!2263335 m!2692941))

(assert (=> b!2263335 m!2691983))

(assert (=> b!2262495 d!670692))

(assert (=> b!2262495 d!670424))

(assert (=> b!2262495 d!670426))

(assert (=> b!2262495 d!670422))

(declare-fun b!2263339 () Bool)

(declare-fun e!1449147 () List!26958)

(assert (=> b!2263339 (= e!1449147 (list!10376 (xs!11636 (c!359412 (_2!15742 lt!840522)))))))

(declare-fun d!670694 () Bool)

(declare-fun c!359619 () Bool)

(assert (=> d!670694 (= c!359619 ((_ is Empty!8694) (c!359412 (_2!15742 lt!840522))))))

(declare-fun e!1449146 () List!26958)

(assert (=> d!670694 (= (list!10373 (c!359412 (_2!15742 lt!840522))) e!1449146)))

(declare-fun b!2263340 () Bool)

(assert (=> b!2263340 (= e!1449147 (++!6541 (list!10373 (left!20391 (c!359412 (_2!15742 lt!840522)))) (list!10373 (right!20721 (c!359412 (_2!15742 lt!840522))))))))

(declare-fun b!2263338 () Bool)

(assert (=> b!2263338 (= e!1449146 e!1449147)))

(declare-fun c!359620 () Bool)

(assert (=> b!2263338 (= c!359620 ((_ is Leaf!12816) (c!359412 (_2!15742 lt!840522))))))

(declare-fun b!2263337 () Bool)

(assert (=> b!2263337 (= e!1449146 Nil!26864)))

(assert (= (and d!670694 c!359619) b!2263337))

(assert (= (and d!670694 (not c!359619)) b!2263338))

(assert (= (and b!2263338 c!359620) b!2263339))

(assert (= (and b!2263338 (not c!359620)) b!2263340))

(declare-fun m!2692943 () Bool)

(assert (=> b!2263339 m!2692943))

(declare-fun m!2692945 () Bool)

(assert (=> b!2263340 m!2692945))

(declare-fun m!2692947 () Bool)

(assert (=> b!2263340 m!2692947))

(assert (=> b!2263340 m!2692945))

(assert (=> b!2263340 m!2692947))

(declare-fun m!2692949 () Bool)

(assert (=> b!2263340 m!2692949))

(assert (=> d!670310 d!670694))

(declare-fun d!670696 () Bool)

(assert (=> d!670696 (= (list!10369 lt!840543) (list!10373 (c!359412 lt!840543)))))

(declare-fun bs!455643 () Bool)

(assert (= bs!455643 d!670696))

(declare-fun m!2692951 () Bool)

(assert (=> bs!455643 m!2692951))

(assert (=> d!670234 d!670696))

(assert (=> b!2262645 d!670436))

(declare-fun d!670698 () Bool)

(declare-fun charsToInt!0 (List!26957) (_ BitVec 32))

(assert (=> d!670698 (= (inv!16 (value!135600 (h!32267 tokens!456))) (= (charsToInt!0 (text!31492 (value!135600 (h!32267 tokens!456)))) (value!135591 (value!135600 (h!32267 tokens!456)))))))

(declare-fun bs!455644 () Bool)

(assert (= bs!455644 d!670698))

(declare-fun m!2692953 () Bool)

(assert (=> bs!455644 m!2692953))

(assert (=> b!2262616 d!670698))

(declare-fun d!670700 () Bool)

(declare-fun lt!840859 () Int)

(assert (=> d!670700 (>= lt!840859 0)))

(declare-fun e!1449148 () Int)

(assert (=> d!670700 (= lt!840859 e!1449148)))

(declare-fun c!359621 () Bool)

(assert (=> d!670700 (= c!359621 ((_ is Nil!26864) (originalCharacters!5043 (h!32267 tokens!456))))))

(assert (=> d!670700 (= (size!21056 (originalCharacters!5043 (h!32267 tokens!456))) lt!840859)))

(declare-fun b!2263341 () Bool)

(assert (=> b!2263341 (= e!1449148 0)))

(declare-fun b!2263342 () Bool)

(assert (=> b!2263342 (= e!1449148 (+ 1 (size!21056 (t!201790 (originalCharacters!5043 (h!32267 tokens!456))))))))

(assert (= (and d!670700 c!359621) b!2263341))

(assert (= (and d!670700 (not c!359621)) b!2263342))

(declare-fun m!2692955 () Bool)

(assert (=> b!2263342 m!2692955))

(assert (=> b!2262391 d!670700))

(declare-fun d!670702 () Bool)

(declare-fun c!359622 () Bool)

(assert (=> d!670702 (= c!359622 ((_ is Node!8694) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))))))

(declare-fun e!1449149 () Bool)

(assert (=> d!670702 (= (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))) e!1449149)))

(declare-fun b!2263343 () Bool)

(assert (=> b!2263343 (= e!1449149 (inv!36413 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))))))

(declare-fun b!2263344 () Bool)

(declare-fun e!1449150 () Bool)

(assert (=> b!2263344 (= e!1449149 e!1449150)))

(declare-fun res!967511 () Bool)

(assert (=> b!2263344 (= res!967511 (not ((_ is Leaf!12816) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))))))))

(assert (=> b!2263344 (=> res!967511 e!1449150)))

(declare-fun b!2263345 () Bool)

(assert (=> b!2263345 (= e!1449150 (inv!36414 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))))))

(assert (= (and d!670702 c!359622) b!2263343))

(assert (= (and d!670702 (not c!359622)) b!2263344))

(assert (= (and b!2263344 (not res!967511)) b!2263345))

(declare-fun m!2692957 () Bool)

(assert (=> b!2263343 m!2692957))

(declare-fun m!2692959 () Bool)

(assert (=> b!2263345 m!2692959))

(assert (=> b!2262396 d!670702))

(declare-fun b!2263346 () Bool)

(declare-fun res!967514 () Bool)

(declare-fun e!1449155 () Bool)

(assert (=> b!2263346 (=> (not res!967514) (not e!1449155))))

(assert (=> b!2263346 (= res!967514 (isEmpty!15194 (tail!3265 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))

(declare-fun b!2263347 () Bool)

(declare-fun e!1449151 () Bool)

(declare-fun e!1449152 () Bool)

(assert (=> b!2263347 (= e!1449151 e!1449152)))

(declare-fun c!359623 () Bool)

(assert (=> b!2263347 (= c!359623 ((_ is EmptyLang!6621) (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))

(declare-fun b!2263348 () Bool)

(declare-fun e!1449153 () Bool)

(declare-fun e!1449154 () Bool)

(assert (=> b!2263348 (= e!1449153 e!1449154)))

(declare-fun res!967519 () Bool)

(assert (=> b!2263348 (=> res!967519 e!1449154)))

(declare-fun call!135932 () Bool)

(assert (=> b!2263348 (= res!967519 call!135932)))

(declare-fun b!2263349 () Bool)

(declare-fun e!1449156 () Bool)

(assert (=> b!2263349 (= e!1449156 (matchR!2882 (derivativeStep!1484 (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) (head!4858 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))) (tail!3265 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))

(declare-fun b!2263350 () Bool)

(declare-fun e!1449157 () Bool)

(assert (=> b!2263350 (= e!1449157 e!1449153)))

(declare-fun res!967512 () Bool)

(assert (=> b!2263350 (=> (not res!967512) (not e!1449153))))

(declare-fun lt!840860 () Bool)

(assert (=> b!2263350 (= res!967512 (not lt!840860))))

(declare-fun b!2263351 () Bool)

(assert (=> b!2263351 (= e!1449154 (not (= (head!4858 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) (c!359413 (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))))

(declare-fun b!2263352 () Bool)

(assert (=> b!2263352 (= e!1449152 (not lt!840860))))

(declare-fun d!670704 () Bool)

(assert (=> d!670704 e!1449151))

(declare-fun c!359625 () Bool)

(assert (=> d!670704 (= c!359625 ((_ is EmptyExpr!6621) (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))

(assert (=> d!670704 (= lt!840860 e!1449156)))

(declare-fun c!359624 () Bool)

(assert (=> d!670704 (= c!359624 (isEmpty!15194 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(assert (=> d!670704 (validRegex!2480 (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(assert (=> d!670704 (= (matchR!2882 (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) lt!840860)))

(declare-fun b!2263353 () Bool)

(assert (=> b!2263353 (= e!1449155 (= (head!4858 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) (c!359413 (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))))

(declare-fun b!2263354 () Bool)

(assert (=> b!2263354 (= e!1449151 (= lt!840860 call!135932))))

(declare-fun b!2263355 () Bool)

(declare-fun res!967515 () Bool)

(assert (=> b!2263355 (=> (not res!967515) (not e!1449155))))

(assert (=> b!2263355 (= res!967515 (not call!135932))))

(declare-fun b!2263356 () Bool)

(declare-fun res!967517 () Bool)

(assert (=> b!2263356 (=> res!967517 e!1449154)))

(assert (=> b!2263356 (= res!967517 (not (isEmpty!15194 (tail!3265 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))))

(declare-fun b!2263357 () Bool)

(declare-fun res!967513 () Bool)

(assert (=> b!2263357 (=> res!967513 e!1449157)))

(assert (=> b!2263357 (= res!967513 (not ((_ is ElementMatch!6621) (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))))

(assert (=> b!2263357 (= e!1449152 e!1449157)))

(declare-fun bm!135927 () Bool)

(assert (=> bm!135927 (= call!135932 (isEmpty!15194 (tail!3265 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(declare-fun b!2263358 () Bool)

(assert (=> b!2263358 (= e!1449156 (nullable!1822 (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))))

(declare-fun b!2263359 () Bool)

(declare-fun res!967518 () Bool)

(assert (=> b!2263359 (=> res!967518 e!1449157)))

(assert (=> b!2263359 (= res!967518 e!1449155)))

(declare-fun res!967516 () Bool)

(assert (=> b!2263359 (=> (not res!967516) (not e!1449155))))

(assert (=> b!2263359 (= res!967516 lt!840860)))

(assert (= (and d!670704 c!359624) b!2263358))

(assert (= (and d!670704 (not c!359624)) b!2263349))

(assert (= (and d!670704 c!359625) b!2263354))

(assert (= (and d!670704 (not c!359625)) b!2263347))

(assert (= (and b!2263347 c!359623) b!2263352))

(assert (= (and b!2263347 (not c!359623)) b!2263357))

(assert (= (and b!2263357 (not res!967513)) b!2263359))

(assert (= (and b!2263359 res!967516) b!2263355))

(assert (= (and b!2263355 res!967515) b!2263346))

(assert (= (and b!2263346 res!967514) b!2263353))

(assert (= (and b!2263359 (not res!967518)) b!2263350))

(assert (= (and b!2263350 res!967512) b!2263348))

(assert (= (and b!2263348 (not res!967519)) b!2263356))

(assert (= (and b!2263356 (not res!967517)) b!2263351))

(assert (= (or b!2263354 b!2263348 b!2263355) bm!135927))

(assert (=> bm!135927 m!2692017))

(assert (=> bm!135927 m!2692025))

(assert (=> b!2263349 m!2692017))

(declare-fun m!2692961 () Bool)

(assert (=> b!2263349 m!2692961))

(assert (=> b!2263349 m!2692015))

(assert (=> b!2263349 m!2692961))

(declare-fun m!2692963 () Bool)

(assert (=> b!2263349 m!2692963))

(assert (=> b!2263349 m!2692017))

(declare-fun m!2692965 () Bool)

(assert (=> b!2263349 m!2692965))

(assert (=> b!2263349 m!2692963))

(assert (=> b!2263349 m!2692965))

(declare-fun m!2692967 () Bool)

(assert (=> b!2263349 m!2692967))

(assert (=> b!2263351 m!2692017))

(assert (=> b!2263351 m!2692961))

(assert (=> b!2263358 m!2692015))

(declare-fun m!2692969 () Bool)

(assert (=> b!2263358 m!2692969))

(assert (=> b!2263353 m!2692017))

(assert (=> b!2263353 m!2692961))

(assert (=> d!670704 m!2692017))

(assert (=> d!670704 m!2692025))

(assert (=> d!670704 m!2692015))

(declare-fun m!2692971 () Bool)

(assert (=> d!670704 m!2692971))

(assert (=> b!2263356 m!2692017))

(assert (=> b!2263356 m!2692965))

(assert (=> b!2263356 m!2692965))

(declare-fun m!2692973 () Bool)

(assert (=> b!2263356 m!2692973))

(assert (=> b!2263346 m!2692017))

(assert (=> b!2263346 m!2692965))

(assert (=> b!2263346 m!2692965))

(assert (=> b!2263346 m!2692973))

(assert (=> b!2262572 d!670704))

(declare-fun b!2263380 () Bool)

(declare-fun c!359640 () Bool)

(assert (=> b!2263380 (= c!359640 ((_ is Union!6621) (regex!4273 r!2363)))))

(declare-fun e!1449171 () Regex!6621)

(declare-fun e!1449168 () Regex!6621)

(assert (=> b!2263380 (= e!1449171 e!1449168)))

(declare-fun b!2263381 () Bool)

(declare-fun e!1449170 () Regex!6621)

(declare-fun call!135941 () Regex!6621)

(assert (=> b!2263381 (= e!1449170 (Concat!11057 call!135941 (regex!4273 r!2363)))))

(declare-fun b!2263382 () Bool)

(declare-fun c!359639 () Bool)

(assert (=> b!2263382 (= c!359639 (nullable!1822 (regOne!13754 (regex!4273 r!2363))))))

(declare-fun e!1449172 () Regex!6621)

(assert (=> b!2263382 (= e!1449170 e!1449172)))

(declare-fun call!135944 () Regex!6621)

(declare-fun c!359638 () Bool)

(declare-fun bm!135936 () Bool)

(assert (=> bm!135936 (= call!135944 (derivativeStep!1484 (ite c!359640 (regTwo!13755 (regex!4273 r!2363)) (ite c!359638 (reg!6950 (regex!4273 r!2363)) (regOne!13754 (regex!4273 r!2363)))) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(declare-fun b!2263383 () Bool)

(declare-fun call!135942 () Regex!6621)

(assert (=> b!2263383 (= e!1449168 (Union!6621 call!135942 call!135944))))

(declare-fun b!2263384 () Bool)

(declare-fun e!1449169 () Regex!6621)

(assert (=> b!2263384 (= e!1449169 e!1449171)))

(declare-fun c!359636 () Bool)

(assert (=> b!2263384 (= c!359636 ((_ is ElementMatch!6621) (regex!4273 r!2363)))))

(declare-fun bm!135937 () Bool)

(declare-fun call!135943 () Regex!6621)

(assert (=> bm!135937 (= call!135943 call!135941)))

(declare-fun b!2263385 () Bool)

(assert (=> b!2263385 (= e!1449171 (ite (= (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))) (c!359413 (regex!4273 r!2363))) EmptyExpr!6621 EmptyLang!6621))))

(declare-fun bm!135938 () Bool)

(assert (=> bm!135938 (= call!135941 call!135944)))

(declare-fun b!2263386 () Bool)

(assert (=> b!2263386 (= e!1449172 (Union!6621 (Concat!11057 call!135943 (regTwo!13754 (regex!4273 r!2363))) call!135942))))

(declare-fun b!2263387 () Bool)

(assert (=> b!2263387 (= e!1449172 (Union!6621 (Concat!11057 call!135943 (regTwo!13754 (regex!4273 r!2363))) EmptyLang!6621))))

(declare-fun d!670706 () Bool)

(declare-fun lt!840863 () Regex!6621)

(assert (=> d!670706 (validRegex!2480 lt!840863)))

(assert (=> d!670706 (= lt!840863 e!1449169)))

(declare-fun c!359637 () Bool)

(assert (=> d!670706 (= c!359637 (or ((_ is EmptyExpr!6621) (regex!4273 r!2363)) ((_ is EmptyLang!6621) (regex!4273 r!2363))))))

(assert (=> d!670706 (validRegex!2480 (regex!4273 r!2363))))

(assert (=> d!670706 (= (derivativeStep!1484 (regex!4273 r!2363) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))) lt!840863)))

(declare-fun b!2263388 () Bool)

(assert (=> b!2263388 (= e!1449169 EmptyLang!6621)))

(declare-fun bm!135939 () Bool)

(assert (=> bm!135939 (= call!135942 (derivativeStep!1484 (ite c!359640 (regOne!13755 (regex!4273 r!2363)) (regTwo!13754 (regex!4273 r!2363))) (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456))))))))

(declare-fun b!2263389 () Bool)

(assert (=> b!2263389 (= e!1449168 e!1449170)))

(assert (=> b!2263389 (= c!359638 ((_ is Star!6621) (regex!4273 r!2363)))))

(assert (= (and d!670706 c!359637) b!2263388))

(assert (= (and d!670706 (not c!359637)) b!2263384))

(assert (= (and b!2263384 c!359636) b!2263385))

(assert (= (and b!2263384 (not c!359636)) b!2263380))

(assert (= (and b!2263380 c!359640) b!2263383))

(assert (= (and b!2263380 (not c!359640)) b!2263389))

(assert (= (and b!2263389 c!359638) b!2263381))

(assert (= (and b!2263389 (not c!359638)) b!2263382))

(assert (= (and b!2263382 c!359639) b!2263386))

(assert (= (and b!2263382 (not c!359639)) b!2263387))

(assert (= (or b!2263386 b!2263387) bm!135937))

(assert (= (or b!2263381 bm!135937) bm!135938))

(assert (= (or b!2263383 b!2263386) bm!135939))

(assert (= (or b!2263383 bm!135938) bm!135936))

(declare-fun m!2692975 () Bool)

(assert (=> b!2263382 m!2692975))

(assert (=> bm!135936 m!2692013))

(declare-fun m!2692977 () Bool)

(assert (=> bm!135936 m!2692977))

(declare-fun m!2692979 () Bool)

(assert (=> d!670706 m!2692979))

(assert (=> d!670706 m!2692023))

(assert (=> bm!135939 m!2692013))

(declare-fun m!2692981 () Bool)

(assert (=> bm!135939 m!2692981))

(assert (=> b!2262572 d!670706))

(declare-fun d!670708 () Bool)

(assert (=> d!670708 (= (head!4858 (list!10369 (charsOf!2661 (head!4856 tokens!456)))) (h!32265 (list!10369 (charsOf!2661 (head!4856 tokens!456)))))))

(assert (=> b!2262572 d!670708))

(assert (=> b!2262572 d!670472))

(declare-fun bs!455645 () Bool)

(declare-fun d!670710 () Bool)

(assert (= bs!455645 (and d!670710 d!670380)))

(declare-fun lambda!85378 () Int)

(assert (=> bs!455645 (= (and (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (= (toValue!6023 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456)))))) (= lambda!85378 lambda!85350))))

(declare-fun bs!455646 () Bool)

(assert (= bs!455646 (and d!670710 d!670482)))

(assert (=> bs!455646 (= (and (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (h!32266 rules!1750)))) (= (toValue!6023 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 (h!32266 rules!1750))))) (= lambda!85378 lambda!85355))))

(declare-fun bs!455647 () Bool)

(assert (= bs!455647 (and d!670710 d!670672)))

(assert (=> bs!455647 (= (and (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 otherR!12))) (= (toValue!6023 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 otherR!12)))) (= lambda!85378 lambda!85377))))

(assert (=> d!670710 true))

(assert (=> d!670710 (< (dynLambda!11656 order!14989 (toChars!5882 (transformation!4273 r!2363))) (dynLambda!11657 order!14991 lambda!85378))))

(assert (=> d!670710 true))

(assert (=> d!670710 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 r!2363))) (dynLambda!11657 order!14991 lambda!85378))))

(assert (=> d!670710 (= (semiInverseModEq!1724 (toChars!5882 (transformation!4273 r!2363)) (toValue!6023 (transformation!4273 r!2363))) (Forall!1070 lambda!85378))))

(declare-fun bs!455648 () Bool)

(assert (= bs!455648 d!670710))

(declare-fun m!2692983 () Bool)

(assert (=> bs!455648 m!2692983))

(assert (=> d!670372 d!670710))

(declare-fun d!670712 () Bool)

(declare-fun lt!840864 () Int)

(assert (=> d!670712 (>= lt!840864 0)))

(declare-fun e!1449173 () Int)

(assert (=> d!670712 (= lt!840864 e!1449173)))

(declare-fun c!359641 () Bool)

(assert (=> d!670712 (= c!359641 (and ((_ is Cons!26865) (t!201791 rules!1750)) (= (h!32266 (t!201791 rules!1750)) otherR!12)))))

(assert (=> d!670712 (contains!4629 (t!201791 rules!1750) otherR!12)))

(assert (=> d!670712 (= (getIndex!294 (t!201791 rules!1750) otherR!12) lt!840864)))

(declare-fun b!2263391 () Bool)

(declare-fun e!1449174 () Int)

(assert (=> b!2263391 (= e!1449173 e!1449174)))

(declare-fun c!359642 () Bool)

(assert (=> b!2263391 (= c!359642 (and ((_ is Cons!26865) (t!201791 rules!1750)) (not (= (h!32266 (t!201791 rules!1750)) otherR!12))))))

(declare-fun b!2263390 () Bool)

(assert (=> b!2263390 (= e!1449173 0)))

(declare-fun b!2263393 () Bool)

(assert (=> b!2263393 (= e!1449174 (- 1))))

(declare-fun b!2263392 () Bool)

(assert (=> b!2263392 (= e!1449174 (+ 1 (getIndex!294 (t!201791 (t!201791 rules!1750)) otherR!12)))))

(assert (= (and d!670712 c!359641) b!2263390))

(assert (= (and d!670712 (not c!359641)) b!2263391))

(assert (= (and b!2263391 c!359642) b!2263392))

(assert (= (and b!2263391 (not c!359642)) b!2263393))

(assert (=> d!670712 m!2691895))

(declare-fun m!2692985 () Bool)

(assert (=> b!2263392 m!2692985))

(assert (=> b!2262413 d!670712))

(declare-fun bs!455649 () Bool)

(declare-fun d!670714 () Bool)

(assert (= bs!455649 (and d!670714 d!670438)))

(declare-fun lambda!85379 () Int)

(assert (=> bs!455649 (= (= (toValue!6023 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) (= lambda!85379 lambda!85353))))

(declare-fun bs!455650 () Bool)

(assert (= bs!455650 (and d!670714 d!670444)))

(assert (=> bs!455650 (= (= (toValue!6023 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 otherR!12))) (= lambda!85379 lambda!85354))))

(declare-fun bs!455651 () Bool)

(assert (= bs!455651 (and d!670714 d!670634)))

(assert (=> bs!455651 (= (= (toValue!6023 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 r!2363))) (= lambda!85379 lambda!85370))))

(assert (=> d!670714 true))

(assert (=> d!670714 (< (dynLambda!11658 order!14993 (toValue!6023 (transformation!4273 (h!32266 rules!1750)))) (dynLambda!11659 order!14995 lambda!85379))))

(assert (=> d!670714 (= (equivClasses!1643 (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toValue!6023 (transformation!4273 (h!32266 rules!1750)))) (Forall2!687 lambda!85379))))

(declare-fun bs!455652 () Bool)

(assert (= bs!455652 d!670714))

(declare-fun m!2692987 () Bool)

(assert (=> bs!455652 m!2692987))

(assert (=> b!2262620 d!670714))

(assert (=> d!670216 d!670632))

(declare-fun b!2263394 () Bool)

(declare-fun res!967520 () Bool)

(declare-fun e!1449175 () Bool)

(assert (=> b!2263394 (=> res!967520 e!1449175)))

(assert (=> b!2263394 (= res!967520 (not ((_ is IntegerValue!13307) (value!135600 (h!32267 (t!201792 tokens!456))))))))

(declare-fun e!1449177 () Bool)

(assert (=> b!2263394 (= e!1449177 e!1449175)))

(declare-fun b!2263395 () Bool)

(declare-fun e!1449176 () Bool)

(assert (=> b!2263395 (= e!1449176 e!1449177)))

(declare-fun c!359644 () Bool)

(assert (=> b!2263395 (= c!359644 ((_ is IntegerValue!13306) (value!135600 (h!32267 (t!201792 tokens!456)))))))

(declare-fun b!2263396 () Bool)

(assert (=> b!2263396 (= e!1449177 (inv!17 (value!135600 (h!32267 (t!201792 tokens!456)))))))

(declare-fun d!670716 () Bool)

(declare-fun c!359643 () Bool)

(assert (=> d!670716 (= c!359643 ((_ is IntegerValue!13305) (value!135600 (h!32267 (t!201792 tokens!456)))))))

(assert (=> d!670716 (= (inv!21 (value!135600 (h!32267 (t!201792 tokens!456)))) e!1449176)))

(declare-fun b!2263397 () Bool)

(assert (=> b!2263397 (= e!1449176 (inv!16 (value!135600 (h!32267 (t!201792 tokens!456)))))))

(declare-fun b!2263398 () Bool)

(assert (=> b!2263398 (= e!1449175 (inv!15 (value!135600 (h!32267 (t!201792 tokens!456)))))))

(assert (= (and d!670716 c!359643) b!2263397))

(assert (= (and d!670716 (not c!359643)) b!2263395))

(assert (= (and b!2263395 c!359644) b!2263396))

(assert (= (and b!2263395 (not c!359644)) b!2263394))

(assert (= (and b!2263394 (not res!967520)) b!2263398))

(declare-fun m!2692989 () Bool)

(assert (=> b!2263396 m!2692989))

(declare-fun m!2692991 () Bool)

(assert (=> b!2263397 m!2692991))

(declare-fun m!2692993 () Bool)

(assert (=> b!2263398 m!2692993))

(assert (=> b!2262838 d!670716))

(declare-fun d!670718 () Bool)

(assert (=> d!670718 (= (inv!36412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))) (isBalanced!2660 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))))))

(declare-fun bs!455653 () Bool)

(assert (= bs!455653 d!670718))

(declare-fun m!2692995 () Bool)

(assert (=> bs!455653 m!2692995))

(assert (=> tb!134167 d!670718))

(declare-fun d!670720 () Bool)

(assert (=> d!670720 (= (inv!36412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))) (isBalanced!2660 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))))))

(declare-fun bs!455654 () Bool)

(assert (= bs!455654 d!670720))

(declare-fun m!2692997 () Bool)

(assert (=> bs!455654 m!2692997))

(assert (=> tb!134151 d!670720))

(assert (=> b!2262574 d!670708))

(declare-fun d!670722 () Bool)

(assert (=> d!670722 (= (inv!36404 (tag!4763 (h!32266 (t!201791 rules!1750)))) (= (mod (str.len (value!135599 (tag!4763 (h!32266 (t!201791 rules!1750))))) 2) 0))))

(assert (=> b!2262865 d!670722))

(declare-fun d!670724 () Bool)

(declare-fun res!967521 () Bool)

(declare-fun e!1449178 () Bool)

(assert (=> d!670724 (=> (not res!967521) (not e!1449178))))

(assert (=> d!670724 (= res!967521 (semiInverseModEq!1724 (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toValue!6023 (transformation!4273 (h!32266 (t!201791 rules!1750))))))))

(assert (=> d!670724 (= (inv!36407 (transformation!4273 (h!32266 (t!201791 rules!1750)))) e!1449178)))

(declare-fun b!2263399 () Bool)

(assert (=> b!2263399 (= e!1449178 (equivClasses!1643 (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toValue!6023 (transformation!4273 (h!32266 (t!201791 rules!1750))))))))

(assert (= (and d!670724 res!967521) b!2263399))

(declare-fun m!2692999 () Bool)

(assert (=> d!670724 m!2692999))

(declare-fun m!2693001 () Bool)

(assert (=> b!2263399 m!2693001))

(assert (=> b!2262865 d!670724))

(declare-fun d!670726 () Bool)

(declare-fun e!1449180 () Bool)

(assert (=> d!670726 e!1449180))

(declare-fun res!967525 () Bool)

(assert (=> d!670726 (=> res!967525 e!1449180)))

(declare-fun lt!840865 () Bool)

(assert (=> d!670726 (= res!967525 (not lt!840865))))

(declare-fun e!1449181 () Bool)

(assert (=> d!670726 (= lt!840865 e!1449181)))

(declare-fun res!967524 () Bool)

(assert (=> d!670726 (=> res!967524 e!1449181)))

(assert (=> d!670726 (= res!967524 ((_ is Nil!26864) (tail!3265 lt!840524)))))

(assert (=> d!670726 (= (isPrefix!2263 (tail!3265 lt!840524) (tail!3265 input!1722)) lt!840865)))

(declare-fun b!2263403 () Bool)

(assert (=> b!2263403 (= e!1449180 (>= (size!21056 (tail!3265 input!1722)) (size!21056 (tail!3265 lt!840524))))))

(declare-fun b!2263402 () Bool)

(declare-fun e!1449179 () Bool)

(assert (=> b!2263402 (= e!1449179 (isPrefix!2263 (tail!3265 (tail!3265 lt!840524)) (tail!3265 (tail!3265 input!1722))))))

(declare-fun b!2263401 () Bool)

(declare-fun res!967522 () Bool)

(assert (=> b!2263401 (=> (not res!967522) (not e!1449179))))

(assert (=> b!2263401 (= res!967522 (= (head!4858 (tail!3265 lt!840524)) (head!4858 (tail!3265 input!1722))))))

(declare-fun b!2263400 () Bool)

(assert (=> b!2263400 (= e!1449181 e!1449179)))

(declare-fun res!967523 () Bool)

(assert (=> b!2263400 (=> (not res!967523) (not e!1449179))))

(assert (=> b!2263400 (= res!967523 (not ((_ is Nil!26864) (tail!3265 input!1722))))))

(assert (= (and d!670726 (not res!967524)) b!2263400))

(assert (= (and b!2263400 res!967523) b!2263401))

(assert (= (and b!2263401 res!967522) b!2263402))

(assert (= (and d!670726 (not res!967525)) b!2263403))

(assert (=> b!2263403 m!2692069))

(assert (=> b!2263403 m!2692915))

(assert (=> b!2263403 m!2691909))

(assert (=> b!2263403 m!2692335))

(assert (=> b!2263402 m!2691909))

(assert (=> b!2263402 m!2692337))

(assert (=> b!2263402 m!2692069))

(assert (=> b!2263402 m!2692921))

(assert (=> b!2263402 m!2692337))

(assert (=> b!2263402 m!2692921))

(declare-fun m!2693003 () Bool)

(assert (=> b!2263402 m!2693003))

(assert (=> b!2263401 m!2691909))

(assert (=> b!2263401 m!2692343))

(assert (=> b!2263401 m!2692069))

(assert (=> b!2263401 m!2692927))

(assert (=> b!2262628 d!670726))

(assert (=> b!2262628 d!670416))

(assert (=> b!2262628 d!670688))

(declare-fun d!670728 () Bool)

(declare-fun lt!840866 () Bool)

(assert (=> d!670728 (= lt!840866 (select (content!3581 (t!201791 rules!1750)) otherR!12))))

(declare-fun e!1449182 () Bool)

(assert (=> d!670728 (= lt!840866 e!1449182)))

(declare-fun res!967527 () Bool)

(assert (=> d!670728 (=> (not res!967527) (not e!1449182))))

(assert (=> d!670728 (= res!967527 ((_ is Cons!26865) (t!201791 rules!1750)))))

(assert (=> d!670728 (= (contains!4629 (t!201791 rules!1750) otherR!12) lt!840866)))

(declare-fun b!2263404 () Bool)

(declare-fun e!1449183 () Bool)

(assert (=> b!2263404 (= e!1449182 e!1449183)))

(declare-fun res!967526 () Bool)

(assert (=> b!2263404 (=> res!967526 e!1449183)))

(assert (=> b!2263404 (= res!967526 (= (h!32266 (t!201791 rules!1750)) otherR!12))))

(declare-fun b!2263405 () Bool)

(assert (=> b!2263405 (= e!1449183 (contains!4629 (t!201791 (t!201791 rules!1750)) otherR!12))))

(assert (= (and d!670728 res!967527) b!2263404))

(assert (= (and b!2263404 (not res!967526)) b!2263405))

(assert (=> d!670728 m!2692399))

(declare-fun m!2693005 () Bool)

(assert (=> d!670728 m!2693005))

(declare-fun m!2693007 () Bool)

(assert (=> b!2263405 m!2693007))

(assert (=> b!2262402 d!670728))

(declare-fun d!670730 () Bool)

(declare-fun lt!840867 () Int)

(assert (=> d!670730 (>= lt!840867 0)))

(declare-fun e!1449184 () Int)

(assert (=> d!670730 (= lt!840867 e!1449184)))

(declare-fun c!359645 () Bool)

(assert (=> d!670730 (= c!359645 ((_ is Nil!26864) (t!201790 lt!840524)))))

(assert (=> d!670730 (= (size!21056 (t!201790 lt!840524)) lt!840867)))

(declare-fun b!2263406 () Bool)

(assert (=> b!2263406 (= e!1449184 0)))

(declare-fun b!2263407 () Bool)

(assert (=> b!2263407 (= e!1449184 (+ 1 (size!21056 (t!201790 (t!201790 lt!840524)))))))

(assert (= (and d!670730 c!359645) b!2263406))

(assert (= (and d!670730 (not c!359645)) b!2263407))

(declare-fun m!2693009 () Bool)

(assert (=> b!2263407 m!2693009))

(assert (=> b!2262456 d!670730))

(declare-fun b!2263408 () Bool)

(declare-fun e!1449186 () List!26958)

(assert (=> b!2263408 (= e!1449186 (_2!15741 lt!840516))))

(declare-fun b!2263411 () Bool)

(declare-fun e!1449185 () Bool)

(declare-fun lt!840868 () List!26958)

(assert (=> b!2263411 (= e!1449185 (or (not (= (_2!15741 lt!840516) Nil!26864)) (= lt!840868 (t!201790 lt!840524))))))

(declare-fun d!670732 () Bool)

(assert (=> d!670732 e!1449185))

(declare-fun res!967528 () Bool)

(assert (=> d!670732 (=> (not res!967528) (not e!1449185))))

(assert (=> d!670732 (= res!967528 (= (content!3582 lt!840868) ((_ map or) (content!3582 (t!201790 lt!840524)) (content!3582 (_2!15741 lt!840516)))))))

(assert (=> d!670732 (= lt!840868 e!1449186)))

(declare-fun c!359646 () Bool)

(assert (=> d!670732 (= c!359646 ((_ is Nil!26864) (t!201790 lt!840524)))))

(assert (=> d!670732 (= (++!6541 (t!201790 lt!840524) (_2!15741 lt!840516)) lt!840868)))

(declare-fun b!2263409 () Bool)

(assert (=> b!2263409 (= e!1449186 (Cons!26864 (h!32265 (t!201790 lt!840524)) (++!6541 (t!201790 (t!201790 lt!840524)) (_2!15741 lt!840516))))))

(declare-fun b!2263410 () Bool)

(declare-fun res!967529 () Bool)

(assert (=> b!2263410 (=> (not res!967529) (not e!1449185))))

(assert (=> b!2263410 (= res!967529 (= (size!21056 lt!840868) (+ (size!21056 (t!201790 lt!840524)) (size!21056 (_2!15741 lt!840516)))))))

(assert (= (and d!670732 c!359646) b!2263408))

(assert (= (and d!670732 (not c!359646)) b!2263409))

(assert (= (and d!670732 res!967528) b!2263410))

(assert (= (and b!2263410 res!967529) b!2263411))

(declare-fun m!2693011 () Bool)

(assert (=> d!670732 m!2693011))

(assert (=> d!670732 m!2692463))

(assert (=> d!670732 m!2691929))

(declare-fun m!2693013 () Bool)

(assert (=> b!2263409 m!2693013))

(declare-fun m!2693015 () Bool)

(assert (=> b!2263410 m!2693015))

(assert (=> b!2263410 m!2691937))

(assert (=> b!2263410 m!2691935))

(assert (=> b!2262452 d!670732))

(assert (=> b!2262576 d!670708))

(declare-fun b!2263412 () Bool)

(declare-fun e!1449187 () Bool)

(declare-fun tp!715704 () Bool)

(assert (=> b!2263412 (= e!1449187 (and tp_is_empty!10463 tp!715704))))

(assert (=> b!2262855 (= tp!715670 e!1449187)))

(assert (= (and b!2262855 ((_ is Cons!26864) (t!201790 (originalCharacters!5043 (h!32267 tokens!456))))) b!2263412))

(declare-fun b!2263413 () Bool)

(declare-fun e!1449188 () Bool)

(declare-fun tp!715705 () Bool)

(assert (=> b!2263413 (= e!1449188 (and tp_is_empty!10463 tp!715705))))

(assert (=> b!2262826 (= tp!715639 e!1449188)))

(assert (= (and b!2262826 ((_ is Cons!26864) (t!201790 (t!201790 input!1722)))) b!2263413))

(declare-fun b!2263415 () Bool)

(declare-fun e!1449189 () Bool)

(declare-fun tp!715706 () Bool)

(declare-fun tp!715708 () Bool)

(assert (=> b!2263415 (= e!1449189 (and tp!715706 tp!715708))))

(declare-fun b!2263414 () Bool)

(assert (=> b!2263414 (= e!1449189 tp_is_empty!10463)))

(declare-fun b!2263417 () Bool)

(declare-fun tp!715709 () Bool)

(declare-fun tp!715707 () Bool)

(assert (=> b!2263417 (= e!1449189 (and tp!715709 tp!715707))))

(declare-fun b!2263416 () Bool)

(declare-fun tp!715710 () Bool)

(assert (=> b!2263416 (= e!1449189 tp!715710)))

(assert (=> b!2262875 (= tp!715694 e!1449189)))

(assert (= (and b!2262875 ((_ is ElementMatch!6621) (reg!6950 (regex!4273 r!2363)))) b!2263414))

(assert (= (and b!2262875 ((_ is Concat!11057) (reg!6950 (regex!4273 r!2363)))) b!2263415))

(assert (= (and b!2262875 ((_ is Star!6621) (reg!6950 (regex!4273 r!2363)))) b!2263416))

(assert (= (and b!2262875 ((_ is Union!6621) (reg!6950 (regex!4273 r!2363)))) b!2263417))

(declare-fun b!2263419 () Bool)

(declare-fun e!1449190 () Bool)

(declare-fun tp!715711 () Bool)

(declare-fun tp!715713 () Bool)

(assert (=> b!2263419 (= e!1449190 (and tp!715711 tp!715713))))

(declare-fun b!2263418 () Bool)

(assert (=> b!2263418 (= e!1449190 tp_is_empty!10463)))

(declare-fun b!2263421 () Bool)

(declare-fun tp!715714 () Bool)

(declare-fun tp!715712 () Bool)

(assert (=> b!2263421 (= e!1449190 (and tp!715714 tp!715712))))

(declare-fun b!2263420 () Bool)

(declare-fun tp!715715 () Bool)

(assert (=> b!2263420 (= e!1449190 tp!715715)))

(assert (=> b!2262874 (= tp!715690 e!1449190)))

(assert (= (and b!2262874 ((_ is ElementMatch!6621) (regOne!13754 (regex!4273 r!2363)))) b!2263418))

(assert (= (and b!2262874 ((_ is Concat!11057) (regOne!13754 (regex!4273 r!2363)))) b!2263419))

(assert (= (and b!2262874 ((_ is Star!6621) (regOne!13754 (regex!4273 r!2363)))) b!2263420))

(assert (= (and b!2262874 ((_ is Union!6621) (regOne!13754 (regex!4273 r!2363)))) b!2263421))

(declare-fun b!2263423 () Bool)

(declare-fun e!1449191 () Bool)

(declare-fun tp!715716 () Bool)

(declare-fun tp!715718 () Bool)

(assert (=> b!2263423 (= e!1449191 (and tp!715716 tp!715718))))

(declare-fun b!2263422 () Bool)

(assert (=> b!2263422 (= e!1449191 tp_is_empty!10463)))

(declare-fun b!2263425 () Bool)

(declare-fun tp!715719 () Bool)

(declare-fun tp!715717 () Bool)

(assert (=> b!2263425 (= e!1449191 (and tp!715719 tp!715717))))

(declare-fun b!2263424 () Bool)

(declare-fun tp!715720 () Bool)

(assert (=> b!2263424 (= e!1449191 tp!715720)))

(assert (=> b!2262874 (= tp!715692 e!1449191)))

(assert (= (and b!2262874 ((_ is ElementMatch!6621) (regTwo!13754 (regex!4273 r!2363)))) b!2263422))

(assert (= (and b!2262874 ((_ is Concat!11057) (regTwo!13754 (regex!4273 r!2363)))) b!2263423))

(assert (= (and b!2262874 ((_ is Star!6621) (regTwo!13754 (regex!4273 r!2363)))) b!2263424))

(assert (= (and b!2262874 ((_ is Union!6621) (regTwo!13754 (regex!4273 r!2363)))) b!2263425))

(declare-fun b!2263426 () Bool)

(declare-fun e!1449192 () Bool)

(declare-fun tp!715721 () Bool)

(assert (=> b!2263426 (= e!1449192 (and tp_is_empty!10463 tp!715721))))

(assert (=> b!2262867 (= tp!715683 e!1449192)))

(assert (= (and b!2262867 ((_ is Cons!26864) (t!201790 (t!201790 suffix!886)))) b!2263426))

(declare-fun tp!715730 () Bool)

(declare-fun b!2263435 () Bool)

(declare-fun tp!715728 () Bool)

(declare-fun e!1449198 () Bool)

(assert (=> b!2263435 (= e!1449198 (and (inv!36411 (left!20391 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))))) tp!715728 (inv!36411 (right!20721 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))))) tp!715730))))

(declare-fun b!2263437 () Bool)

(declare-fun e!1449197 () Bool)

(declare-fun tp!715729 () Bool)

(assert (=> b!2263437 (= e!1449197 tp!715729)))

(declare-fun b!2263436 () Bool)

(declare-fun inv!36417 (IArray!17393) Bool)

(assert (=> b!2263436 (= e!1449198 (and (inv!36417 (xs!11636 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))))) e!1449197))))

(assert (=> b!2262584 (= tp!715573 (and (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456))))) e!1449198))))

(assert (= (and b!2262584 ((_ is Node!8694) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))))) b!2263435))

(assert (= b!2263436 b!2263437))

(assert (= (and b!2262584 ((_ is Leaf!12816) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))) (value!135600 (head!4856 tokens!456)))))) b!2263436))

(declare-fun m!2693017 () Bool)

(assert (=> b!2263435 m!2693017))

(declare-fun m!2693019 () Bool)

(assert (=> b!2263435 m!2693019))

(declare-fun m!2693021 () Bool)

(assert (=> b!2263436 m!2693021))

(assert (=> b!2262584 m!2692037))

(declare-fun b!2263438 () Bool)

(declare-fun e!1449199 () Bool)

(declare-fun tp!715731 () Bool)

(assert (=> b!2263438 (= e!1449199 (and tp_is_empty!10463 tp!715731))))

(assert (=> b!2262868 (= tp!715684 e!1449199)))

(assert (= (and b!2262868 ((_ is Cons!26864) (t!201790 (t!201790 otherP!12)))) b!2263438))

(declare-fun b!2263440 () Bool)

(declare-fun e!1449200 () Bool)

(declare-fun tp!715732 () Bool)

(declare-fun tp!715734 () Bool)

(assert (=> b!2263440 (= e!1449200 (and tp!715732 tp!715734))))

(declare-fun b!2263439 () Bool)

(assert (=> b!2263439 (= e!1449200 tp_is_empty!10463)))

(declare-fun b!2263442 () Bool)

(declare-fun tp!715735 () Bool)

(declare-fun tp!715733 () Bool)

(assert (=> b!2263442 (= e!1449200 (and tp!715735 tp!715733))))

(declare-fun b!2263441 () Bool)

(declare-fun tp!715736 () Bool)

(assert (=> b!2263441 (= e!1449200 tp!715736)))

(assert (=> b!2262876 (= tp!715693 e!1449200)))

(assert (= (and b!2262876 ((_ is ElementMatch!6621) (regOne!13755 (regex!4273 r!2363)))) b!2263439))

(assert (= (and b!2262876 ((_ is Concat!11057) (regOne!13755 (regex!4273 r!2363)))) b!2263440))

(assert (= (and b!2262876 ((_ is Star!6621) (regOne!13755 (regex!4273 r!2363)))) b!2263441))

(assert (= (and b!2262876 ((_ is Union!6621) (regOne!13755 (regex!4273 r!2363)))) b!2263442))

(declare-fun b!2263444 () Bool)

(declare-fun e!1449201 () Bool)

(declare-fun tp!715737 () Bool)

(declare-fun tp!715739 () Bool)

(assert (=> b!2263444 (= e!1449201 (and tp!715737 tp!715739))))

(declare-fun b!2263443 () Bool)

(assert (=> b!2263443 (= e!1449201 tp_is_empty!10463)))

(declare-fun b!2263446 () Bool)

(declare-fun tp!715740 () Bool)

(declare-fun tp!715738 () Bool)

(assert (=> b!2263446 (= e!1449201 (and tp!715740 tp!715738))))

(declare-fun b!2263445 () Bool)

(declare-fun tp!715741 () Bool)

(assert (=> b!2263445 (= e!1449201 tp!715741)))

(assert (=> b!2262876 (= tp!715691 e!1449201)))

(assert (= (and b!2262876 ((_ is ElementMatch!6621) (regTwo!13755 (regex!4273 r!2363)))) b!2263443))

(assert (= (and b!2262876 ((_ is Concat!11057) (regTwo!13755 (regex!4273 r!2363)))) b!2263444))

(assert (= (and b!2262876 ((_ is Star!6621) (regTwo!13755 (regex!4273 r!2363)))) b!2263445))

(assert (= (and b!2262876 ((_ is Union!6621) (regTwo!13755 (regex!4273 r!2363)))) b!2263446))

(declare-fun b!2263450 () Bool)

(declare-fun b_free!66877 () Bool)

(declare-fun b_next!67581 () Bool)

(assert (=> b!2263450 (= b_free!66877 (not b_next!67581))))

(declare-fun tb!134263 () Bool)

(declare-fun t!201920 () Bool)

(assert (=> (and b!2263450 (= (toValue!6023 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201920) tb!134263))

(declare-fun result!163696 () Bool)

(assert (= result!163696 result!163680))

(assert (=> d!670676 t!201920))

(declare-fun b_and!177961 () Bool)

(declare-fun tp!715745 () Bool)

(assert (=> b!2263450 (= tp!715745 (and (=> t!201920 result!163696) b_and!177961))))

(declare-fun b_free!66879 () Bool)

(declare-fun b_next!67583 () Bool)

(assert (=> b!2263450 (= b_free!66879 (not b_next!67583))))

(declare-fun t!201922 () Bool)

(declare-fun tb!134265 () Bool)

(assert (=> (and b!2263450 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201922) tb!134265))

(declare-fun result!163698 () Bool)

(assert (= result!163698 result!163578))

(assert (=> d!670258 t!201922))

(declare-fun t!201924 () Bool)

(declare-fun tb!134267 () Bool)

(assert (=> (and b!2263450 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201924) tb!134267))

(declare-fun result!163700 () Bool)

(assert (= result!163700 result!163560))

(assert (=> d!670234 t!201924))

(assert (=> b!2262390 t!201924))

(declare-fun t!201926 () Bool)

(declare-fun tb!134269 () Bool)

(assert (=> (and b!2263450 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201926) tb!134269))

(declare-fun result!163702 () Bool)

(assert (= result!163702 result!163642))

(assert (=> b!2263043 t!201926))

(declare-fun t!201928 () Bool)

(declare-fun tb!134271 () Bool)

(assert (=> (and b!2263450 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201928) tb!134271))

(declare-fun result!163704 () Bool)

(assert (= result!163704 result!163630))

(assert (=> d!670426 t!201928))

(declare-fun b_and!177963 () Bool)

(declare-fun tp!715746 () Bool)

(assert (=> b!2263450 (= tp!715746 (and (=> t!201928 result!163704) (=> t!201922 result!163698) (=> t!201926 result!163702) (=> t!201924 result!163700) b_and!177963))))

(declare-fun tp!715742 () Bool)

(declare-fun b!2263449 () Bool)

(declare-fun e!1449206 () Bool)

(declare-fun e!1449203 () Bool)

(assert (=> b!2263449 (= e!1449203 (and tp!715742 (inv!36404 (tag!4763 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (inv!36407 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) e!1449206))))

(assert (=> b!2263450 (= e!1449206 (and tp!715745 tp!715746))))

(declare-fun b!2263448 () Bool)

(declare-fun tp!715744 () Bool)

(declare-fun e!1449205 () Bool)

(assert (=> b!2263448 (= e!1449205 (and (inv!21 (value!135600 (h!32267 (t!201792 (t!201792 tokens!456))))) e!1449203 tp!715744))))

(declare-fun e!1449202 () Bool)

(assert (=> b!2262837 (= tp!715651 e!1449202)))

(declare-fun tp!715743 () Bool)

(declare-fun b!2263447 () Bool)

(assert (=> b!2263447 (= e!1449202 (and (inv!36408 (h!32267 (t!201792 (t!201792 tokens!456)))) e!1449205 tp!715743))))

(assert (= b!2263449 b!2263450))

(assert (= b!2263448 b!2263449))

(assert (= b!2263447 b!2263448))

(assert (= (and b!2262837 ((_ is Cons!26866) (t!201792 (t!201792 tokens!456)))) b!2263447))

(declare-fun m!2693023 () Bool)

(assert (=> b!2263449 m!2693023))

(declare-fun m!2693025 () Bool)

(assert (=> b!2263449 m!2693025))

(declare-fun m!2693027 () Bool)

(assert (=> b!2263448 m!2693027))

(declare-fun m!2693029 () Bool)

(assert (=> b!2263447 m!2693029))

(declare-fun b!2263451 () Bool)

(declare-fun e!1449209 () Bool)

(declare-fun tp!715747 () Bool)

(declare-fun tp!715749 () Bool)

(assert (=> b!2263451 (= e!1449209 (and (inv!36411 (left!20391 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))))) tp!715747 (inv!36411 (right!20721 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))))) tp!715749))))

(declare-fun b!2263453 () Bool)

(declare-fun e!1449208 () Bool)

(declare-fun tp!715748 () Bool)

(assert (=> b!2263453 (= e!1449208 tp!715748)))

(declare-fun b!2263452 () Bool)

(assert (=> b!2263452 (= e!1449209 (and (inv!36417 (xs!11636 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))))) e!1449208))))

(assert (=> b!2262396 (= tp!715571 (and (inv!36411 (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456))))) e!1449209))))

(assert (= (and b!2262396 ((_ is Node!8694) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))))) b!2263451))

(assert (= b!2263452 b!2263453))

(assert (= (and b!2262396 ((_ is Leaf!12816) (c!359412 (dynLambda!11655 (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (value!135600 (h!32267 tokens!456)))))) b!2263452))

(declare-fun m!2693031 () Bool)

(assert (=> b!2263451 m!2693031))

(declare-fun m!2693033 () Bool)

(assert (=> b!2263451 m!2693033))

(declare-fun m!2693035 () Bool)

(assert (=> b!2263452 m!2693035))

(assert (=> b!2262396 m!2691879))

(declare-fun b!2263455 () Bool)

(declare-fun e!1449210 () Bool)

(declare-fun tp!715750 () Bool)

(declare-fun tp!715752 () Bool)

(assert (=> b!2263455 (= e!1449210 (and tp!715750 tp!715752))))

(declare-fun b!2263454 () Bool)

(assert (=> b!2263454 (= e!1449210 tp_is_empty!10463)))

(declare-fun b!2263457 () Bool)

(declare-fun tp!715753 () Bool)

(declare-fun tp!715751 () Bool)

(assert (=> b!2263457 (= e!1449210 (and tp!715753 tp!715751))))

(declare-fun b!2263456 () Bool)

(declare-fun tp!715754 () Bool)

(assert (=> b!2263456 (= e!1449210 tp!715754)))

(assert (=> b!2262839 (= tp!715650 e!1449210)))

(assert (= (and b!2262839 ((_ is ElementMatch!6621) (regex!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) b!2263454))

(assert (= (and b!2262839 ((_ is Concat!11057) (regex!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) b!2263455))

(assert (= (and b!2262839 ((_ is Star!6621) (regex!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) b!2263456))

(assert (= (and b!2262839 ((_ is Union!6621) (regex!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) b!2263457))

(declare-fun b!2263458 () Bool)

(declare-fun e!1449211 () Bool)

(declare-fun tp!715755 () Bool)

(assert (=> b!2263458 (= e!1449211 (and tp_is_empty!10463 tp!715755))))

(assert (=> b!2262838 (= tp!715652 e!1449211)))

(assert (= (and b!2262838 ((_ is Cons!26864) (originalCharacters!5043 (h!32267 (t!201792 tokens!456))))) b!2263458))

(declare-fun b!2263460 () Bool)

(declare-fun e!1449212 () Bool)

(declare-fun tp!715756 () Bool)

(declare-fun tp!715758 () Bool)

(assert (=> b!2263460 (= e!1449212 (and tp!715756 tp!715758))))

(declare-fun b!2263459 () Bool)

(assert (=> b!2263459 (= e!1449212 tp_is_empty!10463)))

(declare-fun b!2263462 () Bool)

(declare-fun tp!715759 () Bool)

(declare-fun tp!715757 () Bool)

(assert (=> b!2263462 (= e!1449212 (and tp!715759 tp!715757))))

(declare-fun b!2263461 () Bool)

(declare-fun tp!715760 () Bool)

(assert (=> b!2263461 (= e!1449212 tp!715760)))

(assert (=> b!2262870 (= tp!715685 e!1449212)))

(assert (= (and b!2262870 ((_ is ElementMatch!6621) (regOne!13754 (regex!4273 (h!32266 rules!1750))))) b!2263459))

(assert (= (and b!2262870 ((_ is Concat!11057) (regOne!13754 (regex!4273 (h!32266 rules!1750))))) b!2263460))

(assert (= (and b!2262870 ((_ is Star!6621) (regOne!13754 (regex!4273 (h!32266 rules!1750))))) b!2263461))

(assert (= (and b!2262870 ((_ is Union!6621) (regOne!13754 (regex!4273 (h!32266 rules!1750))))) b!2263462))

(declare-fun b!2263464 () Bool)

(declare-fun e!1449213 () Bool)

(declare-fun tp!715761 () Bool)

(declare-fun tp!715763 () Bool)

(assert (=> b!2263464 (= e!1449213 (and tp!715761 tp!715763))))

(declare-fun b!2263463 () Bool)

(assert (=> b!2263463 (= e!1449213 tp_is_empty!10463)))

(declare-fun b!2263466 () Bool)

(declare-fun tp!715764 () Bool)

(declare-fun tp!715762 () Bool)

(assert (=> b!2263466 (= e!1449213 (and tp!715764 tp!715762))))

(declare-fun b!2263465 () Bool)

(declare-fun tp!715765 () Bool)

(assert (=> b!2263465 (= e!1449213 tp!715765)))

(assert (=> b!2262870 (= tp!715687 e!1449213)))

(assert (= (and b!2262870 ((_ is ElementMatch!6621) (regTwo!13754 (regex!4273 (h!32266 rules!1750))))) b!2263463))

(assert (= (and b!2262870 ((_ is Concat!11057) (regTwo!13754 (regex!4273 (h!32266 rules!1750))))) b!2263464))

(assert (= (and b!2262870 ((_ is Star!6621) (regTwo!13754 (regex!4273 (h!32266 rules!1750))))) b!2263465))

(assert (= (and b!2262870 ((_ is Union!6621) (regTwo!13754 (regex!4273 (h!32266 rules!1750))))) b!2263466))

(declare-fun b!2263468 () Bool)

(declare-fun e!1449214 () Bool)

(declare-fun tp!715766 () Bool)

(declare-fun tp!715768 () Bool)

(assert (=> b!2263468 (= e!1449214 (and tp!715766 tp!715768))))

(declare-fun b!2263467 () Bool)

(assert (=> b!2263467 (= e!1449214 tp_is_empty!10463)))

(declare-fun b!2263470 () Bool)

(declare-fun tp!715769 () Bool)

(declare-fun tp!715767 () Bool)

(assert (=> b!2263470 (= e!1449214 (and tp!715769 tp!715767))))

(declare-fun b!2263469 () Bool)

(declare-fun tp!715770 () Bool)

(assert (=> b!2263469 (= e!1449214 tp!715770)))

(assert (=> b!2262853 (= tp!715669 e!1449214)))

(assert (= (and b!2262853 ((_ is ElementMatch!6621) (reg!6950 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263467))

(assert (= (and b!2262853 ((_ is Concat!11057) (reg!6950 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263468))

(assert (= (and b!2262853 ((_ is Star!6621) (reg!6950 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263469))

(assert (= (and b!2262853 ((_ is Union!6621) (reg!6950 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263470))

(declare-fun b!2263472 () Bool)

(declare-fun e!1449215 () Bool)

(declare-fun tp!715771 () Bool)

(declare-fun tp!715773 () Bool)

(assert (=> b!2263472 (= e!1449215 (and tp!715771 tp!715773))))

(declare-fun b!2263471 () Bool)

(assert (=> b!2263471 (= e!1449215 tp_is_empty!10463)))

(declare-fun b!2263474 () Bool)

(declare-fun tp!715774 () Bool)

(declare-fun tp!715772 () Bool)

(assert (=> b!2263474 (= e!1449215 (and tp!715774 tp!715772))))

(declare-fun b!2263473 () Bool)

(declare-fun tp!715775 () Bool)

(assert (=> b!2263473 (= e!1449215 tp!715775)))

(assert (=> b!2262852 (= tp!715665 e!1449215)))

(assert (= (and b!2262852 ((_ is ElementMatch!6621) (regOne!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263471))

(assert (= (and b!2262852 ((_ is Concat!11057) (regOne!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263472))

(assert (= (and b!2262852 ((_ is Star!6621) (regOne!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263473))

(assert (= (and b!2262852 ((_ is Union!6621) (regOne!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263474))

(declare-fun b!2263476 () Bool)

(declare-fun e!1449216 () Bool)

(declare-fun tp!715776 () Bool)

(declare-fun tp!715778 () Bool)

(assert (=> b!2263476 (= e!1449216 (and tp!715776 tp!715778))))

(declare-fun b!2263475 () Bool)

(assert (=> b!2263475 (= e!1449216 tp_is_empty!10463)))

(declare-fun b!2263478 () Bool)

(declare-fun tp!715779 () Bool)

(declare-fun tp!715777 () Bool)

(assert (=> b!2263478 (= e!1449216 (and tp!715779 tp!715777))))

(declare-fun b!2263477 () Bool)

(declare-fun tp!715780 () Bool)

(assert (=> b!2263477 (= e!1449216 tp!715780)))

(assert (=> b!2262852 (= tp!715667 e!1449216)))

(assert (= (and b!2262852 ((_ is ElementMatch!6621) (regTwo!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263475))

(assert (= (and b!2262852 ((_ is Concat!11057) (regTwo!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263476))

(assert (= (and b!2262852 ((_ is Star!6621) (regTwo!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263477))

(assert (= (and b!2262852 ((_ is Union!6621) (regTwo!13754 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263478))

(declare-fun b!2263480 () Bool)

(declare-fun e!1449217 () Bool)

(declare-fun tp!715781 () Bool)

(declare-fun tp!715783 () Bool)

(assert (=> b!2263480 (= e!1449217 (and tp!715781 tp!715783))))

(declare-fun b!2263479 () Bool)

(assert (=> b!2263479 (= e!1449217 tp_is_empty!10463)))

(declare-fun b!2263482 () Bool)

(declare-fun tp!715784 () Bool)

(declare-fun tp!715782 () Bool)

(assert (=> b!2263482 (= e!1449217 (and tp!715784 tp!715782))))

(declare-fun b!2263481 () Bool)

(declare-fun tp!715785 () Bool)

(assert (=> b!2263481 (= e!1449217 tp!715785)))

(assert (=> b!2262865 (= tp!715680 e!1449217)))

(assert (= (and b!2262865 ((_ is ElementMatch!6621) (regex!4273 (h!32266 (t!201791 rules!1750))))) b!2263479))

(assert (= (and b!2262865 ((_ is Concat!11057) (regex!4273 (h!32266 (t!201791 rules!1750))))) b!2263480))

(assert (= (and b!2262865 ((_ is Star!6621) (regex!4273 (h!32266 (t!201791 rules!1750))))) b!2263481))

(assert (= (and b!2262865 ((_ is Union!6621) (regex!4273 (h!32266 (t!201791 rules!1750))))) b!2263482))

(declare-fun b!2263484 () Bool)

(declare-fun e!1449218 () Bool)

(declare-fun tp!715786 () Bool)

(declare-fun tp!715788 () Bool)

(assert (=> b!2263484 (= e!1449218 (and tp!715786 tp!715788))))

(declare-fun b!2263483 () Bool)

(assert (=> b!2263483 (= e!1449218 tp_is_empty!10463)))

(declare-fun b!2263486 () Bool)

(declare-fun tp!715789 () Bool)

(declare-fun tp!715787 () Bool)

(assert (=> b!2263486 (= e!1449218 (and tp!715789 tp!715787))))

(declare-fun b!2263485 () Bool)

(declare-fun tp!715790 () Bool)

(assert (=> b!2263485 (= e!1449218 tp!715790)))

(assert (=> b!2262879 (= tp!715699 e!1449218)))

(assert (= (and b!2262879 ((_ is ElementMatch!6621) (reg!6950 (regex!4273 otherR!12)))) b!2263483))

(assert (= (and b!2262879 ((_ is Concat!11057) (reg!6950 (regex!4273 otherR!12)))) b!2263484))

(assert (= (and b!2262879 ((_ is Star!6621) (reg!6950 (regex!4273 otherR!12)))) b!2263485))

(assert (= (and b!2262879 ((_ is Union!6621) (reg!6950 (regex!4273 otherR!12)))) b!2263486))

(declare-fun b!2263489 () Bool)

(declare-fun b_free!66881 () Bool)

(declare-fun b_next!67585 () Bool)

(assert (=> b!2263489 (= b_free!66881 (not b_next!67585))))

(declare-fun t!201930 () Bool)

(declare-fun tb!134273 () Bool)

(assert (=> (and b!2263489 (= (toValue!6023 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) (toValue!6023 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201930) tb!134273))

(declare-fun result!163706 () Bool)

(assert (= result!163706 result!163680))

(assert (=> d!670676 t!201930))

(declare-fun tp!715791 () Bool)

(declare-fun b_and!177965 () Bool)

(assert (=> b!2263489 (= tp!715791 (and (=> t!201930 result!163706) b_and!177965))))

(declare-fun b_free!66883 () Bool)

(declare-fun b_next!67587 () Bool)

(assert (=> b!2263489 (= b_free!66883 (not b_next!67587))))

(declare-fun t!201932 () Bool)

(declare-fun tb!134275 () Bool)

(assert (=> (and b!2263489 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456))))) t!201932) tb!134275))

(declare-fun result!163708 () Bool)

(assert (= result!163708 result!163578))

(assert (=> d!670258 t!201932))

(declare-fun t!201934 () Bool)

(declare-fun tb!134277 () Bool)

(assert (=> (and b!2263489 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456))))) t!201934) tb!134277))

(declare-fun result!163710 () Bool)

(assert (= result!163710 result!163560))

(assert (=> d!670234 t!201934))

(assert (=> b!2262390 t!201934))

(declare-fun tb!134279 () Bool)

(declare-fun t!201936 () Bool)

(assert (=> (and b!2263489 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456)))))) t!201936) tb!134279))

(declare-fun result!163712 () Bool)

(assert (= result!163712 result!163642))

(assert (=> b!2263043 t!201936))

(declare-fun t!201938 () Bool)

(declare-fun tb!134281 () Bool)

(assert (=> (and b!2263489 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) (toChars!5882 (transformation!4273 (rule!6585 (_1!15741 (get!8103 lt!840562)))))) t!201938) tb!134281))

(declare-fun result!163714 () Bool)

(assert (= result!163714 result!163630))

(assert (=> d!670426 t!201938))

(declare-fun tp!715794 () Bool)

(declare-fun b_and!177967 () Bool)

(assert (=> b!2263489 (= tp!715794 (and (=> t!201932 result!163708) (=> t!201934 result!163710) (=> t!201936 result!163712) (=> t!201938 result!163714) b_and!177967))))

(declare-fun e!1449221 () Bool)

(assert (=> b!2263489 (= e!1449221 (and tp!715791 tp!715794))))

(declare-fun tp!715792 () Bool)

(declare-fun e!1449219 () Bool)

(declare-fun b!2263488 () Bool)

(assert (=> b!2263488 (= e!1449219 (and tp!715792 (inv!36404 (tag!4763 (h!32266 (t!201791 (t!201791 rules!1750))))) (inv!36407 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) e!1449221))))

(declare-fun b!2263487 () Bool)

(declare-fun e!1449220 () Bool)

(declare-fun tp!715793 () Bool)

(assert (=> b!2263487 (= e!1449220 (and e!1449219 tp!715793))))

(assert (=> b!2262864 (= tp!715681 e!1449220)))

(assert (= b!2263488 b!2263489))

(assert (= b!2263487 b!2263488))

(assert (= (and b!2262864 ((_ is Cons!26865) (t!201791 (t!201791 rules!1750)))) b!2263487))

(declare-fun m!2693037 () Bool)

(assert (=> b!2263488 m!2693037))

(declare-fun m!2693039 () Bool)

(assert (=> b!2263488 m!2693039))

(declare-fun b!2263491 () Bool)

(declare-fun e!1449223 () Bool)

(declare-fun tp!715795 () Bool)

(declare-fun tp!715797 () Bool)

(assert (=> b!2263491 (= e!1449223 (and tp!715795 tp!715797))))

(declare-fun b!2263490 () Bool)

(assert (=> b!2263490 (= e!1449223 tp_is_empty!10463)))

(declare-fun b!2263493 () Bool)

(declare-fun tp!715798 () Bool)

(declare-fun tp!715796 () Bool)

(assert (=> b!2263493 (= e!1449223 (and tp!715798 tp!715796))))

(declare-fun b!2263492 () Bool)

(declare-fun tp!715799 () Bool)

(assert (=> b!2263492 (= e!1449223 tp!715799)))

(assert (=> b!2262878 (= tp!715695 e!1449223)))

(assert (= (and b!2262878 ((_ is ElementMatch!6621) (regOne!13754 (regex!4273 otherR!12)))) b!2263490))

(assert (= (and b!2262878 ((_ is Concat!11057) (regOne!13754 (regex!4273 otherR!12)))) b!2263491))

(assert (= (and b!2262878 ((_ is Star!6621) (regOne!13754 (regex!4273 otherR!12)))) b!2263492))

(assert (= (and b!2262878 ((_ is Union!6621) (regOne!13754 (regex!4273 otherR!12)))) b!2263493))

(declare-fun b!2263495 () Bool)

(declare-fun e!1449224 () Bool)

(declare-fun tp!715800 () Bool)

(declare-fun tp!715802 () Bool)

(assert (=> b!2263495 (= e!1449224 (and tp!715800 tp!715802))))

(declare-fun b!2263494 () Bool)

(assert (=> b!2263494 (= e!1449224 tp_is_empty!10463)))

(declare-fun b!2263497 () Bool)

(declare-fun tp!715803 () Bool)

(declare-fun tp!715801 () Bool)

(assert (=> b!2263497 (= e!1449224 (and tp!715803 tp!715801))))

(declare-fun b!2263496 () Bool)

(declare-fun tp!715804 () Bool)

(assert (=> b!2263496 (= e!1449224 tp!715804)))

(assert (=> b!2262878 (= tp!715697 e!1449224)))

(assert (= (and b!2262878 ((_ is ElementMatch!6621) (regTwo!13754 (regex!4273 otherR!12)))) b!2263494))

(assert (= (and b!2262878 ((_ is Concat!11057) (regTwo!13754 (regex!4273 otherR!12)))) b!2263495))

(assert (= (and b!2262878 ((_ is Star!6621) (regTwo!13754 (regex!4273 otherR!12)))) b!2263496))

(assert (= (and b!2262878 ((_ is Union!6621) (regTwo!13754 (regex!4273 otherR!12)))) b!2263497))

(declare-fun b!2263499 () Bool)

(declare-fun e!1449225 () Bool)

(declare-fun tp!715805 () Bool)

(declare-fun tp!715807 () Bool)

(assert (=> b!2263499 (= e!1449225 (and tp!715805 tp!715807))))

(declare-fun b!2263498 () Bool)

(assert (=> b!2263498 (= e!1449225 tp_is_empty!10463)))

(declare-fun b!2263501 () Bool)

(declare-fun tp!715808 () Bool)

(declare-fun tp!715806 () Bool)

(assert (=> b!2263501 (= e!1449225 (and tp!715808 tp!715806))))

(declare-fun b!2263500 () Bool)

(declare-fun tp!715809 () Bool)

(assert (=> b!2263500 (= e!1449225 tp!715809)))

(assert (=> b!2262872 (= tp!715688 e!1449225)))

(assert (= (and b!2262872 ((_ is ElementMatch!6621) (regOne!13755 (regex!4273 (h!32266 rules!1750))))) b!2263498))

(assert (= (and b!2262872 ((_ is Concat!11057) (regOne!13755 (regex!4273 (h!32266 rules!1750))))) b!2263499))

(assert (= (and b!2262872 ((_ is Star!6621) (regOne!13755 (regex!4273 (h!32266 rules!1750))))) b!2263500))

(assert (= (and b!2262872 ((_ is Union!6621) (regOne!13755 (regex!4273 (h!32266 rules!1750))))) b!2263501))

(declare-fun b!2263503 () Bool)

(declare-fun e!1449226 () Bool)

(declare-fun tp!715810 () Bool)

(declare-fun tp!715812 () Bool)

(assert (=> b!2263503 (= e!1449226 (and tp!715810 tp!715812))))

(declare-fun b!2263502 () Bool)

(assert (=> b!2263502 (= e!1449226 tp_is_empty!10463)))

(declare-fun b!2263505 () Bool)

(declare-fun tp!715813 () Bool)

(declare-fun tp!715811 () Bool)

(assert (=> b!2263505 (= e!1449226 (and tp!715813 tp!715811))))

(declare-fun b!2263504 () Bool)

(declare-fun tp!715814 () Bool)

(assert (=> b!2263504 (= e!1449226 tp!715814)))

(assert (=> b!2262872 (= tp!715686 e!1449226)))

(assert (= (and b!2262872 ((_ is ElementMatch!6621) (regTwo!13755 (regex!4273 (h!32266 rules!1750))))) b!2263502))

(assert (= (and b!2262872 ((_ is Concat!11057) (regTwo!13755 (regex!4273 (h!32266 rules!1750))))) b!2263503))

(assert (= (and b!2262872 ((_ is Star!6621) (regTwo!13755 (regex!4273 (h!32266 rules!1750))))) b!2263504))

(assert (= (and b!2262872 ((_ is Union!6621) (regTwo!13755 (regex!4273 (h!32266 rules!1750))))) b!2263505))

(declare-fun b!2263507 () Bool)

(declare-fun e!1449227 () Bool)

(declare-fun tp!715815 () Bool)

(declare-fun tp!715817 () Bool)

(assert (=> b!2263507 (= e!1449227 (and tp!715815 tp!715817))))

(declare-fun b!2263506 () Bool)

(assert (=> b!2263506 (= e!1449227 tp_is_empty!10463)))

(declare-fun b!2263509 () Bool)

(declare-fun tp!715818 () Bool)

(declare-fun tp!715816 () Bool)

(assert (=> b!2263509 (= e!1449227 (and tp!715818 tp!715816))))

(declare-fun b!2263508 () Bool)

(declare-fun tp!715819 () Bool)

(assert (=> b!2263508 (= e!1449227 tp!715819)))

(assert (=> b!2262854 (= tp!715668 e!1449227)))

(assert (= (and b!2262854 ((_ is ElementMatch!6621) (regOne!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263506))

(assert (= (and b!2262854 ((_ is Concat!11057) (regOne!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263507))

(assert (= (and b!2262854 ((_ is Star!6621) (regOne!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263508))

(assert (= (and b!2262854 ((_ is Union!6621) (regOne!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263509))

(declare-fun b!2263511 () Bool)

(declare-fun e!1449228 () Bool)

(declare-fun tp!715820 () Bool)

(declare-fun tp!715822 () Bool)

(assert (=> b!2263511 (= e!1449228 (and tp!715820 tp!715822))))

(declare-fun b!2263510 () Bool)

(assert (=> b!2263510 (= e!1449228 tp_is_empty!10463)))

(declare-fun b!2263513 () Bool)

(declare-fun tp!715823 () Bool)

(declare-fun tp!715821 () Bool)

(assert (=> b!2263513 (= e!1449228 (and tp!715823 tp!715821))))

(declare-fun b!2263512 () Bool)

(declare-fun tp!715824 () Bool)

(assert (=> b!2263512 (= e!1449228 tp!715824)))

(assert (=> b!2262854 (= tp!715666 e!1449228)))

(assert (= (and b!2262854 ((_ is ElementMatch!6621) (regTwo!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263510))

(assert (= (and b!2262854 ((_ is Concat!11057) (regTwo!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263511))

(assert (= (and b!2262854 ((_ is Star!6621) (regTwo!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263512))

(assert (= (and b!2262854 ((_ is Union!6621) (regTwo!13755 (regex!4273 (rule!6585 (h!32267 tokens!456)))))) b!2263513))

(declare-fun b!2263515 () Bool)

(declare-fun e!1449229 () Bool)

(declare-fun tp!715825 () Bool)

(declare-fun tp!715827 () Bool)

(assert (=> b!2263515 (= e!1449229 (and tp!715825 tp!715827))))

(declare-fun b!2263514 () Bool)

(assert (=> b!2263514 (= e!1449229 tp_is_empty!10463)))

(declare-fun b!2263517 () Bool)

(declare-fun tp!715828 () Bool)

(declare-fun tp!715826 () Bool)

(assert (=> b!2263517 (= e!1449229 (and tp!715828 tp!715826))))

(declare-fun b!2263516 () Bool)

(declare-fun tp!715829 () Bool)

(assert (=> b!2263516 (= e!1449229 tp!715829)))

(assert (=> b!2262880 (= tp!715698 e!1449229)))

(assert (= (and b!2262880 ((_ is ElementMatch!6621) (regOne!13755 (regex!4273 otherR!12)))) b!2263514))

(assert (= (and b!2262880 ((_ is Concat!11057) (regOne!13755 (regex!4273 otherR!12)))) b!2263515))

(assert (= (and b!2262880 ((_ is Star!6621) (regOne!13755 (regex!4273 otherR!12)))) b!2263516))

(assert (= (and b!2262880 ((_ is Union!6621) (regOne!13755 (regex!4273 otherR!12)))) b!2263517))

(declare-fun b!2263519 () Bool)

(declare-fun e!1449230 () Bool)

(declare-fun tp!715830 () Bool)

(declare-fun tp!715832 () Bool)

(assert (=> b!2263519 (= e!1449230 (and tp!715830 tp!715832))))

(declare-fun b!2263518 () Bool)

(assert (=> b!2263518 (= e!1449230 tp_is_empty!10463)))

(declare-fun b!2263521 () Bool)

(declare-fun tp!715833 () Bool)

(declare-fun tp!715831 () Bool)

(assert (=> b!2263521 (= e!1449230 (and tp!715833 tp!715831))))

(declare-fun b!2263520 () Bool)

(declare-fun tp!715834 () Bool)

(assert (=> b!2263520 (= e!1449230 tp!715834)))

(assert (=> b!2262880 (= tp!715696 e!1449230)))

(assert (= (and b!2262880 ((_ is ElementMatch!6621) (regTwo!13755 (regex!4273 otherR!12)))) b!2263518))

(assert (= (and b!2262880 ((_ is Concat!11057) (regTwo!13755 (regex!4273 otherR!12)))) b!2263519))

(assert (= (and b!2262880 ((_ is Star!6621) (regTwo!13755 (regex!4273 otherR!12)))) b!2263520))

(assert (= (and b!2262880 ((_ is Union!6621) (regTwo!13755 (regex!4273 otherR!12)))) b!2263521))

(declare-fun b!2263523 () Bool)

(declare-fun e!1449231 () Bool)

(declare-fun tp!715835 () Bool)

(declare-fun tp!715837 () Bool)

(assert (=> b!2263523 (= e!1449231 (and tp!715835 tp!715837))))

(declare-fun b!2263522 () Bool)

(assert (=> b!2263522 (= e!1449231 tp_is_empty!10463)))

(declare-fun b!2263525 () Bool)

(declare-fun tp!715838 () Bool)

(declare-fun tp!715836 () Bool)

(assert (=> b!2263525 (= e!1449231 (and tp!715838 tp!715836))))

(declare-fun b!2263524 () Bool)

(declare-fun tp!715839 () Bool)

(assert (=> b!2263524 (= e!1449231 tp!715839)))

(assert (=> b!2262871 (= tp!715689 e!1449231)))

(assert (= (and b!2262871 ((_ is ElementMatch!6621) (reg!6950 (regex!4273 (h!32266 rules!1750))))) b!2263522))

(assert (= (and b!2262871 ((_ is Concat!11057) (reg!6950 (regex!4273 (h!32266 rules!1750))))) b!2263523))

(assert (= (and b!2262871 ((_ is Star!6621) (reg!6950 (regex!4273 (h!32266 rules!1750))))) b!2263524))

(assert (= (and b!2262871 ((_ is Union!6621) (reg!6950 (regex!4273 (h!32266 rules!1750))))) b!2263525))

(declare-fun b_lambda!72209 () Bool)

(assert (= b_lambda!72201 (or (and b!2262364 b_free!66851 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))))) (and b!2262372 b_free!66859 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))))) (and b!2263489 b_free!66883 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))))) (and b!2262351 b_free!66847 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))))) (and b!2262371 b_free!66855 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))))) (and b!2262866 b_free!66875 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))))) (and b!2262840 b_free!66871) (and b!2263450 b_free!66879 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))))) b_lambda!72209)))

(declare-fun b_lambda!72211 () Bool)

(assert (= b_lambda!72185 (or (and b!2262372 b_free!66859 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 tokens!456)))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) (and b!2263489 b_free!66883 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 (t!201791 rules!1750))))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) (and b!2262351 b_free!66847 (= (toChars!5882 (transformation!4273 (h!32266 rules!1750))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) (and b!2262371 b_free!66855 (= (toChars!5882 (transformation!4273 r!2363)) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) (and b!2262840 b_free!66871 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 tokens!456))))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) (and b!2262866 b_free!66875 (= (toChars!5882 (transformation!4273 (h!32266 (t!201791 rules!1750)))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) (and b!2262364 b_free!66851 (= (toChars!5882 (transformation!4273 otherR!12)) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) (and b!2263450 b_free!66879 (= (toChars!5882 (transformation!4273 (rule!6585 (h!32267 (t!201792 (t!201792 tokens!456)))))) (toChars!5882 (transformation!4273 (rule!6585 (head!4856 tokens!456)))))) b_lambda!72211)))

(check-sat (not b!2263501) (not b!2263002) (not b!2263441) (not b!2263519) (not tb!134251) (not b!2263515) (not b!2263424) (not b!2263415) (not b!2263260) (not b_next!67551) (not bm!135936) (not b!2263001) (not b!2263503) (not b!2263342) (not b!2263507) (not b!2262911) (not b!2263461) (not d!670732) (not b!2262923) (not d!670704) (not b!2263446) (not b!2263486) (not b!2262980) (not b!2263403) (not b!2263000) (not b!2263026) (not b!2263462) (not d!670706) (not b_lambda!72209) (not b_next!67583) (not b!2263343) (not bm!135927) (not b!2263023) (not d!670666) (not b!2263435) (not b!2262953) (not b!2263309) (not b!2263523) (not b!2263460) (not b!2263495) (not d!670438) (not b!2263485) (not b!2263022) (not b!2263488) (not d!670668) (not b!2263305) (not b!2263484) (not b!2263423) b_and!177949 (not b_next!67577) (not b!2263512) (not b!2263326) (not b!2263027) (not b!2263282) (not b!2263477) (not b!2263469) (not b_next!67553) (not b!2262913) (not d!670670) b_and!177961 (not b_next!67559) (not b!2263476) (not b!2263410) (not d!670622) (not b_next!67581) (not b!2263043) (not b!2263392) tp_is_empty!10463 (not b_next!67575) (not b!2262940) (not b_lambda!72199) (not b!2263399) (not b!2262925) (not d!670428) b_and!177959 (not b!2263050) (not b!2263468) (not d!670692) (not b!2263419) (not b!2263329) (not b_next!67573) (not b!2263405) (not b!2263024) (not b!2263524) (not b!2262999) (not b!2263345) (not b!2263474) (not b!2263470) (not b!2263509) (not b!2262920) (not b!2262938) (not b_next!67579) b_and!177963 (not b!2263492) (not b!2263402) (not b!2263496) (not d!670448) (not d!670712) (not b!2263340) b_and!177917 (not d!670652) (not d!670478) (not b!2263253) (not b!2263458) (not b!2263413) (not b!2263330) (not d!670696) (not b!2263339) (not b!2263353) b_and!177913 (not b_lambda!72207) (not b!2263491) (not b!2263314) (not b!2262918) (not b!2263272) (not d!670724) (not b!2263487) (not b!2263481) (not b!2263281) (not b!2262927) (not d!670678) (not b!2263453) (not b_next!67587) (not b!2263497) (not b!2263500) (not d!670442) b_and!177923 (not b!2263465) (not b!2263421) (not d!670634) (not b!2263356) (not d!670488) (not d!670720) (not b!2263438) (not b!2263307) (not b!2263019) (not b!2263480) (not d!670484) (not b!2263300) (not b!2263513) (not b!2263437) (not b!2263412) b_and!177921 (not b!2263517) (not b!2263444) (not b!2263295) (not b!2263398) b_and!177967 (not tb!134203) (not b!2263257) (not bm!135926) (not b_next!67555) (not b!2262584) (not d!670664) (not b!2263020) (not b!2263520) (not b!2263417) b_and!177957 (not b!2263407) (not d!670380) (not d!670440) (not b!2263482) (not b_lambda!72211) (not b!2262944) (not d!670658) (not b_lambda!72193) (not b_next!67585) (not b!2263308) (not b_lambda!72195) (not d!670410) (not b!2263042) (not b!2263284) (not d!670710) (not b!2263508) (not d!670468) (not b!2263505) (not b!2263455) (not d!670430) (not d!670492) (not b!2263445) (not b!2263351) (not b!2263472) (not b!2263007) b_and!177919 b_and!177915 (not b!2263478) b_and!177951 (not d!670626) (not d!670672) (not b!2263457) (not b!2263044) (not b!2263401) (not b!2263028) (not b!2262910) (not b!2263358) (not b!2263030) (not b!2263420) (not b!2263324) (not b!2263521) (not d!670464) (not b!2262951) (not b!2263271) (not b!2263005) (not b!2263449) (not b!2263440) (not d!670714) (not b!2263447) (not d!670698) (not b!2263297) (not b!2263396) (not b!2263473) (not b!2263425) (not b!2263452) (not d!670654) (not b!2263464) (not tb!134215) (not d!670650) (not b!2263493) (not b!2263426) (not b!2262912) (not b!2263416) (not b!2263442) (not b!2263397) (not bm!135899) (not b!2263041) (not d!670424) (not d!670674) (not b!2263451) (not d!670432) (not b!2263293) (not bm!135890) (not b!2263003) (not b!2263328) (not b!2263504) (not d!670482) (not d!670476) (not b!2263332) (not b!2263346) (not d!670718) (not b!2262941) (not b!2263516) (not b_next!67549) (not bm!135924) (not b!2263456) (not d!670426) (not b!2263015) (not d!670490) (not b!2263278) (not d!670412) (not b!2263013) (not b!2263255) (not b!2263382) (not b!2263499) (not b!2263315) (not b!2263259) (not b!2263448) (not d!670436) b_and!177955 (not d!670728) b_and!177965 (not d!670628) (not b!2263466) (not b!2263335) b_and!177953 (not d!670462) (not b!2263017) (not b!2262916) (not d!670378) (not bm!135900) (not bm!135897) (not b!2263006) (not bm!135939) (not d!670444) (not b!2263511) (not d!670420) (not b!2263045) (not b!2263025) (not b!2263409) (not b!2263525) (not b!2263334) (not b!2263349) (not b_next!67557) (not b!2262396) (not b_next!67563) (not b!2263051) (not b_next!67561) (not b!2263436))
(check-sat (not b_next!67551) (not b_next!67583) b_and!177959 (not b_next!67573) b_and!177917 b_and!177913 b_and!177921 b_and!177967 (not b_next!67555) b_and!177957 (not b_next!67585) (not b_next!67549) b_and!177955 b_and!177949 (not b_next!67577) (not b_next!67553) b_and!177961 (not b_next!67581) (not b_next!67559) (not b_next!67575) (not b_next!67579) b_and!177963 b_and!177923 (not b_next!67587) b_and!177919 b_and!177915 b_and!177951 b_and!177965 b_and!177953 (not b_next!67557) (not b_next!67563) (not b_next!67561))
