; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!757526 () Bool)

(assert start!757526)

(declare-fun b!8045378 () Bool)

(declare-fun b_free!136315 () Bool)

(declare-fun b_next!137105 () Bool)

(assert (=> b!8045378 (= b_free!136315 (not b_next!137105))))

(declare-fun tp!2411457 () Bool)

(declare-fun b_and!354751 () Bool)

(assert (=> b!8045378 (= tp!2411457 b_and!354751)))

(declare-fun b_free!136317 () Bool)

(declare-fun b_next!137107 () Bool)

(assert (=> b!8045378 (= b_free!136317 (not b_next!137107))))

(declare-fun tp!2411458 () Bool)

(declare-fun b_and!354753 () Bool)

(assert (=> b!8045378 (= tp!2411458 b_and!354753)))

(declare-fun b!8045386 () Bool)

(declare-fun b_free!136319 () Bool)

(declare-fun b_next!137109 () Bool)

(assert (=> b!8045386 (= b_free!136319 (not b_next!137109))))

(declare-fun tp!2411455 () Bool)

(declare-fun b_and!354755 () Bool)

(assert (=> b!8045386 (= tp!2411455 b_and!354755)))

(declare-fun b_free!136321 () Bool)

(declare-fun b_next!137111 () Bool)

(assert (=> b!8045386 (= b_free!136321 (not b_next!137111))))

(declare-fun tp!2411459 () Bool)

(declare-fun b_and!354757 () Bool)

(assert (=> b!8045386 (= tp!2411459 b_and!354757)))

(declare-fun e!4739639 () Bool)

(assert (=> b!8045378 (= e!4739639 (and tp!2411457 tp!2411458))))

(declare-fun b!8045379 () Bool)

(declare-fun res!3180317 () Bool)

(declare-fun e!4739643 () Bool)

(assert (=> b!8045379 (=> (not res!3180317) (not e!4739643))))

(declare-datatypes ((LexerInterface!8339 0))(
  ( (LexerInterfaceExt!8336 (__x!35419 Int)) (Lexer!8337) )
))
(declare-fun thiss!26855 () LexerInterface!8339)

