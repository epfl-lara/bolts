; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!537020 () Bool)

(assert start!537020)

(declare-fun b!5094533 () Bool)

(declare-fun b_free!133363 () Bool)

(declare-fun b_next!134153 () Bool)

(assert (=> b!5094533 (= b_free!133363 (not b_next!134153))))

(declare-fun tp!1420458 () Bool)

(declare-fun b_and!350247 () Bool)

(assert (=> b!5094533 (= tp!1420458 b_and!350247)))

(declare-fun b_free!133365 () Bool)

(declare-fun b_next!134155 () Bool)

(assert (=> b!5094533 (= b_free!133365 (not b_next!134155))))

(declare-fun tp!1420455 () Bool)

(declare-fun b_and!350249 () Bool)

(assert (=> b!5094533 (= tp!1420455 b_and!350249)))

(declare-fun e!3177253 () Bool)

(assert (=> b!5094533 (= e!3177253 (and tp!1420458 tp!1420455))))

(declare-fun b!5094534 () Bool)

(declare-fun res!2168097 () Bool)

(declare-fun e!3177250 () Bool)

(assert (=> b!5094534 (=> (not res!2168097) (not e!3177250))))

(declare-datatypes ((List!58728 0))(
  ( (Nil!58604) (Cons!58604 (h!65052 (_ BitVec 16)) (t!371683 List!58728)) )
))
(declare-datatypes ((TokenValue!8817 0))(
  ( (FloatLiteralValue!17634 (text!62164 List!58728)) (TokenValueExt!8816 (__x!34923 Int)) (Broken!44085 (value!272621 List!58728)) (Object!8940) (End!8817) (Def!8817) (Underscore!8817) (Match!8817) (Else!8817) (Error!8817) (Case!8817) (If!8817) (Extends!8817) (Abstract!8817) (Class!8817) (Val!8817) (DelimiterValue!17634 (del!8877 List!58728)) (KeywordValue!8823 (value!272622 List!58728)) (CommentValue!17634 (value!272623 List!58728)) (WhitespaceValue!17634 (value!272624 List!58728)) (IndentationValue!8817 (value!272625 List!58728)) (String!67008) (Int32!8817) (Broken!44086 (value!272626 List!58728)) (Boolean!8818) (Unit!149645) (OperatorValue!8820 (op!8877 List!58728)) (IdentifierValue!17634 (value!272627 List!58728)) (IdentifierValue!17635 (value!272628 List!58728)) (WhitespaceValue!17635 (value!272629 List!58728)) (True!17634) (False!17634) (Broken!44087 (value!272630 List!58728)) (Broken!44088 (value!272631 List!58728)) (True!17635) (RightBrace!8817) (RightBracket!8817) (Colon!8817) (Null!8817) (Comma!8817) (LeftBracket!8817) (False!17635) (LeftBrace!8817) (ImaginaryLiteralValue!8817 (text!62165 List!58728)) (StringLiteralValue!26451 (value!272632 List!58728)) (EOFValue!8817 (value!272633 List!58728)) (IdentValue!8817 (value!272634 List!58728)) (DelimiterValue!17635 (value!272635 List!58728)) (DedentValue!8817 (value!272636 List!58728)) (NewLineValue!8817 (value!272637 List!58728)) (IntegerValue!26451 (value!272638 (_ BitVec 32)) (text!62166 List!58728)) (IntegerValue!26452 (value!272639 Int) (text!62167 List!58728)) (Times!8817) (Or!8817) (Equal!8817) (Minus!8817) (Broken!44089 (value!272640 List!58728)) (And!8817) (Div!8817) (LessEqual!8817) (Mod!8817) (Concat!22795) (Not!8817) (Plus!8817) (SpaceValue!8817 (value!272641 List!58728)) (IntegerValue!26453 (value!272642 Int) (text!62168 List!58728)) (StringLiteralValue!26452 (text!62169 List!58728)) (FloatLiteralValue!17635 (text!62170 List!58728)) (BytesLiteralValue!8817 (value!272643 List!58728)) (CommentValue!17635 (value!272644 List!58728)) (StringLiteralValue!26453 (value!272645 List!58728)) (ErrorTokenValue!8817 (msg!8878 List!58728)) )
))
(declare-datatypes ((C!28214 0))(
  ( (C!28215 (val!23759 Int)) )
))
(declare-datatypes ((List!58729 0))(
  ( (Nil!58605) (Cons!58605 (h!65053 C!28214) (t!371684 List!58729)) )
))
(declare-datatypes ((IArray!31411 0))(
  ( (IArray!31412 (innerList!15763 List!58729)) )
))
(declare-datatypes ((Conc!15675 0))(
  ( (Node!15675 (left!43017 Conc!15675) (right!43347 Conc!15675) (csize!31580 Int) (cheight!15886 Int)) (Leaf!26018 (xs!19057 IArray!31411) (csize!31581 Int)) (Empty!15675) )
))
(declare-datatypes ((BalanceConc!30468 0))(
  ( (BalanceConc!30469 (c!875485 Conc!15675)) )
))
(declare-datatypes ((TokenValueInjection!16942 0))(
  ( (TokenValueInjection!16943 (toValue!11526 Int) (toChars!11385 Int)) )
))
(declare-datatypes ((Regex!13978 0))(
  ( (ElementMatch!13978 (c!875486 C!28214)) (Concat!22796 (regOne!28468 Regex!13978) (regTwo!28468 Regex!13978)) (EmptyExpr!13978) (Star!13978 (reg!14307 Regex!13978)) (EmptyLang!13978) (Union!13978 (regOne!28469 Regex!13978) (regTwo!28469 Regex!13978)) )
))
(declare-datatypes ((String!67009 0))(
  ( (String!67010 (value!272646 String)) )
))
(declare-datatypes ((Rule!16806 0))(
  ( (Rule!16807 (regex!8503 Regex!13978) (tag!9367 String!67009) (isSeparator!8503 Bool) (transformation!8503 TokenValueInjection!16942)) )
))
(declare-datatypes ((List!58730 0))(
  ( (Nil!58606) (Cons!58606 (h!65054 Rule!16806) (t!371685 List!58730)) )
))
(declare-fun rulesArg!145 () List!58730)

