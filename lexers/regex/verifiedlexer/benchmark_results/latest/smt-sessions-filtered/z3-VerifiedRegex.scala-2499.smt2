; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131996 () Bool)

(assert start!131996)

(declare-fun b!1430284 () Bool)

(declare-fun e!912933 () Bool)

(declare-datatypes ((C!8000 0))(
  ( (C!8001 (val!4570 Int)) )
))
(declare-datatypes ((List!14880 0))(
  ( (Nil!14814) (Cons!14814 (h!20215 C!8000) (t!126959 List!14880)) )
))
(declare-datatypes ((IArray!10045 0))(
  ( (IArray!10046 (innerList!5080 List!14880)) )
))
(declare-datatypes ((Conc!5020 0))(
  ( (Node!5020 (left!12625 Conc!5020) (right!12955 Conc!5020) (csize!10270 Int) (cheight!5231 Int)) (Leaf!7520 (xs!7749 IArray!10045) (csize!10271 Int)) (Empty!5020) )
))
(declare-datatypes ((BalanceConc!9980 0))(
  ( (BalanceConc!9981 (c!235216 Conc!5020)) )
))
(declare-datatypes ((List!14881 0))(
  ( (Nil!14815) (Cons!14815 (h!20216 (_ BitVec 16)) (t!126960 List!14881)) )
))
(declare-datatypes ((TokenValue!2687 0))(
  ( (FloatLiteralValue!5374 (text!19254 List!14881)) (TokenValueExt!2686 (__x!9172 Int)) (Broken!13435 (value!83636 List!14881)) (Object!2752) (End!2687) (Def!2687) (Underscore!2687) (Match!2687) (Else!2687) (Error!2687) (Case!2687) (If!2687) (Extends!2687) (Abstract!2687) (Class!2687) (Val!2687) (DelimiterValue!5374 (del!2747 List!14881)) (KeywordValue!2693 (value!83637 List!14881)) (CommentValue!5374 (value!83638 List!14881)) (WhitespaceValue!5374 (value!83639 List!14881)) (IndentationValue!2687 (value!83640 List!14881)) (String!17690) (Int32!2687) (Broken!13436 (value!83641 List!14881)) (Boolean!2688) (Unit!22342) (OperatorValue!2690 (op!2747 List!14881)) (IdentifierValue!5374 (value!83642 List!14881)) (IdentifierValue!5375 (value!83643 List!14881)) (WhitespaceValue!5375 (value!83644 List!14881)) (True!5374) (False!5374) (Broken!13437 (value!83645 List!14881)) (Broken!13438 (value!83646 List!14881)) (True!5375) (RightBrace!2687) (RightBracket!2687) (Colon!2687) (Null!2687) (Comma!2687) (LeftBracket!2687) (False!5375) (LeftBrace!2687) (ImaginaryLiteralValue!2687 (text!19255 List!14881)) (StringLiteralValue!8061 (value!83647 List!14881)) (EOFValue!2687 (value!83648 List!14881)) (IdentValue!2687 (value!83649 List!14881)) (DelimiterValue!5375 (value!83650 List!14881)) (DedentValue!2687 (value!83651 List!14881)) (NewLineValue!2687 (value!83652 List!14881)) (IntegerValue!8061 (value!83653 (_ BitVec 32)) (text!19256 List!14881)) (IntegerValue!8062 (value!83654 Int) (text!19257 List!14881)) (Times!2687) (Or!2687) (Equal!2687) (Minus!2687) (Broken!13439 (value!83655 List!14881)) (And!2687) (Div!2687) (LessEqual!2687) (Mod!2687) (Concat!6598) (Not!2687) (Plus!2687) (SpaceValue!2687 (value!83656 List!14881)) (IntegerValue!8063 (value!83657 Int) (text!19258 List!14881)) (StringLiteralValue!8062 (text!19259 List!14881)) (FloatLiteralValue!5375 (text!19260 List!14881)) (BytesLiteralValue!2687 (value!83658 List!14881)) (CommentValue!5375 (value!83659 List!14881)) (StringLiteralValue!8063 (value!83660 List!14881)) (ErrorTokenValue!2687 (msg!2748 List!14881)) )
))
(declare-datatypes ((Regex!3911 0))(
  ( (ElementMatch!3911 (c!235217 C!8000)) (Concat!6599 (regOne!8334 Regex!3911) (regTwo!8334 Regex!3911)) (EmptyExpr!3911) (Star!3911 (reg!4240 Regex!3911)) (EmptyLang!3911) (Union!3911 (regOne!8335 Regex!3911) (regTwo!8335 Regex!3911)) )
))
(declare-datatypes ((String!17691 0))(
  ( (String!17692 (value!83661 String)) )
))
(declare-datatypes ((TokenValueInjection!5034 0))(
  ( (TokenValueInjection!5035 (toValue!3900 Int) (toChars!3759 Int)) )
))
(declare-datatypes ((Rule!4994 0))(
  ( (Rule!4995 (regex!2597 Regex!3911) (tag!2859 String!17691) (isSeparator!2597 Bool) (transformation!2597 TokenValueInjection!5034)) )
))
(declare-datatypes ((Token!4856 0))(
  ( (Token!4857 (value!83662 TokenValue!2687) (rule!4360 Rule!4994) (size!12153 Int) (originalCharacters!3459 List!14880)) )
))
(declare-datatypes ((List!14882 0))(
  ( (Nil!14816) (Cons!14816 (h!20217 Token!4856) (t!126961 List!14882)) )
))
(declare-fun lt!485505 () List!14882)

(declare-datatypes ((IArray!10047 0))(
  ( (IArray!10048 (innerList!5081 List!14882)) )
))
(declare-datatypes ((Conc!5021 0))(
  ( (Node!5021 (left!12626 Conc!5021) (right!12956 Conc!5021) (csize!10272 Int) (cheight!5232 Int)) (Leaf!7521 (xs!7750 IArray!10047) (csize!10273 Int)) (Empty!5021) )
))
(declare-datatypes ((BalanceConc!9982 0))(
  ( (BalanceConc!9983 (c!235218 Conc!5021)) )
))
(declare-datatypes ((List!14883 0))(
  ( (Nil!14817) (Cons!14817 (h!20218 Rule!4994) (t!126962 List!14883)) )
))
(declare-datatypes ((PrintableTokens!976 0))(
  ( (PrintableTokens!977 (rules!11264 List!14883) (tokens!1934 BalanceConc!9982)) )
))
(declare-fun thiss!10022 () PrintableTokens!976)

(declare-datatypes ((LexerInterface!2261 0))(
  ( (LexerInterfaceExt!2258 (__x!9173 Int)) (Lexer!2259) )
))
(declare-fun tokensListTwoByTwoPredicateSeparableList!219 (LexerInterface!2261 List!14882 List!14883) Bool)

(assert (=> b!1430284 (= e!912933 (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 lt!485505 (rules!11264 thiss!10022)))))

(declare-fun b!1430285 () Bool)

(declare-fun e!912937 () Bool)

(declare-fun tp!405557 () Bool)

(declare-fun inv!19656 (Conc!5021) Bool)

(assert (=> b!1430285 (= e!912937 (and (inv!19656 (c!235218 (tokens!1934 thiss!10022))) tp!405557))))

(declare-fun e!912934 () Bool)

(declare-fun other!32 () PrintableTokens!976)

(declare-fun tp!405555 () Bool)

(declare-fun b!1430287 () Bool)

(declare-fun e!912938 () Bool)

(declare-fun inv!19657 (BalanceConc!9982) Bool)

(assert (=> b!1430287 (= e!912934 (and tp!405555 (inv!19657 (tokens!1934 other!32)) e!912938))))

(declare-fun e!912932 () Bool)

(declare-fun tp!405556 () Bool)

(declare-fun b!1430288 () Bool)

(assert (=> b!1430288 (= e!912932 (and tp!405556 (inv!19657 (tokens!1934 thiss!10022)) e!912937))))

(declare-fun b!1430289 () Bool)

(declare-fun res!647225 () Bool)

(declare-fun e!912935 () Bool)

(assert (=> b!1430289 (=> (not res!647225) (not e!912935))))

(declare-fun isEmpty!9172 (BalanceConc!9982) Bool)

(assert (=> b!1430289 (= res!647225 (not (isEmpty!9172 (tokens!1934 thiss!10022))))))

(declare-fun b!1430290 () Bool)

(declare-fun e!912936 () Bool)

(declare-fun size!12154 (BalanceConc!9982) Int)

(declare-fun ++!3926 (BalanceConc!9982 BalanceConc!9982) BalanceConc!9982)

(assert (=> b!1430290 (= e!912936 (<= 0 (size!12154 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))))))

(assert (=> b!1430290 e!912933))

(declare-fun res!647222 () Bool)

(assert (=> b!1430290 (=> (not res!647222) (not e!912933))))

(declare-fun rulesProduceEachTokenIndividuallyList!704 (LexerInterface!2261 List!14883 List!14882) Bool)

(assert (=> b!1430290 (= res!647222 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) lt!485505))))

(declare-fun lt!485510 () List!14882)

(declare-fun lt!485506 () List!14882)

(declare-fun ++!3927 (List!14882 List!14882) List!14882)

(assert (=> b!1430290 (= lt!485505 (++!3927 lt!485510 lt!485506))))

(declare-datatypes ((Unit!22343 0))(
  ( (Unit!22344) )
))
(declare-fun lt!485500 () Unit!22343)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!34 (LexerInterface!2261 List!14883 List!14882 List!14882) Unit!22343)

(assert (=> b!1430290 (= lt!485500 (lemmaRulesProduceEachTokenIndividuallyConcat!34 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485506))))

(declare-fun lt!485503 () Unit!22343)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!34 (LexerInterface!2261 List!14882 List!14882 List!14883) Unit!22343)

(assert (=> b!1430290 (= lt!485503 (tokensListTwoByTwoPredicateConcatSeparableTokensList!34 Lexer!2259 lt!485510 lt!485506 (rules!11264 thiss!10022)))))

(declare-fun b!1430291 () Bool)

(declare-fun e!912939 () Bool)

(assert (=> b!1430291 (= e!912939 e!912935)))

(declare-fun res!647223 () Bool)

(assert (=> b!1430291 (=> (not res!647223) (not e!912935))))

(assert (=> b!1430291 (= res!647223 (not (isEmpty!9172 (tokens!1934 other!32))))))

(declare-fun lt!485509 () Unit!22343)

(declare-fun lemmaInvariant!293 (PrintableTokens!976) Unit!22343)

(assert (=> b!1430291 (= lt!485509 (lemmaInvariant!293 thiss!10022))))

(declare-fun lt!485504 () Unit!22343)

(assert (=> b!1430291 (= lt!485504 (lemmaInvariant!293 other!32))))

(declare-fun b!1430292 () Bool)

(assert (=> b!1430292 (= e!912935 (not e!912936))))

(declare-fun res!647224 () Bool)

(assert (=> b!1430292 (=> res!647224 e!912936)))

(declare-fun lt!485501 () Token!4856)

(declare-fun lt!485502 () Token!4856)

(declare-fun separableTokensPredicate!496 (LexerInterface!2261 Token!4856 Token!4856 List!14883) Bool)

(assert (=> b!1430292 (= res!647224 (not (separableTokensPredicate!496 Lexer!2259 lt!485502 lt!485501 (rules!11264 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1194 (LexerInterface!2261 List!14883 Token!4856) Bool)

(assert (=> b!1430292 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485501)))

(declare-fun lt!485507 () Unit!22343)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 (LexerInterface!2261 List!14883 List!14882 Token!4856) Unit!22343)

(assert (=> b!1430292 (= lt!485507 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485506 lt!485501))))

(declare-fun head!2843 (BalanceConc!9982) Token!4856)

(assert (=> b!1430292 (= lt!485501 (head!2843 (tokens!1934 other!32)))))

(declare-fun list!5883 (BalanceConc!9982) List!14882)

(assert (=> b!1430292 (= lt!485506 (list!5883 (tokens!1934 other!32)))))

(assert (=> b!1430292 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485502)))

(declare-fun lt!485508 () Unit!22343)

(assert (=> b!1430292 (= lt!485508 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485502))))

(declare-fun last!123 (BalanceConc!9982) Token!4856)

(assert (=> b!1430292 (= lt!485502 (last!123 (tokens!1934 thiss!10022)))))

(assert (=> b!1430292 (= lt!485510 (list!5883 (tokens!1934 thiss!10022)))))

(declare-fun b!1430286 () Bool)

(declare-fun tp!405558 () Bool)

(assert (=> b!1430286 (= e!912938 (and (inv!19656 (c!235218 (tokens!1934 other!32))) tp!405558))))

(declare-fun res!647226 () Bool)

(assert (=> start!131996 (=> (not res!647226) (not e!912939))))

(assert (=> start!131996 (= res!647226 (= (rules!11264 thiss!10022) (rules!11264 other!32)))))

(assert (=> start!131996 e!912939))

(declare-fun inv!19658 (PrintableTokens!976) Bool)

(assert (=> start!131996 (and (inv!19658 thiss!10022) e!912932)))

(assert (=> start!131996 (and (inv!19658 other!32) e!912934)))

(assert (= (and start!131996 res!647226) b!1430291))

(assert (= (and b!1430291 res!647223) b!1430289))

(assert (= (and b!1430289 res!647225) b!1430292))

(assert (= (and b!1430292 (not res!647224)) b!1430290))

(assert (= (and b!1430290 res!647222) b!1430284))

(assert (= b!1430288 b!1430285))

(assert (= start!131996 b!1430288))

(assert (= b!1430287 b!1430286))

(assert (= start!131996 b!1430287))

(declare-fun m!1629145 () Bool)

(assert (=> b!1430286 m!1629145))

(declare-fun m!1629147 () Bool)

(assert (=> start!131996 m!1629147))

(declare-fun m!1629149 () Bool)

(assert (=> start!131996 m!1629149))

(declare-fun m!1629151 () Bool)

(assert (=> b!1430290 m!1629151))

(declare-fun m!1629153 () Bool)

(assert (=> b!1430290 m!1629153))

(declare-fun m!1629155 () Bool)

(assert (=> b!1430290 m!1629155))

(declare-fun m!1629157 () Bool)

(assert (=> b!1430290 m!1629157))

(declare-fun m!1629159 () Bool)

(assert (=> b!1430290 m!1629159))

(assert (=> b!1430290 m!1629155))

(declare-fun m!1629161 () Bool)

(assert (=> b!1430290 m!1629161))

(declare-fun m!1629163 () Bool)

(assert (=> b!1430289 m!1629163))

(declare-fun m!1629165 () Bool)

(assert (=> b!1430285 m!1629165))

(declare-fun m!1629167 () Bool)

(assert (=> b!1430287 m!1629167))

(declare-fun m!1629169 () Bool)

(assert (=> b!1430284 m!1629169))

(declare-fun m!1629171 () Bool)

(assert (=> b!1430292 m!1629171))

(declare-fun m!1629173 () Bool)

(assert (=> b!1430292 m!1629173))

(declare-fun m!1629175 () Bool)

(assert (=> b!1430292 m!1629175))

(declare-fun m!1629177 () Bool)

(assert (=> b!1430292 m!1629177))

(declare-fun m!1629179 () Bool)

(assert (=> b!1430292 m!1629179))

(declare-fun m!1629181 () Bool)

(assert (=> b!1430292 m!1629181))

(declare-fun m!1629183 () Bool)

(assert (=> b!1430292 m!1629183))

(declare-fun m!1629185 () Bool)

(assert (=> b!1430292 m!1629185))

(declare-fun m!1629187 () Bool)

(assert (=> b!1430292 m!1629187))

(declare-fun m!1629189 () Bool)

(assert (=> b!1430288 m!1629189))

(declare-fun m!1629191 () Bool)

(assert (=> b!1430291 m!1629191))

(declare-fun m!1629193 () Bool)

(assert (=> b!1430291 m!1629193))

(declare-fun m!1629195 () Bool)

(assert (=> b!1430291 m!1629195))

(check-sat (not b!1430285) (not b!1430286) (not b!1430287) (not b!1430289) (not b!1430291) (not b!1430284) (not start!131996) (not b!1430292) (not b!1430290) (not b!1430288))
(check-sat)
(get-model)

(declare-fun d!411398 () Bool)

(declare-fun lt!485513 () Token!4856)

(declare-fun head!2846 (List!14882) Token!4856)

(assert (=> d!411398 (= lt!485513 (head!2846 (list!5883 (tokens!1934 other!32))))))

(declare-fun head!2847 (Conc!5021) Token!4856)

(assert (=> d!411398 (= lt!485513 (head!2847 (c!235218 (tokens!1934 other!32))))))

(assert (=> d!411398 (not (isEmpty!9172 (tokens!1934 other!32)))))

(assert (=> d!411398 (= (head!2843 (tokens!1934 other!32)) lt!485513)))

(declare-fun bs!340635 () Bool)

(assert (= bs!340635 d!411398))

(assert (=> bs!340635 m!1629183))

(assert (=> bs!340635 m!1629183))

(declare-fun m!1629201 () Bool)

(assert (=> bs!340635 m!1629201))

(declare-fun m!1629203 () Bool)

(assert (=> bs!340635 m!1629203))

(assert (=> bs!340635 m!1629191))

(assert (=> b!1430292 d!411398))

(declare-fun d!411400 () Bool)

(declare-fun lt!485516 () Token!4856)

(declare-fun last!126 (List!14882) Token!4856)

(assert (=> d!411400 (= lt!485516 (last!126 (list!5883 (tokens!1934 thiss!10022))))))

(declare-fun last!127 (Conc!5021) Token!4856)

(assert (=> d!411400 (= lt!485516 (last!127 (c!235218 (tokens!1934 thiss!10022))))))

(assert (=> d!411400 (not (isEmpty!9172 (tokens!1934 thiss!10022)))))

(assert (=> d!411400 (= (last!123 (tokens!1934 thiss!10022)) lt!485516)))

(declare-fun bs!340636 () Bool)

(assert (= bs!340636 d!411400))

(assert (=> bs!340636 m!1629177))

(assert (=> bs!340636 m!1629177))

(declare-fun m!1629205 () Bool)

(assert (=> bs!340636 m!1629205))

(declare-fun m!1629207 () Bool)

(assert (=> bs!340636 m!1629207))

(assert (=> bs!340636 m!1629163))

(assert (=> b!1430292 d!411400))

(declare-fun d!411402 () Bool)

(declare-fun list!5885 (Conc!5021) List!14882)

(assert (=> d!411402 (= (list!5883 (tokens!1934 thiss!10022)) (list!5885 (c!235218 (tokens!1934 thiss!10022))))))

(declare-fun bs!340637 () Bool)

(assert (= bs!340637 d!411402))

(declare-fun m!1629209 () Bool)

(assert (=> bs!340637 m!1629209))

(assert (=> b!1430292 d!411402))

(declare-fun d!411404 () Bool)

(assert (=> d!411404 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485501)))

(declare-fun lt!485543 () Unit!22343)

(declare-fun choose!8797 (LexerInterface!2261 List!14883 List!14882 Token!4856) Unit!22343)

(assert (=> d!411404 (= lt!485543 (choose!8797 Lexer!2259 (rules!11264 thiss!10022) lt!485506 lt!485501))))

(declare-fun isEmpty!9177 (List!14883) Bool)

(assert (=> d!411404 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411404 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485506 lt!485501) lt!485543)))

(declare-fun bs!340640 () Bool)

(assert (= bs!340640 d!411404))

(assert (=> bs!340640 m!1629187))

(declare-fun m!1629249 () Bool)

(assert (=> bs!340640 m!1629249))

(declare-fun m!1629251 () Bool)

(assert (=> bs!340640 m!1629251))

(assert (=> b!1430292 d!411404))

(declare-fun d!411416 () Bool)

(declare-fun lt!485549 () Bool)

(declare-fun e!912965 () Bool)

(assert (=> d!411416 (= lt!485549 e!912965)))

(declare-fun res!647267 () Bool)

(assert (=> d!411416 (=> (not res!647267) (not e!912965))))

(declare-datatypes ((tuple2!14076 0))(
  ( (tuple2!14077 (_1!7924 BalanceConc!9982) (_2!7924 BalanceConc!9980)) )
))
(declare-fun lex!1031 (LexerInterface!2261 List!14883 BalanceConc!9980) tuple2!14076)

(declare-fun print!1040 (LexerInterface!2261 BalanceConc!9982) BalanceConc!9980)

(declare-fun singletonSeq!1201 (Token!4856) BalanceConc!9982)

(assert (=> d!411416 (= res!647267 (= (list!5883 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502))))) (list!5883 (singletonSeq!1201 lt!485502))))))

(declare-fun e!912964 () Bool)

(assert (=> d!411416 (= lt!485549 e!912964)))

(declare-fun res!647268 () Bool)

(assert (=> d!411416 (=> (not res!647268) (not e!912964))))

(declare-fun lt!485548 () tuple2!14076)

(assert (=> d!411416 (= res!647268 (= (size!12154 (_1!7924 lt!485548)) 1))))

(assert (=> d!411416 (= lt!485548 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502))))))

(assert (=> d!411416 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411416 (= (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485502) lt!485549)))

(declare-fun b!1430334 () Bool)

(declare-fun res!647266 () Bool)

(assert (=> b!1430334 (=> (not res!647266) (not e!912964))))

(declare-fun apply!3776 (BalanceConc!9982 Int) Token!4856)

(assert (=> b!1430334 (= res!647266 (= (apply!3776 (_1!7924 lt!485548) 0) lt!485502))))

(declare-fun b!1430335 () Bool)

(declare-fun isEmpty!9178 (BalanceConc!9980) Bool)

(assert (=> b!1430335 (= e!912964 (isEmpty!9178 (_2!7924 lt!485548)))))

(declare-fun b!1430336 () Bool)

(assert (=> b!1430336 (= e!912965 (isEmpty!9178 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502))))))))

(assert (= (and d!411416 res!647268) b!1430334))

(assert (= (and b!1430334 res!647266) b!1430335))

(assert (= (and d!411416 res!647267) b!1430336))

(declare-fun m!1629253 () Bool)

(assert (=> d!411416 m!1629253))

(declare-fun m!1629255 () Bool)

(assert (=> d!411416 m!1629255))

(declare-fun m!1629257 () Bool)

(assert (=> d!411416 m!1629257))

(assert (=> d!411416 m!1629253))

(assert (=> d!411416 m!1629255))

(declare-fun m!1629259 () Bool)

(assert (=> d!411416 m!1629259))

(assert (=> d!411416 m!1629251))

(assert (=> d!411416 m!1629253))

(declare-fun m!1629261 () Bool)

(assert (=> d!411416 m!1629261))

(declare-fun m!1629263 () Bool)

(assert (=> d!411416 m!1629263))

(declare-fun m!1629265 () Bool)

(assert (=> b!1430334 m!1629265))

(declare-fun m!1629267 () Bool)

(assert (=> b!1430335 m!1629267))

(assert (=> b!1430336 m!1629253))

(assert (=> b!1430336 m!1629253))

(assert (=> b!1430336 m!1629255))

(assert (=> b!1430336 m!1629255))

(assert (=> b!1430336 m!1629257))

(declare-fun m!1629269 () Bool)

(assert (=> b!1430336 m!1629269))

(assert (=> b!1430292 d!411416))

(declare-fun d!411422 () Bool)

(assert (=> d!411422 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485502)))

(declare-fun lt!485550 () Unit!22343)

(assert (=> d!411422 (= lt!485550 (choose!8797 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485502))))

(assert (=> d!411422 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411422 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485502) lt!485550)))

(declare-fun bs!340641 () Bool)

(assert (= bs!340641 d!411422))

(assert (=> bs!340641 m!1629173))

(declare-fun m!1629271 () Bool)

(assert (=> bs!340641 m!1629271))

(assert (=> bs!340641 m!1629251))

(assert (=> b!1430292 d!411422))

(declare-fun d!411424 () Bool)

(declare-fun lt!485552 () Bool)

(declare-fun e!912967 () Bool)

(assert (=> d!411424 (= lt!485552 e!912967)))

(declare-fun res!647270 () Bool)

(assert (=> d!411424 (=> (not res!647270) (not e!912967))))

(assert (=> d!411424 (= res!647270 (= (list!5883 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501))))) (list!5883 (singletonSeq!1201 lt!485501))))))

(declare-fun e!912966 () Bool)

(assert (=> d!411424 (= lt!485552 e!912966)))

(declare-fun res!647271 () Bool)

(assert (=> d!411424 (=> (not res!647271) (not e!912966))))

(declare-fun lt!485551 () tuple2!14076)

(assert (=> d!411424 (= res!647271 (= (size!12154 (_1!7924 lt!485551)) 1))))

(assert (=> d!411424 (= lt!485551 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501))))))

(assert (=> d!411424 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411424 (= (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485501) lt!485552)))

(declare-fun b!1430337 () Bool)

(declare-fun res!647269 () Bool)

(assert (=> b!1430337 (=> (not res!647269) (not e!912966))))

(assert (=> b!1430337 (= res!647269 (= (apply!3776 (_1!7924 lt!485551) 0) lt!485501))))

(declare-fun b!1430338 () Bool)

(assert (=> b!1430338 (= e!912966 (isEmpty!9178 (_2!7924 lt!485551)))))

(declare-fun b!1430339 () Bool)

(assert (=> b!1430339 (= e!912967 (isEmpty!9178 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501))))))))

(assert (= (and d!411424 res!647271) b!1430337))

(assert (= (and b!1430337 res!647269) b!1430338))

(assert (= (and d!411424 res!647270) b!1430339))

(declare-fun m!1629273 () Bool)

(assert (=> d!411424 m!1629273))

(declare-fun m!1629275 () Bool)

(assert (=> d!411424 m!1629275))

(declare-fun m!1629277 () Bool)

(assert (=> d!411424 m!1629277))

(assert (=> d!411424 m!1629273))

(assert (=> d!411424 m!1629275))

(declare-fun m!1629279 () Bool)

(assert (=> d!411424 m!1629279))

(assert (=> d!411424 m!1629251))

(assert (=> d!411424 m!1629273))

(declare-fun m!1629281 () Bool)

(assert (=> d!411424 m!1629281))

(declare-fun m!1629283 () Bool)

(assert (=> d!411424 m!1629283))

(declare-fun m!1629285 () Bool)

(assert (=> b!1430337 m!1629285))

(declare-fun m!1629287 () Bool)

(assert (=> b!1430338 m!1629287))

(assert (=> b!1430339 m!1629273))

(assert (=> b!1430339 m!1629273))

(assert (=> b!1430339 m!1629275))

(assert (=> b!1430339 m!1629275))

(assert (=> b!1430339 m!1629277))

(declare-fun m!1629289 () Bool)

(assert (=> b!1430339 m!1629289))

(assert (=> b!1430292 d!411424))

(declare-fun d!411426 () Bool)

(declare-fun prefixMatchZipperSequence!319 (Regex!3911 BalanceConc!9980) Bool)

(declare-fun rulesRegex!379 (LexerInterface!2261 List!14883) Regex!3911)

(declare-fun ++!3930 (BalanceConc!9980 BalanceConc!9980) BalanceConc!9980)

(declare-fun charsOf!1502 (Token!4856) BalanceConc!9980)

(declare-fun singletonSeq!1202 (C!8000) BalanceConc!9980)

(declare-fun apply!3777 (BalanceConc!9980 Int) C!8000)

(assert (=> d!411426 (= (separableTokensPredicate!496 Lexer!2259 lt!485502 lt!485501 (rules!11264 thiss!10022)) (not (prefixMatchZipperSequence!319 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)) (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))))))

(declare-fun bs!340642 () Bool)

(assert (= bs!340642 d!411426))

(declare-fun m!1629291 () Bool)

(assert (=> bs!340642 m!1629291))

(declare-fun m!1629293 () Bool)

(assert (=> bs!340642 m!1629293))

(declare-fun m!1629295 () Bool)

(assert (=> bs!340642 m!1629295))

(declare-fun m!1629297 () Bool)

(assert (=> bs!340642 m!1629297))

(assert (=> bs!340642 m!1629291))

(assert (=> bs!340642 m!1629297))

(declare-fun m!1629299 () Bool)

(assert (=> bs!340642 m!1629299))

(declare-fun m!1629301 () Bool)

(assert (=> bs!340642 m!1629301))

(assert (=> bs!340642 m!1629295))

(assert (=> bs!340642 m!1629301))

(assert (=> bs!340642 m!1629293))

(assert (=> bs!340642 m!1629299))

(declare-fun m!1629303 () Bool)

(assert (=> bs!340642 m!1629303))

(assert (=> b!1430292 d!411426))

(declare-fun d!411428 () Bool)

(assert (=> d!411428 (= (list!5883 (tokens!1934 other!32)) (list!5885 (c!235218 (tokens!1934 other!32))))))

(declare-fun bs!340643 () Bool)

(assert (= bs!340643 d!411428))

(declare-fun m!1629305 () Bool)

(assert (=> bs!340643 m!1629305))

(assert (=> b!1430292 d!411428))

(declare-fun d!411430 () Bool)

(declare-fun isBalanced!1487 (Conc!5021) Bool)

(assert (=> d!411430 (= (inv!19657 (tokens!1934 other!32)) (isBalanced!1487 (c!235218 (tokens!1934 other!32))))))

(declare-fun bs!340644 () Bool)

(assert (= bs!340644 d!411430))

(declare-fun m!1629307 () Bool)

(assert (=> bs!340644 m!1629307))

(assert (=> b!1430287 d!411430))

(declare-fun d!411432 () Bool)

(declare-fun res!647282 () Bool)

(declare-fun e!912974 () Bool)

(assert (=> d!411432 (=> (not res!647282) (not e!912974))))

(assert (=> d!411432 (= res!647282 (not (isEmpty!9177 (rules!11264 thiss!10022))))))

(assert (=> d!411432 (= (inv!19658 thiss!10022) e!912974)))

(declare-fun b!1430350 () Bool)

(declare-fun res!647283 () Bool)

(assert (=> b!1430350 (=> (not res!647283) (not e!912974))))

(declare-fun rulesInvariant!2109 (LexerInterface!2261 List!14883) Bool)

(assert (=> b!1430350 (= res!647283 (rulesInvariant!2109 Lexer!2259 (rules!11264 thiss!10022)))))

(declare-fun b!1430351 () Bool)

(declare-fun res!647284 () Bool)

(assert (=> b!1430351 (=> (not res!647284) (not e!912974))))

(declare-fun rulesProduceEachTokenIndividually!827 (LexerInterface!2261 List!14883 BalanceConc!9982) Bool)

(assert (=> b!1430351 (= res!647284 (rulesProduceEachTokenIndividually!827 Lexer!2259 (rules!11264 thiss!10022) (tokens!1934 thiss!10022)))))

(declare-fun b!1430352 () Bool)

(declare-fun separableTokens!211 (LexerInterface!2261 BalanceConc!9982 List!14883) Bool)

(assert (=> b!1430352 (= e!912974 (separableTokens!211 Lexer!2259 (tokens!1934 thiss!10022) (rules!11264 thiss!10022)))))

(assert (= (and d!411432 res!647282) b!1430350))

(assert (= (and b!1430350 res!647283) b!1430351))

(assert (= (and b!1430351 res!647284) b!1430352))

(assert (=> d!411432 m!1629251))

(declare-fun m!1629309 () Bool)

(assert (=> b!1430350 m!1629309))

(declare-fun m!1629311 () Bool)

(assert (=> b!1430351 m!1629311))

(declare-fun m!1629313 () Bool)

(assert (=> b!1430352 m!1629313))

(assert (=> start!131996 d!411432))

(declare-fun d!411434 () Bool)

(declare-fun res!647285 () Bool)

(declare-fun e!912975 () Bool)

(assert (=> d!411434 (=> (not res!647285) (not e!912975))))

(assert (=> d!411434 (= res!647285 (not (isEmpty!9177 (rules!11264 other!32))))))

(assert (=> d!411434 (= (inv!19658 other!32) e!912975)))

(declare-fun b!1430353 () Bool)

(declare-fun res!647286 () Bool)

(assert (=> b!1430353 (=> (not res!647286) (not e!912975))))

(assert (=> b!1430353 (= res!647286 (rulesInvariant!2109 Lexer!2259 (rules!11264 other!32)))))

(declare-fun b!1430354 () Bool)

(declare-fun res!647287 () Bool)

(assert (=> b!1430354 (=> (not res!647287) (not e!912975))))

(assert (=> b!1430354 (= res!647287 (rulesProduceEachTokenIndividually!827 Lexer!2259 (rules!11264 other!32) (tokens!1934 other!32)))))

(declare-fun b!1430355 () Bool)

(assert (=> b!1430355 (= e!912975 (separableTokens!211 Lexer!2259 (tokens!1934 other!32) (rules!11264 other!32)))))

(assert (= (and d!411434 res!647285) b!1430353))

(assert (= (and b!1430353 res!647286) b!1430354))

(assert (= (and b!1430354 res!647287) b!1430355))

(declare-fun m!1629315 () Bool)

(assert (=> d!411434 m!1629315))

(declare-fun m!1629317 () Bool)

(assert (=> b!1430353 m!1629317))

(declare-fun m!1629319 () Bool)

(assert (=> b!1430354 m!1629319))

(declare-fun m!1629321 () Bool)

(assert (=> b!1430355 m!1629321))

