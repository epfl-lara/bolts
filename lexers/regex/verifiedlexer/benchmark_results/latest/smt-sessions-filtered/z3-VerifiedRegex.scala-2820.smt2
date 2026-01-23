; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!157758 () Bool)

(assert start!157758)

(declare-fun b!1645290 () Bool)

(declare-fun b_free!44663 () Bool)

(declare-fun b_next!45367 () Bool)

(assert (=> b!1645290 (= b_free!44663 (not b_next!45367))))

(declare-fun tp!476717 () Bool)

(declare-fun b_and!116765 () Bool)

(assert (=> b!1645290 (= tp!476717 b_and!116765)))

(declare-fun b_free!44665 () Bool)

(declare-fun b_next!45369 () Bool)

(assert (=> b!1645290 (= b_free!44665 (not b_next!45369))))

(declare-fun tp!476720 () Bool)

(declare-fun b_and!116767 () Bool)

(assert (=> b!1645290 (= tp!476720 b_and!116767)))

(declare-fun b!1645285 () Bool)

(declare-fun b_free!44667 () Bool)

(declare-fun b_next!45371 () Bool)

(assert (=> b!1645285 (= b_free!44667 (not b_next!45371))))

(declare-fun tp!476713 () Bool)

(declare-fun b_and!116769 () Bool)

(assert (=> b!1645285 (= tp!476713 b_and!116769)))

(declare-fun b_free!44669 () Bool)

(declare-fun b_next!45373 () Bool)

(assert (=> b!1645285 (= b_free!44669 (not b_next!45373))))

(declare-fun tp!476718 () Bool)

(declare-fun b_and!116771 () Bool)

(assert (=> b!1645285 (= tp!476718 b_and!116771)))

(declare-fun e!1055162 () Bool)

(declare-fun e!1055169 () Bool)

(declare-datatypes ((List!18217 0))(
  ( (Nil!18147) (Cons!18147 (h!23548 (_ BitVec 16)) (t!150416 List!18217)) )
))
(declare-datatypes ((TokenValue!3291 0))(
  ( (FloatLiteralValue!6582 (text!23482 List!18217)) (TokenValueExt!3290 (__x!11884 Int)) (Broken!16455 (value!100875 List!18217)) (Object!3360) (End!3291) (Def!3291) (Underscore!3291) (Match!3291) (Else!3291) (Error!3291) (Case!3291) (If!3291) (Extends!3291) (Abstract!3291) (Class!3291) (Val!3291) (DelimiterValue!6582 (del!3351 List!18217)) (KeywordValue!3297 (value!100876 List!18217)) (CommentValue!6582 (value!100877 List!18217)) (WhitespaceValue!6582 (value!100878 List!18217)) (IndentationValue!3291 (value!100879 List!18217)) (String!20786) (Int32!3291) (Broken!16456 (value!100880 List!18217)) (Boolean!3292) (Unit!30030) (OperatorValue!3294 (op!3351 List!18217)) (IdentifierValue!6582 (value!100881 List!18217)) (IdentifierValue!6583 (value!100882 List!18217)) (WhitespaceValue!6583 (value!100883 List!18217)) (True!6582) (False!6582) (Broken!16457 (value!100884 List!18217)) (Broken!16458 (value!100885 List!18217)) (True!6583) (RightBrace!3291) (RightBracket!3291) (Colon!3291) (Null!3291) (Comma!3291) (LeftBracket!3291) (False!6583) (LeftBrace!3291) (ImaginaryLiteralValue!3291 (text!23483 List!18217)) (StringLiteralValue!9873 (value!100886 List!18217)) (EOFValue!3291 (value!100887 List!18217)) (IdentValue!3291 (value!100888 List!18217)) (DelimiterValue!6583 (value!100889 List!18217)) (DedentValue!3291 (value!100890 List!18217)) (NewLineValue!3291 (value!100891 List!18217)) (IntegerValue!9873 (value!100892 (_ BitVec 32)) (text!23484 List!18217)) (IntegerValue!9874 (value!100893 Int) (text!23485 List!18217)) (Times!3291) (Or!3291) (Equal!3291) (Minus!3291) (Broken!16459 (value!100894 List!18217)) (And!3291) (Div!3291) (LessEqual!3291) (Mod!3291) (Concat!7820) (Not!3291) (Plus!3291) (SpaceValue!3291 (value!100895 List!18217)) (IntegerValue!9875 (value!100896 Int) (text!23486 List!18217)) (StringLiteralValue!9874 (text!23487 List!18217)) (FloatLiteralValue!6583 (text!23488 List!18217)) (BytesLiteralValue!3291 (value!100897 List!18217)) (CommentValue!6583 (value!100898 List!18217)) (StringLiteralValue!9875 (value!100899 List!18217)) (ErrorTokenValue!3291 (msg!3352 List!18217)) )
))
(declare-datatypes ((C!9232 0))(
  ( (C!9233 (val!5212 Int)) )
))
(declare-datatypes ((List!18218 0))(
  ( (Nil!18148) (Cons!18148 (h!23549 C!9232) (t!150417 List!18218)) )
))
(declare-datatypes ((IArray!12105 0))(
  ( (IArray!12106 (innerList!6110 List!18218)) )
))
(declare-datatypes ((Conc!6050 0))(
  ( (Node!6050 (left!14548 Conc!6050) (right!14878 Conc!6050) (csize!12330 Int) (cheight!6261 Int)) (Leaf!8871 (xs!8886 IArray!12105) (csize!12331 Int)) (Empty!6050) )
))
(declare-datatypes ((BalanceConc!12044 0))(
  ( (BalanceConc!12045 (c!267577 Conc!6050)) )
))
(declare-datatypes ((Regex!4529 0))(
  ( (ElementMatch!4529 (c!267578 C!9232)) (Concat!7821 (regOne!9570 Regex!4529) (regTwo!9570 Regex!4529)) (EmptyExpr!4529) (Star!4529 (reg!4858 Regex!4529)) (EmptyLang!4529) (Union!4529 (regOne!9571 Regex!4529) (regTwo!9571 Regex!4529)) )
))
(declare-datatypes ((String!20787 0))(
  ( (String!20788 (value!100900 String)) )
))
(declare-datatypes ((TokenValueInjection!6242 0))(
  ( (TokenValueInjection!6243 (toValue!4644 Int) (toChars!4503 Int)) )
))
(declare-datatypes ((Rule!6202 0))(
  ( (Rule!6203 (regex!3201 Regex!4529) (tag!3481 String!20787) (isSeparator!3201 Bool) (transformation!3201 TokenValueInjection!6242)) )
))
(declare-datatypes ((Token!5968 0))(
  ( (Token!5969 (value!100901 TokenValue!3291) (rule!5055 Rule!6202) (size!14452 Int) (originalCharacters!4015 List!18218)) )
))
(declare-datatypes ((List!18219 0))(
  ( (Nil!18149) (Cons!18149 (h!23550 Token!5968) (t!150418 List!18219)) )
))
(declare-fun tokens!457 () List!18219)

(declare-fun tp!476712 () Bool)

(declare-fun b!1645275 () Bool)

(declare-fun inv!23508 (Token!5968) Bool)

(assert (=> b!1645275 (= e!1055169 (and (inv!23508 (h!23550 tokens!457)) e!1055162 tp!476712))))

(declare-fun b!1645276 () Bool)

(declare-fun res!737137 () Bool)

(declare-fun e!1055176 () Bool)

(assert (=> b!1645276 (=> (not res!737137) (not e!1055176))))

(declare-datatypes ((LexerInterface!2830 0))(
  ( (LexerInterfaceExt!2827 (__x!11885 Int)) (Lexer!2828) )
))
(declare-fun thiss!17113 () LexerInterface!2830)

(declare-datatypes ((List!18220 0))(
  ( (Nil!18150) (Cons!18150 (h!23551 Rule!6202) (t!150419 List!18220)) )
))
(declare-fun rules!1846 () List!18220)

(declare-fun rulesInvariant!2499 (LexerInterface!2830 List!18220) Bool)

(assert (=> b!1645276 (= res!737137 (rulesInvariant!2499 thiss!17113 rules!1846))))

(declare-fun b!1645277 () Bool)

(declare-fun res!737141 () Bool)

(assert (=> b!1645277 (=> (not res!737141) (not e!1055176))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!523 (LexerInterface!2830 List!18219 List!18220) Bool)

(assert (=> b!1645277 (= res!737141 (tokensListTwoByTwoPredicateSeparableList!523 thiss!17113 tokens!457 rules!1846))))

(declare-fun e!1055166 () Bool)

(declare-fun b!1645278 () Bool)

(declare-fun tp!476715 () Bool)

(declare-fun e!1055163 () Bool)

(declare-fun inv!23505 (String!20787) Bool)

(declare-fun inv!23509 (TokenValueInjection!6242) Bool)

(assert (=> b!1645278 (= e!1055163 (and tp!476715 (inv!23505 (tag!3481 (h!23551 rules!1846))) (inv!23509 (transformation!3201 (h!23551 rules!1846))) e!1055166))))

(declare-fun res!737142 () Bool)

(assert (=> start!157758 (=> (not res!737142) (not e!1055176))))

(get-info :version)

(assert (=> start!157758 (= res!737142 ((_ is Lexer!2828) thiss!17113))))

(assert (=> start!157758 e!1055176))

(assert (=> start!157758 true))

(declare-fun e!1055175 () Bool)

(assert (=> start!157758 e!1055175))

(assert (=> start!157758 e!1055169))

(declare-fun e!1055167 () Bool)

(declare-fun b!1645279 () Bool)

(declare-fun rulesProduceIndividualToken!1478 (LexerInterface!2830 List!18220 Token!5968) Bool)

(assert (=> b!1645279 (= e!1055167 (rulesProduceIndividualToken!1478 thiss!17113 rules!1846 (h!23550 tokens!457)))))

(declare-fun e!1055170 () Bool)

(declare-fun b!1645280 () Bool)

(declare-fun tp!476719 () Bool)

(declare-fun inv!21 (TokenValue!3291) Bool)

(assert (=> b!1645280 (= e!1055162 (and (inv!21 (value!100901 (h!23550 tokens!457))) e!1055170 tp!476719))))

(declare-fun b!1645281 () Bool)

(declare-fun res!737138 () Bool)

(assert (=> b!1645281 (=> (not res!737138) (not e!1055176))))

(declare-fun isEmpty!11169 (List!18220) Bool)

(assert (=> b!1645281 (= res!737138 (not (isEmpty!11169 rules!1846)))))

(declare-fun b!1645282 () Bool)

(declare-fun e!1055172 () Bool)

(declare-fun e!1055165 () Bool)

(assert (=> b!1645282 (= e!1055172 (not e!1055165))))

(declare-fun res!737139 () Bool)

(assert (=> b!1645282 (=> res!737139 e!1055165)))

(declare-fun lt!607349 () List!18219)

(assert (=> b!1645282 (= res!737139 (not (= lt!607349 (t!150418 tokens!457))))))

(declare-datatypes ((IArray!12107 0))(
  ( (IArray!12108 (innerList!6111 List!18219)) )
))
(declare-datatypes ((Conc!6051 0))(
  ( (Node!6051 (left!14549 Conc!6051) (right!14879 Conc!6051) (csize!12332 Int) (cheight!6262 Int)) (Leaf!8872 (xs!8887 IArray!12107) (csize!12333 Int)) (Empty!6051) )
))
(declare-datatypes ((BalanceConc!12046 0))(
  ( (BalanceConc!12047 (c!267579 Conc!6051)) )
))
(declare-datatypes ((tuple2!17812 0))(
  ( (tuple2!17813 (_1!10308 BalanceConc!12046) (_2!10308 BalanceConc!12044)) )
))
(declare-fun lt!607347 () tuple2!17812)

(declare-fun list!7197 (BalanceConc!12046) List!18219)

(assert (=> b!1645282 (= lt!607349 (list!7197 (_1!10308 lt!607347)))))

(declare-datatypes ((Unit!30031 0))(
  ( (Unit!30032) )
))
(declare-fun lt!607345 () Unit!30031)

(declare-fun theoremInvertabilityWhenTokenListSeparable!273 (LexerInterface!2830 List!18220 List!18219) Unit!30031)

(assert (=> b!1645282 (= lt!607345 (theoremInvertabilityWhenTokenListSeparable!273 thiss!17113 rules!1846 (t!150418 tokens!457)))))

(declare-fun lt!607354 () List!18218)

(declare-fun lt!607337 () List!18218)

(declare-fun isPrefix!1459 (List!18218 List!18218) Bool)

(assert (=> b!1645282 (isPrefix!1459 lt!607354 lt!607337)))

(declare-fun lt!607344 () Unit!30031)

(declare-fun lt!607352 () List!18218)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!984 (List!18218 List!18218) Unit!30031)

(assert (=> b!1645282 (= lt!607344 (lemmaConcatTwoListThenFirstIsPrefix!984 lt!607354 lt!607352))))

(declare-fun b!1645283 () Bool)

(declare-fun e!1055173 () Bool)

(assert (=> b!1645283 (= e!1055173 e!1055167)))

(declare-fun res!737136 () Bool)

(assert (=> b!1645283 (=> res!737136 e!1055167)))

(declare-fun lt!607348 () List!18218)

(declare-fun lt!607350 () List!18218)

(assert (=> b!1645283 (= res!737136 (or (not (= lt!607348 lt!607350)) (not (= lt!607350 lt!607354)) (not (= lt!607348 lt!607354))))))

(declare-fun printList!943 (LexerInterface!2830 List!18219) List!18218)

(assert (=> b!1645283 (= lt!607350 (printList!943 thiss!17113 (Cons!18149 (h!23550 tokens!457) Nil!18149)))))

(declare-fun lt!607353 () BalanceConc!12044)

(declare-fun list!7198 (BalanceConc!12044) List!18218)

(assert (=> b!1645283 (= lt!607348 (list!7198 lt!607353))))

(declare-fun lt!607338 () BalanceConc!12046)

(declare-fun printTailRec!881 (LexerInterface!2830 BalanceConc!12046 Int BalanceConc!12044) BalanceConc!12044)

(assert (=> b!1645283 (= lt!607353 (printTailRec!881 thiss!17113 lt!607338 0 (BalanceConc!12045 Empty!6050)))))

(declare-fun print!1361 (LexerInterface!2830 BalanceConc!12046) BalanceConc!12044)

(assert (=> b!1645283 (= lt!607353 (print!1361 thiss!17113 lt!607338))))

(declare-fun singletonSeq!1673 (Token!5968) BalanceConc!12046)

