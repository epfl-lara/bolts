; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127142 () Bool)

(assert start!127142)

(declare-fun b!1396529 () Bool)

(declare-fun b_free!33971 () Bool)

(declare-fun b_next!34675 () Bool)

(assert (=> b!1396529 (= b_free!33971 (not b_next!34675))))

(declare-fun tp!398009 () Bool)

(declare-fun b_and!93507 () Bool)

(assert (=> b!1396529 (= tp!398009 b_and!93507)))

(declare-fun b_free!33973 () Bool)

(declare-fun b_next!34677 () Bool)

(assert (=> b!1396529 (= b_free!33973 (not b_next!34677))))

(declare-fun tp!398016 () Bool)

(declare-fun b_and!93509 () Bool)

(assert (=> b!1396529 (= tp!398016 b_and!93509)))

(declare-fun b!1396533 () Bool)

(declare-fun b_free!33975 () Bool)

(declare-fun b_next!34679 () Bool)

(assert (=> b!1396533 (= b_free!33975 (not b_next!34679))))

(declare-fun tp!398011 () Bool)

(declare-fun b_and!93511 () Bool)

(assert (=> b!1396533 (= tp!398011 b_and!93511)))

(declare-fun b_free!33977 () Bool)

(declare-fun b_next!34681 () Bool)

(assert (=> b!1396533 (= b_free!33977 (not b_next!34681))))

(declare-fun tp!398020 () Bool)

(declare-fun b_and!93513 () Bool)

(assert (=> b!1396533 (= tp!398020 b_and!93513)))

(declare-fun b!1396558 () Bool)

(declare-fun b_free!33979 () Bool)

(declare-fun b_next!34683 () Bool)

(assert (=> b!1396558 (= b_free!33979 (not b_next!34683))))

(declare-fun tp!398019 () Bool)

(declare-fun b_and!93515 () Bool)

(assert (=> b!1396558 (= tp!398019 b_and!93515)))

(declare-fun b_free!33981 () Bool)

(declare-fun b_next!34685 () Bool)

(assert (=> b!1396558 (= b_free!33981 (not b_next!34685))))

(declare-fun tp!398017 () Bool)

(declare-fun b_and!93517 () Bool)

(assert (=> b!1396558 (= tp!398017 b_and!93517)))

(declare-fun b!1396548 () Bool)

(assert (=> b!1396548 true))

(assert (=> b!1396548 true))

(declare-fun b!1396523 () Bool)

(assert (=> b!1396523 true))

(declare-fun b!1396526 () Bool)

(assert (=> b!1396526 true))

(declare-fun bs!337924 () Bool)

(declare-fun b!1396553 () Bool)

(assert (= bs!337924 (and b!1396553 b!1396526)))

(declare-fun lambda!60785 () Int)

(declare-fun lambda!60784 () Int)

(assert (=> bs!337924 (not (= lambda!60785 lambda!60784))))

(assert (=> b!1396553 true))

(declare-fun b!1396510 () Bool)

(declare-fun res!630959 () Bool)

(declare-fun e!891770 () Bool)

(assert (=> b!1396510 (=> res!630959 e!891770)))

(declare-datatypes ((C!7828 0))(
  ( (C!7829 (val!4474 Int)) )
))
(declare-datatypes ((List!14240 0))(
  ( (Nil!14174) (Cons!14174 (h!19575 C!7828) (t!122693 List!14240)) )
))
(declare-datatypes ((IArray!9345 0))(
  ( (IArray!9346 (innerList!4730 List!14240)) )
))
(declare-datatypes ((List!14241 0))(
  ( (Nil!14175) (Cons!14175 (h!19576 (_ BitVec 16)) (t!122694 List!14241)) )
))
(declare-datatypes ((Conc!4670 0))(
  ( (Node!4670 (left!12107 Conc!4670) (right!12437 Conc!4670) (csize!9570 Int) (cheight!4881 Int)) (Leaf!7094 (xs!7397 IArray!9345) (csize!9571 Int)) (Empty!4670) )
))
(declare-datatypes ((BalanceConc!9280 0))(
  ( (BalanceConc!9281 (c!229862 Conc!4670)) )
))
(declare-datatypes ((TokenValue!2545 0))(
  ( (FloatLiteralValue!5090 (text!18260 List!14241)) (TokenValueExt!2544 (__x!8919 Int)) (Broken!12725 (value!79574 List!14241)) (Object!2610) (End!2545) (Def!2545) (Underscore!2545) (Match!2545) (Else!2545) (Error!2545) (Case!2545) (If!2545) (Extends!2545) (Abstract!2545) (Class!2545) (Val!2545) (DelimiterValue!5090 (del!2605 List!14241)) (KeywordValue!2551 (value!79575 List!14241)) (CommentValue!5090 (value!79576 List!14241)) (WhitespaceValue!5090 (value!79577 List!14241)) (IndentationValue!2545 (value!79578 List!14241)) (String!16960) (Int32!2545) (Broken!12726 (value!79579 List!14241)) (Boolean!2546) (Unit!20472) (OperatorValue!2548 (op!2605 List!14241)) (IdentifierValue!5090 (value!79580 List!14241)) (IdentifierValue!5091 (value!79581 List!14241)) (WhitespaceValue!5091 (value!79582 List!14241)) (True!5090) (False!5090) (Broken!12727 (value!79583 List!14241)) (Broken!12728 (value!79584 List!14241)) (True!5091) (RightBrace!2545) (RightBracket!2545) (Colon!2545) (Null!2545) (Comma!2545) (LeftBracket!2545) (False!5091) (LeftBrace!2545) (ImaginaryLiteralValue!2545 (text!18261 List!14241)) (StringLiteralValue!7635 (value!79585 List!14241)) (EOFValue!2545 (value!79586 List!14241)) (IdentValue!2545 (value!79587 List!14241)) (DelimiterValue!5091 (value!79588 List!14241)) (DedentValue!2545 (value!79589 List!14241)) (NewLineValue!2545 (value!79590 List!14241)) (IntegerValue!7635 (value!79591 (_ BitVec 32)) (text!18262 List!14241)) (IntegerValue!7636 (value!79592 Int) (text!18263 List!14241)) (Times!2545) (Or!2545) (Equal!2545) (Minus!2545) (Broken!12729 (value!79593 List!14241)) (And!2545) (Div!2545) (LessEqual!2545) (Mod!2545) (Concat!6314) (Not!2545) (Plus!2545) (SpaceValue!2545 (value!79594 List!14241)) (IntegerValue!7637 (value!79595 Int) (text!18264 List!14241)) (StringLiteralValue!7636 (text!18265 List!14241)) (FloatLiteralValue!5091 (text!18266 List!14241)) (BytesLiteralValue!2545 (value!79596 List!14241)) (CommentValue!5091 (value!79597 List!14241)) (StringLiteralValue!7637 (value!79598 List!14241)) (ErrorTokenValue!2545 (msg!2606 List!14241)) )
))
(declare-datatypes ((Regex!3769 0))(
  ( (ElementMatch!3769 (c!229863 C!7828)) (Concat!6315 (regOne!8050 Regex!3769) (regTwo!8050 Regex!3769)) (EmptyExpr!3769) (Star!3769 (reg!4098 Regex!3769)) (EmptyLang!3769) (Union!3769 (regOne!8051 Regex!3769) (regTwo!8051 Regex!3769)) )
))
(declare-datatypes ((String!16961 0))(
  ( (String!16962 (value!79599 String)) )
))
(declare-datatypes ((TokenValueInjection!4750 0))(
  ( (TokenValueInjection!4751 (toValue!3746 Int) (toChars!3605 Int)) )
))
(declare-datatypes ((Rule!4710 0))(
  ( (Rule!4711 (regex!2455 Regex!3769) (tag!2717 String!16961) (isSeparator!2455 Bool) (transformation!2455 TokenValueInjection!4750)) )
))
(declare-datatypes ((List!14242 0))(
  ( (Nil!14176) (Cons!14176 (h!19577 Rule!4710) (t!122695 List!14242)) )
))
(declare-fun rules!2550 () List!14242)