(declare-fun isEmpty!31720 (List!58730) Bool)

(assert (=> b!5094534 (= res!2168097 (not (isEmpty!31720 rulesArg!145)))))

(declare-fun b!5094535 () Bool)

(declare-fun e!3177251 () Bool)

(declare-fun e!3177248 () Bool)

(declare-fun tp!1420456 () Bool)

(assert (=> b!5094535 (= e!3177251 (and e!3177248 tp!1420456))))

(declare-fun b!5094536 () Bool)

(declare-fun e!3177246 () Bool)

(declare-fun tp_is_empty!37221 () Bool)

(declare-fun tp!1420457 () Bool)

(assert (=> b!5094536 (= e!3177246 (and tp_is_empty!37221 tp!1420457))))

(declare-fun b!5094537 () Bool)

(declare-fun tp!1420454 () Bool)

(declare-fun inv!78100 (String!67009) Bool)

(declare-fun inv!78103 (TokenValueInjection!16942) Bool)

(assert (=> b!5094537 (= e!3177248 (and tp!1420454 (inv!78100 (tag!9367 (h!65054 rulesArg!145))) (inv!78103 (transformation!8503 (h!65054 rulesArg!145))) e!3177253))))

(declare-fun b!5094538 () Bool)

(declare-fun e!3177249 () Bool)

(assert (=> b!5094538 (= e!3177250 (not e!3177249))))

(declare-fun res!2168095 () Bool)

(assert (=> b!5094538 (=> res!2168095 e!3177249)))

(assert (=> b!5094538 (= res!2168095 (or (and (is-Cons!58606 rulesArg!145) (is-Nil!58606 (t!371685 rulesArg!145))) (not (is-Cons!58606 rulesArg!145))))))

(declare-fun input!1210 () List!58729)

(declare-fun isPrefix!5399 (List!58729 List!58729) Bool)

(assert (=> b!5094538 (isPrefix!5399 input!1210 input!1210)))

(declare-datatypes ((Unit!149646 0))(
  ( (Unit!149647) )
))
(declare-fun lt!2093114 () Unit!149646)

(declare-fun lemmaIsPrefixRefl!3658 (List!58729 List!58729) Unit!149646)

(assert (=> b!5094538 (= lt!2093114 (lemmaIsPrefixRefl!3658 input!1210 input!1210))))

(declare-fun res!2168099 () Bool)

(assert (=> start!537020 (=> (not res!2168099) (not e!3177250))))

(declare-datatypes ((LexerInterface!8095 0))(
  ( (LexerInterfaceExt!8092 (__x!34924 Int)) (Lexer!8093) )
))
(declare-fun thiss!14775 () LexerInterface!8095)

(assert (=> start!537020 (= res!2168099 (is-Lexer!8093 thiss!14775))))

(assert (=> start!537020 e!3177250))

(assert (=> start!537020 true))

(assert (=> start!537020 e!3177251))

(assert (=> start!537020 e!3177246))

(declare-fun b!5094539 () Bool)

(declare-fun e!3177247 () Bool)

(declare-datatypes ((Token!15446 0))(
  ( (Token!15447 (value!272647 TokenValue!8817) (rule!11777 Rule!16806) (size!39272 Int) (originalCharacters!8754 List!58729)) )
))
(declare-datatypes ((tuple2!63332 0))(
  ( (tuple2!63333 (_1!34969 Token!15446) (_2!34969 List!58729)) )
))
(declare-datatypes ((Option!14632 0))(
  ( (None!14631) (Some!14631 (v!50644 tuple2!63332)) )
))
(declare-fun maxPrefix!4672 (LexerInterface!8095 List!58730 List!58729) Option!14632)

(assert (=> b!5094539 (= e!3177247 (= None!14631 (maxPrefix!4672 thiss!14775 rulesArg!145 input!1210)))))

(declare-fun b!5094540 () Bool)

(declare-fun res!2168098 () Bool)

(assert (=> b!5094540 (=> (not res!2168098) (not e!3177250))))

(declare-fun rulesValidInductive!3328 (LexerInterface!8095 List!58730) Bool)

(assert (=> b!5094540 (= res!2168098 (rulesValidInductive!3328 thiss!14775 rulesArg!145))))

(declare-fun b!5094541 () Bool)

(assert (=> b!5094541 (= e!3177249 e!3177247)))

(declare-fun res!2168096 () Bool)

(assert (=> b!5094541 (=> res!2168096 e!3177247)))

(declare-fun lt!2093115 () Option!14632)

(declare-fun lt!2093113 () Option!14632)

(assert (=> b!5094541 (= res!2168096 (or (not (is-None!14631 lt!2093115)) (not (is-None!14631 lt!2093113))))))

(declare-fun maxPrefixZipper!798 (LexerInterface!8095 List!58730 List!58729) Option!14632)

(assert (=> b!5094541 (= lt!2093113 (maxPrefixZipper!798 thiss!14775 (t!371685 rulesArg!145) input!1210))))

