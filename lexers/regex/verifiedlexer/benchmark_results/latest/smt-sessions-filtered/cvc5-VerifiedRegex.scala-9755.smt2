; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!510898 () Bool)

(assert start!510898)

(declare-fun b!4882620 () Bool)

(declare-fun b_free!130987 () Bool)

(declare-fun b_next!131777 () Bool)

(assert (=> b!4882620 (= b_free!130987 (not b_next!131777))))

(declare-fun tp!1373799 () Bool)

(declare-fun b_and!343819 () Bool)

(assert (=> b!4882620 (= tp!1373799 b_and!343819)))

(declare-fun b_free!130989 () Bool)

(declare-fun b_next!131779 () Bool)

(assert (=> b!4882620 (= b_free!130989 (not b_next!131779))))

(declare-fun tp!1373798 () Bool)

(declare-fun b_and!343821 () Bool)

(assert (=> b!4882620 (= tp!1373798 b_and!343821)))

(declare-fun b!4882615 () Bool)

(declare-fun e!3051581 () Bool)

(declare-fun e!3051576 () Bool)

(declare-fun tp!1373802 () Bool)

(assert (=> b!4882615 (= e!3051581 (and e!3051576 tp!1373802))))

(declare-fun b!4882617 () Bool)

(declare-fun e!3051578 () Bool)

(declare-fun e!3051579 () Bool)

(assert (=> b!4882617 (= e!3051578 (not e!3051579))))

(declare-fun res!2084338 () Bool)

(assert (=> b!4882617 (=> res!2084338 e!3051579)))

(declare-datatypes ((C!26502 0))(
  ( (C!26503 (val!22585 Int)) )
))
(declare-datatypes ((List!56236 0))(
  ( (Nil!56112) (Cons!56112 (h!62560 C!26502) (t!364882 List!56236)) )
))
(declare-datatypes ((IArray!29351 0))(
  ( (IArray!29352 (innerList!14733 List!56236)) )
))
(declare-datatypes ((Conc!14645 0))(
  ( (Node!14645 (left!40770 Conc!14645) (right!41100 Conc!14645) (csize!29520 Int) (cheight!14856 Int)) (Leaf!24401 (xs!17961 IArray!29351) (csize!29521 Int)) (Empty!14645) )
))
(declare-datatypes ((BalanceConc!28720 0))(
  ( (BalanceConc!28721 (c!830389 Conc!14645)) )
))
(declare-datatypes ((List!56237 0))(
  ( (Nil!56113) (Cons!56113 (h!62561 (_ BitVec 16)) (t!364883 List!56237)) )
))
(declare-datatypes ((TokenValue!8387 0))(
  ( (FloatLiteralValue!16774 (text!59154 List!56237)) (TokenValueExt!8386 (__x!34067 Int)) (Broken!41935 (value!259322 List!56237)) (Object!8510) (End!8387) (Def!8387) (Underscore!8387) (Match!8387) (Else!8387) (Error!8387) (Case!8387) (If!8387) (Extends!8387) (Abstract!8387) (Class!8387) (Val!8387) (DelimiterValue!16774 (del!8447 List!56237)) (KeywordValue!8393 (value!259323 List!56237)) (CommentValue!16774 (value!259324 List!56237)) (WhitespaceValue!16774 (value!259325 List!56237)) (IndentationValue!8387 (value!259326 List!56237)) (String!63378) (Int32!8387) (Broken!41936 (value!259327 List!56237)) (Boolean!8388) (Unit!146102) (OperatorValue!8390 (op!8447 List!56237)) (IdentifierValue!16774 (value!259328 List!56237)) (IdentifierValue!16775 (value!259329 List!56237)) (WhitespaceValue!16775 (value!259330 List!56237)) (True!16774) (False!16774) (Broken!41937 (value!259331 List!56237)) (Broken!41938 (value!259332 List!56237)) (True!16775) (RightBrace!8387) (RightBracket!8387) (Colon!8387) (Null!8387) (Comma!8387) (LeftBracket!8387) (False!16775) (LeftBrace!8387) (ImaginaryLiteralValue!8387 (text!59155 List!56237)) (StringLiteralValue!25161 (value!259333 List!56237)) (EOFValue!8387 (value!259334 List!56237)) (IdentValue!8387 (value!259335 List!56237)) (DelimiterValue!16775 (value!259336 List!56237)) (DedentValue!8387 (value!259337 List!56237)) (NewLineValue!8387 (value!259338 List!56237)) (IntegerValue!25161 (value!259339 (_ BitVec 32)) (text!59156 List!56237)) (IntegerValue!25162 (value!259340 Int) (text!59157 List!56237)) (Times!8387) (Or!8387) (Equal!8387) (Minus!8387) (Broken!41939 (value!259341 List!56237)) (And!8387) (Div!8387) (LessEqual!8387) (Mod!8387) (Concat!21539) (Not!8387) (Plus!8387) (SpaceValue!8387 (value!259342 List!56237)) (IntegerValue!25163 (value!259343 Int) (text!59158 List!56237)) (StringLiteralValue!25162 (text!59159 List!56237)) (FloatLiteralValue!16775 (text!59160 List!56237)) (BytesLiteralValue!8387 (value!259344 List!56237)) (CommentValue!16775 (value!259345 List!56237)) (StringLiteralValue!25163 (value!259346 List!56237)) (ErrorTokenValue!8387 (msg!8448 List!56237)) )
))
(declare-datatypes ((Regex!13152 0))(
  ( (ElementMatch!13152 (c!830390 C!26502)) (Concat!21540 (regOne!26816 Regex!13152) (regTwo!26816 Regex!13152)) (EmptyExpr!13152) (Star!13152 (reg!13481 Regex!13152)) (EmptyLang!13152) (Union!13152 (regOne!26817 Regex!13152) (regTwo!26817 Regex!13152)) )
))
(declare-datatypes ((String!63379 0))(
  ( (String!63380 (value!259347 String)) )
))
(declare-datatypes ((TokenValueInjection!16082 0))(
  ( (TokenValueInjection!16083 (toValue!10964 Int) (toChars!10823 Int)) )
))
(declare-datatypes ((Rule!15954 0))(
  ( (Rule!15955 (regex!8077 Regex!13152) (tag!8941 String!63379) (isSeparator!8077 Bool) (transformation!8077 TokenValueInjection!16082)) )
))
(declare-datatypes ((List!56238 0))(
  ( (Nil!56114) (Cons!56114 (h!62562 Rule!15954) (t!364884 List!56238)) )
))
(declare-fun rulesArg!165 () List!56238)

