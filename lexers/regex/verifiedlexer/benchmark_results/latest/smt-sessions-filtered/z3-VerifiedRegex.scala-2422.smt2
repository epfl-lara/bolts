; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127138 () Bool)

(assert start!127138)

(declare-fun b!1396192 () Bool)

(declare-fun b_free!33947 () Bool)

(declare-fun b_next!34651 () Bool)

(assert (=> b!1396192 (= b_free!33947 (not b_next!34651))))

(declare-fun tp!397937 () Bool)

(declare-fun b_and!93483 () Bool)

(assert (=> b!1396192 (= tp!397937 b_and!93483)))

(declare-fun b_free!33949 () Bool)

(declare-fun b_next!34653 () Bool)

(assert (=> b!1396192 (= b_free!33949 (not b_next!34653))))

(declare-fun tp!397948 () Bool)

(declare-fun b_and!93485 () Bool)

(assert (=> b!1396192 (= tp!397948 b_and!93485)))

(declare-fun b!1396164 () Bool)

(declare-fun b_free!33951 () Bool)

(declare-fun b_next!34655 () Bool)

(assert (=> b!1396164 (= b_free!33951 (not b_next!34655))))

(declare-fun tp!397942 () Bool)

(declare-fun b_and!93487 () Bool)

(assert (=> b!1396164 (= tp!397942 b_and!93487)))

(declare-fun b_free!33953 () Bool)

(declare-fun b_next!34657 () Bool)

(assert (=> b!1396164 (= b_free!33953 (not b_next!34657))))

(declare-fun tp!397945 () Bool)

(declare-fun b_and!93489 () Bool)

(assert (=> b!1396164 (= tp!397945 b_and!93489)))

(declare-fun b!1396210 () Bool)

(declare-fun b_free!33955 () Bool)

(declare-fun b_next!34659 () Bool)

(assert (=> b!1396210 (= b_free!33955 (not b_next!34659))))

(declare-fun tp!397944 () Bool)

(declare-fun b_and!93491 () Bool)

(assert (=> b!1396210 (= tp!397944 b_and!93491)))

(declare-fun b_free!33957 () Bool)

(declare-fun b_next!34661 () Bool)

(assert (=> b!1396210 (= b_free!33957 (not b_next!34661))))

(declare-fun tp!397947 () Bool)

(declare-fun b_and!93493 () Bool)

(assert (=> b!1396210 (= tp!397947 b_and!93493)))

(declare-fun b!1396165 () Bool)

(assert (=> b!1396165 true))

(assert (=> b!1396165 true))

(declare-fun b!1396167 () Bool)

(assert (=> b!1396167 true))

(declare-fun b!1396175 () Bool)

(assert (=> b!1396175 true))

(declare-fun bs!337920 () Bool)

(declare-fun b!1396178 () Bool)

(assert (= bs!337920 (and b!1396178 b!1396175)))

(declare-fun lambda!60707 () Int)

(declare-fun lambda!60706 () Int)

(assert (=> bs!337920 (not (= lambda!60707 lambda!60706))))

(assert (=> b!1396178 true))

(declare-fun b!1396163 () Bool)

(declare-fun e!891533 () Bool)

(declare-fun e!891553 () Bool)

(declare-fun tp!397946 () Bool)

(assert (=> b!1396163 (= e!891533 (and e!891553 tp!397946))))

(declare-fun e!891557 () Bool)

(assert (=> b!1396164 (= e!891557 (and tp!397942 tp!397945))))

(declare-fun e!891545 () Bool)

(declare-fun e!891546 () Bool)

(assert (=> b!1396165 (= e!891545 (not e!891546))))

(declare-fun res!630716 () Bool)

(assert (=> b!1396165 (=> res!630716 e!891546)))

(declare-fun lambda!60703 () Int)

(declare-fun Exists!917 (Int) Bool)

(assert (=> b!1396165 (= res!630716 (not (Exists!917 lambda!60703)))))

(assert (=> b!1396165 (Exists!917 lambda!60703)))

(declare-datatypes ((Unit!20458 0))(
  ( (Unit!20459) )
))
(declare-fun lt!465028 () Unit!20458)

(declare-datatypes ((C!7824 0))(
  ( (C!7825 (val!4472 Int)) )
))
(declare-datatypes ((Regex!3767 0))(
  ( (ElementMatch!3767 (c!229842 C!7824)) (Concat!6310 (regOne!8046 Regex!3767) (regTwo!8046 Regex!3767)) (EmptyExpr!3767) (Star!3767 (reg!4096 Regex!3767)) (EmptyLang!3767) (Union!3767 (regOne!8047 Regex!3767) (regTwo!8047 Regex!3767)) )
))
(declare-fun lt!465032 () Regex!3767)

(declare-datatypes ((List!14230 0))(
  ( (Nil!14164) (Cons!14164 (h!19565 C!7824) (t!122683 List!14230)) )
))
(declare-fun lt!465030 () List!14230)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!235 (Regex!3767 List!14230) Unit!20458)

(assert (=> b!1396165 (= lt!465028 (lemmaPrefixMatchThenExistsStringThatMatches!235 lt!465032 lt!465030))))

(declare-fun b!1396166 () Bool)

(declare-fun res!630727 () Bool)

(declare-fun e!891535 () Bool)

(assert (=> b!1396166 (=> (not res!630727) (not e!891535))))

(declare-datatypes ((LexerInterface!2148 0))(
  ( (LexerInterfaceExt!2145 (__x!8915 Int)) (Lexer!2146) )
))
(declare-fun thiss!19762 () LexerInterface!2148)

