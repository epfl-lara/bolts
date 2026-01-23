; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114374 () Bool)

(assert start!114374)

(declare-fun b!1297192 () Bool)

(declare-fun b_free!30707 () Bool)

(declare-fun b_next!31411 () Bool)

(assert (=> b!1297192 (= b_free!30707 (not b_next!31411))))

(declare-fun tp!378466 () Bool)

(declare-fun b_and!86415 () Bool)

(assert (=> b!1297192 (= tp!378466 b_and!86415)))

(declare-fun b_free!30709 () Bool)

(declare-fun b_next!31413 () Bool)

(assert (=> b!1297192 (= b_free!30709 (not b_next!31413))))

(declare-fun tp!378470 () Bool)

(declare-fun b_and!86417 () Bool)

(assert (=> b!1297192 (= tp!378470 b_and!86417)))

(declare-fun b!1297197 () Bool)

(declare-fun b_free!30711 () Bool)

(declare-fun b_next!31415 () Bool)

(assert (=> b!1297197 (= b_free!30711 (not b_next!31415))))

(declare-fun tp!378476 () Bool)

(declare-fun b_and!86419 () Bool)

(assert (=> b!1297197 (= tp!378476 b_and!86419)))

(declare-fun b_free!30713 () Bool)

(declare-fun b_next!31417 () Bool)

(assert (=> b!1297197 (= b_free!30713 (not b_next!31417))))

(declare-fun tp!378472 () Bool)

(declare-fun b_and!86421 () Bool)

(assert (=> b!1297197 (= tp!378472 b_and!86421)))

(declare-fun b!1297198 () Bool)

(declare-fun b_free!30715 () Bool)

(declare-fun b_next!31419 () Bool)

(assert (=> b!1297198 (= b_free!30715 (not b_next!31419))))

(declare-fun tp!378467 () Bool)

(declare-fun b_and!86423 () Bool)

(assert (=> b!1297198 (= tp!378467 b_and!86423)))

(declare-fun b_free!30717 () Bool)

(declare-fun b_next!31421 () Bool)

(assert (=> b!1297198 (= b_free!30717 (not b_next!31421))))

(declare-fun tp!378471 () Bool)

(declare-fun b_and!86425 () Bool)

(assert (=> b!1297198 (= tp!378471 b_and!86425)))

(declare-fun b!1297194 () Bool)

(assert (=> b!1297194 true))

(assert (=> b!1297194 true))

(declare-fun b!1297185 () Bool)

(declare-fun res!580854 () Bool)

(declare-fun e!831608 () Bool)

(assert (=> b!1297185 (=> (not res!580854) (not e!831608))))

(declare-datatypes ((LexerInterface!1928 0))(
  ( (LexerInterfaceExt!1925 (__x!8475 Int)) (Lexer!1926) )
))
(declare-fun thiss!19762 () LexerInterface!1928)

