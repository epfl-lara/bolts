; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!302926 () Bool)

(assert start!302926)

(declare-fun b!3225175 () Bool)

(declare-fun b_free!85953 () Bool)

(declare-fun b_next!86657 () Bool)

(assert (=> b!3225175 (= b_free!85953 (not b_next!86657))))

(declare-fun tp!1016137 () Bool)

(declare-fun b_and!215775 () Bool)

(assert (=> b!3225175 (= tp!1016137 b_and!215775)))

(declare-fun b_free!85955 () Bool)

(declare-fun b_next!86659 () Bool)

(assert (=> b!3225175 (= b_free!85955 (not b_next!86659))))

(declare-fun tp!1016139 () Bool)

(declare-fun b_and!215777 () Bool)

(assert (=> b!3225175 (= tp!1016139 b_and!215777)))

(declare-fun b!3225163 () Bool)

(declare-fun b_free!85957 () Bool)

(declare-fun b_next!86661 () Bool)

(assert (=> b!3225163 (= b_free!85957 (not b_next!86661))))

(declare-fun tp!1016130 () Bool)

(declare-fun b_and!215779 () Bool)

(assert (=> b!3225163 (= tp!1016130 b_and!215779)))

(declare-fun b_free!85959 () Bool)

(declare-fun b_next!86663 () Bool)

(assert (=> b!3225163 (= b_free!85959 (not b_next!86663))))

(declare-fun tp!1016134 () Bool)

(declare-fun b_and!215781 () Bool)

(assert (=> b!3225163 (= tp!1016134 b_and!215781)))

(declare-fun b!3225167 () Bool)

(declare-fun b_free!85961 () Bool)

(declare-fun b_next!86665 () Bool)

(assert (=> b!3225167 (= b_free!85961 (not b_next!86665))))

(declare-fun tp!1016135 () Bool)

(declare-fun b_and!215783 () Bool)

(assert (=> b!3225167 (= tp!1016135 b_and!215783)))

(declare-fun b_free!85963 () Bool)

(declare-fun b_next!86667 () Bool)

(assert (=> b!3225167 (= b_free!85963 (not b_next!86667))))

(declare-fun tp!1016138 () Bool)

(declare-fun b_and!215785 () Bool)

(assert (=> b!3225167 (= tp!1016138 b_and!215785)))

(declare-fun b!3225161 () Bool)

(declare-fun res!1313504 () Bool)

(declare-fun e!2011467 () Bool)

(assert (=> b!3225161 (=> (not res!1313504) (not e!2011467))))

