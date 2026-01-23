; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!362764 () Bool)

(assert start!362764)

(declare-fun b!3867356 () Bool)

(declare-fun b_free!104293 () Bool)

(declare-fun b_next!104997 () Bool)

(assert (=> b!3867356 (= b_free!104293 (not b_next!104997))))

(declare-fun tp!1172631 () Bool)

(declare-fun b_and!289755 () Bool)

(assert (=> b!3867356 (= tp!1172631 b_and!289755)))

(declare-fun b_free!104295 () Bool)

(declare-fun b_next!104999 () Bool)

(assert (=> b!3867356 (= b_free!104295 (not b_next!104999))))

(declare-fun tp!1172630 () Bool)

(declare-fun b_and!289757 () Bool)

(assert (=> b!3867356 (= tp!1172630 b_and!289757)))

(declare-fun b!3867366 () Bool)

(declare-fun b_free!104297 () Bool)

(declare-fun b_next!105001 () Bool)

(assert (=> b!3867366 (= b_free!104297 (not b_next!105001))))

(declare-fun tp!1172626 () Bool)

(declare-fun b_and!289759 () Bool)

(assert (=> b!3867366 (= tp!1172626 b_and!289759)))

(declare-fun b_free!104299 () Bool)

(declare-fun b_next!105003 () Bool)

(assert (=> b!3867366 (= b_free!104299 (not b_next!105003))))

(declare-fun tp!1172620 () Bool)

(declare-fun b_and!289761 () Bool)

(assert (=> b!3867366 (= tp!1172620 b_and!289761)))

(declare-fun b!3867370 () Bool)

(declare-fun b_free!104301 () Bool)

(declare-fun b_next!105005 () Bool)

(assert (=> b!3867370 (= b_free!104301 (not b_next!105005))))

(declare-fun tp!1172623 () Bool)

(declare-fun b_and!289763 () Bool)

(assert (=> b!3867370 (= tp!1172623 b_and!289763)))

(declare-fun b_free!104303 () Bool)

(declare-fun b_next!105007 () Bool)

(assert (=> b!3867370 (= b_free!104303 (not b_next!105007))))

(declare-fun tp!1172633 () Bool)

(declare-fun b_and!289765 () Bool)

(assert (=> b!3867370 (= tp!1172633 b_and!289765)))

(declare-fun b!3867328 () Bool)

(declare-fun e!2391675 () Bool)

(declare-fun e!2391698 () Bool)

(assert (=> b!3867328 (= e!2391675 (not e!2391698))))

(declare-fun res!1566249 () Bool)

(assert (=> b!3867328 (=> res!1566249 e!2391698)))

(declare-datatypes ((C!22728 0))(
  ( (C!22729 (val!13458 Int)) )
))
(declare-datatypes ((List!41190 0))(
  ( (Nil!41066) (Cons!41066 (h!46486 C!22728) (t!314065 List!41190)) )
))
(declare-fun lt!1345198 () List!41190)

(declare-fun lt!1345182 () List!41190)

(assert (=> b!3867328 (= res!1566249 (not (= lt!1345198 lt!1345182)))))

(declare-datatypes ((IArray!25159 0))(
  ( (IArray!25160 (innerList!12637 List!41190)) )
))
(declare-datatypes ((Conc!12577 0))(
  ( (Node!12577 (left!31578 Conc!12577) (right!31908 Conc!12577) (csize!25384 Int) (cheight!12788 Int)) (Leaf!19467 (xs!15883 IArray!25159) (csize!25385 Int)) (Empty!12577) )
))
(declare-datatypes ((BalanceConc!24748 0))(
  ( (BalanceConc!24749 (c!673064 Conc!12577)) )
))
(declare-datatypes ((List!41191 0))(
  ( (Nil!41067) (Cons!41067 (h!46487 (_ BitVec 16)) (t!314066 List!41191)) )
))
(declare-datatypes ((TokenValue!6596 0))(
  ( (FloatLiteralValue!13192 (text!46617 List!41191)) (TokenValueExt!6595 (__x!25409 Int)) (Broken!32980 (value!202039 List!41191)) (Object!6719) (End!6596) (Def!6596) (Underscore!6596) (Match!6596) (Else!6596) (Error!6596) (Case!6596) (If!6596) (Extends!6596) (Abstract!6596) (Class!6596) (Val!6596) (DelimiterValue!13192 (del!6656 List!41191)) (KeywordValue!6602 (value!202040 List!41191)) (CommentValue!13192 (value!202041 List!41191)) (WhitespaceValue!13192 (value!202042 List!41191)) (IndentationValue!6596 (value!202043 List!41191)) (String!46697) (Int32!6596) (Broken!32981 (value!202044 List!41191)) (Boolean!6597) (Unit!58820) (OperatorValue!6599 (op!6656 List!41191)) (IdentifierValue!13192 (value!202045 List!41191)) (IdentifierValue!13193 (value!202046 List!41191)) (WhitespaceValue!13193 (value!202047 List!41191)) (True!13192) (False!13192) (Broken!32982 (value!202048 List!41191)) (Broken!32983 (value!202049 List!41191)) (True!13193) (RightBrace!6596) (RightBracket!6596) (Colon!6596) (Null!6596) (Comma!6596) (LeftBracket!6596) (False!13193) (LeftBrace!6596) (ImaginaryLiteralValue!6596 (text!46618 List!41191)) (StringLiteralValue!19788 (value!202050 List!41191)) (EOFValue!6596 (value!202051 List!41191)) (IdentValue!6596 (value!202052 List!41191)) (DelimiterValue!13193 (value!202053 List!41191)) (DedentValue!6596 (value!202054 List!41191)) (NewLineValue!6596 (value!202055 List!41191)) (IntegerValue!19788 (value!202056 (_ BitVec 32)) (text!46619 List!41191)) (IntegerValue!19789 (value!202057 Int) (text!46620 List!41191)) (Times!6596) (Or!6596) (Equal!6596) (Minus!6596) (Broken!32984 (value!202058 List!41191)) (And!6596) (Div!6596) (LessEqual!6596) (Mod!6596) (Concat!17867) (Not!6596) (Plus!6596) (SpaceValue!6596 (value!202059 List!41191)) (IntegerValue!19790 (value!202060 Int) (text!46621 List!41191)) (StringLiteralValue!19789 (text!46622 List!41191)) (FloatLiteralValue!13193 (text!46623 List!41191)) (BytesLiteralValue!6596 (value!202061 List!41191)) (CommentValue!13193 (value!202062 List!41191)) (StringLiteralValue!19790 (value!202063 List!41191)) (ErrorTokenValue!6596 (msg!6657 List!41191)) )
))
(declare-datatypes ((Regex!11271 0))(
  ( (ElementMatch!11271 (c!673065 C!22728)) (Concat!17868 (regOne!23054 Regex!11271) (regTwo!23054 Regex!11271)) (EmptyExpr!11271) (Star!11271 (reg!11600 Regex!11271)) (EmptyLang!11271) (Union!11271 (regOne!23055 Regex!11271) (regTwo!23055 Regex!11271)) )
))
(declare-datatypes ((String!46698 0))(
  ( (String!46699 (value!202064 String)) )
))
(declare-datatypes ((TokenValueInjection!12620 0))(
  ( (TokenValueInjection!12621 (toValue!8794 Int) (toChars!8653 Int)) )
))
(declare-datatypes ((Rule!12532 0))(
  ( (Rule!12533 (regex!6366 Regex!11271) (tag!7226 String!46698) (isSeparator!6366 Bool) (transformation!6366 TokenValueInjection!12620)) )
))
(declare-datatypes ((List!41192 0))(
  ( (Nil!41068) (Cons!41068 (h!46488 Rule!12532) (t!314067 List!41192)) )
))
(declare-fun rules!2768 () List!41192)

