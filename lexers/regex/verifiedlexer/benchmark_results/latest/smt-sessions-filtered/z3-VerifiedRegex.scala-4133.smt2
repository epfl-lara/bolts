; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!221528 () Bool)

(assert start!221528)

(declare-fun b!2267549 () Bool)

(declare-fun b_free!67293 () Bool)

(declare-fun b_next!67997 () Bool)

(assert (=> b!2267549 (= b_free!67293 (not b_next!67997))))

(declare-fun tp!717526 () Bool)

(declare-fun b_and!178521 () Bool)

(assert (=> b!2267549 (= tp!717526 b_and!178521)))

(declare-fun b_free!67295 () Bool)

(declare-fun b_next!67999 () Bool)

(assert (=> b!2267549 (= b_free!67295 (not b_next!67999))))

(declare-fun tp!717530 () Bool)

(declare-fun b_and!178523 () Bool)

(assert (=> b!2267549 (= tp!717530 b_and!178523)))

(declare-fun b!2267546 () Bool)

(declare-fun b_free!67297 () Bool)

(declare-fun b_next!68001 () Bool)

(assert (=> b!2267546 (= b_free!67297 (not b_next!68001))))

(declare-fun tp!717538 () Bool)

(declare-fun b_and!178525 () Bool)

(assert (=> b!2267546 (= tp!717538 b_and!178525)))

(declare-fun b_free!67299 () Bool)

(declare-fun b_next!68003 () Bool)

(assert (=> b!2267546 (= b_free!67299 (not b_next!68003))))

(declare-fun tp!717541 () Bool)

(declare-fun b_and!178527 () Bool)

(assert (=> b!2267546 (= tp!717541 b_and!178527)))

(declare-fun b!2267539 () Bool)

(declare-fun b_free!67301 () Bool)

(declare-fun b_next!68005 () Bool)

(assert (=> b!2267539 (= b_free!67301 (not b_next!68005))))

(declare-fun tp!717539 () Bool)

(declare-fun b_and!178529 () Bool)

(assert (=> b!2267539 (= tp!717539 b_and!178529)))

(declare-fun b_free!67303 () Bool)

(declare-fun b_next!68007 () Bool)

(assert (=> b!2267539 (= b_free!67303 (not b_next!68007))))

(declare-fun tp!717540 () Bool)

(declare-fun b_and!178531 () Bool)

(assert (=> b!2267539 (= tp!717540 b_and!178531)))

(declare-fun b!2267552 () Bool)

(declare-fun b_free!67305 () Bool)

(declare-fun b_next!68009 () Bool)

(assert (=> b!2267552 (= b_free!67305 (not b_next!68009))))

(declare-fun tp!717528 () Bool)

(declare-fun b_and!178533 () Bool)

(assert (=> b!2267552 (= tp!717528 b_and!178533)))

(declare-fun b_free!67307 () Bool)

(declare-fun b_next!68011 () Bool)

(assert (=> b!2267552 (= b_free!67307 (not b_next!68011))))

(declare-fun tp!717537 () Bool)

(declare-fun b_and!178535 () Bool)

(assert (=> b!2267552 (= tp!717537 b_and!178535)))

(declare-fun b!2267531 () Bool)

(declare-fun e!1452322 () Bool)

(declare-fun e!1452333 () Bool)

(assert (=> b!2267531 (= e!1452322 (not e!1452333))))

(declare-fun res!969577 () Bool)

(assert (=> b!2267531 (=> res!969577 e!1452333)))

(declare-fun e!1452341 () Bool)

(assert (=> b!2267531 (= res!969577 e!1452341)))

(declare-fun res!969579 () Bool)

(assert (=> b!2267531 (=> (not res!969579) (not e!1452341))))

(declare-fun lt!842574 () Bool)

(assert (=> b!2267531 (= res!969579 (not lt!842574))))

(declare-datatypes ((LexerInterface!3894 0))(
  ( (LexerInterfaceExt!3891 (__x!17978 Int)) (Lexer!3892) )
))
(declare-fun thiss!16613 () LexerInterface!3894)

(declare-datatypes ((List!27059 0))(
  ( (Nil!26965) (Cons!26965 (h!32366 (_ BitVec 16)) (t!202201 List!27059)) )
))
(declare-datatypes ((TokenValue!4459 0))(
  ( (FloatLiteralValue!8918 (text!31658 List!27059)) (TokenValueExt!4458 (__x!17979 Int)) (Broken!22295 (value!136258 List!27059)) (Object!4552) (End!4459) (Def!4459) (Underscore!4459) (Match!4459) (Else!4459) (Error!4459) (Case!4459) (If!4459) (Extends!4459) (Abstract!4459) (Class!4459) (Val!4459) (DelimiterValue!8918 (del!4519 List!27059)) (KeywordValue!4465 (value!136259 List!27059)) (CommentValue!8918 (value!136260 List!27059)) (WhitespaceValue!8918 (value!136261 List!27059)) (IndentationValue!4459 (value!136262 List!27059)) (String!29398) (Int32!4459) (Broken!22296 (value!136263 List!27059)) (Boolean!4460) (Unit!39921) (OperatorValue!4462 (op!4519 List!27059)) (IdentifierValue!8918 (value!136264 List!27059)) (IdentifierValue!8919 (value!136265 List!27059)) (WhitespaceValue!8919 (value!136266 List!27059)) (True!8918) (False!8918) (Broken!22297 (value!136267 List!27059)) (Broken!22298 (value!136268 List!27059)) (True!8919) (RightBrace!4459) (RightBracket!4459) (Colon!4459) (Null!4459) (Comma!4459) (LeftBracket!4459) (False!8919) (LeftBrace!4459) (ImaginaryLiteralValue!4459 (text!31659 List!27059)) (StringLiteralValue!13377 (value!136269 List!27059)) (EOFValue!4459 (value!136270 List!27059)) (IdentValue!4459 (value!136271 List!27059)) (DelimiterValue!8919 (value!136272 List!27059)) (DedentValue!4459 (value!136273 List!27059)) (NewLineValue!4459 (value!136274 List!27059)) (IntegerValue!13377 (value!136275 (_ BitVec 32)) (text!31660 List!27059)) (IntegerValue!13378 (value!136276 Int) (text!31661 List!27059)) (Times!4459) (Or!4459) (Equal!4459) (Minus!4459) (Broken!22299 (value!136277 List!27059)) (And!4459) (Div!4459) (LessEqual!4459) (Mod!4459) (Concat!11104) (Not!4459) (Plus!4459) (SpaceValue!4459 (value!136278 List!27059)) (IntegerValue!13379 (value!136279 Int) (text!31662 List!27059)) (StringLiteralValue!13378 (text!31663 List!27059)) (FloatLiteralValue!8919 (text!31664 List!27059)) (BytesLiteralValue!4459 (value!136280 List!27059)) (CommentValue!8919 (value!136281 List!27059)) (StringLiteralValue!13379 (value!136282 List!27059)) (ErrorTokenValue!4459 (msg!4520 List!27059)) )
))
(declare-datatypes ((C!13436 0))(
  ( (C!13437 (val!7766 Int)) )
))
(declare-datatypes ((List!27060 0))(
  ( (Nil!26966) (Cons!26966 (h!32367 C!13436) (t!202202 List!27060)) )
))
(declare-datatypes ((IArray!17489 0))(
  ( (IArray!17490 (innerList!8802 List!27060)) )
))
(declare-datatypes ((Conc!8742 0))(
  ( (Node!8742 (left!20459 Conc!8742) (right!20789 Conc!8742) (csize!17714 Int) (cheight!8953 Int)) (Leaf!12876 (xs!11684 IArray!17489) (csize!17715 Int)) (Empty!8742) )
))
(declare-datatypes ((BalanceConc!17212 0))(
  ( (BalanceConc!17213 (c!360048 Conc!8742)) )
))
(declare-datatypes ((Regex!6645 0))(
  ( (ElementMatch!6645 (c!360049 C!13436)) (Concat!11105 (regOne!13802 Regex!6645) (regTwo!13802 Regex!6645)) (EmptyExpr!6645) (Star!6645 (reg!6974 Regex!6645)) (EmptyLang!6645) (Union!6645 (regOne!13803 Regex!6645) (regTwo!13803 Regex!6645)) )
))
(declare-datatypes ((String!29399 0))(
  ( (String!29400 (value!136283 String)) )
))
(declare-datatypes ((TokenValueInjection!8458 0))(
  ( (TokenValueInjection!8459 (toValue!6051 Int) (toChars!5910 Int)) )
))
(declare-datatypes ((Rule!8394 0))(
  ( (Rule!8395 (regex!4297 Regex!6645) (tag!4787 String!29399) (isSeparator!4297 Bool) (transformation!4297 TokenValueInjection!8458)) )
))
(declare-fun r!2363 () Rule!8394)

(declare-fun ruleValid!1389 (LexerInterface!3894 Rule!8394) Bool)

(assert (=> b!2267531 (ruleValid!1389 thiss!16613 r!2363)))

(declare-datatypes ((Unit!39922 0))(
  ( (Unit!39923) )
))
(declare-fun lt!842573 () Unit!39922)

(declare-datatypes ((List!27061 0))(
  ( (Nil!26967) (Cons!26967 (h!32368 Rule!8394) (t!202203 List!27061)) )
))
(declare-fun rules!1750 () List!27061)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!796 (LexerInterface!3894 Rule!8394 List!27061) Unit!39922)

(assert (=> b!2267531 (= lt!842573 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!796 thiss!16613 r!2363 rules!1750))))

(declare-fun b!2267532 () Bool)

(declare-fun res!969569 () Bool)

(declare-fun e!1452330 () Bool)

(assert (=> b!2267532 (=> (not res!969569) (not e!1452330))))

(declare-fun isEmpty!15261 (List!27061) Bool)

(assert (=> b!2267532 (= res!969569 (not (isEmpty!15261 rules!1750)))))

(declare-fun b!2267533 () Bool)

(declare-fun e!1452337 () Bool)

(declare-fun tp_is_empty!10511 () Bool)

(declare-fun tp!717535 () Bool)

(assert (=> b!2267533 (= e!1452337 (and tp_is_empty!10511 tp!717535))))

(declare-fun b!2267534 () Bool)

(declare-fun e!1452345 () Bool)

(declare-datatypes ((Token!8072 0))(
  ( (Token!8073 (value!136284 TokenValue!4459) (rule!6613 Rule!8394) (size!21152 Int) (originalCharacters!5067 List!27060)) )
))
(declare-datatypes ((List!27062 0))(
  ( (Nil!26968) (Cons!26968 (h!32369 Token!8072) (t!202204 List!27062)) )
))
(declare-fun tokens!456 () List!27062)

(declare-fun head!4886 (List!27062) Token!8072)

(assert (=> b!2267534 (= e!1452345 (= (rule!6613 (head!4886 tokens!456)) r!2363))))

(declare-fun b!2267535 () Bool)

(declare-fun e!1452320 () Bool)

(assert (=> b!2267535 (= e!1452333 e!1452320)))

(declare-fun res!969565 () Bool)

(assert (=> b!2267535 (=> res!969565 e!1452320)))

(declare-fun otherR!12 () Rule!8394)

(declare-fun getIndex!318 (List!27061 Rule!8394) Int)

(assert (=> b!2267535 (= res!969565 (<= (getIndex!318 rules!1750 r!2363) (getIndex!318 rules!1750 otherR!12)))))

(assert (=> b!2267535 (ruleValid!1389 thiss!16613 otherR!12)))

(declare-fun lt!842575 () Unit!39922)

(assert (=> b!2267535 (= lt!842575 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!796 thiss!16613 otherR!12 rules!1750))))

(declare-fun b!2267536 () Bool)

(declare-fun matchR!2906 (Regex!6645 List!27060) Bool)

(declare-fun list!10433 (BalanceConc!17212) List!27060)

(declare-fun charsOf!2685 (Token!8072) BalanceConc!17212)

(assert (=> b!2267536 (= e!1452341 (not (matchR!2906 (regex!4297 r!2363) (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(declare-fun b!2267537 () Bool)

(declare-fun e!1452334 () Bool)

(declare-fun e!1452328 () Bool)

(declare-fun tp!717524 () Bool)

(assert (=> b!2267537 (= e!1452334 (and e!1452328 tp!717524))))

(declare-fun b!2267538 () Bool)

(declare-fun e!1452343 () Bool)

(assert (=> b!2267538 (= e!1452330 e!1452343)))

(declare-fun res!969572 () Bool)

(assert (=> b!2267538 (=> (not res!969572) (not e!1452343))))

(declare-fun suffix!886 () List!27060)

(declare-datatypes ((IArray!17491 0))(
  ( (IArray!17492 (innerList!8803 List!27062)) )
))
(declare-datatypes ((Conc!8743 0))(
  ( (Node!8743 (left!20460 Conc!8743) (right!20790 Conc!8743) (csize!17716 Int) (cheight!8954 Int)) (Leaf!12877 (xs!11685 IArray!17491) (csize!17717 Int)) (Empty!8743) )
))
(declare-datatypes ((BalanceConc!17214 0))(
  ( (BalanceConc!17215 (c!360050 Conc!8743)) )
))
(declare-datatypes ((tuple2!26618 0))(
  ( (tuple2!26619 (_1!15819 BalanceConc!17214) (_2!15819 BalanceConc!17212)) )
))
(declare-fun lt!842576 () tuple2!26618)

(declare-datatypes ((tuple2!26620 0))(
  ( (tuple2!26621 (_1!15820 List!27062) (_2!15820 List!27060)) )
))
(declare-fun list!10434 (BalanceConc!17214) List!27062)

(assert (=> b!2267538 (= res!969572 (= (tuple2!26621 (list!10434 (_1!15819 lt!842576)) (list!10433 (_2!15819 lt!842576))) (tuple2!26621 tokens!456 suffix!886)))))

(declare-fun input!1722 () List!27060)

(declare-fun lex!1733 (LexerInterface!3894 List!27061 BalanceConc!17212) tuple2!26618)

(declare-fun seqFromList!3001 (List!27060) BalanceConc!17212)

(assert (=> b!2267538 (= lt!842576 (lex!1733 thiss!16613 rules!1750 (seqFromList!3001 input!1722)))))

(declare-fun e!1452335 () Bool)

(assert (=> b!2267539 (= e!1452335 (and tp!717539 tp!717540))))

(declare-fun b!2267541 () Bool)

(declare-fun res!969566 () Bool)

(assert (=> b!2267541 (=> res!969566 e!1452320)))

(get-info :version)

(assert (=> b!2267541 (= res!969566 ((_ is Nil!26968) tokens!456))))

(declare-fun b!2267542 () Bool)

(declare-datatypes ((tuple2!26622 0))(
  ( (tuple2!26623 (_1!15821 Token!8072) (_2!15821 List!27060)) )
))
(declare-datatypes ((Option!5275 0))(
  ( (None!5274) (Some!5274 (v!30316 tuple2!26622)) )
))
(declare-fun get!8139 (Option!5275) tuple2!26622)

(declare-fun maxPrefix!2168 (LexerInterface!3894 List!27061 List!27060) Option!5275)

(assert (=> b!2267542 (= e!1452320 (= (h!32369 tokens!456) (_1!15821 (get!8139 (maxPrefix!2168 thiss!16613 rules!1750 input!1722)))))))

(declare-fun b!2267543 () Bool)

(declare-fun res!969571 () Bool)

(assert (=> b!2267543 (=> (not res!969571) (not e!1452330))))

(declare-fun contains!4655 (List!27061 Rule!8394) Bool)

(assert (=> b!2267543 (= res!969571 (contains!4655 rules!1750 r!2363))))

(declare-fun b!2267544 () Bool)

(declare-fun e!1452340 () Bool)

(declare-fun tp!717525 () Bool)

(assert (=> b!2267544 (= e!1452340 (and tp_is_empty!10511 tp!717525))))

(declare-fun tp!717531 () Bool)

(declare-fun b!2267545 () Bool)

(declare-fun e!1452336 () Bool)

(declare-fun e!1452323 () Bool)

(declare-fun inv!36506 (String!29399) Bool)

(declare-fun inv!36509 (TokenValueInjection!8458) Bool)

(assert (=> b!2267545 (= e!1452336 (and tp!717531 (inv!36506 (tag!4787 otherR!12)) (inv!36509 (transformation!4297 otherR!12)) e!1452323))))

(assert (=> b!2267546 (= e!1452323 (and tp!717538 tp!717541))))

(declare-fun e!1452327 () Bool)

(declare-fun b!2267547 () Bool)

(declare-fun tp!717532 () Bool)

(declare-fun e!1452344 () Bool)

(assert (=> b!2267547 (= e!1452327 (and tp!717532 (inv!36506 (tag!4787 r!2363)) (inv!36509 (transformation!4297 r!2363)) e!1452344))))

(declare-fun b!2267548 () Bool)

(declare-fun res!969573 () Bool)

(assert (=> b!2267548 (=> (not res!969573) (not e!1452322))))

(assert (=> b!2267548 (= res!969573 (not (= r!2363 otherR!12)))))

(assert (=> b!2267549 (= e!1452344 (and tp!717526 tp!717530))))

(declare-fun b!2267550 () Bool)

(declare-fun res!969574 () Bool)

(assert (=> b!2267550 (=> (not res!969574) (not e!1452330))))

(assert (=> b!2267550 (= res!969574 (contains!4655 rules!1750 otherR!12))))

(declare-fun e!1452332 () Bool)

(declare-fun b!2267551 () Bool)

(declare-fun e!1452342 () Bool)

(declare-fun tp!717533 () Bool)

(declare-fun inv!36510 (Token!8072) Bool)

(assert (=> b!2267551 (= e!1452342 (and (inv!36510 (h!32369 tokens!456)) e!1452332 tp!717533))))

(declare-fun e!1452321 () Bool)

(assert (=> b!2267552 (= e!1452321 (and tp!717528 tp!717537))))

(declare-fun b!2267553 () Bool)

(assert (=> b!2267553 (= e!1452343 e!1452322)))

(declare-fun res!969576 () Bool)

(assert (=> b!2267553 (=> (not res!969576) (not e!1452322))))

(declare-fun e!1452326 () Bool)

(assert (=> b!2267553 (= res!969576 e!1452326)))

(declare-fun res!969567 () Bool)

(assert (=> b!2267553 (=> res!969567 e!1452326)))

(assert (=> b!2267553 (= res!969567 lt!842574)))

(declare-fun isEmpty!15262 (List!27062) Bool)

(assert (=> b!2267553 (= lt!842574 (isEmpty!15262 tokens!456))))

(declare-fun b!2267554 () Bool)

(declare-fun res!969568 () Bool)

(assert (=> b!2267554 (=> (not res!969568) (not e!1452322))))

(declare-fun otherP!12 () List!27060)

(declare-fun isPrefix!2287 (List!27060 List!27060) Bool)

(assert (=> b!2267554 (= res!969568 (isPrefix!2287 otherP!12 input!1722))))

(declare-fun tp!717529 () Bool)

(declare-fun e!1452329 () Bool)

(declare-fun b!2267555 () Bool)

(declare-fun inv!21 (TokenValue!4459) Bool)

(assert (=> b!2267555 (= e!1452332 (and (inv!21 (value!136284 (h!32369 tokens!456))) e!1452329 tp!717529))))

(declare-fun tp!717527 () Bool)

(declare-fun b!2267556 () Bool)

(assert (=> b!2267556 (= e!1452329 (and tp!717527 (inv!36506 (tag!4787 (rule!6613 (h!32369 tokens!456)))) (inv!36509 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) e!1452321))))

(declare-fun b!2267557 () Bool)

(declare-fun res!969580 () Bool)

(assert (=> b!2267557 (=> (not res!969580) (not e!1452322))))

(assert (=> b!2267557 (= res!969580 e!1452345)))

(declare-fun res!969575 () Bool)

(assert (=> b!2267557 (=> res!969575 e!1452345)))

(assert (=> b!2267557 (= res!969575 lt!842574)))

(declare-fun b!2267558 () Bool)

(declare-fun res!969570 () Bool)

(assert (=> b!2267558 (=> (not res!969570) (not e!1452330))))

(declare-fun rulesInvariant!3396 (LexerInterface!3894 List!27061) Bool)

(assert (=> b!2267558 (= res!969570 (rulesInvariant!3396 thiss!16613 rules!1750))))

(declare-fun b!2267559 () Bool)

(declare-fun size!21153 (BalanceConc!17212) Int)

(declare-fun size!21154 (List!27060) Int)

(assert (=> b!2267559 (= e!1452326 (<= (size!21153 (charsOf!2685 (head!4886 tokens!456))) (size!21154 otherP!12)))))

(declare-fun tp!717536 () Bool)

(declare-fun b!2267560 () Bool)

(assert (=> b!2267560 (= e!1452328 (and tp!717536 (inv!36506 (tag!4787 (h!32368 rules!1750))) (inv!36509 (transformation!4297 (h!32368 rules!1750))) e!1452335))))

(declare-fun b!2267540 () Bool)

(declare-fun e!1452339 () Bool)

(declare-fun tp!717534 () Bool)

(assert (=> b!2267540 (= e!1452339 (and tp_is_empty!10511 tp!717534))))

(declare-fun res!969578 () Bool)

(assert (=> start!221528 (=> (not res!969578) (not e!1452330))))

(assert (=> start!221528 (= res!969578 ((_ is Lexer!3892) thiss!16613))))

(assert (=> start!221528 e!1452330))

(assert (=> start!221528 true))

(assert (=> start!221528 e!1452337))

(assert (=> start!221528 e!1452336))

(assert (=> start!221528 e!1452339))

(assert (=> start!221528 e!1452340))

(assert (=> start!221528 e!1452334))

(assert (=> start!221528 e!1452327))

(assert (=> start!221528 e!1452342))

(assert (= (and start!221528 res!969578) b!2267532))

(assert (= (and b!2267532 res!969569) b!2267558))

(assert (= (and b!2267558 res!969570) b!2267543))

(assert (= (and b!2267543 res!969571) b!2267550))

(assert (= (and b!2267550 res!969574) b!2267538))

(assert (= (and b!2267538 res!969572) b!2267553))

(assert (= (and b!2267553 (not res!969567)) b!2267559))

(assert (= (and b!2267553 res!969576) b!2267557))

(assert (= (and b!2267557 (not res!969575)) b!2267534))

(assert (= (and b!2267557 res!969580) b!2267554))

(assert (= (and b!2267554 res!969568) b!2267548))

(assert (= (and b!2267548 res!969573) b!2267531))

(assert (= (and b!2267531 res!969579) b!2267536))

(assert (= (and b!2267531 (not res!969577)) b!2267535))

(assert (= (and b!2267535 (not res!969565)) b!2267541))

(assert (= (and b!2267541 (not res!969566)) b!2267542))

(assert (= (and start!221528 ((_ is Cons!26966) input!1722)) b!2267533))

(assert (= b!2267545 b!2267546))

(assert (= start!221528 b!2267545))

(assert (= (and start!221528 ((_ is Cons!26966) suffix!886)) b!2267540))

(assert (= (and start!221528 ((_ is Cons!26966) otherP!12)) b!2267544))

(assert (= b!2267560 b!2267539))

(assert (= b!2267537 b!2267560))

(assert (= (and start!221528 ((_ is Cons!26967) rules!1750)) b!2267537))

(assert (= b!2267547 b!2267549))

(assert (= start!221528 b!2267547))

(assert (= b!2267556 b!2267552))

(assert (= b!2267555 b!2267556))

(assert (= b!2267551 b!2267555))

(assert (= (and start!221528 ((_ is Cons!26968) tokens!456)) b!2267551))

(declare-fun m!2696555 () Bool)

(assert (=> b!2267560 m!2696555))

(declare-fun m!2696557 () Bool)

(assert (=> b!2267560 m!2696557))

(declare-fun m!2696559 () Bool)

(assert (=> b!2267555 m!2696559))

(declare-fun m!2696561 () Bool)

(assert (=> b!2267551 m!2696561))

(declare-fun m!2696563 () Bool)

(assert (=> b!2267532 m!2696563))

(declare-fun m!2696565 () Bool)

(assert (=> b!2267531 m!2696565))

(declare-fun m!2696567 () Bool)

(assert (=> b!2267531 m!2696567))

(declare-fun m!2696569 () Bool)

(assert (=> b!2267554 m!2696569))

(declare-fun m!2696571 () Bool)

(assert (=> b!2267558 m!2696571))

(declare-fun m!2696573 () Bool)

(assert (=> b!2267538 m!2696573))

(declare-fun m!2696575 () Bool)

(assert (=> b!2267538 m!2696575))

(declare-fun m!2696577 () Bool)

(assert (=> b!2267538 m!2696577))

(assert (=> b!2267538 m!2696577))

(declare-fun m!2696579 () Bool)

(assert (=> b!2267538 m!2696579))

(declare-fun m!2696581 () Bool)

(assert (=> b!2267547 m!2696581))

(declare-fun m!2696583 () Bool)

(assert (=> b!2267547 m!2696583))

(declare-fun m!2696585 () Bool)

(assert (=> b!2267535 m!2696585))

(declare-fun m!2696587 () Bool)

(assert (=> b!2267535 m!2696587))

(declare-fun m!2696589 () Bool)

(assert (=> b!2267535 m!2696589))

(declare-fun m!2696591 () Bool)

(assert (=> b!2267535 m!2696591))

(declare-fun m!2696593 () Bool)

(assert (=> b!2267550 m!2696593))

(declare-fun m!2696595 () Bool)

(assert (=> b!2267545 m!2696595))

(declare-fun m!2696597 () Bool)

(assert (=> b!2267545 m!2696597))

(declare-fun m!2696599 () Bool)

(assert (=> b!2267542 m!2696599))

(assert (=> b!2267542 m!2696599))

(declare-fun m!2696601 () Bool)

(assert (=> b!2267542 m!2696601))

(declare-fun m!2696603 () Bool)

(assert (=> b!2267543 m!2696603))

(declare-fun m!2696605 () Bool)

(assert (=> b!2267534 m!2696605))

(assert (=> b!2267559 m!2696605))

(assert (=> b!2267559 m!2696605))

(declare-fun m!2696607 () Bool)

(assert (=> b!2267559 m!2696607))

(assert (=> b!2267559 m!2696607))

(declare-fun m!2696609 () Bool)

(assert (=> b!2267559 m!2696609))

(declare-fun m!2696611 () Bool)

(assert (=> b!2267559 m!2696611))

(declare-fun m!2696613 () Bool)

(assert (=> b!2267553 m!2696613))

(declare-fun m!2696615 () Bool)

(assert (=> b!2267556 m!2696615))

(declare-fun m!2696617 () Bool)

(assert (=> b!2267556 m!2696617))

(assert (=> b!2267536 m!2696605))

(assert (=> b!2267536 m!2696605))

(assert (=> b!2267536 m!2696607))

(assert (=> b!2267536 m!2696607))

(declare-fun m!2696619 () Bool)

(assert (=> b!2267536 m!2696619))

(assert (=> b!2267536 m!2696619))

(declare-fun m!2696621 () Bool)

(assert (=> b!2267536 m!2696621))

(check-sat (not b!2267559) (not b!2267560) (not b!2267537) (not b!2267554) (not b_next!68011) (not b!2267531) (not b_next!68009) (not b!2267542) tp_is_empty!10511 (not b_next!67999) (not b!2267538) b_and!178525 (not b!2267556) b_and!178531 b_and!178527 (not b!2267550) b_and!178535 (not b!2267558) (not b!2267543) (not b_next!67997) (not b!2267544) (not b_next!68007) b_and!178521 (not b!2267534) b_and!178533 (not b!2267536) (not b!2267555) (not b_next!68001) (not b!2267551) (not b!2267533) (not b!2267545) (not b!2267540) (not b!2267553) (not b!2267532) b_and!178529 (not b_next!68003) b_and!178523 (not b_next!68005) (not b!2267547) (not b!2267535))
(check-sat b_and!178531 b_and!178527 b_and!178535 (not b_next!67997) b_and!178533 (not b_next!68011) (not b_next!68001) (not b_next!68009) (not b_next!67999) b_and!178525 (not b_next!68007) b_and!178521 b_and!178529 (not b_next!68003) b_and!178523 (not b_next!68005))
(get-model)

(declare-fun b!2267598 () Bool)

(declare-fun res!969618 () Bool)

(declare-fun e!1452373 () Bool)

(assert (=> b!2267598 (=> res!969618 e!1452373)))

(assert (=> b!2267598 (= res!969618 (not ((_ is ElementMatch!6645) (regex!4297 r!2363))))))

(declare-fun e!1452371 () Bool)

(assert (=> b!2267598 (= e!1452371 e!1452373)))

(declare-fun b!2267599 () Bool)

(declare-fun res!969617 () Bool)

(assert (=> b!2267599 (=> res!969617 e!1452373)))

(declare-fun e!1452369 () Bool)

(assert (=> b!2267599 (= res!969617 e!1452369)))

(declare-fun res!969621 () Bool)

(assert (=> b!2267599 (=> (not res!969621) (not e!1452369))))

(declare-fun lt!842582 () Bool)

(assert (=> b!2267599 (= res!969621 lt!842582)))

(declare-fun b!2267600 () Bool)

(declare-fun res!969619 () Bool)

(declare-fun e!1452375 () Bool)

(assert (=> b!2267600 (=> res!969619 e!1452375)))

(declare-fun isEmpty!15266 (List!27060) Bool)

(declare-fun tail!3271 (List!27060) List!27060)

(assert (=> b!2267600 (= res!969619 (not (isEmpty!15266 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))

(declare-fun b!2267601 () Bool)

(declare-fun head!4888 (List!27060) C!13436)

(assert (=> b!2267601 (= e!1452369 (= (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))) (c!360049 (regex!4297 r!2363))))))

(declare-fun b!2267602 () Bool)

(declare-fun res!969622 () Bool)

(assert (=> b!2267602 (=> (not res!969622) (not e!1452369))))

(declare-fun call!136015 () Bool)

(assert (=> b!2267602 (= res!969622 (not call!136015))))

(declare-fun b!2267603 () Bool)

(assert (=> b!2267603 (= e!1452371 (not lt!842582))))

(declare-fun b!2267604 () Bool)

(declare-fun e!1452374 () Bool)

(declare-fun nullable!1828 (Regex!6645) Bool)

(assert (=> b!2267604 (= e!1452374 (nullable!1828 (regex!4297 r!2363)))))

(declare-fun b!2267605 () Bool)

(declare-fun e!1452372 () Bool)

(assert (=> b!2267605 (= e!1452372 e!1452375)))

(declare-fun res!969620 () Bool)

(assert (=> b!2267605 (=> res!969620 e!1452375)))

(assert (=> b!2267605 (= res!969620 call!136015)))

(declare-fun d!671206 () Bool)

(declare-fun e!1452370 () Bool)

(assert (=> d!671206 e!1452370))

(declare-fun c!360059 () Bool)

(assert (=> d!671206 (= c!360059 ((_ is EmptyExpr!6645) (regex!4297 r!2363)))))

(assert (=> d!671206 (= lt!842582 e!1452374)))

(declare-fun c!360058 () Bool)

(assert (=> d!671206 (= c!360058 (isEmpty!15266 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))

(declare-fun validRegex!2490 (Regex!6645) Bool)

(assert (=> d!671206 (validRegex!2490 (regex!4297 r!2363))))

(assert (=> d!671206 (= (matchR!2906 (regex!4297 r!2363) (list!10433 (charsOf!2685 (head!4886 tokens!456)))) lt!842582)))

(declare-fun b!2267606 () Bool)

(assert (=> b!2267606 (= e!1452373 e!1452372)))

(declare-fun res!969624 () Bool)

(assert (=> b!2267606 (=> (not res!969624) (not e!1452372))))

(assert (=> b!2267606 (= res!969624 (not lt!842582))))

(declare-fun b!2267607 () Bool)

(assert (=> b!2267607 (= e!1452370 e!1452371)))

(declare-fun c!360057 () Bool)

(assert (=> b!2267607 (= c!360057 ((_ is EmptyLang!6645) (regex!4297 r!2363)))))

(declare-fun bm!136010 () Bool)

(assert (=> bm!136010 (= call!136015 (isEmpty!15266 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))

(declare-fun b!2267608 () Bool)

(declare-fun res!969623 () Bool)

(assert (=> b!2267608 (=> (not res!969623) (not e!1452369))))

(assert (=> b!2267608 (= res!969623 (isEmpty!15266 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(declare-fun b!2267609 () Bool)

(assert (=> b!2267609 (= e!1452370 (= lt!842582 call!136015))))

(declare-fun b!2267610 () Bool)

(declare-fun derivativeStep!1490 (Regex!6645 C!13436) Regex!6645)

(assert (=> b!2267610 (= e!1452374 (matchR!2906 (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(declare-fun b!2267611 () Bool)

(assert (=> b!2267611 (= e!1452375 (not (= (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))) (c!360049 (regex!4297 r!2363)))))))

(assert (= (and d!671206 c!360058) b!2267604))

(assert (= (and d!671206 (not c!360058)) b!2267610))

(assert (= (and d!671206 c!360059) b!2267609))

(assert (= (and d!671206 (not c!360059)) b!2267607))

(assert (= (and b!2267607 c!360057) b!2267603))

(assert (= (and b!2267607 (not c!360057)) b!2267598))

(assert (= (and b!2267598 (not res!969618)) b!2267599))

(assert (= (and b!2267599 res!969621) b!2267602))

(assert (= (and b!2267602 res!969622) b!2267608))

(assert (= (and b!2267608 res!969623) b!2267601))

(assert (= (and b!2267599 (not res!969617)) b!2267606))

(assert (= (and b!2267606 res!969624) b!2267605))

(assert (= (and b!2267605 (not res!969620)) b!2267600))

(assert (= (and b!2267600 (not res!969619)) b!2267611))

(assert (= (or b!2267609 b!2267602 b!2267605) bm!136010))

(assert (=> b!2267608 m!2696619))

(declare-fun m!2696637 () Bool)

(assert (=> b!2267608 m!2696637))

(assert (=> b!2267608 m!2696637))

(declare-fun m!2696639 () Bool)

(assert (=> b!2267608 m!2696639))

(assert (=> d!671206 m!2696619))

(declare-fun m!2696641 () Bool)

(assert (=> d!671206 m!2696641))

(declare-fun m!2696643 () Bool)

(assert (=> d!671206 m!2696643))

(declare-fun m!2696645 () Bool)

(assert (=> b!2267604 m!2696645))

(assert (=> b!2267610 m!2696619))

(declare-fun m!2696647 () Bool)

(assert (=> b!2267610 m!2696647))

(assert (=> b!2267610 m!2696647))

(declare-fun m!2696649 () Bool)

(assert (=> b!2267610 m!2696649))

(assert (=> b!2267610 m!2696619))

(assert (=> b!2267610 m!2696637))

(assert (=> b!2267610 m!2696649))

(assert (=> b!2267610 m!2696637))

(declare-fun m!2696651 () Bool)

(assert (=> b!2267610 m!2696651))

(assert (=> b!2267611 m!2696619))

(assert (=> b!2267611 m!2696647))

(assert (=> b!2267600 m!2696619))

(assert (=> b!2267600 m!2696637))

(assert (=> b!2267600 m!2696637))

(assert (=> b!2267600 m!2696639))

(assert (=> bm!136010 m!2696619))

(assert (=> bm!136010 m!2696641))

(assert (=> b!2267601 m!2696619))

(assert (=> b!2267601 m!2696647))

(assert (=> b!2267536 d!671206))

(declare-fun d!671208 () Bool)

(declare-fun list!10437 (Conc!8742) List!27060)

(assert (=> d!671208 (= (list!10433 (charsOf!2685 (head!4886 tokens!456))) (list!10437 (c!360048 (charsOf!2685 (head!4886 tokens!456)))))))

(declare-fun bs!455742 () Bool)

(assert (= bs!455742 d!671208))

(declare-fun m!2696653 () Bool)

(assert (=> bs!455742 m!2696653))

(assert (=> b!2267536 d!671208))

(declare-fun d!671210 () Bool)

(declare-fun lt!842585 () BalanceConc!17212)

(assert (=> d!671210 (= (list!10433 lt!842585) (originalCharacters!5067 (head!4886 tokens!456)))))

(declare-fun dynLambda!11679 (Int TokenValue!4459) BalanceConc!17212)

(assert (=> d!671210 (= lt!842585 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))))

(assert (=> d!671210 (= (charsOf!2685 (head!4886 tokens!456)) lt!842585)))

(declare-fun b_lambda!72281 () Bool)

(assert (=> (not b_lambda!72281) (not d!671210)))

(declare-fun tb!134447 () Bool)

(declare-fun t!202206 () Bool)

(assert (=> (and b!2267549 (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202206) tb!134447))

(declare-fun b!2267616 () Bool)

(declare-fun e!1452378 () Bool)

(declare-fun tp!717544 () Bool)

(declare-fun inv!36513 (Conc!8742) Bool)

(assert (=> b!2267616 (= e!1452378 (and (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))) tp!717544))))

(declare-fun result!163926 () Bool)

(declare-fun inv!36514 (BalanceConc!17212) Bool)

(assert (=> tb!134447 (= result!163926 (and (inv!36514 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))) e!1452378))))

(assert (= tb!134447 b!2267616))

(declare-fun m!2696655 () Bool)

(assert (=> b!2267616 m!2696655))

(declare-fun m!2696657 () Bool)

(assert (=> tb!134447 m!2696657))

(assert (=> d!671210 t!202206))

(declare-fun b_and!178537 () Bool)

(assert (= b_and!178523 (and (=> t!202206 result!163926) b_and!178537)))

(declare-fun t!202208 () Bool)

(declare-fun tb!134449 () Bool)

(assert (=> (and b!2267546 (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202208) tb!134449))

(declare-fun result!163930 () Bool)

(assert (= result!163930 result!163926))

(assert (=> d!671210 t!202208))

(declare-fun b_and!178539 () Bool)

(assert (= b_and!178527 (and (=> t!202208 result!163930) b_and!178539)))

(declare-fun t!202210 () Bool)

(declare-fun tb!134451 () Bool)

(assert (=> (and b!2267539 (= (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202210) tb!134451))

(declare-fun result!163932 () Bool)

(assert (= result!163932 result!163926))

(assert (=> d!671210 t!202210))

(declare-fun b_and!178541 () Bool)

(assert (= b_and!178531 (and (=> t!202210 result!163932) b_and!178541)))

(declare-fun t!202212 () Bool)

(declare-fun tb!134453 () Bool)

(assert (=> (and b!2267552 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202212) tb!134453))

(declare-fun result!163934 () Bool)

(assert (= result!163934 result!163926))

(assert (=> d!671210 t!202212))

(declare-fun b_and!178543 () Bool)

(assert (= b_and!178535 (and (=> t!202212 result!163934) b_and!178543)))

(declare-fun m!2696659 () Bool)

(assert (=> d!671210 m!2696659))

(declare-fun m!2696661 () Bool)

(assert (=> d!671210 m!2696661))

(assert (=> b!2267536 d!671210))

(declare-fun d!671212 () Bool)

(assert (=> d!671212 (= (head!4886 tokens!456) (h!32369 tokens!456))))

(assert (=> b!2267536 d!671212))

(declare-fun d!671214 () Bool)

(assert (=> d!671214 (= (inv!36506 (tag!4787 r!2363)) (= (mod (str.len (value!136283 (tag!4787 r!2363))) 2) 0))))

(assert (=> b!2267547 d!671214))

(declare-fun d!671216 () Bool)

(declare-fun res!969627 () Bool)

(declare-fun e!1452381 () Bool)

(assert (=> d!671216 (=> (not res!969627) (not e!1452381))))

(declare-fun semiInverseModEq!1730 (Int Int) Bool)

(assert (=> d!671216 (= res!969627 (semiInverseModEq!1730 (toChars!5910 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 r!2363))))))

(assert (=> d!671216 (= (inv!36509 (transformation!4297 r!2363)) e!1452381)))

(declare-fun b!2267619 () Bool)

(declare-fun equivClasses!1649 (Int Int) Bool)

(assert (=> b!2267619 (= e!1452381 (equivClasses!1649 (toChars!5910 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 r!2363))))))

(assert (= (and d!671216 res!969627) b!2267619))

(declare-fun m!2696663 () Bool)

(assert (=> d!671216 m!2696663))

(declare-fun m!2696665 () Bool)

(assert (=> b!2267619 m!2696665))

(assert (=> b!2267547 d!671216))

(declare-fun d!671218 () Bool)

(declare-fun res!969630 () Bool)

(declare-fun e!1452384 () Bool)

(assert (=> d!671218 (=> (not res!969630) (not e!1452384))))

(declare-fun rulesValid!1574 (LexerInterface!3894 List!27061) Bool)

(assert (=> d!671218 (= res!969630 (rulesValid!1574 thiss!16613 rules!1750))))

(assert (=> d!671218 (= (rulesInvariant!3396 thiss!16613 rules!1750) e!1452384)))

(declare-fun b!2267622 () Bool)

(declare-datatypes ((List!27064 0))(
  ( (Nil!26970) (Cons!26970 (h!32371 String!29399) (t!202254 List!27064)) )
))
(declare-fun noDuplicateTag!1572 (LexerInterface!3894 List!27061 List!27064) Bool)

(assert (=> b!2267622 (= e!1452384 (noDuplicateTag!1572 thiss!16613 rules!1750 Nil!26970))))

(assert (= (and d!671218 res!969630) b!2267622))

(declare-fun m!2696667 () Bool)

(assert (=> d!671218 m!2696667))

(declare-fun m!2696669 () Bool)

(assert (=> b!2267622 m!2696669))

(assert (=> b!2267558 d!671218))

(declare-fun d!671220 () Bool)

(declare-fun lt!842588 () Int)

(assert (=> d!671220 (= lt!842588 (size!21154 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))

(declare-fun size!21157 (Conc!8742) Int)

(assert (=> d!671220 (= lt!842588 (size!21157 (c!360048 (charsOf!2685 (head!4886 tokens!456)))))))

(assert (=> d!671220 (= (size!21153 (charsOf!2685 (head!4886 tokens!456))) lt!842588)))

(declare-fun bs!455743 () Bool)

(assert (= bs!455743 d!671220))

(assert (=> bs!455743 m!2696607))

(assert (=> bs!455743 m!2696619))

(assert (=> bs!455743 m!2696619))

(declare-fun m!2696671 () Bool)

(assert (=> bs!455743 m!2696671))

(declare-fun m!2696673 () Bool)

(assert (=> bs!455743 m!2696673))

(assert (=> b!2267559 d!671220))

(assert (=> b!2267559 d!671210))

(assert (=> b!2267559 d!671212))

(declare-fun d!671222 () Bool)

(declare-fun lt!842594 () Int)

(assert (=> d!671222 (>= lt!842594 0)))

(declare-fun e!1452396 () Int)

(assert (=> d!671222 (= lt!842594 e!1452396)))

(declare-fun c!360065 () Bool)

(assert (=> d!671222 (= c!360065 ((_ is Nil!26966) otherP!12))))

(assert (=> d!671222 (= (size!21154 otherP!12) lt!842594)))

(declare-fun b!2267642 () Bool)

(assert (=> b!2267642 (= e!1452396 0)))

(declare-fun b!2267643 () Bool)

(assert (=> b!2267643 (= e!1452396 (+ 1 (size!21154 (t!202202 otherP!12))))))

(assert (= (and d!671222 c!360065) b!2267642))

(assert (= (and d!671222 (not c!360065)) b!2267643))

(declare-fun m!2696675 () Bool)

(assert (=> b!2267643 m!2696675))

(assert (=> b!2267559 d!671222))

(declare-fun b!2267660 () Bool)

(declare-fun e!1452407 () Bool)

(assert (=> b!2267660 (= e!1452407 (isPrefix!2287 (tail!3271 otherP!12) (tail!3271 input!1722)))))

(declare-fun b!2267659 () Bool)

(declare-fun res!969656 () Bool)

(assert (=> b!2267659 (=> (not res!969656) (not e!1452407))))

(assert (=> b!2267659 (= res!969656 (= (head!4888 otherP!12) (head!4888 input!1722)))))

(declare-fun b!2267661 () Bool)

(declare-fun e!1452408 () Bool)

(assert (=> b!2267661 (= e!1452408 (>= (size!21154 input!1722) (size!21154 otherP!12)))))

(declare-fun d!671224 () Bool)

(assert (=> d!671224 e!1452408))

(declare-fun res!969657 () Bool)

(assert (=> d!671224 (=> res!969657 e!1452408)))

(declare-fun lt!842600 () Bool)

(assert (=> d!671224 (= res!969657 (not lt!842600))))

(declare-fun e!1452406 () Bool)

(assert (=> d!671224 (= lt!842600 e!1452406)))

(declare-fun res!969655 () Bool)

(assert (=> d!671224 (=> res!969655 e!1452406)))

(assert (=> d!671224 (= res!969655 ((_ is Nil!26966) otherP!12))))

(assert (=> d!671224 (= (isPrefix!2287 otherP!12 input!1722) lt!842600)))

(declare-fun b!2267658 () Bool)

(assert (=> b!2267658 (= e!1452406 e!1452407)))

(declare-fun res!969654 () Bool)

(assert (=> b!2267658 (=> (not res!969654) (not e!1452407))))

(assert (=> b!2267658 (= res!969654 (not ((_ is Nil!26966) input!1722)))))

(assert (= (and d!671224 (not res!969655)) b!2267658))

(assert (= (and b!2267658 res!969654) b!2267659))

(assert (= (and b!2267659 res!969656) b!2267660))

(assert (= (and d!671224 (not res!969657)) b!2267661))

(declare-fun m!2696703 () Bool)

(assert (=> b!2267660 m!2696703))

(declare-fun m!2696705 () Bool)

(assert (=> b!2267660 m!2696705))

(assert (=> b!2267660 m!2696703))

(assert (=> b!2267660 m!2696705))

(declare-fun m!2696707 () Bool)

(assert (=> b!2267660 m!2696707))

(declare-fun m!2696709 () Bool)

(assert (=> b!2267659 m!2696709))

(declare-fun m!2696711 () Bool)

(assert (=> b!2267659 m!2696711))

(declare-fun m!2696713 () Bool)

(assert (=> b!2267661 m!2696713))

(assert (=> b!2267661 m!2696611))

(assert (=> b!2267554 d!671224))

(declare-fun b!2267681 () Bool)

(declare-fun e!1452421 () Bool)

(declare-fun inv!17 (TokenValue!4459) Bool)

(assert (=> b!2267681 (= e!1452421 (inv!17 (value!136284 (h!32369 tokens!456))))))

(declare-fun d!671234 () Bool)

(declare-fun c!360072 () Bool)

(assert (=> d!671234 (= c!360072 ((_ is IntegerValue!13377) (value!136284 (h!32369 tokens!456))))))

(declare-fun e!1452422 () Bool)

(assert (=> d!671234 (= (inv!21 (value!136284 (h!32369 tokens!456))) e!1452422)))

(declare-fun b!2267682 () Bool)

(declare-fun res!969660 () Bool)

(declare-fun e!1452420 () Bool)

(assert (=> b!2267682 (=> res!969660 e!1452420)))

(assert (=> b!2267682 (= res!969660 (not ((_ is IntegerValue!13379) (value!136284 (h!32369 tokens!456)))))))

(assert (=> b!2267682 (= e!1452421 e!1452420)))

(declare-fun b!2267683 () Bool)

(declare-fun inv!16 (TokenValue!4459) Bool)

(assert (=> b!2267683 (= e!1452422 (inv!16 (value!136284 (h!32369 tokens!456))))))

(declare-fun b!2267684 () Bool)

(assert (=> b!2267684 (= e!1452422 e!1452421)))

(declare-fun c!360073 () Bool)

(assert (=> b!2267684 (= c!360073 ((_ is IntegerValue!13378) (value!136284 (h!32369 tokens!456))))))

(declare-fun b!2267685 () Bool)

(declare-fun inv!15 (TokenValue!4459) Bool)

(assert (=> b!2267685 (= e!1452420 (inv!15 (value!136284 (h!32369 tokens!456))))))

(assert (= (and d!671234 c!360072) b!2267683))

(assert (= (and d!671234 (not c!360072)) b!2267684))

(assert (= (and b!2267684 c!360073) b!2267681))

(assert (= (and b!2267684 (not c!360073)) b!2267682))

(assert (= (and b!2267682 (not res!969660)) b!2267685))

(declare-fun m!2696729 () Bool)

(assert (=> b!2267681 m!2696729))

(declare-fun m!2696731 () Bool)

(assert (=> b!2267683 m!2696731))

(declare-fun m!2696733 () Bool)

(assert (=> b!2267685 m!2696733))

(assert (=> b!2267555 d!671234))

(assert (=> b!2267534 d!671212))

(declare-fun d!671244 () Bool)

(assert (=> d!671244 (= (inv!36506 (tag!4787 otherR!12)) (= (mod (str.len (value!136283 (tag!4787 otherR!12))) 2) 0))))

(assert (=> b!2267545 d!671244))

(declare-fun d!671246 () Bool)

(declare-fun res!969661 () Bool)

(declare-fun e!1452424 () Bool)

(assert (=> d!671246 (=> (not res!969661) (not e!1452424))))

(assert (=> d!671246 (= res!969661 (semiInverseModEq!1730 (toChars!5910 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 otherR!12))))))

(assert (=> d!671246 (= (inv!36509 (transformation!4297 otherR!12)) e!1452424)))

(declare-fun b!2267688 () Bool)

(assert (=> b!2267688 (= e!1452424 (equivClasses!1649 (toChars!5910 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 otherR!12))))))

(assert (= (and d!671246 res!969661) b!2267688))

(declare-fun m!2696735 () Bool)

(assert (=> d!671246 m!2696735))

(declare-fun m!2696737 () Bool)

(assert (=> b!2267688 m!2696737))

(assert (=> b!2267545 d!671246))

(declare-fun d!671248 () Bool)

(assert (=> d!671248 (= (inv!36506 (tag!4787 (rule!6613 (h!32369 tokens!456)))) (= (mod (str.len (value!136283 (tag!4787 (rule!6613 (h!32369 tokens!456))))) 2) 0))))

(assert (=> b!2267556 d!671248))

(declare-fun d!671250 () Bool)

(declare-fun res!969662 () Bool)

(declare-fun e!1452425 () Bool)

(assert (=> d!671250 (=> (not res!969662) (not e!1452425))))

(assert (=> d!671250 (= res!969662 (semiInverseModEq!1730 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))))))

(assert (=> d!671250 (= (inv!36509 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) e!1452425)))

(declare-fun b!2267689 () Bool)

(assert (=> b!2267689 (= e!1452425 (equivClasses!1649 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))))))

(assert (= (and d!671250 res!969662) b!2267689))

(declare-fun m!2696739 () Bool)

(assert (=> d!671250 m!2696739))

(declare-fun m!2696741 () Bool)

(assert (=> b!2267689 m!2696741))

(assert (=> b!2267556 d!671250))

(declare-fun b!2267704 () Bool)

(declare-fun e!1452434 () Int)

(assert (=> b!2267704 (= e!1452434 (- 1))))

(declare-fun d!671252 () Bool)

(declare-fun lt!842612 () Int)

(assert (=> d!671252 (>= lt!842612 0)))

(declare-fun e!1452435 () Int)

(assert (=> d!671252 (= lt!842612 e!1452435)))

(declare-fun c!360079 () Bool)

(assert (=> d!671252 (= c!360079 (and ((_ is Cons!26967) rules!1750) (= (h!32368 rules!1750) r!2363)))))

(assert (=> d!671252 (contains!4655 rules!1750 r!2363)))

(assert (=> d!671252 (= (getIndex!318 rules!1750 r!2363) lt!842612)))

(declare-fun b!2267703 () Bool)

(assert (=> b!2267703 (= e!1452434 (+ 1 (getIndex!318 (t!202203 rules!1750) r!2363)))))

(declare-fun b!2267701 () Bool)

(assert (=> b!2267701 (= e!1452435 0)))

(declare-fun b!2267702 () Bool)

(assert (=> b!2267702 (= e!1452435 e!1452434)))

(declare-fun c!360080 () Bool)

(assert (=> b!2267702 (= c!360080 (and ((_ is Cons!26967) rules!1750) (not (= (h!32368 rules!1750) r!2363))))))

(assert (= (and d!671252 c!360079) b!2267701))

(assert (= (and d!671252 (not c!360079)) b!2267702))

(assert (= (and b!2267702 c!360080) b!2267703))

(assert (= (and b!2267702 (not c!360080)) b!2267704))

(assert (=> d!671252 m!2696603))

(declare-fun m!2696747 () Bool)

(assert (=> b!2267703 m!2696747))

(assert (=> b!2267535 d!671252))

(declare-fun b!2267708 () Bool)

(declare-fun e!1452436 () Int)

(assert (=> b!2267708 (= e!1452436 (- 1))))

(declare-fun d!671262 () Bool)

(declare-fun lt!842613 () Int)

(assert (=> d!671262 (>= lt!842613 0)))

(declare-fun e!1452437 () Int)

(assert (=> d!671262 (= lt!842613 e!1452437)))

(declare-fun c!360081 () Bool)

(assert (=> d!671262 (= c!360081 (and ((_ is Cons!26967) rules!1750) (= (h!32368 rules!1750) otherR!12)))))

(assert (=> d!671262 (contains!4655 rules!1750 otherR!12)))

(assert (=> d!671262 (= (getIndex!318 rules!1750 otherR!12) lt!842613)))

(declare-fun b!2267707 () Bool)

(assert (=> b!2267707 (= e!1452436 (+ 1 (getIndex!318 (t!202203 rules!1750) otherR!12)))))

(declare-fun b!2267705 () Bool)

(assert (=> b!2267705 (= e!1452437 0)))

(declare-fun b!2267706 () Bool)

(assert (=> b!2267706 (= e!1452437 e!1452436)))

(declare-fun c!360082 () Bool)

(assert (=> b!2267706 (= c!360082 (and ((_ is Cons!26967) rules!1750) (not (= (h!32368 rules!1750) otherR!12))))))

(assert (= (and d!671262 c!360081) b!2267705))

(assert (= (and d!671262 (not c!360081)) b!2267706))

(assert (= (and b!2267706 c!360082) b!2267707))

(assert (= (and b!2267706 (not c!360082)) b!2267708))

(assert (=> d!671262 m!2696593))

(declare-fun m!2696749 () Bool)

(assert (=> b!2267707 m!2696749))

(assert (=> b!2267535 d!671262))

(declare-fun d!671264 () Bool)

(declare-fun res!969670 () Bool)

(declare-fun e!1452440 () Bool)

(assert (=> d!671264 (=> (not res!969670) (not e!1452440))))

(assert (=> d!671264 (= res!969670 (validRegex!2490 (regex!4297 otherR!12)))))

(assert (=> d!671264 (= (ruleValid!1389 thiss!16613 otherR!12) e!1452440)))

(declare-fun b!2267713 () Bool)

(declare-fun res!969671 () Bool)

(assert (=> b!2267713 (=> (not res!969671) (not e!1452440))))

(assert (=> b!2267713 (= res!969671 (not (nullable!1828 (regex!4297 otherR!12))))))

(declare-fun b!2267714 () Bool)

(assert (=> b!2267714 (= e!1452440 (not (= (tag!4787 otherR!12) (String!29400 ""))))))

(assert (= (and d!671264 res!969670) b!2267713))

(assert (= (and b!2267713 res!969671) b!2267714))

(declare-fun m!2696751 () Bool)

(assert (=> d!671264 m!2696751))

(declare-fun m!2696753 () Bool)

(assert (=> b!2267713 m!2696753))

(assert (=> b!2267535 d!671264))

(declare-fun d!671266 () Bool)

(assert (=> d!671266 (ruleValid!1389 thiss!16613 otherR!12)))

(declare-fun lt!842616 () Unit!39922)

(declare-fun choose!13262 (LexerInterface!3894 Rule!8394 List!27061) Unit!39922)

(assert (=> d!671266 (= lt!842616 (choose!13262 thiss!16613 otherR!12 rules!1750))))

(assert (=> d!671266 (contains!4655 rules!1750 otherR!12)))

(assert (=> d!671266 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!796 thiss!16613 otherR!12 rules!1750) lt!842616)))

(declare-fun bs!455747 () Bool)

(assert (= bs!455747 d!671266))

(assert (=> bs!455747 m!2696589))

(declare-fun m!2696755 () Bool)

(assert (=> bs!455747 m!2696755))

(assert (=> bs!455747 m!2696593))

(assert (=> b!2267535 d!671266))

(declare-fun d!671268 () Bool)

(declare-fun res!969672 () Bool)

(declare-fun e!1452441 () Bool)

(assert (=> d!671268 (=> (not res!969672) (not e!1452441))))

(assert (=> d!671268 (= res!969672 (validRegex!2490 (regex!4297 r!2363)))))

(assert (=> d!671268 (= (ruleValid!1389 thiss!16613 r!2363) e!1452441)))

(declare-fun b!2267715 () Bool)

(declare-fun res!969673 () Bool)

(assert (=> b!2267715 (=> (not res!969673) (not e!1452441))))

(assert (=> b!2267715 (= res!969673 (not (nullable!1828 (regex!4297 r!2363))))))

(declare-fun b!2267716 () Bool)

(assert (=> b!2267716 (= e!1452441 (not (= (tag!4787 r!2363) (String!29400 ""))))))

(assert (= (and d!671268 res!969672) b!2267715))

(assert (= (and b!2267715 res!969673) b!2267716))

(assert (=> d!671268 m!2696643))

(assert (=> b!2267715 m!2696645))

(assert (=> b!2267531 d!671268))

(declare-fun d!671270 () Bool)

(assert (=> d!671270 (ruleValid!1389 thiss!16613 r!2363)))

(declare-fun lt!842617 () Unit!39922)

(assert (=> d!671270 (= lt!842617 (choose!13262 thiss!16613 r!2363 rules!1750))))

(assert (=> d!671270 (contains!4655 rules!1750 r!2363)))

(assert (=> d!671270 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!796 thiss!16613 r!2363 rules!1750) lt!842617)))

(declare-fun bs!455748 () Bool)

(assert (= bs!455748 d!671270))

(assert (=> bs!455748 m!2696565))

(declare-fun m!2696757 () Bool)

(assert (=> bs!455748 m!2696757))

(assert (=> bs!455748 m!2696603))

(assert (=> b!2267531 d!671270))

(declare-fun d!671272 () Bool)

(assert (=> d!671272 (= (get!8139 (maxPrefix!2168 thiss!16613 rules!1750 input!1722)) (v!30316 (maxPrefix!2168 thiss!16613 rules!1750 input!1722)))))

(assert (=> b!2267542 d!671272))

(declare-fun call!136024 () Option!5275)

(declare-fun bm!136019 () Bool)

(declare-fun maxPrefixOneRule!1356 (LexerInterface!3894 Rule!8394 List!27060) Option!5275)

(assert (=> bm!136019 (= call!136024 (maxPrefixOneRule!1356 thiss!16613 (h!32368 rules!1750) input!1722))))

(declare-fun b!2267920 () Bool)

(declare-fun e!1452559 () Option!5275)

(declare-fun lt!842658 () Option!5275)

(declare-fun lt!842655 () Option!5275)

(assert (=> b!2267920 (= e!1452559 (ite (and ((_ is None!5274) lt!842658) ((_ is None!5274) lt!842655)) None!5274 (ite ((_ is None!5274) lt!842655) lt!842658 (ite ((_ is None!5274) lt!842658) lt!842655 (ite (>= (size!21152 (_1!15821 (v!30316 lt!842658))) (size!21152 (_1!15821 (v!30316 lt!842655)))) lt!842658 lt!842655)))))))

(assert (=> b!2267920 (= lt!842658 call!136024)))

(assert (=> b!2267920 (= lt!842655 (maxPrefix!2168 thiss!16613 (t!202203 rules!1750) input!1722))))

(declare-fun b!2267921 () Bool)

(declare-fun res!969762 () Bool)

(declare-fun e!1452558 () Bool)

(assert (=> b!2267921 (=> (not res!969762) (not e!1452558))))

(declare-fun lt!842657 () Option!5275)

(assert (=> b!2267921 (= res!969762 (matchR!2906 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))) (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))))))

(declare-fun b!2267922 () Bool)

(declare-fun res!969764 () Bool)

(assert (=> b!2267922 (=> (not res!969764) (not e!1452558))))

(assert (=> b!2267922 (= res!969764 (< (size!21154 (_2!15821 (get!8139 lt!842657))) (size!21154 input!1722)))))

(declare-fun b!2267923 () Bool)

(declare-fun res!969765 () Bool)

(assert (=> b!2267923 (=> (not res!969765) (not e!1452558))))

(declare-fun ++!6569 (List!27060 List!27060) List!27060)

(assert (=> b!2267923 (= res!969765 (= (++!6569 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))) (_2!15821 (get!8139 lt!842657))) input!1722))))