(assert (=> start!131996 d!411434))

(declare-fun d!411436 () Bool)

(assert (=> d!411436 (= (inv!19657 (tokens!1934 thiss!10022)) (isBalanced!1487 (c!235218 (tokens!1934 thiss!10022))))))

(declare-fun bs!340645 () Bool)

(assert (= bs!340645 d!411436))

(declare-fun m!1629323 () Bool)

(assert (=> bs!340645 m!1629323))

(assert (=> b!1430288 d!411436))

(declare-fun d!411438 () Bool)

(declare-fun lt!485557 () Bool)

(declare-fun isEmpty!9179 (List!14882) Bool)

(assert (=> d!411438 (= lt!485557 (isEmpty!9179 (list!5883 (tokens!1934 thiss!10022))))))

(declare-fun isEmpty!9180 (Conc!5021) Bool)

(assert (=> d!411438 (= lt!485557 (isEmpty!9180 (c!235218 (tokens!1934 thiss!10022))))))

(assert (=> d!411438 (= (isEmpty!9172 (tokens!1934 thiss!10022)) lt!485557)))

(declare-fun bs!340646 () Bool)

(assert (= bs!340646 d!411438))

(assert (=> bs!340646 m!1629177))

(assert (=> bs!340646 m!1629177))

(declare-fun m!1629325 () Bool)

(assert (=> bs!340646 m!1629325))

(declare-fun m!1629327 () Bool)

(assert (=> bs!340646 m!1629327))

(assert (=> b!1430289 d!411438))

(declare-fun d!411440 () Bool)

(declare-fun res!647293 () Bool)

(declare-fun e!912980 () Bool)

(assert (=> d!411440 (=> res!647293 e!912980)))

(get-info :version)

(assert (=> d!411440 (= res!647293 (or (not ((_ is Cons!14816) lt!485505)) (not ((_ is Cons!14816) (t!126961 lt!485505)))))))

(assert (=> d!411440 (= (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 lt!485505 (rules!11264 thiss!10022)) e!912980)))

(declare-fun b!1430360 () Bool)

(declare-fun e!912981 () Bool)

(assert (=> b!1430360 (= e!912980 e!912981)))

(declare-fun res!647292 () Bool)

(assert (=> b!1430360 (=> (not res!647292) (not e!912981))))

(assert (=> b!1430360 (= res!647292 (separableTokensPredicate!496 Lexer!2259 (h!20217 lt!485505) (h!20217 (t!126961 lt!485505)) (rules!11264 thiss!10022)))))

(declare-fun lt!485577 () Unit!22343)

(declare-fun Unit!22350 () Unit!22343)

(assert (=> b!1430360 (= lt!485577 Unit!22350)))

(declare-fun size!12158 (BalanceConc!9980) Int)

(assert (=> b!1430360 (> (size!12158 (charsOf!1502 (h!20217 (t!126961 lt!485505)))) 0)))

(declare-fun lt!485578 () Unit!22343)

(declare-fun Unit!22351 () Unit!22343)

(assert (=> b!1430360 (= lt!485578 Unit!22351)))

(assert (=> b!1430360 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 lt!485505)))))

(declare-fun lt!485573 () Unit!22343)

(declare-fun Unit!22352 () Unit!22343)

(assert (=> b!1430360 (= lt!485573 Unit!22352)))

(assert (=> b!1430360 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485505))))

(declare-fun lt!485574 () Unit!22343)

(declare-fun lt!485576 () Unit!22343)

(assert (=> b!1430360 (= lt!485574 lt!485576)))

(assert (=> b!1430360 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 lt!485505)))))

(assert (=> b!1430360 (= lt!485576 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485505 (h!20217 (t!126961 lt!485505))))))

(declare-fun lt!485575 () Unit!22343)

(declare-fun lt!485572 () Unit!22343)

(assert (=> b!1430360 (= lt!485575 lt!485572)))

(assert (=> b!1430360 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485505))))

(assert (=> b!1430360 (= lt!485572 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485505 (h!20217 lt!485505)))))

(declare-fun b!1430361 () Bool)

(assert (=> b!1430361 (= e!912981 (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))) (rules!11264 thiss!10022)))))

(assert (= (and d!411440 (not res!647293)) b!1430360))

(assert (= (and b!1430360 res!647292) b!1430361))

(declare-fun m!1629329 () Bool)

(assert (=> b!1430360 m!1629329))

(declare-fun m!1629331 () Bool)

(assert (=> b!1430360 m!1629331))

(declare-fun m!1629333 () Bool)

(assert (=> b!1430360 m!1629333))

(declare-fun m!1629335 () Bool)

(assert (=> b!1430360 m!1629335))

(declare-fun m!1629337 () Bool)

(assert (=> b!1430360 m!1629337))

(declare-fun m!1629339 () Bool)

(assert (=> b!1430360 m!1629339))

(declare-fun m!1629341 () Bool)

(assert (=> b!1430360 m!1629341))

(assert (=> b!1430360 m!1629335))

(declare-fun m!1629343 () Bool)

(assert (=> b!1430361 m!1629343))

(assert (=> b!1430284 d!411440))

(declare-fun d!411442 () Bool)

(assert (=> d!411442 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (++!3927 lt!485510 lt!485506))))

(declare-fun lt!485582 () Unit!22343)

(declare-fun choose!8798 (LexerInterface!2261 List!14883 List!14882 List!14882) Unit!22343)

(assert (=> d!411442 (= lt!485582 (choose!8798 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485506))))

(assert (=> d!411442 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411442 (= (lemmaRulesProduceEachTokenIndividuallyConcat!34 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485506) lt!485582)))

(declare-fun bs!340647 () Bool)

(assert (= bs!340647 d!411442))

(assert (=> bs!340647 m!1629159))

(assert (=> bs!340647 m!1629159))

(declare-fun m!1629349 () Bool)

(assert (=> bs!340647 m!1629349))

(declare-fun m!1629351 () Bool)

(assert (=> bs!340647 m!1629351))

(assert (=> bs!340647 m!1629251))

(assert (=> b!1430290 d!411442))

(declare-fun b!1430385 () Bool)

(declare-fun res!647307 () Bool)

(declare-fun e!912995 () Bool)

(assert (=> b!1430385 (=> (not res!647307) (not e!912995))))

(declare-fun ++!3931 (Conc!5021 Conc!5021) Conc!5021)

(assert (=> b!1430385 (= res!647307 (isBalanced!1487 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1430388 () Bool)

(declare-fun lt!485585 () BalanceConc!9982)

(assert (=> b!1430388 (= e!912995 (= (list!5883 lt!485585) (++!3927 (list!5883 (tokens!1934 thiss!10022)) (list!5883 (tokens!1934 other!32)))))))

(declare-fun b!1430387 () Bool)

(declare-fun res!647304 () Bool)

(assert (=> b!1430387 (=> (not res!647304) (not e!912995))))

(declare-fun height!725 (Conc!5021) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1430387 (= res!647304 (>= (height!725 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))) (max!0 (height!725 (c!235218 (tokens!1934 thiss!10022))) (height!725 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430386 () Bool)

(declare-fun res!647305 () Bool)

(assert (=> b!1430386 (=> (not res!647305) (not e!912995))))

(assert (=> b!1430386 (= res!647305 (<= (height!725 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))) (+ (max!0 (height!725 (c!235218 (tokens!1934 thiss!10022))) (height!725 (c!235218 (tokens!1934 other!32)))) 1)))))

(declare-fun d!411446 () Bool)

(assert (=> d!411446 e!912995))

(declare-fun res!647306 () Bool)

(assert (=> d!411446 (=> (not res!647306) (not e!912995))))

(declare-fun appendAssocInst!304 (Conc!5021 Conc!5021) Bool)

(assert (=> d!411446 (= res!647306 (appendAssocInst!304 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))))

(assert (=> d!411446 (= lt!485585 (BalanceConc!9983 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))))))

(assert (=> d!411446 (= (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)) lt!485585)))

(assert (= (and d!411446 res!647306) b!1430385))

(assert (= (and b!1430385 res!647307) b!1430386))

(assert (= (and b!1430386 res!647305) b!1430387))

(assert (= (and b!1430387 res!647304) b!1430388))

(declare-fun m!1629353 () Bool)

(assert (=> b!1430385 m!1629353))

(assert (=> b!1430385 m!1629353))

(declare-fun m!1629355 () Bool)

(assert (=> b!1430385 m!1629355))

(declare-fun m!1629357 () Bool)

(assert (=> b!1430388 m!1629357))

(assert (=> b!1430388 m!1629177))

(assert (=> b!1430388 m!1629183))

(assert (=> b!1430388 m!1629177))

(assert (=> b!1430388 m!1629183))

(declare-fun m!1629359 () Bool)

(assert (=> b!1430388 m!1629359))

(declare-fun m!1629361 () Bool)

(assert (=> b!1430387 m!1629361))

(declare-fun m!1629363 () Bool)

(assert (=> b!1430387 m!1629363))

(declare-fun m!1629365 () Bool)

(assert (=> b!1430387 m!1629365))

(assert (=> b!1430387 m!1629361))

(assert (=> b!1430387 m!1629363))

(assert (=> b!1430387 m!1629353))

(assert (=> b!1430387 m!1629353))

(declare-fun m!1629367 () Bool)

(assert (=> b!1430387 m!1629367))

(assert (=> b!1430386 m!1629361))

(assert (=> b!1430386 m!1629363))

(assert (=> b!1430386 m!1629365))

(assert (=> b!1430386 m!1629361))

(assert (=> b!1430386 m!1629363))

(assert (=> b!1430386 m!1629353))

(assert (=> b!1430386 m!1629353))

(assert (=> b!1430386 m!1629367))

(declare-fun m!1629369 () Bool)

(assert (=> d!411446 m!1629369))

(assert (=> d!411446 m!1629353))

(assert (=> b!1430290 d!411446))

(declare-fun b!1430397 () Bool)

(declare-fun e!913001 () List!14882)

(assert (=> b!1430397 (= e!913001 lt!485506)))

(declare-fun d!411448 () Bool)

(declare-fun e!913000 () Bool)

(assert (=> d!411448 e!913000))

(declare-fun res!647313 () Bool)

(assert (=> d!411448 (=> (not res!647313) (not e!913000))))

(declare-fun lt!485588 () List!14882)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2184 (List!14882) (InoxSet Token!4856))

(assert (=> d!411448 (= res!647313 (= (content!2184 lt!485588) ((_ map or) (content!2184 lt!485510) (content!2184 lt!485506))))))

(assert (=> d!411448 (= lt!485588 e!913001)))

(declare-fun c!235227 () Bool)

(assert (=> d!411448 (= c!235227 ((_ is Nil!14816) lt!485510))))

(assert (=> d!411448 (= (++!3927 lt!485510 lt!485506) lt!485588)))

(declare-fun b!1430399 () Bool)

(declare-fun res!647312 () Bool)

(assert (=> b!1430399 (=> (not res!647312) (not e!913000))))

(declare-fun size!12159 (List!14882) Int)

(assert (=> b!1430399 (= res!647312 (= (size!12159 lt!485588) (+ (size!12159 lt!485510) (size!12159 lt!485506))))))

(declare-fun b!1430398 () Bool)

(assert (=> b!1430398 (= e!913001 (Cons!14816 (h!20217 lt!485510) (++!3927 (t!126961 lt!485510) lt!485506)))))

(declare-fun b!1430400 () Bool)

(assert (=> b!1430400 (= e!913000 (or (not (= lt!485506 Nil!14816)) (= lt!485588 lt!485510)))))

(assert (= (and d!411448 c!235227) b!1430397))

(assert (= (and d!411448 (not c!235227)) b!1430398))

(assert (= (and d!411448 res!647313) b!1430399))

(assert (= (and b!1430399 res!647312) b!1430400))

(declare-fun m!1629371 () Bool)

(assert (=> d!411448 m!1629371))

(declare-fun m!1629373 () Bool)

(assert (=> d!411448 m!1629373))

(declare-fun m!1629375 () Bool)

(assert (=> d!411448 m!1629375))

(declare-fun m!1629377 () Bool)

(assert (=> b!1430399 m!1629377))

(declare-fun m!1629379 () Bool)

(assert (=> b!1430399 m!1629379))

(declare-fun m!1629381 () Bool)

(assert (=> b!1430399 m!1629381))

(declare-fun m!1629383 () Bool)

(assert (=> b!1430398 m!1629383))

(assert (=> b!1430290 d!411448))

(declare-fun b!1430456 () Bool)

(declare-fun e!913030 () Bool)

(assert (=> b!1430456 (= e!913030 true)))

(declare-fun b!1430455 () Bool)

(declare-fun e!913029 () Bool)

(assert (=> b!1430455 (= e!913029 e!913030)))

(declare-fun b!1430454 () Bool)

(declare-fun e!913028 () Bool)

(assert (=> b!1430454 (= e!913028 e!913029)))

(declare-fun d!411450 () Bool)

(assert (=> d!411450 e!913028))

(assert (= b!1430455 b!1430456))

(assert (= b!1430454 b!1430455))

(assert (= (and d!411450 ((_ is Cons!14817) (rules!11264 thiss!10022))) b!1430454))

(declare-fun lambda!62743 () Int)

(declare-fun order!8891 () Int)

(declare-fun order!8889 () Int)

(declare-fun dynLambda!6760 (Int Int) Int)

(declare-fun dynLambda!6761 (Int Int) Int)

(assert (=> b!1430456 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62743))))

(declare-fun order!8893 () Int)

(declare-fun dynLambda!6762 (Int Int) Int)

(assert (=> b!1430456 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62743))))

(assert (=> d!411450 true))

(declare-fun lt!485619 () Bool)

(declare-fun forall!3651 (List!14882 Int) Bool)

(assert (=> d!411450 (= lt!485619 (forall!3651 lt!485505 lambda!62743))))

(declare-fun e!913021 () Bool)

(assert (=> d!411450 (= lt!485619 e!913021)))

(declare-fun res!647350 () Bool)

(assert (=> d!411450 (=> res!647350 e!913021)))

(assert (=> d!411450 (= res!647350 (not ((_ is Cons!14816) lt!485505)))))

(assert (=> d!411450 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411450 (= (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) lt!485505) lt!485619)))

(declare-fun b!1430444 () Bool)

(declare-fun e!913020 () Bool)

(assert (=> b!1430444 (= e!913021 e!913020)))

(declare-fun res!647349 () Bool)

(assert (=> b!1430444 (=> (not res!647349) (not e!913020))))

(assert (=> b!1430444 (= res!647349 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485505)))))

(declare-fun b!1430445 () Bool)

(assert (=> b!1430445 (= e!913020 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (t!126961 lt!485505)))))

(assert (= (and d!411450 (not res!647350)) b!1430444))

(assert (= (and b!1430444 res!647349) b!1430445))

(declare-fun m!1629453 () Bool)

(assert (=> d!411450 m!1629453))

(assert (=> d!411450 m!1629251))

(assert (=> b!1430444 m!1629329))

(declare-fun m!1629455 () Bool)

(assert (=> b!1430445 m!1629455))

(assert (=> b!1430290 d!411450))

(declare-fun d!411474 () Bool)

(declare-fun lt!485622 () Int)

(assert (=> d!411474 (= lt!485622 (size!12159 (list!5883 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))))))

(declare-fun size!12160 (Conc!5021) Int)

(assert (=> d!411474 (= lt!485622 (size!12160 (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))))))

(assert (=> d!411474 (= (size!12154 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32))) lt!485622)))

(declare-fun bs!340655 () Bool)

(assert (= bs!340655 d!411474))

(assert (=> bs!340655 m!1629155))

(declare-fun m!1629457 () Bool)

(assert (=> bs!340655 m!1629457))

(assert (=> bs!340655 m!1629457))

(declare-fun m!1629459 () Bool)

(assert (=> bs!340655 m!1629459))

(declare-fun m!1629461 () Bool)

(assert (=> bs!340655 m!1629461))

(assert (=> b!1430290 d!411474))

(declare-fun d!411476 () Bool)

(declare-fun e!913065 () Bool)

(assert (=> d!411476 e!913065))

(declare-fun res!647371 () Bool)

(assert (=> d!411476 (=> (not res!647371) (not e!913065))))

(assert (=> d!411476 (= res!647371 ((_ is Lexer!2259) Lexer!2259))))

(declare-fun lt!485642 () Unit!22343)

(declare-fun choose!8799 (LexerInterface!2261 List!14882 List!14882 List!14883) Unit!22343)

(assert (=> d!411476 (= lt!485642 (choose!8799 Lexer!2259 lt!485510 lt!485506 (rules!11264 thiss!10022)))))

(assert (=> d!411476 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411476 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!34 Lexer!2259 lt!485510 lt!485506 (rules!11264 thiss!10022)) lt!485642)))

(declare-fun b!1430507 () Bool)

(declare-fun res!647372 () Bool)

(assert (=> b!1430507 (=> (not res!647372) (not e!913065))))

(assert (=> b!1430507 (= res!647372 (rulesInvariant!2109 Lexer!2259 (rules!11264 thiss!10022)))))

(declare-fun b!1430509 () Bool)

(declare-fun res!647374 () Bool)

(assert (=> b!1430509 (=> (not res!647374) (not e!913065))))

(assert (=> b!1430509 (= res!647374 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) lt!485506))))

(declare-fun b!1430508 () Bool)

(declare-fun res!647373 () Bool)

(assert (=> b!1430508 (=> (not res!647373) (not e!913065))))

(assert (=> b!1430508 (= res!647373 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) lt!485510))))

(declare-fun b!1430510 () Bool)

(assert (=> b!1430510 (= e!913065 (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 (++!3927 lt!485510 lt!485506) (rules!11264 thiss!10022)))))

(declare-fun lt!485641 () Unit!22343)

(declare-fun lt!485643 () Unit!22343)

(assert (=> b!1430510 (= lt!485641 lt!485643)))

(assert (=> b!1430510 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (++!3927 lt!485510 lt!485506))))

(assert (=> b!1430510 (= lt!485643 (lemmaRulesProduceEachTokenIndividuallyConcat!34 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485506))))

(assert (= (and d!411476 res!647371) b!1430507))

(assert (= (and b!1430507 res!647372) b!1430508))

(assert (= (and b!1430508 res!647373) b!1430509))

(assert (= (and b!1430509 res!647374) b!1430510))

(declare-fun m!1629541 () Bool)

(assert (=> b!1430508 m!1629541))

(declare-fun m!1629543 () Bool)

(assert (=> d!411476 m!1629543))

(assert (=> d!411476 m!1629251))

(assert (=> b!1430507 m!1629309))

(assert (=> b!1430510 m!1629159))

(assert (=> b!1430510 m!1629159))

(declare-fun m!1629545 () Bool)

(assert (=> b!1430510 m!1629545))

(assert (=> b!1430510 m!1629159))

(assert (=> b!1430510 m!1629349))

(assert (=> b!1430510 m!1629151))

(declare-fun m!1629547 () Bool)

(assert (=> b!1430509 m!1629547))

(assert (=> b!1430290 d!411476))

(declare-fun d!411488 () Bool)

(declare-fun c!235237 () Bool)

(assert (=> d!411488 (= c!235237 ((_ is Node!5021) (c!235218 (tokens!1934 thiss!10022))))))

(declare-fun e!913070 () Bool)

(assert (=> d!411488 (= (inv!19656 (c!235218 (tokens!1934 thiss!10022))) e!913070)))

(declare-fun b!1430517 () Bool)

(declare-fun inv!19663 (Conc!5021) Bool)

(assert (=> b!1430517 (= e!913070 (inv!19663 (c!235218 (tokens!1934 thiss!10022))))))

(declare-fun b!1430518 () Bool)

(declare-fun e!913071 () Bool)

(assert (=> b!1430518 (= e!913070 e!913071)))

(declare-fun res!647377 () Bool)

(assert (=> b!1430518 (= res!647377 (not ((_ is Leaf!7521) (c!235218 (tokens!1934 thiss!10022)))))))

(assert (=> b!1430518 (=> res!647377 e!913071)))

(declare-fun b!1430519 () Bool)

(declare-fun inv!19664 (Conc!5021) Bool)

(assert (=> b!1430519 (= e!913071 (inv!19664 (c!235218 (tokens!1934 thiss!10022))))))

(assert (= (and d!411488 c!235237) b!1430517))

(assert (= (and d!411488 (not c!235237)) b!1430518))

(assert (= (and b!1430518 (not res!647377)) b!1430519))

(declare-fun m!1629549 () Bool)

(assert (=> b!1430517 m!1629549))

(declare-fun m!1629551 () Bool)

(assert (=> b!1430519 m!1629551))

(assert (=> b!1430285 d!411488))

(declare-fun d!411490 () Bool)

(declare-fun lt!485644 () Bool)

(assert (=> d!411490 (= lt!485644 (isEmpty!9179 (list!5883 (tokens!1934 other!32))))))

(assert (=> d!411490 (= lt!485644 (isEmpty!9180 (c!235218 (tokens!1934 other!32))))))

(assert (=> d!411490 (= (isEmpty!9172 (tokens!1934 other!32)) lt!485644)))

(declare-fun bs!340660 () Bool)

(assert (= bs!340660 d!411490))

(assert (=> bs!340660 m!1629183))

(assert (=> bs!340660 m!1629183))

(declare-fun m!1629553 () Bool)

(assert (=> bs!340660 m!1629553))

(declare-fun m!1629555 () Bool)

(assert (=> bs!340660 m!1629555))

(assert (=> b!1430291 d!411490))

(declare-fun d!411492 () Bool)

(declare-fun e!913074 () Bool)

(assert (=> d!411492 e!913074))

(declare-fun res!647382 () Bool)

(assert (=> d!411492 (=> (not res!647382) (not e!913074))))

(assert (=> d!411492 (= res!647382 (rulesInvariant!2109 Lexer!2259 (rules!11264 thiss!10022)))))

(declare-fun Unit!22353 () Unit!22343)

(assert (=> d!411492 (= (lemmaInvariant!293 thiss!10022) Unit!22353)))

(declare-fun b!1430524 () Bool)

(declare-fun res!647383 () Bool)

(assert (=> b!1430524 (=> (not res!647383) (not e!913074))))

(assert (=> b!1430524 (= res!647383 (rulesProduceEachTokenIndividually!827 Lexer!2259 (rules!11264 thiss!10022) (tokens!1934 thiss!10022)))))

(declare-fun b!1430525 () Bool)

(assert (=> b!1430525 (= e!913074 (separableTokens!211 Lexer!2259 (tokens!1934 thiss!10022) (rules!11264 thiss!10022)))))

(assert (= (and d!411492 res!647382) b!1430524))

(assert (= (and b!1430524 res!647383) b!1430525))

(assert (=> d!411492 m!1629309))

(assert (=> b!1430524 m!1629311))

(assert (=> b!1430525 m!1629313))

(assert (=> b!1430291 d!411492))

(declare-fun d!411494 () Bool)

(declare-fun e!913075 () Bool)

(assert (=> d!411494 e!913075))

(declare-fun res!647384 () Bool)

(assert (=> d!411494 (=> (not res!647384) (not e!913075))))

(assert (=> d!411494 (= res!647384 (rulesInvariant!2109 Lexer!2259 (rules!11264 other!32)))))

(declare-fun Unit!22354 () Unit!22343)

(assert (=> d!411494 (= (lemmaInvariant!293 other!32) Unit!22354)))

(declare-fun b!1430526 () Bool)

(declare-fun res!647385 () Bool)

(assert (=> b!1430526 (=> (not res!647385) (not e!913075))))

(assert (=> b!1430526 (= res!647385 (rulesProduceEachTokenIndividually!827 Lexer!2259 (rules!11264 other!32) (tokens!1934 other!32)))))

(declare-fun b!1430527 () Bool)

(assert (=> b!1430527 (= e!913075 (separableTokens!211 Lexer!2259 (tokens!1934 other!32) (rules!11264 other!32)))))

(assert (= (and d!411494 res!647384) b!1430526))

(assert (= (and b!1430526 res!647385) b!1430527))

(assert (=> d!411494 m!1629317))

(assert (=> b!1430526 m!1629319))

(assert (=> b!1430527 m!1629321))

(assert (=> b!1430291 d!411494))

(declare-fun d!411496 () Bool)

(declare-fun c!235238 () Bool)

(assert (=> d!411496 (= c!235238 ((_ is Node!5021) (c!235218 (tokens!1934 other!32))))))

(declare-fun e!913076 () Bool)

(assert (=> d!411496 (= (inv!19656 (c!235218 (tokens!1934 other!32))) e!913076)))

(declare-fun b!1430528 () Bool)

(assert (=> b!1430528 (= e!913076 (inv!19663 (c!235218 (tokens!1934 other!32))))))

(declare-fun b!1430529 () Bool)

(declare-fun e!913077 () Bool)

(assert (=> b!1430529 (= e!913076 e!913077)))

(declare-fun res!647386 () Bool)

(assert (=> b!1430529 (= res!647386 (not ((_ is Leaf!7521) (c!235218 (tokens!1934 other!32)))))))

(assert (=> b!1430529 (=> res!647386 e!913077)))

(declare-fun b!1430530 () Bool)

(assert (=> b!1430530 (= e!913077 (inv!19664 (c!235218 (tokens!1934 other!32))))))

(assert (= (and d!411496 c!235238) b!1430528))

(assert (= (and d!411496 (not c!235238)) b!1430529))

(assert (= (and b!1430529 (not res!647386)) b!1430530))

(declare-fun m!1629557 () Bool)

(assert (=> b!1430528 m!1629557))

(declare-fun m!1629559 () Bool)

(assert (=> b!1430530 m!1629559))

(assert (=> b!1430286 d!411496))

(declare-fun b!1430541 () Bool)

(declare-fun b_free!35399 () Bool)

(declare-fun b_next!36103 () Bool)

(assert (=> b!1430541 (= b_free!35399 (not b_next!36103))))

(declare-fun tp!405595 () Bool)

(declare-fun b_and!96303 () Bool)

(assert (=> b!1430541 (= tp!405595 b_and!96303)))

(declare-fun b_free!35401 () Bool)

(declare-fun b_next!36105 () Bool)

(assert (=> b!1430541 (= b_free!35401 (not b_next!36105))))

(declare-fun tp!405597 () Bool)

(declare-fun b_and!96305 () Bool)

(assert (=> b!1430541 (= tp!405597 b_and!96305)))

(declare-fun e!913086 () Bool)

(assert (=> b!1430541 (= e!913086 (and tp!405595 tp!405597))))

(declare-fun e!913089 () Bool)

(declare-fun tp!405596 () Bool)

(declare-fun b!1430540 () Bool)

(declare-fun inv!19652 (String!17691) Bool)

(declare-fun inv!19665 (TokenValueInjection!5034) Bool)

(assert (=> b!1430540 (= e!913089 (and tp!405596 (inv!19652 (tag!2859 (h!20218 (rules!11264 other!32)))) (inv!19665 (transformation!2597 (h!20218 (rules!11264 other!32)))) e!913086))))

(declare-fun b!1430539 () Bool)

(declare-fun e!913087 () Bool)

(declare-fun tp!405598 () Bool)

(assert (=> b!1430539 (= e!913087 (and e!913089 tp!405598))))

(assert (=> b!1430287 (= tp!405555 e!913087)))

(assert (= b!1430540 b!1430541))

(assert (= b!1430539 b!1430540))

(assert (= (and b!1430287 ((_ is Cons!14817) (rules!11264 other!32))) b!1430539))

(declare-fun m!1629561 () Bool)

(assert (=> b!1430540 m!1629561))

(declare-fun m!1629563 () Bool)

(assert (=> b!1430540 m!1629563))

(declare-fun b!1430544 () Bool)

(declare-fun b_free!35403 () Bool)

(declare-fun b_next!36107 () Bool)

(assert (=> b!1430544 (= b_free!35403 (not b_next!36107))))

(declare-fun tp!405599 () Bool)

(declare-fun b_and!96307 () Bool)

(assert (=> b!1430544 (= tp!405599 b_and!96307)))

(declare-fun b_free!35405 () Bool)

(declare-fun b_next!36109 () Bool)

(assert (=> b!1430544 (= b_free!35405 (not b_next!36109))))

(declare-fun tp!405601 () Bool)

(declare-fun b_and!96309 () Bool)

(assert (=> b!1430544 (= tp!405601 b_and!96309)))

(declare-fun e!913090 () Bool)

(assert (=> b!1430544 (= e!913090 (and tp!405599 tp!405601))))

(declare-fun tp!405600 () Bool)

(declare-fun e!913093 () Bool)

(declare-fun b!1430543 () Bool)

(assert (=> b!1430543 (= e!913093 (and tp!405600 (inv!19652 (tag!2859 (h!20218 (rules!11264 thiss!10022)))) (inv!19665 (transformation!2597 (h!20218 (rules!11264 thiss!10022)))) e!913090))))

(declare-fun b!1430542 () Bool)

(declare-fun e!913091 () Bool)

(declare-fun tp!405602 () Bool)

(assert (=> b!1430542 (= e!913091 (and e!913093 tp!405602))))

(assert (=> b!1430288 (= tp!405556 e!913091)))

(assert (= b!1430543 b!1430544))

(assert (= b!1430542 b!1430543))

(assert (= (and b!1430288 ((_ is Cons!14817) (rules!11264 thiss!10022))) b!1430542))

(declare-fun m!1629565 () Bool)

(assert (=> b!1430543 m!1629565))

(declare-fun m!1629567 () Bool)

(assert (=> b!1430543 m!1629567))

(declare-fun tp!405611 () Bool)

(declare-fun tp!405609 () Bool)

(declare-fun e!913099 () Bool)

(declare-fun b!1430553 () Bool)

(assert (=> b!1430553 (= e!913099 (and (inv!19656 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) tp!405609 (inv!19656 (right!12956 (c!235218 (tokens!1934 thiss!10022)))) tp!405611))))

(declare-fun b!1430555 () Bool)

(declare-fun e!913098 () Bool)

(declare-fun tp!405610 () Bool)

(assert (=> b!1430555 (= e!913098 tp!405610)))

(declare-fun b!1430554 () Bool)

(declare-fun inv!19666 (IArray!10047) Bool)

(assert (=> b!1430554 (= e!913099 (and (inv!19666 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))) e!913098))))

(assert (=> b!1430285 (= tp!405557 (and (inv!19656 (c!235218 (tokens!1934 thiss!10022))) e!913099))))

(assert (= (and b!1430285 ((_ is Node!5021) (c!235218 (tokens!1934 thiss!10022)))) b!1430553))

(assert (= b!1430554 b!1430555))

(assert (= (and b!1430285 ((_ is Leaf!7521) (c!235218 (tokens!1934 thiss!10022)))) b!1430554))

(declare-fun m!1629569 () Bool)

(assert (=> b!1430553 m!1629569))

(declare-fun m!1629571 () Bool)

(assert (=> b!1430553 m!1629571))

(declare-fun m!1629573 () Bool)

(assert (=> b!1430554 m!1629573))

(assert (=> b!1430285 m!1629165))

(declare-fun b!1430556 () Bool)

(declare-fun tp!405614 () Bool)

(declare-fun e!913101 () Bool)

(declare-fun tp!405612 () Bool)

(assert (=> b!1430556 (= e!913101 (and (inv!19656 (left!12626 (c!235218 (tokens!1934 other!32)))) tp!405612 (inv!19656 (right!12956 (c!235218 (tokens!1934 other!32)))) tp!405614))))

(declare-fun b!1430558 () Bool)

(declare-fun e!913100 () Bool)

(declare-fun tp!405613 () Bool)

(assert (=> b!1430558 (= e!913100 tp!405613)))

(declare-fun b!1430557 () Bool)

(assert (=> b!1430557 (= e!913101 (and (inv!19666 (xs!7750 (c!235218 (tokens!1934 other!32)))) e!913100))))

(assert (=> b!1430286 (= tp!405558 (and (inv!19656 (c!235218 (tokens!1934 other!32))) e!913101))))

(assert (= (and b!1430286 ((_ is Node!5021) (c!235218 (tokens!1934 other!32)))) b!1430556))

(assert (= b!1430557 b!1430558))

(assert (= (and b!1430286 ((_ is Leaf!7521) (c!235218 (tokens!1934 other!32)))) b!1430557))

(declare-fun m!1629575 () Bool)

(assert (=> b!1430556 m!1629575))

(declare-fun m!1629577 () Bool)

(assert (=> b!1430556 m!1629577))

(declare-fun m!1629579 () Bool)

(assert (=> b!1430557 m!1629579))

(assert (=> b!1430286 m!1629145))

