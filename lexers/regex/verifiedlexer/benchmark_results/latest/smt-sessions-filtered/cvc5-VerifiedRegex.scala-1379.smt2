; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!73374 () Bool)

(assert start!73374)

(assert (=> start!73374 true))

(declare-fun b!821232 () Bool)

(assert (=> b!821232 true))

(assert (=> b!821232 true))

(declare-fun b!821233 () Bool)

(assert (=> b!821233 true))

(declare-fun b!821244 () Bool)

(declare-fun e!542594 () Bool)

(declare-datatypes ((List!8842 0))(
  ( (Nil!8826) (Cons!8826 (h!14227 (_ BitVec 16)) (t!93029 List!8842)) )
))
(declare-datatypes ((IArray!5893 0))(
  ( (IArray!5894 (innerList!3004 List!8842)) )
))
(declare-datatypes ((Conc!2944 0))(
  ( (Node!2944 (left!6551 Conc!2944) (right!6881 Conc!2944) (csize!6118 Int) (cheight!3155 Int)) (Leaf!4324 (xs!5633 IArray!5893) (csize!6119 Int)) (Empty!2944) )
))
(declare-datatypes ((BalanceConc!5902 0))(
  ( (BalanceConc!5903 (c!133097 Conc!2944)) )
))
(declare-fun x!176763 () BalanceConc!5902)

(declare-fun tp!256687 () Bool)

(declare-fun inv!11212 (Conc!2944) Bool)

(assert (=> b!821244 (= e!542594 (and (inv!11212 (c!133097 x!176763)) tp!256687))))

(declare-datatypes ((BytesLiteralValueInjection!20 0))(
  ( (BytesLiteralValueInjection!21) )
))
(declare-fun thiss!4819 () BytesLiteralValueInjection!20)

(declare-fun inst!676 () Bool)

(declare-fun inv!11213 (BalanceConc!5902) Bool)

(declare-fun list!3505 (BalanceConc!5902) List!8842)

(declare-datatypes ((TokenValue!1717 0))(
  ( (FloatLiteralValue!3434 (text!12464 List!8842)) (TokenValueExt!1716 (__x!7179 Int)) (Broken!8585 (value!53654 List!8842)) (Object!1732) (End!1717) (Def!1717) (Underscore!1717) (Match!1717) (Else!1717) (Error!1717) (Case!1717) (If!1717) (Extends!1717) (Abstract!1717) (Class!1717) (Val!1717) (DelimiterValue!3434 (del!1777 List!8842)) (KeywordValue!1723 (value!53655 List!8842)) (CommentValue!3434 (value!53656 List!8842)) (WhitespaceValue!3434 (value!53657 List!8842)) (IndentationValue!1717 (value!53658 List!8842)) (String!10376) (Int32!1717) (Broken!8586 (value!53659 List!8842)) (Boolean!1718) (Unit!13347) (OperatorValue!1720 (op!1777 List!8842)) (IdentifierValue!3434 (value!53660 List!8842)) (IdentifierValue!3435 (value!53661 List!8842)) (WhitespaceValue!3435 (value!53662 List!8842)) (True!3434) (False!3434) (Broken!8587 (value!53663 List!8842)) (Broken!8588 (value!53664 List!8842)) (True!3435) (RightBrace!1717) (RightBracket!1717) (Colon!1717) (Null!1717) (Comma!1717) (LeftBracket!1717) (False!3435) (LeftBrace!1717) (ImaginaryLiteralValue!1717 (text!12465 List!8842)) (StringLiteralValue!5151 (value!53665 List!8842)) (EOFValue!1717 (value!53666 List!8842)) (IdentValue!1717 (value!53667 List!8842)) (DelimiterValue!3435 (value!53668 List!8842)) (DedentValue!1717 (value!53669 List!8842)) (NewLineValue!1717 (value!53670 List!8842)) (IntegerValue!5151 (value!53671 (_ BitVec 32)) (text!12466 List!8842)) (IntegerValue!5152 (value!53672 Int) (text!12467 List!8842)) (Times!1717) (Or!1717) (Equal!1717) (Minus!1717) (Broken!8589 (value!53673 List!8842)) (And!1717) (Div!1717) (LessEqual!1717) (Mod!1717) (Concat!3747) (Not!1717) (Plus!1717) (SpaceValue!1717 (value!53674 List!8842)) (IntegerValue!5153 (value!53675 Int) (text!12468 List!8842)) (StringLiteralValue!5152 (text!12469 List!8842)) (FloatLiteralValue!3435 (text!12470 List!8842)) (BytesLiteralValue!1717 (value!53676 List!8842)) (CommentValue!3435 (value!53677 List!8842)) (StringLiteralValue!5153 (value!53678 List!8842)) (ErrorTokenValue!1717 (msg!1778 List!8842)) )
))
(declare-fun toCharacters!23 (BytesLiteralValueInjection!20 TokenValue!1717) BalanceConc!5902)

(declare-fun toValue!30 (BytesLiteralValueInjection!20 BalanceConc!5902) TokenValue!1717)

(assert (=> start!73374 (= inst!676 (=> (and (inv!11213 x!176763) e!542594) (= (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (list!3505 x!176763))))))

(assert (= start!73374 b!821244))

(declare-fun m!1062317 () Bool)

(assert (=> b!821244 m!1062317))

(declare-fun m!1062319 () Bool)

(assert (=> start!73374 m!1062319))

(declare-fun m!1062321 () Bool)

(assert (=> start!73374 m!1062321))

(declare-fun m!1062323 () Bool)

(assert (=> start!73374 m!1062323))

(declare-fun m!1062325 () Bool)

(assert (=> start!73374 m!1062325))

(assert (=> start!73374 m!1062321))

(declare-fun m!1062327 () Bool)

(assert (=> start!73374 m!1062327))

(assert (=> start!73374 m!1062319))

(declare-fun res!379016 () Bool)

(declare-fun e!542597 () Bool)

(assert (=> b!821233 (=> res!379016 e!542597)))

(declare-fun x!176764 () BalanceConc!5902)

(declare-fun x!176765 () BalanceConc!5902)

(assert (=> b!821233 (= res!379016 (not (= (list!3505 x!176764) (list!3505 x!176765))))))

(declare-fun inst!677 () Bool)

(declare-fun e!542596 () Bool)

(declare-fun e!542595 () Bool)

(assert (=> b!821233 (= inst!677 (=> (and (inv!11213 x!176764) e!542596 (inv!11213 x!176765) e!542595) e!542597))))

(declare-fun b!821245 () Bool)

(assert (=> b!821245 (= e!542597 (= (toValue!30 thiss!4819 x!176764) (toValue!30 thiss!4819 x!176765)))))

(declare-fun b!821246 () Bool)

(declare-fun tp!256689 () Bool)

(assert (=> b!821246 (= e!542596 (and (inv!11212 (c!133097 x!176764)) tp!256689))))

(declare-fun b!821247 () Bool)

(declare-fun tp!256688 () Bool)

(assert (=> b!821247 (= e!542595 (and (inv!11212 (c!133097 x!176765)) tp!256688))))

(assert (= (and b!821233 (not res!379016)) b!821245))

(assert (= b!821233 b!821246))

(assert (= b!821233 b!821247))

(declare-fun m!1062329 () Bool)

(assert (=> b!821233 m!1062329))

(declare-fun m!1062331 () Bool)

(assert (=> b!821233 m!1062331))

(declare-fun m!1062333 () Bool)

(assert (=> b!821233 m!1062333))

(declare-fun m!1062335 () Bool)

(assert (=> b!821233 m!1062335))

(declare-fun m!1062337 () Bool)

(assert (=> b!821245 m!1062337))

(declare-fun m!1062339 () Bool)

(assert (=> b!821245 m!1062339))

(declare-fun m!1062341 () Bool)

(assert (=> b!821246 m!1062341))

(declare-fun m!1062343 () Bool)

(assert (=> b!821247 m!1062343))

(declare-fun bs!229021 () Bool)

(declare-fun neg-inst!677 () Bool)

(declare-fun s!151353 () Bool)

(assert (= bs!229021 (and neg-inst!677 s!151353)))

(assert (=> bs!229021 (=> true (= (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (list!3505 x!176763)))))

(assert (=> m!1062323 m!1062319))

(assert (=> m!1062323 m!1062321))

(assert (=> m!1062323 m!1062327))

(assert (=> m!1062323 s!151353))

(assert (=> m!1062319 s!151353))

(declare-fun bs!229022 () Bool)

(assert (= bs!229022 (and neg-inst!677 start!73374)))

(assert (=> bs!229022 (= true inst!676)))

(declare-fun bs!229023 () Bool)

(declare-fun neg-inst!676 () Bool)

(declare-fun s!151355 () Bool)

(assert (= bs!229023 (and neg-inst!676 s!151355)))

(declare-fun res!379017 () Bool)

(declare-fun e!542598 () Bool)

(assert (=> bs!229023 (=> res!379017 e!542598)))

(assert (=> bs!229023 (= res!379017 (not (= (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))))))))