(declare-datatypes ((List!14231 0))(
  ( (Nil!14165) (Cons!14165 (h!19566 (_ BitVec 16)) (t!122684 List!14231)) )
))
(declare-datatypes ((TokenValue!2543 0))(
  ( (FloatLiteralValue!5086 (text!18246 List!14231)) (TokenValueExt!2542 (__x!8916 Int)) (Broken!12715 (value!79517 List!14231)) (Object!2608) (End!2543) (Def!2543) (Underscore!2543) (Match!2543) (Else!2543) (Error!2543) (Case!2543) (If!2543) (Extends!2543) (Abstract!2543) (Class!2543) (Val!2543) (DelimiterValue!5086 (del!2603 List!14231)) (KeywordValue!2549 (value!79518 List!14231)) (CommentValue!5086 (value!79519 List!14231)) (WhitespaceValue!5086 (value!79520 List!14231)) (IndentationValue!2543 (value!79521 List!14231)) (String!16950) (Int32!2543) (Broken!12716 (value!79522 List!14231)) (Boolean!2544) (Unit!20460) (OperatorValue!2546 (op!2603 List!14231)) (IdentifierValue!5086 (value!79523 List!14231)) (IdentifierValue!5087 (value!79524 List!14231)) (WhitespaceValue!5087 (value!79525 List!14231)) (True!5086) (False!5086) (Broken!12717 (value!79526 List!14231)) (Broken!12718 (value!79527 List!14231)) (True!5087) (RightBrace!2543) (RightBracket!2543) (Colon!2543) (Null!2543) (Comma!2543) (LeftBracket!2543) (False!5087) (LeftBrace!2543) (ImaginaryLiteralValue!2543 (text!18247 List!14231)) (StringLiteralValue!7629 (value!79528 List!14231)) (EOFValue!2543 (value!79529 List!14231)) (IdentValue!2543 (value!79530 List!14231)) (DelimiterValue!5087 (value!79531 List!14231)) (DedentValue!2543 (value!79532 List!14231)) (NewLineValue!2543 (value!79533 List!14231)) (IntegerValue!7629 (value!79534 (_ BitVec 32)) (text!18248 List!14231)) (IntegerValue!7630 (value!79535 Int) (text!18249 List!14231)) (Times!2543) (Or!2543) (Equal!2543) (Minus!2543) (Broken!12719 (value!79536 List!14231)) (And!2543) (Div!2543) (LessEqual!2543) (Mod!2543) (Concat!6311) (Not!2543) (Plus!2543) (SpaceValue!2543 (value!79537 List!14231)) (IntegerValue!7631 (value!79538 Int) (text!18250 List!14231)) (StringLiteralValue!7630 (text!18251 List!14231)) (FloatLiteralValue!5087 (text!18252 List!14231)) (BytesLiteralValue!2543 (value!79539 List!14231)) (CommentValue!5087 (value!79540 List!14231)) (StringLiteralValue!7631 (value!79541 List!14231)) (ErrorTokenValue!2543 (msg!2604 List!14231)) )
))
(declare-datatypes ((IArray!9337 0))(
  ( (IArray!9338 (innerList!4726 List!14230)) )
))
(declare-datatypes ((Conc!4666 0))(
  ( (Node!4666 (left!12098 Conc!4666) (right!12428 Conc!4666) (csize!9562 Int) (cheight!4877 Int)) (Leaf!7089 (xs!7393 IArray!9337) (csize!9563 Int)) (Empty!4666) )
))
(declare-datatypes ((BalanceConc!9272 0))(
  ( (BalanceConc!9273 (c!229843 Conc!4666)) )
))
(declare-datatypes ((String!16951 0))(
  ( (String!16952 (value!79542 String)) )
))
(declare-datatypes ((TokenValueInjection!4746 0))(
  ( (TokenValueInjection!4747 (toValue!3744 Int) (toChars!3603 Int)) )
))
(declare-datatypes ((Rule!4706 0))(
  ( (Rule!4707 (regex!2453 Regex!3767) (tag!2715 String!16951) (isSeparator!2453 Bool) (transformation!2453 TokenValueInjection!4746)) )
))
(declare-datatypes ((List!14232 0))(
  ( (Nil!14166) (Cons!14166 (h!19567 Rule!4706) (t!122685 List!14232)) )
))
(declare-fun rules!2550 () List!14232)

(declare-datatypes ((Token!4568 0))(
  ( (Token!4569 (value!79543 TokenValue!2543) (rule!4216 Rule!4706) (size!11653 Int) (originalCharacters!3315 List!14230)) )
))
(declare-fun t2!34 () Token!4568)

(declare-fun rulesProduceIndividualToken!1117 (LexerInterface!2148 List!14232 Token!4568) Bool)

(assert (=> b!1396166 (= res!630727 (rulesProduceIndividualToken!1117 thiss!19762 rules!2550 t2!34))))

(declare-fun e!891544 () Bool)

(declare-fun e!891547 () Bool)

(assert (=> b!1396167 (= e!891544 e!891547)))

(declare-fun res!630711 () Bool)

(assert (=> b!1396167 (=> res!630711 e!891547)))

(declare-fun lambda!60705 () Int)

(declare-fun lambda!60704 () Int)

(declare-datatypes ((List!14233 0))(
  ( (Nil!14167) (Cons!14167 (h!19568 Regex!3767) (t!122686 List!14233)) )
))
(declare-fun exists!550 (List!14233 Int) Bool)

(declare-fun map!3140 (List!14232 Int) List!14233)

(assert (=> b!1396167 (= res!630711 (not (exists!550 (map!3140 rules!2550 lambda!60704) lambda!60705)))))

(declare-fun lt!465019 () List!14233)

(assert (=> b!1396167 (exists!550 lt!465019 lambda!60705)))

(declare-fun lt!465012 () Unit!20458)

(declare-fun lt!465014 () List!14230)

(declare-fun matchRGenUnionSpec!178 (Regex!3767 List!14233 List!14230) Unit!20458)

(assert (=> b!1396167 (= lt!465012 (matchRGenUnionSpec!178 lt!465032 lt!465019 lt!465014))))

(assert (=> b!1396167 (= lt!465019 (map!3140 rules!2550 lambda!60704))))

(declare-fun b!1396168 () Bool)

(declare-fun e!891549 () Unit!20458)

(declare-fun Unit!20461 () Unit!20458)

(assert (=> b!1396168 (= e!891549 Unit!20461)))

