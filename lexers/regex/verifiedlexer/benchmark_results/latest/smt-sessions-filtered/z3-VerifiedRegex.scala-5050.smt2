; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!255638 () Bool)

(assert start!255638)

(declare-fun b!2629471 () Bool)

(declare-fun b_free!74061 () Bool)

(declare-fun b_next!74765 () Bool)

(assert (=> b!2629471 (= b_free!74061 (not b_next!74765))))

(declare-fun tp!833680 () Bool)

(declare-fun b_and!192619 () Bool)

(assert (=> b!2629471 (= tp!833680 b_and!192619)))

(declare-fun b_free!74063 () Bool)

(declare-fun b_next!74767 () Bool)

(assert (=> b!2629471 (= b_free!74063 (not b_next!74767))))

(declare-fun tp!833679 () Bool)

(declare-fun b_and!192621 () Bool)

(assert (=> b!2629471 (= tp!833679 b_and!192621)))

(declare-fun b!2629473 () Bool)

(declare-fun b_free!74065 () Bool)

(declare-fun b_next!74769 () Bool)

(assert (=> b!2629473 (= b_free!74065 (not b_next!74769))))

(declare-fun tp!833673 () Bool)

(declare-fun b_and!192623 () Bool)

(assert (=> b!2629473 (= tp!833673 b_and!192623)))

(declare-fun b_free!74067 () Bool)

(declare-fun b_next!74771 () Bool)

(assert (=> b!2629473 (= b_free!74067 (not b_next!74771))))

(declare-fun tp!833675 () Bool)

(declare-fun b_and!192625 () Bool)

(assert (=> b!2629473 (= tp!833675 b_and!192625)))

(declare-fun bs!475685 () Bool)

(declare-fun b!2629481 () Bool)

(declare-fun b!2629479 () Bool)

(assert (= bs!475685 (and b!2629481 b!2629479)))

(declare-fun lambda!98574 () Int)

(declare-fun lambda!98573 () Int)

(assert (=> bs!475685 (not (= lambda!98574 lambda!98573))))

(declare-fun b!2629502 () Bool)

(declare-fun e!1659008 () Bool)

(assert (=> b!2629502 (= e!1659008 true)))

(declare-fun b!2629501 () Bool)

(declare-fun e!1659007 () Bool)

(assert (=> b!2629501 (= e!1659007 e!1659008)))

(declare-fun b!2629500 () Bool)

(declare-fun e!1659006 () Bool)

(assert (=> b!2629500 (= e!1659006 e!1659007)))

(assert (=> b!2629481 e!1659006))

(assert (= b!2629501 b!2629502))

(assert (= b!2629500 b!2629501))