(declare-datatypes ((C!43978 0))(
  ( (C!43979 (val!32765 Int)) )
))
(declare-datatypes ((List!75412 0))(
  ( (Nil!75286) (Cons!75286 (h!81734 C!43978) (t!391182 List!75412)) )
))
(declare-datatypes ((IArray!32095 0))(
  ( (IArray!32096 (innerList!16105 List!75412)) )
))
(declare-datatypes ((Conc!16017 0))(
  ( (Node!16017 (left!57357 Conc!16017) (right!57687 Conc!16017) (csize!32264 Int) (cheight!16228 Int)) (Leaf!30702 (xs!19415 IArray!32095) (csize!32265 Int)) (Empty!16017) )
))
(declare-datatypes ((List!75413 0))(
  ( (Nil!75287) (Cons!75287 (h!81735 (_ BitVec 16)) (t!391183 List!75413)) )
))
(declare-datatypes ((TokenValue!9069 0))(
  ( (FloatLiteralValue!18138 (text!63928 List!75413)) (TokenValueExt!9068 (__x!35420 Int)) (Broken!45345 (value!292365 List!75413)) (Object!9194) (End!9069) (Def!9069) (Underscore!9069) (Match!9069) (Else!9069) (Error!9069) (Case!9069) (If!9069) (Extends!9069) (Abstract!9069) (Class!9069) (Val!9069) (DelimiterValue!18138 (del!9129 List!75413)) (KeywordValue!9075 (value!292366 List!75413)) (CommentValue!18138 (value!292367 List!75413)) (WhitespaceValue!18138 (value!292368 List!75413)) (IndentationValue!9069 (value!292369 List!75413)) (String!85120) (Int32!9069) (Broken!45346 (value!292370 List!75413)) (Boolean!9070) (Unit!171116) (OperatorValue!9072 (op!9129 List!75413)) (IdentifierValue!18138 (value!292371 List!75413)) (IdentifierValue!18139 (value!292372 List!75413)) (WhitespaceValue!18139 (value!292373 List!75413)) (True!18138) (False!18138) (Broken!45347 (value!292374 List!75413)) (Broken!45348 (value!292375 List!75413)) (True!18139) (RightBrace!9069) (RightBracket!9069) (Colon!9069) (Null!9069) (Comma!9069) (LeftBracket!9069) (False!18139) (LeftBrace!9069) (ImaginaryLiteralValue!9069 (text!63929 List!75413)) (StringLiteralValue!27207 (value!292376 List!75413)) (EOFValue!9069 (value!292377 List!75413)) (IdentValue!9069 (value!292378 List!75413)) (DelimiterValue!18139 (value!292379 List!75413)) (DedentValue!9069 (value!292380 List!75413)) (NewLineValue!9069 (value!292381 List!75413)) (IntegerValue!27207 (value!292382 (_ BitVec 32)) (text!63930 List!75413)) (IntegerValue!27208 (value!292383 Int) (text!63931 List!75413)) (Times!9069) (Or!9069) (Equal!9069) (Minus!9069) (Broken!45349 (value!292384 List!75413)) (And!9069) (Div!9069) (LessEqual!9069) (Mod!9069) (Concat!30889) (Not!9069) (Plus!9069) (SpaceValue!9069 (value!292385 List!75413)) (IntegerValue!27209 (value!292386 Int) (text!63932 List!75413)) (StringLiteralValue!27208 (text!63933 List!75413)) (FloatLiteralValue!18139 (text!63934 List!75413)) (BytesLiteralValue!9069 (value!292387 List!75413)) (CommentValue!18139 (value!292388 List!75413)) (StringLiteralValue!27209 (value!292389 List!75413)) (ErrorTokenValue!9069 (msg!9130 List!75413)) )
))
(declare-datatypes ((BalanceConc!30990 0))(
  ( (BalanceConc!30991 (c!1475411 Conc!16017)) )
))
(declare-datatypes ((TokenValueInjection!17446 0))(
  ( (TokenValueInjection!17447 (toValue!11828 Int) (toChars!11687 Int)) )
))
(declare-datatypes ((Regex!21820 0))(
  ( (ElementMatch!21820 (c!1475412 C!43978)) (Concat!30890 (regOne!44152 Regex!21820) (regTwo!44152 Regex!21820)) (EmptyExpr!21820) (Star!21820 (reg!22149 Regex!21820)) (EmptyLang!21820) (Union!21820 (regOne!44153 Regex!21820) (regTwo!44153 Regex!21820)) )
))
(declare-datatypes ((String!85121 0))(
  ( (String!85122 (value!292390 String)) )
))
(declare-datatypes ((Rule!17298 0))(
  ( (Rule!17299 (regex!8749 Regex!21820) (tag!9613 String!85121) (isSeparator!8749 Bool) (transformation!8749 TokenValueInjection!17446)) )
))
(declare-datatypes ((List!75414 0))(
  ( (Nil!75288) (Cons!75288 (h!81736 Rule!17298) (t!391184 List!75414)) )
))
(declare-fun lt!2722667 () List!75414)

(declare-fun rulesValidInductive!3468 (LexerInterface!8339 List!75414) Bool)

(assert (=> b!8045379 (= res!3180317 (rulesValidInductive!3468 thiss!26855 lt!2722667))))

(declare-fun b!8045380 () Bool)

(declare-fun e!4739642 () Bool)

(declare-fun e!4739640 () Bool)

(declare-fun tp!2411460 () Bool)

(assert (=> b!8045380 (= e!4739642 (and e!4739640 tp!2411460))))

(declare-fun b!8045381 () Bool)

(declare-fun tp!2411456 () Bool)

(declare-fun rules!4030 () List!75414)

(declare-fun inv!97040 (String!85121) Bool)

(declare-fun inv!97043 (TokenValueInjection!17446) Bool)

(assert (=> b!8045381 (= e!4739640 (and tp!2411456 (inv!97040 (tag!9613 (h!81736 rules!4030))) (inv!97043 (transformation!8749 (h!81736 rules!4030))) e!4739639))))

(declare-fun e!4739641 () Bool)

(declare-fun tp!2411454 () Bool)

(declare-fun r!4387 () Rule!17298)

(declare-fun e!4739636 () Bool)

(declare-fun b!8045382 () Bool)

(assert (=> b!8045382 (= e!4739641 (and tp!2411454 (inv!97040 (tag!9613 r!4387)) (inv!97043 (transformation!8749 r!4387)) e!4739636))))

(declare-fun b!8045383 () Bool)

(declare-fun res!3180320 () Bool)

