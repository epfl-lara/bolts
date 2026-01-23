; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!356064 () Bool)

(assert start!356064)

(declare-fun b!3801820 () Bool)

(declare-fun b_free!101301 () Bool)

(declare-fun b_next!102005 () Bool)

(assert (=> b!3801820 (= b_free!101301 (not b_next!102005))))

(declare-fun tp!1155003 () Bool)

(declare-fun b_and!282699 () Bool)

(assert (=> b!3801820 (= tp!1155003 b_and!282699)))

(declare-fun b_free!101303 () Bool)

(declare-fun b_next!102007 () Bool)

(assert (=> b!3801820 (= b_free!101303 (not b_next!102007))))

(declare-fun tp!1155009 () Bool)

(declare-fun b_and!282701 () Bool)

(assert (=> b!3801820 (= tp!1155009 b_and!282701)))

(declare-fun b!3801810 () Bool)

(declare-fun e!2349384 () Bool)

(declare-datatypes ((C!22412 0))(
  ( (C!22413 (val!13282 Int)) )
))
(declare-datatypes ((List!40468 0))(
  ( (Nil!40344) (Cons!40344 (h!45764 C!22412) (t!307185 List!40468)) )
))
(declare-datatypes ((IArray!24785 0))(
  ( (IArray!24786 (innerList!12450 List!40468)) )
))
(declare-datatypes ((Conc!12390 0))(
  ( (Node!12390 (left!31215 Conc!12390) (right!31545 Conc!12390) (csize!25010 Int) (cheight!12601 Int)) (Leaf!19192 (xs!15652 IArray!24785) (csize!25011 Int)) (Empty!12390) )
))
(declare-datatypes ((BalanceConc!24374 0))(
  ( (BalanceConc!24375 (c!661147 Conc!12390)) )
))
(declare-fun treated!13 () BalanceConc!24374)

(declare-fun tp!1155004 () Bool)

(declare-fun inv!54286 (Conc!12390) Bool)

(assert (=> b!3801810 (= e!2349384 (and (inv!54286 (c!661147 treated!13)) tp!1155004))))

(declare-fun b!3801811 () Bool)

(declare-fun e!2349385 () Bool)

(declare-fun e!2349378 () Bool)

(declare-fun tp!1155010 () Bool)

(assert (=> b!3801811 (= e!2349385 (and e!2349378 tp!1155010))))

(declare-fun b!3801812 () Bool)

(declare-fun res!1539135 () Bool)

(declare-fun e!2349381 () Bool)

(assert (=> b!3801812 (=> (not res!1539135) (not e!2349381))))

(declare-datatypes ((List!40469 0))(
  ( (Nil!40345) (Cons!40345 (h!45765 (_ BitVec 16)) (t!307186 List!40469)) )
))
(declare-datatypes ((TokenValue!6438 0))(
  ( (FloatLiteralValue!12876 (text!45511 List!40469)) (TokenValueExt!6437 (__x!25093 Int)) (Broken!32190 (value!197509 List!40469)) (Object!6561) (End!6438) (Def!6438) (Underscore!6438) (Match!6438) (Else!6438) (Error!6438) (Case!6438) (If!6438) (Extends!6438) (Abstract!6438) (Class!6438) (Val!6438) (DelimiterValue!12876 (del!6498 List!40469)) (KeywordValue!6444 (value!197510 List!40469)) (CommentValue!12876 (value!197511 List!40469)) (WhitespaceValue!12876 (value!197512 List!40469)) (IndentationValue!6438 (value!197513 List!40469)) (String!45871) (Int32!6438) (Broken!32191 (value!197514 List!40469)) (Boolean!6439) (Unit!58089) (OperatorValue!6441 (op!6498 List!40469)) (IdentifierValue!12876 (value!197515 List!40469)) (IdentifierValue!12877 (value!197516 List!40469)) (WhitespaceValue!12877 (value!197517 List!40469)) (True!12876) (False!12876) (Broken!32192 (value!197518 List!40469)) (Broken!32193 (value!197519 List!40469)) (True!12877) (RightBrace!6438) (RightBracket!6438) (Colon!6438) (Null!6438) (Comma!6438) (LeftBracket!6438) (False!12877) (LeftBrace!6438) (ImaginaryLiteralValue!6438 (text!45512 List!40469)) (StringLiteralValue!19314 (value!197520 List!40469)) (EOFValue!6438 (value!197521 List!40469)) (IdentValue!6438 (value!197522 List!40469)) (DelimiterValue!12877 (value!197523 List!40469)) (DedentValue!6438 (value!197524 List!40469)) (NewLineValue!6438 (value!197525 List!40469)) (IntegerValue!19314 (value!197526 (_ BitVec 32)) (text!45513 List!40469)) (IntegerValue!19315 (value!197527 Int) (text!45514 List!40469)) (Times!6438) (Or!6438) (Equal!6438) (Minus!6438) (Broken!32194 (value!197528 List!40469)) (And!6438) (Div!6438) (LessEqual!6438) (Mod!6438) (Concat!17551) (Not!6438) (Plus!6438) (SpaceValue!6438 (value!197529 List!40469)) (IntegerValue!19316 (value!197530 Int) (text!45515 List!40469)) (StringLiteralValue!19315 (text!45516 List!40469)) (FloatLiteralValue!12877 (text!45517 List!40469)) (BytesLiteralValue!6438 (value!197531 List!40469)) (CommentValue!12877 (value!197532 List!40469)) (StringLiteralValue!19316 (value!197533 List!40469)) (ErrorTokenValue!6438 (msg!6499 List!40469)) )
))
(declare-datatypes ((Regex!11113 0))(
  ( (ElementMatch!11113 (c!661148 C!22412)) (Concat!17552 (regOne!22738 Regex!11113) (regTwo!22738 Regex!11113)) (EmptyExpr!11113) (Star!11113 (reg!11442 Regex!11113)) (EmptyLang!11113) (Union!11113 (regOne!22739 Regex!11113) (regTwo!22739 Regex!11113)) )
))
(declare-datatypes ((String!45872 0))(
  ( (String!45873 (value!197534 String)) )
))
(declare-datatypes ((TokenValueInjection!12304 0))(
  ( (TokenValueInjection!12305 (toValue!8588 Int) (toChars!8447 Int)) )
))
(declare-datatypes ((Rule!12216 0))(
  ( (Rule!12217 (regex!6208 Regex!11113) (tag!7068 String!45872) (isSeparator!6208 Bool) (transformation!6208 TokenValueInjection!12304)) )
))
(declare-datatypes ((Token!11554 0))(
  ( (Token!11555 (value!197535 TokenValue!6438) (rule!9004 Rule!12216) (size!30369 Int) (originalCharacters!6808 List!40468)) )
))
(declare-datatypes ((List!40470 0))(
  ( (Nil!40346) (Cons!40346 (h!45766 Token!11554) (t!307187 List!40470)) )
))
(declare-datatypes ((IArray!24787 0))(
  ( (IArray!24788 (innerList!12451 List!40470)) )
))
(declare-datatypes ((Conc!12391 0))(
  ( (Node!12391 (left!31216 Conc!12391) (right!31546 Conc!12391) (csize!25012 Int) (cheight!12602 Int)) (Leaf!19193 (xs!15653 IArray!24787) (csize!25013 Int)) (Empty!12391) )
))
(declare-datatypes ((BalanceConc!24376 0))(
  ( (BalanceConc!24377 (c!661149 Conc!12391)) )
))
(declare-datatypes ((tuple2!39468 0))(
  ( (tuple2!39469 (_1!22868 BalanceConc!24376) (_2!22868 BalanceConc!24374)) )
))
(declare-fun lt!1318281 () tuple2!39468)

(declare-fun isEmpty!23745 (List!40468) Bool)

(declare-fun list!14975 (BalanceConc!24374) List!40468)

(assert (=> b!3801812 (= res!1539135 (isEmpty!23745 (list!14975 (_2!22868 lt!1318281))))))

(declare-fun b!3801813 () Bool)

(declare-fun e!2349379 () Bool)

(declare-fun totalInput!335 () BalanceConc!24374)

(declare-fun tp!1155007 () Bool)

(assert (=> b!3801813 (= e!2349379 (and (inv!54286 (c!661147 totalInput!335)) tp!1155007))))

(declare-fun b!3801814 () Bool)

(declare-fun e!2349377 () Bool)

(assert (=> b!3801814 (= e!2349377 e!2349381)))

(declare-fun res!1539137 () Bool)

(assert (=> b!3801814 (=> (not res!1539137) (not e!2349381))))

(declare-fun acc!335 () BalanceConc!24376)

(declare-fun list!14976 (BalanceConc!24376) List!40470)

(assert (=> b!3801814 (= res!1539137 (= (list!14976 (_1!22868 lt!1318281)) (list!14976 acc!335)))))

(declare-datatypes ((List!40471 0))(
  ( (Nil!40347) (Cons!40347 (h!45767 Rule!12216) (t!307188 List!40471)) )
))
(declare-fun rules!1265 () List!40471)

(declare-datatypes ((LexerInterface!5797 0))(
  ( (LexerInterfaceExt!5794 (__x!25094 Int)) (Lexer!5795) )
))
(declare-fun thiss!11876 () LexerInterface!5797)

(declare-fun lexRec!821 (LexerInterface!5797 List!40471 BalanceConc!24374) tuple2!39468)

(assert (=> b!3801814 (= lt!1318281 (lexRec!821 thiss!11876 rules!1265 treated!13))))

(declare-fun res!1539141 () Bool)

(assert (=> start!356064 (=> (not res!1539141) (not e!2349377))))

(get-info :version)

(assert (=> start!356064 (= res!1539141 ((_ is Lexer!5795) thiss!11876))))

(assert (=> start!356064 e!2349377))

(declare-fun input!678 () BalanceConc!24374)

(declare-fun e!2349376 () Bool)

(declare-fun inv!54287 (BalanceConc!24374) Bool)

(assert (=> start!356064 (and (inv!54287 input!678) e!2349376)))

(declare-fun e!2349382 () Bool)

(declare-fun inv!54288 (BalanceConc!24376) Bool)

(assert (=> start!356064 (and (inv!54288 acc!335) e!2349382)))

(assert (=> start!356064 (and (inv!54287 treated!13) e!2349384)))

(assert (=> start!356064 e!2349385))

(assert (=> start!356064 true))

(assert (=> start!356064 (and (inv!54287 totalInput!335) e!2349379)))

(declare-fun b!3801815 () Bool)

(declare-fun res!1539138 () Bool)

(assert (=> b!3801815 (=> (not res!1539138) (not e!2349377))))

(declare-fun rulesInvariant!5140 (LexerInterface!5797 List!40471) Bool)

(assert (=> b!3801815 (= res!1539138 (rulesInvariant!5140 thiss!11876 rules!1265))))

(declare-fun b!3801816 () Bool)

(declare-fun tp!1155005 () Bool)

(assert (=> b!3801816 (= e!2349376 (and (inv!54286 (c!661147 input!678)) tp!1155005))))

(declare-fun b!3801817 () Bool)

(declare-fun res!1539142 () Bool)

(assert (=> b!3801817 (=> (not res!1539142) (not e!2349377))))

(declare-fun isEmpty!23746 (List!40471) Bool)

(assert (=> b!3801817 (= res!1539142 (not (isEmpty!23746 rules!1265)))))

(declare-fun b!3801818 () Bool)

(declare-fun e!2349380 () Bool)

(assert (=> b!3801818 (= e!2349381 e!2349380)))

(declare-fun res!1539140 () Bool)

(assert (=> b!3801818 (=> (not res!1539140) (not e!2349380))))

(declare-fun lt!1318280 () tuple2!39468)

(declare-fun lt!1318279 () tuple2!39468)

(declare-fun ++!10117 (BalanceConc!24376 BalanceConc!24376) BalanceConc!24376)

(assert (=> b!3801818 (= res!1539140 (= (list!14976 (_1!22868 lt!1318279)) (list!14976 (++!10117 acc!335 (_1!22868 lt!1318280)))))))

(assert (=> b!3801818 (= lt!1318280 (lexRec!821 thiss!11876 rules!1265 input!678))))

(assert (=> b!3801818 (= lt!1318279 (lexRec!821 thiss!11876 rules!1265 totalInput!335))))

(declare-fun b!3801819 () Bool)

(declare-fun res!1539139 () Bool)

(assert (=> b!3801819 (=> (not res!1539139) (not e!2349377))))

(declare-fun ++!10118 (List!40468 List!40468) List!40468)

(assert (=> b!3801819 (= res!1539139 (= (list!14975 totalInput!335) (++!10118 (list!14975 treated!13) (list!14975 input!678))))))

(declare-fun e!2349383 () Bool)

(assert (=> b!3801820 (= e!2349383 (and tp!1155003 tp!1155009))))

(declare-fun b!3801821 () Bool)

(declare-fun res!1539136 () Bool)

(assert (=> b!3801821 (=> (not res!1539136) (not e!2349380))))

(assert (=> b!3801821 (= res!1539136 (= (list!14975 (_2!22868 lt!1318279)) (list!14975 (_2!22868 lt!1318280))))))

(declare-fun b!3801822 () Bool)

(declare-fun tp!1155006 () Bool)

(declare-fun inv!54280 (String!45872) Bool)

(declare-fun inv!54289 (TokenValueInjection!12304) Bool)

(assert (=> b!3801822 (= e!2349378 (and tp!1155006 (inv!54280 (tag!7068 (h!45767 rules!1265))) (inv!54289 (transformation!6208 (h!45767 rules!1265))) e!2349383))))

(declare-fun b!3801823 () Bool)

(declare-fun size!30370 (BalanceConc!24374) Int)

(assert (=> b!3801823 (= e!2349380 (< (size!30370 input!678) 0))))

(declare-fun b!3801824 () Bool)

(declare-fun tp!1155008 () Bool)

(declare-fun inv!54290 (Conc!12391) Bool)

(assert (=> b!3801824 (= e!2349382 (and (inv!54290 (c!661149 acc!335)) tp!1155008))))

(assert (= (and start!356064 res!1539141) b!3801817))

(assert (= (and b!3801817 res!1539142) b!3801815))

(assert (= (and b!3801815 res!1539138) b!3801819))

(assert (= (and b!3801819 res!1539139) b!3801814))

(assert (= (and b!3801814 res!1539137) b!3801812))

(assert (= (and b!3801812 res!1539135) b!3801818))

(assert (= (and b!3801818 res!1539140) b!3801821))

(assert (= (and b!3801821 res!1539136) b!3801823))

(assert (= start!356064 b!3801816))

(assert (= start!356064 b!3801824))

(assert (= start!356064 b!3801810))

(assert (= b!3801822 b!3801820))

(assert (= b!3801811 b!3801822))

(assert (= (and start!356064 ((_ is Cons!40347) rules!1265)) b!3801811))

(assert (= start!356064 b!3801813))

(declare-fun m!4332385 () Bool)

(assert (=> b!3801814 m!4332385))

(declare-fun m!4332387 () Bool)

(assert (=> b!3801814 m!4332387))

(declare-fun m!4332389 () Bool)

(assert (=> b!3801814 m!4332389))

(declare-fun m!4332391 () Bool)

(assert (=> b!3801815 m!4332391))

(declare-fun m!4332393 () Bool)

(assert (=> b!3801812 m!4332393))

(assert (=> b!3801812 m!4332393))

(declare-fun m!4332395 () Bool)

(assert (=> b!3801812 m!4332395))

(declare-fun m!4332397 () Bool)

(assert (=> b!3801817 m!4332397))

(declare-fun m!4332399 () Bool)

(assert (=> b!3801823 m!4332399))

(declare-fun m!4332401 () Bool)

(assert (=> b!3801818 m!4332401))

(declare-fun m!4332403 () Bool)

(assert (=> b!3801818 m!4332403))

(declare-fun m!4332405 () Bool)

(assert (=> b!3801818 m!4332405))

(declare-fun m!4332407 () Bool)

(assert (=> b!3801818 m!4332407))

(declare-fun m!4332409 () Bool)

(assert (=> b!3801818 m!4332409))

(assert (=> b!3801818 m!4332401))

(declare-fun m!4332411 () Bool)

(assert (=> b!3801816 m!4332411))

(declare-fun m!4332413 () Bool)

(assert (=> start!356064 m!4332413))

(declare-fun m!4332415 () Bool)

(assert (=> start!356064 m!4332415))

(declare-fun m!4332417 () Bool)

(assert (=> start!356064 m!4332417))

(declare-fun m!4332419 () Bool)

(assert (=> start!356064 m!4332419))

(declare-fun m!4332421 () Bool)

(assert (=> b!3801824 m!4332421))

(declare-fun m!4332423 () Bool)

(assert (=> b!3801819 m!4332423))

(declare-fun m!4332425 () Bool)

(assert (=> b!3801819 m!4332425))

(declare-fun m!4332427 () Bool)

(assert (=> b!3801819 m!4332427))

(assert (=> b!3801819 m!4332425))

(assert (=> b!3801819 m!4332427))

(declare-fun m!4332429 () Bool)

(assert (=> b!3801819 m!4332429))

(declare-fun m!4332431 () Bool)

(assert (=> b!3801821 m!4332431))

(declare-fun m!4332433 () Bool)

(assert (=> b!3801821 m!4332433))

(declare-fun m!4332435 () Bool)

(assert (=> b!3801810 m!4332435))

(declare-fun m!4332437 () Bool)

(assert (=> b!3801822 m!4332437))

(declare-fun m!4332439 () Bool)

(assert (=> b!3801822 m!4332439))

(declare-fun m!4332441 () Bool)

(assert (=> b!3801813 m!4332441))

(check-sat (not b!3801824) b_and!282699 (not b!3801821) b_and!282701 (not b!3801816) (not b!3801817) (not b!3801812) (not b!3801810) (not b_next!102005) (not b!3801814) (not b!3801818) (not start!356064) (not b!3801811) (not b!3801822) (not b!3801815) (not b!3801813) (not b!3801823) (not b_next!102007) (not b!3801819))
(check-sat b_and!282699 b_and!282701 (not b_next!102005) (not b_next!102007))
(get-model)

(declare-fun d!1121362 () Bool)

(declare-fun c!661155 () Bool)

(assert (=> d!1121362 (= c!661155 ((_ is Node!12390) (c!661147 treated!13)))))

(declare-fun e!2349397 () Bool)

(assert (=> d!1121362 (= (inv!54286 (c!661147 treated!13)) e!2349397)))

(declare-fun b!3801840 () Bool)

(declare-fun inv!54296 (Conc!12390) Bool)

(assert (=> b!3801840 (= e!2349397 (inv!54296 (c!661147 treated!13)))))

(declare-fun b!3801841 () Bool)

(declare-fun e!2349398 () Bool)

(assert (=> b!3801841 (= e!2349397 e!2349398)))

(declare-fun res!1539148 () Bool)

(assert (=> b!3801841 (= res!1539148 (not ((_ is Leaf!19192) (c!661147 treated!13))))))

(assert (=> b!3801841 (=> res!1539148 e!2349398)))

(declare-fun b!3801842 () Bool)

(declare-fun inv!54297 (Conc!12390) Bool)

(assert (=> b!3801842 (= e!2349398 (inv!54297 (c!661147 treated!13)))))

(assert (= (and d!1121362 c!661155) b!3801840))

(assert (= (and d!1121362 (not c!661155)) b!3801841))

(assert (= (and b!3801841 (not res!1539148)) b!3801842))

(declare-fun m!4332451 () Bool)

(assert (=> b!3801840 m!4332451))

(declare-fun m!4332453 () Bool)

(assert (=> b!3801842 m!4332453))

(assert (=> b!3801810 d!1121362))

(declare-fun d!1121372 () Bool)

(declare-fun list!14979 (Conc!12390) List!40468)

(assert (=> d!1121372 (= (list!14975 (_2!22868 lt!1318279)) (list!14979 (c!661147 (_2!22868 lt!1318279))))))

(declare-fun bs!579561 () Bool)

(assert (= bs!579561 d!1121372))

(declare-fun m!4332455 () Bool)

(assert (=> bs!579561 m!4332455))

(assert (=> b!3801821 d!1121372))

(declare-fun d!1121374 () Bool)

(assert (=> d!1121374 (= (list!14975 (_2!22868 lt!1318280)) (list!14979 (c!661147 (_2!22868 lt!1318280))))))

(declare-fun bs!579562 () Bool)

(assert (= bs!579562 d!1121374))

(declare-fun m!4332457 () Bool)

(assert (=> bs!579562 m!4332457))

(assert (=> b!3801821 d!1121374))

(declare-fun d!1121376 () Bool)

(assert (=> d!1121376 (= (inv!54280 (tag!7068 (h!45767 rules!1265))) (= (mod (str.len (value!197534 (tag!7068 (h!45767 rules!1265)))) 2) 0))))

(assert (=> b!3801822 d!1121376))

(declare-fun d!1121378 () Bool)

(declare-fun res!1539151 () Bool)

(declare-fun e!2349401 () Bool)

(assert (=> d!1121378 (=> (not res!1539151) (not e!2349401))))

(declare-fun semiInverseModEq!2657 (Int Int) Bool)

(assert (=> d!1121378 (= res!1539151 (semiInverseModEq!2657 (toChars!8447 (transformation!6208 (h!45767 rules!1265))) (toValue!8588 (transformation!6208 (h!45767 rules!1265)))))))

(assert (=> d!1121378 (= (inv!54289 (transformation!6208 (h!45767 rules!1265))) e!2349401)))

(declare-fun b!3801845 () Bool)

(declare-fun equivClasses!2556 (Int Int) Bool)

(assert (=> b!3801845 (= e!2349401 (equivClasses!2556 (toChars!8447 (transformation!6208 (h!45767 rules!1265))) (toValue!8588 (transformation!6208 (h!45767 rules!1265)))))))

(assert (= (and d!1121378 res!1539151) b!3801845))

(declare-fun m!4332459 () Bool)

(assert (=> d!1121378 m!4332459))

(declare-fun m!4332461 () Bool)

(assert (=> b!3801845 m!4332461))

(assert (=> b!3801822 d!1121378))

(declare-fun d!1121380 () Bool)

(declare-fun c!661156 () Bool)

(assert (=> d!1121380 (= c!661156 ((_ is Node!12390) (c!661147 totalInput!335)))))

(declare-fun e!2349402 () Bool)

(assert (=> d!1121380 (= (inv!54286 (c!661147 totalInput!335)) e!2349402)))

(declare-fun b!3801846 () Bool)

(assert (=> b!3801846 (= e!2349402 (inv!54296 (c!661147 totalInput!335)))))

(declare-fun b!3801847 () Bool)

(declare-fun e!2349403 () Bool)

(assert (=> b!3801847 (= e!2349402 e!2349403)))

(declare-fun res!1539152 () Bool)

(assert (=> b!3801847 (= res!1539152 (not ((_ is Leaf!19192) (c!661147 totalInput!335))))))

(assert (=> b!3801847 (=> res!1539152 e!2349403)))

(declare-fun b!3801848 () Bool)

(assert (=> b!3801848 (= e!2349403 (inv!54297 (c!661147 totalInput!335)))))

(assert (= (and d!1121380 c!661156) b!3801846))

(assert (= (and d!1121380 (not c!661156)) b!3801847))

(assert (= (and b!3801847 (not res!1539152)) b!3801848))

(declare-fun m!4332463 () Bool)

(assert (=> b!3801846 m!4332463))

(declare-fun m!4332465 () Bool)

(assert (=> b!3801848 m!4332465))

(assert (=> b!3801813 d!1121380))

(declare-fun d!1121382 () Bool)

(assert (=> d!1121382 (= (isEmpty!23745 (list!14975 (_2!22868 lt!1318281))) ((_ is Nil!40344) (list!14975 (_2!22868 lt!1318281))))))

(assert (=> b!3801812 d!1121382))

(declare-fun d!1121384 () Bool)

(assert (=> d!1121384 (= (list!14975 (_2!22868 lt!1318281)) (list!14979 (c!661147 (_2!22868 lt!1318281))))))

(declare-fun bs!579563 () Bool)

(assert (= bs!579563 d!1121384))

(declare-fun m!4332467 () Bool)

(assert (=> bs!579563 m!4332467))

(assert (=> b!3801812 d!1121384))

(declare-fun d!1121386 () Bool)

(declare-fun lt!1318284 () Int)

(declare-fun size!30374 (List!40468) Int)

(assert (=> d!1121386 (= lt!1318284 (size!30374 (list!14975 input!678)))))

(declare-fun size!30375 (Conc!12390) Int)

(assert (=> d!1121386 (= lt!1318284 (size!30375 (c!661147 input!678)))))

(assert (=> d!1121386 (= (size!30370 input!678) lt!1318284)))

(declare-fun bs!579564 () Bool)

(assert (= bs!579564 d!1121386))

(assert (=> bs!579564 m!4332427))

(assert (=> bs!579564 m!4332427))

(declare-fun m!4332469 () Bool)

(assert (=> bs!579564 m!4332469))

(declare-fun m!4332471 () Bool)

(assert (=> bs!579564 m!4332471))

(assert (=> b!3801823 d!1121386))

(declare-fun d!1121388 () Bool)

(declare-fun list!14980 (Conc!12391) List!40470)

(assert (=> d!1121388 (= (list!14976 (_1!22868 lt!1318281)) (list!14980 (c!661149 (_1!22868 lt!1318281))))))

(declare-fun bs!579565 () Bool)

(assert (= bs!579565 d!1121388))

(declare-fun m!4332473 () Bool)

(assert (=> bs!579565 m!4332473))

(assert (=> b!3801814 d!1121388))

(declare-fun d!1121390 () Bool)

(assert (=> d!1121390 (= (list!14976 acc!335) (list!14980 (c!661149 acc!335)))))

(declare-fun bs!579566 () Bool)

(assert (= bs!579566 d!1121390))

(declare-fun m!4332475 () Bool)

(assert (=> bs!579566 m!4332475))

(assert (=> b!3801814 d!1121390))

(declare-fun b!3801996 () Bool)

(declare-fun e!2349488 () Bool)

(declare-fun lt!1318317 () tuple2!39468)

(declare-fun isEmpty!23748 (BalanceConc!24376) Bool)

(assert (=> b!3801996 (= e!2349488 (not (isEmpty!23748 (_1!22868 lt!1318317))))))

(declare-fun b!3801997 () Bool)

(declare-fun e!2349489 () tuple2!39468)

(assert (=> b!3801997 (= e!2349489 (tuple2!39469 (BalanceConc!24377 Empty!12391) treated!13))))

(declare-fun b!3801998 () Bool)

(declare-fun res!1539204 () Bool)

(declare-fun e!2349491 () Bool)

(assert (=> b!3801998 (=> (not res!1539204) (not e!2349491))))

(declare-datatypes ((tuple2!39474 0))(
  ( (tuple2!39475 (_1!22871 List!40470) (_2!22871 List!40468)) )
))
(declare-fun lexList!1569 (LexerInterface!5797 List!40471 List!40468) tuple2!39474)

(assert (=> b!3801998 (= res!1539204 (= (list!14976 (_1!22868 lt!1318317)) (_1!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 treated!13)))))))

(declare-fun d!1121392 () Bool)

(assert (=> d!1121392 e!2349491))

(declare-fun res!1539205 () Bool)

(assert (=> d!1121392 (=> (not res!1539205) (not e!2349491))))

(declare-fun e!2349490 () Bool)

(assert (=> d!1121392 (= res!1539205 e!2349490)))

(declare-fun c!661185 () Bool)

(declare-fun size!30376 (BalanceConc!24376) Int)

(assert (=> d!1121392 (= c!661185 (> (size!30376 (_1!22868 lt!1318317)) 0))))

(assert (=> d!1121392 (= lt!1318317 e!2349489)))

(declare-fun c!661184 () Bool)

(declare-datatypes ((tuple2!39476 0))(
  ( (tuple2!39477 (_1!22872 Token!11554) (_2!22872 BalanceConc!24374)) )
))
(declare-datatypes ((Option!8618 0))(
  ( (None!8617) (Some!8617 (v!38839 tuple2!39476)) )
))
(declare-fun lt!1318316 () Option!8618)

(assert (=> d!1121392 (= c!661184 ((_ is Some!8617) lt!1318316))))

(declare-fun maxPrefixZipperSequence!1203 (LexerInterface!5797 List!40471 BalanceConc!24374) Option!8618)

(assert (=> d!1121392 (= lt!1318316 (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 treated!13))))

(assert (=> d!1121392 (= (lexRec!821 thiss!11876 rules!1265 treated!13) lt!1318317)))

(declare-fun b!3801999 () Bool)

(assert (=> b!3801999 (= e!2349490 e!2349488)))

(declare-fun res!1539203 () Bool)

(assert (=> b!3801999 (= res!1539203 (< (size!30370 (_2!22868 lt!1318317)) (size!30370 treated!13)))))

(assert (=> b!3801999 (=> (not res!1539203) (not e!2349488))))

(declare-fun b!3802000 () Bool)

(assert (=> b!3802000 (= e!2349491 (= (list!14975 (_2!22868 lt!1318317)) (_2!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 treated!13)))))))

(declare-fun b!3802001 () Bool)

(assert (=> b!3802001 (= e!2349490 (= (list!14975 (_2!22868 lt!1318317)) (list!14975 treated!13)))))

(declare-fun b!3802002 () Bool)

(declare-fun lt!1318315 () tuple2!39468)

(declare-fun prepend!1350 (BalanceConc!24376 Token!11554) BalanceConc!24376)

(assert (=> b!3802002 (= e!2349489 (tuple2!39469 (prepend!1350 (_1!22868 lt!1318315) (_1!22872 (v!38839 lt!1318316))) (_2!22868 lt!1318315)))))

(assert (=> b!3802002 (= lt!1318315 (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318316))))))

(assert (= (and d!1121392 c!661184) b!3802002))

(assert (= (and d!1121392 (not c!661184)) b!3801997))

(assert (= (and d!1121392 c!661185) b!3801999))

(assert (= (and d!1121392 (not c!661185)) b!3802001))

(assert (= (and b!3801999 res!1539203) b!3801996))

(assert (= (and d!1121392 res!1539205) b!3801998))

(assert (= (and b!3801998 res!1539204) b!3802000))

(declare-fun m!4332643 () Bool)

(assert (=> b!3802000 m!4332643))

(assert (=> b!3802000 m!4332425))

(assert (=> b!3802000 m!4332425))

(declare-fun m!4332645 () Bool)

(assert (=> b!3802000 m!4332645))

(assert (=> b!3802001 m!4332643))

(assert (=> b!3802001 m!4332425))

(declare-fun m!4332647 () Bool)

(assert (=> d!1121392 m!4332647))

(declare-fun m!4332649 () Bool)

(assert (=> d!1121392 m!4332649))

(declare-fun m!4332651 () Bool)

(assert (=> b!3801996 m!4332651))

(declare-fun m!4332653 () Bool)

(assert (=> b!3802002 m!4332653))

(declare-fun m!4332655 () Bool)

(assert (=> b!3802002 m!4332655))

(declare-fun m!4332657 () Bool)

(assert (=> b!3801999 m!4332657))

(declare-fun m!4332659 () Bool)

(assert (=> b!3801999 m!4332659))

(declare-fun m!4332661 () Bool)

(assert (=> b!3801998 m!4332661))

(assert (=> b!3801998 m!4332425))

(assert (=> b!3801998 m!4332425))

(assert (=> b!3801998 m!4332645))

(assert (=> b!3801814 d!1121392))

(declare-fun d!1121444 () Bool)

(declare-fun c!661188 () Bool)

(assert (=> d!1121444 (= c!661188 ((_ is Node!12391) (c!661149 acc!335)))))

(declare-fun e!2349496 () Bool)

(assert (=> d!1121444 (= (inv!54290 (c!661149 acc!335)) e!2349496)))

(declare-fun b!3802009 () Bool)

(declare-fun inv!54299 (Conc!12391) Bool)

(assert (=> b!3802009 (= e!2349496 (inv!54299 (c!661149 acc!335)))))

(declare-fun b!3802010 () Bool)

(declare-fun e!2349497 () Bool)

(assert (=> b!3802010 (= e!2349496 e!2349497)))

(declare-fun res!1539208 () Bool)

(assert (=> b!3802010 (= res!1539208 (not ((_ is Leaf!19193) (c!661149 acc!335))))))

(assert (=> b!3802010 (=> res!1539208 e!2349497)))

(declare-fun b!3802011 () Bool)

(declare-fun inv!54300 (Conc!12391) Bool)

(assert (=> b!3802011 (= e!2349497 (inv!54300 (c!661149 acc!335)))))

(assert (= (and d!1121444 c!661188) b!3802009))

(assert (= (and d!1121444 (not c!661188)) b!3802010))

(assert (= (and b!3802010 (not res!1539208)) b!3802011))

(declare-fun m!4332663 () Bool)

(assert (=> b!3802009 m!4332663))

(declare-fun m!4332665 () Bool)

(assert (=> b!3802011 m!4332665))

(assert (=> b!3801824 d!1121444))

(declare-fun d!1121446 () Bool)

(declare-fun res!1539211 () Bool)

(declare-fun e!2349500 () Bool)

(assert (=> d!1121446 (=> (not res!1539211) (not e!2349500))))

(declare-fun rulesValid!2392 (LexerInterface!5797 List!40471) Bool)

(assert (=> d!1121446 (= res!1539211 (rulesValid!2392 thiss!11876 rules!1265))))

(assert (=> d!1121446 (= (rulesInvariant!5140 thiss!11876 rules!1265) e!2349500)))

(declare-fun b!3802014 () Bool)

(declare-datatypes ((List!40473 0))(
  ( (Nil!40349) (Cons!40349 (h!45769 String!45872) (t!307190 List!40473)) )
))
(declare-fun noDuplicateTag!2393 (LexerInterface!5797 List!40471 List!40473) Bool)

(assert (=> b!3802014 (= e!2349500 (noDuplicateTag!2393 thiss!11876 rules!1265 Nil!40349))))

(assert (= (and d!1121446 res!1539211) b!3802014))

(declare-fun m!4332667 () Bool)

(assert (=> d!1121446 m!4332667))

(declare-fun m!4332669 () Bool)

(assert (=> b!3802014 m!4332669))

(assert (=> b!3801815 d!1121446))

(declare-fun d!1121448 () Bool)

(declare-fun isBalanced!3573 (Conc!12390) Bool)

(assert (=> d!1121448 (= (inv!54287 input!678) (isBalanced!3573 (c!661147 input!678)))))

(declare-fun bs!579580 () Bool)

(assert (= bs!579580 d!1121448))

(declare-fun m!4332671 () Bool)

(assert (=> bs!579580 m!4332671))

(assert (=> start!356064 d!1121448))

(declare-fun d!1121450 () Bool)

(declare-fun isBalanced!3574 (Conc!12391) Bool)

(assert (=> d!1121450 (= (inv!54288 acc!335) (isBalanced!3574 (c!661149 acc!335)))))