(declare-datatypes ((Token!11870 0))(
  ( (Token!11871 (value!202065 TokenValue!6596) (rule!9246 Rule!12532) (size!30869 Int) (originalCharacters!6966 List!41190)) )
))
(declare-datatypes ((tuple2!40282 0))(
  ( (tuple2!40283 (_1!23275 Token!11870) (_2!23275 List!41190)) )
))
(declare-datatypes ((Option!8784 0))(
  ( (None!8783) (Some!8783 (v!39081 tuple2!40282)) )
))
(declare-fun lt!1345186 () Option!8784)

(declare-datatypes ((List!41193 0))(
  ( (Nil!41069) (Cons!41069 (h!46489 Token!11870) (t!314068 List!41193)) )
))
(declare-datatypes ((tuple2!40284 0))(
  ( (tuple2!40285 (_1!23276 List!41193) (_2!23276 List!41190)) )
))
(declare-fun lt!1345211 () tuple2!40284)

(declare-datatypes ((LexerInterface!5955 0))(
  ( (LexerInterfaceExt!5952 (__x!25410 Int)) (Lexer!5953) )
))
(declare-fun thiss!20629 () LexerInterface!5955)

(declare-fun lexList!1723 (LexerInterface!5955 List!41192 List!41190) tuple2!40284)

(assert (=> b!3867328 (= lt!1345211 (lexList!1723 thiss!20629 rules!2768 (_2!23275 (v!39081 lt!1345186))))))

(declare-fun lt!1345185 () Int)

(declare-fun lt!1345209 () List!41190)

(declare-fun lt!1345214 () TokenValue!6596)

(declare-fun lt!1345212 () List!41190)

(assert (=> b!3867328 (and (= (size!30869 (_1!23275 (v!39081 lt!1345186))) lt!1345185) (= (originalCharacters!6966 (_1!23275 (v!39081 lt!1345186))) lt!1345212) (= (v!39081 lt!1345186) (tuple2!40283 (Token!11871 lt!1345214 (rule!9246 (_1!23275 (v!39081 lt!1345186))) lt!1345185 lt!1345212) lt!1345209)))))

(declare-fun size!30870 (List!41190) Int)

(assert (=> b!3867328 (= lt!1345185 (size!30870 lt!1345212))))

(declare-fun e!2391686 () Bool)

(assert (=> b!3867328 e!2391686))

(declare-fun res!1566250 () Bool)

(assert (=> b!3867328 (=> (not res!1566250) (not e!2391686))))

(assert (=> b!3867328 (= res!1566250 (= (value!202065 (_1!23275 (v!39081 lt!1345186))) lt!1345214))))

(declare-fun apply!9609 (TokenValueInjection!12620 BalanceConc!24748) TokenValue!6596)

(declare-fun seqFromList!4637 (List!41190) BalanceConc!24748)

(assert (=> b!3867328 (= lt!1345214 (apply!9609 (transformation!6366 (rule!9246 (_1!23275 (v!39081 lt!1345186)))) (seqFromList!4637 lt!1345212)))))

(assert (=> b!3867328 (= (_2!23275 (v!39081 lt!1345186)) lt!1345209)))

(declare-datatypes ((Unit!58821 0))(
  ( (Unit!58822) )
))
(declare-fun lt!1345203 () Unit!58821)

(declare-fun lemmaSamePrefixThenSameSuffix!1686 (List!41190 List!41190 List!41190 List!41190 List!41190) Unit!58821)

(assert (=> b!3867328 (= lt!1345203 (lemmaSamePrefixThenSameSuffix!1686 lt!1345212 (_2!23275 (v!39081 lt!1345186)) lt!1345212 lt!1345209 lt!1345182))))

(declare-fun getSuffix!1920 (List!41190 List!41190) List!41190)

(assert (=> b!3867328 (= lt!1345209 (getSuffix!1920 lt!1345182 lt!1345212))))

(declare-fun isPrefix!3465 (List!41190 List!41190) Bool)

(assert (=> b!3867328 (isPrefix!3465 lt!1345212 lt!1345198)))

(declare-fun ++!10489 (List!41190 List!41190) List!41190)