(declare-fun maxPrefixOneRuleZipper!319 (LexerInterface!8095 Rule!16806 List!58729) Option!14632)

(assert (=> b!5094541 (= lt!2093115 (maxPrefixOneRuleZipper!319 thiss!14775 (h!65054 rulesArg!145) input!1210))))

(assert (= (and start!537020 res!2168099) b!5094540))

(assert (= (and b!5094540 res!2168098) b!5094534))

(assert (= (and b!5094534 res!2168097) b!5094538))

(assert (= (and b!5094538 (not res!2168095)) b!5094541))

(assert (= (and b!5094541 (not res!2168096)) b!5094539))

(assert (= b!5094537 b!5094533))

(assert (= b!5094535 b!5094537))

(assert (= (and start!537020 (is-Cons!58606 rulesArg!145)) b!5094535))

(assert (= (and start!537020 (is-Cons!58605 input!1210)) b!5094536))

(declare-fun m!6152316 () Bool)

(assert (=> b!5094540 m!6152316))

(declare-fun m!6152318 () Bool)

(assert (=> b!5094538 m!6152318))

(declare-fun m!6152320 () Bool)

(assert (=> b!5094538 m!6152320))

(declare-fun m!6152322 () Bool)

(assert (=> b!5094541 m!6152322))

(declare-fun m!6152324 () Bool)

(assert (=> b!5094541 m!6152324))

(declare-fun m!6152326 () Bool)

(assert (=> b!5094539 m!6152326))

(declare-fun m!6152328 () Bool)

(assert (=> b!5094534 m!6152328))

(declare-fun m!6152330 () Bool)

(assert (=> b!5094537 m!6152330))

(declare-fun m!6152332 () Bool)

(assert (=> b!5094537 m!6152332))

(push 1)

(assert b_and!350249)

(assert (not b!5094540))

(assert (not b!5094538))

(assert tp_is_empty!37221)

(assert (not b_next!134155))

(assert (not b_next!134153))

(assert (not b!5094534))

(assert (not b!5094537))

(assert (not b!5094541))

(assert (not b!5094539))

(assert (not b!5094535))

(assert (not b!5094536))

(assert b_and!350247)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350249)

(assert b_and!350247)

(assert (not b_next!134153))

(assert (not b_next!134155))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5094577 () Bool)

(declare-fun e!3177286 () Bool)

(declare-fun e!3177284 () Bool)

(assert (=> b!5094577 (= e!3177286 e!3177284)))

(declare-fun res!2168130 () Bool)

(assert (=> b!5094577 (=> (not res!2168130) (not e!3177284))))

(assert (=> b!5094577 (= res!2168130 (not (is-Nil!58605 input!1210)))))

(declare-fun d!1648857 () Bool)

(declare-fun e!3177285 () Bool)

(assert (=> d!1648857 e!3177285))

(declare-fun res!2168131 () Bool)

(assert (=> d!1648857 (=> res!2168131 e!3177285)))

(declare-fun lt!2093127 () Bool)

(assert (=> d!1648857 (= res!2168131 (not lt!2093127))))

(assert (=> d!1648857 (= lt!2093127 e!3177286)))

(declare-fun res!2168132 () Bool)

(assert (=> d!1648857 (=> res!2168132 e!3177286)))

(assert (=> d!1648857 (= res!2168132 (is-Nil!58605 input!1210))))

(assert (=> d!1648857 (= (isPrefix!5399 input!1210 input!1210) lt!2093127)))

(declare-fun b!5094579 () Bool)

(declare-fun tail!9973 (List!58729) List!58729)

(assert (=> b!5094579 (= e!3177284 (isPrefix!5399 (tail!9973 input!1210) (tail!9973 input!1210)))))

(declare-fun b!5094580 () Bool)

(declare-fun size!39274 (List!58729) Int)

(assert (=> b!5094580 (= e!3177285 (>= (size!39274 input!1210) (size!39274 input!1210)))))

(declare-fun b!5094578 () Bool)

(declare-fun res!2168133 () Bool)

(assert (=> b!5094578 (=> (not res!2168133) (not e!3177284))))

(declare-fun head!10818 (List!58729) C!28214)

(assert (=> b!5094578 (= res!2168133 (= (head!10818 input!1210) (head!10818 input!1210)))))

(assert (= (and d!1648857 (not res!2168132)) b!5094577))

(assert (= (and b!5094577 res!2168130) b!5094578))

(assert (= (and b!5094578 res!2168133) b!5094579))

(assert (= (and d!1648857 (not res!2168131)) b!5094580))

(declare-fun m!6152352 () Bool)

(assert (=> b!5094579 m!6152352))

(assert (=> b!5094579 m!6152352))

(assert (=> b!5094579 m!6152352))

(assert (=> b!5094579 m!6152352))

(declare-fun m!6152354 () Bool)

(assert (=> b!5094579 m!6152354))

(declare-fun m!6152356 () Bool)

(assert (=> b!5094580 m!6152356))

(assert (=> b!5094580 m!6152356))

(declare-fun m!6152358 () Bool)

(assert (=> b!5094578 m!6152358))

(assert (=> b!5094578 m!6152358))

(assert (=> b!5094538 d!1648857))

(declare-fun d!1648859 () Bool)

(assert (=> d!1648859 (isPrefix!5399 input!1210 input!1210)))

(declare-fun lt!2093130 () Unit!149646)

(declare-fun choose!37305 (List!58729 List!58729) Unit!149646)