(declare-fun bs!579581 () Bool)

(assert (= bs!579581 d!1121450))

(declare-fun m!4332673 () Bool)

(assert (=> bs!579581 m!4332673))

(assert (=> start!356064 d!1121450))

(declare-fun d!1121452 () Bool)

(assert (=> d!1121452 (= (inv!54287 treated!13) (isBalanced!3573 (c!661147 treated!13)))))

(declare-fun bs!579582 () Bool)

(assert (= bs!579582 d!1121452))

(declare-fun m!4332675 () Bool)

(assert (=> bs!579582 m!4332675))

(assert (=> start!356064 d!1121452))

(declare-fun d!1121454 () Bool)

(assert (=> d!1121454 (= (inv!54287 totalInput!335) (isBalanced!3573 (c!661147 totalInput!335)))))

(declare-fun bs!579583 () Bool)

(assert (= bs!579583 d!1121454))

(declare-fun m!4332677 () Bool)

(assert (=> bs!579583 m!4332677))

(assert (=> start!356064 d!1121454))

(declare-fun d!1121456 () Bool)

(assert (=> d!1121456 (= (isEmpty!23746 rules!1265) ((_ is Nil!40347) rules!1265))))

(assert (=> b!3801817 d!1121456))

(declare-fun d!1121458 () Bool)

(declare-fun c!661189 () Bool)

(assert (=> d!1121458 (= c!661189 ((_ is Node!12390) (c!661147 input!678)))))

(declare-fun e!2349501 () Bool)

(assert (=> d!1121458 (= (inv!54286 (c!661147 input!678)) e!2349501)))

(declare-fun b!3802015 () Bool)

(assert (=> b!3802015 (= e!2349501 (inv!54296 (c!661147 input!678)))))

(declare-fun b!3802016 () Bool)

(declare-fun e!2349502 () Bool)

(assert (=> b!3802016 (= e!2349501 e!2349502)))

(declare-fun res!1539212 () Bool)

(assert (=> b!3802016 (= res!1539212 (not ((_ is Leaf!19192) (c!661147 input!678))))))

(assert (=> b!3802016 (=> res!1539212 e!2349502)))

(declare-fun b!3802017 () Bool)

(assert (=> b!3802017 (= e!2349502 (inv!54297 (c!661147 input!678)))))

(assert (= (and d!1121458 c!661189) b!3802015))

(assert (= (and d!1121458 (not c!661189)) b!3802016))

(assert (= (and b!3802016 (not res!1539212)) b!3802017))

(declare-fun m!4332679 () Bool)

(assert (=> b!3802015 m!4332679))

(declare-fun m!4332681 () Bool)

(assert (=> b!3802017 m!4332681))

(assert (=> b!3801816 d!1121458))

(declare-fun b!3802018 () Bool)

(declare-fun e!2349503 () Bool)

(declare-fun lt!1318320 () tuple2!39468)

(assert (=> b!3802018 (= e!2349503 (not (isEmpty!23748 (_1!22868 lt!1318320))))))

(declare-fun b!3802019 () Bool)

(declare-fun e!2349504 () tuple2!39468)

(assert (=> b!3802019 (= e!2349504 (tuple2!39469 (BalanceConc!24377 Empty!12391) totalInput!335))))

(declare-fun b!3802020 () Bool)

(declare-fun res!1539214 () Bool)

(declare-fun e!2349506 () Bool)

(assert (=> b!3802020 (=> (not res!1539214) (not e!2349506))))

(assert (=> b!3802020 (= res!1539214 (= (list!14976 (_1!22868 lt!1318320)) (_1!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 totalInput!335)))))))

(declare-fun d!1121460 () Bool)

(assert (=> d!1121460 e!2349506))

(declare-fun res!1539215 () Bool)

(assert (=> d!1121460 (=> (not res!1539215) (not e!2349506))))

(declare-fun e!2349505 () Bool)

(assert (=> d!1121460 (= res!1539215 e!2349505)))

(declare-fun c!661191 () Bool)

(assert (=> d!1121460 (= c!661191 (> (size!30376 (_1!22868 lt!1318320)) 0))))

(assert (=> d!1121460 (= lt!1318320 e!2349504)))

(declare-fun c!661190 () Bool)

(declare-fun lt!1318319 () Option!8618)

(assert (=> d!1121460 (= c!661190 ((_ is Some!8617) lt!1318319))))

(assert (=> d!1121460 (= lt!1318319 (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 totalInput!335))))

(assert (=> d!1121460 (= (lexRec!821 thiss!11876 rules!1265 totalInput!335) lt!1318320)))

(declare-fun b!3802021 () Bool)

(assert (=> b!3802021 (= e!2349505 e!2349503)))

(declare-fun res!1539213 () Bool)

(assert (=> b!3802021 (= res!1539213 (< (size!30370 (_2!22868 lt!1318320)) (size!30370 totalInput!335)))))

(assert (=> b!3802021 (=> (not res!1539213) (not e!2349503))))

(declare-fun b!3802022 () Bool)

(assert (=> b!3802022 (= e!2349506 (= (list!14975 (_2!22868 lt!1318320)) (_2!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 totalInput!335)))))))

(declare-fun b!3802023 () Bool)

(assert (=> b!3802023 (= e!2349505 (= (list!14975 (_2!22868 lt!1318320)) (list!14975 totalInput!335)))))

(declare-fun b!3802024 () Bool)

(declare-fun lt!1318318 () tuple2!39468)

(assert (=> b!3802024 (= e!2349504 (tuple2!39469 (prepend!1350 (_1!22868 lt!1318318) (_1!22872 (v!38839 lt!1318319))) (_2!22868 lt!1318318)))))

(assert (=> b!3802024 (= lt!1318318 (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318319))))))

(assert (= (and d!1121460 c!661190) b!3802024))

(assert (= (and d!1121460 (not c!661190)) b!3802019))

(assert (= (and d!1121460 c!661191) b!3802021))

(assert (= (and d!1121460 (not c!661191)) b!3802023))

(assert (= (and b!3802021 res!1539213) b!3802018))

(assert (= (and d!1121460 res!1539215) b!3802020))

(assert (= (and b!3802020 res!1539214) b!3802022))

(declare-fun m!4332683 () Bool)

(assert (=> b!3802022 m!4332683))

(assert (=> b!3802022 m!4332423))

(assert (=> b!3802022 m!4332423))

(declare-fun m!4332685 () Bool)

(assert (=> b!3802022 m!4332685))

(assert (=> b!3802023 m!4332683))

(assert (=> b!3802023 m!4332423))

(declare-fun m!4332687 () Bool)

(assert (=> d!1121460 m!4332687))

(declare-fun m!4332689 () Bool)

(assert (=> d!1121460 m!4332689))

(declare-fun m!4332691 () Bool)

(assert (=> b!3802018 m!4332691))

(declare-fun m!4332693 () Bool)

(assert (=> b!3802024 m!4332693))

(declare-fun m!4332695 () Bool)

(assert (=> b!3802024 m!4332695))

(declare-fun m!4332697 () Bool)

(assert (=> b!3802021 m!4332697))

(declare-fun m!4332699 () Bool)

(assert (=> b!3802021 m!4332699))

(declare-fun m!4332701 () Bool)

(assert (=> b!3802020 m!4332701))

(assert (=> b!3802020 m!4332423))

(assert (=> b!3802020 m!4332423))

(assert (=> b!3802020 m!4332685))

(assert (=> b!3801818 d!1121460))

(declare-fun d!1121462 () Bool)

(assert (=> d!1121462 (= (list!14976 (++!10117 acc!335 (_1!22868 lt!1318280))) (list!14980 (c!661149 (++!10117 acc!335 (_1!22868 lt!1318280)))))))

(declare-fun bs!579584 () Bool)

(assert (= bs!579584 d!1121462))

(declare-fun m!4332703 () Bool)

(assert (=> bs!579584 m!4332703))

(assert (=> b!3801818 d!1121462))

(declare-fun d!1121464 () Bool)

(assert (=> d!1121464 (= (list!14976 (_1!22868 lt!1318279)) (list!14980 (c!661149 (_1!22868 lt!1318279))))))

(declare-fun bs!579585 () Bool)

(assert (= bs!579585 d!1121464))

(declare-fun m!4332705 () Bool)

(assert (=> bs!579585 m!4332705))

(assert (=> b!3801818 d!1121464))

(declare-fun b!3802033 () Bool)

(declare-fun res!1539224 () Bool)

(declare-fun e!2349509 () Bool)

(assert (=> b!3802033 (=> (not res!1539224) (not e!2349509))))

(declare-fun ++!10121 (Conc!12391 Conc!12391) Conc!12391)

(assert (=> b!3802033 (= res!1539224 (isBalanced!3574 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))))))

(declare-fun b!3802034 () Bool)

(declare-fun res!1539227 () Bool)

(assert (=> b!3802034 (=> (not res!1539227) (not e!2349509))))

(declare-fun height!1790 (Conc!12391) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!3802034 (= res!1539227 (<= (height!1790 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))) (+ (max!0 (height!1790 (c!661149 acc!335)) (height!1790 (c!661149 (_1!22868 lt!1318280)))) 1)))))

(declare-fun lt!1318323 () BalanceConc!24376)

(declare-fun b!3802036 () Bool)

(declare-fun ++!10122 (List!40470 List!40470) List!40470)

(assert (=> b!3802036 (= e!2349509 (= (list!14976 lt!1318323) (++!10122 (list!14976 acc!335) (list!14976 (_1!22868 lt!1318280)))))))

(declare-fun d!1121466 () Bool)

(assert (=> d!1121466 e!2349509))

(declare-fun res!1539225 () Bool)

(assert (=> d!1121466 (=> (not res!1539225) (not e!2349509))))

(declare-fun appendAssocInst!857 (Conc!12391 Conc!12391) Bool)

(assert (=> d!1121466 (= res!1539225 (appendAssocInst!857 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))))

(assert (=> d!1121466 (= lt!1318323 (BalanceConc!24377 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))))))

(assert (=> d!1121466 (= (++!10117 acc!335 (_1!22868 lt!1318280)) lt!1318323)))

(declare-fun b!3802035 () Bool)

(declare-fun res!1539226 () Bool)

(assert (=> b!3802035 (=> (not res!1539226) (not e!2349509))))

(assert (=> b!3802035 (= res!1539226 (>= (height!1790 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))) (max!0 (height!1790 (c!661149 acc!335)) (height!1790 (c!661149 (_1!22868 lt!1318280))))))))

(assert (= (and d!1121466 res!1539225) b!3802033))

(assert (= (and b!3802033 res!1539224) b!3802034))

(assert (= (and b!3802034 res!1539227) b!3802035))

(assert (= (and b!3802035 res!1539226) b!3802036))

(declare-fun m!4332707 () Bool)

(assert (=> b!3802033 m!4332707))

(assert (=> b!3802033 m!4332707))

(declare-fun m!4332709 () Bool)

(assert (=> b!3802033 m!4332709))

(declare-fun m!4332711 () Bool)

(assert (=> b!3802036 m!4332711))

(assert (=> b!3802036 m!4332387))

(declare-fun m!4332713 () Bool)

(assert (=> b!3802036 m!4332713))

(assert (=> b!3802036 m!4332387))

(assert (=> b!3802036 m!4332713))

(declare-fun m!4332715 () Bool)

(assert (=> b!3802036 m!4332715))

(assert (=> b!3802035 m!4332707))

(declare-fun m!4332717 () Bool)

(assert (=> b!3802035 m!4332717))

(declare-fun m!4332719 () Bool)

(assert (=> b!3802035 m!4332719))

(assert (=> b!3802035 m!4332719))

(assert (=> b!3802035 m!4332717))

(declare-fun m!4332721 () Bool)

(assert (=> b!3802035 m!4332721))

(assert (=> b!3802035 m!4332707))

(declare-fun m!4332723 () Bool)

(assert (=> b!3802035 m!4332723))

(assert (=> b!3802034 m!4332707))

(assert (=> b!3802034 m!4332717))

(assert (=> b!3802034 m!4332719))

(assert (=> b!3802034 m!4332719))

(assert (=> b!3802034 m!4332717))

(assert (=> b!3802034 m!4332721))

(assert (=> b!3802034 m!4332707))

(assert (=> b!3802034 m!4332723))

(declare-fun m!4332725 () Bool)

(assert (=> d!1121466 m!4332725))

(assert (=> d!1121466 m!4332707))

(assert (=> b!3801818 d!1121466))

(declare-fun b!3802037 () Bool)

(declare-fun e!2349510 () Bool)

(declare-fun lt!1318326 () tuple2!39468)

(assert (=> b!3802037 (= e!2349510 (not (isEmpty!23748 (_1!22868 lt!1318326))))))

(declare-fun b!3802038 () Bool)

(declare-fun e!2349511 () tuple2!39468)

(assert (=> b!3802038 (= e!2349511 (tuple2!39469 (BalanceConc!24377 Empty!12391) input!678))))

(declare-fun b!3802039 () Bool)

(declare-fun res!1539229 () Bool)

(declare-fun e!2349513 () Bool)

(assert (=> b!3802039 (=> (not res!1539229) (not e!2349513))))

(assert (=> b!3802039 (= res!1539229 (= (list!14976 (_1!22868 lt!1318326)) (_1!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 input!678)))))))

(declare-fun d!1121468 () Bool)

(assert (=> d!1121468 e!2349513))

(declare-fun res!1539230 () Bool)

(assert (=> d!1121468 (=> (not res!1539230) (not e!2349513))))

(declare-fun e!2349512 () Bool)

(assert (=> d!1121468 (= res!1539230 e!2349512)))

(declare-fun c!661196 () Bool)

(assert (=> d!1121468 (= c!661196 (> (size!30376 (_1!22868 lt!1318326)) 0))))

(assert (=> d!1121468 (= lt!1318326 e!2349511)))

(declare-fun c!661195 () Bool)

(declare-fun lt!1318325 () Option!8618)

(assert (=> d!1121468 (= c!661195 ((_ is Some!8617) lt!1318325))))

(assert (=> d!1121468 (= lt!1318325 (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 input!678))))

(assert (=> d!1121468 (= (lexRec!821 thiss!11876 rules!1265 input!678) lt!1318326)))

(declare-fun b!3802040 () Bool)

(assert (=> b!3802040 (= e!2349512 e!2349510)))

(declare-fun res!1539228 () Bool)

(assert (=> b!3802040 (= res!1539228 (< (size!30370 (_2!22868 lt!1318326)) (size!30370 input!678)))))

(assert (=> b!3802040 (=> (not res!1539228) (not e!2349510))))

(declare-fun b!3802041 () Bool)

(assert (=> b!3802041 (= e!2349513 (= (list!14975 (_2!22868 lt!1318326)) (_2!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 input!678)))))))

(declare-fun b!3802042 () Bool)

(assert (=> b!3802042 (= e!2349512 (= (list!14975 (_2!22868 lt!1318326)) (list!14975 input!678)))))

(declare-fun b!3802043 () Bool)

(declare-fun lt!1318324 () tuple2!39468)

(assert (=> b!3802043 (= e!2349511 (tuple2!39469 (prepend!1350 (_1!22868 lt!1318324) (_1!22872 (v!38839 lt!1318325))) (_2!22868 lt!1318324)))))

(assert (=> b!3802043 (= lt!1318324 (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318325))))))

(assert (= (and d!1121468 c!661195) b!3802043))

(assert (= (and d!1121468 (not c!661195)) b!3802038))

(assert (= (and d!1121468 c!661196) b!3802040))

(assert (= (and d!1121468 (not c!661196)) b!3802042))

(assert (= (and b!3802040 res!1539228) b!3802037))

(assert (= (and d!1121468 res!1539230) b!3802039))

(assert (= (and b!3802039 res!1539229) b!3802041))

(declare-fun m!4332727 () Bool)

(assert (=> b!3802041 m!4332727))

(assert (=> b!3802041 m!4332427))

(assert (=> b!3802041 m!4332427))

(declare-fun m!4332729 () Bool)

(assert (=> b!3802041 m!4332729))

(assert (=> b!3802042 m!4332727))

(assert (=> b!3802042 m!4332427))

(declare-fun m!4332731 () Bool)

(assert (=> d!1121468 m!4332731))

(declare-fun m!4332733 () Bool)

(assert (=> d!1121468 m!4332733))

(declare-fun m!4332735 () Bool)

(assert (=> b!3802037 m!4332735))

(declare-fun m!4332737 () Bool)

(assert (=> b!3802043 m!4332737))

(declare-fun m!4332739 () Bool)

(assert (=> b!3802043 m!4332739))

(declare-fun m!4332741 () Bool)

(assert (=> b!3802040 m!4332741))

(assert (=> b!3802040 m!4332399))

(declare-fun m!4332743 () Bool)

(assert (=> b!3802039 m!4332743))

(assert (=> b!3802039 m!4332427))

(assert (=> b!3802039 m!4332427))

(assert (=> b!3802039 m!4332729))

(assert (=> b!3801818 d!1121468))

(declare-fun d!1121470 () Bool)

(assert (=> d!1121470 (= (list!14975 totalInput!335) (list!14979 (c!661147 totalInput!335)))))

(declare-fun bs!579586 () Bool)

(assert (= bs!579586 d!1121470))

(declare-fun m!4332745 () Bool)

(assert (=> bs!579586 m!4332745))

(assert (=> b!3801819 d!1121470))

(declare-fun d!1121472 () Bool)

(declare-fun e!2349519 () Bool)

(assert (=> d!1121472 e!2349519))

(declare-fun res!1539235 () Bool)

(assert (=> d!1121472 (=> (not res!1539235) (not e!2349519))))

(declare-fun lt!1318329 () List!40468)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5950 (List!40468) (InoxSet C!22412))

(assert (=> d!1121472 (= res!1539235 (= (content!5950 lt!1318329) ((_ map or) (content!5950 (list!14975 treated!13)) (content!5950 (list!14975 input!678)))))))

(declare-fun e!2349518 () List!40468)

(assert (=> d!1121472 (= lt!1318329 e!2349518)))

(declare-fun c!661199 () Bool)

(assert (=> d!1121472 (= c!661199 ((_ is Nil!40344) (list!14975 treated!13)))))

(assert (=> d!1121472 (= (++!10118 (list!14975 treated!13) (list!14975 input!678)) lt!1318329)))

(declare-fun b!3802053 () Bool)

(assert (=> b!3802053 (= e!2349518 (Cons!40344 (h!45764 (list!14975 treated!13)) (++!10118 (t!307185 (list!14975 treated!13)) (list!14975 input!678))))))

(declare-fun b!3802052 () Bool)

(assert (=> b!3802052 (= e!2349518 (list!14975 input!678))))

(declare-fun b!3802054 () Bool)

(declare-fun res!1539236 () Bool)

(assert (=> b!3802054 (=> (not res!1539236) (not e!2349519))))

(assert (=> b!3802054 (= res!1539236 (= (size!30374 lt!1318329) (+ (size!30374 (list!14975 treated!13)) (size!30374 (list!14975 input!678)))))))

(declare-fun b!3802055 () Bool)

(assert (=> b!3802055 (= e!2349519 (or (not (= (list!14975 input!678) Nil!40344)) (= lt!1318329 (list!14975 treated!13))))))

(assert (= (and d!1121472 c!661199) b!3802052))

(assert (= (and d!1121472 (not c!661199)) b!3802053))

(assert (= (and d!1121472 res!1539235) b!3802054))

(assert (= (and b!3802054 res!1539236) b!3802055))

(declare-fun m!4332747 () Bool)

(assert (=> d!1121472 m!4332747))

(assert (=> d!1121472 m!4332425))

(declare-fun m!4332749 () Bool)

(assert (=> d!1121472 m!4332749))

(assert (=> d!1121472 m!4332427))

(declare-fun m!4332751 () Bool)

(assert (=> d!1121472 m!4332751))

(assert (=> b!3802053 m!4332427))

(declare-fun m!4332753 () Bool)

(assert (=> b!3802053 m!4332753))

(declare-fun m!4332755 () Bool)

(assert (=> b!3802054 m!4332755))

(assert (=> b!3802054 m!4332425))

(declare-fun m!4332757 () Bool)

(assert (=> b!3802054 m!4332757))

(assert (=> b!3802054 m!4332427))

(assert (=> b!3802054 m!4332469))

(assert (=> b!3801819 d!1121472))

(declare-fun d!1121474 () Bool)

(assert (=> d!1121474 (= (list!14975 treated!13) (list!14979 (c!661147 treated!13)))))

(declare-fun bs!579587 () Bool)

(assert (= bs!579587 d!1121474))

(declare-fun m!4332759 () Bool)

(assert (=> bs!579587 m!4332759))

(assert (=> b!3801819 d!1121474))

(declare-fun d!1121476 () Bool)

(assert (=> d!1121476 (= (list!14975 input!678) (list!14979 (c!661147 input!678)))))

(declare-fun bs!579588 () Bool)

(assert (= bs!579588 d!1121476))

(declare-fun m!4332761 () Bool)

(assert (=> bs!579588 m!4332761))

(assert (=> b!3801819 d!1121476))

(declare-fun tp!1155069 () Bool)

(declare-fun b!3802064 () Bool)

(declare-fun tp!1155068 () Bool)

(declare-fun e!2349524 () Bool)

(assert (=> b!3802064 (= e!2349524 (and (inv!54286 (left!31215 (c!661147 treated!13))) tp!1155068 (inv!54286 (right!31545 (c!661147 treated!13))) tp!1155069))))

(declare-fun b!3802066 () Bool)

(declare-fun e!2349525 () Bool)

(declare-fun tp!1155070 () Bool)

(assert (=> b!3802066 (= e!2349525 tp!1155070)))

(declare-fun b!3802065 () Bool)

(declare-fun inv!54301 (IArray!24785) Bool)

(assert (=> b!3802065 (= e!2349524 (and (inv!54301 (xs!15652 (c!661147 treated!13))) e!2349525))))

(assert (=> b!3801810 (= tp!1155004 (and (inv!54286 (c!661147 treated!13)) e!2349524))))

(assert (= (and b!3801810 ((_ is Node!12390) (c!661147 treated!13))) b!3802064))

(assert (= b!3802065 b!3802066))

(assert (= (and b!3801810 ((_ is Leaf!19192) (c!661147 treated!13))) b!3802065))

(declare-fun m!4332763 () Bool)

(assert (=> b!3802064 m!4332763))

(declare-fun m!4332765 () Bool)

(assert (=> b!3802064 m!4332765))

(declare-fun m!4332767 () Bool)

(assert (=> b!3802065 m!4332767))

(assert (=> b!3801810 m!4332435))

(declare-fun b!3802079 () Bool)

(declare-fun e!2349528 () Bool)

(declare-fun tp!1155081 () Bool)

(assert (=> b!3802079 (= e!2349528 tp!1155081)))

(declare-fun b!3802080 () Bool)

(declare-fun tp!1155084 () Bool)

(declare-fun tp!1155082 () Bool)

(assert (=> b!3802080 (= e!2349528 (and tp!1155084 tp!1155082))))

(declare-fun b!3802077 () Bool)

(declare-fun tp_is_empty!19181 () Bool)

(assert (=> b!3802077 (= e!2349528 tp_is_empty!19181)))

(declare-fun b!3802078 () Bool)

(declare-fun tp!1155085 () Bool)

(declare-fun tp!1155083 () Bool)

(assert (=> b!3802078 (= e!2349528 (and tp!1155085 tp!1155083))))

(assert (=> b!3801822 (= tp!1155006 e!2349528)))

(assert (= (and b!3801822 ((_ is ElementMatch!11113) (regex!6208 (h!45767 rules!1265)))) b!3802077))

(assert (= (and b!3801822 ((_ is Concat!17552) (regex!6208 (h!45767 rules!1265)))) b!3802078))

(assert (= (and b!3801822 ((_ is Star!11113) (regex!6208 (h!45767 rules!1265)))) b!3802079))

(assert (= (and b!3801822 ((_ is Union!11113) (regex!6208 (h!45767 rules!1265)))) b!3802080))

(declare-fun e!2349529 () Bool)

(declare-fun tp!1155086 () Bool)

(declare-fun b!3802081 () Bool)

(declare-fun tp!1155087 () Bool)

(assert (=> b!3802081 (= e!2349529 (and (inv!54286 (left!31215 (c!661147 input!678))) tp!1155086 (inv!54286 (right!31545 (c!661147 input!678))) tp!1155087))))

(declare-fun b!3802083 () Bool)

(declare-fun e!2349530 () Bool)

(declare-fun tp!1155088 () Bool)

(assert (=> b!3802083 (= e!2349530 tp!1155088)))

(declare-fun b!3802082 () Bool)

(assert (=> b!3802082 (= e!2349529 (and (inv!54301 (xs!15652 (c!661147 input!678))) e!2349530))))

(assert (=> b!3801816 (= tp!1155005 (and (inv!54286 (c!661147 input!678)) e!2349529))))

(assert (= (and b!3801816 ((_ is Node!12390) (c!661147 input!678))) b!3802081))

(assert (= b!3802082 b!3802083))

(assert (= (and b!3801816 ((_ is Leaf!19192) (c!661147 input!678))) b!3802082))

(declare-fun m!4332769 () Bool)

(assert (=> b!3802081 m!4332769))

(declare-fun m!4332771 () Bool)

(assert (=> b!3802081 m!4332771))

(declare-fun m!4332773 () Bool)

(assert (=> b!3802082 m!4332773))

(assert (=> b!3801816 m!4332411))

(declare-fun b!3802094 () Bool)

(declare-fun b_free!101309 () Bool)

(declare-fun b_next!102013 () Bool)

(assert (=> b!3802094 (= b_free!101309 (not b_next!102013))))

(declare-fun tp!1155099 () Bool)

(declare-fun b_and!282707 () Bool)

(assert (=> b!3802094 (= tp!1155099 b_and!282707)))

(declare-fun b_free!101311 () Bool)

(declare-fun b_next!102015 () Bool)

(assert (=> b!3802094 (= b_free!101311 (not b_next!102015))))

(declare-fun tp!1155100 () Bool)

(declare-fun b_and!282709 () Bool)

(assert (=> b!3802094 (= tp!1155100 b_and!282709)))

(declare-fun e!2349539 () Bool)

(assert (=> b!3802094 (= e!2349539 (and tp!1155099 tp!1155100))))

(declare-fun b!3802093 () Bool)

(declare-fun tp!1155097 () Bool)

(declare-fun e!2349540 () Bool)

(assert (=> b!3802093 (= e!2349540 (and tp!1155097 (inv!54280 (tag!7068 (h!45767 (t!307188 rules!1265)))) (inv!54289 (transformation!6208 (h!45767 (t!307188 rules!1265)))) e!2349539))))

(declare-fun b!3802092 () Bool)

(declare-fun e!2349541 () Bool)

(declare-fun tp!1155098 () Bool)

(assert (=> b!3802092 (= e!2349541 (and e!2349540 tp!1155098))))

(assert (=> b!3801811 (= tp!1155010 e!2349541)))

(assert (= b!3802093 b!3802094))

(assert (= b!3802092 b!3802093))

(assert (= (and b!3801811 ((_ is Cons!40347) (t!307188 rules!1265))) b!3802092))

(declare-fun m!4332775 () Bool)

(assert (=> b!3802093 m!4332775))

(declare-fun m!4332777 () Bool)

(assert (=> b!3802093 m!4332777))

(declare-fun tp!1155101 () Bool)

(declare-fun b!3802095 () Bool)

(declare-fun e!2349543 () Bool)

(declare-fun tp!1155102 () Bool)

(assert (=> b!3802095 (= e!2349543 (and (inv!54286 (left!31215 (c!661147 totalInput!335))) tp!1155101 (inv!54286 (right!31545 (c!661147 totalInput!335))) tp!1155102))))

(declare-fun b!3802097 () Bool)

(declare-fun e!2349544 () Bool)

(declare-fun tp!1155103 () Bool)

(assert (=> b!3802097 (= e!2349544 tp!1155103)))

(declare-fun b!3802096 () Bool)

(assert (=> b!3802096 (= e!2349543 (and (inv!54301 (xs!15652 (c!661147 totalInput!335))) e!2349544))))

(assert (=> b!3801813 (= tp!1155007 (and (inv!54286 (c!661147 totalInput!335)) e!2349543))))

(assert (= (and b!3801813 ((_ is Node!12390) (c!661147 totalInput!335))) b!3802095))

(assert (= b!3802096 b!3802097))

(assert (= (and b!3801813 ((_ is Leaf!19192) (c!661147 totalInput!335))) b!3802096))

(declare-fun m!4332779 () Bool)

(assert (=> b!3802095 m!4332779))

(declare-fun m!4332781 () Bool)

(assert (=> b!3802095 m!4332781))

(declare-fun m!4332783 () Bool)

(assert (=> b!3802096 m!4332783))

(assert (=> b!3801813 m!4332441))

(declare-fun b!3802106 () Bool)

(declare-fun tp!1155112 () Bool)

(declare-fun tp!1155110 () Bool)

(declare-fun e!2349549 () Bool)

(assert (=> b!3802106 (= e!2349549 (and (inv!54290 (left!31216 (c!661149 acc!335))) tp!1155112 (inv!54290 (right!31546 (c!661149 acc!335))) tp!1155110))))

(declare-fun b!3802108 () Bool)

(declare-fun e!2349550 () Bool)

(declare-fun tp!1155111 () Bool)

(assert (=> b!3802108 (= e!2349550 tp!1155111)))

(declare-fun b!3802107 () Bool)

(declare-fun inv!54302 (IArray!24787) Bool)

(assert (=> b!3802107 (= e!2349549 (and (inv!54302 (xs!15653 (c!661149 acc!335))) e!2349550))))

(assert (=> b!3801824 (= tp!1155008 (and (inv!54290 (c!661149 acc!335)) e!2349549))))

(assert (= (and b!3801824 ((_ is Node!12391) (c!661149 acc!335))) b!3802106))

(assert (= b!3802107 b!3802108))

(assert (= (and b!3801824 ((_ is Leaf!19193) (c!661149 acc!335))) b!3802107))

(declare-fun m!4332785 () Bool)

(assert (=> b!3802106 m!4332785))

(declare-fun m!4332787 () Bool)

(assert (=> b!3802106 m!4332787))

(declare-fun m!4332789 () Bool)

(assert (=> b!3802107 m!4332789))

(assert (=> b!3801824 m!4332421))

(check-sat (not b!3802078) (not b!3802022) (not b!3802054) (not b!3801810) (not d!1121474) (not d!1121462) (not d!1121472) (not b!3801824) b_and!282707 (not d!1121390) (not b!3802021) (not b!3802014) (not b!3802037) (not d!1121374) (not d!1121476) (not b!3802020) (not b!3801813) (not d!1121372) (not d!1121468) (not b!3802039) (not d!1121460) (not b!3802002) (not b_next!102015) (not b!3802041) (not b!3802018) (not b!3802015) (not b!3802065) b_and!282709 (not b!3802107) (not b!3802042) (not b!3801846) (not b!3802053) b_and!282699 (not d!1121448) (not b!3801999) (not b!3802097) (not b!3802033) (not b!3802064) (not b!3802108) (not b!3802035) (not b!3802023) (not b!3801845) (not b!3802001) tp_is_empty!19181 b_and!282701 (not b!3802096) (not b!3801998) (not b!3802106) (not b!3801816) (not b!3802034) (not d!1121386) (not b!3802040) (not d!1121446) (not b!3802036) (not d!1121388) (not b!3802093) (not b!3802024) (not d!1121464) (not b!3802043) (not d!1121454) (not b_next!102007) (not b!3802009) (not d!1121378) (not d!1121452) (not b!3802017) (not d!1121450) (not b!3801840) (not b!3801842) (not b!3802066) (not b!3802080) (not b!3802083) (not b!3802092) (not b!3802000) (not d!1121466) (not b_next!102005) (not b!3801996) (not d!1121384) (not d!1121470) (not b!3802011) (not b!3802079) (not b!3802081) (not d!1121392) (not b!3801848) (not b!3802082) (not b_next!102013) (not b!3802095))
(check-sat b_and!282707 (not b_next!102015) b_and!282709 b_and!282699 b_and!282701 (not b_next!102007) (not b_next!102005) (not b_next!102013))
(get-model)

(declare-fun d!1121508 () Bool)

(declare-fun lt!1318358 () Bool)

(declare-fun isEmpty!23751 (List!40470) Bool)

(assert (=> d!1121508 (= lt!1318358 (isEmpty!23751 (list!14976 (_1!22868 lt!1318326))))))

(declare-fun isEmpty!23752 (Conc!12391) Bool)

(assert (=> d!1121508 (= lt!1318358 (isEmpty!23752 (c!661149 (_1!22868 lt!1318326))))))

(assert (=> d!1121508 (= (isEmpty!23748 (_1!22868 lt!1318326)) lt!1318358)))

(declare-fun bs!579596 () Bool)

(assert (= bs!579596 d!1121508))

(assert (=> bs!579596 m!4332743))

(assert (=> bs!579596 m!4332743))

(declare-fun m!4332889 () Bool)

(assert (=> bs!579596 m!4332889))

(declare-fun m!4332891 () Bool)

(assert (=> bs!579596 m!4332891))

(assert (=> b!3802037 d!1121508))

(declare-fun d!1121510 () Bool)

(assert (=> d!1121510 (= (inv!54280 (tag!7068 (h!45767 (t!307188 rules!1265)))) (= (mod (str.len (value!197534 (tag!7068 (h!45767 (t!307188 rules!1265))))) 2) 0))))

(assert (=> b!3802093 d!1121510))

(declare-fun d!1121512 () Bool)

(declare-fun res!1539263 () Bool)

(declare-fun e!2349585 () Bool)

(assert (=> d!1121512 (=> (not res!1539263) (not e!2349585))))

(assert (=> d!1121512 (= res!1539263 (semiInverseModEq!2657 (toChars!8447 (transformation!6208 (h!45767 (t!307188 rules!1265)))) (toValue!8588 (transformation!6208 (h!45767 (t!307188 rules!1265))))))))

(assert (=> d!1121512 (= (inv!54289 (transformation!6208 (h!45767 (t!307188 rules!1265)))) e!2349585)))

(declare-fun b!3802169 () Bool)

(assert (=> b!3802169 (= e!2349585 (equivClasses!2556 (toChars!8447 (transformation!6208 (h!45767 (t!307188 rules!1265)))) (toValue!8588 (transformation!6208 (h!45767 (t!307188 rules!1265))))))))

(assert (= (and d!1121512 res!1539263) b!3802169))

(declare-fun m!4332893 () Bool)

(assert (=> d!1121512 m!4332893))

(declare-fun m!4332895 () Bool)

(assert (=> b!3802169 m!4332895))

(assert (=> b!3802093 d!1121512))

(declare-fun d!1121514 () Bool)

(assert (=> d!1121514 true))

(declare-fun lambda!125637 () Int)

(declare-fun order!22005 () Int)

(declare-fun order!22007 () Int)