(assert (=> bs!229023 (=> true e!542598)))

(declare-fun b!821248 () Bool)

(assert (=> b!821248 (= e!542598 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763)))))))

(assert (= (and bs!229023 (not res!379017)) b!821248))

(assert (=> m!1062327 s!151355))

(assert (=> m!1062327 s!151355))

(declare-fun bs!229024 () Bool)

(declare-fun s!151357 () Bool)

(assert (= bs!229024 (and neg-inst!676 s!151357)))

(declare-fun res!379018 () Bool)

(declare-fun e!542599 () Bool)

(assert (=> bs!229024 (=> res!379018 e!542599)))

(assert (=> bs!229024 (= res!379018 (not (= (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (list!3505 x!176765))))))

(assert (=> bs!229024 (=> true e!542599)))

(declare-fun b!821249 () Bool)

(assert (=> b!821249 (= e!542599 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (toValue!30 thiss!4819 x!176765)))))

(assert (= (and bs!229024 (not res!379018)) b!821249))

(declare-fun bs!229025 () Bool)

(assert (= bs!229025 (and m!1062331 m!1062327)))

(assert (=> bs!229025 m!1062327))

(assert (=> bs!229025 m!1062331))

(assert (=> bs!229025 s!151357))

(declare-fun bs!229026 () Bool)

(declare-fun s!151359 () Bool)

(assert (= bs!229026 (and neg-inst!676 s!151359)))

(declare-fun res!379019 () Bool)

(declare-fun e!542600 () Bool)

(assert (=> bs!229026 (=> res!379019 e!542600)))

(assert (=> bs!229026 (= res!379019 (not (= (list!3505 x!176765) (list!3505 x!176765))))))

(assert (=> bs!229026 (=> true e!542600)))

(declare-fun b!821250 () Bool)

(assert (=> b!821250 (= e!542600 (= (toValue!30 thiss!4819 x!176765) (toValue!30 thiss!4819 x!176765)))))

(assert (= (and bs!229026 (not res!379019)) b!821250))

(assert (=> m!1062331 s!151359))

(declare-fun bs!229027 () Bool)

(declare-fun s!151361 () Bool)

(assert (= bs!229027 (and neg-inst!676 s!151361)))

(declare-fun res!379020 () Bool)

(declare-fun e!542601 () Bool)

(assert (=> bs!229027 (=> res!379020 e!542601)))

(assert (=> bs!229027 (= res!379020 (not (= (list!3505 x!176765) (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))))))))

(assert (=> bs!229027 (=> true e!542601)))

(declare-fun b!821251 () Bool)

(assert (=> b!821251 (= e!542601 (= (toValue!30 thiss!4819 x!176765) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763)))))))

(assert (= (and bs!229027 (not res!379020)) b!821251))

(assert (=> bs!229025 m!1062331))

(assert (=> bs!229025 m!1062327))

(assert (=> bs!229025 s!151361))

(assert (=> m!1062331 s!151359))

(declare-fun bs!229028 () Bool)

(declare-fun s!151363 () Bool)

(assert (= bs!229028 (and neg-inst!676 s!151363)))

(declare-fun res!379021 () Bool)

(declare-fun e!542602 () Bool)

(assert (=> bs!229028 (=> res!379021 e!542602)))

(assert (=> bs!229028 (= res!379021 (not (= (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (list!3505 x!176764))))))

(assert (=> bs!229028 (=> true e!542602)))

(declare-fun b!821252 () Bool)

(assert (=> b!821252 (= e!542602 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (toValue!30 thiss!4819 x!176764)))))

(assert (= (and bs!229028 (not res!379021)) b!821252))

(declare-fun bs!229029 () Bool)

(assert (= bs!229029 (and m!1062329 m!1062327)))

(assert (=> bs!229029 m!1062327))

(assert (=> bs!229029 m!1062329))

(assert (=> bs!229029 s!151363))

(declare-fun bs!229030 () Bool)

(declare-fun s!151365 () Bool)

(assert (= bs!229030 (and neg-inst!676 s!151365)))

(declare-fun res!379022 () Bool)

(declare-fun e!542603 () Bool)

(assert (=> bs!229030 (=> res!379022 e!542603)))

(assert (=> bs!229030 (= res!379022 (not (= (list!3505 x!176765) (list!3505 x!176764))))))

(assert (=> bs!229030 (=> true e!542603)))

(declare-fun b!821253 () Bool)

(assert (=> b!821253 (= e!542603 (= (toValue!30 thiss!4819 x!176765) (toValue!30 thiss!4819 x!176764)))))

(assert (= (and bs!229030 (not res!379022)) b!821253))

(declare-fun bs!229031 () Bool)

(assert (= bs!229031 (and m!1062329 m!1062331)))

(assert (=> bs!229031 m!1062331))

(assert (=> bs!229031 m!1062329))

(assert (=> bs!229031 s!151365))

(declare-fun bs!229032 () Bool)

(declare-fun s!151367 () Bool)

(assert (= bs!229032 (and neg-inst!676 s!151367)))

(declare-fun res!379023 () Bool)

(declare-fun e!542604 () Bool)