(declare-fun lt!465198 () Rule!4710)

(declare-fun contains!2747 (List!14242 Rule!4710) Bool)

(assert (=> b!1396510 (= res!630959 (not (contains!2747 rules!2550 lt!465198)))))

(declare-fun res!630960 () Bool)

(declare-fun e!891771 () Bool)

(assert (=> start!127142 (=> (not res!630960) (not e!891771))))

(declare-datatypes ((LexerInterface!2150 0))(
  ( (LexerInterfaceExt!2147 (__x!8920 Int)) (Lexer!2148) )
))
(declare-fun thiss!19762 () LexerInterface!2150)

(get-info :version)

(assert (=> start!127142 (= res!630960 ((_ is Lexer!2148) thiss!19762))))

(assert (=> start!127142 e!891771))

(assert (=> start!127142 true))

(declare-fun e!891764 () Bool)

(assert (=> start!127142 e!891764))

(declare-datatypes ((Token!4572 0))(
  ( (Token!4573 (value!79600 TokenValue!2545) (rule!4218 Rule!4710) (size!11657 Int) (originalCharacters!3317 List!14240)) )
))
(declare-fun t1!34 () Token!4572)

(declare-fun e!891765 () Bool)

(declare-fun inv!18503 (Token!4572) Bool)

(assert (=> start!127142 (and (inv!18503 t1!34) e!891765)))

(declare-fun t2!34 () Token!4572)

(declare-fun e!891782 () Bool)

(assert (=> start!127142 (and (inv!18503 t2!34) e!891782)))

(declare-fun b!1396511 () Bool)

(declare-fun e!891751 () Bool)

(declare-fun e!891773 () Bool)

(assert (=> b!1396511 (= e!891751 e!891773)))

(declare-fun res!630980 () Bool)

(assert (=> b!1396511 (=> res!630980 e!891773)))

(declare-datatypes ((List!14243 0))(
  ( (Nil!14177) (Cons!14177 (h!19578 Token!4572) (t!122696 List!14243)) )
))
(declare-datatypes ((IArray!9347 0))(
  ( (IArray!9348 (innerList!4731 List!14243)) )
))
(declare-datatypes ((Conc!4671 0))(
  ( (Node!4671 (left!12108 Conc!4671) (right!12438 Conc!4671) (csize!9572 Int) (cheight!4882 Int)) (Leaf!7095 (xs!7398 IArray!9347) (csize!9573 Int)) (Empty!4671) )
))
(declare-datatypes ((BalanceConc!9282 0))(
  ( (BalanceConc!9283 (c!229864 Conc!4671)) )
))
(declare-datatypes ((tuple2!13790 0))(
  ( (tuple2!13791 (_1!7781 BalanceConc!9282) (_2!7781 BalanceConc!9280)) )
))
(declare-fun lt!465224 () tuple2!13790)

(declare-fun lt!465211 () List!14243)

(declare-fun list!5517 (BalanceConc!9282) List!14243)

(assert (=> b!1396511 (= res!630980 (not (= (list!5517 (_1!7781 lt!465224)) lt!465211)))))

(assert (=> b!1396511 (= lt!465211 (Cons!14177 t1!34 Nil!14177))))

(declare-fun lt!465206 () BalanceConc!9280)

(declare-fun lex!975 (LexerInterface!2150 List!14242 BalanceConc!9280) tuple2!13790)

(assert (=> b!1396511 (= lt!465224 (lex!975 thiss!19762 rules!2550 lt!465206))))

(declare-fun print!914 (LexerInterface!2150 BalanceConc!9282) BalanceConc!9280)

(declare-fun singletonSeq!1110 (Token!4572) BalanceConc!9282)

(assert (=> b!1396511 (= lt!465206 (print!914 thiss!19762 (singletonSeq!1110 t1!34)))))

(declare-fun getWitness!442 (List!14242 Int) Rule!4710)

(assert (=> b!1396511 (= lt!465198 (getWitness!442 rules!2550 lambda!60784))))

(declare-fun b!1396512 () Bool)

(declare-fun res!630958 () Bool)