(declare-fun dynLambda!17436 (Int Int) Int)

(declare-fun dynLambda!17437 (Int Int) Int)

(assert (=> d!1121514 (< (dynLambda!17436 order!22005 (toChars!8447 (transformation!6208 (h!45767 rules!1265)))) (dynLambda!17437 order!22007 lambda!125637))))

(assert (=> d!1121514 true))

(declare-fun order!22009 () Int)

(declare-fun dynLambda!17438 (Int Int) Int)

(assert (=> d!1121514 (< (dynLambda!17438 order!22009 (toValue!8588 (transformation!6208 (h!45767 rules!1265)))) (dynLambda!17437 order!22007 lambda!125637))))

(declare-fun Forall!1414 (Int) Bool)

(assert (=> d!1121514 (= (semiInverseModEq!2657 (toChars!8447 (transformation!6208 (h!45767 rules!1265))) (toValue!8588 (transformation!6208 (h!45767 rules!1265)))) (Forall!1414 lambda!125637))))

(declare-fun bs!579601 () Bool)

(assert (= bs!579601 d!1121514))

(declare-fun m!4332923 () Bool)

(assert (=> bs!579601 m!4332923))

(assert (=> d!1121378 d!1121514))

(declare-fun d!1121528 () Bool)

(declare-fun lt!1318364 () Int)

(assert (=> d!1121528 (>= lt!1318364 0)))

(declare-fun e!2349596 () Int)

(assert (=> d!1121528 (= lt!1318364 e!2349596)))

(declare-fun c!661230 () Bool)

(assert (=> d!1121528 (= c!661230 ((_ is Nil!40344) lt!1318329))))

(assert (=> d!1121528 (= (size!30374 lt!1318329) lt!1318364)))

(declare-fun b!3802198 () Bool)

(assert (=> b!3802198 (= e!2349596 0)))

(declare-fun b!3802199 () Bool)

(assert (=> b!3802199 (= e!2349596 (+ 1 (size!30374 (t!307185 lt!1318329))))))

(assert (= (and d!1121528 c!661230) b!3802198))

(assert (= (and d!1121528 (not c!661230)) b!3802199))

(declare-fun m!4332925 () Bool)

(assert (=> b!3802199 m!4332925))

(assert (=> b!3802054 d!1121528))

(declare-fun d!1121530 () Bool)

(declare-fun lt!1318365 () Int)

(assert (=> d!1121530 (>= lt!1318365 0)))

(declare-fun e!2349597 () Int)

(assert (=> d!1121530 (= lt!1318365 e!2349597)))

(declare-fun c!661231 () Bool)

(assert (=> d!1121530 (= c!661231 ((_ is Nil!40344) (list!14975 treated!13)))))

(assert (=> d!1121530 (= (size!30374 (list!14975 treated!13)) lt!1318365)))

(declare-fun b!3802200 () Bool)

(assert (=> b!3802200 (= e!2349597 0)))

(declare-fun b!3802201 () Bool)

(assert (=> b!3802201 (= e!2349597 (+ 1 (size!30374 (t!307185 (list!14975 treated!13)))))))

(assert (= (and d!1121530 c!661231) b!3802200))

(assert (= (and d!1121530 (not c!661231)) b!3802201))

(declare-fun m!4332927 () Bool)

(assert (=> b!3802201 m!4332927))

(assert (=> b!3802054 d!1121530))

(declare-fun d!1121532 () Bool)

(declare-fun lt!1318366 () Int)

(assert (=> d!1121532 (>= lt!1318366 0)))

(declare-fun e!2349598 () Int)

(assert (=> d!1121532 (= lt!1318366 e!2349598)))

(declare-fun c!661232 () Bool)

(assert (=> d!1121532 (= c!661232 ((_ is Nil!40344) (list!14975 input!678)))))

(assert (=> d!1121532 (= (size!30374 (list!14975 input!678)) lt!1318366)))

(declare-fun b!3802202 () Bool)

(assert (=> b!3802202 (= e!2349598 0)))

(declare-fun b!3802203 () Bool)

(assert (=> b!3802203 (= e!2349598 (+ 1 (size!30374 (t!307185 (list!14975 input!678)))))))

(assert (= (and d!1121532 c!661232) b!3802202))

(assert (= (and d!1121532 (not c!661232)) b!3802203))

(declare-fun m!4332929 () Bool)

(assert (=> b!3802203 m!4332929))

(assert (=> b!3802054 d!1121532))

(declare-fun d!1121534 () Bool)

(declare-fun res!1539270 () Bool)

(declare-fun e!2349601 () Bool)

(assert (=> d!1121534 (=> (not res!1539270) (not e!2349601))))

(assert (=> d!1121534 (= res!1539270 (= (csize!25010 (c!661147 totalInput!335)) (+ (size!30375 (left!31215 (c!661147 totalInput!335))) (size!30375 (right!31545 (c!661147 totalInput!335))))))))

(assert (=> d!1121534 (= (inv!54296 (c!661147 totalInput!335)) e!2349601)))

(declare-fun b!3802210 () Bool)

(declare-fun res!1539271 () Bool)

(assert (=> b!3802210 (=> (not res!1539271) (not e!2349601))))

(assert (=> b!3802210 (= res!1539271 (and (not (= (left!31215 (c!661147 totalInput!335)) Empty!12390)) (not (= (right!31545 (c!661147 totalInput!335)) Empty!12390))))))

(declare-fun b!3802211 () Bool)

(declare-fun res!1539272 () Bool)

(assert (=> b!3802211 (=> (not res!1539272) (not e!2349601))))

(declare-fun height!1791 (Conc!12390) Int)

(assert (=> b!3802211 (= res!1539272 (= (cheight!12601 (c!661147 totalInput!335)) (+ (max!0 (height!1791 (left!31215 (c!661147 totalInput!335))) (height!1791 (right!31545 (c!661147 totalInput!335)))) 1)))))

(declare-fun b!3802212 () Bool)

(assert (=> b!3802212 (= e!2349601 (<= 0 (cheight!12601 (c!661147 totalInput!335))))))

(assert (= (and d!1121534 res!1539270) b!3802210))

(assert (= (and b!3802210 res!1539271) b!3802211))

(assert (= (and b!3802211 res!1539272) b!3802212))

(declare-fun m!4332931 () Bool)

(assert (=> d!1121534 m!4332931))

(declare-fun m!4332933 () Bool)

(assert (=> d!1121534 m!4332933))

(declare-fun m!4332935 () Bool)

(assert (=> b!3802211 m!4332935))

(declare-fun m!4332937 () Bool)

(assert (=> b!3802211 m!4332937))

(assert (=> b!3802211 m!4332935))

(assert (=> b!3802211 m!4332937))

(declare-fun m!4332939 () Bool)

(assert (=> b!3802211 m!4332939))

(assert (=> b!3801846 d!1121534))

(declare-fun d!1121536 () Bool)

(assert (=> d!1121536 (= (list!14976 (_1!22868 lt!1318326)) (list!14980 (c!661149 (_1!22868 lt!1318326))))))

(declare-fun bs!579602 () Bool)

(assert (= bs!579602 d!1121536))

(declare-fun m!4332941 () Bool)

(assert (=> bs!579602 m!4332941))

(assert (=> b!3802039 d!1121536))

(declare-fun b!3802275 () Bool)

(declare-fun e!2349642 () tuple2!39474)

(assert (=> b!3802275 (= e!2349642 (tuple2!39475 Nil!40346 (list!14975 input!678)))))

(declare-fun b!3802276 () Bool)

(declare-datatypes ((tuple2!39480 0))(
  ( (tuple2!39481 (_1!22874 Token!11554) (_2!22874 List!40468)) )
))
(declare-datatypes ((Option!8620 0))(
  ( (None!8619) (Some!8619 (v!38843 tuple2!39480)) )
))
(declare-fun lt!1318400 () Option!8620)

(declare-fun lt!1318399 () tuple2!39474)

(assert (=> b!3802276 (= e!2349642 (tuple2!39475 (Cons!40346 (_1!22874 (v!38843 lt!1318400)) (_1!22871 lt!1318399)) (_2!22871 lt!1318399)))))

(assert (=> b!3802276 (= lt!1318399 (lexList!1569 thiss!11876 rules!1265 (_2!22874 (v!38843 lt!1318400))))))

(declare-fun b!3802278 () Bool)

(declare-fun e!2349644 () Bool)

(declare-fun e!2349643 () Bool)

(assert (=> b!3802278 (= e!2349644 e!2349643)))

(declare-fun res!1539299 () Bool)

(declare-fun lt!1318398 () tuple2!39474)

(assert (=> b!3802278 (= res!1539299 (< (size!30374 (_2!22871 lt!1318398)) (size!30374 (list!14975 input!678))))))

(assert (=> b!3802278 (=> (not res!1539299) (not e!2349643))))

(declare-fun b!3802279 () Bool)

(assert (=> b!3802279 (= e!2349644 (= (_2!22871 lt!1318398) (list!14975 input!678)))))

(declare-fun d!1121538 () Bool)

(assert (=> d!1121538 e!2349644))

(declare-fun c!661251 () Bool)

(declare-fun size!30379 (List!40470) Int)

(assert (=> d!1121538 (= c!661251 (> (size!30379 (_1!22871 lt!1318398)) 0))))

(assert (=> d!1121538 (= lt!1318398 e!2349642)))

(declare-fun c!661252 () Bool)

(assert (=> d!1121538 (= c!661252 ((_ is Some!8619) lt!1318400))))

(declare-fun maxPrefix!3111 (LexerInterface!5797 List!40471 List!40468) Option!8620)

(assert (=> d!1121538 (= lt!1318400 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 input!678)))))

(assert (=> d!1121538 (= (lexList!1569 thiss!11876 rules!1265 (list!14975 input!678)) lt!1318398)))

(declare-fun b!3802277 () Bool)

(assert (=> b!3802277 (= e!2349643 (not (isEmpty!23751 (_1!22871 lt!1318398))))))

(assert (= (and d!1121538 c!661252) b!3802276))

(assert (= (and d!1121538 (not c!661252)) b!3802275))

(assert (= (and d!1121538 c!661251) b!3802278))

(assert (= (and d!1121538 (not c!661251)) b!3802279))

(assert (= (and b!3802278 res!1539299) b!3802277))

(declare-fun m!4333029 () Bool)

(assert (=> b!3802276 m!4333029))

(declare-fun m!4333031 () Bool)

(assert (=> b!3802278 m!4333031))

(assert (=> b!3802278 m!4332427))

(assert (=> b!3802278 m!4332469))

(declare-fun m!4333033 () Bool)

(assert (=> d!1121538 m!4333033))

(assert (=> d!1121538 m!4332427))

(declare-fun m!4333035 () Bool)

(assert (=> d!1121538 m!4333035))

(declare-fun m!4333037 () Bool)

(assert (=> b!3802277 m!4333037))

(assert (=> b!3802039 d!1121538))

(assert (=> b!3802039 d!1121476))

(declare-fun d!1121566 () Bool)

(declare-fun lt!1318401 () Int)

(assert (=> d!1121566 (= lt!1318401 (size!30374 (list!14975 (_2!22868 lt!1318317))))))

(assert (=> d!1121566 (= lt!1318401 (size!30375 (c!661147 (_2!22868 lt!1318317))))))

(assert (=> d!1121566 (= (size!30370 (_2!22868 lt!1318317)) lt!1318401)))

(declare-fun bs!579606 () Bool)

(assert (= bs!579606 d!1121566))

(assert (=> bs!579606 m!4332643))

(assert (=> bs!579606 m!4332643))

(declare-fun m!4333039 () Bool)

(assert (=> bs!579606 m!4333039))

(declare-fun m!4333041 () Bool)

(assert (=> bs!579606 m!4333041))

(assert (=> b!3801999 d!1121566))

(declare-fun d!1121568 () Bool)

(declare-fun lt!1318402 () Int)

(assert (=> d!1121568 (= lt!1318402 (size!30374 (list!14975 treated!13)))))

(assert (=> d!1121568 (= lt!1318402 (size!30375 (c!661147 treated!13)))))

(assert (=> d!1121568 (= (size!30370 treated!13) lt!1318402)))

(declare-fun bs!579607 () Bool)

(assert (= bs!579607 d!1121568))

(assert (=> bs!579607 m!4332425))

(assert (=> bs!579607 m!4332425))

(assert (=> bs!579607 m!4332757))

(declare-fun m!4333043 () Bool)

(assert (=> bs!579607 m!4333043))

(assert (=> b!3801999 d!1121568))

(declare-fun d!1121570 () Bool)

(declare-fun c!661253 () Bool)

(assert (=> d!1121570 (= c!661253 ((_ is Node!12390) (left!31215 (c!661147 totalInput!335))))))

(declare-fun e!2349645 () Bool)

(assert (=> d!1121570 (= (inv!54286 (left!31215 (c!661147 totalInput!335))) e!2349645)))

(declare-fun b!3802280 () Bool)

(assert (=> b!3802280 (= e!2349645 (inv!54296 (left!31215 (c!661147 totalInput!335))))))

(declare-fun b!3802281 () Bool)

(declare-fun e!2349646 () Bool)

(assert (=> b!3802281 (= e!2349645 e!2349646)))

(declare-fun res!1539300 () Bool)

(assert (=> b!3802281 (= res!1539300 (not ((_ is Leaf!19192) (left!31215 (c!661147 totalInput!335)))))))

(assert (=> b!3802281 (=> res!1539300 e!2349646)))

(declare-fun b!3802282 () Bool)

(assert (=> b!3802282 (= e!2349646 (inv!54297 (left!31215 (c!661147 totalInput!335))))))

(assert (= (and d!1121570 c!661253) b!3802280))

(assert (= (and d!1121570 (not c!661253)) b!3802281))

(assert (= (and b!3802281 (not res!1539300)) b!3802282))

(declare-fun m!4333045 () Bool)

(assert (=> b!3802280 m!4333045))

(declare-fun m!4333047 () Bool)

(assert (=> b!3802282 m!4333047))

(assert (=> b!3802095 d!1121570))

(declare-fun d!1121572 () Bool)

(declare-fun c!661254 () Bool)

(assert (=> d!1121572 (= c!661254 ((_ is Node!12390) (right!31545 (c!661147 totalInput!335))))))

(declare-fun e!2349647 () Bool)

(assert (=> d!1121572 (= (inv!54286 (right!31545 (c!661147 totalInput!335))) e!2349647)))

(declare-fun b!3802283 () Bool)

(assert (=> b!3802283 (= e!2349647 (inv!54296 (right!31545 (c!661147 totalInput!335))))))

(declare-fun b!3802284 () Bool)

(declare-fun e!2349648 () Bool)

(assert (=> b!3802284 (= e!2349647 e!2349648)))

(declare-fun res!1539301 () Bool)

(assert (=> b!3802284 (= res!1539301 (not ((_ is Leaf!19192) (right!31545 (c!661147 totalInput!335)))))))

(assert (=> b!3802284 (=> res!1539301 e!2349648)))

(declare-fun b!3802285 () Bool)

(assert (=> b!3802285 (= e!2349648 (inv!54297 (right!31545 (c!661147 totalInput!335))))))

(assert (= (and d!1121572 c!661254) b!3802283))

(assert (= (and d!1121572 (not c!661254)) b!3802284))

(assert (= (and b!3802284 (not res!1539301)) b!3802285))

(declare-fun m!4333049 () Bool)

(assert (=> b!3802283 m!4333049))

(declare-fun m!4333051 () Bool)

(assert (=> b!3802285 m!4333051))

(assert (=> b!3802095 d!1121572))

(declare-fun d!1121574 () Bool)

(declare-fun lt!1318405 () Int)

(assert (=> d!1121574 (= lt!1318405 (size!30379 (list!14976 (_1!22868 lt!1318317))))))

(declare-fun size!30380 (Conc!12391) Int)

(assert (=> d!1121574 (= lt!1318405 (size!30380 (c!661149 (_1!22868 lt!1318317))))))

(assert (=> d!1121574 (= (size!30376 (_1!22868 lt!1318317)) lt!1318405)))

(declare-fun bs!579608 () Bool)

(assert (= bs!579608 d!1121574))

(assert (=> bs!579608 m!4332661))

(assert (=> bs!579608 m!4332661))

(declare-fun m!4333053 () Bool)

(assert (=> bs!579608 m!4333053))

(declare-fun m!4333055 () Bool)

(assert (=> bs!579608 m!4333055))

(assert (=> d!1121392 d!1121574))

(declare-fun lt!1318438 () Option!8618)

(declare-fun e!2349712 () Bool)

(declare-fun b!3802411 () Bool)

(declare-fun get!13376 (Option!8618) tuple2!39476)

(declare-fun get!13377 (Option!8620) tuple2!39480)

(assert (=> b!3802411 (= e!2349712 (= (list!14975 (_2!22872 (get!13376 lt!1318438))) (_2!22874 (get!13377 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 treated!13))))))))

(declare-fun b!3802412 () Bool)

(declare-fun e!2349710 () Bool)

(declare-fun maxPrefixZipper!543 (LexerInterface!5797 List!40471 List!40468) Option!8620)

(assert (=> b!3802412 (= e!2349710 (= (list!14975 (_2!22872 (get!13376 lt!1318438))) (_2!22874 (get!13377 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 treated!13))))))))

(declare-fun b!3802413 () Bool)

(declare-fun e!2349707 () Option!8618)

(declare-fun call!279100 () Option!8618)

(assert (=> b!3802413 (= e!2349707 call!279100)))

(declare-fun b!3802414 () Bool)

(declare-fun e!2349709 () Bool)

(assert (=> b!3802414 (= e!2349709 e!2349710)))

(declare-fun res!1539374 () Bool)

(assert (=> b!3802414 (=> (not res!1539374) (not e!2349710))))

(assert (=> b!3802414 (= res!1539374 (= (_1!22872 (get!13376 lt!1318438)) (_1!22874 (get!13377 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 treated!13))))))))

(declare-fun b!3802416 () Bool)

(declare-fun e!2349711 () Bool)

(declare-fun e!2349708 () Bool)

(assert (=> b!3802416 (= e!2349711 e!2349708)))

(declare-fun res!1539377 () Bool)

(assert (=> b!3802416 (=> res!1539377 e!2349708)))

(declare-fun isDefined!6782 (Option!8618) Bool)

(assert (=> b!3802416 (= res!1539377 (not (isDefined!6782 lt!1318438)))))

(declare-fun bm!279095 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!558 (LexerInterface!5797 Rule!12216 BalanceConc!24374) Option!8618)

(assert (=> bm!279095 (= call!279100 (maxPrefixOneRuleZipperSequence!558 thiss!11876 (h!45767 rules!1265) treated!13))))

(declare-fun b!3802417 () Bool)

(declare-fun lt!1318435 () Option!8618)

(declare-fun lt!1318432 () Option!8618)

(assert (=> b!3802417 (= e!2349707 (ite (and ((_ is None!8617) lt!1318435) ((_ is None!8617) lt!1318432)) None!8617 (ite ((_ is None!8617) lt!1318432) lt!1318435 (ite ((_ is None!8617) lt!1318435) lt!1318432 (ite (>= (size!30369 (_1!22872 (v!38839 lt!1318435))) (size!30369 (_1!22872 (v!38839 lt!1318432)))) lt!1318435 lt!1318432)))))))

(assert (=> b!3802417 (= lt!1318435 call!279100)))

(assert (=> b!3802417 (= lt!1318432 (maxPrefixZipperSequence!1203 thiss!11876 (t!307188 rules!1265) treated!13))))

(declare-fun b!3802418 () Bool)

(declare-fun res!1539373 () Bool)

(assert (=> b!3802418 (=> (not res!1539373) (not e!2349711))))

(assert (=> b!3802418 (= res!1539373 e!2349709)))

(declare-fun res!1539376 () Bool)

(assert (=> b!3802418 (=> res!1539376 e!2349709)))

(assert (=> b!3802418 (= res!1539376 (not (isDefined!6782 lt!1318438)))))

(declare-fun d!1121576 () Bool)

(assert (=> d!1121576 e!2349711))

(declare-fun res!1539378 () Bool)

(assert (=> d!1121576 (=> (not res!1539378) (not e!2349711))))

(declare-fun isDefined!6783 (Option!8620) Bool)

(assert (=> d!1121576 (= res!1539378 (= (isDefined!6782 lt!1318438) (isDefined!6783 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 treated!13)))))))

(assert (=> d!1121576 (= lt!1318438 e!2349707)))

(declare-fun c!661281 () Bool)

(assert (=> d!1121576 (= c!661281 (and ((_ is Cons!40347) rules!1265) ((_ is Nil!40347) (t!307188 rules!1265))))))

(declare-datatypes ((Unit!58092 0))(
  ( (Unit!58093) )
))
(declare-fun lt!1318436 () Unit!58092)

(declare-fun lt!1318433 () Unit!58092)

(assert (=> d!1121576 (= lt!1318436 lt!1318433)))

(declare-fun lt!1318437 () List!40468)

(declare-fun lt!1318434 () List!40468)

(declare-fun isPrefix!3319 (List!40468 List!40468) Bool)

(assert (=> d!1121576 (isPrefix!3319 lt!1318437 lt!1318434)))

(declare-fun lemmaIsPrefixRefl!2104 (List!40468 List!40468) Unit!58092)

(assert (=> d!1121576 (= lt!1318433 (lemmaIsPrefixRefl!2104 lt!1318437 lt!1318434))))

(assert (=> d!1121576 (= lt!1318434 (list!14975 treated!13))))

(assert (=> d!1121576 (= lt!1318437 (list!14975 treated!13))))

(declare-fun rulesValidInductive!2178 (LexerInterface!5797 List!40471) Bool)

(assert (=> d!1121576 (rulesValidInductive!2178 thiss!11876 rules!1265)))

(assert (=> d!1121576 (= (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 treated!13) lt!1318438)))

(declare-fun b!3802415 () Bool)

(assert (=> b!3802415 (= e!2349708 e!2349712)))

(declare-fun res!1539375 () Bool)

(assert (=> b!3802415 (=> (not res!1539375) (not e!2349712))))

(assert (=> b!3802415 (= res!1539375 (= (_1!22872 (get!13376 lt!1318438)) (_1!22874 (get!13377 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 treated!13))))))))

(assert (= (and d!1121576 c!661281) b!3802413))

(assert (= (and d!1121576 (not c!661281)) b!3802417))

(assert (= (or b!3802413 b!3802417) bm!279095))

(assert (= (and d!1121576 res!1539378) b!3802418))

(assert (= (and b!3802418 (not res!1539376)) b!3802414))

(assert (= (and b!3802414 res!1539374) b!3802412))

(assert (= (and b!3802418 res!1539373) b!3802416))

(assert (= (and b!3802416 (not res!1539377)) b!3802415))

(assert (= (and b!3802415 res!1539375) b!3802411))

(declare-fun m!4333121 () Bool)

(assert (=> b!3802417 m!4333121))

(declare-fun m!4333123 () Bool)

(assert (=> b!3802416 m!4333123))

(declare-fun m!4333125 () Bool)

(assert (=> b!3802415 m!4333125))

(assert (=> b!3802415 m!4332425))

(assert (=> b!3802415 m!4332425))

(declare-fun m!4333127 () Bool)

(assert (=> b!3802415 m!4333127))

(assert (=> b!3802415 m!4333127))

(declare-fun m!4333129 () Bool)

(assert (=> b!3802415 m!4333129))

(assert (=> b!3802411 m!4332425))

(assert (=> b!3802411 m!4333125))

(assert (=> b!3802411 m!4333127))

(assert (=> b!3802411 m!4333129))

(assert (=> b!3802411 m!4332425))

(assert (=> b!3802411 m!4333127))

(declare-fun m!4333131 () Bool)

(assert (=> b!3802411 m!4333131))

(assert (=> b!3802414 m!4333125))

(assert (=> b!3802414 m!4332425))

(assert (=> b!3802414 m!4332425))

(declare-fun m!4333133 () Bool)

(assert (=> b!3802414 m!4333133))

(assert (=> b!3802414 m!4333133))

(declare-fun m!4333135 () Bool)

(assert (=> b!3802414 m!4333135))

(assert (=> b!3802418 m!4333123))

(assert (=> b!3802412 m!4332425))

(assert (=> b!3802412 m!4333133))

(assert (=> b!3802412 m!4333135))

(assert (=> b!3802412 m!4333125))

(assert (=> b!3802412 m!4332425))

(assert (=> b!3802412 m!4333133))

(assert (=> b!3802412 m!4333131))

(assert (=> d!1121576 m!4332425))

(assert (=> d!1121576 m!4333123))

(assert (=> d!1121576 m!4332425))

(assert (=> d!1121576 m!4333133))

(declare-fun m!4333139 () Bool)

(assert (=> d!1121576 m!4333139))

(declare-fun m!4333141 () Bool)

(assert (=> d!1121576 m!4333141))

(assert (=> d!1121576 m!4333133))

(declare-fun m!4333145 () Bool)

(assert (=> d!1121576 m!4333145))

(declare-fun m!4333147 () Bool)

(assert (=> d!1121576 m!4333147))

(declare-fun m!4333149 () Bool)

(assert (=> bm!279095 m!4333149))

(assert (=> d!1121392 d!1121576))

(declare-fun d!1121600 () Bool)

(assert (=> d!1121600 (= (list!14975 (_2!22868 lt!1318326)) (list!14979 (c!661147 (_2!22868 lt!1318326))))))

(declare-fun bs!579612 () Bool)

(assert (= bs!579612 d!1121600))

(declare-fun m!4333153 () Bool)

(assert (=> bs!579612 m!4333153))

(assert (=> b!3802041 d!1121600))

(assert (=> b!3802041 d!1121538))

(assert (=> b!3802041 d!1121476))

(declare-fun d!1121604 () Bool)

(assert (=> d!1121604 (= (list!14975 (_2!22868 lt!1318317)) (list!14979 (c!661147 (_2!22868 lt!1318317))))))

(declare-fun bs!579614 () Bool)

(assert (= bs!579614 d!1121604))

(declare-fun m!4333157 () Bool)

(assert (=> bs!579614 m!4333157))

(assert (=> b!3802001 d!1121604))

(assert (=> b!3802001 d!1121474))

(declare-fun b!3802454 () Bool)

(declare-fun res!1539409 () Bool)

(declare-fun e!2349731 () Bool)

(assert (=> b!3802454 (=> (not res!1539409) (not e!2349731))))

(assert (=> b!3802454 (= res!1539409 (isBalanced!3574 (right!31546 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun b!3802455 () Bool)

(assert (=> b!3802455 (= e!2349731 (not (isEmpty!23752 (right!31546 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))))))))

(declare-fun b!3802456 () Bool)

(declare-fun res!1539408 () Bool)

(assert (=> b!3802456 (=> (not res!1539408) (not e!2349731))))

(assert (=> b!3802456 (= res!1539408 (not (isEmpty!23752 (left!31216 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))))))))

(declare-fun d!1121606 () Bool)

(declare-fun res!1539410 () Bool)

(declare-fun e!2349730 () Bool)

(assert (=> d!1121606 (=> res!1539410 e!2349730)))

(assert (=> d!1121606 (= res!1539410 (not ((_ is Node!12391) (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))))))

(assert (=> d!1121606 (= (isBalanced!3574 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))) e!2349730)))

(declare-fun b!3802457 () Bool)

(assert (=> b!3802457 (= e!2349730 e!2349731)))

(declare-fun res!1539406 () Bool)

(assert (=> b!3802457 (=> (not res!1539406) (not e!2349731))))

(assert (=> b!3802457 (= res!1539406 (<= (- 1) (- (height!1790 (left!31216 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))) (height!1790 (right!31546 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))))))))

(declare-fun b!3802458 () Bool)

(declare-fun res!1539407 () Bool)

(assert (=> b!3802458 (=> (not res!1539407) (not e!2349731))))

(assert (=> b!3802458 (= res!1539407 (<= (- (height!1790 (left!31216 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))) (height!1790 (right!31546 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))))) 1))))

(declare-fun b!3802459 () Bool)

(declare-fun res!1539411 () Bool)

(assert (=> b!3802459 (=> (not res!1539411) (not e!2349731))))

(assert (=> b!3802459 (= res!1539411 (isBalanced!3574 (left!31216 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))))))

(assert (= (and d!1121606 (not res!1539410)) b!3802457))

(assert (= (and b!3802457 res!1539406) b!3802458))

(assert (= (and b!3802458 res!1539407) b!3802459))

(assert (= (and b!3802459 res!1539411) b!3802454))

(assert (= (and b!3802454 res!1539409) b!3802456))

(assert (= (and b!3802456 res!1539408) b!3802455))

(declare-fun m!4333193 () Bool)

(assert (=> b!3802457 m!4333193))

(declare-fun m!4333195 () Bool)

(assert (=> b!3802457 m!4333195))

(declare-fun m!4333197 () Bool)

(assert (=> b!3802454 m!4333197))

(declare-fun m!4333199 () Bool)

(assert (=> b!3802459 m!4333199))

(declare-fun m!4333201 () Bool)

(assert (=> b!3802456 m!4333201))

(declare-fun m!4333203 () Bool)

(assert (=> b!3802455 m!4333203))

(assert (=> b!3802458 m!4333193))

(assert (=> b!3802458 m!4333195))

(assert (=> b!3802033 d!1121606))

(declare-fun bm!279129 () Bool)

(declare-fun call!279146 () Conc!12391)

(declare-fun call!279140 () Conc!12391)

(assert (=> bm!279129 (= call!279146 call!279140)))

(declare-fun c!661320 () Bool)

(declare-fun call!279144 () Int)

(declare-fun lt!1318475 () Conc!12391)

(declare-fun bm!279130 () Bool)

