; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!59178 () Bool)

(assert start!59178)

(declare-fun b!617287 () Bool)

(declare-fun b_free!17769 () Bool)

(declare-fun b_next!17785 () Bool)

(assert (=> b!617287 (= b_free!17769 (not b_next!17785))))

(declare-fun tp!191019 () Bool)

(declare-fun b_and!61283 () Bool)

(assert (=> b!617287 (= tp!191019 b_and!61283)))

(declare-fun b_free!17771 () Bool)

(declare-fun b_next!17787 () Bool)

(assert (=> b!617287 (= b_free!17771 (not b_next!17787))))

(declare-fun tp!191022 () Bool)

(declare-fun b_and!61285 () Bool)

(assert (=> b!617287 (= tp!191022 b_and!61285)))

(declare-fun b!617279 () Bool)

(declare-fun b_free!17773 () Bool)

(declare-fun b_next!17789 () Bool)

(assert (=> b!617279 (= b_free!17773 (not b_next!17789))))

(declare-fun tp!191016 () Bool)

(declare-fun b_and!61287 () Bool)

(assert (=> b!617279 (= tp!191016 b_and!61287)))

(declare-fun b_free!17775 () Bool)

(declare-fun b_next!17791 () Bool)

(assert (=> b!617279 (= b_free!17775 (not b_next!17791))))

(declare-fun tp!191020 () Bool)

(declare-fun b_and!61289 () Bool)

(assert (=> b!617279 (= tp!191020 b_and!61289)))

(declare-fun e!374393 () Bool)

(declare-fun tp!191018 () Bool)

(declare-fun b!617278 () Bool)

(declare-datatypes ((List!6244 0))(
  ( (Nil!6234) (Cons!6234 (h!11635 (_ BitVec 16)) (t!81483 List!6244)) )
))
(declare-datatypes ((TokenValue!1284 0))(
  ( (FloatLiteralValue!2568 (text!9433 List!6244)) (TokenValueExt!1283 (__x!4468 Int)) (Broken!6420 (value!40749 List!6244)) (Object!1293) (End!1284) (Def!1284) (Underscore!1284) (Match!1284) (Else!1284) (Error!1284) (Case!1284) (If!1284) (Extends!1284) (Abstract!1284) (Class!1284) (Val!1284) (DelimiterValue!2568 (del!1344 List!6244)) (KeywordValue!1290 (value!40750 List!6244)) (CommentValue!2568 (value!40751 List!6244)) (WhitespaceValue!2568 (value!40752 List!6244)) (IndentationValue!1284 (value!40753 List!6244)) (String!8169) (Int32!1284) (Broken!6421 (value!40754 List!6244)) (Boolean!1285) (Unit!11382) (OperatorValue!1287 (op!1344 List!6244)) (IdentifierValue!2568 (value!40755 List!6244)) (IdentifierValue!2569 (value!40756 List!6244)) (WhitespaceValue!2569 (value!40757 List!6244)) (True!2568) (False!2568) (Broken!6422 (value!40758 List!6244)) (Broken!6423 (value!40759 List!6244)) (True!2569) (RightBrace!1284) (RightBracket!1284) (Colon!1284) (Null!1284) (Comma!1284) (LeftBracket!1284) (False!2569) (LeftBrace!1284) (ImaginaryLiteralValue!1284 (text!9434 List!6244)) (StringLiteralValue!3852 (value!40760 List!6244)) (EOFValue!1284 (value!40761 List!6244)) (IdentValue!1284 (value!40762 List!6244)) (DelimiterValue!2569 (value!40763 List!6244)) (DedentValue!1284 (value!40764 List!6244)) (NewLineValue!1284 (value!40765 List!6244)) (IntegerValue!3852 (value!40766 (_ BitVec 32)) (text!9435 List!6244)) (IntegerValue!3853 (value!40767 Int) (text!9436 List!6244)) (Times!1284) (Or!1284) (Equal!1284) (Minus!1284) (Broken!6424 (value!40768 List!6244)) (And!1284) (Div!1284) (LessEqual!1284) (Mod!1284) (Concat!2878) (Not!1284) (Plus!1284) (SpaceValue!1284 (value!40769 List!6244)) (IntegerValue!3854 (value!40770 Int) (text!9437 List!6244)) (StringLiteralValue!3853 (text!9438 List!6244)) (FloatLiteralValue!2569 (text!9439 List!6244)) (BytesLiteralValue!1284 (value!40771 List!6244)) (CommentValue!2569 (value!40772 List!6244)) (StringLiteralValue!3854 (value!40773 List!6244)) (ErrorTokenValue!1284 (msg!1345 List!6244)) )
))
(declare-datatypes ((C!4114 0))(
  ( (C!4115 (val!2283 Int)) )
))
(declare-datatypes ((Regex!1594 0))(
  ( (ElementMatch!1594 (c!113783 C!4114)) (Concat!2879 (regOne!3700 Regex!1594) (regTwo!3700 Regex!1594)) (EmptyExpr!1594) (Star!1594 (reg!1923 Regex!1594)) (EmptyLang!1594) (Union!1594 (regOne!3701 Regex!1594) (regTwo!3701 Regex!1594)) )
))
(declare-datatypes ((String!8170 0))(
  ( (String!8171 (value!40774 String)) )
))
(declare-datatypes ((List!6245 0))(
  ( (Nil!6235) (Cons!6235 (h!11636 C!4114) (t!81484 List!6245)) )
))
(declare-datatypes ((IArray!3955 0))(
  ( (IArray!3956 (innerList!2035 List!6245)) )
))
(declare-datatypes ((Conc!1977 0))(
  ( (Node!1977 (left!4961 Conc!1977) (right!5291 Conc!1977) (csize!4184 Int) (cheight!2188 Int)) (Leaf!3116 (xs!4614 IArray!3955) (csize!4185 Int)) (Empty!1977) )
))
(declare-datatypes ((BalanceConc!3962 0))(
  ( (BalanceConc!3963 (c!113784 Conc!1977)) )
))
(declare-datatypes ((TokenValueInjection!2336 0))(
  ( (TokenValueInjection!2337 (toValue!2173 Int) (toChars!2032 Int)) )
))
(declare-datatypes ((Rule!2320 0))(
  ( (Rule!2321 (regex!1260 Regex!1594) (tag!1522 String!8170) (isSeparator!1260 Bool) (transformation!1260 TokenValueInjection!2336)) )
))
(declare-datatypes ((List!6246 0))(
  ( (Nil!6236) (Cons!6236 (h!11637 Rule!2320) (t!81485 List!6246)) )
))
(declare-fun rules!3744 () List!6246)

(declare-fun e!374394 () Bool)

(declare-fun inv!7920 (String!8170) Bool)

(declare-fun inv!7923 (TokenValueInjection!2336) Bool)

(assert (=> b!617278 (= e!374393 (and tp!191018 (inv!7920 (tag!1522 (h!11637 rules!3744))) (inv!7923 (transformation!1260 (h!11637 rules!3744))) e!374394))))

(declare-fun e!374390 () Bool)

(assert (=> b!617279 (= e!374390 (and tp!191016 tp!191020))))

(declare-fun res!268730 () Bool)

(declare-fun e!374385 () Bool)

(assert (=> start!59178 (=> (not res!268730) (not e!374385))))

(declare-datatypes ((LexerInterface!1148 0))(
  ( (LexerInterfaceExt!1145 (__x!4469 Int)) (Lexer!1146) )
))
(declare-fun thiss!25598 () LexerInterface!1148)

(assert (=> start!59178 (= res!268730 (is-Lexer!1146 thiss!25598))))

(assert (=> start!59178 e!374385))

(declare-fun e!374395 () Bool)

(assert (=> start!59178 e!374395))

(declare-fun e!374391 () Bool)

(assert (=> start!59178 e!374391))

(declare-fun e!374386 () Bool)

(assert (=> start!59178 e!374386))

(assert (=> start!59178 true))

(declare-fun e!374389 () Bool)

(assert (=> start!59178 e!374389))

(declare-fun b!617280 () Bool)

(declare-fun res!268731 () Bool)

(assert (=> b!617280 (=> (not res!268731) (not e!374385))))

(declare-fun input!3215 () List!6245)