(assert (=> bs!229032 (=> res!379023 e!542604)))

(assert (=> bs!229032 (= res!379023 (not (= (list!3505 x!176764) (list!3505 x!176764))))))

(assert (=> bs!229032 (=> true e!542604)))

(declare-fun b!821254 () Bool)

(assert (=> b!821254 (= e!542604 (= (toValue!30 thiss!4819 x!176764) (toValue!30 thiss!4819 x!176764)))))

(assert (= (and bs!229032 (not res!379023)) b!821254))

(assert (=> m!1062329 s!151367))

(declare-fun bs!229033 () Bool)

(declare-fun s!151369 () Bool)

(assert (= bs!229033 (and neg-inst!676 s!151369)))

(declare-fun res!379024 () Bool)

(declare-fun e!542605 () Bool)

(assert (=> bs!229033 (=> res!379024 e!542605)))

(assert (=> bs!229033 (= res!379024 (not (= (list!3505 x!176764) (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))))))))

(assert (=> bs!229033 (=> true e!542605)))

(declare-fun b!821255 () Bool)

(assert (=> b!821255 (= e!542605 (= (toValue!30 thiss!4819 x!176764) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763)))))))

(assert (= (and bs!229033 (not res!379024)) b!821255))

(assert (=> bs!229029 m!1062329))

(assert (=> bs!229029 m!1062327))

(assert (=> bs!229029 s!151369))

(declare-fun bs!229034 () Bool)

(declare-fun s!151371 () Bool)

(assert (= bs!229034 (and neg-inst!676 s!151371)))

(declare-fun res!379025 () Bool)

(declare-fun e!542606 () Bool)

(assert (=> bs!229034 (=> res!379025 e!542606)))

(assert (=> bs!229034 (= res!379025 (not (= (list!3505 x!176764) (list!3505 x!176765))))))

(assert (=> bs!229034 (=> true e!542606)))

(declare-fun b!821256 () Bool)

(assert (=> b!821256 (= e!542606 (= (toValue!30 thiss!4819 x!176764) (toValue!30 thiss!4819 x!176765)))))

(assert (= (and bs!229034 (not res!379025)) b!821256))

(assert (=> bs!229031 m!1062329))

(assert (=> bs!229031 m!1062331))

(assert (=> bs!229031 s!151371))

(assert (=> m!1062329 s!151367))

(declare-fun bs!229035 () Bool)

(declare-fun s!151373 () Bool)

(assert (= bs!229035 (and neg-inst!676 s!151373)))

(declare-fun res!379026 () Bool)

(declare-fun e!542607 () Bool)

(assert (=> bs!229035 (=> res!379026 e!542607)))

(assert (=> bs!229035 (= res!379026 (not (= (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (list!3505 x!176763))))))

(assert (=> bs!229035 (=> true e!542607)))

(declare-fun b!821257 () Bool)

(assert (=> b!821257 (= e!542607 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (toValue!30 thiss!4819 x!176763)))))

(assert (= (and bs!229035 (not res!379026)) b!821257))

(declare-fun bs!229036 () Bool)

(assert (= bs!229036 (and m!1062323 m!1062327)))

(assert (=> bs!229036 m!1062327))

(assert (=> bs!229036 m!1062323))

(assert (=> bs!229036 s!151373))

(declare-fun bs!229037 () Bool)

(declare-fun s!151375 () Bool)

(assert (= bs!229037 (and neg-inst!676 s!151375)))

(declare-fun res!379027 () Bool)

(declare-fun e!542608 () Bool)

(assert (=> bs!229037 (=> res!379027 e!542608)))

(assert (=> bs!229037 (= res!379027 (not (= (list!3505 x!176764) (list!3505 x!176763))))))

(assert (=> bs!229037 (=> true e!542608)))

(declare-fun b!821258 () Bool)

(assert (=> b!821258 (= e!542608 (= (toValue!30 thiss!4819 x!176764) (toValue!30 thiss!4819 x!176763)))))

(assert (= (and bs!229037 (not res!379027)) b!821258))

(declare-fun bs!229038 () Bool)

(assert (= bs!229038 (and m!1062323 m!1062329)))

(assert (=> bs!229038 m!1062329))

(assert (=> bs!229038 m!1062323))

(assert (=> bs!229038 s!151375))

(declare-fun bs!229039 () Bool)

(declare-fun s!151377 () Bool)

(assert (= bs!229039 (and neg-inst!676 s!151377)))

(declare-fun res!379028 () Bool)

(declare-fun e!542609 () Bool)

(assert (=> bs!229039 (=> res!379028 e!542609)))

(assert (=> bs!229039 (= res!379028 (not (= (list!3505 x!176765) (list!3505 x!176763))))))

(assert (=> bs!229039 (=> true e!542609)))

(declare-fun b!821259 () Bool)

(assert (=> b!821259 (= e!542609 (= (toValue!30 thiss!4819 x!176765) (toValue!30 thiss!4819 x!176763)))))

(assert (= (and bs!229039 (not res!379028)) b!821259))

(declare-fun bs!229040 () Bool)

(assert (= bs!229040 (and m!1062323 m!1062331)))

(assert (=> bs!229040 m!1062331))

(assert (=> bs!229040 m!1062323))

(assert (=> bs!229040 s!151377))

(declare-fun bs!229041 () Bool)

(declare-fun s!151379 () Bool)

(assert (= bs!229041 (and neg-inst!676 s!151379)))

(declare-fun res!379029 () Bool)

(declare-fun e!542610 () Bool)

(assert (=> bs!229041 (=> res!379029 e!542610)))

(assert (=> bs!229041 (= res!379029 (not (= (list!3505 x!176763) (list!3505 x!176763))))))

(assert (=> bs!229041 (=> true e!542610)))

(declare-fun b!821260 () Bool)

(assert (=> b!821260 (= e!542610 (= (toValue!30 thiss!4819 x!176763) (toValue!30 thiss!4819 x!176763)))))

(assert (= (and bs!229041 (not res!379029)) b!821260))

(assert (=> m!1062323 s!151379))

(declare-fun bs!229042 () Bool)

(declare-fun s!151381 () Bool)

(assert (= bs!229042 (and neg-inst!676 s!151381)))

(declare-fun res!379030 () Bool)

(declare-fun e!542611 () Bool)

(assert (=> bs!229042 (=> res!379030 e!542611)))

(assert (=> bs!229042 (= res!379030 (not (= (list!3505 x!176763) (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))))))))

(assert (=> bs!229042 (=> true e!542611)))

(declare-fun b!821261 () Bool)

(assert (=> b!821261 (= e!542611 (= (toValue!30 thiss!4819 x!176763) (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763)))))))

(assert (= (and bs!229042 (not res!379030)) b!821261))

(assert (=> bs!229036 m!1062323))

(assert (=> bs!229036 m!1062327))

(assert (=> bs!229036 s!151381))

(declare-fun bs!229043 () Bool)

(declare-fun s!151383 () Bool)

(assert (= bs!229043 (and neg-inst!676 s!151383)))

(declare-fun res!379031 () Bool)

