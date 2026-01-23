; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!372736 () Bool)

(assert start!372736)

(declare-fun b!3962301 () Bool)

(declare-fun b_free!109437 () Bool)

(declare-fun b_next!110141 () Bool)

(assert (=> b!3962301 (= b_free!109437 (not b_next!110141))))

(declare-fun tp!1207746 () Bool)

(declare-fun b_and!304267 () Bool)

(assert (=> b!3962301 (= tp!1207746 b_and!304267)))

(declare-fun b_free!109439 () Bool)

(declare-fun b_next!110143 () Bool)

(assert (=> b!3962301 (= b_free!109439 (not b_next!110143))))

(declare-fun tp!1207749 () Bool)

(declare-fun b_and!304269 () Bool)

(assert (=> b!3962301 (= tp!1207749 b_and!304269)))

(declare-fun b!3962316 () Bool)

(declare-fun b_free!109441 () Bool)

(declare-fun b_next!110145 () Bool)

(assert (=> b!3962316 (= b_free!109441 (not b_next!110145))))

(declare-fun tp!1207744 () Bool)

(declare-fun b_and!304271 () Bool)

(assert (=> b!3962316 (= tp!1207744 b_and!304271)))

(declare-fun b_free!109443 () Bool)

(declare-fun b_next!110147 () Bool)

(assert (=> b!3962316 (= b_free!109443 (not b_next!110147))))

(declare-fun tp!1207738 () Bool)

(declare-fun b_and!304273 () Bool)

(assert (=> b!3962316 (= tp!1207738 b_and!304273)))

(declare-fun b!3962332 () Bool)

(declare-fun b_free!109445 () Bool)

(declare-fun b_next!110149 () Bool)

(assert (=> b!3962332 (= b_free!109445 (not b_next!110149))))

(declare-fun tp!1207747 () Bool)

(declare-fun b_and!304275 () Bool)

(assert (=> b!3962332 (= tp!1207747 b_and!304275)))

(declare-fun b_free!109447 () Bool)

(declare-fun b_next!110151 () Bool)

(assert (=> b!3962332 (= b_free!109447 (not b_next!110151))))

(declare-fun tp!1207743 () Bool)

(declare-fun b_and!304277 () Bool)

(assert (=> b!3962332 (= tp!1207743 b_and!304277)))

(declare-fun b!3962297 () Bool)

(declare-fun e!2453713 () Bool)

(declare-fun e!2453698 () Bool)

(assert (=> b!3962297 (= e!2453713 e!2453698)))

(declare-fun res!1603674 () Bool)

(assert (=> b!3962297 (=> res!1603674 e!2453698)))

(declare-datatypes ((C!23244 0))(
  ( (C!23245 (val!13716 Int)) )
))
(declare-datatypes ((List!42347 0))(
  ( (Nil!42223) (Cons!42223 (h!47643 C!23244) (t!330010 List!42347)) )
))
(declare-fun lt!1386461 () List!42347)

(declare-fun prefix!426 () List!42347)

(assert (=> b!3962297 (= res!1603674 (not (= lt!1386461 prefix!426)))))

(declare-fun lt!1386439 () List!42347)

(declare-fun lt!1386467 () List!42347)

(declare-fun ++!11005 (List!42347 List!42347) List!42347)

(assert (=> b!3962297 (= lt!1386461 (++!11005 lt!1386439 lt!1386467))))

(declare-fun getSuffix!2164 (List!42347 List!42347) List!42347)

(assert (=> b!3962297 (= lt!1386467 (getSuffix!2164 prefix!426 lt!1386439))))

(declare-fun b!3962298 () Bool)

(declare-fun e!2453711 () Bool)

(declare-fun tp_is_empty!20029 () Bool)

(declare-fun tp!1207735 () Bool)

(assert (=> b!3962298 (= e!2453711 (and tp_is_empty!20029 tp!1207735))))

(declare-fun e!2453728 () Bool)

(declare-fun e!2453729 () Bool)