(assert (=> b!8045383 (=> (not res!3180320) (not e!4739643))))

(assert (=> b!8045383 (= res!3180320 (rulesValidInductive!3468 thiss!26855 rules!4030))))

(declare-fun b!8045384 () Bool)

(declare-fun e!4739637 () Bool)

(assert (=> b!8045384 (= e!4739637 e!4739643)))

(declare-fun res!3180318 () Bool)

(assert (=> b!8045384 (=> (not res!3180318) (not e!4739643))))

(declare-fun rulesInvariant!6807 (LexerInterface!8339 List!75414) Bool)

(assert (=> b!8045384 (= res!3180318 (rulesInvariant!6807 thiss!26855 lt!2722667))))

(assert (=> b!8045384 (= lt!2722667 (Cons!75288 r!4387 rules!4030))))

(declare-fun b!8045385 () Bool)

(declare-fun res!3180316 () Bool)

(assert (=> b!8045385 (=> (not res!3180316) (not e!4739643))))

(declare-datatypes ((List!75415 0))(
  ( (Nil!75289) (Cons!75289 (h!81737 String!85121) (t!391185 List!75415)) )
))
(declare-fun noDuplicateTag!3327 (LexerInterface!8339 List!75414 List!75415) Bool)

(assert (=> b!8045385 (= res!3180316 (noDuplicateTag!3327 thiss!26855 lt!2722667 Nil!75289))))

(declare-fun res!3180319 () Bool)

(assert (=> start!757526 (=> (not res!3180319) (not e!4739637))))

(assert (=> start!757526 (= res!3180319 (is-Lexer!8337 thiss!26855))))

(assert (=> start!757526 e!4739637))

(assert (=> start!757526 true))

(assert (=> start!757526 e!4739641))

(assert (=> start!757526 e!4739642))

(assert (=> b!8045386 (= e!4739636 (and tp!2411455 tp!2411459))))

(declare-fun b!8045387 () Bool)

(assert (=> b!8045387 (= e!4739643 (not (noDuplicateTag!3327 thiss!26855 rules!4030 (Cons!75289 (tag!9613 r!4387) Nil!75289))))))

(assert (= (and start!757526 res!3180319) b!8045384))

(assert (= (and b!8045384 res!3180318) b!8045379))

(assert (= (and b!8045379 res!3180317) b!8045385))

(assert (= (and b!8045385 res!3180316) b!8045383))

(assert (= (and b!8045383 res!3180320) b!8045387))

(assert (= b!8045382 b!8045386))

(assert (= start!757526 b!8045382))

(assert (= b!8045381 b!8045378))

(assert (= b!8045380 b!8045381))

(assert (= (and start!757526 (is-Cons!75288 rules!4030)) b!8045380))

(declare-fun m!8397938 () Bool)

(assert (=> b!8045385 m!8397938))

(declare-fun m!8397940 () Bool)

(assert (=> b!8045382 m!8397940))

(declare-fun m!8397942 () Bool)

(assert (=> b!8045382 m!8397942))

(declare-fun m!8397944 () Bool)

(assert (=> b!8045384 m!8397944))

(declare-fun m!8397946 () Bool)

(assert (=> b!8045381 m!8397946))

(declare-fun m!8397948 () Bool)

(assert (=> b!8045381 m!8397948))

(declare-fun m!8397950 () Bool)

(assert (=> b!8045383 m!8397950))

(declare-fun m!8397952 () Bool)

(assert (=> b!8045387 m!8397952))

(declare-fun m!8397954 () Bool)

(assert (=> b!8045379 m!8397954))

(push 1)

(assert (not b_next!137107))

(assert (not b!8045382))

(assert (not b_next!137109))

(assert (not b!8045383))

(assert (not b!8045380))

(assert b_and!354751)

(assert (not b!8045379))

(assert b_and!354757)

(assert b_and!354753)

(assert (not b_next!137111))

(assert (not b!8045381))

(assert b_and!354755)

(assert (not b!8045384))

(assert (not b_next!137105))

(assert (not b!8045387))

(assert (not b!8045385))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137107))

(assert b_and!354755)

(assert (not b_next!137109))

(assert b_and!354751)

(assert (not b_next!137105))

(assert b_and!354757)

(assert b_and!354753)

(assert (not b_next!137111))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2396363 () Bool)

(assert (=> d!2396363 true))