(declare-datatypes ((C!20220 0))(
  ( (C!20221 (val!12158 Int)) )
))
(declare-datatypes ((Regex!10017 0))(
  ( (ElementMatch!10017 (c!542032 C!20220)) (Concat!15505 (regOne!20546 Regex!10017) (regTwo!20546 Regex!10017)) (EmptyExpr!10017) (Star!10017 (reg!10346 Regex!10017)) (EmptyLang!10017) (Union!10017 (regOne!20547 Regex!10017) (regTwo!20547 Regex!10017)) )
))
(declare-datatypes ((List!36446 0))(
  ( (Nil!36322) (Cons!36322 (h!41742 (_ BitVec 16)) (t!240905 List!36446)) )
))
(declare-datatypes ((String!40773 0))(
  ( (String!40774 (value!170287 String)) )
))
(declare-datatypes ((TokenValue!5488 0))(
  ( (FloatLiteralValue!10976 (text!38861 List!36446)) (TokenValueExt!5487 (__x!23193 Int)) (Broken!27440 (value!170288 List!36446)) (Object!5611) (End!5488) (Def!5488) (Underscore!5488) (Match!5488) (Else!5488) (Error!5488) (Case!5488) (If!5488) (Extends!5488) (Abstract!5488) (Class!5488) (Val!5488) (DelimiterValue!10976 (del!5548 List!36446)) (KeywordValue!5494 (value!170289 List!36446)) (CommentValue!10976 (value!170290 List!36446)) (WhitespaceValue!10976 (value!170291 List!36446)) (IndentationValue!5488 (value!170292 List!36446)) (String!40775) (Int32!5488) (Broken!27441 (value!170293 List!36446)) (Boolean!5489) (Unit!50919) (OperatorValue!5491 (op!5548 List!36446)) (IdentifierValue!10976 (value!170294 List!36446)) (IdentifierValue!10977 (value!170295 List!36446)) (WhitespaceValue!10977 (value!170296 List!36446)) (True!10976) (False!10976) (Broken!27442 (value!170297 List!36446)) (Broken!27443 (value!170298 List!36446)) (True!10977) (RightBrace!5488) (RightBracket!5488) (Colon!5488) (Null!5488) (Comma!5488) (LeftBracket!5488) (False!10977) (LeftBrace!5488) (ImaginaryLiteralValue!5488 (text!38862 List!36446)) (StringLiteralValue!16464 (value!170299 List!36446)) (EOFValue!5488 (value!170300 List!36446)) (IdentValue!5488 (value!170301 List!36446)) (DelimiterValue!10977 (value!170302 List!36446)) (DedentValue!5488 (value!170303 List!36446)) (NewLineValue!5488 (value!170304 List!36446)) (IntegerValue!16464 (value!170305 (_ BitVec 32)) (text!38863 List!36446)) (IntegerValue!16465 (value!170306 Int) (text!38864 List!36446)) (Times!5488) (Or!5488) (Equal!5488) (Minus!5488) (Broken!27444 (value!170307 List!36446)) (And!5488) (Div!5488) (LessEqual!5488) (Mod!5488) (Concat!15506) (Not!5488) (Plus!5488) (SpaceValue!5488 (value!170308 List!36446)) (IntegerValue!16466 (value!170309 Int) (text!38865 List!36446)) (StringLiteralValue!16465 (text!38866 List!36446)) (FloatLiteralValue!10977 (text!38867 List!36446)) (BytesLiteralValue!5488 (value!170310 List!36446)) (CommentValue!10977 (value!170311 List!36446)) (StringLiteralValue!16466 (value!170312 List!36446)) (ErrorTokenValue!5488 (msg!5549 List!36446)) )
))
(declare-datatypes ((List!36447 0))(
  ( (Nil!36323) (Cons!36323 (h!41743 C!20220) (t!240906 List!36447)) )
))
(declare-datatypes ((IArray!21787 0))(
  ( (IArray!21788 (innerList!10951 List!36447)) )
))
(declare-datatypes ((Conc!10891 0))(
  ( (Node!10891 (left!28282 Conc!10891) (right!28612 Conc!10891) (csize!22012 Int) (cheight!11102 Int)) (Leaf!17131 (xs!14009 IArray!21787) (csize!22013 Int)) (Empty!10891) )
))
(declare-datatypes ((BalanceConc!21396 0))(
  ( (BalanceConc!21397 (c!542033 Conc!10891)) )
))
(declare-datatypes ((TokenValueInjection!10404 0))(
  ( (TokenValueInjection!10405 (toValue!7358 Int) (toChars!7217 Int)) )
))
(declare-datatypes ((Rule!10316 0))(
  ( (Rule!10317 (regex!5258 Regex!10017) (tag!5790 String!40773) (isSeparator!5258 Bool) (transformation!5258 TokenValueInjection!10404)) )
))
(declare-datatypes ((Token!9882 0))(
  ( (Token!9883 (value!170313 TokenValue!5488) (rule!7716 Rule!10316) (size!27389 Int) (originalCharacters!5972 List!36447)) )
))
(declare-datatypes ((List!36448 0))(
  ( (Nil!36324) (Cons!36324 (h!41744 Token!9882) (t!240907 List!36448)) )
))
(declare-fun tokens!494 () List!36448)

(declare-datatypes ((LexerInterface!4847 0))(
  ( (LexerInterfaceExt!4844 (__x!23194 Int)) (Lexer!4845) )
))
(declare-fun thiss!18206 () LexerInterface!4847)

(declare-datatypes ((List!36449 0))(
  ( (Nil!36325) (Cons!36325 (h!41745 Rule!10316) (t!240908 List!36449)) )
))
(declare-fun rules!2135 () List!36449)

(declare-datatypes ((IArray!21789 0))(
  ( (IArray!21790 (innerList!10952 List!36448)) )
))
(declare-datatypes ((Conc!10892 0))(
  ( (Node!10892 (left!28283 Conc!10892) (right!28613 Conc!10892) (csize!22014 Int) (cheight!11103 Int)) (Leaf!17132 (xs!14010 IArray!21789) (csize!22015 Int)) (Empty!10892) )
))
(declare-datatypes ((BalanceConc!21398 0))(
  ( (BalanceConc!21399 (c!542034 Conc!10892)) )
))
(declare-fun rulesProduceEachTokenIndividually!1298 (LexerInterface!4847 List!36449 BalanceConc!21398) Bool)