(declare-datatypes ((Token!2244 0))(
  ( (Token!2245 (value!40775 TokenValue!1284) (rule!2048 Rule!2320) (size!4865 Int) (originalCharacters!1293 List!6245)) )
))
(declare-datatypes ((tuple2!7048 0))(
  ( (tuple2!7049 (_1!3788 Token!2244) (_2!3788 List!6245)) )
))
(declare-datatypes ((Option!1605 0))(
  ( (None!1604) (Some!1604 (v!16523 tuple2!7048)) )
))
(declare-fun isEmpty!4489 (Option!1605) Bool)

(declare-fun maxPrefix!838 (LexerInterface!1148 List!6246 List!6245) Option!1605)

(assert (=> b!617280 (= res!268731 (isEmpty!4489 (maxPrefix!838 thiss!25598 rules!3744 input!3215)))))

(declare-fun b!617281 () Bool)

(declare-fun res!268734 () Bool)

(assert (=> b!617281 (=> (not res!268734) (not e!374385))))

(declare-fun r!3983 () Rule!2320)

(declare-fun contains!1477 (List!6246 Rule!2320) Bool)

(assert (=> b!617281 (= res!268734 (contains!1477 rules!3744 r!3983))))

(declare-fun b!617282 () Bool)

(declare-fun res!268732 () Bool)

(assert (=> b!617282 (=> (not res!268732) (not e!374385))))

(declare-fun rulesInvariant!1109 (LexerInterface!1148 List!6246) Bool)

(assert (=> b!617282 (= res!268732 (rulesInvariant!1109 thiss!25598 rules!3744))))

(declare-fun b!617283 () Bool)

(declare-fun tp_is_empty!3547 () Bool)

(declare-fun tp!191023 () Bool)

(assert (=> b!617283 (= e!374389 (and tp_is_empty!3547 tp!191023))))

(declare-fun b!617284 () Bool)

(declare-fun res!268733 () Bool)

(assert (=> b!617284 (=> (not res!268733) (not e!374385))))

(declare-fun p!2908 () List!6245)

(declare-fun isPrefix!890 (List!6245 List!6245) Bool)

(assert (=> b!617284 (= res!268733 (isPrefix!890 p!2908 input!3215))))

(declare-fun b!617285 () Bool)

(declare-fun tp!191021 () Bool)

(assert (=> b!617285 (= e!374391 (and tp_is_empty!3547 tp!191021))))

(declare-fun b!617286 () Bool)

(declare-fun res!268736 () Bool)

(assert (=> b!617286 (=> (not res!268736) (not e!374385))))

(declare-fun isEmpty!4490 (List!6246) Bool)

(assert (=> b!617286 (= res!268736 (not (isEmpty!4490 rules!3744)))))

(assert (=> b!617287 (= e!374394 (and tp!191019 tp!191022))))

(declare-fun tp!191024 () Bool)

(declare-fun b!617288 () Bool)

(assert (=> b!617288 (= e!374395 (and tp!191024 (inv!7920 (tag!1522 r!3983)) (inv!7923 (transformation!1260 r!3983)) e!374390))))

(declare-fun b!617289 () Bool)

(declare-fun e!374387 () Bool)

(assert (=> b!617289 (= e!374385 (not e!374387))))

(declare-fun res!268735 () Bool)

(assert (=> b!617289 (=> res!268735 e!374387)))

(declare-fun lt!264501 () Option!1605)

(assert (=> b!617289 (= res!268735 (not (= lt!264501 None!1604)))))

(assert (=> b!617289 (isEmpty!4489 lt!264501)))

(declare-fun maxPrefixOneRule!495 (LexerInterface!1148 Rule!2320 List!6245) Option!1605)

(assert (=> b!617289 (= lt!264501 (maxPrefixOneRule!495 thiss!25598 r!3983 input!3215))))

(declare-datatypes ((Unit!11383 0))(
  ( (Unit!11384) )
))
(declare-fun lt!264504 () Unit!11383)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!103 (LexerInterface!1148 Rule!2320 List!6246 List!6245) Unit!11383)

(assert (=> b!617289 (= lt!264504 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!103 thiss!25598 r!3983 rules!3744 input!3215))))

(declare-fun ruleValid!442 (LexerInterface!1148 Rule!2320) Bool)

(assert (=> b!617289 (ruleValid!442 thiss!25598 r!3983)))

(declare-fun lt!264502 () Unit!11383)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!287 (LexerInterface!1148 Rule!2320 List!6246) Unit!11383)

(assert (=> b!617289 (= lt!264502 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!287 thiss!25598 r!3983 rules!3744))))

(declare-fun b!617290 () Bool)

(declare-fun validRegex!552 (Regex!1594) Bool)

(assert (=> b!617290 (= e!374387 (validRegex!552 (regex!1260 r!3983)))))

(declare-fun matchR!683 (Regex!1594 List!6245) Bool)

(assert (=> b!617290 (not (matchR!683 (regex!1260 r!3983) p!2908))))

(declare-fun lt!264503 () Unit!11383)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!101 (LexerInterface!1148 Rule!2320 List!6245 List!6245) Unit!11383)

(assert (=> b!617290 (= lt!264503 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!101 thiss!25598 r!3983 p!2908 input!3215))))

(declare-fun b!617291 () Bool)

(declare-fun tp!191017 () Bool)

(assert (=> b!617291 (= e!374386 (and e!374393 tp!191017))))

(assert (= (and start!59178 res!268730) b!617284))

(assert (= (and b!617284 res!268733) b!617286))

(assert (= (and b!617286 res!268736) b!617282))

(assert (= (and b!617282 res!268732) b!617281))

(assert (= (and b!617281 res!268734) b!617280))

(assert (= (and b!617280 res!268731) b!617289))

(assert (= (and b!617289 (not res!268735)) b!617290))

(assert (= b!617288 b!617279))

(assert (= start!59178 b!617288))

(assert (= (and start!59178 (is-Cons!6235 p!2908)) b!617285))

(assert (= b!617278 b!617287))

(assert (= b!617291 b!617278))

(assert (= (and start!59178 (is-Cons!6236 rules!3744)) b!617291))

(assert (= (and start!59178 (is-Cons!6235 input!3215)) b!617283))

(declare-fun m!885631 () Bool)

(assert (=> b!617281 m!885631))

(declare-fun m!885633 () Bool)

(assert (=> b!617278 m!885633))

(declare-fun m!885635 () Bool)

(assert (=> b!617278 m!885635))

(declare-fun m!885637 () Bool)

(assert (=> b!617282 m!885637))

(declare-fun m!885639 () Bool)

(assert (=> b!617290 m!885639))

(declare-fun m!885641 () Bool)

(assert (=> b!617290 m!885641))

(declare-fun m!885643 () Bool)

(assert (=> b!617290 m!885643))

(declare-fun m!885645 () Bool)

(assert (=> b!617284 m!885645))

(declare-fun m!885647 () Bool)

(assert (=> b!617280 m!885647))

(assert (=> b!617280 m!885647))

(declare-fun m!885649 () Bool)

(assert (=> b!617280 m!885649))

(declare-fun m!885651 () Bool)

(assert (=> b!617288 m!885651))

(declare-fun m!885653 () Bool)

(assert (=> b!617288 m!885653))

(declare-fun m!885655 () Bool)

(assert (=> b!617286 m!885655))

(declare-fun m!885657 () Bool)

(assert (=> b!617289 m!885657))

(declare-fun m!885659 () Bool)

(assert (=> b!617289 m!885659))

(declare-fun m!885661 () Bool)

(assert (=> b!617289 m!885661))

(declare-fun m!885663 () Bool)

(assert (=> b!617289 m!885663))

(declare-fun m!885665 () Bool)

(assert (=> b!617289 m!885665))

(push 1)

(assert (not b_next!17789))

(assert (not b!617281))

(assert (not b!617278))

(assert b_and!61283)

(assert (not b!617290))

(assert (not b!617289))

(assert (not b!617282))

(assert (not b!617284))

(assert (not b!617285))

(assert (not b!617286))

(assert b_and!61287)

(assert tp_is_empty!3547)

(assert b_and!61285)

(assert (not b_next!17787))

(assert b_and!61289)

(assert (not b!617288))

(assert (not b_next!17785))