(assert (=> b!1645283 (= lt!607338 (singletonSeq!1673 (h!23550 tokens!457)))))

(declare-datatypes ((tuple2!17814 0))(
  ( (tuple2!17815 (_1!10309 Token!5968) (_2!10309 List!18218)) )
))
(declare-datatypes ((Option!3436 0))(
  ( (None!3435) (Some!3435 (v!24570 tuple2!17814)) )
))
(declare-fun lt!607343 () Option!3436)

(declare-fun lt!607336 () List!18218)

(declare-fun maxPrefix!1392 (LexerInterface!2830 List!18220 List!18218) Option!3436)

(assert (=> b!1645283 (= lt!607343 (maxPrefix!1392 thiss!17113 rules!1846 lt!607336))))

(declare-fun b!1645284 () Bool)

(declare-fun res!737145 () Bool)

(assert (=> b!1645284 (=> (not res!737145) (not e!1055176))))

(declare-fun rulesProduceEachTokenIndividuallyList!1032 (LexerInterface!2830 List!18220 List!18219) Bool)

(assert (=> b!1645284 (= res!737145 (rulesProduceEachTokenIndividuallyList!1032 thiss!17113 rules!1846 tokens!457))))

(declare-fun e!1055171 () Bool)

(assert (=> b!1645285 (= e!1055171 (and tp!476713 tp!476718))))

(declare-fun b!1645286 () Bool)

(declare-fun tp!476714 () Bool)

(assert (=> b!1645286 (= e!1055175 (and e!1055163 tp!476714))))

(declare-fun tp!476716 () Bool)

(declare-fun b!1645287 () Bool)

(assert (=> b!1645287 (= e!1055170 (and tp!476716 (inv!23505 (tag!3481 (rule!5055 (h!23550 tokens!457)))) (inv!23509 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) e!1055171))))

(declare-fun b!1645288 () Bool)

(declare-fun res!737146 () Bool)

(assert (=> b!1645288 (=> res!737146 e!1055173)))

(declare-fun separableTokensPredicate!770 (LexerInterface!2830 Token!5968 Token!5968 List!18220) Bool)

(assert (=> b!1645288 (= res!737146 (not (separableTokensPredicate!770 thiss!17113 (h!23550 tokens!457) (h!23550 (t!150418 tokens!457)) rules!1846)))))

(declare-fun b!1645289 () Bool)

(assert (=> b!1645289 (= e!1055165 e!1055173)))

(declare-fun res!737140 () Bool)

(assert (=> b!1645289 (=> res!737140 e!1055173)))

(declare-fun lt!607341 () List!18219)

(declare-fun lt!607342 () List!18219)

(assert (=> b!1645289 (= res!737140 (or (not (= lt!607349 lt!607342)) (not (= lt!607342 lt!607341))))))

(declare-fun lt!607351 () BalanceConc!12046)

(assert (=> b!1645289 (= lt!607342 (list!7197 lt!607351))))

(assert (=> b!1645289 (= lt!607349 lt!607341)))

(declare-fun prepend!755 (BalanceConc!12046 Token!5968) BalanceConc!12046)

(declare-fun seqFromList!2140 (List!18219) BalanceConc!12046)

(assert (=> b!1645289 (= lt!607341 (list!7197 (prepend!755 (seqFromList!2140 (t!150418 (t!150418 tokens!457))) (h!23550 (t!150418 tokens!457)))))))

(declare-fun lt!607346 () Unit!30031)

(declare-fun seqFromListBHdTlConstructive!276 (Token!5968 List!18219 BalanceConc!12046) Unit!30031)

(assert (=> b!1645289 (= lt!607346 (seqFromListBHdTlConstructive!276 (h!23550 (t!150418 tokens!457)) (t!150418 (t!150418 tokens!457)) (_1!10308 lt!607347)))))

(assert (=> b!1645290 (= e!1055166 (and tp!476717 tp!476720))))

(declare-fun b!1645291 () Bool)

(declare-fun res!737143 () Bool)

(assert (=> b!1645291 (=> (not res!737143) (not e!1055176))))

(assert (=> b!1645291 (= res!737143 (and (not ((_ is Nil!18149) tokens!457)) (not ((_ is Nil!18149) (t!150418 tokens!457)))))))

(declare-fun b!1645292 () Bool)

(assert (=> b!1645292 (= e!1055176 e!1055172)))

(declare-fun res!737144 () Bool)

(assert (=> b!1645292 (=> (not res!737144) (not e!1055172))))

(assert (=> b!1645292 (= res!737144 (= lt!607336 lt!607337))))

(declare-fun ++!4890 (List!18218 List!18218) List!18218)

(assert (=> b!1645292 (= lt!607337 (++!4890 lt!607354 lt!607352))))

(declare-fun lt!607340 () BalanceConc!12044)

(assert (=> b!1645292 (= lt!607336 (list!7198 lt!607340))))

(declare-fun lt!607339 () BalanceConc!12044)

(assert (=> b!1645292 (= lt!607352 (list!7198 lt!607339))))

(declare-fun charsOf!1850 (Token!5968) BalanceConc!12044)

(assert (=> b!1645292 (= lt!607354 (list!7198 (charsOf!1850 (h!23550 tokens!457))))))

(declare-fun lex!1314 (LexerInterface!2830 List!18220 BalanceConc!12044) tuple2!17812)

(assert (=> b!1645292 (= lt!607347 (lex!1314 thiss!17113 rules!1846 lt!607339))))

(assert (=> b!1645292 (= lt!607339 (print!1361 thiss!17113 lt!607351))))

(assert (=> b!1645292 (= lt!607351 (seqFromList!2140 (t!150418 tokens!457)))))

(assert (=> b!1645292 (= lt!607340 (print!1361 thiss!17113 (seqFromList!2140 tokens!457)))))

(assert (= (and start!157758 res!737142) b!1645281))

(assert (= (and b!1645281 res!737138) b!1645276))

(assert (= (and b!1645276 res!737137) b!1645284))

(assert (= (and b!1645284 res!737145) b!1645277))

(assert (= (and b!1645277 res!737141) b!1645291))

(assert (= (and b!1645291 res!737143) b!1645292))

(assert (= (and b!1645292 res!737144) b!1645282))

(assert (= (and b!1645282 (not res!737139)) b!1645289))

(assert (= (and b!1645289 (not res!737140)) b!1645288))

(assert (= (and b!1645288 (not res!737146)) b!1645283))

(assert (= (and b!1645283 (not res!737136)) b!1645279))

(assert (= b!1645278 b!1645290))

(assert (= b!1645286 b!1645278))

(assert (= (and start!157758 ((_ is Cons!18150) rules!1846)) b!1645286))

(assert (= b!1645287 b!1645285))

(assert (= b!1645280 b!1645287))

(assert (= b!1645275 b!1645280))

(assert (= (and start!157758 ((_ is Cons!18149) tokens!457)) b!1645275))

(declare-fun m!1989471 () Bool)

(assert (=> b!1645287 m!1989471))

(declare-fun m!1989473 () Bool)

(assert (=> b!1645287 m!1989473))

(declare-fun m!1989475 () Bool)

(assert (=> b!1645275 m!1989475))

(declare-fun m!1989477 () Bool)

(assert (=> b!1645279 m!1989477))

(declare-fun m!1989479 () Bool)

(assert (=> b!1645292 m!1989479))

(declare-fun m!1989481 () Bool)

(assert (=> b!1645292 m!1989481))

(declare-fun m!1989483 () Bool)

(assert (=> b!1645292 m!1989483))

(declare-fun m!1989485 () Bool)

(assert (=> b!1645292 m!1989485))

(declare-fun m!1989487 () Bool)

(assert (=> b!1645292 m!1989487))

(declare-fun m!1989489 () Bool)

(assert (=> b!1645292 m!1989489))

(declare-fun m!1989491 () Bool)

(assert (=> b!1645292 m!1989491))

(assert (=> b!1645292 m!1989489))

(declare-fun m!1989493 () Bool)

(assert (=> b!1645292 m!1989493))

(declare-fun m!1989495 () Bool)

(assert (=> b!1645292 m!1989495))

(assert (=> b!1645292 m!1989483))

(declare-fun m!1989497 () Bool)

(assert (=> b!1645292 m!1989497))

(declare-fun m!1989499 () Bool)

(assert (=> b!1645276 m!1989499))

(declare-fun m!1989501 () Bool)

(assert (=> b!1645284 m!1989501))

(declare-fun m!1989503 () Bool)

(assert (=> b!1645289 m!1989503))

(declare-fun m!1989505 () Bool)

(assert (=> b!1645289 m!1989505))

(declare-fun m!1989507 () Bool)

(assert (=> b!1645289 m!1989507))

(declare-fun m!1989509 () Bool)

(assert (=> b!1645289 m!1989509))

(declare-fun m!1989511 () Bool)

(assert (=> b!1645289 m!1989511))

(assert (=> b!1645289 m!1989507))

(assert (=> b!1645289 m!1989509))

(declare-fun m!1989513 () Bool)

(assert (=> b!1645288 m!1989513))

(declare-fun m!1989515 () Bool)

(assert (=> b!1645278 m!1989515))

(declare-fun m!1989517 () Bool)

(assert (=> b!1645278 m!1989517))

(declare-fun m!1989519 () Bool)

(assert (=> b!1645277 m!1989519))

(declare-fun m!1989521 () Bool)

(assert (=> b!1645283 m!1989521))

(declare-fun m!1989523 () Bool)

(assert (=> b!1645283 m!1989523))

(declare-fun m!1989525 () Bool)

(assert (=> b!1645283 m!1989525))

(declare-fun m!1989527 () Bool)

(assert (=> b!1645283 m!1989527))

(declare-fun m!1989529 () Bool)

(assert (=> b!1645283 m!1989529))

(declare-fun m!1989531 () Bool)

(assert (=> b!1645283 m!1989531))

(declare-fun m!1989533 () Bool)

(assert (=> b!1645281 m!1989533))

(declare-fun m!1989535 () Bool)

(assert (=> b!1645280 m!1989535))

(declare-fun m!1989537 () Bool)

(assert (=> b!1645282 m!1989537))

(declare-fun m!1989539 () Bool)

(assert (=> b!1645282 m!1989539))

(declare-fun m!1989541 () Bool)

(assert (=> b!1645282 m!1989541))

(declare-fun m!1989543 () Bool)

(assert (=> b!1645282 m!1989543))

(check-sat (not b_next!45373) (not b_next!45367) b_and!116769 (not b!1645288) (not b!1645287) (not b!1645283) b_and!116765 (not b!1645286) b_and!116771 b_and!116767 (not b_next!45371) (not b!1645275) (not b!1645279) (not b!1645281) (not b!1645292) (not b!1645280) (not b!1645276) (not b_next!45369) (not b!1645277) (not b!1645284) (not b!1645278) (not b!1645282) (not b!1645289))
(check-sat (not b_next!45373) (not b_next!45367) b_and!116769 b_and!116765 b_and!116771 (not b_next!45369) b_and!116767 (not b_next!45371))
(get-model)

(declare-fun b!1645306 () Bool)

(declare-fun e!1055188 () Bool)

(declare-fun inv!16 (TokenValue!3291) Bool)

(assert (=> b!1645306 (= e!1055188 (inv!16 (value!100901 (h!23550 tokens!457))))))

(declare-fun b!1645307 () Bool)

(declare-fun e!1055187 () Bool)

(assert (=> b!1645307 (= e!1055188 e!1055187)))

(declare-fun c!267585 () Bool)

(assert (=> b!1645307 (= c!267585 ((_ is IntegerValue!9874) (value!100901 (h!23550 tokens!457))))))

(declare-fun d!495609 () Bool)

(declare-fun c!267586 () Bool)

(assert (=> d!495609 (= c!267586 ((_ is IntegerValue!9873) (value!100901 (h!23550 tokens!457))))))

(assert (=> d!495609 (= (inv!21 (value!100901 (h!23550 tokens!457))) e!1055188)))

(declare-fun b!1645308 () Bool)

(declare-fun e!1055186 () Bool)

(declare-fun inv!15 (TokenValue!3291) Bool)

(assert (=> b!1645308 (= e!1055186 (inv!15 (value!100901 (h!23550 tokens!457))))))

(declare-fun b!1645309 () Bool)

(declare-fun res!737159 () Bool)

(assert (=> b!1645309 (=> res!737159 e!1055186)))

(assert (=> b!1645309 (= res!737159 (not ((_ is IntegerValue!9875) (value!100901 (h!23550 tokens!457)))))))

(assert (=> b!1645309 (= e!1055187 e!1055186)))

(declare-fun b!1645310 () Bool)

(declare-fun inv!17 (TokenValue!3291) Bool)

(assert (=> b!1645310 (= e!1055187 (inv!17 (value!100901 (h!23550 tokens!457))))))

(assert (= (and d!495609 c!267586) b!1645306))

(assert (= (and d!495609 (not c!267586)) b!1645307))

(assert (= (and b!1645307 c!267585) b!1645310))

(assert (= (and b!1645307 (not c!267585)) b!1645309))

(assert (= (and b!1645309 (not res!737159)) b!1645308))

(declare-fun m!1989579 () Bool)

(assert (=> b!1645306 m!1989579))

(declare-fun m!1989581 () Bool)

(assert (=> b!1645308 m!1989581))

(declare-fun m!1989583 () Bool)

(assert (=> b!1645310 m!1989583))

(assert (=> b!1645280 d!495609))

(declare-fun d!495619 () Bool)

(assert (=> d!495619 (= (isEmpty!11169 rules!1846) ((_ is Nil!18150) rules!1846))))

(assert (=> b!1645281 d!495619))

(declare-fun d!495621 () Bool)

(declare-fun lt!607363 () BalanceConc!12044)

(assert (=> d!495621 (= (list!7198 lt!607363) (printList!943 thiss!17113 (list!7197 (seqFromList!2140 tokens!457))))))

(assert (=> d!495621 (= lt!607363 (printTailRec!881 thiss!17113 (seqFromList!2140 tokens!457) 0 (BalanceConc!12045 Empty!6050)))))

(assert (=> d!495621 (= (print!1361 thiss!17113 (seqFromList!2140 tokens!457)) lt!607363)))

(declare-fun bs!396034 () Bool)

(assert (= bs!396034 d!495621))

(declare-fun m!1989599 () Bool)

(assert (=> bs!396034 m!1989599))

(assert (=> bs!396034 m!1989489))

(declare-fun m!1989601 () Bool)

(assert (=> bs!396034 m!1989601))

(assert (=> bs!396034 m!1989601))

(declare-fun m!1989603 () Bool)