(declare-fun seqFromList!3582 (List!36448) BalanceConc!21398)

(assert (=> b!3225161 (= res!1313504 (rulesProduceEachTokenIndividually!1298 thiss!18206 rules!2135 (seqFromList!3582 tokens!494)))))

(declare-fun b!3225162 () Bool)

(declare-fun res!1313501 () Bool)

(assert (=> b!3225162 (=> (not res!1313501) (not e!2011467))))

(declare-fun separatorToken!241 () Token!9882)

(assert (=> b!3225162 (= res!1313501 (isSeparator!5258 (rule!7716 separatorToken!241)))))

(declare-fun e!2011470 () Bool)

(assert (=> b!3225163 (= e!2011470 (and tp!1016130 tp!1016134))))

(declare-fun b!3225164 () Bool)

(declare-fun res!1313509 () Bool)

(assert (=> b!3225164 (=> (not res!1313509) (not e!2011467))))

(get-info :version)

(assert (=> b!3225164 (= res!1313509 (and (not ((_ is Nil!36324) tokens!494)) ((_ is Nil!36324) (t!240907 tokens!494))))))

(declare-fun tp!1016136 () Bool)

(declare-fun e!2011469 () Bool)

(declare-fun e!2011468 () Bool)

(declare-fun b!3225165 () Bool)

(declare-fun inv!49194 (String!40773) Bool)

(declare-fun inv!49197 (TokenValueInjection!10404) Bool)

(assert (=> b!3225165 (= e!2011468 (and tp!1016136 (inv!49194 (tag!5790 (rule!7716 (h!41744 tokens!494)))) (inv!49197 (transformation!5258 (rule!7716 (h!41744 tokens!494)))) e!2011469))))

(declare-fun e!2011461 () Bool)

(declare-fun b!3225166 () Bool)

(declare-fun tp!1016128 () Bool)

(declare-fun e!2011457 () Bool)

(assert (=> b!3225166 (= e!2011461 (and tp!1016128 (inv!49194 (tag!5790 (rule!7716 separatorToken!241))) (inv!49197 (transformation!5258 (rule!7716 separatorToken!241))) e!2011457))))

(assert (=> b!3225167 (= e!2011457 (and tp!1016135 tp!1016138))))

(declare-fun b!3225168 () Bool)

(declare-fun res!1313505 () Bool)

(assert (=> b!3225168 (=> (not res!1313505) (not e!2011467))))

(declare-fun lambda!118081 () Int)

(declare-fun forall!7448 (List!36448 Int) Bool)

(assert (=> b!3225168 (= res!1313505 (forall!7448 tokens!494 lambda!118081))))

(declare-fun b!3225169 () Bool)

(declare-fun e!2011456 () Bool)

(assert (=> b!3225169 (= e!2011467 (not e!2011456))))

(declare-fun res!1313500 () Bool)

(assert (=> b!3225169 (=> res!1313500 e!2011456)))

(declare-fun lt!1094072 () List!36447)

(declare-fun lt!1094073 () List!36447)

(assert (=> b!3225169 (= res!1313500 (not (= lt!1094072 lt!1094073)))))

(declare-fun printList!1397 (LexerInterface!4847 List!36448) List!36447)

(assert (=> b!3225169 (= lt!1094073 (printList!1397 thiss!18206 (Cons!36324 (h!41744 tokens!494) Nil!36324)))))

(declare-fun lt!1094074 () BalanceConc!21396)

(declare-fun list!12947 (BalanceConc!21396) List!36447)

(assert (=> b!3225169 (= lt!1094072 (list!12947 lt!1094074))))

(declare-fun lt!1094070 () BalanceConc!21398)

(declare-fun printTailRec!1344 (LexerInterface!4847 BalanceConc!21398 Int BalanceConc!21396) BalanceConc!21396)

(assert (=> b!3225169 (= lt!1094074 (printTailRec!1344 thiss!18206 lt!1094070 0 (BalanceConc!21397 Empty!10891)))))

(declare-fun print!1912 (LexerInterface!4847 BalanceConc!21398) BalanceConc!21396)

(assert (=> b!3225169 (= lt!1094074 (print!1912 thiss!18206 lt!1094070))))