(assert (=> b!4882617 (= res!2084338 (or (and (is-Cons!56114 rulesArg!165) (is-Nil!56114 (t!364884 rulesArg!165))) (not (is-Cons!56114 rulesArg!165))))))

(declare-fun lt!2000054 () List!56236)

(declare-fun isPrefix!4799 (List!56236 List!56236) Bool)

(assert (=> b!4882617 (isPrefix!4799 lt!2000054 lt!2000054)))

(declare-datatypes ((Unit!146103 0))(
  ( (Unit!146104) )
))
(declare-fun lt!2000055 () Unit!146103)

(declare-fun lemmaIsPrefixRefl!3196 (List!56236 List!56236) Unit!146103)

(assert (=> b!4882617 (= lt!2000055 (lemmaIsPrefixRefl!3196 lt!2000054 lt!2000054))))

(declare-fun input!1236 () BalanceConc!28720)

(declare-fun list!17599 (BalanceConc!28720) List!56236)

(assert (=> b!4882617 (= lt!2000054 (list!17599 input!1236))))

(declare-fun b!4882618 () Bool)

(declare-fun res!2084336 () Bool)

(assert (=> b!4882618 (=> (not res!2084336) (not e!3051578))))

(declare-datatypes ((LexerInterface!7669 0))(
  ( (LexerInterfaceExt!7666 (__x!34068 Int)) (Lexer!7667) )
))
(declare-fun thiss!14805 () LexerInterface!7669)

(declare-fun rulesValidInductive!3056 (LexerInterface!7669 List!56238) Bool)

(assert (=> b!4882618 (= res!2084336 (rulesValidInductive!3056 thiss!14805 rulesArg!165))))

(declare-fun b!4882619 () Bool)

(assert (=> b!4882619 (= e!3051579 (rulesValidInductive!3056 thiss!14805 (t!364884 rulesArg!165)))))

(declare-datatypes ((Token!14722 0))(
  ( (Token!14723 (value!259348 TokenValue!8387) (rule!11235 Rule!15954) (size!36990 Int) (originalCharacters!8392 List!56236)) )
))
(declare-datatypes ((tuple2!59998 0))(
  ( (tuple2!59999 (_1!33302 Token!14722) (_2!33302 BalanceConc!28720)) )
))
(declare-datatypes ((Option!13840 0))(
  ( (None!13839) (Some!13839 (v!49789 tuple2!59998)) )
))
(declare-fun lt!2000053 () Option!13840)

(declare-fun maxPrefixOneRuleZipperSequence!603 (LexerInterface!7669 Rule!15954 BalanceConc!28720) Option!13840)

(assert (=> b!4882619 (= lt!2000053 (maxPrefixOneRuleZipperSequence!603 thiss!14805 (h!62562 rulesArg!165) input!1236))))

(declare-fun e!3051580 () Bool)

(assert (=> b!4882620 (= e!3051580 (and tp!1373799 tp!1373798))))

(declare-fun b!4882621 () Bool)

(declare-fun e!3051577 () Bool)

(declare-fun tp!1373800 () Bool)

(declare-fun inv!72163 (Conc!14645) Bool)

(assert (=> b!4882621 (= e!3051577 (and (inv!72163 (c!830389 input!1236)) tp!1373800))))

(declare-fun b!4882622 () Bool)

(declare-fun res!2084337 () Bool)

(assert (=> b!4882622 (=> (not res!2084337) (not e!3051578))))

(declare-fun isEmpty!30072 (List!56238) Bool)

(assert (=> b!4882622 (= res!2084337 (not (isEmpty!30072 rulesArg!165)))))

(declare-fun res!2084339 () Bool)

(assert (=> start!510898 (=> (not res!2084339) (not e!3051578))))

(assert (=> start!510898 (= res!2084339 (is-Lexer!7667 thiss!14805))))

(assert (=> start!510898 e!3051578))

(assert (=> start!510898 true))

(assert (=> start!510898 e!3051581))

(declare-fun inv!72164 (BalanceConc!28720) Bool)

(assert (=> start!510898 (and (inv!72164 input!1236) e!3051577)))

(declare-fun b!4882616 () Bool)

(declare-fun tp!1373801 () Bool)

(declare-fun inv!72160 (String!63379) Bool)

(declare-fun inv!72165 (TokenValueInjection!16082) Bool)

(assert (=> b!4882616 (= e!3051576 (and tp!1373801 (inv!72160 (tag!8941 (h!62562 rulesArg!165))) (inv!72165 (transformation!8077 (h!62562 rulesArg!165))) e!3051580))))

(assert (= (and start!510898 res!2084339) b!4882618))

(assert (= (and b!4882618 res!2084336) b!4882622))