(declare-datatypes ((IArray!25675 0))(
  ( (IArray!25676 (innerList!12895 List!42347)) )
))
(declare-datatypes ((Conc!12835 0))(
  ( (Node!12835 (left!32029 Conc!12835) (right!32359 Conc!12835) (csize!25900 Int) (cheight!13046 Int)) (Leaf!19854 (xs!16141 IArray!25675) (csize!25901 Int)) (Empty!12835) )
))
(declare-datatypes ((BalanceConc!25264 0))(
  ( (BalanceConc!25265 (c!687504 Conc!12835)) )
))
(declare-datatypes ((List!42348 0))(
  ( (Nil!42224) (Cons!42224 (h!47644 (_ BitVec 16)) (t!330011 List!42348)) )
))
(declare-datatypes ((TokenValue!6854 0))(
  ( (FloatLiteralValue!13708 (text!48423 List!42348)) (TokenValueExt!6853 (__x!25925 Int)) (Broken!34270 (value!209392 List!42348)) (Object!6977) (End!6854) (Def!6854) (Underscore!6854) (Match!6854) (Else!6854) (Error!6854) (Case!6854) (If!6854) (Extends!6854) (Abstract!6854) (Class!6854) (Val!6854) (DelimiterValue!13708 (del!6914 List!42348)) (KeywordValue!6860 (value!209393 List!42348)) (CommentValue!13708 (value!209394 List!42348)) (WhitespaceValue!13708 (value!209395 List!42348)) (IndentationValue!6854 (value!209396 List!42348)) (String!47987) (Int32!6854) (Broken!34271 (value!209397 List!42348)) (Boolean!6855) (Unit!60774) (OperatorValue!6857 (op!6914 List!42348)) (IdentifierValue!13708 (value!209398 List!42348)) (IdentifierValue!13709 (value!209399 List!42348)) (WhitespaceValue!13709 (value!209400 List!42348)) (True!13708) (False!13708) (Broken!34272 (value!209401 List!42348)) (Broken!34273 (value!209402 List!42348)) (True!13709) (RightBrace!6854) (RightBracket!6854) (Colon!6854) (Null!6854) (Comma!6854) (LeftBracket!6854) (False!13709) (LeftBrace!6854) (ImaginaryLiteralValue!6854 (text!48424 List!42348)) (StringLiteralValue!20562 (value!209403 List!42348)) (EOFValue!6854 (value!209404 List!42348)) (IdentValue!6854 (value!209405 List!42348)) (DelimiterValue!13709 (value!209406 List!42348)) (DedentValue!6854 (value!209407 List!42348)) (NewLineValue!6854 (value!209408 List!42348)) (IntegerValue!20562 (value!209409 (_ BitVec 32)) (text!48425 List!42348)) (IntegerValue!20563 (value!209410 Int) (text!48426 List!42348)) (Times!6854) (Or!6854) (Equal!6854) (Minus!6854) (Broken!34274 (value!209411 List!42348)) (And!6854) (Div!6854) (LessEqual!6854) (Mod!6854) (Concat!18383) (Not!6854) (Plus!6854) (SpaceValue!6854 (value!209412 List!42348)) (IntegerValue!20564 (value!209413 Int) (text!48427 List!42348)) (StringLiteralValue!20563 (text!48428 List!42348)) (FloatLiteralValue!13709 (text!48429 List!42348)) (BytesLiteralValue!6854 (value!209414 List!42348)) (CommentValue!13709 (value!209415 List!42348)) (StringLiteralValue!20564 (value!209416 List!42348)) (ErrorTokenValue!6854 (msg!6915 List!42348)) )
))
(declare-datatypes ((Regex!11529 0))(
  ( (ElementMatch!11529 (c!687505 C!23244)) (Concat!18384 (regOne!23570 Regex!11529) (regTwo!23570 Regex!11529)) (EmptyExpr!11529) (Star!11529 (reg!11858 Regex!11529)) (EmptyLang!11529) (Union!11529 (regOne!23571 Regex!11529) (regTwo!23571 Regex!11529)) )
))
(declare-datatypes ((String!47988 0))(
  ( (String!47989 (value!209417 String)) )
))
(declare-datatypes ((TokenValueInjection!13136 0))(
  ( (TokenValueInjection!13137 (toValue!9104 Int) (toChars!8963 Int)) )
))
(declare-datatypes ((Rule!13048 0))(
  ( (Rule!13049 (regex!6624 Regex!11529) (tag!7484 String!47988) (isSeparator!6624 Bool) (transformation!6624 TokenValueInjection!13136)) )
))
(declare-datatypes ((List!42349 0))(
  ( (Nil!42225) (Cons!42225 (h!47645 Rule!13048) (t!330012 List!42349)) )
))
(declare-fun rules!2768 () List!42349)

(declare-fun b!3962299 () Bool)

(declare-fun tp!1207736 () Bool)

(declare-fun inv!56449 (String!47988) Bool)

(declare-fun inv!56452 (TokenValueInjection!13136) Bool)

(assert (=> b!3962299 (= e!2453728 (and tp!1207736 (inv!56449 (tag!7484 (h!47645 rules!2768))) (inv!56452 (transformation!6624 (h!47645 rules!2768))) e!2453729))))

(declare-fun b!3962300 () Bool)

(declare-fun e!2453701 () Bool)

(declare-fun tp!1207750 () Bool)

(assert (=> b!3962300 (= e!2453701 (and e!2453728 tp!1207750))))

(declare-fun e!2453715 () Bool)

(assert (=> b!3962301 (= e!2453715 (and tp!1207746 tp!1207749))))

(declare-fun b!3962302 () Bool)

(declare-fun e!2453709 () Bool)

(declare-fun e!2453717 () Bool)

(assert (=> b!3962302 (= e!2453709 e!2453717)))

(declare-fun res!1603671 () Bool)

(assert (=> b!3962302 (=> (not res!1603671) (not e!2453717))))

(declare-fun suffixResult!91 () List!42347)

(declare-datatypes ((Token!12386 0))(
  ( (Token!12387 (value!209418 TokenValue!6854) (rule!9606 Rule!13048) (size!31614 Int) (originalCharacters!7224 List!42347)) )
))
(declare-datatypes ((List!42350 0))(
  ( (Nil!42226) (Cons!42226 (h!47646 Token!12386) (t!330013 List!42350)) )
))
(declare-fun lt!1386464 () List!42350)

(declare-datatypes ((tuple2!41518 0))(
  ( (tuple2!41519 (_1!23893 List!42350) (_2!23893 List!42347)) )
))
(declare-fun lt!1386458 () tuple2!41518)

(assert (=> b!3962302 (= res!1603671 (= lt!1386458 (tuple2!41519 lt!1386464 suffixResult!91)))))

(declare-datatypes ((LexerInterface!6213 0))(
  ( (LexerInterfaceExt!6210 (__x!25926 Int)) (Lexer!6211) )
))
(declare-fun thiss!20629 () LexerInterface!6213)

(declare-fun lt!1386446 () List!42347)

(declare-fun lexList!1981 (LexerInterface!6213 List!42349 List!42347) tuple2!41518)

(assert (=> b!3962302 (= lt!1386458 (lexList!1981 thiss!20629 rules!2768 lt!1386446))))

(declare-fun prefixTokens!80 () List!42350)

(declare-fun suffixTokens!72 () List!42350)

(declare-fun ++!11006 (List!42350 List!42350) List!42350)

(assert (=> b!3962302 (= lt!1386464 (++!11006 prefixTokens!80 suffixTokens!72))))

(declare-fun suffix!1176 () List!42347)

