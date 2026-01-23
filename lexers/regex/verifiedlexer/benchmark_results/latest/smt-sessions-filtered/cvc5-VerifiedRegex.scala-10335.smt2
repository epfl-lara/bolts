; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!536854 () Bool)

(assert start!536854)

(declare-fun b!5093504 () Bool)

(declare-fun b_free!133279 () Bool)

(declare-fun b_next!134069 () Bool)

(assert (=> b!5093504 (= b_free!133279 (not b_next!134069))))

(declare-fun tp!1419944 () Bool)

(declare-fun b_and!350163 () Bool)

(assert (=> b!5093504 (= tp!1419944 b_and!350163)))

(declare-fun b_free!133281 () Bool)

(declare-fun b_next!134071 () Bool)

(assert (=> b!5093504 (= b_free!133281 (not b_next!134071))))

(declare-fun tp!1419945 () Bool)

(declare-fun b_and!350165 () Bool)

(assert (=> b!5093504 (= tp!1419945 b_and!350165)))

(declare-fun b!5093503 () Bool)

(declare-fun e!3176502 () Bool)

(declare-fun tp_is_empty!37193 () Bool)

(declare-fun tp!1419946 () Bool)

(assert (=> b!5093503 (= e!3176502 (and tp_is_empty!37193 tp!1419946))))

(declare-fun e!3176504 () Bool)

(assert (=> b!5093504 (= e!3176504 (and tp!1419944 tp!1419945))))

(declare-fun res!2167603 () Bool)

(declare-fun e!3176508 () Bool)

(assert (=> start!536854 (=> (not res!2167603) (not e!3176508))))

(declare-datatypes ((LexerInterface!8081 0))(
  ( (LexerInterfaceExt!8078 (__x!34895 Int)) (Lexer!8079) )
))
(declare-fun thiss!14775 () LexerInterface!8081)

(assert (=> start!536854 (= res!2167603 (is-Lexer!8079 thiss!14775))))

(assert (=> start!536854 e!3176508))

(assert (=> start!536854 true))

(declare-fun e!3176505 () Bool)

(assert (=> start!536854 e!3176505))

(assert (=> start!536854 e!3176502))

(declare-fun b!5093505 () Bool)

(declare-fun e!3176507 () Bool)

(assert (=> b!5093505 (= e!3176508 (not e!3176507))))

(declare-fun res!2167601 () Bool)

(assert (=> b!5093505 (=> res!2167601 e!3176507)))

