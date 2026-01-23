; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119546 () Bool)

(assert start!119546)

(declare-fun b!1340180 () Bool)

(declare-fun b_free!32619 () Bool)

(declare-fun b_next!33323 () Bool)

(assert (=> b!1340180 (= b_free!32619 (not b_next!33323))))

(declare-fun tp!388044 () Bool)

(declare-fun b_and!89611 () Bool)

(assert (=> b!1340180 (= tp!388044 b_and!89611)))

(declare-fun b_free!32621 () Bool)

(declare-fun b_next!33325 () Bool)

(assert (=> b!1340180 (= b_free!32621 (not b_next!33325))))

(declare-fun tp!388039 () Bool)

(declare-fun b_and!89613 () Bool)

(assert (=> b!1340180 (= tp!388039 b_and!89613)))

(declare-fun b!1340170 () Bool)

(declare-fun b_free!32623 () Bool)

(declare-fun b_next!33327 () Bool)

(assert (=> b!1340170 (= b_free!32623 (not b_next!33327))))

(declare-fun tp!388038 () Bool)

(declare-fun b_and!89615 () Bool)

(assert (=> b!1340170 (= tp!388038 b_and!89615)))

(declare-fun b_free!32625 () Bool)

(declare-fun b_next!33329 () Bool)

(assert (=> b!1340170 (= b_free!32625 (not b_next!33329))))

(declare-fun tp!388043 () Bool)

(declare-fun b_and!89617 () Bool)

(assert (=> b!1340170 (= tp!388043 b_and!89617)))

(declare-fun b!1340161 () Bool)

(declare-fun b_free!32627 () Bool)

(declare-fun b_next!33331 () Bool)

(assert (=> b!1340161 (= b_free!32627 (not b_next!33331))))

(declare-fun tp!388046 () Bool)

(declare-fun b_and!89619 () Bool)

(assert (=> b!1340161 (= tp!388046 b_and!89619)))

(declare-fun b_free!32629 () Bool)

(declare-fun b_next!33333 () Bool)

(assert (=> b!1340161 (= b_free!32629 (not b_next!33333))))

(declare-fun tp!388048 () Bool)

(declare-fun b_and!89621 () Bool)

(assert (=> b!1340161 (= tp!388048 b_and!89621)))

(declare-fun b!1340168 () Bool)

(assert (=> b!1340168 true))

(assert (=> b!1340168 true))

(declare-fun b!1340159 () Bool)

(declare-fun res!603826 () Bool)

(declare-fun e!858244 () Bool)

(assert (=> b!1340159 (=> (not res!603826) (not e!858244))))

(declare-datatypes ((List!13742 0))(
  ( (Nil!13676) (Cons!13676 (h!19077 (_ BitVec 16)) (t!119421 List!13742)) )
))
(declare-datatypes ((TokenValue!2461 0))(
  ( (FloatLiteralValue!4922 (text!17672 List!13742)) (TokenValueExt!2460 (__x!8751 Int)) (Broken!12305 (value!77180 List!13742)) (Object!2526) (End!2461) (Def!2461) (Underscore!2461) (Match!2461) (Else!2461) (Error!2461) (Case!2461) (If!2461) (Extends!2461) (Abstract!2461) (Class!2461) (Val!2461) (DelimiterValue!4922 (del!2521 List!13742)) (KeywordValue!2467 (value!77181 List!13742)) (CommentValue!4922 (value!77182 List!13742)) (WhitespaceValue!4922 (value!77183 List!13742)) (IndentationValue!2461 (value!77184 List!13742)) (String!16540) (Int32!2461) (Broken!12306 (value!77185 List!13742)) (Boolean!2462) (Unit!19808) (OperatorValue!2464 (op!2521 List!13742)) (IdentifierValue!4922 (value!77186 List!13742)) (IdentifierValue!4923 (value!77187 List!13742)) (WhitespaceValue!4923 (value!77188 List!13742)) (True!4922) (False!4922) (Broken!12307 (value!77189 List!13742)) (Broken!12308 (value!77190 List!13742)) (True!4923) (RightBrace!2461) (RightBracket!2461) (Colon!2461) (Null!2461) (Comma!2461) (LeftBracket!2461) (False!4923) (LeftBrace!2461) (ImaginaryLiteralValue!2461 (text!17673 List!13742)) (StringLiteralValue!7383 (value!77191 List!13742)) (EOFValue!2461 (value!77192 List!13742)) (IdentValue!2461 (value!77193 List!13742)) (DelimiterValue!4923 (value!77194 List!13742)) (DedentValue!2461 (value!77195 List!13742)) (NewLineValue!2461 (value!77196 List!13742)) (IntegerValue!7383 (value!77197 (_ BitVec 32)) (text!17674 List!13742)) (IntegerValue!7384 (value!77198 Int) (text!17675 List!13742)) (Times!2461) (Or!2461) (Equal!2461) (Minus!2461) (Broken!12309 (value!77199 List!13742)) (And!2461) (Div!2461) (LessEqual!2461) (Mod!2461) (Concat!6146) (Not!2461) (Plus!2461) (SpaceValue!2461 (value!77200 List!13742)) (IntegerValue!7385 (value!77201 Int) (text!17676 List!13742)) (StringLiteralValue!7384 (text!17677 List!13742)) (FloatLiteralValue!4923 (text!17678 List!13742)) (BytesLiteralValue!2461 (value!77202 List!13742)) (CommentValue!4923 (value!77203 List!13742)) (StringLiteralValue!7385 (value!77204 List!13742)) (ErrorTokenValue!2461 (msg!2522 List!13742)) )
))
(declare-datatypes ((C!7660 0))(
  ( (C!7661 (val!4390 Int)) )
))
(declare-datatypes ((List!13743 0))(
  ( (Nil!13677) (Cons!13677 (h!19078 C!7660) (t!119422 List!13743)) )
))
(declare-datatypes ((IArray!9019 0))(
  ( (IArray!9020 (innerList!4567 List!13743)) )
))
(declare-datatypes ((Conc!4507 0))(
  ( (Node!4507 (left!11734 Conc!4507) (right!12064 Conc!4507) (csize!9244 Int) (cheight!4718 Int)) (Leaf!6889 (xs!7226 IArray!9019) (csize!9245 Int)) (Empty!4507) )
))
(declare-datatypes ((BalanceConc!8954 0))(
  ( (BalanceConc!8955 (c!219539 Conc!4507)) )
))
(declare-datatypes ((Regex!3685 0))(
  ( (ElementMatch!3685 (c!219540 C!7660)) (Concat!6147 (regOne!7882 Regex!3685) (regTwo!7882 Regex!3685)) (EmptyExpr!3685) (Star!3685 (reg!4014 Regex!3685)) (EmptyLang!3685) (Union!3685 (regOne!7883 Regex!3685) (regTwo!7883 Regex!3685)) )
))
(declare-datatypes ((String!16541 0))(
  ( (String!16542 (value!77205 String)) )
))
(declare-datatypes ((TokenValueInjection!4582 0))(
  ( (TokenValueInjection!4583 (toValue!3610 Int) (toChars!3469 Int)) )
))
(declare-datatypes ((Rule!4542 0))(
  ( (Rule!4543 (regex!2371 Regex!3685) (tag!2633 String!16541) (isSeparator!2371 Bool) (transformation!2371 TokenValueInjection!4582)) )
))
(declare-datatypes ((List!13744 0))(
  ( (Nil!13678) (Cons!13678 (h!19079 Rule!4542) (t!119423 List!13744)) )
))
(declare-fun rules!2550 () List!13744)

(declare-fun sepAndNonSepRulesDisjointChars!744 (List!13744 List!13744) Bool)

(assert (=> b!1340159 (= res!603826 (sepAndNonSepRulesDisjointChars!744 rules!2550 rules!2550))))

(declare-fun b!1340160 () Bool)

(declare-fun res!603830 () Bool)

(declare-fun e!858249 () Bool)

(assert (=> b!1340160 (=> (not res!603830) (not e!858249))))

(declare-datatypes ((Token!4404 0))(
  ( (Token!4405 (value!77206 TokenValue!2461) (rule!4116 Rule!4542) (size!11143 Int) (originalCharacters!3233 List!13743)) )
))
(declare-fun t1!34 () Token!4404)

(declare-datatypes ((LexerInterface!2066 0))(
  ( (LexerInterfaceExt!2063 (__x!8752 Int)) (Lexer!2064) )
))
(declare-fun thiss!19762 () LexerInterface!2066)

(declare-fun rulesProduceIndividualToken!1035 (LexerInterface!2066 List!13744 Token!4404) Bool)

(assert (=> b!1340160 (= res!603830 (rulesProduceIndividualToken!1035 thiss!19762 rules!2550 t1!34))))

(declare-fun e!858241 () Bool)

(assert (=> b!1340161 (= e!858241 (and tp!388046 tp!388048))))

(declare-fun b!1340162 () Bool)

(assert (=> b!1340162 (= e!858249 e!858244)))

(declare-fun res!603832 () Bool)

(assert (=> b!1340162 (=> (not res!603832) (not e!858244))))

(declare-fun lt!443466 () BalanceConc!8954)

(declare-fun size!11144 (BalanceConc!8954) Int)

(assert (=> b!1340162 (= res!603832 (> (size!11144 lt!443466) 0))))

(declare-fun t2!34 () Token!4404)

(declare-fun charsOf!1343 (Token!4404) BalanceConc!8954)

(assert (=> b!1340162 (= lt!443466 (charsOf!1343 t2!34))))

(declare-fun tp!388042 () Bool)

(declare-fun b!1340163 () Bool)

(declare-fun e!858235 () Bool)

(declare-fun e!858251 () Bool)

(declare-fun inv!21 (TokenValue!2461) Bool)

(assert (=> b!1340163 (= e!858251 (and (inv!21 (value!77206 t1!34)) e!858235 tp!388042))))

(declare-fun tp!388045 () Bool)

(declare-fun e!858234 () Bool)

(declare-fun b!1340164 () Bool)

(declare-fun inv!18012 (String!16541) Bool)

(declare-fun inv!18015 (TokenValueInjection!4582) Bool)

(assert (=> b!1340164 (= e!858235 (and tp!388045 (inv!18012 (tag!2633 (rule!4116 t1!34))) (inv!18015 (transformation!2371 (rule!4116 t1!34))) e!858234))))

(declare-fun b!1340165 () Bool)

(declare-fun res!603828 () Bool)

(assert (=> b!1340165 (=> (not res!603828) (not e!858249))))

(assert (=> b!1340165 (= res!603828 (rulesProduceIndividualToken!1035 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1340166 () Bool)

(declare-fun e!858233 () Bool)

(declare-fun e!858239 () Bool)

(assert (=> b!1340166 (= e!858233 e!858239)))

(declare-fun res!603837 () Bool)

(assert (=> b!1340166 (=> res!603837 e!858239)))

(declare-fun lt!443469 () List!13743)

(declare-fun lt!443468 () C!7660)

(declare-fun contains!2497 (List!13743 C!7660) Bool)

(assert (=> b!1340166 (= res!603837 (not (contains!2497 lt!443469 lt!443468)))))

(declare-fun lt!443467 () BalanceConc!8954)

(declare-fun apply!3219 (BalanceConc!8954 Int) C!7660)

(assert (=> b!1340166 (= lt!443468 (apply!3219 lt!443467 0))))

(declare-fun b!1340167 () Bool)

(declare-fun e!858252 () Bool)

(assert (=> b!1340167 (= e!858244 e!858252)))

(declare-fun res!603835 () Bool)

(assert (=> b!1340167 (=> (not res!603835) (not e!858252))))

(declare-fun lt!443463 () Regex!3685)

(declare-fun prefixMatch!194 (Regex!3685 List!13743) Bool)

(assert (=> b!1340167 (= res!603835 (prefixMatch!194 lt!443463 lt!443469))))

(declare-fun rulesRegex!254 (LexerInterface!2066 List!13744) Regex!3685)

(assert (=> b!1340167 (= lt!443463 (rulesRegex!254 thiss!19762 rules!2550))))

(declare-fun lt!443462 () List!13743)

(declare-fun lt!443470 () C!7660)

(declare-fun ++!3500 (List!13743 List!13743) List!13743)

(assert (=> b!1340167 (= lt!443469 (++!3500 lt!443462 (Cons!13677 lt!443470 Nil!13677)))))

(assert (=> b!1340167 (= lt!443470 (apply!3219 lt!443466 0))))

(declare-fun list!5205 (BalanceConc!8954) List!13743)

(assert (=> b!1340167 (= lt!443462 (list!5205 lt!443467))))

(assert (=> b!1340167 (= lt!443467 (charsOf!1343 t1!34))))

(declare-fun e!858250 () Bool)

(assert (=> b!1340168 (= e!858252 (not e!858250))))

(declare-fun res!603831 () Bool)

(assert (=> b!1340168 (=> res!603831 e!858250)))

(declare-fun lambda!56135 () Int)

(declare-fun Exists!837 (Int) Bool)

(assert (=> b!1340168 (= res!603831 (not (Exists!837 lambda!56135)))))

(assert (=> b!1340168 (Exists!837 lambda!56135)))

(declare-datatypes ((Unit!19809 0))(
  ( (Unit!19810) )
))
(declare-fun lt!443465 () Unit!19809)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!155 (Regex!3685 List!13743) Unit!19809)

(assert (=> b!1340168 (= lt!443465 (lemmaPrefixMatchThenExistsStringThatMatches!155 lt!443463 lt!443469))))

(declare-fun res!603825 () Bool)

(assert (=> start!119546 (=> (not res!603825) (not e!858249))))

(get-info :version)

(assert (=> start!119546 (= res!603825 ((_ is Lexer!2064) thiss!19762))))

(assert (=> start!119546 e!858249))

(assert (=> start!119546 true))

(declare-fun e!858245 () Bool)

(assert (=> start!119546 e!858245))

(declare-fun inv!18016 (Token!4404) Bool)

(assert (=> start!119546 (and (inv!18016 t1!34) e!858251)))

(declare-fun e!858243 () Bool)

(assert (=> start!119546 (and (inv!18016 t2!34) e!858243)))

(declare-fun b!1340169 () Bool)

(declare-fun res!603836 () Bool)

(assert (=> b!1340169 (=> (not res!603836) (not e!858244))))

(declare-fun separableTokensPredicate!349 (LexerInterface!2066 Token!4404 Token!4404 List!13744) Bool)

(assert (=> b!1340169 (= res!603836 (not (separableTokensPredicate!349 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1340170 (= e!858234 (and tp!388038 tp!388043))))

(declare-fun e!858246 () Bool)

(declare-fun tp!388037 () Bool)

(declare-fun b!1340171 () Bool)

(assert (=> b!1340171 (= e!858246 (and tp!388037 (inv!18012 (tag!2633 (h!19079 rules!2550))) (inv!18015 (transformation!2371 (h!19079 rules!2550))) e!858241))))

(declare-fun b!1340172 () Bool)

(declare-fun res!603834 () Bool)

(assert (=> b!1340172 (=> (not res!603834) (not e!858249))))

(declare-fun rulesInvariant!1936 (LexerInterface!2066 List!13744) Bool)

(assert (=> b!1340172 (= res!603834 (rulesInvariant!1936 thiss!19762 rules!2550))))

(declare-fun b!1340173 () Bool)

(assert (=> b!1340173 (= e!858250 e!858233)))

(declare-fun res!603829 () Bool)

(assert (=> b!1340173 (=> res!603829 e!858233)))

(declare-fun lt!443464 () List!13743)

(declare-fun getSuffix!533 (List!13743 List!13743) List!13743)

(assert (=> b!1340173 (= res!603829 (not (= lt!443464 (++!3500 lt!443469 (getSuffix!533 lt!443464 lt!443469)))))))

(declare-fun pickWitness!140 (Int) List!13743)

(assert (=> b!1340173 (= lt!443464 (pickWitness!140 lambda!56135))))

(declare-fun b!1340174 () Bool)

(declare-fun tp!388040 () Bool)

(assert (=> b!1340174 (= e!858245 (and e!858246 tp!388040))))

(declare-fun b!1340175 () Bool)

(declare-fun res!603824 () Bool)

(assert (=> b!1340175 (=> (not res!603824) (not e!858249))))

(declare-fun isEmpty!8163 (List!13744) Bool)

(assert (=> b!1340175 (= res!603824 (not (isEmpty!8163 rules!2550)))))

(declare-fun e!858240 () Bool)

(declare-fun b!1340176 () Bool)

(declare-fun tp!388047 () Bool)

(declare-fun e!858237 () Bool)

(assert (=> b!1340176 (= e!858237 (and tp!388047 (inv!18012 (tag!2633 (rule!4116 t2!34))) (inv!18015 (transformation!2371 (rule!4116 t2!34))) e!858240))))

(declare-fun b!1340177 () Bool)

(declare-fun res!603833 () Bool)

(assert (=> b!1340177 (=> res!603833 e!858239)))

(assert (=> b!1340177 (= res!603833 (not (contains!2497 lt!443464 lt!443468)))))

(declare-fun b!1340178 () Bool)

(assert (=> b!1340178 (= e!858239 (contains!2497 lt!443469 lt!443470))))

(declare-fun b!1340179 () Bool)

(declare-fun tp!388041 () Bool)

(assert (=> b!1340179 (= e!858243 (and (inv!21 (value!77206 t2!34)) e!858237 tp!388041))))

(assert (=> b!1340180 (= e!858240 (and tp!388044 tp!388039))))

(declare-fun b!1340181 () Bool)

(declare-fun res!603827 () Bool)

(assert (=> b!1340181 (=> (not res!603827) (not e!858249))))

(assert (=> b!1340181 (= res!603827 (not (= (isSeparator!2371 (rule!4116 t1!34)) (isSeparator!2371 (rule!4116 t2!34)))))))

(assert (= (and start!119546 res!603825) b!1340175))

(assert (= (and b!1340175 res!603824) b!1340172))

(assert (= (and b!1340172 res!603834) b!1340160))

(assert (= (and b!1340160 res!603830) b!1340165))

(assert (= (and b!1340165 res!603828) b!1340181))

(assert (= (and b!1340181 res!603827) b!1340162))

(assert (= (and b!1340162 res!603832) b!1340159))

(assert (= (and b!1340159 res!603826) b!1340169))

(assert (= (and b!1340169 res!603836) b!1340167))

(assert (= (and b!1340167 res!603835) b!1340168))

(assert (= (and b!1340168 (not res!603831)) b!1340173))

(assert (= (and b!1340173 (not res!603829)) b!1340166))

(assert (= (and b!1340166 (not res!603837)) b!1340177))

(assert (= (and b!1340177 (not res!603833)) b!1340178))

(assert (= b!1340171 b!1340161))

(assert (= b!1340174 b!1340171))

(assert (= (and start!119546 ((_ is Cons!13678) rules!2550)) b!1340174))

(assert (= b!1340164 b!1340170))

(assert (= b!1340163 b!1340164))

(assert (= start!119546 b!1340163))

(assert (= b!1340176 b!1340180))

(assert (= b!1340179 b!1340176))

(assert (= start!119546 b!1340179))

(declare-fun m!1498417 () Bool)

(assert (=> b!1340171 m!1498417))

(declare-fun m!1498419 () Bool)

(assert (=> b!1340171 m!1498419))

(declare-fun m!1498421 () Bool)

(assert (=> b!1340167 m!1498421))

(declare-fun m!1498423 () Bool)

(assert (=> b!1340167 m!1498423))

(declare-fun m!1498425 () Bool)

(assert (=> b!1340167 m!1498425))

(declare-fun m!1498427 () Bool)

(assert (=> b!1340167 m!1498427))

(declare-fun m!1498429 () Bool)

(assert (=> b!1340167 m!1498429))

(declare-fun m!1498431 () Bool)

(assert (=> b!1340167 m!1498431))

(declare-fun m!1498433 () Bool)

(assert (=> b!1340175 m!1498433))

(declare-fun m!1498435 () Bool)

(assert (=> b!1340176 m!1498435))

(declare-fun m!1498437 () Bool)

(assert (=> b!1340176 m!1498437))

(declare-fun m!1498439 () Bool)

(assert (=> b!1340162 m!1498439))

(declare-fun m!1498441 () Bool)

(assert (=> b!1340162 m!1498441))

(declare-fun m!1498443 () Bool)

(assert (=> b!1340168 m!1498443))

(assert (=> b!1340168 m!1498443))

(declare-fun m!1498445 () Bool)

(assert (=> b!1340168 m!1498445))

(declare-fun m!1498447 () Bool)

(assert (=> b!1340159 m!1498447))

(declare-fun m!1498449 () Bool)

(assert (=> b!1340179 m!1498449))

(declare-fun m!1498451 () Bool)

(assert (=> b!1340178 m!1498451))

(declare-fun m!1498453 () Bool)

(assert (=> b!1340172 m!1498453))

(declare-fun m!1498455 () Bool)

(assert (=> b!1340160 m!1498455))

(declare-fun m!1498457 () Bool)

(assert (=> b!1340169 m!1498457))

(declare-fun m!1498459 () Bool)

(assert (=> b!1340165 m!1498459))

(declare-fun m!1498461 () Bool)

(assert (=> b!1340177 m!1498461))

(declare-fun m!1498463 () Bool)

(assert (=> b!1340163 m!1498463))

(declare-fun m!1498465 () Bool)

(assert (=> b!1340166 m!1498465))

(declare-fun m!1498467 () Bool)

(assert (=> b!1340166 m!1498467))

(declare-fun m!1498469 () Bool)

(assert (=> start!119546 m!1498469))

(declare-fun m!1498471 () Bool)

(assert (=> start!119546 m!1498471))

(declare-fun m!1498473 () Bool)

(assert (=> b!1340173 m!1498473))

(assert (=> b!1340173 m!1498473))

(declare-fun m!1498475 () Bool)

(assert (=> b!1340173 m!1498475))

(declare-fun m!1498477 () Bool)

(assert (=> b!1340173 m!1498477))

(declare-fun m!1498479 () Bool)

(assert (=> b!1340164 m!1498479))

(declare-fun m!1498481 () Bool)

(assert (=> b!1340164 m!1498481))

(check-sat (not b!1340163) (not b!1340174) (not b_next!33329) (not b!1340175) (not b!1340162) (not b!1340168) (not b!1340171) (not b!1340169) (not b_next!33323) (not b_next!33327) (not b!1340160) (not b!1340176) (not start!119546) b_and!89617 (not b!1340165) b_and!89619 b_and!89613 (not b!1340173) b_and!89621 (not b_next!33325) b_and!89615 (not b!1340164) (not b!1340172) (not b!1340179) (not b!1340167) (not b!1340178) b_and!89611 (not b_next!33331) (not b!1340177) (not b!1340166) (not b_next!33333) (not b!1340159))
(check-sat b_and!89617 b_and!89621 (not b_next!33329) b_and!89611 (not b_next!33331) (not b_next!33323) (not b_next!33327) (not b_next!33333) b_and!89619 b_and!89613 (not b_next!33325) b_and!89615)
(get-model)

(declare-fun d!377964 () Bool)

(declare-fun res!603859 () Bool)

(declare-fun e!858272 () Bool)

(assert (=> d!377964 (=> res!603859 e!858272)))

(assert (=> d!377964 (= res!603859 (not ((_ is Cons!13678) rules!2550)))))

(assert (=> d!377964 (= (sepAndNonSepRulesDisjointChars!744 rules!2550 rules!2550) e!858272)))

(declare-fun b!1340211 () Bool)

(declare-fun e!858273 () Bool)

(assert (=> b!1340211 (= e!858272 e!858273)))

(declare-fun res!603860 () Bool)

(assert (=> b!1340211 (=> (not res!603860) (not e!858273))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!340 (Rule!4542 List!13744) Bool)

(assert (=> b!1340211 (= res!603860 (ruleDisjointCharsFromAllFromOtherType!340 (h!19079 rules!2550) rules!2550))))

(declare-fun b!1340212 () Bool)

(assert (=> b!1340212 (= e!858273 (sepAndNonSepRulesDisjointChars!744 rules!2550 (t!119423 rules!2550)))))

(assert (= (and d!377964 (not res!603859)) b!1340211))

(assert (= (and b!1340211 res!603860) b!1340212))

(declare-fun m!1498493 () Bool)

(assert (=> b!1340211 m!1498493))

(declare-fun m!1498495 () Bool)

(assert (=> b!1340212 m!1498495))

(assert (=> b!1340159 d!377964))

(declare-fun d!377966 () Bool)

(declare-fun lt!443515 () Bool)

(declare-fun e!858358 () Bool)

(assert (=> d!377966 (= lt!443515 e!858358)))

(declare-fun res!603922 () Bool)

(assert (=> d!377966 (=> (not res!603922) (not e!858358))))

(declare-datatypes ((List!13748 0))(
  ( (Nil!13682) (Cons!13682 (h!19083 Token!4404) (t!119461 List!13748)) )
))
(declare-datatypes ((IArray!9023 0))(
  ( (IArray!9024 (innerList!4569 List!13748)) )
))
(declare-datatypes ((Conc!4509 0))(
  ( (Node!4509 (left!11736 Conc!4509) (right!12066 Conc!4509) (csize!9248 Int) (cheight!4720 Int)) (Leaf!6891 (xs!7228 IArray!9023) (csize!9249 Int)) (Empty!4509) )
))
(declare-datatypes ((BalanceConc!8958 0))(
  ( (BalanceConc!8959 (c!219578 Conc!4509)) )
))
(declare-fun list!5208 (BalanceConc!8958) List!13748)

(declare-datatypes ((tuple2!13294 0))(
  ( (tuple2!13295 (_1!7533 BalanceConc!8958) (_2!7533 BalanceConc!8954)) )
))
(declare-fun lex!897 (LexerInterface!2066 List!13744 BalanceConc!8954) tuple2!13294)

(declare-fun print!836 (LexerInterface!2066 BalanceConc!8958) BalanceConc!8954)

(declare-fun singletonSeq!977 (Token!4404) BalanceConc!8958)

(assert (=> d!377966 (= res!603922 (= (list!5208 (_1!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34))))) (list!5208 (singletonSeq!977 t1!34))))))

(declare-fun e!858357 () Bool)

(assert (=> d!377966 (= lt!443515 e!858357)))

(declare-fun res!603923 () Bool)

(assert (=> d!377966 (=> (not res!603923) (not e!858357))))

(declare-fun lt!443516 () tuple2!13294)

(declare-fun size!11148 (BalanceConc!8958) Int)

(assert (=> d!377966 (= res!603923 (= (size!11148 (_1!7533 lt!443516)) 1))))

(assert (=> d!377966 (= lt!443516 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34))))))

(assert (=> d!377966 (not (isEmpty!8163 rules!2550))))

(assert (=> d!377966 (= (rulesProduceIndividualToken!1035 thiss!19762 rules!2550 t1!34) lt!443515)))

(declare-fun b!1340342 () Bool)

(declare-fun res!603921 () Bool)

(assert (=> b!1340342 (=> (not res!603921) (not e!858357))))

(declare-fun apply!3223 (BalanceConc!8958 Int) Token!4404)

(assert (=> b!1340342 (= res!603921 (= (apply!3223 (_1!7533 lt!443516) 0) t1!34))))

(declare-fun b!1340343 () Bool)

(declare-fun isEmpty!8166 (BalanceConc!8954) Bool)

(assert (=> b!1340343 (= e!858357 (isEmpty!8166 (_2!7533 lt!443516)))))

(declare-fun b!1340344 () Bool)

(assert (=> b!1340344 (= e!858358 (isEmpty!8166 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34))))))))

(assert (= (and d!377966 res!603923) b!1340342))

(assert (= (and b!1340342 res!603921) b!1340343))

(assert (= (and d!377966 res!603922) b!1340344))

(declare-fun m!1498697 () Bool)

(assert (=> d!377966 m!1498697))

(declare-fun m!1498699 () Bool)

(assert (=> d!377966 m!1498699))

(assert (=> d!377966 m!1498433))

(declare-fun m!1498701 () Bool)

(assert (=> d!377966 m!1498701))

(declare-fun m!1498703 () Bool)

(assert (=> d!377966 m!1498703))

(assert (=> d!377966 m!1498701))

(declare-fun m!1498705 () Bool)

(assert (=> d!377966 m!1498705))

(assert (=> d!377966 m!1498705))

(declare-fun m!1498707 () Bool)

(assert (=> d!377966 m!1498707))

(assert (=> d!377966 m!1498701))

(declare-fun m!1498709 () Bool)

(assert (=> b!1340342 m!1498709))

(declare-fun m!1498711 () Bool)

(assert (=> b!1340343 m!1498711))

(assert (=> b!1340344 m!1498701))

(assert (=> b!1340344 m!1498701))

(assert (=> b!1340344 m!1498705))

(assert (=> b!1340344 m!1498705))

(assert (=> b!1340344 m!1498707))

(declare-fun m!1498713 () Bool)

(assert (=> b!1340344 m!1498713))

(assert (=> b!1340160 d!377966))

(declare-fun d!378030 () Bool)

(assert (=> d!378030 (= (inv!18012 (tag!2633 (h!19079 rules!2550))) (= (mod (str.len (value!77205 (tag!2633 (h!19079 rules!2550)))) 2) 0))))

(assert (=> b!1340171 d!378030))

(declare-fun d!378032 () Bool)

(declare-fun res!603926 () Bool)

(declare-fun e!858361 () Bool)

(assert (=> d!378032 (=> (not res!603926) (not e!858361))))

(declare-fun semiInverseModEq!898 (Int Int) Bool)

(assert (=> d!378032 (= res!603926 (semiInverseModEq!898 (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toValue!3610 (transformation!2371 (h!19079 rules!2550)))))))

(assert (=> d!378032 (= (inv!18015 (transformation!2371 (h!19079 rules!2550))) e!858361)))

(declare-fun b!1340347 () Bool)

(declare-fun equivClasses!857 (Int Int) Bool)

(assert (=> b!1340347 (= e!858361 (equivClasses!857 (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toValue!3610 (transformation!2371 (h!19079 rules!2550)))))))

(assert (= (and d!378032 res!603926) b!1340347))

(declare-fun m!1498715 () Bool)

(assert (=> d!378032 m!1498715))

(declare-fun m!1498717 () Bool)

(assert (=> b!1340347 m!1498717))

(assert (=> b!1340171 d!378032))

(declare-fun d!378034 () Bool)

(declare-fun lt!443519 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1945 (List!13743) (InoxSet C!7660))

(assert (=> d!378034 (= lt!443519 (select (content!1945 lt!443469) lt!443470))))

(declare-fun e!858367 () Bool)

(assert (=> d!378034 (= lt!443519 e!858367)))

(declare-fun res!603931 () Bool)

(assert (=> d!378034 (=> (not res!603931) (not e!858367))))

(assert (=> d!378034 (= res!603931 ((_ is Cons!13677) lt!443469))))

(assert (=> d!378034 (= (contains!2497 lt!443469 lt!443470) lt!443519)))

(declare-fun b!1340352 () Bool)

(declare-fun e!858366 () Bool)

(assert (=> b!1340352 (= e!858367 e!858366)))

(declare-fun res!603932 () Bool)

(assert (=> b!1340352 (=> res!603932 e!858366)))

(assert (=> b!1340352 (= res!603932 (= (h!19078 lt!443469) lt!443470))))

(declare-fun b!1340353 () Bool)

(assert (=> b!1340353 (= e!858366 (contains!2497 (t!119422 lt!443469) lt!443470))))

(assert (= (and d!378034 res!603931) b!1340352))

(assert (= (and b!1340352 (not res!603932)) b!1340353))

(declare-fun m!1498719 () Bool)

(assert (=> d!378034 m!1498719))

(declare-fun m!1498721 () Bool)

(assert (=> d!378034 m!1498721))

(declare-fun m!1498723 () Bool)

(assert (=> b!1340353 m!1498723))

(assert (=> b!1340178 d!378034))

(declare-fun d!378036 () Bool)

(declare-fun c!219562 () Bool)

(declare-fun isEmpty!8167 (List!13743) Bool)

(assert (=> d!378036 (= c!219562 (isEmpty!8167 lt!443469))))

(declare-fun e!858370 () Bool)

(assert (=> d!378036 (= (prefixMatch!194 lt!443463 lt!443469) e!858370)))

(declare-fun b!1340358 () Bool)

(declare-fun lostCause!303 (Regex!3685) Bool)

(assert (=> b!1340358 (= e!858370 (not (lostCause!303 lt!443463)))))

(declare-fun b!1340359 () Bool)

(declare-fun derivativeStep!927 (Regex!3685 C!7660) Regex!3685)

(declare-fun head!2377 (List!13743) C!7660)

(declare-fun tail!1926 (List!13743) List!13743)

(assert (=> b!1340359 (= e!858370 (prefixMatch!194 (derivativeStep!927 lt!443463 (head!2377 lt!443469)) (tail!1926 lt!443469)))))

(assert (= (and d!378036 c!219562) b!1340358))

(assert (= (and d!378036 (not c!219562)) b!1340359))

(declare-fun m!1498725 () Bool)

(assert (=> d!378036 m!1498725))

(declare-fun m!1498727 () Bool)

(assert (=> b!1340358 m!1498727))