(declare-datatypes ((List!13032 0))(
  ( (Nil!12966) (Cons!12966 (h!18367 (_ BitVec 16)) (t!117455 List!13032)) )
))
(declare-datatypes ((TokenValue!2323 0))(
  ( (FloatLiteralValue!4646 (text!16706 List!13032)) (TokenValueExt!2322 (__x!8476 Int)) (Broken!11615 (value!73247 List!13032)) (Object!2388) (End!2323) (Def!2323) (Underscore!2323) (Match!2323) (Else!2323) (Error!2323) (Case!2323) (If!2323) (Extends!2323) (Abstract!2323) (Class!2323) (Val!2323) (DelimiterValue!4646 (del!2383 List!13032)) (KeywordValue!2329 (value!73248 List!13032)) (CommentValue!4646 (value!73249 List!13032)) (WhitespaceValue!4646 (value!73250 List!13032)) (IndentationValue!2323 (value!73251 List!13032)) (String!15850) (Int32!2323) (Broken!11616 (value!73252 List!13032)) (Boolean!2324) (Unit!19111) (OperatorValue!2326 (op!2383 List!13032)) (IdentifierValue!4646 (value!73253 List!13032)) (IdentifierValue!4647 (value!73254 List!13032)) (WhitespaceValue!4647 (value!73255 List!13032)) (True!4646) (False!4646) (Broken!11617 (value!73256 List!13032)) (Broken!11618 (value!73257 List!13032)) (True!4647) (RightBrace!2323) (RightBracket!2323) (Colon!2323) (Null!2323) (Comma!2323) (LeftBracket!2323) (False!4647) (LeftBrace!2323) (ImaginaryLiteralValue!2323 (text!16707 List!13032)) (StringLiteralValue!6969 (value!73258 List!13032)) (EOFValue!2323 (value!73259 List!13032)) (IdentValue!2323 (value!73260 List!13032)) (DelimiterValue!4647 (value!73261 List!13032)) (DedentValue!2323 (value!73262 List!13032)) (NewLineValue!2323 (value!73263 List!13032)) (IntegerValue!6969 (value!73264 (_ BitVec 32)) (text!16708 List!13032)) (IntegerValue!6970 (value!73265 Int) (text!16709 List!13032)) (Times!2323) (Or!2323) (Equal!2323) (Minus!2323) (Broken!11619 (value!73266 List!13032)) (And!2323) (Div!2323) (LessEqual!2323) (Mod!2323) (Concat!5870) (Not!2323) (Plus!2323) (SpaceValue!2323 (value!73267 List!13032)) (IntegerValue!6971 (value!73268 Int) (text!16710 List!13032)) (StringLiteralValue!6970 (text!16711 List!13032)) (FloatLiteralValue!4647 (text!16712 List!13032)) (BytesLiteralValue!2323 (value!73269 List!13032)) (CommentValue!4647 (value!73270 List!13032)) (StringLiteralValue!6971 (value!73271 List!13032)) (ErrorTokenValue!2323 (msg!2384 List!13032)) )
))
(declare-datatypes ((C!7384 0))(
  ( (C!7385 (val!4252 Int)) )
))
(declare-datatypes ((List!13033 0))(
  ( (Nil!12967) (Cons!12967 (h!18368 C!7384) (t!117456 List!13033)) )
))
(declare-datatypes ((IArray!8523 0))(
  ( (IArray!8524 (innerList!4319 List!13033)) )
))
(declare-datatypes ((Conc!4259 0))(
  ( (Node!4259 (left!11149 Conc!4259) (right!11479 Conc!4259) (csize!8748 Int) (cheight!4470 Int)) (Leaf!6572 (xs!6974 IArray!8523) (csize!8749 Int)) (Empty!4259) )
))
(declare-datatypes ((BalanceConc!8458 0))(
  ( (BalanceConc!8459 (c!213599 Conc!4259)) )
))
(declare-datatypes ((Regex!3547 0))(
  ( (ElementMatch!3547 (c!213600 C!7384)) (Concat!5871 (regOne!7606 Regex!3547) (regTwo!7606 Regex!3547)) (EmptyExpr!3547) (Star!3547 (reg!3876 Regex!3547)) (EmptyLang!3547) (Union!3547 (regOne!7607 Regex!3547) (regTwo!7607 Regex!3547)) )
))
(declare-datatypes ((String!15851 0))(
  ( (String!15852 (value!73272 String)) )
))
(declare-datatypes ((TokenValueInjection!4306 0))(
  ( (TokenValueInjection!4307 (toValue!3440 Int) (toChars!3299 Int)) )
))
(declare-datatypes ((Rule!4266 0))(
  ( (Rule!4267 (regex!2233 Regex!3547) (tag!2495 String!15851) (isSeparator!2233 Bool) (transformation!2233 TokenValueInjection!4306)) )
))
(declare-datatypes ((List!13034 0))(
  ( (Nil!12968) (Cons!12968 (h!18369 Rule!4266) (t!117457 List!13034)) )
))
(declare-fun rules!2550 () List!13034)