(declare-datatypes ((List!58686 0))(
  ( (Nil!58562) (Cons!58562 (h!65010 (_ BitVec 16)) (t!371641 List!58686)) )
))
(declare-datatypes ((TokenValue!8803 0))(
  ( (FloatLiteralValue!17606 (text!62066 List!58686)) (TokenValueExt!8802 (__x!34896 Int)) (Broken!44015 (value!272224 List!58686)) (Object!8926) (End!8803) (Def!8803) (Underscore!8803) (Match!8803) (Else!8803) (Error!8803) (Case!8803) (If!8803) (Extends!8803) (Abstract!8803) (Class!8803) (Val!8803) (DelimiterValue!17606 (del!8863 List!58686)) (KeywordValue!8809 (value!272225 List!58686)) (CommentValue!17606 (value!272226 List!58686)) (WhitespaceValue!17606 (value!272227 List!58686)) (IndentationValue!8803 (value!272228 List!58686)) (String!66938) (Int32!8803) (Broken!44016 (value!272229 List!58686)) (Boolean!8804) (Unit!149603) (OperatorValue!8806 (op!8863 List!58686)) (IdentifierValue!17606 (value!272230 List!58686)) (IdentifierValue!17607 (value!272231 List!58686)) (WhitespaceValue!17607 (value!272232 List!58686)) (True!17606) (False!17606) (Broken!44017 (value!272233 List!58686)) (Broken!44018 (value!272234 List!58686)) (True!17607) (RightBrace!8803) (RightBracket!8803) (Colon!8803) (Null!8803) (Comma!8803) (LeftBracket!8803) (False!17607) (LeftBrace!8803) (ImaginaryLiteralValue!8803 (text!62067 List!58686)) (StringLiteralValue!26409 (value!272235 List!58686)) (EOFValue!8803 (value!272236 List!58686)) (IdentValue!8803 (value!272237 List!58686)) (DelimiterValue!17607 (value!272238 List!58686)) (DedentValue!8803 (value!272239 List!58686)) (NewLineValue!8803 (value!272240 List!58686)) (IntegerValue!26409 (value!272241 (_ BitVec 32)) (text!62068 List!58686)) (IntegerValue!26410 (value!272242 Int) (text!62069 List!58686)) (Times!8803) (Or!8803) (Equal!8803) (Minus!8803) (Broken!44019 (value!272243 List!58686)) (And!8803) (Div!8803) (LessEqual!8803) (Mod!8803) (Concat!22767) (Not!8803) (Plus!8803) (SpaceValue!8803 (value!272244 List!58686)) (IntegerValue!26411 (value!272245 Int) (text!62070 List!58686)) (StringLiteralValue!26410 (text!62071 List!58686)) (FloatLiteralValue!17607 (text!62072 List!58686)) (BytesLiteralValue!8803 (value!272246 List!58686)) (CommentValue!17607 (value!272247 List!58686)) (StringLiteralValue!26411 (value!272248 List!58686)) (ErrorTokenValue!8803 (msg!8864 List!58686)) )
))
(declare-datatypes ((C!28186 0))(
  ( (C!28187 (val!23745 Int)) )
))
(declare-datatypes ((List!58687 0))(
  ( (Nil!58563) (Cons!58563 (h!65011 C!28186) (t!371642 List!58687)) )
))
(declare-datatypes ((IArray!31383 0))(
  ( (IArray!31384 (innerList!15749 List!58687)) )
))
(declare-datatypes ((Conc!15661 0))(
  ( (Node!15661 (left!42976 Conc!15661) (right!43306 Conc!15661) (csize!31552 Int) (cheight!15872 Int)) (Leaf!25997 (xs!19043 IArray!31383) (csize!31553 Int)) (Empty!15661) )
))
(declare-datatypes ((BalanceConc!30440 0))(
  ( (BalanceConc!30441 (c!875408 Conc!15661)) )
))
(declare-datatypes ((TokenValueInjection!16914 0))(
  ( (TokenValueInjection!16915 (toValue!11512 Int) (toChars!11371 Int)) )
))
(declare-datatypes ((Regex!13964 0))(
  ( (ElementMatch!13964 (c!875409 C!28186)) (Concat!22768 (regOne!28440 Regex!13964) (regTwo!28440 Regex!13964)) (EmptyExpr!13964) (Star!13964 (reg!14293 Regex!13964)) (EmptyLang!13964) (Union!13964 (regOne!28441 Regex!13964) (regTwo!28441 Regex!13964)) )
))
(declare-datatypes ((String!66939 0))(
  ( (String!66940 (value!272249 String)) )
))
(declare-datatypes ((Rule!16778 0))(
  ( (Rule!16779 (regex!8489 Regex!13964) (tag!9353 String!66939) (isSeparator!8489 Bool) (transformation!8489 TokenValueInjection!16914)) )
))
(declare-datatypes ((List!58688 0))(
  ( (Nil!58564) (Cons!58564 (h!65012 Rule!16778) (t!371643 List!58688)) )
))
(declare-fun rulesArg!145 () List!58688)

(assert (=> b!5093505 (= res!2167601 (or (and (is-Cons!58564 rulesArg!145) (is-Nil!58564 (t!371643 rulesArg!145))) (not (is-Cons!58564 rulesArg!145))))))

(declare-fun input!1210 () List!58687)

(declare-fun isPrefix!5385 (List!58687 List!58687) Bool)

(assert (=> b!5093505 (isPrefix!5385 input!1210 input!1210)))

(declare-datatypes ((Unit!149604 0))(
  ( (Unit!149605) )
))
(declare-fun lt!2092755 () Unit!149604)

(declare-fun lemmaIsPrefixRefl!3644 (List!58687 List!58687) Unit!149604)

(assert (=> b!5093505 (= lt!2092755 (lemmaIsPrefixRefl!3644 input!1210 input!1210))))

(declare-fun b!5093506 () Bool)

(declare-fun e!3176503 () Bool)

(declare-fun tp!1419948 () Bool)

(assert (=> b!5093506 (= e!3176505 (and e!3176503 tp!1419948))))