(assert (=> bm!279130 (= call!279144 (height!1790 (ite c!661320 lt!1318475 (left!31216 (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun bm!279131 () Bool)

(declare-fun call!279147 () Conc!12391)

(declare-fun call!279145 () Conc!12391)

(assert (=> bm!279131 (= call!279147 call!279145)))

(declare-fun b!3802591 () Bool)

(declare-fun e!2349817 () Conc!12391)

(declare-fun call!279134 () Conc!12391)

(assert (=> b!3802591 (= e!2349817 call!279134)))

(declare-fun bm!279132 () Bool)

(declare-fun call!279138 () Conc!12391)

(assert (=> bm!279132 (= call!279138 call!279140)))

(declare-fun b!3802592 () Bool)

(declare-fun e!2349816 () Conc!12391)

(assert (=> b!3802592 (= e!2349816 e!2349817)))

(declare-fun lt!1318476 () Conc!12391)

(declare-fun call!279135 () Conc!12391)

(assert (=> b!3802592 (= lt!1318476 call!279135)))

(declare-fun c!661318 () Bool)

(declare-fun call!279137 () Int)

(declare-fun call!279136 () Int)

(assert (=> b!3802592 (= c!661318 (= call!279137 (- call!279136 3)))))

(declare-fun b!3802593 () Bool)

(declare-fun res!1539483 () Bool)

(declare-fun e!2349819 () Bool)

(assert (=> b!3802593 (=> (not res!1539483) (not e!2349819))))

(declare-fun lt!1318473 () Conc!12391)

(assert (=> b!3802593 (= res!1539483 (>= (height!1790 lt!1318473) (max!0 (height!1790 (c!661149 acc!335)) (height!1790 (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun bm!279134 () Bool)

(assert (=> bm!279134 (= call!279136 (height!1790 (ite c!661320 (right!31546 (c!661149 acc!335)) (c!661149 (_1!22868 lt!1318280)))))))

(declare-fun b!3802594 () Bool)

(declare-fun e!2349814 () Conc!12391)

(declare-fun call!279148 () Conc!12391)

(assert (=> b!3802594 (= e!2349814 call!279148)))

(declare-fun b!3802595 () Bool)

(declare-fun e!2349815 () Conc!12391)

(assert (=> b!3802595 (= e!2349815 call!279146)))

(declare-fun bm!279135 () Bool)

(assert (=> bm!279135 (= call!279140 call!279148)))

(declare-fun b!3802596 () Bool)

(assert (=> b!3802596 (= e!2349816 call!279138)))

(declare-fun bm!279136 () Bool)

(declare-fun call!279143 () Conc!12391)

(assert (=> bm!279136 (= call!279135 call!279143)))

(declare-fun b!3802597 () Bool)

(declare-fun c!661319 () Bool)

(declare-fun call!279142 () Int)

(assert (=> b!3802597 (= c!661319 (>= call!279142 call!279144))))

(declare-fun e!2349813 () Conc!12391)

(assert (=> b!3802597 (= e!2349813 e!2349816)))

(declare-fun b!3802598 () Bool)

(declare-fun res!1539480 () Bool)

(assert (=> b!3802598 (=> (not res!1539480) (not e!2349819))))

(assert (=> b!3802598 (= res!1539480 (<= (height!1790 lt!1318473) (+ (max!0 (height!1790 (c!661149 acc!335)) (height!1790 (c!661149 (_1!22868 lt!1318280)))) 1)))))

(declare-fun bm!279137 () Bool)

(declare-fun call!279139 () Conc!12391)

(declare-fun call!279149 () Conc!12391)

(assert (=> bm!279137 (= call!279139 call!279149)))

(declare-fun b!3802599 () Bool)

(declare-fun e!2349818 () Bool)

(assert (=> b!3802599 (= e!2349818 (isBalanced!3574 (c!661149 (_1!22868 lt!1318280))))))

(declare-fun b!3802600 () Bool)

(declare-fun c!661317 () Bool)

(assert (=> b!3802600 (= c!661317 (>= call!279142 call!279136))))

(declare-fun e!2349811 () Conc!12391)

(assert (=> b!3802600 (= e!2349813 e!2349811)))

(declare-fun bm!279138 () Bool)

(assert (=> bm!279138 (= call!279145 call!279149)))

(declare-fun b!3802601 () Bool)

(assert (=> b!3802601 (= e!2349815 call!279146)))

(declare-fun b!3802602 () Bool)

(assert (=> b!3802602 (= e!2349811 e!2349815)))

(declare-fun call!279141 () Conc!12391)

(assert (=> b!3802602 (= lt!1318475 call!279141)))

(declare-fun c!661324 () Bool)

(assert (=> b!3802602 (= c!661324 (= call!279144 (- call!279137 3)))))

(declare-fun b!3802603 () Bool)

(assert (=> b!3802603 (= e!2349819 (= (list!14980 lt!1318473) (++!10122 (list!14980 (c!661149 acc!335)) (list!14980 (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun bm!279139 () Bool)

(declare-fun c!661321 () Bool)

(declare-fun <>!348 (Conc!12391 Conc!12391) Conc!12391)

(assert (=> bm!279139 (= call!279148 (<>!348 (ite c!661321 (c!661149 acc!335) (ite c!661320 (ite c!661324 (left!31216 (c!661149 acc!335)) call!279147) (ite c!661319 call!279135 (ite c!661318 call!279139 lt!1318476)))) (ite c!661321 (c!661149 (_1!22868 lt!1318280)) (ite c!661320 (ite c!661324 call!279147 lt!1318475) (ite (or c!661319 c!661318) (right!31546 (c!661149 (_1!22868 lt!1318280))) call!279139)))))))

(declare-fun bm!279140 () Bool)

(assert (=> bm!279140 (= call!279149 (<>!348 (ite c!661320 (ite c!661317 (left!31216 (c!661149 acc!335)) (ite c!661324 (left!31216 (right!31546 (c!661149 acc!335))) (left!31216 (c!661149 acc!335)))) (ite c!661318 lt!1318476 (right!31546 (left!31216 (c!661149 (_1!22868 lt!1318280)))))) (ite c!661320 (ite c!661317 call!279141 (ite c!661324 lt!1318475 (left!31216 (right!31546 (c!661149 acc!335))))) (ite c!661318 (right!31546 (left!31216 (c!661149 (_1!22868 lt!1318280)))) (right!31546 (c!661149 (_1!22868 lt!1318280)))))))))

(declare-fun d!1121620 () Bool)

(assert (=> d!1121620 e!2349819))

(declare-fun res!1539479 () Bool)

(assert (=> d!1121620 (=> (not res!1539479) (not e!2349819))))

(assert (=> d!1121620 (= res!1539479 (appendAssocInst!857 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))))))

(declare-fun e!2349812 () Conc!12391)

(assert (=> d!1121620 (= lt!1318473 e!2349812)))

(declare-fun c!661323 () Bool)

(assert (=> d!1121620 (= c!661323 (= (c!661149 acc!335) Empty!12391))))

(assert (=> d!1121620 e!2349818))

(declare-fun res!1539482 () Bool)

(assert (=> d!1121620 (=> (not res!1539482) (not e!2349818))))

(assert (=> d!1121620 (= res!1539482 (isBalanced!3574 (c!661149 acc!335)))))

(assert (=> d!1121620 (= (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))) lt!1318473)))

(declare-fun bm!279133 () Bool)

(assert (=> bm!279133 (= call!279142 (height!1790 (ite c!661320 (left!31216 (c!661149 acc!335)) (right!31546 (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun b!3802604 () Bool)

(assert (=> b!3802604 (= e!2349814 e!2349813)))

(declare-fun lt!1318474 () Int)

(assert (=> b!3802604 (= c!661320 (< lt!1318474 (- 1)))))

(declare-fun bm!279141 () Bool)

(assert (=> bm!279141 (= call!279141 call!279143)))

(declare-fun b!3802605 () Bool)

(declare-fun e!2349820 () Conc!12391)

(assert (=> b!3802605 (= e!2349820 (c!661149 acc!335))))

(declare-fun b!3802606 () Bool)

(assert (=> b!3802606 (= e!2349812 (c!661149 (_1!22868 lt!1318280)))))

(declare-fun bm!279142 () Bool)

(assert (=> bm!279142 (= call!279134 call!279138)))

(declare-fun b!3802607 () Bool)

(assert (=> b!3802607 (= e!2349811 call!279145)))

(declare-fun bm!279143 () Bool)

(assert (=> bm!279143 (= call!279137 (height!1790 (ite c!661320 (c!661149 acc!335) lt!1318476)))))

(declare-fun b!3802608 () Bool)

(declare-fun res!1539481 () Bool)

(assert (=> b!3802608 (=> (not res!1539481) (not e!2349819))))

(assert (=> b!3802608 (= res!1539481 (isBalanced!3574 lt!1318473))))

(declare-fun b!3802609 () Bool)

(assert (=> b!3802609 (= e!2349812 e!2349820)))

(declare-fun c!661322 () Bool)

(assert (=> b!3802609 (= c!661322 (= (c!661149 (_1!22868 lt!1318280)) Empty!12391))))

(declare-fun b!3802610 () Bool)

(assert (=> b!3802610 (= c!661321 (and (<= (- 1) lt!1318474) (<= lt!1318474 1)))))

(assert (=> b!3802610 (= lt!1318474 (- (height!1790 (c!661149 (_1!22868 lt!1318280))) (height!1790 (c!661149 acc!335))))))

(assert (=> b!3802610 (= e!2349820 e!2349814)))

(declare-fun bm!279144 () Bool)

(assert (=> bm!279144 (= call!279143 (++!10121 (ite c!661320 (ite c!661317 (right!31546 (c!661149 acc!335)) (right!31546 (right!31546 (c!661149 acc!335)))) (c!661149 acc!335)) (ite c!661320 (c!661149 (_1!22868 lt!1318280)) (ite c!661319 (left!31216 (c!661149 (_1!22868 lt!1318280))) (left!31216 (left!31216 (c!661149 (_1!22868 lt!1318280))))))))))

(declare-fun b!3802611 () Bool)

(assert (=> b!3802611 (= e!2349817 call!279134)))

(assert (= (and d!1121620 res!1539482) b!3802599))

(assert (= (and d!1121620 c!661323) b!3802606))

(assert (= (and d!1121620 (not c!661323)) b!3802609))

(assert (= (and b!3802609 c!661322) b!3802605))

(assert (= (and b!3802609 (not c!661322)) b!3802610))

(assert (= (and b!3802610 c!661321) b!3802594))

(assert (= (and b!3802610 (not c!661321)) b!3802604))

(assert (= (and b!3802604 c!661320) b!3802600))

(assert (= (and b!3802604 (not c!661320)) b!3802597))

(assert (= (and b!3802600 c!661317) b!3802607))

(assert (= (and b!3802600 (not c!661317)) b!3802602))

(assert (= (and b!3802602 c!661324) b!3802601))

(assert (= (and b!3802602 (not c!661324)) b!3802595))

(assert (= (or b!3802601 b!3802595) bm!279131))

(assert (= (or b!3802601 b!3802595) bm!279129))

(assert (= (or b!3802607 b!3802602) bm!279141))

(assert (= (or b!3802607 bm!279131) bm!279138))

(assert (= (and b!3802597 c!661319) b!3802596))

(assert (= (and b!3802597 (not c!661319)) b!3802592))

(assert (= (and b!3802592 c!661318) b!3802611))

(assert (= (and b!3802592 (not c!661318)) b!3802591))

(assert (= (or b!3802611 b!3802591) bm!279137))

(assert (= (or b!3802611 b!3802591) bm!279142))

(assert (= (or b!3802596 b!3802592) bm!279136))

(assert (= (or b!3802596 bm!279142) bm!279132))

(assert (= (or b!3802600 b!3802597) bm!279133))

(assert (= (or b!3802600 b!3802592) bm!279134))

(assert (= (or b!3802602 b!3802597) bm!279130))

(assert (= (or bm!279141 bm!279136) bm!279144))

(assert (= (or bm!279129 bm!279132) bm!279135))

(assert (= (or b!3802602 b!3802592) bm!279143))

(assert (= (or bm!279138 bm!279137) bm!279140))

(assert (= (or b!3802594 bm!279135) bm!279139))

(assert (= (and d!1121620 res!1539479) b!3802608))

(assert (= (and b!3802608 res!1539481) b!3802598))

(assert (= (and b!3802598 res!1539480) b!3802593))

(assert (= (and b!3802593 res!1539483) b!3802603))

(declare-fun m!4333365 () Bool)

(assert (=> bm!279130 m!4333365))

(declare-fun m!4333367 () Bool)

(assert (=> bm!279134 m!4333367))

(declare-fun m!4333369 () Bool)

(assert (=> b!3802608 m!4333369))

(assert (=> b!3802610 m!4332717))

(assert (=> b!3802610 m!4332719))

(declare-fun m!4333373 () Bool)

(assert (=> b!3802599 m!4333373))

(declare-fun m!4333375 () Bool)

(assert (=> b!3802603 m!4333375))

(assert (=> b!3802603 m!4332475))

(declare-fun m!4333377 () Bool)

(assert (=> b!3802603 m!4333377))

(assert (=> b!3802603 m!4332475))

(assert (=> b!3802603 m!4333377))

(declare-fun m!4333379 () Bool)

(assert (=> b!3802603 m!4333379))

(declare-fun m!4333385 () Bool)

(assert (=> bm!279140 m!4333385))

(declare-fun m!4333387 () Bool)

(assert (=> bm!279133 m!4333387))

(declare-fun m!4333389 () Bool)

(assert (=> b!3802593 m!4333389))

(assert (=> b!3802593 m!4332719))

(assert (=> b!3802593 m!4332717))

(assert (=> b!3802593 m!4332719))

(assert (=> b!3802593 m!4332717))

(assert (=> b!3802593 m!4332721))

(declare-fun m!4333391 () Bool)

(assert (=> bm!279139 m!4333391))

(declare-fun m!4333393 () Bool)

(assert (=> bm!279143 m!4333393))

(assert (=> b!3802598 m!4333389))

(assert (=> b!3802598 m!4332719))

(assert (=> b!3802598 m!4332717))

(assert (=> b!3802598 m!4332719))

(assert (=> b!3802598 m!4332717))

(assert (=> b!3802598 m!4332721))

(declare-fun m!4333395 () Bool)

(assert (=> bm!279144 m!4333395))

(assert (=> d!1121620 m!4332725))

(assert (=> d!1121620 m!4332673))

(assert (=> b!3802033 d!1121620))

(declare-fun d!1121672 () Bool)

(declare-fun res!1539510 () Bool)

(declare-fun e!2349840 () Bool)

(assert (=> d!1121672 (=> (not res!1539510) (not e!2349840))))

(declare-fun list!14983 (IArray!24785) List!40468)

(assert (=> d!1121672 (= res!1539510 (<= (size!30374 (list!14983 (xs!15652 (c!661147 totalInput!335)))) 512))))

(assert (=> d!1121672 (= (inv!54297 (c!661147 totalInput!335)) e!2349840)))

(declare-fun b!3802648 () Bool)

(declare-fun res!1539511 () Bool)

(assert (=> b!3802648 (=> (not res!1539511) (not e!2349840))))

(assert (=> b!3802648 (= res!1539511 (= (csize!25011 (c!661147 totalInput!335)) (size!30374 (list!14983 (xs!15652 (c!661147 totalInput!335))))))))

(declare-fun b!3802649 () Bool)

(assert (=> b!3802649 (= e!2349840 (and (> (csize!25011 (c!661147 totalInput!335)) 0) (<= (csize!25011 (c!661147 totalInput!335)) 512)))))

(assert (= (and d!1121672 res!1539510) b!3802648))

(assert (= (and b!3802648 res!1539511) b!3802649))

(declare-fun m!4333427 () Bool)

(assert (=> d!1121672 m!4333427))

(assert (=> d!1121672 m!4333427))

(declare-fun m!4333429 () Bool)

(assert (=> d!1121672 m!4333429))

(assert (=> b!3802648 m!4333427))

(assert (=> b!3802648 m!4333427))

(assert (=> b!3802648 m!4333429))

(assert (=> b!3801848 d!1121672))

(declare-fun d!1121682 () Bool)

(declare-fun e!2349869 () Bool)

(assert (=> d!1121682 e!2349869))

(declare-fun res!1539525 () Bool)

(assert (=> d!1121682 (=> (not res!1539525) (not e!2349869))))

(declare-fun prepend!1352 (Conc!12391 Token!11554) Conc!12391)

(assert (=> d!1121682 (= res!1539525 (isBalanced!3574 (prepend!1352 (c!661149 (_1!22868 lt!1318324)) (_1!22872 (v!38839 lt!1318325)))))))

(declare-fun lt!1318493 () BalanceConc!24376)

(assert (=> d!1121682 (= lt!1318493 (BalanceConc!24377 (prepend!1352 (c!661149 (_1!22868 lt!1318324)) (_1!22872 (v!38839 lt!1318325)))))))

(assert (=> d!1121682 (= (prepend!1350 (_1!22868 lt!1318324) (_1!22872 (v!38839 lt!1318325))) lt!1318493)))

(declare-fun b!3802692 () Bool)

(assert (=> b!3802692 (= e!2349869 (= (list!14976 lt!1318493) (Cons!40346 (_1!22872 (v!38839 lt!1318325)) (list!14976 (_1!22868 lt!1318324)))))))

(assert (= (and d!1121682 res!1539525) b!3802692))

(declare-fun m!4333507 () Bool)

(assert (=> d!1121682 m!4333507))

(assert (=> d!1121682 m!4333507))

(declare-fun m!4333509 () Bool)

(assert (=> d!1121682 m!4333509))

(declare-fun m!4333513 () Bool)

(assert (=> b!3802692 m!4333513))

(declare-fun m!4333517 () Bool)

(assert (=> b!3802692 m!4333517))

(assert (=> b!3802043 d!1121682))

(declare-fun b!3802701 () Bool)

(declare-fun e!2349874 () Bool)

(declare-fun lt!1318496 () tuple2!39468)

(assert (=> b!3802701 (= e!2349874 (not (isEmpty!23748 (_1!22868 lt!1318496))))))

(declare-fun b!3802702 () Bool)

(declare-fun e!2349875 () tuple2!39468)

(assert (=> b!3802702 (= e!2349875 (tuple2!39469 (BalanceConc!24377 Empty!12391) (_2!22872 (v!38839 lt!1318325))))))

(declare-fun b!3802703 () Bool)

(declare-fun res!1539527 () Bool)

(declare-fun e!2349877 () Bool)

(assert (=> b!3802703 (=> (not res!1539527) (not e!2349877))))

(assert (=> b!3802703 (= res!1539527 (= (list!14976 (_1!22868 lt!1318496)) (_1!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 (_2!22872 (v!38839 lt!1318325)))))))))

(declare-fun d!1121696 () Bool)

(assert (=> d!1121696 e!2349877))

(declare-fun res!1539528 () Bool)

(assert (=> d!1121696 (=> (not res!1539528) (not e!2349877))))

(declare-fun e!2349876 () Bool)

(assert (=> d!1121696 (= res!1539528 e!2349876)))

(declare-fun c!661338 () Bool)

(assert (=> d!1121696 (= c!661338 (> (size!30376 (_1!22868 lt!1318496)) 0))))

(assert (=> d!1121696 (= lt!1318496 e!2349875)))

(declare-fun c!661337 () Bool)

(declare-fun lt!1318495 () Option!8618)

(assert (=> d!1121696 (= c!661337 ((_ is Some!8617) lt!1318495))))

(assert (=> d!1121696 (= lt!1318495 (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318325))))))

(assert (=> d!1121696 (= (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318325))) lt!1318496)))

(declare-fun b!3802704 () Bool)

(assert (=> b!3802704 (= e!2349876 e!2349874)))

(declare-fun res!1539526 () Bool)

(assert (=> b!3802704 (= res!1539526 (< (size!30370 (_2!22868 lt!1318496)) (size!30370 (_2!22872 (v!38839 lt!1318325)))))))

(assert (=> b!3802704 (=> (not res!1539526) (not e!2349874))))

(declare-fun b!3802705 () Bool)

(assert (=> b!3802705 (= e!2349877 (= (list!14975 (_2!22868 lt!1318496)) (_2!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 (_2!22872 (v!38839 lt!1318325)))))))))

(declare-fun b!3802706 () Bool)

(assert (=> b!3802706 (= e!2349876 (= (list!14975 (_2!22868 lt!1318496)) (list!14975 (_2!22872 (v!38839 lt!1318325)))))))

(declare-fun b!3802707 () Bool)

(declare-fun lt!1318494 () tuple2!39468)

(assert (=> b!3802707 (= e!2349875 (tuple2!39469 (prepend!1350 (_1!22868 lt!1318494) (_1!22872 (v!38839 lt!1318495))) (_2!22868 lt!1318494)))))

(assert (=> b!3802707 (= lt!1318494 (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318495))))))

(assert (= (and d!1121696 c!661337) b!3802707))

(assert (= (and d!1121696 (not c!661337)) b!3802702))

(assert (= (and d!1121696 c!661338) b!3802704))

(assert (= (and d!1121696 (not c!661338)) b!3802706))

(assert (= (and b!3802704 res!1539526) b!3802701))

(assert (= (and d!1121696 res!1539528) b!3802703))

(assert (= (and b!3802703 res!1539527) b!3802705))

(declare-fun m!4333519 () Bool)

(assert (=> b!3802705 m!4333519))

(declare-fun m!4333521 () Bool)

(assert (=> b!3802705 m!4333521))

(assert (=> b!3802705 m!4333521))

(declare-fun m!4333523 () Bool)

(assert (=> b!3802705 m!4333523))

(assert (=> b!3802706 m!4333519))

(assert (=> b!3802706 m!4333521))

(declare-fun m!4333525 () Bool)

(assert (=> d!1121696 m!4333525))

(declare-fun m!4333527 () Bool)

(assert (=> d!1121696 m!4333527))

(declare-fun m!4333529 () Bool)

(assert (=> b!3802701 m!4333529))

(declare-fun m!4333531 () Bool)

(assert (=> b!3802707 m!4333531))

(declare-fun m!4333533 () Bool)

(assert (=> b!3802707 m!4333533))

(declare-fun m!4333535 () Bool)

(assert (=> b!3802704 m!4333535))

(declare-fun m!4333537 () Bool)

(assert (=> b!3802704 m!4333537))

(declare-fun m!4333539 () Bool)

(assert (=> b!3802703 m!4333539))

(assert (=> b!3802703 m!4333521))

(assert (=> b!3802703 m!4333521))

(assert (=> b!3802703 m!4333523))

(assert (=> b!3802043 d!1121696))

(declare-fun d!1121698 () Bool)

(assert (=> d!1121698 (= (max!0 (height!1790 (c!661149 acc!335)) (height!1790 (c!661149 (_1!22868 lt!1318280)))) (ite (< (height!1790 (c!661149 acc!335)) (height!1790 (c!661149 (_1!22868 lt!1318280)))) (height!1790 (c!661149 (_1!22868 lt!1318280))) (height!1790 (c!661149 acc!335))))))

(assert (=> b!3802035 d!1121698))

(declare-fun d!1121700 () Bool)

(assert (=> d!1121700 (= (height!1790 (c!661149 (_1!22868 lt!1318280))) (ite ((_ is Empty!12391) (c!661149 (_1!22868 lt!1318280))) 0 (ite ((_ is Leaf!19193) (c!661149 (_1!22868 lt!1318280))) 1 (cheight!12602 (c!661149 (_1!22868 lt!1318280))))))))

(assert (=> b!3802035 d!1121700))

(declare-fun d!1121702 () Bool)

(assert (=> d!1121702 (= (height!1790 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))) (ite ((_ is Empty!12391) (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))) 0 (ite ((_ is Leaf!19193) (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))) 1 (cheight!12602 (++!10121 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280)))))))))

(assert (=> b!3802035 d!1121702))

(assert (=> b!3802035 d!1121620))

(declare-fun d!1121704 () Bool)

(assert (=> d!1121704 (= (height!1790 (c!661149 acc!335)) (ite ((_ is Empty!12391) (c!661149 acc!335)) 0 (ite ((_ is Leaf!19193) (c!661149 acc!335)) 1 (cheight!12602 (c!661149 acc!335)))))))

(assert (=> b!3802035 d!1121704))

(assert (=> b!3801810 d!1121362))

(declare-fun b!3802767 () Bool)

(declare-fun e!2349914 () Bool)

(declare-fun e!2349915 () Bool)

(assert (=> b!3802767 (= e!2349914 e!2349915)))

(declare-fun res!1539543 () Bool)

(assert (=> b!3802767 (=> (not res!1539543) (not e!2349915))))

(assert (=> b!3802767 (= res!1539543 (<= (- 1) (- (height!1791 (left!31215 (c!661147 treated!13))) (height!1791 (right!31545 (c!661147 treated!13))))))))

(declare-fun b!3802768 () Bool)

(declare-fun isEmpty!23754 (Conc!12390) Bool)

(assert (=> b!3802768 (= e!2349915 (not (isEmpty!23754 (right!31545 (c!661147 treated!13)))))))

(declare-fun b!3802769 () Bool)

(declare-fun res!1539541 () Bool)

(assert (=> b!3802769 (=> (not res!1539541) (not e!2349915))))

(assert (=> b!3802769 (= res!1539541 (isBalanced!3573 (right!31545 (c!661147 treated!13))))))

(declare-fun b!3802770 () Bool)

(declare-fun res!1539542 () Bool)

(assert (=> b!3802770 (=> (not res!1539542) (not e!2349915))))

(assert (=> b!3802770 (= res!1539542 (not (isEmpty!23754 (left!31215 (c!661147 treated!13)))))))

(declare-fun b!3802771 () Bool)

(declare-fun res!1539544 () Bool)

(assert (=> b!3802771 (=> (not res!1539544) (not e!2349915))))

(assert (=> b!3802771 (= res!1539544 (<= (- (height!1791 (left!31215 (c!661147 treated!13))) (height!1791 (right!31545 (c!661147 treated!13)))) 1))))

(declare-fun d!1121706 () Bool)

(declare-fun res!1539545 () Bool)

(assert (=> d!1121706 (=> res!1539545 e!2349914)))

(assert (=> d!1121706 (= res!1539545 (not ((_ is Node!12390) (c!661147 treated!13))))))

(assert (=> d!1121706 (= (isBalanced!3573 (c!661147 treated!13)) e!2349914)))

(declare-fun b!3802772 () Bool)

(declare-fun res!1539546 () Bool)

(assert (=> b!3802772 (=> (not res!1539546) (not e!2349915))))

(assert (=> b!3802772 (= res!1539546 (isBalanced!3573 (left!31215 (c!661147 treated!13))))))

(assert (= (and d!1121706 (not res!1539545)) b!3802767))

(assert (= (and b!3802767 res!1539543) b!3802771))

(assert (= (and b!3802771 res!1539544) b!3802772))

(assert (= (and b!3802772 res!1539546) b!3802769))

(assert (= (and b!3802769 res!1539541) b!3802770))

(assert (= (and b!3802770 res!1539542) b!3802768))

(declare-fun m!4333573 () Bool)

(assert (=> b!3802772 m!4333573))

(declare-fun m!4333575 () Bool)

(assert (=> b!3802770 m!4333575))

(declare-fun m!4333577 () Bool)

(assert (=> b!3802769 m!4333577))

(declare-fun m!4333579 () Bool)

(assert (=> b!3802771 m!4333579))

(declare-fun m!4333581 () Bool)

(assert (=> b!3802771 m!4333581))

(assert (=> b!3802767 m!4333579))

(assert (=> b!3802767 m!4333581))

(declare-fun m!4333583 () Bool)

(assert (=> b!3802768 m!4333583))

(assert (=> d!1121452 d!1121706))

(declare-fun d!1121708 () Bool)

(declare-fun lt!1318497 () Int)

(assert (=> d!1121708 (= lt!1318497 (size!30379 (list!14976 (_1!22868 lt!1318326))))))

(assert (=> d!1121708 (= lt!1318497 (size!30380 (c!661149 (_1!22868 lt!1318326))))))

(assert (=> d!1121708 (= (size!30376 (_1!22868 lt!1318326)) lt!1318497)))

(declare-fun bs!579624 () Bool)

(assert (= bs!579624 d!1121708))

(assert (=> bs!579624 m!4332743))

(assert (=> bs!579624 m!4332743))

(declare-fun m!4333585 () Bool)

(assert (=> bs!579624 m!4333585))

(declare-fun m!4333587 () Bool)

(assert (=> bs!579624 m!4333587))

(assert (=> d!1121468 d!1121708))

(declare-fun b!3802773 () Bool)

(declare-fun e!2349921 () Bool)

(declare-fun lt!1318504 () Option!8618)

(assert (=> b!3802773 (= e!2349921 (= (list!14975 (_2!22872 (get!13376 lt!1318504))) (_2!22874 (get!13377 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 input!678))))))))

(declare-fun e!2349919 () Bool)

(declare-fun b!3802774 () Bool)

(assert (=> b!3802774 (= e!2349919 (= (list!14975 (_2!22872 (get!13376 lt!1318504))) (_2!22874 (get!13377 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 input!678))))))))

(declare-fun b!3802775 () Bool)

(declare-fun e!2349916 () Option!8618)

(declare-fun call!279151 () Option!8618)

(assert (=> b!3802775 (= e!2349916 call!279151)))

(declare-fun b!3802776 () Bool)

(declare-fun e!2349918 () Bool)

(assert (=> b!3802776 (= e!2349918 e!2349919)))

(declare-fun res!1539548 () Bool)

(assert (=> b!3802776 (=> (not res!1539548) (not e!2349919))))

(assert (=> b!3802776 (= res!1539548 (= (_1!22872 (get!13376 lt!1318504)) (_1!22874 (get!13377 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 input!678))))))))

(declare-fun b!3802778 () Bool)

(declare-fun e!2349920 () Bool)

(declare-fun e!2349917 () Bool)

(assert (=> b!3802778 (= e!2349920 e!2349917)))

(declare-fun res!1539551 () Bool)

(assert (=> b!3802778 (=> res!1539551 e!2349917)))

(assert (=> b!3802778 (= res!1539551 (not (isDefined!6782 lt!1318504)))))

(declare-fun bm!279146 () Bool)

(assert (=> bm!279146 (= call!279151 (maxPrefixOneRuleZipperSequence!558 thiss!11876 (h!45767 rules!1265) input!678))))

(declare-fun b!3802779 () Bool)

(declare-fun lt!1318501 () Option!8618)

(declare-fun lt!1318498 () Option!8618)

(assert (=> b!3802779 (= e!2349916 (ite (and ((_ is None!8617) lt!1318501) ((_ is None!8617) lt!1318498)) None!8617 (ite ((_ is None!8617) lt!1318498) lt!1318501 (ite ((_ is None!8617) lt!1318501) lt!1318498 (ite (>= (size!30369 (_1!22872 (v!38839 lt!1318501))) (size!30369 (_1!22872 (v!38839 lt!1318498)))) lt!1318501 lt!1318498)))))))

(assert (=> b!3802779 (= lt!1318501 call!279151)))

(assert (=> b!3802779 (= lt!1318498 (maxPrefixZipperSequence!1203 thiss!11876 (t!307188 rules!1265) input!678))))

(declare-fun b!3802780 () Bool)

(declare-fun res!1539547 () Bool)

(assert (=> b!3802780 (=> (not res!1539547) (not e!2349920))))

(assert (=> b!3802780 (= res!1539547 e!2349918)))

(declare-fun res!1539550 () Bool)

(assert (=> b!3802780 (=> res!1539550 e!2349918)))

(assert (=> b!3802780 (= res!1539550 (not (isDefined!6782 lt!1318504)))))

(declare-fun d!1121710 () Bool)

(assert (=> d!1121710 e!2349920))

(declare-fun res!1539552 () Bool)

(assert (=> d!1121710 (=> (not res!1539552) (not e!2349920))))

(assert (=> d!1121710 (= res!1539552 (= (isDefined!6782 lt!1318504) (isDefined!6783 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 input!678)))))))

(assert (=> d!1121710 (= lt!1318504 e!2349916)))

(declare-fun c!661339 () Bool)

(assert (=> d!1121710 (= c!661339 (and ((_ is Cons!40347) rules!1265) ((_ is Nil!40347) (t!307188 rules!1265))))))

(declare-fun lt!1318502 () Unit!58092)

(declare-fun lt!1318499 () Unit!58092)

(assert (=> d!1121710 (= lt!1318502 lt!1318499)))

(declare-fun lt!1318503 () List!40468)

(declare-fun lt!1318500 () List!40468)

(assert (=> d!1121710 (isPrefix!3319 lt!1318503 lt!1318500)))

(assert (=> d!1121710 (= lt!1318499 (lemmaIsPrefixRefl!2104 lt!1318503 lt!1318500))))

(assert (=> d!1121710 (= lt!1318500 (list!14975 input!678))))

(assert (=> d!1121710 (= lt!1318503 (list!14975 input!678))))

(assert (=> d!1121710 (rulesValidInductive!2178 thiss!11876 rules!1265)))

(assert (=> d!1121710 (= (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 input!678) lt!1318504)))

(declare-fun b!3802777 () Bool)

(assert (=> b!3802777 (= e!2349917 e!2349921)))

(declare-fun res!1539549 () Bool)

(assert (=> b!3802777 (=> (not res!1539549) (not e!2349921))))

(assert (=> b!3802777 (= res!1539549 (= (_1!22872 (get!13376 lt!1318504)) (_1!22874 (get!13377 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 input!678))))))))

(assert (= (and d!1121710 c!661339) b!3802775))

(assert (= (and d!1121710 (not c!661339)) b!3802779))

(assert (= (or b!3802775 b!3802779) bm!279146))

(assert (= (and d!1121710 res!1539552) b!3802780))

(assert (= (and b!3802780 (not res!1539550)) b!3802776))

(assert (= (and b!3802776 res!1539548) b!3802774))

(assert (= (and b!3802780 res!1539547) b!3802778))

(assert (= (and b!3802778 (not res!1539551)) b!3802777))

(assert (= (and b!3802777 res!1539549) b!3802773))

(declare-fun m!4333589 () Bool)

(assert (=> b!3802779 m!4333589))

(declare-fun m!4333591 () Bool)

(assert (=> b!3802778 m!4333591))

(declare-fun m!4333593 () Bool)

(assert (=> b!3802777 m!4333593))

(assert (=> b!3802777 m!4332427))

(assert (=> b!3802777 m!4332427))

(assert (=> b!3802777 m!4333035))

(assert (=> b!3802777 m!4333035))

(declare-fun m!4333595 () Bool)

(assert (=> b!3802777 m!4333595))

(assert (=> b!3802773 m!4332427))

(assert (=> b!3802773 m!4333593))

(assert (=> b!3802773 m!4333035))

(assert (=> b!3802773 m!4333595))

(assert (=> b!3802773 m!4332427))

(assert (=> b!3802773 m!4333035))

(declare-fun m!4333597 () Bool)

(assert (=> b!3802773 m!4333597))

(assert (=> b!3802776 m!4333593))

(assert (=> b!3802776 m!4332427))

(assert (=> b!3802776 m!4332427))

(declare-fun m!4333599 () Bool)

(assert (=> b!3802776 m!4333599))

(assert (=> b!3802776 m!4333599))

(declare-fun m!4333601 () Bool)

(assert (=> b!3802776 m!4333601))

(assert (=> b!3802780 m!4333591))

(assert (=> b!3802774 m!4332427))

(assert (=> b!3802774 m!4333599))

(assert (=> b!3802774 m!4333601))

(assert (=> b!3802774 m!4333593))

(assert (=> b!3802774 m!4332427))

(assert (=> b!3802774 m!4333599))

(assert (=> b!3802774 m!4333597))

(assert (=> d!1121710 m!4332427))

(assert (=> d!1121710 m!4333591))

(assert (=> d!1121710 m!4332427))

(assert (=> d!1121710 m!4333599))

(declare-fun m!4333603 () Bool)

(assert (=> d!1121710 m!4333603))

(declare-fun m!4333605 () Bool)

(assert (=> d!1121710 m!4333605))

(assert (=> d!1121710 m!4333599))

(declare-fun m!4333607 () Bool)

(assert (=> d!1121710 m!4333607))

(assert (=> d!1121710 m!4333147))

(declare-fun m!4333609 () Bool)

(assert (=> bm!279146 m!4333609))

(assert (=> d!1121468 d!1121710))

(declare-fun d!1121712 () Bool)

(declare-fun lt!1318505 () Int)

(assert (=> d!1121712 (= lt!1318505 (size!30374 (list!14975 (_2!22868 lt!1318320))))))

(assert (=> d!1121712 (= lt!1318505 (size!30375 (c!661147 (_2!22868 lt!1318320))))))

(assert (=> d!1121712 (= (size!30370 (_2!22868 lt!1318320)) lt!1318505)))

(declare-fun bs!579625 () Bool)

(assert (= bs!579625 d!1121712))

(assert (=> bs!579625 m!4332683))

(assert (=> bs!579625 m!4332683))

(declare-fun m!4333611 () Bool)

(assert (=> bs!579625 m!4333611))

(declare-fun m!4333613 () Bool)

(assert (=> bs!579625 m!4333613))

(assert (=> b!3802021 d!1121712))

(declare-fun d!1121714 () Bool)

(declare-fun lt!1318506 () Int)

(assert (=> d!1121714 (= lt!1318506 (size!30374 (list!14975 totalInput!335)))))

(assert (=> d!1121714 (= lt!1318506 (size!30375 (c!661147 totalInput!335)))))

(assert (=> d!1121714 (= (size!30370 totalInput!335) lt!1318506)))

(declare-fun bs!579626 () Bool)

(assert (= bs!579626 d!1121714))

(assert (=> bs!579626 m!4332423))

(assert (=> bs!579626 m!4332423))

(declare-fun m!4333615 () Bool)

(assert (=> bs!579626 m!4333615))

(declare-fun m!4333617 () Bool)

(assert (=> bs!579626 m!4333617))

(assert (=> b!3802021 d!1121714))

(declare-fun d!1121716 () Bool)

(declare-fun c!661342 () Bool)

(assert (=> d!1121716 (= c!661342 ((_ is Nil!40344) lt!1318329))))

(declare-fun e!2349924 () (InoxSet C!22412))

(assert (=> d!1121716 (= (content!5950 lt!1318329) e!2349924)))

(declare-fun b!3802785 () Bool)

(assert (=> b!3802785 (= e!2349924 ((as const (Array C!22412 Bool)) false))))

(declare-fun b!3802786 () Bool)

(assert (=> b!3802786 (= e!2349924 ((_ map or) (store ((as const (Array C!22412 Bool)) false) (h!45764 lt!1318329) true) (content!5950 (t!307185 lt!1318329))))))

(assert (= (and d!1121716 c!661342) b!3802785))

(assert (= (and d!1121716 (not c!661342)) b!3802786))

(declare-fun m!4333619 () Bool)

(assert (=> b!3802786 m!4333619))

(declare-fun m!4333621 () Bool)

(assert (=> b!3802786 m!4333621))

(assert (=> d!1121472 d!1121716))

(declare-fun d!1121718 () Bool)

(declare-fun c!661343 () Bool)

(assert (=> d!1121718 (= c!661343 ((_ is Nil!40344) (list!14975 treated!13)))))

(declare-fun e!2349925 () (InoxSet C!22412))

(assert (=> d!1121718 (= (content!5950 (list!14975 treated!13)) e!2349925)))

(declare-fun b!3802787 () Bool)

(assert (=> b!3802787 (= e!2349925 ((as const (Array C!22412 Bool)) false))))

(declare-fun b!3802788 () Bool)

(assert (=> b!3802788 (= e!2349925 ((_ map or) (store ((as const (Array C!22412 Bool)) false) (h!45764 (list!14975 treated!13)) true) (content!5950 (t!307185 (list!14975 treated!13)))))))

(assert (= (and d!1121718 c!661343) b!3802787))

(assert (= (and d!1121718 (not c!661343)) b!3802788))

(declare-fun m!4333623 () Bool)

(assert (=> b!3802788 m!4333623))

(declare-fun m!4333625 () Bool)