(assert (=> b!3962302 (= lt!1386446 (++!11005 prefix!426 suffix!1176))))

(declare-fun b!3962303 () Bool)

(declare-fun res!1603677 () Bool)

(assert (=> b!3962303 (=> (not res!1603677) (not e!2453709))))

(declare-fun isEmpty!25256 (List!42350) Bool)

(assert (=> b!3962303 (= res!1603677 (not (isEmpty!25256 prefixTokens!80)))))

(declare-fun b!3962304 () Bool)

(declare-fun e!2453706 () Bool)

(declare-fun e!2453702 () Bool)

(assert (=> b!3962304 (= e!2453706 (not e!2453702))))

(declare-fun res!1603682 () Bool)

(assert (=> b!3962304 (=> res!1603682 e!2453702)))

(declare-fun lt!1386465 () List!42347)

(assert (=> b!3962304 (= res!1603682 (not (= lt!1386465 lt!1386446)))))

(declare-datatypes ((tuple2!41520 0))(
  ( (tuple2!41521 (_1!23894 Token!12386) (_2!23894 List!42347)) )
))
(declare-datatypes ((Option!9044 0))(
  ( (None!9043) (Some!9043 (v!39389 tuple2!41520)) )
))
(declare-fun lt!1386463 () Option!9044)

(declare-fun lt!1386454 () tuple2!41518)

(assert (=> b!3962304 (= lt!1386454 (lexList!1981 thiss!20629 rules!2768 (_2!23894 (v!39389 lt!1386463))))))

(declare-fun lt!1386451 () Int)

(declare-fun lt!1386444 () List!42347)

(declare-fun lt!1386447 () TokenValue!6854)

(assert (=> b!3962304 (and (= (size!31614 (_1!23894 (v!39389 lt!1386463))) lt!1386451) (= (originalCharacters!7224 (_1!23894 (v!39389 lt!1386463))) lt!1386439) (= (v!39389 lt!1386463) (tuple2!41521 (Token!12387 lt!1386447 (rule!9606 (_1!23894 (v!39389 lt!1386463))) lt!1386451 lt!1386439) lt!1386444)))))

(declare-fun size!31615 (List!42347) Int)

(assert (=> b!3962304 (= lt!1386451 (size!31615 lt!1386439))))

(declare-fun e!2453726 () Bool)

(assert (=> b!3962304 e!2453726))

(declare-fun res!1603678 () Bool)

(assert (=> b!3962304 (=> (not res!1603678) (not e!2453726))))

(assert (=> b!3962304 (= res!1603678 (= (value!209418 (_1!23894 (v!39389 lt!1386463))) lt!1386447))))

(declare-fun apply!9855 (TokenValueInjection!13136 BalanceConc!25264) TokenValue!6854)

(declare-fun seqFromList!4883 (List!42347) BalanceConc!25264)

(assert (=> b!3962304 (= lt!1386447 (apply!9855 (transformation!6624 (rule!9606 (_1!23894 (v!39389 lt!1386463)))) (seqFromList!4883 lt!1386439)))))

(assert (=> b!3962304 (= (_2!23894 (v!39389 lt!1386463)) lt!1386444)))

(declare-datatypes ((Unit!60775 0))(
  ( (Unit!60776) )
))
(declare-fun lt!1386448 () Unit!60775)

(declare-fun lemmaSamePrefixThenSameSuffix!1922 (List!42347 List!42347 List!42347 List!42347 List!42347) Unit!60775)

(assert (=> b!3962304 (= lt!1386448 (lemmaSamePrefixThenSameSuffix!1922 lt!1386439 (_2!23894 (v!39389 lt!1386463)) lt!1386439 lt!1386444 lt!1386446))))

(assert (=> b!3962304 (= lt!1386444 (getSuffix!2164 lt!1386446 lt!1386439))))

(declare-fun isPrefix!3713 (List!42347 List!42347) Bool)

(assert (=> b!3962304 (isPrefix!3713 lt!1386439 lt!1386465)))

(assert (=> b!3962304 (= lt!1386465 (++!11005 lt!1386439 (_2!23894 (v!39389 lt!1386463))))))

(declare-fun lt!1386450 () Unit!60775)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2572 (List!42347 List!42347) Unit!60775)

(assert (=> b!3962304 (= lt!1386450 (lemmaConcatTwoListThenFirstIsPrefix!2572 lt!1386439 (_2!23894 (v!39389 lt!1386463))))))

(declare-fun list!15672 (BalanceConc!25264) List!42347)

(declare-fun charsOf!4442 (Token!12386) BalanceConc!25264)

(assert (=> b!3962304 (= lt!1386439 (list!15672 (charsOf!4442 (_1!23894 (v!39389 lt!1386463)))))))

(declare-fun ruleValid!2566 (LexerInterface!6213 Rule!13048) Bool)

(assert (=> b!3962304 (ruleValid!2566 thiss!20629 (rule!9606 (_1!23894 (v!39389 lt!1386463))))))

(declare-fun lt!1386443 () Unit!60775)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1642 (LexerInterface!6213 Rule!13048 List!42349) Unit!60775)

(assert (=> b!3962304 (= lt!1386443 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1642 thiss!20629 (rule!9606 (_1!23894 (v!39389 lt!1386463))) rules!2768))))

(declare-fun lt!1386471 () Unit!60775)

(declare-fun lemmaCharactersSize!1277 (Token!12386) Unit!60775)

(assert (=> b!3962304 (= lt!1386471 (lemmaCharactersSize!1277 (_1!23894 (v!39389 lt!1386463))))))

(declare-fun res!1603675 () Bool)

(assert (=> start!372736 (=> (not res!1603675) (not e!2453709))))

(get-info :version)

(assert (=> start!372736 (= res!1603675 ((_ is Lexer!6211) thiss!20629))))