(declare-fun d!671274 () Bool)

(declare-fun e!1452557 () Bool)

(assert (=> d!671274 e!1452557))

(declare-fun res!969767 () Bool)

(assert (=> d!671274 (=> res!969767 e!1452557)))

(declare-fun isEmpty!15267 (Option!5275) Bool)

(assert (=> d!671274 (= res!969767 (isEmpty!15267 lt!842657))))

(assert (=> d!671274 (= lt!842657 e!1452559)))

(declare-fun c!360111 () Bool)

(assert (=> d!671274 (= c!360111 (and ((_ is Cons!26967) rules!1750) ((_ is Nil!26967) (t!202203 rules!1750))))))

(declare-fun lt!842659 () Unit!39922)

(declare-fun lt!842656 () Unit!39922)

(assert (=> d!671274 (= lt!842659 lt!842656)))

(assert (=> d!671274 (isPrefix!2287 input!1722 input!1722)))

(declare-fun lemmaIsPrefixRefl!1465 (List!27060 List!27060) Unit!39922)

(assert (=> d!671274 (= lt!842656 (lemmaIsPrefixRefl!1465 input!1722 input!1722))))

(declare-fun rulesValidInductive!1499 (LexerInterface!3894 List!27061) Bool)

(assert (=> d!671274 (rulesValidInductive!1499 thiss!16613 rules!1750)))

(assert (=> d!671274 (= (maxPrefix!2168 thiss!16613 rules!1750 input!1722) lt!842657)))

(declare-fun b!2267924 () Bool)

(declare-fun res!969761 () Bool)

(assert (=> b!2267924 (=> (not res!969761) (not e!1452558))))

(assert (=> b!2267924 (= res!969761 (= (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))) (originalCharacters!5067 (_1!15821 (get!8139 lt!842657)))))))

(declare-fun b!2267925 () Bool)

(declare-fun res!969766 () Bool)

(assert (=> b!2267925 (=> (not res!969766) (not e!1452558))))

(declare-fun apply!6595 (TokenValueInjection!8458 BalanceConc!17212) TokenValue!4459)

(assert (=> b!2267925 (= res!969766 (= (value!136284 (_1!15821 (get!8139 lt!842657))) (apply!6595 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))) (seqFromList!3001 (originalCharacters!5067 (_1!15821 (get!8139 lt!842657)))))))))

(declare-fun b!2267926 () Bool)

(assert (=> b!2267926 (= e!1452559 call!136024)))

(declare-fun b!2267927 () Bool)

(assert (=> b!2267927 (= e!1452557 e!1452558)))

(declare-fun res!969763 () Bool)

(assert (=> b!2267927 (=> (not res!969763) (not e!1452558))))

(declare-fun isDefined!4202 (Option!5275) Bool)

(assert (=> b!2267927 (= res!969763 (isDefined!4202 lt!842657))))

(declare-fun b!2267928 () Bool)

(assert (=> b!2267928 (= e!1452558 (contains!4655 rules!1750 (rule!6613 (_1!15821 (get!8139 lt!842657)))))))

(assert (= (and d!671274 c!360111) b!2267926))

(assert (= (and d!671274 (not c!360111)) b!2267920))

(assert (= (or b!2267926 b!2267920) bm!136019))

(assert (= (and d!671274 (not res!969767)) b!2267927))

(assert (= (and b!2267927 res!969763) b!2267924))

(assert (= (and b!2267924 res!969761) b!2267922))

(assert (= (and b!2267922 res!969764) b!2267923))

(assert (= (and b!2267923 res!969765) b!2267925))

(assert (= (and b!2267925 res!969766) b!2267921))

(assert (= (and b!2267921 res!969762) b!2267928))

(declare-fun m!2696873 () Bool)

(assert (=> b!2267924 m!2696873))

(declare-fun m!2696875 () Bool)

(assert (=> b!2267924 m!2696875))

(assert (=> b!2267924 m!2696875))

(declare-fun m!2696877 () Bool)

(assert (=> b!2267924 m!2696877))

(assert (=> b!2267922 m!2696873))

(declare-fun m!2696879 () Bool)

(assert (=> b!2267922 m!2696879))

(assert (=> b!2267922 m!2696713))

(declare-fun m!2696881 () Bool)

(assert (=> d!671274 m!2696881))

(declare-fun m!2696883 () Bool)

(assert (=> d!671274 m!2696883))

(declare-fun m!2696885 () Bool)

(assert (=> d!671274 m!2696885))

(declare-fun m!2696887 () Bool)

(assert (=> d!671274 m!2696887))

(declare-fun m!2696889 () Bool)

(assert (=> b!2267920 m!2696889))

(assert (=> b!2267923 m!2696873))

(assert (=> b!2267923 m!2696875))

(assert (=> b!2267923 m!2696875))

(assert (=> b!2267923 m!2696877))

(assert (=> b!2267923 m!2696877))

(declare-fun m!2696891 () Bool)

(assert (=> b!2267923 m!2696891))

(assert (=> b!2267925 m!2696873))

(declare-fun m!2696893 () Bool)

(assert (=> b!2267925 m!2696893))

(assert (=> b!2267925 m!2696893))

(declare-fun m!2696895 () Bool)

(assert (=> b!2267925 m!2696895))

(declare-fun m!2696897 () Bool)

(assert (=> bm!136019 m!2696897))

(assert (=> b!2267921 m!2696873))

(assert (=> b!2267921 m!2696875))

(assert (=> b!2267921 m!2696875))

(assert (=> b!2267921 m!2696877))

(assert (=> b!2267921 m!2696877))

(declare-fun m!2696899 () Bool)

(assert (=> b!2267921 m!2696899))

(assert (=> b!2267928 m!2696873))

(declare-fun m!2696901 () Bool)

(assert (=> b!2267928 m!2696901))

(declare-fun m!2696903 () Bool)

(assert (=> b!2267927 m!2696903))

(assert (=> b!2267542 d!671274))

(declare-fun d!671308 () Bool)

(assert (=> d!671308 (= (isEmpty!15262 tokens!456) ((_ is Nil!26968) tokens!456))))

(assert (=> b!2267553 d!671308))

(declare-fun d!671310 () Bool)

(assert (=> d!671310 (= (isEmpty!15261 rules!1750) ((_ is Nil!26967) rules!1750))))

(assert (=> b!2267532 d!671310))

(declare-fun d!671312 () Bool)

(declare-fun lt!842662 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3594 (List!27061) (InoxSet Rule!8394))

(assert (=> d!671312 (= lt!842662 (select (content!3594 rules!1750) r!2363))))

(declare-fun e!1452564 () Bool)

(assert (=> d!671312 (= lt!842662 e!1452564)))

(declare-fun res!969772 () Bool)

(assert (=> d!671312 (=> (not res!969772) (not e!1452564))))

(assert (=> d!671312 (= res!969772 ((_ is Cons!26967) rules!1750))))

(assert (=> d!671312 (= (contains!4655 rules!1750 r!2363) lt!842662)))

(declare-fun b!2267933 () Bool)

(declare-fun e!1452565 () Bool)

(assert (=> b!2267933 (= e!1452564 e!1452565)))

(declare-fun res!969773 () Bool)

(assert (=> b!2267933 (=> res!969773 e!1452565)))

(assert (=> b!2267933 (= res!969773 (= (h!32368 rules!1750) r!2363))))

(declare-fun b!2267934 () Bool)

(assert (=> b!2267934 (= e!1452565 (contains!4655 (t!202203 rules!1750) r!2363))))

(assert (= (and d!671312 res!969772) b!2267933))

(assert (= (and b!2267933 (not res!969773)) b!2267934))

(declare-fun m!2696905 () Bool)

(assert (=> d!671312 m!2696905))

(declare-fun m!2696907 () Bool)

(assert (=> d!671312 m!2696907))

(declare-fun m!2696909 () Bool)

(assert (=> b!2267934 m!2696909))

(assert (=> b!2267543 d!671312))

(declare-fun d!671314 () Bool)

(declare-fun list!10438 (Conc!8743) List!27062)

(assert (=> d!671314 (= (list!10434 (_1!15819 lt!842576)) (list!10438 (c!360050 (_1!15819 lt!842576))))))

(declare-fun bs!455751 () Bool)

(assert (= bs!455751 d!671314))

(declare-fun m!2696911 () Bool)

(assert (=> bs!455751 m!2696911))

(assert (=> b!2267538 d!671314))

(declare-fun d!671316 () Bool)

(assert (=> d!671316 (= (list!10433 (_2!15819 lt!842576)) (list!10437 (c!360048 (_2!15819 lt!842576))))))

(declare-fun bs!455752 () Bool)

(assert (= bs!455752 d!671316))

(declare-fun m!2696913 () Bool)

(assert (=> bs!455752 m!2696913))

(assert (=> b!2267538 d!671316))

(declare-fun b!2267945 () Bool)

(declare-fun e!1452572 () Bool)

(declare-fun e!1452573 () Bool)

(assert (=> b!2267945 (= e!1452572 e!1452573)))

(declare-fun res!969782 () Bool)

(declare-fun lt!842665 () tuple2!26618)

(assert (=> b!2267945 (= res!969782 (< (size!21153 (_2!15819 lt!842665)) (size!21153 (seqFromList!3001 input!1722))))))

(assert (=> b!2267945 (=> (not res!969782) (not e!1452573))))

(declare-fun b!2267947 () Bool)

(declare-fun isEmpty!15268 (BalanceConc!17214) Bool)

(assert (=> b!2267947 (= e!1452573 (not (isEmpty!15268 (_1!15819 lt!842665))))))

(declare-fun b!2267948 () Bool)

(assert (=> b!2267948 (= e!1452572 (= (_2!15819 lt!842665) (seqFromList!3001 input!1722)))))

(declare-fun b!2267949 () Bool)

(declare-fun e!1452574 () Bool)

(declare-fun lexList!1074 (LexerInterface!3894 List!27061 List!27060) tuple2!26620)

(assert (=> b!2267949 (= e!1452574 (= (list!10433 (_2!15819 lt!842665)) (_2!15820 (lexList!1074 thiss!16613 rules!1750 (list!10433 (seqFromList!3001 input!1722))))))))

(declare-fun d!671318 () Bool)

(assert (=> d!671318 e!1452574))

(declare-fun res!969781 () Bool)

(assert (=> d!671318 (=> (not res!969781) (not e!1452574))))

(assert (=> d!671318 (= res!969781 e!1452572)))

(declare-fun c!360114 () Bool)

(declare-fun size!21158 (BalanceConc!17214) Int)

(assert (=> d!671318 (= c!360114 (> (size!21158 (_1!15819 lt!842665)) 0))))

(declare-fun lexTailRecV2!749 (LexerInterface!3894 List!27061 BalanceConc!17212 BalanceConc!17212 BalanceConc!17212 BalanceConc!17214) tuple2!26618)

(assert (=> d!671318 (= lt!842665 (lexTailRecV2!749 thiss!16613 rules!1750 (seqFromList!3001 input!1722) (BalanceConc!17213 Empty!8742) (seqFromList!3001 input!1722) (BalanceConc!17215 Empty!8743)))))

(assert (=> d!671318 (= (lex!1733 thiss!16613 rules!1750 (seqFromList!3001 input!1722)) lt!842665)))

(declare-fun b!2267946 () Bool)

(declare-fun res!969780 () Bool)

(assert (=> b!2267946 (=> (not res!969780) (not e!1452574))))

(assert (=> b!2267946 (= res!969780 (= (list!10434 (_1!15819 lt!842665)) (_1!15820 (lexList!1074 thiss!16613 rules!1750 (list!10433 (seqFromList!3001 input!1722))))))))

(assert (= (and d!671318 c!360114) b!2267945))

(assert (= (and d!671318 (not c!360114)) b!2267948))

(assert (= (and b!2267945 res!969782) b!2267947))

(assert (= (and d!671318 res!969781) b!2267946))

(assert (= (and b!2267946 res!969780) b!2267949))

(declare-fun m!2696915 () Bool)

(assert (=> b!2267949 m!2696915))

(assert (=> b!2267949 m!2696577))

(declare-fun m!2696917 () Bool)

(assert (=> b!2267949 m!2696917))

(assert (=> b!2267949 m!2696917))