(assert (= (and b!4882622 res!2084337) b!4882617))

(assert (= (and b!4882617 (not res!2084338)) b!4882619))

(assert (= b!4882616 b!4882620))

(assert (= b!4882615 b!4882616))

(assert (= (and start!510898 (is-Cons!56114 rulesArg!165)) b!4882615))

(assert (= start!510898 b!4882621))

(declare-fun m!5886704 () Bool)

(assert (=> b!4882617 m!5886704))

(declare-fun m!5886706 () Bool)

(assert (=> b!4882617 m!5886706))

(declare-fun m!5886708 () Bool)

(assert (=> b!4882617 m!5886708))

(declare-fun m!5886710 () Bool)

(assert (=> b!4882622 m!5886710))

(declare-fun m!5886712 () Bool)

(assert (=> b!4882619 m!5886712))

(declare-fun m!5886714 () Bool)

(assert (=> b!4882619 m!5886714))

(declare-fun m!5886716 () Bool)

(assert (=> b!4882621 m!5886716))

(declare-fun m!5886718 () Bool)

(assert (=> b!4882618 m!5886718))

(declare-fun m!5886720 () Bool)

(assert (=> start!510898 m!5886720))

(declare-fun m!5886722 () Bool)

(assert (=> b!4882616 m!5886722))

(declare-fun m!5886724 () Bool)

(assert (=> b!4882616 m!5886724))

(push 1)

(assert (not b!4882615))

(assert (not start!510898))

(assert (not b_next!131779))

(assert (not b!4882616))

(assert (not b!4882617))

(assert (not b_next!131777))

(assert b_and!343819)

(assert (not b!4882618))

(assert (not b!4882622))

(assert (not b!4882621))

(assert b_and!343821)

(assert (not b!4882619))

(check-sat)

(pop 1)

(push 1)

(assert b_and!343821)

(assert b_and!343819)

(assert (not b_next!131777))

(assert (not b_next!131779))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4882658 () Bool)

(declare-fun e!3051611 () Bool)

(declare-fun size!36992 (List!56236) Int)

(assert (=> b!4882658 (= e!3051611 (>= (size!36992 lt!2000054) (size!36992 lt!2000054)))))

(declare-fun d!1569106 () Bool)

(assert (=> d!1569106 e!3051611))

(declare-fun res!2084367 () Bool)

(assert (=> d!1569106 (=> res!2084367 e!3051611)))

(declare-fun lt!2000067 () Bool)

(assert (=> d!1569106 (= res!2084367 (not lt!2000067))))

(declare-fun e!3051609 () Bool)

(assert (=> d!1569106 (= lt!2000067 e!3051609)))

(declare-fun res!2084369 () Bool)

(assert (=> d!1569106 (=> res!2084369 e!3051609)))

(assert (=> d!1569106 (= res!2084369 (is-Nil!56112 lt!2000054))))

(assert (=> d!1569106 (= (isPrefix!4799 lt!2000054 lt!2000054) lt!2000067)))

(declare-fun b!4882656 () Bool)

(declare-fun res!2084366 () Bool)

(declare-fun e!3051610 () Bool)

(assert (=> b!4882656 (=> (not res!2084366) (not e!3051610))))

(declare-fun head!10428 (List!56236) C!26502)

(assert (=> b!4882656 (= res!2084366 (= (head!10428 lt!2000054) (head!10428 lt!2000054)))))

(declare-fun b!4882657 () Bool)

(declare-fun tail!9574 (List!56236) List!56236)

(assert (=> b!4882657 (= e!3051610 (isPrefix!4799 (tail!9574 lt!2000054) (tail!9574 lt!2000054)))))

(declare-fun b!4882655 () Bool)

(assert (=> b!4882655 (= e!3051609 e!3051610)))

(declare-fun res!2084368 () Bool)

(assert (=> b!4882655 (=> (not res!2084368) (not e!3051610))))

(assert (=> b!4882655 (= res!2084368 (not (is-Nil!56112 lt!2000054)))))

(assert (= (and d!1569106 (not res!2084369)) b!4882655))

(assert (= (and b!4882655 res!2084368) b!4882656))

(assert (= (and b!4882656 res!2084366) b!4882657))

(assert (= (and d!1569106 (not res!2084367)) b!4882658))

(declare-fun m!5886748 () Bool)

(assert (=> b!4882658 m!5886748))

(assert (=> b!4882658 m!5886748))

(declare-fun m!5886750 () Bool)

(assert (=> b!4882656 m!5886750))

(assert (=> b!4882656 m!5886750))

(declare-fun m!5886752 () Bool)

(assert (=> b!4882657 m!5886752))

(assert (=> b!4882657 m!5886752))

(assert (=> b!4882657 m!5886752))

(assert (=> b!4882657 m!5886752))

(declare-fun m!5886754 () Bool)

(assert (=> b!4882657 m!5886754))

(assert (=> b!4882617 d!1569106))

(declare-fun d!1569108 () Bool)

(assert (=> d!1569108 (isPrefix!4799 lt!2000054 lt!2000054)))

(declare-fun lt!2000070 () Unit!146103)

(declare-fun choose!35666 (List!56236 List!56236) Unit!146103)

(assert (=> d!1569108 (= lt!2000070 (choose!35666 lt!2000054 lt!2000054))))

(assert (=> d!1569108 (= (lemmaIsPrefixRefl!3196 lt!2000054 lt!2000054) lt!2000070)))

(declare-fun bs!1175470 () Bool)

(assert (= bs!1175470 d!1569108))

(assert (=> bs!1175470 m!5886704))

(declare-fun m!5886756 () Bool)