(declare-fun b!5093507 () Bool)

(declare-fun res!2167604 () Bool)

(assert (=> b!5093507 (=> (not res!2167604) (not e!3176508))))

(declare-fun rulesValidInductive!3314 (LexerInterface!8081 List!58688) Bool)

(assert (=> b!5093507 (= res!2167604 (rulesValidInductive!3314 thiss!14775 rulesArg!145))))

(declare-fun tp!1419947 () Bool)

(declare-fun b!5093508 () Bool)

(declare-fun inv!78065 (String!66939) Bool)

(declare-fun inv!78068 (TokenValueInjection!16914) Bool)

(assert (=> b!5093508 (= e!3176503 (and tp!1419947 (inv!78065 (tag!9353 (h!65012 rulesArg!145))) (inv!78068 (transformation!8489 (h!65012 rulesArg!145))) e!3176504))))

(declare-fun b!5093509 () Bool)

(declare-fun res!2167602 () Bool)

(assert (=> b!5093509 (=> (not res!2167602) (not e!3176508))))

(declare-fun isEmpty!31699 (List!58688) Bool)

(assert (=> b!5093509 (= res!2167602 (not (isEmpty!31699 rulesArg!145)))))

(declare-fun b!5093510 () Bool)

(declare-fun ruleValid!3893 (LexerInterface!8081 Rule!16778) Bool)

(assert (=> b!5093510 (= e!3176507 (ruleValid!3893 thiss!14775 (h!65012 rulesArg!145)))))

(assert (= (and start!536854 res!2167603) b!5093507))

(assert (= (and b!5093507 res!2167604) b!5093509))

(assert (= (and b!5093509 res!2167602) b!5093505))

(assert (= (and b!5093505 (not res!2167601)) b!5093510))

(assert (= b!5093508 b!5093504))

(assert (= b!5093506 b!5093508))

(assert (= (and start!536854 (is-Cons!58564 rulesArg!145)) b!5093506))

(assert (= (and start!536854 (is-Cons!58563 input!1210)) b!5093503))

(declare-fun m!6151626 () Bool)

(assert (=> b!5093505 m!6151626))

(declare-fun m!6151628 () Bool)

(assert (=> b!5093505 m!6151628))

(declare-fun m!6151630 () Bool)

(assert (=> b!5093507 m!6151630))

(declare-fun m!6151632 () Bool)

(assert (=> b!5093509 m!6151632))

(declare-fun m!6151634 () Bool)

(assert (=> b!5093508 m!6151634))

(declare-fun m!6151636 () Bool)

(assert (=> b!5093508 m!6151636))

(declare-fun m!6151638 () Bool)

(assert (=> b!5093510 m!6151638))

(push 1)

(assert b_and!350163)

(assert tp_is_empty!37193)

(assert (not b!5093503))

(assert (not b!5093510))

(assert (not b!5093506))

(assert (not b!5093509))

(assert (not b_next!134069))

(assert (not b_next!134071))

(assert (not b!5093505))

(assert (not b!5093508))

(assert b_and!350165)

(assert (not b!5093507))

(check-sat)

(pop 1)

(push 1)

(assert b_and!350165)

(assert b_and!350163)

(assert (not b_next!134069))

(assert (not b_next!134071))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1648696 () Bool)

(assert (=> d!1648696 (= (isEmpty!31699 rulesArg!145) (is-Nil!58564 rulesArg!145))))

(assert (=> b!5093509 d!1648696))

(declare-fun d!1648698 () Bool)

(declare-fun res!2167627 () Bool)

(declare-fun e!3176532 () Bool)

(assert (=> d!1648698 (=> (not res!2167627) (not e!3176532))))

(declare-fun validRegex!6125 (Regex!13964) Bool)

(assert (=> d!1648698 (= res!2167627 (validRegex!6125 (regex!8489 (h!65012 rulesArg!145))))))

(assert (=> d!1648698 (= (ruleValid!3893 thiss!14775 (h!65012 rulesArg!145)) e!3176532)))

(declare-fun b!5093539 () Bool)

(declare-fun res!2167628 () Bool)

(assert (=> b!5093539 (=> (not res!2167628) (not e!3176532))))

(declare-fun nullable!4701 (Regex!13964) Bool)