(declare-fun lt!2722675 () Bool)

(declare-fun lambda!472726 () Int)

(declare-fun forall!18470 (List!75414 Int) Bool)

(assert (=> d!2396363 (= lt!2722675 (forall!18470 rules!4030 lambda!472726))))

(declare-fun e!4739687 () Bool)

(assert (=> d!2396363 (= lt!2722675 e!4739687)))

(declare-fun res!3180355 () Bool)

(assert (=> d!2396363 (=> res!3180355 e!4739687)))

(assert (=> d!2396363 (= res!3180355 (not (is-Cons!75288 rules!4030)))))

(assert (=> d!2396363 (= (rulesValidInductive!3468 thiss!26855 rules!4030) lt!2722675)))

(declare-fun b!8045432 () Bool)

(declare-fun e!4739686 () Bool)

(assert (=> b!8045432 (= e!4739687 e!4739686)))

(declare-fun res!3180354 () Bool)

(assert (=> b!8045432 (=> (not res!3180354) (not e!4739686))))

(declare-fun ruleValid!3994 (LexerInterface!8339 Rule!17298) Bool)

(assert (=> b!8045432 (= res!3180354 (ruleValid!3994 thiss!26855 (h!81736 rules!4030)))))

(declare-fun b!8045433 () Bool)

(assert (=> b!8045433 (= e!4739686 (rulesValidInductive!3468 thiss!26855 (t!391184 rules!4030)))))

(assert (= (and d!2396363 (not res!3180355)) b!8045432))

(assert (= (and b!8045432 res!3180354) b!8045433))

(declare-fun m!8397978 () Bool)

(assert (=> d!2396363 m!8397978))

(declare-fun m!8397980 () Bool)

(assert (=> b!8045432 m!8397980))

(declare-fun m!8397982 () Bool)

(assert (=> b!8045433 m!8397982))

(assert (=> b!8045383 d!2396363))

(declare-fun bs!1971681 () Bool)

(declare-fun d!2396369 () Bool)

(assert (= bs!1971681 (and d!2396369 d!2396363)))

(declare-fun lambda!472727 () Int)

(assert (=> bs!1971681 (= lambda!472727 lambda!472726)))

(assert (=> d!2396369 true))

(declare-fun lt!2722676 () Bool)

(assert (=> d!2396369 (= lt!2722676 (forall!18470 lt!2722667 lambda!472727))))

(declare-fun e!4739689 () Bool)

(assert (=> d!2396369 (= lt!2722676 e!4739689)))

(declare-fun res!3180357 () Bool)

(assert (=> d!2396369 (=> res!3180357 e!4739689)))

(assert (=> d!2396369 (= res!3180357 (not (is-Cons!75288 lt!2722667)))))

(assert (=> d!2396369 (= (rulesValidInductive!3468 thiss!26855 lt!2722667) lt!2722676)))

(declare-fun b!8045436 () Bool)

(declare-fun e!4739688 () Bool)

(assert (=> b!8045436 (= e!4739689 e!4739688)))

(declare-fun res!3180356 () Bool)

(assert (=> b!8045436 (=> (not res!3180356) (not e!4739688))))

(assert (=> b!8045436 (= res!3180356 (ruleValid!3994 thiss!26855 (h!81736 lt!2722667)))))

(declare-fun b!8045437 () Bool)

(assert (=> b!8045437 (= e!4739688 (rulesValidInductive!3468 thiss!26855 (t!391184 lt!2722667)))))

(assert (= (and d!2396369 (not res!3180357)) b!8045436))

(assert (= (and b!8045436 res!3180356) b!8045437))

(declare-fun m!8397984 () Bool)

(assert (=> d!2396369 m!8397984))

(declare-fun m!8397986 () Bool)

(assert (=> b!8045436 m!8397986))

(declare-fun m!8397988 () Bool)

(assert (=> b!8045437 m!8397988))

(assert (=> b!8045379 d!2396369))

(declare-fun d!2396371 () Bool)

(declare-fun res!3180360 () Bool)

(declare-fun e!4739692 () Bool)

(assert (=> d!2396371 (=> (not res!3180360) (not e!4739692))))

(declare-fun rulesValid!3158 (LexerInterface!8339 List!75414) Bool)

(assert (=> d!2396371 (= res!3180360 (rulesValid!3158 thiss!26855 lt!2722667))))