(declare-fun m!1498729 () Bool)

(assert (=> b!1340359 m!1498729))

(assert (=> b!1340359 m!1498729))

(declare-fun m!1498731 () Bool)

(assert (=> b!1340359 m!1498731))

(declare-fun m!1498733 () Bool)

(assert (=> b!1340359 m!1498733))

(assert (=> b!1340359 m!1498731))

(assert (=> b!1340359 m!1498733))

(declare-fun m!1498735 () Bool)

(assert (=> b!1340359 m!1498735))

(assert (=> b!1340167 d!378036))

(declare-fun d!378038 () Bool)

(declare-fun list!5209 (Conc!4507) List!13743)

(assert (=> d!378038 (= (list!5205 lt!443467) (list!5209 (c!219539 lt!443467)))))

(declare-fun bs!332256 () Bool)

(assert (= bs!332256 d!378038))

(declare-fun m!1498737 () Bool)

(assert (=> bs!332256 m!1498737))

(assert (=> b!1340167 d!378038))

(declare-fun d!378040 () Bool)

(declare-fun lt!443522 () BalanceConc!8954)

(assert (=> d!378040 (= (list!5205 lt!443522) (originalCharacters!3233 t1!34))))

(declare-fun dynLambda!6033 (Int TokenValue!2461) BalanceConc!8954)

(assert (=> d!378040 (= lt!443522 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))))

(assert (=> d!378040 (= (charsOf!1343 t1!34) lt!443522)))

(declare-fun b_lambda!39603 () Bool)

(assert (=> (not b_lambda!39603) (not d!378040)))

(declare-fun t!119445 () Bool)

(declare-fun tb!70569 () Bool)

(assert (=> (and b!1340180 (= (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) t!119445) tb!70569))

(declare-fun b!1340364 () Bool)

(declare-fun e!858373 () Bool)

(declare-fun tp!388096 () Bool)

(declare-fun inv!18019 (Conc!4507) Bool)

(assert (=> b!1340364 (= e!858373 (and (inv!18019 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))) tp!388096))))

(declare-fun result!85758 () Bool)

(declare-fun inv!18020 (BalanceConc!8954) Bool)

(assert (=> tb!70569 (= result!85758 (and (inv!18020 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))) e!858373))))

(assert (= tb!70569 b!1340364))

(declare-fun m!1498739 () Bool)

(assert (=> b!1340364 m!1498739))

(declare-fun m!1498741 () Bool)

(assert (=> tb!70569 m!1498741))

(assert (=> d!378040 t!119445))

(declare-fun b_and!89651 () Bool)

(assert (= b_and!89613 (and (=> t!119445 result!85758) b_and!89651)))

(declare-fun t!119447 () Bool)

(declare-fun tb!70571 () Bool)

(assert (=> (and b!1340170 (= (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) t!119447) tb!70571))

(declare-fun result!85762 () Bool)

(assert (= result!85762 result!85758))

(assert (=> d!378040 t!119447))

(declare-fun b_and!89653 () Bool)

(assert (= b_and!89617 (and (=> t!119447 result!85762) b_and!89653)))

(declare-fun tb!70573 () Bool)

(declare-fun t!119449 () Bool)

(assert (=> (and b!1340161 (= (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) t!119449) tb!70573))

(declare-fun result!85764 () Bool)

(assert (= result!85764 result!85758))

(assert (=> d!378040 t!119449))

(declare-fun b_and!89655 () Bool)

(assert (= b_and!89621 (and (=> t!119449 result!85764) b_and!89655)))

(declare-fun m!1498743 () Bool)

(assert (=> d!378040 m!1498743))

(declare-fun m!1498745 () Bool)

(assert (=> d!378040 m!1498745))

(assert (=> b!1340167 d!378040))

(declare-fun d!378042 () Bool)

(declare-fun lt!443525 () Unit!19809)

(declare-fun lemma!97 (List!13744 LexerInterface!2066 List!13744) Unit!19809)

(assert (=> d!378042 (= lt!443525 (lemma!97 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!56144 () Int)

(declare-datatypes ((List!13749 0))(
  ( (Nil!13683) (Cons!13683 (h!19084 Regex!3685) (t!119462 List!13749)) )
))
(declare-fun generalisedUnion!105 (List!13749) Regex!3685)

(declare-fun map!3017 (List!13744 Int) List!13749)

(assert (=> d!378042 (= (rulesRegex!254 thiss!19762 rules!2550) (generalisedUnion!105 (map!3017 rules!2550 lambda!56144)))))

(declare-fun bs!332257 () Bool)

(assert (= bs!332257 d!378042))

(declare-fun m!1498747 () Bool)

(assert (=> bs!332257 m!1498747))

(declare-fun m!1498749 () Bool)

(assert (=> bs!332257 m!1498749))

(assert (=> bs!332257 m!1498749))

(declare-fun m!1498751 () Bool)

(assert (=> bs!332257 m!1498751))

(assert (=> b!1340167 d!378042))

(declare-fun b!1340373 () Bool)

(declare-fun e!858378 () List!13743)

(assert (=> b!1340373 (= e!858378 (Cons!13677 lt!443470 Nil!13677))))

(declare-fun b!1340375 () Bool)

(declare-fun res!603938 () Bool)

(declare-fun e!858379 () Bool)

(assert (=> b!1340375 (=> (not res!603938) (not e!858379))))

(declare-fun lt!443528 () List!13743)

(declare-fun size!11149 (List!13743) Int)

(assert (=> b!1340375 (= res!603938 (= (size!11149 lt!443528) (+ (size!11149 lt!443462) (size!11149 (Cons!13677 lt!443470 Nil!13677)))))))

(declare-fun d!378044 () Bool)

(assert (=> d!378044 e!858379))

(declare-fun res!603937 () Bool)

(assert (=> d!378044 (=> (not res!603937) (not e!858379))))

(assert (=> d!378044 (= res!603937 (= (content!1945 lt!443528) ((_ map or) (content!1945 lt!443462) (content!1945 (Cons!13677 lt!443470 Nil!13677)))))))

(assert (=> d!378044 (= lt!443528 e!858378)))

(declare-fun c!219565 () Bool)

(assert (=> d!378044 (= c!219565 ((_ is Nil!13677) lt!443462))))

(assert (=> d!378044 (= (++!3500 lt!443462 (Cons!13677 lt!443470 Nil!13677)) lt!443528)))

(declare-fun b!1340376 () Bool)

(assert (=> b!1340376 (= e!858379 (or (not (= (Cons!13677 lt!443470 Nil!13677) Nil!13677)) (= lt!443528 lt!443462)))))

(declare-fun b!1340374 () Bool)

(assert (=> b!1340374 (= e!858378 (Cons!13677 (h!19078 lt!443462) (++!3500 (t!119422 lt!443462) (Cons!13677 lt!443470 Nil!13677))))))

(assert (= (and d!378044 c!219565) b!1340373))

(assert (= (and d!378044 (not c!219565)) b!1340374))

(assert (= (and d!378044 res!603937) b!1340375))

(assert (= (and b!1340375 res!603938) b!1340376))

(declare-fun m!1498753 () Bool)

(assert (=> b!1340375 m!1498753))

(declare-fun m!1498755 () Bool)

(assert (=> b!1340375 m!1498755))

(declare-fun m!1498757 () Bool)

(assert (=> b!1340375 m!1498757))

(declare-fun m!1498759 () Bool)

(assert (=> d!378044 m!1498759))

(declare-fun m!1498761 () Bool)

(assert (=> d!378044 m!1498761))

(declare-fun m!1498763 () Bool)

(assert (=> d!378044 m!1498763))

(declare-fun m!1498765 () Bool)

(assert (=> b!1340374 m!1498765))

(assert (=> b!1340167 d!378044))

(declare-fun d!378046 () Bool)

(declare-fun lt!443531 () C!7660)

(declare-fun apply!3224 (List!13743 Int) C!7660)

(assert (=> d!378046 (= lt!443531 (apply!3224 (list!5205 lt!443466) 0))))

(declare-fun apply!3225 (Conc!4507 Int) C!7660)

(assert (=> d!378046 (= lt!443531 (apply!3225 (c!219539 lt!443466) 0))))

(declare-fun e!858382 () Bool)

(assert (=> d!378046 e!858382))

(declare-fun res!603941 () Bool)

(assert (=> d!378046 (=> (not res!603941) (not e!858382))))

(assert (=> d!378046 (= res!603941 (<= 0 0))))

(assert (=> d!378046 (= (apply!3219 lt!443466 0) lt!443531)))

(declare-fun b!1340379 () Bool)

(assert (=> b!1340379 (= e!858382 (< 0 (size!11144 lt!443466)))))

(assert (= (and d!378046 res!603941) b!1340379))

(declare-fun m!1498767 () Bool)

(assert (=> d!378046 m!1498767))

(assert (=> d!378046 m!1498767))

(declare-fun m!1498769 () Bool)

(assert (=> d!378046 m!1498769))

(declare-fun m!1498771 () Bool)

(assert (=> d!378046 m!1498771))

(assert (=> b!1340379 m!1498439))

(assert (=> b!1340167 d!378046))

(declare-fun d!378048 () Bool)

(declare-fun prefixMatchZipperSequence!214 (Regex!3685 BalanceConc!8954) Bool)

(declare-fun ++!3502 (BalanceConc!8954 BalanceConc!8954) BalanceConc!8954)

(declare-fun singletonSeq!978 (C!7660) BalanceConc!8954)

(assert (=> d!378048 (= (separableTokensPredicate!349 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!214 (rulesRegex!254 thiss!19762 rules!2550) (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))))))

(declare-fun bs!332258 () Bool)

(assert (= bs!332258 d!378048))

(assert (=> bs!332258 m!1498441))

(declare-fun m!1498773 () Bool)

(assert (=> bs!332258 m!1498773))

(assert (=> bs!332258 m!1498441))

(assert (=> bs!332258 m!1498431))

(declare-fun m!1498775 () Bool)

(assert (=> bs!332258 m!1498775))

(declare-fun m!1498777 () Bool)

(assert (=> bs!332258 m!1498777))

(assert (=> bs!332258 m!1498423))

(assert (=> bs!332258 m!1498773))

(declare-fun m!1498779 () Bool)

(assert (=> bs!332258 m!1498779))

(assert (=> bs!332258 m!1498431))

(assert (=> bs!332258 m!1498423))

(assert (=> bs!332258 m!1498779))

(assert (=> bs!332258 m!1498775))

(assert (=> b!1340169 d!378048))

(declare-fun d!378050 () Bool)

(declare-fun choose!8221 (Int) Bool)

(assert (=> d!378050 (= (Exists!837 lambda!56135) (choose!8221 lambda!56135))))

(declare-fun bs!332259 () Bool)

(assert (= bs!332259 d!378050))

(declare-fun m!1498781 () Bool)

(assert (=> bs!332259 m!1498781))

(assert (=> b!1340168 d!378050))

(declare-fun bs!332260 () Bool)

(declare-fun d!378052 () Bool)

(assert (= bs!332260 (and d!378052 b!1340168)))

(declare-fun lambda!56147 () Int)

(assert (=> bs!332260 (= lambda!56147 lambda!56135)))

(assert (=> d!378052 true))

(assert (=> d!378052 true))

(assert (=> d!378052 (Exists!837 lambda!56147)))

(declare-fun lt!443534 () Unit!19809)

(declare-fun choose!8222 (Regex!3685 List!13743) Unit!19809)

(assert (=> d!378052 (= lt!443534 (choose!8222 lt!443463 lt!443469))))

(declare-fun validRegex!1589 (Regex!3685) Bool)

(assert (=> d!378052 (validRegex!1589 lt!443463)))

(assert (=> d!378052 (= (lemmaPrefixMatchThenExistsStringThatMatches!155 lt!443463 lt!443469) lt!443534)))

(declare-fun bs!332261 () Bool)

(assert (= bs!332261 d!378052))

(declare-fun m!1498783 () Bool)

(assert (=> bs!332261 m!1498783))

(declare-fun m!1498785 () Bool)

(assert (=> bs!332261 m!1498785))

(declare-fun m!1498787 () Bool)

(assert (=> bs!332261 m!1498787))

(assert (=> b!1340168 d!378052))

(declare-fun b!1340392 () Bool)

(declare-fun e!858392 () Bool)

(declare-fun inv!17 (TokenValue!2461) Bool)

(assert (=> b!1340392 (= e!858392 (inv!17 (value!77206 t2!34)))))

(declare-fun b!1340393 () Bool)

(declare-fun e!858391 () Bool)

(declare-fun inv!16 (TokenValue!2461) Bool)

(assert (=> b!1340393 (= e!858391 (inv!16 (value!77206 t2!34)))))

(declare-fun b!1340394 () Bool)

(declare-fun e!858393 () Bool)

(declare-fun inv!15 (TokenValue!2461) Bool)

(assert (=> b!1340394 (= e!858393 (inv!15 (value!77206 t2!34)))))

(declare-fun b!1340395 () Bool)

(declare-fun res!603946 () Bool)

(assert (=> b!1340395 (=> res!603946 e!858393)))

(assert (=> b!1340395 (= res!603946 (not ((_ is IntegerValue!7385) (value!77206 t2!34))))))

(assert (=> b!1340395 (= e!858392 e!858393)))

(declare-fun d!378054 () Bool)

(declare-fun c!219570 () Bool)

(assert (=> d!378054 (= c!219570 ((_ is IntegerValue!7383) (value!77206 t2!34)))))

(assert (=> d!378054 (= (inv!21 (value!77206 t2!34)) e!858391)))

(declare-fun b!1340396 () Bool)

(assert (=> b!1340396 (= e!858391 e!858392)))

(declare-fun c!219571 () Bool)

(assert (=> b!1340396 (= c!219571 ((_ is IntegerValue!7384) (value!77206 t2!34)))))

(assert (= (and d!378054 c!219570) b!1340393))

(assert (= (and d!378054 (not c!219570)) b!1340396))

(assert (= (and b!1340396 c!219571) b!1340392))

(assert (= (and b!1340396 (not c!219571)) b!1340395))

(assert (= (and b!1340395 (not res!603946)) b!1340394))

(declare-fun m!1498789 () Bool)

(assert (=> b!1340392 m!1498789))

(declare-fun m!1498791 () Bool)

(assert (=> b!1340393 m!1498791))

(declare-fun m!1498793 () Bool)

(assert (=> b!1340394 m!1498793))

(assert (=> b!1340179 d!378054))

(declare-fun d!378056 () Bool)

(declare-fun lt!443535 () Bool)

(declare-fun e!858395 () Bool)

(assert (=> d!378056 (= lt!443535 e!858395)))

(declare-fun res!603948 () Bool)

(assert (=> d!378056 (=> (not res!603948) (not e!858395))))

(assert (=> d!378056 (= res!603948 (= (list!5208 (_1!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34))))) (list!5208 (singletonSeq!977 t2!34))))))

(declare-fun e!858394 () Bool)

(assert (=> d!378056 (= lt!443535 e!858394)))

(declare-fun res!603949 () Bool)

(assert (=> d!378056 (=> (not res!603949) (not e!858394))))

(declare-fun lt!443536 () tuple2!13294)

(assert (=> d!378056 (= res!603949 (= (size!11148 (_1!7533 lt!443536)) 1))))

(assert (=> d!378056 (= lt!443536 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34))))))

(assert (=> d!378056 (not (isEmpty!8163 rules!2550))))

(assert (=> d!378056 (= (rulesProduceIndividualToken!1035 thiss!19762 rules!2550 t2!34) lt!443535)))

(declare-fun b!1340397 () Bool)

(declare-fun res!603947 () Bool)

(assert (=> b!1340397 (=> (not res!603947) (not e!858394))))

(assert (=> b!1340397 (= res!603947 (= (apply!3223 (_1!7533 lt!443536) 0) t2!34))))

(declare-fun b!1340398 () Bool)

(assert (=> b!1340398 (= e!858394 (isEmpty!8166 (_2!7533 lt!443536)))))

(declare-fun b!1340399 () Bool)

(assert (=> b!1340399 (= e!858395 (isEmpty!8166 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34))))))))

(assert (= (and d!378056 res!603949) b!1340397))

(assert (= (and b!1340397 res!603947) b!1340398))

(assert (= (and d!378056 res!603948) b!1340399))

(declare-fun m!1498795 () Bool)

(assert (=> d!378056 m!1498795))

(declare-fun m!1498797 () Bool)

(assert (=> d!378056 m!1498797))

(assert (=> d!378056 m!1498433))

(declare-fun m!1498799 () Bool)

(assert (=> d!378056 m!1498799))

(declare-fun m!1498801 () Bool)

(assert (=> d!378056 m!1498801))

(assert (=> d!378056 m!1498799))

(declare-fun m!1498803 () Bool)

(assert (=> d!378056 m!1498803))

(assert (=> d!378056 m!1498803))

(declare-fun m!1498805 () Bool)

(assert (=> d!378056 m!1498805))

(assert (=> d!378056 m!1498799))

(declare-fun m!1498807 () Bool)

(assert (=> b!1340397 m!1498807))

(declare-fun m!1498809 () Bool)

(assert (=> b!1340398 m!1498809))

(assert (=> b!1340399 m!1498799))

(assert (=> b!1340399 m!1498799))

(assert (=> b!1340399 m!1498803))

(assert (=> b!1340399 m!1498803))

(assert (=> b!1340399 m!1498805))

(declare-fun m!1498811 () Bool)

(assert (=> b!1340399 m!1498811))

(assert (=> b!1340165 d!378056))

(declare-fun d!378058 () Bool)

(assert (=> d!378058 (= (inv!18012 (tag!2633 (rule!4116 t1!34))) (= (mod (str.len (value!77205 (tag!2633 (rule!4116 t1!34)))) 2) 0))))

(assert (=> b!1340164 d!378058))

(declare-fun d!378060 () Bool)

(declare-fun res!603950 () Bool)

(declare-fun e!858396 () Bool)

(assert (=> d!378060 (=> (not res!603950) (not e!858396))))

(assert (=> d!378060 (= res!603950 (semiInverseModEq!898 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toValue!3610 (transformation!2371 (rule!4116 t1!34)))))))

(assert (=> d!378060 (= (inv!18015 (transformation!2371 (rule!4116 t1!34))) e!858396)))

(declare-fun b!1340400 () Bool)

(assert (=> b!1340400 (= e!858396 (equivClasses!857 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toValue!3610 (transformation!2371 (rule!4116 t1!34)))))))

(assert (= (and d!378060 res!603950) b!1340400))

(declare-fun m!1498813 () Bool)

(assert (=> d!378060 m!1498813))

(declare-fun m!1498815 () Bool)

(assert (=> b!1340400 m!1498815))

(assert (=> b!1340164 d!378060))

(declare-fun d!378062 () Bool)

(assert (=> d!378062 (= (isEmpty!8163 rules!2550) ((_ is Nil!13678) rules!2550))))

(assert (=> b!1340175 d!378062))

(declare-fun d!378064 () Bool)

(declare-fun lt!443537 () Bool)

(assert (=> d!378064 (= lt!443537 (select (content!1945 lt!443469) lt!443468))))

(declare-fun e!858398 () Bool)

(assert (=> d!378064 (= lt!443537 e!858398)))

(declare-fun res!603951 () Bool)

(assert (=> d!378064 (=> (not res!603951) (not e!858398))))

(assert (=> d!378064 (= res!603951 ((_ is Cons!13677) lt!443469))))

(assert (=> d!378064 (= (contains!2497 lt!443469 lt!443468) lt!443537)))

(declare-fun b!1340401 () Bool)

(declare-fun e!858397 () Bool)

(assert (=> b!1340401 (= e!858398 e!858397)))

(declare-fun res!603952 () Bool)

(assert (=> b!1340401 (=> res!603952 e!858397)))

(assert (=> b!1340401 (= res!603952 (= (h!19078 lt!443469) lt!443468))))

(declare-fun b!1340402 () Bool)

(assert (=> b!1340402 (= e!858397 (contains!2497 (t!119422 lt!443469) lt!443468))))

(assert (= (and d!378064 res!603951) b!1340401))

(assert (= (and b!1340401 (not res!603952)) b!1340402))

(assert (=> d!378064 m!1498719))

(declare-fun m!1498817 () Bool)

(assert (=> d!378064 m!1498817))

(declare-fun m!1498819 () Bool)

(assert (=> b!1340402 m!1498819))

(assert (=> b!1340166 d!378064))

(declare-fun d!378066 () Bool)

(declare-fun lt!443538 () C!7660)

(assert (=> d!378066 (= lt!443538 (apply!3224 (list!5205 lt!443467) 0))))

(assert (=> d!378066 (= lt!443538 (apply!3225 (c!219539 lt!443467) 0))))

(declare-fun e!858399 () Bool)

(assert (=> d!378066 e!858399))

(declare-fun res!603953 () Bool)

(assert (=> d!378066 (=> (not res!603953) (not e!858399))))

(assert (=> d!378066 (= res!603953 (<= 0 0))))

(assert (=> d!378066 (= (apply!3219 lt!443467 0) lt!443538)))

(declare-fun b!1340403 () Bool)

(assert (=> b!1340403 (= e!858399 (< 0 (size!11144 lt!443467)))))

(assert (= (and d!378066 res!603953) b!1340403))

(assert (=> d!378066 m!1498427))

(assert (=> d!378066 m!1498427))

(declare-fun m!1498821 () Bool)

(assert (=> d!378066 m!1498821))

(declare-fun m!1498823 () Bool)

(assert (=> d!378066 m!1498823))

(declare-fun m!1498825 () Bool)

(assert (=> b!1340403 m!1498825))

(assert (=> b!1340166 d!378066))

(declare-fun d!378068 () Bool)

(declare-fun lt!443539 () Bool)

(assert (=> d!378068 (= lt!443539 (select (content!1945 lt!443464) lt!443468))))

(declare-fun e!858401 () Bool)

(assert (=> d!378068 (= lt!443539 e!858401)))

(declare-fun res!603954 () Bool)

(assert (=> d!378068 (=> (not res!603954) (not e!858401))))

(assert (=> d!378068 (= res!603954 ((_ is Cons!13677) lt!443464))))

(assert (=> d!378068 (= (contains!2497 lt!443464 lt!443468) lt!443539)))

(declare-fun b!1340404 () Bool)

(declare-fun e!858400 () Bool)

(assert (=> b!1340404 (= e!858401 e!858400)))

(declare-fun res!603955 () Bool)

(assert (=> b!1340404 (=> res!603955 e!858400)))

(assert (=> b!1340404 (= res!603955 (= (h!19078 lt!443464) lt!443468))))

(declare-fun b!1340405 () Bool)

(assert (=> b!1340405 (= e!858400 (contains!2497 (t!119422 lt!443464) lt!443468))))

(assert (= (and d!378068 res!603954) b!1340404))

(assert (= (and b!1340404 (not res!603955)) b!1340405))

(declare-fun m!1498827 () Bool)

(assert (=> d!378068 m!1498827))

(declare-fun m!1498829 () Bool)

(assert (=> d!378068 m!1498829))

(declare-fun m!1498831 () Bool)

(assert (=> b!1340405 m!1498831))

(assert (=> b!1340177 d!378068))

(declare-fun d!378070 () Bool)

(assert (=> d!378070 (= (inv!18012 (tag!2633 (rule!4116 t2!34))) (= (mod (str.len (value!77205 (tag!2633 (rule!4116 t2!34)))) 2) 0))))

(assert (=> b!1340176 d!378070))

(declare-fun d!378072 () Bool)

(declare-fun res!603956 () Bool)

(declare-fun e!858402 () Bool)

(assert (=> d!378072 (=> (not res!603956) (not e!858402))))

(assert (=> d!378072 (= res!603956 (semiInverseModEq!898 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toValue!3610 (transformation!2371 (rule!4116 t2!34)))))))

(assert (=> d!378072 (= (inv!18015 (transformation!2371 (rule!4116 t2!34))) e!858402)))

(declare-fun b!1340406 () Bool)

(assert (=> b!1340406 (= e!858402 (equivClasses!857 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toValue!3610 (transformation!2371 (rule!4116 t2!34)))))))

(assert (= (and d!378072 res!603956) b!1340406))

(declare-fun m!1498833 () Bool)

(assert (=> d!378072 m!1498833))

(declare-fun m!1498835 () Bool)

(assert (=> b!1340406 m!1498835))

(assert (=> b!1340176 d!378072))

(declare-fun d!378074 () Bool)

(declare-fun lt!443542 () Int)

(assert (=> d!378074 (= lt!443542 (size!11149 (list!5205 lt!443466)))))

(declare-fun size!11150 (Conc!4507) Int)

(assert (=> d!378074 (= lt!443542 (size!11150 (c!219539 lt!443466)))))

(assert (=> d!378074 (= (size!11144 lt!443466) lt!443542)))

(declare-fun bs!332262 () Bool)

(assert (= bs!332262 d!378074))

(assert (=> bs!332262 m!1498767))

(assert (=> bs!332262 m!1498767))

(declare-fun m!1498837 () Bool)

(assert (=> bs!332262 m!1498837))

(declare-fun m!1498839 () Bool)

(assert (=> bs!332262 m!1498839))

(assert (=> b!1340162 d!378074))

(declare-fun d!378076 () Bool)

(declare-fun lt!443543 () BalanceConc!8954)

(assert (=> d!378076 (= (list!5205 lt!443543) (originalCharacters!3233 t2!34))))

(assert (=> d!378076 (= lt!443543 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))))

(assert (=> d!378076 (= (charsOf!1343 t2!34) lt!443543)))

(declare-fun b_lambda!39605 () Bool)

(assert (=> (not b_lambda!39605) (not d!378076)))

(declare-fun t!119452 () Bool)

(declare-fun tb!70575 () Bool)

(assert (=> (and b!1340180 (= (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toChars!3469 (transformation!2371 (rule!4116 t2!34)))) t!119452) tb!70575))

(declare-fun b!1340407 () Bool)

(declare-fun e!858403 () Bool)

(declare-fun tp!388097 () Bool)

(assert (=> b!1340407 (= e!858403 (and (inv!18019 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))) tp!388097))))

(declare-fun result!85766 () Bool)

(assert (=> tb!70575 (= result!85766 (and (inv!18020 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))) e!858403))))

(assert (= tb!70575 b!1340407))

(declare-fun m!1498841 () Bool)

(assert (=> b!1340407 m!1498841))

(declare-fun m!1498843 () Bool)

(assert (=> tb!70575 m!1498843))

(assert (=> d!378076 t!119452))

(declare-fun b_and!89657 () Bool)

(assert (= b_and!89651 (and (=> t!119452 result!85766) b_and!89657)))

(declare-fun t!119454 () Bool)

(declare-fun tb!70577 () Bool)

(assert (=> (and b!1340170 (= (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toChars!3469 (transformation!2371 (rule!4116 t2!34)))) t!119454) tb!70577))

(declare-fun result!85768 () Bool)

(assert (= result!85768 result!85766))

(assert (=> d!378076 t!119454))

(declare-fun b_and!89659 () Bool)

(assert (= b_and!89653 (and (=> t!119454 result!85768) b_and!89659)))

(declare-fun tb!70579 () Bool)

(declare-fun t!119456 () Bool)

(assert (=> (and b!1340161 (= (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toChars!3469 (transformation!2371 (rule!4116 t2!34)))) t!119456) tb!70579))

(declare-fun result!85770 () Bool)

(assert (= result!85770 result!85766))

(assert (=> d!378076 t!119456))

(declare-fun b_and!89661 () Bool)

(assert (= b_and!89655 (and (=> t!119456 result!85770) b_and!89661)))

(declare-fun m!1498845 () Bool)

(assert (=> d!378076 m!1498845))

(declare-fun m!1498847 () Bool)

(assert (=> d!378076 m!1498847))

(assert (=> b!1340162 d!378076))

(declare-fun b!1340408 () Bool)

(declare-fun e!858404 () List!13743)

(assert (=> b!1340408 (= e!858404 (getSuffix!533 lt!443464 lt!443469))))

(declare-fun b!1340410 () Bool)

(declare-fun res!603958 () Bool)

(declare-fun e!858405 () Bool)

(assert (=> b!1340410 (=> (not res!603958) (not e!858405))))

(declare-fun lt!443544 () List!13743)

(assert (=> b!1340410 (= res!603958 (= (size!11149 lt!443544) (+ (size!11149 lt!443469) (size!11149 (getSuffix!533 lt!443464 lt!443469)))))))

(declare-fun d!378078 () Bool)

(assert (=> d!378078 e!858405))

(declare-fun res!603957 () Bool)

(assert (=> d!378078 (=> (not res!603957) (not e!858405))))

(assert (=> d!378078 (= res!603957 (= (content!1945 lt!443544) ((_ map or) (content!1945 lt!443469) (content!1945 (getSuffix!533 lt!443464 lt!443469)))))))

(assert (=> d!378078 (= lt!443544 e!858404)))

(declare-fun c!219572 () Bool)

(assert (=> d!378078 (= c!219572 ((_ is Nil!13677) lt!443469))))

(assert (=> d!378078 (= (++!3500 lt!443469 (getSuffix!533 lt!443464 lt!443469)) lt!443544)))

(declare-fun b!1340411 () Bool)

(assert (=> b!1340411 (= e!858405 (or (not (= (getSuffix!533 lt!443464 lt!443469) Nil!13677)) (= lt!443544 lt!443469)))))

(declare-fun b!1340409 () Bool)

(assert (=> b!1340409 (= e!858404 (Cons!13677 (h!19078 lt!443469) (++!3500 (t!119422 lt!443469) (getSuffix!533 lt!443464 lt!443469))))))

(assert (= (and d!378078 c!219572) b!1340408))

(assert (= (and d!378078 (not c!219572)) b!1340409))

(assert (= (and d!378078 res!603957) b!1340410))

(assert (= (and b!1340410 res!603958) b!1340411))

(declare-fun m!1498849 () Bool)

(assert (=> b!1340410 m!1498849))

(declare-fun m!1498851 () Bool)

(assert (=> b!1340410 m!1498851))

(assert (=> b!1340410 m!1498473))

(declare-fun m!1498853 () Bool)

(assert (=> b!1340410 m!1498853))

(declare-fun m!1498855 () Bool)

(assert (=> d!378078 m!1498855))

(assert (=> d!378078 m!1498719))

(assert (=> d!378078 m!1498473))

(declare-fun m!1498857 () Bool)

(assert (=> d!378078 m!1498857))

(assert (=> b!1340409 m!1498473))

(declare-fun m!1498859 () Bool)

(assert (=> b!1340409 m!1498859))

(assert (=> b!1340173 d!378078))

(declare-fun d!378080 () Bool)

(declare-fun lt!443547 () List!13743)

(assert (=> d!378080 (= (++!3500 lt!443469 lt!443547) lt!443464)))

(declare-fun e!858408 () List!13743)

(assert (=> d!378080 (= lt!443547 e!858408)))

(declare-fun c!219575 () Bool)

(assert (=> d!378080 (= c!219575 ((_ is Cons!13677) lt!443469))))

(assert (=> d!378080 (>= (size!11149 lt!443464) (size!11149 lt!443469))))

(assert (=> d!378080 (= (getSuffix!533 lt!443464 lt!443469) lt!443547)))

(declare-fun b!1340416 () Bool)

(assert (=> b!1340416 (= e!858408 (getSuffix!533 (tail!1926 lt!443464) (t!119422 lt!443469)))))

(declare-fun b!1340417 () Bool)

(assert (=> b!1340417 (= e!858408 lt!443464)))

(assert (= (and d!378080 c!219575) b!1340416))

(assert (= (and d!378080 (not c!219575)) b!1340417))

(declare-fun m!1498861 () Bool)

(assert (=> d!378080 m!1498861))

(declare-fun m!1498863 () Bool)

(assert (=> d!378080 m!1498863))

(assert (=> d!378080 m!1498851))

(declare-fun m!1498865 () Bool)

(assert (=> b!1340416 m!1498865))

(assert (=> b!1340416 m!1498865))

(declare-fun m!1498867 () Bool)

(assert (=> b!1340416 m!1498867))

(assert (=> b!1340173 d!378080))

(declare-fun d!378082 () Bool)

(declare-fun lt!443550 () List!13743)

(declare-fun dynLambda!6034 (Int List!13743) Bool)

(assert (=> d!378082 (dynLambda!6034 lambda!56135 lt!443550)))

(declare-fun choose!8223 (Int) List!13743)

(assert (=> d!378082 (= lt!443550 (choose!8223 lambda!56135))))

(assert (=> d!378082 (Exists!837 lambda!56135)))

(assert (=> d!378082 (= (pickWitness!140 lambda!56135) lt!443550)))

(declare-fun b_lambda!39607 () Bool)

(assert (=> (not b_lambda!39607) (not d!378082)))

(declare-fun bs!332263 () Bool)

(assert (= bs!332263 d!378082))

(declare-fun m!1498869 () Bool)

(assert (=> bs!332263 m!1498869))

(declare-fun m!1498871 () Bool)

(assert (=> bs!332263 m!1498871))

(assert (=> bs!332263 m!1498443))

(assert (=> b!1340173 d!378082))

(declare-fun d!378084 () Bool)