(assert (=> start!372736 e!2453709))

(assert (=> start!372736 e!2453711))

(assert (=> start!372736 true))

(declare-fun e!2453718 () Bool)

(assert (=> start!372736 e!2453718))

(assert (=> start!372736 e!2453701))

(declare-fun e!2453714 () Bool)

(assert (=> start!372736 e!2453714))

(declare-fun e!2453725 () Bool)

(assert (=> start!372736 e!2453725))

(declare-fun e!2453708 () Bool)

(assert (=> start!372736 e!2453708))

(declare-fun e!2453699 () Bool)

(declare-fun b!3962305 () Bool)

(declare-fun e!2453710 () Bool)

(declare-fun tp!1207740 () Bool)

(declare-fun inv!21 (TokenValue!6854) Bool)

(assert (=> b!3962305 (= e!2453699 (and (inv!21 (value!209418 (h!47646 suffixTokens!72))) e!2453710 tp!1207740))))

(declare-fun b!3962306 () Bool)

(declare-fun e!2453722 () Unit!60775)

(declare-fun Unit!60777 () Unit!60775)

(assert (=> b!3962306 (= e!2453722 Unit!60777)))

(declare-fun lt!1386442 () Unit!60775)

(assert (=> b!3962306 (= lt!1386442 (lemmaConcatTwoListThenFirstIsPrefix!2572 prefix!426 suffix!1176))))

(assert (=> b!3962306 (isPrefix!3713 prefix!426 lt!1386446)))

(declare-fun lt!1386455 () Unit!60775)

(declare-fun lemmaIsPrefixSameLengthThenSameList!835 (List!42347 List!42347 List!42347) Unit!60775)

(assert (=> b!3962306 (= lt!1386455 (lemmaIsPrefixSameLengthThenSameList!835 lt!1386439 prefix!426 lt!1386446))))

(assert (=> b!3962306 (= lt!1386439 prefix!426)))

(declare-fun lt!1386445 () Unit!60775)

(assert (=> b!3962306 (= lt!1386445 (lemmaSamePrefixThenSameSuffix!1922 lt!1386439 (_2!23894 (v!39389 lt!1386463)) prefix!426 suffix!1176 lt!1386446))))

(assert (=> b!3962306 false))

(declare-fun b!3962307 () Bool)

(declare-fun c!687501 () Bool)

(declare-fun lt!1386466 () List!42350)

(assert (=> b!3962307 (= c!687501 (isEmpty!25256 lt!1386466))))

(declare-fun tail!6165 (List!42350) List!42350)

(assert (=> b!3962307 (= lt!1386466 (tail!6165 prefixTokens!80))))

(declare-fun e!2453716 () Unit!60775)

(declare-fun e!2453700 () Unit!60775)

(assert (=> b!3962307 (= e!2453716 e!2453700)))

(declare-fun b!3962308 () Bool)

(declare-fun e!2453719 () Bool)

(assert (=> b!3962308 (= e!2453719 false)))

(declare-fun b!3962309 () Bool)

(declare-fun e!2453704 () Bool)

(declare-fun tp!1207745 () Bool)

(declare-fun e!2453705 () Bool)

(assert (=> b!3962309 (= e!2453704 (and tp!1207745 (inv!56449 (tag!7484 (rule!9606 (h!47646 prefixTokens!80)))) (inv!56452 (transformation!6624 (rule!9606 (h!47646 prefixTokens!80)))) e!2453705))))

(declare-fun b!3962310 () Bool)

(assert (=> b!3962310 (= e!2453726 (= (size!31614 (_1!23894 (v!39389 lt!1386463))) (size!31615 (originalCharacters!7224 (_1!23894 (v!39389 lt!1386463))))))))

(declare-fun b!3962311 () Bool)

(declare-fun e!2453707 () Bool)

(declare-fun e!2453727 () Bool)

(assert (=> b!3962311 (= e!2453707 e!2453727)))

(declare-fun res!1603679 () Bool)

(assert (=> b!3962311 (=> res!1603679 e!2453727)))

(declare-fun lt!1386469 () List!42347)

(declare-fun lt!1386440 () List!42347)

(assert (=> b!3962311 (= res!1603679 (or (not (= lt!1386446 lt!1386440)) (not (= lt!1386446 lt!1386469)) (not (= lt!1386465 lt!1386469))))))

(assert (=> b!3962311 (= lt!1386440 lt!1386469)))

(declare-fun lt!1386433 () List!42347)

(assert (=> b!3962311 (= lt!1386469 (++!11005 lt!1386439 lt!1386433))))

(assert (=> b!3962311 (= lt!1386433 (++!11005 lt!1386467 suffix!1176))))

(declare-fun lt!1386456 () Unit!60775)

(declare-fun lemmaConcatAssociativity!2358 (List!42347 List!42347 List!42347) Unit!60775)

(assert (=> b!3962311 (= lt!1386456 (lemmaConcatAssociativity!2358 lt!1386439 lt!1386467 suffix!1176))))

(declare-fun b!3962312 () Bool)

(declare-fun e!2453723 () Bool)

(assert (=> b!3962312 (= e!2453717 e!2453723)))

(declare-fun res!1603665 () Bool)

(assert (=> b!3962312 (=> (not res!1603665) (not e!2453723))))

(declare-fun lt!1386436 () tuple2!41518)

(assert (=> b!3962312 (= res!1603665 (= (lexList!1981 thiss!20629 rules!2768 suffix!1176) lt!1386436))))

(assert (=> b!3962312 (= lt!1386436 (tuple2!41519 suffixTokens!72 suffixResult!91))))

(declare-fun b!3962313 () Bool)

(declare-fun res!1603681 () Bool)

(assert (=> b!3962313 (=> res!1603681 e!2453702)))