(declare-fun rulesInvariant!1798 (LexerInterface!1928 List!13034) Bool)

(assert (=> b!1297185 (= res!580854 (rulesInvariant!1798 thiss!19762 rules!2550))))

(declare-fun e!831599 () Bool)

(declare-fun e!831611 () Bool)

(declare-fun tp!378468 () Bool)

(declare-fun b!1297186 () Bool)

(declare-datatypes ((Token!4128 0))(
  ( (Token!4129 (value!73273 TokenValue!2323) (rule!3972 Rule!4266) (size!10598 Int) (originalCharacters!3095 List!13033)) )
))
(declare-fun t2!34 () Token!4128)

(declare-fun inv!21 (TokenValue!2323) Bool)

(assert (=> b!1297186 (= e!831611 (and (inv!21 (value!73273 t2!34)) e!831599 tp!378468))))

(declare-fun b!1297187 () Bool)

(declare-fun res!580844 () Bool)

(assert (=> b!1297187 (=> (not res!580844) (not e!831608))))

(declare-fun isEmpty!7707 (List!13034) Bool)

(assert (=> b!1297187 (= res!580844 (not (isEmpty!7707 rules!2550)))))

(declare-fun b!1297188 () Bool)

(declare-fun e!831614 () Bool)

(assert (=> b!1297188 (= e!831608 e!831614)))

(declare-fun res!580852 () Bool)

(assert (=> b!1297188 (=> (not res!580852) (not e!831614))))

(declare-fun lt!426671 () Int)

(assert (=> b!1297188 (= res!580852 (> lt!426671 0))))

(declare-fun lt!426678 () BalanceConc!8458)

(declare-fun size!10599 (BalanceConc!8458) Int)

(assert (=> b!1297188 (= lt!426671 (size!10599 lt!426678))))

(declare-fun charsOf!1205 (Token!4128) BalanceConc!8458)

(assert (=> b!1297188 (= lt!426678 (charsOf!1205 t2!34))))

(declare-fun e!831615 () Bool)

(declare-fun b!1297189 () Bool)

(declare-fun tp!378475 () Bool)

(declare-fun t1!34 () Token!4128)

(declare-fun e!831606 () Bool)

(assert (=> b!1297189 (= e!831606 (and (inv!21 (value!73273 t1!34)) e!831615 tp!378475))))

(declare-fun b!1297190 () Bool)

(declare-fun res!580845 () Bool)

(assert (=> b!1297190 (=> (not res!580845) (not e!831608))))

(declare-fun rulesProduceIndividualToken!897 (LexerInterface!1928 List!13034 Token!4128) Bool)