(declare-fun res!603961 () Bool)

(declare-fun e!858411 () Bool)

(assert (=> d!378084 (=> (not res!603961) (not e!858411))))

(declare-fun rulesValid!867 (LexerInterface!2066 List!13744) Bool)

(assert (=> d!378084 (= res!603961 (rulesValid!867 thiss!19762 rules!2550))))

(assert (=> d!378084 (= (rulesInvariant!1936 thiss!19762 rules!2550) e!858411)))

(declare-fun b!1340420 () Bool)

(declare-datatypes ((List!13750 0))(
  ( (Nil!13684) (Cons!13684 (h!19085 String!16541) (t!119463 List!13750)) )
))
(declare-fun noDuplicateTag!867 (LexerInterface!2066 List!13744 List!13750) Bool)

(assert (=> b!1340420 (= e!858411 (noDuplicateTag!867 thiss!19762 rules!2550 Nil!13684))))

(assert (= (and d!378084 res!603961) b!1340420))

(declare-fun m!1498873 () Bool)

(assert (=> d!378084 m!1498873))

(declare-fun m!1498875 () Bool)

(assert (=> b!1340420 m!1498875))

(assert (=> b!1340172 d!378084))

(declare-fun d!378086 () Bool)

(declare-fun res!603966 () Bool)

(declare-fun e!858414 () Bool)

(assert (=> d!378086 (=> (not res!603966) (not e!858414))))

(assert (=> d!378086 (= res!603966 (not (isEmpty!8167 (originalCharacters!3233 t1!34))))))

(assert (=> d!378086 (= (inv!18016 t1!34) e!858414)))

(declare-fun b!1340425 () Bool)

(declare-fun res!603967 () Bool)

(assert (=> b!1340425 (=> (not res!603967) (not e!858414))))

(assert (=> b!1340425 (= res!603967 (= (originalCharacters!3233 t1!34) (list!5205 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))))))

(declare-fun b!1340426 () Bool)

(assert (=> b!1340426 (= e!858414 (= (size!11143 t1!34) (size!11149 (originalCharacters!3233 t1!34))))))

(assert (= (and d!378086 res!603966) b!1340425))

(assert (= (and b!1340425 res!603967) b!1340426))

(declare-fun b_lambda!39609 () Bool)

(assert (=> (not b_lambda!39609) (not b!1340425)))

(assert (=> b!1340425 t!119445))

(declare-fun b_and!89663 () Bool)

(assert (= b_and!89657 (and (=> t!119445 result!85758) b_and!89663)))

(assert (=> b!1340425 t!119447))

(declare-fun b_and!89665 () Bool)

(assert (= b_and!89659 (and (=> t!119447 result!85762) b_and!89665)))

(assert (=> b!1340425 t!119449))

(declare-fun b_and!89667 () Bool)

(assert (= b_and!89661 (and (=> t!119449 result!85764) b_and!89667)))

(declare-fun m!1498877 () Bool)

(assert (=> d!378086 m!1498877))

(assert (=> b!1340425 m!1498745))

(assert (=> b!1340425 m!1498745))

(declare-fun m!1498879 () Bool)

(assert (=> b!1340425 m!1498879))

(declare-fun m!1498881 () Bool)

(assert (=> b!1340426 m!1498881))

(assert (=> start!119546 d!378086))

(declare-fun d!378088 () Bool)

(declare-fun res!603968 () Bool)

(declare-fun e!858415 () Bool)

(assert (=> d!378088 (=> (not res!603968) (not e!858415))))

(assert (=> d!378088 (= res!603968 (not (isEmpty!8167 (originalCharacters!3233 t2!34))))))

(assert (=> d!378088 (= (inv!18016 t2!34) e!858415)))

(declare-fun b!1340427 () Bool)

(declare-fun res!603969 () Bool)

(assert (=> b!1340427 (=> (not res!603969) (not e!858415))))

(assert (=> b!1340427 (= res!603969 (= (originalCharacters!3233 t2!34) (list!5205 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))))))

(declare-fun b!1340428 () Bool)

(assert (=> b!1340428 (= e!858415 (= (size!11143 t2!34) (size!11149 (originalCharacters!3233 t2!34))))))

(assert (= (and d!378088 res!603968) b!1340427))

(assert (= (and b!1340427 res!603969) b!1340428))

(declare-fun b_lambda!39611 () Bool)

(assert (=> (not b_lambda!39611) (not b!1340427)))

(assert (=> b!1340427 t!119452))

(declare-fun b_and!89669 () Bool)

(assert (= b_and!89663 (and (=> t!119452 result!85766) b_and!89669)))

(assert (=> b!1340427 t!119454))

(declare-fun b_and!89671 () Bool)

(assert (= b_and!89665 (and (=> t!119454 result!85768) b_and!89671)))

(assert (=> b!1340427 t!119456))

(declare-fun b_and!89673 () Bool)

(assert (= b_and!89667 (and (=> t!119456 result!85770) b_and!89673)))

(declare-fun m!1498883 () Bool)

(assert (=> d!378088 m!1498883))

(assert (=> b!1340427 m!1498847))

(assert (=> b!1340427 m!1498847))

(declare-fun m!1498885 () Bool)

(assert (=> b!1340427 m!1498885))

(declare-fun m!1498887 () Bool)

(assert (=> b!1340428 m!1498887))

(assert (=> start!119546 d!378088))

(declare-fun b!1340429 () Bool)

(declare-fun e!858417 () Bool)

(assert (=> b!1340429 (= e!858417 (inv!17 (value!77206 t1!34)))))

(declare-fun b!1340430 () Bool)

(declare-fun e!858416 () Bool)

(assert (=> b!1340430 (= e!858416 (inv!16 (value!77206 t1!34)))))

(declare-fun b!1340431 () Bool)

(declare-fun e!858418 () Bool)

(assert (=> b!1340431 (= e!858418 (inv!15 (value!77206 t1!34)))))

(declare-fun b!1340432 () Bool)

(declare-fun res!603970 () Bool)

(assert (=> b!1340432 (=> res!603970 e!858418)))

(assert (=> b!1340432 (= res!603970 (not ((_ is IntegerValue!7385) (value!77206 t1!34))))))

(assert (=> b!1340432 (= e!858417 e!858418)))

(declare-fun d!378090 () Bool)

(declare-fun c!219576 () Bool)

(assert (=> d!378090 (= c!219576 ((_ is IntegerValue!7383) (value!77206 t1!34)))))

(assert (=> d!378090 (= (inv!21 (value!77206 t1!34)) e!858416)))

(declare-fun b!1340433 () Bool)

(assert (=> b!1340433 (= e!858416 e!858417)))

(declare-fun c!219577 () Bool)

(assert (=> b!1340433 (= c!219577 ((_ is IntegerValue!7384) (value!77206 t1!34)))))

(assert (= (and d!378090 c!219576) b!1340430))

(assert (= (and d!378090 (not c!219576)) b!1340433))

(assert (= (and b!1340433 c!219577) b!1340429))

(assert (= (and b!1340433 (not c!219577)) b!1340432))

(assert (= (and b!1340432 (not res!603970)) b!1340431))

(declare-fun m!1498889 () Bool)

(assert (=> b!1340429 m!1498889))

(declare-fun m!1498891 () Bool)

(assert (=> b!1340430 m!1498891))

(declare-fun m!1498893 () Bool)

(assert (=> b!1340431 m!1498893))

(assert (=> b!1340163 d!378090))

(declare-fun b!1340444 () Bool)

(declare-fun e!858421 () Bool)

(declare-fun tp_is_empty!6687 () Bool)

(assert (=> b!1340444 (= e!858421 tp_is_empty!6687)))

(declare-fun b!1340445 () Bool)

(declare-fun tp!388111 () Bool)

(declare-fun tp!388112 () Bool)

(assert (=> b!1340445 (= e!858421 (and tp!388111 tp!388112))))

(assert (=> b!1340164 (= tp!388045 e!858421)))

(declare-fun b!1340447 () Bool)

(declare-fun tp!388110 () Bool)

(declare-fun tp!388108 () Bool)

(assert (=> b!1340447 (= e!858421 (and tp!388110 tp!388108))))

(declare-fun b!1340446 () Bool)

(declare-fun tp!388109 () Bool)

(assert (=> b!1340446 (= e!858421 tp!388109)))

(assert (= (and b!1340164 ((_ is ElementMatch!3685) (regex!2371 (rule!4116 t1!34)))) b!1340444))

(assert (= (and b!1340164 ((_ is Concat!6147) (regex!2371 (rule!4116 t1!34)))) b!1340445))

(assert (= (and b!1340164 ((_ is Star!3685) (regex!2371 (rule!4116 t1!34)))) b!1340446))

(assert (= (and b!1340164 ((_ is Union!3685) (regex!2371 (rule!4116 t1!34)))) b!1340447))

(declare-fun b!1340448 () Bool)

(declare-fun e!858422 () Bool)

(assert (=> b!1340448 (= e!858422 tp_is_empty!6687)))

(declare-fun b!1340449 () Bool)

(declare-fun tp!388116 () Bool)

(declare-fun tp!388117 () Bool)

(assert (=> b!1340449 (= e!858422 (and tp!388116 tp!388117))))

(assert (=> b!1340176 (= tp!388047 e!858422)))

(declare-fun b!1340451 () Bool)

(declare-fun tp!388115 () Bool)

(declare-fun tp!388113 () Bool)

(assert (=> b!1340451 (= e!858422 (and tp!388115 tp!388113))))

(declare-fun b!1340450 () Bool)

(declare-fun tp!388114 () Bool)

(assert (=> b!1340450 (= e!858422 tp!388114)))

(assert (= (and b!1340176 ((_ is ElementMatch!3685) (regex!2371 (rule!4116 t2!34)))) b!1340448))

(assert (= (and b!1340176 ((_ is Concat!6147) (regex!2371 (rule!4116 t2!34)))) b!1340449))

(assert (= (and b!1340176 ((_ is Star!3685) (regex!2371 (rule!4116 t2!34)))) b!1340450))

(assert (= (and b!1340176 ((_ is Union!3685) (regex!2371 (rule!4116 t2!34)))) b!1340451))

(declare-fun b!1340452 () Bool)

(declare-fun e!858423 () Bool)

(assert (=> b!1340452 (= e!858423 tp_is_empty!6687)))

(declare-fun b!1340453 () Bool)

(declare-fun tp!388121 () Bool)

(declare-fun tp!388122 () Bool)

(assert (=> b!1340453 (= e!858423 (and tp!388121 tp!388122))))

(assert (=> b!1340171 (= tp!388037 e!858423)))

(declare-fun b!1340455 () Bool)

(declare-fun tp!388120 () Bool)

(declare-fun tp!388118 () Bool)

(assert (=> b!1340455 (= e!858423 (and tp!388120 tp!388118))))

(declare-fun b!1340454 () Bool)

(declare-fun tp!388119 () Bool)

(assert (=> b!1340454 (= e!858423 tp!388119)))

(assert (= (and b!1340171 ((_ is ElementMatch!3685) (regex!2371 (h!19079 rules!2550)))) b!1340452))

(assert (= (and b!1340171 ((_ is Concat!6147) (regex!2371 (h!19079 rules!2550)))) b!1340453))

(assert (= (and b!1340171 ((_ is Star!3685) (regex!2371 (h!19079 rules!2550)))) b!1340454))

(assert (= (and b!1340171 ((_ is Union!3685) (regex!2371 (h!19079 rules!2550)))) b!1340455))

(declare-fun b!1340466 () Bool)

(declare-fun b_free!32635 () Bool)

(declare-fun b_next!33339 () Bool)

(assert (=> b!1340466 (= b_free!32635 (not b_next!33339))))

(declare-fun tp!388132 () Bool)

(declare-fun b_and!89675 () Bool)

(assert (=> b!1340466 (= tp!388132 b_and!89675)))

(declare-fun b_free!32637 () Bool)

(declare-fun b_next!33341 () Bool)

(assert (=> b!1340466 (= b_free!32637 (not b_next!33341))))

(declare-fun tb!70581 () Bool)

(declare-fun t!119458 () Bool)

(assert (=> (and b!1340466 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) t!119458) tb!70581))

(declare-fun result!85776 () Bool)

(assert (= result!85776 result!85758))

(assert (=> d!378040 t!119458))

(declare-fun t!119460 () Bool)

(declare-fun tb!70583 () Bool)

(assert (=> (and b!1340466 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toChars!3469 (transformation!2371 (rule!4116 t2!34)))) t!119460) tb!70583))

(declare-fun result!85778 () Bool)

(assert (= result!85778 result!85766))

(assert (=> d!378076 t!119460))

(assert (=> b!1340425 t!119458))

(assert (=> b!1340427 t!119460))

(declare-fun tp!388134 () Bool)

(declare-fun b_and!89677 () Bool)

(assert (=> b!1340466 (= tp!388134 (and (=> t!119458 result!85776) (=> t!119460 result!85778) b_and!89677))))

(declare-fun e!858434 () Bool)

(assert (=> b!1340466 (= e!858434 (and tp!388132 tp!388134))))

(declare-fun tp!388133 () Bool)

(declare-fun b!1340465 () Bool)

(declare-fun e!858432 () Bool)

(assert (=> b!1340465 (= e!858432 (and tp!388133 (inv!18012 (tag!2633 (h!19079 (t!119423 rules!2550)))) (inv!18015 (transformation!2371 (h!19079 (t!119423 rules!2550)))) e!858434))))

(declare-fun b!1340464 () Bool)

(declare-fun e!858433 () Bool)

(declare-fun tp!388131 () Bool)

(assert (=> b!1340464 (= e!858433 (and e!858432 tp!388131))))

(assert (=> b!1340174 (= tp!388040 e!858433)))

(assert (= b!1340465 b!1340466))

(assert (= b!1340464 b!1340465))

(assert (= (and b!1340174 ((_ is Cons!13678) (t!119423 rules!2550))) b!1340464))

(declare-fun m!1498895 () Bool)

(assert (=> b!1340465 m!1498895))

(declare-fun m!1498897 () Bool)

(assert (=> b!1340465 m!1498897))

(declare-fun b!1340471 () Bool)

(declare-fun e!858438 () Bool)

(declare-fun tp!388137 () Bool)

(assert (=> b!1340471 (= e!858438 (and tp_is_empty!6687 tp!388137))))

(assert (=> b!1340163 (= tp!388042 e!858438)))

(assert (= (and b!1340163 ((_ is Cons!13677) (originalCharacters!3233 t1!34))) b!1340471))

(declare-fun b!1340472 () Bool)

(declare-fun e!858439 () Bool)

(declare-fun tp!388138 () Bool)

(assert (=> b!1340472 (= e!858439 (and tp_is_empty!6687 tp!388138))))

(assert (=> b!1340179 (= tp!388041 e!858439)))

(assert (= (and b!1340179 ((_ is Cons!13677) (originalCharacters!3233 t2!34))) b!1340472))

(declare-fun b_lambda!39613 () Bool)

(assert (= b_lambda!39607 (or b!1340168 b_lambda!39613)))

(declare-fun bs!332264 () Bool)

(declare-fun d!378092 () Bool)

(assert (= bs!332264 (and d!378092 b!1340168)))

(declare-fun res!603971 () Bool)

(declare-fun e!858440 () Bool)

(assert (=> bs!332264 (=> (not res!603971) (not e!858440))))

(declare-fun matchR!1678 (Regex!3685 List!13743) Bool)

(assert (=> bs!332264 (= res!603971 (matchR!1678 lt!443463 lt!443550))))

(assert (=> bs!332264 (= (dynLambda!6034 lambda!56135 lt!443550) e!858440)))

(declare-fun b!1340473 () Bool)

(declare-fun isPrefix!1099 (List!13743 List!13743) Bool)

(assert (=> b!1340473 (= e!858440 (isPrefix!1099 lt!443469 lt!443550))))

(assert (= (and bs!332264 res!603971) b!1340473))

(declare-fun m!1498899 () Bool)

(assert (=> bs!332264 m!1498899))

(declare-fun m!1498901 () Bool)

(assert (=> b!1340473 m!1498901))

(assert (=> d!378082 d!378092))

(declare-fun b_lambda!39615 () Bool)

(assert (= b_lambda!39609 (or (and b!1340180 b_free!32621 (= (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toChars!3469 (transformation!2371 (rule!4116 t1!34))))) (and b!1340170 b_free!32625) (and b!1340161 b_free!32629 (= (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toChars!3469 (transformation!2371 (rule!4116 t1!34))))) (and b!1340466 b_free!32637 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toChars!3469 (transformation!2371 (rule!4116 t1!34))))) b_lambda!39615)))

(declare-fun b_lambda!39617 () Bool)

(assert (= b_lambda!39603 (or (and b!1340180 b_free!32621 (= (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toChars!3469 (transformation!2371 (rule!4116 t1!34))))) (and b!1340170 b_free!32625) (and b!1340161 b_free!32629 (= (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toChars!3469 (transformation!2371 (rule!4116 t1!34))))) (and b!1340466 b_free!32637 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toChars!3469 (transformation!2371 (rule!4116 t1!34))))) b_lambda!39617)))

(declare-fun b_lambda!39619 () Bool)

(assert (= b_lambda!39605 (or (and b!1340180 b_free!32621) (and b!1340170 b_free!32625 (= (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toChars!3469 (transformation!2371 (rule!4116 t2!34))))) (and b!1340161 b_free!32629 (= (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toChars!3469 (transformation!2371 (rule!4116 t2!34))))) (and b!1340466 b_free!32637 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toChars!3469 (transformation!2371 (rule!4116 t2!34))))) b_lambda!39619)))

(declare-fun b_lambda!39621 () Bool)

(assert (= b_lambda!39611 (or (and b!1340180 b_free!32621) (and b!1340170 b_free!32625 (= (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toChars!3469 (transformation!2371 (rule!4116 t2!34))))) (and b!1340161 b_free!32629 (= (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toChars!3469 (transformation!2371 (rule!4116 t2!34))))) (and b!1340466 b_free!32637 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toChars!3469 (transformation!2371 (rule!4116 t2!34))))) b_lambda!39621)))

(check-sat (not b!1340449) (not b!1340400) (not b!1340212) (not b!1340374) (not d!378084) (not b!1340427) (not b!1340471) b_and!89673 (not b!1340403) (not b!1340472) (not d!378076) b_and!89671 (not b!1340406) (not d!378066) (not b!1340447) (not b!1340375) (not d!378034) b_and!89619 (not d!378074) (not b!1340453) (not b!1340420) (not d!378046) (not d!378080) (not b_next!33325) (not b!1340398) (not d!378036) (not d!378038) (not d!378082) (not b_lambda!39613) b_and!89615 (not b!1340410) (not b!1340446) (not b_next!33329) (not b!1340342) (not b_next!33341) (not d!378060) (not b_lambda!39621) (not b!1340464) (not b!1340392) (not b!1340430) (not b!1340416) (not b!1340358) (not b!1340428) b_and!89677 (not b!1340455) tp_is_empty!6687 (not b!1340393) (not b_lambda!39619) (not b!1340379) (not d!378044) (not b!1340359) b_and!89611 (not d!378056) (not b_lambda!39615) (not b!1340347) (not d!378052) (not b!1340445) (not tb!70569) (not b!1340344) (not d!378072) (not b!1340473) (not b!1340211) (not b!1340364) (not d!378040) (not d!377966) (not d!378042) (not b!1340402) (not d!378032) (not b!1340431) (not b!1340343) b_and!89669 (not d!378050) (not b_next!33331) (not b!1340397) (not d!378064) (not b!1340465) (not b!1340426) (not d!378078) (not b!1340454) (not b!1340407) (not b!1340429) (not b!1340405) (not b_next!33323) (not bs!332264) (not b_next!33327) (not d!378088) (not b!1340450) (not b_next!33339) (not b!1340451) (not d!378068) (not b!1340399) (not b_lambda!39617) (not b!1340353) (not d!378086) (not b_next!33333) (not d!378048) (not tb!70575) b_and!89675 (not b!1340425) (not b!1340394) (not b!1340409))
(check-sat b_and!89673 b_and!89671 b_and!89619 (not b_next!33329) (not b_next!33341) b_and!89677 b_and!89611 (not b_next!33323) (not b_next!33325) b_and!89615 b_and!89669 (not b_next!33331) (not b_next!33327) (not b_next!33339) (not b_next!33333) b_and!89675)
(get-model)

(declare-fun d!378100 () Bool)

(declare-fun lt!443556 () Bool)

(assert (=> d!378100 (= lt!443556 (isEmpty!8167 (list!5205 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34)))))))))

(declare-fun isEmpty!8170 (Conc!4507) Bool)

(assert (=> d!378100 (= lt!443556 (isEmpty!8170 (c!219539 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34)))))))))

(assert (=> d!378100 (= (isEmpty!8166 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34))))) lt!443556)))

(declare-fun bs!332266 () Bool)

(assert (= bs!332266 d!378100))

(declare-fun m!1498913 () Bool)

(assert (=> bs!332266 m!1498913))

(assert (=> bs!332266 m!1498913))

(declare-fun m!1498915 () Bool)

(assert (=> bs!332266 m!1498915))

(declare-fun m!1498917 () Bool)

(assert (=> bs!332266 m!1498917))

(assert (=> b!1340344 d!378100))

(declare-fun b!1340562 () Bool)

(declare-fun e!858487 () Bool)

(declare-fun e!858486 () Bool)

(assert (=> b!1340562 (= e!858487 e!858486)))

(declare-fun lt!443607 () tuple2!13294)

(declare-fun res!604033 () Bool)

(assert (=> b!1340562 (= res!604033 (< (size!11144 (_2!7533 lt!443607)) (size!11144 (print!836 thiss!19762 (singletonSeq!977 t1!34)))))))

(assert (=> b!1340562 (=> (not res!604033) (not e!858486))))

(declare-fun b!1340563 () Bool)

(declare-fun isEmpty!8171 (BalanceConc!8958) Bool)

(assert (=> b!1340563 (= e!858486 (not (isEmpty!8171 (_1!7533 lt!443607))))))

(declare-fun d!378102 () Bool)

(declare-fun e!858488 () Bool)

(assert (=> d!378102 e!858488))

(declare-fun res!604032 () Bool)

(assert (=> d!378102 (=> (not res!604032) (not e!858488))))

(assert (=> d!378102 (= res!604032 e!858487)))

(declare-fun c!219601 () Bool)

(assert (=> d!378102 (= c!219601 (> (size!11148 (_1!7533 lt!443607)) 0))))

(declare-fun lexTailRecV2!389 (LexerInterface!2066 List!13744 BalanceConc!8954 BalanceConc!8954 BalanceConc!8954 BalanceConc!8958) tuple2!13294)

(assert (=> d!378102 (= lt!443607 (lexTailRecV2!389 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34)) (BalanceConc!8955 Empty!4507) (print!836 thiss!19762 (singletonSeq!977 t1!34)) (BalanceConc!8959 Empty!4509)))))

(assert (=> d!378102 (= (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34))) lt!443607)))

(declare-fun b!1340564 () Bool)

(assert (=> b!1340564 (= e!858487 (= (_2!7533 lt!443607) (print!836 thiss!19762 (singletonSeq!977 t1!34))))))

(declare-fun b!1340565 () Bool)

(declare-fun res!604031 () Bool)

(assert (=> b!1340565 (=> (not res!604031) (not e!858488))))

(declare-datatypes ((tuple2!13298 0))(
  ( (tuple2!13299 (_1!7535 List!13748) (_2!7535 List!13743)) )
))
(declare-fun lexList!594 (LexerInterface!2066 List!13744 List!13743) tuple2!13298)

(assert (=> b!1340565 (= res!604031 (= (list!5208 (_1!7533 lt!443607)) (_1!7535 (lexList!594 thiss!19762 rules!2550 (list!5205 (print!836 thiss!19762 (singletonSeq!977 t1!34)))))))))

(declare-fun b!1340566 () Bool)

(assert (=> b!1340566 (= e!858488 (= (list!5205 (_2!7533 lt!443607)) (_2!7535 (lexList!594 thiss!19762 rules!2550 (list!5205 (print!836 thiss!19762 (singletonSeq!977 t1!34)))))))))

(assert (= (and d!378102 c!219601) b!1340562))

(assert (= (and d!378102 (not c!219601)) b!1340564))

(assert (= (and b!1340562 res!604033) b!1340563))

(assert (= (and d!378102 res!604032) b!1340565))

(assert (= (and b!1340565 res!604031) b!1340566))

(declare-fun m!1499023 () Bool)

(assert (=> b!1340562 m!1499023))

(assert (=> b!1340562 m!1498705))

(declare-fun m!1499025 () Bool)

(assert (=> b!1340562 m!1499025))

(declare-fun m!1499027 () Bool)

(assert (=> b!1340565 m!1499027))

(assert (=> b!1340565 m!1498705))

(declare-fun m!1499029 () Bool)

(assert (=> b!1340565 m!1499029))

(assert (=> b!1340565 m!1499029))

(declare-fun m!1499031 () Bool)

(assert (=> b!1340565 m!1499031))

(declare-fun m!1499033 () Bool)

(assert (=> b!1340566 m!1499033))

(assert (=> b!1340566 m!1498705))

(assert (=> b!1340566 m!1499029))

(assert (=> b!1340566 m!1499029))

(assert (=> b!1340566 m!1499031))

(declare-fun m!1499035 () Bool)

(assert (=> d!378102 m!1499035))

(assert (=> d!378102 m!1498705))

(assert (=> d!378102 m!1498705))

(declare-fun m!1499037 () Bool)

(assert (=> d!378102 m!1499037))

(declare-fun m!1499039 () Bool)

(assert (=> b!1340563 m!1499039))

(assert (=> b!1340344 d!378102))

(declare-fun d!378124 () Bool)

(declare-fun lt!443614 () BalanceConc!8954)

(declare-fun printList!584 (LexerInterface!2066 List!13748) List!13743)

(assert (=> d!378124 (= (list!5205 lt!443614) (printList!584 thiss!19762 (list!5208 (singletonSeq!977 t1!34))))))

(declare-fun printTailRec!566 (LexerInterface!2066 BalanceConc!8958 Int BalanceConc!8954) BalanceConc!8954)

(assert (=> d!378124 (= lt!443614 (printTailRec!566 thiss!19762 (singletonSeq!977 t1!34) 0 (BalanceConc!8955 Empty!4507)))))

(assert (=> d!378124 (= (print!836 thiss!19762 (singletonSeq!977 t1!34)) lt!443614)))

(declare-fun bs!332273 () Bool)

(assert (= bs!332273 d!378124))

(declare-fun m!1499071 () Bool)

(assert (=> bs!332273 m!1499071))

(assert (=> bs!332273 m!1498701))

(assert (=> bs!332273 m!1498703))

(assert (=> bs!332273 m!1498703))

(declare-fun m!1499073 () Bool)

(assert (=> bs!332273 m!1499073))

(assert (=> bs!332273 m!1498701))

(declare-fun m!1499075 () Bool)

(assert (=> bs!332273 m!1499075))

(assert (=> b!1340344 d!378124))

(declare-fun d!378136 () Bool)

(declare-fun e!858515 () Bool)

(assert (=> d!378136 e!858515))

(declare-fun res!604046 () Bool)

(assert (=> d!378136 (=> (not res!604046) (not e!858515))))

(declare-fun lt!443624 () BalanceConc!8958)

(assert (=> d!378136 (= res!604046 (= (list!5208 lt!443624) (Cons!13682 t1!34 Nil!13682)))))

(declare-fun singleton!415 (Token!4404) BalanceConc!8958)

(assert (=> d!378136 (= lt!443624 (singleton!415 t1!34))))

(assert (=> d!378136 (= (singletonSeq!977 t1!34) lt!443624)))

(declare-fun b!1340609 () Bool)

(declare-fun isBalanced!1309 (Conc!4509) Bool)

(assert (=> b!1340609 (= e!858515 (isBalanced!1309 (c!219578 lt!443624)))))

(assert (= (and d!378136 res!604046) b!1340609))

(declare-fun m!1499113 () Bool)

(assert (=> d!378136 m!1499113))

(declare-fun m!1499117 () Bool)

(assert (=> d!378136 m!1499117))

(declare-fun m!1499121 () Bool)

(assert (=> b!1340609 m!1499121))

(assert (=> b!1340344 d!378136))

(declare-fun d!378150 () Bool)

(declare-fun c!219622 () Bool)

(assert (=> d!378150 (= c!219622 ((_ is Nil!13677) lt!443528))))

(declare-fun e!858522 () (InoxSet C!7660))

(assert (=> d!378150 (= (content!1945 lt!443528) e!858522)))

(declare-fun b!1340621 () Bool)

(assert (=> b!1340621 (= e!858522 ((as const (Array C!7660 Bool)) false))))

(declare-fun b!1340622 () Bool)

(assert (=> b!1340622 (= e!858522 ((_ map or) (store ((as const (Array C!7660 Bool)) false) (h!19078 lt!443528) true) (content!1945 (t!119422 lt!443528))))))

(assert (= (and d!378150 c!219622) b!1340621))

(assert (= (and d!378150 (not c!219622)) b!1340622))

(declare-fun m!1499131 () Bool)

(assert (=> b!1340622 m!1499131))

(declare-fun m!1499133 () Bool)

(assert (=> b!1340622 m!1499133))

(assert (=> d!378044 d!378150))

(declare-fun d!378160 () Bool)

(declare-fun c!219623 () Bool)

(assert (=> d!378160 (= c!219623 ((_ is Nil!13677) lt!443462))))

(declare-fun e!858523 () (InoxSet C!7660))

(assert (=> d!378160 (= (content!1945 lt!443462) e!858523)))

(declare-fun b!1340623 () Bool)

(assert (=> b!1340623 (= e!858523 ((as const (Array C!7660 Bool)) false))))

(declare-fun b!1340624 () Bool)

(assert (=> b!1340624 (= e!858523 ((_ map or) (store ((as const (Array C!7660 Bool)) false) (h!19078 lt!443462) true) (content!1945 (t!119422 lt!443462))))))

(assert (= (and d!378160 c!219623) b!1340623))

(assert (= (and d!378160 (not c!219623)) b!1340624))

(declare-fun m!1499135 () Bool)

(assert (=> b!1340624 m!1499135))

(declare-fun m!1499137 () Bool)

(assert (=> b!1340624 m!1499137))

(assert (=> d!378044 d!378160))

(declare-fun d!378162 () Bool)

(declare-fun c!219624 () Bool)

(assert (=> d!378162 (= c!219624 ((_ is Nil!13677) (Cons!13677 lt!443470 Nil!13677)))))

(declare-fun e!858524 () (InoxSet C!7660))

(assert (=> d!378162 (= (content!1945 (Cons!13677 lt!443470 Nil!13677)) e!858524)))

(declare-fun b!1340625 () Bool)

(assert (=> b!1340625 (= e!858524 ((as const (Array C!7660 Bool)) false))))

(declare-fun b!1340626 () Bool)

(assert (=> b!1340626 (= e!858524 ((_ map or) (store ((as const (Array C!7660 Bool)) false) (h!19078 (Cons!13677 lt!443470 Nil!13677)) true) (content!1945 (t!119422 (Cons!13677 lt!443470 Nil!13677)))))))

(assert (= (and d!378162 c!219624) b!1340625))

(assert (= (and d!378162 (not c!219624)) b!1340626))

(declare-fun m!1499139 () Bool)

(assert (=> b!1340626 m!1499139))

(declare-fun m!1499141 () Bool)

(assert (=> b!1340626 m!1499141))

(assert (=> d!378044 d!378162))

(declare-fun d!378164 () Bool)

(declare-fun lt!443629 () Bool)

(assert (=> d!378164 (= lt!443629 (select (content!1945 (t!119422 lt!443464)) lt!443468))))

(declare-fun e!858526 () Bool)

(assert (=> d!378164 (= lt!443629 e!858526)))

(declare-fun res!604048 () Bool)

(assert (=> d!378164 (=> (not res!604048) (not e!858526))))

(assert (=> d!378164 (= res!604048 ((_ is Cons!13677) (t!119422 lt!443464)))))

(assert (=> d!378164 (= (contains!2497 (t!119422 lt!443464) lt!443468) lt!443629)))

(declare-fun b!1340627 () Bool)

(declare-fun e!858525 () Bool)

(assert (=> b!1340627 (= e!858526 e!858525)))

(declare-fun res!604049 () Bool)

(assert (=> b!1340627 (=> res!604049 e!858525)))

(assert (=> b!1340627 (= res!604049 (= (h!19078 (t!119422 lt!443464)) lt!443468))))

(declare-fun b!1340628 () Bool)

(assert (=> b!1340628 (= e!858525 (contains!2497 (t!119422 (t!119422 lt!443464)) lt!443468))))

(assert (= (and d!378164 res!604048) b!1340627))

(assert (= (and b!1340627 (not res!604049)) b!1340628))

(declare-fun m!1499143 () Bool)

(assert (=> d!378164 m!1499143))

(declare-fun m!1499145 () Bool)

(assert (=> d!378164 m!1499145))

(declare-fun m!1499147 () Bool)

(assert (=> b!1340628 m!1499147))