(declare-fun e!891781 () Bool)

(assert (=> b!1396512 (=> res!630958 e!891781)))

(declare-fun lt!465205 () Regex!3769)

(declare-fun lt!465222 () List!14240)

(declare-fun matchR!1760 (Regex!3769 List!14240) Bool)

(assert (=> b!1396512 (= res!630958 (not (matchR!1760 lt!465205 lt!465222)))))

(declare-fun b!1396513 () Bool)

(declare-fun res!630950 () Bool)

(assert (=> b!1396513 (=> (not res!630950) (not e!891771))))

(declare-fun rulesProduceIndividualToken!1119 (LexerInterface!2150 List!14242 Token!4572) Bool)

(assert (=> b!1396513 (= res!630950 (rulesProduceIndividualToken!1119 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1396514 () Bool)

(declare-fun e!891755 () Bool)

(declare-fun e!891756 () Bool)

(assert (=> b!1396514 (= e!891755 e!891756)))

(declare-fun res!630969 () Bool)

(assert (=> b!1396514 (=> res!630969 e!891756)))

(declare-fun lambda!60782 () Int)

(declare-fun lt!465217 () Regex!3769)

(declare-datatypes ((List!14244 0))(
  ( (Nil!14178) (Cons!14178 (h!19579 Regex!3769) (t!122697 List!14244)) )
))
(declare-fun contains!2748 (List!14244 Regex!3769) Bool)

(declare-fun map!3143 (List!14242 Int) List!14244)

(assert (=> b!1396514 (= res!630969 (not (contains!2748 (map!3143 rules!2550 lambda!60782) lt!465217)))))

(declare-fun lambda!60783 () Int)

(declare-fun getWitness!443 (List!14244 Int) Regex!3769)

(assert (=> b!1396514 (= lt!465217 (getWitness!443 (map!3143 rules!2550 lambda!60782) lambda!60783))))

(declare-fun b!1396515 () Bool)

(declare-fun e!891778 () Bool)

(declare-fun e!891776 () Bool)

(assert (=> b!1396515 (= e!891778 e!891776)))

(declare-fun res!630968 () Bool)

(assert (=> b!1396515 (=> res!630968 e!891776)))

(declare-fun lt!465213 () Bool)

(assert (=> b!1396515 (= res!630968 lt!465213)))

(declare-datatypes ((Unit!20473 0))(
  ( (Unit!20474) )
))
(declare-fun lt!465215 () Unit!20473)

(declare-fun e!891752 () Unit!20473)

(assert (=> b!1396515 (= lt!465215 e!891752)))

(declare-fun c!229861 () Bool)

(assert (=> b!1396515 (= c!229861 lt!465213)))

(declare-fun lt!465225 () C!7828)

(declare-fun contains!2749 (List!14240 C!7828) Bool)

(declare-fun usedCharacters!266 (Regex!3769) List!14240)

(assert (=> b!1396515 (= lt!465213 (not (contains!2749 (usedCharacters!266 (regex!2455 (rule!4218 t1!34))) lt!465225)))))

(declare-fun b!1396516 () Bool)

(declare-fun res!630967 () Bool)

(assert (=> b!1396516 (=> res!630967 e!891781)))

(declare-fun lt!465216 () C!7828)

(assert (=> b!1396516 (= res!630967 (not (contains!2749 lt!465222 lt!465216)))))

(declare-fun b!1396517 () Bool)

(declare-fun res!630974 () Bool)

(assert (=> b!1396517 (=> (not res!630974) (not e!891771))))

(declare-fun rulesInvariant!2020 (LexerInterface!2150 List!14242) Bool)

(assert (=> b!1396517 (= res!630974 (rulesInvariant!2020 thiss!19762 rules!2550))))

(declare-fun e!891762 () Bool)

(declare-fun e!891767 () Bool)

(declare-fun tp!398018 () Bool)

(declare-fun b!1396518 () Bool)

(declare-fun inv!18500 (String!16961) Bool)

(declare-fun inv!18504 (TokenValueInjection!4750) Bool)

(assert (=> b!1396518 (= e!891767 (and tp!398018 (inv!18500 (tag!2717 (h!19577 rules!2550))) (inv!18504 (transformation!2455 (h!19577 rules!2550))) e!891762))))

(declare-fun b!1396519 () Bool)

(declare-fun Unit!20475 () Unit!20473)

(assert (=> b!1396519 (= e!891752 Unit!20475)))

(declare-fun lt!465204 () Unit!20473)

(declare-fun lt!465199 () List!14240)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!200 (Regex!3769 List!14240 C!7828) Unit!20473)

(declare-fun head!2569 (List!14240) C!7828)

(assert (=> b!1396519 (= lt!465204 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!200 (regex!2455 (rule!4218 t1!34)) lt!465199 (head!2569 lt!465199)))))

(assert (=> b!1396519 false))

(declare-fun b!1396520 () Bool)

(declare-fun res!630978 () Bool)

(declare-fun e!891763 () Bool)

(assert (=> b!1396520 (=> res!630978 e!891763)))

(declare-fun lt!465214 () tuple2!13790)

(declare-fun isEmpty!8604 (BalanceConc!9280) Bool)

(assert (=> b!1396520 (= res!630978 (not (isEmpty!8604 (_2!7781 lt!465214))))))

(declare-fun b!1396521 () Bool)

(declare-fun e!891769 () Bool)

(declare-fun e!891761 () Bool)

(declare-fun tp!398012 () Bool)

(assert (=> b!1396521 (= e!891761 (and tp!398012 (inv!18500 (tag!2717 (rule!4218 t2!34))) (inv!18504 (transformation!2455 (rule!4218 t2!34))) e!891769))))

(declare-fun b!1396522 () Bool)

(assert (=> b!1396522 (= e!891773 e!891763)))

(declare-fun res!630973 () Bool)

(assert (=> b!1396522 (=> res!630973 e!891763)))

(declare-fun lt!465226 () List!14243)

(assert (=> b!1396522 (= res!630973 (not (= (list!5517 (_1!7781 lt!465214)) lt!465226)))))

(assert (=> b!1396522 (= lt!465226 (Cons!14177 t2!34 Nil!14177))))

(declare-fun lt!465209 () BalanceConc!9280)

(assert (=> b!1396522 (= lt!465214 (lex!975 thiss!19762 rules!2550 lt!465209))))

(assert (=> b!1396522 (= lt!465209 (print!914 thiss!19762 (singletonSeq!1110 t2!34)))))

(assert (=> b!1396523 (= e!891781 e!891755)))

(declare-fun res!630964 () Bool)

(assert (=> b!1396523 (=> res!630964 e!891755)))

(declare-fun exists!554 (List!14244 Int) Bool)

(assert (=> b!1396523 (= res!630964 (not (exists!554 (map!3143 rules!2550 lambda!60782) lambda!60783)))))

(declare-fun lt!465219 () List!14244)

(assert (=> b!1396523 (exists!554 lt!465219 lambda!60783)))

(declare-fun lt!465218 () Unit!20473)

(declare-fun matchRGenUnionSpec!180 (Regex!3769 List!14244 List!14240) Unit!20473)

(assert (=> b!1396523 (= lt!465218 (matchRGenUnionSpec!180 lt!465205 lt!465219 lt!465222))))

(assert (=> b!1396523 (= lt!465219 (map!3143 rules!2550 lambda!60782))))

(declare-fun b!1396524 () Bool)

(declare-fun res!630951 () Bool)

(assert (=> b!1396524 (=> res!630951 e!891773)))

(assert (=> b!1396524 (= res!630951 (not (isEmpty!8604 (_2!7781 lt!465224))))))

(declare-fun b!1396525 () Bool)

(declare-fun res!630979 () Bool)

(assert (=> b!1396525 (=> res!630979 e!891770)))

(assert (=> b!1396525 (= res!630979 (not (contains!2747 rules!2550 (rule!4218 t2!34))))))

(assert (=> b!1396526 (= e!891756 e!891751)))

(declare-fun res!630962 () Bool)

(assert (=> b!1396526 (=> res!630962 e!891751)))

(declare-fun exists!555 (List!14242 Int) Bool)

(assert (=> b!1396526 (= res!630962 (not (exists!555 rules!2550 lambda!60784)))))

(assert (=> b!1396526 (exists!555 rules!2550 lambda!60784)))

(declare-fun lt!465223 () Unit!20473)

(declare-fun lemmaMapContains!166 (List!14242 Int Regex!3769) Unit!20473)

(assert (=> b!1396526 (= lt!465223 (lemmaMapContains!166 rules!2550 lambda!60782 lt!465217))))

(declare-fun b!1396527 () Bool)

(declare-fun res!630963 () Bool)

(assert (=> b!1396527 (=> res!630963 e!891781)))

(assert (=> b!1396527 (= res!630963 (not (contains!2749 lt!465222 lt!465225)))))

(declare-fun b!1396528 () Bool)

(declare-fun e!891777 () Unit!20473)

(declare-fun Unit!20476 () Unit!20473)

(assert (=> b!1396528 (= e!891777 Unit!20476)))

(declare-fun lt!465203 () Unit!20473)

(declare-fun lt!465196 () List!14240)

(assert (=> b!1396528 (= lt!465203 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!200 (regex!2455 (rule!4218 t2!34)) lt!465196 (head!2569 lt!465196)))))