(assert (=> bs!1175470 m!5886756))

(assert (=> b!4882617 d!1569108))

(declare-fun d!1569110 () Bool)

(declare-fun list!17601 (Conc!14645) List!56236)

(assert (=> d!1569110 (= (list!17599 input!1236) (list!17601 (c!830389 input!1236)))))

(declare-fun bs!1175471 () Bool)

(assert (= bs!1175471 d!1569110))

(declare-fun m!5886758 () Bool)

(assert (=> bs!1175471 m!5886758))

(assert (=> b!4882617 d!1569110))

(declare-fun d!1569112 () Bool)

(assert (=> d!1569112 (= (isEmpty!30072 rulesArg!165) (is-Nil!56114 rulesArg!165))))

(assert (=> b!4882622 d!1569112))

(declare-fun d!1569114 () Bool)

(assert (=> d!1569114 true))

(declare-fun lt!2000075 () Bool)

(declare-fun lambda!243734 () Int)

(declare-fun forall!13064 (List!56238 Int) Bool)

(assert (=> d!1569114 (= lt!2000075 (forall!13064 (t!364884 rulesArg!165) lambda!243734))))

(declare-fun e!3051620 () Bool)

(assert (=> d!1569114 (= lt!2000075 e!3051620)))

(declare-fun res!2084379 () Bool)

(assert (=> d!1569114 (=> res!2084379 e!3051620)))

(assert (=> d!1569114 (= res!2084379 (not (is-Cons!56114 (t!364884 rulesArg!165))))))

(assert (=> d!1569114 (= (rulesValidInductive!3056 thiss!14805 (t!364884 rulesArg!165)) lt!2000075)))

(declare-fun b!4882667 () Bool)

(declare-fun e!3051621 () Bool)

(assert (=> b!4882667 (= e!3051620 e!3051621)))

(declare-fun res!2084378 () Bool)

(assert (=> b!4882667 (=> (not res!2084378) (not e!3051621))))

(declare-fun ruleValid!3646 (LexerInterface!7669 Rule!15954) Bool)

(assert (=> b!4882667 (= res!2084378 (ruleValid!3646 thiss!14805 (h!62562 (t!364884 rulesArg!165))))))

(declare-fun b!4882668 () Bool)

(assert (=> b!4882668 (= e!3051621 (rulesValidInductive!3056 thiss!14805 (t!364884 (t!364884 rulesArg!165))))))

(assert (= (and d!1569114 (not res!2084379)) b!4882667))

(assert (= (and b!4882667 res!2084378) b!4882668))

(declare-fun m!5886760 () Bool)

(assert (=> d!1569114 m!5886760))

(declare-fun m!5886762 () Bool)

(assert (=> b!4882667 m!5886762))

(declare-fun m!5886764 () Bool)

(assert (=> b!4882668 m!5886764))

(assert (=> b!4882619 d!1569114))

(declare-fun b!4882700 () Bool)

(declare-fun e!3051644 () Bool)

(assert (=> b!4882700 (= e!3051644 true)))

(declare-fun b!4882699 () Bool)

(declare-fun e!3051643 () Bool)

(assert (=> b!4882699 (= e!3051643 e!3051644)))

(declare-fun b!4882687 () Bool)

(assert (=> b!4882687 e!3051643))

(assert (= b!4882699 b!4882700))

(assert (= b!4882687 b!4882699))

(declare-fun order!25315 () Int)

(declare-fun lambda!243742 () Int)

(declare-fun order!25317 () Int)

(declare-fun dynLambda!22546 (Int Int) Int)

(declare-fun dynLambda!22547 (Int Int) Int)

(assert (=> b!4882700 (< (dynLambda!22546 order!25315 (toValue!10964 (transformation!8077 (h!62562 rulesArg!165)))) (dynLambda!22547 order!25317 lambda!243742))))

(declare-fun order!25319 () Int)

(declare-fun dynLambda!22548 (Int Int) Int)

(assert (=> b!4882700 (< (dynLambda!22548 order!25319 (toChars!10823 (transformation!8077 (h!62562 rulesArg!165)))) (dynLambda!22547 order!25317 lambda!243742))))

(declare-fun e!3051635 () Option!13840)

(declare-datatypes ((tuple2!60002 0))(
  ( (tuple2!60003 (_1!33304 BalanceConc!28720) (_2!33304 BalanceConc!28720)) )
))
(declare-fun lt!2000102 () tuple2!60002)

(declare-fun apply!13514 (TokenValueInjection!16082 BalanceConc!28720) TokenValue!8387)

(declare-fun size!36993 (BalanceConc!28720) Int)

(assert (=> b!4882687 (= e!3051635 (Some!13839 (tuple2!59999 (Token!14723 (apply!13514 (transformation!8077 (h!62562 rulesArg!165)) (_1!33304 lt!2000102)) (h!62562 rulesArg!165) (size!36993 (_1!33304 lt!2000102)) (list!17599 (_1!33304 lt!2000102))) (_2!33304 lt!2000102))))))

(declare-fun lt!2000104 () List!56236)

(assert (=> b!4882687 (= lt!2000104 (list!17599 input!1236))))

(declare-fun lt!2000100 () Unit!146103)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!1696 (Regex!13152 List!56236) Unit!146103)

(assert (=> b!4882687 (= lt!2000100 (longestMatchIsAcceptedByMatchOrIsEmpty!1696 (regex!8077 (h!62562 rulesArg!165)) lt!2000104))))

(declare-fun res!2084390 () Bool)

(declare-fun isEmpty!30074 (List!56236) Bool)