(check-sat (not b!1430285) b_and!96303 (not b!1430540) (not b!1430558) (not b!1430509) (not b!1430557) (not d!411416) (not b_next!36103) b_and!96307 (not b!1430388) (not d!411402) (not b!1430517) (not d!411424) (not b!1430539) (not b!1430444) b_and!96305 (not b!1430524) (not b!1430556) (not b!1430554) (not b!1430387) (not b!1430335) (not d!411492) (not b!1430350) (not b!1430519) (not b!1430454) (not d!411450) (not b!1430398) (not d!411476) (not b!1430525) (not b!1430353) (not b!1430339) (not d!411400) (not b!1430530) (not b!1430286) (not b_next!36105) (not d!411438) (not d!411448) (not d!411430) (not b!1430526) (not b!1430508) (not d!411398) (not b!1430385) (not b!1430338) (not b!1430354) (not d!411446) (not d!411442) (not d!411494) (not b!1430553) (not b!1430510) b_and!96309 (not b!1430334) (not b!1430528) (not b!1430351) (not b!1430337) (not b!1430399) (not b!1430555) (not b!1430355) (not b!1430543) (not d!411436) (not b!1430336) (not d!411426) (not d!411428) (not d!411490) (not b!1430386) (not d!411432) (not d!411434) (not d!411404) (not b!1430445) (not d!411474) (not b_next!36107) (not b!1430542) (not b_next!36109) (not b!1430507) (not b!1430352) (not b!1430527) (not b!1430361) (not b!1430360) (not d!411422))
(check-sat (not b_next!36103) b_and!96307 b_and!96305 b_and!96303 (not b_next!36105) b_and!96309 (not b_next!36107) (not b_next!36109))
(get-model)

(declare-fun d!411520 () Bool)

(assert (=> d!411520 (= (inv!19666 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))) (<= (size!12159 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022))))) 2147483647))))

(declare-fun bs!340664 () Bool)

(assert (= bs!340664 d!411520))

(declare-fun m!1629623 () Bool)

(assert (=> bs!340664 m!1629623))

(assert (=> b!1430554 d!411520))

(declare-fun d!411522 () Bool)

(declare-fun res!647414 () Bool)

(declare-fun e!913125 () Bool)

(assert (=> d!411522 (=> (not res!647414) (not e!913125))))

(declare-fun rulesValid!954 (LexerInterface!2261 List!14883) Bool)

(assert (=> d!411522 (= res!647414 (rulesValid!954 Lexer!2259 (rules!11264 thiss!10022)))))

(assert (=> d!411522 (= (rulesInvariant!2109 Lexer!2259 (rules!11264 thiss!10022)) e!913125)))

(declare-fun b!1430589 () Bool)

(declare-datatypes ((List!14885 0))(
  ( (Nil!14819) (Cons!14819 (h!20220 String!17691) (t!127072 List!14885)) )
))
(declare-fun noDuplicateTag!954 (LexerInterface!2261 List!14883 List!14885) Bool)

(assert (=> b!1430589 (= e!913125 (noDuplicateTag!954 Lexer!2259 (rules!11264 thiss!10022) Nil!14819))))

(assert (= (and d!411522 res!647414) b!1430589))

(declare-fun m!1629629 () Bool)

(assert (=> d!411522 m!1629629))

(declare-fun m!1629631 () Bool)

(assert (=> b!1430589 m!1629631))

(assert (=> b!1430350 d!411522))

(declare-fun bm!97221 () Bool)

(declare-fun call!97235 () Conc!5021)

(declare-fun call!97238 () Conc!5021)

(assert (=> bm!97221 (= call!97235 call!97238)))

(declare-fun b!1430650 () Bool)

(declare-fun e!913163 () Conc!5021)

(declare-fun call!97229 () Conc!5021)

(assert (=> b!1430650 (= e!913163 call!97229)))

(declare-fun b!1430651 () Bool)

(declare-fun c!235270 () Bool)

(declare-fun call!97227 () Int)

(declare-fun call!97234 () Int)

(assert (=> b!1430651 (= c!235270 (>= call!97227 call!97234))))

(declare-fun e!913161 () Conc!5021)

(declare-fun e!913170 () Conc!5021)

(assert (=> b!1430651 (= e!913161 e!913170)))

(declare-fun call!97240 () Int)

(declare-fun lt!485687 () Conc!5021)

(declare-fun c!235264 () Bool)

(declare-fun bm!97222 () Bool)

(assert (=> bm!97222 (= call!97240 (height!725 (ite c!235264 lt!485687 (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1430652 () Bool)

(declare-fun c!235271 () Bool)

(declare-fun call!97226 () Int)

(assert (=> b!1430652 (= c!235271 (>= call!97226 call!97234))))

(declare-fun e!913168 () Conc!5021)

(assert (=> b!1430652 (= e!913161 e!913168)))

(declare-fun b!1430653 () Bool)

(declare-fun e!913169 () Conc!5021)

(assert (=> b!1430653 (= e!913169 (c!235218 (tokens!1934 thiss!10022)))))

(declare-fun b!1430654 () Bool)

(declare-fun e!913162 () Conc!5021)

(assert (=> b!1430654 (= e!913162 (c!235218 (tokens!1934 other!32)))))

(declare-fun bm!97223 () Bool)

(declare-fun call!97239 () Conc!5021)

(declare-fun call!97231 () Conc!5021)

(assert (=> bm!97223 (= call!97239 call!97231)))

(declare-fun b!1430655 () Bool)

(declare-fun e!913165 () Conc!5021)

(declare-fun call!97241 () Conc!5021)

(assert (=> b!1430655 (= e!913165 call!97241)))

(declare-fun bm!97224 () Bool)

(assert (=> bm!97224 (= call!97238 call!97241)))

(declare-fun bm!97225 () Bool)

(assert (=> bm!97225 (= call!97231 (++!3931 (ite c!235264 (ite c!235270 (right!12956 (c!235218 (tokens!1934 thiss!10022))) (right!12956 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) (c!235218 (tokens!1934 thiss!10022))) (ite c!235264 (c!235218 (tokens!1934 other!32)) (ite c!235271 (left!12626 (c!235218 (tokens!1934 other!32))) (left!12626 (left!12626 (c!235218 (tokens!1934 other!32))))))))))

(declare-fun lt!485685 () Conc!5021)

(declare-fun bm!97226 () Bool)

(assert (=> bm!97226 (= call!97227 (height!725 (ite c!235264 (left!12626 (c!235218 (tokens!1934 thiss!10022))) lt!485685)))))

(declare-fun bm!97227 () Bool)

(declare-fun call!97230 () Conc!5021)

(assert (=> bm!97227 (= call!97230 call!97231)))

(declare-fun bm!97228 () Bool)

(declare-fun call!97237 () Conc!5021)

(declare-fun call!97233 () Conc!5021)

(assert (=> bm!97228 (= call!97237 call!97233)))

(declare-fun b!1430656 () Bool)

(declare-fun e!913164 () Conc!5021)

(assert (=> b!1430656 (= e!913164 call!97237)))

(declare-fun b!1430657 () Bool)

(declare-fun res!647438 () Bool)

(declare-fun e!913166 () Bool)

(assert (=> b!1430657 (=> (not res!647438) (not e!913166))))

(declare-fun lt!485686 () Conc!5021)

(assert (=> b!1430657 (= res!647438 (<= (height!725 lt!485686) (+ (max!0 (height!725 (c!235218 (tokens!1934 thiss!10022))) (height!725 (c!235218 (tokens!1934 other!32)))) 1)))))

(declare-fun bm!97230 () Bool)

(assert (=> bm!97230 (= call!97234 (height!725 (ite c!235264 (right!12956 (c!235218 (tokens!1934 thiss!10022))) (left!12626 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430658 () Bool)

(declare-fun res!647437 () Bool)

(assert (=> b!1430658 (=> (not res!647437) (not e!913166))))

(assert (=> b!1430658 (= res!647437 (>= (height!725 lt!485686) (max!0 (height!725 (c!235218 (tokens!1934 thiss!10022))) (height!725 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430659 () Bool)

(assert (=> b!1430659 (= e!913162 e!913169)))

(declare-fun c!235266 () Bool)

(assert (=> b!1430659 (= c!235266 (= (c!235218 (tokens!1934 other!32)) Empty!5021))))

(declare-fun b!1430660 () Bool)

(assert (=> b!1430660 (= e!913170 call!97235)))

(declare-fun b!1430661 () Bool)

(assert (=> b!1430661 (= e!913166 (= (list!5885 lt!485686) (++!3927 (list!5885 (c!235218 (tokens!1934 thiss!10022))) (list!5885 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430662 () Bool)

(declare-fun c!235265 () Bool)

(declare-fun lt!485684 () Int)

(assert (=> b!1430662 (= c!235265 (and (<= (- 1) lt!485684) (<= lt!485684 1)))))

(assert (=> b!1430662 (= lt!485684 (- (height!725 (c!235218 (tokens!1934 other!32))) (height!725 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (=> b!1430662 (= e!913169 e!913165)))

(declare-fun b!1430663 () Bool)

(assert (=> b!1430663 (= e!913170 e!913163)))

(assert (=> b!1430663 (= lt!485687 call!97239)))

(declare-fun c!235267 () Bool)

(assert (=> b!1430663 (= c!235267 (= call!97240 (- call!97226 3)))))

(declare-fun bm!97231 () Bool)

(declare-fun call!97236 () Conc!5021)

(assert (=> bm!97231 (= call!97233 call!97236)))

(declare-fun c!235268 () Bool)

(declare-fun call!97228 () Conc!5021)

(declare-fun bm!97232 () Bool)

(declare-fun <>!95 (Conc!5021 Conc!5021) Conc!5021)

(assert (=> bm!97232 (= call!97241 (<>!95 (ite c!235265 (c!235218 (tokens!1934 thiss!10022)) (ite c!235264 (ite (or c!235270 c!235267) (left!12626 (c!235218 (tokens!1934 thiss!10022))) call!97228) (ite c!235268 lt!485685 (right!12956 (left!12626 (c!235218 (tokens!1934 other!32))))))) (ite c!235265 (c!235218 (tokens!1934 other!32)) (ite c!235264 (ite c!235270 call!97239 (ite c!235267 call!97228 lt!485687)) (ite c!235268 (right!12956 (left!12626 (c!235218 (tokens!1934 other!32)))) (right!12956 (c!235218 (tokens!1934 other!32))))))))))

(declare-fun b!1430664 () Bool)

(assert (=> b!1430664 (= e!913168 call!97233)))

(declare-fun b!1430665 () Bool)

(assert (=> b!1430665 (= e!913168 e!913164)))

(assert (=> b!1430665 (= lt!485685 call!97230)))

(assert (=> b!1430665 (= c!235268 (= call!97227 (- call!97240 3)))))

(declare-fun b!1430666 () Bool)

(declare-fun e!913167 () Bool)

(assert (=> b!1430666 (= e!913167 (isBalanced!1487 (c!235218 (tokens!1934 other!32))))))

(declare-fun bm!97233 () Bool)

(assert (=> bm!97233 (= call!97228 call!97236)))

(declare-fun b!1430667 () Bool)

(declare-fun res!647440 () Bool)

(assert (=> b!1430667 (=> (not res!647440) (not e!913166))))

(assert (=> b!1430667 (= res!647440 (isBalanced!1487 lt!485686))))

(declare-fun bm!97234 () Bool)

(assert (=> bm!97234 (= call!97226 (height!725 (ite c!235264 (c!235218 (tokens!1934 thiss!10022)) (right!12956 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430668 () Bool)

(assert (=> b!1430668 (= e!913164 call!97237)))

(declare-fun bm!97235 () Bool)

(declare-fun call!97232 () Conc!5021)

(assert (=> bm!97235 (= call!97236 (<>!95 (ite c!235264 (ite c!235267 (left!12626 (right!12956 (c!235218 (tokens!1934 thiss!10022)))) (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (ite c!235271 call!97230 (ite c!235268 call!97232 lt!485685))) (ite c!235264 (ite c!235267 lt!485687 (left!12626 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) (ite (or c!235271 c!235268) (right!12956 (c!235218 (tokens!1934 other!32))) call!97232))))))

(declare-fun b!1430669 () Bool)

(assert (=> b!1430669 (= e!913165 e!913161)))

(assert (=> b!1430669 (= c!235264 (< lt!485684 (- 1)))))

(declare-fun b!1430670 () Bool)

(assert (=> b!1430670 (= e!913163 call!97229)))

(declare-fun bm!97236 () Bool)

(assert (=> bm!97236 (= call!97229 call!97235)))

(declare-fun bm!97229 () Bool)

(assert (=> bm!97229 (= call!97232 call!97238)))

(declare-fun d!411526 () Bool)

(assert (=> d!411526 e!913166))

(declare-fun res!647441 () Bool)

(assert (=> d!411526 (=> (not res!647441) (not e!913166))))

(assert (=> d!411526 (= res!647441 (appendAssocInst!304 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))))

(assert (=> d!411526 (= lt!485686 e!913162)))

(declare-fun c!235269 () Bool)

(assert (=> d!411526 (= c!235269 (= (c!235218 (tokens!1934 thiss!10022)) Empty!5021))))

(assert (=> d!411526 e!913167))

(declare-fun res!647439 () Bool)

(assert (=> d!411526 (=> (not res!647439) (not e!913167))))

(assert (=> d!411526 (= res!647439 (isBalanced!1487 (c!235218 (tokens!1934 thiss!10022))))))

(assert (=> d!411526 (= (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))) lt!485686)))

(assert (= (and d!411526 res!647439) b!1430666))

(assert (= (and d!411526 c!235269) b!1430654))

(assert (= (and d!411526 (not c!235269)) b!1430659))

(assert (= (and b!1430659 c!235266) b!1430653))

(assert (= (and b!1430659 (not c!235266)) b!1430662))

(assert (= (and b!1430662 c!235265) b!1430655))

(assert (= (and b!1430662 (not c!235265)) b!1430669))

(assert (= (and b!1430669 c!235264) b!1430651))

(assert (= (and b!1430669 (not c!235264)) b!1430652))

(assert (= (and b!1430651 c!235270) b!1430660))

(assert (= (and b!1430651 (not c!235270)) b!1430663))

(assert (= (and b!1430663 c!235267) b!1430670))

(assert (= (and b!1430663 (not c!235267)) b!1430650))

(assert (= (or b!1430670 b!1430650) bm!97233))

(assert (= (or b!1430670 b!1430650) bm!97236))

(assert (= (or b!1430660 b!1430663) bm!97223))

(assert (= (or b!1430660 bm!97236) bm!97221))

(assert (= (and b!1430652 c!235271) b!1430664))

(assert (= (and b!1430652 (not c!235271)) b!1430665))

(assert (= (and b!1430665 c!235268) b!1430656))

(assert (= (and b!1430665 (not c!235268)) b!1430668))

(assert (= (or b!1430656 b!1430668) bm!97229))

(assert (= (or b!1430656 b!1430668) bm!97228))

(assert (= (or b!1430664 b!1430665) bm!97227))

(assert (= (or b!1430664 bm!97228) bm!97231))

(assert (= (or b!1430663 b!1430665) bm!97222))

(assert (= (or b!1430651 b!1430665) bm!97226))

(assert (= (or b!1430651 b!1430652) bm!97230))

(assert (= (or bm!97221 bm!97229) bm!97224))

(assert (= (or bm!97223 bm!97227) bm!97225))

(assert (= (or b!1430663 b!1430652) bm!97234))

(assert (= (or bm!97233 bm!97231) bm!97235))

(assert (= (or b!1430655 bm!97224) bm!97232))

(assert (= (and d!411526 res!647441) b!1430667))

(assert (= (and b!1430667 res!647440) b!1430657))

(assert (= (and b!1430657 res!647438) b!1430658))

(assert (= (and b!1430658 res!647437) b!1430661))

(assert (=> b!1430666 m!1629307))

(declare-fun m!1629669 () Bool)

(assert (=> b!1430667 m!1629669))

(declare-fun m!1629671 () Bool)

(assert (=> bm!97234 m!1629671))

(declare-fun m!1629673 () Bool)

(assert (=> bm!97235 m!1629673))

(assert (=> d!411526 m!1629369))

(assert (=> d!411526 m!1629323))

(assert (=> b!1430662 m!1629363))

(assert (=> b!1430662 m!1629361))

(declare-fun m!1629675 () Bool)

(assert (=> b!1430661 m!1629675))

(assert (=> b!1430661 m!1629209))

(assert (=> b!1430661 m!1629305))

(assert (=> b!1430661 m!1629209))

(assert (=> b!1430661 m!1629305))

(declare-fun m!1629677 () Bool)

(assert (=> b!1430661 m!1629677))

(declare-fun m!1629679 () Bool)

(assert (=> bm!97230 m!1629679))

(declare-fun m!1629681 () Bool)

(assert (=> bm!97232 m!1629681))

(declare-fun m!1629683 () Bool)

(assert (=> bm!97226 m!1629683))

(declare-fun m!1629685 () Bool)

(assert (=> b!1430658 m!1629685))

(assert (=> b!1430658 m!1629361))

(assert (=> b!1430658 m!1629363))

(assert (=> b!1430658 m!1629361))

(assert (=> b!1430658 m!1629363))

(assert (=> b!1430658 m!1629365))

(assert (=> b!1430657 m!1629685))

(assert (=> b!1430657 m!1629361))

(assert (=> b!1430657 m!1629363))

(assert (=> b!1430657 m!1629361))

(assert (=> b!1430657 m!1629363))

(assert (=> b!1430657 m!1629365))

(declare-fun m!1629687 () Bool)

(assert (=> bm!97222 m!1629687))

(declare-fun m!1629689 () Bool)

(assert (=> bm!97225 m!1629689))

(assert (=> b!1430387 d!411526))

(declare-fun d!411540 () Bool)

(assert (=> d!411540 (= (max!0 (height!725 (c!235218 (tokens!1934 thiss!10022))) (height!725 (c!235218 (tokens!1934 other!32)))) (ite (< (height!725 (c!235218 (tokens!1934 thiss!10022))) (height!725 (c!235218 (tokens!1934 other!32)))) (height!725 (c!235218 (tokens!1934 other!32))) (height!725 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (=> b!1430387 d!411540))

(declare-fun d!411542 () Bool)

(assert (=> d!411542 (= (height!725 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))) (ite ((_ is Empty!5021) (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))) 0 (ite ((_ is Leaf!7521) (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))) 1 (cheight!5232 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))))))))

(assert (=> b!1430387 d!411542))

(declare-fun d!411544 () Bool)

(assert (=> d!411544 (= (height!725 (c!235218 (tokens!1934 other!32))) (ite ((_ is Empty!5021) (c!235218 (tokens!1934 other!32))) 0 (ite ((_ is Leaf!7521) (c!235218 (tokens!1934 other!32))) 1 (cheight!5232 (c!235218 (tokens!1934 other!32))))))))

(assert (=> b!1430387 d!411544))

(declare-fun d!411546 () Bool)

(assert (=> d!411546 (= (height!725 (c!235218 (tokens!1934 thiss!10022))) (ite ((_ is Empty!5021) (c!235218 (tokens!1934 thiss!10022))) 0 (ite ((_ is Leaf!7521) (c!235218 (tokens!1934 thiss!10022))) 1 (cheight!5232 (c!235218 (tokens!1934 thiss!10022))))))))

(assert (=> b!1430387 d!411546))

(declare-fun bs!340667 () Bool)

(declare-fun d!411548 () Bool)

(assert (= bs!340667 (and d!411548 d!411450)))

(declare-fun lambda!62744 () Int)

(assert (=> bs!340667 (= lambda!62744 lambda!62743)))

(declare-fun b!1430675 () Bool)

(declare-fun e!913175 () Bool)

(assert (=> b!1430675 (= e!913175 true)))

(declare-fun b!1430674 () Bool)

(declare-fun e!913174 () Bool)

(assert (=> b!1430674 (= e!913174 e!913175)))

(declare-fun b!1430673 () Bool)

(declare-fun e!913173 () Bool)

(assert (=> b!1430673 (= e!913173 e!913174)))

(assert (=> d!411548 e!913173))

(assert (= b!1430674 b!1430675))

(assert (= b!1430673 b!1430674))

(assert (= (and d!411548 ((_ is Cons!14817) (rules!11264 thiss!10022))) b!1430673))

(assert (=> b!1430675 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62744))))

(assert (=> b!1430675 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62744))))

(assert (=> d!411548 true))

(declare-fun lt!485688 () Bool)

(assert (=> d!411548 (= lt!485688 (forall!3651 (++!3927 lt!485510 lt!485506) lambda!62744))))

(declare-fun e!913172 () Bool)

(assert (=> d!411548 (= lt!485688 e!913172)))

(declare-fun res!647443 () Bool)

(assert (=> d!411548 (=> res!647443 e!913172)))

(assert (=> d!411548 (= res!647443 (not ((_ is Cons!14816) (++!3927 lt!485510 lt!485506))))))

(assert (=> d!411548 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411548 (= (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (++!3927 lt!485510 lt!485506)) lt!485688)))

(declare-fun b!1430671 () Bool)

(declare-fun e!913171 () Bool)

(assert (=> b!1430671 (= e!913172 e!913171)))

(declare-fun res!647442 () Bool)

(assert (=> b!1430671 (=> (not res!647442) (not e!913171))))

(assert (=> b!1430671 (= res!647442 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (++!3927 lt!485510 lt!485506))))))

(declare-fun b!1430672 () Bool)

(assert (=> b!1430672 (= e!913171 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (t!126961 (++!3927 lt!485510 lt!485506))))))

(assert (= (and d!411548 (not res!647443)) b!1430671))

(assert (= (and b!1430671 res!647442) b!1430672))

(assert (=> d!411548 m!1629159))

(declare-fun m!1629691 () Bool)

(assert (=> d!411548 m!1629691))

(assert (=> d!411548 m!1629251))

(declare-fun m!1629693 () Bool)

(assert (=> b!1430671 m!1629693))

(declare-fun m!1629695 () Bool)

(assert (=> b!1430672 m!1629695))

(assert (=> d!411442 d!411548))

(assert (=> d!411442 d!411448))

(declare-fun d!411550 () Bool)

(assert (=> d!411550 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (++!3927 lt!485510 lt!485506))))

(assert (=> d!411550 true))

(declare-fun _$79!88 () Unit!22343)

(assert (=> d!411550 (= (choose!8798 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485506) _$79!88)))

(declare-fun bs!340674 () Bool)

(assert (= bs!340674 d!411550))

(assert (=> bs!340674 m!1629159))

(assert (=> bs!340674 m!1629159))

(assert (=> bs!340674 m!1629349))

(assert (=> d!411442 d!411550))

(declare-fun d!411576 () Bool)

(assert (=> d!411576 (= (isEmpty!9177 (rules!11264 thiss!10022)) ((_ is Nil!14817) (rules!11264 thiss!10022)))))

(assert (=> d!411442 d!411576))

(declare-fun d!411578 () Bool)

(declare-fun c!235284 () Bool)

(assert (=> d!411578 (= c!235284 ((_ is Nil!14816) lt!485588))))

(declare-fun e!913199 () (InoxSet Token!4856))

(assert (=> d!411578 (= (content!2184 lt!485588) e!913199)))

(declare-fun b!1430714 () Bool)

(assert (=> b!1430714 (= e!913199 ((as const (Array Token!4856 Bool)) false))))

(declare-fun b!1430715 () Bool)

(assert (=> b!1430715 (= e!913199 ((_ map or) (store ((as const (Array Token!4856 Bool)) false) (h!20217 lt!485588) true) (content!2184 (t!126961 lt!485588))))))

(assert (= (and d!411578 c!235284) b!1430714))

(assert (= (and d!411578 (not c!235284)) b!1430715))

(declare-fun m!1629759 () Bool)

(assert (=> b!1430715 m!1629759))

(declare-fun m!1629761 () Bool)

(assert (=> b!1430715 m!1629761))

(assert (=> d!411448 d!411578))

(declare-fun d!411580 () Bool)

(declare-fun c!235285 () Bool)

(assert (=> d!411580 (= c!235285 ((_ is Nil!14816) lt!485510))))

(declare-fun e!913200 () (InoxSet Token!4856))

(assert (=> d!411580 (= (content!2184 lt!485510) e!913200)))

(declare-fun b!1430716 () Bool)

(assert (=> b!1430716 (= e!913200 ((as const (Array Token!4856 Bool)) false))))

(declare-fun b!1430717 () Bool)

(assert (=> b!1430717 (= e!913200 ((_ map or) (store ((as const (Array Token!4856 Bool)) false) (h!20217 lt!485510) true) (content!2184 (t!126961 lt!485510))))))

(assert (= (and d!411580 c!235285) b!1430716))

(assert (= (and d!411580 (not c!235285)) b!1430717))

(declare-fun m!1629763 () Bool)

(assert (=> b!1430717 m!1629763))

(declare-fun m!1629765 () Bool)

(assert (=> b!1430717 m!1629765))

(assert (=> d!411448 d!411580))

(declare-fun d!411582 () Bool)

(declare-fun c!235286 () Bool)

(assert (=> d!411582 (= c!235286 ((_ is Nil!14816) lt!485506))))

(declare-fun e!913201 () (InoxSet Token!4856))

(assert (=> d!411582 (= (content!2184 lt!485506) e!913201)))

(declare-fun b!1430718 () Bool)

(assert (=> b!1430718 (= e!913201 ((as const (Array Token!4856 Bool)) false))))

(declare-fun b!1430719 () Bool)

(assert (=> b!1430719 (= e!913201 ((_ map or) (store ((as const (Array Token!4856 Bool)) false) (h!20217 lt!485506) true) (content!2184 (t!126961 lt!485506))))))

(assert (= (and d!411582 c!235286) b!1430718))

(assert (= (and d!411582 (not c!235286)) b!1430719))

(declare-fun m!1629767 () Bool)

(assert (=> b!1430719 m!1629767))

(declare-fun m!1629769 () Bool)

(assert (=> b!1430719 m!1629769))

(assert (=> d!411448 d!411582))

(declare-fun d!411584 () Bool)

(assert (=> d!411584 (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 (++!3927 lt!485510 lt!485506) (rules!11264 thiss!10022))))

(declare-fun lt!485722 () Unit!22343)

(declare-fun lt!485723 () Unit!22343)

(assert (=> d!411584 (= lt!485722 lt!485723)))

(assert (=> d!411584 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (++!3927 lt!485510 lt!485506))))

(assert (=> d!411584 (= lt!485723 (lemmaRulesProduceEachTokenIndividuallyConcat!34 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485506))))

(assert (=> d!411584 true))

(declare-fun _$81!48 () Unit!22343)

(assert (=> d!411584 (= (choose!8799 Lexer!2259 lt!485510 lt!485506 (rules!11264 thiss!10022)) _$81!48)))

(declare-fun bs!340675 () Bool)

(assert (= bs!340675 d!411584))

(assert (=> bs!340675 m!1629159))

(assert (=> bs!340675 m!1629159))

(assert (=> bs!340675 m!1629545))

(assert (=> bs!340675 m!1629159))

(assert (=> bs!340675 m!1629349))

(assert (=> bs!340675 m!1629151))

(assert (=> d!411476 d!411584))

(assert (=> d!411476 d!411576))

(declare-fun d!411604 () Bool)

(assert (=> d!411604 (= (head!2846 (list!5883 (tokens!1934 other!32))) (h!20217 (list!5883 (tokens!1934 other!32))))))

(assert (=> d!411398 d!411604))

(assert (=> d!411398 d!411428))

(declare-fun d!411606 () Bool)

(declare-fun lt!485726 () Token!4856)

(assert (=> d!411606 (= lt!485726 (head!2846 (list!5885 (c!235218 (tokens!1934 other!32)))))))

(declare-fun e!913243 () Token!4856)

(assert (=> d!411606 (= lt!485726 e!913243)))

(declare-fun c!235316 () Bool)

(assert (=> d!411606 (= c!235316 ((_ is Leaf!7521) (c!235218 (tokens!1934 other!32))))))

(assert (=> d!411606 (isBalanced!1487 (c!235218 (tokens!1934 other!32)))))

(assert (=> d!411606 (= (head!2847 (c!235218 (tokens!1934 other!32))) lt!485726)))

(declare-fun b!1430811 () Bool)

(declare-fun apply!3780 (IArray!10047 Int) Token!4856)

(assert (=> b!1430811 (= e!913243 (apply!3780 (xs!7750 (c!235218 (tokens!1934 other!32))) 0))))

(declare-fun b!1430812 () Bool)

(assert (=> b!1430812 (= e!913243 (head!2847 (left!12626 (c!235218 (tokens!1934 other!32)))))))

(assert (= (and d!411606 c!235316) b!1430811))

(assert (= (and d!411606 (not c!235316)) b!1430812))

(assert (=> d!411606 m!1629305))

(assert (=> d!411606 m!1629305))

(declare-fun m!1629811 () Bool)

(assert (=> d!411606 m!1629811))

(assert (=> d!411606 m!1629307))

(declare-fun m!1629813 () Bool)

(assert (=> b!1430811 m!1629813))

(declare-fun m!1629815 () Bool)

(assert (=> b!1430812 m!1629815))

(assert (=> d!411398 d!411606))

(assert (=> d!411398 d!411490))

(declare-fun d!411608 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparable!102 (LexerInterface!2261 BalanceConc!9982 Int List!14883) Bool)

(assert (=> d!411608 (= (separableTokens!211 Lexer!2259 (tokens!1934 thiss!10022) (rules!11264 thiss!10022)) (tokensListTwoByTwoPredicateSeparable!102 Lexer!2259 (tokens!1934 thiss!10022) 0 (rules!11264 thiss!10022)))))

(declare-fun bs!340677 () Bool)

(assert (= bs!340677 d!411608))

(declare-fun m!1629817 () Bool)

(assert (=> bs!340677 m!1629817))

(assert (=> b!1430352 d!411608))

(declare-fun b!1430825 () Bool)

(declare-fun e!913249 () Bool)

(assert (=> b!1430825 (= e!913249 (not (isEmpty!9180 (right!12956 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))))))))

(declare-fun b!1430826 () Bool)

(declare-fun res!647508 () Bool)

(assert (=> b!1430826 (=> (not res!647508) (not e!913249))))

(assert (=> b!1430826 (= res!647508 (not (isEmpty!9180 (left!12626 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))))))))

(declare-fun b!1430827 () Bool)

(declare-fun res!647509 () Bool)

(assert (=> b!1430827 (=> (not res!647509) (not e!913249))))

(assert (=> b!1430827 (= res!647509 (isBalanced!1487 (left!12626 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430828 () Bool)

(declare-fun e!913248 () Bool)

(assert (=> b!1430828 (= e!913248 e!913249)))

(declare-fun res!647505 () Bool)

(assert (=> b!1430828 (=> (not res!647505) (not e!913249))))

(assert (=> b!1430828 (= res!647505 (<= (- 1) (- (height!725 (left!12626 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))) (height!725 (right!12956 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))))))))

(declare-fun b!1430829 () Bool)

(declare-fun res!647510 () Bool)

(assert (=> b!1430829 (=> (not res!647510) (not e!913249))))

(assert (=> b!1430829 (= res!647510 (<= (- (height!725 (left!12626 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))) (height!725 (right!12956 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))))) 1))))

(declare-fun d!411612 () Bool)

(declare-fun res!647506 () Bool)

(assert (=> d!411612 (=> res!647506 e!913248)))

(assert (=> d!411612 (= res!647506 (not ((_ is Node!5021) (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))))))

(assert (=> d!411612 (= (isBalanced!1487 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32)))) e!913248)))

(declare-fun b!1430830 () Bool)

(declare-fun res!647507 () Bool)

(assert (=> b!1430830 (=> (not res!647507) (not e!913249))))

(assert (=> b!1430830 (= res!647507 (isBalanced!1487 (right!12956 (++!3931 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))))))))

(assert (= (and d!411612 (not res!647506)) b!1430828))

(assert (= (and b!1430828 res!647505) b!1430829))

(assert (= (and b!1430829 res!647510) b!1430827))

(assert (= (and b!1430827 res!647509) b!1430830))

(assert (= (and b!1430830 res!647507) b!1430826))

(assert (= (and b!1430826 res!647508) b!1430825))

(declare-fun m!1629819 () Bool)

(assert (=> b!1430830 m!1629819))

(declare-fun m!1629821 () Bool)

(assert (=> b!1430826 m!1629821))

(declare-fun m!1629823 () Bool)

(assert (=> b!1430825 m!1629823))

(declare-fun m!1629825 () Bool)

(assert (=> b!1430829 m!1629825))

(declare-fun m!1629827 () Bool)

(assert (=> b!1430829 m!1629827))

(assert (=> b!1430828 m!1629825))

(assert (=> b!1430828 m!1629827))

(declare-fun m!1629829 () Bool)

(assert (=> b!1430827 m!1629829))

(assert (=> b!1430385 d!411612))

(assert (=> b!1430385 d!411526))

(declare-fun d!411614 () Bool)

(declare-fun lt!485735 () BalanceConc!9980)

(declare-fun list!5887 (BalanceConc!9980) List!14880)

(assert (=> d!411614 (= (list!5887 lt!485735) (originalCharacters!3459 (h!20217 (t!126961 lt!485505))))))

(declare-fun dynLambda!6764 (Int TokenValue!2687) BalanceConc!9980)

(assert (=> d!411614 (= lt!485735 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505))))) (value!83662 (h!20217 (t!126961 lt!485505)))))))

(assert (=> d!411614 (= (charsOf!1502 (h!20217 (t!126961 lt!485505))) lt!485735)))

(declare-fun b_lambda!44841 () Bool)

(assert (=> (not b_lambda!44841) (not d!411614)))

(declare-fun tb!75817 () Bool)

(declare-fun t!126982 () Bool)

(assert (=> (and b!1430541 (= (toChars!3759 (transformation!2597 (h!20218 (rules!11264 other!32)))) (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505)))))) t!126982) tb!75817))

(declare-fun b!1430835 () Bool)

(declare-fun e!913252 () Bool)

(declare-fun tp!405617 () Bool)

(declare-fun inv!19667 (Conc!5020) Bool)