(assert (=> d!2396371 (= (rulesInvariant!6807 thiss!26855 lt!2722667) e!4739692)))

(declare-fun b!8045440 () Bool)

(assert (=> b!8045440 (= e!4739692 (noDuplicateTag!3327 thiss!26855 lt!2722667 Nil!75289))))

(assert (= (and d!2396371 res!3180360) b!8045440))

(declare-fun m!8397990 () Bool)

(assert (=> d!2396371 m!8397990))

(assert (=> b!8045440 m!8397938))

(assert (=> b!8045384 d!2396371))

(declare-fun d!2396373 () Bool)

(declare-fun res!3180365 () Bool)

(declare-fun e!4739697 () Bool)

(assert (=> d!2396373 (=> res!3180365 e!4739697)))

(assert (=> d!2396373 (= res!3180365 (is-Nil!75288 lt!2722667))))

(assert (=> d!2396373 (= (noDuplicateTag!3327 thiss!26855 lt!2722667 Nil!75289) e!4739697)))

(declare-fun b!8045445 () Bool)

(declare-fun e!4739698 () Bool)

(assert (=> b!8045445 (= e!4739697 e!4739698)))

(declare-fun res!3180366 () Bool)

(assert (=> b!8045445 (=> (not res!3180366) (not e!4739698))))

(declare-fun contains!21059 (List!75415 String!85121) Bool)

(assert (=> b!8045445 (= res!3180366 (not (contains!21059 Nil!75289 (tag!9613 (h!81736 lt!2722667)))))))

(declare-fun b!8045446 () Bool)

(assert (=> b!8045446 (= e!4739698 (noDuplicateTag!3327 thiss!26855 (t!391184 lt!2722667) (Cons!75289 (tag!9613 (h!81736 lt!2722667)) Nil!75289)))))

(assert (= (and d!2396373 (not res!3180365)) b!8045445))

(assert (= (and b!8045445 res!3180366) b!8045446))

(declare-fun m!8397992 () Bool)

(assert (=> b!8045445 m!8397992))

(declare-fun m!8397994 () Bool)

(assert (=> b!8045446 m!8397994))

(assert (=> b!8045385 d!2396373))

(declare-fun d!2396375 () Bool)

(declare-fun res!3180367 () Bool)

(declare-fun e!4739699 () Bool)

(assert (=> d!2396375 (=> res!3180367 e!4739699)))

(assert (=> d!2396375 (= res!3180367 (is-Nil!75288 rules!4030))))

(assert (=> d!2396375 (= (noDuplicateTag!3327 thiss!26855 rules!4030 (Cons!75289 (tag!9613 r!4387) Nil!75289)) e!4739699)))

(declare-fun b!8045447 () Bool)

(declare-fun e!4739700 () Bool)

(assert (=> b!8045447 (= e!4739699 e!4739700)))

(declare-fun res!3180368 () Bool)

(assert (=> b!8045447 (=> (not res!3180368) (not e!4739700))))

(assert (=> b!8045447 (= res!3180368 (not (contains!21059 (Cons!75289 (tag!9613 r!4387) Nil!75289) (tag!9613 (h!81736 rules!4030)))))))

(declare-fun b!8045448 () Bool)

(assert (=> b!8045448 (= e!4739700 (noDuplicateTag!3327 thiss!26855 (t!391184 rules!4030) (Cons!75289 (tag!9613 (h!81736 rules!4030)) (Cons!75289 (tag!9613 r!4387) Nil!75289))))))

(assert (= (and d!2396375 (not res!3180367)) b!8045447))

(assert (= (and b!8045447 res!3180368) b!8045448))

(declare-fun m!8397996 () Bool)

(assert (=> b!8045447 m!8397996))

(declare-fun m!8397998 () Bool)

(assert (=> b!8045448 m!8397998))

(assert (=> b!8045387 d!2396375))

(declare-fun d!2396377 () Bool)

(assert (=> d!2396377 (= (inv!97040 (tag!9613 r!4387)) (= (mod (str.len (value!292390 (tag!9613 r!4387))) 2) 0))))

(assert (=> b!8045382 d!2396377))

(declare-fun d!2396379 () Bool)

(declare-fun res!3180371 () Bool)

(declare-fun e!4739703 () Bool)

(assert (=> d!2396379 (=> (not res!3180371) (not e!4739703))))