(assert (=> b!3867328 (= lt!1345198 (++!10489 lt!1345212 (_2!23275 (v!39081 lt!1345186))))))

(declare-fun lt!1345181 () Unit!58821)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!2328 (List!41190 List!41190) Unit!58821)

(assert (=> b!3867328 (= lt!1345181 (lemmaConcatTwoListThenFirstIsPrefix!2328 lt!1345212 (_2!23275 (v!39081 lt!1345186))))))

(declare-fun list!15278 (BalanceConc!24748) List!41190)

(declare-fun charsOf!4194 (Token!11870) BalanceConc!24748)

(assert (=> b!3867328 (= lt!1345212 (list!15278 (charsOf!4194 (_1!23275 (v!39081 lt!1345186)))))))

(declare-fun ruleValid!2318 (LexerInterface!5955 Rule!12532) Bool)

(assert (=> b!3867328 (ruleValid!2318 thiss!20629 (rule!9246 (_1!23275 (v!39081 lt!1345186))))))

(declare-fun lt!1345187 () Unit!58821)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1398 (LexerInterface!5955 Rule!12532 List!41192) Unit!58821)

(assert (=> b!3867328 (= lt!1345187 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!1398 thiss!20629 (rule!9246 (_1!23275 (v!39081 lt!1345186))) rules!2768))))

(declare-fun lt!1345196 () Unit!58821)

(declare-fun lemmaCharactersSize!1027 (Token!11870) Unit!58821)

(assert (=> b!3867328 (= lt!1345196 (lemmaCharactersSize!1027 (_1!23275 (v!39081 lt!1345186))))))

(declare-fun b!3867329 () Bool)

(declare-fun e!2391684 () Bool)

(declare-fun e!2391677 () Bool)

(declare-fun tp!1172632 () Bool)

(declare-fun inv!55222 (String!46698) Bool)

(declare-fun inv!55225 (TokenValueInjection!12620) Bool)

(assert (=> b!3867329 (= e!2391677 (and tp!1172632 (inv!55222 (tag!7226 (h!46488 rules!2768))) (inv!55225 (transformation!6366 (h!46488 rules!2768))) e!2391684))))

(declare-fun b!3867330 () Bool)

(declare-fun e!2391672 () Bool)

(declare-fun e!2391699 () Bool)

(assert (=> b!3867330 (= e!2391672 e!2391699)))

(declare-fun res!1566245 () Bool)

(assert (=> b!3867330 (=> res!1566245 e!2391699)))

(declare-fun prefix!426 () List!41190)

(assert (=> b!3867330 (= res!1566245 (>= lt!1345185 (size!30870 prefix!426)))))

(assert (=> b!3867330 (isPrefix!3465 lt!1345212 prefix!426)))

(declare-fun lt!1345184 () Unit!58821)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!215 (List!41190 List!41190 List!41190) Unit!58821)

(assert (=> b!3867330 (= lt!1345184 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!215 prefix!426 lt!1345212 lt!1345182))))

(assert (=> b!3867330 (isPrefix!3465 prefix!426 lt!1345182)))

(declare-fun lt!1345202 () Unit!58821)

(declare-fun suffix!1176 () List!41190)

(assert (=> b!3867330 (= lt!1345202 (lemmaConcatTwoListThenFirstIsPrefix!2328 prefix!426 suffix!1176))))

(declare-fun b!3867331 () Bool)

(assert (=> b!3867331 (= e!2391686 (= (size!30869 (_1!23275 (v!39081 lt!1345186))) (size!30870 (originalCharacters!6966 (_1!23275 (v!39081 lt!1345186))))))))

(declare-fun b!3867332 () Bool)

(declare-fun e!2391692 () Bool)

(assert (=> b!3867332 (= e!2391692 e!2391675)))

(declare-fun res!1566252 () Bool)

(assert (=> b!3867332 (=> (not res!1566252) (not e!2391675))))

(get-info :version)

(assert (=> b!3867332 (= res!1566252 ((_ is Some!8783) lt!1345186))))

(declare-fun maxPrefix!3259 (LexerInterface!5955 List!41192 List!41190) Option!8784)

(assert (=> b!3867332 (= lt!1345186 (maxPrefix!3259 thiss!20629 rules!2768 lt!1345182))))

(declare-fun b!3867333 () Bool)

(declare-fun e!2391688 () Bool)

(assert (=> b!3867333 (= e!2391688 true)))

(declare-fun lt!1345180 () List!41190)

(declare-fun lt!1345213 () List!41190)

(assert (=> b!3867333 (isPrefix!3465 lt!1345180 lt!1345213)))

(declare-fun lt!1345197 () Unit!58821)

(assert (=> b!3867333 (= lt!1345197 (lemmaConcatTwoListThenFirstIsPrefix!2328 lt!1345180 suffix!1176))))

(declare-fun b!3867334 () Bool)

(declare-fun e!2391708 () Bool)

(declare-fun tp_is_empty!19513 () Bool)

(declare-fun tp!1172619 () Bool)

(assert (=> b!3867334 (= e!2391708 (and tp_is_empty!19513 tp!1172619))))

(declare-fun b!3867335 () Bool)

(declare-fun e!2391674 () Bool)

(declare-fun tp!1172629 () Bool)

(assert (=> b!3867335 (= e!2391674 (and tp_is_empty!19513 tp!1172629))))

(declare-fun b!3867336 () Bool)

(assert (=> b!3867336 (= e!2391698 e!2391672)))

(declare-fun res!1566259 () Bool)

(assert (=> b!3867336 (=> res!1566259 e!2391672)))

(declare-fun lt!1345192 () Int)

(declare-fun lt!1345204 () Int)

(assert (=> b!3867336 (= res!1566259 (<= lt!1345192 lt!1345204))))

(declare-fun lt!1345215 () Unit!58821)

(declare-fun e!2391693 () Unit!58821)

(assert (=> b!3867336 (= lt!1345215 e!2391693)))

(declare-fun c!673062 () Bool)