(declare-datatypes ((List!30521 0))(
  ( (Nil!30421) (Cons!30421 (h!35841 (_ BitVec 16)) (t!216242 List!30521)) )
))
(declare-datatypes ((C!15688 0))(
  ( (C!15689 (val!9778 Int)) )
))
(declare-datatypes ((Regex!7765 0))(
  ( (ElementMatch!7765 (c!422820 C!15688)) (Concat!12608 (regOne!16042 Regex!7765) (regTwo!16042 Regex!7765)) (EmptyExpr!7765) (Star!7765 (reg!8094 Regex!7765)) (EmptyLang!7765) (Union!7765 (regOne!16043 Regex!7765) (regTwo!16043 Regex!7765)) )
))
(declare-datatypes ((TokenValue!4843 0))(
  ( (FloatLiteralValue!9686 (text!34346 List!30521)) (TokenValueExt!4842 (__x!19519 Int)) (Broken!24215 (value!149277 List!30521)) (Object!4942) (End!4843) (Def!4843) (Underscore!4843) (Match!4843) (Else!4843) (Error!4843) (Case!4843) (If!4843) (Extends!4843) (Abstract!4843) (Class!4843) (Val!4843) (DelimiterValue!9686 (del!4903 List!30521)) (KeywordValue!4849 (value!149278 List!30521)) (CommentValue!9686 (value!149279 List!30521)) (WhitespaceValue!9686 (value!149280 List!30521)) (IndentationValue!4843 (value!149281 List!30521)) (String!34098) (Int32!4843) (Broken!24216 (value!149282 List!30521)) (Boolean!4844) (Unit!44448) (OperatorValue!4846 (op!4903 List!30521)) (IdentifierValue!9686 (value!149283 List!30521)) (IdentifierValue!9687 (value!149284 List!30521)) (WhitespaceValue!9687 (value!149285 List!30521)) (True!9686) (False!9686) (Broken!24217 (value!149286 List!30521)) (Broken!24218 (value!149287 List!30521)) (True!9687) (RightBrace!4843) (RightBracket!4843) (Colon!4843) (Null!4843) (Comma!4843) (LeftBracket!4843) (False!9687) (LeftBrace!4843) (ImaginaryLiteralValue!4843 (text!34347 List!30521)) (StringLiteralValue!14529 (value!149288 List!30521)) (EOFValue!4843 (value!149289 List!30521)) (IdentValue!4843 (value!149290 List!30521)) (DelimiterValue!9687 (value!149291 List!30521)) (DedentValue!4843 (value!149292 List!30521)) (NewLineValue!4843 (value!149293 List!30521)) (IntegerValue!14529 (value!149294 (_ BitVec 32)) (text!34348 List!30521)) (IntegerValue!14530 (value!149295 Int) (text!34349 List!30521)) (Times!4843) (Or!4843) (Equal!4843) (Minus!4843) (Broken!24219 (value!149296 List!30521)) (And!4843) (Div!4843) (LessEqual!4843) (Mod!4843) (Concat!12609) (Not!4843) (Plus!4843) (SpaceValue!4843 (value!149297 List!30521)) (IntegerValue!14531 (value!149298 Int) (text!34350 List!30521)) (StringLiteralValue!14530 (text!34351 List!30521)) (FloatLiteralValue!9687 (text!34352 List!30521)) (BytesLiteralValue!4843 (value!149299 List!30521)) (CommentValue!9687 (value!149300 List!30521)) (StringLiteralValue!14531 (value!149301 List!30521)) (ErrorTokenValue!4843 (msg!4904 List!30521)) )
))
(declare-datatypes ((List!30522 0))(
  ( (Nil!30422) (Cons!30422 (h!35842 C!15688) (t!216243 List!30522)) )
))
(declare-datatypes ((IArray!18973 0))(
  ( (IArray!18974 (innerList!9544 List!30522)) )
))
(declare-datatypes ((Conc!9484 0))(
  ( (Node!9484 (left!23482 Conc!9484) (right!23812 Conc!9484) (csize!19198 Int) (cheight!9695 Int)) (Leaf!14535 (xs!12484 IArray!18973) (csize!19199 Int)) (Empty!9484) )
))
(declare-datatypes ((BalanceConc!18582 0))(
  ( (BalanceConc!18583 (c!422821 Conc!9484)) )
))
(declare-datatypes ((TokenValueInjection!9126 0))(
  ( (TokenValueInjection!9127 (toValue!6535 Int) (toChars!6394 Int)) )
))
(declare-datatypes ((String!34099 0))(
  ( (String!34100 (value!149302 String)) )
))
(declare-datatypes ((Rule!9042 0))(
  ( (Rule!9043 (regex!4621 Regex!7765) (tag!5115 String!34099) (isSeparator!4621 Bool) (transformation!4621 TokenValueInjection!9126)) )
))
(declare-datatypes ((List!30523 0))(
  ( (Nil!30423) (Cons!30423 (h!35843 Rule!9042) (t!216244 List!30523)) )
))
(declare-fun rules!1726 () List!30523)

(get-info :version)

(assert (= (and b!2629481 ((_ is Cons!30423) rules!1726)) b!2629500))

(declare-fun order!16429 () Int)

(declare-fun order!16427 () Int)

(declare-fun dynLambda!13005 (Int Int) Int)

