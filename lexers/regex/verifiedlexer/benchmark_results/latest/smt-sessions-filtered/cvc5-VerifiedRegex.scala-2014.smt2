; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!102660 () Bool)

(assert start!102660)

(declare-fun b!1168608 () Bool)

(declare-fun e!749097 () Bool)

(assert (=> b!1168608 (= e!749097 true)))

(declare-fun b!1168607 () Bool)

(declare-fun e!749096 () Bool)

(assert (=> b!1168607 (= e!749096 e!749097)))

(declare-fun b!1168593 () Bool)

(assert (=> b!1168593 e!749096))

(assert (= b!1168607 b!1168608))

(assert (= b!1168593 b!1168607))

(declare-fun e!749086 () Bool)

(declare-fun e!749084 () Bool)

(assert (=> b!1168593 (= e!749086 (not e!749084))))

(declare-fun res!527596 () Bool)

(assert (=> b!1168593 (=> res!527596 e!749084)))

(declare-datatypes ((List!11551 0))(
  ( (Nil!11527) (Cons!11527 (h!16928 (_ BitVec 16)) (t!110481 List!11551)) )
))
(declare-datatypes ((TokenValue!2074 0))(
  ( (FloatLiteralValue!4148 (text!14963 List!11551)) (TokenValueExt!2073 (__x!7859 Int)) (Broken!10370 (value!65200 List!11551)) (Object!2097) (End!2074) (Def!2074) (Underscore!2074) (Match!2074) (Else!2074) (Error!2074) (Case!2074) (If!2074) (Extends!2074) (Abstract!2074) (Class!2074) (Val!2074) (DelimiterValue!4148 (del!2134 List!11551)) (KeywordValue!2080 (value!65201 List!11551)) (CommentValue!4148 (value!65202 List!11551)) (WhitespaceValue!4148 (value!65203 List!11551)) (IndentationValue!2074 (value!65204 List!11551)) (String!13959) (Int32!2074) (Broken!10371 (value!65205 List!11551)) (Boolean!2075) (Unit!17703) (OperatorValue!2077 (op!2134 List!11551)) (IdentifierValue!4148 (value!65206 List!11551)) (IdentifierValue!4149 (value!65207 List!11551)) (WhitespaceValue!4149 (value!65208 List!11551)) (True!4148) (False!4148) (Broken!10372 (value!65209 List!11551)) (Broken!10373 (value!65210 List!11551)) (True!4149) (RightBrace!2074) (RightBracket!2074) (Colon!2074) (Null!2074) (Comma!2074) (LeftBracket!2074) (False!4149) (LeftBrace!2074) (ImaginaryLiteralValue!2074 (text!14964 List!11551)) (StringLiteralValue!6222 (value!65211 List!11551)) (EOFValue!2074 (value!65212 List!11551)) (IdentValue!2074 (value!65213 List!11551)) (DelimiterValue!4149 (value!65214 List!11551)) (DedentValue!2074 (value!65215 List!11551)) (NewLineValue!2074 (value!65216 List!11551)) (IntegerValue!6222 (value!65217 (_ BitVec 32)) (text!14965 List!11551)) (IntegerValue!6223 (value!65218 Int) (text!14966 List!11551)) (Times!2074) (Or!2074) (Equal!2074) (Minus!2074) (Broken!10374 (value!65219 List!11551)) (And!2074) (Div!2074) (LessEqual!2074) (Mod!2074) (Concat!5352) (Not!2074) (Plus!2074) (SpaceValue!2074 (value!65220 List!11551)) (IntegerValue!6224 (value!65221 Int) (text!14967 List!11551)) (StringLiteralValue!6223 (text!14968 List!11551)) (FloatLiteralValue!4149 (text!14969 List!11551)) (BytesLiteralValue!2074 (value!65222 List!11551)) (CommentValue!4149 (value!65223 List!11551)) (StringLiteralValue!6224 (value!65224 List!11551)) (ErrorTokenValue!2074 (msg!2135 List!11551)) )
))
(declare-datatypes ((C!6874 0))(
  ( (C!6875 (val!3693 Int)) )
))
(declare-datatypes ((Regex!3278 0))(
  ( (ElementMatch!3278 (c!195146 C!6874)) (Concat!5353 (regOne!7068 Regex!3278) (regTwo!7068 Regex!3278)) (EmptyExpr!3278) (Star!3278 (reg!3607 Regex!3278)) (EmptyLang!3278) (Union!3278 (regOne!7069 Regex!3278) (regTwo!7069 Regex!3278)) )
))
(declare-datatypes ((String!13960 0))(
  ( (String!13961 (value!65225 String)) )
))
(declare-datatypes ((List!11552 0))(
  ( (Nil!11528) (Cons!11528 (h!16929 C!6874) (t!110482 List!11552)) )
))
(declare-datatypes ((IArray!7561 0))(
  ( (IArray!7562 (innerList!3838 List!11552)) )
))
(declare-datatypes ((Conc!3778 0))(
  ( (Node!3778 (left!10078 Conc!3778) (right!10408 Conc!3778) (csize!7786 Int) (cheight!3989 Int)) (Leaf!5793 (xs!6483 IArray!7561) (csize!7787 Int)) (Empty!3778) )
))
(declare-datatypes ((BalanceConc!7578 0))(
  ( (BalanceConc!7579 (c!195147 Conc!3778)) )
))
(declare-datatypes ((TokenValueInjection!3848 0))(
  ( (TokenValueInjection!3849 (toValue!3109 Int) (toChars!2968 Int)) )
))
(declare-datatypes ((Rule!3816 0))(
  ( (Rule!3817 (regex!2008 Regex!3278) (tag!2270 String!13960) (isSeparator!2008 Bool) (transformation!2008 TokenValueInjection!3848)) )
))
(declare-datatypes ((Token!3678 0))(
  ( (Token!3679 (value!65226 TokenValue!2074) (rule!3429 Rule!3816) (size!9076 Int) (originalCharacters!2562 List!11552)) )
))
(declare-datatypes ((List!11553 0))(
  ( (Nil!11529) (Cons!11529 (h!16930 Token!3678) (t!110483 List!11553)) )
))
(declare-datatypes ((List!11554 0))(
  ( (Nil!11530) (Cons!11530 (h!16931 Rule!3816) (t!110484 List!11554)) )
))
(declare-datatypes ((IArray!7563 0))(
  ( (IArray!7564 (innerList!3839 List!11553)) )
))
(declare-datatypes ((Conc!3779 0))(
  ( (Node!3779 (left!10079 Conc!3779) (right!10409 Conc!3779) (csize!7788 Int) (cheight!3990 Int)) (Leaf!5794 (xs!6484 IArray!7563) (csize!7789 Int)) (Empty!3779) )
))
(declare-datatypes ((BalanceConc!7580 0))(
  ( (BalanceConc!7581 (c!195148 Conc!3779)) )
))
(declare-datatypes ((PrintableTokens!702 0))(
  ( (PrintableTokens!703 (rules!9603 List!11554) (tokens!1633 BalanceConc!7580)) )
))
(declare-fun thiss!10527 () PrintableTokens!702)