(assert (=> bs!396034 m!1989603))

(assert (=> bs!396034 m!1989489))

(declare-fun m!1989605 () Bool)

(assert (=> bs!396034 m!1989605))

(assert (=> b!1645292 d!495621))

(declare-fun d!495627 () Bool)

(declare-fun list!7200 (Conc!6050) List!18218)

(assert (=> d!495627 (= (list!7198 lt!607339) (list!7200 (c!267577 lt!607339)))))

(declare-fun bs!396035 () Bool)

(assert (= bs!396035 d!495627))

(declare-fun m!1989607 () Bool)

(assert (=> bs!396035 m!1989607))

(assert (=> b!1645292 d!495627))

(declare-fun b!1645332 () Bool)

(declare-fun e!1055201 () Bool)

(declare-fun lt!607366 () tuple2!17812)

(declare-fun isEmpty!11171 (BalanceConc!12046) Bool)

(assert (=> b!1645332 (= e!1055201 (not (isEmpty!11171 (_1!10308 lt!607366))))))

(declare-fun d!495629 () Bool)

(declare-fun e!1055202 () Bool)

(assert (=> d!495629 e!1055202))

(declare-fun res!737173 () Bool)

(assert (=> d!495629 (=> (not res!737173) (not e!1055202))))

(declare-fun e!1055203 () Bool)

(assert (=> d!495629 (= res!737173 e!1055203)))

(declare-fun c!267589 () Bool)

(declare-fun size!14454 (BalanceConc!12046) Int)

(assert (=> d!495629 (= c!267589 (> (size!14454 (_1!10308 lt!607366)) 0))))

(declare-fun lexTailRecV2!583 (LexerInterface!2830 List!18220 BalanceConc!12044 BalanceConc!12044 BalanceConc!12044 BalanceConc!12046) tuple2!17812)

(assert (=> d!495629 (= lt!607366 (lexTailRecV2!583 thiss!17113 rules!1846 lt!607339 (BalanceConc!12045 Empty!6050) lt!607339 (BalanceConc!12047 Empty!6051)))))

(assert (=> d!495629 (= (lex!1314 thiss!17113 rules!1846 lt!607339) lt!607366)))

(declare-fun b!1645333 () Bool)

(declare-datatypes ((tuple2!17816 0))(
  ( (tuple2!17817 (_1!10310 List!18219) (_2!10310 List!18218)) )
))
(declare-fun lexList!860 (LexerInterface!2830 List!18220 List!18218) tuple2!17816)

(assert (=> b!1645333 (= e!1055202 (= (list!7198 (_2!10308 lt!607366)) (_2!10310 (lexList!860 thiss!17113 rules!1846 (list!7198 lt!607339)))))))

(declare-fun b!1645334 () Bool)

(assert (=> b!1645334 (= e!1055203 e!1055201)))

(declare-fun res!737174 () Bool)

(declare-fun size!14455 (BalanceConc!12044) Int)

(assert (=> b!1645334 (= res!737174 (< (size!14455 (_2!10308 lt!607366)) (size!14455 lt!607339)))))

(assert (=> b!1645334 (=> (not res!737174) (not e!1055201))))

(declare-fun b!1645335 () Bool)

(assert (=> b!1645335 (= e!1055203 (= (_2!10308 lt!607366) lt!607339))))

(declare-fun b!1645336 () Bool)

(declare-fun res!737172 () Bool)

(assert (=> b!1645336 (=> (not res!737172) (not e!1055202))))

(assert (=> b!1645336 (= res!737172 (= (list!7197 (_1!10308 lt!607366)) (_1!10310 (lexList!860 thiss!17113 rules!1846 (list!7198 lt!607339)))))))

(assert (= (and d!495629 c!267589) b!1645334))

(assert (= (and d!495629 (not c!267589)) b!1645335))

(assert (= (and b!1645334 res!737174) b!1645332))

(assert (= (and d!495629 res!737173) b!1645336))

(assert (= (and b!1645336 res!737172) b!1645333))

(declare-fun m!1989609 () Bool)

(assert (=> d!495629 m!1989609))

(declare-fun m!1989611 () Bool)

(assert (=> d!495629 m!1989611))

(declare-fun m!1989613 () Bool)

(assert (=> b!1645333 m!1989613))

(assert (=> b!1645333 m!1989495))

(assert (=> b!1645333 m!1989495))

(declare-fun m!1989615 () Bool)

(assert (=> b!1645333 m!1989615))

(declare-fun m!1989617 () Bool)

(assert (=> b!1645334 m!1989617))

(declare-fun m!1989619 () Bool)

(assert (=> b!1645334 m!1989619))

(declare-fun m!1989621 () Bool)

(assert (=> b!1645336 m!1989621))

(assert (=> b!1645336 m!1989495))

(assert (=> b!1645336 m!1989495))

(assert (=> b!1645336 m!1989615))

(declare-fun m!1989623 () Bool)

(assert (=> b!1645332 m!1989623))

(assert (=> b!1645292 d!495629))

(declare-fun b!1645345 () Bool)

(declare-fun e!1055208 () List!18218)

(assert (=> b!1645345 (= e!1055208 lt!607352)))

(declare-fun b!1645347 () Bool)

(declare-fun res!737180 () Bool)

(declare-fun e!1055209 () Bool)

(assert (=> b!1645347 (=> (not res!737180) (not e!1055209))))

(declare-fun lt!607369 () List!18218)

(declare-fun size!14456 (List!18218) Int)

(assert (=> b!1645347 (= res!737180 (= (size!14456 lt!607369) (+ (size!14456 lt!607354) (size!14456 lt!607352))))))

(declare-fun d!495631 () Bool)

(assert (=> d!495631 e!1055209))

(declare-fun res!737179 () Bool)

(assert (=> d!495631 (=> (not res!737179) (not e!1055209))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2514 (List!18218) (InoxSet C!9232))

(assert (=> d!495631 (= res!737179 (= (content!2514 lt!607369) ((_ map or) (content!2514 lt!607354) (content!2514 lt!607352))))))

(assert (=> d!495631 (= lt!607369 e!1055208)))

(declare-fun c!267592 () Bool)

(assert (=> d!495631 (= c!267592 ((_ is Nil!18148) lt!607354))))

(assert (=> d!495631 (= (++!4890 lt!607354 lt!607352) lt!607369)))

(declare-fun b!1645348 () Bool)

(assert (=> b!1645348 (= e!1055209 (or (not (= lt!607352 Nil!18148)) (= lt!607369 lt!607354)))))

(declare-fun b!1645346 () Bool)

(assert (=> b!1645346 (= e!1055208 (Cons!18148 (h!23549 lt!607354) (++!4890 (t!150417 lt!607354) lt!607352)))))

(assert (= (and d!495631 c!267592) b!1645345))

(assert (= (and d!495631 (not c!267592)) b!1645346))

(assert (= (and d!495631 res!737179) b!1645347))

(assert (= (and b!1645347 res!737180) b!1645348))

(declare-fun m!1989625 () Bool)

(assert (=> b!1645347 m!1989625))

(declare-fun m!1989627 () Bool)

(assert (=> b!1645347 m!1989627))

(declare-fun m!1989629 () Bool)

(assert (=> b!1645347 m!1989629))

(declare-fun m!1989631 () Bool)

(assert (=> d!495631 m!1989631))

(declare-fun m!1989633 () Bool)

(assert (=> d!495631 m!1989633))

(declare-fun m!1989635 () Bool)

(assert (=> d!495631 m!1989635))

(declare-fun m!1989637 () Bool)

(assert (=> b!1645346 m!1989637))

(assert (=> b!1645292 d!495631))

(declare-fun d!495633 () Bool)

(declare-fun fromListB!947 (List!18219) BalanceConc!12046)

(assert (=> d!495633 (= (seqFromList!2140 tokens!457) (fromListB!947 tokens!457))))

(declare-fun bs!396036 () Bool)

(assert (= bs!396036 d!495633))

(declare-fun m!1989639 () Bool)

(assert (=> bs!396036 m!1989639))

(assert (=> b!1645292 d!495633))

(declare-fun d!495635 () Bool)

(declare-fun lt!607372 () BalanceConc!12044)

(assert (=> d!495635 (= (list!7198 lt!607372) (originalCharacters!4015 (h!23550 tokens!457)))))

(declare-fun dynLambda!8111 (Int TokenValue!3291) BalanceConc!12044)

(assert (=> d!495635 (= lt!607372 (dynLambda!8111 (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) (value!100901 (h!23550 tokens!457))))))

(assert (=> d!495635 (= (charsOf!1850 (h!23550 tokens!457)) lt!607372)))

(declare-fun b_lambda!51711 () Bool)

(assert (=> (not b_lambda!51711) (not d!495635)))

(declare-fun tb!94219 () Bool)

(declare-fun t!150425 () Bool)

(assert (=> (and b!1645290 (= (toChars!4503 (transformation!3201 (h!23551 rules!1846))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457))))) t!150425) tb!94219))

(declare-fun b!1645353 () Bool)

(declare-fun e!1055212 () Bool)

(declare-fun tp!476726 () Bool)

(declare-fun inv!23512 (Conc!6050) Bool)

(assert (=> b!1645353 (= e!1055212 (and (inv!23512 (c!267577 (dynLambda!8111 (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) (value!100901 (h!23550 tokens!457))))) tp!476726))))

(declare-fun result!113784 () Bool)

(declare-fun inv!23513 (BalanceConc!12044) Bool)

(assert (=> tb!94219 (= result!113784 (and (inv!23513 (dynLambda!8111 (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) (value!100901 (h!23550 tokens!457)))) e!1055212))))

(assert (= tb!94219 b!1645353))

(declare-fun m!1989641 () Bool)

(assert (=> b!1645353 m!1989641))

(declare-fun m!1989643 () Bool)

(assert (=> tb!94219 m!1989643))

(assert (=> d!495635 t!150425))

(declare-fun b_and!116777 () Bool)

(assert (= b_and!116767 (and (=> t!150425 result!113784) b_and!116777)))

(declare-fun t!150427 () Bool)

(declare-fun tb!94221 () Bool)

(assert (=> (and b!1645285 (= (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457))))) t!150427) tb!94221))

(declare-fun result!113788 () Bool)

(assert (= result!113788 result!113784))

(assert (=> d!495635 t!150427))

(declare-fun b_and!116779 () Bool)

(assert (= b_and!116771 (and (=> t!150427 result!113788) b_and!116779)))

(declare-fun m!1989645 () Bool)

(assert (=> d!495635 m!1989645))

(declare-fun m!1989647 () Bool)

(assert (=> d!495635 m!1989647))

(assert (=> b!1645292 d!495635))

(declare-fun d!495637 () Bool)

(assert (=> d!495637 (= (seqFromList!2140 (t!150418 tokens!457)) (fromListB!947 (t!150418 tokens!457)))))

(declare-fun bs!396037 () Bool)

(assert (= bs!396037 d!495637))

(declare-fun m!1989649 () Bool)

(assert (=> bs!396037 m!1989649))

(assert (=> b!1645292 d!495637))

(declare-fun d!495639 () Bool)

(assert (=> d!495639 (= (list!7198 (charsOf!1850 (h!23550 tokens!457))) (list!7200 (c!267577 (charsOf!1850 (h!23550 tokens!457)))))))

(declare-fun bs!396038 () Bool)

(assert (= bs!396038 d!495639))

(declare-fun m!1989651 () Bool)

(assert (=> bs!396038 m!1989651))

(assert (=> b!1645292 d!495639))

(declare-fun d!495641 () Bool)

(assert (=> d!495641 (= (list!7198 lt!607340) (list!7200 (c!267577 lt!607340)))))

(declare-fun bs!396039 () Bool)

(assert (= bs!396039 d!495641))

(declare-fun m!1989653 () Bool)

(assert (=> bs!396039 m!1989653))

(assert (=> b!1645292 d!495641))

(declare-fun d!495643 () Bool)

(declare-fun lt!607373 () BalanceConc!12044)

(assert (=> d!495643 (= (list!7198 lt!607373) (printList!943 thiss!17113 (list!7197 lt!607351)))))

(assert (=> d!495643 (= lt!607373 (printTailRec!881 thiss!17113 lt!607351 0 (BalanceConc!12045 Empty!6050)))))

(assert (=> d!495643 (= (print!1361 thiss!17113 lt!607351) lt!607373)))

(declare-fun bs!396040 () Bool)

(assert (= bs!396040 d!495643))

(declare-fun m!1989655 () Bool)

(assert (=> bs!396040 m!1989655))

(assert (=> bs!396040 m!1989505))

(assert (=> bs!396040 m!1989505))

(declare-fun m!1989657 () Bool)

(assert (=> bs!396040 m!1989657))

(declare-fun m!1989659 () Bool)

(assert (=> bs!396040 m!1989659))

(assert (=> b!1645292 d!495643))

(declare-fun d!495645 () Bool)

(declare-fun list!7201 (Conc!6051) List!18219)

(assert (=> d!495645 (= (list!7197 (_1!10308 lt!607347)) (list!7201 (c!267579 (_1!10308 lt!607347))))))

(declare-fun bs!396041 () Bool)

(assert (= bs!396041 d!495645))

(declare-fun m!1989661 () Bool)

(assert (=> bs!396041 m!1989661))

(assert (=> b!1645282 d!495645))

(declare-fun d!495647 () Bool)

(declare-fun e!1055233 () Bool)

(assert (=> d!495647 e!1055233))

(declare-fun res!737198 () Bool)

(assert (=> d!495647 (=> (not res!737198) (not e!1055233))))

(assert (=> d!495647 (= res!737198 (= (list!7197 (_1!10308 (lex!1314 thiss!17113 rules!1846 (print!1361 thiss!17113 (seqFromList!2140 (t!150418 tokens!457)))))) (t!150418 tokens!457)))))

(declare-fun lt!607518 () Unit!30031)

(declare-fun e!1055232 () Unit!30031)

(assert (=> d!495647 (= lt!607518 e!1055232)))

(declare-fun c!267598 () Bool)

(assert (=> d!495647 (= c!267598 (or ((_ is Nil!18149) (t!150418 tokens!457)) ((_ is Nil!18149) (t!150418 (t!150418 tokens!457)))))))

(assert (=> d!495647 (not (isEmpty!11169 rules!1846))))

(assert (=> d!495647 (= (theoremInvertabilityWhenTokenListSeparable!273 thiss!17113 rules!1846 (t!150418 tokens!457)) lt!607518)))

(declare-fun b!1645381 () Bool)

(declare-fun Unit!30047 () Unit!30031)

(assert (=> b!1645381 (= e!1055232 Unit!30047)))