(declare-fun dynLambda!13006 (Int Int) Int)

(assert (=> b!2629502 (< (dynLambda!13005 order!16427 (toValue!6535 (transformation!4621 (h!35843 rules!1726)))) (dynLambda!13006 order!16429 lambda!98574))))

(declare-fun order!16431 () Int)

(declare-fun dynLambda!13007 (Int Int) Int)

(assert (=> b!2629502 (< (dynLambda!13007 order!16431 (toChars!6394 (transformation!4621 (h!35843 rules!1726)))) (dynLambda!13006 order!16429 lambda!98574))))

(assert (=> b!2629481 true))

(declare-fun b!2629468 () Bool)

(declare-fun e!1658983 () Bool)

(declare-fun e!1658992 () Bool)

(assert (=> b!2629468 (= e!1658983 (not e!1658992))))

(declare-fun res!1107011 () Bool)

(assert (=> b!2629468 (=> res!1107011 e!1658992)))

(declare-datatypes ((Token!8712 0))(
  ( (Token!8713 (value!149303 TokenValue!4843) (rule!7003 Rule!9042) (size!23524 Int) (originalCharacters!5387 List!30522)) )
))
(declare-datatypes ((List!30524 0))(
  ( (Nil!30424) (Cons!30424 (h!35844 Token!8712) (t!216245 List!30524)) )
))
(declare-datatypes ((IArray!18975 0))(
  ( (IArray!18976 (innerList!9545 List!30524)) )
))
(declare-datatypes ((Conc!9485 0))(
  ( (Node!9485 (left!23483 Conc!9485) (right!23813 Conc!9485) (csize!19200 Int) (cheight!9696 Int)) (Leaf!14536 (xs!12485 IArray!18975) (csize!19201 Int)) (Empty!9485) )
))
(declare-datatypes ((BalanceConc!18584 0))(
  ( (BalanceConc!18585 (c!422822 Conc!9485)) )
))
(declare-fun v!6381 () BalanceConc!18584)

(declare-fun lt!925158 () Token!8712)

(declare-fun contains!5744 (BalanceConc!18584 Token!8712) Bool)

(assert (=> b!2629468 (= res!1107011 (not (contains!5744 v!6381 lt!925158)))))

(declare-fun from!862 () Int)

(declare-fun apply!7224 (BalanceConc!18584 Int) Token!8712)

(assert (=> b!2629468 (= lt!925158 (apply!7224 v!6381 from!862))))

(declare-fun lt!925148 () List!30524)

(declare-fun lt!925163 () List!30524)

(declare-fun tail!4258 (List!30524) List!30524)

(declare-fun drop!1617 (List!30524 Int) List!30524)

(assert (=> b!2629468 (= (tail!4258 lt!925148) (drop!1617 lt!925163 (+ 1 from!862)))))

(declare-datatypes ((Unit!44449 0))(
  ( (Unit!44450) )
))
(declare-fun lt!925154 () Unit!44449)

(declare-fun lemmaDropTail!806 (List!30524 Int) Unit!44449)

(assert (=> b!2629468 (= lt!925154 (lemmaDropTail!806 lt!925163 from!862))))

(declare-fun head!6020 (List!30524) Token!8712)

(declare-fun apply!7225 (List!30524 Int) Token!8712)

(assert (=> b!2629468 (= (head!6020 lt!925148) (apply!7225 lt!925163 from!862))))

(assert (=> b!2629468 (= lt!925148 (drop!1617 lt!925163 from!862))))

(declare-fun lt!925153 () Unit!44449)

(declare-fun lemmaDropApply!832 (List!30524 Int) Unit!44449)

(assert (=> b!2629468 (= lt!925153 (lemmaDropApply!832 lt!925163 from!862))))

(declare-fun e!1658995 () Bool)

(declare-fun b!2629469 () Bool)

(declare-fun tp!833677 () Bool)

(declare-fun separatorToken!156 () Token!8712)

(declare-fun e!1658996 () Bool)