(assert (=> b!1430835 (= e!913252 (and (inv!19667 (c!235216 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505))))) (value!83662 (h!20217 (t!126961 lt!485505)))))) tp!405617))))

(declare-fun result!92066 () Bool)

(declare-fun inv!19668 (BalanceConc!9980) Bool)

(assert (=> tb!75817 (= result!92066 (and (inv!19668 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505))))) (value!83662 (h!20217 (t!126961 lt!485505))))) e!913252))))

(assert (= tb!75817 b!1430835))

(declare-fun m!1629831 () Bool)

(assert (=> b!1430835 m!1629831))

(declare-fun m!1629833 () Bool)

(assert (=> tb!75817 m!1629833))

(assert (=> d!411614 t!126982))

(declare-fun b_and!96311 () Bool)

(assert (= b_and!96305 (and (=> t!126982 result!92066) b_and!96311)))

(declare-fun t!126984 () Bool)

(declare-fun tb!75819 () Bool)

(assert (=> (and b!1430544 (= (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022)))) (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505)))))) t!126984) tb!75819))

(declare-fun result!92070 () Bool)

(assert (= result!92070 result!92066))

(assert (=> d!411614 t!126984))

(declare-fun b_and!96313 () Bool)

(assert (= b_and!96309 (and (=> t!126984 result!92070) b_and!96313)))

(declare-fun m!1629835 () Bool)

(assert (=> d!411614 m!1629835))

(declare-fun m!1629837 () Bool)

(assert (=> d!411614 m!1629837))

(assert (=> b!1430360 d!411614))

(declare-fun d!411616 () Bool)

(declare-fun lt!485737 () Bool)

(declare-fun e!913254 () Bool)

(assert (=> d!411616 (= lt!485737 e!913254)))

(declare-fun res!647512 () Bool)

(assert (=> d!411616 (=> (not res!647512) (not e!913254))))

(assert (=> d!411616 (= res!647512 (= (list!5883 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 (h!20217 lt!485505)))))) (list!5883 (singletonSeq!1201 (h!20217 lt!485505)))))))

(declare-fun e!913253 () Bool)

(assert (=> d!411616 (= lt!485737 e!913253)))

(declare-fun res!647513 () Bool)

(assert (=> d!411616 (=> (not res!647513) (not e!913253))))

(declare-fun lt!485736 () tuple2!14076)

(assert (=> d!411616 (= res!647513 (= (size!12154 (_1!7924 lt!485736)) 1))))

(assert (=> d!411616 (= lt!485736 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 (h!20217 lt!485505)))))))

(assert (=> d!411616 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411616 (= (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485505)) lt!485737)))

(declare-fun b!1430836 () Bool)

(declare-fun res!647511 () Bool)

(assert (=> b!1430836 (=> (not res!647511) (not e!913253))))

(assert (=> b!1430836 (= res!647511 (= (apply!3776 (_1!7924 lt!485736) 0) (h!20217 lt!485505)))))

(declare-fun b!1430837 () Bool)

(assert (=> b!1430837 (= e!913253 (isEmpty!9178 (_2!7924 lt!485736)))))

(declare-fun b!1430838 () Bool)

(assert (=> b!1430838 (= e!913254 (isEmpty!9178 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 (h!20217 lt!485505)))))))))

(assert (= (and d!411616 res!647513) b!1430836))

(assert (= (and b!1430836 res!647511) b!1430837))

(assert (= (and d!411616 res!647512) b!1430838))

(declare-fun m!1629839 () Bool)

(assert (=> d!411616 m!1629839))

(declare-fun m!1629841 () Bool)

(assert (=> d!411616 m!1629841))

(declare-fun m!1629843 () Bool)

(assert (=> d!411616 m!1629843))

(assert (=> d!411616 m!1629839))

(assert (=> d!411616 m!1629841))

(declare-fun m!1629845 () Bool)

(assert (=> d!411616 m!1629845))

(assert (=> d!411616 m!1629251))

(assert (=> d!411616 m!1629839))

(declare-fun m!1629847 () Bool)

(assert (=> d!411616 m!1629847))

(declare-fun m!1629849 () Bool)

(assert (=> d!411616 m!1629849))

(declare-fun m!1629851 () Bool)

(assert (=> b!1430836 m!1629851))

(declare-fun m!1629853 () Bool)

(assert (=> b!1430837 m!1629853))

(assert (=> b!1430838 m!1629839))

(assert (=> b!1430838 m!1629839))

(assert (=> b!1430838 m!1629841))

(assert (=> b!1430838 m!1629841))

(assert (=> b!1430838 m!1629843))

(declare-fun m!1629855 () Bool)

(assert (=> b!1430838 m!1629855))

(assert (=> b!1430360 d!411616))

(declare-fun d!411618 () Bool)

(declare-fun lt!485740 () Int)

(declare-fun size!12163 (List!14880) Int)

(assert (=> d!411618 (= lt!485740 (size!12163 (list!5887 (charsOf!1502 (h!20217 (t!126961 lt!485505))))))))

(declare-fun size!12164 (Conc!5020) Int)

(assert (=> d!411618 (= lt!485740 (size!12164 (c!235216 (charsOf!1502 (h!20217 (t!126961 lt!485505))))))))

(assert (=> d!411618 (= (size!12158 (charsOf!1502 (h!20217 (t!126961 lt!485505)))) lt!485740)))

(declare-fun bs!340678 () Bool)

(assert (= bs!340678 d!411618))

(assert (=> bs!340678 m!1629335))

(declare-fun m!1629857 () Bool)

(assert (=> bs!340678 m!1629857))

(assert (=> bs!340678 m!1629857))

(declare-fun m!1629859 () Bool)

(assert (=> bs!340678 m!1629859))

(declare-fun m!1629861 () Bool)

(assert (=> bs!340678 m!1629861))

(assert (=> b!1430360 d!411618))

(declare-fun d!411620 () Bool)

(assert (=> d!411620 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485505))))

(declare-fun lt!485741 () Unit!22343)

(assert (=> d!411620 (= lt!485741 (choose!8797 Lexer!2259 (rules!11264 thiss!10022) lt!485505 (h!20217 lt!485505)))))

(assert (=> d!411620 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411620 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485505 (h!20217 lt!485505)) lt!485741)))

(declare-fun bs!340679 () Bool)

(assert (= bs!340679 d!411620))

(assert (=> bs!340679 m!1629329))

(declare-fun m!1629863 () Bool)

(assert (=> bs!340679 m!1629863))

(assert (=> bs!340679 m!1629251))

(assert (=> b!1430360 d!411620))

(declare-fun d!411622 () Bool)

(assert (=> d!411622 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 lt!485505)))))

(declare-fun lt!485742 () Unit!22343)

(assert (=> d!411622 (= lt!485742 (choose!8797 Lexer!2259 (rules!11264 thiss!10022) lt!485505 (h!20217 (t!126961 lt!485505))))))

(assert (=> d!411622 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411622 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) lt!485505 (h!20217 (t!126961 lt!485505))) lt!485742)))

(declare-fun bs!340680 () Bool)

(assert (= bs!340680 d!411622))

(assert (=> bs!340680 m!1629331))

(declare-fun m!1629865 () Bool)

(assert (=> bs!340680 m!1629865))

(assert (=> bs!340680 m!1629251))

(assert (=> b!1430360 d!411622))

(declare-fun d!411624 () Bool)

(declare-fun lt!485744 () Bool)

(declare-fun e!913256 () Bool)

(assert (=> d!411624 (= lt!485744 e!913256)))

(declare-fun res!647515 () Bool)

(assert (=> d!411624 (=> (not res!647515) (not e!913256))))

(assert (=> d!411624 (= res!647515 (= (list!5883 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 (h!20217 (t!126961 lt!485505))))))) (list!5883 (singletonSeq!1201 (h!20217 (t!126961 lt!485505))))))))

(declare-fun e!913255 () Bool)

(assert (=> d!411624 (= lt!485744 e!913255)))

(declare-fun res!647516 () Bool)

(assert (=> d!411624 (=> (not res!647516) (not e!913255))))

(declare-fun lt!485743 () tuple2!14076)

(assert (=> d!411624 (= res!647516 (= (size!12154 (_1!7924 lt!485743)) 1))))

(assert (=> d!411624 (= lt!485743 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 (h!20217 (t!126961 lt!485505))))))))

(assert (=> d!411624 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411624 (= (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 lt!485505))) lt!485744)))

(declare-fun b!1430839 () Bool)

(declare-fun res!647514 () Bool)

(assert (=> b!1430839 (=> (not res!647514) (not e!913255))))

(assert (=> b!1430839 (= res!647514 (= (apply!3776 (_1!7924 lt!485743) 0) (h!20217 (t!126961 lt!485505))))))

(declare-fun b!1430840 () Bool)

(assert (=> b!1430840 (= e!913255 (isEmpty!9178 (_2!7924 lt!485743)))))

(declare-fun b!1430841 () Bool)

(assert (=> b!1430841 (= e!913256 (isEmpty!9178 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 (h!20217 (t!126961 lt!485505))))))))))

(assert (= (and d!411624 res!647516) b!1430839))

(assert (= (and b!1430839 res!647514) b!1430840))

(assert (= (and d!411624 res!647515) b!1430841))

(declare-fun m!1629867 () Bool)

(assert (=> d!411624 m!1629867))

(declare-fun m!1629869 () Bool)

(assert (=> d!411624 m!1629869))

(declare-fun m!1629871 () Bool)

(assert (=> d!411624 m!1629871))

(assert (=> d!411624 m!1629867))

(assert (=> d!411624 m!1629869))

(declare-fun m!1629873 () Bool)

(assert (=> d!411624 m!1629873))

(assert (=> d!411624 m!1629251))

(assert (=> d!411624 m!1629867))

(declare-fun m!1629875 () Bool)

(assert (=> d!411624 m!1629875))

(declare-fun m!1629877 () Bool)

(assert (=> d!411624 m!1629877))

(declare-fun m!1629879 () Bool)

(assert (=> b!1430839 m!1629879))

(declare-fun m!1629881 () Bool)

(assert (=> b!1430840 m!1629881))

(assert (=> b!1430841 m!1629867))

(assert (=> b!1430841 m!1629867))

(assert (=> b!1430841 m!1629869))

(assert (=> b!1430841 m!1629869))

(assert (=> b!1430841 m!1629871))

(declare-fun m!1629883 () Bool)

(assert (=> b!1430841 m!1629883))

(assert (=> b!1430360 d!411624))

(declare-fun d!411626 () Bool)

(assert (=> d!411626 (= (separableTokensPredicate!496 Lexer!2259 (h!20217 lt!485505) (h!20217 (t!126961 lt!485505)) (rules!11264 thiss!10022)) (not (prefixMatchZipperSequence!319 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)) (++!3930 (charsOf!1502 (h!20217 lt!485505)) (singletonSeq!1202 (apply!3777 (charsOf!1502 (h!20217 (t!126961 lt!485505))) 0))))))))

(declare-fun bs!340681 () Bool)

(assert (= bs!340681 d!411626))

(declare-fun m!1629885 () Bool)

(assert (=> bs!340681 m!1629885))

(assert (=> bs!340681 m!1629293))

(declare-fun m!1629887 () Bool)

(assert (=> bs!340681 m!1629887))

(declare-fun m!1629889 () Bool)

(assert (=> bs!340681 m!1629889))

(assert (=> bs!340681 m!1629885))

(assert (=> bs!340681 m!1629889))

(declare-fun m!1629891 () Bool)

(assert (=> bs!340681 m!1629891))

(assert (=> bs!340681 m!1629335))

(assert (=> bs!340681 m!1629887))

(assert (=> bs!340681 m!1629335))

(assert (=> bs!340681 m!1629293))

(assert (=> bs!340681 m!1629891))

(declare-fun m!1629893 () Bool)

(assert (=> bs!340681 m!1629893))

(assert (=> b!1430360 d!411626))

(declare-fun d!411628 () Bool)

(assert (=> d!411628 (= (inv!19652 (tag!2859 (h!20218 (rules!11264 thiss!10022)))) (= (mod (str.len (value!83661 (tag!2859 (h!20218 (rules!11264 thiss!10022))))) 2) 0))))

(assert (=> b!1430543 d!411628))

(declare-fun d!411630 () Bool)

(declare-fun res!647519 () Bool)

(declare-fun e!913259 () Bool)

(assert (=> d!411630 (=> (not res!647519) (not e!913259))))

(declare-fun semiInverseModEq!984 (Int Int) Bool)

(assert (=> d!411630 (= res!647519 (semiInverseModEq!984 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022)))) (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))))))

(assert (=> d!411630 (= (inv!19665 (transformation!2597 (h!20218 (rules!11264 thiss!10022)))) e!913259)))

(declare-fun b!1430844 () Bool)

(declare-fun equivClasses!943 (Int Int) Bool)

(assert (=> b!1430844 (= e!913259 (equivClasses!943 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022)))) (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))))))

(assert (= (and d!411630 res!647519) b!1430844))

(declare-fun m!1629895 () Bool)

(assert (=> d!411630 m!1629895))

(declare-fun m!1629897 () Bool)

(assert (=> b!1430844 m!1629897))

(assert (=> b!1430543 d!411630))

(declare-fun bs!340688 () Bool)

(declare-fun d!411632 () Bool)

(assert (= bs!340688 (and d!411632 d!411450)))

(declare-fun lambda!62750 () Int)

(assert (=> bs!340688 (= lambda!62750 lambda!62743)))

(declare-fun bs!340689 () Bool)

(assert (= bs!340689 (and d!411632 d!411548)))

(assert (=> bs!340689 (= lambda!62750 lambda!62744)))

(declare-fun b!1430873 () Bool)

(declare-fun e!913280 () Bool)

(assert (=> b!1430873 (= e!913280 true)))

(declare-fun b!1430872 () Bool)

(declare-fun e!913279 () Bool)

(assert (=> b!1430872 (= e!913279 e!913280)))

(declare-fun b!1430871 () Bool)

(declare-fun e!913278 () Bool)

(assert (=> b!1430871 (= e!913278 e!913279)))

(assert (=> d!411632 e!913278))

(assert (= b!1430872 b!1430873))

(assert (= b!1430871 b!1430872))

(assert (= (and d!411632 ((_ is Cons!14817) (rules!11264 thiss!10022))) b!1430871))

(assert (=> b!1430873 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62750))))

(assert (=> b!1430873 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62750))))

(assert (=> d!411632 true))

(declare-fun e!913277 () Bool)

(assert (=> d!411632 e!913277))

(declare-fun res!647537 () Bool)

(assert (=> d!411632 (=> (not res!647537) (not e!913277))))

(declare-fun lt!485760 () Bool)

(assert (=> d!411632 (= res!647537 (= lt!485760 (forall!3651 (list!5883 (tokens!1934 thiss!10022)) lambda!62750)))))

(declare-fun forall!3652 (BalanceConc!9982 Int) Bool)

(assert (=> d!411632 (= lt!485760 (forall!3652 (tokens!1934 thiss!10022) lambda!62750))))

(assert (=> d!411632 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411632 (= (rulesProduceEachTokenIndividually!827 Lexer!2259 (rules!11264 thiss!10022) (tokens!1934 thiss!10022)) lt!485760)))

(declare-fun b!1430870 () Bool)

(assert (=> b!1430870 (= e!913277 (= lt!485760 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (list!5883 (tokens!1934 thiss!10022)))))))

(assert (= (and d!411632 res!647537) b!1430870))

(assert (=> d!411632 m!1629177))

(assert (=> d!411632 m!1629177))

(declare-fun m!1629985 () Bool)

(assert (=> d!411632 m!1629985))

(declare-fun m!1629987 () Bool)

(assert (=> d!411632 m!1629987))

(assert (=> d!411632 m!1629251))

(assert (=> b!1430870 m!1629177))

(assert (=> b!1430870 m!1629177))

(declare-fun m!1629989 () Bool)

(assert (=> b!1430870 m!1629989))

(assert (=> b!1430524 d!411632))

(declare-fun d!411656 () Bool)

(declare-fun lt!485763 () Token!4856)

(declare-fun apply!3782 (List!14882 Int) Token!4856)

(assert (=> d!411656 (= lt!485763 (apply!3782 (list!5883 (_1!7924 lt!485551)) 0))))

(declare-fun apply!3783 (Conc!5021 Int) Token!4856)

(assert (=> d!411656 (= lt!485763 (apply!3783 (c!235218 (_1!7924 lt!485551)) 0))))

(declare-fun e!913283 () Bool)

(assert (=> d!411656 e!913283))

(declare-fun res!647540 () Bool)

(assert (=> d!411656 (=> (not res!647540) (not e!913283))))

(assert (=> d!411656 (= res!647540 (<= 0 0))))

(assert (=> d!411656 (= (apply!3776 (_1!7924 lt!485551) 0) lt!485763)))

(declare-fun b!1430876 () Bool)

(assert (=> b!1430876 (= e!913283 (< 0 (size!12154 (_1!7924 lt!485551))))))

(assert (= (and d!411656 res!647540) b!1430876))

(declare-fun m!1629991 () Bool)

(assert (=> d!411656 m!1629991))

(assert (=> d!411656 m!1629991))

(declare-fun m!1629993 () Bool)

(assert (=> d!411656 m!1629993))

(declare-fun m!1629995 () Bool)

(assert (=> d!411656 m!1629995))

(assert (=> b!1430876 m!1629279))

(assert (=> b!1430337 d!411656))

(declare-fun b!1430877 () Bool)

(declare-fun e!913285 () Bool)

(assert (=> b!1430877 (= e!913285 (not (isEmpty!9180 (right!12956 (c!235218 (tokens!1934 thiss!10022))))))))

(declare-fun b!1430878 () Bool)

(declare-fun res!647544 () Bool)

(assert (=> b!1430878 (=> (not res!647544) (not e!913285))))

(assert (=> b!1430878 (= res!647544 (not (isEmpty!9180 (left!12626 (c!235218 (tokens!1934 thiss!10022))))))))

(declare-fun b!1430879 () Bool)

(declare-fun res!647545 () Bool)

(assert (=> b!1430879 (=> (not res!647545) (not e!913285))))

(assert (=> b!1430879 (= res!647545 (isBalanced!1487 (left!12626 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun b!1430880 () Bool)

(declare-fun e!913284 () Bool)

(assert (=> b!1430880 (= e!913284 e!913285)))

(declare-fun res!647541 () Bool)

(assert (=> b!1430880 (=> (not res!647541) (not e!913285))))

(assert (=> b!1430880 (= res!647541 (<= (- 1) (- (height!725 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (height!725 (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))))

(declare-fun b!1430881 () Bool)

(declare-fun res!647546 () Bool)

(assert (=> b!1430881 (=> (not res!647546) (not e!913285))))

(assert (=> b!1430881 (= res!647546 (<= (- (height!725 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (height!725 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) 1))))

(declare-fun d!411658 () Bool)

(declare-fun res!647542 () Bool)

(assert (=> d!411658 (=> res!647542 e!913284)))

(assert (=> d!411658 (= res!647542 (not ((_ is Node!5021) (c!235218 (tokens!1934 thiss!10022)))))))

(assert (=> d!411658 (= (isBalanced!1487 (c!235218 (tokens!1934 thiss!10022))) e!913284)))

(declare-fun b!1430882 () Bool)

(declare-fun res!647543 () Bool)

(assert (=> b!1430882 (=> (not res!647543) (not e!913285))))

(assert (=> b!1430882 (= res!647543 (isBalanced!1487 (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (= (and d!411658 (not res!647542)) b!1430880))

(assert (= (and b!1430880 res!647541) b!1430881))

(assert (= (and b!1430881 res!647546) b!1430879))

(assert (= (and b!1430879 res!647545) b!1430882))

(assert (= (and b!1430882 res!647543) b!1430878))

(assert (= (and b!1430878 res!647544) b!1430877))

(declare-fun m!1629997 () Bool)

(assert (=> b!1430882 m!1629997))

(declare-fun m!1629999 () Bool)

(assert (=> b!1430878 m!1629999))

(declare-fun m!1630001 () Bool)

(assert (=> b!1430877 m!1630001))

(declare-fun m!1630003 () Bool)

(assert (=> b!1430881 m!1630003))

(declare-fun m!1630005 () Bool)

(assert (=> b!1430881 m!1630005))

(assert (=> b!1430880 m!1630003))

(assert (=> b!1430880 m!1630005))

(declare-fun m!1630007 () Bool)

(assert (=> b!1430879 m!1630007))

(assert (=> d!411436 d!411658))

(assert (=> b!1430444 d!411616))

(declare-fun d!411660 () Bool)

(declare-fun lt!485766 () Bool)

(declare-fun isEmpty!9183 (List!14880) Bool)

(assert (=> d!411660 (= lt!485766 (isEmpty!9183 (list!5887 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)))))))))

(declare-fun isEmpty!9184 (Conc!5020) Bool)

(assert (=> d!411660 (= lt!485766 (isEmpty!9184 (c!235216 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)))))))))

(assert (=> d!411660 (= (isEmpty!9178 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501))))) lt!485766)))

(declare-fun bs!340690 () Bool)

(assert (= bs!340690 d!411660))

(declare-fun m!1630009 () Bool)

(assert (=> bs!340690 m!1630009))

(assert (=> bs!340690 m!1630009))

(declare-fun m!1630011 () Bool)

(assert (=> bs!340690 m!1630011))

(declare-fun m!1630013 () Bool)

(assert (=> bs!340690 m!1630013))

(assert (=> b!1430339 d!411660))

(declare-fun b!1430943 () Bool)

(declare-fun e!913325 () Bool)

(declare-fun lt!485823 () tuple2!14076)

(assert (=> b!1430943 (= e!913325 (not (isEmpty!9172 (_1!7924 lt!485823))))))

(declare-fun b!1430944 () Bool)

(declare-fun e!913324 () Bool)

(assert (=> b!1430944 (= e!913324 (= (_2!7924 lt!485823) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501))))))

(declare-fun b!1430945 () Bool)

(declare-fun res!647574 () Bool)

(declare-fun e!913323 () Bool)

(assert (=> b!1430945 (=> (not res!647574) (not e!913323))))

(declare-datatypes ((tuple2!14080 0))(
  ( (tuple2!14081 (_1!7926 List!14882) (_2!7926 List!14880)) )
))
(declare-fun lexList!698 (LexerInterface!2261 List!14883 List!14880) tuple2!14080)

(assert (=> b!1430945 (= res!647574 (= (list!5883 (_1!7924 lt!485823)) (_1!7926 (lexList!698 Lexer!2259 (rules!11264 thiss!10022) (list!5887 (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)))))))))

(declare-fun b!1430946 () Bool)

(assert (=> b!1430946 (= e!913323 (= (list!5887 (_2!7924 lt!485823)) (_2!7926 (lexList!698 Lexer!2259 (rules!11264 thiss!10022) (list!5887 (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)))))))))

(declare-fun d!411662 () Bool)

(assert (=> d!411662 e!913323))

(declare-fun res!647576 () Bool)

(assert (=> d!411662 (=> (not res!647576) (not e!913323))))

(assert (=> d!411662 (= res!647576 e!913324)))

(declare-fun c!235335 () Bool)

(assert (=> d!411662 (= c!235335 (> (size!12154 (_1!7924 lt!485823)) 0))))

(declare-fun lexTailRecV2!453 (LexerInterface!2261 List!14883 BalanceConc!9980 BalanceConc!9980 BalanceConc!9980 BalanceConc!9982) tuple2!14076)

(assert (=> d!411662 (= lt!485823 (lexTailRecV2!453 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)) (BalanceConc!9981 Empty!5020) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)) (BalanceConc!9983 Empty!5021)))))

(assert (=> d!411662 (= (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501))) lt!485823)))

(declare-fun b!1430947 () Bool)

(assert (=> b!1430947 (= e!913324 e!913325)))

(declare-fun res!647575 () Bool)

(assert (=> b!1430947 (= res!647575 (< (size!12158 (_2!7924 lt!485823)) (size!12158 (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)))))))

(assert (=> b!1430947 (=> (not res!647575) (not e!913325))))

(assert (= (and d!411662 c!235335) b!1430947))

(assert (= (and d!411662 (not c!235335)) b!1430944))

(assert (= (and b!1430947 res!647575) b!1430943))

(assert (= (and d!411662 res!647576) b!1430945))

(assert (= (and b!1430945 res!647574) b!1430946))

(declare-fun m!1630145 () Bool)

(assert (=> d!411662 m!1630145))

(assert (=> d!411662 m!1629275))

(assert (=> d!411662 m!1629275))

(declare-fun m!1630147 () Bool)

(assert (=> d!411662 m!1630147))

(declare-fun m!1630149 () Bool)

(assert (=> b!1430945 m!1630149))

(assert (=> b!1430945 m!1629275))

(declare-fun m!1630151 () Bool)

(assert (=> b!1430945 m!1630151))

(assert (=> b!1430945 m!1630151))

(declare-fun m!1630153 () Bool)

(assert (=> b!1430945 m!1630153))

(declare-fun m!1630155 () Bool)

(assert (=> b!1430947 m!1630155))

(assert (=> b!1430947 m!1629275))

(declare-fun m!1630157 () Bool)

(assert (=> b!1430947 m!1630157))

(declare-fun m!1630159 () Bool)

(assert (=> b!1430943 m!1630159))

(declare-fun m!1630161 () Bool)

(assert (=> b!1430946 m!1630161))

(assert (=> b!1430946 m!1629275))

(assert (=> b!1430946 m!1630151))

(assert (=> b!1430946 m!1630151))

(assert (=> b!1430946 m!1630153))

(assert (=> b!1430339 d!411662))

(declare-fun d!411702 () Bool)

(declare-fun lt!485829 () BalanceConc!9980)

(declare-fun printList!697 (LexerInterface!2261 List!14882) List!14880)

(assert (=> d!411702 (= (list!5887 lt!485829) (printList!697 Lexer!2259 (list!5883 (singletonSeq!1201 lt!485501))))))

(declare-fun printTailRec!671 (LexerInterface!2261 BalanceConc!9982 Int BalanceConc!9980) BalanceConc!9980)

(assert (=> d!411702 (= lt!485829 (printTailRec!671 Lexer!2259 (singletonSeq!1201 lt!485501) 0 (BalanceConc!9981 Empty!5020)))))

(assert (=> d!411702 (= (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)) lt!485829)))

(declare-fun bs!340707 () Bool)

(assert (= bs!340707 d!411702))

(declare-fun m!1630197 () Bool)

(assert (=> bs!340707 m!1630197))

(assert (=> bs!340707 m!1629273))

(assert (=> bs!340707 m!1629281))

(assert (=> bs!340707 m!1629281))

(declare-fun m!1630199 () Bool)

(assert (=> bs!340707 m!1630199))

(assert (=> bs!340707 m!1629273))

(declare-fun m!1630201 () Bool)

(assert (=> bs!340707 m!1630201))

(assert (=> b!1430339 d!411702))

(declare-fun d!411710 () Bool)

(declare-fun e!913338 () Bool)

(assert (=> d!411710 e!913338))

(declare-fun res!647586 () Bool)

(assert (=> d!411710 (=> (not res!647586) (not e!913338))))

(declare-fun lt!485832 () BalanceConc!9982)

(assert (=> d!411710 (= res!647586 (= (list!5883 lt!485832) (Cons!14816 lt!485501 Nil!14816)))))

(declare-fun singleton!504 (Token!4856) BalanceConc!9982)

(assert (=> d!411710 (= lt!485832 (singleton!504 lt!485501))))

(assert (=> d!411710 (= (singletonSeq!1201 lt!485501) lt!485832)))

(declare-fun b!1430963 () Bool)

(assert (=> b!1430963 (= e!913338 (isBalanced!1487 (c!235218 lt!485832)))))

(assert (= (and d!411710 res!647586) b!1430963))

(declare-fun m!1630203 () Bool)

(assert (=> d!411710 m!1630203))

(declare-fun m!1630205 () Bool)

(assert (=> d!411710 m!1630205))

(declare-fun m!1630207 () Bool)

(assert (=> b!1430963 m!1630207))

(assert (=> b!1430339 d!411710))

(declare-fun d!411712 () Bool)

(declare-fun res!647591 () Bool)

(declare-fun e!913341 () Bool)

(assert (=> d!411712 (=> (not res!647591) (not e!913341))))

(declare-fun list!5889 (IArray!10047) List!14882)

(assert (=> d!411712 (= res!647591 (<= (size!12159 (list!5889 (xs!7750 (c!235218 (tokens!1934 other!32))))) 512))))

(assert (=> d!411712 (= (inv!19664 (c!235218 (tokens!1934 other!32))) e!913341)))

(declare-fun b!1430968 () Bool)

(declare-fun res!647592 () Bool)

(assert (=> b!1430968 (=> (not res!647592) (not e!913341))))

(assert (=> b!1430968 (= res!647592 (= (csize!10273 (c!235218 (tokens!1934 other!32))) (size!12159 (list!5889 (xs!7750 (c!235218 (tokens!1934 other!32)))))))))

(declare-fun b!1430969 () Bool)

(assert (=> b!1430969 (= e!913341 (and (> (csize!10273 (c!235218 (tokens!1934 other!32))) 0) (<= (csize!10273 (c!235218 (tokens!1934 other!32))) 512)))))

(assert (= (and d!411712 res!647591) b!1430968))

(assert (= (and b!1430968 res!647592) b!1430969))

(declare-fun m!1630209 () Bool)

(assert (=> d!411712 m!1630209))

(assert (=> d!411712 m!1630209))

(declare-fun m!1630211 () Bool)

(assert (=> d!411712 m!1630211))

(assert (=> b!1430968 m!1630209))

(assert (=> b!1430968 m!1630209))

(assert (=> b!1430968 m!1630211))

(assert (=> b!1430530 d!411712))

(declare-fun d!411714 () Bool)

(declare-fun c!235336 () Bool)

(assert (=> d!411714 (= c!235336 ((_ is Node!5021) (left!12626 (c!235218 (tokens!1934 other!32)))))))

(declare-fun e!913342 () Bool)

(assert (=> d!411714 (= (inv!19656 (left!12626 (c!235218 (tokens!1934 other!32)))) e!913342)))

(declare-fun b!1430970 () Bool)

