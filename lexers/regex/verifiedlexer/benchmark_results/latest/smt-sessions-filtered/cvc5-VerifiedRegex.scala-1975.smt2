; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!100572 () Bool)

(assert start!100572)

(declare-fun b!1154444 () Bool)

(declare-fun e!738172 () Bool)

(assert (=> b!1154444 (= e!738172 true)))

(declare-fun b!1154443 () Bool)

(declare-fun e!738171 () Bool)

(assert (=> b!1154443 (= e!738171 e!738172)))

(declare-fun b!1154433 () Bool)

(assert (=> b!1154433 e!738171))

(assert (= b!1154443 b!1154444))

(assert (= b!1154433 b!1154443))

(declare-fun e!738160 () Bool)

(declare-datatypes ((List!11196 0))(
  ( (Nil!11172) (Cons!11172 (h!16573 (_ BitVec 16)) (t!108780 List!11196)) )
))
(declare-datatypes ((TokenValue!1996 0))(
  ( (FloatLiteralValue!3992 (text!14417 List!11196)) (TokenValueExt!1995 (__x!7703 Int)) (Broken!9980 (value!62977 List!11196)) (Object!2019) (End!1996) (Def!1996) (Underscore!1996) (Match!1996) (Else!1996) (Error!1996) (Case!1996) (If!1996) (Extends!1996) (Abstract!1996) (Class!1996) (Val!1996) (DelimiterValue!3992 (del!2056 List!11196)) (KeywordValue!2002 (value!62978 List!11196)) (CommentValue!3992 (value!62979 List!11196)) (WhitespaceValue!3992 (value!62980 List!11196)) (IndentationValue!1996 (value!62981 List!11196)) (String!13569) (Int32!1996) (Broken!9981 (value!62982 List!11196)) (Boolean!1997) (Unit!17216) (OperatorValue!1999 (op!2056 List!11196)) (IdentifierValue!3992 (value!62983 List!11196)) (IdentifierValue!3993 (value!62984 List!11196)) (WhitespaceValue!3993 (value!62985 List!11196)) (True!3992) (False!3992) (Broken!9982 (value!62986 List!11196)) (Broken!9983 (value!62987 List!11196)) (True!3993) (RightBrace!1996) (RightBracket!1996) (Colon!1996) (Null!1996) (Comma!1996) (LeftBracket!1996) (False!3993) (LeftBrace!1996) (ImaginaryLiteralValue!1996 (text!14418 List!11196)) (StringLiteralValue!5988 (value!62988 List!11196)) (EOFValue!1996 (value!62989 List!11196)) (IdentValue!1996 (value!62990 List!11196)) (DelimiterValue!3993 (value!62991 List!11196)) (DedentValue!1996 (value!62992 List!11196)) (NewLineValue!1996 (value!62993 List!11196)) (IntegerValue!5988 (value!62994 (_ BitVec 32)) (text!14419 List!11196)) (IntegerValue!5989 (value!62995 Int) (text!14420 List!11196)) (Times!1996) (Or!1996) (Equal!1996) (Minus!1996) (Broken!9984 (value!62996 List!11196)) (And!1996) (Div!1996) (LessEqual!1996) (Mod!1996) (Concat!5196) (Not!1996) (Plus!1996) (SpaceValue!1996 (value!62997 List!11196)) (IntegerValue!5990 (value!62998 Int) (text!14421 List!11196)) (StringLiteralValue!5989 (text!14422 List!11196)) (FloatLiteralValue!3993 (text!14423 List!11196)) (BytesLiteralValue!1996 (value!62999 List!11196)) (CommentValue!3993 (value!63000 List!11196)) (StringLiteralValue!5990 (value!63001 List!11196)) (ErrorTokenValue!1996 (msg!2057 List!11196)) )
))
(declare-datatypes ((C!6718 0))(
  ( (C!6719 (val!3615 Int)) )
))
(declare-datatypes ((Regex!3200 0))(
  ( (ElementMatch!3200 (c!193967 C!6718)) (Concat!5197 (regOne!6912 Regex!3200) (regTwo!6912 Regex!3200)) (EmptyExpr!3200) (Star!3200 (reg!3529 Regex!3200)) (EmptyLang!3200) (Union!3200 (regOne!6913 Regex!3200) (regTwo!6913 Regex!3200)) )
))
(declare-datatypes ((String!13570 0))(
  ( (String!13571 (value!63002 String)) )
))
(declare-datatypes ((List!11197 0))(
  ( (Nil!11173) (Cons!11173 (h!16574 C!6718) (t!108781 List!11197)) )
))
(declare-datatypes ((IArray!7249 0))(
  ( (IArray!7250 (innerList!3682 List!11197)) )
))
(declare-datatypes ((Conc!3622 0))(
  ( (Node!3622 (left!9731 Conc!3622) (right!10061 Conc!3622) (csize!7474 Int) (cheight!3833 Int)) (Leaf!5598 (xs!6327 IArray!7249) (csize!7475 Int)) (Empty!3622) )
))
(declare-datatypes ((BalanceConc!7266 0))(
  ( (BalanceConc!7267 (c!193968 Conc!3622)) )
))
(declare-datatypes ((TokenValueInjection!3692 0))(
  ( (TokenValueInjection!3693 (toValue!3031 Int) (toChars!2890 Int)) )
))
(declare-datatypes ((Rule!3660 0))(
  ( (Rule!3661 (regex!1930 Regex!3200) (tag!2192 String!13570) (isSeparator!1930 Bool) (transformation!1930 TokenValueInjection!3692)) )
))
(declare-datatypes ((Token!3522 0))(
  ( (Token!3523 (value!63003 TokenValue!1996) (rule!3351 Rule!3660) (size!8800 Int) (originalCharacters!2484 List!11197)) )
))
(declare-datatypes ((List!11198 0))(
  ( (Nil!11174) (Cons!11174 (h!16575 Token!3522) (t!108782 List!11198)) )
))
(declare-datatypes ((List!11199 0))(
  ( (Nil!11175) (Cons!11175 (h!16576 Rule!3660) (t!108783 List!11199)) )
))
(declare-datatypes ((IArray!7251 0))(
  ( (IArray!7252 (innerList!3683 List!11198)) )
))
(declare-datatypes ((Conc!3623 0))(
  ( (Node!3623 (left!9732 Conc!3623) (right!10062 Conc!3623) (csize!7476 Int) (cheight!3834 Int)) (Leaf!5599 (xs!6328 IArray!7251) (csize!7477 Int)) (Empty!3623) )
))
(declare-datatypes ((BalanceConc!7268 0))(
  ( (BalanceConc!7269 (c!193969 Conc!3623)) )
))
(declare-datatypes ((PrintableTokens!546 0))(
  ( (PrintableTokens!547 (rules!9397 List!11199) (tokens!1529 BalanceConc!7268)) )
))
(declare-fun thiss!10527 () PrintableTokens!546)