(declare-fun inv!21 (TokenValue!4843) Bool)

(assert (=> b!2629469 (= e!1658995 (and (inv!21 (value!149303 separatorToken!156)) e!1658996 tp!833677))))

(declare-fun b!2629470 () Bool)

(declare-fun e!1658984 () Bool)

(declare-fun e!1658999 () Bool)

(declare-fun tp!833678 () Bool)

(assert (=> b!2629470 (= e!1658984 (and e!1658999 tp!833678))))

(declare-fun e!1658997 () Bool)

(assert (=> b!2629471 (= e!1658997 (and tp!833680 tp!833679))))

(declare-fun b!2629472 () Bool)

(declare-fun e!1658985 () Bool)

(declare-fun e!1658990 () Bool)

(assert (=> b!2629472 (= e!1658985 e!1658990)))

(declare-fun res!1107004 () Bool)

(assert (=> b!2629472 (=> (not res!1107004) (not e!1658990))))

(declare-fun lt!925160 () Int)

(assert (=> b!2629472 (= res!1107004 (<= from!862 lt!925160))))

(declare-fun size!23525 (BalanceConc!18584) Int)

(assert (=> b!2629472 (= lt!925160 (size!23525 v!6381))))

(declare-fun e!1658991 () Bool)

(assert (=> b!2629473 (= e!1658991 (and tp!833673 tp!833675))))

(declare-fun tp!833676 () Bool)

(declare-fun b!2629474 () Bool)

(declare-fun inv!41225 (String!34099) Bool)

(declare-fun inv!41230 (TokenValueInjection!9126) Bool)

(assert (=> b!2629474 (= e!1658999 (and tp!833676 (inv!41225 (tag!5115 (h!35843 rules!1726))) (inv!41230 (transformation!4621 (h!35843 rules!1726))) e!1658991))))

(declare-fun b!2629475 () Bool)

(declare-fun res!1107009 () Bool)

(assert (=> b!2629475 (=> res!1107009 e!1658992)))

(declare-fun contains!5745 (List!30524 Token!8712) Bool)

(assert (=> b!2629475 (= res!1107009 (not (contains!5745 lt!925163 lt!925158)))))

(declare-fun b!2629476 () Bool)

(declare-fun res!1107010 () Bool)

(assert (=> b!2629476 (=> (not res!1107010) (not e!1658990))))

(declare-fun sepAndNonSepRulesDisjointChars!1194 (List!30523 List!30523) Bool)

(assert (=> b!2629476 (= res!1107010 (sepAndNonSepRulesDisjointChars!1194 rules!1726 rules!1726))))

(declare-fun b!2629477 () Bool)

(declare-fun res!1106995 () Bool)

(assert (=> b!2629477 (=> (not res!1106995) (not e!1658990))))

(declare-datatypes ((LexerInterface!4218 0))(
  ( (LexerInterfaceExt!4215 (__x!19520 Int)) (Lexer!4216) )
))
(declare-fun thiss!14197 () LexerInterface!4218)

(declare-fun rulesProduceEachTokenIndividually!1038 (LexerInterface!4218 List!30523 BalanceConc!18584) Bool)

(assert (=> b!2629477 (= res!1106995 (rulesProduceEachTokenIndividually!1038 thiss!14197 rules!1726 v!6381))))

(declare-fun tp!833674 () Bool)

(declare-fun b!2629478 () Bool)

(assert (=> b!2629478 (= e!1658996 (and tp!833674 (inv!41225 (tag!5115 (rule!7003 separatorToken!156))) (inv!41230 (transformation!4621 (rule!7003 separatorToken!156))) e!1658997))))

(declare-fun b!2629480 () Bool)

(declare-fun res!1106999 () Bool)

(assert (=> b!2629480 (=> (not res!1106999) (not e!1658990))))

(declare-fun rulesInvariant!3718 (LexerInterface!4218 List!30523) Bool)

(assert (=> b!2629480 (= res!1106999 (rulesInvariant!3718 thiss!14197 rules!1726))))