(assert (=> b!3962313 (= res!1603681 (not (= lt!1386458 (tuple2!41519 (++!11006 (Cons!42226 (_1!23894 (v!39389 lt!1386463)) Nil!42226) (_1!23893 lt!1386454)) (_2!23893 lt!1386454)))))))

(declare-fun b!3962314 () Bool)

(declare-fun res!1603672 () Bool)

(assert (=> b!3962314 (=> res!1603672 e!2453702)))

(assert (=> b!3962314 (= res!1603672 (or (not (= lt!1386454 (tuple2!41519 (_1!23893 lt!1386454) (_2!23893 lt!1386454)))) (= (_2!23894 (v!39389 lt!1386463)) suffix!1176)))))

(declare-fun b!3962315 () Bool)

(declare-fun e!2453724 () Bool)

(assert (=> b!3962315 (= e!2453702 e!2453724)))

(declare-fun res!1603669 () Bool)

(assert (=> b!3962315 (=> res!1603669 e!2453724)))

(declare-fun lt!1386437 () Int)

(declare-fun lt!1386470 () Int)

(assert (=> b!3962315 (= res!1603669 (<= lt!1386437 lt!1386470))))

(declare-fun lt!1386462 () Unit!60775)

(assert (=> b!3962315 (= lt!1386462 e!2453722)))

(declare-fun c!687500 () Bool)

(assert (=> b!3962315 (= c!687500 (= lt!1386437 lt!1386470))))

(declare-fun lt!1386452 () Unit!60775)

(declare-fun e!2453712 () Unit!60775)

(assert (=> b!3962315 (= lt!1386452 e!2453712)))

(declare-fun c!687503 () Bool)

(assert (=> b!3962315 (= c!687503 (< lt!1386437 lt!1386470))))

(assert (=> b!3962315 (= lt!1386470 (size!31615 suffix!1176))))

(assert (=> b!3962315 (= lt!1386437 (size!31615 (_2!23894 (v!39389 lt!1386463))))))

(assert (=> b!3962316 (= e!2453729 (and tp!1207744 tp!1207738))))

(declare-fun b!3962317 () Bool)

(declare-fun Unit!60778 () Unit!60775)

(assert (=> b!3962317 (= e!2453700 Unit!60778)))

(declare-fun lt!1386459 () Unit!60775)

(declare-fun lt!1386434 () tuple2!41520)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!618 (List!42347 List!42347 List!42347 List!42347) Unit!60775)

(assert (=> b!3962317 (= lt!1386459 (lemmaConcatSameAndSameSizesThenSameLists!618 lt!1386439 (_2!23894 (v!39389 lt!1386463)) lt!1386439 (_2!23894 lt!1386434)))))

(assert (=> b!3962317 (= (_2!23894 (v!39389 lt!1386463)) (_2!23894 lt!1386434))))

(declare-fun lt!1386449 () Unit!60775)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!152 (LexerInterface!6213 List!42349 List!42347 List!42347 List!42350 List!42347) Unit!60775)

(assert (=> b!3962317 (= lt!1386449 (lemmaLexWithSmallerInputCannotProduceSameResults!152 thiss!20629 rules!2768 suffix!1176 (_2!23894 lt!1386434) suffixTokens!72 suffixResult!91))))

(declare-fun res!1603680 () Bool)

(declare-fun call!285436 () tuple2!41518)

(assert (=> b!3962317 (= res!1603680 (not (= call!285436 lt!1386436)))))

(assert (=> b!3962317 (=> (not res!1603680) (not e!2453719))))

(assert (=> b!3962317 e!2453719))

(declare-fun b!3962318 () Bool)

(declare-fun Unit!60779 () Unit!60775)

(assert (=> b!3962318 (= e!2453700 Unit!60779)))

(declare-fun lt!1386468 () Unit!60775)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!152 (LexerInterface!6213 List!42349 List!42347 List!42347 List!42350 List!42347 List!42350) Unit!60775)

(assert (=> b!3962318 (= lt!1386468 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!152 thiss!20629 rules!2768 suffix!1176 (_2!23894 lt!1386434) suffixTokens!72 suffixResult!91 lt!1386466))))

(declare-fun res!1603666 () Bool)