(assert (=> b!5093539 (= res!2167628 (not (nullable!4701 (regex!8489 (h!65012 rulesArg!145)))))))

(declare-fun b!5093540 () Bool)

(assert (=> b!5093540 (= e!3176532 (not (= (tag!9353 (h!65012 rulesArg!145)) (String!66940 ""))))))

(assert (= (and d!1648698 res!2167627) b!5093539))

(assert (= (and b!5093539 res!2167628) b!5093540))

(declare-fun m!6151654 () Bool)

(assert (=> d!1648698 m!6151654))

(declare-fun m!6151656 () Bool)

(assert (=> b!5093539 m!6151656))

(assert (=> b!5093510 d!1648698))

(declare-fun b!5093549 () Bool)

(declare-fun e!3176539 () Bool)

(declare-fun e!3176541 () Bool)

(assert (=> b!5093549 (= e!3176539 e!3176541)))

(declare-fun res!2167638 () Bool)

(assert (=> b!5093549 (=> (not res!2167638) (not e!3176541))))

(assert (=> b!5093549 (= res!2167638 (not (is-Nil!58563 input!1210)))))

(declare-fun b!5093551 () Bool)

(declare-fun tail!9966 (List!58687) List!58687)

(assert (=> b!5093551 (= e!3176541 (isPrefix!5385 (tail!9966 input!1210) (tail!9966 input!1210)))))

(declare-fun b!5093552 () Bool)

(declare-fun e!3176540 () Bool)

(declare-fun size!39251 (List!58687) Int)

(assert (=> b!5093552 (= e!3176540 (>= (size!39251 input!1210) (size!39251 input!1210)))))

(declare-fun b!5093550 () Bool)

(declare-fun res!2167640 () Bool)

(assert (=> b!5093550 (=> (not res!2167640) (not e!3176541))))

(declare-fun head!10811 (List!58687) C!28186)

(assert (=> b!5093550 (= res!2167640 (= (head!10811 input!1210) (head!10811 input!1210)))))

(declare-fun d!1648700 () Bool)

(assert (=> d!1648700 e!3176540))

(declare-fun res!2167637 () Bool)

(assert (=> d!1648700 (=> res!2167637 e!3176540)))

(declare-fun lt!2092761 () Bool)

(assert (=> d!1648700 (= res!2167637 (not lt!2092761))))

(assert (=> d!1648700 (= lt!2092761 e!3176539)))

(declare-fun res!2167639 () Bool)

(assert (=> d!1648700 (=> res!2167639 e!3176539)))

(assert (=> d!1648700 (= res!2167639 (is-Nil!58563 input!1210))))

(assert (=> d!1648700 (= (isPrefix!5385 input!1210 input!1210) lt!2092761)))

(assert (= (and d!1648700 (not res!2167639)) b!5093549))

(assert (= (and b!5093549 res!2167638) b!5093550))

(assert (= (and b!5093550 res!2167640) b!5093551))

(assert (= (and d!1648700 (not res!2167637)) b!5093552))

(declare-fun m!6151658 () Bool)

(assert (=> b!5093551 m!6151658))

(assert (=> b!5093551 m!6151658))

(assert (=> b!5093551 m!6151658))

(assert (=> b!5093551 m!6151658))

(declare-fun m!6151660 () Bool)

(assert (=> b!5093551 m!6151660))

(declare-fun m!6151662 () Bool)

(assert (=> b!5093552 m!6151662))

(assert (=> b!5093552 m!6151662))

(declare-fun m!6151664 () Bool)

(assert (=> b!5093550 m!6151664))

(assert (=> b!5093550 m!6151664))

(assert (=> b!5093505 d!1648700))

(declare-fun d!1648702 () Bool)

(assert (=> d!1648702 (isPrefix!5385 input!1210 input!1210)))

(declare-fun lt!2092764 () Unit!149604)

(declare-fun choose!37298 (List!58687 List!58687) Unit!149604)

(assert (=> d!1648702 (= lt!2092764 (choose!37298 input!1210 input!1210))))

(assert (=> d!1648702 (= (lemmaIsPrefixRefl!3644 input!1210 input!1210) lt!2092764)))

(declare-fun bs!1191273 () Bool)

(assert (= bs!1191273 d!1648702))

(assert (=> bs!1191273 m!6151626))

(declare-fun m!6151666 () Bool)