(declare-fun m!2696919 () Bool)

(assert (=> b!2267949 m!2696919))

(declare-fun m!2696921 () Bool)

(assert (=> d!671318 m!2696921))

(assert (=> d!671318 m!2696577))

(assert (=> d!671318 m!2696577))

(declare-fun m!2696923 () Bool)

(assert (=> d!671318 m!2696923))

(declare-fun m!2696925 () Bool)

(assert (=> b!2267945 m!2696925))

(assert (=> b!2267945 m!2696577))

(declare-fun m!2696927 () Bool)

(assert (=> b!2267945 m!2696927))

(declare-fun m!2696929 () Bool)

(assert (=> b!2267947 m!2696929))

(declare-fun m!2696931 () Bool)

(assert (=> b!2267946 m!2696931))

(assert (=> b!2267946 m!2696577))

(assert (=> b!2267946 m!2696917))

(assert (=> b!2267946 m!2696917))

(assert (=> b!2267946 m!2696919))

(assert (=> b!2267538 d!671318))

(declare-fun d!671320 () Bool)

(declare-fun fromListB!1340 (List!27060) BalanceConc!17212)

(assert (=> d!671320 (= (seqFromList!3001 input!1722) (fromListB!1340 input!1722))))

(declare-fun bs!455753 () Bool)

(assert (= bs!455753 d!671320))

(declare-fun m!2696933 () Bool)

(assert (=> bs!455753 m!2696933))

(assert (=> b!2267538 d!671320))

(declare-fun d!671322 () Bool)

(assert (=> d!671322 (= (inv!36506 (tag!4787 (h!32368 rules!1750))) (= (mod (str.len (value!136283 (tag!4787 (h!32368 rules!1750)))) 2) 0))))

(assert (=> b!2267560 d!671322))

(declare-fun d!671324 () Bool)

(declare-fun res!969783 () Bool)

(declare-fun e!1452575 () Bool)

(assert (=> d!671324 (=> (not res!969783) (not e!1452575))))

(assert (=> d!671324 (= res!969783 (semiInverseModEq!1730 (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toValue!6051 (transformation!4297 (h!32368 rules!1750)))))))

(assert (=> d!671324 (= (inv!36509 (transformation!4297 (h!32368 rules!1750))) e!1452575)))

(declare-fun b!2267950 () Bool)

(assert (=> b!2267950 (= e!1452575 (equivClasses!1649 (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toValue!6051 (transformation!4297 (h!32368 rules!1750)))))))

(assert (= (and d!671324 res!969783) b!2267950))

(declare-fun m!2696935 () Bool)

(assert (=> d!671324 m!2696935))

(declare-fun m!2696937 () Bool)

(assert (=> b!2267950 m!2696937))

(assert (=> b!2267560 d!671324))

(declare-fun d!671326 () Bool)

(declare-fun lt!842666 () Bool)

(assert (=> d!671326 (= lt!842666 (select (content!3594 rules!1750) otherR!12))))

(declare-fun e!1452576 () Bool)

(assert (=> d!671326 (= lt!842666 e!1452576)))

(declare-fun res!969784 () Bool)

(assert (=> d!671326 (=> (not res!969784) (not e!1452576))))

(assert (=> d!671326 (= res!969784 ((_ is Cons!26967) rules!1750))))

(assert (=> d!671326 (= (contains!4655 rules!1750 otherR!12) lt!842666)))

(declare-fun b!2267951 () Bool)

(declare-fun e!1452577 () Bool)

(assert (=> b!2267951 (= e!1452576 e!1452577)))

(declare-fun res!969785 () Bool)

(assert (=> b!2267951 (=> res!969785 e!1452577)))

(assert (=> b!2267951 (= res!969785 (= (h!32368 rules!1750) otherR!12))))

(declare-fun b!2267952 () Bool)

(assert (=> b!2267952 (= e!1452577 (contains!4655 (t!202203 rules!1750) otherR!12))))

(assert (= (and d!671326 res!969784) b!2267951))

(assert (= (and b!2267951 (not res!969785)) b!2267952))

(assert (=> d!671326 m!2696905))

(declare-fun m!2696939 () Bool)

(assert (=> d!671326 m!2696939))

(declare-fun m!2696941 () Bool)

(assert (=> b!2267952 m!2696941))

(assert (=> b!2267550 d!671326))

(declare-fun d!671328 () Bool)

(declare-fun res!969790 () Bool)

(declare-fun e!1452580 () Bool)

(assert (=> d!671328 (=> (not res!969790) (not e!1452580))))

(assert (=> d!671328 (= res!969790 (not (isEmpty!15266 (originalCharacters!5067 (h!32369 tokens!456)))))))

(assert (=> d!671328 (= (inv!36510 (h!32369 tokens!456)) e!1452580)))

(declare-fun b!2267957 () Bool)

(declare-fun res!969791 () Bool)

(assert (=> b!2267957 (=> (not res!969791) (not e!1452580))))

(assert (=> b!2267957 (= res!969791 (= (originalCharacters!5067 (h!32369 tokens!456)) (list!10433 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))))))

(declare-fun b!2267958 () Bool)

(assert (=> b!2267958 (= e!1452580 (= (size!21152 (h!32369 tokens!456)) (size!21154 (originalCharacters!5067 (h!32369 tokens!456)))))))

(assert (= (and d!671328 res!969790) b!2267957))

(assert (= (and b!2267957 res!969791) b!2267958))

(declare-fun b_lambda!72289 () Bool)

(assert (=> (not b_lambda!72289) (not b!2267957)))

(declare-fun tb!134479 () Bool)

(declare-fun t!202239 () Bool)

(assert (=> (and b!2267549 (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202239) tb!134479))

(declare-fun b!2267959 () Bool)

(declare-fun e!1452581 () Bool)

(declare-fun tp!717612 () Bool)

(assert (=> b!2267959 (= e!1452581 (and (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))) tp!717612))))

(declare-fun result!163970 () Bool)

(assert (=> tb!134479 (= result!163970 (and (inv!36514 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))) e!1452581))))

(assert (= tb!134479 b!2267959))

(declare-fun m!2696943 () Bool)

(assert (=> b!2267959 m!2696943))

(declare-fun m!2696945 () Bool)

(assert (=> tb!134479 m!2696945))

(assert (=> b!2267957 t!202239))

(declare-fun b_and!178569 () Bool)

(assert (= b_and!178537 (and (=> t!202239 result!163970) b_and!178569)))

(declare-fun tb!134481 () Bool)

(declare-fun t!202241 () Bool)

(assert (=> (and b!2267546 (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202241) tb!134481))

(declare-fun result!163972 () Bool)

(assert (= result!163972 result!163970))

(assert (=> b!2267957 t!202241))

(declare-fun b_and!178571 () Bool)

(assert (= b_and!178539 (and (=> t!202241 result!163972) b_and!178571)))

(declare-fun tb!134483 () Bool)

(declare-fun t!202243 () Bool)

(assert (=> (and b!2267539 (= (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202243) tb!134483))

(declare-fun result!163974 () Bool)

(assert (= result!163974 result!163970))

(assert (=> b!2267957 t!202243))

(declare-fun b_and!178573 () Bool)

(assert (= b_and!178541 (and (=> t!202243 result!163974) b_and!178573)))

(declare-fun t!202245 () Bool)

(declare-fun tb!134485 () Bool)

(assert (=> (and b!2267552 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202245) tb!134485))

(declare-fun result!163976 () Bool)

(assert (= result!163976 result!163970))

(assert (=> b!2267957 t!202245))

(declare-fun b_and!178575 () Bool)

(assert (= b_and!178543 (and (=> t!202245 result!163976) b_and!178575)))

(declare-fun m!2696947 () Bool)

(assert (=> d!671328 m!2696947))

(declare-fun m!2696949 () Bool)

(assert (=> b!2267957 m!2696949))

(assert (=> b!2267957 m!2696949))

(declare-fun m!2696951 () Bool)

(assert (=> b!2267957 m!2696951))

(declare-fun m!2696953 () Bool)

(assert (=> b!2267958 m!2696953))

(assert (=> b!2267551 d!671328))

(declare-fun b!2267973 () Bool)

(declare-fun e!1452584 () Bool)

(declare-fun tp!717627 () Bool)

(declare-fun tp!717626 () Bool)

(assert (=> b!2267973 (= e!1452584 (and tp!717627 tp!717626))))

(assert (=> b!2267547 (= tp!717532 e!1452584)))

(declare-fun b!2267971 () Bool)

(declare-fun tp!717624 () Bool)

(declare-fun tp!717625 () Bool)

(assert (=> b!2267971 (= e!1452584 (and tp!717624 tp!717625))))

(declare-fun b!2267972 () Bool)

(declare-fun tp!717623 () Bool)

(assert (=> b!2267972 (= e!1452584 tp!717623)))

(declare-fun b!2267970 () Bool)

(assert (=> b!2267970 (= e!1452584 tp_is_empty!10511)))

(assert (= (and b!2267547 ((_ is ElementMatch!6645) (regex!4297 r!2363))) b!2267970))

(assert (= (and b!2267547 ((_ is Concat!11105) (regex!4297 r!2363))) b!2267971))

(assert (= (and b!2267547 ((_ is Star!6645) (regex!4297 r!2363))) b!2267972))

(assert (= (and b!2267547 ((_ is Union!6645) (regex!4297 r!2363))) b!2267973))

(declare-fun b!2267984 () Bool)

(declare-fun b_free!67317 () Bool)

(declare-fun b_next!68021 () Bool)

(assert (=> b!2267984 (= b_free!67317 (not b_next!68021))))

(declare-fun tp!717639 () Bool)

(declare-fun b_and!178577 () Bool)

(assert (=> b!2267984 (= tp!717639 b_and!178577)))

(declare-fun b_free!67319 () Bool)

(declare-fun b_next!68023 () Bool)

(assert (=> b!2267984 (= b_free!67319 (not b_next!68023))))

(declare-fun t!202247 () Bool)

(declare-fun tb!134487 () Bool)

(assert (=> (and b!2267984 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202247) tb!134487))

(declare-fun result!163982 () Bool)

(assert (= result!163982 result!163926))

(assert (=> d!671210 t!202247))

(declare-fun tb!134489 () Bool)

(declare-fun t!202249 () Bool)

(assert (=> (and b!2267984 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202249) tb!134489))

(declare-fun result!163984 () Bool)

(assert (= result!163984 result!163970))

(assert (=> b!2267957 t!202249))

(declare-fun tp!717637 () Bool)

(declare-fun b_and!178579 () Bool)

(assert (=> b!2267984 (= tp!717637 (and (=> t!202247 result!163982) (=> t!202249 result!163984) b_and!178579))))

(declare-fun e!1452594 () Bool)

(assert (=> b!2267984 (= e!1452594 (and tp!717639 tp!717637))))

(declare-fun tp!717636 () Bool)

(declare-fun e!1452596 () Bool)

(declare-fun b!2267983 () Bool)

(assert (=> b!2267983 (= e!1452596 (and tp!717636 (inv!36506 (tag!4787 (h!32368 (t!202203 rules!1750)))) (inv!36509 (transformation!4297 (h!32368 (t!202203 rules!1750)))) e!1452594))))

(declare-fun b!2267982 () Bool)

(declare-fun e!1452593 () Bool)

(declare-fun tp!717638 () Bool)

(assert (=> b!2267982 (= e!1452593 (and e!1452596 tp!717638))))

(assert (=> b!2267537 (= tp!717524 e!1452593)))

(assert (= b!2267983 b!2267984))

(assert (= b!2267982 b!2267983))

(assert (= (and b!2267537 ((_ is Cons!26967) (t!202203 rules!1750))) b!2267982))

(declare-fun m!2696955 () Bool)

(assert (=> b!2267983 m!2696955))

(declare-fun m!2696957 () Bool)

(assert (=> b!2267983 m!2696957))

(declare-fun b!2267989 () Bool)

(declare-fun e!1452599 () Bool)

(declare-fun tp!717642 () Bool)

(assert (=> b!2267989 (= e!1452599 (and tp_is_empty!10511 tp!717642))))

(assert (=> b!2267533 (= tp!717535 e!1452599)))

(assert (= (and b!2267533 ((_ is Cons!26966) (t!202202 input!1722))) b!2267989))

(declare-fun b!2267990 () Bool)

(declare-fun e!1452600 () Bool)

(declare-fun tp!717643 () Bool)

(assert (=> b!2267990 (= e!1452600 (and tp_is_empty!10511 tp!717643))))

(assert (=> b!2267544 (= tp!717525 e!1452600)))

(assert (= (and b!2267544 ((_ is Cons!26966) (t!202202 otherP!12))) b!2267990))

(declare-fun b!2267991 () Bool)

(declare-fun e!1452601 () Bool)

(declare-fun tp!717644 () Bool)

(assert (=> b!2267991 (= e!1452601 (and tp_is_empty!10511 tp!717644))))

(assert (=> b!2267555 (= tp!717529 e!1452601)))

(assert (= (and b!2267555 ((_ is Cons!26966) (originalCharacters!5067 (h!32369 tokens!456)))) b!2267991))

(declare-fun b!2267995 () Bool)

(declare-fun e!1452602 () Bool)

(declare-fun tp!717649 () Bool)

(declare-fun tp!717648 () Bool)

(assert (=> b!2267995 (= e!1452602 (and tp!717649 tp!717648))))

(assert (=> b!2267545 (= tp!717531 e!1452602)))

(declare-fun b!2267993 () Bool)

(declare-fun tp!717646 () Bool)

(declare-fun tp!717647 () Bool)

(assert (=> b!2267993 (= e!1452602 (and tp!717646 tp!717647))))

(declare-fun b!2267994 () Bool)

(declare-fun tp!717645 () Bool)

(assert (=> b!2267994 (= e!1452602 tp!717645)))

(declare-fun b!2267992 () Bool)

(assert (=> b!2267992 (= e!1452602 tp_is_empty!10511)))

(assert (= (and b!2267545 ((_ is ElementMatch!6645) (regex!4297 otherR!12))) b!2267992))

(assert (= (and b!2267545 ((_ is Concat!11105) (regex!4297 otherR!12))) b!2267993))

(assert (= (and b!2267545 ((_ is Star!6645) (regex!4297 otherR!12))) b!2267994))

(assert (= (and b!2267545 ((_ is Union!6645) (regex!4297 otherR!12))) b!2267995))

(declare-fun b!2267999 () Bool)

(declare-fun e!1452603 () Bool)

(declare-fun tp!717654 () Bool)

(declare-fun tp!717653 () Bool)

(assert (=> b!2267999 (= e!1452603 (and tp!717654 tp!717653))))

(assert (=> b!2267556 (= tp!717527 e!1452603)))

(declare-fun b!2267997 () Bool)

(declare-fun tp!717651 () Bool)

(declare-fun tp!717652 () Bool)

(assert (=> b!2267997 (= e!1452603 (and tp!717651 tp!717652))))

(declare-fun b!2267998 () Bool)

(declare-fun tp!717650 () Bool)

(assert (=> b!2267998 (= e!1452603 tp!717650)))

(declare-fun b!2267996 () Bool)

(assert (=> b!2267996 (= e!1452603 tp_is_empty!10511)))

(assert (= (and b!2267556 ((_ is ElementMatch!6645) (regex!4297 (rule!6613 (h!32369 tokens!456))))) b!2267996))

(assert (= (and b!2267556 ((_ is Concat!11105) (regex!4297 (rule!6613 (h!32369 tokens!456))))) b!2267997))

(assert (= (and b!2267556 ((_ is Star!6645) (regex!4297 (rule!6613 (h!32369 tokens!456))))) b!2267998))

(assert (= (and b!2267556 ((_ is Union!6645) (regex!4297 (rule!6613 (h!32369 tokens!456))))) b!2267999))

(declare-fun b!2268003 () Bool)

(declare-fun e!1452604 () Bool)

(declare-fun tp!717659 () Bool)

(declare-fun tp!717658 () Bool)

(assert (=> b!2268003 (= e!1452604 (and tp!717659 tp!717658))))

(assert (=> b!2267560 (= tp!717536 e!1452604)))

(declare-fun b!2268001 () Bool)

(declare-fun tp!717656 () Bool)

(declare-fun tp!717657 () Bool)

(assert (=> b!2268001 (= e!1452604 (and tp!717656 tp!717657))))

(declare-fun b!2268002 () Bool)

(declare-fun tp!717655 () Bool)

(assert (=> b!2268002 (= e!1452604 tp!717655)))

(declare-fun b!2268000 () Bool)

(assert (=> b!2268000 (= e!1452604 tp_is_empty!10511)))

(assert (= (and b!2267560 ((_ is ElementMatch!6645) (regex!4297 (h!32368 rules!1750)))) b!2268000))

(assert (= (and b!2267560 ((_ is Concat!11105) (regex!4297 (h!32368 rules!1750)))) b!2268001))

(assert (= (and b!2267560 ((_ is Star!6645) (regex!4297 (h!32368 rules!1750)))) b!2268002))

(assert (= (and b!2267560 ((_ is Union!6645) (regex!4297 (h!32368 rules!1750)))) b!2268003))

(declare-fun b!2268004 () Bool)

(declare-fun e!1452605 () Bool)

(declare-fun tp!717660 () Bool)

(assert (=> b!2268004 (= e!1452605 (and tp_is_empty!10511 tp!717660))))

(assert (=> b!2267540 (= tp!717534 e!1452605)))

(assert (= (and b!2267540 ((_ is Cons!26966) (t!202202 suffix!886))) b!2268004))

(declare-fun b!2268018 () Bool)

(declare-fun b_free!67321 () Bool)

(declare-fun b_next!68025 () Bool)

(assert (=> b!2268018 (= b_free!67321 (not b_next!68025))))

(declare-fun tp!717672 () Bool)

(declare-fun b_and!178581 () Bool)

(assert (=> b!2268018 (= tp!717672 b_and!178581)))

(declare-fun b_free!67323 () Bool)

(declare-fun b_next!68027 () Bool)

(assert (=> b!2268018 (= b_free!67323 (not b_next!68027))))

(declare-fun t!202251 () Bool)

(declare-fun tb!134491 () Bool)

(assert (=> (and b!2268018 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202251) tb!134491))

(declare-fun result!163990 () Bool)

(assert (= result!163990 result!163926))

(assert (=> d!671210 t!202251))

(declare-fun t!202253 () Bool)

(declare-fun tb!134493 () Bool)

(assert (=> (and b!2268018 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202253) tb!134493))

(declare-fun result!163992 () Bool)

(assert (= result!163992 result!163970))

(assert (=> b!2267957 t!202253))

(declare-fun tp!717674 () Bool)

(declare-fun b_and!178583 () Bool)

(assert (=> b!2268018 (= tp!717674 (and (=> t!202251 result!163990) (=> t!202253 result!163992) b_and!178583))))

(declare-fun tp!717671 () Bool)

(declare-fun e!1452620 () Bool)

(declare-fun e!1452621 () Bool)

(declare-fun b!2268017 () Bool)

(assert (=> b!2268017 (= e!1452621 (and tp!717671 (inv!36506 (tag!4787 (rule!6613 (h!32369 (t!202204 tokens!456))))) (inv!36509 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) e!1452620))))

(declare-fun e!1452619 () Bool)

(assert (=> b!2267551 (= tp!717533 e!1452619)))

(assert (=> b!2268018 (= e!1452620 (and tp!717672 tp!717674))))

(declare-fun tp!717673 () Bool)

(declare-fun b!2268015 () Bool)

(declare-fun e!1452618 () Bool)

(assert (=> b!2268015 (= e!1452619 (and (inv!36510 (h!32369 (t!202204 tokens!456))) e!1452618 tp!717673))))

(declare-fun b!2268016 () Bool)

(declare-fun tp!717675 () Bool)

(assert (=> b!2268016 (= e!1452618 (and (inv!21 (value!136284 (h!32369 (t!202204 tokens!456)))) e!1452621 tp!717675))))

(assert (= b!2268017 b!2268018))

(assert (= b!2268016 b!2268017))

(assert (= b!2268015 b!2268016))

(assert (= (and b!2267551 ((_ is Cons!26968) (t!202204 tokens!456))) b!2268015))

(declare-fun m!2696959 () Bool)

(assert (=> b!2268017 m!2696959))

(declare-fun m!2696961 () Bool)

(assert (=> b!2268017 m!2696961))

(declare-fun m!2696963 () Bool)

(assert (=> b!2268015 m!2696963))

(declare-fun m!2696965 () Bool)

(assert (=> b!2268016 m!2696965))

(declare-fun b_lambda!72291 () Bool)

(assert (= b_lambda!72289 (or (and b!2267984 b_free!67319 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))))) (and b!2267546 b_free!67299 (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))))) (and b!2267549 b_free!67295 (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))))) (and b!2267552 b_free!67307) (and b!2267539 b_free!67303 (= (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))))) (and b!2268018 b_free!67323 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))))) b_lambda!72291)))

(check-sat (not d!671324) (not b!2267993) (not b!2267608) (not b!2267923) (not b!2267982) (not d!671268) (not b!2267681) (not d!671318) (not d!671250) (not b!2267601) (not d!671328) (not d!671252) b_and!178569 (not d!671210) (not b!2267713) (not d!671312) (not b!2268002) (not b!2267703) (not d!671218) (not b!2267600) (not tb!134447) (not d!671206) (not b!2267972) (not b_next!68025) (not b!2267971) (not b_next!67997) (not b!2267619) (not b!2267949) (not b!2267950) (not b!2267921) (not d!671270) b_and!178573 (not b_next!68007) (not b_next!68021) (not b!2267610) b_and!178521 (not b!2268004) (not b!2267660) b_and!178577 (not b!2268003) (not b!2267927) (not b!2267995) (not b!2267688) (not b!2267643) (not b!2267715) (not b!2267947) (not d!671216) (not b!2267990) (not b!2267920) (not b!2267707) (not b!2267604) (not b!2267661) b_and!178571 (not b!2267683) (not d!671316) (not d!671262) b_and!178533 (not b!2268001) (not b!2267622) (not d!671274) b_and!178579 (not tb!134479) (not bm!136010) (not d!671264) (not b!2267685) (not b_lambda!72281) (not b!2267952) (not b_next!68011) (not b!2267945) (not d!671320) (not b!2267994) (not b!2267611) (not b_next!68001) (not d!671326) (not b!2268016) (not b!2267957) (not b!2267924) (not b!2267983) (not d!671220) b_and!178583 (not b!2267946) (not d!671246) (not b_next!68009) (not b_next!68027) (not b!2267934) (not b!2267959) (not b!2267991) (not b!2267659) (not b!2268015) (not d!671314) (not b_next!68023) tp_is_empty!10511 (not b_lambda!72291) (not b!2267922) (not b_next!67999) (not d!671266) (not b!2267998) b_and!178581 (not b!2268017) (not bm!136019) (not b!2267999) b_and!178575 (not d!671208) (not b!2267689) b_and!178529 (not b_next!68005) (not b_next!68003) (not b!2267616) (not b!2267928) (not b!2267989) (not b!2267997) b_and!178525 (not b!2267958) (not b!2267925) (not b!2267973))
(check-sat b_and!178569 (not b_next!68025) (not b_next!67997) b_and!178577 b_and!178571 b_and!178533 b_and!178579 (not b_next!68011) (not b_next!68001) (not b_next!68023) (not b_next!67999) b_and!178581 b_and!178575 b_and!178525 b_and!178573 (not b_next!68007) (not b_next!68021) b_and!178521 b_and!178583 (not b_next!68009) (not b_next!68027) b_and!178529 (not b_next!68003) (not b_next!68005))
(get-model)

(declare-fun d!671332 () Bool)

(assert (=> d!671332 (= (isEmpty!15266 (list!10433 (charsOf!2685 (head!4886 tokens!456)))) ((_ is Nil!26966) (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))

(assert (=> bm!136010 d!671332))

(declare-fun call!136025 () Option!5275)

(declare-fun bm!136020 () Bool)

(assert (=> bm!136020 (= call!136025 (maxPrefixOneRule!1356 thiss!16613 (h!32368 (t!202203 rules!1750)) input!1722))))

(declare-fun b!2268019 () Bool)

(declare-fun e!1452626 () Option!5275)

(declare-fun lt!842670 () Option!5275)

(declare-fun lt!842667 () Option!5275)

(assert (=> b!2268019 (= e!1452626 (ite (and ((_ is None!5274) lt!842670) ((_ is None!5274) lt!842667)) None!5274 (ite ((_ is None!5274) lt!842667) lt!842670 (ite ((_ is None!5274) lt!842670) lt!842667 (ite (>= (size!21152 (_1!15821 (v!30316 lt!842670))) (size!21152 (_1!15821 (v!30316 lt!842667)))) lt!842670 lt!842667)))))))

(assert (=> b!2268019 (= lt!842670 call!136025)))

(assert (=> b!2268019 (= lt!842667 (maxPrefix!2168 thiss!16613 (t!202203 (t!202203 rules!1750)) input!1722))))

(declare-fun b!2268020 () Bool)

(declare-fun res!969802 () Bool)

(declare-fun e!1452625 () Bool)

(assert (=> b!2268020 (=> (not res!969802) (not e!1452625))))

(declare-fun lt!842669 () Option!5275)

(assert (=> b!2268020 (= res!969802 (matchR!2906 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842669)))) (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842669))))))))

(declare-fun b!2268021 () Bool)

(declare-fun res!969804 () Bool)

(assert (=> b!2268021 (=> (not res!969804) (not e!1452625))))

(assert (=> b!2268021 (= res!969804 (< (size!21154 (_2!15821 (get!8139 lt!842669))) (size!21154 input!1722)))))

(declare-fun b!2268022 () Bool)

(declare-fun res!969805 () Bool)

(assert (=> b!2268022 (=> (not res!969805) (not e!1452625))))

(assert (=> b!2268022 (= res!969805 (= (++!6569 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842669)))) (_2!15821 (get!8139 lt!842669))) input!1722))))

(declare-fun d!671334 () Bool)

(declare-fun e!1452624 () Bool)

(assert (=> d!671334 e!1452624))

(declare-fun res!969807 () Bool)

(assert (=> d!671334 (=> res!969807 e!1452624)))

(assert (=> d!671334 (= res!969807 (isEmpty!15267 lt!842669))))

(assert (=> d!671334 (= lt!842669 e!1452626)))

(declare-fun c!360115 () Bool)

(assert (=> d!671334 (= c!360115 (and ((_ is Cons!26967) (t!202203 rules!1750)) ((_ is Nil!26967) (t!202203 (t!202203 rules!1750)))))))

(declare-fun lt!842671 () Unit!39922)

(declare-fun lt!842668 () Unit!39922)

(assert (=> d!671334 (= lt!842671 lt!842668)))

(assert (=> d!671334 (isPrefix!2287 input!1722 input!1722)))

(assert (=> d!671334 (= lt!842668 (lemmaIsPrefixRefl!1465 input!1722 input!1722))))

(assert (=> d!671334 (rulesValidInductive!1499 thiss!16613 (t!202203 rules!1750))))

(assert (=> d!671334 (= (maxPrefix!2168 thiss!16613 (t!202203 rules!1750) input!1722) lt!842669)))

(declare-fun b!2268023 () Bool)

(declare-fun res!969801 () Bool)

(assert (=> b!2268023 (=> (not res!969801) (not e!1452625))))

(assert (=> b!2268023 (= res!969801 (= (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842669)))) (originalCharacters!5067 (_1!15821 (get!8139 lt!842669)))))))

(declare-fun b!2268024 () Bool)

(declare-fun res!969806 () Bool)

(assert (=> b!2268024 (=> (not res!969806) (not e!1452625))))

(assert (=> b!2268024 (= res!969806 (= (value!136284 (_1!15821 (get!8139 lt!842669))) (apply!6595 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842669)))) (seqFromList!3001 (originalCharacters!5067 (_1!15821 (get!8139 lt!842669)))))))))

(declare-fun b!2268025 () Bool)

(assert (=> b!2268025 (= e!1452626 call!136025)))

(declare-fun b!2268026 () Bool)

(assert (=> b!2268026 (= e!1452624 e!1452625)))

(declare-fun res!969803 () Bool)

(assert (=> b!2268026 (=> (not res!969803) (not e!1452625))))

(assert (=> b!2268026 (= res!969803 (isDefined!4202 lt!842669))))

(declare-fun b!2268027 () Bool)

(assert (=> b!2268027 (= e!1452625 (contains!4655 (t!202203 rules!1750) (rule!6613 (_1!15821 (get!8139 lt!842669)))))))

(assert (= (and d!671334 c!360115) b!2268025))

(assert (= (and d!671334 (not c!360115)) b!2268019))

(assert (= (or b!2268025 b!2268019) bm!136020))

(assert (= (and d!671334 (not res!969807)) b!2268026))

(assert (= (and b!2268026 res!969803) b!2268023))

(assert (= (and b!2268023 res!969801) b!2268021))

(assert (= (and b!2268021 res!969804) b!2268022))

(assert (= (and b!2268022 res!969805) b!2268024))

(assert (= (and b!2268024 res!969806) b!2268020))

(assert (= (and b!2268020 res!969802) b!2268027))

(declare-fun m!2696967 () Bool)

(assert (=> b!2268023 m!2696967))

(declare-fun m!2696969 () Bool)

(assert (=> b!2268023 m!2696969))

(assert (=> b!2268023 m!2696969))

(declare-fun m!2696971 () Bool)

(assert (=> b!2268023 m!2696971))

(assert (=> b!2268021 m!2696967))

(declare-fun m!2696973 () Bool)

(assert (=> b!2268021 m!2696973))

(assert (=> b!2268021 m!2696713))

(declare-fun m!2696975 () Bool)

(assert (=> d!671334 m!2696975))

(assert (=> d!671334 m!2696883))

(assert (=> d!671334 m!2696885))

(declare-fun m!2696977 () Bool)

(assert (=> d!671334 m!2696977))

(declare-fun m!2696979 () Bool)

(assert (=> b!2268019 m!2696979))

(assert (=> b!2268022 m!2696967))

(assert (=> b!2268022 m!2696969))

(assert (=> b!2268022 m!2696969))

(assert (=> b!2268022 m!2696971))

(assert (=> b!2268022 m!2696971))

(declare-fun m!2696981 () Bool)

(assert (=> b!2268022 m!2696981))

(assert (=> b!2268024 m!2696967))

(declare-fun m!2696983 () Bool)

(assert (=> b!2268024 m!2696983))

(assert (=> b!2268024 m!2696983))

(declare-fun m!2696985 () Bool)

(assert (=> b!2268024 m!2696985))

(declare-fun m!2696987 () Bool)

(assert (=> bm!136020 m!2696987))

(assert (=> b!2268020 m!2696967))

(assert (=> b!2268020 m!2696969))

(assert (=> b!2268020 m!2696969))

(assert (=> b!2268020 m!2696971))

(assert (=> b!2268020 m!2696971))

(declare-fun m!2696989 () Bool)

(assert (=> b!2268020 m!2696989))

(assert (=> b!2268027 m!2696967))

(declare-fun m!2696991 () Bool)

(assert (=> b!2268027 m!2696991))

(declare-fun m!2696993 () Bool)

(assert (=> b!2268026 m!2696993))

(assert (=> b!2267920 d!671334))

(declare-fun d!671336 () Bool)

(declare-fun lt!842672 () Int)

(assert (=> d!671336 (>= lt!842672 0)))

(declare-fun e!1452627 () Int)

(assert (=> d!671336 (= lt!842672 e!1452627)))

(declare-fun c!360116 () Bool)

(assert (=> d!671336 (= c!360116 ((_ is Nil!26966) (originalCharacters!5067 (h!32369 tokens!456))))))

(assert (=> d!671336 (= (size!21154 (originalCharacters!5067 (h!32369 tokens!456))) lt!842672)))

(declare-fun b!2268028 () Bool)

(assert (=> b!2268028 (= e!1452627 0)))

(declare-fun b!2268029 () Bool)

(assert (=> b!2268029 (= e!1452627 (+ 1 (size!21154 (t!202202 (originalCharacters!5067 (h!32369 tokens!456))))))))

(assert (= (and d!671336 c!360116) b!2268028))

(assert (= (and d!671336 (not c!360116)) b!2268029))

(declare-fun m!2696995 () Bool)

(assert (=> b!2268029 m!2696995))

(assert (=> b!2267958 d!671336))

(declare-fun d!671338 () Bool)

(assert (=> d!671338 (= (inv!36506 (tag!4787 (rule!6613 (h!32369 (t!202204 tokens!456))))) (= (mod (str.len (value!136283 (tag!4787 (rule!6613 (h!32369 (t!202204 tokens!456)))))) 2) 0))))

(assert (=> b!2268017 d!671338))

(declare-fun d!671340 () Bool)

(declare-fun res!969808 () Bool)

(declare-fun e!1452628 () Bool)

(assert (=> d!671340 (=> (not res!969808) (not e!1452628))))

(assert (=> d!671340 (= res!969808 (semiInverseModEq!1730 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))))))

(assert (=> d!671340 (= (inv!36509 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) e!1452628)))

(declare-fun b!2268030 () Bool)

(assert (=> b!2268030 (= e!1452628 (equivClasses!1649 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))))))

(assert (= (and d!671340 res!969808) b!2268030))

(declare-fun m!2696997 () Bool)

(assert (=> d!671340 m!2696997))

(declare-fun m!2696999 () Bool)

(assert (=> b!2268030 m!2696999))

(assert (=> b!2268017 d!671340))

(assert (=> d!671206 d!671332))

(declare-fun c!360122 () Bool)

(declare-fun c!360121 () Bool)

(declare-fun bm!136027 () Bool)

(declare-fun call!136034 () Bool)

(assert (=> bm!136027 (= call!136034 (validRegex!2490 (ite c!360122 (reg!6974 (regex!4297 r!2363)) (ite c!360121 (regOne!13803 (regex!4297 r!2363)) (regTwo!13802 (regex!4297 r!2363))))))))

(declare-fun d!671342 () Bool)

(declare-fun res!969821 () Bool)

(declare-fun e!1452643 () Bool)

(assert (=> d!671342 (=> res!969821 e!1452643)))

(assert (=> d!671342 (= res!969821 ((_ is ElementMatch!6645) (regex!4297 r!2363)))))

(assert (=> d!671342 (= (validRegex!2490 (regex!4297 r!2363)) e!1452643)))

(declare-fun bm!136028 () Bool)

(declare-fun call!136032 () Bool)

(assert (=> bm!136028 (= call!136032 (validRegex!2490 (ite c!360121 (regTwo!13803 (regex!4297 r!2363)) (regOne!13802 (regex!4297 r!2363)))))))

(declare-fun b!2268049 () Bool)

(declare-fun res!969819 () Bool)

(declare-fun e!1452648 () Bool)

(assert (=> b!2268049 (=> (not res!969819) (not e!1452648))))

(declare-fun call!136033 () Bool)

(assert (=> b!2268049 (= res!969819 call!136033)))

(declare-fun e!1452646 () Bool)

(assert (=> b!2268049 (= e!1452646 e!1452648)))

(declare-fun b!2268050 () Bool)

(declare-fun e!1452644 () Bool)

(assert (=> b!2268050 (= e!1452643 e!1452644)))

(assert (=> b!2268050 (= c!360122 ((_ is Star!6645) (regex!4297 r!2363)))))

(declare-fun b!2268051 () Bool)

(declare-fun e!1452649 () Bool)

(assert (=> b!2268051 (= e!1452649 call!136034)))

(declare-fun b!2268052 () Bool)

(assert (=> b!2268052 (= e!1452644 e!1452649)))

(declare-fun res!969820 () Bool)

(assert (=> b!2268052 (= res!969820 (not (nullable!1828 (reg!6974 (regex!4297 r!2363)))))))

(assert (=> b!2268052 (=> (not res!969820) (not e!1452649))))

(declare-fun b!2268053 () Bool)

(declare-fun res!969822 () Bool)

(declare-fun e!1452645 () Bool)

(assert (=> b!2268053 (=> res!969822 e!1452645)))

(assert (=> b!2268053 (= res!969822 (not ((_ is Concat!11105) (regex!4297 r!2363))))))

(assert (=> b!2268053 (= e!1452646 e!1452645)))

(declare-fun bm!136029 () Bool)

(assert (=> bm!136029 (= call!136033 call!136034)))

(declare-fun b!2268054 () Bool)

(declare-fun e!1452647 () Bool)

(assert (=> b!2268054 (= e!1452645 e!1452647)))

(declare-fun res!969823 () Bool)

(assert (=> b!2268054 (=> (not res!969823) (not e!1452647))))