(declare-fun e!542612 () Bool)

(assert (=> bs!229043 (=> res!379031 e!542612)))

(assert (=> bs!229043 (= res!379031 (not (= (list!3505 x!176763) (list!3505 x!176764))))))

(assert (=> bs!229043 (=> true e!542612)))

(declare-fun b!821262 () Bool)

(assert (=> b!821262 (= e!542612 (= (toValue!30 thiss!4819 x!176763) (toValue!30 thiss!4819 x!176764)))))

(assert (= (and bs!229043 (not res!379031)) b!821262))

(assert (=> bs!229038 m!1062323))

(assert (=> bs!229038 m!1062329))

(assert (=> bs!229038 s!151383))

(declare-fun bs!229044 () Bool)

(declare-fun s!151385 () Bool)

(assert (= bs!229044 (and neg-inst!676 s!151385)))

(declare-fun res!379032 () Bool)

(declare-fun e!542613 () Bool)

(assert (=> bs!229044 (=> res!379032 e!542613)))

(assert (=> bs!229044 (= res!379032 (not (= (list!3505 x!176763) (list!3505 x!176765))))))

(assert (=> bs!229044 (=> true e!542613)))

(declare-fun b!821263 () Bool)

(assert (=> b!821263 (= e!542613 (= (toValue!30 thiss!4819 x!176763) (toValue!30 thiss!4819 x!176765)))))

(assert (= (and bs!229044 (not res!379032)) b!821263))

(assert (=> bs!229040 m!1062323))

(assert (=> bs!229040 m!1062331))

(assert (=> bs!229040 s!151385))

(assert (=> m!1062323 s!151379))

(declare-fun bs!229045 () Bool)

(assert (= bs!229045 (and m!1062319 m!1062323)))

(assert (=> bs!229045 s!151379))

(declare-fun bs!229046 () Bool)

(assert (= bs!229046 (and m!1062319 m!1062327)))

(assert (=> bs!229046 s!151373))

(assert (=> m!1062319 s!151379))

(declare-fun bs!229047 () Bool)

(assert (= bs!229047 (and m!1062319 m!1062331)))

(assert (=> bs!229047 s!151377))

(declare-fun bs!229048 () Bool)

(assert (= bs!229048 (and m!1062319 m!1062329)))

(assert (=> bs!229048 s!151375))

(assert (=> bs!229046 s!151381))

(assert (=> bs!229045 s!151379))

(assert (=> bs!229047 s!151385))

(assert (=> bs!229048 s!151383))

(assert (=> m!1062319 s!151379))

(declare-fun bs!229049 () Bool)

(assert (= bs!229049 (and m!1062339 m!1062331)))

(assert (=> bs!229049 s!151359))

(declare-fun bs!229050 () Bool)

(assert (= bs!229050 (and m!1062339 m!1062323 m!1062319)))

(assert (=> bs!229050 s!151385))

(assert (=> m!1062339 s!151359))

(declare-fun bs!229051 () Bool)

(assert (= bs!229051 (and m!1062339 m!1062329)))

(assert (=> bs!229051 s!151371))

(declare-fun bs!229052 () Bool)

(assert (= bs!229052 (and m!1062339 m!1062327)))

(assert (=> bs!229052 s!151357))

(assert (=> bs!229049 s!151359))

(assert (=> bs!229052 s!151361))

(assert (=> bs!229050 s!151377))

(assert (=> m!1062339 s!151359))

(assert (=> bs!229051 s!151365))

(declare-fun bs!229053 () Bool)

(assert (= bs!229053 (and m!1062337 m!1062327)))

(assert (=> bs!229053 s!151363))

(declare-fun bs!229054 () Bool)

(assert (= bs!229054 (and m!1062337 m!1062323 m!1062319)))

(assert (=> bs!229054 s!151383))

(declare-fun bs!229055 () Bool)

(assert (= bs!229055 (and m!1062337 m!1062331 m!1062339)))

(assert (=> bs!229055 s!151365))

(assert (=> m!1062337 s!151367))

(declare-fun bs!229056 () Bool)

(assert (= bs!229056 (and m!1062337 m!1062329)))

(assert (=> bs!229056 s!151367))

(assert (=> bs!229053 s!151369))

(assert (=> bs!229054 s!151375))

(assert (=> m!1062337 s!151367))

(assert (=> bs!229055 s!151371))

(assert (=> bs!229056 s!151367))

(declare-fun bs!229057 () Bool)

(assert (= bs!229057 (and neg-inst!676 b!821233)))

(assert (=> bs!229057 (= true inst!677)))

(declare-fun e!542591 () Bool)

(declare-fun e!542592 () Bool)

(assert (=> b!821233 (= e!542591 e!542592)))

(declare-fun res!379013 () Bool)

(assert (=> b!821233 (=> res!379013 e!542592)))

(declare-fun lambda!24579 () Int)

(declare-fun Forall2!302 (Int) Bool)

(assert (=> b!821233 (= res!379013 (not (Forall2!302 lambda!24579)))))

(assert (=> b!821233 (= (Forall2!302 lambda!24579) inst!677)))

(declare-fun b!821235 () Bool)

(declare-fun e!542593 () Bool)

(declare-fun lambda!24578 () Int)

(declare-fun lambda!24577 () Int)

(declare-datatypes ((TokenValueInjection!3154 0))(
  ( (TokenValueInjection!3155 (toValue!2669 Int) (toChars!2528 Int)) )
))
(declare-fun inv!11214 (TokenValueInjection!3154) Bool)

(assert (=> b!821235 (= e!542593 (inv!11214 (TokenValueInjection!3155 lambda!24578 lambda!24577)))))

(declare-fun res!379015 () Bool)

(declare-fun e!542590 () Bool)

(assert (=> start!73374 (=> res!379015 e!542590)))

(declare-fun lambda!24576 () Int)

(declare-fun Forall!388 (Int) Bool)

(assert (=> start!73374 (= res!379015 (not (Forall!388 lambda!24576)))))

(assert (=> start!73374 (= (Forall!388 lambda!24576) inst!676)))

(assert (=> start!73374 (not e!542590)))

(assert (=> start!73374 true))

(declare-fun b!821234 () Bool)

(assert (=> b!821234 (= e!542592 e!542593)))

(declare-fun res!379012 () Bool)

(assert (=> b!821234 (=> res!379012 e!542593)))

(declare-fun equivClasses!604 (Int Int) Bool)

(assert (=> b!821234 (= res!379012 (not (equivClasses!604 lambda!24577 lambda!24578)))))

(assert (=> b!821234 (= (equivClasses!604 lambda!24577 lambda!24578) (Forall2!302 lambda!24579))))

(assert (=> b!821232 (= e!542590 e!542591)))

(declare-fun res!379014 () Bool)

(assert (=> b!821232 (=> res!379014 e!542591)))

(declare-fun semiInverseModEq!633 (Int Int) Bool)

(assert (=> b!821232 (= res!379014 (not (semiInverseModEq!633 lambda!24577 lambda!24578)))))