(assert (=> b!1396528 false))

(assert (=> b!1396529 (= e!891769 (and tp!398009 tp!398016))))

(declare-fun b!1396530 () Bool)

(declare-fun e!891774 () Bool)

(declare-fun e!891775 () Bool)

(assert (=> b!1396530 (= e!891774 e!891775)))

(declare-fun res!630949 () Bool)

(assert (=> b!1396530 (=> (not res!630949) (not e!891775))))

(declare-fun lt!465207 () List!14240)

(declare-fun prefixMatch!278 (Regex!3769 List!14240) Bool)

(assert (=> b!1396530 (= res!630949 (prefixMatch!278 lt!465205 lt!465207))))

(declare-fun rulesRegex!338 (LexerInterface!2150 List!14242) Regex!3769)

(assert (=> b!1396530 (= lt!465205 (rulesRegex!338 thiss!19762 rules!2550))))

(declare-fun ++!3686 (List!14240 List!14240) List!14240)

(assert (=> b!1396530 (= lt!465207 (++!3686 lt!465199 (Cons!14174 lt!465216 Nil!14174)))))

(declare-fun lt!465201 () BalanceConc!9280)

(declare-fun apply!3591 (BalanceConc!9280 Int) C!7828)

(assert (=> b!1396530 (= lt!465216 (apply!3591 lt!465201 0))))

(declare-fun lt!465210 () BalanceConc!9280)

(declare-fun list!5518 (BalanceConc!9280) List!14240)

(assert (=> b!1396530 (= lt!465199 (list!5518 lt!465210))))

(declare-fun charsOf!1427 (Token!4572) BalanceConc!9280)

(assert (=> b!1396530 (= lt!465210 (charsOf!1427 t1!34))))

(declare-fun b!1396531 () Bool)

(declare-fun e!891758 () Bool)

(assert (=> b!1396531 (= e!891758 (not (contains!2749 (usedCharacters!266 lt!465217) lt!465216)))))

(declare-fun b!1396532 () Bool)

(declare-fun res!630953 () Bool)

(assert (=> b!1396532 (=> (not res!630953) (not e!891774))))

(declare-fun sepAndNonSepRulesDisjointChars!828 (List!14242 List!14242) Bool)

(assert (=> b!1396532 (= res!630953 (sepAndNonSepRulesDisjointChars!828 rules!2550 rules!2550))))

(declare-fun e!891753 () Bool)

(assert (=> b!1396533 (= e!891753 (and tp!398011 tp!398020))))

(declare-fun b!1396534 () Bool)

(assert (=> b!1396534 (= e!891771 e!891774)))

(declare-fun res!630957 () Bool)

(assert (=> b!1396534 (=> (not res!630957) (not e!891774))))

(declare-fun size!11658 (BalanceConc!9280) Int)