(assert (=> b!1297190 (= res!580845 (rulesProduceIndividualToken!897 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1297191 () Bool)

(declare-fun e!831610 () Bool)

(declare-fun e!831613 () Bool)

(assert (=> b!1297191 (= e!831610 e!831613)))

(declare-fun res!580847 () Bool)

(assert (=> b!1297191 (=> res!580847 e!831613)))

(declare-fun lt!426672 () List!13033)

(declare-fun lt!426676 () C!7384)

(declare-fun contains!2169 (List!13033 C!7384) Bool)

(assert (=> b!1297191 (= res!580847 (not (contains!2169 lt!426672 lt!426676)))))

(declare-fun lt!426677 () BalanceConc!8458)

(declare-fun apply!2869 (BalanceConc!8458 Int) C!7384)

(assert (=> b!1297191 (= lt!426676 (apply!2869 lt!426677 0))))

(declare-fun e!831618 () Bool)

(assert (=> b!1297192 (= e!831618 (and tp!378466 tp!378470))))

(declare-fun b!1297193 () Bool)

(declare-fun res!580848 () Bool)

(assert (=> b!1297193 (=> (not res!580848) (not e!831608))))

(assert (=> b!1297193 (= res!580848 (rulesProduceIndividualToken!897 thiss!19762 rules!2550 t1!34))))

(declare-fun e!831603 () Bool)

(declare-fun e!831601 () Bool)

(assert (=> b!1297194 (= e!831603 (not e!831601))))

(declare-fun res!580855 () Bool)

(assert (=> b!1297194 (=> res!580855 e!831601)))

(declare-fun lambda!50981 () Int)

(declare-fun Exists!705 (Int) Bool)

(assert (=> b!1297194 (= res!580855 (not (Exists!705 lambda!50981)))))

(assert (=> b!1297194 (Exists!705 lambda!50981)))

(declare-datatypes ((Unit!19112 0))(
  ( (Unit!19113) )
))
(declare-fun lt!426675 () Unit!19112)

(declare-fun lt!426674 () Regex!3547)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!23 (Regex!3547 List!13033) Unit!19112)

(assert (=> b!1297194 (= lt!426675 (lemmaPrefixMatchThenExistsStringThatMatches!23 lt!426674 lt!426672))))

(declare-fun b!1297195 () Bool)

(assert (=> b!1297195 (= e!831601 e!831610)))

(declare-fun res!580851 () Bool)

(assert (=> b!1297195 (=> res!580851 e!831610)))

(declare-fun lt!426673 () List!13033)

(declare-fun ++!3294 (List!13033 List!13033) List!13033)

(declare-fun getSuffix!403 (List!13033 List!13033) List!13033)

(assert (=> b!1297195 (= res!580851 (not (= lt!426673 (++!3294 lt!426672 (getSuffix!403 lt!426673 lt!426672)))))))

(declare-fun pickWitness!10 (Int) List!13033)

(assert (=> b!1297195 (= lt!426673 (pickWitness!10 lambda!50981))))

(declare-fun b!1297196 () Bool)

(declare-fun res!580843 () Bool)

(assert (=> b!1297196 (=> res!580843 e!831613)))

(assert (=> b!1297196 (= res!580843 (not (contains!2169 lt!426673 lt!426676)))))

(declare-fun e!831617 () Bool)

(assert (=> b!1297197 (= e!831617 (and tp!378476 tp!378472))))

(declare-fun e!831609 () Bool)

(assert (=> b!1297198 (= e!831609 (and tp!378467 tp!378471))))

(declare-fun b!1297199 () Bool)

(declare-fun e!831616 () Bool)

(declare-fun e!831604 () Bool)

(declare-fun tp!378469 () Bool)

(assert (=> b!1297199 (= e!831616 (and e!831604 tp!378469))))

(declare-fun b!1297200 () Bool)

(declare-fun res!580849 () Bool)

(assert (=> b!1297200 (=> (not res!580849) (not e!831614))))

(declare-fun separableTokensPredicate!211 (LexerInterface!1928 Token!4128 Token!4128 List!13034) Bool)

(assert (=> b!1297200 (= res!580849 (not (separableTokensPredicate!211 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun tp!378473 () Bool)

(declare-fun b!1297201 () Bool)

(declare-fun inv!17389 (String!15851) Bool)

(declare-fun inv!17392 (TokenValueInjection!4306) Bool)

(assert (=> b!1297201 (= e!831604 (and tp!378473 (inv!17389 (tag!2495 (h!18369 rules!2550))) (inv!17392 (transformation!2233 (h!18369 rules!2550))) e!831609))))

(declare-fun tp!378474 () Bool)

(declare-fun b!1297202 () Bool)

(assert (=> b!1297202 (= e!831599 (and tp!378474 (inv!17389 (tag!2495 (rule!3972 t2!34))) (inv!17392 (transformation!2233 (rule!3972 t2!34))) e!831617))))

(declare-fun b!1297203 () Bool)

(assert (=> b!1297203 (= e!831614 e!831603)))

(declare-fun res!580846 () Bool)

(assert (=> b!1297203 (=> (not res!580846) (not e!831603))))

(declare-fun prefixMatch!60 (Regex!3547 List!13033) Bool)

(assert (=> b!1297203 (= res!580846 (prefixMatch!60 lt!426674 lt!426672))))

(declare-fun rulesRegex!118 (LexerInterface!1928 List!13034) Regex!3547)

(assert (=> b!1297203 (= lt!426674 (rulesRegex!118 thiss!19762 rules!2550))))

(declare-fun list!4855 (BalanceConc!8458) List!13033)

(assert (=> b!1297203 (= lt!426672 (++!3294 (list!4855 lt!426677) (Cons!12967 (apply!2869 lt!426678 0) Nil!12967)))))

(assert (=> b!1297203 (= lt!426677 (charsOf!1205 t1!34))))

(declare-fun res!580850 () Bool)

(assert (=> start!114374 (=> (not res!580850) (not e!831608))))

(get-info :version)

(assert (=> start!114374 (= res!580850 ((_ is Lexer!1926) thiss!19762))))

(assert (=> start!114374 e!831608))

(assert (=> start!114374 true))

(assert (=> start!114374 e!831616))

(declare-fun inv!17393 (Token!4128) Bool)

(assert (=> start!114374 (and (inv!17393 t1!34) e!831606)))

(assert (=> start!114374 (and (inv!17393 t2!34) e!831611)))

(declare-fun b!1297204 () Bool)

(declare-fun tp!378465 () Bool)

(assert (=> b!1297204 (= e!831615 (and tp!378465 (inv!17389 (tag!2495 (rule!3972 t1!34))) (inv!17392 (transformation!2233 (rule!3972 t1!34))) e!831618))))

(declare-fun b!1297205 () Bool)

(declare-fun res!580856 () Bool)

(assert (=> b!1297205 (=> (not res!580856) (not e!831608))))

(assert (=> b!1297205 (= res!580856 (not (= (isSeparator!2233 (rule!3972 t1!34)) (isSeparator!2233 (rule!3972 t2!34)))))))

(declare-fun b!1297206 () Bool)

(declare-fun res!580853 () Bool)

(assert (=> b!1297206 (=> (not res!580853) (not e!831614))))

(declare-fun sepAndNonSepRulesDisjointChars!606 (List!13034 List!13034) Bool)

(assert (=> b!1297206 (= res!580853 (sepAndNonSepRulesDisjointChars!606 rules!2550 rules!2550))))

(declare-fun b!1297207 () Bool)

(assert (=> b!1297207 (= e!831613 (< 0 lt!426671))))

(assert (= (and start!114374 res!580850) b!1297187))

(assert (= (and b!1297187 res!580844) b!1297185))

(assert (= (and b!1297185 res!580854) b!1297193))

(assert (= (and b!1297193 res!580848) b!1297190))

(assert (= (and b!1297190 res!580845) b!1297205))

(assert (= (and b!1297205 res!580856) b!1297188))

(assert (= (and b!1297188 res!580852) b!1297206))

(assert (= (and b!1297206 res!580853) b!1297200))

(assert (= (and b!1297200 res!580849) b!1297203))

(assert (= (and b!1297203 res!580846) b!1297194))

(assert (= (and b!1297194 (not res!580855)) b!1297195))

(assert (= (and b!1297195 (not res!580851)) b!1297191))

(assert (= (and b!1297191 (not res!580847)) b!1297196))

(assert (= (and b!1297196 (not res!580843)) b!1297207))

(assert (= b!1297201 b!1297198))

(assert (= b!1297199 b!1297201))

(assert (= (and start!114374 ((_ is Cons!12968) rules!2550)) b!1297199))

(assert (= b!1297204 b!1297192))

(assert (= b!1297189 b!1297204))

(assert (= start!114374 b!1297189))

(assert (= b!1297202 b!1297197))

(assert (= b!1297186 b!1297202))

(assert (= start!114374 b!1297186))

(declare-fun m!1448639 () Bool)

(assert (=> b!1297186 m!1448639))

(declare-fun m!1448641 () Bool)

(assert (=> b!1297195 m!1448641))

(assert (=> b!1297195 m!1448641))

(declare-fun m!1448643 () Bool)

(assert (=> b!1297195 m!1448643))

(declare-fun m!1448645 () Bool)

(assert (=> b!1297195 m!1448645))

(declare-fun m!1448647 () Bool)

(assert (=> b!1297196 m!1448647))

(declare-fun m!1448649 () Bool)

(assert (=> b!1297201 m!1448649))

(declare-fun m!1448651 () Bool)

(assert (=> b!1297201 m!1448651))

(declare-fun m!1448653 () Bool)

(assert (=> b!1297204 m!1448653))

(declare-fun m!1448655 () Bool)

(assert (=> b!1297204 m!1448655))

(declare-fun m!1448657 () Bool)

(assert (=> b!1297185 m!1448657))

(declare-fun m!1448659 () Bool)

(assert (=> b!1297188 m!1448659))

(declare-fun m!1448661 () Bool)

(assert (=> b!1297188 m!1448661))

(declare-fun m!1448663 () Bool)

(assert (=> b!1297200 m!1448663))

(declare-fun m!1448665 () Bool)

(assert (=> b!1297206 m!1448665))

(declare-fun m!1448667 () Bool)

(assert (=> b!1297194 m!1448667))

(assert (=> b!1297194 m!1448667))

(declare-fun m!1448669 () Bool)

(assert (=> b!1297194 m!1448669))

(declare-fun m!1448671 () Bool)

(assert (=> b!1297189 m!1448671))

(declare-fun m!1448673 () Bool)

(assert (=> b!1297187 m!1448673))

(declare-fun m!1448675 () Bool)

(assert (=> start!114374 m!1448675))

(declare-fun m!1448677 () Bool)

(assert (=> start!114374 m!1448677))

(declare-fun m!1448679 () Bool)

(assert (=> b!1297202 m!1448679))

(declare-fun m!1448681 () Bool)

(assert (=> b!1297202 m!1448681))

(declare-fun m!1448683 () Bool)

(assert (=> b!1297190 m!1448683))

(declare-fun m!1448685 () Bool)

(assert (=> b!1297203 m!1448685))

(declare-fun m!1448687 () Bool)

(assert (=> b!1297203 m!1448687))

(declare-fun m!1448689 () Bool)

(assert (=> b!1297203 m!1448689))

(assert (=> b!1297203 m!1448689))

(declare-fun m!1448691 () Bool)

(assert (=> b!1297203 m!1448691))

(declare-fun m!1448693 () Bool)

(assert (=> b!1297203 m!1448693))

(declare-fun m!1448695 () Bool)

(assert (=> b!1297203 m!1448695))

(declare-fun m!1448697 () Bool)

(assert (=> b!1297191 m!1448697))

(declare-fun m!1448699 () Bool)

(assert (=> b!1297191 m!1448699))

(declare-fun m!1448701 () Bool)

(assert (=> b!1297193 m!1448701))

(check-sat (not b!1297190) (not b_next!31411) (not b!1297201) (not b_next!31419) b_and!86423 (not b_next!31417) (not b!1297200) (not b!1297191) (not b_next!31413) (not b!1297199) (not b!1297193) (not b_next!31421) (not b!1297185) (not b!1297206) b_and!86419 b_and!86421 (not b!1297203) (not b!1297194) (not b!1297187) (not b!1297188) b_and!86425 (not b!1297189) (not b!1297196) (not b!1297202) b_and!86417 b_and!86415 (not b!1297195) (not b_next!31415) (not start!114374) (not b!1297204) (not b!1297186))
(check-sat (not b_next!31421) b_and!86419 (not b_next!31411) b_and!86421 (not b_next!31419) b_and!86423 (not b_next!31417) b_and!86425 (not b_next!31415) (not b_next!31413) b_and!86417 b_and!86415)