(declare-fun semiInverseModEq!3884 (Int Int) Bool)

(assert (=> d!2396379 (= res!3180371 (semiInverseModEq!3884 (toChars!11687 (transformation!8749 r!4387)) (toValue!11828 (transformation!8749 r!4387))))))

(assert (=> d!2396379 (= (inv!97043 (transformation!8749 r!4387)) e!4739703)))

(declare-fun b!8045451 () Bool)

(declare-fun equivClasses!3699 (Int Int) Bool)

(assert (=> b!8045451 (= e!4739703 (equivClasses!3699 (toChars!11687 (transformation!8749 r!4387)) (toValue!11828 (transformation!8749 r!4387))))))

(assert (= (and d!2396379 res!3180371) b!8045451))

(declare-fun m!8398000 () Bool)

(assert (=> d!2396379 m!8398000))

(declare-fun m!8398002 () Bool)

(assert (=> b!8045451 m!8398002))

(assert (=> b!8045382 d!2396379))

(declare-fun d!2396381 () Bool)

(assert (=> d!2396381 (= (inv!97040 (tag!9613 (h!81736 rules!4030))) (= (mod (str.len (value!292390 (tag!9613 (h!81736 rules!4030)))) 2) 0))))

(assert (=> b!8045381 d!2396381))

(declare-fun d!2396383 () Bool)

(declare-fun res!3180372 () Bool)

(declare-fun e!4739704 () Bool)

(assert (=> d!2396383 (=> (not res!3180372) (not e!4739704))))

(assert (=> d!2396383 (= res!3180372 (semiInverseModEq!3884 (toChars!11687 (transformation!8749 (h!81736 rules!4030))) (toValue!11828 (transformation!8749 (h!81736 rules!4030)))))))

(assert (=> d!2396383 (= (inv!97043 (transformation!8749 (h!81736 rules!4030))) e!4739704)))

(declare-fun b!8045452 () Bool)

(assert (=> b!8045452 (= e!4739704 (equivClasses!3699 (toChars!11687 (transformation!8749 (h!81736 rules!4030))) (toValue!11828 (transformation!8749 (h!81736 rules!4030)))))))

(assert (= (and d!2396383 res!3180372) b!8045452))

(declare-fun m!8398004 () Bool)

(assert (=> d!2396383 m!8398004))

(declare-fun m!8398006 () Bool)

(assert (=> b!8045452 m!8398006))

(assert (=> b!8045381 d!2396383))

(declare-fun b!8045463 () Bool)

(declare-fun b_free!136331 () Bool)

(declare-fun b_next!137121 () Bool)

(assert (=> b!8045463 (= b_free!136331 (not b_next!137121))))

(declare-fun tp!2411493 () Bool)

(declare-fun b_and!354767 () Bool)

(assert (=> b!8045463 (= tp!2411493 b_and!354767)))

(declare-fun b_free!136333 () Bool)

(declare-fun b_next!137123 () Bool)

(assert (=> b!8045463 (= b_free!136333 (not b_next!137123))))

(declare-fun tp!2411491 () Bool)

(declare-fun b_and!354769 () Bool)

(assert (=> b!8045463 (= tp!2411491 b_and!354769)))

(declare-fun e!4739713 () Bool)

(assert (=> b!8045463 (= e!4739713 (and tp!2411493 tp!2411491))))

(declare-fun b!8045462 () Bool)

(declare-fun e!4739715 () Bool)

(declare-fun tp!2411490 () Bool)

(assert (=> b!8045462 (= e!4739715 (and tp!2411490 (inv!97040 (tag!9613 (h!81736 (t!391184 rules!4030)))) (inv!97043 (transformation!8749 (h!81736 (t!391184 rules!4030)))) e!4739713))))

(declare-fun b!8045461 () Bool)

(declare-fun e!4739716 () Bool)

(declare-fun tp!2411492 () Bool)

(assert (=> b!8045461 (= e!4739716 (and e!4739715 tp!2411492))))

(assert (=> b!8045380 (= tp!2411460 e!4739716)))

(assert (= b!8045462 b!8045463))

(assert (= b!8045461 b!8045462))

(assert (= (and b!8045380 (is-Cons!75288 (t!391184 rules!4030))) b!8045461))

(declare-fun m!8398008 () Bool)

(assert (=> b!8045462 m!8398008))

(declare-fun m!8398010 () Bool)