(assert (=> b!3867336 (= c!673062 (= lt!1345192 lt!1345204))))

(declare-fun lt!1345190 () Unit!58821)

(declare-fun e!2391702 () Unit!58821)

(assert (=> b!3867336 (= lt!1345190 e!2391702)))

(declare-fun c!673060 () Bool)

(assert (=> b!3867336 (= c!673060 (< lt!1345192 lt!1345204))))

(assert (=> b!3867336 (= lt!1345204 (size!30870 suffix!1176))))

(assert (=> b!3867336 (= lt!1345192 (size!30870 (_2!23275 (v!39081 lt!1345186))))))

(declare-fun tp!1172622 () Bool)

(declare-fun e!2391685 () Bool)

(declare-fun e!2391703 () Bool)

(declare-fun prefixTokens!80 () List!41193)

(declare-fun b!3867337 () Bool)

(assert (=> b!3867337 (= e!2391685 (and tp!1172622 (inv!55222 (tag!7226 (rule!9246 (h!46489 prefixTokens!80)))) (inv!55225 (transformation!6366 (rule!9246 (h!46489 prefixTokens!80)))) e!2391703))))

(declare-fun b!3867338 () Bool)

(declare-fun res!1566256 () Bool)

(assert (=> b!3867338 (=> res!1566256 e!2391698)))

(declare-fun lt!1345207 () tuple2!40284)

(declare-fun ++!10490 (List!41193 List!41193) List!41193)

(assert (=> b!3867338 (= res!1566256 (not (= lt!1345207 (tuple2!40285 (++!10490 (Cons!41069 (_1!23275 (v!39081 lt!1345186)) Nil!41069) (_1!23276 lt!1345211)) (_2!23276 lt!1345211)))))))

(declare-fun tp!1172634 () Bool)

(declare-fun e!2391680 () Bool)

(declare-fun e!2391700 () Bool)

(declare-fun suffixTokens!72 () List!41193)

(declare-fun b!3867339 () Bool)

(declare-fun inv!21 (TokenValue!6596) Bool)

(assert (=> b!3867339 (= e!2391680 (and (inv!21 (value!202065 (h!46489 suffixTokens!72))) e!2391700 tp!1172634))))

(declare-fun b!3867340 () Bool)

(declare-fun e!2391676 () Bool)

(declare-fun tp!1172625 () Bool)

(assert (=> b!3867340 (= e!2391700 (and tp!1172625 (inv!55222 (tag!7226 (rule!9246 (h!46489 suffixTokens!72)))) (inv!55225 (transformation!6366 (rule!9246 (h!46489 suffixTokens!72)))) e!2391676))))

(declare-fun b!3867341 () Bool)

(declare-fun e!2391687 () Bool)

(declare-fun e!2391682 () Bool)

(assert (=> b!3867341 (= e!2391687 e!2391682)))

(declare-fun res!1566243 () Bool)

(assert (=> b!3867341 (=> (not res!1566243) (not e!2391682))))

(declare-fun suffixResult!91 () List!41190)

(declare-fun lt!1345189 () List!41193)

(assert (=> b!3867341 (= res!1566243 (= lt!1345207 (tuple2!40285 lt!1345189 suffixResult!91)))))

(assert (=> b!3867341 (= lt!1345207 (lexList!1723 thiss!20629 rules!2768 lt!1345182))))

(assert (=> b!3867341 (= lt!1345189 (++!10490 prefixTokens!80 suffixTokens!72))))

(assert (=> b!3867341 (= lt!1345182 (++!10489 prefix!426 suffix!1176))))

(declare-fun b!3867342 () Bool)

(declare-fun e!2391683 () Bool)

(assert (=> b!3867342 (= e!2391683 e!2391688)))

(declare-fun res!1566255 () Bool)

(assert (=> b!3867342 (=> res!1566255 e!2391688)))

(assert (=> b!3867342 (= res!1566255 (not (= lt!1345213 (_2!23275 (v!39081 lt!1345186)))))))

(assert (=> b!3867342 (= (_2!23275 (v!39081 lt!1345186)) lt!1345213)))

(declare-fun lt!1345218 () Unit!58821)

(assert (=> b!3867342 (= lt!1345218 (lemmaSamePrefixThenSameSuffix!1686 lt!1345212 (_2!23275 (v!39081 lt!1345186)) lt!1345212 lt!1345213 lt!1345182))))

(declare-fun lt!1345205 () List!41190)

(assert (=> b!3867342 (isPrefix!3465 lt!1345212 lt!1345205)))

(declare-fun lt!1345201 () Unit!58821)

(assert (=> b!3867342 (= lt!1345201 (lemmaConcatTwoListThenFirstIsPrefix!2328 lt!1345212 lt!1345213))))

(declare-fun b!3867343 () Bool)

(declare-fun e!2391706 () Bool)

(declare-fun tp!1172621 () Bool)

(assert (=> b!3867343 (= e!2391706 (and tp_is_empty!19513 tp!1172621))))

(declare-fun b!3867344 () Bool)

(declare-fun res!1566257 () Bool)

(assert (=> b!3867344 (=> res!1566257 e!2391698)))

(assert (=> b!3867344 (= res!1566257 (or (not (= lt!1345211 (tuple2!40285 (_1!23276 lt!1345211) (_2!23276 lt!1345211)))) (= (_2!23275 (v!39081 lt!1345186)) suffix!1176)))))

(declare-fun b!3867345 () Bool)

(declare-fun tp!1172628 () Bool)

(declare-fun e!2391707 () Bool)

(declare-fun inv!55226 (Token!11870) Bool)

(assert (=> b!3867345 (= e!2391707 (and (inv!55226 (h!46489 suffixTokens!72)) e!2391680 tp!1172628))))

(declare-fun b!3867346 () Bool)

(declare-fun res!1566247 () Bool)

(assert (=> b!3867346 (=> (not res!1566247) (not e!2391687))))

(declare-fun isEmpty!24352 (List!41190) Bool)

(assert (=> b!3867346 (= res!1566247 (not (isEmpty!24352 prefix!426)))))