(assert (=> b!1396534 (= res!630957 (> (size!11658 lt!465201) 0))))

(assert (=> b!1396534 (= lt!465201 (charsOf!1427 t2!34))))

(declare-fun b!1396535 () Bool)

(declare-fun res!630947 () Bool)

(assert (=> b!1396535 (=> res!630947 e!891763)))

(declare-datatypes ((tuple2!13792 0))(
  ( (tuple2!13793 (_1!7782 List!14243) (_2!7782 List!14240)) )
))
(declare-fun lexList!664 (LexerInterface!2150 List!14242 List!14240) tuple2!13792)

(assert (=> b!1396535 (= res!630947 (not (= (lexList!664 thiss!19762 rules!2550 (list!5518 lt!465209)) (tuple2!13793 lt!465226 Nil!14174))))))

(declare-fun b!1396536 () Bool)

(declare-fun Unit!20477 () Unit!20473)

(assert (=> b!1396536 (= e!891777 Unit!20477)))

(declare-fun b!1396537 () Bool)

(declare-fun res!630971 () Bool)

(assert (=> b!1396537 (=> res!630971 e!891778)))

(assert (=> b!1396537 (= res!630971 (not (matchR!1760 (regex!2455 (rule!4218 t2!34)) lt!465196)))))

(declare-fun b!1396538 () Bool)

(declare-fun e!891754 () Bool)

(declare-fun e!891766 () Bool)

(assert (=> b!1396538 (= e!891754 e!891766)))

(declare-fun res!630965 () Bool)

(assert (=> b!1396538 (=> res!630965 e!891766)))

(assert (=> b!1396538 (= res!630965 (or (not (isSeparator!2455 lt!465198)) (not (isSeparator!2455 (rule!4218 t1!34)))))))

(assert (=> b!1396538 (= (regex!2455 lt!465198) lt!465217)))

(declare-fun b!1396539 () Bool)

(declare-fun tp!398015 () Bool)

(declare-fun e!891750 () Bool)

(declare-fun inv!21 (TokenValue!2545) Bool)

(assert (=> b!1396539 (= e!891765 (and (inv!21 (value!79600 t1!34)) e!891750 tp!398015))))

(declare-fun b!1396540 () Bool)

(declare-fun res!630972 () Bool)

(assert (=> b!1396540 (=> res!630972 e!891773)))

(declare-datatypes ((tuple2!13794 0))(
  ( (tuple2!13795 (_1!7783 Token!4572) (_2!7783 List!14240)) )
))
(declare-datatypes ((Option!2718 0))(
  ( (None!2717) (Some!2717 (v!21629 tuple2!13794)) )
))
(declare-fun maxPrefix!1124 (LexerInterface!2150 List!14242 List!14240) Option!2718)

(assert (=> b!1396540 (= res!630972 (not (= (maxPrefix!1124 thiss!19762 rules!2550 lt!465199) (Some!2717 (tuple2!13795 t1!34 Nil!14174)))))))

(declare-fun b!1396541 () Bool)

(declare-fun tp!398013 () Bool)

(assert (=> b!1396541 (= e!891764 (and e!891767 tp!398013))))

(declare-fun b!1396542 () Bool)

(declare-fun res!630970 () Bool)

(assert (=> b!1396542 (=> res!630970 e!891773)))

(assert (=> b!1396542 (= res!630970 (not (contains!2747 rules!2550 (rule!4218 t1!34))))))

(declare-fun b!1396543 () Bool)

(declare-fun res!630976 () Bool)

(assert (=> b!1396543 (=> (not res!630976) (not e!891771))))

(assert (=> b!1396543 (= res!630976 (rulesProduceIndividualToken!1119 thiss!19762 rules!2550 t1!34))))

(declare-fun b!1396544 () Bool)

(assert (=> b!1396544 (= e!891763 e!891770)))

(declare-fun res!630966 () Bool)

(assert (=> b!1396544 (=> res!630966 e!891770)))

(assert (=> b!1396544 (= res!630966 (not (= (maxPrefix!1124 thiss!19762 rules!2550 lt!465196) (Some!2717 (tuple2!13795 t2!34 Nil!14174)))))))

(assert (=> b!1396544 (= lt!465196 (list!5518 lt!465201))))

(declare-fun b!1396545 () Bool)

(declare-fun res!630948 () Bool)

(assert (=> b!1396545 (=> res!630948 e!891773)))

(assert (=> b!1396545 (= res!630948 (not (= (lexList!664 thiss!19762 rules!2550 (list!5518 lt!465206)) (tuple2!13793 lt!465211 Nil!14174))))))

(declare-fun b!1396546 () Bool)

(assert (=> b!1396546 (= e!891776 e!891754)))

(declare-fun res!630956 () Bool)

(assert (=> b!1396546 (=> res!630956 e!891754)))

(declare-fun lt!465212 () Bool)

(assert (=> b!1396546 (= res!630956 lt!465212)))

(declare-fun lt!465220 () Unit!20473)

(assert (=> b!1396546 (= lt!465220 e!891777)))

(declare-fun c!229860 () Bool)

(assert (=> b!1396546 (= c!229860 lt!465212)))

(assert (=> b!1396546 (= lt!465212 (not (contains!2749 (usedCharacters!266 (regex!2455 (rule!4218 t2!34))) lt!465216)))))

(declare-fun b!1396547 () Bool)

(declare-fun tp!398010 () Bool)

(assert (=> b!1396547 (= e!891750 (and tp!398010 (inv!18500 (tag!2717 (rule!4218 t1!34))) (inv!18504 (transformation!2455 (rule!4218 t1!34))) e!891753))))

(declare-fun e!891757 () Bool)

(assert (=> b!1396548 (= e!891775 (not e!891757))))

(declare-fun res!630977 () Bool)

(assert (=> b!1396548 (=> res!630977 e!891757)))

(declare-fun lambda!60781 () Int)

(declare-fun Exists!919 (Int) Bool)

(assert (=> b!1396548 (= res!630977 (not (Exists!919 lambda!60781)))))