(declare-fun e!1658998 () Bool)

(assert (=> b!2629481 (= e!1658992 e!1658998)))

(declare-fun res!1106997 () Bool)

(assert (=> b!2629481 (=> res!1106997 e!1658998)))

(declare-datatypes ((tuple2!29942 0))(
  ( (tuple2!29943 (_1!17513 Token!8712) (_2!17513 BalanceConc!18582)) )
))
(declare-datatypes ((Option!6012 0))(
  ( (None!6011) (Some!6011 (v!32398 tuple2!29942)) )
))
(declare-fun lt!925152 () Option!6012)

(declare-fun lt!925159 () Bool)

(assert (=> b!2629481 (= res!1106997 (or (and (not lt!925159) (= (_1!17513 (v!32398 lt!925152)) lt!925158)) (and (not lt!925159) (not (= (_1!17513 (v!32398 lt!925152)) lt!925158))) (not ((_ is None!6011) lt!925152))))))

(assert (=> b!2629481 (= lt!925159 (not ((_ is Some!6011) lt!925152)))))

(declare-fun lt!925164 () BalanceConc!18582)

(declare-fun lt!925149 () BalanceConc!18582)

(declare-fun maxPrefixZipperSequence!948 (LexerInterface!4218 List!30523 BalanceConc!18582) Option!6012)

(declare-fun ++!7407 (BalanceConc!18582 BalanceConc!18582) BalanceConc!18582)

(assert (=> b!2629481 (= lt!925152 (maxPrefixZipperSequence!948 thiss!14197 rules!1726 (++!7407 lt!925149 lt!925164)))))

(declare-fun charsOf!2912 (Token!8712) BalanceConc!18582)

(assert (=> b!2629481 (= lt!925149 (charsOf!2912 lt!925158))))

(declare-fun printWithSeparatorTokenWhenNeededRec!496 (LexerInterface!4218 List!30523 BalanceConc!18584 Token!8712 Int) BalanceConc!18582)

(assert (=> b!2629481 (= lt!925164 (printWithSeparatorTokenWhenNeededRec!496 thiss!14197 rules!1726 v!6381 separatorToken!156 (+ 1 from!862)))))

(declare-fun lt!925162 () Unit!44449)

(declare-fun forallContained!977 (List!30524 Int Token!8712) Unit!44449)

(assert (=> b!2629481 (= lt!925162 (forallContained!977 lt!925163 lambda!98574 lt!925158))))

(declare-fun b!2629482 () Bool)

(declare-fun res!1107005 () Bool)

(declare-fun e!1658987 () Bool)

(assert (=> b!2629482 (=> res!1107005 e!1658987)))

(declare-fun lt!925155 () List!30522)

(declare-fun isEmpty!17357 (BalanceConc!18584) Bool)

(declare-datatypes ((tuple2!29944 0))(
  ( (tuple2!29945 (_1!17514 BalanceConc!18584) (_2!17514 BalanceConc!18582)) )
))
(declare-fun lex!1890 (LexerInterface!4218 List!30523 BalanceConc!18582) tuple2!29944)

(declare-fun seqFromList!3177 (List!30522) BalanceConc!18582)

(assert (=> b!2629482 (= res!1107005 (isEmpty!17357 (_1!17514 (lex!1890 thiss!14197 rules!1726 (seqFromList!3177 lt!925155)))))))

(declare-fun b!2629483 () Bool)

(declare-fun res!1107001 () Bool)

(assert (=> b!2629483 (=> (not res!1107001) (not e!1658990))))

(assert (=> b!2629483 (= res!1107001 (isSeparator!4621 (rule!7003 separatorToken!156)))))

(declare-fun b!2629484 () Bool)

(declare-fun res!1106998 () Bool)

(assert (=> b!2629484 (=> (not res!1106998) (not e!1658990))))

(declare-fun rulesProduceIndividualToken!1930 (LexerInterface!4218 List!30523 Token!8712) Bool)