(assert (not b!617291))

(assert (not b!617283))

(assert (not b!617280))

(assert (not b_next!17791))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17789))

(assert b_and!61283)

(assert b_and!61287)

(assert (not b_next!17791))

(assert b_and!61285)

(assert (not b_next!17787))

(assert b_and!61289)

(assert (not b_next!17785))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!216685 () Bool)

(declare-fun e!374442 () Bool)

(assert (=> d!216685 e!374442))

(declare-fun res!268780 () Bool)

(assert (=> d!216685 (=> res!268780 e!374442)))

(declare-fun lt!264521 () Bool)

(assert (=> d!216685 (= res!268780 (not lt!264521))))

(declare-fun e!374441 () Bool)

(assert (=> d!216685 (= lt!264521 e!374441)))

(declare-fun res!268781 () Bool)

(assert (=> d!216685 (=> res!268781 e!374441)))

(assert (=> d!216685 (= res!268781 (is-Nil!6235 p!2908))))

(assert (=> d!216685 (= (isPrefix!890 p!2908 input!3215) lt!264521)))

(declare-fun b!617353 () Bool)

(declare-fun size!4867 (List!6245) Int)

(assert (=> b!617353 (= e!374442 (>= (size!4867 input!3215) (size!4867 p!2908)))))

(declare-fun b!617350 () Bool)

(declare-fun e!374443 () Bool)

(assert (=> b!617350 (= e!374441 e!374443)))

(declare-fun res!268778 () Bool)

(assert (=> b!617350 (=> (not res!268778) (not e!374443))))

(assert (=> b!617350 (= res!268778 (not (is-Nil!6235 input!3215)))))

(declare-fun b!617352 () Bool)

(declare-fun tail!834 (List!6245) List!6245)

(assert (=> b!617352 (= e!374443 (isPrefix!890 (tail!834 p!2908) (tail!834 input!3215)))))

(declare-fun b!617351 () Bool)

(declare-fun res!268779 () Bool)

(assert (=> b!617351 (=> (not res!268779) (not e!374443))))

(declare-fun head!1305 (List!6245) C!4114)

(assert (=> b!617351 (= res!268779 (= (head!1305 p!2908) (head!1305 input!3215)))))

(assert (= (and d!216685 (not res!268781)) b!617350))

(assert (= (and b!617350 res!268778) b!617351))

(assert (= (and b!617351 res!268779) b!617352))

(assert (= (and d!216685 (not res!268780)) b!617353))

(declare-fun m!885703 () Bool)

(assert (=> b!617353 m!885703))

(declare-fun m!885705 () Bool)

(assert (=> b!617353 m!885705))

(declare-fun m!885707 () Bool)

(assert (=> b!617352 m!885707))

(declare-fun m!885709 () Bool)

(assert (=> b!617352 m!885709))

(assert (=> b!617352 m!885707))

(assert (=> b!617352 m!885709))

(declare-fun m!885711 () Bool)

(assert (=> b!617352 m!885711))

(declare-fun m!885713 () Bool)

(assert (=> b!617351 m!885713))

(declare-fun m!885715 () Bool)

(assert (=> b!617351 m!885715))

(assert (=> b!617284 d!216685))

(declare-fun d!216689 () Bool)

(assert (=> d!216689 (= (isEmpty!4489 lt!264501) (not (is-Some!1604 lt!264501)))))

(assert (=> b!617289 d!216689))

(declare-fun d!216691 () Bool)

(declare-fun res!268790 () Bool)

(declare-fun e!374449 () Bool)

(assert (=> d!216691 (=> (not res!268790) (not e!374449))))

(assert (=> d!216691 (= res!268790 (validRegex!552 (regex!1260 r!3983)))))

(assert (=> d!216691 (= (ruleValid!442 thiss!25598 r!3983) e!374449)))

(declare-fun b!617362 () Bool)

(declare-fun res!268791 () Bool)

(assert (=> b!617362 (=> (not res!268791) (not e!374449))))

(declare-fun nullable!457 (Regex!1594) Bool)

(assert (=> b!617362 (= res!268791 (not (nullable!457 (regex!1260 r!3983))))))

(declare-fun b!617363 () Bool)

(assert (=> b!617363 (= e!374449 (not (= (tag!1522 r!3983) (String!8171 ""))))))

(assert (= (and d!216691 res!268790) b!617362))

(assert (= (and b!617362 res!268791) b!617363))

(assert (=> d!216691 m!885639))

(declare-fun m!885731 () Bool)

(assert (=> b!617362 m!885731))

(assert (=> b!617289 d!216691))

(declare-fun d!216695 () Bool)

(assert (=> d!216695 (isEmpty!4489 (maxPrefixOneRule!495 thiss!25598 r!3983 input!3215))))

(declare-fun lt!264525 () Unit!11383)

(declare-fun choose!4527 (LexerInterface!1148 Rule!2320 List!6246 List!6245) Unit!11383)

(assert (=> d!216695 (= lt!264525 (choose!4527 thiss!25598 r!3983 rules!3744 input!3215))))

(assert (=> d!216695 (not (isEmpty!4490 rules!3744))))

(assert (=> d!216695 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!103 thiss!25598 r!3983 rules!3744 input!3215) lt!264525)))

(declare-fun bs!71853 () Bool)

(assert (= bs!71853 d!216695))

(assert (=> bs!71853 m!885661))

(assert (=> bs!71853 m!885661))

(declare-fun m!885733 () Bool)

(assert (=> bs!71853 m!885733))

(declare-fun m!885735 () Bool)

(assert (=> bs!71853 m!885735))

(assert (=> bs!71853 m!885655))

(assert (=> b!617289 d!216695))

(declare-fun b!617382 () Bool)

(declare-fun e!374458 () Bool)

(declare-fun lt!264540 () Option!1605)

(declare-fun get!2394 (Option!1605) tuple2!7048)

(assert (=> b!617382 (= e!374458 (= (size!4865 (_1!3788 (get!2394 lt!264540))) (size!4867 (originalCharacters!1293 (_1!3788 (get!2394 lt!264540))))))))

(declare-fun b!617383 () Bool)

(declare-fun res!268807 () Bool)

(assert (=> b!617383 (=> (not res!268807) (not e!374458))))

(assert (=> b!617383 (= res!268807 (= (rule!2048 (_1!3788 (get!2394 lt!264540))) r!3983))))

(declare-fun b!617384 () Bool)

(declare-fun e!374459 () Bool)

(assert (=> b!617384 (= e!374459 e!374458)))

(declare-fun res!268806 () Bool)

(assert (=> b!617384 (=> (not res!268806) (not e!374458))))

(declare-fun list!2609 (BalanceConc!3962) List!6245)

(declare-fun charsOf!877 (Token!2244) BalanceConc!3962)

(assert (=> b!617384 (= res!268806 (matchR!683 (regex!1260 r!3983) (list!2609 (charsOf!877 (_1!3788 (get!2394 lt!264540))))))))

(declare-fun d!216697 () Bool)

(assert (=> d!216697 e!374459))

(declare-fun res!268809 () Bool)

(assert (=> d!216697 (=> res!268809 e!374459)))

(assert (=> d!216697 (= res!268809 (isEmpty!4489 lt!264540))))

(declare-fun e!374461 () Option!1605)

(assert (=> d!216697 (= lt!264540 e!374461)))

(declare-fun c!113790 () Bool)

(declare-datatypes ((tuple2!7052 0))(
  ( (tuple2!7053 (_1!3790 List!6245) (_2!3790 List!6245)) )
))
(declare-fun lt!264542 () tuple2!7052)

(declare-fun isEmpty!4493 (List!6245) Bool)

(assert (=> d!216697 (= c!113790 (isEmpty!4493 (_1!3790 lt!264542)))))

(declare-fun findLongestMatch!192 (Regex!1594 List!6245) tuple2!7052)

(assert (=> d!216697 (= lt!264542 (findLongestMatch!192 (regex!1260 r!3983) input!3215))))

(assert (=> d!216697 (ruleValid!442 thiss!25598 r!3983)))

(assert (=> d!216697 (= (maxPrefixOneRule!495 thiss!25598 r!3983 input!3215) lt!264540)))

(declare-fun b!617385 () Bool)