(assert (=> b!1396548 (Exists!919 lambda!60781)))

(declare-fun lt!465221 () Unit!20473)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!237 (Regex!3769 List!14240) Unit!20473)

(assert (=> b!1396548 (= lt!465221 (lemmaPrefixMatchThenExistsStringThatMatches!237 lt!465205 lt!465207))))

(declare-fun b!1396549 () Bool)

(declare-fun tp!398014 () Bool)

(assert (=> b!1396549 (= e!891782 (and (inv!21 (value!79600 t2!34)) e!891761 tp!398014))))

(declare-fun b!1396550 () Bool)

(declare-fun res!630975 () Bool)

(assert (=> b!1396550 (=> (not res!630975) (not e!891771))))

(assert (=> b!1396550 (= res!630975 (not (= (isSeparator!2455 (rule!4218 t1!34)) (isSeparator!2455 (rule!4218 t2!34)))))))

(declare-fun b!1396551 () Bool)

(declare-fun res!630961 () Bool)

(assert (=> b!1396551 (=> res!630961 e!891781)))

(assert (=> b!1396551 (= res!630961 (not (contains!2749 lt!465207 lt!465216)))))

(declare-fun b!1396552 () Bool)

(declare-fun res!630946 () Bool)

(assert (=> b!1396552 (=> (not res!630946) (not e!891774))))

(declare-fun separableTokensPredicate!433 (LexerInterface!2150 Token!4572 Token!4572 List!14242) Bool)