(assert (=> d!1648859 (= lt!2093130 (choose!37305 input!1210 input!1210))))

(assert (=> d!1648859 (= (lemmaIsPrefixRefl!3658 input!1210 input!1210) lt!2093130)))

(declare-fun bs!1191301 () Bool)

(assert (= bs!1191301 d!1648859))

(assert (=> bs!1191301 m!6152318))

(declare-fun m!6152360 () Bool)

(assert (=> bs!1191301 m!6152360))

(assert (=> b!5094538 d!1648859))

(declare-fun d!1648861 () Bool)

(assert (=> d!1648861 true))

(declare-fun lt!2093156 () Bool)

(declare-fun lambda!249859 () Int)

(declare-fun forall!13474 (List!58730 Int) Bool)

(assert (=> d!1648861 (= lt!2093156 (forall!13474 rulesArg!145 lambda!249859))))

(declare-fun e!3177316 () Bool)

(assert (=> d!1648861 (= lt!2093156 e!3177316)))

(declare-fun res!2168178 () Bool)

(assert (=> d!1648861 (=> res!2168178 e!3177316)))

(assert (=> d!1648861 (= res!2168178 (not (is-Cons!58606 rulesArg!145)))))

(assert (=> d!1648861 (= (rulesValidInductive!3328 thiss!14775 rulesArg!145) lt!2093156)))

(declare-fun b!5094631 () Bool)

(declare-fun e!3177317 () Bool)

(assert (=> b!5094631 (= e!3177316 e!3177317)))

(declare-fun res!2168179 () Bool)

(assert (=> b!5094631 (=> (not res!2168179) (not e!3177317))))

(declare-fun ruleValid!3901 (LexerInterface!8095 Rule!16806) Bool)

(assert (=> b!5094631 (= res!2168179 (ruleValid!3901 thiss!14775 (h!65054 rulesArg!145)))))

(declare-fun b!5094632 () Bool)

(assert (=> b!5094632 (= e!3177317 (rulesValidInductive!3328 thiss!14775 (t!371685 rulesArg!145)))))

(assert (= (and d!1648861 (not res!2168178)) b!5094631))

(assert (= (and b!5094631 res!2168179) b!5094632))

(declare-fun m!6152402 () Bool)

(assert (=> d!1648861 m!6152402))

(declare-fun m!6152404 () Bool)

(assert (=> b!5094631 m!6152404))

(declare-fun m!6152406 () Bool)

(assert (=> b!5094632 m!6152406))

(assert (=> b!5094540 d!1648861))

(declare-fun b!5094653 () Bool)

(declare-fun res!2168198 () Bool)

(declare-fun e!3177324 () Bool)

(assert (=> b!5094653 (=> (not res!2168198) (not e!3177324))))

(declare-fun lt!2093169 () Option!14632)

(declare-fun get!20344 (Option!14632) tuple2!63332)

(declare-fun apply!14290 (TokenValueInjection!16942 BalanceConc!30468) TokenValue!8817)

(declare-fun seqFromList!6108 (List!58729) BalanceConc!30468)

(assert (=> b!5094653 (= res!2168198 (= (value!272647 (_1!34969 (get!20344 lt!2093169))) (apply!14290 (transformation!8503 (rule!11777 (_1!34969 (get!20344 lt!2093169)))) (seqFromList!6108 (originalCharacters!8754 (_1!34969 (get!20344 lt!2093169)))))))))

(declare-fun b!5094654 () Bool)

(declare-fun e!3177326 () Option!14632)

(declare-fun call!354737 () Option!14632)

(assert (=> b!5094654 (= e!3177326 call!354737)))

(declare-fun b!5094655 () Bool)

(declare-fun res!2168197 () Bool)

(assert (=> b!5094655 (=> (not res!2168197) (not e!3177324))))

(declare-fun matchR!6790 (Regex!13978 List!58729) Bool)

(declare-fun list!19139 (BalanceConc!30468) List!58729)

(declare-fun charsOf!5473 (Token!15446) BalanceConc!30468)

(assert (=> b!5094655 (= res!2168197 (matchR!6790 (regex!8503 (rule!11777 (_1!34969 (get!20344 lt!2093169)))) (list!19139 (charsOf!5473 (_1!34969 (get!20344 lt!2093169))))))))

(declare-fun d!1648877 () Bool)

(declare-fun e!3177325 () Bool)

(assert (=> d!1648877 e!3177325))

(declare-fun res!2168200 () Bool)

(assert (=> d!1648877 (=> res!2168200 e!3177325)))

(declare-fun isEmpty!31722 (Option!14632) Bool)

(assert (=> d!1648877 (= res!2168200 (isEmpty!31722 lt!2093169))))

(assert (=> d!1648877 (= lt!2093169 e!3177326)))

(declare-fun c!875495 () Bool)

(assert (=> d!1648877 (= c!875495 (and (is-Cons!58606 rulesArg!145) (is-Nil!58606 (t!371685 rulesArg!145))))))

(declare-fun lt!2093168 () Unit!149646)

(declare-fun lt!2093170 () Unit!149646)

(assert (=> d!1648877 (= lt!2093168 lt!2093170)))

(assert (=> d!1648877 (isPrefix!5399 input!1210 input!1210)))

(assert (=> d!1648877 (= lt!2093170 (lemmaIsPrefixRefl!3658 input!1210 input!1210))))

(assert (=> d!1648877 (rulesValidInductive!3328 thiss!14775 rulesArg!145)))

(assert (=> d!1648877 (= (maxPrefix!4672 thiss!14775 rulesArg!145 input!1210) lt!2093169)))