(assert (=> bs!1191273 m!6151666))

(assert (=> b!5093505 d!1648702))

(declare-fun d!1648704 () Bool)

(assert (=> d!1648704 true))

(declare-fun lt!2092775 () Bool)

(declare-fun lambda!249825 () Int)

(declare-fun forall!13468 (List!58688 Int) Bool)

(assert (=> d!1648704 (= lt!2092775 (forall!13468 rulesArg!145 lambda!249825))))

(declare-fun e!3176562 () Bool)

(assert (=> d!1648704 (= lt!2092775 e!3176562)))

(declare-fun res!2167667 () Bool)

(assert (=> d!1648704 (=> res!2167667 e!3176562)))

(assert (=> d!1648704 (= res!2167667 (not (is-Cons!58564 rulesArg!145)))))

(assert (=> d!1648704 (= (rulesValidInductive!3314 thiss!14775 rulesArg!145) lt!2092775)))

(declare-fun b!5093579 () Bool)

(declare-fun e!3176563 () Bool)

(assert (=> b!5093579 (= e!3176562 e!3176563)))

(declare-fun res!2167668 () Bool)

(assert (=> b!5093579 (=> (not res!2167668) (not e!3176563))))

(assert (=> b!5093579 (= res!2167668 (ruleValid!3893 thiss!14775 (h!65012 rulesArg!145)))))

(declare-fun b!5093580 () Bool)

(assert (=> b!5093580 (= e!3176563 (rulesValidInductive!3314 thiss!14775 (t!371643 rulesArg!145)))))

(assert (= (and d!1648704 (not res!2167667)) b!5093579))

(assert (= (and b!5093579 res!2167668) b!5093580))

(declare-fun m!6151682 () Bool)

(assert (=> d!1648704 m!6151682))

(assert (=> b!5093579 m!6151638))

(declare-fun m!6151684 () Bool)

(assert (=> b!5093580 m!6151684))

(assert (=> b!5093507 d!1648704))

(declare-fun d!1648716 () Bool)

(assert (=> d!1648716 (= (inv!78065 (tag!9353 (h!65012 rulesArg!145))) (= (mod (str.len (value!272249 (tag!9353 (h!65012 rulesArg!145)))) 2) 0))))

(assert (=> b!5093508 d!1648716))

(declare-fun d!1648718 () Bool)

(declare-fun res!2167671 () Bool)

(declare-fun e!3176566 () Bool)

(assert (=> d!1648718 (=> (not res!2167671) (not e!3176566))))

(declare-fun semiInverseModEq!3781 (Int Int) Bool)

(assert (=> d!1648718 (= res!2167671 (semiInverseModEq!3781 (toChars!11371 (transformation!8489 (h!65012 rulesArg!145))) (toValue!11512 (transformation!8489 (h!65012 rulesArg!145)))))))

(assert (=> d!1648718 (= (inv!78068 (transformation!8489 (h!65012 rulesArg!145))) e!3176566)))

(declare-fun b!5093585 () Bool)

(declare-fun equivClasses!3596 (Int Int) Bool)

(assert (=> b!5093585 (= e!3176566 (equivClasses!3596 (toChars!11371 (transformation!8489 (h!65012 rulesArg!145))) (toValue!11512 (transformation!8489 (h!65012 rulesArg!145)))))))

(assert (= (and d!1648718 res!2167671) b!5093585))

(declare-fun m!6151686 () Bool)

(assert (=> d!1648718 m!6151686))

(declare-fun m!6151688 () Bool)

(assert (=> b!5093585 m!6151688))

(assert (=> b!5093508 d!1648718))

(declare-fun b!5093596 () Bool)

(declare-fun b_free!133287 () Bool)

(declare-fun b_next!134077 () Bool)

(assert (=> b!5093596 (= b_free!133287 (not b_next!134077))))

(declare-fun tp!1419974 () Bool)

(declare-fun b_and!350171 () Bool)

(assert (=> b!5093596 (= tp!1419974 b_and!350171)))

(declare-fun b_free!133289 () Bool)

(declare-fun b_next!134079 () Bool)

(assert (=> b!5093596 (= b_free!133289 (not b_next!134079))))

(declare-fun tp!1419972 () Bool)

(declare-fun b_and!350173 () Bool)