(assert (=> b!2268054 (= res!969823 call!136032)))

(declare-fun b!2268055 () Bool)

(assert (=> b!2268055 (= e!1452644 e!1452646)))

(assert (=> b!2268055 (= c!360121 ((_ is Union!6645) (regex!4297 r!2363)))))

(declare-fun b!2268056 () Bool)

(assert (=> b!2268056 (= e!1452648 call!136032)))

(declare-fun b!2268057 () Bool)

(assert (=> b!2268057 (= e!1452647 call!136033)))

(assert (= (and d!671342 (not res!969821)) b!2268050))

(assert (= (and b!2268050 c!360122) b!2268052))

(assert (= (and b!2268050 (not c!360122)) b!2268055))

(assert (= (and b!2268052 res!969820) b!2268051))

(assert (= (and b!2268055 c!360121) b!2268049))

(assert (= (and b!2268055 (not c!360121)) b!2268053))

(assert (= (and b!2268049 res!969819) b!2268056))

(assert (= (and b!2268053 (not res!969822)) b!2268054))

(assert (= (and b!2268054 res!969823) b!2268057))

(assert (= (or b!2268049 b!2268057) bm!136029))

(assert (= (or b!2268056 b!2268054) bm!136028))

(assert (= (or b!2268051 bm!136029) bm!136027))

(declare-fun m!2697001 () Bool)

(assert (=> bm!136027 m!2697001))

(declare-fun m!2697003 () Bool)

(assert (=> bm!136028 m!2697003))

(declare-fun m!2697005 () Bool)

(assert (=> b!2268052 m!2697005))

(assert (=> d!671206 d!671342))

(declare-fun d!671344 () Bool)

(assert (=> d!671344 true))

(declare-fun lambda!85399 () Int)

(declare-fun order!15025 () Int)

(declare-fun order!15027 () Int)

(declare-fun dynLambda!11684 (Int Int) Int)

(declare-fun dynLambda!11685 (Int Int) Int)

(assert (=> d!671344 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (dynLambda!11685 order!15027 lambda!85399))))

(declare-fun Forall2!690 (Int) Bool)

(assert (=> d!671344 (= (equivClasses!1649 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (Forall2!690 lambda!85399))))

(declare-fun bs!455771 () Bool)

(assert (= bs!455771 d!671344))

(declare-fun m!2697155 () Bool)

(assert (=> bs!455771 m!2697155))

(assert (=> b!2267689 d!671344))

(declare-fun d!671416 () Bool)

(assert (=> d!671416 true))

(declare-fun order!15031 () Int)

(declare-fun order!15029 () Int)

(declare-fun lambda!85403 () Int)

(declare-fun dynLambda!11686 (Int Int) Int)

(declare-fun dynLambda!11687 (Int Int) Int)

(assert (=> d!671416 (< (dynLambda!11686 order!15029 (toChars!5910 (transformation!4297 (h!32368 rules!1750)))) (dynLambda!11687 order!15031 lambda!85403))))

(assert (=> d!671416 true))

(assert (=> d!671416 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 (h!32368 rules!1750)))) (dynLambda!11687 order!15031 lambda!85403))))

(declare-fun Forall!1073 (Int) Bool)

(assert (=> d!671416 (= (semiInverseModEq!1730 (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toValue!6051 (transformation!4297 (h!32368 rules!1750)))) (Forall!1073 lambda!85403))))

(declare-fun bs!455774 () Bool)

(assert (= bs!455774 d!671416))

(declare-fun m!2697181 () Bool)

(assert (=> bs!455774 m!2697181))

(assert (=> d!671324 d!671416))

(declare-fun bs!455775 () Bool)

(declare-fun d!671430 () Bool)

(assert (= bs!455775 (and d!671430 d!671416)))

(declare-fun lambda!85404 () Int)

(assert (=> bs!455775 (= (and (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (h!32368 rules!1750)))) (= (toValue!6051 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 (h!32368 rules!1750))))) (= lambda!85404 lambda!85403))))

(assert (=> d!671430 true))

(assert (=> d!671430 (< (dynLambda!11686 order!15029 (toChars!5910 (transformation!4297 r!2363))) (dynLambda!11687 order!15031 lambda!85404))))

(assert (=> d!671430 true))

(assert (=> d!671430 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 r!2363))) (dynLambda!11687 order!15031 lambda!85404))))

(assert (=> d!671430 (= (semiInverseModEq!1730 (toChars!5910 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 r!2363))) (Forall!1073 lambda!85404))))

(declare-fun bs!455776 () Bool)

(assert (= bs!455776 d!671430))

(declare-fun m!2697183 () Bool)

(assert (=> bs!455776 m!2697183))

(assert (=> d!671216 d!671430))

(declare-fun d!671432 () Bool)

(declare-fun lt!842701 () Int)

(assert (=> d!671432 (>= lt!842701 0)))

(declare-fun e!1452750 () Int)

(assert (=> d!671432 (= lt!842701 e!1452750)))

(declare-fun c!360177 () Bool)

(assert (=> d!671432 (= c!360177 ((_ is Nil!26966) (_2!15821 (get!8139 lt!842657))))))

(assert (=> d!671432 (= (size!21154 (_2!15821 (get!8139 lt!842657))) lt!842701)))

(declare-fun b!2268237 () Bool)

(assert (=> b!2268237 (= e!1452750 0)))

(declare-fun b!2268238 () Bool)

(assert (=> b!2268238 (= e!1452750 (+ 1 (size!21154 (t!202202 (_2!15821 (get!8139 lt!842657))))))))

(assert (= (and d!671432 c!360177) b!2268237))

(assert (= (and d!671432 (not c!360177)) b!2268238))

(declare-fun m!2697185 () Bool)

(assert (=> b!2268238 m!2697185))

(assert (=> b!2267922 d!671432))

(declare-fun d!671434 () Bool)

(assert (=> d!671434 (= (get!8139 lt!842657) (v!30316 lt!842657))))

(assert (=> b!2267922 d!671434))

(declare-fun d!671436 () Bool)

(declare-fun lt!842702 () Int)

(assert (=> d!671436 (>= lt!842702 0)))

(declare-fun e!1452751 () Int)

(assert (=> d!671436 (= lt!842702 e!1452751)))

(declare-fun c!360178 () Bool)

(assert (=> d!671436 (= c!360178 ((_ is Nil!26966) input!1722))))

(assert (=> d!671436 (= (size!21154 input!1722) lt!842702)))

(declare-fun b!2268241 () Bool)

(assert (=> b!2268241 (= e!1452751 0)))

(declare-fun b!2268242 () Bool)

(assert (=> b!2268242 (= e!1452751 (+ 1 (size!21154 (t!202202 input!1722))))))

(assert (= (and d!671436 c!360178) b!2268241))

(assert (= (and d!671436 (not c!360178)) b!2268242))

(declare-fun m!2697187 () Bool)

(assert (=> b!2268242 m!2697187))

(assert (=> b!2267922 d!671436))

(declare-fun bm!136056 () Bool)

(declare-fun c!360179 () Bool)

(declare-fun call!136063 () Bool)

(declare-fun c!360180 () Bool)

(assert (=> bm!136056 (= call!136063 (validRegex!2490 (ite c!360180 (reg!6974 (regex!4297 otherR!12)) (ite c!360179 (regOne!13803 (regex!4297 otherR!12)) (regTwo!13802 (regex!4297 otherR!12))))))))

(declare-fun d!671438 () Bool)

(declare-fun res!969883 () Bool)

(declare-fun e!1452754 () Bool)

(assert (=> d!671438 (=> res!969883 e!1452754)))

(assert (=> d!671438 (= res!969883 ((_ is ElementMatch!6645) (regex!4297 otherR!12)))))

(assert (=> d!671438 (= (validRegex!2490 (regex!4297 otherR!12)) e!1452754)))

(declare-fun bm!136057 () Bool)

(declare-fun call!136061 () Bool)

(assert (=> bm!136057 (= call!136061 (validRegex!2490 (ite c!360179 (regTwo!13803 (regex!4297 otherR!12)) (regOne!13802 (regex!4297 otherR!12)))))))

(declare-fun b!2268243 () Bool)

(declare-fun res!969881 () Bool)

(declare-fun e!1452760 () Bool)

(assert (=> b!2268243 (=> (not res!969881) (not e!1452760))))

(declare-fun call!136062 () Bool)

(assert (=> b!2268243 (= res!969881 call!136062)))

(declare-fun e!1452758 () Bool)

(assert (=> b!2268243 (= e!1452758 e!1452760)))

(declare-fun b!2268244 () Bool)

(declare-fun e!1452756 () Bool)

(assert (=> b!2268244 (= e!1452754 e!1452756)))

(assert (=> b!2268244 (= c!360180 ((_ is Star!6645) (regex!4297 otherR!12)))))

(declare-fun b!2268245 () Bool)

(declare-fun e!1452761 () Bool)

(assert (=> b!2268245 (= e!1452761 call!136063)))

(declare-fun b!2268246 () Bool)

(assert (=> b!2268246 (= e!1452756 e!1452761)))

(declare-fun res!969882 () Bool)

(assert (=> b!2268246 (= res!969882 (not (nullable!1828 (reg!6974 (regex!4297 otherR!12)))))))

(assert (=> b!2268246 (=> (not res!969882) (not e!1452761))))

(declare-fun b!2268247 () Bool)

(declare-fun res!969884 () Bool)

(declare-fun e!1452757 () Bool)

(assert (=> b!2268247 (=> res!969884 e!1452757)))

(assert (=> b!2268247 (= res!969884 (not ((_ is Concat!11105) (regex!4297 otherR!12))))))

(assert (=> b!2268247 (= e!1452758 e!1452757)))

(declare-fun bm!136058 () Bool)

(assert (=> bm!136058 (= call!136062 call!136063)))

(declare-fun b!2268248 () Bool)

(declare-fun e!1452759 () Bool)

(assert (=> b!2268248 (= e!1452757 e!1452759)))

(declare-fun res!969885 () Bool)

(assert (=> b!2268248 (=> (not res!969885) (not e!1452759))))

(assert (=> b!2268248 (= res!969885 call!136061)))

(declare-fun b!2268249 () Bool)

(assert (=> b!2268249 (= e!1452756 e!1452758)))

(assert (=> b!2268249 (= c!360179 ((_ is Union!6645) (regex!4297 otherR!12)))))

(declare-fun b!2268250 () Bool)

(assert (=> b!2268250 (= e!1452760 call!136061)))

(declare-fun b!2268251 () Bool)

(assert (=> b!2268251 (= e!1452759 call!136062)))

(assert (= (and d!671438 (not res!969883)) b!2268244))

(assert (= (and b!2268244 c!360180) b!2268246))

(assert (= (and b!2268244 (not c!360180)) b!2268249))

(assert (= (and b!2268246 res!969882) b!2268245))

(assert (= (and b!2268249 c!360179) b!2268243))

(assert (= (and b!2268249 (not c!360179)) b!2268247))

(assert (= (and b!2268243 res!969881) b!2268250))

(assert (= (and b!2268247 (not res!969884)) b!2268248))

(assert (= (and b!2268248 res!969885) b!2268251))

(assert (= (or b!2268243 b!2268251) bm!136058))

(assert (= (or b!2268250 b!2268248) bm!136057))

(assert (= (or b!2268245 bm!136058) bm!136056))

(declare-fun m!2697191 () Bool)

(assert (=> bm!136056 m!2697191))

(declare-fun m!2697193 () Bool)

(assert (=> bm!136057 m!2697193))

(declare-fun m!2697195 () Bool)

(assert (=> b!2268246 m!2697195))

(assert (=> d!671264 d!671438))

(declare-fun d!671440 () Bool)

(declare-fun isBalanced!2663 (Conc!8742) Bool)

(assert (=> d!671440 (= (inv!36514 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))) (isBalanced!2663 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))))))

(declare-fun bs!455778 () Bool)

(assert (= bs!455778 d!671440))

(declare-fun m!2697203 () Bool)

(assert (=> bs!455778 m!2697203))

(assert (=> tb!134447 d!671440))

(declare-fun d!671448 () Bool)

(declare-fun nullableFct!435 (Regex!6645) Bool)

(assert (=> d!671448 (= (nullable!1828 (regex!4297 r!2363)) (nullableFct!435 (regex!4297 r!2363)))))

(declare-fun bs!455779 () Bool)

(assert (= bs!455779 d!671448))

(declare-fun m!2697205 () Bool)

(assert (=> bs!455779 m!2697205))

(assert (=> b!2267715 d!671448))

(declare-fun d!671450 () Bool)

(assert (=> d!671450 (= (inv!36514 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))) (isBalanced!2663 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))))))

(declare-fun bs!455780 () Bool)

(assert (= bs!455780 d!671450))

(declare-fun m!2697207 () Bool)

(assert (=> bs!455780 m!2697207))

(assert (=> tb!134479 d!671450))

(assert (=> d!671266 d!671264))

(declare-fun d!671452 () Bool)

(assert (=> d!671452 (ruleValid!1389 thiss!16613 otherR!12)))

(assert (=> d!671452 true))

(declare-fun _$65!1080 () Unit!39922)

(assert (=> d!671452 (= (choose!13262 thiss!16613 otherR!12 rules!1750) _$65!1080)))

(declare-fun bs!455781 () Bool)

(assert (= bs!455781 d!671452))

(assert (=> bs!455781 m!2696589))

(assert (=> d!671266 d!671452))

(assert (=> d!671266 d!671326))

(assert (=> d!671252 d!671312))

(declare-fun d!671454 () Bool)

(assert (=> d!671454 (= (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))) (list!10437 (c!360048 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))))))

(declare-fun bs!455782 () Bool)

(assert (= bs!455782 d!671454))

(declare-fun m!2697211 () Bool)

(assert (=> bs!455782 m!2697211))

(assert (=> b!2267924 d!671454))

(declare-fun d!671458 () Bool)

(declare-fun lt!842704 () BalanceConc!17212)

(assert (=> d!671458 (= (list!10433 lt!842704) (originalCharacters!5067 (_1!15821 (get!8139 lt!842657))))))

(assert (=> d!671458 (= lt!842704 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))) (value!136284 (_1!15821 (get!8139 lt!842657)))))))

(assert (=> d!671458 (= (charsOf!2685 (_1!15821 (get!8139 lt!842657))) lt!842704)))

(declare-fun b_lambda!72299 () Bool)

(assert (=> (not b_lambda!72299) (not d!671458)))

(declare-fun t!202295 () Bool)

(declare-fun tb!134531 () Bool)

(assert (=> (and b!2267552 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202295) tb!134531))

(declare-fun b!2268264 () Bool)

(declare-fun e!1452772 () Bool)

(declare-fun tp!717678 () Bool)

(assert (=> b!2268264 (= e!1452772 (and (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))) (value!136284 (_1!15821 (get!8139 lt!842657)))))) tp!717678))))

(declare-fun result!164032 () Bool)

(assert (=> tb!134531 (= result!164032 (and (inv!36514 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))) (value!136284 (_1!15821 (get!8139 lt!842657))))) e!1452772))))

(assert (= tb!134531 b!2268264))

(declare-fun m!2697215 () Bool)

(assert (=> b!2268264 m!2697215))

(declare-fun m!2697217 () Bool)

(assert (=> tb!134531 m!2697217))

(assert (=> d!671458 t!202295))

(declare-fun b_and!178621 () Bool)

(assert (= b_and!178575 (and (=> t!202295 result!164032) b_and!178621)))

(declare-fun t!202297 () Bool)

(declare-fun tb!134533 () Bool)

(assert (=> (and b!2267549 (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202297) tb!134533))

(declare-fun result!164034 () Bool)

(assert (= result!164034 result!164032))

(assert (=> d!671458 t!202297))

(declare-fun b_and!178623 () Bool)

(assert (= b_and!178569 (and (=> t!202297 result!164034) b_and!178623)))

(declare-fun t!202299 () Bool)

(declare-fun tb!134535 () Bool)

(assert (=> (and b!2267984 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202299) tb!134535))

(declare-fun result!164036 () Bool)

(assert (= result!164036 result!164032))

(assert (=> d!671458 t!202299))

(declare-fun b_and!178625 () Bool)

(assert (= b_and!178579 (and (=> t!202299 result!164036) b_and!178625)))

(declare-fun t!202301 () Bool)

(declare-fun tb!134537 () Bool)

(assert (=> (and b!2268018 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202301) tb!134537))

(declare-fun result!164038 () Bool)

(assert (= result!164038 result!164032))

(assert (=> d!671458 t!202301))

(declare-fun b_and!178627 () Bool)

(assert (= b_and!178583 (and (=> t!202301 result!164038) b_and!178627)))

(declare-fun tb!134539 () Bool)

(declare-fun t!202303 () Bool)

(assert (=> (and b!2267539 (= (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202303) tb!134539))

(declare-fun result!164040 () Bool)

(assert (= result!164040 result!164032))

(assert (=> d!671458 t!202303))

(declare-fun b_and!178629 () Bool)

(assert (= b_and!178573 (and (=> t!202303 result!164040) b_and!178629)))

(declare-fun tb!134541 () Bool)

(declare-fun t!202305 () Bool)

(assert (=> (and b!2267546 (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202305) tb!134541))

(declare-fun result!164042 () Bool)

(assert (= result!164042 result!164032))

(assert (=> d!671458 t!202305))

(declare-fun b_and!178631 () Bool)

(assert (= b_and!178571 (and (=> t!202305 result!164042) b_and!178631)))

(declare-fun m!2697221 () Bool)

(assert (=> d!671458 m!2697221))

(declare-fun m!2697223 () Bool)

(assert (=> d!671458 m!2697223))

(assert (=> b!2267924 d!671458))

(assert (=> b!2267924 d!671434))

(declare-fun b!2268279 () Bool)

(declare-fun e!1452782 () List!27062)

(declare-fun list!10441 (IArray!17491) List!27062)

(assert (=> b!2268279 (= e!1452782 (list!10441 (xs!11685 (c!360050 (_1!15819 lt!842576)))))))

(declare-fun b!2268278 () Bool)

(declare-fun e!1452781 () List!27062)

(assert (=> b!2268278 (= e!1452781 e!1452782)))

(declare-fun c!360187 () Bool)

(assert (=> b!2268278 (= c!360187 ((_ is Leaf!12877) (c!360050 (_1!15819 lt!842576))))))

(declare-fun d!671464 () Bool)

(declare-fun c!360186 () Bool)

(assert (=> d!671464 (= c!360186 ((_ is Empty!8743) (c!360050 (_1!15819 lt!842576))))))

(assert (=> d!671464 (= (list!10438 (c!360050 (_1!15819 lt!842576))) e!1452781)))

(declare-fun b!2268280 () Bool)

(declare-fun ++!6571 (List!27062 List!27062) List!27062)

(assert (=> b!2268280 (= e!1452782 (++!6571 (list!10438 (left!20460 (c!360050 (_1!15819 lt!842576)))) (list!10438 (right!20790 (c!360050 (_1!15819 lt!842576))))))))

(declare-fun b!2268277 () Bool)

(assert (=> b!2268277 (= e!1452781 Nil!26968)))

(assert (= (and d!671464 c!360186) b!2268277))

(assert (= (and d!671464 (not c!360186)) b!2268278))

(assert (= (and b!2268278 c!360187) b!2268279))

(assert (= (and b!2268278 (not c!360187)) b!2268280))

(declare-fun m!2697227 () Bool)

(assert (=> b!2268279 m!2697227))

(declare-fun m!2697229 () Bool)

(assert (=> b!2268280 m!2697229))

(declare-fun m!2697231 () Bool)

(assert (=> b!2268280 m!2697231))

(assert (=> b!2268280 m!2697229))

(assert (=> b!2268280 m!2697231))

(declare-fun m!2697233 () Bool)

(assert (=> b!2268280 m!2697233))

(assert (=> d!671314 d!671464))

(declare-fun d!671468 () Bool)

(declare-fun lt!842711 () Bool)

(assert (=> d!671468 (= lt!842711 (select (content!3594 rules!1750) (rule!6613 (_1!15821 (get!8139 lt!842657)))))))

(declare-fun e!1452783 () Bool)

(assert (=> d!671468 (= lt!842711 e!1452783)))

(declare-fun res!969900 () Bool)

(assert (=> d!671468 (=> (not res!969900) (not e!1452783))))

(assert (=> d!671468 (= res!969900 ((_ is Cons!26967) rules!1750))))

(assert (=> d!671468 (= (contains!4655 rules!1750 (rule!6613 (_1!15821 (get!8139 lt!842657)))) lt!842711)))

(declare-fun b!2268281 () Bool)

(declare-fun e!1452784 () Bool)

(assert (=> b!2268281 (= e!1452783 e!1452784)))

(declare-fun res!969901 () Bool)

(assert (=> b!2268281 (=> res!969901 e!1452784)))

(assert (=> b!2268281 (= res!969901 (= (h!32368 rules!1750) (rule!6613 (_1!15821 (get!8139 lt!842657)))))))

(declare-fun b!2268282 () Bool)

(assert (=> b!2268282 (= e!1452784 (contains!4655 (t!202203 rules!1750) (rule!6613 (_1!15821 (get!8139 lt!842657)))))))

(assert (= (and d!671468 res!969900) b!2268281))

(assert (= (and b!2268281 (not res!969901)) b!2268282))

(assert (=> d!671468 m!2696905))

(declare-fun m!2697235 () Bool)

(assert (=> d!671468 m!2697235))

(declare-fun m!2697237 () Bool)

(assert (=> b!2268282 m!2697237))

(assert (=> b!2267928 d!671468))

(assert (=> b!2267928 d!671434))

(declare-fun d!671470 () Bool)

(assert (=> d!671470 (= (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))) (h!32367 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))

(assert (=> b!2267611 d!671470))

(declare-fun b!2268285 () Bool)

(declare-fun e!1452786 () Bool)

(assert (=> b!2268285 (= e!1452786 (isPrefix!2287 (tail!3271 (tail!3271 otherP!12)) (tail!3271 (tail!3271 input!1722))))))

(declare-fun b!2268284 () Bool)

(declare-fun res!969904 () Bool)

(assert (=> b!2268284 (=> (not res!969904) (not e!1452786))))

(assert (=> b!2268284 (= res!969904 (= (head!4888 (tail!3271 otherP!12)) (head!4888 (tail!3271 input!1722))))))

(declare-fun b!2268286 () Bool)

(declare-fun e!1452787 () Bool)

(assert (=> b!2268286 (= e!1452787 (>= (size!21154 (tail!3271 input!1722)) (size!21154 (tail!3271 otherP!12))))))

(declare-fun d!671472 () Bool)

(assert (=> d!671472 e!1452787))

(declare-fun res!969905 () Bool)

(assert (=> d!671472 (=> res!969905 e!1452787)))

(declare-fun lt!842712 () Bool)

(assert (=> d!671472 (= res!969905 (not lt!842712))))

(declare-fun e!1452785 () Bool)

(assert (=> d!671472 (= lt!842712 e!1452785)))

(declare-fun res!969903 () Bool)

(assert (=> d!671472 (=> res!969903 e!1452785)))

(assert (=> d!671472 (= res!969903 ((_ is Nil!26966) (tail!3271 otherP!12)))))

(assert (=> d!671472 (= (isPrefix!2287 (tail!3271 otherP!12) (tail!3271 input!1722)) lt!842712)))

(declare-fun b!2268283 () Bool)

(assert (=> b!2268283 (= e!1452785 e!1452786)))

(declare-fun res!969902 () Bool)

(assert (=> b!2268283 (=> (not res!969902) (not e!1452786))))

(assert (=> b!2268283 (= res!969902 (not ((_ is Nil!26966) (tail!3271 input!1722))))))

(assert (= (and d!671472 (not res!969903)) b!2268283))

(assert (= (and b!2268283 res!969902) b!2268284))

(assert (= (and b!2268284 res!969904) b!2268285))

(assert (= (and d!671472 (not res!969905)) b!2268286))

(assert (=> b!2268285 m!2696703))

(declare-fun m!2697239 () Bool)

(assert (=> b!2268285 m!2697239))

(assert (=> b!2268285 m!2696705))

(declare-fun m!2697241 () Bool)

(assert (=> b!2268285 m!2697241))

(assert (=> b!2268285 m!2697239))

(assert (=> b!2268285 m!2697241))

(declare-fun m!2697243 () Bool)

(assert (=> b!2268285 m!2697243))

(assert (=> b!2268284 m!2696703))

(declare-fun m!2697245 () Bool)

(assert (=> b!2268284 m!2697245))

(assert (=> b!2268284 m!2696705))

(declare-fun m!2697247 () Bool)

(assert (=> b!2268284 m!2697247))

(assert (=> b!2268286 m!2696705))

(declare-fun m!2697249 () Bool)

(assert (=> b!2268286 m!2697249))

(assert (=> b!2268286 m!2696703))

(declare-fun m!2697251 () Bool)

(assert (=> b!2268286 m!2697251))

(assert (=> b!2267660 d!671472))

(declare-fun d!671474 () Bool)

(assert (=> d!671474 (= (tail!3271 otherP!12) (t!202202 otherP!12))))

(assert (=> b!2267660 d!671474))

(declare-fun d!671480 () Bool)

(assert (=> d!671480 (= (tail!3271 input!1722) (t!202202 input!1722))))

(assert (=> b!2267660 d!671480))

(declare-fun d!671484 () Bool)

(declare-fun c!360190 () Bool)

(assert (=> d!671484 (= c!360190 ((_ is Nil!26967) rules!1750))))

(declare-fun e!1452792 () (InoxSet Rule!8394))

(assert (=> d!671484 (= (content!3594 rules!1750) e!1452792)))

(declare-fun b!2268295 () Bool)

(assert (=> b!2268295 (= e!1452792 ((as const (Array Rule!8394 Bool)) false))))

(declare-fun b!2268296 () Bool)

(assert (=> b!2268296 (= e!1452792 ((_ map or) (store ((as const (Array Rule!8394 Bool)) false) (h!32368 rules!1750) true) (content!3594 (t!202203 rules!1750))))))

(assert (= (and d!671484 c!360190) b!2268295))

(assert (= (and d!671484 (not c!360190)) b!2268296))

(declare-fun m!2697261 () Bool)

(assert (=> b!2268296 m!2697261))

(declare-fun m!2697263 () Bool)

(assert (=> b!2268296 m!2697263))

(assert (=> d!671326 d!671484))

(declare-fun d!671486 () Bool)

(declare-fun c!360196 () Bool)

(assert (=> d!671486 (= c!360196 ((_ is Node!8742) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))))))

(declare-fun e!1452802 () Bool)

(assert (=> d!671486 (= (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))) e!1452802)))

(declare-fun b!2268311 () Bool)

(declare-fun inv!36515 (Conc!8742) Bool)

(assert (=> b!2268311 (= e!1452802 (inv!36515 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))))))

(declare-fun b!2268312 () Bool)

(declare-fun e!1452803 () Bool)

(assert (=> b!2268312 (= e!1452802 e!1452803)))

(declare-fun res!969912 () Bool)

(assert (=> b!2268312 (= res!969912 (not ((_ is Leaf!12876) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))))))))

(assert (=> b!2268312 (=> res!969912 e!1452803)))

(declare-fun b!2268313 () Bool)

(declare-fun inv!36516 (Conc!8742) Bool)

(assert (=> b!2268313 (= e!1452803 (inv!36516 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))))))

(assert (= (and d!671486 c!360196) b!2268311))

(assert (= (and d!671486 (not c!360196)) b!2268312))

(assert (= (and b!2268312 (not res!969912)) b!2268313))

(declare-fun m!2697277 () Bool)

(assert (=> b!2268311 m!2697277))

(declare-fun m!2697279 () Bool)

(assert (=> b!2268313 m!2697279))

(assert (=> b!2267959 d!671486))

(declare-fun d!671500 () Bool)

(assert (=> d!671500 (= (list!10434 (_1!15819 lt!842665)) (list!10438 (c!360050 (_1!15819 lt!842665))))))

(declare-fun bs!455790 () Bool)

(assert (= bs!455790 d!671500))

(declare-fun m!2697283 () Bool)

(assert (=> bs!455790 m!2697283))

(assert (=> b!2267946 d!671500))

(declare-fun b!2268363 () Bool)

(declare-fun e!1452834 () tuple2!26620)

(assert (=> b!2268363 (= e!1452834 (tuple2!26621 Nil!26968 (list!10433 (seqFromList!3001 input!1722))))))

(declare-fun b!2268364 () Bool)

(declare-fun e!1452833 () Bool)

(declare-fun lt!842735 () tuple2!26620)

(assert (=> b!2268364 (= e!1452833 (= (_2!15820 lt!842735) (list!10433 (seqFromList!3001 input!1722))))))

(declare-fun b!2268365 () Bool)

(declare-fun e!1452835 () Bool)

(assert (=> b!2268365 (= e!1452835 (not (isEmpty!15262 (_1!15820 lt!842735))))))

(declare-fun b!2268366 () Bool)

(assert (=> b!2268366 (= e!1452833 e!1452835)))

(declare-fun res!969932 () Bool)

(assert (=> b!2268366 (= res!969932 (< (size!21154 (_2!15820 lt!842735)) (size!21154 (list!10433 (seqFromList!3001 input!1722)))))))

(assert (=> b!2268366 (=> (not res!969932) (not e!1452835))))

(declare-fun d!671508 () Bool)

(assert (=> d!671508 e!1452833))

(declare-fun c!360213 () Bool)

(declare-fun size!21160 (List!27062) Int)

(assert (=> d!671508 (= c!360213 (> (size!21160 (_1!15820 lt!842735)) 0))))

(assert (=> d!671508 (= lt!842735 e!1452834)))

(declare-fun c!360214 () Bool)

(declare-fun lt!842736 () Option!5275)

(assert (=> d!671508 (= c!360214 ((_ is Some!5274) lt!842736))))

(assert (=> d!671508 (= lt!842736 (maxPrefix!2168 thiss!16613 rules!1750 (list!10433 (seqFromList!3001 input!1722))))))

(assert (=> d!671508 (= (lexList!1074 thiss!16613 rules!1750 (list!10433 (seqFromList!3001 input!1722))) lt!842735)))

(declare-fun b!2268367 () Bool)

(declare-fun lt!842734 () tuple2!26620)

(assert (=> b!2268367 (= e!1452834 (tuple2!26621 (Cons!26968 (_1!15821 (v!30316 lt!842736)) (_1!15820 lt!842734)) (_2!15820 lt!842734)))))

(assert (=> b!2268367 (= lt!842734 (lexList!1074 thiss!16613 rules!1750 (_2!15821 (v!30316 lt!842736))))))

(assert (= (and d!671508 c!360214) b!2268367))

(assert (= (and d!671508 (not c!360214)) b!2268363))

(assert (= (and d!671508 c!360213) b!2268366))

(assert (= (and d!671508 (not c!360213)) b!2268364))

(assert (= (and b!2268366 res!969932) b!2268365))

(declare-fun m!2697353 () Bool)

(assert (=> b!2268365 m!2697353))

(declare-fun m!2697355 () Bool)

(assert (=> b!2268366 m!2697355))

(assert (=> b!2268366 m!2696917))

(declare-fun m!2697357 () Bool)

(assert (=> b!2268366 m!2697357))

(declare-fun m!2697359 () Bool)

(assert (=> d!671508 m!2697359))

(assert (=> d!671508 m!2696917))

(declare-fun m!2697361 () Bool)

(assert (=> d!671508 m!2697361))

(declare-fun m!2697363 () Bool)

(assert (=> b!2268367 m!2697363))

(assert (=> b!2267946 d!671508))

(declare-fun d!671534 () Bool)

(assert (=> d!671534 (= (list!10433 (seqFromList!3001 input!1722)) (list!10437 (c!360048 (seqFromList!3001 input!1722))))))

(declare-fun bs!455799 () Bool)

(assert (= bs!455799 d!671534))

(declare-fun m!2697365 () Bool)

(assert (=> bs!455799 m!2697365))

(assert (=> b!2267946 d!671534))

(declare-fun d!671536 () Bool)

(assert (=> d!671536 (= (list!10433 lt!842585) (list!10437 (c!360048 lt!842585)))))

(declare-fun bs!455800 () Bool)

(assert (= bs!455800 d!671536))

(declare-fun m!2697367 () Bool)

(assert (=> bs!455800 m!2697367))

(assert (=> d!671210 d!671536))

(declare-fun d!671538 () Bool)

(declare-fun c!360215 () Bool)

(assert (=> d!671538 (= c!360215 ((_ is Node!8742) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))))))

(declare-fun e!1452836 () Bool)

(assert (=> d!671538 (= (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))) e!1452836)))

(declare-fun b!2268368 () Bool)

(assert (=> b!2268368 (= e!1452836 (inv!36515 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))))))

(declare-fun b!2268369 () Bool)

(declare-fun e!1452837 () Bool)

(assert (=> b!2268369 (= e!1452836 e!1452837)))

(declare-fun res!969933 () Bool)

(assert (=> b!2268369 (= res!969933 (not ((_ is Leaf!12876) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))))))))

(assert (=> b!2268369 (=> res!969933 e!1452837)))

(declare-fun b!2268370 () Bool)

(assert (=> b!2268370 (= e!1452837 (inv!36516 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))))))

(assert (= (and d!671538 c!360215) b!2268368))

(assert (= (and d!671538 (not c!360215)) b!2268369))

(assert (= (and b!2268369 (not res!969933)) b!2268370))

(declare-fun m!2697369 () Bool)

(assert (=> b!2268368 m!2697369))

(declare-fun m!2697371 () Bool)

(assert (=> b!2268370 m!2697371))

(assert (=> b!2267616 d!671538))

(assert (=> d!671312 d!671484))

(assert (=> b!2267604 d!671448))

(declare-fun d!671540 () Bool)

(assert (=> d!671540 (= (isEmpty!15266 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) ((_ is Nil!26966) (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(assert (=> b!2267600 d!671540))

(declare-fun d!671542 () Bool)

(assert (=> d!671542 (= (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456)))) (t!202202 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))

(assert (=> b!2267600 d!671542))

(declare-fun d!671544 () Bool)

(declare-fun res!969934 () Bool)

(declare-fun e!1452838 () Bool)

(assert (=> d!671544 (=> (not res!969934) (not e!1452838))))

(assert (=> d!671544 (= res!969934 (not (isEmpty!15266 (originalCharacters!5067 (h!32369 (t!202204 tokens!456))))))))

(assert (=> d!671544 (= (inv!36510 (h!32369 (t!202204 tokens!456))) e!1452838)))

(declare-fun b!2268371 () Bool)

(declare-fun res!969935 () Bool)

(assert (=> b!2268371 (=> (not res!969935) (not e!1452838))))

(assert (=> b!2268371 (= res!969935 (= (originalCharacters!5067 (h!32369 (t!202204 tokens!456))) (list!10433 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (value!136284 (h!32369 (t!202204 tokens!456)))))))))

(declare-fun b!2268372 () Bool)

(assert (=> b!2268372 (= e!1452838 (= (size!21152 (h!32369 (t!202204 tokens!456))) (size!21154 (originalCharacters!5067 (h!32369 (t!202204 tokens!456))))))))

(assert (= (and d!671544 res!969934) b!2268371))

(assert (= (and b!2268371 res!969935) b!2268372))

(declare-fun b_lambda!72301 () Bool)

(assert (=> (not b_lambda!72301) (not b!2268371)))

(declare-fun t!202308 () Bool)

(declare-fun tb!134543 () Bool)

(assert (=> (and b!2268018 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202308) tb!134543))

(declare-fun b!2268373 () Bool)

(declare-fun e!1452839 () Bool)

(declare-fun tp!717679 () Bool)

(assert (=> b!2268373 (= e!1452839 (and (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (value!136284 (h!32369 (t!202204 tokens!456)))))) tp!717679))))

(declare-fun result!164044 () Bool)

(assert (=> tb!134543 (= result!164044 (and (inv!36514 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (value!136284 (h!32369 (t!202204 tokens!456))))) e!1452839))))

(assert (= tb!134543 b!2268373))

(declare-fun m!2697373 () Bool)

(assert (=> b!2268373 m!2697373))

(declare-fun m!2697375 () Bool)

(assert (=> tb!134543 m!2697375))

(assert (=> b!2268371 t!202308))

(declare-fun b_and!178633 () Bool)

(assert (= b_and!178627 (and (=> t!202308 result!164044) b_and!178633)))

(declare-fun tb!134545 () Bool)

(declare-fun t!202310 () Bool)