(assert (=> b!2629484 (= res!1106998 (rulesProduceIndividualToken!1930 thiss!14197 rules!1726 separatorToken!156))))

(declare-fun b!2629485 () Bool)

(assert (=> b!2629485 (= e!1658987 true)))

(declare-fun lt!925151 () List!30522)

(declare-fun list!11434 (BalanceConc!18582) List!30522)

(assert (=> b!2629485 (= lt!925151 (list!11434 lt!925164))))

(declare-fun b!2629486 () Bool)

(declare-fun res!1107006 () Bool)

(assert (=> b!2629486 (=> (not res!1107006) (not e!1658990))))

(declare-fun isEmpty!17358 (List!30523) Bool)

(assert (=> b!2629486 (= res!1107006 (not (isEmpty!17358 rules!1726)))))

(declare-fun b!2629487 () Bool)

(declare-fun e!1658993 () Bool)

(declare-fun tp!833672 () Bool)

(declare-fun inv!41231 (Conc!9485) Bool)

(assert (=> b!2629487 (= e!1658993 (and (inv!41231 (c!422822 v!6381)) tp!833672))))

(declare-fun b!2629488 () Bool)

(declare-fun e!1658989 () Bool)

(assert (=> b!2629488 (= e!1658998 e!1658989)))

(declare-fun res!1107003 () Bool)

(assert (=> b!2629488 (=> res!1107003 e!1658989)))

(declare-fun lt!925150 () List!30522)

(declare-fun lt!925165 () List!30522)

(assert (=> b!2629488 (= res!1107003 (not (= lt!925150 lt!925165)))))

(declare-fun printList!1158 (LexerInterface!4218 List!30524) List!30522)

(assert (=> b!2629488 (= lt!925165 (printList!1158 thiss!14197 (Cons!30424 lt!925158 Nil!30424)))))

(declare-fun lt!925157 () BalanceConc!18582)

(assert (=> b!2629488 (= lt!925150 (list!11434 lt!925157))))

(declare-fun lt!925156 () BalanceConc!18584)

(declare-fun printTailRec!1117 (LexerInterface!4218 BalanceConc!18584 Int BalanceConc!18582) BalanceConc!18582)

(assert (=> b!2629488 (= lt!925157 (printTailRec!1117 thiss!14197 lt!925156 0 (BalanceConc!18583 Empty!9484)))))

(declare-fun print!1628 (LexerInterface!4218 BalanceConc!18584) BalanceConc!18582)

(assert (=> b!2629488 (= lt!925157 (print!1628 thiss!14197 lt!925156))))

(declare-fun singletonSeq!2047 (Token!8712) BalanceConc!18584)

(assert (=> b!2629488 (= lt!925156 (singletonSeq!2047 lt!925158))))

(declare-fun b!2629489 () Bool)

(assert (=> b!2629489 (= e!1658989 e!1658987)))

(declare-fun res!1107007 () Bool)

(assert (=> b!2629489 (=> res!1107007 e!1658987)))

(assert (=> b!2629489 (= res!1107007 (not (= lt!925165 lt!925155)))))

(assert (=> b!2629489 (= lt!925155 (list!11434 lt!925149))))

(declare-fun b!2629490 () Bool)

(assert (=> b!2629490 (= e!1658990 e!1658983)))

(declare-fun res!1107002 () Bool)

(assert (=> b!2629490 (=> (not res!1107002) (not e!1658983))))

(assert (=> b!2629490 (= res!1107002 (< from!862 lt!925160))))

(declare-fun lt!925161 () Unit!44449)

(declare-fun lemmaContentSubsetPreservesForall!290 (List!30524 List!30524 Int) Unit!44449)

(declare-fun dropList!924 (BalanceConc!18584 Int) List!30524)

(assert (=> b!2629490 (= lt!925161 (lemmaContentSubsetPreservesForall!290 lt!925163 (dropList!924 v!6381 from!862) lambda!98573))))

(declare-fun list!11435 (BalanceConc!18584) List!30524)