(declare-fun e!738161 () Bool)

(declare-fun b!1154429 () Bool)

(declare-fun tp!332898 () Bool)

(declare-fun inv!14674 (BalanceConc!7268) Bool)

(assert (=> b!1154429 (= e!738160 (and tp!332898 (inv!14674 (tokens!1529 thiss!10527)) e!738161))))

(declare-fun b!1154430 () Bool)

(declare-fun res!519304 () Bool)

(declare-fun e!738165 () Bool)

(assert (=> b!1154430 (=> (not res!519304) (not e!738165))))

(declare-fun to!267 () Int)

(declare-fun size!8801 (BalanceConc!7268) Int)

(assert (=> b!1154430 (= res!519304 (<= to!267 (size!8801 (tokens!1529 thiss!10527))))))

(declare-fun b!1154431 () Bool)

(declare-fun tp!332897 () Bool)

(declare-fun inv!14675 (Conc!3623) Bool)

(assert (=> b!1154431 (= e!738161 (and (inv!14675 (c!193969 (tokens!1529 thiss!10527))) tp!332897))))

(declare-fun b!1154432 () Bool)

(declare-fun e!738162 () Bool)

(declare-fun isBalanced!1022 (Conc!3623) Bool)

(assert (=> b!1154432 (= e!738162 (isBalanced!1022 (c!193969 (tokens!1529 thiss!10527))))))

(declare-fun lt!392604 () List!11198)

(declare-fun from!787 () Int)

(declare-fun subseq!186 (List!11198 List!11198) Bool)

(declare-fun slice!138 (List!11198 Int Int) List!11198)

(assert (=> b!1154432 (subseq!186 (slice!138 lt!392604 from!787 to!267) lt!392604)))

(declare-datatypes ((Unit!17217 0))(
  ( (Unit!17218) )
))
(declare-fun lt!392603 () Unit!17217)

(declare-fun lemmaSliceSubseq!27 (List!11198 Int Int) Unit!17217)

(assert (=> b!1154432 (= lt!392603 (lemmaSliceSubseq!27 lt!392604 from!787 to!267))))

(declare-fun e!738166 () Bool)

(assert (=> b!1154433 (= e!738166 (not e!738162))))

(declare-fun res!519303 () Bool)

(assert (=> b!1154433 (=> res!519303 e!738162)))

(declare-fun lambda!46480 () Int)

(declare-fun forall!2847 (BalanceConc!7268 Int) Bool)

(assert (=> b!1154433 (= res!519303 (not (forall!2847 (tokens!1529 thiss!10527) lambda!46480)))))

(declare-fun e!738164 () Bool)

(declare-datatypes ((LexerInterface!1625 0))(
  ( (LexerInterfaceExt!1622 (__x!7704 Int)) (Lexer!1623) )
))
(declare-fun rulesProduceEachTokenIndividuallyList!493 (LexerInterface!1625 List!11199 List!11198) Bool)

(assert (=> b!1154433 (= (rulesProduceEachTokenIndividuallyList!493 Lexer!1623 (rules!9397 thiss!10527) lt!392604) e!738164)))

(declare-fun res!519301 () Bool)

(assert (=> b!1154433 (=> res!519301 e!738164)))

(assert (=> b!1154433 (= res!519301 (not (is-Cons!11174 lt!392604)))))

(declare-fun list!4123 (BalanceConc!7268) List!11198)