(assert (=> b!3802788 m!4333625))

(assert (=> d!1121472 d!1121718))

(declare-fun d!1121720 () Bool)

(declare-fun c!661344 () Bool)

(assert (=> d!1121720 (= c!661344 ((_ is Nil!40344) (list!14975 input!678)))))

(declare-fun e!2349926 () (InoxSet C!22412))

(assert (=> d!1121720 (= (content!5950 (list!14975 input!678)) e!2349926)))

(declare-fun b!3802789 () Bool)

(assert (=> b!3802789 (= e!2349926 ((as const (Array C!22412 Bool)) false))))

(declare-fun b!3802790 () Bool)

(assert (=> b!3802790 (= e!2349926 ((_ map or) (store ((as const (Array C!22412 Bool)) false) (h!45764 (list!14975 input!678)) true) (content!5950 (t!307185 (list!14975 input!678)))))))

(assert (= (and d!1121720 c!661344) b!3802789))

(assert (= (and d!1121720 (not c!661344)) b!3802790))

(declare-fun m!4333627 () Bool)

(assert (=> b!3802790 m!4333627))

(declare-fun m!4333629 () Bool)

(assert (=> b!3802790 m!4333629))

(assert (=> d!1121472 d!1121720))

(declare-fun d!1121722 () Bool)

(assert (=> d!1121722 (= (inv!54301 (xs!15652 (c!661147 treated!13))) (<= (size!30374 (innerList!12450 (xs!15652 (c!661147 treated!13)))) 2147483647))))

(declare-fun bs!579627 () Bool)

(assert (= bs!579627 d!1121722))

(declare-fun m!4333631 () Bool)

(assert (=> bs!579627 m!4333631))

(assert (=> b!3802065 d!1121722))

(declare-fun b!3802799 () Bool)

(declare-fun e!2349931 () List!40470)

(assert (=> b!3802799 (= e!2349931 Nil!40346)))

(declare-fun b!3802802 () Bool)

(declare-fun e!2349932 () List!40470)

(assert (=> b!3802802 (= e!2349932 (++!10122 (list!14980 (left!31216 (c!661149 (_1!22868 lt!1318281)))) (list!14980 (right!31546 (c!661149 (_1!22868 lt!1318281))))))))

(declare-fun b!3802800 () Bool)

(assert (=> b!3802800 (= e!2349931 e!2349932)))

(declare-fun c!661350 () Bool)

(assert (=> b!3802800 (= c!661350 ((_ is Leaf!19193) (c!661149 (_1!22868 lt!1318281))))))

(declare-fun d!1121724 () Bool)

(declare-fun c!661349 () Bool)

(assert (=> d!1121724 (= c!661349 ((_ is Empty!12391) (c!661149 (_1!22868 lt!1318281))))))

(assert (=> d!1121724 (= (list!14980 (c!661149 (_1!22868 lt!1318281))) e!2349931)))

(declare-fun b!3802801 () Bool)

(declare-fun list!14984 (IArray!24787) List!40470)

(assert (=> b!3802801 (= e!2349932 (list!14984 (xs!15653 (c!661149 (_1!22868 lt!1318281)))))))

(assert (= (and d!1121724 c!661349) b!3802799))

(assert (= (and d!1121724 (not c!661349)) b!3802800))

(assert (= (and b!3802800 c!661350) b!3802801))

(assert (= (and b!3802800 (not c!661350)) b!3802802))

(declare-fun m!4333633 () Bool)

(assert (=> b!3802802 m!4333633))

(declare-fun m!4333635 () Bool)

(assert (=> b!3802802 m!4333635))

(assert (=> b!3802802 m!4333633))

(assert (=> b!3802802 m!4333635))

(declare-fun m!4333637 () Bool)

(assert (=> b!3802802 m!4333637))

(declare-fun m!4333639 () Bool)

(assert (=> b!3802801 m!4333639))

(assert (=> d!1121388 d!1121724))

(declare-fun d!1121726 () Bool)

(assert (=> d!1121726 (= (list!14975 (_2!22868 lt!1318320)) (list!14979 (c!661147 (_2!22868 lt!1318320))))))

(declare-fun bs!579628 () Bool)

(assert (= bs!579628 d!1121726))

(declare-fun m!4333641 () Bool)

(assert (=> bs!579628 m!4333641))

(assert (=> b!3802023 d!1121726))

(assert (=> b!3802023 d!1121470))

(declare-fun d!1121728 () Bool)

(assert (=> d!1121728 true))

(declare-fun order!22013 () Int)

(declare-fun lambda!125646 () Int)

(declare-fun dynLambda!17440 (Int Int) Int)

(assert (=> d!1121728 (< (dynLambda!17438 order!22009 (toValue!8588 (transformation!6208 (h!45767 rules!1265)))) (dynLambda!17440 order!22013 lambda!125646))))

(declare-fun Forall2!1012 (Int) Bool)

(assert (=> d!1121728 (= (equivClasses!2556 (toChars!8447 (transformation!6208 (h!45767 rules!1265))) (toValue!8588 (transformation!6208 (h!45767 rules!1265)))) (Forall2!1012 lambda!125646))))

(declare-fun bs!579629 () Bool)

(assert (= bs!579629 d!1121728))

(declare-fun m!4333643 () Bool)

(assert (=> bs!579629 m!4333643))

(assert (=> b!3801845 d!1121728))

(declare-fun b!3802807 () Bool)

(declare-fun e!2349935 () List!40470)

(assert (=> b!3802807 (= e!2349935 Nil!40346)))

(declare-fun b!3802810 () Bool)

(declare-fun e!2349936 () List!40470)

(assert (=> b!3802810 (= e!2349936 (++!10122 (list!14980 (left!31216 (c!661149 (++!10117 acc!335 (_1!22868 lt!1318280))))) (list!14980 (right!31546 (c!661149 (++!10117 acc!335 (_1!22868 lt!1318280)))))))))

(declare-fun b!3802808 () Bool)

(assert (=> b!3802808 (= e!2349935 e!2349936)))

(declare-fun c!661352 () Bool)

(assert (=> b!3802808 (= c!661352 ((_ is Leaf!19193) (c!661149 (++!10117 acc!335 (_1!22868 lt!1318280)))))))

(declare-fun d!1121730 () Bool)

(declare-fun c!661351 () Bool)

(assert (=> d!1121730 (= c!661351 ((_ is Empty!12391) (c!661149 (++!10117 acc!335 (_1!22868 lt!1318280)))))))

(assert (=> d!1121730 (= (list!14980 (c!661149 (++!10117 acc!335 (_1!22868 lt!1318280)))) e!2349935)))

(declare-fun b!3802809 () Bool)

(assert (=> b!3802809 (= e!2349936 (list!14984 (xs!15653 (c!661149 (++!10117 acc!335 (_1!22868 lt!1318280))))))))

(assert (= (and d!1121730 c!661351) b!3802807))

(assert (= (and d!1121730 (not c!661351)) b!3802808))

(assert (= (and b!3802808 c!661352) b!3802809))

(assert (= (and b!3802808 (not c!661352)) b!3802810))

(declare-fun m!4333645 () Bool)

(assert (=> b!3802810 m!4333645))

(declare-fun m!4333647 () Bool)

(assert (=> b!3802810 m!4333647))

(assert (=> b!3802810 m!4333645))

(assert (=> b!3802810 m!4333647))

(declare-fun m!4333649 () Bool)

(assert (=> b!3802810 m!4333649))

(declare-fun m!4333651 () Bool)

(assert (=> b!3802809 m!4333651))

(assert (=> d!1121462 d!1121730))

(assert (=> b!3801816 d!1121458))

(declare-fun d!1121732 () Bool)

(declare-fun res!1539555 () Bool)

(declare-fun e!2349937 () Bool)

(assert (=> d!1121732 (=> (not res!1539555) (not e!2349937))))

(assert (=> d!1121732 (= res!1539555 (= (csize!25010 (c!661147 treated!13)) (+ (size!30375 (left!31215 (c!661147 treated!13))) (size!30375 (right!31545 (c!661147 treated!13))))))))

(assert (=> d!1121732 (= (inv!54296 (c!661147 treated!13)) e!2349937)))

(declare-fun b!3802811 () Bool)

(declare-fun res!1539556 () Bool)

(assert (=> b!3802811 (=> (not res!1539556) (not e!2349937))))

(assert (=> b!3802811 (= res!1539556 (and (not (= (left!31215 (c!661147 treated!13)) Empty!12390)) (not (= (right!31545 (c!661147 treated!13)) Empty!12390))))))

(declare-fun b!3802812 () Bool)

(declare-fun res!1539557 () Bool)

(assert (=> b!3802812 (=> (not res!1539557) (not e!2349937))))

(assert (=> b!3802812 (= res!1539557 (= (cheight!12601 (c!661147 treated!13)) (+ (max!0 (height!1791 (left!31215 (c!661147 treated!13))) (height!1791 (right!31545 (c!661147 treated!13)))) 1)))))

(declare-fun b!3802813 () Bool)

(assert (=> b!3802813 (= e!2349937 (<= 0 (cheight!12601 (c!661147 treated!13))))))

(assert (= (and d!1121732 res!1539555) b!3802811))

(assert (= (and b!3802811 res!1539556) b!3802812))

(assert (= (and b!3802812 res!1539557) b!3802813))

(declare-fun m!4333653 () Bool)

(assert (=> d!1121732 m!4333653))

(declare-fun m!4333655 () Bool)

(assert (=> d!1121732 m!4333655))

(assert (=> b!3802812 m!4333579))

(assert (=> b!3802812 m!4333581))

(assert (=> b!3802812 m!4333579))

(assert (=> b!3802812 m!4333581))

(declare-fun m!4333657 () Bool)

(assert (=> b!3802812 m!4333657))

(assert (=> b!3801840 d!1121732))

(declare-fun d!1121734 () Bool)

(assert (=> d!1121734 (= (inv!54302 (xs!15653 (c!661149 acc!335))) (<= (size!30379 (innerList!12451 (xs!15653 (c!661149 acc!335)))) 2147483647))))

(declare-fun bs!579630 () Bool)

(assert (= bs!579630 d!1121734))

(declare-fun m!4333659 () Bool)

(assert (=> bs!579630 m!4333659))

(assert (=> b!3802107 d!1121734))

(declare-fun b!3802814 () Bool)

(declare-fun e!2349938 () List!40470)

(assert (=> b!3802814 (= e!2349938 Nil!40346)))

(declare-fun b!3802817 () Bool)

(declare-fun e!2349939 () List!40470)

(assert (=> b!3802817 (= e!2349939 (++!10122 (list!14980 (left!31216 (c!661149 acc!335))) (list!14980 (right!31546 (c!661149 acc!335)))))))

(declare-fun b!3802815 () Bool)

(assert (=> b!3802815 (= e!2349938 e!2349939)))

(declare-fun c!661354 () Bool)

(assert (=> b!3802815 (= c!661354 ((_ is Leaf!19193) (c!661149 acc!335)))))

(declare-fun d!1121736 () Bool)

(declare-fun c!661353 () Bool)

(assert (=> d!1121736 (= c!661353 ((_ is Empty!12391) (c!661149 acc!335)))))

(assert (=> d!1121736 (= (list!14980 (c!661149 acc!335)) e!2349938)))

(declare-fun b!3802816 () Bool)

(assert (=> b!3802816 (= e!2349939 (list!14984 (xs!15653 (c!661149 acc!335))))))

(assert (= (and d!1121736 c!661353) b!3802814))

(assert (= (and d!1121736 (not c!661353)) b!3802815))

(assert (= (and b!3802815 c!661354) b!3802816))

(assert (= (and b!3802815 (not c!661354)) b!3802817))

(declare-fun m!4333661 () Bool)

(assert (=> b!3802817 m!4333661))

(declare-fun m!4333663 () Bool)

(assert (=> b!3802817 m!4333663))

(assert (=> b!3802817 m!4333661))

(assert (=> b!3802817 m!4333663))

(declare-fun m!4333665 () Bool)

(assert (=> b!3802817 m!4333665))

(declare-fun m!4333667 () Bool)

(assert (=> b!3802816 m!4333667))

(assert (=> d!1121390 d!1121736))

(declare-fun d!1121738 () Bool)

(declare-fun res!1539558 () Bool)

(declare-fun e!2349940 () Bool)

(assert (=> d!1121738 (=> (not res!1539558) (not e!2349940))))

(assert (=> d!1121738 (= res!1539558 (<= (size!30374 (list!14983 (xs!15652 (c!661147 treated!13)))) 512))))

(assert (=> d!1121738 (= (inv!54297 (c!661147 treated!13)) e!2349940)))

(declare-fun b!3802818 () Bool)

(declare-fun res!1539559 () Bool)

(assert (=> b!3802818 (=> (not res!1539559) (not e!2349940))))

(assert (=> b!3802818 (= res!1539559 (= (csize!25011 (c!661147 treated!13)) (size!30374 (list!14983 (xs!15652 (c!661147 treated!13))))))))

(declare-fun b!3802819 () Bool)

(assert (=> b!3802819 (= e!2349940 (and (> (csize!25011 (c!661147 treated!13)) 0) (<= (csize!25011 (c!661147 treated!13)) 512)))))

(assert (= (and d!1121738 res!1539558) b!3802818))

(assert (= (and b!3802818 res!1539559) b!3802819))

(declare-fun m!4333669 () Bool)

(assert (=> d!1121738 m!4333669))

(assert (=> d!1121738 m!4333669))

(declare-fun m!4333671 () Bool)

(assert (=> d!1121738 m!4333671))

(assert (=> b!3802818 m!4333669))

(assert (=> b!3802818 m!4333669))

(assert (=> b!3802818 m!4333671))

(assert (=> b!3801842 d!1121738))

(declare-fun d!1121740 () Bool)

(assert (=> d!1121740 (= (inv!54301 (xs!15652 (c!661147 input!678))) (<= (size!30374 (innerList!12450 (xs!15652 (c!661147 input!678)))) 2147483647))))

(declare-fun bs!579631 () Bool)

(assert (= bs!579631 d!1121740))

(declare-fun m!4333673 () Bool)

(assert (=> bs!579631 m!4333673))

(assert (=> b!3802082 d!1121740))

(declare-fun d!1121742 () Bool)

(declare-fun lt!1318507 () Bool)

(assert (=> d!1121742 (= lt!1318507 (isEmpty!23751 (list!14976 (_1!22868 lt!1318317))))))

(assert (=> d!1121742 (= lt!1318507 (isEmpty!23752 (c!661149 (_1!22868 lt!1318317))))))

(assert (=> d!1121742 (= (isEmpty!23748 (_1!22868 lt!1318317)) lt!1318507)))

(declare-fun bs!579632 () Bool)

(assert (= bs!579632 d!1121742))

(assert (=> bs!579632 m!4332661))

(assert (=> bs!579632 m!4332661))

(declare-fun m!4333675 () Bool)

(assert (=> bs!579632 m!4333675))

(declare-fun m!4333677 () Bool)

(assert (=> bs!579632 m!4333677))

(assert (=> b!3801996 d!1121742))

(assert (=> d!1121386 d!1121532))

(assert (=> d!1121386 d!1121476))

(declare-fun d!1121744 () Bool)

(declare-fun lt!1318510 () Int)

(assert (=> d!1121744 (= lt!1318510 (size!30374 (list!14979 (c!661147 input!678))))))

(assert (=> d!1121744 (= lt!1318510 (ite ((_ is Empty!12390) (c!661147 input!678)) 0 (ite ((_ is Leaf!19192) (c!661147 input!678)) (csize!25011 (c!661147 input!678)) (csize!25010 (c!661147 input!678)))))))

(assert (=> d!1121744 (= (size!30375 (c!661147 input!678)) lt!1318510)))

(declare-fun bs!579633 () Bool)

(assert (= bs!579633 d!1121744))

(assert (=> bs!579633 m!4332761))

(assert (=> bs!579633 m!4332761))

(declare-fun m!4333679 () Bool)

(assert (=> bs!579633 m!4333679))

(assert (=> d!1121386 d!1121744))

(declare-fun d!1121746 () Bool)

(declare-fun e!2349942 () Bool)

(assert (=> d!1121746 e!2349942))

(declare-fun res!1539560 () Bool)

(assert (=> d!1121746 (=> (not res!1539560) (not e!2349942))))

(declare-fun lt!1318511 () List!40468)

(assert (=> d!1121746 (= res!1539560 (= (content!5950 lt!1318511) ((_ map or) (content!5950 (t!307185 (list!14975 treated!13))) (content!5950 (list!14975 input!678)))))))

(declare-fun e!2349941 () List!40468)

(assert (=> d!1121746 (= lt!1318511 e!2349941)))

(declare-fun c!661355 () Bool)

(assert (=> d!1121746 (= c!661355 ((_ is Nil!40344) (t!307185 (list!14975 treated!13))))))

(assert (=> d!1121746 (= (++!10118 (t!307185 (list!14975 treated!13)) (list!14975 input!678)) lt!1318511)))

(declare-fun b!3802821 () Bool)

(assert (=> b!3802821 (= e!2349941 (Cons!40344 (h!45764 (t!307185 (list!14975 treated!13))) (++!10118 (t!307185 (t!307185 (list!14975 treated!13))) (list!14975 input!678))))))

(declare-fun b!3802820 () Bool)

(assert (=> b!3802820 (= e!2349941 (list!14975 input!678))))

(declare-fun b!3802822 () Bool)

(declare-fun res!1539561 () Bool)

(assert (=> b!3802822 (=> (not res!1539561) (not e!2349942))))

(assert (=> b!3802822 (= res!1539561 (= (size!30374 lt!1318511) (+ (size!30374 (t!307185 (list!14975 treated!13))) (size!30374 (list!14975 input!678)))))))

(declare-fun b!3802823 () Bool)

(assert (=> b!3802823 (= e!2349942 (or (not (= (list!14975 input!678) Nil!40344)) (= lt!1318511 (t!307185 (list!14975 treated!13)))))))

(assert (= (and d!1121746 c!661355) b!3802820))

(assert (= (and d!1121746 (not c!661355)) b!3802821))

(assert (= (and d!1121746 res!1539560) b!3802822))

(assert (= (and b!3802822 res!1539561) b!3802823))

(declare-fun m!4333681 () Bool)

(assert (=> d!1121746 m!4333681))

(assert (=> d!1121746 m!4333625))

(assert (=> d!1121746 m!4332427))

(assert (=> d!1121746 m!4332751))

(assert (=> b!3802821 m!4332427))

(declare-fun m!4333683 () Bool)

(assert (=> b!3802821 m!4333683))

(declare-fun m!4333685 () Bool)

(assert (=> b!3802822 m!4333685))

(assert (=> b!3802822 m!4332927))

(assert (=> b!3802822 m!4332427))

(assert (=> b!3802822 m!4332469))

(assert (=> b!3802053 d!1121746))

(declare-fun b!3802832 () Bool)

(declare-fun e!2349947 () List!40468)

(assert (=> b!3802832 (= e!2349947 Nil!40344)))

(declare-fun b!3802833 () Bool)

(declare-fun e!2349948 () List!40468)

(assert (=> b!3802833 (= e!2349947 e!2349948)))

(declare-fun c!661361 () Bool)

(assert (=> b!3802833 (= c!661361 ((_ is Leaf!19192) (c!661147 input!678)))))

(declare-fun d!1121748 () Bool)

(declare-fun c!661360 () Bool)

(assert (=> d!1121748 (= c!661360 ((_ is Empty!12390) (c!661147 input!678)))))

(assert (=> d!1121748 (= (list!14979 (c!661147 input!678)) e!2349947)))

(declare-fun b!3802835 () Bool)

(assert (=> b!3802835 (= e!2349948 (++!10118 (list!14979 (left!31215 (c!661147 input!678))) (list!14979 (right!31545 (c!661147 input!678)))))))

(declare-fun b!3802834 () Bool)

(assert (=> b!3802834 (= e!2349948 (list!14983 (xs!15652 (c!661147 input!678))))))

(assert (= (and d!1121748 c!661360) b!3802832))

(assert (= (and d!1121748 (not c!661360)) b!3802833))

(assert (= (and b!3802833 c!661361) b!3802834))

(assert (= (and b!3802833 (not c!661361)) b!3802835))

(declare-fun m!4333687 () Bool)

(assert (=> b!3802835 m!4333687))

(declare-fun m!4333689 () Bool)

(assert (=> b!3802835 m!4333689))

(assert (=> b!3802835 m!4333687))

(assert (=> b!3802835 m!4333689))

(declare-fun m!4333691 () Bool)

(assert (=> b!3802835 m!4333691))

(declare-fun m!4333693 () Bool)

(assert (=> b!3802834 m!4333693))

(assert (=> d!1121476 d!1121748))

(declare-fun b!3802836 () Bool)

(declare-fun res!1539565 () Bool)

(declare-fun e!2349950 () Bool)

(assert (=> b!3802836 (=> (not res!1539565) (not e!2349950))))

(assert (=> b!3802836 (= res!1539565 (isBalanced!3574 (right!31546 (c!661149 acc!335))))))

(declare-fun b!3802837 () Bool)

(assert (=> b!3802837 (= e!2349950 (not (isEmpty!23752 (right!31546 (c!661149 acc!335)))))))

(declare-fun b!3802838 () Bool)

(declare-fun res!1539564 () Bool)

(assert (=> b!3802838 (=> (not res!1539564) (not e!2349950))))

(assert (=> b!3802838 (= res!1539564 (not (isEmpty!23752 (left!31216 (c!661149 acc!335)))))))

(declare-fun d!1121750 () Bool)

(declare-fun res!1539566 () Bool)

(declare-fun e!2349949 () Bool)

(assert (=> d!1121750 (=> res!1539566 e!2349949)))

(assert (=> d!1121750 (= res!1539566 (not ((_ is Node!12391) (c!661149 acc!335))))))

(assert (=> d!1121750 (= (isBalanced!3574 (c!661149 acc!335)) e!2349949)))

(declare-fun b!3802839 () Bool)

(assert (=> b!3802839 (= e!2349949 e!2349950)))

(declare-fun res!1539562 () Bool)

(assert (=> b!3802839 (=> (not res!1539562) (not e!2349950))))

(assert (=> b!3802839 (= res!1539562 (<= (- 1) (- (height!1790 (left!31216 (c!661149 acc!335))) (height!1790 (right!31546 (c!661149 acc!335))))))))

(declare-fun b!3802840 () Bool)

(declare-fun res!1539563 () Bool)

(assert (=> b!3802840 (=> (not res!1539563) (not e!2349950))))

(assert (=> b!3802840 (= res!1539563 (<= (- (height!1790 (left!31216 (c!661149 acc!335))) (height!1790 (right!31546 (c!661149 acc!335)))) 1))))

(declare-fun b!3802841 () Bool)

(declare-fun res!1539567 () Bool)

(assert (=> b!3802841 (=> (not res!1539567) (not e!2349950))))

(assert (=> b!3802841 (= res!1539567 (isBalanced!3574 (left!31216 (c!661149 acc!335))))))

(assert (= (and d!1121750 (not res!1539566)) b!3802839))

(assert (= (and b!3802839 res!1539562) b!3802840))

(assert (= (and b!3802840 res!1539563) b!3802841))

(assert (= (and b!3802841 res!1539567) b!3802836))

(assert (= (and b!3802836 res!1539565) b!3802838))

(assert (= (and b!3802838 res!1539564) b!3802837))

(declare-fun m!4333695 () Bool)

(assert (=> b!3802839 m!4333695))

(declare-fun m!4333697 () Bool)

(assert (=> b!3802839 m!4333697))

(declare-fun m!4333699 () Bool)

(assert (=> b!3802836 m!4333699))

(declare-fun m!4333701 () Bool)

(assert (=> b!3802841 m!4333701))

(declare-fun m!4333703 () Bool)

(assert (=> b!3802838 m!4333703))

(declare-fun m!4333705 () Bool)

(assert (=> b!3802837 m!4333705))

(assert (=> b!3802840 m!4333695))

(assert (=> b!3802840 m!4333697))

(assert (=> d!1121450 d!1121750))

(declare-fun d!1121752 () Bool)

(assert (=> d!1121752 (= (list!14976 (_1!22868 lt!1318317)) (list!14980 (c!661149 (_1!22868 lt!1318317))))))

(declare-fun bs!579634 () Bool)

(assert (= bs!579634 d!1121752))

(declare-fun m!4333707 () Bool)

(assert (=> bs!579634 m!4333707))

(assert (=> b!3801998 d!1121752))

(declare-fun b!3802842 () Bool)

(declare-fun e!2349951 () tuple2!39474)

(assert (=> b!3802842 (= e!2349951 (tuple2!39475 Nil!40346 (list!14975 treated!13)))))

(declare-fun b!3802843 () Bool)

(declare-fun lt!1318514 () Option!8620)

(declare-fun lt!1318513 () tuple2!39474)

(assert (=> b!3802843 (= e!2349951 (tuple2!39475 (Cons!40346 (_1!22874 (v!38843 lt!1318514)) (_1!22871 lt!1318513)) (_2!22871 lt!1318513)))))

(assert (=> b!3802843 (= lt!1318513 (lexList!1569 thiss!11876 rules!1265 (_2!22874 (v!38843 lt!1318514))))))

(declare-fun b!3802845 () Bool)

(declare-fun e!2349953 () Bool)

(declare-fun e!2349952 () Bool)

(assert (=> b!3802845 (= e!2349953 e!2349952)))

(declare-fun res!1539568 () Bool)

(declare-fun lt!1318512 () tuple2!39474)

(assert (=> b!3802845 (= res!1539568 (< (size!30374 (_2!22871 lt!1318512)) (size!30374 (list!14975 treated!13))))))

(assert (=> b!3802845 (=> (not res!1539568) (not e!2349952))))

(declare-fun b!3802846 () Bool)

(assert (=> b!3802846 (= e!2349953 (= (_2!22871 lt!1318512) (list!14975 treated!13)))))

(declare-fun d!1121754 () Bool)

(assert (=> d!1121754 e!2349953))

(declare-fun c!661362 () Bool)

(assert (=> d!1121754 (= c!661362 (> (size!30379 (_1!22871 lt!1318512)) 0))))

(assert (=> d!1121754 (= lt!1318512 e!2349951)))

(declare-fun c!661363 () Bool)

(assert (=> d!1121754 (= c!661363 ((_ is Some!8619) lt!1318514))))

(assert (=> d!1121754 (= lt!1318514 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 treated!13)))))

(assert (=> d!1121754 (= (lexList!1569 thiss!11876 rules!1265 (list!14975 treated!13)) lt!1318512)))

(declare-fun b!3802844 () Bool)

(assert (=> b!3802844 (= e!2349952 (not (isEmpty!23751 (_1!22871 lt!1318512))))))

(assert (= (and d!1121754 c!661363) b!3802843))

(assert (= (and d!1121754 (not c!661363)) b!3802842))

(assert (= (and d!1121754 c!661362) b!3802845))

(assert (= (and d!1121754 (not c!661362)) b!3802846))

(assert (= (and b!3802845 res!1539568) b!3802844))

(declare-fun m!4333709 () Bool)

(assert (=> b!3802843 m!4333709))

(declare-fun m!4333711 () Bool)

(assert (=> b!3802845 m!4333711))

(assert (=> b!3802845 m!4332425))

(assert (=> b!3802845 m!4332757))

(declare-fun m!4333713 () Bool)

(assert (=> d!1121754 m!4333713))

(assert (=> d!1121754 m!4332425))

(assert (=> d!1121754 m!4333127))

(declare-fun m!4333715 () Bool)

(assert (=> b!3802844 m!4333715))

(assert (=> b!3801998 d!1121754))

(assert (=> b!3801998 d!1121474))

(assert (=> b!3801824 d!1121444))

(declare-fun b!3802865 () Bool)

(declare-fun e!2349975 () Bool)

(declare-fun e!2349978 () Bool)

(assert (=> b!3802865 (= e!2349975 e!2349978)))

(declare-fun res!1539594 () Bool)

(assert (=> b!3802865 (=> res!1539594 e!2349978)))

(assert (=> b!3802865 (= res!1539594 (not ((_ is Node!12391) (right!31546 (c!661149 acc!335)))))))

(declare-fun b!3802866 () Bool)

(declare-fun e!2349974 () Bool)

(assert (=> b!3802866 (= e!2349978 e!2349974)))

(declare-fun res!1539592 () Bool)

(assert (=> b!3802866 (=> (not res!1539592) (not e!2349974))))

(declare-fun appendAssoc!274 (List!40470 List!40470 List!40470) Bool)

(assert (=> b!3802866 (= res!1539592 (appendAssoc!274 (list!14980 (left!31216 (right!31546 (c!661149 acc!335)))) (list!14980 (right!31546 (right!31546 (c!661149 acc!335)))) (list!14980 (c!661149 (_1!22868 lt!1318280)))))))

(declare-fun b!3802867 () Bool)