(assert (=> b!821232 (= (semiInverseModEq!633 lambda!24577 lambda!24578) (Forall!388 lambda!24576))))

(assert (= neg-inst!677 inst!676))

(assert (= (and start!73374 (not res!379015)) b!821232))

(assert (= (and b!821232 (not res!379014)) b!821233))

(assert (= neg-inst!676 inst!677))

(assert (= (and b!821233 (not res!379013)) b!821234))

(assert (= (and b!821234 (not res!379012)) b!821235))

(declare-fun m!1062345 () Bool)

(assert (=> b!821232 m!1062345))

(assert (=> b!821232 m!1062345))

(declare-fun m!1062347 () Bool)

(assert (=> b!821232 m!1062347))

(declare-fun m!1062349 () Bool)

(assert (=> b!821235 m!1062349))

(declare-fun m!1062351 () Bool)

(assert (=> b!821234 m!1062351))

(assert (=> b!821234 m!1062351))

(declare-fun m!1062353 () Bool)

(assert (=> b!821234 m!1062353))

(assert (=> start!73374 m!1062347))

(assert (=> start!73374 m!1062347))

(assert (=> b!821233 m!1062353))

(assert (=> b!821233 m!1062353))

(push 1)

(assert (not b!821249))

(assert (not bs!229034))

(assert (not bs!229039))

(assert (not start!73374))

(assert (not b!821250))

(assert (not b!821248))

(assert (not b!821234))

(assert (not b!821244))

(assert (not b!821258))

(assert (not b!821255))

(assert (not b!821253))

(assert (not b!821257))

(assert (not bs!229035))

(assert (not b!821245))

(assert (not b!821252))

(assert (not b!821262))

(assert (not b!821233))

(assert (not bs!229041))

(assert (not bs!229033))

(assert (not bs!229030))

(assert (not bs!229023))

(assert (not bs!229021))

(assert (not b!821261))

(assert (not b!821254))

(assert (not bs!229026))

(assert (not b!821263))

(assert (not b!821235))

(assert (not bs!229042))

(assert (not bs!229032))

(assert (not b!821247))

(assert (not b!821232))

(assert (not b!821256))

(assert (not b!821259))

(assert (not bs!229028))

(assert (not bs!229043))

(assert (not bs!229037))

(assert (not b!821246))

(assert (not bs!229027))

(assert (not b!821251))

(assert (not b!821260))

(assert (not bs!229024))

(assert (not bs!229044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!229092 () Bool)

(assert (= bs!229092 (and m!1062327 b!821248)))

(declare-fun m!1062393 () Bool)

(assert (=> bs!229092 m!1062393))

(assert (=> bs!229092 m!1062393))

(declare-fun bs!229093 () Bool)

(assert (= bs!229093 (and m!1062331 m!1062327 b!821249)))

(assert (=> bs!229093 m!1062393))

(assert (=> bs!229093 m!1062339))

(declare-fun bs!229094 () Bool)

(assert (= bs!229094 (and m!1062331 b!821250)))

(assert (=> bs!229094 m!1062339))

(assert (=> bs!229094 m!1062339))

(declare-fun bs!229095 () Bool)

(assert (= bs!229095 (and m!1062331 m!1062327 b!821251)))

(assert (=> bs!229095 m!1062339))

(assert (=> bs!229095 m!1062393))

(declare-fun bs!229096 () Bool)

(assert (= bs!229096 (and m!1062329 m!1062327 b!821252)))

(assert (=> bs!229096 m!1062393))

(assert (=> bs!229096 m!1062337))

(declare-fun bs!229097 () Bool)

(assert (= bs!229097 (and m!1062329 m!1062331 b!821253)))

(assert (=> bs!229097 m!1062339))

(assert (=> bs!229097 m!1062337))

(declare-fun bs!229098 () Bool)

(assert (= bs!229098 (and m!1062329 b!821254)))

(assert (=> bs!229098 m!1062337))

(assert (=> bs!229098 m!1062337))

(declare-fun bs!229099 () Bool)

(assert (= bs!229099 (and m!1062329 m!1062327 b!821255)))

(assert (=> bs!229099 m!1062337))

(assert (=> bs!229099 m!1062393))

(declare-fun bs!229100 () Bool)

(assert (= bs!229100 (and m!1062329 m!1062331 b!821256)))

(assert (=> bs!229100 m!1062337))

(assert (=> bs!229100 m!1062339))

(declare-fun bs!229101 () Bool)

(assert (= bs!229101 (and m!1062323 m!1062327 b!821257)))

(assert (=> bs!229101 m!1062393))

(assert (=> bs!229101 m!1062319))

(declare-fun bs!229102 () Bool)

(assert (= bs!229102 (and m!1062323 m!1062329 b!821258)))

(assert (=> bs!229102 m!1062337))

(assert (=> bs!229102 m!1062319))

(declare-fun bs!229103 () Bool)

(assert (= bs!229103 (and m!1062323 m!1062331 b!821259)))

(assert (=> bs!229103 m!1062339))

(assert (=> bs!229103 m!1062319))

(declare-fun bs!229104 () Bool)

(assert (= bs!229104 (and m!1062323 b!821260)))

(assert (=> bs!229104 m!1062319))

(assert (=> bs!229104 m!1062319))

(declare-fun bs!229105 () Bool)

(assert (= bs!229105 (and m!1062323 m!1062327 b!821261)))

(assert (=> bs!229105 m!1062319))

(assert (=> bs!229105 m!1062393))

(declare-fun bs!229106 () Bool)

(assert (= bs!229106 (and m!1062323 m!1062329 b!821262)))

(assert (=> bs!229106 m!1062319))

(assert (=> bs!229106 m!1062337))

(declare-fun bs!229107 () Bool)

(assert (= bs!229107 (and m!1062323 m!1062331 b!821263)))

(assert (=> bs!229107 m!1062319))

(assert (=> bs!229107 m!1062339))

(push 1)

(assert (not b!821249))

(assert (not bs!229034))

(assert (not bs!229039))

(assert (not start!73374))

(assert (not b!821250))

(assert (not b!821248))

(assert (not b!821234))

(assert (not b!821244))

(assert (not b!821258))

(assert (not b!821255))

(assert (not b!821253))

(assert (not b!821257))

(assert (not bs!229035))

(assert (not b!821245))

(assert (not b!821252))

(assert (not b!821262))

(assert (not b!821233))

(assert (not bs!229041))

(assert (not bs!229033))

(assert (not bs!229030))

(assert (not bs!229023))

(assert (not bs!229021))

(assert (not b!821261))

(assert (not b!821254))

(assert (not bs!229026))

(assert (not b!821263))

(assert (not b!821235))

(assert (not bs!229042))

(assert (not bs!229032))

(assert (not b!821247))

(assert (not b!821232))

(assert (not b!821256))

(assert (not b!821259))

(assert (not bs!229028))

(assert (not bs!229043))

(assert (not bs!229037))

(assert (not b!821246))

(assert (not bs!229027))

(assert (not b!821251))

(assert (not b!821260))

(assert (not bs!229024))

(assert (not bs!229044))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!258622 () Bool)