(assert (=> b!1430970 (= e!913342 (inv!19663 (left!12626 (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1430971 () Bool)

(declare-fun e!913343 () Bool)

(assert (=> b!1430971 (= e!913342 e!913343)))

(declare-fun res!647593 () Bool)

(assert (=> b!1430971 (= res!647593 (not ((_ is Leaf!7521) (left!12626 (c!235218 (tokens!1934 other!32))))))))

(assert (=> b!1430971 (=> res!647593 e!913343)))

(declare-fun b!1430972 () Bool)

(assert (=> b!1430972 (= e!913343 (inv!19664 (left!12626 (c!235218 (tokens!1934 other!32)))))))

(assert (= (and d!411714 c!235336) b!1430970))

(assert (= (and d!411714 (not c!235336)) b!1430971))

(assert (= (and b!1430971 (not res!647593)) b!1430972))

(declare-fun m!1630213 () Bool)

(assert (=> b!1430970 m!1630213))

(declare-fun m!1630215 () Bool)

(assert (=> b!1430972 m!1630215))

(assert (=> b!1430556 d!411714))

(declare-fun d!411716 () Bool)

(declare-fun c!235337 () Bool)

(assert (=> d!411716 (= c!235337 ((_ is Node!5021) (right!12956 (c!235218 (tokens!1934 other!32)))))))

(declare-fun e!913344 () Bool)

(assert (=> d!411716 (= (inv!19656 (right!12956 (c!235218 (tokens!1934 other!32)))) e!913344)))

(declare-fun b!1430973 () Bool)

(assert (=> b!1430973 (= e!913344 (inv!19663 (right!12956 (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1430974 () Bool)

(declare-fun e!913345 () Bool)

(assert (=> b!1430974 (= e!913344 e!913345)))

(declare-fun res!647594 () Bool)

(assert (=> b!1430974 (= res!647594 (not ((_ is Leaf!7521) (right!12956 (c!235218 (tokens!1934 other!32))))))))

(assert (=> b!1430974 (=> res!647594 e!913345)))

(declare-fun b!1430975 () Bool)

(assert (=> b!1430975 (= e!913345 (inv!19664 (right!12956 (c!235218 (tokens!1934 other!32)))))))

(assert (= (and d!411716 c!235337) b!1430973))

(assert (= (and d!411716 (not c!235337)) b!1430974))

(assert (= (and b!1430974 (not res!647594)) b!1430975))

(declare-fun m!1630217 () Bool)

(assert (=> b!1430973 m!1630217))

(declare-fun m!1630219 () Bool)

(assert (=> b!1430975 m!1630219))

(assert (=> b!1430556 d!411716))

(declare-fun d!411718 () Bool)

(assert (=> d!411718 (= (inv!19652 (tag!2859 (h!20218 (rules!11264 other!32)))) (= (mod (str.len (value!83661 (tag!2859 (h!20218 (rules!11264 other!32))))) 2) 0))))

(assert (=> b!1430540 d!411718))

(declare-fun d!411720 () Bool)

(declare-fun res!647595 () Bool)

(declare-fun e!913346 () Bool)

(assert (=> d!411720 (=> (not res!647595) (not e!913346))))

(assert (=> d!411720 (= res!647595 (semiInverseModEq!984 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 other!32)))) (toValue!3900 (transformation!2597 (h!20218 (rules!11264 other!32))))))))

(assert (=> d!411720 (= (inv!19665 (transformation!2597 (h!20218 (rules!11264 other!32)))) e!913346)))

(declare-fun b!1430976 () Bool)

(assert (=> b!1430976 (= e!913346 (equivClasses!943 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 other!32)))) (toValue!3900 (transformation!2597 (h!20218 (rules!11264 other!32))))))))

(assert (= (and d!411720 res!647595) b!1430976))

(declare-fun m!1630221 () Bool)

(assert (=> d!411720 m!1630221))

(declare-fun m!1630223 () Bool)

(assert (=> b!1430976 m!1630223))

(assert (=> b!1430540 d!411720))

(assert (=> d!411492 d!411522))

(declare-fun d!411722 () Bool)

(declare-fun res!647602 () Bool)

(declare-fun e!913349 () Bool)

(assert (=> d!411722 (=> (not res!647602) (not e!913349))))

(assert (=> d!411722 (= res!647602 (= (csize!10272 (c!235218 (tokens!1934 other!32))) (+ (size!12160 (left!12626 (c!235218 (tokens!1934 other!32)))) (size!12160 (right!12956 (c!235218 (tokens!1934 other!32)))))))))

(assert (=> d!411722 (= (inv!19663 (c!235218 (tokens!1934 other!32))) e!913349)))

(declare-fun b!1430983 () Bool)

(declare-fun res!647603 () Bool)

(assert (=> b!1430983 (=> (not res!647603) (not e!913349))))

(assert (=> b!1430983 (= res!647603 (and (not (= (left!12626 (c!235218 (tokens!1934 other!32))) Empty!5021)) (not (= (right!12956 (c!235218 (tokens!1934 other!32))) Empty!5021))))))

(declare-fun b!1430984 () Bool)

(declare-fun res!647604 () Bool)

(assert (=> b!1430984 (=> (not res!647604) (not e!913349))))

(assert (=> b!1430984 (= res!647604 (= (cheight!5232 (c!235218 (tokens!1934 other!32))) (+ (max!0 (height!725 (left!12626 (c!235218 (tokens!1934 other!32)))) (height!725 (right!12956 (c!235218 (tokens!1934 other!32))))) 1)))))

(declare-fun b!1430985 () Bool)

(assert (=> b!1430985 (= e!913349 (<= 0 (cheight!5232 (c!235218 (tokens!1934 other!32)))))))

(assert (= (and d!411722 res!647602) b!1430983))

(assert (= (and b!1430983 res!647603) b!1430984))

(assert (= (and b!1430984 res!647604) b!1430985))

(declare-fun m!1630225 () Bool)

(assert (=> d!411722 m!1630225))

(declare-fun m!1630227 () Bool)

(assert (=> d!411722 m!1630227))

(declare-fun m!1630229 () Bool)

(assert (=> b!1430984 m!1630229))

(declare-fun m!1630231 () Bool)

(assert (=> b!1430984 m!1630231))

(assert (=> b!1430984 m!1630229))

(assert (=> b!1430984 m!1630231))

(declare-fun m!1630233 () Bool)

(assert (=> b!1430984 m!1630233))

(assert (=> b!1430528 d!411722))

(declare-fun d!411724 () Bool)

(assert (=> d!411724 (= (isEmpty!9177 (rules!11264 other!32)) ((_ is Nil!14817) (rules!11264 other!32)))))

(assert (=> d!411434 d!411724))

(declare-fun b!1430986 () Bool)

(declare-fun e!913351 () List!14882)

(assert (=> b!1430986 (= e!913351 lt!485506)))

(declare-fun d!411726 () Bool)

(declare-fun e!913350 () Bool)

(assert (=> d!411726 e!913350))

(declare-fun res!647606 () Bool)

(assert (=> d!411726 (=> (not res!647606) (not e!913350))))

(declare-fun lt!485833 () List!14882)

(assert (=> d!411726 (= res!647606 (= (content!2184 lt!485833) ((_ map or) (content!2184 (t!126961 lt!485510)) (content!2184 lt!485506))))))

(assert (=> d!411726 (= lt!485833 e!913351)))

(declare-fun c!235338 () Bool)

(assert (=> d!411726 (= c!235338 ((_ is Nil!14816) (t!126961 lt!485510)))))

(assert (=> d!411726 (= (++!3927 (t!126961 lt!485510) lt!485506) lt!485833)))

(declare-fun b!1430988 () Bool)

(declare-fun res!647605 () Bool)

(assert (=> b!1430988 (=> (not res!647605) (not e!913350))))

(assert (=> b!1430988 (= res!647605 (= (size!12159 lt!485833) (+ (size!12159 (t!126961 lt!485510)) (size!12159 lt!485506))))))

(declare-fun b!1430987 () Bool)

(assert (=> b!1430987 (= e!913351 (Cons!14816 (h!20217 (t!126961 lt!485510)) (++!3927 (t!126961 (t!126961 lt!485510)) lt!485506)))))

(declare-fun b!1430989 () Bool)

(assert (=> b!1430989 (= e!913350 (or (not (= lt!485506 Nil!14816)) (= lt!485833 (t!126961 lt!485510))))))

(assert (= (and d!411726 c!235338) b!1430986))

(assert (= (and d!411726 (not c!235338)) b!1430987))

(assert (= (and d!411726 res!647606) b!1430988))

(assert (= (and b!1430988 res!647605) b!1430989))

(declare-fun m!1630235 () Bool)

(assert (=> d!411726 m!1630235))

(assert (=> d!411726 m!1629765))

(assert (=> d!411726 m!1629375))

(declare-fun m!1630237 () Bool)

(assert (=> b!1430988 m!1630237))

(declare-fun m!1630239 () Bool)

(assert (=> b!1430988 m!1630239))

(assert (=> b!1430988 m!1629381))

(declare-fun m!1630241 () Bool)

(assert (=> b!1430987 m!1630241))

(assert (=> b!1430398 d!411726))

(declare-fun d!411728 () Bool)

(declare-fun lt!485834 () Token!4856)

(assert (=> d!411728 (= lt!485834 (apply!3782 (list!5883 (_1!7924 lt!485548)) 0))))

(assert (=> d!411728 (= lt!485834 (apply!3783 (c!235218 (_1!7924 lt!485548)) 0))))

(declare-fun e!913352 () Bool)

(assert (=> d!411728 e!913352))

(declare-fun res!647607 () Bool)

(assert (=> d!411728 (=> (not res!647607) (not e!913352))))

(assert (=> d!411728 (= res!647607 (<= 0 0))))

(assert (=> d!411728 (= (apply!3776 (_1!7924 lt!485548) 0) lt!485834)))

(declare-fun b!1430990 () Bool)

(assert (=> b!1430990 (= e!913352 (< 0 (size!12154 (_1!7924 lt!485548))))))

(assert (= (and d!411728 res!647607) b!1430990))

(declare-fun m!1630243 () Bool)

(assert (=> d!411728 m!1630243))

(assert (=> d!411728 m!1630243))

(declare-fun m!1630245 () Bool)

(assert (=> d!411728 m!1630245))

(declare-fun m!1630247 () Bool)

(assert (=> d!411728 m!1630247))

(assert (=> b!1430990 m!1629259))

(assert (=> b!1430334 d!411728))

(declare-fun b!1430991 () Bool)

(declare-fun e!913354 () Bool)

(assert (=> b!1430991 (= e!913354 (not (isEmpty!9180 (right!12956 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430992 () Bool)

(declare-fun res!647611 () Bool)

(assert (=> b!1430992 (=> (not res!647611) (not e!913354))))

(assert (=> b!1430992 (= res!647611 (not (isEmpty!9180 (left!12626 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1430993 () Bool)

(declare-fun res!647612 () Bool)

(assert (=> b!1430993 (=> (not res!647612) (not e!913354))))

(assert (=> b!1430993 (= res!647612 (isBalanced!1487 (left!12626 (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1430994 () Bool)

(declare-fun e!913353 () Bool)

(assert (=> b!1430994 (= e!913353 e!913354)))

(declare-fun res!647608 () Bool)

(assert (=> b!1430994 (=> (not res!647608) (not e!913354))))

(assert (=> b!1430994 (= res!647608 (<= (- 1) (- (height!725 (left!12626 (c!235218 (tokens!1934 other!32)))) (height!725 (right!12956 (c!235218 (tokens!1934 other!32)))))))))

(declare-fun b!1430995 () Bool)

(declare-fun res!647613 () Bool)

(assert (=> b!1430995 (=> (not res!647613) (not e!913354))))

(assert (=> b!1430995 (= res!647613 (<= (- (height!725 (left!12626 (c!235218 (tokens!1934 other!32)))) (height!725 (right!12956 (c!235218 (tokens!1934 other!32))))) 1))))

(declare-fun d!411730 () Bool)

(declare-fun res!647609 () Bool)

(assert (=> d!411730 (=> res!647609 e!913353)))

(assert (=> d!411730 (= res!647609 (not ((_ is Node!5021) (c!235218 (tokens!1934 other!32)))))))

(assert (=> d!411730 (= (isBalanced!1487 (c!235218 (tokens!1934 other!32))) e!913353)))

(declare-fun b!1430996 () Bool)

(declare-fun res!647610 () Bool)

(assert (=> b!1430996 (=> (not res!647610) (not e!913354))))

(assert (=> b!1430996 (= res!647610 (isBalanced!1487 (right!12956 (c!235218 (tokens!1934 other!32)))))))

(assert (= (and d!411730 (not res!647609)) b!1430994))

(assert (= (and b!1430994 res!647608) b!1430995))

(assert (= (and b!1430995 res!647613) b!1430993))

(assert (= (and b!1430993 res!647612) b!1430996))

(assert (= (and b!1430996 res!647610) b!1430992))

(assert (= (and b!1430992 res!647611) b!1430991))

(declare-fun m!1630249 () Bool)

(assert (=> b!1430996 m!1630249))

(declare-fun m!1630251 () Bool)

(assert (=> b!1430992 m!1630251))

(declare-fun m!1630253 () Bool)

(assert (=> b!1430991 m!1630253))

(assert (=> b!1430995 m!1630229))

(assert (=> b!1430995 m!1630231))

(assert (=> b!1430994 m!1630229))

(assert (=> b!1430994 m!1630231))

(declare-fun m!1630255 () Bool)

(assert (=> b!1430993 m!1630255))

(assert (=> d!411430 d!411730))

(assert (=> b!1430286 d!411496))

(declare-fun d!411732 () Bool)

(declare-fun lt!485835 () Bool)

(assert (=> d!411732 (= lt!485835 (isEmpty!9183 (list!5887 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)))))))))

(assert (=> d!411732 (= lt!485835 (isEmpty!9184 (c!235216 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)))))))))

(assert (=> d!411732 (= (isEmpty!9178 (_2!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502))))) lt!485835)))

(declare-fun bs!340708 () Bool)

(assert (= bs!340708 d!411732))

(declare-fun m!1630257 () Bool)

(assert (=> bs!340708 m!1630257))

(assert (=> bs!340708 m!1630257))

(declare-fun m!1630259 () Bool)

(assert (=> bs!340708 m!1630259))

(declare-fun m!1630261 () Bool)

(assert (=> bs!340708 m!1630261))

(assert (=> b!1430336 d!411732))

(declare-fun b!1430997 () Bool)

(declare-fun e!913357 () Bool)

(declare-fun lt!485836 () tuple2!14076)

(assert (=> b!1430997 (= e!913357 (not (isEmpty!9172 (_1!7924 lt!485836))))))

(declare-fun b!1430998 () Bool)

(declare-fun e!913356 () Bool)

(assert (=> b!1430998 (= e!913356 (= (_2!7924 lt!485836) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502))))))

(declare-fun b!1430999 () Bool)

(declare-fun res!647614 () Bool)

(declare-fun e!913355 () Bool)

(assert (=> b!1430999 (=> (not res!647614) (not e!913355))))

(assert (=> b!1430999 (= res!647614 (= (list!5883 (_1!7924 lt!485836)) (_1!7926 (lexList!698 Lexer!2259 (rules!11264 thiss!10022) (list!5887 (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)))))))))

(declare-fun b!1431000 () Bool)

(assert (=> b!1431000 (= e!913355 (= (list!5887 (_2!7924 lt!485836)) (_2!7926 (lexList!698 Lexer!2259 (rules!11264 thiss!10022) (list!5887 (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)))))))))

(declare-fun d!411734 () Bool)

(assert (=> d!411734 e!913355))

(declare-fun res!647616 () Bool)

(assert (=> d!411734 (=> (not res!647616) (not e!913355))))

(assert (=> d!411734 (= res!647616 e!913356)))

(declare-fun c!235339 () Bool)

(assert (=> d!411734 (= c!235339 (> (size!12154 (_1!7924 lt!485836)) 0))))

(assert (=> d!411734 (= lt!485836 (lexTailRecV2!453 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)) (BalanceConc!9981 Empty!5020) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)) (BalanceConc!9983 Empty!5021)))))

(assert (=> d!411734 (= (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502))) lt!485836)))

(declare-fun b!1431001 () Bool)

(assert (=> b!1431001 (= e!913356 e!913357)))

(declare-fun res!647615 () Bool)

(assert (=> b!1431001 (= res!647615 (< (size!12158 (_2!7924 lt!485836)) (size!12158 (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)))))))

(assert (=> b!1431001 (=> (not res!647615) (not e!913357))))

(assert (= (and d!411734 c!235339) b!1431001))

(assert (= (and d!411734 (not c!235339)) b!1430998))

(assert (= (and b!1431001 res!647615) b!1430997))

(assert (= (and d!411734 res!647616) b!1430999))

(assert (= (and b!1430999 res!647614) b!1431000))

(declare-fun m!1630263 () Bool)

(assert (=> d!411734 m!1630263))

(assert (=> d!411734 m!1629255))

(assert (=> d!411734 m!1629255))

(declare-fun m!1630265 () Bool)

(assert (=> d!411734 m!1630265))

(declare-fun m!1630267 () Bool)

(assert (=> b!1430999 m!1630267))

(assert (=> b!1430999 m!1629255))

(declare-fun m!1630269 () Bool)

(assert (=> b!1430999 m!1630269))

(assert (=> b!1430999 m!1630269))

(declare-fun m!1630271 () Bool)

(assert (=> b!1430999 m!1630271))

(declare-fun m!1630273 () Bool)

(assert (=> b!1431001 m!1630273))

(assert (=> b!1431001 m!1629255))

(declare-fun m!1630275 () Bool)

(assert (=> b!1431001 m!1630275))

(declare-fun m!1630277 () Bool)

(assert (=> b!1430997 m!1630277))

(declare-fun m!1630279 () Bool)

(assert (=> b!1431000 m!1630279))

(assert (=> b!1431000 m!1629255))

(assert (=> b!1431000 m!1630269))

(assert (=> b!1431000 m!1630269))

(assert (=> b!1431000 m!1630271))

(assert (=> b!1430336 d!411734))

(declare-fun d!411736 () Bool)

(declare-fun lt!485837 () BalanceConc!9980)

(assert (=> d!411736 (= (list!5887 lt!485837) (printList!697 Lexer!2259 (list!5883 (singletonSeq!1201 lt!485502))))))

(assert (=> d!411736 (= lt!485837 (printTailRec!671 Lexer!2259 (singletonSeq!1201 lt!485502) 0 (BalanceConc!9981 Empty!5020)))))

(assert (=> d!411736 (= (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)) lt!485837)))

(declare-fun bs!340709 () Bool)

(assert (= bs!340709 d!411736))

(declare-fun m!1630281 () Bool)

(assert (=> bs!340709 m!1630281))

(assert (=> bs!340709 m!1629253))

(assert (=> bs!340709 m!1629261))

(assert (=> bs!340709 m!1629261))

(declare-fun m!1630283 () Bool)

(assert (=> bs!340709 m!1630283))

(assert (=> bs!340709 m!1629253))

(declare-fun m!1630285 () Bool)

(assert (=> bs!340709 m!1630285))

(assert (=> b!1430336 d!411736))

(declare-fun d!411738 () Bool)

(declare-fun e!913358 () Bool)

(assert (=> d!411738 e!913358))

(declare-fun res!647617 () Bool)

(assert (=> d!411738 (=> (not res!647617) (not e!913358))))

(declare-fun lt!485838 () BalanceConc!9982)

(assert (=> d!411738 (= res!647617 (= (list!5883 lt!485838) (Cons!14816 lt!485502 Nil!14816)))))

(assert (=> d!411738 (= lt!485838 (singleton!504 lt!485502))))

(assert (=> d!411738 (= (singletonSeq!1201 lt!485502) lt!485838)))

(declare-fun b!1431002 () Bool)

(assert (=> b!1431002 (= e!913358 (isBalanced!1487 (c!235218 lt!485838)))))

(assert (= (and d!411738 res!647617) b!1431002))

(declare-fun m!1630287 () Bool)

(assert (=> d!411738 m!1630287))

(declare-fun m!1630289 () Bool)

(assert (=> d!411738 m!1630289))

(declare-fun m!1630291 () Bool)

(assert (=> b!1431002 m!1630291))

(assert (=> b!1430336 d!411738))

(declare-fun bs!340710 () Bool)

(declare-fun d!411740 () Bool)

(assert (= bs!340710 (and d!411740 d!411450)))

(declare-fun lambda!62761 () Int)

(assert (=> bs!340710 (= (= (rules!11264 other!32) (rules!11264 thiss!10022)) (= lambda!62761 lambda!62743))))

(declare-fun bs!340711 () Bool)

(assert (= bs!340711 (and d!411740 d!411548)))

(assert (=> bs!340711 (= (= (rules!11264 other!32) (rules!11264 thiss!10022)) (= lambda!62761 lambda!62744))))

(declare-fun bs!340712 () Bool)

(assert (= bs!340712 (and d!411740 d!411632)))

(assert (=> bs!340712 (= (= (rules!11264 other!32) (rules!11264 thiss!10022)) (= lambda!62761 lambda!62750))))

(declare-fun b!1431006 () Bool)

(declare-fun e!913362 () Bool)

(assert (=> b!1431006 (= e!913362 true)))

(declare-fun b!1431005 () Bool)

(declare-fun e!913361 () Bool)

(assert (=> b!1431005 (= e!913361 e!913362)))

(declare-fun b!1431004 () Bool)

(declare-fun e!913360 () Bool)

(assert (=> b!1431004 (= e!913360 e!913361)))

(assert (=> d!411740 e!913360))

(assert (= b!1431005 b!1431006))

(assert (= b!1431004 b!1431005))

(assert (= (and d!411740 ((_ is Cons!14817) (rules!11264 other!32))) b!1431004))

(assert (=> b!1431006 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (rules!11264 other!32))))) (dynLambda!6761 order!8891 lambda!62761))))

(assert (=> b!1431006 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 other!32))))) (dynLambda!6761 order!8891 lambda!62761))))

(assert (=> d!411740 true))

(declare-fun e!913359 () Bool)

(assert (=> d!411740 e!913359))

(declare-fun res!647618 () Bool)

(assert (=> d!411740 (=> (not res!647618) (not e!913359))))

(declare-fun lt!485839 () Bool)

(assert (=> d!411740 (= res!647618 (= lt!485839 (forall!3651 (list!5883 (tokens!1934 other!32)) lambda!62761)))))

(assert (=> d!411740 (= lt!485839 (forall!3652 (tokens!1934 other!32) lambda!62761))))

(assert (=> d!411740 (not (isEmpty!9177 (rules!11264 other!32)))))

(assert (=> d!411740 (= (rulesProduceEachTokenIndividually!827 Lexer!2259 (rules!11264 other!32) (tokens!1934 other!32)) lt!485839)))

(declare-fun b!1431003 () Bool)

(assert (=> b!1431003 (= e!913359 (= lt!485839 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 other!32) (list!5883 (tokens!1934 other!32)))))))

(assert (= (and d!411740 res!647618) b!1431003))

(assert (=> d!411740 m!1629183))

(assert (=> d!411740 m!1629183))

(declare-fun m!1630293 () Bool)

(assert (=> d!411740 m!1630293))

(declare-fun m!1630295 () Bool)

(assert (=> d!411740 m!1630295))

(assert (=> d!411740 m!1629315))

(assert (=> b!1431003 m!1629183))

(assert (=> b!1431003 m!1629183))

(declare-fun m!1630297 () Bool)

(assert (=> b!1431003 m!1630297))

(assert (=> b!1430354 d!411740))

(declare-fun bs!340713 () Bool)

(declare-fun d!411742 () Bool)

(assert (= bs!340713 (and d!411742 d!411450)))

(declare-fun lambda!62762 () Int)

(assert (=> bs!340713 (= lambda!62762 lambda!62743)))

(declare-fun bs!340714 () Bool)

(assert (= bs!340714 (and d!411742 d!411548)))

(assert (=> bs!340714 (= lambda!62762 lambda!62744)))

(declare-fun bs!340715 () Bool)

(assert (= bs!340715 (and d!411742 d!411632)))

(assert (=> bs!340715 (= lambda!62762 lambda!62750)))

(declare-fun bs!340716 () Bool)

(assert (= bs!340716 (and d!411742 d!411740)))

(assert (=> bs!340716 (= (= (rules!11264 thiss!10022) (rules!11264 other!32)) (= lambda!62762 lambda!62761))))

(declare-fun b!1431011 () Bool)

(declare-fun e!913367 () Bool)

(assert (=> b!1431011 (= e!913367 true)))

(declare-fun b!1431010 () Bool)

(declare-fun e!913366 () Bool)

(assert (=> b!1431010 (= e!913366 e!913367)))

(declare-fun b!1431009 () Bool)

(declare-fun e!913365 () Bool)

(assert (=> b!1431009 (= e!913365 e!913366)))

(assert (=> d!411742 e!913365))

(assert (= b!1431010 b!1431011))

(assert (= b!1431009 b!1431010))

(assert (= (and d!411742 ((_ is Cons!14817) (rules!11264 thiss!10022))) b!1431009))

(assert (=> b!1431011 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62762))))

(assert (=> b!1431011 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62762))))

(assert (=> d!411742 true))

(declare-fun lt!485840 () Bool)

(assert (=> d!411742 (= lt!485840 (forall!3651 lt!485506 lambda!62762))))

(declare-fun e!913364 () Bool)

(assert (=> d!411742 (= lt!485840 e!913364)))

(declare-fun res!647620 () Bool)

(assert (=> d!411742 (=> res!647620 e!913364)))

(assert (=> d!411742 (= res!647620 (not ((_ is Cons!14816) lt!485506)))))

(assert (=> d!411742 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411742 (= (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) lt!485506) lt!485840)))

(declare-fun b!1431007 () Bool)

(declare-fun e!913363 () Bool)

(assert (=> b!1431007 (= e!913364 e!913363)))

(declare-fun res!647619 () Bool)

(assert (=> b!1431007 (=> (not res!647619) (not e!913363))))

(assert (=> b!1431007 (= res!647619 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485506)))))

(declare-fun b!1431008 () Bool)

(assert (=> b!1431008 (= e!913363 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (t!126961 lt!485506)))))

(assert (= (and d!411742 (not res!647620)) b!1431007))

(assert (= (and b!1431007 res!647619) b!1431008))

(declare-fun m!1630299 () Bool)

(assert (=> d!411742 m!1630299))

(assert (=> d!411742 m!1629251))

(declare-fun m!1630301 () Bool)

(assert (=> b!1431007 m!1630301))

(declare-fun m!1630303 () Bool)

(assert (=> b!1431008 m!1630303))

(assert (=> b!1430509 d!411742))

(declare-fun d!411744 () Bool)

(assert (=> d!411744 (= (isEmpty!9179 (list!5883 (tokens!1934 other!32))) ((_ is Nil!14816) (list!5883 (tokens!1934 other!32))))))

(assert (=> d!411490 d!411744))

(assert (=> d!411490 d!411428))

(declare-fun d!411746 () Bool)

(declare-fun lt!485843 () Bool)

(assert (=> d!411746 (= lt!485843 (isEmpty!9179 (list!5885 (c!235218 (tokens!1934 other!32)))))))

(assert (=> d!411746 (= lt!485843 (= (size!12160 (c!235218 (tokens!1934 other!32))) 0))))

(assert (=> d!411746 (= (isEmpty!9180 (c!235218 (tokens!1934 other!32))) lt!485843)))

(declare-fun bs!340717 () Bool)

(assert (= bs!340717 d!411746))

(assert (=> bs!340717 m!1629305))

(assert (=> bs!340717 m!1629305))

(declare-fun m!1630305 () Bool)

(assert (=> bs!340717 m!1630305))

(declare-fun m!1630307 () Bool)

(assert (=> bs!340717 m!1630307))

(assert (=> d!411490 d!411746))

(assert (=> b!1430526 d!411740))

(assert (=> b!1430507 d!411522))

(declare-fun d!411748 () Bool)

(assert (=> d!411748 (= (list!5883 lt!485585) (list!5885 (c!235218 lt!485585)))))

(declare-fun bs!340718 () Bool)

(assert (= bs!340718 d!411748))

(declare-fun m!1630309 () Bool)

(assert (=> bs!340718 m!1630309))

(assert (=> b!1430388 d!411748))

(declare-fun b!1431012 () Bool)

(declare-fun e!913369 () List!14882)

(assert (=> b!1431012 (= e!913369 (list!5883 (tokens!1934 other!32)))))

(declare-fun d!411750 () Bool)

(declare-fun e!913368 () Bool)

(assert (=> d!411750 e!913368))

(declare-fun res!647622 () Bool)

(assert (=> d!411750 (=> (not res!647622) (not e!913368))))

(declare-fun lt!485844 () List!14882)

(assert (=> d!411750 (= res!647622 (= (content!2184 lt!485844) ((_ map or) (content!2184 (list!5883 (tokens!1934 thiss!10022))) (content!2184 (list!5883 (tokens!1934 other!32))))))))

(assert (=> d!411750 (= lt!485844 e!913369)))

(declare-fun c!235340 () Bool)

(assert (=> d!411750 (= c!235340 ((_ is Nil!14816) (list!5883 (tokens!1934 thiss!10022))))))

(assert (=> d!411750 (= (++!3927 (list!5883 (tokens!1934 thiss!10022)) (list!5883 (tokens!1934 other!32))) lt!485844)))

(declare-fun b!1431014 () Bool)

(declare-fun res!647621 () Bool)

(assert (=> b!1431014 (=> (not res!647621) (not e!913368))))

(assert (=> b!1431014 (= res!647621 (= (size!12159 lt!485844) (+ (size!12159 (list!5883 (tokens!1934 thiss!10022))) (size!12159 (list!5883 (tokens!1934 other!32))))))))

(declare-fun b!1431013 () Bool)

(assert (=> b!1431013 (= e!913369 (Cons!14816 (h!20217 (list!5883 (tokens!1934 thiss!10022))) (++!3927 (t!126961 (list!5883 (tokens!1934 thiss!10022))) (list!5883 (tokens!1934 other!32)))))))

(declare-fun b!1431015 () Bool)

(assert (=> b!1431015 (= e!913368 (or (not (= (list!5883 (tokens!1934 other!32)) Nil!14816)) (= lt!485844 (list!5883 (tokens!1934 thiss!10022)))))))

(assert (= (and d!411750 c!235340) b!1431012))

(assert (= (and d!411750 (not c!235340)) b!1431013))

(assert (= (and d!411750 res!647622) b!1431014))

(assert (= (and b!1431014 res!647621) b!1431015))

(declare-fun m!1630311 () Bool)

(assert (=> d!411750 m!1630311))

(assert (=> d!411750 m!1629177))

(declare-fun m!1630313 () Bool)

(assert (=> d!411750 m!1630313))

(assert (=> d!411750 m!1629183))

(declare-fun m!1630315 () Bool)

(assert (=> d!411750 m!1630315))

(declare-fun m!1630317 () Bool)

(assert (=> b!1431014 m!1630317))

(assert (=> b!1431014 m!1629177))

(declare-fun m!1630319 () Bool)

(assert (=> b!1431014 m!1630319))

(assert (=> b!1431014 m!1629183))

(declare-fun m!1630321 () Bool)

(assert (=> b!1431014 m!1630321))

(assert (=> b!1431013 m!1629183))

(declare-fun m!1630323 () Bool)

(assert (=> b!1431013 m!1630323))

(assert (=> b!1430388 d!411750))

(assert (=> b!1430388 d!411402))

(assert (=> b!1430388 d!411428))

(assert (=> d!411432 d!411576))

(declare-fun d!411752 () Bool)

(declare-fun res!647623 () Bool)

(declare-fun e!913370 () Bool)

(assert (=> d!411752 (=> (not res!647623) (not e!913370))))

(assert (=> d!411752 (= res!647623 (rulesValid!954 Lexer!2259 (rules!11264 other!32)))))

(assert (=> d!411752 (= (rulesInvariant!2109 Lexer!2259 (rules!11264 other!32)) e!913370)))

(declare-fun b!1431016 () Bool)

(assert (=> b!1431016 (= e!913370 (noDuplicateTag!954 Lexer!2259 (rules!11264 other!32) Nil!14819))))

(assert (= (and d!411752 res!647623) b!1431016))

(declare-fun m!1630325 () Bool)

(assert (=> d!411752 m!1630325))

(declare-fun m!1630327 () Bool)

(assert (=> b!1431016 m!1630327))

(assert (=> d!411494 d!411752))

(declare-fun d!411754 () Bool)

(declare-fun c!235341 () Bool)