(declare-datatypes ((tuple2!60004 0))(
  ( (tuple2!60005 (_1!33305 List!56236) (_2!33305 List!56236)) )
))
(declare-fun findLongestMatchInner!1733 (Regex!13152 List!56236 Int List!56236 List!56236 Int) tuple2!60004)

(assert (=> b!4882687 (= res!2084390 (isEmpty!30074 (_1!33305 (findLongestMatchInner!1733 (regex!8077 (h!62562 rulesArg!165)) Nil!56112 (size!36992 Nil!56112) lt!2000104 lt!2000104 (size!36992 lt!2000104)))))))

(declare-fun e!3051638 () Bool)

(assert (=> b!4882687 (=> res!2084390 e!3051638)))

(assert (=> b!4882687 e!3051638))

(declare-fun lt!2000098 () Unit!146103)

(assert (=> b!4882687 (= lt!2000098 lt!2000100)))

(declare-fun lt!2000103 () Unit!146103)

(declare-fun lemmaInv!1216 (TokenValueInjection!16082) Unit!146103)

(assert (=> b!4882687 (= lt!2000103 (lemmaInv!1216 (transformation!8077 (h!62562 rulesArg!165))))))

(declare-fun lt!2000106 () Unit!146103)

(declare-fun ForallOf!1113 (Int BalanceConc!28720) Unit!146103)

(assert (=> b!4882687 (= lt!2000106 (ForallOf!1113 lambda!243742 (_1!33304 lt!2000102)))))

(declare-fun lt!2000101 () Unit!146103)

(declare-fun seqFromList!5910 (List!56236) BalanceConc!28720)

(assert (=> b!4882687 (= lt!2000101 (ForallOf!1113 lambda!243742 (seqFromList!5910 (list!17599 (_1!33304 lt!2000102)))))))

(declare-fun lt!2000105 () Option!13840)

(assert (=> b!4882687 (= lt!2000105 (Some!13839 (tuple2!59999 (Token!14723 (apply!13514 (transformation!8077 (h!62562 rulesArg!165)) (_1!33304 lt!2000102)) (h!62562 rulesArg!165) (size!36993 (_1!33304 lt!2000102)) (list!17599 (_1!33304 lt!2000102))) (_2!33304 lt!2000102))))))

(declare-fun lt!2000099 () Unit!146103)

(declare-fun lemmaEqSameImage!1070 (TokenValueInjection!16082 BalanceConc!28720 BalanceConc!28720) Unit!146103)

(assert (=> b!4882687 (= lt!2000099 (lemmaEqSameImage!1070 (transformation!8077 (h!62562 rulesArg!165)) (_1!33304 lt!2000102) (seqFromList!5910 (list!17599 (_1!33304 lt!2000102)))))))

(declare-fun d!1569118 () Bool)

(declare-fun e!3051636 () Bool)

(assert (=> d!1569118 e!3051636))

(declare-fun res!2084391 () Bool)

(assert (=> d!1569118 (=> (not res!2084391) (not e!3051636))))

(declare-fun lt!2000097 () Option!13840)

(declare-fun isDefined!10890 (Option!13840) Bool)

(declare-datatypes ((tuple2!60006 0))(
  ( (tuple2!60007 (_1!33306 Token!14722) (_2!33306 List!56236)) )
))
(declare-datatypes ((Option!13842 0))(
  ( (None!13841) (Some!13841 (v!49791 tuple2!60006)) )
))
(declare-fun isDefined!10891 (Option!13842) Bool)

(declare-fun maxPrefixOneRule!3503 (LexerInterface!7669 Rule!15954 List!56236) Option!13842)

(assert (=> d!1569118 (= res!2084391 (= (isDefined!10890 lt!2000097) (isDefined!10891 (maxPrefixOneRule!3503 thiss!14805 (h!62562 rulesArg!165) (list!17599 input!1236)))))))

(assert (=> d!1569118 (= lt!2000097 e!3051635)))

(declare-fun c!830396 () Bool)

(declare-fun isEmpty!30075 (BalanceConc!28720) Bool)

(assert (=> d!1569118 (= c!830396 (isEmpty!30075 (_1!33304 lt!2000102)))))

(declare-fun findLongestMatchWithZipperSequence!248 (Regex!13152 BalanceConc!28720) tuple2!60002)

(assert (=> d!1569118 (= lt!2000102 (findLongestMatchWithZipperSequence!248 (regex!8077 (h!62562 rulesArg!165)) input!1236))))

(assert (=> d!1569118 (ruleValid!3646 thiss!14805 (h!62562 rulesArg!165))))

(assert (=> d!1569118 (= (maxPrefixOneRuleZipperSequence!603 thiss!14805 (h!62562 rulesArg!165) input!1236) lt!2000097)))

(declare-fun b!4882688 () Bool)

(declare-fun e!3051637 () Bool)

(declare-fun e!3051634 () Bool)

(assert (=> b!4882688 (= e!3051637 e!3051634)))

(declare-fun res!2084392 () Bool)

(assert (=> b!4882688 (=> (not res!2084392) (not e!3051634))))

(declare-fun get!19294 (Option!13840) tuple2!59998)

(declare-fun get!19295 (Option!13842) tuple2!60006)

(assert (=> b!4882688 (= res!2084392 (= (_1!33302 (get!19294 lt!2000097)) (_1!33306 (get!19295 (maxPrefixOneRule!3503 thiss!14805 (h!62562 rulesArg!165) (list!17599 input!1236))))))))

(declare-fun b!4882689 () Bool)

(assert (=> b!4882689 (= e!3051635 None!13839)))

(declare-fun b!4882690 () Bool)

(assert (=> b!4882690 (= e!3051636 e!3051637)))

(declare-fun res!2084393 () Bool)