(declare-fun b!1396169 () Bool)

(declare-fun e!891550 () Bool)

(declare-fun e!891558 () Bool)

(assert (=> b!1396169 (= e!891550 e!891558)))

(declare-fun res!630729 () Bool)

(assert (=> b!1396169 (=> res!630729 e!891558)))

(declare-fun lt!465015 () Bool)

(assert (=> b!1396169 (= res!630729 lt!465015)))

(declare-fun lt!465021 () Unit!20458)

(assert (=> b!1396169 (= lt!465021 e!891549)))

(declare-fun c!229840 () Bool)

(assert (=> b!1396169 (= c!229840 lt!465015)))

(declare-fun lt!465040 () C!7824)

(declare-fun contains!2741 (List!14230 C!7824) Bool)

(declare-fun usedCharacters!264 (Regex!3767) List!14230)

(assert (=> b!1396169 (= lt!465015 (not (contains!2741 (usedCharacters!264 (regex!2453 (rule!4216 t2!34))) lt!465040)))))

(declare-fun b!1396170 () Bool)

(declare-fun res!630712 () Bool)

(declare-fun e!891541 () Bool)

(assert (=> b!1396170 (=> res!630712 e!891541)))

(declare-datatypes ((List!14234 0))(
  ( (Nil!14168) (Cons!14168 (h!19569 Token!4568) (t!122687 List!14234)) )
))
(declare-fun lt!465010 () List!14234)

(declare-fun lt!465013 () BalanceConc!9272)

(declare-datatypes ((tuple2!13778 0))(
  ( (tuple2!13779 (_1!7775 List!14234) (_2!7775 List!14230)) )
))
(declare-fun lexList!662 (LexerInterface!2148 List!14232 List!14230) tuple2!13778)

(declare-fun list!5513 (BalanceConc!9272) List!14230)

(assert (=> b!1396170 (= res!630712 (not (= (lexList!662 thiss!19762 rules!2550 (list!5513 lt!465013)) (tuple2!13779 lt!465010 Nil!14164))))))

(declare-fun b!1396171 () Bool)

(declare-fun e!891537 () Bool)

(assert (=> b!1396171 (= e!891547 e!891537)))

(declare-fun res!630704 () Bool)

(assert (=> b!1396171 (=> res!630704 e!891537)))

(declare-fun lt!465022 () Regex!3767)

(declare-fun contains!2742 (List!14233 Regex!3767) Bool)

(assert (=> b!1396171 (= res!630704 (not (contains!2742 (map!3140 rules!2550 lambda!60704) lt!465022)))))

(declare-fun getWitness!438 (List!14233 Int) Regex!3767)

(assert (=> b!1396171 (= lt!465022 (getWitness!438 (map!3140 rules!2550 lambda!60704) lambda!60705))))

(declare-fun res!630713 () Bool)

(assert (=> start!127138 (=> (not res!630713) (not e!891535))))

(get-info :version)

(assert (=> start!127138 (= res!630713 ((_ is Lexer!2146) thiss!19762))))

(assert (=> start!127138 e!891535))

(assert (=> start!127138 true))

(assert (=> start!127138 e!891533))

(declare-fun t1!34 () Token!4568)

(declare-fun e!891542 () Bool)

(declare-fun inv!18496 (Token!4568) Bool)

(assert (=> start!127138 (and (inv!18496 t1!34) e!891542)))

(declare-fun e!891540 () Bool)

(assert (=> start!127138 (and (inv!18496 t2!34) e!891540)))

(declare-fun b!1396172 () Bool)

(declare-fun res!630726 () Bool)

(declare-fun e!891554 () Bool)

(assert (=> b!1396172 (=> res!630726 e!891554)))

(declare-fun lt!465023 () List!14230)

(declare-fun matchR!1758 (Regex!3767 List!14230) Bool)

(assert (=> b!1396172 (= res!630726 (not (matchR!1758 (regex!2453 (rule!4216 t2!34)) lt!465023)))))

(declare-fun b!1396173 () Bool)

(declare-fun res!630730 () Bool)

(declare-fun e!891552 () Bool)

(assert (=> b!1396173 (=> res!630730 e!891552)))

(declare-fun lt!465029 () Rule!4706)

(declare-fun contains!2743 (List!14232 Rule!4706) Bool)

(assert (=> b!1396173 (= res!630730 (not (contains!2743 rules!2550 lt!465029)))))

(declare-fun b!1396174 () Bool)

(declare-fun res!630719 () Bool)

(declare-fun e!891543 () Bool)

(assert (=> b!1396174 (=> (not res!630719) (not e!891543))))

(declare-fun sepAndNonSepRulesDisjointChars!826 (List!14232 List!14232) Bool)

(assert (=> b!1396174 (= res!630719 (sepAndNonSepRulesDisjointChars!826 rules!2550 rules!2550))))

(declare-fun e!891559 () Bool)

(assert (=> b!1396175 (= e!891537 e!891559)))

(declare-fun res!630709 () Bool)

(assert (=> b!1396175 (=> res!630709 e!891559)))

(declare-fun exists!551 (List!14232 Int) Bool)

(assert (=> b!1396175 (= res!630709 (not (exists!551 rules!2550 lambda!60706)))))

(assert (=> b!1396175 (exists!551 rules!2550 lambda!60706)))

(declare-fun lt!465017 () Unit!20458)

(declare-fun lemmaMapContains!164 (List!14232 Int Regex!3767) Unit!20458)

(assert (=> b!1396175 (= lt!465017 (lemmaMapContains!164 rules!2550 lambda!60704 lt!465022))))

(declare-fun b!1396176 () Bool)

(declare-fun e!891551 () Bool)

(assert (=> b!1396176 (= e!891551 e!891541)))

(declare-fun res!630701 () Bool)

(assert (=> b!1396176 (=> res!630701 e!891541)))