(declare-fun b!3867347 () Bool)

(declare-fun e!2391691 () Bool)

(assert (=> b!3867347 (= e!2391691 e!2391683)))

(declare-fun res!1566258 () Bool)

(assert (=> b!3867347 (=> res!1566258 e!2391683)))

(declare-fun lt!1345193 () List!41190)

(assert (=> b!3867347 (= res!1566258 (or (not (= lt!1345182 lt!1345193)) (not (= lt!1345182 lt!1345205)) (not (= lt!1345198 lt!1345205))))))

(assert (=> b!3867347 (= lt!1345193 lt!1345205)))

(assert (=> b!3867347 (= lt!1345205 (++!10489 lt!1345212 lt!1345213))))

(assert (=> b!3867347 (= lt!1345213 (++!10489 lt!1345180 suffix!1176))))

(declare-fun lt!1345179 () Unit!58821)

(declare-fun lemmaConcatAssociativity!2212 (List!41190 List!41190 List!41190) Unit!58821)

(assert (=> b!3867347 (= lt!1345179 (lemmaConcatAssociativity!2212 lt!1345212 lt!1345180 suffix!1176))))

(declare-fun b!3867348 () Bool)

(assert (=> b!3867348 (= e!2391682 e!2391692)))

(declare-fun res!1566241 () Bool)

(assert (=> b!3867348 (=> (not res!1566241) (not e!2391692))))

(declare-fun lt!1345200 () tuple2!40284)

(assert (=> b!3867348 (= res!1566241 (= (lexList!1723 thiss!20629 rules!2768 suffix!1176) lt!1345200))))

(assert (=> b!3867348 (= lt!1345200 (tuple2!40285 suffixTokens!72 suffixResult!91))))

(declare-fun b!3867349 () Bool)

(declare-fun res!1566246 () Bool)

(assert (=> b!3867349 (=> (not res!1566246) (not e!2391687))))

(declare-fun isEmpty!24353 (List!41192) Bool)

(assert (=> b!3867349 (= res!1566246 (not (isEmpty!24353 rules!2768)))))

(declare-fun b!3867350 () Bool)

(declare-fun e!2391704 () Unit!58821)

(declare-fun Unit!58823 () Unit!58821)

(assert (=> b!3867350 (= e!2391704 Unit!58823)))

(declare-fun lt!1345188 () tuple2!40282)

(declare-fun lt!1345208 () List!41193)

(declare-fun lt!1345183 () Unit!58821)

(declare-fun lemmaLexWithSmallerInputCannotProduceAdditionalTokens!26 (LexerInterface!5955 List!41192 List!41190 List!41190 List!41193 List!41190 List!41193) Unit!58821)

(assert (=> b!3867350 (= lt!1345183 (lemmaLexWithSmallerInputCannotProduceAdditionalTokens!26 thiss!20629 rules!2768 suffix!1176 (_2!23275 lt!1345188) suffixTokens!72 suffixResult!91 lt!1345208))))

(declare-fun call!282672 () tuple2!40284)

(declare-fun res!1566260 () Bool)

(assert (=> b!3867350 (= res!1566260 (not (= call!282672 (tuple2!40285 (++!10490 lt!1345208 suffixTokens!72) suffixResult!91))))))

(declare-fun e!2391678 () Bool)

(assert (=> b!3867350 (=> (not res!1566260) (not e!2391678))))

(assert (=> b!3867350 e!2391678))

(declare-fun b!3867351 () Bool)

(declare-fun Unit!58824 () Unit!58821)

(assert (=> b!3867351 (= e!2391702 Unit!58824)))

(declare-fun b!3867352 () Bool)

(declare-fun e!2391695 () Bool)

(assert (=> b!3867352 (= e!2391695 e!2391691)))

(declare-fun res!1566261 () Bool)

(assert (=> b!3867352 (=> res!1566261 e!2391691)))

(assert (=> b!3867352 (= res!1566261 (or (not (= lt!1345193 lt!1345182)) (not (= lt!1345193 lt!1345198))))))

(declare-fun lt!1345210 () List!41190)

(assert (=> b!3867352 (= lt!1345193 (++!10489 lt!1345210 suffix!1176))))

(declare-fun b!3867353 () Bool)

(declare-fun res!1566248 () Bool)

(assert (=> b!3867353 (=> res!1566248 e!2391672)))

(declare-fun head!8176 (List!41193) Token!11870)

(assert (=> b!3867353 (= res!1566248 (not (= (head!8176 prefixTokens!80) (_1!23275 (v!39081 lt!1345186)))))))

(declare-fun b!3867354 () Bool)

(declare-fun res!1566253 () Bool)

(assert (=> b!3867354 (=> (not res!1566253) (not e!2391687))))

(declare-fun isEmpty!24354 (List!41193) Bool)

(assert (=> b!3867354 (= res!1566253 (not (isEmpty!24354 prefixTokens!80)))))

(declare-fun tp!1172627 () Bool)

(declare-fun e!2391690 () Bool)

(declare-fun b!3867355 () Bool)

(declare-fun e!2391705 () Bool)

(assert (=> b!3867355 (= e!2391690 (and (inv!55226 (h!46489 prefixTokens!80)) e!2391705 tp!1172627))))

(assert (=> b!3867356 (= e!2391703 (and tp!1172631 tp!1172630))))

(declare-fun b!3867357 () Bool)

(declare-fun Unit!58825 () Unit!58821)

(assert (=> b!3867357 (= e!2391693 Unit!58825)))

(declare-fun b!3867358 () Bool)

(assert (=> b!3867358 (= e!2391699 e!2391695)))

(declare-fun res!1566242 () Bool)

(assert (=> b!3867358 (=> res!1566242 e!2391695)))

(assert (=> b!3867358 (= res!1566242 (not (= lt!1345210 prefix!426)))))

(assert (=> b!3867358 (= lt!1345210 (++!10489 lt!1345212 lt!1345180))))