(assert (=> b!4882690 (=> res!2084393 e!3051637)))

(assert (=> b!4882690 (= res!2084393 (not (isDefined!10890 lt!2000097)))))

(declare-fun b!4882691 () Bool)

(assert (=> b!4882691 (= e!3051634 (= (list!17599 (_2!33302 (get!19294 lt!2000097))) (_2!33306 (get!19295 (maxPrefixOneRule!3503 thiss!14805 (h!62562 rulesArg!165) (list!17599 input!1236))))))))

(declare-fun b!4882692 () Bool)

(declare-fun matchR!6504 (Regex!13152 List!56236) Bool)

(assert (=> b!4882692 (= e!3051638 (matchR!6504 (regex!8077 (h!62562 rulesArg!165)) (_1!33305 (findLongestMatchInner!1733 (regex!8077 (h!62562 rulesArg!165)) Nil!56112 (size!36992 Nil!56112) lt!2000104 lt!2000104 (size!36992 lt!2000104)))))))

(assert (= (and d!1569118 c!830396) b!4882689))

(assert (= (and d!1569118 (not c!830396)) b!4882687))

(assert (= (and b!4882687 (not res!2084390)) b!4882692))

(assert (= (and d!1569118 res!2084391) b!4882690))

(assert (= (and b!4882690 (not res!2084393)) b!4882688))

(assert (= (and b!4882688 res!2084392) b!4882691))

(declare-fun m!5886772 () Bool)

(assert (=> b!4882687 m!5886772))

(declare-fun m!5886774 () Bool)

(assert (=> b!4882687 m!5886774))

(declare-fun m!5886776 () Bool)

(assert (=> b!4882687 m!5886776))

(declare-fun m!5886778 () Bool)

(assert (=> b!4882687 m!5886778))

(assert (=> b!4882687 m!5886772))

(declare-fun m!5886780 () Bool)

(assert (=> b!4882687 m!5886780))

(declare-fun m!5886782 () Bool)

(assert (=> b!4882687 m!5886782))

(assert (=> b!4882687 m!5886776))

(declare-fun m!5886784 () Bool)

(assert (=> b!4882687 m!5886784))

(declare-fun m!5886786 () Bool)

(assert (=> b!4882687 m!5886786))

(declare-fun m!5886788 () Bool)

(assert (=> b!4882687 m!5886788))

(declare-fun m!5886790 () Bool)

(assert (=> b!4882687 m!5886790))

(assert (=> b!4882687 m!5886708))

(declare-fun m!5886792 () Bool)

(assert (=> b!4882687 m!5886792))

(declare-fun m!5886794 () Bool)

(assert (=> b!4882687 m!5886794))

(assert (=> b!4882687 m!5886784))

(assert (=> b!4882687 m!5886788))

(assert (=> b!4882687 m!5886772))

(declare-fun m!5886796 () Bool)

(assert (=> b!4882687 m!5886796))

(assert (=> b!4882692 m!5886776))

(assert (=> b!4882692 m!5886784))

(assert (=> b!4882692 m!5886776))

(assert (=> b!4882692 m!5886784))

(assert (=> b!4882692 m!5886786))

(declare-fun m!5886798 () Bool)

(assert (=> b!4882692 m!5886798))

(declare-fun m!5886800 () Bool)

(assert (=> b!4882688 m!5886800))

(assert (=> b!4882688 m!5886708))

(assert (=> b!4882688 m!5886708))

(declare-fun m!5886802 () Bool)

(assert (=> b!4882688 m!5886802))

(assert (=> b!4882688 m!5886802))

(declare-fun m!5886804 () Bool)

(assert (=> b!4882688 m!5886804))

(declare-fun m!5886806 () Bool)

(assert (=> b!4882691 m!5886806))

(assert (=> b!4882691 m!5886708))

(assert (=> b!4882691 m!5886802))

(assert (=> b!4882691 m!5886802))

(assert (=> b!4882691 m!5886804))

(assert (=> b!4882691 m!5886708))

(assert (=> b!4882691 m!5886800))

(declare-fun m!5886808 () Bool)

(assert (=> b!4882690 m!5886808))

(assert (=> d!1569118 m!5886708))

(assert (=> d!1569118 m!5886802))

(assert (=> d!1569118 m!5886708))

(assert (=> d!1569118 m!5886808))

(declare-fun m!5886810 () Bool)

(assert (=> d!1569118 m!5886810))

(assert (=> d!1569118 m!5886802))

(declare-fun m!5886812 () Bool)

(assert (=> d!1569118 m!5886812))

(declare-fun m!5886814 () Bool)

(assert (=> d!1569118 m!5886814))

(declare-fun m!5886816 () Bool)

(assert (=> d!1569118 m!5886816))

(assert (=> b!4882619 d!1569118))

(declare-fun bs!1175472 () Bool)

(declare-fun d!1569122 () Bool)

(assert (= bs!1175472 (and d!1569122 d!1569114)))

(declare-fun lambda!243743 () Int)

(assert (=> bs!1175472 (= lambda!243743 lambda!243734)))

(assert (=> d!1569122 true))

(declare-fun lt!2000107 () Bool)

(assert (=> d!1569122 (= lt!2000107 (forall!13064 rulesArg!165 lambda!243743))))

(declare-fun e!3051645 () Bool)

(assert (=> d!1569122 (= lt!2000107 e!3051645)))

(declare-fun res!2084395 () Bool)

(assert (=> d!1569122 (=> res!2084395 e!3051645)))

(assert (=> d!1569122 (= res!2084395 (not (is-Cons!56114 rulesArg!165)))))