(assert (=> b!1340405 d!378164))

(declare-fun d!378166 () Bool)

(declare-fun lt!443630 () Bool)

(assert (=> d!378166 (= lt!443630 (select (content!1945 (t!119422 lt!443469)) lt!443470))))

(declare-fun e!858528 () Bool)

(assert (=> d!378166 (= lt!443630 e!858528)))

(declare-fun res!604050 () Bool)

(assert (=> d!378166 (=> (not res!604050) (not e!858528))))

(assert (=> d!378166 (= res!604050 ((_ is Cons!13677) (t!119422 lt!443469)))))

(assert (=> d!378166 (= (contains!2497 (t!119422 lt!443469) lt!443470) lt!443630)))

(declare-fun b!1340629 () Bool)

(declare-fun e!858527 () Bool)

(assert (=> b!1340629 (= e!858528 e!858527)))

(declare-fun res!604051 () Bool)

(assert (=> b!1340629 (=> res!604051 e!858527)))

(assert (=> b!1340629 (= res!604051 (= (h!19078 (t!119422 lt!443469)) lt!443470))))

(declare-fun b!1340630 () Bool)

(assert (=> b!1340630 (= e!858527 (contains!2497 (t!119422 (t!119422 lt!443469)) lt!443470))))

(assert (= (and d!378166 res!604050) b!1340629))

(assert (= (and b!1340629 (not res!604051)) b!1340630))

(declare-fun m!1499149 () Bool)

(assert (=> d!378166 m!1499149))

(declare-fun m!1499151 () Bool)

(assert (=> d!378166 m!1499151))

(declare-fun m!1499153 () Bool)

(assert (=> b!1340630 m!1499153))

(assert (=> b!1340353 d!378166))

(declare-fun d!378168 () Bool)

(assert (=> d!378168 true))

(declare-fun lambda!56153 () Int)

(declare-fun order!8207 () Int)

(declare-fun order!8209 () Int)

(declare-fun dynLambda!6035 (Int Int) Int)

(declare-fun dynLambda!6036 (Int Int) Int)

(assert (=> d!378168 (< (dynLambda!6035 order!8207 (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) (dynLambda!6036 order!8209 lambda!56153))))

(assert (=> d!378168 true))

(declare-fun order!8211 () Int)

(declare-fun dynLambda!6037 (Int Int) Int)

(assert (=> d!378168 (< (dynLambda!6037 order!8211 (toValue!3610 (transformation!2371 (rule!4116 t1!34)))) (dynLambda!6036 order!8209 lambda!56153))))

(declare-fun Forall!524 (Int) Bool)

(assert (=> d!378168 (= (semiInverseModEq!898 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toValue!3610 (transformation!2371 (rule!4116 t1!34)))) (Forall!524 lambda!56153))))

(declare-fun bs!332280 () Bool)

(assert (= bs!332280 d!378168))

(declare-fun m!1499157 () Bool)

(assert (=> bs!332280 m!1499157))

(assert (=> d!378060 d!378168))

(declare-fun bs!332281 () Bool)

(declare-fun d!378172 () Bool)

(assert (= bs!332281 (and d!378172 d!378042)))

(declare-fun lambda!56158 () Int)

(assert (=> bs!332281 (= lambda!56158 lambda!56144)))

(declare-fun lambda!56159 () Int)

(declare-fun forall!3341 (List!13749 Int) Bool)

(assert (=> d!378172 (forall!3341 (map!3017 rules!2550 lambda!56158) lambda!56159)))

(declare-fun lt!443637 () Unit!19809)

(declare-fun e!858558 () Unit!19809)

(assert (=> d!378172 (= lt!443637 e!858558)))

(declare-fun c!219634 () Bool)

(assert (=> d!378172 (= c!219634 ((_ is Nil!13678) rules!2550))))

(declare-fun rulesValidInductive!749 (LexerInterface!2066 List!13744) Bool)

(assert (=> d!378172 (rulesValidInductive!749 thiss!19762 rules!2550)))

(assert (=> d!378172 (= (lemma!97 rules!2550 thiss!19762 rules!2550) lt!443637)))

(declare-fun b!1340674 () Bool)

(declare-fun Unit!19811 () Unit!19809)

(assert (=> b!1340674 (= e!858558 Unit!19811)))

(declare-fun b!1340675 () Bool)

(declare-fun Unit!19812 () Unit!19809)

(assert (=> b!1340675 (= e!858558 Unit!19812)))

(declare-fun lt!443638 () Unit!19809)

(assert (=> b!1340675 (= lt!443638 (lemma!97 rules!2550 thiss!19762 (t!119423 rules!2550)))))

(assert (= (and d!378172 c!219634) b!1340674))

(assert (= (and d!378172 (not c!219634)) b!1340675))

(declare-fun m!1499181 () Bool)

(assert (=> d!378172 m!1499181))

(assert (=> d!378172 m!1499181))

(declare-fun m!1499183 () Bool)

(assert (=> d!378172 m!1499183))

(declare-fun m!1499185 () Bool)

(assert (=> d!378172 m!1499185))

(declare-fun m!1499187 () Bool)

(assert (=> b!1340675 m!1499187))

(assert (=> d!378042 d!378172))

(declare-fun bs!332282 () Bool)

(declare-fun d!378182 () Bool)

(assert (= bs!332282 (and d!378182 d!378172)))

(declare-fun lambda!56162 () Int)

(assert (=> bs!332282 (= lambda!56162 lambda!56159)))

(declare-fun b!1340722 () Bool)

(declare-fun e!858588 () Bool)

(declare-fun lt!443645 () Regex!3685)

(declare-fun isEmptyLang!30 (Regex!3685) Bool)

(assert (=> b!1340722 (= e!858588 (isEmptyLang!30 lt!443645))))

(declare-fun b!1340723 () Bool)

(declare-fun e!858587 () Bool)

(declare-fun head!2378 (List!13749) Regex!3685)

(assert (=> b!1340723 (= e!858587 (= lt!443645 (head!2378 (map!3017 rules!2550 lambda!56144))))))

(declare-fun b!1340724 () Bool)

(declare-fun e!858584 () Regex!3685)

(declare-fun e!858589 () Regex!3685)

(assert (=> b!1340724 (= e!858584 e!858589)))

(declare-fun c!219657 () Bool)

(assert (=> b!1340724 (= c!219657 ((_ is Cons!13683) (map!3017 rules!2550 lambda!56144)))))

(declare-fun b!1340725 () Bool)

(assert (=> b!1340725 (= e!858584 (h!19084 (map!3017 rules!2550 lambda!56144)))))

(declare-fun b!1340726 () Bool)

(declare-fun e!858586 () Bool)

(declare-fun isEmpty!8172 (List!13749) Bool)

(assert (=> b!1340726 (= e!858586 (isEmpty!8172 (t!119462 (map!3017 rules!2550 lambda!56144))))))

(declare-fun e!858585 () Bool)

(assert (=> d!378182 e!858585))

(declare-fun res!604077 () Bool)

(assert (=> d!378182 (=> (not res!604077) (not e!858585))))

(assert (=> d!378182 (= res!604077 (validRegex!1589 lt!443645))))

(assert (=> d!378182 (= lt!443645 e!858584)))

(declare-fun c!219658 () Bool)

(assert (=> d!378182 (= c!219658 e!858586)))

(declare-fun res!604078 () Bool)

(assert (=> d!378182 (=> (not res!604078) (not e!858586))))

(assert (=> d!378182 (= res!604078 ((_ is Cons!13683) (map!3017 rules!2550 lambda!56144)))))

(assert (=> d!378182 (forall!3341 (map!3017 rules!2550 lambda!56144) lambda!56162)))

(assert (=> d!378182 (= (generalisedUnion!105 (map!3017 rules!2550 lambda!56144)) lt!443645)))

(declare-fun b!1340727 () Bool)

(assert (=> b!1340727 (= e!858589 (Union!3685 (h!19084 (map!3017 rules!2550 lambda!56144)) (generalisedUnion!105 (t!119462 (map!3017 rules!2550 lambda!56144)))))))

(declare-fun b!1340728 () Bool)

(assert (=> b!1340728 (= e!858585 e!858588)))

(declare-fun c!219656 () Bool)

(assert (=> b!1340728 (= c!219656 (isEmpty!8172 (map!3017 rules!2550 lambda!56144)))))

(declare-fun b!1340729 () Bool)

(assert (=> b!1340729 (= e!858589 EmptyLang!3685)))

(declare-fun b!1340730 () Bool)

(assert (=> b!1340730 (= e!858588 e!858587)))

(declare-fun c!219659 () Bool)

(declare-fun tail!1927 (List!13749) List!13749)

(assert (=> b!1340730 (= c!219659 (isEmpty!8172 (tail!1927 (map!3017 rules!2550 lambda!56144))))))

(declare-fun b!1340731 () Bool)

(declare-fun isUnion!30 (Regex!3685) Bool)

(assert (=> b!1340731 (= e!858587 (isUnion!30 lt!443645))))

(assert (= (and d!378182 res!604078) b!1340726))

(assert (= (and d!378182 c!219658) b!1340725))

(assert (= (and d!378182 (not c!219658)) b!1340724))

(assert (= (and b!1340724 c!219657) b!1340727))

(assert (= (and b!1340724 (not c!219657)) b!1340729))

(assert (= (and d!378182 res!604077) b!1340728))

(assert (= (and b!1340728 c!219656) b!1340722))

(assert (= (and b!1340728 (not c!219656)) b!1340730))

(assert (= (and b!1340730 c!219659) b!1340723))

(assert (= (and b!1340730 (not c!219659)) b!1340731))

(declare-fun m!1499203 () Bool)

(assert (=> d!378182 m!1499203))

(assert (=> d!378182 m!1498749))

(declare-fun m!1499205 () Bool)

(assert (=> d!378182 m!1499205))

(assert (=> b!1340730 m!1498749))

(declare-fun m!1499207 () Bool)

(assert (=> b!1340730 m!1499207))

(assert (=> b!1340730 m!1499207))

(declare-fun m!1499209 () Bool)

(assert (=> b!1340730 m!1499209))

(assert (=> b!1340723 m!1498749))

(declare-fun m!1499211 () Bool)

(assert (=> b!1340723 m!1499211))

(declare-fun m!1499213 () Bool)

(assert (=> b!1340731 m!1499213))

(declare-fun m!1499215 () Bool)

(assert (=> b!1340727 m!1499215))

(declare-fun m!1499217 () Bool)

(assert (=> b!1340726 m!1499217))

(declare-fun m!1499219 () Bool)

(assert (=> b!1340722 m!1499219))

(assert (=> b!1340728 m!1498749))

(declare-fun m!1499221 () Bool)

(assert (=> b!1340728 m!1499221))

(assert (=> d!378042 d!378182))

(declare-fun d!378188 () Bool)

(declare-fun lt!443649 () List!13749)

(declare-fun size!11153 (List!13749) Int)

(declare-fun size!11154 (List!13744) Int)

(assert (=> d!378188 (= (size!11153 lt!443649) (size!11154 rules!2550))))

(declare-fun e!858597 () List!13749)

(assert (=> d!378188 (= lt!443649 e!858597)))

(declare-fun c!219667 () Bool)

(assert (=> d!378188 (= c!219667 ((_ is Nil!13678) rules!2550))))

(assert (=> d!378188 (= (map!3017 rules!2550 lambda!56144) lt!443649)))

(declare-fun b!1340746 () Bool)

(assert (=> b!1340746 (= e!858597 Nil!13683)))

(declare-fun b!1340747 () Bool)

(declare-fun $colon$colon!174 (List!13749 Regex!3685) List!13749)

(declare-fun dynLambda!6038 (Int Rule!4542) Regex!3685)

(assert (=> b!1340747 (= e!858597 ($colon$colon!174 (map!3017 (t!119423 rules!2550) lambda!56144) (dynLambda!6038 lambda!56144 (h!19079 rules!2550))))))

(assert (= (and d!378188 c!219667) b!1340746))

(assert (= (and d!378188 (not c!219667)) b!1340747))

(declare-fun b_lambda!39623 () Bool)

(assert (=> (not b_lambda!39623) (not b!1340747)))

(declare-fun m!1499231 () Bool)

(assert (=> d!378188 m!1499231))

(declare-fun m!1499233 () Bool)

(assert (=> d!378188 m!1499233))

(declare-fun m!1499235 () Bool)

(assert (=> b!1340747 m!1499235))

(declare-fun m!1499237 () Bool)

(assert (=> b!1340747 m!1499237))

(assert (=> b!1340747 m!1499235))

(assert (=> b!1340747 m!1499237))

(declare-fun m!1499239 () Bool)

(assert (=> b!1340747 m!1499239))

(assert (=> d!378042 d!378188))

(declare-fun d!378196 () Bool)

(declare-fun lt!443650 () Bool)

(assert (=> d!378196 (= lt!443650 (select (content!1945 (t!119422 lt!443469)) lt!443468))))

(declare-fun e!858599 () Bool)

(assert (=> d!378196 (= lt!443650 e!858599)))

(declare-fun res!604079 () Bool)

(assert (=> d!378196 (=> (not res!604079) (not e!858599))))

(assert (=> d!378196 (= res!604079 ((_ is Cons!13677) (t!119422 lt!443469)))))

(assert (=> d!378196 (= (contains!2497 (t!119422 lt!443469) lt!443468) lt!443650)))

(declare-fun b!1340748 () Bool)

(declare-fun e!858598 () Bool)

(assert (=> b!1340748 (= e!858599 e!858598)))

(declare-fun res!604080 () Bool)

(assert (=> b!1340748 (=> res!604080 e!858598)))

(assert (=> b!1340748 (= res!604080 (= (h!19078 (t!119422 lt!443469)) lt!443468))))

(declare-fun b!1340749 () Bool)

(assert (=> b!1340749 (= e!858598 (contains!2497 (t!119422 (t!119422 lt!443469)) lt!443468))))

(assert (= (and d!378196 res!604079) b!1340748))

(assert (= (and b!1340748 (not res!604080)) b!1340749))

(assert (=> d!378196 m!1499149))

(declare-fun m!1499241 () Bool)

(assert (=> d!378196 m!1499241))

(declare-fun m!1499243 () Bool)

(assert (=> b!1340749 m!1499243))

(assert (=> b!1340402 d!378196))

(declare-fun b!1340750 () Bool)

(declare-fun e!858600 () List!13743)

(assert (=> b!1340750 (= e!858600 lt!443547)))

(declare-fun b!1340752 () Bool)

(declare-fun res!604082 () Bool)

(declare-fun e!858601 () Bool)

(assert (=> b!1340752 (=> (not res!604082) (not e!858601))))

(declare-fun lt!443651 () List!13743)

(assert (=> b!1340752 (= res!604082 (= (size!11149 lt!443651) (+ (size!11149 lt!443469) (size!11149 lt!443547))))))

(declare-fun d!378198 () Bool)

(assert (=> d!378198 e!858601))

(declare-fun res!604081 () Bool)

(assert (=> d!378198 (=> (not res!604081) (not e!858601))))

(assert (=> d!378198 (= res!604081 (= (content!1945 lt!443651) ((_ map or) (content!1945 lt!443469) (content!1945 lt!443547))))))

(assert (=> d!378198 (= lt!443651 e!858600)))

(declare-fun c!219668 () Bool)

(assert (=> d!378198 (= c!219668 ((_ is Nil!13677) lt!443469))))

(assert (=> d!378198 (= (++!3500 lt!443469 lt!443547) lt!443651)))

(declare-fun b!1340753 () Bool)

(assert (=> b!1340753 (= e!858601 (or (not (= lt!443547 Nil!13677)) (= lt!443651 lt!443469)))))

(declare-fun b!1340751 () Bool)

(assert (=> b!1340751 (= e!858600 (Cons!13677 (h!19078 lt!443469) (++!3500 (t!119422 lt!443469) lt!443547)))))

(assert (= (and d!378198 c!219668) b!1340750))

(assert (= (and d!378198 (not c!219668)) b!1340751))

(assert (= (and d!378198 res!604081) b!1340752))

(assert (= (and b!1340752 res!604082) b!1340753))

(declare-fun m!1499245 () Bool)

(assert (=> b!1340752 m!1499245))

(assert (=> b!1340752 m!1498851))

(declare-fun m!1499247 () Bool)

(assert (=> b!1340752 m!1499247))

(declare-fun m!1499249 () Bool)

(assert (=> d!378198 m!1499249))

(assert (=> d!378198 m!1498719))

(declare-fun m!1499251 () Bool)

(assert (=> d!378198 m!1499251))

(declare-fun m!1499253 () Bool)

(assert (=> b!1340751 m!1499253))

(assert (=> d!378080 d!378198))

(declare-fun d!378200 () Bool)

(declare-fun lt!443656 () Int)

(assert (=> d!378200 (>= lt!443656 0)))

(declare-fun e!858606 () Int)

(assert (=> d!378200 (= lt!443656 e!858606)))

(declare-fun c!219673 () Bool)

(assert (=> d!378200 (= c!219673 ((_ is Nil!13677) lt!443464))))

(assert (=> d!378200 (= (size!11149 lt!443464) lt!443656)))

(declare-fun b!1340762 () Bool)

(assert (=> b!1340762 (= e!858606 0)))

(declare-fun b!1340763 () Bool)

(assert (=> b!1340763 (= e!858606 (+ 1 (size!11149 (t!119422 lt!443464))))))

(assert (= (and d!378200 c!219673) b!1340762))

(assert (= (and d!378200 (not c!219673)) b!1340763))

(declare-fun m!1499261 () Bool)

(assert (=> b!1340763 m!1499261))

(assert (=> d!378080 d!378200))

(declare-fun d!378208 () Bool)

(declare-fun lt!443657 () Int)

(assert (=> d!378208 (>= lt!443657 0)))

(declare-fun e!858607 () Int)

(assert (=> d!378208 (= lt!443657 e!858607)))

(declare-fun c!219674 () Bool)

(assert (=> d!378208 (= c!219674 ((_ is Nil!13677) lt!443469))))

(assert (=> d!378208 (= (size!11149 lt!443469) lt!443657)))

(declare-fun b!1340764 () Bool)

(assert (=> b!1340764 (= e!858607 0)))

(declare-fun b!1340765 () Bool)

(assert (=> b!1340765 (= e!858607 (+ 1 (size!11149 (t!119422 lt!443469))))))

(assert (= (and d!378208 c!219674) b!1340764))

(assert (= (and d!378208 (not c!219674)) b!1340765))

(declare-fun m!1499263 () Bool)

(assert (=> b!1340765 m!1499263))

(assert (=> d!378080 d!378208))

(declare-fun d!378210 () Bool)

(declare-fun lt!443663 () Token!4404)

(declare-fun apply!3226 (List!13748 Int) Token!4404)

(assert (=> d!378210 (= lt!443663 (apply!3226 (list!5208 (_1!7533 lt!443516)) 0))))

(declare-fun apply!3227 (Conc!4509 Int) Token!4404)

(assert (=> d!378210 (= lt!443663 (apply!3227 (c!219578 (_1!7533 lt!443516)) 0))))

(declare-fun e!858616 () Bool)

(assert (=> d!378210 e!858616))

(declare-fun res!604088 () Bool)

(assert (=> d!378210 (=> (not res!604088) (not e!858616))))

(assert (=> d!378210 (= res!604088 (<= 0 0))))

(assert (=> d!378210 (= (apply!3223 (_1!7533 lt!443516) 0) lt!443663)))

(declare-fun b!1340777 () Bool)

(assert (=> b!1340777 (= e!858616 (< 0 (size!11148 (_1!7533 lt!443516))))))

(assert (= (and d!378210 res!604088) b!1340777))

(declare-fun m!1499275 () Bool)

(assert (=> d!378210 m!1499275))

(assert (=> d!378210 m!1499275))

(declare-fun m!1499277 () Bool)

(assert (=> d!378210 m!1499277))

(declare-fun m!1499279 () Bool)

(assert (=> d!378210 m!1499279))

(assert (=> b!1340777 m!1498699))

(assert (=> b!1340342 d!378210))

(declare-fun d!378214 () Bool)

(assert (=> d!378214 true))

(declare-fun lt!443666 () Bool)

(assert (=> d!378214 (= lt!443666 (rulesValidInductive!749 thiss!19762 rules!2550))))

(declare-fun lambda!56165 () Int)

(declare-fun forall!3342 (List!13744 Int) Bool)

(assert (=> d!378214 (= lt!443666 (forall!3342 rules!2550 lambda!56165))))

(assert (=> d!378214 (= (rulesValid!867 thiss!19762 rules!2550) lt!443666)))

(declare-fun bs!332284 () Bool)

(assert (= bs!332284 d!378214))

(assert (=> bs!332284 m!1499185))

(declare-fun m!1499281 () Bool)

(assert (=> bs!332284 m!1499281))

(assert (=> d!378084 d!378214))

(declare-fun d!378216 () Bool)

(assert (=> d!378216 (= (isEmpty!8167 lt!443469) ((_ is Nil!13677) lt!443469))))

(assert (=> d!378036 d!378216))

(declare-fun d!378218 () Bool)

(declare-fun res!604091 () List!13743)

(assert (=> d!378218 (dynLambda!6034 lambda!56135 res!604091)))

(declare-fun e!858619 () Bool)

(assert (=> d!378218 e!858619))

(assert (=> d!378218 (= (choose!8223 lambda!56135) res!604091)))

(declare-fun b!1340782 () Bool)

(declare-fun tp!388141 () Bool)

(assert (=> b!1340782 (= e!858619 (and tp_is_empty!6687 tp!388141))))

(assert (= (and d!378218 ((_ is Cons!13677) res!604091)) b!1340782))

(declare-fun b_lambda!39625 () Bool)

(assert (=> (not b_lambda!39625) (not d!378218)))

(declare-fun m!1499283 () Bool)

(assert (=> d!378218 m!1499283))

(assert (=> d!378082 d!378218))

(assert (=> d!378082 d!378050))

(declare-fun d!378220 () Bool)

(declare-fun list!5212 (Conc!4509) List!13748)

(assert (=> d!378220 (= (list!5208 (_1!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34))))) (list!5212 (c!219578 (_1!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34)))))))))

(declare-fun bs!332285 () Bool)

(assert (= bs!332285 d!378220))

(declare-fun m!1499285 () Bool)

(assert (=> bs!332285 m!1499285))

(assert (=> d!378056 d!378220))

(declare-fun d!378222 () Bool)

(declare-fun lt!443673 () Int)

(declare-fun size!11155 (List!13748) Int)

(assert (=> d!378222 (= lt!443673 (size!11155 (list!5208 (_1!7533 lt!443536))))))

(declare-fun size!11156 (Conc!4509) Int)

(assert (=> d!378222 (= lt!443673 (size!11156 (c!219578 (_1!7533 lt!443536))))))

(assert (=> d!378222 (= (size!11148 (_1!7533 lt!443536)) lt!443673)))

(declare-fun bs!332286 () Bool)

(assert (= bs!332286 d!378222))

(declare-fun m!1499287 () Bool)

(assert (=> bs!332286 m!1499287))

(assert (=> bs!332286 m!1499287))

(declare-fun m!1499289 () Bool)

(assert (=> bs!332286 m!1499289))

(declare-fun m!1499291 () Bool)

(assert (=> bs!332286 m!1499291))

(assert (=> d!378056 d!378222))

(declare-fun d!378224 () Bool)

(declare-fun lt!443674 () BalanceConc!8954)

(assert (=> d!378224 (= (list!5205 lt!443674) (printList!584 thiss!19762 (list!5208 (singletonSeq!977 t2!34))))))

(assert (=> d!378224 (= lt!443674 (printTailRec!566 thiss!19762 (singletonSeq!977 t2!34) 0 (BalanceConc!8955 Empty!4507)))))

(assert (=> d!378224 (= (print!836 thiss!19762 (singletonSeq!977 t2!34)) lt!443674)))

(declare-fun bs!332287 () Bool)

(assert (= bs!332287 d!378224))

(declare-fun m!1499293 () Bool)

(assert (=> bs!332287 m!1499293))

(assert (=> bs!332287 m!1498799))

(assert (=> bs!332287 m!1498801))

(assert (=> bs!332287 m!1498801))

(declare-fun m!1499295 () Bool)

(assert (=> bs!332287 m!1499295))

(assert (=> bs!332287 m!1498799))

(declare-fun m!1499297 () Bool)

(assert (=> bs!332287 m!1499297))

(assert (=> d!378056 d!378224))

(declare-fun d!378226 () Bool)

(declare-fun e!858632 () Bool)

(assert (=> d!378226 e!858632))

(declare-fun res!604095 () Bool)

(assert (=> d!378226 (=> (not res!604095) (not e!858632))))

(declare-fun lt!443677 () BalanceConc!8958)

(assert (=> d!378226 (= res!604095 (= (list!5208 lt!443677) (Cons!13682 t2!34 Nil!13682)))))

(assert (=> d!378226 (= lt!443677 (singleton!415 t2!34))))

(assert (=> d!378226 (= (singletonSeq!977 t2!34) lt!443677)))

(declare-fun b!1340804 () Bool)

(assert (=> b!1340804 (= e!858632 (isBalanced!1309 (c!219578 lt!443677)))))

(assert (= (and d!378226 res!604095) b!1340804))

(declare-fun m!1499299 () Bool)

(assert (=> d!378226 m!1499299))

(declare-fun m!1499301 () Bool)

(assert (=> d!378226 m!1499301))

(declare-fun m!1499303 () Bool)

(assert (=> b!1340804 m!1499303))

(assert (=> d!378056 d!378226))

(assert (=> d!378056 d!378062))

(declare-fun b!1340805 () Bool)

(declare-fun e!858634 () Bool)

(declare-fun e!858633 () Bool)

(assert (=> b!1340805 (= e!858634 e!858633)))

(declare-fun lt!443678 () tuple2!13294)

(declare-fun res!604098 () Bool)

(assert (=> b!1340805 (= res!604098 (< (size!11144 (_2!7533 lt!443678)) (size!11144 (print!836 thiss!19762 (singletonSeq!977 t2!34)))))))

(assert (=> b!1340805 (=> (not res!604098) (not e!858633))))

(declare-fun b!1340806 () Bool)

(assert (=> b!1340806 (= e!858633 (not (isEmpty!8171 (_1!7533 lt!443678))))))

(declare-fun d!378228 () Bool)

(declare-fun e!858635 () Bool)

(assert (=> d!378228 e!858635))

(declare-fun res!604097 () Bool)

(assert (=> d!378228 (=> (not res!604097) (not e!858635))))

(assert (=> d!378228 (= res!604097 e!858634)))

(declare-fun c!219687 () Bool)

(assert (=> d!378228 (= c!219687 (> (size!11148 (_1!7533 lt!443678)) 0))))

(assert (=> d!378228 (= lt!443678 (lexTailRecV2!389 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34)) (BalanceConc!8955 Empty!4507) (print!836 thiss!19762 (singletonSeq!977 t2!34)) (BalanceConc!8959 Empty!4509)))))

(assert (=> d!378228 (= (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34))) lt!443678)))

(declare-fun b!1340807 () Bool)

(assert (=> b!1340807 (= e!858634 (= (_2!7533 lt!443678) (print!836 thiss!19762 (singletonSeq!977 t2!34))))))

(declare-fun b!1340808 () Bool)

(declare-fun res!604096 () Bool)

(assert (=> b!1340808 (=> (not res!604096) (not e!858635))))

(assert (=> b!1340808 (= res!604096 (= (list!5208 (_1!7533 lt!443678)) (_1!7535 (lexList!594 thiss!19762 rules!2550 (list!5205 (print!836 thiss!19762 (singletonSeq!977 t2!34)))))))))

(declare-fun b!1340809 () Bool)

(assert (=> b!1340809 (= e!858635 (= (list!5205 (_2!7533 lt!443678)) (_2!7535 (lexList!594 thiss!19762 rules!2550 (list!5205 (print!836 thiss!19762 (singletonSeq!977 t2!34)))))))))

(assert (= (and d!378228 c!219687) b!1340805))

(assert (= (and d!378228 (not c!219687)) b!1340807))

(assert (= (and b!1340805 res!604098) b!1340806))

(assert (= (and d!378228 res!604097) b!1340808))

(assert (= (and b!1340808 res!604096) b!1340809))

(declare-fun m!1499317 () Bool)

(assert (=> b!1340805 m!1499317))

(assert (=> b!1340805 m!1498803))

(declare-fun m!1499319 () Bool)

(assert (=> b!1340805 m!1499319))

(declare-fun m!1499321 () Bool)

(assert (=> b!1340808 m!1499321))

(assert (=> b!1340808 m!1498803))

(declare-fun m!1499323 () Bool)

(assert (=> b!1340808 m!1499323))

(assert (=> b!1340808 m!1499323))

(declare-fun m!1499325 () Bool)

(assert (=> b!1340808 m!1499325))

(declare-fun m!1499327 () Bool)

(assert (=> b!1340809 m!1499327))

(assert (=> b!1340809 m!1498803))

(assert (=> b!1340809 m!1499323))

(assert (=> b!1340809 m!1499323))

(assert (=> b!1340809 m!1499325))

(declare-fun m!1499329 () Bool)

(assert (=> d!378228 m!1499329))

(assert (=> d!378228 m!1498803))

(assert (=> d!378228 m!1498803))

(declare-fun m!1499331 () Bool)

(assert (=> d!378228 m!1499331))

(declare-fun m!1499333 () Bool)

(assert (=> b!1340806 m!1499333))

(assert (=> d!378056 d!378228))

(declare-fun d!378232 () Bool)

(assert (=> d!378232 (= (list!5208 (singletonSeq!977 t2!34)) (list!5212 (c!219578 (singletonSeq!977 t2!34))))))

(declare-fun bs!332288 () Bool)

(assert (= bs!332288 d!378232))

(declare-fun m!1499335 () Bool)

(assert (=> bs!332288 m!1499335))

(assert (=> d!378056 d!378232))

(declare-fun bs!332289 () Bool)

(declare-fun d!378234 () Bool)

(assert (= bs!332289 (and d!378234 d!378168)))

(declare-fun lambda!56166 () Int)