(assert (=> b!3802867 (= e!2349974 (appendAssoc!274 (list!14980 (left!31216 (c!661149 acc!335))) (list!14980 (left!31216 (right!31546 (c!661149 acc!335)))) (++!10122 (list!14980 (right!31546 (right!31546 (c!661149 acc!335)))) (list!14980 (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun b!3802868 () Bool)

(declare-fun e!2349977 () Bool)

(declare-fun e!2349976 () Bool)

(assert (=> b!3802868 (= e!2349977 e!2349976)))

(declare-fun res!1539587 () Bool)

(assert (=> b!3802868 (=> res!1539587 e!2349976)))

(assert (=> b!3802868 (= res!1539587 (not ((_ is Node!12391) (left!31216 (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun d!1121756 () Bool)

(declare-fun e!2349972 () Bool)

(assert (=> d!1121756 e!2349972))

(declare-fun res!1539595 () Bool)

(assert (=> d!1121756 (=> (not res!1539595) (not e!2349972))))

(declare-fun e!2349973 () Bool)

(assert (=> d!1121756 (= res!1539595 e!2349973)))

(declare-fun res!1539591 () Bool)

(assert (=> d!1121756 (=> res!1539591 e!2349973)))

(assert (=> d!1121756 (= res!1539591 (not ((_ is Node!12391) (c!661149 acc!335))))))

(assert (=> d!1121756 (= (appendAssocInst!857 (c!661149 acc!335) (c!661149 (_1!22868 lt!1318280))) true)))

(declare-fun b!3802869 () Bool)

(declare-fun e!2349980 () Bool)

(assert (=> b!3802869 (= e!2349976 e!2349980)))

(declare-fun res!1539593 () Bool)

(assert (=> b!3802869 (=> (not res!1539593) (not e!2349980))))

(assert (=> b!3802869 (= res!1539593 (appendAssoc!274 (list!14980 (c!661149 acc!335)) (list!14980 (left!31216 (left!31216 (c!661149 (_1!22868 lt!1318280))))) (list!14980 (right!31546 (left!31216 (c!661149 (_1!22868 lt!1318280)))))))))

(declare-fun b!3802870 () Bool)

(declare-fun e!2349979 () Bool)

(assert (=> b!3802870 (= e!2349972 e!2349979)))

(declare-fun res!1539590 () Bool)

(assert (=> b!3802870 (=> res!1539590 e!2349979)))

(assert (=> b!3802870 (= res!1539590 (not ((_ is Node!12391) (c!661149 (_1!22868 lt!1318280)))))))

(declare-fun b!3802871 () Bool)

(assert (=> b!3802871 (= e!2349973 e!2349975)))

(declare-fun res!1539589 () Bool)

(assert (=> b!3802871 (=> (not res!1539589) (not e!2349975))))

(assert (=> b!3802871 (= res!1539589 (appendAssoc!274 (list!14980 (left!31216 (c!661149 acc!335))) (list!14980 (right!31546 (c!661149 acc!335))) (list!14980 (c!661149 (_1!22868 lt!1318280)))))))

(declare-fun b!3802872 () Bool)

(assert (=> b!3802872 (= e!2349980 (appendAssoc!274 (++!10122 (list!14980 (c!661149 acc!335)) (list!14980 (left!31216 (left!31216 (c!661149 (_1!22868 lt!1318280)))))) (list!14980 (right!31546 (left!31216 (c!661149 (_1!22868 lt!1318280))))) (list!14980 (right!31546 (c!661149 (_1!22868 lt!1318280))))))))

(declare-fun b!3802873 () Bool)

(assert (=> b!3802873 (= e!2349979 e!2349977)))

(declare-fun res!1539588 () Bool)

(assert (=> b!3802873 (=> (not res!1539588) (not e!2349977))))

(assert (=> b!3802873 (= res!1539588 (appendAssoc!274 (list!14980 (c!661149 acc!335)) (list!14980 (left!31216 (c!661149 (_1!22868 lt!1318280)))) (list!14980 (right!31546 (c!661149 (_1!22868 lt!1318280))))))))

(assert (= (and d!1121756 (not res!1539591)) b!3802871))

(assert (= (and b!3802871 res!1539589) b!3802865))

(assert (= (and b!3802865 (not res!1539594)) b!3802866))

(assert (= (and b!3802866 res!1539592) b!3802867))

(assert (= (and d!1121756 res!1539595) b!3802870))

(assert (= (and b!3802870 (not res!1539590)) b!3802873))

(assert (= (and b!3802873 res!1539588) b!3802868))

(assert (= (and b!3802868 (not res!1539587)) b!3802869))

(assert (= (and b!3802869 res!1539593) b!3802872))

(assert (=> b!3802869 m!4332475))

(declare-fun m!4333717 () Bool)

(assert (=> b!3802869 m!4333717))

(declare-fun m!4333719 () Bool)

(assert (=> b!3802869 m!4333719))

(assert (=> b!3802869 m!4332475))

(assert (=> b!3802869 m!4333717))

(assert (=> b!3802869 m!4333719))

(declare-fun m!4333721 () Bool)

(assert (=> b!3802869 m!4333721))

(declare-fun m!4333723 () Bool)

(assert (=> b!3802866 m!4333723))

(declare-fun m!4333725 () Bool)

(assert (=> b!3802866 m!4333725))

(assert (=> b!3802866 m!4333377))

(assert (=> b!3802866 m!4333723))

(assert (=> b!3802866 m!4333725))

(assert (=> b!3802866 m!4333377))

(declare-fun m!4333727 () Bool)

(assert (=> b!3802866 m!4333727))

(assert (=> b!3802871 m!4333661))

(assert (=> b!3802871 m!4333663))

(assert (=> b!3802871 m!4333377))

(assert (=> b!3802871 m!4333661))

(assert (=> b!3802871 m!4333663))

(assert (=> b!3802871 m!4333377))

(declare-fun m!4333729 () Bool)

(assert (=> b!3802871 m!4333729))

(assert (=> b!3802867 m!4333725))

(assert (=> b!3802867 m!4333377))

(declare-fun m!4333731 () Bool)

(assert (=> b!3802867 m!4333731))

(assert (=> b!3802867 m!4333661))

(assert (=> b!3802867 m!4333723))

(assert (=> b!3802867 m!4333731))

(declare-fun m!4333733 () Bool)

(assert (=> b!3802867 m!4333733))

(assert (=> b!3802867 m!4333723))

(assert (=> b!3802867 m!4333661))

(assert (=> b!3802867 m!4333725))

(assert (=> b!3802867 m!4333377))

(assert (=> b!3802872 m!4332475))

(assert (=> b!3802872 m!4333717))

(declare-fun m!4333735 () Bool)

(assert (=> b!3802872 m!4333735))

(assert (=> b!3802872 m!4333719))

(assert (=> b!3802872 m!4332475))

(assert (=> b!3802872 m!4333717))

(declare-fun m!4333737 () Bool)

(assert (=> b!3802872 m!4333737))

(assert (=> b!3802872 m!4333735))

(assert (=> b!3802872 m!4333719))

(assert (=> b!3802872 m!4333737))

(declare-fun m!4333739 () Bool)

(assert (=> b!3802872 m!4333739))

(assert (=> b!3802873 m!4332475))

(declare-fun m!4333741 () Bool)

(assert (=> b!3802873 m!4333741))

(assert (=> b!3802873 m!4333737))

(assert (=> b!3802873 m!4332475))

(assert (=> b!3802873 m!4333741))

(assert (=> b!3802873 m!4333737))

(declare-fun m!4333743 () Bool)

(assert (=> b!3802873 m!4333743))

(assert (=> d!1121466 d!1121756))

(assert (=> d!1121466 d!1121620))

(declare-fun b!3802874 () Bool)

(declare-fun e!2349981 () List!40468)

(assert (=> b!3802874 (= e!2349981 Nil!40344)))

(declare-fun b!3802875 () Bool)

(declare-fun e!2349982 () List!40468)

(assert (=> b!3802875 (= e!2349981 e!2349982)))

(declare-fun c!661365 () Bool)

(assert (=> b!3802875 (= c!661365 ((_ is Leaf!19192) (c!661147 (_2!22868 lt!1318279))))))

(declare-fun d!1121758 () Bool)

(declare-fun c!661364 () Bool)

(assert (=> d!1121758 (= c!661364 ((_ is Empty!12390) (c!661147 (_2!22868 lt!1318279))))))

(assert (=> d!1121758 (= (list!14979 (c!661147 (_2!22868 lt!1318279))) e!2349981)))

(declare-fun b!3802877 () Bool)

(assert (=> b!3802877 (= e!2349982 (++!10118 (list!14979 (left!31215 (c!661147 (_2!22868 lt!1318279)))) (list!14979 (right!31545 (c!661147 (_2!22868 lt!1318279))))))))

(declare-fun b!3802876 () Bool)

(assert (=> b!3802876 (= e!2349982 (list!14983 (xs!15652 (c!661147 (_2!22868 lt!1318279)))))))

(assert (= (and d!1121758 c!661364) b!3802874))

(assert (= (and d!1121758 (not c!661364)) b!3802875))

(assert (= (and b!3802875 c!661365) b!3802876))

(assert (= (and b!3802875 (not c!661365)) b!3802877))

(declare-fun m!4333745 () Bool)

(assert (=> b!3802877 m!4333745))

(declare-fun m!4333747 () Bool)

(assert (=> b!3802877 m!4333747))

(assert (=> b!3802877 m!4333745))

(assert (=> b!3802877 m!4333747))

(declare-fun m!4333749 () Bool)

(assert (=> b!3802877 m!4333749))

(declare-fun m!4333751 () Bool)

(assert (=> b!3802876 m!4333751))

(assert (=> d!1121372 d!1121758))

(declare-fun d!1121760 () Bool)

(declare-fun lt!1318515 () Int)

(assert (=> d!1121760 (= lt!1318515 (size!30374 (list!14975 (_2!22868 lt!1318326))))))

(assert (=> d!1121760 (= lt!1318515 (size!30375 (c!661147 (_2!22868 lt!1318326))))))

(assert (=> d!1121760 (= (size!30370 (_2!22868 lt!1318326)) lt!1318515)))

(declare-fun bs!579635 () Bool)

(assert (= bs!579635 d!1121760))

(assert (=> bs!579635 m!4332727))

(assert (=> bs!579635 m!4332727))

(declare-fun m!4333753 () Bool)

(assert (=> bs!579635 m!4333753))

(declare-fun m!4333755 () Bool)

(assert (=> bs!579635 m!4333755))

(assert (=> b!3802040 d!1121760))

(assert (=> b!3802040 d!1121386))

(assert (=> b!3802000 d!1121604))

(assert (=> b!3802000 d!1121754))

(assert (=> b!3802000 d!1121474))

(declare-fun d!1121762 () Bool)

(assert (=> d!1121762 (= (inv!54301 (xs!15652 (c!661147 totalInput!335))) (<= (size!30374 (innerList!12450 (xs!15652 (c!661147 totalInput!335)))) 2147483647))))

(declare-fun bs!579636 () Bool)

(assert (= bs!579636 d!1121762))

(declare-fun m!4333757 () Bool)

(assert (=> bs!579636 m!4333757))

(assert (=> b!3802096 d!1121762))

(declare-fun b!3802878 () Bool)

(declare-fun e!2349983 () List!40468)

(assert (=> b!3802878 (= e!2349983 Nil!40344)))

(declare-fun b!3802879 () Bool)

(declare-fun e!2349984 () List!40468)

(assert (=> b!3802879 (= e!2349983 e!2349984)))

(declare-fun c!661367 () Bool)

(assert (=> b!3802879 (= c!661367 ((_ is Leaf!19192) (c!661147 totalInput!335)))))

(declare-fun d!1121764 () Bool)

(declare-fun c!661366 () Bool)

(assert (=> d!1121764 (= c!661366 ((_ is Empty!12390) (c!661147 totalInput!335)))))

(assert (=> d!1121764 (= (list!14979 (c!661147 totalInput!335)) e!2349983)))

(declare-fun b!3802881 () Bool)

(assert (=> b!3802881 (= e!2349984 (++!10118 (list!14979 (left!31215 (c!661147 totalInput!335))) (list!14979 (right!31545 (c!661147 totalInput!335)))))))

(declare-fun b!3802880 () Bool)

(assert (=> b!3802880 (= e!2349984 (list!14983 (xs!15652 (c!661147 totalInput!335))))))

(assert (= (and d!1121764 c!661366) b!3802878))

(assert (= (and d!1121764 (not c!661366)) b!3802879))

(assert (= (and b!3802879 c!661367) b!3802880))

(assert (= (and b!3802879 (not c!661367)) b!3802881))

(declare-fun m!4333759 () Bool)

(assert (=> b!3802881 m!4333759))

(declare-fun m!4333761 () Bool)

(assert (=> b!3802881 m!4333761))

(assert (=> b!3802881 m!4333759))

(assert (=> b!3802881 m!4333761))

(declare-fun m!4333763 () Bool)

(assert (=> b!3802881 m!4333763))

(assert (=> b!3802880 m!4333427))

(assert (=> d!1121470 d!1121764))

(assert (=> b!3802042 d!1121600))

(assert (=> b!3802042 d!1121476))

(declare-fun d!1121766 () Bool)

(declare-fun e!2349985 () Bool)

(assert (=> d!1121766 e!2349985))

(declare-fun res!1539596 () Bool)

(assert (=> d!1121766 (=> (not res!1539596) (not e!2349985))))

(assert (=> d!1121766 (= res!1539596 (isBalanced!3574 (prepend!1352 (c!661149 (_1!22868 lt!1318315)) (_1!22872 (v!38839 lt!1318316)))))))

(declare-fun lt!1318516 () BalanceConc!24376)

(assert (=> d!1121766 (= lt!1318516 (BalanceConc!24377 (prepend!1352 (c!661149 (_1!22868 lt!1318315)) (_1!22872 (v!38839 lt!1318316)))))))

(assert (=> d!1121766 (= (prepend!1350 (_1!22868 lt!1318315) (_1!22872 (v!38839 lt!1318316))) lt!1318516)))

(declare-fun b!3802882 () Bool)

(assert (=> b!3802882 (= e!2349985 (= (list!14976 lt!1318516) (Cons!40346 (_1!22872 (v!38839 lt!1318316)) (list!14976 (_1!22868 lt!1318315)))))))

(assert (= (and d!1121766 res!1539596) b!3802882))

(declare-fun m!4333765 () Bool)

(assert (=> d!1121766 m!4333765))

(assert (=> d!1121766 m!4333765))

(declare-fun m!4333767 () Bool)

(assert (=> d!1121766 m!4333767))

(declare-fun m!4333769 () Bool)

(assert (=> b!3802882 m!4333769))

(declare-fun m!4333771 () Bool)

(assert (=> b!3802882 m!4333771))

(assert (=> b!3802002 d!1121766))

(declare-fun b!3802883 () Bool)

(declare-fun e!2349986 () Bool)

(declare-fun lt!1318519 () tuple2!39468)

(assert (=> b!3802883 (= e!2349986 (not (isEmpty!23748 (_1!22868 lt!1318519))))))

(declare-fun b!3802884 () Bool)

(declare-fun e!2349987 () tuple2!39468)

(assert (=> b!3802884 (= e!2349987 (tuple2!39469 (BalanceConc!24377 Empty!12391) (_2!22872 (v!38839 lt!1318316))))))

(declare-fun b!3802885 () Bool)

(declare-fun res!1539598 () Bool)

(declare-fun e!2349989 () Bool)

(assert (=> b!3802885 (=> (not res!1539598) (not e!2349989))))

(assert (=> b!3802885 (= res!1539598 (= (list!14976 (_1!22868 lt!1318519)) (_1!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 (_2!22872 (v!38839 lt!1318316)))))))))

(declare-fun d!1121768 () Bool)

(assert (=> d!1121768 e!2349989))

(declare-fun res!1539599 () Bool)

(assert (=> d!1121768 (=> (not res!1539599) (not e!2349989))))

(declare-fun e!2349988 () Bool)

(assert (=> d!1121768 (= res!1539599 e!2349988)))

(declare-fun c!661369 () Bool)

(assert (=> d!1121768 (= c!661369 (> (size!30376 (_1!22868 lt!1318519)) 0))))

(assert (=> d!1121768 (= lt!1318519 e!2349987)))

(declare-fun c!661368 () Bool)

(declare-fun lt!1318518 () Option!8618)

(assert (=> d!1121768 (= c!661368 ((_ is Some!8617) lt!1318518))))

(assert (=> d!1121768 (= lt!1318518 (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318316))))))

(assert (=> d!1121768 (= (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318316))) lt!1318519)))

(declare-fun b!3802886 () Bool)

(assert (=> b!3802886 (= e!2349988 e!2349986)))

(declare-fun res!1539597 () Bool)

(assert (=> b!3802886 (= res!1539597 (< (size!30370 (_2!22868 lt!1318519)) (size!30370 (_2!22872 (v!38839 lt!1318316)))))))

(assert (=> b!3802886 (=> (not res!1539597) (not e!2349986))))

(declare-fun b!3802887 () Bool)

(assert (=> b!3802887 (= e!2349989 (= (list!14975 (_2!22868 lt!1318519)) (_2!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 (_2!22872 (v!38839 lt!1318316)))))))))

(declare-fun b!3802888 () Bool)

(assert (=> b!3802888 (= e!2349988 (= (list!14975 (_2!22868 lt!1318519)) (list!14975 (_2!22872 (v!38839 lt!1318316)))))))

(declare-fun b!3802889 () Bool)

(declare-fun lt!1318517 () tuple2!39468)

(assert (=> b!3802889 (= e!2349987 (tuple2!39469 (prepend!1350 (_1!22868 lt!1318517) (_1!22872 (v!38839 lt!1318518))) (_2!22868 lt!1318517)))))

(assert (=> b!3802889 (= lt!1318517 (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318518))))))

(assert (= (and d!1121768 c!661368) b!3802889))

(assert (= (and d!1121768 (not c!661368)) b!3802884))

(assert (= (and d!1121768 c!661369) b!3802886))

(assert (= (and d!1121768 (not c!661369)) b!3802888))

(assert (= (and b!3802886 res!1539597) b!3802883))

(assert (= (and d!1121768 res!1539599) b!3802885))

(assert (= (and b!3802885 res!1539598) b!3802887))

(declare-fun m!4333773 () Bool)

(assert (=> b!3802887 m!4333773))

(declare-fun m!4333775 () Bool)

(assert (=> b!3802887 m!4333775))

(assert (=> b!3802887 m!4333775))

(declare-fun m!4333777 () Bool)

(assert (=> b!3802887 m!4333777))

(assert (=> b!3802888 m!4333773))

(assert (=> b!3802888 m!4333775))

(declare-fun m!4333779 () Bool)

(assert (=> d!1121768 m!4333779))

(declare-fun m!4333781 () Bool)

(assert (=> d!1121768 m!4333781))

(declare-fun m!4333783 () Bool)

(assert (=> b!3802883 m!4333783))

(declare-fun m!4333785 () Bool)

(assert (=> b!3802889 m!4333785))

(declare-fun m!4333787 () Bool)

(assert (=> b!3802889 m!4333787))

(declare-fun m!4333789 () Bool)

(assert (=> b!3802886 m!4333789))

(declare-fun m!4333791 () Bool)

(assert (=> b!3802886 m!4333791))

(declare-fun m!4333793 () Bool)

(assert (=> b!3802885 m!4333793))

(assert (=> b!3802885 m!4333775))

(assert (=> b!3802885 m!4333775))

(assert (=> b!3802885 m!4333777))

(assert (=> b!3802002 d!1121768))

(declare-fun d!1121770 () Bool)

(declare-fun res!1539604 () Bool)

(declare-fun e!2349994 () Bool)

(assert (=> d!1121770 (=> res!1539604 e!2349994)))

(assert (=> d!1121770 (= res!1539604 ((_ is Nil!40347) rules!1265))))

(assert (=> d!1121770 (= (noDuplicateTag!2393 thiss!11876 rules!1265 Nil!40349) e!2349994)))

(declare-fun b!3802894 () Bool)

(declare-fun e!2349995 () Bool)

(assert (=> b!3802894 (= e!2349994 e!2349995)))

(declare-fun res!1539605 () Bool)

(assert (=> b!3802894 (=> (not res!1539605) (not e!2349995))))

(declare-fun contains!8188 (List!40473 String!45872) Bool)

(assert (=> b!3802894 (= res!1539605 (not (contains!8188 Nil!40349 (tag!7068 (h!45767 rules!1265)))))))

(declare-fun b!3802895 () Bool)

(assert (=> b!3802895 (= e!2349995 (noDuplicateTag!2393 thiss!11876 (t!307188 rules!1265) (Cons!40349 (tag!7068 (h!45767 rules!1265)) Nil!40349)))))

(assert (= (and d!1121770 (not res!1539604)) b!3802894))

(assert (= (and b!3802894 res!1539605) b!3802895))

(declare-fun m!4333795 () Bool)

(assert (=> b!3802894 m!4333795))

(declare-fun m!4333797 () Bool)

(assert (=> b!3802895 m!4333797))

(assert (=> b!3802014 d!1121770))

(assert (=> b!3802034 d!1121698))

(assert (=> b!3802034 d!1121700))

(assert (=> b!3802034 d!1121702))

(assert (=> b!3802034 d!1121620))

(assert (=> b!3802034 d!1121704))

(declare-fun d!1121772 () Bool)

(declare-fun res!1539612 () Bool)

(declare-fun e!2349998 () Bool)

(assert (=> d!1121772 (=> (not res!1539612) (not e!2349998))))

(assert (=> d!1121772 (= res!1539612 (= (csize!25012 (c!661149 acc!335)) (+ (size!30380 (left!31216 (c!661149 acc!335))) (size!30380 (right!31546 (c!661149 acc!335))))))))

(assert (=> d!1121772 (= (inv!54299 (c!661149 acc!335)) e!2349998)))

(declare-fun b!3802902 () Bool)

(declare-fun res!1539613 () Bool)

(assert (=> b!3802902 (=> (not res!1539613) (not e!2349998))))

(assert (=> b!3802902 (= res!1539613 (and (not (= (left!31216 (c!661149 acc!335)) Empty!12391)) (not (= (right!31546 (c!661149 acc!335)) Empty!12391))))))

(declare-fun b!3802903 () Bool)

(declare-fun res!1539614 () Bool)

(assert (=> b!3802903 (=> (not res!1539614) (not e!2349998))))

(assert (=> b!3802903 (= res!1539614 (= (cheight!12602 (c!661149 acc!335)) (+ (max!0 (height!1790 (left!31216 (c!661149 acc!335))) (height!1790 (right!31546 (c!661149 acc!335)))) 1)))))

(declare-fun b!3802904 () Bool)

(assert (=> b!3802904 (= e!2349998 (<= 0 (cheight!12602 (c!661149 acc!335))))))

(assert (= (and d!1121772 res!1539612) b!3802902))

(assert (= (and b!3802902 res!1539613) b!3802903))

(assert (= (and b!3802903 res!1539614) b!3802904))

(declare-fun m!4333799 () Bool)

(assert (=> d!1121772 m!4333799))

(declare-fun m!4333801 () Bool)

(assert (=> d!1121772 m!4333801))

(assert (=> b!3802903 m!4333695))

(assert (=> b!3802903 m!4333697))

(assert (=> b!3802903 m!4333695))

(assert (=> b!3802903 m!4333697))

(declare-fun m!4333803 () Bool)

(assert (=> b!3802903 m!4333803))

(assert (=> b!3802009 d!1121772))

(declare-fun d!1121774 () Bool)

(declare-fun res!1539615 () Bool)

(declare-fun e!2349999 () Bool)

(assert (=> d!1121774 (=> (not res!1539615) (not e!2349999))))

(assert (=> d!1121774 (= res!1539615 (= (csize!25010 (c!661147 input!678)) (+ (size!30375 (left!31215 (c!661147 input!678))) (size!30375 (right!31545 (c!661147 input!678))))))))

(assert (=> d!1121774 (= (inv!54296 (c!661147 input!678)) e!2349999)))

(declare-fun b!3802905 () Bool)

(declare-fun res!1539616 () Bool)

(assert (=> b!3802905 (=> (not res!1539616) (not e!2349999))))

(assert (=> b!3802905 (= res!1539616 (and (not (= (left!31215 (c!661147 input!678)) Empty!12390)) (not (= (right!31545 (c!661147 input!678)) Empty!12390))))))

(declare-fun b!3802906 () Bool)

(declare-fun res!1539617 () Bool)

(assert (=> b!3802906 (=> (not res!1539617) (not e!2349999))))

(assert (=> b!3802906 (= res!1539617 (= (cheight!12601 (c!661147 input!678)) (+ (max!0 (height!1791 (left!31215 (c!661147 input!678))) (height!1791 (right!31545 (c!661147 input!678)))) 1)))))

(declare-fun b!3802907 () Bool)

(assert (=> b!3802907 (= e!2349999 (<= 0 (cheight!12601 (c!661147 input!678))))))

(assert (= (and d!1121774 res!1539615) b!3802905))

(assert (= (and b!3802905 res!1539616) b!3802906))

(assert (= (and b!3802906 res!1539617) b!3802907))

(declare-fun m!4333805 () Bool)

(assert (=> d!1121774 m!4333805))

(declare-fun m!4333807 () Bool)

(assert (=> d!1121774 m!4333807))

(declare-fun m!4333809 () Bool)

(assert (=> b!3802906 m!4333809))

(declare-fun m!4333811 () Bool)

(assert (=> b!3802906 m!4333811))

(assert (=> b!3802906 m!4333809))

(assert (=> b!3802906 m!4333811))

(declare-fun m!4333813 () Bool)

(assert (=> b!3802906 m!4333813))

(assert (=> b!3802015 d!1121774))

(declare-fun d!1121776 () Bool)

(declare-fun lt!1318520 () Bool)

(assert (=> d!1121776 (= lt!1318520 (isEmpty!23751 (list!14976 (_1!22868 lt!1318320))))))

(assert (=> d!1121776 (= lt!1318520 (isEmpty!23752 (c!661149 (_1!22868 lt!1318320))))))

(assert (=> d!1121776 (= (isEmpty!23748 (_1!22868 lt!1318320)) lt!1318520)))

(declare-fun bs!579637 () Bool)

(assert (= bs!579637 d!1121776))

(assert (=> bs!579637 m!4332701))

(assert (=> bs!579637 m!4332701))

(declare-fun m!4333815 () Bool)

(assert (=> bs!579637 m!4333815))

(declare-fun m!4333817 () Bool)

(assert (=> bs!579637 m!4333817))

(assert (=> b!3802018 d!1121776))

(declare-fun d!1121778 () Bool)

(assert (=> d!1121778 (= (list!14976 lt!1318323) (list!14980 (c!661149 lt!1318323)))))

(declare-fun bs!579638 () Bool)

(assert (= bs!579638 d!1121778))

(declare-fun m!4333819 () Bool)

(assert (=> bs!579638 m!4333819))

(assert (=> b!3802036 d!1121778))

(declare-fun b!3802917 () Bool)

(declare-fun e!2350005 () List!40470)

(assert (=> b!3802917 (= e!2350005 (Cons!40346 (h!45766 (list!14976 acc!335)) (++!10122 (t!307187 (list!14976 acc!335)) (list!14976 (_1!22868 lt!1318280)))))))

(declare-fun b!3802919 () Bool)

(declare-fun e!2350004 () Bool)

(declare-fun lt!1318523 () List!40470)

(assert (=> b!3802919 (= e!2350004 (or (not (= (list!14976 (_1!22868 lt!1318280)) Nil!40346)) (= lt!1318523 (list!14976 acc!335))))))

(declare-fun d!1121780 () Bool)

(assert (=> d!1121780 e!2350004))

(declare-fun res!1539622 () Bool)

(assert (=> d!1121780 (=> (not res!1539622) (not e!2350004))))

(declare-fun content!5952 (List!40470) (InoxSet Token!11554))

(assert (=> d!1121780 (= res!1539622 (= (content!5952 lt!1318523) ((_ map or) (content!5952 (list!14976 acc!335)) (content!5952 (list!14976 (_1!22868 lt!1318280))))))))

(assert (=> d!1121780 (= lt!1318523 e!2350005)))

(declare-fun c!661372 () Bool)

(assert (=> d!1121780 (= c!661372 ((_ is Nil!40346) (list!14976 acc!335)))))

(assert (=> d!1121780 (= (++!10122 (list!14976 acc!335) (list!14976 (_1!22868 lt!1318280))) lt!1318523)))

(declare-fun b!3802916 () Bool)

(assert (=> b!3802916 (= e!2350005 (list!14976 (_1!22868 lt!1318280)))))

(declare-fun b!3802918 () Bool)

(declare-fun res!1539623 () Bool)

(assert (=> b!3802918 (=> (not res!1539623) (not e!2350004))))

(assert (=> b!3802918 (= res!1539623 (= (size!30379 lt!1318523) (+ (size!30379 (list!14976 acc!335)) (size!30379 (list!14976 (_1!22868 lt!1318280))))))))

(assert (= (and d!1121780 c!661372) b!3802916))

(assert (= (and d!1121780 (not c!661372)) b!3802917))

(assert (= (and d!1121780 res!1539622) b!3802918))

(assert (= (and b!3802918 res!1539623) b!3802919))

(assert (=> b!3802917 m!4332713))

(declare-fun m!4333821 () Bool)

(assert (=> b!3802917 m!4333821))

(declare-fun m!4333823 () Bool)

(assert (=> d!1121780 m!4333823))

(assert (=> d!1121780 m!4332387))

(declare-fun m!4333825 () Bool)

(assert (=> d!1121780 m!4333825))

(assert (=> d!1121780 m!4332713))

(declare-fun m!4333827 () Bool)

(assert (=> d!1121780 m!4333827))

(declare-fun m!4333829 () Bool)

(assert (=> b!3802918 m!4333829))

(assert (=> b!3802918 m!4332387))

(declare-fun m!4333831 () Bool)

(assert (=> b!3802918 m!4333831))

(assert (=> b!3802918 m!4332713))

(declare-fun m!4333833 () Bool)

(assert (=> b!3802918 m!4333833))

(assert (=> b!3802036 d!1121780))

(assert (=> b!3802036 d!1121390))

(declare-fun d!1121782 () Bool)

(assert (=> d!1121782 (= (list!14976 (_1!22868 lt!1318280)) (list!14980 (c!661149 (_1!22868 lt!1318280))))))

(declare-fun bs!579639 () Bool)

(assert (= bs!579639 d!1121782))

(assert (=> bs!579639 m!4333377))

(assert (=> b!3802036 d!1121782))

(declare-fun d!1121784 () Bool)

(declare-fun res!1539628 () Bool)

(declare-fun e!2350008 () Bool)

(assert (=> d!1121784 (=> (not res!1539628) (not e!2350008))))

(assert (=> d!1121784 (= res!1539628 (<= (size!30379 (list!14984 (xs!15653 (c!661149 acc!335)))) 512))))

(assert (=> d!1121784 (= (inv!54300 (c!661149 acc!335)) e!2350008)))

(declare-fun b!3802924 () Bool)

(declare-fun res!1539629 () Bool)

(assert (=> b!3802924 (=> (not res!1539629) (not e!2350008))))

(assert (=> b!3802924 (= res!1539629 (= (csize!25013 (c!661149 acc!335)) (size!30379 (list!14984 (xs!15653 (c!661149 acc!335))))))))

(declare-fun b!3802925 () Bool)

(assert (=> b!3802925 (= e!2350008 (and (> (csize!25013 (c!661149 acc!335)) 0) (<= (csize!25013 (c!661149 acc!335)) 512)))))

(assert (= (and d!1121784 res!1539628) b!3802924))

(assert (= (and b!3802924 res!1539629) b!3802925))

(assert (=> d!1121784 m!4333667))

(assert (=> d!1121784 m!4333667))

(declare-fun m!4333835 () Bool)

(assert (=> d!1121784 m!4333835))

(assert (=> b!3802924 m!4333667))

(assert (=> b!3802924 m!4333667))

(assert (=> b!3802924 m!4333835))

(assert (=> b!3802011 d!1121784))

(declare-fun d!1121786 () Bool)

(declare-fun c!661373 () Bool)

(assert (=> d!1121786 (= c!661373 ((_ is Node!12390) (left!31215 (c!661147 treated!13))))))

(declare-fun e!2350009 () Bool)

(assert (=> d!1121786 (= (inv!54286 (left!31215 (c!661147 treated!13))) e!2350009)))

(declare-fun b!3802926 () Bool)

(assert (=> b!3802926 (= e!2350009 (inv!54296 (left!31215 (c!661147 treated!13))))))

(declare-fun b!3802927 () Bool)

(declare-fun e!2350010 () Bool)

(assert (=> b!3802927 (= e!2350009 e!2350010)))

(declare-fun res!1539630 () Bool)

(assert (=> b!3802927 (= res!1539630 (not ((_ is Leaf!19192) (left!31215 (c!661147 treated!13)))))))

(assert (=> b!3802927 (=> res!1539630 e!2350010)))

(declare-fun b!3802928 () Bool)

(assert (=> b!3802928 (= e!2350010 (inv!54297 (left!31215 (c!661147 treated!13))))))

(assert (= (and d!1121786 c!661373) b!3802926))

(assert (= (and d!1121786 (not c!661373)) b!3802927))

(assert (= (and b!3802927 (not res!1539630)) b!3802928))

(declare-fun m!4333837 () Bool)

(assert (=> b!3802926 m!4333837))

(declare-fun m!4333839 () Bool)

(assert (=> b!3802928 m!4333839))

(assert (=> b!3802064 d!1121786))

(declare-fun d!1121788 () Bool)

(declare-fun c!661374 () Bool)

(assert (=> d!1121788 (= c!661374 ((_ is Node!12390) (right!31545 (c!661147 treated!13))))))

(declare-fun e!2350011 () Bool)

(assert (=> d!1121788 (= (inv!54286 (right!31545 (c!661147 treated!13))) e!2350011)))

(declare-fun b!3802929 () Bool)

(assert (=> b!3802929 (= e!2350011 (inv!54296 (right!31545 (c!661147 treated!13))))))

(declare-fun b!3802930 () Bool)

(declare-fun e!2350012 () Bool)

(assert (=> b!3802930 (= e!2350011 e!2350012)))

(declare-fun res!1539631 () Bool)

(assert (=> b!3802930 (= res!1539631 (not ((_ is Leaf!19192) (right!31545 (c!661147 treated!13)))))))

(assert (=> b!3802930 (=> res!1539631 e!2350012)))

(declare-fun b!3802931 () Bool)

(assert (=> b!3802931 (= e!2350012 (inv!54297 (right!31545 (c!661147 treated!13))))))

(assert (= (and d!1121788 c!661374) b!3802929))

(assert (= (and d!1121788 (not c!661374)) b!3802930))

(assert (= (and b!3802930 (not res!1539631)) b!3802931))

(declare-fun m!4333841 () Bool)

(assert (=> b!3802929 m!4333841))

(declare-fun m!4333843 () Bool)

(assert (=> b!3802931 m!4333843))

(assert (=> b!3802064 d!1121788))

(declare-fun d!1121790 () Bool)

(declare-fun res!1539632 () Bool)

(declare-fun e!2350013 () Bool)

(assert (=> d!1121790 (=> (not res!1539632) (not e!2350013))))

(assert (=> d!1121790 (= res!1539632 (<= (size!30374 (list!14983 (xs!15652 (c!661147 input!678)))) 512))))

(assert (=> d!1121790 (= (inv!54297 (c!661147 input!678)) e!2350013)))

(declare-fun b!3802932 () Bool)

(declare-fun res!1539633 () Bool)

(assert (=> b!3802932 (=> (not res!1539633) (not e!2350013))))

(assert (=> b!3802932 (= res!1539633 (= (csize!25011 (c!661147 input!678)) (size!30374 (list!14983 (xs!15652 (c!661147 input!678))))))))

(declare-fun b!3802933 () Bool)

(assert (=> b!3802933 (= e!2350013 (and (> (csize!25011 (c!661147 input!678)) 0) (<= (csize!25011 (c!661147 input!678)) 512)))))

(assert (= (and d!1121790 res!1539632) b!3802932))

(assert (= (and b!3802932 res!1539633) b!3802933))

(assert (=> d!1121790 m!4333693))

(assert (=> d!1121790 m!4333693))

(declare-fun m!4333845 () Bool)

(assert (=> d!1121790 m!4333845))

(assert (=> b!3802932 m!4333693))

(assert (=> b!3802932 m!4333693))

(assert (=> b!3802932 m!4333845))

(assert (=> b!3802017 d!1121790))

(declare-fun d!1121792 () Bool)

(assert (=> d!1121792 (= (list!14976 (_1!22868 lt!1318320)) (list!14980 (c!661149 (_1!22868 lt!1318320))))))

(declare-fun bs!579640 () Bool)

(assert (= bs!579640 d!1121792))

(declare-fun m!4333847 () Bool)

(assert (=> bs!579640 m!4333847))

(assert (=> b!3802020 d!1121792))

(declare-fun b!3802934 () Bool)

(declare-fun e!2350014 () tuple2!39474)

(assert (=> b!3802934 (= e!2350014 (tuple2!39475 Nil!40346 (list!14975 totalInput!335)))))

(declare-fun b!3802935 () Bool)

(declare-fun lt!1318526 () Option!8620)

(declare-fun lt!1318525 () tuple2!39474)

(assert (=> b!3802935 (= e!2350014 (tuple2!39475 (Cons!40346 (_1!22874 (v!38843 lt!1318526)) (_1!22871 lt!1318525)) (_2!22871 lt!1318525)))))

(assert (=> b!3802935 (= lt!1318525 (lexList!1569 thiss!11876 rules!1265 (_2!22874 (v!38843 lt!1318526))))))

(declare-fun b!3802937 () Bool)

(declare-fun e!2350016 () Bool)

(declare-fun e!2350015 () Bool)

(assert (=> b!3802937 (= e!2350016 e!2350015)))

(declare-fun res!1539634 () Bool)

(declare-fun lt!1318524 () tuple2!39474)

(assert (=> b!3802937 (= res!1539634 (< (size!30374 (_2!22871 lt!1318524)) (size!30374 (list!14975 totalInput!335))))))

(assert (=> b!3802937 (=> (not res!1539634) (not e!2350015))))

(declare-fun b!3802938 () Bool)

(assert (=> b!3802938 (= e!2350016 (= (_2!22871 lt!1318524) (list!14975 totalInput!335)))))

(declare-fun d!1121794 () Bool)

(assert (=> d!1121794 e!2350016))

(declare-fun c!661375 () Bool)

(assert (=> d!1121794 (= c!661375 (> (size!30379 (_1!22871 lt!1318524)) 0))))

(assert (=> d!1121794 (= lt!1318524 e!2350014)))

(declare-fun c!661376 () Bool)

(assert (=> d!1121794 (= c!661376 ((_ is Some!8619) lt!1318526))))

(assert (=> d!1121794 (= lt!1318526 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 totalInput!335)))))

(assert (=> d!1121794 (= (lexList!1569 thiss!11876 rules!1265 (list!14975 totalInput!335)) lt!1318524)))

(declare-fun b!3802936 () Bool)

(assert (=> b!3802936 (= e!2350015 (not (isEmpty!23751 (_1!22871 lt!1318524))))))

(assert (= (and d!1121794 c!661376) b!3802935))

(assert (= (and d!1121794 (not c!661376)) b!3802934))

(assert (= (and d!1121794 c!661375) b!3802937))

(assert (= (and d!1121794 (not c!661375)) b!3802938))

(assert (= (and b!3802937 res!1539634) b!3802936))

(declare-fun m!4333849 () Bool)

(assert (=> b!3802935 m!4333849))

(declare-fun m!4333851 () Bool)

(assert (=> b!3802937 m!4333851))

(assert (=> b!3802937 m!4332423))

(assert (=> b!3802937 m!4333615))

(declare-fun m!4333853 () Bool)

(assert (=> d!1121794 m!4333853))

(assert (=> d!1121794 m!4332423))

(declare-fun m!4333855 () Bool)

(assert (=> d!1121794 m!4333855))

(declare-fun m!4333857 () Bool)

(assert (=> b!3802936 m!4333857))

(assert (=> b!3802020 d!1121794))

(assert (=> b!3802020 d!1121470))

(assert (=> b!3801813 d!1121380))

(declare-fun b!3802939 () Bool)

(declare-fun e!2350017 () List!40468)

(assert (=> b!3802939 (= e!2350017 Nil!40344)))

(declare-fun b!3802940 () Bool)

(declare-fun e!2350018 () List!40468)

(assert (=> b!3802940 (= e!2350017 e!2350018)))

(declare-fun c!661378 () Bool)

(assert (=> b!3802940 (= c!661378 ((_ is Leaf!19192) (c!661147 (_2!22868 lt!1318280))))))

(declare-fun d!1121796 () Bool)

(declare-fun c!661377 () Bool)