(assert (=> b!1396552 (= res!630946 (not (separableTokensPredicate!433 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1396553 (= e!891770 e!891778)))

(declare-fun res!630954 () Bool)

(assert (=> b!1396553 (=> res!630954 e!891778)))

(assert (=> b!1396553 (= res!630954 (not (matchR!1760 (regex!2455 (rule!4218 t1!34)) lt!465199)))))

(declare-fun lt!465208 () Unit!20473)

(declare-fun forallContained!650 (List!14242 Int Rule!4710) Unit!20473)

(assert (=> b!1396553 (= lt!465208 (forallContained!650 rules!2550 lambda!60785 (rule!4218 t2!34)))))

(declare-fun lt!465197 () Unit!20473)

(assert (=> b!1396553 (= lt!465197 (forallContained!650 rules!2550 lambda!60785 (rule!4218 t1!34)))))

(declare-fun lt!465202 () Unit!20473)

(assert (=> b!1396553 (= lt!465202 (forallContained!650 rules!2550 lambda!60785 lt!465198))))

(declare-fun b!1396554 () Bool)

(declare-fun e!891780 () Bool)

(assert (=> b!1396554 (= e!891780 e!891781)))

(declare-fun res!630945 () Bool)

(assert (=> b!1396554 (=> res!630945 e!891781)))

(assert (=> b!1396554 (= res!630945 (not (contains!2749 lt!465207 lt!465225)))))

(assert (=> b!1396554 (= lt!465225 (apply!3591 lt!465210 0))))

(declare-fun b!1396555 () Bool)

(assert (=> b!1396555 (= e!891766 e!891758)))

(declare-fun res!630952 () Bool)

(assert (=> b!1396555 (=> res!630952 e!891758)))

(declare-fun validRegex!1645 (Regex!3769) Bool)

(assert (=> b!1396555 (= res!630952 (not (validRegex!1645 lt!465217)))))

(assert (=> b!1396555 (not (contains!2749 (usedCharacters!266 (regex!2455 lt!465198)) lt!465216))))

(declare-fun lt!465200 () Unit!20473)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!128 (LexerInterface!2150 List!14242 List!14242 Rule!4710 Rule!4710 C!7828) Unit!20473)

(assert (=> b!1396555 (= lt!465200 (lemmaSepRuleNotContainsCharContainedInANonSepRule!128 thiss!19762 rules!2550 rules!2550 (rule!4218 t2!34) lt!465198 lt!465216))))

(declare-fun b!1396556 () Bool)

(assert (=> b!1396556 (= e!891757 e!891780)))

(declare-fun res!630955 () Bool)

(assert (=> b!1396556 (=> res!630955 e!891780)))

(declare-fun getSuffix!615 (List!14240 List!14240) List!14240)

(assert (=> b!1396556 (= res!630955 (not (= lt!465222 (++!3686 lt!465207 (getSuffix!615 lt!465222 lt!465207)))))))

(declare-fun pickWitness!222 (Int) List!14240)

(assert (=> b!1396556 (= lt!465222 (pickWitness!222 lambda!60781))))

(declare-fun b!1396557 () Bool)

(declare-fun Unit!20478 () Unit!20473)

(assert (=> b!1396557 (= e!891752 Unit!20478)))

(assert (=> b!1396558 (= e!891762 (and tp!398019 tp!398017))))

(declare-fun b!1396559 () Bool)

(declare-fun res!630944 () Bool)

(assert (=> b!1396559 (=> (not res!630944) (not e!891771))))

(declare-fun isEmpty!8605 (List!14242) Bool)

(assert (=> b!1396559 (= res!630944 (not (isEmpty!8605 rules!2550)))))

(assert (= (and start!127142 res!630960) b!1396559))

(assert (= (and b!1396559 res!630944) b!1396517))

(assert (= (and b!1396517 res!630974) b!1396543))

(assert (= (and b!1396543 res!630976) b!1396513))

(assert (= (and b!1396513 res!630950) b!1396550))

(assert (= (and b!1396550 res!630975) b!1396534))

(assert (= (and b!1396534 res!630957) b!1396532))

(assert (= (and b!1396532 res!630953) b!1396552))

(assert (= (and b!1396552 res!630946) b!1396530))

(assert (= (and b!1396530 res!630949) b!1396548))

(assert (= (and b!1396548 (not res!630977)) b!1396556))

(assert (= (and b!1396556 (not res!630955)) b!1396554))

(assert (= (and b!1396554 (not res!630945)) b!1396527))

(assert (= (and b!1396527 (not res!630963)) b!1396551))

(assert (= (and b!1396551 (not res!630961)) b!1396516))

(assert (= (and b!1396516 (not res!630967)) b!1396512))

(assert (= (and b!1396512 (not res!630958)) b!1396523))

(assert (= (and b!1396523 (not res!630964)) b!1396514))

(assert (= (and b!1396514 (not res!630969)) b!1396526))

(assert (= (and b!1396526 (not res!630962)) b!1396511))

(assert (= (and b!1396511 (not res!630980)) b!1396524))

(assert (= (and b!1396524 (not res!630951)) b!1396545))

(assert (= (and b!1396545 (not res!630948)) b!1396540))

(assert (= (and b!1396540 (not res!630972)) b!1396542))

(assert (= (and b!1396542 (not res!630970)) b!1396522))

(assert (= (and b!1396522 (not res!630973)) b!1396520))

(assert (= (and b!1396520 (not res!630978)) b!1396535))

(assert (= (and b!1396535 (not res!630947)) b!1396544))

(assert (= (and b!1396544 (not res!630966)) b!1396525))

(assert (= (and b!1396525 (not res!630979)) b!1396510))

(assert (= (and b!1396510 (not res!630959)) b!1396553))

(assert (= (and b!1396553 (not res!630954)) b!1396537))

(assert (= (and b!1396537 (not res!630971)) b!1396515))

(assert (= (and b!1396515 c!229861) b!1396519))

(assert (= (and b!1396515 (not c!229861)) b!1396557))

(assert (= (and b!1396515 (not res!630968)) b!1396546))

(assert (= (and b!1396546 c!229860) b!1396528))

(assert (= (and b!1396546 (not c!229860)) b!1396536))

(assert (= (and b!1396546 (not res!630956)) b!1396538))

(assert (= (and b!1396538 (not res!630965)) b!1396555))

(assert (= (and b!1396555 (not res!630952)) b!1396531))

(assert (= b!1396518 b!1396558))

(assert (= b!1396541 b!1396518))

(assert (= (and start!127142 ((_ is Cons!14176) rules!2550)) b!1396541))

(assert (= b!1396547 b!1396533))

(assert (= b!1396539 b!1396547))

(assert (= start!127142 b!1396539))

(assert (= b!1396521 b!1396529))

(assert (= b!1396549 b!1396521))

(assert (= start!127142 b!1396549))

(declare-fun m!1572933 () Bool)

(assert (=> b!1396552 m!1572933))

(declare-fun m!1572935 () Bool)

(assert (=> b!1396525 m!1572935))

(declare-fun m!1572937 () Bool)

(assert (=> b!1396554 m!1572937))

(declare-fun m!1572939 () Bool)

(assert (=> b!1396554 m!1572939))

(declare-fun m!1572941 () Bool)

(assert (=> b!1396522 m!1572941))

(declare-fun m!1572943 () Bool)

(assert (=> b!1396522 m!1572943))

(declare-fun m!1572945 () Bool)

(assert (=> b!1396522 m!1572945))

(assert (=> b!1396522 m!1572945))

(declare-fun m!1572947 () Bool)

(assert (=> b!1396522 m!1572947))

(declare-fun m!1572949 () Bool)

(assert (=> b!1396545 m!1572949))

(assert (=> b!1396545 m!1572949))

(declare-fun m!1572951 () Bool)

(assert (=> b!1396545 m!1572951))

(declare-fun m!1572953 () Bool)

(assert (=> b!1396511 m!1572953))

(declare-fun m!1572955 () Bool)

(assert (=> b!1396511 m!1572955))

(declare-fun m!1572957 () Bool)

(assert (=> b!1396511 m!1572957))

(declare-fun m!1572959 () Bool)

(assert (=> b!1396511 m!1572959))

(assert (=> b!1396511 m!1572953))

(declare-fun m!1572961 () Bool)

(assert (=> b!1396511 m!1572961))

(declare-fun m!1572963 () Bool)

(assert (=> b!1396527 m!1572963))

(declare-fun m!1572965 () Bool)

(assert (=> b!1396556 m!1572965))

(assert (=> b!1396556 m!1572965))

(declare-fun m!1572967 () Bool)

(assert (=> b!1396556 m!1572967))

(declare-fun m!1572969 () Bool)

(assert (=> b!1396556 m!1572969))

(declare-fun m!1572971 () Bool)

(assert (=> start!127142 m!1572971))

(declare-fun m!1572973 () Bool)

(assert (=> start!127142 m!1572973))

(declare-fun m!1572975 () Bool)

(assert (=> b!1396537 m!1572975))

(declare-fun m!1572977 () Bool)

(assert (=> b!1396534 m!1572977))

(declare-fun m!1572979 () Bool)

(assert (=> b!1396534 m!1572979))

(declare-fun m!1572981 () Bool)

(assert (=> b!1396535 m!1572981))

(assert (=> b!1396535 m!1572981))

(declare-fun m!1572983 () Bool)

(assert (=> b!1396535 m!1572983))

(declare-fun m!1572985 () Bool)

(assert (=> b!1396540 m!1572985))

(declare-fun m!1572987 () Bool)

(assert (=> b!1396542 m!1572987))

(declare-fun m!1572989 () Bool)

(assert (=> b!1396517 m!1572989))

(declare-fun m!1572991 () Bool)

(assert (=> b!1396530 m!1572991))

(declare-fun m!1572993 () Bool)

(assert (=> b!1396530 m!1572993))

(declare-fun m!1572995 () Bool)

(assert (=> b!1396530 m!1572995))

(declare-fun m!1572997 () Bool)

(assert (=> b!1396530 m!1572997))

(declare-fun m!1572999 () Bool)

(assert (=> b!1396530 m!1572999))

(declare-fun m!1573001 () Bool)

(assert (=> b!1396530 m!1573001))

(declare-fun m!1573003 () Bool)

(assert (=> b!1396512 m!1573003))

(declare-fun m!1573005 () Bool)

(assert (=> b!1396516 m!1573005))

(declare-fun m!1573007 () Bool)

(assert (=> b!1396518 m!1573007))

(declare-fun m!1573009 () Bool)

(assert (=> b!1396518 m!1573009))

(declare-fun m!1573011 () Bool)

(assert (=> b!1396553 m!1573011))

(declare-fun m!1573013 () Bool)

(assert (=> b!1396553 m!1573013))

(declare-fun m!1573015 () Bool)

(assert (=> b!1396553 m!1573015))

(declare-fun m!1573017 () Bool)

(assert (=> b!1396553 m!1573017))

(declare-fun m!1573019 () Bool)

(assert (=> b!1396514 m!1573019))

(assert (=> b!1396514 m!1573019))

(declare-fun m!1573021 () Bool)

(assert (=> b!1396514 m!1573021))

(assert (=> b!1396514 m!1573019))

(assert (=> b!1396514 m!1573019))

(declare-fun m!1573023 () Bool)

(assert (=> b!1396514 m!1573023))

(declare-fun m!1573025 () Bool)

(assert (=> b!1396513 m!1573025))

(declare-fun m!1573027 () Bool)

(assert (=> b!1396546 m!1573027))

(assert (=> b!1396546 m!1573027))

(declare-fun m!1573029 () Bool)

(assert (=> b!1396546 m!1573029))

(declare-fun m!1573031 () Bool)

(assert (=> b!1396520 m!1573031))

(declare-fun m!1573033 () Bool)

(assert (=> b!1396524 m!1573033))

(declare-fun m!1573035 () Bool)

(assert (=> b!1396510 m!1573035))

(declare-fun m!1573037 () Bool)

(assert (=> b!1396532 m!1573037))

(declare-fun m!1573039 () Bool)

(assert (=> b!1396544 m!1573039))

(declare-fun m!1573041 () Bool)

(assert (=> b!1396544 m!1573041))

(declare-fun m!1573043 () Bool)

(assert (=> b!1396526 m!1573043))

(assert (=> b!1396526 m!1573043))

(declare-fun m!1573045 () Bool)

(assert (=> b!1396526 m!1573045))

(declare-fun m!1573047 () Bool)

(assert (=> b!1396548 m!1573047))

(assert (=> b!1396548 m!1573047))

(declare-fun m!1573049 () Bool)

(assert (=> b!1396548 m!1573049))

(declare-fun m!1573051 () Bool)

(assert (=> b!1396521 m!1573051))

(declare-fun m!1573053 () Bool)

(assert (=> b!1396521 m!1573053))

(declare-fun m!1573055 () Bool)

(assert (=> b!1396543 m!1573055))

(declare-fun m!1573057 () Bool)

(assert (=> b!1396539 m!1573057))

(declare-fun m!1573059 () Bool)

(assert (=> b!1396531 m!1573059))

(assert (=> b!1396531 m!1573059))

(declare-fun m!1573061 () Bool)

(assert (=> b!1396531 m!1573061))

(declare-fun m!1573063 () Bool)

(assert (=> b!1396551 m!1573063))

(declare-fun m!1573065 () Bool)

(assert (=> b!1396515 m!1573065))

(assert (=> b!1396515 m!1573065))

(declare-fun m!1573067 () Bool)

(assert (=> b!1396515 m!1573067))

(assert (=> b!1396523 m!1573019))

(declare-fun m!1573069 () Bool)

(assert (=> b!1396523 m!1573069))

(assert (=> b!1396523 m!1573019))

(declare-fun m!1573071 () Bool)

(assert (=> b!1396523 m!1573071))

(declare-fun m!1573073 () Bool)

(assert (=> b!1396523 m!1573073))

(assert (=> b!1396523 m!1573019))

(declare-fun m!1573075 () Bool)

(assert (=> b!1396528 m!1573075))

(assert (=> b!1396528 m!1573075))

(declare-fun m!1573077 () Bool)

(assert (=> b!1396528 m!1573077))

(declare-fun m!1573079 () Bool)

(assert (=> b!1396549 m!1573079))

(declare-fun m!1573081 () Bool)

(assert (=> b!1396555 m!1573081))

(declare-fun m!1573083 () Bool)

(assert (=> b!1396555 m!1573083))

(assert (=> b!1396555 m!1573083))

(declare-fun m!1573085 () Bool)

(assert (=> b!1396555 m!1573085))

(declare-fun m!1573087 () Bool)

(assert (=> b!1396555 m!1573087))

(declare-fun m!1573089 () Bool)

(assert (=> b!1396559 m!1573089))

(declare-fun m!1573091 () Bool)

(assert (=> b!1396519 m!1573091))

(assert (=> b!1396519 m!1573091))

(declare-fun m!1573093 () Bool)

(assert (=> b!1396519 m!1573093))

(declare-fun m!1573095 () Bool)

(assert (=> b!1396547 m!1573095))

(declare-fun m!1573097 () Bool)

(assert (=> b!1396547 m!1573097))

(check-sat (not b!1396511) (not b!1396519) (not b!1396531) (not b!1396546) (not b!1396530) (not b!1396534) (not b!1396559) (not b!1396543) (not b!1396525) (not b!1396552) (not b!1396532) (not b_next!34677) b_and!93515 (not start!127142) (not b!1396556) (not b!1396522) (not b!1396524) (not b_next!34683) (not b!1396551) (not b!1396553) (not b!1396540) (not b!1396545) (not b!1396549) (not b!1396555) (not b!1396523) b_and!93511 (not b_next!34679) (not b_next!34681) (not b!1396521) (not b!1396537) (not b!1396544) (not b!1396520) (not b!1396539) (not b_next!34685) b_and!93517 (not b!1396547) (not b_next!34675) (not b!1396516) (not b!1396514) (not b!1396518) (not b!1396542) (not b!1396515) b_and!93509 (not b!1396554) (not b!1396528) b_and!93507 (not b!1396512) (not b!1396535) (not b!1396513) (not b!1396527) (not b!1396541) (not b!1396526) (not b!1396548) (not b!1396510) (not b!1396517) b_and!93513)
(check-sat (not b_next!34683) (not b_next!34681) (not b_next!34675) b_and!93509 b_and!93507 b_and!93513 b_and!93515 (not b_next!34677) b_and!93511 (not b_next!34679) (not b_next!34685) b_and!93517)