(declare-fun b!1645382 () Bool)

(declare-fun Unit!30048 () Unit!30031)

(assert (=> b!1645382 (= e!1055232 Unit!30048)))

(declare-fun lt!607519 () BalanceConc!12044)

(assert (=> b!1645382 (= lt!607519 (print!1361 thiss!17113 (seqFromList!2140 (t!150418 tokens!457))))))

(declare-fun lt!607512 () BalanceConc!12044)

(assert (=> b!1645382 (= lt!607512 (print!1361 thiss!17113 (seqFromList!2140 (t!150418 (t!150418 tokens!457)))))))

(declare-fun lt!607520 () tuple2!17812)

(assert (=> b!1645382 (= lt!607520 (lex!1314 thiss!17113 rules!1846 lt!607512))))

(declare-fun lt!607528 () List!18218)

(assert (=> b!1645382 (= lt!607528 (list!7198 (charsOf!1850 (h!23550 (t!150418 tokens!457)))))))

(declare-fun lt!607523 () List!18218)

(assert (=> b!1645382 (= lt!607523 (list!7198 lt!607512))))

(declare-fun lt!607522 () Unit!30031)

(assert (=> b!1645382 (= lt!607522 (lemmaConcatTwoListThenFirstIsPrefix!984 lt!607528 lt!607523))))

(assert (=> b!1645382 (isPrefix!1459 lt!607528 (++!4890 lt!607528 lt!607523))))

(declare-fun lt!607515 () Unit!30031)

(assert (=> b!1645382 (= lt!607515 lt!607522)))

(declare-fun lt!607521 () Unit!30031)

(assert (=> b!1645382 (= lt!607521 (theoremInvertabilityWhenTokenListSeparable!273 thiss!17113 rules!1846 (t!150418 (t!150418 tokens!457))))))

(declare-fun lt!607516 () Unit!30031)

(assert (=> b!1645382 (= lt!607516 (seqFromListBHdTlConstructive!276 (h!23550 (t!150418 (t!150418 tokens!457))) (t!150418 (t!150418 (t!150418 tokens!457))) (_1!10308 lt!607520)))))

(assert (=> b!1645382 (= (list!7197 (_1!10308 lt!607520)) (list!7197 (prepend!755 (seqFromList!2140 (t!150418 (t!150418 (t!150418 tokens!457)))) (h!23550 (t!150418 (t!150418 tokens!457))))))))

(declare-fun lt!607527 () Unit!30031)

(assert (=> b!1645382 (= lt!607527 lt!607516)))

(declare-fun lt!607533 () Option!3436)

(assert (=> b!1645382 (= lt!607533 (maxPrefix!1392 thiss!17113 rules!1846 (list!7198 lt!607519)))))

(assert (=> b!1645382 (= (print!1361 thiss!17113 (singletonSeq!1673 (h!23550 (t!150418 tokens!457)))) (printTailRec!881 thiss!17113 (singletonSeq!1673 (h!23550 (t!150418 tokens!457))) 0 (BalanceConc!12045 Empty!6050)))))

(declare-fun lt!607511 () Unit!30031)

(declare-fun Unit!30049 () Unit!30031)

(assert (=> b!1645382 (= lt!607511 Unit!30049)))

(declare-fun lt!607535 () Unit!30031)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!398 (LexerInterface!2830 List!18220 List!18218 List!18218) Unit!30031)

(assert (=> b!1645382 (= lt!607535 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!398 thiss!17113 rules!1846 (list!7198 (charsOf!1850 (h!23550 (t!150418 tokens!457)))) (list!7198 lt!607512)))))

(assert (=> b!1645382 (= (list!7198 (charsOf!1850 (h!23550 (t!150418 tokens!457)))) (originalCharacters!4015 (h!23550 (t!150418 tokens!457))))))

(declare-fun lt!607526 () Unit!30031)

(declare-fun Unit!30050 () Unit!30031)

(assert (=> b!1645382 (= lt!607526 Unit!30050)))

(declare-fun singletonSeq!1675 (C!9232) BalanceConc!12044)

(declare-fun apply!4744 (BalanceConc!12044 Int) C!9232)

(declare-fun head!3598 (List!18218) C!9232)

(assert (=> b!1645382 (= (list!7198 (singletonSeq!1675 (apply!4744 (charsOf!1850 (h!23550 (t!150418 (t!150418 tokens!457)))) 0))) (Cons!18148 (head!3598 (originalCharacters!4015 (h!23550 (t!150418 (t!150418 tokens!457))))) Nil!18148))))

(declare-fun lt!607517 () Unit!30031)

(declare-fun Unit!30051 () Unit!30031)

(assert (=> b!1645382 (= lt!607517 Unit!30051)))

(assert (=> b!1645382 (= (list!7198 (singletonSeq!1675 (apply!4744 (charsOf!1850 (h!23550 (t!150418 (t!150418 tokens!457)))) 0))) (Cons!18148 (head!3598 (list!7198 lt!607512)) Nil!18148))))

(declare-fun lt!607534 () Unit!30031)

(declare-fun Unit!30052 () Unit!30031)

(assert (=> b!1645382 (= lt!607534 Unit!30052)))

(declare-fun head!3599 (BalanceConc!12044) C!9232)

(assert (=> b!1645382 (= (list!7198 (singletonSeq!1675 (apply!4744 (charsOf!1850 (h!23550 (t!150418 (t!150418 tokens!457)))) 0))) (Cons!18148 (head!3599 lt!607512) Nil!18148))))

(declare-fun lt!607530 () Unit!30031)

(declare-fun Unit!30053 () Unit!30031)

(assert (=> b!1645382 (= lt!607530 Unit!30053)))

(declare-fun isDefined!2793 (Option!3436) Bool)

(assert (=> b!1645382 (isDefined!2793 (maxPrefix!1392 thiss!17113 rules!1846 (originalCharacters!4015 (h!23550 (t!150418 tokens!457)))))))

(declare-fun lt!607510 () Unit!30031)

(declare-fun Unit!30054 () Unit!30031)

(assert (=> b!1645382 (= lt!607510 Unit!30054)))

(assert (=> b!1645382 (isDefined!2793 (maxPrefix!1392 thiss!17113 rules!1846 (list!7198 (charsOf!1850 (h!23550 (t!150418 tokens!457))))))))

(declare-fun lt!607529 () Unit!30031)

(declare-fun Unit!30055 () Unit!30031)

(assert (=> b!1645382 (= lt!607529 Unit!30055)))

(declare-fun lt!607525 () Unit!30031)

(declare-fun Unit!30056 () Unit!30031)

(assert (=> b!1645382 (= lt!607525 Unit!30056)))

(declare-fun get!5278 (Option!3436) tuple2!17814)

(assert (=> b!1645382 (= (_1!10309 (get!5278 (maxPrefix!1392 thiss!17113 rules!1846 (list!7198 (charsOf!1850 (h!23550 (t!150418 tokens!457))))))) (h!23550 (t!150418 tokens!457)))))

(declare-fun lt!607513 () Unit!30031)

(declare-fun Unit!30057 () Unit!30031)

(assert (=> b!1645382 (= lt!607513 Unit!30057)))

(declare-fun isEmpty!11173 (List!18218) Bool)

(assert (=> b!1645382 (isEmpty!11173 (_2!10309 (get!5278 (maxPrefix!1392 thiss!17113 rules!1846 (list!7198 (charsOf!1850 (h!23550 (t!150418 tokens!457))))))))))

(declare-fun lt!607514 () Unit!30031)

(declare-fun Unit!30058 () Unit!30031)

(assert (=> b!1645382 (= lt!607514 Unit!30058)))

(declare-fun matchR!2022 (Regex!4529 List!18218) Bool)

(assert (=> b!1645382 (matchR!2022 (regex!3201 (rule!5055 (h!23550 (t!150418 tokens!457)))) (list!7198 (charsOf!1850 (h!23550 (t!150418 tokens!457)))))))

(declare-fun lt!607532 () Unit!30031)

(declare-fun Unit!30059 () Unit!30031)

(assert (=> b!1645382 (= lt!607532 Unit!30059)))

(assert (=> b!1645382 (= (rule!5055 (h!23550 (t!150418 tokens!457))) (rule!5055 (h!23550 (t!150418 tokens!457))))))

(declare-fun lt!607524 () Unit!30031)

(declare-fun Unit!30060 () Unit!30031)

(assert (=> b!1645382 (= lt!607524 Unit!30060)))

(declare-fun lt!607531 () Unit!30031)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!160 (LexerInterface!2830 List!18220 Token!5968 Rule!6202 List!18218) Unit!30031)

(assert (=> b!1645382 (= lt!607531 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!160 thiss!17113 rules!1846 (h!23550 (t!150418 tokens!457)) (rule!5055 (h!23550 (t!150418 tokens!457))) (list!7198 lt!607512)))))

(declare-fun b!1645383 () Bool)

(declare-fun isEmpty!11174 (BalanceConc!12044) Bool)

(assert (=> b!1645383 (= e!1055233 (isEmpty!11174 (_2!10308 (lex!1314 thiss!17113 rules!1846 (print!1361 thiss!17113 (seqFromList!2140 (t!150418 tokens!457)))))))))

(assert (= (and d!495647 c!267598) b!1645381))

(assert (= (and d!495647 (not c!267598)) b!1645382))

(assert (= (and d!495647 res!737198) b!1645383))

(assert (=> d!495647 m!1989487))

(declare-fun m!1989757 () Bool)

(assert (=> d!495647 m!1989757))

(declare-fun m!1989759 () Bool)

(assert (=> d!495647 m!1989759))

(assert (=> d!495647 m!1989487))

(assert (=> d!495647 m!1989757))

(declare-fun m!1989761 () Bool)

(assert (=> d!495647 m!1989761))

(assert (=> d!495647 m!1989533))

(declare-fun m!1989763 () Bool)

(assert (=> b!1645382 m!1989763))

(declare-fun m!1989765 () Bool)

(assert (=> b!1645382 m!1989765))

(declare-fun m!1989767 () Bool)

(assert (=> b!1645382 m!1989767))

(declare-fun m!1989769 () Bool)

(assert (=> b!1645382 m!1989769))

(declare-fun m!1989771 () Bool)

(assert (=> b!1645382 m!1989771))

(declare-fun m!1989773 () Bool)

(assert (=> b!1645382 m!1989773))

(declare-fun m!1989775 () Bool)

(assert (=> b!1645382 m!1989775))

(declare-fun m!1989777 () Bool)

(assert (=> b!1645382 m!1989777))

(declare-fun m!1989779 () Bool)

(assert (=> b!1645382 m!1989779))

(declare-fun m!1989781 () Bool)

(assert (=> b!1645382 m!1989781))

(declare-fun m!1989783 () Bool)

(assert (=> b!1645382 m!1989783))

(assert (=> b!1645382 m!1989769))

(declare-fun m!1989785 () Bool)

(assert (=> b!1645382 m!1989785))

(declare-fun m!1989787 () Bool)

(assert (=> b!1645382 m!1989787))

(declare-fun m!1989789 () Bool)

(assert (=> b!1645382 m!1989789))

(declare-fun m!1989791 () Bool)

(assert (=> b!1645382 m!1989791))

(assert (=> b!1645382 m!1989791))

(assert (=> b!1645382 m!1989777))

(declare-fun m!1989793 () Bool)

(assert (=> b!1645382 m!1989793))

(assert (=> b!1645382 m!1989783))

(declare-fun m!1989795 () Bool)

(assert (=> b!1645382 m!1989795))

(assert (=> b!1645382 m!1989487))

(declare-fun m!1989797 () Bool)

(assert (=> b!1645382 m!1989797))

(declare-fun m!1989799 () Bool)

(assert (=> b!1645382 m!1989799))

(declare-fun m!1989801 () Bool)

(assert (=> b!1645382 m!1989801))

(assert (=> b!1645382 m!1989765))

(declare-fun m!1989803 () Bool)

(assert (=> b!1645382 m!1989803))

(assert (=> b!1645382 m!1989763))

(declare-fun m!1989805 () Bool)

(assert (=> b!1645382 m!1989805))

(declare-fun m!1989807 () Bool)

(assert (=> b!1645382 m!1989807))

(assert (=> b!1645382 m!1989787))

(assert (=> b!1645382 m!1989783))

(declare-fun m!1989809 () Bool)

(assert (=> b!1645382 m!1989809))

(assert (=> b!1645382 m!1989507))

(assert (=> b!1645382 m!1989799))

(declare-fun m!1989811 () Bool)

(assert (=> b!1645382 m!1989811))

(declare-fun m!1989813 () Bool)

(assert (=> b!1645382 m!1989813))

(assert (=> b!1645382 m!1989487))

(assert (=> b!1645382 m!1989757))

(assert (=> b!1645382 m!1989765))

(assert (=> b!1645382 m!1989507))

(declare-fun m!1989815 () Bool)

(assert (=> b!1645382 m!1989815))

(declare-fun m!1989817 () Bool)

(assert (=> b!1645382 m!1989817))

(declare-fun m!1989819 () Bool)

(assert (=> b!1645382 m!1989819))

(assert (=> b!1645382 m!1989783))

(declare-fun m!1989821 () Bool)

(assert (=> b!1645382 m!1989821))

(assert (=> b!1645382 m!1989813))

(assert (=> b!1645382 m!1989797))

(declare-fun m!1989823 () Bool)

(assert (=> b!1645382 m!1989823))

(assert (=> b!1645382 m!1989807))

(declare-fun m!1989825 () Bool)

(assert (=> b!1645382 m!1989825))

(assert (=> b!1645382 m!1989823))

(assert (=> b!1645382 m!1989787))

(assert (=> b!1645382 m!1989801))

(declare-fun m!1989827 () Bool)

(assert (=> b!1645382 m!1989827))

(assert (=> b!1645382 m!1989787))

(assert (=> b!1645382 m!1989769))

(declare-fun m!1989829 () Bool)

(assert (=> b!1645382 m!1989829))

(declare-fun m!1989831 () Bool)

(assert (=> b!1645382 m!1989831))

(assert (=> b!1645383 m!1989487))

(assert (=> b!1645383 m!1989487))

(assert (=> b!1645383 m!1989757))

(assert (=> b!1645383 m!1989757))

(assert (=> b!1645383 m!1989759))

(declare-fun m!1989833 () Bool)

(assert (=> b!1645383 m!1989833))

(assert (=> b!1645282 d!495647))

(declare-fun b!1645393 () Bool)

(declare-fun res!737210 () Bool)

(declare-fun e!1055242 () Bool)