(declare-fun bm!354732 () Bool)

(declare-fun maxPrefixOneRule!3701 (LexerInterface!8095 Rule!16806 List!58729) Option!14632)

(assert (=> bm!354732 (= call!354737 (maxPrefixOneRule!3701 thiss!14775 (h!65054 rulesArg!145) input!1210))))

(declare-fun b!5094656 () Bool)

(declare-fun lt!2093167 () Option!14632)

(declare-fun lt!2093171 () Option!14632)

(assert (=> b!5094656 (= e!3177326 (ite (and (is-None!14631 lt!2093167) (is-None!14631 lt!2093171)) None!14631 (ite (is-None!14631 lt!2093171) lt!2093167 (ite (is-None!14631 lt!2093167) lt!2093171 (ite (>= (size!39272 (_1!34969 (v!50644 lt!2093167))) (size!39272 (_1!34969 (v!50644 lt!2093171)))) lt!2093167 lt!2093171)))))))

(assert (=> b!5094656 (= lt!2093167 call!354737)))

(assert (=> b!5094656 (= lt!2093171 (maxPrefix!4672 thiss!14775 (t!371685 rulesArg!145) input!1210))))

(declare-fun b!5094657 () Bool)

(declare-fun contains!19600 (List!58730 Rule!16806) Bool)

(assert (=> b!5094657 (= e!3177324 (contains!19600 rulesArg!145 (rule!11777 (_1!34969 (get!20344 lt!2093169)))))))

(declare-fun b!5094658 () Bool)

(declare-fun res!2168196 () Bool)

(assert (=> b!5094658 (=> (not res!2168196) (not e!3177324))))

(assert (=> b!5094658 (= res!2168196 (= (list!19139 (charsOf!5473 (_1!34969 (get!20344 lt!2093169)))) (originalCharacters!8754 (_1!34969 (get!20344 lt!2093169)))))))

(declare-fun b!5094659 () Bool)

(assert (=> b!5094659 (= e!3177325 e!3177324)))

(declare-fun res!2168194 () Bool)

(assert (=> b!5094659 (=> (not res!2168194) (not e!3177324))))

(declare-fun isDefined!11499 (Option!14632) Bool)

(assert (=> b!5094659 (= res!2168194 (isDefined!11499 lt!2093169))))

(declare-fun b!5094660 () Bool)

(declare-fun res!2168195 () Bool)

(assert (=> b!5094660 (=> (not res!2168195) (not e!3177324))))

(assert (=> b!5094660 (= res!2168195 (< (size!39274 (_2!34969 (get!20344 lt!2093169))) (size!39274 input!1210)))))

(declare-fun b!5094661 () Bool)

(declare-fun res!2168199 () Bool)

(assert (=> b!5094661 (=> (not res!2168199) (not e!3177324))))

(declare-fun ++!12850 (List!58729 List!58729) List!58729)

(assert (=> b!5094661 (= res!2168199 (= (++!12850 (list!19139 (charsOf!5473 (_1!34969 (get!20344 lt!2093169)))) (_2!34969 (get!20344 lt!2093169))) input!1210))))

(assert (= (and d!1648877 c!875495) b!5094654))

(assert (= (and d!1648877 (not c!875495)) b!5094656))

(assert (= (or b!5094654 b!5094656) bm!354732))

(assert (= (and d!1648877 (not res!2168200)) b!5094659))

(assert (= (and b!5094659 res!2168194) b!5094658))

(assert (= (and b!5094658 res!2168196) b!5094660))

(assert (= (and b!5094660 res!2168195) b!5094661))

(assert (= (and b!5094661 res!2168199) b!5094653))

(assert (= (and b!5094653 res!2168198) b!5094655))

(assert (= (and b!5094655 res!2168197) b!5094657))

(declare-fun m!6152408 () Bool)

(assert (=> bm!354732 m!6152408))

(declare-fun m!6152410 () Bool)

(assert (=> b!5094660 m!6152410))

(declare-fun m!6152412 () Bool)

(assert (=> b!5094660 m!6152412))

(assert (=> b!5094660 m!6152356))

(assert (=> b!5094657 m!6152410))

(declare-fun m!6152414 () Bool)

(assert (=> b!5094657 m!6152414))

(assert (=> b!5094655 m!6152410))

(declare-fun m!6152416 () Bool)

(assert (=> b!5094655 m!6152416))

(assert (=> b!5094655 m!6152416))

(declare-fun m!6152418 () Bool)

(assert (=> b!5094655 m!6152418))

(assert (=> b!5094655 m!6152418))

(declare-fun m!6152420 () Bool)

(assert (=> b!5094655 m!6152420))

(assert (=> b!5094661 m!6152410))

(assert (=> b!5094661 m!6152416))

(assert (=> b!5094661 m!6152416))

(assert (=> b!5094661 m!6152418))

(assert (=> b!5094661 m!6152418))

(declare-fun m!6152422 () Bool)

(assert (=> b!5094661 m!6152422))

(declare-fun m!6152424 () Bool)

(assert (=> b!5094659 m!6152424))

(declare-fun m!6152426 () Bool)

(assert (=> d!1648877 m!6152426))

(assert (=> d!1648877 m!6152318))

(assert (=> d!1648877 m!6152320))

(assert (=> d!1648877 m!6152316))

(declare-fun m!6152428 () Bool)

(assert (=> b!5094656 m!6152428))

(assert (=> b!5094653 m!6152410))

(declare-fun m!6152430 () Bool)

(assert (=> b!5094653 m!6152430))

(assert (=> b!5094653 m!6152430))