(assert (=> b!3867358 (= lt!1345180 (getSuffix!1920 prefix!426 lt!1345212))))

(declare-fun b!3867359 () Bool)

(declare-fun Unit!58826 () Unit!58821)

(assert (=> b!3867359 (= e!2391693 Unit!58826)))

(declare-fun lt!1345199 () Unit!58821)

(assert (=> b!3867359 (= lt!1345199 (lemmaConcatTwoListThenFirstIsPrefix!2328 prefix!426 suffix!1176))))

(assert (=> b!3867359 (isPrefix!3465 prefix!426 lt!1345182)))

(declare-fun lt!1345194 () Unit!58821)

(declare-fun lemmaIsPrefixSameLengthThenSameList!717 (List!41190 List!41190 List!41190) Unit!58821)

(assert (=> b!3867359 (= lt!1345194 (lemmaIsPrefixSameLengthThenSameList!717 lt!1345212 prefix!426 lt!1345182))))

(assert (=> b!3867359 (= lt!1345212 prefix!426)))

(declare-fun lt!1345216 () Unit!58821)

(assert (=> b!3867359 (= lt!1345216 (lemmaSamePrefixThenSameSuffix!1686 lt!1345212 (_2!23275 (v!39081 lt!1345186)) prefix!426 suffix!1176 lt!1345182))))

(assert (=> b!3867359 false))

(declare-fun b!3867360 () Bool)

(declare-fun c!673061 () Bool)

(assert (=> b!3867360 (= c!673061 (isEmpty!24354 lt!1345208))))

(declare-fun tail!5893 (List!41193) List!41193)

(assert (=> b!3867360 (= lt!1345208 (tail!5893 prefixTokens!80))))

(declare-fun e!2391696 () Unit!58821)

(assert (=> b!3867360 (= e!2391696 e!2391704)))

(declare-fun b!3867361 () Bool)

(declare-fun Unit!58827 () Unit!58821)

(assert (=> b!3867361 (= e!2391704 Unit!58827)))

(declare-fun lt!1345206 () Unit!58821)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!450 (List!41190 List!41190 List!41190 List!41190) Unit!58821)

(assert (=> b!3867361 (= lt!1345206 (lemmaConcatSameAndSameSizesThenSameLists!450 lt!1345212 (_2!23275 (v!39081 lt!1345186)) lt!1345212 (_2!23275 lt!1345188)))))

(assert (=> b!3867361 (= (_2!23275 (v!39081 lt!1345186)) (_2!23275 lt!1345188))))

(declare-fun lt!1345195 () Unit!58821)

(declare-fun lemmaLexWithSmallerInputCannotProduceSameResults!26 (LexerInterface!5955 List!41192 List!41190 List!41190 List!41193 List!41190) Unit!58821)

(assert (=> b!3867361 (= lt!1345195 (lemmaLexWithSmallerInputCannotProduceSameResults!26 thiss!20629 rules!2768 suffix!1176 (_2!23275 lt!1345188) suffixTokens!72 suffixResult!91))))

(declare-fun res!1566244 () Bool)

(assert (=> b!3867361 (= res!1566244 (not (= call!282672 lt!1345200)))))

(declare-fun e!2391679 () Bool)

(assert (=> b!3867361 (=> (not res!1566244) (not e!2391679))))

(assert (=> b!3867361 e!2391679))

(declare-fun b!3867362 () Bool)

(declare-fun Unit!58828 () Unit!58821)

(assert (=> b!3867362 (= e!2391702 Unit!58828)))

(declare-fun lt!1345191 () Int)

(assert (=> b!3867362 (= lt!1345191 (size!30870 lt!1345182))))

(declare-fun lt!1345217 () Unit!58821)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1239 (LexerInterface!5955 List!41192 List!41190 List!41190 List!41190 Rule!12532) Unit!58821)

(assert (=> b!3867362 (= lt!1345217 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!1239 thiss!20629 rules!2768 lt!1345212 lt!1345182 (_2!23275 (v!39081 lt!1345186)) (rule!9246 (_1!23275 (v!39081 lt!1345186)))))))

(declare-fun maxPrefixOneRule!2341 (LexerInterface!5955 Rule!12532 List!41190) Option!8784)

(assert (=> b!3867362 (= (maxPrefixOneRule!2341 thiss!20629 (rule!9246 (_1!23275 (v!39081 lt!1345186))) lt!1345182) (Some!8783 (tuple2!40283 (Token!11871 lt!1345214 (rule!9246 (_1!23275 (v!39081 lt!1345186))) lt!1345185 lt!1345212) (_2!23275 (v!39081 lt!1345186)))))))

(declare-fun get!13589 (Option!8784) tuple2!40282)

(assert (=> b!3867362 (= lt!1345188 (get!13589 lt!1345186))))

(declare-fun c!673063 () Bool)

(assert (=> b!3867362 (= c!673063 (< (size!30870 (_2!23275 lt!1345188)) lt!1345204))))

(declare-fun lt!1345219 () Unit!58821)

(assert (=> b!3867362 (= lt!1345219 e!2391696)))

(assert (=> b!3867362 false))

(declare-fun bm!282667 () Bool)

(assert (=> bm!282667 (= call!282672 (lexList!1723 thiss!20629 rules!2768 (_2!23275 lt!1345188)))))

(declare-fun tp!1172618 () Bool)

(declare-fun b!3867363 () Bool)

(assert (=> b!3867363 (= e!2391705 (and (inv!21 (value!202065 (h!46489 prefixTokens!80))) e!2391685 tp!1172618))))

(declare-fun b!3867364 () Bool)

(declare-fun res!1566254 () Bool)

(assert (=> b!3867364 (=> (not res!1566254) (not e!2391687))))

(declare-fun rulesInvariant!5298 (LexerInterface!5955 List!41192) Bool)

(assert (=> b!3867364 (= res!1566254 (rulesInvariant!5298 thiss!20629 rules!2768))))

(declare-fun b!3867365 () Bool)

(declare-fun Unit!58829 () Unit!58821)