(assert (=> b!1645393 (=> (not res!737210) (not e!1055242))))

(assert (=> b!1645393 (= res!737210 (= (head!3598 lt!607354) (head!3598 lt!607337)))))

(declare-fun b!1645392 () Bool)

(declare-fun e!1055240 () Bool)

(assert (=> b!1645392 (= e!1055240 e!1055242)))

(declare-fun res!737207 () Bool)

(assert (=> b!1645392 (=> (not res!737207) (not e!1055242))))

(assert (=> b!1645392 (= res!737207 (not ((_ is Nil!18148) lt!607337)))))

(declare-fun b!1645395 () Bool)

(declare-fun e!1055241 () Bool)

(assert (=> b!1645395 (= e!1055241 (>= (size!14456 lt!607337) (size!14456 lt!607354)))))

(declare-fun d!495655 () Bool)

(assert (=> d!495655 e!1055241))

(declare-fun res!737208 () Bool)

(assert (=> d!495655 (=> res!737208 e!1055241)))

(declare-fun lt!607538 () Bool)

(assert (=> d!495655 (= res!737208 (not lt!607538))))

(assert (=> d!495655 (= lt!607538 e!1055240)))

(declare-fun res!737209 () Bool)

(assert (=> d!495655 (=> res!737209 e!1055240)))

(assert (=> d!495655 (= res!737209 ((_ is Nil!18148) lt!607354))))

(assert (=> d!495655 (= (isPrefix!1459 lt!607354 lt!607337) lt!607538)))

(declare-fun b!1645394 () Bool)

(declare-fun tail!2423 (List!18218) List!18218)

(assert (=> b!1645394 (= e!1055242 (isPrefix!1459 (tail!2423 lt!607354) (tail!2423 lt!607337)))))

(assert (= (and d!495655 (not res!737209)) b!1645392))

(assert (= (and b!1645392 res!737207) b!1645393))

(assert (= (and b!1645393 res!737210) b!1645394))

(assert (= (and d!495655 (not res!737208)) b!1645395))

(declare-fun m!1989835 () Bool)

(assert (=> b!1645393 m!1989835))

(declare-fun m!1989837 () Bool)

(assert (=> b!1645393 m!1989837))

(declare-fun m!1989839 () Bool)

(assert (=> b!1645395 m!1989839))

(assert (=> b!1645395 m!1989627))

(declare-fun m!1989841 () Bool)

(assert (=> b!1645394 m!1989841))

(declare-fun m!1989843 () Bool)

(assert (=> b!1645394 m!1989843))

(assert (=> b!1645394 m!1989841))

(assert (=> b!1645394 m!1989843))

(declare-fun m!1989845 () Bool)

(assert (=> b!1645394 m!1989845))

(assert (=> b!1645282 d!495655))

(declare-fun d!495657 () Bool)

(assert (=> d!495657 (isPrefix!1459 lt!607354 (++!4890 lt!607354 lt!607352))))

(declare-fun lt!607541 () Unit!30031)

(declare-fun choose!9874 (List!18218 List!18218) Unit!30031)

(assert (=> d!495657 (= lt!607541 (choose!9874 lt!607354 lt!607352))))

(assert (=> d!495657 (= (lemmaConcatTwoListThenFirstIsPrefix!984 lt!607354 lt!607352) lt!607541)))

(declare-fun bs!396043 () Bool)

(assert (= bs!396043 d!495657))

(assert (=> bs!396043 m!1989493))

(assert (=> bs!396043 m!1989493))

(declare-fun m!1989847 () Bool)

(assert (=> bs!396043 m!1989847))

(declare-fun m!1989849 () Bool)

(assert (=> bs!396043 m!1989849))

(assert (=> b!1645282 d!495657))

(declare-fun b!1645423 () Bool)

(declare-fun res!737238 () Bool)

(declare-fun e!1055257 () Bool)

(assert (=> b!1645423 (=> (not res!737238) (not e!1055257))))

(declare-fun lt!607559 () Option!3436)

(assert (=> b!1645423 (= res!737238 (= (++!4890 (list!7198 (charsOf!1850 (_1!10309 (get!5278 lt!607559)))) (_2!10309 (get!5278 lt!607559))) lt!607336))))

(declare-fun b!1645424 () Bool)

(declare-fun res!737237 () Bool)

(assert (=> b!1645424 (=> (not res!737237) (not e!1055257))))

(assert (=> b!1645424 (= res!737237 (matchR!2022 (regex!3201 (rule!5055 (_1!10309 (get!5278 lt!607559)))) (list!7198 (charsOf!1850 (_1!10309 (get!5278 lt!607559))))))))

(declare-fun b!1645425 () Bool)

(declare-fun res!737239 () Bool)

(assert (=> b!1645425 (=> (not res!737239) (not e!1055257))))

(assert (=> b!1645425 (= res!737239 (= (list!7198 (charsOf!1850 (_1!10309 (get!5278 lt!607559)))) (originalCharacters!4015 (_1!10309 (get!5278 lt!607559)))))))

(declare-fun call!105783 () Option!3436)

(declare-fun bm!105778 () Bool)

(declare-fun maxPrefixOneRule!800 (LexerInterface!2830 Rule!6202 List!18218) Option!3436)

(assert (=> bm!105778 (= call!105783 (maxPrefixOneRule!800 thiss!17113 (h!23551 rules!1846) lt!607336))))

(declare-fun b!1645426 () Bool)

(declare-fun e!1055256 () Option!3436)

(declare-fun lt!607560 () Option!3436)

(declare-fun lt!607562 () Option!3436)

(assert (=> b!1645426 (= e!1055256 (ite (and ((_ is None!3435) lt!607560) ((_ is None!3435) lt!607562)) None!3435 (ite ((_ is None!3435) lt!607562) lt!607560 (ite ((_ is None!3435) lt!607560) lt!607562 (ite (>= (size!14452 (_1!10309 (v!24570 lt!607560))) (size!14452 (_1!10309 (v!24570 lt!607562)))) lt!607560 lt!607562)))))))

(assert (=> b!1645426 (= lt!607560 call!105783)))

(assert (=> b!1645426 (= lt!607562 (maxPrefix!1392 thiss!17113 (t!150419 rules!1846) lt!607336))))

(declare-fun b!1645427 () Bool)

(declare-fun res!737234 () Bool)

(assert (=> b!1645427 (=> (not res!737234) (not e!1055257))))

(assert (=> b!1645427 (= res!737234 (< (size!14456 (_2!10309 (get!5278 lt!607559))) (size!14456 lt!607336)))))

(declare-fun b!1645428 () Bool)

(declare-fun contains!3159 (List!18220 Rule!6202) Bool)

(assert (=> b!1645428 (= e!1055257 (contains!3159 rules!1846 (rule!5055 (_1!10309 (get!5278 lt!607559)))))))

(declare-fun d!495659 () Bool)

(declare-fun e!1055255 () Bool)

(assert (=> d!495659 e!1055255))

(declare-fun res!737236 () Bool)

(assert (=> d!495659 (=> res!737236 e!1055255)))

(declare-fun isEmpty!11176 (Option!3436) Bool)

(assert (=> d!495659 (= res!737236 (isEmpty!11176 lt!607559))))

(assert (=> d!495659 (= lt!607559 e!1055256)))

(declare-fun c!267601 () Bool)

(assert (=> d!495659 (= c!267601 (and ((_ is Cons!18150) rules!1846) ((_ is Nil!18150) (t!150419 rules!1846))))))

(declare-fun lt!607561 () Unit!30031)

(declare-fun lt!607558 () Unit!30031)

(assert (=> d!495659 (= lt!607561 lt!607558)))

(assert (=> d!495659 (isPrefix!1459 lt!607336 lt!607336)))

(declare-fun lemmaIsPrefixRefl!986 (List!18218 List!18218) Unit!30031)

(assert (=> d!495659 (= lt!607558 (lemmaIsPrefixRefl!986 lt!607336 lt!607336))))

(declare-fun rulesValidInductive!1008 (LexerInterface!2830 List!18220) Bool)

(assert (=> d!495659 (rulesValidInductive!1008 thiss!17113 rules!1846)))

(assert (=> d!495659 (= (maxPrefix!1392 thiss!17113 rules!1846 lt!607336) lt!607559)))

(declare-fun b!1645429 () Bool)

(declare-fun res!737235 () Bool)

(assert (=> b!1645429 (=> (not res!737235) (not e!1055257))))

(declare-fun apply!4748 (TokenValueInjection!6242 BalanceConc!12044) TokenValue!3291)

(declare-fun seqFromList!2142 (List!18218) BalanceConc!12044)

(assert (=> b!1645429 (= res!737235 (= (value!100901 (_1!10309 (get!5278 lt!607559))) (apply!4748 (transformation!3201 (rule!5055 (_1!10309 (get!5278 lt!607559)))) (seqFromList!2142 (originalCharacters!4015 (_1!10309 (get!5278 lt!607559)))))))))

(declare-fun b!1645430 () Bool)

(assert (=> b!1645430 (= e!1055255 e!1055257)))

(declare-fun res!737240 () Bool)

(assert (=> b!1645430 (=> (not res!737240) (not e!1055257))))

(assert (=> b!1645430 (= res!737240 (isDefined!2793 lt!607559))))

(declare-fun b!1645431 () Bool)

(assert (=> b!1645431 (= e!1055256 call!105783)))

(assert (= (and d!495659 c!267601) b!1645431))

(assert (= (and d!495659 (not c!267601)) b!1645426))

(assert (= (or b!1645431 b!1645426) bm!105778))

(assert (= (and d!495659 (not res!737236)) b!1645430))

(assert (= (and b!1645430 res!737240) b!1645425))

(assert (= (and b!1645425 res!737239) b!1645427))

(assert (= (and b!1645427 res!737234) b!1645423))

(assert (= (and b!1645423 res!737238) b!1645429))

(assert (= (and b!1645429 res!737235) b!1645424))

(assert (= (and b!1645424 res!737237) b!1645428))

(declare-fun m!1989867 () Bool)

(assert (=> d!495659 m!1989867))

(declare-fun m!1989869 () Bool)

(assert (=> d!495659 m!1989869))

(declare-fun m!1989871 () Bool)

(assert (=> d!495659 m!1989871))

(declare-fun m!1989873 () Bool)

(assert (=> d!495659 m!1989873))

(declare-fun m!1989875 () Bool)

(assert (=> bm!105778 m!1989875))

(declare-fun m!1989877 () Bool)

(assert (=> b!1645427 m!1989877))

(declare-fun m!1989879 () Bool)

(assert (=> b!1645427 m!1989879))

(declare-fun m!1989881 () Bool)

(assert (=> b!1645427 m!1989881))

(assert (=> b!1645423 m!1989877))

(declare-fun m!1989883 () Bool)

(assert (=> b!1645423 m!1989883))

(assert (=> b!1645423 m!1989883))

(declare-fun m!1989885 () Bool)

(assert (=> b!1645423 m!1989885))

(assert (=> b!1645423 m!1989885))

(declare-fun m!1989887 () Bool)

(assert (=> b!1645423 m!1989887))

(declare-fun m!1989889 () Bool)

(assert (=> b!1645430 m!1989889))

(assert (=> b!1645428 m!1989877))

(declare-fun m!1989891 () Bool)

(assert (=> b!1645428 m!1989891))

(declare-fun m!1989893 () Bool)

(assert (=> b!1645426 m!1989893))

(assert (=> b!1645429 m!1989877))

(declare-fun m!1989895 () Bool)

(assert (=> b!1645429 m!1989895))

(assert (=> b!1645429 m!1989895))

(declare-fun m!1989897 () Bool)

(assert (=> b!1645429 m!1989897))

(assert (=> b!1645425 m!1989877))

(assert (=> b!1645425 m!1989883))

(assert (=> b!1645425 m!1989883))

(assert (=> b!1645425 m!1989885))

(assert (=> b!1645424 m!1989877))

(assert (=> b!1645424 m!1989883))

(assert (=> b!1645424 m!1989883))

(assert (=> b!1645424 m!1989885))

(assert (=> b!1645424 m!1989885))

(declare-fun m!1989899 () Bool)

(assert (=> b!1645424 m!1989899))

(assert (=> b!1645283 d!495659))

(declare-fun d!495663 () Bool)

(assert (=> d!495663 (= (list!7198 lt!607353) (list!7200 (c!267577 lt!607353)))))

(declare-fun bs!396044 () Bool)

(assert (= bs!396044 d!495663))

(declare-fun m!1989901 () Bool)

(assert (=> bs!396044 m!1989901))

(assert (=> b!1645283 d!495663))

(declare-fun d!495665 () Bool)

(declare-fun lt!607600 () BalanceConc!12044)

(declare-fun printListTailRec!383 (LexerInterface!2830 List!18219 List!18218) List!18218)

(declare-fun dropList!656 (BalanceConc!12046 Int) List!18219)

(assert (=> d!495665 (= (list!7198 lt!607600) (printListTailRec!383 thiss!17113 (dropList!656 lt!607338 0) (list!7198 (BalanceConc!12045 Empty!6050))))))

(declare-fun e!1055268 () BalanceConc!12044)

(assert (=> d!495665 (= lt!607600 e!1055268)))

(declare-fun c!267607 () Bool)

(assert (=> d!495665 (= c!267607 (>= 0 (size!14454 lt!607338)))))

(declare-fun e!1055269 () Bool)

(assert (=> d!495665 e!1055269))

(declare-fun res!737246 () Bool)

(assert (=> d!495665 (=> (not res!737246) (not e!1055269))))

(assert (=> d!495665 (= res!737246 (>= 0 0))))

(assert (=> d!495665 (= (printTailRec!881 thiss!17113 lt!607338 0 (BalanceConc!12045 Empty!6050)) lt!607600)))

(declare-fun b!1645447 () Bool)

(assert (=> b!1645447 (= e!1055269 (<= 0 (size!14454 lt!607338)))))

(declare-fun b!1645448 () Bool)

(assert (=> b!1645448 (= e!1055268 (BalanceConc!12045 Empty!6050))))

(declare-fun b!1645449 () Bool)

(declare-fun ++!4892 (BalanceConc!12044 BalanceConc!12044) BalanceConc!12044)

(declare-fun apply!4749 (BalanceConc!12046 Int) Token!5968)

(assert (=> b!1645449 (= e!1055268 (printTailRec!881 thiss!17113 lt!607338 (+ 0 1) (++!4892 (BalanceConc!12045 Empty!6050) (charsOf!1850 (apply!4749 lt!607338 0)))))))

(declare-fun lt!607599 () List!18219)

(assert (=> b!1645449 (= lt!607599 (list!7197 lt!607338))))