(assert (=> b!2629490 (= lt!925163 (list!11435 v!6381))))

(declare-fun b!2629491 () Bool)

(declare-fun res!1107008 () Bool)

(assert (=> b!2629491 (=> res!1107008 e!1658987)))

(assert (=> b!2629491 (= res!1107008 (not (rulesProduceIndividualToken!1930 thiss!14197 rules!1726 lt!925158)))))

(declare-fun res!1107000 () Bool)

(assert (=> b!2629479 (=> (not res!1107000) (not e!1658990))))

(declare-fun forall!6353 (BalanceConc!18584 Int) Bool)

(assert (=> b!2629479 (= res!1107000 (forall!6353 v!6381 lambda!98573))))

(declare-fun res!1106996 () Bool)

(assert (=> start!255638 (=> (not res!1106996) (not e!1658985))))

(assert (=> start!255638 (= res!1106996 (and ((_ is Lexer!4216) thiss!14197) (>= from!862 0)))))

(assert (=> start!255638 e!1658985))

(assert (=> start!255638 true))

(assert (=> start!255638 e!1658984))

(declare-fun inv!41232 (Token!8712) Bool)

(assert (=> start!255638 (and (inv!41232 separatorToken!156) e!1658995)))

(declare-fun inv!41233 (BalanceConc!18584) Bool)

(assert (=> start!255638 (and (inv!41233 v!6381) e!1658993)))

(assert (= (and start!255638 res!1106996) b!2629472))

(assert (= (and b!2629472 res!1107004) b!2629486))

(assert (= (and b!2629486 res!1107006) b!2629480))

(assert (= (and b!2629480 res!1106999) b!2629477))

(assert (= (and b!2629477 res!1106995) b!2629484))

(assert (= (and b!2629484 res!1106998) b!2629483))

(assert (= (and b!2629483 res!1107001) b!2629479))

(assert (= (and b!2629479 res!1107000) b!2629476))

(assert (= (and b!2629476 res!1107010) b!2629490))

(assert (= (and b!2629490 res!1107002) b!2629468))

(assert (= (and b!2629468 (not res!1107011)) b!2629475))

(assert (= (and b!2629475 (not res!1107009)) b!2629481))

(assert (= (and b!2629481 (not res!1106997)) b!2629488))

(assert (= (and b!2629488 (not res!1107003)) b!2629489))

(assert (= (and b!2629489 (not res!1107007)) b!2629491))

(assert (= (and b!2629491 (not res!1107008)) b!2629482))

(assert (= (and b!2629482 (not res!1107005)) b!2629485))

(assert (= b!2629474 b!2629473))

(assert (= b!2629470 b!2629474))

(assert (= (and start!255638 ((_ is Cons!30423) rules!1726)) b!2629470))

(assert (= b!2629478 b!2629471))

(assert (= b!2629469 b!2629478))

(assert (= start!255638 b!2629469))

(assert (= start!255638 b!2629487))

(declare-fun m!2972549 () Bool)

(assert (=> b!2629479 m!2972549))

(declare-fun m!2972551 () Bool)

(assert (=> b!2629489 m!2972551))

(declare-fun m!2972553 () Bool)

(assert (=> b!2629488 m!2972553))

(declare-fun m!2972555 () Bool)

(assert (=> b!2629488 m!2972555))

(declare-fun m!2972557 () Bool)

(assert (=> b!2629488 m!2972557))

(declare-fun m!2972559 () Bool)

(assert (=> b!2629488 m!2972559))

(declare-fun m!2972561 () Bool)

(assert (=> b!2629488 m!2972561))

(declare-fun m!2972563 () Bool)

(assert (=> b!2629480 m!2972563))

(declare-fun m!2972565 () Bool)

(assert (=> b!2629477 m!2972565))

(declare-fun m!2972567 () Bool)

(assert (=> b!2629485 m!2972567))

(declare-fun m!2972569 () Bool)

(assert (=> b!2629468 m!2972569))

(declare-fun m!2972571 () Bool)