(declare-datatypes ((IArray!9339 0))(
  ( (IArray!9340 (innerList!4727 List!14234)) )
))
(declare-datatypes ((Conc!4667 0))(
  ( (Node!4667 (left!12099 Conc!4667) (right!12429 Conc!4667) (csize!9564 Int) (cheight!4878 Int)) (Leaf!7090 (xs!7394 IArray!9339) (csize!9565 Int)) (Empty!4667) )
))
(declare-datatypes ((BalanceConc!9274 0))(
  ( (BalanceConc!9275 (c!229844 Conc!4667)) )
))
(declare-datatypes ((tuple2!13780 0))(
  ( (tuple2!13781 (_1!7776 BalanceConc!9274) (_2!7776 BalanceConc!9272)) )
))
(declare-fun lt!465034 () tuple2!13780)

(declare-fun list!5514 (BalanceConc!9274) List!14234)

(assert (=> b!1396176 (= res!630701 (not (= (list!5514 (_1!7776 lt!465034)) lt!465010)))))

(assert (=> b!1396176 (= lt!465010 (Cons!14168 t2!34 Nil!14168))))

(declare-fun lex!973 (LexerInterface!2148 List!14232 BalanceConc!9272) tuple2!13780)

(assert (=> b!1396176 (= lt!465034 (lex!973 thiss!19762 rules!2550 lt!465013))))

(declare-fun print!912 (LexerInterface!2148 BalanceConc!9274) BalanceConc!9272)

(declare-fun singletonSeq!1108 (Token!4568) BalanceConc!9274)

(assert (=> b!1396176 (= lt!465013 (print!912 thiss!19762 (singletonSeq!1108 t2!34)))))

(declare-fun b!1396177 () Bool)

(declare-fun res!630700 () Bool)

(assert (=> b!1396177 (=> res!630700 e!891544)))

(assert (=> b!1396177 (= res!630700 (not (matchR!1758 lt!465032 lt!465014)))))

(assert (=> b!1396178 (= e!891552 e!891554)))

(declare-fun res!630705 () Bool)

(assert (=> b!1396178 (=> res!630705 e!891554)))

(declare-fun lt!465020 () List!14230)

(assert (=> b!1396178 (= res!630705 (not (matchR!1758 (regex!2453 (rule!4216 t1!34)) lt!465020)))))

(declare-fun lt!465011 () Unit!20458)

(declare-fun forallContained!648 (List!14232 Int Rule!4706) Unit!20458)

(assert (=> b!1396178 (= lt!465011 (forallContained!648 rules!2550 lambda!60707 (rule!4216 t2!34)))))

(declare-fun lt!465038 () Unit!20458)

(assert (=> b!1396178 (= lt!465038 (forallContained!648 rules!2550 lambda!60707 (rule!4216 t1!34)))))

(declare-fun lt!465035 () Unit!20458)

(assert (=> b!1396178 (= lt!465035 (forallContained!648 rules!2550 lambda!60707 lt!465029))))

(declare-fun b!1396179 () Bool)

(declare-fun res!630724 () Bool)

(assert (=> b!1396179 (=> res!630724 e!891551)))

(declare-fun lt!465018 () tuple2!13780)

(declare-fun isEmpty!8600 (BalanceConc!9272) Bool)

(assert (=> b!1396179 (= res!630724 (not (isEmpty!8600 (_2!7776 lt!465018))))))

(declare-fun b!1396180 () Bool)

(declare-fun res!630725 () Bool)

(assert (=> b!1396180 (=> (not res!630725) (not e!891535))))

(assert (=> b!1396180 (= res!630725 (not (= (isSeparator!2453 (rule!4216 t1!34)) (isSeparator!2453 (rule!4216 t2!34)))))))

(declare-fun b!1396181 () Bool)

(declare-fun res!630703 () Bool)

(assert (=> b!1396181 (=> (not res!630703) (not e!891535))))

(declare-fun rulesInvariant!2018 (LexerInterface!2148 List!14232) Bool)

(assert (=> b!1396181 (= res!630703 (rulesInvariant!2018 thiss!19762 rules!2550))))

(declare-fun e!891556 () Bool)

(declare-fun tp!397938 () Bool)

(declare-fun b!1396182 () Bool)

(declare-fun inv!21 (TokenValue!2543) Bool)

(assert (=> b!1396182 (= e!891540 (and (inv!21 (value!79543 t2!34)) e!891556 tp!397938))))

(declare-fun b!1396183 () Bool)

(declare-fun e!891529 () Bool)

(assert (=> b!1396183 (= e!891546 e!891529)))

(declare-fun res!630714 () Bool)

(assert (=> b!1396183 (=> res!630714 e!891529)))

(declare-fun ++!3684 (List!14230 List!14230) List!14230)

(declare-fun getSuffix!613 (List!14230 List!14230) List!14230)

(assert (=> b!1396183 (= res!630714 (not (= lt!465014 (++!3684 lt!465030 (getSuffix!613 lt!465014 lt!465030)))))))

(declare-fun pickWitness!220 (Int) List!14230)

(assert (=> b!1396183 (= lt!465014 (pickWitness!220 lambda!60703))))

(declare-fun b!1396184 () Bool)

(declare-fun res!630722 () Bool)

(assert (=> b!1396184 (=> (not res!630722) (not e!891543))))

(declare-fun separableTokensPredicate!431 (LexerInterface!2148 Token!4568 Token!4568 List!14232) Bool)

