; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132840 () Bool)

(assert start!132840)

(declare-fun b!1434140 () Bool)

(declare-fun res!649450 () Bool)

(declare-fun e!915516 () Bool)

(assert (=> b!1434140 (=> (not res!649450) (not e!915516))))

(declare-datatypes ((C!8052 0))(
  ( (C!8053 (val!4596 Int)) )
))
(declare-datatypes ((List!14994 0))(
  ( (Nil!14928) (Cons!14928 (h!20329 C!8052) (t!127237 List!14994)) )
))
(declare-datatypes ((IArray!10149 0))(
  ( (IArray!10150 (innerList!5132 List!14994)) )
))
(declare-datatypes ((Conc!5072 0))(
  ( (Node!5072 (left!12718 Conc!5072) (right!13048 Conc!5072) (csize!10374 Int) (cheight!5283 Int)) (Leaf!7585 (xs!7805 IArray!10149) (csize!10375 Int)) (Empty!5072) )
))
(declare-datatypes ((BalanceConc!10084 0))(
  ( (BalanceConc!10085 (c!235660 Conc!5072)) )
))
(declare-fun lt!489184 () BalanceConc!10084)

(declare-datatypes ((List!14995 0))(
  ( (Nil!14929) (Cons!14929 (h!20330 (_ BitVec 16)) (t!127238 List!14995)) )
))
(declare-datatypes ((TokenValue!2713 0))(
  ( (FloatLiteralValue!5426 (text!19436 List!14995)) (TokenValueExt!2712 (__x!9222 Int)) (Broken!13565 (value!84377 List!14995)) (Object!2778) (End!2713) (Def!2713) (Underscore!2713) (Match!2713) (Else!2713) (Error!2713) (Case!2713) (If!2713) (Extends!2713) (Abstract!2713) (Class!2713) (Val!2713) (DelimiterValue!5426 (del!2773 List!14995)) (KeywordValue!2719 (value!84378 List!14995)) (CommentValue!5426 (value!84379 List!14995)) (WhitespaceValue!5426 (value!84380 List!14995)) (IndentationValue!2713 (value!84381 List!14995)) (String!17820) (Int32!2713) (Broken!13566 (value!84382 List!14995)) (Boolean!2714) (Unit!22768) (OperatorValue!2716 (op!2773 List!14995)) (IdentifierValue!5426 (value!84383 List!14995)) (IdentifierValue!5427 (value!84384 List!14995)) (WhitespaceValue!5427 (value!84385 List!14995)) (True!5426) (False!5426) (Broken!13567 (value!84386 List!14995)) (Broken!13568 (value!84387 List!14995)) (True!5427) (RightBrace!2713) (RightBracket!2713) (Colon!2713) (Null!2713) (Comma!2713) (LeftBracket!2713) (False!5427) (LeftBrace!2713) (ImaginaryLiteralValue!2713 (text!19437 List!14995)) (StringLiteralValue!8139 (value!84388 List!14995)) (EOFValue!2713 (value!84389 List!14995)) (IdentValue!2713 (value!84390 List!14995)) (DelimiterValue!5427 (value!84391 List!14995)) (DedentValue!2713 (value!84392 List!14995)) (NewLineValue!2713 (value!84393 List!14995)) (IntegerValue!8139 (value!84394 (_ BitVec 32)) (text!19438 List!14995)) (IntegerValue!8140 (value!84395 Int) (text!19439 List!14995)) (Times!2713) (Or!2713) (Equal!2713) (Minus!2713) (Broken!13569 (value!84396 List!14995)) (And!2713) (Div!2713) (LessEqual!2713) (Mod!2713) (Concat!6650) (Not!2713) (Plus!2713) (SpaceValue!2713 (value!84397 List!14995)) (IntegerValue!8141 (value!84398 Int) (text!19440 List!14995)) (StringLiteralValue!8140 (text!19441 List!14995)) (FloatLiteralValue!5427 (text!19442 List!14995)) (BytesLiteralValue!2713 (value!84399 List!14995)) (CommentValue!5427 (value!84400 List!14995)) (StringLiteralValue!8141 (value!84401 List!14995)) (ErrorTokenValue!2713 (msg!2774 List!14995)) )
))
(declare-datatypes ((Regex!3937 0))(
  ( (ElementMatch!3937 (c!235661 C!8052)) (Concat!6651 (regOne!8386 Regex!3937) (regTwo!8386 Regex!3937)) (EmptyExpr!3937) (Star!3937 (reg!4266 Regex!3937)) (EmptyLang!3937) (Union!3937 (regOne!8387 Regex!3937) (regTwo!8387 Regex!3937)) )
))
(declare-datatypes ((String!17821 0))(
  ( (String!17822 (value!84402 String)) )
))
(declare-datatypes ((TokenValueInjection!5086 0))(
  ( (TokenValueInjection!5087 (toValue!3926 Int) (toChars!3785 Int)) )
))
(declare-datatypes ((Rule!5046 0))(
  ( (Rule!5047 (regex!2623 Regex!3937) (tag!2885 String!17821) (isSeparator!2623 Bool) (transformation!2623 TokenValueInjection!5086)) )
))
(declare-datatypes ((Token!4908 0))(
  ( (Token!4909 (value!84403 TokenValue!2713) (rule!4386 Rule!5046) (size!12235 Int) (originalCharacters!3485 List!14994)) )
))
(declare-datatypes ((List!14996 0))(
  ( (Nil!14930) (Cons!14930 (h!20331 Token!4908) (t!127239 List!14996)) )
))
(declare-datatypes ((IArray!10151 0))(
  ( (IArray!10152 (innerList!5133 List!14996)) )
))
(declare-datatypes ((Conc!5073 0))(
  ( (Node!5073 (left!12719 Conc!5073) (right!13049 Conc!5073) (csize!10376 Int) (cheight!5284 Int)) (Leaf!7586 (xs!7806 IArray!10151) (csize!10377 Int)) (Empty!5073) )
))
(declare-datatypes ((BalanceConc!10086 0))(
  ( (BalanceConc!10087 (c!235662 Conc!5073)) )
))
(declare-datatypes ((List!14997 0))(
  ( (Nil!14931) (Cons!14931 (h!20332 Rule!5046) (t!127240 List!14997)) )
))
(declare-datatypes ((PrintableTokens!1028 0))(
  ( (PrintableTokens!1029 (rules!11404 List!14997) (tokens!1984 BalanceConc!10086)) )
))
(declare-fun other!32 () PrintableTokens!1028)

(declare-datatypes ((LexerInterface!2285 0))(
  ( (LexerInterfaceExt!2282 (__x!9223 Int)) (Lexer!2283) )
))
(declare-fun printTailRec!679 (LexerInterface!2285 BalanceConc!10086 Int BalanceConc!10084) BalanceConc!10084)

(assert (=> b!1434140 (= res!649450 (= lt!489184 (printTailRec!679 Lexer!2283 (tokens!1984 other!32) 0 (BalanceConc!10085 Empty!5072))))))

(declare-fun b!1434141 () Bool)

(declare-fun e!915518 () Bool)

(declare-fun e!915521 () Bool)

(assert (=> b!1434141 (= e!915518 e!915521)))

(declare-fun res!649449 () Bool)

(assert (=> b!1434141 (=> (not res!649449) (not e!915521))))

(declare-fun isEmpty!9269 (BalanceConc!10086) Bool)

(assert (=> b!1434141 (= res!649449 (isEmpty!9269 (tokens!1984 other!32)))))

(declare-datatypes ((Unit!22769 0))(
  ( (Unit!22770) )
))
(declare-fun lt!489187 () Unit!22769)

(declare-fun thiss!10022 () PrintableTokens!1028)

(declare-fun lemmaInvariant!319 (PrintableTokens!1028) Unit!22769)

(assert (=> b!1434141 (= lt!489187 (lemmaInvariant!319 thiss!10022))))

(declare-fun lt!489180 () Unit!22769)

(assert (=> b!1434141 (= lt!489180 (lemmaInvariant!319 other!32))))

(declare-fun b!1434142 () Bool)

(declare-fun e!915519 () List!14994)

(assert (=> b!1434142 (= e!915519 Nil!14928)))

(declare-fun e!915522 () Bool)

(declare-fun tp!406389 () Bool)

(declare-fun b!1434143 () Bool)

(declare-fun e!915517 () Bool)

(declare-fun inv!19828 (BalanceConc!10086) Bool)

(assert (=> b!1434143 (= e!915522 (and tp!406389 (inv!19828 (tokens!1984 thiss!10022)) e!915517))))

(declare-fun b!1434144 () Bool)

(declare-fun e!915515 () Bool)

(declare-fun tp!406390 () Bool)

(declare-fun inv!19829 (Conc!5073) Bool)

(assert (=> b!1434144 (= e!915515 (and (inv!19829 (c!235662 (tokens!1984 other!32))) tp!406390))))

(declare-fun b!1434145 () Bool)

(declare-fun lt!489186 () List!14996)

(declare-fun printList!707 (LexerInterface!2285 List!14996) List!14994)

(assert (=> b!1434145 (= e!915516 (= (printList!707 Lexer!2283 lt!489186) e!915519))))

(declare-fun c!235659 () Bool)

(get-info :version)

(assert (=> b!1434145 (= c!235659 ((_ is Cons!14930) lt!489186))))

(declare-fun b!1434146 () Bool)

(declare-fun e!915523 () Bool)

(declare-fun lt!489182 () List!14994)

(assert (=> b!1434146 (= e!915523 (= lt!489182 Nil!14928))))

(declare-fun b!1434147 () Bool)

(declare-fun ++!4001 (List!14994 List!14994) List!14994)

(declare-fun list!5931 (BalanceConc!10084) List!14994)

(declare-fun charsOf!1515 (Token!4908) BalanceConc!10084)

(assert (=> b!1434147 (= e!915519 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (printList!707 Lexer!2283 (t!127239 lt!489186))))))

(declare-fun b!1434148 () Bool)

(declare-fun tp!406391 () Bool)

(assert (=> b!1434148 (= e!915517 (and (inv!19829 (c!235662 (tokens!1984 thiss!10022))) tp!406391))))

(declare-fun res!649451 () Bool)

(assert (=> start!132840 (=> (not res!649451) (not e!915518))))

(assert (=> start!132840 (= res!649451 (= (rules!11404 thiss!10022) (rules!11404 other!32)))))

(assert (=> start!132840 e!915518))

(declare-fun inv!19830 (PrintableTokens!1028) Bool)

(assert (=> start!132840 (and (inv!19830 thiss!10022) e!915522)))

(declare-fun e!915520 () Bool)

(assert (=> start!132840 (and (inv!19830 other!32) e!915520)))

(declare-fun tp!406392 () Bool)

(declare-fun b!1434149 () Bool)

(assert (=> b!1434149 (= e!915520 (and tp!406392 (inv!19828 (tokens!1984 other!32)) e!915515))))

(declare-fun b!1434150 () Bool)

(assert (=> b!1434150 (= e!915521 (not (= lt!489184 (BalanceConc!10085 Empty!5072))))))

(assert (=> b!1434150 e!915516))

(declare-fun res!649452 () Bool)

(assert (=> b!1434150 (=> (not res!649452) (not e!915516))))

(declare-fun lt!489181 () BalanceConc!10084)

(assert (=> b!1434150 (= res!649452 (= lt!489181 lt!489184))))

(declare-fun print!1064 (LexerInterface!2285 BalanceConc!10086) BalanceConc!10084)

(assert (=> b!1434150 (= lt!489184 (print!1064 Lexer!2283 (tokens!1984 other!32)))))

(declare-fun print!1065 (PrintableTokens!1028) BalanceConc!10084)

(assert (=> b!1434150 (= lt!489181 (print!1065 other!32))))

(declare-fun lt!489179 () Unit!22769)

(declare-fun theoremInvertabilityWhenTokenListSeparable!69 (LexerInterface!2285 List!14997 List!14996) Unit!22769)

(assert (=> b!1434150 (= lt!489179 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) lt!489186))))

(declare-fun list!5932 (BalanceConc!10086) List!14996)

(assert (=> b!1434150 (= lt!489186 (list!5932 (tokens!1984 other!32)))))

(assert (=> b!1434150 (= (print!1065 thiss!10022) (print!1064 Lexer!2283 (tokens!1984 thiss!10022)))))

(declare-fun lt!489189 () Unit!22769)

(declare-fun lt!489190 () List!14996)

(assert (=> b!1434150 (= lt!489189 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) lt!489190))))

(assert (=> b!1434150 e!915523))

(declare-fun res!649453 () Bool)

(assert (=> b!1434150 (=> (not res!649453) (not e!915523))))

(declare-fun lt!489185 () List!14996)

(declare-fun lt!489183 () List!14994)

(assert (=> b!1434150 (= res!649453 (= (printList!707 Lexer!2283 lt!489185) (++!4001 lt!489183 lt!489182)))))

(assert (=> b!1434150 (= lt!489182 (printList!707 Lexer!2283 Nil!14930))))

(assert (=> b!1434150 (= lt!489183 (printList!707 Lexer!2283 lt!489190))))

(declare-fun ++!4002 (List!14996 List!14996) List!14996)

(assert (=> b!1434150 (= lt!489185 (++!4002 lt!489190 Nil!14930))))

(declare-fun lt!489188 () Unit!22769)

(declare-fun lemmaPrintConcatSameAsConcatPrint!68 (LexerInterface!2285 List!14996 List!14996) Unit!22769)

(assert (=> b!1434150 (= lt!489188 (lemmaPrintConcatSameAsConcatPrint!68 Lexer!2283 lt!489190 Nil!14930))))

(assert (=> b!1434150 (= lt!489190 (list!5932 (tokens!1984 thiss!10022)))))

(assert (= (and start!132840 res!649451) b!1434141))

(assert (= (and b!1434141 res!649449) b!1434150))

(assert (= (and b!1434150 res!649453) b!1434146))

(assert (= (and b!1434150 res!649452) b!1434140))

(assert (= (and b!1434140 res!649450) b!1434145))

(assert (= (and b!1434145 c!235659) b!1434147))

(assert (= (and b!1434145 (not c!235659)) b!1434142))

(assert (= b!1434143 b!1434148))

(assert (= start!132840 b!1434143))

(assert (= b!1434149 b!1434144))

(assert (= start!132840 b!1434149))

(declare-fun m!1637027 () Bool)

(assert (=> b!1434145 m!1637027))

(declare-fun m!1637029 () Bool)

(assert (=> b!1434143 m!1637029))

(declare-fun m!1637031 () Bool)

(assert (=> b!1434141 m!1637031))

(declare-fun m!1637033 () Bool)

(assert (=> b!1434141 m!1637033))

(declare-fun m!1637035 () Bool)

(assert (=> b!1434141 m!1637035))

(declare-fun m!1637037 () Bool)

(assert (=> b!1434148 m!1637037))

(declare-fun m!1637039 () Bool)

(assert (=> start!132840 m!1637039))

(declare-fun m!1637041 () Bool)

(assert (=> start!132840 m!1637041))

(declare-fun m!1637043 () Bool)

(assert (=> b!1434140 m!1637043))

(declare-fun m!1637045 () Bool)

(assert (=> b!1434144 m!1637045))

(declare-fun m!1637047 () Bool)

(assert (=> b!1434149 m!1637047))

(declare-fun m!1637049 () Bool)

(assert (=> b!1434147 m!1637049))

(assert (=> b!1434147 m!1637049))

(declare-fun m!1637051 () Bool)

(assert (=> b!1434147 m!1637051))

(declare-fun m!1637053 () Bool)

(assert (=> b!1434147 m!1637053))

(assert (=> b!1434147 m!1637051))

(assert (=> b!1434147 m!1637053))

(declare-fun m!1637055 () Bool)

(assert (=> b!1434147 m!1637055))

(declare-fun m!1637057 () Bool)

(assert (=> b!1434150 m!1637057))

(declare-fun m!1637059 () Bool)

(assert (=> b!1434150 m!1637059))

(declare-fun m!1637061 () Bool)

(assert (=> b!1434150 m!1637061))

(declare-fun m!1637063 () Bool)

(assert (=> b!1434150 m!1637063))

(declare-fun m!1637065 () Bool)

(assert (=> b!1434150 m!1637065))

(declare-fun m!1637067 () Bool)

(assert (=> b!1434150 m!1637067))

(declare-fun m!1637069 () Bool)

(assert (=> b!1434150 m!1637069))

(declare-fun m!1637071 () Bool)

(assert (=> b!1434150 m!1637071))

(declare-fun m!1637073 () Bool)

(assert (=> b!1434150 m!1637073))

(declare-fun m!1637075 () Bool)

(assert (=> b!1434150 m!1637075))

(declare-fun m!1637077 () Bool)

(assert (=> b!1434150 m!1637077))

(declare-fun m!1637079 () Bool)

(assert (=> b!1434150 m!1637079))

(declare-fun m!1637081 () Bool)

(assert (=> b!1434150 m!1637081))

(declare-fun m!1637083 () Bool)

(assert (=> b!1434150 m!1637083))

(check-sat (not b!1434149) (not b!1434148) (not b!1434147) (not b!1434140) (not b!1434150) (not b!1434145) (not b!1434143) (not b!1434144) (not b!1434141) (not start!132840))
(check-sat)
(get-model)

(declare-fun d!412763 () Bool)

(declare-fun res!649486 () Bool)

(declare-fun e!915548 () Bool)

(assert (=> d!412763 (=> (not res!649486) (not e!915548))))

(declare-fun isEmpty!9275 (List!14997) Bool)

(assert (=> d!412763 (= res!649486 (not (isEmpty!9275 (rules!11404 thiss!10022))))))

(assert (=> d!412763 (= (inv!19830 thiss!10022) e!915548)))

(declare-fun b!1434201 () Bool)

(declare-fun res!649487 () Bool)

(assert (=> b!1434201 (=> (not res!649487) (not e!915548))))

(declare-fun rulesInvariant!2123 (LexerInterface!2285 List!14997) Bool)

(assert (=> b!1434201 (= res!649487 (rulesInvariant!2123 Lexer!2283 (rules!11404 thiss!10022)))))

(declare-fun b!1434202 () Bool)

(declare-fun res!649488 () Bool)

(assert (=> b!1434202 (=> (not res!649488) (not e!915548))))

(declare-fun rulesProduceEachTokenIndividually!841 (LexerInterface!2285 List!14997 BalanceConc!10086) Bool)

(assert (=> b!1434202 (= res!649488 (rulesProduceEachTokenIndividually!841 Lexer!2283 (rules!11404 thiss!10022) (tokens!1984 thiss!10022)))))

(declare-fun b!1434203 () Bool)

(declare-fun separableTokens!225 (LexerInterface!2285 BalanceConc!10086 List!14997) Bool)

(assert (=> b!1434203 (= e!915548 (separableTokens!225 Lexer!2283 (tokens!1984 thiss!10022) (rules!11404 thiss!10022)))))

(assert (= (and d!412763 res!649486) b!1434201))

(assert (= (and b!1434201 res!649487) b!1434202))

(assert (= (and b!1434202 res!649488) b!1434203))

(declare-fun m!1637143 () Bool)

(assert (=> d!412763 m!1637143))

(declare-fun m!1637145 () Bool)

(assert (=> b!1434201 m!1637145))

(declare-fun m!1637147 () Bool)

(assert (=> b!1434202 m!1637147))

(declare-fun m!1637149 () Bool)

(assert (=> b!1434203 m!1637149))

(assert (=> start!132840 d!412763))

(declare-fun d!412789 () Bool)

(declare-fun res!649489 () Bool)

(declare-fun e!915549 () Bool)

(assert (=> d!412789 (=> (not res!649489) (not e!915549))))

(assert (=> d!412789 (= res!649489 (not (isEmpty!9275 (rules!11404 other!32))))))

(assert (=> d!412789 (= (inv!19830 other!32) e!915549)))

(declare-fun b!1434204 () Bool)

(declare-fun res!649490 () Bool)

(assert (=> b!1434204 (=> (not res!649490) (not e!915549))))

(assert (=> b!1434204 (= res!649490 (rulesInvariant!2123 Lexer!2283 (rules!11404 other!32)))))

(declare-fun b!1434205 () Bool)

(declare-fun res!649491 () Bool)

(assert (=> b!1434205 (=> (not res!649491) (not e!915549))))

(assert (=> b!1434205 (= res!649491 (rulesProduceEachTokenIndividually!841 Lexer!2283 (rules!11404 other!32) (tokens!1984 other!32)))))

(declare-fun b!1434206 () Bool)

(assert (=> b!1434206 (= e!915549 (separableTokens!225 Lexer!2283 (tokens!1984 other!32) (rules!11404 other!32)))))

(assert (= (and d!412789 res!649489) b!1434204))

(assert (= (and b!1434204 res!649490) b!1434205))

(assert (= (and b!1434205 res!649491) b!1434206))

(declare-fun m!1637151 () Bool)

(assert (=> d!412789 m!1637151))

(declare-fun m!1637153 () Bool)

(assert (=> b!1434204 m!1637153))

(declare-fun m!1637155 () Bool)

(assert (=> b!1434205 m!1637155))

(declare-fun m!1637157 () Bool)

(assert (=> b!1434206 m!1637157))

(assert (=> start!132840 d!412789))

(declare-fun d!412791 () Bool)

(declare-fun c!235676 () Bool)

(assert (=> d!412791 (= c!235676 ((_ is Cons!14930) lt!489186))))

(declare-fun e!915552 () List!14994)

(assert (=> d!412791 (= (printList!707 Lexer!2283 lt!489186) e!915552)))

(declare-fun b!1434211 () Bool)

(assert (=> b!1434211 (= e!915552 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (printList!707 Lexer!2283 (t!127239 lt!489186))))))

(declare-fun b!1434212 () Bool)

(assert (=> b!1434212 (= e!915552 Nil!14928)))

(assert (= (and d!412791 c!235676) b!1434211))

(assert (= (and d!412791 (not c!235676)) b!1434212))

(assert (=> b!1434211 m!1637049))

(assert (=> b!1434211 m!1637049))

(assert (=> b!1434211 m!1637051))

(assert (=> b!1434211 m!1637053))

(assert (=> b!1434211 m!1637051))

(assert (=> b!1434211 m!1637053))

(assert (=> b!1434211 m!1637055))

(assert (=> b!1434145 d!412791))

(declare-fun d!412793 () Bool)

(declare-fun lt!489235 () BalanceConc!10084)

(declare-fun printListTailRec!281 (LexerInterface!2285 List!14996 List!14994) List!14994)

(declare-fun dropList!462 (BalanceConc!10086 Int) List!14996)

(assert (=> d!412793 (= (list!5931 lt!489235) (printListTailRec!281 Lexer!2283 (dropList!462 (tokens!1984 other!32) 0) (list!5931 (BalanceConc!10085 Empty!5072))))))

(declare-fun e!915568 () BalanceConc!10084)

(assert (=> d!412793 (= lt!489235 e!915568)))

(declare-fun c!235682 () Bool)

(declare-fun size!12238 (BalanceConc!10086) Int)

(assert (=> d!412793 (= c!235682 (>= 0 (size!12238 (tokens!1984 other!32))))))

(declare-fun e!915567 () Bool)

(assert (=> d!412793 e!915567))

(declare-fun res!649505 () Bool)

(assert (=> d!412793 (=> (not res!649505) (not e!915567))))

(assert (=> d!412793 (= res!649505 (>= 0 0))))

(assert (=> d!412793 (= (printTailRec!679 Lexer!2283 (tokens!1984 other!32) 0 (BalanceConc!10085 Empty!5072)) lt!489235)))

(declare-fun b!1434236 () Bool)

(assert (=> b!1434236 (= e!915567 (<= 0 (size!12238 (tokens!1984 other!32))))))

(declare-fun b!1434237 () Bool)

(assert (=> b!1434237 (= e!915568 (BalanceConc!10085 Empty!5072))))

(declare-fun b!1434238 () Bool)

(declare-fun ++!4004 (BalanceConc!10084 BalanceConc!10084) BalanceConc!10084)

(declare-fun apply!3818 (BalanceConc!10086 Int) Token!4908)

(assert (=> b!1434238 (= e!915568 (printTailRec!679 Lexer!2283 (tokens!1984 other!32) (+ 0 1) (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0)))))))

(declare-fun lt!489237 () List!14996)

(assert (=> b!1434238 (= lt!489237 (list!5932 (tokens!1984 other!32)))))

(declare-fun lt!489241 () Unit!22769)

(declare-fun lemmaDropApply!482 (List!14996 Int) Unit!22769)

(assert (=> b!1434238 (= lt!489241 (lemmaDropApply!482 lt!489237 0))))

(declare-fun head!2907 (List!14996) Token!4908)

(declare-fun drop!730 (List!14996 Int) List!14996)

(declare-fun apply!3819 (List!14996 Int) Token!4908)

(assert (=> b!1434238 (= (head!2907 (drop!730 lt!489237 0)) (apply!3819 lt!489237 0))))

(declare-fun lt!489236 () Unit!22769)

(assert (=> b!1434238 (= lt!489236 lt!489241)))

(declare-fun lt!489240 () List!14996)

(assert (=> b!1434238 (= lt!489240 (list!5932 (tokens!1984 other!32)))))

(declare-fun lt!489239 () Unit!22769)

(declare-fun lemmaDropTail!462 (List!14996 Int) Unit!22769)

(assert (=> b!1434238 (= lt!489239 (lemmaDropTail!462 lt!489240 0))))

(declare-fun tail!2152 (List!14996) List!14996)

(assert (=> b!1434238 (= (tail!2152 (drop!730 lt!489240 0)) (drop!730 lt!489240 (+ 0 1)))))

(declare-fun lt!489238 () Unit!22769)

(assert (=> b!1434238 (= lt!489238 lt!489239)))

(assert (= (and d!412793 res!649505) b!1434236))

(assert (= (and d!412793 c!235682) b!1434237))

(assert (= (and d!412793 (not c!235682)) b!1434238))

(declare-fun m!1637163 () Bool)

(assert (=> d!412793 m!1637163))

(declare-fun m!1637167 () Bool)

(assert (=> d!412793 m!1637167))

(assert (=> d!412793 m!1637167))

(declare-fun m!1637173 () Bool)

(assert (=> d!412793 m!1637173))

(declare-fun m!1637175 () Bool)

(assert (=> d!412793 m!1637175))

(declare-fun m!1637179 () Bool)

(assert (=> d!412793 m!1637179))

(assert (=> d!412793 m!1637173))

(assert (=> b!1434236 m!1637163))

(declare-fun m!1637185 () Bool)

(assert (=> b!1434238 m!1637185))

(declare-fun m!1637191 () Bool)

(assert (=> b!1434238 m!1637191))

(declare-fun m!1637195 () Bool)

(assert (=> b!1434238 m!1637195))

(declare-fun m!1637197 () Bool)

(assert (=> b!1434238 m!1637197))

(assert (=> b!1434238 m!1637083))

(declare-fun m!1637203 () Bool)

(assert (=> b!1434238 m!1637203))

(declare-fun m!1637205 () Bool)

(assert (=> b!1434238 m!1637205))

(assert (=> b!1434238 m!1637185))

(declare-fun m!1637209 () Bool)

(assert (=> b!1434238 m!1637209))

(assert (=> b!1434238 m!1637195))

(declare-fun m!1637213 () Bool)

(assert (=> b!1434238 m!1637213))

(assert (=> b!1434238 m!1637205))

(assert (=> b!1434238 m!1637191))

(assert (=> b!1434238 m!1637203))

(declare-fun m!1637219 () Bool)

(assert (=> b!1434238 m!1637219))

(declare-fun m!1637221 () Bool)

(assert (=> b!1434238 m!1637221))

(declare-fun m!1637223 () Bool)

(assert (=> b!1434238 m!1637223))

(declare-fun m!1637225 () Bool)

(assert (=> b!1434238 m!1637225))

(assert (=> b!1434140 d!412793))

(declare-fun d!412801 () Bool)

(declare-fun lt!489244 () Bool)

(declare-fun isEmpty!9276 (List!14996) Bool)

(assert (=> d!412801 (= lt!489244 (isEmpty!9276 (list!5932 (tokens!1984 other!32))))))

(declare-fun isEmpty!9277 (Conc!5073) Bool)

(assert (=> d!412801 (= lt!489244 (isEmpty!9277 (c!235662 (tokens!1984 other!32))))))

(assert (=> d!412801 (= (isEmpty!9269 (tokens!1984 other!32)) lt!489244)))

(declare-fun bs!340987 () Bool)

(assert (= bs!340987 d!412801))

(assert (=> bs!340987 m!1637083))

(assert (=> bs!340987 m!1637083))

(declare-fun m!1637227 () Bool)

(assert (=> bs!340987 m!1637227))

(declare-fun m!1637229 () Bool)

(assert (=> bs!340987 m!1637229))

(assert (=> b!1434141 d!412801))

(declare-fun d!412803 () Bool)

(declare-fun e!915571 () Bool)

(assert (=> d!412803 e!915571))

(declare-fun res!649510 () Bool)

(assert (=> d!412803 (=> (not res!649510) (not e!915571))))

(assert (=> d!412803 (= res!649510 (rulesInvariant!2123 Lexer!2283 (rules!11404 thiss!10022)))))

(declare-fun Unit!22787 () Unit!22769)

(assert (=> d!412803 (= (lemmaInvariant!319 thiss!10022) Unit!22787)))

(declare-fun b!1434243 () Bool)

(declare-fun res!649511 () Bool)

(assert (=> b!1434243 (=> (not res!649511) (not e!915571))))

(assert (=> b!1434243 (= res!649511 (rulesProduceEachTokenIndividually!841 Lexer!2283 (rules!11404 thiss!10022) (tokens!1984 thiss!10022)))))

(declare-fun b!1434244 () Bool)

(assert (=> b!1434244 (= e!915571 (separableTokens!225 Lexer!2283 (tokens!1984 thiss!10022) (rules!11404 thiss!10022)))))

(assert (= (and d!412803 res!649510) b!1434243))

(assert (= (and b!1434243 res!649511) b!1434244))

(assert (=> d!412803 m!1637145))

(assert (=> b!1434243 m!1637147))

(assert (=> b!1434244 m!1637149))

(assert (=> b!1434141 d!412803))

(declare-fun d!412805 () Bool)

(declare-fun e!915572 () Bool)

(assert (=> d!412805 e!915572))

(declare-fun res!649512 () Bool)

(assert (=> d!412805 (=> (not res!649512) (not e!915572))))

(assert (=> d!412805 (= res!649512 (rulesInvariant!2123 Lexer!2283 (rules!11404 other!32)))))

(declare-fun Unit!22790 () Unit!22769)

(assert (=> d!412805 (= (lemmaInvariant!319 other!32) Unit!22790)))

(declare-fun b!1434245 () Bool)

(declare-fun res!649513 () Bool)

(assert (=> b!1434245 (=> (not res!649513) (not e!915572))))

(assert (=> b!1434245 (= res!649513 (rulesProduceEachTokenIndividually!841 Lexer!2283 (rules!11404 other!32) (tokens!1984 other!32)))))

(declare-fun b!1434246 () Bool)

(assert (=> b!1434246 (= e!915572 (separableTokens!225 Lexer!2283 (tokens!1984 other!32) (rules!11404 other!32)))))

(assert (= (and d!412805 res!649512) b!1434245))

(assert (= (and b!1434245 res!649513) b!1434246))

(assert (=> d!412805 m!1637153))

(assert (=> b!1434245 m!1637155))

(assert (=> b!1434246 m!1637157))

(assert (=> b!1434141 d!412805))

(declare-fun b!1434258 () Bool)

(declare-fun e!915577 () Bool)

(declare-fun lt!489247 () List!14994)

(assert (=> b!1434258 (= e!915577 (or (not (= (printList!707 Lexer!2283 (t!127239 lt!489186)) Nil!14928)) (= lt!489247 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))))

(declare-fun b!1434257 () Bool)

(declare-fun res!649519 () Bool)

(assert (=> b!1434257 (=> (not res!649519) (not e!915577))))

(declare-fun size!12239 (List!14994) Int)

(assert (=> b!1434257 (= res!649519 (= (size!12239 lt!489247) (+ (size!12239 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) (size!12239 (printList!707 Lexer!2283 (t!127239 lt!489186))))))))

(declare-fun b!1434255 () Bool)

(declare-fun e!915578 () List!14994)

(assert (=> b!1434255 (= e!915578 (printList!707 Lexer!2283 (t!127239 lt!489186)))))

(declare-fun b!1434256 () Bool)

(assert (=> b!1434256 (= e!915578 (Cons!14928 (h!20329 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) (++!4001 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) (printList!707 Lexer!2283 (t!127239 lt!489186)))))))

(declare-fun d!412807 () Bool)

(assert (=> d!412807 e!915577))

(declare-fun res!649518 () Bool)

(assert (=> d!412807 (=> (not res!649518) (not e!915577))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2203 (List!14994) (InoxSet C!8052))

(assert (=> d!412807 (= res!649518 (= (content!2203 lt!489247) ((_ map or) (content!2203 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) (content!2203 (printList!707 Lexer!2283 (t!127239 lt!489186))))))))

(assert (=> d!412807 (= lt!489247 e!915578)))

(declare-fun c!235685 () Bool)

(assert (=> d!412807 (= c!235685 ((_ is Nil!14928) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(assert (=> d!412807 (= (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (printList!707 Lexer!2283 (t!127239 lt!489186))) lt!489247)))

(assert (= (and d!412807 c!235685) b!1434255))

(assert (= (and d!412807 (not c!235685)) b!1434256))

(assert (= (and d!412807 res!649518) b!1434257))

(assert (= (and b!1434257 res!649519) b!1434258))

(declare-fun m!1637231 () Bool)

(assert (=> b!1434257 m!1637231))

(assert (=> b!1434257 m!1637051))

(declare-fun m!1637233 () Bool)

(assert (=> b!1434257 m!1637233))

(assert (=> b!1434257 m!1637053))

(declare-fun m!1637235 () Bool)

(assert (=> b!1434257 m!1637235))

(assert (=> b!1434256 m!1637053))

(declare-fun m!1637237 () Bool)

(assert (=> b!1434256 m!1637237))

(declare-fun m!1637239 () Bool)

(assert (=> d!412807 m!1637239))

(assert (=> d!412807 m!1637051))

(declare-fun m!1637241 () Bool)

(assert (=> d!412807 m!1637241))

(assert (=> d!412807 m!1637053))

(declare-fun m!1637243 () Bool)

(assert (=> d!412807 m!1637243))

(assert (=> b!1434147 d!412807))

(declare-fun d!412809 () Bool)

(declare-fun list!5935 (Conc!5072) List!14994)

(assert (=> d!412809 (= (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5935 (c!235660 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun bs!340988 () Bool)

(assert (= bs!340988 d!412809))

(declare-fun m!1637245 () Bool)

(assert (=> bs!340988 m!1637245))

(assert (=> b!1434147 d!412809))

(declare-fun d!412811 () Bool)

(declare-fun lt!489250 () BalanceConc!10084)

(assert (=> d!412811 (= (list!5931 lt!489250) (originalCharacters!3485 (h!20331 lt!489186)))))

(declare-fun dynLambda!6801 (Int TokenValue!2713) BalanceConc!10084)

(assert (=> d!412811 (= lt!489250 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))))

(assert (=> d!412811 (= (charsOf!1515 (h!20331 lt!489186)) lt!489250)))

(declare-fun b_lambda!44861 () Bool)

(assert (=> (not b_lambda!44861) (not d!412811)))

(declare-fun bs!340989 () Bool)

(assert (= bs!340989 d!412811))

(declare-fun m!1637247 () Bool)

(assert (=> bs!340989 m!1637247))

(declare-fun m!1637249 () Bool)

(assert (=> bs!340989 m!1637249))

(assert (=> b!1434147 d!412811))

(declare-fun d!412813 () Bool)

(declare-fun c!235686 () Bool)

(assert (=> d!412813 (= c!235686 ((_ is Cons!14930) (t!127239 lt!489186)))))

(declare-fun e!915579 () List!14994)

(assert (=> d!412813 (= (printList!707 Lexer!2283 (t!127239 lt!489186)) e!915579)))

(declare-fun b!1434259 () Bool)

(assert (=> b!1434259 (= e!915579 (++!4001 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))) (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186)))))))

(declare-fun b!1434260 () Bool)

(assert (=> b!1434260 (= e!915579 Nil!14928)))

(assert (= (and d!412813 c!235686) b!1434259))

(assert (= (and d!412813 (not c!235686)) b!1434260))

(declare-fun m!1637251 () Bool)

(assert (=> b!1434259 m!1637251))

(assert (=> b!1434259 m!1637251))

(declare-fun m!1637253 () Bool)

(assert (=> b!1434259 m!1637253))

(declare-fun m!1637255 () Bool)

(assert (=> b!1434259 m!1637255))

(assert (=> b!1434259 m!1637253))

(assert (=> b!1434259 m!1637255))

(declare-fun m!1637257 () Bool)

(assert (=> b!1434259 m!1637257))

(assert (=> b!1434147 d!412813))

(declare-fun d!412815 () Bool)

(declare-fun c!235689 () Bool)

(assert (=> d!412815 (= c!235689 ((_ is Node!5073) (c!235662 (tokens!1984 thiss!10022))))))

(declare-fun e!915584 () Bool)

(assert (=> d!412815 (= (inv!19829 (c!235662 (tokens!1984 thiss!10022))) e!915584)))

(declare-fun b!1434267 () Bool)

(declare-fun inv!19833 (Conc!5073) Bool)

(assert (=> b!1434267 (= e!915584 (inv!19833 (c!235662 (tokens!1984 thiss!10022))))))

(declare-fun b!1434268 () Bool)

(declare-fun e!915585 () Bool)

(assert (=> b!1434268 (= e!915584 e!915585)))

(declare-fun res!649522 () Bool)

(assert (=> b!1434268 (= res!649522 (not ((_ is Leaf!7586) (c!235662 (tokens!1984 thiss!10022)))))))

(assert (=> b!1434268 (=> res!649522 e!915585)))

(declare-fun b!1434269 () Bool)

(declare-fun inv!19834 (Conc!5073) Bool)

(assert (=> b!1434269 (= e!915585 (inv!19834 (c!235662 (tokens!1984 thiss!10022))))))

(assert (= (and d!412815 c!235689) b!1434267))

(assert (= (and d!412815 (not c!235689)) b!1434268))

(assert (= (and b!1434268 (not res!649522)) b!1434269))

(declare-fun m!1637259 () Bool)

(assert (=> b!1434267 m!1637259))

(declare-fun m!1637261 () Bool)

(assert (=> b!1434269 m!1637261))

(assert (=> b!1434148 d!412815))

(declare-fun d!412817 () Bool)

(declare-fun isBalanced!1503 (Conc!5073) Bool)

(assert (=> d!412817 (= (inv!19828 (tokens!1984 thiss!10022)) (isBalanced!1503 (c!235662 (tokens!1984 thiss!10022))))))

(declare-fun bs!340990 () Bool)

(assert (= bs!340990 d!412817))

(declare-fun m!1637263 () Bool)

(assert (=> bs!340990 m!1637263))

(assert (=> b!1434143 d!412817))

(declare-fun d!412819 () Bool)

(assert (=> d!412819 (= (inv!19828 (tokens!1984 other!32)) (isBalanced!1503 (c!235662 (tokens!1984 other!32))))))

(declare-fun bs!340991 () Bool)

(assert (= bs!340991 d!412819))

(declare-fun m!1637265 () Bool)

(assert (=> bs!340991 m!1637265))

(assert (=> b!1434149 d!412819))

(declare-fun d!412821 () Bool)

(declare-fun c!235690 () Bool)

(assert (=> d!412821 (= c!235690 ((_ is Node!5073) (c!235662 (tokens!1984 other!32))))))

(declare-fun e!915586 () Bool)

(assert (=> d!412821 (= (inv!19829 (c!235662 (tokens!1984 other!32))) e!915586)))

(declare-fun b!1434270 () Bool)

(assert (=> b!1434270 (= e!915586 (inv!19833 (c!235662 (tokens!1984 other!32))))))

(declare-fun b!1434271 () Bool)

(declare-fun e!915587 () Bool)

(assert (=> b!1434271 (= e!915586 e!915587)))

(declare-fun res!649523 () Bool)

(assert (=> b!1434271 (= res!649523 (not ((_ is Leaf!7586) (c!235662 (tokens!1984 other!32)))))))

(assert (=> b!1434271 (=> res!649523 e!915587)))

(declare-fun b!1434272 () Bool)

(assert (=> b!1434272 (= e!915587 (inv!19834 (c!235662 (tokens!1984 other!32))))))

(assert (= (and d!412821 c!235690) b!1434270))

(assert (= (and d!412821 (not c!235690)) b!1434271))

(assert (= (and b!1434271 (not res!649523)) b!1434272))

(declare-fun m!1637267 () Bool)

(assert (=> b!1434270 m!1637267))

(declare-fun m!1637269 () Bool)

(assert (=> b!1434272 m!1637269))

(assert (=> b!1434144 d!412821))

(declare-fun d!412823 () Bool)

(declare-fun e!915599 () Bool)

(assert (=> d!412823 e!915599))

(declare-fun res!649529 () Bool)

(assert (=> d!412823 (=> (not res!649529) (not e!915599))))

(declare-datatypes ((tuple2!14120 0))(
  ( (tuple2!14121 (_1!7946 BalanceConc!10086) (_2!7946 BalanceConc!10084)) )
))
(declare-fun lex!1044 (LexerInterface!2285 List!14997 BalanceConc!10084) tuple2!14120)

(declare-fun seqFromList!1696 (List!14996) BalanceConc!10086)

(assert (=> d!412823 (= res!649529 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186))))) lt!489186))))

(declare-fun lt!489387 () Unit!22769)

(declare-fun e!915600 () Unit!22769)

(assert (=> d!412823 (= lt!489387 e!915600)))

(declare-fun c!235697 () Bool)

(assert (=> d!412823 (= c!235697 (or ((_ is Nil!14930) lt!489186) ((_ is Nil!14930) (t!127239 lt!489186))))))

(assert (=> d!412823 (not (isEmpty!9275 (rules!11404 other!32)))))

(assert (=> d!412823 (= (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) lt!489186) lt!489387)))

(declare-fun b!1434290 () Bool)

(declare-fun Unit!22803 () Unit!22769)

(assert (=> b!1434290 (= e!915600 Unit!22803)))

(declare-fun b!1434291 () Bool)

(declare-fun Unit!22804 () Unit!22769)

(assert (=> b!1434291 (= e!915600 Unit!22804)))

(declare-fun lt!489384 () BalanceConc!10084)

(assert (=> b!1434291 (= lt!489384 (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)))))

(declare-fun lt!489398 () BalanceConc!10084)

(assert (=> b!1434291 (= lt!489398 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489186))))))

(declare-fun lt!489404 () tuple2!14120)

(assert (=> b!1434291 (= lt!489404 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489398))))

(declare-fun lt!489386 () List!14994)

(assert (=> b!1434291 (= lt!489386 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun lt!489393 () List!14994)

(assert (=> b!1434291 (= lt!489393 (list!5931 lt!489398))))

(declare-fun lt!489396 () Unit!22769)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!758 (List!14994 List!14994) Unit!22769)

(assert (=> b!1434291 (= lt!489396 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!489386 lt!489393))))

(declare-fun isPrefix!1193 (List!14994 List!14994) Bool)

(assert (=> b!1434291 (isPrefix!1193 lt!489386 (++!4001 lt!489386 lt!489393))))

(declare-fun lt!489385 () Unit!22769)

(assert (=> b!1434291 (= lt!489385 lt!489396)))

(declare-fun lt!489403 () Unit!22769)

(assert (=> b!1434291 (= lt!489403 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) (t!127239 lt!489186)))))

(declare-fun lt!489389 () Unit!22769)

(declare-fun seqFromListBHdTlConstructive!87 (Token!4908 List!14996 BalanceConc!10086) Unit!22769)

(assert (=> b!1434291 (= lt!489389 (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 lt!489186)) (t!127239 (t!127239 lt!489186)) (_1!7946 lt!489404)))))

(declare-fun prepend!407 (BalanceConc!10086 Token!4908) BalanceConc!10086)

(assert (=> b!1434291 (= (list!5932 (_1!7946 lt!489404)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489186))) (h!20331 (t!127239 lt!489186)))))))

(declare-fun lt!489382 () Unit!22769)

(assert (=> b!1434291 (= lt!489382 lt!489389)))

(declare-datatypes ((tuple2!14122 0))(
  ( (tuple2!14123 (_1!7947 Token!4908) (_2!7947 List!14994)) )
))
(declare-datatypes ((Option!2849 0))(
  ( (None!2848) (Some!2848 (v!22358 tuple2!14122)) )
))
(declare-fun lt!489405 () Option!2849)

(declare-fun maxPrefix!1183 (LexerInterface!2285 List!14997 List!14994) Option!2849)

(assert (=> b!1434291 (= lt!489405 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 lt!489384)))))

(declare-fun singletonSeq!1226 (Token!4908) BalanceConc!10086)

(assert (=> b!1434291 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489186))) (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489186)) 0 (BalanceConc!10085 Empty!5072)))))

(declare-fun lt!489390 () Unit!22769)

(declare-fun Unit!22805 () Unit!22769)

(assert (=> b!1434291 (= lt!489390 Unit!22805)))

(declare-fun lt!489397 () Unit!22769)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 (LexerInterface!2285 List!14997 List!14994 List!14994) Unit!22769)

(assert (=> b!1434291 (= lt!489397 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)))))

(assert (=> b!1434291 (= (list!5931 (charsOf!1515 (h!20331 lt!489186))) (originalCharacters!3485 (h!20331 lt!489186)))))

(declare-fun lt!489392 () Unit!22769)

(declare-fun Unit!22806 () Unit!22769)

(assert (=> b!1434291 (= lt!489392 Unit!22806)))

(declare-fun singletonSeq!1227 (C!8052) BalanceConc!10084)

(declare-fun apply!3820 (BalanceConc!10084 Int) C!8052)

(declare-fun head!2908 (List!14994) C!8052)

(assert (=> b!1434291 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0))) (Cons!14928 (head!2908 (originalCharacters!3485 (h!20331 (t!127239 lt!489186)))) Nil!14928))))

(declare-fun lt!489399 () Unit!22769)

(declare-fun Unit!22807 () Unit!22769)

(assert (=> b!1434291 (= lt!489399 Unit!22807)))

(assert (=> b!1434291 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0))) (Cons!14928 (head!2908 (list!5931 lt!489398)) Nil!14928))))

(declare-fun lt!489406 () Unit!22769)

(declare-fun Unit!22808 () Unit!22769)

(assert (=> b!1434291 (= lt!489406 Unit!22808)))

(declare-fun head!2909 (BalanceConc!10084) C!8052)

(assert (=> b!1434291 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0))) (Cons!14928 (head!2909 lt!489398) Nil!14928))))

(declare-fun lt!489394 () Unit!22769)

(declare-fun Unit!22809 () Unit!22769)

(assert (=> b!1434291 (= lt!489394 Unit!22809)))

(declare-fun isDefined!2306 (Option!2849) Bool)

(assert (=> b!1434291 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (originalCharacters!3485 (h!20331 lt!489186))))))

(declare-fun lt!489383 () Unit!22769)

(declare-fun Unit!22810 () Unit!22769)

(assert (=> b!1434291 (= lt!489383 Unit!22810)))

(assert (=> b!1434291 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun lt!489381 () Unit!22769)

(declare-fun Unit!22811 () Unit!22769)

(assert (=> b!1434291 (= lt!489381 Unit!22811)))

(declare-fun lt!489388 () Unit!22769)

(declare-fun Unit!22812 () Unit!22769)

(assert (=> b!1434291 (= lt!489388 Unit!22812)))

(declare-fun get!4569 (Option!2849) tuple2!14122)

(assert (=> b!1434291 (= (_1!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))) (h!20331 lt!489186))))

(declare-fun lt!489395 () Unit!22769)

(declare-fun Unit!22813 () Unit!22769)

(assert (=> b!1434291 (= lt!489395 Unit!22813)))

(declare-fun isEmpty!9278 (List!14994) Bool)

(assert (=> b!1434291 (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))

(declare-fun lt!489401 () Unit!22769)

(declare-fun Unit!22814 () Unit!22769)

(assert (=> b!1434291 (= lt!489401 Unit!22814)))

(declare-fun matchR!1819 (Regex!3937 List!14994) Bool)

(assert (=> b!1434291 (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489186))) (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun lt!489391 () Unit!22769)

(declare-fun Unit!22815 () Unit!22769)

(assert (=> b!1434291 (= lt!489391 Unit!22815)))

(assert (=> b!1434291 (= (rule!4386 (h!20331 lt!489186)) (rule!4386 (h!20331 lt!489186)))))

(declare-fun lt!489400 () Unit!22769)

(declare-fun Unit!22816 () Unit!22769)

(assert (=> b!1434291 (= lt!489400 Unit!22816)))

(declare-fun lt!489402 () Unit!22769)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 (LexerInterface!2285 List!14997 Token!4908 Rule!5046 List!14994) Unit!22769)

(assert (=> b!1434291 (= lt!489402 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 other!32) (h!20331 lt!489186) (rule!4386 (h!20331 lt!489186)) (list!5931 lt!489398)))))

(declare-fun b!1434292 () Bool)

(declare-fun isEmpty!9279 (BalanceConc!10084) Bool)

(assert (=> b!1434292 (= e!915599 (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186))))))))

(assert (= (and d!412823 c!235697) b!1434290))

(assert (= (and d!412823 (not c!235697)) b!1434291))

(assert (= (and d!412823 res!649529) b!1434292))

(declare-fun m!1637357 () Bool)

(assert (=> d!412823 m!1637357))

(assert (=> d!412823 m!1637151))

(declare-fun m!1637359 () Bool)

(assert (=> d!412823 m!1637359))

(declare-fun m!1637361 () Bool)

(assert (=> d!412823 m!1637361))

(assert (=> d!412823 m!1637359))

(assert (=> d!412823 m!1637361))

(declare-fun m!1637363 () Bool)

(assert (=> d!412823 m!1637363))

(declare-fun m!1637365 () Bool)

(assert (=> b!1434291 m!1637365))

(declare-fun m!1637367 () Bool)

(assert (=> b!1434291 m!1637367))

(declare-fun m!1637369 () Bool)

(assert (=> b!1434291 m!1637369))

(declare-fun m!1637371 () Bool)

(assert (=> b!1434291 m!1637371))

(declare-fun m!1637373 () Bool)

(assert (=> b!1434291 m!1637373))

(declare-fun m!1637375 () Bool)

(assert (=> b!1434291 m!1637375))

(assert (=> b!1434291 m!1637371))

(declare-fun m!1637377 () Bool)

(assert (=> b!1434291 m!1637377))

(declare-fun m!1637379 () Bool)

(assert (=> b!1434291 m!1637379))

(declare-fun m!1637381 () Bool)

(assert (=> b!1434291 m!1637381))

(declare-fun m!1637383 () Bool)

(assert (=> b!1434291 m!1637383))

(declare-fun m!1637385 () Bool)

(assert (=> b!1434291 m!1637385))

(declare-fun m!1637387 () Bool)

(assert (=> b!1434291 m!1637387))

(declare-fun m!1637389 () Bool)

(assert (=> b!1434291 m!1637389))

(declare-fun m!1637391 () Bool)

(assert (=> b!1434291 m!1637391))

(declare-fun m!1637393 () Bool)

(assert (=> b!1434291 m!1637393))

(declare-fun m!1637395 () Bool)

(assert (=> b!1434291 m!1637395))

(assert (=> b!1434291 m!1637051))

(declare-fun m!1637397 () Bool)

(assert (=> b!1434291 m!1637397))

(declare-fun m!1637399 () Bool)

(assert (=> b!1434291 m!1637399))

(assert (=> b!1434291 m!1637397))

(declare-fun m!1637401 () Bool)

(assert (=> b!1434291 m!1637401))

(assert (=> b!1434291 m!1637379))

(assert (=> b!1434291 m!1637375))

(declare-fun m!1637403 () Bool)

(assert (=> b!1434291 m!1637403))

(declare-fun m!1637405 () Bool)

(assert (=> b!1434291 m!1637405))

(declare-fun m!1637407 () Bool)

(assert (=> b!1434291 m!1637407))

(declare-fun m!1637409 () Bool)

(assert (=> b!1434291 m!1637409))

(declare-fun m!1637411 () Bool)

(assert (=> b!1434291 m!1637411))

(declare-fun m!1637413 () Bool)

(assert (=> b!1434291 m!1637413))

(assert (=> b!1434291 m!1637397))

(assert (=> b!1434291 m!1637397))

(declare-fun m!1637415 () Bool)

(assert (=> b!1434291 m!1637415))

(assert (=> b!1434291 m!1637359))

(assert (=> b!1434291 m!1637361))

(assert (=> b!1434291 m!1637051))

(declare-fun m!1637417 () Bool)

(assert (=> b!1434291 m!1637417))

(assert (=> b!1434291 m!1637393))

(declare-fun m!1637419 () Bool)

(assert (=> b!1434291 m!1637419))

(assert (=> b!1434291 m!1637385))

(assert (=> b!1434291 m!1637251))

(declare-fun m!1637421 () Bool)

(assert (=> b!1434291 m!1637421))

(assert (=> b!1434291 m!1637359))

(declare-fun m!1637423 () Bool)

(assert (=> b!1434291 m!1637423))

(assert (=> b!1434291 m!1637251))

(assert (=> b!1434291 m!1637409))

(assert (=> b!1434291 m!1637049))

(declare-fun m!1637425 () Bool)

(assert (=> b!1434291 m!1637425))

(assert (=> b!1434291 m!1637051))

(assert (=> b!1434291 m!1637371))

(assert (=> b!1434291 m!1637367))

(assert (=> b!1434291 m!1637411))

(declare-fun m!1637427 () Bool)

(assert (=> b!1434291 m!1637427))

(assert (=> b!1434291 m!1637393))

(assert (=> b!1434291 m!1637049))

(assert (=> b!1434291 m!1637051))

(declare-fun m!1637429 () Bool)

(assert (=> b!1434291 m!1637429))

(assert (=> b!1434291 m!1637407))

(assert (=> b!1434291 m!1637389))

(assert (=> b!1434292 m!1637359))

(assert (=> b!1434292 m!1637359))

(assert (=> b!1434292 m!1637361))

(assert (=> b!1434292 m!1637361))

(assert (=> b!1434292 m!1637363))

(declare-fun m!1637431 () Bool)

(assert (=> b!1434292 m!1637431))

(assert (=> b!1434150 d!412823))

(declare-fun d!412831 () Bool)

(declare-fun c!235698 () Bool)

(assert (=> d!412831 (= c!235698 ((_ is Cons!14930) lt!489190))))

(declare-fun e!915601 () List!14994)

(assert (=> d!412831 (= (printList!707 Lexer!2283 lt!489190) e!915601)))

(declare-fun b!1434293 () Bool)

(assert (=> b!1434293 (= e!915601 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (printList!707 Lexer!2283 (t!127239 lt!489190))))))

(declare-fun b!1434294 () Bool)

(assert (=> b!1434294 (= e!915601 Nil!14928)))

(assert (= (and d!412831 c!235698) b!1434293))

(assert (= (and d!412831 (not c!235698)) b!1434294))

(declare-fun m!1637433 () Bool)

(assert (=> b!1434293 m!1637433))

(assert (=> b!1434293 m!1637433))

(declare-fun m!1637435 () Bool)

(assert (=> b!1434293 m!1637435))

(declare-fun m!1637437 () Bool)

(assert (=> b!1434293 m!1637437))

(assert (=> b!1434293 m!1637435))

(assert (=> b!1434293 m!1637437))

(declare-fun m!1637439 () Bool)

(assert (=> b!1434293 m!1637439))

(assert (=> b!1434150 d!412831))

(declare-fun d!412833 () Bool)

(declare-fun list!5936 (Conc!5073) List!14996)

(assert (=> d!412833 (= (list!5932 (tokens!1984 other!32)) (list!5936 (c!235662 (tokens!1984 other!32))))))

(declare-fun bs!340993 () Bool)

(assert (= bs!340993 d!412833))

(declare-fun m!1637441 () Bool)

(assert (=> bs!340993 m!1637441))

(assert (=> b!1434150 d!412833))

(declare-fun d!412835 () Bool)

(assert (=> d!412835 (= (printList!707 Lexer!2283 (++!4002 lt!489190 Nil!14930)) (++!4001 (printList!707 Lexer!2283 lt!489190) (printList!707 Lexer!2283 Nil!14930)))))

(declare-fun lt!489409 () Unit!22769)

(declare-fun choose!8839 (LexerInterface!2285 List!14996 List!14996) Unit!22769)

(assert (=> d!412835 (= lt!489409 (choose!8839 Lexer!2283 lt!489190 Nil!14930))))

(assert (=> d!412835 (= (lemmaPrintConcatSameAsConcatPrint!68 Lexer!2283 lt!489190 Nil!14930) lt!489409)))

(declare-fun bs!340994 () Bool)

(assert (= bs!340994 d!412835))

(declare-fun m!1637443 () Bool)

(assert (=> bs!340994 m!1637443))

(assert (=> bs!340994 m!1637079))

(declare-fun m!1637445 () Bool)

(assert (=> bs!340994 m!1637445))

(assert (=> bs!340994 m!1637073))

(assert (=> bs!340994 m!1637057))

(declare-fun m!1637447 () Bool)

(assert (=> bs!340994 m!1637447))

(assert (=> bs!340994 m!1637079))

(assert (=> bs!340994 m!1637057))

(assert (=> bs!340994 m!1637073))

(assert (=> b!1434150 d!412835))

(declare-fun d!412837 () Bool)

(declare-fun e!915647 () Bool)

(assert (=> d!412837 e!915647))

(declare-fun res!649545 () Bool)

(assert (=> d!412837 (=> (not res!649545) (not e!915647))))

(declare-fun lt!489459 () BalanceConc!10084)

(assert (=> d!412837 (= res!649545 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459))) (list!5932 (tokens!1984 other!32))))))

(assert (=> d!412837 (= lt!489459 (print!1064 Lexer!2283 (tokens!1984 other!32)))))

(declare-fun lt!489460 () Unit!22769)

(assert (=> d!412837 (= lt!489460 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) (list!5932 (tokens!1984 other!32))))))

(assert (=> d!412837 (= (print!1065 other!32) lt!489459)))

(declare-fun b!1434357 () Bool)

(assert (=> b!1434357 (= e!915647 (isEmpty!9278 (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459)))))))

(assert (= (and d!412837 res!649545) b!1434357))

(assert (=> d!412837 m!1637081))

(declare-fun m!1637635 () Bool)

(assert (=> d!412837 m!1637635))

(assert (=> d!412837 m!1637083))

(declare-fun m!1637637 () Bool)

(assert (=> d!412837 m!1637637))

(assert (=> d!412837 m!1637083))

(declare-fun m!1637639 () Bool)

(assert (=> d!412837 m!1637639))

(assert (=> b!1434357 m!1637639))

(declare-fun m!1637641 () Bool)

(assert (=> b!1434357 m!1637641))

(assert (=> b!1434357 m!1637641))

(declare-fun m!1637643 () Bool)

(assert (=> b!1434357 m!1637643))

(assert (=> b!1434150 d!412837))

(declare-fun d!412861 () Bool)

(assert (=> d!412861 (= (list!5932 (tokens!1984 thiss!10022)) (list!5936 (c!235662 (tokens!1984 thiss!10022))))))

(declare-fun bs!341000 () Bool)

(assert (= bs!341000 d!412861))

(declare-fun m!1637645 () Bool)

(assert (=> bs!341000 m!1637645))

(assert (=> b!1434150 d!412861))

(declare-fun lt!489461 () List!14994)

(declare-fun e!915648 () Bool)

(declare-fun b!1434361 () Bool)

(assert (=> b!1434361 (= e!915648 (or (not (= lt!489182 Nil!14928)) (= lt!489461 lt!489183)))))

(declare-fun b!1434360 () Bool)

(declare-fun res!649547 () Bool)

(assert (=> b!1434360 (=> (not res!649547) (not e!915648))))

(assert (=> b!1434360 (= res!649547 (= (size!12239 lt!489461) (+ (size!12239 lt!489183) (size!12239 lt!489182))))))

(declare-fun b!1434358 () Bool)

(declare-fun e!915649 () List!14994)

(assert (=> b!1434358 (= e!915649 lt!489182)))

(declare-fun b!1434359 () Bool)

(assert (=> b!1434359 (= e!915649 (Cons!14928 (h!20329 lt!489183) (++!4001 (t!127237 lt!489183) lt!489182)))))

(declare-fun d!412863 () Bool)

(assert (=> d!412863 e!915648))

(declare-fun res!649546 () Bool)

(assert (=> d!412863 (=> (not res!649546) (not e!915648))))

(assert (=> d!412863 (= res!649546 (= (content!2203 lt!489461) ((_ map or) (content!2203 lt!489183) (content!2203 lt!489182))))))

(assert (=> d!412863 (= lt!489461 e!915649)))

(declare-fun c!235706 () Bool)

(assert (=> d!412863 (= c!235706 ((_ is Nil!14928) lt!489183))))

(assert (=> d!412863 (= (++!4001 lt!489183 lt!489182) lt!489461)))

(assert (= (and d!412863 c!235706) b!1434358))

(assert (= (and d!412863 (not c!235706)) b!1434359))

(assert (= (and d!412863 res!649546) b!1434360))

(assert (= (and b!1434360 res!649547) b!1434361))

(declare-fun m!1637647 () Bool)

(assert (=> b!1434360 m!1637647))

(declare-fun m!1637649 () Bool)

(assert (=> b!1434360 m!1637649))

(declare-fun m!1637651 () Bool)

(assert (=> b!1434360 m!1637651))

(declare-fun m!1637653 () Bool)

(assert (=> b!1434359 m!1637653))

(declare-fun m!1637655 () Bool)

(assert (=> d!412863 m!1637655))

(declare-fun m!1637657 () Bool)

(assert (=> d!412863 m!1637657))

(declare-fun m!1637659 () Bool)

(assert (=> d!412863 m!1637659))

(assert (=> b!1434150 d!412863))

(declare-fun d!412865 () Bool)

(declare-fun c!235707 () Bool)

(assert (=> d!412865 (= c!235707 ((_ is Cons!14930) lt!489185))))

(declare-fun e!915650 () List!14994)

(assert (=> d!412865 (= (printList!707 Lexer!2283 lt!489185) e!915650)))

(declare-fun b!1434362 () Bool)

(assert (=> b!1434362 (= e!915650 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489185))) (printList!707 Lexer!2283 (t!127239 lt!489185))))))

(declare-fun b!1434363 () Bool)

(assert (=> b!1434363 (= e!915650 Nil!14928)))

(assert (= (and d!412865 c!235707) b!1434362))

(assert (= (and d!412865 (not c!235707)) b!1434363))

(declare-fun m!1637661 () Bool)

(assert (=> b!1434362 m!1637661))

(assert (=> b!1434362 m!1637661))

(declare-fun m!1637663 () Bool)

(assert (=> b!1434362 m!1637663))

(declare-fun m!1637665 () Bool)

(assert (=> b!1434362 m!1637665))

(assert (=> b!1434362 m!1637663))

(assert (=> b!1434362 m!1637665))

(declare-fun m!1637667 () Bool)

(assert (=> b!1434362 m!1637667))

(assert (=> b!1434150 d!412865))

(declare-fun d!412867 () Bool)

(declare-fun lt!489464 () BalanceConc!10084)

(assert (=> d!412867 (= (list!5931 lt!489464) (printList!707 Lexer!2283 (list!5932 (tokens!1984 other!32))))))

(assert (=> d!412867 (= lt!489464 (printTailRec!679 Lexer!2283 (tokens!1984 other!32) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!412867 (= (print!1064 Lexer!2283 (tokens!1984 other!32)) lt!489464)))

(declare-fun bs!341001 () Bool)

(assert (= bs!341001 d!412867))

(declare-fun m!1637669 () Bool)

(assert (=> bs!341001 m!1637669))

(assert (=> bs!341001 m!1637083))

(assert (=> bs!341001 m!1637083))

(declare-fun m!1637671 () Bool)

(assert (=> bs!341001 m!1637671))

(assert (=> bs!341001 m!1637043))

(assert (=> b!1434150 d!412867))

(declare-fun d!412869 () Bool)

(declare-fun e!915651 () Bool)

(assert (=> d!412869 e!915651))

(declare-fun res!649548 () Bool)

(assert (=> d!412869 (=> (not res!649548) (not e!915651))))

(assert (=> d!412869 (= res!649548 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190))))) lt!489190))))

(declare-fun lt!489471 () Unit!22769)

(declare-fun e!915652 () Unit!22769)

(assert (=> d!412869 (= lt!489471 e!915652)))

(declare-fun c!235708 () Bool)

(assert (=> d!412869 (= c!235708 (or ((_ is Nil!14930) lt!489190) ((_ is Nil!14930) (t!127239 lt!489190))))))

(assert (=> d!412869 (not (isEmpty!9275 (rules!11404 thiss!10022)))))

(assert (=> d!412869 (= (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) lt!489190) lt!489471)))

(declare-fun b!1434364 () Bool)

(declare-fun Unit!22817 () Unit!22769)

(assert (=> b!1434364 (= e!915652 Unit!22817)))

(declare-fun b!1434365 () Bool)

(declare-fun Unit!22818 () Unit!22769)

(assert (=> b!1434365 (= e!915652 Unit!22818)))

(declare-fun lt!489468 () BalanceConc!10084)

(assert (=> b!1434365 (= lt!489468 (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)))))

(declare-fun lt!489482 () BalanceConc!10084)

(assert (=> b!1434365 (= lt!489482 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489190))))))

(declare-fun lt!489488 () tuple2!14120)

(assert (=> b!1434365 (= lt!489488 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489482))))

(declare-fun lt!489470 () List!14994)

(assert (=> b!1434365 (= lt!489470 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(declare-fun lt!489477 () List!14994)

(assert (=> b!1434365 (= lt!489477 (list!5931 lt!489482))))

(declare-fun lt!489480 () Unit!22769)

(assert (=> b!1434365 (= lt!489480 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!489470 lt!489477))))

(assert (=> b!1434365 (isPrefix!1193 lt!489470 (++!4001 lt!489470 lt!489477))))

(declare-fun lt!489469 () Unit!22769)

(assert (=> b!1434365 (= lt!489469 lt!489480)))

(declare-fun lt!489487 () Unit!22769)

(assert (=> b!1434365 (= lt!489487 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) (t!127239 lt!489190)))))

(declare-fun lt!489473 () Unit!22769)

(assert (=> b!1434365 (= lt!489473 (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 lt!489190)) (t!127239 (t!127239 lt!489190)) (_1!7946 lt!489488)))))

(assert (=> b!1434365 (= (list!5932 (_1!7946 lt!489488)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489190))) (h!20331 (t!127239 lt!489190)))))))

(declare-fun lt!489466 () Unit!22769)

(assert (=> b!1434365 (= lt!489466 lt!489473)))

(declare-fun lt!489489 () Option!2849)

(assert (=> b!1434365 (= lt!489489 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!489468)))))

(assert (=> b!1434365 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489190))) (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489190)) 0 (BalanceConc!10085 Empty!5072)))))

(declare-fun lt!489474 () Unit!22769)

(declare-fun Unit!22819 () Unit!22769)

(assert (=> b!1434365 (= lt!489474 Unit!22819)))

(declare-fun lt!489481 () Unit!22769)

(assert (=> b!1434365 (= lt!489481 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)))))

(assert (=> b!1434365 (= (list!5931 (charsOf!1515 (h!20331 lt!489190))) (originalCharacters!3485 (h!20331 lt!489190)))))

(declare-fun lt!489476 () Unit!22769)

(declare-fun Unit!22820 () Unit!22769)

(assert (=> b!1434365 (= lt!489476 Unit!22820)))

(assert (=> b!1434365 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0))) (Cons!14928 (head!2908 (originalCharacters!3485 (h!20331 (t!127239 lt!489190)))) Nil!14928))))

(declare-fun lt!489483 () Unit!22769)

(declare-fun Unit!22821 () Unit!22769)

(assert (=> b!1434365 (= lt!489483 Unit!22821)))

(assert (=> b!1434365 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0))) (Cons!14928 (head!2908 (list!5931 lt!489482)) Nil!14928))))

(declare-fun lt!489490 () Unit!22769)

(declare-fun Unit!22822 () Unit!22769)

(assert (=> b!1434365 (= lt!489490 Unit!22822)))

(assert (=> b!1434365 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0))) (Cons!14928 (head!2909 lt!489482) Nil!14928))))

(declare-fun lt!489478 () Unit!22769)

(declare-fun Unit!22823 () Unit!22769)

(assert (=> b!1434365 (= lt!489478 Unit!22823)))

(assert (=> b!1434365 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (originalCharacters!3485 (h!20331 lt!489190))))))

(declare-fun lt!489467 () Unit!22769)

(declare-fun Unit!22824 () Unit!22769)

(assert (=> b!1434365 (= lt!489467 Unit!22824)))

(assert (=> b!1434365 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun lt!489465 () Unit!22769)

(declare-fun Unit!22825 () Unit!22769)

(assert (=> b!1434365 (= lt!489465 Unit!22825)))

(declare-fun lt!489472 () Unit!22769)

(declare-fun Unit!22826 () Unit!22769)

(assert (=> b!1434365 (= lt!489472 Unit!22826)))

(assert (=> b!1434365 (= (_1!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))) (h!20331 lt!489190))))

(declare-fun lt!489479 () Unit!22769)

(declare-fun Unit!22827 () Unit!22769)

(assert (=> b!1434365 (= lt!489479 Unit!22827)))

(assert (=> b!1434365 (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))))

(declare-fun lt!489485 () Unit!22769)

(declare-fun Unit!22828 () Unit!22769)

(assert (=> b!1434365 (= lt!489485 Unit!22828)))

(assert (=> b!1434365 (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489190))) (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(declare-fun lt!489475 () Unit!22769)

(declare-fun Unit!22829 () Unit!22769)

(assert (=> b!1434365 (= lt!489475 Unit!22829)))

(assert (=> b!1434365 (= (rule!4386 (h!20331 lt!489190)) (rule!4386 (h!20331 lt!489190)))))

(declare-fun lt!489484 () Unit!22769)

(declare-fun Unit!22830 () Unit!22769)

(assert (=> b!1434365 (= lt!489484 Unit!22830)))

(declare-fun lt!489486 () Unit!22769)

(assert (=> b!1434365 (= lt!489486 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 thiss!10022) (h!20331 lt!489190) (rule!4386 (h!20331 lt!489190)) (list!5931 lt!489482)))))

(declare-fun b!1434366 () Bool)

(assert (=> b!1434366 (= e!915651 (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190))))))))

(assert (= (and d!412869 c!235708) b!1434364))

(assert (= (and d!412869 (not c!235708)) b!1434365))

(assert (= (and d!412869 res!649548) b!1434366))

(declare-fun m!1637673 () Bool)

(assert (=> d!412869 m!1637673))

(assert (=> d!412869 m!1637143))

(declare-fun m!1637675 () Bool)

(assert (=> d!412869 m!1637675))

(declare-fun m!1637677 () Bool)

(assert (=> d!412869 m!1637677))

(assert (=> d!412869 m!1637675))

(assert (=> d!412869 m!1637677))

(declare-fun m!1637679 () Bool)

(assert (=> d!412869 m!1637679))

(declare-fun m!1637681 () Bool)

(assert (=> b!1434365 m!1637681))

(declare-fun m!1637683 () Bool)

(assert (=> b!1434365 m!1637683))

(declare-fun m!1637685 () Bool)

(assert (=> b!1434365 m!1637685))

(declare-fun m!1637687 () Bool)

(assert (=> b!1434365 m!1637687))

(declare-fun m!1637689 () Bool)

(assert (=> b!1434365 m!1637689))

(declare-fun m!1637691 () Bool)

(assert (=> b!1434365 m!1637691))

(assert (=> b!1434365 m!1637687))

(declare-fun m!1637693 () Bool)

(assert (=> b!1434365 m!1637693))

(declare-fun m!1637695 () Bool)

(assert (=> b!1434365 m!1637695))

(declare-fun m!1637697 () Bool)

(assert (=> b!1434365 m!1637697))

(declare-fun m!1637699 () Bool)

(assert (=> b!1434365 m!1637699))

(declare-fun m!1637701 () Bool)

(assert (=> b!1434365 m!1637701))

(declare-fun m!1637703 () Bool)

(assert (=> b!1434365 m!1637703))

(declare-fun m!1637705 () Bool)

(assert (=> b!1434365 m!1637705))

(declare-fun m!1637707 () Bool)

(assert (=> b!1434365 m!1637707))

(declare-fun m!1637709 () Bool)

(assert (=> b!1434365 m!1637709))

(declare-fun m!1637711 () Bool)

(assert (=> b!1434365 m!1637711))

(assert (=> b!1434365 m!1637435))

(declare-fun m!1637713 () Bool)

(assert (=> b!1434365 m!1637713))

(declare-fun m!1637715 () Bool)

(assert (=> b!1434365 m!1637715))

(assert (=> b!1434365 m!1637713))

(declare-fun m!1637717 () Bool)

(assert (=> b!1434365 m!1637717))

(assert (=> b!1434365 m!1637695))

(assert (=> b!1434365 m!1637691))

(declare-fun m!1637719 () Bool)

(assert (=> b!1434365 m!1637719))

(declare-fun m!1637721 () Bool)

(assert (=> b!1434365 m!1637721))

(declare-fun m!1637723 () Bool)

(assert (=> b!1434365 m!1637723))

(declare-fun m!1637725 () Bool)

(assert (=> b!1434365 m!1637725))

(declare-fun m!1637727 () Bool)

(assert (=> b!1434365 m!1637727))

(declare-fun m!1637729 () Bool)

(assert (=> b!1434365 m!1637729))

(assert (=> b!1434365 m!1637713))

(assert (=> b!1434365 m!1637713))

(declare-fun m!1637731 () Bool)

(assert (=> b!1434365 m!1637731))

(assert (=> b!1434365 m!1637675))

(assert (=> b!1434365 m!1637677))

(assert (=> b!1434365 m!1637435))

(declare-fun m!1637733 () Bool)

(assert (=> b!1434365 m!1637733))

(assert (=> b!1434365 m!1637709))

(declare-fun m!1637735 () Bool)

(assert (=> b!1434365 m!1637735))

(assert (=> b!1434365 m!1637701))

(declare-fun m!1637737 () Bool)

(assert (=> b!1434365 m!1637737))

(declare-fun m!1637739 () Bool)

(assert (=> b!1434365 m!1637739))

(assert (=> b!1434365 m!1637675))

(declare-fun m!1637741 () Bool)

(assert (=> b!1434365 m!1637741))

(assert (=> b!1434365 m!1637737))

(assert (=> b!1434365 m!1637725))

(assert (=> b!1434365 m!1637433))

(declare-fun m!1637743 () Bool)

(assert (=> b!1434365 m!1637743))

(assert (=> b!1434365 m!1637435))

(assert (=> b!1434365 m!1637687))

(assert (=> b!1434365 m!1637683))

(assert (=> b!1434365 m!1637727))

(declare-fun m!1637745 () Bool)

(assert (=> b!1434365 m!1637745))

(assert (=> b!1434365 m!1637709))

(assert (=> b!1434365 m!1637433))

(assert (=> b!1434365 m!1637435))

(declare-fun m!1637747 () Bool)

(assert (=> b!1434365 m!1637747))

(assert (=> b!1434365 m!1637723))

(assert (=> b!1434365 m!1637705))

(assert (=> b!1434366 m!1637675))

(assert (=> b!1434366 m!1637675))

(assert (=> b!1434366 m!1637677))

(assert (=> b!1434366 m!1637677))

(assert (=> b!1434366 m!1637679))

(declare-fun m!1637749 () Bool)

(assert (=> b!1434366 m!1637749))

(assert (=> b!1434150 d!412869))

(declare-fun d!412871 () Bool)

(declare-fun lt!489491 () BalanceConc!10084)

(assert (=> d!412871 (= (list!5931 lt!489491) (printList!707 Lexer!2283 (list!5932 (tokens!1984 thiss!10022))))))

(assert (=> d!412871 (= lt!489491 (printTailRec!679 Lexer!2283 (tokens!1984 thiss!10022) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!412871 (= (print!1064 Lexer!2283 (tokens!1984 thiss!10022)) lt!489491)))

(declare-fun bs!341002 () Bool)

(assert (= bs!341002 d!412871))

(declare-fun m!1637751 () Bool)

(assert (=> bs!341002 m!1637751))

(assert (=> bs!341002 m!1637077))

(assert (=> bs!341002 m!1637077))

(declare-fun m!1637753 () Bool)

(assert (=> bs!341002 m!1637753))

(declare-fun m!1637755 () Bool)

(assert (=> bs!341002 m!1637755))

(assert (=> b!1434150 d!412871))

(declare-fun d!412873 () Bool)

(declare-fun e!915653 () Bool)

(assert (=> d!412873 e!915653))

(declare-fun res!649549 () Bool)

(assert (=> d!412873 (=> (not res!649549) (not e!915653))))

(declare-fun lt!489492 () BalanceConc!10084)

(assert (=> d!412873 (= res!649549 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492))) (list!5932 (tokens!1984 thiss!10022))))))

(assert (=> d!412873 (= lt!489492 (print!1064 Lexer!2283 (tokens!1984 thiss!10022)))))

(declare-fun lt!489493 () Unit!22769)

(assert (=> d!412873 (= lt!489493 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) (list!5932 (tokens!1984 thiss!10022))))))

(assert (=> d!412873 (= (print!1065 thiss!10022) lt!489492)))

(declare-fun b!1434367 () Bool)

(assert (=> b!1434367 (= e!915653 (isEmpty!9278 (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492)))))))

(assert (= (and d!412873 res!649549) b!1434367))

(assert (=> d!412873 m!1637075))

(declare-fun m!1637757 () Bool)

(assert (=> d!412873 m!1637757))

(assert (=> d!412873 m!1637077))

(declare-fun m!1637759 () Bool)

(assert (=> d!412873 m!1637759))

(assert (=> d!412873 m!1637077))

(declare-fun m!1637761 () Bool)

(assert (=> d!412873 m!1637761))

(assert (=> b!1434367 m!1637761))

(declare-fun m!1637763 () Bool)

(assert (=> b!1434367 m!1637763))

(assert (=> b!1434367 m!1637763))

(declare-fun m!1637765 () Bool)

(assert (=> b!1434367 m!1637765))

(assert (=> b!1434150 d!412873))

(declare-fun b!1434379 () Bool)

(declare-fun e!915658 () Bool)

(declare-fun lt!489496 () List!14996)

(assert (=> b!1434379 (= e!915658 (or (not (= Nil!14930 Nil!14930)) (= lt!489496 lt!489190)))))

(declare-fun b!1434377 () Bool)

(declare-fun e!915659 () List!14996)

(assert (=> b!1434377 (= e!915659 (Cons!14930 (h!20331 lt!489190) (++!4002 (t!127239 lt!489190) Nil!14930)))))

(declare-fun d!412875 () Bool)

(assert (=> d!412875 e!915658))

(declare-fun res!649554 () Bool)

(assert (=> d!412875 (=> (not res!649554) (not e!915658))))

(declare-fun content!2205 (List!14996) (InoxSet Token!4908))

(assert (=> d!412875 (= res!649554 (= (content!2205 lt!489496) ((_ map or) (content!2205 lt!489190) (content!2205 Nil!14930))))))

(assert (=> d!412875 (= lt!489496 e!915659)))

(declare-fun c!235711 () Bool)

(assert (=> d!412875 (= c!235711 ((_ is Nil!14930) lt!489190))))

(assert (=> d!412875 (= (++!4002 lt!489190 Nil!14930) lt!489496)))

(declare-fun b!1434376 () Bool)

(assert (=> b!1434376 (= e!915659 Nil!14930)))

(declare-fun b!1434378 () Bool)

(declare-fun res!649555 () Bool)

(assert (=> b!1434378 (=> (not res!649555) (not e!915658))))

(declare-fun size!12241 (List!14996) Int)

(assert (=> b!1434378 (= res!649555 (= (size!12241 lt!489496) (+ (size!12241 lt!489190) (size!12241 Nil!14930))))))

(assert (= (and d!412875 c!235711) b!1434376))

(assert (= (and d!412875 (not c!235711)) b!1434377))

(assert (= (and d!412875 res!649554) b!1434378))

(assert (= (and b!1434378 res!649555) b!1434379))

(declare-fun m!1637767 () Bool)

(assert (=> b!1434377 m!1637767))

(declare-fun m!1637769 () Bool)

(assert (=> d!412875 m!1637769))

(declare-fun m!1637771 () Bool)

(assert (=> d!412875 m!1637771))

(declare-fun m!1637773 () Bool)

(assert (=> d!412875 m!1637773))

(declare-fun m!1637775 () Bool)

(assert (=> b!1434378 m!1637775))

(declare-fun m!1637777 () Bool)

(assert (=> b!1434378 m!1637777))

(declare-fun m!1637779 () Bool)

(assert (=> b!1434378 m!1637779))

(assert (=> b!1434150 d!412875))

(declare-fun d!412877 () Bool)

(declare-fun c!235712 () Bool)

(assert (=> d!412877 (= c!235712 ((_ is Cons!14930) Nil!14930))))

(declare-fun e!915660 () List!14994)

(assert (=> d!412877 (= (printList!707 Lexer!2283 Nil!14930) e!915660)))

(declare-fun b!1434380 () Bool)

(assert (=> b!1434380 (= e!915660 (++!4001 (list!5931 (charsOf!1515 (h!20331 Nil!14930))) (printList!707 Lexer!2283 (t!127239 Nil!14930))))))

(declare-fun b!1434381 () Bool)

(assert (=> b!1434381 (= e!915660 Nil!14928)))

(assert (= (and d!412877 c!235712) b!1434380))

(assert (= (and d!412877 (not c!235712)) b!1434381))

(declare-fun m!1637781 () Bool)

(assert (=> b!1434380 m!1637781))

(assert (=> b!1434380 m!1637781))

(declare-fun m!1637783 () Bool)

(assert (=> b!1434380 m!1637783))

(declare-fun m!1637785 () Bool)

(assert (=> b!1434380 m!1637785))

(assert (=> b!1434380 m!1637783))

(assert (=> b!1434380 m!1637785))

(declare-fun m!1637787 () Bool)

(assert (=> b!1434380 m!1637787))

(assert (=> b!1434150 d!412877))

(declare-fun e!915665 () Bool)

(declare-fun b!1434390 () Bool)

(declare-fun tp!406431 () Bool)

(declare-fun tp!406432 () Bool)

(assert (=> b!1434390 (= e!915665 (and (inv!19829 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) tp!406432 (inv!19829 (right!13049 (c!235662 (tokens!1984 thiss!10022)))) tp!406431))))

(declare-fun b!1434392 () Bool)

(declare-fun e!915666 () Bool)

(declare-fun tp!406430 () Bool)

(assert (=> b!1434392 (= e!915666 tp!406430)))

(declare-fun b!1434391 () Bool)

(declare-fun inv!19839 (IArray!10151) Bool)

(assert (=> b!1434391 (= e!915665 (and (inv!19839 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))) e!915666))))

(assert (=> b!1434148 (= tp!406391 (and (inv!19829 (c!235662 (tokens!1984 thiss!10022))) e!915665))))

(assert (= (and b!1434148 ((_ is Node!5073) (c!235662 (tokens!1984 thiss!10022)))) b!1434390))

(assert (= b!1434391 b!1434392))

(assert (= (and b!1434148 ((_ is Leaf!7586) (c!235662 (tokens!1984 thiss!10022)))) b!1434391))

(declare-fun m!1637789 () Bool)

(assert (=> b!1434390 m!1637789))

(declare-fun m!1637791 () Bool)

(assert (=> b!1434390 m!1637791))

(declare-fun m!1637793 () Bool)

(assert (=> b!1434391 m!1637793))

(assert (=> b!1434148 m!1637037))

(declare-fun b!1434403 () Bool)

(declare-fun b_free!35543 () Bool)

(declare-fun b_next!36247 () Bool)

(assert (=> b!1434403 (= b_free!35543 (not b_next!36247))))

(declare-fun tp!406444 () Bool)

(declare-fun b_and!96471 () Bool)

(assert (=> b!1434403 (= tp!406444 b_and!96471)))

(declare-fun b_free!35545 () Bool)

(declare-fun b_next!36249 () Bool)

(assert (=> b!1434403 (= b_free!35545 (not b_next!36249))))

(declare-fun tb!75893 () Bool)

(declare-fun t!127246 () Bool)

(assert (=> (and b!1434403 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186))))) t!127246) tb!75893))

(declare-fun b!1434408 () Bool)

(declare-fun e!915681 () Bool)

(declare-fun tp!406447 () Bool)

(declare-fun inv!19840 (Conc!5072) Bool)

(assert (=> b!1434408 (= e!915681 (and (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))) tp!406447))))

(declare-fun result!92212 () Bool)

(declare-fun inv!19841 (BalanceConc!10084) Bool)

(assert (=> tb!75893 (= result!92212 (and (inv!19841 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))) e!915681))))

(assert (= tb!75893 b!1434408))

(declare-fun m!1637795 () Bool)

(assert (=> b!1434408 m!1637795))

(declare-fun m!1637797 () Bool)

(assert (=> tb!75893 m!1637797))

(assert (=> d!412811 t!127246))

(declare-fun tp!406443 () Bool)

(declare-fun b_and!96473 () Bool)

(assert (=> b!1434403 (= tp!406443 (and (=> t!127246 result!92212) b_and!96473))))

(declare-fun e!915678 () Bool)

(assert (=> b!1434403 (= e!915678 (and tp!406444 tp!406443))))

(declare-fun b!1434402 () Bool)

(declare-fun tp!406441 () Bool)

(declare-fun e!915675 () Bool)

(declare-fun inv!19824 (String!17821) Bool)

(declare-fun inv!19842 (TokenValueInjection!5086) Bool)

(assert (=> b!1434402 (= e!915675 (and tp!406441 (inv!19824 (tag!2885 (h!20332 (rules!11404 thiss!10022)))) (inv!19842 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) e!915678))))

(declare-fun b!1434401 () Bool)

(declare-fun e!915677 () Bool)

(declare-fun tp!406442 () Bool)

(assert (=> b!1434401 (= e!915677 (and e!915675 tp!406442))))

(assert (=> b!1434143 (= tp!406389 e!915677)))

(assert (= b!1434402 b!1434403))

(assert (= b!1434401 b!1434402))

(assert (= (and b!1434143 ((_ is Cons!14931) (rules!11404 thiss!10022))) b!1434401))

(declare-fun m!1637799 () Bool)

(assert (=> b!1434402 m!1637799))

(declare-fun m!1637801 () Bool)

(assert (=> b!1434402 m!1637801))

(declare-fun b!1434411 () Bool)

(declare-fun b_free!35547 () Bool)

(declare-fun b_next!36251 () Bool)

(assert (=> b!1434411 (= b_free!35547 (not b_next!36251))))

(declare-fun tp!406451 () Bool)

(declare-fun b_and!96475 () Bool)

(assert (=> b!1434411 (= tp!406451 b_and!96475)))

(declare-fun b_free!35549 () Bool)

(declare-fun b_next!36253 () Bool)

(assert (=> b!1434411 (= b_free!35549 (not b_next!36253))))

(declare-fun t!127248 () Bool)

(declare-fun tb!75895 () Bool)

(assert (=> (and b!1434411 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186))))) t!127248) tb!75895))

(declare-fun result!92216 () Bool)

(assert (= result!92216 result!92212))

(assert (=> d!412811 t!127248))

(declare-fun b_and!96477 () Bool)

(declare-fun tp!406450 () Bool)

(assert (=> b!1434411 (= tp!406450 (and (=> t!127248 result!92216) b_and!96477))))

(declare-fun e!915685 () Bool)

(assert (=> b!1434411 (= e!915685 (and tp!406451 tp!406450))))

(declare-fun tp!406448 () Bool)

(declare-fun b!1434410 () Bool)

(declare-fun e!915682 () Bool)

(assert (=> b!1434410 (= e!915682 (and tp!406448 (inv!19824 (tag!2885 (h!20332 (rules!11404 other!32)))) (inv!19842 (transformation!2623 (h!20332 (rules!11404 other!32)))) e!915685))))

(declare-fun b!1434409 () Bool)

(declare-fun e!915684 () Bool)

(declare-fun tp!406449 () Bool)

(assert (=> b!1434409 (= e!915684 (and e!915682 tp!406449))))

(assert (=> b!1434149 (= tp!406392 e!915684)))

(assert (= b!1434410 b!1434411))

(assert (= b!1434409 b!1434410))

(assert (= (and b!1434149 ((_ is Cons!14931) (rules!11404 other!32))) b!1434409))

(declare-fun m!1637803 () Bool)

(assert (=> b!1434410 m!1637803))

(declare-fun m!1637805 () Bool)

(assert (=> b!1434410 m!1637805))

(declare-fun tp!406454 () Bool)

(declare-fun e!915686 () Bool)

(declare-fun tp!406453 () Bool)

(declare-fun b!1434412 () Bool)

(assert (=> b!1434412 (= e!915686 (and (inv!19829 (left!12719 (c!235662 (tokens!1984 other!32)))) tp!406454 (inv!19829 (right!13049 (c!235662 (tokens!1984 other!32)))) tp!406453))))

(declare-fun b!1434414 () Bool)

(declare-fun e!915687 () Bool)

(declare-fun tp!406452 () Bool)

(assert (=> b!1434414 (= e!915687 tp!406452)))

(declare-fun b!1434413 () Bool)

(assert (=> b!1434413 (= e!915686 (and (inv!19839 (xs!7806 (c!235662 (tokens!1984 other!32)))) e!915687))))

(assert (=> b!1434144 (= tp!406390 (and (inv!19829 (c!235662 (tokens!1984 other!32))) e!915686))))

(assert (= (and b!1434144 ((_ is Node!5073) (c!235662 (tokens!1984 other!32)))) b!1434412))

(assert (= b!1434413 b!1434414))

(assert (= (and b!1434144 ((_ is Leaf!7586) (c!235662 (tokens!1984 other!32)))) b!1434413))

(declare-fun m!1637807 () Bool)

(assert (=> b!1434412 m!1637807))

(declare-fun m!1637809 () Bool)

(assert (=> b!1434412 m!1637809))

(declare-fun m!1637811 () Bool)

(assert (=> b!1434413 m!1637811))

(assert (=> b!1434144 m!1637045))

(check-sat (not b!1434205) (not b!1434409) (not b!1434367) (not b!1434257) (not d!412803) b_and!96477 (not d!412863) (not d!412805) (not d!412789) (not d!412807) (not d!412861) (not b!1434401) (not d!412875) (not b!1434206) (not b!1434244) (not d!412873) (not b!1434408) (not d!412793) (not b!1434148) (not b!1434410) (not b!1434362) (not d!412819) (not b!1434256) (not b!1434360) (not b_next!36249) (not b!1434380) (not b!1434245) (not b!1434402) (not b!1434357) (not d!412811) (not b!1434414) (not b!1434378) (not b!1434291) b_and!96471 b_and!96475 (not b_next!36253) (not b_next!36247) (not b!1434270) (not b!1434292) (not b!1434246) (not d!412869) (not d!412809) (not b!1434243) (not d!412867) (not b!1434390) (not b!1434269) (not d!412823) (not b!1434413) (not d!412837) (not b_next!36251) (not b!1434211) (not b!1434365) (not b!1434392) (not b!1434359) (not b!1434144) (not b!1434267) b_and!96473 (not b!1434272) (not b!1434366) (not d!412871) (not b!1434391) (not b!1434202) (not d!412801) (not b!1434204) (not d!412763) (not d!412835) (not d!412833) (not b_lambda!44861) (not b!1434293) (not b!1434238) (not b!1434236) (not tb!75893) (not b!1434259) (not d!412817) (not b!1434377) (not b!1434203) (not b!1434412) (not b!1434201))
(check-sat (not b_next!36249) b_and!96471 b_and!96477 (not b_next!36251) b_and!96473 b_and!96475 (not b_next!36253) (not b_next!36247))
(get-model)

(declare-fun d!412879 () Bool)

(declare-fun res!649558 () Bool)

(declare-fun e!915690 () Bool)

(assert (=> d!412879 (=> (not res!649558) (not e!915690))))

(declare-fun rulesValid!959 (LexerInterface!2285 List!14997) Bool)

(assert (=> d!412879 (= res!649558 (rulesValid!959 Lexer!2283 (rules!11404 other!32)))))

(assert (=> d!412879 (= (rulesInvariant!2123 Lexer!2283 (rules!11404 other!32)) e!915690)))

(declare-fun b!1434417 () Bool)

(declare-datatypes ((List!14998 0))(
  ( (Nil!14932) (Cons!14932 (h!20333 String!17821) (t!127356 List!14998)) )
))
(declare-fun noDuplicateTag!959 (LexerInterface!2285 List!14997 List!14998) Bool)

(assert (=> b!1434417 (= e!915690 (noDuplicateTag!959 Lexer!2283 (rules!11404 other!32) Nil!14932))))

(assert (= (and d!412879 res!649558) b!1434417))

(declare-fun m!1637813 () Bool)

(assert (=> d!412879 m!1637813))

(declare-fun m!1637815 () Bool)

(assert (=> b!1434417 m!1637815))

(assert (=> b!1434204 d!412879))

(declare-fun d!412881 () Bool)

(declare-fun res!649566 () Bool)

(declare-fun e!915693 () Bool)

(assert (=> d!412881 (=> (not res!649566) (not e!915693))))

(declare-fun size!12242 (Conc!5073) Int)

(assert (=> d!412881 (= res!649566 (= (csize!10376 (c!235662 (tokens!1984 other!32))) (+ (size!12242 (left!12719 (c!235662 (tokens!1984 other!32)))) (size!12242 (right!13049 (c!235662 (tokens!1984 other!32)))))))))

(assert (=> d!412881 (= (inv!19833 (c!235662 (tokens!1984 other!32))) e!915693)))

(declare-fun b!1434424 () Bool)

(declare-fun res!649567 () Bool)

(assert (=> b!1434424 (=> (not res!649567) (not e!915693))))

(assert (=> b!1434424 (= res!649567 (and (not (= (left!12719 (c!235662 (tokens!1984 other!32))) Empty!5073)) (not (= (right!13049 (c!235662 (tokens!1984 other!32))) Empty!5073))))))

(declare-fun b!1434425 () Bool)

(declare-fun res!649568 () Bool)

(assert (=> b!1434425 (=> (not res!649568) (not e!915693))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!739 (Conc!5073) Int)

(assert (=> b!1434425 (= res!649568 (= (cheight!5284 (c!235662 (tokens!1984 other!32))) (+ (max!0 (height!739 (left!12719 (c!235662 (tokens!1984 other!32)))) (height!739 (right!13049 (c!235662 (tokens!1984 other!32))))) 1)))))

(declare-fun b!1434426 () Bool)

(assert (=> b!1434426 (= e!915693 (<= 0 (cheight!5284 (c!235662 (tokens!1984 other!32)))))))

(assert (= (and d!412881 res!649566) b!1434424))

(assert (= (and b!1434424 res!649567) b!1434425))

(assert (= (and b!1434425 res!649568) b!1434426))

(declare-fun m!1637817 () Bool)

(assert (=> d!412881 m!1637817))

(declare-fun m!1637819 () Bool)

(assert (=> d!412881 m!1637819))

(declare-fun m!1637821 () Bool)

(assert (=> b!1434425 m!1637821))

(declare-fun m!1637823 () Bool)

(assert (=> b!1434425 m!1637823))

(assert (=> b!1434425 m!1637821))

(assert (=> b!1434425 m!1637823))

(declare-fun m!1637825 () Bool)

(assert (=> b!1434425 m!1637825))

(assert (=> b!1434270 d!412881))

(declare-fun d!412883 () Bool)

(assert (=> d!412883 (= (list!5931 lt!489491) (list!5935 (c!235660 lt!489491)))))

(declare-fun bs!341003 () Bool)

(assert (= bs!341003 d!412883))

(declare-fun m!1637827 () Bool)

(assert (=> bs!341003 m!1637827))

(assert (=> d!412871 d!412883))

(declare-fun d!412885 () Bool)

(declare-fun c!235713 () Bool)

(assert (=> d!412885 (= c!235713 ((_ is Cons!14930) (list!5932 (tokens!1984 thiss!10022))))))

(declare-fun e!915694 () List!14994)

(assert (=> d!412885 (= (printList!707 Lexer!2283 (list!5932 (tokens!1984 thiss!10022))) e!915694)))

(declare-fun b!1434427 () Bool)

(assert (=> b!1434427 (= e!915694 (++!4001 (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022))))) (printList!707 Lexer!2283 (t!127239 (list!5932 (tokens!1984 thiss!10022))))))))

(declare-fun b!1434428 () Bool)

(assert (=> b!1434428 (= e!915694 Nil!14928)))

(assert (= (and d!412885 c!235713) b!1434427))

(assert (= (and d!412885 (not c!235713)) b!1434428))

(declare-fun m!1637829 () Bool)

(assert (=> b!1434427 m!1637829))

(assert (=> b!1434427 m!1637829))

(declare-fun m!1637831 () Bool)

(assert (=> b!1434427 m!1637831))

(declare-fun m!1637833 () Bool)

(assert (=> b!1434427 m!1637833))

(assert (=> b!1434427 m!1637831))

(assert (=> b!1434427 m!1637833))

(declare-fun m!1637835 () Bool)

(assert (=> b!1434427 m!1637835))

(assert (=> d!412871 d!412885))

(assert (=> d!412871 d!412861))

(declare-fun d!412887 () Bool)

(declare-fun lt!489497 () BalanceConc!10084)

(assert (=> d!412887 (= (list!5931 lt!489497) (printListTailRec!281 Lexer!2283 (dropList!462 (tokens!1984 thiss!10022) 0) (list!5931 (BalanceConc!10085 Empty!5072))))))

(declare-fun e!915696 () BalanceConc!10084)

(assert (=> d!412887 (= lt!489497 e!915696)))

(declare-fun c!235714 () Bool)

(assert (=> d!412887 (= c!235714 (>= 0 (size!12238 (tokens!1984 thiss!10022))))))

(declare-fun e!915695 () Bool)

(assert (=> d!412887 e!915695))

(declare-fun res!649570 () Bool)

(assert (=> d!412887 (=> (not res!649570) (not e!915695))))

(assert (=> d!412887 (= res!649570 (>= 0 0))))

(assert (=> d!412887 (= (printTailRec!679 Lexer!2283 (tokens!1984 thiss!10022) 0 (BalanceConc!10085 Empty!5072)) lt!489497)))

(declare-fun b!1434429 () Bool)

(assert (=> b!1434429 (= e!915695 (<= 0 (size!12238 (tokens!1984 thiss!10022))))))

(declare-fun b!1434430 () Bool)

(assert (=> b!1434430 (= e!915696 (BalanceConc!10085 Empty!5072))))

(declare-fun b!1434431 () Bool)

(assert (=> b!1434431 (= e!915696 (printTailRec!679 Lexer!2283 (tokens!1984 thiss!10022) (+ 0 1) (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (tokens!1984 thiss!10022) 0)))))))

(declare-fun lt!489499 () List!14996)

(assert (=> b!1434431 (= lt!489499 (list!5932 (tokens!1984 thiss!10022)))))

(declare-fun lt!489503 () Unit!22769)

(assert (=> b!1434431 (= lt!489503 (lemmaDropApply!482 lt!489499 0))))

(assert (=> b!1434431 (= (head!2907 (drop!730 lt!489499 0)) (apply!3819 lt!489499 0))))

(declare-fun lt!489498 () Unit!22769)

(assert (=> b!1434431 (= lt!489498 lt!489503)))

(declare-fun lt!489502 () List!14996)

(assert (=> b!1434431 (= lt!489502 (list!5932 (tokens!1984 thiss!10022)))))

(declare-fun lt!489501 () Unit!22769)

(assert (=> b!1434431 (= lt!489501 (lemmaDropTail!462 lt!489502 0))))

(assert (=> b!1434431 (= (tail!2152 (drop!730 lt!489502 0)) (drop!730 lt!489502 (+ 0 1)))))

(declare-fun lt!489500 () Unit!22769)

(assert (=> b!1434431 (= lt!489500 lt!489501)))

(assert (= (and d!412887 res!649570) b!1434429))

(assert (= (and d!412887 c!235714) b!1434430))

(assert (= (and d!412887 (not c!235714)) b!1434431))

(declare-fun m!1637837 () Bool)

(assert (=> d!412887 m!1637837))

(declare-fun m!1637839 () Bool)

(assert (=> d!412887 m!1637839))

(assert (=> d!412887 m!1637839))

(assert (=> d!412887 m!1637173))

(declare-fun m!1637841 () Bool)

(assert (=> d!412887 m!1637841))

(declare-fun m!1637843 () Bool)

(assert (=> d!412887 m!1637843))

(assert (=> d!412887 m!1637173))

(assert (=> b!1434429 m!1637837))

(declare-fun m!1637845 () Bool)

(assert (=> b!1434431 m!1637845))

(declare-fun m!1637847 () Bool)

(assert (=> b!1434431 m!1637847))

(declare-fun m!1637849 () Bool)

(assert (=> b!1434431 m!1637849))

(declare-fun m!1637851 () Bool)

(assert (=> b!1434431 m!1637851))

(assert (=> b!1434431 m!1637077))

(declare-fun m!1637853 () Bool)

(assert (=> b!1434431 m!1637853))

(declare-fun m!1637855 () Bool)

(assert (=> b!1434431 m!1637855))

(assert (=> b!1434431 m!1637845))

(declare-fun m!1637857 () Bool)

(assert (=> b!1434431 m!1637857))

(assert (=> b!1434431 m!1637849))

(declare-fun m!1637859 () Bool)

(assert (=> b!1434431 m!1637859))

(assert (=> b!1434431 m!1637855))

(assert (=> b!1434431 m!1637847))

(assert (=> b!1434431 m!1637853))

(declare-fun m!1637861 () Bool)

(assert (=> b!1434431 m!1637861))

(declare-fun m!1637863 () Bool)

(assert (=> b!1434431 m!1637863))

(declare-fun m!1637865 () Bool)

(assert (=> b!1434431 m!1637865))

(declare-fun m!1637867 () Bool)

(assert (=> b!1434431 m!1637867))

(assert (=> d!412871 d!412887))

(declare-fun d!412889 () Bool)

(declare-fun c!235717 () Bool)

(assert (=> d!412889 (= c!235717 ((_ is Nil!14928) lt!489461))))

(declare-fun e!915699 () (InoxSet C!8052))

(assert (=> d!412889 (= (content!2203 lt!489461) e!915699)))

(declare-fun b!1434436 () Bool)

(assert (=> b!1434436 (= e!915699 ((as const (Array C!8052 Bool)) false))))

(declare-fun b!1434437 () Bool)

(assert (=> b!1434437 (= e!915699 ((_ map or) (store ((as const (Array C!8052 Bool)) false) (h!20329 lt!489461) true) (content!2203 (t!127237 lt!489461))))))

(assert (= (and d!412889 c!235717) b!1434436))

(assert (= (and d!412889 (not c!235717)) b!1434437))

(declare-fun m!1637869 () Bool)

(assert (=> b!1434437 m!1637869))

(declare-fun m!1637871 () Bool)

(assert (=> b!1434437 m!1637871))

(assert (=> d!412863 d!412889))

(declare-fun d!412891 () Bool)

(declare-fun c!235718 () Bool)

(assert (=> d!412891 (= c!235718 ((_ is Nil!14928) lt!489183))))

(declare-fun e!915700 () (InoxSet C!8052))

(assert (=> d!412891 (= (content!2203 lt!489183) e!915700)))

(declare-fun b!1434438 () Bool)

(assert (=> b!1434438 (= e!915700 ((as const (Array C!8052 Bool)) false))))

(declare-fun b!1434439 () Bool)

(assert (=> b!1434439 (= e!915700 ((_ map or) (store ((as const (Array C!8052 Bool)) false) (h!20329 lt!489183) true) (content!2203 (t!127237 lt!489183))))))

(assert (= (and d!412891 c!235718) b!1434438))

(assert (= (and d!412891 (not c!235718)) b!1434439))

(declare-fun m!1637873 () Bool)

(assert (=> b!1434439 m!1637873))

(declare-fun m!1637875 () Bool)

(assert (=> b!1434439 m!1637875))

(assert (=> d!412863 d!412891))

(declare-fun d!412893 () Bool)

(declare-fun c!235719 () Bool)

(assert (=> d!412893 (= c!235719 ((_ is Nil!14928) lt!489182))))

(declare-fun e!915701 () (InoxSet C!8052))

(assert (=> d!412893 (= (content!2203 lt!489182) e!915701)))

(declare-fun b!1434440 () Bool)

(assert (=> b!1434440 (= e!915701 ((as const (Array C!8052 Bool)) false))))

(declare-fun b!1434441 () Bool)

(assert (=> b!1434441 (= e!915701 ((_ map or) (store ((as const (Array C!8052 Bool)) false) (h!20329 lt!489182) true) (content!2203 (t!127237 lt!489182))))))

(assert (= (and d!412893 c!235719) b!1434440))

(assert (= (and d!412893 (not c!235719)) b!1434441))

(declare-fun m!1637877 () Bool)

(assert (=> b!1434441 m!1637877))

(declare-fun m!1637879 () Bool)

(assert (=> b!1434441 m!1637879))

(assert (=> d!412863 d!412893))

(declare-fun d!412895 () Bool)

(assert (=> d!412895 (= (isEmpty!9276 (list!5932 (tokens!1984 other!32))) ((_ is Nil!14930) (list!5932 (tokens!1984 other!32))))))

(assert (=> d!412801 d!412895))

(assert (=> d!412801 d!412833))

(declare-fun d!412897 () Bool)

(declare-fun lt!489506 () Bool)

(assert (=> d!412897 (= lt!489506 (isEmpty!9276 (list!5936 (c!235662 (tokens!1984 other!32)))))))

(assert (=> d!412897 (= lt!489506 (= (size!12242 (c!235662 (tokens!1984 other!32))) 0))))

(assert (=> d!412897 (= (isEmpty!9277 (c!235662 (tokens!1984 other!32))) lt!489506)))

(declare-fun bs!341004 () Bool)

(assert (= bs!341004 d!412897))

(assert (=> bs!341004 m!1637441))

(assert (=> bs!341004 m!1637441))

(declare-fun m!1637881 () Bool)

(assert (=> bs!341004 m!1637881))

(declare-fun m!1637883 () Bool)

(assert (=> bs!341004 m!1637883))

(assert (=> d!412801 d!412897))

(declare-fun d!412899 () Bool)

(assert (=> d!412899 (= (isEmpty!9275 (rules!11404 thiss!10022)) ((_ is Nil!14931) (rules!11404 thiss!10022)))))

(assert (=> d!412763 d!412899))

(declare-fun d!412901 () Bool)

(assert (=> d!412901 (= (list!5931 lt!489464) (list!5935 (c!235660 lt!489464)))))

(declare-fun bs!341005 () Bool)

(assert (= bs!341005 d!412901))

(declare-fun m!1637885 () Bool)

(assert (=> bs!341005 m!1637885))

(assert (=> d!412867 d!412901))

(declare-fun d!412903 () Bool)

(declare-fun c!235720 () Bool)

(assert (=> d!412903 (= c!235720 ((_ is Cons!14930) (list!5932 (tokens!1984 other!32))))))

(declare-fun e!915702 () List!14994)

(assert (=> d!412903 (= (printList!707 Lexer!2283 (list!5932 (tokens!1984 other!32))) e!915702)))

(declare-fun b!1434442 () Bool)

(assert (=> b!1434442 (= e!915702 (++!4001 (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32))))) (printList!707 Lexer!2283 (t!127239 (list!5932 (tokens!1984 other!32))))))))

(declare-fun b!1434443 () Bool)

(assert (=> b!1434443 (= e!915702 Nil!14928)))

(assert (= (and d!412903 c!235720) b!1434442))

(assert (= (and d!412903 (not c!235720)) b!1434443))

(declare-fun m!1637887 () Bool)

(assert (=> b!1434442 m!1637887))

(assert (=> b!1434442 m!1637887))

(declare-fun m!1637889 () Bool)

(assert (=> b!1434442 m!1637889))

(declare-fun m!1637891 () Bool)

(assert (=> b!1434442 m!1637891))

(assert (=> b!1434442 m!1637889))

(assert (=> b!1434442 m!1637891))

(declare-fun m!1637893 () Bool)

(assert (=> b!1434442 m!1637893))

(assert (=> d!412867 d!412903))

(assert (=> d!412867 d!412833))

(assert (=> d!412867 d!412793))

(declare-fun d!412905 () Bool)

(declare-fun lt!489509 () Bool)

(assert (=> d!412905 (= lt!489509 (isEmpty!9278 (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)))))))))

(declare-fun isEmpty!9281 (Conc!5072) Bool)

(assert (=> d!412905 (= lt!489509 (isEmpty!9281 (c!235660 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)))))))))

(assert (=> d!412905 (= (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190))))) lt!489509)))

(declare-fun bs!341006 () Bool)

(assert (= bs!341006 d!412905))

(declare-fun m!1637895 () Bool)

(assert (=> bs!341006 m!1637895))

(assert (=> bs!341006 m!1637895))

(declare-fun m!1637897 () Bool)

(assert (=> bs!341006 m!1637897))

(declare-fun m!1637899 () Bool)

(assert (=> bs!341006 m!1637899))

(assert (=> b!1434366 d!412905))

(declare-fun b!1434464 () Bool)

(declare-fun res!649577 () Bool)

(declare-fun e!915716 () Bool)

(assert (=> b!1434464 (=> (not res!649577) (not e!915716))))

(declare-fun lt!489520 () tuple2!14120)

(declare-datatypes ((tuple2!14124 0))(
  ( (tuple2!14125 (_1!7948 List!14996) (_2!7948 List!14994)) )
))
(declare-fun lexList!699 (LexerInterface!2285 List!14997 List!14994) tuple2!14124)

(assert (=> b!1434464 (= res!649577 (= (list!5932 (_1!7946 lt!489520)) (_1!7948 (lexList!699 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)))))))))

(declare-fun d!412907 () Bool)

(assert (=> d!412907 e!915716))

(declare-fun res!649579 () Bool)

(assert (=> d!412907 (=> (not res!649579) (not e!915716))))

(declare-fun e!915715 () Bool)

(assert (=> d!412907 (= res!649579 e!915715)))

(declare-fun c!235728 () Bool)

(assert (=> d!412907 (= c!235728 (> (size!12238 (_1!7946 lt!489520)) 0))))

(declare-fun lexTailRecV2!454 (LexerInterface!2285 List!14997 BalanceConc!10084 BalanceConc!10084 BalanceConc!10084 BalanceConc!10086) tuple2!14120)

(assert (=> d!412907 (= lt!489520 (lexTailRecV2!454 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)) (BalanceConc!10085 Empty!5072) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)) (BalanceConc!10087 Empty!5073)))))

(assert (=> d!412907 (= (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190))) lt!489520)))

(declare-fun b!1434465 () Bool)

(declare-fun e!915714 () Bool)

(assert (=> b!1434465 (= e!915714 (not (isEmpty!9269 (_1!7946 lt!489520))))))

(declare-fun b!1434466 () Bool)

(assert (=> b!1434466 (= e!915716 (= (list!5931 (_2!7946 lt!489520)) (_2!7948 (lexList!699 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)))))))))

(declare-fun b!1434467 () Bool)

(assert (=> b!1434467 (= e!915715 (= (_2!7946 lt!489520) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190))))))

(declare-fun b!1434468 () Bool)

(assert (=> b!1434468 (= e!915715 e!915714)))

(declare-fun res!649578 () Bool)

(declare-fun size!12244 (BalanceConc!10084) Int)

(assert (=> b!1434468 (= res!649578 (< (size!12244 (_2!7946 lt!489520)) (size!12244 (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)))))))

(assert (=> b!1434468 (=> (not res!649578) (not e!915714))))

(assert (= (and d!412907 c!235728) b!1434468))

(assert (= (and d!412907 (not c!235728)) b!1434467))

(assert (= (and b!1434468 res!649578) b!1434465))

(assert (= (and d!412907 res!649579) b!1434464))

(assert (= (and b!1434464 res!649577) b!1434466))

(declare-fun m!1637913 () Bool)

(assert (=> b!1434466 m!1637913))

(assert (=> b!1434466 m!1637677))

(declare-fun m!1637915 () Bool)

(assert (=> b!1434466 m!1637915))

(assert (=> b!1434466 m!1637915))

(declare-fun m!1637917 () Bool)

(assert (=> b!1434466 m!1637917))

(declare-fun m!1637919 () Bool)

(assert (=> b!1434464 m!1637919))

(assert (=> b!1434464 m!1637677))

(assert (=> b!1434464 m!1637915))

(assert (=> b!1434464 m!1637915))

(assert (=> b!1434464 m!1637917))

(declare-fun m!1637921 () Bool)

(assert (=> b!1434465 m!1637921))

(declare-fun m!1637923 () Bool)

(assert (=> b!1434468 m!1637923))

(assert (=> b!1434468 m!1637677))

(declare-fun m!1637925 () Bool)

(assert (=> b!1434468 m!1637925))

(declare-fun m!1637927 () Bool)

(assert (=> d!412907 m!1637927))

(assert (=> d!412907 m!1637677))

(assert (=> d!412907 m!1637677))

(declare-fun m!1637929 () Bool)

(assert (=> d!412907 m!1637929))

(assert (=> b!1434366 d!412907))

(declare-fun d!412919 () Bool)

(declare-fun lt!489521 () BalanceConc!10084)

(assert (=> d!412919 (= (list!5931 lt!489521) (printList!707 Lexer!2283 (list!5932 (seqFromList!1696 lt!489190))))))

(assert (=> d!412919 (= lt!489521 (printTailRec!679 Lexer!2283 (seqFromList!1696 lt!489190) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!412919 (= (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)) lt!489521)))

(declare-fun bs!341008 () Bool)

(assert (= bs!341008 d!412919))

(declare-fun m!1637931 () Bool)

(assert (=> bs!341008 m!1637931))

(assert (=> bs!341008 m!1637675))

(declare-fun m!1637933 () Bool)

(assert (=> bs!341008 m!1637933))

(assert (=> bs!341008 m!1637933))

(declare-fun m!1637935 () Bool)

(assert (=> bs!341008 m!1637935))

(assert (=> bs!341008 m!1637675))

(declare-fun m!1637937 () Bool)

(assert (=> bs!341008 m!1637937))

(assert (=> b!1434366 d!412919))

(declare-fun d!412921 () Bool)

(declare-fun fromListB!727 (List!14996) BalanceConc!10086)

(assert (=> d!412921 (= (seqFromList!1696 lt!489190) (fromListB!727 lt!489190))))

(declare-fun bs!341009 () Bool)

(assert (= bs!341009 d!412921))

(declare-fun m!1637939 () Bool)

(assert (=> bs!341009 m!1637939))

(assert (=> b!1434366 d!412921))

(declare-fun b!1434510 () Bool)

(declare-fun e!915745 () Bool)

(assert (=> b!1434510 (= e!915745 true)))

(declare-fun b!1434509 () Bool)

(declare-fun e!915744 () Bool)

(assert (=> b!1434509 (= e!915744 e!915745)))

(declare-fun b!1434508 () Bool)

(declare-fun e!915743 () Bool)

(assert (=> b!1434508 (= e!915743 e!915744)))

(declare-fun d!412923 () Bool)

(assert (=> d!412923 e!915743))

(assert (= b!1434509 b!1434510))

(assert (= b!1434508 b!1434509))

(assert (= (and d!412923 ((_ is Cons!14931) (rules!11404 other!32))) b!1434508))

(declare-fun lambda!62820 () Int)

(declare-fun order!8969 () Int)

(declare-fun order!8967 () Int)

(declare-fun dynLambda!6802 (Int Int) Int)

(declare-fun dynLambda!6803 (Int Int) Int)

(assert (=> b!1434510 (< (dynLambda!6802 order!8967 (toValue!3926 (transformation!2623 (h!20332 (rules!11404 other!32))))) (dynLambda!6803 order!8969 lambda!62820))))

(declare-fun order!8971 () Int)

(declare-fun dynLambda!6804 (Int Int) Int)

(assert (=> b!1434510 (< (dynLambda!6804 order!8971 (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32))))) (dynLambda!6803 order!8969 lambda!62820))))

(assert (=> d!412923 true))

(declare-fun e!915736 () Bool)

(assert (=> d!412923 e!915736))

(declare-fun res!649594 () Bool)

(assert (=> d!412923 (=> (not res!649594) (not e!915736))))

(declare-fun lt!489530 () Bool)

(declare-fun forall!3667 (List!14996 Int) Bool)

(assert (=> d!412923 (= res!649594 (= lt!489530 (forall!3667 (list!5932 (tokens!1984 other!32)) lambda!62820)))))

(declare-fun forall!3668 (BalanceConc!10086 Int) Bool)

(assert (=> d!412923 (= lt!489530 (forall!3668 (tokens!1984 other!32) lambda!62820))))

(assert (=> d!412923 (not (isEmpty!9275 (rules!11404 other!32)))))

(assert (=> d!412923 (= (rulesProduceEachTokenIndividually!841 Lexer!2283 (rules!11404 other!32) (tokens!1984 other!32)) lt!489530)))

(declare-fun b!1434499 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!721 (LexerInterface!2285 List!14997 List!14996) Bool)

(assert (=> b!1434499 (= e!915736 (= lt!489530 (rulesProduceEachTokenIndividuallyList!721 Lexer!2283 (rules!11404 other!32) (list!5932 (tokens!1984 other!32)))))))

(assert (= (and d!412923 res!649594) b!1434499))

(assert (=> d!412923 m!1637083))

(assert (=> d!412923 m!1637083))

(declare-fun m!1637985 () Bool)

(assert (=> d!412923 m!1637985))

(declare-fun m!1637987 () Bool)

(assert (=> d!412923 m!1637987))

(assert (=> d!412923 m!1637151))

(assert (=> b!1434499 m!1637083))

(assert (=> b!1434499 m!1637083))

(declare-fun m!1637989 () Bool)

(assert (=> b!1434499 m!1637989))

(assert (=> b!1434245 d!412923))

(declare-fun b!1434525 () Bool)

(declare-fun res!649609 () Bool)

(declare-fun e!915751 () Bool)

(assert (=> b!1434525 (=> (not res!649609) (not e!915751))))

(assert (=> b!1434525 (= res!649609 (isBalanced!1503 (left!12719 (c!235662 (tokens!1984 other!32)))))))

(declare-fun d!412941 () Bool)

(declare-fun res!649612 () Bool)

(declare-fun e!915750 () Bool)

(assert (=> d!412941 (=> res!649612 e!915750)))

(assert (=> d!412941 (= res!649612 (not ((_ is Node!5073) (c!235662 (tokens!1984 other!32)))))))

(assert (=> d!412941 (= (isBalanced!1503 (c!235662 (tokens!1984 other!32))) e!915750)))

(declare-fun b!1434526 () Bool)

(declare-fun res!649610 () Bool)

(assert (=> b!1434526 (=> (not res!649610) (not e!915751))))

(assert (=> b!1434526 (= res!649610 (<= (- (height!739 (left!12719 (c!235662 (tokens!1984 other!32)))) (height!739 (right!13049 (c!235662 (tokens!1984 other!32))))) 1))))

(declare-fun b!1434527 () Bool)

(declare-fun res!649611 () Bool)

(assert (=> b!1434527 (=> (not res!649611) (not e!915751))))

(assert (=> b!1434527 (= res!649611 (isBalanced!1503 (right!13049 (c!235662 (tokens!1984 other!32)))))))

(declare-fun b!1434528 () Bool)

(declare-fun res!649607 () Bool)

(assert (=> b!1434528 (=> (not res!649607) (not e!915751))))

(assert (=> b!1434528 (= res!649607 (not (isEmpty!9277 (left!12719 (c!235662 (tokens!1984 other!32))))))))

(declare-fun b!1434529 () Bool)

(assert (=> b!1434529 (= e!915751 (not (isEmpty!9277 (right!13049 (c!235662 (tokens!1984 other!32))))))))

(declare-fun b!1434530 () Bool)

(assert (=> b!1434530 (= e!915750 e!915751)))

(declare-fun res!649608 () Bool)

(assert (=> b!1434530 (=> (not res!649608) (not e!915751))))

(assert (=> b!1434530 (= res!649608 (<= (- 1) (- (height!739 (left!12719 (c!235662 (tokens!1984 other!32)))) (height!739 (right!13049 (c!235662 (tokens!1984 other!32)))))))))

(assert (= (and d!412941 (not res!649612)) b!1434530))

(assert (= (and b!1434530 res!649608) b!1434526))

(assert (= (and b!1434526 res!649610) b!1434525))

(assert (= (and b!1434525 res!649609) b!1434527))

(assert (= (and b!1434527 res!649611) b!1434528))

(assert (= (and b!1434528 res!649607) b!1434529))

(assert (=> b!1434530 m!1637821))

(assert (=> b!1434530 m!1637823))

(declare-fun m!1637991 () Bool)

(assert (=> b!1434528 m!1637991))

(declare-fun m!1637993 () Bool)

(assert (=> b!1434529 m!1637993))

(declare-fun m!1637995 () Bool)

(assert (=> b!1434525 m!1637995))

(declare-fun m!1637997 () Bool)

(assert (=> b!1434527 m!1637997))

(assert (=> b!1434526 m!1637821))

(assert (=> b!1434526 m!1637823))

(assert (=> d!412819 d!412941))

(declare-fun d!412943 () Bool)

(assert (=> d!412943 (= (inv!19824 (tag!2885 (h!20332 (rules!11404 thiss!10022)))) (= (mod (str.len (value!84402 (tag!2885 (h!20332 (rules!11404 thiss!10022))))) 2) 0))))

(assert (=> b!1434402 d!412943))

(declare-fun d!412945 () Bool)

(declare-fun res!649615 () Bool)

(declare-fun e!915754 () Bool)

(assert (=> d!412945 (=> (not res!649615) (not e!915754))))

(declare-fun semiInverseModEq!986 (Int Int) Bool)

(assert (=> d!412945 (= res!649615 (semiInverseModEq!986 (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toValue!3926 (transformation!2623 (h!20332 (rules!11404 thiss!10022))))))))

(assert (=> d!412945 (= (inv!19842 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) e!915754)))

(declare-fun b!1434533 () Bool)

(declare-fun equivClasses!945 (Int Int) Bool)

(assert (=> b!1434533 (= e!915754 (equivClasses!945 (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toValue!3926 (transformation!2623 (h!20332 (rules!11404 thiss!10022))))))))

(assert (= (and d!412945 res!649615) b!1434533))

(declare-fun m!1637999 () Bool)

(assert (=> d!412945 m!1637999))

(declare-fun m!1638001 () Bool)

(assert (=> b!1434533 m!1638001))

(assert (=> b!1434402 d!412945))

(declare-fun d!412947 () Bool)

(assert (=> d!412947 (= (inv!19839 (xs!7806 (c!235662 (tokens!1984 other!32)))) (<= (size!12241 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32))))) 2147483647))))

(declare-fun bs!341012 () Bool)

(assert (= bs!341012 d!412947))

(declare-fun m!1638003 () Bool)

(assert (=> bs!341012 m!1638003))

(assert (=> b!1434413 d!412947))

(declare-fun d!412949 () Bool)

(declare-fun e!915779 () Bool)

(assert (=> d!412949 e!915779))

(declare-fun res!649621 () Bool)

(assert (=> d!412949 (=> (not res!649621) (not e!915779))))

(declare-fun lt!489534 () List!14996)

(assert (=> d!412949 (= res!649621 (= ((_ map implies) (content!2205 lt!489534) (content!2205 lt!489240)) ((as const (InoxSet Token!4908)) true)))))

(declare-fun e!915782 () List!14996)

(assert (=> d!412949 (= lt!489534 e!915782)))

(declare-fun c!235747 () Bool)

(assert (=> d!412949 (= c!235747 ((_ is Nil!14930) lt!489240))))

(assert (=> d!412949 (= (drop!730 lt!489240 (+ 0 1)) lt!489534)))

(declare-fun b!1434572 () Bool)

(declare-fun e!915783 () Int)

(declare-fun e!915781 () Int)

(assert (=> b!1434572 (= e!915783 e!915781)))

(declare-fun c!235750 () Bool)

(declare-fun call!97292 () Int)

(assert (=> b!1434572 (= c!235750 (>= (+ 0 1) call!97292))))

(declare-fun b!1434573 () Bool)

(assert (=> b!1434573 (= e!915781 0)))

(declare-fun b!1434574 () Bool)

(declare-fun e!915780 () List!14996)

(assert (=> b!1434574 (= e!915780 lt!489240)))

(declare-fun b!1434575 () Bool)

(assert (=> b!1434575 (= e!915780 (drop!730 (t!127239 lt!489240) (- (+ 0 1) 1)))))

(declare-fun b!1434576 () Bool)

(assert (=> b!1434576 (= e!915783 call!97292)))

(declare-fun b!1434577 () Bool)

(assert (=> b!1434577 (= e!915781 (- call!97292 (+ 0 1)))))

(declare-fun b!1434578 () Bool)

(assert (=> b!1434578 (= e!915779 (= (size!12241 lt!489534) e!915783))))

(declare-fun c!235749 () Bool)

(assert (=> b!1434578 (= c!235749 (<= (+ 0 1) 0))))

(declare-fun b!1434579 () Bool)

(assert (=> b!1434579 (= e!915782 e!915780)))

(declare-fun c!235748 () Bool)

(assert (=> b!1434579 (= c!235748 (<= (+ 0 1) 0))))

(declare-fun bm!97287 () Bool)

(assert (=> bm!97287 (= call!97292 (size!12241 lt!489240))))

(declare-fun b!1434580 () Bool)

(assert (=> b!1434580 (= e!915782 Nil!14930)))

(assert (= (and d!412949 c!235747) b!1434580))

(assert (= (and d!412949 (not c!235747)) b!1434579))

(assert (= (and b!1434579 c!235748) b!1434574))

(assert (= (and b!1434579 (not c!235748)) b!1434575))

(assert (= (and d!412949 res!649621) b!1434578))

(assert (= (and b!1434578 c!235749) b!1434576))

(assert (= (and b!1434578 (not c!235749)) b!1434572))

(assert (= (and b!1434572 c!235750) b!1434573))

(assert (= (and b!1434572 (not c!235750)) b!1434577))

(assert (= (or b!1434576 b!1434572 b!1434577) bm!97287))

(declare-fun m!1638011 () Bool)

(assert (=> d!412949 m!1638011))

(declare-fun m!1638013 () Bool)

(assert (=> d!412949 m!1638013))

(declare-fun m!1638015 () Bool)

(assert (=> b!1434575 m!1638015))

(declare-fun m!1638017 () Bool)

(assert (=> b!1434578 m!1638017))

(declare-fun m!1638019 () Bool)

(assert (=> bm!97287 m!1638019))

(assert (=> b!1434238 d!412949))

(assert (=> b!1434238 d!412833))

(declare-fun d!412953 () Bool)

(declare-fun lt!489535 () BalanceConc!10084)

(assert (=> d!412953 (= (list!5931 lt!489535) (printListTailRec!281 Lexer!2283 (dropList!462 (tokens!1984 other!32) (+ 0 1)) (list!5931 (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))))))

(declare-fun e!915786 () BalanceConc!10084)

(assert (=> d!412953 (= lt!489535 e!915786)))

(declare-fun c!235752 () Bool)

(assert (=> d!412953 (= c!235752 (>= (+ 0 1) (size!12238 (tokens!1984 other!32))))))

(declare-fun e!915785 () Bool)

(assert (=> d!412953 e!915785))

(declare-fun res!649622 () Bool)

(assert (=> d!412953 (=> (not res!649622) (not e!915785))))

(assert (=> d!412953 (= res!649622 (>= (+ 0 1) 0))))

(assert (=> d!412953 (= (printTailRec!679 Lexer!2283 (tokens!1984 other!32) (+ 0 1) (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0)))) lt!489535)))

(declare-fun b!1434583 () Bool)

(assert (=> b!1434583 (= e!915785 (<= (+ 0 1) (size!12238 (tokens!1984 other!32))))))

(declare-fun b!1434584 () Bool)

(assert (=> b!1434584 (= e!915786 (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))))

(declare-fun b!1434585 () Bool)

(assert (=> b!1434585 (= e!915786 (printTailRec!679 Lexer!2283 (tokens!1984 other!32) (+ 0 1 1) (++!4004 (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))) (charsOf!1515 (apply!3818 (tokens!1984 other!32) (+ 0 1))))))))

(declare-fun lt!489537 () List!14996)

(assert (=> b!1434585 (= lt!489537 (list!5932 (tokens!1984 other!32)))))

(declare-fun lt!489541 () Unit!22769)

(assert (=> b!1434585 (= lt!489541 (lemmaDropApply!482 lt!489537 (+ 0 1)))))

(assert (=> b!1434585 (= (head!2907 (drop!730 lt!489537 (+ 0 1))) (apply!3819 lt!489537 (+ 0 1)))))

(declare-fun lt!489536 () Unit!22769)

(assert (=> b!1434585 (= lt!489536 lt!489541)))

(declare-fun lt!489540 () List!14996)

(assert (=> b!1434585 (= lt!489540 (list!5932 (tokens!1984 other!32)))))

(declare-fun lt!489539 () Unit!22769)

(assert (=> b!1434585 (= lt!489539 (lemmaDropTail!462 lt!489540 (+ 0 1)))))

(assert (=> b!1434585 (= (tail!2152 (drop!730 lt!489540 (+ 0 1))) (drop!730 lt!489540 (+ 0 1 1)))))

(declare-fun lt!489538 () Unit!22769)

(assert (=> b!1434585 (= lt!489538 lt!489539)))

(assert (= (and d!412953 res!649622) b!1434583))

(assert (= (and d!412953 c!235752) b!1434584))

(assert (= (and d!412953 (not c!235752)) b!1434585))

(assert (=> d!412953 m!1637163))

(declare-fun m!1638029 () Bool)

(assert (=> d!412953 m!1638029))

(assert (=> d!412953 m!1638029))

(declare-fun m!1638031 () Bool)

(assert (=> d!412953 m!1638031))

(declare-fun m!1638033 () Bool)

(assert (=> d!412953 m!1638033))

(declare-fun m!1638035 () Bool)

(assert (=> d!412953 m!1638035))

(assert (=> d!412953 m!1637195))

(assert (=> d!412953 m!1638031))

(assert (=> b!1434583 m!1637163))

(declare-fun m!1638037 () Bool)

(assert (=> b!1434585 m!1638037))

(assert (=> b!1434585 m!1637195))

(declare-fun m!1638039 () Bool)

(assert (=> b!1434585 m!1638039))

(declare-fun m!1638041 () Bool)

(assert (=> b!1434585 m!1638041))

(declare-fun m!1638043 () Bool)

(assert (=> b!1434585 m!1638043))

(assert (=> b!1434585 m!1637083))

(declare-fun m!1638045 () Bool)

(assert (=> b!1434585 m!1638045))

(declare-fun m!1638047 () Bool)

(assert (=> b!1434585 m!1638047))

(assert (=> b!1434585 m!1638037))

(declare-fun m!1638049 () Bool)

(assert (=> b!1434585 m!1638049))

(assert (=> b!1434585 m!1638041))

(declare-fun m!1638051 () Bool)

(assert (=> b!1434585 m!1638051))

(assert (=> b!1434585 m!1638047))

(assert (=> b!1434585 m!1638039))

(assert (=> b!1434585 m!1638045))

(declare-fun m!1638053 () Bool)

(assert (=> b!1434585 m!1638053))

(declare-fun m!1638055 () Bool)

(assert (=> b!1434585 m!1638055))

(declare-fun m!1638057 () Bool)

(assert (=> b!1434585 m!1638057))

(declare-fun m!1638059 () Bool)

(assert (=> b!1434585 m!1638059))

(assert (=> b!1434238 d!412953))

(declare-fun d!412961 () Bool)

(assert (=> d!412961 (= (head!2907 (drop!730 lt!489237 0)) (h!20331 (drop!730 lt!489237 0)))))

(assert (=> b!1434238 d!412961))

(declare-fun d!412965 () Bool)

(declare-fun lt!489542 () BalanceConc!10084)

(assert (=> d!412965 (= (list!5931 lt!489542) (originalCharacters!3485 (apply!3818 (tokens!1984 other!32) 0)))))

(assert (=> d!412965 (= lt!489542 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0)))) (value!84403 (apply!3818 (tokens!1984 other!32) 0))))))

(assert (=> d!412965 (= (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0)) lt!489542)))

(declare-fun b_lambda!44863 () Bool)

(assert (=> (not b_lambda!44863) (not d!412965)))

(declare-fun t!127260 () Bool)

(declare-fun tb!75897 () Bool)

(assert (=> (and b!1434403 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0))))) t!127260) tb!75897))

(declare-fun b!1434588 () Bool)

(declare-fun e!915788 () Bool)

(declare-fun tp!406455 () Bool)

(assert (=> b!1434588 (= e!915788 (and (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0)))) (value!84403 (apply!3818 (tokens!1984 other!32) 0))))) tp!406455))))

(declare-fun result!92218 () Bool)

(assert (=> tb!75897 (= result!92218 (and (inv!19841 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0)))) (value!84403 (apply!3818 (tokens!1984 other!32) 0)))) e!915788))))

(assert (= tb!75897 b!1434588))

(declare-fun m!1638061 () Bool)

(assert (=> b!1434588 m!1638061))

(declare-fun m!1638063 () Bool)

(assert (=> tb!75897 m!1638063))

(assert (=> d!412965 t!127260))

(declare-fun b_and!96479 () Bool)

(assert (= b_and!96473 (and (=> t!127260 result!92218) b_and!96479)))

(declare-fun t!127263 () Bool)

(declare-fun tb!75899 () Bool)

(assert (=> (and b!1434411 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0))))) t!127263) tb!75899))

(declare-fun result!92220 () Bool)

(assert (= result!92220 result!92218))

(assert (=> d!412965 t!127263))

(declare-fun b_and!96481 () Bool)

(assert (= b_and!96477 (and (=> t!127263 result!92220) b_and!96481)))

(declare-fun m!1638065 () Bool)

(assert (=> d!412965 m!1638065))

(declare-fun m!1638067 () Bool)

(assert (=> d!412965 m!1638067))

(assert (=> b!1434238 d!412965))

(declare-fun d!412967 () Bool)

(declare-fun e!915793 () Bool)

(assert (=> d!412967 e!915793))

(declare-fun res!649623 () Bool)

(assert (=> d!412967 (=> (not res!649623) (not e!915793))))

(declare-fun lt!489543 () List!14996)

(assert (=> d!412967 (= res!649623 (= ((_ map implies) (content!2205 lt!489543) (content!2205 lt!489237)) ((as const (InoxSet Token!4908)) true)))))

(declare-fun e!915796 () List!14996)

(assert (=> d!412967 (= lt!489543 e!915796)))

(declare-fun c!235758 () Bool)

(assert (=> d!412967 (= c!235758 ((_ is Nil!14930) lt!489237))))

(assert (=> d!412967 (= (drop!730 lt!489237 0) lt!489543)))

(declare-fun b!1434597 () Bool)

(declare-fun e!915797 () Int)

(declare-fun e!915795 () Int)

(assert (=> b!1434597 (= e!915797 e!915795)))

(declare-fun c!235761 () Bool)

(declare-fun call!97293 () Int)

(assert (=> b!1434597 (= c!235761 (>= 0 call!97293))))

(declare-fun b!1434598 () Bool)

(assert (=> b!1434598 (= e!915795 0)))

(declare-fun b!1434599 () Bool)

(declare-fun e!915794 () List!14996)

(assert (=> b!1434599 (= e!915794 lt!489237)))

(declare-fun b!1434600 () Bool)

(assert (=> b!1434600 (= e!915794 (drop!730 (t!127239 lt!489237) (- 0 1)))))

(declare-fun b!1434601 () Bool)

(assert (=> b!1434601 (= e!915797 call!97293)))

(declare-fun b!1434602 () Bool)

(assert (=> b!1434602 (= e!915795 (- call!97293 0))))

(declare-fun b!1434603 () Bool)

(assert (=> b!1434603 (= e!915793 (= (size!12241 lt!489543) e!915797))))

(declare-fun c!235760 () Bool)

(assert (=> b!1434603 (= c!235760 (<= 0 0))))

(declare-fun b!1434604 () Bool)

(assert (=> b!1434604 (= e!915796 e!915794)))

(declare-fun c!235759 () Bool)

(assert (=> b!1434604 (= c!235759 (<= 0 0))))

(declare-fun bm!97288 () Bool)

(assert (=> bm!97288 (= call!97293 (size!12241 lt!489237))))

(declare-fun b!1434605 () Bool)

(assert (=> b!1434605 (= e!915796 Nil!14930)))

(assert (= (and d!412967 c!235758) b!1434605))

(assert (= (and d!412967 (not c!235758)) b!1434604))

(assert (= (and b!1434604 c!235759) b!1434599))

(assert (= (and b!1434604 (not c!235759)) b!1434600))

(assert (= (and d!412967 res!649623) b!1434603))

(assert (= (and b!1434603 c!235760) b!1434601))

(assert (= (and b!1434603 (not c!235760)) b!1434597))

(assert (= (and b!1434597 c!235761) b!1434598))

(assert (= (and b!1434597 (not c!235761)) b!1434602))

(assert (= (or b!1434601 b!1434597 b!1434602) bm!97288))

(declare-fun m!1638069 () Bool)

(assert (=> d!412967 m!1638069))

(declare-fun m!1638071 () Bool)

(assert (=> d!412967 m!1638071))

(declare-fun m!1638073 () Bool)

(assert (=> b!1434600 m!1638073))

(declare-fun m!1638075 () Bool)

(assert (=> b!1434603 m!1638075))

(declare-fun m!1638077 () Bool)

(assert (=> bm!97288 m!1638077))

(assert (=> b!1434238 d!412967))

(declare-fun d!412969 () Bool)

(declare-fun e!915798 () Bool)

(assert (=> d!412969 e!915798))

(declare-fun res!649624 () Bool)

(assert (=> d!412969 (=> (not res!649624) (not e!915798))))

(declare-fun lt!489544 () List!14996)

(assert (=> d!412969 (= res!649624 (= ((_ map implies) (content!2205 lt!489544) (content!2205 lt!489240)) ((as const (InoxSet Token!4908)) true)))))

(declare-fun e!915801 () List!14996)

(assert (=> d!412969 (= lt!489544 e!915801)))

(declare-fun c!235762 () Bool)

(assert (=> d!412969 (= c!235762 ((_ is Nil!14930) lt!489240))))

(assert (=> d!412969 (= (drop!730 lt!489240 0) lt!489544)))

(declare-fun b!1434606 () Bool)

(declare-fun e!915802 () Int)

(declare-fun e!915800 () Int)

(assert (=> b!1434606 (= e!915802 e!915800)))

(declare-fun c!235765 () Bool)

(declare-fun call!97294 () Int)

(assert (=> b!1434606 (= c!235765 (>= 0 call!97294))))

(declare-fun b!1434607 () Bool)

(assert (=> b!1434607 (= e!915800 0)))

(declare-fun b!1434608 () Bool)

(declare-fun e!915799 () List!14996)

(assert (=> b!1434608 (= e!915799 lt!489240)))

(declare-fun b!1434609 () Bool)

(assert (=> b!1434609 (= e!915799 (drop!730 (t!127239 lt!489240) (- 0 1)))))

(declare-fun b!1434610 () Bool)

(assert (=> b!1434610 (= e!915802 call!97294)))

(declare-fun b!1434611 () Bool)

(assert (=> b!1434611 (= e!915800 (- call!97294 0))))

(declare-fun b!1434612 () Bool)

(assert (=> b!1434612 (= e!915798 (= (size!12241 lt!489544) e!915802))))

(declare-fun c!235764 () Bool)

(assert (=> b!1434612 (= c!235764 (<= 0 0))))

(declare-fun b!1434613 () Bool)

(assert (=> b!1434613 (= e!915801 e!915799)))

(declare-fun c!235763 () Bool)

(assert (=> b!1434613 (= c!235763 (<= 0 0))))

(declare-fun bm!97289 () Bool)

(assert (=> bm!97289 (= call!97294 (size!12241 lt!489240))))

(declare-fun b!1434614 () Bool)

(assert (=> b!1434614 (= e!915801 Nil!14930)))

(assert (= (and d!412969 c!235762) b!1434614))

(assert (= (and d!412969 (not c!235762)) b!1434613))

(assert (= (and b!1434613 c!235763) b!1434608))

(assert (= (and b!1434613 (not c!235763)) b!1434609))

(assert (= (and d!412969 res!649624) b!1434612))

(assert (= (and b!1434612 c!235764) b!1434610))

(assert (= (and b!1434612 (not c!235764)) b!1434606))

(assert (= (and b!1434606 c!235765) b!1434607))

(assert (= (and b!1434606 (not c!235765)) b!1434611))

(assert (= (or b!1434610 b!1434606 b!1434611) bm!97289))

(declare-fun m!1638079 () Bool)

(assert (=> d!412969 m!1638079))

(assert (=> d!412969 m!1638013))

(declare-fun m!1638081 () Bool)

(assert (=> b!1434609 m!1638081))

(declare-fun m!1638083 () Bool)

(assert (=> b!1434612 m!1638083))

(assert (=> bm!97289 m!1638019))

(assert (=> b!1434238 d!412969))

(declare-fun d!412971 () Bool)

(assert (=> d!412971 (= (head!2907 (drop!730 lt!489237 0)) (apply!3819 lt!489237 0))))

(declare-fun lt!489547 () Unit!22769)

(declare-fun choose!8840 (List!14996 Int) Unit!22769)

(assert (=> d!412971 (= lt!489547 (choose!8840 lt!489237 0))))

(declare-fun e!915807 () Bool)

(assert (=> d!412971 e!915807))

(declare-fun res!649627 () Bool)

(assert (=> d!412971 (=> (not res!649627) (not e!915807))))

(assert (=> d!412971 (= res!649627 (>= 0 0))))

(assert (=> d!412971 (= (lemmaDropApply!482 lt!489237 0) lt!489547)))

(declare-fun b!1434621 () Bool)

(assert (=> b!1434621 (= e!915807 (< 0 (size!12241 lt!489237)))))

(assert (= (and d!412971 res!649627) b!1434621))

(assert (=> d!412971 m!1637203))

(assert (=> d!412971 m!1637203))

(assert (=> d!412971 m!1637219))

(assert (=> d!412971 m!1637197))

(declare-fun m!1638093 () Bool)

(assert (=> d!412971 m!1638093))

(assert (=> b!1434621 m!1638077))

(assert (=> b!1434238 d!412971))

(declare-fun d!412975 () Bool)

(declare-fun lt!489565 () Token!4908)

(assert (=> d!412975 (= lt!489565 (apply!3819 (list!5932 (tokens!1984 other!32)) 0))))

(declare-fun apply!3821 (Conc!5073 Int) Token!4908)

(assert (=> d!412975 (= lt!489565 (apply!3821 (c!235662 (tokens!1984 other!32)) 0))))

(declare-fun e!915813 () Bool)

(assert (=> d!412975 e!915813))

(declare-fun res!649630 () Bool)

(assert (=> d!412975 (=> (not res!649630) (not e!915813))))

(assert (=> d!412975 (= res!649630 (<= 0 0))))

(assert (=> d!412975 (= (apply!3818 (tokens!1984 other!32) 0) lt!489565)))

(declare-fun b!1434630 () Bool)

(assert (=> b!1434630 (= e!915813 (< 0 (size!12238 (tokens!1984 other!32))))))

(assert (= (and d!412975 res!649630) b!1434630))

(assert (=> d!412975 m!1637083))

(assert (=> d!412975 m!1637083))

(declare-fun m!1638099 () Bool)

(assert (=> d!412975 m!1638099))

(declare-fun m!1638103 () Bool)

(assert (=> d!412975 m!1638103))

(assert (=> b!1434630 m!1637163))

(assert (=> b!1434238 d!412975))

(declare-fun b!1434660 () Bool)

(declare-fun e!915826 () Bool)

(declare-fun lt!489573 () BalanceConc!10084)

(assert (=> b!1434660 (= e!915826 (= (list!5931 lt!489573) (++!4001 (list!5931 (BalanceConc!10085 Empty!5072)) (list!5931 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))))))

(declare-fun d!412977 () Bool)

(assert (=> d!412977 e!915826))

(declare-fun res!649642 () Bool)

(assert (=> d!412977 (=> (not res!649642) (not e!915826))))

(declare-fun appendAssocInst!318 (Conc!5072 Conc!5072) Bool)

(assert (=> d!412977 (= res!649642 (appendAssocInst!318 (c!235660 (BalanceConc!10085 Empty!5072)) (c!235660 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0)))))))

(declare-fun ++!4005 (Conc!5072 Conc!5072) Conc!5072)

(assert (=> d!412977 (= lt!489573 (BalanceConc!10085 (++!4005 (c!235660 (BalanceConc!10085 Empty!5072)) (c!235660 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))))))

(assert (=> d!412977 (= (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))) lt!489573)))

(declare-fun b!1434658 () Bool)

(declare-fun res!649641 () Bool)

(assert (=> b!1434658 (=> (not res!649641) (not e!915826))))

(declare-fun height!740 (Conc!5072) Int)

(assert (=> b!1434658 (= res!649641 (<= (height!740 (++!4005 (c!235660 (BalanceConc!10085 Empty!5072)) (c!235660 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))) (+ (max!0 (height!740 (c!235660 (BalanceConc!10085 Empty!5072))) (height!740 (c!235660 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))) 1)))))

(declare-fun b!1434657 () Bool)

(declare-fun res!649643 () Bool)

(assert (=> b!1434657 (=> (not res!649643) (not e!915826))))

(declare-fun isBalanced!1504 (Conc!5072) Bool)

(assert (=> b!1434657 (= res!649643 (isBalanced!1504 (++!4005 (c!235660 (BalanceConc!10085 Empty!5072)) (c!235660 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))))))

(declare-fun b!1434659 () Bool)

(declare-fun res!649644 () Bool)

(assert (=> b!1434659 (=> (not res!649644) (not e!915826))))

(assert (=> b!1434659 (= res!649644 (>= (height!740 (++!4005 (c!235660 (BalanceConc!10085 Empty!5072)) (c!235660 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0))))) (max!0 (height!740 (c!235660 (BalanceConc!10085 Empty!5072))) (height!740 (c!235660 (charsOf!1515 (apply!3818 (tokens!1984 other!32) 0)))))))))

(assert (= (and d!412977 res!649642) b!1434657))

(assert (= (and b!1434657 res!649643) b!1434658))

(assert (= (and b!1434658 res!649641) b!1434659))

(assert (= (and b!1434659 res!649644) b!1434660))

(declare-fun m!1638133 () Bool)

(assert (=> b!1434657 m!1638133))

(assert (=> b!1434657 m!1638133))

(declare-fun m!1638135 () Bool)

(assert (=> b!1434657 m!1638135))

(declare-fun m!1638137 () Bool)

(assert (=> d!412977 m!1638137))

(assert (=> d!412977 m!1638133))

(declare-fun m!1638139 () Bool)

(assert (=> b!1434660 m!1638139))

(assert (=> b!1434660 m!1637173))

(assert (=> b!1434660 m!1637191))

(declare-fun m!1638141 () Bool)

(assert (=> b!1434660 m!1638141))

(assert (=> b!1434660 m!1637173))

(assert (=> b!1434660 m!1638141))

(declare-fun m!1638143 () Bool)

(assert (=> b!1434660 m!1638143))

(declare-fun m!1638145 () Bool)

(assert (=> b!1434659 m!1638145))

(declare-fun m!1638147 () Bool)

(assert (=> b!1434659 m!1638147))

(declare-fun m!1638149 () Bool)

(assert (=> b!1434659 m!1638149))

(assert (=> b!1434659 m!1638133))

(declare-fun m!1638151 () Bool)

(assert (=> b!1434659 m!1638151))

(assert (=> b!1434659 m!1638147))

(assert (=> b!1434659 m!1638145))

(assert (=> b!1434659 m!1638133))

(assert (=> b!1434658 m!1638145))

(assert (=> b!1434658 m!1638147))

(assert (=> b!1434658 m!1638149))

(assert (=> b!1434658 m!1638133))

(assert (=> b!1434658 m!1638151))

(assert (=> b!1434658 m!1638147))

(assert (=> b!1434658 m!1638145))

(assert (=> b!1434658 m!1638133))

(assert (=> b!1434238 d!412977))

(declare-fun d!412989 () Bool)

(assert (=> d!412989 (= (tail!2152 (drop!730 lt!489240 0)) (drop!730 lt!489240 (+ 0 1)))))

(declare-fun lt!489585 () Unit!22769)

(declare-fun choose!8842 (List!14996 Int) Unit!22769)

(assert (=> d!412989 (= lt!489585 (choose!8842 lt!489240 0))))

(declare-fun e!915841 () Bool)

(assert (=> d!412989 e!915841))

(declare-fun res!649650 () Bool)

(assert (=> d!412989 (=> (not res!649650) (not e!915841))))

(assert (=> d!412989 (= res!649650 (>= 0 0))))

(assert (=> d!412989 (= (lemmaDropTail!462 lt!489240 0) lt!489585)))

(declare-fun b!1434684 () Bool)

(assert (=> b!1434684 (= e!915841 (< 0 (size!12241 lt!489240)))))

(assert (= (and d!412989 res!649650) b!1434684))

(assert (=> d!412989 m!1637185))

(assert (=> d!412989 m!1637185))

(assert (=> d!412989 m!1637209))

(assert (=> d!412989 m!1637223))

(declare-fun m!1638195 () Bool)

(assert (=> d!412989 m!1638195))

(assert (=> b!1434684 m!1638019))

(assert (=> b!1434238 d!412989))

(declare-fun d!412997 () Bool)

(assert (=> d!412997 (= (tail!2152 (drop!730 lt!489240 0)) (t!127239 (drop!730 lt!489240 0)))))

(assert (=> b!1434238 d!412997))

(declare-fun d!413001 () Bool)

(declare-fun lt!489591 () Token!4908)

(declare-fun contains!2856 (List!14996 Token!4908) Bool)

(assert (=> d!413001 (contains!2856 lt!489237 lt!489591)))

(declare-fun e!915850 () Token!4908)

(assert (=> d!413001 (= lt!489591 e!915850)))

(declare-fun c!235793 () Bool)

(assert (=> d!413001 (= c!235793 (= 0 0))))

(declare-fun e!915849 () Bool)

(assert (=> d!413001 e!915849))

(declare-fun res!649656 () Bool)

(assert (=> d!413001 (=> (not res!649656) (not e!915849))))

(assert (=> d!413001 (= res!649656 (<= 0 0))))

(assert (=> d!413001 (= (apply!3819 lt!489237 0) lt!489591)))

(declare-fun b!1434694 () Bool)

(assert (=> b!1434694 (= e!915849 (< 0 (size!12241 lt!489237)))))

(declare-fun b!1434695 () Bool)

(assert (=> b!1434695 (= e!915850 (head!2907 lt!489237))))

(declare-fun b!1434696 () Bool)

(assert (=> b!1434696 (= e!915850 (apply!3819 (tail!2152 lt!489237) (- 0 1)))))

(assert (= (and d!413001 res!649656) b!1434694))

(assert (= (and d!413001 c!235793) b!1434695))

(assert (= (and d!413001 (not c!235793)) b!1434696))

(declare-fun m!1638209 () Bool)

(assert (=> d!413001 m!1638209))

(assert (=> b!1434694 m!1638077))

(declare-fun m!1638211 () Bool)

(assert (=> b!1434695 m!1638211))

(declare-fun m!1638213 () Bool)

(assert (=> b!1434696 m!1638213))

(assert (=> b!1434696 m!1638213))

(declare-fun m!1638215 () Bool)

(assert (=> b!1434696 m!1638215))

(assert (=> b!1434238 d!413001))

(declare-fun d!413005 () Bool)

(declare-fun lt!489592 () BalanceConc!10084)

(assert (=> d!413005 (= (list!5931 lt!489592) (printList!707 Lexer!2283 (list!5932 (seqFromList!1696 lt!489186))))))

(assert (=> d!413005 (= lt!489592 (printTailRec!679 Lexer!2283 (seqFromList!1696 lt!489186) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!413005 (= (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)) lt!489592)))

(declare-fun bs!341017 () Bool)

(assert (= bs!341017 d!413005))

(declare-fun m!1638217 () Bool)

(assert (=> bs!341017 m!1638217))

(assert (=> bs!341017 m!1637359))

(declare-fun m!1638219 () Bool)

(assert (=> bs!341017 m!1638219))

(assert (=> bs!341017 m!1638219))

(declare-fun m!1638221 () Bool)

(assert (=> bs!341017 m!1638221))

(assert (=> bs!341017 m!1637359))

(declare-fun m!1638223 () Bool)

(assert (=> bs!341017 m!1638223))

(assert (=> d!412823 d!413005))

(declare-fun d!413007 () Bool)

(assert (=> d!413007 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186))))) (list!5936 (c!235662 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)))))))))

(declare-fun bs!341018 () Bool)

(assert (= bs!341018 d!413007))

(declare-fun m!1638225 () Bool)

(assert (=> bs!341018 m!1638225))

(assert (=> d!412823 d!413007))

(declare-fun d!413009 () Bool)

(assert (=> d!413009 (= (isEmpty!9275 (rules!11404 other!32)) ((_ is Nil!14931) (rules!11404 other!32)))))

(assert (=> d!412823 d!413009))

(declare-fun d!413011 () Bool)

(assert (=> d!413011 (= (seqFromList!1696 lt!489186) (fromListB!727 lt!489186))))

(declare-fun bs!341019 () Bool)

(assert (= bs!341019 d!413011))

(declare-fun m!1638227 () Bool)

(assert (=> bs!341019 m!1638227))

(assert (=> d!412823 d!413011))

(declare-fun b!1434697 () Bool)

(declare-fun res!649657 () Bool)

(declare-fun e!915853 () Bool)

(assert (=> b!1434697 (=> (not res!649657) (not e!915853))))

(declare-fun lt!489593 () tuple2!14120)

(assert (=> b!1434697 (= res!649657 (= (list!5932 (_1!7946 lt!489593)) (_1!7948 (lexList!699 Lexer!2283 (rules!11404 other!32) (list!5931 (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)))))))))

(declare-fun d!413013 () Bool)

(assert (=> d!413013 e!915853))

(declare-fun res!649659 () Bool)

(assert (=> d!413013 (=> (not res!649659) (not e!915853))))

(declare-fun e!915852 () Bool)

(assert (=> d!413013 (= res!649659 e!915852)))

(declare-fun c!235794 () Bool)

(assert (=> d!413013 (= c!235794 (> (size!12238 (_1!7946 lt!489593)) 0))))

(assert (=> d!413013 (= lt!489593 (lexTailRecV2!454 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)) (BalanceConc!10085 Empty!5072) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)) (BalanceConc!10087 Empty!5073)))))

(assert (=> d!413013 (= (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186))) lt!489593)))

(declare-fun b!1434698 () Bool)

(declare-fun e!915851 () Bool)

(assert (=> b!1434698 (= e!915851 (not (isEmpty!9269 (_1!7946 lt!489593))))))

(declare-fun b!1434699 () Bool)

(assert (=> b!1434699 (= e!915853 (= (list!5931 (_2!7946 lt!489593)) (_2!7948 (lexList!699 Lexer!2283 (rules!11404 other!32) (list!5931 (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)))))))))

(declare-fun b!1434700 () Bool)

(assert (=> b!1434700 (= e!915852 (= (_2!7946 lt!489593) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186))))))

(declare-fun b!1434701 () Bool)

(assert (=> b!1434701 (= e!915852 e!915851)))

(declare-fun res!649658 () Bool)

(assert (=> b!1434701 (= res!649658 (< (size!12244 (_2!7946 lt!489593)) (size!12244 (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)))))))

(assert (=> b!1434701 (=> (not res!649658) (not e!915851))))

(assert (= (and d!413013 c!235794) b!1434701))

(assert (= (and d!413013 (not c!235794)) b!1434700))

(assert (= (and b!1434701 res!649658) b!1434698))

(assert (= (and d!413013 res!649659) b!1434697))

(assert (= (and b!1434697 res!649657) b!1434699))

(declare-fun m!1638229 () Bool)

(assert (=> b!1434699 m!1638229))

(assert (=> b!1434699 m!1637361))

(declare-fun m!1638231 () Bool)

(assert (=> b!1434699 m!1638231))

(assert (=> b!1434699 m!1638231))

(declare-fun m!1638233 () Bool)

(assert (=> b!1434699 m!1638233))

(declare-fun m!1638235 () Bool)

(assert (=> b!1434697 m!1638235))

(assert (=> b!1434697 m!1637361))

(assert (=> b!1434697 m!1638231))

(assert (=> b!1434697 m!1638231))

(assert (=> b!1434697 m!1638233))

(declare-fun m!1638237 () Bool)

(assert (=> b!1434698 m!1638237))

(declare-fun m!1638239 () Bool)

(assert (=> b!1434701 m!1638239))

(assert (=> b!1434701 m!1637361))

(declare-fun m!1638241 () Bool)

(assert (=> b!1434701 m!1638241))

(declare-fun m!1638243 () Bool)

(assert (=> d!413013 m!1638243))

(assert (=> d!413013 m!1637361))

(assert (=> d!413013 m!1637361))

(declare-fun m!1638245 () Bool)

(assert (=> d!413013 m!1638245))

(assert (=> d!412823 d!413013))

(declare-fun b!1434714 () Bool)

(declare-fun e!915861 () List!14996)

(declare-fun e!915862 () List!14996)

(assert (=> b!1434714 (= e!915861 e!915862)))

(declare-fun c!235800 () Bool)

(assert (=> b!1434714 (= c!235800 ((_ is Leaf!7586) (c!235662 (tokens!1984 other!32))))))

(declare-fun b!1434713 () Bool)

(assert (=> b!1434713 (= e!915861 Nil!14930)))

(declare-fun b!1434715 () Bool)

(declare-fun list!5938 (IArray!10151) List!14996)

(assert (=> b!1434715 (= e!915862 (list!5938 (xs!7806 (c!235662 (tokens!1984 other!32)))))))

(declare-fun b!1434716 () Bool)

(assert (=> b!1434716 (= e!915862 (++!4002 (list!5936 (left!12719 (c!235662 (tokens!1984 other!32)))) (list!5936 (right!13049 (c!235662 (tokens!1984 other!32))))))))

(declare-fun d!413015 () Bool)

(declare-fun c!235799 () Bool)

(assert (=> d!413015 (= c!235799 ((_ is Empty!5073) (c!235662 (tokens!1984 other!32))))))

(assert (=> d!413015 (= (list!5936 (c!235662 (tokens!1984 other!32))) e!915861)))

(assert (= (and d!413015 c!235799) b!1434713))

(assert (= (and d!413015 (not c!235799)) b!1434714))

(assert (= (and b!1434714 c!235800) b!1434715))

(assert (= (and b!1434714 (not c!235800)) b!1434716))

(declare-fun m!1638251 () Bool)

(assert (=> b!1434715 m!1638251))

(declare-fun m!1638253 () Bool)

(assert (=> b!1434716 m!1638253))

(declare-fun m!1638255 () Bool)

(assert (=> b!1434716 m!1638255))

(assert (=> b!1434716 m!1638253))

(assert (=> b!1434716 m!1638255))

(declare-fun m!1638257 () Bool)

(assert (=> b!1434716 m!1638257))

(assert (=> d!412833 d!413015))

(assert (=> d!412873 d!412871))

(declare-fun d!413019 () Bool)

(assert (=> d!413019 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492))) (list!5936 (c!235662 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492)))))))

(declare-fun bs!341020 () Bool)

(assert (= bs!341020 d!413019))

(declare-fun m!1638259 () Bool)

(assert (=> bs!341020 m!1638259))

(assert (=> d!412873 d!413019))

(assert (=> d!412873 d!412861))

(declare-fun d!413021 () Bool)

(declare-fun e!915865 () Bool)

(assert (=> d!413021 e!915865))

(declare-fun res!649665 () Bool)

(assert (=> d!413021 (=> (not res!649665) (not e!915865))))

(assert (=> d!413021 (= res!649665 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 (list!5932 (tokens!1984 thiss!10022))))))) (list!5932 (tokens!1984 thiss!10022))))))

(declare-fun lt!489603 () Unit!22769)

(declare-fun e!915866 () Unit!22769)

(assert (=> d!413021 (= lt!489603 e!915866)))

(declare-fun c!235801 () Bool)

(assert (=> d!413021 (= c!235801 (or ((_ is Nil!14930) (list!5932 (tokens!1984 thiss!10022))) ((_ is Nil!14930) (t!127239 (list!5932 (tokens!1984 thiss!10022))))))))

(assert (=> d!413021 (not (isEmpty!9275 (rules!11404 thiss!10022)))))

(assert (=> d!413021 (= (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) (list!5932 (tokens!1984 thiss!10022))) lt!489603)))

(declare-fun b!1434719 () Bool)

(declare-fun Unit!22831 () Unit!22769)

(assert (=> b!1434719 (= e!915866 Unit!22831)))

(declare-fun b!1434720 () Bool)

(declare-fun Unit!22832 () Unit!22769)

(assert (=> b!1434720 (= e!915866 Unit!22832)))

(declare-fun lt!489600 () BalanceConc!10084)

(assert (=> b!1434720 (= lt!489600 (print!1064 Lexer!2283 (seqFromList!1696 (list!5932 (tokens!1984 thiss!10022)))))))

(declare-fun lt!489616 () BalanceConc!10084)

(assert (=> b!1434720 (= lt!489616 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 (list!5932 (tokens!1984 thiss!10022))))))))

(declare-fun lt!489622 () tuple2!14120)

(assert (=> b!1434720 (= lt!489622 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489616))))

(declare-fun lt!489602 () List!14994)

(assert (=> b!1434720 (= lt!489602 (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022))))))))

(declare-fun lt!489609 () List!14994)

(assert (=> b!1434720 (= lt!489609 (list!5931 lt!489616))))

(declare-fun lt!489612 () Unit!22769)

(assert (=> b!1434720 (= lt!489612 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!489602 lt!489609))))

(assert (=> b!1434720 (isPrefix!1193 lt!489602 (++!4001 lt!489602 lt!489609))))

(declare-fun lt!489601 () Unit!22769)

(assert (=> b!1434720 (= lt!489601 lt!489612)))

(declare-fun lt!489621 () Unit!22769)

(assert (=> b!1434720 (= lt!489621 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) (t!127239 (list!5932 (tokens!1984 thiss!10022)))))))

(declare-fun lt!489605 () Unit!22769)

(assert (=> b!1434720 (= lt!489605 (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 (list!5932 (tokens!1984 thiss!10022)))) (t!127239 (t!127239 (list!5932 (tokens!1984 thiss!10022)))) (_1!7946 lt!489622)))))

(assert (=> b!1434720 (= (list!5932 (_1!7946 lt!489622)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 (list!5932 (tokens!1984 thiss!10022))))) (h!20331 (t!127239 (list!5932 (tokens!1984 thiss!10022)))))))))

(declare-fun lt!489598 () Unit!22769)

(assert (=> b!1434720 (= lt!489598 lt!489605)))

(declare-fun lt!489623 () Option!2849)

(assert (=> b!1434720 (= lt!489623 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!489600)))))

(assert (=> b!1434720 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 (list!5932 (tokens!1984 thiss!10022))))) (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 (list!5932 (tokens!1984 thiss!10022)))) 0 (BalanceConc!10085 Empty!5072)))))

(declare-fun lt!489606 () Unit!22769)

(declare-fun Unit!22833 () Unit!22769)

(assert (=> b!1434720 (= lt!489606 Unit!22833)))

(declare-fun lt!489615 () Unit!22769)

(assert (=> b!1434720 (= lt!489615 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022))))) (list!5931 lt!489616)))))

(assert (=> b!1434720 (= (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022))))) (originalCharacters!3485 (h!20331 (list!5932 (tokens!1984 thiss!10022)))))))

(declare-fun lt!489608 () Unit!22769)

(declare-fun Unit!22834 () Unit!22769)

(assert (=> b!1434720 (= lt!489608 Unit!22834)))

(assert (=> b!1434720 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (list!5932 (tokens!1984 thiss!10022))))) 0))) (Cons!14928 (head!2908 (originalCharacters!3485 (h!20331 (t!127239 (list!5932 (tokens!1984 thiss!10022)))))) Nil!14928))))

(declare-fun lt!489617 () Unit!22769)

(declare-fun Unit!22835 () Unit!22769)

(assert (=> b!1434720 (= lt!489617 Unit!22835)))

(assert (=> b!1434720 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (list!5932 (tokens!1984 thiss!10022))))) 0))) (Cons!14928 (head!2908 (list!5931 lt!489616)) Nil!14928))))

(declare-fun lt!489624 () Unit!22769)

(declare-fun Unit!22836 () Unit!22769)

(assert (=> b!1434720 (= lt!489624 Unit!22836)))

(assert (=> b!1434720 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (list!5932 (tokens!1984 thiss!10022))))) 0))) (Cons!14928 (head!2909 lt!489616) Nil!14928))))

(declare-fun lt!489610 () Unit!22769)

(declare-fun Unit!22837 () Unit!22769)

(assert (=> b!1434720 (= lt!489610 Unit!22837)))

(assert (=> b!1434720 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (originalCharacters!3485 (h!20331 (list!5932 (tokens!1984 thiss!10022))))))))

(declare-fun lt!489599 () Unit!22769)

(declare-fun Unit!22838 () Unit!22769)

(assert (=> b!1434720 (= lt!489599 Unit!22838)))

(assert (=> b!1434720 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022)))))))))

(declare-fun lt!489597 () Unit!22769)

(declare-fun Unit!22839 () Unit!22769)

(assert (=> b!1434720 (= lt!489597 Unit!22839)))

(declare-fun lt!489604 () Unit!22769)

(declare-fun Unit!22840 () Unit!22769)

(assert (=> b!1434720 (= lt!489604 Unit!22840)))

(assert (=> b!1434720 (= (_1!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022)))))))) (h!20331 (list!5932 (tokens!1984 thiss!10022))))))

(declare-fun lt!489611 () Unit!22769)

(declare-fun Unit!22841 () Unit!22769)

(assert (=> b!1434720 (= lt!489611 Unit!22841)))

(assert (=> b!1434720 (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022)))))))))))

(declare-fun lt!489619 () Unit!22769)

(declare-fun Unit!22842 () Unit!22769)

(assert (=> b!1434720 (= lt!489619 Unit!22842)))

(assert (=> b!1434720 (matchR!1819 (regex!2623 (rule!4386 (h!20331 (list!5932 (tokens!1984 thiss!10022))))) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 thiss!10022))))))))

(declare-fun lt!489607 () Unit!22769)

(declare-fun Unit!22843 () Unit!22769)

(assert (=> b!1434720 (= lt!489607 Unit!22843)))

(assert (=> b!1434720 (= (rule!4386 (h!20331 (list!5932 (tokens!1984 thiss!10022)))) (rule!4386 (h!20331 (list!5932 (tokens!1984 thiss!10022)))))))

(declare-fun lt!489618 () Unit!22769)

(declare-fun Unit!22844 () Unit!22769)

(assert (=> b!1434720 (= lt!489618 Unit!22844)))

(declare-fun lt!489620 () Unit!22769)

(assert (=> b!1434720 (= lt!489620 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 thiss!10022) (h!20331 (list!5932 (tokens!1984 thiss!10022))) (rule!4386 (h!20331 (list!5932 (tokens!1984 thiss!10022)))) (list!5931 lt!489616)))))

(declare-fun b!1434721 () Bool)

(assert (=> b!1434721 (= e!915865 (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 (list!5932 (tokens!1984 thiss!10022))))))))))

(assert (= (and d!413021 c!235801) b!1434719))

(assert (= (and d!413021 (not c!235801)) b!1434720))

(assert (= (and d!413021 res!649665) b!1434721))

(declare-fun m!1638269 () Bool)

(assert (=> d!413021 m!1638269))

(assert (=> d!413021 m!1637143))

(declare-fun m!1638271 () Bool)

(assert (=> d!413021 m!1638271))

(declare-fun m!1638273 () Bool)

(assert (=> d!413021 m!1638273))

(assert (=> d!413021 m!1637077))

(assert (=> d!413021 m!1638271))

(assert (=> d!413021 m!1638273))

(declare-fun m!1638275 () Bool)

(assert (=> d!413021 m!1638275))

(declare-fun m!1638277 () Bool)

(assert (=> b!1434720 m!1638277))

(declare-fun m!1638279 () Bool)

(assert (=> b!1434720 m!1638279))

(declare-fun m!1638281 () Bool)

(assert (=> b!1434720 m!1638281))

(declare-fun m!1638283 () Bool)

(assert (=> b!1434720 m!1638283))

(declare-fun m!1638285 () Bool)

(assert (=> b!1434720 m!1638285))

(declare-fun m!1638287 () Bool)

(assert (=> b!1434720 m!1638287))

(assert (=> b!1434720 m!1638283))

(declare-fun m!1638289 () Bool)

(assert (=> b!1434720 m!1638289))

(declare-fun m!1638291 () Bool)

(assert (=> b!1434720 m!1638291))

(declare-fun m!1638293 () Bool)

(assert (=> b!1434720 m!1638293))

(declare-fun m!1638295 () Bool)

(assert (=> b!1434720 m!1638295))

(declare-fun m!1638297 () Bool)

(assert (=> b!1434720 m!1638297))

(declare-fun m!1638299 () Bool)

(assert (=> b!1434720 m!1638299))

(declare-fun m!1638301 () Bool)

(assert (=> b!1434720 m!1638301))

(declare-fun m!1638303 () Bool)

(assert (=> b!1434720 m!1638303))

(declare-fun m!1638305 () Bool)

(assert (=> b!1434720 m!1638305))

(declare-fun m!1638307 () Bool)

(assert (=> b!1434720 m!1638307))

(assert (=> b!1434720 m!1637831))

(declare-fun m!1638309 () Bool)

(assert (=> b!1434720 m!1638309))

(declare-fun m!1638311 () Bool)

(assert (=> b!1434720 m!1638311))

(assert (=> b!1434720 m!1638309))

(declare-fun m!1638313 () Bool)

(assert (=> b!1434720 m!1638313))

(assert (=> b!1434720 m!1638291))

(assert (=> b!1434720 m!1638287))

(declare-fun m!1638315 () Bool)

(assert (=> b!1434720 m!1638315))

(declare-fun m!1638317 () Bool)

(assert (=> b!1434720 m!1638317))

(declare-fun m!1638319 () Bool)

(assert (=> b!1434720 m!1638319))

(declare-fun m!1638321 () Bool)

(assert (=> b!1434720 m!1638321))

(declare-fun m!1638323 () Bool)

(assert (=> b!1434720 m!1638323))

(declare-fun m!1638325 () Bool)

(assert (=> b!1434720 m!1638325))

(assert (=> b!1434720 m!1638309))

(assert (=> b!1434720 m!1638309))

(declare-fun m!1638327 () Bool)

(assert (=> b!1434720 m!1638327))

(assert (=> b!1434720 m!1638271))

(assert (=> b!1434720 m!1638273))

(assert (=> b!1434720 m!1637831))

(declare-fun m!1638329 () Bool)

(assert (=> b!1434720 m!1638329))

(assert (=> b!1434720 m!1638305))

(declare-fun m!1638331 () Bool)

(assert (=> b!1434720 m!1638331))

(assert (=> b!1434720 m!1638297))

(declare-fun m!1638333 () Bool)

(assert (=> b!1434720 m!1638333))

(declare-fun m!1638335 () Bool)

(assert (=> b!1434720 m!1638335))

(assert (=> b!1434720 m!1637077))

(assert (=> b!1434720 m!1638271))

(declare-fun m!1638337 () Bool)

(assert (=> b!1434720 m!1638337))

(assert (=> b!1434720 m!1638333))

(assert (=> b!1434720 m!1638321))

(assert (=> b!1434720 m!1637829))

(declare-fun m!1638339 () Bool)

(assert (=> b!1434720 m!1638339))

(assert (=> b!1434720 m!1637831))

(assert (=> b!1434720 m!1638283))

(assert (=> b!1434720 m!1638279))

(assert (=> b!1434720 m!1638323))

(declare-fun m!1638341 () Bool)

(assert (=> b!1434720 m!1638341))

(assert (=> b!1434720 m!1638305))

(assert (=> b!1434720 m!1637829))

(assert (=> b!1434720 m!1637831))

(declare-fun m!1638343 () Bool)

(assert (=> b!1434720 m!1638343))

(assert (=> b!1434720 m!1638319))

(assert (=> b!1434720 m!1638301))

(assert (=> b!1434721 m!1637077))

(assert (=> b!1434721 m!1638271))

(assert (=> b!1434721 m!1638271))

(assert (=> b!1434721 m!1638273))

(assert (=> b!1434721 m!1638273))

(assert (=> b!1434721 m!1638275))

(declare-fun m!1638345 () Bool)

(assert (=> b!1434721 m!1638345))

(assert (=> d!412873 d!413021))

(declare-fun b!1434738 () Bool)

(declare-fun res!649670 () Bool)

(declare-fun e!915879 () Bool)

(assert (=> b!1434738 (=> (not res!649670) (not e!915879))))

(declare-fun lt!489629 () tuple2!14120)

(assert (=> b!1434738 (= res!649670 (= (list!5932 (_1!7946 lt!489629)) (_1!7948 (lexList!699 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!489492)))))))

(declare-fun d!413027 () Bool)

(assert (=> d!413027 e!915879))

(declare-fun res!649672 () Bool)

(assert (=> d!413027 (=> (not res!649672) (not e!915879))))

(declare-fun e!915878 () Bool)

(assert (=> d!413027 (= res!649672 e!915878)))

(declare-fun c!235808 () Bool)

(assert (=> d!413027 (= c!235808 (> (size!12238 (_1!7946 lt!489629)) 0))))

(assert (=> d!413027 (= lt!489629 (lexTailRecV2!454 Lexer!2283 (rules!11404 thiss!10022) lt!489492 (BalanceConc!10085 Empty!5072) lt!489492 (BalanceConc!10087 Empty!5073)))))

(assert (=> d!413027 (= (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492) lt!489629)))

(declare-fun b!1434739 () Bool)

(declare-fun e!915877 () Bool)

(assert (=> b!1434739 (= e!915877 (not (isEmpty!9269 (_1!7946 lt!489629))))))

(declare-fun b!1434740 () Bool)

(assert (=> b!1434740 (= e!915879 (= (list!5931 (_2!7946 lt!489629)) (_2!7948 (lexList!699 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!489492)))))))

(declare-fun b!1434741 () Bool)

(assert (=> b!1434741 (= e!915878 (= (_2!7946 lt!489629) lt!489492))))

(declare-fun b!1434742 () Bool)

(assert (=> b!1434742 (= e!915878 e!915877)))

(declare-fun res!649671 () Bool)

(assert (=> b!1434742 (= res!649671 (< (size!12244 (_2!7946 lt!489629)) (size!12244 lt!489492)))))

(assert (=> b!1434742 (=> (not res!649671) (not e!915877))))

(assert (= (and d!413027 c!235808) b!1434742))

(assert (= (and d!413027 (not c!235808)) b!1434741))

(assert (= (and b!1434742 res!649671) b!1434739))

(assert (= (and d!413027 res!649672) b!1434738))

(assert (= (and b!1434738 res!649670) b!1434740))

(declare-fun m!1638349 () Bool)

(assert (=> b!1434740 m!1638349))

(declare-fun m!1638351 () Bool)

(assert (=> b!1434740 m!1638351))

(assert (=> b!1434740 m!1638351))

(declare-fun m!1638355 () Bool)

(assert (=> b!1434740 m!1638355))

(declare-fun m!1638359 () Bool)

(assert (=> b!1434738 m!1638359))

(assert (=> b!1434738 m!1638351))

(assert (=> b!1434738 m!1638351))

(assert (=> b!1434738 m!1638355))

(declare-fun m!1638363 () Bool)

(assert (=> b!1434739 m!1638363))

(declare-fun m!1638365 () Bool)

(assert (=> b!1434742 m!1638365))

(declare-fun m!1638367 () Bool)

(assert (=> b!1434742 m!1638367))

(declare-fun m!1638369 () Bool)

(assert (=> d!413027 m!1638369))

(declare-fun m!1638371 () Bool)

(assert (=> d!413027 m!1638371))

(assert (=> d!412873 d!413027))

(declare-fun d!413031 () Bool)

(assert (not d!413031))

(assert (=> b!1434380 d!413031))

(declare-fun d!413035 () Bool)

(assert (not d!413035))

(assert (=> b!1434380 d!413035))

(declare-fun d!413037 () Bool)

(assert (not d!413037))

(assert (=> b!1434380 d!413037))

(declare-fun d!413039 () Bool)

(assert (not d!413039))

(assert (=> b!1434380 d!413039))

(declare-fun d!413043 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!114 (LexerInterface!2285 BalanceConc!10086 Int List!14997) Bool)

(assert (=> d!413043 (= (separableTokens!225 Lexer!2283 (tokens!1984 thiss!10022) (rules!11404 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!114 Lexer!2283 (tokens!1984 thiss!10022) 0 (rules!11404 thiss!10022)))))

(declare-fun bs!341022 () Bool)

(assert (= bs!341022 d!413043))

(declare-fun m!1638407 () Bool)

(assert (=> bs!341022 m!1638407))

(assert (=> b!1434203 d!413043))

(assert (=> b!1434211 d!412807))

(assert (=> b!1434211 d!412809))

(assert (=> b!1434211 d!412811))

(assert (=> b!1434211 d!412813))

(declare-fun d!413049 () Bool)

(declare-fun lt!489638 () Int)

(assert (=> d!413049 (= lt!489638 (size!12241 (list!5932 (tokens!1984 other!32))))))

(assert (=> d!413049 (= lt!489638 (size!12242 (c!235662 (tokens!1984 other!32))))))

(assert (=> d!413049 (= (size!12238 (tokens!1984 other!32)) lt!489638)))

(declare-fun bs!341023 () Bool)

(assert (= bs!341023 d!413049))

(assert (=> bs!341023 m!1637083))

(assert (=> bs!341023 m!1637083))

(declare-fun m!1638409 () Bool)

(assert (=> bs!341023 m!1638409))

(assert (=> bs!341023 m!1637883))

(assert (=> b!1434236 d!413049))

(declare-fun d!413051 () Bool)

(assert (=> d!413051 (= (inv!19841 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))) (isBalanced!1504 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))))))

(declare-fun bs!341024 () Bool)

(assert (= bs!341024 d!413051))

(declare-fun m!1638411 () Bool)

(assert (=> bs!341024 m!1638411))

(assert (=> tb!75893 d!413051))

(declare-fun b!1434766 () Bool)

(declare-fun e!915890 () Bool)

(declare-fun lt!489639 () List!14996)

(assert (=> b!1434766 (= e!915890 (or (not (= Nil!14930 Nil!14930)) (= lt!489639 (t!127239 lt!489190))))))

(declare-fun b!1434764 () Bool)

(declare-fun e!915891 () List!14996)

(assert (=> b!1434764 (= e!915891 (Cons!14930 (h!20331 (t!127239 lt!489190)) (++!4002 (t!127239 (t!127239 lt!489190)) Nil!14930)))))

(declare-fun d!413053 () Bool)

(assert (=> d!413053 e!915890))

(declare-fun res!649687 () Bool)

(assert (=> d!413053 (=> (not res!649687) (not e!915890))))

(assert (=> d!413053 (= res!649687 (= (content!2205 lt!489639) ((_ map or) (content!2205 (t!127239 lt!489190)) (content!2205 Nil!14930))))))

(assert (=> d!413053 (= lt!489639 e!915891)))

(declare-fun c!235813 () Bool)

(assert (=> d!413053 (= c!235813 ((_ is Nil!14930) (t!127239 lt!489190)))))

(assert (=> d!413053 (= (++!4002 (t!127239 lt!489190) Nil!14930) lt!489639)))

(declare-fun b!1434763 () Bool)

(assert (=> b!1434763 (= e!915891 Nil!14930)))

(declare-fun b!1434765 () Bool)

(declare-fun res!649688 () Bool)

(assert (=> b!1434765 (=> (not res!649688) (not e!915890))))

(assert (=> b!1434765 (= res!649688 (= (size!12241 lt!489639) (+ (size!12241 (t!127239 lt!489190)) (size!12241 Nil!14930))))))

(assert (= (and d!413053 c!235813) b!1434763))

(assert (= (and d!413053 (not c!235813)) b!1434764))

(assert (= (and d!413053 res!649687) b!1434765))

(assert (= (and b!1434765 res!649688) b!1434766))

(declare-fun m!1638413 () Bool)

(assert (=> b!1434764 m!1638413))

(declare-fun m!1638415 () Bool)

(assert (=> d!413053 m!1638415))

(declare-fun m!1638417 () Bool)

(assert (=> d!413053 m!1638417))

(assert (=> d!413053 m!1637773))

(declare-fun m!1638419 () Bool)

(assert (=> b!1434765 m!1638419))

(declare-fun m!1638421 () Bool)

(assert (=> b!1434765 m!1638421))

(assert (=> b!1434765 m!1637779))

(assert (=> b!1434377 d!413053))

(declare-fun b!1434770 () Bool)

(declare-fun e!915892 () Bool)

(declare-fun lt!489640 () List!14994)

(assert (=> b!1434770 (= e!915892 (or (not (= (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186))) Nil!14928)) (= lt!489640 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))))))))

(declare-fun b!1434769 () Bool)

(declare-fun res!649690 () Bool)

(assert (=> b!1434769 (=> (not res!649690) (not e!915892))))

(assert (=> b!1434769 (= res!649690 (= (size!12239 lt!489640) (+ (size!12239 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))) (size!12239 (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186)))))))))

(declare-fun b!1434767 () Bool)

(declare-fun e!915893 () List!14994)

(assert (=> b!1434767 (= e!915893 (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186))))))

(declare-fun b!1434768 () Bool)

(assert (=> b!1434768 (= e!915893 (Cons!14928 (h!20329 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))) (++!4001 (t!127237 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))) (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186))))))))

(declare-fun d!413055 () Bool)

(assert (=> d!413055 e!915892))

(declare-fun res!649689 () Bool)

(assert (=> d!413055 (=> (not res!649689) (not e!915892))))

(assert (=> d!413055 (= res!649689 (= (content!2203 lt!489640) ((_ map or) (content!2203 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))) (content!2203 (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186)))))))))

(assert (=> d!413055 (= lt!489640 e!915893)))

(declare-fun c!235814 () Bool)

(assert (=> d!413055 (= c!235814 ((_ is Nil!14928) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))))))

(assert (=> d!413055 (= (++!4001 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))) (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186)))) lt!489640)))

(assert (= (and d!413055 c!235814) b!1434767))

(assert (= (and d!413055 (not c!235814)) b!1434768))

(assert (= (and d!413055 res!649689) b!1434769))

(assert (= (and b!1434769 res!649690) b!1434770))

(declare-fun m!1638423 () Bool)

(assert (=> b!1434769 m!1638423))

(assert (=> b!1434769 m!1637253))

(declare-fun m!1638425 () Bool)

(assert (=> b!1434769 m!1638425))

(assert (=> b!1434769 m!1637255))

(declare-fun m!1638427 () Bool)

(assert (=> b!1434769 m!1638427))

(assert (=> b!1434768 m!1637255))

(declare-fun m!1638429 () Bool)

(assert (=> b!1434768 m!1638429))

(declare-fun m!1638431 () Bool)

(assert (=> d!413055 m!1638431))

(assert (=> d!413055 m!1637253))

(declare-fun m!1638433 () Bool)

(assert (=> d!413055 m!1638433))

(assert (=> d!413055 m!1637255))

(declare-fun m!1638435 () Bool)

(assert (=> d!413055 m!1638435))

(assert (=> b!1434259 d!413055))

(declare-fun d!413057 () Bool)

(assert (=> d!413057 (= (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))) (list!5935 (c!235660 (charsOf!1515 (h!20331 (t!127239 lt!489186))))))))

(declare-fun bs!341025 () Bool)

(assert (= bs!341025 d!413057))

(declare-fun m!1638437 () Bool)

(assert (=> bs!341025 m!1638437))

(assert (=> b!1434259 d!413057))

(declare-fun d!413059 () Bool)

(declare-fun lt!489641 () BalanceConc!10084)

(assert (=> d!413059 (= (list!5931 lt!489641) (originalCharacters!3485 (h!20331 (t!127239 lt!489186))))))

(assert (=> d!413059 (= lt!489641 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186))))) (value!84403 (h!20331 (t!127239 lt!489186)))))))

(assert (=> d!413059 (= (charsOf!1515 (h!20331 (t!127239 lt!489186))) lt!489641)))

(declare-fun b_lambda!44867 () Bool)

(assert (=> (not b_lambda!44867) (not d!413059)))

(declare-fun t!127270 () Bool)

(declare-fun tb!75905 () Bool)

(assert (=> (and b!1434403 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186)))))) t!127270) tb!75905))

(declare-fun b!1434771 () Bool)

(declare-fun e!915894 () Bool)

(declare-fun tp!406457 () Bool)

(assert (=> b!1434771 (= e!915894 (and (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186))))) (value!84403 (h!20331 (t!127239 lt!489186)))))) tp!406457))))

(declare-fun result!92226 () Bool)

(assert (=> tb!75905 (= result!92226 (and (inv!19841 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186))))) (value!84403 (h!20331 (t!127239 lt!489186))))) e!915894))))

(assert (= tb!75905 b!1434771))

(declare-fun m!1638439 () Bool)

(assert (=> b!1434771 m!1638439))

(declare-fun m!1638441 () Bool)

(assert (=> tb!75905 m!1638441))

(assert (=> d!413059 t!127270))

(declare-fun b_and!96487 () Bool)

(assert (= b_and!96479 (and (=> t!127270 result!92226) b_and!96487)))

(declare-fun t!127272 () Bool)

(declare-fun tb!75907 () Bool)

(assert (=> (and b!1434411 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186)))))) t!127272) tb!75907))

(declare-fun result!92228 () Bool)

(assert (= result!92228 result!92226))

(assert (=> d!413059 t!127272))

(declare-fun b_and!96489 () Bool)

(assert (= b_and!96481 (and (=> t!127272 result!92228) b_and!96489)))

(declare-fun m!1638443 () Bool)

(assert (=> d!413059 m!1638443))

(declare-fun m!1638445 () Bool)

(assert (=> d!413059 m!1638445))

(assert (=> b!1434259 d!413059))

(declare-fun d!413061 () Bool)

(declare-fun c!235815 () Bool)

(assert (=> d!413061 (= c!235815 ((_ is Cons!14930) (t!127239 (t!127239 lt!489186))))))

(declare-fun e!915895 () List!14994)

(assert (=> d!413061 (= (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489186))) e!915895)))

(declare-fun b!1434772 () Bool)

(assert (=> b!1434772 (= e!915895 (++!4001 (list!5931 (charsOf!1515 (h!20331 (t!127239 (t!127239 lt!489186))))) (printList!707 Lexer!2283 (t!127239 (t!127239 (t!127239 lt!489186))))))))

(declare-fun b!1434773 () Bool)

(assert (=> b!1434773 (= e!915895 Nil!14928)))

(assert (= (and d!413061 c!235815) b!1434772))

(assert (= (and d!413061 (not c!235815)) b!1434773))

(declare-fun m!1638447 () Bool)

(assert (=> b!1434772 m!1638447))

(assert (=> b!1434772 m!1638447))

(declare-fun m!1638449 () Bool)

(assert (=> b!1434772 m!1638449))

(declare-fun m!1638451 () Bool)

(assert (=> b!1434772 m!1638451))

(assert (=> b!1434772 m!1638449))

(assert (=> b!1434772 m!1638451))

(declare-fun m!1638453 () Bool)

(assert (=> b!1434772 m!1638453))

(assert (=> b!1434259 d!413061))

(declare-fun b!1434777 () Bool)

(declare-fun lt!489642 () List!14994)

(declare-fun e!915896 () Bool)

(assert (=> b!1434777 (= e!915896 (or (not (= lt!489182 Nil!14928)) (= lt!489642 (t!127237 lt!489183))))))

(declare-fun b!1434776 () Bool)

(declare-fun res!649692 () Bool)

(assert (=> b!1434776 (=> (not res!649692) (not e!915896))))

(assert (=> b!1434776 (= res!649692 (= (size!12239 lt!489642) (+ (size!12239 (t!127237 lt!489183)) (size!12239 lt!489182))))))

(declare-fun b!1434774 () Bool)

(declare-fun e!915897 () List!14994)

(assert (=> b!1434774 (= e!915897 lt!489182)))

(declare-fun b!1434775 () Bool)

(assert (=> b!1434775 (= e!915897 (Cons!14928 (h!20329 (t!127237 lt!489183)) (++!4001 (t!127237 (t!127237 lt!489183)) lt!489182)))))

(declare-fun d!413063 () Bool)

(assert (=> d!413063 e!915896))

(declare-fun res!649691 () Bool)

(assert (=> d!413063 (=> (not res!649691) (not e!915896))))

(assert (=> d!413063 (= res!649691 (= (content!2203 lt!489642) ((_ map or) (content!2203 (t!127237 lt!489183)) (content!2203 lt!489182))))))

(assert (=> d!413063 (= lt!489642 e!915897)))

(declare-fun c!235816 () Bool)

(assert (=> d!413063 (= c!235816 ((_ is Nil!14928) (t!127237 lt!489183)))))

(assert (=> d!413063 (= (++!4001 (t!127237 lt!489183) lt!489182) lt!489642)))

(assert (= (and d!413063 c!235816) b!1434774))

(assert (= (and d!413063 (not c!235816)) b!1434775))

(assert (= (and d!413063 res!649691) b!1434776))

(assert (= (and b!1434776 res!649692) b!1434777))

(declare-fun m!1638455 () Bool)

(assert (=> b!1434776 m!1638455))

(declare-fun m!1638457 () Bool)

(assert (=> b!1434776 m!1638457))

(assert (=> b!1434776 m!1637651))

(declare-fun m!1638459 () Bool)

(assert (=> b!1434775 m!1638459))

(declare-fun m!1638461 () Bool)

(assert (=> d!413063 m!1638461))

(assert (=> d!413063 m!1637875))

(assert (=> d!413063 m!1637659))

(assert (=> b!1434359 d!413063))

(declare-fun d!413065 () Bool)

(assert (=> d!413065 (= (inv!19839 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))) (<= (size!12241 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022))))) 2147483647))))

(declare-fun bs!341026 () Bool)

(assert (= bs!341026 d!413065))

(declare-fun m!1638463 () Bool)

(assert (=> bs!341026 m!1638463))

(assert (=> b!1434391 d!413065))

(declare-fun d!413067 () Bool)

(declare-fun res!649693 () Bool)

(declare-fun e!915898 () Bool)

(assert (=> d!413067 (=> (not res!649693) (not e!915898))))

(assert (=> d!413067 (= res!649693 (rulesValid!959 Lexer!2283 (rules!11404 thiss!10022)))))

(assert (=> d!413067 (= (rulesInvariant!2123 Lexer!2283 (rules!11404 thiss!10022)) e!915898)))

(declare-fun b!1434778 () Bool)

(assert (=> b!1434778 (= e!915898 (noDuplicateTag!959 Lexer!2283 (rules!11404 thiss!10022) Nil!14932))))

(assert (= (and d!413067 res!649693) b!1434778))

(declare-fun m!1638465 () Bool)

(assert (=> d!413067 m!1638465))

(declare-fun m!1638467 () Bool)

(assert (=> b!1434778 m!1638467))

(assert (=> b!1434201 d!413067))

(declare-fun bs!341027 () Bool)

(declare-fun d!413069 () Bool)

(assert (= bs!341027 (and d!413069 d!412923)))

(declare-fun lambda!62827 () Int)

(assert (=> bs!341027 (= (= (rules!11404 thiss!10022) (rules!11404 other!32)) (= lambda!62827 lambda!62820))))

(declare-fun b!1434782 () Bool)

(declare-fun e!915902 () Bool)

(assert (=> b!1434782 (= e!915902 true)))

(declare-fun b!1434781 () Bool)

(declare-fun e!915901 () Bool)

(assert (=> b!1434781 (= e!915901 e!915902)))

(declare-fun b!1434780 () Bool)

(declare-fun e!915900 () Bool)

(assert (=> b!1434780 (= e!915900 e!915901)))

(assert (=> d!413069 e!915900))

(assert (= b!1434781 b!1434782))

(assert (= b!1434780 b!1434781))

(assert (= (and d!413069 ((_ is Cons!14931) (rules!11404 thiss!10022))) b!1434780))

(assert (=> b!1434782 (< (dynLambda!6802 order!8967 (toValue!3926 (transformation!2623 (h!20332 (rules!11404 thiss!10022))))) (dynLambda!6803 order!8969 lambda!62827))))

(assert (=> b!1434782 (< (dynLambda!6804 order!8971 (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022))))) (dynLambda!6803 order!8969 lambda!62827))))

(assert (=> d!413069 true))

(declare-fun e!915899 () Bool)

(assert (=> d!413069 e!915899))

(declare-fun res!649694 () Bool)

(assert (=> d!413069 (=> (not res!649694) (not e!915899))))

(declare-fun lt!489643 () Bool)

(assert (=> d!413069 (= res!649694 (= lt!489643 (forall!3667 (list!5932 (tokens!1984 thiss!10022)) lambda!62827)))))

(assert (=> d!413069 (= lt!489643 (forall!3668 (tokens!1984 thiss!10022) lambda!62827))))

(assert (=> d!413069 (not (isEmpty!9275 (rules!11404 thiss!10022)))))

(assert (=> d!413069 (= (rulesProduceEachTokenIndividually!841 Lexer!2283 (rules!11404 thiss!10022) (tokens!1984 thiss!10022)) lt!489643)))

(declare-fun b!1434779 () Bool)

(assert (=> b!1434779 (= e!915899 (= lt!489643 (rulesProduceEachTokenIndividuallyList!721 Lexer!2283 (rules!11404 thiss!10022) (list!5932 (tokens!1984 thiss!10022)))))))

(assert (= (and d!413069 res!649694) b!1434779))

(assert (=> d!413069 m!1637077))

(assert (=> d!413069 m!1637077))

(declare-fun m!1638469 () Bool)

(assert (=> d!413069 m!1638469))

(declare-fun m!1638471 () Bool)

(assert (=> d!413069 m!1638471))

(assert (=> d!413069 m!1637143))

(assert (=> b!1434779 m!1637077))

(assert (=> b!1434779 m!1637077))

(declare-fun m!1638473 () Bool)

(assert (=> b!1434779 m!1638473))

(assert (=> b!1434243 d!413069))

(declare-fun b!1434786 () Bool)

(declare-fun e!915903 () Bool)

(declare-fun lt!489644 () List!14994)

(assert (=> b!1434786 (= e!915903 (or (not (= (printList!707 Lexer!2283 (t!127239 lt!489185)) Nil!14928)) (= lt!489644 (list!5931 (charsOf!1515 (h!20331 lt!489185))))))))

(declare-fun b!1434785 () Bool)

(declare-fun res!649696 () Bool)

(assert (=> b!1434785 (=> (not res!649696) (not e!915903))))

(assert (=> b!1434785 (= res!649696 (= (size!12239 lt!489644) (+ (size!12239 (list!5931 (charsOf!1515 (h!20331 lt!489185)))) (size!12239 (printList!707 Lexer!2283 (t!127239 lt!489185))))))))

(declare-fun b!1434783 () Bool)

(declare-fun e!915904 () List!14994)

(assert (=> b!1434783 (= e!915904 (printList!707 Lexer!2283 (t!127239 lt!489185)))))

(declare-fun b!1434784 () Bool)

(assert (=> b!1434784 (= e!915904 (Cons!14928 (h!20329 (list!5931 (charsOf!1515 (h!20331 lt!489185)))) (++!4001 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489185)))) (printList!707 Lexer!2283 (t!127239 lt!489185)))))))

(declare-fun d!413071 () Bool)

(assert (=> d!413071 e!915903))

(declare-fun res!649695 () Bool)

(assert (=> d!413071 (=> (not res!649695) (not e!915903))))

(assert (=> d!413071 (= res!649695 (= (content!2203 lt!489644) ((_ map or) (content!2203 (list!5931 (charsOf!1515 (h!20331 lt!489185)))) (content!2203 (printList!707 Lexer!2283 (t!127239 lt!489185))))))))

(assert (=> d!413071 (= lt!489644 e!915904)))

(declare-fun c!235817 () Bool)

(assert (=> d!413071 (= c!235817 ((_ is Nil!14928) (list!5931 (charsOf!1515 (h!20331 lt!489185)))))))

(assert (=> d!413071 (= (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489185))) (printList!707 Lexer!2283 (t!127239 lt!489185))) lt!489644)))

(assert (= (and d!413071 c!235817) b!1434783))

(assert (= (and d!413071 (not c!235817)) b!1434784))

(assert (= (and d!413071 res!649695) b!1434785))

(assert (= (and b!1434785 res!649696) b!1434786))

(declare-fun m!1638475 () Bool)

(assert (=> b!1434785 m!1638475))

(assert (=> b!1434785 m!1637663))

(declare-fun m!1638477 () Bool)

(assert (=> b!1434785 m!1638477))

(assert (=> b!1434785 m!1637665))

(declare-fun m!1638479 () Bool)

(assert (=> b!1434785 m!1638479))

(assert (=> b!1434784 m!1637665))

(declare-fun m!1638481 () Bool)

(assert (=> b!1434784 m!1638481))

(declare-fun m!1638483 () Bool)

(assert (=> d!413071 m!1638483))

(assert (=> d!413071 m!1637663))

(declare-fun m!1638485 () Bool)

(assert (=> d!413071 m!1638485))

(assert (=> d!413071 m!1637665))

(declare-fun m!1638487 () Bool)

(assert (=> d!413071 m!1638487))

(assert (=> b!1434362 d!413071))

(declare-fun d!413073 () Bool)

(assert (=> d!413073 (= (list!5931 (charsOf!1515 (h!20331 lt!489185))) (list!5935 (c!235660 (charsOf!1515 (h!20331 lt!489185)))))))

(declare-fun bs!341028 () Bool)

(assert (= bs!341028 d!413073))

(declare-fun m!1638489 () Bool)

(assert (=> bs!341028 m!1638489))

(assert (=> b!1434362 d!413073))

(declare-fun d!413075 () Bool)

(declare-fun lt!489645 () BalanceConc!10084)

(assert (=> d!413075 (= (list!5931 lt!489645) (originalCharacters!3485 (h!20331 lt!489185)))))

(assert (=> d!413075 (= lt!489645 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185)))) (value!84403 (h!20331 lt!489185))))))

(assert (=> d!413075 (= (charsOf!1515 (h!20331 lt!489185)) lt!489645)))

(declare-fun b_lambda!44869 () Bool)

(assert (=> (not b_lambda!44869) (not d!413075)))

(declare-fun t!127274 () Bool)

(declare-fun tb!75909 () Bool)

(assert (=> (and b!1434403 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185))))) t!127274) tb!75909))

(declare-fun b!1434787 () Bool)

(declare-fun e!915905 () Bool)

(declare-fun tp!406458 () Bool)

(assert (=> b!1434787 (= e!915905 (and (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185)))) (value!84403 (h!20331 lt!489185))))) tp!406458))))

(declare-fun result!92230 () Bool)

(assert (=> tb!75909 (= result!92230 (and (inv!19841 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185)))) (value!84403 (h!20331 lt!489185)))) e!915905))))

(assert (= tb!75909 b!1434787))

(declare-fun m!1638491 () Bool)

(assert (=> b!1434787 m!1638491))

(declare-fun m!1638493 () Bool)

(assert (=> tb!75909 m!1638493))

(assert (=> d!413075 t!127274))

(declare-fun b_and!96491 () Bool)

(assert (= b_and!96487 (and (=> t!127274 result!92230) b_and!96491)))

(declare-fun tb!75911 () Bool)

(declare-fun t!127276 () Bool)

(assert (=> (and b!1434411 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185))))) t!127276) tb!75911))

(declare-fun result!92232 () Bool)

(assert (= result!92232 result!92230))

(assert (=> d!413075 t!127276))

(declare-fun b_and!96493 () Bool)

(assert (= b_and!96489 (and (=> t!127276 result!92232) b_and!96493)))

(declare-fun m!1638495 () Bool)

(assert (=> d!413075 m!1638495))

(declare-fun m!1638497 () Bool)

(assert (=> d!413075 m!1638497))

(assert (=> b!1434362 d!413075))

(declare-fun d!413077 () Bool)

(declare-fun c!235818 () Bool)

(assert (=> d!413077 (= c!235818 ((_ is Cons!14930) (t!127239 lt!489185)))))

(declare-fun e!915906 () List!14994)

(assert (=> d!413077 (= (printList!707 Lexer!2283 (t!127239 lt!489185)) e!915906)))

(declare-fun b!1434788 () Bool)

(assert (=> b!1434788 (= e!915906 (++!4001 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489185)))) (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489185)))))))

(declare-fun b!1434789 () Bool)

(assert (=> b!1434789 (= e!915906 Nil!14928)))

(assert (= (and d!413077 c!235818) b!1434788))

(assert (= (and d!413077 (not c!235818)) b!1434789))

(declare-fun m!1638499 () Bool)

(assert (=> b!1434788 m!1638499))

(assert (=> b!1434788 m!1638499))

(declare-fun m!1638501 () Bool)

(assert (=> b!1434788 m!1638501))

(declare-fun m!1638503 () Bool)

(assert (=> b!1434788 m!1638503))

(assert (=> b!1434788 m!1638501))

(assert (=> b!1434788 m!1638503))

(declare-fun m!1638505 () Bool)

(assert (=> b!1434788 m!1638505))

(assert (=> b!1434362 d!413077))

(declare-fun b!1434793 () Bool)

(declare-fun e!915907 () Bool)

(declare-fun lt!489646 () List!14994)

(assert (=> b!1434793 (= e!915907 (or (not (= (printList!707 Lexer!2283 (t!127239 lt!489186)) Nil!14928)) (= lt!489646 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))

(declare-fun b!1434792 () Bool)

(declare-fun res!649698 () Bool)

(assert (=> b!1434792 (=> (not res!649698) (not e!915907))))

(assert (=> b!1434792 (= res!649698 (= (size!12239 lt!489646) (+ (size!12239 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186))))) (size!12239 (printList!707 Lexer!2283 (t!127239 lt!489186))))))))

(declare-fun b!1434790 () Bool)

(declare-fun e!915908 () List!14994)

(assert (=> b!1434790 (= e!915908 (printList!707 Lexer!2283 (t!127239 lt!489186)))))

(declare-fun b!1434791 () Bool)

(assert (=> b!1434791 (= e!915908 (Cons!14928 (h!20329 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186))))) (++!4001 (t!127237 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186))))) (printList!707 Lexer!2283 (t!127239 lt!489186)))))))

(declare-fun d!413079 () Bool)

(assert (=> d!413079 e!915907))

(declare-fun res!649697 () Bool)

(assert (=> d!413079 (=> (not res!649697) (not e!915907))))

(assert (=> d!413079 (= res!649697 (= (content!2203 lt!489646) ((_ map or) (content!2203 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186))))) (content!2203 (printList!707 Lexer!2283 (t!127239 lt!489186))))))))

(assert (=> d!413079 (= lt!489646 e!915908)))

(declare-fun c!235819 () Bool)

(assert (=> d!413079 (= c!235819 ((_ is Nil!14928) (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))))

(assert (=> d!413079 (= (++!4001 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) (printList!707 Lexer!2283 (t!127239 lt!489186))) lt!489646)))

(assert (= (and d!413079 c!235819) b!1434790))

(assert (= (and d!413079 (not c!235819)) b!1434791))

(assert (= (and d!413079 res!649697) b!1434792))

(assert (= (and b!1434792 res!649698) b!1434793))

(declare-fun m!1638507 () Bool)

(assert (=> b!1434792 m!1638507))

(declare-fun m!1638509 () Bool)

(assert (=> b!1434792 m!1638509))

(assert (=> b!1434792 m!1637053))

(assert (=> b!1434792 m!1637235))

(assert (=> b!1434791 m!1637053))

(declare-fun m!1638511 () Bool)

(assert (=> b!1434791 m!1638511))

(declare-fun m!1638513 () Bool)

(assert (=> d!413079 m!1638513))

(declare-fun m!1638515 () Bool)

(assert (=> d!413079 m!1638515))

(assert (=> d!413079 m!1637053))

(assert (=> d!413079 m!1637243))

(assert (=> b!1434256 d!413079))

(declare-fun d!413081 () Bool)

(declare-fun c!235822 () Bool)

(assert (=> d!413081 (= c!235822 ((_ is Node!5072) (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))))))

(declare-fun e!915913 () Bool)

(assert (=> d!413081 (= (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))) e!915913)))

(declare-fun b!1434800 () Bool)

(declare-fun inv!19843 (Conc!5072) Bool)

(assert (=> b!1434800 (= e!915913 (inv!19843 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))))))

(declare-fun b!1434801 () Bool)

(declare-fun e!915914 () Bool)

(assert (=> b!1434801 (= e!915913 e!915914)))

(declare-fun res!649701 () Bool)

(assert (=> b!1434801 (= res!649701 (not ((_ is Leaf!7585) (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))))))))

(assert (=> b!1434801 (=> res!649701 e!915914)))

(declare-fun b!1434802 () Bool)

(declare-fun inv!19844 (Conc!5072) Bool)

(assert (=> b!1434802 (= e!915914 (inv!19844 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))))))

(assert (= (and d!413081 c!235822) b!1434800))

(assert (= (and d!413081 (not c!235822)) b!1434801))

(assert (= (and b!1434801 (not res!649701)) b!1434802))

(declare-fun m!1638519 () Bool)

(assert (=> b!1434800 m!1638519))

(declare-fun m!1638521 () Bool)

(assert (=> b!1434802 m!1638521))

(assert (=> b!1434408 d!413081))

(declare-fun d!413087 () Bool)

(assert (=> d!413087 (= (separableTokens!225 Lexer!2283 (tokens!1984 other!32) (rules!11404 other!32)) (tokensListTwoByTwoPredicateSeparable!114 Lexer!2283 (tokens!1984 other!32) 0 (rules!11404 other!32)))))

(declare-fun bs!341031 () Bool)

(assert (= bs!341031 d!413087))

(declare-fun m!1638523 () Bool)

(assert (=> bs!341031 m!1638523))

(assert (=> b!1434206 d!413087))

(declare-fun d!413089 () Bool)

(declare-fun res!649708 () Bool)

(declare-fun e!915920 () Bool)

(assert (=> d!413089 (=> (not res!649708) (not e!915920))))

(assert (=> d!413089 (= res!649708 (<= (size!12241 (list!5938 (xs!7806 (c!235662 (tokens!1984 other!32))))) 512))))

(assert (=> d!413089 (= (inv!19834 (c!235662 (tokens!1984 other!32))) e!915920)))

(declare-fun b!1434813 () Bool)

(declare-fun res!649709 () Bool)

(assert (=> b!1434813 (=> (not res!649709) (not e!915920))))

(assert (=> b!1434813 (= res!649709 (= (csize!10377 (c!235662 (tokens!1984 other!32))) (size!12241 (list!5938 (xs!7806 (c!235662 (tokens!1984 other!32)))))))))

(declare-fun b!1434814 () Bool)

(assert (=> b!1434814 (= e!915920 (and (> (csize!10377 (c!235662 (tokens!1984 other!32))) 0) (<= (csize!10377 (c!235662 (tokens!1984 other!32))) 512)))))

(assert (= (and d!413089 res!649708) b!1434813))

(assert (= (and b!1434813 res!649709) b!1434814))

(assert (=> d!413089 m!1638251))

(assert (=> d!413089 m!1638251))

(declare-fun m!1638547 () Bool)

(assert (=> d!413089 m!1638547))

(assert (=> b!1434813 m!1638251))

(assert (=> b!1434813 m!1638251))

(assert (=> b!1434813 m!1638547))

(assert (=> b!1434272 d!413089))

(declare-fun d!413095 () Bool)

(declare-fun lt!489648 () Bool)

(assert (=> d!413095 (= lt!489648 (isEmpty!9278 (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)))))))))

(assert (=> d!413095 (= lt!489648 (isEmpty!9281 (c!235660 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186)))))))))

(assert (=> d!413095 (= (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 lt!489186))))) lt!489648)))

(declare-fun bs!341032 () Bool)

(assert (= bs!341032 d!413095))

(declare-fun m!1638549 () Bool)

(assert (=> bs!341032 m!1638549))

(assert (=> bs!341032 m!1638549))

(declare-fun m!1638551 () Bool)

(assert (=> bs!341032 m!1638551))

(declare-fun m!1638553 () Bool)

(assert (=> bs!341032 m!1638553))

(assert (=> b!1434292 d!413095))

(assert (=> b!1434292 d!413013))

(assert (=> b!1434292 d!413005))

(assert (=> b!1434292 d!413011))

(declare-fun d!413097 () Bool)

(assert (=> d!413097 (= (isEmpty!9278 (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459)))) ((_ is Nil!14928) (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459)))))))

(assert (=> b!1434357 d!413097))

(declare-fun d!413099 () Bool)

(assert (=> d!413099 (= (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459))) (list!5935 (c!235660 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459)))))))

(declare-fun bs!341033 () Bool)

(assert (= bs!341033 d!413099))

(declare-fun m!1638555 () Bool)

(assert (=> bs!341033 m!1638555))

(assert (=> b!1434357 d!413099))

(declare-fun b!1434823 () Bool)

(declare-fun res!649710 () Bool)

(declare-fun e!915927 () Bool)

(assert (=> b!1434823 (=> (not res!649710) (not e!915927))))

(declare-fun lt!489649 () tuple2!14120)

(assert (=> b!1434823 (= res!649710 (= (list!5932 (_1!7946 lt!489649)) (_1!7948 (lexList!699 Lexer!2283 (rules!11404 other!32) (list!5931 lt!489459)))))))

(declare-fun d!413101 () Bool)

(assert (=> d!413101 e!915927))

(declare-fun res!649712 () Bool)

(assert (=> d!413101 (=> (not res!649712) (not e!915927))))

(declare-fun e!915926 () Bool)

(assert (=> d!413101 (= res!649712 e!915926)))

(declare-fun c!235829 () Bool)

(assert (=> d!413101 (= c!235829 (> (size!12238 (_1!7946 lt!489649)) 0))))

(assert (=> d!413101 (= lt!489649 (lexTailRecV2!454 Lexer!2283 (rules!11404 other!32) lt!489459 (BalanceConc!10085 Empty!5072) lt!489459 (BalanceConc!10087 Empty!5073)))))

(assert (=> d!413101 (= (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459) lt!489649)))

(declare-fun b!1434824 () Bool)

(declare-fun e!915925 () Bool)

(assert (=> b!1434824 (= e!915925 (not (isEmpty!9269 (_1!7946 lt!489649))))))

(declare-fun b!1434825 () Bool)

(assert (=> b!1434825 (= e!915927 (= (list!5931 (_2!7946 lt!489649)) (_2!7948 (lexList!699 Lexer!2283 (rules!11404 other!32) (list!5931 lt!489459)))))))

(declare-fun b!1434826 () Bool)

(assert (=> b!1434826 (= e!915926 (= (_2!7946 lt!489649) lt!489459))))

(declare-fun b!1434827 () Bool)

(assert (=> b!1434827 (= e!915926 e!915925)))

(declare-fun res!649711 () Bool)

(assert (=> b!1434827 (= res!649711 (< (size!12244 (_2!7946 lt!489649)) (size!12244 lt!489459)))))

(assert (=> b!1434827 (=> (not res!649711) (not e!915925))))

(assert (= (and d!413101 c!235829) b!1434827))

(assert (= (and d!413101 (not c!235829)) b!1434826))

(assert (= (and b!1434827 res!649711) b!1434824))

(assert (= (and d!413101 res!649712) b!1434823))

(assert (= (and b!1434823 res!649710) b!1434825))

(declare-fun m!1638565 () Bool)

(assert (=> b!1434825 m!1638565))

(declare-fun m!1638567 () Bool)

(assert (=> b!1434825 m!1638567))

(assert (=> b!1434825 m!1638567))

(declare-fun m!1638569 () Bool)

(assert (=> b!1434825 m!1638569))

(declare-fun m!1638571 () Bool)

(assert (=> b!1434823 m!1638571))

(assert (=> b!1434823 m!1638567))

(assert (=> b!1434823 m!1638567))

(assert (=> b!1434823 m!1638569))

(declare-fun m!1638573 () Bool)

(assert (=> b!1434824 m!1638573))

(declare-fun m!1638575 () Bool)

(assert (=> b!1434827 m!1638575))

(declare-fun m!1638577 () Bool)

(assert (=> b!1434827 m!1638577))

(declare-fun m!1638579 () Bool)

(assert (=> d!413101 m!1638579))

(declare-fun m!1638581 () Bool)

(assert (=> d!413101 m!1638581))

(assert (=> b!1434357 d!413101))

(declare-fun b!1434844 () Bool)

(declare-fun e!915936 () List!14994)

(declare-fun e!915937 () List!14994)

(assert (=> b!1434844 (= e!915936 e!915937)))

(declare-fun c!235838 () Bool)

(assert (=> b!1434844 (= c!235838 ((_ is Leaf!7585) (c!235660 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun b!1434846 () Bool)

(assert (=> b!1434846 (= e!915937 (++!4001 (list!5935 (left!12718 (c!235660 (charsOf!1515 (h!20331 lt!489186))))) (list!5935 (right!13048 (c!235660 (charsOf!1515 (h!20331 lt!489186)))))))))

(declare-fun b!1434843 () Bool)

(assert (=> b!1434843 (= e!915936 Nil!14928)))

(declare-fun d!413105 () Bool)

(declare-fun c!235837 () Bool)

(assert (=> d!413105 (= c!235837 ((_ is Empty!5072) (c!235660 (charsOf!1515 (h!20331 lt!489186)))))))

(assert (=> d!413105 (= (list!5935 (c!235660 (charsOf!1515 (h!20331 lt!489186)))) e!915936)))

(declare-fun b!1434845 () Bool)

(declare-fun list!5940 (IArray!10149) List!14994)

(assert (=> b!1434845 (= e!915937 (list!5940 (xs!7805 (c!235660 (charsOf!1515 (h!20331 lt!489186))))))))

(assert (= (and d!413105 c!235837) b!1434843))

(assert (= (and d!413105 (not c!235837)) b!1434844))

(assert (= (and b!1434844 c!235838) b!1434845))

(assert (= (and b!1434844 (not c!235838)) b!1434846))

(declare-fun m!1638613 () Bool)

(assert (=> b!1434846 m!1638613))

(declare-fun m!1638617 () Bool)

(assert (=> b!1434846 m!1638617))

(assert (=> b!1434846 m!1638613))

(assert (=> b!1434846 m!1638617))

(declare-fun m!1638623 () Bool)

(assert (=> b!1434846 m!1638623))

(declare-fun m!1638627 () Bool)

(assert (=> b!1434845 m!1638627))

(assert (=> d!412809 d!413105))

(declare-fun b!1434908 () Bool)

(declare-fun e!915973 () Option!2849)

(declare-fun lt!489705 () Option!2849)

(declare-fun lt!489708 () Option!2849)

(assert (=> b!1434908 (= e!915973 (ite (and ((_ is None!2848) lt!489705) ((_ is None!2848) lt!489708)) None!2848 (ite ((_ is None!2848) lt!489708) lt!489705 (ite ((_ is None!2848) lt!489705) lt!489708 (ite (>= (size!12235 (_1!7947 (v!22358 lt!489705))) (size!12235 (_1!7947 (v!22358 lt!489708)))) lt!489705 lt!489708)))))))

(declare-fun call!97302 () Option!2849)

(assert (=> b!1434908 (= lt!489705 call!97302)))

(assert (=> b!1434908 (= lt!489708 (maxPrefix!1183 Lexer!2283 (t!127240 (rules!11404 other!32)) (list!5931 lt!489384)))))

(declare-fun b!1434909 () Bool)

(declare-fun e!915971 () Bool)

(declare-fun e!915972 () Bool)

(assert (=> b!1434909 (= e!915971 e!915972)))

(declare-fun res!649757 () Bool)

(assert (=> b!1434909 (=> (not res!649757) (not e!915972))))

(declare-fun lt!489707 () Option!2849)

(assert (=> b!1434909 (= res!649757 (isDefined!2306 lt!489707))))

(declare-fun b!1434910 () Bool)

(declare-fun contains!2858 (List!14997 Rule!5046) Bool)

(assert (=> b!1434910 (= e!915972 (contains!2858 (rules!11404 other!32) (rule!4386 (_1!7947 (get!4569 lt!489707)))))))

(declare-fun d!413107 () Bool)

(assert (=> d!413107 e!915971))

(declare-fun res!649755 () Bool)

(assert (=> d!413107 (=> res!649755 e!915971)))

(declare-fun isEmpty!9282 (Option!2849) Bool)

(assert (=> d!413107 (= res!649755 (isEmpty!9282 lt!489707))))

(assert (=> d!413107 (= lt!489707 e!915973)))

(declare-fun c!235851 () Bool)

(assert (=> d!413107 (= c!235851 (and ((_ is Cons!14931) (rules!11404 other!32)) ((_ is Nil!14931) (t!127240 (rules!11404 other!32)))))))

(declare-fun lt!489704 () Unit!22769)

(declare-fun lt!489706 () Unit!22769)

(assert (=> d!413107 (= lt!489704 lt!489706)))

(assert (=> d!413107 (isPrefix!1193 (list!5931 lt!489384) (list!5931 lt!489384))))

(declare-fun lemmaIsPrefixRefl!826 (List!14994 List!14994) Unit!22769)

(assert (=> d!413107 (= lt!489706 (lemmaIsPrefixRefl!826 (list!5931 lt!489384) (list!5931 lt!489384)))))

(declare-fun rulesValidInductive!813 (LexerInterface!2285 List!14997) Bool)

(assert (=> d!413107 (rulesValidInductive!813 Lexer!2283 (rules!11404 other!32))))

(assert (=> d!413107 (= (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 lt!489384)) lt!489707)))

(declare-fun b!1434911 () Bool)

(declare-fun res!649752 () Bool)

(assert (=> b!1434911 (=> (not res!649752) (not e!915972))))

(assert (=> b!1434911 (= res!649752 (< (size!12239 (_2!7947 (get!4569 lt!489707))) (size!12239 (list!5931 lt!489384))))))

(declare-fun b!1434912 () Bool)

(assert (=> b!1434912 (= e!915973 call!97302)))

(declare-fun bm!97297 () Bool)

(declare-fun maxPrefixOneRule!652 (LexerInterface!2285 Rule!5046 List!14994) Option!2849)

(assert (=> bm!97297 (= call!97302 (maxPrefixOneRule!652 Lexer!2283 (h!20332 (rules!11404 other!32)) (list!5931 lt!489384)))))

(declare-fun b!1434913 () Bool)

(declare-fun res!649753 () Bool)

(assert (=> b!1434913 (=> (not res!649753) (not e!915972))))

(assert (=> b!1434913 (= res!649753 (matchR!1819 (regex!2623 (rule!4386 (_1!7947 (get!4569 lt!489707)))) (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!489707))))))))

(declare-fun b!1434914 () Bool)

(declare-fun res!649751 () Bool)

(assert (=> b!1434914 (=> (not res!649751) (not e!915972))))

(assert (=> b!1434914 (= res!649751 (= (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!489707)))) (originalCharacters!3485 (_1!7947 (get!4569 lt!489707)))))))

(declare-fun b!1434915 () Bool)

(declare-fun res!649756 () Bool)

(assert (=> b!1434915 (=> (not res!649756) (not e!915972))))

(declare-fun apply!3823 (TokenValueInjection!5086 BalanceConc!10084) TokenValue!2713)

(declare-fun seqFromList!1697 (List!14994) BalanceConc!10084)

(assert (=> b!1434915 (= res!649756 (= (value!84403 (_1!7947 (get!4569 lt!489707))) (apply!3823 (transformation!2623 (rule!4386 (_1!7947 (get!4569 lt!489707)))) (seqFromList!1697 (originalCharacters!3485 (_1!7947 (get!4569 lt!489707)))))))))

(declare-fun b!1434916 () Bool)

(declare-fun res!649754 () Bool)

(assert (=> b!1434916 (=> (not res!649754) (not e!915972))))

(assert (=> b!1434916 (= res!649754 (= (++!4001 (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!489707)))) (_2!7947 (get!4569 lt!489707))) (list!5931 lt!489384)))))

(assert (= (and d!413107 c!235851) b!1434912))

(assert (= (and d!413107 (not c!235851)) b!1434908))

(assert (= (or b!1434912 b!1434908) bm!97297))

(assert (= (and d!413107 (not res!649755)) b!1434909))

(assert (= (and b!1434909 res!649757) b!1434914))

(assert (= (and b!1434914 res!649751) b!1434911))

(assert (= (and b!1434911 res!649752) b!1434916))

(assert (= (and b!1434916 res!649754) b!1434915))

(assert (= (and b!1434915 res!649756) b!1434913))

(assert (= (and b!1434913 res!649753) b!1434910))

(assert (=> bm!97297 m!1637379))

(declare-fun m!1638783 () Bool)

(assert (=> bm!97297 m!1638783))

(declare-fun m!1638785 () Bool)

(assert (=> b!1434914 m!1638785))

(declare-fun m!1638787 () Bool)

(assert (=> b!1434914 m!1638787))

(assert (=> b!1434914 m!1638787))

(declare-fun m!1638789 () Bool)

(assert (=> b!1434914 m!1638789))

(assert (=> b!1434910 m!1638785))

(declare-fun m!1638791 () Bool)

(assert (=> b!1434910 m!1638791))

(assert (=> b!1434908 m!1637379))

(declare-fun m!1638793 () Bool)

(assert (=> b!1434908 m!1638793))

(assert (=> b!1434916 m!1638785))

(assert (=> b!1434916 m!1638787))

(assert (=> b!1434916 m!1638787))

(assert (=> b!1434916 m!1638789))

(assert (=> b!1434916 m!1638789))

(declare-fun m!1638795 () Bool)

(assert (=> b!1434916 m!1638795))

(assert (=> b!1434913 m!1638785))

(assert (=> b!1434913 m!1638787))

(assert (=> b!1434913 m!1638787))

(assert (=> b!1434913 m!1638789))

(assert (=> b!1434913 m!1638789))

(declare-fun m!1638797 () Bool)

(assert (=> b!1434913 m!1638797))

(assert (=> b!1434911 m!1638785))

(declare-fun m!1638799 () Bool)

(assert (=> b!1434911 m!1638799))

(assert (=> b!1434911 m!1637379))

(declare-fun m!1638801 () Bool)

(assert (=> b!1434911 m!1638801))

(assert (=> b!1434915 m!1638785))

(declare-fun m!1638803 () Bool)

(assert (=> b!1434915 m!1638803))

(assert (=> b!1434915 m!1638803))

(declare-fun m!1638805 () Bool)

(assert (=> b!1434915 m!1638805))

(declare-fun m!1638807 () Bool)

(assert (=> d!413107 m!1638807))

(assert (=> d!413107 m!1637379))

(assert (=> d!413107 m!1637379))

(declare-fun m!1638809 () Bool)

(assert (=> d!413107 m!1638809))

(assert (=> d!413107 m!1637379))

(assert (=> d!413107 m!1637379))

(declare-fun m!1638811 () Bool)

(assert (=> d!413107 m!1638811))

(declare-fun m!1638813 () Bool)

(assert (=> d!413107 m!1638813))

(declare-fun m!1638815 () Bool)

(assert (=> b!1434909 m!1638815))

(assert (=> b!1434291 d!413107))

(declare-fun d!413161 () Bool)

(assert (=> d!413161 (= (seqFromList!1696 (t!127239 lt!489186)) (fromListB!727 (t!127239 lt!489186)))))

(declare-fun bs!341042 () Bool)

(assert (= bs!341042 d!413161))

(declare-fun m!1638817 () Bool)

(assert (=> bs!341042 m!1638817))

(assert (=> b!1434291 d!413161))

(declare-fun d!413163 () Bool)

(assert (=> d!413163 (= (head!2908 (list!5931 lt!489398)) (h!20329 (list!5931 lt!489398)))))

(assert (=> b!1434291 d!413163))

(declare-fun b!1434917 () Bool)

(declare-fun e!915976 () Option!2849)

(declare-fun lt!489710 () Option!2849)

(declare-fun lt!489713 () Option!2849)

(assert (=> b!1434917 (= e!915976 (ite (and ((_ is None!2848) lt!489710) ((_ is None!2848) lt!489713)) None!2848 (ite ((_ is None!2848) lt!489713) lt!489710 (ite ((_ is None!2848) lt!489710) lt!489713 (ite (>= (size!12235 (_1!7947 (v!22358 lt!489710))) (size!12235 (_1!7947 (v!22358 lt!489713)))) lt!489710 lt!489713)))))))

(declare-fun call!97303 () Option!2849)

(assert (=> b!1434917 (= lt!489710 call!97303)))

(assert (=> b!1434917 (= lt!489713 (maxPrefix!1183 Lexer!2283 (t!127240 (rules!11404 other!32)) (originalCharacters!3485 (h!20331 lt!489186))))))

(declare-fun b!1434918 () Bool)

(declare-fun e!915974 () Bool)

(declare-fun e!915975 () Bool)

(assert (=> b!1434918 (= e!915974 e!915975)))

(declare-fun res!649764 () Bool)

(assert (=> b!1434918 (=> (not res!649764) (not e!915975))))

(declare-fun lt!489712 () Option!2849)

(assert (=> b!1434918 (= res!649764 (isDefined!2306 lt!489712))))

(declare-fun b!1434919 () Bool)

(assert (=> b!1434919 (= e!915975 (contains!2858 (rules!11404 other!32) (rule!4386 (_1!7947 (get!4569 lt!489712)))))))

(declare-fun d!413165 () Bool)

(assert (=> d!413165 e!915974))

(declare-fun res!649762 () Bool)

(assert (=> d!413165 (=> res!649762 e!915974)))

(assert (=> d!413165 (= res!649762 (isEmpty!9282 lt!489712))))

(assert (=> d!413165 (= lt!489712 e!915976)))

(declare-fun c!235852 () Bool)

(assert (=> d!413165 (= c!235852 (and ((_ is Cons!14931) (rules!11404 other!32)) ((_ is Nil!14931) (t!127240 (rules!11404 other!32)))))))

(declare-fun lt!489709 () Unit!22769)

(declare-fun lt!489711 () Unit!22769)

(assert (=> d!413165 (= lt!489709 lt!489711)))

(assert (=> d!413165 (isPrefix!1193 (originalCharacters!3485 (h!20331 lt!489186)) (originalCharacters!3485 (h!20331 lt!489186)))))

(assert (=> d!413165 (= lt!489711 (lemmaIsPrefixRefl!826 (originalCharacters!3485 (h!20331 lt!489186)) (originalCharacters!3485 (h!20331 lt!489186))))))

(assert (=> d!413165 (rulesValidInductive!813 Lexer!2283 (rules!11404 other!32))))

(assert (=> d!413165 (= (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (originalCharacters!3485 (h!20331 lt!489186))) lt!489712)))

(declare-fun b!1434920 () Bool)

(declare-fun res!649759 () Bool)

(assert (=> b!1434920 (=> (not res!649759) (not e!915975))))

(assert (=> b!1434920 (= res!649759 (< (size!12239 (_2!7947 (get!4569 lt!489712))) (size!12239 (originalCharacters!3485 (h!20331 lt!489186)))))))

(declare-fun b!1434921 () Bool)

(assert (=> b!1434921 (= e!915976 call!97303)))

(declare-fun bm!97298 () Bool)

(assert (=> bm!97298 (= call!97303 (maxPrefixOneRule!652 Lexer!2283 (h!20332 (rules!11404 other!32)) (originalCharacters!3485 (h!20331 lt!489186))))))

(declare-fun b!1434922 () Bool)

(declare-fun res!649760 () Bool)

(assert (=> b!1434922 (=> (not res!649760) (not e!915975))))

(assert (=> b!1434922 (= res!649760 (matchR!1819 (regex!2623 (rule!4386 (_1!7947 (get!4569 lt!489712)))) (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!489712))))))))

(declare-fun b!1434923 () Bool)

(declare-fun res!649758 () Bool)

(assert (=> b!1434923 (=> (not res!649758) (not e!915975))))

(assert (=> b!1434923 (= res!649758 (= (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!489712)))) (originalCharacters!3485 (_1!7947 (get!4569 lt!489712)))))))

(declare-fun b!1434924 () Bool)

(declare-fun res!649763 () Bool)

(assert (=> b!1434924 (=> (not res!649763) (not e!915975))))

(assert (=> b!1434924 (= res!649763 (= (value!84403 (_1!7947 (get!4569 lt!489712))) (apply!3823 (transformation!2623 (rule!4386 (_1!7947 (get!4569 lt!489712)))) (seqFromList!1697 (originalCharacters!3485 (_1!7947 (get!4569 lt!489712)))))))))

(declare-fun b!1434925 () Bool)

(declare-fun res!649761 () Bool)

(assert (=> b!1434925 (=> (not res!649761) (not e!915975))))

(assert (=> b!1434925 (= res!649761 (= (++!4001 (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!489712)))) (_2!7947 (get!4569 lt!489712))) (originalCharacters!3485 (h!20331 lt!489186))))))

(assert (= (and d!413165 c!235852) b!1434921))

(assert (= (and d!413165 (not c!235852)) b!1434917))

(assert (= (or b!1434921 b!1434917) bm!97298))

(assert (= (and d!413165 (not res!649762)) b!1434918))

(assert (= (and b!1434918 res!649764) b!1434923))

(assert (= (and b!1434923 res!649758) b!1434920))

(assert (= (and b!1434920 res!649759) b!1434925))

(assert (= (and b!1434925 res!649761) b!1434924))

(assert (= (and b!1434924 res!649763) b!1434922))

(assert (= (and b!1434922 res!649760) b!1434919))

(declare-fun m!1638819 () Bool)

(assert (=> bm!97298 m!1638819))

(declare-fun m!1638821 () Bool)

(assert (=> b!1434923 m!1638821))

(declare-fun m!1638823 () Bool)

(assert (=> b!1434923 m!1638823))

(assert (=> b!1434923 m!1638823))

(declare-fun m!1638825 () Bool)

(assert (=> b!1434923 m!1638825))

(assert (=> b!1434919 m!1638821))

(declare-fun m!1638827 () Bool)

(assert (=> b!1434919 m!1638827))

(declare-fun m!1638829 () Bool)

(assert (=> b!1434917 m!1638829))

(assert (=> b!1434925 m!1638821))

(assert (=> b!1434925 m!1638823))

(assert (=> b!1434925 m!1638823))

(assert (=> b!1434925 m!1638825))

(assert (=> b!1434925 m!1638825))

(declare-fun m!1638831 () Bool)

(assert (=> b!1434925 m!1638831))

(assert (=> b!1434922 m!1638821))

(assert (=> b!1434922 m!1638823))

(assert (=> b!1434922 m!1638823))

(assert (=> b!1434922 m!1638825))

(assert (=> b!1434922 m!1638825))

(declare-fun m!1638833 () Bool)

(assert (=> b!1434922 m!1638833))

(assert (=> b!1434920 m!1638821))

(declare-fun m!1638835 () Bool)

(assert (=> b!1434920 m!1638835))

(declare-fun m!1638837 () Bool)

(assert (=> b!1434920 m!1638837))

(assert (=> b!1434924 m!1638821))

(declare-fun m!1638839 () Bool)

(assert (=> b!1434924 m!1638839))

(assert (=> b!1434924 m!1638839))

(declare-fun m!1638841 () Bool)

(assert (=> b!1434924 m!1638841))

(declare-fun m!1638843 () Bool)

(assert (=> d!413165 m!1638843))

(declare-fun m!1638845 () Bool)

(assert (=> d!413165 m!1638845))

(declare-fun m!1638847 () Bool)

(assert (=> d!413165 m!1638847))

(assert (=> d!413165 m!1638813))

(declare-fun m!1638849 () Bool)

(assert (=> b!1434918 m!1638849))

(assert (=> b!1434291 d!413165))

(declare-fun d!413167 () Bool)

(declare-fun lt!489716 () C!8052)

(assert (=> d!413167 (= lt!489716 (head!2908 (list!5931 lt!489398)))))

(declare-fun head!2910 (Conc!5072) C!8052)

(assert (=> d!413167 (= lt!489716 (head!2910 (c!235660 lt!489398)))))

(assert (=> d!413167 (not (isEmpty!9279 lt!489398))))

(assert (=> d!413167 (= (head!2909 lt!489398) lt!489716)))

(declare-fun bs!341043 () Bool)

(assert (= bs!341043 d!413167))

(assert (=> bs!341043 m!1637397))

(assert (=> bs!341043 m!1637397))

(assert (=> bs!341043 m!1637415))

(declare-fun m!1638851 () Bool)

(assert (=> bs!341043 m!1638851))

(declare-fun m!1638853 () Bool)

(assert (=> bs!341043 m!1638853))

(assert (=> b!1434291 d!413167))

(declare-fun d!413169 () Bool)

(assert (=> d!413169 (= (seqFromList!1696 (t!127239 (t!127239 lt!489186))) (fromListB!727 (t!127239 (t!127239 lt!489186))))))

(declare-fun bs!341044 () Bool)

(assert (= bs!341044 d!413169))

(declare-fun m!1638855 () Bool)

(assert (=> bs!341044 m!1638855))

(assert (=> b!1434291 d!413169))

(declare-fun b!1434970 () Bool)

(declare-fun res!649797 () Bool)

(declare-fun e!915993 () Bool)

(assert (=> b!1434970 (=> (not res!649797) (not e!915993))))

(declare-fun lt!489787 () Token!4908)

(declare-datatypes ((Option!2850 0))(
  ( (None!2849) (Some!2849 (v!22361 Rule!5046)) )
))
(declare-fun get!4570 (Option!2850) Rule!5046)

(declare-fun getRuleFromTag!215 (LexerInterface!2285 List!14997 String!17821) Option!2850)

(assert (=> b!1434970 (= res!649797 (matchR!1819 (regex!2623 (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 other!32) (tag!2885 (rule!4386 lt!489787))))) (list!5931 (charsOf!1515 lt!489787))))))

(declare-fun d!413171 () Bool)

(assert (=> d!413171 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398))))))

(declare-fun lt!489779 () Unit!22769)

(declare-fun e!915994 () Unit!22769)

(assert (=> d!413171 (= lt!489779 e!915994)))

(declare-fun c!235859 () Bool)

(assert (=> d!413171 (= c!235859 (isEmpty!9282 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)))))))

(declare-fun lt!489776 () Unit!22769)

(declare-fun lt!489783 () Unit!22769)

(assert (=> d!413171 (= lt!489776 lt!489783)))

(assert (=> d!413171 e!915993))

(declare-fun res!649798 () Bool)

(assert (=> d!413171 (=> (not res!649798) (not e!915993))))

(declare-fun isDefined!2307 (Option!2850) Bool)

(assert (=> d!413171 (= res!649798 (isDefined!2307 (getRuleFromTag!215 Lexer!2283 (rules!11404 other!32) (tag!2885 (rule!4386 lt!489787)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!215 (LexerInterface!2285 List!14997 List!14994 Token!4908) Unit!22769)

(assert (=> d!413171 (= lt!489783 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!215 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))) lt!489787))))

(declare-fun lt!489780 () Unit!22769)

(declare-fun lt!489777 () Unit!22769)

(assert (=> d!413171 (= lt!489780 lt!489777)))

(declare-fun lt!489788 () List!14994)

(assert (=> d!413171 (isPrefix!1193 lt!489788 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!101 (List!14994 List!14994 List!14994) Unit!22769)

(assert (=> d!413171 (= lt!489777 (lemmaPrefixStaysPrefixWhenAddingToSuffix!101 lt!489788 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)))))

(assert (=> d!413171 (= lt!489788 (list!5931 (charsOf!1515 lt!489787)))))

(declare-fun lt!489773 () Unit!22769)

(declare-fun lt!489775 () Unit!22769)

(assert (=> d!413171 (= lt!489773 lt!489775)))

(declare-fun lt!489784 () List!14994)

(declare-fun lt!489774 () List!14994)

(assert (=> d!413171 (isPrefix!1193 lt!489784 (++!4001 lt!489784 lt!489774))))

(assert (=> d!413171 (= lt!489775 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!489784 lt!489774))))

(assert (=> d!413171 (= lt!489774 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))

(assert (=> d!413171 (= lt!489784 (list!5931 (charsOf!1515 lt!489787)))))

(assert (=> d!413171 (= lt!489787 (head!2907 (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (seqFromList!1697 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))))

(assert (=> d!413171 (not (isEmpty!9275 (rules!11404 other!32)))))

(assert (=> d!413171 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)) lt!489779)))

(declare-fun b!1434972 () Bool)

(declare-fun Unit!22859 () Unit!22769)

(assert (=> b!1434972 (= e!915994 Unit!22859)))

(declare-fun lt!489778 () List!14994)

(assert (=> b!1434972 (= lt!489778 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)))))

(declare-fun lt!489781 () Unit!22769)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!109 (LexerInterface!2285 Rule!5046 List!14997 List!14994) Unit!22769)

(assert (=> b!1434972 (= lt!489781 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!109 Lexer!2283 (rule!4386 lt!489787) (rules!11404 other!32) lt!489778))))

(assert (=> b!1434972 (isEmpty!9282 (maxPrefixOneRule!652 Lexer!2283 (rule!4386 lt!489787) lt!489778))))

(declare-fun lt!489789 () Unit!22769)

(assert (=> b!1434972 (= lt!489789 lt!489781)))

(declare-fun lt!489785 () List!14994)

(assert (=> b!1434972 (= lt!489785 (list!5931 (charsOf!1515 lt!489787)))))

(declare-fun lt!489786 () Unit!22769)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!105 (LexerInterface!2285 Rule!5046 List!14994 List!14994) Unit!22769)

(assert (=> b!1434972 (= lt!489786 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!105 Lexer!2283 (rule!4386 lt!489787) lt!489785 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398))))))

(assert (=> b!1434972 (not (matchR!1819 (regex!2623 (rule!4386 lt!489787)) lt!489785))))

(declare-fun lt!489782 () Unit!22769)

(assert (=> b!1434972 (= lt!489782 lt!489786)))

(assert (=> b!1434972 false))

(declare-fun b!1434973 () Bool)

(declare-fun Unit!22860 () Unit!22769)

(assert (=> b!1434973 (= e!915994 Unit!22860)))

(declare-fun b!1434971 () Bool)

(assert (=> b!1434971 (= e!915993 (= (rule!4386 lt!489787) (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 other!32) (tag!2885 (rule!4386 lt!489787))))))))

(assert (= (and d!413171 res!649798) b!1434970))

(assert (= (and b!1434970 res!649797) b!1434971))

(assert (= (and d!413171 c!235859) b!1434972))

(assert (= (and d!413171 (not c!235859)) b!1434973))

(declare-fun m!1638937 () Bool)

(assert (=> b!1434970 m!1638937))

(declare-fun m!1638939 () Bool)

(assert (=> b!1434970 m!1638939))

(declare-fun m!1638941 () Bool)

(assert (=> b!1434970 m!1638941))

(declare-fun m!1638943 () Bool)

(assert (=> b!1434970 m!1638943))

(assert (=> b!1434970 m!1638937))

(assert (=> b!1434970 m!1638943))

(assert (=> b!1434970 m!1638941))

(declare-fun m!1638945 () Bool)

(assert (=> b!1434970 m!1638945))

(assert (=> d!413171 m!1637151))

(assert (=> d!413171 m!1637371))

(assert (=> d!413171 m!1637373))

(assert (=> d!413171 m!1637051))

(assert (=> d!413171 m!1637397))

(declare-fun m!1638947 () Bool)

(assert (=> d!413171 m!1638947))

(declare-fun m!1638949 () Bool)

(assert (=> d!413171 m!1638949))

(declare-fun m!1638951 () Bool)

(assert (=> d!413171 m!1638951))

(assert (=> d!413171 m!1637051))

(declare-fun m!1638953 () Bool)

(assert (=> d!413171 m!1638953))

(declare-fun m!1638955 () Bool)

(assert (=> d!413171 m!1638955))

(declare-fun m!1638957 () Bool)

(assert (=> d!413171 m!1638957))

(declare-fun m!1638959 () Bool)

(assert (=> d!413171 m!1638959))

(declare-fun m!1638961 () Bool)

(assert (=> d!413171 m!1638961))

(assert (=> d!413171 m!1638941))

(assert (=> d!413171 m!1637051))

(declare-fun m!1638963 () Bool)

(assert (=> d!413171 m!1638963))

(assert (=> d!413171 m!1638943))

(declare-fun m!1638965 () Bool)

(assert (=> d!413171 m!1638965))

(assert (=> d!413171 m!1638965))

(declare-fun m!1638967 () Bool)

(assert (=> d!413171 m!1638967))

(assert (=> d!413171 m!1637051))

(assert (=> d!413171 m!1637397))

(assert (=> d!413171 m!1638959))

(assert (=> d!413171 m!1638951))

(declare-fun m!1638969 () Bool)

(assert (=> d!413171 m!1638969))

(assert (=> d!413171 m!1638959))

(assert (=> d!413171 m!1638955))

(assert (=> d!413171 m!1638941))

(declare-fun m!1638971 () Bool)

(assert (=> d!413171 m!1638971))

(assert (=> d!413171 m!1637051))

(assert (=> d!413171 m!1637371))

(assert (=> d!413171 m!1638955))

(declare-fun m!1638973 () Bool)

(assert (=> d!413171 m!1638973))

(assert (=> d!413171 m!1638943))

(assert (=> d!413171 m!1638937))

(assert (=> d!413171 m!1638953))

(declare-fun m!1638975 () Bool)

(assert (=> d!413171 m!1638975))

(declare-fun m!1638977 () Bool)

(assert (=> b!1434972 m!1638977))

(declare-fun m!1638979 () Bool)

(assert (=> b!1434972 m!1638979))

(assert (=> b!1434972 m!1637051))

(assert (=> b!1434972 m!1637397))

(assert (=> b!1434972 m!1638959))

(declare-fun m!1638981 () Bool)

(assert (=> b!1434972 m!1638981))

(assert (=> b!1434972 m!1638977))

(assert (=> b!1434972 m!1638943))

(assert (=> b!1434972 m!1638937))

(declare-fun m!1638983 () Bool)

(assert (=> b!1434972 m!1638983))

(assert (=> b!1434972 m!1638959))

(declare-fun m!1638985 () Bool)

(assert (=> b!1434972 m!1638985))

(assert (=> b!1434972 m!1638943))

(assert (=> b!1434971 m!1638941))

(assert (=> b!1434971 m!1638941))

(assert (=> b!1434971 m!1638945))

(assert (=> b!1434291 d!413171))

(declare-fun d!413183 () Bool)

(assert (=> d!413183 (= (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))))) (not (isEmpty!9282 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))

(declare-fun bs!341048 () Bool)

(assert (= bs!341048 d!413183))

(assert (=> bs!341048 m!1637371))

(declare-fun m!1638987 () Bool)

(assert (=> bs!341048 m!1638987))

(assert (=> b!1434291 d!413183))

(declare-fun b!1435050 () Bool)

(assert (=> b!1435050 false))

(declare-fun lt!490230 () Unit!22769)

(declare-fun lt!490183 () Unit!22769)

(assert (=> b!1435050 (= lt!490230 lt!490183)))

(declare-fun lt!490192 () List!14994)

(assert (=> b!1435050 (not (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489186))) lt!490192))))

(declare-fun lt!490195 () Token!4908)

(declare-fun lt!490215 () List!14994)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!41 (LexerInterface!2285 List!14997 Rule!5046 List!14994 List!14994 Rule!5046) Unit!22769)

(assert (=> b!1435050 (= lt!490183 (lemmaMaxPrefNoSmallerRuleMatches!41 Lexer!2283 (rules!11404 other!32) (rule!4386 lt!490195) lt!490192 lt!490215 (rule!4386 (h!20331 lt!489186))))))

(assert (=> b!1435050 (= lt!490192 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun e!916040 () Unit!22769)

(declare-fun Unit!22862 () Unit!22769)

(assert (=> b!1435050 (= e!916040 Unit!22862)))

(declare-fun b!1435051 () Bool)

(declare-fun e!916039 () Unit!22769)

(declare-fun Unit!22863 () Unit!22769)

(assert (=> b!1435051 (= e!916039 Unit!22863)))

(declare-fun b!1435052 () Bool)

(assert (=> b!1435052 false))

(declare-fun lt!490220 () Unit!22769)

(declare-fun lt!490229 () Unit!22769)

(assert (=> b!1435052 (= lt!490220 lt!490229)))

(assert (=> b!1435052 (= (rule!4386 lt!490195) (rule!4386 (h!20331 lt!489186)))))

(declare-fun lemmaSameIndexThenSameElement!17 (List!14997 Rule!5046 Rule!5046) Unit!22769)

(assert (=> b!1435052 (= lt!490229 (lemmaSameIndexThenSameElement!17 (rules!11404 other!32) (rule!4386 lt!490195) (rule!4386 (h!20331 lt!489186))))))

(declare-fun Unit!22864 () Unit!22769)

(assert (=> b!1435052 (= e!916039 Unit!22864)))

(declare-fun b!1435053 () Bool)

(declare-fun Unit!22865 () Unit!22769)

(assert (=> b!1435053 (= e!916040 Unit!22865)))

(declare-fun b!1435054 () Bool)

(declare-fun e!916037 () Unit!22769)

(declare-fun Unit!22866 () Unit!22769)

(assert (=> b!1435054 (= e!916037 Unit!22866)))

(declare-fun c!235892 () Bool)

(declare-fun getIndex!69 (List!14997 Rule!5046) Int)

(assert (=> b!1435054 (= c!235892 (< (getIndex!69 (rules!11404 other!32) (rule!4386 (h!20331 lt!489186))) (getIndex!69 (rules!11404 other!32) (rule!4386 lt!490195))))))

(declare-fun lt!490207 () Unit!22769)

(assert (=> b!1435054 (= lt!490207 e!916040)))

(declare-fun c!235891 () Bool)

(assert (=> b!1435054 (= c!235891 (< (getIndex!69 (rules!11404 other!32) (rule!4386 lt!490195)) (getIndex!69 (rules!11404 other!32) (rule!4386 (h!20331 lt!489186)))))))

(declare-fun lt!490228 () Unit!22769)

(declare-fun e!916038 () Unit!22769)

(assert (=> b!1435054 (= lt!490228 e!916038)))

(declare-fun c!235893 () Bool)

(assert (=> b!1435054 (= c!235893 (= (getIndex!69 (rules!11404 other!32) (rule!4386 lt!490195)) (getIndex!69 (rules!11404 other!32) (rule!4386 (h!20331 lt!489186)))))))

(declare-fun lt!490243 () Unit!22769)

(assert (=> b!1435054 (= lt!490243 e!916039)))

(assert (=> b!1435054 false))

(declare-fun b!1435055 () Bool)

(declare-fun e!916036 () Unit!22769)

(declare-fun Unit!22867 () Unit!22769)

(assert (=> b!1435055 (= e!916036 Unit!22867)))

(declare-fun b!1435056 () Bool)

(declare-fun Unit!22868 () Unit!22769)

(assert (=> b!1435056 (= e!916038 Unit!22868)))

(declare-fun b!1435057 () Bool)

(declare-fun Unit!22869 () Unit!22769)

(assert (=> b!1435057 (= e!916037 Unit!22869)))

(declare-fun b!1435058 () Bool)

(declare-fun e!916035 () Bool)

(assert (=> b!1435058 (= e!916035 (= (rule!4386 lt!490195) (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 other!32) (tag!2885 (rule!4386 lt!490195))))))))

(declare-fun d!413185 () Bool)

(assert (=> d!413185 (= (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398))) (Some!2848 (tuple2!14123 (h!20331 lt!489186) (list!5931 lt!489398))))))

(declare-fun lt!490205 () Unit!22769)

(declare-fun Unit!22870 () Unit!22769)

(assert (=> d!413185 (= lt!490205 Unit!22870)))

(declare-fun lt!490190 () Unit!22769)

(assert (=> d!413185 (= lt!490190 e!916037)))

(declare-fun c!235895 () Bool)

(assert (=> d!413185 (= c!235895 (not (= (rule!4386 lt!490195) (rule!4386 (h!20331 lt!489186)))))))

(declare-fun lt!490240 () Unit!22769)

(declare-fun lt!490202 () Unit!22769)

(assert (=> d!413185 (= lt!490240 lt!490202)))

(declare-fun lt!490224 () List!14994)

(assert (=> d!413185 (= (list!5931 lt!489398) lt!490224)))

(declare-fun lemmaSamePrefixThenSameSuffix!599 (List!14994 List!14994 List!14994 List!14994 List!14994) Unit!22769)

(assert (=> d!413185 (= lt!490202 (lemmaSamePrefixThenSameSuffix!599 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398) (list!5931 (charsOf!1515 (h!20331 lt!489186))) lt!490224 lt!490215))))

(declare-fun lt!490186 () Unit!22769)

(declare-fun lt!490232 () Unit!22769)

(assert (=> d!413185 (= lt!490186 lt!490232)))

(declare-fun lt!490189 () List!14994)

(declare-fun lt!490209 () List!14994)

(assert (=> d!413185 (= lt!490189 lt!490209)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!101 (List!14994 List!14994 List!14994) Unit!22769)

(assert (=> d!413185 (= lt!490232 (lemmaIsPrefixSameLengthThenSameList!101 lt!490189 lt!490209 lt!490215))))

(assert (=> d!413185 (= lt!490209 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(assert (=> d!413185 (= lt!490189 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490210 () Unit!22769)

(assert (=> d!413185 (= lt!490210 e!916036)))

(declare-fun c!235894 () Bool)

(assert (=> d!413185 (= c!235894 (< (size!12244 (charsOf!1515 lt!490195)) (size!12244 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun lt!490177 () Unit!22769)

(declare-fun e!916041 () Unit!22769)

(assert (=> d!413185 (= lt!490177 e!916041)))

(declare-fun c!235896 () Bool)

(assert (=> d!413185 (= c!235896 (> (size!12244 (charsOf!1515 lt!490195)) (size!12244 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun lt!490179 () Unit!22769)

(declare-fun lt!490185 () Unit!22769)

(assert (=> d!413185 (= lt!490179 lt!490185)))

(declare-fun rulesRegex!391 (LexerInterface!2285 List!14997) Regex!3937)

(assert (=> d!413185 (matchR!1819 (rulesRegex!391 Lexer!2283 (rules!11404 other!32)) (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!2 (LexerInterface!2285 List!14997 List!14994 Token!4908 Rule!5046 List!14994) Unit!22769)

(assert (=> d!413185 (= lt!490185 (lemmaMaxPrefixThenMatchesRulesRegex!2 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))) (h!20331 lt!489186) (rule!4386 (h!20331 lt!489186)) Nil!14928))))

(declare-fun lt!490222 () Unit!22769)

(declare-fun lt!490241 () Unit!22769)

(assert (=> d!413185 (= lt!490222 lt!490241)))

(declare-fun lt!490187 () List!14994)

(assert (=> d!413185 (= lt!490224 lt!490187)))

(declare-fun lt!490188 () List!14994)

(declare-fun lt!490238 () List!14994)

(assert (=> d!413185 (= lt!490241 (lemmaSamePrefixThenSameSuffix!599 lt!490238 lt!490224 lt!490188 lt!490187 lt!490215))))

(declare-fun getSuffix!647 (List!14994 List!14994) List!14994)

(assert (=> d!413185 (= lt!490187 (getSuffix!647 lt!490215 (list!5931 (charsOf!1515 lt!490195))))))

(assert (=> d!413185 (= lt!490188 (list!5931 (charsOf!1515 lt!490195)))))

(assert (=> d!413185 (= lt!490238 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490242 () Unit!22769)

(declare-fun lt!490214 () Unit!22769)

(assert (=> d!413185 (= lt!490242 lt!490214)))

(declare-fun lt!490211 () List!14994)

(assert (=> d!413185 (= (maxPrefixOneRule!652 Lexer!2283 (rule!4386 lt!490195) lt!490215) (Some!2848 (tuple2!14123 (Token!4909 (apply!3823 (transformation!2623 (rule!4386 lt!490195)) (seqFromList!1697 lt!490211)) (rule!4386 lt!490195) (size!12239 lt!490211) lt!490211) lt!490224)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!192 (LexerInterface!2285 List!14997 List!14994 List!14994 List!14994 Rule!5046) Unit!22769)

(assert (=> d!413185 (= lt!490214 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!192 Lexer!2283 (rules!11404 other!32) lt!490211 lt!490215 lt!490224 (rule!4386 lt!490195)))))

(assert (=> d!413185 (= lt!490211 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490200 () Unit!22769)

(declare-fun lemmaCharactersSize!298 (Token!4908) Unit!22769)

(assert (=> d!413185 (= lt!490200 (lemmaCharactersSize!298 lt!490195))))

(declare-fun lt!490191 () Unit!22769)

(declare-fun lemmaEqSameImage!109 (TokenValueInjection!5086 BalanceConc!10084 BalanceConc!10084) Unit!22769)

(assert (=> d!413185 (= lt!490191 (lemmaEqSameImage!109 (transformation!2623 (rule!4386 lt!490195)) (charsOf!1515 lt!490195) (seqFromList!1697 (originalCharacters!3485 lt!490195))))))

(declare-fun lt!490196 () Unit!22769)

(declare-fun lemmaSemiInverse!344 (TokenValueInjection!5086 BalanceConc!10084) Unit!22769)

(assert (=> d!413185 (= lt!490196 (lemmaSemiInverse!344 (transformation!2623 (rule!4386 lt!490195)) (charsOf!1515 lt!490195)))))

(declare-fun lt!490236 () Unit!22769)

(declare-fun lemmaInv!376 (TokenValueInjection!5086) Unit!22769)

(assert (=> d!413185 (= lt!490236 (lemmaInv!376 (transformation!2623 (rule!4386 lt!490195))))))

(declare-fun lt!490204 () Unit!22769)

(declare-fun lt!490227 () Unit!22769)

(assert (=> d!413185 (= lt!490204 lt!490227)))

(declare-fun lt!490176 () List!14994)

(assert (=> d!413185 (isPrefix!1193 lt!490176 (++!4001 lt!490176 lt!490224))))

(assert (=> d!413185 (= lt!490227 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490176 lt!490224))))

(assert (=> d!413185 (= lt!490176 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490217 () Unit!22769)

(declare-fun lt!490203 () Unit!22769)

(assert (=> d!413185 (= lt!490217 lt!490203)))

(assert (=> d!413185 e!916035))

(declare-fun res!649814 () Bool)

(assert (=> d!413185 (=> (not res!649814) (not e!916035))))

(assert (=> d!413185 (= res!649814 (isDefined!2307 (getRuleFromTag!215 Lexer!2283 (rules!11404 other!32) (tag!2885 (rule!4386 lt!490195)))))))

(assert (=> d!413185 (= lt!490203 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!215 Lexer!2283 (rules!11404 other!32) lt!490215 lt!490195))))

(declare-fun lt!490221 () Option!2849)

(assert (=> d!413185 (= lt!490224 (_2!7947 (get!4569 lt!490221)))))

(assert (=> d!413185 (= lt!490195 (_1!7947 (get!4569 lt!490221)))))

(declare-fun lt!490199 () Unit!22769)

(assert (=> d!413185 (= lt!490199 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)))))

(assert (=> d!413185 (= lt!490221 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) lt!490215))))

(declare-fun lt!490208 () Unit!22769)

(declare-fun lt!490197 () Unit!22769)

(assert (=> d!413185 (= lt!490208 lt!490197)))

(declare-fun lt!490233 () List!14994)

(assert (=> d!413185 (isPrefix!1193 lt!490233 (++!4001 lt!490233 (list!5931 lt!489398)))))

(assert (=> d!413185 (= lt!490197 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490233 (list!5931 lt!489398)))))

(assert (=> d!413185 (= lt!490233 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(assert (=> d!413185 (= lt!490215 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 lt!489398)))))

(assert (=> d!413185 (not (isEmpty!9275 (rules!11404 other!32)))))

(assert (=> d!413185 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 other!32) (h!20331 lt!489186) (rule!4386 (h!20331 lt!489186)) (list!5931 lt!489398)) lt!490205)))

(declare-fun b!1435059 () Bool)

(declare-fun Unit!22876 () Unit!22769)

(assert (=> b!1435059 (= e!916041 Unit!22876)))

(declare-fun b!1435060 () Bool)

(assert (=> b!1435060 false))

(declare-fun lt!490234 () Unit!22769)

(declare-fun lt!490194 () Unit!22769)

(assert (=> b!1435060 (= lt!490234 lt!490194)))

(declare-fun lt!490180 () List!14994)

(assert (=> b!1435060 (not (matchR!1819 (regex!2623 (rule!4386 lt!490195)) lt!490180))))

(assert (=> b!1435060 (= lt!490194 (lemmaMaxPrefNoSmallerRuleMatches!41 Lexer!2283 (rules!11404 other!32) (rule!4386 (h!20331 lt!489186)) lt!490180 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (rule!4386 lt!490195)))))

(assert (=> b!1435060 (= lt!490180 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun Unit!22878 () Unit!22769)

(assert (=> b!1435060 (= e!916038 Unit!22878)))

(declare-fun b!1435061 () Bool)

(declare-fun res!649813 () Bool)

(assert (=> b!1435061 (=> (not res!649813) (not e!916035))))

(assert (=> b!1435061 (= res!649813 (matchR!1819 (regex!2623 (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 other!32) (tag!2885 (rule!4386 lt!490195))))) (list!5931 (charsOf!1515 lt!490195))))))

(declare-fun b!1435062 () Bool)

(declare-fun Unit!22879 () Unit!22769)

(assert (=> b!1435062 (= e!916041 Unit!22879)))

(declare-fun lt!490216 () Unit!22769)

(assert (=> b!1435062 (= lt!490216 (lemmaMaxPrefixThenMatchesRulesRegex!2 Lexer!2283 (rules!11404 other!32) lt!490215 lt!490195 (rule!4386 lt!490195) lt!490224))))

(assert (=> b!1435062 (matchR!1819 (rulesRegex!391 Lexer!2283 (rules!11404 other!32)) (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490225 () Unit!22769)

(assert (=> b!1435062 (= lt!490225 lt!490216)))

(declare-fun lt!490182 () List!14994)

(assert (=> b!1435062 (= lt!490182 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun lt!490184 () List!14994)

(assert (=> b!1435062 (= lt!490184 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun lt!490181 () List!14994)

(assert (=> b!1435062 (= lt!490181 (getSuffix!647 lt!490215 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun lt!490212 () Unit!22769)

(assert (=> b!1435062 (= lt!490212 (lemmaSamePrefixThenSameSuffix!599 lt!490182 (list!5931 lt!489398) lt!490184 lt!490181 lt!490215))))

(assert (=> b!1435062 (= (list!5931 lt!489398) lt!490181)))

(declare-fun lt!490178 () Unit!22769)

(assert (=> b!1435062 (= lt!490178 lt!490212)))

(declare-fun lt!490198 () List!14994)

(assert (=> b!1435062 (= lt!490198 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun lt!490226 () Unit!22769)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!89 (List!14994 List!14994) Unit!22769)

(assert (=> b!1435062 (= lt!490226 (lemmaAddHeadSuffixToPrefixStillPrefix!89 lt!490198 lt!490215))))

(assert (=> b!1435062 (isPrefix!1193 (++!4001 lt!490198 (Cons!14928 (head!2908 (getSuffix!647 lt!490215 lt!490198)) Nil!14928)) lt!490215)))

(declare-fun lt!490239 () Unit!22769)

(assert (=> b!1435062 (= lt!490239 lt!490226)))

(declare-fun lt!490201 () List!14994)

(assert (=> b!1435062 (= lt!490201 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490235 () List!14994)

(assert (=> b!1435062 (= lt!490235 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (Cons!14928 (head!2908 (list!5931 lt!489398)) Nil!14928)))))

(declare-fun lt!490231 () Unit!22769)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!1 (List!14994 List!14994 List!14994) Unit!22769)

(assert (=> b!1435062 (= lt!490231 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!1 lt!490201 lt!490235 lt!490215))))

(assert (=> b!1435062 (isPrefix!1193 lt!490235 lt!490201)))

(declare-fun lt!490206 () Unit!22769)

(assert (=> b!1435062 (= lt!490206 lt!490231)))

(declare-fun lt!490244 () Regex!3937)

(assert (=> b!1435062 (= lt!490244 (rulesRegex!391 Lexer!2283 (rules!11404 other!32)))))

(declare-fun lt!490219 () List!14994)

(assert (=> b!1435062 (= lt!490219 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (Cons!14928 (head!2908 (list!5931 lt!489398)) Nil!14928)))))

(declare-fun lt!490223 () List!14994)

(assert (=> b!1435062 (= lt!490223 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490175 () Unit!22769)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!2 (Regex!3937 List!14994 List!14994) Unit!22769)

(assert (=> b!1435062 (= lt!490175 (lemmaNotPrefixMatchThenCannotMatchLonger!2 lt!490244 lt!490219 lt!490223))))

(assert (=> b!1435062 (not (matchR!1819 lt!490244 lt!490223))))

(declare-fun lt!490218 () Unit!22769)

(assert (=> b!1435062 (= lt!490218 lt!490175)))

(assert (=> b!1435062 false))

(declare-fun b!1435063 () Bool)

(declare-fun Unit!22886 () Unit!22769)

(assert (=> b!1435063 (= e!916036 Unit!22886)))

(declare-fun lt!490193 () List!14994)

(assert (=> b!1435063 (= lt!490193 (list!5931 (charsOf!1515 lt!490195)))))

(declare-fun lt!490174 () List!14994)

(assert (=> b!1435063 (= lt!490174 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(declare-fun lt!490237 () Unit!22769)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!92 (LexerInterface!2285 List!14997 Rule!5046 List!14994 List!14994 List!14994 Rule!5046) Unit!22769)

(assert (=> b!1435063 (= lt!490237 (lemmaMaxPrefixOutputsMaxPrefix!92 Lexer!2283 (rules!11404 other!32) (rule!4386 lt!490195) lt!490193 lt!490215 lt!490174 (rule!4386 (h!20331 lt!489186))))))

(assert (=> b!1435063 (not (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489186))) lt!490174))))

(declare-fun lt!490213 () Unit!22769)

(assert (=> b!1435063 (= lt!490213 lt!490237)))

(assert (=> b!1435063 false))

(assert (= (and d!413185 res!649814) b!1435061))

(assert (= (and b!1435061 res!649813) b!1435058))

(assert (= (and d!413185 c!235896) b!1435062))

(assert (= (and d!413185 (not c!235896)) b!1435059))

(assert (= (and d!413185 c!235894) b!1435063))

(assert (= (and d!413185 (not c!235894)) b!1435055))

(assert (= (and d!413185 c!235895) b!1435054))

(assert (= (and d!413185 (not c!235895)) b!1435057))

(assert (= (and b!1435054 c!235892) b!1435050))

(assert (= (and b!1435054 (not c!235892)) b!1435053))

(assert (= (and b!1435054 c!235891) b!1435060))

(assert (= (and b!1435054 (not c!235891)) b!1435056))

(assert (= (and b!1435054 c!235893) b!1435052))

(assert (= (and b!1435054 (not c!235893)) b!1435051))

(declare-fun m!1639185 () Bool)

(assert (=> b!1435050 m!1639185))

(declare-fun m!1639187 () Bool)

(assert (=> b!1435050 m!1639187))

(declare-fun m!1639189 () Bool)

(assert (=> b!1435050 m!1639189))

(assert (=> b!1435050 m!1639189))

(declare-fun m!1639191 () Bool)

(assert (=> b!1435050 m!1639191))

(declare-fun m!1639193 () Bool)

(assert (=> b!1435058 m!1639193))

(assert (=> b!1435058 m!1639193))

(declare-fun m!1639195 () Bool)

(assert (=> b!1435058 m!1639195))

(declare-fun m!1639197 () Bool)

(assert (=> b!1435060 m!1639197))

(assert (=> b!1435060 m!1637049))

(assert (=> b!1435060 m!1637049))

(assert (=> b!1435060 m!1637051))

(assert (=> b!1435060 m!1637051))

(declare-fun m!1639199 () Bool)

(assert (=> b!1435060 m!1639199))

(declare-fun m!1639201 () Bool)

(assert (=> b!1435052 m!1639201))

(declare-fun m!1639203 () Bool)

(assert (=> b!1435054 m!1639203))

(declare-fun m!1639205 () Bool)

(assert (=> b!1435054 m!1639205))

(declare-fun m!1639207 () Bool)

(assert (=> b!1435063 m!1639207))

(assert (=> b!1435063 m!1637049))

(assert (=> b!1435063 m!1639189))

(declare-fun m!1639209 () Bool)

(assert (=> b!1435063 m!1639209))

(assert (=> b!1435063 m!1639189))

(assert (=> b!1435063 m!1639191))

(assert (=> b!1435063 m!1637049))

(assert (=> b!1435063 m!1637051))

(assert (=> b!1435061 m!1639189))

(assert (=> b!1435061 m!1639191))

(assert (=> b!1435061 m!1639193))

(assert (=> b!1435061 m!1639189))

(assert (=> b!1435061 m!1639191))

(declare-fun m!1639211 () Bool)

(assert (=> b!1435061 m!1639211))

(assert (=> b!1435061 m!1639193))

(assert (=> b!1435061 m!1639195))

(declare-fun m!1639213 () Bool)

(assert (=> d!413185 m!1639213))

(declare-fun m!1639215 () Bool)

(assert (=> d!413185 m!1639215))

(assert (=> d!413185 m!1637051))

(assert (=> d!413185 m!1637397))

(assert (=> d!413185 m!1637399))

(assert (=> d!413185 m!1639213))

(declare-fun m!1639217 () Bool)

(assert (=> d!413185 m!1639217))

(assert (=> d!413185 m!1637397))

(declare-fun m!1639219 () Bool)

(assert (=> d!413185 m!1639219))

(declare-fun m!1639221 () Bool)

(assert (=> d!413185 m!1639221))

(assert (=> d!413185 m!1637049))

(assert (=> d!413185 m!1639189))

(declare-fun m!1639223 () Bool)

(assert (=> d!413185 m!1639223))

(assert (=> d!413185 m!1639189))

(declare-fun m!1639225 () Bool)

(assert (=> d!413185 m!1639225))

(assert (=> d!413185 m!1637051))

(assert (=> d!413185 m!1637397))

(assert (=> d!413185 m!1637051))

(declare-fun m!1639227 () Bool)

(assert (=> d!413185 m!1639227))

(assert (=> d!413185 m!1637051))

(assert (=> d!413185 m!1637397))

(assert (=> d!413185 m!1638959))

(declare-fun m!1639229 () Bool)

(assert (=> d!413185 m!1639229))

(declare-fun m!1639231 () Bool)

(assert (=> d!413185 m!1639231))

(declare-fun m!1639233 () Bool)

(assert (=> d!413185 m!1639233))

(declare-fun m!1639235 () Bool)

(assert (=> d!413185 m!1639235))

(declare-fun m!1639237 () Bool)

(assert (=> d!413185 m!1639237))

(assert (=> d!413185 m!1637051))

(declare-fun m!1639239 () Bool)

(assert (=> d!413185 m!1639239))

(assert (=> d!413185 m!1639237))

(declare-fun m!1639241 () Bool)

(assert (=> d!413185 m!1639241))

(assert (=> d!413185 m!1639189))

(assert (=> d!413185 m!1639191))

(assert (=> d!413185 m!1639189))

(declare-fun m!1639243 () Bool)

(assert (=> d!413185 m!1639243))

(declare-fun m!1639245 () Bool)

(assert (=> d!413185 m!1639245))

(assert (=> d!413185 m!1637049))

(assert (=> d!413185 m!1637051))

(assert (=> d!413185 m!1639193))

(assert (=> d!413185 m!1637397))

(declare-fun m!1639247 () Bool)

(assert (=> d!413185 m!1639247))

(declare-fun m!1639249 () Bool)

(assert (=> d!413185 m!1639249))

(assert (=> d!413185 m!1639189))

(declare-fun m!1639251 () Bool)

(assert (=> d!413185 m!1639251))

(assert (=> d!413185 m!1639247))

(declare-fun m!1639253 () Bool)

(assert (=> d!413185 m!1639253))

(assert (=> d!413185 m!1637049))

(declare-fun m!1639255 () Bool)

(assert (=> d!413185 m!1639255))

(assert (=> d!413185 m!1637151))

(assert (=> d!413185 m!1639191))

(declare-fun m!1639257 () Bool)

(assert (=> d!413185 m!1639257))

(assert (=> d!413185 m!1639243))

(declare-fun m!1639259 () Bool)

(assert (=> d!413185 m!1639259))

(declare-fun m!1639261 () Bool)

(assert (=> d!413185 m!1639261))

(assert (=> d!413185 m!1637051))

(declare-fun m!1639263 () Bool)

(assert (=> d!413185 m!1639263))

(assert (=> d!413185 m!1639193))

(declare-fun m!1639265 () Bool)

(assert (=> d!413185 m!1639265))

(declare-fun m!1639267 () Bool)

(assert (=> d!413185 m!1639267))

(assert (=> d!413185 m!1639221))

(declare-fun m!1639269 () Bool)

(assert (=> d!413185 m!1639269))

(assert (=> d!413185 m!1638959))

(assert (=> d!413185 m!1638955))

(declare-fun m!1639271 () Bool)

(assert (=> b!1435062 m!1639271))

(declare-fun m!1639273 () Bool)

(assert (=> b!1435062 m!1639273))

(declare-fun m!1639275 () Bool)

(assert (=> b!1435062 m!1639275))

(declare-fun m!1639277 () Bool)

(assert (=> b!1435062 m!1639277))

(declare-fun m!1639279 () Bool)

(assert (=> b!1435062 m!1639279))

(assert (=> b!1435062 m!1637397))

(declare-fun m!1639281 () Bool)

(assert (=> b!1435062 m!1639281))

(assert (=> b!1435062 m!1639189))

(assert (=> b!1435062 m!1639191))

(assert (=> b!1435062 m!1639237))

(assert (=> b!1435062 m!1637049))

(assert (=> b!1435062 m!1637051))

(declare-fun m!1639283 () Bool)

(assert (=> b!1435062 m!1639283))

(declare-fun m!1639285 () Bool)

(assert (=> b!1435062 m!1639285))

(assert (=> b!1435062 m!1637397))

(assert (=> b!1435062 m!1637415))

(assert (=> b!1435062 m!1639271))

(declare-fun m!1639287 () Bool)

(assert (=> b!1435062 m!1639287))

(assert (=> b!1435062 m!1639275))

(declare-fun m!1639289 () Bool)

(assert (=> b!1435062 m!1639289))

(assert (=> b!1435062 m!1639237))

(assert (=> b!1435062 m!1639191))

(declare-fun m!1639291 () Bool)

(assert (=> b!1435062 m!1639291))

(assert (=> b!1435062 m!1637049))

(declare-fun m!1639293 () Bool)

(assert (=> b!1435062 m!1639293))

(assert (=> b!1435062 m!1637051))

(declare-fun m!1639295 () Bool)

(assert (=> b!1435062 m!1639295))

(assert (=> b!1435062 m!1637051))

(declare-fun m!1639297 () Bool)

(assert (=> b!1435062 m!1639297))

(assert (=> b!1435062 m!1639189))

(assert (=> b!1434291 d!413185))

(declare-fun d!413195 () Bool)

(assert (=> d!413195 (= (list!5932 (_1!7946 lt!489404)) (list!5936 (c!235662 (_1!7946 lt!489404))))))

(declare-fun bs!341049 () Bool)

(assert (= bs!341049 d!413195))

(declare-fun m!1639299 () Bool)

(assert (=> bs!341049 m!1639299))

(assert (=> b!1434291 d!413195))

(assert (=> b!1434291 d!412811))

(declare-fun d!413197 () Bool)

(declare-fun lt!490245 () BalanceConc!10084)

(assert (=> d!413197 (= (list!5931 lt!490245) (printListTailRec!281 Lexer!2283 (dropList!462 (singletonSeq!1226 (h!20331 lt!489186)) 0) (list!5931 (BalanceConc!10085 Empty!5072))))))

(declare-fun e!916043 () BalanceConc!10084)

(assert (=> d!413197 (= lt!490245 e!916043)))

(declare-fun c!235897 () Bool)

(assert (=> d!413197 (= c!235897 (>= 0 (size!12238 (singletonSeq!1226 (h!20331 lt!489186)))))))

(declare-fun e!916042 () Bool)

(assert (=> d!413197 e!916042))

(declare-fun res!649815 () Bool)

(assert (=> d!413197 (=> (not res!649815) (not e!916042))))

(assert (=> d!413197 (= res!649815 (>= 0 0))))

(assert (=> d!413197 (= (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489186)) 0 (BalanceConc!10085 Empty!5072)) lt!490245)))

(declare-fun b!1435064 () Bool)

(assert (=> b!1435064 (= e!916042 (<= 0 (size!12238 (singletonSeq!1226 (h!20331 lt!489186)))))))

(declare-fun b!1435065 () Bool)

(assert (=> b!1435065 (= e!916043 (BalanceConc!10085 Empty!5072))))

(declare-fun b!1435066 () Bool)

(assert (=> b!1435066 (= e!916043 (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489186)) (+ 0 1) (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (singletonSeq!1226 (h!20331 lt!489186)) 0)))))))

(declare-fun lt!490247 () List!14996)

(assert (=> b!1435066 (= lt!490247 (list!5932 (singletonSeq!1226 (h!20331 lt!489186))))))

(declare-fun lt!490251 () Unit!22769)

(assert (=> b!1435066 (= lt!490251 (lemmaDropApply!482 lt!490247 0))))

(assert (=> b!1435066 (= (head!2907 (drop!730 lt!490247 0)) (apply!3819 lt!490247 0))))

(declare-fun lt!490246 () Unit!22769)

(assert (=> b!1435066 (= lt!490246 lt!490251)))

(declare-fun lt!490250 () List!14996)

(assert (=> b!1435066 (= lt!490250 (list!5932 (singletonSeq!1226 (h!20331 lt!489186))))))

(declare-fun lt!490249 () Unit!22769)

(assert (=> b!1435066 (= lt!490249 (lemmaDropTail!462 lt!490250 0))))

(assert (=> b!1435066 (= (tail!2152 (drop!730 lt!490250 0)) (drop!730 lt!490250 (+ 0 1)))))

(declare-fun lt!490248 () Unit!22769)

(assert (=> b!1435066 (= lt!490248 lt!490249)))

(assert (= (and d!413197 res!649815) b!1435064))

(assert (= (and d!413197 c!235897) b!1435065))

(assert (= (and d!413197 (not c!235897)) b!1435066))

(assert (=> d!413197 m!1637393))

(declare-fun m!1639301 () Bool)

(assert (=> d!413197 m!1639301))

(assert (=> d!413197 m!1637393))

(declare-fun m!1639303 () Bool)

(assert (=> d!413197 m!1639303))

(assert (=> d!413197 m!1639303))

(assert (=> d!413197 m!1637173))

(declare-fun m!1639305 () Bool)

(assert (=> d!413197 m!1639305))

(declare-fun m!1639307 () Bool)

(assert (=> d!413197 m!1639307))

(assert (=> d!413197 m!1637173))

(assert (=> b!1435064 m!1637393))

(assert (=> b!1435064 m!1639301))

(declare-fun m!1639309 () Bool)

(assert (=> b!1435066 m!1639309))

(declare-fun m!1639311 () Bool)

(assert (=> b!1435066 m!1639311))

(declare-fun m!1639313 () Bool)

(assert (=> b!1435066 m!1639313))

(declare-fun m!1639315 () Bool)

(assert (=> b!1435066 m!1639315))

(assert (=> b!1435066 m!1637393))

(declare-fun m!1639317 () Bool)

(assert (=> b!1435066 m!1639317))

(declare-fun m!1639319 () Bool)

(assert (=> b!1435066 m!1639319))

(assert (=> b!1435066 m!1637393))

(declare-fun m!1639321 () Bool)

(assert (=> b!1435066 m!1639321))

(assert (=> b!1435066 m!1639309))

(declare-fun m!1639323 () Bool)

(assert (=> b!1435066 m!1639323))

(assert (=> b!1435066 m!1637393))

(assert (=> b!1435066 m!1639313))

(declare-fun m!1639325 () Bool)

(assert (=> b!1435066 m!1639325))

(assert (=> b!1435066 m!1639321))

(assert (=> b!1435066 m!1639311))

(assert (=> b!1435066 m!1639319))

(declare-fun m!1639327 () Bool)

(assert (=> b!1435066 m!1639327))

(declare-fun m!1639329 () Bool)

(assert (=> b!1435066 m!1639329))

(declare-fun m!1639331 () Bool)

(assert (=> b!1435066 m!1639331))

(declare-fun m!1639333 () Bool)

(assert (=> b!1435066 m!1639333))

(assert (=> b!1434291 d!413197))

(declare-fun d!413199 () Bool)

(declare-fun lt!490252 () BalanceConc!10084)

(assert (=> d!413199 (= (list!5931 lt!490252) (printList!707 Lexer!2283 (list!5932 (seqFromList!1696 (t!127239 lt!489186)))))))

(assert (=> d!413199 (= lt!490252 (printTailRec!679 Lexer!2283 (seqFromList!1696 (t!127239 lt!489186)) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!413199 (= (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489186))) lt!490252)))

(declare-fun bs!341050 () Bool)

(assert (= bs!341050 d!413199))

(declare-fun m!1639335 () Bool)

(assert (=> bs!341050 m!1639335))

(assert (=> bs!341050 m!1637367))

(declare-fun m!1639337 () Bool)

(assert (=> bs!341050 m!1639337))

(assert (=> bs!341050 m!1639337))

(declare-fun m!1639339 () Bool)

(assert (=> bs!341050 m!1639339))

(assert (=> bs!341050 m!1637367))

(declare-fun m!1639341 () Bool)

(assert (=> bs!341050 m!1639341))

(assert (=> b!1434291 d!413199))

(declare-fun d!413201 () Bool)

(assert (=> d!413201 (= (list!5931 lt!489384) (list!5935 (c!235660 lt!489384)))))

(declare-fun bs!341051 () Bool)

(assert (= bs!341051 d!413201))

(declare-fun m!1639343 () Bool)

(assert (=> bs!341051 m!1639343))

(assert (=> b!1434291 d!413201))

(declare-fun d!413203 () Bool)

(declare-fun lt!490253 () BalanceConc!10084)

(assert (=> d!413203 (= (list!5931 lt!490253) (printList!707 Lexer!2283 (list!5932 (singletonSeq!1226 (h!20331 lt!489186)))))))

(assert (=> d!413203 (= lt!490253 (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489186)) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!413203 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489186))) lt!490253)))

(declare-fun bs!341052 () Bool)

(assert (= bs!341052 d!413203))

(declare-fun m!1639345 () Bool)

(assert (=> bs!341052 m!1639345))

(assert (=> bs!341052 m!1637393))

(assert (=> bs!341052 m!1639317))

(assert (=> bs!341052 m!1639317))

(declare-fun m!1639347 () Bool)

(assert (=> bs!341052 m!1639347))

(assert (=> bs!341052 m!1637393))

(assert (=> bs!341052 m!1637419))

(assert (=> b!1434291 d!413203))

(declare-fun d!413205 () Bool)

(assert (=> d!413205 (= (list!5932 (_1!7946 lt!489404)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489186))) (h!20331 (t!127239 lt!489186)))))))

(declare-fun lt!490256 () Unit!22769)

(declare-fun choose!8846 (Token!4908 List!14996 BalanceConc!10086) Unit!22769)

(assert (=> d!413205 (= lt!490256 (choose!8846 (h!20331 (t!127239 lt!489186)) (t!127239 (t!127239 lt!489186)) (_1!7946 lt!489404)))))

(declare-fun $colon$colon!241 (List!14996 Token!4908) List!14996)

(assert (=> d!413205 (= (list!5932 (_1!7946 lt!489404)) (list!5932 (seqFromList!1696 ($colon$colon!241 (t!127239 (t!127239 lt!489186)) (h!20331 (t!127239 lt!489186))))))))

(assert (=> d!413205 (= (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 lt!489186)) (t!127239 (t!127239 lt!489186)) (_1!7946 lt!489404)) lt!490256)))

(declare-fun bs!341053 () Bool)

(assert (= bs!341053 d!413205))

(declare-fun m!1639349 () Bool)

(assert (=> bs!341053 m!1639349))

(declare-fun m!1639351 () Bool)

(assert (=> bs!341053 m!1639351))

(assert (=> bs!341053 m!1637365))

(assert (=> bs!341053 m!1637407))

(assert (=> bs!341053 m!1637389))

(assert (=> bs!341053 m!1637391))

(assert (=> bs!341053 m!1637407))

(assert (=> bs!341053 m!1637389))

(declare-fun m!1639353 () Bool)

(assert (=> bs!341053 m!1639353))

(assert (=> bs!341053 m!1639349))

(assert (=> bs!341053 m!1639351))

(declare-fun m!1639355 () Bool)

(assert (=> bs!341053 m!1639355))

(assert (=> b!1434291 d!413205))

(declare-fun d!413207 () Bool)

(declare-fun lt!490259 () C!8052)

(declare-fun apply!3827 (List!14994 Int) C!8052)

(assert (=> d!413207 (= lt!490259 (apply!3827 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))) 0))))

(declare-fun apply!3828 (Conc!5072 Int) C!8052)

(assert (=> d!413207 (= lt!490259 (apply!3828 (c!235660 (charsOf!1515 (h!20331 (t!127239 lt!489186)))) 0))))

(declare-fun e!916046 () Bool)

(assert (=> d!413207 e!916046))

(declare-fun res!649818 () Bool)

(assert (=> d!413207 (=> (not res!649818) (not e!916046))))

(assert (=> d!413207 (= res!649818 (<= 0 0))))

(assert (=> d!413207 (= (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0) lt!490259)))

(declare-fun b!1435069 () Bool)

(assert (=> b!1435069 (= e!916046 (< 0 (size!12244 (charsOf!1515 (h!20331 (t!127239 lt!489186))))))))

(assert (= (and d!413207 res!649818) b!1435069))

(assert (=> d!413207 m!1637251))

(assert (=> d!413207 m!1637253))

(assert (=> d!413207 m!1637253))

(declare-fun m!1639357 () Bool)

(assert (=> d!413207 m!1639357))

(declare-fun m!1639359 () Bool)

(assert (=> d!413207 m!1639359))

(assert (=> b!1435069 m!1637251))

(declare-fun m!1639361 () Bool)

(assert (=> b!1435069 m!1639361))

(assert (=> b!1434291 d!413207))

(assert (=> b!1434291 d!412809))

(declare-fun d!413209 () Bool)

(declare-fun e!916049 () Bool)

(assert (=> d!413209 e!916049))

(declare-fun res!649821 () Bool)

(assert (=> d!413209 (=> (not res!649821) (not e!916049))))

(declare-fun lt!490262 () BalanceConc!10086)

(assert (=> d!413209 (= res!649821 (= (list!5932 lt!490262) (Cons!14930 (h!20331 lt!489186) Nil!14930)))))

(declare-fun singleton!507 (Token!4908) BalanceConc!10086)

(assert (=> d!413209 (= lt!490262 (singleton!507 (h!20331 lt!489186)))))

(assert (=> d!413209 (= (singletonSeq!1226 (h!20331 lt!489186)) lt!490262)))

(declare-fun b!1435072 () Bool)

(assert (=> b!1435072 (= e!916049 (isBalanced!1503 (c!235662 lt!490262)))))

(assert (= (and d!413209 res!649821) b!1435072))

(declare-fun m!1639363 () Bool)

(assert (=> d!413209 m!1639363))

(declare-fun m!1639365 () Bool)

(assert (=> d!413209 m!1639365))

(declare-fun m!1639367 () Bool)

(assert (=> b!1435072 m!1639367))

(assert (=> b!1434291 d!413209))

(assert (=> b!1434291 d!413005))

(declare-fun d!413211 () Bool)

(assert (=> d!413211 (isPrefix!1193 lt!489386 (++!4001 lt!489386 lt!489393))))

(declare-fun lt!490265 () Unit!22769)

(declare-fun choose!8847 (List!14994 List!14994) Unit!22769)

(assert (=> d!413211 (= lt!490265 (choose!8847 lt!489386 lt!489393))))

(assert (=> d!413211 (= (lemmaConcatTwoListThenFirstIsPrefix!758 lt!489386 lt!489393) lt!490265)))

(declare-fun bs!341054 () Bool)

(assert (= bs!341054 d!413211))

(assert (=> bs!341054 m!1637385))

(assert (=> bs!341054 m!1637385))

(assert (=> bs!341054 m!1637387))

(declare-fun m!1639369 () Bool)

(assert (=> bs!341054 m!1639369))

(assert (=> b!1434291 d!413211))

(declare-fun d!413213 () Bool)

(assert (=> d!413213 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0))) (list!5935 (c!235660 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0)))))))

(declare-fun bs!341055 () Bool)

(assert (= bs!341055 d!413213))

(declare-fun m!1639371 () Bool)

(assert (=> bs!341055 m!1639371))

(assert (=> b!1434291 d!413213))

(assert (=> b!1434291 d!413059))

(declare-fun d!413215 () Bool)

(declare-fun e!916052 () Bool)

(assert (=> d!413215 e!916052))

(declare-fun res!649824 () Bool)

(assert (=> d!413215 (=> (not res!649824) (not e!916052))))

(declare-fun prepend!408 (Conc!5073 Token!4908) Conc!5073)

(assert (=> d!413215 (= res!649824 (isBalanced!1503 (prepend!408 (c!235662 (seqFromList!1696 (t!127239 (t!127239 lt!489186)))) (h!20331 (t!127239 lt!489186)))))))

(declare-fun lt!490268 () BalanceConc!10086)

(assert (=> d!413215 (= lt!490268 (BalanceConc!10087 (prepend!408 (c!235662 (seqFromList!1696 (t!127239 (t!127239 lt!489186)))) (h!20331 (t!127239 lt!489186)))))))

(assert (=> d!413215 (= (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489186))) (h!20331 (t!127239 lt!489186))) lt!490268)))

(declare-fun b!1435075 () Bool)

(assert (=> b!1435075 (= e!916052 (= (list!5932 lt!490268) (Cons!14930 (h!20331 (t!127239 lt!489186)) (list!5932 (seqFromList!1696 (t!127239 (t!127239 lt!489186)))))))))

(assert (= (and d!413215 res!649824) b!1435075))

(declare-fun m!1639373 () Bool)

(assert (=> d!413215 m!1639373))

(assert (=> d!413215 m!1639373))

(declare-fun m!1639375 () Bool)

(assert (=> d!413215 m!1639375))

(declare-fun m!1639377 () Bool)

(assert (=> b!1435075 m!1639377))

(assert (=> b!1435075 m!1637407))

(declare-fun m!1639379 () Bool)

(assert (=> b!1435075 m!1639379))

(assert (=> b!1434291 d!413215))

(declare-fun d!413217 () Bool)

(assert (=> d!413217 (= (list!5931 lt!489398) (list!5935 (c!235660 lt!489398)))))

(declare-fun bs!341056 () Bool)

(assert (= bs!341056 d!413217))

(declare-fun m!1639381 () Bool)

(assert (=> bs!341056 m!1639381))

(assert (=> b!1434291 d!413217))

(declare-fun b!1435079 () Bool)

(declare-fun e!916053 () Bool)

(declare-fun lt!490269 () List!14994)

(assert (=> b!1435079 (= e!916053 (or (not (= lt!489393 Nil!14928)) (= lt!490269 lt!489386)))))

(declare-fun b!1435078 () Bool)

(declare-fun res!649826 () Bool)

(assert (=> b!1435078 (=> (not res!649826) (not e!916053))))

(assert (=> b!1435078 (= res!649826 (= (size!12239 lt!490269) (+ (size!12239 lt!489386) (size!12239 lt!489393))))))

(declare-fun b!1435076 () Bool)

(declare-fun e!916054 () List!14994)

(assert (=> b!1435076 (= e!916054 lt!489393)))

(declare-fun b!1435077 () Bool)

(assert (=> b!1435077 (= e!916054 (Cons!14928 (h!20329 lt!489386) (++!4001 (t!127237 lt!489386) lt!489393)))))

(declare-fun d!413219 () Bool)

(assert (=> d!413219 e!916053))

(declare-fun res!649825 () Bool)

(assert (=> d!413219 (=> (not res!649825) (not e!916053))))

(assert (=> d!413219 (= res!649825 (= (content!2203 lt!490269) ((_ map or) (content!2203 lt!489386) (content!2203 lt!489393))))))

(assert (=> d!413219 (= lt!490269 e!916054)))

(declare-fun c!235899 () Bool)

(assert (=> d!413219 (= c!235899 ((_ is Nil!14928) lt!489386))))

(assert (=> d!413219 (= (++!4001 lt!489386 lt!489393) lt!490269)))

(assert (= (and d!413219 c!235899) b!1435076))

(assert (= (and d!413219 (not c!235899)) b!1435077))

(assert (= (and d!413219 res!649825) b!1435078))

(assert (= (and b!1435078 res!649826) b!1435079))

(declare-fun m!1639383 () Bool)

(assert (=> b!1435078 m!1639383))

(declare-fun m!1639385 () Bool)

(assert (=> b!1435078 m!1639385))

(declare-fun m!1639387 () Bool)

(assert (=> b!1435078 m!1639387))

(declare-fun m!1639389 () Bool)

(assert (=> b!1435077 m!1639389))

(declare-fun m!1639391 () Bool)

(assert (=> d!413219 m!1639391))

(declare-fun m!1639393 () Bool)

(assert (=> d!413219 m!1639393))

(declare-fun m!1639395 () Bool)

(assert (=> d!413219 m!1639395))

(assert (=> b!1434291 d!413219))

(declare-fun d!413221 () Bool)

(assert (=> d!413221 (= (head!2908 (originalCharacters!3485 (h!20331 (t!127239 lt!489186)))) (h!20329 (originalCharacters!3485 (h!20331 (t!127239 lt!489186)))))))

(assert (=> b!1434291 d!413221))

(assert (=> b!1434291 d!413011))

(declare-fun d!413223 () Bool)

(declare-fun e!916055 () Bool)

(assert (=> d!413223 e!916055))

(declare-fun res!649827 () Bool)

(assert (=> d!413223 (=> (not res!649827) (not e!916055))))

(assert (=> d!413223 (= res!649827 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489186)))))) (t!127239 lt!489186)))))

(declare-fun lt!490276 () Unit!22769)

(declare-fun e!916056 () Unit!22769)

(assert (=> d!413223 (= lt!490276 e!916056)))

(declare-fun c!235900 () Bool)

(assert (=> d!413223 (= c!235900 (or ((_ is Nil!14930) (t!127239 lt!489186)) ((_ is Nil!14930) (t!127239 (t!127239 lt!489186)))))))

(assert (=> d!413223 (not (isEmpty!9275 (rules!11404 other!32)))))

(assert (=> d!413223 (= (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) (t!127239 lt!489186)) lt!490276)))

(declare-fun b!1435080 () Bool)

(declare-fun Unit!22903 () Unit!22769)

(assert (=> b!1435080 (= e!916056 Unit!22903)))

(declare-fun b!1435081 () Bool)

(declare-fun Unit!22904 () Unit!22769)

(assert (=> b!1435081 (= e!916056 Unit!22904)))

(declare-fun lt!490273 () BalanceConc!10084)

(assert (=> b!1435081 (= lt!490273 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489186))))))

(declare-fun lt!490287 () BalanceConc!10084)

(assert (=> b!1435081 (= lt!490287 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 (t!127239 lt!489186)))))))

(declare-fun lt!490293 () tuple2!14120)

(assert (=> b!1435081 (= lt!490293 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!490287))))

(declare-fun lt!490275 () List!14994)

(assert (=> b!1435081 (= lt!490275 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))))))

(declare-fun lt!490282 () List!14994)

(assert (=> b!1435081 (= lt!490282 (list!5931 lt!490287))))

(declare-fun lt!490285 () Unit!22769)

(assert (=> b!1435081 (= lt!490285 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490275 lt!490282))))

(assert (=> b!1435081 (isPrefix!1193 lt!490275 (++!4001 lt!490275 lt!490282))))

(declare-fun lt!490274 () Unit!22769)

(assert (=> b!1435081 (= lt!490274 lt!490285)))

(declare-fun lt!490292 () Unit!22769)

(assert (=> b!1435081 (= lt!490292 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) (t!127239 (t!127239 lt!489186))))))

(declare-fun lt!490278 () Unit!22769)

(assert (=> b!1435081 (= lt!490278 (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 (t!127239 lt!489186))) (t!127239 (t!127239 (t!127239 lt!489186))) (_1!7946 lt!490293)))))

(assert (=> b!1435081 (= (list!5932 (_1!7946 lt!490293)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 (t!127239 lt!489186)))) (h!20331 (t!127239 (t!127239 lt!489186))))))))

(declare-fun lt!490271 () Unit!22769)

(assert (=> b!1435081 (= lt!490271 lt!490278)))

(declare-fun lt!490294 () Option!2849)

(assert (=> b!1435081 (= lt!490294 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 lt!490273)))))

(assert (=> b!1435081 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 (t!127239 lt!489186)))) (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 (t!127239 lt!489186))) 0 (BalanceConc!10085 Empty!5072)))))

(declare-fun lt!490279 () Unit!22769)

(declare-fun Unit!22905 () Unit!22769)

(assert (=> b!1435081 (= lt!490279 Unit!22905)))

(declare-fun lt!490286 () Unit!22769)

(assert (=> b!1435081 (= lt!490286 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))) (list!5931 lt!490287)))))

(assert (=> b!1435081 (= (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))) (originalCharacters!3485 (h!20331 (t!127239 lt!489186))))))

(declare-fun lt!490281 () Unit!22769)

(declare-fun Unit!22906 () Unit!22769)

(assert (=> b!1435081 (= lt!490281 Unit!22906)))

(assert (=> b!1435081 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (t!127239 lt!489186)))) 0))) (Cons!14928 (head!2908 (originalCharacters!3485 (h!20331 (t!127239 (t!127239 lt!489186))))) Nil!14928))))

(declare-fun lt!490288 () Unit!22769)

(declare-fun Unit!22907 () Unit!22769)

(assert (=> b!1435081 (= lt!490288 Unit!22907)))

(assert (=> b!1435081 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (t!127239 lt!489186)))) 0))) (Cons!14928 (head!2908 (list!5931 lt!490287)) Nil!14928))))

(declare-fun lt!490295 () Unit!22769)

(declare-fun Unit!22908 () Unit!22769)

(assert (=> b!1435081 (= lt!490295 Unit!22908)))

(assert (=> b!1435081 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (t!127239 lt!489186)))) 0))) (Cons!14928 (head!2909 lt!490287) Nil!14928))))

(declare-fun lt!490283 () Unit!22769)

(declare-fun Unit!22909 () Unit!22769)

(assert (=> b!1435081 (= lt!490283 Unit!22909)))

(assert (=> b!1435081 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (originalCharacters!3485 (h!20331 (t!127239 lt!489186)))))))

(declare-fun lt!490272 () Unit!22769)

(declare-fun Unit!22910 () Unit!22769)

(assert (=> b!1435081 (= lt!490272 Unit!22910)))

(assert (=> b!1435081 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))))))

(declare-fun lt!490270 () Unit!22769)

(declare-fun Unit!22911 () Unit!22769)

(assert (=> b!1435081 (= lt!490270 Unit!22911)))

(declare-fun lt!490277 () Unit!22769)

(declare-fun Unit!22912 () Unit!22769)

(assert (=> b!1435081 (= lt!490277 Unit!22912)))

(assert (=> b!1435081 (= (_1!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))))) (h!20331 (t!127239 lt!489186)))))

(declare-fun lt!490284 () Unit!22769)

(declare-fun Unit!22913 () Unit!22769)

(assert (=> b!1435081 (= lt!490284 Unit!22913)))

(assert (=> b!1435081 (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186))))))))))

(declare-fun lt!490290 () Unit!22769)

(declare-fun Unit!22914 () Unit!22769)

(assert (=> b!1435081 (= lt!490290 Unit!22914)))

(assert (=> b!1435081 (matchR!1819 (regex!2623 (rule!4386 (h!20331 (t!127239 lt!489186)))) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489186)))))))

(declare-fun lt!490280 () Unit!22769)

(declare-fun Unit!22915 () Unit!22769)

(assert (=> b!1435081 (= lt!490280 Unit!22915)))

(assert (=> b!1435081 (= (rule!4386 (h!20331 (t!127239 lt!489186))) (rule!4386 (h!20331 (t!127239 lt!489186))))))

(declare-fun lt!490289 () Unit!22769)

(declare-fun Unit!22916 () Unit!22769)

(assert (=> b!1435081 (= lt!490289 Unit!22916)))

(declare-fun lt!490291 () Unit!22769)

(assert (=> b!1435081 (= lt!490291 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 other!32) (h!20331 (t!127239 lt!489186)) (rule!4386 (h!20331 (t!127239 lt!489186))) (list!5931 lt!490287)))))

(declare-fun b!1435082 () Bool)

(assert (=> b!1435082 (= e!916055 (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489186)))))))))

(assert (= (and d!413223 c!235900) b!1435080))

(assert (= (and d!413223 (not c!235900)) b!1435081))

(assert (= (and d!413223 res!649827) b!1435082))

(declare-fun m!1639397 () Bool)

(assert (=> d!413223 m!1639397))

(assert (=> d!413223 m!1637151))

(assert (=> d!413223 m!1637367))

(assert (=> d!413223 m!1637369))

(assert (=> d!413223 m!1637367))

(assert (=> d!413223 m!1637369))

(declare-fun m!1639399 () Bool)

(assert (=> d!413223 m!1639399))

(declare-fun m!1639401 () Bool)

(assert (=> b!1435081 m!1639401))

(assert (=> b!1435081 m!1637407))

(declare-fun m!1639403 () Bool)

(assert (=> b!1435081 m!1639403))

(declare-fun m!1639405 () Bool)

(assert (=> b!1435081 m!1639405))

(declare-fun m!1639407 () Bool)

(assert (=> b!1435081 m!1639407))

(declare-fun m!1639409 () Bool)

(assert (=> b!1435081 m!1639409))

(assert (=> b!1435081 m!1639405))

(declare-fun m!1639411 () Bool)

(assert (=> b!1435081 m!1639411))

(declare-fun m!1639413 () Bool)

(assert (=> b!1435081 m!1639413))

(declare-fun m!1639415 () Bool)

(assert (=> b!1435081 m!1639415))

(declare-fun m!1639417 () Bool)

(assert (=> b!1435081 m!1639417))

(declare-fun m!1639419 () Bool)

(assert (=> b!1435081 m!1639419))

(declare-fun m!1639421 () Bool)

(assert (=> b!1435081 m!1639421))

(declare-fun m!1639423 () Bool)

(assert (=> b!1435081 m!1639423))

(declare-fun m!1639425 () Bool)

(assert (=> b!1435081 m!1639425))

(declare-fun m!1639427 () Bool)

(assert (=> b!1435081 m!1639427))

(declare-fun m!1639429 () Bool)

(assert (=> b!1435081 m!1639429))

(assert (=> b!1435081 m!1637253))

(declare-fun m!1639431 () Bool)

(assert (=> b!1435081 m!1639431))

(declare-fun m!1639433 () Bool)

(assert (=> b!1435081 m!1639433))

(assert (=> b!1435081 m!1639431))

(declare-fun m!1639435 () Bool)

(assert (=> b!1435081 m!1639435))

(assert (=> b!1435081 m!1639413))

(assert (=> b!1435081 m!1639409))

(declare-fun m!1639437 () Bool)

(assert (=> b!1435081 m!1639437))

(declare-fun m!1639439 () Bool)

(assert (=> b!1435081 m!1639439))

(declare-fun m!1639441 () Bool)

(assert (=> b!1435081 m!1639441))

(declare-fun m!1639443 () Bool)

(assert (=> b!1435081 m!1639443))

(declare-fun m!1639445 () Bool)

(assert (=> b!1435081 m!1639445))

(declare-fun m!1639447 () Bool)

(assert (=> b!1435081 m!1639447))

(assert (=> b!1435081 m!1639431))

(assert (=> b!1435081 m!1639431))

(declare-fun m!1639449 () Bool)

(assert (=> b!1435081 m!1639449))

(assert (=> b!1435081 m!1637367))

(assert (=> b!1435081 m!1637369))

(assert (=> b!1435081 m!1637253))

(declare-fun m!1639451 () Bool)

(assert (=> b!1435081 m!1639451))

(assert (=> b!1435081 m!1639427))

(declare-fun m!1639453 () Bool)

(assert (=> b!1435081 m!1639453))

(assert (=> b!1435081 m!1639419))

(assert (=> b!1435081 m!1638447))

(declare-fun m!1639455 () Bool)

(assert (=> b!1435081 m!1639455))

(assert (=> b!1435081 m!1637367))

(declare-fun m!1639457 () Bool)

(assert (=> b!1435081 m!1639457))

(assert (=> b!1435081 m!1638447))

(assert (=> b!1435081 m!1639443))

(assert (=> b!1435081 m!1637251))

(declare-fun m!1639459 () Bool)

(assert (=> b!1435081 m!1639459))

(assert (=> b!1435081 m!1637253))

(assert (=> b!1435081 m!1639405))

(assert (=> b!1435081 m!1637407))

(assert (=> b!1435081 m!1639445))

(declare-fun m!1639461 () Bool)

(assert (=> b!1435081 m!1639461))

(assert (=> b!1435081 m!1639427))

(assert (=> b!1435081 m!1637251))

(assert (=> b!1435081 m!1637253))

(declare-fun m!1639463 () Bool)

(assert (=> b!1435081 m!1639463))

(assert (=> b!1435081 m!1639441))

(assert (=> b!1435081 m!1639423))

(assert (=> b!1435082 m!1637367))

(assert (=> b!1435082 m!1637367))

(assert (=> b!1435082 m!1637369))

(assert (=> b!1435082 m!1637369))

(assert (=> b!1435082 m!1639399))

(declare-fun m!1639465 () Bool)

(assert (=> b!1435082 m!1639465))

(assert (=> b!1434291 d!413223))

(declare-fun b!1435123 () Bool)

(declare-fun e!916082 () Bool)

(declare-fun lt!490349 () Bool)

(assert (=> b!1435123 (= e!916082 (not lt!490349))))

(declare-fun b!1435124 () Bool)

(declare-fun e!916079 () Bool)

(declare-fun call!97310 () Bool)

(assert (=> b!1435124 (= e!916079 (= lt!490349 call!97310))))

(declare-fun b!1435125 () Bool)

(declare-fun res!649852 () Bool)

(declare-fun e!916077 () Bool)

(assert (=> b!1435125 (=> res!649852 e!916077)))

(declare-fun tail!2154 (List!14994) List!14994)

(assert (=> b!1435125 (= res!649852 (not (isEmpty!9278 (tail!2154 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))

(declare-fun b!1435126 () Bool)

(declare-fun e!916083 () Bool)

(declare-fun e!916081 () Bool)

(assert (=> b!1435126 (= e!916083 e!916081)))

(declare-fun res!649853 () Bool)

(assert (=> b!1435126 (=> (not res!649853) (not e!916081))))

(assert (=> b!1435126 (= res!649853 (not lt!490349))))

(declare-fun b!1435127 () Bool)

(assert (=> b!1435127 (= e!916079 e!916082)))

(declare-fun c!235910 () Bool)

(assert (=> b!1435127 (= c!235910 ((_ is EmptyLang!3937) (regex!2623 (rule!4386 (h!20331 lt!489186)))))))

(declare-fun b!1435128 () Bool)

(declare-fun res!649856 () Bool)

(declare-fun e!916078 () Bool)

(assert (=> b!1435128 (=> (not res!649856) (not e!916078))))

(assert (=> b!1435128 (= res!649856 (not call!97310))))

(declare-fun b!1435129 () Bool)

(declare-fun e!916080 () Bool)

(declare-fun derivativeStep!997 (Regex!3937 C!8052) Regex!3937)

(assert (=> b!1435129 (= e!916080 (matchR!1819 (derivativeStep!997 (regex!2623 (rule!4386 (h!20331 lt!489186))) (head!2908 (list!5931 (charsOf!1515 (h!20331 lt!489186))))) (tail!2154 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))))

(declare-fun b!1435130 () Bool)

(assert (=> b!1435130 (= e!916081 e!916077)))

(declare-fun res!649850 () Bool)

(assert (=> b!1435130 (=> res!649850 e!916077)))

(assert (=> b!1435130 (= res!649850 call!97310)))

(declare-fun b!1435131 () Bool)

(assert (=> b!1435131 (= e!916077 (not (= (head!2908 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) (c!235661 (regex!2623 (rule!4386 (h!20331 lt!489186)))))))))

(declare-fun d!413225 () Bool)

(assert (=> d!413225 e!916079))

(declare-fun c!235911 () Bool)

(assert (=> d!413225 (= c!235911 ((_ is EmptyExpr!3937) (regex!2623 (rule!4386 (h!20331 lt!489186)))))))

(assert (=> d!413225 (= lt!490349 e!916080)))

(declare-fun c!235912 () Bool)

(assert (=> d!413225 (= c!235912 (isEmpty!9278 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun validRegex!1671 (Regex!3937) Bool)

(assert (=> d!413225 (validRegex!1671 (regex!2623 (rule!4386 (h!20331 lt!489186))))))

(assert (=> d!413225 (= (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489186))) (list!5931 (charsOf!1515 (h!20331 lt!489186)))) lt!490349)))

(declare-fun bm!97305 () Bool)

(assert (=> bm!97305 (= call!97310 (isEmpty!9278 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun b!1435132 () Bool)

(declare-fun nullable!1241 (Regex!3937) Bool)

(assert (=> b!1435132 (= e!916080 (nullable!1241 (regex!2623 (rule!4386 (h!20331 lt!489186)))))))

(declare-fun b!1435133 () Bool)

(declare-fun res!649857 () Bool)

(assert (=> b!1435133 (=> (not res!649857) (not e!916078))))

(assert (=> b!1435133 (= res!649857 (isEmpty!9278 (tail!2154 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))))

(declare-fun b!1435134 () Bool)

(assert (=> b!1435134 (= e!916078 (= (head!2908 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) (c!235661 (regex!2623 (rule!4386 (h!20331 lt!489186))))))))

(declare-fun b!1435135 () Bool)

(declare-fun res!649851 () Bool)

(assert (=> b!1435135 (=> res!649851 e!916083)))

(assert (=> b!1435135 (= res!649851 (not ((_ is ElementMatch!3937) (regex!2623 (rule!4386 (h!20331 lt!489186))))))))

(assert (=> b!1435135 (= e!916082 e!916083)))

(declare-fun b!1435136 () Bool)

(declare-fun res!649854 () Bool)

(assert (=> b!1435136 (=> res!649854 e!916083)))

(assert (=> b!1435136 (= res!649854 e!916078)))

(declare-fun res!649855 () Bool)

(assert (=> b!1435136 (=> (not res!649855) (not e!916078))))

(assert (=> b!1435136 (= res!649855 lt!490349)))

(assert (= (and d!413225 c!235912) b!1435132))

(assert (= (and d!413225 (not c!235912)) b!1435129))

(assert (= (and d!413225 c!235911) b!1435124))

(assert (= (and d!413225 (not c!235911)) b!1435127))

(assert (= (and b!1435127 c!235910) b!1435123))

(assert (= (and b!1435127 (not c!235910)) b!1435135))

(assert (= (and b!1435135 (not res!649851)) b!1435136))

(assert (= (and b!1435136 res!649855) b!1435128))

(assert (= (and b!1435128 res!649856) b!1435133))

(assert (= (and b!1435133 res!649857) b!1435134))

(assert (= (and b!1435136 (not res!649854)) b!1435126))

(assert (= (and b!1435126 res!649853) b!1435130))

(assert (= (and b!1435130 (not res!649850)) b!1435125))

(assert (= (and b!1435125 (not res!649852)) b!1435131))

(assert (= (or b!1435124 b!1435128 b!1435130) bm!97305))

(assert (=> b!1435125 m!1637051))

(declare-fun m!1639509 () Bool)

(assert (=> b!1435125 m!1639509))

(assert (=> b!1435125 m!1639509))

(declare-fun m!1639513 () Bool)

(assert (=> b!1435125 m!1639513))

(assert (=> b!1435134 m!1637051))

(declare-fun m!1639517 () Bool)

(assert (=> b!1435134 m!1639517))

(assert (=> bm!97305 m!1637051))

(declare-fun m!1639519 () Bool)

(assert (=> bm!97305 m!1639519))

(assert (=> b!1435133 m!1637051))

(assert (=> b!1435133 m!1639509))

(assert (=> b!1435133 m!1639509))

(assert (=> b!1435133 m!1639513))

(assert (=> d!413225 m!1637051))

(assert (=> d!413225 m!1639519))

(declare-fun m!1639521 () Bool)

(assert (=> d!413225 m!1639521))

(declare-fun m!1639523 () Bool)

(assert (=> b!1435132 m!1639523))

(assert (=> b!1435129 m!1637051))

(assert (=> b!1435129 m!1639517))

(assert (=> b!1435129 m!1639517))

(declare-fun m!1639525 () Bool)

(assert (=> b!1435129 m!1639525))

(assert (=> b!1435129 m!1637051))

(assert (=> b!1435129 m!1639509))

(assert (=> b!1435129 m!1639525))

(assert (=> b!1435129 m!1639509))

(declare-fun m!1639527 () Bool)

(assert (=> b!1435129 m!1639527))

(assert (=> b!1435131 m!1637051))

(assert (=> b!1435131 m!1639517))

(assert (=> b!1434291 d!413225))

(declare-fun d!413229 () Bool)

(assert (=> d!413229 (= (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))))))) ((_ is Nil!14928) (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))))))))))

(assert (=> b!1434291 d!413229))

(declare-fun b!1435137 () Bool)

(declare-fun res!649858 () Bool)

(declare-fun e!916086 () Bool)

(assert (=> b!1435137 (=> (not res!649858) (not e!916086))))

(declare-fun lt!490350 () tuple2!14120)

(assert (=> b!1435137 (= res!649858 (= (list!5932 (_1!7946 lt!490350)) (_1!7948 (lexList!699 Lexer!2283 (rules!11404 other!32) (list!5931 lt!489398)))))))

(declare-fun d!413231 () Bool)

(assert (=> d!413231 e!916086))

(declare-fun res!649860 () Bool)

(assert (=> d!413231 (=> (not res!649860) (not e!916086))))

(declare-fun e!916085 () Bool)

(assert (=> d!413231 (= res!649860 e!916085)))

(declare-fun c!235913 () Bool)

(assert (=> d!413231 (= c!235913 (> (size!12238 (_1!7946 lt!490350)) 0))))

(assert (=> d!413231 (= lt!490350 (lexTailRecV2!454 Lexer!2283 (rules!11404 other!32) lt!489398 (BalanceConc!10085 Empty!5072) lt!489398 (BalanceConc!10087 Empty!5073)))))

(assert (=> d!413231 (= (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489398) lt!490350)))

(declare-fun b!1435138 () Bool)

(declare-fun e!916084 () Bool)

(assert (=> b!1435138 (= e!916084 (not (isEmpty!9269 (_1!7946 lt!490350))))))

(declare-fun b!1435139 () Bool)

(assert (=> b!1435139 (= e!916086 (= (list!5931 (_2!7946 lt!490350)) (_2!7948 (lexList!699 Lexer!2283 (rules!11404 other!32) (list!5931 lt!489398)))))))

(declare-fun b!1435140 () Bool)

(assert (=> b!1435140 (= e!916085 (= (_2!7946 lt!490350) lt!489398))))

(declare-fun b!1435141 () Bool)

(assert (=> b!1435141 (= e!916085 e!916084)))

(declare-fun res!649859 () Bool)

(assert (=> b!1435141 (= res!649859 (< (size!12244 (_2!7946 lt!490350)) (size!12244 lt!489398)))))

(assert (=> b!1435141 (=> (not res!649859) (not e!916084))))

(assert (= (and d!413231 c!235913) b!1435141))

(assert (= (and d!413231 (not c!235913)) b!1435140))

(assert (= (and b!1435141 res!649859) b!1435138))

(assert (= (and d!413231 res!649860) b!1435137))

(assert (= (and b!1435137 res!649858) b!1435139))

(declare-fun m!1639529 () Bool)

(assert (=> b!1435139 m!1639529))

(assert (=> b!1435139 m!1637397))

(assert (=> b!1435139 m!1637397))

(declare-fun m!1639531 () Bool)

(assert (=> b!1435139 m!1639531))

(declare-fun m!1639533 () Bool)

(assert (=> b!1435137 m!1639533))

(assert (=> b!1435137 m!1637397))

(assert (=> b!1435137 m!1637397))

(assert (=> b!1435137 m!1639531))

(declare-fun m!1639535 () Bool)

(assert (=> b!1435138 m!1639535))

(declare-fun m!1639537 () Bool)

(assert (=> b!1435141 m!1639537))

(declare-fun m!1639539 () Bool)

(assert (=> b!1435141 m!1639539))

(declare-fun m!1639541 () Bool)

(assert (=> d!413231 m!1639541))

(declare-fun m!1639543 () Bool)

(assert (=> d!413231 m!1639543))

(assert (=> b!1434291 d!413231))

(declare-fun d!413233 () Bool)

(assert (=> d!413233 (= (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (originalCharacters!3485 (h!20331 lt!489186)))) (not (isEmpty!9282 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (originalCharacters!3485 (h!20331 lt!489186))))))))

(declare-fun bs!341057 () Bool)

(assert (= bs!341057 d!413233))

(assert (=> bs!341057 m!1637375))

(declare-fun m!1639545 () Bool)

(assert (=> bs!341057 m!1639545))

(assert (=> b!1434291 d!413233))

(declare-fun b!1435162 () Bool)

(declare-fun e!916099 () Bool)

(declare-fun e!916101 () Bool)

(assert (=> b!1435162 (= e!916099 e!916101)))

(declare-fun res!649870 () Bool)

(assert (=> b!1435162 (=> (not res!649870) (not e!916101))))

(assert (=> b!1435162 (= res!649870 (not ((_ is Nil!14928) (++!4001 lt!489386 lt!489393))))))

(declare-fun b!1435163 () Bool)

(declare-fun res!649869 () Bool)

(assert (=> b!1435163 (=> (not res!649869) (not e!916101))))

(assert (=> b!1435163 (= res!649869 (= (head!2908 lt!489386) (head!2908 (++!4001 lt!489386 lt!489393))))))

(declare-fun d!413235 () Bool)

(declare-fun e!916100 () Bool)

(assert (=> d!413235 e!916100))

(declare-fun res!649871 () Bool)

(assert (=> d!413235 (=> res!649871 e!916100)))

(declare-fun lt!490355 () Bool)

(assert (=> d!413235 (= res!649871 (not lt!490355))))

(assert (=> d!413235 (= lt!490355 e!916099)))

(declare-fun res!649872 () Bool)

(assert (=> d!413235 (=> res!649872 e!916099)))

(assert (=> d!413235 (= res!649872 ((_ is Nil!14928) lt!489386))))

(assert (=> d!413235 (= (isPrefix!1193 lt!489386 (++!4001 lt!489386 lt!489393)) lt!490355)))

(declare-fun b!1435164 () Bool)

(assert (=> b!1435164 (= e!916101 (isPrefix!1193 (tail!2154 lt!489386) (tail!2154 (++!4001 lt!489386 lt!489393))))))

(declare-fun b!1435165 () Bool)

(assert (=> b!1435165 (= e!916100 (>= (size!12239 (++!4001 lt!489386 lt!489393)) (size!12239 lt!489386)))))

(assert (= (and d!413235 (not res!649872)) b!1435162))

(assert (= (and b!1435162 res!649870) b!1435163))

(assert (= (and b!1435163 res!649869) b!1435164))

(assert (= (and d!413235 (not res!649871)) b!1435165))

(declare-fun m!1639547 () Bool)

(assert (=> b!1435163 m!1639547))

(assert (=> b!1435163 m!1637385))

(declare-fun m!1639549 () Bool)

(assert (=> b!1435163 m!1639549))

(declare-fun m!1639551 () Bool)

(assert (=> b!1435164 m!1639551))

(assert (=> b!1435164 m!1637385))

(declare-fun m!1639553 () Bool)

(assert (=> b!1435164 m!1639553))

(assert (=> b!1435164 m!1639551))

(assert (=> b!1435164 m!1639553))

(declare-fun m!1639555 () Bool)

(assert (=> b!1435164 m!1639555))

(assert (=> b!1435165 m!1637385))

(declare-fun m!1639557 () Bool)

(assert (=> b!1435165 m!1639557))

(assert (=> b!1435165 m!1639385))

(assert (=> b!1434291 d!413235))

(declare-fun b!1435182 () Bool)

(declare-fun e!916112 () Option!2849)

(declare-fun lt!490357 () Option!2849)

(declare-fun lt!490360 () Option!2849)

(assert (=> b!1435182 (= e!916112 (ite (and ((_ is None!2848) lt!490357) ((_ is None!2848) lt!490360)) None!2848 (ite ((_ is None!2848) lt!490360) lt!490357 (ite ((_ is None!2848) lt!490357) lt!490360 (ite (>= (size!12235 (_1!7947 (v!22358 lt!490357))) (size!12235 (_1!7947 (v!22358 lt!490360)))) lt!490357 lt!490360)))))))

(declare-fun call!97311 () Option!2849)

(assert (=> b!1435182 (= lt!490357 call!97311)))

(assert (=> b!1435182 (= lt!490360 (maxPrefix!1183 Lexer!2283 (t!127240 (rules!11404 other!32)) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun b!1435183 () Bool)

(declare-fun e!916110 () Bool)

(declare-fun e!916111 () Bool)

(assert (=> b!1435183 (= e!916110 e!916111)))

(declare-fun res!649895 () Bool)

(assert (=> b!1435183 (=> (not res!649895) (not e!916111))))

(declare-fun lt!490359 () Option!2849)

(assert (=> b!1435183 (= res!649895 (isDefined!2306 lt!490359))))

(declare-fun b!1435184 () Bool)

(assert (=> b!1435184 (= e!916111 (contains!2858 (rules!11404 other!32) (rule!4386 (_1!7947 (get!4569 lt!490359)))))))

(declare-fun d!413237 () Bool)

(assert (=> d!413237 e!916110))

(declare-fun res!649893 () Bool)

(assert (=> d!413237 (=> res!649893 e!916110)))

(assert (=> d!413237 (= res!649893 (isEmpty!9282 lt!490359))))

(assert (=> d!413237 (= lt!490359 e!916112)))

(declare-fun c!235920 () Bool)

(assert (=> d!413237 (= c!235920 (and ((_ is Cons!14931) (rules!11404 other!32)) ((_ is Nil!14931) (t!127240 (rules!11404 other!32)))))))

(declare-fun lt!490356 () Unit!22769)

(declare-fun lt!490358 () Unit!22769)

(assert (=> d!413237 (= lt!490356 lt!490358)))

(assert (=> d!413237 (isPrefix!1193 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 (charsOf!1515 (h!20331 lt!489186))))))

(assert (=> d!413237 (= lt!490358 (lemmaIsPrefixRefl!826 (list!5931 (charsOf!1515 (h!20331 lt!489186))) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(assert (=> d!413237 (rulesValidInductive!813 Lexer!2283 (rules!11404 other!32))))

(assert (=> d!413237 (= (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186)))) lt!490359)))

(declare-fun b!1435185 () Bool)

(declare-fun res!649890 () Bool)

(assert (=> b!1435185 (=> (not res!649890) (not e!916111))))

(assert (=> b!1435185 (= res!649890 (< (size!12239 (_2!7947 (get!4569 lt!490359))) (size!12239 (list!5931 (charsOf!1515 (h!20331 lt!489186))))))))

(declare-fun b!1435186 () Bool)

(assert (=> b!1435186 (= e!916112 call!97311)))

(declare-fun bm!97306 () Bool)

(assert (=> bm!97306 (= call!97311 (maxPrefixOneRule!652 Lexer!2283 (h!20332 (rules!11404 other!32)) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun b!1435187 () Bool)

(declare-fun res!649891 () Bool)

(assert (=> b!1435187 (=> (not res!649891) (not e!916111))))

(assert (=> b!1435187 (= res!649891 (matchR!1819 (regex!2623 (rule!4386 (_1!7947 (get!4569 lt!490359)))) (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490359))))))))

(declare-fun b!1435188 () Bool)

(declare-fun res!649889 () Bool)

(assert (=> b!1435188 (=> (not res!649889) (not e!916111))))

(assert (=> b!1435188 (= res!649889 (= (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490359)))) (originalCharacters!3485 (_1!7947 (get!4569 lt!490359)))))))

(declare-fun b!1435189 () Bool)

(declare-fun res!649894 () Bool)

(assert (=> b!1435189 (=> (not res!649894) (not e!916111))))

(assert (=> b!1435189 (= res!649894 (= (value!84403 (_1!7947 (get!4569 lt!490359))) (apply!3823 (transformation!2623 (rule!4386 (_1!7947 (get!4569 lt!490359)))) (seqFromList!1697 (originalCharacters!3485 (_1!7947 (get!4569 lt!490359)))))))))

(declare-fun b!1435190 () Bool)

(declare-fun res!649892 () Bool)

(assert (=> b!1435190 (=> (not res!649892) (not e!916111))))

(assert (=> b!1435190 (= res!649892 (= (++!4001 (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490359)))) (_2!7947 (get!4569 lt!490359))) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(assert (= (and d!413237 c!235920) b!1435186))

(assert (= (and d!413237 (not c!235920)) b!1435182))

(assert (= (or b!1435186 b!1435182) bm!97306))

(assert (= (and d!413237 (not res!649893)) b!1435183))

(assert (= (and b!1435183 res!649895) b!1435188))

(assert (= (and b!1435188 res!649889) b!1435185))

(assert (= (and b!1435185 res!649890) b!1435190))

(assert (= (and b!1435190 res!649892) b!1435189))

(assert (= (and b!1435189 res!649894) b!1435187))

(assert (= (and b!1435187 res!649891) b!1435184))

(assert (=> bm!97306 m!1637051))

(declare-fun m!1639559 () Bool)

(assert (=> bm!97306 m!1639559))

(declare-fun m!1639561 () Bool)

(assert (=> b!1435188 m!1639561))

(declare-fun m!1639563 () Bool)

(assert (=> b!1435188 m!1639563))

(assert (=> b!1435188 m!1639563))

(declare-fun m!1639565 () Bool)

(assert (=> b!1435188 m!1639565))

(assert (=> b!1435184 m!1639561))

(declare-fun m!1639567 () Bool)

(assert (=> b!1435184 m!1639567))

(assert (=> b!1435182 m!1637051))

(declare-fun m!1639569 () Bool)

(assert (=> b!1435182 m!1639569))

(assert (=> b!1435190 m!1639561))

(assert (=> b!1435190 m!1639563))

(assert (=> b!1435190 m!1639563))

(assert (=> b!1435190 m!1639565))

(assert (=> b!1435190 m!1639565))

(declare-fun m!1639571 () Bool)

(assert (=> b!1435190 m!1639571))

(assert (=> b!1435187 m!1639561))

(assert (=> b!1435187 m!1639563))

(assert (=> b!1435187 m!1639563))

(assert (=> b!1435187 m!1639565))

(assert (=> b!1435187 m!1639565))

(declare-fun m!1639573 () Bool)

(assert (=> b!1435187 m!1639573))

(assert (=> b!1435185 m!1639561))

(declare-fun m!1639575 () Bool)

(assert (=> b!1435185 m!1639575))

(assert (=> b!1435185 m!1637051))

(assert (=> b!1435185 m!1637233))

(assert (=> b!1435189 m!1639561))

(declare-fun m!1639577 () Bool)

(assert (=> b!1435189 m!1639577))

(assert (=> b!1435189 m!1639577))

(declare-fun m!1639579 () Bool)

(assert (=> b!1435189 m!1639579))

(declare-fun m!1639581 () Bool)

(assert (=> d!413237 m!1639581))

(assert (=> d!413237 m!1637051))

(assert (=> d!413237 m!1637051))

(declare-fun m!1639583 () Bool)

(assert (=> d!413237 m!1639583))

(assert (=> d!413237 m!1637051))

(assert (=> d!413237 m!1637051))

(declare-fun m!1639585 () Bool)

(assert (=> d!413237 m!1639585))

(assert (=> d!413237 m!1638813))

(declare-fun m!1639587 () Bool)

(assert (=> b!1435183 m!1639587))

(assert (=> b!1434291 d!413237))

(declare-fun d!413239 () Bool)

(assert (=> d!413239 (= (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489186))) (h!20331 (t!127239 lt!489186)))) (list!5936 (c!235662 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489186))) (h!20331 (t!127239 lt!489186))))))))

(declare-fun bs!341058 () Bool)

(assert (= bs!341058 d!413239))

(declare-fun m!1639589 () Bool)

(assert (=> bs!341058 m!1639589))

(assert (=> b!1434291 d!413239))

(declare-fun d!413241 () Bool)

(assert (=> d!413241 (= (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))))) (v!22358 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 lt!489186))))))))

(assert (=> b!1434291 d!413241))

(declare-fun d!413243 () Bool)

(declare-fun e!916122 () Bool)

(assert (=> d!413243 e!916122))

(declare-fun res!649906 () Bool)

(assert (=> d!413243 (=> (not res!649906) (not e!916122))))

(declare-fun lt!490364 () BalanceConc!10084)

(assert (=> d!413243 (= res!649906 (= (list!5931 lt!490364) (Cons!14928 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0) Nil!14928)))))

(declare-fun singleton!510 (C!8052) BalanceConc!10084)

(assert (=> d!413243 (= lt!490364 (singleton!510 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0)))))

(assert (=> d!413243 (= (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489186))) 0)) lt!490364)))

(declare-fun b!1435207 () Bool)

(assert (=> b!1435207 (= e!916122 (isBalanced!1504 (c!235660 lt!490364)))))

(assert (= (and d!413243 res!649906) b!1435207))

(declare-fun m!1639607 () Bool)

(assert (=> d!413243 m!1639607))

(assert (=> d!413243 m!1637409))

(declare-fun m!1639609 () Bool)

(assert (=> d!413243 m!1639609))

(declare-fun m!1639611 () Bool)

(assert (=> b!1435207 m!1639611))

(assert (=> b!1434291 d!413243))

(declare-fun d!413247 () Bool)

(assert (=> d!413247 (= (inv!19824 (tag!2885 (h!20332 (rules!11404 other!32)))) (= (mod (str.len (value!84402 (tag!2885 (h!20332 (rules!11404 other!32))))) 2) 0))))

(assert (=> b!1434410 d!413247))

(declare-fun d!413249 () Bool)

(declare-fun res!649907 () Bool)

(declare-fun e!916123 () Bool)

(assert (=> d!413249 (=> (not res!649907) (not e!916123))))

(assert (=> d!413249 (= res!649907 (semiInverseModEq!986 (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toValue!3926 (transformation!2623 (h!20332 (rules!11404 other!32))))))))

(assert (=> d!413249 (= (inv!19842 (transformation!2623 (h!20332 (rules!11404 other!32)))) e!916123)))

(declare-fun b!1435208 () Bool)

(assert (=> b!1435208 (= e!916123 (equivClasses!945 (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toValue!3926 (transformation!2623 (h!20332 (rules!11404 other!32))))))))

(assert (= (and d!413249 res!649907) b!1435208))

(declare-fun m!1639613 () Bool)

(assert (=> d!413249 m!1639613))

(declare-fun m!1639615 () Bool)

(assert (=> b!1435208 m!1639615))

(assert (=> b!1434410 d!413249))

(declare-fun d!413251 () Bool)

(declare-fun res!649908 () Bool)

(declare-fun e!916124 () Bool)

(assert (=> d!413251 (=> (not res!649908) (not e!916124))))

(assert (=> d!413251 (= res!649908 (<= (size!12241 (list!5938 (xs!7806 (c!235662 (tokens!1984 thiss!10022))))) 512))))

(assert (=> d!413251 (= (inv!19834 (c!235662 (tokens!1984 thiss!10022))) e!916124)))

(declare-fun b!1435209 () Bool)

(declare-fun res!649909 () Bool)

(assert (=> b!1435209 (=> (not res!649909) (not e!916124))))

(assert (=> b!1435209 (= res!649909 (= (csize!10377 (c!235662 (tokens!1984 thiss!10022))) (size!12241 (list!5938 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))))

(declare-fun b!1435210 () Bool)

(assert (=> b!1435210 (= e!916124 (and (> (csize!10377 (c!235662 (tokens!1984 thiss!10022))) 0) (<= (csize!10377 (c!235662 (tokens!1984 thiss!10022))) 512)))))

(assert (= (and d!413251 res!649908) b!1435209))

(assert (= (and b!1435209 res!649909) b!1435210))

(declare-fun m!1639617 () Bool)

(assert (=> d!413251 m!1639617))

(assert (=> d!413251 m!1639617))

(declare-fun m!1639619 () Bool)

(assert (=> d!413251 m!1639619))

(assert (=> b!1435209 m!1639617))

(assert (=> b!1435209 m!1639617))

(assert (=> b!1435209 m!1639619))

(assert (=> b!1434269 d!413251))

(declare-fun b!1435216 () Bool)

(declare-fun e!916127 () Bool)

(declare-fun lt!490367 () List!14994)

(assert (=> b!1435216 (= e!916127 (or (not (= (printList!707 Lexer!2283 (t!127239 lt!489190)) Nil!14928)) (= lt!490367 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))))

(declare-fun b!1435215 () Bool)

(declare-fun res!649913 () Bool)

(assert (=> b!1435215 (=> (not res!649913) (not e!916127))))

(assert (=> b!1435215 (= res!649913 (= (size!12239 lt!490367) (+ (size!12239 (list!5931 (charsOf!1515 (h!20331 lt!489190)))) (size!12239 (printList!707 Lexer!2283 (t!127239 lt!489190))))))))

(declare-fun b!1435213 () Bool)

(declare-fun e!916128 () List!14994)

(assert (=> b!1435213 (= e!916128 (printList!707 Lexer!2283 (t!127239 lt!489190)))))

(declare-fun b!1435214 () Bool)

(assert (=> b!1435214 (= e!916128 (Cons!14928 (h!20329 (list!5931 (charsOf!1515 (h!20331 lt!489190)))) (++!4001 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489190)))) (printList!707 Lexer!2283 (t!127239 lt!489190)))))))

(declare-fun d!413253 () Bool)

(assert (=> d!413253 e!916127))

(declare-fun res!649912 () Bool)

(assert (=> d!413253 (=> (not res!649912) (not e!916127))))

(assert (=> d!413253 (= res!649912 (= (content!2203 lt!490367) ((_ map or) (content!2203 (list!5931 (charsOf!1515 (h!20331 lt!489190)))) (content!2203 (printList!707 Lexer!2283 (t!127239 lt!489190))))))))

(assert (=> d!413253 (= lt!490367 e!916128)))

(declare-fun c!235924 () Bool)

(assert (=> d!413253 (= c!235924 ((_ is Nil!14928) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(assert (=> d!413253 (= (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (printList!707 Lexer!2283 (t!127239 lt!489190))) lt!490367)))

(assert (= (and d!413253 c!235924) b!1435213))

(assert (= (and d!413253 (not c!235924)) b!1435214))

(assert (= (and d!413253 res!649912) b!1435215))

(assert (= (and b!1435215 res!649913) b!1435216))

(declare-fun m!1639621 () Bool)

(assert (=> b!1435215 m!1639621))

(assert (=> b!1435215 m!1637435))

(declare-fun m!1639623 () Bool)

(assert (=> b!1435215 m!1639623))

(assert (=> b!1435215 m!1637437))

(declare-fun m!1639625 () Bool)

(assert (=> b!1435215 m!1639625))

(assert (=> b!1435214 m!1637437))

(declare-fun m!1639627 () Bool)

(assert (=> b!1435214 m!1639627))

(declare-fun m!1639629 () Bool)

(assert (=> d!413253 m!1639629))

(assert (=> d!413253 m!1637435))

(declare-fun m!1639631 () Bool)

(assert (=> d!413253 m!1639631))

(assert (=> d!413253 m!1637437))

(declare-fun m!1639633 () Bool)

(assert (=> d!413253 m!1639633))

(assert (=> b!1434293 d!413253))

(declare-fun d!413255 () Bool)

(assert (=> d!413255 (= (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5935 (c!235660 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun bs!341059 () Bool)

(assert (= bs!341059 d!413255))

(declare-fun m!1639641 () Bool)

(assert (=> bs!341059 m!1639641))

(assert (=> b!1434293 d!413255))

(declare-fun d!413259 () Bool)

(declare-fun lt!490369 () BalanceConc!10084)

(assert (=> d!413259 (= (list!5931 lt!490369) (originalCharacters!3485 (h!20331 lt!489190)))))

(assert (=> d!413259 (= lt!490369 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190)))) (value!84403 (h!20331 lt!489190))))))

(assert (=> d!413259 (= (charsOf!1515 (h!20331 lt!489190)) lt!490369)))

(declare-fun b_lambda!44871 () Bool)

(assert (=> (not b_lambda!44871) (not d!413259)))

(declare-fun t!127284 () Bool)

(declare-fun tb!75913 () Bool)

(assert (=> (and b!1434403 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190))))) t!127284) tb!75913))

(declare-fun b!1435218 () Bool)

(declare-fun e!916130 () Bool)

(declare-fun tp!406459 () Bool)

(assert (=> b!1435218 (= e!916130 (and (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190)))) (value!84403 (h!20331 lt!489190))))) tp!406459))))

(declare-fun result!92234 () Bool)

(assert (=> tb!75913 (= result!92234 (and (inv!19841 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190)))) (value!84403 (h!20331 lt!489190)))) e!916130))))

(assert (= tb!75913 b!1435218))

(declare-fun m!1639643 () Bool)

(assert (=> b!1435218 m!1639643))

(declare-fun m!1639645 () Bool)

(assert (=> tb!75913 m!1639645))

(assert (=> d!413259 t!127284))

(declare-fun b_and!96495 () Bool)

(assert (= b_and!96491 (and (=> t!127284 result!92234) b_and!96495)))

(declare-fun t!127286 () Bool)

(declare-fun tb!75915 () Bool)

(assert (=> (and b!1434411 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190))))) t!127286) tb!75915))

(declare-fun result!92236 () Bool)

(assert (= result!92236 result!92234))

(assert (=> d!413259 t!127286))

(declare-fun b_and!96497 () Bool)

(assert (= b_and!96493 (and (=> t!127286 result!92236) b_and!96497)))

(declare-fun m!1639647 () Bool)

(assert (=> d!413259 m!1639647))

(declare-fun m!1639649 () Bool)

(assert (=> d!413259 m!1639649))

(assert (=> b!1434293 d!413259))

(declare-fun d!413261 () Bool)

(declare-fun c!235925 () Bool)

(assert (=> d!413261 (= c!235925 ((_ is Cons!14930) (t!127239 lt!489190)))))

(declare-fun e!916131 () List!14994)

(assert (=> d!413261 (= (printList!707 Lexer!2283 (t!127239 lt!489190)) e!916131)))

(declare-fun b!1435219 () Bool)

(assert (=> b!1435219 (= e!916131 (++!4001 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190)))) (printList!707 Lexer!2283 (t!127239 (t!127239 lt!489190)))))))

(declare-fun b!1435220 () Bool)

(assert (=> b!1435220 (= e!916131 Nil!14928)))

(assert (= (and d!413261 c!235925) b!1435219))

(assert (= (and d!413261 (not c!235925)) b!1435220))

(assert (=> b!1435219 m!1637737))

(assert (=> b!1435219 m!1637737))

(declare-fun m!1639651 () Bool)

(assert (=> b!1435219 m!1639651))

(declare-fun m!1639653 () Bool)

(assert (=> b!1435219 m!1639653))

(assert (=> b!1435219 m!1639651))

(assert (=> b!1435219 m!1639653))

(declare-fun m!1639655 () Bool)

(assert (=> b!1435219 m!1639655))

(assert (=> b!1434293 d!413261))

(assert (=> d!412789 d!413009))

(declare-fun d!413263 () Bool)

(declare-fun res!649915 () Bool)

(declare-fun e!916132 () Bool)

(assert (=> d!413263 (=> (not res!649915) (not e!916132))))

(assert (=> d!413263 (= res!649915 (= (csize!10376 (c!235662 (tokens!1984 thiss!10022))) (+ (size!12242 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) (size!12242 (right!13049 (c!235662 (tokens!1984 thiss!10022)))))))))

(assert (=> d!413263 (= (inv!19833 (c!235662 (tokens!1984 thiss!10022))) e!916132)))

(declare-fun b!1435221 () Bool)

(declare-fun res!649916 () Bool)

(assert (=> b!1435221 (=> (not res!649916) (not e!916132))))

(assert (=> b!1435221 (= res!649916 (and (not (= (left!12719 (c!235662 (tokens!1984 thiss!10022))) Empty!5073)) (not (= (right!13049 (c!235662 (tokens!1984 thiss!10022))) Empty!5073))))))

(declare-fun b!1435222 () Bool)

(declare-fun res!649917 () Bool)

(assert (=> b!1435222 (=> (not res!649917) (not e!916132))))

(assert (=> b!1435222 (= res!649917 (= (cheight!5284 (c!235662 (tokens!1984 thiss!10022))) (+ (max!0 (height!739 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) (height!739 (right!13049 (c!235662 (tokens!1984 thiss!10022))))) 1)))))

(declare-fun b!1435223 () Bool)

(assert (=> b!1435223 (= e!916132 (<= 0 (cheight!5284 (c!235662 (tokens!1984 thiss!10022)))))))

(assert (= (and d!413263 res!649915) b!1435221))

(assert (= (and b!1435221 res!649916) b!1435222))

(assert (= (and b!1435222 res!649917) b!1435223))

(declare-fun m!1639657 () Bool)

(assert (=> d!413263 m!1639657))

(declare-fun m!1639659 () Bool)

(assert (=> d!413263 m!1639659))

(declare-fun m!1639661 () Bool)

(assert (=> b!1435222 m!1639661))

(declare-fun m!1639663 () Bool)

(assert (=> b!1435222 m!1639663))

(assert (=> b!1435222 m!1639661))

(assert (=> b!1435222 m!1639663))

(declare-fun m!1639665 () Bool)

(assert (=> b!1435222 m!1639665))

(assert (=> b!1434267 d!413263))

(assert (=> d!412835 d!412831))

(declare-fun d!413265 () Bool)

(assert (=> d!413265 (= (printList!707 Lexer!2283 (++!4002 lt!489190 Nil!14930)) (++!4001 (printList!707 Lexer!2283 lt!489190) (printList!707 Lexer!2283 Nil!14930)))))

(assert (=> d!413265 true))

(declare-fun _$40!311 () Unit!22769)

(assert (=> d!413265 (= (choose!8839 Lexer!2283 lt!489190 Nil!14930) _$40!311)))

(declare-fun bs!341061 () Bool)

(assert (= bs!341061 d!413265))

(assert (=> bs!341061 m!1637057))

(assert (=> bs!341061 m!1637079))

(assert (=> bs!341061 m!1637073))

(assert (=> bs!341061 m!1637073))

(assert (=> bs!341061 m!1637057))

(assert (=> bs!341061 m!1637447))

(assert (=> bs!341061 m!1637079))

(assert (=> bs!341061 m!1637445))

(assert (=> d!412835 d!413265))

(declare-fun b!1435232 () Bool)

(declare-fun e!916136 () Bool)

(declare-fun lt!490375 () List!14994)

(assert (=> b!1435232 (= e!916136 (or (not (= (printList!707 Lexer!2283 Nil!14930) Nil!14928)) (= lt!490375 (printList!707 Lexer!2283 lt!489190))))))

(declare-fun b!1435231 () Bool)

(declare-fun res!649921 () Bool)

(assert (=> b!1435231 (=> (not res!649921) (not e!916136))))

(assert (=> b!1435231 (= res!649921 (= (size!12239 lt!490375) (+ (size!12239 (printList!707 Lexer!2283 lt!489190)) (size!12239 (printList!707 Lexer!2283 Nil!14930)))))))

(declare-fun b!1435229 () Bool)

(declare-fun e!916137 () List!14994)

(assert (=> b!1435229 (= e!916137 (printList!707 Lexer!2283 Nil!14930))))

(declare-fun b!1435230 () Bool)

(assert (=> b!1435230 (= e!916137 (Cons!14928 (h!20329 (printList!707 Lexer!2283 lt!489190)) (++!4001 (t!127237 (printList!707 Lexer!2283 lt!489190)) (printList!707 Lexer!2283 Nil!14930))))))

(declare-fun d!413273 () Bool)

(assert (=> d!413273 e!916136))

(declare-fun res!649920 () Bool)

(assert (=> d!413273 (=> (not res!649920) (not e!916136))))

(assert (=> d!413273 (= res!649920 (= (content!2203 lt!490375) ((_ map or) (content!2203 (printList!707 Lexer!2283 lt!489190)) (content!2203 (printList!707 Lexer!2283 Nil!14930)))))))

(assert (=> d!413273 (= lt!490375 e!916137)))

(declare-fun c!235927 () Bool)

(assert (=> d!413273 (= c!235927 ((_ is Nil!14928) (printList!707 Lexer!2283 lt!489190)))))

(assert (=> d!413273 (= (++!4001 (printList!707 Lexer!2283 lt!489190) (printList!707 Lexer!2283 Nil!14930)) lt!490375)))

(assert (= (and d!413273 c!235927) b!1435229))

(assert (= (and d!413273 (not c!235927)) b!1435230))

(assert (= (and d!413273 res!649920) b!1435231))

(assert (= (and b!1435231 res!649921) b!1435232))

(declare-fun m!1639695 () Bool)

(assert (=> b!1435231 m!1639695))

(assert (=> b!1435231 m!1637073))

(declare-fun m!1639697 () Bool)

(assert (=> b!1435231 m!1639697))

(assert (=> b!1435231 m!1637057))

(declare-fun m!1639701 () Bool)

(assert (=> b!1435231 m!1639701))

(assert (=> b!1435230 m!1637057))

(declare-fun m!1639703 () Bool)

(assert (=> b!1435230 m!1639703))

(declare-fun m!1639705 () Bool)

(assert (=> d!413273 m!1639705))

(assert (=> d!413273 m!1637073))

(declare-fun m!1639707 () Bool)

(assert (=> d!413273 m!1639707))

(assert (=> d!413273 m!1637057))

(declare-fun m!1639709 () Bool)

(assert (=> d!413273 m!1639709))

(assert (=> d!412835 d!413273))

(declare-fun d!413279 () Bool)

(declare-fun c!235929 () Bool)

(assert (=> d!413279 (= c!235929 ((_ is Cons!14930) (++!4002 lt!489190 Nil!14930)))))

(declare-fun e!916141 () List!14994)

(assert (=> d!413279 (= (printList!707 Lexer!2283 (++!4002 lt!489190 Nil!14930)) e!916141)))

(declare-fun b!1435236 () Bool)

(assert (=> b!1435236 (= e!916141 (++!4001 (list!5931 (charsOf!1515 (h!20331 (++!4002 lt!489190 Nil!14930)))) (printList!707 Lexer!2283 (t!127239 (++!4002 lt!489190 Nil!14930)))))))

(declare-fun b!1435238 () Bool)

(assert (=> b!1435238 (= e!916141 Nil!14928)))

(assert (= (and d!413279 c!235929) b!1435236))

(assert (= (and d!413279 (not c!235929)) b!1435238))

(declare-fun m!1639711 () Bool)

(assert (=> b!1435236 m!1639711))

(assert (=> b!1435236 m!1639711))

(declare-fun m!1639713 () Bool)

(assert (=> b!1435236 m!1639713))

(declare-fun m!1639715 () Bool)

(assert (=> b!1435236 m!1639715))

(assert (=> b!1435236 m!1639713))

(assert (=> b!1435236 m!1639715))

(declare-fun m!1639717 () Bool)

(assert (=> b!1435236 m!1639717))

(assert (=> d!412835 d!413279))

(assert (=> d!412835 d!412875))

(assert (=> d!412835 d!412877))

(declare-fun d!413281 () Bool)

(declare-fun c!235930 () Bool)

(assert (=> d!413281 (= c!235930 ((_ is Nil!14928) lt!489247))))

(declare-fun e!916142 () (InoxSet C!8052))

(assert (=> d!413281 (= (content!2203 lt!489247) e!916142)))

(declare-fun b!1435244 () Bool)

(assert (=> b!1435244 (= e!916142 ((as const (Array C!8052 Bool)) false))))

(declare-fun b!1435245 () Bool)

(assert (=> b!1435245 (= e!916142 ((_ map or) (store ((as const (Array C!8052 Bool)) false) (h!20329 lt!489247) true) (content!2203 (t!127237 lt!489247))))))

(assert (= (and d!413281 c!235930) b!1435244))

(assert (= (and d!413281 (not c!235930)) b!1435245))

(declare-fun m!1639719 () Bool)

(assert (=> b!1435245 m!1639719))

(declare-fun m!1639721 () Bool)

(assert (=> b!1435245 m!1639721))

(assert (=> d!412807 d!413281))

(declare-fun d!413283 () Bool)

(declare-fun c!235931 () Bool)

(assert (=> d!413283 (= c!235931 ((_ is Nil!14928) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(declare-fun e!916143 () (InoxSet C!8052))

(assert (=> d!413283 (= (content!2203 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) e!916143)))

(declare-fun b!1435246 () Bool)

(assert (=> b!1435246 (= e!916143 ((as const (Array C!8052 Bool)) false))))

(declare-fun b!1435247 () Bool)

(assert (=> b!1435247 (= e!916143 ((_ map or) (store ((as const (Array C!8052 Bool)) false) (h!20329 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) true) (content!2203 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))

(assert (= (and d!413283 c!235931) b!1435246))

(assert (= (and d!413283 (not c!235931)) b!1435247))

(declare-fun m!1639723 () Bool)

(assert (=> b!1435247 m!1639723))

(assert (=> b!1435247 m!1638515))

(assert (=> d!412807 d!413283))

(declare-fun d!413285 () Bool)

(declare-fun c!235932 () Bool)

(assert (=> d!413285 (= c!235932 ((_ is Nil!14928) (printList!707 Lexer!2283 (t!127239 lt!489186))))))

(declare-fun e!916144 () (InoxSet C!8052))

(assert (=> d!413285 (= (content!2203 (printList!707 Lexer!2283 (t!127239 lt!489186))) e!916144)))

(declare-fun b!1435248 () Bool)

(assert (=> b!1435248 (= e!916144 ((as const (Array C!8052 Bool)) false))))

(declare-fun b!1435249 () Bool)

(assert (=> b!1435249 (= e!916144 ((_ map or) (store ((as const (Array C!8052 Bool)) false) (h!20329 (printList!707 Lexer!2283 (t!127239 lt!489186))) true) (content!2203 (t!127237 (printList!707 Lexer!2283 (t!127239 lt!489186))))))))

(assert (= (and d!413285 c!235932) b!1435248))

(assert (= (and d!413285 (not c!235932)) b!1435249))

(declare-fun m!1639725 () Bool)

(assert (=> b!1435249 m!1639725))

(declare-fun m!1639727 () Bool)

(assert (=> b!1435249 m!1639727))

(assert (=> d!412807 d!413285))

(declare-fun d!413287 () Bool)

(assert (=> d!413287 (= (isEmpty!9278 (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492)))) ((_ is Nil!14928) (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492)))))))

(assert (=> b!1434367 d!413287))

(declare-fun d!413289 () Bool)

(assert (=> d!413289 (= (list!5931 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492))) (list!5935 (c!235660 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489492)))))))

(declare-fun bs!341064 () Bool)

(assert (= bs!341064 d!413289))

(declare-fun m!1639729 () Bool)

(assert (=> bs!341064 m!1639729))

(assert (=> b!1434367 d!413289))

(assert (=> b!1434367 d!413027))

(declare-fun b!1435251 () Bool)

(declare-fun e!916145 () List!14996)

(declare-fun e!916146 () List!14996)

(assert (=> b!1435251 (= e!916145 e!916146)))

(declare-fun c!235934 () Bool)

(assert (=> b!1435251 (= c!235934 ((_ is Leaf!7586) (c!235662 (tokens!1984 thiss!10022))))))

(declare-fun b!1435250 () Bool)

(assert (=> b!1435250 (= e!916145 Nil!14930)))

(declare-fun b!1435252 () Bool)

(assert (=> b!1435252 (= e!916146 (list!5938 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))

(declare-fun b!1435253 () Bool)

(assert (=> b!1435253 (= e!916146 (++!4002 (list!5936 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) (list!5936 (right!13049 (c!235662 (tokens!1984 thiss!10022))))))))

(declare-fun d!413291 () Bool)

(declare-fun c!235933 () Bool)

(assert (=> d!413291 (= c!235933 ((_ is Empty!5073) (c!235662 (tokens!1984 thiss!10022))))))

(assert (=> d!413291 (= (list!5936 (c!235662 (tokens!1984 thiss!10022))) e!916145)))

(assert (= (and d!413291 c!235933) b!1435250))

(assert (= (and d!413291 (not c!235933)) b!1435251))

(assert (= (and b!1435251 c!235934) b!1435252))

(assert (= (and b!1435251 (not c!235934)) b!1435253))

(assert (=> b!1435252 m!1639617))

(declare-fun m!1639735 () Bool)

(assert (=> b!1435253 m!1639735))

(declare-fun m!1639739 () Bool)

(assert (=> b!1435253 m!1639739))

(assert (=> b!1435253 m!1639735))

(assert (=> b!1435253 m!1639739))

(declare-fun m!1639741 () Bool)

(assert (=> b!1435253 m!1639741))

(assert (=> d!412861 d!413291))

(assert (=> b!1434246 d!413087))

(assert (=> d!412837 d!412833))

(assert (=> d!412837 d!413101))

(declare-fun d!413293 () Bool)

(assert (=> d!413293 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459))) (list!5936 (c!235662 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!489459)))))))

(declare-fun bs!341065 () Bool)

(assert (= bs!341065 d!413293))

(declare-fun m!1639747 () Bool)

(assert (=> bs!341065 m!1639747))

(assert (=> d!412837 d!413293))

(declare-fun d!413295 () Bool)

(declare-fun e!916147 () Bool)

(assert (=> d!413295 e!916147))

(declare-fun res!649929 () Bool)

(assert (=> d!413295 (=> (not res!649929) (not e!916147))))

(assert (=> d!413295 (= res!649929 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 (list!5932 (tokens!1984 other!32))))))) (list!5932 (tokens!1984 other!32))))))

(declare-fun lt!490387 () Unit!22769)

(declare-fun e!916148 () Unit!22769)

(assert (=> d!413295 (= lt!490387 e!916148)))

(declare-fun c!235935 () Bool)

(assert (=> d!413295 (= c!235935 (or ((_ is Nil!14930) (list!5932 (tokens!1984 other!32))) ((_ is Nil!14930) (t!127239 (list!5932 (tokens!1984 other!32))))))))

(assert (=> d!413295 (not (isEmpty!9275 (rules!11404 other!32)))))

(assert (=> d!413295 (= (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) (list!5932 (tokens!1984 other!32))) lt!490387)))

(declare-fun b!1435254 () Bool)

(declare-fun Unit!22917 () Unit!22769)

(assert (=> b!1435254 (= e!916148 Unit!22917)))

(declare-fun b!1435255 () Bool)

(declare-fun Unit!22918 () Unit!22769)

(assert (=> b!1435255 (= e!916148 Unit!22918)))

(declare-fun lt!490384 () BalanceConc!10084)

(assert (=> b!1435255 (= lt!490384 (print!1064 Lexer!2283 (seqFromList!1696 (list!5932 (tokens!1984 other!32)))))))

(declare-fun lt!490398 () BalanceConc!10084)

(assert (=> b!1435255 (= lt!490398 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 (list!5932 (tokens!1984 other!32))))))))

(declare-fun lt!490404 () tuple2!14120)

(assert (=> b!1435255 (= lt!490404 (lex!1044 Lexer!2283 (rules!11404 other!32) lt!490398))))

(declare-fun lt!490386 () List!14994)

(assert (=> b!1435255 (= lt!490386 (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32))))))))

(declare-fun lt!490393 () List!14994)

(assert (=> b!1435255 (= lt!490393 (list!5931 lt!490398))))

(declare-fun lt!490396 () Unit!22769)

(assert (=> b!1435255 (= lt!490396 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490386 lt!490393))))

(assert (=> b!1435255 (isPrefix!1193 lt!490386 (++!4001 lt!490386 lt!490393))))

(declare-fun lt!490385 () Unit!22769)

(assert (=> b!1435255 (= lt!490385 lt!490396)))

(declare-fun lt!490403 () Unit!22769)

(assert (=> b!1435255 (= lt!490403 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 other!32) (t!127239 (list!5932 (tokens!1984 other!32)))))))

(declare-fun lt!490389 () Unit!22769)

(assert (=> b!1435255 (= lt!490389 (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 (list!5932 (tokens!1984 other!32)))) (t!127239 (t!127239 (list!5932 (tokens!1984 other!32)))) (_1!7946 lt!490404)))))

(assert (=> b!1435255 (= (list!5932 (_1!7946 lt!490404)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 (list!5932 (tokens!1984 other!32))))) (h!20331 (t!127239 (list!5932 (tokens!1984 other!32)))))))))

(declare-fun lt!490382 () Unit!22769)

(assert (=> b!1435255 (= lt!490382 lt!490389)))

(declare-fun lt!490405 () Option!2849)

(assert (=> b!1435255 (= lt!490405 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 lt!490384)))))

(assert (=> b!1435255 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 (list!5932 (tokens!1984 other!32))))) (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 (list!5932 (tokens!1984 other!32)))) 0 (BalanceConc!10085 Empty!5072)))))

(declare-fun lt!490390 () Unit!22769)

(declare-fun Unit!22919 () Unit!22769)

(assert (=> b!1435255 (= lt!490390 Unit!22919)))

(declare-fun lt!490397 () Unit!22769)

(assert (=> b!1435255 (= lt!490397 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32))))) (list!5931 lt!490398)))))

(assert (=> b!1435255 (= (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32))))) (originalCharacters!3485 (h!20331 (list!5932 (tokens!1984 other!32)))))))

(declare-fun lt!490392 () Unit!22769)

(declare-fun Unit!22920 () Unit!22769)

(assert (=> b!1435255 (= lt!490392 Unit!22920)))

(assert (=> b!1435255 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (list!5932 (tokens!1984 other!32))))) 0))) (Cons!14928 (head!2908 (originalCharacters!3485 (h!20331 (t!127239 (list!5932 (tokens!1984 other!32)))))) Nil!14928))))

(declare-fun lt!490399 () Unit!22769)

(declare-fun Unit!22921 () Unit!22769)

(assert (=> b!1435255 (= lt!490399 Unit!22921)))

(assert (=> b!1435255 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (list!5932 (tokens!1984 other!32))))) 0))) (Cons!14928 (head!2908 (list!5931 lt!490398)) Nil!14928))))

(declare-fun lt!490406 () Unit!22769)

(declare-fun Unit!22922 () Unit!22769)

(assert (=> b!1435255 (= lt!490406 Unit!22922)))

(assert (=> b!1435255 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (list!5932 (tokens!1984 other!32))))) 0))) (Cons!14928 (head!2909 lt!490398) Nil!14928))))

(declare-fun lt!490394 () Unit!22769)

(declare-fun Unit!22923 () Unit!22769)

(assert (=> b!1435255 (= lt!490394 Unit!22923)))

(assert (=> b!1435255 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (originalCharacters!3485 (h!20331 (list!5932 (tokens!1984 other!32))))))))

(declare-fun lt!490383 () Unit!22769)

(declare-fun Unit!22924 () Unit!22769)

(assert (=> b!1435255 (= lt!490383 Unit!22924)))

(assert (=> b!1435255 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32)))))))))

(declare-fun lt!490381 () Unit!22769)

(declare-fun Unit!22925 () Unit!22769)

(assert (=> b!1435255 (= lt!490381 Unit!22925)))

(declare-fun lt!490388 () Unit!22769)

(declare-fun Unit!22926 () Unit!22769)

(assert (=> b!1435255 (= lt!490388 Unit!22926)))

(assert (=> b!1435255 (= (_1!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32)))))))) (h!20331 (list!5932 (tokens!1984 other!32))))))

(declare-fun lt!490395 () Unit!22769)

(declare-fun Unit!22927 () Unit!22769)

(assert (=> b!1435255 (= lt!490395 Unit!22927)))

(assert (=> b!1435255 (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 other!32) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32)))))))))))

(declare-fun lt!490401 () Unit!22769)

(declare-fun Unit!22928 () Unit!22769)

(assert (=> b!1435255 (= lt!490401 Unit!22928)))

(assert (=> b!1435255 (matchR!1819 (regex!2623 (rule!4386 (h!20331 (list!5932 (tokens!1984 other!32))))) (list!5931 (charsOf!1515 (h!20331 (list!5932 (tokens!1984 other!32))))))))

(declare-fun lt!490391 () Unit!22769)

(declare-fun Unit!22929 () Unit!22769)

(assert (=> b!1435255 (= lt!490391 Unit!22929)))

(assert (=> b!1435255 (= (rule!4386 (h!20331 (list!5932 (tokens!1984 other!32)))) (rule!4386 (h!20331 (list!5932 (tokens!1984 other!32)))))))

(declare-fun lt!490400 () Unit!22769)

(declare-fun Unit!22930 () Unit!22769)

(assert (=> b!1435255 (= lt!490400 Unit!22930)))

(declare-fun lt!490402 () Unit!22769)

(assert (=> b!1435255 (= lt!490402 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 other!32) (h!20331 (list!5932 (tokens!1984 other!32))) (rule!4386 (h!20331 (list!5932 (tokens!1984 other!32)))) (list!5931 lt!490398)))))

(declare-fun b!1435256 () Bool)

(assert (=> b!1435256 (= e!916147 (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 other!32) (print!1064 Lexer!2283 (seqFromList!1696 (list!5932 (tokens!1984 other!32))))))))))

(assert (= (and d!413295 c!235935) b!1435254))

(assert (= (and d!413295 (not c!235935)) b!1435255))

(assert (= (and d!413295 res!649929) b!1435256))

(declare-fun m!1639771 () Bool)

(assert (=> d!413295 m!1639771))

(assert (=> d!413295 m!1637151))

(declare-fun m!1639773 () Bool)

(assert (=> d!413295 m!1639773))

(declare-fun m!1639775 () Bool)

(assert (=> d!413295 m!1639775))

(assert (=> d!413295 m!1637083))

(assert (=> d!413295 m!1639773))

(assert (=> d!413295 m!1639775))

(declare-fun m!1639777 () Bool)

(assert (=> d!413295 m!1639777))

(declare-fun m!1639779 () Bool)

(assert (=> b!1435255 m!1639779))

(declare-fun m!1639781 () Bool)

(assert (=> b!1435255 m!1639781))

(declare-fun m!1639783 () Bool)

(assert (=> b!1435255 m!1639783))

(declare-fun m!1639785 () Bool)

(assert (=> b!1435255 m!1639785))

(declare-fun m!1639787 () Bool)

(assert (=> b!1435255 m!1639787))

(declare-fun m!1639789 () Bool)

(assert (=> b!1435255 m!1639789))

(assert (=> b!1435255 m!1639785))

(declare-fun m!1639791 () Bool)

(assert (=> b!1435255 m!1639791))

(declare-fun m!1639793 () Bool)

(assert (=> b!1435255 m!1639793))

(declare-fun m!1639795 () Bool)

(assert (=> b!1435255 m!1639795))

(declare-fun m!1639797 () Bool)

(assert (=> b!1435255 m!1639797))

(declare-fun m!1639799 () Bool)

(assert (=> b!1435255 m!1639799))

(declare-fun m!1639801 () Bool)

(assert (=> b!1435255 m!1639801))

(declare-fun m!1639803 () Bool)

(assert (=> b!1435255 m!1639803))

(declare-fun m!1639805 () Bool)

(assert (=> b!1435255 m!1639805))

(declare-fun m!1639807 () Bool)

(assert (=> b!1435255 m!1639807))

(declare-fun m!1639809 () Bool)

(assert (=> b!1435255 m!1639809))

(assert (=> b!1435255 m!1637889))

(declare-fun m!1639811 () Bool)

(assert (=> b!1435255 m!1639811))

(declare-fun m!1639813 () Bool)

(assert (=> b!1435255 m!1639813))

(assert (=> b!1435255 m!1639811))

(declare-fun m!1639815 () Bool)

(assert (=> b!1435255 m!1639815))

(assert (=> b!1435255 m!1639793))

(assert (=> b!1435255 m!1639789))

(declare-fun m!1639817 () Bool)

(assert (=> b!1435255 m!1639817))

(declare-fun m!1639819 () Bool)

(assert (=> b!1435255 m!1639819))

(declare-fun m!1639821 () Bool)

(assert (=> b!1435255 m!1639821))

(declare-fun m!1639823 () Bool)

(assert (=> b!1435255 m!1639823))

(declare-fun m!1639825 () Bool)

(assert (=> b!1435255 m!1639825))

(declare-fun m!1639827 () Bool)

(assert (=> b!1435255 m!1639827))

(assert (=> b!1435255 m!1639811))

(assert (=> b!1435255 m!1639811))

(declare-fun m!1639829 () Bool)

(assert (=> b!1435255 m!1639829))

(assert (=> b!1435255 m!1639773))

(assert (=> b!1435255 m!1639775))

(assert (=> b!1435255 m!1637889))

(declare-fun m!1639831 () Bool)

(assert (=> b!1435255 m!1639831))

(assert (=> b!1435255 m!1639807))

(declare-fun m!1639833 () Bool)

(assert (=> b!1435255 m!1639833))

(assert (=> b!1435255 m!1639799))

(declare-fun m!1639835 () Bool)

(assert (=> b!1435255 m!1639835))

(declare-fun m!1639837 () Bool)

(assert (=> b!1435255 m!1639837))

(assert (=> b!1435255 m!1637083))

(assert (=> b!1435255 m!1639773))

(declare-fun m!1639839 () Bool)

(assert (=> b!1435255 m!1639839))

(assert (=> b!1435255 m!1639835))

(assert (=> b!1435255 m!1639823))

(assert (=> b!1435255 m!1637887))

(declare-fun m!1639841 () Bool)

(assert (=> b!1435255 m!1639841))

(assert (=> b!1435255 m!1637889))

(assert (=> b!1435255 m!1639785))

(assert (=> b!1435255 m!1639781))

(assert (=> b!1435255 m!1639825))

(declare-fun m!1639843 () Bool)

(assert (=> b!1435255 m!1639843))

(assert (=> b!1435255 m!1639807))

(assert (=> b!1435255 m!1637887))

(assert (=> b!1435255 m!1637889))

(declare-fun m!1639845 () Bool)

(assert (=> b!1435255 m!1639845))

(assert (=> b!1435255 m!1639821))

(assert (=> b!1435255 m!1639803))

(assert (=> b!1435256 m!1637083))

(assert (=> b!1435256 m!1639773))

(assert (=> b!1435256 m!1639773))

(assert (=> b!1435256 m!1639775))

(assert (=> b!1435256 m!1639775))

(assert (=> b!1435256 m!1639777))

(declare-fun m!1639847 () Bool)

(assert (=> b!1435256 m!1639847))

(assert (=> d!412837 d!413295))

(assert (=> d!412837 d!412867))

(declare-fun d!413299 () Bool)

(assert (=> d!413299 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0))) (list!5935 (c!235660 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0)))))))

(declare-fun bs!341066 () Bool)

(assert (= bs!341066 d!413299))

(declare-fun m!1639849 () Bool)

(assert (=> bs!341066 m!1639849))

(assert (=> b!1434365 d!413299))

(declare-fun d!413301 () Bool)

(assert (=> d!413301 (= (seqFromList!1696 (t!127239 lt!489190)) (fromListB!727 (t!127239 lt!489190)))))

(declare-fun bs!341067 () Bool)

(assert (= bs!341067 d!413301))

(declare-fun m!1639855 () Bool)

(assert (=> bs!341067 m!1639855))

(assert (=> b!1434365 d!413301))

(declare-fun b!1435269 () Bool)

(declare-fun e!916160 () Option!2849)

(declare-fun lt!490411 () Option!2849)

(declare-fun lt!490414 () Option!2849)

(assert (=> b!1435269 (= e!916160 (ite (and ((_ is None!2848) lt!490411) ((_ is None!2848) lt!490414)) None!2848 (ite ((_ is None!2848) lt!490414) lt!490411 (ite ((_ is None!2848) lt!490411) lt!490414 (ite (>= (size!12235 (_1!7947 (v!22358 lt!490411))) (size!12235 (_1!7947 (v!22358 lt!490414)))) lt!490411 lt!490414)))))))

(declare-fun call!97316 () Option!2849)

(assert (=> b!1435269 (= lt!490411 call!97316)))

(assert (=> b!1435269 (= lt!490414 (maxPrefix!1183 Lexer!2283 (t!127240 (rules!11404 thiss!10022)) (list!5931 lt!489468)))))

(declare-fun b!1435270 () Bool)

(declare-fun e!916158 () Bool)

(declare-fun e!916159 () Bool)

(assert (=> b!1435270 (= e!916158 e!916159)))

(declare-fun res!649948 () Bool)

(assert (=> b!1435270 (=> (not res!649948) (not e!916159))))

(declare-fun lt!490413 () Option!2849)

(assert (=> b!1435270 (= res!649948 (isDefined!2306 lt!490413))))

(declare-fun b!1435271 () Bool)

(assert (=> b!1435271 (= e!916159 (contains!2858 (rules!11404 thiss!10022) (rule!4386 (_1!7947 (get!4569 lt!490413)))))))

(declare-fun d!413303 () Bool)

(assert (=> d!413303 e!916158))

(declare-fun res!649946 () Bool)

(assert (=> d!413303 (=> res!649946 e!916158)))

(assert (=> d!413303 (= res!649946 (isEmpty!9282 lt!490413))))

(assert (=> d!413303 (= lt!490413 e!916160)))

(declare-fun c!235936 () Bool)

(assert (=> d!413303 (= c!235936 (and ((_ is Cons!14931) (rules!11404 thiss!10022)) ((_ is Nil!14931) (t!127240 (rules!11404 thiss!10022)))))))

(declare-fun lt!490410 () Unit!22769)

(declare-fun lt!490412 () Unit!22769)

(assert (=> d!413303 (= lt!490410 lt!490412)))

(assert (=> d!413303 (isPrefix!1193 (list!5931 lt!489468) (list!5931 lt!489468))))

(assert (=> d!413303 (= lt!490412 (lemmaIsPrefixRefl!826 (list!5931 lt!489468) (list!5931 lt!489468)))))

(assert (=> d!413303 (rulesValidInductive!813 Lexer!2283 (rules!11404 thiss!10022))))

(assert (=> d!413303 (= (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!489468)) lt!490413)))

(declare-fun b!1435272 () Bool)

(declare-fun res!649943 () Bool)

(assert (=> b!1435272 (=> (not res!649943) (not e!916159))))

(assert (=> b!1435272 (= res!649943 (< (size!12239 (_2!7947 (get!4569 lt!490413))) (size!12239 (list!5931 lt!489468))))))

(declare-fun b!1435273 () Bool)

(assert (=> b!1435273 (= e!916160 call!97316)))

(declare-fun bm!97311 () Bool)

(assert (=> bm!97311 (= call!97316 (maxPrefixOneRule!652 Lexer!2283 (h!20332 (rules!11404 thiss!10022)) (list!5931 lt!489468)))))

(declare-fun b!1435274 () Bool)

(declare-fun res!649944 () Bool)

(assert (=> b!1435274 (=> (not res!649944) (not e!916159))))

(assert (=> b!1435274 (= res!649944 (matchR!1819 (regex!2623 (rule!4386 (_1!7947 (get!4569 lt!490413)))) (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490413))))))))

(declare-fun b!1435275 () Bool)

(declare-fun res!649942 () Bool)

(assert (=> b!1435275 (=> (not res!649942) (not e!916159))))

(assert (=> b!1435275 (= res!649942 (= (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490413)))) (originalCharacters!3485 (_1!7947 (get!4569 lt!490413)))))))

(declare-fun b!1435276 () Bool)

(declare-fun res!649947 () Bool)

(assert (=> b!1435276 (=> (not res!649947) (not e!916159))))

(assert (=> b!1435276 (= res!649947 (= (value!84403 (_1!7947 (get!4569 lt!490413))) (apply!3823 (transformation!2623 (rule!4386 (_1!7947 (get!4569 lt!490413)))) (seqFromList!1697 (originalCharacters!3485 (_1!7947 (get!4569 lt!490413)))))))))

(declare-fun b!1435277 () Bool)

(declare-fun res!649945 () Bool)

(assert (=> b!1435277 (=> (not res!649945) (not e!916159))))

(assert (=> b!1435277 (= res!649945 (= (++!4001 (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490413)))) (_2!7947 (get!4569 lt!490413))) (list!5931 lt!489468)))))

(assert (= (and d!413303 c!235936) b!1435273))

(assert (= (and d!413303 (not c!235936)) b!1435269))

(assert (= (or b!1435273 b!1435269) bm!97311))

(assert (= (and d!413303 (not res!649946)) b!1435270))

(assert (= (and b!1435270 res!649948) b!1435275))

(assert (= (and b!1435275 res!649942) b!1435272))

(assert (= (and b!1435272 res!649943) b!1435277))

(assert (= (and b!1435277 res!649945) b!1435276))

(assert (= (and b!1435276 res!649947) b!1435274))

(assert (= (and b!1435274 res!649944) b!1435271))

(assert (=> bm!97311 m!1637695))

(declare-fun m!1639869 () Bool)

(assert (=> bm!97311 m!1639869))

(declare-fun m!1639871 () Bool)

(assert (=> b!1435275 m!1639871))

(declare-fun m!1639873 () Bool)

(assert (=> b!1435275 m!1639873))

(assert (=> b!1435275 m!1639873))

(declare-fun m!1639877 () Bool)

(assert (=> b!1435275 m!1639877))

(assert (=> b!1435271 m!1639871))

(declare-fun m!1639881 () Bool)

(assert (=> b!1435271 m!1639881))

(assert (=> b!1435269 m!1637695))

(declare-fun m!1639885 () Bool)

(assert (=> b!1435269 m!1639885))

(assert (=> b!1435277 m!1639871))

(assert (=> b!1435277 m!1639873))

(assert (=> b!1435277 m!1639873))

(assert (=> b!1435277 m!1639877))

(assert (=> b!1435277 m!1639877))

(declare-fun m!1639901 () Bool)

(assert (=> b!1435277 m!1639901))

(assert (=> b!1435274 m!1639871))

(assert (=> b!1435274 m!1639873))

(assert (=> b!1435274 m!1639873))

(assert (=> b!1435274 m!1639877))

(assert (=> b!1435274 m!1639877))

(declare-fun m!1639911 () Bool)

(assert (=> b!1435274 m!1639911))

(assert (=> b!1435272 m!1639871))

(declare-fun m!1639915 () Bool)

(assert (=> b!1435272 m!1639915))

(assert (=> b!1435272 m!1637695))

(declare-fun m!1639917 () Bool)

(assert (=> b!1435272 m!1639917))

(assert (=> b!1435276 m!1639871))

(declare-fun m!1639921 () Bool)

(assert (=> b!1435276 m!1639921))

(assert (=> b!1435276 m!1639921))

(declare-fun m!1639923 () Bool)

(assert (=> b!1435276 m!1639923))

(declare-fun m!1639925 () Bool)

(assert (=> d!413303 m!1639925))

(assert (=> d!413303 m!1637695))

(assert (=> d!413303 m!1637695))

(declare-fun m!1639927 () Bool)

(assert (=> d!413303 m!1639927))

(assert (=> d!413303 m!1637695))

(assert (=> d!413303 m!1637695))

(declare-fun m!1639929 () Bool)

(assert (=> d!413303 m!1639929))

(declare-fun m!1639931 () Bool)

(assert (=> d!413303 m!1639931))

(declare-fun m!1639933 () Bool)

(assert (=> b!1435270 m!1639933))

(assert (=> b!1434365 d!413303))

(declare-fun b!1435281 () Bool)

(declare-fun res!649950 () Bool)

(declare-fun e!916163 () Bool)

(assert (=> b!1435281 (=> (not res!649950) (not e!916163))))

(declare-fun lt!490436 () Token!4908)

(assert (=> b!1435281 (= res!649950 (matchR!1819 (regex!2623 (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 thiss!10022) (tag!2885 (rule!4386 lt!490436))))) (list!5931 (charsOf!1515 lt!490436))))))

(declare-fun d!413313 () Bool)

(assert (=> d!413313 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482))))))

(declare-fun lt!490428 () Unit!22769)

(declare-fun e!916164 () Unit!22769)

(assert (=> d!413313 (= lt!490428 e!916164)))

(declare-fun c!235938 () Bool)

(assert (=> d!413313 (= c!235938 (isEmpty!9282 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)))))))

(declare-fun lt!490425 () Unit!22769)

(declare-fun lt!490432 () Unit!22769)

(assert (=> d!413313 (= lt!490425 lt!490432)))

(assert (=> d!413313 e!916163))

(declare-fun res!649951 () Bool)

(assert (=> d!413313 (=> (not res!649951) (not e!916163))))

(assert (=> d!413313 (= res!649951 (isDefined!2307 (getRuleFromTag!215 Lexer!2283 (rules!11404 thiss!10022) (tag!2885 (rule!4386 lt!490436)))))))

(assert (=> d!413313 (= lt!490432 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!215 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))) lt!490436))))

(declare-fun lt!490429 () Unit!22769)

(declare-fun lt!490426 () Unit!22769)

(assert (=> d!413313 (= lt!490429 lt!490426)))

(declare-fun lt!490437 () List!14994)

(assert (=> d!413313 (isPrefix!1193 lt!490437 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)))))

(assert (=> d!413313 (= lt!490426 (lemmaPrefixStaysPrefixWhenAddingToSuffix!101 lt!490437 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)))))

(assert (=> d!413313 (= lt!490437 (list!5931 (charsOf!1515 lt!490436)))))

(declare-fun lt!490422 () Unit!22769)

(declare-fun lt!490424 () Unit!22769)

(assert (=> d!413313 (= lt!490422 lt!490424)))

(declare-fun lt!490433 () List!14994)

(declare-fun lt!490423 () List!14994)

(assert (=> d!413313 (isPrefix!1193 lt!490433 (++!4001 lt!490433 lt!490423))))

(assert (=> d!413313 (= lt!490424 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490433 lt!490423))))

(assert (=> d!413313 (= lt!490423 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))))

(assert (=> d!413313 (= lt!490433 (list!5931 (charsOf!1515 lt!490436)))))

(assert (=> d!413313 (= lt!490436 (head!2907 (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (seqFromList!1697 (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))))))

(assert (=> d!413313 (not (isEmpty!9275 (rules!11404 thiss!10022)))))

(assert (=> d!413313 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)) lt!490428)))

(declare-fun b!1435283 () Bool)

(declare-fun Unit!22945 () Unit!22769)

(assert (=> b!1435283 (= e!916164 Unit!22945)))

(declare-fun lt!490427 () List!14994)

(assert (=> b!1435283 (= lt!490427 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)))))

(declare-fun lt!490430 () Unit!22769)

(assert (=> b!1435283 (= lt!490430 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!109 Lexer!2283 (rule!4386 lt!490436) (rules!11404 thiss!10022) lt!490427))))

(assert (=> b!1435283 (isEmpty!9282 (maxPrefixOneRule!652 Lexer!2283 (rule!4386 lt!490436) lt!490427))))

(declare-fun lt!490438 () Unit!22769)

(assert (=> b!1435283 (= lt!490438 lt!490430)))

(declare-fun lt!490434 () List!14994)

(assert (=> b!1435283 (= lt!490434 (list!5931 (charsOf!1515 lt!490436)))))

(declare-fun lt!490435 () Unit!22769)

(assert (=> b!1435283 (= lt!490435 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!105 Lexer!2283 (rule!4386 lt!490436) lt!490434 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482))))))

(assert (=> b!1435283 (not (matchR!1819 (regex!2623 (rule!4386 lt!490436)) lt!490434))))

(declare-fun lt!490431 () Unit!22769)

(assert (=> b!1435283 (= lt!490431 lt!490435)))

(assert (=> b!1435283 false))

(declare-fun b!1435284 () Bool)

(declare-fun Unit!22946 () Unit!22769)

(assert (=> b!1435284 (= e!916164 Unit!22946)))

(declare-fun b!1435282 () Bool)

(assert (=> b!1435282 (= e!916163 (= (rule!4386 lt!490436) (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 thiss!10022) (tag!2885 (rule!4386 lt!490436))))))))

(assert (= (and d!413313 res!649951) b!1435281))

(assert (= (and b!1435281 res!649950) b!1435282))

(assert (= (and d!413313 c!235938) b!1435283))

(assert (= (and d!413313 (not c!235938)) b!1435284))

(declare-fun m!1639937 () Bool)

(assert (=> b!1435281 m!1639937))

(declare-fun m!1639939 () Bool)

(assert (=> b!1435281 m!1639939))

(declare-fun m!1639941 () Bool)

(assert (=> b!1435281 m!1639941))

(declare-fun m!1639943 () Bool)

(assert (=> b!1435281 m!1639943))

(assert (=> b!1435281 m!1639937))

(assert (=> b!1435281 m!1639943))

(assert (=> b!1435281 m!1639941))

(declare-fun m!1639945 () Bool)

(assert (=> b!1435281 m!1639945))

(assert (=> d!413313 m!1637143))

(assert (=> d!413313 m!1637687))

(assert (=> d!413313 m!1637689))

(assert (=> d!413313 m!1637435))

(assert (=> d!413313 m!1637713))

(declare-fun m!1639947 () Bool)

(assert (=> d!413313 m!1639947))

(declare-fun m!1639949 () Bool)

(assert (=> d!413313 m!1639949))

(declare-fun m!1639951 () Bool)

(assert (=> d!413313 m!1639951))

(assert (=> d!413313 m!1637435))

(declare-fun m!1639953 () Bool)

(assert (=> d!413313 m!1639953))

(declare-fun m!1639955 () Bool)

(assert (=> d!413313 m!1639955))

(declare-fun m!1639957 () Bool)

(assert (=> d!413313 m!1639957))

(declare-fun m!1639959 () Bool)

(assert (=> d!413313 m!1639959))

(declare-fun m!1639961 () Bool)

(assert (=> d!413313 m!1639961))

(assert (=> d!413313 m!1639941))

(assert (=> d!413313 m!1637435))

(declare-fun m!1639963 () Bool)

(assert (=> d!413313 m!1639963))

(assert (=> d!413313 m!1639943))

(declare-fun m!1639965 () Bool)

(assert (=> d!413313 m!1639965))

(assert (=> d!413313 m!1639965))

(declare-fun m!1639967 () Bool)

(assert (=> d!413313 m!1639967))

(assert (=> d!413313 m!1637435))

(assert (=> d!413313 m!1637713))

(assert (=> d!413313 m!1639959))

(assert (=> d!413313 m!1639951))

(declare-fun m!1639969 () Bool)

(assert (=> d!413313 m!1639969))

(assert (=> d!413313 m!1639959))

(assert (=> d!413313 m!1639955))

(assert (=> d!413313 m!1639941))

(declare-fun m!1639971 () Bool)

(assert (=> d!413313 m!1639971))

(assert (=> d!413313 m!1637435))

(assert (=> d!413313 m!1637687))

(assert (=> d!413313 m!1639955))

(declare-fun m!1639973 () Bool)

(assert (=> d!413313 m!1639973))

(assert (=> d!413313 m!1639943))

(assert (=> d!413313 m!1639937))

(assert (=> d!413313 m!1639953))

(declare-fun m!1639975 () Bool)

(assert (=> d!413313 m!1639975))

(declare-fun m!1639977 () Bool)

(assert (=> b!1435283 m!1639977))

(declare-fun m!1639979 () Bool)

(assert (=> b!1435283 m!1639979))

(assert (=> b!1435283 m!1637435))

(assert (=> b!1435283 m!1637713))

(assert (=> b!1435283 m!1639959))

(declare-fun m!1639981 () Bool)

(assert (=> b!1435283 m!1639981))

(assert (=> b!1435283 m!1639977))

(assert (=> b!1435283 m!1639943))

(assert (=> b!1435283 m!1639937))

(declare-fun m!1639983 () Bool)

(assert (=> b!1435283 m!1639983))

(assert (=> b!1435283 m!1639959))

(declare-fun m!1639985 () Bool)

(assert (=> b!1435283 m!1639985))

(assert (=> b!1435283 m!1639943))

(assert (=> b!1435282 m!1639941))

(assert (=> b!1435282 m!1639941))

(assert (=> b!1435282 m!1639945))

(assert (=> b!1434365 d!413313))

(declare-fun b!1435285 () Bool)

(assert (=> b!1435285 false))

(declare-fun lt!490495 () Unit!22769)

(declare-fun lt!490448 () Unit!22769)

(assert (=> b!1435285 (= lt!490495 lt!490448)))

(declare-fun lt!490457 () List!14994)

(assert (=> b!1435285 (not (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489190))) lt!490457))))

(declare-fun lt!490480 () List!14994)

(declare-fun lt!490460 () Token!4908)

(assert (=> b!1435285 (= lt!490448 (lemmaMaxPrefNoSmallerRuleMatches!41 Lexer!2283 (rules!11404 thiss!10022) (rule!4386 lt!490460) lt!490457 lt!490480 (rule!4386 (h!20331 lt!489190))))))

(assert (=> b!1435285 (= lt!490457 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun e!916170 () Unit!22769)

(declare-fun Unit!22947 () Unit!22769)

(assert (=> b!1435285 (= e!916170 Unit!22947)))

(declare-fun b!1435286 () Bool)

(declare-fun e!916169 () Unit!22769)

(declare-fun Unit!22948 () Unit!22769)

(assert (=> b!1435286 (= e!916169 Unit!22948)))

(declare-fun b!1435287 () Bool)

(assert (=> b!1435287 false))

(declare-fun lt!490485 () Unit!22769)

(declare-fun lt!490494 () Unit!22769)

(assert (=> b!1435287 (= lt!490485 lt!490494)))

(assert (=> b!1435287 (= (rule!4386 lt!490460) (rule!4386 (h!20331 lt!489190)))))

(assert (=> b!1435287 (= lt!490494 (lemmaSameIndexThenSameElement!17 (rules!11404 thiss!10022) (rule!4386 lt!490460) (rule!4386 (h!20331 lt!489190))))))

(declare-fun Unit!22949 () Unit!22769)

(assert (=> b!1435287 (= e!916169 Unit!22949)))

(declare-fun b!1435288 () Bool)

(declare-fun Unit!22950 () Unit!22769)

(assert (=> b!1435288 (= e!916170 Unit!22950)))

(declare-fun b!1435289 () Bool)

(declare-fun e!916167 () Unit!22769)

(declare-fun Unit!22951 () Unit!22769)

(assert (=> b!1435289 (= e!916167 Unit!22951)))

(declare-fun c!235940 () Bool)

(assert (=> b!1435289 (= c!235940 (< (getIndex!69 (rules!11404 thiss!10022) (rule!4386 (h!20331 lt!489190))) (getIndex!69 (rules!11404 thiss!10022) (rule!4386 lt!490460))))))

(declare-fun lt!490472 () Unit!22769)

(assert (=> b!1435289 (= lt!490472 e!916170)))

(declare-fun c!235939 () Bool)

(assert (=> b!1435289 (= c!235939 (< (getIndex!69 (rules!11404 thiss!10022) (rule!4386 lt!490460)) (getIndex!69 (rules!11404 thiss!10022) (rule!4386 (h!20331 lt!489190)))))))

(declare-fun lt!490493 () Unit!22769)

(declare-fun e!916168 () Unit!22769)

(assert (=> b!1435289 (= lt!490493 e!916168)))

(declare-fun c!235941 () Bool)

(assert (=> b!1435289 (= c!235941 (= (getIndex!69 (rules!11404 thiss!10022) (rule!4386 lt!490460)) (getIndex!69 (rules!11404 thiss!10022) (rule!4386 (h!20331 lt!489190)))))))

(declare-fun lt!490508 () Unit!22769)

(assert (=> b!1435289 (= lt!490508 e!916169)))

(assert (=> b!1435289 false))

(declare-fun b!1435290 () Bool)

(declare-fun e!916166 () Unit!22769)

(declare-fun Unit!22952 () Unit!22769)

(assert (=> b!1435290 (= e!916166 Unit!22952)))

(declare-fun b!1435291 () Bool)

(declare-fun Unit!22953 () Unit!22769)

(assert (=> b!1435291 (= e!916168 Unit!22953)))

(declare-fun b!1435292 () Bool)

(declare-fun Unit!22954 () Unit!22769)

(assert (=> b!1435292 (= e!916167 Unit!22954)))

(declare-fun b!1435293 () Bool)

(declare-fun e!916165 () Bool)

(assert (=> b!1435293 (= e!916165 (= (rule!4386 lt!490460) (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 thiss!10022) (tag!2885 (rule!4386 lt!490460))))))))

(declare-fun d!413317 () Bool)

(assert (=> d!413317 (= (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482))) (Some!2848 (tuple2!14123 (h!20331 lt!489190) (list!5931 lt!489482))))))

(declare-fun lt!490470 () Unit!22769)

(declare-fun Unit!22955 () Unit!22769)

(assert (=> d!413317 (= lt!490470 Unit!22955)))

(declare-fun lt!490455 () Unit!22769)

(assert (=> d!413317 (= lt!490455 e!916167)))

(declare-fun c!235943 () Bool)

(assert (=> d!413317 (= c!235943 (not (= (rule!4386 lt!490460) (rule!4386 (h!20331 lt!489190)))))))

(declare-fun lt!490505 () Unit!22769)

(declare-fun lt!490467 () Unit!22769)

(assert (=> d!413317 (= lt!490505 lt!490467)))

(declare-fun lt!490489 () List!14994)

(assert (=> d!413317 (= (list!5931 lt!489482) lt!490489)))

(assert (=> d!413317 (= lt!490467 (lemmaSamePrefixThenSameSuffix!599 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482) (list!5931 (charsOf!1515 (h!20331 lt!489190))) lt!490489 lt!490480))))

(declare-fun lt!490451 () Unit!22769)

(declare-fun lt!490497 () Unit!22769)

(assert (=> d!413317 (= lt!490451 lt!490497)))

(declare-fun lt!490454 () List!14994)

(declare-fun lt!490474 () List!14994)

(assert (=> d!413317 (= lt!490454 lt!490474)))

(assert (=> d!413317 (= lt!490497 (lemmaIsPrefixSameLengthThenSameList!101 lt!490454 lt!490474 lt!490480))))

(assert (=> d!413317 (= lt!490474 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(assert (=> d!413317 (= lt!490454 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490475 () Unit!22769)

(assert (=> d!413317 (= lt!490475 e!916166)))

(declare-fun c!235942 () Bool)

(assert (=> d!413317 (= c!235942 (< (size!12244 (charsOf!1515 lt!490460)) (size!12244 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun lt!490442 () Unit!22769)

(declare-fun e!916171 () Unit!22769)

(assert (=> d!413317 (= lt!490442 e!916171)))

(declare-fun c!235944 () Bool)

(assert (=> d!413317 (= c!235944 (> (size!12244 (charsOf!1515 lt!490460)) (size!12244 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun lt!490444 () Unit!22769)

(declare-fun lt!490450 () Unit!22769)

(assert (=> d!413317 (= lt!490444 lt!490450)))

(assert (=> d!413317 (matchR!1819 (rulesRegex!391 Lexer!2283 (rules!11404 thiss!10022)) (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(assert (=> d!413317 (= lt!490450 (lemmaMaxPrefixThenMatchesRulesRegex!2 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))) (h!20331 lt!489190) (rule!4386 (h!20331 lt!489190)) Nil!14928))))

(declare-fun lt!490487 () Unit!22769)

(declare-fun lt!490506 () Unit!22769)

(assert (=> d!413317 (= lt!490487 lt!490506)))

(declare-fun lt!490452 () List!14994)

(assert (=> d!413317 (= lt!490489 lt!490452)))

(declare-fun lt!490453 () List!14994)

(declare-fun lt!490503 () List!14994)

(assert (=> d!413317 (= lt!490506 (lemmaSamePrefixThenSameSuffix!599 lt!490503 lt!490489 lt!490453 lt!490452 lt!490480))))

(assert (=> d!413317 (= lt!490452 (getSuffix!647 lt!490480 (list!5931 (charsOf!1515 lt!490460))))))

(assert (=> d!413317 (= lt!490453 (list!5931 (charsOf!1515 lt!490460)))))

(assert (=> d!413317 (= lt!490503 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490507 () Unit!22769)

(declare-fun lt!490479 () Unit!22769)

(assert (=> d!413317 (= lt!490507 lt!490479)))

(declare-fun lt!490476 () List!14994)

(assert (=> d!413317 (= (maxPrefixOneRule!652 Lexer!2283 (rule!4386 lt!490460) lt!490480) (Some!2848 (tuple2!14123 (Token!4909 (apply!3823 (transformation!2623 (rule!4386 lt!490460)) (seqFromList!1697 lt!490476)) (rule!4386 lt!490460) (size!12239 lt!490476) lt!490476) lt!490489)))))

(assert (=> d!413317 (= lt!490479 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!192 Lexer!2283 (rules!11404 thiss!10022) lt!490476 lt!490480 lt!490489 (rule!4386 lt!490460)))))

(assert (=> d!413317 (= lt!490476 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490465 () Unit!22769)

(assert (=> d!413317 (= lt!490465 (lemmaCharactersSize!298 lt!490460))))

(declare-fun lt!490456 () Unit!22769)

(assert (=> d!413317 (= lt!490456 (lemmaEqSameImage!109 (transformation!2623 (rule!4386 lt!490460)) (charsOf!1515 lt!490460) (seqFromList!1697 (originalCharacters!3485 lt!490460))))))

(declare-fun lt!490461 () Unit!22769)

(assert (=> d!413317 (= lt!490461 (lemmaSemiInverse!344 (transformation!2623 (rule!4386 lt!490460)) (charsOf!1515 lt!490460)))))

(declare-fun lt!490501 () Unit!22769)

(assert (=> d!413317 (= lt!490501 (lemmaInv!376 (transformation!2623 (rule!4386 lt!490460))))))

(declare-fun lt!490469 () Unit!22769)

(declare-fun lt!490492 () Unit!22769)

(assert (=> d!413317 (= lt!490469 lt!490492)))

(declare-fun lt!490441 () List!14994)

(assert (=> d!413317 (isPrefix!1193 lt!490441 (++!4001 lt!490441 lt!490489))))

(assert (=> d!413317 (= lt!490492 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490441 lt!490489))))

(assert (=> d!413317 (= lt!490441 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490482 () Unit!22769)

(declare-fun lt!490468 () Unit!22769)

(assert (=> d!413317 (= lt!490482 lt!490468)))

(assert (=> d!413317 e!916165))

(declare-fun res!649953 () Bool)

(assert (=> d!413317 (=> (not res!649953) (not e!916165))))

(assert (=> d!413317 (= res!649953 (isDefined!2307 (getRuleFromTag!215 Lexer!2283 (rules!11404 thiss!10022) (tag!2885 (rule!4386 lt!490460)))))))

(assert (=> d!413317 (= lt!490468 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!215 Lexer!2283 (rules!11404 thiss!10022) lt!490480 lt!490460))))

(declare-fun lt!490486 () Option!2849)

(assert (=> d!413317 (= lt!490489 (_2!7947 (get!4569 lt!490486)))))

(assert (=> d!413317 (= lt!490460 (_1!7947 (get!4569 lt!490486)))))

(declare-fun lt!490464 () Unit!22769)

(assert (=> d!413317 (= lt!490464 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)))))

(assert (=> d!413317 (= lt!490486 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) lt!490480))))

(declare-fun lt!490473 () Unit!22769)

(declare-fun lt!490462 () Unit!22769)

(assert (=> d!413317 (= lt!490473 lt!490462)))

(declare-fun lt!490498 () List!14994)

(assert (=> d!413317 (isPrefix!1193 lt!490498 (++!4001 lt!490498 (list!5931 lt!489482)))))

(assert (=> d!413317 (= lt!490462 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490498 (list!5931 lt!489482)))))

(assert (=> d!413317 (= lt!490498 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(assert (=> d!413317 (= lt!490480 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 lt!489482)))))

(assert (=> d!413317 (not (isEmpty!9275 (rules!11404 thiss!10022)))))

(assert (=> d!413317 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 thiss!10022) (h!20331 lt!489190) (rule!4386 (h!20331 lt!489190)) (list!5931 lt!489482)) lt!490470)))

(declare-fun b!1435294 () Bool)

(declare-fun Unit!22958 () Unit!22769)

(assert (=> b!1435294 (= e!916171 Unit!22958)))

(declare-fun b!1435295 () Bool)

(assert (=> b!1435295 false))

(declare-fun lt!490499 () Unit!22769)

(declare-fun lt!490459 () Unit!22769)

(assert (=> b!1435295 (= lt!490499 lt!490459)))

(declare-fun lt!490445 () List!14994)

(assert (=> b!1435295 (not (matchR!1819 (regex!2623 (rule!4386 lt!490460)) lt!490445))))

(assert (=> b!1435295 (= lt!490459 (lemmaMaxPrefNoSmallerRuleMatches!41 Lexer!2283 (rules!11404 thiss!10022) (rule!4386 (h!20331 lt!489190)) lt!490445 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (rule!4386 lt!490460)))))

(assert (=> b!1435295 (= lt!490445 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(declare-fun Unit!22959 () Unit!22769)

(assert (=> b!1435295 (= e!916168 Unit!22959)))

(declare-fun b!1435296 () Bool)

(declare-fun res!649952 () Bool)

(assert (=> b!1435296 (=> (not res!649952) (not e!916165))))

(assert (=> b!1435296 (= res!649952 (matchR!1819 (regex!2623 (get!4570 (getRuleFromTag!215 Lexer!2283 (rules!11404 thiss!10022) (tag!2885 (rule!4386 lt!490460))))) (list!5931 (charsOf!1515 lt!490460))))))

(declare-fun b!1435297 () Bool)

(declare-fun Unit!22960 () Unit!22769)

(assert (=> b!1435297 (= e!916171 Unit!22960)))

(declare-fun lt!490481 () Unit!22769)

(assert (=> b!1435297 (= lt!490481 (lemmaMaxPrefixThenMatchesRulesRegex!2 Lexer!2283 (rules!11404 thiss!10022) lt!490480 lt!490460 (rule!4386 lt!490460) lt!490489))))

(assert (=> b!1435297 (matchR!1819 (rulesRegex!391 Lexer!2283 (rules!11404 thiss!10022)) (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490490 () Unit!22769)

(assert (=> b!1435297 (= lt!490490 lt!490481)))

(declare-fun lt!490447 () List!14994)

(assert (=> b!1435297 (= lt!490447 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(declare-fun lt!490449 () List!14994)

(assert (=> b!1435297 (= lt!490449 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(declare-fun lt!490446 () List!14994)

(assert (=> b!1435297 (= lt!490446 (getSuffix!647 lt!490480 (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun lt!490477 () Unit!22769)

(assert (=> b!1435297 (= lt!490477 (lemmaSamePrefixThenSameSuffix!599 lt!490447 (list!5931 lt!489482) lt!490449 lt!490446 lt!490480))))

(assert (=> b!1435297 (= (list!5931 lt!489482) lt!490446)))

(declare-fun lt!490443 () Unit!22769)

(assert (=> b!1435297 (= lt!490443 lt!490477)))

(declare-fun lt!490463 () List!14994)

(assert (=> b!1435297 (= lt!490463 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(declare-fun lt!490491 () Unit!22769)

(assert (=> b!1435297 (= lt!490491 (lemmaAddHeadSuffixToPrefixStillPrefix!89 lt!490463 lt!490480))))

(assert (=> b!1435297 (isPrefix!1193 (++!4001 lt!490463 (Cons!14928 (head!2908 (getSuffix!647 lt!490480 lt!490463)) Nil!14928)) lt!490480)))

(declare-fun lt!490504 () Unit!22769)

(assert (=> b!1435297 (= lt!490504 lt!490491)))

(declare-fun lt!490466 () List!14994)

(assert (=> b!1435297 (= lt!490466 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490500 () List!14994)

(assert (=> b!1435297 (= lt!490500 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (Cons!14928 (head!2908 (list!5931 lt!489482)) Nil!14928)))))

(declare-fun lt!490496 () Unit!22769)

(assert (=> b!1435297 (= lt!490496 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!1 lt!490466 lt!490500 lt!490480))))

(assert (=> b!1435297 (isPrefix!1193 lt!490500 lt!490466)))

(declare-fun lt!490471 () Unit!22769)

(assert (=> b!1435297 (= lt!490471 lt!490496)))

(declare-fun lt!490509 () Regex!3937)

(assert (=> b!1435297 (= lt!490509 (rulesRegex!391 Lexer!2283 (rules!11404 thiss!10022)))))

(declare-fun lt!490484 () List!14994)

(assert (=> b!1435297 (= lt!490484 (++!4001 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (Cons!14928 (head!2908 (list!5931 lt!489482)) Nil!14928)))))

(declare-fun lt!490488 () List!14994)

(assert (=> b!1435297 (= lt!490488 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490440 () Unit!22769)

(assert (=> b!1435297 (= lt!490440 (lemmaNotPrefixMatchThenCannotMatchLonger!2 lt!490509 lt!490484 lt!490488))))

(assert (=> b!1435297 (not (matchR!1819 lt!490509 lt!490488))))

(declare-fun lt!490483 () Unit!22769)

(assert (=> b!1435297 (= lt!490483 lt!490440)))

(assert (=> b!1435297 false))

(declare-fun b!1435298 () Bool)

(declare-fun Unit!22961 () Unit!22769)

(assert (=> b!1435298 (= e!916166 Unit!22961)))

(declare-fun lt!490458 () List!14994)

(assert (=> b!1435298 (= lt!490458 (list!5931 (charsOf!1515 lt!490460)))))

(declare-fun lt!490439 () List!14994)

(assert (=> b!1435298 (= lt!490439 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(declare-fun lt!490502 () Unit!22769)

(assert (=> b!1435298 (= lt!490502 (lemmaMaxPrefixOutputsMaxPrefix!92 Lexer!2283 (rules!11404 thiss!10022) (rule!4386 lt!490460) lt!490458 lt!490480 lt!490439 (rule!4386 (h!20331 lt!489190))))))

(assert (=> b!1435298 (not (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489190))) lt!490439))))

(declare-fun lt!490478 () Unit!22769)

(assert (=> b!1435298 (= lt!490478 lt!490502)))

(assert (=> b!1435298 false))

(assert (= (and d!413317 res!649953) b!1435296))

(assert (= (and b!1435296 res!649952) b!1435293))

(assert (= (and d!413317 c!235944) b!1435297))

(assert (= (and d!413317 (not c!235944)) b!1435294))

(assert (= (and d!413317 c!235942) b!1435298))

(assert (= (and d!413317 (not c!235942)) b!1435290))

(assert (= (and d!413317 c!235943) b!1435289))

(assert (= (and d!413317 (not c!235943)) b!1435292))

(assert (= (and b!1435289 c!235940) b!1435285))

(assert (= (and b!1435289 (not c!235940)) b!1435288))

(assert (= (and b!1435289 c!235939) b!1435295))

(assert (= (and b!1435289 (not c!235939)) b!1435291))

(assert (= (and b!1435289 c!235941) b!1435287))

(assert (= (and b!1435289 (not c!235941)) b!1435286))

(declare-fun m!1639997 () Bool)

(assert (=> b!1435285 m!1639997))

(declare-fun m!1639999 () Bool)

(assert (=> b!1435285 m!1639999))

(declare-fun m!1640003 () Bool)

(assert (=> b!1435285 m!1640003))

(assert (=> b!1435285 m!1640003))

(declare-fun m!1640005 () Bool)

(assert (=> b!1435285 m!1640005))

(declare-fun m!1640009 () Bool)

(assert (=> b!1435293 m!1640009))

(assert (=> b!1435293 m!1640009))

(declare-fun m!1640015 () Bool)

(assert (=> b!1435293 m!1640015))

(declare-fun m!1640017 () Bool)

(assert (=> b!1435295 m!1640017))

(assert (=> b!1435295 m!1637433))

(assert (=> b!1435295 m!1637433))

(assert (=> b!1435295 m!1637435))

(assert (=> b!1435295 m!1637435))

(declare-fun m!1640025 () Bool)

(assert (=> b!1435295 m!1640025))

(declare-fun m!1640029 () Bool)

(assert (=> b!1435287 m!1640029))

(declare-fun m!1640031 () Bool)

(assert (=> b!1435289 m!1640031))

(declare-fun m!1640033 () Bool)

(assert (=> b!1435289 m!1640033))

(declare-fun m!1640035 () Bool)

(assert (=> b!1435298 m!1640035))

(assert (=> b!1435298 m!1637433))

(assert (=> b!1435298 m!1640003))

(declare-fun m!1640037 () Bool)

(assert (=> b!1435298 m!1640037))

(assert (=> b!1435298 m!1640003))

(assert (=> b!1435298 m!1640005))

(assert (=> b!1435298 m!1637433))

(assert (=> b!1435298 m!1637435))

(assert (=> b!1435296 m!1640003))

(assert (=> b!1435296 m!1640005))

(assert (=> b!1435296 m!1640009))

(assert (=> b!1435296 m!1640003))

(assert (=> b!1435296 m!1640005))

(declare-fun m!1640041 () Bool)

(assert (=> b!1435296 m!1640041))

(assert (=> b!1435296 m!1640009))

(assert (=> b!1435296 m!1640015))

(declare-fun m!1640045 () Bool)

(assert (=> d!413317 m!1640045))

(declare-fun m!1640047 () Bool)

(assert (=> d!413317 m!1640047))

(assert (=> d!413317 m!1637435))

(assert (=> d!413317 m!1637713))

(assert (=> d!413317 m!1637715))

(assert (=> d!413317 m!1640045))

(declare-fun m!1640049 () Bool)

(assert (=> d!413317 m!1640049))

(assert (=> d!413317 m!1637713))

(declare-fun m!1640051 () Bool)

(assert (=> d!413317 m!1640051))

(declare-fun m!1640053 () Bool)

(assert (=> d!413317 m!1640053))

(assert (=> d!413317 m!1637433))

(assert (=> d!413317 m!1640003))

(declare-fun m!1640055 () Bool)

(assert (=> d!413317 m!1640055))

(assert (=> d!413317 m!1640003))

(declare-fun m!1640057 () Bool)

(assert (=> d!413317 m!1640057))

(assert (=> d!413317 m!1637435))

(assert (=> d!413317 m!1637713))

(assert (=> d!413317 m!1637435))

(declare-fun m!1640059 () Bool)

(assert (=> d!413317 m!1640059))

(assert (=> d!413317 m!1637435))

(assert (=> d!413317 m!1637713))

(assert (=> d!413317 m!1639959))

(declare-fun m!1640063 () Bool)

(assert (=> d!413317 m!1640063))

(declare-fun m!1640067 () Bool)

(assert (=> d!413317 m!1640067))

(declare-fun m!1640073 () Bool)

(assert (=> d!413317 m!1640073))

(declare-fun m!1640075 () Bool)

(assert (=> d!413317 m!1640075))

(declare-fun m!1640077 () Bool)

(assert (=> d!413317 m!1640077))

(assert (=> d!413317 m!1637435))

(declare-fun m!1640079 () Bool)

(assert (=> d!413317 m!1640079))

(assert (=> d!413317 m!1640077))

(declare-fun m!1640081 () Bool)

(assert (=> d!413317 m!1640081))

(assert (=> d!413317 m!1640003))

(assert (=> d!413317 m!1640005))

(assert (=> d!413317 m!1640003))

(declare-fun m!1640083 () Bool)

(assert (=> d!413317 m!1640083))

(declare-fun m!1640085 () Bool)

(assert (=> d!413317 m!1640085))

(assert (=> d!413317 m!1637433))

(assert (=> d!413317 m!1637435))

(assert (=> d!413317 m!1640009))

(assert (=> d!413317 m!1637713))

(declare-fun m!1640087 () Bool)

(assert (=> d!413317 m!1640087))

(declare-fun m!1640089 () Bool)

(assert (=> d!413317 m!1640089))

(assert (=> d!413317 m!1640003))

(declare-fun m!1640091 () Bool)

(assert (=> d!413317 m!1640091))

(assert (=> d!413317 m!1640087))

(declare-fun m!1640093 () Bool)

(assert (=> d!413317 m!1640093))

(assert (=> d!413317 m!1637433))

(declare-fun m!1640095 () Bool)

(assert (=> d!413317 m!1640095))

(assert (=> d!413317 m!1637143))

(assert (=> d!413317 m!1640005))

(declare-fun m!1640097 () Bool)

(assert (=> d!413317 m!1640097))

(assert (=> d!413317 m!1640083))

(declare-fun m!1640099 () Bool)

(assert (=> d!413317 m!1640099))

(declare-fun m!1640101 () Bool)

(assert (=> d!413317 m!1640101))

(assert (=> d!413317 m!1637435))

(declare-fun m!1640103 () Bool)

(assert (=> d!413317 m!1640103))

(assert (=> d!413317 m!1640009))

(declare-fun m!1640105 () Bool)

(assert (=> d!413317 m!1640105))

(declare-fun m!1640107 () Bool)

(assert (=> d!413317 m!1640107))

(assert (=> d!413317 m!1640053))

(declare-fun m!1640109 () Bool)

(assert (=> d!413317 m!1640109))

(assert (=> d!413317 m!1639959))

(assert (=> d!413317 m!1639955))

(declare-fun m!1640111 () Bool)

(assert (=> b!1435297 m!1640111))

(declare-fun m!1640113 () Bool)

(assert (=> b!1435297 m!1640113))

(declare-fun m!1640115 () Bool)

(assert (=> b!1435297 m!1640115))

(declare-fun m!1640117 () Bool)

(assert (=> b!1435297 m!1640117))

(declare-fun m!1640119 () Bool)

(assert (=> b!1435297 m!1640119))

(assert (=> b!1435297 m!1637713))

(declare-fun m!1640121 () Bool)

(assert (=> b!1435297 m!1640121))

(assert (=> b!1435297 m!1640003))

(assert (=> b!1435297 m!1640005))

(assert (=> b!1435297 m!1640077))

(assert (=> b!1435297 m!1637433))

(assert (=> b!1435297 m!1637435))

(declare-fun m!1640123 () Bool)

(assert (=> b!1435297 m!1640123))

(declare-fun m!1640125 () Bool)

(assert (=> b!1435297 m!1640125))

(assert (=> b!1435297 m!1637713))

(assert (=> b!1435297 m!1637731))

(assert (=> b!1435297 m!1640111))

(declare-fun m!1640127 () Bool)

(assert (=> b!1435297 m!1640127))

(assert (=> b!1435297 m!1640115))

(declare-fun m!1640129 () Bool)

(assert (=> b!1435297 m!1640129))

(assert (=> b!1435297 m!1640077))

(assert (=> b!1435297 m!1640005))

(declare-fun m!1640131 () Bool)

(assert (=> b!1435297 m!1640131))

(assert (=> b!1435297 m!1637433))

(declare-fun m!1640133 () Bool)

(assert (=> b!1435297 m!1640133))

(assert (=> b!1435297 m!1637435))

(declare-fun m!1640135 () Bool)

(assert (=> b!1435297 m!1640135))

(assert (=> b!1435297 m!1637435))

(declare-fun m!1640137 () Bool)

(assert (=> b!1435297 m!1640137))

(assert (=> b!1435297 m!1640003))

(assert (=> b!1434365 d!413317))

(declare-fun d!413337 () Bool)

(assert (=> d!413337 (= (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (originalCharacters!3485 (h!20331 lt!489190)))) (not (isEmpty!9282 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (originalCharacters!3485 (h!20331 lt!489190))))))))

(declare-fun bs!341074 () Bool)

(assert (= bs!341074 d!413337))

(assert (=> bs!341074 m!1637691))

(declare-fun m!1640139 () Bool)

(assert (=> bs!341074 m!1640139))

(assert (=> b!1434365 d!413337))

(declare-fun b!1435314 () Bool)

(declare-fun e!916180 () Bool)

(declare-fun lt!490515 () List!14994)

(assert (=> b!1435314 (= e!916180 (or (not (= lt!489477 Nil!14928)) (= lt!490515 lt!489470)))))

(declare-fun b!1435313 () Bool)

(declare-fun res!649963 () Bool)

(assert (=> b!1435313 (=> (not res!649963) (not e!916180))))

(assert (=> b!1435313 (= res!649963 (= (size!12239 lt!490515) (+ (size!12239 lt!489470) (size!12239 lt!489477))))))

(declare-fun b!1435311 () Bool)

(declare-fun e!916181 () List!14994)

(assert (=> b!1435311 (= e!916181 lt!489477)))

(declare-fun b!1435312 () Bool)

(assert (=> b!1435312 (= e!916181 (Cons!14928 (h!20329 lt!489470) (++!4001 (t!127237 lt!489470) lt!489477)))))

(declare-fun d!413339 () Bool)

(assert (=> d!413339 e!916180))

(declare-fun res!649962 () Bool)

(assert (=> d!413339 (=> (not res!649962) (not e!916180))))

(assert (=> d!413339 (= res!649962 (= (content!2203 lt!490515) ((_ map or) (content!2203 lt!489470) (content!2203 lt!489477))))))

(assert (=> d!413339 (= lt!490515 e!916181)))

(declare-fun c!235948 () Bool)

(assert (=> d!413339 (= c!235948 ((_ is Nil!14928) lt!489470))))

(assert (=> d!413339 (= (++!4001 lt!489470 lt!489477) lt!490515)))

(assert (= (and d!413339 c!235948) b!1435311))

(assert (= (and d!413339 (not c!235948)) b!1435312))

(assert (= (and d!413339 res!649962) b!1435313))

(assert (= (and b!1435313 res!649963) b!1435314))

(declare-fun m!1640141 () Bool)

(assert (=> b!1435313 m!1640141))

(declare-fun m!1640143 () Bool)

(assert (=> b!1435313 m!1640143))

(declare-fun m!1640145 () Bool)

(assert (=> b!1435313 m!1640145))

(declare-fun m!1640147 () Bool)

(assert (=> b!1435312 m!1640147))

(declare-fun m!1640149 () Bool)

(assert (=> d!413339 m!1640149))

(declare-fun m!1640151 () Bool)

(assert (=> d!413339 m!1640151))

(declare-fun m!1640153 () Bool)

(assert (=> d!413339 m!1640153))

(assert (=> b!1434365 d!413339))

(declare-fun d!413341 () Bool)

(declare-fun lt!490516 () BalanceConc!10084)

(assert (=> d!413341 (= (list!5931 lt!490516) (printList!707 Lexer!2283 (list!5932 (singletonSeq!1226 (h!20331 lt!489190)))))))

(assert (=> d!413341 (= lt!490516 (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489190)) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!413341 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489190))) lt!490516)))

(declare-fun bs!341075 () Bool)

(assert (= bs!341075 d!413341))

(declare-fun m!1640155 () Bool)

(assert (=> bs!341075 m!1640155))

(assert (=> bs!341075 m!1637709))

(declare-fun m!1640157 () Bool)

(assert (=> bs!341075 m!1640157))

(assert (=> bs!341075 m!1640157))

(declare-fun m!1640159 () Bool)

(assert (=> bs!341075 m!1640159))

(assert (=> bs!341075 m!1637709))

(assert (=> bs!341075 m!1637735))

(assert (=> b!1434365 d!413341))

(declare-fun b!1435321 () Bool)

(declare-fun res!649970 () Bool)

(declare-fun e!916186 () Bool)

(assert (=> b!1435321 (=> (not res!649970) (not e!916186))))

(declare-fun lt!490517 () tuple2!14120)

(assert (=> b!1435321 (= res!649970 (= (list!5932 (_1!7946 lt!490517)) (_1!7948 (lexList!699 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!489482)))))))

(declare-fun d!413343 () Bool)

(assert (=> d!413343 e!916186))

(declare-fun res!649972 () Bool)

(assert (=> d!413343 (=> (not res!649972) (not e!916186))))

(declare-fun e!916185 () Bool)

(assert (=> d!413343 (= res!649972 e!916185)))

(declare-fun c!235949 () Bool)

(assert (=> d!413343 (= c!235949 (> (size!12238 (_1!7946 lt!490517)) 0))))

(assert (=> d!413343 (= lt!490517 (lexTailRecV2!454 Lexer!2283 (rules!11404 thiss!10022) lt!489482 (BalanceConc!10085 Empty!5072) lt!489482 (BalanceConc!10087 Empty!5073)))))

(assert (=> d!413343 (= (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!489482) lt!490517)))

(declare-fun b!1435322 () Bool)

(declare-fun e!916184 () Bool)

(assert (=> b!1435322 (= e!916184 (not (isEmpty!9269 (_1!7946 lt!490517))))))

(declare-fun b!1435323 () Bool)

(assert (=> b!1435323 (= e!916186 (= (list!5931 (_2!7946 lt!490517)) (_2!7948 (lexList!699 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!489482)))))))

(declare-fun b!1435324 () Bool)

(assert (=> b!1435324 (= e!916185 (= (_2!7946 lt!490517) lt!489482))))

(declare-fun b!1435325 () Bool)

(assert (=> b!1435325 (= e!916185 e!916184)))

(declare-fun res!649971 () Bool)

(assert (=> b!1435325 (= res!649971 (< (size!12244 (_2!7946 lt!490517)) (size!12244 lt!489482)))))

(assert (=> b!1435325 (=> (not res!649971) (not e!916184))))

(assert (= (and d!413343 c!235949) b!1435325))

(assert (= (and d!413343 (not c!235949)) b!1435324))

(assert (= (and b!1435325 res!649971) b!1435322))

(assert (= (and d!413343 res!649972) b!1435321))

(assert (= (and b!1435321 res!649970) b!1435323))

(declare-fun m!1640161 () Bool)

(assert (=> b!1435323 m!1640161))

(assert (=> b!1435323 m!1637713))

(assert (=> b!1435323 m!1637713))

(declare-fun m!1640163 () Bool)

(assert (=> b!1435323 m!1640163))

(declare-fun m!1640165 () Bool)

(assert (=> b!1435321 m!1640165))

(assert (=> b!1435321 m!1637713))

(assert (=> b!1435321 m!1637713))

(assert (=> b!1435321 m!1640163))

(declare-fun m!1640167 () Bool)

(assert (=> b!1435322 m!1640167))

(declare-fun m!1640169 () Bool)

(assert (=> b!1435325 m!1640169))

(declare-fun m!1640171 () Bool)

(assert (=> b!1435325 m!1640171))

(declare-fun m!1640173 () Bool)

(assert (=> d!413343 m!1640173))

(declare-fun m!1640175 () Bool)

(assert (=> d!413343 m!1640175))

(assert (=> b!1434365 d!413343))

(declare-fun d!413345 () Bool)

(declare-fun lt!490518 () BalanceConc!10084)

(assert (=> d!413345 (= (list!5931 lt!490518) (printListTailRec!281 Lexer!2283 (dropList!462 (singletonSeq!1226 (h!20331 lt!489190)) 0) (list!5931 (BalanceConc!10085 Empty!5072))))))

(declare-fun e!916189 () BalanceConc!10084)

(assert (=> d!413345 (= lt!490518 e!916189)))

(declare-fun c!235950 () Bool)

(assert (=> d!413345 (= c!235950 (>= 0 (size!12238 (singletonSeq!1226 (h!20331 lt!489190)))))))

(declare-fun e!916188 () Bool)

(assert (=> d!413345 e!916188))

(declare-fun res!649976 () Bool)

(assert (=> d!413345 (=> (not res!649976) (not e!916188))))

(assert (=> d!413345 (= res!649976 (>= 0 0))))

(assert (=> d!413345 (= (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489190)) 0 (BalanceConc!10085 Empty!5072)) lt!490518)))

(declare-fun b!1435329 () Bool)

(assert (=> b!1435329 (= e!916188 (<= 0 (size!12238 (singletonSeq!1226 (h!20331 lt!489190)))))))

(declare-fun b!1435330 () Bool)

(assert (=> b!1435330 (= e!916189 (BalanceConc!10085 Empty!5072))))

(declare-fun b!1435331 () Bool)

(assert (=> b!1435331 (= e!916189 (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 lt!489190)) (+ 0 1) (++!4004 (BalanceConc!10085 Empty!5072) (charsOf!1515 (apply!3818 (singletonSeq!1226 (h!20331 lt!489190)) 0)))))))

(declare-fun lt!490520 () List!14996)

(assert (=> b!1435331 (= lt!490520 (list!5932 (singletonSeq!1226 (h!20331 lt!489190))))))

(declare-fun lt!490524 () Unit!22769)

(assert (=> b!1435331 (= lt!490524 (lemmaDropApply!482 lt!490520 0))))

(assert (=> b!1435331 (= (head!2907 (drop!730 lt!490520 0)) (apply!3819 lt!490520 0))))

(declare-fun lt!490519 () Unit!22769)

(assert (=> b!1435331 (= lt!490519 lt!490524)))

(declare-fun lt!490523 () List!14996)

(assert (=> b!1435331 (= lt!490523 (list!5932 (singletonSeq!1226 (h!20331 lt!489190))))))

(declare-fun lt!490522 () Unit!22769)

(assert (=> b!1435331 (= lt!490522 (lemmaDropTail!462 lt!490523 0))))

(assert (=> b!1435331 (= (tail!2152 (drop!730 lt!490523 0)) (drop!730 lt!490523 (+ 0 1)))))

(declare-fun lt!490521 () Unit!22769)

(assert (=> b!1435331 (= lt!490521 lt!490522)))

(assert (= (and d!413345 res!649976) b!1435329))

(assert (= (and d!413345 c!235950) b!1435330))

(assert (= (and d!413345 (not c!235950)) b!1435331))

(assert (=> d!413345 m!1637709))

(declare-fun m!1640187 () Bool)

(assert (=> d!413345 m!1640187))

(assert (=> d!413345 m!1637709))

(declare-fun m!1640189 () Bool)

(assert (=> d!413345 m!1640189))

(assert (=> d!413345 m!1640189))

(assert (=> d!413345 m!1637173))

(declare-fun m!1640191 () Bool)

(assert (=> d!413345 m!1640191))

(declare-fun m!1640193 () Bool)

(assert (=> d!413345 m!1640193))

(assert (=> d!413345 m!1637173))

(assert (=> b!1435329 m!1637709))

(assert (=> b!1435329 m!1640187))

(declare-fun m!1640195 () Bool)

(assert (=> b!1435331 m!1640195))

(declare-fun m!1640197 () Bool)

(assert (=> b!1435331 m!1640197))

(declare-fun m!1640199 () Bool)

(assert (=> b!1435331 m!1640199))

(declare-fun m!1640201 () Bool)

(assert (=> b!1435331 m!1640201))

(assert (=> b!1435331 m!1637709))

(assert (=> b!1435331 m!1640157))

(declare-fun m!1640203 () Bool)

(assert (=> b!1435331 m!1640203))

(assert (=> b!1435331 m!1637709))

(declare-fun m!1640205 () Bool)

(assert (=> b!1435331 m!1640205))

(assert (=> b!1435331 m!1640195))

(declare-fun m!1640207 () Bool)

(assert (=> b!1435331 m!1640207))

(assert (=> b!1435331 m!1637709))

(assert (=> b!1435331 m!1640199))

(declare-fun m!1640209 () Bool)

(assert (=> b!1435331 m!1640209))

(assert (=> b!1435331 m!1640205))

(assert (=> b!1435331 m!1640197))

(assert (=> b!1435331 m!1640203))

(declare-fun m!1640211 () Bool)

(assert (=> b!1435331 m!1640211))

(declare-fun m!1640213 () Bool)

(assert (=> b!1435331 m!1640213))

(declare-fun m!1640215 () Bool)

(assert (=> b!1435331 m!1640215))

(declare-fun m!1640217 () Bool)

(assert (=> b!1435331 m!1640217))

(assert (=> b!1434365 d!413345))

(declare-fun d!413349 () Bool)

(assert (=> d!413349 (= (head!2908 (list!5931 lt!489482)) (h!20329 (list!5931 lt!489482)))))

(assert (=> b!1434365 d!413349))

(declare-fun d!413351 () Bool)

(assert (=> d!413351 (= (list!5932 (_1!7946 lt!489488)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489190))) (h!20331 (t!127239 lt!489190)))))))

(declare-fun lt!490525 () Unit!22769)

(assert (=> d!413351 (= lt!490525 (choose!8846 (h!20331 (t!127239 lt!489190)) (t!127239 (t!127239 lt!489190)) (_1!7946 lt!489488)))))

(assert (=> d!413351 (= (list!5932 (_1!7946 lt!489488)) (list!5932 (seqFromList!1696 ($colon$colon!241 (t!127239 (t!127239 lt!489190)) (h!20331 (t!127239 lt!489190))))))))

(assert (=> d!413351 (= (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 lt!489190)) (t!127239 (t!127239 lt!489190)) (_1!7946 lt!489488)) lt!490525)))

(declare-fun bs!341076 () Bool)

(assert (= bs!341076 d!413351))

(declare-fun m!1640219 () Bool)

(assert (=> bs!341076 m!1640219))

(declare-fun m!1640221 () Bool)

(assert (=> bs!341076 m!1640221))

(assert (=> bs!341076 m!1637681))

(assert (=> bs!341076 m!1637723))

(assert (=> bs!341076 m!1637705))

(assert (=> bs!341076 m!1637707))

(assert (=> bs!341076 m!1637723))

(assert (=> bs!341076 m!1637705))

(declare-fun m!1640223 () Bool)

(assert (=> bs!341076 m!1640223))

(assert (=> bs!341076 m!1640219))

(assert (=> bs!341076 m!1640221))

(declare-fun m!1640225 () Bool)

(assert (=> bs!341076 m!1640225))

(assert (=> b!1434365 d!413351))

(declare-fun d!413353 () Bool)

(assert (=> d!413353 (= (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))))) (not (isEmpty!9282 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))))

(declare-fun bs!341077 () Bool)

(assert (= bs!341077 d!413353))

(assert (=> bs!341077 m!1637687))

(declare-fun m!1640227 () Bool)

(assert (=> bs!341077 m!1640227))

(assert (=> b!1434365 d!413353))

(declare-fun d!413355 () Bool)

(declare-fun lt!490526 () C!8052)

(assert (=> d!413355 (= lt!490526 (head!2908 (list!5931 lt!489482)))))

(assert (=> d!413355 (= lt!490526 (head!2910 (c!235660 lt!489482)))))

(assert (=> d!413355 (not (isEmpty!9279 lt!489482))))

(assert (=> d!413355 (= (head!2909 lt!489482) lt!490526)))

(declare-fun bs!341078 () Bool)

(assert (= bs!341078 d!413355))

(assert (=> bs!341078 m!1637713))

(assert (=> bs!341078 m!1637713))

(assert (=> bs!341078 m!1637731))

(declare-fun m!1640229 () Bool)

(assert (=> bs!341078 m!1640229))

(declare-fun m!1640231 () Bool)

(assert (=> bs!341078 m!1640231))

(assert (=> b!1434365 d!413355))

(declare-fun d!413357 () Bool)

(assert (=> d!413357 (= (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489190))) (h!20331 (t!127239 lt!489190)))) (list!5936 (c!235662 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489190))) (h!20331 (t!127239 lt!489190))))))))

(declare-fun bs!341079 () Bool)

(assert (= bs!341079 d!413357))

(declare-fun m!1640233 () Bool)

(assert (=> bs!341079 m!1640233))

(assert (=> b!1434365 d!413357))

(declare-fun d!413359 () Bool)

(declare-fun lt!490527 () C!8052)

(assert (=> d!413359 (= lt!490527 (apply!3827 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190)))) 0))))

(assert (=> d!413359 (= lt!490527 (apply!3828 (c!235660 (charsOf!1515 (h!20331 (t!127239 lt!489190)))) 0))))

(declare-fun e!916194 () Bool)

(assert (=> d!413359 e!916194))

(declare-fun res!649981 () Bool)

(assert (=> d!413359 (=> (not res!649981) (not e!916194))))

(assert (=> d!413359 (= res!649981 (<= 0 0))))

(assert (=> d!413359 (= (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0) lt!490527)))

(declare-fun b!1435336 () Bool)

(assert (=> b!1435336 (= e!916194 (< 0 (size!12244 (charsOf!1515 (h!20331 (t!127239 lt!489190))))))))

(assert (= (and d!413359 res!649981) b!1435336))

(assert (=> d!413359 m!1637737))

(assert (=> d!413359 m!1639651))

(assert (=> d!413359 m!1639651))

(declare-fun m!1640235 () Bool)

(assert (=> d!413359 m!1640235))

(declare-fun m!1640237 () Bool)

(assert (=> d!413359 m!1640237))

(assert (=> b!1435336 m!1637737))

(declare-fun m!1640239 () Bool)

(assert (=> b!1435336 m!1640239))

(assert (=> b!1434365 d!413359))

(declare-fun d!413361 () Bool)

(declare-fun e!916195 () Bool)

(assert (=> d!413361 e!916195))

(declare-fun res!649990 () Bool)

(assert (=> d!413361 (=> (not res!649990) (not e!916195))))

(assert (=> d!413361 (= res!649990 (isBalanced!1503 (prepend!408 (c!235662 (seqFromList!1696 (t!127239 (t!127239 lt!489190)))) (h!20331 (t!127239 lt!489190)))))))

(declare-fun lt!490528 () BalanceConc!10086)

(assert (=> d!413361 (= lt!490528 (BalanceConc!10087 (prepend!408 (c!235662 (seqFromList!1696 (t!127239 (t!127239 lt!489190)))) (h!20331 (t!127239 lt!489190)))))))

(assert (=> d!413361 (= (prepend!407 (seqFromList!1696 (t!127239 (t!127239 lt!489190))) (h!20331 (t!127239 lt!489190))) lt!490528)))

(declare-fun b!1435345 () Bool)

(assert (=> b!1435345 (= e!916195 (= (list!5932 lt!490528) (Cons!14930 (h!20331 (t!127239 lt!489190)) (list!5932 (seqFromList!1696 (t!127239 (t!127239 lt!489190)))))))))

(assert (= (and d!413361 res!649990) b!1435345))

(declare-fun m!1640241 () Bool)

(assert (=> d!413361 m!1640241))

(assert (=> d!413361 m!1640241))

(declare-fun m!1640243 () Bool)

(assert (=> d!413361 m!1640243))

(declare-fun m!1640245 () Bool)

(assert (=> b!1435345 m!1640245))

(assert (=> b!1435345 m!1637723))

(declare-fun m!1640247 () Bool)

(assert (=> b!1435345 m!1640247))

(assert (=> b!1434365 d!413361))

(declare-fun b!1435346 () Bool)

(declare-fun e!916201 () Bool)

(declare-fun lt!490529 () Bool)

(assert (=> b!1435346 (= e!916201 (not lt!490529))))

(declare-fun b!1435347 () Bool)

(declare-fun e!916198 () Bool)

(declare-fun call!97317 () Bool)

(assert (=> b!1435347 (= e!916198 (= lt!490529 call!97317))))

(declare-fun b!1435348 () Bool)

(declare-fun res!649993 () Bool)

(declare-fun e!916196 () Bool)

(assert (=> b!1435348 (=> res!649993 e!916196)))

(assert (=> b!1435348 (= res!649993 (not (isEmpty!9278 (tail!2154 (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))))

(declare-fun b!1435349 () Bool)

(declare-fun e!916202 () Bool)

(declare-fun e!916200 () Bool)

(assert (=> b!1435349 (= e!916202 e!916200)))

(declare-fun res!649994 () Bool)

(assert (=> b!1435349 (=> (not res!649994) (not e!916200))))

(assert (=> b!1435349 (= res!649994 (not lt!490529))))

(declare-fun b!1435350 () Bool)

(assert (=> b!1435350 (= e!916198 e!916201)))

(declare-fun c!235951 () Bool)

(assert (=> b!1435350 (= c!235951 ((_ is EmptyLang!3937) (regex!2623 (rule!4386 (h!20331 lt!489190)))))))

(declare-fun b!1435351 () Bool)

(declare-fun res!649997 () Bool)

(declare-fun e!916197 () Bool)

(assert (=> b!1435351 (=> (not res!649997) (not e!916197))))

(assert (=> b!1435351 (= res!649997 (not call!97317))))

(declare-fun b!1435352 () Bool)

(declare-fun e!916199 () Bool)

(assert (=> b!1435352 (= e!916199 (matchR!1819 (derivativeStep!997 (regex!2623 (rule!4386 (h!20331 lt!489190))) (head!2908 (list!5931 (charsOf!1515 (h!20331 lt!489190))))) (tail!2154 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))))

(declare-fun b!1435353 () Bool)

(assert (=> b!1435353 (= e!916200 e!916196)))

(declare-fun res!649991 () Bool)

(assert (=> b!1435353 (=> res!649991 e!916196)))

(assert (=> b!1435353 (= res!649991 call!97317)))

(declare-fun b!1435354 () Bool)

(assert (=> b!1435354 (= e!916196 (not (= (head!2908 (list!5931 (charsOf!1515 (h!20331 lt!489190)))) (c!235661 (regex!2623 (rule!4386 (h!20331 lt!489190)))))))))

(declare-fun d!413363 () Bool)

(assert (=> d!413363 e!916198))

(declare-fun c!235952 () Bool)

(assert (=> d!413363 (= c!235952 ((_ is EmptyExpr!3937) (regex!2623 (rule!4386 (h!20331 lt!489190)))))))

(assert (=> d!413363 (= lt!490529 e!916199)))

(declare-fun c!235953 () Bool)

(assert (=> d!413363 (= c!235953 (isEmpty!9278 (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(assert (=> d!413363 (validRegex!1671 (regex!2623 (rule!4386 (h!20331 lt!489190))))))

(assert (=> d!413363 (= (matchR!1819 (regex!2623 (rule!4386 (h!20331 lt!489190))) (list!5931 (charsOf!1515 (h!20331 lt!489190)))) lt!490529)))

(declare-fun bm!97312 () Bool)

(assert (=> bm!97312 (= call!97317 (isEmpty!9278 (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun b!1435355 () Bool)

(assert (=> b!1435355 (= e!916199 (nullable!1241 (regex!2623 (rule!4386 (h!20331 lt!489190)))))))

(declare-fun b!1435356 () Bool)

(declare-fun res!649998 () Bool)

(assert (=> b!1435356 (=> (not res!649998) (not e!916197))))

(assert (=> b!1435356 (= res!649998 (isEmpty!9278 (tail!2154 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))))

(declare-fun b!1435357 () Bool)

(assert (=> b!1435357 (= e!916197 (= (head!2908 (list!5931 (charsOf!1515 (h!20331 lt!489190)))) (c!235661 (regex!2623 (rule!4386 (h!20331 lt!489190))))))))

(declare-fun b!1435358 () Bool)

(declare-fun res!649992 () Bool)

(assert (=> b!1435358 (=> res!649992 e!916202)))

(assert (=> b!1435358 (= res!649992 (not ((_ is ElementMatch!3937) (regex!2623 (rule!4386 (h!20331 lt!489190))))))))

(assert (=> b!1435358 (= e!916201 e!916202)))

(declare-fun b!1435359 () Bool)

(declare-fun res!649995 () Bool)

(assert (=> b!1435359 (=> res!649995 e!916202)))

(assert (=> b!1435359 (= res!649995 e!916197)))

(declare-fun res!649996 () Bool)

(assert (=> b!1435359 (=> (not res!649996) (not e!916197))))

(assert (=> b!1435359 (= res!649996 lt!490529)))

(assert (= (and d!413363 c!235953) b!1435355))

(assert (= (and d!413363 (not c!235953)) b!1435352))

(assert (= (and d!413363 c!235952) b!1435347))

(assert (= (and d!413363 (not c!235952)) b!1435350))

(assert (= (and b!1435350 c!235951) b!1435346))

(assert (= (and b!1435350 (not c!235951)) b!1435358))

(assert (= (and b!1435358 (not res!649992)) b!1435359))

(assert (= (and b!1435359 res!649996) b!1435351))

(assert (= (and b!1435351 res!649997) b!1435356))

(assert (= (and b!1435356 res!649998) b!1435357))

(assert (= (and b!1435359 (not res!649995)) b!1435349))

(assert (= (and b!1435349 res!649994) b!1435353))

(assert (= (and b!1435353 (not res!649991)) b!1435348))

(assert (= (and b!1435348 (not res!649993)) b!1435354))

(assert (= (or b!1435347 b!1435351 b!1435353) bm!97312))

(assert (=> b!1435348 m!1637435))

(declare-fun m!1640249 () Bool)

(assert (=> b!1435348 m!1640249))

(assert (=> b!1435348 m!1640249))

(declare-fun m!1640251 () Bool)

(assert (=> b!1435348 m!1640251))

(assert (=> b!1435357 m!1637435))

(declare-fun m!1640253 () Bool)

(assert (=> b!1435357 m!1640253))

(assert (=> bm!97312 m!1637435))

(declare-fun m!1640255 () Bool)

(assert (=> bm!97312 m!1640255))

(assert (=> b!1435356 m!1637435))

(assert (=> b!1435356 m!1640249))

(assert (=> b!1435356 m!1640249))

(assert (=> b!1435356 m!1640251))

(assert (=> d!413363 m!1637435))

(assert (=> d!413363 m!1640255))

(declare-fun m!1640257 () Bool)

(assert (=> d!413363 m!1640257))

(declare-fun m!1640259 () Bool)

(assert (=> b!1435355 m!1640259))

(assert (=> b!1435352 m!1637435))

(assert (=> b!1435352 m!1640253))

(assert (=> b!1435352 m!1640253))

(declare-fun m!1640261 () Bool)

(assert (=> b!1435352 m!1640261))

(assert (=> b!1435352 m!1637435))

(assert (=> b!1435352 m!1640249))

(assert (=> b!1435352 m!1640261))

(assert (=> b!1435352 m!1640249))

(declare-fun m!1640263 () Bool)

(assert (=> b!1435352 m!1640263))

(assert (=> b!1435354 m!1637435))

(assert (=> b!1435354 m!1640253))

(assert (=> b!1434365 d!413363))

(declare-fun d!413365 () Bool)

(declare-fun lt!490530 () BalanceConc!10084)

(assert (=> d!413365 (= (list!5931 lt!490530) (originalCharacters!3485 (h!20331 (t!127239 lt!489190))))))

(assert (=> d!413365 (= lt!490530 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190))))) (value!84403 (h!20331 (t!127239 lt!489190)))))))

(assert (=> d!413365 (= (charsOf!1515 (h!20331 (t!127239 lt!489190))) lt!490530)))

(declare-fun b_lambda!44875 () Bool)

(assert (=> (not b_lambda!44875) (not d!413365)))

(declare-fun tb!75921 () Bool)

(declare-fun t!127293 () Bool)

(assert (=> (and b!1434403 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190)))))) t!127293) tb!75921))

(declare-fun b!1435366 () Bool)

(declare-fun e!916205 () Bool)

(declare-fun tp!406461 () Bool)

(assert (=> b!1435366 (= e!916205 (and (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190))))) (value!84403 (h!20331 (t!127239 lt!489190)))))) tp!406461))))

(declare-fun result!92242 () Bool)

(assert (=> tb!75921 (= result!92242 (and (inv!19841 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190))))) (value!84403 (h!20331 (t!127239 lt!489190))))) e!916205))))

(assert (= tb!75921 b!1435366))

(declare-fun m!1640265 () Bool)

(assert (=> b!1435366 m!1640265))

(declare-fun m!1640267 () Bool)

(assert (=> tb!75921 m!1640267))

(assert (=> d!413365 t!127293))

(declare-fun b_and!96503 () Bool)

(assert (= b_and!96495 (and (=> t!127293 result!92242) b_and!96503)))

(declare-fun t!127295 () Bool)

(declare-fun tb!75923 () Bool)

(assert (=> (and b!1434411 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190)))))) t!127295) tb!75923))

(declare-fun result!92244 () Bool)

(assert (= result!92244 result!92242))

(assert (=> d!413365 t!127295))

(declare-fun b_and!96505 () Bool)

(assert (= b_and!96497 (and (=> t!127295 result!92244) b_and!96505)))

(declare-fun m!1640269 () Bool)

(assert (=> d!413365 m!1640269))

(declare-fun m!1640271 () Bool)

(assert (=> d!413365 m!1640271))

(assert (=> b!1434365 d!413365))

(declare-fun d!413367 () Bool)

(assert (=> d!413367 (= (list!5932 (_1!7946 lt!489488)) (list!5936 (c!235662 (_1!7946 lt!489488))))))

(declare-fun bs!341080 () Bool)

(assert (= bs!341080 d!413367))

(declare-fun m!1640283 () Bool)

(assert (=> bs!341080 m!1640283))

(assert (=> b!1434365 d!413367))

(declare-fun d!413369 () Bool)

(assert (=> d!413369 (= (head!2908 (originalCharacters!3485 (h!20331 (t!127239 lt!489190)))) (h!20329 (originalCharacters!3485 (h!20331 (t!127239 lt!489190)))))))

(assert (=> b!1434365 d!413369))

(declare-fun d!413373 () Bool)

(declare-fun e!916206 () Bool)

(assert (=> d!413373 e!916206))

(declare-fun res!650005 () Bool)

(assert (=> d!413373 (=> (not res!650005) (not e!916206))))

(assert (=> d!413373 (= res!650005 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489190)))))) (t!127239 lt!489190)))))

(declare-fun lt!490537 () Unit!22769)

(declare-fun e!916207 () Unit!22769)

(assert (=> d!413373 (= lt!490537 e!916207)))

(declare-fun c!235954 () Bool)

(assert (=> d!413373 (= c!235954 (or ((_ is Nil!14930) (t!127239 lt!489190)) ((_ is Nil!14930) (t!127239 (t!127239 lt!489190)))))))

(assert (=> d!413373 (not (isEmpty!9275 (rules!11404 thiss!10022)))))

(assert (=> d!413373 (= (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) (t!127239 lt!489190)) lt!490537)))

(declare-fun b!1435367 () Bool)

(declare-fun Unit!22976 () Unit!22769)

(assert (=> b!1435367 (= e!916207 Unit!22976)))

(declare-fun b!1435368 () Bool)

(declare-fun Unit!22977 () Unit!22769)

(assert (=> b!1435368 (= e!916207 Unit!22977)))

(declare-fun lt!490534 () BalanceConc!10084)

(assert (=> b!1435368 (= lt!490534 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489190))))))

(declare-fun lt!490548 () BalanceConc!10084)

(assert (=> b!1435368 (= lt!490548 (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 (t!127239 lt!489190)))))))

(declare-fun lt!490554 () tuple2!14120)

(assert (=> b!1435368 (= lt!490554 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) lt!490548))))

(declare-fun lt!490536 () List!14994)

(assert (=> b!1435368 (= lt!490536 (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190)))))))

(declare-fun lt!490543 () List!14994)

(assert (=> b!1435368 (= lt!490543 (list!5931 lt!490548))))

(declare-fun lt!490546 () Unit!22769)

(assert (=> b!1435368 (= lt!490546 (lemmaConcatTwoListThenFirstIsPrefix!758 lt!490536 lt!490543))))

(assert (=> b!1435368 (isPrefix!1193 lt!490536 (++!4001 lt!490536 lt!490543))))

(declare-fun lt!490535 () Unit!22769)

(assert (=> b!1435368 (= lt!490535 lt!490546)))

(declare-fun lt!490553 () Unit!22769)

(assert (=> b!1435368 (= lt!490553 (theoremInvertabilityWhenTokenListSeparable!69 Lexer!2283 (rules!11404 thiss!10022) (t!127239 (t!127239 lt!489190))))))

(declare-fun lt!490539 () Unit!22769)

(assert (=> b!1435368 (= lt!490539 (seqFromListBHdTlConstructive!87 (h!20331 (t!127239 (t!127239 lt!489190))) (t!127239 (t!127239 (t!127239 lt!489190))) (_1!7946 lt!490554)))))

(assert (=> b!1435368 (= (list!5932 (_1!7946 lt!490554)) (list!5932 (prepend!407 (seqFromList!1696 (t!127239 (t!127239 (t!127239 lt!489190)))) (h!20331 (t!127239 (t!127239 lt!489190))))))))

(declare-fun lt!490532 () Unit!22769)

(assert (=> b!1435368 (= lt!490532 lt!490539)))

(declare-fun lt!490555 () Option!2849)

(assert (=> b!1435368 (= lt!490555 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 lt!490534)))))

(assert (=> b!1435368 (= (print!1064 Lexer!2283 (singletonSeq!1226 (h!20331 (t!127239 lt!489190)))) (printTailRec!679 Lexer!2283 (singletonSeq!1226 (h!20331 (t!127239 lt!489190))) 0 (BalanceConc!10085 Empty!5072)))))

(declare-fun lt!490540 () Unit!22769)

(declare-fun Unit!22978 () Unit!22769)

(assert (=> b!1435368 (= lt!490540 Unit!22978)))

(declare-fun lt!490547 () Unit!22769)

(assert (=> b!1435368 (= lt!490547 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!231 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190)))) (list!5931 lt!490548)))))

(assert (=> b!1435368 (= (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190)))) (originalCharacters!3485 (h!20331 (t!127239 lt!489190))))))

(declare-fun lt!490542 () Unit!22769)

(declare-fun Unit!22979 () Unit!22769)

(assert (=> b!1435368 (= lt!490542 Unit!22979)))

(assert (=> b!1435368 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (t!127239 lt!489190)))) 0))) (Cons!14928 (head!2908 (originalCharacters!3485 (h!20331 (t!127239 (t!127239 lt!489190))))) Nil!14928))))

(declare-fun lt!490549 () Unit!22769)

(declare-fun Unit!22980 () Unit!22769)

(assert (=> b!1435368 (= lt!490549 Unit!22980)))

(assert (=> b!1435368 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (t!127239 lt!489190)))) 0))) (Cons!14928 (head!2908 (list!5931 lt!490548)) Nil!14928))))

(declare-fun lt!490556 () Unit!22769)

(declare-fun Unit!22981 () Unit!22769)

(assert (=> b!1435368 (= lt!490556 Unit!22981)))

(assert (=> b!1435368 (= (list!5931 (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 (t!127239 lt!489190)))) 0))) (Cons!14928 (head!2909 lt!490548) Nil!14928))))

(declare-fun lt!490544 () Unit!22769)

(declare-fun Unit!22982 () Unit!22769)

(assert (=> b!1435368 (= lt!490544 Unit!22982)))

(assert (=> b!1435368 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (originalCharacters!3485 (h!20331 (t!127239 lt!489190)))))))

(declare-fun lt!490533 () Unit!22769)

(declare-fun Unit!22983 () Unit!22769)

(assert (=> b!1435368 (= lt!490533 Unit!22983)))

(assert (=> b!1435368 (isDefined!2306 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190))))))))

(declare-fun lt!490531 () Unit!22769)

(declare-fun Unit!22984 () Unit!22769)

(assert (=> b!1435368 (= lt!490531 Unit!22984)))

(declare-fun lt!490538 () Unit!22769)

(declare-fun Unit!22985 () Unit!22769)

(assert (=> b!1435368 (= lt!490538 Unit!22985)))

(assert (=> b!1435368 (= (_1!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190))))))) (h!20331 (t!127239 lt!489190)))))

(declare-fun lt!490545 () Unit!22769)

(declare-fun Unit!22986 () Unit!22769)

(assert (=> b!1435368 (= lt!490545 Unit!22986)))

(assert (=> b!1435368 (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190))))))))))

(declare-fun lt!490551 () Unit!22769)

(declare-fun Unit!22987 () Unit!22769)

(assert (=> b!1435368 (= lt!490551 Unit!22987)))

(assert (=> b!1435368 (matchR!1819 (regex!2623 (rule!4386 (h!20331 (t!127239 lt!489190)))) (list!5931 (charsOf!1515 (h!20331 (t!127239 lt!489190)))))))

(declare-fun lt!490541 () Unit!22769)

(declare-fun Unit!22988 () Unit!22769)

(assert (=> b!1435368 (= lt!490541 Unit!22988)))

(assert (=> b!1435368 (= (rule!4386 (h!20331 (t!127239 lt!489190))) (rule!4386 (h!20331 (t!127239 lt!489190))))))

(declare-fun lt!490550 () Unit!22769)

(declare-fun Unit!22989 () Unit!22769)

(assert (=> b!1435368 (= lt!490550 Unit!22989)))

(declare-fun lt!490552 () Unit!22769)

(assert (=> b!1435368 (= lt!490552 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!29 Lexer!2283 (rules!11404 thiss!10022) (h!20331 (t!127239 lt!489190)) (rule!4386 (h!20331 (t!127239 lt!489190))) (list!5931 lt!490548)))))

(declare-fun b!1435369 () Bool)

(assert (=> b!1435369 (= e!916206 (isEmpty!9279 (_2!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489190)))))))))

(assert (= (and d!413373 c!235954) b!1435367))

(assert (= (and d!413373 (not c!235954)) b!1435368))

(assert (= (and d!413373 res!650005) b!1435369))

(declare-fun m!1640317 () Bool)

(assert (=> d!413373 m!1640317))

(assert (=> d!413373 m!1637143))

(assert (=> d!413373 m!1637683))

(assert (=> d!413373 m!1637685))

(assert (=> d!413373 m!1637683))

(assert (=> d!413373 m!1637685))

(declare-fun m!1640319 () Bool)

(assert (=> d!413373 m!1640319))

(declare-fun m!1640321 () Bool)

(assert (=> b!1435368 m!1640321))

(assert (=> b!1435368 m!1637723))

(declare-fun m!1640323 () Bool)

(assert (=> b!1435368 m!1640323))

(declare-fun m!1640325 () Bool)

(assert (=> b!1435368 m!1640325))

(declare-fun m!1640329 () Bool)

(assert (=> b!1435368 m!1640329))

(declare-fun m!1640333 () Bool)

(assert (=> b!1435368 m!1640333))

(assert (=> b!1435368 m!1640325))

(declare-fun m!1640337 () Bool)

(assert (=> b!1435368 m!1640337))

(declare-fun m!1640341 () Bool)

(assert (=> b!1435368 m!1640341))

(declare-fun m!1640343 () Bool)

(assert (=> b!1435368 m!1640343))

(declare-fun m!1640345 () Bool)

(assert (=> b!1435368 m!1640345))

(declare-fun m!1640347 () Bool)

(assert (=> b!1435368 m!1640347))

(declare-fun m!1640349 () Bool)

(assert (=> b!1435368 m!1640349))

(declare-fun m!1640351 () Bool)

(assert (=> b!1435368 m!1640351))

(declare-fun m!1640353 () Bool)

(assert (=> b!1435368 m!1640353))

(declare-fun m!1640355 () Bool)

(assert (=> b!1435368 m!1640355))

(declare-fun m!1640357 () Bool)

(assert (=> b!1435368 m!1640357))

(assert (=> b!1435368 m!1639651))

(declare-fun m!1640359 () Bool)

(assert (=> b!1435368 m!1640359))

(declare-fun m!1640361 () Bool)

(assert (=> b!1435368 m!1640361))

(assert (=> b!1435368 m!1640359))

(declare-fun m!1640363 () Bool)

(assert (=> b!1435368 m!1640363))

(assert (=> b!1435368 m!1640341))

(assert (=> b!1435368 m!1640333))

(declare-fun m!1640365 () Bool)

(assert (=> b!1435368 m!1640365))

(declare-fun m!1640367 () Bool)

(assert (=> b!1435368 m!1640367))

(declare-fun m!1640369 () Bool)

(assert (=> b!1435368 m!1640369))

(declare-fun m!1640371 () Bool)

(assert (=> b!1435368 m!1640371))

(declare-fun m!1640373 () Bool)

(assert (=> b!1435368 m!1640373))

(declare-fun m!1640375 () Bool)

(assert (=> b!1435368 m!1640375))

(assert (=> b!1435368 m!1640359))

(assert (=> b!1435368 m!1640359))

(declare-fun m!1640377 () Bool)

(assert (=> b!1435368 m!1640377))

(assert (=> b!1435368 m!1637683))

(assert (=> b!1435368 m!1637685))

(assert (=> b!1435368 m!1639651))

(declare-fun m!1640381 () Bool)

(assert (=> b!1435368 m!1640381))

(assert (=> b!1435368 m!1640355))

(declare-fun m!1640383 () Bool)

(assert (=> b!1435368 m!1640383))

(assert (=> b!1435368 m!1640347))

(declare-fun m!1640385 () Bool)

(assert (=> b!1435368 m!1640385))

(declare-fun m!1640387 () Bool)

(assert (=> b!1435368 m!1640387))

(assert (=> b!1435368 m!1637683))

(declare-fun m!1640389 () Bool)

(assert (=> b!1435368 m!1640389))

(assert (=> b!1435368 m!1640385))

(assert (=> b!1435368 m!1640371))

(assert (=> b!1435368 m!1637737))

(declare-fun m!1640391 () Bool)

(assert (=> b!1435368 m!1640391))

(assert (=> b!1435368 m!1639651))

(assert (=> b!1435368 m!1640325))

(assert (=> b!1435368 m!1637723))

(assert (=> b!1435368 m!1640373))

(declare-fun m!1640393 () Bool)

(assert (=> b!1435368 m!1640393))

(assert (=> b!1435368 m!1640355))

(assert (=> b!1435368 m!1637737))

(assert (=> b!1435368 m!1639651))

(declare-fun m!1640395 () Bool)

(assert (=> b!1435368 m!1640395))

(assert (=> b!1435368 m!1640369))

(assert (=> b!1435368 m!1640351))

(assert (=> b!1435369 m!1637683))

(assert (=> b!1435369 m!1637683))

(assert (=> b!1435369 m!1637685))

(assert (=> b!1435369 m!1637685))

(assert (=> b!1435369 m!1640319))

(declare-fun m!1640397 () Bool)

(assert (=> b!1435369 m!1640397))

(assert (=> b!1434365 d!413373))

(assert (=> b!1434365 d!413259))

(declare-fun d!413389 () Bool)

(declare-fun e!916215 () Bool)

(assert (=> d!413389 e!916215))

(declare-fun res!650010 () Bool)

(assert (=> d!413389 (=> (not res!650010) (not e!916215))))

(declare-fun lt!490585 () BalanceConc!10084)

(assert (=> d!413389 (= res!650010 (= (list!5931 lt!490585) (Cons!14928 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0) Nil!14928)))))

(assert (=> d!413389 (= lt!490585 (singleton!510 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0)))))

(assert (=> d!413389 (= (singletonSeq!1227 (apply!3820 (charsOf!1515 (h!20331 (t!127239 lt!489190))) 0)) lt!490585)))

(declare-fun b!1435381 () Bool)

(assert (=> b!1435381 (= e!916215 (isBalanced!1504 (c!235660 lt!490585)))))

(assert (= (and d!413389 res!650010) b!1435381))

(declare-fun m!1640399 () Bool)

(assert (=> d!413389 m!1640399))

(assert (=> d!413389 m!1637725))

(declare-fun m!1640401 () Bool)

(assert (=> d!413389 m!1640401))

(declare-fun m!1640403 () Bool)

(assert (=> b!1435381 m!1640403))

(assert (=> b!1434365 d!413389))

(declare-fun b!1435382 () Bool)

(declare-fun e!916216 () Bool)

(declare-fun e!916218 () Bool)

(assert (=> b!1435382 (= e!916216 e!916218)))

(declare-fun res!650012 () Bool)

(assert (=> b!1435382 (=> (not res!650012) (not e!916218))))

(assert (=> b!1435382 (= res!650012 (not ((_ is Nil!14928) (++!4001 lt!489470 lt!489477))))))

(declare-fun b!1435383 () Bool)

(declare-fun res!650011 () Bool)

(assert (=> b!1435383 (=> (not res!650011) (not e!916218))))

(assert (=> b!1435383 (= res!650011 (= (head!2908 lt!489470) (head!2908 (++!4001 lt!489470 lt!489477))))))

(declare-fun d!413391 () Bool)

(declare-fun e!916217 () Bool)

(assert (=> d!413391 e!916217))

(declare-fun res!650013 () Bool)

(assert (=> d!413391 (=> res!650013 e!916217)))

(declare-fun lt!490586 () Bool)

(assert (=> d!413391 (= res!650013 (not lt!490586))))

(assert (=> d!413391 (= lt!490586 e!916216)))

(declare-fun res!650014 () Bool)

(assert (=> d!413391 (=> res!650014 e!916216)))

(assert (=> d!413391 (= res!650014 ((_ is Nil!14928) lt!489470))))

(assert (=> d!413391 (= (isPrefix!1193 lt!489470 (++!4001 lt!489470 lt!489477)) lt!490586)))

(declare-fun b!1435384 () Bool)

(assert (=> b!1435384 (= e!916218 (isPrefix!1193 (tail!2154 lt!489470) (tail!2154 (++!4001 lt!489470 lt!489477))))))

(declare-fun b!1435385 () Bool)

(assert (=> b!1435385 (= e!916217 (>= (size!12239 (++!4001 lt!489470 lt!489477)) (size!12239 lt!489470)))))

(assert (= (and d!413391 (not res!650014)) b!1435382))

(assert (= (and b!1435382 res!650012) b!1435383))

(assert (= (and b!1435383 res!650011) b!1435384))

(assert (= (and d!413391 (not res!650013)) b!1435385))

(declare-fun m!1640405 () Bool)

(assert (=> b!1435383 m!1640405))

(assert (=> b!1435383 m!1637701))

(declare-fun m!1640407 () Bool)

(assert (=> b!1435383 m!1640407))

(declare-fun m!1640409 () Bool)

(assert (=> b!1435384 m!1640409))

(assert (=> b!1435384 m!1637701))

(declare-fun m!1640411 () Bool)

(assert (=> b!1435384 m!1640411))

(assert (=> b!1435384 m!1640409))

(assert (=> b!1435384 m!1640411))

(declare-fun m!1640413 () Bool)

(assert (=> b!1435384 m!1640413))

(assert (=> b!1435385 m!1637701))

(declare-fun m!1640415 () Bool)

(assert (=> b!1435385 m!1640415))

(assert (=> b!1435385 m!1640143))

(assert (=> b!1434365 d!413391))

(declare-fun d!413393 () Bool)

(assert (=> d!413393 (= (isEmpty!9278 (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))))))) ((_ is Nil!14928) (_2!7947 (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))))))))))

(assert (=> b!1434365 d!413393))

(assert (=> b!1434365 d!412921))

(declare-fun d!413395 () Bool)

(assert (=> d!413395 (= (list!5931 lt!489482) (list!5935 (c!235660 lt!489482)))))

(declare-fun bs!341084 () Bool)

(assert (= bs!341084 d!413395))

(declare-fun m!1640417 () Bool)

(assert (=> bs!341084 m!1640417))

(assert (=> b!1434365 d!413395))

(declare-fun d!413397 () Bool)

(assert (=> d!413397 (= (seqFromList!1696 (t!127239 (t!127239 lt!489190))) (fromListB!727 (t!127239 (t!127239 lt!489190))))))

(declare-fun bs!341085 () Bool)

(assert (= bs!341085 d!413397))

(declare-fun m!1640419 () Bool)

(assert (=> bs!341085 m!1640419))

(assert (=> b!1434365 d!413397))

(declare-fun d!413399 () Bool)

(assert (=> d!413399 (isPrefix!1193 lt!489470 (++!4001 lt!489470 lt!489477))))

(declare-fun lt!490587 () Unit!22769)

(assert (=> d!413399 (= lt!490587 (choose!8847 lt!489470 lt!489477))))

(assert (=> d!413399 (= (lemmaConcatTwoListThenFirstIsPrefix!758 lt!489470 lt!489477) lt!490587)))

(declare-fun bs!341086 () Bool)

(assert (= bs!341086 d!413399))

(assert (=> bs!341086 m!1637701))

(assert (=> bs!341086 m!1637701))

(assert (=> bs!341086 m!1637703))

(declare-fun m!1640421 () Bool)

(assert (=> bs!341086 m!1640421))

(assert (=> b!1434365 d!413399))

(declare-fun d!413401 () Bool)

(declare-fun lt!490588 () BalanceConc!10084)

(assert (=> d!413401 (= (list!5931 lt!490588) (printList!707 Lexer!2283 (list!5932 (seqFromList!1696 (t!127239 lt!489190)))))))

(assert (=> d!413401 (= lt!490588 (printTailRec!679 Lexer!2283 (seqFromList!1696 (t!127239 lt!489190)) 0 (BalanceConc!10085 Empty!5072)))))

(assert (=> d!413401 (= (print!1064 Lexer!2283 (seqFromList!1696 (t!127239 lt!489190))) lt!490588)))

(declare-fun bs!341087 () Bool)

(assert (= bs!341087 d!413401))

(declare-fun m!1640427 () Bool)

(assert (=> bs!341087 m!1640427))

(assert (=> bs!341087 m!1637683))

(declare-fun m!1640429 () Bool)

(assert (=> bs!341087 m!1640429))

(assert (=> bs!341087 m!1640429))

(declare-fun m!1640431 () Bool)

(assert (=> bs!341087 m!1640431))

(assert (=> bs!341087 m!1637683))

(declare-fun m!1640435 () Bool)

(assert (=> bs!341087 m!1640435))

(assert (=> b!1434365 d!413401))

(declare-fun d!413403 () Bool)

(assert (=> d!413403 (= (list!5931 lt!489468) (list!5935 (c!235660 lt!489468)))))

(declare-fun bs!341088 () Bool)

(assert (= bs!341088 d!413403))

(declare-fun m!1640439 () Bool)

(assert (=> bs!341088 m!1640439))

(assert (=> b!1434365 d!413403))

(assert (=> b!1434365 d!413255))

(declare-fun d!413405 () Bool)

(assert (=> d!413405 (= (get!4569 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))))) (v!22358 (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190))))))))

(assert (=> b!1434365 d!413405))

(declare-fun b!1435386 () Bool)

(declare-fun e!916221 () Option!2849)

(declare-fun lt!490590 () Option!2849)

(declare-fun lt!490593 () Option!2849)

(assert (=> b!1435386 (= e!916221 (ite (and ((_ is None!2848) lt!490590) ((_ is None!2848) lt!490593)) None!2848 (ite ((_ is None!2848) lt!490593) lt!490590 (ite ((_ is None!2848) lt!490590) lt!490593 (ite (>= (size!12235 (_1!7947 (v!22358 lt!490590))) (size!12235 (_1!7947 (v!22358 lt!490593)))) lt!490590 lt!490593)))))))

(declare-fun call!97318 () Option!2849)

(assert (=> b!1435386 (= lt!490590 call!97318)))

(assert (=> b!1435386 (= lt!490593 (maxPrefix!1183 Lexer!2283 (t!127240 (rules!11404 thiss!10022)) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun b!1435387 () Bool)

(declare-fun e!916219 () Bool)

(declare-fun e!916220 () Bool)

(assert (=> b!1435387 (= e!916219 e!916220)))

(declare-fun res!650021 () Bool)

(assert (=> b!1435387 (=> (not res!650021) (not e!916220))))

(declare-fun lt!490592 () Option!2849)

(assert (=> b!1435387 (= res!650021 (isDefined!2306 lt!490592))))

(declare-fun b!1435388 () Bool)

(assert (=> b!1435388 (= e!916220 (contains!2858 (rules!11404 thiss!10022) (rule!4386 (_1!7947 (get!4569 lt!490592)))))))

(declare-fun d!413407 () Bool)

(assert (=> d!413407 e!916219))

(declare-fun res!650019 () Bool)

(assert (=> d!413407 (=> res!650019 e!916219)))

(assert (=> d!413407 (= res!650019 (isEmpty!9282 lt!490592))))

(assert (=> d!413407 (= lt!490592 e!916221)))

(declare-fun c!235958 () Bool)

(assert (=> d!413407 (= c!235958 (and ((_ is Cons!14931) (rules!11404 thiss!10022)) ((_ is Nil!14931) (t!127240 (rules!11404 thiss!10022)))))))

(declare-fun lt!490589 () Unit!22769)

(declare-fun lt!490591 () Unit!22769)

(assert (=> d!413407 (= lt!490589 lt!490591)))

(assert (=> d!413407 (isPrefix!1193 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 (charsOf!1515 (h!20331 lt!489190))))))

(assert (=> d!413407 (= lt!490591 (lemmaIsPrefixRefl!826 (list!5931 (charsOf!1515 (h!20331 lt!489190))) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(assert (=> d!413407 (rulesValidInductive!813 Lexer!2283 (rules!11404 thiss!10022))))

(assert (=> d!413407 (= (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (list!5931 (charsOf!1515 (h!20331 lt!489190)))) lt!490592)))

(declare-fun b!1435389 () Bool)

(declare-fun res!650016 () Bool)

(assert (=> b!1435389 (=> (not res!650016) (not e!916220))))

(assert (=> b!1435389 (= res!650016 (< (size!12239 (_2!7947 (get!4569 lt!490592))) (size!12239 (list!5931 (charsOf!1515 (h!20331 lt!489190))))))))

(declare-fun b!1435390 () Bool)

(assert (=> b!1435390 (= e!916221 call!97318)))

(declare-fun bm!97313 () Bool)

(assert (=> bm!97313 (= call!97318 (maxPrefixOneRule!652 Lexer!2283 (h!20332 (rules!11404 thiss!10022)) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(declare-fun b!1435391 () Bool)

(declare-fun res!650017 () Bool)

(assert (=> b!1435391 (=> (not res!650017) (not e!916220))))

(assert (=> b!1435391 (= res!650017 (matchR!1819 (regex!2623 (rule!4386 (_1!7947 (get!4569 lt!490592)))) (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490592))))))))

(declare-fun b!1435392 () Bool)

(declare-fun res!650015 () Bool)

(assert (=> b!1435392 (=> (not res!650015) (not e!916220))))

(assert (=> b!1435392 (= res!650015 (= (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490592)))) (originalCharacters!3485 (_1!7947 (get!4569 lt!490592)))))))

(declare-fun b!1435393 () Bool)

(declare-fun res!650020 () Bool)

(assert (=> b!1435393 (=> (not res!650020) (not e!916220))))

(assert (=> b!1435393 (= res!650020 (= (value!84403 (_1!7947 (get!4569 lt!490592))) (apply!3823 (transformation!2623 (rule!4386 (_1!7947 (get!4569 lt!490592)))) (seqFromList!1697 (originalCharacters!3485 (_1!7947 (get!4569 lt!490592)))))))))

(declare-fun b!1435394 () Bool)

(declare-fun res!650018 () Bool)

(assert (=> b!1435394 (=> (not res!650018) (not e!916220))))

(assert (=> b!1435394 (= res!650018 (= (++!4001 (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490592)))) (_2!7947 (get!4569 lt!490592))) (list!5931 (charsOf!1515 (h!20331 lt!489190)))))))

(assert (= (and d!413407 c!235958) b!1435390))

(assert (= (and d!413407 (not c!235958)) b!1435386))

(assert (= (or b!1435390 b!1435386) bm!97313))

(assert (= (and d!413407 (not res!650019)) b!1435387))

(assert (= (and b!1435387 res!650021) b!1435392))

(assert (= (and b!1435392 res!650015) b!1435389))

(assert (= (and b!1435389 res!650016) b!1435394))

(assert (= (and b!1435394 res!650018) b!1435393))

(assert (= (and b!1435393 res!650020) b!1435391))

(assert (= (and b!1435391 res!650017) b!1435388))

(assert (=> bm!97313 m!1637435))

(declare-fun m!1640509 () Bool)

(assert (=> bm!97313 m!1640509))

(declare-fun m!1640511 () Bool)

(assert (=> b!1435392 m!1640511))

(declare-fun m!1640513 () Bool)

(assert (=> b!1435392 m!1640513))

(assert (=> b!1435392 m!1640513))

(declare-fun m!1640519 () Bool)

(assert (=> b!1435392 m!1640519))

(assert (=> b!1435388 m!1640511))

(declare-fun m!1640521 () Bool)

(assert (=> b!1435388 m!1640521))

(assert (=> b!1435386 m!1637435))

(declare-fun m!1640523 () Bool)

(assert (=> b!1435386 m!1640523))

(assert (=> b!1435394 m!1640511))

(assert (=> b!1435394 m!1640513))

(assert (=> b!1435394 m!1640513))

(assert (=> b!1435394 m!1640519))

(assert (=> b!1435394 m!1640519))

(declare-fun m!1640527 () Bool)

(assert (=> b!1435394 m!1640527))

(assert (=> b!1435391 m!1640511))

(assert (=> b!1435391 m!1640513))

(assert (=> b!1435391 m!1640513))

(assert (=> b!1435391 m!1640519))

(assert (=> b!1435391 m!1640519))

(declare-fun m!1640531 () Bool)

(assert (=> b!1435391 m!1640531))

(assert (=> b!1435389 m!1640511))

(declare-fun m!1640533 () Bool)

(assert (=> b!1435389 m!1640533))

(assert (=> b!1435389 m!1637435))

(assert (=> b!1435389 m!1639623))

(assert (=> b!1435393 m!1640511))

(declare-fun m!1640535 () Bool)

(assert (=> b!1435393 m!1640535))

(assert (=> b!1435393 m!1640535))

(declare-fun m!1640537 () Bool)

(assert (=> b!1435393 m!1640537))

(declare-fun m!1640539 () Bool)

(assert (=> d!413407 m!1640539))

(assert (=> d!413407 m!1637435))

(assert (=> d!413407 m!1637435))

(declare-fun m!1640541 () Bool)

(assert (=> d!413407 m!1640541))

(assert (=> d!413407 m!1637435))

(assert (=> d!413407 m!1637435))

(declare-fun m!1640543 () Bool)

(assert (=> d!413407 m!1640543))

(assert (=> d!413407 m!1639931))

(declare-fun m!1640547 () Bool)

(assert (=> b!1435387 m!1640547))

(assert (=> b!1434365 d!413407))

(declare-fun b!1435399 () Bool)

(declare-fun e!916226 () Option!2849)

(declare-fun lt!490596 () Option!2849)

(declare-fun lt!490599 () Option!2849)

(assert (=> b!1435399 (= e!916226 (ite (and ((_ is None!2848) lt!490596) ((_ is None!2848) lt!490599)) None!2848 (ite ((_ is None!2848) lt!490599) lt!490596 (ite ((_ is None!2848) lt!490596) lt!490599 (ite (>= (size!12235 (_1!7947 (v!22358 lt!490596))) (size!12235 (_1!7947 (v!22358 lt!490599)))) lt!490596 lt!490599)))))))

(declare-fun call!97319 () Option!2849)

(assert (=> b!1435399 (= lt!490596 call!97319)))

(assert (=> b!1435399 (= lt!490599 (maxPrefix!1183 Lexer!2283 (t!127240 (rules!11404 thiss!10022)) (originalCharacters!3485 (h!20331 lt!489190))))))

(declare-fun b!1435400 () Bool)

(declare-fun e!916224 () Bool)

(declare-fun e!916225 () Bool)

(assert (=> b!1435400 (= e!916224 e!916225)))

(declare-fun res!650030 () Bool)

(assert (=> b!1435400 (=> (not res!650030) (not e!916225))))

(declare-fun lt!490598 () Option!2849)

(assert (=> b!1435400 (= res!650030 (isDefined!2306 lt!490598))))

(declare-fun b!1435401 () Bool)

(assert (=> b!1435401 (= e!916225 (contains!2858 (rules!11404 thiss!10022) (rule!4386 (_1!7947 (get!4569 lt!490598)))))))

(declare-fun d!413413 () Bool)

(assert (=> d!413413 e!916224))

(declare-fun res!650028 () Bool)

(assert (=> d!413413 (=> res!650028 e!916224)))

(assert (=> d!413413 (= res!650028 (isEmpty!9282 lt!490598))))

(assert (=> d!413413 (= lt!490598 e!916226)))

(declare-fun c!235960 () Bool)

(assert (=> d!413413 (= c!235960 (and ((_ is Cons!14931) (rules!11404 thiss!10022)) ((_ is Nil!14931) (t!127240 (rules!11404 thiss!10022)))))))

(declare-fun lt!490595 () Unit!22769)

(declare-fun lt!490597 () Unit!22769)

(assert (=> d!413413 (= lt!490595 lt!490597)))

(assert (=> d!413413 (isPrefix!1193 (originalCharacters!3485 (h!20331 lt!489190)) (originalCharacters!3485 (h!20331 lt!489190)))))

(assert (=> d!413413 (= lt!490597 (lemmaIsPrefixRefl!826 (originalCharacters!3485 (h!20331 lt!489190)) (originalCharacters!3485 (h!20331 lt!489190))))))

(assert (=> d!413413 (rulesValidInductive!813 Lexer!2283 (rules!11404 thiss!10022))))

(assert (=> d!413413 (= (maxPrefix!1183 Lexer!2283 (rules!11404 thiss!10022) (originalCharacters!3485 (h!20331 lt!489190))) lt!490598)))

(declare-fun b!1435402 () Bool)

(declare-fun res!650025 () Bool)

(assert (=> b!1435402 (=> (not res!650025) (not e!916225))))

(assert (=> b!1435402 (= res!650025 (< (size!12239 (_2!7947 (get!4569 lt!490598))) (size!12239 (originalCharacters!3485 (h!20331 lt!489190)))))))

(declare-fun b!1435403 () Bool)

(assert (=> b!1435403 (= e!916226 call!97319)))

(declare-fun bm!97314 () Bool)

(assert (=> bm!97314 (= call!97319 (maxPrefixOneRule!652 Lexer!2283 (h!20332 (rules!11404 thiss!10022)) (originalCharacters!3485 (h!20331 lt!489190))))))

(declare-fun b!1435404 () Bool)

(declare-fun res!650026 () Bool)

(assert (=> b!1435404 (=> (not res!650026) (not e!916225))))

(assert (=> b!1435404 (= res!650026 (matchR!1819 (regex!2623 (rule!4386 (_1!7947 (get!4569 lt!490598)))) (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490598))))))))

(declare-fun b!1435405 () Bool)

(declare-fun res!650024 () Bool)

(assert (=> b!1435405 (=> (not res!650024) (not e!916225))))

(assert (=> b!1435405 (= res!650024 (= (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490598)))) (originalCharacters!3485 (_1!7947 (get!4569 lt!490598)))))))

(declare-fun b!1435406 () Bool)

(declare-fun res!650029 () Bool)

(assert (=> b!1435406 (=> (not res!650029) (not e!916225))))

(assert (=> b!1435406 (= res!650029 (= (value!84403 (_1!7947 (get!4569 lt!490598))) (apply!3823 (transformation!2623 (rule!4386 (_1!7947 (get!4569 lt!490598)))) (seqFromList!1697 (originalCharacters!3485 (_1!7947 (get!4569 lt!490598)))))))))

(declare-fun b!1435407 () Bool)

(declare-fun res!650027 () Bool)

(assert (=> b!1435407 (=> (not res!650027) (not e!916225))))

(assert (=> b!1435407 (= res!650027 (= (++!4001 (list!5931 (charsOf!1515 (_1!7947 (get!4569 lt!490598)))) (_2!7947 (get!4569 lt!490598))) (originalCharacters!3485 (h!20331 lt!489190))))))

(assert (= (and d!413413 c!235960) b!1435403))

(assert (= (and d!413413 (not c!235960)) b!1435399))

(assert (= (or b!1435403 b!1435399) bm!97314))

(assert (= (and d!413413 (not res!650028)) b!1435400))

(assert (= (and b!1435400 res!650030) b!1435405))

(assert (= (and b!1435405 res!650024) b!1435402))

(assert (= (and b!1435402 res!650025) b!1435407))

(assert (= (and b!1435407 res!650027) b!1435406))

(assert (= (and b!1435406 res!650029) b!1435404))

(assert (= (and b!1435404 res!650026) b!1435401))

(declare-fun m!1640575 () Bool)

(assert (=> bm!97314 m!1640575))

(declare-fun m!1640577 () Bool)

(assert (=> b!1435405 m!1640577))

(declare-fun m!1640579 () Bool)

(assert (=> b!1435405 m!1640579))

(assert (=> b!1435405 m!1640579))

(declare-fun m!1640583 () Bool)

(assert (=> b!1435405 m!1640583))

(assert (=> b!1435401 m!1640577))

(declare-fun m!1640585 () Bool)

(assert (=> b!1435401 m!1640585))

(declare-fun m!1640587 () Bool)

(assert (=> b!1435399 m!1640587))

(assert (=> b!1435407 m!1640577))

(assert (=> b!1435407 m!1640579))

(assert (=> b!1435407 m!1640579))

(assert (=> b!1435407 m!1640583))

(assert (=> b!1435407 m!1640583))

(declare-fun m!1640595 () Bool)

(assert (=> b!1435407 m!1640595))

(assert (=> b!1435404 m!1640577))

(assert (=> b!1435404 m!1640579))

(assert (=> b!1435404 m!1640579))

(assert (=> b!1435404 m!1640583))

(assert (=> b!1435404 m!1640583))

(declare-fun m!1640597 () Bool)

(assert (=> b!1435404 m!1640597))

(assert (=> b!1435402 m!1640577))

(declare-fun m!1640599 () Bool)

(assert (=> b!1435402 m!1640599))

(declare-fun m!1640601 () Bool)

(assert (=> b!1435402 m!1640601))

(assert (=> b!1435406 m!1640577))

(declare-fun m!1640603 () Bool)

(assert (=> b!1435406 m!1640603))

(assert (=> b!1435406 m!1640603))

(declare-fun m!1640605 () Bool)

(assert (=> b!1435406 m!1640605))

(declare-fun m!1640607 () Bool)

(assert (=> d!413413 m!1640607))

(declare-fun m!1640609 () Bool)

(assert (=> d!413413 m!1640609))

(declare-fun m!1640611 () Bool)

(assert (=> d!413413 m!1640611))

(assert (=> d!413413 m!1639931))

(declare-fun m!1640613 () Bool)

(assert (=> b!1435400 m!1640613))

(assert (=> b!1434365 d!413413))

(assert (=> b!1434365 d!412919))

(declare-fun d!413425 () Bool)

(declare-fun e!916234 () Bool)

(assert (=> d!413425 e!916234))

(declare-fun res!650035 () Bool)

(assert (=> d!413425 (=> (not res!650035) (not e!916234))))

(declare-fun lt!490618 () BalanceConc!10086)

(assert (=> d!413425 (= res!650035 (= (list!5932 lt!490618) (Cons!14930 (h!20331 lt!489190) Nil!14930)))))

(assert (=> d!413425 (= lt!490618 (singleton!507 (h!20331 lt!489190)))))

(assert (=> d!413425 (= (singletonSeq!1226 (h!20331 lt!489190)) lt!490618)))

(declare-fun b!1435422 () Bool)

(assert (=> b!1435422 (= e!916234 (isBalanced!1503 (c!235662 lt!490618)))))

(assert (= (and d!413425 res!650035) b!1435422))

(declare-fun m!1640615 () Bool)

(assert (=> d!413425 m!1640615))

(declare-fun m!1640617 () Bool)

(assert (=> d!413425 m!1640617))

(declare-fun m!1640619 () Bool)

(assert (=> b!1435422 m!1640619))

(assert (=> b!1434365 d!413425))

(declare-fun d!413427 () Bool)

(assert (=> d!413427 (= (list!5931 lt!489250) (list!5935 (c!235660 lt!489250)))))

(declare-fun bs!341091 () Bool)

(assert (= bs!341091 d!413427))

(declare-fun m!1640621 () Bool)

(assert (=> bs!341091 m!1640621))

(assert (=> d!412811 d!413427))

(assert (=> d!412803 d!413067))

(assert (=> d!412805 d!412879))

(declare-fun d!413429 () Bool)

(declare-fun c!235968 () Bool)

(assert (=> d!413429 (= c!235968 ((_ is Nil!14930) lt!489496))))

(declare-fun e!916237 () (InoxSet Token!4908))

(assert (=> d!413429 (= (content!2205 lt!489496) e!916237)))

(declare-fun b!1435427 () Bool)

(assert (=> b!1435427 (= e!916237 ((as const (Array Token!4908 Bool)) false))))

(declare-fun b!1435428 () Bool)

(assert (=> b!1435428 (= e!916237 ((_ map or) (store ((as const (Array Token!4908 Bool)) false) (h!20331 lt!489496) true) (content!2205 (t!127239 lt!489496))))))

(assert (= (and d!413429 c!235968) b!1435427))

(assert (= (and d!413429 (not c!235968)) b!1435428))

(declare-fun m!1640673 () Bool)

(assert (=> b!1435428 m!1640673))

(declare-fun m!1640675 () Bool)

(assert (=> b!1435428 m!1640675))

(assert (=> d!412875 d!413429))

(declare-fun d!413433 () Bool)

(declare-fun c!235969 () Bool)

(assert (=> d!413433 (= c!235969 ((_ is Nil!14930) lt!489190))))

(declare-fun e!916238 () (InoxSet Token!4908))

(assert (=> d!413433 (= (content!2205 lt!489190) e!916238)))

(declare-fun b!1435429 () Bool)

(assert (=> b!1435429 (= e!916238 ((as const (Array Token!4908 Bool)) false))))

(declare-fun b!1435430 () Bool)

(assert (=> b!1435430 (= e!916238 ((_ map or) (store ((as const (Array Token!4908 Bool)) false) (h!20331 lt!489190) true) (content!2205 (t!127239 lt!489190))))))

(assert (= (and d!413433 c!235969) b!1435429))

(assert (= (and d!413433 (not c!235969)) b!1435430))

(declare-fun m!1640679 () Bool)

(assert (=> b!1435430 m!1640679))

(assert (=> b!1435430 m!1638417))

(assert (=> d!412875 d!413433))

(declare-fun d!413437 () Bool)

(assert (=> d!413437 (= (content!2205 Nil!14930) ((as const (Array Token!4908 Bool)) false))))

(assert (=> d!412875 d!413437))

(assert (=> b!1434144 d!412821))

(declare-fun d!413443 () Bool)

(declare-fun c!235973 () Bool)

(assert (=> d!413443 (= c!235973 ((_ is Node!5073) (left!12719 (c!235662 (tokens!1984 other!32)))))))

(declare-fun e!916246 () Bool)

(assert (=> d!413443 (= (inv!19829 (left!12719 (c!235662 (tokens!1984 other!32)))) e!916246)))

(declare-fun b!1435445 () Bool)

(assert (=> b!1435445 (= e!916246 (inv!19833 (left!12719 (c!235662 (tokens!1984 other!32)))))))

(declare-fun b!1435446 () Bool)

(declare-fun e!916247 () Bool)

(assert (=> b!1435446 (= e!916246 e!916247)))

(declare-fun res!650044 () Bool)

(assert (=> b!1435446 (= res!650044 (not ((_ is Leaf!7586) (left!12719 (c!235662 (tokens!1984 other!32))))))))

(assert (=> b!1435446 (=> res!650044 e!916247)))

(declare-fun b!1435447 () Bool)

(assert (=> b!1435447 (= e!916247 (inv!19834 (left!12719 (c!235662 (tokens!1984 other!32)))))))

(assert (= (and d!413443 c!235973) b!1435445))

(assert (= (and d!413443 (not c!235973)) b!1435446))

(assert (= (and b!1435446 (not res!650044)) b!1435447))

(declare-fun m!1640689 () Bool)

(assert (=> b!1435445 m!1640689))

(declare-fun m!1640691 () Bool)

(assert (=> b!1435447 m!1640691))

(assert (=> b!1434412 d!413443))

(declare-fun d!413445 () Bool)

(declare-fun c!235974 () Bool)

(assert (=> d!413445 (= c!235974 ((_ is Node!5073) (right!13049 (c!235662 (tokens!1984 other!32)))))))

(declare-fun e!916248 () Bool)

(assert (=> d!413445 (= (inv!19829 (right!13049 (c!235662 (tokens!1984 other!32)))) e!916248)))

(declare-fun b!1435448 () Bool)

(assert (=> b!1435448 (= e!916248 (inv!19833 (right!13049 (c!235662 (tokens!1984 other!32)))))))

(declare-fun b!1435449 () Bool)

(declare-fun e!916249 () Bool)

(assert (=> b!1435449 (= e!916248 e!916249)))

(declare-fun res!650045 () Bool)

(assert (=> b!1435449 (= res!650045 (not ((_ is Leaf!7586) (right!13049 (c!235662 (tokens!1984 other!32))))))))

(assert (=> b!1435449 (=> res!650045 e!916249)))

(declare-fun b!1435450 () Bool)

(assert (=> b!1435450 (= e!916249 (inv!19834 (right!13049 (c!235662 (tokens!1984 other!32)))))))

(assert (= (and d!413445 c!235974) b!1435448))

(assert (= (and d!413445 (not c!235974)) b!1435449))

(assert (= (and b!1435449 (not res!650045)) b!1435450))

(declare-fun m!1640693 () Bool)

(assert (=> b!1435448 m!1640693))

(declare-fun m!1640695 () Bool)

(assert (=> b!1435450 m!1640695))

(assert (=> b!1434412 d!413445))

(assert (=> b!1434202 d!413069))

(assert (=> b!1434244 d!413043))

(declare-fun d!413447 () Bool)

(declare-fun lt!490630 () Int)

(assert (=> d!413447 (>= lt!490630 0)))

(declare-fun e!916254 () Int)

(assert (=> d!413447 (= lt!490630 e!916254)))

(declare-fun c!235978 () Bool)

(assert (=> d!413447 (= c!235978 ((_ is Nil!14928) lt!489461))))

(assert (=> d!413447 (= (size!12239 lt!489461) lt!490630)))

(declare-fun b!1435458 () Bool)

(assert (=> b!1435458 (= e!916254 0)))

(declare-fun b!1435459 () Bool)

(assert (=> b!1435459 (= e!916254 (+ 1 (size!12239 (t!127237 lt!489461))))))

(assert (= (and d!413447 c!235978) b!1435458))

(assert (= (and d!413447 (not c!235978)) b!1435459))

(declare-fun m!1640741 () Bool)

(assert (=> b!1435459 m!1640741))

(assert (=> b!1434360 d!413447))

(declare-fun d!413451 () Bool)

(declare-fun lt!490631 () Int)

(assert (=> d!413451 (>= lt!490631 0)))

(declare-fun e!916255 () Int)

(assert (=> d!413451 (= lt!490631 e!916255)))

(declare-fun c!235979 () Bool)

(assert (=> d!413451 (= c!235979 ((_ is Nil!14928) lt!489183))))

(assert (=> d!413451 (= (size!12239 lt!489183) lt!490631)))

(declare-fun b!1435460 () Bool)

(assert (=> b!1435460 (= e!916255 0)))

(declare-fun b!1435461 () Bool)

(assert (=> b!1435461 (= e!916255 (+ 1 (size!12239 (t!127237 lt!489183))))))

(assert (= (and d!413451 c!235979) b!1435460))

(assert (= (and d!413451 (not c!235979)) b!1435461))

(assert (=> b!1435461 m!1638457))

(assert (=> b!1434360 d!413451))

(declare-fun d!413455 () Bool)

(declare-fun lt!490633 () Int)

(assert (=> d!413455 (>= lt!490633 0)))

(declare-fun e!916257 () Int)

(assert (=> d!413455 (= lt!490633 e!916257)))

(declare-fun c!235980 () Bool)

(assert (=> d!413455 (= c!235980 ((_ is Nil!14928) lt!489182))))

(assert (=> d!413455 (= (size!12239 lt!489182) lt!490633)))

(declare-fun b!1435463 () Bool)

(assert (=> b!1435463 (= e!916257 0)))

(declare-fun b!1435464 () Bool)

(assert (=> b!1435464 (= e!916257 (+ 1 (size!12239 (t!127237 lt!489182))))))

(assert (= (and d!413455 c!235980) b!1435463))

(assert (= (and d!413455 (not c!235980)) b!1435464))

(declare-fun m!1640747 () Bool)

(assert (=> b!1435464 m!1640747))

(assert (=> b!1434360 d!413455))

(declare-fun d!413457 () Bool)

(declare-fun c!235981 () Bool)

(assert (=> d!413457 (= c!235981 ((_ is Node!5073) (left!12719 (c!235662 (tokens!1984 thiss!10022)))))))

(declare-fun e!916258 () Bool)

(assert (=> d!413457 (= (inv!19829 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) e!916258)))

(declare-fun b!1435465 () Bool)

(assert (=> b!1435465 (= e!916258 (inv!19833 (left!12719 (c!235662 (tokens!1984 thiss!10022)))))))

(declare-fun b!1435466 () Bool)

(declare-fun e!916259 () Bool)

(assert (=> b!1435466 (= e!916258 e!916259)))

(declare-fun res!650048 () Bool)

(assert (=> b!1435466 (= res!650048 (not ((_ is Leaf!7586) (left!12719 (c!235662 (tokens!1984 thiss!10022))))))))

(assert (=> b!1435466 (=> res!650048 e!916259)))

(declare-fun b!1435467 () Bool)

(assert (=> b!1435467 (= e!916259 (inv!19834 (left!12719 (c!235662 (tokens!1984 thiss!10022)))))))

(assert (= (and d!413457 c!235981) b!1435465))

(assert (= (and d!413457 (not c!235981)) b!1435466))

(assert (= (and b!1435466 (not res!650048)) b!1435467))

(declare-fun m!1640757 () Bool)

(assert (=> b!1435465 m!1640757))

(declare-fun m!1640759 () Bool)

(assert (=> b!1435467 m!1640759))

(assert (=> b!1434390 d!413457))

(declare-fun d!413461 () Bool)

(declare-fun c!235982 () Bool)

(assert (=> d!413461 (= c!235982 ((_ is Node!5073) (right!13049 (c!235662 (tokens!1984 thiss!10022)))))))

(declare-fun e!916260 () Bool)

(assert (=> d!413461 (= (inv!19829 (right!13049 (c!235662 (tokens!1984 thiss!10022)))) e!916260)))

(declare-fun b!1435468 () Bool)

(assert (=> b!1435468 (= e!916260 (inv!19833 (right!13049 (c!235662 (tokens!1984 thiss!10022)))))))

(declare-fun b!1435469 () Bool)

(declare-fun e!916262 () Bool)

(assert (=> b!1435469 (= e!916260 e!916262)))

(declare-fun res!650049 () Bool)

(assert (=> b!1435469 (= res!650049 (not ((_ is Leaf!7586) (right!13049 (c!235662 (tokens!1984 thiss!10022))))))))

(assert (=> b!1435469 (=> res!650049 e!916262)))

(declare-fun b!1435470 () Bool)

(assert (=> b!1435470 (= e!916262 (inv!19834 (right!13049 (c!235662 (tokens!1984 thiss!10022)))))))

(assert (= (and d!413461 c!235982) b!1435468))

(assert (= (and d!413461 (not c!235982)) b!1435469))

(assert (= (and b!1435469 (not res!650049)) b!1435470))

(declare-fun m!1640761 () Bool)

(assert (=> b!1435468 m!1640761))

(declare-fun m!1640763 () Bool)

(assert (=> b!1435470 m!1640763))

(assert (=> b!1434390 d!413461))

(declare-fun d!413463 () Bool)

(declare-fun lt!490662 () Int)

(assert (=> d!413463 (>= lt!490662 0)))

(declare-fun e!916266 () Int)

(assert (=> d!413463 (= lt!490662 e!916266)))

(declare-fun c!235986 () Bool)

(assert (=> d!413463 (= c!235986 ((_ is Nil!14930) lt!489496))))

(assert (=> d!413463 (= (size!12241 lt!489496) lt!490662)))

(declare-fun b!1435478 () Bool)

(assert (=> b!1435478 (= e!916266 0)))

(declare-fun b!1435479 () Bool)

(assert (=> b!1435479 (= e!916266 (+ 1 (size!12241 (t!127239 lt!489496))))))

(assert (= (and d!413463 c!235986) b!1435478))

(assert (= (and d!413463 (not c!235986)) b!1435479))

(declare-fun m!1640769 () Bool)

(assert (=> b!1435479 m!1640769))

(assert (=> b!1434378 d!413463))

(declare-fun d!413465 () Bool)

(declare-fun lt!490663 () Int)

(assert (=> d!413465 (>= lt!490663 0)))

(declare-fun e!916267 () Int)

(assert (=> d!413465 (= lt!490663 e!916267)))

(declare-fun c!235987 () Bool)

(assert (=> d!413465 (= c!235987 ((_ is Nil!14930) lt!489190))))

(assert (=> d!413465 (= (size!12241 lt!489190) lt!490663)))

(declare-fun b!1435480 () Bool)

(assert (=> b!1435480 (= e!916267 0)))

(declare-fun b!1435481 () Bool)

(assert (=> b!1435481 (= e!916267 (+ 1 (size!12241 (t!127239 lt!489190))))))

(assert (= (and d!413465 c!235987) b!1435480))

(assert (= (and d!413465 (not c!235987)) b!1435481))

(assert (=> b!1435481 m!1638421))

(assert (=> b!1434378 d!413465))

(declare-fun d!413467 () Bool)

(declare-fun lt!490664 () Int)

(assert (=> d!413467 (>= lt!490664 0)))

(declare-fun e!916268 () Int)

(assert (=> d!413467 (= lt!490664 e!916268)))

(declare-fun c!235988 () Bool)

(assert (=> d!413467 (= c!235988 ((_ is Nil!14930) Nil!14930))))

(assert (=> d!413467 (= (size!12241 Nil!14930) lt!490664)))

(declare-fun b!1435482 () Bool)

(assert (=> b!1435482 (= e!916268 0)))

(declare-fun b!1435483 () Bool)

(assert (=> b!1435483 (= e!916268 (+ 1 (size!12241 (t!127239 Nil!14930))))))

(assert (= (and d!413467 c!235988) b!1435482))

(assert (= (and d!413467 (not c!235988)) b!1435483))

(declare-fun m!1640801 () Bool)

(assert (=> b!1435483 m!1640801))

(assert (=> b!1434378 d!413467))

(declare-fun d!413469 () Bool)

(declare-fun lt!490665 () Int)

(assert (=> d!413469 (>= lt!490665 0)))

(declare-fun e!916269 () Int)

(assert (=> d!413469 (= lt!490665 e!916269)))

(declare-fun c!235989 () Bool)

(assert (=> d!413469 (= c!235989 ((_ is Nil!14928) lt!489247))))

(assert (=> d!413469 (= (size!12239 lt!489247) lt!490665)))

(declare-fun b!1435484 () Bool)

(assert (=> b!1435484 (= e!916269 0)))

(declare-fun b!1435485 () Bool)

(assert (=> b!1435485 (= e!916269 (+ 1 (size!12239 (t!127237 lt!489247))))))

(assert (= (and d!413469 c!235989) b!1435484))

(assert (= (and d!413469 (not c!235989)) b!1435485))

(declare-fun m!1640813 () Bool)

(assert (=> b!1435485 m!1640813))

(assert (=> b!1434257 d!413469))

(declare-fun d!413471 () Bool)

(declare-fun lt!490666 () Int)

(assert (=> d!413471 (>= lt!490666 0)))

(declare-fun e!916270 () Int)

(assert (=> d!413471 (= lt!490666 e!916270)))

(declare-fun c!235990 () Bool)

(assert (=> d!413471 (= c!235990 ((_ is Nil!14928) (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))

(assert (=> d!413471 (= (size!12239 (list!5931 (charsOf!1515 (h!20331 lt!489186)))) lt!490666)))

(declare-fun b!1435486 () Bool)

(assert (=> b!1435486 (= e!916270 0)))

(declare-fun b!1435487 () Bool)

(assert (=> b!1435487 (= e!916270 (+ 1 (size!12239 (t!127237 (list!5931 (charsOf!1515 (h!20331 lt!489186)))))))))

(assert (= (and d!413471 c!235990) b!1435486))

(assert (= (and d!413471 (not c!235990)) b!1435487))

(assert (=> b!1435487 m!1638509))

(assert (=> b!1434257 d!413471))

(declare-fun d!413473 () Bool)

(declare-fun lt!490667 () Int)

(assert (=> d!413473 (>= lt!490667 0)))

(declare-fun e!916271 () Int)

(assert (=> d!413473 (= lt!490667 e!916271)))

(declare-fun c!235991 () Bool)

(assert (=> d!413473 (= c!235991 ((_ is Nil!14928) (printList!707 Lexer!2283 (t!127239 lt!489186))))))

(assert (=> d!413473 (= (size!12239 (printList!707 Lexer!2283 (t!127239 lt!489186))) lt!490667)))

(declare-fun b!1435488 () Bool)

(assert (=> b!1435488 (= e!916271 0)))

(declare-fun b!1435489 () Bool)

(assert (=> b!1435489 (= e!916271 (+ 1 (size!12239 (t!127237 (printList!707 Lexer!2283 (t!127239 lt!489186))))))))

(assert (= (and d!413473 c!235991) b!1435488))

(assert (= (and d!413473 (not c!235991)) b!1435489))

(declare-fun m!1640829 () Bool)

(assert (=> b!1435489 m!1640829))

(assert (=> b!1434257 d!413473))

(declare-fun b!1435490 () Bool)

(declare-fun res!650053 () Bool)

(declare-fun e!916273 () Bool)

(assert (=> b!1435490 (=> (not res!650053) (not e!916273))))

(assert (=> b!1435490 (= res!650053 (isBalanced!1503 (left!12719 (c!235662 (tokens!1984 thiss!10022)))))))

(declare-fun d!413475 () Bool)

(declare-fun res!650056 () Bool)

(declare-fun e!916272 () Bool)

(assert (=> d!413475 (=> res!650056 e!916272)))

(assert (=> d!413475 (= res!650056 (not ((_ is Node!5073) (c!235662 (tokens!1984 thiss!10022)))))))

(assert (=> d!413475 (= (isBalanced!1503 (c!235662 (tokens!1984 thiss!10022))) e!916272)))

(declare-fun b!1435491 () Bool)

(declare-fun res!650054 () Bool)

(assert (=> b!1435491 (=> (not res!650054) (not e!916273))))

(assert (=> b!1435491 (= res!650054 (<= (- (height!739 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) (height!739 (right!13049 (c!235662 (tokens!1984 thiss!10022))))) 1))))

(declare-fun b!1435492 () Bool)

(declare-fun res!650055 () Bool)

(assert (=> b!1435492 (=> (not res!650055) (not e!916273))))

(assert (=> b!1435492 (= res!650055 (isBalanced!1503 (right!13049 (c!235662 (tokens!1984 thiss!10022)))))))

(declare-fun b!1435493 () Bool)

(declare-fun res!650051 () Bool)

(assert (=> b!1435493 (=> (not res!650051) (not e!916273))))

(assert (=> b!1435493 (= res!650051 (not (isEmpty!9277 (left!12719 (c!235662 (tokens!1984 thiss!10022))))))))

(declare-fun b!1435494 () Bool)

(assert (=> b!1435494 (= e!916273 (not (isEmpty!9277 (right!13049 (c!235662 (tokens!1984 thiss!10022))))))))

(declare-fun b!1435495 () Bool)

(assert (=> b!1435495 (= e!916272 e!916273)))

(declare-fun res!650052 () Bool)

(assert (=> b!1435495 (=> (not res!650052) (not e!916273))))

(assert (=> b!1435495 (= res!650052 (<= (- 1) (- (height!739 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) (height!739 (right!13049 (c!235662 (tokens!1984 thiss!10022)))))))))

(assert (= (and d!413475 (not res!650056)) b!1435495))

(assert (= (and b!1435495 res!650052) b!1435491))

(assert (= (and b!1435491 res!650054) b!1435490))

(assert (= (and b!1435490 res!650053) b!1435492))

(assert (= (and b!1435492 res!650055) b!1435493))

(assert (= (and b!1435493 res!650051) b!1435494))

(assert (=> b!1435495 m!1639661))

(assert (=> b!1435495 m!1639663))

(declare-fun m!1640845 () Bool)

(assert (=> b!1435493 m!1640845))

(declare-fun m!1640849 () Bool)

(assert (=> b!1435494 m!1640849))

(declare-fun m!1640851 () Bool)

(assert (=> b!1435490 m!1640851))

(declare-fun m!1640853 () Bool)

(assert (=> b!1435492 m!1640853))

(assert (=> b!1435491 m!1639661))

(assert (=> b!1435491 m!1639663))

(assert (=> d!412817 d!413475))

(assert (=> b!1434148 d!412815))

(assert (=> b!1434205 d!412923))

(assert (=> d!412869 d!412907))

(assert (=> d!412869 d!412899))

(declare-fun d!413479 () Bool)

(assert (=> d!413479 (= (list!5932 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190))))) (list!5936 (c!235662 (_1!7946 (lex!1044 Lexer!2283 (rules!11404 thiss!10022) (print!1064 Lexer!2283 (seqFromList!1696 lt!489190)))))))))

(declare-fun bs!341095 () Bool)

(assert (= bs!341095 d!413479))

(declare-fun m!1640855 () Bool)

(assert (=> bs!341095 m!1640855))

(assert (=> d!412869 d!413479))

(assert (=> d!412869 d!412921))

(assert (=> d!412869 d!412919))

(declare-fun d!413481 () Bool)

(assert (=> d!413481 (= (list!5931 lt!489235) (list!5935 (c!235660 lt!489235)))))

(declare-fun bs!341096 () Bool)

(assert (= bs!341096 d!413481))

(declare-fun m!1640863 () Bool)

(assert (=> bs!341096 m!1640863))

(assert (=> d!412793 d!413481))

(declare-fun d!413485 () Bool)

(declare-fun lt!490693 () List!14994)

(assert (=> d!413485 (= lt!490693 (++!4001 (list!5931 (BalanceConc!10085 Empty!5072)) (printList!707 Lexer!2283 (dropList!462 (tokens!1984 other!32) 0))))))

(declare-fun e!916289 () List!14994)

(assert (=> d!413485 (= lt!490693 e!916289)))

(declare-fun c!235997 () Bool)

(assert (=> d!413485 (= c!235997 ((_ is Cons!14930) (dropList!462 (tokens!1984 other!32) 0)))))

(assert (=> d!413485 (= (printListTailRec!281 Lexer!2283 (dropList!462 (tokens!1984 other!32) 0) (list!5931 (BalanceConc!10085 Empty!5072))) lt!490693)))

(declare-fun b!1435524 () Bool)

(assert (=> b!1435524 (= e!916289 (printListTailRec!281 Lexer!2283 (t!127239 (dropList!462 (tokens!1984 other!32) 0)) (++!4001 (list!5931 (BalanceConc!10085 Empty!5072)) (list!5931 (charsOf!1515 (h!20331 (dropList!462 (tokens!1984 other!32) 0)))))))))

(declare-fun lt!490694 () List!14994)

(assert (=> b!1435524 (= lt!490694 (list!5931 (charsOf!1515 (h!20331 (dropList!462 (tokens!1984 other!32) 0)))))))

(declare-fun lt!490692 () List!14994)

(assert (=> b!1435524 (= lt!490692 (printList!707 Lexer!2283 (t!127239 (dropList!462 (tokens!1984 other!32) 0))))))

(declare-fun lt!490691 () Unit!22769)

(declare-fun lemmaConcatAssociativity!880 (List!14994 List!14994 List!14994) Unit!22769)

(assert (=> b!1435524 (= lt!490691 (lemmaConcatAssociativity!880 (list!5931 (BalanceConc!10085 Empty!5072)) lt!490694 lt!490692))))

(assert (=> b!1435524 (= (++!4001 (++!4001 (list!5931 (BalanceConc!10085 Empty!5072)) lt!490694) lt!490692) (++!4001 (list!5931 (BalanceConc!10085 Empty!5072)) (++!4001 lt!490694 lt!490692)))))

(declare-fun lt!490690 () Unit!22769)

(assert (=> b!1435524 (= lt!490690 lt!490691)))

(declare-fun b!1435525 () Bool)

(assert (=> b!1435525 (= e!916289 (list!5931 (BalanceConc!10085 Empty!5072)))))

(assert (= (and d!413485 c!235997) b!1435524))

(assert (= (and d!413485 (not c!235997)) b!1435525))

(assert (=> d!413485 m!1637167))

(declare-fun m!1640961 () Bool)

(assert (=> d!413485 m!1640961))

(assert (=> d!413485 m!1637173))

(assert (=> d!413485 m!1640961))

(declare-fun m!1640963 () Bool)

(assert (=> d!413485 m!1640963))

(assert (=> b!1435524 m!1637173))

(declare-fun m!1640965 () Bool)

(assert (=> b!1435524 m!1640965))

(declare-fun m!1640967 () Bool)

(assert (=> b!1435524 m!1640967))

(declare-fun m!1640969 () Bool)

(assert (=> b!1435524 m!1640969))

(declare-fun m!1640971 () Bool)

(assert (=> b!1435524 m!1640971))

(assert (=> b!1435524 m!1640969))

(declare-fun m!1640973 () Bool)

(assert (=> b!1435524 m!1640973))

(assert (=> b!1435524 m!1637173))

(assert (=> b!1435524 m!1640971))

(declare-fun m!1640975 () Bool)

(assert (=> b!1435524 m!1640975))

(assert (=> b!1435524 m!1640965))

(declare-fun m!1640977 () Bool)

(assert (=> b!1435524 m!1640977))

(declare-fun m!1640979 () Bool)

(assert (=> b!1435524 m!1640979))

(assert (=> b!1435524 m!1637173))

(declare-fun m!1640981 () Bool)

(assert (=> b!1435524 m!1640981))

(assert (=> b!1435524 m!1640975))

(declare-fun m!1640983 () Bool)

(assert (=> b!1435524 m!1640983))

(assert (=> b!1435524 m!1637173))

(assert (=> b!1435524 m!1640977))

(assert (=> d!412793 d!413485))

(declare-fun d!413515 () Bool)

(assert (=> d!413515 (= (dropList!462 (tokens!1984 other!32) 0) (drop!730 (list!5936 (c!235662 (tokens!1984 other!32))) 0))))

(declare-fun bs!341103 () Bool)

(assert (= bs!341103 d!413515))

(assert (=> bs!341103 m!1637441))

(assert (=> bs!341103 m!1637441))

(declare-fun m!1641013 () Bool)

(assert (=> bs!341103 m!1641013))

(assert (=> d!412793 d!413515))

(assert (=> d!412793 d!413049))

(declare-fun d!413517 () Bool)

(assert (=> d!413517 (= (list!5931 (BalanceConc!10085 Empty!5072)) (list!5935 (c!235660 (BalanceConc!10085 Empty!5072))))))

(declare-fun bs!341105 () Bool)

(assert (= bs!341105 d!413517))

(declare-fun m!1641021 () Bool)

(assert (=> bs!341105 m!1641021))

(assert (=> d!412793 d!413517))

(declare-fun b!1435538 () Bool)

(declare-fun b_free!35551 () Bool)

(declare-fun b_next!36255 () Bool)

(assert (=> b!1435538 (= b_free!35551 (not b_next!36255))))

(declare-fun tp!406466 () Bool)

(declare-fun b_and!96511 () Bool)

(assert (=> b!1435538 (= tp!406466 b_and!96511)))

(declare-fun b_free!35553 () Bool)

(declare-fun b_next!36257 () Bool)

(assert (=> b!1435538 (= b_free!35553 (not b_next!36257))))

(declare-fun tb!75931 () Bool)

(declare-fun t!127303 () Bool)

(assert (=> (and b!1435538 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190))))) t!127303) tb!75931))

(declare-fun result!92252 () Bool)

(assert (= result!92252 result!92234))

(assert (=> d!413259 t!127303))

(declare-fun tb!75935 () Bool)

(declare-fun t!127307 () Bool)

(assert (=> (and b!1435538 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185))))) t!127307) tb!75935))

(declare-fun result!92256 () Bool)

(assert (= result!92256 result!92230))

(assert (=> d!413075 t!127307))

(declare-fun tb!75937 () Bool)

(declare-fun t!127309 () Bool)

(assert (=> (and b!1435538 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190)))))) t!127309) tb!75937))

(declare-fun result!92258 () Bool)

(assert (= result!92258 result!92242))

(assert (=> d!413365 t!127309))

(declare-fun tb!75939 () Bool)

(declare-fun t!127311 () Bool)

(assert (=> (and b!1435538 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186))))) t!127311) tb!75939))

(declare-fun result!92260 () Bool)

(assert (= result!92260 result!92212))

(assert (=> d!412811 t!127311))

(declare-fun tb!75941 () Bool)

(declare-fun t!127313 () Bool)

(assert (=> (and b!1435538 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0))))) t!127313) tb!75941))

(declare-fun result!92262 () Bool)

(assert (= result!92262 result!92218))

(assert (=> d!412965 t!127313))

(declare-fun tb!75943 () Bool)

(declare-fun t!127315 () Bool)

(assert (=> (and b!1435538 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186)))))) t!127315) tb!75943))

(declare-fun result!92264 () Bool)

(assert (= result!92264 result!92226))

(assert (=> d!413059 t!127315))

(declare-fun tp!406465 () Bool)

(declare-fun b_and!96513 () Bool)

(assert (=> b!1435538 (= tp!406465 (and (=> t!127315 result!92264) (=> t!127313 result!92262) (=> t!127309 result!92258) (=> t!127311 result!92260) (=> t!127307 result!92256) (=> t!127303 result!92252) b_and!96513))))

(declare-fun e!916297 () Bool)

(assert (=> b!1435538 (= e!916297 (and tp!406466 tp!406465))))

(declare-fun tp!406463 () Bool)

(declare-fun b!1435537 () Bool)

(declare-fun e!916294 () Bool)

(assert (=> b!1435537 (= e!916294 (and tp!406463 (inv!19824 (tag!2885 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (inv!19842 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) e!916297))))

(declare-fun b!1435536 () Bool)

(declare-fun e!916296 () Bool)

(declare-fun tp!406464 () Bool)

(assert (=> b!1435536 (= e!916296 (and e!916294 tp!406464))))

(assert (=> b!1434401 (= tp!406442 e!916296)))

(assert (= b!1435537 b!1435538))

(assert (= b!1435536 b!1435537))

(assert (= (and b!1434401 ((_ is Cons!14931) (t!127240 (rules!11404 thiss!10022)))) b!1435536))

(declare-fun m!1641039 () Bool)

(assert (=> b!1435537 m!1641039))

(declare-fun m!1641041 () Bool)

(assert (=> b!1435537 m!1641041))

(declare-fun e!916304 () Bool)

(assert (=> b!1434402 (= tp!406441 e!916304)))

(declare-fun b!1435559 () Bool)

(declare-fun tp_is_empty!6837 () Bool)

(assert (=> b!1435559 (= e!916304 tp_is_empty!6837)))

(declare-fun b!1435560 () Bool)

(declare-fun tp!406481 () Bool)

(declare-fun tp!406480 () Bool)

(assert (=> b!1435560 (= e!916304 (and tp!406481 tp!406480))))

(declare-fun b!1435562 () Bool)

(declare-fun tp!406482 () Bool)

(declare-fun tp!406478 () Bool)

(assert (=> b!1435562 (= e!916304 (and tp!406482 tp!406478))))

(declare-fun b!1435561 () Bool)

(declare-fun tp!406479 () Bool)

(assert (=> b!1435561 (= e!916304 tp!406479)))

(assert (= (and b!1434402 ((_ is ElementMatch!3937) (regex!2623 (h!20332 (rules!11404 thiss!10022))))) b!1435559))

(assert (= (and b!1434402 ((_ is Concat!6651) (regex!2623 (h!20332 (rules!11404 thiss!10022))))) b!1435560))

(assert (= (and b!1434402 ((_ is Star!3937) (regex!2623 (h!20332 (rules!11404 thiss!10022))))) b!1435561))

(assert (= (and b!1434402 ((_ is Union!3937) (regex!2623 (h!20332 (rules!11404 thiss!10022))))) b!1435562))

(declare-fun b!1435577 () Bool)

(declare-fun b_free!35555 () Bool)

(declare-fun b_next!36259 () Bool)

(assert (=> b!1435577 (= b_free!35555 (not b_next!36259))))

(declare-fun tp!406495 () Bool)

(declare-fun b_and!96523 () Bool)

(assert (=> b!1435577 (= tp!406495 b_and!96523)))

(declare-fun b_free!35557 () Bool)

(declare-fun b_next!36261 () Bool)

(assert (=> b!1435577 (= b_free!35557 (not b_next!36261))))

(declare-fun tb!75949 () Bool)

(declare-fun t!127321 () Bool)

(assert (=> (and b!1435577 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190))))) t!127321) tb!75949))

(declare-fun result!92274 () Bool)

(assert (= result!92274 result!92234))

(assert (=> d!413259 t!127321))

(declare-fun tb!75951 () Bool)

(declare-fun t!127323 () Bool)

(assert (=> (and b!1435577 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185))))) t!127323) tb!75951))

(declare-fun result!92276 () Bool)

(assert (= result!92276 result!92230))

(assert (=> d!413075 t!127323))

(declare-fun tb!75953 () Bool)

(declare-fun t!127325 () Bool)

(assert (=> (and b!1435577 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190)))))) t!127325) tb!75953))

(declare-fun result!92278 () Bool)

(assert (= result!92278 result!92242))

(assert (=> d!413365 t!127325))

(declare-fun tb!75955 () Bool)

(declare-fun t!127327 () Bool)

(assert (=> (and b!1435577 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186))))) t!127327) tb!75955))

(declare-fun result!92280 () Bool)

(assert (= result!92280 result!92212))

(assert (=> d!412811 t!127327))

(declare-fun t!127329 () Bool)

(declare-fun tb!75957 () Bool)

(assert (=> (and b!1435577 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0))))) t!127329) tb!75957))

(declare-fun result!92282 () Bool)

(assert (= result!92282 result!92218))

(assert (=> d!412965 t!127329))

(declare-fun tb!75959 () Bool)

(declare-fun t!127331 () Bool)

(assert (=> (and b!1435577 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186)))))) t!127331) tb!75959))

(declare-fun result!92284 () Bool)

(assert (= result!92284 result!92226))

(assert (=> d!413059 t!127331))

(declare-fun tp!406494 () Bool)

(declare-fun b_and!96525 () Bool)

(assert (=> b!1435577 (= tp!406494 (and (=> t!127331 result!92284) (=> t!127321 result!92274) (=> t!127329 result!92282) (=> t!127323 result!92276) (=> t!127325 result!92278) (=> t!127327 result!92280) b_and!96525))))

(declare-fun e!916327 () Bool)

(assert (=> b!1434414 (= tp!406452 e!916327)))

(declare-fun tp!406496 () Bool)

(declare-fun b!1435575 () Bool)

(declare-fun e!916329 () Bool)

(declare-fun e!916328 () Bool)

(declare-fun inv!21 (TokenValue!2713) Bool)

(assert (=> b!1435575 (= e!916329 (and (inv!21 (value!84403 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32))))))) e!916328 tp!406496))))

(declare-fun tp!406498 () Bool)

(declare-fun b!1435574 () Bool)

(declare-fun inv!19845 (Token!4908) Bool)

(assert (=> b!1435574 (= e!916327 (and (inv!19845 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))) e!916329 tp!406498))))

(declare-fun b!1435576 () Bool)

(declare-fun tp!406497 () Bool)

(declare-fun e!916325 () Bool)

(assert (=> b!1435576 (= e!916328 (and tp!406497 (inv!19824 (tag!2885 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (inv!19842 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) e!916325))))

(assert (=> b!1435577 (= e!916325 (and tp!406495 tp!406494))))

(assert (= b!1435576 b!1435577))

(assert (= b!1435575 b!1435576))

(assert (= b!1435574 b!1435575))

(assert (= (and b!1434414 ((_ is Cons!14930) (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))) b!1435574))

(declare-fun m!1641103 () Bool)

(assert (=> b!1435575 m!1641103))

(declare-fun m!1641105 () Bool)

(assert (=> b!1435574 m!1641105))

(declare-fun m!1641107 () Bool)

(assert (=> b!1435576 m!1641107))

(declare-fun m!1641109 () Bool)

(assert (=> b!1435576 m!1641109))

(declare-fun b!1435594 () Bool)

(declare-fun b_free!35559 () Bool)

(declare-fun b_next!36263 () Bool)

(assert (=> b!1435594 (= b_free!35559 (not b_next!36263))))

(declare-fun tp!406502 () Bool)

(declare-fun b_and!96527 () Bool)

(assert (=> b!1435594 (= tp!406502 b_and!96527)))

(declare-fun b_free!35561 () Bool)

(declare-fun b_next!36265 () Bool)

(assert (=> b!1435594 (= b_free!35561 (not b_next!36265))))

(declare-fun t!127333 () Bool)

(declare-fun tb!75961 () Bool)

(assert (=> (and b!1435594 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190))))) t!127333) tb!75961))

(declare-fun result!92286 () Bool)

(assert (= result!92286 result!92234))

(assert (=> d!413259 t!127333))

(declare-fun tb!75963 () Bool)

(declare-fun t!127335 () Bool)

(assert (=> (and b!1435594 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185))))) t!127335) tb!75963))

(declare-fun result!92288 () Bool)

(assert (= result!92288 result!92230))

(assert (=> d!413075 t!127335))

(declare-fun tb!75965 () Bool)

(declare-fun t!127337 () Bool)

(assert (=> (and b!1435594 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190)))))) t!127337) tb!75965))

(declare-fun result!92290 () Bool)

(assert (= result!92290 result!92242))

(assert (=> d!413365 t!127337))

(declare-fun t!127339 () Bool)

(declare-fun tb!75967 () Bool)

(assert (=> (and b!1435594 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186))))) t!127339) tb!75967))

(declare-fun result!92292 () Bool)

(assert (= result!92292 result!92212))

(assert (=> d!412811 t!127339))

(declare-fun t!127341 () Bool)

(declare-fun tb!75969 () Bool)

(assert (=> (and b!1435594 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0))))) t!127341) tb!75969))

(declare-fun result!92294 () Bool)

(assert (= result!92294 result!92218))

(assert (=> d!412965 t!127341))

(declare-fun t!127343 () Bool)

(declare-fun tb!75971 () Bool)

(assert (=> (and b!1435594 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186)))))) t!127343) tb!75971))

(declare-fun result!92296 () Bool)

(assert (= result!92296 result!92226))

(assert (=> d!413059 t!127343))

(declare-fun tp!406501 () Bool)

(declare-fun b_and!96529 () Bool)

(assert (=> b!1435594 (= tp!406501 (and (=> t!127337 result!92290) (=> t!127343 result!92296) (=> t!127339 result!92292) (=> t!127335 result!92288) (=> t!127341 result!92294) (=> t!127333 result!92286) b_and!96529))))

(declare-fun e!916334 () Bool)

(assert (=> b!1435594 (= e!916334 (and tp!406502 tp!406501))))

(declare-fun e!916331 () Bool)

(declare-fun tp!406499 () Bool)

(declare-fun b!1435593 () Bool)

(assert (=> b!1435593 (= e!916331 (and tp!406499 (inv!19824 (tag!2885 (h!20332 (t!127240 (rules!11404 other!32))))) (inv!19842 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) e!916334))))

(declare-fun b!1435592 () Bool)

(declare-fun e!916333 () Bool)

(declare-fun tp!406500 () Bool)

(assert (=> b!1435592 (= e!916333 (and e!916331 tp!406500))))

(assert (=> b!1434409 (= tp!406449 e!916333)))

(assert (= b!1435593 b!1435594))

(assert (= b!1435592 b!1435593))

(assert (= (and b!1434409 ((_ is Cons!14931) (t!127240 (rules!11404 other!32)))) b!1435592))

(declare-fun m!1641111 () Bool)

(assert (=> b!1435593 m!1641111))

(declare-fun m!1641113 () Bool)

(assert (=> b!1435593 m!1641113))

(declare-fun e!916335 () Bool)

(assert (=> b!1434410 (= tp!406448 e!916335)))

(declare-fun b!1435595 () Bool)

(assert (=> b!1435595 (= e!916335 tp_is_empty!6837)))

(declare-fun b!1435596 () Bool)

(declare-fun tp!406506 () Bool)

(declare-fun tp!406505 () Bool)

(assert (=> b!1435596 (= e!916335 (and tp!406506 tp!406505))))

(declare-fun b!1435598 () Bool)

(declare-fun tp!406507 () Bool)

(declare-fun tp!406503 () Bool)

(assert (=> b!1435598 (= e!916335 (and tp!406507 tp!406503))))

(declare-fun b!1435597 () Bool)

(declare-fun tp!406504 () Bool)

(assert (=> b!1435597 (= e!916335 tp!406504)))

(assert (= (and b!1434410 ((_ is ElementMatch!3937) (regex!2623 (h!20332 (rules!11404 other!32))))) b!1435595))

(assert (= (and b!1434410 ((_ is Concat!6651) (regex!2623 (h!20332 (rules!11404 other!32))))) b!1435596))

(assert (= (and b!1434410 ((_ is Star!3937) (regex!2623 (h!20332 (rules!11404 other!32))))) b!1435597))

(assert (= (and b!1434410 ((_ is Union!3937) (regex!2623 (h!20332 (rules!11404 other!32))))) b!1435598))

(declare-fun b!1435602 () Bool)

(declare-fun b_free!35563 () Bool)

(declare-fun b_next!36267 () Bool)

(assert (=> b!1435602 (= b_free!35563 (not b_next!36267))))

(declare-fun tp!406509 () Bool)

(declare-fun b_and!96531 () Bool)

(assert (=> b!1435602 (= tp!406509 b_and!96531)))

(declare-fun b_free!35565 () Bool)

(declare-fun b_next!36269 () Bool)

(assert (=> b!1435602 (= b_free!35565 (not b_next!36269))))

(declare-fun t!127345 () Bool)

(declare-fun tb!75973 () Bool)

(assert (=> (and b!1435602 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489190))))) t!127345) tb!75973))

(declare-fun result!92298 () Bool)

(assert (= result!92298 result!92234))

(assert (=> d!413259 t!127345))

(declare-fun t!127347 () Bool)

(declare-fun tb!75975 () Bool)

(assert (=> (and b!1435602 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489185))))) t!127347) tb!75975))

(declare-fun result!92300 () Bool)

(assert (= result!92300 result!92230))

(assert (=> d!413075 t!127347))

(declare-fun t!127349 () Bool)

(declare-fun tb!75977 () Bool)

(assert (=> (and b!1435602 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489190)))))) t!127349) tb!75977))

(declare-fun result!92302 () Bool)

(assert (= result!92302 result!92242))

(assert (=> d!413365 t!127349))

(declare-fun t!127351 () Bool)

(declare-fun tb!75979 () Bool)

(assert (=> (and b!1435602 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186))))) t!127351) tb!75979))

(declare-fun result!92304 () Bool)

(assert (= result!92304 result!92212))

(assert (=> d!412811 t!127351))

(declare-fun t!127353 () Bool)

(declare-fun tb!75981 () Bool)

(assert (=> (and b!1435602 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (toChars!3785 (transformation!2623 (rule!4386 (apply!3818 (tokens!1984 other!32) 0))))) t!127353) tb!75981))

(declare-fun result!92306 () Bool)

(assert (= result!92306 result!92218))

(assert (=> d!412965 t!127353))

(declare-fun t!127355 () Bool)

(declare-fun tb!75983 () Bool)

(assert (=> (and b!1435602 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (t!127239 lt!489186)))))) t!127355) tb!75983))

(declare-fun result!92308 () Bool)

(assert (= result!92308 result!92226))

(assert (=> d!413059 t!127355))

(declare-fun b_and!96533 () Bool)

(declare-fun tp!406508 () Bool)

(assert (=> b!1435602 (= tp!406508 (and (=> t!127351 result!92304) (=> t!127353 result!92306) (=> t!127349 result!92302) (=> t!127355 result!92308) (=> t!127347 result!92300) (=> t!127345 result!92298) b_and!96533))))

(declare-fun e!916338 () Bool)

(assert (=> b!1434392 (= tp!406430 e!916338)))

(declare-fun e!916339 () Bool)

(declare-fun tp!406510 () Bool)

(declare-fun b!1435600 () Bool)

(declare-fun e!916340 () Bool)

(assert (=> b!1435600 (= e!916340 (and (inv!21 (value!84403 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022))))))) e!916339 tp!406510))))

(declare-fun b!1435599 () Bool)

(declare-fun tp!406512 () Bool)

(assert (=> b!1435599 (= e!916338 (and (inv!19845 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))) e!916340 tp!406512))))

(declare-fun e!916336 () Bool)

(declare-fun tp!406511 () Bool)

(declare-fun b!1435601 () Bool)

(assert (=> b!1435601 (= e!916339 (and tp!406511 (inv!19824 (tag!2885 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (inv!19842 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) e!916336))))

(assert (=> b!1435602 (= e!916336 (and tp!406509 tp!406508))))

(assert (= b!1435601 b!1435602))

(assert (= b!1435600 b!1435601))

(assert (= b!1435599 b!1435600))

(assert (= (and b!1434392 ((_ is Cons!14930) (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))) b!1435599))

(declare-fun m!1641115 () Bool)

(assert (=> b!1435600 m!1641115))

(declare-fun m!1641117 () Bool)

(assert (=> b!1435599 m!1641117))

(declare-fun m!1641119 () Bool)

(assert (=> b!1435601 m!1641119))

(declare-fun m!1641121 () Bool)

(assert (=> b!1435601 m!1641121))

(declare-fun tp!406514 () Bool)

(declare-fun tp!406515 () Bool)

(declare-fun b!1435603 () Bool)

(declare-fun e!916342 () Bool)

(assert (=> b!1435603 (= e!916342 (and (inv!19829 (left!12719 (left!12719 (c!235662 (tokens!1984 other!32))))) tp!406515 (inv!19829 (right!13049 (left!12719 (c!235662 (tokens!1984 other!32))))) tp!406514))))

(declare-fun b!1435605 () Bool)

(declare-fun e!916343 () Bool)

(declare-fun tp!406513 () Bool)

(assert (=> b!1435605 (= e!916343 tp!406513)))

(declare-fun b!1435604 () Bool)

(assert (=> b!1435604 (= e!916342 (and (inv!19839 (xs!7806 (left!12719 (c!235662 (tokens!1984 other!32))))) e!916343))))

(assert (=> b!1434412 (= tp!406454 (and (inv!19829 (left!12719 (c!235662 (tokens!1984 other!32)))) e!916342))))

(assert (= (and b!1434412 ((_ is Node!5073) (left!12719 (c!235662 (tokens!1984 other!32))))) b!1435603))

(assert (= b!1435604 b!1435605))

(assert (= (and b!1434412 ((_ is Leaf!7586) (left!12719 (c!235662 (tokens!1984 other!32))))) b!1435604))

(declare-fun m!1641123 () Bool)

(assert (=> b!1435603 m!1641123))

(declare-fun m!1641125 () Bool)

(assert (=> b!1435603 m!1641125))

(declare-fun m!1641127 () Bool)

(assert (=> b!1435604 m!1641127))

(assert (=> b!1434412 m!1637807))

(declare-fun b!1435606 () Bool)

(declare-fun tp!406518 () Bool)

(declare-fun tp!406517 () Bool)

(declare-fun e!916344 () Bool)

(assert (=> b!1435606 (= e!916344 (and (inv!19829 (left!12719 (right!13049 (c!235662 (tokens!1984 other!32))))) tp!406518 (inv!19829 (right!13049 (right!13049 (c!235662 (tokens!1984 other!32))))) tp!406517))))

(declare-fun b!1435608 () Bool)

(declare-fun e!916345 () Bool)

(declare-fun tp!406516 () Bool)

(assert (=> b!1435608 (= e!916345 tp!406516)))

(declare-fun b!1435607 () Bool)

(assert (=> b!1435607 (= e!916344 (and (inv!19839 (xs!7806 (right!13049 (c!235662 (tokens!1984 other!32))))) e!916345))))

(assert (=> b!1434412 (= tp!406453 (and (inv!19829 (right!13049 (c!235662 (tokens!1984 other!32)))) e!916344))))

(assert (= (and b!1434412 ((_ is Node!5073) (right!13049 (c!235662 (tokens!1984 other!32))))) b!1435606))

(assert (= b!1435607 b!1435608))

(assert (= (and b!1434412 ((_ is Leaf!7586) (right!13049 (c!235662 (tokens!1984 other!32))))) b!1435607))

(declare-fun m!1641131 () Bool)

(assert (=> b!1435606 m!1641131))

(declare-fun m!1641135 () Bool)

(assert (=> b!1435606 m!1641135))

(declare-fun m!1641139 () Bool)

(assert (=> b!1435607 m!1641139))

(assert (=> b!1434412 m!1637809))

(declare-fun e!916346 () Bool)

(declare-fun tp!406521 () Bool)

(declare-fun tp!406520 () Bool)

(declare-fun b!1435609 () Bool)

(assert (=> b!1435609 (= e!916346 (and (inv!19829 (left!12719 (left!12719 (c!235662 (tokens!1984 thiss!10022))))) tp!406521 (inv!19829 (right!13049 (left!12719 (c!235662 (tokens!1984 thiss!10022))))) tp!406520))))

(declare-fun b!1435611 () Bool)

(declare-fun e!916347 () Bool)

(declare-fun tp!406519 () Bool)

(assert (=> b!1435611 (= e!916347 tp!406519)))

(declare-fun b!1435610 () Bool)

(assert (=> b!1435610 (= e!916346 (and (inv!19839 (xs!7806 (left!12719 (c!235662 (tokens!1984 thiss!10022))))) e!916347))))

(assert (=> b!1434390 (= tp!406432 (and (inv!19829 (left!12719 (c!235662 (tokens!1984 thiss!10022)))) e!916346))))

(assert (= (and b!1434390 ((_ is Node!5073) (left!12719 (c!235662 (tokens!1984 thiss!10022))))) b!1435609))

(assert (= b!1435610 b!1435611))

(assert (= (and b!1434390 ((_ is Leaf!7586) (left!12719 (c!235662 (tokens!1984 thiss!10022))))) b!1435610))

(declare-fun m!1641151 () Bool)

(assert (=> b!1435609 m!1641151))

(declare-fun m!1641153 () Bool)

(assert (=> b!1435609 m!1641153))

(declare-fun m!1641155 () Bool)

(assert (=> b!1435610 m!1641155))

(assert (=> b!1434390 m!1637789))

(declare-fun tp!406523 () Bool)

(declare-fun e!916348 () Bool)

(declare-fun b!1435612 () Bool)

(declare-fun tp!406524 () Bool)

(assert (=> b!1435612 (= e!916348 (and (inv!19829 (left!12719 (right!13049 (c!235662 (tokens!1984 thiss!10022))))) tp!406524 (inv!19829 (right!13049 (right!13049 (c!235662 (tokens!1984 thiss!10022))))) tp!406523))))

(declare-fun b!1435614 () Bool)

(declare-fun e!916349 () Bool)

(declare-fun tp!406522 () Bool)

(assert (=> b!1435614 (= e!916349 tp!406522)))

(declare-fun b!1435613 () Bool)

(assert (=> b!1435613 (= e!916348 (and (inv!19839 (xs!7806 (right!13049 (c!235662 (tokens!1984 thiss!10022))))) e!916349))))

(assert (=> b!1434390 (= tp!406431 (and (inv!19829 (right!13049 (c!235662 (tokens!1984 thiss!10022)))) e!916348))))

(assert (= (and b!1434390 ((_ is Node!5073) (right!13049 (c!235662 (tokens!1984 thiss!10022))))) b!1435612))

(assert (= b!1435613 b!1435614))

(assert (= (and b!1434390 ((_ is Leaf!7586) (right!13049 (c!235662 (tokens!1984 thiss!10022))))) b!1435613))

(declare-fun m!1641171 () Bool)

(assert (=> b!1435612 m!1641171))

(declare-fun m!1641174 () Bool)

(assert (=> b!1435612 m!1641174))

(declare-fun m!1641177 () Bool)

(assert (=> b!1435613 m!1641177))

(assert (=> b!1434390 m!1637791))

(declare-fun tp!406533 () Bool)

(declare-fun tp!406531 () Bool)

(declare-fun b!1435623 () Bool)

(declare-fun e!916354 () Bool)

(assert (=> b!1435623 (= e!916354 (and (inv!19840 (left!12718 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))))) tp!406533 (inv!19840 (right!13048 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))))) tp!406531))))

(declare-fun b!1435625 () Bool)

(declare-fun e!916355 () Bool)

(declare-fun tp!406532 () Bool)

(assert (=> b!1435625 (= e!916355 tp!406532)))

(declare-fun b!1435624 () Bool)

(declare-fun inv!19848 (IArray!10149) Bool)

(assert (=> b!1435624 (= e!916354 (and (inv!19848 (xs!7805 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))))) e!916355))))

(assert (=> b!1434408 (= tp!406447 (and (inv!19840 (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186))))) e!916354))))

(assert (= (and b!1434408 ((_ is Node!5072) (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))))) b!1435623))

(assert (= b!1435624 b!1435625))

(assert (= (and b!1434408 ((_ is Leaf!7585) (c!235660 (dynLambda!6801 (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))) (value!84403 (h!20331 lt!489186)))))) b!1435624))

(declare-fun m!1641237 () Bool)

(assert (=> b!1435623 m!1641237))

(declare-fun m!1641241 () Bool)

(assert (=> b!1435623 m!1641241))

(declare-fun m!1641243 () Bool)

(assert (=> b!1435624 m!1641243))

(assert (=> b!1434408 m!1637795))

(declare-fun b_lambda!44883 () Bool)

(assert (= b_lambda!44861 (or (and b!1435602 b_free!35565 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 thiss!10022)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))))) (and b!1435594 b_free!35561 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 other!32))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))))) (and b!1434403 b_free!35545 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 thiss!10022)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))))) (and b!1435577 b_free!35557 (= (toChars!3785 (transformation!2623 (rule!4386 (h!20331 (innerList!5133 (xs!7806 (c!235662 (tokens!1984 other!32)))))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))))) (and b!1435538 b_free!35553 (= (toChars!3785 (transformation!2623 (h!20332 (t!127240 (rules!11404 thiss!10022))))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))))) (and b!1434411 b_free!35549 (= (toChars!3785 (transformation!2623 (h!20332 (rules!11404 other!32)))) (toChars!3785 (transformation!2623 (rule!4386 (h!20331 lt!489186)))))) b_lambda!44883)))

(check-sat (not b!1434909) (not d!413223) (not d!413209) (not b!1435222) (not b!1435401) (not d!413239) (not b!1435524) (not b!1435054) b_and!96503 (not b!1435165) (not d!413265) (not b!1435062) (not d!413057) (not b!1435208) (not b!1435599) (not b!1435354) (not b_next!36263) (not b!1435052) (not b!1435137) (not d!412921) (not b!1434659) (not d!412969) (not b!1435389) (not b_next!36255) (not b!1435322) (not d!413399) (not b!1434776) (not d!413043) b_and!96525 (not b!1435479) (not d!412949) (not b!1435163) (not b!1434778) (not b!1435448) (not d!413397) (not b!1434588) (not b_next!36267) (not b!1435368) (not d!413183) (not b!1434408) (not b!1435400) (not b!1435275) (not b!1435283) (not b!1435399) (not d!413185) (not d!413075) (not b!1435610) (not b!1434721) (not b!1435536) (not b!1434427) b_and!96533 (not d!412971) (not b!1435391) (not d!412977) (not b!1435465) (not d!413299) (not b!1435185) (not d!413171) (not d!413293) (not d!412923) (not b!1434694) (not b!1435329) (not b!1434742) (not b!1435069) (not b!1434791) (not b!1435066) (not b!1434739) (not b!1434442) (not b!1435606) (not b!1435271) (not d!413065) (not d!413425) (not d!413517) (not b!1435190) (not b!1435218) (not b!1435613) (not b!1435387) (not d!413067) b_and!96511 (not d!413101) (not b!1435611) (not b!1434918) (not tb!75905) (not b!1434825) (not d!413219) (not b!1435495) (not b!1434768) (not d!413317) (not b!1434800) (not d!413231) (not b!1434585) (not b!1435459) (not b!1435209) (not b!1435574) (not b!1434916) (not d!413345) (not d!413011) (not b!1434845) (not b!1435576) (not b!1434699) (not b!1435189) (not d!413059) (not b!1435407) (not b!1435467) (not b!1435623) (not b!1434465) (not d!413049) (not b_next!36249) b_and!96505 (not bm!97311) (not b!1435447) (not d!413215) (not b!1435188) (not b!1434738) (not b!1434499) (not d!413481) (not b!1435125) (not b!1435313) (not b!1435325) (not b!1435384) (not b!1435063) (not d!413051) (not b!1435133) (not b!1435483) (not d!413413) (not b!1435255) (not b!1435184) (not d!413263) (not d!413199) (not b!1435625) (not d!413359) (not d!413217) (not b!1435050) (not d!413207) (not b!1434583) (not d!413367) (not b!1435405) (not b!1434919) (not b!1435274) (not b!1434792) (not b!1434603) (not b!1435596) (not b_next!36261) (not d!413403) (not b_lambda!44871) (not d!413079) (not d!412947) (not d!413087) (not b!1435215) (not d!413355) (not b!1434530) (not b!1435352) (not tb!75921) (not d!413515) (not b!1434720) (not b!1434612) (not d!412965) (not b!1435562) (not b!1434466) (not d!413071) (not b!1435183) (not b!1435277) (not b!1435312) (not bm!97313) (not b!1434823) (not d!413013) (not d!413373) (not d!412989) (not b!1435187) (not b!1434425) (not b!1434429) (not b!1435256) (not b!1435138) (not b!1434920) (not d!413203) (not b!1434917) (not b!1434630) (not b!1435422) (not b!1435272) (not b!1435430) (not d!413353) (not b!1435369) (not b!1434764) (not d!413021) (not d!413339) (not b!1435297) (not b!1434972) (not d!412897) (not b!1434970) (not b!1434431) (not b!1435487) (not b!1434911) (not b!1435592) (not b!1435298) (not d!413205) (not b!1435078) (not d!413211) b_and!96471 b_and!96529 (not d!413007) (not b!1435385) (not b!1435445) (not b!1434780) b_and!96475 (not b!1435164) (not b!1435603) (not d!413169) (not b_next!36253) (not b!1434785) (not b_next!36247) (not tb!75897) (not b!1435321) (not b!1434696) (not b!1435214) (not b!1435253) (not d!413001) (not b!1435608) (not b!1434813) (not b!1435393) (not b!1434784) (not b!1435348) (not d!413273) (not b!1435600) (not b_lambda!44863) (not b!1434439) (not d!412887) (not b!1434525) (not d!413167) (not b!1434468) (not b!1435219) (not b!1435605) (not b!1435494) (not b!1434716) (not b!1435461) (not b!1435129) (not b!1435394) (not b!1434684) (not b!1435601) (not b!1435366) (not d!413365) (not b!1435490) (not b!1434609) (not bm!97306) (not b!1434464) (not d!413099) (not b!1434621) (not d!412945) (not b!1434771) (not b!1435336) (not d!413407) b_and!96527 (not b!1435604) (not b!1434657) (not d!413243) (not b!1434914) (not d!413389) (not b!1435614) (not b!1435249) (not b!1435276) b_and!96523 (not b!1435295) (not bm!97312) (not b!1435607) (not d!413253) (not b!1435060) (not bm!97297) (not d!413249) (not d!413343) (not d!413251) (not b!1435077) (not b!1434824) (not b!1435207) (not d!413225) (not b!1435404) (not d!413073) (not b!1435402) (not d!413069) (not b!1434390) (not b!1435609) (not d!413005) (not b!1435493) (not b!1435281) (not d!413289) (not d!413063) (not b!1434827) (not b!1435593) (not b!1435331) (not bm!97287) (not d!413363) (not b!1434913) (not b!1435597) (not b_next!36259) (not b!1434740) (not b!1434846) (not b!1434715) (not b!1435560) (not d!413303) (not d!413255) (not b!1434765) (not b!1435345) (not b!1434772) (not b!1434779) (not b!1435624) (not b!1434769) (not d!413055) (not bm!97298) (not d!413197) (not b!1434924) (not d!412883) (not b!1434526) (not b!1435392) (not b_next!36251) (not b!1435230) (not d!413479) (not b!1435381) (not d!413053) (not b!1435470) (not b!1434922) (not b_next!36269) (not b!1435245) (not b!1434578) (not b!1435293) (not d!413089) (not d!413107) (not d!413357) (not b_lambda!44869) (not d!413301) (not b!1435231) b_and!96531 (not b_lambda!44875) (not b!1435058) (not b!1435481) (not d!413395) (not b!1434658) (not b!1434971) (not b!1435323) (not d!412975) (not b!1435492) (not d!412879) (not d!413195) (not b!1434437) (not b!1434915) (not d!413165) (not d!413201) (not b!1435561) tp_is_empty!6837 (not b!1435386) (not d!413019) (not d!413095) (not b!1435139) (not b!1435141) (not b!1435282) (not b!1434695) (not d!413233) (not b!1434697) (not d!412967) (not b!1435131) (not d!412919) (not d!413337) (not b!1434908) (not d!412881) (not b!1434775) (not b!1435081) (not d!413401) (not bm!97305) (not d!412953) (not b!1434698) (not b!1435383) (not b!1435075) (not b!1435132) (not b_next!36265) (not b!1434575) (not b!1434508) (not b!1435468) (not b!1435270) (not b!1435489) (not b!1435285) (not b!1435287) (not b!1434802) (not b!1435082) (not b!1434910) (not b_next!36257) (not b!1435406) (not b!1435464) (not b!1435134) (not b!1435355) (not b!1434533) (not b!1435064) (not b!1435072) b_and!96513 (not b_lambda!44883) (not b!1435575) (not b!1435252) (not d!413351) (not d!412907) (not tb!75909) (not bm!97288) (not b!1435289) (not b!1434787) (not d!413237) (not b!1434600) (not b!1434529) (not b!1435356) (not d!413485) (not b!1435269) (not b!1435491) (not b!1435296) (not b!1435061) (not b!1434417) (not b!1435357) (not d!413213) (not b_lambda!44867) (not b!1434923) (not b!1435428) (not b!1435388) (not b!1434701) (not b!1435236) (not d!413259) (not d!413161) (not d!412905) (not b!1435450) (not d!412901) (not b!1434660) (not b!1434527) (not bm!97289) (not b!1435247) (not bm!97314) (not d!413295) (not d!413027) (not b!1435612) (not d!413361) (not b!1434441) (not b!1435598) (not d!413313) (not b!1434788) (not b!1435485) (not b!1434412) (not d!413427) (not tb!75913) (not b!1434528) (not b!1435182) (not b!1435537) (not b!1434925) (not d!413341))
(check-sat b_and!96503 (not b_next!36263) b_and!96533 b_and!96511 (not b_next!36261) b_and!96471 b_and!96527 b_and!96523 (not b_next!36259) (not b_next!36251) (not b_next!36269) b_and!96531 b_and!96513 (not b_next!36255) (not b_next!36267) b_and!96525 (not b_next!36249) b_and!96505 b_and!96529 b_and!96475 (not b_next!36253) (not b_next!36247) (not b_next!36265) (not b_next!36257))