(assert (=> d!411754 (= c!235341 ((_ is Node!5021) (left!12626 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun e!913371 () Bool)

(assert (=> d!411754 (= (inv!19656 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) e!913371)))

(declare-fun b!1431017 () Bool)

(assert (=> b!1431017 (= e!913371 (inv!19663 (left!12626 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun b!1431018 () Bool)

(declare-fun e!913372 () Bool)

(assert (=> b!1431018 (= e!913371 e!913372)))

(declare-fun res!647624 () Bool)

(assert (=> b!1431018 (= res!647624 (not ((_ is Leaf!7521) (left!12626 (c!235218 (tokens!1934 thiss!10022))))))))

(assert (=> b!1431018 (=> res!647624 e!913372)))

(declare-fun b!1431019 () Bool)

(assert (=> b!1431019 (= e!913372 (inv!19664 (left!12626 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (= (and d!411754 c!235341) b!1431017))

(assert (= (and d!411754 (not c!235341)) b!1431018))

(assert (= (and b!1431018 (not res!647624)) b!1431019))

(declare-fun m!1630329 () Bool)

(assert (=> b!1431017 m!1630329))

(declare-fun m!1630331 () Bool)

(assert (=> b!1431019 m!1630331))

(assert (=> b!1430553 d!411754))

(declare-fun d!411756 () Bool)

(declare-fun c!235342 () Bool)

(assert (=> d!411756 (= c!235342 ((_ is Node!5021) (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun e!913373 () Bool)

(assert (=> d!411756 (= (inv!19656 (right!12956 (c!235218 (tokens!1934 thiss!10022)))) e!913373)))

(declare-fun b!1431020 () Bool)

(assert (=> b!1431020 (= e!913373 (inv!19663 (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun b!1431021 () Bool)

(declare-fun e!913374 () Bool)

(assert (=> b!1431021 (= e!913373 e!913374)))

(declare-fun res!647625 () Bool)

(assert (=> b!1431021 (= res!647625 (not ((_ is Leaf!7521) (right!12956 (c!235218 (tokens!1934 thiss!10022))))))))

(assert (=> b!1431021 (=> res!647625 e!913374)))

(declare-fun b!1431022 () Bool)

(assert (=> b!1431022 (= e!913374 (inv!19664 (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (= (and d!411756 c!235342) b!1431020))

(assert (= (and d!411756 (not c!235342)) b!1431021))

(assert (= (and b!1431021 (not res!647625)) b!1431022))

(declare-fun m!1630333 () Bool)

(assert (=> b!1431020 m!1630333))

(declare-fun m!1630335 () Bool)

(assert (=> b!1431022 m!1630335))

(assert (=> b!1430553 d!411756))

(assert (=> b!1430351 d!411632))

(assert (=> b!1430386 d!411526))

(assert (=> b!1430386 d!411540))

(assert (=> b!1430386 d!411542))

(assert (=> b!1430386 d!411544))

(assert (=> b!1430386 d!411546))

(declare-fun d!411758 () Bool)

(declare-fun res!647626 () Bool)

(declare-fun e!913375 () Bool)

(assert (=> d!411758 (=> (not res!647626) (not e!913375))))

(assert (=> d!411758 (= res!647626 (<= (size!12159 (list!5889 (xs!7750 (c!235218 (tokens!1934 thiss!10022))))) 512))))

(assert (=> d!411758 (= (inv!19664 (c!235218 (tokens!1934 thiss!10022))) e!913375)))

(declare-fun b!1431023 () Bool)

(declare-fun res!647627 () Bool)

(assert (=> b!1431023 (=> (not res!647627) (not e!913375))))

(assert (=> b!1431023 (= res!647627 (= (csize!10273 (c!235218 (tokens!1934 thiss!10022))) (size!12159 (list!5889 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))))

(declare-fun b!1431024 () Bool)

(assert (=> b!1431024 (= e!913375 (and (> (csize!10273 (c!235218 (tokens!1934 thiss!10022))) 0) (<= (csize!10273 (c!235218 (tokens!1934 thiss!10022))) 512)))))

(assert (= (and d!411758 res!647626) b!1431023))

(assert (= (and b!1431023 res!647627) b!1431024))

(declare-fun m!1630337 () Bool)

(assert (=> d!411758 m!1630337))

(assert (=> d!411758 m!1630337))

(declare-fun m!1630339 () Bool)

(assert (=> d!411758 m!1630339))

(assert (=> b!1431023 m!1630337))

(assert (=> b!1431023 m!1630337))

(assert (=> b!1431023 m!1630339))

(assert (=> b!1430519 d!411758))

(assert (=> b!1430525 d!411608))

(declare-fun d!411760 () Bool)

(declare-fun res!647628 () Bool)

(declare-fun e!913376 () Bool)

(assert (=> d!411760 (=> (not res!647628) (not e!913376))))

(assert (=> d!411760 (= res!647628 (= (csize!10272 (c!235218 (tokens!1934 thiss!10022))) (+ (size!12160 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (size!12160 (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))))

(assert (=> d!411760 (= (inv!19663 (c!235218 (tokens!1934 thiss!10022))) e!913376)))

(declare-fun b!1431025 () Bool)

(declare-fun res!647629 () Bool)

(assert (=> b!1431025 (=> (not res!647629) (not e!913376))))

(assert (=> b!1431025 (= res!647629 (and (not (= (left!12626 (c!235218 (tokens!1934 thiss!10022))) Empty!5021)) (not (= (right!12956 (c!235218 (tokens!1934 thiss!10022))) Empty!5021))))))

(declare-fun b!1431026 () Bool)

(declare-fun res!647630 () Bool)

(assert (=> b!1431026 (=> (not res!647630) (not e!913376))))

(assert (=> b!1431026 (= res!647630 (= (cheight!5232 (c!235218 (tokens!1934 thiss!10022))) (+ (max!0 (height!725 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (height!725 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) 1)))))

(declare-fun b!1431027 () Bool)

(assert (=> b!1431027 (= e!913376 (<= 0 (cheight!5232 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (= (and d!411760 res!647628) b!1431025))

(assert (= (and b!1431025 res!647629) b!1431026))

(assert (= (and b!1431026 res!647630) b!1431027))

(declare-fun m!1630341 () Bool)

(assert (=> d!411760 m!1630341))

(declare-fun m!1630343 () Bool)

(assert (=> d!411760 m!1630343))

(assert (=> b!1431026 m!1630003))

(assert (=> b!1431026 m!1630005))

(assert (=> b!1431026 m!1630003))

(assert (=> b!1431026 m!1630005))

(declare-fun m!1630345 () Bool)

(assert (=> b!1431026 m!1630345))

(assert (=> b!1430517 d!411760))

(declare-fun d!411762 () Bool)

(declare-fun res!647632 () Bool)

(declare-fun e!913377 () Bool)

(assert (=> d!411762 (=> res!647632 e!913377)))

(assert (=> d!411762 (= res!647632 (or (not ((_ is Cons!14816) (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))) (not ((_ is Cons!14816) (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))))))))

(assert (=> d!411762 (= (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))) (rules!11264 thiss!10022)) e!913377)))

(declare-fun b!1431028 () Bool)

(declare-fun e!913378 () Bool)

(assert (=> b!1431028 (= e!913377 e!913378)))

(declare-fun res!647631 () Bool)

(assert (=> b!1431028 (=> (not res!647631) (not e!913378))))

(assert (=> b!1431028 (= res!647631 (separableTokensPredicate!496 Lexer!2259 (h!20217 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505)))) (h!20217 (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))) (rules!11264 thiss!10022)))))

(declare-fun lt!485850 () Unit!22343)

(declare-fun Unit!22355 () Unit!22343)

(assert (=> b!1431028 (= lt!485850 Unit!22355)))

(assert (=> b!1431028 (> (size!12158 (charsOf!1502 (h!20217 (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))))) 0)))

(declare-fun lt!485851 () Unit!22343)

(declare-fun Unit!22356 () Unit!22343)

(assert (=> b!1431028 (= lt!485851 Unit!22356)))

(assert (=> b!1431028 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))))))

(declare-fun lt!485846 () Unit!22343)

(declare-fun Unit!22357 () Unit!22343)

(assert (=> b!1431028 (= lt!485846 Unit!22357)))

(assert (=> b!1431028 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505)))))))

(declare-fun lt!485847 () Unit!22343)

(declare-fun lt!485849 () Unit!22343)

(assert (=> b!1431028 (= lt!485847 lt!485849)))

(assert (=> b!1431028 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))))))

(assert (=> b!1431028 (= lt!485849 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))) (h!20217 (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505)))))))))

(declare-fun lt!485848 () Unit!22343)

(declare-fun lt!485845 () Unit!22343)

(assert (=> b!1431028 (= lt!485848 lt!485845)))

(assert (=> b!1431028 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505)))))))

(assert (=> b!1431028 (= lt!485845 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))) (h!20217 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))))))

(declare-fun b!1431029 () Bool)

(assert (=> b!1431029 (= e!913378 (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 (Cons!14816 (h!20217 (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505))))) (t!126961 (t!126961 (Cons!14816 (h!20217 (t!126961 lt!485505)) (t!126961 (t!126961 lt!485505)))))) (rules!11264 thiss!10022)))))

(assert (= (and d!411762 (not res!647632)) b!1431028))

(assert (= (and b!1431028 res!647631) b!1431029))

(declare-fun m!1630347 () Bool)

(assert (=> b!1431028 m!1630347))

(declare-fun m!1630349 () Bool)

(assert (=> b!1431028 m!1630349))

(declare-fun m!1630351 () Bool)

(assert (=> b!1431028 m!1630351))

(declare-fun m!1630353 () Bool)

(assert (=> b!1431028 m!1630353))

(declare-fun m!1630355 () Bool)

(assert (=> b!1431028 m!1630355))

(declare-fun m!1630357 () Bool)

(assert (=> b!1431028 m!1630357))

(declare-fun m!1630359 () Bool)

(assert (=> b!1431028 m!1630359))

(assert (=> b!1431028 m!1630353))

(declare-fun m!1630361 () Bool)

(assert (=> b!1431029 m!1630361))

(assert (=> b!1430361 d!411762))

(declare-fun bs!340719 () Bool)

(declare-fun d!411764 () Bool)

(assert (= bs!340719 (and d!411764 d!411740)))

(declare-fun lambda!62763 () Int)

(assert (=> bs!340719 (= (= (rules!11264 thiss!10022) (rules!11264 other!32)) (= lambda!62763 lambda!62761))))

(declare-fun bs!340720 () Bool)

(assert (= bs!340720 (and d!411764 d!411632)))

(assert (=> bs!340720 (= lambda!62763 lambda!62750)))

(declare-fun bs!340721 () Bool)

(assert (= bs!340721 (and d!411764 d!411450)))

(assert (=> bs!340721 (= lambda!62763 lambda!62743)))

(declare-fun bs!340722 () Bool)

(assert (= bs!340722 (and d!411764 d!411742)))

(assert (=> bs!340722 (= lambda!62763 lambda!62762)))

(declare-fun bs!340723 () Bool)

(assert (= bs!340723 (and d!411764 d!411548)))

(assert (=> bs!340723 (= lambda!62763 lambda!62744)))

(declare-fun b!1431034 () Bool)

(declare-fun e!913383 () Bool)

(assert (=> b!1431034 (= e!913383 true)))

(declare-fun b!1431033 () Bool)

(declare-fun e!913382 () Bool)

(assert (=> b!1431033 (= e!913382 e!913383)))

(declare-fun b!1431032 () Bool)

(declare-fun e!913381 () Bool)

(assert (=> b!1431032 (= e!913381 e!913382)))

(assert (=> d!411764 e!913381))

(assert (= b!1431033 b!1431034))

(assert (= b!1431032 b!1431033))

(assert (= (and d!411764 ((_ is Cons!14817) (rules!11264 thiss!10022))) b!1431032))

(assert (=> b!1431034 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62763))))

(assert (=> b!1431034 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62763))))

(assert (=> d!411764 true))

(declare-fun lt!485852 () Bool)

(assert (=> d!411764 (= lt!485852 (forall!3651 (t!126961 lt!485505) lambda!62763))))

(declare-fun e!913380 () Bool)

(assert (=> d!411764 (= lt!485852 e!913380)))

(declare-fun res!647634 () Bool)

(assert (=> d!411764 (=> res!647634 e!913380)))

(assert (=> d!411764 (= res!647634 (not ((_ is Cons!14816) (t!126961 lt!485505))))))

(assert (=> d!411764 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411764 (= (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (t!126961 lt!485505)) lt!485852)))

(declare-fun b!1431030 () Bool)

(declare-fun e!913379 () Bool)

(assert (=> b!1431030 (= e!913380 e!913379)))

(declare-fun res!647633 () Bool)

(assert (=> b!1431030 (=> (not res!647633) (not e!913379))))

(assert (=> b!1431030 (= res!647633 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 lt!485505))))))

(declare-fun b!1431031 () Bool)

(assert (=> b!1431031 (= e!913379 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (t!126961 (t!126961 lt!485505))))))

(assert (= (and d!411764 (not res!647634)) b!1431030))

(assert (= (and b!1431030 res!647633) b!1431031))

(declare-fun m!1630363 () Bool)

(assert (=> d!411764 m!1630363))

(assert (=> d!411764 m!1629251))

(assert (=> b!1431030 m!1629331))

(declare-fun m!1630365 () Bool)

(assert (=> b!1431031 m!1630365))

(assert (=> b!1430445 d!411764))

(declare-fun d!411766 () Bool)

(declare-fun e!913386 () Bool)

(assert (=> d!411766 e!913386))

(declare-fun res!647637 () Bool)

(assert (=> d!411766 (=> (not res!647637) (not e!913386))))

(declare-fun lt!485855 () BalanceConc!9980)

(assert (=> d!411766 (= res!647637 (= (list!5887 lt!485855) (Cons!14814 (apply!3777 (charsOf!1502 lt!485501) 0) Nil!14814)))))

(declare-fun singleton!506 (C!8000) BalanceConc!9980)

(assert (=> d!411766 (= lt!485855 (singleton!506 (apply!3777 (charsOf!1502 lt!485501) 0)))))

(assert (=> d!411766 (= (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0)) lt!485855)))

(declare-fun b!1431037 () Bool)

(declare-fun isBalanced!1489 (Conc!5020) Bool)

(assert (=> b!1431037 (= e!913386 (isBalanced!1489 (c!235216 lt!485855)))))

(assert (= (and d!411766 res!647637) b!1431037))

(declare-fun m!1630367 () Bool)

(assert (=> d!411766 m!1630367))

(assert (=> d!411766 m!1629295))

(declare-fun m!1630369 () Bool)

(assert (=> d!411766 m!1630369))

(declare-fun m!1630371 () Bool)

(assert (=> b!1431037 m!1630371))

(assert (=> d!411426 d!411766))

(declare-fun d!411768 () Bool)

(declare-fun lt!485876 () Bool)

(declare-fun prefixMatch!310 (Regex!3911 List!14880) Bool)

(assert (=> d!411768 (= lt!485876 (prefixMatch!310 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)) (list!5887 (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))))))

(declare-datatypes ((List!14888 0))(
  ( (Nil!14822) (Cons!14822 (h!20223 Regex!3911) (t!127075 List!14888)) )
))
(declare-datatypes ((Context!1230 0))(
  ( (Context!1231 (exprs!1115 List!14888)) )
))
(declare-fun prefixMatchZipperSequence!321 ((InoxSet Context!1230) BalanceConc!9980 Int) Bool)

(declare-fun focus!106 (Regex!3911) (InoxSet Context!1230))

(assert (=> d!411768 (= lt!485876 (prefixMatchZipperSequence!321 (focus!106 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022))) (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))) 0))))

(declare-fun lt!485881 () Unit!22343)

(declare-fun lt!485885 () Unit!22343)

(assert (=> d!411768 (= lt!485881 lt!485885)))

(declare-fun lt!485883 () List!14880)

(declare-fun lt!485882 () (InoxSet Context!1230))

(declare-fun prefixMatchZipper!86 ((InoxSet Context!1230) List!14880) Bool)

(assert (=> d!411768 (= (prefixMatch!310 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)) lt!485883) (prefixMatchZipper!86 lt!485882 lt!485883))))

(declare-datatypes ((List!14889 0))(
  ( (Nil!14823) (Cons!14823 (h!20224 Context!1230) (t!127076 List!14889)) )
))
(declare-fun lt!485884 () List!14889)

(declare-fun prefixMatchZipperRegexEquiv!86 ((InoxSet Context!1230) List!14889 Regex!3911 List!14880) Unit!22343)

(assert (=> d!411768 (= lt!485885 (prefixMatchZipperRegexEquiv!86 lt!485882 lt!485884 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)) lt!485883))))

(assert (=> d!411768 (= lt!485883 (list!5887 (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0)))))))

(declare-fun toList!770 ((InoxSet Context!1230)) List!14889)

(assert (=> d!411768 (= lt!485884 (toList!770 (focus!106 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)))))))

(assert (=> d!411768 (= lt!485882 (focus!106 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022))))))

(declare-fun lt!485879 () Unit!22343)

(declare-fun lt!485877 () Unit!22343)

(assert (=> d!411768 (= lt!485879 lt!485877)))

(declare-fun lt!485880 () Int)

(declare-fun lt!485878 () (InoxSet Context!1230))

(declare-fun dropList!454 (BalanceConc!9980 Int) List!14880)

(assert (=> d!411768 (= (prefixMatchZipper!86 lt!485878 (dropList!454 (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))) lt!485880)) (prefixMatchZipperSequence!321 lt!485878 (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))) lt!485880))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!86 ((InoxSet Context!1230) BalanceConc!9980 Int) Unit!22343)

(assert (=> d!411768 (= lt!485877 (lemmaprefixMatchZipperSequenceEquivalent!86 lt!485878 (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))) lt!485880))))

(assert (=> d!411768 (= lt!485880 0)))

(assert (=> d!411768 (= lt!485878 (focus!106 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022))))))

(declare-fun validRegex!1669 (Regex!3911) Bool)

(assert (=> d!411768 (validRegex!1669 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)))))

(assert (=> d!411768 (= (prefixMatchZipperSequence!319 (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)) (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0)))) lt!485876)))

(declare-fun bs!340724 () Bool)

(assert (= bs!340724 d!411768))

(assert (=> bs!340724 m!1629293))

(declare-fun m!1630373 () Bool)

(assert (=> bs!340724 m!1630373))

(declare-fun m!1630375 () Bool)

(assert (=> bs!340724 m!1630375))

(declare-fun m!1630377 () Bool)

(assert (=> bs!340724 m!1630377))

(declare-fun m!1630379 () Bool)

(assert (=> bs!340724 m!1630379))

(assert (=> bs!340724 m!1629299))

(assert (=> bs!340724 m!1630377))

(declare-fun m!1630381 () Bool)

(assert (=> bs!340724 m!1630381))

(assert (=> bs!340724 m!1629293))

(declare-fun m!1630383 () Bool)

(assert (=> bs!340724 m!1630383))

(declare-fun m!1630385 () Bool)

(assert (=> bs!340724 m!1630385))

(declare-fun m!1630387 () Bool)

(assert (=> bs!340724 m!1630387))

(assert (=> bs!340724 m!1629293))

(declare-fun m!1630389 () Bool)

(assert (=> bs!340724 m!1630389))

(assert (=> bs!340724 m!1629293))

(assert (=> bs!340724 m!1630385))

(assert (=> bs!340724 m!1629299))

(declare-fun m!1630391 () Bool)

(assert (=> bs!340724 m!1630391))

(assert (=> bs!340724 m!1629293))

(declare-fun m!1630393 () Bool)

(assert (=> bs!340724 m!1630393))

(assert (=> bs!340724 m!1629299))

(assert (=> bs!340724 m!1630373))

(assert (=> bs!340724 m!1630385))

(assert (=> bs!340724 m!1629299))

(declare-fun m!1630395 () Bool)

(assert (=> bs!340724 m!1630395))

(assert (=> bs!340724 m!1629299))

(declare-fun m!1630397 () Bool)

(assert (=> bs!340724 m!1630397))

(assert (=> d!411426 d!411768))

(declare-fun d!411770 () Bool)

(declare-fun lt!485886 () BalanceConc!9980)

(assert (=> d!411770 (= (list!5887 lt!485886) (originalCharacters!3459 lt!485502))))

(assert (=> d!411770 (= lt!485886 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 lt!485502))) (value!83662 lt!485502)))))

(assert (=> d!411770 (= (charsOf!1502 lt!485502) lt!485886)))

(declare-fun b_lambda!44849 () Bool)

(assert (=> (not b_lambda!44849) (not d!411770)))

(declare-fun tb!75833 () Bool)

(declare-fun t!127012 () Bool)

(assert (=> (and b!1430541 (= (toChars!3759 (transformation!2597 (h!20218 (rules!11264 other!32)))) (toChars!3759 (transformation!2597 (rule!4360 lt!485502)))) t!127012) tb!75833))

(declare-fun b!1431038 () Bool)

(declare-fun e!913387 () Bool)

(declare-fun tp!405623 () Bool)

(assert (=> b!1431038 (= e!913387 (and (inv!19667 (c!235216 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 lt!485502))) (value!83662 lt!485502)))) tp!405623))))

(declare-fun result!92086 () Bool)

(assert (=> tb!75833 (= result!92086 (and (inv!19668 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 lt!485502))) (value!83662 lt!485502))) e!913387))))

(assert (= tb!75833 b!1431038))

(declare-fun m!1630399 () Bool)

(assert (=> b!1431038 m!1630399))

(declare-fun m!1630401 () Bool)

(assert (=> tb!75833 m!1630401))

(assert (=> d!411770 t!127012))

(declare-fun b_and!96327 () Bool)

(assert (= b_and!96311 (and (=> t!127012 result!92086) b_and!96327)))

(declare-fun tb!75835 () Bool)

(declare-fun t!127014 () Bool)

(assert (=> (and b!1430544 (= (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022)))) (toChars!3759 (transformation!2597 (rule!4360 lt!485502)))) t!127014) tb!75835))

(declare-fun result!92088 () Bool)

(assert (= result!92088 result!92086))

(assert (=> d!411770 t!127014))

(declare-fun b_and!96329 () Bool)

(assert (= b_and!96313 (and (=> t!127014 result!92088) b_and!96329)))

(declare-fun m!1630403 () Bool)

(assert (=> d!411770 m!1630403))

(declare-fun m!1630405 () Bool)

(assert (=> d!411770 m!1630405))

(assert (=> d!411426 d!411770))

(declare-fun d!411772 () Bool)

(declare-fun lt!485887 () BalanceConc!9980)

(assert (=> d!411772 (= (list!5887 lt!485887) (originalCharacters!3459 lt!485501))))

(assert (=> d!411772 (= lt!485887 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 lt!485501))) (value!83662 lt!485501)))))

(assert (=> d!411772 (= (charsOf!1502 lt!485501) lt!485887)))

(declare-fun b_lambda!44851 () Bool)

(assert (=> (not b_lambda!44851) (not d!411772)))

(declare-fun tb!75837 () Bool)

(declare-fun t!127016 () Bool)

(assert (=> (and b!1430541 (= (toChars!3759 (transformation!2597 (h!20218 (rules!11264 other!32)))) (toChars!3759 (transformation!2597 (rule!4360 lt!485501)))) t!127016) tb!75837))

(declare-fun b!1431039 () Bool)

(declare-fun e!913388 () Bool)

(declare-fun tp!405624 () Bool)

(assert (=> b!1431039 (= e!913388 (and (inv!19667 (c!235216 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 lt!485501))) (value!83662 lt!485501)))) tp!405624))))

(declare-fun result!92090 () Bool)

(assert (=> tb!75837 (= result!92090 (and (inv!19668 (dynLambda!6764 (toChars!3759 (transformation!2597 (rule!4360 lt!485501))) (value!83662 lt!485501))) e!913388))))

(assert (= tb!75837 b!1431039))

(declare-fun m!1630407 () Bool)

(assert (=> b!1431039 m!1630407))

(declare-fun m!1630409 () Bool)

(assert (=> tb!75837 m!1630409))

(assert (=> d!411772 t!127016))

(declare-fun b_and!96331 () Bool)

(assert (= b_and!96327 (and (=> t!127016 result!92090) b_and!96331)))

(declare-fun tb!75839 () Bool)

(declare-fun t!127018 () Bool)

(assert (=> (and b!1430544 (= (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022)))) (toChars!3759 (transformation!2597 (rule!4360 lt!485501)))) t!127018) tb!75839))

(declare-fun result!92092 () Bool)

(assert (= result!92092 result!92090))

(assert (=> d!411772 t!127018))

(declare-fun b_and!96333 () Bool)

(assert (= b_and!96329 (and (=> t!127018 result!92092) b_and!96333)))

(declare-fun m!1630411 () Bool)

(assert (=> d!411772 m!1630411))

(declare-fun m!1630413 () Bool)

(assert (=> d!411772 m!1630413))

(assert (=> d!411426 d!411772))

(declare-fun d!411774 () Bool)

(declare-fun lt!485890 () Unit!22343)

(declare-fun lemma!167 (List!14883 LexerInterface!2261 List!14883) Unit!22343)

(assert (=> d!411774 (= lt!485890 (lemma!167 (rules!11264 thiss!10022) Lexer!2259 (rules!11264 thiss!10022)))))

(declare-fun lambda!62766 () Int)

(declare-fun generalisedUnion!175 (List!14888) Regex!3911)

(declare-fun map!3251 (List!14883 Int) List!14888)

(assert (=> d!411774 (= (rulesRegex!379 Lexer!2259 (rules!11264 thiss!10022)) (generalisedUnion!175 (map!3251 (rules!11264 thiss!10022) lambda!62766)))))

(declare-fun bs!340725 () Bool)

(assert (= bs!340725 d!411774))

(declare-fun m!1630415 () Bool)

(assert (=> bs!340725 m!1630415))

(declare-fun m!1630417 () Bool)

(assert (=> bs!340725 m!1630417))

(assert (=> bs!340725 m!1630417))

(declare-fun m!1630419 () Bool)

(assert (=> bs!340725 m!1630419))

(assert (=> d!411426 d!411774))

(declare-fun d!411776 () Bool)

(declare-fun lt!485893 () C!8000)

(declare-fun apply!3786 (List!14880 Int) C!8000)

(assert (=> d!411776 (= lt!485893 (apply!3786 (list!5887 (charsOf!1502 lt!485501)) 0))))

(declare-fun apply!3787 (Conc!5020 Int) C!8000)

(assert (=> d!411776 (= lt!485893 (apply!3787 (c!235216 (charsOf!1502 lt!485501)) 0))))

(declare-fun e!913391 () Bool)

(assert (=> d!411776 e!913391))

(declare-fun res!647640 () Bool)

(assert (=> d!411776 (=> (not res!647640) (not e!913391))))

(assert (=> d!411776 (= res!647640 (<= 0 0))))

(assert (=> d!411776 (= (apply!3777 (charsOf!1502 lt!485501) 0) lt!485893)))

(declare-fun b!1431042 () Bool)

(assert (=> b!1431042 (= e!913391 (< 0 (size!12158 (charsOf!1502 lt!485501))))))

(assert (= (and d!411776 res!647640) b!1431042))

(assert (=> d!411776 m!1629301))

(declare-fun m!1630421 () Bool)

(assert (=> d!411776 m!1630421))

(assert (=> d!411776 m!1630421))

(declare-fun m!1630423 () Bool)

(assert (=> d!411776 m!1630423))

(declare-fun m!1630425 () Bool)

(assert (=> d!411776 m!1630425))

(assert (=> b!1431042 m!1629301))

(declare-fun m!1630427 () Bool)

(assert (=> b!1431042 m!1630427))

(assert (=> d!411426 d!411776))

(declare-fun d!411778 () Bool)

(declare-fun e!913394 () Bool)

(assert (=> d!411778 e!913394))

(declare-fun res!647652 () Bool)

(assert (=> d!411778 (=> (not res!647652) (not e!913394))))

(declare-fun appendAssocInst!306 (Conc!5020 Conc!5020) Bool)

(assert (=> d!411778 (= res!647652 (appendAssocInst!306 (c!235216 (charsOf!1502 lt!485502)) (c!235216 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0)))))))

(declare-fun lt!485896 () BalanceConc!9980)

(declare-fun ++!3934 (Conc!5020 Conc!5020) Conc!5020)

(assert (=> d!411778 (= lt!485896 (BalanceConc!9981 (++!3934 (c!235216 (charsOf!1502 lt!485502)) (c!235216 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))))))

(assert (=> d!411778 (= (++!3930 (charsOf!1502 lt!485502) (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))) lt!485896)))

(declare-fun b!1431052 () Bool)

(declare-fun res!647650 () Bool)

(assert (=> b!1431052 (=> (not res!647650) (not e!913394))))

(declare-fun height!727 (Conc!5020) Int)

(assert (=> b!1431052 (= res!647650 (<= (height!727 (++!3934 (c!235216 (charsOf!1502 lt!485502)) (c!235216 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))) (+ (max!0 (height!727 (c!235216 (charsOf!1502 lt!485502))) (height!727 (c!235216 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))) 1)))))

(declare-fun b!1431054 () Bool)

(declare-fun ++!3935 (List!14880 List!14880) List!14880)

(assert (=> b!1431054 (= e!913394 (= (list!5887 lt!485896) (++!3935 (list!5887 (charsOf!1502 lt!485502)) (list!5887 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))))))

(declare-fun b!1431053 () Bool)

(declare-fun res!647651 () Bool)

(assert (=> b!1431053 (=> (not res!647651) (not e!913394))))

(assert (=> b!1431053 (= res!647651 (>= (height!727 (++!3934 (c!235216 (charsOf!1502 lt!485502)) (c!235216 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))) (max!0 (height!727 (c!235216 (charsOf!1502 lt!485502))) (height!727 (c!235216 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0)))))))))

(declare-fun b!1431051 () Bool)

(declare-fun res!647649 () Bool)

(assert (=> b!1431051 (=> (not res!647649) (not e!913394))))

(assert (=> b!1431051 (= res!647649 (isBalanced!1489 (++!3934 (c!235216 (charsOf!1502 lt!485502)) (c!235216 (singletonSeq!1202 (apply!3777 (charsOf!1502 lt!485501) 0))))))))

(assert (= (and d!411778 res!647652) b!1431051))

(assert (= (and b!1431051 res!647649) b!1431052))

(assert (= (and b!1431052 res!647650) b!1431053))

(assert (= (and b!1431053 res!647651) b!1431054))

(declare-fun m!1630429 () Bool)

(assert (=> b!1431053 m!1630429))

(declare-fun m!1630431 () Bool)

(assert (=> b!1431053 m!1630431))

(declare-fun m!1630433 () Bool)

(assert (=> b!1431053 m!1630433))

(declare-fun m!1630435 () Bool)

(assert (=> b!1431053 m!1630435))

(assert (=> b!1431053 m!1630435))

(assert (=> b!1431053 m!1630429))

(declare-fun m!1630437 () Bool)

(assert (=> b!1431053 m!1630437))

(assert (=> b!1431053 m!1630431))

(declare-fun m!1630439 () Bool)

(assert (=> b!1431054 m!1630439))

(assert (=> b!1431054 m!1629291))

(declare-fun m!1630441 () Bool)

(assert (=> b!1431054 m!1630441))

(assert (=> b!1431054 m!1629297))

(declare-fun m!1630443 () Bool)

(assert (=> b!1431054 m!1630443))

(assert (=> b!1431054 m!1630441))

(assert (=> b!1431054 m!1630443))

(declare-fun m!1630445 () Bool)

(assert (=> b!1431054 m!1630445))

(declare-fun m!1630447 () Bool)

(assert (=> d!411778 m!1630447))

(assert (=> d!411778 m!1630431))

(assert (=> b!1431052 m!1630429))

(assert (=> b!1431052 m!1630431))

(assert (=> b!1431052 m!1630433))

(assert (=> b!1431052 m!1630435))

(assert (=> b!1431052 m!1630435))

(assert (=> b!1431052 m!1630429))

(assert (=> b!1431052 m!1630437))

(assert (=> b!1431052 m!1630431))

(assert (=> b!1431051 m!1630431))

(assert (=> b!1431051 m!1630431))

(declare-fun m!1630449 () Bool)

(assert (=> b!1431051 m!1630449))

(assert (=> d!411426 d!411778))

(declare-fun b!1431066 () Bool)

(declare-fun e!913400 () List!14882)

(assert (=> b!1431066 (= e!913400 (++!3927 (list!5885 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (list!5885 (right!12956 (c!235218 (tokens!1934 thiss!10022))))))))

(declare-fun b!1431063 () Bool)

(declare-fun e!913399 () List!14882)

(assert (=> b!1431063 (= e!913399 Nil!14816)))

(declare-fun b!1431064 () Bool)

(assert (=> b!1431064 (= e!913399 e!913400)))

(declare-fun c!235351 () Bool)

(assert (=> b!1431064 (= c!235351 ((_ is Leaf!7521) (c!235218 (tokens!1934 thiss!10022))))))

(declare-fun b!1431065 () Bool)

(assert (=> b!1431065 (= e!913400 (list!5889 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun d!411780 () Bool)

(declare-fun c!235350 () Bool)

(assert (=> d!411780 (= c!235350 ((_ is Empty!5021) (c!235218 (tokens!1934 thiss!10022))))))

(assert (=> d!411780 (= (list!5885 (c!235218 (tokens!1934 thiss!10022))) e!913399)))

(assert (= (and d!411780 c!235350) b!1431063))

(assert (= (and d!411780 (not c!235350)) b!1431064))

(assert (= (and b!1431064 c!235351) b!1431065))

(assert (= (and b!1431064 (not c!235351)) b!1431066))

(declare-fun m!1630451 () Bool)

(assert (=> b!1431066 m!1630451))

(declare-fun m!1630453 () Bool)

(assert (=> b!1431066 m!1630453))

(assert (=> b!1431066 m!1630451))

(assert (=> b!1431066 m!1630453))

(declare-fun m!1630455 () Bool)

(assert (=> b!1431066 m!1630455))

(assert (=> b!1431065 m!1630337))

(assert (=> d!411402 d!411780))

(declare-fun d!411782 () Bool)

(declare-fun lt!485897 () Bool)

(assert (=> d!411782 (= lt!485897 (isEmpty!9183 (list!5887 (_2!7924 lt!485551))))))

(assert (=> d!411782 (= lt!485897 (isEmpty!9184 (c!235216 (_2!7924 lt!485551))))))

(assert (=> d!411782 (= (isEmpty!9178 (_2!7924 lt!485551)) lt!485897)))

(declare-fun bs!340727 () Bool)

(assert (= bs!340727 d!411782))

(declare-fun m!1630457 () Bool)

(assert (=> bs!340727 m!1630457))

(assert (=> bs!340727 m!1630457))

(declare-fun m!1630459 () Bool)

(assert (=> bs!340727 m!1630459))

(declare-fun m!1630461 () Bool)

(assert (=> bs!340727 m!1630461))

(assert (=> b!1430338 d!411782))

(declare-fun d!411786 () Bool)

(assert (=> d!411786 (= (inv!19666 (xs!7750 (c!235218 (tokens!1934 other!32)))) (<= (size!12159 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32))))) 2147483647))))

(declare-fun bs!340728 () Bool)

(assert (= bs!340728 d!411786))

(declare-fun m!1630463 () Bool)

(assert (=> bs!340728 m!1630463))

(assert (=> b!1430557 d!411786))

(declare-fun b!1431070 () Bool)

(declare-fun e!913402 () List!14882)