(assert (=> (and b!2267546 (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202310) tb!134545))

(declare-fun result!164046 () Bool)

(assert (= result!164046 result!164044))

(assert (=> b!2268371 t!202310))

(declare-fun b_and!178635 () Bool)

(assert (= b_and!178631 (and (=> t!202310 result!164046) b_and!178635)))

(declare-fun tb!134547 () Bool)

(declare-fun t!202312 () Bool)

(assert (=> (and b!2267549 (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202312) tb!134547))

(declare-fun result!164048 () Bool)

(assert (= result!164048 result!164044))

(assert (=> b!2268371 t!202312))

(declare-fun b_and!178637 () Bool)

(assert (= b_and!178623 (and (=> t!202312 result!164048) b_and!178637)))

(declare-fun t!202314 () Bool)

(declare-fun tb!134549 () Bool)

(assert (=> (and b!2267984 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202314) tb!134549))

(declare-fun result!164050 () Bool)

(assert (= result!164050 result!164044))

(assert (=> b!2268371 t!202314))

(declare-fun b_and!178639 () Bool)

(assert (= b_and!178625 (and (=> t!202314 result!164050) b_and!178639)))

(declare-fun tb!134551 () Bool)

(declare-fun t!202316 () Bool)

(assert (=> (and b!2267539 (= (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202316) tb!134551))

(declare-fun result!164052 () Bool)

(assert (= result!164052 result!164044))

(assert (=> b!2268371 t!202316))

(declare-fun b_and!178641 () Bool)

(assert (= b_and!178629 (and (=> t!202316 result!164052) b_and!178641)))

(declare-fun t!202318 () Bool)

(declare-fun tb!134553 () Bool)

(assert (=> (and b!2267552 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202318) tb!134553))

(declare-fun result!164054 () Bool)

(assert (= result!164054 result!164044))

(assert (=> b!2268371 t!202318))

(declare-fun b_and!178643 () Bool)

(assert (= b_and!178621 (and (=> t!202318 result!164054) b_and!178643)))

(declare-fun m!2697377 () Bool)

(assert (=> d!671544 m!2697377))

(declare-fun m!2697379 () Bool)

(assert (=> b!2268371 m!2697379))

(assert (=> b!2268371 m!2697379))

(declare-fun m!2697381 () Bool)

(assert (=> b!2268371 m!2697381))

(declare-fun m!2697383 () Bool)

(assert (=> b!2268372 m!2697383))

(assert (=> b!2268015 d!671544))

(assert (=> d!671268 d!671342))

(declare-fun b!2268384 () Bool)

(declare-fun e!1452845 () List!27060)

(declare-fun list!10442 (IArray!17489) List!27060)

(assert (=> b!2268384 (= e!1452845 (list!10442 (xs!11684 (c!360048 (_2!15819 lt!842576)))))))

(declare-fun b!2268383 () Bool)

(declare-fun e!1452844 () List!27060)

(assert (=> b!2268383 (= e!1452844 e!1452845)))

(declare-fun c!360221 () Bool)

(assert (=> b!2268383 (= c!360221 ((_ is Leaf!12876) (c!360048 (_2!15819 lt!842576))))))

(declare-fun d!671546 () Bool)

(declare-fun c!360220 () Bool)

(assert (=> d!671546 (= c!360220 ((_ is Empty!8742) (c!360048 (_2!15819 lt!842576))))))

(assert (=> d!671546 (= (list!10437 (c!360048 (_2!15819 lt!842576))) e!1452844)))

(declare-fun b!2268385 () Bool)

(assert (=> b!2268385 (= e!1452845 (++!6569 (list!10437 (left!20459 (c!360048 (_2!15819 lt!842576)))) (list!10437 (right!20789 (c!360048 (_2!15819 lt!842576))))))))

(declare-fun b!2268382 () Bool)

(assert (=> b!2268382 (= e!1452844 Nil!26966)))

(assert (= (and d!671546 c!360220) b!2268382))

(assert (= (and d!671546 (not c!360220)) b!2268383))

(assert (= (and b!2268383 c!360221) b!2268384))

(assert (= (and b!2268383 (not c!360221)) b!2268385))

(declare-fun m!2697385 () Bool)

(assert (=> b!2268384 m!2697385))

(declare-fun m!2697387 () Bool)

(assert (=> b!2268385 m!2697387))

(declare-fun m!2697389 () Bool)

(assert (=> b!2268385 m!2697389))

(assert (=> b!2268385 m!2697387))

(assert (=> b!2268385 m!2697389))

(declare-fun m!2697391 () Bool)

(assert (=> b!2268385 m!2697391))

(assert (=> d!671316 d!671546))

(declare-fun b!2268386 () Bool)

(declare-fun res!969937 () Bool)

(declare-fun e!1452850 () Bool)

(assert (=> b!2268386 (=> res!969937 e!1452850)))

(assert (=> b!2268386 (= res!969937 (not ((_ is ElementMatch!6645) (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))))))

(declare-fun e!1452848 () Bool)

(assert (=> b!2268386 (= e!1452848 e!1452850)))

(declare-fun b!2268387 () Bool)

(declare-fun res!969936 () Bool)

(assert (=> b!2268387 (=> res!969936 e!1452850)))

(declare-fun e!1452846 () Bool)

(assert (=> b!2268387 (= res!969936 e!1452846)))

(declare-fun res!969940 () Bool)

(assert (=> b!2268387 (=> (not res!969940) (not e!1452846))))

(declare-fun lt!842737 () Bool)

(assert (=> b!2268387 (= res!969940 lt!842737)))

(declare-fun b!2268388 () Bool)

(declare-fun res!969938 () Bool)

(declare-fun e!1452852 () Bool)

(assert (=> b!2268388 (=> res!969938 e!1452852)))

(assert (=> b!2268388 (= res!969938 (not (isEmpty!15266 (tail!3271 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))))))))

(declare-fun b!2268389 () Bool)

(assert (=> b!2268389 (= e!1452846 (= (head!4888 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))) (c!360049 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))))))

(declare-fun b!2268390 () Bool)

(declare-fun res!969941 () Bool)

(assert (=> b!2268390 (=> (not res!969941) (not e!1452846))))

(declare-fun call!136065 () Bool)

(assert (=> b!2268390 (= res!969941 (not call!136065))))

(declare-fun b!2268391 () Bool)

(assert (=> b!2268391 (= e!1452848 (not lt!842737))))

(declare-fun b!2268392 () Bool)

(declare-fun e!1452851 () Bool)

(assert (=> b!2268392 (= e!1452851 (nullable!1828 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))))))

(declare-fun b!2268393 () Bool)

(declare-fun e!1452849 () Bool)

(assert (=> b!2268393 (= e!1452849 e!1452852)))

(declare-fun res!969939 () Bool)

(assert (=> b!2268393 (=> res!969939 e!1452852)))

(assert (=> b!2268393 (= res!969939 call!136065)))

(declare-fun d!671548 () Bool)

(declare-fun e!1452847 () Bool)

(assert (=> d!671548 e!1452847))

(declare-fun c!360224 () Bool)

(assert (=> d!671548 (= c!360224 ((_ is EmptyExpr!6645) (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))))))

(assert (=> d!671548 (= lt!842737 e!1452851)))

(declare-fun c!360223 () Bool)

(assert (=> d!671548 (= c!360223 (isEmpty!15266 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))))))

(assert (=> d!671548 (validRegex!2490 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))))

(assert (=> d!671548 (= (matchR!2906 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))) (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))) lt!842737)))

(declare-fun b!2268394 () Bool)

(assert (=> b!2268394 (= e!1452850 e!1452849)))

(declare-fun res!969943 () Bool)

(assert (=> b!2268394 (=> (not res!969943) (not e!1452849))))

(assert (=> b!2268394 (= res!969943 (not lt!842737))))

(declare-fun b!2268395 () Bool)

(assert (=> b!2268395 (= e!1452847 e!1452848)))

(declare-fun c!360222 () Bool)

(assert (=> b!2268395 (= c!360222 ((_ is EmptyLang!6645) (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))))))

(declare-fun bm!136060 () Bool)

(assert (=> bm!136060 (= call!136065 (isEmpty!15266 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))))))

(declare-fun b!2268396 () Bool)

(declare-fun res!969942 () Bool)

(assert (=> b!2268396 (=> (not res!969942) (not e!1452846))))

(assert (=> b!2268396 (= res!969942 (isEmpty!15266 (tail!3271 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))))))))

(declare-fun b!2268397 () Bool)

(assert (=> b!2268397 (= e!1452847 (= lt!842737 call!136065))))

(declare-fun b!2268398 () Bool)

(assert (=> b!2268398 (= e!1452851 (matchR!2906 (derivativeStep!1490 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))) (head!4888 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))))) (tail!3271 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))))))))

(declare-fun b!2268399 () Bool)

(assert (=> b!2268399 (= e!1452852 (not (= (head!4888 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))) (c!360049 (regex!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))))))))

(assert (= (and d!671548 c!360223) b!2268392))

(assert (= (and d!671548 (not c!360223)) b!2268398))

(assert (= (and d!671548 c!360224) b!2268397))

(assert (= (and d!671548 (not c!360224)) b!2268395))

(assert (= (and b!2268395 c!360222) b!2268391))

(assert (= (and b!2268395 (not c!360222)) b!2268386))

(assert (= (and b!2268386 (not res!969937)) b!2268387))

(assert (= (and b!2268387 res!969940) b!2268390))

(assert (= (and b!2268390 res!969941) b!2268396))

(assert (= (and b!2268396 res!969942) b!2268389))

(assert (= (and b!2268387 (not res!969936)) b!2268394))

(assert (= (and b!2268394 res!969943) b!2268393))

(assert (= (and b!2268393 (not res!969939)) b!2268388))

(assert (= (and b!2268388 (not res!969938)) b!2268399))

(assert (= (or b!2268397 b!2268390 b!2268393) bm!136060))

(assert (=> b!2268396 m!2696877))

(declare-fun m!2697393 () Bool)

(assert (=> b!2268396 m!2697393))

(assert (=> b!2268396 m!2697393))

(declare-fun m!2697395 () Bool)

(assert (=> b!2268396 m!2697395))

(assert (=> d!671548 m!2696877))

(declare-fun m!2697397 () Bool)

(assert (=> d!671548 m!2697397))

(declare-fun m!2697399 () Bool)

(assert (=> d!671548 m!2697399))

(declare-fun m!2697401 () Bool)

(assert (=> b!2268392 m!2697401))

(assert (=> b!2268398 m!2696877))

(declare-fun m!2697403 () Bool)

(assert (=> b!2268398 m!2697403))

(assert (=> b!2268398 m!2697403))

(declare-fun m!2697405 () Bool)

(assert (=> b!2268398 m!2697405))

(assert (=> b!2268398 m!2696877))

(assert (=> b!2268398 m!2697393))

(assert (=> b!2268398 m!2697405))

(assert (=> b!2268398 m!2697393))

(declare-fun m!2697407 () Bool)

(assert (=> b!2268398 m!2697407))

(assert (=> b!2268399 m!2696877))

(assert (=> b!2268399 m!2697403))

(assert (=> b!2268388 m!2696877))

(assert (=> b!2268388 m!2697393))

(assert (=> b!2268388 m!2697393))

(assert (=> b!2268388 m!2697395))

(assert (=> bm!136060 m!2696877))

(assert (=> bm!136060 m!2697397))

(assert (=> b!2268389 m!2696877))

(assert (=> b!2268389 m!2697403))

(assert (=> b!2267921 d!671548))

(assert (=> b!2267921 d!671434))

(assert (=> b!2267921 d!671454))

(assert (=> b!2267921 d!671458))

(declare-fun b!2268402 () Bool)

(declare-fun e!1452854 () List!27060)

(assert (=> b!2268402 (= e!1452854 (list!10442 (xs!11684 (c!360048 (charsOf!2685 (head!4886 tokens!456))))))))

(declare-fun b!2268401 () Bool)

(declare-fun e!1452853 () List!27060)

(assert (=> b!2268401 (= e!1452853 e!1452854)))

(declare-fun c!360226 () Bool)

(assert (=> b!2268401 (= c!360226 ((_ is Leaf!12876) (c!360048 (charsOf!2685 (head!4886 tokens!456)))))))

(declare-fun d!671550 () Bool)

(declare-fun c!360225 () Bool)

(assert (=> d!671550 (= c!360225 ((_ is Empty!8742) (c!360048 (charsOf!2685 (head!4886 tokens!456)))))))

(assert (=> d!671550 (= (list!10437 (c!360048 (charsOf!2685 (head!4886 tokens!456)))) e!1452853)))

(declare-fun b!2268403 () Bool)

(assert (=> b!2268403 (= e!1452854 (++!6569 (list!10437 (left!20459 (c!360048 (charsOf!2685 (head!4886 tokens!456))))) (list!10437 (right!20789 (c!360048 (charsOf!2685 (head!4886 tokens!456)))))))))

(declare-fun b!2268400 () Bool)

(assert (=> b!2268400 (= e!1452853 Nil!26966)))

(assert (= (and d!671550 c!360225) b!2268400))

(assert (= (and d!671550 (not c!360225)) b!2268401))

(assert (= (and b!2268401 c!360226) b!2268402))

(assert (= (and b!2268401 (not c!360226)) b!2268403))

(declare-fun m!2697409 () Bool)

(assert (=> b!2268402 m!2697409))

(declare-fun m!2697411 () Bool)

(assert (=> b!2268403 m!2697411))

(declare-fun m!2697413 () Bool)

(assert (=> b!2268403 m!2697413))

(assert (=> b!2268403 m!2697411))

(assert (=> b!2268403 m!2697413))

(declare-fun m!2697415 () Bool)

(assert (=> b!2268403 m!2697415))

(assert (=> d!671208 d!671550))

(assert (=> b!2267608 d!671540))

(assert (=> b!2267608 d!671542))

(declare-fun d!671552 () Bool)

(declare-fun lt!842738 () Bool)

(assert (=> d!671552 (= lt!842738 (select (content!3594 (t!202203 rules!1750)) r!2363))))

(declare-fun e!1452855 () Bool)

(assert (=> d!671552 (= lt!842738 e!1452855)))

(declare-fun res!969944 () Bool)

(assert (=> d!671552 (=> (not res!969944) (not e!1452855))))

(assert (=> d!671552 (= res!969944 ((_ is Cons!26967) (t!202203 rules!1750)))))

(assert (=> d!671552 (= (contains!4655 (t!202203 rules!1750) r!2363) lt!842738)))

(declare-fun b!2268404 () Bool)

(declare-fun e!1452856 () Bool)

(assert (=> b!2268404 (= e!1452855 e!1452856)))

(declare-fun res!969945 () Bool)

(assert (=> b!2268404 (=> res!969945 e!1452856)))

(assert (=> b!2268404 (= res!969945 (= (h!32368 (t!202203 rules!1750)) r!2363))))

(declare-fun b!2268405 () Bool)

(assert (=> b!2268405 (= e!1452856 (contains!4655 (t!202203 (t!202203 rules!1750)) r!2363))))

(assert (= (and d!671552 res!969944) b!2268404))

(assert (= (and b!2268404 (not res!969945)) b!2268405))

(assert (=> d!671552 m!2697263))

(declare-fun m!2697417 () Bool)

(assert (=> d!671552 m!2697417))

(declare-fun m!2697419 () Bool)

(assert (=> b!2268405 m!2697419))

(assert (=> b!2267934 d!671552))

(declare-fun d!671554 () Bool)

(assert (=> d!671554 (= (nullable!1828 (regex!4297 otherR!12)) (nullableFct!435 (regex!4297 otherR!12)))))

(declare-fun bs!455801 () Bool)

(assert (= bs!455801 d!671554))

(declare-fun m!2697421 () Bool)

(assert (=> bs!455801 m!2697421))

(assert (=> b!2267713 d!671554))

(declare-fun b!2268455 () Bool)

(declare-fun e!1452882 () Bool)

(declare-fun e!1452880 () Bool)

(assert (=> b!2268455 (= e!1452882 e!1452880)))

(declare-fun res!969981 () Bool)

(assert (=> b!2268455 (=> (not res!969981) (not e!1452880))))

(declare-fun lt!842772 () Option!5275)

(assert (=> b!2268455 (= res!969981 (matchR!2906 (regex!4297 (h!32368 rules!1750)) (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842772))))))))

(declare-fun b!2268456 () Bool)

(assert (=> b!2268456 (= e!1452880 (= (size!21152 (_1!15821 (get!8139 lt!842772))) (size!21154 (originalCharacters!5067 (_1!15821 (get!8139 lt!842772))))))))

(declare-fun d!671556 () Bool)

(assert (=> d!671556 e!1452882))

(declare-fun res!969986 () Bool)

(assert (=> d!671556 (=> res!969986 e!1452882)))

(assert (=> d!671556 (= res!969986 (isEmpty!15267 lt!842772))))

(declare-fun e!1452881 () Option!5275)

(assert (=> d!671556 (= lt!842772 e!1452881)))

(declare-fun c!360234 () Bool)

(declare-datatypes ((tuple2!26624 0))(
  ( (tuple2!26625 (_1!15822 List!27060) (_2!15822 List!27060)) )
))
(declare-fun lt!842770 () tuple2!26624)

(assert (=> d!671556 (= c!360234 (isEmpty!15266 (_1!15822 lt!842770)))))

(declare-fun findLongestMatch!631 (Regex!6645 List!27060) tuple2!26624)

(assert (=> d!671556 (= lt!842770 (findLongestMatch!631 (regex!4297 (h!32368 rules!1750)) input!1722))))

(assert (=> d!671556 (ruleValid!1389 thiss!16613 (h!32368 rules!1750))))

(assert (=> d!671556 (= (maxPrefixOneRule!1356 thiss!16613 (h!32368 rules!1750) input!1722) lt!842772)))

(declare-fun b!2268457 () Bool)

(declare-fun e!1452879 () Bool)

(declare-fun findLongestMatchInner!702 (Regex!6645 List!27060 Int List!27060 List!27060 Int) tuple2!26624)

(assert (=> b!2268457 (= e!1452879 (matchR!2906 (regex!4297 (h!32368 rules!1750)) (_1!15822 (findLongestMatchInner!702 (regex!4297 (h!32368 rules!1750)) Nil!26966 (size!21154 Nil!26966) input!1722 input!1722 (size!21154 input!1722)))))))

(declare-fun b!2268458 () Bool)

(declare-fun res!969983 () Bool)

(assert (=> b!2268458 (=> (not res!969983) (not e!1452880))))

(assert (=> b!2268458 (= res!969983 (= (rule!6613 (_1!15821 (get!8139 lt!842772))) (h!32368 rules!1750)))))

(declare-fun b!2268459 () Bool)

(assert (=> b!2268459 (= e!1452881 None!5274)))

(declare-fun b!2268460 () Bool)

(declare-fun res!969982 () Bool)

(assert (=> b!2268460 (=> (not res!969982) (not e!1452880))))

(assert (=> b!2268460 (= res!969982 (< (size!21154 (_2!15821 (get!8139 lt!842772))) (size!21154 input!1722)))))

(declare-fun b!2268461 () Bool)

(declare-fun res!969987 () Bool)

(assert (=> b!2268461 (=> (not res!969987) (not e!1452880))))

(assert (=> b!2268461 (= res!969987 (= (value!136284 (_1!15821 (get!8139 lt!842772))) (apply!6595 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842772)))) (seqFromList!3001 (originalCharacters!5067 (_1!15821 (get!8139 lt!842772)))))))))

(declare-fun b!2268462 () Bool)

(assert (=> b!2268462 (= e!1452881 (Some!5274 (tuple2!26623 (Token!8073 (apply!6595 (transformation!4297 (h!32368 rules!1750)) (seqFromList!3001 (_1!15822 lt!842770))) (h!32368 rules!1750) (size!21153 (seqFromList!3001 (_1!15822 lt!842770))) (_1!15822 lt!842770)) (_2!15822 lt!842770))))))

(declare-fun lt!842768 () Unit!39922)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!675 (Regex!6645 List!27060) Unit!39922)

(assert (=> b!2268462 (= lt!842768 (longestMatchIsAcceptedByMatchOrIsEmpty!675 (regex!4297 (h!32368 rules!1750)) input!1722))))

(declare-fun res!969984 () Bool)

(assert (=> b!2268462 (= res!969984 (isEmpty!15266 (_1!15822 (findLongestMatchInner!702 (regex!4297 (h!32368 rules!1750)) Nil!26966 (size!21154 Nil!26966) input!1722 input!1722 (size!21154 input!1722)))))))

(assert (=> b!2268462 (=> res!969984 e!1452879)))

(assert (=> b!2268462 e!1452879))

(declare-fun lt!842769 () Unit!39922)

(assert (=> b!2268462 (= lt!842769 lt!842768)))

(declare-fun lt!842771 () Unit!39922)

(declare-fun lemmaSemiInverse!1035 (TokenValueInjection!8458 BalanceConc!17212) Unit!39922)

(assert (=> b!2268462 (= lt!842771 (lemmaSemiInverse!1035 (transformation!4297 (h!32368 rules!1750)) (seqFromList!3001 (_1!15822 lt!842770))))))

(declare-fun b!2268463 () Bool)

(declare-fun res!969985 () Bool)

(assert (=> b!2268463 (=> (not res!969985) (not e!1452880))))

(assert (=> b!2268463 (= res!969985 (= (++!6569 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842772)))) (_2!15821 (get!8139 lt!842772))) input!1722))))

(assert (= (and d!671556 c!360234) b!2268459))

(assert (= (and d!671556 (not c!360234)) b!2268462))

(assert (= (and b!2268462 (not res!969984)) b!2268457))

(assert (= (and d!671556 (not res!969986)) b!2268455))

(assert (= (and b!2268455 res!969981) b!2268463))

(assert (= (and b!2268463 res!969985) b!2268460))

(assert (= (and b!2268460 res!969982) b!2268458))

(assert (= (and b!2268458 res!969983) b!2268461))

(assert (= (and b!2268461 res!969987) b!2268456))

(declare-fun m!2697473 () Bool)

(assert (=> b!2268456 m!2697473))

(declare-fun m!2697475 () Bool)

(assert (=> b!2268456 m!2697475))

(assert (=> b!2268460 m!2697473))

(declare-fun m!2697477 () Bool)

(assert (=> b!2268460 m!2697477))

(assert (=> b!2268460 m!2696713))

(declare-fun m!2697479 () Bool)

(assert (=> b!2268457 m!2697479))

(assert (=> b!2268457 m!2696713))

(assert (=> b!2268457 m!2697479))

(assert (=> b!2268457 m!2696713))

(declare-fun m!2697481 () Bool)

(assert (=> b!2268457 m!2697481))

(declare-fun m!2697483 () Bool)

(assert (=> b!2268457 m!2697483))

(declare-fun m!2697485 () Bool)

(assert (=> b!2268462 m!2697485))

(declare-fun m!2697487 () Bool)

(assert (=> b!2268462 m!2697487))

(declare-fun m!2697489 () Bool)

(assert (=> b!2268462 m!2697489))

(assert (=> b!2268462 m!2697485))

(declare-fun m!2697491 () Bool)

(assert (=> b!2268462 m!2697491))

(assert (=> b!2268462 m!2697479))

(assert (=> b!2268462 m!2696713))

(assert (=> b!2268462 m!2697481))

(assert (=> b!2268462 m!2696713))

(assert (=> b!2268462 m!2697479))

(declare-fun m!2697493 () Bool)

(assert (=> b!2268462 m!2697493))

(assert (=> b!2268462 m!2697485))

(assert (=> b!2268462 m!2697485))

(declare-fun m!2697495 () Bool)

(assert (=> b!2268462 m!2697495))

(assert (=> b!2268455 m!2697473))

(declare-fun m!2697497 () Bool)

(assert (=> b!2268455 m!2697497))

(assert (=> b!2268455 m!2697497))

(declare-fun m!2697499 () Bool)

(assert (=> b!2268455 m!2697499))

(assert (=> b!2268455 m!2697499))

(declare-fun m!2697501 () Bool)

(assert (=> b!2268455 m!2697501))

(assert (=> b!2268463 m!2697473))

(assert (=> b!2268463 m!2697497))

(assert (=> b!2268463 m!2697497))

(assert (=> b!2268463 m!2697499))

(assert (=> b!2268463 m!2697499))

(declare-fun m!2697503 () Bool)

(assert (=> b!2268463 m!2697503))

(assert (=> b!2268458 m!2697473))

(declare-fun m!2697505 () Bool)

(assert (=> d!671556 m!2697505))

(declare-fun m!2697507 () Bool)

(assert (=> d!671556 m!2697507))

(declare-fun m!2697509 () Bool)

(assert (=> d!671556 m!2697509))

(declare-fun m!2697511 () Bool)

(assert (=> d!671556 m!2697511))

(assert (=> b!2268461 m!2697473))

(declare-fun m!2697513 () Bool)

(assert (=> b!2268461 m!2697513))

(assert (=> b!2268461 m!2697513))

(declare-fun m!2697515 () Bool)

(assert (=> b!2268461 m!2697515))

(assert (=> bm!136019 d!671556))

(declare-fun d!671568 () Bool)

(assert (=> d!671568 (= (list!10433 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))) (list!10437 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))))))

(declare-fun bs!455808 () Bool)

(assert (= bs!455808 d!671568))

(declare-fun m!2697517 () Bool)

(assert (=> bs!455808 m!2697517))

(assert (=> b!2267957 d!671568))

(declare-fun b!2268464 () Bool)

(declare-fun e!1452884 () Bool)

(assert (=> b!2268464 (= e!1452884 (inv!17 (value!136284 (h!32369 (t!202204 tokens!456)))))))

(declare-fun d!671570 () Bool)

(declare-fun c!360235 () Bool)

(assert (=> d!671570 (= c!360235 ((_ is IntegerValue!13377) (value!136284 (h!32369 (t!202204 tokens!456)))))))

(declare-fun e!1452885 () Bool)

(assert (=> d!671570 (= (inv!21 (value!136284 (h!32369 (t!202204 tokens!456)))) e!1452885)))

(declare-fun b!2268465 () Bool)

(declare-fun res!969988 () Bool)

(declare-fun e!1452883 () Bool)

(assert (=> b!2268465 (=> res!969988 e!1452883)))

(assert (=> b!2268465 (= res!969988 (not ((_ is IntegerValue!13379) (value!136284 (h!32369 (t!202204 tokens!456))))))))

(assert (=> b!2268465 (= e!1452884 e!1452883)))

(declare-fun b!2268466 () Bool)

(assert (=> b!2268466 (= e!1452885 (inv!16 (value!136284 (h!32369 (t!202204 tokens!456)))))))

(declare-fun b!2268467 () Bool)

(assert (=> b!2268467 (= e!1452885 e!1452884)))

(declare-fun c!360236 () Bool)

(assert (=> b!2268467 (= c!360236 ((_ is IntegerValue!13378) (value!136284 (h!32369 (t!202204 tokens!456)))))))

(declare-fun b!2268468 () Bool)

(assert (=> b!2268468 (= e!1452883 (inv!15 (value!136284 (h!32369 (t!202204 tokens!456)))))))

(assert (= (and d!671570 c!360235) b!2268466))

(assert (= (and d!671570 (not c!360235)) b!2268467))

(assert (= (and b!2268467 c!360236) b!2268464))

(assert (= (and b!2268467 (not c!360236)) b!2268465))

(assert (= (and b!2268465 (not res!969988)) b!2268468))

(declare-fun m!2697519 () Bool)

(assert (=> b!2268464 m!2697519))

(declare-fun m!2697521 () Bool)

(assert (=> b!2268466 m!2697521))

(declare-fun m!2697523 () Bool)

(assert (=> b!2268468 m!2697523))

(assert (=> b!2268016 d!671570))

(declare-fun d!671572 () Bool)

(assert (=> d!671572 (= (isEmpty!15266 (originalCharacters!5067 (h!32369 tokens!456))) ((_ is Nil!26966) (originalCharacters!5067 (h!32369 tokens!456))))))

(assert (=> d!671328 d!671572))

(declare-fun d!671574 () Bool)

(declare-fun e!1452890 () Bool)

(assert (=> d!671574 e!1452890))

(declare-fun res!969994 () Bool)

(assert (=> d!671574 (=> (not res!969994) (not e!1452890))))

(declare-fun lt!842775 () List!27060)

(declare-fun content!3596 (List!27060) (InoxSet C!13436))

(assert (=> d!671574 (= res!969994 (= (content!3596 lt!842775) ((_ map or) (content!3596 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))) (content!3596 (_2!15821 (get!8139 lt!842657))))))))

(declare-fun e!1452891 () List!27060)

(assert (=> d!671574 (= lt!842775 e!1452891)))

(declare-fun c!360239 () Bool)

(assert (=> d!671574 (= c!360239 ((_ is Nil!26966) (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))))))

(assert (=> d!671574 (= (++!6569 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))) (_2!15821 (get!8139 lt!842657))) lt!842775)))

(declare-fun b!2268478 () Bool)

(assert (=> b!2268478 (= e!1452891 (Cons!26966 (h!32367 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))) (++!6569 (t!202202 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))) (_2!15821 (get!8139 lt!842657)))))))

(declare-fun b!2268477 () Bool)

(assert (=> b!2268477 (= e!1452891 (_2!15821 (get!8139 lt!842657)))))

(declare-fun b!2268480 () Bool)

(assert (=> b!2268480 (= e!1452890 (or (not (= (_2!15821 (get!8139 lt!842657)) Nil!26966)) (= lt!842775 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657)))))))))

(declare-fun b!2268479 () Bool)

(declare-fun res!969993 () Bool)

(assert (=> b!2268479 (=> (not res!969993) (not e!1452890))))

(assert (=> b!2268479 (= res!969993 (= (size!21154 lt!842775) (+ (size!21154 (list!10433 (charsOf!2685 (_1!15821 (get!8139 lt!842657))))) (size!21154 (_2!15821 (get!8139 lt!842657))))))))

(assert (= (and d!671574 c!360239) b!2268477))

(assert (= (and d!671574 (not c!360239)) b!2268478))

(assert (= (and d!671574 res!969994) b!2268479))

(assert (= (and b!2268479 res!969993) b!2268480))

(declare-fun m!2697525 () Bool)

(assert (=> d!671574 m!2697525))

(assert (=> d!671574 m!2696877))

(declare-fun m!2697527 () Bool)

(assert (=> d!671574 m!2697527))

(declare-fun m!2697529 () Bool)

(assert (=> d!671574 m!2697529))

(declare-fun m!2697531 () Bool)

(assert (=> b!2268478 m!2697531))

(declare-fun m!2697533 () Bool)

(assert (=> b!2268479 m!2697533))

(assert (=> b!2268479 m!2696877))

(declare-fun m!2697535 () Bool)

(assert (=> b!2268479 m!2697535))

(assert (=> b!2268479 m!2696879))

(assert (=> b!2267923 d!671574))

(assert (=> b!2267923 d!671454))

(assert (=> b!2267923 d!671458))

(assert (=> b!2267923 d!671434))

(declare-fun d!671576 () Bool)

(declare-fun lt!842778 () Int)

(assert (=> d!671576 (= lt!842778 (size!21160 (list!10434 (_1!15819 lt!842665))))))

(declare-fun size!21161 (Conc!8743) Int)

(assert (=> d!671576 (= lt!842778 (size!21161 (c!360050 (_1!15819 lt!842665))))))

(assert (=> d!671576 (= (size!21158 (_1!15819 lt!842665)) lt!842778)))

(declare-fun bs!455809 () Bool)

(assert (= bs!455809 d!671576))

(assert (=> bs!455809 m!2696931))

(assert (=> bs!455809 m!2696931))

(declare-fun m!2697537 () Bool)

(assert (=> bs!455809 m!2697537))

(declare-fun m!2697539 () Bool)

(assert (=> bs!455809 m!2697539))

(assert (=> d!671318 d!671576))

(declare-fun b!2268632 () Bool)

(declare-fun e!1452960 () tuple2!26618)

(assert (=> b!2268632 (= e!1452960 (tuple2!26619 (BalanceConc!17215 Empty!8743) (seqFromList!3001 input!1722)))))

(declare-fun b!2268633 () Bool)

(declare-fun e!1452962 () tuple2!26618)

(assert (=> b!2268633 (= e!1452962 (tuple2!26619 (BalanceConc!17215 Empty!8743) (seqFromList!3001 input!1722)))))

(declare-fun b!2268634 () Bool)

(declare-fun lt!842977 () tuple2!26618)

(declare-datatypes ((tuple2!26626 0))(
  ( (tuple2!26627 (_1!15823 Token!8072) (_2!15823 BalanceConc!17212)) )
))
(declare-datatypes ((Option!5276 0))(
  ( (None!5275) (Some!5275 (v!30319 tuple2!26626)) )
))
(declare-fun lt!842966 () Option!5276)

(declare-fun lexRec!522 (LexerInterface!3894 List!27061 BalanceConc!17212) tuple2!26618)

(assert (=> b!2268634 (= lt!842977 (lexRec!522 thiss!16613 rules!1750 (_2!15823 (v!30319 lt!842966))))))

(declare-fun prepend!992 (BalanceConc!17214 Token!8072) BalanceConc!17214)

(assert (=> b!2268634 (= e!1452960 (tuple2!26619 (prepend!992 (_1!15819 lt!842977) (_1!15823 (v!30319 lt!842966))) (_2!15819 lt!842977)))))

(declare-fun d!671578 () Bool)

(declare-fun e!1452959 () Bool)

(assert (=> d!671578 e!1452959))

(declare-fun res!970002 () Bool)

(assert (=> d!671578 (=> (not res!970002) (not e!1452959))))

(declare-fun lt!842972 () tuple2!26618)

(assert (=> d!671578 (= res!970002 (= (list!10434 (_1!15819 lt!842972)) (list!10434 (_1!15819 (lexRec!522 thiss!16613 rules!1750 (seqFromList!3001 input!1722))))))))

(assert (=> d!671578 (= lt!842972 e!1452962)))

(declare-fun c!360257 () Bool)

(declare-fun lt!842978 () Option!5276)

(assert (=> d!671578 (= c!360257 ((_ is Some!5275) lt!842978))))

(declare-fun maxPrefixZipperSequenceV2!392 (LexerInterface!3894 List!27061 BalanceConc!17212 BalanceConc!17212) Option!5276)

(assert (=> d!671578 (= lt!842978 (maxPrefixZipperSequenceV2!392 thiss!16613 rules!1750 (seqFromList!3001 input!1722) (seqFromList!3001 input!1722)))))

(declare-fun lt!842980 () Unit!39922)

(declare-fun lt!842974 () Unit!39922)

(assert (=> d!671578 (= lt!842980 lt!842974)))

(declare-fun lt!842983 () List!27060)

(declare-fun lt!842969 () List!27060)

(declare-fun isSuffix!758 (List!27060 List!27060) Bool)

(assert (=> d!671578 (isSuffix!758 lt!842983 (++!6569 lt!842969 lt!842983))))

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!452 (List!27060 List!27060) Unit!39922)

(assert (=> d!671578 (= lt!842974 (lemmaConcatTwoListThenFSndIsSuffix!452 lt!842969 lt!842983))))

(assert (=> d!671578 (= lt!842983 (list!10433 (seqFromList!3001 input!1722)))))

(assert (=> d!671578 (= lt!842969 (list!10433 (BalanceConc!17213 Empty!8742)))))

(assert (=> d!671578 (= (lexTailRecV2!749 thiss!16613 rules!1750 (seqFromList!3001 input!1722) (BalanceConc!17213 Empty!8742) (seqFromList!3001 input!1722) (BalanceConc!17215 Empty!8743)) lt!842972)))

(declare-fun b!2268635 () Bool)

(declare-fun lt!842953 () BalanceConc!17212)

(declare-fun append!685 (BalanceConc!17214 Token!8072) BalanceConc!17214)

(assert (=> b!2268635 (= e!1452962 (lexTailRecV2!749 thiss!16613 rules!1750 (seqFromList!3001 input!1722) lt!842953 (_2!15823 (v!30319 lt!842978)) (append!685 (BalanceConc!17215 Empty!8743) (_1!15823 (v!30319 lt!842978)))))))

(declare-fun lt!842968 () tuple2!26618)

(assert (=> b!2268635 (= lt!842968 (lexRec!522 thiss!16613 rules!1750 (_2!15823 (v!30319 lt!842978))))))

(declare-fun lt!842963 () List!27060)

(assert (=> b!2268635 (= lt!842963 (list!10433 (BalanceConc!17213 Empty!8742)))))

(declare-fun lt!842965 () List!27060)