(assert (=> b!3867365 (= e!2391696 Unit!58829)))

(assert (=> b!3867366 (= e!2391684 (and tp!1172626 tp!1172620))))

(declare-fun res!1566251 () Bool)

(assert (=> start!362764 (=> (not res!1566251) (not e!2391687))))

(assert (=> start!362764 (= res!1566251 ((_ is Lexer!5953) thiss!20629))))

(assert (=> start!362764 e!2391687))

(assert (=> start!362764 e!2391706))

(assert (=> start!362764 true))

(assert (=> start!362764 e!2391708))

(declare-fun e!2391689 () Bool)

(assert (=> start!362764 e!2391689))

(assert (=> start!362764 e!2391690))

(assert (=> start!362764 e!2391707))

(assert (=> start!362764 e!2391674))

(declare-fun b!3867367 () Bool)

(assert (=> b!3867367 (= e!2391678 false)))

(declare-fun b!3867368 () Bool)

(declare-fun tp!1172624 () Bool)

(assert (=> b!3867368 (= e!2391689 (and e!2391677 tp!1172624))))

(declare-fun b!3867369 () Bool)

(assert (=> b!3867369 (= e!2391679 false)))

(assert (=> b!3867370 (= e!2391676 (and tp!1172623 tp!1172633))))

(assert (= (and start!362764 res!1566251) b!3867349))

(assert (= (and b!3867349 res!1566246) b!3867364))

(assert (= (and b!3867364 res!1566254) b!3867354))

(assert (= (and b!3867354 res!1566253) b!3867346))

(assert (= (and b!3867346 res!1566247) b!3867341))

(assert (= (and b!3867341 res!1566243) b!3867348))

(assert (= (and b!3867348 res!1566241) b!3867332))

(assert (= (and b!3867332 res!1566252) b!3867328))

(assert (= (and b!3867328 res!1566250) b!3867331))

(assert (= (and b!3867328 (not res!1566249)) b!3867338))

(assert (= (and b!3867338 (not res!1566256)) b!3867344))

(assert (= (and b!3867344 (not res!1566257)) b!3867336))

(assert (= (and b!3867336 c!673060) b!3867362))

(assert (= (and b!3867336 (not c!673060)) b!3867351))

(assert (= (and b!3867362 c!673063) b!3867360))

(assert (= (and b!3867362 (not c!673063)) b!3867365))

(assert (= (and b!3867360 c!673061) b!3867361))

(assert (= (and b!3867360 (not c!673061)) b!3867350))

(assert (= (and b!3867361 res!1566244) b!3867369))

(assert (= (and b!3867350 res!1566260) b!3867367))

(assert (= (or b!3867361 b!3867350) bm!282667))

(assert (= (and b!3867336 c!673062) b!3867359))

(assert (= (and b!3867336 (not c!673062)) b!3867357))

(assert (= (and b!3867336 (not res!1566259)) b!3867353))

(assert (= (and b!3867353 (not res!1566248)) b!3867330))

(assert (= (and b!3867330 (not res!1566245)) b!3867358))

(assert (= (and b!3867358 (not res!1566242)) b!3867352))

(assert (= (and b!3867352 (not res!1566261)) b!3867347))

(assert (= (and b!3867347 (not res!1566258)) b!3867342))

(assert (= (and b!3867342 (not res!1566255)) b!3867333))

(assert (= (and start!362764 ((_ is Cons!41066) suffixResult!91)) b!3867343))

(assert (= (and start!362764 ((_ is Cons!41066) suffix!1176)) b!3867334))

(assert (= b!3867329 b!3867366))

(assert (= b!3867368 b!3867329))

(assert (= (and start!362764 ((_ is Cons!41068) rules!2768)) b!3867368))

(assert (= b!3867337 b!3867356))

(assert (= b!3867363 b!3867337))

(assert (= b!3867355 b!3867363))

(assert (= (and start!362764 ((_ is Cons!41069) prefixTokens!80)) b!3867355))

(assert (= b!3867340 b!3867370))

(assert (= b!3867339 b!3867340))

(assert (= b!3867345 b!3867339))

(assert (= (and start!362764 ((_ is Cons!41069) suffixTokens!72)) b!3867345))

(assert (= (and start!362764 ((_ is Cons!41066) prefix!426)) b!3867335))

(declare-fun m!4422909 () Bool)

(assert (=> b!3867360 m!4422909))

(declare-fun m!4422911 () Bool)

(assert (=> b!3867360 m!4422911))

(declare-fun m!4422913 () Bool)

(assert (=> b!3867363 m!4422913))

(declare-fun m!4422915 () Bool)

(assert (=> b!3867353 m!4422915))

(declare-fun m!4422917 () Bool)

(assert (=> b!3867338 m!4422917))

(declare-fun m!4422919 () Bool)

(assert (=> b!3867333 m!4422919))

(declare-fun m!4422921 () Bool)

(assert (=> b!3867333 m!4422921))

(declare-fun m!4422923 () Bool)

(assert (=> b!3867347 m!4422923))

(declare-fun m!4422925 () Bool)

(assert (=> b!3867347 m!4422925))

(declare-fun m!4422927 () Bool)

(assert (=> b!3867347 m!4422927))

(declare-fun m!4422929 () Bool)

(assert (=> b!3867328 m!4422929))

(declare-fun m!4422931 () Bool)

(assert (=> b!3867328 m!4422931))

(declare-fun m!4422933 () Bool)

(assert (=> b!3867328 m!4422933))

(declare-fun m!4422935 () Bool)

(assert (=> b!3867328 m!4422935))

(declare-fun m!4422937 () Bool)

(assert (=> b!3867328 m!4422937))

(declare-fun m!4422939 () Bool)

(assert (=> b!3867328 m!4422939))

(declare-fun m!4422941 () Bool)

(assert (=> b!3867328 m!4422941))

(declare-fun m!4422943 () Bool)

(assert (=> b!3867328 m!4422943))

(assert (=> b!3867328 m!4422933))