(declare-fun res!268811 () Bool)

(assert (=> b!617385 (=> (not res!268811) (not e!374458))))

(assert (=> b!617385 (= res!268811 (< (size!4867 (_2!3788 (get!2394 lt!264540))) (size!4867 input!3215)))))

(declare-fun b!617386 () Bool)

(assert (=> b!617386 (= e!374461 None!1604)))

(declare-fun b!617387 () Bool)

(declare-fun res!268808 () Bool)

(assert (=> b!617387 (=> (not res!268808) (not e!374458))))

(declare-fun ++!1736 (List!6245 List!6245) List!6245)

(assert (=> b!617387 (= res!268808 (= (++!1736 (list!2609 (charsOf!877 (_1!3788 (get!2394 lt!264540)))) (_2!3788 (get!2394 lt!264540))) input!3215))))

(declare-fun b!617388 () Bool)

(declare-fun apply!1499 (TokenValueInjection!2336 BalanceConc!3962) TokenValue!1284)

(declare-fun seqFromList!1422 (List!6245) BalanceConc!3962)

(declare-fun size!4868 (BalanceConc!3962) Int)

(assert (=> b!617388 (= e!374461 (Some!1604 (tuple2!7049 (Token!2245 (apply!1499 (transformation!1260 r!3983) (seqFromList!1422 (_1!3790 lt!264542))) r!3983 (size!4868 (seqFromList!1422 (_1!3790 lt!264542))) (_1!3790 lt!264542)) (_2!3790 lt!264542))))))

(declare-fun lt!264541 () Unit!11383)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!197 (Regex!1594 List!6245) Unit!11383)

(assert (=> b!617388 (= lt!264541 (longestMatchIsAcceptedByMatchOrIsEmpty!197 (regex!1260 r!3983) input!3215))))

(declare-fun res!268812 () Bool)

(declare-fun findLongestMatchInner!213 (Regex!1594 List!6245 Int List!6245 List!6245 Int) tuple2!7052)

(assert (=> b!617388 (= res!268812 (isEmpty!4493 (_1!3790 (findLongestMatchInner!213 (regex!1260 r!3983) Nil!6235 (size!4867 Nil!6235) input!3215 input!3215 (size!4867 input!3215)))))))

(declare-fun e!374460 () Bool)

(assert (=> b!617388 (=> res!268812 e!374460)))

(assert (=> b!617388 e!374460))

(declare-fun lt!264543 () Unit!11383)

(assert (=> b!617388 (= lt!264543 lt!264541)))

(declare-fun lt!264539 () Unit!11383)

(declare-fun lemmaSemiInverse!268 (TokenValueInjection!2336 BalanceConc!3962) Unit!11383)

(assert (=> b!617388 (= lt!264539 (lemmaSemiInverse!268 (transformation!1260 r!3983) (seqFromList!1422 (_1!3790 lt!264542))))))

(declare-fun b!617389 () Bool)

(declare-fun res!268810 () Bool)

(assert (=> b!617389 (=> (not res!268810) (not e!374458))))

(assert (=> b!617389 (= res!268810 (= (value!40775 (_1!3788 (get!2394 lt!264540))) (apply!1499 (transformation!1260 (rule!2048 (_1!3788 (get!2394 lt!264540)))) (seqFromList!1422 (originalCharacters!1293 (_1!3788 (get!2394 lt!264540)))))))))

(declare-fun b!617390 () Bool)

(assert (=> b!617390 (= e!374460 (matchR!683 (regex!1260 r!3983) (_1!3790 (findLongestMatchInner!213 (regex!1260 r!3983) Nil!6235 (size!4867 Nil!6235) input!3215 input!3215 (size!4867 input!3215)))))))

(assert (= (and d!216697 c!113790) b!617386))

(assert (= (and d!216697 (not c!113790)) b!617388))

(assert (= (and b!617388 (not res!268812)) b!617390))

(assert (= (and d!216697 (not res!268809)) b!617384))

(assert (= (and b!617384 res!268806) b!617387))

(assert (= (and b!617387 res!268808) b!617385))

(assert (= (and b!617385 res!268811) b!617383))

(assert (= (and b!617383 res!268807) b!617389))

(assert (= (and b!617389 res!268810) b!617382))

(declare-fun m!885741 () Bool)

(assert (=> b!617389 m!885741))

(declare-fun m!885743 () Bool)

(assert (=> b!617389 m!885743))

(assert (=> b!617389 m!885743))

(declare-fun m!885745 () Bool)

(assert (=> b!617389 m!885745))

(declare-fun m!885747 () Bool)

(assert (=> b!617390 m!885747))

(assert (=> b!617390 m!885703))

(assert (=> b!617390 m!885747))

(assert (=> b!617390 m!885703))

(declare-fun m!885749 () Bool)

(assert (=> b!617390 m!885749))

(declare-fun m!885751 () Bool)

(assert (=> b!617390 m!885751))

(assert (=> b!617384 m!885741))

(declare-fun m!885753 () Bool)

(assert (=> b!617384 m!885753))

(assert (=> b!617384 m!885753))

(declare-fun m!885755 () Bool)

(assert (=> b!617384 m!885755))

(assert (=> b!617384 m!885755))

(declare-fun m!885757 () Bool)

(assert (=> b!617384 m!885757))

(assert (=> b!617388 m!885747))

(assert (=> b!617388 m!885747))

(assert (=> b!617388 m!885703))

(assert (=> b!617388 m!885749))

(declare-fun m!885759 () Bool)

(assert (=> b!617388 m!885759))

(declare-fun m!885761 () Bool)

(assert (=> b!617388 m!885761))

(assert (=> b!617388 m!885759))

(declare-fun m!885763 () Bool)

(assert (=> b!617388 m!885763))

(assert (=> b!617388 m!885703))

(assert (=> b!617388 m!885759))

(declare-fun m!885765 () Bool)

(assert (=> b!617388 m!885765))

(assert (=> b!617388 m!885759))

(declare-fun m!885767 () Bool)

(assert (=> b!617388 m!885767))

(declare-fun m!885769 () Bool)

(assert (=> b!617388 m!885769))

(declare-fun m!885771 () Bool)

(assert (=> d!216697 m!885771))

(declare-fun m!885773 () Bool)

(assert (=> d!216697 m!885773))

(declare-fun m!885775 () Bool)

(assert (=> d!216697 m!885775))

(assert (=> d!216697 m!885659))

(assert (=> b!617387 m!885741))

(assert (=> b!617387 m!885753))

(assert (=> b!617387 m!885753))

(assert (=> b!617387 m!885755))

(assert (=> b!617387 m!885755))

(declare-fun m!885777 () Bool)

(assert (=> b!617387 m!885777))

(assert (=> b!617382 m!885741))

(declare-fun m!885779 () Bool)

(assert (=> b!617382 m!885779))

(assert (=> b!617385 m!885741))

(declare-fun m!885781 () Bool)

(assert (=> b!617385 m!885781))

(assert (=> b!617385 m!885703))

(assert (=> b!617383 m!885741))

(assert (=> b!617289 d!216697))

(declare-fun d!216701 () Bool)

(assert (=> d!216701 (ruleValid!442 thiss!25598 r!3983)))

(declare-fun lt!264546 () Unit!11383)

(declare-fun choose!4528 (LexerInterface!1148 Rule!2320 List!6246) Unit!11383)

(assert (=> d!216701 (= lt!264546 (choose!4528 thiss!25598 r!3983 rules!3744))))

(assert (=> d!216701 (contains!1477 rules!3744 r!3983)))

(assert (=> d!216701 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!287 thiss!25598 r!3983 rules!3744) lt!264546)))

(declare-fun bs!71855 () Bool)

(assert (= bs!71855 d!216701))

(assert (=> bs!71855 m!885659))

(declare-fun m!885783 () Bool)

(assert (=> bs!71855 m!885783))

(assert (=> bs!71855 m!885631))

(assert (=> b!617289 d!216701))

(declare-fun d!216703 () Bool)

(assert (=> d!216703 (= (inv!7920 (tag!1522 (h!11637 rules!3744))) (= (mod (str.len (value!40774 (tag!1522 (h!11637 rules!3744)))) 2) 0))))

(assert (=> b!617278 d!216703))