(declare-fun lt!607603 () Unit!30031)

(declare-fun lemmaDropApply!590 (List!18219 Int) Unit!30031)

(assert (=> b!1645449 (= lt!607603 (lemmaDropApply!590 lt!607599 0))))

(declare-fun head!3601 (List!18219) Token!5968)

(declare-fun drop!902 (List!18219 Int) List!18219)

(declare-fun apply!4750 (List!18219 Int) Token!5968)

(assert (=> b!1645449 (= (head!3601 (drop!902 lt!607599 0)) (apply!4750 lt!607599 0))))

(declare-fun lt!607598 () Unit!30031)

(assert (=> b!1645449 (= lt!607598 lt!607603)))

(declare-fun lt!607601 () List!18219)

(assert (=> b!1645449 (= lt!607601 (list!7197 lt!607338))))

(declare-fun lt!607602 () Unit!30031)

(declare-fun lemmaDropTail!570 (List!18219 Int) Unit!30031)

(assert (=> b!1645449 (= lt!607602 (lemmaDropTail!570 lt!607601 0))))

(declare-fun tail!2424 (List!18219) List!18219)

(assert (=> b!1645449 (= (tail!2424 (drop!902 lt!607601 0)) (drop!902 lt!607601 (+ 0 1)))))

(declare-fun lt!607604 () Unit!30031)

(assert (=> b!1645449 (= lt!607604 lt!607602)))

(assert (= (and d!495665 res!737246) b!1645447))

(assert (= (and d!495665 c!267607) b!1645448))

(assert (= (and d!495665 (not c!267607)) b!1645449))

(declare-fun m!1989941 () Bool)

(assert (=> d!495665 m!1989941))

(declare-fun m!1989943 () Bool)

(assert (=> d!495665 m!1989943))

(declare-fun m!1989945 () Bool)

(assert (=> d!495665 m!1989945))

(assert (=> d!495665 m!1989941))

(assert (=> d!495665 m!1989945))

(declare-fun m!1989947 () Bool)

(assert (=> d!495665 m!1989947))

(declare-fun m!1989949 () Bool)

(assert (=> d!495665 m!1989949))

(assert (=> b!1645447 m!1989949))

(declare-fun m!1989951 () Bool)

(assert (=> b!1645449 m!1989951))

(declare-fun m!1989953 () Bool)

(assert (=> b!1645449 m!1989953))

(declare-fun m!1989955 () Bool)

(assert (=> b!1645449 m!1989955))

(declare-fun m!1989957 () Bool)

(assert (=> b!1645449 m!1989957))

(declare-fun m!1989959 () Bool)

(assert (=> b!1645449 m!1989959))

(declare-fun m!1989961 () Bool)

(assert (=> b!1645449 m!1989961))

(declare-fun m!1989963 () Bool)

(assert (=> b!1645449 m!1989963))

(declare-fun m!1989965 () Bool)

(assert (=> b!1645449 m!1989965))

(assert (=> b!1645449 m!1989957))

(declare-fun m!1989967 () Bool)

(assert (=> b!1645449 m!1989967))

(declare-fun m!1989969 () Bool)

(assert (=> b!1645449 m!1989969))

(declare-fun m!1989971 () Bool)

(assert (=> b!1645449 m!1989971))

(assert (=> b!1645449 m!1989953))

(assert (=> b!1645449 m!1989959))

(declare-fun m!1989973 () Bool)

(assert (=> b!1645449 m!1989973))

(assert (=> b!1645449 m!1989951))

(assert (=> b!1645449 m!1989971))

(declare-fun m!1989975 () Bool)

(assert (=> b!1645449 m!1989975))

(assert (=> b!1645283 d!495665))

(declare-fun d!495671 () Bool)

(declare-fun lt!607605 () BalanceConc!12044)

(assert (=> d!495671 (= (list!7198 lt!607605) (printList!943 thiss!17113 (list!7197 lt!607338)))))

(assert (=> d!495671 (= lt!607605 (printTailRec!881 thiss!17113 lt!607338 0 (BalanceConc!12045 Empty!6050)))))

(assert (=> d!495671 (= (print!1361 thiss!17113 lt!607338) lt!607605)))

(declare-fun bs!396046 () Bool)

(assert (= bs!396046 d!495671))

(declare-fun m!1989977 () Bool)

(assert (=> bs!396046 m!1989977))

(assert (=> bs!396046 m!1989955))

(assert (=> bs!396046 m!1989955))

(declare-fun m!1989979 () Bool)

(assert (=> bs!396046 m!1989979))

(assert (=> bs!396046 m!1989529))

(assert (=> b!1645283 d!495671))

(declare-fun d!495673 () Bool)

(declare-fun c!267610 () Bool)

(assert (=> d!495673 (= c!267610 ((_ is Cons!18149) (Cons!18149 (h!23550 tokens!457) Nil!18149)))))

(declare-fun e!1055272 () List!18218)

(assert (=> d!495673 (= (printList!943 thiss!17113 (Cons!18149 (h!23550 tokens!457) Nil!18149)) e!1055272)))

(declare-fun b!1645454 () Bool)

(assert (=> b!1645454 (= e!1055272 (++!4890 (list!7198 (charsOf!1850 (h!23550 (Cons!18149 (h!23550 tokens!457) Nil!18149)))) (printList!943 thiss!17113 (t!150418 (Cons!18149 (h!23550 tokens!457) Nil!18149)))))))

(declare-fun b!1645455 () Bool)

(assert (=> b!1645455 (= e!1055272 Nil!18148)))

(assert (= (and d!495673 c!267610) b!1645454))

(assert (= (and d!495673 (not c!267610)) b!1645455))

(declare-fun m!1989981 () Bool)

(assert (=> b!1645454 m!1989981))

(assert (=> b!1645454 m!1989981))

(declare-fun m!1989983 () Bool)

(assert (=> b!1645454 m!1989983))

(declare-fun m!1989985 () Bool)

(assert (=> b!1645454 m!1989985))

(assert (=> b!1645454 m!1989983))

(assert (=> b!1645454 m!1989985))

(declare-fun m!1989987 () Bool)

(assert (=> b!1645454 m!1989987))

(assert (=> b!1645283 d!495673))

(declare-fun d!495675 () Bool)

(declare-fun e!1055281 () Bool)

(assert (=> d!495675 e!1055281))

(declare-fun res!737263 () Bool)

(assert (=> d!495675 (=> (not res!737263) (not e!1055281))))

(declare-fun lt!607618 () BalanceConc!12046)

(assert (=> d!495675 (= res!737263 (= (list!7197 lt!607618) (Cons!18149 (h!23550 tokens!457) Nil!18149)))))

(declare-fun singleton!718 (Token!5968) BalanceConc!12046)

(assert (=> d!495675 (= lt!607618 (singleton!718 (h!23550 tokens!457)))))

(assert (=> d!495675 (= (singletonSeq!1673 (h!23550 tokens!457)) lt!607618)))

(declare-fun b!1645476 () Bool)

(declare-fun isBalanced!1844 (Conc!6051) Bool)

(assert (=> b!1645476 (= e!1055281 (isBalanced!1844 (c!267579 lt!607618)))))

(assert (= (and d!495675 res!737263) b!1645476))

(declare-fun m!1989989 () Bool)

(assert (=> d!495675 m!1989989))

(declare-fun m!1989991 () Bool)

(assert (=> d!495675 m!1989991))

(declare-fun m!1989993 () Bool)

(assert (=> b!1645476 m!1989993))

(assert (=> b!1645283 d!495675))

(declare-fun b!1645569 () Bool)

(declare-fun e!1055345 () Bool)

(assert (=> b!1645569 (= e!1055345 true)))

(declare-fun b!1645568 () Bool)

(declare-fun e!1055344 () Bool)

(assert (=> b!1645568 (= e!1055344 e!1055345)))

(declare-fun b!1645567 () Bool)

(declare-fun e!1055343 () Bool)

(assert (=> b!1645567 (= e!1055343 e!1055344)))

(declare-fun d!495677 () Bool)

(assert (=> d!495677 e!1055343))

(assert (= b!1645568 b!1645569))

(assert (= b!1645567 b!1645568))

(assert (= (and d!495677 ((_ is Cons!18150) rules!1846)) b!1645567))

(declare-fun lambda!67577 () Int)

(declare-fun order!10797 () Int)

(declare-fun order!10799 () Int)

(declare-fun dynLambda!8112 (Int Int) Int)

(declare-fun dynLambda!8113 (Int Int) Int)

(assert (=> b!1645569 (< (dynLambda!8112 order!10797 (toValue!4644 (transformation!3201 (h!23551 rules!1846)))) (dynLambda!8113 order!10799 lambda!67577))))

(declare-fun order!10801 () Int)

(declare-fun dynLambda!8114 (Int Int) Int)

(assert (=> b!1645569 (< (dynLambda!8114 order!10801 (toChars!4503 (transformation!3201 (h!23551 rules!1846)))) (dynLambda!8113 order!10799 lambda!67577))))

(assert (=> d!495677 true))

(declare-fun lt!607666 () Bool)

(declare-fun forall!4133 (List!18219 Int) Bool)

(assert (=> d!495677 (= lt!607666 (forall!4133 tokens!457 lambda!67577))))

(declare-fun e!1055335 () Bool)

(assert (=> d!495677 (= lt!607666 e!1055335)))

(declare-fun res!737312 () Bool)

(assert (=> d!495677 (=> res!737312 e!1055335)))

(assert (=> d!495677 (= res!737312 (not ((_ is Cons!18149) tokens!457)))))

(assert (=> d!495677 (not (isEmpty!11169 rules!1846))))

(assert (=> d!495677 (= (rulesProduceEachTokenIndividuallyList!1032 thiss!17113 rules!1846 tokens!457) lt!607666)))

(declare-fun b!1645557 () Bool)

(declare-fun e!1055336 () Bool)

(assert (=> b!1645557 (= e!1055335 e!1055336)))

(declare-fun res!737313 () Bool)

(assert (=> b!1645557 (=> (not res!737313) (not e!1055336))))

(assert (=> b!1645557 (= res!737313 (rulesProduceIndividualToken!1478 thiss!17113 rules!1846 (h!23550 tokens!457)))))

(declare-fun b!1645558 () Bool)

(assert (=> b!1645558 (= e!1055336 (rulesProduceEachTokenIndividuallyList!1032 thiss!17113 rules!1846 (t!150418 tokens!457)))))

(assert (= (and d!495677 (not res!737312)) b!1645557))

(assert (= (and b!1645557 res!737313) b!1645558))

(declare-fun m!1990125 () Bool)

(assert (=> d!495677 m!1990125))

(assert (=> d!495677 m!1989533))

(assert (=> b!1645557 m!1989477))

(declare-fun m!1990127 () Bool)

(assert (=> b!1645558 m!1990127))

(assert (=> b!1645284 d!495677))

(declare-fun d!495719 () Bool)

(declare-fun res!737318 () Bool)

(declare-fun e!1055348 () Bool)

(assert (=> d!495719 (=> (not res!737318) (not e!1055348))))

(assert (=> d!495719 (= res!737318 (not (isEmpty!11173 (originalCharacters!4015 (h!23550 tokens!457)))))))

(assert (=> d!495719 (= (inv!23508 (h!23550 tokens!457)) e!1055348)))

(declare-fun b!1645576 () Bool)

(declare-fun res!737319 () Bool)

(assert (=> b!1645576 (=> (not res!737319) (not e!1055348))))

(assert (=> b!1645576 (= res!737319 (= (originalCharacters!4015 (h!23550 tokens!457)) (list!7198 (dynLambda!8111 (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) (value!100901 (h!23550 tokens!457))))))))

(declare-fun b!1645577 () Bool)

(assert (=> b!1645577 (= e!1055348 (= (size!14452 (h!23550 tokens!457)) (size!14456 (originalCharacters!4015 (h!23550 tokens!457)))))))

(assert (= (and d!495719 res!737318) b!1645576))

(assert (= (and b!1645576 res!737319) b!1645577))

(declare-fun b_lambda!51715 () Bool)

(assert (=> (not b_lambda!51715) (not b!1645576)))

(assert (=> b!1645576 t!150425))

(declare-fun b_and!116785 () Bool)

(assert (= b_and!116777 (and (=> t!150425 result!113784) b_and!116785)))

(assert (=> b!1645576 t!150427))

(declare-fun b_and!116787 () Bool)

(assert (= b_and!116779 (and (=> t!150427 result!113788) b_and!116787)))

(declare-fun m!1990129 () Bool)

(assert (=> d!495719 m!1990129))

(assert (=> b!1645576 m!1989647))

(assert (=> b!1645576 m!1989647))

(declare-fun m!1990131 () Bool)

(assert (=> b!1645576 m!1990131))

(declare-fun m!1990133 () Bool)

(assert (=> b!1645577 m!1990133))

(assert (=> b!1645275 d!495719))

(declare-fun d!495721 () Bool)

(assert (=> d!495721 (= (inv!23505 (tag!3481 (rule!5055 (h!23550 tokens!457)))) (= (mod (str.len (value!100900 (tag!3481 (rule!5055 (h!23550 tokens!457))))) 2) 0))))

(assert (=> b!1645287 d!495721))

(declare-fun d!495723 () Bool)

(declare-fun res!737322 () Bool)

(declare-fun e!1055351 () Bool)

(assert (=> d!495723 (=> (not res!737322) (not e!1055351))))

(declare-fun semiInverseModEq!1232 (Int Int) Bool)

(assert (=> d!495723 (= res!737322 (semiInverseModEq!1232 (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) (toValue!4644 (transformation!3201 (rule!5055 (h!23550 tokens!457))))))))

(assert (=> d!495723 (= (inv!23509 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) e!1055351)))

(declare-fun b!1645580 () Bool)

(declare-fun equivClasses!1173 (Int Int) Bool)

(assert (=> b!1645580 (= e!1055351 (equivClasses!1173 (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))) (toValue!4644 (transformation!3201 (rule!5055 (h!23550 tokens!457))))))))

(assert (= (and d!495723 res!737322) b!1645580))

(declare-fun m!1990135 () Bool)

(assert (=> d!495723 m!1990135))

(declare-fun m!1990137 () Bool)

(assert (=> b!1645580 m!1990137))

(assert (=> b!1645287 d!495723))

(declare-fun d!495725 () Bool)

(declare-fun res!737325 () Bool)

(declare-fun e!1055354 () Bool)

(assert (=> d!495725 (=> (not res!737325) (not e!1055354))))

(declare-fun rulesValid!1160 (LexerInterface!2830 List!18220) Bool)