(assert (=> b!2268635 (= lt!842965 (list!10433 (charsOf!2685 (_1!15823 (v!30319 lt!842978)))))))

(declare-fun lt!842982 () List!27060)

(assert (=> b!2268635 (= lt!842982 (list!10433 (_2!15823 (v!30319 lt!842978))))))

(declare-fun lt!842986 () Unit!39922)

(declare-fun lemmaConcatAssociativity!1356 (List!27060 List!27060 List!27060) Unit!39922)

(assert (=> b!2268635 (= lt!842986 (lemmaConcatAssociativity!1356 lt!842963 lt!842965 lt!842982))))

(assert (=> b!2268635 (= (++!6569 (++!6569 lt!842963 lt!842965) lt!842982) (++!6569 lt!842963 (++!6569 lt!842965 lt!842982)))))

(declare-fun lt!842970 () Unit!39922)

(assert (=> b!2268635 (= lt!842970 lt!842986)))

(declare-fun maxPrefixZipperSequence!857 (LexerInterface!3894 List!27061 BalanceConc!17212) Option!5276)

(assert (=> b!2268635 (= lt!842966 (maxPrefixZipperSequence!857 thiss!16613 rules!1750 (seqFromList!3001 input!1722)))))

(declare-fun c!360256 () Bool)

(assert (=> b!2268635 (= c!360256 ((_ is Some!5275) lt!842966))))

(assert (=> b!2268635 (= (lexRec!522 thiss!16613 rules!1750 (seqFromList!3001 input!1722)) e!1452960)))

(declare-fun lt!842964 () Unit!39922)

(declare-fun Unit!39924 () Unit!39922)

(assert (=> b!2268635 (= lt!842964 Unit!39924)))

(declare-fun lt!842960 () List!27062)

(assert (=> b!2268635 (= lt!842960 (list!10434 (BalanceConc!17215 Empty!8743)))))

(declare-fun lt!842979 () List!27062)

(assert (=> b!2268635 (= lt!842979 (Cons!26968 (_1!15823 (v!30319 lt!842978)) Nil!26968))))

(declare-fun lt!842956 () List!27062)

(assert (=> b!2268635 (= lt!842956 (list!10434 (_1!15819 lt!842968)))))

(declare-fun lt!842981 () Unit!39922)

(declare-fun lemmaConcatAssociativity!1357 (List!27062 List!27062 List!27062) Unit!39922)

(assert (=> b!2268635 (= lt!842981 (lemmaConcatAssociativity!1357 lt!842960 lt!842979 lt!842956))))

(assert (=> b!2268635 (= (++!6571 (++!6571 lt!842960 lt!842979) lt!842956) (++!6571 lt!842960 (++!6571 lt!842979 lt!842956)))))

(declare-fun lt!842958 () Unit!39922)

(assert (=> b!2268635 (= lt!842958 lt!842981)))

(declare-fun lt!842962 () List!27060)

(assert (=> b!2268635 (= lt!842962 (++!6569 (list!10433 (BalanceConc!17213 Empty!8742)) (list!10433 (charsOf!2685 (_1!15823 (v!30319 lt!842978))))))))

(declare-fun lt!842959 () List!27060)

(assert (=> b!2268635 (= lt!842959 (list!10433 (_2!15823 (v!30319 lt!842978))))))

(declare-fun lt!842973 () List!27062)

(assert (=> b!2268635 (= lt!842973 (list!10434 (append!685 (BalanceConc!17215 Empty!8743) (_1!15823 (v!30319 lt!842978)))))))

(declare-fun lt!842955 () Unit!39922)

(declare-fun lemmaLexThenLexPrefix!336 (LexerInterface!3894 List!27061 List!27060 List!27060 List!27062 List!27062 List!27060) Unit!39922)

(assert (=> b!2268635 (= lt!842955 (lemmaLexThenLexPrefix!336 thiss!16613 rules!1750 lt!842962 lt!842959 lt!842973 (list!10434 (_1!15819 lt!842968)) (list!10433 (_2!15819 lt!842968))))))

(assert (=> b!2268635 (= (lexList!1074 thiss!16613 rules!1750 lt!842962) (tuple2!26621 lt!842973 Nil!26966))))

(declare-fun lt!842967 () Unit!39922)

(assert (=> b!2268635 (= lt!842967 lt!842955)))

(declare-fun lt!842984 () BalanceConc!17212)

(declare-fun ++!6572 (BalanceConc!17212 BalanceConc!17212) BalanceConc!17212)

(assert (=> b!2268635 (= lt!842984 (++!6572 (BalanceConc!17213 Empty!8742) (charsOf!2685 (_1!15823 (v!30319 lt!842978)))))))

(declare-fun lt!842957 () Option!5276)

(assert (=> b!2268635 (= lt!842957 (maxPrefixZipperSequence!857 thiss!16613 rules!1750 lt!842984))))

(declare-fun c!360255 () Bool)

(assert (=> b!2268635 (= c!360255 ((_ is Some!5275) lt!842957))))

(declare-fun e!1452961 () tuple2!26618)

(assert (=> b!2268635 (= (lexRec!522 thiss!16613 rules!1750 (++!6572 (BalanceConc!17213 Empty!8742) (charsOf!2685 (_1!15823 (v!30319 lt!842978))))) e!1452961)))

(declare-fun lt!842985 () Unit!39922)

(declare-fun Unit!39925 () Unit!39922)

(assert (=> b!2268635 (= lt!842985 Unit!39925)))

(assert (=> b!2268635 (= lt!842953 (++!6572 (BalanceConc!17213 Empty!8742) (charsOf!2685 (_1!15823 (v!30319 lt!842978)))))))

(declare-fun lt!842975 () List!27060)

(assert (=> b!2268635 (= lt!842975 (list!10433 lt!842953))))

(declare-fun lt!842961 () List!27060)

(assert (=> b!2268635 (= lt!842961 (list!10433 (_2!15823 (v!30319 lt!842978))))))

(declare-fun lt!842954 () Unit!39922)

(assert (=> b!2268635 (= lt!842954 (lemmaConcatTwoListThenFSndIsSuffix!452 lt!842975 lt!842961))))

(assert (=> b!2268635 (isSuffix!758 lt!842961 (++!6569 lt!842975 lt!842961))))

(declare-fun lt!842971 () Unit!39922)

(assert (=> b!2268635 (= lt!842971 lt!842954)))

(declare-fun b!2268636 () Bool)

(assert (=> b!2268636 (= e!1452961 (tuple2!26619 (BalanceConc!17215 Empty!8743) lt!842984))))

(declare-fun b!2268637 () Bool)

(declare-fun lt!842976 () tuple2!26618)

(assert (=> b!2268637 (= lt!842976 (lexRec!522 thiss!16613 rules!1750 (_2!15823 (v!30319 lt!842957))))))

(assert (=> b!2268637 (= e!1452961 (tuple2!26619 (prepend!992 (_1!15819 lt!842976) (_1!15823 (v!30319 lt!842957))) (_2!15819 lt!842976)))))

(declare-fun b!2268638 () Bool)

(assert (=> b!2268638 (= e!1452959 (= (list!10433 (_2!15819 lt!842972)) (list!10433 (_2!15819 (lexRec!522 thiss!16613 rules!1750 (seqFromList!3001 input!1722))))))))

(assert (= (and d!671578 c!360257) b!2268635))

(assert (= (and d!671578 (not c!360257)) b!2268633))

(assert (= (and b!2268635 c!360256) b!2268634))

(assert (= (and b!2268635 (not c!360256)) b!2268632))

(assert (= (and b!2268635 c!360255) b!2268637))

(assert (= (and b!2268635 (not c!360255)) b!2268636))

(assert (= (and d!671578 res!970002) b!2268638))

(declare-fun m!2697665 () Bool)

(assert (=> b!2268634 m!2697665))

(declare-fun m!2697667 () Bool)

(assert (=> b!2268634 m!2697667))

(declare-fun m!2697669 () Bool)

(assert (=> b!2268638 m!2697669))

(assert (=> b!2268638 m!2696577))

(declare-fun m!2697671 () Bool)

(assert (=> b!2268638 m!2697671))

(declare-fun m!2697673 () Bool)

(assert (=> b!2268638 m!2697673))

(declare-fun m!2697675 () Bool)

(assert (=> d!671578 m!2697675))

(declare-fun m!2697677 () Bool)

(assert (=> d!671578 m!2697677))

(declare-fun m!2697679 () Bool)

(assert (=> d!671578 m!2697679))

(declare-fun m!2697681 () Bool)

(assert (=> d!671578 m!2697681))

(declare-fun m!2697683 () Bool)

(assert (=> d!671578 m!2697683))

(assert (=> d!671578 m!2696577))

(assert (=> d!671578 m!2696917))

(assert (=> d!671578 m!2696577))

(assert (=> d!671578 m!2696577))

(declare-fun m!2697685 () Bool)

(assert (=> d!671578 m!2697685))

(declare-fun m!2697687 () Bool)

(assert (=> d!671578 m!2697687))

(assert (=> d!671578 m!2696577))

(assert (=> d!671578 m!2697671))

(assert (=> d!671578 m!2697677))

(declare-fun m!2697689 () Bool)

(assert (=> b!2268635 m!2697689))

(assert (=> b!2268635 m!2696577))

(assert (=> b!2268635 m!2697671))

(declare-fun m!2697691 () Bool)

(assert (=> b!2268635 m!2697691))

(declare-fun m!2697693 () Bool)

(assert (=> b!2268635 m!2697693))

(declare-fun m!2697695 () Bool)

(assert (=> b!2268635 m!2697695))

(declare-fun m!2697697 () Bool)

(assert (=> b!2268635 m!2697697))

(declare-fun m!2697699 () Bool)

(assert (=> b!2268635 m!2697699))

(declare-fun m!2697701 () Bool)

(assert (=> b!2268635 m!2697701))

(declare-fun m!2697703 () Bool)

(assert (=> b!2268635 m!2697703))

(declare-fun m!2697705 () Bool)

(assert (=> b!2268635 m!2697705))

(declare-fun m!2697707 () Bool)

(assert (=> b!2268635 m!2697707))

(declare-fun m!2697709 () Bool)

(assert (=> b!2268635 m!2697709))

(declare-fun m!2697711 () Bool)

(assert (=> b!2268635 m!2697711))

(declare-fun m!2697713 () Bool)

(assert (=> b!2268635 m!2697713))

(declare-fun m!2697715 () Bool)

(assert (=> b!2268635 m!2697715))

(declare-fun m!2697717 () Bool)

(assert (=> b!2268635 m!2697717))

(assert (=> b!2268635 m!2697689))

(declare-fun m!2697719 () Bool)

(assert (=> b!2268635 m!2697719))

(assert (=> b!2268635 m!2697687))

(declare-fun m!2697721 () Bool)

(assert (=> b!2268635 m!2697721))

(declare-fun m!2697723 () Bool)

(assert (=> b!2268635 m!2697723))

(assert (=> b!2268635 m!2696577))

(assert (=> b!2268635 m!2697691))

(declare-fun m!2697725 () Bool)

(assert (=> b!2268635 m!2697725))

(assert (=> b!2268635 m!2697701))

(declare-fun m!2697727 () Bool)

(assert (=> b!2268635 m!2697727))

(assert (=> b!2268635 m!2697715))

(declare-fun m!2697729 () Bool)

(assert (=> b!2268635 m!2697729))

(declare-fun m!2697731 () Bool)

(assert (=> b!2268635 m!2697731))

(assert (=> b!2268635 m!2697691))

(declare-fun m!2697733 () Bool)

(assert (=> b!2268635 m!2697733))

(assert (=> b!2268635 m!2697727))

(declare-fun m!2697735 () Bool)

(assert (=> b!2268635 m!2697735))

(declare-fun m!2697737 () Bool)

(assert (=> b!2268635 m!2697737))

(declare-fun m!2697739 () Bool)

(assert (=> b!2268635 m!2697739))

(assert (=> b!2268635 m!2697731))

(declare-fun m!2697741 () Bool)

(assert (=> b!2268635 m!2697741))

(assert (=> b!2268635 m!2697687))

(assert (=> b!2268635 m!2697703))

(declare-fun m!2697743 () Bool)

(assert (=> b!2268635 m!2697743))

(declare-fun m!2697745 () Bool)

(assert (=> b!2268635 m!2697745))

(assert (=> b!2268635 m!2697739))

(declare-fun m!2697747 () Bool)

(assert (=> b!2268635 m!2697747))

(assert (=> b!2268635 m!2697709))

(assert (=> b!2268635 m!2697693))

(assert (=> b!2268635 m!2697701))

(assert (=> b!2268635 m!2697721))

(assert (=> b!2268635 m!2696577))

(declare-fun m!2697749 () Bool)

(assert (=> b!2268635 m!2697749))

(declare-fun m!2697751 () Bool)

(assert (=> b!2268637 m!2697751))

(declare-fun m!2697753 () Bool)

(assert (=> b!2268637 m!2697753))

(assert (=> d!671318 d!671578))

(declare-fun b!2268642 () Bool)

(declare-fun e!1452963 () Int)

(assert (=> b!2268642 (= e!1452963 (- 1))))

(declare-fun d!671588 () Bool)

(declare-fun lt!842987 () Int)

(assert (=> d!671588 (>= lt!842987 0)))

(declare-fun e!1452964 () Int)

(assert (=> d!671588 (= lt!842987 e!1452964)))

(declare-fun c!360258 () Bool)

(assert (=> d!671588 (= c!360258 (and ((_ is Cons!26967) (t!202203 rules!1750)) (= (h!32368 (t!202203 rules!1750)) r!2363)))))

(assert (=> d!671588 (contains!4655 (t!202203 rules!1750) r!2363)))

(assert (=> d!671588 (= (getIndex!318 (t!202203 rules!1750) r!2363) lt!842987)))

(declare-fun b!2268641 () Bool)

(assert (=> b!2268641 (= e!1452963 (+ 1 (getIndex!318 (t!202203 (t!202203 rules!1750)) r!2363)))))

(declare-fun b!2268639 () Bool)

(assert (=> b!2268639 (= e!1452964 0)))

(declare-fun b!2268640 () Bool)

(assert (=> b!2268640 (= e!1452964 e!1452963)))

(declare-fun c!360259 () Bool)

(assert (=> b!2268640 (= c!360259 (and ((_ is Cons!26967) (t!202203 rules!1750)) (not (= (h!32368 (t!202203 rules!1750)) r!2363))))))

(assert (= (and d!671588 c!360258) b!2268639))

(assert (= (and d!671588 (not c!360258)) b!2268640))

(assert (= (and b!2268640 c!360259) b!2268641))

(assert (= (and b!2268640 (not c!360259)) b!2268642))

(assert (=> d!671588 m!2696909))

(declare-fun m!2697755 () Bool)

(assert (=> b!2268641 m!2697755))

(assert (=> b!2267703 d!671588))

(declare-fun bs!455814 () Bool)

(declare-fun d!671590 () Bool)

(assert (= bs!455814 (and d!671590 d!671344)))

(declare-fun lambda!85415 () Int)

(assert (=> bs!455814 (= (= (toValue!6051 (transformation!4297 (h!32368 rules!1750))) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (= lambda!85415 lambda!85399))))

(assert (=> d!671590 true))

(assert (=> d!671590 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 (h!32368 rules!1750)))) (dynLambda!11685 order!15027 lambda!85415))))

(assert (=> d!671590 (= (equivClasses!1649 (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toValue!6051 (transformation!4297 (h!32368 rules!1750)))) (Forall2!690 lambda!85415))))

(declare-fun bs!455815 () Bool)

(assert (= bs!455815 d!671590))

(declare-fun m!2697757 () Bool)

(assert (=> bs!455815 m!2697757))

(assert (=> b!2267950 d!671590))

(declare-fun d!671592 () Bool)

(declare-fun charsToBigInt!1 (List!27059) Int)

(assert (=> d!671592 (= (inv!17 (value!136284 (h!32369 tokens!456))) (= (charsToBigInt!1 (text!31661 (value!136284 (h!32369 tokens!456)))) (value!136276 (value!136284 (h!32369 tokens!456)))))))

(declare-fun bs!455816 () Bool)

(assert (= bs!455816 d!671592))

(declare-fun m!2697759 () Bool)

(assert (=> bs!455816 m!2697759))

(assert (=> b!2267681 d!671592))

(assert (=> b!2267925 d!671434))

(declare-fun d!671594 () Bool)

(declare-fun dynLambda!11689 (Int BalanceConc!17212) TokenValue!4459)

(assert (=> d!671594 (= (apply!6595 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))) (seqFromList!3001 (originalCharacters!5067 (_1!15821 (get!8139 lt!842657))))) (dynLambda!11689 (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))) (seqFromList!3001 (originalCharacters!5067 (_1!15821 (get!8139 lt!842657))))))))

(declare-fun b_lambda!72307 () Bool)

(assert (=> (not b_lambda!72307) (not d!671594)))

(declare-fun t!202341 () Bool)

(declare-fun tb!134575 () Bool)

(assert (=> (and b!2267539 (= (toValue!6051 (transformation!4297 (h!32368 rules!1750))) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202341) tb!134575))

(declare-fun result!164078 () Bool)

(assert (=> tb!134575 (= result!164078 (inv!21 (dynLambda!11689 (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657))))) (seqFromList!3001 (originalCharacters!5067 (_1!15821 (get!8139 lt!842657)))))))))

(declare-fun m!2697761 () Bool)

(assert (=> tb!134575 m!2697761))

(assert (=> d!671594 t!202341))

(declare-fun b_and!178653 () Bool)

(assert (= b_and!178529 (and (=> t!202341 result!164078) b_and!178653)))

(declare-fun tb!134577 () Bool)

(declare-fun t!202343 () Bool)