(assert (=> bs!332289 (= (and (= (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) (= (toValue!3610 (transformation!2371 (h!19079 rules!2550))) (toValue!3610 (transformation!2371 (rule!4116 t1!34))))) (= lambda!56166 lambda!56153))))

(assert (=> d!378234 true))

(assert (=> d!378234 (< (dynLambda!6035 order!8207 (toChars!3469 (transformation!2371 (h!19079 rules!2550)))) (dynLambda!6036 order!8209 lambda!56166))))

(assert (=> d!378234 true))

(assert (=> d!378234 (< (dynLambda!6037 order!8211 (toValue!3610 (transformation!2371 (h!19079 rules!2550)))) (dynLambda!6036 order!8209 lambda!56166))))

(assert (=> d!378234 (= (semiInverseModEq!898 (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toValue!3610 (transformation!2371 (h!19079 rules!2550)))) (Forall!524 lambda!56166))))

(declare-fun bs!332290 () Bool)

(assert (= bs!332290 d!378234))

(declare-fun m!1499339 () Bool)

(assert (=> bs!332290 m!1499339))

(assert (=> d!378032 d!378234))

(declare-fun d!378238 () Bool)

(declare-fun res!604102 () Bool)

(declare-fun e!858639 () Bool)

(assert (=> d!378238 (=> res!604102 e!858639)))

(assert (=> d!378238 (= res!604102 (not ((_ is Cons!13678) (t!119423 rules!2550))))))

(assert (=> d!378238 (= (sepAndNonSepRulesDisjointChars!744 rules!2550 (t!119423 rules!2550)) e!858639)))

(declare-fun b!1340813 () Bool)

(declare-fun e!858640 () Bool)

(assert (=> b!1340813 (= e!858639 e!858640)))

(declare-fun res!604103 () Bool)

(assert (=> b!1340813 (=> (not res!604103) (not e!858640))))

(assert (=> b!1340813 (= res!604103 (ruleDisjointCharsFromAllFromOtherType!340 (h!19079 (t!119423 rules!2550)) rules!2550))))

(declare-fun b!1340814 () Bool)

(assert (=> b!1340814 (= e!858640 (sepAndNonSepRulesDisjointChars!744 rules!2550 (t!119423 (t!119423 rules!2550))))))

(assert (= (and d!378238 (not res!604102)) b!1340813))

(assert (= (and b!1340813 res!604103) b!1340814))

(declare-fun m!1499341 () Bool)

(assert (=> b!1340813 m!1499341))

(declare-fun m!1499343 () Bool)

(assert (=> b!1340814 m!1499343))

(assert (=> b!1340212 d!378238))

(declare-fun d!378240 () Bool)

(declare-fun c!219688 () Bool)

(assert (=> d!378240 (= c!219688 (isEmpty!8167 (tail!1926 lt!443469)))))

(declare-fun e!858641 () Bool)

(assert (=> d!378240 (= (prefixMatch!194 (derivativeStep!927 lt!443463 (head!2377 lt!443469)) (tail!1926 lt!443469)) e!858641)))

(declare-fun b!1340815 () Bool)

(assert (=> b!1340815 (= e!858641 (not (lostCause!303 (derivativeStep!927 lt!443463 (head!2377 lt!443469)))))))

(declare-fun b!1340816 () Bool)

(assert (=> b!1340816 (= e!858641 (prefixMatch!194 (derivativeStep!927 (derivativeStep!927 lt!443463 (head!2377 lt!443469)) (head!2377 (tail!1926 lt!443469))) (tail!1926 (tail!1926 lt!443469))))))

(assert (= (and d!378240 c!219688) b!1340815))

(assert (= (and d!378240 (not c!219688)) b!1340816))

(assert (=> d!378240 m!1498733))

(declare-fun m!1499345 () Bool)

(assert (=> d!378240 m!1499345))

(assert (=> b!1340815 m!1498731))

(declare-fun m!1499347 () Bool)

(assert (=> b!1340815 m!1499347))

(assert (=> b!1340816 m!1498733))

(declare-fun m!1499349 () Bool)

(assert (=> b!1340816 m!1499349))

(assert (=> b!1340816 m!1498731))

(assert (=> b!1340816 m!1499349))

(declare-fun m!1499351 () Bool)

(assert (=> b!1340816 m!1499351))

(assert (=> b!1340816 m!1498733))

(declare-fun m!1499353 () Bool)

(assert (=> b!1340816 m!1499353))

(assert (=> b!1340816 m!1499351))

(assert (=> b!1340816 m!1499353))

(declare-fun m!1499355 () Bool)

(assert (=> b!1340816 m!1499355))

(assert (=> b!1340359 d!378240))

(declare-fun b!1340856 () Bool)

(declare-fun e!858663 () Regex!3685)

(declare-fun e!858664 () Regex!3685)

(assert (=> b!1340856 (= e!858663 e!858664)))

(declare-fun c!219706 () Bool)

(assert (=> b!1340856 (= c!219706 ((_ is Star!3685) lt!443463))))

(declare-fun b!1340857 () Bool)

(declare-fun call!90473 () Regex!3685)

(declare-fun call!90471 () Regex!3685)

(declare-fun e!858667 () Regex!3685)

(assert (=> b!1340857 (= e!858667 (Union!3685 (Concat!6147 call!90471 (regTwo!7882 lt!443463)) call!90473))))

(declare-fun b!1340859 () Bool)

(declare-fun e!858666 () Regex!3685)

(assert (=> b!1340859 (= e!858666 EmptyLang!3685)))

(declare-fun b!1340860 () Bool)

(declare-fun c!219705 () Bool)

(assert (=> b!1340860 (= c!219705 ((_ is Union!3685) lt!443463))))

(declare-fun e!858665 () Regex!3685)

(assert (=> b!1340860 (= e!858665 e!858663)))

(declare-fun b!1340861 () Bool)

(assert (=> b!1340861 (= e!858666 e!858665)))

(declare-fun c!219704 () Bool)

(assert (=> b!1340861 (= c!219704 ((_ is ElementMatch!3685) lt!443463))))

(declare-fun b!1340862 () Bool)

(declare-fun c!219707 () Bool)

(declare-fun nullable!1171 (Regex!3685) Bool)

(assert (=> b!1340862 (= c!219707 (nullable!1171 (regOne!7882 lt!443463)))))

(assert (=> b!1340862 (= e!858664 e!858667)))

(declare-fun b!1340863 () Bool)

(assert (=> b!1340863 (= e!858667 (Union!3685 (Concat!6147 call!90473 (regTwo!7882 lt!443463)) EmptyLang!3685))))

(declare-fun b!1340864 () Bool)

(assert (=> b!1340864 (= e!858665 (ite (= (head!2377 lt!443469) (c!219540 lt!443463)) EmptyExpr!3685 EmptyLang!3685))))

(declare-fun b!1340865 () Bool)

(declare-fun call!90472 () Regex!3685)

(assert (=> b!1340865 (= e!858664 (Concat!6147 call!90472 lt!443463))))

(declare-fun call!90470 () Regex!3685)

(declare-fun bm!90465 () Bool)

(assert (=> bm!90465 (= call!90470 (derivativeStep!927 (ite c!219705 (regTwo!7883 lt!443463) (ite c!219706 (reg!4014 lt!443463) (ite c!219707 (regTwo!7882 lt!443463) (regOne!7882 lt!443463)))) (head!2377 lt!443469)))))

(declare-fun bm!90466 () Bool)

(assert (=> bm!90466 (= call!90471 (derivativeStep!927 (ite c!219705 (regOne!7883 lt!443463) (regOne!7882 lt!443463)) (head!2377 lt!443469)))))

(declare-fun d!378242 () Bool)

(declare-fun lt!443681 () Regex!3685)

(assert (=> d!378242 (validRegex!1589 lt!443681)))

(assert (=> d!378242 (= lt!443681 e!858666)))

(declare-fun c!219703 () Bool)

(assert (=> d!378242 (= c!219703 (or ((_ is EmptyExpr!3685) lt!443463) ((_ is EmptyLang!3685) lt!443463)))))

(assert (=> d!378242 (validRegex!1589 lt!443463)))

(assert (=> d!378242 (= (derivativeStep!927 lt!443463 (head!2377 lt!443469)) lt!443681)))

(declare-fun b!1340858 () Bool)

(assert (=> b!1340858 (= e!858663 (Union!3685 call!90471 call!90470))))

(declare-fun bm!90467 () Bool)

(assert (=> bm!90467 (= call!90472 call!90470)))

(declare-fun bm!90468 () Bool)

(assert (=> bm!90468 (= call!90473 call!90472)))

(assert (= (and d!378242 c!219703) b!1340859))

(assert (= (and d!378242 (not c!219703)) b!1340861))

(assert (= (and b!1340861 c!219704) b!1340864))

(assert (= (and b!1340861 (not c!219704)) b!1340860))

(assert (= (and b!1340860 c!219705) b!1340858))

(assert (= (and b!1340860 (not c!219705)) b!1340856))

(assert (= (and b!1340856 c!219706) b!1340865))

(assert (= (and b!1340856 (not c!219706)) b!1340862))

(assert (= (and b!1340862 c!219707) b!1340857))

(assert (= (and b!1340862 (not c!219707)) b!1340863))

(assert (= (or b!1340857 b!1340863) bm!90468))

(assert (= (or b!1340865 bm!90468) bm!90467))

(assert (= (or b!1340858 b!1340857) bm!90466))

(assert (= (or b!1340858 bm!90467) bm!90465))

(declare-fun m!1499369 () Bool)

(assert (=> b!1340862 m!1499369))

(assert (=> bm!90465 m!1498729))

(declare-fun m!1499371 () Bool)

(assert (=> bm!90465 m!1499371))

(assert (=> bm!90466 m!1498729))

(declare-fun m!1499373 () Bool)

(assert (=> bm!90466 m!1499373))

(declare-fun m!1499375 () Bool)

(assert (=> d!378242 m!1499375))

(assert (=> d!378242 m!1498787))

(assert (=> b!1340359 d!378242))

(declare-fun d!378252 () Bool)

(assert (=> d!378252 (= (head!2377 lt!443469) (h!19078 lt!443469))))

(assert (=> b!1340359 d!378252))

(declare-fun d!378254 () Bool)

(assert (=> d!378254 (= (tail!1926 lt!443469) (t!119422 lt!443469))))

(assert (=> b!1340359 d!378254))

(declare-fun d!378256 () Bool)

(declare-fun lt!443682 () Int)

(assert (=> d!378256 (>= lt!443682 0)))

(declare-fun e!858670 () Int)

(assert (=> d!378256 (= lt!443682 e!858670)))

(declare-fun c!219708 () Bool)

(assert (=> d!378256 (= c!219708 ((_ is Nil!13677) lt!443544))))

(assert (=> d!378256 (= (size!11149 lt!443544) lt!443682)))

(declare-fun b!1340868 () Bool)

(assert (=> b!1340868 (= e!858670 0)))

(declare-fun b!1340869 () Bool)

(assert (=> b!1340869 (= e!858670 (+ 1 (size!11149 (t!119422 lt!443544))))))

(assert (= (and d!378256 c!219708) b!1340868))

(assert (= (and d!378256 (not c!219708)) b!1340869))

(declare-fun m!1499377 () Bool)

(assert (=> b!1340869 m!1499377))

(assert (=> b!1340410 d!378256))

(assert (=> b!1340410 d!378208))

(declare-fun d!378258 () Bool)

(declare-fun lt!443683 () Int)

(assert (=> d!378258 (>= lt!443683 0)))

(declare-fun e!858671 () Int)

(assert (=> d!378258 (= lt!443683 e!858671)))

(declare-fun c!219709 () Bool)

(assert (=> d!378258 (= c!219709 ((_ is Nil!13677) (getSuffix!533 lt!443464 lt!443469)))))

(assert (=> d!378258 (= (size!11149 (getSuffix!533 lt!443464 lt!443469)) lt!443683)))

(declare-fun b!1340870 () Bool)

(assert (=> b!1340870 (= e!858671 0)))

(declare-fun b!1340871 () Bool)

(assert (=> b!1340871 (= e!858671 (+ 1 (size!11149 (t!119422 (getSuffix!533 lt!443464 lt!443469)))))))

(assert (= (and d!378258 c!219709) b!1340870))

(assert (= (and d!378258 (not c!219709)) b!1340871))

(declare-fun m!1499379 () Bool)

(assert (=> b!1340871 m!1499379))

(assert (=> b!1340410 d!378258))

(declare-fun d!378260 () Bool)

(declare-fun lt!443687 () C!7660)

(assert (=> d!378260 (contains!2497 (list!5205 lt!443467) lt!443687)))

(declare-fun e!858678 () C!7660)

(assert (=> d!378260 (= lt!443687 e!858678)))

(declare-fun c!219714 () Bool)

(assert (=> d!378260 (= c!219714 (= 0 0))))

(declare-fun e!858679 () Bool)

(assert (=> d!378260 e!858679))

(declare-fun res!604115 () Bool)

(assert (=> d!378260 (=> (not res!604115) (not e!858679))))

(assert (=> d!378260 (= res!604115 (<= 0 0))))

(assert (=> d!378260 (= (apply!3224 (list!5205 lt!443467) 0) lt!443687)))

(declare-fun b!1340884 () Bool)

(assert (=> b!1340884 (= e!858679 (< 0 (size!11149 (list!5205 lt!443467))))))

(declare-fun b!1340885 () Bool)

(assert (=> b!1340885 (= e!858678 (head!2377 (list!5205 lt!443467)))))

(declare-fun b!1340886 () Bool)

(assert (=> b!1340886 (= e!858678 (apply!3224 (tail!1926 (list!5205 lt!443467)) (- 0 1)))))

(assert (= (and d!378260 res!604115) b!1340884))

(assert (= (and d!378260 c!219714) b!1340885))

(assert (= (and d!378260 (not c!219714)) b!1340886))

(assert (=> d!378260 m!1498427))

(declare-fun m!1499405 () Bool)

(assert (=> d!378260 m!1499405))

(assert (=> b!1340884 m!1498427))

(declare-fun m!1499407 () Bool)

(assert (=> b!1340884 m!1499407))

(assert (=> b!1340885 m!1498427))

(declare-fun m!1499409 () Bool)

(assert (=> b!1340885 m!1499409))

(assert (=> b!1340886 m!1498427))

(declare-fun m!1499413 () Bool)

(assert (=> b!1340886 m!1499413))

(assert (=> b!1340886 m!1499413))

(declare-fun m!1499415 () Bool)

(assert (=> b!1340886 m!1499415))

(assert (=> d!378066 d!378260))

(assert (=> d!378066 d!378038))

(declare-fun b!1340915 () Bool)

(declare-fun e!858698 () C!7660)

(declare-fun call!90476 () C!7660)

(assert (=> b!1340915 (= e!858698 call!90476)))

(declare-fun b!1340916 () Bool)

(assert (=> b!1340916 (= e!858698 call!90476)))

(declare-fun b!1340917 () Bool)

(declare-fun e!858700 () Bool)

(assert (=> b!1340917 (= e!858700 (< 0 (size!11150 (c!219539 lt!443467))))))

(declare-fun b!1340918 () Bool)

(declare-fun e!858701 () Int)

(assert (=> b!1340918 (= e!858701 (- 0 (size!11150 (left!11734 (c!219539 lt!443467)))))))

(declare-fun bm!90471 () Bool)

(declare-fun c!219722 () Bool)

(declare-fun c!219724 () Bool)

(assert (=> bm!90471 (= c!219722 c!219724)))

(assert (=> bm!90471 (= call!90476 (apply!3225 (ite c!219724 (left!11734 (c!219539 lt!443467)) (right!12064 (c!219539 lt!443467))) e!858701))))

(declare-fun d!378280 () Bool)

(declare-fun lt!443699 () C!7660)

(assert (=> d!378280 (= lt!443699 (apply!3224 (list!5209 (c!219539 lt!443467)) 0))))

(declare-fun e!858699 () C!7660)

(assert (=> d!378280 (= lt!443699 e!858699)))

(declare-fun c!219723 () Bool)

(assert (=> d!378280 (= c!219723 ((_ is Leaf!6889) (c!219539 lt!443467)))))

(assert (=> d!378280 e!858700))

(declare-fun res!604129 () Bool)

(assert (=> d!378280 (=> (not res!604129) (not e!858700))))

(assert (=> d!378280 (= res!604129 (<= 0 0))))

(assert (=> d!378280 (= (apply!3225 (c!219539 lt!443467) 0) lt!443699)))

(declare-fun b!1340914 () Bool)

(assert (=> b!1340914 (= e!858701 0)))

(declare-fun b!1340919 () Bool)

(declare-fun apply!3229 (IArray!9019 Int) C!7660)

(assert (=> b!1340919 (= e!858699 (apply!3229 (xs!7226 (c!219539 lt!443467)) 0))))

(declare-fun b!1340920 () Bool)

(assert (=> b!1340920 (= e!858699 e!858698)))

(declare-fun lt!443700 () Bool)

(declare-fun appendIndex!151 (List!13743 List!13743 Int) Bool)

(assert (=> b!1340920 (= lt!443700 (appendIndex!151 (list!5209 (left!11734 (c!219539 lt!443467))) (list!5209 (right!12064 (c!219539 lt!443467))) 0))))

(assert (=> b!1340920 (= c!219724 (< 0 (size!11150 (left!11734 (c!219539 lt!443467)))))))

(assert (= (and d!378280 res!604129) b!1340917))

(assert (= (and d!378280 c!219723) b!1340919))

(assert (= (and d!378280 (not c!219723)) b!1340920))

(assert (= (and b!1340920 c!219724) b!1340915))

(assert (= (and b!1340920 (not c!219724)) b!1340916))

(assert (= (or b!1340915 b!1340916) bm!90471))

(assert (= (and bm!90471 c!219722) b!1340914))

(assert (= (and bm!90471 (not c!219722)) b!1340918))

(declare-fun m!1499437 () Bool)

(assert (=> b!1340920 m!1499437))

(declare-fun m!1499439 () Bool)

(assert (=> b!1340920 m!1499439))

(assert (=> b!1340920 m!1499437))

(assert (=> b!1340920 m!1499439))

(declare-fun m!1499441 () Bool)

(assert (=> b!1340920 m!1499441))

(declare-fun m!1499443 () Bool)

(assert (=> b!1340920 m!1499443))

(declare-fun m!1499445 () Bool)

(assert (=> b!1340919 m!1499445))

(declare-fun m!1499447 () Bool)

(assert (=> bm!90471 m!1499447))

(assert (=> d!378280 m!1498737))

(assert (=> d!378280 m!1498737))

(declare-fun m!1499449 () Bool)

(assert (=> d!378280 m!1499449))

(declare-fun m!1499451 () Bool)

(assert (=> b!1340917 m!1499451))

(assert (=> b!1340918 m!1499443))

(assert (=> d!378066 d!378280))

(declare-fun d!378296 () Bool)

(assert (=> d!378296 (= (list!5205 lt!443522) (list!5209 (c!219539 lt!443522)))))

(declare-fun bs!332303 () Bool)

(assert (= bs!332303 d!378296))

(declare-fun m!1499453 () Bool)

(assert (=> bs!332303 m!1499453))

(assert (=> d!378040 d!378296))

(declare-fun d!378298 () Bool)

(declare-fun isBalanced!1310 (Conc!4507) Bool)

(assert (=> d!378298 (= (inv!18020 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))) (isBalanced!1310 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))))))

(declare-fun bs!332304 () Bool)

(assert (= bs!332304 d!378298))

(declare-fun m!1499471 () Bool)

(assert (=> bs!332304 m!1499471))

(assert (=> tb!70575 d!378298))

(declare-fun d!378304 () Bool)

(declare-fun e!858740 () Bool)

(assert (=> d!378304 e!858740))

(declare-fun c!219741 () Bool)

(assert (=> d!378304 (= c!219741 ((_ is EmptyExpr!3685) lt!443463))))

(declare-fun lt!443715 () Bool)

(declare-fun e!858738 () Bool)

(assert (=> d!378304 (= lt!443715 e!858738)))

(declare-fun c!219739 () Bool)

(assert (=> d!378304 (= c!219739 (isEmpty!8167 lt!443550))))

(assert (=> d!378304 (validRegex!1589 lt!443463)))

(assert (=> d!378304 (= (matchR!1678 lt!443463 lt!443550) lt!443715)))

(declare-fun b!1340979 () Bool)

(assert (=> b!1340979 (= e!858738 (matchR!1678 (derivativeStep!927 lt!443463 (head!2377 lt!443550)) (tail!1926 lt!443550)))))

(declare-fun b!1340980 () Bool)

(declare-fun res!604165 () Bool)

(declare-fun e!858739 () Bool)

(assert (=> b!1340980 (=> res!604165 e!858739)))

(assert (=> b!1340980 (= res!604165 (not (isEmpty!8167 (tail!1926 lt!443550))))))

(declare-fun b!1340981 () Bool)

(declare-fun e!858742 () Bool)

(assert (=> b!1340981 (= e!858740 e!858742)))

(declare-fun c!219740 () Bool)

(assert (=> b!1340981 (= c!219740 ((_ is EmptyLang!3685) lt!443463))))

(declare-fun b!1340982 () Bool)

(assert (=> b!1340982 (= e!858739 (not (= (head!2377 lt!443550) (c!219540 lt!443463))))))

(declare-fun b!1340983 () Bool)

(declare-fun res!604162 () Bool)

(declare-fun e!858737 () Bool)

(assert (=> b!1340983 (=> (not res!604162) (not e!858737))))

(declare-fun call!90480 () Bool)

(assert (=> b!1340983 (= res!604162 (not call!90480))))

(declare-fun b!1340984 () Bool)

(declare-fun res!604161 () Bool)

(assert (=> b!1340984 (=> (not res!604161) (not e!858737))))

(assert (=> b!1340984 (= res!604161 (isEmpty!8167 (tail!1926 lt!443550)))))

(declare-fun b!1340985 () Bool)

(declare-fun res!604160 () Bool)

(declare-fun e!858736 () Bool)

(assert (=> b!1340985 (=> res!604160 e!858736)))

(assert (=> b!1340985 (= res!604160 e!858737)))

(declare-fun res!604164 () Bool)

(assert (=> b!1340985 (=> (not res!604164) (not e!858737))))

(assert (=> b!1340985 (= res!604164 lt!443715)))

(declare-fun b!1340986 () Bool)

(declare-fun e!858741 () Bool)

(assert (=> b!1340986 (= e!858741 e!858739)))

(declare-fun res!604167 () Bool)

(assert (=> b!1340986 (=> res!604167 e!858739)))

(assert (=> b!1340986 (= res!604167 call!90480)))

(declare-fun b!1340987 () Bool)

(assert (=> b!1340987 (= e!858737 (= (head!2377 lt!443550) (c!219540 lt!443463)))))

(declare-fun b!1340988 () Bool)

(assert (=> b!1340988 (= e!858742 (not lt!443715))))

(declare-fun bm!90475 () Bool)

(assert (=> bm!90475 (= call!90480 (isEmpty!8167 lt!443550))))

(declare-fun b!1340989 () Bool)

(assert (=> b!1340989 (= e!858740 (= lt!443715 call!90480))))

(declare-fun b!1340990 () Bool)

(declare-fun res!604166 () Bool)

(assert (=> b!1340990 (=> res!604166 e!858736)))

(assert (=> b!1340990 (= res!604166 (not ((_ is ElementMatch!3685) lt!443463)))))

(assert (=> b!1340990 (= e!858742 e!858736)))

(declare-fun b!1340991 () Bool)

(assert (=> b!1340991 (= e!858738 (nullable!1171 lt!443463))))

(declare-fun b!1340992 () Bool)

(assert (=> b!1340992 (= e!858736 e!858741)))

(declare-fun res!604163 () Bool)

(assert (=> b!1340992 (=> (not res!604163) (not e!858741))))

(assert (=> b!1340992 (= res!604163 (not lt!443715))))

(assert (= (and d!378304 c!219739) b!1340991))

(assert (= (and d!378304 (not c!219739)) b!1340979))

(assert (= (and d!378304 c!219741) b!1340989))

(assert (= (and d!378304 (not c!219741)) b!1340981))

(assert (= (and b!1340981 c!219740) b!1340988))

(assert (= (and b!1340981 (not c!219740)) b!1340990))

(assert (= (and b!1340990 (not res!604166)) b!1340985))

(assert (= (and b!1340985 res!604164) b!1340983))

(assert (= (and b!1340983 res!604162) b!1340984))

(assert (= (and b!1340984 res!604161) b!1340987))

(assert (= (and b!1340985 (not res!604160)) b!1340992))

(assert (= (and b!1340992 res!604163) b!1340986))

(assert (= (and b!1340986 (not res!604167)) b!1340980))

(assert (= (and b!1340980 (not res!604165)) b!1340982))

(assert (= (or b!1340989 b!1340983 b!1340986) bm!90475))

(declare-fun m!1499507 () Bool)

(assert (=> b!1340984 m!1499507))

(assert (=> b!1340984 m!1499507))

(declare-fun m!1499509 () Bool)

(assert (=> b!1340984 m!1499509))

(declare-fun m!1499511 () Bool)

(assert (=> bm!90475 m!1499511))

(declare-fun m!1499513 () Bool)

(assert (=> b!1340982 m!1499513))

(assert (=> b!1340987 m!1499513))

(assert (=> b!1340979 m!1499513))

(assert (=> b!1340979 m!1499513))

(declare-fun m!1499515 () Bool)

(assert (=> b!1340979 m!1499515))

(assert (=> b!1340979 m!1499507))

(assert (=> b!1340979 m!1499515))

(assert (=> b!1340979 m!1499507))

(declare-fun m!1499517 () Bool)

(assert (=> b!1340979 m!1499517))

(assert (=> d!378304 m!1499511))

(assert (=> d!378304 m!1498787))

(assert (=> b!1340980 m!1499507))

(assert (=> b!1340980 m!1499507))

(assert (=> b!1340980 m!1499509))

(declare-fun m!1499519 () Bool)

(assert (=> b!1340991 m!1499519))

(assert (=> bs!332264 d!378304))

(declare-fun d!378320 () Bool)

(declare-fun c!219742 () Bool)

(assert (=> d!378320 (= c!219742 ((_ is Nil!13677) lt!443469))))

(declare-fun e!858743 () (InoxSet C!7660))

(assert (=> d!378320 (= (content!1945 lt!443469) e!858743)))

(declare-fun b!1340993 () Bool)

(assert (=> b!1340993 (= e!858743 ((as const (Array C!7660 Bool)) false))))

(declare-fun b!1340994 () Bool)

(assert (=> b!1340994 (= e!858743 ((_ map or) (store ((as const (Array C!7660 Bool)) false) (h!19078 lt!443469) true) (content!1945 (t!119422 lt!443469))))))

(assert (= (and d!378320 c!219742) b!1340993))

(assert (= (and d!378320 (not c!219742)) b!1340994))

(declare-fun m!1499521 () Bool)

(assert (=> b!1340994 m!1499521))

(assert (=> b!1340994 m!1499149))

(assert (=> d!378064 d!378320))

(declare-fun d!378322 () Bool)

(declare-fun c!219747 () Bool)

(assert (=> d!378322 (= c!219747 ((_ is Node!4507) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))))))

(declare-fun e!858752 () Bool)

(assert (=> d!378322 (= (inv!18019 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))) e!858752)))

(declare-fun b!1341007 () Bool)

(declare-fun inv!18023 (Conc!4507) Bool)

(assert (=> b!1341007 (= e!858752 (inv!18023 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))))))

(declare-fun b!1341008 () Bool)

(declare-fun e!858753 () Bool)

(assert (=> b!1341008 (= e!858752 e!858753)))

(declare-fun res!604172 () Bool)

(assert (=> b!1341008 (= res!604172 (not ((_ is Leaf!6889) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))))))))

(assert (=> b!1341008 (=> res!604172 e!858753)))

(declare-fun b!1341009 () Bool)

(declare-fun inv!18024 (Conc!4507) Bool)

(assert (=> b!1341009 (= e!858753 (inv!18024 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))))))

(assert (= (and d!378322 c!219747) b!1341007))

(assert (= (and d!378322 (not c!219747)) b!1341008))

(assert (= (and b!1341008 (not res!604172)) b!1341009))

(declare-fun m!1499523 () Bool)

(assert (=> b!1341007 m!1499523))

(declare-fun m!1499525 () Bool)

(assert (=> b!1341009 m!1499525))

(assert (=> b!1340364 d!378322))

(declare-fun d!378324 () Bool)

(assert (=> d!378324 true))

(declare-fun lambda!56185 () Int)

(declare-fun order!8221 () Int)

(declare-fun dynLambda!6043 (Int Int) Int)

(assert (=> d!378324 (< (dynLambda!6037 order!8211 (toValue!3610 (transformation!2371 (h!19079 rules!2550)))) (dynLambda!6043 order!8221 lambda!56185))))

(declare-fun Forall2!427 (Int) Bool)

(assert (=> d!378324 (= (equivClasses!857 (toChars!3469 (transformation!2371 (h!19079 rules!2550))) (toValue!3610 (transformation!2371 (h!19079 rules!2550)))) (Forall2!427 lambda!56185))))

(declare-fun bs!332310 () Bool)

(assert (= bs!332310 d!378324))

(declare-fun m!1499535 () Bool)

(assert (=> bs!332310 m!1499535))

(assert (=> b!1340347 d!378324))

(declare-fun d!378326 () Bool)

(declare-fun lt!443719 () Int)

(assert (=> d!378326 (= lt!443719 (size!11149 (list!5205 lt!443467)))))

(assert (=> d!378326 (= lt!443719 (size!11150 (c!219539 lt!443467)))))

(assert (=> d!378326 (= (size!11144 lt!443467) lt!443719)))

(declare-fun bs!332311 () Bool)

(assert (= bs!332311 d!378326))

(assert (=> bs!332311 m!1498427))

(assert (=> bs!332311 m!1498427))

(assert (=> bs!332311 m!1499407))

(assert (=> bs!332311 m!1499451))

(assert (=> b!1340403 d!378326))

(declare-fun d!378330 () Bool)

(declare-fun lt!443720 () C!7660)

(assert (=> d!378330 (contains!2497 (list!5205 lt!443466) lt!443720)))

(declare-fun e!858770 () C!7660)

(assert (=> d!378330 (= lt!443720 e!858770)))

(declare-fun c!219758 () Bool)

(assert (=> d!378330 (= c!219758 (= 0 0))))

(declare-fun e!858771 () Bool)

(assert (=> d!378330 e!858771))

(declare-fun res!604179 () Bool)

(assert (=> d!378330 (=> (not res!604179) (not e!858771))))

(assert (=> d!378330 (= res!604179 (<= 0 0))))

(assert (=> d!378330 (= (apply!3224 (list!5205 lt!443466) 0) lt!443720)))

(declare-fun b!1341038 () Bool)

(assert (=> b!1341038 (= e!858771 (< 0 (size!11149 (list!5205 lt!443466))))))

(declare-fun b!1341039 () Bool)

(assert (=> b!1341039 (= e!858770 (head!2377 (list!5205 lt!443466)))))

(declare-fun b!1341040 () Bool)

(assert (=> b!1341040 (= e!858770 (apply!3224 (tail!1926 (list!5205 lt!443466)) (- 0 1)))))

(assert (= (and d!378330 res!604179) b!1341038))

(assert (= (and d!378330 c!219758) b!1341039))

(assert (= (and d!378330 (not c!219758)) b!1341040))

(assert (=> d!378330 m!1498767))

(declare-fun m!1499549 () Bool)

(assert (=> d!378330 m!1499549))

(assert (=> b!1341038 m!1498767))

(assert (=> b!1341038 m!1498837))

(assert (=> b!1341039 m!1498767))

(declare-fun m!1499551 () Bool)

(assert (=> b!1341039 m!1499551))

(assert (=> b!1341040 m!1498767))

(declare-fun m!1499553 () Bool)

(assert (=> b!1341040 m!1499553))

(assert (=> b!1341040 m!1499553))

(declare-fun m!1499555 () Bool)

(assert (=> b!1341040 m!1499555))

(assert (=> d!378046 d!378330))

(declare-fun d!378332 () Bool)

(assert (=> d!378332 (= (list!5205 lt!443466) (list!5209 (c!219539 lt!443466)))))

(declare-fun bs!332312 () Bool)

(assert (= bs!332312 d!378332))

(declare-fun m!1499557 () Bool)

(assert (=> bs!332312 m!1499557))

(assert (=> d!378046 d!378332))

(declare-fun b!1341042 () Bool)

(declare-fun e!858772 () C!7660)

(declare-fun call!90481 () C!7660)

(assert (=> b!1341042 (= e!858772 call!90481)))

(declare-fun b!1341043 () Bool)

(assert (=> b!1341043 (= e!858772 call!90481)))

(declare-fun b!1341044 () Bool)

(declare-fun e!858774 () Bool)

(assert (=> b!1341044 (= e!858774 (< 0 (size!11150 (c!219539 lt!443466))))))

(declare-fun b!1341045 () Bool)

(declare-fun e!858775 () Int)

(assert (=> b!1341045 (= e!858775 (- 0 (size!11150 (left!11734 (c!219539 lt!443466)))))))

(declare-fun bm!90476 () Bool)

(declare-fun c!219759 () Bool)

(declare-fun c!219761 () Bool)

(assert (=> bm!90476 (= c!219759 c!219761)))

(assert (=> bm!90476 (= call!90481 (apply!3225 (ite c!219761 (left!11734 (c!219539 lt!443466)) (right!12064 (c!219539 lt!443466))) e!858775))))

(declare-fun d!378334 () Bool)

(declare-fun lt!443721 () C!7660)

(assert (=> d!378334 (= lt!443721 (apply!3224 (list!5209 (c!219539 lt!443466)) 0))))

(declare-fun e!858773 () C!7660)

(assert (=> d!378334 (= lt!443721 e!858773)))

(declare-fun c!219760 () Bool)

(assert (=> d!378334 (= c!219760 ((_ is Leaf!6889) (c!219539 lt!443466)))))

(assert (=> d!378334 e!858774))

(declare-fun res!604180 () Bool)

(assert (=> d!378334 (=> (not res!604180) (not e!858774))))

(assert (=> d!378334 (= res!604180 (<= 0 0))))

(assert (=> d!378334 (= (apply!3225 (c!219539 lt!443466) 0) lt!443721)))

(declare-fun b!1341041 () Bool)

(assert (=> b!1341041 (= e!858775 0)))

(declare-fun b!1341046 () Bool)

(assert (=> b!1341046 (= e!858773 (apply!3229 (xs!7226 (c!219539 lt!443466)) 0))))

(declare-fun b!1341047 () Bool)

(assert (=> b!1341047 (= e!858773 e!858772)))

(declare-fun lt!443722 () Bool)

(assert (=> b!1341047 (= lt!443722 (appendIndex!151 (list!5209 (left!11734 (c!219539 lt!443466))) (list!5209 (right!12064 (c!219539 lt!443466))) 0))))

(assert (=> b!1341047 (= c!219761 (< 0 (size!11150 (left!11734 (c!219539 lt!443466)))))))

(assert (= (and d!378334 res!604180) b!1341044))

(assert (= (and d!378334 c!219760) b!1341046))

(assert (= (and d!378334 (not c!219760)) b!1341047))

(assert (= (and b!1341047 c!219761) b!1341042))

(assert (= (and b!1341047 (not c!219761)) b!1341043))

(assert (= (or b!1341042 b!1341043) bm!90476))

(assert (= (and bm!90476 c!219759) b!1341041))

(assert (= (and bm!90476 (not c!219759)) b!1341045))

(declare-fun m!1499559 () Bool)

(assert (=> b!1341047 m!1499559))

(declare-fun m!1499561 () Bool)

(assert (=> b!1341047 m!1499561))

(assert (=> b!1341047 m!1499559))

(assert (=> b!1341047 m!1499561))

(declare-fun m!1499563 () Bool)

(assert (=> b!1341047 m!1499563))

(declare-fun m!1499565 () Bool)

(assert (=> b!1341047 m!1499565))

(declare-fun m!1499567 () Bool)

(assert (=> b!1341046 m!1499567))