(assert (=> d!495725 (= res!737325 (rulesValid!1160 thiss!17113 rules!1846))))

(assert (=> d!495725 (= (rulesInvariant!2499 thiss!17113 rules!1846) e!1055354)))

(declare-fun b!1645583 () Bool)

(declare-datatypes ((List!18222 0))(
  ( (Nil!18152) (Cons!18152 (h!23553 String!20787) (t!150445 List!18222)) )
))
(declare-fun noDuplicateTag!1160 (LexerInterface!2830 List!18220 List!18222) Bool)

(assert (=> b!1645583 (= e!1055354 (noDuplicateTag!1160 thiss!17113 rules!1846 Nil!18152))))

(assert (= (and d!495725 res!737325) b!1645583))

(declare-fun m!1990139 () Bool)

(assert (=> d!495725 m!1990139))

(declare-fun m!1990141 () Bool)

(assert (=> b!1645583 m!1990141))

(assert (=> b!1645276 d!495725))

(declare-fun d!495727 () Bool)

(declare-fun res!737331 () Bool)

(declare-fun e!1055360 () Bool)

(assert (=> d!495727 (=> res!737331 e!1055360)))

(assert (=> d!495727 (= res!737331 (or (not ((_ is Cons!18149) tokens!457)) (not ((_ is Cons!18149) (t!150418 tokens!457)))))))

(assert (=> d!495727 (= (tokensListTwoByTwoPredicateSeparableList!523 thiss!17113 tokens!457 rules!1846) e!1055360)))

(declare-fun b!1645588 () Bool)

(declare-fun e!1055359 () Bool)

(assert (=> b!1645588 (= e!1055360 e!1055359)))

(declare-fun res!737330 () Bool)

(assert (=> b!1645588 (=> (not res!737330) (not e!1055359))))

(assert (=> b!1645588 (= res!737330 (separableTokensPredicate!770 thiss!17113 (h!23550 tokens!457) (h!23550 (t!150418 tokens!457)) rules!1846))))

(declare-fun lt!607686 () Unit!30031)

(declare-fun Unit!30064 () Unit!30031)

(assert (=> b!1645588 (= lt!607686 Unit!30064)))

(assert (=> b!1645588 (> (size!14455 (charsOf!1850 (h!23550 (t!150418 tokens!457)))) 0)))

(declare-fun lt!607685 () Unit!30031)

(declare-fun Unit!30065 () Unit!30031)

(assert (=> b!1645588 (= lt!607685 Unit!30065)))

(assert (=> b!1645588 (rulesProduceIndividualToken!1478 thiss!17113 rules!1846 (h!23550 (t!150418 tokens!457)))))

(declare-fun lt!607684 () Unit!30031)

(declare-fun Unit!30066 () Unit!30031)

(assert (=> b!1645588 (= lt!607684 Unit!30066)))

(assert (=> b!1645588 (rulesProduceIndividualToken!1478 thiss!17113 rules!1846 (h!23550 tokens!457))))

(declare-fun lt!607687 () Unit!30031)

(declare-fun lt!607683 () Unit!30031)

(assert (=> b!1645588 (= lt!607687 lt!607683)))

(assert (=> b!1645588 (rulesProduceIndividualToken!1478 thiss!17113 rules!1846 (h!23550 (t!150418 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!596 (LexerInterface!2830 List!18220 List!18219 Token!5968) Unit!30031)

(assert (=> b!1645588 (= lt!607683 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!596 thiss!17113 rules!1846 tokens!457 (h!23550 (t!150418 tokens!457))))))

(declare-fun lt!607681 () Unit!30031)

(declare-fun lt!607682 () Unit!30031)

(assert (=> b!1645588 (= lt!607681 lt!607682)))

(assert (=> b!1645588 (rulesProduceIndividualToken!1478 thiss!17113 rules!1846 (h!23550 tokens!457))))

(assert (=> b!1645588 (= lt!607682 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!596 thiss!17113 rules!1846 tokens!457 (h!23550 tokens!457)))))

(declare-fun b!1645589 () Bool)

(assert (=> b!1645589 (= e!1055359 (tokensListTwoByTwoPredicateSeparableList!523 thiss!17113 (Cons!18149 (h!23550 (t!150418 tokens!457)) (t!150418 (t!150418 tokens!457))) rules!1846))))

(assert (= (and d!495727 (not res!737331)) b!1645588))

(assert (= (and b!1645588 res!737330) b!1645589))

(assert (=> b!1645588 m!1989513))

(declare-fun m!1990143 () Bool)

(assert (=> b!1645588 m!1990143))

(assert (=> b!1645588 m!1989823))

(declare-fun m!1990145 () Bool)

(assert (=> b!1645588 m!1990145))

(assert (=> b!1645588 m!1989823))

(declare-fun m!1990147 () Bool)

(assert (=> b!1645588 m!1990147))

(declare-fun m!1990149 () Bool)

(assert (=> b!1645588 m!1990149))

(assert (=> b!1645588 m!1989477))

(declare-fun m!1990151 () Bool)

(assert (=> b!1645589 m!1990151))

(assert (=> b!1645277 d!495727))

(declare-fun d!495729 () Bool)

(declare-fun prefixMatchZipperSequence!605 (Regex!4529 BalanceConc!12044) Bool)

(declare-fun rulesRegex!585 (LexerInterface!2830 List!18220) Regex!4529)

(assert (=> d!495729 (= (separableTokensPredicate!770 thiss!17113 (h!23550 tokens!457) (h!23550 (t!150418 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!605 (rulesRegex!585 thiss!17113 rules!1846) (++!4892 (charsOf!1850 (h!23550 tokens!457)) (singletonSeq!1675 (apply!4744 (charsOf!1850 (h!23550 (t!150418 tokens!457))) 0))))))))

(declare-fun bs!396055 () Bool)

(assert (= bs!396055 d!495729))

(assert (=> bs!396055 m!1989483))

(declare-fun m!1990153 () Bool)

(assert (=> bs!396055 m!1990153))

(assert (=> bs!396055 m!1989483))

(declare-fun m!1990155 () Bool)

(assert (=> bs!396055 m!1990155))

(declare-fun m!1990157 () Bool)

(assert (=> bs!396055 m!1990157))

(assert (=> bs!396055 m!1989823))

(assert (=> bs!396055 m!1989823))

(declare-fun m!1990159 () Bool)

(assert (=> bs!396055 m!1990159))

(assert (=> bs!396055 m!1990159))

(assert (=> bs!396055 m!1990155))

(assert (=> bs!396055 m!1990153))

(assert (=> bs!396055 m!1990157))

(declare-fun m!1990161 () Bool)

(assert (=> bs!396055 m!1990161))

(assert (=> b!1645288 d!495729))

(declare-fun d!495731 () Bool)

(declare-fun e!1055363 () Bool)

(assert (=> d!495731 e!1055363))

(declare-fun res!737334 () Bool)

(assert (=> d!495731 (=> (not res!737334) (not e!1055363))))

(declare-fun prepend!757 (Conc!6051 Token!5968) Conc!6051)

(assert (=> d!495731 (= res!737334 (isBalanced!1844 (prepend!757 (c!267579 (seqFromList!2140 (t!150418 (t!150418 tokens!457)))) (h!23550 (t!150418 tokens!457)))))))

(declare-fun lt!607690 () BalanceConc!12046)

(assert (=> d!495731 (= lt!607690 (BalanceConc!12047 (prepend!757 (c!267579 (seqFromList!2140 (t!150418 (t!150418 tokens!457)))) (h!23550 (t!150418 tokens!457)))))))

(assert (=> d!495731 (= (prepend!755 (seqFromList!2140 (t!150418 (t!150418 tokens!457))) (h!23550 (t!150418 tokens!457))) lt!607690)))

(declare-fun b!1645592 () Bool)

(assert (=> b!1645592 (= e!1055363 (= (list!7197 lt!607690) (Cons!18149 (h!23550 (t!150418 tokens!457)) (list!7197 (seqFromList!2140 (t!150418 (t!150418 tokens!457)))))))))

(assert (= (and d!495731 res!737334) b!1645592))

(declare-fun m!1990163 () Bool)

(assert (=> d!495731 m!1990163))

(assert (=> d!495731 m!1990163))

(declare-fun m!1990165 () Bool)

(assert (=> d!495731 m!1990165))

(declare-fun m!1990167 () Bool)

(assert (=> b!1645592 m!1990167))

(assert (=> b!1645592 m!1989507))

(declare-fun m!1990169 () Bool)

(assert (=> b!1645592 m!1990169))

(assert (=> b!1645289 d!495731))

(declare-fun d!495733 () Bool)

(assert (=> d!495733 (= (list!7197 (prepend!755 (seqFromList!2140 (t!150418 (t!150418 tokens!457))) (h!23550 (t!150418 tokens!457)))) (list!7201 (c!267579 (prepend!755 (seqFromList!2140 (t!150418 (t!150418 tokens!457))) (h!23550 (t!150418 tokens!457))))))))

(declare-fun bs!396056 () Bool)

(assert (= bs!396056 d!495733))

(declare-fun m!1990171 () Bool)

(assert (=> bs!396056 m!1990171))

(assert (=> b!1645289 d!495733))

(declare-fun d!495735 () Bool)

(assert (=> d!495735 (= (list!7197 lt!607351) (list!7201 (c!267579 lt!607351)))))

(declare-fun bs!396057 () Bool)

(assert (= bs!396057 d!495735))

(declare-fun m!1990173 () Bool)

(assert (=> bs!396057 m!1990173))

(assert (=> b!1645289 d!495735))

(declare-fun d!495737 () Bool)

(assert (=> d!495737 (= (seqFromList!2140 (t!150418 (t!150418 tokens!457))) (fromListB!947 (t!150418 (t!150418 tokens!457))))))

(declare-fun bs!396058 () Bool)

(assert (= bs!396058 d!495737))

(declare-fun m!1990175 () Bool)

(assert (=> bs!396058 m!1990175))

(assert (=> b!1645289 d!495737))

(declare-fun d!495739 () Bool)

(assert (=> d!495739 (= (list!7197 (_1!10308 lt!607347)) (list!7197 (prepend!755 (seqFromList!2140 (t!150418 (t!150418 tokens!457))) (h!23550 (t!150418 tokens!457)))))))

(declare-fun lt!607693 () Unit!30031)

(declare-fun choose!9875 (Token!5968 List!18219 BalanceConc!12046) Unit!30031)

(assert (=> d!495739 (= lt!607693 (choose!9875 (h!23550 (t!150418 tokens!457)) (t!150418 (t!150418 tokens!457)) (_1!10308 lt!607347)))))

(declare-fun $colon$colon!358 (List!18219 Token!5968) List!18219)

(assert (=> d!495739 (= (list!7197 (_1!10308 lt!607347)) (list!7197 (seqFromList!2140 ($colon$colon!358 (t!150418 (t!150418 tokens!457)) (h!23550 (t!150418 tokens!457))))))))

(assert (=> d!495739 (= (seqFromListBHdTlConstructive!276 (h!23550 (t!150418 tokens!457)) (t!150418 (t!150418 tokens!457)) (_1!10308 lt!607347)) lt!607693)))

(declare-fun bs!396059 () Bool)

(assert (= bs!396059 d!495739))

(declare-fun m!1990177 () Bool)

(assert (=> bs!396059 m!1990177))

(declare-fun m!1990179 () Bool)

(assert (=> bs!396059 m!1990179))

(assert (=> bs!396059 m!1990177))

(declare-fun m!1990181 () Bool)

(assert (=> bs!396059 m!1990181))

(assert (=> bs!396059 m!1990179))

(declare-fun m!1990183 () Bool)

(assert (=> bs!396059 m!1990183))

(assert (=> bs!396059 m!1989537))

(assert (=> bs!396059 m!1989507))

(assert (=> bs!396059 m!1989509))

(assert (=> bs!396059 m!1989507))

(assert (=> bs!396059 m!1989509))

(assert (=> bs!396059 m!1989511))

(assert (=> b!1645289 d!495739))

(declare-fun d!495741 () Bool)

(assert (=> d!495741 (= (inv!23505 (tag!3481 (h!23551 rules!1846))) (= (mod (str.len (value!100900 (tag!3481 (h!23551 rules!1846)))) 2) 0))))

(assert (=> b!1645278 d!495741))

(declare-fun d!495743 () Bool)

(declare-fun res!737335 () Bool)

(declare-fun e!1055364 () Bool)

(assert (=> d!495743 (=> (not res!737335) (not e!1055364))))

(assert (=> d!495743 (= res!737335 (semiInverseModEq!1232 (toChars!4503 (transformation!3201 (h!23551 rules!1846))) (toValue!4644 (transformation!3201 (h!23551 rules!1846)))))))

(assert (=> d!495743 (= (inv!23509 (transformation!3201 (h!23551 rules!1846))) e!1055364)))

(declare-fun b!1645593 () Bool)

(assert (=> b!1645593 (= e!1055364 (equivClasses!1173 (toChars!4503 (transformation!3201 (h!23551 rules!1846))) (toValue!4644 (transformation!3201 (h!23551 rules!1846)))))))

(assert (= (and d!495743 res!737335) b!1645593))

(declare-fun m!1990185 () Bool)

(assert (=> d!495743 m!1990185))

(declare-fun m!1990187 () Bool)

(assert (=> b!1645593 m!1990187))

(assert (=> b!1645278 d!495743))

(declare-fun d!495745 () Bool)

(declare-fun lt!607700 () Bool)

(declare-fun e!1055419 () Bool)

(assert (=> d!495745 (= lt!607700 e!1055419)))

(declare-fun res!737347 () Bool)

(assert (=> d!495745 (=> (not res!737347) (not e!1055419))))

(assert (=> d!495745 (= res!737347 (= (list!7197 (_1!10308 (lex!1314 thiss!17113 rules!1846 (print!1361 thiss!17113 (singletonSeq!1673 (h!23550 tokens!457)))))) (list!7197 (singletonSeq!1673 (h!23550 tokens!457)))))))

(declare-fun e!1055418 () Bool)

(assert (=> d!495745 (= lt!607700 e!1055418)))

(declare-fun res!737346 () Bool)

(assert (=> d!495745 (=> (not res!737346) (not e!1055418))))

(declare-fun lt!607699 () tuple2!17812)

(assert (=> d!495745 (= res!737346 (= (size!14454 (_1!10308 lt!607699)) 1))))

(assert (=> d!495745 (= lt!607699 (lex!1314 thiss!17113 rules!1846 (print!1361 thiss!17113 (singletonSeq!1673 (h!23550 tokens!457)))))))

(assert (=> d!495745 (not (isEmpty!11169 rules!1846))))

(assert (=> d!495745 (= (rulesProduceIndividualToken!1478 thiss!17113 rules!1846 (h!23550 tokens!457)) lt!607700)))

(declare-fun b!1645664 () Bool)

(declare-fun res!737345 () Bool)

(assert (=> b!1645664 (=> (not res!737345) (not e!1055418))))

(assert (=> b!1645664 (= res!737345 (= (apply!4749 (_1!10308 lt!607699) 0) (h!23550 tokens!457)))))

(declare-fun b!1645665 () Bool)

(assert (=> b!1645665 (= e!1055418 (isEmpty!11174 (_2!10308 lt!607699)))))

(declare-fun b!1645666 () Bool)

(assert (=> b!1645666 (= e!1055419 (isEmpty!11174 (_2!10308 (lex!1314 thiss!17113 rules!1846 (print!1361 thiss!17113 (singletonSeq!1673 (h!23550 tokens!457)))))))))

(assert (= (and d!495745 res!737346) b!1645664))

(assert (= (and b!1645664 res!737345) b!1645665))

(assert (= (and d!495745 res!737347) b!1645666))

(assert (=> d!495745 m!1989533))

(declare-fun m!1990209 () Bool)

(assert (=> d!495745 m!1990209))

(declare-fun m!1990211 () Bool)

(assert (=> d!495745 m!1990211))

(declare-fun m!1990213 () Bool)

(assert (=> d!495745 m!1990213))

(assert (=> d!495745 m!1989525))

(assert (=> d!495745 m!1990211))

(assert (=> d!495745 m!1989525))

(declare-fun m!1990215 () Bool)

(assert (=> d!495745 m!1990215))

(declare-fun m!1990217 () Bool)

(assert (=> d!495745 m!1990217))

(assert (=> d!495745 m!1989525))

(declare-fun m!1990219 () Bool)

(assert (=> b!1645664 m!1990219))

(declare-fun m!1990221 () Bool)

(assert (=> b!1645665 m!1990221))

(assert (=> b!1645666 m!1989525))

(assert (=> b!1645666 m!1989525))

(assert (=> b!1645666 m!1990211))

(assert (=> b!1645666 m!1990211))

(assert (=> b!1645666 m!1990213))

(declare-fun m!1990223 () Bool)

(assert (=> b!1645666 m!1990223))

(assert (=> b!1645279 d!495745))

(declare-fun b!1645680 () Bool)

(declare-fun b_free!44679 () Bool)

(declare-fun b_next!45383 () Bool)

(assert (=> b!1645680 (= b_free!44679 (not b_next!45383))))

(declare-fun tp!476789 () Bool)

(declare-fun b_and!116797 () Bool)

(assert (=> b!1645680 (= tp!476789 b_and!116797)))

(declare-fun b_free!44681 () Bool)

(declare-fun b_next!45385 () Bool)

(assert (=> b!1645680 (= b_free!44681 (not b_next!45385))))

(declare-fun t!150441 () Bool)

(declare-fun tb!94227 () Bool)

(assert (=> (and b!1645680 (= (toChars!4503 (transformation!3201 (rule!5055 (h!23550 (t!150418 tokens!457))))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457))))) t!150441) tb!94227))