(assert (=> b!1431070 (= e!913402 (++!3927 (list!5885 (left!12626 (c!235218 (tokens!1934 other!32)))) (list!5885 (right!12956 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1431067 () Bool)

(declare-fun e!913401 () List!14882)

(assert (=> b!1431067 (= e!913401 Nil!14816)))

(declare-fun b!1431068 () Bool)

(assert (=> b!1431068 (= e!913401 e!913402)))

(declare-fun c!235353 () Bool)

(assert (=> b!1431068 (= c!235353 ((_ is Leaf!7521) (c!235218 (tokens!1934 other!32))))))

(declare-fun b!1431069 () Bool)

(assert (=> b!1431069 (= e!913402 (list!5889 (xs!7750 (c!235218 (tokens!1934 other!32)))))))

(declare-fun d!411788 () Bool)

(declare-fun c!235352 () Bool)

(assert (=> d!411788 (= c!235352 ((_ is Empty!5021) (c!235218 (tokens!1934 other!32))))))

(assert (=> d!411788 (= (list!5885 (c!235218 (tokens!1934 other!32))) e!913401)))

(assert (= (and d!411788 c!235352) b!1431067))

(assert (= (and d!411788 (not c!235352)) b!1431068))

(assert (= (and b!1431068 c!235353) b!1431069))

(assert (= (and b!1431068 (not c!235353)) b!1431070))

(declare-fun m!1630465 () Bool)

(assert (=> b!1431070 m!1630465))

(declare-fun m!1630467 () Bool)

(assert (=> b!1431070 m!1630467))

(assert (=> b!1431070 m!1630465))

(assert (=> b!1431070 m!1630467))

(declare-fun m!1630469 () Bool)

(assert (=> b!1431070 m!1630469))

(assert (=> b!1431069 m!1630209))

(assert (=> d!411428 d!411788))

(declare-fun d!411790 () Bool)

(declare-fun lt!485900 () Int)

(assert (=> d!411790 (>= lt!485900 0)))

(declare-fun e!913405 () Int)

(assert (=> d!411790 (= lt!485900 e!913405)))

(declare-fun c!235356 () Bool)

(assert (=> d!411790 (= c!235356 ((_ is Nil!14816) lt!485588))))

(assert (=> d!411790 (= (size!12159 lt!485588) lt!485900)))

(declare-fun b!1431075 () Bool)

(assert (=> b!1431075 (= e!913405 0)))

(declare-fun b!1431076 () Bool)

(assert (=> b!1431076 (= e!913405 (+ 1 (size!12159 (t!126961 lt!485588))))))

(assert (= (and d!411790 c!235356) b!1431075))

(assert (= (and d!411790 (not c!235356)) b!1431076))

(declare-fun m!1630471 () Bool)

(assert (=> b!1431076 m!1630471))

(assert (=> b!1430399 d!411790))

(declare-fun d!411792 () Bool)

(declare-fun lt!485901 () Int)

(assert (=> d!411792 (>= lt!485901 0)))

(declare-fun e!913406 () Int)

(assert (=> d!411792 (= lt!485901 e!913406)))

(declare-fun c!235357 () Bool)

(assert (=> d!411792 (= c!235357 ((_ is Nil!14816) lt!485510))))

(assert (=> d!411792 (= (size!12159 lt!485510) lt!485901)))

(declare-fun b!1431077 () Bool)

(assert (=> b!1431077 (= e!913406 0)))

(declare-fun b!1431078 () Bool)

(assert (=> b!1431078 (= e!913406 (+ 1 (size!12159 (t!126961 lt!485510))))))

(assert (= (and d!411792 c!235357) b!1431077))

(assert (= (and d!411792 (not c!235357)) b!1431078))

(assert (=> b!1431078 m!1630239))

(assert (=> b!1430399 d!411792))

(declare-fun d!411794 () Bool)

(declare-fun lt!485902 () Int)

(assert (=> d!411794 (>= lt!485902 0)))

(declare-fun e!913407 () Int)

(assert (=> d!411794 (= lt!485902 e!913407)))

(declare-fun c!235358 () Bool)

(assert (=> d!411794 (= c!235358 ((_ is Nil!14816) lt!485506))))

(assert (=> d!411794 (= (size!12159 lt!485506) lt!485902)))

(declare-fun b!1431079 () Bool)

(assert (=> b!1431079 (= e!913407 0)))

(declare-fun b!1431080 () Bool)

(assert (=> b!1431080 (= e!913407 (+ 1 (size!12159 (t!126961 lt!485506))))))

(assert (= (and d!411794 c!235358) b!1431079))

(assert (= (and d!411794 (not c!235358)) b!1431080))

(declare-fun m!1630473 () Bool)

(assert (=> b!1431080 m!1630473))

(assert (=> b!1430399 d!411794))

(declare-fun d!411796 () Bool)

(assert (=> d!411796 (= (isEmpty!9179 (list!5883 (tokens!1934 thiss!10022))) ((_ is Nil!14816) (list!5883 (tokens!1934 thiss!10022))))))

(assert (=> d!411438 d!411796))

(assert (=> d!411438 d!411402))

(declare-fun d!411798 () Bool)

(declare-fun lt!485903 () Bool)

(assert (=> d!411798 (= lt!485903 (isEmpty!9179 (list!5885 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (=> d!411798 (= lt!485903 (= (size!12160 (c!235218 (tokens!1934 thiss!10022))) 0))))

(assert (=> d!411798 (= (isEmpty!9180 (c!235218 (tokens!1934 thiss!10022))) lt!485903)))

(declare-fun bs!340729 () Bool)

(assert (= bs!340729 d!411798))

(assert (=> bs!340729 m!1629209))

(assert (=> bs!340729 m!1629209))

(declare-fun m!1630475 () Bool)

(assert (=> bs!340729 m!1630475))

(declare-fun m!1630477 () Bool)

(assert (=> bs!340729 m!1630477))

(assert (=> d!411438 d!411798))

(assert (=> b!1430285 d!411488))

(assert (=> d!411422 d!411416))

(declare-fun d!411800 () Bool)

(assert (=> d!411800 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485502)))

(assert (=> d!411800 true))

(declare-fun _$77!561 () Unit!22343)

(assert (=> d!411800 (= (choose!8797 Lexer!2259 (rules!11264 thiss!10022) lt!485510 lt!485502) _$77!561)))

(declare-fun bs!340748 () Bool)

(assert (= bs!340748 d!411800))

(assert (=> bs!340748 m!1629173))

(assert (=> d!411422 d!411800))

(assert (=> d!411422 d!411576))

(declare-fun d!411848 () Bool)

(declare-fun lt!485924 () Bool)

(assert (=> d!411848 (= lt!485924 (isEmpty!9183 (list!5887 (_2!7924 lt!485548))))))

(assert (=> d!411848 (= lt!485924 (isEmpty!9184 (c!235216 (_2!7924 lt!485548))))))

(assert (=> d!411848 (= (isEmpty!9178 (_2!7924 lt!485548)) lt!485924)))

(declare-fun bs!340749 () Bool)

(assert (= bs!340749 d!411848))

(declare-fun m!1630657 () Bool)

(assert (=> bs!340749 m!1630657))

(assert (=> bs!340749 m!1630657))

(declare-fun m!1630659 () Bool)

(assert (=> bs!340749 m!1630659))

(declare-fun m!1630661 () Bool)

(assert (=> bs!340749 m!1630661))

(assert (=> b!1430335 d!411848))

(declare-fun d!411850 () Bool)

(declare-fun res!647720 () Bool)

(declare-fun e!913517 () Bool)

(assert (=> d!411850 (=> res!647720 e!913517)))

(assert (=> d!411850 (= res!647720 ((_ is Nil!14816) lt!485505))))

(assert (=> d!411850 (= (forall!3651 lt!485505 lambda!62743) e!913517)))

(declare-fun b!1431221 () Bool)

(declare-fun e!913518 () Bool)

(assert (=> b!1431221 (= e!913517 e!913518)))

(declare-fun res!647721 () Bool)

(assert (=> b!1431221 (=> (not res!647721) (not e!913518))))

(declare-fun dynLambda!6766 (Int Token!4856) Bool)

(assert (=> b!1431221 (= res!647721 (dynLambda!6766 lambda!62743 (h!20217 lt!485505)))))

(declare-fun b!1431222 () Bool)

(assert (=> b!1431222 (= e!913518 (forall!3651 (t!126961 lt!485505) lambda!62743))))

(assert (= (and d!411850 (not res!647720)) b!1431221))

(assert (= (and b!1431221 res!647721) b!1431222))

(declare-fun b_lambda!44855 () Bool)

(assert (=> (not b_lambda!44855) (not b!1431221)))

(declare-fun m!1630663 () Bool)

(assert (=> b!1431221 m!1630663))

(declare-fun m!1630665 () Bool)

(assert (=> b!1431222 m!1630665))

(assert (=> d!411450 d!411850))

(assert (=> d!411450 d!411576))

(assert (=> d!411404 d!411424))

(declare-fun d!411852 () Bool)

(assert (=> d!411852 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) lt!485501)))

(assert (=> d!411852 true))

(declare-fun _$77!562 () Unit!22343)

(assert (=> d!411852 (= (choose!8797 Lexer!2259 (rules!11264 thiss!10022) lt!485506 lt!485501) _$77!562)))

(declare-fun bs!340750 () Bool)

(assert (= bs!340750 d!411852))

(assert (=> bs!340750 m!1629187))

(assert (=> d!411404 d!411852))

(assert (=> d!411404 d!411576))

(declare-fun b!1431241 () Bool)

(declare-fun e!913544 () Bool)

(declare-fun e!913537 () Bool)

(assert (=> b!1431241 (= e!913544 e!913537)))

(declare-fun res!647747 () Bool)

(assert (=> b!1431241 (=> (not res!647747) (not e!913537))))

(declare-fun appendAssoc!68 (List!14882 List!14882 List!14882) Bool)

(assert (=> b!1431241 (= res!647747 (appendAssoc!68 (list!5885 (c!235218 (tokens!1934 thiss!10022))) (list!5885 (left!12626 (left!12626 (c!235218 (tokens!1934 other!32))))) (list!5885 (right!12956 (left!12626 (c!235218 (tokens!1934 other!32)))))))))

(declare-fun b!1431242 () Bool)

(declare-fun e!913545 () Bool)

(declare-fun e!913539 () Bool)

(assert (=> b!1431242 (= e!913545 e!913539)))

(declare-fun res!647742 () Bool)

(assert (=> b!1431242 (=> (not res!647742) (not e!913539))))

(assert (=> b!1431242 (= res!647742 (appendAssoc!68 (list!5885 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (list!5885 (right!12956 (c!235218 (tokens!1934 thiss!10022)))) (list!5885 (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1431243 () Bool)

(declare-fun e!913538 () Bool)

(declare-fun e!913542 () Bool)

(assert (=> b!1431243 (= e!913538 e!913542)))

(declare-fun res!647748 () Bool)

(assert (=> b!1431243 (=> (not res!647748) (not e!913542))))

(assert (=> b!1431243 (= res!647748 (appendAssoc!68 (list!5885 (left!12626 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) (list!5885 (right!12956 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) (list!5885 (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1431245 () Bool)

(declare-fun e!913543 () Bool)

(declare-fun e!913541 () Bool)

(assert (=> b!1431245 (= e!913543 e!913541)))

(declare-fun res!647746 () Bool)

(assert (=> b!1431245 (=> res!647746 e!913541)))

(assert (=> b!1431245 (= res!647746 (not ((_ is Node!5021) (c!235218 (tokens!1934 other!32)))))))

(declare-fun b!1431246 () Bool)

(declare-fun e!913540 () Bool)

(assert (=> b!1431246 (= e!913540 e!913544)))

(declare-fun res!647745 () Bool)

(assert (=> b!1431246 (=> res!647745 e!913544)))

(assert (=> b!1431246 (= res!647745 (not ((_ is Node!5021) (left!12626 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1431247 () Bool)

(assert (=> b!1431247 (= e!913539 e!913538)))

(declare-fun res!647744 () Bool)

(assert (=> b!1431247 (=> res!647744 e!913538)))

(assert (=> b!1431247 (= res!647744 (not ((_ is Node!5021) (right!12956 (c!235218 (tokens!1934 thiss!10022))))))))

(declare-fun b!1431244 () Bool)

(assert (=> b!1431244 (= e!913537 (appendAssoc!68 (++!3927 (list!5885 (c!235218 (tokens!1934 thiss!10022))) (list!5885 (left!12626 (left!12626 (c!235218 (tokens!1934 other!32)))))) (list!5885 (right!12956 (left!12626 (c!235218 (tokens!1934 other!32))))) (list!5885 (right!12956 (c!235218 (tokens!1934 other!32))))))))

(declare-fun d!411854 () Bool)

(assert (=> d!411854 e!913543))

(declare-fun res!647740 () Bool)

(assert (=> d!411854 (=> (not res!647740) (not e!913543))))

(assert (=> d!411854 (= res!647740 e!913545)))

(declare-fun res!647741 () Bool)

(assert (=> d!411854 (=> res!647741 e!913545)))

(assert (=> d!411854 (= res!647741 (not ((_ is Node!5021) (c!235218 (tokens!1934 thiss!10022)))))))

(assert (=> d!411854 (= (appendAssocInst!304 (c!235218 (tokens!1934 thiss!10022)) (c!235218 (tokens!1934 other!32))) true)))

(declare-fun b!1431248 () Bool)

(assert (=> b!1431248 (= e!913542 (appendAssoc!68 (list!5885 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) (list!5885 (left!12626 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) (++!3927 (list!5885 (right!12956 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) (list!5885 (c!235218 (tokens!1934 other!32))))))))

(declare-fun b!1431249 () Bool)

(assert (=> b!1431249 (= e!913541 e!913540)))

(declare-fun res!647743 () Bool)

(assert (=> b!1431249 (=> (not res!647743) (not e!913540))))

(assert (=> b!1431249 (= res!647743 (appendAssoc!68 (list!5885 (c!235218 (tokens!1934 thiss!10022))) (list!5885 (left!12626 (c!235218 (tokens!1934 other!32)))) (list!5885 (right!12956 (c!235218 (tokens!1934 other!32))))))))

(assert (= (and d!411854 (not res!647741)) b!1431242))

(assert (= (and b!1431242 res!647742) b!1431247))

(assert (= (and b!1431247 (not res!647744)) b!1431243))

(assert (= (and b!1431243 res!647748) b!1431248))

(assert (= (and d!411854 res!647740) b!1431245))

(assert (= (and b!1431245 (not res!647746)) b!1431249))

(assert (= (and b!1431249 res!647743) b!1431246))

(assert (= (and b!1431246 (not res!647745)) b!1431241))

(assert (= (and b!1431241 res!647747) b!1431244))

(declare-fun m!1630667 () Bool)

(assert (=> b!1431248 m!1630667))

(declare-fun m!1630669 () Bool)

(assert (=> b!1431248 m!1630669))

(assert (=> b!1431248 m!1629305))

(assert (=> b!1431248 m!1630451))

(assert (=> b!1431248 m!1630669))

(declare-fun m!1630671 () Bool)

(assert (=> b!1431248 m!1630671))

(declare-fun m!1630673 () Bool)

(assert (=> b!1431248 m!1630673))

(assert (=> b!1431248 m!1630667))

(assert (=> b!1431248 m!1629305))

(assert (=> b!1431248 m!1630671))

(assert (=> b!1431248 m!1630451))

(assert (=> b!1431249 m!1629209))

(assert (=> b!1431249 m!1630465))

(assert (=> b!1431249 m!1630467))

(assert (=> b!1431249 m!1629209))

(assert (=> b!1431249 m!1630465))

(assert (=> b!1431249 m!1630467))

(declare-fun m!1630675 () Bool)

(assert (=> b!1431249 m!1630675))

(declare-fun m!1630677 () Bool)

(assert (=> b!1431244 m!1630677))

(assert (=> b!1431244 m!1629209))

(declare-fun m!1630679 () Bool)

(assert (=> b!1431244 m!1630679))

(declare-fun m!1630681 () Bool)

(assert (=> b!1431244 m!1630681))

(assert (=> b!1431244 m!1630467))

(declare-fun m!1630683 () Bool)

(assert (=> b!1431244 m!1630683))

(assert (=> b!1431244 m!1630467))

(assert (=> b!1431244 m!1630681))

(assert (=> b!1431244 m!1629209))

(assert (=> b!1431244 m!1630677))

(assert (=> b!1431244 m!1630679))

(assert (=> b!1431242 m!1630451))

(assert (=> b!1431242 m!1630453))

(assert (=> b!1431242 m!1629305))

(assert (=> b!1431242 m!1630451))

(assert (=> b!1431242 m!1630453))

(assert (=> b!1431242 m!1629305))

(declare-fun m!1630685 () Bool)

(assert (=> b!1431242 m!1630685))

(assert (=> b!1431243 m!1630669))

(assert (=> b!1431243 m!1630667))

(assert (=> b!1431243 m!1629305))

(assert (=> b!1431243 m!1630669))

(assert (=> b!1431243 m!1630667))

(assert (=> b!1431243 m!1629305))

(declare-fun m!1630687 () Bool)

(assert (=> b!1431243 m!1630687))

(assert (=> b!1431241 m!1629209))

(assert (=> b!1431241 m!1630677))

(assert (=> b!1431241 m!1630681))

(assert (=> b!1431241 m!1629209))

(assert (=> b!1431241 m!1630677))

(assert (=> b!1431241 m!1630681))

(declare-fun m!1630689 () Bool)

(assert (=> b!1431241 m!1630689))

(assert (=> d!411446 d!411854))

(assert (=> d!411446 d!411526))

(declare-fun d!411856 () Bool)

(declare-fun lt!485927 () Token!4856)

(declare-fun contains!2855 (List!14882 Token!4856) Bool)

(assert (=> d!411856 (contains!2855 (list!5883 (tokens!1934 thiss!10022)) lt!485927)))

(declare-fun e!913548 () Token!4856)

(assert (=> d!411856 (= lt!485927 e!913548)))

(declare-fun c!235366 () Bool)

(assert (=> d!411856 (= c!235366 (and ((_ is Cons!14816) (list!5883 (tokens!1934 thiss!10022))) ((_ is Nil!14816) (t!126961 (list!5883 (tokens!1934 thiss!10022))))))))

(assert (=> d!411856 (not (isEmpty!9179 (list!5883 (tokens!1934 thiss!10022))))))

(assert (=> d!411856 (= (last!126 (list!5883 (tokens!1934 thiss!10022))) lt!485927)))

(declare-fun b!1431254 () Bool)

(assert (=> b!1431254 (= e!913548 (h!20217 (list!5883 (tokens!1934 thiss!10022))))))

(declare-fun b!1431255 () Bool)

(assert (=> b!1431255 (= e!913548 (last!126 (t!126961 (list!5883 (tokens!1934 thiss!10022)))))))

(assert (= (and d!411856 c!235366) b!1431254))

(assert (= (and d!411856 (not c!235366)) b!1431255))

(assert (=> d!411856 m!1629177))

(declare-fun m!1630691 () Bool)

(assert (=> d!411856 m!1630691))

(assert (=> d!411856 m!1629177))

(assert (=> d!411856 m!1629325))

(declare-fun m!1630693 () Bool)

(assert (=> b!1431255 m!1630693))

(assert (=> d!411400 d!411856))

(assert (=> d!411400 d!411402))

(declare-fun b!1431266 () Bool)

(declare-fun e!913557 () Token!4856)

(assert (=> b!1431266 (= e!913557 (last!127 (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun lt!485941 () List!14882)

(assert (=> b!1431266 (= lt!485941 (list!5885 (left!12626 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun lt!485940 () List!14882)

(assert (=> b!1431266 (= lt!485940 (list!5885 (right!12956 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun lt!485938 () Unit!22343)

(declare-fun lemmaLastOfConcatIsLastOfRhs!4 (List!14882 List!14882) Unit!22343)

(assert (=> b!1431266 (= lt!485938 (lemmaLastOfConcatIsLastOfRhs!4 lt!485941 lt!485940))))

(declare-fun res!647756 () Bool)

(assert (=> b!1431266 (= res!647756 (isEmpty!9179 lt!485940))))

(declare-fun e!913559 () Bool)

(assert (=> b!1431266 (=> (not res!647756) (not e!913559))))

(declare-fun res!647757 () Bool)

(assert (=> b!1431266 (= res!647757 e!913559)))

(declare-fun e!913558 () Bool)

(assert (=> b!1431266 (=> res!647757 e!913558)))

(assert (=> b!1431266 e!913558))

(declare-fun lt!485942 () Unit!22343)

(assert (=> b!1431266 (= lt!485942 lt!485938)))

(declare-fun b!1431267 () Bool)

(declare-fun res!647755 () Bool)

(assert (=> b!1431267 (= res!647755 (not (isEmpty!9179 lt!485940)))))

(declare-fun e!913560 () Bool)

(assert (=> b!1431267 (=> (not res!647755) (not e!913560))))

(assert (=> b!1431267 (= e!913558 e!913560)))

(declare-fun b!1431268 () Bool)

(declare-fun last!129 (IArray!10047) Token!4856)

(assert (=> b!1431268 (= e!913557 (last!129 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))

(declare-fun b!1431269 () Bool)

(assert (=> b!1431269 (= e!913560 (= (last!126 (++!3927 lt!485941 lt!485940)) (last!126 lt!485940)))))

(declare-fun b!1431270 () Bool)

(assert (=> b!1431270 (= e!913559 (= (last!126 (++!3927 lt!485941 lt!485940)) (last!126 lt!485941)))))

(declare-fun d!411858 () Bool)

(declare-fun lt!485939 () Token!4856)

(assert (=> d!411858 (= lt!485939 (last!126 (list!5885 (c!235218 (tokens!1934 thiss!10022)))))))

(assert (=> d!411858 (= lt!485939 e!913557)))

(declare-fun c!235369 () Bool)

(assert (=> d!411858 (= c!235369 ((_ is Leaf!7521) (c!235218 (tokens!1934 thiss!10022))))))

(assert (=> d!411858 (isBalanced!1487 (c!235218 (tokens!1934 thiss!10022)))))

(assert (=> d!411858 (= (last!127 (c!235218 (tokens!1934 thiss!10022))) lt!485939)))

(assert (= (and d!411858 c!235369) b!1431268))

(assert (= (and d!411858 (not c!235369)) b!1431266))

(assert (= (and b!1431266 res!647756) b!1431270))

(assert (= (and b!1431266 (not res!647757)) b!1431267))

(assert (= (and b!1431267 res!647755) b!1431269))

(declare-fun m!1630695 () Bool)

(assert (=> b!1431270 m!1630695))

(assert (=> b!1431270 m!1630695))

(declare-fun m!1630697 () Bool)

(assert (=> b!1431270 m!1630697))

(declare-fun m!1630699 () Bool)

(assert (=> b!1431270 m!1630699))

(assert (=> b!1431269 m!1630695))

(assert (=> b!1431269 m!1630695))

(assert (=> b!1431269 m!1630697))

(declare-fun m!1630701 () Bool)

(assert (=> b!1431269 m!1630701))

(declare-fun m!1630703 () Bool)

(assert (=> b!1431267 m!1630703))

(assert (=> d!411858 m!1629209))

(assert (=> d!411858 m!1629209))

(declare-fun m!1630705 () Bool)

(assert (=> d!411858 m!1630705))

(assert (=> d!411858 m!1629323))

(declare-fun m!1630707 () Bool)

(assert (=> b!1431268 m!1630707))

(assert (=> b!1431266 m!1630453))

(declare-fun m!1630709 () Bool)

(assert (=> b!1431266 m!1630709))

(assert (=> b!1431266 m!1630451))

(declare-fun m!1630711 () Bool)

(assert (=> b!1431266 m!1630711))

(assert (=> b!1431266 m!1630703))

(assert (=> d!411400 d!411858))

(assert (=> d!411400 d!411438))

(assert (=> b!1430353 d!411752))

(declare-fun d!411860 () Bool)

(declare-fun res!647759 () Bool)

(declare-fun e!913561 () Bool)

(assert (=> d!411860 (=> res!647759 e!913561)))

(assert (=> d!411860 (= res!647759 (or (not ((_ is Cons!14816) (++!3927 lt!485510 lt!485506))) (not ((_ is Cons!14816) (t!126961 (++!3927 lt!485510 lt!485506))))))))

(assert (=> d!411860 (= (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 (++!3927 lt!485510 lt!485506) (rules!11264 thiss!10022)) e!913561)))

(declare-fun b!1431271 () Bool)

(declare-fun e!913562 () Bool)

(assert (=> b!1431271 (= e!913561 e!913562)))

(declare-fun res!647758 () Bool)

(assert (=> b!1431271 (=> (not res!647758) (not e!913562))))

(assert (=> b!1431271 (= res!647758 (separableTokensPredicate!496 Lexer!2259 (h!20217 (++!3927 lt!485510 lt!485506)) (h!20217 (t!126961 (++!3927 lt!485510 lt!485506))) (rules!11264 thiss!10022)))))

(declare-fun lt!485948 () Unit!22343)

(declare-fun Unit!22364 () Unit!22343)

(assert (=> b!1431271 (= lt!485948 Unit!22364)))

(assert (=> b!1431271 (> (size!12158 (charsOf!1502 (h!20217 (t!126961 (++!3927 lt!485510 lt!485506))))) 0)))

(declare-fun lt!485949 () Unit!22343)

(declare-fun Unit!22365 () Unit!22343)

(assert (=> b!1431271 (= lt!485949 Unit!22365)))

(assert (=> b!1431271 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 (++!3927 lt!485510 lt!485506))))))

(declare-fun lt!485944 () Unit!22343)

(declare-fun Unit!22366 () Unit!22343)

(assert (=> b!1431271 (= lt!485944 Unit!22366)))

(assert (=> b!1431271 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (++!3927 lt!485510 lt!485506)))))

(declare-fun lt!485945 () Unit!22343)

(declare-fun lt!485947 () Unit!22343)

(assert (=> b!1431271 (= lt!485945 lt!485947)))

(assert (=> b!1431271 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (t!126961 (++!3927 lt!485510 lt!485506))))))

(assert (=> b!1431271 (= lt!485947 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) (++!3927 lt!485510 lt!485506) (h!20217 (t!126961 (++!3927 lt!485510 lt!485506)))))))

(declare-fun lt!485946 () Unit!22343)

(declare-fun lt!485943 () Unit!22343)

(assert (=> b!1431271 (= lt!485946 lt!485943)))

(assert (=> b!1431271 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 (++!3927 lt!485510 lt!485506)))))

(assert (=> b!1431271 (= lt!485943 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!379 Lexer!2259 (rules!11264 thiss!10022) (++!3927 lt!485510 lt!485506) (h!20217 (++!3927 lt!485510 lt!485506))))))

(declare-fun b!1431272 () Bool)

(assert (=> b!1431272 (= e!913562 (tokensListTwoByTwoPredicateSeparableList!219 Lexer!2259 (Cons!14816 (h!20217 (t!126961 (++!3927 lt!485510 lt!485506))) (t!126961 (t!126961 (++!3927 lt!485510 lt!485506)))) (rules!11264 thiss!10022)))))

(assert (= (and d!411860 (not res!647759)) b!1431271))

(assert (= (and b!1431271 res!647758) b!1431272))

(assert (=> b!1431271 m!1629693))

(declare-fun m!1630713 () Bool)

(assert (=> b!1431271 m!1630713))

(declare-fun m!1630715 () Bool)

(assert (=> b!1431271 m!1630715))

(declare-fun m!1630717 () Bool)

(assert (=> b!1431271 m!1630717))

(declare-fun m!1630719 () Bool)

(assert (=> b!1431271 m!1630719))

(assert (=> b!1431271 m!1629159))

(declare-fun m!1630721 () Bool)

(assert (=> b!1431271 m!1630721))

(assert (=> b!1431271 m!1629159))

(declare-fun m!1630723 () Bool)

(assert (=> b!1431271 m!1630723))

(assert (=> b!1431271 m!1630717))

(declare-fun m!1630725 () Bool)

(assert (=> b!1431272 m!1630725))

(assert (=> b!1430510 d!411860))

(assert (=> b!1430510 d!411448))

(assert (=> b!1430510 d!411548))

(assert (=> b!1430510 d!411442))

(declare-fun d!411862 () Bool)

(declare-fun lt!485950 () Int)

(assert (=> d!411862 (>= lt!485950 0)))

(declare-fun e!913563 () Int)

(assert (=> d!411862 (= lt!485950 e!913563)))

(declare-fun c!235370 () Bool)

(assert (=> d!411862 (= c!235370 ((_ is Nil!14816) (list!5883 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))))))

(assert (=> d!411862 (= (size!12159 (list!5883 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))) lt!485950)))

(declare-fun b!1431273 () Bool)

(assert (=> b!1431273 (= e!913563 0)))

(declare-fun b!1431274 () Bool)

(assert (=> b!1431274 (= e!913563 (+ 1 (size!12159 (t!126961 (list!5883 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))))))))

(assert (= (and d!411862 c!235370) b!1431273))

(assert (= (and d!411862 (not c!235370)) b!1431274))

(declare-fun m!1630727 () Bool)

(assert (=> b!1431274 m!1630727))

(assert (=> d!411474 d!411862))

(declare-fun d!411864 () Bool)

(assert (=> d!411864 (= (list!5883 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32))) (list!5885 (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))))))

(declare-fun bs!340751 () Bool)

(assert (= bs!340751 d!411864))

(declare-fun m!1630729 () Bool)

(assert (=> bs!340751 m!1630729))

(assert (=> d!411474 d!411864))

(declare-fun d!411866 () Bool)

(declare-fun lt!485953 () Int)

(assert (=> d!411866 (= lt!485953 (size!12159 (list!5885 (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32))))))))

(assert (=> d!411866 (= lt!485953 (ite ((_ is Empty!5021) (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))) 0 (ite ((_ is Leaf!7521) (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))) (csize!10273 (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))) (csize!10272 (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))))))))

(assert (=> d!411866 (= (size!12160 (c!235218 (++!3926 (tokens!1934 thiss!10022) (tokens!1934 other!32)))) lt!485953)))

(declare-fun bs!340752 () Bool)

(assert (= bs!340752 d!411866))

(assert (=> bs!340752 m!1630729))

(assert (=> bs!340752 m!1630729))

(declare-fun m!1630731 () Bool)

(assert (=> bs!340752 m!1630731))

(assert (=> d!411474 d!411866))

(assert (=> d!411416 d!411736))

(assert (=> d!411416 d!411734))

(declare-fun d!411868 () Bool)

(assert (=> d!411868 (= (list!5883 (singletonSeq!1201 lt!485502)) (list!5885 (c!235218 (singletonSeq!1201 lt!485502))))))

(declare-fun bs!340753 () Bool)

(assert (= bs!340753 d!411868))

(declare-fun m!1630733 () Bool)

(assert (=> bs!340753 m!1630733))

(assert (=> d!411416 d!411868))

(assert (=> d!411416 d!411738))

(assert (=> d!411416 d!411576))

(declare-fun d!411870 () Bool)

(assert (=> d!411870 (= (list!5883 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502))))) (list!5885 (c!235218 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485502)))))))))

(declare-fun bs!340754 () Bool)

(assert (= bs!340754 d!411870))

(declare-fun m!1630735 () Bool)

(assert (=> bs!340754 m!1630735))

(assert (=> d!411416 d!411870))

(declare-fun d!411872 () Bool)

(declare-fun lt!485954 () Int)

(assert (=> d!411872 (= lt!485954 (size!12159 (list!5883 (_1!7924 lt!485548))))))

(assert (=> d!411872 (= lt!485954 (size!12160 (c!235218 (_1!7924 lt!485548))))))

(assert (=> d!411872 (= (size!12154 (_1!7924 lt!485548)) lt!485954)))

(declare-fun bs!340755 () Bool)

(assert (= bs!340755 d!411872))

(assert (=> bs!340755 m!1630243))

(assert (=> bs!340755 m!1630243))

(declare-fun m!1630737 () Bool)

(assert (=> bs!340755 m!1630737))

(declare-fun m!1630739 () Bool)

(assert (=> bs!340755 m!1630739))

(assert (=> d!411416 d!411872))

(declare-fun d!411874 () Bool)

(assert (=> d!411874 (= (separableTokens!211 Lexer!2259 (tokens!1934 other!32) (rules!11264 other!32)) (tokensListTwoByTwoPredicateSeparable!102 Lexer!2259 (tokens!1934 other!32) 0 (rules!11264 other!32)))))

(declare-fun bs!340756 () Bool)

(assert (= bs!340756 d!411874))

(declare-fun m!1630741 () Bool)

(assert (=> bs!340756 m!1630741))

(assert (=> b!1430527 d!411874))

(assert (=> b!1430355 d!411874))

(declare-fun bs!340757 () Bool)

(declare-fun d!411876 () Bool)

(assert (= bs!340757 (and d!411876 d!411764)))

(declare-fun lambda!62769 () Int)

(assert (=> bs!340757 (= lambda!62769 lambda!62763)))

(declare-fun bs!340758 () Bool)

(assert (= bs!340758 (and d!411876 d!411740)))

(assert (=> bs!340758 (= (= (rules!11264 thiss!10022) (rules!11264 other!32)) (= lambda!62769 lambda!62761))))

(declare-fun bs!340759 () Bool)

(assert (= bs!340759 (and d!411876 d!411632)))

(assert (=> bs!340759 (= lambda!62769 lambda!62750)))

(declare-fun bs!340760 () Bool)

(assert (= bs!340760 (and d!411876 d!411450)))

(assert (=> bs!340760 (= lambda!62769 lambda!62743)))

(declare-fun bs!340761 () Bool)

(assert (= bs!340761 (and d!411876 d!411742)))

(assert (=> bs!340761 (= lambda!62769 lambda!62762)))

(declare-fun bs!340762 () Bool)

(assert (= bs!340762 (and d!411876 d!411548)))

(assert (=> bs!340762 (= lambda!62769 lambda!62744)))

(declare-fun b!1431279 () Bool)

(declare-fun e!913568 () Bool)

(assert (=> b!1431279 (= e!913568 true)))

(declare-fun b!1431278 () Bool)

(declare-fun e!913567 () Bool)

(assert (=> b!1431278 (= e!913567 e!913568)))

(declare-fun b!1431277 () Bool)

(declare-fun e!913566 () Bool)

(assert (=> b!1431277 (= e!913566 e!913567)))

(assert (=> d!411876 e!913566))

(assert (= b!1431278 b!1431279))

(assert (= b!1431277 b!1431278))

(assert (= (and d!411876 ((_ is Cons!14817) (rules!11264 thiss!10022))) b!1431277))

(assert (=> b!1431279 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62769))))

(assert (=> b!1431279 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (rules!11264 thiss!10022))))) (dynLambda!6761 order!8891 lambda!62769))))

(assert (=> d!411876 true))

(declare-fun lt!485955 () Bool)

(assert (=> d!411876 (= lt!485955 (forall!3651 lt!485510 lambda!62769))))

(declare-fun e!913565 () Bool)

(assert (=> d!411876 (= lt!485955 e!913565)))

(declare-fun res!647761 () Bool)

(assert (=> d!411876 (=> res!647761 e!913565)))

(assert (=> d!411876 (= res!647761 (not ((_ is Cons!14816) lt!485510)))))

(assert (=> d!411876 (not (isEmpty!9177 (rules!11264 thiss!10022)))))

(assert (=> d!411876 (= (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) lt!485510) lt!485955)))