(declare-fun list!3507 (Conc!2944) List!8842)

(assert (=> d!258622 (= (list!3505 x!176764) (list!3507 (c!133097 x!176764)))))

(declare-fun bs!229118 () Bool)

(assert (= bs!229118 d!258622))

(declare-fun m!1062397 () Bool)

(assert (=> bs!229118 m!1062397))

(assert (=> bs!229037 d!258622))

(declare-fun d!258624 () Bool)

(assert (=> d!258624 (= (list!3505 x!176763) (list!3507 (c!133097 x!176763)))))

(declare-fun bs!229119 () Bool)

(assert (= bs!229119 d!258624))

(declare-fun m!1062399 () Bool)

(assert (=> bs!229119 m!1062399))

(assert (=> bs!229037 d!258624))

(declare-fun d!258626 () Bool)

(assert (=> d!258626 (= (list!3505 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (list!3507 (c!133097 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763)))))))

(declare-fun bs!229121 () Bool)

(assert (= bs!229121 d!258626))

(declare-fun m!1062401 () Bool)

(assert (=> bs!229121 m!1062401))

(assert (=> bs!229023 d!258626))

(declare-fun d!258628 () Bool)

(declare-fun efficientList!132 (BalanceConc!5902) List!8842)

(assert (=> d!258628 (= (toValue!30 thiss!4819 x!176764) (BytesLiteralValue!1717 (efficientList!132 x!176764)))))

(declare-fun bs!229127 () Bool)

(assert (= bs!229127 d!258628))

(declare-fun m!1062403 () Bool)

(assert (=> bs!229127 m!1062403))

(assert (=> b!821254 d!258628))

(assert (=> b!821233 d!258622))

(declare-fun d!258630 () Bool)

(declare-fun choose!4919 (Int) Bool)

(assert (=> d!258630 (= (Forall2!302 lambda!24579) (choose!4919 lambda!24579))))

(declare-fun bs!229128 () Bool)

(assert (= bs!229128 d!258630))

(declare-fun m!1062405 () Bool)

(assert (=> bs!229128 m!1062405))

(assert (=> b!821233 d!258630))

(declare-fun d!258632 () Bool)

(declare-fun isBalanced!802 (Conc!2944) Bool)

(assert (=> d!258632 (= (inv!11213 x!176765) (isBalanced!802 (c!133097 x!176765)))))

(declare-fun bs!229129 () Bool)

(assert (= bs!229129 d!258632))

(declare-fun m!1062407 () Bool)

(assert (=> bs!229129 m!1062407))

(assert (=> b!821233 d!258632))

(declare-fun d!258634 () Bool)

(assert (=> d!258634 (= (inv!11213 x!176764) (isBalanced!802 (c!133097 x!176764)))))

(declare-fun bs!229130 () Bool)

(assert (= bs!229130 d!258634))

(declare-fun m!1062409 () Bool)

(assert (=> bs!229130 m!1062409))

(assert (=> b!821233 d!258634))

(declare-fun d!258636 () Bool)

(assert (=> d!258636 (= (list!3505 x!176765) (list!3507 (c!133097 x!176765)))))

(declare-fun bs!229131 () Bool)

(assert (= bs!229131 d!258636))

(declare-fun m!1062411 () Bool)

(assert (=> bs!229131 m!1062411))

(assert (=> b!821233 d!258636))

(declare-fun d!258638 () Bool)

(declare-fun res!379080 () Bool)

(declare-fun e!542664 () Bool)

(assert (=> d!258638 (=> (not res!379080) (not e!542664))))

(assert (=> d!258638 (= res!379080 (semiInverseModEq!633 (toChars!2528 (TokenValueInjection!3155 lambda!24578 lambda!24577)) (toValue!2669 (TokenValueInjection!3155 lambda!24578 lambda!24577))))))

(assert (=> d!258638 (= (inv!11214 (TokenValueInjection!3155 lambda!24578 lambda!24577)) e!542664)))

(declare-fun b!821322 () Bool)

(assert (=> b!821322 (= e!542664 (equivClasses!604 (toChars!2528 (TokenValueInjection!3155 lambda!24578 lambda!24577)) (toValue!2669 (TokenValueInjection!3155 lambda!24578 lambda!24577))))))

(assert (= (and d!258638 res!379080) b!821322))

(declare-fun m!1062413 () Bool)

(assert (=> d!258638 m!1062413))

(declare-fun m!1062415 () Bool)

(assert (=> b!821322 m!1062415))

(assert (=> b!821235 d!258638))

(declare-fun bs!229132 () Bool)

(declare-fun d!258640 () Bool)

(assert (= bs!229132 (and d!258640 b!821233)))

(declare-fun lambda!24618 () Int)

(assert (=> bs!229132 (not (= lambda!24618 lambda!24579))))

(assert (=> d!258640 true))

(declare-fun order!5639 () Int)

(declare-fun order!5641 () Int)

(declare-fun dynLambda!4108 (Int Int) Int)

(declare-fun dynLambda!4109 (Int Int) Int)

(assert (=> d!258640 (< (dynLambda!4108 order!5639 lambda!24578) (dynLambda!4109 order!5641 lambda!24618))))

(assert (=> d!258640 (= (equivClasses!604 lambda!24577 lambda!24578) (Forall2!302 lambda!24618))))

(declare-fun bs!229133 () Bool)

(assert (= bs!229133 d!258640))

(declare-fun m!1062417 () Bool)

(assert (=> bs!229133 m!1062417))

(assert (=> b!821234 d!258640))

(assert (=> b!821234 d!258630))

(declare-fun d!258642 () Bool)

(assert (=> d!258642 (= (toValue!30 thiss!4819 x!176765) (BytesLiteralValue!1717 (efficientList!132 x!176765)))))

(declare-fun bs!229134 () Bool)

(assert (= bs!229134 d!258642))

(declare-fun m!1062419 () Bool)

(assert (=> bs!229134 m!1062419))

(assert (=> b!821251 d!258642))

(declare-fun d!258644 () Bool)

(assert (=> d!258644 (= (toValue!30 thiss!4819 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763))) (BytesLiteralValue!1717 (efficientList!132 (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763)))))))

(declare-fun bs!229135 () Bool)

(assert (= bs!229135 d!258644))

(assert (=> bs!229135 m!1062321))

(declare-fun m!1062421 () Bool)

(assert (=> bs!229135 m!1062421))

(assert (=> b!821251 d!258644))

(assert (=> bs!229033 d!258622))

(assert (=> bs!229033 d!258626))

(declare-fun d!258646 () Bool)

(assert (=> d!258646 (= (toValue!30 thiss!4819 x!176763) (BytesLiteralValue!1717 (efficientList!132 x!176763)))))

(declare-fun bs!229136 () Bool)

(assert (= bs!229136 d!258646))

(declare-fun m!1062423 () Bool)

(assert (=> bs!229136 m!1062423))

(assert (=> b!821261 d!258646))

(assert (=> b!821261 d!258644))

(assert (=> bs!229028 d!258626))

(assert (=> bs!229028 d!258622))

(assert (=> b!821258 d!258628))