(declare-fun result!113804 () Bool)

(assert (= result!113804 result!113784))

(assert (=> d!495635 t!150441))

(assert (=> b!1645576 t!150441))

(declare-fun b_and!116799 () Bool)

(declare-fun tp!476790 () Bool)

(assert (=> b!1645680 (= tp!476790 (and (=> t!150441 result!113804) b_and!116799))))

(declare-fun b!1645677 () Bool)

(declare-fun e!1055435 () Bool)

(declare-fun tp!476791 () Bool)

(declare-fun e!1055436 () Bool)

(assert (=> b!1645677 (= e!1055435 (and (inv!23508 (h!23550 (t!150418 tokens!457))) e!1055436 tp!476791))))

(declare-fun b!1645678 () Bool)

(declare-fun e!1055437 () Bool)

(declare-fun tp!476787 () Bool)

(assert (=> b!1645678 (= e!1055436 (and (inv!21 (value!100901 (h!23550 (t!150418 tokens!457)))) e!1055437 tp!476787))))

(declare-fun e!1055432 () Bool)

(assert (=> b!1645680 (= e!1055432 (and tp!476789 tp!476790))))

(declare-fun b!1645679 () Bool)

(declare-fun tp!476788 () Bool)

(assert (=> b!1645679 (= e!1055437 (and tp!476788 (inv!23505 (tag!3481 (rule!5055 (h!23550 (t!150418 tokens!457))))) (inv!23509 (transformation!3201 (rule!5055 (h!23550 (t!150418 tokens!457))))) e!1055432))))

(assert (=> b!1645275 (= tp!476712 e!1055435)))

(assert (= b!1645679 b!1645680))

(assert (= b!1645678 b!1645679))

(assert (= b!1645677 b!1645678))

(assert (= (and b!1645275 ((_ is Cons!18149) (t!150418 tokens!457))) b!1645677))

(declare-fun m!1990225 () Bool)

(assert (=> b!1645677 m!1990225))

(declare-fun m!1990227 () Bool)

(assert (=> b!1645678 m!1990227))

(declare-fun m!1990229 () Bool)

(assert (=> b!1645679 m!1990229))

(declare-fun m!1990231 () Bool)

(assert (=> b!1645679 m!1990231))

(declare-fun b!1645685 () Bool)

(declare-fun e!1055440 () Bool)

(declare-fun tp_is_empty!7345 () Bool)

(declare-fun tp!476794 () Bool)

(assert (=> b!1645685 (= e!1055440 (and tp_is_empty!7345 tp!476794))))

(assert (=> b!1645280 (= tp!476719 e!1055440)))

(assert (= (and b!1645280 ((_ is Cons!18148) (originalCharacters!4015 (h!23550 tokens!457)))) b!1645685))

(declare-fun b!1645696 () Bool)

(declare-fun b_free!44683 () Bool)

(declare-fun b_next!45387 () Bool)

(assert (=> b!1645696 (= b_free!44683 (not b_next!45387))))

(declare-fun tp!476806 () Bool)

(declare-fun b_and!116801 () Bool)

(assert (=> b!1645696 (= tp!476806 b_and!116801)))

(declare-fun b_free!44685 () Bool)

(declare-fun b_next!45389 () Bool)

(assert (=> b!1645696 (= b_free!44685 (not b_next!45389))))

(declare-fun t!150443 () Bool)

(declare-fun tb!94229 () Bool)

(assert (=> (and b!1645696 (= (toChars!4503 (transformation!3201 (h!23551 (t!150419 rules!1846)))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457))))) t!150443) tb!94229))

(declare-fun result!113810 () Bool)

(assert (= result!113810 result!113784))

(assert (=> d!495635 t!150443))

(assert (=> b!1645576 t!150443))

(declare-fun b_and!116803 () Bool)

(declare-fun tp!476805 () Bool)

(assert (=> b!1645696 (= tp!476805 (and (=> t!150443 result!113810) b_and!116803))))

(declare-fun e!1055449 () Bool)

(assert (=> b!1645696 (= e!1055449 (and tp!476806 tp!476805))))

(declare-fun e!1055451 () Bool)

(declare-fun tp!476803 () Bool)

(declare-fun b!1645695 () Bool)

(assert (=> b!1645695 (= e!1055451 (and tp!476803 (inv!23505 (tag!3481 (h!23551 (t!150419 rules!1846)))) (inv!23509 (transformation!3201 (h!23551 (t!150419 rules!1846)))) e!1055449))))

(declare-fun b!1645694 () Bool)

(declare-fun e!1055452 () Bool)

(declare-fun tp!476804 () Bool)

(assert (=> b!1645694 (= e!1055452 (and e!1055451 tp!476804))))

(assert (=> b!1645286 (= tp!476714 e!1055452)))

(assert (= b!1645695 b!1645696))

(assert (= b!1645694 b!1645695))

(assert (= (and b!1645286 ((_ is Cons!18150) (t!150419 rules!1846))) b!1645694))

(declare-fun m!1990233 () Bool)

(assert (=> b!1645695 m!1990233))

(declare-fun m!1990235 () Bool)

(assert (=> b!1645695 m!1990235))

(declare-fun b!1645707 () Bool)

(declare-fun e!1055455 () Bool)

(assert (=> b!1645707 (= e!1055455 tp_is_empty!7345)))

(declare-fun b!1645708 () Bool)

(declare-fun tp!476817 () Bool)

(declare-fun tp!476820 () Bool)

(assert (=> b!1645708 (= e!1055455 (and tp!476817 tp!476820))))

(declare-fun b!1645710 () Bool)

(declare-fun tp!476819 () Bool)

(declare-fun tp!476821 () Bool)

(assert (=> b!1645710 (= e!1055455 (and tp!476819 tp!476821))))

(assert (=> b!1645287 (= tp!476716 e!1055455)))

(declare-fun b!1645709 () Bool)

(declare-fun tp!476818 () Bool)

(assert (=> b!1645709 (= e!1055455 tp!476818)))

(assert (= (and b!1645287 ((_ is ElementMatch!4529) (regex!3201 (rule!5055 (h!23550 tokens!457))))) b!1645707))

(assert (= (and b!1645287 ((_ is Concat!7821) (regex!3201 (rule!5055 (h!23550 tokens!457))))) b!1645708))

(assert (= (and b!1645287 ((_ is Star!4529) (regex!3201 (rule!5055 (h!23550 tokens!457))))) b!1645709))

(assert (= (and b!1645287 ((_ is Union!4529) (regex!3201 (rule!5055 (h!23550 tokens!457))))) b!1645710))

(declare-fun b!1645711 () Bool)

(declare-fun e!1055456 () Bool)

(assert (=> b!1645711 (= e!1055456 tp_is_empty!7345)))

(declare-fun b!1645712 () Bool)

(declare-fun tp!476822 () Bool)

(declare-fun tp!476825 () Bool)

(assert (=> b!1645712 (= e!1055456 (and tp!476822 tp!476825))))

(declare-fun b!1645714 () Bool)

(declare-fun tp!476824 () Bool)

(declare-fun tp!476826 () Bool)

(assert (=> b!1645714 (= e!1055456 (and tp!476824 tp!476826))))

(assert (=> b!1645278 (= tp!476715 e!1055456)))

(declare-fun b!1645713 () Bool)

(declare-fun tp!476823 () Bool)

(assert (=> b!1645713 (= e!1055456 tp!476823)))

(assert (= (and b!1645278 ((_ is ElementMatch!4529) (regex!3201 (h!23551 rules!1846)))) b!1645711))

(assert (= (and b!1645278 ((_ is Concat!7821) (regex!3201 (h!23551 rules!1846)))) b!1645712))

(assert (= (and b!1645278 ((_ is Star!4529) (regex!3201 (h!23551 rules!1846)))) b!1645713))

(assert (= (and b!1645278 ((_ is Union!4529) (regex!3201 (h!23551 rules!1846)))) b!1645714))

(declare-fun b_lambda!51721 () Bool)

(assert (= b_lambda!51715 (or (and b!1645290 b_free!44665 (= (toChars!4503 (transformation!3201 (h!23551 rules!1846))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))))) (and b!1645285 b_free!44669) (and b!1645680 b_free!44681 (= (toChars!4503 (transformation!3201 (rule!5055 (h!23550 (t!150418 tokens!457))))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))))) (and b!1645696 b_free!44685 (= (toChars!4503 (transformation!3201 (h!23551 (t!150419 rules!1846)))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))))) b_lambda!51721)))

(declare-fun b_lambda!51723 () Bool)

(assert (= b_lambda!51711 (or (and b!1645290 b_free!44665 (= (toChars!4503 (transformation!3201 (h!23551 rules!1846))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))))) (and b!1645285 b_free!44669) (and b!1645680 b_free!44681 (= (toChars!4503 (transformation!3201 (rule!5055 (h!23550 (t!150418 tokens!457))))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))))) (and b!1645696 b_free!44685 (= (toChars!4503 (transformation!3201 (h!23551 (t!150419 rules!1846)))) (toChars!4503 (transformation!3201 (rule!5055 (h!23550 tokens!457)))))) b_lambda!51723)))

(check-sat (not b!1645394) (not b!1645424) (not b_next!45373) (not b_lambda!51723) (not d!495633) (not b!1645382) (not b!1645666) (not d!495629) (not b!1645310) (not d!495621) (not b_next!45385) b_and!116803 (not b!1645557) b_and!116799 (not d!495719) (not d!495643) (not b!1645383) (not d!495637) (not b_next!45367) (not b!1645679) (not b!1645333) (not d!495631) (not b!1645347) (not d!495731) (not b!1645334) (not b!1645593) (not b_next!45389) (not b!1645713) b_and!116801 (not d!495659) (not d!495743) (not b!1645714) (not d!495733) b_and!116769 (not b!1645677) (not b!1645332) (not b!1645588) (not b!1645710) (not b!1645589) (not b!1645425) (not b!1645685) (not d!495647) (not b!1645426) b_and!116785 (not d!495645) (not d!495737) (not b!1645353) (not b!1645449) (not d!495723) (not tb!94219) (not d!495635) (not b!1645665) tp_is_empty!7345 (not b!1645695) (not b!1645428) (not b!1645393) (not b!1645346) (not d!495671) (not d!495735) (not d!495627) (not b!1645567) (not b_next!45387) b_and!116765 (not b!1645447) (not b!1645454) (not b!1645664) (not b!1645306) (not b!1645395) (not d!495639) (not b_next!45383) b_and!116797 (not b!1645709) (not bm!105778) (not b!1645423) (not b!1645592) (not b!1645712) (not d!495729) (not b!1645678) (not b_next!45369) (not b!1645430) (not d!495725) (not d!495745) (not d!495677) (not b!1645576) (not d!495663) (not b!1645308) (not b!1645429) (not b!1645427) (not b_next!45371) (not d!495641) (not b!1645694) (not d!495739) (not b!1645708) (not b!1645476) (not b!1645583) (not b!1645558) (not d!495675) b_and!116787 (not b!1645577) (not d!495657) (not d!495665) (not b!1645336) (not b!1645580) (not b_lambda!51721))
(check-sat (not b_next!45373) b_and!116769 b_and!116785 (not b_next!45383) b_and!116797 (not b_next!45369) (not b_next!45371) b_and!116787 (not b_next!45385) b_and!116803 b_and!116799 (not b_next!45367) (not b_next!45389) b_and!116801 b_and!116765 (not b_next!45387))