(assert (=> (and b!2267552 (= (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202343) tb!134577))

(declare-fun result!164082 () Bool)

(assert (= result!164082 result!164078))

(assert (=> d!671594 t!202343))

(declare-fun b_and!178655 () Bool)

(assert (= b_and!178533 (and (=> t!202343 result!164082) b_and!178655)))

(declare-fun tb!134579 () Bool)

(declare-fun t!202345 () Bool)

(assert (=> (and b!2268018 (= (toValue!6051 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202345) tb!134579))

(declare-fun result!164084 () Bool)

(assert (= result!164084 result!164078))

(assert (=> d!671594 t!202345))

(declare-fun b_and!178657 () Bool)

(assert (= b_and!178581 (and (=> t!202345 result!164084) b_and!178657)))

(declare-fun t!202347 () Bool)

(declare-fun tb!134581 () Bool)

(assert (=> (and b!2267549 (= (toValue!6051 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202347) tb!134581))

(declare-fun result!164086 () Bool)

(assert (= result!164086 result!164078))

(assert (=> d!671594 t!202347))

(declare-fun b_and!178659 () Bool)

(assert (= b_and!178521 (and (=> t!202347 result!164086) b_and!178659)))

(declare-fun tb!134583 () Bool)

(declare-fun t!202349 () Bool)

(assert (=> (and b!2267546 (= (toValue!6051 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202349) tb!134583))

(declare-fun result!164088 () Bool)

(assert (= result!164088 result!164078))

(assert (=> d!671594 t!202349))

(declare-fun b_and!178661 () Bool)

(assert (= b_and!178525 (and (=> t!202349 result!164088) b_and!178661)))

(declare-fun t!202351 () Bool)

(declare-fun tb!134585 () Bool)

(assert (=> (and b!2267984 (= (toValue!6051 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202351) tb!134585))

(declare-fun result!164090 () Bool)

(assert (= result!164090 result!164078))

(assert (=> d!671594 t!202351))

(declare-fun b_and!178663 () Bool)

(assert (= b_and!178577 (and (=> t!202351 result!164090) b_and!178663)))

(assert (=> d!671594 m!2696893))

(declare-fun m!2697763 () Bool)

(assert (=> d!671594 m!2697763))

(assert (=> b!2267925 d!671594))

(declare-fun d!671596 () Bool)

(assert (=> d!671596 (= (seqFromList!3001 (originalCharacters!5067 (_1!15821 (get!8139 lt!842657)))) (fromListB!1340 (originalCharacters!5067 (_1!15821 (get!8139 lt!842657)))))))

(declare-fun bs!455817 () Bool)

(assert (= bs!455817 d!671596))

(declare-fun m!2697765 () Bool)

(assert (=> bs!455817 m!2697765))

(assert (=> b!2267925 d!671596))

(assert (=> d!671270 d!671268))

(declare-fun d!671598 () Bool)

(assert (=> d!671598 (ruleValid!1389 thiss!16613 r!2363)))

(assert (=> d!671598 true))

(declare-fun _$65!1081 () Unit!39922)

(assert (=> d!671598 (= (choose!13262 thiss!16613 r!2363 rules!1750) _$65!1081)))

(declare-fun bs!455818 () Bool)

(assert (= bs!455818 d!671598))

(assert (=> bs!455818 m!2696565))

(assert (=> d!671270 d!671598))

(assert (=> d!671270 d!671312))

(declare-fun d!671600 () Bool)

(declare-fun lt!842988 () Int)

(assert (=> d!671600 (>= lt!842988 0)))

(declare-fun e!1452968 () Int)

(assert (=> d!671600 (= lt!842988 e!1452968)))

(declare-fun c!360260 () Bool)

(assert (=> d!671600 (= c!360260 ((_ is Nil!26966) (t!202202 otherP!12)))))

(assert (=> d!671600 (= (size!21154 (t!202202 otherP!12)) lt!842988)))

(declare-fun b!2268645 () Bool)

(assert (=> b!2268645 (= e!1452968 0)))

(declare-fun b!2268646 () Bool)

(assert (=> b!2268646 (= e!1452968 (+ 1 (size!21154 (t!202202 (t!202202 otherP!12)))))))

(assert (= (and d!671600 c!360260) b!2268645))

(assert (= (and d!671600 (not c!360260)) b!2268646))

(declare-fun m!2697767 () Bool)

(assert (=> b!2268646 m!2697767))

(assert (=> b!2267643 d!671600))

(declare-fun d!671602 () Bool)

(declare-fun charsToBigInt!0 (List!27059 Int) Int)

(assert (=> d!671602 (= (inv!15 (value!136284 (h!32369 tokens!456))) (= (charsToBigInt!0 (text!31662 (value!136284 (h!32369 tokens!456))) 0) (value!136279 (value!136284 (h!32369 tokens!456)))))))

(declare-fun bs!455819 () Bool)

(assert (= bs!455819 d!671602))

(declare-fun m!2697769 () Bool)

(assert (=> bs!455819 m!2697769))

(assert (=> b!2267685 d!671602))

(declare-fun b!2268647 () Bool)

(declare-fun res!970004 () Bool)

(declare-fun e!1452973 () Bool)

(assert (=> b!2268647 (=> res!970004 e!1452973)))

(assert (=> b!2268647 (= res!970004 (not ((_ is ElementMatch!6645) (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))))

(declare-fun e!1452971 () Bool)

(assert (=> b!2268647 (= e!1452971 e!1452973)))

(declare-fun b!2268648 () Bool)

(declare-fun res!970003 () Bool)

(assert (=> b!2268648 (=> res!970003 e!1452973)))

(declare-fun e!1452969 () Bool)

(assert (=> b!2268648 (= res!970003 e!1452969)))

(declare-fun res!970007 () Bool)

(assert (=> b!2268648 (=> (not res!970007) (not e!1452969))))

(declare-fun lt!842989 () Bool)

(assert (=> b!2268648 (= res!970007 lt!842989)))

(declare-fun b!2268649 () Bool)

(declare-fun res!970005 () Bool)

(declare-fun e!1452975 () Bool)

(assert (=> b!2268649 (=> res!970005 e!1452975)))

(assert (=> b!2268649 (= res!970005 (not (isEmpty!15266 (tail!3271 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))))

(declare-fun b!2268650 () Bool)

(assert (=> b!2268650 (= e!1452969 (= (head!4888 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) (c!360049 (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))))

(declare-fun b!2268651 () Bool)

(declare-fun res!970008 () Bool)

(assert (=> b!2268651 (=> (not res!970008) (not e!1452969))))

(declare-fun call!136066 () Bool)

(assert (=> b!2268651 (= res!970008 (not call!136066))))

(declare-fun b!2268652 () Bool)

(assert (=> b!2268652 (= e!1452971 (not lt!842989))))

(declare-fun b!2268653 () Bool)

(declare-fun e!1452974 () Bool)

(assert (=> b!2268653 (= e!1452974 (nullable!1828 (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))

(declare-fun b!2268654 () Bool)

(declare-fun e!1452972 () Bool)

(assert (=> b!2268654 (= e!1452972 e!1452975)))

(declare-fun res!970006 () Bool)

(assert (=> b!2268654 (=> res!970006 e!1452975)))

(assert (=> b!2268654 (= res!970006 call!136066)))

(declare-fun d!671604 () Bool)

(declare-fun e!1452970 () Bool)

(assert (=> d!671604 e!1452970))

(declare-fun c!360263 () Bool)

(assert (=> d!671604 (= c!360263 ((_ is EmptyExpr!6645) (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))

(assert (=> d!671604 (= lt!842989 e!1452974)))

(declare-fun c!360262 () Bool)

(assert (=> d!671604 (= c!360262 (isEmpty!15266 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(assert (=> d!671604 (validRegex!2490 (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(assert (=> d!671604 (= (matchR!2906 (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) lt!842989)))

(declare-fun b!2268655 () Bool)

(assert (=> b!2268655 (= e!1452973 e!1452972)))

(declare-fun res!970010 () Bool)

(assert (=> b!2268655 (=> (not res!970010) (not e!1452972))))

(assert (=> b!2268655 (= res!970010 (not lt!842989))))

(declare-fun b!2268656 () Bool)

(assert (=> b!2268656 (= e!1452970 e!1452971)))

(declare-fun c!360261 () Bool)

(assert (=> b!2268656 (= c!360261 ((_ is EmptyLang!6645) (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))

(declare-fun bm!136061 () Bool)

(assert (=> bm!136061 (= call!136066 (isEmpty!15266 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(declare-fun b!2268657 () Bool)

(declare-fun res!970009 () Bool)

(assert (=> b!2268657 (=> (not res!970009) (not e!1452969))))

(assert (=> b!2268657 (= res!970009 (isEmpty!15266 (tail!3271 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))

(declare-fun b!2268658 () Bool)

(assert (=> b!2268658 (= e!1452970 (= lt!842989 call!136066))))

(declare-fun b!2268659 () Bool)

(assert (=> b!2268659 (= e!1452974 (matchR!2906 (derivativeStep!1490 (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) (head!4888 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))) (tail!3271 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))

(declare-fun b!2268660 () Bool)

(assert (=> b!2268660 (= e!1452975 (not (= (head!4888 (tail!3271 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) (c!360049 (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))))

(assert (= (and d!671604 c!360262) b!2268653))

(assert (= (and d!671604 (not c!360262)) b!2268659))

(assert (= (and d!671604 c!360263) b!2268658))

(assert (= (and d!671604 (not c!360263)) b!2268656))

(assert (= (and b!2268656 c!360261) b!2268652))

(assert (= (and b!2268656 (not c!360261)) b!2268647))

(assert (= (and b!2268647 (not res!970004)) b!2268648))

(assert (= (and b!2268648 res!970007) b!2268651))

(assert (= (and b!2268651 res!970008) b!2268657))

(assert (= (and b!2268657 res!970009) b!2268650))

(assert (= (and b!2268648 (not res!970003)) b!2268655))

(assert (= (and b!2268655 res!970010) b!2268654))

(assert (= (and b!2268654 (not res!970006)) b!2268649))

(assert (= (and b!2268649 (not res!970005)) b!2268660))

(assert (= (or b!2268658 b!2268651 b!2268654) bm!136061))

(assert (=> b!2268657 m!2696637))

(declare-fun m!2697771 () Bool)

(assert (=> b!2268657 m!2697771))

(assert (=> b!2268657 m!2697771))

(declare-fun m!2697773 () Bool)

(assert (=> b!2268657 m!2697773))

(assert (=> d!671604 m!2696637))

(assert (=> d!671604 m!2696639))

(assert (=> d!671604 m!2696649))

(declare-fun m!2697775 () Bool)

(assert (=> d!671604 m!2697775))

(assert (=> b!2268653 m!2696649))

(declare-fun m!2697777 () Bool)

(assert (=> b!2268653 m!2697777))

(assert (=> b!2268659 m!2696637))

(declare-fun m!2697779 () Bool)

(assert (=> b!2268659 m!2697779))

(assert (=> b!2268659 m!2696649))

(assert (=> b!2268659 m!2697779))

(declare-fun m!2697781 () Bool)

(assert (=> b!2268659 m!2697781))

(assert (=> b!2268659 m!2696637))

(assert (=> b!2268659 m!2697771))

(assert (=> b!2268659 m!2697781))

(assert (=> b!2268659 m!2697771))

(declare-fun m!2697783 () Bool)

(assert (=> b!2268659 m!2697783))

(assert (=> b!2268660 m!2696637))

(assert (=> b!2268660 m!2697779))

(assert (=> b!2268649 m!2696637))

(assert (=> b!2268649 m!2697771))

(assert (=> b!2268649 m!2697771))

(assert (=> b!2268649 m!2697773))

(assert (=> bm!136061 m!2696637))

(assert (=> bm!136061 m!2696639))

(assert (=> b!2268650 m!2696637))

(assert (=> b!2268650 m!2697779))

(assert (=> b!2267610 d!671604))

(declare-fun b!2268681 () Bool)

(declare-fun call!136077 () Regex!6645)

(declare-fun e!1452986 () Regex!6645)

(declare-fun call!136078 () Regex!6645)

(assert (=> b!2268681 (= e!1452986 (Union!6645 (Concat!11105 call!136078 (regTwo!13802 (regex!4297 r!2363))) call!136077))))

(declare-fun b!2268682 () Bool)

(declare-fun e!1452988 () Regex!6645)

(assert (=> b!2268682 (= e!1452988 EmptyLang!6645)))

(declare-fun b!2268683 () Bool)

(declare-fun e!1452987 () Regex!6645)

(declare-fun call!136076 () Regex!6645)

(assert (=> b!2268683 (= e!1452987 (Union!6645 call!136077 call!136076))))

(declare-fun b!2268684 () Bool)

(declare-fun e!1452990 () Regex!6645)

(assert (=> b!2268684 (= e!1452988 e!1452990)))

(declare-fun c!360278 () Bool)

(assert (=> b!2268684 (= c!360278 ((_ is ElementMatch!6645) (regex!4297 r!2363)))))

(declare-fun b!2268685 () Bool)

(declare-fun c!360276 () Bool)

(assert (=> b!2268685 (= c!360276 ((_ is Union!6645) (regex!4297 r!2363)))))

(assert (=> b!2268685 (= e!1452990 e!1452987)))

(declare-fun b!2268686 () Bool)

(declare-fun c!360275 () Bool)

(assert (=> b!2268686 (= c!360275 (nullable!1828 (regOne!13802 (regex!4297 r!2363))))))

(declare-fun e!1452989 () Regex!6645)

(assert (=> b!2268686 (= e!1452989 e!1452986)))

(declare-fun b!2268687 () Bool)

(assert (=> b!2268687 (= e!1452987 e!1452989)))

(declare-fun c!360277 () Bool)

(assert (=> b!2268687 (= c!360277 ((_ is Star!6645) (regex!4297 r!2363)))))

(declare-fun b!2268688 () Bool)

(declare-fun call!136075 () Regex!6645)

(assert (=> b!2268688 (= e!1452989 (Concat!11105 call!136075 (regex!4297 r!2363)))))

(declare-fun bm!136070 () Bool)

(assert (=> bm!136070 (= call!136077 (derivativeStep!1490 (ite c!360276 (regOne!13803 (regex!4297 r!2363)) (regTwo!13802 (regex!4297 r!2363))) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(declare-fun bm!136071 () Bool)

(assert (=> bm!136071 (= call!136076 (derivativeStep!1490 (ite c!360276 (regTwo!13803 (regex!4297 r!2363)) (ite c!360277 (reg!6974 (regex!4297 r!2363)) (regOne!13802 (regex!4297 r!2363)))) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))))))

(declare-fun b!2268689 () Bool)

(assert (=> b!2268689 (= e!1452986 (Union!6645 (Concat!11105 call!136078 (regTwo!13802 (regex!4297 r!2363))) EmptyLang!6645))))

(declare-fun b!2268690 () Bool)

(assert (=> b!2268690 (= e!1452990 (ite (= (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456)))) (c!360049 (regex!4297 r!2363))) EmptyExpr!6645 EmptyLang!6645))))

(declare-fun bm!136072 () Bool)

(assert (=> bm!136072 (= call!136075 call!136076)))

(declare-fun d!671606 () Bool)

(declare-fun lt!842992 () Regex!6645)

(assert (=> d!671606 (validRegex!2490 lt!842992)))

(assert (=> d!671606 (= lt!842992 e!1452988)))

(declare-fun c!360274 () Bool)

(assert (=> d!671606 (= c!360274 (or ((_ is EmptyExpr!6645) (regex!4297 r!2363)) ((_ is EmptyLang!6645) (regex!4297 r!2363))))))

(assert (=> d!671606 (validRegex!2490 (regex!4297 r!2363))))

(assert (=> d!671606 (= (derivativeStep!1490 (regex!4297 r!2363) (head!4888 (list!10433 (charsOf!2685 (head!4886 tokens!456))))) lt!842992)))

(declare-fun bm!136073 () Bool)

(assert (=> bm!136073 (= call!136078 call!136075)))

(assert (= (and d!671606 c!360274) b!2268682))

(assert (= (and d!671606 (not c!360274)) b!2268684))

(assert (= (and b!2268684 c!360278) b!2268690))

(assert (= (and b!2268684 (not c!360278)) b!2268685))

(assert (= (and b!2268685 c!360276) b!2268683))

(assert (= (and b!2268685 (not c!360276)) b!2268687))

(assert (= (and b!2268687 c!360277) b!2268688))

(assert (= (and b!2268687 (not c!360277)) b!2268686))

(assert (= (and b!2268686 c!360275) b!2268681))

(assert (= (and b!2268686 (not c!360275)) b!2268689))

(assert (= (or b!2268681 b!2268689) bm!136073))

(assert (= (or b!2268688 bm!136073) bm!136072))

(assert (= (or b!2268683 b!2268681) bm!136070))

(assert (= (or b!2268683 bm!136072) bm!136071))

(declare-fun m!2697785 () Bool)

(assert (=> b!2268686 m!2697785))

(assert (=> bm!136070 m!2696647))

(declare-fun m!2697787 () Bool)

(assert (=> bm!136070 m!2697787))

(assert (=> bm!136071 m!2696647))

(declare-fun m!2697789 () Bool)

(assert (=> bm!136071 m!2697789))

(declare-fun m!2697791 () Bool)

(assert (=> d!671606 m!2697791))

(assert (=> d!671606 m!2696643))

(assert (=> b!2267610 d!671606))

(assert (=> b!2267610 d!671470))

(assert (=> b!2267610 d!671542))

(declare-fun d!671608 () Bool)

(declare-fun charsToInt!0 (List!27059) (_ BitVec 32))

(assert (=> d!671608 (= (inv!16 (value!136284 (h!32369 tokens!456))) (= (charsToInt!0 (text!31660 (value!136284 (h!32369 tokens!456)))) (value!136275 (value!136284 (h!32369 tokens!456)))))))

(declare-fun bs!455820 () Bool)

(assert (= bs!455820 d!671608))

(declare-fun m!2697793 () Bool)

(assert (=> bs!455820 m!2697793))

(assert (=> b!2267683 d!671608))

(declare-fun bs!455821 () Bool)

(declare-fun d!671610 () Bool)

(assert (= bs!455821 (and d!671610 d!671416)))

(declare-fun lambda!85416 () Int)

(assert (=> bs!455821 (= (and (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (h!32368 rules!1750)))) (= (toValue!6051 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 (h!32368 rules!1750))))) (= lambda!85416 lambda!85403))))

(declare-fun bs!455822 () Bool)

(assert (= bs!455822 (and d!671610 d!671430)))

(assert (=> bs!455822 (= (and (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 r!2363))) (= (toValue!6051 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 r!2363)))) (= lambda!85416 lambda!85404))))

(assert (=> d!671610 true))

(assert (=> d!671610 (< (dynLambda!11686 order!15029 (toChars!5910 (transformation!4297 otherR!12))) (dynLambda!11687 order!15031 lambda!85416))))

(assert (=> d!671610 true))

(assert (=> d!671610 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 otherR!12))) (dynLambda!11687 order!15031 lambda!85416))))

(assert (=> d!671610 (= (semiInverseModEq!1730 (toChars!5910 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 otherR!12))) (Forall!1073 lambda!85416))))

(declare-fun bs!455823 () Bool)

(assert (= bs!455823 d!671610))

(declare-fun m!2697795 () Bool)

(assert (=> bs!455823 m!2697795))

(assert (=> d!671246 d!671610))

(declare-fun d!671612 () Bool)

(assert (=> d!671612 (= (isDefined!4202 lt!842657) (not (isEmpty!15267 lt!842657)))))

(declare-fun bs!455824 () Bool)

(assert (= bs!455824 d!671612))

(assert (=> bs!455824 m!2696881))

(assert (=> b!2267927 d!671612))

(declare-fun d!671614 () Bool)

(declare-fun lt!842995 () Bool)

(assert (=> d!671614 (= lt!842995 (isEmpty!15262 (list!10434 (_1!15819 lt!842665))))))

(declare-fun isEmpty!15270 (Conc!8743) Bool)

(assert (=> d!671614 (= lt!842995 (isEmpty!15270 (c!360050 (_1!15819 lt!842665))))))

(assert (=> d!671614 (= (isEmpty!15268 (_1!15819 lt!842665)) lt!842995)))

(declare-fun bs!455825 () Bool)

(assert (= bs!455825 d!671614))

(assert (=> bs!455825 m!2696931))

(assert (=> bs!455825 m!2696931))

(declare-fun m!2697797 () Bool)

(assert (=> bs!455825 m!2697797))

(declare-fun m!2697799 () Bool)

(assert (=> bs!455825 m!2697799))

(assert (=> b!2267947 d!671614))

(declare-fun d!671616 () Bool)

(assert (=> d!671616 (= (head!4888 otherP!12) (h!32367 otherP!12))))

(assert (=> b!2267659 d!671616))

(declare-fun d!671618 () Bool)

(assert (=> d!671618 (= (head!4888 input!1722) (h!32367 input!1722))))

(assert (=> b!2267659 d!671618))

(assert (=> d!671262 d!671326))

(declare-fun bs!455826 () Bool)

(declare-fun d!671620 () Bool)

(assert (= bs!455826 (and d!671620 d!671344)))

(declare-fun lambda!85417 () Int)

(assert (=> bs!455826 (= (= (toValue!6051 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (= lambda!85417 lambda!85399))))

(declare-fun bs!455827 () Bool)

(assert (= bs!455827 (and d!671620 d!671590)))

(assert (=> bs!455827 (= (= (toValue!6051 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 (h!32368 rules!1750)))) (= lambda!85417 lambda!85415))))

(assert (=> d!671620 true))

(assert (=> d!671620 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 otherR!12))) (dynLambda!11685 order!15027 lambda!85417))))

(assert (=> d!671620 (= (equivClasses!1649 (toChars!5910 (transformation!4297 otherR!12)) (toValue!6051 (transformation!4297 otherR!12))) (Forall2!690 lambda!85417))))

(declare-fun bs!455828 () Bool)

(assert (= bs!455828 d!671620))

(declare-fun m!2697801 () Bool)

(assert (=> bs!455828 m!2697801))

(assert (=> b!2267688 d!671620))

(declare-fun d!671622 () Bool)

(declare-fun lt!842996 () Int)

(assert (=> d!671622 (= lt!842996 (size!21154 (list!10433 (_2!15819 lt!842665))))))

(assert (=> d!671622 (= lt!842996 (size!21157 (c!360048 (_2!15819 lt!842665))))))

(assert (=> d!671622 (= (size!21153 (_2!15819 lt!842665)) lt!842996)))

(declare-fun bs!455829 () Bool)

(assert (= bs!455829 d!671622))

(assert (=> bs!455829 m!2696915))

(assert (=> bs!455829 m!2696915))

(declare-fun m!2697803 () Bool)

(assert (=> bs!455829 m!2697803))

(declare-fun m!2697805 () Bool)

(assert (=> bs!455829 m!2697805))

(assert (=> b!2267945 d!671622))

(declare-fun d!671624 () Bool)

(declare-fun lt!842997 () Int)

(assert (=> d!671624 (= lt!842997 (size!21154 (list!10433 (seqFromList!3001 input!1722))))))

(assert (=> d!671624 (= lt!842997 (size!21157 (c!360048 (seqFromList!3001 input!1722))))))

(assert (=> d!671624 (= (size!21153 (seqFromList!3001 input!1722)) lt!842997)))

(declare-fun bs!455830 () Bool)

(assert (= bs!455830 d!671624))

(assert (=> bs!455830 m!2696577))

(assert (=> bs!455830 m!2696917))

(assert (=> bs!455830 m!2696917))

(assert (=> bs!455830 m!2697357))

(declare-fun m!2697807 () Bool)

(assert (=> bs!455830 m!2697807))

(assert (=> b!2267945 d!671624))

(declare-fun d!671626 () Bool)

(declare-fun res!970015 () Bool)

(declare-fun e!1452995 () Bool)

(assert (=> d!671626 (=> res!970015 e!1452995)))

(assert (=> d!671626 (= res!970015 ((_ is Nil!26967) rules!1750))))

(assert (=> d!671626 (= (noDuplicateTag!1572 thiss!16613 rules!1750 Nil!26970) e!1452995)))

(declare-fun b!2268695 () Bool)

(declare-fun e!1452996 () Bool)

(assert (=> b!2268695 (= e!1452995 e!1452996)))

(declare-fun res!970016 () Bool)

(assert (=> b!2268695 (=> (not res!970016) (not e!1452996))))

(declare-fun contains!4657 (List!27064 String!29399) Bool)

(assert (=> b!2268695 (= res!970016 (not (contains!4657 Nil!26970 (tag!4787 (h!32368 rules!1750)))))))

(declare-fun b!2268696 () Bool)

(assert (=> b!2268696 (= e!1452996 (noDuplicateTag!1572 thiss!16613 (t!202203 rules!1750) (Cons!26970 (tag!4787 (h!32368 rules!1750)) Nil!26970)))))

(assert (= (and d!671626 (not res!970015)) b!2268695))

(assert (= (and b!2268695 res!970016) b!2268696))

(declare-fun m!2697809 () Bool)

(assert (=> b!2268695 m!2697809))

(declare-fun m!2697811 () Bool)

(assert (=> b!2268696 m!2697811))

(assert (=> b!2267622 d!671626))

(declare-fun d!671628 () Bool)

(assert (=> d!671628 (= (list!10433 (_2!15819 lt!842665)) (list!10437 (c!360048 (_2!15819 lt!842665))))))

(declare-fun bs!455831 () Bool)

(assert (= bs!455831 d!671628))

(declare-fun m!2697813 () Bool)

(assert (=> bs!455831 m!2697813))

(assert (=> b!2267949 d!671628))

(assert (=> b!2267949 d!671508))

(assert (=> b!2267949 d!671534))

(declare-fun d!671630 () Bool)

(declare-fun e!1452999 () Bool)

(assert (=> d!671630 e!1452999))

(declare-fun res!970019 () Bool)

(assert (=> d!671630 (=> (not res!970019) (not e!1452999))))

(declare-fun lt!843000 () BalanceConc!17212)

(assert (=> d!671630 (= res!970019 (= (list!10433 lt!843000) input!1722))))

(declare-fun fromList!520 (List!27060) Conc!8742)

(assert (=> d!671630 (= lt!843000 (BalanceConc!17213 (fromList!520 input!1722)))))

(assert (=> d!671630 (= (fromListB!1340 input!1722) lt!843000)))

(declare-fun b!2268699 () Bool)

(assert (=> b!2268699 (= e!1452999 (isBalanced!2663 (fromList!520 input!1722)))))

(assert (= (and d!671630 res!970019) b!2268699))

(declare-fun m!2697815 () Bool)

(assert (=> d!671630 m!2697815))

(declare-fun m!2697817 () Bool)

(assert (=> d!671630 m!2697817))

(assert (=> b!2268699 m!2697817))

(assert (=> b!2268699 m!2697817))

(declare-fun m!2697819 () Bool)

(assert (=> b!2268699 m!2697819))

(assert (=> d!671320 d!671630))

(assert (=> b!2267661 d!671436))

(assert (=> b!2267661 d!671222))

(declare-fun bs!455832 () Bool)

(declare-fun d!671632 () Bool)

(assert (= bs!455832 (and d!671632 d!671344)))

(declare-fun lambda!85418 () Int)

(assert (=> bs!455832 (= (= (toValue!6051 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (= lambda!85418 lambda!85399))))

(declare-fun bs!455833 () Bool)

(assert (= bs!455833 (and d!671632 d!671590)))

(assert (=> bs!455833 (= (= (toValue!6051 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 (h!32368 rules!1750)))) (= lambda!85418 lambda!85415))))

(declare-fun bs!455834 () Bool)

(assert (= bs!455834 (and d!671632 d!671620)))

(assert (=> bs!455834 (= (= (toValue!6051 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 otherR!12))) (= lambda!85418 lambda!85417))))

(assert (=> d!671632 true))

(assert (=> d!671632 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 r!2363))) (dynLambda!11685 order!15027 lambda!85418))))

(assert (=> d!671632 (= (equivClasses!1649 (toChars!5910 (transformation!4297 r!2363)) (toValue!6051 (transformation!4297 r!2363))) (Forall2!690 lambda!85418))))

(declare-fun bs!455835 () Bool)

(assert (= bs!455835 d!671632))

(declare-fun m!2697821 () Bool)

(assert (=> bs!455835 m!2697821))

(assert (=> b!2267619 d!671632))

(declare-fun d!671634 () Bool)

(assert (=> d!671634 true))

(declare-fun lt!843003 () Bool)

(assert (=> d!671634 (= lt!843003 (rulesValidInductive!1499 thiss!16613 rules!1750))))

(declare-fun lambda!85421 () Int)

(declare-fun forall!5476 (List!27061 Int) Bool)

(assert (=> d!671634 (= lt!843003 (forall!5476 rules!1750 lambda!85421))))

(assert (=> d!671634 (= (rulesValid!1574 thiss!16613 rules!1750) lt!843003)))

(declare-fun bs!455836 () Bool)

(assert (= bs!455836 d!671634))

(assert (=> bs!455836 m!2696887))

(declare-fun m!2697823 () Bool)

(assert (=> bs!455836 m!2697823))

(assert (=> d!671218 d!671634))

(declare-fun d!671636 () Bool)

(assert (=> d!671636 (= (inv!36506 (tag!4787 (h!32368 (t!202203 rules!1750)))) (= (mod (str.len (value!136283 (tag!4787 (h!32368 (t!202203 rules!1750))))) 2) 0))))

(assert (=> b!2267983 d!671636))

(declare-fun d!671638 () Bool)

(declare-fun res!970020 () Bool)

(declare-fun e!1453000 () Bool)

(assert (=> d!671638 (=> (not res!970020) (not e!1453000))))

(assert (=> d!671638 (= res!970020 (semiInverseModEq!1730 (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toValue!6051 (transformation!4297 (h!32368 (t!202203 rules!1750))))))))

(assert (=> d!671638 (= (inv!36509 (transformation!4297 (h!32368 (t!202203 rules!1750)))) e!1453000)))

(declare-fun b!2268702 () Bool)

(assert (=> b!2268702 (= e!1453000 (equivClasses!1649 (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toValue!6051 (transformation!4297 (h!32368 (t!202203 rules!1750))))))))

(assert (= (and d!671638 res!970020) b!2268702))

(declare-fun m!2697825 () Bool)

(assert (=> d!671638 m!2697825))

(declare-fun m!2697827 () Bool)

(assert (=> b!2268702 m!2697827))

(assert (=> b!2267983 d!671638))

(declare-fun d!671640 () Bool)

(assert (=> d!671640 (= (isEmpty!15267 lt!842657) (not ((_ is Some!5274) lt!842657)))))

(assert (=> d!671274 d!671640))

(declare-fun b!2268705 () Bool)

(declare-fun e!1453002 () Bool)

(assert (=> b!2268705 (= e!1453002 (isPrefix!2287 (tail!3271 input!1722) (tail!3271 input!1722)))))

(declare-fun b!2268704 () Bool)

(declare-fun res!970023 () Bool)

(assert (=> b!2268704 (=> (not res!970023) (not e!1453002))))

(assert (=> b!2268704 (= res!970023 (= (head!4888 input!1722) (head!4888 input!1722)))))

(declare-fun b!2268706 () Bool)

(declare-fun e!1453003 () Bool)

(assert (=> b!2268706 (= e!1453003 (>= (size!21154 input!1722) (size!21154 input!1722)))))

(declare-fun d!671642 () Bool)

(assert (=> d!671642 e!1453003))

(declare-fun res!970024 () Bool)

(assert (=> d!671642 (=> res!970024 e!1453003)))

(declare-fun lt!843004 () Bool)

(assert (=> d!671642 (= res!970024 (not lt!843004))))

(declare-fun e!1453001 () Bool)

(assert (=> d!671642 (= lt!843004 e!1453001)))

(declare-fun res!970022 () Bool)

(assert (=> d!671642 (=> res!970022 e!1453001)))

(assert (=> d!671642 (= res!970022 ((_ is Nil!26966) input!1722))))

(assert (=> d!671642 (= (isPrefix!2287 input!1722 input!1722) lt!843004)))

(declare-fun b!2268703 () Bool)

(assert (=> b!2268703 (= e!1453001 e!1453002)))

(declare-fun res!970021 () Bool)

(assert (=> b!2268703 (=> (not res!970021) (not e!1453002))))

(assert (=> b!2268703 (= res!970021 (not ((_ is Nil!26966) input!1722)))))

(assert (= (and d!671642 (not res!970022)) b!2268703))

(assert (= (and b!2268703 res!970021) b!2268704))

(assert (= (and b!2268704 res!970023) b!2268705))

(assert (= (and d!671642 (not res!970024)) b!2268706))

(assert (=> b!2268705 m!2696705))

(assert (=> b!2268705 m!2696705))

(assert (=> b!2268705 m!2696705))

(assert (=> b!2268705 m!2696705))

(declare-fun m!2697829 () Bool)

(assert (=> b!2268705 m!2697829))

(assert (=> b!2268704 m!2696711))

(assert (=> b!2268704 m!2696711))

(assert (=> b!2268706 m!2696713))

(assert (=> b!2268706 m!2696713))

(assert (=> d!671274 d!671642))

(declare-fun d!671644 () Bool)

(assert (=> d!671644 (isPrefix!2287 input!1722 input!1722)))

(declare-fun lt!843007 () Unit!39922)

(declare-fun choose!13264 (List!27060 List!27060) Unit!39922)

(assert (=> d!671644 (= lt!843007 (choose!13264 input!1722 input!1722))))

(assert (=> d!671644 (= (lemmaIsPrefixRefl!1465 input!1722 input!1722) lt!843007)))

(declare-fun bs!455837 () Bool)

(assert (= bs!455837 d!671644))

(assert (=> bs!455837 m!2696883))

(declare-fun m!2697831 () Bool)

(assert (=> bs!455837 m!2697831))

(assert (=> d!671274 d!671644))

(declare-fun bs!455838 () Bool)

(declare-fun d!671646 () Bool)

(assert (= bs!455838 (and d!671646 d!671634)))

(declare-fun lambda!85424 () Int)

(assert (=> bs!455838 (= lambda!85424 lambda!85421)))

(assert (=> d!671646 true))

(declare-fun lt!843010 () Bool)

(assert (=> d!671646 (= lt!843010 (forall!5476 rules!1750 lambda!85424))))

(declare-fun e!1453008 () Bool)

(assert (=> d!671646 (= lt!843010 e!1453008)))

(declare-fun res!970029 () Bool)

(assert (=> d!671646 (=> res!970029 e!1453008)))

(assert (=> d!671646 (= res!970029 (not ((_ is Cons!26967) rules!1750)))))

(assert (=> d!671646 (= (rulesValidInductive!1499 thiss!16613 rules!1750) lt!843010)))

(declare-fun b!2268711 () Bool)

(declare-fun e!1453009 () Bool)

(assert (=> b!2268711 (= e!1453008 e!1453009)))

(declare-fun res!970030 () Bool)

(assert (=> b!2268711 (=> (not res!970030) (not e!1453009))))

(assert (=> b!2268711 (= res!970030 (ruleValid!1389 thiss!16613 (h!32368 rules!1750)))))

(declare-fun b!2268712 () Bool)

(assert (=> b!2268712 (= e!1453009 (rulesValidInductive!1499 thiss!16613 (t!202203 rules!1750)))))

(assert (= (and d!671646 (not res!970029)) b!2268711))

(assert (= (and b!2268711 res!970030) b!2268712))

(declare-fun m!2697833 () Bool)

(assert (=> d!671646 m!2697833))

(assert (=> b!2268711 m!2697511))

(assert (=> b!2268712 m!2696977))

(assert (=> d!671274 d!671646))

(declare-fun d!671648 () Bool)

(declare-fun lt!843011 () Int)

(assert (=> d!671648 (>= lt!843011 0)))

(declare-fun e!1453010 () Int)

(assert (=> d!671648 (= lt!843011 e!1453010)))

(declare-fun c!360280 () Bool)

(assert (=> d!671648 (= c!360280 ((_ is Nil!26966) (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))

(assert (=> d!671648 (= (size!21154 (list!10433 (charsOf!2685 (head!4886 tokens!456)))) lt!843011)))

(declare-fun b!2268713 () Bool)

(assert (=> b!2268713 (= e!1453010 0)))

(declare-fun b!2268714 () Bool)

(assert (=> b!2268714 (= e!1453010 (+ 1 (size!21154 (t!202202 (list!10433 (charsOf!2685 (head!4886 tokens!456)))))))))

(assert (= (and d!671648 c!360280) b!2268713))

(assert (= (and d!671648 (not c!360280)) b!2268714))

(declare-fun m!2697835 () Bool)

(assert (=> b!2268714 m!2697835))

(assert (=> d!671220 d!671648))

(assert (=> d!671220 d!671208))

(declare-fun d!671650 () Bool)

(declare-fun lt!843014 () Int)

(assert (=> d!671650 (= lt!843014 (size!21154 (list!10437 (c!360048 (charsOf!2685 (head!4886 tokens!456))))))))

(assert (=> d!671650 (= lt!843014 (ite ((_ is Empty!8742) (c!360048 (charsOf!2685 (head!4886 tokens!456)))) 0 (ite ((_ is Leaf!12876) (c!360048 (charsOf!2685 (head!4886 tokens!456)))) (csize!17715 (c!360048 (charsOf!2685 (head!4886 tokens!456)))) (csize!17714 (c!360048 (charsOf!2685 (head!4886 tokens!456)))))))))

(assert (=> d!671650 (= (size!21157 (c!360048 (charsOf!2685 (head!4886 tokens!456)))) lt!843014)))

(declare-fun bs!455839 () Bool)

(assert (= bs!455839 d!671650))

(assert (=> bs!455839 m!2696653))

(assert (=> bs!455839 m!2696653))

(declare-fun m!2697837 () Bool)

(assert (=> bs!455839 m!2697837))

(assert (=> d!671220 d!671650))

(declare-fun d!671652 () Bool)

(declare-fun lt!843015 () Bool)

(assert (=> d!671652 (= lt!843015 (select (content!3594 (t!202203 rules!1750)) otherR!12))))

(declare-fun e!1453011 () Bool)

(assert (=> d!671652 (= lt!843015 e!1453011)))

(declare-fun res!970031 () Bool)

(assert (=> d!671652 (=> (not res!970031) (not e!1453011))))

(assert (=> d!671652 (= res!970031 ((_ is Cons!26967) (t!202203 rules!1750)))))

(assert (=> d!671652 (= (contains!4655 (t!202203 rules!1750) otherR!12) lt!843015)))

(declare-fun b!2268715 () Bool)

(declare-fun e!1453012 () Bool)

(assert (=> b!2268715 (= e!1453011 e!1453012)))

(declare-fun res!970032 () Bool)

(assert (=> b!2268715 (=> res!970032 e!1453012)))

(assert (=> b!2268715 (= res!970032 (= (h!32368 (t!202203 rules!1750)) otherR!12))))

(declare-fun b!2268716 () Bool)

(assert (=> b!2268716 (= e!1453012 (contains!4655 (t!202203 (t!202203 rules!1750)) otherR!12))))

(assert (= (and d!671652 res!970031) b!2268715))

(assert (= (and b!2268715 (not res!970032)) b!2268716))

(assert (=> d!671652 m!2697263))

(declare-fun m!2697839 () Bool)

(assert (=> d!671652 m!2697839))

(declare-fun m!2697841 () Bool)

(assert (=> b!2268716 m!2697841))

(assert (=> b!2267952 d!671652))

(assert (=> b!2267601 d!671470))

(declare-fun b!2268720 () Bool)

(declare-fun e!1453013 () Int)

(assert (=> b!2268720 (= e!1453013 (- 1))))

(declare-fun d!671654 () Bool)

(declare-fun lt!843016 () Int)

(assert (=> d!671654 (>= lt!843016 0)))

(declare-fun e!1453014 () Int)

(assert (=> d!671654 (= lt!843016 e!1453014)))

(declare-fun c!360281 () Bool)

(assert (=> d!671654 (= c!360281 (and ((_ is Cons!26967) (t!202203 rules!1750)) (= (h!32368 (t!202203 rules!1750)) otherR!12)))))

(assert (=> d!671654 (contains!4655 (t!202203 rules!1750) otherR!12)))

(assert (=> d!671654 (= (getIndex!318 (t!202203 rules!1750) otherR!12) lt!843016)))

(declare-fun b!2268719 () Bool)

(assert (=> b!2268719 (= e!1453013 (+ 1 (getIndex!318 (t!202203 (t!202203 rules!1750)) otherR!12)))))

(declare-fun b!2268717 () Bool)

(assert (=> b!2268717 (= e!1453014 0)))

(declare-fun b!2268718 () Bool)

(assert (=> b!2268718 (= e!1453014 e!1453013)))

(declare-fun c!360282 () Bool)

(assert (=> b!2268718 (= c!360282 (and ((_ is Cons!26967) (t!202203 rules!1750)) (not (= (h!32368 (t!202203 rules!1750)) otherR!12))))))

(assert (= (and d!671654 c!360281) b!2268717))

(assert (= (and d!671654 (not c!360281)) b!2268718))

(assert (= (and b!2268718 c!360282) b!2268719))

(assert (= (and b!2268718 (not c!360282)) b!2268720))

(assert (=> d!671654 m!2696941))

(declare-fun m!2697843 () Bool)

(assert (=> b!2268719 m!2697843))

(assert (=> b!2267707 d!671654))

(declare-fun bs!455840 () Bool)

(declare-fun d!671656 () Bool)

(assert (= bs!455840 (and d!671656 d!671416)))

(declare-fun lambda!85425 () Int)

(assert (=> bs!455840 (= (and (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 (h!32368 rules!1750)))) (= (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 (h!32368 rules!1750))))) (= lambda!85425 lambda!85403))))

(declare-fun bs!455841 () Bool)

(assert (= bs!455841 (and d!671656 d!671430)))

(assert (=> bs!455841 (= (and (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 r!2363))) (= (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 r!2363)))) (= lambda!85425 lambda!85404))))

(declare-fun bs!455842 () Bool)

(assert (= bs!455842 (and d!671656 d!671610)))

(assert (=> bs!455842 (= (and (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 otherR!12))) (= (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 otherR!12)))) (= lambda!85425 lambda!85416))))

(assert (=> d!671656 true))

(assert (=> d!671656 (< (dynLambda!11686 order!15029 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (dynLambda!11687 order!15031 lambda!85425))))

(assert (=> d!671656 true))

(assert (=> d!671656 (< (dynLambda!11684 order!15025 (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (dynLambda!11687 order!15031 lambda!85425))))

(assert (=> d!671656 (= (semiInverseModEq!1730 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toValue!6051 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) (Forall!1073 lambda!85425))))

(declare-fun bs!455843 () Bool)

(assert (= bs!455843 d!671656))

(declare-fun m!2697845 () Bool)

(assert (=> bs!455843 m!2697845))

(assert (=> d!671250 d!671656))

(declare-fun b!2268724 () Bool)

(declare-fun e!1453015 () Bool)

(declare-fun tp!717820 () Bool)

(declare-fun tp!717819 () Bool)

(assert (=> b!2268724 (= e!1453015 (and tp!717820 tp!717819))))

(assert (=> b!2267999 (= tp!717654 e!1453015)))

(declare-fun b!2268722 () Bool)

(declare-fun tp!717817 () Bool)

(declare-fun tp!717818 () Bool)

(assert (=> b!2268722 (= e!1453015 (and tp!717817 tp!717818))))

(declare-fun b!2268723 () Bool)

(declare-fun tp!717816 () Bool)

(assert (=> b!2268723 (= e!1453015 tp!717816)))

(declare-fun b!2268721 () Bool)

(assert (=> b!2268721 (= e!1453015 tp_is_empty!10511)))

(assert (= (and b!2267999 ((_ is ElementMatch!6645) (regOne!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268721))

(assert (= (and b!2267999 ((_ is Concat!11105) (regOne!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268722))

(assert (= (and b!2267999 ((_ is Star!6645) (regOne!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268723))

(assert (= (and b!2267999 ((_ is Union!6645) (regOne!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268724))

(declare-fun b!2268728 () Bool)

(declare-fun e!1453016 () Bool)

(declare-fun tp!717825 () Bool)

(declare-fun tp!717824 () Bool)

(assert (=> b!2268728 (= e!1453016 (and tp!717825 tp!717824))))

(assert (=> b!2267999 (= tp!717653 e!1453016)))

(declare-fun b!2268726 () Bool)

(declare-fun tp!717822 () Bool)

(declare-fun tp!717823 () Bool)

(assert (=> b!2268726 (= e!1453016 (and tp!717822 tp!717823))))

(declare-fun b!2268727 () Bool)

(declare-fun tp!717821 () Bool)

(assert (=> b!2268727 (= e!1453016 tp!717821)))

(declare-fun b!2268725 () Bool)

(assert (=> b!2268725 (= e!1453016 tp_is_empty!10511)))

(assert (= (and b!2267999 ((_ is ElementMatch!6645) (regTwo!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268725))

(assert (= (and b!2267999 ((_ is Concat!11105) (regTwo!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268726))

(assert (= (and b!2267999 ((_ is Star!6645) (regTwo!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268727))

(assert (= (and b!2267999 ((_ is Union!6645) (regTwo!13803 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268728))

(declare-fun b!2268732 () Bool)

(declare-fun e!1453017 () Bool)

(declare-fun tp!717830 () Bool)

(declare-fun tp!717829 () Bool)

(assert (=> b!2268732 (= e!1453017 (and tp!717830 tp!717829))))

(assert (=> b!2267998 (= tp!717650 e!1453017)))

(declare-fun b!2268730 () Bool)

(declare-fun tp!717827 () Bool)

(declare-fun tp!717828 () Bool)

(assert (=> b!2268730 (= e!1453017 (and tp!717827 tp!717828))))

(declare-fun b!2268731 () Bool)

(declare-fun tp!717826 () Bool)

(assert (=> b!2268731 (= e!1453017 tp!717826)))

(declare-fun b!2268729 () Bool)

(assert (=> b!2268729 (= e!1453017 tp_is_empty!10511)))

(assert (= (and b!2267998 ((_ is ElementMatch!6645) (reg!6974 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268729))

(assert (= (and b!2267998 ((_ is Concat!11105) (reg!6974 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268730))

(assert (= (and b!2267998 ((_ is Star!6645) (reg!6974 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268731))

(assert (= (and b!2267998 ((_ is Union!6645) (reg!6974 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268732))

(declare-fun b!2268736 () Bool)

(declare-fun e!1453018 () Bool)

(declare-fun tp!717835 () Bool)

(declare-fun tp!717834 () Bool)

(assert (=> b!2268736 (= e!1453018 (and tp!717835 tp!717834))))

(assert (=> b!2268017 (= tp!717671 e!1453018)))

(declare-fun b!2268734 () Bool)

(declare-fun tp!717832 () Bool)

(declare-fun tp!717833 () Bool)

(assert (=> b!2268734 (= e!1453018 (and tp!717832 tp!717833))))

(declare-fun b!2268735 () Bool)

(declare-fun tp!717831 () Bool)

(assert (=> b!2268735 (= e!1453018 tp!717831)))

(declare-fun b!2268733 () Bool)

(assert (=> b!2268733 (= e!1453018 tp_is_empty!10511)))

(assert (= (and b!2268017 ((_ is ElementMatch!6645) (regex!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) b!2268733))

(assert (= (and b!2268017 ((_ is Concat!11105) (regex!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) b!2268734))

(assert (= (and b!2268017 ((_ is Star!6645) (regex!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) b!2268735))

(assert (= (and b!2268017 ((_ is Union!6645) (regex!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) b!2268736))

(declare-fun b!2268737 () Bool)

(declare-fun e!1453019 () Bool)

(declare-fun tp!717836 () Bool)

(assert (=> b!2268737 (= e!1453019 (and tp_is_empty!10511 tp!717836))))

(assert (=> b!2267990 (= tp!717643 e!1453019)))

(assert (= (and b!2267990 ((_ is Cons!26966) (t!202202 (t!202202 otherP!12)))) b!2268737))

(declare-fun b!2268741 () Bool)

(declare-fun e!1453020 () Bool)

(declare-fun tp!717841 () Bool)

(declare-fun tp!717840 () Bool)

(assert (=> b!2268741 (= e!1453020 (and tp!717841 tp!717840))))

(assert (=> b!2267973 (= tp!717627 e!1453020)))

(declare-fun b!2268739 () Bool)

(declare-fun tp!717838 () Bool)

(declare-fun tp!717839 () Bool)

(assert (=> b!2268739 (= e!1453020 (and tp!717838 tp!717839))))

(declare-fun b!2268740 () Bool)

(declare-fun tp!717837 () Bool)

(assert (=> b!2268740 (= e!1453020 tp!717837)))

(declare-fun b!2268738 () Bool)

(assert (=> b!2268738 (= e!1453020 tp_is_empty!10511)))

(assert (= (and b!2267973 ((_ is ElementMatch!6645) (regOne!13803 (regex!4297 r!2363)))) b!2268738))

(assert (= (and b!2267973 ((_ is Concat!11105) (regOne!13803 (regex!4297 r!2363)))) b!2268739))

(assert (= (and b!2267973 ((_ is Star!6645) (regOne!13803 (regex!4297 r!2363)))) b!2268740))

(assert (= (and b!2267973 ((_ is Union!6645) (regOne!13803 (regex!4297 r!2363)))) b!2268741))

(declare-fun b!2268745 () Bool)

(declare-fun e!1453021 () Bool)

(declare-fun tp!717846 () Bool)

(declare-fun tp!717845 () Bool)

(assert (=> b!2268745 (= e!1453021 (and tp!717846 tp!717845))))

(assert (=> b!2267973 (= tp!717626 e!1453021)))

(declare-fun b!2268743 () Bool)

(declare-fun tp!717843 () Bool)

(declare-fun tp!717844 () Bool)

(assert (=> b!2268743 (= e!1453021 (and tp!717843 tp!717844))))

(declare-fun b!2268744 () Bool)

(declare-fun tp!717842 () Bool)

(assert (=> b!2268744 (= e!1453021 tp!717842)))

(declare-fun b!2268742 () Bool)

(assert (=> b!2268742 (= e!1453021 tp_is_empty!10511)))

(assert (= (and b!2267973 ((_ is ElementMatch!6645) (regTwo!13803 (regex!4297 r!2363)))) b!2268742))

(assert (= (and b!2267973 ((_ is Concat!11105) (regTwo!13803 (regex!4297 r!2363)))) b!2268743))

(assert (= (and b!2267973 ((_ is Star!6645) (regTwo!13803 (regex!4297 r!2363)))) b!2268744))

(assert (= (and b!2267973 ((_ is Union!6645) (regTwo!13803 (regex!4297 r!2363)))) b!2268745))

(declare-fun b!2268749 () Bool)

(declare-fun e!1453022 () Bool)

(declare-fun tp!717851 () Bool)

(declare-fun tp!717850 () Bool)

(assert (=> b!2268749 (= e!1453022 (and tp!717851 tp!717850))))

(assert (=> b!2267972 (= tp!717623 e!1453022)))

(declare-fun b!2268747 () Bool)

(declare-fun tp!717848 () Bool)

(declare-fun tp!717849 () Bool)

(assert (=> b!2268747 (= e!1453022 (and tp!717848 tp!717849))))

(declare-fun b!2268748 () Bool)

(declare-fun tp!717847 () Bool)

(assert (=> b!2268748 (= e!1453022 tp!717847)))

(declare-fun b!2268746 () Bool)

(assert (=> b!2268746 (= e!1453022 tp_is_empty!10511)))

(assert (= (and b!2267972 ((_ is ElementMatch!6645) (reg!6974 (regex!4297 r!2363)))) b!2268746))

(assert (= (and b!2267972 ((_ is Concat!11105) (reg!6974 (regex!4297 r!2363)))) b!2268747))

(assert (= (and b!2267972 ((_ is Star!6645) (reg!6974 (regex!4297 r!2363)))) b!2268748))

(assert (= (and b!2267972 ((_ is Union!6645) (reg!6974 (regex!4297 r!2363)))) b!2268749))

(declare-fun b!2268750 () Bool)

(declare-fun e!1453023 () Bool)

(declare-fun tp!717852 () Bool)

(assert (=> b!2268750 (= e!1453023 (and tp_is_empty!10511 tp!717852))))

(assert (=> b!2268016 (= tp!717675 e!1453023)))

(assert (= (and b!2268016 ((_ is Cons!26966) (originalCharacters!5067 (h!32369 (t!202204 tokens!456))))) b!2268750))

(declare-fun b!2268754 () Bool)

(declare-fun e!1453024 () Bool)

(declare-fun tp!717857 () Bool)

(declare-fun tp!717856 () Bool)

(assert (=> b!2268754 (= e!1453024 (and tp!717857 tp!717856))))

(assert (=> b!2267997 (= tp!717651 e!1453024)))

(declare-fun b!2268752 () Bool)

(declare-fun tp!717854 () Bool)

(declare-fun tp!717855 () Bool)

(assert (=> b!2268752 (= e!1453024 (and tp!717854 tp!717855))))

(declare-fun b!2268753 () Bool)

(declare-fun tp!717853 () Bool)

(assert (=> b!2268753 (= e!1453024 tp!717853)))

(declare-fun b!2268751 () Bool)

(assert (=> b!2268751 (= e!1453024 tp_is_empty!10511)))

(assert (= (and b!2267997 ((_ is ElementMatch!6645) (regOne!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268751))

(assert (= (and b!2267997 ((_ is Concat!11105) (regOne!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268752))

(assert (= (and b!2267997 ((_ is Star!6645) (regOne!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268753))

(assert (= (and b!2267997 ((_ is Union!6645) (regOne!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268754))

(declare-fun b!2268758 () Bool)

(declare-fun e!1453025 () Bool)

(declare-fun tp!717862 () Bool)

(declare-fun tp!717861 () Bool)

(assert (=> b!2268758 (= e!1453025 (and tp!717862 tp!717861))))

(assert (=> b!2267997 (= tp!717652 e!1453025)))

(declare-fun b!2268756 () Bool)

(declare-fun tp!717859 () Bool)

(declare-fun tp!717860 () Bool)

(assert (=> b!2268756 (= e!1453025 (and tp!717859 tp!717860))))

(declare-fun b!2268757 () Bool)

(declare-fun tp!717858 () Bool)

(assert (=> b!2268757 (= e!1453025 tp!717858)))

(declare-fun b!2268755 () Bool)

(assert (=> b!2268755 (= e!1453025 tp_is_empty!10511)))

(assert (= (and b!2267997 ((_ is ElementMatch!6645) (regTwo!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268755))

(assert (= (and b!2267997 ((_ is Concat!11105) (regTwo!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268756))

(assert (= (and b!2267997 ((_ is Star!6645) (regTwo!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268757))

(assert (= (and b!2267997 ((_ is Union!6645) (regTwo!13802 (regex!4297 (rule!6613 (h!32369 tokens!456)))))) b!2268758))

(declare-fun b!2268759 () Bool)

(declare-fun e!1453026 () Bool)

(declare-fun tp!717863 () Bool)

(assert (=> b!2268759 (= e!1453026 (and tp_is_empty!10511 tp!717863))))

(assert (=> b!2267991 (= tp!717644 e!1453026)))

(assert (= (and b!2267991 ((_ is Cons!26966) (t!202202 (originalCharacters!5067 (h!32369 tokens!456))))) b!2268759))

(declare-fun b!2268763 () Bool)

(declare-fun e!1453027 () Bool)

(declare-fun tp!717868 () Bool)

(declare-fun tp!717867 () Bool)

(assert (=> b!2268763 (= e!1453027 (and tp!717868 tp!717867))))

(assert (=> b!2268001 (= tp!717656 e!1453027)))

(declare-fun b!2268761 () Bool)

(declare-fun tp!717865 () Bool)

(declare-fun tp!717866 () Bool)

(assert (=> b!2268761 (= e!1453027 (and tp!717865 tp!717866))))

(declare-fun b!2268762 () Bool)

(declare-fun tp!717864 () Bool)

(assert (=> b!2268762 (= e!1453027 tp!717864)))

(declare-fun b!2268760 () Bool)

(assert (=> b!2268760 (= e!1453027 tp_is_empty!10511)))

(assert (= (and b!2268001 ((_ is ElementMatch!6645) (regOne!13802 (regex!4297 (h!32368 rules!1750))))) b!2268760))

(assert (= (and b!2268001 ((_ is Concat!11105) (regOne!13802 (regex!4297 (h!32368 rules!1750))))) b!2268761))

(assert (= (and b!2268001 ((_ is Star!6645) (regOne!13802 (regex!4297 (h!32368 rules!1750))))) b!2268762))

(assert (= (and b!2268001 ((_ is Union!6645) (regOne!13802 (regex!4297 (h!32368 rules!1750))))) b!2268763))

(declare-fun b!2268767 () Bool)

(declare-fun e!1453028 () Bool)

(declare-fun tp!717873 () Bool)

(declare-fun tp!717872 () Bool)

(assert (=> b!2268767 (= e!1453028 (and tp!717873 tp!717872))))

(assert (=> b!2268001 (= tp!717657 e!1453028)))

(declare-fun b!2268765 () Bool)

(declare-fun tp!717870 () Bool)

(declare-fun tp!717871 () Bool)

(assert (=> b!2268765 (= e!1453028 (and tp!717870 tp!717871))))

(declare-fun b!2268766 () Bool)

(declare-fun tp!717869 () Bool)

(assert (=> b!2268766 (= e!1453028 tp!717869)))

(declare-fun b!2268764 () Bool)

(assert (=> b!2268764 (= e!1453028 tp_is_empty!10511)))

(assert (= (and b!2268001 ((_ is ElementMatch!6645) (regTwo!13802 (regex!4297 (h!32368 rules!1750))))) b!2268764))

(assert (= (and b!2268001 ((_ is Concat!11105) (regTwo!13802 (regex!4297 (h!32368 rules!1750))))) b!2268765))

(assert (= (and b!2268001 ((_ is Star!6645) (regTwo!13802 (regex!4297 (h!32368 rules!1750))))) b!2268766))

(assert (= (and b!2268001 ((_ is Union!6645) (regTwo!13802 (regex!4297 (h!32368 rules!1750))))) b!2268767))

(declare-fun b!2268771 () Bool)

(declare-fun e!1453029 () Bool)

(declare-fun tp!717878 () Bool)

(declare-fun tp!717877 () Bool)

(assert (=> b!2268771 (= e!1453029 (and tp!717878 tp!717877))))

(assert (=> b!2267994 (= tp!717645 e!1453029)))

(declare-fun b!2268769 () Bool)

(declare-fun tp!717875 () Bool)

(declare-fun tp!717876 () Bool)

(assert (=> b!2268769 (= e!1453029 (and tp!717875 tp!717876))))

(declare-fun b!2268770 () Bool)

(declare-fun tp!717874 () Bool)

(assert (=> b!2268770 (= e!1453029 tp!717874)))

(declare-fun b!2268768 () Bool)

(assert (=> b!2268768 (= e!1453029 tp_is_empty!10511)))

(assert (= (and b!2267994 ((_ is ElementMatch!6645) (reg!6974 (regex!4297 otherR!12)))) b!2268768))

(assert (= (and b!2267994 ((_ is Concat!11105) (reg!6974 (regex!4297 otherR!12)))) b!2268769))

(assert (= (and b!2267994 ((_ is Star!6645) (reg!6974 (regex!4297 otherR!12)))) b!2268770))

(assert (= (and b!2267994 ((_ is Union!6645) (reg!6974 (regex!4297 otherR!12)))) b!2268771))

(declare-fun e!1453035 () Bool)

(declare-fun tp!717885 () Bool)

(declare-fun tp!717887 () Bool)

(declare-fun b!2268780 () Bool)

(assert (=> b!2268780 (= e!1453035 (and (inv!36513 (left!20459 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))))) tp!717885 (inv!36513 (right!20789 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))))) tp!717887))))

(declare-fun b!2268782 () Bool)

(declare-fun e!1453034 () Bool)

(declare-fun tp!717886 () Bool)

(assert (=> b!2268782 (= e!1453034 tp!717886)))

(declare-fun b!2268781 () Bool)

(declare-fun inv!36520 (IArray!17489) Bool)

(assert (=> b!2268781 (= e!1453035 (and (inv!36520 (xs!11684 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))))) e!1453034))))

(assert (=> b!2267959 (= tp!717612 (and (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456))))) e!1453035))))

(assert (= (and b!2267959 ((_ is Node!8742) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))))) b!2268780))

(assert (= b!2268781 b!2268782))

(assert (= (and b!2267959 ((_ is Leaf!12876) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (value!136284 (h!32369 tokens!456)))))) b!2268781))

(declare-fun m!2697847 () Bool)

(assert (=> b!2268780 m!2697847))

(declare-fun m!2697849 () Bool)

(assert (=> b!2268780 m!2697849))

(declare-fun m!2697851 () Bool)

(assert (=> b!2268781 m!2697851))

(assert (=> b!2267959 m!2696943))

(declare-fun b!2268786 () Bool)

(declare-fun e!1453036 () Bool)

(declare-fun tp!717892 () Bool)

(declare-fun tp!717891 () Bool)

(assert (=> b!2268786 (= e!1453036 (and tp!717892 tp!717891))))

(assert (=> b!2268003 (= tp!717659 e!1453036)))

(declare-fun b!2268784 () Bool)

(declare-fun tp!717889 () Bool)

(declare-fun tp!717890 () Bool)

(assert (=> b!2268784 (= e!1453036 (and tp!717889 tp!717890))))

(declare-fun b!2268785 () Bool)

(declare-fun tp!717888 () Bool)

(assert (=> b!2268785 (= e!1453036 tp!717888)))

(declare-fun b!2268783 () Bool)

(assert (=> b!2268783 (= e!1453036 tp_is_empty!10511)))

(assert (= (and b!2268003 ((_ is ElementMatch!6645) (regOne!13803 (regex!4297 (h!32368 rules!1750))))) b!2268783))

(assert (= (and b!2268003 ((_ is Concat!11105) (regOne!13803 (regex!4297 (h!32368 rules!1750))))) b!2268784))

(assert (= (and b!2268003 ((_ is Star!6645) (regOne!13803 (regex!4297 (h!32368 rules!1750))))) b!2268785))

(assert (= (and b!2268003 ((_ is Union!6645) (regOne!13803 (regex!4297 (h!32368 rules!1750))))) b!2268786))

(declare-fun b!2268790 () Bool)

(declare-fun e!1453037 () Bool)

(declare-fun tp!717897 () Bool)

(declare-fun tp!717896 () Bool)

(assert (=> b!2268790 (= e!1453037 (and tp!717897 tp!717896))))

(assert (=> b!2268003 (= tp!717658 e!1453037)))

(declare-fun b!2268788 () Bool)

(declare-fun tp!717894 () Bool)

(declare-fun tp!717895 () Bool)

(assert (=> b!2268788 (= e!1453037 (and tp!717894 tp!717895))))

(declare-fun b!2268789 () Bool)

(declare-fun tp!717893 () Bool)

(assert (=> b!2268789 (= e!1453037 tp!717893)))

(declare-fun b!2268787 () Bool)

(assert (=> b!2268787 (= e!1453037 tp_is_empty!10511)))

(assert (= (and b!2268003 ((_ is ElementMatch!6645) (regTwo!13803 (regex!4297 (h!32368 rules!1750))))) b!2268787))

(assert (= (and b!2268003 ((_ is Concat!11105) (regTwo!13803 (regex!4297 (h!32368 rules!1750))))) b!2268788))

(assert (= (and b!2268003 ((_ is Star!6645) (regTwo!13803 (regex!4297 (h!32368 rules!1750))))) b!2268789))

(assert (= (and b!2268003 ((_ is Union!6645) (regTwo!13803 (regex!4297 (h!32368 rules!1750))))) b!2268790))

(declare-fun b!2268794 () Bool)

(declare-fun e!1453038 () Bool)

(declare-fun tp!717902 () Bool)

(declare-fun tp!717901 () Bool)

(assert (=> b!2268794 (= e!1453038 (and tp!717902 tp!717901))))

(assert (=> b!2268002 (= tp!717655 e!1453038)))

(declare-fun b!2268792 () Bool)

(declare-fun tp!717899 () Bool)

(declare-fun tp!717900 () Bool)

(assert (=> b!2268792 (= e!1453038 (and tp!717899 tp!717900))))

(declare-fun b!2268793 () Bool)

(declare-fun tp!717898 () Bool)

(assert (=> b!2268793 (= e!1453038 tp!717898)))

(declare-fun b!2268791 () Bool)

(assert (=> b!2268791 (= e!1453038 tp_is_empty!10511)))

(assert (= (and b!2268002 ((_ is ElementMatch!6645) (reg!6974 (regex!4297 (h!32368 rules!1750))))) b!2268791))

(assert (= (and b!2268002 ((_ is Concat!11105) (reg!6974 (regex!4297 (h!32368 rules!1750))))) b!2268792))

(assert (= (and b!2268002 ((_ is Star!6645) (reg!6974 (regex!4297 (h!32368 rules!1750))))) b!2268793))

(assert (= (and b!2268002 ((_ is Union!6645) (reg!6974 (regex!4297 (h!32368 rules!1750))))) b!2268794))

(declare-fun b!2268798 () Bool)

(declare-fun e!1453039 () Bool)

(declare-fun tp!717907 () Bool)

(declare-fun tp!717906 () Bool)

(assert (=> b!2268798 (= e!1453039 (and tp!717907 tp!717906))))

(assert (=> b!2267993 (= tp!717646 e!1453039)))

(declare-fun b!2268796 () Bool)

(declare-fun tp!717904 () Bool)

(declare-fun tp!717905 () Bool)

(assert (=> b!2268796 (= e!1453039 (and tp!717904 tp!717905))))

(declare-fun b!2268797 () Bool)

(declare-fun tp!717903 () Bool)

(assert (=> b!2268797 (= e!1453039 tp!717903)))

(declare-fun b!2268795 () Bool)

(assert (=> b!2268795 (= e!1453039 tp_is_empty!10511)))

(assert (= (and b!2267993 ((_ is ElementMatch!6645) (regOne!13802 (regex!4297 otherR!12)))) b!2268795))

(assert (= (and b!2267993 ((_ is Concat!11105) (regOne!13802 (regex!4297 otherR!12)))) b!2268796))

(assert (= (and b!2267993 ((_ is Star!6645) (regOne!13802 (regex!4297 otherR!12)))) b!2268797))

(assert (= (and b!2267993 ((_ is Union!6645) (regOne!13802 (regex!4297 otherR!12)))) b!2268798))

(declare-fun b!2268802 () Bool)

(declare-fun e!1453040 () Bool)

(declare-fun tp!717912 () Bool)

(declare-fun tp!717911 () Bool)

(assert (=> b!2268802 (= e!1453040 (and tp!717912 tp!717911))))

(assert (=> b!2267993 (= tp!717647 e!1453040)))

(declare-fun b!2268800 () Bool)

(declare-fun tp!717909 () Bool)

(declare-fun tp!717910 () Bool)

(assert (=> b!2268800 (= e!1453040 (and tp!717909 tp!717910))))

(declare-fun b!2268801 () Bool)

(declare-fun tp!717908 () Bool)

(assert (=> b!2268801 (= e!1453040 tp!717908)))

(declare-fun b!2268799 () Bool)

(assert (=> b!2268799 (= e!1453040 tp_is_empty!10511)))

(assert (= (and b!2267993 ((_ is ElementMatch!6645) (regTwo!13802 (regex!4297 otherR!12)))) b!2268799))

(assert (= (and b!2267993 ((_ is Concat!11105) (regTwo!13802 (regex!4297 otherR!12)))) b!2268800))

(assert (= (and b!2267993 ((_ is Star!6645) (regTwo!13802 (regex!4297 otherR!12)))) b!2268801))

(assert (= (and b!2267993 ((_ is Union!6645) (regTwo!13802 (regex!4297 otherR!12)))) b!2268802))

(declare-fun b!2268803 () Bool)

(declare-fun e!1453041 () Bool)

(declare-fun tp!717913 () Bool)

(assert (=> b!2268803 (= e!1453041 (and tp_is_empty!10511 tp!717913))))

(assert (=> b!2268004 (= tp!717660 e!1453041)))

(assert (= (and b!2268004 ((_ is Cons!26966) (t!202202 (t!202202 suffix!886)))) b!2268803))

(declare-fun b!2268807 () Bool)

(declare-fun e!1453042 () Bool)

(declare-fun tp!717918 () Bool)

(declare-fun tp!717917 () Bool)

(assert (=> b!2268807 (= e!1453042 (and tp!717918 tp!717917))))

(assert (=> b!2267995 (= tp!717649 e!1453042)))

(declare-fun b!2268805 () Bool)

(declare-fun tp!717915 () Bool)

(declare-fun tp!717916 () Bool)

(assert (=> b!2268805 (= e!1453042 (and tp!717915 tp!717916))))

(declare-fun b!2268806 () Bool)

(declare-fun tp!717914 () Bool)

(assert (=> b!2268806 (= e!1453042 tp!717914)))

(declare-fun b!2268804 () Bool)

(assert (=> b!2268804 (= e!1453042 tp_is_empty!10511)))

(assert (= (and b!2267995 ((_ is ElementMatch!6645) (regOne!13803 (regex!4297 otherR!12)))) b!2268804))

(assert (= (and b!2267995 ((_ is Concat!11105) (regOne!13803 (regex!4297 otherR!12)))) b!2268805))

(assert (= (and b!2267995 ((_ is Star!6645) (regOne!13803 (regex!4297 otherR!12)))) b!2268806))

(assert (= (and b!2267995 ((_ is Union!6645) (regOne!13803 (regex!4297 otherR!12)))) b!2268807))

(declare-fun b!2268811 () Bool)

(declare-fun e!1453043 () Bool)

(declare-fun tp!717923 () Bool)

(declare-fun tp!717922 () Bool)

(assert (=> b!2268811 (= e!1453043 (and tp!717923 tp!717922))))

(assert (=> b!2267995 (= tp!717648 e!1453043)))

(declare-fun b!2268809 () Bool)

(declare-fun tp!717920 () Bool)

(declare-fun tp!717921 () Bool)

(assert (=> b!2268809 (= e!1453043 (and tp!717920 tp!717921))))

(declare-fun b!2268810 () Bool)

(declare-fun tp!717919 () Bool)

(assert (=> b!2268810 (= e!1453043 tp!717919)))

(declare-fun b!2268808 () Bool)

(assert (=> b!2268808 (= e!1453043 tp_is_empty!10511)))

(assert (= (and b!2267995 ((_ is ElementMatch!6645) (regTwo!13803 (regex!4297 otherR!12)))) b!2268808))

(assert (= (and b!2267995 ((_ is Concat!11105) (regTwo!13803 (regex!4297 otherR!12)))) b!2268809))

(assert (= (and b!2267995 ((_ is Star!6645) (regTwo!13803 (regex!4297 otherR!12)))) b!2268810))

(assert (= (and b!2267995 ((_ is Union!6645) (regTwo!13803 (regex!4297 otherR!12)))) b!2268811))

(declare-fun tp!717926 () Bool)

(declare-fun e!1453045 () Bool)

(declare-fun tp!717924 () Bool)

(declare-fun b!2268812 () Bool)

(assert (=> b!2268812 (= e!1453045 (and (inv!36513 (left!20459 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))))) tp!717924 (inv!36513 (right!20789 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))))) tp!717926))))

(declare-fun b!2268814 () Bool)

(declare-fun e!1453044 () Bool)

(declare-fun tp!717925 () Bool)

(assert (=> b!2268814 (= e!1453044 tp!717925)))

(declare-fun b!2268813 () Bool)

(assert (=> b!2268813 (= e!1453045 (and (inv!36520 (xs!11684 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))))) e!1453044))))

(assert (=> b!2267616 (= tp!717544 (and (inv!36513 (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456))))) e!1453045))))

(assert (= (and b!2267616 ((_ is Node!8742) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))))) b!2268812))

(assert (= b!2268813 b!2268814))

(assert (= (and b!2267616 ((_ is Leaf!12876) (c!360048 (dynLambda!11679 (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))) (value!136284 (head!4886 tokens!456)))))) b!2268813))

(declare-fun m!2697853 () Bool)

(assert (=> b!2268812 m!2697853))

(declare-fun m!2697855 () Bool)

(assert (=> b!2268812 m!2697855))

(declare-fun m!2697857 () Bool)

(assert (=> b!2268813 m!2697857))

(assert (=> b!2267616 m!2696655))

(declare-fun b!2268818 () Bool)

(declare-fun e!1453046 () Bool)

(declare-fun tp!717931 () Bool)

(declare-fun tp!717930 () Bool)

(assert (=> b!2268818 (= e!1453046 (and tp!717931 tp!717930))))

(assert (=> b!2267983 (= tp!717636 e!1453046)))

(declare-fun b!2268816 () Bool)

(declare-fun tp!717928 () Bool)

(declare-fun tp!717929 () Bool)

(assert (=> b!2268816 (= e!1453046 (and tp!717928 tp!717929))))

(declare-fun b!2268817 () Bool)

(declare-fun tp!717927 () Bool)

(assert (=> b!2268817 (= e!1453046 tp!717927)))

(declare-fun b!2268815 () Bool)

(assert (=> b!2268815 (= e!1453046 tp_is_empty!10511)))

(assert (= (and b!2267983 ((_ is ElementMatch!6645) (regex!4297 (h!32368 (t!202203 rules!1750))))) b!2268815))

(assert (= (and b!2267983 ((_ is Concat!11105) (regex!4297 (h!32368 (t!202203 rules!1750))))) b!2268816))

(assert (= (and b!2267983 ((_ is Star!6645) (regex!4297 (h!32368 (t!202203 rules!1750))))) b!2268817))

(assert (= (and b!2267983 ((_ is Union!6645) (regex!4297 (h!32368 (t!202203 rules!1750))))) b!2268818))

(declare-fun b!2268821 () Bool)

(declare-fun b_free!67333 () Bool)

(declare-fun b_next!68037 () Bool)

(assert (=> b!2268821 (= b_free!67333 (not b_next!68037))))

(declare-fun t!202354 () Bool)

(declare-fun tb!134587 () Bool)

(assert (=> (and b!2268821 (= (toValue!6051 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202354) tb!134587))

(declare-fun result!164094 () Bool)

(assert (= result!164094 result!164078))

(assert (=> d!671594 t!202354))

(declare-fun b_and!178665 () Bool)

(declare-fun tp!717935 () Bool)

(assert (=> b!2268821 (= tp!717935 (and (=> t!202354 result!164094) b_and!178665))))

(declare-fun b_free!67335 () Bool)

(declare-fun b_next!68039 () Bool)

(assert (=> b!2268821 (= b_free!67335 (not b_next!68039))))

(declare-fun t!202356 () Bool)

(declare-fun tb!134589 () Bool)

(assert (=> (and b!2268821 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202356) tb!134589))

(declare-fun result!164096 () Bool)

(assert (= result!164096 result!163926))

(assert (=> d!671210 t!202356))

(declare-fun tb!134591 () Bool)

(declare-fun t!202358 () Bool)

(assert (=> (and b!2268821 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202358) tb!134591))

(declare-fun result!164098 () Bool)

(assert (= result!164098 result!163970))

(assert (=> b!2267957 t!202358))

(declare-fun tb!134593 () Bool)

(declare-fun t!202360 () Bool)

(assert (=> (and b!2268821 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202360) tb!134593))

(declare-fun result!164100 () Bool)

(assert (= result!164100 result!164032))

(assert (=> d!671458 t!202360))

(declare-fun t!202362 () Bool)

(declare-fun tb!134595 () Bool)

(assert (=> (and b!2268821 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202362) tb!134595))

(declare-fun result!164102 () Bool)

(assert (= result!164102 result!164044))

(assert (=> b!2268371 t!202362))

(declare-fun b_and!178667 () Bool)

(declare-fun tp!717933 () Bool)

(assert (=> b!2268821 (= tp!717933 (and (=> t!202356 result!164096) (=> t!202358 result!164098) (=> t!202360 result!164100) (=> t!202362 result!164102) b_and!178667))))

(declare-fun e!1453048 () Bool)

(assert (=> b!2268821 (= e!1453048 (and tp!717935 tp!717933))))

(declare-fun b!2268820 () Bool)

(declare-fun e!1453050 () Bool)

(declare-fun tp!717932 () Bool)

(assert (=> b!2268820 (= e!1453050 (and tp!717932 (inv!36506 (tag!4787 (h!32368 (t!202203 (t!202203 rules!1750))))) (inv!36509 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) e!1453048))))

(declare-fun b!2268819 () Bool)

(declare-fun e!1453047 () Bool)

(declare-fun tp!717934 () Bool)

(assert (=> b!2268819 (= e!1453047 (and e!1453050 tp!717934))))

(assert (=> b!2267982 (= tp!717638 e!1453047)))

(assert (= b!2268820 b!2268821))

(assert (= b!2268819 b!2268820))

(assert (= (and b!2267982 ((_ is Cons!26967) (t!202203 (t!202203 rules!1750)))) b!2268819))

(declare-fun m!2697859 () Bool)

(assert (=> b!2268820 m!2697859))

(declare-fun m!2697861 () Bool)

(assert (=> b!2268820 m!2697861))

(declare-fun b!2268825 () Bool)

(declare-fun b_free!67337 () Bool)

(declare-fun b_next!68041 () Bool)

(assert (=> b!2268825 (= b_free!67337 (not b_next!68041))))

(declare-fun tb!134597 () Bool)

(declare-fun t!202364 () Bool)

(assert (=> (and b!2268825 (= (toValue!6051 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (toValue!6051 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202364) tb!134597))

(declare-fun result!164104 () Bool)

(assert (= result!164104 result!164078))

(assert (=> d!671594 t!202364))

(declare-fun tp!717937 () Bool)

(declare-fun b_and!178669 () Bool)

(assert (=> b!2268825 (= tp!717937 (and (=> t!202364 result!164104) b_and!178669))))

(declare-fun b_free!67339 () Bool)

(declare-fun b_next!68043 () Bool)

(assert (=> b!2268825 (= b_free!67339 (not b_next!68043))))

(declare-fun t!202366 () Bool)

(declare-fun tb!134599 () Bool)

(assert (=> (and b!2268825 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456))))) t!202366) tb!134599))

(declare-fun result!164106 () Bool)

(assert (= result!164106 result!163926))

(assert (=> d!671210 t!202366))

(declare-fun t!202368 () Bool)

(declare-fun tb!134601 () Bool)

(assert (=> (and b!2268825 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456))))) t!202368) tb!134601))

(declare-fun result!164108 () Bool)

(assert (= result!164108 result!163970))

(assert (=> b!2267957 t!202368))

(declare-fun t!202370 () Bool)

(declare-fun tb!134603 () Bool)

(assert (=> (and b!2268825 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (toChars!5910 (transformation!4297 (rule!6613 (_1!15821 (get!8139 lt!842657)))))) t!202370) tb!134603))

(declare-fun result!164110 () Bool)

(assert (= result!164110 result!164032))

(assert (=> d!671458 t!202370))

(declare-fun t!202372 () Bool)

(declare-fun tb!134605 () Bool)

(assert (=> (and b!2268825 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456)))))) t!202372) tb!134605))

(declare-fun result!164112 () Bool)

(assert (= result!164112 result!164044))

(assert (=> b!2268371 t!202372))

(declare-fun b_and!178671 () Bool)

(declare-fun tp!717939 () Bool)

(assert (=> b!2268825 (= tp!717939 (and (=> t!202366 result!164106) (=> t!202368 result!164108) (=> t!202370 result!164110) (=> t!202372 result!164112) b_and!178671))))

(declare-fun tp!717936 () Bool)

(declare-fun e!1453054 () Bool)

(declare-fun b!2268824 () Bool)

(declare-fun e!1453053 () Bool)

(assert (=> b!2268824 (= e!1453054 (and tp!717936 (inv!36506 (tag!4787 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (inv!36509 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) e!1453053))))

(declare-fun e!1453052 () Bool)

(assert (=> b!2268015 (= tp!717673 e!1453052)))

(assert (=> b!2268825 (= e!1453053 (and tp!717937 tp!717939))))

(declare-fun tp!717938 () Bool)

(declare-fun b!2268822 () Bool)

(declare-fun e!1453051 () Bool)

(assert (=> b!2268822 (= e!1453052 (and (inv!36510 (h!32369 (t!202204 (t!202204 tokens!456)))) e!1453051 tp!717938))))

(declare-fun tp!717940 () Bool)

(declare-fun b!2268823 () Bool)

(assert (=> b!2268823 (= e!1453051 (and (inv!21 (value!136284 (h!32369 (t!202204 (t!202204 tokens!456))))) e!1453054 tp!717940))))

(assert (= b!2268824 b!2268825))

(assert (= b!2268823 b!2268824))

(assert (= b!2268822 b!2268823))

(assert (= (and b!2268015 ((_ is Cons!26968) (t!202204 (t!202204 tokens!456)))) b!2268822))

(declare-fun m!2697863 () Bool)

(assert (=> b!2268824 m!2697863))

(declare-fun m!2697865 () Bool)

(assert (=> b!2268824 m!2697865))

(declare-fun m!2697867 () Bool)

(assert (=> b!2268822 m!2697867))

(declare-fun m!2697869 () Bool)

(assert (=> b!2268823 m!2697869))

(declare-fun b!2268829 () Bool)

(declare-fun e!1453057 () Bool)

(declare-fun tp!717945 () Bool)

(declare-fun tp!717944 () Bool)

(assert (=> b!2268829 (= e!1453057 (and tp!717945 tp!717944))))

(assert (=> b!2267971 (= tp!717624 e!1453057)))

(declare-fun b!2268827 () Bool)

(declare-fun tp!717942 () Bool)

(declare-fun tp!717943 () Bool)

(assert (=> b!2268827 (= e!1453057 (and tp!717942 tp!717943))))

(declare-fun b!2268828 () Bool)

(declare-fun tp!717941 () Bool)

(assert (=> b!2268828 (= e!1453057 tp!717941)))

(declare-fun b!2268826 () Bool)

(assert (=> b!2268826 (= e!1453057 tp_is_empty!10511)))

(assert (= (and b!2267971 ((_ is ElementMatch!6645) (regOne!13802 (regex!4297 r!2363)))) b!2268826))

(assert (= (and b!2267971 ((_ is Concat!11105) (regOne!13802 (regex!4297 r!2363)))) b!2268827))

(assert (= (and b!2267971 ((_ is Star!6645) (regOne!13802 (regex!4297 r!2363)))) b!2268828))

(assert (= (and b!2267971 ((_ is Union!6645) (regOne!13802 (regex!4297 r!2363)))) b!2268829))

(declare-fun b!2268833 () Bool)

(declare-fun e!1453058 () Bool)

(declare-fun tp!717950 () Bool)

(declare-fun tp!717949 () Bool)

(assert (=> b!2268833 (= e!1453058 (and tp!717950 tp!717949))))

(assert (=> b!2267971 (= tp!717625 e!1453058)))

(declare-fun b!2268831 () Bool)

(declare-fun tp!717947 () Bool)

(declare-fun tp!717948 () Bool)

(assert (=> b!2268831 (= e!1453058 (and tp!717947 tp!717948))))

(declare-fun b!2268832 () Bool)

(declare-fun tp!717946 () Bool)

(assert (=> b!2268832 (= e!1453058 tp!717946)))

(declare-fun b!2268830 () Bool)

(assert (=> b!2268830 (= e!1453058 tp_is_empty!10511)))

(assert (= (and b!2267971 ((_ is ElementMatch!6645) (regTwo!13802 (regex!4297 r!2363)))) b!2268830))

(assert (= (and b!2267971 ((_ is Concat!11105) (regTwo!13802 (regex!4297 r!2363)))) b!2268831))

(assert (= (and b!2267971 ((_ is Star!6645) (regTwo!13802 (regex!4297 r!2363)))) b!2268832))

(assert (= (and b!2267971 ((_ is Union!6645) (regTwo!13802 (regex!4297 r!2363)))) b!2268833))

(declare-fun b!2268834 () Bool)

(declare-fun e!1453059 () Bool)

(declare-fun tp!717951 () Bool)

(assert (=> b!2268834 (= e!1453059 (and tp_is_empty!10511 tp!717951))))

(assert (=> b!2267989 (= tp!717642 e!1453059)))

(assert (= (and b!2267989 ((_ is Cons!26966) (t!202202 (t!202202 input!1722)))) b!2268834))

(declare-fun b_lambda!72309 () Bool)

(assert (= b_lambda!72301 (or (and b!2268821 b_free!67335 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))))) (and b!2267539 b_free!67303 (= (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))))) (and b!2267984 b_free!67319 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))))) (and b!2268825 b_free!67339 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))))) (and b!2267549 b_free!67295 (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))))) (and b!2267546 b_free!67299 (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))))) (and b!2268018 b_free!67323) (and b!2267552 b_free!67307 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))))) b_lambda!72309)))

(declare-fun b_lambda!72311 () Bool)

(assert (= b_lambda!72281 (or (and b!2267546 b_free!67299 (= (toChars!5910 (transformation!4297 otherR!12)) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) (and b!2267984 b_free!67319 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 rules!1750)))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) (and b!2268825 b_free!67339 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 (t!202204 tokens!456)))))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) (and b!2268018 b_free!67323 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 (t!202204 tokens!456))))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) (and b!2267549 b_free!67295 (= (toChars!5910 (transformation!4297 r!2363)) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) (and b!2267552 b_free!67307 (= (toChars!5910 (transformation!4297 (rule!6613 (h!32369 tokens!456)))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) (and b!2267539 b_free!67303 (= (toChars!5910 (transformation!4297 (h!32368 rules!1750))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) (and b!2268821 b_free!67335 (= (toChars!5910 (transformation!4297 (h!32368 (t!202203 (t!202203 rules!1750))))) (toChars!5910 (transformation!4297 (rule!6613 (head!4886 tokens!456)))))) b_lambda!72311)))

(check-sat (not b!2268761) (not b_lambda!72309) (not d!671508) (not b!2268313) (not d!671458) (not b!2268792) b_and!178637 (not d!671646) (not b!2268384) (not b!2268638) (not b!2268785) (not b!2268820) (not b!2268460) (not b!2268455) (not b!2268365) (not b!2268811) (not b!2268766) (not b!2268280) (not bm!136027) (not b!2268284) (not d!671548) b_and!178671 (not b!2268805) (not d!671620) (not d!671576) (not b!2268242) (not b!2268802) (not b!2268797) (not b!2268780) (not b!2268653) (not b!2268832) (not b!2268385) (not b!2268396) (not b!2268027) (not b!2268788) (not b!2268752) (not b!2268806) (not b!2268801) (not b!2268019) (not b!2268833) (not b!2268463) (not b!2268813) (not bm!136057) (not b!2268749) (not b!2268740) (not b!2268699) (not d!671588) (not b_next!68025) (not b!2268769) (not b!2268743) b_and!178661 (not b!2268024) (not b!2268770) (not d!671650) (not b!2268399) (not b!2268781) (not b!2268741) (not b!2268634) (not d!671644) (not b!2268753) (not b_next!67997) (not b!2268829) (not b!2268368) (not d!671610) (not b!2268748) (not d!671606) (not bm!136070) (not b!2268405) (not b!2268735) (not d!671340) (not d!671454) (not b!2268264) b_and!178633 b_and!178643 (not b_next!68021) (not d!671556) (not d!671440) (not d!671430) (not b!2268052) (not b_next!68007) (not d!671500) (not tb!134531) (not b!2268750) (not b!2268807) (not bm!136056) (not bm!136020) (not b!2268723) (not b!2268402) (not b_lambda!72299) (not b!2268659) (not b!2268285) (not b!2268800) (not d!671592) (not d!671554) (not b!2268372) (not b!2268745) (not b!2268649) (not b!2268727) (not d!671536) (not tb!134543) (not b!2268736) (not b!2268789) (not b!2268823) (not d!671344) (not bm!136061) (not b!2268367) b_and!178657 (not b!2268366) (not d!671608) (not d!671574) (not b!2268724) (not b!2268279) (not b!2268758) (not b!2268819) (not b!2268759) (not b!2268812) (not d!671448) (not b!2268461) (not b!2268726) (not b!2268686) (not b!2268834) (not b!2268403) (not b!2268650) (not d!671598) (not b!2268388) (not b!2268719) (not b_next!68037) (not d!671638) (not b!2268371) (not b!2268794) (not b!2268657) (not b!2268712) (not tb!134575) (not b!2268731) (not b!2268030) (not d!671468) (not d!671334) (not b_next!68011) (not b!2268790) (not d!671534) (not b!2268810) (not b!2268457) b_and!178641 (not b!2268744) (not d!671552) (not d!671612) (not b!2268641) (not b!2268754) (not b!2268737) (not b!2268021) (not b!2268468) (not b_next!68001) (not d!671578) b_and!178659 (not b!2268784) (not b!2268818) (not b!2268809) (not b!2268458) (not d!671634) (not b!2268282) (not bm!136028) (not b!2268296) (not bm!136071) (not b!2268786) (not b_lambda!72307) (not b!2268765) (not b!2268695) (not d!671652) (not b_next!68009) (not b_next!68027) (not b!2268771) (not b!2268392) (not b!2268714) (not b!2268798) (not b!2268478) b_and!178667 (not b!2268238) (not d!671416) (not b!2268747) (not d!671544) (not b!2268762) (not b!2268020) (not b!2267959) (not d!671450) (not d!671622) (not b!2268466) (not b!2268739) (not b!2268793) (not d!671654) b_and!178663 (not b!2268462) (not b!2268026) (not b!2268728) (not bm!136060) (not b_next!68043) (not b!2268763) (not b!2268286) (not b!2268389) (not b!2268730) (not b!2268816) (not d!671628) (not b_next!68023) tp_is_empty!10511 (not b_lambda!72291) (not b!2268398) (not b!2268716) (not b!2268646) (not d!671602) (not d!671568) (not d!671614) (not d!671630) (not b!2268796) b_and!178665 (not b_next!67999) (not b!2268637) (not b!2268029) (not d!671452) (not b!2268696) (not b!2268464) (not b_lambda!72311) (not b!2268734) (not b_next!68039) (not d!671596) (not b!2268023) (not b!2268722) (not b!2268022) (not b!2268479) (not d!671656) (not b!2268782) (not b!2268373) (not d!671632) (not b!2268702) (not b!2268756) (not d!671624) (not b!2268456) b_and!178655 (not b!2268705) (not b_next!68005) (not b_next!68003) (not b!2267616) (not b!2268706) b_and!178669 (not b!2268757) (not b_next!68041) (not b!2268732) (not b!2268803) (not b!2268246) (not b!2268817) (not b!2268828) (not d!671590) (not b!2268814) b_and!178639 (not b!2268767) (not b!2268660) (not b!2268635) (not b!2268311) (not b!2268822) b_and!178653 b_and!178635 (not b!2268704) (not b!2268824) (not b!2268711) (not b!2268370) (not b!2268831) (not d!671604) (not b!2268827))
(check-sat b_and!178637 b_and!178671 (not b_next!67997) b_and!178657 (not b_next!68037) (not b_next!68011) b_and!178641 b_and!178667 (not b_next!68023) (not b_next!68039) b_and!178661 (not b_next!68025) b_and!178633 b_and!178643 (not b_next!68007) (not b_next!68021) (not b_next!68001) b_and!178659 (not b_next!68009) (not b_next!68027) b_and!178663 (not b_next!68043) b_and!178665 (not b_next!67999) (not b_next!68003) b_and!178655 (not b_next!68005) b_and!178669 (not b_next!68041) b_and!178639 b_and!178653 b_and!178635)