(assert (=> b!8045462 m!8398010))

(declare-fun b!8045476 () Bool)

(declare-fun e!4739719 () Bool)

(declare-fun tp!2411507 () Bool)

(assert (=> b!8045476 (= e!4739719 tp!2411507)))

(assert (=> b!8045382 (= tp!2411454 e!4739719)))

(declare-fun b!8045475 () Bool)

(declare-fun tp!2411504 () Bool)

(declare-fun tp!2411508 () Bool)

(assert (=> b!8045475 (= e!4739719 (and tp!2411504 tp!2411508))))

(declare-fun b!8045477 () Bool)

(declare-fun tp!2411505 () Bool)

(declare-fun tp!2411506 () Bool)

(assert (=> b!8045477 (= e!4739719 (and tp!2411505 tp!2411506))))

(declare-fun b!8045474 () Bool)

(declare-fun tp_is_empty!54615 () Bool)

(assert (=> b!8045474 (= e!4739719 tp_is_empty!54615)))

(assert (= (and b!8045382 (is-ElementMatch!21820 (regex!8749 r!4387))) b!8045474))

(assert (= (and b!8045382 (is-Concat!30890 (regex!8749 r!4387))) b!8045475))

(assert (= (and b!8045382 (is-Star!21820 (regex!8749 r!4387))) b!8045476))

(assert (= (and b!8045382 (is-Union!21820 (regex!8749 r!4387))) b!8045477))

(declare-fun b!8045480 () Bool)

(declare-fun e!4739720 () Bool)

(declare-fun tp!2411512 () Bool)

(assert (=> b!8045480 (= e!4739720 tp!2411512)))

(assert (=> b!8045381 (= tp!2411456 e!4739720)))

(declare-fun b!8045479 () Bool)

(declare-fun tp!2411509 () Bool)

(declare-fun tp!2411513 () Bool)

(assert (=> b!8045479 (= e!4739720 (and tp!2411509 tp!2411513))))

(declare-fun b!8045481 () Bool)

(declare-fun tp!2411510 () Bool)

(declare-fun tp!2411511 () Bool)

(assert (=> b!8045481 (= e!4739720 (and tp!2411510 tp!2411511))))

(declare-fun b!8045478 () Bool)

(assert (=> b!8045478 (= e!4739720 tp_is_empty!54615)))

(assert (= (and b!8045381 (is-ElementMatch!21820 (regex!8749 (h!81736 rules!4030)))) b!8045478))

(assert (= (and b!8045381 (is-Concat!30890 (regex!8749 (h!81736 rules!4030)))) b!8045479))

(assert (= (and b!8045381 (is-Star!21820 (regex!8749 (h!81736 rules!4030)))) b!8045480))

(assert (= (and b!8045381 (is-Union!21820 (regex!8749 (h!81736 rules!4030)))) b!8045481))

(push 1)

(assert (not b!8045479))

(assert (not b!8045446))

(assert (not d!2396383))

(assert (not b!8045436))

(assert (not b!8045481))

(assert (not b_next!137109))

(assert (not b!8045437))

(assert (not b!8045433))

(assert (not b_next!137121))

(assert (not b!8045451))

(assert (not b!8045475))

(assert (not d!2396379))

(assert (not b!8045452))

(assert (not b_next!137107))

(assert (not b!8045480))

(assert (not b!8045477))

(assert (not b!8045461))

(assert b_and!354769)

(assert b_and!354757)

(assert b_and!354753)

(assert (not b_next!137111))

(assert (not b!8045462))

(assert (not d!2396369))

(assert b_and!354755)

(assert (not b!8045476))

(assert (not d!2396371))

(assert (not b!8045432))

(assert b_and!354751)

(assert tp_is_empty!54615)

(assert (not b_next!137123))

(assert (not b!8045440))

(assert (not d!2396363))

(assert (not b!8045448))

(assert (not b!8045445))

(assert (not b_next!137105))

(assert b_and!354767)

(assert (not b!8045447))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!137107))

(assert b_and!354769)

(assert b_and!354755)

(assert (not b_next!137109))

(assert (not b_next!137121))

(assert (not b_next!137105))

(assert b_and!354767)

(assert b_and!354757)

(assert b_and!354753)

(assert (not b_next!137111))

(assert b_and!354751)

(assert (not b_next!137123))

(check-sat)

(pop 1)