(declare-fun m!6152432 () Bool)

(assert (=> b!5094653 m!6152432))

(assert (=> b!5094658 m!6152410))

(assert (=> b!5094658 m!6152416))

(assert (=> b!5094658 m!6152416))

(assert (=> b!5094658 m!6152418))

(assert (=> b!5094539 d!1648877))

(declare-fun d!1648879 () Bool)

(assert (=> d!1648879 (= (isEmpty!31720 rulesArg!145) (is-Nil!58606 rulesArg!145))))

(assert (=> b!5094534 d!1648879))

(declare-fun lt!2093182 () Option!14632)

(declare-fun d!1648881 () Bool)

(assert (=> d!1648881 (= lt!2093182 (maxPrefix!4672 thiss!14775 (t!371685 rulesArg!145) input!1210))))

(declare-fun e!3177329 () Option!14632)

(assert (=> d!1648881 (= lt!2093182 e!3177329)))

(declare-fun c!875498 () Bool)

(assert (=> d!1648881 (= c!875498 (and (is-Cons!58606 (t!371685 rulesArg!145)) (is-Nil!58606 (t!371685 (t!371685 rulesArg!145)))))))

(declare-fun lt!2093186 () Unit!149646)

(declare-fun lt!2093183 () Unit!149646)

(assert (=> d!1648881 (= lt!2093186 lt!2093183)))

(assert (=> d!1648881 (isPrefix!5399 input!1210 input!1210)))

(assert (=> d!1648881 (= lt!2093183 (lemmaIsPrefixRefl!3658 input!1210 input!1210))))

(assert (=> d!1648881 (rulesValidInductive!3328 thiss!14775 (t!371685 rulesArg!145))))

(assert (=> d!1648881 (= (maxPrefixZipper!798 thiss!14775 (t!371685 rulesArg!145) input!1210) lt!2093182)))

(declare-fun bm!354735 () Bool)

(declare-fun call!354740 () Option!14632)

(assert (=> bm!354735 (= call!354740 (maxPrefixOneRuleZipper!319 thiss!14775 (h!65054 (t!371685 rulesArg!145)) input!1210))))

(declare-fun b!5094666 () Bool)

(assert (=> b!5094666 (= e!3177329 call!354740)))

(declare-fun b!5094667 () Bool)

(declare-fun lt!2093185 () Option!14632)

(declare-fun lt!2093184 () Option!14632)

(assert (=> b!5094667 (= e!3177329 (ite (and (is-None!14631 lt!2093185) (is-None!14631 lt!2093184)) None!14631 (ite (is-None!14631 lt!2093184) lt!2093185 (ite (is-None!14631 lt!2093185) lt!2093184 (ite (>= (size!39272 (_1!34969 (v!50644 lt!2093185))) (size!39272 (_1!34969 (v!50644 lt!2093184)))) lt!2093185 lt!2093184)))))))

(assert (=> b!5094667 (= lt!2093185 call!354740)))

(assert (=> b!5094667 (= lt!2093184 (maxPrefixZipper!798 thiss!14775 (t!371685 (t!371685 rulesArg!145)) input!1210))))

(assert (= (and d!1648881 c!875498) b!5094666))

(assert (= (and d!1648881 (not c!875498)) b!5094667))

(assert (= (or b!5094666 b!5094667) bm!354735))

(assert (=> d!1648881 m!6152428))

(assert (=> d!1648881 m!6152318))

(assert (=> d!1648881 m!6152320))

(assert (=> d!1648881 m!6152406))

(declare-fun m!6152434 () Bool)

(assert (=> bm!354735 m!6152434))

(declare-fun m!6152436 () Bool)

(assert (=> b!5094667 m!6152436))

(assert (=> b!5094541 d!1648881))

(declare-fun d!1648883 () Bool)

(declare-fun lt!2093204 () Option!14632)

(assert (=> d!1648883 (= lt!2093204 (maxPrefixOneRule!3701 thiss!14775 (h!65054 rulesArg!145) input!1210))))

(declare-fun e!3177336 () Option!14632)

(assert (=> d!1648883 (= lt!2093204 e!3177336)))

(declare-fun c!875501 () Bool)

(declare-datatypes ((tuple2!63336 0))(
  ( (tuple2!63337 (_1!34971 List!58729) (_2!34971 List!58729)) )
))
(declare-fun lt!2093205 () tuple2!63336)

(declare-fun isEmpty!31723 (List!58729) Bool)

(assert (=> d!1648883 (= c!875501 (isEmpty!31723 (_1!34971 lt!2093205)))))

(declare-fun findLongestMatchWithZipper!107 (Regex!13978 List!58729) tuple2!63336)

(assert (=> d!1648883 (= lt!2093205 (findLongestMatchWithZipper!107 (regex!8503 (h!65054 rulesArg!145)) input!1210))))

(assert (=> d!1648883 (ruleValid!3901 thiss!14775 (h!65054 rulesArg!145))))

(assert (=> d!1648883 (= (maxPrefixOneRuleZipper!319 thiss!14775 (h!65054 rulesArg!145) input!1210) lt!2093204)))

(declare-fun b!5094678 () Bool)

(assert (=> b!5094678 (= e!3177336 None!14631)))

(declare-fun b!5094679 () Bool)

(assert (=> b!5094679 (= e!3177336 (Some!14631 (tuple2!63333 (Token!15447 (apply!14290 (transformation!8503 (h!65054 rulesArg!145)) (seqFromList!6108 (_1!34971 lt!2093205))) (h!65054 rulesArg!145) (size!39274 (_1!34971 lt!2093205)) (_1!34971 lt!2093205)) (_2!34971 lt!2093205))))))