(declare-fun m!1499569 () Bool)

(assert (=> bm!90476 m!1499569))

(assert (=> d!378334 m!1499557))

(assert (=> d!378334 m!1499557))

(declare-fun m!1499571 () Bool)

(assert (=> d!378334 m!1499571))

(assert (=> b!1341044 m!1498839))

(assert (=> b!1341045 m!1499565))

(assert (=> d!378046 d!378334))

(assert (=> d!377966 d!378102))

(assert (=> d!377966 d!378124))

(assert (=> d!377966 d!378136))

(declare-fun d!378336 () Bool)

(assert (=> d!378336 (= (list!5208 (_1!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34))))) (list!5212 (c!219578 (_1!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t1!34)))))))))

(declare-fun bs!332313 () Bool)

(assert (= bs!332313 d!378336))

(declare-fun m!1499573 () Bool)

(assert (=> bs!332313 m!1499573))

(assert (=> d!377966 d!378336))

(declare-fun d!378338 () Bool)

(declare-fun lt!443725 () Int)

(assert (=> d!378338 (= lt!443725 (size!11155 (list!5208 (_1!7533 lt!443516))))))

(assert (=> d!378338 (= lt!443725 (size!11156 (c!219578 (_1!7533 lt!443516))))))

(assert (=> d!378338 (= (size!11148 (_1!7533 lt!443516)) lt!443725)))

(declare-fun bs!332314 () Bool)

(assert (= bs!332314 d!378338))

(assert (=> bs!332314 m!1499275))

(assert (=> bs!332314 m!1499275))

(declare-fun m!1499575 () Bool)

(assert (=> bs!332314 m!1499575))

(declare-fun m!1499577 () Bool)

(assert (=> bs!332314 m!1499577))

(assert (=> d!377966 d!378338))

(declare-fun d!378340 () Bool)

(assert (=> d!378340 (= (list!5208 (singletonSeq!977 t1!34)) (list!5212 (c!219578 (singletonSeq!977 t1!34))))))

(declare-fun bs!332315 () Bool)

(assert (= bs!332315 d!378340))

(declare-fun m!1499579 () Bool)

(assert (=> bs!332315 m!1499579))

(assert (=> d!377966 d!378340))

(assert (=> d!377966 d!378062))

(declare-fun d!378342 () Bool)

(declare-fun c!219764 () Bool)

(assert (=> d!378342 (= c!219764 ((_ is Nil!13677) lt!443464))))

(declare-fun e!858778 () (InoxSet C!7660))

(assert (=> d!378342 (= (content!1945 lt!443464) e!858778)))

(declare-fun b!1341052 () Bool)

(assert (=> b!1341052 (= e!858778 ((as const (Array C!7660 Bool)) false))))

(declare-fun b!1341053 () Bool)

(assert (=> b!1341053 (= e!858778 ((_ map or) (store ((as const (Array C!7660 Bool)) false) (h!19078 lt!443464) true) (content!1945 (t!119422 lt!443464))))))

(assert (= (and d!378342 c!219764) b!1341052))

(assert (= (and d!378342 (not c!219764)) b!1341053))

(declare-fun m!1499581 () Bool)

(assert (=> b!1341053 m!1499581))

(assert (=> b!1341053 m!1499143))

(assert (=> d!378068 d!378342))

(declare-fun d!378344 () Bool)

(declare-fun lt!443726 () List!13743)

(assert (=> d!378344 (= (++!3500 (t!119422 lt!443469) lt!443726) (tail!1926 lt!443464))))

(declare-fun e!858779 () List!13743)

(assert (=> d!378344 (= lt!443726 e!858779)))

(declare-fun c!219765 () Bool)

(assert (=> d!378344 (= c!219765 ((_ is Cons!13677) (t!119422 lt!443469)))))

(assert (=> d!378344 (>= (size!11149 (tail!1926 lt!443464)) (size!11149 (t!119422 lt!443469)))))

(assert (=> d!378344 (= (getSuffix!533 (tail!1926 lt!443464) (t!119422 lt!443469)) lt!443726)))

(declare-fun b!1341054 () Bool)

(assert (=> b!1341054 (= e!858779 (getSuffix!533 (tail!1926 (tail!1926 lt!443464)) (t!119422 (t!119422 lt!443469))))))

(declare-fun b!1341055 () Bool)

(assert (=> b!1341055 (= e!858779 (tail!1926 lt!443464))))

(assert (= (and d!378344 c!219765) b!1341054))

(assert (= (and d!378344 (not c!219765)) b!1341055))

(declare-fun m!1499583 () Bool)

(assert (=> d!378344 m!1499583))

(assert (=> d!378344 m!1498865))

(declare-fun m!1499585 () Bool)

(assert (=> d!378344 m!1499585))

(assert (=> d!378344 m!1499263))

(assert (=> b!1341054 m!1498865))

(declare-fun m!1499587 () Bool)

(assert (=> b!1341054 m!1499587))

(assert (=> b!1341054 m!1499587))

(declare-fun m!1499589 () Bool)

(assert (=> b!1341054 m!1499589))

(assert (=> b!1340416 d!378344))

(declare-fun d!378346 () Bool)

(assert (=> d!378346 (= (tail!1926 lt!443464) (t!119422 lt!443464))))

(assert (=> b!1340416 d!378346))

(declare-fun d!378348 () Bool)

(declare-fun charsToBigInt!1 (List!13742) Int)

(assert (=> d!378348 (= (inv!17 (value!77206 t1!34)) (= (charsToBigInt!1 (text!17675 (value!77206 t1!34))) (value!77198 (value!77206 t1!34))))))

(declare-fun bs!332316 () Bool)

(assert (= bs!332316 d!378348))

(declare-fun m!1499605 () Bool)

(assert (=> bs!332316 m!1499605))

(assert (=> b!1340429 d!378348))

(declare-fun d!378356 () Bool)

(assert (=> d!378356 (= (inv!18020 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))) (isBalanced!1310 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))))))

(declare-fun bs!332317 () Bool)

(assert (= bs!332317 d!378356))

(declare-fun m!1499609 () Bool)

(assert (=> bs!332317 m!1499609))

(assert (=> tb!70569 d!378356))

(declare-fun d!378360 () Bool)

(declare-fun lt!443729 () Bool)

(assert (=> d!378360 (= lt!443729 (isEmpty!8167 (list!5205 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34)))))))))

(assert (=> d!378360 (= lt!443729 (isEmpty!8170 (c!219539 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34)))))))))

(assert (=> d!378360 (= (isEmpty!8166 (_2!7533 (lex!897 thiss!19762 rules!2550 (print!836 thiss!19762 (singletonSeq!977 t2!34))))) lt!443729)))

(declare-fun bs!332318 () Bool)

(assert (= bs!332318 d!378360))

(declare-fun m!1499613 () Bool)

(assert (=> bs!332318 m!1499613))

(assert (=> bs!332318 m!1499613))

(declare-fun m!1499615 () Bool)

(assert (=> bs!332318 m!1499615))

(declare-fun m!1499617 () Bool)

(assert (=> bs!332318 m!1499617))

(assert (=> b!1340399 d!378360))

(assert (=> b!1340399 d!378228))

(assert (=> b!1340399 d!378224))

(assert (=> b!1340399 d!378226))

(declare-fun d!378362 () Bool)

(declare-fun c!219767 () Bool)

(assert (=> d!378362 (= c!219767 ((_ is Nil!13677) lt!443544))))

(declare-fun e!858784 () (InoxSet C!7660))

(assert (=> d!378362 (= (content!1945 lt!443544) e!858784)))

(declare-fun b!1341061 () Bool)

(assert (=> b!1341061 (= e!858784 ((as const (Array C!7660 Bool)) false))))

(declare-fun b!1341062 () Bool)

(assert (=> b!1341062 (= e!858784 ((_ map or) (store ((as const (Array C!7660 Bool)) false) (h!19078 lt!443544) true) (content!1945 (t!119422 lt!443544))))))

(assert (= (and d!378362 c!219767) b!1341061))

(assert (= (and d!378362 (not c!219767)) b!1341062))

(declare-fun m!1499619 () Bool)

(assert (=> b!1341062 m!1499619))

(declare-fun m!1499621 () Bool)

(assert (=> b!1341062 m!1499621))

(assert (=> d!378078 d!378362))

(assert (=> d!378078 d!378320))

(declare-fun d!378364 () Bool)

(declare-fun c!219768 () Bool)

(assert (=> d!378364 (= c!219768 ((_ is Nil!13677) (getSuffix!533 lt!443464 lt!443469)))))

(declare-fun e!858785 () (InoxSet C!7660))

(assert (=> d!378364 (= (content!1945 (getSuffix!533 lt!443464 lt!443469)) e!858785)))

(declare-fun b!1341063 () Bool)

(assert (=> b!1341063 (= e!858785 ((as const (Array C!7660 Bool)) false))))

(declare-fun b!1341064 () Bool)

(assert (=> b!1341064 (= e!858785 ((_ map or) (store ((as const (Array C!7660 Bool)) false) (h!19078 (getSuffix!533 lt!443464 lt!443469)) true) (content!1945 (t!119422 (getSuffix!533 lt!443464 lt!443469)))))))

(assert (= (and d!378364 c!219768) b!1341063))

(assert (= (and d!378364 (not c!219768)) b!1341064))

(declare-fun m!1499625 () Bool)

(assert (=> b!1341064 m!1499625))

(declare-fun m!1499627 () Bool)

(assert (=> b!1341064 m!1499627))

(assert (=> d!378078 d!378364))

(declare-fun b!1341078 () Bool)

(declare-fun e!858791 () List!13743)

(assert (=> b!1341078 (= e!858791 (++!3500 (list!5209 (left!11734 (c!219539 lt!443467))) (list!5209 (right!12064 (c!219539 lt!443467)))))))

(declare-fun b!1341076 () Bool)

(declare-fun e!858790 () List!13743)

(assert (=> b!1341076 (= e!858790 e!858791)))

(declare-fun c!219774 () Bool)

(assert (=> b!1341076 (= c!219774 ((_ is Leaf!6889) (c!219539 lt!443467)))))

(declare-fun b!1341075 () Bool)

(assert (=> b!1341075 (= e!858790 Nil!13677)))

(declare-fun b!1341077 () Bool)

(declare-fun list!5213 (IArray!9019) List!13743)

(assert (=> b!1341077 (= e!858791 (list!5213 (xs!7226 (c!219539 lt!443467))))))

(declare-fun d!378368 () Bool)

(declare-fun c!219773 () Bool)

(assert (=> d!378368 (= c!219773 ((_ is Empty!4507) (c!219539 lt!443467)))))

(assert (=> d!378368 (= (list!5209 (c!219539 lt!443467)) e!858790)))

(assert (= (and d!378368 c!219773) b!1341075))

(assert (= (and d!378368 (not c!219773)) b!1341076))

(assert (= (and b!1341076 c!219774) b!1341077))

(assert (= (and b!1341076 (not c!219774)) b!1341078))

(assert (=> b!1341078 m!1499437))

(assert (=> b!1341078 m!1499439))

(assert (=> b!1341078 m!1499437))

(assert (=> b!1341078 m!1499439))

(declare-fun m!1499633 () Bool)

(assert (=> b!1341078 m!1499633))

(declare-fun m!1499635 () Bool)

(assert (=> b!1341077 m!1499635))

(assert (=> d!378038 d!378368))

(declare-fun d!378374 () Bool)

(declare-fun charsToInt!0 (List!13742) (_ BitVec 32))

(assert (=> d!378374 (= (inv!16 (value!77206 t2!34)) (= (charsToInt!0 (text!17674 (value!77206 t2!34))) (value!77197 (value!77206 t2!34))))))

(declare-fun bs!332326 () Bool)

(assert (= bs!332326 d!378374))

(declare-fun m!1499639 () Bool)

(assert (=> bs!332326 m!1499639))

(assert (=> b!1340393 d!378374))

(declare-fun d!378378 () Bool)

(declare-fun charsToBigInt!0 (List!13742 Int) Int)

(assert (=> d!378378 (= (inv!15 (value!77206 t1!34)) (= (charsToBigInt!0 (text!17676 (value!77206 t1!34)) 0) (value!77201 (value!77206 t1!34))))))

(declare-fun bs!332329 () Bool)

(assert (= bs!332329 d!378378))

(declare-fun m!1499655 () Bool)

(assert (=> bs!332329 m!1499655))

(assert (=> b!1340431 d!378378))

(declare-fun d!378386 () Bool)

(declare-fun lt!443735 () Int)

(assert (=> d!378386 (>= lt!443735 0)))

(declare-fun e!858794 () Int)

(assert (=> d!378386 (= lt!443735 e!858794)))

(declare-fun c!219776 () Bool)

(assert (=> d!378386 (= c!219776 ((_ is Nil!13677) lt!443528))))

(assert (=> d!378386 (= (size!11149 lt!443528) lt!443735)))

(declare-fun b!1341083 () Bool)

(assert (=> b!1341083 (= e!858794 0)))

(declare-fun b!1341084 () Bool)

(assert (=> b!1341084 (= e!858794 (+ 1 (size!11149 (t!119422 lt!443528))))))

(assert (= (and d!378386 c!219776) b!1341083))

(assert (= (and d!378386 (not c!219776)) b!1341084))

(declare-fun m!1499661 () Bool)

(assert (=> b!1341084 m!1499661))

(assert (=> b!1340375 d!378386))

(declare-fun d!378394 () Bool)

(declare-fun lt!443736 () Int)

(assert (=> d!378394 (>= lt!443736 0)))

(declare-fun e!858795 () Int)

(assert (=> d!378394 (= lt!443736 e!858795)))

(declare-fun c!219777 () Bool)

(assert (=> d!378394 (= c!219777 ((_ is Nil!13677) lt!443462))))

(assert (=> d!378394 (= (size!11149 lt!443462) lt!443736)))

(declare-fun b!1341085 () Bool)

(assert (=> b!1341085 (= e!858795 0)))

(declare-fun b!1341086 () Bool)

(assert (=> b!1341086 (= e!858795 (+ 1 (size!11149 (t!119422 lt!443462))))))

(assert (= (and d!378394 c!219777) b!1341085))

(assert (= (and d!378394 (not c!219777)) b!1341086))

(declare-fun m!1499665 () Bool)

(assert (=> b!1341086 m!1499665))

(assert (=> b!1340375 d!378394))

(declare-fun d!378398 () Bool)

(declare-fun lt!443737 () Int)

(assert (=> d!378398 (>= lt!443737 0)))

(declare-fun e!858797 () Int)

(assert (=> d!378398 (= lt!443737 e!858797)))

(declare-fun c!219779 () Bool)

(assert (=> d!378398 (= c!219779 ((_ is Nil!13677) (Cons!13677 lt!443470 Nil!13677)))))

(assert (=> d!378398 (= (size!11149 (Cons!13677 lt!443470 Nil!13677)) lt!443737)))

(declare-fun b!1341089 () Bool)

(assert (=> b!1341089 (= e!858797 0)))

(declare-fun b!1341090 () Bool)

(assert (=> b!1341090 (= e!858797 (+ 1 (size!11149 (t!119422 (Cons!13677 lt!443470 Nil!13677)))))))

(assert (= (and d!378398 c!219779) b!1341089))

(assert (= (and d!378398 (not c!219779)) b!1341090))

(declare-fun m!1499671 () Bool)

(assert (=> b!1341090 m!1499671))

(assert (=> b!1340375 d!378398))

(assert (=> d!378034 d!378320))

(declare-fun d!378402 () Bool)

(declare-fun lt!443738 () Token!4404)

(assert (=> d!378402 (= lt!443738 (apply!3226 (list!5208 (_1!7533 lt!443536)) 0))))

(assert (=> d!378402 (= lt!443738 (apply!3227 (c!219578 (_1!7533 lt!443536)) 0))))

(declare-fun e!858799 () Bool)

(assert (=> d!378402 e!858799))

(declare-fun res!604186 () Bool)

(assert (=> d!378402 (=> (not res!604186) (not e!858799))))

(assert (=> d!378402 (= res!604186 (<= 0 0))))

(assert (=> d!378402 (= (apply!3223 (_1!7533 lt!443536) 0) lt!443738)))

(declare-fun b!1341093 () Bool)

(assert (=> b!1341093 (= e!858799 (< 0 (size!11148 (_1!7533 lt!443536))))))

(assert (= (and d!378402 res!604186) b!1341093))

(assert (=> d!378402 m!1499287))

(assert (=> d!378402 m!1499287))

(declare-fun m!1499679 () Bool)

(assert (=> d!378402 m!1499679))

(declare-fun m!1499681 () Bool)

(assert (=> d!378402 m!1499681))

(assert (=> b!1341093 m!1498797))

(assert (=> b!1340397 d!378402))

(declare-fun d!378408 () Bool)

(declare-fun lt!443739 () Int)

(assert (=> d!378408 (>= lt!443739 0)))

(declare-fun e!858801 () Int)

(assert (=> d!378408 (= lt!443739 e!858801)))

(declare-fun c!219782 () Bool)

(assert (=> d!378408 (= c!219782 ((_ is Nil!13677) (originalCharacters!3233 t2!34)))))

(assert (=> d!378408 (= (size!11149 (originalCharacters!3233 t2!34)) lt!443739)))

(declare-fun b!1341096 () Bool)

(assert (=> b!1341096 (= e!858801 0)))

(declare-fun b!1341097 () Bool)

(assert (=> b!1341097 (= e!858801 (+ 1 (size!11149 (t!119422 (originalCharacters!3233 t2!34)))))))

(assert (= (and d!378408 c!219782) b!1341096))

(assert (= (and d!378408 (not c!219782)) b!1341097))

(declare-fun m!1499683 () Bool)

(assert (=> b!1341097 m!1499683))

(assert (=> b!1340428 d!378408))

(declare-fun d!378410 () Bool)

(declare-fun lt!443740 () Int)

(assert (=> d!378410 (>= lt!443740 0)))

(declare-fun e!858802 () Int)

(assert (=> d!378410 (= lt!443740 e!858802)))

(declare-fun c!219783 () Bool)

(assert (=> d!378410 (= c!219783 ((_ is Nil!13677) (originalCharacters!3233 t1!34)))))

(assert (=> d!378410 (= (size!11149 (originalCharacters!3233 t1!34)) lt!443740)))

(declare-fun b!1341098 () Bool)

(assert (=> b!1341098 (= e!858802 0)))

(declare-fun b!1341099 () Bool)

(assert (=> b!1341099 (= e!858802 (+ 1 (size!11149 (t!119422 (originalCharacters!3233 t1!34)))))))

(assert (= (and d!378410 c!219783) b!1341098))

(assert (= (and d!378410 (not c!219783)) b!1341099))

(declare-fun m!1499685 () Bool)

(assert (=> b!1341099 m!1499685))

(assert (=> b!1340426 d!378410))

(declare-fun bs!332333 () Bool)

(declare-fun d!378412 () Bool)

(assert (= bs!332333 (and d!378412 d!378324)))

(declare-fun lambda!56191 () Int)

(assert (=> bs!332333 (= (= (toValue!3610 (transformation!2371 (rule!4116 t2!34))) (toValue!3610 (transformation!2371 (h!19079 rules!2550)))) (= lambda!56191 lambda!56185))))

(assert (=> d!378412 true))

(assert (=> d!378412 (< (dynLambda!6037 order!8211 (toValue!3610 (transformation!2371 (rule!4116 t2!34)))) (dynLambda!6043 order!8221 lambda!56191))))

(assert (=> d!378412 (= (equivClasses!857 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toValue!3610 (transformation!2371 (rule!4116 t2!34)))) (Forall2!427 lambda!56191))))

(declare-fun bs!332334 () Bool)

(assert (= bs!332334 d!378412))

(declare-fun m!1499687 () Bool)

(assert (=> bs!332334 m!1499687))

(assert (=> b!1340406 d!378412))

(declare-fun d!378416 () Bool)

(declare-fun lt!443741 () Int)

(assert (=> d!378416 (>= lt!443741 0)))

(declare-fun e!858805 () Int)

(assert (=> d!378416 (= lt!443741 e!858805)))

(declare-fun c!219784 () Bool)

(assert (=> d!378416 (= c!219784 ((_ is Nil!13677) (list!5205 lt!443466)))))

(assert (=> d!378416 (= (size!11149 (list!5205 lt!443466)) lt!443741)))

(declare-fun b!1341102 () Bool)

(assert (=> b!1341102 (= e!858805 0)))

(declare-fun b!1341103 () Bool)

(assert (=> b!1341103 (= e!858805 (+ 1 (size!11149 (t!119422 (list!5205 lt!443466)))))))

(assert (= (and d!378416 c!219784) b!1341102))

(assert (= (and d!378416 (not c!219784)) b!1341103))

(declare-fun m!1499693 () Bool)

(assert (=> b!1341103 m!1499693))

(assert (=> d!378074 d!378416))

(assert (=> d!378074 d!378332))

(declare-fun d!378420 () Bool)

(declare-fun lt!443747 () Int)

(assert (=> d!378420 (= lt!443747 (size!11149 (list!5209 (c!219539 lt!443466))))))

(assert (=> d!378420 (= lt!443747 (ite ((_ is Empty!4507) (c!219539 lt!443466)) 0 (ite ((_ is Leaf!6889) (c!219539 lt!443466)) (csize!9245 (c!219539 lt!443466)) (csize!9244 (c!219539 lt!443466)))))))

(assert (=> d!378420 (= (size!11150 (c!219539 lt!443466)) lt!443747)))

(declare-fun bs!332339 () Bool)

(assert (= bs!332339 d!378420))

(assert (=> bs!332339 m!1499557))

(assert (=> bs!332339 m!1499557))

(declare-fun m!1499709 () Bool)

(assert (=> bs!332339 m!1499709))

(assert (=> d!378074 d!378420))

(declare-fun d!378432 () Bool)

(declare-fun lt!443748 () Bool)

(assert (=> d!378432 (= lt!443748 (isEmpty!8167 (list!5205 (_2!7533 lt!443516))))))

(assert (=> d!378432 (= lt!443748 (isEmpty!8170 (c!219539 (_2!7533 lt!443516))))))

(assert (=> d!378432 (= (isEmpty!8166 (_2!7533 lt!443516)) lt!443748)))

(declare-fun bs!332340 () Bool)

(assert (= bs!332340 d!378432))

(declare-fun m!1499711 () Bool)

(assert (=> bs!332340 m!1499711))

(assert (=> bs!332340 m!1499711))

(declare-fun m!1499713 () Bool)

(assert (=> bs!332340 m!1499713))

(declare-fun m!1499715 () Bool)

(assert (=> bs!332340 m!1499715))

(assert (=> b!1340343 d!378432))

(declare-fun b!1341158 () Bool)

(declare-fun e!858829 () Bool)

(declare-fun call!90484 () Bool)

(assert (=> b!1341158 (= e!858829 call!90484)))

(declare-fun d!378434 () Bool)

(declare-fun c!219788 () Bool)

(assert (=> d!378434 (= c!219788 (and ((_ is Cons!13678) rules!2550) (not (= (isSeparator!2371 (h!19079 rules!2550)) (isSeparator!2371 (h!19079 rules!2550))))))))

(declare-fun e!858831 () Bool)

(assert (=> d!378434 (= (ruleDisjointCharsFromAllFromOtherType!340 (h!19079 rules!2550) rules!2550) e!858831)))

(declare-fun b!1341159 () Bool)

(declare-fun e!858830 () Bool)

(assert (=> b!1341159 (= e!858831 e!858830)))

(declare-fun res!604199 () Bool)

(declare-fun rulesUseDisjointChars!168 (Rule!4542 Rule!4542) Bool)

(assert (=> b!1341159 (= res!604199 (rulesUseDisjointChars!168 (h!19079 rules!2550) (h!19079 rules!2550)))))

(assert (=> b!1341159 (=> (not res!604199) (not e!858830))))

(declare-fun b!1341160 () Bool)

(assert (=> b!1341160 (= e!858830 call!90484)))

(declare-fun bm!90479 () Bool)

(assert (=> bm!90479 (= call!90484 (ruleDisjointCharsFromAllFromOtherType!340 (h!19079 rules!2550) (t!119423 rules!2550)))))

(declare-fun b!1341161 () Bool)

(assert (=> b!1341161 (= e!858831 e!858829)))

(declare-fun res!604200 () Bool)

(assert (=> b!1341161 (= res!604200 (not ((_ is Cons!13678) rules!2550)))))

(assert (=> b!1341161 (=> res!604200 e!858829)))

(assert (= (and d!378434 c!219788) b!1341159))

(assert (= (and d!378434 (not c!219788)) b!1341161))

(assert (= (and b!1341159 res!604199) b!1341160))

(assert (= (and b!1341161 (not res!604200)) b!1341158))

(assert (= (or b!1341160 b!1341158) bm!90479))

(declare-fun m!1499719 () Bool)

(assert (=> b!1341159 m!1499719))

(declare-fun m!1499721 () Bool)

(assert (=> bm!90479 m!1499721))

(assert (=> b!1340211 d!378434))

(declare-fun bs!332342 () Bool)

(declare-fun d!378436 () Bool)

(assert (= bs!332342 (and d!378436 d!378324)))

(declare-fun lambda!56193 () Int)

(assert (=> bs!332342 (= (= (toValue!3610 (transformation!2371 (rule!4116 t1!34))) (toValue!3610 (transformation!2371 (h!19079 rules!2550)))) (= lambda!56193 lambda!56185))))

(declare-fun bs!332343 () Bool)

(assert (= bs!332343 (and d!378436 d!378412)))

(assert (=> bs!332343 (= (= (toValue!3610 (transformation!2371 (rule!4116 t1!34))) (toValue!3610 (transformation!2371 (rule!4116 t2!34)))) (= lambda!56193 lambda!56191))))

(assert (=> d!378436 true))

(assert (=> d!378436 (< (dynLambda!6037 order!8211 (toValue!3610 (transformation!2371 (rule!4116 t1!34)))) (dynLambda!6043 order!8221 lambda!56193))))

(assert (=> d!378436 (= (equivClasses!857 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (toValue!3610 (transformation!2371 (rule!4116 t1!34)))) (Forall2!427 lambda!56193))))

(declare-fun bs!332344 () Bool)

(assert (= bs!332344 d!378436))

(declare-fun m!1499729 () Bool)

(assert (=> bs!332344 m!1499729))

(assert (=> b!1340400 d!378436))

(declare-fun d!378438 () Bool)

(declare-fun lostCauseFct!120 (Regex!3685) Bool)

(assert (=> d!378438 (= (lostCause!303 lt!443463) (lostCauseFct!120 lt!443463))))

(declare-fun bs!332345 () Bool)

(assert (= bs!332345 d!378438))

(declare-fun m!1499737 () Bool)

(assert (=> bs!332345 m!1499737))

(assert (=> b!1340358 d!378438))

(declare-fun d!378440 () Bool)

(assert (=> d!378440 (= (list!5205 lt!443543) (list!5209 (c!219539 lt!443543)))))

(declare-fun bs!332346 () Bool)

(assert (= bs!332346 d!378440))

(declare-fun m!1499739 () Bool)

(assert (=> bs!332346 m!1499739))

(assert (=> d!378076 d!378440))

(declare-fun d!378442 () Bool)

(assert (=> d!378442 true))

(assert (=> d!378442 true))

(declare-fun res!604203 () Bool)

(assert (=> d!378442 (= (choose!8221 lambda!56135) res!604203)))

(assert (=> d!378050 d!378442))

(assert (=> b!1340379 d!378074))

(declare-fun b!1341203 () Bool)

(declare-fun e!858848 () List!13743)

(assert (=> b!1341203 (= e!858848 (getSuffix!533 lt!443464 lt!443469))))

(declare-fun b!1341205 () Bool)

(declare-fun res!604205 () Bool)

(declare-fun e!858849 () Bool)

(assert (=> b!1341205 (=> (not res!604205) (not e!858849))))

(declare-fun lt!443752 () List!13743)

(assert (=> b!1341205 (= res!604205 (= (size!11149 lt!443752) (+ (size!11149 (t!119422 lt!443469)) (size!11149 (getSuffix!533 lt!443464 lt!443469)))))))

(declare-fun d!378444 () Bool)

(assert (=> d!378444 e!858849))

(declare-fun res!604204 () Bool)

(assert (=> d!378444 (=> (not res!604204) (not e!858849))))

(assert (=> d!378444 (= res!604204 (= (content!1945 lt!443752) ((_ map or) (content!1945 (t!119422 lt!443469)) (content!1945 (getSuffix!533 lt!443464 lt!443469)))))))

(assert (=> d!378444 (= lt!443752 e!858848)))

(declare-fun c!219789 () Bool)

(assert (=> d!378444 (= c!219789 ((_ is Nil!13677) (t!119422 lt!443469)))))

(assert (=> d!378444 (= (++!3500 (t!119422 lt!443469) (getSuffix!533 lt!443464 lt!443469)) lt!443752)))

(declare-fun b!1341206 () Bool)

(assert (=> b!1341206 (= e!858849 (or (not (= (getSuffix!533 lt!443464 lt!443469) Nil!13677)) (= lt!443752 (t!119422 lt!443469))))))

(declare-fun b!1341204 () Bool)

(assert (=> b!1341204 (= e!858848 (Cons!13677 (h!19078 (t!119422 lt!443469)) (++!3500 (t!119422 (t!119422 lt!443469)) (getSuffix!533 lt!443464 lt!443469))))))

(assert (= (and d!378444 c!219789) b!1341203))

(assert (= (and d!378444 (not c!219789)) b!1341204))

(assert (= (and d!378444 res!604204) b!1341205))

(assert (= (and b!1341205 res!604205) b!1341206))

(declare-fun m!1499745 () Bool)

(assert (=> b!1341205 m!1499745))

(assert (=> b!1341205 m!1499263))

(assert (=> b!1341205 m!1498473))

(assert (=> b!1341205 m!1498853))

(declare-fun m!1499747 () Bool)

(assert (=> d!378444 m!1499747))

(assert (=> d!378444 m!1499149))

(assert (=> d!378444 m!1498473))

(assert (=> d!378444 m!1498857))

(assert (=> b!1341204 m!1498473))

(declare-fun m!1499749 () Bool)

(assert (=> b!1341204 m!1499749))

(assert (=> b!1340409 d!378444))

(declare-fun lt!443755 () BalanceConc!8954)

(declare-fun e!858854 () Bool)

(declare-fun b!1341220 () Bool)

(assert (=> b!1341220 (= e!858854 (= (list!5205 lt!443755) (++!3500 (list!5205 (charsOf!1343 t1!34)) (list!5205 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))))))

(declare-fun d!378450 () Bool)

(assert (=> d!378450 e!858854))

(declare-fun res!604218 () Bool)

(assert (=> d!378450 (=> (not res!604218) (not e!858854))))

(declare-fun appendAssocInst!267 (Conc!4507 Conc!4507) Bool)

(assert (=> d!378450 (= res!604218 (appendAssocInst!267 (c!219539 (charsOf!1343 t1!34)) (c!219539 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0)))))))

(declare-fun ++!3504 (Conc!4507 Conc!4507) Conc!4507)

(assert (=> d!378450 (= lt!443755 (BalanceConc!8955 (++!3504 (c!219539 (charsOf!1343 t1!34)) (c!219539 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))))))

(assert (=> d!378450 (= (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))) lt!443755)))

(declare-fun b!1341217 () Bool)

(declare-fun res!604216 () Bool)

(assert (=> b!1341217 (=> (not res!604216) (not e!858854))))

(assert (=> b!1341217 (= res!604216 (isBalanced!1310 (++!3504 (c!219539 (charsOf!1343 t1!34)) (c!219539 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))))))

(declare-fun b!1341219 () Bool)

(declare-fun res!604217 () Bool)

(assert (=> b!1341219 (=> (not res!604217) (not e!858854))))

(declare-fun height!639 (Conc!4507) Int)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1341219 (= res!604217 (>= (height!639 (++!3504 (c!219539 (charsOf!1343 t1!34)) (c!219539 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))) (max!0 (height!639 (c!219539 (charsOf!1343 t1!34))) (height!639 (c!219539 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0)))))))))

(declare-fun b!1341218 () Bool)

(declare-fun res!604215 () Bool)

(assert (=> b!1341218 (=> (not res!604215) (not e!858854))))