(assert (=> b!1396184 (= res!630722 (not (separableTokensPredicate!431 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun tp!397941 () Bool)

(declare-fun b!1396185 () Bool)

(declare-fun e!891532 () Bool)

(assert (=> b!1396185 (= e!891542 (and (inv!21 (value!79543 t1!34)) e!891532 tp!397941))))

(declare-fun b!1396186 () Bool)

(declare-fun res!630720 () Bool)

(assert (=> b!1396186 (=> res!630720 e!891551)))

(assert (=> b!1396186 (= res!630720 (not (contains!2743 rules!2550 (rule!4216 t1!34))))))

(declare-fun b!1396187 () Bool)

(declare-fun res!630710 () Bool)

(assert (=> b!1396187 (=> res!630710 e!891552)))

(assert (=> b!1396187 (= res!630710 (not (contains!2743 rules!2550 (rule!4216 t2!34))))))

(declare-fun b!1396188 () Bool)

(declare-fun res!630718 () Bool)

(assert (=> b!1396188 (=> res!630718 e!891544)))

(declare-fun lt!465039 () C!7824)

(assert (=> b!1396188 (= res!630718 (not (contains!2741 lt!465014 lt!465039)))))

(declare-fun b!1396189 () Bool)

(declare-fun e!891555 () Bool)

(assert (=> b!1396189 (= e!891558 e!891555)))

(declare-fun res!630708 () Bool)

(assert (=> b!1396189 (=> res!630708 e!891555)))

(assert (=> b!1396189 (= res!630708 (or (not (isSeparator!2453 lt!465029)) (not (isSeparator!2453 (rule!4216 t1!34)))))))

(assert (=> b!1396189 (= (regex!2453 lt!465029) lt!465022)))

(declare-fun tp!397940 () Bool)

(declare-fun e!891560 () Bool)

(declare-fun b!1396190 () Bool)

(declare-fun inv!18493 (String!16951) Bool)

(declare-fun inv!18497 (TokenValueInjection!4746) Bool)

(assert (=> b!1396190 (= e!891532 (and tp!397940 (inv!18493 (tag!2715 (rule!4216 t1!34))) (inv!18497 (transformation!2453 (rule!4216 t1!34))) e!891560))))

(declare-fun b!1396191 () Bool)

(declare-fun e!891539 () Unit!20458)

(declare-fun Unit!20462 () Unit!20458)

(assert (=> b!1396191 (= e!891539 Unit!20462)))

(declare-fun e!891534 () Bool)

(assert (=> b!1396192 (= e!891534 (and tp!397937 tp!397948))))

(declare-fun b!1396193 () Bool)

(assert (=> b!1396193 (= e!891529 e!891544)))

(declare-fun res!630706 () Bool)

(assert (=> b!1396193 (=> res!630706 e!891544)))

(assert (=> b!1396193 (= res!630706 (not (contains!2741 lt!465030 lt!465039)))))

(declare-fun lt!465025 () BalanceConc!9272)

(declare-fun apply!3589 (BalanceConc!9272 Int) C!7824)

(assert (=> b!1396193 (= lt!465039 (apply!3589 lt!465025 0))))

(declare-fun tp!397939 () Bool)

(declare-fun b!1396194 () Bool)

(assert (=> b!1396194 (= e!891553 (and tp!397939 (inv!18493 (tag!2715 (h!19567 rules!2550))) (inv!18497 (transformation!2453 (h!19567 rules!2550))) e!891557))))

(declare-fun b!1396195 () Bool)

(declare-fun res!630732 () Bool)

(assert (=> b!1396195 (=> (not res!630732) (not e!891535))))

(declare-fun isEmpty!8601 (List!14232) Bool)

(assert (=> b!1396195 (= res!630732 (not (isEmpty!8601 rules!2550)))))

(declare-fun b!1396196 () Bool)

(declare-fun res!630734 () Bool)

(assert (=> b!1396196 (=> res!630734 e!891544)))

(assert (=> b!1396196 (= res!630734 (not (contains!2741 lt!465030 lt!465040)))))

(declare-fun b!1396197 () Bool)

(assert (=> b!1396197 (= e!891535 e!891543)))

(declare-fun res!630699 () Bool)

(assert (=> b!1396197 (=> (not res!630699) (not e!891543))))

(declare-fun lt!465026 () BalanceConc!9272)

(declare-fun size!11654 (BalanceConc!9272) Int)

(assert (=> b!1396197 (= res!630699 (> (size!11654 lt!465026) 0))))

(declare-fun charsOf!1425 (Token!4568) BalanceConc!9272)

(assert (=> b!1396197 (= lt!465026 (charsOf!1425 t2!34))))

(declare-fun b!1396198 () Bool)

(declare-fun res!630715 () Bool)

(assert (=> b!1396198 (=> res!630715 e!891544)))

(assert (=> b!1396198 (= res!630715 (not (contains!2741 lt!465014 lt!465040)))))

(declare-fun b!1396199 () Bool)

(assert (=> b!1396199 (= e!891543 e!891545)))

(declare-fun res!630731 () Bool)

(assert (=> b!1396199 (=> (not res!630731) (not e!891545))))

(declare-fun prefixMatch!276 (Regex!3767 List!14230) Bool)

(assert (=> b!1396199 (= res!630731 (prefixMatch!276 lt!465032 lt!465030))))

(declare-fun rulesRegex!336 (LexerInterface!2148 List!14232) Regex!3767)

(assert (=> b!1396199 (= lt!465032 (rulesRegex!336 thiss!19762 rules!2550))))

(assert (=> b!1396199 (= lt!465030 (++!3684 lt!465020 (Cons!14164 lt!465040 Nil!14164)))))

(assert (=> b!1396199 (= lt!465040 (apply!3589 lt!465026 0))))

(assert (=> b!1396199 (= lt!465020 (list!5513 lt!465025))))

(assert (=> b!1396199 (= lt!465025 (charsOf!1425 t1!34))))

(declare-fun b!1396200 () Bool)

(assert (=> b!1396200 (= e!891555 true)))

(assert (=> b!1396200 (not (contains!2741 (usedCharacters!264 (regex!2453 lt!465029)) lt!465040))))

(declare-fun lt!465033 () Unit!20458)

(declare-fun lemmaSepRuleNotContainsCharContainedInANonSepRule!126 (LexerInterface!2148 List!14232 List!14232 Rule!4706 Rule!4706 C!7824) Unit!20458)

(assert (=> b!1396200 (= lt!465033 (lemmaSepRuleNotContainsCharContainedInANonSepRule!126 thiss!19762 rules!2550 rules!2550 (rule!4216 t2!34) lt!465029 lt!465040))))

(declare-fun b!1396201 () Bool)

(declare-fun res!630723 () Bool)

(assert (=> b!1396201 (=> res!630723 e!891541)))

(assert (=> b!1396201 (= res!630723 (not (isEmpty!8600 (_2!7776 lt!465034))))))

(declare-fun b!1396202 () Bool)

(declare-fun Unit!20463 () Unit!20458)

(assert (=> b!1396202 (= e!891539 Unit!20463)))

(declare-fun lt!465037 () Unit!20458)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!198 (Regex!3767 List!14230 C!7824) Unit!20458)

(declare-fun head!2567 (List!14230) C!7824)

(assert (=> b!1396202 (= lt!465037 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!198 (regex!2453 (rule!4216 t1!34)) lt!465020 (head!2567 lt!465020)))))

(assert (=> b!1396202 false))

(declare-fun b!1396203 () Bool)

(assert (=> b!1396203 (= e!891554 e!891550)))

(declare-fun res!630702 () Bool)

(assert (=> b!1396203 (=> res!630702 e!891550)))

(declare-fun lt!465024 () Bool)

(assert (=> b!1396203 (= res!630702 lt!465024)))

(declare-fun lt!465031 () Unit!20458)

(assert (=> b!1396203 (= lt!465031 e!891539)))

(declare-fun c!229841 () Bool)

(assert (=> b!1396203 (= c!229841 lt!465024)))

(assert (=> b!1396203 (= lt!465024 (not (contains!2741 (usedCharacters!264 (regex!2453 (rule!4216 t1!34))) lt!465039)))))

(declare-fun tp!397943 () Bool)

(declare-fun b!1396204 () Bool)

(assert (=> b!1396204 (= e!891556 (and tp!397943 (inv!18493 (tag!2715 (rule!4216 t2!34))) (inv!18497 (transformation!2453 (rule!4216 t2!34))) e!891534))))

(declare-fun b!1396205 () Bool)

(assert (=> b!1396205 (= e!891559 e!891551)))

(declare-fun res!630717 () Bool)

(assert (=> b!1396205 (=> res!630717 e!891551)))

(declare-fun lt!465016 () List!14234)

(assert (=> b!1396205 (= res!630717 (not (= (list!5514 (_1!7776 lt!465018)) lt!465016)))))

(assert (=> b!1396205 (= lt!465016 (Cons!14168 t1!34 Nil!14168))))

(declare-fun lt!465027 () BalanceConc!9272)

(assert (=> b!1396205 (= lt!465018 (lex!973 thiss!19762 rules!2550 lt!465027))))

(assert (=> b!1396205 (= lt!465027 (print!912 thiss!19762 (singletonSeq!1108 t1!34)))))

(declare-fun getWitness!439 (List!14232 Int) Rule!4706)

(assert (=> b!1396205 (= lt!465029 (getWitness!439 rules!2550 lambda!60706))))

(declare-fun b!1396206 () Bool)

(declare-fun res!630728 () Bool)

(assert (=> b!1396206 (=> res!630728 e!891551)))

(assert (=> b!1396206 (= res!630728 (not (= (lexList!662 thiss!19762 rules!2550 (list!5513 lt!465027)) (tuple2!13779 lt!465016 Nil!14164))))))

(declare-fun b!1396207 () Bool)

(declare-fun Unit!20464 () Unit!20458)

(assert (=> b!1396207 (= e!891549 Unit!20464)))

(declare-fun lt!465036 () Unit!20458)

(assert (=> b!1396207 (= lt!465036 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!198 (regex!2453 (rule!4216 t2!34)) lt!465023 (head!2567 lt!465023)))))

(assert (=> b!1396207 false))

(declare-fun b!1396208 () Bool)

(assert (=> b!1396208 (= e!891541 e!891552)))

(declare-fun res!630721 () Bool)

(assert (=> b!1396208 (=> res!630721 e!891552)))

(declare-datatypes ((tuple2!13782 0))(
  ( (tuple2!13783 (_1!7777 Token!4568) (_2!7777 List!14230)) )
))
(declare-datatypes ((Option!2716 0))(
  ( (None!2715) (Some!2715 (v!21627 tuple2!13782)) )
))
(declare-fun maxPrefix!1122 (LexerInterface!2148 List!14232 List!14230) Option!2716)

(assert (=> b!1396208 (= res!630721 (not (= (maxPrefix!1122 thiss!19762 rules!2550 lt!465023) (Some!2715 (tuple2!13783 t2!34 Nil!14164)))))))

(assert (=> b!1396208 (= lt!465023 (list!5513 lt!465026))))

(declare-fun b!1396209 () Bool)

(declare-fun res!630707 () Bool)

(assert (=> b!1396209 (=> (not res!630707) (not e!891535))))

(assert (=> b!1396209 (= res!630707 (rulesProduceIndividualToken!1117 thiss!19762 rules!2550 t1!34))))

(assert (=> b!1396210 (= e!891560 (and tp!397944 tp!397947))))

(declare-fun b!1396211 () Bool)

(declare-fun res!630733 () Bool)

(assert (=> b!1396211 (=> res!630733 e!891551)))

(assert (=> b!1396211 (= res!630733 (not (= (maxPrefix!1122 thiss!19762 rules!2550 lt!465020) (Some!2715 (tuple2!13783 t1!34 Nil!14164)))))))

(assert (= (and start!127138 res!630713) b!1396195))

(assert (= (and b!1396195 res!630732) b!1396181))

(assert (= (and b!1396181 res!630703) b!1396209))

(assert (= (and b!1396209 res!630707) b!1396166))

(assert (= (and b!1396166 res!630727) b!1396180))

(assert (= (and b!1396180 res!630725) b!1396197))

(assert (= (and b!1396197 res!630699) b!1396174))

(assert (= (and b!1396174 res!630719) b!1396184))

(assert (= (and b!1396184 res!630722) b!1396199))

(assert (= (and b!1396199 res!630731) b!1396165))

(assert (= (and b!1396165 (not res!630716)) b!1396183))

(assert (= (and b!1396183 (not res!630714)) b!1396193))

(assert (= (and b!1396193 (not res!630706)) b!1396188))

(assert (= (and b!1396188 (not res!630718)) b!1396196))

(assert (= (and b!1396196 (not res!630734)) b!1396198))

(assert (= (and b!1396198 (not res!630715)) b!1396177))

(assert (= (and b!1396177 (not res!630700)) b!1396167))

(assert (= (and b!1396167 (not res!630711)) b!1396171))

(assert (= (and b!1396171 (not res!630704)) b!1396175))

(assert (= (and b!1396175 (not res!630709)) b!1396205))

(assert (= (and b!1396205 (not res!630717)) b!1396179))

(assert (= (and b!1396179 (not res!630724)) b!1396206))

(assert (= (and b!1396206 (not res!630728)) b!1396211))

(assert (= (and b!1396211 (not res!630733)) b!1396186))

(assert (= (and b!1396186 (not res!630720)) b!1396176))

(assert (= (and b!1396176 (not res!630701)) b!1396201))

(assert (= (and b!1396201 (not res!630723)) b!1396170))

(assert (= (and b!1396170 (not res!630712)) b!1396208))

(assert (= (and b!1396208 (not res!630721)) b!1396187))

(assert (= (and b!1396187 (not res!630710)) b!1396173))

(assert (= (and b!1396173 (not res!630730)) b!1396178))

(assert (= (and b!1396178 (not res!630705)) b!1396172))

(assert (= (and b!1396172 (not res!630726)) b!1396203))

(assert (= (and b!1396203 c!229841) b!1396202))

(assert (= (and b!1396203 (not c!229841)) b!1396191))

(assert (= (and b!1396203 (not res!630702)) b!1396169))

(assert (= (and b!1396169 c!229840) b!1396207))

(assert (= (and b!1396169 (not c!229840)) b!1396168))

(assert (= (and b!1396169 (not res!630729)) b!1396189))

(assert (= (and b!1396189 (not res!630708)) b!1396200))

(assert (= b!1396194 b!1396164))

(assert (= b!1396163 b!1396194))

(assert (= (and start!127138 ((_ is Cons!14166) rules!2550)) b!1396163))

(assert (= b!1396190 b!1396210))

(assert (= b!1396185 b!1396190))

(assert (= start!127138 b!1396185))

(assert (= b!1396204 b!1396192))

(assert (= b!1396182 b!1396204))

(assert (= start!127138 b!1396182))

(declare-fun m!1572607 () Bool)

(assert (=> b!1396174 m!1572607))

(declare-fun m!1572609 () Bool)

(assert (=> b!1396183 m!1572609))

(assert (=> b!1396183 m!1572609))

(declare-fun m!1572611 () Bool)

(assert (=> b!1396183 m!1572611))

(declare-fun m!1572613 () Bool)

(assert (=> b!1396183 m!1572613))

(declare-fun m!1572615 () Bool)

(assert (=> b!1396197 m!1572615))

(declare-fun m!1572617 () Bool)

(assert (=> b!1396197 m!1572617))

(declare-fun m!1572619 () Bool)

(assert (=> b!1396204 m!1572619))

(declare-fun m!1572621 () Bool)

(assert (=> b!1396204 m!1572621))

(declare-fun m!1572623 () Bool)

(assert (=> b!1396190 m!1572623))

(declare-fun m!1572625 () Bool)

(assert (=> b!1396190 m!1572625))

(declare-fun m!1572627 () Bool)

(assert (=> b!1396206 m!1572627))

(assert (=> b!1396206 m!1572627))

(declare-fun m!1572629 () Bool)

(assert (=> b!1396206 m!1572629))

(declare-fun m!1572631 () Bool)

(assert (=> b!1396205 m!1572631))

(declare-fun m!1572633 () Bool)

(assert (=> b!1396205 m!1572633))

(declare-fun m!1572635 () Bool)

(assert (=> b!1396205 m!1572635))

(declare-fun m!1572637 () Bool)

(assert (=> b!1396205 m!1572637))

(declare-fun m!1572639 () Bool)

(assert (=> b!1396205 m!1572639))

(assert (=> b!1396205 m!1572635))

(declare-fun m!1572641 () Bool)

(assert (=> b!1396201 m!1572641))

(declare-fun m!1572643 () Bool)

(assert (=> b!1396200 m!1572643))

(assert (=> b!1396200 m!1572643))

(declare-fun m!1572645 () Bool)

(assert (=> b!1396200 m!1572645))

(declare-fun m!1572647 () Bool)

(assert (=> b!1396200 m!1572647))

(declare-fun m!1572649 () Bool)

(assert (=> b!1396178 m!1572649))

(declare-fun m!1572651 () Bool)

(assert (=> b!1396178 m!1572651))

(declare-fun m!1572653 () Bool)

(assert (=> b!1396178 m!1572653))

(declare-fun m!1572655 () Bool)

(assert (=> b!1396178 m!1572655))

(declare-fun m!1572657 () Bool)

(assert (=> b!1396184 m!1572657))

(declare-fun m!1572659 () Bool)

(assert (=> b!1396179 m!1572659))

(declare-fun m!1572661 () Bool)

(assert (=> b!1396171 m!1572661))

(assert (=> b!1396171 m!1572661))

(declare-fun m!1572663 () Bool)

(assert (=> b!1396171 m!1572663))

(assert (=> b!1396171 m!1572661))

(assert (=> b!1396171 m!1572661))

(declare-fun m!1572665 () Bool)

(assert (=> b!1396171 m!1572665))

(declare-fun m!1572667 () Bool)

(assert (=> b!1396170 m!1572667))

(assert (=> b!1396170 m!1572667))

(declare-fun m!1572669 () Bool)

(assert (=> b!1396170 m!1572669))

(declare-fun m!1572671 () Bool)

(assert (=> b!1396198 m!1572671))

(declare-fun m!1572673 () Bool)

(assert (=> b!1396209 m!1572673))

(declare-fun m!1572675 () Bool)

(assert (=> b!1396211 m!1572675))

(declare-fun m!1572677 () Bool)

(assert (=> b!1396176 m!1572677))

(declare-fun m!1572679 () Bool)

(assert (=> b!1396176 m!1572679))

(declare-fun m!1572681 () Bool)

(assert (=> b!1396176 m!1572681))

(assert (=> b!1396176 m!1572681))

(declare-fun m!1572683 () Bool)

(assert (=> b!1396176 m!1572683))

(declare-fun m!1572685 () Bool)

(assert (=> b!1396203 m!1572685))

(assert (=> b!1396203 m!1572685))

(declare-fun m!1572687 () Bool)

(assert (=> b!1396203 m!1572687))

(declare-fun m!1572689 () Bool)

(assert (=> b!1396182 m!1572689))

(declare-fun m!1572691 () Bool)

(assert (=> b!1396187 m!1572691))

(declare-fun m!1572693 () Bool)

(assert (=> b!1396186 m!1572693))

(declare-fun m!1572695 () Bool)

(assert (=> b!1396194 m!1572695))

(declare-fun m!1572697 () Bool)

(assert (=> b!1396194 m!1572697))

(declare-fun m!1572699 () Bool)

(assert (=> b!1396173 m!1572699))

(assert (=> b!1396167 m!1572661))

(assert (=> b!1396167 m!1572661))

(declare-fun m!1572701 () Bool)

(assert (=> b!1396167 m!1572701))

(declare-fun m!1572703 () Bool)

(assert (=> b!1396167 m!1572703))

(assert (=> b!1396167 m!1572661))

(declare-fun m!1572705 () Bool)

(assert (=> b!1396167 m!1572705))

(declare-fun m!1572707 () Bool)

(assert (=> b!1396207 m!1572707))

(assert (=> b!1396207 m!1572707))

(declare-fun m!1572709 () Bool)

(assert (=> b!1396207 m!1572709))

(declare-fun m!1572711 () Bool)

(assert (=> b!1396169 m!1572711))

(assert (=> b!1396169 m!1572711))

(declare-fun m!1572713 () Bool)

(assert (=> b!1396169 m!1572713))

(declare-fun m!1572715 () Bool)

(assert (=> b!1396175 m!1572715))

(assert (=> b!1396175 m!1572715))

(declare-fun m!1572717 () Bool)

(assert (=> b!1396175 m!1572717))

(declare-fun m!1572719 () Bool)

(assert (=> b!1396199 m!1572719))

(declare-fun m!1572721 () Bool)

(assert (=> b!1396199 m!1572721))

(declare-fun m!1572723 () Bool)

(assert (=> b!1396199 m!1572723))

(declare-fun m!1572725 () Bool)

(assert (=> b!1396199 m!1572725))

(declare-fun m!1572727 () Bool)

(assert (=> b!1396199 m!1572727))

(declare-fun m!1572729 () Bool)

(assert (=> b!1396199 m!1572729))

(declare-fun m!1572731 () Bool)

(assert (=> b!1396193 m!1572731))

(declare-fun m!1572733 () Bool)

(assert (=> b!1396193 m!1572733))

(declare-fun m!1572735 () Bool)

(assert (=> b!1396188 m!1572735))

(declare-fun m!1572737 () Bool)

(assert (=> b!1396181 m!1572737))

(declare-fun m!1572739 () Bool)

(assert (=> b!1396196 m!1572739))

(declare-fun m!1572741 () Bool)

(assert (=> b!1396208 m!1572741))

(declare-fun m!1572743 () Bool)

(assert (=> b!1396208 m!1572743))

(declare-fun m!1572745 () Bool)

(assert (=> b!1396185 m!1572745))

(declare-fun m!1572747 () Bool)

(assert (=> b!1396195 m!1572747))

(declare-fun m!1572749 () Bool)

(assert (=> b!1396166 m!1572749))

(declare-fun m!1572751 () Bool)

(assert (=> b!1396177 m!1572751))

(declare-fun m!1572753 () Bool)

(assert (=> b!1396165 m!1572753))

(assert (=> b!1396165 m!1572753))

(declare-fun m!1572755 () Bool)

(assert (=> b!1396165 m!1572755))

(declare-fun m!1572757 () Bool)

(assert (=> start!127138 m!1572757))

(declare-fun m!1572759 () Bool)

(assert (=> start!127138 m!1572759))

(declare-fun m!1572761 () Bool)

(assert (=> b!1396202 m!1572761))

(assert (=> b!1396202 m!1572761))

(declare-fun m!1572763 () Bool)

(assert (=> b!1396202 m!1572763))

(declare-fun m!1572765 () Bool)

(assert (=> b!1396172 m!1572765))

(check-sat (not b!1396177) (not b!1396185) (not b!1396198) (not b!1396175) (not b!1396196) (not b!1396207) (not b!1396199) (not b_next!34657) (not b_next!34651) (not start!127138) (not b!1396206) (not b!1396203) (not b!1396188) (not b!1396205) b_and!93483 (not b!1396173) (not b!1396184) (not b!1396208) (not b_next!34655) (not b!1396190) (not b!1396197) (not b!1396169) (not b!1396181) (not b!1396170) (not b!1396195) (not b!1396166) (not b!1396178) (not b!1396171) (not b!1396193) (not b!1396209) (not b!1396204) (not b!1396172) (not b!1396182) (not b!1396163) (not b!1396167) (not b!1396194) b_and!93489 (not b!1396202) (not b!1396211) b_and!93493 (not b!1396183) (not b_next!34653) b_and!93491 (not b!1396174) (not b_next!34661) (not b!1396200) (not b!1396179) b_and!93487 (not b!1396187) b_and!93485 (not b!1396176) (not b!1396186) (not b!1396165) (not b!1396201) (not b_next!34659))
(check-sat (not b_next!34651) b_and!93483 (not b_next!34655) b_and!93489 b_and!93493 (not b_next!34661) (not b_next!34659) (not b_next!34657) (not b_next!34653) b_and!93491 b_and!93487 b_and!93485)