(declare-fun lt!2093200 () Unit!149646)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1968 (Regex!13978 List!58729) Unit!149646)

(assert (=> b!5094679 (= lt!2093200 (longestMatchIsAcceptedByMatchOrIsEmpty!1968 (regex!8503 (h!65054 rulesArg!145)) input!1210))))

(declare-fun res!2168205 () Bool)

(declare-fun findLongestMatchInner!2015 (Regex!13978 List!58729 Int List!58729 List!58729 Int) tuple2!63336)

(assert (=> b!5094679 (= res!2168205 (isEmpty!31723 (_1!34971 (findLongestMatchInner!2015 (regex!8503 (h!65054 rulesArg!145)) Nil!58605 (size!39274 Nil!58605) input!1210 input!1210 (size!39274 input!1210)))))))

(declare-fun e!3177337 () Bool)

(assert (=> b!5094679 (=> res!2168205 e!3177337)))

(assert (=> b!5094679 e!3177337))

(declare-fun lt!2093202 () Unit!149646)

(assert (=> b!5094679 (= lt!2093202 lt!2093200)))

(declare-fun lt!2093201 () Unit!149646)

(declare-fun lemmaInv!1408 (TokenValueInjection!16942) Unit!149646)

(assert (=> b!5094679 (= lt!2093201 (lemmaInv!1408 (transformation!8503 (h!65054 rulesArg!145))))))

(declare-fun lt!2093203 () Unit!149646)

(declare-fun lemmaSemiInverse!2641 (TokenValueInjection!16942 BalanceConc!30468) Unit!149646)

(assert (=> b!5094679 (= lt!2093203 (lemmaSemiInverse!2641 (transformation!8503 (h!65054 rulesArg!145)) (seqFromList!6108 (_1!34971 lt!2093205))))))

(declare-fun b!5094680 () Bool)

(assert (=> b!5094680 (= e!3177337 (matchR!6790 (regex!8503 (h!65054 rulesArg!145)) (_1!34971 (findLongestMatchInner!2015 (regex!8503 (h!65054 rulesArg!145)) Nil!58605 (size!39274 Nil!58605) input!1210 input!1210 (size!39274 input!1210)))))))

(assert (= (and d!1648883 c!875501) b!5094678))

(assert (= (and d!1648883 (not c!875501)) b!5094679))

(assert (= (and b!5094679 (not res!2168205)) b!5094680))

(assert (=> d!1648883 m!6152408))

(declare-fun m!6152444 () Bool)

(assert (=> d!1648883 m!6152444))

(declare-fun m!6152446 () Bool)

(assert (=> d!1648883 m!6152446))

(assert (=> d!1648883 m!6152404))

(declare-fun m!6152448 () Bool)

(assert (=> b!5094679 m!6152448))

(declare-fun m!6152450 () Bool)

(assert (=> b!5094679 m!6152450))

(declare-fun m!6152452 () Bool)

(assert (=> b!5094679 m!6152452))

(declare-fun m!6152454 () Bool)

(assert (=> b!5094679 m!6152454))

(assert (=> b!5094679 m!6152452))

(declare-fun m!6152456 () Bool)

(assert (=> b!5094679 m!6152456))

(assert (=> b!5094679 m!6152356))

(assert (=> b!5094679 m!6152452))

(declare-fun m!6152458 () Bool)

(assert (=> b!5094679 m!6152458))

(declare-fun m!6152460 () Bool)

(assert (=> b!5094679 m!6152460))

(assert (=> b!5094679 m!6152450))

(assert (=> b!5094679 m!6152356))

(declare-fun m!6152462 () Bool)

(assert (=> b!5094679 m!6152462))

(declare-fun m!6152464 () Bool)

(assert (=> b!5094679 m!6152464))

(assert (=> b!5094680 m!6152450))

(assert (=> b!5094680 m!6152356))

(assert (=> b!5094680 m!6152450))

(assert (=> b!5094680 m!6152356))

(assert (=> b!5094680 m!6152462))

(declare-fun m!6152466 () Bool)

(assert (=> b!5094680 m!6152466))

(assert (=> b!5094541 d!1648883))

(declare-fun d!1648887 () Bool)

(assert (=> d!1648887 (= (inv!78100 (tag!9367 (h!65054 rulesArg!145))) (= (mod (str.len (value!272646 (tag!9367 (h!65054 rulesArg!145)))) 2) 0))))

(assert (=> b!5094537 d!1648887))

(declare-fun d!1648889 () Bool)

(declare-fun res!2168208 () Bool)

(declare-fun e!3177340 () Bool)

(assert (=> d!1648889 (=> (not res!2168208) (not e!3177340))))

(declare-fun semiInverseModEq!3787 (Int Int) Bool)

(assert (=> d!1648889 (= res!2168208 (semiInverseModEq!3787 (toChars!11385 (transformation!8503 (h!65054 rulesArg!145))) (toValue!11526 (transformation!8503 (h!65054 rulesArg!145)))))))

(assert (=> d!1648889 (= (inv!78103 (transformation!8503 (h!65054 rulesArg!145))) e!3177340)))

(declare-fun b!5094683 () Bool)

(declare-fun equivClasses!3602 (Int Int) Bool)

(assert (=> b!5094683 (= e!3177340 (equivClasses!3602 (toChars!11385 (transformation!8503 (h!65054 rulesArg!145))) (toValue!11526 (transformation!8503 (h!65054 rulesArg!145)))))))

(assert (= (and d!1648889 res!2168208) b!5094683))