(assert (=> b!1341218 (= res!604215 (<= (height!639 (++!3504 (c!219539 (charsOf!1343 t1!34)) (c!219539 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))) (+ (max!0 (height!639 (c!219539 (charsOf!1343 t1!34))) (height!639 (c!219539 (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))) 1)))))

(assert (= (and d!378450 res!604218) b!1341217))

(assert (= (and b!1341217 res!604216) b!1341218))

(assert (= (and b!1341218 res!604215) b!1341219))

(assert (= (and b!1341219 res!604217) b!1341220))

(declare-fun m!1499755 () Bool)

(assert (=> b!1341218 m!1499755))

(declare-fun m!1499757 () Bool)

(assert (=> b!1341218 m!1499757))

(declare-fun m!1499759 () Bool)

(assert (=> b!1341218 m!1499759))

(declare-fun m!1499761 () Bool)

(assert (=> b!1341218 m!1499761))

(assert (=> b!1341218 m!1499759))

(declare-fun m!1499763 () Bool)

(assert (=> b!1341218 m!1499763))

(assert (=> b!1341218 m!1499761))

(assert (=> b!1341218 m!1499755))

(assert (=> b!1341217 m!1499755))

(assert (=> b!1341217 m!1499755))

(declare-fun m!1499765 () Bool)

(assert (=> b!1341217 m!1499765))

(declare-fun m!1499767 () Bool)

(assert (=> d!378450 m!1499767))

(assert (=> d!378450 m!1499755))

(declare-fun m!1499769 () Bool)

(assert (=> b!1341220 m!1499769))

(assert (=> b!1341220 m!1498423))

(declare-fun m!1499771 () Bool)

(assert (=> b!1341220 m!1499771))

(assert (=> b!1341220 m!1498779))

(declare-fun m!1499773 () Bool)

(assert (=> b!1341220 m!1499773))

(assert (=> b!1341220 m!1499771))

(assert (=> b!1341220 m!1499773))

(declare-fun m!1499775 () Bool)

(assert (=> b!1341220 m!1499775))

(assert (=> b!1341219 m!1499755))

(assert (=> b!1341219 m!1499757))

(assert (=> b!1341219 m!1499759))

(assert (=> b!1341219 m!1499761))

(assert (=> b!1341219 m!1499759))

(assert (=> b!1341219 m!1499763))

(assert (=> b!1341219 m!1499761))

(assert (=> b!1341219 m!1499755))

(assert (=> d!378048 d!378450))

(declare-fun lt!443781 () Bool)

(declare-fun d!378452 () Bool)

(assert (=> d!378452 (= lt!443781 (prefixMatch!194 (rulesRegex!254 thiss!19762 rules!2550) (list!5205 (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))))))))

(declare-datatypes ((Context!1178 0))(
  ( (Context!1179 (exprs!1089 List!13749)) )
))
(declare-fun prefixMatchZipperSequence!216 ((InoxSet Context!1178) BalanceConc!8954 Int) Bool)

(declare-fun focus!80 (Regex!3685) (InoxSet Context!1178))

(assert (=> d!378452 (= lt!443781 (prefixMatchZipperSequence!216 (focus!80 (rulesRegex!254 thiss!19762 rules!2550)) (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))) 0))))

(declare-fun lt!443777 () Unit!19809)

(declare-fun lt!443779 () Unit!19809)

(assert (=> d!378452 (= lt!443777 lt!443779)))

(declare-fun lt!443784 () (InoxSet Context!1178))

(declare-fun lt!443778 () List!13743)

(declare-fun prefixMatchZipper!60 ((InoxSet Context!1178) List!13743) Bool)

(assert (=> d!378452 (= (prefixMatch!194 (rulesRegex!254 thiss!19762 rules!2550) lt!443778) (prefixMatchZipper!60 lt!443784 lt!443778))))

(declare-datatypes ((List!13752 0))(
  ( (Nil!13686) (Cons!13686 (h!19087 Context!1178) (t!119483 List!13752)) )
))
(declare-fun lt!443782 () List!13752)

(declare-fun prefixMatchZipperRegexEquiv!60 ((InoxSet Context!1178) List!13752 Regex!3685 List!13743) Unit!19809)

(assert (=> d!378452 (= lt!443779 (prefixMatchZipperRegexEquiv!60 lt!443784 lt!443782 (rulesRegex!254 thiss!19762 rules!2550) lt!443778))))

(assert (=> d!378452 (= lt!443778 (list!5205 (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0)))))))

(declare-fun toList!744 ((InoxSet Context!1178)) List!13752)

(assert (=> d!378452 (= lt!443782 (toList!744 (focus!80 (rulesRegex!254 thiss!19762 rules!2550))))))

(assert (=> d!378452 (= lt!443784 (focus!80 (rulesRegex!254 thiss!19762 rules!2550)))))

(declare-fun lt!443776 () Unit!19809)

(declare-fun lt!443783 () Unit!19809)

(assert (=> d!378452 (= lt!443776 lt!443783)))

(declare-fun lt!443785 () (InoxSet Context!1178))

(declare-fun lt!443780 () Int)

(declare-fun dropList!382 (BalanceConc!8954 Int) List!13743)

(assert (=> d!378452 (= (prefixMatchZipper!60 lt!443785 (dropList!382 (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))) lt!443780)) (prefixMatchZipperSequence!216 lt!443785 (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))) lt!443780))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!60 ((InoxSet Context!1178) BalanceConc!8954 Int) Unit!19809)

(assert (=> d!378452 (= lt!443783 (lemmaprefixMatchZipperSequenceEquivalent!60 lt!443785 (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0))) lt!443780))))

(assert (=> d!378452 (= lt!443780 0)))

(assert (=> d!378452 (= lt!443785 (focus!80 (rulesRegex!254 thiss!19762 rules!2550)))))

(assert (=> d!378452 (validRegex!1589 (rulesRegex!254 thiss!19762 rules!2550))))

(assert (=> d!378452 (= (prefixMatchZipperSequence!214 (rulesRegex!254 thiss!19762 rules!2550) (++!3502 (charsOf!1343 t1!34) (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0)))) lt!443781)))

(declare-fun bs!332349 () Bool)

(assert (= bs!332349 d!378452))

(assert (=> bs!332349 m!1498431))

(declare-fun m!1499777 () Bool)

(assert (=> bs!332349 m!1499777))

(assert (=> bs!332349 m!1498431))

(declare-fun m!1499779 () Bool)

(assert (=> bs!332349 m!1499779))

(declare-fun m!1499781 () Bool)

(assert (=> bs!332349 m!1499781))

(assert (=> bs!332349 m!1498431))

(declare-fun m!1499783 () Bool)

(assert (=> bs!332349 m!1499783))

(assert (=> bs!332349 m!1498775))

(declare-fun m!1499785 () Bool)

(assert (=> bs!332349 m!1499785))

(assert (=> bs!332349 m!1498775))

(declare-fun m!1499787 () Bool)

(assert (=> bs!332349 m!1499787))

(assert (=> bs!332349 m!1498775))

(assert (=> bs!332349 m!1499779))

(declare-fun m!1499789 () Bool)

(assert (=> bs!332349 m!1499789))

(assert (=> bs!332349 m!1498431))

(declare-fun m!1499791 () Bool)

(assert (=> bs!332349 m!1499791))

(assert (=> bs!332349 m!1499783))

(assert (=> bs!332349 m!1498775))

(declare-fun m!1499793 () Bool)

(assert (=> bs!332349 m!1499793))

(assert (=> bs!332349 m!1498431))

(declare-fun m!1499795 () Bool)

(assert (=> bs!332349 m!1499795))

(assert (=> bs!332349 m!1498775))

(declare-fun m!1499797 () Bool)

(assert (=> bs!332349 m!1499797))

(assert (=> bs!332349 m!1499785))

(declare-fun m!1499799 () Bool)

(assert (=> bs!332349 m!1499799))

(assert (=> bs!332349 m!1499783))

(declare-fun m!1499801 () Bool)

(assert (=> bs!332349 m!1499801))

(assert (=> d!378048 d!378452))

(declare-fun d!378454 () Bool)

(declare-fun e!858857 () Bool)

(assert (=> d!378454 e!858857))

(declare-fun res!604221 () Bool)

(assert (=> d!378454 (=> (not res!604221) (not e!858857))))

(declare-fun lt!443788 () BalanceConc!8954)

(assert (=> d!378454 (= res!604221 (= (list!5205 lt!443788) (Cons!13677 (apply!3219 (charsOf!1343 t2!34) 0) Nil!13677)))))

(declare-fun singleton!416 (C!7660) BalanceConc!8954)

(assert (=> d!378454 (= lt!443788 (singleton!416 (apply!3219 (charsOf!1343 t2!34) 0)))))

(assert (=> d!378454 (= (singletonSeq!978 (apply!3219 (charsOf!1343 t2!34) 0)) lt!443788)))

(declare-fun b!1341223 () Bool)

(assert (=> b!1341223 (= e!858857 (isBalanced!1310 (c!219539 lt!443788)))))

(assert (= (and d!378454 res!604221) b!1341223))

(declare-fun m!1499803 () Bool)

(assert (=> d!378454 m!1499803))

(assert (=> d!378454 m!1498773))

(declare-fun m!1499805 () Bool)

(assert (=> d!378454 m!1499805))

(declare-fun m!1499807 () Bool)

(assert (=> b!1341223 m!1499807))

(assert (=> d!378048 d!378454))

(assert (=> d!378048 d!378042))

(declare-fun d!378456 () Bool)

(declare-fun lt!443789 () C!7660)

(assert (=> d!378456 (= lt!443789 (apply!3224 (list!5205 (charsOf!1343 t2!34)) 0))))

(assert (=> d!378456 (= lt!443789 (apply!3225 (c!219539 (charsOf!1343 t2!34)) 0))))

(declare-fun e!858858 () Bool)

(assert (=> d!378456 e!858858))

(declare-fun res!604222 () Bool)

(assert (=> d!378456 (=> (not res!604222) (not e!858858))))

(assert (=> d!378456 (= res!604222 (<= 0 0))))

(assert (=> d!378456 (= (apply!3219 (charsOf!1343 t2!34) 0) lt!443789)))

(declare-fun b!1341224 () Bool)

(assert (=> b!1341224 (= e!858858 (< 0 (size!11144 (charsOf!1343 t2!34))))))

(assert (= (and d!378456 res!604222) b!1341224))

(assert (=> d!378456 m!1498441))

(declare-fun m!1499809 () Bool)

(assert (=> d!378456 m!1499809))

(assert (=> d!378456 m!1499809))

(declare-fun m!1499811 () Bool)

(assert (=> d!378456 m!1499811))

(declare-fun m!1499813 () Bool)

(assert (=> d!378456 m!1499813))

(assert (=> b!1341224 m!1498441))

(declare-fun m!1499815 () Bool)

(assert (=> b!1341224 m!1499815))

(assert (=> d!378048 d!378456))

(assert (=> d!378048 d!378040))

(assert (=> d!378048 d!378076))

(declare-fun b!1341225 () Bool)

(declare-fun e!858859 () List!13743)

(assert (=> b!1341225 (= e!858859 (Cons!13677 lt!443470 Nil!13677))))

(declare-fun b!1341227 () Bool)

(declare-fun res!604224 () Bool)

(declare-fun e!858860 () Bool)

(assert (=> b!1341227 (=> (not res!604224) (not e!858860))))

(declare-fun lt!443790 () List!13743)

(assert (=> b!1341227 (= res!604224 (= (size!11149 lt!443790) (+ (size!11149 (t!119422 lt!443462)) (size!11149 (Cons!13677 lt!443470 Nil!13677)))))))

(declare-fun d!378458 () Bool)

(assert (=> d!378458 e!858860))

(declare-fun res!604223 () Bool)

(assert (=> d!378458 (=> (not res!604223) (not e!858860))))

(assert (=> d!378458 (= res!604223 (= (content!1945 lt!443790) ((_ map or) (content!1945 (t!119422 lt!443462)) (content!1945 (Cons!13677 lt!443470 Nil!13677)))))))

(assert (=> d!378458 (= lt!443790 e!858859)))

(declare-fun c!219793 () Bool)

(assert (=> d!378458 (= c!219793 ((_ is Nil!13677) (t!119422 lt!443462)))))

(assert (=> d!378458 (= (++!3500 (t!119422 lt!443462) (Cons!13677 lt!443470 Nil!13677)) lt!443790)))

(declare-fun b!1341228 () Bool)

(assert (=> b!1341228 (= e!858860 (or (not (= (Cons!13677 lt!443470 Nil!13677) Nil!13677)) (= lt!443790 (t!119422 lt!443462))))))

(declare-fun b!1341226 () Bool)

(assert (=> b!1341226 (= e!858859 (Cons!13677 (h!19078 (t!119422 lt!443462)) (++!3500 (t!119422 (t!119422 lt!443462)) (Cons!13677 lt!443470 Nil!13677))))))

(assert (= (and d!378458 c!219793) b!1341225))

(assert (= (and d!378458 (not c!219793)) b!1341226))

(assert (= (and d!378458 res!604223) b!1341227))

(assert (= (and b!1341227 res!604224) b!1341228))

(declare-fun m!1499817 () Bool)

(assert (=> b!1341227 m!1499817))

(assert (=> b!1341227 m!1499665))

(assert (=> b!1341227 m!1498757))

(declare-fun m!1499819 () Bool)

(assert (=> d!378458 m!1499819))

(assert (=> d!378458 m!1499137))

(assert (=> d!378458 m!1498763))

(declare-fun m!1499821 () Bool)

(assert (=> b!1341226 m!1499821))

(assert (=> b!1340374 d!378458))

(declare-fun d!378460 () Bool)

(declare-fun res!604229 () Bool)

(declare-fun e!858865 () Bool)

(assert (=> d!378460 (=> res!604229 e!858865)))

(assert (=> d!378460 (= res!604229 ((_ is Nil!13678) rules!2550))))

(assert (=> d!378460 (= (noDuplicateTag!867 thiss!19762 rules!2550 Nil!13684) e!858865)))

(declare-fun b!1341233 () Bool)

(declare-fun e!858866 () Bool)

(assert (=> b!1341233 (= e!858865 e!858866)))

(declare-fun res!604230 () Bool)

(assert (=> b!1341233 (=> (not res!604230) (not e!858866))))

(declare-fun contains!2499 (List!13750 String!16541) Bool)

(assert (=> b!1341233 (= res!604230 (not (contains!2499 Nil!13684 (tag!2633 (h!19079 rules!2550)))))))

(declare-fun b!1341234 () Bool)

(assert (=> b!1341234 (= e!858866 (noDuplicateTag!867 thiss!19762 (t!119423 rules!2550) (Cons!13684 (tag!2633 (h!19079 rules!2550)) Nil!13684)))))

(assert (= (and d!378460 (not res!604229)) b!1341233))

(assert (= (and b!1341233 res!604230) b!1341234))

(declare-fun m!1499823 () Bool)

(assert (=> b!1341233 m!1499823))

(declare-fun m!1499825 () Bool)

(assert (=> b!1341234 m!1499825))

(assert (=> b!1340420 d!378460))

(declare-fun bs!332350 () Bool)

(declare-fun d!378462 () Bool)

(assert (= bs!332350 (and d!378462 d!378168)))

(declare-fun lambda!56194 () Int)

(assert (=> bs!332350 (= (and (= (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) (= (toValue!3610 (transformation!2371 (rule!4116 t2!34))) (toValue!3610 (transformation!2371 (rule!4116 t1!34))))) (= lambda!56194 lambda!56153))))

(declare-fun bs!332351 () Bool)

(assert (= bs!332351 (and d!378462 d!378234)))

(assert (=> bs!332351 (= (and (= (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toChars!3469 (transformation!2371 (h!19079 rules!2550)))) (= (toValue!3610 (transformation!2371 (rule!4116 t2!34))) (toValue!3610 (transformation!2371 (h!19079 rules!2550))))) (= lambda!56194 lambda!56166))))

(assert (=> d!378462 true))

(assert (=> d!378462 (< (dynLambda!6035 order!8207 (toChars!3469 (transformation!2371 (rule!4116 t2!34)))) (dynLambda!6036 order!8209 lambda!56194))))

(assert (=> d!378462 true))

(assert (=> d!378462 (< (dynLambda!6037 order!8211 (toValue!3610 (transformation!2371 (rule!4116 t2!34)))) (dynLambda!6036 order!8209 lambda!56194))))

(assert (=> d!378462 (= (semiInverseModEq!898 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (toValue!3610 (transformation!2371 (rule!4116 t2!34)))) (Forall!524 lambda!56194))))

(declare-fun bs!332352 () Bool)

(assert (= bs!332352 d!378462))

(declare-fun m!1499827 () Bool)

(assert (=> bs!332352 m!1499827))

(assert (=> d!378072 d!378462))

(declare-fun d!378464 () Bool)

(assert (=> d!378464 (= (isEmpty!8167 (originalCharacters!3233 t2!34)) ((_ is Nil!13677) (originalCharacters!3233 t2!34)))))

(assert (=> d!378088 d!378464))

(declare-fun d!378466 () Bool)

(declare-fun c!219794 () Bool)

(assert (=> d!378466 (= c!219794 ((_ is Node!4507) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))))))

(declare-fun e!858867 () Bool)

(assert (=> d!378466 (= (inv!18019 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))) e!858867)))

(declare-fun b!1341235 () Bool)

(assert (=> b!1341235 (= e!858867 (inv!18023 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))))))

(declare-fun b!1341236 () Bool)

(declare-fun e!858868 () Bool)

(assert (=> b!1341236 (= e!858867 e!858868)))

(declare-fun res!604231 () Bool)

(assert (=> b!1341236 (= res!604231 (not ((_ is Leaf!6889) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))))))))

(assert (=> b!1341236 (=> res!604231 e!858868)))

(declare-fun b!1341237 () Bool)

(assert (=> b!1341237 (= e!858868 (inv!18024 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))))))

(assert (= (and d!378466 c!219794) b!1341235))

(assert (= (and d!378466 (not c!219794)) b!1341236))

(assert (= (and b!1341236 (not res!604231)) b!1341237))

(declare-fun m!1499829 () Bool)

(assert (=> b!1341235 m!1499829))

(declare-fun m!1499831 () Bool)

(assert (=> b!1341237 m!1499831))

(assert (=> b!1340407 d!378466))

(declare-fun d!378468 () Bool)

(assert (=> d!378468 (= (inv!17 (value!77206 t2!34)) (= (charsToBigInt!1 (text!17675 (value!77206 t2!34))) (value!77198 (value!77206 t2!34))))))

(declare-fun bs!332353 () Bool)

(assert (= bs!332353 d!378468))

(declare-fun m!1499833 () Bool)

(assert (=> bs!332353 m!1499833))

(assert (=> b!1340392 d!378468))

(declare-fun d!378470 () Bool)

(declare-fun lt!443791 () Bool)

(assert (=> d!378470 (= lt!443791 (isEmpty!8167 (list!5205 (_2!7533 lt!443536))))))

(assert (=> d!378470 (= lt!443791 (isEmpty!8170 (c!219539 (_2!7533 lt!443536))))))

(assert (=> d!378470 (= (isEmpty!8166 (_2!7533 lt!443536)) lt!443791)))

(declare-fun bs!332354 () Bool)

(assert (= bs!332354 d!378470))

(declare-fun m!1499835 () Bool)

(assert (=> bs!332354 m!1499835))

(assert (=> bs!332354 m!1499835))

(declare-fun m!1499837 () Bool)

(assert (=> bs!332354 m!1499837))

(declare-fun m!1499839 () Bool)

(assert (=> bs!332354 m!1499839))

(assert (=> b!1340398 d!378470))

(declare-fun d!378472 () Bool)

(assert (=> d!378472 (= (inv!16 (value!77206 t1!34)) (= (charsToInt!0 (text!17674 (value!77206 t1!34))) (value!77197 (value!77206 t1!34))))))

(declare-fun bs!332355 () Bool)

(assert (= bs!332355 d!378472))

(declare-fun m!1499841 () Bool)

(assert (=> bs!332355 m!1499841))

(assert (=> b!1340430 d!378472))

(declare-fun d!378474 () Bool)

(assert (=> d!378474 (= (inv!15 (value!77206 t2!34)) (= (charsToBigInt!0 (text!17676 (value!77206 t2!34)) 0) (value!77201 (value!77206 t2!34))))))

(declare-fun bs!332356 () Bool)

(assert (= bs!332356 d!378474))

(declare-fun m!1499843 () Bool)

(assert (=> bs!332356 m!1499843))

(assert (=> b!1340394 d!378474))

(declare-fun d!378476 () Bool)

(assert (=> d!378476 (= (isEmpty!8167 (originalCharacters!3233 t1!34)) ((_ is Nil!13677) (originalCharacters!3233 t1!34)))))

(assert (=> d!378086 d!378476))

(declare-fun d!378478 () Bool)

(assert (=> d!378478 (= (list!5205 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))) (list!5209 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))))))

(declare-fun bs!332357 () Bool)

(assert (= bs!332357 d!378478))

(declare-fun m!1499845 () Bool)

(assert (=> bs!332357 m!1499845))

(assert (=> b!1340427 d!378478))

(declare-fun d!378480 () Bool)

(assert (=> d!378480 (= (list!5205 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))) (list!5209 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))))))

(declare-fun bs!332358 () Bool)

(assert (= bs!332358 d!378480))

(declare-fun m!1499847 () Bool)

(assert (=> bs!332358 m!1499847))

(assert (=> b!1340425 d!378480))

(declare-fun b!1341246 () Bool)

(declare-fun e!858877 () Bool)

(declare-fun e!858875 () Bool)

(assert (=> b!1341246 (= e!858877 e!858875)))

(declare-fun res!604240 () Bool)

(assert (=> b!1341246 (=> (not res!604240) (not e!858875))))

(assert (=> b!1341246 (= res!604240 (not ((_ is Nil!13677) lt!443550)))))

(declare-fun b!1341248 () Bool)

(assert (=> b!1341248 (= e!858875 (isPrefix!1099 (tail!1926 lt!443469) (tail!1926 lt!443550)))))

(declare-fun b!1341247 () Bool)

(declare-fun res!604241 () Bool)

(assert (=> b!1341247 (=> (not res!604241) (not e!858875))))

(assert (=> b!1341247 (= res!604241 (= (head!2377 lt!443469) (head!2377 lt!443550)))))

(declare-fun b!1341249 () Bool)

(declare-fun e!858876 () Bool)

(assert (=> b!1341249 (= e!858876 (>= (size!11149 lt!443550) (size!11149 lt!443469)))))

(declare-fun d!378482 () Bool)

(assert (=> d!378482 e!858876))

(declare-fun res!604242 () Bool)

(assert (=> d!378482 (=> res!604242 e!858876)))

(declare-fun lt!443794 () Bool)

(assert (=> d!378482 (= res!604242 (not lt!443794))))

(assert (=> d!378482 (= lt!443794 e!858877)))

(declare-fun res!604243 () Bool)

(assert (=> d!378482 (=> res!604243 e!858877)))

(assert (=> d!378482 (= res!604243 ((_ is Nil!13677) lt!443469))))

(assert (=> d!378482 (= (isPrefix!1099 lt!443469 lt!443550) lt!443794)))

(assert (= (and d!378482 (not res!604243)) b!1341246))

(assert (= (and b!1341246 res!604240) b!1341247))

(assert (= (and b!1341247 res!604241) b!1341248))

(assert (= (and d!378482 (not res!604242)) b!1341249))

(assert (=> b!1341248 m!1498733))

(assert (=> b!1341248 m!1499507))

(assert (=> b!1341248 m!1498733))

(assert (=> b!1341248 m!1499507))

(declare-fun m!1499849 () Bool)

(assert (=> b!1341248 m!1499849))

(assert (=> b!1341247 m!1498729))

(assert (=> b!1341247 m!1499513))

(declare-fun m!1499851 () Bool)

(assert (=> b!1341249 m!1499851))

(assert (=> b!1341249 m!1498851))

(assert (=> b!1340473 d!378482))

(declare-fun d!378484 () Bool)

(assert (=> d!378484 (= (Exists!837 lambda!56147) (choose!8221 lambda!56147))))

(declare-fun bs!332359 () Bool)

(assert (= bs!332359 d!378484))

(declare-fun m!1499853 () Bool)

(assert (=> bs!332359 m!1499853))

(assert (=> d!378052 d!378484))

(declare-fun bs!332360 () Bool)

(declare-fun d!378486 () Bool)

(assert (= bs!332360 (and d!378486 b!1340168)))

(declare-fun lambda!56197 () Int)

(assert (=> bs!332360 (= lambda!56197 lambda!56135)))

(declare-fun bs!332361 () Bool)

(assert (= bs!332361 (and d!378486 d!378052)))

(assert (=> bs!332361 (= lambda!56197 lambda!56147)))

(assert (=> d!378486 true))

(assert (=> d!378486 true))

(assert (=> d!378486 (Exists!837 lambda!56197)))

(assert (=> d!378486 true))

(declare-fun _$103!95 () Unit!19809)

(assert (=> d!378486 (= (choose!8222 lt!443463 lt!443469) _$103!95)))

(declare-fun bs!332362 () Bool)

(assert (= bs!332362 d!378486))

(declare-fun m!1499855 () Bool)

(assert (=> bs!332362 m!1499855))

(assert (=> d!378052 d!378486))

(declare-fun b!1341270 () Bool)

(declare-fun e!858897 () Bool)

(declare-fun e!858896 () Bool)

(assert (=> b!1341270 (= e!858897 e!858896)))

(declare-fun c!219799 () Bool)

(assert (=> b!1341270 (= c!219799 ((_ is Star!3685) lt!443463))))

(declare-fun b!1341271 () Bool)

(declare-fun e!858895 () Bool)

(assert (=> b!1341271 (= e!858896 e!858895)))

(declare-fun c!219800 () Bool)

(assert (=> b!1341271 (= c!219800 ((_ is Union!3685) lt!443463))))

(declare-fun b!1341272 () Bool)

(declare-fun e!858894 () Bool)

(declare-fun e!858900 () Bool)

(assert (=> b!1341272 (= e!858894 e!858900)))

(declare-fun res!604257 () Bool)

(assert (=> b!1341272 (=> (not res!604257) (not e!858900))))

(declare-fun call!90491 () Bool)

(assert (=> b!1341272 (= res!604257 call!90491)))

(declare-fun call!90492 () Bool)

(declare-fun bm!90486 () Bool)

(assert (=> bm!90486 (= call!90492 (validRegex!1589 (ite c!219799 (reg!4014 lt!443463) (ite c!219800 (regTwo!7883 lt!443463) (regTwo!7882 lt!443463)))))))

(declare-fun bm!90487 () Bool)

(declare-fun call!90493 () Bool)

(assert (=> bm!90487 (= call!90493 call!90492)))

(declare-fun b!1341273 () Bool)

(assert (=> b!1341273 (= e!858900 call!90493)))

(declare-fun d!378488 () Bool)

(declare-fun res!604256 () Bool)

(assert (=> d!378488 (=> res!604256 e!858897)))

(assert (=> d!378488 (= res!604256 ((_ is ElementMatch!3685) lt!443463))))

(assert (=> d!378488 (= (validRegex!1589 lt!443463) e!858897)))

(declare-fun b!1341274 () Bool)

(declare-fun e!858899 () Bool)

(assert (=> b!1341274 (= e!858899 call!90492)))

(declare-fun b!1341275 () Bool)

(declare-fun res!604260 () Bool)

(assert (=> b!1341275 (=> res!604260 e!858894)))

(assert (=> b!1341275 (= res!604260 (not ((_ is Concat!6147) lt!443463)))))

(assert (=> b!1341275 (= e!858895 e!858894)))

(declare-fun b!1341276 () Bool)

(declare-fun e!858898 () Bool)

(assert (=> b!1341276 (= e!858898 call!90493)))

(declare-fun b!1341277 () Bool)

(assert (=> b!1341277 (= e!858896 e!858899)))

(declare-fun res!604258 () Bool)

(assert (=> b!1341277 (= res!604258 (not (nullable!1171 (reg!4014 lt!443463))))))

(assert (=> b!1341277 (=> (not res!604258) (not e!858899))))

(declare-fun b!1341278 () Bool)

(declare-fun res!604259 () Bool)

(assert (=> b!1341278 (=> (not res!604259) (not e!858898))))

(assert (=> b!1341278 (= res!604259 call!90491)))

(assert (=> b!1341278 (= e!858895 e!858898)))

(declare-fun bm!90488 () Bool)

(assert (=> bm!90488 (= call!90491 (validRegex!1589 (ite c!219800 (regOne!7883 lt!443463) (regOne!7882 lt!443463))))))

(assert (= (and d!378488 (not res!604256)) b!1341270))

(assert (= (and b!1341270 c!219799) b!1341277))

(assert (= (and b!1341270 (not c!219799)) b!1341271))

(assert (= (and b!1341277 res!604258) b!1341274))

(assert (= (and b!1341271 c!219800) b!1341278))

(assert (= (and b!1341271 (not c!219800)) b!1341275))

(assert (= (and b!1341278 res!604259) b!1341276))

(assert (= (and b!1341275 (not res!604260)) b!1341272))

(assert (= (and b!1341272 res!604257) b!1341273))

(assert (= (or b!1341278 b!1341272) bm!90488))

(assert (= (or b!1341276 b!1341273) bm!90487))

(assert (= (or b!1341274 bm!90487) bm!90486))

(declare-fun m!1499857 () Bool)

(assert (=> bm!90486 m!1499857))

(declare-fun m!1499859 () Bool)

(assert (=> b!1341277 m!1499859))

(declare-fun m!1499861 () Bool)

(assert (=> bm!90488 m!1499861))

(assert (=> d!378052 d!378488))

(declare-fun d!378490 () Bool)

(assert (=> d!378490 (= (inv!18012 (tag!2633 (h!19079 (t!119423 rules!2550)))) (= (mod (str.len (value!77205 (tag!2633 (h!19079 (t!119423 rules!2550))))) 2) 0))))

(assert (=> b!1340465 d!378490))

(declare-fun d!378492 () Bool)

(declare-fun res!604261 () Bool)

(declare-fun e!858901 () Bool)

(assert (=> d!378492 (=> (not res!604261) (not e!858901))))

(assert (=> d!378492 (= res!604261 (semiInverseModEq!898 (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toValue!3610 (transformation!2371 (h!19079 (t!119423 rules!2550))))))))

(assert (=> d!378492 (= (inv!18015 (transformation!2371 (h!19079 (t!119423 rules!2550)))) e!858901)))

(declare-fun b!1341279 () Bool)

(assert (=> b!1341279 (= e!858901 (equivClasses!857 (toChars!3469 (transformation!2371 (h!19079 (t!119423 rules!2550)))) (toValue!3610 (transformation!2371 (h!19079 (t!119423 rules!2550))))))))

(assert (= (and d!378492 res!604261) b!1341279))

(declare-fun m!1499863 () Bool)

(assert (=> d!378492 m!1499863))

(declare-fun m!1499865 () Bool)

(assert (=> b!1341279 m!1499865))

(assert (=> b!1340465 d!378492))

(declare-fun b!1341280 () Bool)

(declare-fun e!858902 () Bool)

(assert (=> b!1341280 (= e!858902 tp_is_empty!6687)))

(declare-fun b!1341281 () Bool)

(declare-fun tp!388246 () Bool)

(declare-fun tp!388247 () Bool)

(assert (=> b!1341281 (= e!858902 (and tp!388246 tp!388247))))

(assert (=> b!1340447 (= tp!388110 e!858902)))

(declare-fun b!1341283 () Bool)

(declare-fun tp!388245 () Bool)

(declare-fun tp!388243 () Bool)

(assert (=> b!1341283 (= e!858902 (and tp!388245 tp!388243))))

(declare-fun b!1341282 () Bool)

(declare-fun tp!388244 () Bool)

(assert (=> b!1341282 (= e!858902 tp!388244)))

(assert (= (and b!1340447 ((_ is ElementMatch!3685) (regOne!7883 (regex!2371 (rule!4116 t1!34))))) b!1341280))

(assert (= (and b!1340447 ((_ is Concat!6147) (regOne!7883 (regex!2371 (rule!4116 t1!34))))) b!1341281))

(assert (= (and b!1340447 ((_ is Star!3685) (regOne!7883 (regex!2371 (rule!4116 t1!34))))) b!1341282))

(assert (= (and b!1340447 ((_ is Union!3685) (regOne!7883 (regex!2371 (rule!4116 t1!34))))) b!1341283))

(declare-fun b!1341284 () Bool)

(declare-fun e!858903 () Bool)

(assert (=> b!1341284 (= e!858903 tp_is_empty!6687)))

(declare-fun b!1341285 () Bool)

(declare-fun tp!388251 () Bool)

(declare-fun tp!388252 () Bool)

(assert (=> b!1341285 (= e!858903 (and tp!388251 tp!388252))))

(assert (=> b!1340447 (= tp!388108 e!858903)))

(declare-fun b!1341287 () Bool)

(declare-fun tp!388250 () Bool)

(declare-fun tp!388248 () Bool)

(assert (=> b!1341287 (= e!858903 (and tp!388250 tp!388248))))

(declare-fun b!1341286 () Bool)

(declare-fun tp!388249 () Bool)

(assert (=> b!1341286 (= e!858903 tp!388249)))

(assert (= (and b!1340447 ((_ is ElementMatch!3685) (regTwo!7883 (regex!2371 (rule!4116 t1!34))))) b!1341284))

(assert (= (and b!1340447 ((_ is Concat!6147) (regTwo!7883 (regex!2371 (rule!4116 t1!34))))) b!1341285))

(assert (= (and b!1340447 ((_ is Star!3685) (regTwo!7883 (regex!2371 (rule!4116 t1!34))))) b!1341286))

(assert (= (and b!1340447 ((_ is Union!3685) (regTwo!7883 (regex!2371 (rule!4116 t1!34))))) b!1341287))

(declare-fun tp!388261 () Bool)