(assert (=> d!1569122 (= (rulesValidInductive!3056 thiss!14805 rulesArg!165) lt!2000107)))

(declare-fun b!4882701 () Bool)

(declare-fun e!3051646 () Bool)

(assert (=> b!4882701 (= e!3051645 e!3051646)))

(declare-fun res!2084394 () Bool)

(assert (=> b!4882701 (=> (not res!2084394) (not e!3051646))))

(assert (=> b!4882701 (= res!2084394 (ruleValid!3646 thiss!14805 (h!62562 rulesArg!165)))))

(declare-fun b!4882702 () Bool)

(assert (=> b!4882702 (= e!3051646 (rulesValidInductive!3056 thiss!14805 (t!364884 rulesArg!165)))))

(assert (= (and d!1569122 (not res!2084395)) b!4882701))

(assert (= (and b!4882701 res!2084394) b!4882702))

(declare-fun m!5886818 () Bool)

(assert (=> d!1569122 m!5886818))

(assert (=> b!4882701 m!5886810))

(assert (=> b!4882702 m!5886712))

(assert (=> b!4882618 d!1569122))

(declare-fun d!1569124 () Bool)

(assert (=> d!1569124 (= (inv!72160 (tag!8941 (h!62562 rulesArg!165))) (= (mod (str.len (value!259347 (tag!8941 (h!62562 rulesArg!165)))) 2) 0))))

(assert (=> b!4882616 d!1569124))

(declare-fun d!1569126 () Bool)

(declare-fun res!2084398 () Bool)

(declare-fun e!3051649 () Bool)

(assert (=> d!1569126 (=> (not res!2084398) (not e!3051649))))

(declare-fun semiInverseModEq!3560 (Int Int) Bool)

(assert (=> d!1569126 (= res!2084398 (semiInverseModEq!3560 (toChars!10823 (transformation!8077 (h!62562 rulesArg!165))) (toValue!10964 (transformation!8077 (h!62562 rulesArg!165)))))))

(assert (=> d!1569126 (= (inv!72165 (transformation!8077 (h!62562 rulesArg!165))) e!3051649)))

(declare-fun b!4882705 () Bool)

(declare-fun equivClasses!3439 (Int Int) Bool)

(assert (=> b!4882705 (= e!3051649 (equivClasses!3439 (toChars!10823 (transformation!8077 (h!62562 rulesArg!165))) (toValue!10964 (transformation!8077 (h!62562 rulesArg!165)))))))

(assert (= (and d!1569126 res!2084398) b!4882705))

(declare-fun m!5886820 () Bool)

(assert (=> d!1569126 m!5886820))

(declare-fun m!5886822 () Bool)

(assert (=> b!4882705 m!5886822))

(assert (=> b!4882616 d!1569126))

(declare-fun d!1569128 () Bool)

(declare-fun c!830400 () Bool)

(assert (=> d!1569128 (= c!830400 (is-Node!14645 (c!830389 input!1236)))))

(declare-fun e!3051654 () Bool)

(assert (=> d!1569128 (= (inv!72163 (c!830389 input!1236)) e!3051654)))

(declare-fun b!4882712 () Bool)

(declare-fun inv!72169 (Conc!14645) Bool)

(assert (=> b!4882712 (= e!3051654 (inv!72169 (c!830389 input!1236)))))

(declare-fun b!4882713 () Bool)

(declare-fun e!3051655 () Bool)

(assert (=> b!4882713 (= e!3051654 e!3051655)))

(declare-fun res!2084401 () Bool)

(assert (=> b!4882713 (= res!2084401 (not (is-Leaf!24401 (c!830389 input!1236))))))

(assert (=> b!4882713 (=> res!2084401 e!3051655)))

(declare-fun b!4882714 () Bool)

(declare-fun inv!72170 (Conc!14645) Bool)

(assert (=> b!4882714 (= e!3051655 (inv!72170 (c!830389 input!1236)))))

(assert (= (and d!1569128 c!830400) b!4882712))

(assert (= (and d!1569128 (not c!830400)) b!4882713))

(assert (= (and b!4882713 (not res!2084401)) b!4882714))

(declare-fun m!5886824 () Bool)

(assert (=> b!4882712 m!5886824))

(declare-fun m!5886826 () Bool)

(assert (=> b!4882714 m!5886826))

(assert (=> b!4882621 d!1569128))

(declare-fun d!1569130 () Bool)

(declare-fun isBalanced!3986 (Conc!14645) Bool)

(assert (=> d!1569130 (= (inv!72164 input!1236) (isBalanced!3986 (c!830389 input!1236)))))

(declare-fun bs!1175473 () Bool)

(assert (= bs!1175473 d!1569130))

(declare-fun m!5886828 () Bool)

(assert (=> bs!1175473 m!5886828))

(assert (=> start!510898 d!1569130))

(declare-fun b!4882725 () Bool)

(declare-fun b_free!130995 () Bool)

(declare-fun b_next!131785 () Bool)

(assert (=> b!4882725 (= b_free!130995 (not b_next!131785))))

(declare-fun tp!1373827 () Bool)

(declare-fun b_and!343827 () Bool)

(assert (=> b!4882725 (= tp!1373827 b_and!343827)))

(declare-fun b_free!130997 () Bool)

(declare-fun b_next!131787 () Bool)

(assert (=> b!4882725 (= b_free!130997 (not b_next!131787))))

(declare-fun tp!1373829 () Bool)

(declare-fun b_and!343829 () Bool)

(assert (=> b!4882725 (= tp!1373829 b_and!343829)))

(declare-fun e!3051666 () Bool)

(assert (=> b!4882725 (= e!3051666 (and tp!1373827 tp!1373829))))