(assert (=> b!5093596 (= tp!1419972 b_and!350173)))

(declare-fun e!3176578 () Bool)

(assert (=> b!5093596 (= e!3176578 (and tp!1419974 tp!1419972))))

(declare-fun e!3176577 () Bool)

(declare-fun b!5093595 () Bool)

(declare-fun tp!1419975 () Bool)

(assert (=> b!5093595 (= e!3176577 (and tp!1419975 (inv!78065 (tag!9353 (h!65012 (t!371643 rulesArg!145)))) (inv!78068 (transformation!8489 (h!65012 (t!371643 rulesArg!145)))) e!3176578))))

(declare-fun b!5093594 () Bool)

(declare-fun e!3176575 () Bool)

(declare-fun tp!1419973 () Bool)

(assert (=> b!5093594 (= e!3176575 (and e!3176577 tp!1419973))))

(assert (=> b!5093506 (= tp!1419948 e!3176575)))

(assert (= b!5093595 b!5093596))

(assert (= b!5093594 b!5093595))

(assert (= (and b!5093506 (is-Cons!58564 (t!371643 rulesArg!145))) b!5093594))

(declare-fun m!6151690 () Bool)

(assert (=> b!5093595 m!6151690))

(declare-fun m!6151692 () Bool)

(assert (=> b!5093595 m!6151692))

(declare-fun b!5093610 () Bool)

(declare-fun e!3176581 () Bool)

(declare-fun tp!1419988 () Bool)

(declare-fun tp!1419987 () Bool)

(assert (=> b!5093610 (= e!3176581 (and tp!1419988 tp!1419987))))

(declare-fun b!5093608 () Bool)

(declare-fun tp!1419986 () Bool)

(declare-fun tp!1419989 () Bool)

(assert (=> b!5093608 (= e!3176581 (and tp!1419986 tp!1419989))))

(declare-fun b!5093609 () Bool)

(declare-fun tp!1419990 () Bool)

(assert (=> b!5093609 (= e!3176581 tp!1419990)))

(assert (=> b!5093508 (= tp!1419947 e!3176581)))

(declare-fun b!5093607 () Bool)

(assert (=> b!5093607 (= e!3176581 tp_is_empty!37193)))

(assert (= (and b!5093508 (is-ElementMatch!13964 (regex!8489 (h!65012 rulesArg!145)))) b!5093607))

(assert (= (and b!5093508 (is-Concat!22768 (regex!8489 (h!65012 rulesArg!145)))) b!5093608))

(assert (= (and b!5093508 (is-Star!13964 (regex!8489 (h!65012 rulesArg!145)))) b!5093609))

(assert (= (and b!5093508 (is-Union!13964 (regex!8489 (h!65012 rulesArg!145)))) b!5093610))

(declare-fun b!5093615 () Bool)

(declare-fun e!3176584 () Bool)

(declare-fun tp!1419993 () Bool)

(assert (=> b!5093615 (= e!3176584 (and tp_is_empty!37193 tp!1419993))))

(assert (=> b!5093503 (= tp!1419946 e!3176584)))

(assert (= (and b!5093503 (is-Cons!58563 (t!371642 input!1210))) b!5093615))

(push 1)

(assert (not d!1648702))

(assert (not b!5093539))

(assert (not b!5093550))

(assert b_and!350163)

(assert (not b!5093608))

(assert (not b!5093585))

(assert (not b!5093615))

(assert (not b!5093609))

(assert (not b!5093595))

(assert (not b_next!134069))

(assert (not b!5093551))

(assert b_and!350173)

(assert (not b_next!134077))

(assert (not b!5093552))

(assert (not b_next!134079))

(assert (not b!5093610))

(assert (not b!5093594))

(assert (not b!5093579))

(assert tp_is_empty!37193)

(assert b_and!350171)

(assert (not b_next!134071))

(assert (not d!1648698))

(assert (not d!1648718))

(assert (not d!1648704))

(assert (not b!5093580))

(assert b_and!350165)

(check-sat)

(pop 1)

(push 1)

(assert b_and!350163)

(assert b_and!350173)

(assert b_and!350165)

(assert (not b_next!134069))

(assert (not b_next!134077))

(assert (not b_next!134079))

(assert b_and!350171)

(assert (not b_next!134071))

(check-sat)

(pop 1)