(assert (=> b!1154433 (= lt!392604 (list!4123 (tokens!1529 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!664 (LexerInterface!1625 List!11199 BalanceConc!7268) Bool)

(assert (=> b!1154433 (= (rulesProduceEachTokenIndividually!664 Lexer!1623 (rules!9397 thiss!10527) (tokens!1529 thiss!10527)) (forall!2847 (tokens!1529 thiss!10527) lambda!46480))))

(declare-fun b!1154434 () Bool)

(declare-fun e!738163 () Bool)

(assert (=> b!1154434 (= e!738163 (rulesProduceEachTokenIndividuallyList!493 Lexer!1623 (rules!9397 thiss!10527) (t!108782 lt!392604)))))

(declare-fun res!519302 () Bool)

(assert (=> start!100572 (=> (not res!519302) (not e!738165))))

(assert (=> start!100572 (= res!519302 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!100572 e!738165))

(assert (=> start!100572 true))

(declare-fun inv!14676 (PrintableTokens!546) Bool)

(assert (=> start!100572 (and (inv!14676 thiss!10527) e!738160)))

(declare-fun b!1154435 () Bool)

(assert (=> b!1154435 (= e!738165 e!738166)))

(declare-fun res!519300 () Bool)

(assert (=> b!1154435 (=> (not res!519300) (not e!738166))))

(declare-fun rulesInvariant!1499 (LexerInterface!1625 List!11199) Bool)

(assert (=> b!1154435 (= res!519300 (rulesInvariant!1499 Lexer!1623 (rules!9397 thiss!10527)))))

(declare-fun lt!392605 () Unit!17217)

(declare-fun lemmaInvariant!117 (PrintableTokens!546) Unit!17217)

(assert (=> b!1154435 (= lt!392605 (lemmaInvariant!117 thiss!10527))))

(declare-fun b!1154436 () Bool)

(assert (=> b!1154436 (= e!738164 e!738163)))

(declare-fun res!519305 () Bool)

(assert (=> b!1154436 (=> (not res!519305) (not e!738163))))

(declare-fun rulesProduceIndividualToken!662 (LexerInterface!1625 List!11199 Token!3522) Bool)

(assert (=> b!1154436 (= res!519305 (rulesProduceIndividualToken!662 Lexer!1623 (rules!9397 thiss!10527) (h!16575 lt!392604)))))

(assert (= (and start!100572 res!519302) b!1154430))

(assert (= (and b!1154430 res!519304) b!1154435))

(assert (= (and b!1154435 res!519300) b!1154433))

(assert (= (and b!1154433 (not res!519301)) b!1154436))

(assert (= (and b!1154436 res!519305) b!1154434))

(assert (= (and b!1154433 (not res!519303)) b!1154432))

(assert (= b!1154429 b!1154431))

(assert (= start!100572 b!1154429))

(declare-fun m!1321547 () Bool)

(assert (=> b!1154435 m!1321547))

(declare-fun m!1321549 () Bool)

(assert (=> b!1154435 m!1321549))

(declare-fun m!1321551 () Bool)

(assert (=> b!1154434 m!1321551))

(declare-fun m!1321553 () Bool)

(assert (=> b!1154430 m!1321553))

(declare-fun m!1321555 () Bool)

(assert (=> b!1154429 m!1321555))

(declare-fun m!1321557 () Bool)

(assert (=> start!100572 m!1321557))

(declare-fun m!1321559 () Bool)

(assert (=> b!1154431 m!1321559))

(declare-fun m!1321561 () Bool)

(assert (=> b!1154436 m!1321561))

(declare-fun m!1321563 () Bool)

(assert (=> b!1154432 m!1321563))

(declare-fun m!1321565 () Bool)

(assert (=> b!1154432 m!1321565))

(assert (=> b!1154432 m!1321565))

(declare-fun m!1321567 () Bool)

(assert (=> b!1154432 m!1321567))

(declare-fun m!1321569 () Bool)

(assert (=> b!1154432 m!1321569))

(declare-fun m!1321571 () Bool)

(assert (=> b!1154433 m!1321571))

(declare-fun m!1321573 () Bool)

(assert (=> b!1154433 m!1321573))

(declare-fun m!1321575 () Bool)

(assert (=> b!1154433 m!1321575))

(assert (=> b!1154433 m!1321571))

(declare-fun m!1321577 () Bool)

(assert (=> b!1154433 m!1321577))

(push 1)

(assert (not b!1154432))

(assert (not b!1154433))

(assert (not b!1154431))

(assert (not b!1154429))

(assert (not b!1154435))

(assert (not b!1154444))

(assert (not start!100572))

(assert (not b!1154434))

(assert (not b!1154436))

(assert (not b!1154430))

(assert (not b!1154443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!330102 () Bool)

(declare-fun lt!392617 () Bool)

(declare-fun forall!2849 (List!11198 Int) Bool)

(assert (=> d!330102 (= lt!392617 (forall!2849 (list!4123 (tokens!1529 thiss!10527)) lambda!46480))))

(declare-fun forall!2850 (Conc!3623 Int) Bool)

(assert (=> d!330102 (= lt!392617 (forall!2850 (c!193969 (tokens!1529 thiss!10527)) lambda!46480))))

(assert (=> d!330102 (= (forall!2847 (tokens!1529 thiss!10527) lambda!46480) lt!392617)))

(declare-fun bs!282767 () Bool)

(assert (= bs!282767 d!330102))

(assert (=> bs!282767 m!1321575))

(assert (=> bs!282767 m!1321575))

(declare-fun m!1321611 () Bool)

(assert (=> bs!282767 m!1321611))

(declare-fun m!1321613 () Bool)

(assert (=> bs!282767 m!1321613))

(assert (=> b!1154433 d!330102))

(declare-fun bs!282768 () Bool)

(declare-fun d!330106 () Bool)

(assert (= bs!282768 (and d!330106 b!1154433)))

(declare-fun lambda!46490 () Int)

(assert (=> bs!282768 (= lambda!46490 lambda!46480)))

(declare-fun b!1154493 () Bool)

(declare-fun e!738214 () Bool)

(assert (=> b!1154493 (= e!738214 true)))

(declare-fun b!1154492 () Bool)

(declare-fun e!738213 () Bool)

(assert (=> b!1154492 (= e!738213 e!738214)))

(declare-fun b!1154491 () Bool)

(declare-fun e!738212 () Bool)

(assert (=> b!1154491 (= e!738212 e!738213)))

(assert (=> d!330106 e!738212))

(assert (= b!1154492 b!1154493))

(assert (= b!1154491 b!1154492))

(assert (= (and d!330106 (is-Cons!11175 (rules!9397 thiss!10527))) b!1154491))

(declare-fun order!6821 () Int)

(declare-fun order!6819 () Int)

(declare-fun dynLambda!4930 (Int Int) Int)

(declare-fun dynLambda!4931 (Int Int) Int)

(assert (=> b!1154493 (< (dynLambda!4930 order!6819 (toValue!3031 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46490))))

(declare-fun order!6823 () Int)

(declare-fun dynLambda!4932 (Int Int) Int)

(assert (=> b!1154493 (< (dynLambda!4932 order!6823 (toChars!2890 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46490))))

(assert (=> d!330106 true))

(declare-fun e!738205 () Bool)

(assert (=> d!330106 e!738205))

(declare-fun res!519329 () Bool)

(assert (=> d!330106 (=> (not res!519329) (not e!738205))))

(declare-fun lt!392620 () Bool)

(assert (=> d!330106 (= res!519329 (= lt!392620 (forall!2849 (list!4123 (tokens!1529 thiss!10527)) lambda!46490)))))

(assert (=> d!330106 (= lt!392620 (forall!2847 (tokens!1529 thiss!10527) lambda!46490))))

(declare-fun isEmpty!6910 (List!11199) Bool)

(assert (=> d!330106 (not (isEmpty!6910 (rules!9397 thiss!10527)))))

(assert (=> d!330106 (= (rulesProduceEachTokenIndividually!664 Lexer!1623 (rules!9397 thiss!10527) (tokens!1529 thiss!10527)) lt!392620)))

(declare-fun b!1154482 () Bool)

(assert (=> b!1154482 (= e!738205 (= lt!392620 (rulesProduceEachTokenIndividuallyList!493 Lexer!1623 (rules!9397 thiss!10527) (list!4123 (tokens!1529 thiss!10527)))))))

(assert (= (and d!330106 res!519329) b!1154482))

(assert (=> d!330106 m!1321575))

(assert (=> d!330106 m!1321575))

(declare-fun m!1321619 () Bool)

(assert (=> d!330106 m!1321619))

(declare-fun m!1321621 () Bool)

(assert (=> d!330106 m!1321621))

(declare-fun m!1321623 () Bool)

(assert (=> d!330106 m!1321623))

(assert (=> b!1154482 m!1321575))

(assert (=> b!1154482 m!1321575))

(declare-fun m!1321625 () Bool)

(assert (=> b!1154482 m!1321625))

(assert (=> b!1154433 d!330106))

(declare-fun d!330110 () Bool)

(declare-fun list!4125 (Conc!3623) List!11198)

(assert (=> d!330110 (= (list!4123 (tokens!1529 thiss!10527)) (list!4125 (c!193969 (tokens!1529 thiss!10527))))))

(declare-fun bs!282769 () Bool)

(assert (= bs!282769 d!330110))

(declare-fun m!1321627 () Bool)

(assert (=> bs!282769 m!1321627))

(assert (=> b!1154433 d!330110))

(declare-fun bs!282770 () Bool)

(declare-fun d!330112 () Bool)

(assert (= bs!282770 (and d!330112 b!1154433)))

(declare-fun lambda!46493 () Int)

(assert (=> bs!282770 (= lambda!46493 lambda!46480)))

(declare-fun bs!282771 () Bool)

(assert (= bs!282771 (and d!330112 d!330106)))

(assert (=> bs!282771 (= lambda!46493 lambda!46490)))

(declare-fun b!1154504 () Bool)

(declare-fun e!738223 () Bool)

(assert (=> b!1154504 (= e!738223 true)))

(declare-fun b!1154503 () Bool)

(declare-fun e!738222 () Bool)

(assert (=> b!1154503 (= e!738222 e!738223)))

(declare-fun b!1154502 () Bool)

(declare-fun e!738221 () Bool)

(assert (=> b!1154502 (= e!738221 e!738222)))

(assert (=> d!330112 e!738221))

(assert (= b!1154503 b!1154504))

(assert (= b!1154502 b!1154503))

(assert (= (and d!330112 (is-Cons!11175 (rules!9397 thiss!10527))) b!1154502))

(assert (=> b!1154504 (< (dynLambda!4930 order!6819 (toValue!3031 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46493))))

(assert (=> b!1154504 (< (dynLambda!4932 order!6823 (toChars!2890 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46493))))

(assert (=> d!330112 true))

(declare-fun lt!392623 () Bool)

(assert (=> d!330112 (= lt!392623 (forall!2849 lt!392604 lambda!46493))))

(declare-fun e!738219 () Bool)

(assert (=> d!330112 (= lt!392623 e!738219)))

(declare-fun res!519334 () Bool)

(assert (=> d!330112 (=> res!519334 e!738219)))

(assert (=> d!330112 (= res!519334 (not (is-Cons!11174 lt!392604)))))

(assert (=> d!330112 (not (isEmpty!6910 (rules!9397 thiss!10527)))))

(assert (=> d!330112 (= (rulesProduceEachTokenIndividuallyList!493 Lexer!1623 (rules!9397 thiss!10527) lt!392604) lt!392623)))

(declare-fun b!1154500 () Bool)

(declare-fun e!738220 () Bool)

(assert (=> b!1154500 (= e!738219 e!738220)))

(declare-fun res!519335 () Bool)

(assert (=> b!1154500 (=> (not res!519335) (not e!738220))))

(assert (=> b!1154500 (= res!519335 (rulesProduceIndividualToken!662 Lexer!1623 (rules!9397 thiss!10527) (h!16575 lt!392604)))))

(declare-fun b!1154501 () Bool)

(assert (=> b!1154501 (= e!738220 (rulesProduceEachTokenIndividuallyList!493 Lexer!1623 (rules!9397 thiss!10527) (t!108782 lt!392604)))))

(assert (= (and d!330112 (not res!519334)) b!1154500))

(assert (= (and b!1154500 res!519335) b!1154501))

(declare-fun m!1321629 () Bool)

(assert (=> d!330112 m!1321629))

(assert (=> d!330112 m!1321623))

(assert (=> b!1154500 m!1321561))

(assert (=> b!1154501 m!1321551))

(assert (=> b!1154433 d!330112))

(declare-fun d!330114 () Bool)

(declare-fun res!519384 () Bool)

(declare-fun e!738256 () Bool)

(assert (=> d!330114 (=> (not res!519384) (not e!738256))))

(assert (=> d!330114 (= res!519384 (not (isEmpty!6910 (rules!9397 thiss!10527))))))

(assert (=> d!330114 (= (inv!14676 thiss!10527) e!738256)))

(declare-fun b!1154559 () Bool)

(declare-fun res!519385 () Bool)

(assert (=> b!1154559 (=> (not res!519385) (not e!738256))))

(assert (=> b!1154559 (= res!519385 (rulesInvariant!1499 Lexer!1623 (rules!9397 thiss!10527)))))

(declare-fun b!1154560 () Bool)

(declare-fun res!519386 () Bool)

(assert (=> b!1154560 (=> (not res!519386) (not e!738256))))

(assert (=> b!1154560 (= res!519386 (rulesProduceEachTokenIndividually!664 Lexer!1623 (rules!9397 thiss!10527) (tokens!1529 thiss!10527)))))

(declare-fun b!1154561 () Bool)

(declare-fun separableTokens!84 (LexerInterface!1625 BalanceConc!7268 List!11199) Bool)

(assert (=> b!1154561 (= e!738256 (separableTokens!84 Lexer!1623 (tokens!1529 thiss!10527) (rules!9397 thiss!10527)))))

(assert (= (and d!330114 res!519384) b!1154559))

(assert (= (and b!1154559 res!519385) b!1154560))

(assert (= (and b!1154560 res!519386) b!1154561))

(assert (=> d!330114 m!1321623))

(assert (=> b!1154559 m!1321547))

(assert (=> b!1154560 m!1321573))

(declare-fun m!1321665 () Bool)

(assert (=> b!1154561 m!1321665))

(assert (=> start!100572 d!330114))

(declare-fun d!330132 () Bool)

(declare-fun res!519389 () Bool)

(declare-fun e!738259 () Bool)

(assert (=> d!330132 (=> (not res!519389) (not e!738259))))

(declare-fun rulesValid!664 (LexerInterface!1625 List!11199) Bool)

(assert (=> d!330132 (= res!519389 (rulesValid!664 Lexer!1623 (rules!9397 thiss!10527)))))

(assert (=> d!330132 (= (rulesInvariant!1499 Lexer!1623 (rules!9397 thiss!10527)) e!738259)))

(declare-fun b!1154564 () Bool)

(declare-datatypes ((List!11204 0))(
  ( (Nil!11180) (Cons!11180 (h!16581 String!13570) (t!108808 List!11204)) )
))
(declare-fun noDuplicateTag!664 (LexerInterface!1625 List!11199 List!11204) Bool)

(assert (=> b!1154564 (= e!738259 (noDuplicateTag!664 Lexer!1623 (rules!9397 thiss!10527) Nil!11180))))

(assert (= (and d!330132 res!519389) b!1154564))

(declare-fun m!1321667 () Bool)

(assert (=> d!330132 m!1321667))

(declare-fun m!1321669 () Bool)

(assert (=> b!1154564 m!1321669))

(assert (=> b!1154435 d!330132))

(declare-fun d!330134 () Bool)

(declare-fun e!738274 () Bool)

(assert (=> d!330134 e!738274))

(declare-fun res!519397 () Bool)

(assert (=> d!330134 (=> (not res!519397) (not e!738274))))

(assert (=> d!330134 (= res!519397 (rulesInvariant!1499 Lexer!1623 (rules!9397 thiss!10527)))))

(declare-fun Unit!17222 () Unit!17217)

(assert (=> d!330134 (= (lemmaInvariant!117 thiss!10527) Unit!17222)))

(declare-fun b!1154585 () Bool)

(declare-fun res!519398 () Bool)

(assert (=> b!1154585 (=> (not res!519398) (not e!738274))))

(assert (=> b!1154585 (= res!519398 (rulesProduceEachTokenIndividually!664 Lexer!1623 (rules!9397 thiss!10527) (tokens!1529 thiss!10527)))))

(declare-fun b!1154586 () Bool)

(assert (=> b!1154586 (= e!738274 (separableTokens!84 Lexer!1623 (tokens!1529 thiss!10527) (rules!9397 thiss!10527)))))

(assert (= (and d!330134 res!519397) b!1154585))

(assert (= (and b!1154585 res!519398) b!1154586))

(assert (=> d!330134 m!1321547))

(assert (=> b!1154585 m!1321573))

(assert (=> b!1154586 m!1321665))

(assert (=> b!1154435 d!330134))

(declare-fun d!330142 () Bool)

(assert (=> d!330142 (= (inv!14674 (tokens!1529 thiss!10527)) (isBalanced!1022 (c!193969 (tokens!1529 thiss!10527))))))

(declare-fun bs!282778 () Bool)

(assert (= bs!282778 d!330142))

(assert (=> bs!282778 m!1321563))

(assert (=> b!1154429 d!330142))

(declare-fun bs!282779 () Bool)

(declare-fun d!330144 () Bool)

(assert (= bs!282779 (and d!330144 b!1154433)))

(declare-fun lambda!46499 () Int)

(assert (=> bs!282779 (= lambda!46499 lambda!46480)))

(declare-fun bs!282780 () Bool)

(assert (= bs!282780 (and d!330144 d!330106)))

(assert (=> bs!282780 (= lambda!46499 lambda!46490)))

(declare-fun bs!282781 () Bool)

(assert (= bs!282781 (and d!330144 d!330112)))

(assert (=> bs!282781 (= lambda!46499 lambda!46493)))

(declare-fun b!1154591 () Bool)

(declare-fun e!738279 () Bool)

(assert (=> b!1154591 (= e!738279 true)))

(declare-fun b!1154590 () Bool)

(declare-fun e!738278 () Bool)

(assert (=> b!1154590 (= e!738278 e!738279)))

(declare-fun b!1154589 () Bool)

(declare-fun e!738277 () Bool)

(assert (=> b!1154589 (= e!738277 e!738278)))

(assert (=> d!330144 e!738277))

(assert (= b!1154590 b!1154591))

(assert (= b!1154589 b!1154590))

(assert (= (and d!330144 (is-Cons!11175 (rules!9397 thiss!10527))) b!1154589))

(assert (=> b!1154591 (< (dynLambda!4930 order!6819 (toValue!3031 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46499))))

(assert (=> b!1154591 (< (dynLambda!4932 order!6823 (toChars!2890 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46499))))

(assert (=> d!330144 true))

(declare-fun lt!392636 () Bool)

(assert (=> d!330144 (= lt!392636 (forall!2849 (t!108782 lt!392604) lambda!46499))))

(declare-fun e!738275 () Bool)

(assert (=> d!330144 (= lt!392636 e!738275)))

(declare-fun res!519399 () Bool)

(assert (=> d!330144 (=> res!519399 e!738275)))

(assert (=> d!330144 (= res!519399 (not (is-Cons!11174 (t!108782 lt!392604))))))

(assert (=> d!330144 (not (isEmpty!6910 (rules!9397 thiss!10527)))))

(assert (=> d!330144 (= (rulesProduceEachTokenIndividuallyList!493 Lexer!1623 (rules!9397 thiss!10527) (t!108782 lt!392604)) lt!392636)))

(declare-fun b!1154587 () Bool)

(declare-fun e!738276 () Bool)

(assert (=> b!1154587 (= e!738275 e!738276)))

(declare-fun res!519400 () Bool)

(assert (=> b!1154587 (=> (not res!519400) (not e!738276))))

(assert (=> b!1154587 (= res!519400 (rulesProduceIndividualToken!662 Lexer!1623 (rules!9397 thiss!10527) (h!16575 (t!108782 lt!392604))))))

(declare-fun b!1154588 () Bool)

(assert (=> b!1154588 (= e!738276 (rulesProduceEachTokenIndividuallyList!493 Lexer!1623 (rules!9397 thiss!10527) (t!108782 (t!108782 lt!392604))))))

(assert (= (and d!330144 (not res!519399)) b!1154587))

(assert (= (and b!1154587 res!519400) b!1154588))

(declare-fun m!1321685 () Bool)

(assert (=> d!330144 m!1321685))

(assert (=> d!330144 m!1321623))

(declare-fun m!1321687 () Bool)

(assert (=> b!1154587 m!1321687))

(declare-fun m!1321689 () Bool)

(assert (=> b!1154588 m!1321689))

(assert (=> b!1154434 d!330144))

(declare-fun d!330146 () Bool)

(declare-fun c!193978 () Bool)

(assert (=> d!330146 (= c!193978 (is-Node!3623 (c!193969 (tokens!1529 thiss!10527))))))

(declare-fun e!738284 () Bool)

(assert (=> d!330146 (= (inv!14675 (c!193969 (tokens!1529 thiss!10527))) e!738284)))

(declare-fun b!1154598 () Bool)

(declare-fun inv!14680 (Conc!3623) Bool)

(assert (=> b!1154598 (= e!738284 (inv!14680 (c!193969 (tokens!1529 thiss!10527))))))

(declare-fun b!1154599 () Bool)

(declare-fun e!738285 () Bool)

(assert (=> b!1154599 (= e!738284 e!738285)))

(declare-fun res!519403 () Bool)

(assert (=> b!1154599 (= res!519403 (not (is-Leaf!5599 (c!193969 (tokens!1529 thiss!10527)))))))

(assert (=> b!1154599 (=> res!519403 e!738285)))

(declare-fun b!1154600 () Bool)

(declare-fun inv!14681 (Conc!3623) Bool)

(assert (=> b!1154600 (= e!738285 (inv!14681 (c!193969 (tokens!1529 thiss!10527))))))

(assert (= (and d!330146 c!193978) b!1154598))

(assert (= (and d!330146 (not c!193978)) b!1154599))

(assert (= (and b!1154599 (not res!519403)) b!1154600))

(declare-fun m!1321691 () Bool)

(assert (=> b!1154598 m!1321691))

(declare-fun m!1321693 () Bool)

(assert (=> b!1154600 m!1321693))

(assert (=> b!1154431 d!330146))

(declare-fun d!330148 () Bool)

(declare-fun lt!392644 () Bool)

(declare-fun e!738300 () Bool)

(assert (=> d!330148 (= lt!392644 e!738300)))

(declare-fun res!519417 () Bool)

(assert (=> d!330148 (=> (not res!519417) (not e!738300))))

(declare-datatypes ((tuple2!11954 0))(
  ( (tuple2!11955 (_1!6824 BalanceConc!7268) (_2!6824 BalanceConc!7266)) )
))
(declare-fun lex!670 (LexerInterface!1625 List!11199 BalanceConc!7266) tuple2!11954)

(declare-fun print!607 (LexerInterface!1625 BalanceConc!7268) BalanceConc!7266)

(declare-fun singletonSeq!625 (Token!3522) BalanceConc!7268)

(assert (=> d!330148 (= res!519417 (= (list!4123 (_1!6824 (lex!670 Lexer!1623 (rules!9397 thiss!10527) (print!607 Lexer!1623 (singletonSeq!625 (h!16575 lt!392604)))))) (list!4123 (singletonSeq!625 (h!16575 lt!392604)))))))

(declare-fun e!738299 () Bool)

(assert (=> d!330148 (= lt!392644 e!738299)))

(declare-fun res!519418 () Bool)

(assert (=> d!330148 (=> (not res!519418) (not e!738299))))

(declare-fun lt!392645 () tuple2!11954)

(assert (=> d!330148 (= res!519418 (= (size!8801 (_1!6824 lt!392645)) 1))))

(assert (=> d!330148 (= lt!392645 (lex!670 Lexer!1623 (rules!9397 thiss!10527) (print!607 Lexer!1623 (singletonSeq!625 (h!16575 lt!392604)))))))

(assert (=> d!330148 (not (isEmpty!6910 (rules!9397 thiss!10527)))))

(assert (=> d!330148 (= (rulesProduceIndividualToken!662 Lexer!1623 (rules!9397 thiss!10527) (h!16575 lt!392604)) lt!392644)))

(declare-fun b!1154616 () Bool)

(declare-fun res!519416 () Bool)

(assert (=> b!1154616 (=> (not res!519416) (not e!738299))))

(declare-fun apply!2394 (BalanceConc!7268 Int) Token!3522)

(assert (=> b!1154616 (= res!519416 (= (apply!2394 (_1!6824 lt!392645) 0) (h!16575 lt!392604)))))

(declare-fun b!1154617 () Bool)

(declare-fun isEmpty!6911 (BalanceConc!7266) Bool)

(assert (=> b!1154617 (= e!738299 (isEmpty!6911 (_2!6824 lt!392645)))))

(declare-fun b!1154618 () Bool)

(assert (=> b!1154618 (= e!738300 (isEmpty!6911 (_2!6824 (lex!670 Lexer!1623 (rules!9397 thiss!10527) (print!607 Lexer!1623 (singletonSeq!625 (h!16575 lt!392604)))))))))

(assert (= (and d!330148 res!519418) b!1154616))

(assert (= (and b!1154616 res!519416) b!1154617))

(assert (= (and d!330148 res!519417) b!1154618))

(declare-fun m!1321697 () Bool)

(assert (=> d!330148 m!1321697))

(assert (=> d!330148 m!1321623))

(declare-fun m!1321699 () Bool)

(assert (=> d!330148 m!1321699))

(declare-fun m!1321701 () Bool)

(assert (=> d!330148 m!1321701))

(assert (=> d!330148 m!1321699))

(declare-fun m!1321703 () Bool)

(assert (=> d!330148 m!1321703))

(assert (=> d!330148 m!1321701))

(declare-fun m!1321705 () Bool)

(assert (=> d!330148 m!1321705))

(assert (=> d!330148 m!1321699))

(declare-fun m!1321707 () Bool)

(assert (=> d!330148 m!1321707))

(declare-fun m!1321709 () Bool)

(assert (=> b!1154616 m!1321709))

(declare-fun m!1321711 () Bool)

(assert (=> b!1154617 m!1321711))

(assert (=> b!1154618 m!1321699))

(assert (=> b!1154618 m!1321699))

(assert (=> b!1154618 m!1321701))

(assert (=> b!1154618 m!1321701))

(assert (=> b!1154618 m!1321705))

(declare-fun m!1321713 () Bool)

(assert (=> b!1154618 m!1321713))

(assert (=> b!1154436 d!330148))

(declare-fun d!330152 () Bool)

(declare-fun lt!392648 () Int)

(declare-fun size!8804 (List!11198) Int)

(assert (=> d!330152 (= lt!392648 (size!8804 (list!4123 (tokens!1529 thiss!10527))))))

(declare-fun size!8805 (Conc!3623) Int)

(assert (=> d!330152 (= lt!392648 (size!8805 (c!193969 (tokens!1529 thiss!10527))))))

(assert (=> d!330152 (= (size!8801 (tokens!1529 thiss!10527)) lt!392648)))

(declare-fun bs!282784 () Bool)

(assert (= bs!282784 d!330152))

(assert (=> bs!282784 m!1321575))

(assert (=> bs!282784 m!1321575))

(declare-fun m!1321715 () Bool)

(assert (=> bs!282784 m!1321715))

(declare-fun m!1321717 () Bool)

(assert (=> bs!282784 m!1321717))

(assert (=> b!1154430 d!330152))

(declare-fun b!1154631 () Bool)

(declare-fun e!738305 () Bool)

(declare-fun isEmpty!6912 (Conc!3623) Bool)

(assert (=> b!1154631 (= e!738305 (not (isEmpty!6912 (right!10062 (c!193969 (tokens!1529 thiss!10527))))))))

(declare-fun b!1154632 () Bool)

(declare-fun res!519434 () Bool)

(assert (=> b!1154632 (=> (not res!519434) (not e!738305))))

(assert (=> b!1154632 (= res!519434 (isBalanced!1022 (right!10062 (c!193969 (tokens!1529 thiss!10527)))))))

(declare-fun b!1154633 () Bool)

(declare-fun res!519435 () Bool)

(assert (=> b!1154633 (=> (not res!519435) (not e!738305))))

(declare-fun height!496 (Conc!3623) Int)

(assert (=> b!1154633 (= res!519435 (<= (- (height!496 (left!9732 (c!193969 (tokens!1529 thiss!10527)))) (height!496 (right!10062 (c!193969 (tokens!1529 thiss!10527))))) 1))))

(declare-fun b!1154634 () Bool)

(declare-fun res!519431 () Bool)

(assert (=> b!1154634 (=> (not res!519431) (not e!738305))))

(assert (=> b!1154634 (= res!519431 (not (isEmpty!6912 (left!9732 (c!193969 (tokens!1529 thiss!10527))))))))

(declare-fun d!330154 () Bool)

(declare-fun res!519433 () Bool)

(declare-fun e!738306 () Bool)

(assert (=> d!330154 (=> res!519433 e!738306)))

(assert (=> d!330154 (= res!519433 (not (is-Node!3623 (c!193969 (tokens!1529 thiss!10527)))))))

(assert (=> d!330154 (= (isBalanced!1022 (c!193969 (tokens!1529 thiss!10527))) e!738306)))

(declare-fun b!1154635 () Bool)

(declare-fun res!519432 () Bool)

(assert (=> b!1154635 (=> (not res!519432) (not e!738305))))

(assert (=> b!1154635 (= res!519432 (isBalanced!1022 (left!9732 (c!193969 (tokens!1529 thiss!10527)))))))

(declare-fun b!1154636 () Bool)

(assert (=> b!1154636 (= e!738306 e!738305)))

(declare-fun res!519436 () Bool)

(assert (=> b!1154636 (=> (not res!519436) (not e!738305))))

(assert (=> b!1154636 (= res!519436 (<= (- 1) (- (height!496 (left!9732 (c!193969 (tokens!1529 thiss!10527)))) (height!496 (right!10062 (c!193969 (tokens!1529 thiss!10527)))))))))

(assert (= (and d!330154 (not res!519433)) b!1154636))

(assert (= (and b!1154636 res!519436) b!1154633))

(assert (= (and b!1154633 res!519435) b!1154635))

(assert (= (and b!1154635 res!519432) b!1154632))

(assert (= (and b!1154632 res!519434) b!1154634))

(assert (= (and b!1154634 res!519431) b!1154631))

(declare-fun m!1321719 () Bool)

(assert (=> b!1154631 m!1321719))

(declare-fun m!1321721 () Bool)

(assert (=> b!1154635 m!1321721))

(declare-fun m!1321723 () Bool)

(assert (=> b!1154636 m!1321723))

(declare-fun m!1321725 () Bool)

(assert (=> b!1154636 m!1321725))

(declare-fun m!1321727 () Bool)

(assert (=> b!1154632 m!1321727))

(assert (=> b!1154633 m!1321723))

(assert (=> b!1154633 m!1321725))

(declare-fun m!1321729 () Bool)

(assert (=> b!1154634 m!1321729))

(assert (=> b!1154432 d!330154))

(declare-fun d!330156 () Bool)

(declare-fun res!519446 () Bool)

(declare-fun e!738318 () Bool)

(assert (=> d!330156 (=> res!519446 e!738318)))

(assert (=> d!330156 (= res!519446 (is-Nil!11174 (slice!138 lt!392604 from!787 to!267)))))

(assert (=> d!330156 (= (subseq!186 (slice!138 lt!392604 from!787 to!267) lt!392604) e!738318)))

(declare-fun b!1154645 () Bool)

(declare-fun e!738316 () Bool)

(assert (=> b!1154645 (= e!738318 e!738316)))

(declare-fun res!519445 () Bool)

(assert (=> b!1154645 (=> (not res!519445) (not e!738316))))

(assert (=> b!1154645 (= res!519445 (is-Cons!11174 lt!392604))))

(declare-fun b!1154648 () Bool)

(declare-fun e!738315 () Bool)

(assert (=> b!1154648 (= e!738315 (subseq!186 (slice!138 lt!392604 from!787 to!267) (t!108782 lt!392604)))))

(declare-fun b!1154646 () Bool)

(assert (=> b!1154646 (= e!738316 e!738315)))

(declare-fun res!519448 () Bool)

(assert (=> b!1154646 (=> res!519448 e!738315)))

(declare-fun e!738317 () Bool)

(assert (=> b!1154646 (= res!519448 e!738317)))

(declare-fun res!519447 () Bool)

(assert (=> b!1154646 (=> (not res!519447) (not e!738317))))

(assert (=> b!1154646 (= res!519447 (= (h!16575 (slice!138 lt!392604 from!787 to!267)) (h!16575 lt!392604)))))

(declare-fun b!1154647 () Bool)

(assert (=> b!1154647 (= e!738317 (subseq!186 (t!108782 (slice!138 lt!392604 from!787 to!267)) (t!108782 lt!392604)))))

(assert (= (and d!330156 (not res!519446)) b!1154645))

(assert (= (and b!1154645 res!519445) b!1154646))

(assert (= (and b!1154646 res!519447) b!1154647))

(assert (= (and b!1154646 (not res!519448)) b!1154648))

(assert (=> b!1154648 m!1321565))

(declare-fun m!1321731 () Bool)

(assert (=> b!1154648 m!1321731))

(declare-fun m!1321733 () Bool)

(assert (=> b!1154647 m!1321733))

(assert (=> b!1154432 d!330156))

(declare-fun d!330158 () Bool)

(declare-fun take!35 (List!11198 Int) List!11198)

(declare-fun drop!437 (List!11198 Int) List!11198)

(assert (=> d!330158 (= (slice!138 lt!392604 from!787 to!267) (take!35 (drop!437 lt!392604 from!787) (- to!267 from!787)))))

(declare-fun bs!282785 () Bool)

(assert (= bs!282785 d!330158))

(declare-fun m!1321735 () Bool)

(assert (=> bs!282785 m!1321735))

(assert (=> bs!282785 m!1321735))

(declare-fun m!1321737 () Bool)

(assert (=> bs!282785 m!1321737))

(assert (=> b!1154432 d!330158))

(declare-fun d!330160 () Bool)

(assert (=> d!330160 (subseq!186 (slice!138 lt!392604 from!787 to!267) lt!392604)))

(declare-fun lt!392651 () Unit!17217)

(declare-fun choose!7411 (List!11198 Int Int) Unit!17217)

(assert (=> d!330160 (= lt!392651 (choose!7411 lt!392604 from!787 to!267))))

(declare-fun e!738321 () Bool)

(assert (=> d!330160 e!738321))

(declare-fun res!519451 () Bool)

(assert (=> d!330160 (=> (not res!519451) (not e!738321))))

(assert (=> d!330160 (= res!519451 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!330160 (= (lemmaSliceSubseq!27 lt!392604 from!787 to!267) lt!392651)))

(declare-fun b!1154651 () Bool)

(assert (=> b!1154651 (= e!738321 (<= to!267 (size!8804 lt!392604)))))

(assert (= (and d!330160 res!519451) b!1154651))

(assert (=> d!330160 m!1321565))

(assert (=> d!330160 m!1321565))

(assert (=> d!330160 m!1321567))

(declare-fun m!1321739 () Bool)

(assert (=> d!330160 m!1321739))

(declare-fun m!1321741 () Bool)

(assert (=> b!1154651 m!1321741))

(assert (=> b!1154432 d!330160))

(declare-fun b!1154662 () Bool)

(declare-fun b_free!27633 () Bool)

(declare-fun b_next!28337 () Bool)

(assert (=> b!1154662 (= b_free!27633 (not b_next!28337))))

(declare-fun tp!332915 () Bool)

(declare-fun b_and!80509 () Bool)

(assert (=> b!1154662 (= tp!332915 b_and!80509)))

(declare-fun b_free!27635 () Bool)

(declare-fun b_next!28339 () Bool)

(assert (=> b!1154662 (= b_free!27635 (not b_next!28339))))

(declare-fun tp!332913 () Bool)

(declare-fun b_and!80511 () Bool)

(assert (=> b!1154662 (= tp!332913 b_and!80511)))

(declare-fun e!738333 () Bool)

(assert (=> b!1154662 (= e!738333 (and tp!332915 tp!332913))))

(declare-fun e!738331 () Bool)

(declare-fun tp!332914 () Bool)

(declare-fun b!1154661 () Bool)

(declare-fun inv!14671 (String!13570) Bool)

(declare-fun inv!14682 (TokenValueInjection!3692) Bool)

(assert (=> b!1154661 (= e!738331 (and tp!332914 (inv!14671 (tag!2192 (h!16576 (rules!9397 thiss!10527)))) (inv!14682 (transformation!1930 (h!16576 (rules!9397 thiss!10527)))) e!738333))))

(declare-fun b!1154660 () Bool)

(declare-fun e!738330 () Bool)

(declare-fun tp!332916 () Bool)

(assert (=> b!1154660 (= e!738330 (and e!738331 tp!332916))))

(assert (=> b!1154429 (= tp!332898 e!738330)))

(assert (= b!1154661 b!1154662))

(assert (= b!1154660 b!1154661))

(assert (= (and b!1154429 (is-Cons!11175 (rules!9397 thiss!10527))) b!1154660))

(declare-fun m!1321743 () Bool)

(assert (=> b!1154661 m!1321743))

(declare-fun m!1321745 () Bool)

(assert (=> b!1154661 m!1321745))

(declare-fun b!1154671 () Bool)

(declare-fun tp!332924 () Bool)

(declare-fun e!738338 () Bool)

(declare-fun tp!332923 () Bool)

(assert (=> b!1154671 (= e!738338 (and (inv!14675 (left!9732 (c!193969 (tokens!1529 thiss!10527)))) tp!332924 (inv!14675 (right!10062 (c!193969 (tokens!1529 thiss!10527)))) tp!332923))))

(declare-fun b!1154673 () Bool)

(declare-fun e!738339 () Bool)

(declare-fun tp!332925 () Bool)

(assert (=> b!1154673 (= e!738339 tp!332925)))

(declare-fun b!1154672 () Bool)

(declare-fun inv!14683 (IArray!7251) Bool)

(assert (=> b!1154672 (= e!738338 (and (inv!14683 (xs!6328 (c!193969 (tokens!1529 thiss!10527)))) e!738339))))

(assert (=> b!1154431 (= tp!332897 (and (inv!14675 (c!193969 (tokens!1529 thiss!10527))) e!738338))))

(assert (= (and b!1154431 (is-Node!3623 (c!193969 (tokens!1529 thiss!10527)))) b!1154671))

(assert (= b!1154672 b!1154673))

(assert (= (and b!1154431 (is-Leaf!5599 (c!193969 (tokens!1529 thiss!10527)))) b!1154672))

(declare-fun m!1321747 () Bool)

(assert (=> b!1154671 m!1321747))

(declare-fun m!1321749 () Bool)

(assert (=> b!1154671 m!1321749))

(declare-fun m!1321751 () Bool)

(assert (=> b!1154672 m!1321751))

(assert (=> b!1154431 m!1321559))

(declare-fun b!1154682 () Bool)

(declare-fun e!738344 () Bool)

(assert (=> b!1154682 (= e!738344 true)))

(declare-fun b!1154684 () Bool)

(declare-fun e!738345 () Bool)

(assert (=> b!1154684 (= e!738345 true)))

(declare-fun b!1154683 () Bool)

(assert (=> b!1154683 (= e!738344 e!738345)))

(assert (=> b!1154444 e!738344))

(assert (= (and b!1154444 (is-Node!3623 (c!193969 (tokens!1529 thiss!10527)))) b!1154682))

(assert (= b!1154683 b!1154684))

(assert (= (and b!1154444 (is-Leaf!5599 (c!193969 (tokens!1529 thiss!10527)))) b!1154683))

(declare-fun b!1154687 () Bool)

(declare-fun e!738348 () Bool)

(assert (=> b!1154687 (= e!738348 true)))

(declare-fun b!1154686 () Bool)

(declare-fun e!738347 () Bool)

(assert (=> b!1154686 (= e!738347 e!738348)))

(declare-fun b!1154685 () Bool)

(declare-fun e!738346 () Bool)

(assert (=> b!1154685 (= e!738346 e!738347)))

(assert (=> b!1154443 e!738346))

(assert (= b!1154686 b!1154687))

(assert (= b!1154685 b!1154686))

(assert (= (and b!1154443 (is-Cons!11175 (rules!9397 thiss!10527))) b!1154685))

(assert (=> b!1154687 (< (dynLambda!4930 order!6819 (toValue!3031 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46480))))

(assert (=> b!1154687 (< (dynLambda!4932 order!6823 (toChars!2890 (transformation!1930 (h!16576 (rules!9397 thiss!10527))))) (dynLambda!4931 order!6821 lambda!46480))))

(push 1)

(assert (not b!1154682))

(assert (not b!1154564))

(assert (not b!1154673))

(assert (not b!1154501))

(assert (not d!330110))

(assert (not d!330160))

(assert (not b!1154502))

(assert (not b!1154598))

(assert (not d!330144))

(assert (not b!1154634))

(assert (not d!330134))

(assert (not b!1154589))

(assert (not d!330158))

(assert b_and!80509)

(assert (not b!1154617))

(assert (not b!1154660))

(assert (not d!330142))

(assert (not b_next!28337))

(assert (not b!1154588))

(assert (not b!1154585))

(assert (not d!330152))

(assert (not d!330112))

(assert (not b!1154684))

(assert (not b!1154587))

(assert (not b!1154431))

(assert (not b!1154560))

(assert (not b!1154648))

(assert (not b!1154651))

(assert (not b!1154685))

(assert (not b!1154631))

(assert (not b!1154586))

(assert (not b!1154672))

(assert (not d!330102))

(assert b_and!80511)

(assert (not b!1154636))

(assert (not b!1154661))

(assert (not b!1154600))

(assert (not b!1154618))

(assert (not b!1154491))

(assert (not b!1154632))

(assert (not d!330148))

(assert (not b!1154616))

(assert (not b!1154561))

(assert (not d!330106))

(assert (not d!330132))

(assert (not b!1154500))

(assert (not b_next!28339))

(assert (not b!1154482))

(assert (not b!1154633))

(assert (not b!1154559))

(assert (not b!1154647))

(assert (not d!330114))

(assert (not b!1154671))

(assert (not b!1154635))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80509)

(assert b_and!80511)

(assert (not b_next!28337))

(assert (not b_next!28339))

(check-sat)

(pop 1)