(declare-fun tp!1373828 () Bool)

(declare-fun e!3051665 () Bool)

(declare-fun b!4882724 () Bool)

(assert (=> b!4882724 (= e!3051665 (and tp!1373828 (inv!72160 (tag!8941 (h!62562 (t!364884 rulesArg!165)))) (inv!72165 (transformation!8077 (h!62562 (t!364884 rulesArg!165)))) e!3051666))))

(declare-fun b!4882723 () Bool)

(declare-fun e!3051664 () Bool)

(declare-fun tp!1373826 () Bool)

(assert (=> b!4882723 (= e!3051664 (and e!3051665 tp!1373826))))

(assert (=> b!4882615 (= tp!1373802 e!3051664)))

(assert (= b!4882724 b!4882725))

(assert (= b!4882723 b!4882724))

(assert (= (and b!4882615 (is-Cons!56114 (t!364884 rulesArg!165))) b!4882723))

(declare-fun m!5886830 () Bool)

(assert (=> b!4882724 m!5886830))

(declare-fun m!5886832 () Bool)

(assert (=> b!4882724 m!5886832))

(declare-fun b!4882738 () Bool)

(declare-fun e!3051670 () Bool)

(declare-fun tp!1373842 () Bool)

(assert (=> b!4882738 (= e!3051670 tp!1373842)))

(declare-fun b!4882737 () Bool)

(declare-fun tp!1373844 () Bool)

(declare-fun tp!1373840 () Bool)

(assert (=> b!4882737 (= e!3051670 (and tp!1373844 tp!1373840))))

(declare-fun b!4882739 () Bool)

(declare-fun tp!1373843 () Bool)

(declare-fun tp!1373841 () Bool)

(assert (=> b!4882739 (= e!3051670 (and tp!1373843 tp!1373841))))

(declare-fun b!4882736 () Bool)

(declare-fun tp_is_empty!35717 () Bool)

(assert (=> b!4882736 (= e!3051670 tp_is_empty!35717)))

(assert (=> b!4882616 (= tp!1373801 e!3051670)))

(assert (= (and b!4882616 (is-ElementMatch!13152 (regex!8077 (h!62562 rulesArg!165)))) b!4882736))

(assert (= (and b!4882616 (is-Concat!21540 (regex!8077 (h!62562 rulesArg!165)))) b!4882737))

(assert (= (and b!4882616 (is-Star!13152 (regex!8077 (h!62562 rulesArg!165)))) b!4882738))

(assert (= (and b!4882616 (is-Union!13152 (regex!8077 (h!62562 rulesArg!165)))) b!4882739))

(declare-fun e!3051676 () Bool)

(declare-fun tp!1373853 () Bool)

(declare-fun b!4882748 () Bool)

(declare-fun tp!1373852 () Bool)

(assert (=> b!4882748 (= e!3051676 (and (inv!72163 (left!40770 (c!830389 input!1236))) tp!1373852 (inv!72163 (right!41100 (c!830389 input!1236))) tp!1373853))))

(declare-fun b!4882750 () Bool)

(declare-fun e!3051675 () Bool)

(declare-fun tp!1373851 () Bool)

(assert (=> b!4882750 (= e!3051675 tp!1373851)))

(declare-fun b!4882749 () Bool)

(declare-fun inv!72171 (IArray!29351) Bool)

(assert (=> b!4882749 (= e!3051676 (and (inv!72171 (xs!17961 (c!830389 input!1236))) e!3051675))))

(assert (=> b!4882621 (= tp!1373800 (and (inv!72163 (c!830389 input!1236)) e!3051676))))

(assert (= (and b!4882621 (is-Node!14645 (c!830389 input!1236))) b!4882748))

(assert (= b!4882749 b!4882750))

(assert (= (and b!4882621 (is-Leaf!24401 (c!830389 input!1236))) b!4882749))

(declare-fun m!5886834 () Bool)

(assert (=> b!4882748 m!5886834))

(declare-fun m!5886836 () Bool)

(assert (=> b!4882748 m!5886836))

(declare-fun m!5886838 () Bool)

(assert (=> b!4882749 m!5886838))

(assert (=> b!4882621 m!5886716))

(push 1)

(assert (not b!4882749))

(assert (not d!1569122))

(assert (not d!1569114))

(assert (not b_next!131777))

(assert (not b!4882621))

(assert b_and!343821)

(assert (not b!4882690))

(assert (not b!4882691))

(assert (not b!4882656))

(assert (not b!4882714))

(assert (not b!4882667))

(assert (not d!1569126))

(assert (not b!4882738))

(assert (not b!4882702))

(assert (not b!4882712))

(assert (not b_next!131787))

(assert (not b!4882687))

(assert (not b!4882737))

(assert (not b!4882739))

(assert b_and!343827)

(assert (not b!4882723))

(assert (not b!4882705))

(assert (not b_next!131779))

(assert (not b_next!131785))

(assert (not d!1569110))

(assert (not b!4882688))

(assert (not b!4882724))

(assert (not b!4882668))

(assert (not b!4882692))

(assert (not b!4882748))

(assert (not b!4882701))

(assert (not b!4882658))

(assert b_and!343819)

(assert (not d!1569108))

(assert (not b!4882750))

(assert (not d!1569118))

(assert (not d!1569130))

(assert tp_is_empty!35717)

(assert (not b!4882657))

(assert b_and!343829)

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!131787))

(assert b_and!343827)

(assert (not b_next!131777))

(assert b_and!343819)

(assert b_and!343829)

(assert b_and!343821)

(assert (not b_next!131779))

(assert (not b_next!131785))

(check-sat)

(pop 1)