(assert (=> b!2629468 m!2972571))

(declare-fun m!2972573 () Bool)

(assert (=> b!2629468 m!2972573))

(declare-fun m!2972575 () Bool)

(assert (=> b!2629468 m!2972575))

(declare-fun m!2972577 () Bool)

(assert (=> b!2629468 m!2972577))

(declare-fun m!2972579 () Bool)

(assert (=> b!2629468 m!2972579))

(declare-fun m!2972581 () Bool)

(assert (=> b!2629468 m!2972581))

(declare-fun m!2972583 () Bool)

(assert (=> b!2629468 m!2972583))

(declare-fun m!2972585 () Bool)

(assert (=> b!2629468 m!2972585))

(declare-fun m!2972587 () Bool)

(assert (=> b!2629481 m!2972587))

(declare-fun m!2972589 () Bool)

(assert (=> b!2629481 m!2972589))

(declare-fun m!2972591 () Bool)

(assert (=> b!2629481 m!2972591))

(declare-fun m!2972593 () Bool)

(assert (=> b!2629481 m!2972593))

(assert (=> b!2629481 m!2972593))

(declare-fun m!2972595 () Bool)

(assert (=> b!2629481 m!2972595))

(declare-fun m!2972597 () Bool)

(assert (=> b!2629484 m!2972597))

(declare-fun m!2972599 () Bool)

(assert (=> b!2629491 m!2972599))

(declare-fun m!2972601 () Bool)

(assert (=> b!2629487 m!2972601))

(declare-fun m!2972603 () Bool)

(assert (=> b!2629486 m!2972603))

(declare-fun m!2972605 () Bool)

(assert (=> start!255638 m!2972605))

(declare-fun m!2972607 () Bool)

(assert (=> start!255638 m!2972607))

(declare-fun m!2972609 () Bool)

(assert (=> b!2629490 m!2972609))

(assert (=> b!2629490 m!2972609))

(declare-fun m!2972611 () Bool)

(assert (=> b!2629490 m!2972611))

(declare-fun m!2972613 () Bool)

(assert (=> b!2629490 m!2972613))

(declare-fun m!2972615 () Bool)

(assert (=> b!2629475 m!2972615))

(declare-fun m!2972617 () Bool)

(assert (=> b!2629474 m!2972617))

(declare-fun m!2972619 () Bool)

(assert (=> b!2629474 m!2972619))

(declare-fun m!2972621 () Bool)

(assert (=> b!2629469 m!2972621))

(declare-fun m!2972623 () Bool)

(assert (=> b!2629482 m!2972623))

(assert (=> b!2629482 m!2972623))

(declare-fun m!2972625 () Bool)

(assert (=> b!2629482 m!2972625))

(declare-fun m!2972627 () Bool)

(assert (=> b!2629482 m!2972627))

(declare-fun m!2972629 () Bool)

(assert (=> b!2629478 m!2972629))

(declare-fun m!2972631 () Bool)

(assert (=> b!2629478 m!2972631))

(declare-fun m!2972633 () Bool)

(assert (=> b!2629476 m!2972633))

(declare-fun m!2972635 () Bool)

(assert (=> b!2629472 m!2972635))

(check-sat (not b!2629484) (not b!2629500) (not b!2629475) (not b!2629489) (not b!2629480) (not b!2629469) (not b!2629482) (not start!255638) (not b!2629474) (not b!2629486) (not b!2629468) (not b_next!74765) b_and!192623 (not b!2629490) (not b!2629470) (not b!2629481) (not b_next!74771) (not b!2629479) b_and!192619 (not b_next!74767) (not b!2629472) b_and!192621 (not b!2629476) (not b!2629491) b_and!192625 (not b!2629485) (not b!2629477) (not b!2629487) (not b!2629478) (not b_next!74769) (not b!2629488))
(check-sat (not b_next!74765) b_and!192623 (not b_next!74771) b_and!192621 b_and!192625 (not b_next!74769) b_and!192619 (not b_next!74767))