(declare-fun d!216705 () Bool)

(declare-fun res!268815 () Bool)

(declare-fun e!374464 () Bool)

(assert (=> d!216705 (=> (not res!268815) (not e!374464))))

(declare-fun semiInverseModEq!506 (Int Int) Bool)

(assert (=> d!216705 (= res!268815 (semiInverseModEq!506 (toChars!2032 (transformation!1260 (h!11637 rules!3744))) (toValue!2173 (transformation!1260 (h!11637 rules!3744)))))))

(assert (=> d!216705 (= (inv!7923 (transformation!1260 (h!11637 rules!3744))) e!374464)))

(declare-fun b!617393 () Bool)

(declare-fun equivClasses!489 (Int Int) Bool)

(assert (=> b!617393 (= e!374464 (equivClasses!489 (toChars!2032 (transformation!1260 (h!11637 rules!3744))) (toValue!2173 (transformation!1260 (h!11637 rules!3744)))))))

(assert (= (and d!216705 res!268815) b!617393))

(declare-fun m!885785 () Bool)

(assert (=> d!216705 m!885785))

(declare-fun m!885787 () Bool)

(assert (=> b!617393 m!885787))

(assert (=> b!617278 d!216705))

(declare-fun d!216707 () Bool)

(assert (=> d!216707 (= (inv!7920 (tag!1522 r!3983)) (= (mod (str.len (value!40774 (tag!1522 r!3983))) 2) 0))))

(assert (=> b!617288 d!216707))

(declare-fun d!216709 () Bool)

(declare-fun res!268816 () Bool)

(declare-fun e!374465 () Bool)

(assert (=> d!216709 (=> (not res!268816) (not e!374465))))

(assert (=> d!216709 (= res!268816 (semiInverseModEq!506 (toChars!2032 (transformation!1260 r!3983)) (toValue!2173 (transformation!1260 r!3983))))))

(assert (=> d!216709 (= (inv!7923 (transformation!1260 r!3983)) e!374465)))

(declare-fun b!617394 () Bool)

(assert (=> b!617394 (= e!374465 (equivClasses!489 (toChars!2032 (transformation!1260 r!3983)) (toValue!2173 (transformation!1260 r!3983))))))

(assert (= (and d!216709 res!268816) b!617394))

(declare-fun m!885789 () Bool)

(assert (=> d!216709 m!885789))

(declare-fun m!885791 () Bool)

(assert (=> b!617394 m!885791))

(assert (=> b!617288 d!216709))

(declare-fun d!216711 () Bool)

(declare-fun res!268819 () Bool)

(declare-fun e!374468 () Bool)

(assert (=> d!216711 (=> (not res!268819) (not e!374468))))

(declare-fun rulesValid!469 (LexerInterface!1148 List!6246) Bool)

(assert (=> d!216711 (= res!268819 (rulesValid!469 thiss!25598 rules!3744))))

(assert (=> d!216711 (= (rulesInvariant!1109 thiss!25598 rules!3744) e!374468)))

(declare-fun b!617397 () Bool)

(declare-datatypes ((List!6250 0))(
  ( (Nil!6240) (Cons!6240 (h!11641 String!8170) (t!81489 List!6250)) )
))
(declare-fun noDuplicateTag!469 (LexerInterface!1148 List!6246 List!6250) Bool)

(assert (=> b!617397 (= e!374468 (noDuplicateTag!469 thiss!25598 rules!3744 Nil!6240))))

(assert (= (and d!216711 res!268819) b!617397))

(declare-fun m!885793 () Bool)

(assert (=> d!216711 m!885793))

(declare-fun m!885795 () Bool)

(assert (=> b!617397 m!885795))

(assert (=> b!617282 d!216711))

(declare-fun d!216713 () Bool)

(declare-fun lt!264549 () Bool)

(declare-fun content!1137 (List!6246) (Set Rule!2320))

(assert (=> d!216713 (= lt!264549 (set.member r!3983 (content!1137 rules!3744)))))

(declare-fun e!374473 () Bool)

(assert (=> d!216713 (= lt!264549 e!374473)))

(declare-fun res!268825 () Bool)

(assert (=> d!216713 (=> (not res!268825) (not e!374473))))

(assert (=> d!216713 (= res!268825 (is-Cons!6236 rules!3744))))

(assert (=> d!216713 (= (contains!1477 rules!3744 r!3983) lt!264549)))

(declare-fun b!617402 () Bool)

(declare-fun e!374474 () Bool)

(assert (=> b!617402 (= e!374473 e!374474)))

(declare-fun res!268824 () Bool)

(assert (=> b!617402 (=> res!268824 e!374474)))

(assert (=> b!617402 (= res!268824 (= (h!11637 rules!3744) r!3983))))

(declare-fun b!617403 () Bool)

(assert (=> b!617403 (= e!374474 (contains!1477 (t!81485 rules!3744) r!3983))))

(assert (= (and d!216713 res!268825) b!617402))

(assert (= (and b!617402 (not res!268824)) b!617403))

(declare-fun m!885797 () Bool)

(assert (=> d!216713 m!885797))

(declare-fun m!885799 () Bool)

(assert (=> d!216713 m!885799))

(declare-fun m!885801 () Bool)

(assert (=> b!617403 m!885801))

(assert (=> b!617281 d!216713))

(declare-fun d!216715 () Bool)

(assert (=> d!216715 (= (isEmpty!4490 rules!3744) (is-Nil!6236 rules!3744))))

(assert (=> b!617286 d!216715))

(declare-fun d!216717 () Bool)

(assert (=> d!216717 (= (isEmpty!4489 (maxPrefix!838 thiss!25598 rules!3744 input!3215)) (not (is-Some!1604 (maxPrefix!838 thiss!25598 rules!3744 input!3215))))))

(assert (=> b!617280 d!216717))

(declare-fun b!617449 () Bool)

(declare-fun res!268867 () Bool)

(declare-fun e!374495 () Bool)

(assert (=> b!617449 (=> (not res!268867) (not e!374495))))

(declare-fun lt!264578 () Option!1605)

(assert (=> b!617449 (= res!268867 (= (list!2609 (charsOf!877 (_1!3788 (get!2394 lt!264578)))) (originalCharacters!1293 (_1!3788 (get!2394 lt!264578)))))))

(declare-fun d!216719 () Bool)

(declare-fun e!374493 () Bool)

(assert (=> d!216719 e!374493))

(declare-fun res!268865 () Bool)

(assert (=> d!216719 (=> res!268865 e!374493)))

(assert (=> d!216719 (= res!268865 (isEmpty!4489 lt!264578))))

(declare-fun e!374494 () Option!1605)

(assert (=> d!216719 (= lt!264578 e!374494)))

(declare-fun c!113796 () Bool)

(assert (=> d!216719 (= c!113796 (and (is-Cons!6236 rules!3744) (is-Nil!6236 (t!81485 rules!3744))))))

(declare-fun lt!264576 () Unit!11383)

(declare-fun lt!264575 () Unit!11383)

(assert (=> d!216719 (= lt!264576 lt!264575)))

(assert (=> d!216719 (isPrefix!890 input!3215 input!3215)))

(declare-fun lemmaIsPrefixRefl!610 (List!6245 List!6245) Unit!11383)

(assert (=> d!216719 (= lt!264575 (lemmaIsPrefixRefl!610 input!3215 input!3215))))

(declare-fun rulesValidInductive!481 (LexerInterface!1148 List!6246) Bool)

(assert (=> d!216719 (rulesValidInductive!481 thiss!25598 rules!3744)))

(assert (=> d!216719 (= (maxPrefix!838 thiss!25598 rules!3744 input!3215) lt!264578)))

(declare-fun b!617450 () Bool)

(declare-fun res!268863 () Bool)

(assert (=> b!617450 (=> (not res!268863) (not e!374495))))

(assert (=> b!617450 (= res!268863 (= (value!40775 (_1!3788 (get!2394 lt!264578))) (apply!1499 (transformation!1260 (rule!2048 (_1!3788 (get!2394 lt!264578)))) (seqFromList!1422 (originalCharacters!1293 (_1!3788 (get!2394 lt!264578)))))))))

(declare-fun b!617451 () Bool)

(declare-fun res!268864 () Bool)