(declare-fun lambda!47964 () Int)

(declare-fun forall!3031 (BalanceConc!7580 Int) Bool)

(assert (=> b!1168593 (= res!527596 (not (forall!3031 (tokens!1633 thiss!10527) lambda!47964)))))

(declare-fun lt!400222 () List!11553)

(declare-fun e!749088 () Bool)

(declare-datatypes ((LexerInterface!1703 0))(
  ( (LexerInterfaceExt!1700 (__x!7860 Int)) (Lexer!1701) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!569 (LexerInterface!1703 List!11554 List!11553) Bool)

(assert (=> b!1168593 (= (rulesProduceEachTokenIndividuallyList!569 Lexer!1701 (rules!9603 thiss!10527) lt!400222) e!749088)))

(declare-fun res!527598 () Bool)

(assert (=> b!1168593 (=> res!527598 e!749088)))

(assert (=> b!1168593 (= res!527598 (not (is-Cons!11529 lt!400222)))))

(declare-fun list!4248 (BalanceConc!7580) List!11553)

(assert (=> b!1168593 (= lt!400222 (list!4248 (tokens!1633 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!741 (LexerInterface!1703 List!11554 BalanceConc!7580) Bool)

(assert (=> b!1168593 (= (rulesProduceEachTokenIndividually!741 Lexer!1701 (rules!9603 thiss!10527) (tokens!1633 thiss!10527)) (forall!3031 (tokens!1633 thiss!10527) lambda!47964))))

(declare-fun b!1168594 () Bool)

(declare-fun e!749089 () Bool)

(declare-fun e!749087 () Bool)

(declare-fun tp!334387 () Bool)

(declare-fun inv!15189 (BalanceConc!7580) Bool)

(assert (=> b!1168594 (= e!749087 (and tp!334387 (inv!15189 (tokens!1633 thiss!10527)) e!749089))))

(declare-fun b!1168595 () Bool)

(declare-fun e!749085 () Bool)

(assert (=> b!1168595 (= e!749088 e!749085)))

(declare-fun res!527599 () Bool)

(assert (=> b!1168595 (=> (not res!527599) (not e!749085))))

(declare-fun rulesProduceIndividualToken!738 (LexerInterface!1703 List!11554 Token!3678) Bool)

(assert (=> b!1168595 (= res!527599 (rulesProduceIndividualToken!738 Lexer!1701 (rules!9603 thiss!10527) (h!16930 lt!400222)))))

(declare-fun b!1168596 () Bool)

(declare-fun e!749091 () Bool)

(declare-fun to!267 () Int)

(declare-fun size!9077 (List!11553) Int)

(assert (=> b!1168596 (= e!749091 (<= to!267 (size!9077 lt!400222)))))

(declare-fun b!1168597 () Bool)

(declare-fun e!749090 () Bool)

(assert (=> b!1168597 (= e!749090 e!749086)))

(declare-fun res!527594 () Bool)

(assert (=> b!1168597 (=> (not res!527594) (not e!749086))))

(declare-fun rulesInvariant!1577 (LexerInterface!1703 List!11554) Bool)

(assert (=> b!1168597 (= res!527594 (rulesInvariant!1577 Lexer!1701 (rules!9603 thiss!10527)))))

(declare-datatypes ((Unit!17704 0))(
  ( (Unit!17705) )
))
(declare-fun lt!400221 () Unit!17704)

(declare-fun lemmaInvariant!195 (PrintableTokens!702) Unit!17704)

(assert (=> b!1168597 (= lt!400221 (lemmaInvariant!195 thiss!10527))))

(declare-fun b!1168598 () Bool)

(declare-fun res!527600 () Bool)

(assert (=> b!1168598 (=> (not res!527600) (not e!749090))))

(declare-fun size!9078 (BalanceConc!7580) Int)

(assert (=> b!1168598 (= res!527600 (<= to!267 (size!9078 (tokens!1633 thiss!10527))))))

(declare-fun b!1168599 () Bool)

(declare-fun tp!334388 () Bool)

(declare-fun inv!15190 (Conc!3779) Bool)

(assert (=> b!1168599 (= e!749089 (and (inv!15190 (c!195148 (tokens!1633 thiss!10527))) tp!334388))))

(declare-fun b!1168600 () Bool)

(assert (=> b!1168600 (= e!749085 (rulesProduceEachTokenIndividuallyList!569 Lexer!1701 (rules!9603 thiss!10527) (t!110483 lt!400222)))))

(declare-fun res!527595 () Bool)

(assert (=> start!102660 (=> (not res!527595) (not e!749090))))

(declare-fun from!787 () Int)

(assert (=> start!102660 (= res!527595 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!102660 e!749090))

(assert (=> start!102660 true))

(declare-fun inv!15191 (PrintableTokens!702) Bool)

(assert (=> start!102660 (and (inv!15191 thiss!10527) e!749087)))

(declare-fun b!1168592 () Bool)

(assert (=> b!1168592 (= e!749084 e!749091)))

(declare-fun res!527597 () Bool)

(assert (=> b!1168592 (=> (not res!527597) (not e!749091))))

(assert (=> b!1168592 (= res!527597 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (= (and start!102660 res!527595) b!1168598))

(assert (= (and b!1168598 res!527600) b!1168597))

(assert (= (and b!1168597 res!527594) b!1168593))

(assert (= (and b!1168593 (not res!527598)) b!1168595))

(assert (= (and b!1168595 res!527599) b!1168600))

(assert (= (and b!1168593 (not res!527596)) b!1168592))

(assert (= (and b!1168592 res!527597) b!1168596))

(assert (= b!1168594 b!1168599))

(assert (= start!102660 b!1168594))

(declare-fun m!1340815 () Bool)

(assert (=> b!1168600 m!1340815))

(declare-fun m!1340817 () Bool)

(assert (=> b!1168596 m!1340817))

(declare-fun m!1340819 () Bool)

(assert (=> b!1168598 m!1340819))

(declare-fun m!1340821 () Bool)

(assert (=> b!1168593 m!1340821))

(declare-fun m!1340823 () Bool)

(assert (=> b!1168593 m!1340823))

(declare-fun m!1340825 () Bool)

(assert (=> b!1168593 m!1340825))

(declare-fun m!1340827 () Bool)

(assert (=> b!1168593 m!1340827))

(assert (=> b!1168593 m!1340823))

(declare-fun m!1340829 () Bool)

(assert (=> b!1168597 m!1340829))

(declare-fun m!1340831 () Bool)

(assert (=> b!1168597 m!1340831))

(declare-fun m!1340833 () Bool)

(assert (=> b!1168595 m!1340833))

(declare-fun m!1340835 () Bool)

(assert (=> b!1168594 m!1340835))

(declare-fun m!1340837 () Bool)

(assert (=> start!102660 m!1340837))

(declare-fun m!1340839 () Bool)

(assert (=> b!1168599 m!1340839))

(push 1)

(assert (not b!1168600))

(assert (not b!1168598))

(assert (not b!1168599))

(assert (not b!1168594))

(assert (not b!1168595))

(assert (not b!1168597))

(assert (not b!1168608))

(assert (not b!1168607))

(assert (not start!102660))

(assert (not b!1168593))

(assert (not b!1168596))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!334259 () Bool)

(declare-fun res!527628 () Bool)

(declare-fun e!749130 () Bool)

(assert (=> d!334259 (=> (not res!527628) (not e!749130))))

(declare-fun isEmpty!7014 (List!11554) Bool)

(assert (=> d!334259 (= res!527628 (not (isEmpty!7014 (rules!9603 thiss!10527))))))

(assert (=> d!334259 (= (inv!15191 thiss!10527) e!749130)))

(declare-fun b!1168650 () Bool)

(declare-fun res!527629 () Bool)

(assert (=> b!1168650 (=> (not res!527629) (not e!749130))))

(assert (=> b!1168650 (= res!527629 (rulesInvariant!1577 Lexer!1701 (rules!9603 thiss!10527)))))

(declare-fun b!1168651 () Bool)

(declare-fun res!527630 () Bool)

(assert (=> b!1168651 (=> (not res!527630) (not e!749130))))

(assert (=> b!1168651 (= res!527630 (rulesProduceEachTokenIndividually!741 Lexer!1701 (rules!9603 thiss!10527) (tokens!1633 thiss!10527)))))

(declare-fun b!1168652 () Bool)

(declare-fun separableTokens!140 (LexerInterface!1703 BalanceConc!7580 List!11554) Bool)

(assert (=> b!1168652 (= e!749130 (separableTokens!140 Lexer!1701 (tokens!1633 thiss!10527) (rules!9603 thiss!10527)))))

(assert (= (and d!334259 res!527628) b!1168650))

(assert (= (and b!1168650 res!527629) b!1168651))

(assert (= (and b!1168651 res!527630) b!1168652))

(declare-fun m!1340867 () Bool)

(assert (=> d!334259 m!1340867))

(assert (=> b!1168650 m!1340829))

(assert (=> b!1168651 m!1340825))

(declare-fun m!1340869 () Bool)

(assert (=> b!1168652 m!1340869))

(assert (=> start!102660 d!334259))

(declare-fun d!334261 () Bool)

(declare-fun lt!400231 () Int)

(assert (=> d!334261 (>= lt!400231 0)))

(declare-fun e!749133 () Int)

(assert (=> d!334261 (= lt!400231 e!749133)))

(declare-fun c!195154 () Bool)

(assert (=> d!334261 (= c!195154 (is-Nil!11529 lt!400222))))

(assert (=> d!334261 (= (size!9077 lt!400222) lt!400231)))

(declare-fun b!1168657 () Bool)

(assert (=> b!1168657 (= e!749133 0)))

(declare-fun b!1168658 () Bool)

(assert (=> b!1168658 (= e!749133 (+ 1 (size!9077 (t!110483 lt!400222))))))

(assert (= (and d!334261 c!195154) b!1168657))

(assert (= (and d!334261 (not c!195154)) b!1168658))

(declare-fun m!1340871 () Bool)

(assert (=> b!1168658 m!1340871))

(assert (=> b!1168596 d!334261))

(declare-fun d!334263 () Bool)

(declare-fun res!527633 () Bool)

(declare-fun e!749136 () Bool)

(assert (=> d!334263 (=> (not res!527633) (not e!749136))))

(declare-fun rulesValid!703 (LexerInterface!1703 List!11554) Bool)

(assert (=> d!334263 (= res!527633 (rulesValid!703 Lexer!1701 (rules!9603 thiss!10527)))))

(assert (=> d!334263 (= (rulesInvariant!1577 Lexer!1701 (rules!9603 thiss!10527)) e!749136)))

(declare-fun b!1168661 () Bool)

(declare-datatypes ((List!11559 0))(
  ( (Nil!11535) (Cons!11535 (h!16936 String!13960) (t!110503 List!11559)) )
))
(declare-fun noDuplicateTag!703 (LexerInterface!1703 List!11554 List!11559) Bool)

(assert (=> b!1168661 (= e!749136 (noDuplicateTag!703 Lexer!1701 (rules!9603 thiss!10527) Nil!11535))))

(assert (= (and d!334263 res!527633) b!1168661))

(declare-fun m!1340873 () Bool)

(assert (=> d!334263 m!1340873))

(declare-fun m!1340875 () Bool)

(assert (=> b!1168661 m!1340875))

(assert (=> b!1168597 d!334263))

(declare-fun d!334265 () Bool)

(declare-fun e!749145 () Bool)

(assert (=> d!334265 e!749145))

(declare-fun res!527647 () Bool)

(assert (=> d!334265 (=> (not res!527647) (not e!749145))))

(assert (=> d!334265 (= res!527647 (rulesInvariant!1577 Lexer!1701 (rules!9603 thiss!10527)))))

(declare-fun Unit!17709 () Unit!17704)

(assert (=> d!334265 (= (lemmaInvariant!195 thiss!10527) Unit!17709)))

(declare-fun b!1168675 () Bool)

(declare-fun res!527648 () Bool)

(assert (=> b!1168675 (=> (not res!527648) (not e!749145))))

(assert (=> b!1168675 (= res!527648 (rulesProduceEachTokenIndividually!741 Lexer!1701 (rules!9603 thiss!10527) (tokens!1633 thiss!10527)))))

(declare-fun b!1168676 () Bool)

(assert (=> b!1168676 (= e!749145 (separableTokens!140 Lexer!1701 (tokens!1633 thiss!10527) (rules!9603 thiss!10527)))))

(assert (= (and d!334265 res!527647) b!1168675))

(assert (= (and b!1168675 res!527648) b!1168676))

(assert (=> d!334265 m!1340829))

(assert (=> b!1168675 m!1340825))

(assert (=> b!1168676 m!1340869))

(assert (=> b!1168597 d!334265))

(declare-fun d!334269 () Bool)

(declare-fun lt!400240 () Int)

(assert (=> d!334269 (= lt!400240 (size!9077 (list!4248 (tokens!1633 thiss!10527))))))

(declare-fun size!9082 (Conc!3779) Int)

(assert (=> d!334269 (= lt!400240 (size!9082 (c!195148 (tokens!1633 thiss!10527))))))

(assert (=> d!334269 (= (size!9078 (tokens!1633 thiss!10527)) lt!400240)))

(declare-fun bs!285432 () Bool)

(assert (= bs!285432 d!334269))

(assert (=> bs!285432 m!1340827))

(assert (=> bs!285432 m!1340827))

(declare-fun m!1340897 () Bool)

(assert (=> bs!285432 m!1340897))

(declare-fun m!1340899 () Bool)

(assert (=> bs!285432 m!1340899))

(assert (=> b!1168598 d!334269))

(declare-fun bs!285433 () Bool)

(declare-fun d!334271 () Bool)

(assert (= bs!285433 (and d!334271 b!1168593)))

(declare-fun lambda!47974 () Int)

(assert (=> bs!285433 (= lambda!47974 lambda!47964)))

(declare-fun b!1168690 () Bool)

(declare-fun e!749157 () Bool)

(assert (=> b!1168690 (= e!749157 true)))

(declare-fun b!1168689 () Bool)

(declare-fun e!749156 () Bool)

(assert (=> b!1168689 (= e!749156 e!749157)))

(declare-fun b!1168688 () Bool)

(declare-fun e!749155 () Bool)

(assert (=> b!1168688 (= e!749155 e!749156)))

(assert (=> d!334271 e!749155))

(assert (= b!1168689 b!1168690))

(assert (= b!1168688 b!1168689))

(assert (= (and d!334271 (is-Cons!11530 (rules!9603 thiss!10527))) b!1168688))

(declare-fun order!7061 () Int)

(declare-fun order!7059 () Int)

(declare-fun dynLambda!5079 (Int Int) Int)

(declare-fun dynLambda!5080 (Int Int) Int)

(assert (=> b!1168690 (< (dynLambda!5079 order!7059 (toValue!3109 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47974))))

(declare-fun order!7063 () Int)

(declare-fun dynLambda!5081 (Int Int) Int)

(assert (=> b!1168690 (< (dynLambda!5081 order!7063 (toChars!2968 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47974))))

(assert (=> d!334271 true))

(declare-fun e!749148 () Bool)

(assert (=> d!334271 e!749148))

(declare-fun res!527651 () Bool)

(assert (=> d!334271 (=> (not res!527651) (not e!749148))))

(declare-fun lt!400243 () Bool)

(declare-fun forall!3033 (List!11553 Int) Bool)

(assert (=> d!334271 (= res!527651 (= lt!400243 (forall!3033 (list!4248 (tokens!1633 thiss!10527)) lambda!47974)))))

(assert (=> d!334271 (= lt!400243 (forall!3031 (tokens!1633 thiss!10527) lambda!47974))))

(assert (=> d!334271 (not (isEmpty!7014 (rules!9603 thiss!10527)))))

(assert (=> d!334271 (= (rulesProduceEachTokenIndividually!741 Lexer!1701 (rules!9603 thiss!10527) (tokens!1633 thiss!10527)) lt!400243)))

(declare-fun b!1168679 () Bool)

(assert (=> b!1168679 (= e!749148 (= lt!400243 (rulesProduceEachTokenIndividuallyList!569 Lexer!1701 (rules!9603 thiss!10527) (list!4248 (tokens!1633 thiss!10527)))))))

(assert (= (and d!334271 res!527651) b!1168679))

(assert (=> d!334271 m!1340827))

(assert (=> d!334271 m!1340827))

(declare-fun m!1340901 () Bool)

(assert (=> d!334271 m!1340901))

(declare-fun m!1340903 () Bool)

(assert (=> d!334271 m!1340903))

(assert (=> d!334271 m!1340867))

(assert (=> b!1168679 m!1340827))

(assert (=> b!1168679 m!1340827))

(declare-fun m!1340905 () Bool)

(assert (=> b!1168679 m!1340905))

(assert (=> b!1168593 d!334271))

(declare-fun d!334273 () Bool)

(declare-fun lt!400246 () Bool)

(assert (=> d!334273 (= lt!400246 (forall!3033 (list!4248 (tokens!1633 thiss!10527)) lambda!47964))))

(declare-fun forall!3034 (Conc!3779 Int) Bool)

(assert (=> d!334273 (= lt!400246 (forall!3034 (c!195148 (tokens!1633 thiss!10527)) lambda!47964))))

(assert (=> d!334273 (= (forall!3031 (tokens!1633 thiss!10527) lambda!47964) lt!400246)))

(declare-fun bs!285434 () Bool)

(assert (= bs!285434 d!334273))

(assert (=> bs!285434 m!1340827))

(assert (=> bs!285434 m!1340827))

(declare-fun m!1340907 () Bool)

(assert (=> bs!285434 m!1340907))

(declare-fun m!1340909 () Bool)

(assert (=> bs!285434 m!1340909))

(assert (=> b!1168593 d!334273))

(declare-fun bs!285436 () Bool)

(declare-fun d!334275 () Bool)

(assert (= bs!285436 (and d!334275 b!1168593)))

(declare-fun lambda!47980 () Int)

(assert (=> bs!285436 (= lambda!47980 lambda!47964)))

(declare-fun bs!285437 () Bool)

(assert (= bs!285437 (and d!334275 d!334271)))

(assert (=> bs!285437 (= lambda!47980 lambda!47974)))

(declare-fun b!1168732 () Bool)

(declare-fun e!749190 () Bool)

(assert (=> b!1168732 (= e!749190 true)))

(declare-fun b!1168731 () Bool)

(declare-fun e!749189 () Bool)

(assert (=> b!1168731 (= e!749189 e!749190)))

(declare-fun b!1168730 () Bool)

(declare-fun e!749188 () Bool)

(assert (=> b!1168730 (= e!749188 e!749189)))

(assert (=> d!334275 e!749188))

(assert (= b!1168731 b!1168732))

(assert (= b!1168730 b!1168731))

(assert (= (and d!334275 (is-Cons!11530 (rules!9603 thiss!10527))) b!1168730))

(assert (=> b!1168732 (< (dynLambda!5079 order!7059 (toValue!3109 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47980))))

(assert (=> b!1168732 (< (dynLambda!5081 order!7063 (toChars!2968 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47980))))

(assert (=> d!334275 true))

(declare-fun lt!400252 () Bool)

(assert (=> d!334275 (= lt!400252 (forall!3033 lt!400222 lambda!47980))))

(declare-fun e!749187 () Bool)

(assert (=> d!334275 (= lt!400252 e!749187)))

(declare-fun res!527669 () Bool)

(assert (=> d!334275 (=> res!527669 e!749187)))

(assert (=> d!334275 (= res!527669 (not (is-Cons!11529 lt!400222)))))

(assert (=> d!334275 (not (isEmpty!7014 (rules!9603 thiss!10527)))))

(assert (=> d!334275 (= (rulesProduceEachTokenIndividuallyList!569 Lexer!1701 (rules!9603 thiss!10527) lt!400222) lt!400252)))

(declare-fun b!1168728 () Bool)

(declare-fun e!749186 () Bool)

(assert (=> b!1168728 (= e!749187 e!749186)))

(declare-fun res!527668 () Bool)

(assert (=> b!1168728 (=> (not res!527668) (not e!749186))))

(assert (=> b!1168728 (= res!527668 (rulesProduceIndividualToken!738 Lexer!1701 (rules!9603 thiss!10527) (h!16930 lt!400222)))))

(declare-fun b!1168729 () Bool)

(assert (=> b!1168729 (= e!749186 (rulesProduceEachTokenIndividuallyList!569 Lexer!1701 (rules!9603 thiss!10527) (t!110483 lt!400222)))))

(assert (= (and d!334275 (not res!527669)) b!1168728))

(assert (= (and b!1168728 res!527668) b!1168729))

(declare-fun m!1340925 () Bool)

(assert (=> d!334275 m!1340925))

(assert (=> d!334275 m!1340867))

(assert (=> b!1168728 m!1340833))

(assert (=> b!1168729 m!1340815))

(assert (=> b!1168593 d!334275))

(declare-fun d!334283 () Bool)

(declare-fun list!4250 (Conc!3779) List!11553)

(assert (=> d!334283 (= (list!4248 (tokens!1633 thiss!10527)) (list!4250 (c!195148 (tokens!1633 thiss!10527))))))

(declare-fun bs!285438 () Bool)

(assert (= bs!285438 d!334283))

(declare-fun m!1340927 () Bool)

(assert (=> bs!285438 m!1340927))

(assert (=> b!1168593 d!334283))

(declare-fun d!334285 () Bool)

(declare-fun c!195160 () Bool)

(assert (=> d!334285 (= c!195160 (is-Node!3779 (c!195148 (tokens!1633 thiss!10527))))))

(declare-fun e!749195 () Bool)

(assert (=> d!334285 (= (inv!15190 (c!195148 (tokens!1633 thiss!10527))) e!749195)))

(declare-fun b!1168739 () Bool)

(declare-fun inv!15195 (Conc!3779) Bool)

(assert (=> b!1168739 (= e!749195 (inv!15195 (c!195148 (tokens!1633 thiss!10527))))))

(declare-fun b!1168740 () Bool)

(declare-fun e!749196 () Bool)

(assert (=> b!1168740 (= e!749195 e!749196)))

(declare-fun res!527672 () Bool)

(assert (=> b!1168740 (= res!527672 (not (is-Leaf!5794 (c!195148 (tokens!1633 thiss!10527)))))))

(assert (=> b!1168740 (=> res!527672 e!749196)))

(declare-fun b!1168741 () Bool)

(declare-fun inv!15196 (Conc!3779) Bool)

(assert (=> b!1168741 (= e!749196 (inv!15196 (c!195148 (tokens!1633 thiss!10527))))))

(assert (= (and d!334285 c!195160) b!1168739))

(assert (= (and d!334285 (not c!195160)) b!1168740))

(assert (= (and b!1168740 (not res!527672)) b!1168741))

(declare-fun m!1340929 () Bool)

(assert (=> b!1168739 m!1340929))

(declare-fun m!1340931 () Bool)

(assert (=> b!1168741 m!1340931))

(assert (=> b!1168599 d!334285))

(declare-fun d!334287 () Bool)

(declare-fun isBalanced!1063 (Conc!3779) Bool)

(assert (=> d!334287 (= (inv!15189 (tokens!1633 thiss!10527)) (isBalanced!1063 (c!195148 (tokens!1633 thiss!10527))))))

(declare-fun bs!285439 () Bool)

(assert (= bs!285439 d!334287))

(declare-fun m!1340933 () Bool)

(assert (=> bs!285439 m!1340933))

(assert (=> b!1168594 d!334287))

(declare-fun bs!285440 () Bool)

(declare-fun d!334289 () Bool)

(assert (= bs!285440 (and d!334289 b!1168593)))

(declare-fun lambda!47981 () Int)

(assert (=> bs!285440 (= lambda!47981 lambda!47964)))

(declare-fun bs!285441 () Bool)

(assert (= bs!285441 (and d!334289 d!334271)))

(assert (=> bs!285441 (= lambda!47981 lambda!47974)))

(declare-fun bs!285442 () Bool)

(assert (= bs!285442 (and d!334289 d!334275)))

(assert (=> bs!285442 (= lambda!47981 lambda!47980)))

(declare-fun b!1168746 () Bool)

(declare-fun e!749201 () Bool)

(assert (=> b!1168746 (= e!749201 true)))

(declare-fun b!1168745 () Bool)

(declare-fun e!749200 () Bool)

(assert (=> b!1168745 (= e!749200 e!749201)))

(declare-fun b!1168744 () Bool)

(declare-fun e!749199 () Bool)

(assert (=> b!1168744 (= e!749199 e!749200)))

(assert (=> d!334289 e!749199))

(assert (= b!1168745 b!1168746))

(assert (= b!1168744 b!1168745))

(assert (= (and d!334289 (is-Cons!11530 (rules!9603 thiss!10527))) b!1168744))

(assert (=> b!1168746 (< (dynLambda!5079 order!7059 (toValue!3109 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47981))))

(assert (=> b!1168746 (< (dynLambda!5081 order!7063 (toChars!2968 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47981))))

(assert (=> d!334289 true))

(declare-fun lt!400253 () Bool)

(assert (=> d!334289 (= lt!400253 (forall!3033 (t!110483 lt!400222) lambda!47981))))

(declare-fun e!749198 () Bool)

(assert (=> d!334289 (= lt!400253 e!749198)))

(declare-fun res!527674 () Bool)

(assert (=> d!334289 (=> res!527674 e!749198)))

(assert (=> d!334289 (= res!527674 (not (is-Cons!11529 (t!110483 lt!400222))))))

(assert (=> d!334289 (not (isEmpty!7014 (rules!9603 thiss!10527)))))

(assert (=> d!334289 (= (rulesProduceEachTokenIndividuallyList!569 Lexer!1701 (rules!9603 thiss!10527) (t!110483 lt!400222)) lt!400253)))

(declare-fun b!1168742 () Bool)

(declare-fun e!749197 () Bool)

(assert (=> b!1168742 (= e!749198 e!749197)))

(declare-fun res!527673 () Bool)

(assert (=> b!1168742 (=> (not res!527673) (not e!749197))))

(assert (=> b!1168742 (= res!527673 (rulesProduceIndividualToken!738 Lexer!1701 (rules!9603 thiss!10527) (h!16930 (t!110483 lt!400222))))))

(declare-fun b!1168743 () Bool)

(assert (=> b!1168743 (= e!749197 (rulesProduceEachTokenIndividuallyList!569 Lexer!1701 (rules!9603 thiss!10527) (t!110483 (t!110483 lt!400222))))))

(assert (= (and d!334289 (not res!527674)) b!1168742))

(assert (= (and b!1168742 res!527673) b!1168743))

(declare-fun m!1340935 () Bool)

(assert (=> d!334289 m!1340935))

(assert (=> d!334289 m!1340867))

(declare-fun m!1340937 () Bool)

(assert (=> b!1168742 m!1340937))

(declare-fun m!1340939 () Bool)

(assert (=> b!1168743 m!1340939))

(assert (=> b!1168600 d!334289))

(declare-fun d!334291 () Bool)

(declare-fun lt!400261 () Bool)

(declare-fun e!749209 () Bool)

(assert (=> d!334291 (= lt!400261 e!749209)))

(declare-fun res!527689 () Bool)

(assert (=> d!334291 (=> (not res!527689) (not e!749209))))

(declare-datatypes ((tuple2!12028 0))(
  ( (tuple2!12029 (_1!6861 BalanceConc!7580) (_2!6861 BalanceConc!7578)) )
))
(declare-fun lex!705 (LexerInterface!1703 List!11554 BalanceConc!7578) tuple2!12028)

(declare-fun print!642 (LexerInterface!1703 BalanceConc!7580) BalanceConc!7578)

(declare-fun singletonSeq!670 (Token!3678) BalanceConc!7580)

(assert (=> d!334291 (= res!527689 (= (list!4248 (_1!6861 (lex!705 Lexer!1701 (rules!9603 thiss!10527) (print!642 Lexer!1701 (singletonSeq!670 (h!16930 lt!400222)))))) (list!4248 (singletonSeq!670 (h!16930 lt!400222)))))))

(declare-fun e!749210 () Bool)

(assert (=> d!334291 (= lt!400261 e!749210)))

(declare-fun res!527687 () Bool)

(assert (=> d!334291 (=> (not res!527687) (not e!749210))))

(declare-fun lt!400262 () tuple2!12028)

(assert (=> d!334291 (= res!527687 (= (size!9078 (_1!6861 lt!400262)) 1))))

(assert (=> d!334291 (= lt!400262 (lex!705 Lexer!1701 (rules!9603 thiss!10527) (print!642 Lexer!1701 (singletonSeq!670 (h!16930 lt!400222)))))))

(assert (=> d!334291 (not (isEmpty!7014 (rules!9603 thiss!10527)))))

(assert (=> d!334291 (= (rulesProduceIndividualToken!738 Lexer!1701 (rules!9603 thiss!10527) (h!16930 lt!400222)) lt!400261)))

(declare-fun b!1168759 () Bool)

(declare-fun res!527688 () Bool)

(assert (=> b!1168759 (=> (not res!527688) (not e!749210))))

(declare-fun apply!2491 (BalanceConc!7580 Int) Token!3678)

(assert (=> b!1168759 (= res!527688 (= (apply!2491 (_1!6861 lt!400262) 0) (h!16930 lt!400222)))))

(declare-fun b!1168760 () Bool)

(declare-fun isEmpty!7015 (BalanceConc!7578) Bool)

(assert (=> b!1168760 (= e!749210 (isEmpty!7015 (_2!6861 lt!400262)))))

(declare-fun b!1168761 () Bool)

(assert (=> b!1168761 (= e!749209 (isEmpty!7015 (_2!6861 (lex!705 Lexer!1701 (rules!9603 thiss!10527) (print!642 Lexer!1701 (singletonSeq!670 (h!16930 lt!400222)))))))))

(assert (= (and d!334291 res!527687) b!1168759))

(assert (= (and b!1168759 res!527688) b!1168760))

(assert (= (and d!334291 res!527689) b!1168761))

(declare-fun m!1340947 () Bool)

(assert (=> d!334291 m!1340947))

(declare-fun m!1340949 () Bool)

(assert (=> d!334291 m!1340949))

(assert (=> d!334291 m!1340867))

(declare-fun m!1340951 () Bool)

(assert (=> d!334291 m!1340951))

(declare-fun m!1340953 () Bool)

(assert (=> d!334291 m!1340953))

(assert (=> d!334291 m!1340947))

(assert (=> d!334291 m!1340953))

(declare-fun m!1340955 () Bool)

(assert (=> d!334291 m!1340955))

(assert (=> d!334291 m!1340953))

(declare-fun m!1340957 () Bool)

(assert (=> d!334291 m!1340957))

(declare-fun m!1340959 () Bool)

(assert (=> b!1168759 m!1340959))

(declare-fun m!1340961 () Bool)

(assert (=> b!1168760 m!1340961))

(assert (=> b!1168761 m!1340953))

(assert (=> b!1168761 m!1340953))

(assert (=> b!1168761 m!1340947))

(assert (=> b!1168761 m!1340947))

(assert (=> b!1168761 m!1340949))

(declare-fun m!1340963 () Bool)

(assert (=> b!1168761 m!1340963))

(assert (=> b!1168595 d!334291))

(declare-fun b!1168770 () Bool)

(declare-fun e!749215 () Bool)

(assert (=> b!1168770 (= e!749215 true)))

(declare-fun b!1168772 () Bool)

(declare-fun e!749216 () Bool)

(assert (=> b!1168772 (= e!749216 true)))

(declare-fun b!1168771 () Bool)

(assert (=> b!1168771 (= e!749215 e!749216)))

(assert (=> b!1168608 e!749215))

(assert (= (and b!1168608 (is-Node!3779 (c!195148 (tokens!1633 thiss!10527)))) b!1168770))

(assert (= b!1168771 b!1168772))

(assert (= (and b!1168608 (is-Leaf!5794 (c!195148 (tokens!1633 thiss!10527)))) b!1168771))

(declare-fun tp!334403 () Bool)

(declare-fun e!749221 () Bool)

(declare-fun tp!334402 () Bool)

(declare-fun b!1168781 () Bool)

(assert (=> b!1168781 (= e!749221 (and (inv!15190 (left!10079 (c!195148 (tokens!1633 thiss!10527)))) tp!334402 (inv!15190 (right!10409 (c!195148 (tokens!1633 thiss!10527)))) tp!334403))))

(declare-fun b!1168783 () Bool)

(declare-fun e!749222 () Bool)

(declare-fun tp!334401 () Bool)

(assert (=> b!1168783 (= e!749222 tp!334401)))

(declare-fun b!1168782 () Bool)

(declare-fun inv!15197 (IArray!7563) Bool)

(assert (=> b!1168782 (= e!749221 (and (inv!15197 (xs!6484 (c!195148 (tokens!1633 thiss!10527)))) e!749222))))

(assert (=> b!1168599 (= tp!334388 (and (inv!15190 (c!195148 (tokens!1633 thiss!10527))) e!749221))))

(assert (= (and b!1168599 (is-Node!3779 (c!195148 (tokens!1633 thiss!10527)))) b!1168781))

(assert (= b!1168782 b!1168783))

(assert (= (and b!1168599 (is-Leaf!5794 (c!195148 (tokens!1633 thiss!10527)))) b!1168782))

(declare-fun m!1340965 () Bool)

(assert (=> b!1168781 m!1340965))

(declare-fun m!1340967 () Bool)

(assert (=> b!1168781 m!1340967))

(declare-fun m!1340969 () Bool)

(assert (=> b!1168782 m!1340969))

(assert (=> b!1168599 m!1340839))

(declare-fun b!1168794 () Bool)

(declare-fun b_free!27813 () Bool)

(declare-fun b_next!28517 () Bool)

(assert (=> b!1168794 (= b_free!27813 (not b_next!28517))))

(declare-fun tp!334415 () Bool)

(declare-fun b_and!80713 () Bool)

(assert (=> b!1168794 (= tp!334415 b_and!80713)))

(declare-fun b_free!27815 () Bool)

(declare-fun b_next!28519 () Bool)

(assert (=> b!1168794 (= b_free!27815 (not b_next!28519))))

(declare-fun tp!334413 () Bool)

(declare-fun b_and!80715 () Bool)

(assert (=> b!1168794 (= tp!334413 b_and!80715)))

(declare-fun e!749234 () Bool)

(assert (=> b!1168794 (= e!749234 (and tp!334415 tp!334413))))

(declare-fun e!749231 () Bool)

(declare-fun tp!334414 () Bool)

(declare-fun b!1168793 () Bool)

(declare-fun inv!15186 (String!13960) Bool)

(declare-fun inv!15198 (TokenValueInjection!3848) Bool)

(assert (=> b!1168793 (= e!749231 (and tp!334414 (inv!15186 (tag!2270 (h!16931 (rules!9603 thiss!10527)))) (inv!15198 (transformation!2008 (h!16931 (rules!9603 thiss!10527)))) e!749234))))

(declare-fun b!1168792 () Bool)

(declare-fun e!749233 () Bool)

(declare-fun tp!334412 () Bool)

(assert (=> b!1168792 (= e!749233 (and e!749231 tp!334412))))

(assert (=> b!1168594 (= tp!334387 e!749233)))

(assert (= b!1168793 b!1168794))

(assert (= b!1168792 b!1168793))

(assert (= (and b!1168594 (is-Cons!11530 (rules!9603 thiss!10527))) b!1168792))

(declare-fun m!1340971 () Bool)

(assert (=> b!1168793 m!1340971))

(declare-fun m!1340973 () Bool)

(assert (=> b!1168793 m!1340973))

(declare-fun b!1168797 () Bool)

(declare-fun e!749237 () Bool)

(assert (=> b!1168797 (= e!749237 true)))

(declare-fun b!1168796 () Bool)

(declare-fun e!749236 () Bool)

(assert (=> b!1168796 (= e!749236 e!749237)))

(declare-fun b!1168795 () Bool)

(declare-fun e!749235 () Bool)

(assert (=> b!1168795 (= e!749235 e!749236)))

(assert (=> b!1168607 e!749235))

(assert (= b!1168796 b!1168797))

(assert (= b!1168795 b!1168796))

(assert (= (and b!1168607 (is-Cons!11530 (rules!9603 thiss!10527))) b!1168795))

(assert (=> b!1168797 (< (dynLambda!5079 order!7059 (toValue!3109 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47964))))

(assert (=> b!1168797 (< (dynLambda!5081 order!7063 (toChars!2968 (transformation!2008 (h!16931 (rules!9603 thiss!10527))))) (dynLambda!5080 order!7061 lambda!47964))))

(push 1)

(assert (not b!1168676))

(assert (not b!1168742))

(assert (not b!1168599))

(assert (not d!334273))

(assert (not b!1168770))

(assert (not d!334263))

(assert (not b!1168782))

(assert (not d!334265))

(assert (not d!334289))

(assert (not b!1168744))

(assert (not b_next!28519))

(assert b_and!80713)

(assert (not b!1168743))

(assert (not b!1168792))

(assert (not b!1168759))

(assert (not b!1168795))

(assert (not b!1168652))

(assert (not b!1168772))

(assert (not b!1168739))

(assert (not b!1168651))

(assert (not d!334259))

(assert (not d!334271))

(assert (not b!1168761))

(assert (not b!1168658))

(assert (not b!1168729))

(assert (not b!1168730))

(assert (not d!334283))

(assert (not d!334291))

(assert (not d!334287))

(assert (not b!1168679))

(assert (not b!1168728))

(assert (not b!1168793))

(assert (not d!334269))

(assert (not b!1168650))

(assert (not d!334275))

(assert (not b!1168760))

(assert (not b!1168783))

(assert (not b!1168741))

(assert (not b!1168675))

(assert (not b!1168688))

(assert (not b!1168661))

(assert b_and!80715)

(assert (not b!1168781))

(assert (not b_next!28517))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80713)

(assert b_and!80715)

(assert (not b_next!28517))

(assert (not b_next!28519))

(check-sat)

(pop 1)