(assert (=> d!1121796 (= c!661377 ((_ is Empty!12390) (c!661147 (_2!22868 lt!1318280))))))

(assert (=> d!1121796 (= (list!14979 (c!661147 (_2!22868 lt!1318280))) e!2350017)))

(declare-fun b!3802942 () Bool)

(assert (=> b!3802942 (= e!2350018 (++!10118 (list!14979 (left!31215 (c!661147 (_2!22868 lt!1318280)))) (list!14979 (right!31545 (c!661147 (_2!22868 lt!1318280))))))))

(declare-fun b!3802941 () Bool)

(assert (=> b!3802941 (= e!2350018 (list!14983 (xs!15652 (c!661147 (_2!22868 lt!1318280)))))))

(assert (= (and d!1121796 c!661377) b!3802939))

(assert (= (and d!1121796 (not c!661377)) b!3802940))

(assert (= (and b!3802940 c!661378) b!3802941))

(assert (= (and b!3802940 (not c!661378)) b!3802942))

(declare-fun m!4333859 () Bool)

(assert (=> b!3802942 m!4333859))

(declare-fun m!4333861 () Bool)

(assert (=> b!3802942 m!4333861))

(assert (=> b!3802942 m!4333859))

(assert (=> b!3802942 m!4333861))

(declare-fun m!4333863 () Bool)

(assert (=> b!3802942 m!4333863))

(declare-fun m!4333865 () Bool)

(assert (=> b!3802941 m!4333865))

(assert (=> d!1121374 d!1121796))

(assert (=> b!3802022 d!1121726))

(assert (=> b!3802022 d!1121794))

(assert (=> b!3802022 d!1121470))

(declare-fun b!3802943 () Bool)

(declare-fun e!2350019 () Bool)

(declare-fun e!2350020 () Bool)

(assert (=> b!3802943 (= e!2350019 e!2350020)))

(declare-fun res!1539637 () Bool)

(assert (=> b!3802943 (=> (not res!1539637) (not e!2350020))))

(assert (=> b!3802943 (= res!1539637 (<= (- 1) (- (height!1791 (left!31215 (c!661147 input!678))) (height!1791 (right!31545 (c!661147 input!678))))))))

(declare-fun b!3802944 () Bool)

(assert (=> b!3802944 (= e!2350020 (not (isEmpty!23754 (right!31545 (c!661147 input!678)))))))

(declare-fun b!3802945 () Bool)

(declare-fun res!1539635 () Bool)

(assert (=> b!3802945 (=> (not res!1539635) (not e!2350020))))

(assert (=> b!3802945 (= res!1539635 (isBalanced!3573 (right!31545 (c!661147 input!678))))))

(declare-fun b!3802946 () Bool)

(declare-fun res!1539636 () Bool)

(assert (=> b!3802946 (=> (not res!1539636) (not e!2350020))))

(assert (=> b!3802946 (= res!1539636 (not (isEmpty!23754 (left!31215 (c!661147 input!678)))))))

(declare-fun b!3802947 () Bool)

(declare-fun res!1539638 () Bool)

(assert (=> b!3802947 (=> (not res!1539638) (not e!2350020))))

(assert (=> b!3802947 (= res!1539638 (<= (- (height!1791 (left!31215 (c!661147 input!678))) (height!1791 (right!31545 (c!661147 input!678)))) 1))))

(declare-fun d!1121798 () Bool)

(declare-fun res!1539639 () Bool)

(assert (=> d!1121798 (=> res!1539639 e!2350019)))

(assert (=> d!1121798 (= res!1539639 (not ((_ is Node!12390) (c!661147 input!678))))))

(assert (=> d!1121798 (= (isBalanced!3573 (c!661147 input!678)) e!2350019)))

(declare-fun b!3802948 () Bool)

(declare-fun res!1539640 () Bool)

(assert (=> b!3802948 (=> (not res!1539640) (not e!2350020))))

(assert (=> b!3802948 (= res!1539640 (isBalanced!3573 (left!31215 (c!661147 input!678))))))

(assert (= (and d!1121798 (not res!1539639)) b!3802943))

(assert (= (and b!3802943 res!1539637) b!3802947))

(assert (= (and b!3802947 res!1539638) b!3802948))

(assert (= (and b!3802948 res!1539640) b!3802945))

(assert (= (and b!3802945 res!1539635) b!3802946))

(assert (= (and b!3802946 res!1539636) b!3802944))

(declare-fun m!4333867 () Bool)

(assert (=> b!3802948 m!4333867))

(declare-fun m!4333869 () Bool)

(assert (=> b!3802946 m!4333869))

(declare-fun m!4333871 () Bool)

(assert (=> b!3802945 m!4333871))

(assert (=> b!3802947 m!4333809))

(assert (=> b!3802947 m!4333811))

(assert (=> b!3802943 m!4333809))

(assert (=> b!3802943 m!4333811))

(declare-fun m!4333873 () Bool)

(assert (=> b!3802944 m!4333873))

(assert (=> d!1121448 d!1121798))

(declare-fun d!1121800 () Bool)

(declare-fun e!2350021 () Bool)

(assert (=> d!1121800 e!2350021))

(declare-fun res!1539641 () Bool)

(assert (=> d!1121800 (=> (not res!1539641) (not e!2350021))))

(assert (=> d!1121800 (= res!1539641 (isBalanced!3574 (prepend!1352 (c!661149 (_1!22868 lt!1318318)) (_1!22872 (v!38839 lt!1318319)))))))

(declare-fun lt!1318527 () BalanceConc!24376)

(assert (=> d!1121800 (= lt!1318527 (BalanceConc!24377 (prepend!1352 (c!661149 (_1!22868 lt!1318318)) (_1!22872 (v!38839 lt!1318319)))))))

(assert (=> d!1121800 (= (prepend!1350 (_1!22868 lt!1318318) (_1!22872 (v!38839 lt!1318319))) lt!1318527)))

(declare-fun b!3802949 () Bool)

(assert (=> b!3802949 (= e!2350021 (= (list!14976 lt!1318527) (Cons!40346 (_1!22872 (v!38839 lt!1318319)) (list!14976 (_1!22868 lt!1318318)))))))

(assert (= (and d!1121800 res!1539641) b!3802949))

(declare-fun m!4333875 () Bool)

(assert (=> d!1121800 m!4333875))

(assert (=> d!1121800 m!4333875))

(declare-fun m!4333877 () Bool)

(assert (=> d!1121800 m!4333877))

(declare-fun m!4333879 () Bool)

(assert (=> b!3802949 m!4333879))

(declare-fun m!4333881 () Bool)

(assert (=> b!3802949 m!4333881))

(assert (=> b!3802024 d!1121800))

(declare-fun b!3802950 () Bool)

(declare-fun e!2350022 () Bool)

(declare-fun lt!1318530 () tuple2!39468)

(assert (=> b!3802950 (= e!2350022 (not (isEmpty!23748 (_1!22868 lt!1318530))))))

(declare-fun b!3802951 () Bool)

(declare-fun e!2350023 () tuple2!39468)

(assert (=> b!3802951 (= e!2350023 (tuple2!39469 (BalanceConc!24377 Empty!12391) (_2!22872 (v!38839 lt!1318319))))))

(declare-fun b!3802952 () Bool)

(declare-fun res!1539643 () Bool)

(declare-fun e!2350025 () Bool)

(assert (=> b!3802952 (=> (not res!1539643) (not e!2350025))))

(assert (=> b!3802952 (= res!1539643 (= (list!14976 (_1!22868 lt!1318530)) (_1!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 (_2!22872 (v!38839 lt!1318319)))))))))

(declare-fun d!1121802 () Bool)

(assert (=> d!1121802 e!2350025))

(declare-fun res!1539644 () Bool)

(assert (=> d!1121802 (=> (not res!1539644) (not e!2350025))))

(declare-fun e!2350024 () Bool)

(assert (=> d!1121802 (= res!1539644 e!2350024)))

(declare-fun c!661380 () Bool)

(assert (=> d!1121802 (= c!661380 (> (size!30376 (_1!22868 lt!1318530)) 0))))

(assert (=> d!1121802 (= lt!1318530 e!2350023)))

(declare-fun c!661379 () Bool)

(declare-fun lt!1318529 () Option!8618)

(assert (=> d!1121802 (= c!661379 ((_ is Some!8617) lt!1318529))))

(assert (=> d!1121802 (= lt!1318529 (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318319))))))

(assert (=> d!1121802 (= (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318319))) lt!1318530)))

(declare-fun b!3802953 () Bool)

(assert (=> b!3802953 (= e!2350024 e!2350022)))

(declare-fun res!1539642 () Bool)

(assert (=> b!3802953 (= res!1539642 (< (size!30370 (_2!22868 lt!1318530)) (size!30370 (_2!22872 (v!38839 lt!1318319)))))))

(assert (=> b!3802953 (=> (not res!1539642) (not e!2350022))))

(declare-fun b!3802954 () Bool)

(assert (=> b!3802954 (= e!2350025 (= (list!14975 (_2!22868 lt!1318530)) (_2!22871 (lexList!1569 thiss!11876 rules!1265 (list!14975 (_2!22872 (v!38839 lt!1318319)))))))))

(declare-fun b!3802955 () Bool)

(assert (=> b!3802955 (= e!2350024 (= (list!14975 (_2!22868 lt!1318530)) (list!14975 (_2!22872 (v!38839 lt!1318319)))))))

(declare-fun b!3802956 () Bool)

(declare-fun lt!1318528 () tuple2!39468)

(assert (=> b!3802956 (= e!2350023 (tuple2!39469 (prepend!1350 (_1!22868 lt!1318528) (_1!22872 (v!38839 lt!1318529))) (_2!22868 lt!1318528)))))

(assert (=> b!3802956 (= lt!1318528 (lexRec!821 thiss!11876 rules!1265 (_2!22872 (v!38839 lt!1318529))))))

(assert (= (and d!1121802 c!661379) b!3802956))

(assert (= (and d!1121802 (not c!661379)) b!3802951))

(assert (= (and d!1121802 c!661380) b!3802953))

(assert (= (and d!1121802 (not c!661380)) b!3802955))

(assert (= (and b!3802953 res!1539642) b!3802950))

(assert (= (and d!1121802 res!1539644) b!3802952))

(assert (= (and b!3802952 res!1539643) b!3802954))

(declare-fun m!4333883 () Bool)

(assert (=> b!3802954 m!4333883))

(declare-fun m!4333885 () Bool)

(assert (=> b!3802954 m!4333885))

(assert (=> b!3802954 m!4333885))

(declare-fun m!4333887 () Bool)

(assert (=> b!3802954 m!4333887))

(assert (=> b!3802955 m!4333883))

(assert (=> b!3802955 m!4333885))

(declare-fun m!4333889 () Bool)

(assert (=> d!1121802 m!4333889))

(declare-fun m!4333891 () Bool)

(assert (=> d!1121802 m!4333891))

(declare-fun m!4333893 () Bool)

(assert (=> b!3802950 m!4333893))

(declare-fun m!4333895 () Bool)

(assert (=> b!3802956 m!4333895))

(declare-fun m!4333897 () Bool)

(assert (=> b!3802956 m!4333897))

(declare-fun m!4333899 () Bool)

(assert (=> b!3802953 m!4333899))

(declare-fun m!4333901 () Bool)

(assert (=> b!3802953 m!4333901))

(declare-fun m!4333903 () Bool)

(assert (=> b!3802952 m!4333903))

(assert (=> b!3802952 m!4333885))

(assert (=> b!3802952 m!4333885))

(assert (=> b!3802952 m!4333887))

(assert (=> b!3802024 d!1121802))

(declare-fun b!3802957 () Bool)

(declare-fun e!2350026 () Bool)

(declare-fun e!2350027 () Bool)

(assert (=> b!3802957 (= e!2350026 e!2350027)))

(declare-fun res!1539647 () Bool)

(assert (=> b!3802957 (=> (not res!1539647) (not e!2350027))))

(assert (=> b!3802957 (= res!1539647 (<= (- 1) (- (height!1791 (left!31215 (c!661147 totalInput!335))) (height!1791 (right!31545 (c!661147 totalInput!335))))))))

(declare-fun b!3802958 () Bool)

(assert (=> b!3802958 (= e!2350027 (not (isEmpty!23754 (right!31545 (c!661147 totalInput!335)))))))

(declare-fun b!3802959 () Bool)

(declare-fun res!1539645 () Bool)

(assert (=> b!3802959 (=> (not res!1539645) (not e!2350027))))

(assert (=> b!3802959 (= res!1539645 (isBalanced!3573 (right!31545 (c!661147 totalInput!335))))))

(declare-fun b!3802960 () Bool)

(declare-fun res!1539646 () Bool)

(assert (=> b!3802960 (=> (not res!1539646) (not e!2350027))))

(assert (=> b!3802960 (= res!1539646 (not (isEmpty!23754 (left!31215 (c!661147 totalInput!335)))))))

(declare-fun b!3802961 () Bool)

(declare-fun res!1539648 () Bool)

(assert (=> b!3802961 (=> (not res!1539648) (not e!2350027))))

(assert (=> b!3802961 (= res!1539648 (<= (- (height!1791 (left!31215 (c!661147 totalInput!335))) (height!1791 (right!31545 (c!661147 totalInput!335)))) 1))))

(declare-fun d!1121804 () Bool)

(declare-fun res!1539649 () Bool)

(assert (=> d!1121804 (=> res!1539649 e!2350026)))

(assert (=> d!1121804 (= res!1539649 (not ((_ is Node!12390) (c!661147 totalInput!335))))))

(assert (=> d!1121804 (= (isBalanced!3573 (c!661147 totalInput!335)) e!2350026)))

(declare-fun b!3802962 () Bool)

(declare-fun res!1539650 () Bool)

(assert (=> b!3802962 (=> (not res!1539650) (not e!2350027))))

(assert (=> b!3802962 (= res!1539650 (isBalanced!3573 (left!31215 (c!661147 totalInput!335))))))

(assert (= (and d!1121804 (not res!1539649)) b!3802957))

(assert (= (and b!3802957 res!1539647) b!3802961))

(assert (= (and b!3802961 res!1539648) b!3802962))

(assert (= (and b!3802962 res!1539650) b!3802959))

(assert (= (and b!3802959 res!1539645) b!3802960))

(assert (= (and b!3802960 res!1539646) b!3802958))

(declare-fun m!4333905 () Bool)

(assert (=> b!3802962 m!4333905))

(declare-fun m!4333907 () Bool)

(assert (=> b!3802960 m!4333907))

(declare-fun m!4333909 () Bool)

(assert (=> b!3802959 m!4333909))

(assert (=> b!3802961 m!4332935))

(assert (=> b!3802961 m!4332937))

(assert (=> b!3802957 m!4332935))

(assert (=> b!3802957 m!4332937))

(declare-fun m!4333911 () Bool)

(assert (=> b!3802958 m!4333911))

(assert (=> d!1121454 d!1121804))

(declare-fun d!1121806 () Bool)

(assert (=> d!1121806 true))

(declare-fun lt!1318533 () Bool)

(assert (=> d!1121806 (= lt!1318533 (rulesValidInductive!2178 thiss!11876 rules!1265))))

(declare-fun lambda!125649 () Int)

(declare-fun forall!8255 (List!40471 Int) Bool)

(assert (=> d!1121806 (= lt!1318533 (forall!8255 rules!1265 lambda!125649))))

(assert (=> d!1121806 (= (rulesValid!2392 thiss!11876 rules!1265) lt!1318533)))

(declare-fun bs!579641 () Bool)

(assert (= bs!579641 d!1121806))

(assert (=> bs!579641 m!4333147))

(declare-fun m!4333913 () Bool)

(assert (=> bs!579641 m!4333913))

(assert (=> d!1121446 d!1121806))

(declare-fun d!1121808 () Bool)

(declare-fun lt!1318534 () Int)

(assert (=> d!1121808 (= lt!1318534 (size!30379 (list!14976 (_1!22868 lt!1318320))))))

(assert (=> d!1121808 (= lt!1318534 (size!30380 (c!661149 (_1!22868 lt!1318320))))))

(assert (=> d!1121808 (= (size!30376 (_1!22868 lt!1318320)) lt!1318534)))

(declare-fun bs!579642 () Bool)

(assert (= bs!579642 d!1121808))

(assert (=> bs!579642 m!4332701))

(assert (=> bs!579642 m!4332701))

(declare-fun m!4333915 () Bool)

(assert (=> bs!579642 m!4333915))

(declare-fun m!4333917 () Bool)

(assert (=> bs!579642 m!4333917))

(assert (=> d!1121460 d!1121808))

(declare-fun lt!1318541 () Option!8618)

(declare-fun e!2350033 () Bool)

(declare-fun b!3802965 () Bool)

(assert (=> b!3802965 (= e!2350033 (= (list!14975 (_2!22872 (get!13376 lt!1318541))) (_2!22874 (get!13377 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 totalInput!335))))))))

(declare-fun b!3802966 () Bool)

(declare-fun e!2350031 () Bool)

(assert (=> b!3802966 (= e!2350031 (= (list!14975 (_2!22872 (get!13376 lt!1318541))) (_2!22874 (get!13377 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 totalInput!335))))))))

(declare-fun b!3802967 () Bool)

(declare-fun e!2350028 () Option!8618)

(declare-fun call!279152 () Option!8618)

(assert (=> b!3802967 (= e!2350028 call!279152)))

(declare-fun b!3802968 () Bool)

(declare-fun e!2350030 () Bool)

(assert (=> b!3802968 (= e!2350030 e!2350031)))

(declare-fun res!1539652 () Bool)

(assert (=> b!3802968 (=> (not res!1539652) (not e!2350031))))

(assert (=> b!3802968 (= res!1539652 (= (_1!22872 (get!13376 lt!1318541)) (_1!22874 (get!13377 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 totalInput!335))))))))

(declare-fun b!3802970 () Bool)

(declare-fun e!2350032 () Bool)

(declare-fun e!2350029 () Bool)

(assert (=> b!3802970 (= e!2350032 e!2350029)))

(declare-fun res!1539655 () Bool)

(assert (=> b!3802970 (=> res!1539655 e!2350029)))

(assert (=> b!3802970 (= res!1539655 (not (isDefined!6782 lt!1318541)))))

(declare-fun bm!279147 () Bool)

(assert (=> bm!279147 (= call!279152 (maxPrefixOneRuleZipperSequence!558 thiss!11876 (h!45767 rules!1265) totalInput!335))))

(declare-fun b!3802971 () Bool)

(declare-fun lt!1318538 () Option!8618)

(declare-fun lt!1318535 () Option!8618)

(assert (=> b!3802971 (= e!2350028 (ite (and ((_ is None!8617) lt!1318538) ((_ is None!8617) lt!1318535)) None!8617 (ite ((_ is None!8617) lt!1318535) lt!1318538 (ite ((_ is None!8617) lt!1318538) lt!1318535 (ite (>= (size!30369 (_1!22872 (v!38839 lt!1318538))) (size!30369 (_1!22872 (v!38839 lt!1318535)))) lt!1318538 lt!1318535)))))))

(assert (=> b!3802971 (= lt!1318538 call!279152)))

(assert (=> b!3802971 (= lt!1318535 (maxPrefixZipperSequence!1203 thiss!11876 (t!307188 rules!1265) totalInput!335))))

(declare-fun b!3802972 () Bool)

(declare-fun res!1539651 () Bool)

(assert (=> b!3802972 (=> (not res!1539651) (not e!2350032))))

(assert (=> b!3802972 (= res!1539651 e!2350030)))

(declare-fun res!1539654 () Bool)

(assert (=> b!3802972 (=> res!1539654 e!2350030)))

(assert (=> b!3802972 (= res!1539654 (not (isDefined!6782 lt!1318541)))))

(declare-fun d!1121810 () Bool)

(assert (=> d!1121810 e!2350032))

(declare-fun res!1539656 () Bool)

(assert (=> d!1121810 (=> (not res!1539656) (not e!2350032))))

(assert (=> d!1121810 (= res!1539656 (= (isDefined!6782 lt!1318541) (isDefined!6783 (maxPrefixZipper!543 thiss!11876 rules!1265 (list!14975 totalInput!335)))))))

(assert (=> d!1121810 (= lt!1318541 e!2350028)))

(declare-fun c!661381 () Bool)

(assert (=> d!1121810 (= c!661381 (and ((_ is Cons!40347) rules!1265) ((_ is Nil!40347) (t!307188 rules!1265))))))

(declare-fun lt!1318539 () Unit!58092)

(declare-fun lt!1318536 () Unit!58092)

(assert (=> d!1121810 (= lt!1318539 lt!1318536)))

(declare-fun lt!1318540 () List!40468)

(declare-fun lt!1318537 () List!40468)

(assert (=> d!1121810 (isPrefix!3319 lt!1318540 lt!1318537)))

(assert (=> d!1121810 (= lt!1318536 (lemmaIsPrefixRefl!2104 lt!1318540 lt!1318537))))

(assert (=> d!1121810 (= lt!1318537 (list!14975 totalInput!335))))

(assert (=> d!1121810 (= lt!1318540 (list!14975 totalInput!335))))

(assert (=> d!1121810 (rulesValidInductive!2178 thiss!11876 rules!1265)))

(assert (=> d!1121810 (= (maxPrefixZipperSequence!1203 thiss!11876 rules!1265 totalInput!335) lt!1318541)))

(declare-fun b!3802969 () Bool)

(assert (=> b!3802969 (= e!2350029 e!2350033)))

(declare-fun res!1539653 () Bool)

(assert (=> b!3802969 (=> (not res!1539653) (not e!2350033))))

(assert (=> b!3802969 (= res!1539653 (= (_1!22872 (get!13376 lt!1318541)) (_1!22874 (get!13377 (maxPrefix!3111 thiss!11876 rules!1265 (list!14975 totalInput!335))))))))

(assert (= (and d!1121810 c!661381) b!3802967))

(assert (= (and d!1121810 (not c!661381)) b!3802971))

(assert (= (or b!3802967 b!3802971) bm!279147))

(assert (= (and d!1121810 res!1539656) b!3802972))

(assert (= (and b!3802972 (not res!1539654)) b!3802968))

(assert (= (and b!3802968 res!1539652) b!3802966))

(assert (= (and b!3802972 res!1539651) b!3802970))

(assert (= (and b!3802970 (not res!1539655)) b!3802969))

(assert (= (and b!3802969 res!1539653) b!3802965))

(declare-fun m!4333919 () Bool)

(assert (=> b!3802971 m!4333919))

(declare-fun m!4333921 () Bool)

(assert (=> b!3802970 m!4333921))

(declare-fun m!4333923 () Bool)

(assert (=> b!3802969 m!4333923))

(assert (=> b!3802969 m!4332423))

(assert (=> b!3802969 m!4332423))

(assert (=> b!3802969 m!4333855))

(assert (=> b!3802969 m!4333855))

(declare-fun m!4333925 () Bool)

(assert (=> b!3802969 m!4333925))

(assert (=> b!3802965 m!4332423))

(assert (=> b!3802965 m!4333923))

(assert (=> b!3802965 m!4333855))

(assert (=> b!3802965 m!4333925))

(assert (=> b!3802965 m!4332423))

(assert (=> b!3802965 m!4333855))

(declare-fun m!4333927 () Bool)

(assert (=> b!3802965 m!4333927))

(assert (=> b!3802968 m!4333923))

(assert (=> b!3802968 m!4332423))

(assert (=> b!3802968 m!4332423))

(declare-fun m!4333929 () Bool)

(assert (=> b!3802968 m!4333929))

(assert (=> b!3802968 m!4333929))

(declare-fun m!4333931 () Bool)

(assert (=> b!3802968 m!4333931))

(assert (=> b!3802972 m!4333921))

(assert (=> b!3802966 m!4332423))

(assert (=> b!3802966 m!4333929))

(assert (=> b!3802966 m!4333931))

(assert (=> b!3802966 m!4333923))

(assert (=> b!3802966 m!4332423))

(assert (=> b!3802966 m!4333929))

(assert (=> b!3802966 m!4333927))

(assert (=> d!1121810 m!4332423))

(assert (=> d!1121810 m!4333921))

(assert (=> d!1121810 m!4332423))

(assert (=> d!1121810 m!4333929))

(declare-fun m!4333933 () Bool)

(assert (=> d!1121810 m!4333933))

(declare-fun m!4333935 () Bool)

(assert (=> d!1121810 m!4333935))

(assert (=> d!1121810 m!4333929))

(declare-fun m!4333937 () Bool)

(assert (=> d!1121810 m!4333937))

(assert (=> d!1121810 m!4333147))

(declare-fun m!4333939 () Bool)

(assert (=> bm!279147 m!4333939))

(assert (=> d!1121460 d!1121810))

(declare-fun b!3802973 () Bool)

(declare-fun e!2350034 () List!40468)

(assert (=> b!3802973 (= e!2350034 Nil!40344)))

(declare-fun b!3802974 () Bool)

(declare-fun e!2350035 () List!40468)

(assert (=> b!3802974 (= e!2350034 e!2350035)))

(declare-fun c!661383 () Bool)

(assert (=> b!3802974 (= c!661383 ((_ is Leaf!19192) (c!661147 treated!13)))))

(declare-fun d!1121812 () Bool)

(declare-fun c!661382 () Bool)

(assert (=> d!1121812 (= c!661382 ((_ is Empty!12390) (c!661147 treated!13)))))

(assert (=> d!1121812 (= (list!14979 (c!661147 treated!13)) e!2350034)))

(declare-fun b!3802976 () Bool)

(assert (=> b!3802976 (= e!2350035 (++!10118 (list!14979 (left!31215 (c!661147 treated!13))) (list!14979 (right!31545 (c!661147 treated!13)))))))

(declare-fun b!3802975 () Bool)

(assert (=> b!3802975 (= e!2350035 (list!14983 (xs!15652 (c!661147 treated!13))))))

(assert (= (and d!1121812 c!661382) b!3802973))

(assert (= (and d!1121812 (not c!661382)) b!3802974))

(assert (= (and b!3802974 c!661383) b!3802975))

(assert (= (and b!3802974 (not c!661383)) b!3802976))

(declare-fun m!4333941 () Bool)

(assert (=> b!3802976 m!4333941))

(declare-fun m!4333943 () Bool)

(assert (=> b!3802976 m!4333943))

(assert (=> b!3802976 m!4333941))

(assert (=> b!3802976 m!4333943))

(declare-fun m!4333945 () Bool)

(assert (=> b!3802976 m!4333945))

(assert (=> b!3802975 m!4333669))

(assert (=> d!1121474 d!1121812))

(declare-fun b!3802977 () Bool)

(declare-fun e!2350036 () List!40468)

(assert (=> b!3802977 (= e!2350036 Nil!40344)))

(declare-fun b!3802978 () Bool)

(declare-fun e!2350037 () List!40468)

(assert (=> b!3802978 (= e!2350036 e!2350037)))

(declare-fun c!661385 () Bool)

(assert (=> b!3802978 (= c!661385 ((_ is Leaf!19192) (c!661147 (_2!22868 lt!1318281))))))

(declare-fun d!1121814 () Bool)

(declare-fun c!661384 () Bool)

(assert (=> d!1121814 (= c!661384 ((_ is Empty!12390) (c!661147 (_2!22868 lt!1318281))))))

(assert (=> d!1121814 (= (list!14979 (c!661147 (_2!22868 lt!1318281))) e!2350036)))

(declare-fun b!3802980 () Bool)

(assert (=> b!3802980 (= e!2350037 (++!10118 (list!14979 (left!31215 (c!661147 (_2!22868 lt!1318281)))) (list!14979 (right!31545 (c!661147 (_2!22868 lt!1318281))))))))

(declare-fun b!3802979 () Bool)

(assert (=> b!3802979 (= e!2350037 (list!14983 (xs!15652 (c!661147 (_2!22868 lt!1318281)))))))

(assert (= (and d!1121814 c!661384) b!3802977))

(assert (= (and d!1121814 (not c!661384)) b!3802978))

(assert (= (and b!3802978 c!661385) b!3802979))

(assert (= (and b!3802978 (not c!661385)) b!3802980))

(declare-fun m!4333947 () Bool)

(assert (=> b!3802980 m!4333947))

(declare-fun m!4333949 () Bool)

(assert (=> b!3802980 m!4333949))

(assert (=> b!3802980 m!4333947))

(assert (=> b!3802980 m!4333949))

(declare-fun m!4333951 () Bool)

(assert (=> b!3802980 m!4333951))

(declare-fun m!4333953 () Bool)

(assert (=> b!3802979 m!4333953))

(assert (=> d!1121384 d!1121814))

(declare-fun d!1121816 () Bool)

(declare-fun c!661386 () Bool)

(assert (=> d!1121816 (= c!661386 ((_ is Node!12391) (left!31216 (c!661149 acc!335))))))

(declare-fun e!2350038 () Bool)

(assert (=> d!1121816 (= (inv!54290 (left!31216 (c!661149 acc!335))) e!2350038)))

(declare-fun b!3802981 () Bool)

(assert (=> b!3802981 (= e!2350038 (inv!54299 (left!31216 (c!661149 acc!335))))))

(declare-fun b!3802982 () Bool)

(declare-fun e!2350039 () Bool)

(assert (=> b!3802982 (= e!2350038 e!2350039)))

(declare-fun res!1539657 () Bool)

(assert (=> b!3802982 (= res!1539657 (not ((_ is Leaf!19193) (left!31216 (c!661149 acc!335)))))))

(assert (=> b!3802982 (=> res!1539657 e!2350039)))

(declare-fun b!3802983 () Bool)

(assert (=> b!3802983 (= e!2350039 (inv!54300 (left!31216 (c!661149 acc!335))))))

(assert (= (and d!1121816 c!661386) b!3802981))

(assert (= (and d!1121816 (not c!661386)) b!3802982))

(assert (= (and b!3802982 (not res!1539657)) b!3802983))

(declare-fun m!4333955 () Bool)

(assert (=> b!3802981 m!4333955))

(declare-fun m!4333957 () Bool)

(assert (=> b!3802983 m!4333957))

(assert (=> b!3802106 d!1121816))

(declare-fun d!1121818 () Bool)

(declare-fun c!661387 () Bool)

(assert (=> d!1121818 (= c!661387 ((_ is Node!12391) (right!31546 (c!661149 acc!335))))))

(declare-fun e!2350040 () Bool)

(assert (=> d!1121818 (= (inv!54290 (right!31546 (c!661149 acc!335))) e!2350040)))

(declare-fun b!3802984 () Bool)

(assert (=> b!3802984 (= e!2350040 (inv!54299 (right!31546 (c!661149 acc!335))))))

(declare-fun b!3802985 () Bool)

(declare-fun e!2350041 () Bool)

(assert (=> b!3802985 (= e!2350040 e!2350041)))

(declare-fun res!1539658 () Bool)

(assert (=> b!3802985 (= res!1539658 (not ((_ is Leaf!19193) (right!31546 (c!661149 acc!335)))))))

(assert (=> b!3802985 (=> res!1539658 e!2350041)))

(declare-fun b!3802986 () Bool)

(assert (=> b!3802986 (= e!2350041 (inv!54300 (right!31546 (c!661149 acc!335))))))

(assert (= (and d!1121818 c!661387) b!3802984))

(assert (= (and d!1121818 (not c!661387)) b!3802985))

(assert (= (and b!3802985 (not res!1539658)) b!3802986))

(declare-fun m!4333959 () Bool)

(assert (=> b!3802984 m!4333959))

(declare-fun m!4333961 () Bool)

(assert (=> b!3802986 m!4333961))

(assert (=> b!3802106 d!1121818))

(declare-fun d!1121820 () Bool)

(declare-fun c!661388 () Bool)

(assert (=> d!1121820 (= c!661388 ((_ is Node!12390) (left!31215 (c!661147 input!678))))))

(declare-fun e!2350042 () Bool)

(assert (=> d!1121820 (= (inv!54286 (left!31215 (c!661147 input!678))) e!2350042)))

(declare-fun b!3802987 () Bool)

(assert (=> b!3802987 (= e!2350042 (inv!54296 (left!31215 (c!661147 input!678))))))

(declare-fun b!3802988 () Bool)

(declare-fun e!2350043 () Bool)

(assert (=> b!3802988 (= e!2350042 e!2350043)))

(declare-fun res!1539659 () Bool)

(assert (=> b!3802988 (= res!1539659 (not ((_ is Leaf!19192) (left!31215 (c!661147 input!678)))))))

(assert (=> b!3802988 (=> res!1539659 e!2350043)))

(declare-fun b!3802989 () Bool)

(assert (=> b!3802989 (= e!2350043 (inv!54297 (left!31215 (c!661147 input!678))))))

(assert (= (and d!1121820 c!661388) b!3802987))

(assert (= (and d!1121820 (not c!661388)) b!3802988))

(assert (= (and b!3802988 (not res!1539659)) b!3802989))

(declare-fun m!4333963 () Bool)

(assert (=> b!3802987 m!4333963))

(declare-fun m!4333965 () Bool)

(assert (=> b!3802989 m!4333965))

(assert (=> b!3802081 d!1121820))

(declare-fun d!1121822 () Bool)

(declare-fun c!661389 () Bool)

(assert (=> d!1121822 (= c!661389 ((_ is Node!12390) (right!31545 (c!661147 input!678))))))

(declare-fun e!2350044 () Bool)

(assert (=> d!1121822 (= (inv!54286 (right!31545 (c!661147 input!678))) e!2350044)))

(declare-fun b!3802990 () Bool)

(assert (=> b!3802990 (= e!2350044 (inv!54296 (right!31545 (c!661147 input!678))))))

(declare-fun b!3802991 () Bool)

(declare-fun e!2350045 () Bool)

(assert (=> b!3802991 (= e!2350044 e!2350045)))

(declare-fun res!1539660 () Bool)

(assert (=> b!3802991 (= res!1539660 (not ((_ is Leaf!19192) (right!31545 (c!661147 input!678)))))))

(assert (=> b!3802991 (=> res!1539660 e!2350045)))

(declare-fun b!3802992 () Bool)

(assert (=> b!3802992 (= e!2350045 (inv!54297 (right!31545 (c!661147 input!678))))))

(assert (= (and d!1121822 c!661389) b!3802990))

(assert (= (and d!1121822 (not c!661389)) b!3802991))

(assert (= (and b!3802991 (not res!1539660)) b!3802992))

(declare-fun m!4333967 () Bool)

(assert (=> b!3802990 m!4333967))

(declare-fun m!4333969 () Bool)

(assert (=> b!3802992 m!4333969))

(assert (=> b!3802081 d!1121822))

(declare-fun b!3802993 () Bool)

(declare-fun e!2350046 () List!40470)

(assert (=> b!3802993 (= e!2350046 Nil!40346)))

(declare-fun b!3802996 () Bool)

(declare-fun e!2350047 () List!40470)