(assert (=> b!617451 (=> (not res!268864) (not e!374495))))

(assert (=> b!617451 (= res!268864 (= (++!1736 (list!2609 (charsOf!877 (_1!3788 (get!2394 lt!264578)))) (_2!3788 (get!2394 lt!264578))) input!3215))))

(declare-fun b!617452 () Bool)

(declare-fun call!41054 () Option!1605)

(assert (=> b!617452 (= e!374494 call!41054)))

(declare-fun b!617453 () Bool)

(declare-fun lt!264579 () Option!1605)

(declare-fun lt!264577 () Option!1605)

(assert (=> b!617453 (= e!374494 (ite (and (is-None!1604 lt!264579) (is-None!1604 lt!264577)) None!1604 (ite (is-None!1604 lt!264577) lt!264579 (ite (is-None!1604 lt!264579) lt!264577 (ite (>= (size!4865 (_1!3788 (v!16523 lt!264579))) (size!4865 (_1!3788 (v!16523 lt!264577)))) lt!264579 lt!264577)))))))

(assert (=> b!617453 (= lt!264579 call!41054)))

(assert (=> b!617453 (= lt!264577 (maxPrefix!838 thiss!25598 (t!81485 rules!3744) input!3215))))

(declare-fun b!617454 () Bool)

(assert (=> b!617454 (= e!374493 e!374495)))

(declare-fun res!268862 () Bool)

(assert (=> b!617454 (=> (not res!268862) (not e!374495))))

(declare-fun isDefined!1410 (Option!1605) Bool)

(assert (=> b!617454 (= res!268862 (isDefined!1410 lt!264578))))

(declare-fun b!617455 () Bool)

(declare-fun res!268861 () Bool)

(assert (=> b!617455 (=> (not res!268861) (not e!374495))))

(assert (=> b!617455 (= res!268861 (< (size!4867 (_2!3788 (get!2394 lt!264578))) (size!4867 input!3215)))))

(declare-fun b!617456 () Bool)

(assert (=> b!617456 (= e!374495 (contains!1477 rules!3744 (rule!2048 (_1!3788 (get!2394 lt!264578)))))))

(declare-fun b!617457 () Bool)

(declare-fun res!268866 () Bool)

(assert (=> b!617457 (=> (not res!268866) (not e!374495))))

(assert (=> b!617457 (= res!268866 (matchR!683 (regex!1260 (rule!2048 (_1!3788 (get!2394 lt!264578)))) (list!2609 (charsOf!877 (_1!3788 (get!2394 lt!264578))))))))

(declare-fun bm!41049 () Bool)

(assert (=> bm!41049 (= call!41054 (maxPrefixOneRule!495 thiss!25598 (h!11637 rules!3744) input!3215))))

(assert (= (and d!216719 c!113796) b!617452))

(assert (= (and d!216719 (not c!113796)) b!617453))

(assert (= (or b!617452 b!617453) bm!41049))

(assert (= (and d!216719 (not res!268865)) b!617454))

(assert (= (and b!617454 res!268862) b!617449))

(assert (= (and b!617449 res!268867) b!617455))

(assert (= (and b!617455 res!268861) b!617451))

(assert (= (and b!617451 res!268864) b!617450))

(assert (= (and b!617450 res!268863) b!617457))

(assert (= (and b!617457 res!268866) b!617456))

(declare-fun m!885803 () Bool)

(assert (=> b!617454 m!885803))

(declare-fun m!885805 () Bool)

(assert (=> b!617453 m!885805))

(declare-fun m!885807 () Bool)

(assert (=> b!617456 m!885807))

(declare-fun m!885809 () Bool)

(assert (=> b!617456 m!885809))

(declare-fun m!885811 () Bool)

(assert (=> bm!41049 m!885811))

(assert (=> b!617451 m!885807))

(declare-fun m!885813 () Bool)

(assert (=> b!617451 m!885813))

(assert (=> b!617451 m!885813))

(declare-fun m!885815 () Bool)

(assert (=> b!617451 m!885815))

(assert (=> b!617451 m!885815))

(declare-fun m!885817 () Bool)

(assert (=> b!617451 m!885817))

(assert (=> b!617455 m!885807))

(declare-fun m!885819 () Bool)

(assert (=> b!617455 m!885819))

(assert (=> b!617455 m!885703))

(declare-fun m!885821 () Bool)

(assert (=> d!216719 m!885821))

(declare-fun m!885823 () Bool)

(assert (=> d!216719 m!885823))

(declare-fun m!885825 () Bool)

(assert (=> d!216719 m!885825))

(declare-fun m!885827 () Bool)

(assert (=> d!216719 m!885827))

(assert (=> b!617450 m!885807))

(declare-fun m!885829 () Bool)

(assert (=> b!617450 m!885829))

(assert (=> b!617450 m!885829))

(declare-fun m!885831 () Bool)

(assert (=> b!617450 m!885831))

(assert (=> b!617457 m!885807))

(assert (=> b!617457 m!885813))

(assert (=> b!617457 m!885813))

(assert (=> b!617457 m!885815))

(assert (=> b!617457 m!885815))

(declare-fun m!885833 () Bool)

(assert (=> b!617457 m!885833))

(assert (=> b!617449 m!885807))

(assert (=> b!617449 m!885813))

(assert (=> b!617449 m!885813))

(assert (=> b!617449 m!885815))

(assert (=> b!617280 d!216719))

(declare-fun b!617476 () Bool)

(declare-fun e!374512 () Bool)

(declare-fun call!41062 () Bool)

(assert (=> b!617476 (= e!374512 call!41062)))

(declare-fun b!617477 () Bool)

(declare-fun e!374511 () Bool)

(declare-fun e!374510 () Bool)

(assert (=> b!617477 (= e!374511 e!374510)))

(declare-fun c!113801 () Bool)

(assert (=> b!617477 (= c!113801 (is-Star!1594 (regex!1260 r!3983)))))

(declare-fun d!216721 () Bool)

(declare-fun res!268878 () Bool)

(assert (=> d!216721 (=> res!268878 e!374511)))

(assert (=> d!216721 (= res!268878 (is-ElementMatch!1594 (regex!1260 r!3983)))))

(assert (=> d!216721 (= (validRegex!552 (regex!1260 r!3983)) e!374511)))

(declare-fun b!617478 () Bool)

(declare-fun res!268881 () Bool)

(assert (=> b!617478 (=> (not res!268881) (not e!374512))))

(declare-fun call!41061 () Bool)

(assert (=> b!617478 (= res!268881 call!41061)))

(declare-fun e!374516 () Bool)

(assert (=> b!617478 (= e!374516 e!374512)))

(declare-fun b!617479 () Bool)

(declare-fun e!374513 () Bool)

(assert (=> b!617479 (= e!374513 call!41061)))

(declare-fun bm!41056 () Bool)

(declare-fun call!41063 () Bool)

(assert (=> bm!41056 (= call!41062 call!41063)))

(declare-fun b!617480 () Bool)

(declare-fun e!374514 () Bool)

(assert (=> b!617480 (= e!374514 call!41063)))

(declare-fun b!617481 () Bool)

(declare-fun res!268882 () Bool)

(declare-fun e!374515 () Bool)

(assert (=> b!617481 (=> res!268882 e!374515)))

(assert (=> b!617481 (= res!268882 (not (is-Concat!2879 (regex!1260 r!3983))))))

(assert (=> b!617481 (= e!374516 e!374515)))

(declare-fun b!617482 () Bool)

(assert (=> b!617482 (= e!374510 e!374516)))

(declare-fun c!113802 () Bool)

(assert (=> b!617482 (= c!113802 (is-Union!1594 (regex!1260 r!3983)))))

(declare-fun b!617483 () Bool)

(assert (=> b!617483 (= e!374515 e!374513)))

(declare-fun res!268880 () Bool)

(assert (=> b!617483 (=> (not res!268880) (not e!374513))))

(assert (=> b!617483 (= res!268880 call!41062)))

(declare-fun bm!41057 () Bool)

(assert (=> bm!41057 (= call!41061 (validRegex!552 (ite c!113802 (regOne!3701 (regex!1260 r!3983)) (regTwo!3700 (regex!1260 r!3983)))))))

(declare-fun b!617484 () Bool)