(assert (=> b!821258 d!258646))

(assert (=> b!821248 d!258644))

(assert (=> b!821250 d!258642))

(assert (=> b!821260 d!258646))

(declare-fun d!258648 () Bool)

(declare-fun c!133101 () Bool)

(assert (=> d!258648 (= c!133101 (is-Node!2944 (c!133097 x!176763)))))

(declare-fun e!542671 () Bool)

(assert (=> d!258648 (= (inv!11212 (c!133097 x!176763)) e!542671)))

(declare-fun b!821333 () Bool)

(declare-fun inv!11218 (Conc!2944) Bool)

(assert (=> b!821333 (= e!542671 (inv!11218 (c!133097 x!176763)))))

(declare-fun b!821334 () Bool)

(declare-fun e!542672 () Bool)

(assert (=> b!821334 (= e!542671 e!542672)))

(declare-fun res!379085 () Bool)

(assert (=> b!821334 (= res!379085 (not (is-Leaf!4324 (c!133097 x!176763))))))

(assert (=> b!821334 (=> res!379085 e!542672)))

(declare-fun b!821335 () Bool)

(declare-fun inv!11219 (Conc!2944) Bool)

(assert (=> b!821335 (= e!542672 (inv!11219 (c!133097 x!176763)))))

(assert (= (and d!258648 c!133101) b!821333))

(assert (= (and d!258648 (not c!133101)) b!821334))

(assert (= (and b!821334 (not res!379085)) b!821335))

(declare-fun m!1062425 () Bool)

(assert (=> b!821333 m!1062425))

(declare-fun m!1062427 () Bool)

(assert (=> b!821335 m!1062427))

(assert (=> b!821244 d!258648))

(assert (=> b!821257 d!258644))

(assert (=> b!821257 d!258646))

(assert (=> bs!229021 d!258626))

(declare-fun d!258650 () Bool)

(declare-fun c!133105 () Bool)

(assert (=> d!258650 (= c!133105 (is-BytesLiteralValue!1717 (toValue!30 thiss!4819 x!176763)))))

(declare-fun e!542675 () BalanceConc!5902)

(assert (=> d!258650 (= (toCharacters!23 thiss!4819 (toValue!30 thiss!4819 x!176763)) e!542675)))

(declare-fun b!821340 () Bool)

(declare-fun seqFromList!1512 (List!8842) BalanceConc!5902)

(assert (=> b!821340 (= e!542675 (seqFromList!1512 (value!53676 (toValue!30 thiss!4819 x!176763))))))

(declare-fun b!821341 () Bool)

(assert (=> b!821341 (= e!542675 (BalanceConc!5903 Empty!2944))))

(assert (= (and d!258650 c!133105) b!821340))

(assert (= (and d!258650 (not c!133105)) b!821341))

(declare-fun m!1062429 () Bool)

(assert (=> b!821340 m!1062429))

(assert (=> bs!229021 d!258650))

(assert (=> bs!229021 d!258646))

(assert (=> bs!229021 d!258624))

(declare-fun d!258652 () Bool)

(declare-fun c!133106 () Bool)

(assert (=> d!258652 (= c!133106 (is-Node!2944 (c!133097 x!176764)))))

(declare-fun e!542676 () Bool)

(assert (=> d!258652 (= (inv!11212 (c!133097 x!176764)) e!542676)))

(declare-fun b!821342 () Bool)

(assert (=> b!821342 (= e!542676 (inv!11218 (c!133097 x!176764)))))

(declare-fun b!821343 () Bool)

(declare-fun e!542677 () Bool)

(assert (=> b!821343 (= e!542676 e!542677)))

(declare-fun res!379086 () Bool)

(assert (=> b!821343 (= res!379086 (not (is-Leaf!4324 (c!133097 x!176764))))))

(assert (=> b!821343 (=> res!379086 e!542677)))

(declare-fun b!821344 () Bool)

(assert (=> b!821344 (= e!542677 (inv!11219 (c!133097 x!176764)))))

(assert (= (and d!258652 c!133106) b!821342))

(assert (= (and d!258652 (not c!133106)) b!821343))

(assert (= (and b!821343 (not res!379086)) b!821344))

(declare-fun m!1062431 () Bool)

(assert (=> b!821342 m!1062431))

(declare-fun m!1062433 () Bool)

(assert (=> b!821344 m!1062433))

(assert (=> b!821246 d!258652))

(assert (=> bs!229032 d!258622))

(assert (=> b!821245 d!258628))

(assert (=> b!821245 d!258642))

(declare-fun d!258654 () Bool)

(declare-fun c!133107 () Bool)

(assert (=> d!258654 (= c!133107 (is-Node!2944 (c!133097 x!176765)))))

(declare-fun e!542678 () Bool)

(assert (=> d!258654 (= (inv!11212 (c!133097 x!176765)) e!542678)))

(declare-fun b!821345 () Bool)

(assert (=> b!821345 (= e!542678 (inv!11218 (c!133097 x!176765)))))

(declare-fun b!821346 () Bool)

(declare-fun e!542679 () Bool)

(assert (=> b!821346 (= e!542678 e!542679)))

(declare-fun res!379087 () Bool)

(assert (=> b!821346 (= res!379087 (not (is-Leaf!4324 (c!133097 x!176765))))))

(assert (=> b!821346 (=> res!379087 e!542679)))

(declare-fun b!821347 () Bool)

(assert (=> b!821347 (= e!542679 (inv!11219 (c!133097 x!176765)))))

(assert (= (and d!258654 c!133107) b!821345))

(assert (= (and d!258654 (not c!133107)) b!821346))

(assert (= (and b!821346 (not res!379087)) b!821347))

(declare-fun m!1062435 () Bool)

(assert (=> b!821345 m!1062435))

(declare-fun m!1062437 () Bool)

(assert (=> b!821347 m!1062437))

(assert (=> b!821247 d!258654))

(declare-fun bs!229137 () Bool)

(declare-fun d!258656 () Bool)

(assert (= bs!229137 (and d!258656 start!73374)))

(declare-fun lambda!24621 () Int)

(assert (=> bs!229137 (not (= lambda!24621 lambda!24576))))

(assert (=> d!258656 true))

(declare-fun order!5645 () Int)

(declare-fun order!5643 () Int)

(declare-fun dynLambda!4110 (Int Int) Int)

(declare-fun dynLambda!4111 (Int Int) Int)

(assert (=> d!258656 (< (dynLambda!4110 order!5643 lambda!24577) (dynLambda!4111 order!5645 lambda!24621))))

(assert (=> d!258656 true))

(assert (=> d!258656 (< (dynLambda!4108 order!5639 lambda!24578) (dynLambda!4111 order!5645 lambda!24621))))

(assert (=> d!258656 (= (semiInverseModEq!633 lambda!24577 lambda!24578) (Forall!388 lambda!24621))))

(declare-fun bs!229138 () Bool)

(assert (= bs!229138 d!258656))

(declare-fun m!1062439 () Bool)

(assert (=> bs!229138 m!1062439))

(assert (=> b!821232 d!258656))