(assert (=> b!3802996 (= e!2350047 (++!10122 (list!14980 (left!31216 (c!661149 (_1!22868 lt!1318279)))) (list!14980 (right!31546 (c!661149 (_1!22868 lt!1318279))))))))

(declare-fun b!3802994 () Bool)

(assert (=> b!3802994 (= e!2350046 e!2350047)))

(declare-fun c!661391 () Bool)

(assert (=> b!3802994 (= c!661391 ((_ is Leaf!19193) (c!661149 (_1!22868 lt!1318279))))))

(declare-fun d!1121824 () Bool)

(declare-fun c!661390 () Bool)

(assert (=> d!1121824 (= c!661390 ((_ is Empty!12391) (c!661149 (_1!22868 lt!1318279))))))

(assert (=> d!1121824 (= (list!14980 (c!661149 (_1!22868 lt!1318279))) e!2350046)))

(declare-fun b!3802995 () Bool)

(assert (=> b!3802995 (= e!2350047 (list!14984 (xs!15653 (c!661149 (_1!22868 lt!1318279)))))))

(assert (= (and d!1121824 c!661390) b!3802993))

(assert (= (and d!1121824 (not c!661390)) b!3802994))

(assert (= (and b!3802994 c!661391) b!3802995))

(assert (= (and b!3802994 (not c!661391)) b!3802996))

(declare-fun m!4333971 () Bool)

(assert (=> b!3802996 m!4333971))

(declare-fun m!4333973 () Bool)

(assert (=> b!3802996 m!4333973))

(assert (=> b!3802996 m!4333971))

(assert (=> b!3802996 m!4333973))

(declare-fun m!4333975 () Bool)

(assert (=> b!3802996 m!4333975))

(declare-fun m!4333977 () Bool)

(assert (=> b!3802995 m!4333977))

(assert (=> d!1121464 d!1121824))

(declare-fun b!3803010 () Bool)

(declare-fun b_free!101321 () Bool)

(declare-fun b_next!102025 () Bool)

(assert (=> b!3803010 (= b_free!101321 (not b_next!102025))))

(declare-fun tp!1155205 () Bool)

(declare-fun b_and!282719 () Bool)

(assert (=> b!3803010 (= tp!1155205 b_and!282719)))

(declare-fun b_free!101323 () Bool)

(declare-fun b_next!102027 () Bool)

(assert (=> b!3803010 (= b_free!101323 (not b_next!102027))))

(declare-fun tp!1155204 () Bool)

(declare-fun b_and!282721 () Bool)

(assert (=> b!3803010 (= tp!1155204 b_and!282721)))

(declare-fun e!2350065 () Bool)

(assert (=> b!3803010 (= e!2350065 (and tp!1155205 tp!1155204))))

(declare-fun b!3803009 () Bool)

(declare-fun tp!1155203 () Bool)

(declare-fun e!2350062 () Bool)

(assert (=> b!3803009 (= e!2350062 (and tp!1155203 (inv!54280 (tag!7068 (rule!9004 (h!45766 (innerList!12451 (xs!15653 (c!661149 acc!335))))))) (inv!54289 (transformation!6208 (rule!9004 (h!45766 (innerList!12451 (xs!15653 (c!661149 acc!335))))))) e!2350065))))

(declare-fun e!2350061 () Bool)

(assert (=> b!3802108 (= tp!1155111 e!2350061)))

(declare-fun e!2350060 () Bool)

(declare-fun tp!1155201 () Bool)

(declare-fun b!3803007 () Bool)

(declare-fun inv!54304 (Token!11554) Bool)

(assert (=> b!3803007 (= e!2350061 (and (inv!54304 (h!45766 (innerList!12451 (xs!15653 (c!661149 acc!335))))) e!2350060 tp!1155201))))

(declare-fun b!3803008 () Bool)

(declare-fun tp!1155202 () Bool)

(declare-fun inv!21 (TokenValue!6438) Bool)

(assert (=> b!3803008 (= e!2350060 (and (inv!21 (value!197535 (h!45766 (innerList!12451 (xs!15653 (c!661149 acc!335)))))) e!2350062 tp!1155202))))

(assert (= b!3803009 b!3803010))

(assert (= b!3803008 b!3803009))

(assert (= b!3803007 b!3803008))

(assert (= (and b!3802108 ((_ is Cons!40346) (innerList!12451 (xs!15653 (c!661149 acc!335))))) b!3803007))

(declare-fun m!4333979 () Bool)

(assert (=> b!3803009 m!4333979))

(declare-fun m!4333981 () Bool)

(assert (=> b!3803009 m!4333981))

(declare-fun m!4333983 () Bool)

(assert (=> b!3803007 m!4333983))

(declare-fun m!4333985 () Bool)

(assert (=> b!3803008 m!4333985))

(declare-fun b!3803011 () Bool)

(declare-fun tp!1155207 () Bool)

(declare-fun e!2350066 () Bool)

(declare-fun tp!1155206 () Bool)

(assert (=> b!3803011 (= e!2350066 (and (inv!54286 (left!31215 (left!31215 (c!661147 treated!13)))) tp!1155206 (inv!54286 (right!31545 (left!31215 (c!661147 treated!13)))) tp!1155207))))

(declare-fun b!3803013 () Bool)

(declare-fun e!2350067 () Bool)

(declare-fun tp!1155208 () Bool)

(assert (=> b!3803013 (= e!2350067 tp!1155208)))

(declare-fun b!3803012 () Bool)

(assert (=> b!3803012 (= e!2350066 (and (inv!54301 (xs!15652 (left!31215 (c!661147 treated!13)))) e!2350067))))

(assert (=> b!3802064 (= tp!1155068 (and (inv!54286 (left!31215 (c!661147 treated!13))) e!2350066))))

(assert (= (and b!3802064 ((_ is Node!12390) (left!31215 (c!661147 treated!13)))) b!3803011))

(assert (= b!3803012 b!3803013))

(assert (= (and b!3802064 ((_ is Leaf!19192) (left!31215 (c!661147 treated!13)))) b!3803012))

(declare-fun m!4333987 () Bool)

(assert (=> b!3803011 m!4333987))

(declare-fun m!4333989 () Bool)

(assert (=> b!3803011 m!4333989))

(declare-fun m!4333991 () Bool)

(assert (=> b!3803012 m!4333991))

(assert (=> b!3802064 m!4332763))

(declare-fun b!3803014 () Bool)

(declare-fun tp!1155210 () Bool)

(declare-fun tp!1155209 () Bool)

(declare-fun e!2350068 () Bool)

(assert (=> b!3803014 (= e!2350068 (and (inv!54286 (left!31215 (right!31545 (c!661147 treated!13)))) tp!1155209 (inv!54286 (right!31545 (right!31545 (c!661147 treated!13)))) tp!1155210))))

(declare-fun b!3803016 () Bool)

(declare-fun e!2350069 () Bool)

(declare-fun tp!1155211 () Bool)

(assert (=> b!3803016 (= e!2350069 tp!1155211)))

(declare-fun b!3803015 () Bool)

(assert (=> b!3803015 (= e!2350068 (and (inv!54301 (xs!15652 (right!31545 (c!661147 treated!13)))) e!2350069))))

(assert (=> b!3802064 (= tp!1155069 (and (inv!54286 (right!31545 (c!661147 treated!13))) e!2350068))))

(assert (= (and b!3802064 ((_ is Node!12390) (right!31545 (c!661147 treated!13)))) b!3803014))

(assert (= b!3803015 b!3803016))

(assert (= (and b!3802064 ((_ is Leaf!19192) (right!31545 (c!661147 treated!13)))) b!3803015))

(declare-fun m!4333993 () Bool)

(assert (=> b!3803014 m!4333993))

(declare-fun m!4333995 () Bool)

(assert (=> b!3803014 m!4333995))

(declare-fun m!4333997 () Bool)

(assert (=> b!3803015 m!4333997))

(assert (=> b!3802064 m!4332765))

(declare-fun b!3803021 () Bool)

(declare-fun e!2350072 () Bool)

(declare-fun tp!1155214 () Bool)

(assert (=> b!3803021 (= e!2350072 (and tp_is_empty!19181 tp!1155214))))

(assert (=> b!3802083 (= tp!1155088 e!2350072)))

(assert (= (and b!3802083 ((_ is Cons!40344) (innerList!12450 (xs!15652 (c!661147 input!678))))) b!3803021))

(declare-fun b!3803024 () Bool)

(declare-fun e!2350073 () Bool)

(declare-fun tp!1155215 () Bool)

(assert (=> b!3803024 (= e!2350073 tp!1155215)))

(declare-fun b!3803025 () Bool)

(declare-fun tp!1155218 () Bool)

(declare-fun tp!1155216 () Bool)

(assert (=> b!3803025 (= e!2350073 (and tp!1155218 tp!1155216))))

(declare-fun b!3803022 () Bool)

(assert (=> b!3803022 (= e!2350073 tp_is_empty!19181)))

(declare-fun b!3803023 () Bool)

(declare-fun tp!1155219 () Bool)

(declare-fun tp!1155217 () Bool)

(assert (=> b!3803023 (= e!2350073 (and tp!1155219 tp!1155217))))

(assert (=> b!3802078 (= tp!1155085 e!2350073)))

(assert (= (and b!3802078 ((_ is ElementMatch!11113) (regOne!22738 (regex!6208 (h!45767 rules!1265))))) b!3803022))

(assert (= (and b!3802078 ((_ is Concat!17552) (regOne!22738 (regex!6208 (h!45767 rules!1265))))) b!3803023))

(assert (= (and b!3802078 ((_ is Star!11113) (regOne!22738 (regex!6208 (h!45767 rules!1265))))) b!3803024))

(assert (= (and b!3802078 ((_ is Union!11113) (regOne!22738 (regex!6208 (h!45767 rules!1265))))) b!3803025))

(declare-fun b!3803028 () Bool)

(declare-fun e!2350074 () Bool)

(declare-fun tp!1155220 () Bool)

(assert (=> b!3803028 (= e!2350074 tp!1155220)))

(declare-fun b!3803029 () Bool)

(declare-fun tp!1155223 () Bool)

(declare-fun tp!1155221 () Bool)

(assert (=> b!3803029 (= e!2350074 (and tp!1155223 tp!1155221))))

(declare-fun b!3803026 () Bool)

(assert (=> b!3803026 (= e!2350074 tp_is_empty!19181)))

(declare-fun b!3803027 () Bool)

(declare-fun tp!1155224 () Bool)

(declare-fun tp!1155222 () Bool)

(assert (=> b!3803027 (= e!2350074 (and tp!1155224 tp!1155222))))

(assert (=> b!3802078 (= tp!1155083 e!2350074)))

(assert (= (and b!3802078 ((_ is ElementMatch!11113) (regTwo!22738 (regex!6208 (h!45767 rules!1265))))) b!3803026))

(assert (= (and b!3802078 ((_ is Concat!17552) (regTwo!22738 (regex!6208 (h!45767 rules!1265))))) b!3803027))

(assert (= (and b!3802078 ((_ is Star!11113) (regTwo!22738 (regex!6208 (h!45767 rules!1265))))) b!3803028))

(assert (= (and b!3802078 ((_ is Union!11113) (regTwo!22738 (regex!6208 (h!45767 rules!1265))))) b!3803029))

(declare-fun b!3803032 () Bool)

(declare-fun b_free!101325 () Bool)

(declare-fun b_next!102029 () Bool)

(assert (=> b!3803032 (= b_free!101325 (not b_next!102029))))

(declare-fun tp!1155227 () Bool)

(declare-fun b_and!282723 () Bool)

(assert (=> b!3803032 (= tp!1155227 b_and!282723)))

(declare-fun b_free!101327 () Bool)

(declare-fun b_next!102031 () Bool)

(assert (=> b!3803032 (= b_free!101327 (not b_next!102031))))

(declare-fun tp!1155228 () Bool)

(declare-fun b_and!282725 () Bool)

(assert (=> b!3803032 (= tp!1155228 b_and!282725)))

(declare-fun e!2350075 () Bool)

(assert (=> b!3803032 (= e!2350075 (and tp!1155227 tp!1155228))))

(declare-fun tp!1155225 () Bool)

(declare-fun b!3803031 () Bool)

(declare-fun e!2350076 () Bool)

(assert (=> b!3803031 (= e!2350076 (and tp!1155225 (inv!54280 (tag!7068 (h!45767 (t!307188 (t!307188 rules!1265))))) (inv!54289 (transformation!6208 (h!45767 (t!307188 (t!307188 rules!1265))))) e!2350075))))

(declare-fun b!3803030 () Bool)

(declare-fun e!2350077 () Bool)

(declare-fun tp!1155226 () Bool)

(assert (=> b!3803030 (= e!2350077 (and e!2350076 tp!1155226))))

(assert (=> b!3802092 (= tp!1155098 e!2350077)))

(assert (= b!3803031 b!3803032))

(assert (= b!3803030 b!3803031))

(assert (= (and b!3802092 ((_ is Cons!40347) (t!307188 (t!307188 rules!1265)))) b!3803030))

(declare-fun m!4333999 () Bool)

(assert (=> b!3803031 m!4333999))

(declare-fun m!4334001 () Bool)

(assert (=> b!3803031 m!4334001))

(declare-fun b!3803033 () Bool)

(declare-fun e!2350079 () Bool)

(declare-fun tp!1155229 () Bool)

(assert (=> b!3803033 (= e!2350079 (and tp_is_empty!19181 tp!1155229))))

(assert (=> b!3802066 (= tp!1155070 e!2350079)))

(assert (= (and b!3802066 ((_ is Cons!40344) (innerList!12450 (xs!15652 (c!661147 treated!13))))) b!3803033))

(declare-fun b!3803036 () Bool)

(declare-fun e!2350080 () Bool)

(declare-fun tp!1155230 () Bool)

(assert (=> b!3803036 (= e!2350080 tp!1155230)))

(declare-fun b!3803037 () Bool)

(declare-fun tp!1155233 () Bool)

(declare-fun tp!1155231 () Bool)

(assert (=> b!3803037 (= e!2350080 (and tp!1155233 tp!1155231))))

(declare-fun b!3803034 () Bool)

(assert (=> b!3803034 (= e!2350080 tp_is_empty!19181)))

(declare-fun b!3803035 () Bool)

(declare-fun tp!1155234 () Bool)

(declare-fun tp!1155232 () Bool)

(assert (=> b!3803035 (= e!2350080 (and tp!1155234 tp!1155232))))

(assert (=> b!3802093 (= tp!1155097 e!2350080)))

(assert (= (and b!3802093 ((_ is ElementMatch!11113) (regex!6208 (h!45767 (t!307188 rules!1265))))) b!3803034))

(assert (= (and b!3802093 ((_ is Concat!17552) (regex!6208 (h!45767 (t!307188 rules!1265))))) b!3803035))

(assert (= (and b!3802093 ((_ is Star!11113) (regex!6208 (h!45767 (t!307188 rules!1265))))) b!3803036))

(assert (= (and b!3802093 ((_ is Union!11113) (regex!6208 (h!45767 (t!307188 rules!1265))))) b!3803037))

(declare-fun b!3803040 () Bool)

(declare-fun e!2350081 () Bool)

(declare-fun tp!1155235 () Bool)

(assert (=> b!3803040 (= e!2350081 tp!1155235)))

(declare-fun b!3803041 () Bool)

(declare-fun tp!1155238 () Bool)

(declare-fun tp!1155236 () Bool)

(assert (=> b!3803041 (= e!2350081 (and tp!1155238 tp!1155236))))

(declare-fun b!3803038 () Bool)

(assert (=> b!3803038 (= e!2350081 tp_is_empty!19181)))

(declare-fun b!3803039 () Bool)

(declare-fun tp!1155239 () Bool)

(declare-fun tp!1155237 () Bool)

(assert (=> b!3803039 (= e!2350081 (and tp!1155239 tp!1155237))))

(assert (=> b!3802079 (= tp!1155081 e!2350081)))

(assert (= (and b!3802079 ((_ is ElementMatch!11113) (reg!11442 (regex!6208 (h!45767 rules!1265))))) b!3803038))

(assert (= (and b!3802079 ((_ is Concat!17552) (reg!11442 (regex!6208 (h!45767 rules!1265))))) b!3803039))

(assert (= (and b!3802079 ((_ is Star!11113) (reg!11442 (regex!6208 (h!45767 rules!1265))))) b!3803040))

(assert (= (and b!3802079 ((_ is Union!11113) (reg!11442 (regex!6208 (h!45767 rules!1265))))) b!3803041))

(declare-fun b!3803044 () Bool)

(declare-fun e!2350082 () Bool)

(declare-fun tp!1155240 () Bool)

(assert (=> b!3803044 (= e!2350082 tp!1155240)))

(declare-fun b!3803045 () Bool)

(declare-fun tp!1155243 () Bool)

(declare-fun tp!1155241 () Bool)

(assert (=> b!3803045 (= e!2350082 (and tp!1155243 tp!1155241))))

(declare-fun b!3803042 () Bool)

(assert (=> b!3803042 (= e!2350082 tp_is_empty!19181)))

(declare-fun b!3803043 () Bool)

(declare-fun tp!1155244 () Bool)

(declare-fun tp!1155242 () Bool)

(assert (=> b!3803043 (= e!2350082 (and tp!1155244 tp!1155242))))

(assert (=> b!3802080 (= tp!1155084 e!2350082)))

(assert (= (and b!3802080 ((_ is ElementMatch!11113) (regOne!22739 (regex!6208 (h!45767 rules!1265))))) b!3803042))

(assert (= (and b!3802080 ((_ is Concat!17552) (regOne!22739 (regex!6208 (h!45767 rules!1265))))) b!3803043))

(assert (= (and b!3802080 ((_ is Star!11113) (regOne!22739 (regex!6208 (h!45767 rules!1265))))) b!3803044))

(assert (= (and b!3802080 ((_ is Union!11113) (regOne!22739 (regex!6208 (h!45767 rules!1265))))) b!3803045))

(declare-fun b!3803048 () Bool)

(declare-fun e!2350083 () Bool)

(declare-fun tp!1155245 () Bool)

(assert (=> b!3803048 (= e!2350083 tp!1155245)))

(declare-fun b!3803049 () Bool)

(declare-fun tp!1155248 () Bool)

(declare-fun tp!1155246 () Bool)

(assert (=> b!3803049 (= e!2350083 (and tp!1155248 tp!1155246))))

(declare-fun b!3803046 () Bool)

(assert (=> b!3803046 (= e!2350083 tp_is_empty!19181)))

(declare-fun b!3803047 () Bool)

(declare-fun tp!1155249 () Bool)

(declare-fun tp!1155247 () Bool)

(assert (=> b!3803047 (= e!2350083 (and tp!1155249 tp!1155247))))

(assert (=> b!3802080 (= tp!1155082 e!2350083)))

(assert (= (and b!3802080 ((_ is ElementMatch!11113) (regTwo!22739 (regex!6208 (h!45767 rules!1265))))) b!3803046))

(assert (= (and b!3802080 ((_ is Concat!17552) (regTwo!22739 (regex!6208 (h!45767 rules!1265))))) b!3803047))

(assert (= (and b!3802080 ((_ is Star!11113) (regTwo!22739 (regex!6208 (h!45767 rules!1265))))) b!3803048))

(assert (= (and b!3802080 ((_ is Union!11113) (regTwo!22739 (regex!6208 (h!45767 rules!1265))))) b!3803049))

(declare-fun b!3803050 () Bool)

(declare-fun tp!1155250 () Bool)

(declare-fun e!2350084 () Bool)

(declare-fun tp!1155251 () Bool)

(assert (=> b!3803050 (= e!2350084 (and (inv!54286 (left!31215 (left!31215 (c!661147 totalInput!335)))) tp!1155250 (inv!54286 (right!31545 (left!31215 (c!661147 totalInput!335)))) tp!1155251))))

(declare-fun b!3803052 () Bool)

(declare-fun e!2350085 () Bool)

(declare-fun tp!1155252 () Bool)

(assert (=> b!3803052 (= e!2350085 tp!1155252)))

(declare-fun b!3803051 () Bool)

(assert (=> b!3803051 (= e!2350084 (and (inv!54301 (xs!15652 (left!31215 (c!661147 totalInput!335)))) e!2350085))))

(assert (=> b!3802095 (= tp!1155101 (and (inv!54286 (left!31215 (c!661147 totalInput!335))) e!2350084))))

(assert (= (and b!3802095 ((_ is Node!12390) (left!31215 (c!661147 totalInput!335)))) b!3803050))

(assert (= b!3803051 b!3803052))

(assert (= (and b!3802095 ((_ is Leaf!19192) (left!31215 (c!661147 totalInput!335)))) b!3803051))

(declare-fun m!4334003 () Bool)

(assert (=> b!3803050 m!4334003))

(declare-fun m!4334005 () Bool)

(assert (=> b!3803050 m!4334005))

(declare-fun m!4334007 () Bool)

(assert (=> b!3803051 m!4334007))

(assert (=> b!3802095 m!4332779))

(declare-fun e!2350086 () Bool)

(declare-fun b!3803053 () Bool)

(declare-fun tp!1155254 () Bool)

(declare-fun tp!1155253 () Bool)

(assert (=> b!3803053 (= e!2350086 (and (inv!54286 (left!31215 (right!31545 (c!661147 totalInput!335)))) tp!1155253 (inv!54286 (right!31545 (right!31545 (c!661147 totalInput!335)))) tp!1155254))))

(declare-fun b!3803055 () Bool)

(declare-fun e!2350087 () Bool)

(declare-fun tp!1155255 () Bool)

(assert (=> b!3803055 (= e!2350087 tp!1155255)))

(declare-fun b!3803054 () Bool)

(assert (=> b!3803054 (= e!2350086 (and (inv!54301 (xs!15652 (right!31545 (c!661147 totalInput!335)))) e!2350087))))

(assert (=> b!3802095 (= tp!1155102 (and (inv!54286 (right!31545 (c!661147 totalInput!335))) e!2350086))))

(assert (= (and b!3802095 ((_ is Node!12390) (right!31545 (c!661147 totalInput!335)))) b!3803053))

(assert (= b!3803054 b!3803055))

(assert (= (and b!3802095 ((_ is Leaf!19192) (right!31545 (c!661147 totalInput!335)))) b!3803054))

(declare-fun m!4334009 () Bool)

(assert (=> b!3803053 m!4334009))

(declare-fun m!4334011 () Bool)

(assert (=> b!3803053 m!4334011))

(declare-fun m!4334013 () Bool)

(assert (=> b!3803054 m!4334013))

(assert (=> b!3802095 m!4332781))

(declare-fun b!3803056 () Bool)

(declare-fun e!2350088 () Bool)

(declare-fun tp!1155256 () Bool)

(assert (=> b!3803056 (= e!2350088 (and tp_is_empty!19181 tp!1155256))))

(assert (=> b!3802097 (= tp!1155103 e!2350088)))

(assert (= (and b!3802097 ((_ is Cons!40344) (innerList!12450 (xs!15652 (c!661147 totalInput!335))))) b!3803056))

(declare-fun b!3803057 () Bool)

(declare-fun tp!1155257 () Bool)

(declare-fun tp!1155259 () Bool)

(declare-fun e!2350089 () Bool)

(assert (=> b!3803057 (= e!2350089 (and (inv!54290 (left!31216 (left!31216 (c!661149 acc!335)))) tp!1155259 (inv!54290 (right!31546 (left!31216 (c!661149 acc!335)))) tp!1155257))))

(declare-fun b!3803059 () Bool)

(declare-fun e!2350090 () Bool)

(declare-fun tp!1155258 () Bool)

(assert (=> b!3803059 (= e!2350090 tp!1155258)))

(declare-fun b!3803058 () Bool)

(assert (=> b!3803058 (= e!2350089 (and (inv!54302 (xs!15653 (left!31216 (c!661149 acc!335)))) e!2350090))))

(assert (=> b!3802106 (= tp!1155112 (and (inv!54290 (left!31216 (c!661149 acc!335))) e!2350089))))

(assert (= (and b!3802106 ((_ is Node!12391) (left!31216 (c!661149 acc!335)))) b!3803057))

(assert (= b!3803058 b!3803059))

(assert (= (and b!3802106 ((_ is Leaf!19193) (left!31216 (c!661149 acc!335)))) b!3803058))

(declare-fun m!4334015 () Bool)

(assert (=> b!3803057 m!4334015))

(declare-fun m!4334017 () Bool)

(assert (=> b!3803057 m!4334017))

(declare-fun m!4334019 () Bool)

(assert (=> b!3803058 m!4334019))

(assert (=> b!3802106 m!4332785))

(declare-fun tp!1155262 () Bool)

(declare-fun tp!1155260 () Bool)

(declare-fun e!2350091 () Bool)

(declare-fun b!3803060 () Bool)

(assert (=> b!3803060 (= e!2350091 (and (inv!54290 (left!31216 (right!31546 (c!661149 acc!335)))) tp!1155262 (inv!54290 (right!31546 (right!31546 (c!661149 acc!335)))) tp!1155260))))

(declare-fun b!3803062 () Bool)

(declare-fun e!2350092 () Bool)

(declare-fun tp!1155261 () Bool)

(assert (=> b!3803062 (= e!2350092 tp!1155261)))

(declare-fun b!3803061 () Bool)

(assert (=> b!3803061 (= e!2350091 (and (inv!54302 (xs!15653 (right!31546 (c!661149 acc!335)))) e!2350092))))

(assert (=> b!3802106 (= tp!1155110 (and (inv!54290 (right!31546 (c!661149 acc!335))) e!2350091))))

(assert (= (and b!3802106 ((_ is Node!12391) (right!31546 (c!661149 acc!335)))) b!3803060))

(assert (= b!3803061 b!3803062))

(assert (= (and b!3802106 ((_ is Leaf!19193) (right!31546 (c!661149 acc!335)))) b!3803061))

(declare-fun m!4334021 () Bool)

(assert (=> b!3803060 m!4334021))

(declare-fun m!4334023 () Bool)

(assert (=> b!3803060 m!4334023))

(declare-fun m!4334025 () Bool)

(assert (=> b!3803061 m!4334025))

(assert (=> b!3802106 m!4332787))

(declare-fun e!2350093 () Bool)

(declare-fun tp!1155263 () Bool)

(declare-fun b!3803063 () Bool)

(declare-fun tp!1155264 () Bool)

(assert (=> b!3803063 (= e!2350093 (and (inv!54286 (left!31215 (left!31215 (c!661147 input!678)))) tp!1155263 (inv!54286 (right!31545 (left!31215 (c!661147 input!678)))) tp!1155264))))

(declare-fun b!3803065 () Bool)

(declare-fun e!2350094 () Bool)

(declare-fun tp!1155265 () Bool)

(assert (=> b!3803065 (= e!2350094 tp!1155265)))

(declare-fun b!3803064 () Bool)

(assert (=> b!3803064 (= e!2350093 (and (inv!54301 (xs!15652 (left!31215 (c!661147 input!678)))) e!2350094))))

(assert (=> b!3802081 (= tp!1155086 (and (inv!54286 (left!31215 (c!661147 input!678))) e!2350093))))

(assert (= (and b!3802081 ((_ is Node!12390) (left!31215 (c!661147 input!678)))) b!3803063))

(assert (= b!3803064 b!3803065))

(assert (= (and b!3802081 ((_ is Leaf!19192) (left!31215 (c!661147 input!678)))) b!3803064))

(declare-fun m!4334027 () Bool)

(assert (=> b!3803063 m!4334027))

(declare-fun m!4334029 () Bool)

(assert (=> b!3803063 m!4334029))

(declare-fun m!4334031 () Bool)

(assert (=> b!3803064 m!4334031))

(assert (=> b!3802081 m!4332769))

(declare-fun b!3803066 () Bool)

(declare-fun tp!1155267 () Bool)

(declare-fun tp!1155266 () Bool)

(declare-fun e!2350095 () Bool)

(assert (=> b!3803066 (= e!2350095 (and (inv!54286 (left!31215 (right!31545 (c!661147 input!678)))) tp!1155266 (inv!54286 (right!31545 (right!31545 (c!661147 input!678)))) tp!1155267))))

(declare-fun b!3803068 () Bool)

(declare-fun e!2350096 () Bool)

(declare-fun tp!1155268 () Bool)

(assert (=> b!3803068 (= e!2350096 tp!1155268)))

(declare-fun b!3803067 () Bool)

(assert (=> b!3803067 (= e!2350095 (and (inv!54301 (xs!15652 (right!31545 (c!661147 input!678)))) e!2350096))))

(assert (=> b!3802081 (= tp!1155087 (and (inv!54286 (right!31545 (c!661147 input!678))) e!2350095))))

(assert (= (and b!3802081 ((_ is Node!12390) (right!31545 (c!661147 input!678)))) b!3803066))

(assert (= b!3803067 b!3803068))

(assert (= (and b!3802081 ((_ is Leaf!19192) (right!31545 (c!661147 input!678)))) b!3803067))

(declare-fun m!4334033 () Bool)

(assert (=> b!3803066 m!4334033))

(declare-fun m!4334035 () Bool)

(assert (=> b!3803066 m!4334035))

(declare-fun m!4334037 () Bool)

(assert (=> b!3803067 m!4334037))

(assert (=> b!3802081 m!4332771))

(check-sat (not b!3802836) (not b!3802454) (not b!3803066) (not b!3802987) (not b!3802285) (not b!3802980) b_and!282707 (not d!1121808) (not d!1121712) (not d!1121754) (not b!3802837) (not b!3803057) (not b!3802976) (not b!3802199) (not bm!279095) (not b!3802767) (not b!3802203) (not b!3802603) (not b!3803054) (not b!3802882) (not b!3802932) (not b!3802648) (not b!3802926) (not b!3803052) (not b!3802790) (not b!3802840) (not b!3802704) (not b!3803060) (not b!3802278) (not bm!279134) (not d!1121696) (not d!1121780) (not b!3802990) (not b!3802983) (not b!3803053) (not b!3802276) (not b!3802776) (not b!3803007) (not b!3803025) (not b!3803056) (not d!1121742) (not b!3803041) (not b!3802415) (not d!1121792) (not d!1121576) (not b!3802417) (not b!3803048) (not b!3803058) (not b!3802972) (not b!3802802) (not b!3802599) (not b!3802598) (not b!3802455) (not b!3802839) (not b!3802610) (not b!3802895) (not b!3802835) (not b!3802277) (not b!3802937) (not b!3802903) (not b!3802989) (not b!3802843) (not b_next!102015) (not b!3802961) (not b!3803063) (not b!3802812) b_and!282709 (not d!1121534) (not b!3802801) (not d!1121714) (not d!1121774) (not b!3803037) (not b!3802996) (not d!1121604) b_and!282719 (not b!3802958) b_and!282699 (not b!3802211) (not b!3802773) (not b!3802780) (not b!3803049) (not d!1121778) (not b!3802986) (not b!3803055) (not b!3803023) (not d!1121760) (not b!3802949) (not b!3803050) (not b!3802935) (not b!3803030) (not b!3802705) (not b!3802866) (not d!1121772) (not b!3803064) (not b!3803040) (not b!3802906) (not b!3802201) (not b!3802959) (not b!3802810) (not d!1121682) (not b!3802992) (not b!3802881) (not b!3803028) (not b!3803035) (not d!1121734) (not b!3802845) (not b!3803029) (not b!3802064) (not bm!279146) (not b!3802707) (not b!3802838) b_and!282723 (not b!3802414) (not d!1121790) (not b!3803013) (not b!3802770) (not b!3802966) (not d!1121508) (not b!3802945) (not b!3803061) (not b!3802929) (not bm!279147) (not b_next!102031) (not d!1121512) (not d!1121514) (not b!3802774) (not b!3802788) (not b!3803051) (not b!3802821) tp_is_empty!19181 b_and!282701 (not b!3802867) (not b!3802459) (not b!3802965) (not b!3802779) (not b!3802969) (not b!3802817) (not b!3802106) (not b!3802809) (not b!3802894) (not bm!279133) (not b!3802768) (not b!3802458) (not b!3802946) (not d!1121708) (not b!3802950) (not b!3802924) (not d!1121738) (not b!3802869) (not b!3802412) (not b!3802984) (not b!3802457) (not b!3802786) b_and!282725 (not b!3802608) (not b!3802877) (not b_next!102025) (not d!1121566) (not b!3802943) (not d!1121752) (not d!1121746) (not b!3802947) (not b!3802931) (not b!3803036) (not b!3803015) (not b!3803009) (not b!3802979) (not d!1121536) (not b!3802593) (not b!3802952) (not b!3802886) (not d!1121538) (not b!3802876) (not b!3802981) (not b_next!102007) (not b!3802995) (not d!1121762) (not d!1121806) (not b!3802818) (not b!3802692) (not d!1121672) (not b!3802917) (not b!3802957) (not b!3802960) (not b!3802944) (not b!3802456) (not b!3802871) (not d!1121722) (not b!3803045) (not d!1121728) (not b!3802962) (not b!3802956) (not b!3802941) (not d!1121766) (not b!3802953) (not b!3803067) (not b!3802282) (not b!3802772) (not b!3803039) (not b!3803065) (not d!1121782) (not b!3802706) (not b!3802411) (not b!3802936) (not b!3803059) (not b!3802418) (not bm!279140) (not b!3802968) (not b!3802283) (not d!1121784) (not b!3802955) (not b!3802948) (not d!1121710) (not b!3803016) (not b_next!102005) (not b!3803033) (not b!3802169) (not b!3803047) (not b!3803012) (not b!3803008) (not bm!279139) (not b!3802889) (not d!1121776) (not b!3802888) (not b!3802416) (not b!3802971) (not d!1121802) (not b!3802883) (not d!1121620) (not d!1121568) (not b!3803024) (not b!3802701) (not b!3802816) (not b!3803062) (not d!1121744) (not b!3802975) (not b!3802822) (not d!1121732) (not b!3803011) (not b!3802777) (not b!3802942) (not b!3802844) (not b!3803043) (not b!3802841) (not d!1121794) (not b!3803027) (not b!3803014) (not b!3803068) (not d!1121800) (not bm!279144) (not b!3802954) (not b_next!102029) (not b_next!102027) (not b!3802280) (not b!3803044) (not b!3802081) (not b!3802880) (not d!1121740) (not b!3802887) (not b!3802970) (not bm!279143) b_and!282721 (not b!3802703) (not b!3802885) (not b!3802778) (not bm!279130) (not b!3803021) (not b!3802834) (not d!1121726) (not d!1121810) (not b!3802928) (not b!3802872) (not b_next!102013) (not b!3802771) (not b!3802095) (not b!3802769) (not d!1121600) (not b!3802873) (not d!1121574) (not d!1121768) (not b!3803031) (not b!3802918))
(check-sat b_and!282707 (not b_next!102015) b_and!282709 b_and!282723 (not b_next!102007) (not b_next!102005) b_and!282719 b_and!282699 (not b_next!102031) b_and!282701 b_and!282725 (not b_next!102025) (not b_next!102027) (not b_next!102029) b_and!282721 (not b_next!102013))