(assert (=> b!617484 (= e!374510 e!374514)))

(declare-fun res!268879 () Bool)

(assert (=> b!617484 (= res!268879 (not (nullable!457 (reg!1923 (regex!1260 r!3983)))))))

(assert (=> b!617484 (=> (not res!268879) (not e!374514))))

(declare-fun bm!41058 () Bool)

(assert (=> bm!41058 (= call!41063 (validRegex!552 (ite c!113801 (reg!1923 (regex!1260 r!3983)) (ite c!113802 (regTwo!3701 (regex!1260 r!3983)) (regOne!3700 (regex!1260 r!3983))))))))

(assert (= (and d!216721 (not res!268878)) b!617477))

(assert (= (and b!617477 c!113801) b!617484))

(assert (= (and b!617477 (not c!113801)) b!617482))

(assert (= (and b!617484 res!268879) b!617480))

(assert (= (and b!617482 c!113802) b!617478))

(assert (= (and b!617482 (not c!113802)) b!617481))

(assert (= (and b!617478 res!268881) b!617476))

(assert (= (and b!617481 (not res!268882)) b!617483))

(assert (= (and b!617483 res!268880) b!617479))

(assert (= (or b!617478 b!617479) bm!41057))

(assert (= (or b!617476 b!617483) bm!41056))

(assert (= (or b!617480 bm!41056) bm!41058))

(declare-fun m!885877 () Bool)

(assert (=> bm!41057 m!885877))

(declare-fun m!885879 () Bool)

(assert (=> b!617484 m!885879))

(declare-fun m!885881 () Bool)

(assert (=> bm!41058 m!885881))

(assert (=> b!617290 d!216721))

(declare-fun b!617522 () Bool)

(declare-fun e!374543 () Bool)

(declare-fun e!374540 () Bool)

(assert (=> b!617522 (= e!374543 e!374540)))

(declare-fun res!268913 () Bool)

(assert (=> b!617522 (=> res!268913 e!374540)))

(declare-fun call!41066 () Bool)

(assert (=> b!617522 (= res!268913 call!41066)))

(declare-fun b!617524 () Bool)

(declare-fun e!374537 () Bool)

(declare-fun e!374541 () Bool)

(assert (=> b!617524 (= e!374537 e!374541)))

(declare-fun c!113810 () Bool)

(assert (=> b!617524 (= c!113810 (is-EmptyLang!1594 (regex!1260 r!3983)))))

(declare-fun b!617525 () Bool)

(declare-fun res!268909 () Bool)

(declare-fun e!374539 () Bool)

(assert (=> b!617525 (=> (not res!268909) (not e!374539))))

(assert (=> b!617525 (= res!268909 (not call!41066))))

(declare-fun b!617526 () Bool)

(declare-fun lt!264585 () Bool)

(assert (=> b!617526 (= e!374537 (= lt!264585 call!41066))))

(declare-fun b!617527 () Bool)

(assert (=> b!617527 (= e!374540 (not (= (head!1305 p!2908) (c!113783 (regex!1260 r!3983)))))))

(declare-fun b!617528 () Bool)

(declare-fun res!268908 () Bool)

(declare-fun e!374538 () Bool)

(assert (=> b!617528 (=> res!268908 e!374538)))

(assert (=> b!617528 (= res!268908 (not (is-ElementMatch!1594 (regex!1260 r!3983))))))

(assert (=> b!617528 (= e!374541 e!374538)))

(declare-fun b!617529 () Bool)

(declare-fun res!268911 () Bool)

(assert (=> b!617529 (=> (not res!268911) (not e!374539))))

(assert (=> b!617529 (= res!268911 (isEmpty!4493 (tail!834 p!2908)))))

(declare-fun bm!41061 () Bool)

(assert (=> bm!41061 (= call!41066 (isEmpty!4493 p!2908))))

(declare-fun b!617530 () Bool)

(assert (=> b!617530 (= e!374538 e!374543)))

(declare-fun res!268912 () Bool)

(assert (=> b!617530 (=> (not res!268912) (not e!374543))))

(assert (=> b!617530 (= res!268912 (not lt!264585))))

(declare-fun b!617531 () Bool)

(declare-fun e!374542 () Bool)

(assert (=> b!617531 (= e!374542 (nullable!457 (regex!1260 r!3983)))))

(declare-fun b!617532 () Bool)

(assert (=> b!617532 (= e!374541 (not lt!264585))))

(declare-fun b!617533 () Bool)

(declare-fun res!268915 () Bool)

(assert (=> b!617533 (=> res!268915 e!374538)))

(assert (=> b!617533 (= res!268915 e!374539)))

(declare-fun res!268910 () Bool)

(assert (=> b!617533 (=> (not res!268910) (not e!374539))))

(assert (=> b!617533 (= res!268910 lt!264585)))

(declare-fun b!617534 () Bool)

(assert (=> b!617534 (= e!374539 (= (head!1305 p!2908) (c!113783 (regex!1260 r!3983))))))

(declare-fun b!617535 () Bool)

(declare-fun derivativeStep!341 (Regex!1594 C!4114) Regex!1594)

(assert (=> b!617535 (= e!374542 (matchR!683 (derivativeStep!341 (regex!1260 r!3983) (head!1305 p!2908)) (tail!834 p!2908)))))

(declare-fun d!216725 () Bool)

(assert (=> d!216725 e!374537))

(declare-fun c!113809 () Bool)

(assert (=> d!216725 (= c!113809 (is-EmptyExpr!1594 (regex!1260 r!3983)))))

(assert (=> d!216725 (= lt!264585 e!374542)))

(declare-fun c!113811 () Bool)

(assert (=> d!216725 (= c!113811 (isEmpty!4493 p!2908))))

(assert (=> d!216725 (validRegex!552 (regex!1260 r!3983))))

(assert (=> d!216725 (= (matchR!683 (regex!1260 r!3983) p!2908) lt!264585)))

(declare-fun b!617523 () Bool)

(declare-fun res!268914 () Bool)

(assert (=> b!617523 (=> res!268914 e!374540)))

(assert (=> b!617523 (= res!268914 (not (isEmpty!4493 (tail!834 p!2908))))))

(assert (= (and d!216725 c!113811) b!617531))

(assert (= (and d!216725 (not c!113811)) b!617535))

(assert (= (and d!216725 c!113809) b!617526))

(assert (= (and d!216725 (not c!113809)) b!617524))

(assert (= (and b!617524 c!113810) b!617532))

(assert (= (and b!617524 (not c!113810)) b!617528))

(assert (= (and b!617528 (not res!268908)) b!617533))

(assert (= (and b!617533 res!268910) b!617525))

(assert (= (and b!617525 res!268909) b!617529))

(assert (= (and b!617529 res!268911) b!617534))

(assert (= (and b!617533 (not res!268915)) b!617530))

(assert (= (and b!617530 res!268912) b!617522))

(assert (= (and b!617522 (not res!268913)) b!617523))

(assert (= (and b!617523 (not res!268914)) b!617527))

(assert (= (or b!617526 b!617522 b!617525) bm!41061))

(declare-fun m!885891 () Bool)

(assert (=> d!216725 m!885891))

(assert (=> d!216725 m!885639))

(assert (=> b!617531 m!885731))

(assert (=> b!617523 m!885707))

(assert (=> b!617523 m!885707))

(declare-fun m!885893 () Bool)

(assert (=> b!617523 m!885893))

(assert (=> b!617527 m!885713))

(assert (=> b!617535 m!885713))

(assert (=> b!617535 m!885713))

(declare-fun m!885895 () Bool)

(assert (=> b!617535 m!885895))

(assert (=> b!617535 m!885707))

(assert (=> b!617535 m!885895))

(assert (=> b!617535 m!885707))

(declare-fun m!885897 () Bool)

(assert (=> b!617535 m!885897))

(assert (=> b!617529 m!885707))

(assert (=> b!617529 m!885707))

(assert (=> b!617529 m!885893))

(assert (=> bm!41061 m!885891))

(assert (=> b!617534 m!885713))

(assert (=> b!617290 d!216725))

(declare-fun d!216735 () Bool)

(assert (=> d!216735 (not (matchR!683 (regex!1260 r!3983) p!2908))))