(declare-fun m!6152468 () Bool)

(assert (=> d!1648889 m!6152468))

(declare-fun m!6152470 () Bool)

(assert (=> b!5094683 m!6152470))

(assert (=> b!5094537 d!1648889))

(declare-fun b!5094688 () Bool)

(declare-fun e!3177343 () Bool)

(declare-fun tp!1420476 () Bool)

(assert (=> b!5094688 (= e!3177343 (and tp_is_empty!37221 tp!1420476))))

(assert (=> b!5094536 (= tp!1420457 e!3177343)))

(assert (= (and b!5094536 (is-Cons!58605 (t!371684 input!1210))) b!5094688))

(declare-fun b!5094699 () Bool)

(declare-fun b_free!133371 () Bool)

(declare-fun b_next!134161 () Bool)

(assert (=> b!5094699 (= b_free!133371 (not b_next!134161))))

(declare-fun tp!1420488 () Bool)

(declare-fun b_and!350255 () Bool)

(assert (=> b!5094699 (= tp!1420488 b_and!350255)))

(declare-fun b_free!133373 () Bool)

(declare-fun b_next!134163 () Bool)

(assert (=> b!5094699 (= b_free!133373 (not b_next!134163))))

(declare-fun tp!1420486 () Bool)

(declare-fun b_and!350257 () Bool)

(assert (=> b!5094699 (= tp!1420486 b_and!350257)))

(declare-fun e!3177354 () Bool)

(assert (=> b!5094699 (= e!3177354 (and tp!1420488 tp!1420486))))

(declare-fun tp!1420485 () Bool)

(declare-fun b!5094698 () Bool)

(declare-fun e!3177353 () Bool)

(assert (=> b!5094698 (= e!3177353 (and tp!1420485 (inv!78100 (tag!9367 (h!65054 (t!371685 rulesArg!145)))) (inv!78103 (transformation!8503 (h!65054 (t!371685 rulesArg!145)))) e!3177354))))

(declare-fun b!5094697 () Bool)

(declare-fun e!3177352 () Bool)

(declare-fun tp!1420487 () Bool)

(assert (=> b!5094697 (= e!3177352 (and e!3177353 tp!1420487))))

(assert (=> b!5094535 (= tp!1420456 e!3177352)))

(assert (= b!5094698 b!5094699))

(assert (= b!5094697 b!5094698))

(assert (= (and b!5094535 (is-Cons!58606 (t!371685 rulesArg!145))) b!5094697))

(declare-fun m!6152472 () Bool)

(assert (=> b!5094698 m!6152472))

(declare-fun m!6152474 () Bool)

(assert (=> b!5094698 m!6152474))

(declare-fun b!5094710 () Bool)

(declare-fun e!3177358 () Bool)

(assert (=> b!5094710 (= e!3177358 tp_is_empty!37221)))

(declare-fun b!5094713 () Bool)

(declare-fun tp!1420499 () Bool)

(declare-fun tp!1420503 () Bool)

(assert (=> b!5094713 (= e!3177358 (and tp!1420499 tp!1420503))))

(declare-fun b!5094711 () Bool)

(declare-fun tp!1420500 () Bool)

(declare-fun tp!1420501 () Bool)

(assert (=> b!5094711 (= e!3177358 (and tp!1420500 tp!1420501))))

(assert (=> b!5094537 (= tp!1420454 e!3177358)))

(declare-fun b!5094712 () Bool)

(declare-fun tp!1420502 () Bool)

(assert (=> b!5094712 (= e!3177358 tp!1420502)))

(assert (= (and b!5094537 (is-ElementMatch!13978 (regex!8503 (h!65054 rulesArg!145)))) b!5094710))

(assert (= (and b!5094537 (is-Concat!22796 (regex!8503 (h!65054 rulesArg!145)))) b!5094711))

(assert (= (and b!5094537 (is-Star!13978 (regex!8503 (h!65054 rulesArg!145)))) b!5094712))

(assert (= (and b!5094537 (is-Union!13978 (regex!8503 (h!65054 rulesArg!145)))) b!5094713))

(push 1)

(assert (not bm!354735))

(assert (not b!5094698))

(assert (not b!5094713))

(assert (not bm!354732))

(assert (not b!5094658))

(assert (not b!5094631))

(assert (not b_next!134155))

(assert (not b_next!134161))

(assert b_and!350247)

(assert (not b!5094660))

(assert (not b!5094697))

(assert (not b!5094579))

(assert (not b_next!134163))

(assert (not b!5094712))

(assert (not d!1648883))

(assert (not b!5094580))

(assert b_and!350249)

(assert b_and!350255)

(assert (not b!5094667))

(assert (not b!5094683))

(assert (not b!5094661))

(assert (not d!1648889))

(assert (not b!5094656))

(assert (not b!5094659))

(assert (not d!1648881))

(assert (not b!5094578))

(assert (not d!1648859))

(assert (not b!5094688))

(assert (not d!1648861))

(assert (not b!5094657))

(assert (not b!5094655))

(assert (not b!5094680))

(assert b_and!350257)

(assert tp_is_empty!37221)

(assert (not b!5094653))

(assert (not b_next!134153))

(assert (not b!5094632))

(assert (not b!5094679))

(assert (not b!5094711))

(assert (not d!1648877))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350257)

(assert (not b_next!134155))

(assert (not b_next!134161))

(assert b_and!350247)

(assert (not b_next!134153))

(assert (not b_next!134163))

(assert b_and!350249)

(assert b_and!350255)

(check-sat)

(pop 1)