(declare-fun b!1341296 () Bool)

(declare-fun e!858908 () Bool)

(declare-fun tp!388260 () Bool)

(assert (=> b!1341296 (= e!858908 (and (inv!18019 (left!11734 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))))) tp!388260 (inv!18019 (right!12064 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))))) tp!388261))))

(declare-fun b!1341298 () Bool)

(declare-fun e!858909 () Bool)

(declare-fun tp!388259 () Bool)

(assert (=> b!1341298 (= e!858909 tp!388259)))

(declare-fun b!1341297 () Bool)

(declare-fun inv!18026 (IArray!9019) Bool)

(assert (=> b!1341297 (= e!858908 (and (inv!18026 (xs!7226 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))))) e!858909))))

(assert (=> b!1340364 (= tp!388096 (and (inv!18019 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34)))) e!858908))))

(assert (= (and b!1340364 ((_ is Node!4507) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))))) b!1341296))

(assert (= b!1341297 b!1341298))

(assert (= (and b!1340364 ((_ is Leaf!6889) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t1!34))) (value!77206 t1!34))))) b!1341297))

(declare-fun m!1499867 () Bool)

(assert (=> b!1341296 m!1499867))

(declare-fun m!1499869 () Bool)

(assert (=> b!1341296 m!1499869))

(declare-fun m!1499871 () Bool)

(assert (=> b!1341297 m!1499871))

(assert (=> b!1340364 m!1498739))

(declare-fun b!1341299 () Bool)

(declare-fun e!858910 () Bool)

(assert (=> b!1341299 (= e!858910 tp_is_empty!6687)))

(declare-fun b!1341300 () Bool)

(declare-fun tp!388265 () Bool)

(declare-fun tp!388266 () Bool)

(assert (=> b!1341300 (= e!858910 (and tp!388265 tp!388266))))

(assert (=> b!1340449 (= tp!388116 e!858910)))

(declare-fun b!1341302 () Bool)

(declare-fun tp!388264 () Bool)

(declare-fun tp!388262 () Bool)

(assert (=> b!1341302 (= e!858910 (and tp!388264 tp!388262))))

(declare-fun b!1341301 () Bool)

(declare-fun tp!388263 () Bool)

(assert (=> b!1341301 (= e!858910 tp!388263)))

(assert (= (and b!1340449 ((_ is ElementMatch!3685) (regOne!7882 (regex!2371 (rule!4116 t2!34))))) b!1341299))

(assert (= (and b!1340449 ((_ is Concat!6147) (regOne!7882 (regex!2371 (rule!4116 t2!34))))) b!1341300))

(assert (= (and b!1340449 ((_ is Star!3685) (regOne!7882 (regex!2371 (rule!4116 t2!34))))) b!1341301))

(assert (= (and b!1340449 ((_ is Union!3685) (regOne!7882 (regex!2371 (rule!4116 t2!34))))) b!1341302))

(declare-fun b!1341303 () Bool)

(declare-fun e!858911 () Bool)

(assert (=> b!1341303 (= e!858911 tp_is_empty!6687)))

(declare-fun b!1341304 () Bool)

(declare-fun tp!388270 () Bool)

(declare-fun tp!388271 () Bool)

(assert (=> b!1341304 (= e!858911 (and tp!388270 tp!388271))))

(assert (=> b!1340449 (= tp!388117 e!858911)))

(declare-fun b!1341306 () Bool)

(declare-fun tp!388269 () Bool)

(declare-fun tp!388267 () Bool)

(assert (=> b!1341306 (= e!858911 (and tp!388269 tp!388267))))

(declare-fun b!1341305 () Bool)

(declare-fun tp!388268 () Bool)

(assert (=> b!1341305 (= e!858911 tp!388268)))

(assert (= (and b!1340449 ((_ is ElementMatch!3685) (regTwo!7882 (regex!2371 (rule!4116 t2!34))))) b!1341303))

(assert (= (and b!1340449 ((_ is Concat!6147) (regTwo!7882 (regex!2371 (rule!4116 t2!34))))) b!1341304))

(assert (= (and b!1340449 ((_ is Star!3685) (regTwo!7882 (regex!2371 (rule!4116 t2!34))))) b!1341305))

(assert (= (and b!1340449 ((_ is Union!3685) (regTwo!7882 (regex!2371 (rule!4116 t2!34))))) b!1341306))

(declare-fun b!1341307 () Bool)

(declare-fun e!858912 () Bool)

(assert (=> b!1341307 (= e!858912 tp_is_empty!6687)))

(declare-fun b!1341308 () Bool)

(declare-fun tp!388275 () Bool)

(declare-fun tp!388276 () Bool)

(assert (=> b!1341308 (= e!858912 (and tp!388275 tp!388276))))

(assert (=> b!1340454 (= tp!388119 e!858912)))

(declare-fun b!1341310 () Bool)

(declare-fun tp!388274 () Bool)

(declare-fun tp!388272 () Bool)

(assert (=> b!1341310 (= e!858912 (and tp!388274 tp!388272))))

(declare-fun b!1341309 () Bool)

(declare-fun tp!388273 () Bool)

(assert (=> b!1341309 (= e!858912 tp!388273)))

(assert (= (and b!1340454 ((_ is ElementMatch!3685) (reg!4014 (regex!2371 (h!19079 rules!2550))))) b!1341307))

(assert (= (and b!1340454 ((_ is Concat!6147) (reg!4014 (regex!2371 (h!19079 rules!2550))))) b!1341308))

(assert (= (and b!1340454 ((_ is Star!3685) (reg!4014 (regex!2371 (h!19079 rules!2550))))) b!1341309))

(assert (= (and b!1340454 ((_ is Union!3685) (reg!4014 (regex!2371 (h!19079 rules!2550))))) b!1341310))

(declare-fun b!1341311 () Bool)

(declare-fun e!858913 () Bool)

(assert (=> b!1341311 (= e!858913 tp_is_empty!6687)))

(declare-fun b!1341312 () Bool)

(declare-fun tp!388280 () Bool)

(declare-fun tp!388281 () Bool)

(assert (=> b!1341312 (= e!858913 (and tp!388280 tp!388281))))

(assert (=> b!1340445 (= tp!388111 e!858913)))

(declare-fun b!1341314 () Bool)

(declare-fun tp!388279 () Bool)

(declare-fun tp!388277 () Bool)

(assert (=> b!1341314 (= e!858913 (and tp!388279 tp!388277))))

(declare-fun b!1341313 () Bool)

(declare-fun tp!388278 () Bool)

(assert (=> b!1341313 (= e!858913 tp!388278)))

(assert (= (and b!1340445 ((_ is ElementMatch!3685) (regOne!7882 (regex!2371 (rule!4116 t1!34))))) b!1341311))

(assert (= (and b!1340445 ((_ is Concat!6147) (regOne!7882 (regex!2371 (rule!4116 t1!34))))) b!1341312))

(assert (= (and b!1340445 ((_ is Star!3685) (regOne!7882 (regex!2371 (rule!4116 t1!34))))) b!1341313))

(assert (= (and b!1340445 ((_ is Union!3685) (regOne!7882 (regex!2371 (rule!4116 t1!34))))) b!1341314))

(declare-fun b!1341315 () Bool)

(declare-fun e!858914 () Bool)

(assert (=> b!1341315 (= e!858914 tp_is_empty!6687)))

(declare-fun b!1341316 () Bool)

(declare-fun tp!388285 () Bool)

(declare-fun tp!388286 () Bool)

(assert (=> b!1341316 (= e!858914 (and tp!388285 tp!388286))))

(assert (=> b!1340445 (= tp!388112 e!858914)))

(declare-fun b!1341318 () Bool)

(declare-fun tp!388284 () Bool)

(declare-fun tp!388282 () Bool)

(assert (=> b!1341318 (= e!858914 (and tp!388284 tp!388282))))

(declare-fun b!1341317 () Bool)

(declare-fun tp!388283 () Bool)

(assert (=> b!1341317 (= e!858914 tp!388283)))

(assert (= (and b!1340445 ((_ is ElementMatch!3685) (regTwo!7882 (regex!2371 (rule!4116 t1!34))))) b!1341315))

(assert (= (and b!1340445 ((_ is Concat!6147) (regTwo!7882 (regex!2371 (rule!4116 t1!34))))) b!1341316))

(assert (= (and b!1340445 ((_ is Star!3685) (regTwo!7882 (regex!2371 (rule!4116 t1!34))))) b!1341317))

(assert (= (and b!1340445 ((_ is Union!3685) (regTwo!7882 (regex!2371 (rule!4116 t1!34))))) b!1341318))

(declare-fun b!1341319 () Bool)

(declare-fun e!858915 () Bool)

(assert (=> b!1341319 (= e!858915 tp_is_empty!6687)))

(declare-fun b!1341320 () Bool)

(declare-fun tp!388290 () Bool)

(declare-fun tp!388291 () Bool)

(assert (=> b!1341320 (= e!858915 (and tp!388290 tp!388291))))

(assert (=> b!1340450 (= tp!388114 e!858915)))

(declare-fun b!1341322 () Bool)

(declare-fun tp!388289 () Bool)

(declare-fun tp!388287 () Bool)

(assert (=> b!1341322 (= e!858915 (and tp!388289 tp!388287))))

(declare-fun b!1341321 () Bool)

(declare-fun tp!388288 () Bool)

(assert (=> b!1341321 (= e!858915 tp!388288)))

(assert (= (and b!1340450 ((_ is ElementMatch!3685) (reg!4014 (regex!2371 (rule!4116 t2!34))))) b!1341319))

(assert (= (and b!1340450 ((_ is Concat!6147) (reg!4014 (regex!2371 (rule!4116 t2!34))))) b!1341320))

(assert (= (and b!1340450 ((_ is Star!3685) (reg!4014 (regex!2371 (rule!4116 t2!34))))) b!1341321))

(assert (= (and b!1340450 ((_ is Union!3685) (reg!4014 (regex!2371 (rule!4116 t2!34))))) b!1341322))

(declare-fun b!1341323 () Bool)

(declare-fun e!858916 () Bool)

(declare-fun tp!388292 () Bool)

(assert (=> b!1341323 (= e!858916 (and tp_is_empty!6687 tp!388292))))

(assert (=> b!1340472 (= tp!388138 e!858916)))

(assert (= (and b!1340472 ((_ is Cons!13677) (t!119422 (originalCharacters!3233 t2!34)))) b!1341323))

(declare-fun b!1341324 () Bool)

(declare-fun e!858917 () Bool)

(assert (=> b!1341324 (= e!858917 tp_is_empty!6687)))

(declare-fun b!1341325 () Bool)

(declare-fun tp!388296 () Bool)

(declare-fun tp!388297 () Bool)

(assert (=> b!1341325 (= e!858917 (and tp!388296 tp!388297))))

(assert (=> b!1340455 (= tp!388120 e!858917)))

(declare-fun b!1341327 () Bool)

(declare-fun tp!388295 () Bool)

(declare-fun tp!388293 () Bool)

(assert (=> b!1341327 (= e!858917 (and tp!388295 tp!388293))))

(declare-fun b!1341326 () Bool)

(declare-fun tp!388294 () Bool)

(assert (=> b!1341326 (= e!858917 tp!388294)))

(assert (= (and b!1340455 ((_ is ElementMatch!3685) (regOne!7883 (regex!2371 (h!19079 rules!2550))))) b!1341324))

(assert (= (and b!1340455 ((_ is Concat!6147) (regOne!7883 (regex!2371 (h!19079 rules!2550))))) b!1341325))

(assert (= (and b!1340455 ((_ is Star!3685) (regOne!7883 (regex!2371 (h!19079 rules!2550))))) b!1341326))

(assert (= (and b!1340455 ((_ is Union!3685) (regOne!7883 (regex!2371 (h!19079 rules!2550))))) b!1341327))

(declare-fun b!1341328 () Bool)

(declare-fun e!858918 () Bool)

(assert (=> b!1341328 (= e!858918 tp_is_empty!6687)))

(declare-fun b!1341329 () Bool)

(declare-fun tp!388301 () Bool)

(declare-fun tp!388302 () Bool)

(assert (=> b!1341329 (= e!858918 (and tp!388301 tp!388302))))

(assert (=> b!1340455 (= tp!388118 e!858918)))

(declare-fun b!1341331 () Bool)

(declare-fun tp!388300 () Bool)

(declare-fun tp!388298 () Bool)

(assert (=> b!1341331 (= e!858918 (and tp!388300 tp!388298))))

(declare-fun b!1341330 () Bool)

(declare-fun tp!388299 () Bool)

(assert (=> b!1341330 (= e!858918 tp!388299)))

(assert (= (and b!1340455 ((_ is ElementMatch!3685) (regTwo!7883 (regex!2371 (h!19079 rules!2550))))) b!1341328))

(assert (= (and b!1340455 ((_ is Concat!6147) (regTwo!7883 (regex!2371 (h!19079 rules!2550))))) b!1341329))

(assert (= (and b!1340455 ((_ is Star!3685) (regTwo!7883 (regex!2371 (h!19079 rules!2550))))) b!1341330))

(assert (= (and b!1340455 ((_ is Union!3685) (regTwo!7883 (regex!2371 (h!19079 rules!2550))))) b!1341331))

(declare-fun b!1341332 () Bool)

(declare-fun e!858919 () Bool)

(assert (=> b!1341332 (= e!858919 tp_is_empty!6687)))

(declare-fun b!1341333 () Bool)

(declare-fun tp!388306 () Bool)

(declare-fun tp!388307 () Bool)

(assert (=> b!1341333 (= e!858919 (and tp!388306 tp!388307))))

(assert (=> b!1340446 (= tp!388109 e!858919)))

(declare-fun b!1341335 () Bool)

(declare-fun tp!388305 () Bool)

(declare-fun tp!388303 () Bool)

(assert (=> b!1341335 (= e!858919 (and tp!388305 tp!388303))))

(declare-fun b!1341334 () Bool)

(declare-fun tp!388304 () Bool)

(assert (=> b!1341334 (= e!858919 tp!388304)))

(assert (= (and b!1340446 ((_ is ElementMatch!3685) (reg!4014 (regex!2371 (rule!4116 t1!34))))) b!1341332))

(assert (= (and b!1340446 ((_ is Concat!6147) (reg!4014 (regex!2371 (rule!4116 t1!34))))) b!1341333))

(assert (= (and b!1340446 ((_ is Star!3685) (reg!4014 (regex!2371 (rule!4116 t1!34))))) b!1341334))

(assert (= (and b!1340446 ((_ is Union!3685) (reg!4014 (regex!2371 (rule!4116 t1!34))))) b!1341335))

(declare-fun tp!388309 () Bool)

(declare-fun e!858920 () Bool)

(declare-fun b!1341336 () Bool)

(declare-fun tp!388310 () Bool)

(assert (=> b!1341336 (= e!858920 (and (inv!18019 (left!11734 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))))) tp!388309 (inv!18019 (right!12064 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))))) tp!388310))))

(declare-fun b!1341338 () Bool)

(declare-fun e!858921 () Bool)

(declare-fun tp!388308 () Bool)

(assert (=> b!1341338 (= e!858921 tp!388308)))

(declare-fun b!1341337 () Bool)

(assert (=> b!1341337 (= e!858920 (and (inv!18026 (xs!7226 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))))) e!858921))))

(assert (=> b!1340407 (= tp!388097 (and (inv!18019 (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34)))) e!858920))))

(assert (= (and b!1340407 ((_ is Node!4507) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))))) b!1341336))

(assert (= b!1341337 b!1341338))

(assert (= (and b!1340407 ((_ is Leaf!6889) (c!219539 (dynLambda!6033 (toChars!3469 (transformation!2371 (rule!4116 t2!34))) (value!77206 t2!34))))) b!1341337))

(declare-fun m!1499873 () Bool)

(assert (=> b!1341336 m!1499873))

(declare-fun m!1499875 () Bool)

(assert (=> b!1341336 m!1499875))

(declare-fun m!1499877 () Bool)

(assert (=> b!1341337 m!1499877))

(assert (=> b!1340407 m!1498841))

(declare-fun b!1341339 () Bool)

(declare-fun e!858922 () Bool)

(assert (=> b!1341339 (= e!858922 tp_is_empty!6687)))

(declare-fun b!1341340 () Bool)

(declare-fun tp!388314 () Bool)

(declare-fun tp!388315 () Bool)

(assert (=> b!1341340 (= e!858922 (and tp!388314 tp!388315))))

(assert (=> b!1340451 (= tp!388115 e!858922)))

(declare-fun b!1341342 () Bool)

(declare-fun tp!388313 () Bool)

(declare-fun tp!388311 () Bool)

(assert (=> b!1341342 (= e!858922 (and tp!388313 tp!388311))))

(declare-fun b!1341341 () Bool)

(declare-fun tp!388312 () Bool)

(assert (=> b!1341341 (= e!858922 tp!388312)))

(assert (= (and b!1340451 ((_ is ElementMatch!3685) (regOne!7883 (regex!2371 (rule!4116 t2!34))))) b!1341339))

(assert (= (and b!1340451 ((_ is Concat!6147) (regOne!7883 (regex!2371 (rule!4116 t2!34))))) b!1341340))

(assert (= (and b!1340451 ((_ is Star!3685) (regOne!7883 (regex!2371 (rule!4116 t2!34))))) b!1341341))

(assert (= (and b!1340451 ((_ is Union!3685) (regOne!7883 (regex!2371 (rule!4116 t2!34))))) b!1341342))

(declare-fun b!1341343 () Bool)

(declare-fun e!858923 () Bool)

(assert (=> b!1341343 (= e!858923 tp_is_empty!6687)))

(declare-fun b!1341344 () Bool)

(declare-fun tp!388319 () Bool)

(declare-fun tp!388320 () Bool)

(assert (=> b!1341344 (= e!858923 (and tp!388319 tp!388320))))

(assert (=> b!1340451 (= tp!388113 e!858923)))

(declare-fun b!1341346 () Bool)

(declare-fun tp!388318 () Bool)

(declare-fun tp!388316 () Bool)

(assert (=> b!1341346 (= e!858923 (and tp!388318 tp!388316))))

(declare-fun b!1341345 () Bool)

(declare-fun tp!388317 () Bool)

(assert (=> b!1341345 (= e!858923 tp!388317)))

(assert (= (and b!1340451 ((_ is ElementMatch!3685) (regTwo!7883 (regex!2371 (rule!4116 t2!34))))) b!1341343))

(assert (= (and b!1340451 ((_ is Concat!6147) (regTwo!7883 (regex!2371 (rule!4116 t2!34))))) b!1341344))

(assert (= (and b!1340451 ((_ is Star!3685) (regTwo!7883 (regex!2371 (rule!4116 t2!34))))) b!1341345))

(assert (= (and b!1340451 ((_ is Union!3685) (regTwo!7883 (regex!2371 (rule!4116 t2!34))))) b!1341346))

(declare-fun b!1341347 () Bool)

(declare-fun e!858924 () Bool)

(declare-fun tp!388321 () Bool)

(assert (=> b!1341347 (= e!858924 (and tp_is_empty!6687 tp!388321))))

(assert (=> b!1340471 (= tp!388137 e!858924)))

(assert (= (and b!1340471 ((_ is Cons!13677) (t!119422 (originalCharacters!3233 t1!34)))) b!1341347))

(declare-fun b!1341348 () Bool)

(declare-fun e!858925 () Bool)

(assert (=> b!1341348 (= e!858925 tp_is_empty!6687)))

(declare-fun b!1341349 () Bool)

(declare-fun tp!388325 () Bool)

(declare-fun tp!388326 () Bool)

(assert (=> b!1341349 (= e!858925 (and tp!388325 tp!388326))))

(assert (=> b!1340453 (= tp!388121 e!858925)))

(declare-fun b!1341351 () Bool)

(declare-fun tp!388324 () Bool)

(declare-fun tp!388322 () Bool)

(assert (=> b!1341351 (= e!858925 (and tp!388324 tp!388322))))

(declare-fun b!1341350 () Bool)

(declare-fun tp!388323 () Bool)

(assert (=> b!1341350 (= e!858925 tp!388323)))

(assert (= (and b!1340453 ((_ is ElementMatch!3685) (regOne!7882 (regex!2371 (h!19079 rules!2550))))) b!1341348))

(assert (= (and b!1340453 ((_ is Concat!6147) (regOne!7882 (regex!2371 (h!19079 rules!2550))))) b!1341349))

(assert (= (and b!1340453 ((_ is Star!3685) (regOne!7882 (regex!2371 (h!19079 rules!2550))))) b!1341350))

(assert (= (and b!1340453 ((_ is Union!3685) (regOne!7882 (regex!2371 (h!19079 rules!2550))))) b!1341351))

(declare-fun b!1341352 () Bool)

(declare-fun e!858926 () Bool)

(assert (=> b!1341352 (= e!858926 tp_is_empty!6687)))

(declare-fun b!1341353 () Bool)

(declare-fun tp!388330 () Bool)

(declare-fun tp!388331 () Bool)

(assert (=> b!1341353 (= e!858926 (and tp!388330 tp!388331))))

(assert (=> b!1340453 (= tp!388122 e!858926)))

(declare-fun b!1341355 () Bool)

(declare-fun tp!388329 () Bool)

(declare-fun tp!388327 () Bool)

(assert (=> b!1341355 (= e!858926 (and tp!388329 tp!388327))))

(declare-fun b!1341354 () Bool)

(declare-fun tp!388328 () Bool)

(assert (=> b!1341354 (= e!858926 tp!388328)))

(assert (= (and b!1340453 ((_ is ElementMatch!3685) (regTwo!7882 (regex!2371 (h!19079 rules!2550))))) b!1341352))

(assert (= (and b!1340453 ((_ is Concat!6147) (regTwo!7882 (regex!2371 (h!19079 rules!2550))))) b!1341353))

(assert (= (and b!1340453 ((_ is Star!3685) (regTwo!7882 (regex!2371 (h!19079 rules!2550))))) b!1341354))

(assert (= (and b!1340453 ((_ is Union!3685) (regTwo!7882 (regex!2371 (h!19079 rules!2550))))) b!1341355))

(declare-fun b!1341358 () Bool)

(declare-fun b_free!32643 () Bool)

(declare-fun b_next!33347 () Bool)

(assert (=> b!1341358 (= b_free!32643 (not b_next!33347))))

(declare-fun tp!388333 () Bool)

(declare-fun b_and!89683 () Bool)

(assert (=> b!1341358 (= tp!388333 b_and!89683)))

(declare-fun b_free!32645 () Bool)

(declare-fun b_next!33349 () Bool)

(assert (=> b!1341358 (= b_free!32645 (not b_next!33349))))

(declare-fun tb!70589 () Bool)

(declare-fun t!119480 () Bool)

(assert (=> (and b!1341358 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 (t!119423 rules!2550))))) (toChars!3469 (transformation!2371 (rule!4116 t1!34)))) t!119480) tb!70589))

(declare-fun result!85790 () Bool)

(assert (= result!85790 result!85758))

(assert (=> d!378040 t!119480))

(declare-fun t!119482 () Bool)

(declare-fun tb!70591 () Bool)

(assert (=> (and b!1341358 (= (toChars!3469 (transformation!2371 (h!19079 (t!119423 (t!119423 rules!2550))))) (toChars!3469 (transformation!2371 (rule!4116 t2!34)))) t!119482) tb!70591))

(declare-fun result!85792 () Bool)

(assert (= result!85792 result!85766))

(assert (=> d!378076 t!119482))

(assert (=> b!1340425 t!119480))

(assert (=> b!1340427 t!119482))

(declare-fun tp!388335 () Bool)

(declare-fun b_and!89685 () Bool)

(assert (=> b!1341358 (= tp!388335 (and (=> t!119480 result!85790) (=> t!119482 result!85792) b_and!89685))))

(declare-fun e!858929 () Bool)

(assert (=> b!1341358 (= e!858929 (and tp!388333 tp!388335))))

(declare-fun tp!388334 () Bool)

(declare-fun b!1341357 () Bool)

(declare-fun e!858927 () Bool)

(assert (=> b!1341357 (= e!858927 (and tp!388334 (inv!18012 (tag!2633 (h!19079 (t!119423 (t!119423 rules!2550))))) (inv!18015 (transformation!2371 (h!19079 (t!119423 (t!119423 rules!2550))))) e!858929))))

(declare-fun b!1341356 () Bool)

(declare-fun e!858928 () Bool)

(declare-fun tp!388332 () Bool)

(assert (=> b!1341356 (= e!858928 (and e!858927 tp!388332))))

(assert (=> b!1340464 (= tp!388131 e!858928)))

(assert (= b!1341357 b!1341358))

(assert (= b!1341356 b!1341357))

(assert (= (and b!1340464 ((_ is Cons!13678) (t!119423 (t!119423 rules!2550)))) b!1341356))

(declare-fun m!1499879 () Bool)

(assert (=> b!1341357 m!1499879))

(declare-fun m!1499881 () Bool)

(assert (=> b!1341357 m!1499881))

(declare-fun b!1341359 () Bool)

(declare-fun e!858931 () Bool)

(assert (=> b!1341359 (= e!858931 tp_is_empty!6687)))

(declare-fun b!1341360 () Bool)

(declare-fun tp!388339 () Bool)

(declare-fun tp!388340 () Bool)

(assert (=> b!1341360 (= e!858931 (and tp!388339 tp!388340))))

(assert (=> b!1340465 (= tp!388133 e!858931)))

(declare-fun b!1341362 () Bool)

(declare-fun tp!388338 () Bool)

(declare-fun tp!388336 () Bool)

(assert (=> b!1341362 (= e!858931 (and tp!388338 tp!388336))))

(declare-fun b!1341361 () Bool)

(declare-fun tp!388337 () Bool)

(assert (=> b!1341361 (= e!858931 tp!388337)))

(assert (= (and b!1340465 ((_ is ElementMatch!3685) (regex!2371 (h!19079 (t!119423 rules!2550))))) b!1341359))

(assert (= (and b!1340465 ((_ is Concat!6147) (regex!2371 (h!19079 (t!119423 rules!2550))))) b!1341360))

(assert (= (and b!1340465 ((_ is Star!3685) (regex!2371 (h!19079 (t!119423 rules!2550))))) b!1341361))

(assert (= (and b!1340465 ((_ is Union!3685) (regex!2371 (h!19079 (t!119423 rules!2550))))) b!1341362))

(declare-fun b_lambda!39635 () Bool)

(assert (= b_lambda!39625 (or b!1340168 b_lambda!39635)))

(declare-fun bs!332363 () Bool)

(declare-fun d!378494 () Bool)

(assert (= bs!332363 (and d!378494 b!1340168)))

(declare-fun res!604262 () Bool)

(declare-fun e!858932 () Bool)

(assert (=> bs!332363 (=> (not res!604262) (not e!858932))))

(assert (=> bs!332363 (= res!604262 (matchR!1678 lt!443463 res!604091))))

(assert (=> bs!332363 (= (dynLambda!6034 lambda!56135 res!604091) e!858932)))

(declare-fun b!1341363 () Bool)

(assert (=> b!1341363 (= e!858932 (isPrefix!1099 lt!443469 res!604091))))

(assert (= (and bs!332363 res!604262) b!1341363))

(declare-fun m!1499883 () Bool)

(assert (=> bs!332363 m!1499883))

(declare-fun m!1499885 () Bool)

(assert (=> b!1341363 m!1499885))

(assert (=> d!378218 d!378494))

(declare-fun b_lambda!39637 () Bool)

(assert (= b_lambda!39623 (or d!378042 b_lambda!39637)))

(declare-fun bs!332364 () Bool)

(declare-fun d!378496 () Bool)

(assert (= bs!332364 (and d!378496 d!378042)))

(assert (=> bs!332364 (= (dynLambda!6038 lambda!56144 (h!19079 rules!2550)) (regex!2371 (h!19079 rules!2550)))))

(assert (=> b!1340747 d!378496))

(check-sat (not b!1340920) (not d!378440) (not b!1341226) b_and!89685 b_and!89673 (not b!1341287) (not b!1341347) (not b!1340749) (not d!378340) b_and!89671 (not b!1341062) (not b!1341237) (not b!1341218) (not b!1341233) (not d!378338) (not b!1340628) (not b!1340730) (not b!1341301) (not b!1341329) (not d!378260) (not b!1341320) (not d!378242) (not b!1341341) (not b!1340805) (not b!1341300) (not bm!90479) (not b!1341323) (not d!378222) (not b!1341322) (not b!1340885) (not b!1341045) (not d!378296) (not d!378198) (not b!1341345) (not b!1341321) (not d!378420) (not b!1341310) (not b!1341217) (not b!1341248) (not d!378462) b_and!89619 (not d!378470) (not b!1341355) (not d!378232) (not b!1341007) (not d!378356) (not bm!90471) (not b!1341224) (not b!1340763) (not b!1341327) (not b!1341285) (not d!378164) (not b!1341296) (not d!378214) (not b!1340731) (not b!1340809) (not d!378378) (not d!378124) (not b!1341309) (not b!1341361) (not b!1341219) (not b!1341344) b_and!89683 (not d!378468) (not d!378402) (not bm!90488) (not b_next!33325) (not b!1341362) (not b!1340808) (not b!1341159) (not d!378450) (not b_lambda!39613) b_and!89615 (not b!1341360) (not b!1340869) (not d!378480) (not b!1341234) (not d!378492) (not b!1340871) (not d!378172) (not b!1341099) (not b!1341304) (not b_next!33329) (not b!1341077) (not b!1341340) (not b!1341053) (not b!1341338) (not b!1340918) (not d!378436) (not b!1341044) (not b!1341297) (not b!1341298) (not b!1341316) (not d!378454) (not b!1341009) (not b!1340982) (not d!378444) (not b_next!33341) (not d!378474) (not b!1341084) (not d!378332) (not b!1340777) (not b!1340752) (not b_lambda!39621) (not d!378330) (not b!1341282) (not b!1340622) (not bm!90466) (not b!1341086) (not b!1341286) (not d!378412) (not b!1340751) (not b!1341342) (not b!1341325) (not b!1341064) (not b!1341227) (not d!378478) (not d!378226) (not b!1341313) (not bs!332363) (not b_lambda!39635) (not b!1341093) (not d!378456) (not b!1341090) (not b!1341308) (not b!1341350) (not d!378280) (not b!1341223) (not b!1340806) tp_is_empty!6687 (not d!378344) (not b!1341249) (not b!1340624) (not b!1340782) b_and!89677 (not b!1341204) (not b!1340980) (not d!378374) (not b!1340747) (not bm!90476) (not d!378334) (not b_lambda!39619) (not b!1341357) (not b!1341047) (not b!1341330) (not d!378100) (not bm!90486) b_and!89611 (not b_lambda!39615) (not b!1341354) (not b!1340626) (not d!378472) (not b!1341356) (not d!378324) (not b!1340917) (not d!378360) (not b!1341277) (not b!1341302) (not b!1340991) (not b!1341314) (not b!1341078) (not b!1340862) (not b!1341331) (not d!378234) (not b!1340609) (not b!1340675) (not b!1341335) (not b!1341247) (not d!378298) (not b!1340566) (not b!1340630) (not b!1341363) (not b!1340364) (not b!1340804) (not b!1340984) (not b!1340563) (not d!378486) (not d!378484) (not b_lambda!39637) (not b!1340987) (not d!378452) (not b!1340565) (not b!1341337) (not b!1340919) (not b!1340722) (not b!1340813) (not d!378432) (not d!378348) (not b!1341326) (not b!1341346) (not b!1341312) (not b!1340884) (not d!378188) (not d!378336) (not b!1340726) b_and!89669 (not d!378240) (not b!1341349) (not b_next!33331) (not b!1340727) (not d!378102) (not d!378168) (not b!1340979) (not d!378166) (not b!1341351) (not d!378224) (not b!1341305) (not d!378458) (not b!1341279) (not d!378304) (not b!1340407) (not b!1341054) (not b!1341103) (not b!1340886) (not b!1340723) (not b_next!33323) (not d!378136) (not b!1341040) (not b!1341097) (not b!1341306) (not d!378438) (not d!378228) (not b_next!33327) (not d!378210) (not b!1341038) (not b_next!33339) (not b!1340994) (not b_next!33349) (not b!1341039) (not b!1340816) (not d!378220) (not d!378196) (not b!1341046) (not b!1341281) (not d!378326) (not b!1341205) (not bm!90465) (not b!1341220) (not d!378182) (not b_lambda!39617) (not b!1340562) (not b!1341333) (not b_next!33333) (not b!1341317) (not bm!90475) b_and!89675 (not b!1341353) (not b!1340765) (not b!1341318) (not b!1340815) (not b_next!33347) (not b!1341283) (not b!1341334) (not b!1340728) (not b!1341336) (not b!1341235) (not b!1340814))
(check-sat b_and!89671 b_and!89619 b_and!89683 (not b_next!33329) (not b_next!33341) b_and!89677 b_and!89611 (not b_next!33323) (not b_next!33349) (not b_next!33347) b_and!89673 b_and!89685 (not b_next!33325) b_and!89615 b_and!89669 (not b_next!33331) (not b_next!33327) (not b_next!33339) (not b_next!33333) b_and!89675)