(declare-fun lt!264590 () Unit!11383)

(declare-fun choose!4530 (LexerInterface!1148 Rule!2320 List!6245 List!6245) Unit!11383)

(assert (=> d!216735 (= lt!264590 (choose!4530 thiss!25598 r!3983 p!2908 input!3215))))

(assert (=> d!216735 (isPrefix!890 p!2908 input!3215)))

(assert (=> d!216735 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!101 thiss!25598 r!3983 p!2908 input!3215) lt!264590)))

(declare-fun bs!71857 () Bool)

(assert (= bs!71857 d!216735))

(assert (=> bs!71857 m!885641))

(declare-fun m!885899 () Bool)

(assert (=> bs!71857 m!885899))

(assert (=> bs!71857 m!885645))

(assert (=> b!617290 d!216735))

(declare-fun b!617555 () Bool)

(declare-fun e!374552 () Bool)

(declare-fun tp!191063 () Bool)

(declare-fun tp!191064 () Bool)

(assert (=> b!617555 (= e!374552 (and tp!191063 tp!191064))))

(assert (=> b!617278 (= tp!191018 e!374552)))

(declare-fun b!617552 () Bool)

(assert (=> b!617552 (= e!374552 tp_is_empty!3547)))

(declare-fun b!617553 () Bool)

(declare-fun tp!191062 () Bool)

(declare-fun tp!191065 () Bool)

(assert (=> b!617553 (= e!374552 (and tp!191062 tp!191065))))

(declare-fun b!617554 () Bool)

(declare-fun tp!191066 () Bool)

(assert (=> b!617554 (= e!374552 tp!191066)))

(assert (= (and b!617278 (is-ElementMatch!1594 (regex!1260 (h!11637 rules!3744)))) b!617552))

(assert (= (and b!617278 (is-Concat!2879 (regex!1260 (h!11637 rules!3744)))) b!617553))

(assert (= (and b!617278 (is-Star!1594 (regex!1260 (h!11637 rules!3744)))) b!617554))

(assert (= (and b!617278 (is-Union!1594 (regex!1260 (h!11637 rules!3744)))) b!617555))

(declare-fun b!617560 () Bool)

(declare-fun e!374555 () Bool)

(declare-fun tp!191069 () Bool)

(assert (=> b!617560 (= e!374555 (and tp_is_empty!3547 tp!191069))))

(assert (=> b!617283 (= tp!191023 e!374555)))

(assert (= (and b!617283 (is-Cons!6235 (t!81484 input!3215))) b!617560))

(declare-fun b!617564 () Bool)

(declare-fun e!374556 () Bool)

(declare-fun tp!191071 () Bool)

(declare-fun tp!191072 () Bool)

(assert (=> b!617564 (= e!374556 (and tp!191071 tp!191072))))

(assert (=> b!617288 (= tp!191024 e!374556)))

(declare-fun b!617561 () Bool)

(assert (=> b!617561 (= e!374556 tp_is_empty!3547)))

(declare-fun b!617562 () Bool)

(declare-fun tp!191070 () Bool)

(declare-fun tp!191073 () Bool)

(assert (=> b!617562 (= e!374556 (and tp!191070 tp!191073))))

(declare-fun b!617563 () Bool)

(declare-fun tp!191074 () Bool)

(assert (=> b!617563 (= e!374556 tp!191074)))

(assert (= (and b!617288 (is-ElementMatch!1594 (regex!1260 r!3983))) b!617561))

(assert (= (and b!617288 (is-Concat!2879 (regex!1260 r!3983))) b!617562))

(assert (= (and b!617288 (is-Star!1594 (regex!1260 r!3983))) b!617563))

(assert (= (and b!617288 (is-Union!1594 (regex!1260 r!3983))) b!617564))

(declare-fun b!617575 () Bool)

(declare-fun b_free!17785 () Bool)

(declare-fun b_next!17801 () Bool)

(assert (=> b!617575 (= b_free!17785 (not b_next!17801))))

(declare-fun tp!191084 () Bool)

(declare-fun b_and!61299 () Bool)

(assert (=> b!617575 (= tp!191084 b_and!61299)))

(declare-fun b_free!17787 () Bool)

(declare-fun b_next!17803 () Bool)

(assert (=> b!617575 (= b_free!17787 (not b_next!17803))))

(declare-fun tp!191083 () Bool)

(declare-fun b_and!61301 () Bool)

(assert (=> b!617575 (= tp!191083 b_and!61301)))

(declare-fun e!374565 () Bool)

(assert (=> b!617575 (= e!374565 (and tp!191084 tp!191083))))

(declare-fun e!374566 () Bool)

(declare-fun b!617574 () Bool)

(declare-fun tp!191086 () Bool)

(assert (=> b!617574 (= e!374566 (and tp!191086 (inv!7920 (tag!1522 (h!11637 (t!81485 rules!3744)))) (inv!7923 (transformation!1260 (h!11637 (t!81485 rules!3744)))) e!374565))))

(declare-fun b!617573 () Bool)

(declare-fun e!374567 () Bool)

(declare-fun tp!191085 () Bool)

(assert (=> b!617573 (= e!374567 (and e!374566 tp!191085))))

(assert (=> b!617291 (= tp!191017 e!374567)))

(assert (= b!617574 b!617575))

(assert (= b!617573 b!617574))

(assert (= (and b!617291 (is-Cons!6236 (t!81485 rules!3744))) b!617573))

(declare-fun m!885907 () Bool)

(assert (=> b!617574 m!885907))

(declare-fun m!885909 () Bool)

(assert (=> b!617574 m!885909))

(declare-fun b!617576 () Bool)

(declare-fun e!374569 () Bool)

(declare-fun tp!191087 () Bool)

(assert (=> b!617576 (= e!374569 (and tp_is_empty!3547 tp!191087))))

(assert (=> b!617285 (= tp!191021 e!374569)))

(assert (= (and b!617285 (is-Cons!6235 (t!81484 p!2908))) b!617576))

(push 1)

(assert (not b_next!17789))

(assert (not d!216735))

(assert (not b!617397))

(assert (not b!617454))

(assert (not b!617387))

(assert (not b!617553))

(assert b_and!61301)

(assert (not b!617554))

(assert (not b!617384))

(assert (not b!617451))

(assert (not bm!41057))

(assert (not d!216719))

(assert b_and!61289)

(assert (not d!216705))

(assert (not b!617534))

(assert (not b_next!17785))

(assert (not d!216695))

(assert b_and!61283)

(assert (not d!216697))

(assert (not b!617457))

(assert (not b!617394))

(assert (not b!617456))

(assert b_and!61299)

(assert (not b!617385))

(assert (not b!617352))

(assert (not b!617353))

(assert (not d!216701))

(assert (not bm!41061))

(assert (not b!617523))

(assert (not d!216711))

(assert (not b!617383))

(assert (not b!617455))

(assert (not b!617535))

(assert (not b!617529))

(assert (not b!617573))

(assert (not b!617382))

(assert (not b_next!17803))

(assert (not b!617449))

(assert (not b!617388))

(assert (not b!617562))

(assert (not bm!41049))

(assert (not b!617555))

(assert (not d!216713))

(assert (not b!617453))

(assert (not b!617450))

(assert b_and!61287)

(assert (not d!216709))

(assert (not b!617484))

(assert (not b!617574))

(assert (not b!617393))

(assert (not b_next!17801))

(assert (not b!617560))

(assert (not b_next!17791))

(assert (not bm!41058))

(assert (not b!617531))

(assert (not b!617403))

(assert (not b!617390))

(assert (not b!617563))

(assert tp_is_empty!3547)

(assert (not d!216725))

(assert b_and!61285)

(assert (not b!617564))

(assert (not b!617576))

(assert (not b!617527))

(assert (not b!617389))

(assert (not b!617362))

(assert (not d!216691))

(assert (not b!617351))

(assert (not b_next!17787))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!17789))

(assert b_and!61301)

(assert b_and!61283)

(assert b_and!61299)

(assert (not b_next!17803))

(assert b_and!61287)

(assert b_and!61285)

(assert (not b_next!17787))

(assert b_and!61289)

(assert (not b_next!17785))

(assert (not b_next!17801))

(assert (not b_next!17791))

(check-sat)

(pop 1)