(declare-fun m!4422945 () Bool)

(assert (=> b!3867328 m!4422945))

(declare-fun m!4422947 () Bool)

(assert (=> b!3867328 m!4422947))

(declare-fun m!4422949 () Bool)

(assert (=> b!3867328 m!4422949))

(declare-fun m!4422951 () Bool)

(assert (=> b!3867328 m!4422951))

(declare-fun m!4422953 () Bool)

(assert (=> b!3867328 m!4422953))

(declare-fun m!4422955 () Bool)

(assert (=> b!3867328 m!4422955))

(assert (=> b!3867328 m!4422929))

(declare-fun m!4422957 () Bool)

(assert (=> b!3867361 m!4422957))

(declare-fun m!4422959 () Bool)

(assert (=> b!3867361 m!4422959))

(declare-fun m!4422961 () Bool)

(assert (=> b!3867352 m!4422961))

(declare-fun m!4422963 () Bool)

(assert (=> b!3867341 m!4422963))

(declare-fun m!4422965 () Bool)

(assert (=> b!3867341 m!4422965))

(declare-fun m!4422967 () Bool)

(assert (=> b!3867341 m!4422967))

(declare-fun m!4422969 () Bool)

(assert (=> b!3867340 m!4422969))

(declare-fun m!4422971 () Bool)

(assert (=> b!3867340 m!4422971))

(declare-fun m!4422973 () Bool)

(assert (=> b!3867362 m!4422973))

(declare-fun m!4422975 () Bool)

(assert (=> b!3867362 m!4422975))

(declare-fun m!4422977 () Bool)

(assert (=> b!3867362 m!4422977))

(declare-fun m!4422979 () Bool)

(assert (=> b!3867362 m!4422979))

(declare-fun m!4422981 () Bool)

(assert (=> b!3867362 m!4422981))

(declare-fun m!4422983 () Bool)

(assert (=> b!3867358 m!4422983))

(declare-fun m!4422985 () Bool)

(assert (=> b!3867358 m!4422985))

(declare-fun m!4422987 () Bool)

(assert (=> b!3867337 m!4422987))

(declare-fun m!4422989 () Bool)

(assert (=> b!3867337 m!4422989))

(declare-fun m!4422991 () Bool)

(assert (=> b!3867354 m!4422991))

(declare-fun m!4422993 () Bool)

(assert (=> b!3867336 m!4422993))

(declare-fun m!4422995 () Bool)

(assert (=> b!3867336 m!4422995))

(declare-fun m!4422997 () Bool)

(assert (=> b!3867346 m!4422997))

(declare-fun m!4422999 () Bool)

(assert (=> b!3867364 m!4422999))

(declare-fun m!4423001 () Bool)

(assert (=> b!3867330 m!4423001))

(declare-fun m!4423003 () Bool)

(assert (=> b!3867330 m!4423003))

(declare-fun m!4423005 () Bool)

(assert (=> b!3867330 m!4423005))

(declare-fun m!4423007 () Bool)

(assert (=> b!3867330 m!4423007))

(declare-fun m!4423009 () Bool)

(assert (=> b!3867330 m!4423009))

(declare-fun m!4423011 () Bool)

(assert (=> b!3867349 m!4423011))

(declare-fun m!4423013 () Bool)

(assert (=> b!3867342 m!4423013))

(declare-fun m!4423015 () Bool)

(assert (=> b!3867342 m!4423015))

(declare-fun m!4423017 () Bool)

(assert (=> b!3867342 m!4423017))

(declare-fun m!4423019 () Bool)

(assert (=> b!3867348 m!4423019))

(declare-fun m!4423021 () Bool)

(assert (=> b!3867329 m!4423021))

(declare-fun m!4423023 () Bool)

(assert (=> b!3867329 m!4423023))

(declare-fun m!4423025 () Bool)

(assert (=> bm!282667 m!4423025))

(assert (=> b!3867359 m!4423005))

(assert (=> b!3867359 m!4423001))

(declare-fun m!4423027 () Bool)

(assert (=> b!3867359 m!4423027))

(declare-fun m!4423029 () Bool)

(assert (=> b!3867359 m!4423029))

(declare-fun m!4423031 () Bool)

(assert (=> b!3867345 m!4423031))

(declare-fun m!4423033 () Bool)

(assert (=> b!3867350 m!4423033))

(declare-fun m!4423035 () Bool)

(assert (=> b!3867350 m!4423035))

(declare-fun m!4423037 () Bool)

(assert (=> b!3867355 m!4423037))

(declare-fun m!4423039 () Bool)

(assert (=> b!3867332 m!4423039))

(declare-fun m!4423041 () Bool)

(assert (=> b!3867331 m!4423041))

(declare-fun m!4423043 () Bool)

(assert (=> b!3867339 m!4423043))

(check-sat b_and!289755 (not b!3867350) (not b!3867328) (not b!3867359) (not b!3867333) (not b!3867364) (not b!3867340) b_and!289765 (not b!3867346) (not b!3867339) (not bm!282667) b_and!289763 (not b!3867347) b_and!289759 (not b!3867348) (not b!3867358) (not b_next!104997) (not b!3867349) (not b!3867338) (not b!3867352) (not b_next!105003) (not b!3867343) (not b_next!105001) (not b!3867329) (not b!3867353) (not b!3867360) (not b!3867330) (not b!3867361) (not b!3867341) (not b!3867342) (not b!3867334) (not b_next!105007) (not b!3867345) (not b!3867363) (not b_next!104999) (not b!3867336) (not b!3867362) b_and!289757 (not b!3867331) (not b_next!105005) b_and!289761 (not b!3867354) tp_is_empty!19513 (not b!3867335) (not b!3867337) (not b!3867332) (not b!3867368) (not b!3867355))
(check-sat b_and!289755 b_and!289759 (not b_next!104997) (not b_next!105007) (not b_next!104999) b_and!289761 b_and!289765 b_and!289763 (not b_next!105003) (not b_next!105001) b_and!289757 (not b_next!105005))