(assert (=> b!3962318 (= res!1603666 (not (= call!285436 (tuple2!41519 (++!11006 lt!1386466 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2453730 () Bool)

(assert (=> b!3962318 (=> (not res!1603666) (not e!2453730))))

(assert (=> b!3962318 e!2453730))

(declare-fun b!3962319 () Bool)

(assert (=> b!3962319 (= e!2453724 e!2453713)))

(declare-fun res!1603684 () Bool)

(assert (=> b!3962319 (=> res!1603684 e!2453713)))

(assert (=> b!3962319 (= res!1603684 (>= lt!1386451 (size!31615 prefix!426)))))

(assert (=> b!3962319 (isPrefix!3713 lt!1386439 prefix!426)))

(declare-fun lt!1386460 () Unit!60775)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!309 (List!42347 List!42347 List!42347) Unit!60775)

(assert (=> b!3962319 (= lt!1386460 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!309 prefix!426 lt!1386439 lt!1386446))))

(assert (=> b!3962319 (isPrefix!3713 prefix!426 lt!1386446)))

(declare-fun lt!1386435 () Unit!60775)

(assert (=> b!3962319 (= lt!1386435 (lemmaConcatTwoListThenFirstIsPrefix!2572 prefix!426 suffix!1176))))

(declare-fun b!3962320 () Bool)

(declare-fun res!1603676 () Bool)

(assert (=> b!3962320 (=> (not res!1603676) (not e!2453709))))

(declare-fun isEmpty!25257 (List!42349) Bool)

(assert (=> b!3962320 (= res!1603676 (not (isEmpty!25257 rules!2768)))))

(declare-fun b!3962321 () Bool)

(declare-fun res!1603683 () Bool)

(assert (=> b!3962321 (=> (not res!1603683) (not e!2453709))))

(declare-fun rulesInvariant!5556 (LexerInterface!6213 List!42349) Bool)

(assert (=> b!3962321 (= res!1603683 (rulesInvariant!5556 thiss!20629 rules!2768))))

(declare-fun b!3962322 () Bool)

(assert (=> b!3962322 (= e!2453723 e!2453706)))

(declare-fun res!1603673 () Bool)

(assert (=> b!3962322 (=> (not res!1603673) (not e!2453706))))

(assert (=> b!3962322 (= res!1603673 ((_ is Some!9043) lt!1386463))))

(declare-fun maxPrefix!3517 (LexerInterface!6213 List!42349 List!42347) Option!9044)

(assert (=> b!3962322 (= lt!1386463 (maxPrefix!3517 thiss!20629 rules!2768 lt!1386446))))

(declare-fun b!3962323 () Bool)

(declare-fun res!1603670 () Bool)

(assert (=> b!3962323 (=> (not res!1603670) (not e!2453709))))

(declare-fun isEmpty!25258 (List!42347) Bool)

(assert (=> b!3962323 (= res!1603670 (not (isEmpty!25258 prefix!426)))))

(declare-fun tp!1207734 () Bool)

(declare-fun b!3962324 () Bool)

(declare-fun inv!56453 (Token!12386) Bool)

(assert (=> b!3962324 (= e!2453725 (and (inv!56453 (h!47646 suffixTokens!72)) e!2453699 tp!1207734))))

(declare-fun b!3962325 () Bool)

(declare-fun Unit!60780 () Unit!60775)

(assert (=> b!3962325 (= e!2453722 Unit!60780)))

(declare-fun b!3962326 () Bool)

(assert (=> b!3962326 (= e!2453727 (isPrefix!3713 lt!1386439 lt!1386446))))

(assert (=> b!3962326 (isPrefix!3713 lt!1386439 lt!1386469)))

(declare-fun lt!1386457 () Unit!60775)

(assert (=> b!3962326 (= lt!1386457 (lemmaConcatTwoListThenFirstIsPrefix!2572 lt!1386439 lt!1386433))))

(declare-fun b!3962327 () Bool)

(declare-fun e!2453703 () Bool)

(declare-fun tp!1207741 () Bool)

(assert (=> b!3962327 (= e!2453703 (and (inv!21 (value!209418 (h!47646 prefixTokens!80))) e!2453704 tp!1207741))))

(declare-fun b!3962328 () Bool)

(declare-fun Unit!60781 () Unit!60775)

(assert (=> b!3962328 (= e!2453716 Unit!60781)))

(declare-fun tp!1207737 () Bool)

(declare-fun b!3962329 () Bool)

(assert (=> b!3962329 (= e!2453710 (and tp!1207737 (inv!56449 (tag!7484 (rule!9606 (h!47646 suffixTokens!72)))) (inv!56452 (transformation!6624 (rule!9606 (h!47646 suffixTokens!72)))) e!2453715))))

(declare-fun b!3962330 () Bool)

(assert (=> b!3962330 (= e!2453698 e!2453707)))

(declare-fun res!1603667 () Bool)

(assert (=> b!3962330 (=> res!1603667 e!2453707)))

(assert (=> b!3962330 (= res!1603667 (or (not (= lt!1386440 lt!1386446)) (not (= lt!1386440 lt!1386465))))))

(assert (=> b!3962330 (= lt!1386440 (++!11005 lt!1386461 suffix!1176))))

(declare-fun b!3962331 () Bool)

(assert (=> b!3962331 (= e!2453730 false)))

(declare-fun bm!285431 () Bool)

(assert (=> bm!285431 (= call!285436 (lexList!1981 thiss!20629 rules!2768 (_2!23894 lt!1386434)))))

(assert (=> b!3962332 (= e!2453705 (and tp!1207747 tp!1207743))))

(declare-fun b!3962333 () Bool)

(declare-fun tp!1207748 () Bool)

(assert (=> b!3962333 (= e!2453718 (and tp_is_empty!20029 tp!1207748))))

(declare-fun b!3962334 () Bool)

(declare-fun Unit!60782 () Unit!60775)

(assert (=> b!3962334 (= e!2453712 Unit!60782)))

(declare-fun b!3962335 () Bool)

(declare-fun tp!1207739 () Bool)

(assert (=> b!3962335 (= e!2453708 (and tp_is_empty!20029 tp!1207739))))

(declare-fun b!3962336 () Bool)

(declare-fun res!1603668 () Bool)

(assert (=> b!3962336 (=> res!1603668 e!2453724)))

(declare-fun head!8433 (List!42350) Token!12386)

(assert (=> b!3962336 (= res!1603668 (not (= (head!8433 prefixTokens!80) (_1!23894 (v!39389 lt!1386463)))))))

(declare-fun b!3962337 () Bool)

(declare-fun tp!1207742 () Bool)

(assert (=> b!3962337 (= e!2453714 (and (inv!56453 (h!47646 prefixTokens!80)) e!2453703 tp!1207742))))

(declare-fun b!3962338 () Bool)

(declare-fun Unit!60783 () Unit!60775)

(assert (=> b!3962338 (= e!2453712 Unit!60783)))

(declare-fun lt!1386453 () Int)

(assert (=> b!3962338 (= lt!1386453 (size!31615 lt!1386446))))

(declare-fun lt!1386438 () Unit!60775)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1393 (LexerInterface!6213 List!42349 List!42347 List!42347 List!42347 Rule!13048) Unit!60775)

(assert (=> b!3962338 (= lt!1386438 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1393 thiss!20629 rules!2768 lt!1386439 lt!1386446 (_2!23894 (v!39389 lt!1386463)) (rule!9606 (_1!23894 (v!39389 lt!1386463)))))))

(declare-fun maxPrefixOneRule!2567 (LexerInterface!6213 Rule!13048 List!42347) Option!9044)

(assert (=> b!3962338 (= (maxPrefixOneRule!2567 thiss!20629 (rule!9606 (_1!23894 (v!39389 lt!1386463))) lt!1386446) (Some!9043 (tuple2!41521 (Token!12387 lt!1386447 (rule!9606 (_1!23894 (v!39389 lt!1386463))) lt!1386451 lt!1386439) (_2!23894 (v!39389 lt!1386463)))))))

(declare-fun get!13926 (Option!9044) tuple2!41520)

(assert (=> b!3962338 (= lt!1386434 (get!13926 lt!1386463))))

(declare-fun c!687502 () Bool)

(assert (=> b!3962338 (= c!687502 (< (size!31615 (_2!23894 lt!1386434)) lt!1386470))))

(declare-fun lt!1386441 () Unit!60775)

(assert (=> b!3962338 (= lt!1386441 e!2453716)))

(assert (=> b!3962338 false))

(assert (= (and start!372736 res!1603675) b!3962320))

(assert (= (and b!3962320 res!1603676) b!3962321))

(assert (= (and b!3962321 res!1603683) b!3962303))

(assert (= (and b!3962303 res!1603677) b!3962323))

(assert (= (and b!3962323 res!1603670) b!3962302))

(assert (= (and b!3962302 res!1603671) b!3962312))

(assert (= (and b!3962312 res!1603665) b!3962322))

(assert (= (and b!3962322 res!1603673) b!3962304))

(assert (= (and b!3962304 res!1603678) b!3962310))

(assert (= (and b!3962304 (not res!1603682)) b!3962313))

(assert (= (and b!3962313 (not res!1603681)) b!3962314))

(assert (= (and b!3962314 (not res!1603672)) b!3962315))

(assert (= (and b!3962315 c!687503) b!3962338))

(assert (= (and b!3962315 (not c!687503)) b!3962334))

(assert (= (and b!3962338 c!687502) b!3962307))

(assert (= (and b!3962338 (not c!687502)) b!3962328))

(assert (= (and b!3962307 c!687501) b!3962317))

(assert (= (and b!3962307 (not c!687501)) b!3962318))

(assert (= (and b!3962317 res!1603680) b!3962308))

(assert (= (and b!3962318 res!1603666) b!3962331))

(assert (= (or b!3962317 b!3962318) bm!285431))

(assert (= (and b!3962315 c!687500) b!3962306))

(assert (= (and b!3962315 (not c!687500)) b!3962325))

(assert (= (and b!3962315 (not res!1603669)) b!3962336))

(assert (= (and b!3962336 (not res!1603668)) b!3962319))

(assert (= (and b!3962319 (not res!1603684)) b!3962297))

(assert (= (and b!3962297 (not res!1603674)) b!3962330))

(assert (= (and b!3962330 (not res!1603667)) b!3962311))

(assert (= (and b!3962311 (not res!1603679)) b!3962326))

(assert (= (and start!372736 ((_ is Cons!42223) suffixResult!91)) b!3962298))

(assert (= (and start!372736 ((_ is Cons!42223) suffix!1176)) b!3962333))

(assert (= b!3962299 b!3962316))

(assert (= b!3962300 b!3962299))

(assert (= (and start!372736 ((_ is Cons!42225) rules!2768)) b!3962300))

(assert (= b!3962309 b!3962332))

(assert (= b!3962327 b!3962309))

(assert (= b!3962337 b!3962327))

(assert (= (and start!372736 ((_ is Cons!42226) prefixTokens!80)) b!3962337))

(assert (= b!3962329 b!3962301))

(assert (= b!3962305 b!3962329))

(assert (= b!3962324 b!3962305))

(assert (= (and start!372736 ((_ is Cons!42226) suffixTokens!72)) b!3962324))

(assert (= (and start!372736 ((_ is Cons!42223) prefix!426)) b!3962335))

(declare-fun m!4531345 () Bool)

(assert (=> b!3962315 m!4531345))

(declare-fun m!4531347 () Bool)

(assert (=> b!3962315 m!4531347))

(declare-fun m!4531349 () Bool)

(assert (=> b!3962336 m!4531349))

(declare-fun m!4531351 () Bool)

(assert (=> b!3962330 m!4531351))

(declare-fun m!4531353 () Bool)

(assert (=> b!3962303 m!4531353))

(declare-fun m!4531355 () Bool)

(assert (=> b!3962310 m!4531355))

(declare-fun m!4531357 () Bool)

(assert (=> b!3962337 m!4531357))

(declare-fun m!4531359 () Bool)

(assert (=> bm!285431 m!4531359))

(declare-fun m!4531361 () Bool)

(assert (=> b!3962306 m!4531361))

(declare-fun m!4531363 () Bool)

(assert (=> b!3962306 m!4531363))

(declare-fun m!4531365 () Bool)

(assert (=> b!3962306 m!4531365))

(declare-fun m!4531367 () Bool)

(assert (=> b!3962306 m!4531367))

(declare-fun m!4531369 () Bool)

(assert (=> b!3962307 m!4531369))

(declare-fun m!4531371 () Bool)

(assert (=> b!3962307 m!4531371))

(declare-fun m!4531373 () Bool)

(assert (=> b!3962297 m!4531373))

(declare-fun m!4531375 () Bool)

(assert (=> b!3962297 m!4531375))

(declare-fun m!4531377 () Bool)

(assert (=> b!3962329 m!4531377))

(declare-fun m!4531379 () Bool)

(assert (=> b!3962329 m!4531379))

(declare-fun m!4531381 () Bool)

(assert (=> b!3962321 m!4531381))

(declare-fun m!4531383 () Bool)

(assert (=> b!3962312 m!4531383))

(declare-fun m!4531385 () Bool)

(assert (=> b!3962319 m!4531385))

(assert (=> b!3962319 m!4531361))

(assert (=> b!3962319 m!4531363))

(declare-fun m!4531387 () Bool)

(assert (=> b!3962319 m!4531387))

(declare-fun m!4531389 () Bool)

(assert (=> b!3962319 m!4531389))

(declare-fun m!4531391 () Bool)

(assert (=> b!3962322 m!4531391))

(declare-fun m!4531393 () Bool)

(assert (=> b!3962323 m!4531393))

(declare-fun m!4531395 () Bool)

(assert (=> b!3962305 m!4531395))

(declare-fun m!4531397 () Bool)

(assert (=> b!3962338 m!4531397))

(declare-fun m!4531399 () Bool)

(assert (=> b!3962338 m!4531399))

(declare-fun m!4531401 () Bool)

(assert (=> b!3962338 m!4531401))

(declare-fun m!4531403 () Bool)

(assert (=> b!3962338 m!4531403))

(declare-fun m!4531405 () Bool)

(assert (=> b!3962338 m!4531405))

(declare-fun m!4531407 () Bool)

(assert (=> b!3962313 m!4531407))

(declare-fun m!4531409 () Bool)

(assert (=> b!3962299 m!4531409))

(declare-fun m!4531411 () Bool)

(assert (=> b!3962299 m!4531411))

(declare-fun m!4531413 () Bool)

(assert (=> b!3962318 m!4531413))

(declare-fun m!4531415 () Bool)

(assert (=> b!3962318 m!4531415))

(declare-fun m!4531417 () Bool)

(assert (=> b!3962304 m!4531417))

(declare-fun m!4531419 () Bool)

(assert (=> b!3962304 m!4531419))

(declare-fun m!4531421 () Bool)

(assert (=> b!3962304 m!4531421))

(assert (=> b!3962304 m!4531419))

(declare-fun m!4531423 () Bool)

(assert (=> b!3962304 m!4531423))

(declare-fun m!4531425 () Bool)

(assert (=> b!3962304 m!4531425))

(declare-fun m!4531427 () Bool)

(assert (=> b!3962304 m!4531427))

(declare-fun m!4531429 () Bool)

(assert (=> b!3962304 m!4531429))

(assert (=> b!3962304 m!4531425))

(declare-fun m!4531431 () Bool)

(assert (=> b!3962304 m!4531431))

(declare-fun m!4531433 () Bool)

(assert (=> b!3962304 m!4531433))

(declare-fun m!4531435 () Bool)

(assert (=> b!3962304 m!4531435))

(declare-fun m!4531437 () Bool)

(assert (=> b!3962304 m!4531437))

(declare-fun m!4531439 () Bool)

(assert (=> b!3962304 m!4531439))

(declare-fun m!4531441 () Bool)

(assert (=> b!3962304 m!4531441))

(declare-fun m!4531443 () Bool)

(assert (=> b!3962304 m!4531443))

(declare-fun m!4531445 () Bool)

(assert (=> b!3962317 m!4531445))

(declare-fun m!4531447 () Bool)

(assert (=> b!3962317 m!4531447))

(declare-fun m!4531449 () Bool)

(assert (=> b!3962326 m!4531449))

(declare-fun m!4531451 () Bool)

(assert (=> b!3962326 m!4531451))

(declare-fun m!4531453 () Bool)

(assert (=> b!3962326 m!4531453))

(declare-fun m!4531455 () Bool)

(assert (=> b!3962320 m!4531455))

(declare-fun m!4531457 () Bool)

(assert (=> b!3962309 m!4531457))

(declare-fun m!4531459 () Bool)

(assert (=> b!3962309 m!4531459))

(declare-fun m!4531461 () Bool)

(assert (=> b!3962311 m!4531461))

(declare-fun m!4531463 () Bool)

(assert (=> b!3962311 m!4531463))

(declare-fun m!4531465 () Bool)

(assert (=> b!3962311 m!4531465))

(declare-fun m!4531467 () Bool)

(assert (=> b!3962302 m!4531467))

(declare-fun m!4531469 () Bool)

(assert (=> b!3962302 m!4531469))

(declare-fun m!4531471 () Bool)

(assert (=> b!3962302 m!4531471))

(declare-fun m!4531473 () Bool)

(assert (=> b!3962324 m!4531473))

(declare-fun m!4531475 () Bool)

(assert (=> b!3962327 m!4531475))

(check-sat (not b!3962299) (not b!3962298) (not b!3962304) (not bm!285431) (not b_next!110141) (not b!3962326) (not b!3962321) (not b!3962307) (not b!3962310) (not b!3962309) b_and!304273 (not b!3962305) (not b!3962323) (not b!3962311) (not b_next!110151) b_and!304267 (not b!3962338) (not b!3962318) b_and!304277 (not b!3962335) (not b!3962297) (not b_next!110145) b_and!304275 (not b!3962303) b_and!304271 (not b!3962300) (not b!3962329) (not b_next!110149) (not b!3962322) tp_is_empty!20029 (not b!3962320) (not b!3962337) (not b!3962317) (not b_next!110147) (not b!3962315) (not b!3962324) (not b!3962336) (not b!3962306) (not b!3962333) (not b!3962327) (not b!3962302) (not b_next!110143) (not b!3962313) b_and!304269 (not b!3962319) (not b!3962312) (not b!3962330))
(check-sat (not b_next!110151) b_and!304267 b_and!304277 (not b_next!110141) (not b_next!110145) b_and!304275 b_and!304271 (not b_next!110149) b_and!304273 (not b_next!110147) (not b_next!110143) b_and!304269)