(declare-fun b!1431275 () Bool)

(declare-fun e!913564 () Bool)

(assert (=> b!1431275 (= e!913565 e!913564)))

(declare-fun res!647760 () Bool)

(assert (=> b!1431275 (=> (not res!647760) (not e!913564))))

(assert (=> b!1431275 (= res!647760 (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485510)))))

(declare-fun b!1431276 () Bool)

(assert (=> b!1431276 (= e!913564 (rulesProduceEachTokenIndividuallyList!704 Lexer!2259 (rules!11264 thiss!10022) (t!126961 lt!485510)))))

(assert (= (and d!411876 (not res!647761)) b!1431275))

(assert (= (and b!1431275 res!647760) b!1431276))

(declare-fun m!1630743 () Bool)

(assert (=> d!411876 m!1630743))

(assert (=> d!411876 m!1629251))

(declare-fun m!1630745 () Bool)

(assert (=> b!1431275 m!1630745))

(declare-fun m!1630747 () Bool)

(assert (=> b!1431276 m!1630747))

(assert (=> b!1430508 d!411876))

(declare-fun d!411878 () Bool)

(declare-fun lt!485956 () Int)

(assert (=> d!411878 (= lt!485956 (size!12159 (list!5883 (_1!7924 lt!485551))))))

(assert (=> d!411878 (= lt!485956 (size!12160 (c!235218 (_1!7924 lt!485551))))))

(assert (=> d!411878 (= (size!12154 (_1!7924 lt!485551)) lt!485956)))

(declare-fun bs!340763 () Bool)

(assert (= bs!340763 d!411878))

(assert (=> bs!340763 m!1629991))

(assert (=> bs!340763 m!1629991))

(declare-fun m!1630749 () Bool)

(assert (=> bs!340763 m!1630749))

(declare-fun m!1630751 () Bool)

(assert (=> bs!340763 m!1630751))

(assert (=> d!411424 d!411878))

(declare-fun d!411880 () Bool)

(assert (=> d!411880 (= (list!5883 (singletonSeq!1201 lt!485501)) (list!5885 (c!235218 (singletonSeq!1201 lt!485501))))))

(declare-fun bs!340764 () Bool)

(assert (= bs!340764 d!411880))

(declare-fun m!1630753 () Bool)

(assert (=> bs!340764 m!1630753))

(assert (=> d!411424 d!411880))

(assert (=> d!411424 d!411576))

(assert (=> d!411424 d!411662))

(assert (=> d!411424 d!411702))

(declare-fun d!411882 () Bool)

(assert (=> d!411882 (= (list!5883 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501))))) (list!5885 (c!235218 (_1!7924 (lex!1031 Lexer!2259 (rules!11264 thiss!10022) (print!1040 Lexer!2259 (singletonSeq!1201 lt!485501)))))))))

(declare-fun bs!340765 () Bool)

(assert (= bs!340765 d!411882))

(declare-fun m!1630755 () Bool)

(assert (=> bs!340765 m!1630755))

(assert (=> d!411424 d!411882))

(assert (=> d!411424 d!411710))

(declare-fun b!1431293 () Bool)

(declare-fun b_free!35423 () Bool)

(declare-fun b_next!36127 () Bool)

(assert (=> b!1431293 (= b_free!35423 (not b_next!36127))))

(declare-fun tp!405699 () Bool)

(declare-fun b_and!96351 () Bool)

(assert (=> b!1431293 (= tp!405699 b_and!96351)))

(declare-fun b_free!35425 () Bool)

(declare-fun b_next!36129 () Bool)

(assert (=> b!1431293 (= b_free!35425 (not b_next!36129))))

(declare-fun t!127049 () Bool)

(declare-fun tb!75865 () Bool)

(assert (=> (and b!1431293 (= (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))) (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505)))))) t!127049) tb!75865))

(declare-fun result!92124 () Bool)

(assert (= result!92124 result!92066))

(assert (=> d!411614 t!127049))

(declare-fun t!127051 () Bool)

(declare-fun tb!75867 () Bool)

(assert (=> (and b!1431293 (= (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485502)))) t!127051) tb!75867))

(declare-fun result!92126 () Bool)

(assert (= result!92126 result!92086))

(assert (=> d!411770 t!127051))

(declare-fun tb!75869 () Bool)

(declare-fun t!127053 () Bool)

(assert (=> (and b!1431293 (= (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485501)))) t!127053) tb!75869))

(declare-fun result!92128 () Bool)

(assert (= result!92128 result!92090))

(assert (=> d!411772 t!127053))

(declare-fun tp!405698 () Bool)

(declare-fun b_and!96353 () Bool)

(assert (=> b!1431293 (= tp!405698 (and (=> t!127049 result!92124) (=> t!127051 result!92126) (=> t!127053 result!92128) b_and!96353))))

(declare-fun e!913584 () Bool)

(assert (=> b!1430555 (= tp!405610 e!913584)))

(declare-fun e!913586 () Bool)

(declare-fun tp!405697 () Bool)

(declare-fun e!913583 () Bool)

(declare-fun b!1431291 () Bool)

(declare-fun inv!21 (TokenValue!2687) Bool)

(assert (=> b!1431291 (= e!913586 (and (inv!21 (value!83662 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022))))))) e!913583 tp!405697))))

(declare-fun tp!405696 () Bool)

(declare-fun b!1431290 () Bool)

(declare-fun inv!19672 (Token!4856) Bool)

(assert (=> b!1431290 (= e!913584 (and (inv!19672 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))) e!913586 tp!405696))))

(declare-fun b!1431292 () Bool)

(declare-fun tp!405695 () Bool)

(declare-fun e!913585 () Bool)

(assert (=> b!1431292 (= e!913583 (and tp!405695 (inv!19652 (tag!2859 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))) (inv!19665 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))))) e!913585))))

(assert (=> b!1431293 (= e!913585 (and tp!405699 tp!405698))))

(assert (= b!1431292 b!1431293))

(assert (= b!1431291 b!1431292))

(assert (= b!1431290 b!1431291))

(assert (= (and b!1430555 ((_ is Cons!14816) (innerList!5081 (xs!7750 (c!235218 (tokens!1934 thiss!10022)))))) b!1431290))

(declare-fun m!1630757 () Bool)

(assert (=> b!1431291 m!1630757))

(declare-fun m!1630759 () Bool)

(assert (=> b!1431290 m!1630759))

(declare-fun m!1630761 () Bool)

(assert (=> b!1431292 m!1630761))

(declare-fun m!1630763 () Bool)

(assert (=> b!1431292 m!1630763))

(declare-fun b!1431296 () Bool)

(declare-fun b_free!35427 () Bool)

(declare-fun b_next!36131 () Bool)

(assert (=> b!1431296 (= b_free!35427 (not b_next!36131))))

(declare-fun tp!405700 () Bool)

(declare-fun b_and!96355 () Bool)

(assert (=> b!1431296 (= tp!405700 b_and!96355)))

(declare-fun b_free!35429 () Bool)

(declare-fun b_next!36133 () Bool)

(assert (=> b!1431296 (= b_free!35429 (not b_next!36133))))

(declare-fun tb!75871 () Bool)

(declare-fun t!127055 () Bool)

(assert (=> (and b!1431296 (= (toChars!3759 (transformation!2597 (h!20218 (t!126962 (rules!11264 other!32))))) (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505)))))) t!127055) tb!75871))

(declare-fun result!92130 () Bool)

(assert (= result!92130 result!92066))

(assert (=> d!411614 t!127055))

(declare-fun tb!75873 () Bool)

(declare-fun t!127057 () Bool)

(assert (=> (and b!1431296 (= (toChars!3759 (transformation!2597 (h!20218 (t!126962 (rules!11264 other!32))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485502)))) t!127057) tb!75873))

(declare-fun result!92132 () Bool)

(assert (= result!92132 result!92086))

(assert (=> d!411770 t!127057))

(declare-fun t!127059 () Bool)

(declare-fun tb!75875 () Bool)

(assert (=> (and b!1431296 (= (toChars!3759 (transformation!2597 (h!20218 (t!126962 (rules!11264 other!32))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485501)))) t!127059) tb!75875))

(declare-fun result!92134 () Bool)

(assert (= result!92134 result!92090))

(assert (=> d!411772 t!127059))

(declare-fun b_and!96357 () Bool)

(declare-fun tp!405702 () Bool)

(assert (=> b!1431296 (= tp!405702 (and (=> t!127055 result!92130) (=> t!127057 result!92132) (=> t!127059 result!92134) b_and!96357))))

(declare-fun e!913587 () Bool)

(assert (=> b!1431296 (= e!913587 (and tp!405700 tp!405702))))

(declare-fun e!913590 () Bool)

(declare-fun b!1431295 () Bool)

(declare-fun tp!405701 () Bool)

(assert (=> b!1431295 (= e!913590 (and tp!405701 (inv!19652 (tag!2859 (h!20218 (t!126962 (rules!11264 other!32))))) (inv!19665 (transformation!2597 (h!20218 (t!126962 (rules!11264 other!32))))) e!913587))))

(declare-fun b!1431294 () Bool)

(declare-fun e!913588 () Bool)

(declare-fun tp!405703 () Bool)

(assert (=> b!1431294 (= e!913588 (and e!913590 tp!405703))))

(assert (=> b!1430539 (= tp!405598 e!913588)))

(assert (= b!1431295 b!1431296))

(assert (= b!1431294 b!1431295))

(assert (= (and b!1430539 ((_ is Cons!14817) (t!126962 (rules!11264 other!32)))) b!1431294))

(declare-fun m!1630765 () Bool)

(assert (=> b!1431295 m!1630765))

(declare-fun m!1630767 () Bool)

(assert (=> b!1431295 m!1630767))

(declare-fun e!913592 () Bool)

(declare-fun tp!405704 () Bool)

(declare-fun b!1431297 () Bool)

(declare-fun tp!405706 () Bool)

(assert (=> b!1431297 (= e!913592 (and (inv!19656 (left!12626 (left!12626 (c!235218 (tokens!1934 thiss!10022))))) tp!405704 (inv!19656 (right!12956 (left!12626 (c!235218 (tokens!1934 thiss!10022))))) tp!405706))))

(declare-fun b!1431299 () Bool)

(declare-fun e!913591 () Bool)

(declare-fun tp!405705 () Bool)

(assert (=> b!1431299 (= e!913591 tp!405705)))

(declare-fun b!1431298 () Bool)

(assert (=> b!1431298 (= e!913592 (and (inv!19666 (xs!7750 (left!12626 (c!235218 (tokens!1934 thiss!10022))))) e!913591))))

(assert (=> b!1430553 (= tp!405609 (and (inv!19656 (left!12626 (c!235218 (tokens!1934 thiss!10022)))) e!913592))))

(assert (= (and b!1430553 ((_ is Node!5021) (left!12626 (c!235218 (tokens!1934 thiss!10022))))) b!1431297))

(assert (= b!1431298 b!1431299))

(assert (= (and b!1430553 ((_ is Leaf!7521) (left!12626 (c!235218 (tokens!1934 thiss!10022))))) b!1431298))

(declare-fun m!1630769 () Bool)

(assert (=> b!1431297 m!1630769))

(declare-fun m!1630771 () Bool)

(assert (=> b!1431297 m!1630771))

(declare-fun m!1630773 () Bool)

(assert (=> b!1431298 m!1630773))

(assert (=> b!1430553 m!1629569))

(declare-fun b!1431300 () Bool)

(declare-fun e!913594 () Bool)

(declare-fun tp!405707 () Bool)

(declare-fun tp!405709 () Bool)

(assert (=> b!1431300 (= e!913594 (and (inv!19656 (left!12626 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) tp!405707 (inv!19656 (right!12956 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) tp!405709))))

(declare-fun b!1431302 () Bool)

(declare-fun e!913593 () Bool)

(declare-fun tp!405708 () Bool)

(assert (=> b!1431302 (= e!913593 tp!405708)))

(declare-fun b!1431301 () Bool)

(assert (=> b!1431301 (= e!913594 (and (inv!19666 (xs!7750 (right!12956 (c!235218 (tokens!1934 thiss!10022))))) e!913593))))

(assert (=> b!1430553 (= tp!405611 (and (inv!19656 (right!12956 (c!235218 (tokens!1934 thiss!10022)))) e!913594))))

(assert (= (and b!1430553 ((_ is Node!5021) (right!12956 (c!235218 (tokens!1934 thiss!10022))))) b!1431300))

(assert (= b!1431301 b!1431302))

(assert (= (and b!1430553 ((_ is Leaf!7521) (right!12956 (c!235218 (tokens!1934 thiss!10022))))) b!1431301))

(declare-fun m!1630775 () Bool)

(assert (=> b!1431300 m!1630775))

(declare-fun m!1630777 () Bool)

(assert (=> b!1431300 m!1630777))

(declare-fun m!1630779 () Bool)

(assert (=> b!1431301 m!1630779))

(assert (=> b!1430553 m!1629571))

(declare-fun b!1431316 () Bool)

(declare-fun e!913597 () Bool)

(declare-fun tp!405723 () Bool)

(declare-fun tp!405722 () Bool)

(assert (=> b!1431316 (= e!913597 (and tp!405723 tp!405722))))

(assert (=> b!1430543 (= tp!405600 e!913597)))

(declare-fun b!1431314 () Bool)

(declare-fun tp!405720 () Bool)

(declare-fun tp!405724 () Bool)

(assert (=> b!1431314 (= e!913597 (and tp!405720 tp!405724))))

(declare-fun b!1431313 () Bool)

(declare-fun tp_is_empty!6835 () Bool)

(assert (=> b!1431313 (= e!913597 tp_is_empty!6835)))

(declare-fun b!1431315 () Bool)

(declare-fun tp!405721 () Bool)

(assert (=> b!1431315 (= e!913597 tp!405721)))

(assert (= (and b!1430543 ((_ is ElementMatch!3911) (regex!2597 (h!20218 (rules!11264 thiss!10022))))) b!1431313))

(assert (= (and b!1430543 ((_ is Concat!6599) (regex!2597 (h!20218 (rules!11264 thiss!10022))))) b!1431314))

(assert (= (and b!1430543 ((_ is Star!3911) (regex!2597 (h!20218 (rules!11264 thiss!10022))))) b!1431315))

(assert (= (and b!1430543 ((_ is Union!3911) (regex!2597 (h!20218 (rules!11264 thiss!10022))))) b!1431316))

(declare-fun b!1431319 () Bool)

(declare-fun b_free!35431 () Bool)

(declare-fun b_next!36135 () Bool)

(assert (=> b!1431319 (= b_free!35431 (not b_next!36135))))

(declare-fun tp!405725 () Bool)

(declare-fun b_and!96359 () Bool)

(assert (=> b!1431319 (= tp!405725 b_and!96359)))

(declare-fun b_free!35433 () Bool)

(declare-fun b_next!36137 () Bool)

(assert (=> b!1431319 (= b_free!35433 (not b_next!36137))))

(declare-fun tb!75877 () Bool)

(declare-fun t!127061 () Bool)

(assert (=> (and b!1431319 (= (toChars!3759 (transformation!2597 (h!20218 (t!126962 (rules!11264 thiss!10022))))) (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505)))))) t!127061) tb!75877))

(declare-fun result!92138 () Bool)

(assert (= result!92138 result!92066))

(assert (=> d!411614 t!127061))

(declare-fun tb!75879 () Bool)

(declare-fun t!127063 () Bool)

(assert (=> (and b!1431319 (= (toChars!3759 (transformation!2597 (h!20218 (t!126962 (rules!11264 thiss!10022))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485502)))) t!127063) tb!75879))

(declare-fun result!92140 () Bool)

(assert (= result!92140 result!92086))

(assert (=> d!411770 t!127063))

(declare-fun tb!75881 () Bool)

(declare-fun t!127065 () Bool)

(assert (=> (and b!1431319 (= (toChars!3759 (transformation!2597 (h!20218 (t!126962 (rules!11264 thiss!10022))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485501)))) t!127065) tb!75881))

(declare-fun result!92142 () Bool)

(assert (= result!92142 result!92090))

(assert (=> d!411772 t!127065))

(declare-fun tp!405727 () Bool)

(declare-fun b_and!96361 () Bool)

(assert (=> b!1431319 (= tp!405727 (and (=> t!127061 result!92138) (=> t!127063 result!92140) (=> t!127065 result!92142) b_and!96361))))

(declare-fun e!913598 () Bool)

(assert (=> b!1431319 (= e!913598 (and tp!405725 tp!405727))))

(declare-fun e!913601 () Bool)

(declare-fun tp!405726 () Bool)

(declare-fun b!1431318 () Bool)

(assert (=> b!1431318 (= e!913601 (and tp!405726 (inv!19652 (tag!2859 (h!20218 (t!126962 (rules!11264 thiss!10022))))) (inv!19665 (transformation!2597 (h!20218 (t!126962 (rules!11264 thiss!10022))))) e!913598))))

(declare-fun b!1431317 () Bool)

(declare-fun e!913599 () Bool)

(declare-fun tp!405728 () Bool)

(assert (=> b!1431317 (= e!913599 (and e!913601 tp!405728))))

(assert (=> b!1430542 (= tp!405602 e!913599)))

(assert (= b!1431318 b!1431319))

(assert (= b!1431317 b!1431318))

(assert (= (and b!1430542 ((_ is Cons!14817) (t!126962 (rules!11264 thiss!10022)))) b!1431317))

(declare-fun m!1630781 () Bool)

(assert (=> b!1431318 m!1630781))

(declare-fun m!1630783 () Bool)

(assert (=> b!1431318 m!1630783))

(declare-fun b!1431323 () Bool)

(declare-fun b_free!35435 () Bool)

(declare-fun b_next!36139 () Bool)

(assert (=> b!1431323 (= b_free!35435 (not b_next!36139))))

(declare-fun tp!405733 () Bool)

(declare-fun b_and!96363 () Bool)

(assert (=> b!1431323 (= tp!405733 b_and!96363)))

(declare-fun b_free!35437 () Bool)

(declare-fun b_next!36141 () Bool)

(assert (=> b!1431323 (= b_free!35437 (not b_next!36141))))

(declare-fun tb!75883 () Bool)

(declare-fun t!127067 () Bool)

(assert (=> (and b!1431323 (= (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32)))))))) (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (t!126961 lt!485505)))))) t!127067) tb!75883))

(declare-fun result!92144 () Bool)

(assert (= result!92144 result!92066))

(assert (=> d!411614 t!127067))

(declare-fun t!127069 () Bool)

(declare-fun tb!75885 () Bool)

(assert (=> (and b!1431323 (= (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32)))))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485502)))) t!127069) tb!75885))

(declare-fun result!92146 () Bool)

(assert (= result!92146 result!92086))

(assert (=> d!411770 t!127069))

(declare-fun tb!75887 () Bool)

(declare-fun t!127071 () Bool)

(assert (=> (and b!1431323 (= (toChars!3759 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32)))))))) (toChars!3759 (transformation!2597 (rule!4360 lt!485501)))) t!127071) tb!75887))

(declare-fun result!92148 () Bool)

(assert (= result!92148 result!92090))

(assert (=> d!411772 t!127071))

(declare-fun b_and!96365 () Bool)

(declare-fun tp!405732 () Bool)

(assert (=> b!1431323 (= tp!405732 (and (=> t!127067 result!92144) (=> t!127069 result!92146) (=> t!127071 result!92148) b_and!96365))))

(declare-fun e!913605 () Bool)

(assert (=> b!1430558 (= tp!405613 e!913605)))

(declare-fun e!913604 () Bool)

(declare-fun e!913607 () Bool)

(declare-fun b!1431321 () Bool)

(declare-fun tp!405731 () Bool)

(assert (=> b!1431321 (= e!913607 (and (inv!21 (value!83662 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32))))))) e!913604 tp!405731))))

(declare-fun b!1431320 () Bool)

(declare-fun tp!405730 () Bool)

(assert (=> b!1431320 (= e!913605 (and (inv!19672 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32)))))) e!913607 tp!405730))))

(declare-fun e!913606 () Bool)

(declare-fun tp!405729 () Bool)

(declare-fun b!1431322 () Bool)

(assert (=> b!1431322 (= e!913604 (and tp!405729 (inv!19652 (tag!2859 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32)))))))) (inv!19665 (transformation!2597 (rule!4360 (h!20217 (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32)))))))) e!913606))))

(assert (=> b!1431323 (= e!913606 (and tp!405733 tp!405732))))

(assert (= b!1431322 b!1431323))

(assert (= b!1431321 b!1431322))

(assert (= b!1431320 b!1431321))

(assert (= (and b!1430558 ((_ is Cons!14816) (innerList!5081 (xs!7750 (c!235218 (tokens!1934 other!32)))))) b!1431320))

(declare-fun m!1630785 () Bool)

(assert (=> b!1431321 m!1630785))

(declare-fun m!1630787 () Bool)

(assert (=> b!1431320 m!1630787))

(declare-fun m!1630789 () Bool)

(assert (=> b!1431322 m!1630789))

(declare-fun m!1630791 () Bool)

(assert (=> b!1431322 m!1630791))

(declare-fun tp!405736 () Bool)

(declare-fun e!913609 () Bool)

(declare-fun tp!405734 () Bool)

(declare-fun b!1431324 () Bool)

(assert (=> b!1431324 (= e!913609 (and (inv!19656 (left!12626 (left!12626 (c!235218 (tokens!1934 other!32))))) tp!405734 (inv!19656 (right!12956 (left!12626 (c!235218 (tokens!1934 other!32))))) tp!405736))))

(declare-fun b!1431326 () Bool)

(declare-fun e!913608 () Bool)

(declare-fun tp!405735 () Bool)

(assert (=> b!1431326 (= e!913608 tp!405735)))

(declare-fun b!1431325 () Bool)

(assert (=> b!1431325 (= e!913609 (and (inv!19666 (xs!7750 (left!12626 (c!235218 (tokens!1934 other!32))))) e!913608))))

(assert (=> b!1430556 (= tp!405612 (and (inv!19656 (left!12626 (c!235218 (tokens!1934 other!32)))) e!913609))))

(assert (= (and b!1430556 ((_ is Node!5021) (left!12626 (c!235218 (tokens!1934 other!32))))) b!1431324))

(assert (= b!1431325 b!1431326))

(assert (= (and b!1430556 ((_ is Leaf!7521) (left!12626 (c!235218 (tokens!1934 other!32))))) b!1431325))

(declare-fun m!1630793 () Bool)

(assert (=> b!1431324 m!1630793))

(declare-fun m!1630795 () Bool)

(assert (=> b!1431324 m!1630795))

(declare-fun m!1630797 () Bool)

(assert (=> b!1431325 m!1630797))

(assert (=> b!1430556 m!1629575))

(declare-fun b!1431327 () Bool)

(declare-fun tp!405737 () Bool)

(declare-fun e!913611 () Bool)

(declare-fun tp!405739 () Bool)

(assert (=> b!1431327 (= e!913611 (and (inv!19656 (left!12626 (right!12956 (c!235218 (tokens!1934 other!32))))) tp!405737 (inv!19656 (right!12956 (right!12956 (c!235218 (tokens!1934 other!32))))) tp!405739))))

(declare-fun b!1431329 () Bool)

(declare-fun e!913610 () Bool)

(declare-fun tp!405738 () Bool)

(assert (=> b!1431329 (= e!913610 tp!405738)))

(declare-fun b!1431328 () Bool)

(assert (=> b!1431328 (= e!913611 (and (inv!19666 (xs!7750 (right!12956 (c!235218 (tokens!1934 other!32))))) e!913610))))

(assert (=> b!1430556 (= tp!405614 (and (inv!19656 (right!12956 (c!235218 (tokens!1934 other!32)))) e!913611))))

(assert (= (and b!1430556 ((_ is Node!5021) (right!12956 (c!235218 (tokens!1934 other!32))))) b!1431327))

(assert (= b!1431328 b!1431329))

(assert (= (and b!1430556 ((_ is Leaf!7521) (right!12956 (c!235218 (tokens!1934 other!32))))) b!1431328))

(declare-fun m!1630799 () Bool)

(assert (=> b!1431327 m!1630799))

(declare-fun m!1630801 () Bool)

(assert (=> b!1431327 m!1630801))

(declare-fun m!1630803 () Bool)

(assert (=> b!1431328 m!1630803))

(assert (=> b!1430556 m!1629577))

(declare-fun b!1431332 () Bool)

(declare-fun e!913614 () Bool)

(assert (=> b!1431332 (= e!913614 true)))

(declare-fun b!1431331 () Bool)

(declare-fun e!913613 () Bool)

(assert (=> b!1431331 (= e!913613 e!913614)))

(declare-fun b!1431330 () Bool)

(declare-fun e!913612 () Bool)

(assert (=> b!1431330 (= e!913612 e!913613)))

(assert (=> b!1430454 e!913612))

(assert (= b!1431331 b!1431332))

(assert (= b!1431330 b!1431331))

(assert (= (and b!1430454 ((_ is Cons!14817) (t!126962 (rules!11264 thiss!10022)))) b!1431330))

(assert (=> b!1431332 (< (dynLambda!6760 order!8889 (toValue!3900 (transformation!2597 (h!20218 (t!126962 (rules!11264 thiss!10022)))))) (dynLambda!6761 order!8891 lambda!62743))))

(assert (=> b!1431332 (< (dynLambda!6762 order!8893 (toChars!3759 (transformation!2597 (h!20218 (t!126962 (rules!11264 thiss!10022)))))) (dynLambda!6761 order!8891 lambda!62743))))

(declare-fun b!1431336 () Bool)

(declare-fun e!913615 () Bool)

(declare-fun tp!405743 () Bool)

(declare-fun tp!405742 () Bool)

(assert (=> b!1431336 (= e!913615 (and tp!405743 tp!405742))))

(assert (=> b!1430540 (= tp!405596 e!913615)))

(declare-fun b!1431334 () Bool)

(declare-fun tp!405740 () Bool)

(declare-fun tp!405744 () Bool)

(assert (=> b!1431334 (= e!913615 (and tp!405740 tp!405744))))

(declare-fun b!1431333 () Bool)

(assert (=> b!1431333 (= e!913615 tp_is_empty!6835)))

(declare-fun b!1431335 () Bool)

(declare-fun tp!405741 () Bool)

(assert (=> b!1431335 (= e!913615 tp!405741)))

(assert (= (and b!1430540 ((_ is ElementMatch!3911) (regex!2597 (h!20218 (rules!11264 other!32))))) b!1431333))

(assert (= (and b!1430540 ((_ is Concat!6599) (regex!2597 (h!20218 (rules!11264 other!32))))) b!1431334))

(assert (= (and b!1430540 ((_ is Star!3911) (regex!2597 (h!20218 (rules!11264 other!32))))) b!1431335))

(assert (= (and b!1430540 ((_ is Union!3911) (regex!2597 (h!20218 (rules!11264 other!32))))) b!1431336))

(declare-fun b_lambda!44857 () Bool)

(assert (= b_lambda!44855 (or d!411450 b_lambda!44857)))

(declare-fun bs!340766 () Bool)

(declare-fun d!411884 () Bool)

(assert (= bs!340766 (and d!411884 d!411450)))

(assert (=> bs!340766 (= (dynLambda!6766 lambda!62743 (h!20217 lt!485505)) (rulesProduceIndividualToken!1194 Lexer!2259 (rules!11264 thiss!10022) (h!20217 lt!485505)))))

(assert (=> bs!340766 m!1629329))

(assert (=> b!1431221 d!411884))

(check-sat (not b!1430877) (not d!411766) (not b!1430830) (not d!411740) (not d!411662) (not b!1431328) (not b_next!36103) (not bm!97222) (not d!411624) (not bm!97234) b_and!96307 (not b_lambda!44851) (not b!1430837) (not b!1431298) (not b!1431334) (not b!1430970) (not b!1431076) (not b!1431017) (not b!1430661) (not b!1430841) (not b!1431249) (not b!1431272) (not b!1430870) (not b!1431292) (not b!1431277) (not d!411772) (not d!411660) (not b!1430876) (not b!1431255) (not b!1431013) (not b_next!36141) (not d!411752) (not tb!75817) (not d!411856) (not b!1430871) (not d!411786) (not b!1430879) (not b!1431335) (not b!1431326) (not d!411742) b_and!96303 (not b!1431004) (not b!1431276) (not bm!97226) (not b!1430999) (not b!1431054) (not d!411758) (not b!1430992) (not d!411868) (not d!411656) (not b!1431324) (not b!1430556) (not b!1431038) (not d!411632) (not b!1431066) tp_is_empty!6835 (not d!411614) (not b!1431065) (not b!1431070) (not b!1430946) (not d!411746) (not b!1431330) (not b!1431322) (not d!411738) (not b!1430673) (not b_next!36131) (not b!1431290) (not b!1431051) (not b!1430995) (not d!411622) (not d!411866) (not b!1431019) (not d!411774) (not d!411606) b_and!96353 (not b!1430881) (not d!411630) b_and!96357 (not b!1431069) (not b!1431026) b_and!96359 (not b!1431020) (not b_next!36129) (not b!1431301) (not b!1431008) (not b!1431042) (not bm!97232) (not b!1431268) (not d!411870) (not b!1431014) (not b!1431320) (not d!411728) (not b!1431297) (not b!1431270) (not d!411864) (not b!1430589) (not b!1430825) (not b!1430826) (not b!1431078) (not b!1431023) (not b!1431317) b_and!96361 b_and!96365 (not tb!75833) (not b!1431302) (not b!1430667) (not d!411764) (not b!1430658) (not b!1431242) (not d!411750) (not b!1431002) (not b!1431294) (not b_next!36105) (not d!411522) (not b!1430972) (not b!1431300) (not d!411882) (not b!1430836) (not b!1430811) (not b!1431248) (not d!411720) (not b!1431052) (not b!1431007) (not b_next!36133) b_and!96351 (not b!1431053) (not b_lambda!44841) (not d!411618) (not b!1431016) (not b_lambda!44849) (not b!1431037) (not b!1431314) (not b_next!36127) (not b!1431291) (not b!1431032) (not b!1431316) (not b!1430963) (not b!1430973) (not b!1430840) (not d!411616) (not b!1431244) (not b!1431241) (not b!1430984) (not b!1430943) (not b!1431243) (not d!411852) (not d!411872) (not d!411710) (not d!411848) (not b_next!36135) (not bm!97230) (not b!1430828) (not d!411550) (not b!1430553) (not b!1430997) (not bs!340766) (not d!411736) (not d!411798) (not b!1430996) (not d!411520) b_and!96331 (not b!1430671) (not b!1431321) (not b!1430839) (not b!1430968) (not d!411702) (not b_next!36139) (not d!411782) (not b!1430717) (not b_next!36137) b_and!96363 (not b!1430947) (not d!411620) (not d!411776) (not b!1430666) (not b!1431336) (not b!1430991) (not b!1431001) (not d!411880) (not bm!97225) (not d!411734) (not b!1431009) (not b!1431003) (not b!1431000) (not b!1430844) (not d!411526) (not b!1430827) (not d!411584) (not d!411548) (not b!1430838) (not d!411876) (not b!1431274) (not d!411778) (not b!1430987) (not b!1431028) (not b!1430882) (not d!411770) (not b!1431029) (not b!1430829) (not b_lambda!44857) (not b!1431080) (not b!1430945) (not d!411800) (not b!1431318) (not d!411722) (not b!1431271) (not b!1431315) (not b!1430719) (not d!411608) (not d!411768) (not b!1430975) (not b!1430990) (not b!1430812) (not b!1431022) (not b!1430880) (not b!1431039) (not b!1431325) (not b!1431295) (not d!411748) (not b!1430976) (not b!1430835) (not d!411858) (not b!1430662) b_and!96333 (not b!1431031) (not d!411732) (not d!411874) (not b!1430672) (not d!411760) (not b!1431327) (not b_next!36107) (not d!411726) (not b!1431030) (not b!1431267) (not b_next!36109) (not b!1430657) b_and!96355 (not b!1431275) (not tb!75837) (not d!411626) (not b!1430988) (not b!1431222) (not b!1430878) (not d!411878) (not b!1431299) (not b!1431269) (not bm!97235) (not b!1430994) (not d!411712) (not b!1430993) (not b!1431329) (not b!1431266) (not b!1430715))
(check-sat (not b_next!36103) b_and!96307 (not b_next!36141) b_and!96303 (not b_next!36131) b_and!96353 (not b_next!36105) (not b_next!36127) (not b_next!36135) b_and!96331 b_and!96333 (not b_next!36107) b_and!96357 b_and!96359 (not b_next!36129) b_and!96361 b_and!96365 (not b_next!36133) b_and!96351 (not b_next!36139) (not b_next!36137) b_and!96363 (not b_next!36109) b_and!96355)