(declare-fun singletonSeq!2354 (Token!9882) BalanceConc!21398)

(assert (=> b!3225169 (= lt!1094070 (singletonSeq!2354 (h!41744 tokens!494)))))

(declare-fun e!2011460 () Bool)

(declare-fun b!3225170 () Bool)

(declare-fun tp!1016133 () Bool)

(declare-fun inv!21 (TokenValue!5488) Bool)

(assert (=> b!3225170 (= e!2011460 (and (inv!21 (value!170313 (h!41744 tokens!494))) e!2011468 tp!1016133))))

(declare-fun b!3225171 () Bool)

(declare-fun res!1313506 () Bool)

(assert (=> b!3225171 (=> (not res!1313506) (not e!2011467))))

(declare-fun rulesProduceIndividualToken!2339 (LexerInterface!4847 List!36449 Token!9882) Bool)

(assert (=> b!3225171 (= res!1313506 (rulesProduceIndividualToken!2339 thiss!18206 rules!2135 separatorToken!241))))

(declare-fun b!3225172 () Bool)

(declare-fun res!1313507 () Bool)

(assert (=> b!3225172 (=> (not res!1313507) (not e!2011467))))

(declare-fun sepAndNonSepRulesDisjointChars!1452 (List!36449 List!36449) Bool)

(assert (=> b!3225172 (= res!1313507 (sepAndNonSepRulesDisjointChars!1452 rules!2135 rules!2135))))

(declare-fun e!2011458 () Bool)

(declare-fun b!3225173 () Bool)

(declare-fun tp!1016132 () Bool)

(assert (=> b!3225173 (= e!2011458 (and tp!1016132 (inv!49194 (tag!5790 (h!41745 rules!2135))) (inv!49197 (transformation!5258 (h!41745 rules!2135))) e!2011470))))

(declare-fun b!3225174 () Bool)

(declare-fun e!2011464 () Bool)

(declare-fun tp!1016140 () Bool)

(assert (=> b!3225174 (= e!2011464 (and e!2011458 tp!1016140))))

(declare-fun res!1313503 () Bool)

(assert (=> start!302926 (=> (not res!1313503) (not e!2011467))))

(assert (=> start!302926 (= res!1313503 ((_ is Lexer!4845) thiss!18206))))

(assert (=> start!302926 e!2011467))

(assert (=> start!302926 true))

(assert (=> start!302926 e!2011464))

(declare-fun e!2011463 () Bool)

(assert (=> start!302926 e!2011463))

(declare-fun e!2011472 () Bool)

(declare-fun inv!49198 (Token!9882) Bool)

(assert (=> start!302926 (and (inv!49198 separatorToken!241) e!2011472)))

(assert (=> b!3225175 (= e!2011469 (and tp!1016137 tp!1016139))))

(declare-fun tp!1016129 () Bool)

(declare-fun b!3225176 () Bool)

(assert (=> b!3225176 (= e!2011472 (and (inv!21 (value!170313 separatorToken!241)) e!2011461 tp!1016129))))

(declare-fun b!3225177 () Bool)

(declare-fun res!1313508 () Bool)

(assert (=> b!3225177 (=> (not res!1313508) (not e!2011467))))

(declare-fun rulesInvariant!4244 (LexerInterface!4847 List!36449) Bool)

(assert (=> b!3225177 (= res!1313508 (rulesInvariant!4244 thiss!18206 rules!2135))))

(declare-fun b!3225178 () Bool)

(declare-fun res!1313502 () Bool)

(assert (=> b!3225178 (=> (not res!1313502) (not e!2011467))))

(declare-fun isEmpty!20405 (List!36449) Bool)

(assert (=> b!3225178 (= res!1313502 (not (isEmpty!20405 rules!2135)))))

(declare-fun lt!1094071 () List!36447)

(declare-fun b!3225179 () Bool)

(assert (=> b!3225179 (= e!2011456 (or (not (= lt!1094073 lt!1094071)) (= lt!1094072 lt!1094071)))))

(declare-fun charsOf!3274 (Token!9882) BalanceConc!21396)

(assert (=> b!3225179 (= lt!1094071 (list!12947 (charsOf!3274 (h!41744 tokens!494))))))

(declare-fun b!3225180 () Bool)

(declare-fun tp!1016131 () Bool)

(assert (=> b!3225180 (= e!2011463 (and (inv!49198 (h!41744 tokens!494)) e!2011460 tp!1016131))))