(declare-fun d!258658 () Bool)

(declare-fun choose!4920 (Int) Bool)

(assert (=> d!258658 (= (Forall!388 lambda!24576) (choose!4920 lambda!24576))))

(declare-fun bs!229139 () Bool)

(assert (= bs!229139 d!258658))

(declare-fun m!1062441 () Bool)

(assert (=> bs!229139 m!1062441))

(assert (=> b!821232 d!258658))

(assert (=> bs!229042 d!258624))

(assert (=> bs!229042 d!258626))

(assert (=> bs!229027 d!258636))

(assert (=> bs!229027 d!258626))

(assert (=> bs!229044 d!258624))

(assert (=> bs!229044 d!258636))

(assert (=> bs!229030 d!258636))

(assert (=> bs!229030 d!258622))

(assert (=> b!821259 d!258642))

(assert (=> b!821259 d!258646))

(assert (=> b!821256 d!258628))

(assert (=> b!821256 d!258642))

(assert (=> bs!229026 d!258636))

(assert (=> bs!229035 d!258626))

(assert (=> bs!229035 d!258624))

(assert (=> b!821263 d!258646))

(assert (=> b!821263 d!258642))

(assert (=> b!821253 d!258642))

(assert (=> b!821253 d!258628))

(assert (=> bs!229041 d!258624))

(assert (=> b!821255 d!258628))

(assert (=> b!821255 d!258644))

(assert (=> bs!229043 d!258624))

(assert (=> bs!229043 d!258622))

(assert (=> b!821252 d!258644))

(assert (=> b!821252 d!258628))

(assert (=> bs!229024 d!258626))

(assert (=> bs!229024 d!258636))

(assert (=> b!821262 d!258646))

(assert (=> b!821262 d!258628))

(assert (=> start!73374 d!258650))

(assert (=> start!73374 d!258658))

(assert (=> start!73374 d!258646))

(declare-fun d!258660 () Bool)

(assert (=> d!258660 (= (inv!11213 x!176763) (isBalanced!802 (c!133097 x!176763)))))

(declare-fun bs!229140 () Bool)

(assert (= bs!229140 d!258660))

(declare-fun m!1062443 () Bool)

(assert (=> bs!229140 m!1062443))

(assert (=> start!73374 d!258660))

(assert (=> start!73374 d!258626))

(assert (=> start!73374 d!258624))

(assert (=> bs!229039 d!258636))

(assert (=> bs!229039 d!258624))

(assert (=> b!821249 d!258644))

(assert (=> b!821249 d!258642))

(assert (=> bs!229034 d!258622))

(assert (=> bs!229034 d!258636))

(declare-fun e!542684 () Bool)

(declare-fun b!821358 () Bool)

(declare-fun tp!256704 () Bool)

(declare-fun tp!256703 () Bool)

(assert (=> b!821358 (= e!542684 (and (inv!11212 (left!6551 (c!133097 x!176763))) tp!256703 (inv!11212 (right!6881 (c!133097 x!176763))) tp!256704))))

(declare-fun b!821359 () Bool)

(declare-fun inv!11220 (IArray!5893) Bool)

(assert (=> b!821359 (= e!542684 (inv!11220 (xs!5633 (c!133097 x!176763))))))

(assert (=> b!821244 (= tp!256687 (and (inv!11212 (c!133097 x!176763)) e!542684))))

(assert (= (and b!821244 (is-Node!2944 (c!133097 x!176763))) b!821358))

(assert (= (and b!821244 (is-Leaf!4324 (c!133097 x!176763))) b!821359))

(declare-fun m!1062445 () Bool)

(assert (=> b!821358 m!1062445))

(declare-fun m!1062447 () Bool)

(assert (=> b!821358 m!1062447))

(declare-fun m!1062449 () Bool)

(assert (=> b!821359 m!1062449))

(assert (=> b!821244 m!1062317))

(declare-fun tp!256706 () Bool)

(declare-fun e!542686 () Bool)

(declare-fun tp!256705 () Bool)

(declare-fun b!821360 () Bool)

(assert (=> b!821360 (= e!542686 (and (inv!11212 (left!6551 (c!133097 x!176764))) tp!256705 (inv!11212 (right!6881 (c!133097 x!176764))) tp!256706))))

(declare-fun b!821361 () Bool)

(assert (=> b!821361 (= e!542686 (inv!11220 (xs!5633 (c!133097 x!176764))))))

(assert (=> b!821246 (= tp!256689 (and (inv!11212 (c!133097 x!176764)) e!542686))))

(assert (= (and b!821246 (is-Node!2944 (c!133097 x!176764))) b!821360))

(assert (= (and b!821246 (is-Leaf!4324 (c!133097 x!176764))) b!821361))

(declare-fun m!1062451 () Bool)

(assert (=> b!821360 m!1062451))

(declare-fun m!1062453 () Bool)

(assert (=> b!821360 m!1062453))

(declare-fun m!1062455 () Bool)

(assert (=> b!821361 m!1062455))

(assert (=> b!821246 m!1062341))

(declare-fun tp!256707 () Bool)

(declare-fun tp!256708 () Bool)

(declare-fun e!542688 () Bool)

(declare-fun b!821362 () Bool)

(assert (=> b!821362 (= e!542688 (and (inv!11212 (left!6551 (c!133097 x!176765))) tp!256707 (inv!11212 (right!6881 (c!133097 x!176765))) tp!256708))))

(declare-fun b!821363 () Bool)

(assert (=> b!821363 (= e!542688 (inv!11220 (xs!5633 (c!133097 x!176765))))))

(assert (=> b!821247 (= tp!256688 (and (inv!11212 (c!133097 x!176765)) e!542688))))

(assert (= (and b!821247 (is-Node!2944 (c!133097 x!176765))) b!821362))

(assert (= (and b!821247 (is-Leaf!4324 (c!133097 x!176765))) b!821363))

(declare-fun m!1062457 () Bool)

(assert (=> b!821362 m!1062457))

(declare-fun m!1062459 () Bool)

(assert (=> b!821362 m!1062459))

(declare-fun m!1062461 () Bool)

(assert (=> b!821363 m!1062461))

(assert (=> b!821247 m!1062343))

(push 1)

(assert (not d!258656))

(assert (not d!258636))

(assert (not b!821340))

(assert (not b!821342))

(assert (not b!821335))

(assert (not d!258628))

(assert (not b!821246))

(assert (not d!258646))

(assert (not d!258624))

(assert (not d!258632))

(assert (not b!821361))

(assert (not d!258630))

(assert (not b!821322))

(assert (not b!821363))

(assert (not b!821345))

(assert (not d!258638))

(assert (not d!258622))

(assert (not d!258660))

(assert (not d!258634))

(assert (not d!258658))

(assert (not b!821247))

(assert (not b!821244))

(assert (not b!821360))

(assert (not b!821347))

(assert (not d!258640))

(assert (not b!821333))

(assert (not d!258644))

(assert (not d!258642))

(assert (not b!821344))

(assert (not b!821359))

(assert (not d!258626))

(assert (not b!821358))

(assert (not b!821362))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