(assert (= (and start!302926 res!1313503) b!3225178))

(assert (= (and b!3225178 res!1313502) b!3225177))

(assert (= (and b!3225177 res!1313508) b!3225161))

(assert (= (and b!3225161 res!1313504) b!3225171))

(assert (= (and b!3225171 res!1313506) b!3225162))

(assert (= (and b!3225162 res!1313501) b!3225168))

(assert (= (and b!3225168 res!1313505) b!3225172))

(assert (= (and b!3225172 res!1313507) b!3225164))

(assert (= (and b!3225164 res!1313509) b!3225169))

(assert (= (and b!3225169 (not res!1313500)) b!3225179))

(assert (= b!3225173 b!3225163))

(assert (= b!3225174 b!3225173))

(assert (= (and start!302926 ((_ is Cons!36325) rules!2135)) b!3225174))

(assert (= b!3225165 b!3225175))

(assert (= b!3225170 b!3225165))

(assert (= b!3225180 b!3225170))

(assert (= (and start!302926 ((_ is Cons!36324) tokens!494)) b!3225180))

(assert (= b!3225166 b!3225167))

(assert (= b!3225176 b!3225166))

(assert (= start!302926 b!3225176))

(declare-fun m!3503399 () Bool)

(assert (=> b!3225161 m!3503399))

(assert (=> b!3225161 m!3503399))

(declare-fun m!3503401 () Bool)

(assert (=> b!3225161 m!3503401))

(declare-fun m!3503403 () Bool)

(assert (=> b!3225170 m!3503403))

(declare-fun m!3503405 () Bool)

(assert (=> b!3225173 m!3503405))

(declare-fun m!3503407 () Bool)

(assert (=> b!3225173 m!3503407))

(declare-fun m!3503409 () Bool)

(assert (=> b!3225168 m!3503409))

(declare-fun m!3503411 () Bool)

(assert (=> b!3225176 m!3503411))

(declare-fun m!3503413 () Bool)

(assert (=> b!3225178 m!3503413))

(declare-fun m!3503415 () Bool)

(assert (=> b!3225180 m!3503415))

(declare-fun m!3503417 () Bool)

(assert (=> b!3225177 m!3503417))

(declare-fun m!3503419 () Bool)

(assert (=> b!3225165 m!3503419))

(declare-fun m!3503421 () Bool)

(assert (=> b!3225165 m!3503421))

(declare-fun m!3503423 () Bool)

(assert (=> b!3225169 m!3503423))

(declare-fun m!3503425 () Bool)

(assert (=> b!3225169 m!3503425))

(declare-fun m!3503427 () Bool)

(assert (=> b!3225169 m!3503427))

(declare-fun m!3503429 () Bool)

(assert (=> b!3225169 m!3503429))

(declare-fun m!3503431 () Bool)

(assert (=> b!3225169 m!3503431))

(declare-fun m!3503433 () Bool)

(assert (=> b!3225172 m!3503433))

(declare-fun m!3503435 () Bool)

(assert (=> start!302926 m!3503435))

(declare-fun m!3503437 () Bool)

(assert (=> b!3225166 m!3503437))

(declare-fun m!3503439 () Bool)

(assert (=> b!3225166 m!3503439))

(declare-fun m!3503441 () Bool)

(assert (=> b!3225179 m!3503441))

(assert (=> b!3225179 m!3503441))

(declare-fun m!3503443 () Bool)

(assert (=> b!3225179 m!3503443))

(declare-fun m!3503445 () Bool)

(assert (=> b!3225171 m!3503445))

(check-sat (not b_next!86665) (not b!3225168) (not b!3225165) (not b_next!86667) b_and!215785 b_and!215779 (not start!302926) (not b_next!86657) (not b!3225177) (not b!3225173) (not b_next!86659) b_and!215783 (not b_next!86663) (not b_next!86661) (not b!3225178) (not b!3225166) (not b!3225161) (not b!3225180) b_and!215781 (not b!3225174) (not b!3225169) (not b!3225171) b_and!215777 (not b!3225176) (not b!3225179) b_and!215775 (not b!3225170) (not b!3225172))
(check-sat (not b_next!86665) (not b_next!86661) (not b_next!86667) b_and!215785 b_and!215779 (not b_next!86657) b_and!215781 b_and!215777 (not b_next!86659) b_and!215783 (not b_next!86663) b_and!215775)
