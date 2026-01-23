; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!163666 () Bool)

(assert start!163666)

(declare-fun b!1683332 () Bool)

(declare-fun b_free!45591 () Bool)

(declare-fun b_next!46295 () Bool)

(assert (=> b!1683332 (= b_free!45591 (not b_next!46295))))

(declare-fun tp!483926 () Bool)

(declare-fun b_and!120301 () Bool)

(assert (=> b!1683332 (= tp!483926 b_and!120301)))

(declare-fun b_free!45593 () Bool)

(declare-fun b_next!46297 () Bool)

(assert (=> b!1683332 (= b_free!45593 (not b_next!46297))))

(declare-fun tp!483928 () Bool)

(declare-fun b_and!120303 () Bool)

(assert (=> b!1683332 (= tp!483928 b_and!120303)))

(declare-fun b!1683338 () Bool)

(declare-fun b_free!45595 () Bool)

(declare-fun b_next!46299 () Bool)

(assert (=> b!1683338 (= b_free!45595 (not b_next!46299))))

(declare-fun tp!483927 () Bool)

(declare-fun b_and!120305 () Bool)

(assert (=> b!1683338 (= tp!483927 b_and!120305)))

(declare-fun b_free!45597 () Bool)

(declare-fun b_next!46301 () Bool)

(assert (=> b!1683338 (= b_free!45597 (not b_next!46301))))

(declare-fun tp!483921 () Bool)

(declare-fun b_and!120307 () Bool)

(assert (=> b!1683338 (= tp!483921 b_and!120307)))

(declare-fun b!1683326 () Bool)

(declare-fun e!1077819 () Bool)

(declare-fun e!1077820 () Bool)

(assert (=> b!1683326 (= e!1077819 e!1077820)))

(declare-fun res!754580 () Bool)

(assert (=> b!1683326 (=> (not res!754580) (not e!1077820))))

(declare-datatypes ((C!9332 0))(
  ( (C!9333 (val!5262 Int)) )
))
(declare-datatypes ((List!18533 0))(
  ( (Nil!18463) (Cons!18463 (h!23864 C!9332) (t!154510 List!18533)) )
))
(declare-fun lt!638187 () List!18533)

(declare-fun lt!638182 () List!18533)

(assert (=> b!1683326 (= res!754580 (= lt!638187 lt!638182))))

(declare-fun lt!638185 () List!18533)

(declare-fun lt!638165 () List!18533)

(declare-fun ++!5051 (List!18533 List!18533) List!18533)

(assert (=> b!1683326 (= lt!638182 (++!5051 lt!638185 lt!638165))))

(declare-datatypes ((IArray!12305 0))(
  ( (IArray!12306 (innerList!6210 List!18533)) )
))
(declare-datatypes ((Conc!6150 0))(
  ( (Node!6150 (left!14761 Conc!6150) (right!15091 Conc!6150) (csize!12530 Int) (cheight!6361 Int)) (Leaf!8996 (xs!9006 IArray!12305) (csize!12531 Int)) (Empty!6150) )
))
(declare-datatypes ((BalanceConc!12244 0))(
  ( (BalanceConc!12245 (c!274779 Conc!6150)) )
))
(declare-fun lt!638167 () BalanceConc!12244)

(declare-fun list!7415 (BalanceConc!12244) List!18533)

(assert (=> b!1683326 (= lt!638187 (list!7415 lt!638167))))

(declare-fun lt!638174 () BalanceConc!12244)

(assert (=> b!1683326 (= lt!638165 (list!7415 lt!638174))))

(declare-fun lt!638184 () BalanceConc!12244)

(assert (=> b!1683326 (= lt!638185 (list!7415 lt!638184))))

(declare-datatypes ((List!18534 0))(
  ( (Nil!18464) (Cons!18464 (h!23865 (_ BitVec 16)) (t!154511 List!18534)) )
))
(declare-datatypes ((TokenValue!3341 0))(
  ( (FloatLiteralValue!6682 (text!23832 List!18534)) (TokenValueExt!3340 (__x!11984 Int)) (Broken!16705 (value!102300 List!18534)) (Object!3410) (End!3341) (Def!3341) (Underscore!3341) (Match!3341) (Else!3341) (Error!3341) (Case!3341) (If!3341) (Extends!3341) (Abstract!3341) (Class!3341) (Val!3341) (DelimiterValue!6682 (del!3401 List!18534)) (KeywordValue!3347 (value!102301 List!18534)) (CommentValue!6682 (value!102302 List!18534)) (WhitespaceValue!6682 (value!102303 List!18534)) (IndentationValue!3341 (value!102304 List!18534)) (String!21036) (Int32!3341) (Broken!16706 (value!102305 List!18534)) (Boolean!3342) (Unit!31712) (OperatorValue!3344 (op!3401 List!18534)) (IdentifierValue!6682 (value!102306 List!18534)) (IdentifierValue!6683 (value!102307 List!18534)) (WhitespaceValue!6683 (value!102308 List!18534)) (True!6682) (False!6682) (Broken!16707 (value!102309 List!18534)) (Broken!16708 (value!102310 List!18534)) (True!6683) (RightBrace!3341) (RightBracket!3341) (Colon!3341) (Null!3341) (Comma!3341) (LeftBracket!3341) (False!6683) (LeftBrace!3341) (ImaginaryLiteralValue!3341 (text!23833 List!18534)) (StringLiteralValue!10023 (value!102311 List!18534)) (EOFValue!3341 (value!102312 List!18534)) (IdentValue!3341 (value!102313 List!18534)) (DelimiterValue!6683 (value!102314 List!18534)) (DedentValue!3341 (value!102315 List!18534)) (NewLineValue!3341 (value!102316 List!18534)) (IntegerValue!10023 (value!102317 (_ BitVec 32)) (text!23834 List!18534)) (IntegerValue!10024 (value!102318 Int) (text!23835 List!18534)) (Times!3341) (Or!3341) (Equal!3341) (Minus!3341) (Broken!16709 (value!102319 List!18534)) (And!3341) (Div!3341) (LessEqual!3341) (Mod!3341) (Concat!7920) (Not!3341) (Plus!3341) (SpaceValue!3341 (value!102320 List!18534)) (IntegerValue!10025 (value!102321 Int) (text!23836 List!18534)) (StringLiteralValue!10024 (text!23837 List!18534)) (FloatLiteralValue!6683 (text!23838 List!18534)) (BytesLiteralValue!3341 (value!102322 List!18534)) (CommentValue!6683 (value!102323 List!18534)) (StringLiteralValue!10025 (value!102324 List!18534)) (ErrorTokenValue!3341 (msg!3402 List!18534)) )
))
(declare-datatypes ((Regex!4579 0))(
  ( (ElementMatch!4579 (c!274780 C!9332)) (Concat!7921 (regOne!9670 Regex!4579) (regTwo!9670 Regex!4579)) (EmptyExpr!4579) (Star!4579 (reg!4908 Regex!4579)) (EmptyLang!4579) (Union!4579 (regOne!9671 Regex!4579) (regTwo!9671 Regex!4579)) )
))
(declare-datatypes ((String!21037 0))(
  ( (String!21038 (value!102325 String)) )
))
(declare-datatypes ((TokenValueInjection!6342 0))(
  ( (TokenValueInjection!6343 (toValue!4726 Int) (toChars!4585 Int)) )
))
(declare-datatypes ((Rule!6302 0))(
  ( (Rule!6303 (regex!3251 Regex!4579) (tag!3539 String!21037) (isSeparator!3251 Bool) (transformation!3251 TokenValueInjection!6342)) )
))
(declare-datatypes ((Token!6068 0))(
  ( (Token!6069 (value!102326 TokenValue!3341) (rule!5151 Rule!6302) (size!14700 Int) (originalCharacters!4065 List!18533)) )
))
(declare-datatypes ((List!18535 0))(
  ( (Nil!18465) (Cons!18465 (h!23866 Token!6068) (t!154512 List!18535)) )
))
(declare-fun tokens!457 () List!18535)

(declare-fun charsOf!1900 (Token!6068) BalanceConc!12244)

(assert (=> b!1683326 (= lt!638184 (charsOf!1900 (h!23866 tokens!457)))))

(declare-datatypes ((IArray!12307 0))(
  ( (IArray!12308 (innerList!6211 List!18535)) )
))
(declare-datatypes ((Conc!6151 0))(
  ( (Node!6151 (left!14762 Conc!6151) (right!15092 Conc!6151) (csize!12532 Int) (cheight!6362 Int)) (Leaf!8997 (xs!9007 IArray!12307) (csize!12533 Int)) (Empty!6151) )
))
(declare-datatypes ((BalanceConc!12246 0))(
  ( (BalanceConc!12247 (c!274781 Conc!6151)) )
))
(declare-datatypes ((tuple2!18198 0))(
  ( (tuple2!18199 (_1!10501 BalanceConc!12246) (_2!10501 BalanceConc!12244)) )
))
(declare-fun lt!638177 () tuple2!18198)

(declare-datatypes ((List!18536 0))(
  ( (Nil!18466) (Cons!18466 (h!23867 Rule!6302) (t!154513 List!18536)) )
))
(declare-fun rules!1846 () List!18536)

(declare-datatypes ((LexerInterface!2880 0))(
  ( (LexerInterfaceExt!2877 (__x!11985 Int)) (Lexer!2878) )
))
(declare-fun thiss!17113 () LexerInterface!2880)

(declare-fun lex!1364 (LexerInterface!2880 List!18536 BalanceConc!12244) tuple2!18198)

(assert (=> b!1683326 (= lt!638177 (lex!1364 thiss!17113 rules!1846 lt!638174))))

(declare-fun lt!638183 () BalanceConc!12246)

(declare-fun print!1411 (LexerInterface!2880 BalanceConc!12246) BalanceConc!12244)

(assert (=> b!1683326 (= lt!638174 (print!1411 thiss!17113 lt!638183))))

(declare-fun seqFromList!2239 (List!18535) BalanceConc!12246)

(assert (=> b!1683326 (= lt!638183 (seqFromList!2239 (t!154512 tokens!457)))))

(assert (=> b!1683326 (= lt!638167 (print!1411 thiss!17113 (seqFromList!2239 tokens!457)))))

(declare-fun e!1077815 () Bool)

(declare-fun e!1077832 () Bool)

(declare-fun b!1683327 () Bool)

(declare-fun tp!483924 () Bool)

(declare-fun inv!23825 (Token!6068) Bool)

(assert (=> b!1683327 (= e!1077815 (and (inv!23825 (h!23866 tokens!457)) e!1077832 tp!483924))))

(declare-fun e!1077829 () Bool)

(declare-fun b!1683328 () Bool)

(declare-datatypes ((tuple2!18200 0))(
  ( (tuple2!18201 (_1!10502 Token!6068) (_2!10502 List!18533)) )
))
(declare-datatypes ((Option!3558 0))(
  ( (None!3557) (Some!3557 (v!24868 tuple2!18200)) )
))
(declare-fun isDefined!2907 (Option!3558) Bool)

(declare-fun maxPrefix!1440 (LexerInterface!2880 List!18536 List!18533) Option!3558)

(assert (=> b!1683328 (= e!1077829 (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun res!754585 () Bool)

(assert (=> start!163666 (=> (not res!754585) (not e!1077819))))

(get-info :version)

(assert (=> start!163666 (= res!754585 ((_ is Lexer!2878) thiss!17113))))

(assert (=> start!163666 e!1077819))

(assert (=> start!163666 true))

(declare-fun e!1077830 () Bool)

(assert (=> start!163666 e!1077830))

(assert (=> start!163666 e!1077815))

(declare-fun b!1683329 () Bool)

(declare-fun res!754579 () Bool)

(declare-fun e!1077831 () Bool)

(assert (=> b!1683329 (=> res!754579 e!1077831)))

(declare-fun rulesProduceIndividualToken!1528 (LexerInterface!2880 List!18536 Token!6068) Bool)

(assert (=> b!1683329 (= res!754579 (not (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 tokens!457))))))

(declare-fun b!1683330 () Bool)

(declare-fun res!754588 () Bool)

(declare-fun e!1077826 () Bool)

(assert (=> b!1683330 (=> res!754588 e!1077826)))

(declare-fun separableTokensPredicate!820 (LexerInterface!2880 Token!6068 Token!6068 List!18536) Bool)

(assert (=> b!1683330 (= res!754588 (not (separableTokensPredicate!820 thiss!17113 (h!23866 tokens!457) (h!23866 (t!154512 tokens!457)) rules!1846)))))

(declare-fun b!1683331 () Bool)

(declare-fun e!1077817 () Bool)

(assert (=> b!1683331 (= e!1077817 e!1077826)))

(declare-fun res!754576 () Bool)

(assert (=> b!1683331 (=> res!754576 e!1077826)))

(declare-fun lt!638172 () List!18535)

(declare-fun lt!638173 () List!18535)

(declare-fun lt!638168 () List!18535)

(assert (=> b!1683331 (= res!754576 (or (not (= lt!638173 lt!638168)) (not (= lt!638168 lt!638172))))))

(declare-fun list!7416 (BalanceConc!12246) List!18535)

(assert (=> b!1683331 (= lt!638168 (list!7416 lt!638183))))

(assert (=> b!1683331 (= lt!638173 lt!638172)))

(declare-fun prepend!845 (BalanceConc!12246 Token!6068) BalanceConc!12246)

(assert (=> b!1683331 (= lt!638172 (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457)))))))

(declare-datatypes ((Unit!31713 0))(
  ( (Unit!31714) )
))
(declare-fun lt!638170 () Unit!31713)

(declare-fun seqFromListBHdTlConstructive!320 (Token!6068 List!18535 BalanceConc!12246) Unit!31713)

(assert (=> b!1683331 (= lt!638170 (seqFromListBHdTlConstructive!320 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)) (_1!10501 lt!638177)))))

(declare-fun e!1077834 () Bool)

(assert (=> b!1683332 (= e!1077834 (and tp!483926 tp!483928))))

(declare-fun b!1683333 () Bool)

(declare-fun e!1077827 () Bool)

(assert (=> b!1683333 (= e!1077827 e!1077829)))

(declare-fun res!754589 () Bool)

(assert (=> b!1683333 (=> res!754589 e!1077829)))

(declare-datatypes ((tuple2!18202 0))(
  ( (tuple2!18203 (_1!10503 Token!6068) (_2!10503 BalanceConc!12244)) )
))
(declare-datatypes ((Option!3559 0))(
  ( (None!3558) (Some!3558 (v!24869 tuple2!18202)) )
))
(declare-fun isDefined!2908 (Option!3559) Bool)

(declare-fun maxPrefixZipperSequence!751 (LexerInterface!2880 List!18536 BalanceConc!12244) Option!3559)

(declare-fun seqFromList!2240 (List!18533) BalanceConc!12244)

(assert (=> b!1683333 (= res!754589 (not (isDefined!2908 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(declare-fun e!1077828 () Bool)

(assert (=> b!1683333 e!1077828))

(declare-fun res!754578 () Bool)

(assert (=> b!1683333 (=> (not res!754578) (not e!1077828))))

(assert (=> b!1683333 (= res!754578 (= lt!638185 (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun e!1077825 () Bool)

(declare-fun tp!483922 () Bool)

(declare-fun b!1683334 () Bool)

(declare-fun e!1077823 () Bool)

(declare-fun inv!23822 (String!21037) Bool)

(declare-fun inv!23826 (TokenValueInjection!6342) Bool)

(assert (=> b!1683334 (= e!1077825 (and tp!483922 (inv!23822 (tag!3539 (h!23867 rules!1846))) (inv!23826 (transformation!3251 (h!23867 rules!1846))) e!1077823))))

(declare-fun b!1683335 () Bool)

(declare-fun res!754573 () Bool)

(assert (=> b!1683335 (=> res!754573 e!1077831)))

(declare-fun isEmpty!11536 (BalanceConc!12246) Bool)

(assert (=> b!1683335 (= res!754573 (isEmpty!11536 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185)))))))

(declare-fun b!1683336 () Bool)

(declare-fun res!754571 () Bool)

(assert (=> b!1683336 (=> (not res!754571) (not e!1077819))))

(declare-fun rulesInvariant!2549 (LexerInterface!2880 List!18536) Bool)

(assert (=> b!1683336 (= res!754571 (rulesInvariant!2549 thiss!17113 rules!1846))))

(declare-fun b!1683337 () Bool)

(declare-fun tp!483923 () Bool)

(assert (=> b!1683337 (= e!1077830 (and e!1077825 tp!483923))))

(assert (=> b!1683338 (= e!1077823 (and tp!483927 tp!483921))))

(declare-fun b!1683339 () Bool)

(declare-fun e!1077833 () Bool)

(assert (=> b!1683339 (= e!1077831 e!1077833)))

(declare-fun res!754586 () Bool)

(assert (=> b!1683339 (=> res!754586 e!1077833)))

(declare-fun lt!638181 () Option!3558)

(assert (=> b!1683339 (= res!754586 (not (isDefined!2907 lt!638181)))))

(declare-fun lt!638179 () Unit!31713)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!442 (LexerInterface!2880 List!18536 List!18533 List!18533) Unit!31713)

(assert (=> b!1683339 (= lt!638179 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!442 thiss!17113 rules!1846 lt!638185 lt!638165))))

(declare-fun b!1683340 () Bool)

(declare-fun e!1077822 () Bool)

(assert (=> b!1683340 (= e!1077833 e!1077822)))

(declare-fun res!754584 () Bool)

(assert (=> b!1683340 (=> res!754584 e!1077822)))

(declare-fun lt!638178 () Regex!4579)

(declare-fun lt!638169 () BalanceConc!12244)

(declare-fun prefixMatchZipperSequence!689 (Regex!4579 BalanceConc!12244) Bool)

(declare-fun ++!5052 (BalanceConc!12244 BalanceConc!12244) BalanceConc!12244)

(assert (=> b!1683340 (= res!754584 (prefixMatchZipperSequence!689 lt!638178 (++!5052 lt!638184 lt!638169)))))

(declare-fun singletonSeq!1770 (C!9332) BalanceConc!12244)

(declare-fun apply!5017 (BalanceConc!12244 Int) C!9332)

(assert (=> b!1683340 (= lt!638169 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)))))

(declare-fun rulesRegex!633 (LexerInterface!2880 List!18536) Regex!4579)

(assert (=> b!1683340 (= lt!638178 (rulesRegex!633 thiss!17113 rules!1846))))

(declare-fun b!1683341 () Bool)

(declare-fun res!754582 () Bool)

(assert (=> b!1683341 (=> (not res!754582) (not e!1077819))))

(declare-fun isEmpty!11537 (List!18536) Bool)

(assert (=> b!1683341 (= res!754582 (not (isEmpty!11537 rules!1846)))))

(declare-fun tp!483925 () Bool)

(declare-fun e!1077816 () Bool)

(declare-fun b!1683342 () Bool)

(assert (=> b!1683342 (= e!1077816 (and tp!483925 (inv!23822 (tag!3539 (rule!5151 (h!23866 tokens!457)))) (inv!23826 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) e!1077834))))

(declare-fun b!1683343 () Bool)

(declare-fun lt!638186 () List!18533)

(declare-fun head!3765 (BalanceConc!12244) C!9332)

(assert (=> b!1683343 (= e!1077828 (= lt!638186 (Cons!18463 (head!3765 lt!638174) Nil!18463)))))

(declare-fun b!1683344 () Bool)

(assert (=> b!1683344 (= e!1077826 e!1077831)))

(declare-fun res!754581 () Bool)

(assert (=> b!1683344 (=> res!754581 e!1077831)))

(declare-fun lt!638171 () List!18533)

(declare-fun lt!638175 () List!18533)

(assert (=> b!1683344 (= res!754581 (or (not (= lt!638171 lt!638175)) (not (= lt!638175 lt!638185)) (not (= lt!638171 lt!638185))))))

(declare-fun printList!993 (LexerInterface!2880 List!18535) List!18533)

(assert (=> b!1683344 (= lt!638175 (printList!993 thiss!17113 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))

(declare-fun lt!638166 () BalanceConc!12244)

(assert (=> b!1683344 (= lt!638171 (list!7415 lt!638166))))

(declare-fun lt!638180 () BalanceConc!12246)

(declare-fun printTailRec!931 (LexerInterface!2880 BalanceConc!12246 Int BalanceConc!12244) BalanceConc!12244)

(assert (=> b!1683344 (= lt!638166 (printTailRec!931 thiss!17113 lt!638180 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> b!1683344 (= lt!638166 (print!1411 thiss!17113 lt!638180))))

(declare-fun singletonSeq!1771 (Token!6068) BalanceConc!12246)

(assert (=> b!1683344 (= lt!638180 (singletonSeq!1771 (h!23866 tokens!457)))))

(assert (=> b!1683344 (= lt!638181 (maxPrefix!1440 thiss!17113 rules!1846 lt!638187))))

(declare-fun b!1683345 () Bool)

(declare-fun res!754587 () Bool)

(assert (=> b!1683345 (=> (not res!754587) (not e!1077819))))

(declare-fun rulesProduceEachTokenIndividuallyList!1082 (LexerInterface!2880 List!18536 List!18535) Bool)

(assert (=> b!1683345 (= res!754587 (rulesProduceEachTokenIndividuallyList!1082 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1683346 () Bool)

(assert (=> b!1683346 (= e!1077820 (not e!1077817))))

(declare-fun res!754572 () Bool)

(assert (=> b!1683346 (=> res!754572 e!1077817)))

(assert (=> b!1683346 (= res!754572 (not (= lt!638173 (t!154512 tokens!457))))))

(assert (=> b!1683346 (= lt!638173 (list!7416 (_1!10501 lt!638177)))))

(declare-fun lt!638176 () Unit!31713)

(declare-fun theoremInvertabilityWhenTokenListSeparable!317 (LexerInterface!2880 List!18536 List!18535) Unit!31713)

(assert (=> b!1683346 (= lt!638176 (theoremInvertabilityWhenTokenListSeparable!317 thiss!17113 rules!1846 (t!154512 tokens!457)))))

(declare-fun isPrefix!1509 (List!18533 List!18533) Bool)

(assert (=> b!1683346 (isPrefix!1509 lt!638185 lt!638182)))

(declare-fun lt!638188 () Unit!31713)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1030 (List!18533 List!18533) Unit!31713)

(assert (=> b!1683346 (= lt!638188 (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!638185 lt!638165))))

(declare-fun b!1683347 () Bool)

(declare-fun res!754583 () Bool)

(assert (=> b!1683347 (=> (not res!754583) (not e!1077819))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!573 (LexerInterface!2880 List!18535 List!18536) Bool)

(assert (=> b!1683347 (= res!754583 (tokensListTwoByTwoPredicateSeparableList!573 thiss!17113 tokens!457 rules!1846))))

(declare-fun b!1683348 () Bool)

(declare-fun tp!483920 () Bool)

(declare-fun inv!21 (TokenValue!3341) Bool)

(assert (=> b!1683348 (= e!1077832 (and (inv!21 (value!102326 (h!23866 tokens!457))) e!1077816 tp!483920))))

(declare-fun b!1683349 () Bool)

(assert (=> b!1683349 (= e!1077822 e!1077827)))

(declare-fun res!754577 () Bool)

(assert (=> b!1683349 (=> res!754577 e!1077827)))

(declare-fun prefixMatch!492 (Regex!4579 List!18533) Bool)

(assert (=> b!1683349 (= res!754577 (prefixMatch!492 lt!638178 (++!5051 lt!638185 lt!638186)))))

(assert (=> b!1683349 (= lt!638186 (list!7415 lt!638169))))

(declare-fun b!1683350 () Bool)

(declare-fun res!754575 () Bool)

(assert (=> b!1683350 (=> (not res!754575) (not e!1077828))))

(declare-fun head!3766 (List!18533) C!9332)

(assert (=> b!1683350 (= res!754575 (= lt!638186 (Cons!18463 (head!3766 lt!638165) Nil!18463)))))

(declare-fun b!1683351 () Bool)

(declare-fun res!754570 () Bool)

(assert (=> b!1683351 (=> (not res!754570) (not e!1077819))))

(assert (=> b!1683351 (= res!754570 (and (not ((_ is Nil!18465) tokens!457)) (not ((_ is Nil!18465) (t!154512 tokens!457)))))))

(declare-fun b!1683352 () Bool)

(declare-fun res!754574 () Bool)

(assert (=> b!1683352 (=> (not res!754574) (not e!1077828))))

(assert (=> b!1683352 (= res!754574 (= lt!638186 (Cons!18463 (head!3766 (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))) Nil!18463)))))

(assert (= (and start!163666 res!754585) b!1683341))

(assert (= (and b!1683341 res!754582) b!1683336))

(assert (= (and b!1683336 res!754571) b!1683345))

(assert (= (and b!1683345 res!754587) b!1683347))

(assert (= (and b!1683347 res!754583) b!1683351))

(assert (= (and b!1683351 res!754570) b!1683326))

(assert (= (and b!1683326 res!754580) b!1683346))

(assert (= (and b!1683346 (not res!754572)) b!1683331))

(assert (= (and b!1683331 (not res!754576)) b!1683330))

(assert (= (and b!1683330 (not res!754588)) b!1683344))

(assert (= (and b!1683344 (not res!754581)) b!1683329))

(assert (= (and b!1683329 (not res!754579)) b!1683335))

(assert (= (and b!1683335 (not res!754573)) b!1683339))

(assert (= (and b!1683339 (not res!754586)) b!1683340))

(assert (= (and b!1683340 (not res!754584)) b!1683349))

(assert (= (and b!1683349 (not res!754577)) b!1683333))

(assert (= (and b!1683333 res!754578) b!1683352))

(assert (= (and b!1683352 res!754574) b!1683350))

(assert (= (and b!1683350 res!754575) b!1683343))

(assert (= (and b!1683333 (not res!754589)) b!1683328))

(assert (= b!1683334 b!1683338))

(assert (= b!1683337 b!1683334))

(assert (= (and start!163666 ((_ is Cons!18466) rules!1846)) b!1683337))

(assert (= b!1683342 b!1683332))

(assert (= b!1683348 b!1683342))

(assert (= b!1683327 b!1683348))

(assert (= (and start!163666 ((_ is Cons!18465) tokens!457)) b!1683327))

(declare-fun m!2063443 () Bool)

(assert (=> b!1683334 m!2063443))

(declare-fun m!2063445 () Bool)

(assert (=> b!1683334 m!2063445))

(declare-fun m!2063447 () Bool)

(assert (=> b!1683335 m!2063447))

(assert (=> b!1683335 m!2063447))

(declare-fun m!2063449 () Bool)

(assert (=> b!1683335 m!2063449))

(declare-fun m!2063451 () Bool)

(assert (=> b!1683335 m!2063451))

(declare-fun m!2063453 () Bool)

(assert (=> b!1683343 m!2063453))

(declare-fun m!2063455 () Bool)

(assert (=> b!1683347 m!2063455))

(declare-fun m!2063457 () Bool)

(assert (=> b!1683344 m!2063457))

(declare-fun m!2063459 () Bool)

(assert (=> b!1683344 m!2063459))

(declare-fun m!2063461 () Bool)

(assert (=> b!1683344 m!2063461))

(declare-fun m!2063463 () Bool)

(assert (=> b!1683344 m!2063463))

(declare-fun m!2063465 () Bool)

(assert (=> b!1683344 m!2063465))

(declare-fun m!2063467 () Bool)

(assert (=> b!1683344 m!2063467))

(declare-fun m!2063469 () Bool)

(assert (=> b!1683326 m!2063469))

(declare-fun m!2063471 () Bool)

(assert (=> b!1683326 m!2063471))

(declare-fun m!2063473 () Bool)

(assert (=> b!1683326 m!2063473))

(declare-fun m!2063475 () Bool)

(assert (=> b!1683326 m!2063475))

(declare-fun m!2063477 () Bool)

(assert (=> b!1683326 m!2063477))

(declare-fun m!2063479 () Bool)

(assert (=> b!1683326 m!2063479))

(declare-fun m!2063481 () Bool)

(assert (=> b!1683326 m!2063481))

(declare-fun m!2063483 () Bool)

(assert (=> b!1683326 m!2063483))

(assert (=> b!1683326 m!2063475))

(declare-fun m!2063485 () Bool)

(assert (=> b!1683326 m!2063485))

(declare-fun m!2063487 () Bool)

(assert (=> b!1683326 m!2063487))

(declare-fun m!2063489 () Bool)

(assert (=> b!1683349 m!2063489))

(assert (=> b!1683349 m!2063489))

(declare-fun m!2063491 () Bool)

(assert (=> b!1683349 m!2063491))

(declare-fun m!2063493 () Bool)

(assert (=> b!1683349 m!2063493))

(declare-fun m!2063495 () Bool)

(assert (=> b!1683350 m!2063495))

(declare-fun m!2063497 () Bool)

(assert (=> b!1683333 m!2063497))

(assert (=> b!1683333 m!2063497))

(declare-fun m!2063499 () Bool)

(assert (=> b!1683333 m!2063499))

(assert (=> b!1683333 m!2063499))

(declare-fun m!2063501 () Bool)

(assert (=> b!1683333 m!2063501))

(declare-fun m!2063503 () Bool)

(assert (=> b!1683336 m!2063503))

(declare-fun m!2063505 () Bool)

(assert (=> b!1683341 m!2063505))

(declare-fun m!2063507 () Bool)

(assert (=> b!1683328 m!2063507))

(assert (=> b!1683328 m!2063507))

(declare-fun m!2063509 () Bool)

(assert (=> b!1683328 m!2063509))

(declare-fun m!2063511 () Bool)

(assert (=> b!1683331 m!2063511))

(declare-fun m!2063513 () Bool)

(assert (=> b!1683331 m!2063513))

(declare-fun m!2063515 () Bool)

(assert (=> b!1683331 m!2063515))

(declare-fun m!2063517 () Bool)

(assert (=> b!1683331 m!2063517))

(declare-fun m!2063519 () Bool)

(assert (=> b!1683331 m!2063519))

(assert (=> b!1683331 m!2063515))

(assert (=> b!1683331 m!2063517))

(declare-fun m!2063521 () Bool)

(assert (=> b!1683352 m!2063521))

(declare-fun m!2063523 () Bool)

(assert (=> b!1683339 m!2063523))

(declare-fun m!2063525 () Bool)

(assert (=> b!1683339 m!2063525))

(declare-fun m!2063527 () Bool)

(assert (=> b!1683329 m!2063527))

(declare-fun m!2063529 () Bool)

(assert (=> b!1683346 m!2063529))

(declare-fun m!2063531 () Bool)

(assert (=> b!1683346 m!2063531))

(declare-fun m!2063533 () Bool)

(assert (=> b!1683346 m!2063533))

(declare-fun m!2063535 () Bool)

(assert (=> b!1683346 m!2063535))

(declare-fun m!2063537 () Bool)

(assert (=> b!1683330 m!2063537))

(declare-fun m!2063539 () Bool)

(assert (=> b!1683342 m!2063539))

(declare-fun m!2063541 () Bool)

(assert (=> b!1683342 m!2063541))

(declare-fun m!2063543 () Bool)

(assert (=> b!1683345 m!2063543))

(declare-fun m!2063545 () Bool)

(assert (=> b!1683340 m!2063545))

(declare-fun m!2063547 () Bool)

(assert (=> b!1683340 m!2063547))

(declare-fun m!2063549 () Bool)

(assert (=> b!1683340 m!2063549))

(declare-fun m!2063551 () Bool)

(assert (=> b!1683340 m!2063551))

(declare-fun m!2063553 () Bool)

(assert (=> b!1683340 m!2063553))

(assert (=> b!1683340 m!2063551))

(assert (=> b!1683340 m!2063553))

(declare-fun m!2063555 () Bool)

(assert (=> b!1683340 m!2063555))

(assert (=> b!1683340 m!2063547))

(declare-fun m!2063557 () Bool)

(assert (=> b!1683348 m!2063557))

(declare-fun m!2063559 () Bool)

(assert (=> b!1683327 m!2063559))

(check-sat b_and!120303 (not b!1683350) (not b!1683326) (not b!1683347) b_and!120307 (not b!1683337) (not b!1683333) (not b!1683331) (not b_next!46295) (not b!1683352) (not b!1683339) (not b!1683336) (not b!1683340) b_and!120301 (not b_next!46301) (not b!1683345) (not b!1683342) (not b!1683328) (not b!1683346) (not b!1683343) (not b!1683335) (not b!1683327) (not b!1683349) (not b!1683341) (not b_next!46297) (not b!1683334) (not b!1683330) b_and!120305 (not b_next!46299) (not b!1683329) (not b!1683348) (not b!1683344))
(check-sat b_and!120303 b_and!120307 (not b_next!46297) (not b_next!46295) b_and!120301 (not b_next!46301) b_and!120305 (not b_next!46299))
(get-model)

(declare-fun d!512122 () Bool)

(declare-fun lt!638194 () Bool)

(declare-fun isEmpty!11544 (List!18535) Bool)

(assert (=> d!512122 (= lt!638194 (isEmpty!11544 (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(declare-fun isEmpty!11545 (Conc!6151) Bool)

(assert (=> d!512122 (= lt!638194 (isEmpty!11545 (c!274781 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(assert (=> d!512122 (= (isEmpty!11536 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185)))) lt!638194)))

(declare-fun bs!399333 () Bool)

(assert (= bs!399333 d!512122))

(declare-fun m!2063579 () Bool)

(assert (=> bs!399333 m!2063579))

(assert (=> bs!399333 m!2063579))

(declare-fun m!2063581 () Bool)

(assert (=> bs!399333 m!2063581))

(declare-fun m!2063583 () Bool)

(assert (=> bs!399333 m!2063583))

(assert (=> b!1683335 d!512122))

(declare-fun b!1683431 () Bool)

(declare-fun e!1077885 () Bool)

(declare-fun lt!638227 () tuple2!18198)

(assert (=> b!1683431 (= e!1077885 (not (isEmpty!11536 (_1!10501 lt!638227))))))

(declare-fun e!1077884 () Bool)

(declare-fun b!1683432 () Bool)

(declare-datatypes ((tuple2!18206 0))(
  ( (tuple2!18207 (_1!10505 List!18535) (_2!10505 List!18533)) )
))
(declare-fun lexList!905 (LexerInterface!2880 List!18536 List!18533) tuple2!18206)

(assert (=> b!1683432 (= e!1077884 (= (list!7415 (_2!10501 lt!638227)) (_2!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 lt!638185))))))))

(declare-fun d!512124 () Bool)

(assert (=> d!512124 e!1077884))

(declare-fun res!754638 () Bool)

(assert (=> d!512124 (=> (not res!754638) (not e!1077884))))

(declare-fun e!1077883 () Bool)

(assert (=> d!512124 (= res!754638 e!1077883)))

(declare-fun c!274799 () Bool)

(declare-fun size!14704 (BalanceConc!12246) Int)

(assert (=> d!512124 (= c!274799 (> (size!14704 (_1!10501 lt!638227)) 0))))

(declare-fun lexTailRecV2!628 (LexerInterface!2880 List!18536 BalanceConc!12244 BalanceConc!12244 BalanceConc!12244 BalanceConc!12246) tuple2!18198)

(assert (=> d!512124 (= lt!638227 (lexTailRecV2!628 thiss!17113 rules!1846 (seqFromList!2240 lt!638185) (BalanceConc!12245 Empty!6150) (seqFromList!2240 lt!638185) (BalanceConc!12247 Empty!6151)))))

(assert (=> d!512124 (= (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185)) lt!638227)))

(declare-fun b!1683433 () Bool)

(assert (=> b!1683433 (= e!1077883 (= (_2!10501 lt!638227) (seqFromList!2240 lt!638185)))))

(declare-fun b!1683434 () Bool)

(assert (=> b!1683434 (= e!1077883 e!1077885)))

(declare-fun res!754640 () Bool)

(declare-fun size!14705 (BalanceConc!12244) Int)

(assert (=> b!1683434 (= res!754640 (< (size!14705 (_2!10501 lt!638227)) (size!14705 (seqFromList!2240 lt!638185))))))

(assert (=> b!1683434 (=> (not res!754640) (not e!1077885))))

(declare-fun b!1683435 () Bool)

(declare-fun res!754639 () Bool)

(assert (=> b!1683435 (=> (not res!754639) (not e!1077884))))

(assert (=> b!1683435 (= res!754639 (= (list!7416 (_1!10501 lt!638227)) (_1!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 lt!638185))))))))

(assert (= (and d!512124 c!274799) b!1683434))

(assert (= (and d!512124 (not c!274799)) b!1683433))

(assert (= (and b!1683434 res!754640) b!1683431))

(assert (= (and d!512124 res!754638) b!1683435))

(assert (= (and b!1683435 res!754639) b!1683432))

(declare-fun m!2063659 () Bool)

(assert (=> b!1683431 m!2063659))

(declare-fun m!2063661 () Bool)

(assert (=> b!1683435 m!2063661))

(assert (=> b!1683435 m!2063447))

(declare-fun m!2063663 () Bool)

(assert (=> b!1683435 m!2063663))

(assert (=> b!1683435 m!2063663))

(declare-fun m!2063665 () Bool)

(assert (=> b!1683435 m!2063665))

(declare-fun m!2063667 () Bool)

(assert (=> b!1683432 m!2063667))

(assert (=> b!1683432 m!2063447))

(assert (=> b!1683432 m!2063663))

(assert (=> b!1683432 m!2063663))

(assert (=> b!1683432 m!2063665))

(declare-fun m!2063669 () Bool)

(assert (=> b!1683434 m!2063669))

(assert (=> b!1683434 m!2063447))

(declare-fun m!2063671 () Bool)

(assert (=> b!1683434 m!2063671))

(declare-fun m!2063673 () Bool)

(assert (=> d!512124 m!2063673))

(assert (=> d!512124 m!2063447))

(assert (=> d!512124 m!2063447))

(declare-fun m!2063675 () Bool)

(assert (=> d!512124 m!2063675))

(assert (=> b!1683335 d!512124))

(declare-fun d!512144 () Bool)

(declare-fun fromListB!1025 (List!18533) BalanceConc!12244)

(assert (=> d!512144 (= (seqFromList!2240 lt!638185) (fromListB!1025 lt!638185))))

(declare-fun bs!399337 () Bool)

(assert (= bs!399337 d!512144))

(declare-fun m!2063677 () Bool)

(assert (=> bs!399337 m!2063677))

(assert (=> b!1683335 d!512144))

(declare-fun d!512146 () Bool)

(declare-fun res!754643 () Bool)

(declare-fun e!1077888 () Bool)

(assert (=> d!512146 (=> (not res!754643) (not e!1077888))))

(declare-fun rulesValid!1204 (LexerInterface!2880 List!18536) Bool)

(assert (=> d!512146 (= res!754643 (rulesValid!1204 thiss!17113 rules!1846))))

(assert (=> d!512146 (= (rulesInvariant!2549 thiss!17113 rules!1846) e!1077888)))

(declare-fun b!1683438 () Bool)

(declare-datatypes ((List!18538 0))(
  ( (Nil!18468) (Cons!18468 (h!23869 String!21037) (t!154557 List!18538)) )
))
(declare-fun noDuplicateTag!1204 (LexerInterface!2880 List!18536 List!18538) Bool)

(assert (=> b!1683438 (= e!1077888 (noDuplicateTag!1204 thiss!17113 rules!1846 Nil!18468))))

(assert (= (and d!512146 res!754643) b!1683438))

(declare-fun m!2063679 () Bool)

(assert (=> d!512146 m!2063679))

(declare-fun m!2063681 () Bool)

(assert (=> b!1683438 m!2063681))

(assert (=> b!1683336 d!512146))

(declare-fun d!512148 () Bool)

(declare-fun isEmpty!11546 (Option!3559) Bool)

(assert (=> d!512148 (= (isDefined!2908 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))) (not (isEmpty!11546 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(declare-fun bs!399338 () Bool)

(assert (= bs!399338 d!512148))

(assert (=> bs!399338 m!2063499))

(declare-fun m!2063683 () Bool)

(assert (=> bs!399338 m!2063683))

(assert (=> b!1683333 d!512148))

(declare-fun call!107591 () Option!3559)

(declare-fun bm!107586 () Bool)

(declare-fun maxPrefixOneRuleZipperSequence!360 (LexerInterface!2880 Rule!6302 BalanceConc!12244) Option!3559)

(assert (=> bm!107586 (= call!107591 (maxPrefixOneRuleZipperSequence!360 thiss!17113 (h!23867 rules!1846) (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun b!1683482 () Bool)

(declare-fun e!1077917 () Bool)

(declare-fun e!1077914 () Bool)

(assert (=> b!1683482 (= e!1077917 e!1077914)))

(declare-fun res!754676 () Bool)

(assert (=> b!1683482 (=> (not res!754676) (not e!1077914))))

(declare-fun lt!638279 () Option!3559)

(declare-fun get!5413 (Option!3559) tuple2!18202)

(declare-fun get!5414 (Option!3558) tuple2!18200)

(assert (=> b!1683482 (= res!754676 (= (_1!10503 (get!5413 lt!638279)) (_1!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1683483 () Bool)

(declare-fun e!1077916 () Bool)

(declare-fun e!1077913 () Bool)

(assert (=> b!1683483 (= e!1077916 e!1077913)))

(declare-fun res!754678 () Bool)

(assert (=> b!1683483 (=> (not res!754678) (not e!1077913))))

(declare-fun maxPrefixZipper!368 (LexerInterface!2880 List!18536 List!18533) Option!3558)

(assert (=> b!1683483 (= res!754678 (= (_1!10503 (get!5413 lt!638279)) (_1!10502 (get!5414 (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1683484 () Bool)

(declare-fun res!754677 () Bool)

(declare-fun e!1077918 () Bool)

(assert (=> b!1683484 (=> (not res!754677) (not e!1077918))))

(assert (=> b!1683484 (= res!754677 e!1077916)))

(declare-fun res!754674 () Bool)

(assert (=> b!1683484 (=> res!754674 e!1077916)))

(assert (=> b!1683484 (= res!754674 (not (isDefined!2908 lt!638279)))))

(declare-fun b!1683485 () Bool)

(assert (=> b!1683485 (= e!1077913 (= (list!7415 (_2!10503 (get!5413 lt!638279))) (_2!10502 (get!5414 (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1683487 () Bool)

(declare-fun e!1077915 () Option!3559)

(assert (=> b!1683487 (= e!1077915 call!107591)))

(declare-fun d!512150 () Bool)

(assert (=> d!512150 e!1077918))

(declare-fun res!754673 () Bool)

(assert (=> d!512150 (=> (not res!754673) (not e!1077918))))

(assert (=> d!512150 (= res!754673 (= (isDefined!2908 lt!638279) (isDefined!2907 (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))))

(assert (=> d!512150 (= lt!638279 e!1077915)))

(declare-fun c!274807 () Bool)

(assert (=> d!512150 (= c!274807 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!638274 () Unit!31713)

(declare-fun lt!638277 () Unit!31713)

(assert (=> d!512150 (= lt!638274 lt!638277)))

(declare-fun lt!638278 () List!18533)

(declare-fun lt!638273 () List!18533)

(assert (=> d!512150 (isPrefix!1509 lt!638278 lt!638273)))

(declare-fun lemmaIsPrefixRefl!1028 (List!18533 List!18533) Unit!31713)

(assert (=> d!512150 (= lt!638277 (lemmaIsPrefixRefl!1028 lt!638278 lt!638273))))

(assert (=> d!512150 (= lt!638273 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!512150 (= lt!638278 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun rulesValidInductive!1050 (LexerInterface!2880 List!18536) Bool)

(assert (=> d!512150 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512150 (= (maxPrefixZipperSequence!751 thiss!17113 rules!1846 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) lt!638279)))

(declare-fun b!1683486 () Bool)

(declare-fun lt!638276 () Option!3559)

(declare-fun lt!638275 () Option!3559)

(assert (=> b!1683486 (= e!1077915 (ite (and ((_ is None!3558) lt!638276) ((_ is None!3558) lt!638275)) None!3558 (ite ((_ is None!3558) lt!638275) lt!638276 (ite ((_ is None!3558) lt!638276) lt!638275 (ite (>= (size!14700 (_1!10503 (v!24869 lt!638276))) (size!14700 (_1!10503 (v!24869 lt!638275)))) lt!638276 lt!638275)))))))

(assert (=> b!1683486 (= lt!638276 call!107591)))

(assert (=> b!1683486 (= lt!638275 (maxPrefixZipperSequence!751 thiss!17113 (t!154513 rules!1846) (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun b!1683488 () Bool)

(assert (=> b!1683488 (= e!1077914 (= (list!7415 (_2!10503 (get!5413 lt!638279))) (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1683489 () Bool)

(assert (=> b!1683489 (= e!1077918 e!1077917)))

(declare-fun res!754675 () Bool)

(assert (=> b!1683489 (=> res!754675 e!1077917)))

(assert (=> b!1683489 (= res!754675 (not (isDefined!2908 lt!638279)))))

(assert (= (and d!512150 c!274807) b!1683487))

(assert (= (and d!512150 (not c!274807)) b!1683486))

(assert (= (or b!1683487 b!1683486) bm!107586))

(assert (= (and d!512150 res!754673) b!1683484))

(assert (= (and b!1683484 (not res!754674)) b!1683483))

(assert (= (and b!1683483 res!754678) b!1683485))

(assert (= (and b!1683484 res!754677) b!1683489))

(assert (= (and b!1683489 (not res!754675)) b!1683482))

(assert (= (and b!1683482 res!754676) b!1683488))

(declare-fun m!2063725 () Bool)

(assert (=> b!1683482 m!2063725))

(assert (=> b!1683482 m!2063497))

(declare-fun m!2063727 () Bool)

(assert (=> b!1683482 m!2063727))

(assert (=> b!1683482 m!2063727))

(declare-fun m!2063729 () Bool)

(assert (=> b!1683482 m!2063729))

(assert (=> b!1683482 m!2063729))

(declare-fun m!2063731 () Bool)

(assert (=> b!1683482 m!2063731))

(assert (=> b!1683486 m!2063497))

(declare-fun m!2063733 () Bool)

(assert (=> b!1683486 m!2063733))

(assert (=> b!1683485 m!2063725))

(declare-fun m!2063735 () Bool)

(assert (=> b!1683485 m!2063735))

(assert (=> b!1683485 m!2063497))

(assert (=> b!1683485 m!2063727))

(assert (=> b!1683485 m!2063727))

(declare-fun m!2063737 () Bool)

(assert (=> b!1683485 m!2063737))

(assert (=> b!1683485 m!2063737))

(declare-fun m!2063739 () Bool)

(assert (=> b!1683485 m!2063739))

(assert (=> bm!107586 m!2063497))

(declare-fun m!2063741 () Bool)

(assert (=> bm!107586 m!2063741))

(assert (=> b!1683488 m!2063729))

(assert (=> b!1683488 m!2063731))

(assert (=> b!1683488 m!2063725))

(assert (=> b!1683488 m!2063735))

(assert (=> b!1683488 m!2063497))

(assert (=> b!1683488 m!2063727))

(assert (=> b!1683488 m!2063727))

(assert (=> b!1683488 m!2063729))

(declare-fun m!2063743 () Bool)

(assert (=> d!512150 m!2063743))

(declare-fun m!2063745 () Bool)

(assert (=> d!512150 m!2063745))

(assert (=> d!512150 m!2063497))

(assert (=> d!512150 m!2063727))

(assert (=> d!512150 m!2063727))

(assert (=> d!512150 m!2063737))

(assert (=> d!512150 m!2063737))

(declare-fun m!2063747 () Bool)

(assert (=> d!512150 m!2063747))

(declare-fun m!2063749 () Bool)

(assert (=> d!512150 m!2063749))

(declare-fun m!2063751 () Bool)

(assert (=> d!512150 m!2063751))

(assert (=> b!1683484 m!2063745))

(assert (=> b!1683489 m!2063745))

(assert (=> b!1683483 m!2063725))

(assert (=> b!1683483 m!2063497))

(assert (=> b!1683483 m!2063727))

(assert (=> b!1683483 m!2063727))

(assert (=> b!1683483 m!2063737))

(assert (=> b!1683483 m!2063737))

(assert (=> b!1683483 m!2063739))

(assert (=> b!1683333 d!512150))

(declare-fun d!512156 () Bool)

(assert (=> d!512156 (= (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))) (fromListB!1025 (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun bs!399340 () Bool)

(assert (= bs!399340 d!512156))

(declare-fun m!2063753 () Bool)

(assert (=> bs!399340 m!2063753))

(assert (=> b!1683333 d!512156))

(declare-fun d!512158 () Bool)

(assert (=> d!512158 (= (inv!23822 (tag!3539 (h!23867 rules!1846))) (= (mod (str.len (value!102325 (tag!3539 (h!23867 rules!1846)))) 2) 0))))

(assert (=> b!1683334 d!512158))

(declare-fun d!512160 () Bool)

(declare-fun res!754688 () Bool)

(declare-fun e!1077924 () Bool)

(assert (=> d!512160 (=> (not res!754688) (not e!1077924))))

(declare-fun semiInverseModEq!1275 (Int Int) Bool)

(assert (=> d!512160 (= res!754688 (semiInverseModEq!1275 (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (h!23867 rules!1846)))))))

(assert (=> d!512160 (= (inv!23826 (transformation!3251 (h!23867 rules!1846))) e!1077924)))

(declare-fun b!1683501 () Bool)

(declare-fun equivClasses!1216 (Int Int) Bool)

(assert (=> b!1683501 (= e!1077924 (equivClasses!1216 (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (h!23867 rules!1846)))))))

(assert (= (and d!512160 res!754688) b!1683501))

(declare-fun m!2063789 () Bool)

(assert (=> d!512160 m!2063789))

(declare-fun m!2063791 () Bool)

(assert (=> b!1683501 m!2063791))

(assert (=> b!1683334 d!512160))

(declare-fun d!512164 () Bool)

(assert (=> d!512164 (= (separableTokensPredicate!820 thiss!17113 (h!23866 tokens!457) (h!23866 (t!154512 tokens!457)) rules!1846) (not (prefixMatchZipperSequence!689 (rulesRegex!633 thiss!17113 rules!1846) (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))))))

(declare-fun bs!399344 () Bool)

(assert (= bs!399344 d!512164))

(assert (=> bs!399344 m!2063545))

(declare-fun m!2063815 () Bool)

(assert (=> bs!399344 m!2063815))

(declare-fun m!2063817 () Bool)

(assert (=> bs!399344 m!2063817))

(assert (=> bs!399344 m!2063553))

(assert (=> bs!399344 m!2063555))

(assert (=> bs!399344 m!2063551))

(assert (=> bs!399344 m!2063553))

(assert (=> bs!399344 m!2063545))

(assert (=> bs!399344 m!2063471))

(assert (=> bs!399344 m!2063555))

(assert (=> bs!399344 m!2063815))

(assert (=> bs!399344 m!2063551))

(assert (=> bs!399344 m!2063471))

(assert (=> b!1683330 d!512164))

(declare-fun d!512176 () Bool)

(assert (=> d!512176 (= (head!3766 (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))) (h!23864 (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))))))

(assert (=> b!1683352 d!512176))

(declare-fun d!512178 () Bool)

(declare-fun list!7419 (Conc!6151) List!18535)

(assert (=> d!512178 (= (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457)))) (list!7419 (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457))))))))

(declare-fun bs!399345 () Bool)

(assert (= bs!399345 d!512178))

(declare-fun m!2063819 () Bool)

(assert (=> bs!399345 m!2063819))

(assert (=> b!1683331 d!512178))

(declare-fun d!512180 () Bool)

(declare-fun fromListB!1027 (List!18535) BalanceConc!12246)

(assert (=> d!512180 (= (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (fromListB!1027 (t!154512 (t!154512 tokens!457))))))

(declare-fun bs!399346 () Bool)

(assert (= bs!399346 d!512180))

(declare-fun m!2063821 () Bool)

(assert (=> bs!399346 m!2063821))

(assert (=> b!1683331 d!512180))

(declare-fun d!512182 () Bool)

(assert (=> d!512182 (= (list!7416 lt!638183) (list!7419 (c!274781 lt!638183)))))

(declare-fun bs!399347 () Bool)

(assert (= bs!399347 d!512182))

(declare-fun m!2063823 () Bool)

(assert (=> bs!399347 m!2063823))

(assert (=> b!1683331 d!512182))

(declare-fun d!512184 () Bool)

(assert (=> d!512184 (= (list!7416 (_1!10501 lt!638177)) (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!638293 () Unit!31713)

(declare-fun choose!10169 (Token!6068 List!18535 BalanceConc!12246) Unit!31713)

(assert (=> d!512184 (= lt!638293 (choose!10169 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)) (_1!10501 lt!638177)))))

(declare-fun $colon$colon!403 (List!18535 Token!6068) List!18535)

(assert (=> d!512184 (= (list!7416 (_1!10501 lt!638177)) (list!7416 (seqFromList!2239 ($colon$colon!403 (t!154512 (t!154512 tokens!457)) (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!512184 (= (seqFromListBHdTlConstructive!320 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)) (_1!10501 lt!638177)) lt!638293)))

(declare-fun bs!399348 () Bool)

(assert (= bs!399348 d!512184))

(assert (=> bs!399348 m!2063529))

(declare-fun m!2063825 () Bool)

(assert (=> bs!399348 m!2063825))

(declare-fun m!2063827 () Bool)

(assert (=> bs!399348 m!2063827))

(assert (=> bs!399348 m!2063515))

(declare-fun m!2063829 () Bool)

(assert (=> bs!399348 m!2063829))

(assert (=> bs!399348 m!2063825))

(assert (=> bs!399348 m!2063829))

(assert (=> bs!399348 m!2063515))

(assert (=> bs!399348 m!2063517))

(assert (=> bs!399348 m!2063517))

(assert (=> bs!399348 m!2063519))

(declare-fun m!2063831 () Bool)

(assert (=> bs!399348 m!2063831))

(assert (=> b!1683331 d!512184))

(declare-fun d!512186 () Bool)

(declare-fun e!1077933 () Bool)

(assert (=> d!512186 e!1077933))

(declare-fun res!754694 () Bool)

(assert (=> d!512186 (=> (not res!754694) (not e!1077933))))

(declare-fun isBalanced!1924 (Conc!6151) Bool)

(declare-fun prepend!846 (Conc!6151 Token!6068) Conc!6151)

(assert (=> d!512186 (= res!754694 (isBalanced!1924 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!638296 () BalanceConc!12246)

(assert (=> d!512186 (= lt!638296 (BalanceConc!12247 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!512186 (= (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457))) lt!638296)))

(declare-fun b!1683513 () Bool)

(assert (=> b!1683513 (= e!1077933 (= (list!7416 lt!638296) (Cons!18465 (h!23866 (t!154512 tokens!457)) (list!7416 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))))))))

(assert (= (and d!512186 res!754694) b!1683513))

(declare-fun m!2063833 () Bool)

(assert (=> d!512186 m!2063833))

(assert (=> d!512186 m!2063833))

(declare-fun m!2063835 () Bool)

(assert (=> d!512186 m!2063835))

(declare-fun m!2063837 () Bool)

(assert (=> b!1683513 m!2063837))

(assert (=> b!1683513 m!2063515))

(declare-fun m!2063839 () Bool)

(assert (=> b!1683513 m!2063839))

(assert (=> b!1683331 d!512186))

(declare-fun d!512188 () Bool)

(declare-fun res!754699 () Bool)

(declare-fun e!1077936 () Bool)

(assert (=> d!512188 (=> (not res!754699) (not e!1077936))))

(declare-fun isEmpty!11547 (List!18533) Bool)

(assert (=> d!512188 (= res!754699 (not (isEmpty!11547 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!512188 (= (inv!23825 (h!23866 tokens!457)) e!1077936)))

(declare-fun b!1683518 () Bool)

(declare-fun res!754700 () Bool)

(assert (=> b!1683518 (=> (not res!754700) (not e!1077936))))

(declare-fun dynLambda!8361 (Int TokenValue!3341) BalanceConc!12244)

(assert (=> b!1683518 (= res!754700 (= (originalCharacters!4065 (h!23866 tokens!457)) (list!7415 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))))))

(declare-fun b!1683519 () Bool)

(declare-fun size!14706 (List!18533) Int)

(assert (=> b!1683519 (= e!1077936 (= (size!14700 (h!23866 tokens!457)) (size!14706 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (= (and d!512188 res!754699) b!1683518))

(assert (= (and b!1683518 res!754700) b!1683519))

(declare-fun b_lambda!52951 () Bool)

(assert (=> (not b_lambda!52951) (not b!1683518)))

(declare-fun t!154520 () Bool)

(declare-fun tb!97603 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) t!154520) tb!97603))

(declare-fun b!1683524 () Bool)

(declare-fun e!1077939 () Bool)

(declare-fun tp!483934 () Bool)

(declare-fun inv!23829 (Conc!6150) Bool)

(assert (=> b!1683524 (= e!1077939 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))) tp!483934))))

(declare-fun result!117660 () Bool)

(declare-fun inv!23830 (BalanceConc!12244) Bool)

(assert (=> tb!97603 (= result!117660 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))) e!1077939))))

(assert (= tb!97603 b!1683524))

(declare-fun m!2063841 () Bool)

(assert (=> b!1683524 m!2063841))

(declare-fun m!2063843 () Bool)

(assert (=> tb!97603 m!2063843))

(assert (=> b!1683518 t!154520))

(declare-fun b_and!120313 () Bool)

(assert (= b_and!120303 (and (=> t!154520 result!117660) b_and!120313)))

(declare-fun t!154522 () Bool)

(declare-fun tb!97605 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) t!154522) tb!97605))

(declare-fun result!117664 () Bool)

(assert (= result!117664 result!117660))

(assert (=> b!1683518 t!154522))

(declare-fun b_and!120315 () Bool)

(assert (= b_and!120307 (and (=> t!154522 result!117664) b_and!120315)))

(declare-fun m!2063845 () Bool)

(assert (=> d!512188 m!2063845))

(declare-fun m!2063847 () Bool)

(assert (=> b!1683518 m!2063847))

(assert (=> b!1683518 m!2063847))

(declare-fun m!2063849 () Bool)

(assert (=> b!1683518 m!2063849))

(declare-fun m!2063851 () Bool)

(assert (=> b!1683519 m!2063851))

(assert (=> b!1683327 d!512188))

(declare-fun d!512190 () Bool)

(declare-fun isEmpty!11548 (Option!3558) Bool)

(assert (=> d!512190 (= (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 tokens!457)))) (not (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 tokens!457))))))))

(declare-fun bs!399349 () Bool)

(assert (= bs!399349 d!512190))

(assert (=> bs!399349 m!2063507))

(declare-fun m!2063853 () Bool)

(assert (=> bs!399349 m!2063853))

(assert (=> b!1683328 d!512190))

(declare-fun b!1683559 () Bool)

(declare-fun res!754727 () Bool)

(declare-fun e!1077959 () Bool)

(assert (=> b!1683559 (=> (not res!754727) (not e!1077959))))

(declare-fun lt!638321 () Option!3558)

(assert (=> b!1683559 (= res!754727 (< (size!14706 (_2!10502 (get!5414 lt!638321))) (size!14706 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun d!512192 () Bool)

(declare-fun e!1077958 () Bool)

(assert (=> d!512192 e!1077958))

(declare-fun res!754731 () Bool)

(assert (=> d!512192 (=> res!754731 e!1077958)))

(assert (=> d!512192 (= res!754731 (isEmpty!11548 lt!638321))))

(declare-fun e!1077960 () Option!3558)

(assert (=> d!512192 (= lt!638321 e!1077960)))

(declare-fun c!274817 () Bool)

(assert (=> d!512192 (= c!274817 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!638322 () Unit!31713)

(declare-fun lt!638324 () Unit!31713)

(assert (=> d!512192 (= lt!638322 lt!638324)))

(assert (=> d!512192 (isPrefix!1509 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457)))))

(assert (=> d!512192 (= lt!638324 (lemmaIsPrefixRefl!1028 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (=> d!512192 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512192 (= (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 tokens!457))) lt!638321)))

(declare-fun call!107597 () Option!3558)

(declare-fun bm!107592 () Bool)

(declare-fun maxPrefixOneRule!843 (LexerInterface!2880 Rule!6302 List!18533) Option!3558)

(assert (=> bm!107592 (= call!107597 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun b!1683560 () Bool)

(declare-fun contains!3242 (List!18536 Rule!6302) Bool)

(assert (=> b!1683560 (= e!1077959 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!638321)))))))

(declare-fun b!1683561 () Bool)

(assert (=> b!1683561 (= e!1077960 call!107597)))

(declare-fun b!1683562 () Bool)

(declare-fun res!754730 () Bool)

(assert (=> b!1683562 (=> (not res!754730) (not e!1077959))))

(assert (=> b!1683562 (= res!754730 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!638321)))))))

(declare-fun b!1683563 () Bool)

(assert (=> b!1683563 (= e!1077958 e!1077959)))

(declare-fun res!754728 () Bool)

(assert (=> b!1683563 (=> (not res!754728) (not e!1077959))))

(assert (=> b!1683563 (= res!754728 (isDefined!2907 lt!638321))))

(declare-fun b!1683564 () Bool)

(declare-fun res!754732 () Bool)

(assert (=> b!1683564 (=> (not res!754732) (not e!1077959))))

(declare-fun apply!5021 (TokenValueInjection!6342 BalanceConc!12244) TokenValue!3341)

(assert (=> b!1683564 (= res!754732 (= (value!102326 (_1!10502 (get!5414 lt!638321))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638321)))))))))

(declare-fun b!1683565 () Bool)

(declare-fun res!754729 () Bool)

(assert (=> b!1683565 (=> (not res!754729) (not e!1077959))))

(declare-fun matchR!2070 (Regex!4579 List!18533) Bool)

(assert (=> b!1683565 (= res!754729 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))))))

(declare-fun b!1683566 () Bool)

(declare-fun res!754733 () Bool)

(assert (=> b!1683566 (=> (not res!754733) (not e!1077959))))

(assert (=> b!1683566 (= res!754733 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))) (_2!10502 (get!5414 lt!638321))) (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun b!1683567 () Bool)

(declare-fun lt!638325 () Option!3558)

(declare-fun lt!638323 () Option!3558)

(assert (=> b!1683567 (= e!1077960 (ite (and ((_ is None!3557) lt!638325) ((_ is None!3557) lt!638323)) None!3557 (ite ((_ is None!3557) lt!638323) lt!638325 (ite ((_ is None!3557) lt!638325) lt!638323 (ite (>= (size!14700 (_1!10502 (v!24868 lt!638325))) (size!14700 (_1!10502 (v!24868 lt!638323)))) lt!638325 lt!638323)))))))

(assert (=> b!1683567 (= lt!638325 call!107597)))

(assert (=> b!1683567 (= lt!638323 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (= (and d!512192 c!274817) b!1683561))

(assert (= (and d!512192 (not c!274817)) b!1683567))

(assert (= (or b!1683561 b!1683567) bm!107592))

(assert (= (and d!512192 (not res!754731)) b!1683563))

(assert (= (and b!1683563 res!754728) b!1683562))

(assert (= (and b!1683562 res!754730) b!1683559))

(assert (= (and b!1683559 res!754727) b!1683566))

(assert (= (and b!1683566 res!754733) b!1683564))

(assert (= (and b!1683564 res!754732) b!1683565))

(assert (= (and b!1683565 res!754729) b!1683560))

(declare-fun m!2063855 () Bool)

(assert (=> b!1683564 m!2063855))

(declare-fun m!2063857 () Bool)

(assert (=> b!1683564 m!2063857))

(assert (=> b!1683564 m!2063857))

(declare-fun m!2063859 () Bool)

(assert (=> b!1683564 m!2063859))

(assert (=> b!1683562 m!2063855))

(declare-fun m!2063861 () Bool)

(assert (=> b!1683562 m!2063861))

(assert (=> b!1683562 m!2063861))

(declare-fun m!2063863 () Bool)

(assert (=> b!1683562 m!2063863))

(assert (=> b!1683566 m!2063855))

(assert (=> b!1683566 m!2063861))

(assert (=> b!1683566 m!2063861))

(assert (=> b!1683566 m!2063863))

(assert (=> b!1683566 m!2063863))

(declare-fun m!2063865 () Bool)

(assert (=> b!1683566 m!2063865))

(declare-fun m!2063867 () Bool)

(assert (=> bm!107592 m!2063867))

(assert (=> b!1683560 m!2063855))

(declare-fun m!2063869 () Bool)

(assert (=> b!1683560 m!2063869))

(assert (=> b!1683565 m!2063855))

(assert (=> b!1683565 m!2063861))

(assert (=> b!1683565 m!2063861))

(assert (=> b!1683565 m!2063863))

(assert (=> b!1683565 m!2063863))

(declare-fun m!2063871 () Bool)

(assert (=> b!1683565 m!2063871))

(declare-fun m!2063873 () Bool)

(assert (=> d!512192 m!2063873))

(declare-fun m!2063875 () Bool)

(assert (=> d!512192 m!2063875))

(declare-fun m!2063877 () Bool)

(assert (=> d!512192 m!2063877))

(assert (=> d!512192 m!2063751))

(declare-fun m!2063879 () Bool)

(assert (=> b!1683567 m!2063879))

(declare-fun m!2063881 () Bool)

(assert (=> b!1683563 m!2063881))

(assert (=> b!1683559 m!2063855))

(declare-fun m!2063883 () Bool)

(assert (=> b!1683559 m!2063883))

(assert (=> b!1683559 m!2063851))

(assert (=> b!1683328 d!512192))

(declare-fun d!512194 () Bool)

(declare-fun c!274822 () Bool)

(assert (=> d!512194 (= c!274822 (isEmpty!11547 (++!5051 lt!638185 lt!638186)))))

(declare-fun e!1077971 () Bool)

(assert (=> d!512194 (= (prefixMatch!492 lt!638178 (++!5051 lt!638185 lt!638186)) e!1077971)))

(declare-fun b!1683584 () Bool)

(declare-fun lostCause!486 (Regex!4579) Bool)

(assert (=> b!1683584 (= e!1077971 (not (lostCause!486 lt!638178)))))

(declare-fun b!1683585 () Bool)

(declare-fun derivativeStep!1138 (Regex!4579 C!9332) Regex!4579)

(declare-fun tail!2512 (List!18533) List!18533)

(assert (=> b!1683585 (= e!1077971 (prefixMatch!492 (derivativeStep!1138 lt!638178 (head!3766 (++!5051 lt!638185 lt!638186))) (tail!2512 (++!5051 lt!638185 lt!638186))))))

(assert (= (and d!512194 c!274822) b!1683584))

(assert (= (and d!512194 (not c!274822)) b!1683585))

(assert (=> d!512194 m!2063489))

(declare-fun m!2063937 () Bool)

(assert (=> d!512194 m!2063937))

(declare-fun m!2063939 () Bool)

(assert (=> b!1683584 m!2063939))

(assert (=> b!1683585 m!2063489))

(declare-fun m!2063941 () Bool)

(assert (=> b!1683585 m!2063941))

(assert (=> b!1683585 m!2063941))

(declare-fun m!2063943 () Bool)

(assert (=> b!1683585 m!2063943))

(assert (=> b!1683585 m!2063489))

(declare-fun m!2063945 () Bool)

(assert (=> b!1683585 m!2063945))

(assert (=> b!1683585 m!2063943))

(assert (=> b!1683585 m!2063945))

(declare-fun m!2063947 () Bool)

(assert (=> b!1683585 m!2063947))

(assert (=> b!1683349 d!512194))

(declare-fun b!1683599 () Bool)

(declare-fun e!1077979 () List!18533)

(assert (=> b!1683599 (= e!1077979 lt!638186)))

(declare-fun d!512206 () Bool)

(declare-fun e!1077980 () Bool)

(assert (=> d!512206 e!1077980))

(declare-fun res!754750 () Bool)

(assert (=> d!512206 (=> (not res!754750) (not e!1077980))))

(declare-fun lt!638341 () List!18533)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2597 (List!18533) (InoxSet C!9332))

(assert (=> d!512206 (= res!754750 (= (content!2597 lt!638341) ((_ map or) (content!2597 lt!638185) (content!2597 lt!638186))))))

(assert (=> d!512206 (= lt!638341 e!1077979)))

(declare-fun c!274826 () Bool)

(assert (=> d!512206 (= c!274826 ((_ is Nil!18463) lt!638185))))

(assert (=> d!512206 (= (++!5051 lt!638185 lt!638186) lt!638341)))

(declare-fun b!1683602 () Bool)

(assert (=> b!1683602 (= e!1077980 (or (not (= lt!638186 Nil!18463)) (= lt!638341 lt!638185)))))

(declare-fun b!1683601 () Bool)

(declare-fun res!754749 () Bool)

(assert (=> b!1683601 (=> (not res!754749) (not e!1077980))))

(assert (=> b!1683601 (= res!754749 (= (size!14706 lt!638341) (+ (size!14706 lt!638185) (size!14706 lt!638186))))))

(declare-fun b!1683600 () Bool)

(assert (=> b!1683600 (= e!1077979 (Cons!18463 (h!23864 lt!638185) (++!5051 (t!154510 lt!638185) lt!638186)))))

(assert (= (and d!512206 c!274826) b!1683599))

(assert (= (and d!512206 (not c!274826)) b!1683600))

(assert (= (and d!512206 res!754750) b!1683601))

(assert (= (and b!1683601 res!754749) b!1683602))

(declare-fun m!2063973 () Bool)

(assert (=> d!512206 m!2063973))

(declare-fun m!2063975 () Bool)

(assert (=> d!512206 m!2063975))

(declare-fun m!2063977 () Bool)

(assert (=> d!512206 m!2063977))

(declare-fun m!2063979 () Bool)

(assert (=> b!1683601 m!2063979))

(declare-fun m!2063981 () Bool)

(assert (=> b!1683601 m!2063981))

(declare-fun m!2063983 () Bool)

(assert (=> b!1683601 m!2063983))

(declare-fun m!2063985 () Bool)

(assert (=> b!1683600 m!2063985))

(assert (=> b!1683349 d!512206))

(declare-fun d!512218 () Bool)

(declare-fun list!7420 (Conc!6150) List!18533)

(assert (=> d!512218 (= (list!7415 lt!638169) (list!7420 (c!274779 lt!638169)))))

(declare-fun bs!399358 () Bool)

(assert (= bs!399358 d!512218))

(declare-fun m!2063991 () Bool)

(assert (=> bs!399358 m!2063991))

(assert (=> b!1683349 d!512218))

(declare-fun d!512224 () Bool)

(assert (=> d!512224 (= (head!3766 lt!638165) (h!23864 lt!638165))))

(assert (=> b!1683350 d!512224))

(declare-fun d!512226 () Bool)

(declare-fun lt!638347 () Bool)

(declare-fun e!1077986 () Bool)

(assert (=> d!512226 (= lt!638347 e!1077986)))

(declare-fun res!754759 () Bool)

(assert (=> d!512226 (=> (not res!754759) (not e!1077986))))

(assert (=> d!512226 (= res!754759 (= (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)))))) (list!7416 (singletonSeq!1771 (h!23866 tokens!457)))))))

(declare-fun e!1077985 () Bool)

(assert (=> d!512226 (= lt!638347 e!1077985)))

(declare-fun res!754757 () Bool)

(assert (=> d!512226 (=> (not res!754757) (not e!1077985))))

(declare-fun lt!638348 () tuple2!18198)

(assert (=> d!512226 (= res!754757 (= (size!14704 (_1!10501 lt!638348)) 1))))

(assert (=> d!512226 (= lt!638348 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)))))))

(assert (=> d!512226 (not (isEmpty!11537 rules!1846))))

(assert (=> d!512226 (= (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 tokens!457)) lt!638347)))

(declare-fun b!1683609 () Bool)

(declare-fun res!754758 () Bool)

(assert (=> b!1683609 (=> (not res!754758) (not e!1077985))))

(declare-fun apply!5022 (BalanceConc!12246 Int) Token!6068)

(assert (=> b!1683609 (= res!754758 (= (apply!5022 (_1!10501 lt!638348) 0) (h!23866 tokens!457)))))

(declare-fun b!1683610 () Bool)

(declare-fun isEmpty!11549 (BalanceConc!12244) Bool)

(assert (=> b!1683610 (= e!1077985 (isEmpty!11549 (_2!10501 lt!638348)))))

(declare-fun b!1683611 () Bool)

(assert (=> b!1683611 (= e!1077986 (isEmpty!11549 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)))))))))

(assert (= (and d!512226 res!754757) b!1683609))

(assert (= (and b!1683609 res!754758) b!1683610))

(assert (= (and d!512226 res!754759) b!1683611))

(assert (=> d!512226 m!2063505))

(assert (=> d!512226 m!2063465))

(declare-fun m!2063995 () Bool)

(assert (=> d!512226 m!2063995))

(assert (=> d!512226 m!2063465))

(declare-fun m!2063997 () Bool)

(assert (=> d!512226 m!2063997))

(assert (=> d!512226 m!2063465))

(declare-fun m!2063999 () Bool)

(assert (=> d!512226 m!2063999))

(declare-fun m!2064001 () Bool)

(assert (=> d!512226 m!2064001))

(assert (=> d!512226 m!2063995))

(declare-fun m!2064003 () Bool)

(assert (=> d!512226 m!2064003))

(declare-fun m!2064005 () Bool)

(assert (=> b!1683609 m!2064005))

(declare-fun m!2064007 () Bool)

(assert (=> b!1683610 m!2064007))

(assert (=> b!1683611 m!2063465))

(assert (=> b!1683611 m!2063465))

(assert (=> b!1683611 m!2063995))

(assert (=> b!1683611 m!2063995))

(assert (=> b!1683611 m!2064003))

(declare-fun m!2064009 () Bool)

(assert (=> b!1683611 m!2064009))

(assert (=> b!1683329 d!512226))

(declare-fun d!512230 () Bool)

(assert (=> d!512230 (= (list!7416 (_1!10501 lt!638177)) (list!7419 (c!274781 (_1!10501 lt!638177))))))

(declare-fun bs!399360 () Bool)

(assert (= bs!399360 d!512230))

(declare-fun m!2064011 () Bool)

(assert (=> bs!399360 m!2064011))

(assert (=> b!1683346 d!512230))

(declare-fun d!512232 () Bool)

(declare-fun e!1078006 () Bool)

(assert (=> d!512232 e!1078006))

(declare-fun res!754777 () Bool)

(assert (=> d!512232 (=> (not res!754777) (not e!1078006))))

(assert (=> d!512232 (= res!754777 (= (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457)))))) (t!154512 tokens!457)))))

(declare-fun lt!638505 () Unit!31713)

(declare-fun e!1078007 () Unit!31713)

(assert (=> d!512232 (= lt!638505 e!1078007)))

(declare-fun c!274832 () Bool)

(assert (=> d!512232 (= c!274832 (or ((_ is Nil!18465) (t!154512 tokens!457)) ((_ is Nil!18465) (t!154512 (t!154512 tokens!457)))))))

(assert (=> d!512232 (not (isEmpty!11537 rules!1846))))

(assert (=> d!512232 (= (theoremInvertabilityWhenTokenListSeparable!317 thiss!17113 rules!1846 (t!154512 tokens!457)) lt!638505)))

(declare-fun b!1683639 () Bool)

(declare-fun Unit!31734 () Unit!31713)

(assert (=> b!1683639 (= e!1078007 Unit!31734)))

(declare-fun b!1683640 () Bool)

(declare-fun Unit!31735 () Unit!31713)

(assert (=> b!1683640 (= e!1078007 Unit!31735)))

(declare-fun lt!638496 () BalanceConc!12244)

(assert (=> b!1683640 (= lt!638496 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))))))

(declare-fun lt!638489 () BalanceConc!12244)

(assert (=> b!1683640 (= lt!638489 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))))))

(declare-fun lt!638493 () tuple2!18198)

(assert (=> b!1683640 (= lt!638493 (lex!1364 thiss!17113 rules!1846 lt!638489))))

(declare-fun lt!638506 () List!18533)

(assert (=> b!1683640 (= lt!638506 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!638504 () List!18533)

(assert (=> b!1683640 (= lt!638504 (list!7415 lt!638489))))

(declare-fun lt!638509 () Unit!31713)

(assert (=> b!1683640 (= lt!638509 (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!638506 lt!638504))))

(assert (=> b!1683640 (isPrefix!1509 lt!638506 (++!5051 lt!638506 lt!638504))))

(declare-fun lt!638490 () Unit!31713)

(assert (=> b!1683640 (= lt!638490 lt!638509)))

(declare-fun lt!638488 () Unit!31713)

(assert (=> b!1683640 (= lt!638488 (theoremInvertabilityWhenTokenListSeparable!317 thiss!17113 rules!1846 (t!154512 (t!154512 tokens!457))))))

(declare-fun lt!638507 () Unit!31713)

(assert (=> b!1683640 (= lt!638507 (seqFromListBHdTlConstructive!320 (h!23866 (t!154512 (t!154512 tokens!457))) (t!154512 (t!154512 (t!154512 tokens!457))) (_1!10501 lt!638493)))))

(assert (=> b!1683640 (= (list!7416 (_1!10501 lt!638493)) (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!638495 () Unit!31713)

(assert (=> b!1683640 (= lt!638495 lt!638507)))

(declare-fun lt!638498 () Option!3558)

(assert (=> b!1683640 (= lt!638498 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 lt!638496)))))

(assert (=> b!1683640 (= (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457)))) (printTailRec!931 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))) 0 (BalanceConc!12245 Empty!6150)))))

(declare-fun lt!638500 () Unit!31713)

(declare-fun Unit!31736 () Unit!31713)

(assert (=> b!1683640 (= lt!638500 Unit!31736)))

(declare-fun lt!638502 () Unit!31713)

(assert (=> b!1683640 (= lt!638502 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!442 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)))))

(assert (=> b!1683640 (= (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))))

(declare-fun lt!638487 () Unit!31713)

(declare-fun Unit!31737 () Unit!31713)

(assert (=> b!1683640 (= lt!638487 Unit!31737)))

(assert (=> b!1683640 (= (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0))) (Cons!18463 (head!3766 (originalCharacters!4065 (h!23866 (t!154512 (t!154512 tokens!457))))) Nil!18463))))

(declare-fun lt!638501 () Unit!31713)

(declare-fun Unit!31738 () Unit!31713)

(assert (=> b!1683640 (= lt!638501 Unit!31738)))

(assert (=> b!1683640 (= (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0))) (Cons!18463 (head!3766 (list!7415 lt!638489)) Nil!18463))))

(declare-fun lt!638510 () Unit!31713)

(declare-fun Unit!31739 () Unit!31713)

(assert (=> b!1683640 (= lt!638510 Unit!31739)))

(assert (=> b!1683640 (= (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0))) (Cons!18463 (head!3765 lt!638489) Nil!18463))))

(declare-fun lt!638508 () Unit!31713)

(declare-fun Unit!31740 () Unit!31713)

(assert (=> b!1683640 (= lt!638508 Unit!31740)))

(assert (=> b!1683640 (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!638499 () Unit!31713)

(declare-fun Unit!31741 () Unit!31713)

(assert (=> b!1683640 (= lt!638499 Unit!31741)))

(assert (=> b!1683640 (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun lt!638503 () Unit!31713)

(declare-fun Unit!31742 () Unit!31713)

(assert (=> b!1683640 (= lt!638503 Unit!31742)))

(declare-fun lt!638494 () Unit!31713)

(declare-fun Unit!31743 () Unit!31713)

(assert (=> b!1683640 (= lt!638494 Unit!31743)))

(assert (=> b!1683640 (= (_1!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))) (h!23866 (t!154512 tokens!457)))))

(declare-fun lt!638486 () Unit!31713)

(declare-fun Unit!31744 () Unit!31713)

(assert (=> b!1683640 (= lt!638486 Unit!31744)))

(assert (=> b!1683640 (isEmpty!11547 (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))))

(declare-fun lt!638485 () Unit!31713)

(declare-fun Unit!31745 () Unit!31713)

(assert (=> b!1683640 (= lt!638485 Unit!31745)))

(assert (=> b!1683640 (matchR!2070 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!638497 () Unit!31713)

(declare-fun Unit!31746 () Unit!31713)

(assert (=> b!1683640 (= lt!638497 Unit!31746)))

(assert (=> b!1683640 (= (rule!5151 (h!23866 (t!154512 tokens!457))) (rule!5151 (h!23866 (t!154512 tokens!457))))))

(declare-fun lt!638492 () Unit!31713)

(declare-fun Unit!31747 () Unit!31713)

(assert (=> b!1683640 (= lt!638492 Unit!31747)))

(declare-fun lt!638491 () Unit!31713)

(declare-fun lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!199 (LexerInterface!2880 List!18536 Token!6068 Rule!6302 List!18533) Unit!31713)

(assert (=> b!1683640 (= lt!638491 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!199 thiss!17113 rules!1846 (h!23866 (t!154512 tokens!457)) (rule!5151 (h!23866 (t!154512 tokens!457))) (list!7415 lt!638489)))))

(declare-fun b!1683641 () Bool)

(assert (=> b!1683641 (= e!1078006 (isEmpty!11549 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457)))))))))

(assert (= (and d!512232 c!274832) b!1683639))

(assert (= (and d!512232 (not c!274832)) b!1683640))

(assert (= (and d!512232 res!754777) b!1683641))

(declare-fun m!2064107 () Bool)

(assert (=> d!512232 m!2064107))

(declare-fun m!2064109 () Bool)

(assert (=> d!512232 m!2064109))

(declare-fun m!2064111 () Bool)

(assert (=> d!512232 m!2064111))

(assert (=> d!512232 m!2063473))

(assert (=> d!512232 m!2063505))

(assert (=> d!512232 m!2063473))

(assert (=> d!512232 m!2064109))

(declare-fun m!2064113 () Bool)

(assert (=> b!1683640 m!2064113))

(declare-fun m!2064115 () Bool)

(assert (=> b!1683640 m!2064115))

(declare-fun m!2064117 () Bool)

(assert (=> b!1683640 m!2064117))

(declare-fun m!2064119 () Bool)

(assert (=> b!1683640 m!2064119))

(declare-fun m!2064121 () Bool)

(assert (=> b!1683640 m!2064121))

(declare-fun m!2064123 () Bool)

(assert (=> b!1683640 m!2064123))

(declare-fun m!2064125 () Bool)

(assert (=> b!1683640 m!2064125))

(assert (=> b!1683640 m!2063473))

(declare-fun m!2064127 () Bool)

(assert (=> b!1683640 m!2064127))

(declare-fun m!2064129 () Bool)

(assert (=> b!1683640 m!2064129))

(assert (=> b!1683640 m!2064119))

(declare-fun m!2064131 () Bool)

(assert (=> b!1683640 m!2064131))

(declare-fun m!2064133 () Bool)

(assert (=> b!1683640 m!2064133))

(declare-fun m!2064135 () Bool)

(assert (=> b!1683640 m!2064135))

(assert (=> b!1683640 m!2064119))

(declare-fun m!2064137 () Bool)

(assert (=> b!1683640 m!2064137))

(declare-fun m!2064139 () Bool)

(assert (=> b!1683640 m!2064139))

(declare-fun m!2064141 () Bool)

(assert (=> b!1683640 m!2064141))

(declare-fun m!2064143 () Bool)

(assert (=> b!1683640 m!2064143))

(declare-fun m!2064145 () Bool)

(assert (=> b!1683640 m!2064145))

(assert (=> b!1683640 m!2064115))

(assert (=> b!1683640 m!2064119))

(declare-fun m!2064147 () Bool)

(assert (=> b!1683640 m!2064147))

(declare-fun m!2064149 () Bool)

(assert (=> b!1683640 m!2064149))

(assert (=> b!1683640 m!2064117))

(declare-fun m!2064151 () Bool)

(assert (=> b!1683640 m!2064151))

(declare-fun m!2064153 () Bool)

(assert (=> b!1683640 m!2064153))

(assert (=> b!1683640 m!2063515))

(declare-fun m!2064155 () Bool)

(assert (=> b!1683640 m!2064155))

(declare-fun m!2064157 () Bool)

(assert (=> b!1683640 m!2064157))

(assert (=> b!1683640 m!2064123))

(assert (=> b!1683640 m!2064133))

(declare-fun m!2064159 () Bool)

(assert (=> b!1683640 m!2064159))

(assert (=> b!1683640 m!2063551))

(assert (=> b!1683640 m!2064115))

(assert (=> b!1683640 m!2064139))

(assert (=> b!1683640 m!2064157))

(assert (=> b!1683640 m!2064117))

(declare-fun m!2064161 () Bool)

(assert (=> b!1683640 m!2064161))

(assert (=> b!1683640 m!2064153))

(declare-fun m!2064163 () Bool)

(assert (=> b!1683640 m!2064163))

(declare-fun m!2064165 () Bool)

(assert (=> b!1683640 m!2064165))

(assert (=> b!1683640 m!2063551))

(assert (=> b!1683640 m!2064133))

(declare-fun m!2064167 () Bool)

(assert (=> b!1683640 m!2064167))

(declare-fun m!2064169 () Bool)

(assert (=> b!1683640 m!2064169))

(assert (=> b!1683640 m!2064143))

(assert (=> b!1683640 m!2063515))

(declare-fun m!2064171 () Bool)

(assert (=> b!1683640 m!2064171))

(assert (=> b!1683640 m!2064145))

(declare-fun m!2064173 () Bool)

(assert (=> b!1683640 m!2064173))

(assert (=> b!1683640 m!2063473))

(assert (=> b!1683640 m!2064109))

(assert (=> b!1683640 m!2064171))

(declare-fun m!2064175 () Bool)

(assert (=> b!1683640 m!2064175))

(assert (=> b!1683640 m!2064115))

(declare-fun m!2064177 () Bool)

(assert (=> b!1683640 m!2064177))

(assert (=> b!1683640 m!2064125))

(declare-fun m!2064179 () Bool)

(assert (=> b!1683640 m!2064179))

(assert (=> b!1683641 m!2063473))

(assert (=> b!1683641 m!2063473))

(assert (=> b!1683641 m!2064109))

(assert (=> b!1683641 m!2064109))

(assert (=> b!1683641 m!2064111))

(declare-fun m!2064181 () Bool)

(assert (=> b!1683641 m!2064181))

(assert (=> b!1683346 d!512232))

(declare-fun b!1683651 () Bool)

(declare-fun res!754789 () Bool)

(declare-fun e!1078016 () Bool)

(assert (=> b!1683651 (=> (not res!754789) (not e!1078016))))

(assert (=> b!1683651 (= res!754789 (= (head!3766 lt!638185) (head!3766 lt!638182)))))

(declare-fun b!1683652 () Bool)

(assert (=> b!1683652 (= e!1078016 (isPrefix!1509 (tail!2512 lt!638185) (tail!2512 lt!638182)))))

(declare-fun b!1683653 () Bool)

(declare-fun e!1078014 () Bool)

(assert (=> b!1683653 (= e!1078014 (>= (size!14706 lt!638182) (size!14706 lt!638185)))))

(declare-fun d!512242 () Bool)

(assert (=> d!512242 e!1078014))

(declare-fun res!754788 () Bool)

(assert (=> d!512242 (=> res!754788 e!1078014)))

(declare-fun lt!638513 () Bool)

(assert (=> d!512242 (= res!754788 (not lt!638513))))

(declare-fun e!1078015 () Bool)

(assert (=> d!512242 (= lt!638513 e!1078015)))

(declare-fun res!754787 () Bool)

(assert (=> d!512242 (=> res!754787 e!1078015)))

(assert (=> d!512242 (= res!754787 ((_ is Nil!18463) lt!638185))))

(assert (=> d!512242 (= (isPrefix!1509 lt!638185 lt!638182) lt!638513)))

(declare-fun b!1683650 () Bool)

(assert (=> b!1683650 (= e!1078015 e!1078016)))

(declare-fun res!754786 () Bool)

(assert (=> b!1683650 (=> (not res!754786) (not e!1078016))))

(assert (=> b!1683650 (= res!754786 (not ((_ is Nil!18463) lt!638182)))))

(assert (= (and d!512242 (not res!754787)) b!1683650))

(assert (= (and b!1683650 res!754786) b!1683651))

(assert (= (and b!1683651 res!754789) b!1683652))

(assert (= (and d!512242 (not res!754788)) b!1683653))

(declare-fun m!2064183 () Bool)

(assert (=> b!1683651 m!2064183))

(declare-fun m!2064185 () Bool)

(assert (=> b!1683651 m!2064185))

(declare-fun m!2064187 () Bool)

(assert (=> b!1683652 m!2064187))

(declare-fun m!2064189 () Bool)

(assert (=> b!1683652 m!2064189))

(assert (=> b!1683652 m!2064187))

(assert (=> b!1683652 m!2064189))

(declare-fun m!2064191 () Bool)

(assert (=> b!1683652 m!2064191))

(declare-fun m!2064193 () Bool)

(assert (=> b!1683653 m!2064193))

(assert (=> b!1683653 m!2063981))

(assert (=> b!1683346 d!512242))

(declare-fun d!512244 () Bool)

(assert (=> d!512244 (isPrefix!1509 lt!638185 (++!5051 lt!638185 lt!638165))))

(declare-fun lt!638516 () Unit!31713)

(declare-fun choose!10171 (List!18533 List!18533) Unit!31713)

(assert (=> d!512244 (= lt!638516 (choose!10171 lt!638185 lt!638165))))

(assert (=> d!512244 (= (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!638185 lt!638165) lt!638516)))

(declare-fun bs!399363 () Bool)

(assert (= bs!399363 d!512244))

(assert (=> bs!399363 m!2063469))

(assert (=> bs!399363 m!2063469))

(declare-fun m!2064195 () Bool)

(assert (=> bs!399363 m!2064195))

(declare-fun m!2064197 () Bool)

(assert (=> bs!399363 m!2064197))

(assert (=> b!1683346 d!512244))

(declare-fun d!512246 () Bool)

(declare-fun lt!638519 () BalanceConc!12244)

(assert (=> d!512246 (= (list!7415 lt!638519) (printList!993 thiss!17113 (list!7416 (seqFromList!2239 tokens!457))))))

(assert (=> d!512246 (= lt!638519 (printTailRec!931 thiss!17113 (seqFromList!2239 tokens!457) 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!512246 (= (print!1411 thiss!17113 (seqFromList!2239 tokens!457)) lt!638519)))

(declare-fun bs!399364 () Bool)

(assert (= bs!399364 d!512246))

(declare-fun m!2064199 () Bool)

(assert (=> bs!399364 m!2064199))

(assert (=> bs!399364 m!2063475))

(declare-fun m!2064201 () Bool)

(assert (=> bs!399364 m!2064201))

(assert (=> bs!399364 m!2064201))

(declare-fun m!2064203 () Bool)

(assert (=> bs!399364 m!2064203))

(assert (=> bs!399364 m!2063475))

(declare-fun m!2064205 () Bool)

(assert (=> bs!399364 m!2064205))

(assert (=> b!1683326 d!512246))

(declare-fun d!512248 () Bool)

(assert (=> d!512248 (= (list!7415 lt!638184) (list!7420 (c!274779 lt!638184)))))

(declare-fun bs!399365 () Bool)

(assert (= bs!399365 d!512248))

(declare-fun m!2064207 () Bool)

(assert (=> bs!399365 m!2064207))

(assert (=> b!1683326 d!512248))

(declare-fun b!1683654 () Bool)

(declare-fun e!1078019 () Bool)

(declare-fun lt!638520 () tuple2!18198)

(assert (=> b!1683654 (= e!1078019 (not (isEmpty!11536 (_1!10501 lt!638520))))))

(declare-fun e!1078018 () Bool)

(declare-fun b!1683655 () Bool)

(assert (=> b!1683655 (= e!1078018 (= (list!7415 (_2!10501 lt!638520)) (_2!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 lt!638174)))))))

(declare-fun d!512250 () Bool)

(assert (=> d!512250 e!1078018))

(declare-fun res!754790 () Bool)

(assert (=> d!512250 (=> (not res!754790) (not e!1078018))))

(declare-fun e!1078017 () Bool)

(assert (=> d!512250 (= res!754790 e!1078017)))

(declare-fun c!274833 () Bool)

(assert (=> d!512250 (= c!274833 (> (size!14704 (_1!10501 lt!638520)) 0))))

(assert (=> d!512250 (= lt!638520 (lexTailRecV2!628 thiss!17113 rules!1846 lt!638174 (BalanceConc!12245 Empty!6150) lt!638174 (BalanceConc!12247 Empty!6151)))))

(assert (=> d!512250 (= (lex!1364 thiss!17113 rules!1846 lt!638174) lt!638520)))

(declare-fun b!1683656 () Bool)

(assert (=> b!1683656 (= e!1078017 (= (_2!10501 lt!638520) lt!638174))))

(declare-fun b!1683657 () Bool)

(assert (=> b!1683657 (= e!1078017 e!1078019)))

(declare-fun res!754792 () Bool)

(assert (=> b!1683657 (= res!754792 (< (size!14705 (_2!10501 lt!638520)) (size!14705 lt!638174)))))

(assert (=> b!1683657 (=> (not res!754792) (not e!1078019))))

(declare-fun b!1683658 () Bool)

(declare-fun res!754791 () Bool)

(assert (=> b!1683658 (=> (not res!754791) (not e!1078018))))

(assert (=> b!1683658 (= res!754791 (= (list!7416 (_1!10501 lt!638520)) (_1!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 lt!638174)))))))

(assert (= (and d!512250 c!274833) b!1683657))

(assert (= (and d!512250 (not c!274833)) b!1683656))

(assert (= (and b!1683657 res!754792) b!1683654))

(assert (= (and d!512250 res!754790) b!1683658))

(assert (= (and b!1683658 res!754791) b!1683655))

(declare-fun m!2064209 () Bool)

(assert (=> b!1683654 m!2064209))

(declare-fun m!2064211 () Bool)

(assert (=> b!1683658 m!2064211))

(assert (=> b!1683658 m!2063487))

(assert (=> b!1683658 m!2063487))

(declare-fun m!2064213 () Bool)

(assert (=> b!1683658 m!2064213))

(declare-fun m!2064215 () Bool)

(assert (=> b!1683655 m!2064215))

(assert (=> b!1683655 m!2063487))

(assert (=> b!1683655 m!2063487))

(assert (=> b!1683655 m!2064213))

(declare-fun m!2064217 () Bool)

(assert (=> b!1683657 m!2064217))

(declare-fun m!2064219 () Bool)

(assert (=> b!1683657 m!2064219))

(declare-fun m!2064221 () Bool)

(assert (=> d!512250 m!2064221))

(declare-fun m!2064223 () Bool)

(assert (=> d!512250 m!2064223))

(assert (=> b!1683326 d!512250))

(declare-fun d!512252 () Bool)

(assert (=> d!512252 (= (list!7415 lt!638174) (list!7420 (c!274779 lt!638174)))))

(declare-fun bs!399366 () Bool)

(assert (= bs!399366 d!512252))

(declare-fun m!2064225 () Bool)

(assert (=> bs!399366 m!2064225))

(assert (=> b!1683326 d!512252))

(declare-fun b!1683659 () Bool)

(declare-fun e!1078020 () List!18533)

(assert (=> b!1683659 (= e!1078020 lt!638165)))

(declare-fun d!512254 () Bool)

(declare-fun e!1078021 () Bool)

(assert (=> d!512254 e!1078021))

(declare-fun res!754794 () Bool)

(assert (=> d!512254 (=> (not res!754794) (not e!1078021))))

(declare-fun lt!638521 () List!18533)

(assert (=> d!512254 (= res!754794 (= (content!2597 lt!638521) ((_ map or) (content!2597 lt!638185) (content!2597 lt!638165))))))

(assert (=> d!512254 (= lt!638521 e!1078020)))

(declare-fun c!274834 () Bool)

(assert (=> d!512254 (= c!274834 ((_ is Nil!18463) lt!638185))))

(assert (=> d!512254 (= (++!5051 lt!638185 lt!638165) lt!638521)))

(declare-fun b!1683662 () Bool)

(assert (=> b!1683662 (= e!1078021 (or (not (= lt!638165 Nil!18463)) (= lt!638521 lt!638185)))))

(declare-fun b!1683661 () Bool)

(declare-fun res!754793 () Bool)

(assert (=> b!1683661 (=> (not res!754793) (not e!1078021))))

(assert (=> b!1683661 (= res!754793 (= (size!14706 lt!638521) (+ (size!14706 lt!638185) (size!14706 lt!638165))))))

(declare-fun b!1683660 () Bool)

(assert (=> b!1683660 (= e!1078020 (Cons!18463 (h!23864 lt!638185) (++!5051 (t!154510 lt!638185) lt!638165)))))

(assert (= (and d!512254 c!274834) b!1683659))

(assert (= (and d!512254 (not c!274834)) b!1683660))

(assert (= (and d!512254 res!754794) b!1683661))

(assert (= (and b!1683661 res!754793) b!1683662))

(declare-fun m!2064227 () Bool)

(assert (=> d!512254 m!2064227))

(assert (=> d!512254 m!2063975))

(declare-fun m!2064229 () Bool)

(assert (=> d!512254 m!2064229))

(declare-fun m!2064231 () Bool)

(assert (=> b!1683661 m!2064231))

(assert (=> b!1683661 m!2063981))

(declare-fun m!2064233 () Bool)

(assert (=> b!1683661 m!2064233))

(declare-fun m!2064235 () Bool)

(assert (=> b!1683660 m!2064235))

(assert (=> b!1683326 d!512254))

(declare-fun d!512256 () Bool)

(declare-fun lt!638524 () BalanceConc!12244)

(assert (=> d!512256 (= (list!7415 lt!638524) (originalCharacters!4065 (h!23866 tokens!457)))))

(assert (=> d!512256 (= lt!638524 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))))

(assert (=> d!512256 (= (charsOf!1900 (h!23866 tokens!457)) lt!638524)))

(declare-fun b_lambda!52955 () Bool)

(assert (=> (not b_lambda!52955) (not d!512256)))

(assert (=> d!512256 t!154520))

(declare-fun b_and!120321 () Bool)

(assert (= b_and!120313 (and (=> t!154520 result!117660) b_and!120321)))

(assert (=> d!512256 t!154522))

(declare-fun b_and!120323 () Bool)

(assert (= b_and!120315 (and (=> t!154522 result!117664) b_and!120323)))

(declare-fun m!2064237 () Bool)

(assert (=> d!512256 m!2064237))

(assert (=> d!512256 m!2063847))

(assert (=> b!1683326 d!512256))

(declare-fun d!512258 () Bool)

(assert (=> d!512258 (= (list!7415 lt!638167) (list!7420 (c!274779 lt!638167)))))

(declare-fun bs!399367 () Bool)

(assert (= bs!399367 d!512258))

(declare-fun m!2064239 () Bool)

(assert (=> bs!399367 m!2064239))

(assert (=> b!1683326 d!512258))

(declare-fun d!512260 () Bool)

(assert (=> d!512260 (= (seqFromList!2239 tokens!457) (fromListB!1027 tokens!457))))

(declare-fun bs!399368 () Bool)

(assert (= bs!399368 d!512260))

(declare-fun m!2064241 () Bool)

(assert (=> bs!399368 m!2064241))

(assert (=> b!1683326 d!512260))

(declare-fun d!512262 () Bool)

(assert (=> d!512262 (= (seqFromList!2239 (t!154512 tokens!457)) (fromListB!1027 (t!154512 tokens!457)))))

(declare-fun bs!399369 () Bool)

(assert (= bs!399369 d!512262))

(declare-fun m!2064243 () Bool)

(assert (=> bs!399369 m!2064243))

(assert (=> b!1683326 d!512262))

(declare-fun d!512264 () Bool)

(declare-fun lt!638525 () BalanceConc!12244)

(assert (=> d!512264 (= (list!7415 lt!638525) (printList!993 thiss!17113 (list!7416 lt!638183)))))

(assert (=> d!512264 (= lt!638525 (printTailRec!931 thiss!17113 lt!638183 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!512264 (= (print!1411 thiss!17113 lt!638183) lt!638525)))

(declare-fun bs!399370 () Bool)

(assert (= bs!399370 d!512264))

(declare-fun m!2064245 () Bool)

(assert (=> bs!399370 m!2064245))

(assert (=> bs!399370 m!2063513))

(assert (=> bs!399370 m!2063513))

(declare-fun m!2064247 () Bool)

(assert (=> bs!399370 m!2064247))

(declare-fun m!2064249 () Bool)

(assert (=> bs!399370 m!2064249))

(assert (=> b!1683326 d!512264))

(declare-fun d!512266 () Bool)

(declare-fun res!754808 () Bool)

(declare-fun e!1078036 () Bool)

(assert (=> d!512266 (=> res!754808 e!1078036)))

(assert (=> d!512266 (= res!754808 (or (not ((_ is Cons!18465) tokens!457)) (not ((_ is Cons!18465) (t!154512 tokens!457)))))))

(assert (=> d!512266 (= (tokensListTwoByTwoPredicateSeparableList!573 thiss!17113 tokens!457 rules!1846) e!1078036)))

(declare-fun b!1683682 () Bool)

(declare-fun e!1078035 () Bool)

(assert (=> b!1683682 (= e!1078036 e!1078035)))

(declare-fun res!754809 () Bool)

(assert (=> b!1683682 (=> (not res!754809) (not e!1078035))))

(assert (=> b!1683682 (= res!754809 (separableTokensPredicate!820 thiss!17113 (h!23866 tokens!457) (h!23866 (t!154512 tokens!457)) rules!1846))))

(declare-fun lt!638596 () Unit!31713)

(declare-fun Unit!31748 () Unit!31713)

(assert (=> b!1683682 (= lt!638596 Unit!31748)))

(assert (=> b!1683682 (> (size!14705 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) 0)))

(declare-fun lt!638595 () Unit!31713)

(declare-fun Unit!31749 () Unit!31713)

(assert (=> b!1683682 (= lt!638595 Unit!31749)))

(assert (=> b!1683682 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (t!154512 tokens!457)))))

(declare-fun lt!638597 () Unit!31713)

(declare-fun Unit!31750 () Unit!31713)

(assert (=> b!1683682 (= lt!638597 Unit!31750)))

(assert (=> b!1683682 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 tokens!457))))

(declare-fun lt!638594 () Unit!31713)

(declare-fun lt!638592 () Unit!31713)

(assert (=> b!1683682 (= lt!638594 lt!638592)))

(assert (=> b!1683682 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (t!154512 tokens!457)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!640 (LexerInterface!2880 List!18536 List!18535 Token!6068) Unit!31713)

(assert (=> b!1683682 (= lt!638592 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!640 thiss!17113 rules!1846 tokens!457 (h!23866 (t!154512 tokens!457))))))

(declare-fun lt!638591 () Unit!31713)

(declare-fun lt!638593 () Unit!31713)

(assert (=> b!1683682 (= lt!638591 lt!638593)))

(assert (=> b!1683682 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 tokens!457))))

(assert (=> b!1683682 (= lt!638593 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!640 thiss!17113 rules!1846 tokens!457 (h!23866 tokens!457)))))

(declare-fun b!1683683 () Bool)

(assert (=> b!1683683 (= e!1078035 (tokensListTwoByTwoPredicateSeparableList!573 thiss!17113 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))) rules!1846))))

(assert (= (and d!512266 (not res!754808)) b!1683682))

(assert (= (and b!1683682 res!754809) b!1683683))

(declare-fun m!2064301 () Bool)

(assert (=> b!1683682 m!2064301))

(declare-fun m!2064303 () Bool)

(assert (=> b!1683682 m!2064303))

(assert (=> b!1683682 m!2063537))

(assert (=> b!1683682 m!2063551))

(assert (=> b!1683682 m!2063551))

(declare-fun m!2064305 () Bool)

(assert (=> b!1683682 m!2064305))

(assert (=> b!1683682 m!2063527))

(declare-fun m!2064307 () Bool)

(assert (=> b!1683682 m!2064307))

(declare-fun m!2064309 () Bool)

(assert (=> b!1683683 m!2064309))

(assert (=> b!1683347 d!512266))

(declare-fun b!1683694 () Bool)

(declare-fun e!1078045 () Bool)

(declare-fun inv!16 (TokenValue!3341) Bool)

(assert (=> b!1683694 (= e!1078045 (inv!16 (value!102326 (h!23866 tokens!457))))))

(declare-fun b!1683695 () Bool)

(declare-fun e!1078044 () Bool)

(declare-fun inv!15 (TokenValue!3341) Bool)

(assert (=> b!1683695 (= e!1078044 (inv!15 (value!102326 (h!23866 tokens!457))))))

(declare-fun b!1683696 () Bool)

(declare-fun e!1078043 () Bool)

(declare-fun inv!17 (TokenValue!3341) Bool)

(assert (=> b!1683696 (= e!1078043 (inv!17 (value!102326 (h!23866 tokens!457))))))

(declare-fun b!1683697 () Bool)

(assert (=> b!1683697 (= e!1078045 e!1078043)))

(declare-fun c!274843 () Bool)

(assert (=> b!1683697 (= c!274843 ((_ is IntegerValue!10024) (value!102326 (h!23866 tokens!457))))))

(declare-fun d!512274 () Bool)

(declare-fun c!274842 () Bool)

(assert (=> d!512274 (= c!274842 ((_ is IntegerValue!10023) (value!102326 (h!23866 tokens!457))))))

(assert (=> d!512274 (= (inv!21 (value!102326 (h!23866 tokens!457))) e!1078045)))

(declare-fun b!1683698 () Bool)

(declare-fun res!754812 () Bool)

(assert (=> b!1683698 (=> res!754812 e!1078044)))

(assert (=> b!1683698 (= res!754812 (not ((_ is IntegerValue!10025) (value!102326 (h!23866 tokens!457)))))))

(assert (=> b!1683698 (= e!1078043 e!1078044)))

(assert (= (and d!512274 c!274842) b!1683694))

(assert (= (and d!512274 (not c!274842)) b!1683697))

(assert (= (and b!1683697 c!274843) b!1683696))

(assert (= (and b!1683697 (not c!274843)) b!1683698))

(assert (= (and b!1683698 (not res!754812)) b!1683695))

(declare-fun m!2064311 () Bool)

(assert (=> b!1683694 m!2064311))

(declare-fun m!2064313 () Bool)

(assert (=> b!1683695 m!2064313))

(declare-fun m!2064315 () Bool)

(assert (=> b!1683696 m!2064315))

(assert (=> b!1683348 d!512274))

(declare-fun d!512276 () Bool)

(declare-fun lt!638604 () C!9332)

(assert (=> d!512276 (= lt!638604 (head!3766 (list!7415 lt!638174)))))

(declare-fun head!3769 (Conc!6150) C!9332)

(assert (=> d!512276 (= lt!638604 (head!3769 (c!274779 lt!638174)))))

(assert (=> d!512276 (not (isEmpty!11549 lt!638174))))

(assert (=> d!512276 (= (head!3765 lt!638174) lt!638604)))

(declare-fun bs!399371 () Bool)

(assert (= bs!399371 d!512276))

(assert (=> bs!399371 m!2063487))

(assert (=> bs!399371 m!2063487))

(declare-fun m!2064317 () Bool)

(assert (=> bs!399371 m!2064317))

(declare-fun m!2064319 () Bool)

(assert (=> bs!399371 m!2064319))

(declare-fun m!2064321 () Bool)

(assert (=> bs!399371 m!2064321))

(assert (=> b!1683343 d!512276))

(declare-fun d!512278 () Bool)

(assert (=> d!512278 (= (list!7415 lt!638166) (list!7420 (c!274779 lt!638166)))))

(declare-fun bs!399372 () Bool)

(assert (= bs!399372 d!512278))

(declare-fun m!2064323 () Bool)

(assert (=> bs!399372 m!2064323))

(assert (=> b!1683344 d!512278))

(declare-fun d!512280 () Bool)

(declare-fun lt!638605 () BalanceConc!12244)

(assert (=> d!512280 (= (list!7415 lt!638605) (printList!993 thiss!17113 (list!7416 lt!638180)))))

(assert (=> d!512280 (= lt!638605 (printTailRec!931 thiss!17113 lt!638180 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!512280 (= (print!1411 thiss!17113 lt!638180) lt!638605)))

(declare-fun bs!399373 () Bool)

(assert (= bs!399373 d!512280))

(declare-fun m!2064325 () Bool)

(assert (=> bs!399373 m!2064325))

(declare-fun m!2064327 () Bool)

(assert (=> bs!399373 m!2064327))

(assert (=> bs!399373 m!2064327))

(declare-fun m!2064329 () Bool)

(assert (=> bs!399373 m!2064329))

(assert (=> bs!399373 m!2063459))

(assert (=> b!1683344 d!512280))

(declare-fun b!1683705 () Bool)

(declare-fun res!754819 () Bool)

(declare-fun e!1078051 () Bool)

(assert (=> b!1683705 (=> (not res!754819) (not e!1078051))))

(declare-fun lt!638606 () Option!3558)

(assert (=> b!1683705 (= res!754819 (< (size!14706 (_2!10502 (get!5414 lt!638606))) (size!14706 lt!638187)))))

(declare-fun d!512282 () Bool)

(declare-fun e!1078050 () Bool)

(assert (=> d!512282 e!1078050))

(declare-fun res!754823 () Bool)

(assert (=> d!512282 (=> res!754823 e!1078050)))

(assert (=> d!512282 (= res!754823 (isEmpty!11548 lt!638606))))

(declare-fun e!1078052 () Option!3558)

(assert (=> d!512282 (= lt!638606 e!1078052)))

(declare-fun c!274844 () Bool)

(assert (=> d!512282 (= c!274844 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!638607 () Unit!31713)

(declare-fun lt!638609 () Unit!31713)

(assert (=> d!512282 (= lt!638607 lt!638609)))

(assert (=> d!512282 (isPrefix!1509 lt!638187 lt!638187)))

(assert (=> d!512282 (= lt!638609 (lemmaIsPrefixRefl!1028 lt!638187 lt!638187))))

(assert (=> d!512282 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512282 (= (maxPrefix!1440 thiss!17113 rules!1846 lt!638187) lt!638606)))

(declare-fun call!107599 () Option!3558)

(declare-fun bm!107594 () Bool)

(assert (=> bm!107594 (= call!107599 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) lt!638187))))

(declare-fun b!1683706 () Bool)

(assert (=> b!1683706 (= e!1078051 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!638606)))))))

(declare-fun b!1683707 () Bool)

(assert (=> b!1683707 (= e!1078052 call!107599)))

(declare-fun b!1683708 () Bool)

(declare-fun res!754822 () Bool)

(assert (=> b!1683708 (=> (not res!754822) (not e!1078051))))

(assert (=> b!1683708 (= res!754822 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!638606)))))))

(declare-fun b!1683709 () Bool)

(assert (=> b!1683709 (= e!1078050 e!1078051)))

(declare-fun res!754820 () Bool)

(assert (=> b!1683709 (=> (not res!754820) (not e!1078051))))

(assert (=> b!1683709 (= res!754820 (isDefined!2907 lt!638606))))

(declare-fun b!1683710 () Bool)

(declare-fun res!754824 () Bool)

(assert (=> b!1683710 (=> (not res!754824) (not e!1078051))))

(assert (=> b!1683710 (= res!754824 (= (value!102326 (_1!10502 (get!5414 lt!638606))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638606)))))))))

(declare-fun b!1683711 () Bool)

(declare-fun res!754821 () Bool)

(assert (=> b!1683711 (=> (not res!754821) (not e!1078051))))

(assert (=> b!1683711 (= res!754821 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))))))

(declare-fun b!1683712 () Bool)

(declare-fun res!754825 () Bool)

(assert (=> b!1683712 (=> (not res!754825) (not e!1078051))))

(assert (=> b!1683712 (= res!754825 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))) (_2!10502 (get!5414 lt!638606))) lt!638187))))

(declare-fun b!1683713 () Bool)

(declare-fun lt!638610 () Option!3558)

(declare-fun lt!638608 () Option!3558)

(assert (=> b!1683713 (= e!1078052 (ite (and ((_ is None!3557) lt!638610) ((_ is None!3557) lt!638608)) None!3557 (ite ((_ is None!3557) lt!638608) lt!638610 (ite ((_ is None!3557) lt!638610) lt!638608 (ite (>= (size!14700 (_1!10502 (v!24868 lt!638610))) (size!14700 (_1!10502 (v!24868 lt!638608)))) lt!638610 lt!638608)))))))

(assert (=> b!1683713 (= lt!638610 call!107599)))

(assert (=> b!1683713 (= lt!638608 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) lt!638187))))

(assert (= (and d!512282 c!274844) b!1683707))

(assert (= (and d!512282 (not c!274844)) b!1683713))

(assert (= (or b!1683707 b!1683713) bm!107594))

(assert (= (and d!512282 (not res!754823)) b!1683709))

(assert (= (and b!1683709 res!754820) b!1683708))

(assert (= (and b!1683708 res!754822) b!1683705))

(assert (= (and b!1683705 res!754819) b!1683712))

(assert (= (and b!1683712 res!754825) b!1683710))

(assert (= (and b!1683710 res!754824) b!1683711))

(assert (= (and b!1683711 res!754821) b!1683706))

(declare-fun m!2064331 () Bool)

(assert (=> b!1683710 m!2064331))

(declare-fun m!2064333 () Bool)

(assert (=> b!1683710 m!2064333))

(assert (=> b!1683710 m!2064333))

(declare-fun m!2064335 () Bool)

(assert (=> b!1683710 m!2064335))

(assert (=> b!1683708 m!2064331))

(declare-fun m!2064337 () Bool)

(assert (=> b!1683708 m!2064337))

(assert (=> b!1683708 m!2064337))

(declare-fun m!2064339 () Bool)

(assert (=> b!1683708 m!2064339))

(assert (=> b!1683712 m!2064331))

(assert (=> b!1683712 m!2064337))

(assert (=> b!1683712 m!2064337))

(assert (=> b!1683712 m!2064339))

(assert (=> b!1683712 m!2064339))

(declare-fun m!2064341 () Bool)

(assert (=> b!1683712 m!2064341))

(declare-fun m!2064343 () Bool)

(assert (=> bm!107594 m!2064343))

(assert (=> b!1683706 m!2064331))

(declare-fun m!2064345 () Bool)

(assert (=> b!1683706 m!2064345))

(assert (=> b!1683711 m!2064331))

(assert (=> b!1683711 m!2064337))

(assert (=> b!1683711 m!2064337))

(assert (=> b!1683711 m!2064339))

(assert (=> b!1683711 m!2064339))

(declare-fun m!2064349 () Bool)

(assert (=> b!1683711 m!2064349))

(declare-fun m!2064353 () Bool)

(assert (=> d!512282 m!2064353))

(declare-fun m!2064355 () Bool)

(assert (=> d!512282 m!2064355))

(declare-fun m!2064359 () Bool)

(assert (=> d!512282 m!2064359))

(assert (=> d!512282 m!2063751))

(declare-fun m!2064361 () Bool)

(assert (=> b!1683713 m!2064361))

(declare-fun m!2064365 () Bool)

(assert (=> b!1683709 m!2064365))

(assert (=> b!1683705 m!2064331))

(declare-fun m!2064367 () Bool)

(assert (=> b!1683705 m!2064367))

(declare-fun m!2064371 () Bool)

(assert (=> b!1683705 m!2064371))

(assert (=> b!1683344 d!512282))

(declare-fun d!512284 () Bool)

(declare-fun lt!638637 () BalanceConc!12244)

(declare-fun printListTailRec!424 (LexerInterface!2880 List!18535 List!18533) List!18533)

(declare-fun dropList!734 (BalanceConc!12246 Int) List!18535)

(assert (=> d!512284 (= (list!7415 lt!638637) (printListTailRec!424 thiss!17113 (dropList!734 lt!638180 0) (list!7415 (BalanceConc!12245 Empty!6150))))))

(declare-fun e!1078066 () BalanceConc!12244)

(assert (=> d!512284 (= lt!638637 e!1078066)))

(declare-fun c!274850 () Bool)

(assert (=> d!512284 (= c!274850 (>= 0 (size!14704 lt!638180)))))

(declare-fun e!1078067 () Bool)

(assert (=> d!512284 e!1078067))

(declare-fun res!754847 () Bool)

(assert (=> d!512284 (=> (not res!754847) (not e!1078067))))

(assert (=> d!512284 (= res!754847 (>= 0 0))))

(assert (=> d!512284 (= (printTailRec!931 thiss!17113 lt!638180 0 (BalanceConc!12245 Empty!6150)) lt!638637)))

(declare-fun b!1683739 () Bool)

(assert (=> b!1683739 (= e!1078067 (<= 0 (size!14704 lt!638180)))))

(declare-fun b!1683740 () Bool)

(assert (=> b!1683740 (= e!1078066 (BalanceConc!12245 Empty!6150))))

(declare-fun b!1683741 () Bool)

(assert (=> b!1683741 (= e!1078066 (printTailRec!931 thiss!17113 lt!638180 (+ 0 1) (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 lt!638180 0)))))))

(declare-fun lt!638636 () List!18535)

(assert (=> b!1683741 (= lt!638636 (list!7416 lt!638180))))

(declare-fun lt!638633 () Unit!31713)

(declare-fun lemmaDropApply!631 (List!18535 Int) Unit!31713)

(assert (=> b!1683741 (= lt!638633 (lemmaDropApply!631 lt!638636 0))))

(declare-fun head!3770 (List!18535) Token!6068)

(declare-fun drop!955 (List!18535 Int) List!18535)

(declare-fun apply!5025 (List!18535 Int) Token!6068)

(assert (=> b!1683741 (= (head!3770 (drop!955 lt!638636 0)) (apply!5025 lt!638636 0))))

(declare-fun lt!638634 () Unit!31713)

(assert (=> b!1683741 (= lt!638634 lt!638633)))

(declare-fun lt!638635 () List!18535)

(assert (=> b!1683741 (= lt!638635 (list!7416 lt!638180))))

(declare-fun lt!638639 () Unit!31713)

(declare-fun lemmaDropTail!611 (List!18535 Int) Unit!31713)

(assert (=> b!1683741 (= lt!638639 (lemmaDropTail!611 lt!638635 0))))

(declare-fun tail!2513 (List!18535) List!18535)

(assert (=> b!1683741 (= (tail!2513 (drop!955 lt!638635 0)) (drop!955 lt!638635 (+ 0 1)))))

(declare-fun lt!638638 () Unit!31713)

(assert (=> b!1683741 (= lt!638638 lt!638639)))

(assert (= (and d!512284 res!754847) b!1683739))

(assert (= (and d!512284 c!274850) b!1683740))

(assert (= (and d!512284 (not c!274850)) b!1683741))

(declare-fun m!2064407 () Bool)

(assert (=> d!512284 m!2064407))

(declare-fun m!2064409 () Bool)

(assert (=> d!512284 m!2064409))

(declare-fun m!2064411 () Bool)

(assert (=> d!512284 m!2064411))

(declare-fun m!2064413 () Bool)

(assert (=> d!512284 m!2064413))

(assert (=> d!512284 m!2064409))

(assert (=> d!512284 m!2064413))

(declare-fun m!2064415 () Bool)

(assert (=> d!512284 m!2064415))

(assert (=> b!1683739 m!2064411))

(declare-fun m!2064417 () Bool)

(assert (=> b!1683741 m!2064417))

(declare-fun m!2064419 () Bool)

(assert (=> b!1683741 m!2064419))

(declare-fun m!2064421 () Bool)

(assert (=> b!1683741 m!2064421))

(declare-fun m!2064423 () Bool)

(assert (=> b!1683741 m!2064423))

(declare-fun m!2064425 () Bool)

(assert (=> b!1683741 m!2064425))

(declare-fun m!2064427 () Bool)

(assert (=> b!1683741 m!2064427))

(declare-fun m!2064429 () Bool)

(assert (=> b!1683741 m!2064429))

(assert (=> b!1683741 m!2064423))

(assert (=> b!1683741 m!2064425))

(declare-fun m!2064431 () Bool)

(assert (=> b!1683741 m!2064431))

(assert (=> b!1683741 m!2064429))

(declare-fun m!2064433 () Bool)

(assert (=> b!1683741 m!2064433))

(assert (=> b!1683741 m!2064417))

(declare-fun m!2064435 () Bool)

(assert (=> b!1683741 m!2064435))

(declare-fun m!2064437 () Bool)

(assert (=> b!1683741 m!2064437))

(assert (=> b!1683741 m!2064327))

(assert (=> b!1683741 m!2064435))

(declare-fun m!2064439 () Bool)

(assert (=> b!1683741 m!2064439))

(assert (=> b!1683344 d!512284))

(declare-fun d!512298 () Bool)

(declare-fun c!274853 () Bool)

(assert (=> d!512298 (= c!274853 ((_ is Cons!18465) (Cons!18465 (h!23866 tokens!457) Nil!18465)))))

(declare-fun e!1078070 () List!18533)

(assert (=> d!512298 (= (printList!993 thiss!17113 (Cons!18465 (h!23866 tokens!457) Nil!18465)) e!1078070)))

(declare-fun b!1683746 () Bool)

(assert (=> b!1683746 (= e!1078070 (++!5051 (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))) (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))))

(declare-fun b!1683747 () Bool)

(assert (=> b!1683747 (= e!1078070 Nil!18463)))

(assert (= (and d!512298 c!274853) b!1683746))

(assert (= (and d!512298 (not c!274853)) b!1683747))

(declare-fun m!2064441 () Bool)

(assert (=> b!1683746 m!2064441))

(assert (=> b!1683746 m!2064441))

(declare-fun m!2064443 () Bool)

(assert (=> b!1683746 m!2064443))

(declare-fun m!2064445 () Bool)

(assert (=> b!1683746 m!2064445))

(assert (=> b!1683746 m!2064443))

(assert (=> b!1683746 m!2064445))

(declare-fun m!2064447 () Bool)

(assert (=> b!1683746 m!2064447))

(assert (=> b!1683344 d!512298))

(declare-fun d!512300 () Bool)

(declare-fun e!1078073 () Bool)

(assert (=> d!512300 e!1078073))

(declare-fun res!754850 () Bool)

(assert (=> d!512300 (=> (not res!754850) (not e!1078073))))

(declare-fun lt!638642 () BalanceConc!12246)

(assert (=> d!512300 (= res!754850 (= (list!7416 lt!638642) (Cons!18465 (h!23866 tokens!457) Nil!18465)))))

(declare-fun singleton!798 (Token!6068) BalanceConc!12246)

(assert (=> d!512300 (= lt!638642 (singleton!798 (h!23866 tokens!457)))))

(assert (=> d!512300 (= (singletonSeq!1771 (h!23866 tokens!457)) lt!638642)))

(declare-fun b!1683750 () Bool)

(assert (=> b!1683750 (= e!1078073 (isBalanced!1924 (c!274781 lt!638642)))))

(assert (= (and d!512300 res!754850) b!1683750))

(declare-fun m!2064449 () Bool)

(assert (=> d!512300 m!2064449))

(declare-fun m!2064451 () Bool)

(assert (=> d!512300 m!2064451))

(declare-fun m!2064453 () Bool)

(assert (=> b!1683750 m!2064453))

(assert (=> b!1683344 d!512300))

(declare-fun b!1683775 () Bool)

(declare-fun e!1078096 () Bool)

(assert (=> b!1683775 (= e!1078096 true)))

(declare-fun b!1683774 () Bool)

(declare-fun e!1078095 () Bool)

(assert (=> b!1683774 (= e!1078095 e!1078096)))

(declare-fun b!1683773 () Bool)

(declare-fun e!1078094 () Bool)

(assert (=> b!1683773 (= e!1078094 e!1078095)))

(declare-fun d!512302 () Bool)

(assert (=> d!512302 e!1078094))

(assert (= b!1683774 b!1683775))

(assert (= b!1683773 b!1683774))

(assert (= (and d!512302 ((_ is Cons!18466) rules!1846)) b!1683773))

(declare-fun order!11127 () Int)

(declare-fun order!11125 () Int)

(declare-fun lambda!68268 () Int)

(declare-fun dynLambda!8365 (Int Int) Int)

(declare-fun dynLambda!8366 (Int Int) Int)

(assert (=> b!1683775 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8366 order!11127 lambda!68268))))

(declare-fun order!11129 () Int)

(declare-fun dynLambda!8367 (Int Int) Int)

(assert (=> b!1683775 (< (dynLambda!8367 order!11129 (toChars!4585 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8366 order!11127 lambda!68268))))

(assert (=> d!512302 true))

(declare-fun lt!638684 () Bool)

(declare-fun forall!4204 (List!18535 Int) Bool)

(assert (=> d!512302 (= lt!638684 (forall!4204 tokens!457 lambda!68268))))

(declare-fun e!1078086 () Bool)

(assert (=> d!512302 (= lt!638684 e!1078086)))

(declare-fun res!754863 () Bool)

(assert (=> d!512302 (=> res!754863 e!1078086)))

(assert (=> d!512302 (= res!754863 (not ((_ is Cons!18465) tokens!457)))))

(assert (=> d!512302 (not (isEmpty!11537 rules!1846))))

(assert (=> d!512302 (= (rulesProduceEachTokenIndividuallyList!1082 thiss!17113 rules!1846 tokens!457) lt!638684)))

(declare-fun b!1683763 () Bool)

(declare-fun e!1078087 () Bool)

(assert (=> b!1683763 (= e!1078086 e!1078087)))

(declare-fun res!754862 () Bool)

(assert (=> b!1683763 (=> (not res!754862) (not e!1078087))))

(assert (=> b!1683763 (= res!754862 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 tokens!457)))))

(declare-fun b!1683764 () Bool)

(assert (=> b!1683764 (= e!1078087 (rulesProduceEachTokenIndividuallyList!1082 thiss!17113 rules!1846 (t!154512 tokens!457)))))

(assert (= (and d!512302 (not res!754863)) b!1683763))

(assert (= (and b!1683763 res!754862) b!1683764))

(declare-fun m!2064499 () Bool)

(assert (=> d!512302 m!2064499))

(assert (=> d!512302 m!2063505))

(assert (=> b!1683763 m!2063527))

(declare-fun m!2064501 () Bool)

(assert (=> b!1683764 m!2064501))

(assert (=> b!1683345 d!512302))

(declare-fun d!512312 () Bool)

(assert (=> d!512312 (= (isEmpty!11537 rules!1846) ((_ is Nil!18466) rules!1846))))

(assert (=> b!1683341 d!512312))

(declare-fun d!512314 () Bool)

(assert (=> d!512314 (= (inv!23822 (tag!3539 (rule!5151 (h!23866 tokens!457)))) (= (mod (str.len (value!102325 (tag!3539 (rule!5151 (h!23866 tokens!457))))) 2) 0))))

(assert (=> b!1683342 d!512314))

(declare-fun d!512316 () Bool)

(declare-fun res!754864 () Bool)

(declare-fun e!1078097 () Bool)

(assert (=> d!512316 (=> (not res!754864) (not e!1078097))))

(assert (=> d!512316 (= res!754864 (semiInverseModEq!1275 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457))))))))

(assert (=> d!512316 (= (inv!23826 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) e!1078097)))

(declare-fun b!1683778 () Bool)

(assert (=> b!1683778 (= e!1078097 (equivClasses!1216 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457))))))))

(assert (= (and d!512316 res!754864) b!1683778))

(declare-fun m!2064503 () Bool)

(assert (=> d!512316 m!2064503))

(declare-fun m!2064505 () Bool)

(assert (=> b!1683778 m!2064505))

(assert (=> b!1683342 d!512316))

(declare-fun d!512318 () Bool)

(assert (=> d!512318 (= (isDefined!2907 lt!638181) (not (isEmpty!11548 lt!638181)))))

(declare-fun bs!399376 () Bool)

(assert (= bs!399376 d!512318))

(declare-fun m!2064507 () Bool)

(assert (=> bs!399376 m!2064507))

(assert (=> b!1683339 d!512318))

(declare-fun b!1683862 () Bool)

(declare-fun res!754881 () Bool)

(declare-fun e!1078157 () Bool)

(assert (=> b!1683862 (=> (not res!754881) (not e!1078157))))

(declare-fun lt!638731 () Token!6068)

(declare-datatypes ((Option!3561 0))(
  ( (None!3560) (Some!3560 (v!24877 Rule!6302)) )
))
(declare-fun get!5416 (Option!3561) Rule!6302)

(declare-fun getRuleFromTag!343 (LexerInterface!2880 List!18536 String!21037) Option!3561)

(assert (=> b!1683862 (= res!754881 (matchR!2070 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))) (list!7415 (charsOf!1900 lt!638731))))))

(declare-fun b!1683864 () Bool)

(declare-fun e!1078156 () Unit!31713)

(declare-fun Unit!31751 () Unit!31713)

(assert (=> b!1683864 (= e!1078156 Unit!31751)))

(declare-fun lt!638742 () List!18533)

(assert (=> b!1683864 (= lt!638742 (++!5051 lt!638185 lt!638165))))

(declare-fun lt!638732 () Unit!31713)

(declare-fun lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!237 (LexerInterface!2880 Rule!6302 List!18536 List!18533) Unit!31713)

(assert (=> b!1683864 (= lt!638732 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!237 thiss!17113 (rule!5151 lt!638731) rules!1846 lt!638742))))

(assert (=> b!1683864 (isEmpty!11548 (maxPrefixOneRule!843 thiss!17113 (rule!5151 lt!638731) lt!638742))))

(declare-fun lt!638734 () Unit!31713)

(assert (=> b!1683864 (= lt!638734 lt!638732)))

(declare-fun lt!638744 () List!18533)

(assert (=> b!1683864 (= lt!638744 (list!7415 (charsOf!1900 lt!638731)))))

(declare-fun lt!638737 () Unit!31713)

(declare-fun lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!233 (LexerInterface!2880 Rule!6302 List!18533 List!18533) Unit!31713)

(assert (=> b!1683864 (= lt!638737 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!233 thiss!17113 (rule!5151 lt!638731) lt!638744 (++!5051 lt!638185 lt!638165)))))

(assert (=> b!1683864 (not (matchR!2070 (regex!3251 (rule!5151 lt!638731)) lt!638744))))

(declare-fun lt!638745 () Unit!31713)

(assert (=> b!1683864 (= lt!638745 lt!638737)))

(assert (=> b!1683864 false))

(declare-fun b!1683865 () Bool)

(declare-fun Unit!31752 () Unit!31713)

(assert (=> b!1683865 (= e!1078156 Unit!31752)))

(declare-fun b!1683863 () Bool)

(assert (=> b!1683863 (= e!1078157 (= (rule!5151 lt!638731) (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))))))

(declare-fun d!512320 () Bool)

(assert (=> d!512320 (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 lt!638185 lt!638165)))))

(declare-fun lt!638741 () Unit!31713)

(assert (=> d!512320 (= lt!638741 e!1078156)))

(declare-fun c!274858 () Bool)

(assert (=> d!512320 (= c!274858 (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 lt!638185 lt!638165))))))

(declare-fun lt!638740 () Unit!31713)

(declare-fun lt!638747 () Unit!31713)

(assert (=> d!512320 (= lt!638740 lt!638747)))

(assert (=> d!512320 e!1078157))

(declare-fun res!754882 () Bool)

(assert (=> d!512320 (=> (not res!754882) (not e!1078157))))

(declare-fun isDefined!2910 (Option!3561) Bool)

(assert (=> d!512320 (= res!754882 (isDefined!2910 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))))))

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!343 (LexerInterface!2880 List!18536 List!18533 Token!6068) Unit!31713)

(assert (=> d!512320 (= lt!638747 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!343 thiss!17113 rules!1846 lt!638185 lt!638731))))

(declare-fun lt!638733 () Unit!31713)

(declare-fun lt!638746 () Unit!31713)

(assert (=> d!512320 (= lt!638733 lt!638746)))

(declare-fun lt!638738 () List!18533)

(assert (=> d!512320 (isPrefix!1509 lt!638738 (++!5051 lt!638185 lt!638165))))

(declare-fun lemmaPrefixStaysPrefixWhenAddingToSuffix!229 (List!18533 List!18533 List!18533) Unit!31713)

(assert (=> d!512320 (= lt!638746 (lemmaPrefixStaysPrefixWhenAddingToSuffix!229 lt!638738 lt!638185 lt!638165))))

(assert (=> d!512320 (= lt!638738 (list!7415 (charsOf!1900 lt!638731)))))

(declare-fun lt!638736 () Unit!31713)

(declare-fun lt!638743 () Unit!31713)

(assert (=> d!512320 (= lt!638736 lt!638743)))

(declare-fun lt!638735 () List!18533)

(declare-fun lt!638739 () List!18533)

(assert (=> d!512320 (isPrefix!1509 lt!638735 (++!5051 lt!638735 lt!638739))))

(assert (=> d!512320 (= lt!638743 (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!638735 lt!638739))))

(assert (=> d!512320 (= lt!638739 (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 lt!638185))))))

(assert (=> d!512320 (= lt!638735 (list!7415 (charsOf!1900 lt!638731)))))

(assert (=> d!512320 (= lt!638731 (head!3770 (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(assert (=> d!512320 (not (isEmpty!11537 rules!1846))))

(assert (=> d!512320 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!442 thiss!17113 rules!1846 lt!638185 lt!638165) lt!638741)))

(assert (= (and d!512320 res!754882) b!1683862))

(assert (= (and b!1683862 res!754881) b!1683863))

(assert (= (and d!512320 c!274858) b!1683864))

(assert (= (and d!512320 (not c!274858)) b!1683865))

(declare-fun m!2064579 () Bool)

(assert (=> b!1683862 m!2064579))

(declare-fun m!2064581 () Bool)

(assert (=> b!1683862 m!2064581))

(declare-fun m!2064583 () Bool)

(assert (=> b!1683862 m!2064583))

(assert (=> b!1683862 m!2064583))

(declare-fun m!2064585 () Bool)

(assert (=> b!1683862 m!2064585))

(assert (=> b!1683862 m!2064579))

(assert (=> b!1683862 m!2064581))

(declare-fun m!2064587 () Bool)

(assert (=> b!1683862 m!2064587))

(assert (=> b!1683864 m!2064579))

(assert (=> b!1683864 m!2064581))

(assert (=> b!1683864 m!2063469))

(declare-fun m!2064589 () Bool)

(assert (=> b!1683864 m!2064589))

(declare-fun m!2064591 () Bool)

(assert (=> b!1683864 m!2064591))

(declare-fun m!2064593 () Bool)

(assert (=> b!1683864 m!2064593))

(assert (=> b!1683864 m!2063469))

(assert (=> b!1683864 m!2064579))

(declare-fun m!2064595 () Bool)

(assert (=> b!1683864 m!2064595))

(assert (=> b!1683864 m!2064591))

(declare-fun m!2064597 () Bool)

(assert (=> b!1683864 m!2064597))

(assert (=> b!1683863 m!2064583))

(assert (=> b!1683863 m!2064583))

(assert (=> b!1683863 m!2064585))

(declare-fun m!2064599 () Bool)

(assert (=> d!512320 m!2064599))

(assert (=> d!512320 m!2064583))

(assert (=> d!512320 m!2063469))

(declare-fun m!2064601 () Bool)

(assert (=> d!512320 m!2064601))

(assert (=> d!512320 m!2063469))

(declare-fun m!2064603 () Bool)

(assert (=> d!512320 m!2064603))

(assert (=> d!512320 m!2063505))

(assert (=> d!512320 m!2064601))

(declare-fun m!2064605 () Bool)

(assert (=> d!512320 m!2064605))

(assert (=> d!512320 m!2063447))

(assert (=> d!512320 m!2063449))

(assert (=> d!512320 m!2064579))

(assert (=> d!512320 m!2064581))

(declare-fun m!2064607 () Bool)

(assert (=> d!512320 m!2064607))

(declare-fun m!2064609 () Bool)

(assert (=> d!512320 m!2064609))

(declare-fun m!2064611 () Bool)

(assert (=> d!512320 m!2064611))

(assert (=> d!512320 m!2063447))

(assert (=> d!512320 m!2064601))

(declare-fun m!2064613 () Bool)

(assert (=> d!512320 m!2064613))

(assert (=> d!512320 m!2063469))

(declare-fun m!2064615 () Bool)

(assert (=> d!512320 m!2064615))

(declare-fun m!2064617 () Bool)

(assert (=> d!512320 m!2064617))

(assert (=> d!512320 m!2064579))

(declare-fun m!2064619 () Bool)

(assert (=> d!512320 m!2064619))

(assert (=> d!512320 m!2064609))

(assert (=> d!512320 m!2063579))

(declare-fun m!2064621 () Bool)

(assert (=> d!512320 m!2064621))

(assert (=> d!512320 m!2064583))

(declare-fun m!2064623 () Bool)

(assert (=> d!512320 m!2064623))

(assert (=> d!512320 m!2064615))

(assert (=> d!512320 m!2063579))

(assert (=> b!1683339 d!512320))

(declare-fun d!512340 () Bool)

(declare-fun e!1078160 () Bool)

(assert (=> d!512340 e!1078160))

(declare-fun res!754885 () Bool)

(assert (=> d!512340 (=> (not res!754885) (not e!1078160))))

(declare-fun lt!638750 () BalanceConc!12244)

(assert (=> d!512340 (= res!754885 (= (list!7415 lt!638750) (Cons!18463 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0) Nil!18463)))))

(declare-fun singleton!799 (C!9332) BalanceConc!12244)

(assert (=> d!512340 (= lt!638750 (singleton!799 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)))))

(assert (=> d!512340 (= (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)) lt!638750)))

(declare-fun b!1683868 () Bool)

(declare-fun isBalanced!1926 (Conc!6150) Bool)

(assert (=> b!1683868 (= e!1078160 (isBalanced!1926 (c!274779 lt!638750)))))

(assert (= (and d!512340 res!754885) b!1683868))

(declare-fun m!2064625 () Bool)

(assert (=> d!512340 m!2064625))

(assert (=> d!512340 m!2063553))

(declare-fun m!2064627 () Bool)

(assert (=> d!512340 m!2064627))

(declare-fun m!2064629 () Bool)

(assert (=> b!1683868 m!2064629))

(assert (=> b!1683340 d!512340))

(declare-fun e!1078163 () Bool)

(declare-fun lt!638753 () BalanceConc!12244)

(declare-fun b!1683880 () Bool)

(assert (=> b!1683880 (= e!1078163 (= (list!7415 lt!638753) (++!5051 (list!7415 lt!638184) (list!7415 lt!638169))))))

(declare-fun b!1683878 () Bool)

(declare-fun res!754896 () Bool)

(assert (=> b!1683878 (=> (not res!754896) (not e!1078163))))

(declare-fun height!983 (Conc!6150) Int)

(declare-fun ++!5054 (Conc!6150 Conc!6150) Conc!6150)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1683878 (= res!754896 (<= (height!983 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))) (+ (max!0 (height!983 (c!274779 lt!638184)) (height!983 (c!274779 lt!638169))) 1)))))

(declare-fun b!1683877 () Bool)

(declare-fun res!754897 () Bool)

(assert (=> b!1683877 (=> (not res!754897) (not e!1078163))))

(assert (=> b!1683877 (= res!754897 (isBalanced!1926 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))))))

(declare-fun d!512342 () Bool)

(assert (=> d!512342 e!1078163))

(declare-fun res!754894 () Bool)

(assert (=> d!512342 (=> (not res!754894) (not e!1078163))))

(declare-fun appendAssocInst!495 (Conc!6150 Conc!6150) Bool)

(assert (=> d!512342 (= res!754894 (appendAssocInst!495 (c!274779 lt!638184) (c!274779 lt!638169)))))

(assert (=> d!512342 (= lt!638753 (BalanceConc!12245 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))))))

(assert (=> d!512342 (= (++!5052 lt!638184 lt!638169) lt!638753)))

(declare-fun b!1683879 () Bool)

(declare-fun res!754895 () Bool)

(assert (=> b!1683879 (=> (not res!754895) (not e!1078163))))

(assert (=> b!1683879 (= res!754895 (>= (height!983 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))) (max!0 (height!983 (c!274779 lt!638184)) (height!983 (c!274779 lt!638169)))))))

(assert (= (and d!512342 res!754894) b!1683877))

(assert (= (and b!1683877 res!754897) b!1683878))

(assert (= (and b!1683878 res!754896) b!1683879))

(assert (= (and b!1683879 res!754895) b!1683880))

(declare-fun m!2064631 () Bool)

(assert (=> b!1683879 m!2064631))

(assert (=> b!1683879 m!2064631))

(declare-fun m!2064633 () Bool)

(assert (=> b!1683879 m!2064633))

(declare-fun m!2064635 () Bool)

(assert (=> b!1683879 m!2064635))

(declare-fun m!2064637 () Bool)

(assert (=> b!1683879 m!2064637))

(assert (=> b!1683879 m!2064635))

(assert (=> b!1683879 m!2064637))

(declare-fun m!2064639 () Bool)

(assert (=> b!1683879 m!2064639))

(declare-fun m!2064641 () Bool)

(assert (=> d!512342 m!2064641))

(assert (=> d!512342 m!2064631))

(assert (=> b!1683878 m!2064631))

(assert (=> b!1683878 m!2064631))

(assert (=> b!1683878 m!2064633))

(assert (=> b!1683878 m!2064635))

(assert (=> b!1683878 m!2064637))

(assert (=> b!1683878 m!2064635))

(assert (=> b!1683878 m!2064637))

(assert (=> b!1683878 m!2064639))

(declare-fun m!2064643 () Bool)

(assert (=> b!1683880 m!2064643))

(assert (=> b!1683880 m!2063481))

(assert (=> b!1683880 m!2063493))

(assert (=> b!1683880 m!2063481))

(assert (=> b!1683880 m!2063493))

(declare-fun m!2064645 () Bool)

(assert (=> b!1683880 m!2064645))

(assert (=> b!1683877 m!2064631))

(assert (=> b!1683877 m!2064631))

(declare-fun m!2064647 () Bool)

(assert (=> b!1683877 m!2064647))

(assert (=> b!1683340 d!512342))

(declare-fun lt!638777 () Bool)

(declare-fun d!512344 () Bool)

(assert (=> d!512344 (= lt!638777 (prefixMatch!492 lt!638178 (list!7415 (++!5052 lt!638184 lt!638169))))))

(declare-datatypes ((List!18541 0))(
  ( (Nil!18471) (Cons!18471 (h!23872 Regex!4579) (t!154560 List!18541)) )
))
(declare-datatypes ((Context!1850 0))(
  ( (Context!1851 (exprs!1425 List!18541)) )
))
(declare-fun prefixMatchZipperSequence!691 ((InoxSet Context!1850) BalanceConc!12244 Int) Bool)

(declare-fun focus!231 (Regex!4579) (InoxSet Context!1850))

(assert (=> d!512344 (= lt!638777 (prefixMatchZipperSequence!691 (focus!231 lt!638178) (++!5052 lt!638184 lt!638169) 0))))

(declare-fun lt!638781 () Unit!31713)

(declare-fun lt!638774 () Unit!31713)

(assert (=> d!512344 (= lt!638781 lt!638774)))

(declare-fun lt!638779 () List!18533)

(declare-fun lt!638776 () (InoxSet Context!1850))

(declare-fun prefixMatchZipper!210 ((InoxSet Context!1850) List!18533) Bool)

(assert (=> d!512344 (= (prefixMatch!492 lt!638178 lt!638779) (prefixMatchZipper!210 lt!638776 lt!638779))))

(declare-datatypes ((List!18542 0))(
  ( (Nil!18472) (Cons!18472 (h!23873 Context!1850) (t!154561 List!18542)) )
))
(declare-fun lt!638778 () List!18542)

(declare-fun prefixMatchZipperRegexEquiv!210 ((InoxSet Context!1850) List!18542 Regex!4579 List!18533) Unit!31713)

(assert (=> d!512344 (= lt!638774 (prefixMatchZipperRegexEquiv!210 lt!638776 lt!638778 lt!638178 lt!638779))))

(assert (=> d!512344 (= lt!638779 (list!7415 (++!5052 lt!638184 lt!638169)))))

(declare-fun toList!971 ((InoxSet Context!1850)) List!18542)

(assert (=> d!512344 (= lt!638778 (toList!971 (focus!231 lt!638178)))))

(assert (=> d!512344 (= lt!638776 (focus!231 lt!638178))))

(declare-fun lt!638782 () Unit!31713)

(declare-fun lt!638780 () Unit!31713)

(assert (=> d!512344 (= lt!638782 lt!638780)))

(declare-fun lt!638783 () (InoxSet Context!1850))

(declare-fun lt!638775 () Int)

(declare-fun dropList!735 (BalanceConc!12244 Int) List!18533)

(assert (=> d!512344 (= (prefixMatchZipper!210 lt!638783 (dropList!735 (++!5052 lt!638184 lt!638169) lt!638775)) (prefixMatchZipperSequence!691 lt!638783 (++!5052 lt!638184 lt!638169) lt!638775))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!210 ((InoxSet Context!1850) BalanceConc!12244 Int) Unit!31713)

(assert (=> d!512344 (= lt!638780 (lemmaprefixMatchZipperSequenceEquivalent!210 lt!638783 (++!5052 lt!638184 lt!638169) lt!638775))))

(assert (=> d!512344 (= lt!638775 0)))

(assert (=> d!512344 (= lt!638783 (focus!231 lt!638178))))

(declare-fun validRegex!1840 (Regex!4579) Bool)

(assert (=> d!512344 (validRegex!1840 lt!638178)))

(assert (=> d!512344 (= (prefixMatchZipperSequence!689 lt!638178 (++!5052 lt!638184 lt!638169)) lt!638777)))

(declare-fun bs!399382 () Bool)

(assert (= bs!399382 d!512344))

(assert (=> bs!399382 m!2063547))

(declare-fun m!2064649 () Bool)

(assert (=> bs!399382 m!2064649))

(declare-fun m!2064651 () Bool)

(assert (=> bs!399382 m!2064651))

(declare-fun m!2064653 () Bool)

(assert (=> bs!399382 m!2064653))

(declare-fun m!2064655 () Bool)

(assert (=> bs!399382 m!2064655))

(declare-fun m!2064657 () Bool)

(assert (=> bs!399382 m!2064657))

(assert (=> bs!399382 m!2064655))

(assert (=> bs!399382 m!2064655))

(assert (=> bs!399382 m!2063547))

(declare-fun m!2064659 () Bool)

(assert (=> bs!399382 m!2064659))

(declare-fun m!2064661 () Bool)

(assert (=> bs!399382 m!2064661))

(assert (=> bs!399382 m!2063547))

(assert (=> bs!399382 m!2064651))

(declare-fun m!2064663 () Bool)

(assert (=> bs!399382 m!2064663))

(declare-fun m!2064665 () Bool)

(assert (=> bs!399382 m!2064665))

(declare-fun m!2064667 () Bool)

(assert (=> bs!399382 m!2064667))

(assert (=> bs!399382 m!2064649))

(declare-fun m!2064669 () Bool)

(assert (=> bs!399382 m!2064669))

(assert (=> bs!399382 m!2063547))

(declare-fun m!2064671 () Bool)

(assert (=> bs!399382 m!2064671))

(assert (=> bs!399382 m!2063547))

(declare-fun m!2064673 () Bool)

(assert (=> bs!399382 m!2064673))

(assert (=> b!1683340 d!512344))

(declare-fun d!512346 () Bool)

(declare-fun lt!638786 () C!9332)

(declare-fun apply!5026 (List!18533 Int) C!9332)

(assert (=> d!512346 (= lt!638786 (apply!5026 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) 0))))

(declare-fun apply!5027 (Conc!6150 Int) C!9332)

(assert (=> d!512346 (= lt!638786 (apply!5027 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) 0))))

(declare-fun e!1078166 () Bool)

(assert (=> d!512346 e!1078166))

(declare-fun res!754900 () Bool)

(assert (=> d!512346 (=> (not res!754900) (not e!1078166))))

(assert (=> d!512346 (= res!754900 (<= 0 0))))

(assert (=> d!512346 (= (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0) lt!638786)))

(declare-fun b!1683883 () Bool)

(assert (=> b!1683883 (= e!1078166 (< 0 (size!14705 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(assert (= (and d!512346 res!754900) b!1683883))

(assert (=> d!512346 m!2063551))

(assert (=> d!512346 m!2064115))

(assert (=> d!512346 m!2064115))

(declare-fun m!2064675 () Bool)

(assert (=> d!512346 m!2064675))

(declare-fun m!2064677 () Bool)

(assert (=> d!512346 m!2064677))

(assert (=> b!1683883 m!2063551))

(assert (=> b!1683883 m!2064305))

(assert (=> b!1683340 d!512346))

(declare-fun d!512348 () Bool)

(declare-fun lt!638789 () Unit!31713)

(declare-fun lemma!296 (List!18536 LexerInterface!2880 List!18536) Unit!31713)

(assert (=> d!512348 (= lt!638789 (lemma!296 rules!1846 thiss!17113 rules!1846))))

(declare-fun lambda!68274 () Int)

(declare-fun generalisedUnion!304 (List!18541) Regex!4579)

(declare-fun map!3801 (List!18536 Int) List!18541)

(assert (=> d!512348 (= (rulesRegex!633 thiss!17113 rules!1846) (generalisedUnion!304 (map!3801 rules!1846 lambda!68274)))))

(declare-fun bs!399383 () Bool)

(assert (= bs!399383 d!512348))

(declare-fun m!2064679 () Bool)

(assert (=> bs!399383 m!2064679))

(declare-fun m!2064681 () Bool)

(assert (=> bs!399383 m!2064681))

(assert (=> bs!399383 m!2064681))

(declare-fun m!2064683 () Bool)

(assert (=> bs!399383 m!2064683))

(assert (=> b!1683340 d!512348))

(declare-fun d!512350 () Bool)

(declare-fun lt!638790 () BalanceConc!12244)

(assert (=> d!512350 (= (list!7415 lt!638790) (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))))

(assert (=> d!512350 (= lt!638790 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!512350 (= (charsOf!1900 (h!23866 (t!154512 tokens!457))) lt!638790)))

(declare-fun b_lambda!52965 () Bool)

(assert (=> (not b_lambda!52965) (not d!512350)))

(declare-fun t!154546 () Bool)

(declare-fun tb!97619 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) t!154546) tb!97619))

(declare-fun b!1683884 () Bool)

(declare-fun e!1078167 () Bool)

(declare-fun tp!483986 () Bool)

(assert (=> b!1683884 (= e!1078167 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))) tp!483986))))

(declare-fun result!117686 () Bool)

(assert (=> tb!97619 (= result!117686 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))) e!1078167))))

(assert (= tb!97619 b!1683884))

(declare-fun m!2064685 () Bool)

(assert (=> b!1683884 m!2064685))

(declare-fun m!2064687 () Bool)

(assert (=> tb!97619 m!2064687))

(assert (=> d!512350 t!154546))

(declare-fun b_and!120337 () Bool)

(assert (= b_and!120321 (and (=> t!154546 result!117686) b_and!120337)))

(declare-fun tb!97621 () Bool)

(declare-fun t!154548 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) t!154548) tb!97621))

(declare-fun result!117688 () Bool)

(assert (= result!117688 result!117686))

(assert (=> d!512350 t!154548))

(declare-fun b_and!120339 () Bool)

(assert (= b_and!120323 (and (=> t!154548 result!117688) b_and!120339)))

(declare-fun m!2064689 () Bool)

(assert (=> d!512350 m!2064689))

(declare-fun m!2064691 () Bool)

(assert (=> d!512350 m!2064691))

(assert (=> b!1683340 d!512350))

(declare-fun b!1683895 () Bool)

(declare-fun e!1078170 () Bool)

(declare-fun tp_is_empty!7433 () Bool)

(assert (=> b!1683895 (= e!1078170 tp_is_empty!7433)))

(assert (=> b!1683342 (= tp!483925 e!1078170)))

(declare-fun b!1683897 () Bool)

(declare-fun tp!483998 () Bool)

(assert (=> b!1683897 (= e!1078170 tp!483998)))

(declare-fun b!1683896 () Bool)

(declare-fun tp!484001 () Bool)

(declare-fun tp!484000 () Bool)

(assert (=> b!1683896 (= e!1078170 (and tp!484001 tp!484000))))

(declare-fun b!1683898 () Bool)

(declare-fun tp!483997 () Bool)

(declare-fun tp!483999 () Bool)

(assert (=> b!1683898 (= e!1078170 (and tp!483997 tp!483999))))

(assert (= (and b!1683342 ((_ is ElementMatch!4579) (regex!3251 (rule!5151 (h!23866 tokens!457))))) b!1683895))

(assert (= (and b!1683342 ((_ is Concat!7921) (regex!3251 (rule!5151 (h!23866 tokens!457))))) b!1683896))

(assert (= (and b!1683342 ((_ is Star!4579) (regex!3251 (rule!5151 (h!23866 tokens!457))))) b!1683897))

(assert (= (and b!1683342 ((_ is Union!4579) (regex!3251 (rule!5151 (h!23866 tokens!457))))) b!1683898))

(declare-fun b!1683903 () Bool)

(declare-fun e!1078173 () Bool)

(declare-fun tp!484004 () Bool)

(assert (=> b!1683903 (= e!1078173 (and tp_is_empty!7433 tp!484004))))

(assert (=> b!1683348 (= tp!483920 e!1078173)))

(assert (= (and b!1683348 ((_ is Cons!18463) (originalCharacters!4065 (h!23866 tokens!457)))) b!1683903))

(declare-fun b!1683914 () Bool)

(declare-fun b_free!45607 () Bool)

(declare-fun b_next!46311 () Bool)

(assert (=> b!1683914 (= b_free!45607 (not b_next!46311))))

(declare-fun tp!484013 () Bool)

(declare-fun b_and!120341 () Bool)

(assert (=> b!1683914 (= tp!484013 b_and!120341)))

(declare-fun b_free!45609 () Bool)

(declare-fun b_next!46313 () Bool)

(assert (=> b!1683914 (= b_free!45609 (not b_next!46313))))

(declare-fun tb!97623 () Bool)

(declare-fun t!154550 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) t!154550) tb!97623))

(declare-fun result!117696 () Bool)

(assert (= result!117696 result!117660))

(assert (=> b!1683518 t!154550))

(assert (=> d!512256 t!154550))

(declare-fun t!154552 () Bool)

(declare-fun tb!97625 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) t!154552) tb!97625))

(declare-fun result!117698 () Bool)

(assert (= result!117698 result!117686))

(assert (=> d!512350 t!154552))

(declare-fun b_and!120343 () Bool)

(declare-fun tp!484014 () Bool)

(assert (=> b!1683914 (= tp!484014 (and (=> t!154550 result!117696) (=> t!154552 result!117698) b_and!120343))))

(declare-fun e!1078185 () Bool)

(assert (=> b!1683914 (= e!1078185 (and tp!484013 tp!484014))))

(declare-fun tp!484016 () Bool)

(declare-fun b!1683913 () Bool)

(declare-fun e!1078182 () Bool)

(assert (=> b!1683913 (= e!1078182 (and tp!484016 (inv!23822 (tag!3539 (h!23867 (t!154513 rules!1846)))) (inv!23826 (transformation!3251 (h!23867 (t!154513 rules!1846)))) e!1078185))))

(declare-fun b!1683912 () Bool)

(declare-fun e!1078184 () Bool)

(declare-fun tp!484015 () Bool)

(assert (=> b!1683912 (= e!1078184 (and e!1078182 tp!484015))))

(assert (=> b!1683337 (= tp!483923 e!1078184)))

(assert (= b!1683913 b!1683914))

(assert (= b!1683912 b!1683913))

(assert (= (and b!1683337 ((_ is Cons!18466) (t!154513 rules!1846))) b!1683912))

(declare-fun m!2064693 () Bool)

(assert (=> b!1683913 m!2064693))

(declare-fun m!2064695 () Bool)

(assert (=> b!1683913 m!2064695))

(declare-fun b!1683928 () Bool)

(declare-fun b_free!45611 () Bool)

(declare-fun b_next!46315 () Bool)

(assert (=> b!1683928 (= b_free!45611 (not b_next!46315))))

(declare-fun tp!484029 () Bool)

(declare-fun b_and!120345 () Bool)

(assert (=> b!1683928 (= tp!484029 b_and!120345)))

(declare-fun b_free!45613 () Bool)

(declare-fun b_next!46317 () Bool)

(assert (=> b!1683928 (= b_free!45613 (not b_next!46317))))

(declare-fun t!154554 () Bool)

(declare-fun tb!97627 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) t!154554) tb!97627))

(declare-fun result!117702 () Bool)

(assert (= result!117702 result!117660))

(assert (=> b!1683518 t!154554))

(assert (=> d!512256 t!154554))

(declare-fun t!154556 () Bool)

(declare-fun tb!97629 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) t!154556) tb!97629))

(declare-fun result!117704 () Bool)

(assert (= result!117704 result!117686))

(assert (=> d!512350 t!154556))

(declare-fun tp!484028 () Bool)

(declare-fun b_and!120347 () Bool)

(assert (=> b!1683928 (= tp!484028 (and (=> t!154554 result!117702) (=> t!154556 result!117704) b_and!120347))))

(declare-fun e!1078201 () Bool)

(declare-fun tp!484027 () Bool)

(declare-fun b!1683925 () Bool)

(declare-fun e!1078199 () Bool)

(assert (=> b!1683925 (= e!1078199 (and (inv!23825 (h!23866 (t!154512 tokens!457))) e!1078201 tp!484027))))

(declare-fun e!1078203 () Bool)

(declare-fun b!1683927 () Bool)

(declare-fun e!1078200 () Bool)

(declare-fun tp!484031 () Bool)

(assert (=> b!1683927 (= e!1078200 (and tp!484031 (inv!23822 (tag!3539 (rule!5151 (h!23866 (t!154512 tokens!457))))) (inv!23826 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) e!1078203))))

(assert (=> b!1683327 (= tp!483924 e!1078199)))

(assert (=> b!1683928 (= e!1078203 (and tp!484029 tp!484028))))

(declare-fun b!1683926 () Bool)

(declare-fun tp!484030 () Bool)

(assert (=> b!1683926 (= e!1078201 (and (inv!21 (value!102326 (h!23866 (t!154512 tokens!457)))) e!1078200 tp!484030))))

(assert (= b!1683927 b!1683928))

(assert (= b!1683926 b!1683927))

(assert (= b!1683925 b!1683926))

(assert (= (and b!1683327 ((_ is Cons!18465) (t!154512 tokens!457))) b!1683925))

(declare-fun m!2064697 () Bool)

(assert (=> b!1683925 m!2064697))

(declare-fun m!2064699 () Bool)

(assert (=> b!1683927 m!2064699))

(declare-fun m!2064701 () Bool)

(assert (=> b!1683927 m!2064701))

(declare-fun m!2064703 () Bool)

(assert (=> b!1683926 m!2064703))

(declare-fun b!1683929 () Bool)

(declare-fun e!1078204 () Bool)

(assert (=> b!1683929 (= e!1078204 tp_is_empty!7433)))

(assert (=> b!1683334 (= tp!483922 e!1078204)))

(declare-fun b!1683931 () Bool)

(declare-fun tp!484033 () Bool)

(assert (=> b!1683931 (= e!1078204 tp!484033)))

(declare-fun b!1683930 () Bool)

(declare-fun tp!484036 () Bool)

(declare-fun tp!484035 () Bool)

(assert (=> b!1683930 (= e!1078204 (and tp!484036 tp!484035))))

(declare-fun b!1683932 () Bool)

(declare-fun tp!484032 () Bool)

(declare-fun tp!484034 () Bool)

(assert (=> b!1683932 (= e!1078204 (and tp!484032 tp!484034))))

(assert (= (and b!1683334 ((_ is ElementMatch!4579) (regex!3251 (h!23867 rules!1846)))) b!1683929))

(assert (= (and b!1683334 ((_ is Concat!7921) (regex!3251 (h!23867 rules!1846)))) b!1683930))

(assert (= (and b!1683334 ((_ is Star!4579) (regex!3251 (h!23867 rules!1846)))) b!1683931))

(assert (= (and b!1683334 ((_ is Union!4579) (regex!3251 (h!23867 rules!1846)))) b!1683932))

(declare-fun b_lambda!52967 () Bool)

(assert (= b_lambda!52965 (or (and b!1683332 b_free!45593 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) (and b!1683338 b_free!45597 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) (and b!1683914 b_free!45609 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) (and b!1683928 b_free!45613) b_lambda!52967)))

(declare-fun b_lambda!52969 () Bool)

(assert (= b_lambda!52955 (or (and b!1683332 b_free!45593) (and b!1683338 b_free!45597 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) (and b!1683914 b_free!45609 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) (and b!1683928 b_free!45613 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) b_lambda!52969)))

(declare-fun b_lambda!52971 () Bool)

(assert (= b_lambda!52951 (or (and b!1683332 b_free!45593) (and b!1683338 b_free!45597 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) (and b!1683914 b_free!45609 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) (and b!1683928 b_free!45613 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) b_lambda!52971)))

(check-sat (not b!1683712) (not b!1683739) (not bm!107594) (not b!1683485) (not d!512124) (not d!512346) (not b!1683435) (not b!1683778) (not d!512160) (not b!1683705) (not d!512318) (not b!1683927) (not b!1683931) (not d!512248) b_and!120301 (not b_next!46301) (not d!512246) (not b!1683709) (not d!512178) (not bm!107592) (not b!1683585) (not d!512282) (not b!1683696) (not b!1683438) (not b!1683564) (not d!512252) (not b!1683682) (not d!512192) (not b_next!46315) (not b!1683930) (not d!512344) (not b!1683601) (not d!512146) (not d!512302) (not b!1683708) (not b!1683862) (not b!1683640) (not b!1683559) (not b!1683711) (not d!512264) (not b!1683513) (not b!1683879) b_and!120343 (not d!512218) (not b!1683488) (not d!512350) (not b!1683434) (not b!1683883) (not bm!107586) (not b!1683877) (not d!512320) (not b!1683567) (not b!1683484) (not b!1683562) (not b!1683880) (not d!512300) (not d!512244) (not b!1683652) (not b!1683683) (not b!1683763) (not b!1683660) (not d!512342) (not b_next!46311) (not b_next!46313) (not d!512340) (not b!1683710) b_and!120341 (not b!1683610) (not b!1683483) b_and!120345 (not b!1683746) (not d!512186) (not b!1683912) (not d!512150) (not b!1683654) (not b!1683501) (not d!512284) (not b!1683584) (not b!1683932) (not b!1683609) (not b!1683641) (not b!1683695) (not b!1683706) (not b!1683741) (not d!512276) (not b!1683658) (not b!1683432) (not d!512188) (not d!512250) (not b!1683655) (not d!512122) (not b!1683566) (not d!512194) (not b!1683896) (not b!1683489) (not b_next!46297) (not b!1683653) (not b!1683611) (not b!1683884) (not d!512206) (not b!1683657) (not d!512226) (not b!1683863) (not d!512258) (not b_lambda!52969) (not b!1683560) (not d!512348) (not d!512190) (not b!1683524) b_and!120347 (not b!1683600) (not b!1683898) (not d!512316) (not b!1683878) (not d!512164) (not d!512232) b_and!120305 (not b!1683565) (not tb!97603) (not b_next!46299) (not b_lambda!52967) (not d!512144) (not tb!97619) (not b!1683694) (not b_lambda!52971) (not b!1683926) (not b!1683925) (not d!512148) (not b!1683913) (not b!1683903) (not d!512156) (not d!512182) tp_is_empty!7433 (not b!1683661) (not b!1683519) (not b!1683563) (not b_next!46295) (not b!1683864) (not b!1683486) (not d!512260) (not b!1683764) (not b!1683713) (not b_next!46317) (not d!512184) (not b!1683651) b_and!120339 (not b!1683750) (not d!512180) (not d!512278) (not b!1683773) (not b!1683868) (not d!512230) (not b!1683431) (not d!512254) (not b!1683897) b_and!120337 (not d!512280) (not d!512262) (not b!1683518) (not d!512256) (not b!1683482))
(check-sat (not b_next!46315) b_and!120343 (not b_next!46297) b_and!120347 (not b_next!46295) (not b_next!46317) b_and!120339 b_and!120337 b_and!120301 (not b_next!46301) (not b_next!46313) (not b_next!46311) b_and!120341 b_and!120345 b_and!120305 (not b_next!46299))
(get-model)

(declare-fun d!512494 () Bool)

(declare-fun c!274924 () Bool)

(assert (=> d!512494 (= c!274924 ((_ is Node!6150) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))))))

(declare-fun e!1078341 () Bool)

(assert (=> d!512494 (= (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))) e!1078341)))

(declare-fun b!1684178 () Bool)

(declare-fun inv!23833 (Conc!6150) Bool)

(assert (=> b!1684178 (= e!1078341 (inv!23833 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))))))

(declare-fun b!1684179 () Bool)

(declare-fun e!1078342 () Bool)

(assert (=> b!1684179 (= e!1078341 e!1078342)))

(declare-fun res!755031 () Bool)

(assert (=> b!1684179 (= res!755031 (not ((_ is Leaf!8996) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))))))))

(assert (=> b!1684179 (=> res!755031 e!1078342)))

(declare-fun b!1684180 () Bool)

(declare-fun inv!23834 (Conc!6150) Bool)

(assert (=> b!1684180 (= e!1078342 (inv!23834 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))))))

(assert (= (and d!512494 c!274924) b!1684178))

(assert (= (and d!512494 (not c!274924)) b!1684179))

(assert (= (and b!1684179 (not res!755031)) b!1684180))

(declare-fun m!2065187 () Bool)

(assert (=> b!1684178 m!2065187))

(declare-fun m!2065191 () Bool)

(assert (=> b!1684180 m!2065191))

(assert (=> b!1683524 d!512494))

(declare-fun d!512506 () Bool)

(assert (=> d!512506 (= (inv!23822 (tag!3539 (h!23867 (t!154513 rules!1846)))) (= (mod (str.len (value!102325 (tag!3539 (h!23867 (t!154513 rules!1846))))) 2) 0))))

(assert (=> b!1683913 d!512506))

(declare-fun d!512510 () Bool)

(declare-fun res!755036 () Bool)

(declare-fun e!1078344 () Bool)

(assert (=> d!512510 (=> (not res!755036) (not e!1078344))))

(assert (=> d!512510 (= res!755036 (semiInverseModEq!1275 (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toValue!4726 (transformation!3251 (h!23867 (t!154513 rules!1846))))))))

(assert (=> d!512510 (= (inv!23826 (transformation!3251 (h!23867 (t!154513 rules!1846)))) e!1078344)))

(declare-fun b!1684185 () Bool)

(assert (=> b!1684185 (= e!1078344 (equivClasses!1216 (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toValue!4726 (transformation!3251 (h!23867 (t!154513 rules!1846))))))))

(assert (= (and d!512510 res!755036) b!1684185))

(declare-fun m!2065195 () Bool)

(assert (=> d!512510 m!2065195))

(declare-fun m!2065197 () Bool)

(assert (=> b!1684185 m!2065197))

(assert (=> b!1683913 d!512510))

(declare-fun d!512512 () Bool)

(assert (=> d!512512 (= (list!7415 (charsOf!1900 lt!638731)) (list!7420 (c!274779 (charsOf!1900 lt!638731))))))

(declare-fun bs!399417 () Bool)

(assert (= bs!399417 d!512512))

(declare-fun m!2065199 () Bool)

(assert (=> bs!399417 m!2065199))

(assert (=> b!1683862 d!512512))

(declare-fun d!512514 () Bool)

(assert (=> d!512514 (= (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))) (v!24877 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))))))

(assert (=> b!1683862 d!512514))

(declare-fun b!1684237 () Bool)

(declare-fun res!755072 () Bool)

(declare-fun e!1078377 () Bool)

(assert (=> b!1684237 (=> res!755072 e!1078377)))

(assert (=> b!1684237 (= res!755072 (not (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 lt!638731))))))))

(declare-fun e!1078374 () Bool)

(declare-fun b!1684238 () Bool)

(assert (=> b!1684238 (= e!1078374 (matchR!2070 (derivativeStep!1138 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))) (head!3766 (list!7415 (charsOf!1900 lt!638731)))) (tail!2512 (list!7415 (charsOf!1900 lt!638731)))))))

(declare-fun b!1684239 () Bool)

(declare-fun res!755073 () Bool)

(declare-fun e!1078378 () Bool)

(assert (=> b!1684239 (=> (not res!755073) (not e!1078378))))

(assert (=> b!1684239 (= res!755073 (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 lt!638731)))))))

(declare-fun b!1684240 () Bool)

(declare-fun e!1078375 () Bool)

(declare-fun e!1078373 () Bool)

(assert (=> b!1684240 (= e!1078375 e!1078373)))

(declare-fun c!274935 () Bool)

(assert (=> b!1684240 (= c!274935 ((_ is EmptyLang!4579) (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))))))))

(declare-fun b!1684241 () Bool)

(declare-fun nullable!1367 (Regex!4579) Bool)

(assert (=> b!1684241 (= e!1078374 (nullable!1367 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))))))))

(declare-fun b!1684242 () Bool)

(assert (=> b!1684242 (= e!1078378 (= (head!3766 (list!7415 (charsOf!1900 lt!638731))) (c!274780 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))))))))

(declare-fun b!1684243 () Bool)

(declare-fun e!1078372 () Bool)

(declare-fun e!1078376 () Bool)

(assert (=> b!1684243 (= e!1078372 e!1078376)))

(declare-fun res!755075 () Bool)

(assert (=> b!1684243 (=> (not res!755075) (not e!1078376))))

(declare-fun lt!638935 () Bool)

(assert (=> b!1684243 (= res!755075 (not lt!638935))))

(declare-fun b!1684244 () Bool)

(declare-fun res!755078 () Bool)

(assert (=> b!1684244 (=> res!755078 e!1078372)))

(assert (=> b!1684244 (= res!755078 (not ((_ is ElementMatch!4579) (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))))))))

(assert (=> b!1684244 (= e!1078373 e!1078372)))

(declare-fun b!1684246 () Bool)

(declare-fun call!107611 () Bool)

(assert (=> b!1684246 (= e!1078375 (= lt!638935 call!107611))))

(declare-fun b!1684247 () Bool)

(assert (=> b!1684247 (= e!1078373 (not lt!638935))))

(declare-fun b!1684248 () Bool)

(assert (=> b!1684248 (= e!1078376 e!1078377)))

(declare-fun res!755079 () Bool)

(assert (=> b!1684248 (=> res!755079 e!1078377)))

(assert (=> b!1684248 (= res!755079 call!107611)))

(declare-fun bm!107606 () Bool)

(assert (=> bm!107606 (= call!107611 (isEmpty!11547 (list!7415 (charsOf!1900 lt!638731))))))

(declare-fun b!1684249 () Bool)

(assert (=> b!1684249 (= e!1078377 (not (= (head!3766 (list!7415 (charsOf!1900 lt!638731))) (c!274780 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))))))))))

(declare-fun b!1684250 () Bool)

(declare-fun res!755077 () Bool)

(assert (=> b!1684250 (=> res!755077 e!1078372)))

(assert (=> b!1684250 (= res!755077 e!1078378)))

(declare-fun res!755076 () Bool)

(assert (=> b!1684250 (=> (not res!755076) (not e!1078378))))

(assert (=> b!1684250 (= res!755076 lt!638935)))

(declare-fun b!1684245 () Bool)

(declare-fun res!755074 () Bool)

(assert (=> b!1684245 (=> (not res!755074) (not e!1078378))))

(assert (=> b!1684245 (= res!755074 (not call!107611))))

(declare-fun d!512516 () Bool)

(assert (=> d!512516 e!1078375))

(declare-fun c!274934 () Bool)

(assert (=> d!512516 (= c!274934 ((_ is EmptyExpr!4579) (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))))))))

(assert (=> d!512516 (= lt!638935 e!1078374)))

(declare-fun c!274933 () Bool)

(assert (=> d!512516 (= c!274933 (isEmpty!11547 (list!7415 (charsOf!1900 lt!638731))))))

(assert (=> d!512516 (validRegex!1840 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))))))

(assert (=> d!512516 (= (matchR!2070 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))) (list!7415 (charsOf!1900 lt!638731))) lt!638935)))

(assert (= (and d!512516 c!274933) b!1684241))

(assert (= (and d!512516 (not c!274933)) b!1684238))

(assert (= (and d!512516 c!274934) b!1684246))

(assert (= (and d!512516 (not c!274934)) b!1684240))

(assert (= (and b!1684240 c!274935) b!1684247))

(assert (= (and b!1684240 (not c!274935)) b!1684244))

(assert (= (and b!1684244 (not res!755078)) b!1684250))

(assert (= (and b!1684250 res!755076) b!1684245))

(assert (= (and b!1684245 res!755074) b!1684239))

(assert (= (and b!1684239 res!755073) b!1684242))

(assert (= (and b!1684250 (not res!755077)) b!1684243))

(assert (= (and b!1684243 res!755075) b!1684248))

(assert (= (and b!1684248 (not res!755079)) b!1684237))

(assert (= (and b!1684237 (not res!755072)) b!1684249))

(assert (= (or b!1684246 b!1684245 b!1684248) bm!107606))

(assert (=> d!512516 m!2064581))

(declare-fun m!2065283 () Bool)

(assert (=> d!512516 m!2065283))

(declare-fun m!2065285 () Bool)

(assert (=> d!512516 m!2065285))

(declare-fun m!2065287 () Bool)

(assert (=> b!1684241 m!2065287))

(assert (=> b!1684242 m!2064581))

(declare-fun m!2065289 () Bool)

(assert (=> b!1684242 m!2065289))

(assert (=> b!1684249 m!2064581))

(assert (=> b!1684249 m!2065289))

(assert (=> b!1684239 m!2064581))

(declare-fun m!2065291 () Bool)

(assert (=> b!1684239 m!2065291))

(assert (=> b!1684239 m!2065291))

(declare-fun m!2065293 () Bool)

(assert (=> b!1684239 m!2065293))

(assert (=> bm!107606 m!2064581))

(assert (=> bm!107606 m!2065283))

(assert (=> b!1684237 m!2064581))

(assert (=> b!1684237 m!2065291))

(assert (=> b!1684237 m!2065291))

(assert (=> b!1684237 m!2065293))

(assert (=> b!1684238 m!2064581))

(assert (=> b!1684238 m!2065289))

(assert (=> b!1684238 m!2065289))

(declare-fun m!2065295 () Bool)

(assert (=> b!1684238 m!2065295))

(assert (=> b!1684238 m!2064581))

(assert (=> b!1684238 m!2065291))

(assert (=> b!1684238 m!2065295))

(assert (=> b!1684238 m!2065291))

(declare-fun m!2065297 () Bool)

(assert (=> b!1684238 m!2065297))

(assert (=> b!1683862 d!512516))

(declare-fun b!1684279 () Bool)

(declare-fun e!1078395 () Bool)

(declare-fun e!1078396 () Bool)

(assert (=> b!1684279 (= e!1078395 e!1078396)))

(declare-fun res!755099 () Bool)

(assert (=> b!1684279 (=> (not res!755099) (not e!1078396))))

(declare-fun lt!638943 () Option!3561)

(assert (=> b!1684279 (= res!755099 (contains!3242 rules!1846 (get!5416 lt!638943)))))

(declare-fun b!1684280 () Bool)

(declare-fun lt!638942 () Unit!31713)

(declare-fun lt!638944 () Unit!31713)

(assert (=> b!1684280 (= lt!638942 lt!638944)))

(assert (=> b!1684280 (rulesInvariant!2549 thiss!17113 (t!154513 rules!1846))))

(declare-fun lemmaInvariantOnRulesThenOnTail!111 (LexerInterface!2880 Rule!6302 List!18536) Unit!31713)

(assert (=> b!1684280 (= lt!638944 (lemmaInvariantOnRulesThenOnTail!111 thiss!17113 (h!23867 rules!1846) (t!154513 rules!1846)))))

(declare-fun e!1078394 () Option!3561)

(assert (=> b!1684280 (= e!1078394 (getRuleFromTag!343 thiss!17113 (t!154513 rules!1846) (tag!3539 (rule!5151 lt!638731))))))

(declare-fun b!1684281 () Bool)

(declare-fun e!1078393 () Option!3561)

(assert (=> b!1684281 (= e!1078393 e!1078394)))

(declare-fun c!274940 () Bool)

(assert (=> b!1684281 (= c!274940 (and ((_ is Cons!18466) rules!1846) (not (= (tag!3539 (h!23867 rules!1846)) (tag!3539 (rule!5151 lt!638731))))))))

(declare-fun b!1684282 () Bool)

(assert (=> b!1684282 (= e!1078394 None!3560)))

(declare-fun d!512536 () Bool)

(assert (=> d!512536 e!1078395))

(declare-fun res!755098 () Bool)

(assert (=> d!512536 (=> res!755098 e!1078395)))

(declare-fun isEmpty!11551 (Option!3561) Bool)

(assert (=> d!512536 (= res!755098 (isEmpty!11551 lt!638943))))

(assert (=> d!512536 (= lt!638943 e!1078393)))

(declare-fun c!274941 () Bool)

(assert (=> d!512536 (= c!274941 (and ((_ is Cons!18466) rules!1846) (= (tag!3539 (h!23867 rules!1846)) (tag!3539 (rule!5151 lt!638731)))))))

(assert (=> d!512536 (rulesInvariant!2549 thiss!17113 rules!1846)))

(assert (=> d!512536 (= (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))) lt!638943)))

(declare-fun b!1684283 () Bool)

(assert (=> b!1684283 (= e!1078396 (= (tag!3539 (get!5416 lt!638943)) (tag!3539 (rule!5151 lt!638731))))))

(declare-fun b!1684284 () Bool)

(assert (=> b!1684284 (= e!1078393 (Some!3560 (h!23867 rules!1846)))))

(assert (= (and d!512536 c!274941) b!1684284))

(assert (= (and d!512536 (not c!274941)) b!1684281))

(assert (= (and b!1684281 c!274940) b!1684280))

(assert (= (and b!1684281 (not c!274940)) b!1684282))

(assert (= (and d!512536 (not res!755098)) b!1684279))

(assert (= (and b!1684279 res!755099) b!1684283))

(declare-fun m!2065325 () Bool)

(assert (=> b!1684279 m!2065325))

(assert (=> b!1684279 m!2065325))

(declare-fun m!2065327 () Bool)

(assert (=> b!1684279 m!2065327))

(declare-fun m!2065329 () Bool)

(assert (=> b!1684280 m!2065329))

(declare-fun m!2065331 () Bool)

(assert (=> b!1684280 m!2065331))

(declare-fun m!2065333 () Bool)

(assert (=> b!1684280 m!2065333))

(declare-fun m!2065335 () Bool)

(assert (=> d!512536 m!2065335))

(assert (=> d!512536 m!2063503))

(assert (=> b!1684283 m!2065325))

(assert (=> b!1683862 d!512536))

(declare-fun d!512544 () Bool)

(declare-fun lt!638945 () BalanceConc!12244)

(assert (=> d!512544 (= (list!7415 lt!638945) (originalCharacters!4065 lt!638731))))

(assert (=> d!512544 (= lt!638945 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 lt!638731))) (value!102326 lt!638731)))))

(assert (=> d!512544 (= (charsOf!1900 lt!638731) lt!638945)))

(declare-fun b_lambda!52981 () Bool)

(assert (=> (not b_lambda!52981) (not d!512544)))

(declare-fun t!154581 () Bool)

(declare-fun tb!97647 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 lt!638731)))) t!154581) tb!97647))

(declare-fun b!1684285 () Bool)

(declare-fun e!1078397 () Bool)

(declare-fun tp!484039 () Bool)

(assert (=> b!1684285 (= e!1078397 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 lt!638731))) (value!102326 lt!638731)))) tp!484039))))

(declare-fun result!117722 () Bool)

(assert (=> tb!97647 (= result!117722 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 lt!638731))) (value!102326 lt!638731))) e!1078397))))

(assert (= tb!97647 b!1684285))

(declare-fun m!2065337 () Bool)

(assert (=> b!1684285 m!2065337))

(declare-fun m!2065339 () Bool)

(assert (=> tb!97647 m!2065339))

(assert (=> d!512544 t!154581))

(declare-fun b_and!120373 () Bool)

(assert (= b_and!120337 (and (=> t!154581 result!117722) b_and!120373)))

(declare-fun tb!97649 () Bool)

(declare-fun t!154583 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 lt!638731)))) t!154583) tb!97649))

(declare-fun result!117724 () Bool)

(assert (= result!117724 result!117722))

(assert (=> d!512544 t!154583))

(declare-fun b_and!120375 () Bool)

(assert (= b_and!120339 (and (=> t!154583 result!117724) b_and!120375)))

(declare-fun t!154585 () Bool)

(declare-fun tb!97651 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 lt!638731)))) t!154585) tb!97651))

(declare-fun result!117726 () Bool)

(assert (= result!117726 result!117722))

(assert (=> d!512544 t!154585))

(declare-fun b_and!120377 () Bool)

(assert (= b_and!120343 (and (=> t!154585 result!117726) b_and!120377)))

(declare-fun t!154587 () Bool)

(declare-fun tb!97653 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 lt!638731)))) t!154587) tb!97653))

(declare-fun result!117728 () Bool)

(assert (= result!117728 result!117722))

(assert (=> d!512544 t!154587))

(declare-fun b_and!120379 () Bool)

(assert (= b_and!120347 (and (=> t!154587 result!117728) b_and!120379)))

(declare-fun m!2065341 () Bool)

(assert (=> d!512544 m!2065341))

(declare-fun m!2065343 () Bool)

(assert (=> d!512544 m!2065343))

(assert (=> b!1683862 d!512544))

(declare-fun d!512546 () Bool)

(assert (=> d!512546 (= (head!3766 (list!7415 lt!638174)) (h!23864 (list!7415 lt!638174)))))

(assert (=> d!512276 d!512546))

(assert (=> d!512276 d!512252))

(declare-fun d!512548 () Bool)

(declare-fun lt!638948 () C!9332)

(assert (=> d!512548 (= lt!638948 (head!3766 (list!7420 (c!274779 lt!638174))))))

(declare-fun e!1078400 () C!9332)

(assert (=> d!512548 (= lt!638948 e!1078400)))

(declare-fun c!274944 () Bool)

(assert (=> d!512548 (= c!274944 ((_ is Leaf!8996) (c!274779 lt!638174)))))

(assert (=> d!512548 (isBalanced!1926 (c!274779 lt!638174))))

(assert (=> d!512548 (= (head!3769 (c!274779 lt!638174)) lt!638948)))

(declare-fun b!1684290 () Bool)

(declare-fun apply!5028 (IArray!12305 Int) C!9332)

(assert (=> b!1684290 (= e!1078400 (apply!5028 (xs!9006 (c!274779 lt!638174)) 0))))

(declare-fun b!1684291 () Bool)

(assert (=> b!1684291 (= e!1078400 (head!3769 (left!14761 (c!274779 lt!638174))))))

(assert (= (and d!512548 c!274944) b!1684290))

(assert (= (and d!512548 (not c!274944)) b!1684291))

(assert (=> d!512548 m!2064225))

(assert (=> d!512548 m!2064225))

(declare-fun m!2065345 () Bool)

(assert (=> d!512548 m!2065345))

(declare-fun m!2065347 () Bool)

(assert (=> d!512548 m!2065347))

(declare-fun m!2065349 () Bool)

(assert (=> b!1684290 m!2065349))

(declare-fun m!2065351 () Bool)

(assert (=> b!1684291 m!2065351))

(assert (=> d!512276 d!512548))

(declare-fun d!512550 () Bool)

(declare-fun lt!638951 () Bool)

(assert (=> d!512550 (= lt!638951 (isEmpty!11547 (list!7415 lt!638174)))))

(declare-fun isEmpty!11552 (Conc!6150) Bool)

(assert (=> d!512550 (= lt!638951 (isEmpty!11552 (c!274779 lt!638174)))))

(assert (=> d!512550 (= (isEmpty!11549 lt!638174) lt!638951)))

(declare-fun bs!399424 () Bool)

(assert (= bs!399424 d!512550))

(assert (=> bs!399424 m!2063487))

(assert (=> bs!399424 m!2063487))

(declare-fun m!2065353 () Bool)

(assert (=> bs!399424 m!2065353))

(declare-fun m!2065355 () Bool)

(assert (=> bs!399424 m!2065355))

(assert (=> d!512276 d!512550))

(declare-fun d!512552 () Bool)

(declare-fun lt!638954 () Int)

(assert (=> d!512552 (>= lt!638954 0)))

(declare-fun e!1078403 () Int)

(assert (=> d!512552 (= lt!638954 e!1078403)))

(declare-fun c!274947 () Bool)

(assert (=> d!512552 (= c!274947 ((_ is Nil!18463) lt!638182))))

(assert (=> d!512552 (= (size!14706 lt!638182) lt!638954)))

(declare-fun b!1684296 () Bool)

(assert (=> b!1684296 (= e!1078403 0)))

(declare-fun b!1684297 () Bool)

(assert (=> b!1684297 (= e!1078403 (+ 1 (size!14706 (t!154510 lt!638182))))))

(assert (= (and d!512552 c!274947) b!1684296))

(assert (= (and d!512552 (not c!274947)) b!1684297))

(declare-fun m!2065357 () Bool)

(assert (=> b!1684297 m!2065357))

(assert (=> b!1683653 d!512552))

(declare-fun d!512554 () Bool)

(declare-fun lt!638955 () Int)

(assert (=> d!512554 (>= lt!638955 0)))

(declare-fun e!1078404 () Int)

(assert (=> d!512554 (= lt!638955 e!1078404)))

(declare-fun c!274948 () Bool)

(assert (=> d!512554 (= c!274948 ((_ is Nil!18463) lt!638185))))

(assert (=> d!512554 (= (size!14706 lt!638185) lt!638955)))

(declare-fun b!1684298 () Bool)

(assert (=> b!1684298 (= e!1078404 0)))

(declare-fun b!1684299 () Bool)

(assert (=> b!1684299 (= e!1078404 (+ 1 (size!14706 (t!154510 lt!638185))))))

(assert (= (and d!512554 c!274948) b!1684298))

(assert (= (and d!512554 (not c!274948)) b!1684299))

(declare-fun m!2065359 () Bool)

(assert (=> b!1684299 m!2065359))

(assert (=> b!1683653 d!512554))

(declare-fun d!512556 () Bool)

(declare-fun lt!638964 () Int)

(assert (=> d!512556 (= lt!638964 (size!14706 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun size!14709 (Conc!6150) Int)

(assert (=> d!512556 (= lt!638964 (size!14709 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!512556 (= (size!14705 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) lt!638964)))

(declare-fun bs!399425 () Bool)

(assert (= bs!399425 d!512556))

(assert (=> bs!399425 m!2063551))

(assert (=> bs!399425 m!2064115))

(assert (=> bs!399425 m!2064115))

(declare-fun m!2065361 () Bool)

(assert (=> bs!399425 m!2065361))

(declare-fun m!2065363 () Bool)

(assert (=> bs!399425 m!2065363))

(assert (=> b!1683883 d!512556))

(declare-fun d!512558 () Bool)

(declare-fun lt!638965 () Bool)

(assert (=> d!512558 (= lt!638965 (isEmpty!11547 (list!7415 (_2!10501 lt!638348))))))

(assert (=> d!512558 (= lt!638965 (isEmpty!11552 (c!274779 (_2!10501 lt!638348))))))

(assert (=> d!512558 (= (isEmpty!11549 (_2!10501 lt!638348)) lt!638965)))

(declare-fun bs!399426 () Bool)

(assert (= bs!399426 d!512558))

(declare-fun m!2065365 () Bool)

(assert (=> bs!399426 m!2065365))

(assert (=> bs!399426 m!2065365))

(declare-fun m!2065367 () Bool)

(assert (=> bs!399426 m!2065367))

(declare-fun m!2065369 () Bool)

(assert (=> bs!399426 m!2065369))

(assert (=> b!1683610 d!512558))

(declare-fun b!1684343 () Bool)

(declare-fun e!1078427 () List!18535)

(declare-fun e!1078428 () List!18535)

(assert (=> b!1684343 (= e!1078427 e!1078428)))

(declare-fun c!274970 () Bool)

(assert (=> b!1684343 (= c!274970 ((_ is Leaf!8997) (c!274781 lt!638183)))))

(declare-fun b!1684342 () Bool)

(assert (=> b!1684342 (= e!1078427 Nil!18465)))

(declare-fun d!512560 () Bool)

(declare-fun c!274969 () Bool)

(assert (=> d!512560 (= c!274969 ((_ is Empty!6151) (c!274781 lt!638183)))))

(assert (=> d!512560 (= (list!7419 (c!274781 lt!638183)) e!1078427)))

(declare-fun b!1684345 () Bool)

(declare-fun ++!5055 (List!18535 List!18535) List!18535)

(assert (=> b!1684345 (= e!1078428 (++!5055 (list!7419 (left!14762 (c!274781 lt!638183))) (list!7419 (right!15092 (c!274781 lt!638183)))))))

(declare-fun b!1684344 () Bool)

(declare-fun list!7422 (IArray!12307) List!18535)

(assert (=> b!1684344 (= e!1078428 (list!7422 (xs!9007 (c!274781 lt!638183))))))

(assert (= (and d!512560 c!274969) b!1684342))

(assert (= (and d!512560 (not c!274969)) b!1684343))

(assert (= (and b!1684343 c!274970) b!1684344))

(assert (= (and b!1684343 (not c!274970)) b!1684345))

(declare-fun m!2065371 () Bool)

(assert (=> b!1684345 m!2065371))

(declare-fun m!2065373 () Bool)

(assert (=> b!1684345 m!2065373))

(assert (=> b!1684345 m!2065371))

(assert (=> b!1684345 m!2065373))

(declare-fun m!2065375 () Bool)

(assert (=> b!1684345 m!2065375))

(declare-fun m!2065377 () Bool)

(assert (=> b!1684344 m!2065377))

(assert (=> d!512182 d!512560))

(declare-fun d!512562 () Bool)

(assert (=> d!512562 (= (get!5414 lt!638606) (v!24868 lt!638606))))

(assert (=> b!1683710 d!512562))

(declare-fun d!512564 () Bool)

(declare-fun dynLambda!8369 (Int BalanceConc!12244) TokenValue!3341)

(assert (=> d!512564 (= (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638606))))) (dynLambda!8369 (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638606))))))))

(declare-fun b_lambda!52983 () Bool)

(assert (=> (not b_lambda!52983) (not d!512564)))

(declare-fun t!154591 () Bool)

(declare-fun tb!97655 () Bool)

(assert (=> (and b!1683332 (= (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154591) tb!97655))

(declare-fun result!117730 () Bool)

(assert (=> tb!97655 (= result!117730 (inv!21 (dynLambda!8369 (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638606)))))))))

(declare-fun m!2065379 () Bool)

(assert (=> tb!97655 m!2065379))

(assert (=> d!512564 t!154591))

(declare-fun b_and!120381 () Bool)

(assert (= b_and!120301 (and (=> t!154591 result!117730) b_and!120381)))

(declare-fun t!154593 () Bool)

(declare-fun tb!97657 () Bool)

(assert (=> (and b!1683338 (= (toValue!4726 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154593) tb!97657))

(declare-fun result!117734 () Bool)

(assert (= result!117734 result!117730))

(assert (=> d!512564 t!154593))

(declare-fun b_and!120383 () Bool)

(assert (= b_and!120305 (and (=> t!154593 result!117734) b_and!120383)))

(declare-fun tb!97659 () Bool)

(declare-fun t!154595 () Bool)

(assert (=> (and b!1683914 (= (toValue!4726 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154595) tb!97659))

(declare-fun result!117736 () Bool)

(assert (= result!117736 result!117730))

(assert (=> d!512564 t!154595))

(declare-fun b_and!120385 () Bool)

(assert (= b_and!120341 (and (=> t!154595 result!117736) b_and!120385)))

(declare-fun tb!97661 () Bool)

(declare-fun t!154597 () Bool)

(assert (=> (and b!1683928 (= (toValue!4726 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154597) tb!97661))

(declare-fun result!117738 () Bool)

(assert (= result!117738 result!117730))

(assert (=> d!512564 t!154597))

(declare-fun b_and!120387 () Bool)

(assert (= b_and!120345 (and (=> t!154597 result!117738) b_and!120387)))

(assert (=> d!512564 m!2064333))

(declare-fun m!2065381 () Bool)

(assert (=> d!512564 m!2065381))

(assert (=> b!1683710 d!512564))

(declare-fun d!512566 () Bool)

(assert (=> d!512566 (= (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638606)))) (fromListB!1025 (originalCharacters!4065 (_1!10502 (get!5414 lt!638606)))))))

(declare-fun bs!399427 () Bool)

(assert (= bs!399427 d!512566))

(declare-fun m!2065383 () Bool)

(assert (=> bs!399427 m!2065383))

(assert (=> b!1683710 d!512566))

(declare-fun d!512568 () Bool)

(assert (=> d!512568 (= (list!7415 lt!638790) (list!7420 (c!274779 lt!638790)))))

(declare-fun bs!399428 () Bool)

(assert (= bs!399428 d!512568))

(declare-fun m!2065385 () Bool)

(assert (=> bs!399428 m!2065385))

(assert (=> d!512350 d!512568))

(declare-fun b!1684349 () Bool)

(declare-fun res!755105 () Bool)

(declare-fun e!1078434 () Bool)

(assert (=> b!1684349 (=> (not res!755105) (not e!1078434))))

(assert (=> b!1684349 (= res!755105 (= (head!3766 (tail!2512 lt!638185)) (head!3766 (tail!2512 lt!638182))))))

(declare-fun b!1684350 () Bool)

(assert (=> b!1684350 (= e!1078434 (isPrefix!1509 (tail!2512 (tail!2512 lt!638185)) (tail!2512 (tail!2512 lt!638182))))))

(declare-fun b!1684351 () Bool)

(declare-fun e!1078432 () Bool)

(assert (=> b!1684351 (= e!1078432 (>= (size!14706 (tail!2512 lt!638182)) (size!14706 (tail!2512 lt!638185))))))

(declare-fun d!512570 () Bool)

(assert (=> d!512570 e!1078432))

(declare-fun res!755104 () Bool)

(assert (=> d!512570 (=> res!755104 e!1078432)))

(declare-fun lt!638968 () Bool)

(assert (=> d!512570 (= res!755104 (not lt!638968))))

(declare-fun e!1078433 () Bool)

(assert (=> d!512570 (= lt!638968 e!1078433)))

(declare-fun res!755103 () Bool)

(assert (=> d!512570 (=> res!755103 e!1078433)))

(assert (=> d!512570 (= res!755103 ((_ is Nil!18463) (tail!2512 lt!638185)))))

(assert (=> d!512570 (= (isPrefix!1509 (tail!2512 lt!638185) (tail!2512 lt!638182)) lt!638968)))

(declare-fun b!1684348 () Bool)

(assert (=> b!1684348 (= e!1078433 e!1078434)))

(declare-fun res!755102 () Bool)

(assert (=> b!1684348 (=> (not res!755102) (not e!1078434))))

(assert (=> b!1684348 (= res!755102 (not ((_ is Nil!18463) (tail!2512 lt!638182))))))

(assert (= (and d!512570 (not res!755103)) b!1684348))

(assert (= (and b!1684348 res!755102) b!1684349))

(assert (= (and b!1684349 res!755105) b!1684350))

(assert (= (and d!512570 (not res!755104)) b!1684351))

(assert (=> b!1684349 m!2064187))

(declare-fun m!2065387 () Bool)

(assert (=> b!1684349 m!2065387))

(assert (=> b!1684349 m!2064189))

(declare-fun m!2065389 () Bool)

(assert (=> b!1684349 m!2065389))

(assert (=> b!1684350 m!2064187))

(declare-fun m!2065391 () Bool)

(assert (=> b!1684350 m!2065391))

(assert (=> b!1684350 m!2064189))

(declare-fun m!2065393 () Bool)

(assert (=> b!1684350 m!2065393))

(assert (=> b!1684350 m!2065391))

(assert (=> b!1684350 m!2065393))

(declare-fun m!2065395 () Bool)

(assert (=> b!1684350 m!2065395))

(assert (=> b!1684351 m!2064189))

(declare-fun m!2065397 () Bool)

(assert (=> b!1684351 m!2065397))

(assert (=> b!1684351 m!2064187))

(declare-fun m!2065399 () Bool)

(assert (=> b!1684351 m!2065399))

(assert (=> b!1683652 d!512570))

(declare-fun d!512572 () Bool)

(assert (=> d!512572 (= (tail!2512 lt!638185) (t!154510 lt!638185))))

(assert (=> b!1683652 d!512572))

(declare-fun d!512574 () Bool)

(assert (=> d!512574 (= (tail!2512 lt!638182) (t!154510 lt!638182))))

(assert (=> b!1683652 d!512574))

(declare-fun d!512576 () Bool)

(assert (=> d!512576 true))

(declare-fun order!11141 () Int)

(declare-fun lambda!68290 () Int)

(declare-fun dynLambda!8370 (Int Int) Int)

(assert (=> d!512576 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (dynLambda!8370 order!11141 lambda!68290))))

(declare-fun Forall2!538 (Int) Bool)

(assert (=> d!512576 (= (equivClasses!1216 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (Forall2!538 lambda!68290))))

(declare-fun bs!399429 () Bool)

(assert (= bs!399429 d!512576))

(declare-fun m!2065401 () Bool)

(assert (=> bs!399429 m!2065401))

(assert (=> b!1683778 d!512576))

(declare-fun d!512578 () Bool)

(declare-fun lt!638969 () Bool)

(assert (=> d!512578 (= lt!638969 (isEmpty!11544 (list!7416 (_1!10501 lt!638520))))))

(assert (=> d!512578 (= lt!638969 (isEmpty!11545 (c!274781 (_1!10501 lt!638520))))))

(assert (=> d!512578 (= (isEmpty!11536 (_1!10501 lt!638520)) lt!638969)))

(declare-fun bs!399430 () Bool)

(assert (= bs!399430 d!512578))

(assert (=> bs!399430 m!2064211))

(assert (=> bs!399430 m!2064211))

(declare-fun m!2065403 () Bool)

(assert (=> bs!399430 m!2065403))

(declare-fun m!2065405 () Bool)

(assert (=> bs!399430 m!2065405))

(assert (=> b!1683654 d!512578))

(declare-fun d!512580 () Bool)

(assert (=> d!512580 (= (isEmpty!11546 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))) (not ((_ is Some!3558) (maxPrefixZipperSequence!751 thiss!17113 rules!1846 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(assert (=> d!512148 d!512580))

(declare-fun d!512582 () Bool)

(assert (=> d!512582 (= (get!5413 lt!638279) (v!24869 lt!638279))))

(assert (=> b!1683482 d!512582))

(declare-fun d!512584 () Bool)

(assert (=> d!512584 (= (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))) (v!24868 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(assert (=> b!1683482 d!512584))

(declare-fun b!1684364 () Bool)

(declare-fun res!755116 () Bool)

(declare-fun e!1078440 () Bool)

(assert (=> b!1684364 (=> (not res!755116) (not e!1078440))))

(declare-fun lt!638970 () Option!3558)

(assert (=> b!1684364 (= res!755116 (< (size!14706 (_2!10502 (get!5414 lt!638970))) (size!14706 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(declare-fun d!512586 () Bool)

(declare-fun e!1078439 () Bool)

(assert (=> d!512586 e!1078439))

(declare-fun res!755120 () Bool)

(assert (=> d!512586 (=> res!755120 e!1078439)))

(assert (=> d!512586 (= res!755120 (isEmpty!11548 lt!638970))))

(declare-fun e!1078441 () Option!3558)

(assert (=> d!512586 (= lt!638970 e!1078441)))

(declare-fun c!274971 () Bool)

(assert (=> d!512586 (= c!274971 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!638971 () Unit!31713)

(declare-fun lt!638973 () Unit!31713)

(assert (=> d!512586 (= lt!638971 lt!638973)))

(assert (=> d!512586 (isPrefix!1509 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!512586 (= lt!638973 (lemmaIsPrefixRefl!1028 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(assert (=> d!512586 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512586 (= (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))) lt!638970)))

(declare-fun bm!107639 () Bool)

(declare-fun call!107644 () Option!3558)

(assert (=> bm!107639 (= call!107644 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(declare-fun b!1684365 () Bool)

(assert (=> b!1684365 (= e!1078440 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!638970)))))))

(declare-fun b!1684366 () Bool)

(assert (=> b!1684366 (= e!1078441 call!107644)))

(declare-fun b!1684367 () Bool)

(declare-fun res!755119 () Bool)

(assert (=> b!1684367 (=> (not res!755119) (not e!1078440))))

(assert (=> b!1684367 (= res!755119 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638970)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!638970)))))))

(declare-fun b!1684368 () Bool)

(assert (=> b!1684368 (= e!1078439 e!1078440)))

(declare-fun res!755117 () Bool)

(assert (=> b!1684368 (=> (not res!755117) (not e!1078440))))

(assert (=> b!1684368 (= res!755117 (isDefined!2907 lt!638970))))

(declare-fun b!1684369 () Bool)

(declare-fun res!755121 () Bool)

(assert (=> b!1684369 (=> (not res!755121) (not e!1078440))))

(assert (=> b!1684369 (= res!755121 (= (value!102326 (_1!10502 (get!5414 lt!638970))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638970)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638970)))))))))

(declare-fun b!1684370 () Bool)

(declare-fun res!755118 () Bool)

(assert (=> b!1684370 (=> (not res!755118) (not e!1078440))))

(assert (=> b!1684370 (= res!755118 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638970)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638970))))))))

(declare-fun b!1684371 () Bool)

(declare-fun res!755122 () Bool)

(assert (=> b!1684371 (=> (not res!755122) (not e!1078440))))

(assert (=> b!1684371 (= res!755122 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638970)))) (_2!10502 (get!5414 lt!638970))) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(declare-fun b!1684372 () Bool)

(declare-fun lt!638974 () Option!3558)

(declare-fun lt!638972 () Option!3558)

(assert (=> b!1684372 (= e!1078441 (ite (and ((_ is None!3557) lt!638974) ((_ is None!3557) lt!638972)) None!3557 (ite ((_ is None!3557) lt!638972) lt!638974 (ite ((_ is None!3557) lt!638974) lt!638972 (ite (>= (size!14700 (_1!10502 (v!24868 lt!638974))) (size!14700 (_1!10502 (v!24868 lt!638972)))) lt!638974 lt!638972)))))))

(assert (=> b!1684372 (= lt!638974 call!107644)))

(assert (=> b!1684372 (= lt!638972 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(assert (= (and d!512586 c!274971) b!1684366))

(assert (= (and d!512586 (not c!274971)) b!1684372))

(assert (= (or b!1684366 b!1684372) bm!107639))

(assert (= (and d!512586 (not res!755120)) b!1684368))

(assert (= (and b!1684368 res!755117) b!1684367))

(assert (= (and b!1684367 res!755119) b!1684364))

(assert (= (and b!1684364 res!755116) b!1684371))

(assert (= (and b!1684371 res!755122) b!1684369))

(assert (= (and b!1684369 res!755121) b!1684370))

(assert (= (and b!1684370 res!755118) b!1684365))

(declare-fun m!2065407 () Bool)

(assert (=> b!1684369 m!2065407))

(declare-fun m!2065409 () Bool)

(assert (=> b!1684369 m!2065409))

(assert (=> b!1684369 m!2065409))

(declare-fun m!2065411 () Bool)

(assert (=> b!1684369 m!2065411))

(assert (=> b!1684367 m!2065407))

(declare-fun m!2065413 () Bool)

(assert (=> b!1684367 m!2065413))

(assert (=> b!1684367 m!2065413))

(declare-fun m!2065415 () Bool)

(assert (=> b!1684367 m!2065415))

(assert (=> b!1684371 m!2065407))

(assert (=> b!1684371 m!2065413))

(assert (=> b!1684371 m!2065413))

(assert (=> b!1684371 m!2065415))

(assert (=> b!1684371 m!2065415))

(declare-fun m!2065417 () Bool)

(assert (=> b!1684371 m!2065417))

(assert (=> bm!107639 m!2063727))

(declare-fun m!2065419 () Bool)

(assert (=> bm!107639 m!2065419))

(assert (=> b!1684365 m!2065407))

(declare-fun m!2065421 () Bool)

(assert (=> b!1684365 m!2065421))

(assert (=> b!1684370 m!2065407))

(assert (=> b!1684370 m!2065413))

(assert (=> b!1684370 m!2065413))

(assert (=> b!1684370 m!2065415))

(assert (=> b!1684370 m!2065415))

(declare-fun m!2065423 () Bool)

(assert (=> b!1684370 m!2065423))

(declare-fun m!2065425 () Bool)

(assert (=> d!512586 m!2065425))

(assert (=> d!512586 m!2063727))

(assert (=> d!512586 m!2063727))

(declare-fun m!2065427 () Bool)

(assert (=> d!512586 m!2065427))

(assert (=> d!512586 m!2063727))

(assert (=> d!512586 m!2063727))

(declare-fun m!2065429 () Bool)

(assert (=> d!512586 m!2065429))

(assert (=> d!512586 m!2063751))

(assert (=> b!1684372 m!2063727))

(declare-fun m!2065431 () Bool)

(assert (=> b!1684372 m!2065431))

(declare-fun m!2065433 () Bool)

(assert (=> b!1684368 m!2065433))

(assert (=> b!1684364 m!2065407))

(declare-fun m!2065435 () Bool)

(assert (=> b!1684364 m!2065435))

(assert (=> b!1684364 m!2063727))

(declare-fun m!2065437 () Bool)

(assert (=> b!1684364 m!2065437))

(assert (=> b!1683482 d!512586))

(declare-fun d!512588 () Bool)

(assert (=> d!512588 (= (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) (list!7420 (c!274779 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(declare-fun bs!399431 () Bool)

(assert (= bs!399431 d!512588))

(declare-fun m!2065439 () Bool)

(assert (=> bs!399431 m!2065439))

(assert (=> b!1683482 d!512588))

(declare-fun d!512590 () Bool)

(assert (=> d!512590 (= (get!5414 lt!638321) (v!24868 lt!638321))))

(assert (=> b!1683564 d!512590))

(declare-fun d!512592 () Bool)

(assert (=> d!512592 (= (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638321))))) (dynLambda!8369 (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638321))))))))

(declare-fun b_lambda!52985 () Bool)

(assert (=> (not b_lambda!52985) (not d!512592)))

(declare-fun t!154599 () Bool)

(declare-fun tb!97663 () Bool)

(assert (=> (and b!1683332 (= (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154599) tb!97663))

(declare-fun result!117740 () Bool)

(assert (=> tb!97663 (= result!117740 (inv!21 (dynLambda!8369 (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638321)))))))))

(declare-fun m!2065441 () Bool)

(assert (=> tb!97663 m!2065441))

(assert (=> d!512592 t!154599))

(declare-fun b_and!120389 () Bool)

(assert (= b_and!120381 (and (=> t!154599 result!117740) b_and!120389)))

(declare-fun tb!97665 () Bool)

(declare-fun t!154601 () Bool)

(assert (=> (and b!1683338 (= (toValue!4726 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154601) tb!97665))

(declare-fun result!117742 () Bool)

(assert (= result!117742 result!117740))

(assert (=> d!512592 t!154601))

(declare-fun b_and!120391 () Bool)

(assert (= b_and!120383 (and (=> t!154601 result!117742) b_and!120391)))

(declare-fun t!154603 () Bool)

(declare-fun tb!97667 () Bool)

(assert (=> (and b!1683914 (= (toValue!4726 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154603) tb!97667))

(declare-fun result!117744 () Bool)

(assert (= result!117744 result!117740))

(assert (=> d!512592 t!154603))

(declare-fun b_and!120393 () Bool)

(assert (= b_and!120385 (and (=> t!154603 result!117744) b_and!120393)))

(declare-fun t!154605 () Bool)

(declare-fun tb!97669 () Bool)

(assert (=> (and b!1683928 (= (toValue!4726 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154605) tb!97669))

(declare-fun result!117746 () Bool)

(assert (= result!117746 result!117740))

(assert (=> d!512592 t!154605))

(declare-fun b_and!120395 () Bool)

(assert (= b_and!120387 (and (=> t!154605 result!117746) b_and!120395)))

(assert (=> d!512592 m!2063857))

(declare-fun m!2065443 () Bool)

(assert (=> d!512592 m!2065443))

(assert (=> b!1683564 d!512592))

(declare-fun d!512594 () Bool)

(assert (=> d!512594 (= (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!638321)))) (fromListB!1025 (originalCharacters!4065 (_1!10502 (get!5414 lt!638321)))))))

(declare-fun bs!399432 () Bool)

(assert (= bs!399432 d!512594))

(declare-fun m!2065445 () Bool)

(assert (=> bs!399432 m!2065445))

(assert (=> b!1683564 d!512594))

(declare-fun d!512596 () Bool)

(assert (=> d!512596 (= (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))) (isBalanced!1926 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))))))

(declare-fun bs!399433 () Bool)

(assert (= bs!399433 d!512596))

(declare-fun m!2065471 () Bool)

(assert (=> bs!399433 m!2065471))

(assert (=> tb!97603 d!512596))

(declare-fun d!512598 () Bool)

(assert (=> d!512598 (= (list!7416 lt!638642) (list!7419 (c!274781 lt!638642)))))

(declare-fun bs!399434 () Bool)

(assert (= bs!399434 d!512598))

(declare-fun m!2065475 () Bool)

(assert (=> bs!399434 m!2065475))

(assert (=> d!512300 d!512598))

(declare-fun d!512602 () Bool)

(declare-fun e!1078459 () Bool)

(assert (=> d!512602 e!1078459))

(declare-fun res!755132 () Bool)

(assert (=> d!512602 (=> (not res!755132) (not e!1078459))))

(declare-fun lt!638985 () BalanceConc!12246)

(assert (=> d!512602 (= res!755132 (= (list!7416 lt!638985) (Cons!18465 (h!23866 tokens!457) Nil!18465)))))

(declare-fun choose!10176 (Token!6068) BalanceConc!12246)

(assert (=> d!512602 (= lt!638985 (choose!10176 (h!23866 tokens!457)))))

(assert (=> d!512602 (= (singleton!798 (h!23866 tokens!457)) lt!638985)))

(declare-fun b!1684402 () Bool)

(assert (=> b!1684402 (= e!1078459 (isBalanced!1924 (c!274781 lt!638985)))))

(assert (= (and d!512602 res!755132) b!1684402))

(declare-fun m!2065493 () Bool)

(assert (=> d!512602 m!2065493))

(declare-fun m!2065495 () Bool)

(assert (=> d!512602 m!2065495))

(declare-fun m!2065497 () Bool)

(assert (=> b!1684402 m!2065497))

(assert (=> d!512300 d!512602))

(declare-fun d!512610 () Bool)

(declare-fun lt!638988 () Bool)

(declare-fun content!2598 (List!18536) (InoxSet Rule!6302))

(assert (=> d!512610 (= lt!638988 (select (content!2598 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!638321)))))))

(declare-fun e!1078464 () Bool)

(assert (=> d!512610 (= lt!638988 e!1078464)))

(declare-fun res!755138 () Bool)

(assert (=> d!512610 (=> (not res!755138) (not e!1078464))))

(assert (=> d!512610 (= res!755138 ((_ is Cons!18466) rules!1846))))

(assert (=> d!512610 (= (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!638321)))) lt!638988)))

(declare-fun b!1684407 () Bool)

(declare-fun e!1078465 () Bool)

(assert (=> b!1684407 (= e!1078464 e!1078465)))

(declare-fun res!755137 () Bool)

(assert (=> b!1684407 (=> res!755137 e!1078465)))

(assert (=> b!1684407 (= res!755137 (= (h!23867 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!638321)))))))

(declare-fun b!1684408 () Bool)

(assert (=> b!1684408 (= e!1078465 (contains!3242 (t!154513 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!638321)))))))

(assert (= (and d!512610 res!755138) b!1684407))

(assert (= (and b!1684407 (not res!755137)) b!1684408))

(declare-fun m!2065501 () Bool)

(assert (=> d!512610 m!2065501))

(declare-fun m!2065503 () Bool)

(assert (=> d!512610 m!2065503))

(declare-fun m!2065505 () Bool)

(assert (=> b!1684408 m!2065505))

(assert (=> b!1683560 d!512610))

(assert (=> b!1683560 d!512590))

(declare-fun d!512614 () Bool)

(declare-fun lt!638991 () Int)

(declare-fun size!14710 (List!18535) Int)

(assert (=> d!512614 (= lt!638991 (size!14710 (list!7416 lt!638180)))))

(declare-fun size!14711 (Conc!6151) Int)

(assert (=> d!512614 (= lt!638991 (size!14711 (c!274781 lt!638180)))))

(assert (=> d!512614 (= (size!14704 lt!638180) lt!638991)))

(declare-fun bs!399437 () Bool)

(assert (= bs!399437 d!512614))

(assert (=> bs!399437 m!2064327))

(assert (=> bs!399437 m!2064327))

(declare-fun m!2065515 () Bool)

(assert (=> bs!399437 m!2065515))

(declare-fun m!2065517 () Bool)

(assert (=> bs!399437 m!2065517))

(assert (=> d!512284 d!512614))

(declare-fun d!512618 () Bool)

(assert (=> d!512618 (= (list!7415 lt!638637) (list!7420 (c!274779 lt!638637)))))

(declare-fun bs!399438 () Bool)

(assert (= bs!399438 d!512618))

(declare-fun m!2065519 () Bool)

(assert (=> bs!399438 m!2065519))

(assert (=> d!512284 d!512618))

(declare-fun d!512620 () Bool)

(assert (=> d!512620 (= (dropList!734 lt!638180 0) (drop!955 (list!7419 (c!274781 lt!638180)) 0))))

(declare-fun bs!399439 () Bool)

(assert (= bs!399439 d!512620))

(declare-fun m!2065521 () Bool)

(assert (=> bs!399439 m!2065521))

(assert (=> bs!399439 m!2065521))

(declare-fun m!2065523 () Bool)

(assert (=> bs!399439 m!2065523))

(assert (=> d!512284 d!512620))

(declare-fun d!512622 () Bool)

(assert (=> d!512622 (= (list!7415 (BalanceConc!12245 Empty!6150)) (list!7420 (c!274779 (BalanceConc!12245 Empty!6150))))))

(declare-fun bs!399441 () Bool)

(assert (= bs!399441 d!512622))

(declare-fun m!2065527 () Bool)

(assert (=> bs!399441 m!2065527))

(assert (=> d!512284 d!512622))

(declare-fun d!512626 () Bool)

(declare-fun lt!639003 () List!18533)

(assert (=> d!512626 (= lt!639003 (++!5051 (list!7415 (BalanceConc!12245 Empty!6150)) (printList!993 thiss!17113 (dropList!734 lt!638180 0))))))

(declare-fun e!1078493 () List!18533)

(assert (=> d!512626 (= lt!639003 e!1078493)))

(declare-fun c!274991 () Bool)

(assert (=> d!512626 (= c!274991 ((_ is Cons!18465) (dropList!734 lt!638180 0)))))

(assert (=> d!512626 (= (printListTailRec!424 thiss!17113 (dropList!734 lt!638180 0) (list!7415 (BalanceConc!12245 Empty!6150))) lt!639003)))

(declare-fun b!1684445 () Bool)

(assert (=> b!1684445 (= e!1078493 (printListTailRec!424 thiss!17113 (t!154512 (dropList!734 lt!638180 0)) (++!5051 (list!7415 (BalanceConc!12245 Empty!6150)) (list!7415 (charsOf!1900 (h!23866 (dropList!734 lt!638180 0)))))))))

(declare-fun lt!639006 () List!18533)

(assert (=> b!1684445 (= lt!639006 (list!7415 (charsOf!1900 (h!23866 (dropList!734 lt!638180 0)))))))

(declare-fun lt!639007 () List!18533)

(assert (=> b!1684445 (= lt!639007 (printList!993 thiss!17113 (t!154512 (dropList!734 lt!638180 0))))))

(declare-fun lt!639004 () Unit!31713)

(declare-fun lemmaConcatAssociativity!1053 (List!18533 List!18533 List!18533) Unit!31713)

(assert (=> b!1684445 (= lt!639004 (lemmaConcatAssociativity!1053 (list!7415 (BalanceConc!12245 Empty!6150)) lt!639006 lt!639007))))

(assert (=> b!1684445 (= (++!5051 (++!5051 (list!7415 (BalanceConc!12245 Empty!6150)) lt!639006) lt!639007) (++!5051 (list!7415 (BalanceConc!12245 Empty!6150)) (++!5051 lt!639006 lt!639007)))))

(declare-fun lt!639005 () Unit!31713)

(assert (=> b!1684445 (= lt!639005 lt!639004)))

(declare-fun b!1684446 () Bool)

(assert (=> b!1684446 (= e!1078493 (list!7415 (BalanceConc!12245 Empty!6150)))))

(assert (= (and d!512626 c!274991) b!1684445))

(assert (= (and d!512626 (not c!274991)) b!1684446))

(assert (=> d!512626 m!2064409))

(declare-fun m!2065531 () Bool)

(assert (=> d!512626 m!2065531))

(assert (=> d!512626 m!2064413))

(assert (=> d!512626 m!2065531))

(declare-fun m!2065533 () Bool)

(assert (=> d!512626 m!2065533))

(assert (=> b!1684445 m!2064413))

(declare-fun m!2065535 () Bool)

(assert (=> b!1684445 m!2065535))

(declare-fun m!2065537 () Bool)

(assert (=> b!1684445 m!2065537))

(declare-fun m!2065539 () Bool)

(assert (=> b!1684445 m!2065539))

(declare-fun m!2065541 () Bool)

(assert (=> b!1684445 m!2065541))

(declare-fun m!2065543 () Bool)

(assert (=> b!1684445 m!2065543))

(assert (=> b!1684445 m!2064413))

(declare-fun m!2065545 () Bool)

(assert (=> b!1684445 m!2065545))

(assert (=> b!1684445 m!2064413))

(assert (=> b!1684445 m!2065543))

(declare-fun m!2065547 () Bool)

(assert (=> b!1684445 m!2065547))

(assert (=> b!1684445 m!2065541))

(assert (=> b!1684445 m!2065535))

(assert (=> b!1684445 m!2064413))

(declare-fun m!2065549 () Bool)

(assert (=> b!1684445 m!2065549))

(assert (=> b!1684445 m!2065549))

(declare-fun m!2065551 () Bool)

(assert (=> b!1684445 m!2065551))

(assert (=> b!1684445 m!2065537))

(declare-fun m!2065553 () Bool)

(assert (=> b!1684445 m!2065553))

(assert (=> d!512284 d!512626))

(declare-fun lt!639008 () Bool)

(declare-fun d!512630 () Bool)

(assert (=> d!512630 (= lt!639008 (isEmpty!11547 (list!7415 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))))))))))

(assert (=> d!512630 (= lt!639008 (isEmpty!11552 (c!274779 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))))))))))

(assert (=> d!512630 (= (isEmpty!11549 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457)))))) lt!639008)))

(declare-fun bs!399442 () Bool)

(assert (= bs!399442 d!512630))

(declare-fun m!2065555 () Bool)

(assert (=> bs!399442 m!2065555))

(assert (=> bs!399442 m!2065555))

(declare-fun m!2065557 () Bool)

(assert (=> bs!399442 m!2065557))

(declare-fun m!2065559 () Bool)

(assert (=> bs!399442 m!2065559))

(assert (=> b!1683641 d!512630))

(declare-fun b!1684447 () Bool)

(declare-fun e!1078496 () Bool)

(declare-fun lt!639009 () tuple2!18198)

(assert (=> b!1684447 (= e!1078496 (not (isEmpty!11536 (_1!10501 lt!639009))))))

(declare-fun b!1684448 () Bool)

(declare-fun e!1078495 () Bool)

(assert (=> b!1684448 (= e!1078495 (= (list!7415 (_2!10501 lt!639009)) (_2!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))))))))))

(declare-fun d!512632 () Bool)

(assert (=> d!512632 e!1078495))

(declare-fun res!755157 () Bool)

(assert (=> d!512632 (=> (not res!755157) (not e!1078495))))

(declare-fun e!1078494 () Bool)

(assert (=> d!512632 (= res!755157 e!1078494)))

(declare-fun c!274992 () Bool)

(assert (=> d!512632 (= c!274992 (> (size!14704 (_1!10501 lt!639009)) 0))))

(assert (=> d!512632 (= lt!639009 (lexTailRecV2!628 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))) (BalanceConc!12245 Empty!6150) (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))) (BalanceConc!12247 Empty!6151)))))

(assert (=> d!512632 (= (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457)))) lt!639009)))

(declare-fun b!1684449 () Bool)

(assert (=> b!1684449 (= e!1078494 (= (_2!10501 lt!639009) (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457)))))))

(declare-fun b!1684450 () Bool)

(assert (=> b!1684450 (= e!1078494 e!1078496)))

(declare-fun res!755159 () Bool)

(assert (=> b!1684450 (= res!755159 (< (size!14705 (_2!10501 lt!639009)) (size!14705 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))))))))

(assert (=> b!1684450 (=> (not res!755159) (not e!1078496))))

(declare-fun b!1684451 () Bool)

(declare-fun res!755158 () Bool)

(assert (=> b!1684451 (=> (not res!755158) (not e!1078495))))

(assert (=> b!1684451 (= res!755158 (= (list!7416 (_1!10501 lt!639009)) (_1!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))))))))))

(assert (= (and d!512632 c!274992) b!1684450))

(assert (= (and d!512632 (not c!274992)) b!1684449))

(assert (= (and b!1684450 res!755159) b!1684447))

(assert (= (and d!512632 res!755157) b!1684451))

(assert (= (and b!1684451 res!755158) b!1684448))

(declare-fun m!2065561 () Bool)

(assert (=> b!1684447 m!2065561))

(declare-fun m!2065563 () Bool)

(assert (=> b!1684451 m!2065563))

(assert (=> b!1684451 m!2064109))

(declare-fun m!2065565 () Bool)

(assert (=> b!1684451 m!2065565))

(assert (=> b!1684451 m!2065565))

(declare-fun m!2065567 () Bool)

(assert (=> b!1684451 m!2065567))

(declare-fun m!2065569 () Bool)

(assert (=> b!1684448 m!2065569))

(assert (=> b!1684448 m!2064109))

(assert (=> b!1684448 m!2065565))

(assert (=> b!1684448 m!2065565))

(assert (=> b!1684448 m!2065567))

(declare-fun m!2065571 () Bool)

(assert (=> b!1684450 m!2065571))

(assert (=> b!1684450 m!2064109))

(declare-fun m!2065573 () Bool)

(assert (=> b!1684450 m!2065573))

(declare-fun m!2065575 () Bool)

(assert (=> d!512632 m!2065575))

(assert (=> d!512632 m!2064109))

(assert (=> d!512632 m!2064109))

(declare-fun m!2065577 () Bool)

(assert (=> d!512632 m!2065577))

(assert (=> b!1683641 d!512632))

(declare-fun d!512634 () Bool)

(declare-fun lt!639010 () BalanceConc!12244)

(assert (=> d!512634 (= (list!7415 lt!639010) (printList!993 thiss!17113 (list!7416 (seqFromList!2239 (t!154512 tokens!457)))))))

(assert (=> d!512634 (= lt!639010 (printTailRec!931 thiss!17113 (seqFromList!2239 (t!154512 tokens!457)) 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!512634 (= (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))) lt!639010)))

(declare-fun bs!399443 () Bool)

(assert (= bs!399443 d!512634))

(declare-fun m!2065579 () Bool)

(assert (=> bs!399443 m!2065579))

(assert (=> bs!399443 m!2063473))

(declare-fun m!2065581 () Bool)

(assert (=> bs!399443 m!2065581))

(assert (=> bs!399443 m!2065581))

(declare-fun m!2065583 () Bool)

(assert (=> bs!399443 m!2065583))

(assert (=> bs!399443 m!2063473))

(declare-fun m!2065585 () Bool)

(assert (=> bs!399443 m!2065585))

(assert (=> b!1683641 d!512634))

(assert (=> b!1683641 d!512262))

(declare-fun d!512636 () Bool)

(assert (=> d!512636 (= (list!7415 (_2!10501 lt!638227)) (list!7420 (c!274779 (_2!10501 lt!638227))))))

(declare-fun bs!399444 () Bool)

(assert (= bs!399444 d!512636))

(declare-fun m!2065587 () Bool)

(assert (=> bs!399444 m!2065587))

(assert (=> b!1683432 d!512636))

(declare-fun b!1684499 () Bool)

(declare-fun e!1078527 () tuple2!18206)

(assert (=> b!1684499 (= e!1078527 (tuple2!18207 Nil!18465 (list!7415 (seqFromList!2240 lt!638185))))))

(declare-fun b!1684500 () Bool)

(declare-fun e!1078528 () Bool)

(declare-fun e!1078526 () Bool)

(assert (=> b!1684500 (= e!1078528 e!1078526)))

(declare-fun res!755195 () Bool)

(declare-fun lt!639020 () tuple2!18206)

(assert (=> b!1684500 (= res!755195 (< (size!14706 (_2!10505 lt!639020)) (size!14706 (list!7415 (seqFromList!2240 lt!638185)))))))

(assert (=> b!1684500 (=> (not res!755195) (not e!1078526))))

(declare-fun b!1684501 () Bool)

(assert (=> b!1684501 (= e!1078526 (not (isEmpty!11544 (_1!10505 lt!639020))))))

(declare-fun b!1684502 () Bool)

(declare-fun lt!639019 () Option!3558)

(declare-fun lt!639021 () tuple2!18206)

(assert (=> b!1684502 (= e!1078527 (tuple2!18207 (Cons!18465 (_1!10502 (v!24868 lt!639019)) (_1!10505 lt!639021)) (_2!10505 lt!639021)))))

(assert (=> b!1684502 (= lt!639021 (lexList!905 thiss!17113 rules!1846 (_2!10502 (v!24868 lt!639019))))))

(declare-fun b!1684503 () Bool)

(assert (=> b!1684503 (= e!1078528 (= (_2!10505 lt!639020) (list!7415 (seqFromList!2240 lt!638185))))))

(declare-fun d!512638 () Bool)

(assert (=> d!512638 e!1078528))

(declare-fun c!275000 () Bool)

(assert (=> d!512638 (= c!275000 (> (size!14710 (_1!10505 lt!639020)) 0))))

(assert (=> d!512638 (= lt!639020 e!1078527)))

(declare-fun c!274999 () Bool)

(assert (=> d!512638 (= c!274999 ((_ is Some!3557) lt!639019))))

(assert (=> d!512638 (= lt!639019 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 lt!638185))))))

(assert (=> d!512638 (= (lexList!905 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 lt!638185))) lt!639020)))

(assert (= (and d!512638 c!274999) b!1684502))

(assert (= (and d!512638 (not c!274999)) b!1684499))

(assert (= (and d!512638 c!275000) b!1684500))

(assert (= (and d!512638 (not c!275000)) b!1684503))

(assert (= (and b!1684500 res!755195) b!1684501))

(declare-fun m!2065655 () Bool)

(assert (=> b!1684500 m!2065655))

(assert (=> b!1684500 m!2063663))

(declare-fun m!2065657 () Bool)

(assert (=> b!1684500 m!2065657))

(declare-fun m!2065659 () Bool)

(assert (=> b!1684501 m!2065659))

(declare-fun m!2065661 () Bool)

(assert (=> b!1684502 m!2065661))

(declare-fun m!2065663 () Bool)

(assert (=> d!512638 m!2065663))

(assert (=> d!512638 m!2063663))

(declare-fun m!2065665 () Bool)

(assert (=> d!512638 m!2065665))

(assert (=> b!1683432 d!512638))

(declare-fun d!512654 () Bool)

(assert (=> d!512654 (= (list!7415 (seqFromList!2240 lt!638185)) (list!7420 (c!274779 (seqFromList!2240 lt!638185))))))

(declare-fun bs!399448 () Bool)

(assert (= bs!399448 d!512654))

(declare-fun m!2065667 () Bool)

(assert (=> bs!399448 m!2065667))

(assert (=> b!1683432 d!512654))

(declare-fun d!512656 () Bool)

(declare-fun c!275003 () Bool)

(assert (=> d!512656 (= c!275003 ((_ is Nil!18463) lt!638341))))

(declare-fun e!1078531 () (InoxSet C!9332))

(assert (=> d!512656 (= (content!2597 lt!638341) e!1078531)))

(declare-fun b!1684508 () Bool)

(assert (=> b!1684508 (= e!1078531 ((as const (Array C!9332 Bool)) false))))

(declare-fun b!1684509 () Bool)

(assert (=> b!1684509 (= e!1078531 ((_ map or) (store ((as const (Array C!9332 Bool)) false) (h!23864 lt!638341) true) (content!2597 (t!154510 lt!638341))))))

(assert (= (and d!512656 c!275003) b!1684508))

(assert (= (and d!512656 (not c!275003)) b!1684509))

(declare-fun m!2065669 () Bool)

(assert (=> b!1684509 m!2065669))

(declare-fun m!2065671 () Bool)

(assert (=> b!1684509 m!2065671))

(assert (=> d!512206 d!512656))

(declare-fun d!512658 () Bool)

(declare-fun c!275004 () Bool)

(assert (=> d!512658 (= c!275004 ((_ is Nil!18463) lt!638185))))

(declare-fun e!1078532 () (InoxSet C!9332))

(assert (=> d!512658 (= (content!2597 lt!638185) e!1078532)))

(declare-fun b!1684510 () Bool)

(assert (=> b!1684510 (= e!1078532 ((as const (Array C!9332 Bool)) false))))

(declare-fun b!1684511 () Bool)

(assert (=> b!1684511 (= e!1078532 ((_ map or) (store ((as const (Array C!9332 Bool)) false) (h!23864 lt!638185) true) (content!2597 (t!154510 lt!638185))))))

(assert (= (and d!512658 c!275004) b!1684510))

(assert (= (and d!512658 (not c!275004)) b!1684511))

(declare-fun m!2065673 () Bool)

(assert (=> b!1684511 m!2065673))

(declare-fun m!2065675 () Bool)

(assert (=> b!1684511 m!2065675))

(assert (=> d!512206 d!512658))

(declare-fun d!512660 () Bool)

(declare-fun c!275005 () Bool)

(assert (=> d!512660 (= c!275005 ((_ is Nil!18463) lt!638186))))

(declare-fun e!1078533 () (InoxSet C!9332))

(assert (=> d!512660 (= (content!2597 lt!638186) e!1078533)))

(declare-fun b!1684512 () Bool)

(assert (=> b!1684512 (= e!1078533 ((as const (Array C!9332 Bool)) false))))

(declare-fun b!1684513 () Bool)

(assert (=> b!1684513 (= e!1078533 ((_ map or) (store ((as const (Array C!9332 Bool)) false) (h!23864 lt!638186) true) (content!2597 (t!154510 lt!638186))))))

(assert (= (and d!512660 c!275005) b!1684512))

(assert (= (and d!512660 (not c!275005)) b!1684513))

(declare-fun m!2065677 () Bool)

(assert (=> b!1684513 m!2065677))

(declare-fun m!2065679 () Bool)

(assert (=> b!1684513 m!2065679))

(assert (=> d!512206 d!512660))

(declare-fun d!512662 () Bool)

(assert (=> d!512662 (= (list!7415 lt!638525) (list!7420 (c!274779 lt!638525)))))

(declare-fun bs!399449 () Bool)

(assert (= bs!399449 d!512662))

(declare-fun m!2065681 () Bool)

(assert (=> bs!399449 m!2065681))

(assert (=> d!512264 d!512662))

(declare-fun d!512664 () Bool)

(declare-fun c!275006 () Bool)

(assert (=> d!512664 (= c!275006 ((_ is Cons!18465) (list!7416 lt!638183)))))

(declare-fun e!1078534 () List!18533)

(assert (=> d!512664 (= (printList!993 thiss!17113 (list!7416 lt!638183)) e!1078534)))

(declare-fun b!1684514 () Bool)

(assert (=> b!1684514 (= e!1078534 (++!5051 (list!7415 (charsOf!1900 (h!23866 (list!7416 lt!638183)))) (printList!993 thiss!17113 (t!154512 (list!7416 lt!638183)))))))

(declare-fun b!1684515 () Bool)

(assert (=> b!1684515 (= e!1078534 Nil!18463)))

(assert (= (and d!512664 c!275006) b!1684514))

(assert (= (and d!512664 (not c!275006)) b!1684515))

(declare-fun m!2065683 () Bool)

(assert (=> b!1684514 m!2065683))

(assert (=> b!1684514 m!2065683))

(declare-fun m!2065685 () Bool)

(assert (=> b!1684514 m!2065685))

(declare-fun m!2065687 () Bool)

(assert (=> b!1684514 m!2065687))

(assert (=> b!1684514 m!2065685))

(assert (=> b!1684514 m!2065687))

(declare-fun m!2065689 () Bool)

(assert (=> b!1684514 m!2065689))

(assert (=> d!512264 d!512664))

(assert (=> d!512264 d!512182))

(declare-fun d!512666 () Bool)

(declare-fun lt!639026 () BalanceConc!12244)

(assert (=> d!512666 (= (list!7415 lt!639026) (printListTailRec!424 thiss!17113 (dropList!734 lt!638183 0) (list!7415 (BalanceConc!12245 Empty!6150))))))

(declare-fun e!1078535 () BalanceConc!12244)

(assert (=> d!512666 (= lt!639026 e!1078535)))

(declare-fun c!275007 () Bool)

(assert (=> d!512666 (= c!275007 (>= 0 (size!14704 lt!638183)))))

(declare-fun e!1078536 () Bool)

(assert (=> d!512666 e!1078536))

(declare-fun res!755196 () Bool)

(assert (=> d!512666 (=> (not res!755196) (not e!1078536))))

(assert (=> d!512666 (= res!755196 (>= 0 0))))

(assert (=> d!512666 (= (printTailRec!931 thiss!17113 lt!638183 0 (BalanceConc!12245 Empty!6150)) lt!639026)))

(declare-fun b!1684516 () Bool)

(assert (=> b!1684516 (= e!1078536 (<= 0 (size!14704 lt!638183)))))

(declare-fun b!1684517 () Bool)

(assert (=> b!1684517 (= e!1078535 (BalanceConc!12245 Empty!6150))))

(declare-fun b!1684518 () Bool)

(assert (=> b!1684518 (= e!1078535 (printTailRec!931 thiss!17113 lt!638183 (+ 0 1) (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 lt!638183 0)))))))

(declare-fun lt!639025 () List!18535)

(assert (=> b!1684518 (= lt!639025 (list!7416 lt!638183))))

(declare-fun lt!639022 () Unit!31713)

(assert (=> b!1684518 (= lt!639022 (lemmaDropApply!631 lt!639025 0))))

(assert (=> b!1684518 (= (head!3770 (drop!955 lt!639025 0)) (apply!5025 lt!639025 0))))

(declare-fun lt!639023 () Unit!31713)

(assert (=> b!1684518 (= lt!639023 lt!639022)))

(declare-fun lt!639024 () List!18535)

(assert (=> b!1684518 (= lt!639024 (list!7416 lt!638183))))

(declare-fun lt!639028 () Unit!31713)

(assert (=> b!1684518 (= lt!639028 (lemmaDropTail!611 lt!639024 0))))

(assert (=> b!1684518 (= (tail!2513 (drop!955 lt!639024 0)) (drop!955 lt!639024 (+ 0 1)))))

(declare-fun lt!639027 () Unit!31713)

(assert (=> b!1684518 (= lt!639027 lt!639028)))

(assert (= (and d!512666 res!755196) b!1684516))

(assert (= (and d!512666 c!275007) b!1684517))

(assert (= (and d!512666 (not c!275007)) b!1684518))

(declare-fun m!2065691 () Bool)

(assert (=> d!512666 m!2065691))

(declare-fun m!2065693 () Bool)

(assert (=> d!512666 m!2065693))

(declare-fun m!2065695 () Bool)

(assert (=> d!512666 m!2065695))

(assert (=> d!512666 m!2064413))

(assert (=> d!512666 m!2065693))

(assert (=> d!512666 m!2064413))

(declare-fun m!2065697 () Bool)

(assert (=> d!512666 m!2065697))

(assert (=> b!1684516 m!2065695))

(declare-fun m!2065699 () Bool)

(assert (=> b!1684518 m!2065699))

(declare-fun m!2065701 () Bool)

(assert (=> b!1684518 m!2065701))

(declare-fun m!2065703 () Bool)

(assert (=> b!1684518 m!2065703))

(declare-fun m!2065705 () Bool)

(assert (=> b!1684518 m!2065705))

(declare-fun m!2065707 () Bool)

(assert (=> b!1684518 m!2065707))

(declare-fun m!2065709 () Bool)

(assert (=> b!1684518 m!2065709))

(declare-fun m!2065711 () Bool)

(assert (=> b!1684518 m!2065711))

(assert (=> b!1684518 m!2065705))

(assert (=> b!1684518 m!2065707))

(declare-fun m!2065713 () Bool)

(assert (=> b!1684518 m!2065713))

(assert (=> b!1684518 m!2065711))

(declare-fun m!2065715 () Bool)

(assert (=> b!1684518 m!2065715))

(assert (=> b!1684518 m!2065699))

(declare-fun m!2065717 () Bool)

(assert (=> b!1684518 m!2065717))

(declare-fun m!2065719 () Bool)

(assert (=> b!1684518 m!2065719))

(assert (=> b!1684518 m!2063513))

(assert (=> b!1684518 m!2065717))

(declare-fun m!2065721 () Bool)

(assert (=> b!1684518 m!2065721))

(assert (=> d!512264 d!512666))

(declare-fun bs!399450 () Bool)

(declare-fun d!512668 () Bool)

(assert (= bs!399450 (and d!512668 d!512576)))

(declare-fun lambda!68291 () Int)

(assert (=> bs!399450 (= (= (toValue!4726 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (= lambda!68291 lambda!68290))))

(assert (=> d!512668 true))

(assert (=> d!512668 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8370 order!11141 lambda!68291))))

(assert (=> d!512668 (= (equivClasses!1216 (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (h!23867 rules!1846)))) (Forall2!538 lambda!68291))))

(declare-fun bs!399451 () Bool)

(assert (= bs!399451 d!512668))

(declare-fun m!2065723 () Bool)

(assert (=> bs!399451 m!2065723))

(assert (=> b!1683501 d!512668))

(declare-fun d!512670 () Bool)

(declare-fun lt!639029 () Bool)

(assert (=> d!512670 (= lt!639029 (select (content!2598 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!638606)))))))

(declare-fun e!1078537 () Bool)

(assert (=> d!512670 (= lt!639029 e!1078537)))

(declare-fun res!755198 () Bool)

(assert (=> d!512670 (=> (not res!755198) (not e!1078537))))

(assert (=> d!512670 (= res!755198 ((_ is Cons!18466) rules!1846))))

(assert (=> d!512670 (= (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!638606)))) lt!639029)))

(declare-fun b!1684519 () Bool)

(declare-fun e!1078538 () Bool)

(assert (=> b!1684519 (= e!1078537 e!1078538)))

(declare-fun res!755197 () Bool)

(assert (=> b!1684519 (=> res!755197 e!1078538)))

(assert (=> b!1684519 (= res!755197 (= (h!23867 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!638606)))))))

(declare-fun b!1684520 () Bool)

(assert (=> b!1684520 (= e!1078538 (contains!3242 (t!154513 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!638606)))))))

(assert (= (and d!512670 res!755198) b!1684519))

(assert (= (and b!1684519 (not res!755197)) b!1684520))

(assert (=> d!512670 m!2065501))

(declare-fun m!2065725 () Bool)

(assert (=> d!512670 m!2065725))

(declare-fun m!2065727 () Bool)

(assert (=> b!1684520 m!2065727))

(assert (=> b!1683706 d!512670))

(assert (=> b!1683706 d!512562))

(declare-fun d!512672 () Bool)

(declare-fun lt!639030 () Int)

(assert (=> d!512672 (= lt!639030 (size!14710 (list!7416 (_1!10501 lt!638227))))))

(assert (=> d!512672 (= lt!639030 (size!14711 (c!274781 (_1!10501 lt!638227))))))

(assert (=> d!512672 (= (size!14704 (_1!10501 lt!638227)) lt!639030)))

(declare-fun bs!399452 () Bool)

(assert (= bs!399452 d!512672))

(assert (=> bs!399452 m!2063661))

(assert (=> bs!399452 m!2063661))

(declare-fun m!2065729 () Bool)

(assert (=> bs!399452 m!2065729))

(declare-fun m!2065731 () Bool)

(assert (=> bs!399452 m!2065731))

(assert (=> d!512124 d!512672))

(declare-fun b!1684568 () Bool)

(declare-fun lt!639225 () BalanceConc!12244)

(declare-fun lt!639209 () Option!3559)

(declare-fun e!1078566 () tuple2!18198)

(declare-fun append!577 (BalanceConc!12246 Token!6068) BalanceConc!12246)

(assert (=> b!1684568 (= e!1078566 (lexTailRecV2!628 thiss!17113 rules!1846 (seqFromList!2240 lt!638185) lt!639225 (_2!10503 (v!24869 lt!639209)) (append!577 (BalanceConc!12247 Empty!6151) (_1!10503 (v!24869 lt!639209)))))))

(declare-fun lt!639212 () tuple2!18198)

(declare-fun lexRec!388 (LexerInterface!2880 List!18536 BalanceConc!12244) tuple2!18198)

(assert (=> b!1684568 (= lt!639212 (lexRec!388 thiss!17113 rules!1846 (_2!10503 (v!24869 lt!639209))))))

(declare-fun lt!639215 () List!18533)

(assert (=> b!1684568 (= lt!639215 (list!7415 (BalanceConc!12245 Empty!6150)))))

(declare-fun lt!639238 () List!18533)

(assert (=> b!1684568 (= lt!639238 (list!7415 (charsOf!1900 (_1!10503 (v!24869 lt!639209)))))))

(declare-fun lt!639216 () List!18533)

(assert (=> b!1684568 (= lt!639216 (list!7415 (_2!10503 (v!24869 lt!639209))))))

(declare-fun lt!639226 () Unit!31713)

(assert (=> b!1684568 (= lt!639226 (lemmaConcatAssociativity!1053 lt!639215 lt!639238 lt!639216))))

(assert (=> b!1684568 (= (++!5051 (++!5051 lt!639215 lt!639238) lt!639216) (++!5051 lt!639215 (++!5051 lt!639238 lt!639216)))))

(declare-fun lt!639208 () Unit!31713)

(assert (=> b!1684568 (= lt!639208 lt!639226)))

(declare-fun lt!639229 () Option!3559)

(assert (=> b!1684568 (= lt!639229 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 (seqFromList!2240 lt!638185)))))

(declare-fun c!275026 () Bool)

(assert (=> b!1684568 (= c!275026 ((_ is Some!3558) lt!639229))))

(declare-fun e!1078565 () tuple2!18198)

(assert (=> b!1684568 (= (lexRec!388 thiss!17113 rules!1846 (seqFromList!2240 lt!638185)) e!1078565)))

(declare-fun lt!639230 () Unit!31713)

(declare-fun Unit!31753 () Unit!31713)

(assert (=> b!1684568 (= lt!639230 Unit!31753)))

(declare-fun lt!639222 () List!18535)

(assert (=> b!1684568 (= lt!639222 (list!7416 (BalanceConc!12247 Empty!6151)))))

(declare-fun lt!639219 () List!18535)

(assert (=> b!1684568 (= lt!639219 (Cons!18465 (_1!10503 (v!24869 lt!639209)) Nil!18465))))

(declare-fun lt!639227 () List!18535)

(assert (=> b!1684568 (= lt!639227 (list!7416 (_1!10501 lt!639212)))))

(declare-fun lt!639210 () Unit!31713)

(declare-fun lemmaConcatAssociativity!1054 (List!18535 List!18535 List!18535) Unit!31713)

(assert (=> b!1684568 (= lt!639210 (lemmaConcatAssociativity!1054 lt!639222 lt!639219 lt!639227))))

(assert (=> b!1684568 (= (++!5055 (++!5055 lt!639222 lt!639219) lt!639227) (++!5055 lt!639222 (++!5055 lt!639219 lt!639227)))))

(declare-fun lt!639232 () Unit!31713)

(assert (=> b!1684568 (= lt!639232 lt!639210)))

(declare-fun lt!639234 () List!18533)

(assert (=> b!1684568 (= lt!639234 (++!5051 (list!7415 (BalanceConc!12245 Empty!6150)) (list!7415 (charsOf!1900 (_1!10503 (v!24869 lt!639209))))))))

(declare-fun lt!639211 () List!18533)

(assert (=> b!1684568 (= lt!639211 (list!7415 (_2!10503 (v!24869 lt!639209))))))

(declare-fun lt!639240 () List!18535)

(assert (=> b!1684568 (= lt!639240 (list!7416 (append!577 (BalanceConc!12247 Empty!6151) (_1!10503 (v!24869 lt!639209)))))))

(declare-fun lt!639228 () Unit!31713)

(declare-fun lemmaLexThenLexPrefix!276 (LexerInterface!2880 List!18536 List!18533 List!18533 List!18535 List!18535 List!18533) Unit!31713)

(assert (=> b!1684568 (= lt!639228 (lemmaLexThenLexPrefix!276 thiss!17113 rules!1846 lt!639234 lt!639211 lt!639240 (list!7416 (_1!10501 lt!639212)) (list!7415 (_2!10501 lt!639212))))))

(assert (=> b!1684568 (= (lexList!905 thiss!17113 rules!1846 lt!639234) (tuple2!18207 lt!639240 Nil!18463))))

(declare-fun lt!639207 () Unit!31713)

(assert (=> b!1684568 (= lt!639207 lt!639228)))

(declare-fun lt!639213 () BalanceConc!12244)

(assert (=> b!1684568 (= lt!639213 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (_1!10503 (v!24869 lt!639209)))))))

(declare-fun lt!639217 () Option!3559)

(assert (=> b!1684568 (= lt!639217 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 lt!639213))))

(declare-fun c!275025 () Bool)

(assert (=> b!1684568 (= c!275025 ((_ is Some!3558) lt!639217))))

(declare-fun e!1078567 () tuple2!18198)

(assert (=> b!1684568 (= (lexRec!388 thiss!17113 rules!1846 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (_1!10503 (v!24869 lt!639209))))) e!1078567)))

(declare-fun lt!639214 () Unit!31713)

(declare-fun Unit!31754 () Unit!31713)

(assert (=> b!1684568 (= lt!639214 Unit!31754)))

(assert (=> b!1684568 (= lt!639225 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (_1!10503 (v!24869 lt!639209)))))))

(declare-fun lt!639231 () List!18533)

(assert (=> b!1684568 (= lt!639231 (list!7415 lt!639225))))

(declare-fun lt!639236 () List!18533)

(assert (=> b!1684568 (= lt!639236 (list!7415 (_2!10503 (v!24869 lt!639209))))))

(declare-fun lt!639233 () Unit!31713)

(declare-fun lemmaConcatTwoListThenFSndIsSuffix!335 (List!18533 List!18533) Unit!31713)

(assert (=> b!1684568 (= lt!639233 (lemmaConcatTwoListThenFSndIsSuffix!335 lt!639231 lt!639236))))

(declare-fun isSuffix!434 (List!18533 List!18533) Bool)

(assert (=> b!1684568 (isSuffix!434 lt!639236 (++!5051 lt!639231 lt!639236))))

(declare-fun lt!639237 () Unit!31713)

(assert (=> b!1684568 (= lt!639237 lt!639233)))

(declare-fun b!1684569 () Bool)

(declare-fun lt!639221 () tuple2!18198)

(assert (=> b!1684569 (= lt!639221 (lexRec!388 thiss!17113 rules!1846 (_2!10503 (v!24869 lt!639217))))))

(assert (=> b!1684569 (= e!1078567 (tuple2!18199 (prepend!845 (_1!10501 lt!639221) (_1!10503 (v!24869 lt!639217))) (_2!10501 lt!639221)))))

(declare-fun e!1078564 () Bool)

(declare-fun b!1684570 () Bool)

(declare-fun lt!639220 () tuple2!18198)

(assert (=> b!1684570 (= e!1078564 (= (list!7415 (_2!10501 lt!639220)) (list!7415 (_2!10501 (lexRec!388 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(declare-fun b!1684571 () Bool)

(assert (=> b!1684571 (= e!1078566 (tuple2!18199 (BalanceConc!12247 Empty!6151) (seqFromList!2240 lt!638185)))))

(declare-fun b!1684572 () Bool)

(assert (=> b!1684572 (= e!1078565 (tuple2!18199 (BalanceConc!12247 Empty!6151) (seqFromList!2240 lt!638185)))))

(declare-fun b!1684573 () Bool)

(assert (=> b!1684573 (= e!1078567 (tuple2!18199 (BalanceConc!12247 Empty!6151) lt!639213))))

(declare-fun d!512674 () Bool)

(assert (=> d!512674 e!1078564))

(declare-fun res!755213 () Bool)

(assert (=> d!512674 (=> (not res!755213) (not e!1078564))))

(assert (=> d!512674 (= res!755213 (= (list!7416 (_1!10501 lt!639220)) (list!7416 (_1!10501 (lexRec!388 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(assert (=> d!512674 (= lt!639220 e!1078566)))

(declare-fun c!275024 () Bool)

(assert (=> d!512674 (= c!275024 ((_ is Some!3558) lt!639209))))

(declare-fun maxPrefixZipperSequenceV2!283 (LexerInterface!2880 List!18536 BalanceConc!12244 BalanceConc!12244) Option!3559)

(assert (=> d!512674 (= lt!639209 (maxPrefixZipperSequenceV2!283 thiss!17113 rules!1846 (seqFromList!2240 lt!638185) (seqFromList!2240 lt!638185)))))

(declare-fun lt!639223 () Unit!31713)

(declare-fun lt!639218 () Unit!31713)

(assert (=> d!512674 (= lt!639223 lt!639218)))

(declare-fun lt!639235 () List!18533)

(declare-fun lt!639239 () List!18533)

(assert (=> d!512674 (isSuffix!434 lt!639235 (++!5051 lt!639239 lt!639235))))

(assert (=> d!512674 (= lt!639218 (lemmaConcatTwoListThenFSndIsSuffix!335 lt!639239 lt!639235))))

(assert (=> d!512674 (= lt!639235 (list!7415 (seqFromList!2240 lt!638185)))))

(assert (=> d!512674 (= lt!639239 (list!7415 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!512674 (= (lexTailRecV2!628 thiss!17113 rules!1846 (seqFromList!2240 lt!638185) (BalanceConc!12245 Empty!6150) (seqFromList!2240 lt!638185) (BalanceConc!12247 Empty!6151)) lt!639220)))

(declare-fun b!1684567 () Bool)

(declare-fun lt!639224 () tuple2!18198)

(assert (=> b!1684567 (= lt!639224 (lexRec!388 thiss!17113 rules!1846 (_2!10503 (v!24869 lt!639229))))))

(assert (=> b!1684567 (= e!1078565 (tuple2!18199 (prepend!845 (_1!10501 lt!639224) (_1!10503 (v!24869 lt!639229))) (_2!10501 lt!639224)))))

(assert (= (and d!512674 c!275024) b!1684568))

(assert (= (and d!512674 (not c!275024)) b!1684571))

(assert (= (and b!1684568 c!275026) b!1684567))

(assert (= (and b!1684568 (not c!275026)) b!1684572))

(assert (= (and b!1684568 c!275025) b!1684569))

(assert (= (and b!1684568 (not c!275025)) b!1684573))

(assert (= (and d!512674 res!755213) b!1684570))

(declare-fun m!2065865 () Bool)

(assert (=> b!1684568 m!2065865))

(declare-fun m!2065869 () Bool)

(assert (=> b!1684568 m!2065869))

(declare-fun m!2065873 () Bool)

(assert (=> b!1684568 m!2065873))

(declare-fun m!2065875 () Bool)

(assert (=> b!1684568 m!2065875))

(declare-fun m!2065877 () Bool)

(assert (=> b!1684568 m!2065877))

(declare-fun m!2065881 () Bool)

(assert (=> b!1684568 m!2065881))

(declare-fun m!2065883 () Bool)

(assert (=> b!1684568 m!2065883))

(assert (=> b!1684568 m!2065877))

(declare-fun m!2065887 () Bool)

(assert (=> b!1684568 m!2065887))

(declare-fun m!2065889 () Bool)

(assert (=> b!1684568 m!2065889))

(declare-fun m!2065893 () Bool)

(assert (=> b!1684568 m!2065893))

(declare-fun m!2065897 () Bool)

(assert (=> b!1684568 m!2065897))

(declare-fun m!2065899 () Bool)

(assert (=> b!1684568 m!2065899))

(declare-fun m!2065901 () Bool)

(assert (=> b!1684568 m!2065901))

(declare-fun m!2065903 () Bool)

(assert (=> b!1684568 m!2065903))

(assert (=> b!1684568 m!2065865))

(declare-fun m!2065905 () Bool)

(assert (=> b!1684568 m!2065905))

(declare-fun m!2065907 () Bool)

(assert (=> b!1684568 m!2065907))

(declare-fun m!2065909 () Bool)

(assert (=> b!1684568 m!2065909))

(assert (=> b!1684568 m!2065899))

(assert (=> b!1684568 m!2065887))

(declare-fun m!2065911 () Bool)

(assert (=> b!1684568 m!2065911))

(declare-fun m!2065913 () Bool)

(assert (=> b!1684568 m!2065913))

(assert (=> b!1684568 m!2065897))

(declare-fun m!2065915 () Bool)

(assert (=> b!1684568 m!2065915))

(assert (=> b!1684568 m!2065889))

(assert (=> b!1684568 m!2065883))

(declare-fun m!2065917 () Bool)

(assert (=> b!1684568 m!2065917))

(assert (=> b!1684568 m!2064413))

(declare-fun m!2065919 () Bool)

(assert (=> b!1684568 m!2065919))

(declare-fun m!2065921 () Bool)

(assert (=> b!1684568 m!2065921))

(declare-fun m!2065923 () Bool)

(assert (=> b!1684568 m!2065923))

(assert (=> b!1684568 m!2064413))

(declare-fun m!2065925 () Bool)

(assert (=> b!1684568 m!2065925))

(declare-fun m!2065929 () Bool)

(assert (=> b!1684568 m!2065929))

(assert (=> b!1684568 m!2063447))

(declare-fun m!2065933 () Bool)

(assert (=> b!1684568 m!2065933))

(assert (=> b!1684568 m!2063447))

(assert (=> b!1684568 m!2065873))

(declare-fun m!2065939 () Bool)

(assert (=> b!1684568 m!2065939))

(assert (=> b!1684568 m!2065887))

(assert (=> b!1684568 m!2065919))

(declare-fun m!2065943 () Bool)

(assert (=> b!1684568 m!2065943))

(assert (=> b!1684568 m!2065911))

(declare-fun m!2065945 () Bool)

(assert (=> b!1684568 m!2065945))

(assert (=> b!1684568 m!2063447))

(declare-fun m!2065947 () Bool)

(assert (=> b!1684568 m!2065947))

(assert (=> b!1684568 m!2065925))

(assert (=> b!1684568 m!2065873))

(declare-fun m!2065949 () Bool)

(assert (=> b!1684568 m!2065949))

(declare-fun m!2065951 () Bool)

(assert (=> b!1684569 m!2065951))

(declare-fun m!2065953 () Bool)

(assert (=> b!1684569 m!2065953))

(declare-fun m!2065957 () Bool)

(assert (=> b!1684567 m!2065957))

(declare-fun m!2065961 () Bool)

(assert (=> b!1684567 m!2065961))

(declare-fun m!2065965 () Bool)

(assert (=> b!1684570 m!2065965))

(assert (=> b!1684570 m!2063447))

(assert (=> b!1684570 m!2065933))

(declare-fun m!2065967 () Bool)

(assert (=> b!1684570 m!2065967))

(declare-fun m!2065969 () Bool)

(assert (=> d!512674 m!2065969))

(declare-fun m!2065973 () Bool)

(assert (=> d!512674 m!2065973))

(assert (=> d!512674 m!2065973))

(declare-fun m!2065975 () Bool)

(assert (=> d!512674 m!2065975))

(assert (=> d!512674 m!2064413))

(assert (=> d!512674 m!2063447))

(assert (=> d!512674 m!2063663))

(assert (=> d!512674 m!2063447))

(assert (=> d!512674 m!2065933))

(declare-fun m!2065977 () Bool)

(assert (=> d!512674 m!2065977))

(declare-fun m!2065979 () Bool)

(assert (=> d!512674 m!2065979))

(assert (=> d!512674 m!2063447))

(assert (=> d!512674 m!2063447))

(declare-fun m!2065981 () Bool)

(assert (=> d!512674 m!2065981))

(assert (=> d!512124 d!512674))

(declare-fun lt!639255 () Bool)

(declare-fun d!512700 () Bool)

(assert (=> d!512700 (= lt!639255 (isEmpty!11547 (list!7415 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))))))))))

(assert (=> d!512700 (= lt!639255 (isEmpty!11552 (c!274779 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))))))))))

(assert (=> d!512700 (= (isEmpty!11549 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)))))) lt!639255)))

(declare-fun bs!399456 () Bool)

(assert (= bs!399456 d!512700))

(declare-fun m!2065983 () Bool)

(assert (=> bs!399456 m!2065983))

(assert (=> bs!399456 m!2065983))

(declare-fun m!2065985 () Bool)

(assert (=> bs!399456 m!2065985))

(declare-fun m!2065987 () Bool)

(assert (=> bs!399456 m!2065987))

(assert (=> b!1683611 d!512700))

(declare-fun b!1684591 () Bool)

(declare-fun e!1078581 () Bool)

(declare-fun lt!639256 () tuple2!18198)

(assert (=> b!1684591 (= e!1078581 (not (isEmpty!11536 (_1!10501 lt!639256))))))

(declare-fun b!1684592 () Bool)

(declare-fun e!1078580 () Bool)

(assert (=> b!1684592 (= e!1078580 (= (list!7415 (_2!10501 lt!639256)) (_2!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))))))))))

(declare-fun d!512702 () Bool)

(assert (=> d!512702 e!1078580))

(declare-fun res!755221 () Bool)

(assert (=> d!512702 (=> (not res!755221) (not e!1078580))))

(declare-fun e!1078579 () Bool)

(assert (=> d!512702 (= res!755221 e!1078579)))

(declare-fun c!275032 () Bool)

(assert (=> d!512702 (= c!275032 (> (size!14704 (_1!10501 lt!639256)) 0))))

(assert (=> d!512702 (= lt!639256 (lexTailRecV2!628 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))) (BalanceConc!12245 Empty!6150) (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))) (BalanceConc!12247 Empty!6151)))))

(assert (=> d!512702 (= (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)))) lt!639256)))

(declare-fun b!1684593 () Bool)

(assert (=> b!1684593 (= e!1078579 (= (_2!10501 lt!639256) (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)))))))

(declare-fun b!1684594 () Bool)

(assert (=> b!1684594 (= e!1078579 e!1078581)))

(declare-fun res!755223 () Bool)

(assert (=> b!1684594 (= res!755223 (< (size!14705 (_2!10501 lt!639256)) (size!14705 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))))))))

(assert (=> b!1684594 (=> (not res!755223) (not e!1078581))))

(declare-fun b!1684595 () Bool)

(declare-fun res!755222 () Bool)

(assert (=> b!1684595 (=> (not res!755222) (not e!1078580))))

(assert (=> b!1684595 (= res!755222 (= (list!7416 (_1!10501 lt!639256)) (_1!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))))))))))

(assert (= (and d!512702 c!275032) b!1684594))

(assert (= (and d!512702 (not c!275032)) b!1684593))

(assert (= (and b!1684594 res!755223) b!1684591))

(assert (= (and d!512702 res!755221) b!1684595))

(assert (= (and b!1684595 res!755222) b!1684592))

(declare-fun m!2066013 () Bool)

(assert (=> b!1684591 m!2066013))

(declare-fun m!2066015 () Bool)

(assert (=> b!1684595 m!2066015))

(assert (=> b!1684595 m!2063995))

(declare-fun m!2066019 () Bool)

(assert (=> b!1684595 m!2066019))

(assert (=> b!1684595 m!2066019))

(declare-fun m!2066027 () Bool)

(assert (=> b!1684595 m!2066027))

(declare-fun m!2066029 () Bool)

(assert (=> b!1684592 m!2066029))

(assert (=> b!1684592 m!2063995))

(assert (=> b!1684592 m!2066019))

(assert (=> b!1684592 m!2066019))

(assert (=> b!1684592 m!2066027))

(declare-fun m!2066031 () Bool)

(assert (=> b!1684594 m!2066031))

(assert (=> b!1684594 m!2063995))

(declare-fun m!2066033 () Bool)

(assert (=> b!1684594 m!2066033))

(declare-fun m!2066035 () Bool)

(assert (=> d!512702 m!2066035))

(assert (=> d!512702 m!2063995))

(assert (=> d!512702 m!2063995))

(declare-fun m!2066037 () Bool)

(assert (=> d!512702 m!2066037))

(assert (=> b!1683611 d!512702))

(declare-fun d!512706 () Bool)

(declare-fun lt!639257 () BalanceConc!12244)

(assert (=> d!512706 (= (list!7415 lt!639257) (printList!993 thiss!17113 (list!7416 (singletonSeq!1771 (h!23866 tokens!457)))))))

(assert (=> d!512706 (= lt!639257 (printTailRec!931 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)) 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!512706 (= (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))) lt!639257)))

(declare-fun bs!399457 () Bool)

(assert (= bs!399457 d!512706))

(declare-fun m!2066039 () Bool)

(assert (=> bs!399457 m!2066039))

(assert (=> bs!399457 m!2063465))

(assert (=> bs!399457 m!2063997))

(assert (=> bs!399457 m!2063997))

(declare-fun m!2066041 () Bool)

(assert (=> bs!399457 m!2066041))

(assert (=> bs!399457 m!2063465))

(declare-fun m!2066043 () Bool)

(assert (=> bs!399457 m!2066043))

(assert (=> b!1683611 d!512706))

(assert (=> b!1683611 d!512300))

(declare-fun d!512708 () Bool)

(assert (=> d!512708 (= (isEmpty!11548 lt!638181) (not ((_ is Some!3557) lt!638181)))))

(assert (=> d!512318 d!512708))

(declare-fun d!512710 () Bool)

(assert (=> d!512710 (= (list!7415 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))) (list!7420 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))))))

(declare-fun bs!399458 () Bool)

(assert (= bs!399458 d!512710))

(declare-fun m!2066045 () Bool)

(assert (=> bs!399458 m!2066045))

(assert (=> b!1683518 d!512710))

(assert (=> d!512184 d!512178))

(declare-fun d!512712 () Bool)

(assert (=> d!512712 (= (list!7416 (seqFromList!2239 ($colon$colon!403 (t!154512 (t!154512 tokens!457)) (h!23866 (t!154512 tokens!457))))) (list!7419 (c!274781 (seqFromList!2239 ($colon$colon!403 (t!154512 (t!154512 tokens!457)) (h!23866 (t!154512 tokens!457)))))))))

(declare-fun bs!399459 () Bool)

(assert (= bs!399459 d!512712))

(declare-fun m!2066047 () Bool)

(assert (=> bs!399459 m!2066047))

(assert (=> d!512184 d!512712))

(assert (=> d!512184 d!512180))

(declare-fun d!512714 () Bool)

(assert (=> d!512714 (= ($colon$colon!403 (t!154512 (t!154512 tokens!457)) (h!23866 (t!154512 tokens!457))) (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))))

(assert (=> d!512184 d!512714))

(declare-fun d!512716 () Bool)

(assert (=> d!512716 (= (seqFromList!2239 ($colon$colon!403 (t!154512 (t!154512 tokens!457)) (h!23866 (t!154512 tokens!457)))) (fromListB!1027 ($colon$colon!403 (t!154512 (t!154512 tokens!457)) (h!23866 (t!154512 tokens!457)))))))

(declare-fun bs!399460 () Bool)

(assert (= bs!399460 d!512716))

(assert (=> bs!399460 m!2063829))

(declare-fun m!2066049 () Bool)

(assert (=> bs!399460 m!2066049))

(assert (=> d!512184 d!512716))

(declare-fun d!512718 () Bool)

(assert (=> d!512718 (= (list!7416 (_1!10501 lt!638177)) (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!512718 true))

(declare-fun _$1!10075 () Unit!31713)

(assert (=> d!512718 (= (choose!10169 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)) (_1!10501 lt!638177)) _$1!10075)))

(declare-fun bs!399461 () Bool)

(assert (= bs!399461 d!512718))

(assert (=> bs!399461 m!2063529))

(assert (=> bs!399461 m!2063515))

(assert (=> bs!399461 m!2063515))

(assert (=> bs!399461 m!2063517))

(assert (=> bs!399461 m!2063517))

(assert (=> bs!399461 m!2063519))

(assert (=> d!512184 d!512718))

(assert (=> d!512184 d!512230))

(assert (=> d!512184 d!512186))

(assert (=> b!1683863 d!512514))

(assert (=> b!1683863 d!512536))

(declare-fun b!1684597 () Bool)

(declare-fun e!1078582 () List!18535)

(declare-fun e!1078583 () List!18535)

(assert (=> b!1684597 (= e!1078582 e!1078583)))

(declare-fun c!275034 () Bool)

(assert (=> b!1684597 (= c!275034 ((_ is Leaf!8997) (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1684596 () Bool)

(assert (=> b!1684596 (= e!1078582 Nil!18465)))

(declare-fun d!512720 () Bool)

(declare-fun c!275033 () Bool)

(assert (=> d!512720 (= c!275033 ((_ is Empty!6151) (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!512720 (= (list!7419 (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457))))) e!1078582)))

(declare-fun b!1684599 () Bool)

(assert (=> b!1684599 (= e!1078583 (++!5055 (list!7419 (left!14762 (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457)))))) (list!7419 (right!15092 (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457))))))))))

(declare-fun b!1684598 () Bool)

(assert (=> b!1684598 (= e!1078583 (list!7422 (xs!9007 (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 tokens!457)))))))))

(assert (= (and d!512720 c!275033) b!1684596))

(assert (= (and d!512720 (not c!275033)) b!1684597))

(assert (= (and b!1684597 c!275034) b!1684598))

(assert (= (and b!1684597 (not c!275034)) b!1684599))

(declare-fun m!2066051 () Bool)

(assert (=> b!1684599 m!2066051))

(declare-fun m!2066053 () Bool)

(assert (=> b!1684599 m!2066053))

(assert (=> b!1684599 m!2066051))

(assert (=> b!1684599 m!2066053))

(declare-fun m!2066055 () Bool)

(assert (=> b!1684599 m!2066055))

(declare-fun m!2066057 () Bool)

(assert (=> b!1684598 m!2066057))

(assert (=> d!512178 d!512720))

(declare-fun b!1684600 () Bool)

(declare-fun e!1078584 () List!18533)

(assert (=> b!1684600 (= e!1078584 (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465))))))

(declare-fun d!512722 () Bool)

(declare-fun e!1078585 () Bool)

(assert (=> d!512722 e!1078585))

(declare-fun res!755225 () Bool)

(assert (=> d!512722 (=> (not res!755225) (not e!1078585))))

(declare-fun lt!639258 () List!18533)

(assert (=> d!512722 (= res!755225 (= (content!2597 lt!639258) ((_ map or) (content!2597 (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (content!2597 (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))))))

(assert (=> d!512722 (= lt!639258 e!1078584)))

(declare-fun c!275035 () Bool)

(assert (=> d!512722 (= c!275035 ((_ is Nil!18463) (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))))))

(assert (=> d!512722 (= (++!5051 (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))) (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465)))) lt!639258)))

(declare-fun b!1684603 () Bool)

(assert (=> b!1684603 (= e!1078585 (or (not (= (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465))) Nil!18463)) (= lt!639258 (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))))))

(declare-fun b!1684602 () Bool)

(declare-fun res!755224 () Bool)

(assert (=> b!1684602 (=> (not res!755224) (not e!1078585))))

(assert (=> b!1684602 (= res!755224 (= (size!14706 lt!639258) (+ (size!14706 (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (size!14706 (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))))))

(declare-fun b!1684601 () Bool)

(assert (=> b!1684601 (= e!1078584 (Cons!18463 (h!23864 (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (++!5051 (t!154510 (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465))))))))

(assert (= (and d!512722 c!275035) b!1684600))

(assert (= (and d!512722 (not c!275035)) b!1684601))

(assert (= (and d!512722 res!755225) b!1684602))

(assert (= (and b!1684602 res!755224) b!1684603))

(declare-fun m!2066059 () Bool)

(assert (=> d!512722 m!2066059))

(assert (=> d!512722 m!2064443))

(declare-fun m!2066061 () Bool)

(assert (=> d!512722 m!2066061))

(assert (=> d!512722 m!2064445))

(declare-fun m!2066063 () Bool)

(assert (=> d!512722 m!2066063))

(declare-fun m!2066065 () Bool)

(assert (=> b!1684602 m!2066065))

(assert (=> b!1684602 m!2064443))

(declare-fun m!2066067 () Bool)

(assert (=> b!1684602 m!2066067))

(assert (=> b!1684602 m!2064445))

(declare-fun m!2066069 () Bool)

(assert (=> b!1684602 m!2066069))

(assert (=> b!1684601 m!2064445))

(declare-fun m!2066071 () Bool)

(assert (=> b!1684601 m!2066071))

(assert (=> b!1683746 d!512722))

(declare-fun d!512724 () Bool)

(assert (=> d!512724 (= (list!7415 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))) (list!7420 (c!274779 (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))))))

(declare-fun bs!399462 () Bool)

(assert (= bs!399462 d!512724))

(declare-fun m!2066073 () Bool)

(assert (=> bs!399462 m!2066073))

(assert (=> b!1683746 d!512724))

(declare-fun d!512726 () Bool)

(declare-fun lt!639259 () BalanceConc!12244)

(assert (=> d!512726 (= (list!7415 lt!639259) (originalCharacters!4065 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))))

(assert (=> d!512726 (= lt!639259 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (value!102326 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))))

(assert (=> d!512726 (= (charsOf!1900 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))) lt!639259)))

(declare-fun b_lambda!52987 () Bool)

(assert (=> (not b_lambda!52987) (not d!512726)))

(declare-fun t!154611 () Bool)

(declare-fun tb!97671 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))) t!154611) tb!97671))

(declare-fun b!1684604 () Bool)

(declare-fun e!1078586 () Bool)

(declare-fun tp!484040 () Bool)

(assert (=> b!1684604 (= e!1078586 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (value!102326 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))) tp!484040))))

(declare-fun result!117748 () Bool)

(assert (=> tb!97671 (= result!117748 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (value!102326 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) e!1078586))))

(assert (= tb!97671 b!1684604))

(declare-fun m!2066075 () Bool)

(assert (=> b!1684604 m!2066075))

(declare-fun m!2066077 () Bool)

(assert (=> tb!97671 m!2066077))

(assert (=> d!512726 t!154611))

(declare-fun b_and!120397 () Bool)

(assert (= b_and!120373 (and (=> t!154611 result!117748) b_and!120397)))

(declare-fun t!154613 () Bool)

(declare-fun tb!97673 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))) t!154613) tb!97673))

(declare-fun result!117750 () Bool)

(assert (= result!117750 result!117748))

(assert (=> d!512726 t!154613))

(declare-fun b_and!120399 () Bool)

(assert (= b_and!120375 (and (=> t!154613 result!117750) b_and!120399)))

(declare-fun tb!97675 () Bool)

(declare-fun t!154615 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))) t!154615) tb!97675))

(declare-fun result!117752 () Bool)

(assert (= result!117752 result!117748))

(assert (=> d!512726 t!154615))

(declare-fun b_and!120401 () Bool)

(assert (= b_and!120377 (and (=> t!154615 result!117752) b_and!120401)))

(declare-fun t!154617 () Bool)

(declare-fun tb!97677 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))) t!154617) tb!97677))

(declare-fun result!117754 () Bool)

(assert (= result!117754 result!117748))

(assert (=> d!512726 t!154617))

(declare-fun b_and!120403 () Bool)

(assert (= b_and!120379 (and (=> t!154617 result!117754) b_and!120403)))

(declare-fun m!2066079 () Bool)

(assert (=> d!512726 m!2066079))

(declare-fun m!2066081 () Bool)

(assert (=> d!512726 m!2066081))

(assert (=> b!1683746 d!512726))

(declare-fun d!512728 () Bool)

(declare-fun c!275036 () Bool)

(assert (=> d!512728 (= c!275036 ((_ is Cons!18465) (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465))))))

(declare-fun e!1078587 () List!18533)

(assert (=> d!512728 (= (printList!993 thiss!17113 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465))) e!1078587)))

(declare-fun b!1684605 () Bool)

(assert (=> b!1684605 (= e!1078587 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465))))) (printList!993 thiss!17113 (t!154512 (t!154512 (Cons!18465 (h!23866 tokens!457) Nil!18465))))))))

(declare-fun b!1684606 () Bool)

(assert (=> b!1684606 (= e!1078587 Nil!18463)))

(assert (= (and d!512728 c!275036) b!1684605))

(assert (= (and d!512728 (not c!275036)) b!1684606))

(declare-fun m!2066083 () Bool)

(assert (=> b!1684605 m!2066083))

(assert (=> b!1684605 m!2066083))

(declare-fun m!2066085 () Bool)

(assert (=> b!1684605 m!2066085))

(declare-fun m!2066087 () Bool)

(assert (=> b!1684605 m!2066087))

(assert (=> b!1684605 m!2066085))

(assert (=> b!1684605 m!2066087))

(declare-fun m!2066089 () Bool)

(assert (=> b!1684605 m!2066089))

(assert (=> b!1683746 d!512728))

(declare-fun d!512730 () Bool)

(declare-fun res!755226 () Bool)

(declare-fun e!1078588 () Bool)

(assert (=> d!512730 (=> (not res!755226) (not e!1078588))))

(assert (=> d!512730 (= res!755226 (not (isEmpty!11547 (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!512730 (= (inv!23825 (h!23866 (t!154512 tokens!457))) e!1078588)))

(declare-fun b!1684607 () Bool)

(declare-fun res!755227 () Bool)

(assert (=> b!1684607 (=> (not res!755227) (not e!1078588))))

(assert (=> b!1684607 (= res!755227 (= (originalCharacters!4065 (h!23866 (t!154512 tokens!457))) (list!7415 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1684608 () Bool)

(assert (=> b!1684608 (= e!1078588 (= (size!14700 (h!23866 (t!154512 tokens!457))) (size!14706 (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))))))

(assert (= (and d!512730 res!755226) b!1684607))

(assert (= (and b!1684607 res!755227) b!1684608))

(declare-fun b_lambda!52989 () Bool)

(assert (=> (not b_lambda!52989) (not b!1684607)))

(assert (=> b!1684607 t!154546))

(declare-fun b_and!120405 () Bool)

(assert (= b_and!120397 (and (=> t!154546 result!117686) b_and!120405)))

(assert (=> b!1684607 t!154548))

(declare-fun b_and!120407 () Bool)

(assert (= b_and!120399 (and (=> t!154548 result!117688) b_and!120407)))

(assert (=> b!1684607 t!154552))

(declare-fun b_and!120409 () Bool)

(assert (= b_and!120401 (and (=> t!154552 result!117698) b_and!120409)))

(assert (=> b!1684607 t!154556))

(declare-fun b_and!120411 () Bool)

(assert (= b_and!120403 (and (=> t!154556 result!117704) b_and!120411)))

(declare-fun m!2066091 () Bool)

(assert (=> d!512730 m!2066091))

(assert (=> b!1684607 m!2064691))

(assert (=> b!1684607 m!2064691))

(declare-fun m!2066093 () Bool)

(assert (=> b!1684607 m!2066093))

(declare-fun m!2066095 () Bool)

(assert (=> b!1684608 m!2066095))

(assert (=> b!1683925 d!512730))

(declare-fun d!512732 () Bool)

(assert (=> d!512732 (= (list!7415 (_2!10503 (get!5413 lt!638279))) (list!7420 (c!274779 (_2!10503 (get!5413 lt!638279)))))))

(declare-fun bs!399463 () Bool)

(assert (= bs!399463 d!512732))

(declare-fun m!2066097 () Bool)

(assert (=> bs!399463 m!2066097))

(assert (=> b!1683488 d!512732))

(assert (=> b!1683488 d!512584))

(assert (=> b!1683488 d!512582))

(assert (=> b!1683488 d!512588))

(assert (=> b!1683488 d!512586))

(declare-fun d!512734 () Bool)

(declare-fun lostCauseFct!170 (Regex!4579) Bool)

(assert (=> d!512734 (= (lostCause!486 lt!638178) (lostCauseFct!170 lt!638178))))

(declare-fun bs!399464 () Bool)

(assert (= bs!399464 d!512734))

(declare-fun m!2066099 () Bool)

(assert (=> bs!399464 m!2066099))

(assert (=> b!1683584 d!512734))

(declare-fun d!512736 () Bool)

(declare-fun c!275037 () Bool)

(assert (=> d!512736 (= c!275037 ((_ is Nil!18463) lt!638521))))

(declare-fun e!1078589 () (InoxSet C!9332))

(assert (=> d!512736 (= (content!2597 lt!638521) e!1078589)))

(declare-fun b!1684609 () Bool)

(assert (=> b!1684609 (= e!1078589 ((as const (Array C!9332 Bool)) false))))

(declare-fun b!1684610 () Bool)

(assert (=> b!1684610 (= e!1078589 ((_ map or) (store ((as const (Array C!9332 Bool)) false) (h!23864 lt!638521) true) (content!2597 (t!154510 lt!638521))))))

(assert (= (and d!512736 c!275037) b!1684609))

(assert (= (and d!512736 (not c!275037)) b!1684610))

(declare-fun m!2066101 () Bool)

(assert (=> b!1684610 m!2066101))

(declare-fun m!2066103 () Bool)

(assert (=> b!1684610 m!2066103))

(assert (=> d!512254 d!512736))

(assert (=> d!512254 d!512658))

(declare-fun d!512738 () Bool)

(declare-fun c!275038 () Bool)

(assert (=> d!512738 (= c!275038 ((_ is Nil!18463) lt!638165))))

(declare-fun e!1078590 () (InoxSet C!9332))

(assert (=> d!512738 (= (content!2597 lt!638165) e!1078590)))

(declare-fun b!1684611 () Bool)

(assert (=> b!1684611 (= e!1078590 ((as const (Array C!9332 Bool)) false))))

(declare-fun b!1684612 () Bool)

(assert (=> b!1684612 (= e!1078590 ((_ map or) (store ((as const (Array C!9332 Bool)) false) (h!23864 lt!638165) true) (content!2597 (t!154510 lt!638165))))))

(assert (= (and d!512738 c!275038) b!1684611))

(assert (= (and d!512738 (not c!275038)) b!1684612))

(declare-fun m!2066105 () Bool)

(assert (=> b!1684612 m!2066105))

(declare-fun m!2066107 () Bool)

(assert (=> b!1684612 m!2066107))

(assert (=> d!512254 d!512738))

(declare-fun b!1684613 () Bool)

(declare-fun res!755228 () Bool)

(declare-fun e!1078596 () Bool)

(assert (=> b!1684613 (=> res!755228 e!1078596)))

(assert (=> b!1684613 (= res!755228 (not (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))))))))

(declare-fun b!1684614 () Bool)

(declare-fun e!1078593 () Bool)

(assert (=> b!1684614 (= e!1078593 (matchR!2070 (derivativeStep!1138 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))) (head!3766 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))))) (tail!2512 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))))))))

(declare-fun b!1684615 () Bool)

(declare-fun res!755229 () Bool)

(declare-fun e!1078597 () Bool)

(assert (=> b!1684615 (=> (not res!755229) (not e!1078597))))

(assert (=> b!1684615 (= res!755229 (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))))))))

(declare-fun b!1684616 () Bool)

(declare-fun e!1078594 () Bool)

(declare-fun e!1078592 () Bool)

(assert (=> b!1684616 (= e!1078594 e!1078592)))

(declare-fun c!275041 () Bool)

(assert (=> b!1684616 (= c!275041 ((_ is EmptyLang!4579) (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))))))

(declare-fun b!1684617 () Bool)

(assert (=> b!1684617 (= e!1078593 (nullable!1367 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))))))

(declare-fun b!1684618 () Bool)

(assert (=> b!1684618 (= e!1078597 (= (head!3766 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))) (c!274780 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))))))

(declare-fun b!1684619 () Bool)

(declare-fun e!1078591 () Bool)

(declare-fun e!1078595 () Bool)

(assert (=> b!1684619 (= e!1078591 e!1078595)))

(declare-fun res!755231 () Bool)

(assert (=> b!1684619 (=> (not res!755231) (not e!1078595))))

(declare-fun lt!639260 () Bool)

(assert (=> b!1684619 (= res!755231 (not lt!639260))))

(declare-fun b!1684620 () Bool)

(declare-fun res!755234 () Bool)

(assert (=> b!1684620 (=> res!755234 e!1078591)))

(assert (=> b!1684620 (= res!755234 (not ((_ is ElementMatch!4579) (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))))))

(assert (=> b!1684620 (= e!1078592 e!1078591)))

(declare-fun b!1684622 () Bool)

(declare-fun call!107663 () Bool)

(assert (=> b!1684622 (= e!1078594 (= lt!639260 call!107663))))

(declare-fun b!1684623 () Bool)

(assert (=> b!1684623 (= e!1078592 (not lt!639260))))

(declare-fun b!1684624 () Bool)

(assert (=> b!1684624 (= e!1078595 e!1078596)))

(declare-fun res!755235 () Bool)

(assert (=> b!1684624 (=> res!755235 e!1078596)))

(assert (=> b!1684624 (= res!755235 call!107663)))

(declare-fun bm!107658 () Bool)

(assert (=> bm!107658 (= call!107663 (isEmpty!11547 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))))))

(declare-fun b!1684625 () Bool)

(assert (=> b!1684625 (= e!1078596 (not (= (head!3766 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))) (c!274780 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))))))))

(declare-fun b!1684626 () Bool)

(declare-fun res!755233 () Bool)

(assert (=> b!1684626 (=> res!755233 e!1078591)))

(assert (=> b!1684626 (= res!755233 e!1078597)))

(declare-fun res!755232 () Bool)

(assert (=> b!1684626 (=> (not res!755232) (not e!1078597))))

(assert (=> b!1684626 (= res!755232 lt!639260)))

(declare-fun b!1684621 () Bool)

(declare-fun res!755230 () Bool)

(assert (=> b!1684621 (=> (not res!755230) (not e!1078597))))

(assert (=> b!1684621 (= res!755230 (not call!107663))))

(declare-fun d!512740 () Bool)

(assert (=> d!512740 e!1078594))

(declare-fun c!275040 () Bool)

(assert (=> d!512740 (= c!275040 ((_ is EmptyExpr!4579) (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))))))

(assert (=> d!512740 (= lt!639260 e!1078593)))

(declare-fun c!275039 () Bool)

(assert (=> d!512740 (= c!275039 (isEmpty!11547 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))))))

(assert (=> d!512740 (validRegex!1840 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))))

(assert (=> d!512740 (= (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))) lt!639260)))

(assert (= (and d!512740 c!275039) b!1684617))

(assert (= (and d!512740 (not c!275039)) b!1684614))

(assert (= (and d!512740 c!275040) b!1684622))

(assert (= (and d!512740 (not c!275040)) b!1684616))

(assert (= (and b!1684616 c!275041) b!1684623))

(assert (= (and b!1684616 (not c!275041)) b!1684620))

(assert (= (and b!1684620 (not res!755234)) b!1684626))

(assert (= (and b!1684626 res!755232) b!1684621))

(assert (= (and b!1684621 res!755230) b!1684615))

(assert (= (and b!1684615 res!755229) b!1684618))

(assert (= (and b!1684626 (not res!755233)) b!1684619))

(assert (= (and b!1684619 res!755231) b!1684624))

(assert (= (and b!1684624 (not res!755235)) b!1684613))

(assert (= (and b!1684613 (not res!755228)) b!1684625))

(assert (= (or b!1684622 b!1684621 b!1684624) bm!107658))

(assert (=> d!512740 m!2064339))

(declare-fun m!2066109 () Bool)

(assert (=> d!512740 m!2066109))

(declare-fun m!2066111 () Bool)

(assert (=> d!512740 m!2066111))

(declare-fun m!2066113 () Bool)

(assert (=> b!1684617 m!2066113))

(assert (=> b!1684618 m!2064339))

(declare-fun m!2066115 () Bool)

(assert (=> b!1684618 m!2066115))

(assert (=> b!1684625 m!2064339))

(assert (=> b!1684625 m!2066115))

(assert (=> b!1684615 m!2064339))

(declare-fun m!2066117 () Bool)

(assert (=> b!1684615 m!2066117))

(assert (=> b!1684615 m!2066117))

(declare-fun m!2066119 () Bool)

(assert (=> b!1684615 m!2066119))

(assert (=> bm!107658 m!2064339))

(assert (=> bm!107658 m!2066109))

(assert (=> b!1684613 m!2064339))

(assert (=> b!1684613 m!2066117))

(assert (=> b!1684613 m!2066117))

(assert (=> b!1684613 m!2066119))

(assert (=> b!1684614 m!2064339))

(assert (=> b!1684614 m!2066115))

(assert (=> b!1684614 m!2066115))

(declare-fun m!2066121 () Bool)

(assert (=> b!1684614 m!2066121))

(assert (=> b!1684614 m!2064339))

(assert (=> b!1684614 m!2066117))

(assert (=> b!1684614 m!2066121))

(assert (=> b!1684614 m!2066117))

(declare-fun m!2066123 () Bool)

(assert (=> b!1684614 m!2066123))

(assert (=> b!1683711 d!512740))

(assert (=> b!1683711 d!512562))

(declare-fun d!512742 () Bool)

(assert (=> d!512742 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))) (list!7420 (c!274779 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))))))

(declare-fun bs!399465 () Bool)

(assert (= bs!399465 d!512742))

(declare-fun m!2066125 () Bool)

(assert (=> bs!399465 m!2066125))

(assert (=> b!1683711 d!512742))

(declare-fun d!512744 () Bool)

(declare-fun lt!639261 () BalanceConc!12244)

(assert (=> d!512744 (= (list!7415 lt!639261) (originalCharacters!4065 (_1!10502 (get!5414 lt!638606))))))

(assert (=> d!512744 (= lt!639261 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))) (value!102326 (_1!10502 (get!5414 lt!638606)))))))

(assert (=> d!512744 (= (charsOf!1900 (_1!10502 (get!5414 lt!638606))) lt!639261)))

(declare-fun b_lambda!52991 () Bool)

(assert (=> (not b_lambda!52991) (not d!512744)))

(declare-fun t!154619 () Bool)

(declare-fun tb!97679 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154619) tb!97679))

(declare-fun b!1684627 () Bool)

(declare-fun e!1078598 () Bool)

(declare-fun tp!484041 () Bool)

(assert (=> b!1684627 (= e!1078598 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))) (value!102326 (_1!10502 (get!5414 lt!638606)))))) tp!484041))))

(declare-fun result!117756 () Bool)

(assert (=> tb!97679 (= result!117756 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606))))) (value!102326 (_1!10502 (get!5414 lt!638606))))) e!1078598))))

(assert (= tb!97679 b!1684627))

(declare-fun m!2066127 () Bool)

(assert (=> b!1684627 m!2066127))

(declare-fun m!2066129 () Bool)

(assert (=> tb!97679 m!2066129))

(assert (=> d!512744 t!154619))

(declare-fun b_and!120413 () Bool)

(assert (= b_and!120405 (and (=> t!154619 result!117756) b_and!120413)))

(declare-fun t!154621 () Bool)

(declare-fun tb!97681 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154621) tb!97681))

(declare-fun result!117758 () Bool)

(assert (= result!117758 result!117756))

(assert (=> d!512744 t!154621))

(declare-fun b_and!120415 () Bool)

(assert (= b_and!120407 (and (=> t!154621 result!117758) b_and!120415)))

(declare-fun t!154623 () Bool)

(declare-fun tb!97683 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154623) tb!97683))

(declare-fun result!117760 () Bool)

(assert (= result!117760 result!117756))

(assert (=> d!512744 t!154623))

(declare-fun b_and!120417 () Bool)

(assert (= b_and!120409 (and (=> t!154623 result!117760) b_and!120417)))

(declare-fun tb!97685 () Bool)

(declare-fun t!154625 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154625) tb!97685))

(declare-fun result!117762 () Bool)

(assert (= result!117762 result!117756))

(assert (=> d!512744 t!154625))

(declare-fun b_and!120419 () Bool)

(assert (= b_and!120411 (and (=> t!154625 result!117762) b_and!120419)))

(declare-fun m!2066131 () Bool)

(assert (=> d!512744 m!2066131))

(declare-fun m!2066133 () Bool)

(assert (=> d!512744 m!2066133))

(assert (=> b!1683711 d!512744))

(assert (=> b!1683483 d!512582))

(declare-fun d!512746 () Bool)

(assert (=> d!512746 (= (get!5414 (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))) (v!24868 (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(assert (=> b!1683483 d!512746))

(declare-fun d!512748 () Bool)

(declare-fun lt!639275 () Option!3558)

(assert (=> d!512748 (= lt!639275 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(declare-fun e!1078601 () Option!3558)

(assert (=> d!512748 (= lt!639275 e!1078601)))

(declare-fun c!275044 () Bool)

(assert (=> d!512748 (= c!275044 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!639274 () Unit!31713)

(declare-fun lt!639276 () Unit!31713)

(assert (=> d!512748 (= lt!639274 lt!639276)))

(assert (=> d!512748 (isPrefix!1509 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!512748 (= lt!639276 (lemmaIsPrefixRefl!1028 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(assert (=> d!512748 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512748 (= (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))) lt!639275)))

(declare-fun call!107666 () Option!3558)

(declare-fun bm!107661 () Bool)

(declare-fun maxPrefixOneRuleZipper!137 (LexerInterface!2880 Rule!6302 List!18533) Option!3558)

(assert (=> bm!107661 (= call!107666 (maxPrefixOneRuleZipper!137 thiss!17113 (h!23867 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(declare-fun b!1684632 () Bool)

(assert (=> b!1684632 (= e!1078601 call!107666)))

(declare-fun b!1684633 () Bool)

(declare-fun lt!639272 () Option!3558)

(declare-fun lt!639273 () Option!3558)

(assert (=> b!1684633 (= e!1078601 (ite (and ((_ is None!3557) lt!639272) ((_ is None!3557) lt!639273)) None!3557 (ite ((_ is None!3557) lt!639273) lt!639272 (ite ((_ is None!3557) lt!639272) lt!639273 (ite (>= (size!14700 (_1!10502 (v!24868 lt!639272))) (size!14700 (_1!10502 (v!24868 lt!639273)))) lt!639272 lt!639273)))))))

(assert (=> b!1684633 (= lt!639272 call!107666)))

(assert (=> b!1684633 (= lt!639273 (maxPrefixZipper!368 thiss!17113 (t!154513 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))

(assert (= (and d!512748 c!275044) b!1684632))

(assert (= (and d!512748 (not c!275044)) b!1684633))

(assert (= (or b!1684632 b!1684633) bm!107661))

(assert (=> d!512748 m!2063727))

(assert (=> d!512748 m!2063729))

(assert (=> d!512748 m!2063727))

(assert (=> d!512748 m!2063727))

(assert (=> d!512748 m!2065427))

(assert (=> d!512748 m!2063727))

(assert (=> d!512748 m!2063727))

(assert (=> d!512748 m!2065429))

(assert (=> d!512748 m!2063751))

(assert (=> bm!107661 m!2063727))

(declare-fun m!2066135 () Bool)

(assert (=> bm!107661 m!2066135))

(assert (=> b!1684633 m!2063727))

(declare-fun m!2066137 () Bool)

(assert (=> b!1684633 m!2066137))

(assert (=> b!1683483 d!512748))

(assert (=> b!1683483 d!512588))

(declare-fun b!1684634 () Bool)

(declare-fun res!755236 () Bool)

(declare-fun e!1078607 () Bool)

(assert (=> b!1684634 (=> res!755236 e!1078607)))

(assert (=> b!1684634 (= res!755236 (not (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))))))))

(declare-fun b!1684635 () Bool)

(declare-fun e!1078604 () Bool)

(assert (=> b!1684635 (= e!1078604 (matchR!2070 (derivativeStep!1138 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))) (head!3766 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))))) (tail!2512 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))))))))

(declare-fun b!1684636 () Bool)

(declare-fun res!755237 () Bool)

(declare-fun e!1078608 () Bool)

(assert (=> b!1684636 (=> (not res!755237) (not e!1078608))))

(assert (=> b!1684636 (= res!755237 (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))))))))

(declare-fun b!1684637 () Bool)

(declare-fun e!1078605 () Bool)

(declare-fun e!1078603 () Bool)

(assert (=> b!1684637 (= e!1078605 e!1078603)))

(declare-fun c!275047 () Bool)

(assert (=> b!1684637 (= c!275047 ((_ is EmptyLang!4579) (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))))))

(declare-fun b!1684638 () Bool)

(assert (=> b!1684638 (= e!1078604 (nullable!1367 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))))))

(declare-fun b!1684639 () Bool)

(assert (=> b!1684639 (= e!1078608 (= (head!3766 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))) (c!274780 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))))))

(declare-fun b!1684640 () Bool)

(declare-fun e!1078602 () Bool)

(declare-fun e!1078606 () Bool)

(assert (=> b!1684640 (= e!1078602 e!1078606)))

(declare-fun res!755239 () Bool)

(assert (=> b!1684640 (=> (not res!755239) (not e!1078606))))

(declare-fun lt!639277 () Bool)

(assert (=> b!1684640 (= res!755239 (not lt!639277))))

(declare-fun b!1684641 () Bool)

(declare-fun res!755242 () Bool)

(assert (=> b!1684641 (=> res!755242 e!1078602)))

(assert (=> b!1684641 (= res!755242 (not ((_ is ElementMatch!4579) (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))))))

(assert (=> b!1684641 (= e!1078603 e!1078602)))

(declare-fun b!1684643 () Bool)

(declare-fun call!107667 () Bool)

(assert (=> b!1684643 (= e!1078605 (= lt!639277 call!107667))))

(declare-fun b!1684644 () Bool)

(assert (=> b!1684644 (= e!1078603 (not lt!639277))))

(declare-fun b!1684645 () Bool)

(assert (=> b!1684645 (= e!1078606 e!1078607)))

(declare-fun res!755243 () Bool)

(assert (=> b!1684645 (=> res!755243 e!1078607)))

(assert (=> b!1684645 (= res!755243 call!107667)))

(declare-fun bm!107662 () Bool)

(assert (=> bm!107662 (= call!107667 (isEmpty!11547 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))))))

(declare-fun b!1684646 () Bool)

(assert (=> b!1684646 (= e!1078607 (not (= (head!3766 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))) (c!274780 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))))))))

(declare-fun b!1684647 () Bool)

(declare-fun res!755241 () Bool)

(assert (=> b!1684647 (=> res!755241 e!1078602)))

(assert (=> b!1684647 (= res!755241 e!1078608)))

(declare-fun res!755240 () Bool)

(assert (=> b!1684647 (=> (not res!755240) (not e!1078608))))

(assert (=> b!1684647 (= res!755240 lt!639277)))

(declare-fun b!1684642 () Bool)

(declare-fun res!755238 () Bool)

(assert (=> b!1684642 (=> (not res!755238) (not e!1078608))))

(assert (=> b!1684642 (= res!755238 (not call!107667))))

(declare-fun d!512750 () Bool)

(assert (=> d!512750 e!1078605))

(declare-fun c!275046 () Bool)

(assert (=> d!512750 (= c!275046 ((_ is EmptyExpr!4579) (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))))))

(assert (=> d!512750 (= lt!639277 e!1078604)))

(declare-fun c!275045 () Bool)

(assert (=> d!512750 (= c!275045 (isEmpty!11547 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))))))

(assert (=> d!512750 (validRegex!1840 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))))

(assert (=> d!512750 (= (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))) lt!639277)))

(assert (= (and d!512750 c!275045) b!1684638))

(assert (= (and d!512750 (not c!275045)) b!1684635))

(assert (= (and d!512750 c!275046) b!1684643))

(assert (= (and d!512750 (not c!275046)) b!1684637))

(assert (= (and b!1684637 c!275047) b!1684644))

(assert (= (and b!1684637 (not c!275047)) b!1684641))

(assert (= (and b!1684641 (not res!755242)) b!1684647))

(assert (= (and b!1684647 res!755240) b!1684642))

(assert (= (and b!1684642 res!755238) b!1684636))

(assert (= (and b!1684636 res!755237) b!1684639))

(assert (= (and b!1684647 (not res!755241)) b!1684640))

(assert (= (and b!1684640 res!755239) b!1684645))

(assert (= (and b!1684645 (not res!755243)) b!1684634))

(assert (= (and b!1684634 (not res!755236)) b!1684646))

(assert (= (or b!1684643 b!1684642 b!1684645) bm!107662))

(assert (=> d!512750 m!2063863))

(declare-fun m!2066139 () Bool)

(assert (=> d!512750 m!2066139))

(declare-fun m!2066141 () Bool)

(assert (=> d!512750 m!2066141))

(declare-fun m!2066143 () Bool)

(assert (=> b!1684638 m!2066143))

(assert (=> b!1684639 m!2063863))

(declare-fun m!2066145 () Bool)

(assert (=> b!1684639 m!2066145))

(assert (=> b!1684646 m!2063863))

(assert (=> b!1684646 m!2066145))

(assert (=> b!1684636 m!2063863))

(declare-fun m!2066147 () Bool)

(assert (=> b!1684636 m!2066147))

(assert (=> b!1684636 m!2066147))

(declare-fun m!2066149 () Bool)

(assert (=> b!1684636 m!2066149))

(assert (=> bm!107662 m!2063863))

(assert (=> bm!107662 m!2066139))

(assert (=> b!1684634 m!2063863))

(assert (=> b!1684634 m!2066147))

(assert (=> b!1684634 m!2066147))

(assert (=> b!1684634 m!2066149))

(assert (=> b!1684635 m!2063863))

(assert (=> b!1684635 m!2066145))

(assert (=> b!1684635 m!2066145))

(declare-fun m!2066151 () Bool)

(assert (=> b!1684635 m!2066151))

(assert (=> b!1684635 m!2063863))

(assert (=> b!1684635 m!2066147))

(assert (=> b!1684635 m!2066151))

(assert (=> b!1684635 m!2066147))

(declare-fun m!2066153 () Bool)

(assert (=> b!1684635 m!2066153))

(assert (=> b!1683565 d!512750))

(assert (=> b!1683565 d!512590))

(declare-fun d!512752 () Bool)

(assert (=> d!512752 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))) (list!7420 (c!274779 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))))))

(declare-fun bs!399466 () Bool)

(assert (= bs!399466 d!512752))

(declare-fun m!2066155 () Bool)

(assert (=> bs!399466 m!2066155))

(assert (=> b!1683565 d!512752))

(declare-fun d!512754 () Bool)

(declare-fun lt!639278 () BalanceConc!12244)

(assert (=> d!512754 (= (list!7415 lt!639278) (originalCharacters!4065 (_1!10502 (get!5414 lt!638321))))))

(assert (=> d!512754 (= lt!639278 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))) (value!102326 (_1!10502 (get!5414 lt!638321)))))))

(assert (=> d!512754 (= (charsOf!1900 (_1!10502 (get!5414 lt!638321))) lt!639278)))

(declare-fun b_lambda!52993 () Bool)

(assert (=> (not b_lambda!52993) (not d!512754)))

(declare-fun tb!97687 () Bool)

(declare-fun t!154627 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154627) tb!97687))

(declare-fun b!1684648 () Bool)

(declare-fun e!1078609 () Bool)

(declare-fun tp!484042 () Bool)

(assert (=> b!1684648 (= e!1078609 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))) (value!102326 (_1!10502 (get!5414 lt!638321)))))) tp!484042))))

(declare-fun result!117764 () Bool)

(assert (=> tb!97687 (= result!117764 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321))))) (value!102326 (_1!10502 (get!5414 lt!638321))))) e!1078609))))

(assert (= tb!97687 b!1684648))

(declare-fun m!2066157 () Bool)

(assert (=> b!1684648 m!2066157))

(declare-fun m!2066159 () Bool)

(assert (=> tb!97687 m!2066159))

(assert (=> d!512754 t!154627))

(declare-fun b_and!120421 () Bool)

(assert (= b_and!120413 (and (=> t!154627 result!117764) b_and!120421)))

(declare-fun tb!97689 () Bool)

(declare-fun t!154629 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154629) tb!97689))

(declare-fun result!117766 () Bool)

(assert (= result!117766 result!117764))

(assert (=> d!512754 t!154629))

(declare-fun b_and!120423 () Bool)

(assert (= b_and!120415 (and (=> t!154629 result!117766) b_and!120423)))

(declare-fun tb!97691 () Bool)

(declare-fun t!154631 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154631) tb!97691))

(declare-fun result!117768 () Bool)

(assert (= result!117768 result!117764))

(assert (=> d!512754 t!154631))

(declare-fun b_and!120425 () Bool)

(assert (= b_and!120417 (and (=> t!154631 result!117768) b_and!120425)))

(declare-fun tb!97693 () Bool)

(declare-fun t!154633 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154633) tb!97693))

(declare-fun result!117770 () Bool)

(assert (= result!117770 result!117764))

(assert (=> d!512754 t!154633))

(declare-fun b_and!120427 () Bool)

(assert (= b_and!120419 (and (=> t!154633 result!117770) b_and!120427)))

(declare-fun m!2066161 () Bool)

(assert (=> d!512754 m!2066161))

(declare-fun m!2066163 () Bool)

(assert (=> d!512754 m!2066163))

(assert (=> b!1683565 d!512754))

(declare-fun d!512756 () Bool)

(assert (=> d!512756 true))

(declare-fun order!11143 () Int)

(declare-fun lambda!68294 () Int)

(declare-fun dynLambda!8373 (Int Int) Int)

(assert (=> d!512756 (< (dynLambda!8367 order!11129 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (dynLambda!8373 order!11143 lambda!68294))))

(assert (=> d!512756 true))

(assert (=> d!512756 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (dynLambda!8373 order!11143 lambda!68294))))

(declare-fun Forall!668 (Int) Bool)

(assert (=> d!512756 (= (semiInverseModEq!1275 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (Forall!668 lambda!68294))))

(declare-fun bs!399467 () Bool)

(assert (= bs!399467 d!512756))

(declare-fun m!2066165 () Bool)

(assert (=> bs!399467 m!2066165))

(assert (=> d!512316 d!512756))

(declare-fun d!512758 () Bool)

(assert (=> d!512758 (= (list!7415 (_2!10501 lt!638520)) (list!7420 (c!274779 (_2!10501 lt!638520))))))

(declare-fun bs!399468 () Bool)

(assert (= bs!399468 d!512758))

(declare-fun m!2066167 () Bool)

(assert (=> bs!399468 m!2066167))

(assert (=> b!1683655 d!512758))

(declare-fun b!1684653 () Bool)

(declare-fun e!1078611 () tuple2!18206)

(assert (=> b!1684653 (= e!1078611 (tuple2!18207 Nil!18465 (list!7415 lt!638174)))))

(declare-fun b!1684654 () Bool)

(declare-fun e!1078612 () Bool)

(declare-fun e!1078610 () Bool)

(assert (=> b!1684654 (= e!1078612 e!1078610)))

(declare-fun res!755244 () Bool)

(declare-fun lt!639280 () tuple2!18206)

(assert (=> b!1684654 (= res!755244 (< (size!14706 (_2!10505 lt!639280)) (size!14706 (list!7415 lt!638174))))))

(assert (=> b!1684654 (=> (not res!755244) (not e!1078610))))

(declare-fun b!1684655 () Bool)

(assert (=> b!1684655 (= e!1078610 (not (isEmpty!11544 (_1!10505 lt!639280))))))

(declare-fun b!1684656 () Bool)

(declare-fun lt!639279 () Option!3558)

(declare-fun lt!639281 () tuple2!18206)

(assert (=> b!1684656 (= e!1078611 (tuple2!18207 (Cons!18465 (_1!10502 (v!24868 lt!639279)) (_1!10505 lt!639281)) (_2!10505 lt!639281)))))

(assert (=> b!1684656 (= lt!639281 (lexList!905 thiss!17113 rules!1846 (_2!10502 (v!24868 lt!639279))))))

(declare-fun b!1684657 () Bool)

(assert (=> b!1684657 (= e!1078612 (= (_2!10505 lt!639280) (list!7415 lt!638174)))))

(declare-fun d!512760 () Bool)

(assert (=> d!512760 e!1078612))

(declare-fun c!275049 () Bool)

(assert (=> d!512760 (= c!275049 (> (size!14710 (_1!10505 lt!639280)) 0))))

(assert (=> d!512760 (= lt!639280 e!1078611)))

(declare-fun c!275048 () Bool)

(assert (=> d!512760 (= c!275048 ((_ is Some!3557) lt!639279))))

(assert (=> d!512760 (= lt!639279 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 lt!638174)))))

(assert (=> d!512760 (= (lexList!905 thiss!17113 rules!1846 (list!7415 lt!638174)) lt!639280)))

(assert (= (and d!512760 c!275048) b!1684656))

(assert (= (and d!512760 (not c!275048)) b!1684653))

(assert (= (and d!512760 c!275049) b!1684654))

(assert (= (and d!512760 (not c!275049)) b!1684657))

(assert (= (and b!1684654 res!755244) b!1684655))

(declare-fun m!2066169 () Bool)

(assert (=> b!1684654 m!2066169))

(assert (=> b!1684654 m!2063487))

(declare-fun m!2066171 () Bool)

(assert (=> b!1684654 m!2066171))

(declare-fun m!2066173 () Bool)

(assert (=> b!1684655 m!2066173))

(declare-fun m!2066175 () Bool)

(assert (=> b!1684656 m!2066175))

(declare-fun m!2066177 () Bool)

(assert (=> d!512760 m!2066177))

(assert (=> d!512760 m!2063487))

(declare-fun m!2066179 () Bool)

(assert (=> d!512760 m!2066179))

(assert (=> b!1683655 d!512760))

(assert (=> b!1683655 d!512252))

(declare-fun b!1684668 () Bool)

(declare-fun e!1078618 () List!18533)

(declare-fun list!7424 (IArray!12305) List!18533)

(assert (=> b!1684668 (= e!1078618 (list!7424 (xs!9006 (c!274779 lt!638174))))))

(declare-fun b!1684667 () Bool)

(declare-fun e!1078617 () List!18533)

(assert (=> b!1684667 (= e!1078617 e!1078618)))

(declare-fun c!275055 () Bool)

(assert (=> b!1684667 (= c!275055 ((_ is Leaf!8996) (c!274779 lt!638174)))))

(declare-fun d!512762 () Bool)

(declare-fun c!275054 () Bool)

(assert (=> d!512762 (= c!275054 ((_ is Empty!6150) (c!274779 lt!638174)))))

(assert (=> d!512762 (= (list!7420 (c!274779 lt!638174)) e!1078617)))

(declare-fun b!1684669 () Bool)

(assert (=> b!1684669 (= e!1078618 (++!5051 (list!7420 (left!14761 (c!274779 lt!638174))) (list!7420 (right!15091 (c!274779 lt!638174)))))))

(declare-fun b!1684666 () Bool)

(assert (=> b!1684666 (= e!1078617 Nil!18463)))

(assert (= (and d!512762 c!275054) b!1684666))

(assert (= (and d!512762 (not c!275054)) b!1684667))

(assert (= (and b!1684667 c!275055) b!1684668))

(assert (= (and b!1684667 (not c!275055)) b!1684669))

(declare-fun m!2066181 () Bool)

(assert (=> b!1684668 m!2066181))

(declare-fun m!2066183 () Bool)

(assert (=> b!1684669 m!2066183))

(declare-fun m!2066185 () Bool)

(assert (=> b!1684669 m!2066185))

(assert (=> b!1684669 m!2066183))

(assert (=> b!1684669 m!2066185))

(declare-fun m!2066187 () Bool)

(assert (=> b!1684669 m!2066187))

(assert (=> d!512252 d!512762))

(declare-fun d!512764 () Bool)

(declare-fun e!1078621 () Bool)

(assert (=> d!512764 e!1078621))

(declare-fun res!755247 () Bool)

(assert (=> d!512764 (=> (not res!755247) (not e!1078621))))

(declare-fun lt!639284 () BalanceConc!12244)

(assert (=> d!512764 (= res!755247 (= (list!7415 lt!639284) (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun fromList!421 (List!18533) Conc!6150)

(assert (=> d!512764 (= lt!639284 (BalanceConc!12245 (fromList!421 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!512764 (= (fromListB!1025 (originalCharacters!4065 (h!23866 tokens!457))) lt!639284)))

(declare-fun b!1684672 () Bool)

(assert (=> b!1684672 (= e!1078621 (isBalanced!1926 (fromList!421 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (= (and d!512764 res!755247) b!1684672))

(declare-fun m!2066189 () Bool)

(assert (=> d!512764 m!2066189))

(declare-fun m!2066191 () Bool)

(assert (=> d!512764 m!2066191))

(assert (=> b!1684672 m!2066191))

(assert (=> b!1684672 m!2066191))

(declare-fun m!2066193 () Bool)

(assert (=> b!1684672 m!2066193))

(assert (=> d!512156 d!512764))

(declare-fun b!1684688 () Bool)

(declare-fun res!755265 () Bool)

(declare-fun e!1078629 () Bool)

(assert (=> b!1684688 (=> (not res!755265) (not e!1078629))))

(assert (=> b!1684688 (= res!755265 (not (isEmpty!11552 (left!14761 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))))))))

(declare-fun b!1684689 () Bool)

(declare-fun res!755266 () Bool)

(assert (=> b!1684689 (=> (not res!755266) (not e!1078629))))

(assert (=> b!1684689 (= res!755266 (isBalanced!1926 (left!14761 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169)))))))

(declare-fun b!1684690 () Bool)

(declare-fun res!755263 () Bool)

(assert (=> b!1684690 (=> (not res!755263) (not e!1078629))))

(assert (=> b!1684690 (= res!755263 (isBalanced!1926 (right!15091 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169)))))))

(declare-fun d!512766 () Bool)

(declare-fun res!755267 () Bool)

(declare-fun e!1078628 () Bool)

(assert (=> d!512766 (=> res!755267 e!1078628)))

(assert (=> d!512766 (= res!755267 (not ((_ is Node!6150) (++!5054 (c!274779 lt!638184) (c!274779 lt!638169)))))))

(assert (=> d!512766 (= (isBalanced!1926 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))) e!1078628)))

(declare-fun b!1684691 () Bool)

(declare-fun res!755264 () Bool)

(assert (=> b!1684691 (=> (not res!755264) (not e!1078629))))

(assert (=> b!1684691 (= res!755264 (<= (- (height!983 (left!14761 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169)))) (height!983 (right!15091 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))))) 1))))

(declare-fun b!1684692 () Bool)

(assert (=> b!1684692 (= e!1078629 (not (isEmpty!11552 (right!15091 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))))))))

(declare-fun b!1684693 () Bool)

(assert (=> b!1684693 (= e!1078628 e!1078629)))

(declare-fun res!755268 () Bool)

(assert (=> b!1684693 (=> (not res!755268) (not e!1078629))))

(assert (=> b!1684693 (= res!755268 (<= (- 1) (- (height!983 (left!14761 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169)))) (height!983 (right!15091 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169)))))))))

(assert (= (and d!512766 (not res!755267)) b!1684693))

(assert (= (and b!1684693 res!755268) b!1684691))

(assert (= (and b!1684691 res!755264) b!1684689))

(assert (= (and b!1684689 res!755266) b!1684690))

(assert (= (and b!1684690 res!755263) b!1684688))

(assert (= (and b!1684688 res!755265) b!1684692))

(declare-fun m!2066213 () Bool)

(assert (=> b!1684688 m!2066213))

(declare-fun m!2066215 () Bool)

(assert (=> b!1684693 m!2066215))

(declare-fun m!2066217 () Bool)

(assert (=> b!1684693 m!2066217))

(declare-fun m!2066219 () Bool)

(assert (=> b!1684690 m!2066219))

(assert (=> b!1684691 m!2066215))

(assert (=> b!1684691 m!2066217))

(declare-fun m!2066221 () Bool)

(assert (=> b!1684692 m!2066221))

(declare-fun m!2066223 () Bool)

(assert (=> b!1684689 m!2066223))

(assert (=> b!1683877 d!512766))

(declare-fun b!1684802 () Bool)

(declare-fun e!1078695 () Conc!6150)

(declare-fun call!107706 () Conc!6150)

(assert (=> b!1684802 (= e!1078695 call!107706)))

(declare-fun b!1684803 () Bool)

(declare-fun e!1078689 () Conc!6150)

(declare-fun call!107702 () Conc!6150)

(assert (=> b!1684803 (= e!1078689 call!107702)))

(declare-fun bm!107697 () Bool)

(declare-fun call!107703 () Conc!6150)

(declare-fun call!107717 () Conc!6150)

(assert (=> bm!107697 (= call!107703 call!107717)))

(declare-fun bm!107698 () Bool)

(declare-fun call!107704 () Conc!6150)

(assert (=> bm!107698 (= call!107704 call!107703)))

(declare-fun b!1684804 () Bool)

(assert (=> b!1684804 (= e!1078689 call!107702)))

(declare-fun b!1684805 () Bool)

(declare-fun e!1078688 () Conc!6150)

(assert (=> b!1684805 (= e!1078688 (c!274779 lt!638184))))

(declare-fun call!107705 () Int)

(declare-fun c!275090 () Bool)

(declare-fun bm!107699 () Bool)

(declare-fun lt!639351 () Conc!6150)

(assert (=> bm!107699 (= call!107705 (height!983 (ite c!275090 (right!15091 (c!274779 lt!638184)) lt!639351)))))

(declare-fun b!1684806 () Bool)

(declare-fun res!755313 () Bool)

(declare-fun e!1078697 () Bool)

(assert (=> b!1684806 (=> (not res!755313) (not e!1078697))))

(declare-fun lt!639352 () Conc!6150)

(assert (=> b!1684806 (= res!755313 (>= (height!983 lt!639352) (max!0 (height!983 (c!274779 lt!638184)) (height!983 (c!274779 lt!638169)))))))

(declare-fun bm!107700 () Bool)

(declare-fun call!107716 () Conc!6150)

(assert (=> bm!107700 (= call!107716 call!107706)))

(declare-fun b!1684807 () Bool)

(assert (=> b!1684807 (= e!1078695 e!1078689)))

(declare-fun lt!639353 () Conc!6150)

(declare-fun call!107714 () Conc!6150)

(assert (=> b!1684807 (= lt!639353 call!107714)))

(declare-fun c!275096 () Bool)

(declare-fun call!107711 () Int)

(declare-fun call!107707 () Int)

(assert (=> b!1684807 (= c!275096 (= call!107711 (- call!107707 3)))))

(declare-fun b!1684808 () Bool)

(declare-fun c!275089 () Bool)

(declare-fun call!107715 () Int)

(assert (=> b!1684808 (= c!275089 (>= call!107715 call!107705))))

(declare-fun e!1078691 () Conc!6150)

(assert (=> b!1684808 (= e!1078691 e!1078695)))

(declare-fun bm!107702 () Bool)

(assert (=> bm!107702 (= call!107702 call!107717)))

(declare-fun bm!107703 () Bool)

(declare-fun call!107709 () Conc!6150)

(declare-fun call!107713 () Conc!6150)

(assert (=> bm!107703 (= call!107709 call!107713)))

(declare-fun b!1684809 () Bool)

(declare-fun e!1078692 () Conc!6150)

(declare-fun call!107708 () Conc!6150)

(assert (=> b!1684809 (= e!1078692 call!107708)))

(declare-fun b!1684810 () Bool)

(declare-fun e!1078696 () Conc!6150)

(declare-fun call!107712 () Conc!6150)

(assert (=> b!1684810 (= e!1078696 call!107712)))

(declare-fun bm!107704 () Bool)

(declare-fun call!107710 () Conc!6150)

(assert (=> bm!107704 (= call!107706 call!107710)))

(declare-fun b!1684811 () Bool)

(declare-fun c!275091 () Bool)

(assert (=> b!1684811 (= c!275091 (>= call!107715 call!107711))))

(declare-fun e!1078694 () Conc!6150)

(assert (=> b!1684811 (= e!1078691 e!1078694)))

(declare-fun b!1684812 () Bool)

(declare-fun res!755314 () Bool)

(assert (=> b!1684812 (=> (not res!755314) (not e!1078697))))

(assert (=> b!1684812 (= res!755314 (<= (height!983 lt!639352) (+ (max!0 (height!983 (c!274779 lt!638184)) (height!983 (c!274779 lt!638169))) 1)))))

(declare-fun b!1684813 () Bool)

(declare-fun res!755315 () Bool)

(assert (=> b!1684813 (=> (not res!755315) (not e!1078697))))

(assert (=> b!1684813 (= res!755315 (isBalanced!1926 lt!639352))))

(declare-fun b!1684814 () Bool)

(assert (=> b!1684814 (= e!1078694 e!1078696)))

(assert (=> b!1684814 (= lt!639351 call!107709)))

(declare-fun c!275095 () Bool)

(assert (=> b!1684814 (= c!275095 (= call!107705 (- call!107707 3)))))

(declare-fun bm!107705 () Bool)

(assert (=> bm!107705 (= call!107710 call!107708)))

(declare-fun bm!107706 () Bool)

(assert (=> bm!107706 (= call!107712 call!107710)))

(declare-fun bm!107707 () Bool)

(assert (=> bm!107707 (= call!107711 (height!983 (ite c!275090 lt!639353 (left!14761 (c!274779 lt!638169)))))))

(declare-fun b!1684815 () Bool)

(declare-fun c!275093 () Bool)

(declare-fun lt!639354 () Int)

(assert (=> b!1684815 (= c!275093 (and (<= (- 1) lt!639354) (<= lt!639354 1)))))

(assert (=> b!1684815 (= lt!639354 (- (height!983 (c!274779 lt!638169)) (height!983 (c!274779 lt!638184))))))

(assert (=> b!1684815 (= e!1078688 e!1078692)))

(declare-fun bm!107708 () Bool)

(declare-fun <>!152 (Conc!6150 Conc!6150) Conc!6150)

(assert (=> bm!107708 (= call!107708 (<>!152 (ite c!275093 (c!274779 lt!638184) (ite c!275090 (ite c!275089 (left!14761 (c!274779 lt!638184)) (ite c!275096 (left!14761 (right!15091 (c!274779 lt!638184))) (left!14761 (c!274779 lt!638184)))) (ite c!275095 call!107704 lt!639351))) (ite c!275093 (c!274779 lt!638169) (ite c!275090 (ite c!275089 call!107714 (ite c!275096 lt!639353 (left!14761 (right!15091 (c!274779 lt!638184))))) (ite c!275095 (right!15091 (c!274779 lt!638169)) call!107704)))))))

(declare-fun b!1684816 () Bool)

(declare-fun e!1078690 () Bool)

(assert (=> b!1684816 (= e!1078690 (isBalanced!1926 (c!274779 lt!638169)))))

(declare-fun b!1684817 () Bool)

(declare-fun e!1078693 () Conc!6150)

(assert (=> b!1684817 (= e!1078693 e!1078688)))

(declare-fun c!275094 () Bool)

(assert (=> b!1684817 (= c!275094 (= (c!274779 lt!638169) Empty!6150))))

(declare-fun b!1684818 () Bool)

(assert (=> b!1684818 (= e!1078696 call!107712)))

(declare-fun b!1684819 () Bool)

(assert (=> b!1684819 (= e!1078697 (= (list!7420 lt!639352) (++!5051 (list!7420 (c!274779 lt!638184)) (list!7420 (c!274779 lt!638169)))))))

(declare-fun b!1684820 () Bool)

(assert (=> b!1684820 (= e!1078693 (c!274779 lt!638169))))

(declare-fun b!1684821 () Bool)

(assert (=> b!1684821 (= e!1078694 call!107703)))

(declare-fun bm!107709 () Bool)

(assert (=> bm!107709 (= call!107707 (height!983 (ite c!275090 (c!274779 lt!638184) (c!274779 lt!638169))))))

(declare-fun bm!107710 () Bool)

(assert (=> bm!107710 (= call!107715 (height!983 (ite c!275090 (left!14761 (c!274779 lt!638184)) (right!15091 (c!274779 lt!638169)))))))

(declare-fun bm!107711 () Bool)

(assert (=> bm!107711 (= call!107717 (<>!152 (ite c!275090 (ite c!275096 (left!14761 (c!274779 lt!638184)) call!107716) (ite c!275091 call!107709 (ite c!275095 lt!639351 (right!15091 (left!14761 (c!274779 lt!638169)))))) (ite c!275090 (ite c!275096 call!107716 lt!639353) (ite c!275091 (right!15091 (c!274779 lt!638169)) (ite c!275095 (right!15091 (left!14761 (c!274779 lt!638169))) (right!15091 (c!274779 lt!638169)))))))))

(declare-fun b!1684822 () Bool)

(assert (=> b!1684822 (= e!1078692 e!1078691)))

(assert (=> b!1684822 (= c!275090 (< lt!639354 (- 1)))))

(declare-fun bm!107712 () Bool)

(assert (=> bm!107712 (= call!107714 call!107713)))

(declare-fun d!512774 () Bool)

(assert (=> d!512774 e!1078697))

(declare-fun res!755311 () Bool)

(assert (=> d!512774 (=> (not res!755311) (not e!1078697))))

(assert (=> d!512774 (= res!755311 (appendAssocInst!495 (c!274779 lt!638184) (c!274779 lt!638169)))))

(assert (=> d!512774 (= lt!639352 e!1078693)))

(declare-fun c!275092 () Bool)

(assert (=> d!512774 (= c!275092 (= (c!274779 lt!638184) Empty!6150))))

(assert (=> d!512774 e!1078690))

(declare-fun res!755312 () Bool)

(assert (=> d!512774 (=> (not res!755312) (not e!1078690))))

(assert (=> d!512774 (= res!755312 (isBalanced!1926 (c!274779 lt!638184)))))

(assert (=> d!512774 (= (++!5054 (c!274779 lt!638184) (c!274779 lt!638169)) lt!639352)))

(declare-fun bm!107701 () Bool)

(assert (=> bm!107701 (= call!107713 (++!5054 (ite c!275090 (ite c!275089 (right!15091 (c!274779 lt!638184)) (right!15091 (right!15091 (c!274779 lt!638184)))) (c!274779 lt!638184)) (ite c!275090 (c!274779 lt!638169) (ite c!275091 (left!14761 (c!274779 lt!638169)) (left!14761 (left!14761 (c!274779 lt!638169)))))))))

(assert (= (and d!512774 res!755312) b!1684816))

(assert (= (and d!512774 c!275092) b!1684820))

(assert (= (and d!512774 (not c!275092)) b!1684817))

(assert (= (and b!1684817 c!275094) b!1684805))

(assert (= (and b!1684817 (not c!275094)) b!1684815))

(assert (= (and b!1684815 c!275093) b!1684809))

(assert (= (and b!1684815 (not c!275093)) b!1684822))

(assert (= (and b!1684822 c!275090) b!1684808))

(assert (= (and b!1684822 (not c!275090)) b!1684811))

(assert (= (and b!1684808 c!275089) b!1684802))

(assert (= (and b!1684808 (not c!275089)) b!1684807))

(assert (= (and b!1684807 c!275096) b!1684803))

(assert (= (and b!1684807 (not c!275096)) b!1684804))

(assert (= (or b!1684803 b!1684804) bm!107700))

(assert (= (or b!1684803 b!1684804) bm!107702))

(assert (= (or b!1684802 b!1684807) bm!107712))

(assert (= (or b!1684802 bm!107700) bm!107704))

(assert (= (and b!1684811 c!275091) b!1684821))

(assert (= (and b!1684811 (not c!275091)) b!1684814))

(assert (= (and b!1684814 c!275095) b!1684810))

(assert (= (and b!1684814 (not c!275095)) b!1684818))

(assert (= (or b!1684810 b!1684818) bm!107698))

(assert (= (or b!1684810 b!1684818) bm!107706))

(assert (= (or b!1684821 b!1684814) bm!107703))

(assert (= (or b!1684821 bm!107698) bm!107697))

(assert (= (or bm!107712 bm!107703) bm!107701))

(assert (= (or b!1684808 b!1684811) bm!107710))

(assert (= (or b!1684807 b!1684811) bm!107707))

(assert (= (or bm!107702 bm!107697) bm!107711))

(assert (= (or b!1684808 b!1684814) bm!107699))

(assert (= (or bm!107704 bm!107706) bm!107705))

(assert (= (or b!1684807 b!1684814) bm!107709))

(assert (= (or b!1684809 bm!107705) bm!107708))

(assert (= (and d!512774 res!755311) b!1684813))

(assert (= (and b!1684813 res!755315) b!1684812))

(assert (= (and b!1684812 res!755314) b!1684806))

(assert (= (and b!1684806 res!755313) b!1684819))

(declare-fun m!2066453 () Bool)

(assert (=> bm!107711 m!2066453))

(declare-fun m!2066455 () Bool)

(assert (=> b!1684806 m!2066455))

(assert (=> b!1684806 m!2064635))

(assert (=> b!1684806 m!2064637))

(assert (=> b!1684806 m!2064635))

(assert (=> b!1684806 m!2064637))

(assert (=> b!1684806 m!2064639))

(declare-fun m!2066457 () Bool)

(assert (=> b!1684819 m!2066457))

(assert (=> b!1684819 m!2064207))

(assert (=> b!1684819 m!2063991))

(assert (=> b!1684819 m!2064207))

(assert (=> b!1684819 m!2063991))

(declare-fun m!2066459 () Bool)

(assert (=> b!1684819 m!2066459))

(assert (=> b!1684815 m!2064637))

(assert (=> b!1684815 m!2064635))

(declare-fun m!2066461 () Bool)

(assert (=> bm!107699 m!2066461))

(declare-fun m!2066463 () Bool)

(assert (=> bm!107701 m!2066463))

(declare-fun m!2066465 () Bool)

(assert (=> bm!107709 m!2066465))

(declare-fun m!2066467 () Bool)

(assert (=> b!1684816 m!2066467))

(declare-fun m!2066469 () Bool)

(assert (=> bm!107710 m!2066469))

(declare-fun m!2066471 () Bool)

(assert (=> b!1684813 m!2066471))

(declare-fun m!2066473 () Bool)

(assert (=> bm!107708 m!2066473))

(assert (=> b!1684812 m!2066455))

(assert (=> b!1684812 m!2064635))

(assert (=> b!1684812 m!2064637))

(assert (=> b!1684812 m!2064635))

(assert (=> b!1684812 m!2064637))

(assert (=> b!1684812 m!2064639))

(declare-fun m!2066475 () Bool)

(assert (=> bm!107707 m!2066475))

(assert (=> d!512774 m!2064641))

(declare-fun m!2066477 () Bool)

(assert (=> d!512774 m!2066477))

(assert (=> b!1683877 d!512774))

(declare-fun b!1684843 () Bool)

(declare-fun e!1078708 () List!18533)

(assert (=> b!1684843 (= e!1078708 lt!638165)))

(declare-fun d!512850 () Bool)

(declare-fun e!1078709 () Bool)

(assert (=> d!512850 e!1078709))

(declare-fun res!755317 () Bool)

(assert (=> d!512850 (=> (not res!755317) (not e!1078709))))

(declare-fun lt!639357 () List!18533)

(assert (=> d!512850 (= res!755317 (= (content!2597 lt!639357) ((_ map or) (content!2597 (t!154510 lt!638185)) (content!2597 lt!638165))))))

(assert (=> d!512850 (= lt!639357 e!1078708)))

(declare-fun c!275107 () Bool)

(assert (=> d!512850 (= c!275107 ((_ is Nil!18463) (t!154510 lt!638185)))))

(assert (=> d!512850 (= (++!5051 (t!154510 lt!638185) lt!638165) lt!639357)))

(declare-fun b!1684846 () Bool)

(assert (=> b!1684846 (= e!1078709 (or (not (= lt!638165 Nil!18463)) (= lt!639357 (t!154510 lt!638185))))))

(declare-fun b!1684845 () Bool)

(declare-fun res!755316 () Bool)

(assert (=> b!1684845 (=> (not res!755316) (not e!1078709))))

(assert (=> b!1684845 (= res!755316 (= (size!14706 lt!639357) (+ (size!14706 (t!154510 lt!638185)) (size!14706 lt!638165))))))

(declare-fun b!1684844 () Bool)

(assert (=> b!1684844 (= e!1078708 (Cons!18463 (h!23864 (t!154510 lt!638185)) (++!5051 (t!154510 (t!154510 lt!638185)) lt!638165)))))

(assert (= (and d!512850 c!275107) b!1684843))

(assert (= (and d!512850 (not c!275107)) b!1684844))

(assert (= (and d!512850 res!755317) b!1684845))

(assert (= (and b!1684845 res!755316) b!1684846))

(declare-fun m!2066479 () Bool)

(assert (=> d!512850 m!2066479))

(assert (=> d!512850 m!2065675))

(assert (=> d!512850 m!2064229))

(declare-fun m!2066481 () Bool)

(assert (=> b!1684845 m!2066481))

(assert (=> b!1684845 m!2065359))

(assert (=> b!1684845 m!2064233))

(declare-fun m!2066483 () Bool)

(assert (=> b!1684844 m!2066483))

(assert (=> b!1683660 d!512850))

(declare-fun d!512852 () Bool)

(declare-fun charsToInt!0 (List!18534) (_ BitVec 32))

(assert (=> d!512852 (= (inv!16 (value!102326 (h!23866 tokens!457))) (= (charsToInt!0 (text!23834 (value!102326 (h!23866 tokens!457)))) (value!102317 (value!102326 (h!23866 tokens!457)))))))

(declare-fun bs!399485 () Bool)

(assert (= bs!399485 d!512852))

(declare-fun m!2066485 () Bool)

(assert (=> bs!399485 m!2066485))

(assert (=> b!1683694 d!512852))

(declare-fun d!512854 () Bool)

(declare-fun e!1078717 () Bool)

(assert (=> d!512854 e!1078717))

(declare-fun res!755320 () Bool)

(assert (=> d!512854 (=> (not res!755320) (not e!1078717))))

(declare-fun lt!639361 () BalanceConc!12246)

(assert (=> d!512854 (= res!755320 (= (list!7416 lt!639361) (t!154512 (t!154512 tokens!457))))))

(declare-fun fromList!422 (List!18535) Conc!6151)

(assert (=> d!512854 (= lt!639361 (BalanceConc!12247 (fromList!422 (t!154512 (t!154512 tokens!457)))))))

(assert (=> d!512854 (= (fromListB!1027 (t!154512 (t!154512 tokens!457))) lt!639361)))

(declare-fun b!1684859 () Bool)

(assert (=> b!1684859 (= e!1078717 (isBalanced!1924 (fromList!422 (t!154512 (t!154512 tokens!457)))))))

(assert (= (and d!512854 res!755320) b!1684859))

(declare-fun m!2066487 () Bool)

(assert (=> d!512854 m!2066487))

(declare-fun m!2066489 () Bool)

(assert (=> d!512854 m!2066489))

(assert (=> b!1684859 m!2066489))

(assert (=> b!1684859 m!2066489))

(declare-fun m!2066491 () Bool)

(assert (=> b!1684859 m!2066491))

(assert (=> d!512180 d!512854))

(declare-fun d!512856 () Bool)

(assert (=> d!512856 (= (isEmpty!11547 (originalCharacters!4065 (h!23866 tokens!457))) ((_ is Nil!18463) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (=> d!512188 d!512856))

(declare-fun d!512864 () Bool)

(assert (=> d!512864 (= (isEmpty!11548 lt!638606) (not ((_ is Some!3557) lt!638606)))))

(assert (=> d!512282 d!512864))

(declare-fun b!1684865 () Bool)

(declare-fun res!755324 () Bool)

(declare-fun e!1078722 () Bool)

(assert (=> b!1684865 (=> (not res!755324) (not e!1078722))))

(assert (=> b!1684865 (= res!755324 (= (head!3766 lt!638187) (head!3766 lt!638187)))))

(declare-fun b!1684866 () Bool)

(assert (=> b!1684866 (= e!1078722 (isPrefix!1509 (tail!2512 lt!638187) (tail!2512 lt!638187)))))

(declare-fun b!1684867 () Bool)

(declare-fun e!1078720 () Bool)

(assert (=> b!1684867 (= e!1078720 (>= (size!14706 lt!638187) (size!14706 lt!638187)))))

(declare-fun d!512866 () Bool)

(assert (=> d!512866 e!1078720))

(declare-fun res!755323 () Bool)

(assert (=> d!512866 (=> res!755323 e!1078720)))

(declare-fun lt!639362 () Bool)

(assert (=> d!512866 (= res!755323 (not lt!639362))))

(declare-fun e!1078721 () Bool)

(assert (=> d!512866 (= lt!639362 e!1078721)))

(declare-fun res!755322 () Bool)

(assert (=> d!512866 (=> res!755322 e!1078721)))

(assert (=> d!512866 (= res!755322 ((_ is Nil!18463) lt!638187))))

(assert (=> d!512866 (= (isPrefix!1509 lt!638187 lt!638187) lt!639362)))

(declare-fun b!1684864 () Bool)

(assert (=> b!1684864 (= e!1078721 e!1078722)))

(declare-fun res!755321 () Bool)

(assert (=> b!1684864 (=> (not res!755321) (not e!1078722))))

(assert (=> b!1684864 (= res!755321 (not ((_ is Nil!18463) lt!638187)))))

(assert (= (and d!512866 (not res!755322)) b!1684864))

(assert (= (and b!1684864 res!755321) b!1684865))

(assert (= (and b!1684865 res!755324) b!1684866))

(assert (= (and d!512866 (not res!755323)) b!1684867))

(declare-fun m!2066505 () Bool)

(assert (=> b!1684865 m!2066505))

(assert (=> b!1684865 m!2066505))

(declare-fun m!2066507 () Bool)

(assert (=> b!1684866 m!2066507))

(assert (=> b!1684866 m!2066507))

(assert (=> b!1684866 m!2066507))

(assert (=> b!1684866 m!2066507))

(declare-fun m!2066509 () Bool)

(assert (=> b!1684866 m!2066509))

(assert (=> b!1684867 m!2064371))

(assert (=> b!1684867 m!2064371))

(assert (=> d!512282 d!512866))

(declare-fun d!512870 () Bool)

(assert (=> d!512870 (isPrefix!1509 lt!638187 lt!638187)))

(declare-fun lt!639365 () Unit!31713)

(declare-fun choose!10177 (List!18533 List!18533) Unit!31713)

(assert (=> d!512870 (= lt!639365 (choose!10177 lt!638187 lt!638187))))

(assert (=> d!512870 (= (lemmaIsPrefixRefl!1028 lt!638187 lt!638187) lt!639365)))

(declare-fun bs!399487 () Bool)

(assert (= bs!399487 d!512870))

(assert (=> bs!399487 m!2064355))

(declare-fun m!2066513 () Bool)

(assert (=> bs!399487 m!2066513))

(assert (=> d!512282 d!512870))

(declare-fun d!512874 () Bool)

(assert (=> d!512874 true))

(declare-fun lt!639368 () Bool)

(declare-fun lambda!68298 () Int)

(declare-fun forall!4206 (List!18536 Int) Bool)

(assert (=> d!512874 (= lt!639368 (forall!4206 rules!1846 lambda!68298))))

(declare-fun e!1078727 () Bool)

(assert (=> d!512874 (= lt!639368 e!1078727)))

(declare-fun res!755330 () Bool)

(assert (=> d!512874 (=> res!755330 e!1078727)))

(assert (=> d!512874 (= res!755330 (not ((_ is Cons!18466) rules!1846)))))

(assert (=> d!512874 (= (rulesValidInductive!1050 thiss!17113 rules!1846) lt!639368)))

(declare-fun b!1684872 () Bool)

(declare-fun e!1078728 () Bool)

(assert (=> b!1684872 (= e!1078727 e!1078728)))

(declare-fun res!755329 () Bool)

(assert (=> b!1684872 (=> (not res!755329) (not e!1078728))))

(declare-fun ruleValid!767 (LexerInterface!2880 Rule!6302) Bool)

(assert (=> b!1684872 (= res!755329 (ruleValid!767 thiss!17113 (h!23867 rules!1846)))))

(declare-fun b!1684873 () Bool)

(assert (=> b!1684873 (= e!1078728 (rulesValidInductive!1050 thiss!17113 (t!154513 rules!1846)))))

(assert (= (and d!512874 (not res!755330)) b!1684872))

(assert (= (and b!1684872 res!755329) b!1684873))

(declare-fun m!2066515 () Bool)

(assert (=> d!512874 m!2066515))

(declare-fun m!2066517 () Bool)

(assert (=> b!1684872 m!2066517))

(declare-fun m!2066519 () Bool)

(assert (=> b!1684873 m!2066519))

(assert (=> d!512282 d!512874))

(declare-fun d!512876 () Bool)

(declare-fun lt!639369 () BalanceConc!12244)

(assert (=> d!512876 (= (list!7415 lt!639369) (originalCharacters!4065 (apply!5022 lt!638180 0)))))

(assert (=> d!512876 (= lt!639369 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0)))) (value!102326 (apply!5022 lt!638180 0))))))

(assert (=> d!512876 (= (charsOf!1900 (apply!5022 lt!638180 0)) lt!639369)))

(declare-fun b_lambda!52999 () Bool)

(assert (=> (not b_lambda!52999) (not d!512876)))

(declare-fun tb!97711 () Bool)

(declare-fun t!154658 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0))))) t!154658) tb!97711))

(declare-fun b!1684876 () Bool)

(declare-fun e!1078729 () Bool)

(declare-fun tp!484045 () Bool)

(assert (=> b!1684876 (= e!1078729 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0)))) (value!102326 (apply!5022 lt!638180 0))))) tp!484045))))

(declare-fun result!117788 () Bool)

(assert (=> tb!97711 (= result!117788 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0)))) (value!102326 (apply!5022 lt!638180 0)))) e!1078729))))

(assert (= tb!97711 b!1684876))

(declare-fun m!2066521 () Bool)

(assert (=> b!1684876 m!2066521))

(declare-fun m!2066523 () Bool)

(assert (=> tb!97711 m!2066523))

(assert (=> d!512876 t!154658))

(declare-fun b_and!120445 () Bool)

(assert (= b_and!120421 (and (=> t!154658 result!117788) b_and!120445)))

(declare-fun tb!97713 () Bool)

(declare-fun t!154660 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0))))) t!154660) tb!97713))

(declare-fun result!117790 () Bool)

(assert (= result!117790 result!117788))

(assert (=> d!512876 t!154660))

(declare-fun b_and!120447 () Bool)

(assert (= b_and!120423 (and (=> t!154660 result!117790) b_and!120447)))

(declare-fun t!154662 () Bool)

(declare-fun tb!97715 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0))))) t!154662) tb!97715))

(declare-fun result!117792 () Bool)

(assert (= result!117792 result!117788))

(assert (=> d!512876 t!154662))

(declare-fun b_and!120449 () Bool)

(assert (= b_and!120425 (and (=> t!154662 result!117792) b_and!120449)))

(declare-fun tb!97717 () Bool)

(declare-fun t!154664 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0))))) t!154664) tb!97717))

(declare-fun result!117794 () Bool)

(assert (= result!117794 result!117788))

(assert (=> d!512876 t!154664))

(declare-fun b_and!120451 () Bool)

(assert (= b_and!120427 (and (=> t!154664 result!117794) b_and!120451)))

(declare-fun m!2066525 () Bool)

(assert (=> d!512876 m!2066525))

(declare-fun m!2066527 () Bool)

(assert (=> d!512876 m!2066527))

(assert (=> b!1683741 d!512876))

(declare-fun b!1684895 () Bool)

(declare-fun e!1078740 () Int)

(declare-fun call!107732 () Int)

(assert (=> b!1684895 (= e!1078740 (- call!107732 (+ 0 1)))))

(declare-fun b!1684896 () Bool)

(declare-fun e!1078741 () Int)

(assert (=> b!1684896 (= e!1078741 e!1078740)))

(declare-fun c!275124 () Bool)

(assert (=> b!1684896 (= c!275124 (>= (+ 0 1) call!107732))))

(declare-fun b!1684897 () Bool)

(declare-fun e!1078743 () List!18535)

(assert (=> b!1684897 (= e!1078743 lt!638635)))

(declare-fun b!1684898 () Bool)

(assert (=> b!1684898 (= e!1078740 0)))

(declare-fun bm!107727 () Bool)

(assert (=> bm!107727 (= call!107732 (size!14710 lt!638635))))

(declare-fun d!512878 () Bool)

(declare-fun e!1078744 () Bool)

(assert (=> d!512878 e!1078744))

(declare-fun res!755333 () Bool)

(assert (=> d!512878 (=> (not res!755333) (not e!1078744))))

(declare-fun lt!639372 () List!18535)

(declare-fun content!2600 (List!18535) (InoxSet Token!6068))

(assert (=> d!512878 (= res!755333 (= ((_ map implies) (content!2600 lt!639372) (content!2600 lt!638635)) ((as const (InoxSet Token!6068)) true)))))

(declare-fun e!1078742 () List!18535)

(assert (=> d!512878 (= lt!639372 e!1078742)))

(declare-fun c!275125 () Bool)

(assert (=> d!512878 (= c!275125 ((_ is Nil!18465) lt!638635))))

(assert (=> d!512878 (= (drop!955 lt!638635 (+ 0 1)) lt!639372)))

(declare-fun b!1684899 () Bool)

(assert (=> b!1684899 (= e!1078742 Nil!18465)))

(declare-fun b!1684900 () Bool)

(assert (=> b!1684900 (= e!1078741 call!107732)))

(declare-fun b!1684901 () Bool)

(assert (=> b!1684901 (= e!1078743 (drop!955 (t!154512 lt!638635) (- (+ 0 1) 1)))))

(declare-fun b!1684902 () Bool)

(assert (=> b!1684902 (= e!1078742 e!1078743)))

(declare-fun c!275127 () Bool)

(assert (=> b!1684902 (= c!275127 (<= (+ 0 1) 0))))

(declare-fun b!1684903 () Bool)

(assert (=> b!1684903 (= e!1078744 (= (size!14710 lt!639372) e!1078741))))

(declare-fun c!275126 () Bool)

(assert (=> b!1684903 (= c!275126 (<= (+ 0 1) 0))))

(assert (= (and d!512878 c!275125) b!1684899))

(assert (= (and d!512878 (not c!275125)) b!1684902))

(assert (= (and b!1684902 c!275127) b!1684897))

(assert (= (and b!1684902 (not c!275127)) b!1684901))

(assert (= (and d!512878 res!755333) b!1684903))

(assert (= (and b!1684903 c!275126) b!1684900))

(assert (= (and b!1684903 (not c!275126)) b!1684896))

(assert (= (and b!1684896 c!275124) b!1684898))

(assert (= (and b!1684896 (not c!275124)) b!1684895))

(assert (= (or b!1684900 b!1684896 b!1684895) bm!107727))

(declare-fun m!2066529 () Bool)

(assert (=> bm!107727 m!2066529))

(declare-fun m!2066531 () Bool)

(assert (=> d!512878 m!2066531))

(declare-fun m!2066533 () Bool)

(assert (=> d!512878 m!2066533))

(declare-fun m!2066535 () Bool)

(assert (=> b!1684901 m!2066535))

(declare-fun m!2066537 () Bool)

(assert (=> b!1684903 m!2066537))

(assert (=> b!1683741 d!512878))

(declare-fun d!512880 () Bool)

(assert (=> d!512880 (= (tail!2513 (drop!955 lt!638635 0)) (drop!955 lt!638635 (+ 0 1)))))

(declare-fun lt!639375 () Unit!31713)

(declare-fun choose!10179 (List!18535 Int) Unit!31713)

(assert (=> d!512880 (= lt!639375 (choose!10179 lt!638635 0))))

(declare-fun e!1078747 () Bool)

(assert (=> d!512880 e!1078747))

(declare-fun res!755336 () Bool)

(assert (=> d!512880 (=> (not res!755336) (not e!1078747))))

(assert (=> d!512880 (= res!755336 (>= 0 0))))

(assert (=> d!512880 (= (lemmaDropTail!611 lt!638635 0) lt!639375)))

(declare-fun b!1684906 () Bool)

(assert (=> b!1684906 (= e!1078747 (< 0 (size!14710 lt!638635)))))

(assert (= (and d!512880 res!755336) b!1684906))

(assert (=> d!512880 m!2064417))

(assert (=> d!512880 m!2064417))

(assert (=> d!512880 m!2064419))

(assert (=> d!512880 m!2064427))

(declare-fun m!2066539 () Bool)

(assert (=> d!512880 m!2066539))

(assert (=> b!1684906 m!2066529))

(assert (=> b!1683741 d!512880))

(declare-fun d!512882 () Bool)

(declare-fun lt!639378 () Token!6068)

(declare-fun contains!3244 (List!18535 Token!6068) Bool)

(assert (=> d!512882 (contains!3244 lt!638636 lt!639378)))

(declare-fun e!1078752 () Token!6068)

(assert (=> d!512882 (= lt!639378 e!1078752)))

(declare-fun c!275130 () Bool)

(assert (=> d!512882 (= c!275130 (= 0 0))))

(declare-fun e!1078753 () Bool)

(assert (=> d!512882 e!1078753))

(declare-fun res!755339 () Bool)

(assert (=> d!512882 (=> (not res!755339) (not e!1078753))))

(assert (=> d!512882 (= res!755339 (<= 0 0))))

(assert (=> d!512882 (= (apply!5025 lt!638636 0) lt!639378)))

(declare-fun b!1684913 () Bool)

(assert (=> b!1684913 (= e!1078753 (< 0 (size!14710 lt!638636)))))

(declare-fun b!1684914 () Bool)

(assert (=> b!1684914 (= e!1078752 (head!3770 lt!638636))))

(declare-fun b!1684915 () Bool)

(assert (=> b!1684915 (= e!1078752 (apply!5025 (tail!2513 lt!638636) (- 0 1)))))

(assert (= (and d!512882 res!755339) b!1684913))

(assert (= (and d!512882 c!275130) b!1684914))

(assert (= (and d!512882 (not c!275130)) b!1684915))

(declare-fun m!2066541 () Bool)

(assert (=> d!512882 m!2066541))

(declare-fun m!2066543 () Bool)

(assert (=> b!1684913 m!2066543))

(declare-fun m!2066545 () Bool)

(assert (=> b!1684914 m!2066545))

(declare-fun m!2066547 () Bool)

(assert (=> b!1684915 m!2066547))

(assert (=> b!1684915 m!2066547))

(declare-fun m!2066549 () Bool)

(assert (=> b!1684915 m!2066549))

(assert (=> b!1683741 d!512882))

(declare-fun d!512884 () Bool)

(declare-fun lt!639383 () BalanceConc!12244)

(assert (=> d!512884 (= (list!7415 lt!639383) (printListTailRec!424 thiss!17113 (dropList!734 lt!638180 (+ 0 1)) (list!7415 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 lt!638180 0))))))))

(declare-fun e!1078754 () BalanceConc!12244)

(assert (=> d!512884 (= lt!639383 e!1078754)))

(declare-fun c!275131 () Bool)

(assert (=> d!512884 (= c!275131 (>= (+ 0 1) (size!14704 lt!638180)))))

(declare-fun e!1078755 () Bool)

(assert (=> d!512884 e!1078755))

(declare-fun res!755340 () Bool)

(assert (=> d!512884 (=> (not res!755340) (not e!1078755))))

(assert (=> d!512884 (= res!755340 (>= (+ 0 1) 0))))

(assert (=> d!512884 (= (printTailRec!931 thiss!17113 lt!638180 (+ 0 1) (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 lt!638180 0)))) lt!639383)))

(declare-fun b!1684916 () Bool)

(assert (=> b!1684916 (= e!1078755 (<= (+ 0 1) (size!14704 lt!638180)))))

(declare-fun b!1684917 () Bool)

(assert (=> b!1684917 (= e!1078754 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 lt!638180 0))))))

(declare-fun b!1684918 () Bool)

(assert (=> b!1684918 (= e!1078754 (printTailRec!931 thiss!17113 lt!638180 (+ 0 1 1) (++!5052 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 lt!638180 0))) (charsOf!1900 (apply!5022 lt!638180 (+ 0 1))))))))

(declare-fun lt!639382 () List!18535)

(assert (=> b!1684918 (= lt!639382 (list!7416 lt!638180))))

(declare-fun lt!639379 () Unit!31713)

(assert (=> b!1684918 (= lt!639379 (lemmaDropApply!631 lt!639382 (+ 0 1)))))

(assert (=> b!1684918 (= (head!3770 (drop!955 lt!639382 (+ 0 1))) (apply!5025 lt!639382 (+ 0 1)))))

(declare-fun lt!639380 () Unit!31713)

(assert (=> b!1684918 (= lt!639380 lt!639379)))

(declare-fun lt!639381 () List!18535)

(assert (=> b!1684918 (= lt!639381 (list!7416 lt!638180))))

(declare-fun lt!639385 () Unit!31713)

(assert (=> b!1684918 (= lt!639385 (lemmaDropTail!611 lt!639381 (+ 0 1)))))

(assert (=> b!1684918 (= (tail!2513 (drop!955 lt!639381 (+ 0 1))) (drop!955 lt!639381 (+ 0 1 1)))))

(declare-fun lt!639384 () Unit!31713)

(assert (=> b!1684918 (= lt!639384 lt!639385)))

(assert (= (and d!512884 res!755340) b!1684916))

(assert (= (and d!512884 c!275131) b!1684917))

(assert (= (and d!512884 (not c!275131)) b!1684918))

(declare-fun m!2066551 () Bool)

(assert (=> d!512884 m!2066551))

(declare-fun m!2066553 () Bool)

(assert (=> d!512884 m!2066553))

(assert (=> d!512884 m!2064411))

(assert (=> d!512884 m!2064425))

(declare-fun m!2066555 () Bool)

(assert (=> d!512884 m!2066555))

(assert (=> d!512884 m!2066553))

(assert (=> d!512884 m!2066555))

(declare-fun m!2066557 () Bool)

(assert (=> d!512884 m!2066557))

(assert (=> b!1684916 m!2064411))

(declare-fun m!2066559 () Bool)

(assert (=> b!1684918 m!2066559))

(declare-fun m!2066561 () Bool)

(assert (=> b!1684918 m!2066561))

(declare-fun m!2066563 () Bool)

(assert (=> b!1684918 m!2066563))

(assert (=> b!1684918 m!2064425))

(declare-fun m!2066565 () Bool)

(assert (=> b!1684918 m!2066565))

(declare-fun m!2066567 () Bool)

(assert (=> b!1684918 m!2066567))

(declare-fun m!2066569 () Bool)

(assert (=> b!1684918 m!2066569))

(declare-fun m!2066571 () Bool)

(assert (=> b!1684918 m!2066571))

(assert (=> b!1684918 m!2066565))

(assert (=> b!1684918 m!2066567))

(declare-fun m!2066573 () Bool)

(assert (=> b!1684918 m!2066573))

(assert (=> b!1684918 m!2066571))

(declare-fun m!2066575 () Bool)

(assert (=> b!1684918 m!2066575))

(assert (=> b!1684918 m!2066559))

(declare-fun m!2066577 () Bool)

(assert (=> b!1684918 m!2066577))

(declare-fun m!2066579 () Bool)

(assert (=> b!1684918 m!2066579))

(assert (=> b!1684918 m!2064327))

(assert (=> b!1684918 m!2066577))

(declare-fun m!2066581 () Bool)

(assert (=> b!1684918 m!2066581))

(assert (=> b!1683741 d!512884))

(declare-fun d!512886 () Bool)

(assert (=> d!512886 (= (head!3770 (drop!955 lt!638636 0)) (h!23866 (drop!955 lt!638636 0)))))

(assert (=> b!1683741 d!512886))

(declare-fun d!512888 () Bool)

(assert (=> d!512888 (= (list!7416 lt!638180) (list!7419 (c!274781 lt!638180)))))

(declare-fun bs!399488 () Bool)

(assert (= bs!399488 d!512888))

(assert (=> bs!399488 m!2065521))

(assert (=> b!1683741 d!512888))

(declare-fun d!512890 () Bool)

(declare-fun lt!639388 () Token!6068)

(assert (=> d!512890 (= lt!639388 (apply!5025 (list!7416 lt!638180) 0))))

(declare-fun apply!5029 (Conc!6151 Int) Token!6068)

(assert (=> d!512890 (= lt!639388 (apply!5029 (c!274781 lt!638180) 0))))

(declare-fun e!1078758 () Bool)

(assert (=> d!512890 e!1078758))

(declare-fun res!755343 () Bool)

(assert (=> d!512890 (=> (not res!755343) (not e!1078758))))

(assert (=> d!512890 (= res!755343 (<= 0 0))))

(assert (=> d!512890 (= (apply!5022 lt!638180 0) lt!639388)))

(declare-fun b!1684921 () Bool)

(assert (=> b!1684921 (= e!1078758 (< 0 (size!14704 lt!638180)))))

(assert (= (and d!512890 res!755343) b!1684921))

(assert (=> d!512890 m!2064327))

(assert (=> d!512890 m!2064327))

(declare-fun m!2066583 () Bool)

(assert (=> d!512890 m!2066583))

(declare-fun m!2066585 () Bool)

(assert (=> d!512890 m!2066585))

(assert (=> b!1684921 m!2064411))

(assert (=> b!1683741 d!512890))

(declare-fun d!512892 () Bool)

(assert (=> d!512892 (= (tail!2513 (drop!955 lt!638635 0)) (t!154512 (drop!955 lt!638635 0)))))

(assert (=> b!1683741 d!512892))

(declare-fun b!1684922 () Bool)

(declare-fun e!1078759 () Int)

(declare-fun call!107733 () Int)

(assert (=> b!1684922 (= e!1078759 (- call!107733 0))))

(declare-fun b!1684923 () Bool)

(declare-fun e!1078760 () Int)

(assert (=> b!1684923 (= e!1078760 e!1078759)))

(declare-fun c!275132 () Bool)

(assert (=> b!1684923 (= c!275132 (>= 0 call!107733))))

(declare-fun b!1684924 () Bool)

(declare-fun e!1078762 () List!18535)

(assert (=> b!1684924 (= e!1078762 lt!638635)))

(declare-fun b!1684925 () Bool)

(assert (=> b!1684925 (= e!1078759 0)))

(declare-fun bm!107728 () Bool)

(assert (=> bm!107728 (= call!107733 (size!14710 lt!638635))))

(declare-fun d!512894 () Bool)

(declare-fun e!1078763 () Bool)

(assert (=> d!512894 e!1078763))

(declare-fun res!755344 () Bool)

(assert (=> d!512894 (=> (not res!755344) (not e!1078763))))

(declare-fun lt!639389 () List!18535)

(assert (=> d!512894 (= res!755344 (= ((_ map implies) (content!2600 lt!639389) (content!2600 lt!638635)) ((as const (InoxSet Token!6068)) true)))))

(declare-fun e!1078761 () List!18535)

(assert (=> d!512894 (= lt!639389 e!1078761)))

(declare-fun c!275133 () Bool)

(assert (=> d!512894 (= c!275133 ((_ is Nil!18465) lt!638635))))

(assert (=> d!512894 (= (drop!955 lt!638635 0) lt!639389)))

(declare-fun b!1684926 () Bool)

(assert (=> b!1684926 (= e!1078761 Nil!18465)))

(declare-fun b!1684927 () Bool)

(assert (=> b!1684927 (= e!1078760 call!107733)))

(declare-fun b!1684928 () Bool)

(assert (=> b!1684928 (= e!1078762 (drop!955 (t!154512 lt!638635) (- 0 1)))))

(declare-fun b!1684929 () Bool)

(assert (=> b!1684929 (= e!1078761 e!1078762)))

(declare-fun c!275135 () Bool)

(assert (=> b!1684929 (= c!275135 (<= 0 0))))

(declare-fun b!1684930 () Bool)

(assert (=> b!1684930 (= e!1078763 (= (size!14710 lt!639389) e!1078760))))

(declare-fun c!275134 () Bool)

(assert (=> b!1684930 (= c!275134 (<= 0 0))))

(assert (= (and d!512894 c!275133) b!1684926))

(assert (= (and d!512894 (not c!275133)) b!1684929))

(assert (= (and b!1684929 c!275135) b!1684924))

(assert (= (and b!1684929 (not c!275135)) b!1684928))

(assert (= (and d!512894 res!755344) b!1684930))

(assert (= (and b!1684930 c!275134) b!1684927))

(assert (= (and b!1684930 (not c!275134)) b!1684923))

(assert (= (and b!1684923 c!275132) b!1684925))

(assert (= (and b!1684923 (not c!275132)) b!1684922))

(assert (= (or b!1684927 b!1684923 b!1684922) bm!107728))

(assert (=> bm!107728 m!2066529))

(declare-fun m!2066587 () Bool)

(assert (=> d!512894 m!2066587))

(assert (=> d!512894 m!2066533))

(declare-fun m!2066589 () Bool)

(assert (=> b!1684928 m!2066589))

(declare-fun m!2066591 () Bool)

(assert (=> b!1684930 m!2066591))

(assert (=> b!1683741 d!512894))

(declare-fun b!1684934 () Bool)

(declare-fun e!1078764 () Bool)

(declare-fun lt!639390 () BalanceConc!12244)

(assert (=> b!1684934 (= e!1078764 (= (list!7415 lt!639390) (++!5051 (list!7415 (BalanceConc!12245 Empty!6150)) (list!7415 (charsOf!1900 (apply!5022 lt!638180 0))))))))

(declare-fun b!1684932 () Bool)

(declare-fun res!755347 () Bool)

(assert (=> b!1684932 (=> (not res!755347) (not e!1078764))))

(assert (=> b!1684932 (= res!755347 (<= (height!983 (++!5054 (c!274779 (BalanceConc!12245 Empty!6150)) (c!274779 (charsOf!1900 (apply!5022 lt!638180 0))))) (+ (max!0 (height!983 (c!274779 (BalanceConc!12245 Empty!6150))) (height!983 (c!274779 (charsOf!1900 (apply!5022 lt!638180 0))))) 1)))))

(declare-fun b!1684931 () Bool)

(declare-fun res!755348 () Bool)

(assert (=> b!1684931 (=> (not res!755348) (not e!1078764))))

(assert (=> b!1684931 (= res!755348 (isBalanced!1926 (++!5054 (c!274779 (BalanceConc!12245 Empty!6150)) (c!274779 (charsOf!1900 (apply!5022 lt!638180 0))))))))

(declare-fun d!512896 () Bool)

(assert (=> d!512896 e!1078764))

(declare-fun res!755345 () Bool)

(assert (=> d!512896 (=> (not res!755345) (not e!1078764))))

(assert (=> d!512896 (= res!755345 (appendAssocInst!495 (c!274779 (BalanceConc!12245 Empty!6150)) (c!274779 (charsOf!1900 (apply!5022 lt!638180 0)))))))

(assert (=> d!512896 (= lt!639390 (BalanceConc!12245 (++!5054 (c!274779 (BalanceConc!12245 Empty!6150)) (c!274779 (charsOf!1900 (apply!5022 lt!638180 0))))))))

(assert (=> d!512896 (= (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 lt!638180 0))) lt!639390)))

(declare-fun b!1684933 () Bool)

(declare-fun res!755346 () Bool)

(assert (=> b!1684933 (=> (not res!755346) (not e!1078764))))

(assert (=> b!1684933 (= res!755346 (>= (height!983 (++!5054 (c!274779 (BalanceConc!12245 Empty!6150)) (c!274779 (charsOf!1900 (apply!5022 lt!638180 0))))) (max!0 (height!983 (c!274779 (BalanceConc!12245 Empty!6150))) (height!983 (c!274779 (charsOf!1900 (apply!5022 lt!638180 0)))))))))

(assert (= (and d!512896 res!755345) b!1684931))

(assert (= (and b!1684931 res!755348) b!1684932))

(assert (= (and b!1684932 res!755347) b!1684933))

(assert (= (and b!1684933 res!755346) b!1684934))

(declare-fun m!2066593 () Bool)

(assert (=> b!1684933 m!2066593))

(assert (=> b!1684933 m!2066593))

(declare-fun m!2066595 () Bool)

(assert (=> b!1684933 m!2066595))

(declare-fun m!2066597 () Bool)

(assert (=> b!1684933 m!2066597))

(declare-fun m!2066599 () Bool)

(assert (=> b!1684933 m!2066599))

(assert (=> b!1684933 m!2066597))

(assert (=> b!1684933 m!2066599))

(declare-fun m!2066601 () Bool)

(assert (=> b!1684933 m!2066601))

(declare-fun m!2066603 () Bool)

(assert (=> d!512896 m!2066603))

(assert (=> d!512896 m!2066593))

(assert (=> b!1684932 m!2066593))

(assert (=> b!1684932 m!2066593))

(assert (=> b!1684932 m!2066595))

(assert (=> b!1684932 m!2066597))

(assert (=> b!1684932 m!2066599))

(assert (=> b!1684932 m!2066597))

(assert (=> b!1684932 m!2066599))

(assert (=> b!1684932 m!2066601))

(declare-fun m!2066605 () Bool)

(assert (=> b!1684934 m!2066605))

(assert (=> b!1684934 m!2064413))

(assert (=> b!1684934 m!2064423))

(declare-fun m!2066607 () Bool)

(assert (=> b!1684934 m!2066607))

(assert (=> b!1684934 m!2064413))

(assert (=> b!1684934 m!2066607))

(declare-fun m!2066609 () Bool)

(assert (=> b!1684934 m!2066609))

(assert (=> b!1684931 m!2066593))

(assert (=> b!1684931 m!2066593))

(declare-fun m!2066611 () Bool)

(assert (=> b!1684931 m!2066611))

(assert (=> b!1683741 d!512896))

(declare-fun d!512898 () Bool)

(assert (=> d!512898 (= (head!3770 (drop!955 lt!638636 0)) (apply!5025 lt!638636 0))))

(declare-fun lt!639409 () Unit!31713)

(declare-fun choose!10180 (List!18535 Int) Unit!31713)

(assert (=> d!512898 (= lt!639409 (choose!10180 lt!638636 0))))

(declare-fun e!1078771 () Bool)

(assert (=> d!512898 e!1078771))

(declare-fun res!755353 () Bool)

(assert (=> d!512898 (=> (not res!755353) (not e!1078771))))

(assert (=> d!512898 (= res!755353 (>= 0 0))))

(assert (=> d!512898 (= (lemmaDropApply!631 lt!638636 0) lt!639409)))

(declare-fun b!1684943 () Bool)

(assert (=> b!1684943 (= e!1078771 (< 0 (size!14710 lt!638636)))))

(assert (= (and d!512898 res!755353) b!1684943))

(assert (=> d!512898 m!2064435))

(assert (=> d!512898 m!2064435))

(assert (=> d!512898 m!2064437))

(assert (=> d!512898 m!2064439))

(declare-fun m!2066613 () Bool)

(assert (=> d!512898 m!2066613))

(assert (=> b!1684943 m!2066543))

(assert (=> b!1683741 d!512898))

(declare-fun b!1684944 () Bool)

(declare-fun e!1078772 () Int)

(declare-fun call!107734 () Int)

(assert (=> b!1684944 (= e!1078772 (- call!107734 0))))

(declare-fun b!1684945 () Bool)

(declare-fun e!1078773 () Int)

(assert (=> b!1684945 (= e!1078773 e!1078772)))

(declare-fun c!275138 () Bool)

(assert (=> b!1684945 (= c!275138 (>= 0 call!107734))))

(declare-fun b!1684946 () Bool)

(declare-fun e!1078775 () List!18535)

(assert (=> b!1684946 (= e!1078775 lt!638636)))

(declare-fun b!1684947 () Bool)

(assert (=> b!1684947 (= e!1078772 0)))

(declare-fun bm!107729 () Bool)

(assert (=> bm!107729 (= call!107734 (size!14710 lt!638636))))

(declare-fun d!512900 () Bool)

(declare-fun e!1078776 () Bool)

(assert (=> d!512900 e!1078776))

(declare-fun res!755354 () Bool)

(assert (=> d!512900 (=> (not res!755354) (not e!1078776))))

(declare-fun lt!639410 () List!18535)

(assert (=> d!512900 (= res!755354 (= ((_ map implies) (content!2600 lt!639410) (content!2600 lt!638636)) ((as const (InoxSet Token!6068)) true)))))

(declare-fun e!1078774 () List!18535)

(assert (=> d!512900 (= lt!639410 e!1078774)))

(declare-fun c!275139 () Bool)

(assert (=> d!512900 (= c!275139 ((_ is Nil!18465) lt!638636))))

(assert (=> d!512900 (= (drop!955 lt!638636 0) lt!639410)))

(declare-fun b!1684948 () Bool)

(assert (=> b!1684948 (= e!1078774 Nil!18465)))

(declare-fun b!1684949 () Bool)

(assert (=> b!1684949 (= e!1078773 call!107734)))

(declare-fun b!1684950 () Bool)

(assert (=> b!1684950 (= e!1078775 (drop!955 (t!154512 lt!638636) (- 0 1)))))

(declare-fun b!1684951 () Bool)

(assert (=> b!1684951 (= e!1078774 e!1078775)))

(declare-fun c!275141 () Bool)

(assert (=> b!1684951 (= c!275141 (<= 0 0))))

(declare-fun b!1684952 () Bool)

(assert (=> b!1684952 (= e!1078776 (= (size!14710 lt!639410) e!1078773))))

(declare-fun c!275140 () Bool)

(assert (=> b!1684952 (= c!275140 (<= 0 0))))

(assert (= (and d!512900 c!275139) b!1684948))

(assert (= (and d!512900 (not c!275139)) b!1684951))

(assert (= (and b!1684951 c!275141) b!1684946))

(assert (= (and b!1684951 (not c!275141)) b!1684950))

(assert (= (and d!512900 res!755354) b!1684952))

(assert (= (and b!1684952 c!275140) b!1684949))

(assert (= (and b!1684952 (not c!275140)) b!1684945))

(assert (= (and b!1684945 c!275138) b!1684947))

(assert (= (and b!1684945 (not c!275138)) b!1684944))

(assert (= (or b!1684949 b!1684945 b!1684944) bm!107729))

(assert (=> bm!107729 m!2066543))

(declare-fun m!2066615 () Bool)

(assert (=> d!512900 m!2066615))

(declare-fun m!2066617 () Bool)

(assert (=> d!512900 m!2066617))

(declare-fun m!2066619 () Bool)

(assert (=> b!1684950 m!2066619))

(declare-fun m!2066621 () Bool)

(assert (=> b!1684952 m!2066621))

(assert (=> b!1683741 d!512900))

(declare-fun b!1684955 () Bool)

(declare-fun e!1078778 () List!18533)

(assert (=> b!1684955 (= e!1078778 (list!7424 (xs!9006 (c!274779 lt!638169))))))

(declare-fun b!1684954 () Bool)

(declare-fun e!1078777 () List!18533)

(assert (=> b!1684954 (= e!1078777 e!1078778)))

(declare-fun c!275143 () Bool)

(assert (=> b!1684954 (= c!275143 ((_ is Leaf!8996) (c!274779 lt!638169)))))

(declare-fun d!512902 () Bool)

(declare-fun c!275142 () Bool)

(assert (=> d!512902 (= c!275142 ((_ is Empty!6150) (c!274779 lt!638169)))))

(assert (=> d!512902 (= (list!7420 (c!274779 lt!638169)) e!1078777)))

(declare-fun b!1684956 () Bool)

(assert (=> b!1684956 (= e!1078778 (++!5051 (list!7420 (left!14761 (c!274779 lt!638169))) (list!7420 (right!15091 (c!274779 lt!638169)))))))

(declare-fun b!1684953 () Bool)

(assert (=> b!1684953 (= e!1078777 Nil!18463)))

(assert (= (and d!512902 c!275142) b!1684953))

(assert (= (and d!512902 (not c!275142)) b!1684954))

(assert (= (and b!1684954 c!275143) b!1684955))

(assert (= (and b!1684954 (not c!275143)) b!1684956))

(declare-fun m!2066623 () Bool)

(assert (=> b!1684955 m!2066623))

(declare-fun m!2066625 () Bool)

(assert (=> b!1684956 m!2066625))

(declare-fun m!2066627 () Bool)

(assert (=> b!1684956 m!2066627))

(assert (=> b!1684956 m!2066625))

(assert (=> b!1684956 m!2066627))

(declare-fun m!2066629 () Bool)

(assert (=> b!1684956 m!2066629))

(assert (=> d!512218 d!512902))

(declare-fun b!1684975 () Bool)

(declare-fun res!755378 () Bool)

(declare-fun e!1078790 () Bool)

(assert (=> b!1684975 (=> (not res!755378) (not e!1078790))))

(assert (=> b!1684975 (= res!755378 (isBalanced!1924 (left!14762 (c!274781 lt!638642))))))

(declare-fun b!1684976 () Bool)

(declare-fun e!1078789 () Bool)

(assert (=> b!1684976 (= e!1078789 e!1078790)))

(declare-fun res!755377 () Bool)

(assert (=> b!1684976 (=> (not res!755377) (not e!1078790))))

(declare-fun height!985 (Conc!6151) Int)

(assert (=> b!1684976 (= res!755377 (<= (- 1) (- (height!985 (left!14762 (c!274781 lt!638642))) (height!985 (right!15092 (c!274781 lt!638642))))))))

(declare-fun b!1684977 () Bool)

(declare-fun res!755374 () Bool)

(assert (=> b!1684977 (=> (not res!755374) (not e!1078790))))

(assert (=> b!1684977 (= res!755374 (<= (- (height!985 (left!14762 (c!274781 lt!638642))) (height!985 (right!15092 (c!274781 lt!638642)))) 1))))

(declare-fun b!1684978 () Bool)

(assert (=> b!1684978 (= e!1078790 (not (isEmpty!11545 (right!15092 (c!274781 lt!638642)))))))

(declare-fun b!1684979 () Bool)

(declare-fun res!755376 () Bool)

(assert (=> b!1684979 (=> (not res!755376) (not e!1078790))))

(assert (=> b!1684979 (= res!755376 (isBalanced!1924 (right!15092 (c!274781 lt!638642))))))

(declare-fun b!1684980 () Bool)

(declare-fun res!755375 () Bool)

(assert (=> b!1684980 (=> (not res!755375) (not e!1078790))))

(assert (=> b!1684980 (= res!755375 (not (isEmpty!11545 (left!14762 (c!274781 lt!638642)))))))

(declare-fun d!512904 () Bool)

(declare-fun res!755373 () Bool)

(assert (=> d!512904 (=> res!755373 e!1078789)))

(assert (=> d!512904 (= res!755373 (not ((_ is Node!6151) (c!274781 lt!638642))))))

(assert (=> d!512904 (= (isBalanced!1924 (c!274781 lt!638642)) e!1078789)))

(assert (= (and d!512904 (not res!755373)) b!1684976))

(assert (= (and b!1684976 res!755377) b!1684977))

(assert (= (and b!1684977 res!755374) b!1684975))

(assert (= (and b!1684975 res!755378) b!1684979))

(assert (= (and b!1684979 res!755376) b!1684980))

(assert (= (and b!1684980 res!755375) b!1684978))

(declare-fun m!2066631 () Bool)

(assert (=> b!1684977 m!2066631))

(declare-fun m!2066633 () Bool)

(assert (=> b!1684977 m!2066633))

(declare-fun m!2066635 () Bool)

(assert (=> b!1684979 m!2066635))

(assert (=> b!1684976 m!2066631))

(assert (=> b!1684976 m!2066633))

(declare-fun m!2066637 () Bool)

(assert (=> b!1684975 m!2066637))

(declare-fun m!2066639 () Bool)

(assert (=> b!1684980 m!2066639))

(declare-fun m!2066641 () Bool)

(assert (=> b!1684978 m!2066641))

(assert (=> b!1683750 d!512904))

(declare-fun b!1684983 () Bool)

(declare-fun e!1078792 () List!18533)

(assert (=> b!1684983 (= e!1078792 (list!7424 (xs!9006 (c!274779 lt!638184))))))

(declare-fun b!1684982 () Bool)

(declare-fun e!1078791 () List!18533)

(assert (=> b!1684982 (= e!1078791 e!1078792)))

(declare-fun c!275145 () Bool)

(assert (=> b!1684982 (= c!275145 ((_ is Leaf!8996) (c!274779 lt!638184)))))

(declare-fun d!512906 () Bool)

(declare-fun c!275144 () Bool)

(assert (=> d!512906 (= c!275144 ((_ is Empty!6150) (c!274779 lt!638184)))))

(assert (=> d!512906 (= (list!7420 (c!274779 lt!638184)) e!1078791)))

(declare-fun b!1684984 () Bool)

(assert (=> b!1684984 (= e!1078792 (++!5051 (list!7420 (left!14761 (c!274779 lt!638184))) (list!7420 (right!15091 (c!274779 lt!638184)))))))

(declare-fun b!1684981 () Bool)

(assert (=> b!1684981 (= e!1078791 Nil!18463)))

(assert (= (and d!512906 c!275144) b!1684981))

(assert (= (and d!512906 (not c!275144)) b!1684982))

(assert (= (and b!1684982 c!275145) b!1684983))

(assert (= (and b!1684982 (not c!275145)) b!1684984))

(declare-fun m!2066643 () Bool)

(assert (=> b!1684983 m!2066643))

(declare-fun m!2066645 () Bool)

(assert (=> b!1684984 m!2066645))

(declare-fun m!2066647 () Bool)

(assert (=> b!1684984 m!2066647))

(assert (=> b!1684984 m!2066645))

(assert (=> b!1684984 m!2066647))

(declare-fun m!2066649 () Bool)

(assert (=> b!1684984 m!2066649))

(assert (=> d!512248 d!512906))

(declare-fun b!1684986 () Bool)

(declare-fun res!755382 () Bool)

(declare-fun e!1078795 () Bool)

(assert (=> b!1684986 (=> (not res!755382) (not e!1078795))))

(assert (=> b!1684986 (= res!755382 (= (head!3766 lt!638738) (head!3766 (++!5051 lt!638185 lt!638165))))))

(declare-fun b!1684987 () Bool)

(assert (=> b!1684987 (= e!1078795 (isPrefix!1509 (tail!2512 lt!638738) (tail!2512 (++!5051 lt!638185 lt!638165))))))

(declare-fun e!1078793 () Bool)

(declare-fun b!1684988 () Bool)

(assert (=> b!1684988 (= e!1078793 (>= (size!14706 (++!5051 lt!638185 lt!638165)) (size!14706 lt!638738)))))

(declare-fun d!512908 () Bool)

(assert (=> d!512908 e!1078793))

(declare-fun res!755381 () Bool)

(assert (=> d!512908 (=> res!755381 e!1078793)))

(declare-fun lt!639415 () Bool)

(assert (=> d!512908 (= res!755381 (not lt!639415))))

(declare-fun e!1078794 () Bool)

(assert (=> d!512908 (= lt!639415 e!1078794)))

(declare-fun res!755380 () Bool)

(assert (=> d!512908 (=> res!755380 e!1078794)))

(assert (=> d!512908 (= res!755380 ((_ is Nil!18463) lt!638738))))

(assert (=> d!512908 (= (isPrefix!1509 lt!638738 (++!5051 lt!638185 lt!638165)) lt!639415)))

(declare-fun b!1684985 () Bool)

(assert (=> b!1684985 (= e!1078794 e!1078795)))

(declare-fun res!755379 () Bool)

(assert (=> b!1684985 (=> (not res!755379) (not e!1078795))))

(assert (=> b!1684985 (= res!755379 (not ((_ is Nil!18463) (++!5051 lt!638185 lt!638165))))))

(assert (= (and d!512908 (not res!755380)) b!1684985))

(assert (= (and b!1684985 res!755379) b!1684986))

(assert (= (and b!1684986 res!755382) b!1684987))

(assert (= (and d!512908 (not res!755381)) b!1684988))

(declare-fun m!2066651 () Bool)

(assert (=> b!1684986 m!2066651))

(assert (=> b!1684986 m!2063469))

(declare-fun m!2066653 () Bool)

(assert (=> b!1684986 m!2066653))

(declare-fun m!2066655 () Bool)

(assert (=> b!1684987 m!2066655))

(assert (=> b!1684987 m!2063469))

(declare-fun m!2066657 () Bool)

(assert (=> b!1684987 m!2066657))

(assert (=> b!1684987 m!2066655))

(assert (=> b!1684987 m!2066657))

(declare-fun m!2066659 () Bool)

(assert (=> b!1684987 m!2066659))

(assert (=> b!1684988 m!2063469))

(declare-fun m!2066661 () Bool)

(assert (=> b!1684988 m!2066661))

(declare-fun m!2066663 () Bool)

(assert (=> b!1684988 m!2066663))

(assert (=> d!512320 d!512908))

(assert (=> d!512320 d!512144))

(declare-fun d!512910 () Bool)

(declare-fun e!1078812 () Bool)

(assert (=> d!512910 e!1078812))

(declare-fun res!755395 () Bool)

(assert (=> d!512910 (=> (not res!755395) (not e!1078812))))

(assert (=> d!512910 (= res!755395 (isDefined!2910 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))))))

(declare-fun lt!639429 () Unit!31713)

(declare-fun choose!10181 (LexerInterface!2880 List!18536 List!18533 Token!6068) Unit!31713)

(assert (=> d!512910 (= lt!639429 (choose!10181 thiss!17113 rules!1846 lt!638185 lt!638731))))

(assert (=> d!512910 (rulesInvariant!2549 thiss!17113 rules!1846)))

(assert (=> d!512910 (= (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!343 thiss!17113 rules!1846 lt!638185 lt!638731) lt!639429)))

(declare-fun b!1685011 () Bool)

(declare-fun res!755396 () Bool)

(assert (=> b!1685011 (=> (not res!755396) (not e!1078812))))

(assert (=> b!1685011 (= res!755396 (matchR!2070 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))) (list!7415 (charsOf!1900 lt!638731))))))

(declare-fun b!1685012 () Bool)

(assert (=> b!1685012 (= e!1078812 (= (rule!5151 lt!638731) (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))))))

(assert (= (and d!512910 res!755395) b!1685011))

(assert (= (and b!1685011 res!755396) b!1685012))

(assert (=> d!512910 m!2064583))

(assert (=> d!512910 m!2064583))

(assert (=> d!512910 m!2064623))

(declare-fun m!2066713 () Bool)

(assert (=> d!512910 m!2066713))

(assert (=> d!512910 m!2063503))

(assert (=> b!1685011 m!2064581))

(assert (=> b!1685011 m!2064587))

(assert (=> b!1685011 m!2064579))

(assert (=> b!1685011 m!2064581))

(assert (=> b!1685011 m!2064583))

(assert (=> b!1685011 m!2064585))

(assert (=> b!1685011 m!2064579))

(assert (=> b!1685011 m!2064583))

(assert (=> b!1685012 m!2064583))

(assert (=> b!1685012 m!2064583))

(assert (=> b!1685012 m!2064585))

(assert (=> d!512320 d!512910))

(assert (=> d!512320 d!512512))

(declare-fun d!512918 () Bool)

(assert (=> d!512918 (= (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 lt!638185 lt!638165))) (not (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 lt!638185 lt!638165)))))))

(declare-fun bs!399492 () Bool)

(assert (= bs!399492 d!512918))

(assert (=> bs!399492 m!2064601))

(assert (=> bs!399492 m!2064605))

(assert (=> d!512320 d!512918))

(declare-fun d!512920 () Bool)

(assert (=> d!512920 (isPrefix!1509 lt!638735 (++!5051 lt!638735 lt!638739))))

(declare-fun lt!639430 () Unit!31713)

(assert (=> d!512920 (= lt!639430 (choose!10171 lt!638735 lt!638739))))

(assert (=> d!512920 (= (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!638735 lt!638739) lt!639430)))

(declare-fun bs!399493 () Bool)

(assert (= bs!399493 d!512920))

(assert (=> bs!399493 m!2064609))

(assert (=> bs!399493 m!2064609))

(assert (=> bs!399493 m!2064611))

(declare-fun m!2066715 () Bool)

(assert (=> bs!399493 m!2066715))

(assert (=> d!512320 d!512920))

(assert (=> d!512320 d!512124))

(declare-fun d!512922 () Bool)

(assert (=> d!512922 (= (isDefined!2910 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731)))) (not (isEmpty!11551 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!638731))))))))

(declare-fun bs!399494 () Bool)

(assert (= bs!399494 d!512922))

(assert (=> bs!399494 m!2064583))

(declare-fun m!2066717 () Bool)

(assert (=> bs!399494 m!2066717))

(assert (=> d!512320 d!512922))

(assert (=> d!512320 d!512312))

(declare-fun b!1685013 () Bool)

(declare-fun res!755397 () Bool)

(declare-fun e!1078814 () Bool)

(assert (=> b!1685013 (=> (not res!755397) (not e!1078814))))

(declare-fun lt!639431 () Option!3558)

(assert (=> b!1685013 (= res!755397 (< (size!14706 (_2!10502 (get!5414 lt!639431))) (size!14706 lt!638185)))))

(declare-fun d!512924 () Bool)

(declare-fun e!1078813 () Bool)

(assert (=> d!512924 e!1078813))

(declare-fun res!755401 () Bool)

(assert (=> d!512924 (=> res!755401 e!1078813)))

(assert (=> d!512924 (= res!755401 (isEmpty!11548 lt!639431))))

(declare-fun e!1078815 () Option!3558)

(assert (=> d!512924 (= lt!639431 e!1078815)))

(declare-fun c!275147 () Bool)

(assert (=> d!512924 (= c!275147 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!639432 () Unit!31713)

(declare-fun lt!639434 () Unit!31713)

(assert (=> d!512924 (= lt!639432 lt!639434)))

(assert (=> d!512924 (isPrefix!1509 lt!638185 lt!638185)))

(assert (=> d!512924 (= lt!639434 (lemmaIsPrefixRefl!1028 lt!638185 lt!638185))))

(assert (=> d!512924 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512924 (= (maxPrefix!1440 thiss!17113 rules!1846 lt!638185) lt!639431)))

(declare-fun call!107735 () Option!3558)

(declare-fun bm!107730 () Bool)

(assert (=> bm!107730 (= call!107735 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) lt!638185))))

(declare-fun b!1685014 () Bool)

(assert (=> b!1685014 (= e!1078814 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!639431)))))))

(declare-fun b!1685015 () Bool)

(assert (=> b!1685015 (= e!1078815 call!107735)))

(declare-fun b!1685016 () Bool)

(declare-fun res!755400 () Bool)

(assert (=> b!1685016 (=> (not res!755400) (not e!1078814))))

(assert (=> b!1685016 (= res!755400 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639431)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!639431)))))))

(declare-fun b!1685017 () Bool)

(assert (=> b!1685017 (= e!1078813 e!1078814)))

(declare-fun res!755398 () Bool)

(assert (=> b!1685017 (=> (not res!755398) (not e!1078814))))

(assert (=> b!1685017 (= res!755398 (isDefined!2907 lt!639431))))

(declare-fun b!1685018 () Bool)

(declare-fun res!755402 () Bool)

(assert (=> b!1685018 (=> (not res!755402) (not e!1078814))))

(assert (=> b!1685018 (= res!755402 (= (value!102326 (_1!10502 (get!5414 lt!639431))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!639431)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!639431)))))))))

(declare-fun b!1685019 () Bool)

(declare-fun res!755399 () Bool)

(assert (=> b!1685019 (=> (not res!755399) (not e!1078814))))

(assert (=> b!1685019 (= res!755399 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!639431)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639431))))))))

(declare-fun b!1685020 () Bool)

(declare-fun res!755403 () Bool)

(assert (=> b!1685020 (=> (not res!755403) (not e!1078814))))

(assert (=> b!1685020 (= res!755403 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639431)))) (_2!10502 (get!5414 lt!639431))) lt!638185))))

(declare-fun b!1685021 () Bool)

(declare-fun lt!639435 () Option!3558)

(declare-fun lt!639433 () Option!3558)

(assert (=> b!1685021 (= e!1078815 (ite (and ((_ is None!3557) lt!639435) ((_ is None!3557) lt!639433)) None!3557 (ite ((_ is None!3557) lt!639433) lt!639435 (ite ((_ is None!3557) lt!639435) lt!639433 (ite (>= (size!14700 (_1!10502 (v!24868 lt!639435))) (size!14700 (_1!10502 (v!24868 lt!639433)))) lt!639435 lt!639433)))))))

(assert (=> b!1685021 (= lt!639435 call!107735)))

(assert (=> b!1685021 (= lt!639433 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) lt!638185))))

(assert (= (and d!512924 c!275147) b!1685015))

(assert (= (and d!512924 (not c!275147)) b!1685021))

(assert (= (or b!1685015 b!1685021) bm!107730))

(assert (= (and d!512924 (not res!755401)) b!1685017))

(assert (= (and b!1685017 res!755398) b!1685016))

(assert (= (and b!1685016 res!755400) b!1685013))

(assert (= (and b!1685013 res!755397) b!1685020))

(assert (= (and b!1685020 res!755403) b!1685018))

(assert (= (and b!1685018 res!755402) b!1685019))

(assert (= (and b!1685019 res!755399) b!1685014))

(declare-fun m!2066719 () Bool)

(assert (=> b!1685018 m!2066719))

(declare-fun m!2066721 () Bool)

(assert (=> b!1685018 m!2066721))

(assert (=> b!1685018 m!2066721))

(declare-fun m!2066723 () Bool)

(assert (=> b!1685018 m!2066723))

(assert (=> b!1685016 m!2066719))

(declare-fun m!2066725 () Bool)

(assert (=> b!1685016 m!2066725))

(assert (=> b!1685016 m!2066725))

(declare-fun m!2066727 () Bool)

(assert (=> b!1685016 m!2066727))

(assert (=> b!1685020 m!2066719))

(assert (=> b!1685020 m!2066725))

(assert (=> b!1685020 m!2066725))

(assert (=> b!1685020 m!2066727))

(assert (=> b!1685020 m!2066727))

(declare-fun m!2066729 () Bool)

(assert (=> b!1685020 m!2066729))

(declare-fun m!2066731 () Bool)

(assert (=> bm!107730 m!2066731))

(assert (=> b!1685014 m!2066719))

(declare-fun m!2066733 () Bool)

(assert (=> b!1685014 m!2066733))

(assert (=> b!1685019 m!2066719))

(assert (=> b!1685019 m!2066725))

(assert (=> b!1685019 m!2066725))

(assert (=> b!1685019 m!2066727))

(assert (=> b!1685019 m!2066727))

(declare-fun m!2066737 () Bool)

(assert (=> b!1685019 m!2066737))

(declare-fun m!2066741 () Bool)

(assert (=> d!512924 m!2066741))

(declare-fun m!2066743 () Bool)

(assert (=> d!512924 m!2066743))

(declare-fun m!2066745 () Bool)

(assert (=> d!512924 m!2066745))

(assert (=> d!512924 m!2063751))

(declare-fun m!2066747 () Bool)

(assert (=> b!1685021 m!2066747))

(declare-fun m!2066749 () Bool)

(assert (=> b!1685017 m!2066749))

(assert (=> b!1685013 m!2066719))

(declare-fun m!2066751 () Bool)

(assert (=> b!1685013 m!2066751))

(assert (=> b!1685013 m!2063981))

(assert (=> d!512320 d!512924))

(declare-fun b!1685028 () Bool)

(declare-fun res!755410 () Bool)

(declare-fun e!1078822 () Bool)

(assert (=> b!1685028 (=> (not res!755410) (not e!1078822))))

(assert (=> b!1685028 (= res!755410 (= (head!3766 lt!638735) (head!3766 (++!5051 lt!638735 lt!638739))))))

(declare-fun b!1685029 () Bool)

(assert (=> b!1685029 (= e!1078822 (isPrefix!1509 (tail!2512 lt!638735) (tail!2512 (++!5051 lt!638735 lt!638739))))))

(declare-fun b!1685030 () Bool)

(declare-fun e!1078820 () Bool)

(assert (=> b!1685030 (= e!1078820 (>= (size!14706 (++!5051 lt!638735 lt!638739)) (size!14706 lt!638735)))))

(declare-fun d!512928 () Bool)

(assert (=> d!512928 e!1078820))

(declare-fun res!755409 () Bool)

(assert (=> d!512928 (=> res!755409 e!1078820)))

(declare-fun lt!639440 () Bool)

(assert (=> d!512928 (= res!755409 (not lt!639440))))

(declare-fun e!1078821 () Bool)

(assert (=> d!512928 (= lt!639440 e!1078821)))

(declare-fun res!755408 () Bool)

(assert (=> d!512928 (=> res!755408 e!1078821)))

(assert (=> d!512928 (= res!755408 ((_ is Nil!18463) lt!638735))))

(assert (=> d!512928 (= (isPrefix!1509 lt!638735 (++!5051 lt!638735 lt!638739)) lt!639440)))

(declare-fun b!1685027 () Bool)

(assert (=> b!1685027 (= e!1078821 e!1078822)))

(declare-fun res!755407 () Bool)

(assert (=> b!1685027 (=> (not res!755407) (not e!1078822))))

(assert (=> b!1685027 (= res!755407 (not ((_ is Nil!18463) (++!5051 lt!638735 lt!638739))))))

(assert (= (and d!512928 (not res!755408)) b!1685027))

(assert (= (and b!1685027 res!755407) b!1685028))

(assert (= (and b!1685028 res!755410) b!1685029))

(assert (= (and d!512928 (not res!755409)) b!1685030))

(declare-fun m!2066755 () Bool)

(assert (=> b!1685028 m!2066755))

(assert (=> b!1685028 m!2064609))

(declare-fun m!2066759 () Bool)

(assert (=> b!1685028 m!2066759))

(declare-fun m!2066763 () Bool)

(assert (=> b!1685029 m!2066763))

(assert (=> b!1685029 m!2064609))

(declare-fun m!2066765 () Bool)

(assert (=> b!1685029 m!2066765))

(assert (=> b!1685029 m!2066763))

(assert (=> b!1685029 m!2066765))

(declare-fun m!2066769 () Bool)

(assert (=> b!1685029 m!2066769))

(assert (=> b!1685030 m!2064609))

(declare-fun m!2066771 () Bool)

(assert (=> b!1685030 m!2066771))

(declare-fun m!2066773 () Bool)

(assert (=> b!1685030 m!2066773))

(assert (=> d!512320 d!512928))

(assert (=> d!512320 d!512254))

(declare-fun d!512934 () Bool)

(assert (=> d!512934 (isPrefix!1509 lt!638738 (++!5051 lt!638185 lt!638165))))

(declare-fun lt!639446 () Unit!31713)

(declare-fun choose!10182 (List!18533 List!18533 List!18533) Unit!31713)

(assert (=> d!512934 (= lt!639446 (choose!10182 lt!638738 lt!638185 lt!638165))))

(assert (=> d!512934 (isPrefix!1509 lt!638738 lt!638185)))

(assert (=> d!512934 (= (lemmaPrefixStaysPrefixWhenAddingToSuffix!229 lt!638738 lt!638185 lt!638165) lt!639446)))

(declare-fun bs!399495 () Bool)

(assert (= bs!399495 d!512934))

(assert (=> bs!399495 m!2063469))

(assert (=> bs!399495 m!2063469))

(assert (=> bs!399495 m!2064603))

(declare-fun m!2066775 () Bool)

(assert (=> bs!399495 m!2066775))

(declare-fun m!2066777 () Bool)

(assert (=> bs!399495 m!2066777))

(assert (=> d!512320 d!512934))

(declare-fun d!512936 () Bool)

(assert (=> d!512936 (= (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 lt!638185 lt!638165))) (not ((_ is Some!3557) (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 lt!638185 lt!638165)))))))

(assert (=> d!512320 d!512936))

(declare-fun d!512938 () Bool)

(assert (=> d!512938 (= (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185)))) (list!7419 (c!274781 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(declare-fun bs!399496 () Bool)

(assert (= bs!399496 d!512938))

(declare-fun m!2066779 () Bool)

(assert (=> bs!399496 m!2066779))

(assert (=> d!512320 d!512938))

(declare-fun b!1685038 () Bool)

(declare-fun e!1078828 () List!18533)

(assert (=> b!1685038 (= e!1078828 lt!638739)))

(declare-fun d!512940 () Bool)

(declare-fun e!1078829 () Bool)

(assert (=> d!512940 e!1078829))

(declare-fun res!755415 () Bool)

(assert (=> d!512940 (=> (not res!755415) (not e!1078829))))

(declare-fun lt!639447 () List!18533)

(assert (=> d!512940 (= res!755415 (= (content!2597 lt!639447) ((_ map or) (content!2597 lt!638735) (content!2597 lt!638739))))))

(assert (=> d!512940 (= lt!639447 e!1078828)))

(declare-fun c!275151 () Bool)

(assert (=> d!512940 (= c!275151 ((_ is Nil!18463) lt!638735))))

(assert (=> d!512940 (= (++!5051 lt!638735 lt!638739) lt!639447)))

(declare-fun b!1685041 () Bool)

(assert (=> b!1685041 (= e!1078829 (or (not (= lt!638739 Nil!18463)) (= lt!639447 lt!638735)))))

(declare-fun b!1685040 () Bool)

(declare-fun res!755414 () Bool)

(assert (=> b!1685040 (=> (not res!755414) (not e!1078829))))

(assert (=> b!1685040 (= res!755414 (= (size!14706 lt!639447) (+ (size!14706 lt!638735) (size!14706 lt!638739))))))

(declare-fun b!1685039 () Bool)

(assert (=> b!1685039 (= e!1078828 (Cons!18463 (h!23864 lt!638735) (++!5051 (t!154510 lt!638735) lt!638739)))))

(assert (= (and d!512940 c!275151) b!1685038))

(assert (= (and d!512940 (not c!275151)) b!1685039))

(assert (= (and d!512940 res!755415) b!1685040))

(assert (= (and b!1685040 res!755414) b!1685041))

(declare-fun m!2066781 () Bool)

(assert (=> d!512940 m!2066781))

(declare-fun m!2066783 () Bool)

(assert (=> d!512940 m!2066783))

(declare-fun m!2066785 () Bool)

(assert (=> d!512940 m!2066785))

(declare-fun m!2066787 () Bool)

(assert (=> b!1685040 m!2066787))

(assert (=> b!1685040 m!2066773))

(declare-fun m!2066789 () Bool)

(assert (=> b!1685040 m!2066789))

(declare-fun m!2066791 () Bool)

(assert (=> b!1685039 m!2066791))

(assert (=> d!512320 d!512940))

(declare-fun d!512942 () Bool)

(assert (=> d!512942 (= (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 lt!638185)) (v!24868 (maxPrefix!1440 thiss!17113 rules!1846 lt!638185)))))

(assert (=> d!512320 d!512942))

(declare-fun b!1685045 () Bool)

(declare-fun res!755417 () Bool)

(declare-fun e!1078833 () Bool)

(assert (=> b!1685045 (=> (not res!755417) (not e!1078833))))

(declare-fun lt!639449 () Option!3558)

(assert (=> b!1685045 (= res!755417 (< (size!14706 (_2!10502 (get!5414 lt!639449))) (size!14706 (++!5051 lt!638185 lt!638165))))))

(declare-fun d!512944 () Bool)

(declare-fun e!1078832 () Bool)

(assert (=> d!512944 e!1078832))

(declare-fun res!755421 () Bool)

(assert (=> d!512944 (=> res!755421 e!1078832)))

(assert (=> d!512944 (= res!755421 (isEmpty!11548 lt!639449))))

(declare-fun e!1078834 () Option!3558)

(assert (=> d!512944 (= lt!639449 e!1078834)))

(declare-fun c!275153 () Bool)

(assert (=> d!512944 (= c!275153 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!639450 () Unit!31713)

(declare-fun lt!639452 () Unit!31713)

(assert (=> d!512944 (= lt!639450 lt!639452)))

(assert (=> d!512944 (isPrefix!1509 (++!5051 lt!638185 lt!638165) (++!5051 lt!638185 lt!638165))))

(assert (=> d!512944 (= lt!639452 (lemmaIsPrefixRefl!1028 (++!5051 lt!638185 lt!638165) (++!5051 lt!638185 lt!638165)))))

(assert (=> d!512944 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512944 (= (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 lt!638185 lt!638165)) lt!639449)))

(declare-fun call!107736 () Option!3558)

(declare-fun bm!107731 () Bool)

(assert (=> bm!107731 (= call!107736 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (++!5051 lt!638185 lt!638165)))))

(declare-fun b!1685046 () Bool)

(assert (=> b!1685046 (= e!1078833 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!639449)))))))

(declare-fun b!1685047 () Bool)

(assert (=> b!1685047 (= e!1078834 call!107736)))

(declare-fun b!1685048 () Bool)

(declare-fun res!755420 () Bool)

(assert (=> b!1685048 (=> (not res!755420) (not e!1078833))))

(assert (=> b!1685048 (= res!755420 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639449)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!639449)))))))

(declare-fun b!1685049 () Bool)

(assert (=> b!1685049 (= e!1078832 e!1078833)))

(declare-fun res!755418 () Bool)

(assert (=> b!1685049 (=> (not res!755418) (not e!1078833))))

(assert (=> b!1685049 (= res!755418 (isDefined!2907 lt!639449))))

(declare-fun b!1685050 () Bool)

(declare-fun res!755422 () Bool)

(assert (=> b!1685050 (=> (not res!755422) (not e!1078833))))

(assert (=> b!1685050 (= res!755422 (= (value!102326 (_1!10502 (get!5414 lt!639449))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!639449)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!639449)))))))))

(declare-fun b!1685051 () Bool)

(declare-fun res!755419 () Bool)

(assert (=> b!1685051 (=> (not res!755419) (not e!1078833))))

(assert (=> b!1685051 (= res!755419 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!639449)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639449))))))))

(declare-fun b!1685052 () Bool)

(declare-fun res!755423 () Bool)

(assert (=> b!1685052 (=> (not res!755423) (not e!1078833))))

(assert (=> b!1685052 (= res!755423 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639449)))) (_2!10502 (get!5414 lt!639449))) (++!5051 lt!638185 lt!638165)))))

(declare-fun b!1685053 () Bool)

(declare-fun lt!639453 () Option!3558)

(declare-fun lt!639451 () Option!3558)

(assert (=> b!1685053 (= e!1078834 (ite (and ((_ is None!3557) lt!639453) ((_ is None!3557) lt!639451)) None!3557 (ite ((_ is None!3557) lt!639451) lt!639453 (ite ((_ is None!3557) lt!639453) lt!639451 (ite (>= (size!14700 (_1!10502 (v!24868 lt!639453))) (size!14700 (_1!10502 (v!24868 lt!639451)))) lt!639453 lt!639451)))))))

(assert (=> b!1685053 (= lt!639453 call!107736)))

(assert (=> b!1685053 (= lt!639451 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (++!5051 lt!638185 lt!638165)))))

(assert (= (and d!512944 c!275153) b!1685047))

(assert (= (and d!512944 (not c!275153)) b!1685053))

(assert (= (or b!1685047 b!1685053) bm!107731))

(assert (= (and d!512944 (not res!755421)) b!1685049))

(assert (= (and b!1685049 res!755418) b!1685048))

(assert (= (and b!1685048 res!755420) b!1685045))

(assert (= (and b!1685045 res!755417) b!1685052))

(assert (= (and b!1685052 res!755423) b!1685050))

(assert (= (and b!1685050 res!755422) b!1685051))

(assert (= (and b!1685051 res!755419) b!1685046))

(declare-fun m!2066803 () Bool)

(assert (=> b!1685050 m!2066803))

(declare-fun m!2066805 () Bool)

(assert (=> b!1685050 m!2066805))

(assert (=> b!1685050 m!2066805))

(declare-fun m!2066807 () Bool)

(assert (=> b!1685050 m!2066807))

(assert (=> b!1685048 m!2066803))

(declare-fun m!2066809 () Bool)

(assert (=> b!1685048 m!2066809))

(assert (=> b!1685048 m!2066809))

(declare-fun m!2066811 () Bool)

(assert (=> b!1685048 m!2066811))

(assert (=> b!1685052 m!2066803))

(assert (=> b!1685052 m!2066809))

(assert (=> b!1685052 m!2066809))

(assert (=> b!1685052 m!2066811))

(assert (=> b!1685052 m!2066811))

(declare-fun m!2066813 () Bool)

(assert (=> b!1685052 m!2066813))

(assert (=> bm!107731 m!2063469))

(declare-fun m!2066815 () Bool)

(assert (=> bm!107731 m!2066815))

(assert (=> b!1685046 m!2066803))

(declare-fun m!2066817 () Bool)

(assert (=> b!1685046 m!2066817))

(assert (=> b!1685051 m!2066803))

(assert (=> b!1685051 m!2066809))

(assert (=> b!1685051 m!2066809))

(assert (=> b!1685051 m!2066811))

(assert (=> b!1685051 m!2066811))

(declare-fun m!2066819 () Bool)

(assert (=> b!1685051 m!2066819))

(declare-fun m!2066821 () Bool)

(assert (=> d!512944 m!2066821))

(assert (=> d!512944 m!2063469))

(assert (=> d!512944 m!2063469))

(declare-fun m!2066823 () Bool)

(assert (=> d!512944 m!2066823))

(assert (=> d!512944 m!2063469))

(assert (=> d!512944 m!2063469))

(declare-fun m!2066825 () Bool)

(assert (=> d!512944 m!2066825))

(assert (=> d!512944 m!2063751))

(assert (=> b!1685053 m!2063469))

(declare-fun m!2066827 () Bool)

(assert (=> b!1685053 m!2066827))

(declare-fun m!2066829 () Bool)

(assert (=> b!1685049 m!2066829))

(assert (=> b!1685045 m!2066803))

(declare-fun m!2066831 () Bool)

(assert (=> b!1685045 m!2066831))

(assert (=> b!1685045 m!2063469))

(assert (=> b!1685045 m!2066661))

(assert (=> d!512320 d!512944))

(assert (=> d!512320 d!512544))

(declare-fun d!512950 () Bool)

(assert (=> d!512950 (= (head!3770 (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))) (h!23866 (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(assert (=> d!512320 d!512950))

(assert (=> d!512320 d!512536))

(declare-fun bs!399498 () Bool)

(declare-fun d!512952 () Bool)

(assert (= bs!399498 (and d!512952 d!512348)))

(declare-fun lambda!68308 () Int)

(assert (=> bs!399498 (= lambda!68308 lambda!68274)))

(declare-fun lambda!68309 () Int)

(declare-fun forall!4207 (List!18541 Int) Bool)

(assert (=> d!512952 (forall!4207 (map!3801 rules!1846 lambda!68308) lambda!68309)))

(declare-fun lt!639462 () Unit!31713)

(declare-fun e!1078845 () Unit!31713)

(assert (=> d!512952 (= lt!639462 e!1078845)))

(declare-fun c!275162 () Bool)

(assert (=> d!512952 (= c!275162 ((_ is Nil!18466) rules!1846))))

(assert (=> d!512952 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!512952 (= (lemma!296 rules!1846 thiss!17113 rules!1846) lt!639462)))

(declare-fun b!1685072 () Bool)

(declare-fun Unit!31759 () Unit!31713)

(assert (=> b!1685072 (= e!1078845 Unit!31759)))

(declare-fun b!1685073 () Bool)

(declare-fun Unit!31760 () Unit!31713)

(assert (=> b!1685073 (= e!1078845 Unit!31760)))

(declare-fun lt!639463 () Unit!31713)

(assert (=> b!1685073 (= lt!639463 (lemma!296 rules!1846 thiss!17113 (t!154513 rules!1846)))))

(assert (= (and d!512952 c!275162) b!1685072))

(assert (= (and d!512952 (not c!275162)) b!1685073))

(declare-fun m!2066833 () Bool)

(assert (=> d!512952 m!2066833))

(assert (=> d!512952 m!2066833))

(declare-fun m!2066835 () Bool)

(assert (=> d!512952 m!2066835))

(assert (=> d!512952 m!2063751))

(declare-fun m!2066837 () Bool)

(assert (=> b!1685073 m!2066837))

(assert (=> d!512348 d!512952))

(declare-fun bs!399500 () Bool)

(declare-fun d!512954 () Bool)

(assert (= bs!399500 (and d!512954 d!512952)))

(declare-fun lambda!68312 () Int)

(assert (=> bs!399500 (= lambda!68312 lambda!68309)))

(declare-fun b!1685134 () Bool)

(declare-fun e!1078881 () Bool)

(declare-fun e!1078878 () Bool)

(assert (=> b!1685134 (= e!1078881 e!1078878)))

(declare-fun c!275181 () Bool)

(declare-fun isEmpty!11553 (List!18541) Bool)

(assert (=> b!1685134 (= c!275181 (isEmpty!11553 (map!3801 rules!1846 lambda!68274)))))

(declare-fun b!1685135 () Bool)

(declare-fun e!1078879 () Regex!4579)

(assert (=> b!1685135 (= e!1078879 EmptyLang!4579)))

(declare-fun b!1685136 () Bool)

(declare-fun e!1078876 () Bool)

(assert (=> b!1685136 (= e!1078876 (isEmpty!11553 (t!154560 (map!3801 rules!1846 lambda!68274))))))

(declare-fun b!1685137 () Bool)

(declare-fun e!1078877 () Regex!4579)

(assert (=> b!1685137 (= e!1078877 e!1078879)))

(declare-fun c!275182 () Bool)

(assert (=> b!1685137 (= c!275182 ((_ is Cons!18471) (map!3801 rules!1846 lambda!68274)))))

(declare-fun b!1685138 () Bool)

(declare-fun e!1078880 () Bool)

(declare-fun lt!639480 () Regex!4579)

(declare-fun isUnion!82 (Regex!4579) Bool)

(assert (=> b!1685138 (= e!1078880 (isUnion!82 lt!639480))))

(declare-fun b!1685139 () Bool)

(assert (=> b!1685139 (= e!1078877 (h!23872 (map!3801 rules!1846 lambda!68274)))))

(assert (=> d!512954 e!1078881))

(declare-fun res!755455 () Bool)

(assert (=> d!512954 (=> (not res!755455) (not e!1078881))))

(assert (=> d!512954 (= res!755455 (validRegex!1840 lt!639480))))

(assert (=> d!512954 (= lt!639480 e!1078877)))

(declare-fun c!275179 () Bool)

(assert (=> d!512954 (= c!275179 e!1078876)))

(declare-fun res!755454 () Bool)

(assert (=> d!512954 (=> (not res!755454) (not e!1078876))))

(assert (=> d!512954 (= res!755454 ((_ is Cons!18471) (map!3801 rules!1846 lambda!68274)))))

(assert (=> d!512954 (forall!4207 (map!3801 rules!1846 lambda!68274) lambda!68312)))

(assert (=> d!512954 (= (generalisedUnion!304 (map!3801 rules!1846 lambda!68274)) lt!639480)))

(declare-fun b!1685140 () Bool)

(declare-fun head!3771 (List!18541) Regex!4579)

(assert (=> b!1685140 (= e!1078880 (= lt!639480 (head!3771 (map!3801 rules!1846 lambda!68274))))))

(declare-fun b!1685141 () Bool)

(assert (=> b!1685141 (= e!1078878 e!1078880)))

(declare-fun c!275180 () Bool)

(declare-fun tail!2514 (List!18541) List!18541)

(assert (=> b!1685141 (= c!275180 (isEmpty!11553 (tail!2514 (map!3801 rules!1846 lambda!68274))))))

(declare-fun b!1685142 () Bool)

(declare-fun isEmptyLang!82 (Regex!4579) Bool)

(assert (=> b!1685142 (= e!1078878 (isEmptyLang!82 lt!639480))))

(declare-fun b!1685143 () Bool)

(assert (=> b!1685143 (= e!1078879 (Union!4579 (h!23872 (map!3801 rules!1846 lambda!68274)) (generalisedUnion!304 (t!154560 (map!3801 rules!1846 lambda!68274)))))))

(assert (= (and d!512954 res!755454) b!1685136))

(assert (= (and d!512954 c!275179) b!1685139))

(assert (= (and d!512954 (not c!275179)) b!1685137))

(assert (= (and b!1685137 c!275182) b!1685143))

(assert (= (and b!1685137 (not c!275182)) b!1685135))

(assert (= (and d!512954 res!755455) b!1685134))

(assert (= (and b!1685134 c!275181) b!1685142))

(assert (= (and b!1685134 (not c!275181)) b!1685141))

(assert (= (and b!1685141 c!275180) b!1685140))

(assert (= (and b!1685141 (not c!275180)) b!1685138))

(declare-fun m!2066907 () Bool)

(assert (=> b!1685136 m!2066907))

(declare-fun m!2066909 () Bool)

(assert (=> b!1685142 m!2066909))

(declare-fun m!2066911 () Bool)

(assert (=> b!1685143 m!2066911))

(assert (=> b!1685141 m!2064681))

(declare-fun m!2066913 () Bool)

(assert (=> b!1685141 m!2066913))

(assert (=> b!1685141 m!2066913))

(declare-fun m!2066915 () Bool)

(assert (=> b!1685141 m!2066915))

(declare-fun m!2066917 () Bool)

(assert (=> d!512954 m!2066917))

(assert (=> d!512954 m!2064681))

(declare-fun m!2066919 () Bool)

(assert (=> d!512954 m!2066919))

(declare-fun m!2066921 () Bool)

(assert (=> b!1685138 m!2066921))

(assert (=> b!1685140 m!2064681))

(declare-fun m!2066923 () Bool)

(assert (=> b!1685140 m!2066923))

(assert (=> b!1685134 m!2064681))

(declare-fun m!2066925 () Bool)

(assert (=> b!1685134 m!2066925))

(assert (=> d!512348 d!512954))

(declare-fun d!512966 () Bool)

(declare-fun lt!639486 () List!18541)

(declare-fun size!14713 (List!18541) Int)

(declare-fun size!14714 (List!18536) Int)

(assert (=> d!512966 (= (size!14713 lt!639486) (size!14714 rules!1846))))

(declare-fun e!1078885 () List!18541)

(assert (=> d!512966 (= lt!639486 e!1078885)))

(declare-fun c!275185 () Bool)

(assert (=> d!512966 (= c!275185 ((_ is Nil!18466) rules!1846))))

(assert (=> d!512966 (= (map!3801 rules!1846 lambda!68274) lt!639486)))

(declare-fun b!1685149 () Bool)

(assert (=> b!1685149 (= e!1078885 Nil!18471)))

(declare-fun b!1685150 () Bool)

(declare-fun $colon$colon!405 (List!18541 Regex!4579) List!18541)

(declare-fun dynLambda!8374 (Int Rule!6302) Regex!4579)

(assert (=> b!1685150 (= e!1078885 ($colon$colon!405 (map!3801 (t!154513 rules!1846) lambda!68274) (dynLambda!8374 lambda!68274 (h!23867 rules!1846))))))

(assert (= (and d!512966 c!275185) b!1685149))

(assert (= (and d!512966 (not c!275185)) b!1685150))

(declare-fun b_lambda!53001 () Bool)

(assert (=> (not b_lambda!53001) (not b!1685150)))

(declare-fun m!2066975 () Bool)

(assert (=> d!512966 m!2066975))

(declare-fun m!2066977 () Bool)

(assert (=> d!512966 m!2066977))

(declare-fun m!2066979 () Bool)

(assert (=> b!1685150 m!2066979))

(declare-fun m!2066981 () Bool)

(assert (=> b!1685150 m!2066981))

(assert (=> b!1685150 m!2066979))

(assert (=> b!1685150 m!2066981))

(declare-fun m!2066983 () Bool)

(assert (=> b!1685150 m!2066983))

(assert (=> d!512348 d!512966))

(assert (=> b!1683682 d!512226))

(assert (=> b!1683682 d!512164))

(assert (=> b!1683682 d!512556))

(declare-fun d!512986 () Bool)

(assert (=> d!512986 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 tokens!457))))

(declare-fun lt!639552 () Unit!31713)

(declare-fun choose!10184 (LexerInterface!2880 List!18536 List!18535 Token!6068) Unit!31713)

(assert (=> d!512986 (= lt!639552 (choose!10184 thiss!17113 rules!1846 tokens!457 (h!23866 tokens!457)))))

(assert (=> d!512986 (not (isEmpty!11537 rules!1846))))

(assert (=> d!512986 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!640 thiss!17113 rules!1846 tokens!457 (h!23866 tokens!457)) lt!639552)))

(declare-fun bs!399512 () Bool)

(assert (= bs!399512 d!512986))

(assert (=> bs!399512 m!2063527))

(declare-fun m!2067251 () Bool)

(assert (=> bs!399512 m!2067251))

(assert (=> bs!399512 m!2063505))

(assert (=> b!1683682 d!512986))

(assert (=> b!1683682 d!512350))

(declare-fun d!513022 () Bool)

(declare-fun lt!639553 () Bool)

(declare-fun e!1078906 () Bool)

(assert (=> d!513022 (= lt!639553 e!1078906)))

(declare-fun res!755480 () Bool)

(assert (=> d!513022 (=> (not res!755480) (not e!1078906))))

(assert (=> d!513022 (= res!755480 (= (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))))))) (list!7416 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))))))))

(declare-fun e!1078905 () Bool)

(assert (=> d!513022 (= lt!639553 e!1078905)))

(declare-fun res!755478 () Bool)

(assert (=> d!513022 (=> (not res!755478) (not e!1078905))))

(declare-fun lt!639554 () tuple2!18198)

(assert (=> d!513022 (= res!755478 (= (size!14704 (_1!10501 lt!639554)) 1))))

(assert (=> d!513022 (= lt!639554 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!513022 (not (isEmpty!11537 rules!1846))))

(assert (=> d!513022 (= (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (t!154512 tokens!457))) lt!639553)))

(declare-fun b!1685185 () Bool)

(declare-fun res!755479 () Bool)

(assert (=> b!1685185 (=> (not res!755479) (not e!1078905))))

(assert (=> b!1685185 (= res!755479 (= (apply!5022 (_1!10501 lt!639554) 0) (h!23866 (t!154512 tokens!457))))))

(declare-fun b!1685186 () Bool)

(assert (=> b!1685186 (= e!1078905 (isEmpty!11549 (_2!10501 lt!639554)))))

(declare-fun b!1685187 () Bool)

(assert (=> b!1685187 (= e!1078906 (isEmpty!11549 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))))))))))

(assert (= (and d!513022 res!755478) b!1685185))

(assert (= (and b!1685185 res!755479) b!1685186))

(assert (= (and d!513022 res!755480) b!1685187))

(assert (=> d!513022 m!2063505))

(assert (=> d!513022 m!2064133))

(assert (=> d!513022 m!2064167))

(assert (=> d!513022 m!2064133))

(declare-fun m!2067253 () Bool)

(assert (=> d!513022 m!2067253))

(assert (=> d!513022 m!2064133))

(declare-fun m!2067255 () Bool)

(assert (=> d!513022 m!2067255))

(declare-fun m!2067257 () Bool)

(assert (=> d!513022 m!2067257))

(assert (=> d!513022 m!2064167))

(declare-fun m!2067259 () Bool)

(assert (=> d!513022 m!2067259))

(declare-fun m!2067261 () Bool)

(assert (=> b!1685185 m!2067261))

(declare-fun m!2067263 () Bool)

(assert (=> b!1685186 m!2067263))

(assert (=> b!1685187 m!2064133))

(assert (=> b!1685187 m!2064133))

(assert (=> b!1685187 m!2064167))

(assert (=> b!1685187 m!2064167))

(assert (=> b!1685187 m!2067259))

(declare-fun m!2067265 () Bool)

(assert (=> b!1685187 m!2067265))

(assert (=> b!1683682 d!513022))

(declare-fun d!513024 () Bool)

(assert (=> d!513024 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (t!154512 tokens!457)))))

(declare-fun lt!639555 () Unit!31713)

(assert (=> d!513024 (= lt!639555 (choose!10184 thiss!17113 rules!1846 tokens!457 (h!23866 (t!154512 tokens!457))))))

(assert (=> d!513024 (not (isEmpty!11537 rules!1846))))

(assert (=> d!513024 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!640 thiss!17113 rules!1846 tokens!457 (h!23866 (t!154512 tokens!457))) lt!639555)))

(declare-fun bs!399513 () Bool)

(assert (= bs!399513 d!513024))

(assert (=> bs!399513 m!2064301))

(declare-fun m!2067267 () Bool)

(assert (=> bs!399513 m!2067267))

(assert (=> bs!399513 m!2063505))

(assert (=> b!1683682 d!513024))

(declare-fun d!513026 () Bool)

(assert (=> d!513026 (= (isEmpty!11548 (maxPrefixOneRule!843 thiss!17113 (rule!5151 lt!638731) lt!638742)) (not ((_ is Some!3557) (maxPrefixOneRule!843 thiss!17113 (rule!5151 lt!638731) lt!638742))))))

(assert (=> b!1683864 d!513026))

(declare-fun d!513028 () Bool)

(assert (=> d!513028 (not (matchR!2070 (regex!3251 (rule!5151 lt!638731)) lt!638744))))

(declare-fun lt!639558 () Unit!31713)

(declare-fun choose!10185 (LexerInterface!2880 Rule!6302 List!18533 List!18533) Unit!31713)

(assert (=> d!513028 (= lt!639558 (choose!10185 thiss!17113 (rule!5151 lt!638731) lt!638744 (++!5051 lt!638185 lt!638165)))))

(assert (=> d!513028 (isPrefix!1509 lt!638744 (++!5051 lt!638185 lt!638165))))

(assert (=> d!513028 (= (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!233 thiss!17113 (rule!5151 lt!638731) lt!638744 (++!5051 lt!638185 lt!638165)) lt!639558)))

(declare-fun bs!399514 () Bool)

(assert (= bs!399514 d!513028))

(assert (=> bs!399514 m!2064595))

(assert (=> bs!399514 m!2063469))

(declare-fun m!2067269 () Bool)

(assert (=> bs!399514 m!2067269))

(assert (=> bs!399514 m!2063469))

(declare-fun m!2067271 () Bool)

(assert (=> bs!399514 m!2067271))

(assert (=> b!1683864 d!513028))

(assert (=> b!1683864 d!512254))

(declare-fun d!513030 () Bool)

(assert (=> d!513030 (isEmpty!11548 (maxPrefixOneRule!843 thiss!17113 (rule!5151 lt!638731) lt!638742))))

(declare-fun lt!639561 () Unit!31713)

(declare-fun choose!10186 (LexerInterface!2880 Rule!6302 List!18536 List!18533) Unit!31713)

(assert (=> d!513030 (= lt!639561 (choose!10186 thiss!17113 (rule!5151 lt!638731) rules!1846 lt!638742))))

(assert (=> d!513030 (not (isEmpty!11537 rules!1846))))

(assert (=> d!513030 (= (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!237 thiss!17113 (rule!5151 lt!638731) rules!1846 lt!638742) lt!639561)))

(declare-fun bs!399515 () Bool)

(assert (= bs!399515 d!513030))

(assert (=> bs!399515 m!2064591))

(assert (=> bs!399515 m!2064591))

(assert (=> bs!399515 m!2064593))

(declare-fun m!2067273 () Bool)

(assert (=> bs!399515 m!2067273))

(assert (=> bs!399515 m!2063505))

(assert (=> b!1683864 d!513030))

(assert (=> b!1683864 d!512512))

(declare-fun b!1685206 () Bool)

(declare-fun res!755500 () Bool)

(declare-fun e!1078916 () Bool)

(assert (=> b!1685206 (=> (not res!755500) (not e!1078916))))

(declare-fun lt!639574 () Option!3558)

(assert (=> b!1685206 (= res!755500 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639574)))) (_2!10502 (get!5414 lt!639574))) lt!638742))))

(declare-fun d!513032 () Bool)

(declare-fun e!1078915 () Bool)

(assert (=> d!513032 e!1078915))

(declare-fun res!755495 () Bool)

(assert (=> d!513032 (=> res!755495 e!1078915)))

(assert (=> d!513032 (= res!755495 (isEmpty!11548 lt!639574))))

(declare-fun e!1078918 () Option!3558)

(assert (=> d!513032 (= lt!639574 e!1078918)))

(declare-fun c!275194 () Bool)

(declare-datatypes ((tuple2!18210 0))(
  ( (tuple2!18211 (_1!10507 List!18533) (_2!10507 List!18533)) )
))
(declare-fun lt!639576 () tuple2!18210)

(assert (=> d!513032 (= c!275194 (isEmpty!11547 (_1!10507 lt!639576)))))

(declare-fun findLongestMatch!302 (Regex!4579 List!18533) tuple2!18210)

(assert (=> d!513032 (= lt!639576 (findLongestMatch!302 (regex!3251 (rule!5151 lt!638731)) lt!638742))))

(assert (=> d!513032 (ruleValid!767 thiss!17113 (rule!5151 lt!638731))))

(assert (=> d!513032 (= (maxPrefixOneRule!843 thiss!17113 (rule!5151 lt!638731) lt!638742) lt!639574)))

(declare-fun b!1685207 () Bool)

(declare-fun res!755496 () Bool)

(assert (=> b!1685207 (=> (not res!755496) (not e!1078916))))

(assert (=> b!1685207 (= res!755496 (= (value!102326 (_1!10502 (get!5414 lt!639574))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!639574)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!639574)))))))))

(declare-fun b!1685208 () Bool)

(declare-fun e!1078917 () Bool)

(declare-fun findLongestMatchInner!375 (Regex!4579 List!18533 Int List!18533 List!18533 Int) tuple2!18210)

(assert (=> b!1685208 (= e!1078917 (matchR!2070 (regex!3251 (rule!5151 lt!638731)) (_1!10507 (findLongestMatchInner!375 (regex!3251 (rule!5151 lt!638731)) Nil!18463 (size!14706 Nil!18463) lt!638742 lt!638742 (size!14706 lt!638742)))))))

(declare-fun b!1685209 () Bool)

(assert (=> b!1685209 (= e!1078918 (Some!3557 (tuple2!18201 (Token!6069 (apply!5021 (transformation!3251 (rule!5151 lt!638731)) (seqFromList!2240 (_1!10507 lt!639576))) (rule!5151 lt!638731) (size!14705 (seqFromList!2240 (_1!10507 lt!639576))) (_1!10507 lt!639576)) (_2!10507 lt!639576))))))

(declare-fun lt!639572 () Unit!31713)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!359 (Regex!4579 List!18533) Unit!31713)

(assert (=> b!1685209 (= lt!639572 (longestMatchIsAcceptedByMatchOrIsEmpty!359 (regex!3251 (rule!5151 lt!638731)) lt!638742))))

(declare-fun res!755499 () Bool)

(assert (=> b!1685209 (= res!755499 (isEmpty!11547 (_1!10507 (findLongestMatchInner!375 (regex!3251 (rule!5151 lt!638731)) Nil!18463 (size!14706 Nil!18463) lt!638742 lt!638742 (size!14706 lt!638742)))))))

(assert (=> b!1685209 (=> res!755499 e!1078917)))

(assert (=> b!1685209 e!1078917))

(declare-fun lt!639573 () Unit!31713)

(assert (=> b!1685209 (= lt!639573 lt!639572)))

(declare-fun lt!639575 () Unit!31713)

(declare-fun lemmaSemiInverse!441 (TokenValueInjection!6342 BalanceConc!12244) Unit!31713)

(assert (=> b!1685209 (= lt!639575 (lemmaSemiInverse!441 (transformation!3251 (rule!5151 lt!638731)) (seqFromList!2240 (_1!10507 lt!639576))))))

(declare-fun b!1685210 () Bool)

(declare-fun res!755501 () Bool)

(assert (=> b!1685210 (=> (not res!755501) (not e!1078916))))

(assert (=> b!1685210 (= res!755501 (= (rule!5151 (_1!10502 (get!5414 lt!639574))) (rule!5151 lt!638731)))))

(declare-fun b!1685211 () Bool)

(assert (=> b!1685211 (= e!1078918 None!3557)))

(declare-fun b!1685212 () Bool)

(assert (=> b!1685212 (= e!1078916 (= (size!14700 (_1!10502 (get!5414 lt!639574))) (size!14706 (originalCharacters!4065 (_1!10502 (get!5414 lt!639574))))))))

(declare-fun b!1685213 () Bool)

(declare-fun res!755498 () Bool)

(assert (=> b!1685213 (=> (not res!755498) (not e!1078916))))

(assert (=> b!1685213 (= res!755498 (< (size!14706 (_2!10502 (get!5414 lt!639574))) (size!14706 lt!638742)))))

(declare-fun b!1685214 () Bool)

(assert (=> b!1685214 (= e!1078915 e!1078916)))

(declare-fun res!755497 () Bool)

(assert (=> b!1685214 (=> (not res!755497) (not e!1078916))))

(assert (=> b!1685214 (= res!755497 (matchR!2070 (regex!3251 (rule!5151 lt!638731)) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639574))))))))

(assert (= (and d!513032 c!275194) b!1685211))

(assert (= (and d!513032 (not c!275194)) b!1685209))

(assert (= (and b!1685209 (not res!755499)) b!1685208))

(assert (= (and d!513032 (not res!755495)) b!1685214))

(assert (= (and b!1685214 res!755497) b!1685206))

(assert (= (and b!1685206 res!755500) b!1685213))

(assert (= (and b!1685213 res!755498) b!1685210))

(assert (= (and b!1685210 res!755501) b!1685207))

(assert (= (and b!1685207 res!755496) b!1685212))

(declare-fun m!2067275 () Bool)

(assert (=> b!1685212 m!2067275))

(declare-fun m!2067277 () Bool)

(assert (=> b!1685212 m!2067277))

(declare-fun m!2067279 () Bool)

(assert (=> b!1685208 m!2067279))

(declare-fun m!2067281 () Bool)

(assert (=> b!1685208 m!2067281))

(assert (=> b!1685208 m!2067279))

(assert (=> b!1685208 m!2067281))

(declare-fun m!2067283 () Bool)

(assert (=> b!1685208 m!2067283))

(declare-fun m!2067285 () Bool)

(assert (=> b!1685208 m!2067285))

(assert (=> b!1685207 m!2067275))

(declare-fun m!2067287 () Bool)

(assert (=> b!1685207 m!2067287))

(assert (=> b!1685207 m!2067287))

(declare-fun m!2067289 () Bool)

(assert (=> b!1685207 m!2067289))

(assert (=> b!1685206 m!2067275))

(declare-fun m!2067291 () Bool)

(assert (=> b!1685206 m!2067291))

(assert (=> b!1685206 m!2067291))

(declare-fun m!2067293 () Bool)

(assert (=> b!1685206 m!2067293))

(assert (=> b!1685206 m!2067293))

(declare-fun m!2067295 () Bool)

(assert (=> b!1685206 m!2067295))

(declare-fun m!2067297 () Bool)

(assert (=> d!513032 m!2067297))

(declare-fun m!2067299 () Bool)

(assert (=> d!513032 m!2067299))

(declare-fun m!2067301 () Bool)

(assert (=> d!513032 m!2067301))

(declare-fun m!2067303 () Bool)

(assert (=> d!513032 m!2067303))

(declare-fun m!2067305 () Bool)

(assert (=> b!1685209 m!2067305))

(assert (=> b!1685209 m!2067305))

(declare-fun m!2067307 () Bool)

(assert (=> b!1685209 m!2067307))

(assert (=> b!1685209 m!2067279))

(declare-fun m!2067309 () Bool)

(assert (=> b!1685209 m!2067309))

(declare-fun m!2067311 () Bool)

(assert (=> b!1685209 m!2067311))

(assert (=> b!1685209 m!2067305))

(declare-fun m!2067313 () Bool)

(assert (=> b!1685209 m!2067313))

(assert (=> b!1685209 m!2067281))

(assert (=> b!1685209 m!2067279))

(assert (=> b!1685209 m!2067281))

(assert (=> b!1685209 m!2067283))

(assert (=> b!1685209 m!2067305))

(declare-fun m!2067315 () Bool)

(assert (=> b!1685209 m!2067315))

(assert (=> b!1685213 m!2067275))

(declare-fun m!2067317 () Bool)

(assert (=> b!1685213 m!2067317))

(assert (=> b!1685213 m!2067281))

(assert (=> b!1685214 m!2067275))

(assert (=> b!1685214 m!2067291))

(assert (=> b!1685214 m!2067291))

(assert (=> b!1685214 m!2067293))

(assert (=> b!1685214 m!2067293))

(declare-fun m!2067319 () Bool)

(assert (=> b!1685214 m!2067319))

(assert (=> b!1685210 m!2067275))

(assert (=> b!1683864 d!513032))

(assert (=> b!1683864 d!512544))

(declare-fun b!1685215 () Bool)

(declare-fun res!755502 () Bool)

(declare-fun e!1078924 () Bool)

(assert (=> b!1685215 (=> res!755502 e!1078924)))

(assert (=> b!1685215 (= res!755502 (not (isEmpty!11547 (tail!2512 lt!638744))))))

(declare-fun b!1685216 () Bool)

(declare-fun e!1078921 () Bool)

(assert (=> b!1685216 (= e!1078921 (matchR!2070 (derivativeStep!1138 (regex!3251 (rule!5151 lt!638731)) (head!3766 lt!638744)) (tail!2512 lt!638744)))))

(declare-fun b!1685217 () Bool)

(declare-fun res!755503 () Bool)

(declare-fun e!1078925 () Bool)

(assert (=> b!1685217 (=> (not res!755503) (not e!1078925))))

(assert (=> b!1685217 (= res!755503 (isEmpty!11547 (tail!2512 lt!638744)))))

(declare-fun b!1685218 () Bool)

(declare-fun e!1078922 () Bool)

(declare-fun e!1078920 () Bool)

(assert (=> b!1685218 (= e!1078922 e!1078920)))

(declare-fun c!275197 () Bool)

(assert (=> b!1685218 (= c!275197 ((_ is EmptyLang!4579) (regex!3251 (rule!5151 lt!638731))))))

(declare-fun b!1685219 () Bool)

(assert (=> b!1685219 (= e!1078921 (nullable!1367 (regex!3251 (rule!5151 lt!638731))))))

(declare-fun b!1685220 () Bool)

(assert (=> b!1685220 (= e!1078925 (= (head!3766 lt!638744) (c!274780 (regex!3251 (rule!5151 lt!638731)))))))

(declare-fun b!1685221 () Bool)

(declare-fun e!1078919 () Bool)

(declare-fun e!1078923 () Bool)

(assert (=> b!1685221 (= e!1078919 e!1078923)))

(declare-fun res!755505 () Bool)

(assert (=> b!1685221 (=> (not res!755505) (not e!1078923))))

(declare-fun lt!639577 () Bool)

(assert (=> b!1685221 (= res!755505 (not lt!639577))))

(declare-fun b!1685222 () Bool)

(declare-fun res!755508 () Bool)

(assert (=> b!1685222 (=> res!755508 e!1078919)))

(assert (=> b!1685222 (= res!755508 (not ((_ is ElementMatch!4579) (regex!3251 (rule!5151 lt!638731)))))))

(assert (=> b!1685222 (= e!1078920 e!1078919)))

(declare-fun b!1685224 () Bool)

(declare-fun call!107744 () Bool)

(assert (=> b!1685224 (= e!1078922 (= lt!639577 call!107744))))

(declare-fun b!1685225 () Bool)

(assert (=> b!1685225 (= e!1078920 (not lt!639577))))

(declare-fun b!1685226 () Bool)

(assert (=> b!1685226 (= e!1078923 e!1078924)))

(declare-fun res!755509 () Bool)

(assert (=> b!1685226 (=> res!755509 e!1078924)))

(assert (=> b!1685226 (= res!755509 call!107744)))

(declare-fun bm!107739 () Bool)

(assert (=> bm!107739 (= call!107744 (isEmpty!11547 lt!638744))))

(declare-fun b!1685227 () Bool)

(assert (=> b!1685227 (= e!1078924 (not (= (head!3766 lt!638744) (c!274780 (regex!3251 (rule!5151 lt!638731))))))))

(declare-fun b!1685228 () Bool)

(declare-fun res!755507 () Bool)

(assert (=> b!1685228 (=> res!755507 e!1078919)))

(assert (=> b!1685228 (= res!755507 e!1078925)))

(declare-fun res!755506 () Bool)

(assert (=> b!1685228 (=> (not res!755506) (not e!1078925))))

(assert (=> b!1685228 (= res!755506 lt!639577)))

(declare-fun b!1685223 () Bool)

(declare-fun res!755504 () Bool)

(assert (=> b!1685223 (=> (not res!755504) (not e!1078925))))

(assert (=> b!1685223 (= res!755504 (not call!107744))))

(declare-fun d!513034 () Bool)

(assert (=> d!513034 e!1078922))

(declare-fun c!275196 () Bool)

(assert (=> d!513034 (= c!275196 ((_ is EmptyExpr!4579) (regex!3251 (rule!5151 lt!638731))))))

(assert (=> d!513034 (= lt!639577 e!1078921)))

(declare-fun c!275195 () Bool)

(assert (=> d!513034 (= c!275195 (isEmpty!11547 lt!638744))))

(assert (=> d!513034 (validRegex!1840 (regex!3251 (rule!5151 lt!638731)))))

(assert (=> d!513034 (= (matchR!2070 (regex!3251 (rule!5151 lt!638731)) lt!638744) lt!639577)))

(assert (= (and d!513034 c!275195) b!1685219))

(assert (= (and d!513034 (not c!275195)) b!1685216))

(assert (= (and d!513034 c!275196) b!1685224))

(assert (= (and d!513034 (not c!275196)) b!1685218))

(assert (= (and b!1685218 c!275197) b!1685225))

(assert (= (and b!1685218 (not c!275197)) b!1685222))

(assert (= (and b!1685222 (not res!755508)) b!1685228))

(assert (= (and b!1685228 res!755506) b!1685223))

(assert (= (and b!1685223 res!755504) b!1685217))

(assert (= (and b!1685217 res!755503) b!1685220))

(assert (= (and b!1685228 (not res!755507)) b!1685221))

(assert (= (and b!1685221 res!755505) b!1685226))

(assert (= (and b!1685226 (not res!755509)) b!1685215))

(assert (= (and b!1685215 (not res!755502)) b!1685227))

(assert (= (or b!1685224 b!1685223 b!1685226) bm!107739))

(declare-fun m!2067321 () Bool)

(assert (=> d!513034 m!2067321))

(declare-fun m!2067323 () Bool)

(assert (=> d!513034 m!2067323))

(declare-fun m!2067325 () Bool)

(assert (=> b!1685219 m!2067325))

(declare-fun m!2067327 () Bool)

(assert (=> b!1685220 m!2067327))

(assert (=> b!1685227 m!2067327))

(declare-fun m!2067329 () Bool)

(assert (=> b!1685217 m!2067329))

(assert (=> b!1685217 m!2067329))

(declare-fun m!2067331 () Bool)

(assert (=> b!1685217 m!2067331))

(assert (=> bm!107739 m!2067321))

(assert (=> b!1685215 m!2067329))

(assert (=> b!1685215 m!2067329))

(assert (=> b!1685215 m!2067331))

(assert (=> b!1685216 m!2067327))

(assert (=> b!1685216 m!2067327))

(declare-fun m!2067333 () Bool)

(assert (=> b!1685216 m!2067333))

(assert (=> b!1685216 m!2067329))

(assert (=> b!1685216 m!2067333))

(assert (=> b!1685216 m!2067329))

(declare-fun m!2067335 () Bool)

(assert (=> b!1685216 m!2067335))

(assert (=> b!1683864 d!513034))

(declare-fun d!513036 () Bool)

(declare-fun lt!639578 () Int)

(assert (=> d!513036 (>= lt!639578 0)))

(declare-fun e!1078926 () Int)

(assert (=> d!513036 (= lt!639578 e!1078926)))

(declare-fun c!275198 () Bool)

(assert (=> d!513036 (= c!275198 ((_ is Nil!18463) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (=> d!513036 (= (size!14706 (originalCharacters!4065 (h!23866 tokens!457))) lt!639578)))

(declare-fun b!1685229 () Bool)

(assert (=> b!1685229 (= e!1078926 0)))

(declare-fun b!1685230 () Bool)

(assert (=> b!1685230 (= e!1078926 (+ 1 (size!14706 (t!154510 (originalCharacters!4065 (h!23866 tokens!457))))))))

(assert (= (and d!513036 c!275198) b!1685229))

(assert (= (and d!513036 (not c!275198)) b!1685230))

(declare-fun m!2067337 () Bool)

(assert (=> b!1685230 m!2067337))

(assert (=> b!1683519 d!513036))

(declare-fun b!1685232 () Bool)

(declare-fun e!1078927 () List!18535)

(declare-fun e!1078928 () List!18535)

(assert (=> b!1685232 (= e!1078927 e!1078928)))

(declare-fun c!275200 () Bool)

(assert (=> b!1685232 (= c!275200 ((_ is Leaf!8997) (c!274781 (_1!10501 lt!638177))))))

(declare-fun b!1685231 () Bool)

(assert (=> b!1685231 (= e!1078927 Nil!18465)))

(declare-fun d!513038 () Bool)

(declare-fun c!275199 () Bool)

(assert (=> d!513038 (= c!275199 ((_ is Empty!6151) (c!274781 (_1!10501 lt!638177))))))

(assert (=> d!513038 (= (list!7419 (c!274781 (_1!10501 lt!638177))) e!1078927)))

(declare-fun b!1685234 () Bool)

(assert (=> b!1685234 (= e!1078928 (++!5055 (list!7419 (left!14762 (c!274781 (_1!10501 lt!638177)))) (list!7419 (right!15092 (c!274781 (_1!10501 lt!638177))))))))

(declare-fun b!1685233 () Bool)

(assert (=> b!1685233 (= e!1078928 (list!7422 (xs!9007 (c!274781 (_1!10501 lt!638177)))))))

(assert (= (and d!513038 c!275199) b!1685231))

(assert (= (and d!513038 (not c!275199)) b!1685232))

(assert (= (and b!1685232 c!275200) b!1685233))

(assert (= (and b!1685232 (not c!275200)) b!1685234))

(declare-fun m!2067339 () Bool)

(assert (=> b!1685234 m!2067339))

(declare-fun m!2067341 () Bool)

(assert (=> b!1685234 m!2067341))

(assert (=> b!1685234 m!2067339))

(assert (=> b!1685234 m!2067341))

(declare-fun m!2067343 () Bool)

(assert (=> b!1685234 m!2067343))

(declare-fun m!2067345 () Bool)

(assert (=> b!1685233 m!2067345))

(assert (=> d!512230 d!513038))

(declare-fun d!513040 () Bool)

(assert (=> d!513040 (= (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))) (isBalanced!1926 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun bs!399516 () Bool)

(assert (= bs!399516 d!513040))

(declare-fun m!2067347 () Bool)

(assert (=> bs!399516 m!2067347))

(assert (=> tb!97619 d!513040))

(declare-fun d!513042 () Bool)

(declare-fun lt!639579 () Int)

(assert (=> d!513042 (= lt!639579 (size!14706 (list!7415 (_2!10501 lt!638520))))))

(assert (=> d!513042 (= lt!639579 (size!14709 (c!274779 (_2!10501 lt!638520))))))

(assert (=> d!513042 (= (size!14705 (_2!10501 lt!638520)) lt!639579)))

(declare-fun bs!399517 () Bool)

(assert (= bs!399517 d!513042))

(assert (=> bs!399517 m!2064215))

(assert (=> bs!399517 m!2064215))

(declare-fun m!2067349 () Bool)

(assert (=> bs!399517 m!2067349))

(declare-fun m!2067351 () Bool)

(assert (=> bs!399517 m!2067351))

(assert (=> b!1683657 d!513042))

(declare-fun d!513044 () Bool)

(declare-fun lt!639580 () Int)

(assert (=> d!513044 (= lt!639580 (size!14706 (list!7415 lt!638174)))))

(assert (=> d!513044 (= lt!639580 (size!14709 (c!274779 lt!638174)))))

(assert (=> d!513044 (= (size!14705 lt!638174) lt!639580)))

(declare-fun bs!399518 () Bool)

(assert (= bs!399518 d!513044))

(assert (=> bs!399518 m!2063487))

(assert (=> bs!399518 m!2063487))

(assert (=> bs!399518 m!2066171))

(declare-fun m!2067353 () Bool)

(assert (=> bs!399518 m!2067353))

(assert (=> b!1683657 d!513044))

(declare-fun d!513046 () Bool)

(assert (=> d!513046 (= (isDefined!2908 lt!638279) (not (isEmpty!11546 lt!638279)))))

(declare-fun bs!399519 () Bool)

(assert (= bs!399519 d!513046))

(declare-fun m!2067355 () Bool)

(assert (=> bs!399519 m!2067355))

(assert (=> b!1683489 d!513046))

(assert (=> b!1683879 d!512774))

(declare-fun d!513048 () Bool)

(assert (=> d!513048 (= (height!983 (c!274779 lt!638184)) (ite ((_ is Empty!6150) (c!274779 lt!638184)) 0 (ite ((_ is Leaf!8996) (c!274779 lt!638184)) 1 (cheight!6361 (c!274779 lt!638184)))))))

(assert (=> b!1683879 d!513048))

(declare-fun d!513050 () Bool)

(assert (=> d!513050 (= (height!983 (c!274779 lt!638169)) (ite ((_ is Empty!6150) (c!274779 lt!638169)) 0 (ite ((_ is Leaf!8996) (c!274779 lt!638169)) 1 (cheight!6361 (c!274779 lt!638169)))))))

(assert (=> b!1683879 d!513050))

(declare-fun d!513052 () Bool)

(assert (=> d!513052 (= (max!0 (height!983 (c!274779 lt!638184)) (height!983 (c!274779 lt!638169))) (ite (< (height!983 (c!274779 lt!638184)) (height!983 (c!274779 lt!638169))) (height!983 (c!274779 lt!638169)) (height!983 (c!274779 lt!638184))))))

(assert (=> b!1683879 d!513052))

(declare-fun d!513054 () Bool)

(assert (=> d!513054 (= (height!983 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))) (ite ((_ is Empty!6150) (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))) 0 (ite ((_ is Leaf!8996) (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))) 1 (cheight!6361 (++!5054 (c!274779 lt!638184) (c!274779 lt!638169))))))))

(assert (=> b!1683879 d!513054))

(assert (=> b!1683485 d!512732))

(assert (=> b!1683485 d!512748))

(assert (=> b!1683485 d!512746))

(assert (=> b!1683485 d!512588))

(assert (=> b!1683485 d!512582))

(declare-fun b!1685235 () Bool)

(declare-fun res!755510 () Bool)

(declare-fun e!1078930 () Bool)

(assert (=> b!1685235 (=> (not res!755510) (not e!1078930))))

(declare-fun lt!639581 () Option!3558)

(assert (=> b!1685235 (= res!755510 (< (size!14706 (_2!10502 (get!5414 lt!639581))) (size!14706 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun d!513056 () Bool)

(declare-fun e!1078929 () Bool)

(assert (=> d!513056 e!1078929))

(declare-fun res!755514 () Bool)

(assert (=> d!513056 (=> res!755514 e!1078929)))

(assert (=> d!513056 (= res!755514 (isEmpty!11548 lt!639581))))

(declare-fun e!1078931 () Option!3558)

(assert (=> d!513056 (= lt!639581 e!1078931)))

(declare-fun c!275201 () Bool)

(assert (=> d!513056 (= c!275201 (and ((_ is Cons!18466) (t!154513 rules!1846)) ((_ is Nil!18466) (t!154513 (t!154513 rules!1846)))))))

(declare-fun lt!639582 () Unit!31713)

(declare-fun lt!639584 () Unit!31713)

(assert (=> d!513056 (= lt!639582 lt!639584)))

(assert (=> d!513056 (isPrefix!1509 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457)))))

(assert (=> d!513056 (= lt!639584 (lemmaIsPrefixRefl!1028 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (=> d!513056 (rulesValidInductive!1050 thiss!17113 (t!154513 rules!1846))))

(assert (=> d!513056 (= (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (originalCharacters!4065 (h!23866 tokens!457))) lt!639581)))

(declare-fun bm!107740 () Bool)

(declare-fun call!107745 () Option!3558)

(assert (=> bm!107740 (= call!107745 (maxPrefixOneRule!843 thiss!17113 (h!23867 (t!154513 rules!1846)) (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun b!1685236 () Bool)

(assert (=> b!1685236 (= e!1078930 (contains!3242 (t!154513 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!639581)))))))

(declare-fun b!1685237 () Bool)

(assert (=> b!1685237 (= e!1078931 call!107745)))

(declare-fun b!1685238 () Bool)

(declare-fun res!755513 () Bool)

(assert (=> b!1685238 (=> (not res!755513) (not e!1078930))))

(assert (=> b!1685238 (= res!755513 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639581)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!639581)))))))

(declare-fun b!1685239 () Bool)

(assert (=> b!1685239 (= e!1078929 e!1078930)))

(declare-fun res!755511 () Bool)

(assert (=> b!1685239 (=> (not res!755511) (not e!1078930))))

(assert (=> b!1685239 (= res!755511 (isDefined!2907 lt!639581))))

(declare-fun b!1685240 () Bool)

(declare-fun res!755515 () Bool)

(assert (=> b!1685240 (=> (not res!755515) (not e!1078930))))

(assert (=> b!1685240 (= res!755515 (= (value!102326 (_1!10502 (get!5414 lt!639581))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!639581)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!639581)))))))))

(declare-fun b!1685241 () Bool)

(declare-fun res!755512 () Bool)

(assert (=> b!1685241 (=> (not res!755512) (not e!1078930))))

(assert (=> b!1685241 (= res!755512 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!639581)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639581))))))))

(declare-fun b!1685242 () Bool)

(declare-fun res!755516 () Bool)

(assert (=> b!1685242 (=> (not res!755516) (not e!1078930))))

(assert (=> b!1685242 (= res!755516 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639581)))) (_2!10502 (get!5414 lt!639581))) (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun b!1685243 () Bool)

(declare-fun lt!639585 () Option!3558)

(declare-fun lt!639583 () Option!3558)

(assert (=> b!1685243 (= e!1078931 (ite (and ((_ is None!3557) lt!639585) ((_ is None!3557) lt!639583)) None!3557 (ite ((_ is None!3557) lt!639583) lt!639585 (ite ((_ is None!3557) lt!639585) lt!639583 (ite (>= (size!14700 (_1!10502 (v!24868 lt!639585))) (size!14700 (_1!10502 (v!24868 lt!639583)))) lt!639585 lt!639583)))))))

(assert (=> b!1685243 (= lt!639585 call!107745)))

(assert (=> b!1685243 (= lt!639583 (maxPrefix!1440 thiss!17113 (t!154513 (t!154513 rules!1846)) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (= (and d!513056 c!275201) b!1685237))

(assert (= (and d!513056 (not c!275201)) b!1685243))

(assert (= (or b!1685237 b!1685243) bm!107740))

(assert (= (and d!513056 (not res!755514)) b!1685239))

(assert (= (and b!1685239 res!755511) b!1685238))

(assert (= (and b!1685238 res!755513) b!1685235))

(assert (= (and b!1685235 res!755510) b!1685242))

(assert (= (and b!1685242 res!755516) b!1685240))

(assert (= (and b!1685240 res!755515) b!1685241))

(assert (= (and b!1685241 res!755512) b!1685236))

(declare-fun m!2067357 () Bool)

(assert (=> b!1685240 m!2067357))

(declare-fun m!2067359 () Bool)

(assert (=> b!1685240 m!2067359))

(assert (=> b!1685240 m!2067359))

(declare-fun m!2067361 () Bool)

(assert (=> b!1685240 m!2067361))

(assert (=> b!1685238 m!2067357))

(declare-fun m!2067363 () Bool)

(assert (=> b!1685238 m!2067363))

(assert (=> b!1685238 m!2067363))

(declare-fun m!2067365 () Bool)

(assert (=> b!1685238 m!2067365))

(assert (=> b!1685242 m!2067357))

(assert (=> b!1685242 m!2067363))

(assert (=> b!1685242 m!2067363))

(assert (=> b!1685242 m!2067365))

(assert (=> b!1685242 m!2067365))

(declare-fun m!2067367 () Bool)

(assert (=> b!1685242 m!2067367))

(declare-fun m!2067369 () Bool)

(assert (=> bm!107740 m!2067369))

(assert (=> b!1685236 m!2067357))

(declare-fun m!2067371 () Bool)

(assert (=> b!1685236 m!2067371))

(assert (=> b!1685241 m!2067357))

(assert (=> b!1685241 m!2067363))

(assert (=> b!1685241 m!2067363))

(assert (=> b!1685241 m!2067365))

(assert (=> b!1685241 m!2067365))

(declare-fun m!2067373 () Bool)

(assert (=> b!1685241 m!2067373))

(declare-fun m!2067375 () Bool)

(assert (=> d!513056 m!2067375))

(assert (=> d!513056 m!2063875))

(assert (=> d!513056 m!2063877))

(assert (=> d!513056 m!2066519))

(declare-fun m!2067377 () Bool)

(assert (=> b!1685243 m!2067377))

(declare-fun m!2067379 () Bool)

(assert (=> b!1685239 m!2067379))

(assert (=> b!1685235 m!2067357))

(declare-fun m!2067381 () Bool)

(assert (=> b!1685235 m!2067381))

(assert (=> b!1685235 m!2063851))

(assert (=> b!1683567 d!513056))

(declare-fun d!513058 () Bool)

(assert (=> d!513058 (= (list!7415 lt!638524) (list!7420 (c!274779 lt!638524)))))

(declare-fun bs!399520 () Bool)

(assert (= bs!399520 d!513058))

(declare-fun m!2067383 () Bool)

(assert (=> bs!399520 m!2067383))

(assert (=> d!512256 d!513058))

(declare-fun d!513060 () Bool)

(declare-fun e!1078932 () Bool)

(assert (=> d!513060 e!1078932))

(declare-fun res!755517 () Bool)

(assert (=> d!513060 (=> (not res!755517) (not e!1078932))))

(declare-fun lt!639586 () BalanceConc!12246)

(assert (=> d!513060 (= res!755517 (= (list!7416 lt!639586) tokens!457))))

(assert (=> d!513060 (= lt!639586 (BalanceConc!12247 (fromList!422 tokens!457)))))

(assert (=> d!513060 (= (fromListB!1027 tokens!457) lt!639586)))

(declare-fun b!1685244 () Bool)

(assert (=> b!1685244 (= e!1078932 (isBalanced!1924 (fromList!422 tokens!457)))))

(assert (= (and d!513060 res!755517) b!1685244))

(declare-fun m!2067385 () Bool)

(assert (=> d!513060 m!2067385))

(declare-fun m!2067387 () Bool)

(assert (=> d!513060 m!2067387))

(assert (=> b!1685244 m!2067387))

(assert (=> b!1685244 m!2067387))

(declare-fun m!2067389 () Bool)

(assert (=> b!1685244 m!2067389))

(assert (=> d!512260 d!513060))

(declare-fun b!1685245 () Bool)

(declare-fun e!1078933 () List!18533)

(assert (=> b!1685245 (= e!1078933 lt!638186)))

(declare-fun d!513062 () Bool)

(declare-fun e!1078934 () Bool)

(assert (=> d!513062 e!1078934))

(declare-fun res!755519 () Bool)

(assert (=> d!513062 (=> (not res!755519) (not e!1078934))))

(declare-fun lt!639587 () List!18533)

(assert (=> d!513062 (= res!755519 (= (content!2597 lt!639587) ((_ map or) (content!2597 (t!154510 lt!638185)) (content!2597 lt!638186))))))

(assert (=> d!513062 (= lt!639587 e!1078933)))

(declare-fun c!275202 () Bool)

(assert (=> d!513062 (= c!275202 ((_ is Nil!18463) (t!154510 lt!638185)))))

(assert (=> d!513062 (= (++!5051 (t!154510 lt!638185) lt!638186) lt!639587)))

(declare-fun b!1685248 () Bool)

(assert (=> b!1685248 (= e!1078934 (or (not (= lt!638186 Nil!18463)) (= lt!639587 (t!154510 lt!638185))))))

(declare-fun b!1685247 () Bool)

(declare-fun res!755518 () Bool)

(assert (=> b!1685247 (=> (not res!755518) (not e!1078934))))

(assert (=> b!1685247 (= res!755518 (= (size!14706 lt!639587) (+ (size!14706 (t!154510 lt!638185)) (size!14706 lt!638186))))))

(declare-fun b!1685246 () Bool)

(assert (=> b!1685246 (= e!1078933 (Cons!18463 (h!23864 (t!154510 lt!638185)) (++!5051 (t!154510 (t!154510 lt!638185)) lt!638186)))))

(assert (= (and d!513062 c!275202) b!1685245))

(assert (= (and d!513062 (not c!275202)) b!1685246))

(assert (= (and d!513062 res!755519) b!1685247))

(assert (= (and b!1685247 res!755518) b!1685248))

(declare-fun m!2067391 () Bool)

(assert (=> d!513062 m!2067391))

(assert (=> d!513062 m!2065675))

(assert (=> d!513062 m!2063977))

(declare-fun m!2067393 () Bool)

(assert (=> b!1685247 m!2067393))

(assert (=> b!1685247 m!2065359))

(assert (=> b!1685247 m!2063983))

(declare-fun m!2067395 () Bool)

(assert (=> b!1685246 m!2067395))

(assert (=> b!1683600 d!513062))

(declare-fun d!513064 () Bool)

(declare-fun c!275203 () Bool)

(assert (=> d!513064 (= c!275203 (isEmpty!11547 (tail!2512 (++!5051 lt!638185 lt!638186))))))

(declare-fun e!1078935 () Bool)

(assert (=> d!513064 (= (prefixMatch!492 (derivativeStep!1138 lt!638178 (head!3766 (++!5051 lt!638185 lt!638186))) (tail!2512 (++!5051 lt!638185 lt!638186))) e!1078935)))

(declare-fun b!1685249 () Bool)

(assert (=> b!1685249 (= e!1078935 (not (lostCause!486 (derivativeStep!1138 lt!638178 (head!3766 (++!5051 lt!638185 lt!638186))))))))

(declare-fun b!1685250 () Bool)

(assert (=> b!1685250 (= e!1078935 (prefixMatch!492 (derivativeStep!1138 (derivativeStep!1138 lt!638178 (head!3766 (++!5051 lt!638185 lt!638186))) (head!3766 (tail!2512 (++!5051 lt!638185 lt!638186)))) (tail!2512 (tail!2512 (++!5051 lt!638185 lt!638186)))))))

(assert (= (and d!513064 c!275203) b!1685249))

(assert (= (and d!513064 (not c!275203)) b!1685250))

(assert (=> d!513064 m!2063945))

(declare-fun m!2067397 () Bool)

(assert (=> d!513064 m!2067397))

(assert (=> b!1685249 m!2063943))

(declare-fun m!2067399 () Bool)

(assert (=> b!1685249 m!2067399))

(assert (=> b!1685250 m!2063945))

(declare-fun m!2067401 () Bool)

(assert (=> b!1685250 m!2067401))

(assert (=> b!1685250 m!2063943))

(assert (=> b!1685250 m!2067401))

(declare-fun m!2067403 () Bool)

(assert (=> b!1685250 m!2067403))

(assert (=> b!1685250 m!2063945))

(declare-fun m!2067405 () Bool)

(assert (=> b!1685250 m!2067405))

(assert (=> b!1685250 m!2067403))

(assert (=> b!1685250 m!2067405))

(declare-fun m!2067407 () Bool)

(assert (=> b!1685250 m!2067407))

(assert (=> b!1683585 d!513064))

(declare-fun call!107757 () Regex!4579)

(declare-fun call!107754 () Regex!4579)

(declare-fun e!1078948 () Regex!4579)

(declare-fun b!1685271 () Bool)

(assert (=> b!1685271 (= e!1078948 (Union!4579 (Concat!7921 call!107754 (regTwo!9670 lt!638178)) call!107757))))

(declare-fun b!1685272 () Bool)

(declare-fun c!275217 () Bool)

(assert (=> b!1685272 (= c!275217 ((_ is Union!4579) lt!638178))))

(declare-fun e!1078947 () Regex!4579)

(declare-fun e!1078950 () Regex!4579)

(assert (=> b!1685272 (= e!1078947 e!1078950)))

(declare-fun d!513066 () Bool)

(declare-fun lt!639590 () Regex!4579)

(assert (=> d!513066 (validRegex!1840 lt!639590)))

(declare-fun e!1078949 () Regex!4579)

(assert (=> d!513066 (= lt!639590 e!1078949)))

(declare-fun c!275215 () Bool)

(assert (=> d!513066 (= c!275215 (or ((_ is EmptyExpr!4579) lt!638178) ((_ is EmptyLang!4579) lt!638178)))))

(assert (=> d!513066 (validRegex!1840 lt!638178)))

(assert (=> d!513066 (= (derivativeStep!1138 lt!638178 (head!3766 (++!5051 lt!638185 lt!638186))) lt!639590)))

(declare-fun bm!107749 () Bool)

(declare-fun call!107755 () Regex!4579)

(assert (=> bm!107749 (= call!107757 call!107755)))

(declare-fun call!107756 () Regex!4579)

(declare-fun c!275216 () Bool)

(declare-fun bm!107750 () Bool)

(assert (=> bm!107750 (= call!107756 (derivativeStep!1138 (ite c!275217 (regTwo!9671 lt!638178) (ite c!275216 (reg!4908 lt!638178) (regOne!9670 lt!638178))) (head!3766 (++!5051 lt!638185 lt!638186))))))

(declare-fun bm!107751 () Bool)

(declare-fun c!275214 () Bool)

(assert (=> bm!107751 (= call!107755 (derivativeStep!1138 (ite c!275217 (regOne!9671 lt!638178) (ite c!275214 (regTwo!9670 lt!638178) (regOne!9670 lt!638178))) (head!3766 (++!5051 lt!638185 lt!638186))))))

(declare-fun bm!107752 () Bool)

(assert (=> bm!107752 (= call!107754 call!107756)))

(declare-fun b!1685273 () Bool)

(assert (=> b!1685273 (= e!1078947 (ite (= (head!3766 (++!5051 lt!638185 lt!638186)) (c!274780 lt!638178)) EmptyExpr!4579 EmptyLang!4579))))

(declare-fun b!1685274 () Bool)

(declare-fun e!1078946 () Regex!4579)

(assert (=> b!1685274 (= e!1078950 e!1078946)))

(assert (=> b!1685274 (= c!275216 ((_ is Star!4579) lt!638178))))

(declare-fun b!1685275 () Bool)

(assert (=> b!1685275 (= e!1078949 e!1078947)))

(declare-fun c!275218 () Bool)

(assert (=> b!1685275 (= c!275218 ((_ is ElementMatch!4579) lt!638178))))

(declare-fun b!1685276 () Bool)

(assert (=> b!1685276 (= e!1078946 (Concat!7921 call!107754 lt!638178))))

(declare-fun b!1685277 () Bool)

(assert (=> b!1685277 (= e!1078948 (Union!4579 (Concat!7921 call!107757 (regTwo!9670 lt!638178)) EmptyLang!4579))))

(declare-fun b!1685278 () Bool)

(assert (=> b!1685278 (= e!1078950 (Union!4579 call!107755 call!107756))))

(declare-fun b!1685279 () Bool)

(assert (=> b!1685279 (= e!1078949 EmptyLang!4579)))

(declare-fun b!1685280 () Bool)

(assert (=> b!1685280 (= c!275214 (nullable!1367 (regOne!9670 lt!638178)))))

(assert (=> b!1685280 (= e!1078946 e!1078948)))

(assert (= (and d!513066 c!275215) b!1685279))

(assert (= (and d!513066 (not c!275215)) b!1685275))

(assert (= (and b!1685275 c!275218) b!1685273))

(assert (= (and b!1685275 (not c!275218)) b!1685272))

(assert (= (and b!1685272 c!275217) b!1685278))

(assert (= (and b!1685272 (not c!275217)) b!1685274))

(assert (= (and b!1685274 c!275216) b!1685276))

(assert (= (and b!1685274 (not c!275216)) b!1685280))

(assert (= (and b!1685280 c!275214) b!1685271))

(assert (= (and b!1685280 (not c!275214)) b!1685277))

(assert (= (or b!1685271 b!1685277) bm!107749))

(assert (= (or b!1685276 b!1685271) bm!107752))

(assert (= (or b!1685278 bm!107749) bm!107751))

(assert (= (or b!1685278 bm!107752) bm!107750))

(declare-fun m!2067409 () Bool)

(assert (=> d!513066 m!2067409))

(assert (=> d!513066 m!2064665))

(assert (=> bm!107750 m!2063941))

(declare-fun m!2067411 () Bool)

(assert (=> bm!107750 m!2067411))

(assert (=> bm!107751 m!2063941))

(declare-fun m!2067413 () Bool)

(assert (=> bm!107751 m!2067413))

(declare-fun m!2067415 () Bool)

(assert (=> b!1685280 m!2067415))

(assert (=> b!1683585 d!513066))

(declare-fun d!513068 () Bool)

(assert (=> d!513068 (= (head!3766 (++!5051 lt!638185 lt!638186)) (h!23864 (++!5051 lt!638185 lt!638186)))))

(assert (=> b!1683585 d!513068))

(declare-fun d!513070 () Bool)

(assert (=> d!513070 (= (tail!2512 (++!5051 lt!638185 lt!638186)) (t!154510 (++!5051 lt!638185 lt!638186)))))

(assert (=> b!1683585 d!513070))

(declare-fun b!1685281 () Bool)

(declare-fun e!1078953 () Bool)

(assert (=> b!1685281 (= e!1078953 (inv!16 (value!102326 (h!23866 (t!154512 tokens!457)))))))

(declare-fun b!1685282 () Bool)

(declare-fun e!1078952 () Bool)

(assert (=> b!1685282 (= e!1078952 (inv!15 (value!102326 (h!23866 (t!154512 tokens!457)))))))

(declare-fun b!1685283 () Bool)

(declare-fun e!1078951 () Bool)

(assert (=> b!1685283 (= e!1078951 (inv!17 (value!102326 (h!23866 (t!154512 tokens!457)))))))

(declare-fun b!1685284 () Bool)

(assert (=> b!1685284 (= e!1078953 e!1078951)))

(declare-fun c!275220 () Bool)

(assert (=> b!1685284 (= c!275220 ((_ is IntegerValue!10024) (value!102326 (h!23866 (t!154512 tokens!457)))))))

(declare-fun d!513072 () Bool)

(declare-fun c!275219 () Bool)

(assert (=> d!513072 (= c!275219 ((_ is IntegerValue!10023) (value!102326 (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!513072 (= (inv!21 (value!102326 (h!23866 (t!154512 tokens!457)))) e!1078953)))

(declare-fun b!1685285 () Bool)

(declare-fun res!755520 () Bool)

(assert (=> b!1685285 (=> res!755520 e!1078952)))

(assert (=> b!1685285 (= res!755520 (not ((_ is IntegerValue!10025) (value!102326 (h!23866 (t!154512 tokens!457))))))))

(assert (=> b!1685285 (= e!1078951 e!1078952)))

(assert (= (and d!513072 c!275219) b!1685281))

(assert (= (and d!513072 (not c!275219)) b!1685284))

(assert (= (and b!1685284 c!275220) b!1685283))

(assert (= (and b!1685284 (not c!275220)) b!1685285))

(assert (= (and b!1685285 (not res!755520)) b!1685282))

(declare-fun m!2067417 () Bool)

(assert (=> b!1685281 m!2067417))

(declare-fun m!2067419 () Bool)

(assert (=> b!1685282 m!2067419))

(declare-fun m!2067421 () Bool)

(assert (=> b!1685283 m!2067421))

(assert (=> b!1683926 d!513072))

(declare-fun d!513074 () Bool)

(assert (=> d!513074 (= (list!7415 lt!638750) (list!7420 (c!274779 lt!638750)))))

(declare-fun bs!399521 () Bool)

(assert (= bs!399521 d!513074))

(declare-fun m!2067423 () Bool)

(assert (=> bs!399521 m!2067423))

(assert (=> d!512340 d!513074))

(declare-fun d!513076 () Bool)

(declare-fun e!1078956 () Bool)

(assert (=> d!513076 e!1078956))

(declare-fun res!755523 () Bool)

(assert (=> d!513076 (=> (not res!755523) (not e!1078956))))

(declare-fun lt!639593 () BalanceConc!12244)

(assert (=> d!513076 (= res!755523 (= (list!7415 lt!639593) (Cons!18463 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0) Nil!18463)))))

(declare-fun choose!10187 (C!9332) BalanceConc!12244)

(assert (=> d!513076 (= lt!639593 (choose!10187 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)))))

(assert (=> d!513076 (= (singleton!799 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)) lt!639593)))

(declare-fun b!1685288 () Bool)

(assert (=> b!1685288 (= e!1078956 (isBalanced!1926 (c!274779 lt!639593)))))

(assert (= (and d!513076 res!755523) b!1685288))

(declare-fun m!2067425 () Bool)

(assert (=> d!513076 m!2067425))

(assert (=> d!513076 m!2063553))

(declare-fun m!2067427 () Bool)

(assert (=> d!513076 m!2067427))

(declare-fun m!2067429 () Bool)

(assert (=> b!1685288 m!2067429))

(assert (=> d!512340 d!513076))

(declare-fun d!513078 () Bool)

(assert (=> d!513078 (= (isEmpty!11547 (++!5051 lt!638185 lt!638186)) ((_ is Nil!18463) (++!5051 lt!638185 lt!638186)))))

(assert (=> d!512194 d!513078))

(assert (=> b!1683484 d!513046))

(declare-fun b!1685289 () Bool)

(declare-fun e!1078957 () List!18533)

(assert (=> b!1685289 (= e!1078957 (_2!10502 (get!5414 lt!638321)))))

(declare-fun d!513080 () Bool)

(declare-fun e!1078958 () Bool)

(assert (=> d!513080 e!1078958))

(declare-fun res!755525 () Bool)

(assert (=> d!513080 (=> (not res!755525) (not e!1078958))))

(declare-fun lt!639594 () List!18533)

(assert (=> d!513080 (= res!755525 (= (content!2597 lt!639594) ((_ map or) (content!2597 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))) (content!2597 (_2!10502 (get!5414 lt!638321))))))))

(assert (=> d!513080 (= lt!639594 e!1078957)))

(declare-fun c!275221 () Bool)

(assert (=> d!513080 (= c!275221 ((_ is Nil!18463) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))))))

(assert (=> d!513080 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))) (_2!10502 (get!5414 lt!638321))) lt!639594)))

(declare-fun b!1685292 () Bool)

(assert (=> b!1685292 (= e!1078958 (or (not (= (_2!10502 (get!5414 lt!638321)) Nil!18463)) (= lt!639594 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321)))))))))

(declare-fun b!1685291 () Bool)

(declare-fun res!755524 () Bool)

(assert (=> b!1685291 (=> (not res!755524) (not e!1078958))))

(assert (=> b!1685291 (= res!755524 (= (size!14706 lt!639594) (+ (size!14706 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))) (size!14706 (_2!10502 (get!5414 lt!638321))))))))

(declare-fun b!1685290 () Bool)

(assert (=> b!1685290 (= e!1078957 (Cons!18463 (h!23864 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))) (++!5051 (t!154510 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638321))))) (_2!10502 (get!5414 lt!638321)))))))

(assert (= (and d!513080 c!275221) b!1685289))

(assert (= (and d!513080 (not c!275221)) b!1685290))

(assert (= (and d!513080 res!755525) b!1685291))

(assert (= (and b!1685291 res!755524) b!1685292))

(declare-fun m!2067431 () Bool)

(assert (=> d!513080 m!2067431))

(assert (=> d!513080 m!2063863))

(declare-fun m!2067433 () Bool)

(assert (=> d!513080 m!2067433))

(declare-fun m!2067435 () Bool)

(assert (=> d!513080 m!2067435))

(declare-fun m!2067437 () Bool)

(assert (=> b!1685291 m!2067437))

(assert (=> b!1685291 m!2063863))

(declare-fun m!2067439 () Bool)

(assert (=> b!1685291 m!2067439))

(assert (=> b!1685291 m!2063883))

(declare-fun m!2067441 () Bool)

(assert (=> b!1685290 m!2067441))

(assert (=> b!1683566 d!513080))

(assert (=> b!1683566 d!512752))

(assert (=> b!1683566 d!512754))

(assert (=> b!1683566 d!512590))

(declare-fun bs!399522 () Bool)

(declare-fun d!513082 () Bool)

(assert (= bs!399522 (and d!513082 d!512874)))

(declare-fun lambda!68315 () Int)

(assert (=> bs!399522 (= lambda!68315 lambda!68298)))

(assert (=> d!513082 true))

(declare-fun lt!639597 () Bool)

(assert (=> d!513082 (= lt!639597 (rulesValidInductive!1050 thiss!17113 rules!1846))))

(assert (=> d!513082 (= lt!639597 (forall!4206 rules!1846 lambda!68315))))

(assert (=> d!513082 (= (rulesValid!1204 thiss!17113 rules!1846) lt!639597)))

(declare-fun bs!399523 () Bool)

(assert (= bs!399523 d!513082))

(assert (=> bs!399523 m!2063751))

(declare-fun m!2067443 () Bool)

(assert (=> bs!399523 m!2067443))

(assert (=> d!512146 d!513082))

(declare-fun b!1685295 () Bool)

(declare-fun e!1078960 () List!18533)

(assert (=> b!1685295 (= e!1078960 (list!7424 (xs!9006 (c!274779 lt!638167))))))

(declare-fun b!1685294 () Bool)

(declare-fun e!1078959 () List!18533)

(assert (=> b!1685294 (= e!1078959 e!1078960)))

(declare-fun c!275223 () Bool)

(assert (=> b!1685294 (= c!275223 ((_ is Leaf!8996) (c!274779 lt!638167)))))

(declare-fun d!513084 () Bool)

(declare-fun c!275222 () Bool)

(assert (=> d!513084 (= c!275222 ((_ is Empty!6150) (c!274779 lt!638167)))))

(assert (=> d!513084 (= (list!7420 (c!274779 lt!638167)) e!1078959)))

(declare-fun b!1685296 () Bool)

(assert (=> b!1685296 (= e!1078960 (++!5051 (list!7420 (left!14761 (c!274779 lt!638167))) (list!7420 (right!15091 (c!274779 lt!638167)))))))

(declare-fun b!1685293 () Bool)

(assert (=> b!1685293 (= e!1078959 Nil!18463)))

(assert (= (and d!513084 c!275222) b!1685293))

(assert (= (and d!513084 (not c!275222)) b!1685294))

(assert (= (and b!1685294 c!275223) b!1685295))

(assert (= (and b!1685294 (not c!275223)) b!1685296))

(declare-fun m!2067445 () Bool)

(assert (=> b!1685295 m!2067445))

(declare-fun m!2067447 () Bool)

(assert (=> b!1685296 m!2067447))

(declare-fun m!2067449 () Bool)

(assert (=> b!1685296 m!2067449))

(assert (=> b!1685296 m!2067447))

(assert (=> b!1685296 m!2067449))

(declare-fun m!2067451 () Bool)

(assert (=> b!1685296 m!2067451))

(assert (=> d!512258 d!513084))

(assert (=> b!1683878 d!512774))

(assert (=> b!1683878 d!513048))

(assert (=> b!1683878 d!513050))

(assert (=> b!1683878 d!513052))

(assert (=> b!1683878 d!513054))

(assert (=> b!1683562 d!512752))

(assert (=> b!1683562 d!512754))

(assert (=> b!1683562 d!512590))

(declare-fun b!1685315 () Bool)

(declare-fun e!1078983 () Bool)

(declare-fun e!1078979 () Bool)

(assert (=> b!1685315 (= e!1078983 e!1078979)))

(declare-fun res!755550 () Bool)

(assert (=> b!1685315 (=> (not res!755550) (not e!1078979))))

(declare-fun appendAssoc!118 (List!18533 List!18533 List!18533) Bool)

(assert (=> b!1685315 (= res!755550 (appendAssoc!118 (list!7420 (left!14761 (right!15091 (c!274779 lt!638184)))) (list!7420 (right!15091 (right!15091 (c!274779 lt!638184)))) (list!7420 (c!274779 lt!638169))))))

(declare-fun b!1685316 () Bool)

(declare-fun e!1078980 () Bool)

(declare-fun e!1078982 () Bool)

(assert (=> b!1685316 (= e!1078980 e!1078982)))

(declare-fun res!755544 () Bool)

(assert (=> b!1685316 (=> res!755544 e!1078982)))

(assert (=> b!1685316 (= res!755544 (not ((_ is Node!6150) (c!274779 lt!638169))))))

(declare-fun b!1685317 () Bool)

(assert (=> b!1685317 (= e!1078979 (appendAssoc!118 (list!7420 (left!14761 (c!274779 lt!638184))) (list!7420 (left!14761 (right!15091 (c!274779 lt!638184)))) (++!5051 (list!7420 (right!15091 (right!15091 (c!274779 lt!638184)))) (list!7420 (c!274779 lt!638169)))))))

(declare-fun b!1685318 () Bool)

(declare-fun e!1078987 () Bool)

(declare-fun e!1078985 () Bool)

(assert (=> b!1685318 (= e!1078987 e!1078985)))

(declare-fun res!755545 () Bool)

(assert (=> b!1685318 (=> res!755545 e!1078985)))

(assert (=> b!1685318 (= res!755545 (not ((_ is Node!6150) (left!14761 (c!274779 lt!638169)))))))

(declare-fun b!1685319 () Bool)

(assert (=> b!1685319 (= e!1078982 e!1078987)))

(declare-fun res!755548 () Bool)

(assert (=> b!1685319 (=> (not res!755548) (not e!1078987))))

(assert (=> b!1685319 (= res!755548 (appendAssoc!118 (list!7420 (c!274779 lt!638184)) (list!7420 (left!14761 (c!274779 lt!638169))) (list!7420 (right!15091 (c!274779 lt!638169)))))))

(declare-fun b!1685320 () Bool)

(declare-fun e!1078986 () Bool)

(assert (=> b!1685320 (= e!1078986 e!1078983)))

(declare-fun res!755549 () Bool)

(assert (=> b!1685320 (=> res!755549 e!1078983)))

(assert (=> b!1685320 (= res!755549 (not ((_ is Node!6150) (right!15091 (c!274779 lt!638184)))))))

(declare-fun d!513086 () Bool)

(assert (=> d!513086 e!1078980))

(declare-fun res!755551 () Bool)

(assert (=> d!513086 (=> (not res!755551) (not e!1078980))))

(declare-fun e!1078981 () Bool)

(assert (=> d!513086 (= res!755551 e!1078981)))

(declare-fun res!755547 () Bool)

(assert (=> d!513086 (=> res!755547 e!1078981)))

(assert (=> d!513086 (= res!755547 (not ((_ is Node!6150) (c!274779 lt!638184))))))

(assert (=> d!513086 (= (appendAssocInst!495 (c!274779 lt!638184) (c!274779 lt!638169)) true)))

(declare-fun b!1685321 () Bool)

(declare-fun e!1078984 () Bool)

(assert (=> b!1685321 (= e!1078984 (appendAssoc!118 (++!5051 (list!7420 (c!274779 lt!638184)) (list!7420 (left!14761 (left!14761 (c!274779 lt!638169))))) (list!7420 (right!15091 (left!14761 (c!274779 lt!638169)))) (list!7420 (right!15091 (c!274779 lt!638169)))))))

(declare-fun b!1685322 () Bool)

(assert (=> b!1685322 (= e!1078981 e!1078986)))

(declare-fun res!755546 () Bool)

(assert (=> b!1685322 (=> (not res!755546) (not e!1078986))))

(assert (=> b!1685322 (= res!755546 (appendAssoc!118 (list!7420 (left!14761 (c!274779 lt!638184))) (list!7420 (right!15091 (c!274779 lt!638184))) (list!7420 (c!274779 lt!638169))))))

(declare-fun b!1685323 () Bool)

(assert (=> b!1685323 (= e!1078985 e!1078984)))

(declare-fun res!755552 () Bool)

(assert (=> b!1685323 (=> (not res!755552) (not e!1078984))))

(assert (=> b!1685323 (= res!755552 (appendAssoc!118 (list!7420 (c!274779 lt!638184)) (list!7420 (left!14761 (left!14761 (c!274779 lt!638169)))) (list!7420 (right!15091 (left!14761 (c!274779 lt!638169))))))))

(assert (= (and d!513086 (not res!755547)) b!1685322))

(assert (= (and b!1685322 res!755546) b!1685320))

(assert (= (and b!1685320 (not res!755549)) b!1685315))

(assert (= (and b!1685315 res!755550) b!1685317))

(assert (= (and d!513086 res!755551) b!1685316))

(assert (= (and b!1685316 (not res!755544)) b!1685319))

(assert (= (and b!1685319 res!755548) b!1685318))

(assert (= (and b!1685318 (not res!755545)) b!1685323))

(assert (= (and b!1685323 res!755552) b!1685321))

(assert (=> b!1685321 m!2066627))

(assert (=> b!1685321 m!2064207))

(declare-fun m!2067453 () Bool)

(assert (=> b!1685321 m!2067453))

(declare-fun m!2067455 () Bool)

(assert (=> b!1685321 m!2067455))

(declare-fun m!2067457 () Bool)

(assert (=> b!1685321 m!2067457))

(assert (=> b!1685321 m!2066627))

(declare-fun m!2067459 () Bool)

(assert (=> b!1685321 m!2067459))

(assert (=> b!1685321 m!2064207))

(assert (=> b!1685321 m!2067453))

(assert (=> b!1685321 m!2067455))

(assert (=> b!1685321 m!2067457))

(assert (=> b!1685322 m!2066645))

(assert (=> b!1685322 m!2066647))

(assert (=> b!1685322 m!2063991))

(assert (=> b!1685322 m!2066645))

(assert (=> b!1685322 m!2066647))

(assert (=> b!1685322 m!2063991))

(declare-fun m!2067461 () Bool)

(assert (=> b!1685322 m!2067461))

(assert (=> b!1685323 m!2064207))

(assert (=> b!1685323 m!2067453))

(assert (=> b!1685323 m!2067457))

(assert (=> b!1685323 m!2064207))

(assert (=> b!1685323 m!2067453))

(assert (=> b!1685323 m!2067457))

(declare-fun m!2067463 () Bool)

(assert (=> b!1685323 m!2067463))

(assert (=> b!1685319 m!2064207))

(assert (=> b!1685319 m!2066625))

(assert (=> b!1685319 m!2066627))

(assert (=> b!1685319 m!2064207))

(assert (=> b!1685319 m!2066625))

(assert (=> b!1685319 m!2066627))

(declare-fun m!2067465 () Bool)

(assert (=> b!1685319 m!2067465))

(declare-fun m!2067467 () Bool)

(assert (=> b!1685315 m!2067467))

(declare-fun m!2067469 () Bool)

(assert (=> b!1685315 m!2067469))

(assert (=> b!1685315 m!2063991))

(assert (=> b!1685315 m!2067467))

(assert (=> b!1685315 m!2067469))

(assert (=> b!1685315 m!2063991))

(declare-fun m!2067471 () Bool)

(assert (=> b!1685315 m!2067471))

(assert (=> b!1685317 m!2067469))

(assert (=> b!1685317 m!2066645))

(assert (=> b!1685317 m!2067467))

(declare-fun m!2067473 () Bool)

(assert (=> b!1685317 m!2067473))

(declare-fun m!2067475 () Bool)

(assert (=> b!1685317 m!2067475))

(assert (=> b!1685317 m!2067469))

(assert (=> b!1685317 m!2063991))

(assert (=> b!1685317 m!2067473))

(assert (=> b!1685317 m!2063991))

(assert (=> b!1685317 m!2067467))

(assert (=> b!1685317 m!2066645))

(assert (=> d!512342 d!513086))

(assert (=> d!512342 d!512774))

(declare-fun b!1685324 () Bool)

(declare-fun e!1078988 () List!18533)

(assert (=> b!1685324 (= e!1078988 (_2!10502 (get!5414 lt!638606)))))

(declare-fun d!513088 () Bool)

(declare-fun e!1078989 () Bool)

(assert (=> d!513088 e!1078989))

(declare-fun res!755554 () Bool)

(assert (=> d!513088 (=> (not res!755554) (not e!1078989))))

(declare-fun lt!639598 () List!18533)

(assert (=> d!513088 (= res!755554 (= (content!2597 lt!639598) ((_ map or) (content!2597 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))) (content!2597 (_2!10502 (get!5414 lt!638606))))))))

(assert (=> d!513088 (= lt!639598 e!1078988)))

(declare-fun c!275224 () Bool)

(assert (=> d!513088 (= c!275224 ((_ is Nil!18463) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))))))

(assert (=> d!513088 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))) (_2!10502 (get!5414 lt!638606))) lt!639598)))

(declare-fun b!1685327 () Bool)

(assert (=> b!1685327 (= e!1078989 (or (not (= (_2!10502 (get!5414 lt!638606)) Nil!18463)) (= lt!639598 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606)))))))))

(declare-fun b!1685326 () Bool)

(declare-fun res!755553 () Bool)

(assert (=> b!1685326 (=> (not res!755553) (not e!1078989))))

(assert (=> b!1685326 (= res!755553 (= (size!14706 lt!639598) (+ (size!14706 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))) (size!14706 (_2!10502 (get!5414 lt!638606))))))))

(declare-fun b!1685325 () Bool)

(assert (=> b!1685325 (= e!1078988 (Cons!18463 (h!23864 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))) (++!5051 (t!154510 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!638606))))) (_2!10502 (get!5414 lt!638606)))))))

(assert (= (and d!513088 c!275224) b!1685324))

(assert (= (and d!513088 (not c!275224)) b!1685325))

(assert (= (and d!513088 res!755554) b!1685326))

(assert (= (and b!1685326 res!755553) b!1685327))

(declare-fun m!2067477 () Bool)

(assert (=> d!513088 m!2067477))

(assert (=> d!513088 m!2064339))

(declare-fun m!2067479 () Bool)

(assert (=> d!513088 m!2067479))

(declare-fun m!2067481 () Bool)

(assert (=> d!513088 m!2067481))

(declare-fun m!2067483 () Bool)

(assert (=> b!1685326 m!2067483))

(assert (=> b!1685326 m!2064339))

(declare-fun m!2067485 () Bool)

(assert (=> b!1685326 m!2067485))

(assert (=> b!1685326 m!2064367))

(declare-fun m!2067487 () Bool)

(assert (=> b!1685325 m!2067487))

(assert (=> b!1683712 d!513088))

(assert (=> b!1683712 d!512742))

(assert (=> b!1683712 d!512744))

(assert (=> b!1683712 d!512562))

(assert (=> d!512164 d!512340))

(declare-fun d!513090 () Bool)

(declare-fun lt!639602 () Bool)

(assert (=> d!513090 (= lt!639602 (prefixMatch!492 (rulesRegex!633 thiss!17113 rules!1846) (list!7415 (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))))))

(assert (=> d!513090 (= lt!639602 (prefixMatchZipperSequence!691 (focus!231 (rulesRegex!633 thiss!17113 rules!1846)) (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))) 0))))

(declare-fun lt!639606 () Unit!31713)

(declare-fun lt!639599 () Unit!31713)

(assert (=> d!513090 (= lt!639606 lt!639599)))

(declare-fun lt!639601 () (InoxSet Context!1850))

(declare-fun lt!639604 () List!18533)

(assert (=> d!513090 (= (prefixMatch!492 (rulesRegex!633 thiss!17113 rules!1846) lt!639604) (prefixMatchZipper!210 lt!639601 lt!639604))))

(declare-fun lt!639603 () List!18542)

(assert (=> d!513090 (= lt!639599 (prefixMatchZipperRegexEquiv!210 lt!639601 lt!639603 (rulesRegex!633 thiss!17113 rules!1846) lt!639604))))

(assert (=> d!513090 (= lt!639604 (list!7415 (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)))))))

(assert (=> d!513090 (= lt!639603 (toList!971 (focus!231 (rulesRegex!633 thiss!17113 rules!1846))))))

(assert (=> d!513090 (= lt!639601 (focus!231 (rulesRegex!633 thiss!17113 rules!1846)))))

(declare-fun lt!639607 () Unit!31713)

(declare-fun lt!639605 () Unit!31713)

(assert (=> d!513090 (= lt!639607 lt!639605)))

(declare-fun lt!639608 () (InoxSet Context!1850))

(declare-fun lt!639600 () Int)

(assert (=> d!513090 (= (prefixMatchZipper!210 lt!639608 (dropList!735 (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))) lt!639600)) (prefixMatchZipperSequence!691 lt!639608 (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))) lt!639600))))

(assert (=> d!513090 (= lt!639605 (lemmaprefixMatchZipperSequenceEquivalent!210 lt!639608 (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))) lt!639600))))

(assert (=> d!513090 (= lt!639600 0)))

(assert (=> d!513090 (= lt!639608 (focus!231 (rulesRegex!633 thiss!17113 rules!1846)))))

(assert (=> d!513090 (validRegex!1840 (rulesRegex!633 thiss!17113 rules!1846))))

(assert (=> d!513090 (= (prefixMatchZipperSequence!689 (rulesRegex!633 thiss!17113 rules!1846) (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)))) lt!639602)))

(declare-fun bs!399524 () Bool)

(assert (= bs!399524 d!513090))

(assert (=> bs!399524 m!2063815))

(declare-fun m!2067489 () Bool)

(assert (=> bs!399524 m!2067489))

(assert (=> bs!399524 m!2063545))

(declare-fun m!2067491 () Bool)

(assert (=> bs!399524 m!2067491))

(declare-fun m!2067493 () Bool)

(assert (=> bs!399524 m!2067493))

(declare-fun m!2067495 () Bool)

(assert (=> bs!399524 m!2067495))

(declare-fun m!2067497 () Bool)

(assert (=> bs!399524 m!2067497))

(assert (=> bs!399524 m!2063545))

(assert (=> bs!399524 m!2067495))

(assert (=> bs!399524 m!2067495))

(assert (=> bs!399524 m!2063815))

(declare-fun m!2067499 () Bool)

(assert (=> bs!399524 m!2067499))

(declare-fun m!2067501 () Bool)

(assert (=> bs!399524 m!2067501))

(assert (=> bs!399524 m!2063815))

(assert (=> bs!399524 m!2067491))

(assert (=> bs!399524 m!2063545))

(declare-fun m!2067503 () Bool)

(assert (=> bs!399524 m!2067503))

(assert (=> bs!399524 m!2063545))

(declare-fun m!2067505 () Bool)

(assert (=> bs!399524 m!2067505))

(assert (=> bs!399524 m!2063545))

(declare-fun m!2067507 () Bool)

(assert (=> bs!399524 m!2067507))

(assert (=> bs!399524 m!2067489))

(declare-fun m!2067509 () Bool)

(assert (=> bs!399524 m!2067509))

(assert (=> bs!399524 m!2063815))

(declare-fun m!2067511 () Bool)

(assert (=> bs!399524 m!2067511))

(assert (=> bs!399524 m!2063815))

(declare-fun m!2067513 () Bool)

(assert (=> bs!399524 m!2067513))

(assert (=> d!512164 d!513090))

(declare-fun b!1685331 () Bool)

(declare-fun e!1078990 () Bool)

(declare-fun lt!639609 () BalanceConc!12244)

(assert (=> b!1685331 (= e!1078990 (= (list!7415 lt!639609) (++!5051 (list!7415 (charsOf!1900 (h!23866 tokens!457))) (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))))))

(declare-fun b!1685329 () Bool)

(declare-fun res!755557 () Bool)

(assert (=> b!1685329 (=> (not res!755557) (not e!1078990))))

(assert (=> b!1685329 (= res!755557 (<= (height!983 (++!5054 (c!274779 (charsOf!1900 (h!23866 tokens!457))) (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))) (+ (max!0 (height!983 (c!274779 (charsOf!1900 (h!23866 tokens!457)))) (height!983 (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))) 1)))))

(declare-fun b!1685328 () Bool)

(declare-fun res!755558 () Bool)

(assert (=> b!1685328 (=> (not res!755558) (not e!1078990))))

(assert (=> b!1685328 (= res!755558 (isBalanced!1926 (++!5054 (c!274779 (charsOf!1900 (h!23866 tokens!457))) (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))))))

(declare-fun d!513092 () Bool)

(assert (=> d!513092 e!1078990))

(declare-fun res!755555 () Bool)

(assert (=> d!513092 (=> (not res!755555) (not e!1078990))))

(assert (=> d!513092 (= res!755555 (appendAssocInst!495 (c!274779 (charsOf!1900 (h!23866 tokens!457))) (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)))))))

(assert (=> d!513092 (= lt!639609 (BalanceConc!12245 (++!5054 (c!274779 (charsOf!1900 (h!23866 tokens!457))) (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))))))

(assert (=> d!513092 (= (++!5052 (charsOf!1900 (h!23866 tokens!457)) (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))) lt!639609)))

(declare-fun b!1685330 () Bool)

(declare-fun res!755556 () Bool)

(assert (=> b!1685330 (=> (not res!755556) (not e!1078990))))

(assert (=> b!1685330 (= res!755556 (>= (height!983 (++!5054 (c!274779 (charsOf!1900 (h!23866 tokens!457))) (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0))))) (max!0 (height!983 (c!274779 (charsOf!1900 (h!23866 tokens!457)))) (height!983 (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 tokens!457))) 0)))))))))

(assert (= (and d!513092 res!755555) b!1685328))

(assert (= (and b!1685328 res!755558) b!1685329))

(assert (= (and b!1685329 res!755557) b!1685330))

(assert (= (and b!1685330 res!755556) b!1685331))

(declare-fun m!2067515 () Bool)

(assert (=> b!1685330 m!2067515))

(assert (=> b!1685330 m!2067515))

(declare-fun m!2067517 () Bool)

(assert (=> b!1685330 m!2067517))

(declare-fun m!2067519 () Bool)

(assert (=> b!1685330 m!2067519))

(declare-fun m!2067521 () Bool)

(assert (=> b!1685330 m!2067521))

(assert (=> b!1685330 m!2067519))

(assert (=> b!1685330 m!2067521))

(declare-fun m!2067523 () Bool)

(assert (=> b!1685330 m!2067523))

(declare-fun m!2067525 () Bool)

(assert (=> d!513092 m!2067525))

(assert (=> d!513092 m!2067515))

(assert (=> b!1685329 m!2067515))

(assert (=> b!1685329 m!2067515))

(assert (=> b!1685329 m!2067517))

(assert (=> b!1685329 m!2067519))

(assert (=> b!1685329 m!2067521))

(assert (=> b!1685329 m!2067519))

(assert (=> b!1685329 m!2067521))

(assert (=> b!1685329 m!2067523))

(declare-fun m!2067527 () Bool)

(assert (=> b!1685331 m!2067527))

(assert (=> b!1685331 m!2063471))

(declare-fun m!2067529 () Bool)

(assert (=> b!1685331 m!2067529))

(assert (=> b!1685331 m!2063555))

(declare-fun m!2067531 () Bool)

(assert (=> b!1685331 m!2067531))

(assert (=> b!1685331 m!2067529))

(assert (=> b!1685331 m!2067531))

(declare-fun m!2067533 () Bool)

(assert (=> b!1685331 m!2067533))

(assert (=> b!1685328 m!2067515))

(assert (=> b!1685328 m!2067515))

(declare-fun m!2067535 () Bool)

(assert (=> b!1685328 m!2067535))

(assert (=> d!512164 d!513092))

(assert (=> d!512164 d!512256))

(assert (=> d!512164 d!512346))

(assert (=> d!512164 d!512348))

(assert (=> d!512164 d!512350))

(declare-fun d!513094 () Bool)

(declare-fun charsToBigInt!0 (List!18534 Int) Int)

(assert (=> d!513094 (= (inv!15 (value!102326 (h!23866 tokens!457))) (= (charsToBigInt!0 (text!23836 (value!102326 (h!23866 tokens!457))) 0) (value!102321 (value!102326 (h!23866 tokens!457)))))))

(declare-fun bs!399525 () Bool)

(assert (= bs!399525 d!513094))

(declare-fun m!2067537 () Bool)

(assert (=> bs!399525 m!2067537))

(assert (=> b!1683695 d!513094))

(declare-fun b!1685332 () Bool)

(declare-fun res!755561 () Bool)

(declare-fun e!1078992 () Bool)

(assert (=> b!1685332 (=> (not res!755561) (not e!1078992))))

(assert (=> b!1685332 (= res!755561 (not (isEmpty!11552 (left!14761 (c!274779 lt!638750)))))))

(declare-fun b!1685333 () Bool)

(declare-fun res!755562 () Bool)

(assert (=> b!1685333 (=> (not res!755562) (not e!1078992))))

(assert (=> b!1685333 (= res!755562 (isBalanced!1926 (left!14761 (c!274779 lt!638750))))))

(declare-fun b!1685334 () Bool)

(declare-fun res!755559 () Bool)

(assert (=> b!1685334 (=> (not res!755559) (not e!1078992))))

(assert (=> b!1685334 (= res!755559 (isBalanced!1926 (right!15091 (c!274779 lt!638750))))))

(declare-fun d!513096 () Bool)

(declare-fun res!755563 () Bool)

(declare-fun e!1078991 () Bool)

(assert (=> d!513096 (=> res!755563 e!1078991)))

(assert (=> d!513096 (= res!755563 (not ((_ is Node!6150) (c!274779 lt!638750))))))

(assert (=> d!513096 (= (isBalanced!1926 (c!274779 lt!638750)) e!1078991)))

(declare-fun b!1685335 () Bool)

(declare-fun res!755560 () Bool)

(assert (=> b!1685335 (=> (not res!755560) (not e!1078992))))

(assert (=> b!1685335 (= res!755560 (<= (- (height!983 (left!14761 (c!274779 lt!638750))) (height!983 (right!15091 (c!274779 lt!638750)))) 1))))

(declare-fun b!1685336 () Bool)

(assert (=> b!1685336 (= e!1078992 (not (isEmpty!11552 (right!15091 (c!274779 lt!638750)))))))

(declare-fun b!1685337 () Bool)

(assert (=> b!1685337 (= e!1078991 e!1078992)))

(declare-fun res!755564 () Bool)

(assert (=> b!1685337 (=> (not res!755564) (not e!1078992))))

(assert (=> b!1685337 (= res!755564 (<= (- 1) (- (height!983 (left!14761 (c!274779 lt!638750))) (height!983 (right!15091 (c!274779 lt!638750))))))))

(assert (= (and d!513096 (not res!755563)) b!1685337))

(assert (= (and b!1685337 res!755564) b!1685335))

(assert (= (and b!1685335 res!755560) b!1685333))

(assert (= (and b!1685333 res!755562) b!1685334))

(assert (= (and b!1685334 res!755559) b!1685332))

(assert (= (and b!1685332 res!755561) b!1685336))

(declare-fun m!2067539 () Bool)

(assert (=> b!1685332 m!2067539))

(declare-fun m!2067541 () Bool)

(assert (=> b!1685337 m!2067541))

(declare-fun m!2067543 () Bool)

(assert (=> b!1685337 m!2067543))

(declare-fun m!2067545 () Bool)

(assert (=> b!1685334 m!2067545))

(assert (=> b!1685335 m!2067541))

(assert (=> b!1685335 m!2067543))

(declare-fun m!2067547 () Bool)

(assert (=> b!1685336 m!2067547))

(declare-fun m!2067549 () Bool)

(assert (=> b!1685333 m!2067549))

(assert (=> b!1683868 d!513096))

(declare-fun d!513098 () Bool)

(declare-fun lt!639610 () Int)

(assert (=> d!513098 (>= lt!639610 0)))

(declare-fun e!1078993 () Int)

(assert (=> d!513098 (= lt!639610 e!1078993)))

(declare-fun c!275225 () Bool)

(assert (=> d!513098 (= c!275225 ((_ is Nil!18463) (_2!10502 (get!5414 lt!638606))))))

(assert (=> d!513098 (= (size!14706 (_2!10502 (get!5414 lt!638606))) lt!639610)))

(declare-fun b!1685338 () Bool)

(assert (=> b!1685338 (= e!1078993 0)))

(declare-fun b!1685339 () Bool)

(assert (=> b!1685339 (= e!1078993 (+ 1 (size!14706 (t!154510 (_2!10502 (get!5414 lt!638606))))))))

(assert (= (and d!513098 c!275225) b!1685338))

(assert (= (and d!513098 (not c!275225)) b!1685339))

(declare-fun m!2067551 () Bool)

(assert (=> b!1685339 m!2067551))

(assert (=> b!1683705 d!513098))

(assert (=> b!1683705 d!512562))

(declare-fun d!513100 () Bool)

(declare-fun lt!639611 () Int)

(assert (=> d!513100 (>= lt!639611 0)))

(declare-fun e!1078994 () Int)

(assert (=> d!513100 (= lt!639611 e!1078994)))

(declare-fun c!275226 () Bool)

(assert (=> d!513100 (= c!275226 ((_ is Nil!18463) lt!638187))))

(assert (=> d!513100 (= (size!14706 lt!638187) lt!639611)))

(declare-fun b!1685340 () Bool)

(assert (=> b!1685340 (= e!1078994 0)))

(declare-fun b!1685341 () Bool)

(assert (=> b!1685341 (= e!1078994 (+ 1 (size!14706 (t!154510 lt!638187))))))

(assert (= (and d!513100 c!275226) b!1685340))

(assert (= (and d!513100 (not c!275226)) b!1685341))

(declare-fun m!2067553 () Bool)

(assert (=> b!1685341 m!2067553))

(assert (=> b!1683705 d!513100))

(assert (=> b!1683708 d!512742))

(assert (=> b!1683708 d!512744))

(assert (=> b!1683708 d!512562))

(declare-fun d!513102 () Bool)

(declare-fun res!755569 () Bool)

(declare-fun e!1078999 () Bool)

(assert (=> d!513102 (=> res!755569 e!1078999)))

(assert (=> d!513102 (= res!755569 ((_ is Nil!18465) tokens!457))))

(assert (=> d!513102 (= (forall!4204 tokens!457 lambda!68268) e!1078999)))

(declare-fun b!1685346 () Bool)

(declare-fun e!1079000 () Bool)

(assert (=> b!1685346 (= e!1078999 e!1079000)))

(declare-fun res!755570 () Bool)

(assert (=> b!1685346 (=> (not res!755570) (not e!1079000))))

(declare-fun dynLambda!8375 (Int Token!6068) Bool)

(assert (=> b!1685346 (= res!755570 (dynLambda!8375 lambda!68268 (h!23866 tokens!457)))))

(declare-fun b!1685347 () Bool)

(assert (=> b!1685347 (= e!1079000 (forall!4204 (t!154512 tokens!457) lambda!68268))))

(assert (= (and d!513102 (not res!755569)) b!1685346))

(assert (= (and b!1685346 res!755570) b!1685347))

(declare-fun b_lambda!53005 () Bool)

(assert (=> (not b_lambda!53005) (not b!1685346)))

(declare-fun m!2067555 () Bool)

(assert (=> b!1685346 m!2067555))

(declare-fun m!2067557 () Bool)

(assert (=> b!1685347 m!2067557))

(assert (=> d!512302 d!513102))

(assert (=> d!512302 d!512312))

(declare-fun b!1685349 () Bool)

(declare-fun res!755574 () Bool)

(declare-fun e!1079003 () Bool)

(assert (=> b!1685349 (=> (not res!755574) (not e!1079003))))

(assert (=> b!1685349 (= res!755574 (= (head!3766 lt!638185) (head!3766 (++!5051 lt!638185 lt!638165))))))

(declare-fun b!1685350 () Bool)

(assert (=> b!1685350 (= e!1079003 (isPrefix!1509 (tail!2512 lt!638185) (tail!2512 (++!5051 lt!638185 lt!638165))))))

(declare-fun b!1685351 () Bool)

(declare-fun e!1079001 () Bool)

(assert (=> b!1685351 (= e!1079001 (>= (size!14706 (++!5051 lt!638185 lt!638165)) (size!14706 lt!638185)))))

(declare-fun d!513104 () Bool)

(assert (=> d!513104 e!1079001))

(declare-fun res!755573 () Bool)

(assert (=> d!513104 (=> res!755573 e!1079001)))

(declare-fun lt!639612 () Bool)

(assert (=> d!513104 (= res!755573 (not lt!639612))))

(declare-fun e!1079002 () Bool)

(assert (=> d!513104 (= lt!639612 e!1079002)))

(declare-fun res!755572 () Bool)

(assert (=> d!513104 (=> res!755572 e!1079002)))

(assert (=> d!513104 (= res!755572 ((_ is Nil!18463) lt!638185))))

(assert (=> d!513104 (= (isPrefix!1509 lt!638185 (++!5051 lt!638185 lt!638165)) lt!639612)))

(declare-fun b!1685348 () Bool)

(assert (=> b!1685348 (= e!1079002 e!1079003)))

(declare-fun res!755571 () Bool)

(assert (=> b!1685348 (=> (not res!755571) (not e!1079003))))

(assert (=> b!1685348 (= res!755571 (not ((_ is Nil!18463) (++!5051 lt!638185 lt!638165))))))

(assert (= (and d!513104 (not res!755572)) b!1685348))

(assert (= (and b!1685348 res!755571) b!1685349))

(assert (= (and b!1685349 res!755574) b!1685350))

(assert (= (and d!513104 (not res!755573)) b!1685351))

(assert (=> b!1685349 m!2064183))

(assert (=> b!1685349 m!2063469))

(assert (=> b!1685349 m!2066653))

(assert (=> b!1685350 m!2064187))

(assert (=> b!1685350 m!2063469))

(assert (=> b!1685350 m!2066657))

(assert (=> b!1685350 m!2064187))

(assert (=> b!1685350 m!2066657))

(declare-fun m!2067559 () Bool)

(assert (=> b!1685350 m!2067559))

(assert (=> b!1685351 m!2063469))

(assert (=> b!1685351 m!2066661))

(assert (=> b!1685351 m!2063981))

(assert (=> d!512244 d!513104))

(assert (=> d!512244 d!512254))

(declare-fun d!513106 () Bool)

(assert (=> d!513106 (isPrefix!1509 lt!638185 (++!5051 lt!638185 lt!638165))))

(assert (=> d!513106 true))

(declare-fun _$46!1149 () Unit!31713)

(assert (=> d!513106 (= (choose!10171 lt!638185 lt!638165) _$46!1149)))

(declare-fun bs!399526 () Bool)

(assert (= bs!399526 d!513106))

(assert (=> bs!399526 m!2063469))

(assert (=> bs!399526 m!2063469))

(assert (=> bs!399526 m!2064195))

(assert (=> d!512244 d!513106))

(declare-fun d!513108 () Bool)

(declare-fun res!755579 () Bool)

(declare-fun e!1079008 () Bool)

(assert (=> d!513108 (=> res!755579 e!1079008)))

(assert (=> d!513108 (= res!755579 ((_ is Nil!18466) rules!1846))))

(assert (=> d!513108 (= (noDuplicateTag!1204 thiss!17113 rules!1846 Nil!18468) e!1079008)))

(declare-fun b!1685356 () Bool)

(declare-fun e!1079009 () Bool)

(assert (=> b!1685356 (= e!1079008 e!1079009)))

(declare-fun res!755580 () Bool)

(assert (=> b!1685356 (=> (not res!755580) (not e!1079009))))

(declare-fun contains!3246 (List!18538 String!21037) Bool)

(assert (=> b!1685356 (= res!755580 (not (contains!3246 Nil!18468 (tag!3539 (h!23867 rules!1846)))))))

(declare-fun b!1685357 () Bool)

(assert (=> b!1685357 (= e!1079009 (noDuplicateTag!1204 thiss!17113 (t!154513 rules!1846) (Cons!18468 (tag!3539 (h!23867 rules!1846)) Nil!18468)))))

(assert (= (and d!513108 (not res!755579)) b!1685356))

(assert (= (and b!1685356 res!755580) b!1685357))

(declare-fun m!2067561 () Bool)

(assert (=> b!1685356 m!2067561))

(declare-fun m!2067563 () Bool)

(assert (=> b!1685357 m!2067563))

(assert (=> b!1683438 d!513108))

(declare-fun d!513110 () Bool)

(declare-fun lt!639613 () Int)

(assert (=> d!513110 (>= lt!639613 0)))

(declare-fun e!1079010 () Int)

(assert (=> d!513110 (= lt!639613 e!1079010)))

(declare-fun c!275227 () Bool)

(assert (=> d!513110 (= c!275227 ((_ is Nil!18463) (_2!10502 (get!5414 lt!638321))))))

(assert (=> d!513110 (= (size!14706 (_2!10502 (get!5414 lt!638321))) lt!639613)))

(declare-fun b!1685358 () Bool)

(assert (=> b!1685358 (= e!1079010 0)))

(declare-fun b!1685359 () Bool)

(assert (=> b!1685359 (= e!1079010 (+ 1 (size!14706 (t!154510 (_2!10502 (get!5414 lt!638321))))))))

(assert (= (and d!513110 c!275227) b!1685358))

(assert (= (and d!513110 (not c!275227)) b!1685359))

(declare-fun m!2067565 () Bool)

(assert (=> b!1685359 m!2067565))

(assert (=> b!1683559 d!513110))

(assert (=> b!1683559 d!512590))

(assert (=> b!1683559 d!513036))

(declare-fun d!513112 () Bool)

(declare-fun e!1079011 () Bool)

(assert (=> d!513112 e!1079011))

(declare-fun res!755581 () Bool)

(assert (=> d!513112 (=> (not res!755581) (not e!1079011))))

(declare-fun lt!639614 () BalanceConc!12244)

(assert (=> d!513112 (= res!755581 (= (list!7415 lt!639614) lt!638185))))

(assert (=> d!513112 (= lt!639614 (BalanceConc!12245 (fromList!421 lt!638185)))))

(assert (=> d!513112 (= (fromListB!1025 lt!638185) lt!639614)))

(declare-fun b!1685360 () Bool)

(assert (=> b!1685360 (= e!1079011 (isBalanced!1926 (fromList!421 lt!638185)))))

(assert (= (and d!513112 res!755581) b!1685360))

(declare-fun m!2067567 () Bool)

(assert (=> d!513112 m!2067567))

(declare-fun m!2067569 () Bool)

(assert (=> d!513112 m!2067569))

(assert (=> b!1685360 m!2067569))

(assert (=> b!1685360 m!2067569))

(declare-fun m!2067571 () Bool)

(assert (=> b!1685360 m!2067571))

(assert (=> d!512144 d!513112))

(declare-fun d!513114 () Bool)

(declare-fun lt!639615 () Int)

(assert (=> d!513114 (= lt!639615 (size!14706 (list!7415 (_2!10501 lt!638227))))))

(assert (=> d!513114 (= lt!639615 (size!14709 (c!274779 (_2!10501 lt!638227))))))

(assert (=> d!513114 (= (size!14705 (_2!10501 lt!638227)) lt!639615)))

(declare-fun bs!399527 () Bool)

(assert (= bs!399527 d!513114))

(assert (=> bs!399527 m!2063667))

(assert (=> bs!399527 m!2063667))

(declare-fun m!2067573 () Bool)

(assert (=> bs!399527 m!2067573))

(declare-fun m!2067575 () Bool)

(assert (=> bs!399527 m!2067575))

(assert (=> b!1683434 d!513114))

(declare-fun d!513116 () Bool)

(declare-fun lt!639616 () Int)

(assert (=> d!513116 (= lt!639616 (size!14706 (list!7415 (seqFromList!2240 lt!638185))))))

(assert (=> d!513116 (= lt!639616 (size!14709 (c!274779 (seqFromList!2240 lt!638185))))))

(assert (=> d!513116 (= (size!14705 (seqFromList!2240 lt!638185)) lt!639616)))

(declare-fun bs!399528 () Bool)

(assert (= bs!399528 d!513116))

(assert (=> bs!399528 m!2063447))

(assert (=> bs!399528 m!2063663))

(assert (=> bs!399528 m!2063663))

(assert (=> bs!399528 m!2065657))

(declare-fun m!2067577 () Bool)

(assert (=> bs!399528 m!2067577))

(assert (=> b!1683434 d!513116))

(declare-fun d!513118 () Bool)

(declare-fun lt!639617 () Int)

(assert (=> d!513118 (>= lt!639617 0)))

(declare-fun e!1079012 () Int)

(assert (=> d!513118 (= lt!639617 e!1079012)))

(declare-fun c!275228 () Bool)

(assert (=> d!513118 (= c!275228 ((_ is Nil!18463) lt!638521))))

(assert (=> d!513118 (= (size!14706 lt!638521) lt!639617)))

(declare-fun b!1685361 () Bool)

(assert (=> b!1685361 (= e!1079012 0)))

(declare-fun b!1685362 () Bool)

(assert (=> b!1685362 (= e!1079012 (+ 1 (size!14706 (t!154510 lt!638521))))))

(assert (= (and d!513118 c!275228) b!1685361))

(assert (= (and d!513118 (not c!275228)) b!1685362))

(declare-fun m!2067579 () Bool)

(assert (=> b!1685362 m!2067579))

(assert (=> b!1683661 d!513118))

(assert (=> b!1683661 d!512554))

(declare-fun d!513120 () Bool)

(declare-fun lt!639618 () Int)

(assert (=> d!513120 (>= lt!639618 0)))

(declare-fun e!1079013 () Int)

(assert (=> d!513120 (= lt!639618 e!1079013)))

(declare-fun c!275229 () Bool)

(assert (=> d!513120 (= c!275229 ((_ is Nil!18463) lt!638165))))

(assert (=> d!513120 (= (size!14706 lt!638165) lt!639618)))

(declare-fun b!1685363 () Bool)

(assert (=> b!1685363 (= e!1079013 0)))

(declare-fun b!1685364 () Bool)

(assert (=> b!1685364 (= e!1079013 (+ 1 (size!14706 (t!154510 lt!638165))))))

(assert (= (and d!513120 c!275229) b!1685363))

(assert (= (and d!513120 (not c!275229)) b!1685364))

(declare-fun m!2067581 () Bool)

(assert (=> b!1685364 m!2067581))

(assert (=> b!1683661 d!513120))

(assert (=> d!512232 d!512312))

(assert (=> d!512232 d!512632))

(assert (=> d!512232 d!512634))

(assert (=> d!512232 d!512262))

(declare-fun d!513122 () Bool)

(assert (=> d!513122 (= (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457)))))) (list!7419 (c!274781 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 tokens!457))))))))))

(declare-fun bs!399529 () Bool)

(assert (= bs!399529 d!513122))

(declare-fun m!2067583 () Bool)

(assert (=> bs!399529 m!2067583))

(assert (=> d!512232 d!513122))

(declare-fun d!513124 () Bool)

(assert (=> d!513124 (= (list!7415 lt!638519) (list!7420 (c!274779 lt!638519)))))

(declare-fun bs!399530 () Bool)

(assert (= bs!399530 d!513124))

(declare-fun m!2067585 () Bool)

(assert (=> bs!399530 m!2067585))

(assert (=> d!512246 d!513124))

(declare-fun d!513126 () Bool)

(declare-fun c!275230 () Bool)

(assert (=> d!513126 (= c!275230 ((_ is Cons!18465) (list!7416 (seqFromList!2239 tokens!457))))))

(declare-fun e!1079014 () List!18533)

(assert (=> d!513126 (= (printList!993 thiss!17113 (list!7416 (seqFromList!2239 tokens!457))) e!1079014)))

(declare-fun b!1685365 () Bool)

(assert (=> b!1685365 (= e!1079014 (++!5051 (list!7415 (charsOf!1900 (h!23866 (list!7416 (seqFromList!2239 tokens!457))))) (printList!993 thiss!17113 (t!154512 (list!7416 (seqFromList!2239 tokens!457))))))))

(declare-fun b!1685366 () Bool)

(assert (=> b!1685366 (= e!1079014 Nil!18463)))

(assert (= (and d!513126 c!275230) b!1685365))

(assert (= (and d!513126 (not c!275230)) b!1685366))

(declare-fun m!2067587 () Bool)

(assert (=> b!1685365 m!2067587))

(assert (=> b!1685365 m!2067587))

(declare-fun m!2067589 () Bool)

(assert (=> b!1685365 m!2067589))

(declare-fun m!2067591 () Bool)

(assert (=> b!1685365 m!2067591))

(assert (=> b!1685365 m!2067589))

(assert (=> b!1685365 m!2067591))

(declare-fun m!2067593 () Bool)

(assert (=> b!1685365 m!2067593))

(assert (=> d!512246 d!513126))

(declare-fun d!513128 () Bool)

(assert (=> d!513128 (= (list!7416 (seqFromList!2239 tokens!457)) (list!7419 (c!274781 (seqFromList!2239 tokens!457))))))

(declare-fun bs!399531 () Bool)

(assert (= bs!399531 d!513128))

(declare-fun m!2067595 () Bool)

(assert (=> bs!399531 m!2067595))

(assert (=> d!512246 d!513128))

(declare-fun d!513130 () Bool)

(declare-fun lt!639623 () BalanceConc!12244)

(assert (=> d!513130 (= (list!7415 lt!639623) (printListTailRec!424 thiss!17113 (dropList!734 (seqFromList!2239 tokens!457) 0) (list!7415 (BalanceConc!12245 Empty!6150))))))

(declare-fun e!1079015 () BalanceConc!12244)

(assert (=> d!513130 (= lt!639623 e!1079015)))

(declare-fun c!275231 () Bool)

(assert (=> d!513130 (= c!275231 (>= 0 (size!14704 (seqFromList!2239 tokens!457))))))

(declare-fun e!1079016 () Bool)

(assert (=> d!513130 e!1079016))

(declare-fun res!755582 () Bool)

(assert (=> d!513130 (=> (not res!755582) (not e!1079016))))

(assert (=> d!513130 (= res!755582 (>= 0 0))))

(assert (=> d!513130 (= (printTailRec!931 thiss!17113 (seqFromList!2239 tokens!457) 0 (BalanceConc!12245 Empty!6150)) lt!639623)))

(declare-fun b!1685367 () Bool)

(assert (=> b!1685367 (= e!1079016 (<= 0 (size!14704 (seqFromList!2239 tokens!457))))))

(declare-fun b!1685368 () Bool)

(assert (=> b!1685368 (= e!1079015 (BalanceConc!12245 Empty!6150))))

(declare-fun b!1685369 () Bool)

(assert (=> b!1685369 (= e!1079015 (printTailRec!931 thiss!17113 (seqFromList!2239 tokens!457) (+ 0 1) (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 (seqFromList!2239 tokens!457) 0)))))))

(declare-fun lt!639622 () List!18535)

(assert (=> b!1685369 (= lt!639622 (list!7416 (seqFromList!2239 tokens!457)))))

(declare-fun lt!639619 () Unit!31713)

(assert (=> b!1685369 (= lt!639619 (lemmaDropApply!631 lt!639622 0))))

(assert (=> b!1685369 (= (head!3770 (drop!955 lt!639622 0)) (apply!5025 lt!639622 0))))

(declare-fun lt!639620 () Unit!31713)

(assert (=> b!1685369 (= lt!639620 lt!639619)))

(declare-fun lt!639621 () List!18535)

(assert (=> b!1685369 (= lt!639621 (list!7416 (seqFromList!2239 tokens!457)))))

(declare-fun lt!639625 () Unit!31713)

(assert (=> b!1685369 (= lt!639625 (lemmaDropTail!611 lt!639621 0))))

(assert (=> b!1685369 (= (tail!2513 (drop!955 lt!639621 0)) (drop!955 lt!639621 (+ 0 1)))))

(declare-fun lt!639624 () Unit!31713)

(assert (=> b!1685369 (= lt!639624 lt!639625)))

(assert (= (and d!513130 res!755582) b!1685367))

(assert (= (and d!513130 c!275231) b!1685368))

(assert (= (and d!513130 (not c!275231)) b!1685369))

(declare-fun m!2067597 () Bool)

(assert (=> d!513130 m!2067597))

(assert (=> d!513130 m!2063475))

(declare-fun m!2067599 () Bool)

(assert (=> d!513130 m!2067599))

(assert (=> d!513130 m!2063475))

(declare-fun m!2067601 () Bool)

(assert (=> d!513130 m!2067601))

(assert (=> d!513130 m!2064413))

(assert (=> d!513130 m!2067599))

(assert (=> d!513130 m!2064413))

(declare-fun m!2067603 () Bool)

(assert (=> d!513130 m!2067603))

(assert (=> b!1685367 m!2063475))

(assert (=> b!1685367 m!2067601))

(declare-fun m!2067605 () Bool)

(assert (=> b!1685369 m!2067605))

(declare-fun m!2067607 () Bool)

(assert (=> b!1685369 m!2067607))

(declare-fun m!2067609 () Bool)

(assert (=> b!1685369 m!2067609))

(declare-fun m!2067611 () Bool)

(assert (=> b!1685369 m!2067611))

(declare-fun m!2067613 () Bool)

(assert (=> b!1685369 m!2067613))

(declare-fun m!2067615 () Bool)

(assert (=> b!1685369 m!2067615))

(declare-fun m!2067617 () Bool)

(assert (=> b!1685369 m!2067617))

(assert (=> b!1685369 m!2067611))

(assert (=> b!1685369 m!2063475))

(assert (=> b!1685369 m!2067613))

(declare-fun m!2067619 () Bool)

(assert (=> b!1685369 m!2067619))

(assert (=> b!1685369 m!2063475))

(assert (=> b!1685369 m!2067617))

(declare-fun m!2067621 () Bool)

(assert (=> b!1685369 m!2067621))

(assert (=> b!1685369 m!2067605))

(declare-fun m!2067623 () Bool)

(assert (=> b!1685369 m!2067623))

(declare-fun m!2067625 () Bool)

(assert (=> b!1685369 m!2067625))

(assert (=> b!1685369 m!2063475))

(assert (=> b!1685369 m!2064201))

(assert (=> b!1685369 m!2067623))

(declare-fun m!2067627 () Bool)

(assert (=> b!1685369 m!2067627))

(assert (=> d!512246 d!513130))

(declare-fun d!513132 () Bool)

(declare-fun c!275232 () Bool)

(assert (=> d!513132 (= c!275232 ((_ is Node!6150) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun e!1079017 () Bool)

(assert (=> d!513132 (= (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))) e!1079017)))

(declare-fun b!1685370 () Bool)

(assert (=> b!1685370 (= e!1079017 (inv!23833 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1685371 () Bool)

(declare-fun e!1079018 () Bool)

(assert (=> b!1685371 (= e!1079017 e!1079018)))

(declare-fun res!755583 () Bool)

(assert (=> b!1685371 (= res!755583 (not ((_ is Leaf!8996) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))))))))

(assert (=> b!1685371 (=> res!755583 e!1079018)))

(declare-fun b!1685372 () Bool)

(assert (=> b!1685372 (= e!1079018 (inv!23834 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))))))

(assert (= (and d!513132 c!275232) b!1685370))

(assert (= (and d!513132 (not c!275232)) b!1685371))

(assert (= (and b!1685371 (not res!755583)) b!1685372))

(declare-fun m!2067629 () Bool)

(assert (=> b!1685370 m!2067629))

(declare-fun m!2067631 () Bool)

(assert (=> b!1685372 m!2067631))

(assert (=> b!1683884 d!513132))

(declare-fun d!513134 () Bool)

(declare-fun lt!639628 () C!9332)

(declare-fun contains!3247 (List!18533 C!9332) Bool)

(assert (=> d!513134 (contains!3247 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) lt!639628)))

(declare-fun e!1079023 () C!9332)

(assert (=> d!513134 (= lt!639628 e!1079023)))

(declare-fun c!275235 () Bool)

(assert (=> d!513134 (= c!275235 (= 0 0))))

(declare-fun e!1079024 () Bool)

(assert (=> d!513134 e!1079024))

(declare-fun res!755586 () Bool)

(assert (=> d!513134 (=> (not res!755586) (not e!1079024))))

(assert (=> d!513134 (= res!755586 (<= 0 0))))

(assert (=> d!513134 (= (apply!5026 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) 0) lt!639628)))

(declare-fun b!1685379 () Bool)

(assert (=> b!1685379 (= e!1079024 (< 0 (size!14706 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1685380 () Bool)

(assert (=> b!1685380 (= e!1079023 (head!3766 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685381 () Bool)

(assert (=> b!1685381 (= e!1079023 (apply!5026 (tail!2512 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) (- 0 1)))))

(assert (= (and d!513134 res!755586) b!1685379))

(assert (= (and d!513134 c!275235) b!1685380))

(assert (= (and d!513134 (not c!275235)) b!1685381))

(assert (=> d!513134 m!2064115))

(declare-fun m!2067633 () Bool)

(assert (=> d!513134 m!2067633))

(assert (=> b!1685379 m!2064115))

(assert (=> b!1685379 m!2065361))

(assert (=> b!1685380 m!2064115))

(declare-fun m!2067635 () Bool)

(assert (=> b!1685380 m!2067635))

(assert (=> b!1685381 m!2064115))

(declare-fun m!2067637 () Bool)

(assert (=> b!1685381 m!2067637))

(assert (=> b!1685381 m!2067637))

(declare-fun m!2067639 () Bool)

(assert (=> b!1685381 m!2067639))

(assert (=> d!512346 d!513134))

(declare-fun d!513136 () Bool)

(assert (=> d!513136 (= (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7420 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun bs!399532 () Bool)

(assert (= bs!399532 d!513136))

(declare-fun m!2067641 () Bool)

(assert (=> bs!399532 m!2067641))

(assert (=> d!512346 d!513136))

(declare-fun b!1685396 () Bool)

(declare-fun e!1079033 () C!9332)

(assert (=> b!1685396 (= e!1079033 (apply!5028 (xs!9006 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) 0))))

(declare-fun d!513138 () Bool)

(declare-fun lt!639634 () C!9332)

(assert (=> d!513138 (= lt!639634 (apply!5026 (list!7420 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) 0))))

(assert (=> d!513138 (= lt!639634 e!1079033)))

(declare-fun c!275243 () Bool)

(assert (=> d!513138 (= c!275243 ((_ is Leaf!8996) (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun e!1079035 () Bool)

(assert (=> d!513138 e!1079035))

(declare-fun res!755589 () Bool)

(assert (=> d!513138 (=> (not res!755589) (not e!1079035))))

(assert (=> d!513138 (= res!755589 (<= 0 0))))

(assert (=> d!513138 (= (apply!5027 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) 0) lt!639634)))

(declare-fun bm!107755 () Bool)

(declare-fun c!275242 () Bool)

(declare-fun c!275244 () Bool)

(assert (=> bm!107755 (= c!275242 c!275244)))

(declare-fun call!107760 () C!9332)

(declare-fun e!1079036 () Int)

(assert (=> bm!107755 (= call!107760 (apply!5027 (ite c!275244 (left!14761 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) (right!15091 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))) e!1079036))))

(declare-fun b!1685397 () Bool)

(declare-fun e!1079034 () C!9332)

(assert (=> b!1685397 (= e!1079034 call!107760)))

(declare-fun b!1685398 () Bool)

(assert (=> b!1685398 (= e!1079034 call!107760)))

(declare-fun b!1685399 () Bool)

(assert (=> b!1685399 (= e!1079033 e!1079034)))

(declare-fun lt!639633 () Bool)

(declare-fun appendIndex!223 (List!18533 List!18533 Int) Bool)

(assert (=> b!1685399 (= lt!639633 (appendIndex!223 (list!7420 (left!14761 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))) (list!7420 (right!15091 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))) 0))))

(assert (=> b!1685399 (= c!275244 (< 0 (size!14709 (left!14761 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))))

(declare-fun b!1685400 () Bool)

(assert (=> b!1685400 (= e!1079035 (< 0 (size!14709 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1685401 () Bool)

(assert (=> b!1685401 (= e!1079036 (- 0 (size!14709 (left!14761 (c!274779 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))))

(declare-fun b!1685402 () Bool)

(assert (=> b!1685402 (= e!1079036 0)))

(assert (= (and d!513138 res!755589) b!1685400))

(assert (= (and d!513138 c!275243) b!1685396))

(assert (= (and d!513138 (not c!275243)) b!1685399))

(assert (= (and b!1685399 c!275244) b!1685397))

(assert (= (and b!1685399 (not c!275244)) b!1685398))

(assert (= (or b!1685397 b!1685398) bm!107755))

(assert (= (and bm!107755 c!275242) b!1685402))

(assert (= (and bm!107755 (not c!275242)) b!1685401))

(declare-fun m!2067643 () Bool)

(assert (=> b!1685396 m!2067643))

(declare-fun m!2067645 () Bool)

(assert (=> bm!107755 m!2067645))

(declare-fun m!2067647 () Bool)

(assert (=> b!1685401 m!2067647))

(declare-fun m!2067649 () Bool)

(assert (=> b!1685399 m!2067649))

(declare-fun m!2067651 () Bool)

(assert (=> b!1685399 m!2067651))

(assert (=> b!1685399 m!2067649))

(assert (=> b!1685399 m!2067651))

(declare-fun m!2067653 () Bool)

(assert (=> b!1685399 m!2067653))

(assert (=> b!1685399 m!2067647))

(assert (=> b!1685400 m!2065363))

(assert (=> d!513138 m!2067641))

(assert (=> d!513138 m!2067641))

(declare-fun m!2067655 () Bool)

(assert (=> d!513138 m!2067655))

(assert (=> d!512346 d!513138))

(declare-fun d!513140 () Bool)

(declare-fun lt!639635 () Bool)

(assert (=> d!513140 (= lt!639635 (isEmpty!11544 (list!7416 (_1!10501 lt!638227))))))

(assert (=> d!513140 (= lt!639635 (isEmpty!11545 (c!274781 (_1!10501 lt!638227))))))

(assert (=> d!513140 (= (isEmpty!11536 (_1!10501 lt!638227)) lt!639635)))

(declare-fun bs!399533 () Bool)

(assert (= bs!399533 d!513140))

(assert (=> bs!399533 m!2063661))

(assert (=> bs!399533 m!2063661))

(declare-fun m!2067657 () Bool)

(assert (=> bs!399533 m!2067657))

(declare-fun m!2067659 () Bool)

(assert (=> bs!399533 m!2067659))

(assert (=> b!1683431 d!513140))

(declare-fun d!513142 () Bool)

(declare-fun res!755590 () Bool)

(declare-fun e!1079038 () Bool)

(assert (=> d!513142 (=> res!755590 e!1079038)))

(assert (=> d!513142 (= res!755590 (or (not ((_ is Cons!18465) (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))) (not ((_ is Cons!18465) (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))))))))

(assert (=> d!513142 (= (tokensListTwoByTwoPredicateSeparableList!573 thiss!17113 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))) rules!1846) e!1079038)))

(declare-fun b!1685403 () Bool)

(declare-fun e!1079037 () Bool)

(assert (=> b!1685403 (= e!1079038 e!1079037)))

(declare-fun res!755591 () Bool)

(assert (=> b!1685403 (=> (not res!755591) (not e!1079037))))

(assert (=> b!1685403 (= res!755591 (separableTokensPredicate!820 thiss!17113 (h!23866 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))) rules!1846))))

(declare-fun lt!639641 () Unit!31713)

(declare-fun Unit!31775 () Unit!31713)

(assert (=> b!1685403 (= lt!639641 Unit!31775)))

(assert (=> b!1685403 (> (size!14705 (charsOf!1900 (h!23866 (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))))) 0)))

(declare-fun lt!639640 () Unit!31713)

(declare-fun Unit!31776 () Unit!31713)

(assert (=> b!1685403 (= lt!639640 Unit!31776)))

(assert (=> b!1685403 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!639642 () Unit!31713)

(declare-fun Unit!31777 () Unit!31713)

(assert (=> b!1685403 (= lt!639642 Unit!31777)))

(assert (=> b!1685403 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)))))))

(declare-fun lt!639639 () Unit!31713)

(declare-fun lt!639637 () Unit!31713)

(assert (=> b!1685403 (= lt!639639 lt!639637)))

(assert (=> b!1685403 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))))))

(assert (=> b!1685403 (= lt!639637 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!640 thiss!17113 rules!1846 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)))))))))

(declare-fun lt!639636 () Unit!31713)

(declare-fun lt!639638 () Unit!31713)

(assert (=> b!1685403 (= lt!639636 lt!639638)))

(assert (=> b!1685403 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)))))))

(assert (=> b!1685403 (= lt!639638 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!640 thiss!17113 rules!1846 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))) (h!23866 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))))))

(declare-fun b!1685404 () Bool)

(assert (=> b!1685404 (= e!1079037 (tokensListTwoByTwoPredicateSeparableList!573 thiss!17113 (Cons!18465 (h!23866 (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457))))) (t!154512 (t!154512 (Cons!18465 (h!23866 (t!154512 tokens!457)) (t!154512 (t!154512 tokens!457)))))) rules!1846))))

(assert (= (and d!513142 (not res!755590)) b!1685403))

(assert (= (and b!1685403 res!755591) b!1685404))

(declare-fun m!2067661 () Bool)

(assert (=> b!1685403 m!2067661))

(declare-fun m!2067663 () Bool)

(assert (=> b!1685403 m!2067663))

(declare-fun m!2067665 () Bool)

(assert (=> b!1685403 m!2067665))

(declare-fun m!2067667 () Bool)

(assert (=> b!1685403 m!2067667))

(assert (=> b!1685403 m!2067667))

(declare-fun m!2067669 () Bool)

(assert (=> b!1685403 m!2067669))

(declare-fun m!2067671 () Bool)

(assert (=> b!1685403 m!2067671))

(declare-fun m!2067673 () Bool)

(assert (=> b!1685403 m!2067673))

(declare-fun m!2067675 () Bool)

(assert (=> b!1685404 m!2067675))

(assert (=> b!1683683 d!513142))

(declare-fun d!513144 () Bool)

(assert (=> d!513144 (= (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))) (not (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun bs!399534 () Bool)

(assert (= bs!399534 d!513144))

(assert (=> bs!399534 m!2064153))

(declare-fun m!2067677 () Bool)

(assert (=> bs!399534 m!2067677))

(assert (=> b!1683640 d!513144))

(declare-fun b!1685405 () Bool)

(declare-fun res!755592 () Bool)

(declare-fun e!1079044 () Bool)

(assert (=> b!1685405 (=> res!755592 e!1079044)))

(assert (=> b!1685405 (= res!755592 (not (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))))

(declare-fun b!1685406 () Bool)

(declare-fun e!1079041 () Bool)

(assert (=> b!1685406 (= e!1079041 (matchR!2070 (derivativeStep!1138 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))) (head!3766 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))) (tail!2512 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1685407 () Bool)

(declare-fun res!755593 () Bool)

(declare-fun e!1079045 () Bool)

(assert (=> b!1685407 (=> (not res!755593) (not e!1079045))))

(assert (=> b!1685407 (= res!755593 (isEmpty!11547 (tail!2512 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1685408 () Bool)

(declare-fun e!1079042 () Bool)

(declare-fun e!1079040 () Bool)

(assert (=> b!1685408 (= e!1079042 e!1079040)))

(declare-fun c!275247 () Bool)

(assert (=> b!1685408 (= c!275247 ((_ is EmptyLang!4579) (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685409 () Bool)

(assert (=> b!1685409 (= e!1079041 (nullable!1367 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685410 () Bool)

(assert (=> b!1685410 (= e!1079045 (= (head!3766 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) (c!274780 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1685411 () Bool)

(declare-fun e!1079039 () Bool)

(declare-fun e!1079043 () Bool)

(assert (=> b!1685411 (= e!1079039 e!1079043)))

(declare-fun res!755595 () Bool)

(assert (=> b!1685411 (=> (not res!755595) (not e!1079043))))

(declare-fun lt!639643 () Bool)

(assert (=> b!1685411 (= res!755595 (not lt!639643))))

(declare-fun b!1685412 () Bool)

(declare-fun res!755598 () Bool)

(assert (=> b!1685412 (=> res!755598 e!1079039)))

(assert (=> b!1685412 (= res!755598 (not ((_ is ElementMatch!4579) (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))))))

(assert (=> b!1685412 (= e!1079040 e!1079039)))

(declare-fun b!1685414 () Bool)

(declare-fun call!107761 () Bool)

(assert (=> b!1685414 (= e!1079042 (= lt!639643 call!107761))))

(declare-fun b!1685415 () Bool)

(assert (=> b!1685415 (= e!1079040 (not lt!639643))))

(declare-fun b!1685416 () Bool)

(assert (=> b!1685416 (= e!1079043 e!1079044)))

(declare-fun res!755599 () Bool)

(assert (=> b!1685416 (=> res!755599 e!1079044)))

(assert (=> b!1685416 (= res!755599 call!107761)))

(declare-fun bm!107756 () Bool)

(assert (=> bm!107756 (= call!107761 (isEmpty!11547 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685417 () Bool)

(assert (=> b!1685417 (= e!1079044 (not (= (head!3766 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) (c!274780 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))))))

(declare-fun b!1685418 () Bool)

(declare-fun res!755597 () Bool)

(assert (=> b!1685418 (=> res!755597 e!1079039)))

(assert (=> b!1685418 (= res!755597 e!1079045)))

(declare-fun res!755596 () Bool)

(assert (=> b!1685418 (=> (not res!755596) (not e!1079045))))

(assert (=> b!1685418 (= res!755596 lt!639643)))

(declare-fun b!1685413 () Bool)

(declare-fun res!755594 () Bool)

(assert (=> b!1685413 (=> (not res!755594) (not e!1079045))))

(assert (=> b!1685413 (= res!755594 (not call!107761))))

(declare-fun d!513146 () Bool)

(assert (=> d!513146 e!1079042))

(declare-fun c!275246 () Bool)

(assert (=> d!513146 (= c!275246 ((_ is EmptyExpr!4579) (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!513146 (= lt!639643 e!1079041)))

(declare-fun c!275245 () Bool)

(assert (=> d!513146 (= c!275245 (isEmpty!11547 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!513146 (validRegex!1840 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!513146 (= (matchR!2070 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) lt!639643)))

(assert (= (and d!513146 c!275245) b!1685409))

(assert (= (and d!513146 (not c!275245)) b!1685406))

(assert (= (and d!513146 c!275246) b!1685414))

(assert (= (and d!513146 (not c!275246)) b!1685408))

(assert (= (and b!1685408 c!275247) b!1685415))

(assert (= (and b!1685408 (not c!275247)) b!1685412))

(assert (= (and b!1685412 (not res!755598)) b!1685418))

(assert (= (and b!1685418 res!755596) b!1685413))

(assert (= (and b!1685413 res!755594) b!1685407))

(assert (= (and b!1685407 res!755593) b!1685410))

(assert (= (and b!1685418 (not res!755597)) b!1685411))

(assert (= (and b!1685411 res!755595) b!1685416))

(assert (= (and b!1685416 (not res!755599)) b!1685405))

(assert (= (and b!1685405 (not res!755592)) b!1685417))

(assert (= (or b!1685414 b!1685413 b!1685416) bm!107756))

(assert (=> d!513146 m!2064115))

(declare-fun m!2067679 () Bool)

(assert (=> d!513146 m!2067679))

(declare-fun m!2067681 () Bool)

(assert (=> d!513146 m!2067681))

(declare-fun m!2067683 () Bool)

(assert (=> b!1685409 m!2067683))

(assert (=> b!1685410 m!2064115))

(assert (=> b!1685410 m!2067635))

(assert (=> b!1685417 m!2064115))

(assert (=> b!1685417 m!2067635))

(assert (=> b!1685407 m!2064115))

(assert (=> b!1685407 m!2067637))

(assert (=> b!1685407 m!2067637))

(declare-fun m!2067685 () Bool)

(assert (=> b!1685407 m!2067685))

(assert (=> bm!107756 m!2064115))

(assert (=> bm!107756 m!2067679))

(assert (=> b!1685405 m!2064115))

(assert (=> b!1685405 m!2067637))

(assert (=> b!1685405 m!2067637))

(assert (=> b!1685405 m!2067685))

(assert (=> b!1685406 m!2064115))

(assert (=> b!1685406 m!2067635))

(assert (=> b!1685406 m!2067635))

(declare-fun m!2067687 () Bool)

(assert (=> b!1685406 m!2067687))

(assert (=> b!1685406 m!2064115))

(assert (=> b!1685406 m!2067637))

(assert (=> b!1685406 m!2067687))

(assert (=> b!1685406 m!2067637))

(declare-fun m!2067689 () Bool)

(assert (=> b!1685406 m!2067689))

(assert (=> b!1683640 d!513146))

(declare-fun d!513148 () Bool)

(declare-fun lt!639644 () C!9332)

(assert (=> d!513148 (= lt!639644 (head!3766 (list!7415 lt!638489)))))

(assert (=> d!513148 (= lt!639644 (head!3769 (c!274779 lt!638489)))))

(assert (=> d!513148 (not (isEmpty!11549 lt!638489))))

(assert (=> d!513148 (= (head!3765 lt!638489) lt!639644)))

(declare-fun bs!399535 () Bool)

(assert (= bs!399535 d!513148))

(assert (=> bs!399535 m!2064119))

(assert (=> bs!399535 m!2064119))

(assert (=> bs!399535 m!2064131))

(declare-fun m!2067691 () Bool)

(assert (=> bs!399535 m!2067691))

(declare-fun m!2067693 () Bool)

(assert (=> bs!399535 m!2067693))

(assert (=> b!1683640 d!513148))

(declare-fun d!513150 () Bool)

(assert (=> d!513150 (= (list!7415 lt!638489) (list!7420 (c!274779 lt!638489)))))

(declare-fun bs!399536 () Bool)

(assert (= bs!399536 d!513150))

(declare-fun m!2067695 () Bool)

(assert (=> bs!399536 m!2067695))

(assert (=> b!1683640 d!513150))

(declare-fun d!513152 () Bool)

(assert (=> d!513152 (= (head!3766 (originalCharacters!4065 (h!23866 (t!154512 (t!154512 tokens!457))))) (h!23864 (originalCharacters!4065 (h!23866 (t!154512 (t!154512 tokens!457))))))))

(assert (=> b!1683640 d!513152))

(declare-fun d!513154 () Bool)

(declare-fun e!1079046 () Bool)

(assert (=> d!513154 e!1079046))

(declare-fun res!755600 () Bool)

(assert (=> d!513154 (=> (not res!755600) (not e!1079046))))

(assert (=> d!513154 (= res!755600 (isBalanced!1924 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457))))) (h!23866 (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!639645 () BalanceConc!12246)

(assert (=> d!513154 (= lt!639645 (BalanceConc!12247 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457))))) (h!23866 (t!154512 (t!154512 tokens!457))))))))

(assert (=> d!513154 (= (prepend!845 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 (t!154512 tokens!457)))) lt!639645)))

(declare-fun b!1685419 () Bool)

(assert (=> b!1685419 (= e!1079046 (= (list!7416 lt!639645) (Cons!18465 (h!23866 (t!154512 (t!154512 tokens!457))) (list!7416 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457))))))))))

(assert (= (and d!513154 res!755600) b!1685419))

(declare-fun m!2067697 () Bool)

(assert (=> d!513154 m!2067697))

(assert (=> d!513154 m!2067697))

(declare-fun m!2067699 () Bool)

(assert (=> d!513154 m!2067699))

(declare-fun m!2067701 () Bool)

(assert (=> b!1685419 m!2067701))

(assert (=> b!1685419 m!2064143))

(declare-fun m!2067703 () Bool)

(assert (=> b!1685419 m!2067703))

(assert (=> b!1683640 d!513154))

(assert (=> b!1683640 d!512180))

(declare-fun d!513156 () Bool)

(assert (=> d!513156 (= (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457)))) (fromListB!1027 (t!154512 (t!154512 (t!154512 tokens!457)))))))

(declare-fun bs!399537 () Bool)

(assert (= bs!399537 d!513156))

(declare-fun m!2067705 () Bool)

(assert (=> bs!399537 m!2067705))

(assert (=> b!1683640 d!513156))

(declare-fun d!513158 () Bool)

(declare-fun lt!639646 () C!9332)

(assert (=> d!513158 (= lt!639646 (apply!5026 (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457))))) 0))))

(assert (=> d!513158 (= lt!639646 (apply!5027 (c!274779 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457))))) 0))))

(declare-fun e!1079047 () Bool)

(assert (=> d!513158 e!1079047))

(declare-fun res!755601 () Bool)

(assert (=> d!513158 (=> (not res!755601) (not e!1079047))))

(assert (=> d!513158 (= res!755601 (<= 0 0))))

(assert (=> d!513158 (= (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0) lt!639646)))

(declare-fun b!1685420 () Bool)

(assert (=> b!1685420 (= e!1079047 (< 0 (size!14705 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))))))))

(assert (= (and d!513158 res!755601) b!1685420))

(assert (=> d!513158 m!2064157))

(declare-fun m!2067707 () Bool)

(assert (=> d!513158 m!2067707))

(assert (=> d!513158 m!2067707))

(declare-fun m!2067709 () Bool)

(assert (=> d!513158 m!2067709))

(declare-fun m!2067711 () Bool)

(assert (=> d!513158 m!2067711))

(assert (=> b!1685420 m!2064157))

(declare-fun m!2067713 () Bool)

(assert (=> b!1685420 m!2067713))

(assert (=> b!1683640 d!513158))

(declare-fun b!1685421 () Bool)

(declare-fun res!755602 () Bool)

(declare-fun e!1079049 () Bool)

(assert (=> b!1685421 (=> (not res!755602) (not e!1079049))))

(declare-fun lt!639647 () Option!3558)

(assert (=> b!1685421 (= res!755602 (< (size!14706 (_2!10502 (get!5414 lt!639647))) (size!14706 (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))))))

(declare-fun d!513160 () Bool)

(declare-fun e!1079048 () Bool)

(assert (=> d!513160 e!1079048))

(declare-fun res!755606 () Bool)

(assert (=> d!513160 (=> res!755606 e!1079048)))

(assert (=> d!513160 (= res!755606 (isEmpty!11548 lt!639647))))

(declare-fun e!1079050 () Option!3558)

(assert (=> d!513160 (= lt!639647 e!1079050)))

(declare-fun c!275248 () Bool)

(assert (=> d!513160 (= c!275248 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!639648 () Unit!31713)

(declare-fun lt!639650 () Unit!31713)

(assert (=> d!513160 (= lt!639648 lt!639650)))

(assert (=> d!513160 (isPrefix!1509 (originalCharacters!4065 (h!23866 (t!154512 tokens!457))) (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))))

(assert (=> d!513160 (= lt!639650 (lemmaIsPrefixRefl!1028 (originalCharacters!4065 (h!23866 (t!154512 tokens!457))) (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!513160 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!513160 (= (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))) lt!639647)))

(declare-fun bm!107757 () Bool)

(declare-fun call!107762 () Option!3558)

(assert (=> bm!107757 (= call!107762 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))))))

(declare-fun b!1685422 () Bool)

(assert (=> b!1685422 (= e!1079049 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!639647)))))))

(declare-fun b!1685423 () Bool)

(assert (=> b!1685423 (= e!1079050 call!107762)))

(declare-fun b!1685424 () Bool)

(declare-fun res!755605 () Bool)

(assert (=> b!1685424 (=> (not res!755605) (not e!1079049))))

(assert (=> b!1685424 (= res!755605 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639647)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!639647)))))))

(declare-fun b!1685425 () Bool)

(assert (=> b!1685425 (= e!1079048 e!1079049)))

(declare-fun res!755603 () Bool)

(assert (=> b!1685425 (=> (not res!755603) (not e!1079049))))

(assert (=> b!1685425 (= res!755603 (isDefined!2907 lt!639647))))

(declare-fun b!1685426 () Bool)

(declare-fun res!755607 () Bool)

(assert (=> b!1685426 (=> (not res!755607) (not e!1079049))))

(assert (=> b!1685426 (= res!755607 (= (value!102326 (_1!10502 (get!5414 lt!639647))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!639647)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!639647)))))))))

(declare-fun b!1685427 () Bool)

(declare-fun res!755604 () Bool)

(assert (=> b!1685427 (=> (not res!755604) (not e!1079049))))

(assert (=> b!1685427 (= res!755604 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!639647)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639647))))))))

(declare-fun b!1685428 () Bool)

(declare-fun res!755608 () Bool)

(assert (=> b!1685428 (=> (not res!755608) (not e!1079049))))

(assert (=> b!1685428 (= res!755608 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639647)))) (_2!10502 (get!5414 lt!639647))) (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))))))

(declare-fun b!1685429 () Bool)

(declare-fun lt!639651 () Option!3558)

(declare-fun lt!639649 () Option!3558)

(assert (=> b!1685429 (= e!1079050 (ite (and ((_ is None!3557) lt!639651) ((_ is None!3557) lt!639649)) None!3557 (ite ((_ is None!3557) lt!639649) lt!639651 (ite ((_ is None!3557) lt!639651) lt!639649 (ite (>= (size!14700 (_1!10502 (v!24868 lt!639651))) (size!14700 (_1!10502 (v!24868 lt!639649)))) lt!639651 lt!639649)))))))

(assert (=> b!1685429 (= lt!639651 call!107762)))

(assert (=> b!1685429 (= lt!639649 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (originalCharacters!4065 (h!23866 (t!154512 tokens!457)))))))

(assert (= (and d!513160 c!275248) b!1685423))

(assert (= (and d!513160 (not c!275248)) b!1685429))

(assert (= (or b!1685423 b!1685429) bm!107757))

(assert (= (and d!513160 (not res!755606)) b!1685425))

(assert (= (and b!1685425 res!755603) b!1685424))

(assert (= (and b!1685424 res!755605) b!1685421))

(assert (= (and b!1685421 res!755602) b!1685428))

(assert (= (and b!1685428 res!755608) b!1685426))

(assert (= (and b!1685426 res!755607) b!1685427))

(assert (= (and b!1685427 res!755604) b!1685422))

(declare-fun m!2067715 () Bool)

(assert (=> b!1685426 m!2067715))

(declare-fun m!2067717 () Bool)

(assert (=> b!1685426 m!2067717))

(assert (=> b!1685426 m!2067717))

(declare-fun m!2067719 () Bool)

(assert (=> b!1685426 m!2067719))

(assert (=> b!1685424 m!2067715))

(declare-fun m!2067721 () Bool)

(assert (=> b!1685424 m!2067721))

(assert (=> b!1685424 m!2067721))

(declare-fun m!2067723 () Bool)

(assert (=> b!1685424 m!2067723))

(assert (=> b!1685428 m!2067715))

(assert (=> b!1685428 m!2067721))

(assert (=> b!1685428 m!2067721))

(assert (=> b!1685428 m!2067723))

(assert (=> b!1685428 m!2067723))

(declare-fun m!2067725 () Bool)

(assert (=> b!1685428 m!2067725))

(declare-fun m!2067727 () Bool)

(assert (=> bm!107757 m!2067727))

(assert (=> b!1685422 m!2067715))

(declare-fun m!2067729 () Bool)

(assert (=> b!1685422 m!2067729))

(assert (=> b!1685427 m!2067715))

(assert (=> b!1685427 m!2067721))

(assert (=> b!1685427 m!2067721))

(assert (=> b!1685427 m!2067723))

(assert (=> b!1685427 m!2067723))

(declare-fun m!2067731 () Bool)

(assert (=> b!1685427 m!2067731))

(declare-fun m!2067733 () Bool)

(assert (=> d!513160 m!2067733))

(declare-fun m!2067735 () Bool)

(assert (=> d!513160 m!2067735))

(declare-fun m!2067737 () Bool)

(assert (=> d!513160 m!2067737))

(assert (=> d!513160 m!2063751))

(declare-fun m!2067739 () Bool)

(assert (=> b!1685429 m!2067739))

(declare-fun m!2067741 () Bool)

(assert (=> b!1685425 m!2067741))

(assert (=> b!1685421 m!2067715))

(declare-fun m!2067743 () Bool)

(assert (=> b!1685421 m!2067743))

(assert (=> b!1685421 m!2066095))

(assert (=> b!1683640 d!513160))

(declare-fun d!513162 () Bool)

(assert (=> d!513162 (= (list!7415 lt!638496) (list!7420 (c!274779 lt!638496)))))

(declare-fun bs!399538 () Bool)

(assert (= bs!399538 d!513162))

(declare-fun m!2067745 () Bool)

(assert (=> bs!399538 m!2067745))

(assert (=> b!1683640 d!513162))

(assert (=> b!1683640 d!512350))

(declare-fun d!513164 () Bool)

(assert (=> d!513164 (= (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))) (v!24868 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))))

(assert (=> b!1683640 d!513164))

(assert (=> b!1683640 d!512262))

(declare-fun d!513166 () Bool)

(assert (=> d!513166 (isPrefix!1509 lt!638506 (++!5051 lt!638506 lt!638504))))

(declare-fun lt!639652 () Unit!31713)

(assert (=> d!513166 (= lt!639652 (choose!10171 lt!638506 lt!638504))))

(assert (=> d!513166 (= (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!638506 lt!638504) lt!639652)))

(declare-fun bs!399539 () Bool)

(assert (= bs!399539 d!513166))

(assert (=> bs!399539 m!2064171))

(assert (=> bs!399539 m!2064171))

(assert (=> bs!399539 m!2064175))

(declare-fun m!2067747 () Bool)

(assert (=> bs!399539 m!2067747))

(assert (=> b!1683640 d!513166))

(declare-fun b!1685430 () Bool)

(declare-fun e!1079053 () Bool)

(declare-fun lt!639653 () tuple2!18198)

(assert (=> b!1685430 (= e!1079053 (not (isEmpty!11536 (_1!10501 lt!639653))))))

(declare-fun e!1079052 () Bool)

(declare-fun b!1685431 () Bool)

(assert (=> b!1685431 (= e!1079052 (= (list!7415 (_2!10501 lt!639653)) (_2!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 lt!638489)))))))

(declare-fun d!513168 () Bool)

(assert (=> d!513168 e!1079052))

(declare-fun res!755609 () Bool)

(assert (=> d!513168 (=> (not res!755609) (not e!1079052))))

(declare-fun e!1079051 () Bool)

(assert (=> d!513168 (= res!755609 e!1079051)))

(declare-fun c!275249 () Bool)

(assert (=> d!513168 (= c!275249 (> (size!14704 (_1!10501 lt!639653)) 0))))

(assert (=> d!513168 (= lt!639653 (lexTailRecV2!628 thiss!17113 rules!1846 lt!638489 (BalanceConc!12245 Empty!6150) lt!638489 (BalanceConc!12247 Empty!6151)))))

(assert (=> d!513168 (= (lex!1364 thiss!17113 rules!1846 lt!638489) lt!639653)))

(declare-fun b!1685432 () Bool)

(assert (=> b!1685432 (= e!1079051 (= (_2!10501 lt!639653) lt!638489))))

(declare-fun b!1685433 () Bool)

(assert (=> b!1685433 (= e!1079051 e!1079053)))

(declare-fun res!755611 () Bool)

(assert (=> b!1685433 (= res!755611 (< (size!14705 (_2!10501 lt!639653)) (size!14705 lt!638489)))))

(assert (=> b!1685433 (=> (not res!755611) (not e!1079053))))

(declare-fun b!1685434 () Bool)

(declare-fun res!755610 () Bool)

(assert (=> b!1685434 (=> (not res!755610) (not e!1079052))))

(assert (=> b!1685434 (= res!755610 (= (list!7416 (_1!10501 lt!639653)) (_1!10505 (lexList!905 thiss!17113 rules!1846 (list!7415 lt!638489)))))))

(assert (= (and d!513168 c!275249) b!1685433))

(assert (= (and d!513168 (not c!275249)) b!1685432))

(assert (= (and b!1685433 res!755611) b!1685430))

(assert (= (and d!513168 res!755609) b!1685434))

(assert (= (and b!1685434 res!755610) b!1685431))

(declare-fun m!2067749 () Bool)

(assert (=> b!1685430 m!2067749))

(declare-fun m!2067751 () Bool)

(assert (=> b!1685434 m!2067751))

(assert (=> b!1685434 m!2064119))

(assert (=> b!1685434 m!2064119))

(declare-fun m!2067753 () Bool)

(assert (=> b!1685434 m!2067753))

(declare-fun m!2067755 () Bool)

(assert (=> b!1685431 m!2067755))

(assert (=> b!1685431 m!2064119))

(assert (=> b!1685431 m!2064119))

(assert (=> b!1685431 m!2067753))

(declare-fun m!2067757 () Bool)

(assert (=> b!1685433 m!2067757))

(declare-fun m!2067759 () Bool)

(assert (=> b!1685433 m!2067759))

(declare-fun m!2067761 () Bool)

(assert (=> d!513168 m!2067761))

(declare-fun m!2067763 () Bool)

(assert (=> d!513168 m!2067763))

(assert (=> b!1683640 d!513168))

(declare-fun d!513170 () Bool)

(assert (=> d!513170 (= (isEmpty!11547 (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))) ((_ is Nil!18463) (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))))))

(assert (=> b!1683640 d!513170))

(declare-fun d!513172 () Bool)

(assert (=> d!513172 (= (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0))) (list!7420 (c!274779 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0)))))))

(declare-fun bs!399540 () Bool)

(assert (= bs!399540 d!513172))

(declare-fun m!2067765 () Bool)

(assert (=> bs!399540 m!2067765))

(assert (=> b!1683640 d!513172))

(declare-fun d!513174 () Bool)

(declare-fun lt!639654 () BalanceConc!12244)

(assert (=> d!513174 (= (list!7415 lt!639654) (printList!993 thiss!17113 (list!7416 (seqFromList!2239 (t!154512 (t!154512 tokens!457))))))))

(assert (=> d!513174 (= lt!639654 (printTailRec!931 thiss!17113 (seqFromList!2239 (t!154512 (t!154512 tokens!457))) 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!513174 (= (print!1411 thiss!17113 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) lt!639654)))

(declare-fun bs!399541 () Bool)

(assert (= bs!399541 d!513174))

(declare-fun m!2067767 () Bool)

(assert (=> bs!399541 m!2067767))

(assert (=> bs!399541 m!2063515))

(assert (=> bs!399541 m!2063839))

(assert (=> bs!399541 m!2063839))

(declare-fun m!2067769 () Bool)

(assert (=> bs!399541 m!2067769))

(assert (=> bs!399541 m!2063515))

(declare-fun m!2067771 () Bool)

(assert (=> bs!399541 m!2067771))

(assert (=> b!1683640 d!513174))

(declare-fun d!513176 () Bool)

(declare-fun e!1079054 () Bool)

(assert (=> d!513176 e!1079054))

(declare-fun res!755612 () Bool)

(assert (=> d!513176 (=> (not res!755612) (not e!1079054))))

(declare-fun lt!639655 () BalanceConc!12246)

(assert (=> d!513176 (= res!755612 (= (list!7416 lt!639655) (Cons!18465 (h!23866 (t!154512 tokens!457)) Nil!18465)))))

(assert (=> d!513176 (= lt!639655 (singleton!798 (h!23866 (t!154512 tokens!457))))))

(assert (=> d!513176 (= (singletonSeq!1771 (h!23866 (t!154512 tokens!457))) lt!639655)))

(declare-fun b!1685435 () Bool)

(assert (=> b!1685435 (= e!1079054 (isBalanced!1924 (c!274781 lt!639655)))))

(assert (= (and d!513176 res!755612) b!1685435))

(declare-fun m!2067773 () Bool)

(assert (=> d!513176 m!2067773))

(declare-fun m!2067775 () Bool)

(assert (=> d!513176 m!2067775))

(declare-fun m!2067777 () Bool)

(assert (=> b!1685435 m!2067777))

(assert (=> b!1683640 d!513176))

(declare-fun d!513178 () Bool)

(assert (=> d!513178 (= (list!7416 (_1!10501 lt!638493)) (list!7419 (c!274781 (_1!10501 lt!638493))))))

(declare-fun bs!399542 () Bool)

(assert (= bs!399542 d!513178))

(declare-fun m!2067779 () Bool)

(assert (=> bs!399542 m!2067779))

(assert (=> b!1683640 d!513178))

(declare-fun b!1685436 () Bool)

(declare-fun e!1079055 () List!18533)

(assert (=> b!1685436 (= e!1079055 lt!638504)))

(declare-fun d!513180 () Bool)

(declare-fun e!1079056 () Bool)

(assert (=> d!513180 e!1079056))

(declare-fun res!755614 () Bool)

(assert (=> d!513180 (=> (not res!755614) (not e!1079056))))

(declare-fun lt!639656 () List!18533)

(assert (=> d!513180 (= res!755614 (= (content!2597 lt!639656) ((_ map or) (content!2597 lt!638506) (content!2597 lt!638504))))))

(assert (=> d!513180 (= lt!639656 e!1079055)))

(declare-fun c!275250 () Bool)

(assert (=> d!513180 (= c!275250 ((_ is Nil!18463) lt!638506))))

(assert (=> d!513180 (= (++!5051 lt!638506 lt!638504) lt!639656)))

(declare-fun b!1685439 () Bool)

(assert (=> b!1685439 (= e!1079056 (or (not (= lt!638504 Nil!18463)) (= lt!639656 lt!638506)))))

(declare-fun b!1685438 () Bool)

(declare-fun res!755613 () Bool)

(assert (=> b!1685438 (=> (not res!755613) (not e!1079056))))

(assert (=> b!1685438 (= res!755613 (= (size!14706 lt!639656) (+ (size!14706 lt!638506) (size!14706 lt!638504))))))

(declare-fun b!1685437 () Bool)

(assert (=> b!1685437 (= e!1079055 (Cons!18463 (h!23864 lt!638506) (++!5051 (t!154510 lt!638506) lt!638504)))))

(assert (= (and d!513180 c!275250) b!1685436))

(assert (= (and d!513180 (not c!275250)) b!1685437))

(assert (= (and d!513180 res!755614) b!1685438))

(assert (= (and b!1685438 res!755613) b!1685439))

(declare-fun m!2067781 () Bool)

(assert (=> d!513180 m!2067781))

(declare-fun m!2067783 () Bool)

(assert (=> d!513180 m!2067783))

(declare-fun m!2067785 () Bool)

(assert (=> d!513180 m!2067785))

(declare-fun m!2067787 () Bool)

(assert (=> b!1685438 m!2067787))

(declare-fun m!2067789 () Bool)

(assert (=> b!1685438 m!2067789))

(declare-fun m!2067791 () Bool)

(assert (=> b!1685438 m!2067791))

(declare-fun m!2067793 () Bool)

(assert (=> b!1685437 m!2067793))

(assert (=> b!1683640 d!513180))

(declare-fun d!513182 () Bool)

(declare-fun lt!639657 () BalanceConc!12244)

(assert (=> d!513182 (= (list!7415 lt!639657) (printList!993 thiss!17113 (list!7416 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!513182 (= lt!639657 (printTailRec!931 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))) 0 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!513182 (= (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457)))) lt!639657)))

(declare-fun bs!399543 () Bool)

(assert (= bs!399543 d!513182))

(declare-fun m!2067795 () Bool)

(assert (=> bs!399543 m!2067795))

(assert (=> bs!399543 m!2064133))

(assert (=> bs!399543 m!2067253))

(assert (=> bs!399543 m!2067253))

(declare-fun m!2067797 () Bool)

(assert (=> bs!399543 m!2067797))

(assert (=> bs!399543 m!2064133))

(assert (=> bs!399543 m!2064159))

(assert (=> b!1683640 d!513182))

(declare-fun d!513184 () Bool)

(declare-fun lt!639658 () BalanceConc!12244)

(assert (=> d!513184 (= (list!7415 lt!639658) (originalCharacters!4065 (h!23866 (t!154512 (t!154512 tokens!457)))))))

(assert (=> d!513184 (= lt!639658 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (value!102326 (h!23866 (t!154512 (t!154512 tokens!457))))))))

(assert (=> d!513184 (= (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) lt!639658)))

(declare-fun b_lambda!53007 () Bool)

(assert (=> (not b_lambda!53007) (not d!513184)))

(declare-fun t!154680 () Bool)

(declare-fun tb!97727 () Bool)

(assert (=> (and b!1683332 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457))))))) t!154680) tb!97727))

(declare-fun b!1685440 () Bool)

(declare-fun e!1079057 () Bool)

(declare-fun tp!484047 () Bool)

(assert (=> b!1685440 (= e!1079057 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (value!102326 (h!23866 (t!154512 (t!154512 tokens!457))))))) tp!484047))))

(declare-fun result!117804 () Bool)

(assert (=> tb!97727 (= result!117804 (and (inv!23830 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (value!102326 (h!23866 (t!154512 (t!154512 tokens!457)))))) e!1079057))))

(assert (= tb!97727 b!1685440))

(declare-fun m!2067799 () Bool)

(assert (=> b!1685440 m!2067799))

(declare-fun m!2067801 () Bool)

(assert (=> tb!97727 m!2067801))

(assert (=> d!513184 t!154680))

(declare-fun b_and!120461 () Bool)

(assert (= b_and!120445 (and (=> t!154680 result!117804) b_and!120461)))

(declare-fun tb!97729 () Bool)

(declare-fun t!154682 () Bool)

(assert (=> (and b!1683338 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457))))))) t!154682) tb!97729))

(declare-fun result!117806 () Bool)

(assert (= result!117806 result!117804))

(assert (=> d!513184 t!154682))

(declare-fun b_and!120463 () Bool)

(assert (= b_and!120447 (and (=> t!154682 result!117806) b_and!120463)))

(declare-fun tb!97731 () Bool)

(declare-fun t!154684 () Bool)

(assert (=> (and b!1683914 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457))))))) t!154684) tb!97731))

(declare-fun result!117808 () Bool)

(assert (= result!117808 result!117804))

(assert (=> d!513184 t!154684))

(declare-fun b_and!120465 () Bool)

(assert (= b_and!120449 (and (=> t!154684 result!117808) b_and!120465)))

(declare-fun t!154686 () Bool)

(declare-fun tb!97733 () Bool)

(assert (=> (and b!1683928 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457))))))) t!154686) tb!97733))

(declare-fun result!117810 () Bool)

(assert (= result!117810 result!117804))

(assert (=> d!513184 t!154686))

(declare-fun b_and!120467 () Bool)

(assert (= b_and!120451 (and (=> t!154686 result!117810) b_and!120467)))

(declare-fun m!2067803 () Bool)

(assert (=> d!513184 m!2067803))

(declare-fun m!2067805 () Bool)

(assert (=> d!513184 m!2067805))

(assert (=> b!1683640 d!513184))

(assert (=> b!1683640 d!513136))

(declare-fun d!513186 () Bool)

(assert (=> d!513186 (= (list!7416 (_1!10501 lt!638493)) (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!639659 () Unit!31713)

(assert (=> d!513186 (= lt!639659 (choose!10169 (h!23866 (t!154512 (t!154512 tokens!457))) (t!154512 (t!154512 (t!154512 tokens!457))) (_1!10501 lt!638493)))))

(assert (=> d!513186 (= (list!7416 (_1!10501 lt!638493)) (list!7416 (seqFromList!2239 ($colon$colon!403 (t!154512 (t!154512 (t!154512 tokens!457))) (h!23866 (t!154512 (t!154512 tokens!457)))))))))

(assert (=> d!513186 (= (seqFromListBHdTlConstructive!320 (h!23866 (t!154512 (t!154512 tokens!457))) (t!154512 (t!154512 (t!154512 tokens!457))) (_1!10501 lt!638493)) lt!639659)))

(declare-fun bs!399544 () Bool)

(assert (= bs!399544 d!513186))

(assert (=> bs!399544 m!2064137))

(declare-fun m!2067807 () Bool)

(assert (=> bs!399544 m!2067807))

(declare-fun m!2067809 () Bool)

(assert (=> bs!399544 m!2067809))

(assert (=> bs!399544 m!2064143))

(declare-fun m!2067811 () Bool)

(assert (=> bs!399544 m!2067811))

(assert (=> bs!399544 m!2067807))

(assert (=> bs!399544 m!2067811))

(assert (=> bs!399544 m!2064143))

(assert (=> bs!399544 m!2064145))

(assert (=> bs!399544 m!2064145))

(assert (=> bs!399544 m!2064173))

(declare-fun m!2067813 () Bool)

(assert (=> bs!399544 m!2067813))

(assert (=> b!1683640 d!513186))

(declare-fun b!1685441 () Bool)

(declare-fun res!755615 () Bool)

(declare-fun e!1079059 () Bool)

(assert (=> b!1685441 (=> (not res!755615) (not e!1079059))))

(declare-fun lt!639660 () Option!3558)

(assert (=> b!1685441 (= res!755615 (< (size!14706 (_2!10502 (get!5414 lt!639660))) (size!14706 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))))

(declare-fun d!513188 () Bool)

(declare-fun e!1079058 () Bool)

(assert (=> d!513188 e!1079058))

(declare-fun res!755619 () Bool)

(assert (=> d!513188 (=> res!755619 e!1079058)))

(assert (=> d!513188 (= res!755619 (isEmpty!11548 lt!639660))))

(declare-fun e!1079060 () Option!3558)

(assert (=> d!513188 (= lt!639660 e!1079060)))

(declare-fun c!275251 () Bool)

(assert (=> d!513188 (= c!275251 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!639661 () Unit!31713)

(declare-fun lt!639663 () Unit!31713)

(assert (=> d!513188 (= lt!639661 lt!639663)))

(assert (=> d!513188 (isPrefix!1509 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!513188 (= lt!639663 (lemmaIsPrefixRefl!1028 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!513188 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!513188 (= (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))) lt!639660)))

(declare-fun call!107763 () Option!3558)

(declare-fun bm!107758 () Bool)

(assert (=> bm!107758 (= call!107763 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685442 () Bool)

(assert (=> b!1685442 (= e!1079059 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!639660)))))))

(declare-fun b!1685443 () Bool)

(assert (=> b!1685443 (= e!1079060 call!107763)))

(declare-fun b!1685444 () Bool)

(declare-fun res!755618 () Bool)

(assert (=> b!1685444 (=> (not res!755618) (not e!1079059))))

(assert (=> b!1685444 (= res!755618 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639660)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!639660)))))))

(declare-fun b!1685445 () Bool)

(assert (=> b!1685445 (= e!1079058 e!1079059)))

(declare-fun res!755616 () Bool)

(assert (=> b!1685445 (=> (not res!755616) (not e!1079059))))

(assert (=> b!1685445 (= res!755616 (isDefined!2907 lt!639660))))

(declare-fun b!1685446 () Bool)

(declare-fun res!755620 () Bool)

(assert (=> b!1685446 (=> (not res!755620) (not e!1079059))))

(assert (=> b!1685446 (= res!755620 (= (value!102326 (_1!10502 (get!5414 lt!639660))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!639660)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!639660)))))))))

(declare-fun b!1685447 () Bool)

(declare-fun res!755617 () Bool)

(assert (=> b!1685447 (=> (not res!755617) (not e!1079059))))

(assert (=> b!1685447 (= res!755617 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!639660)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639660))))))))

(declare-fun b!1685448 () Bool)

(declare-fun res!755621 () Bool)

(assert (=> b!1685448 (=> (not res!755621) (not e!1079059))))

(assert (=> b!1685448 (= res!755621 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639660)))) (_2!10502 (get!5414 lt!639660))) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685449 () Bool)

(declare-fun lt!639664 () Option!3558)

(declare-fun lt!639662 () Option!3558)

(assert (=> b!1685449 (= e!1079060 (ite (and ((_ is None!3557) lt!639664) ((_ is None!3557) lt!639662)) None!3557 (ite ((_ is None!3557) lt!639662) lt!639664 (ite ((_ is None!3557) lt!639664) lt!639662 (ite (>= (size!14700 (_1!10502 (v!24868 lt!639664))) (size!14700 (_1!10502 (v!24868 lt!639662)))) lt!639664 lt!639662)))))))

(assert (=> b!1685449 (= lt!639664 call!107763)))

(assert (=> b!1685449 (= lt!639662 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(assert (= (and d!513188 c!275251) b!1685443))

(assert (= (and d!513188 (not c!275251)) b!1685449))

(assert (= (or b!1685443 b!1685449) bm!107758))

(assert (= (and d!513188 (not res!755619)) b!1685445))

(assert (= (and b!1685445 res!755616) b!1685444))

(assert (= (and b!1685444 res!755618) b!1685441))

(assert (= (and b!1685441 res!755615) b!1685448))

(assert (= (and b!1685448 res!755621) b!1685446))

(assert (= (and b!1685446 res!755620) b!1685447))

(assert (= (and b!1685447 res!755617) b!1685442))

(declare-fun m!2067815 () Bool)

(assert (=> b!1685446 m!2067815))

(declare-fun m!2067817 () Bool)

(assert (=> b!1685446 m!2067817))

(assert (=> b!1685446 m!2067817))

(declare-fun m!2067819 () Bool)

(assert (=> b!1685446 m!2067819))

(assert (=> b!1685444 m!2067815))

(declare-fun m!2067821 () Bool)

(assert (=> b!1685444 m!2067821))

(assert (=> b!1685444 m!2067821))

(declare-fun m!2067823 () Bool)

(assert (=> b!1685444 m!2067823))

(assert (=> b!1685448 m!2067815))

(assert (=> b!1685448 m!2067821))

(assert (=> b!1685448 m!2067821))

(assert (=> b!1685448 m!2067823))

(assert (=> b!1685448 m!2067823))

(declare-fun m!2067825 () Bool)

(assert (=> b!1685448 m!2067825))

(assert (=> bm!107758 m!2064115))

(declare-fun m!2067827 () Bool)

(assert (=> bm!107758 m!2067827))

(assert (=> b!1685442 m!2067815))

(declare-fun m!2067829 () Bool)

(assert (=> b!1685442 m!2067829))

(assert (=> b!1685447 m!2067815))

(assert (=> b!1685447 m!2067821))

(assert (=> b!1685447 m!2067821))

(assert (=> b!1685447 m!2067823))

(assert (=> b!1685447 m!2067823))

(declare-fun m!2067831 () Bool)

(assert (=> b!1685447 m!2067831))

(declare-fun m!2067833 () Bool)

(assert (=> d!513188 m!2067833))

(assert (=> d!513188 m!2064115))

(assert (=> d!513188 m!2064115))

(declare-fun m!2067835 () Bool)

(assert (=> d!513188 m!2067835))

(assert (=> d!513188 m!2064115))

(assert (=> d!513188 m!2064115))

(declare-fun m!2067837 () Bool)

(assert (=> d!513188 m!2067837))

(assert (=> d!513188 m!2063751))

(assert (=> b!1685449 m!2064115))

(declare-fun m!2067839 () Bool)

(assert (=> b!1685449 m!2067839))

(declare-fun m!2067841 () Bool)

(assert (=> b!1685445 m!2067841))

(assert (=> b!1685441 m!2067815))

(declare-fun m!2067843 () Bool)

(assert (=> b!1685441 m!2067843))

(assert (=> b!1685441 m!2064115))

(assert (=> b!1685441 m!2065361))

(assert (=> b!1683640 d!513188))

(declare-fun d!513190 () Bool)

(assert (=> d!513190 (= (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))) (not (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))))

(declare-fun bs!399545 () Bool)

(assert (= bs!399545 d!513190))

(assert (=> bs!399545 m!2064117))

(declare-fun m!2067845 () Bool)

(assert (=> bs!399545 m!2067845))

(assert (=> b!1683640 d!513190))

(declare-fun d!513192 () Bool)

(declare-fun e!1079061 () Bool)

(assert (=> d!513192 e!1079061))

(declare-fun res!755622 () Bool)

(assert (=> d!513192 (=> (not res!755622) (not e!1079061))))

(assert (=> d!513192 (= res!755622 (= (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 (t!154512 tokens!457))))))) (t!154512 (t!154512 tokens!457))))))

(declare-fun lt!639685 () Unit!31713)

(declare-fun e!1079062 () Unit!31713)

(assert (=> d!513192 (= lt!639685 e!1079062)))

(declare-fun c!275252 () Bool)

(assert (=> d!513192 (= c!275252 (or ((_ is Nil!18465) (t!154512 (t!154512 tokens!457))) ((_ is Nil!18465) (t!154512 (t!154512 (t!154512 tokens!457))))))))

(assert (=> d!513192 (not (isEmpty!11537 rules!1846))))

(assert (=> d!513192 (= (theoremInvertabilityWhenTokenListSeparable!317 thiss!17113 rules!1846 (t!154512 (t!154512 tokens!457))) lt!639685)))

(declare-fun b!1685450 () Bool)

(declare-fun Unit!31792 () Unit!31713)

(assert (=> b!1685450 (= e!1079062 Unit!31792)))

(declare-fun b!1685451 () Bool)

(declare-fun Unit!31794 () Unit!31713)

(assert (=> b!1685451 (= e!1079062 Unit!31794)))

(declare-fun lt!639676 () BalanceConc!12244)

(assert (=> b!1685451 (= lt!639676 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))))))

(declare-fun lt!639669 () BalanceConc!12244)

(assert (=> b!1685451 (= lt!639669 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!639673 () tuple2!18198)

(assert (=> b!1685451 (= lt!639673 (lex!1364 thiss!17113 rules!1846 lt!639669))))

(declare-fun lt!639686 () List!18533)

(assert (=> b!1685451 (= lt!639686 (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!639684 () List!18533)

(assert (=> b!1685451 (= lt!639684 (list!7415 lt!639669))))

(declare-fun lt!639689 () Unit!31713)

(assert (=> b!1685451 (= lt!639689 (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!639686 lt!639684))))

(assert (=> b!1685451 (isPrefix!1509 lt!639686 (++!5051 lt!639686 lt!639684))))

(declare-fun lt!639670 () Unit!31713)

(assert (=> b!1685451 (= lt!639670 lt!639689)))

(declare-fun lt!639668 () Unit!31713)

(assert (=> b!1685451 (= lt!639668 (theoremInvertabilityWhenTokenListSeparable!317 thiss!17113 rules!1846 (t!154512 (t!154512 (t!154512 tokens!457)))))))

(declare-fun lt!639687 () Unit!31713)

(assert (=> b!1685451 (= lt!639687 (seqFromListBHdTlConstructive!320 (h!23866 (t!154512 (t!154512 (t!154512 tokens!457)))) (t!154512 (t!154512 (t!154512 (t!154512 tokens!457)))) (_1!10501 lt!639673)))))

(assert (=> b!1685451 (= (list!7416 (_1!10501 lt!639673)) (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 (t!154512 (t!154512 tokens!457))))) (h!23866 (t!154512 (t!154512 (t!154512 tokens!457)))))))))

(declare-fun lt!639675 () Unit!31713)

(assert (=> b!1685451 (= lt!639675 lt!639687)))

(declare-fun lt!639678 () Option!3558)

(assert (=> b!1685451 (= lt!639678 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 lt!639676)))))

(assert (=> b!1685451 (= (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 (t!154512 tokens!457))))) (printTailRec!931 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 (t!154512 tokens!457)))) 0 (BalanceConc!12245 Empty!6150)))))

(declare-fun lt!639680 () Unit!31713)

(declare-fun Unit!31795 () Unit!31713)

(assert (=> b!1685451 (= lt!639680 Unit!31795)))

(declare-fun lt!639682 () Unit!31713)

(assert (=> b!1685451 (= lt!639682 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!442 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457))))) (list!7415 lt!639669)))))

(assert (=> b!1685451 (= (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457))))) (originalCharacters!4065 (h!23866 (t!154512 (t!154512 tokens!457)))))))

(declare-fun lt!639667 () Unit!31713)

(declare-fun Unit!31796 () Unit!31713)

(assert (=> b!1685451 (= lt!639667 Unit!31796)))

(assert (=> b!1685451 (= (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 (t!154512 tokens!457))))) 0))) (Cons!18463 (head!3766 (originalCharacters!4065 (h!23866 (t!154512 (t!154512 (t!154512 tokens!457)))))) Nil!18463))))

(declare-fun lt!639681 () Unit!31713)

(declare-fun Unit!31797 () Unit!31713)

(assert (=> b!1685451 (= lt!639681 Unit!31797)))

(assert (=> b!1685451 (= (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 (t!154512 tokens!457))))) 0))) (Cons!18463 (head!3766 (list!7415 lt!639669)) Nil!18463))))

(declare-fun lt!639690 () Unit!31713)

(declare-fun Unit!31798 () Unit!31713)

(assert (=> b!1685451 (= lt!639690 Unit!31798)))

(assert (=> b!1685451 (= (list!7415 (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 (t!154512 tokens!457))))) 0))) (Cons!18463 (head!3765 lt!639669) Nil!18463))))

(declare-fun lt!639688 () Unit!31713)

(declare-fun Unit!31799 () Unit!31713)

(assert (=> b!1685451 (= lt!639688 Unit!31799)))

(assert (=> b!1685451 (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!639679 () Unit!31713)

(declare-fun Unit!31800 () Unit!31713)

(assert (=> b!1685451 (= lt!639679 Unit!31800)))

(assert (=> b!1685451 (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))))))))

(declare-fun lt!639683 () Unit!31713)

(declare-fun Unit!31801 () Unit!31713)

(assert (=> b!1685451 (= lt!639683 Unit!31801)))

(declare-fun lt!639674 () Unit!31713)

(declare-fun Unit!31802 () Unit!31713)

(assert (=> b!1685451 (= lt!639674 Unit!31802)))

(assert (=> b!1685451 (= (_1!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))))))) (h!23866 (t!154512 (t!154512 tokens!457))))))

(declare-fun lt!639666 () Unit!31713)

(declare-fun Unit!31803 () Unit!31713)

(assert (=> b!1685451 (= lt!639666 Unit!31803)))

(assert (=> b!1685451 (isEmpty!11547 (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))))))))))

(declare-fun lt!639665 () Unit!31713)

(declare-fun Unit!31804 () Unit!31713)

(assert (=> b!1685451 (= lt!639665 Unit!31804)))

(assert (=> b!1685451 (matchR!2070 (regex!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457))))) (list!7415 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457))))))))

(declare-fun lt!639677 () Unit!31713)

(declare-fun Unit!31805 () Unit!31713)

(assert (=> b!1685451 (= lt!639677 Unit!31805)))

(assert (=> b!1685451 (= (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))) (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))))

(declare-fun lt!639672 () Unit!31713)

(declare-fun Unit!31806 () Unit!31713)

(assert (=> b!1685451 (= lt!639672 Unit!31806)))

(declare-fun lt!639671 () Unit!31713)

(assert (=> b!1685451 (= lt!639671 (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!199 thiss!17113 rules!1846 (h!23866 (t!154512 (t!154512 tokens!457))) (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))) (list!7415 lt!639669)))))

(declare-fun b!1685452 () Bool)

(assert (=> b!1685452 (= e!1079061 (isEmpty!11549 (_2!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (seqFromList!2239 (t!154512 (t!154512 tokens!457))))))))))

(assert (= (and d!513192 c!275252) b!1685450))

(assert (= (and d!513192 (not c!275252)) b!1685451))

(assert (= (and d!513192 res!755622) b!1685452))

(declare-fun m!2067847 () Bool)

(assert (=> d!513192 m!2067847))

(assert (=> d!513192 m!2064155))

(declare-fun m!2067849 () Bool)

(assert (=> d!513192 m!2067849))

(assert (=> d!513192 m!2063515))

(assert (=> d!513192 m!2063505))

(assert (=> d!513192 m!2063515))

(assert (=> d!513192 m!2064155))

(declare-fun m!2067851 () Bool)

(assert (=> b!1685451 m!2067851))

(assert (=> b!1685451 m!2067707))

(declare-fun m!2067853 () Bool)

(assert (=> b!1685451 m!2067853))

(declare-fun m!2067855 () Bool)

(assert (=> b!1685451 m!2067855))

(declare-fun m!2067857 () Bool)

(assert (=> b!1685451 m!2067857))

(declare-fun m!2067859 () Bool)

(assert (=> b!1685451 m!2067859))

(declare-fun m!2067861 () Bool)

(assert (=> b!1685451 m!2067861))

(assert (=> b!1685451 m!2063515))

(declare-fun m!2067863 () Bool)

(assert (=> b!1685451 m!2067863))

(declare-fun m!2067865 () Bool)

(assert (=> b!1685451 m!2067865))

(assert (=> b!1685451 m!2067855))

(declare-fun m!2067867 () Bool)

(assert (=> b!1685451 m!2067867))

(declare-fun m!2067869 () Bool)

(assert (=> b!1685451 m!2067869))

(declare-fun m!2067871 () Bool)

(assert (=> b!1685451 m!2067871))

(assert (=> b!1685451 m!2067855))

(declare-fun m!2067873 () Bool)

(assert (=> b!1685451 m!2067873))

(declare-fun m!2067875 () Bool)

(assert (=> b!1685451 m!2067875))

(declare-fun m!2067877 () Bool)

(assert (=> b!1685451 m!2067877))

(declare-fun m!2067879 () Bool)

(assert (=> b!1685451 m!2067879))

(declare-fun m!2067881 () Bool)

(assert (=> b!1685451 m!2067881))

(assert (=> b!1685451 m!2067707))

(assert (=> b!1685451 m!2067855))

(declare-fun m!2067883 () Bool)

(assert (=> b!1685451 m!2067883))

(declare-fun m!2067885 () Bool)

(assert (=> b!1685451 m!2067885))

(assert (=> b!1685451 m!2067853))

(declare-fun m!2067887 () Bool)

(assert (=> b!1685451 m!2067887))

(declare-fun m!2067889 () Bool)

(assert (=> b!1685451 m!2067889))

(assert (=> b!1685451 m!2064143))

(declare-fun m!2067891 () Bool)

(assert (=> b!1685451 m!2067891))

(declare-fun m!2067893 () Bool)

(assert (=> b!1685451 m!2067893))

(assert (=> b!1685451 m!2067859))

(assert (=> b!1685451 m!2067869))

(declare-fun m!2067895 () Bool)

(assert (=> b!1685451 m!2067895))

(assert (=> b!1685451 m!2064157))

(assert (=> b!1685451 m!2067707))

(assert (=> b!1685451 m!2067875))

(assert (=> b!1685451 m!2067893))

(assert (=> b!1685451 m!2067853))

(declare-fun m!2067897 () Bool)

(assert (=> b!1685451 m!2067897))

(assert (=> b!1685451 m!2067889))

(declare-fun m!2067899 () Bool)

(assert (=> b!1685451 m!2067899))

(declare-fun m!2067901 () Bool)

(assert (=> b!1685451 m!2067901))

(assert (=> b!1685451 m!2064157))

(assert (=> b!1685451 m!2067869))

(declare-fun m!2067903 () Bool)

(assert (=> b!1685451 m!2067903))

(declare-fun m!2067905 () Bool)

(assert (=> b!1685451 m!2067905))

(assert (=> b!1685451 m!2067879))

(assert (=> b!1685451 m!2064143))

(declare-fun m!2067907 () Bool)

(assert (=> b!1685451 m!2067907))

(assert (=> b!1685451 m!2067881))

(declare-fun m!2067909 () Bool)

(assert (=> b!1685451 m!2067909))

(assert (=> b!1685451 m!2063515))

(assert (=> b!1685451 m!2064155))

(assert (=> b!1685451 m!2067907))

(declare-fun m!2067911 () Bool)

(assert (=> b!1685451 m!2067911))

(assert (=> b!1685451 m!2067707))

(declare-fun m!2067913 () Bool)

(assert (=> b!1685451 m!2067913))

(assert (=> b!1685451 m!2067861))

(declare-fun m!2067915 () Bool)

(assert (=> b!1685451 m!2067915))

(assert (=> b!1685452 m!2063515))

(assert (=> b!1685452 m!2063515))

(assert (=> b!1685452 m!2064155))

(assert (=> b!1685452 m!2064155))

(assert (=> b!1685452 m!2067849))

(declare-fun m!2067917 () Bool)

(assert (=> b!1685452 m!2067917))

(assert (=> b!1683640 d!513192))

(declare-fun d!513194 () Bool)

(declare-fun lt!639695 () BalanceConc!12244)

(assert (=> d!513194 (= (list!7415 lt!639695) (printListTailRec!424 thiss!17113 (dropList!734 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))) 0) (list!7415 (BalanceConc!12245 Empty!6150))))))

(declare-fun e!1079063 () BalanceConc!12244)

(assert (=> d!513194 (= lt!639695 e!1079063)))

(declare-fun c!275253 () Bool)

(assert (=> d!513194 (= c!275253 (>= 0 (size!14704 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))))))))

(declare-fun e!1079064 () Bool)

(assert (=> d!513194 e!1079064))

(declare-fun res!755623 () Bool)

(assert (=> d!513194 (=> (not res!755623) (not e!1079064))))

(assert (=> d!513194 (= res!755623 (>= 0 0))))

(assert (=> d!513194 (= (printTailRec!931 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))) 0 (BalanceConc!12245 Empty!6150)) lt!639695)))

(declare-fun b!1685453 () Bool)

(assert (=> b!1685453 (= e!1079064 (<= 0 (size!14704 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685454 () Bool)

(assert (=> b!1685454 (= e!1079063 (BalanceConc!12245 Empty!6150))))

(declare-fun b!1685455 () Bool)

(assert (=> b!1685455 (= e!1079063 (printTailRec!931 thiss!17113 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))) (+ 0 1) (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (apply!5022 (singletonSeq!1771 (h!23866 (t!154512 tokens!457))) 0)))))))

(declare-fun lt!639694 () List!18535)

(assert (=> b!1685455 (= lt!639694 (list!7416 (singletonSeq!1771 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!639691 () Unit!31713)

(assert (=> b!1685455 (= lt!639691 (lemmaDropApply!631 lt!639694 0))))

(assert (=> b!1685455 (= (head!3770 (drop!955 lt!639694 0)) (apply!5025 lt!639694 0))))

(declare-fun lt!639692 () Unit!31713)

(assert (=> b!1685455 (= lt!639692 lt!639691)))

(declare-fun lt!639693 () List!18535)

(assert (=> b!1685455 (= lt!639693 (list!7416 (singletonSeq!1771 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!639697 () Unit!31713)

(assert (=> b!1685455 (= lt!639697 (lemmaDropTail!611 lt!639693 0))))

(assert (=> b!1685455 (= (tail!2513 (drop!955 lt!639693 0)) (drop!955 lt!639693 (+ 0 1)))))

(declare-fun lt!639696 () Unit!31713)

(assert (=> b!1685455 (= lt!639696 lt!639697)))

(assert (= (and d!513194 res!755623) b!1685453))

(assert (= (and d!513194 c!275253) b!1685454))

(assert (= (and d!513194 (not c!275253)) b!1685455))

(declare-fun m!2067919 () Bool)

(assert (=> d!513194 m!2067919))

(assert (=> d!513194 m!2064133))

(declare-fun m!2067921 () Bool)

(assert (=> d!513194 m!2067921))

(assert (=> d!513194 m!2064133))

(declare-fun m!2067923 () Bool)

(assert (=> d!513194 m!2067923))

(assert (=> d!513194 m!2064413))

(assert (=> d!513194 m!2067921))

(assert (=> d!513194 m!2064413))

(declare-fun m!2067925 () Bool)

(assert (=> d!513194 m!2067925))

(assert (=> b!1685453 m!2064133))

(assert (=> b!1685453 m!2067923))

(declare-fun m!2067927 () Bool)

(assert (=> b!1685455 m!2067927))

(declare-fun m!2067929 () Bool)

(assert (=> b!1685455 m!2067929))

(declare-fun m!2067931 () Bool)

(assert (=> b!1685455 m!2067931))

(declare-fun m!2067933 () Bool)

(assert (=> b!1685455 m!2067933))

(declare-fun m!2067935 () Bool)

(assert (=> b!1685455 m!2067935))

(declare-fun m!2067937 () Bool)

(assert (=> b!1685455 m!2067937))

(declare-fun m!2067939 () Bool)

(assert (=> b!1685455 m!2067939))

(assert (=> b!1685455 m!2067933))

(assert (=> b!1685455 m!2064133))

(assert (=> b!1685455 m!2067935))

(declare-fun m!2067941 () Bool)

(assert (=> b!1685455 m!2067941))

(assert (=> b!1685455 m!2064133))

(assert (=> b!1685455 m!2067939))

(declare-fun m!2067943 () Bool)

(assert (=> b!1685455 m!2067943))

(assert (=> b!1685455 m!2067927))

(declare-fun m!2067945 () Bool)

(assert (=> b!1685455 m!2067945))

(declare-fun m!2067947 () Bool)

(assert (=> b!1685455 m!2067947))

(assert (=> b!1685455 m!2064133))

(assert (=> b!1685455 m!2067253))

(assert (=> b!1685455 m!2067945))

(declare-fun m!2067949 () Bool)

(assert (=> b!1685455 m!2067949))

(assert (=> b!1683640 d!513194))

(assert (=> b!1683640 d!512634))

(declare-fun b!1685456 () Bool)

(declare-fun res!755624 () Bool)

(declare-fun e!1079066 () Bool)

(assert (=> b!1685456 (=> (not res!755624) (not e!1079066))))

(declare-fun lt!639698 () Token!6068)

(assert (=> b!1685456 (= res!755624 (matchR!2070 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!639698))))) (list!7415 (charsOf!1900 lt!639698))))))

(declare-fun b!1685458 () Bool)

(declare-fun e!1079065 () Unit!31713)

(declare-fun Unit!31807 () Unit!31713)

(assert (=> b!1685458 (= e!1079065 Unit!31807)))

(declare-fun lt!639709 () List!18533)

(assert (=> b!1685458 (= lt!639709 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)))))

(declare-fun lt!639699 () Unit!31713)

(assert (=> b!1685458 (= lt!639699 (lemmaMaxPrefixReturnsNoneThenAnyRuleReturnsNone!237 thiss!17113 (rule!5151 lt!639698) rules!1846 lt!639709))))

(assert (=> b!1685458 (isEmpty!11548 (maxPrefixOneRule!843 thiss!17113 (rule!5151 lt!639698) lt!639709))))

(declare-fun lt!639701 () Unit!31713)

(assert (=> b!1685458 (= lt!639701 lt!639699)))

(declare-fun lt!639711 () List!18533)

(assert (=> b!1685458 (= lt!639711 (list!7415 (charsOf!1900 lt!639698)))))

(declare-fun lt!639704 () Unit!31713)

(assert (=> b!1685458 (= lt!639704 (lemmaMaxPrefOneRuleReturnsNoneThenNoPrefMaxRegex!233 thiss!17113 (rule!5151 lt!639698) lt!639711 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489))))))

(assert (=> b!1685458 (not (matchR!2070 (regex!3251 (rule!5151 lt!639698)) lt!639711))))

(declare-fun lt!639712 () Unit!31713)

(assert (=> b!1685458 (= lt!639712 lt!639704)))

(assert (=> b!1685458 false))

(declare-fun b!1685459 () Bool)

(declare-fun Unit!31808 () Unit!31713)

(assert (=> b!1685459 (= e!1079065 Unit!31808)))

(declare-fun b!1685457 () Bool)

(assert (=> b!1685457 (= e!1079066 (= (rule!5151 lt!639698) (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!639698))))))))

(declare-fun d!513196 () Bool)

(assert (=> d!513196 (isDefined!2907 (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489))))))

(declare-fun lt!639708 () Unit!31713)

(assert (=> d!513196 (= lt!639708 e!1079065)))

(declare-fun c!275254 () Bool)

(assert (=> d!513196 (= c!275254 (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)))))))

(declare-fun lt!639707 () Unit!31713)

(declare-fun lt!639714 () Unit!31713)

(assert (=> d!513196 (= lt!639707 lt!639714)))

(assert (=> d!513196 e!1079066))

(declare-fun res!755625 () Bool)

(assert (=> d!513196 (=> (not res!755625) (not e!1079066))))

(assert (=> d!513196 (= res!755625 (isDefined!2910 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!639698)))))))

(assert (=> d!513196 (= lt!639714 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!343 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) lt!639698))))

(declare-fun lt!639700 () Unit!31713)

(declare-fun lt!639713 () Unit!31713)

(assert (=> d!513196 (= lt!639700 lt!639713)))

(declare-fun lt!639705 () List!18533)

(assert (=> d!513196 (isPrefix!1509 lt!639705 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)))))

(assert (=> d!513196 (= lt!639713 (lemmaPrefixStaysPrefixWhenAddingToSuffix!229 lt!639705 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)))))

(assert (=> d!513196 (= lt!639705 (list!7415 (charsOf!1900 lt!639698)))))

(declare-fun lt!639703 () Unit!31713)

(declare-fun lt!639710 () Unit!31713)

(assert (=> d!513196 (= lt!639703 lt!639710)))

(declare-fun lt!639702 () List!18533)

(declare-fun lt!639706 () List!18533)

(assert (=> d!513196 (isPrefix!1509 lt!639702 (++!5051 lt!639702 lt!639706))))

(assert (=> d!513196 (= lt!639710 (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!639702 lt!639706))))

(assert (=> d!513196 (= lt!639706 (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))))

(assert (=> d!513196 (= lt!639702 (list!7415 (charsOf!1900 lt!639698)))))

(assert (=> d!513196 (= lt!639698 (head!3770 (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))))))

(assert (=> d!513196 (not (isEmpty!11537 rules!1846))))

(assert (=> d!513196 (= (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!442 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)) lt!639708)))

(assert (= (and d!513196 res!755625) b!1685456))

(assert (= (and b!1685456 res!755624) b!1685457))

(assert (= (and d!513196 c!275254) b!1685458))

(assert (= (and d!513196 (not c!275254)) b!1685459))

(declare-fun m!2067951 () Bool)

(assert (=> b!1685456 m!2067951))

(declare-fun m!2067953 () Bool)

(assert (=> b!1685456 m!2067953))

(declare-fun m!2067955 () Bool)

(assert (=> b!1685456 m!2067955))

(assert (=> b!1685456 m!2067955))

(declare-fun m!2067957 () Bool)

(assert (=> b!1685456 m!2067957))

(assert (=> b!1685456 m!2067951))

(assert (=> b!1685456 m!2067953))

(declare-fun m!2067959 () Bool)

(assert (=> b!1685456 m!2067959))

(assert (=> b!1685458 m!2067951))

(assert (=> b!1685458 m!2067953))

(declare-fun m!2067961 () Bool)

(assert (=> b!1685458 m!2067961))

(declare-fun m!2067963 () Bool)

(assert (=> b!1685458 m!2067963))

(declare-fun m!2067965 () Bool)

(assert (=> b!1685458 m!2067965))

(declare-fun m!2067967 () Bool)

(assert (=> b!1685458 m!2067967))

(assert (=> b!1685458 m!2064115))

(assert (=> b!1685458 m!2064119))

(assert (=> b!1685458 m!2067961))

(assert (=> b!1685458 m!2067951))

(declare-fun m!2067969 () Bool)

(assert (=> b!1685458 m!2067969))

(assert (=> b!1685458 m!2067965))

(declare-fun m!2067971 () Bool)

(assert (=> b!1685458 m!2067971))

(assert (=> b!1685457 m!2067955))

(assert (=> b!1685457 m!2067955))

(assert (=> b!1685457 m!2067957))

(assert (=> d!513196 m!2064115))

(assert (=> d!513196 m!2064119))

(declare-fun m!2067973 () Bool)

(assert (=> d!513196 m!2067973))

(assert (=> d!513196 m!2067955))

(assert (=> d!513196 m!2067961))

(declare-fun m!2067975 () Bool)

(assert (=> d!513196 m!2067975))

(assert (=> d!513196 m!2067961))

(declare-fun m!2067977 () Bool)

(assert (=> d!513196 m!2067977))

(assert (=> d!513196 m!2063505))

(assert (=> d!513196 m!2067975))

(declare-fun m!2067979 () Bool)

(assert (=> d!513196 m!2067979))

(declare-fun m!2067981 () Bool)

(assert (=> d!513196 m!2067981))

(declare-fun m!2067983 () Bool)

(assert (=> d!513196 m!2067983))

(assert (=> d!513196 m!2067951))

(assert (=> d!513196 m!2067953))

(assert (=> d!513196 m!2064115))

(declare-fun m!2067985 () Bool)

(assert (=> d!513196 m!2067985))

(declare-fun m!2067987 () Bool)

(assert (=> d!513196 m!2067987))

(declare-fun m!2067989 () Bool)

(assert (=> d!513196 m!2067989))

(assert (=> d!513196 m!2064115))

(assert (=> d!513196 m!2067981))

(assert (=> d!513196 m!2067975))

(declare-fun m!2067991 () Bool)

(assert (=> d!513196 m!2067991))

(assert (=> d!513196 m!2064115))

(assert (=> d!513196 m!2064119))

(assert (=> d!513196 m!2067961))

(assert (=> d!513196 m!2064117))

(assert (=> d!513196 m!2064151))

(assert (=> d!513196 m!2067951))

(declare-fun m!2067993 () Bool)

(assert (=> d!513196 m!2067993))

(assert (=> d!513196 m!2067987))

(declare-fun m!2067995 () Bool)

(assert (=> d!513196 m!2067995))

(declare-fun m!2067997 () Bool)

(assert (=> d!513196 m!2067997))

(assert (=> d!513196 m!2067955))

(declare-fun m!2067999 () Bool)

(assert (=> d!513196 m!2067999))

(assert (=> d!513196 m!2064115))

(assert (=> d!513196 m!2064117))

(assert (=> d!513196 m!2067995))

(assert (=> b!1683640 d!513196))

(declare-fun b!1685461 () Bool)

(declare-fun res!755629 () Bool)

(declare-fun e!1079069 () Bool)

(assert (=> b!1685461 (=> (not res!755629) (not e!1079069))))

(assert (=> b!1685461 (= res!755629 (= (head!3766 lt!638506) (head!3766 (++!5051 lt!638506 lt!638504))))))

(declare-fun b!1685462 () Bool)

(assert (=> b!1685462 (= e!1079069 (isPrefix!1509 (tail!2512 lt!638506) (tail!2512 (++!5051 lt!638506 lt!638504))))))

(declare-fun b!1685463 () Bool)

(declare-fun e!1079067 () Bool)

(assert (=> b!1685463 (= e!1079067 (>= (size!14706 (++!5051 lt!638506 lt!638504)) (size!14706 lt!638506)))))

(declare-fun d!513198 () Bool)

(assert (=> d!513198 e!1079067))

(declare-fun res!755628 () Bool)

(assert (=> d!513198 (=> res!755628 e!1079067)))

(declare-fun lt!639715 () Bool)

(assert (=> d!513198 (= res!755628 (not lt!639715))))

(declare-fun e!1079068 () Bool)

(assert (=> d!513198 (= lt!639715 e!1079068)))

(declare-fun res!755627 () Bool)

(assert (=> d!513198 (=> res!755627 e!1079068)))

(assert (=> d!513198 (= res!755627 ((_ is Nil!18463) lt!638506))))

(assert (=> d!513198 (= (isPrefix!1509 lt!638506 (++!5051 lt!638506 lt!638504)) lt!639715)))

(declare-fun b!1685460 () Bool)

(assert (=> b!1685460 (= e!1079068 e!1079069)))

(declare-fun res!755626 () Bool)

(assert (=> b!1685460 (=> (not res!755626) (not e!1079069))))

(assert (=> b!1685460 (= res!755626 (not ((_ is Nil!18463) (++!5051 lt!638506 lt!638504))))))

(assert (= (and d!513198 (not res!755627)) b!1685460))

(assert (= (and b!1685460 res!755626) b!1685461))

(assert (= (and b!1685461 res!755629) b!1685462))

(assert (= (and d!513198 (not res!755628)) b!1685463))

(declare-fun m!2068001 () Bool)

(assert (=> b!1685461 m!2068001))

(assert (=> b!1685461 m!2064171))

(declare-fun m!2068003 () Bool)

(assert (=> b!1685461 m!2068003))

(declare-fun m!2068005 () Bool)

(assert (=> b!1685462 m!2068005))

(assert (=> b!1685462 m!2064171))

(declare-fun m!2068007 () Bool)

(assert (=> b!1685462 m!2068007))

(assert (=> b!1685462 m!2068005))

(assert (=> b!1685462 m!2068007))

(declare-fun m!2068009 () Bool)

(assert (=> b!1685462 m!2068009))

(assert (=> b!1685463 m!2064171))

(declare-fun m!2068011 () Bool)

(assert (=> b!1685463 m!2068011))

(assert (=> b!1685463 m!2067789))

(assert (=> b!1683640 d!513198))

(declare-fun d!513200 () Bool)

(assert (=> d!513200 (= (head!3766 (list!7415 lt!638489)) (h!23864 (list!7415 lt!638489)))))

(assert (=> b!1683640 d!513200))

(declare-fun b!1685464 () Bool)

(declare-fun res!755630 () Bool)

(declare-fun e!1079071 () Bool)

(assert (=> b!1685464 (=> (not res!755630) (not e!1079071))))

(declare-fun lt!639716 () Option!3558)

(assert (=> b!1685464 (= res!755630 (< (size!14706 (_2!10502 (get!5414 lt!639716))) (size!14706 (list!7415 lt!638496))))))

(declare-fun d!513202 () Bool)

(declare-fun e!1079070 () Bool)

(assert (=> d!513202 e!1079070))

(declare-fun res!755634 () Bool)

(assert (=> d!513202 (=> res!755634 e!1079070)))

(assert (=> d!513202 (= res!755634 (isEmpty!11548 lt!639716))))

(declare-fun e!1079072 () Option!3558)

(assert (=> d!513202 (= lt!639716 e!1079072)))

(declare-fun c!275255 () Bool)

(assert (=> d!513202 (= c!275255 (and ((_ is Cons!18466) rules!1846) ((_ is Nil!18466) (t!154513 rules!1846))))))

(declare-fun lt!639717 () Unit!31713)

(declare-fun lt!639719 () Unit!31713)

(assert (=> d!513202 (= lt!639717 lt!639719)))

(assert (=> d!513202 (isPrefix!1509 (list!7415 lt!638496) (list!7415 lt!638496))))

(assert (=> d!513202 (= lt!639719 (lemmaIsPrefixRefl!1028 (list!7415 lt!638496) (list!7415 lt!638496)))))

(assert (=> d!513202 (rulesValidInductive!1050 thiss!17113 rules!1846)))

(assert (=> d!513202 (= (maxPrefix!1440 thiss!17113 rules!1846 (list!7415 lt!638496)) lt!639716)))

(declare-fun call!107764 () Option!3558)

(declare-fun bm!107759 () Bool)

(assert (=> bm!107759 (= call!107764 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (list!7415 lt!638496)))))

(declare-fun b!1685465 () Bool)

(assert (=> b!1685465 (= e!1079071 (contains!3242 rules!1846 (rule!5151 (_1!10502 (get!5414 lt!639716)))))))

(declare-fun b!1685466 () Bool)

(assert (=> b!1685466 (= e!1079072 call!107764)))

(declare-fun b!1685467 () Bool)

(declare-fun res!755633 () Bool)

(assert (=> b!1685467 (=> (not res!755633) (not e!1079071))))

(assert (=> b!1685467 (= res!755633 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639716)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!639716)))))))

(declare-fun b!1685468 () Bool)

(assert (=> b!1685468 (= e!1079070 e!1079071)))

(declare-fun res!755631 () Bool)

(assert (=> b!1685468 (=> (not res!755631) (not e!1079071))))

(assert (=> b!1685468 (= res!755631 (isDefined!2907 lt!639716))))

(declare-fun b!1685469 () Bool)

(declare-fun res!755635 () Bool)

(assert (=> b!1685469 (=> (not res!755635) (not e!1079071))))

(assert (=> b!1685469 (= res!755635 (= (value!102326 (_1!10502 (get!5414 lt!639716))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!639716)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!639716)))))))))

(declare-fun b!1685470 () Bool)

(declare-fun res!755632 () Bool)

(assert (=> b!1685470 (=> (not res!755632) (not e!1079071))))

(assert (=> b!1685470 (= res!755632 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!639716)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639716))))))))

(declare-fun b!1685471 () Bool)

(declare-fun res!755636 () Bool)

(assert (=> b!1685471 (=> (not res!755636) (not e!1079071))))

(assert (=> b!1685471 (= res!755636 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!639716)))) (_2!10502 (get!5414 lt!639716))) (list!7415 lt!638496)))))

(declare-fun b!1685472 () Bool)

(declare-fun lt!639720 () Option!3558)

(declare-fun lt!639718 () Option!3558)

(assert (=> b!1685472 (= e!1079072 (ite (and ((_ is None!3557) lt!639720) ((_ is None!3557) lt!639718)) None!3557 (ite ((_ is None!3557) lt!639718) lt!639720 (ite ((_ is None!3557) lt!639720) lt!639718 (ite (>= (size!14700 (_1!10502 (v!24868 lt!639720))) (size!14700 (_1!10502 (v!24868 lt!639718)))) lt!639720 lt!639718)))))))

(assert (=> b!1685472 (= lt!639720 call!107764)))

(assert (=> b!1685472 (= lt!639718 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (list!7415 lt!638496)))))

(assert (= (and d!513202 c!275255) b!1685466))

(assert (= (and d!513202 (not c!275255)) b!1685472))

(assert (= (or b!1685466 b!1685472) bm!107759))

(assert (= (and d!513202 (not res!755634)) b!1685468))

(assert (= (and b!1685468 res!755631) b!1685467))

(assert (= (and b!1685467 res!755633) b!1685464))

(assert (= (and b!1685464 res!755630) b!1685471))

(assert (= (and b!1685471 res!755636) b!1685469))

(assert (= (and b!1685469 res!755635) b!1685470))

(assert (= (and b!1685470 res!755632) b!1685465))

(declare-fun m!2068013 () Bool)

(assert (=> b!1685469 m!2068013))

(declare-fun m!2068015 () Bool)

(assert (=> b!1685469 m!2068015))

(assert (=> b!1685469 m!2068015))

(declare-fun m!2068017 () Bool)

(assert (=> b!1685469 m!2068017))

(assert (=> b!1685467 m!2068013))

(declare-fun m!2068019 () Bool)

(assert (=> b!1685467 m!2068019))

(assert (=> b!1685467 m!2068019))

(declare-fun m!2068021 () Bool)

(assert (=> b!1685467 m!2068021))

(assert (=> b!1685471 m!2068013))

(assert (=> b!1685471 m!2068019))

(assert (=> b!1685471 m!2068019))

(assert (=> b!1685471 m!2068021))

(assert (=> b!1685471 m!2068021))

(declare-fun m!2068023 () Bool)

(assert (=> b!1685471 m!2068023))

(assert (=> bm!107759 m!2064139))

(declare-fun m!2068025 () Bool)

(assert (=> bm!107759 m!2068025))

(assert (=> b!1685465 m!2068013))

(declare-fun m!2068027 () Bool)

(assert (=> b!1685465 m!2068027))

(assert (=> b!1685470 m!2068013))

(assert (=> b!1685470 m!2068019))

(assert (=> b!1685470 m!2068019))

(assert (=> b!1685470 m!2068021))

(assert (=> b!1685470 m!2068021))

(declare-fun m!2068029 () Bool)

(assert (=> b!1685470 m!2068029))

(declare-fun m!2068031 () Bool)

(assert (=> d!513202 m!2068031))

(assert (=> d!513202 m!2064139))

(assert (=> d!513202 m!2064139))

(declare-fun m!2068033 () Bool)

(assert (=> d!513202 m!2068033))

(assert (=> d!513202 m!2064139))

(assert (=> d!513202 m!2064139))

(declare-fun m!2068035 () Bool)

(assert (=> d!513202 m!2068035))

(assert (=> d!513202 m!2063751))

(assert (=> b!1685472 m!2064139))

(declare-fun m!2068037 () Bool)

(assert (=> b!1685472 m!2068037))

(declare-fun m!2068039 () Bool)

(assert (=> b!1685468 m!2068039))

(assert (=> b!1685464 m!2068013))

(declare-fun m!2068041 () Bool)

(assert (=> b!1685464 m!2068041))

(assert (=> b!1685464 m!2064139))

(declare-fun m!2068043 () Bool)

(assert (=> b!1685464 m!2068043))

(assert (=> b!1683640 d!513202))

(declare-fun d!513204 () Bool)

(assert (=> d!513204 (= (list!7416 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 (t!154512 tokens!457))))) (list!7419 (c!274781 (prepend!845 (seqFromList!2239 (t!154512 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 (t!154512 tokens!457)))))))))

(declare-fun bs!399546 () Bool)

(assert (= bs!399546 d!513204))

(declare-fun m!2068045 () Bool)

(assert (=> bs!399546 m!2068045))

(assert (=> b!1683640 d!513204))

(declare-fun d!513206 () Bool)

(declare-fun e!1079073 () Bool)

(assert (=> d!513206 e!1079073))

(declare-fun res!755637 () Bool)

(assert (=> d!513206 (=> (not res!755637) (not e!1079073))))

(declare-fun lt!639721 () BalanceConc!12244)

(assert (=> d!513206 (= res!755637 (= (list!7415 lt!639721) (Cons!18463 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0) Nil!18463)))))

(assert (=> d!513206 (= lt!639721 (singleton!799 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0)))))

(assert (=> d!513206 (= (singletonSeq!1770 (apply!5017 (charsOf!1900 (h!23866 (t!154512 (t!154512 tokens!457)))) 0)) lt!639721)))

(declare-fun b!1685473 () Bool)

(assert (=> b!1685473 (= e!1079073 (isBalanced!1926 (c!274779 lt!639721)))))

(assert (= (and d!513206 res!755637) b!1685473))

(declare-fun m!2068047 () Bool)

(assert (=> d!513206 m!2068047))

(assert (=> d!513206 m!2064123))

(declare-fun m!2068049 () Bool)

(assert (=> d!513206 m!2068049))

(declare-fun m!2068051 () Bool)

(assert (=> b!1685473 m!2068051))

(assert (=> b!1683640 d!513206))

(declare-fun d!513208 () Bool)

(assert (=> d!513208 (= (maxPrefix!1440 thiss!17113 rules!1846 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489))) (Some!3557 (tuple2!18201 (h!23866 (t!154512 tokens!457)) (list!7415 lt!638489))))))

(declare-fun lt!640241 () Unit!31713)

(declare-fun Unit!31809 () Unit!31713)

(assert (=> d!513208 (= lt!640241 Unit!31809)))

(declare-fun lt!640231 () Unit!31713)

(declare-fun e!1079321 () Unit!31713)

(assert (=> d!513208 (= lt!640231 e!1079321)))

(declare-fun c!275372 () Bool)

(declare-fun lt!640242 () Token!6068)

(assert (=> d!513208 (= c!275372 (not (= (rule!5151 lt!640242) (rule!5151 (h!23866 (t!154512 tokens!457))))))))

(declare-fun lt!640216 () Unit!31713)

(declare-fun lt!640214 () Unit!31713)

(assert (=> d!513208 (= lt!640216 lt!640214)))

(declare-fun lt!640243 () List!18533)

(assert (=> d!513208 (= (list!7415 lt!638489) lt!640243)))

(declare-fun lt!640232 () List!18533)

(declare-fun lemmaSamePrefixThenSameSuffix!700 (List!18533 List!18533 List!18533 List!18533 List!18533) Unit!31713)

(assert (=> d!513208 (= lt!640214 (lemmaSamePrefixThenSameSuffix!700 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) lt!640243 lt!640232))))

(declare-fun lt!640256 () Unit!31713)

(declare-fun lt!640228 () Unit!31713)

(assert (=> d!513208 (= lt!640256 lt!640228)))

(declare-fun lt!640191 () List!18533)

(declare-fun lt!640201 () List!18533)

(assert (=> d!513208 (= lt!640191 lt!640201)))

(declare-fun lemmaIsPrefixSameLengthThenSameList!201 (List!18533 List!18533 List!18533) Unit!31713)

(assert (=> d!513208 (= lt!640228 (lemmaIsPrefixSameLengthThenSameList!201 lt!640191 lt!640201 lt!640232))))

(assert (=> d!513208 (= lt!640201 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!513208 (= lt!640191 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640207 () Unit!31713)

(declare-fun e!1079327 () Unit!31713)

(assert (=> d!513208 (= lt!640207 e!1079327)))

(declare-fun c!275373 () Bool)

(assert (=> d!513208 (= c!275373 (< (size!14705 (charsOf!1900 lt!640242)) (size!14705 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun lt!640244 () Unit!31713)

(declare-fun e!1079324 () Unit!31713)

(assert (=> d!513208 (= lt!640244 e!1079324)))

(declare-fun c!275369 () Bool)

(assert (=> d!513208 (= c!275369 (> (size!14705 (charsOf!1900 lt!640242)) (size!14705 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun lt!640225 () Unit!31713)

(declare-fun lt!640198 () Unit!31713)

(assert (=> d!513208 (= lt!640225 lt!640198)))

(assert (=> d!513208 (matchR!2070 (rulesRegex!633 thiss!17113 rules!1846) (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!78 (LexerInterface!2880 List!18536 List!18533 Token!6068 Rule!6302 List!18533) Unit!31713)

(assert (=> d!513208 (= lt!640198 (lemmaMaxPrefixThenMatchesRulesRegex!78 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457)) (rule!5151 (h!23866 (t!154512 tokens!457))) Nil!18463))))

(declare-fun lt!640213 () Unit!31713)

(declare-fun lt!640204 () Unit!31713)

(assert (=> d!513208 (= lt!640213 lt!640204)))

(declare-fun lt!640251 () List!18533)

(assert (=> d!513208 (= lt!640243 lt!640251)))

(declare-fun lt!640190 () List!18533)

(declare-fun lt!640221 () List!18533)

(assert (=> d!513208 (= lt!640204 (lemmaSamePrefixThenSameSuffix!700 lt!640190 lt!640243 lt!640221 lt!640251 lt!640232))))

(declare-fun getSuffix!748 (List!18533 List!18533) List!18533)

(assert (=> d!513208 (= lt!640251 (getSuffix!748 lt!640232 (list!7415 (charsOf!1900 lt!640242))))))

(assert (=> d!513208 (= lt!640221 (list!7415 (charsOf!1900 lt!640242)))))

(assert (=> d!513208 (= lt!640190 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640205 () Unit!31713)

(declare-fun lt!640223 () Unit!31713)

(assert (=> d!513208 (= lt!640205 lt!640223)))

(declare-fun lt!640252 () List!18533)

(assert (=> d!513208 (= (maxPrefixOneRule!843 thiss!17113 (rule!5151 lt!640242) lt!640232) (Some!3557 (tuple2!18201 (Token!6069 (apply!5021 (transformation!3251 (rule!5151 lt!640242)) (seqFromList!2240 lt!640252)) (rule!5151 lt!640242) (size!14706 lt!640252) lt!640252) lt!640243)))))

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!267 (LexerInterface!2880 List!18536 List!18533 List!18533 List!18533 Rule!6302) Unit!31713)

(assert (=> d!513208 (= lt!640223 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!267 thiss!17113 rules!1846 lt!640252 lt!640232 lt!640243 (rule!5151 lt!640242)))))

(assert (=> d!513208 (= lt!640252 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640239 () Unit!31713)

(declare-fun lemmaCharactersSize!373 (Token!6068) Unit!31713)

(assert (=> d!513208 (= lt!640239 (lemmaCharactersSize!373 lt!640242))))

(declare-fun lt!640197 () Unit!31713)

(declare-fun lemmaEqSameImage!226 (TokenValueInjection!6342 BalanceConc!12244 BalanceConc!12244) Unit!31713)

(assert (=> d!513208 (= lt!640197 (lemmaEqSameImage!226 (transformation!3251 (rule!5151 lt!640242)) (charsOf!1900 lt!640242) (seqFromList!2240 (originalCharacters!4065 lt!640242))))))

(declare-fun lt!640193 () Unit!31713)

(assert (=> d!513208 (= lt!640193 (lemmaSemiInverse!441 (transformation!3251 (rule!5151 lt!640242)) (charsOf!1900 lt!640242)))))

(declare-fun lt!640215 () Unit!31713)

(declare-fun lemmaInv!506 (TokenValueInjection!6342) Unit!31713)

(assert (=> d!513208 (= lt!640215 (lemmaInv!506 (transformation!3251 (rule!5151 lt!640242))))))

(declare-fun lt!640238 () Unit!31713)

(declare-fun lt!640250 () Unit!31713)

(assert (=> d!513208 (= lt!640238 lt!640250)))

(declare-fun lt!640253 () List!18533)

(assert (=> d!513208 (isPrefix!1509 lt!640253 (++!5051 lt!640253 lt!640243))))

(assert (=> d!513208 (= lt!640250 (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!640253 lt!640243))))

(assert (=> d!513208 (= lt!640253 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640189 () Unit!31713)

(declare-fun lt!640248 () Unit!31713)

(assert (=> d!513208 (= lt!640189 lt!640248)))

(declare-fun e!1079322 () Bool)

(assert (=> d!513208 e!1079322))

(declare-fun res!755774 () Bool)

(assert (=> d!513208 (=> (not res!755774) (not e!1079322))))

(assert (=> d!513208 (= res!755774 (isDefined!2910 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!640242)))))))

(assert (=> d!513208 (= lt!640248 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!343 thiss!17113 rules!1846 lt!640232 lt!640242))))

(declare-fun lt!640196 () Option!3558)

(assert (=> d!513208 (= lt!640243 (_2!10502 (get!5414 lt!640196)))))

(assert (=> d!513208 (= lt!640242 (_1!10502 (get!5414 lt!640196)))))

(declare-fun lt!640226 () Unit!31713)

(assert (=> d!513208 (= lt!640226 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!442 thiss!17113 rules!1846 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)))))

(assert (=> d!513208 (= lt!640196 (maxPrefix!1440 thiss!17113 rules!1846 lt!640232))))

(declare-fun lt!640203 () Unit!31713)

(declare-fun lt!640247 () Unit!31713)

(assert (=> d!513208 (= lt!640203 lt!640247)))

(declare-fun lt!640237 () List!18533)

(assert (=> d!513208 (isPrefix!1509 lt!640237 (++!5051 lt!640237 (list!7415 lt!638489)))))

(assert (=> d!513208 (= lt!640247 (lemmaConcatTwoListThenFirstIsPrefix!1030 lt!640237 (list!7415 lt!638489)))))

(assert (=> d!513208 (= lt!640237 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(assert (=> d!513208 (= lt!640232 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (list!7415 lt!638489)))))

(assert (=> d!513208 (not (isEmpty!11537 rules!1846))))

(assert (=> d!513208 (= (lemmaMaxPrefWithNoPrefixMatchAllRulesThenSuffixReturnSame!199 thiss!17113 rules!1846 (h!23866 (t!154512 tokens!457)) (rule!5151 (h!23866 (t!154512 tokens!457))) (list!7415 lt!638489)) lt!640241)))

(declare-fun b!1685910 () Bool)

(declare-fun e!1079323 () Unit!31713)

(declare-fun Unit!31810 () Unit!31713)

(assert (=> b!1685910 (= e!1079323 Unit!31810)))

(declare-fun b!1685911 () Bool)

(declare-fun Unit!31811 () Unit!31713)

(assert (=> b!1685911 (= e!1079321 Unit!31811)))

(declare-fun c!275368 () Bool)

(declare-fun getIndex!146 (List!18536 Rule!6302) Int)

(assert (=> b!1685911 (= c!275368 (< (getIndex!146 rules!1846 (rule!5151 (h!23866 (t!154512 tokens!457)))) (getIndex!146 rules!1846 (rule!5151 lt!640242))))))

(declare-fun lt!640206 () Unit!31713)

(declare-fun e!1079326 () Unit!31713)

(assert (=> b!1685911 (= lt!640206 e!1079326)))

(declare-fun c!275370 () Bool)

(assert (=> b!1685911 (= c!275370 (< (getIndex!146 rules!1846 (rule!5151 lt!640242)) (getIndex!146 rules!1846 (rule!5151 (h!23866 (t!154512 tokens!457))))))))

(declare-fun lt!640227 () Unit!31713)

(declare-fun e!1079325 () Unit!31713)

(assert (=> b!1685911 (= lt!640227 e!1079325)))

(declare-fun c!275371 () Bool)

(assert (=> b!1685911 (= c!275371 (= (getIndex!146 rules!1846 (rule!5151 lt!640242)) (getIndex!146 rules!1846 (rule!5151 (h!23866 (t!154512 tokens!457))))))))

(declare-fun lt!640195 () Unit!31713)

(assert (=> b!1685911 (= lt!640195 e!1079323)))

(assert (=> b!1685911 false))

(declare-fun b!1685912 () Bool)

(assert (=> b!1685912 false))

(declare-fun lt!640192 () Unit!31713)

(declare-fun lt!640194 () Unit!31713)

(assert (=> b!1685912 (= lt!640192 lt!640194)))

(declare-fun lt!640187 () List!18533)

(assert (=> b!1685912 (not (matchR!2070 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))) lt!640187))))

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!118 (LexerInterface!2880 List!18536 Rule!6302 List!18533 List!18533 Rule!6302) Unit!31713)

(assert (=> b!1685912 (= lt!640194 (lemmaMaxPrefNoSmallerRuleMatches!118 thiss!17113 rules!1846 (rule!5151 lt!640242) lt!640187 lt!640232 (rule!5151 (h!23866 (t!154512 tokens!457)))))))

(assert (=> b!1685912 (= lt!640187 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun Unit!31812 () Unit!31713)

(assert (=> b!1685912 (= e!1079326 Unit!31812)))

(declare-fun b!1685913 () Bool)

(declare-fun Unit!31813 () Unit!31713)

(assert (=> b!1685913 (= e!1079327 Unit!31813)))

(declare-fun b!1685914 () Bool)

(declare-fun res!755775 () Bool)

(assert (=> b!1685914 (=> (not res!755775) (not e!1079322))))

(assert (=> b!1685914 (= res!755775 (matchR!2070 (regex!3251 (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!640242))))) (list!7415 (charsOf!1900 lt!640242))))))

(declare-fun b!1685915 () Bool)

(declare-fun Unit!31814 () Unit!31713)

(assert (=> b!1685915 (= e!1079324 Unit!31814)))

(declare-fun lt!640217 () Unit!31713)

(assert (=> b!1685915 (= lt!640217 (lemmaMaxPrefixThenMatchesRulesRegex!78 thiss!17113 rules!1846 lt!640232 lt!640242 (rule!5151 lt!640242) lt!640243))))

(assert (=> b!1685915 (matchR!2070 (rulesRegex!633 thiss!17113 rules!1846) (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640210 () Unit!31713)

(assert (=> b!1685915 (= lt!640210 lt!640217)))

(declare-fun lt!640245 () List!18533)

(assert (=> b!1685915 (= lt!640245 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!640199 () List!18533)

(assert (=> b!1685915 (= lt!640199 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!640209 () List!18533)

(assert (=> b!1685915 (= lt!640209 (getSuffix!748 lt!640232 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457))))))))

(declare-fun lt!640233 () Unit!31713)

(assert (=> b!1685915 (= lt!640233 (lemmaSamePrefixThenSameSuffix!700 lt!640245 (list!7415 lt!638489) lt!640199 lt!640209 lt!640232))))

(assert (=> b!1685915 (= (list!7415 lt!638489) lt!640209)))

(declare-fun lt!640208 () Unit!31713)

(assert (=> b!1685915 (= lt!640208 lt!640233)))

(declare-fun lt!640218 () List!18533)

(assert (=> b!1685915 (= lt!640218 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!640235 () Unit!31713)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!191 (List!18533 List!18533) Unit!31713)

(assert (=> b!1685915 (= lt!640235 (lemmaAddHeadSuffixToPrefixStillPrefix!191 lt!640218 lt!640232))))

(assert (=> b!1685915 (isPrefix!1509 (++!5051 lt!640218 (Cons!18463 (head!3766 (getSuffix!748 lt!640232 lt!640218)) Nil!18463)) lt!640232)))

(declare-fun lt!640229 () Unit!31713)

(assert (=> b!1685915 (= lt!640229 lt!640235)))

(declare-fun lt!640240 () List!18533)

(assert (=> b!1685915 (= lt!640240 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640236 () List!18533)

(assert (=> b!1685915 (= lt!640236 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (Cons!18463 (head!3766 (list!7415 lt!638489)) Nil!18463)))))

(declare-fun lt!640219 () Unit!31713)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!77 (List!18533 List!18533 List!18533) Unit!31713)

(assert (=> b!1685915 (= lt!640219 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!77 lt!640240 lt!640236 lt!640232))))

(assert (=> b!1685915 (isPrefix!1509 lt!640236 lt!640240)))

(declare-fun lt!640202 () Unit!31713)

(assert (=> b!1685915 (= lt!640202 lt!640219)))

(declare-fun lt!640222 () Regex!4579)

(assert (=> b!1685915 (= lt!640222 (rulesRegex!633 thiss!17113 rules!1846))))

(declare-fun lt!640246 () List!18533)

(assert (=> b!1685915 (= lt!640246 (++!5051 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (Cons!18463 (head!3766 (list!7415 lt!638489)) Nil!18463)))))

(declare-fun lt!640212 () List!18533)

(assert (=> b!1685915 (= lt!640212 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640200 () Unit!31713)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!78 (Regex!4579 List!18533 List!18533) Unit!31713)

(assert (=> b!1685915 (= lt!640200 (lemmaNotPrefixMatchThenCannotMatchLonger!78 lt!640222 lt!640246 lt!640212))))

(assert (=> b!1685915 (not (matchR!2070 lt!640222 lt!640212))))

(declare-fun lt!640255 () Unit!31713)

(assert (=> b!1685915 (= lt!640255 lt!640200)))

(assert (=> b!1685915 false))

(declare-fun b!1685916 () Bool)

(declare-fun Unit!31815 () Unit!31713)

(assert (=> b!1685916 (= e!1079324 Unit!31815)))

(declare-fun b!1685917 () Bool)

(declare-fun Unit!31816 () Unit!31713)

(assert (=> b!1685917 (= e!1079321 Unit!31816)))

(declare-fun b!1685918 () Bool)

(declare-fun Unit!31817 () Unit!31713)

(assert (=> b!1685918 (= e!1079327 Unit!31817)))

(declare-fun lt!640224 () List!18533)

(assert (=> b!1685918 (= lt!640224 (list!7415 (charsOf!1900 lt!640242)))))

(declare-fun lt!640257 () List!18533)

(assert (=> b!1685918 (= lt!640257 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun lt!640254 () Unit!31713)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!168 (LexerInterface!2880 List!18536 Rule!6302 List!18533 List!18533 List!18533 Rule!6302) Unit!31713)

(assert (=> b!1685918 (= lt!640254 (lemmaMaxPrefixOutputsMaxPrefix!168 thiss!17113 rules!1846 (rule!5151 lt!640242) lt!640224 lt!640232 lt!640257 (rule!5151 (h!23866 (t!154512 tokens!457)))))))

(assert (=> b!1685918 (not (matchR!2070 (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))) lt!640257))))

(declare-fun lt!640249 () Unit!31713)

(assert (=> b!1685918 (= lt!640249 lt!640254)))

(assert (=> b!1685918 false))

(declare-fun b!1685919 () Bool)

(declare-fun Unit!31818 () Unit!31713)

(assert (=> b!1685919 (= e!1079326 Unit!31818)))

(declare-fun b!1685920 () Bool)

(assert (=> b!1685920 (= e!1079322 (= (rule!5151 lt!640242) (get!5416 (getRuleFromTag!343 thiss!17113 rules!1846 (tag!3539 (rule!5151 lt!640242))))))))

(declare-fun b!1685921 () Bool)

(declare-fun Unit!31819 () Unit!31713)

(assert (=> b!1685921 (= e!1079325 Unit!31819)))

(declare-fun b!1685922 () Bool)

(assert (=> b!1685922 false))

(declare-fun lt!640188 () Unit!31713)

(declare-fun lt!640211 () Unit!31713)

(assert (=> b!1685922 (= lt!640188 lt!640211)))

(assert (=> b!1685922 (= (rule!5151 lt!640242) (rule!5151 (h!23866 (t!154512 tokens!457))))))

(declare-fun lemmaSameIndexThenSameElement!94 (List!18536 Rule!6302 Rule!6302) Unit!31713)

(assert (=> b!1685922 (= lt!640211 (lemmaSameIndexThenSameElement!94 rules!1846 (rule!5151 lt!640242) (rule!5151 (h!23866 (t!154512 tokens!457)))))))

(declare-fun Unit!31820 () Unit!31713)

(assert (=> b!1685922 (= e!1079323 Unit!31820)))

(declare-fun b!1685923 () Bool)

(assert (=> b!1685923 false))

(declare-fun lt!640220 () Unit!31713)

(declare-fun lt!640234 () Unit!31713)

(assert (=> b!1685923 (= lt!640220 lt!640234)))

(declare-fun lt!640230 () List!18533)

(assert (=> b!1685923 (not (matchR!2070 (regex!3251 (rule!5151 lt!640242)) lt!640230))))

(assert (=> b!1685923 (= lt!640234 (lemmaMaxPrefNoSmallerRuleMatches!118 thiss!17113 rules!1846 (rule!5151 (h!23866 (t!154512 tokens!457))) lt!640230 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))) (rule!5151 lt!640242)))))

(assert (=> b!1685923 (= lt!640230 (list!7415 (charsOf!1900 (h!23866 (t!154512 tokens!457)))))))

(declare-fun Unit!31821 () Unit!31713)

(assert (=> b!1685923 (= e!1079325 Unit!31821)))

(assert (= (and d!513208 res!755774) b!1685914))

(assert (= (and b!1685914 res!755775) b!1685920))

(assert (= (and d!513208 c!275369) b!1685915))

(assert (= (and d!513208 (not c!275369)) b!1685916))

(assert (= (and d!513208 c!275373) b!1685918))

(assert (= (and d!513208 (not c!275373)) b!1685913))

(assert (= (and d!513208 c!275372) b!1685911))

(assert (= (and d!513208 (not c!275372)) b!1685917))

(assert (= (and b!1685911 c!275368) b!1685912))

(assert (= (and b!1685911 (not c!275368)) b!1685919))

(assert (= (and b!1685911 c!275370) b!1685923))

(assert (= (and b!1685911 (not c!275370)) b!1685921))

(assert (= (and b!1685911 c!275371) b!1685922))

(assert (= (and b!1685911 (not c!275371)) b!1685910))

(declare-fun m!2068757 () Bool)

(assert (=> b!1685911 m!2068757))

(declare-fun m!2068759 () Bool)

(assert (=> b!1685911 m!2068759))

(declare-fun m!2068761 () Bool)

(assert (=> b!1685914 m!2068761))

(assert (=> b!1685914 m!2068761))

(declare-fun m!2068763 () Bool)

(assert (=> b!1685914 m!2068763))

(declare-fun m!2068765 () Bool)

(assert (=> b!1685914 m!2068765))

(assert (=> b!1685914 m!2068765))

(declare-fun m!2068767 () Bool)

(assert (=> b!1685914 m!2068767))

(assert (=> b!1685914 m!2068767))

(declare-fun m!2068769 () Bool)

(assert (=> b!1685914 m!2068769))

(declare-fun m!2068771 () Bool)

(assert (=> b!1685922 m!2068771))

(assert (=> b!1685918 m!2063551))

(assert (=> b!1685918 m!2063551))

(assert (=> b!1685918 m!2064115))

(assert (=> b!1685918 m!2068765))

(assert (=> b!1685918 m!2068765))

(assert (=> b!1685918 m!2068767))

(declare-fun m!2068773 () Bool)

(assert (=> b!1685918 m!2068773))

(declare-fun m!2068775 () Bool)

(assert (=> b!1685918 m!2068775))

(assert (=> b!1685915 m!2063545))

(assert (=> b!1685915 m!2064119))

(declare-fun m!2068777 () Bool)

(assert (=> b!1685915 m!2068777))

(declare-fun m!2068779 () Bool)

(assert (=> b!1685915 m!2068779))

(declare-fun m!2068781 () Bool)

(assert (=> b!1685915 m!2068781))

(declare-fun m!2068783 () Bool)

(assert (=> b!1685915 m!2068783))

(assert (=> b!1685915 m!2068781))

(assert (=> b!1685915 m!2063551))

(assert (=> b!1685915 m!2064115))

(declare-fun m!2068785 () Bool)

(assert (=> b!1685915 m!2068785))

(assert (=> b!1685915 m!2068765))

(assert (=> b!1685915 m!2063545))

(assert (=> b!1685915 m!2068767))

(declare-fun m!2068787 () Bool)

(assert (=> b!1685915 m!2068787))

(assert (=> b!1685915 m!2064115))

(declare-fun m!2068789 () Bool)

(assert (=> b!1685915 m!2068789))

(declare-fun m!2068791 () Bool)

(assert (=> b!1685915 m!2068791))

(declare-fun m!2068793 () Bool)

(assert (=> b!1685915 m!2068793))

(assert (=> b!1685915 m!2068793))

(declare-fun m!2068795 () Bool)

(assert (=> b!1685915 m!2068795))

(assert (=> b!1685915 m!2064119))

(assert (=> b!1685915 m!2064131))

(assert (=> b!1685915 m!2063551))

(declare-fun m!2068797 () Bool)

(assert (=> b!1685915 m!2068797))

(assert (=> b!1685915 m!2068765))

(assert (=> b!1685915 m!2068767))

(declare-fun m!2068799 () Bool)

(assert (=> b!1685915 m!2068799))

(declare-fun m!2068801 () Bool)

(assert (=> b!1685915 m!2068801))

(assert (=> b!1685915 m!2064115))

(declare-fun m!2068803 () Bool)

(assert (=> b!1685915 m!2068803))

(declare-fun m!2068805 () Bool)

(assert (=> b!1685912 m!2068805))

(declare-fun m!2068807 () Bool)

(assert (=> b!1685912 m!2068807))

(assert (=> b!1685912 m!2068765))

(assert (=> b!1685912 m!2068765))

(assert (=> b!1685912 m!2068767))

(assert (=> b!1685920 m!2068761))

(assert (=> b!1685920 m!2068761))

(assert (=> b!1685920 m!2068763))

(declare-fun m!2068809 () Bool)

(assert (=> b!1685923 m!2068809))

(assert (=> b!1685923 m!2063551))

(assert (=> b!1685923 m!2063551))

(assert (=> b!1685923 m!2064115))

(assert (=> b!1685923 m!2064115))

(declare-fun m!2068811 () Bool)

(assert (=> b!1685923 m!2068811))

(assert (=> d!513208 m!2063551))

(declare-fun m!2068813 () Bool)

(assert (=> d!513208 m!2068813))

(declare-fun m!2068815 () Bool)

(assert (=> d!513208 m!2068815))

(declare-fun m!2068817 () Bool)

(assert (=> d!513208 m!2068817))

(assert (=> d!513208 m!2068765))

(declare-fun m!2068819 () Bool)

(assert (=> d!513208 m!2068819))

(declare-fun m!2068821 () Bool)

(assert (=> d!513208 m!2068821))

(assert (=> d!513208 m!2068767))

(declare-fun m!2068823 () Bool)

(assert (=> d!513208 m!2068823))

(declare-fun m!2068825 () Bool)

(assert (=> d!513208 m!2068825))

(declare-fun m!2068827 () Bool)

(assert (=> d!513208 m!2068827))

(declare-fun m!2068829 () Bool)

(assert (=> d!513208 m!2068829))

(assert (=> d!513208 m!2068819))

(assert (=> d!513208 m!2064119))

(declare-fun m!2068831 () Bool)

(assert (=> d!513208 m!2068831))

(assert (=> d!513208 m!2068765))

(declare-fun m!2068833 () Bool)

(assert (=> d!513208 m!2068833))

(declare-fun m!2068835 () Bool)

(assert (=> d!513208 m!2068835))

(assert (=> d!513208 m!2063545))

(assert (=> d!513208 m!2068761))

(declare-fun m!2068837 () Bool)

(assert (=> d!513208 m!2068837))

(declare-fun m!2068839 () Bool)

(assert (=> d!513208 m!2068839))

(assert (=> d!513208 m!2063545))

(assert (=> d!513208 m!2064115))

(declare-fun m!2068841 () Bool)

(assert (=> d!513208 m!2068841))

(assert (=> d!513208 m!2063505))

(assert (=> d!513208 m!2063551))

(assert (=> d!513208 m!2064305))

(declare-fun m!2068843 () Bool)

(assert (=> d!513208 m!2068843))

(assert (=> d!513208 m!2064115))

(assert (=> d!513208 m!2064119))

(assert (=> d!513208 m!2064147))

(declare-fun m!2068845 () Bool)

(assert (=> d!513208 m!2068845))

(assert (=> d!513208 m!2068827))

(assert (=> d!513208 m!2063551))

(assert (=> d!513208 m!2064115))

(assert (=> d!513208 m!2067961))

(assert (=> d!513208 m!2067975))

(assert (=> d!513208 m!2064115))

(assert (=> d!513208 m!2064119))

(assert (=> d!513208 m!2067961))

(declare-fun m!2068847 () Bool)

(assert (=> d!513208 m!2068847))

(assert (=> d!513208 m!2068765))

(declare-fun m!2068849 () Bool)

(assert (=> d!513208 m!2068849))

(assert (=> d!513208 m!2064119))

(assert (=> d!513208 m!2068837))

(assert (=> d!513208 m!2064115))

(assert (=> d!513208 m!2064119))

(assert (=> d!513208 m!2064115))

(declare-fun m!2068851 () Bool)

(assert (=> d!513208 m!2068851))

(declare-fun m!2068853 () Bool)

(assert (=> d!513208 m!2068853))

(assert (=> d!513208 m!2068765))

(assert (=> d!513208 m!2068767))

(declare-fun m!2068855 () Bool)

(assert (=> d!513208 m!2068855))

(declare-fun m!2068857 () Bool)

(assert (=> d!513208 m!2068857))

(assert (=> d!513208 m!2068843))

(declare-fun m!2068859 () Bool)

(assert (=> d!513208 m!2068859))

(assert (=> d!513208 m!2064115))

(declare-fun m!2068861 () Bool)

(assert (=> d!513208 m!2068861))

(assert (=> d!513208 m!2068761))

(declare-fun m!2068863 () Bool)

(assert (=> d!513208 m!2068863))

(assert (=> d!513208 m!2068765))

(declare-fun m!2068865 () Bool)

(assert (=> d!513208 m!2068865))

(assert (=> b!1683640 d!513208))

(declare-fun d!513380 () Bool)

(declare-fun e!1079328 () Bool)

(assert (=> d!513380 e!1079328))

(declare-fun res!755776 () Bool)

(assert (=> d!513380 (=> (not res!755776) (not e!1079328))))

(declare-fun lt!640258 () BalanceConc!12246)

(assert (=> d!513380 (= res!755776 (= (list!7416 lt!640258) (t!154512 tokens!457)))))

(assert (=> d!513380 (= lt!640258 (BalanceConc!12247 (fromList!422 (t!154512 tokens!457))))))

(assert (=> d!513380 (= (fromListB!1027 (t!154512 tokens!457)) lt!640258)))

(declare-fun b!1685924 () Bool)

(assert (=> b!1685924 (= e!1079328 (isBalanced!1924 (fromList!422 (t!154512 tokens!457))))))

(assert (= (and d!513380 res!755776) b!1685924))

(declare-fun m!2068867 () Bool)

(assert (=> d!513380 m!2068867))

(declare-fun m!2068869 () Bool)

(assert (=> d!513380 m!2068869))

(assert (=> b!1685924 m!2068869))

(assert (=> b!1685924 m!2068869))

(declare-fun m!2068871 () Bool)

(assert (=> b!1685924 m!2068871))

(assert (=> d!512262 d!513380))

(assert (=> d!512226 d!512706))

(assert (=> d!512226 d!512312))

(assert (=> d!512226 d!512702))

(declare-fun d!513382 () Bool)

(assert (=> d!513382 (= (list!7416 (singletonSeq!1771 (h!23866 tokens!457))) (list!7419 (c!274781 (singletonSeq!1771 (h!23866 tokens!457)))))))

(declare-fun bs!399575 () Bool)

(assert (= bs!399575 d!513382))

(declare-fun m!2068873 () Bool)

(assert (=> bs!399575 m!2068873))

(assert (=> d!512226 d!513382))

(assert (=> d!512226 d!512300))

(declare-fun d!513384 () Bool)

(assert (=> d!513384 (= (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457)))))) (list!7419 (c!274781 (_1!10501 (lex!1364 thiss!17113 rules!1846 (print!1411 thiss!17113 (singletonSeq!1771 (h!23866 tokens!457))))))))))

(declare-fun bs!399576 () Bool)

(assert (= bs!399576 d!513384))

(declare-fun m!2068875 () Bool)

(assert (=> bs!399576 m!2068875))

(assert (=> d!512226 d!513384))

(declare-fun d!513386 () Bool)

(declare-fun lt!640259 () Int)

(assert (=> d!513386 (= lt!640259 (size!14710 (list!7416 (_1!10501 lt!638348))))))

(assert (=> d!513386 (= lt!640259 (size!14711 (c!274781 (_1!10501 lt!638348))))))

(assert (=> d!513386 (= (size!14704 (_1!10501 lt!638348)) lt!640259)))

(declare-fun bs!399577 () Bool)

(assert (= bs!399577 d!513386))

(declare-fun m!2068877 () Bool)

(assert (=> bs!399577 m!2068877))

(assert (=> bs!399577 m!2068877))

(declare-fun m!2068879 () Bool)

(assert (=> bs!399577 m!2068879))

(declare-fun m!2068881 () Bool)

(assert (=> bs!399577 m!2068881))

(assert (=> d!512226 d!513386))

(declare-fun d!513388 () Bool)

(assert (=> d!513388 (= (list!7415 lt!638753) (list!7420 (c!274779 lt!638753)))))

(declare-fun bs!399578 () Bool)

(assert (= bs!399578 d!513388))

(declare-fun m!2068883 () Bool)

(assert (=> bs!399578 m!2068883))

(assert (=> b!1683880 d!513388))

(declare-fun b!1685925 () Bool)

(declare-fun e!1079329 () List!18533)

(assert (=> b!1685925 (= e!1079329 (list!7415 lt!638169))))

(declare-fun d!513390 () Bool)

(declare-fun e!1079330 () Bool)

(assert (=> d!513390 e!1079330))

(declare-fun res!755778 () Bool)

(assert (=> d!513390 (=> (not res!755778) (not e!1079330))))

(declare-fun lt!640260 () List!18533)

(assert (=> d!513390 (= res!755778 (= (content!2597 lt!640260) ((_ map or) (content!2597 (list!7415 lt!638184)) (content!2597 (list!7415 lt!638169)))))))

(assert (=> d!513390 (= lt!640260 e!1079329)))

(declare-fun c!275374 () Bool)

(assert (=> d!513390 (= c!275374 ((_ is Nil!18463) (list!7415 lt!638184)))))

(assert (=> d!513390 (= (++!5051 (list!7415 lt!638184) (list!7415 lt!638169)) lt!640260)))

(declare-fun b!1685928 () Bool)

(assert (=> b!1685928 (= e!1079330 (or (not (= (list!7415 lt!638169) Nil!18463)) (= lt!640260 (list!7415 lt!638184))))))

(declare-fun b!1685927 () Bool)

(declare-fun res!755777 () Bool)

(assert (=> b!1685927 (=> (not res!755777) (not e!1079330))))

(assert (=> b!1685927 (= res!755777 (= (size!14706 lt!640260) (+ (size!14706 (list!7415 lt!638184)) (size!14706 (list!7415 lt!638169)))))))

(declare-fun b!1685926 () Bool)

(assert (=> b!1685926 (= e!1079329 (Cons!18463 (h!23864 (list!7415 lt!638184)) (++!5051 (t!154510 (list!7415 lt!638184)) (list!7415 lt!638169))))))

(assert (= (and d!513390 c!275374) b!1685925))

(assert (= (and d!513390 (not c!275374)) b!1685926))

(assert (= (and d!513390 res!755778) b!1685927))

(assert (= (and b!1685927 res!755777) b!1685928))

(declare-fun m!2068885 () Bool)

(assert (=> d!513390 m!2068885))

(assert (=> d!513390 m!2063481))

(declare-fun m!2068887 () Bool)

(assert (=> d!513390 m!2068887))

(assert (=> d!513390 m!2063493))

(declare-fun m!2068889 () Bool)

(assert (=> d!513390 m!2068889))

(declare-fun m!2068891 () Bool)

(assert (=> b!1685927 m!2068891))

(assert (=> b!1685927 m!2063481))

(declare-fun m!2068893 () Bool)

(assert (=> b!1685927 m!2068893))

(assert (=> b!1685927 m!2063493))

(declare-fun m!2068895 () Bool)

(assert (=> b!1685927 m!2068895))

(assert (=> b!1685926 m!2063493))

(declare-fun m!2068897 () Bool)

(assert (=> b!1685926 m!2068897))

(assert (=> b!1683880 d!513390))

(assert (=> b!1683880 d!512248))

(assert (=> b!1683880 d!512218))

(declare-fun d!513392 () Bool)

(assert (=> d!513392 (= (isDefined!2907 (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))) (not (isEmpty!11548 (maxPrefixZipper!368 thiss!17113 rules!1846 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))))

(declare-fun bs!399579 () Bool)

(assert (= bs!399579 d!513392))

(assert (=> bs!399579 m!2063737))

(declare-fun m!2068899 () Bool)

(assert (=> bs!399579 m!2068899))

(assert (=> d!512150 d!513392))

(assert (=> d!512150 d!512748))

(declare-fun b!1685930 () Bool)

(declare-fun res!755782 () Bool)

(declare-fun e!1079333 () Bool)

(assert (=> b!1685930 (=> (not res!755782) (not e!1079333))))

(assert (=> b!1685930 (= res!755782 (= (head!3766 lt!638278) (head!3766 lt!638273)))))

(declare-fun b!1685931 () Bool)

(assert (=> b!1685931 (= e!1079333 (isPrefix!1509 (tail!2512 lt!638278) (tail!2512 lt!638273)))))

(declare-fun b!1685932 () Bool)

(declare-fun e!1079331 () Bool)

(assert (=> b!1685932 (= e!1079331 (>= (size!14706 lt!638273) (size!14706 lt!638278)))))

(declare-fun d!513394 () Bool)

(assert (=> d!513394 e!1079331))

(declare-fun res!755781 () Bool)

(assert (=> d!513394 (=> res!755781 e!1079331)))

(declare-fun lt!640261 () Bool)

(assert (=> d!513394 (= res!755781 (not lt!640261))))

(declare-fun e!1079332 () Bool)

(assert (=> d!513394 (= lt!640261 e!1079332)))

(declare-fun res!755780 () Bool)

(assert (=> d!513394 (=> res!755780 e!1079332)))

(assert (=> d!513394 (= res!755780 ((_ is Nil!18463) lt!638278))))

(assert (=> d!513394 (= (isPrefix!1509 lt!638278 lt!638273) lt!640261)))

(declare-fun b!1685929 () Bool)

(assert (=> b!1685929 (= e!1079332 e!1079333)))

(declare-fun res!755779 () Bool)

(assert (=> b!1685929 (=> (not res!755779) (not e!1079333))))

(assert (=> b!1685929 (= res!755779 (not ((_ is Nil!18463) lt!638273)))))

(assert (= (and d!513394 (not res!755780)) b!1685929))

(assert (= (and b!1685929 res!755779) b!1685930))

(assert (= (and b!1685930 res!755782) b!1685931))

(assert (= (and d!513394 (not res!755781)) b!1685932))

(declare-fun m!2068901 () Bool)

(assert (=> b!1685930 m!2068901))

(declare-fun m!2068903 () Bool)

(assert (=> b!1685930 m!2068903))

(declare-fun m!2068905 () Bool)

(assert (=> b!1685931 m!2068905))

(declare-fun m!2068907 () Bool)

(assert (=> b!1685931 m!2068907))

(assert (=> b!1685931 m!2068905))

(assert (=> b!1685931 m!2068907))

(declare-fun m!2068909 () Bool)

(assert (=> b!1685931 m!2068909))

(declare-fun m!2068911 () Bool)

(assert (=> b!1685932 m!2068911))

(declare-fun m!2068913 () Bool)

(assert (=> b!1685932 m!2068913))

(assert (=> d!512150 d!513394))

(declare-fun d!513396 () Bool)

(assert (=> d!513396 (isPrefix!1509 lt!638278 lt!638273)))

(declare-fun lt!640262 () Unit!31713)

(assert (=> d!513396 (= lt!640262 (choose!10177 lt!638278 lt!638273))))

(assert (=> d!513396 (= (lemmaIsPrefixRefl!1028 lt!638278 lt!638273) lt!640262)))

(declare-fun bs!399580 () Bool)

(assert (= bs!399580 d!513396))

(assert (=> bs!399580 m!2063749))

(declare-fun m!2068915 () Bool)

(assert (=> bs!399580 m!2068915))

(assert (=> d!512150 d!513396))

(assert (=> d!512150 d!512588))

(assert (=> d!512150 d!513046))

(assert (=> d!512150 d!512874))

(declare-fun b!1685933 () Bool)

(declare-fun res!755788 () Bool)

(declare-fun e!1079335 () Bool)

(assert (=> b!1685933 (=> (not res!755788) (not e!1079335))))

(assert (=> b!1685933 (= res!755788 (isBalanced!1924 (left!14762 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685934 () Bool)

(declare-fun e!1079334 () Bool)

(assert (=> b!1685934 (= e!1079334 e!1079335)))

(declare-fun res!755787 () Bool)

(assert (=> b!1685934 (=> (not res!755787) (not e!1079335))))

(assert (=> b!1685934 (= res!755787 (<= (- 1) (- (height!985 (left!14762 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457))))) (height!985 (right!15092 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457))))))))))

(declare-fun b!1685935 () Bool)

(declare-fun res!755784 () Bool)

(assert (=> b!1685935 (=> (not res!755784) (not e!1079335))))

(assert (=> b!1685935 (= res!755784 (<= (- (height!985 (left!14762 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457))))) (height!985 (right!15092 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457)))))) 1))))

(declare-fun b!1685936 () Bool)

(assert (=> b!1685936 (= e!1079335 (not (isEmpty!11545 (right!15092 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457)))))))))

(declare-fun b!1685937 () Bool)

(declare-fun res!755786 () Bool)

(assert (=> b!1685937 (=> (not res!755786) (not e!1079335))))

(assert (=> b!1685937 (= res!755786 (isBalanced!1924 (right!15092 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457))))))))

(declare-fun b!1685938 () Bool)

(declare-fun res!755785 () Bool)

(assert (=> b!1685938 (=> (not res!755785) (not e!1079335))))

(assert (=> b!1685938 (= res!755785 (not (isEmpty!11545 (left!14762 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457)))))))))

(declare-fun d!513398 () Bool)

(declare-fun res!755783 () Bool)

(assert (=> d!513398 (=> res!755783 e!1079334)))

(assert (=> d!513398 (= res!755783 (not ((_ is Node!6151) (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457))))))))

(assert (=> d!513398 (= (isBalanced!1924 (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457)))) e!1079334)))

(assert (= (and d!513398 (not res!755783)) b!1685934))

(assert (= (and b!1685934 res!755787) b!1685935))

(assert (= (and b!1685935 res!755784) b!1685933))

(assert (= (and b!1685933 res!755788) b!1685937))

(assert (= (and b!1685937 res!755786) b!1685938))

(assert (= (and b!1685938 res!755785) b!1685936))

(declare-fun m!2068917 () Bool)

(assert (=> b!1685935 m!2068917))

(declare-fun m!2068919 () Bool)

(assert (=> b!1685935 m!2068919))

(declare-fun m!2068921 () Bool)

(assert (=> b!1685937 m!2068921))

(assert (=> b!1685934 m!2068917))

(assert (=> b!1685934 m!2068919))

(declare-fun m!2068923 () Bool)

(assert (=> b!1685933 m!2068923))

(declare-fun m!2068925 () Bool)

(assert (=> b!1685938 m!2068925))

(declare-fun m!2068927 () Bool)

(assert (=> b!1685936 m!2068927))

(assert (=> d!512186 d!513398))

(declare-fun d!513400 () Bool)

(declare-fun e!1079338 () Bool)

(assert (=> d!513400 e!1079338))

(declare-fun res!755791 () Bool)

(assert (=> d!513400 (=> (not res!755791) (not e!1079338))))

(declare-fun lt!640265 () Conc!6151)

(assert (=> d!513400 (= res!755791 (isBalanced!1924 lt!640265))))

(declare-fun ++!5057 (Conc!6151 Conc!6151) Conc!6151)

(declare-fun fill!115 (Int Token!6068) IArray!12307)

(assert (=> d!513400 (= lt!640265 (++!5057 (Leaf!8997 (fill!115 1 (h!23866 (t!154512 tokens!457))) 1) (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457))))))))

(assert (=> d!513400 (isBalanced!1924 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))))))

(assert (=> d!513400 (= (prepend!846 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (h!23866 (t!154512 tokens!457))) lt!640265)))

(declare-fun b!1685941 () Bool)

(assert (=> b!1685941 (= e!1079338 (= (list!7419 lt!640265) (Cons!18465 (h!23866 (t!154512 tokens!457)) (list!7419 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457))))))))))

(assert (= (and d!513400 res!755791) b!1685941))

(declare-fun m!2068929 () Bool)

(assert (=> d!513400 m!2068929))

(declare-fun m!2068931 () Bool)

(assert (=> d!513400 m!2068931))

(declare-fun m!2068933 () Bool)

(assert (=> d!513400 m!2068933))

(declare-fun m!2068935 () Bool)

(assert (=> d!513400 m!2068935))

(declare-fun m!2068937 () Bool)

(assert (=> b!1685941 m!2068937))

(declare-fun m!2068939 () Bool)

(assert (=> b!1685941 m!2068939))

(assert (=> d!512186 d!513400))

(declare-fun bs!399581 () Bool)

(declare-fun d!513402 () Bool)

(assert (= bs!399581 (and d!513402 d!512302)))

(declare-fun lambda!68326 () Int)

(assert (=> bs!399581 (= lambda!68326 lambda!68268)))

(declare-fun b!1685946 () Bool)

(declare-fun e!1079343 () Bool)

(assert (=> b!1685946 (= e!1079343 true)))

(declare-fun b!1685945 () Bool)

(declare-fun e!1079342 () Bool)

(assert (=> b!1685945 (= e!1079342 e!1079343)))

(declare-fun b!1685944 () Bool)

(declare-fun e!1079341 () Bool)

(assert (=> b!1685944 (= e!1079341 e!1079342)))

(assert (=> d!513402 e!1079341))

(assert (= b!1685945 b!1685946))

(assert (= b!1685944 b!1685945))

(assert (= (and d!513402 ((_ is Cons!18466) rules!1846)) b!1685944))

(assert (=> b!1685946 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8366 order!11127 lambda!68326))))

(assert (=> b!1685946 (< (dynLambda!8367 order!11129 (toChars!4585 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8366 order!11127 lambda!68326))))

(assert (=> d!513402 true))

(declare-fun lt!640266 () Bool)

(assert (=> d!513402 (= lt!640266 (forall!4204 (t!154512 tokens!457) lambda!68326))))

(declare-fun e!1079339 () Bool)

(assert (=> d!513402 (= lt!640266 e!1079339)))

(declare-fun res!755793 () Bool)

(assert (=> d!513402 (=> res!755793 e!1079339)))

(assert (=> d!513402 (= res!755793 (not ((_ is Cons!18465) (t!154512 tokens!457))))))

(assert (=> d!513402 (not (isEmpty!11537 rules!1846))))

(assert (=> d!513402 (= (rulesProduceEachTokenIndividuallyList!1082 thiss!17113 rules!1846 (t!154512 tokens!457)) lt!640266)))

(declare-fun b!1685942 () Bool)

(declare-fun e!1079340 () Bool)

(assert (=> b!1685942 (= e!1079339 e!1079340)))

(declare-fun res!755792 () Bool)

(assert (=> b!1685942 (=> (not res!755792) (not e!1079340))))

(assert (=> b!1685942 (= res!755792 (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 (t!154512 tokens!457))))))

(declare-fun b!1685943 () Bool)

(assert (=> b!1685943 (= e!1079340 (rulesProduceEachTokenIndividuallyList!1082 thiss!17113 rules!1846 (t!154512 (t!154512 tokens!457))))))

(assert (= (and d!513402 (not res!755793)) b!1685942))

(assert (= (and b!1685942 res!755792) b!1685943))

(declare-fun m!2068941 () Bool)

(assert (=> d!513402 m!2068941))

(assert (=> d!513402 m!2063505))

(assert (=> b!1685942 m!2064301))

(declare-fun m!2068943 () Bool)

(assert (=> b!1685943 m!2068943))

(assert (=> b!1683764 d!513402))

(declare-fun d!513404 () Bool)

(declare-fun lt!640267 () Int)

(assert (=> d!513404 (>= lt!640267 0)))

(declare-fun e!1079344 () Int)

(assert (=> d!513404 (= lt!640267 e!1079344)))

(declare-fun c!275375 () Bool)

(assert (=> d!513404 (= c!275375 ((_ is Nil!18463) lt!638341))))

(assert (=> d!513404 (= (size!14706 lt!638341) lt!640267)))

(declare-fun b!1685947 () Bool)

(assert (=> b!1685947 (= e!1079344 0)))

(declare-fun b!1685948 () Bool)

(assert (=> b!1685948 (= e!1079344 (+ 1 (size!14706 (t!154510 lt!638341))))))

(assert (= (and d!513404 c!275375) b!1685947))

(assert (= (and d!513404 (not c!275375)) b!1685948))

(declare-fun m!2068945 () Bool)

(assert (=> b!1685948 m!2068945))

(assert (=> b!1683601 d!513404))

(assert (=> b!1683601 d!512554))

(declare-fun d!513406 () Bool)

(declare-fun lt!640268 () Int)

(assert (=> d!513406 (>= lt!640268 0)))

(declare-fun e!1079345 () Int)

(assert (=> d!513406 (= lt!640268 e!1079345)))

(declare-fun c!275376 () Bool)

(assert (=> d!513406 (= c!275376 ((_ is Nil!18463) lt!638186))))

(assert (=> d!513406 (= (size!14706 lt!638186) lt!640268)))

(declare-fun b!1685949 () Bool)

(assert (=> b!1685949 (= e!1079345 0)))

(declare-fun b!1685950 () Bool)

(assert (=> b!1685950 (= e!1079345 (+ 1 (size!14706 (t!154510 lt!638186))))))

(assert (= (and d!513406 c!275376) b!1685949))

(assert (= (and d!513406 (not c!275376)) b!1685950))

(declare-fun m!2068947 () Bool)

(assert (=> b!1685950 m!2068947))

(assert (=> b!1683601 d!513406))

(declare-fun d!513408 () Bool)

(assert (=> d!513408 (= (list!7415 lt!638605) (list!7420 (c!274779 lt!638605)))))

(declare-fun bs!399582 () Bool)

(assert (= bs!399582 d!513408))

(declare-fun m!2068949 () Bool)

(assert (=> bs!399582 m!2068949))

(assert (=> d!512280 d!513408))

(declare-fun d!513410 () Bool)

(declare-fun c!275377 () Bool)

(assert (=> d!513410 (= c!275377 ((_ is Cons!18465) (list!7416 lt!638180)))))

(declare-fun e!1079346 () List!18533)

(assert (=> d!513410 (= (printList!993 thiss!17113 (list!7416 lt!638180)) e!1079346)))

(declare-fun b!1685951 () Bool)

(assert (=> b!1685951 (= e!1079346 (++!5051 (list!7415 (charsOf!1900 (h!23866 (list!7416 lt!638180)))) (printList!993 thiss!17113 (t!154512 (list!7416 lt!638180)))))))

(declare-fun b!1685952 () Bool)

(assert (=> b!1685952 (= e!1079346 Nil!18463)))

(assert (= (and d!513410 c!275377) b!1685951))

(assert (= (and d!513410 (not c!275377)) b!1685952))

(declare-fun m!2068951 () Bool)

(assert (=> b!1685951 m!2068951))

(assert (=> b!1685951 m!2068951))

(declare-fun m!2068953 () Bool)

(assert (=> b!1685951 m!2068953))

(declare-fun m!2068955 () Bool)

(assert (=> b!1685951 m!2068955))

(assert (=> b!1685951 m!2068953))

(assert (=> b!1685951 m!2068955))

(declare-fun m!2068957 () Bool)

(assert (=> b!1685951 m!2068957))

(assert (=> d!512280 d!513410))

(assert (=> d!512280 d!512888))

(assert (=> d!512280 d!512284))

(declare-fun d!513412 () Bool)

(assert (=> d!513412 (= (list!7416 lt!638296) (list!7419 (c!274781 lt!638296)))))

(declare-fun bs!399583 () Bool)

(assert (= bs!399583 d!513412))

(declare-fun m!2068959 () Bool)

(assert (=> bs!399583 m!2068959))

(assert (=> b!1683513 d!513412))

(declare-fun d!513414 () Bool)

(assert (=> d!513414 (= (list!7416 (seqFromList!2239 (t!154512 (t!154512 tokens!457)))) (list!7419 (c!274781 (seqFromList!2239 (t!154512 (t!154512 tokens!457))))))))

(declare-fun bs!399584 () Bool)

(assert (= bs!399584 d!513414))

(assert (=> bs!399584 m!2068939))

(assert (=> b!1683513 d!513414))

(declare-fun bm!107777 () Bool)

(declare-fun call!107782 () Option!3559)

(assert (=> bm!107777 (= call!107782 (maxPrefixOneRuleZipperSequence!360 thiss!17113 (h!23867 (t!154513 rules!1846)) (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun b!1685953 () Bool)

(declare-fun e!1079351 () Bool)

(declare-fun e!1079348 () Bool)

(assert (=> b!1685953 (= e!1079351 e!1079348)))

(declare-fun res!755797 () Bool)

(assert (=> b!1685953 (=> (not res!755797) (not e!1079348))))

(declare-fun lt!640275 () Option!3559)

(assert (=> b!1685953 (= res!755797 (= (_1!10503 (get!5413 lt!640275)) (_1!10502 (get!5414 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1685954 () Bool)

(declare-fun e!1079350 () Bool)

(declare-fun e!1079347 () Bool)

(assert (=> b!1685954 (= e!1079350 e!1079347)))

(declare-fun res!755799 () Bool)

(assert (=> b!1685954 (=> (not res!755799) (not e!1079347))))

(assert (=> b!1685954 (= res!755799 (= (_1!10503 (get!5413 lt!640275)) (_1!10502 (get!5414 (maxPrefixZipper!368 thiss!17113 (t!154513 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1685955 () Bool)

(declare-fun res!755798 () Bool)

(declare-fun e!1079352 () Bool)

(assert (=> b!1685955 (=> (not res!755798) (not e!1079352))))

(assert (=> b!1685955 (= res!755798 e!1079350)))

(declare-fun res!755795 () Bool)

(assert (=> b!1685955 (=> res!755795 e!1079350)))

(assert (=> b!1685955 (= res!755795 (not (isDefined!2908 lt!640275)))))

(declare-fun b!1685956 () Bool)

(assert (=> b!1685956 (= e!1079347 (= (list!7415 (_2!10503 (get!5413 lt!640275))) (_2!10502 (get!5414 (maxPrefixZipper!368 thiss!17113 (t!154513 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1685958 () Bool)

(declare-fun e!1079349 () Option!3559)

(assert (=> b!1685958 (= e!1079349 call!107782)))

(declare-fun d!513416 () Bool)

(assert (=> d!513416 e!1079352))

(declare-fun res!755794 () Bool)

(assert (=> d!513416 (=> (not res!755794) (not e!1079352))))

(assert (=> d!513416 (= res!755794 (= (isDefined!2908 lt!640275) (isDefined!2907 (maxPrefixZipper!368 thiss!17113 (t!154513 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))))

(assert (=> d!513416 (= lt!640275 e!1079349)))

(declare-fun c!275378 () Bool)

(assert (=> d!513416 (= c!275378 (and ((_ is Cons!18466) (t!154513 rules!1846)) ((_ is Nil!18466) (t!154513 (t!154513 rules!1846)))))))

(declare-fun lt!640270 () Unit!31713)

(declare-fun lt!640273 () Unit!31713)

(assert (=> d!513416 (= lt!640270 lt!640273)))

(declare-fun lt!640274 () List!18533)

(declare-fun lt!640269 () List!18533)

(assert (=> d!513416 (isPrefix!1509 lt!640274 lt!640269)))

(assert (=> d!513416 (= lt!640273 (lemmaIsPrefixRefl!1028 lt!640274 lt!640269))))

(assert (=> d!513416 (= lt!640269 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!513416 (= lt!640274 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!513416 (rulesValidInductive!1050 thiss!17113 (t!154513 rules!1846))))

(assert (=> d!513416 (= (maxPrefixZipperSequence!751 thiss!17113 (t!154513 rules!1846) (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) lt!640275)))

(declare-fun b!1685957 () Bool)

(declare-fun lt!640272 () Option!3559)

(declare-fun lt!640271 () Option!3559)

(assert (=> b!1685957 (= e!1079349 (ite (and ((_ is None!3558) lt!640272) ((_ is None!3558) lt!640271)) None!3558 (ite ((_ is None!3558) lt!640271) lt!640272 (ite ((_ is None!3558) lt!640272) lt!640271 (ite (>= (size!14700 (_1!10503 (v!24869 lt!640272))) (size!14700 (_1!10503 (v!24869 lt!640271)))) lt!640272 lt!640271)))))))

(assert (=> b!1685957 (= lt!640272 call!107782)))

(assert (=> b!1685957 (= lt!640271 (maxPrefixZipperSequence!751 thiss!17113 (t!154513 (t!154513 rules!1846)) (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun b!1685959 () Bool)

(assert (=> b!1685959 (= e!1079348 (= (list!7415 (_2!10503 (get!5413 lt!640275))) (_2!10502 (get!5414 (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1685960 () Bool)

(assert (=> b!1685960 (= e!1079352 e!1079351)))

(declare-fun res!755796 () Bool)

(assert (=> b!1685960 (=> res!755796 e!1079351)))

(assert (=> b!1685960 (= res!755796 (not (isDefined!2908 lt!640275)))))

(assert (= (and d!513416 c!275378) b!1685958))

(assert (= (and d!513416 (not c!275378)) b!1685957))

(assert (= (or b!1685958 b!1685957) bm!107777))

(assert (= (and d!513416 res!755794) b!1685955))

(assert (= (and b!1685955 (not res!755795)) b!1685954))

(assert (= (and b!1685954 res!755799) b!1685956))

(assert (= (and b!1685955 res!755798) b!1685960))

(assert (= (and b!1685960 (not res!755796)) b!1685953))

(assert (= (and b!1685953 res!755797) b!1685959))

(declare-fun m!2068961 () Bool)

(assert (=> b!1685953 m!2068961))

(assert (=> b!1685953 m!2063497))

(assert (=> b!1685953 m!2063727))

(assert (=> b!1685953 m!2063727))

(assert (=> b!1685953 m!2065431))

(assert (=> b!1685953 m!2065431))

(declare-fun m!2068963 () Bool)

(assert (=> b!1685953 m!2068963))

(assert (=> b!1685957 m!2063497))

(declare-fun m!2068965 () Bool)

(assert (=> b!1685957 m!2068965))

(assert (=> b!1685956 m!2068961))

(declare-fun m!2068967 () Bool)

(assert (=> b!1685956 m!2068967))

(assert (=> b!1685956 m!2063497))

(assert (=> b!1685956 m!2063727))

(assert (=> b!1685956 m!2063727))

(assert (=> b!1685956 m!2066137))

(assert (=> b!1685956 m!2066137))

(declare-fun m!2068969 () Bool)

(assert (=> b!1685956 m!2068969))

(assert (=> bm!107777 m!2063497))

(declare-fun m!2068971 () Bool)

(assert (=> bm!107777 m!2068971))

(assert (=> b!1685959 m!2065431))

(assert (=> b!1685959 m!2068963))

(assert (=> b!1685959 m!2068961))

(assert (=> b!1685959 m!2068967))

(assert (=> b!1685959 m!2063497))

(assert (=> b!1685959 m!2063727))

(assert (=> b!1685959 m!2063727))

(assert (=> b!1685959 m!2065431))

(declare-fun m!2068973 () Bool)

(assert (=> d!513416 m!2068973))

(declare-fun m!2068975 () Bool)

(assert (=> d!513416 m!2068975))

(assert (=> d!513416 m!2063497))

(assert (=> d!513416 m!2063727))

(assert (=> d!513416 m!2063727))

(assert (=> d!513416 m!2066137))

(assert (=> d!513416 m!2066137))

(declare-fun m!2068977 () Bool)

(assert (=> d!513416 m!2068977))

(declare-fun m!2068979 () Bool)

(assert (=> d!513416 m!2068979))

(assert (=> d!513416 m!2066519))

(assert (=> b!1685955 m!2068975))

(assert (=> b!1685960 m!2068975))

(assert (=> b!1685954 m!2068961))

(assert (=> b!1685954 m!2063497))

(assert (=> b!1685954 m!2063727))

(assert (=> b!1685954 m!2063727))

(assert (=> b!1685954 m!2066137))

(assert (=> b!1685954 m!2066137))

(assert (=> b!1685954 m!2068969))

(assert (=> b!1683486 d!513416))

(declare-fun d!513418 () Bool)

(declare-fun lt!640276 () Token!6068)

(assert (=> d!513418 (= lt!640276 (apply!5025 (list!7416 (_1!10501 lt!638348)) 0))))

(assert (=> d!513418 (= lt!640276 (apply!5029 (c!274781 (_1!10501 lt!638348)) 0))))

(declare-fun e!1079353 () Bool)

(assert (=> d!513418 e!1079353))

(declare-fun res!755800 () Bool)

(assert (=> d!513418 (=> (not res!755800) (not e!1079353))))

(assert (=> d!513418 (= res!755800 (<= 0 0))))

(assert (=> d!513418 (= (apply!5022 (_1!10501 lt!638348) 0) lt!640276)))

(declare-fun b!1685961 () Bool)

(assert (=> b!1685961 (= e!1079353 (< 0 (size!14704 (_1!10501 lt!638348))))))

(assert (= (and d!513418 res!755800) b!1685961))

(assert (=> d!513418 m!2068877))

(assert (=> d!513418 m!2068877))

(declare-fun m!2068981 () Bool)

(assert (=> d!513418 m!2068981))

(declare-fun m!2068983 () Bool)

(assert (=> d!513418 m!2068983))

(assert (=> b!1685961 m!2064001))

(assert (=> b!1683609 d!513418))

(declare-fun d!513420 () Bool)

(assert (=> d!513420 (= (inv!23822 (tag!3539 (rule!5151 (h!23866 (t!154512 tokens!457))))) (= (mod (str.len (value!102325 (tag!3539 (rule!5151 (h!23866 (t!154512 tokens!457)))))) 2) 0))))

(assert (=> b!1683927 d!513420))

(declare-fun d!513422 () Bool)

(declare-fun res!755801 () Bool)

(declare-fun e!1079354 () Bool)

(assert (=> d!513422 (=> (not res!755801) (not e!1079354))))

(assert (=> d!513422 (= res!755801 (semiInverseModEq!1275 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))))))

(assert (=> d!513422 (= (inv!23826 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) e!1079354)))

(declare-fun b!1685962 () Bool)

(assert (=> b!1685962 (= e!1079354 (equivClasses!1216 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))))))

(assert (= (and d!513422 res!755801) b!1685962))

(declare-fun m!2068985 () Bool)

(assert (=> d!513422 m!2068985))

(declare-fun m!2068987 () Bool)

(assert (=> b!1685962 m!2068987))

(assert (=> b!1683927 d!513422))

(declare-fun d!513424 () Bool)

(assert (=> d!513424 (= (list!7416 (_1!10501 lt!638520)) (list!7419 (c!274781 (_1!10501 lt!638520))))))

(declare-fun bs!399585 () Bool)

(assert (= bs!399585 d!513424))

(declare-fun m!2068989 () Bool)

(assert (=> bs!399585 m!2068989))

(assert (=> b!1683658 d!513424))

(assert (=> b!1683658 d!512760))

(assert (=> b!1683658 d!512252))

(declare-fun d!513426 () Bool)

(assert (=> d!513426 (= (isEmpty!11548 lt!638321) (not ((_ is Some!3557) lt!638321)))))

(assert (=> d!512192 d!513426))

(declare-fun b!1685964 () Bool)

(declare-fun res!755805 () Bool)

(declare-fun e!1079357 () Bool)

(assert (=> b!1685964 (=> (not res!755805) (not e!1079357))))

(assert (=> b!1685964 (= res!755805 (= (head!3766 (originalCharacters!4065 (h!23866 tokens!457))) (head!3766 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun b!1685965 () Bool)

(assert (=> b!1685965 (= e!1079357 (isPrefix!1509 (tail!2512 (originalCharacters!4065 (h!23866 tokens!457))) (tail!2512 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun b!1685966 () Bool)

(declare-fun e!1079355 () Bool)

(assert (=> b!1685966 (= e!1079355 (>= (size!14706 (originalCharacters!4065 (h!23866 tokens!457))) (size!14706 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun d!513428 () Bool)

(assert (=> d!513428 e!1079355))

(declare-fun res!755804 () Bool)

(assert (=> d!513428 (=> res!755804 e!1079355)))

(declare-fun lt!640277 () Bool)

(assert (=> d!513428 (= res!755804 (not lt!640277))))

(declare-fun e!1079356 () Bool)

(assert (=> d!513428 (= lt!640277 e!1079356)))

(declare-fun res!755803 () Bool)

(assert (=> d!513428 (=> res!755803 e!1079356)))

(assert (=> d!513428 (= res!755803 ((_ is Nil!18463) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (=> d!513428 (= (isPrefix!1509 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457))) lt!640277)))

(declare-fun b!1685963 () Bool)

(assert (=> b!1685963 (= e!1079356 e!1079357)))

(declare-fun res!755802 () Bool)

(assert (=> b!1685963 (=> (not res!755802) (not e!1079357))))

(assert (=> b!1685963 (= res!755802 (not ((_ is Nil!18463) (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (= (and d!513428 (not res!755803)) b!1685963))

(assert (= (and b!1685963 res!755802) b!1685964))

(assert (= (and b!1685964 res!755805) b!1685965))

(assert (= (and d!513428 (not res!755804)) b!1685966))

(declare-fun m!2068991 () Bool)

(assert (=> b!1685964 m!2068991))

(assert (=> b!1685964 m!2068991))

(declare-fun m!2068993 () Bool)

(assert (=> b!1685965 m!2068993))

(assert (=> b!1685965 m!2068993))

(assert (=> b!1685965 m!2068993))

(assert (=> b!1685965 m!2068993))

(declare-fun m!2068995 () Bool)

(assert (=> b!1685965 m!2068995))

(assert (=> b!1685966 m!2063851))

(assert (=> b!1685966 m!2063851))

(assert (=> d!512192 d!513428))

(declare-fun d!513430 () Bool)

(assert (=> d!513430 (isPrefix!1509 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457)))))

(declare-fun lt!640278 () Unit!31713)

(assert (=> d!513430 (= lt!640278 (choose!10177 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (=> d!513430 (= (lemmaIsPrefixRefl!1028 (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457))) lt!640278)))

(declare-fun bs!399586 () Bool)

(assert (= bs!399586 d!513430))

(assert (=> bs!399586 m!2063875))

(declare-fun m!2068997 () Bool)

(assert (=> bs!399586 m!2068997))

(assert (=> d!512192 d!513430))

(assert (=> d!512192 d!512874))

(declare-fun d!513432 () Bool)

(assert (=> d!513432 (= (isDefined!2907 lt!638606) (not (isEmpty!11548 lt!638606)))))

(declare-fun bs!399587 () Bool)

(assert (= bs!399587 d!513432))

(assert (=> bs!399587 m!2064353))

(assert (=> b!1683709 d!513432))

(declare-fun b!1685969 () Bool)

(declare-fun e!1079359 () List!18533)

(assert (=> b!1685969 (= e!1079359 (list!7424 (xs!9006 (c!274779 lt!638166))))))

(declare-fun b!1685968 () Bool)

(declare-fun e!1079358 () List!18533)

(assert (=> b!1685968 (= e!1079358 e!1079359)))

(declare-fun c!275380 () Bool)

(assert (=> b!1685968 (= c!275380 ((_ is Leaf!8996) (c!274779 lt!638166)))))

(declare-fun d!513434 () Bool)

(declare-fun c!275379 () Bool)

(assert (=> d!513434 (= c!275379 ((_ is Empty!6150) (c!274779 lt!638166)))))

(assert (=> d!513434 (= (list!7420 (c!274779 lt!638166)) e!1079358)))

(declare-fun b!1685970 () Bool)

(assert (=> b!1685970 (= e!1079359 (++!5051 (list!7420 (left!14761 (c!274779 lt!638166))) (list!7420 (right!15091 (c!274779 lt!638166)))))))

(declare-fun b!1685967 () Bool)

(assert (=> b!1685967 (= e!1079358 Nil!18463)))

(assert (= (and d!513434 c!275379) b!1685967))

(assert (= (and d!513434 (not c!275379)) b!1685968))

(assert (= (and b!1685968 c!275380) b!1685969))

(assert (= (and b!1685968 (not c!275380)) b!1685970))

(declare-fun m!2068999 () Bool)

(assert (=> b!1685969 m!2068999))

(declare-fun m!2069001 () Bool)

(assert (=> b!1685970 m!2069001))

(declare-fun m!2069003 () Bool)

(assert (=> b!1685970 m!2069003))

(assert (=> b!1685970 m!2069001))

(assert (=> b!1685970 m!2069003))

(declare-fun m!2069005 () Bool)

(assert (=> b!1685970 m!2069005))

(assert (=> d!512278 d!513434))

(assert (=> b!1683763 d!512226))

(declare-fun c!275383 () Bool)

(declare-fun d!513436 () Bool)

(assert (=> d!513436 (= c!275383 (= lt!638775 (size!14705 (++!5052 lt!638184 lt!638169))))))

(declare-fun e!1079362 () Bool)

(assert (=> d!513436 (= (prefixMatchZipperSequence!691 lt!638783 (++!5052 lt!638184 lt!638169) lt!638775) e!1079362)))

(declare-fun b!1685975 () Bool)

(declare-fun lostCauseZipper!43 ((InoxSet Context!1850)) Bool)

(assert (=> b!1685975 (= e!1079362 (not (lostCauseZipper!43 lt!638783)))))

(declare-fun b!1685976 () Bool)

(declare-fun derivationStepZipper!67 ((InoxSet Context!1850) C!9332) (InoxSet Context!1850))

(assert (=> b!1685976 (= e!1079362 (prefixMatchZipperSequence!691 (derivationStepZipper!67 lt!638783 (apply!5017 (++!5052 lt!638184 lt!638169) lt!638775)) (++!5052 lt!638184 lt!638169) (+ lt!638775 1)))))

(assert (= (and d!513436 c!275383) b!1685975))

(assert (= (and d!513436 (not c!275383)) b!1685976))

(assert (=> d!513436 m!2063547))

(declare-fun m!2069007 () Bool)

(assert (=> d!513436 m!2069007))

(declare-fun m!2069009 () Bool)

(assert (=> b!1685975 m!2069009))

(assert (=> b!1685976 m!2063547))

(declare-fun m!2069011 () Bool)

(assert (=> b!1685976 m!2069011))

(assert (=> b!1685976 m!2069011))

(declare-fun m!2069013 () Bool)

(assert (=> b!1685976 m!2069013))

(assert (=> b!1685976 m!2069013))

(assert (=> b!1685976 m!2063547))

(declare-fun m!2069015 () Bool)

(assert (=> b!1685976 m!2069015))

(assert (=> d!512344 d!513436))

(declare-fun d!513438 () Bool)

(declare-fun c!275384 () Bool)

(assert (=> d!513438 (= c!275384 (isEmpty!11547 (list!7415 (++!5052 lt!638184 lt!638169))))))

(declare-fun e!1079363 () Bool)

(assert (=> d!513438 (= (prefixMatch!492 lt!638178 (list!7415 (++!5052 lt!638184 lt!638169))) e!1079363)))

(declare-fun b!1685977 () Bool)

(assert (=> b!1685977 (= e!1079363 (not (lostCause!486 lt!638178)))))

(declare-fun b!1685978 () Bool)

(assert (=> b!1685978 (= e!1079363 (prefixMatch!492 (derivativeStep!1138 lt!638178 (head!3766 (list!7415 (++!5052 lt!638184 lt!638169)))) (tail!2512 (list!7415 (++!5052 lt!638184 lt!638169)))))))

(assert (= (and d!513438 c!275384) b!1685977))

(assert (= (and d!513438 (not c!275384)) b!1685978))

(assert (=> d!513438 m!2064651))

(declare-fun m!2069017 () Bool)

(assert (=> d!513438 m!2069017))

(assert (=> b!1685977 m!2063939))

(assert (=> b!1685978 m!2064651))

(declare-fun m!2069019 () Bool)

(assert (=> b!1685978 m!2069019))

(assert (=> b!1685978 m!2069019))

(declare-fun m!2069021 () Bool)

(assert (=> b!1685978 m!2069021))

(assert (=> b!1685978 m!2064651))

(declare-fun m!2069023 () Bool)

(assert (=> b!1685978 m!2069023))

(assert (=> b!1685978 m!2069021))

(assert (=> b!1685978 m!2069023))

(declare-fun m!2069025 () Bool)

(assert (=> b!1685978 m!2069025))

(assert (=> d!512344 d!513438))

(declare-fun d!513440 () Bool)

(assert (=> d!513440 (= (list!7415 (++!5052 lt!638184 lt!638169)) (list!7420 (c!274779 (++!5052 lt!638184 lt!638169))))))

(declare-fun bs!399588 () Bool)

(assert (= bs!399588 d!513440))

(declare-fun m!2069027 () Bool)

(assert (=> bs!399588 m!2069027))

(assert (=> d!512344 d!513440))

(declare-fun d!513442 () Bool)

(declare-fun e!1079366 () Bool)

(assert (=> d!513442 e!1079366))

(declare-fun res!755809 () Bool)

(assert (=> d!513442 (=> (not res!755809) (not e!1079366))))

(assert (=> d!513442 (= res!755809 (validRegex!1840 lt!638178))))

(assert (=> d!513442 (= (focus!231 lt!638178) (store ((as const (Array Context!1850 Bool)) false) (Context!1851 (Cons!18471 lt!638178 Nil!18471)) true))))

(declare-fun b!1685981 () Bool)

(declare-fun unfocusZipper!43 (List!18542) Regex!4579)

(assert (=> b!1685981 (= e!1079366 (= (unfocusZipper!43 (toList!971 (store ((as const (Array Context!1850 Bool)) false) (Context!1851 (Cons!18471 lt!638178 Nil!18471)) true))) lt!638178))))

(assert (= (and d!513442 res!755809) b!1685981))

(assert (=> d!513442 m!2064665))

(declare-fun m!2069029 () Bool)

(assert (=> d!513442 m!2069029))

(assert (=> b!1685981 m!2069029))

(assert (=> b!1685981 m!2069029))

(declare-fun m!2069031 () Bool)

(assert (=> b!1685981 m!2069031))

(assert (=> b!1685981 m!2069031))

(declare-fun m!2069033 () Bool)

(assert (=> b!1685981 m!2069033))

(assert (=> d!512344 d!513442))

(declare-fun d!513444 () Bool)

(declare-fun drop!957 (List!18533 Int) List!18533)

(assert (=> d!513444 (= (dropList!735 (++!5052 lt!638184 lt!638169) lt!638775) (drop!957 (list!7420 (c!274779 (++!5052 lt!638184 lt!638169))) lt!638775))))

(declare-fun bs!399589 () Bool)

(assert (= bs!399589 d!513444))

(assert (=> bs!399589 m!2069027))

(assert (=> bs!399589 m!2069027))

(declare-fun m!2069035 () Bool)

(assert (=> bs!399589 m!2069035))

(assert (=> d!512344 d!513444))

(declare-fun d!513446 () Bool)

(declare-fun c!275387 () Bool)

(assert (=> d!513446 (= c!275387 (isEmpty!11547 lt!638779))))

(declare-fun e!1079369 () Bool)

(assert (=> d!513446 (= (prefixMatchZipper!210 lt!638776 lt!638779) e!1079369)))

(declare-fun b!1685986 () Bool)

(assert (=> b!1685986 (= e!1079369 (not (lostCauseZipper!43 lt!638776)))))

(declare-fun b!1685987 () Bool)

(assert (=> b!1685987 (= e!1079369 (prefixMatchZipper!210 (derivationStepZipper!67 lt!638776 (head!3766 lt!638779)) (tail!2512 lt!638779)))))

(assert (= (and d!513446 c!275387) b!1685986))

(assert (= (and d!513446 (not c!275387)) b!1685987))

(declare-fun m!2069037 () Bool)

(assert (=> d!513446 m!2069037))

(declare-fun m!2069039 () Bool)

(assert (=> b!1685986 m!2069039))

(declare-fun m!2069041 () Bool)

(assert (=> b!1685987 m!2069041))

(assert (=> b!1685987 m!2069041))

(declare-fun m!2069043 () Bool)

(assert (=> b!1685987 m!2069043))

(declare-fun m!2069045 () Bool)

(assert (=> b!1685987 m!2069045))

(assert (=> b!1685987 m!2069043))

(assert (=> b!1685987 m!2069045))

(declare-fun m!2069047 () Bool)

(assert (=> b!1685987 m!2069047))

(assert (=> d!512344 d!513446))

(declare-fun b!1686006 () Bool)

(declare-fun e!1079388 () Bool)

(declare-fun e!1079389 () Bool)

(assert (=> b!1686006 (= e!1079388 e!1079389)))

(declare-fun res!755821 () Bool)

(assert (=> b!1686006 (= res!755821 (not (nullable!1367 (reg!4908 lt!638178))))))

(assert (=> b!1686006 (=> (not res!755821) (not e!1079389))))

(declare-fun b!1686007 () Bool)

(declare-fun e!1079387 () Bool)

(declare-fun e!1079385 () Bool)

(assert (=> b!1686007 (= e!1079387 e!1079385)))

(declare-fun res!755822 () Bool)

(assert (=> b!1686007 (=> (not res!755822) (not e!1079385))))

(declare-fun call!107789 () Bool)

(assert (=> b!1686007 (= res!755822 call!107789)))

(declare-fun b!1686008 () Bool)

(declare-fun e!1079390 () Bool)

(assert (=> b!1686008 (= e!1079390 call!107789)))

(declare-fun bm!107784 () Bool)

(declare-fun call!107790 () Bool)

(assert (=> bm!107784 (= call!107789 call!107790)))

(declare-fun c!275392 () Bool)

(declare-fun bm!107785 () Bool)

(declare-fun c!275393 () Bool)

(assert (=> bm!107785 (= call!107790 (validRegex!1840 (ite c!275392 (reg!4908 lt!638178) (ite c!275393 (regTwo!9671 lt!638178) (regOne!9670 lt!638178)))))))

(declare-fun b!1686009 () Bool)

(assert (=> b!1686009 (= e!1079389 call!107790)))

(declare-fun d!513448 () Bool)

(declare-fun res!755820 () Bool)

(declare-fun e!1079384 () Bool)

(assert (=> d!513448 (=> res!755820 e!1079384)))

(assert (=> d!513448 (= res!755820 ((_ is ElementMatch!4579) lt!638178))))

(assert (=> d!513448 (= (validRegex!1840 lt!638178) e!1079384)))

(declare-fun bm!107786 () Bool)

(declare-fun call!107791 () Bool)

(assert (=> bm!107786 (= call!107791 (validRegex!1840 (ite c!275393 (regOne!9671 lt!638178) (regTwo!9670 lt!638178))))))

(declare-fun b!1686010 () Bool)

(assert (=> b!1686010 (= e!1079384 e!1079388)))

(assert (=> b!1686010 (= c!275392 ((_ is Star!4579) lt!638178))))

(declare-fun b!1686011 () Bool)

(declare-fun res!755823 () Bool)

(assert (=> b!1686011 (=> res!755823 e!1079387)))

(assert (=> b!1686011 (= res!755823 (not ((_ is Concat!7921) lt!638178)))))

(declare-fun e!1079386 () Bool)

(assert (=> b!1686011 (= e!1079386 e!1079387)))

(declare-fun b!1686012 () Bool)

(assert (=> b!1686012 (= e!1079388 e!1079386)))

(assert (=> b!1686012 (= c!275393 ((_ is Union!4579) lt!638178))))

(declare-fun b!1686013 () Bool)

(assert (=> b!1686013 (= e!1079385 call!107791)))

(declare-fun b!1686014 () Bool)

(declare-fun res!755824 () Bool)

(assert (=> b!1686014 (=> (not res!755824) (not e!1079390))))

(assert (=> b!1686014 (= res!755824 call!107791)))

(assert (=> b!1686014 (= e!1079386 e!1079390)))

(assert (= (and d!513448 (not res!755820)) b!1686010))

(assert (= (and b!1686010 c!275392) b!1686006))

(assert (= (and b!1686010 (not c!275392)) b!1686012))

(assert (= (and b!1686006 res!755821) b!1686009))

(assert (= (and b!1686012 c!275393) b!1686014))

(assert (= (and b!1686012 (not c!275393)) b!1686011))

(assert (= (and b!1686014 res!755824) b!1686008))

(assert (= (and b!1686011 (not res!755823)) b!1686007))

(assert (= (and b!1686007 res!755822) b!1686013))

(assert (= (or b!1686008 b!1686007) bm!107784))

(assert (= (or b!1686014 b!1686013) bm!107786))

(assert (= (or b!1686009 bm!107784) bm!107785))

(declare-fun m!2069049 () Bool)

(assert (=> b!1686006 m!2069049))

(declare-fun m!2069051 () Bool)

(assert (=> bm!107785 m!2069051))

(declare-fun m!2069053 () Bool)

(assert (=> bm!107786 m!2069053))

(assert (=> d!512344 d!513448))

(declare-fun d!513450 () Bool)

(assert (=> d!513450 (= (prefixMatchZipper!210 lt!638783 (dropList!735 (++!5052 lt!638184 lt!638169) lt!638775)) (prefixMatchZipperSequence!691 lt!638783 (++!5052 lt!638184 lt!638169) lt!638775))))

(declare-fun lt!640281 () Unit!31713)

(declare-fun choose!10193 ((InoxSet Context!1850) BalanceConc!12244 Int) Unit!31713)

(assert (=> d!513450 (= lt!640281 (choose!10193 lt!638783 (++!5052 lt!638184 lt!638169) lt!638775))))

(declare-fun e!1079393 () Bool)

(assert (=> d!513450 e!1079393))

(declare-fun res!755827 () Bool)

(assert (=> d!513450 (=> (not res!755827) (not e!1079393))))

(assert (=> d!513450 (= res!755827 (>= lt!638775 0))))

(assert (=> d!513450 (= (lemmaprefixMatchZipperSequenceEquivalent!210 lt!638783 (++!5052 lt!638184 lt!638169) lt!638775) lt!640281)))

(declare-fun b!1686017 () Bool)

(assert (=> b!1686017 (= e!1079393 (<= lt!638775 (size!14705 (++!5052 lt!638184 lt!638169))))))

(assert (= (and d!513450 res!755827) b!1686017))

(assert (=> d!513450 m!2063547))

(assert (=> d!513450 m!2064649))

(assert (=> d!513450 m!2064649))

(assert (=> d!513450 m!2064669))

(assert (=> d!513450 m!2063547))

(assert (=> d!513450 m!2064673))

(assert (=> d!513450 m!2063547))

(declare-fun m!2069055 () Bool)

(assert (=> d!513450 m!2069055))

(assert (=> b!1686017 m!2063547))

(assert (=> b!1686017 m!2069007))

(assert (=> d!512344 d!513450))

(declare-fun d!513452 () Bool)

(assert (=> d!513452 (= (prefixMatch!492 lt!638178 lt!638779) (prefixMatchZipper!210 lt!638776 lt!638779))))

(declare-fun lt!640284 () Unit!31713)

(declare-fun choose!10194 ((InoxSet Context!1850) List!18542 Regex!4579 List!18533) Unit!31713)

(assert (=> d!513452 (= lt!640284 (choose!10194 lt!638776 lt!638778 lt!638178 lt!638779))))

(assert (=> d!513452 (validRegex!1840 lt!638178)))

(assert (=> d!513452 (= (prefixMatchZipperRegexEquiv!210 lt!638776 lt!638778 lt!638178 lt!638779) lt!640284)))

(declare-fun bs!399590 () Bool)

(assert (= bs!399590 d!513452))

(assert (=> bs!399590 m!2064667))

(assert (=> bs!399590 m!2064661))

(declare-fun m!2069057 () Bool)

(assert (=> bs!399590 m!2069057))

(assert (=> bs!399590 m!2064665))

(assert (=> d!512344 d!513452))

(declare-fun d!513454 () Bool)

(declare-fun e!1079396 () Bool)

(assert (=> d!513454 e!1079396))

(declare-fun res!755830 () Bool)

(assert (=> d!513454 (=> (not res!755830) (not e!1079396))))

(declare-fun lt!640287 () List!18542)

(declare-fun noDuplicate!262 (List!18542) Bool)

(assert (=> d!513454 (= res!755830 (noDuplicate!262 lt!640287))))

(declare-fun choose!10195 ((InoxSet Context!1850)) List!18542)

(assert (=> d!513454 (= lt!640287 (choose!10195 (focus!231 lt!638178)))))

(assert (=> d!513454 (= (toList!971 (focus!231 lt!638178)) lt!640287)))

(declare-fun b!1686020 () Bool)

(declare-fun content!2603 (List!18542) (InoxSet Context!1850))

(assert (=> b!1686020 (= e!1079396 (= (content!2603 lt!640287) (focus!231 lt!638178)))))

(assert (= (and d!513454 res!755830) b!1686020))

(declare-fun m!2069059 () Bool)

(assert (=> d!513454 m!2069059))

(assert (=> d!513454 m!2064655))

(declare-fun m!2069061 () Bool)

(assert (=> d!513454 m!2069061))

(declare-fun m!2069063 () Bool)

(assert (=> b!1686020 m!2069063))

(assert (=> d!512344 d!513454))

(declare-fun d!513456 () Bool)

(declare-fun c!275394 () Bool)

(assert (=> d!513456 (= c!275394 (= 0 (size!14705 (++!5052 lt!638184 lt!638169))))))

(declare-fun e!1079397 () Bool)

(assert (=> d!513456 (= (prefixMatchZipperSequence!691 (focus!231 lt!638178) (++!5052 lt!638184 lt!638169) 0) e!1079397)))

(declare-fun b!1686021 () Bool)

(assert (=> b!1686021 (= e!1079397 (not (lostCauseZipper!43 (focus!231 lt!638178))))))

(declare-fun b!1686022 () Bool)

(assert (=> b!1686022 (= e!1079397 (prefixMatchZipperSequence!691 (derivationStepZipper!67 (focus!231 lt!638178) (apply!5017 (++!5052 lt!638184 lt!638169) 0)) (++!5052 lt!638184 lt!638169) (+ 0 1)))))

(assert (= (and d!513456 c!275394) b!1686021))

(assert (= (and d!513456 (not c!275394)) b!1686022))

(assert (=> d!513456 m!2063547))

(assert (=> d!513456 m!2069007))

(assert (=> b!1686021 m!2064655))

(declare-fun m!2069065 () Bool)

(assert (=> b!1686021 m!2069065))

(assert (=> b!1686022 m!2063547))

(declare-fun m!2069067 () Bool)

(assert (=> b!1686022 m!2069067))

(assert (=> b!1686022 m!2064655))

(assert (=> b!1686022 m!2069067))

(declare-fun m!2069069 () Bool)

(assert (=> b!1686022 m!2069069))

(assert (=> b!1686022 m!2069069))

(assert (=> b!1686022 m!2063547))

(declare-fun m!2069071 () Bool)

(assert (=> b!1686022 m!2069071))

(assert (=> d!512344 d!513456))

(declare-fun d!513458 () Bool)

(declare-fun c!275395 () Bool)

(assert (=> d!513458 (= c!275395 (isEmpty!11547 lt!638779))))

(declare-fun e!1079398 () Bool)

(assert (=> d!513458 (= (prefixMatch!492 lt!638178 lt!638779) e!1079398)))

(declare-fun b!1686023 () Bool)

(assert (=> b!1686023 (= e!1079398 (not (lostCause!486 lt!638178)))))

(declare-fun b!1686024 () Bool)

(assert (=> b!1686024 (= e!1079398 (prefixMatch!492 (derivativeStep!1138 lt!638178 (head!3766 lt!638779)) (tail!2512 lt!638779)))))

(assert (= (and d!513458 c!275395) b!1686023))

(assert (= (and d!513458 (not c!275395)) b!1686024))

(assert (=> d!513458 m!2069037))

(assert (=> b!1686023 m!2063939))

(assert (=> b!1686024 m!2069041))

(assert (=> b!1686024 m!2069041))

(declare-fun m!2069073 () Bool)

(assert (=> b!1686024 m!2069073))

(assert (=> b!1686024 m!2069045))

(assert (=> b!1686024 m!2069073))

(assert (=> b!1686024 m!2069045))

(declare-fun m!2069075 () Bool)

(assert (=> b!1686024 m!2069075))

(assert (=> d!512344 d!513458))

(declare-fun d!513460 () Bool)

(declare-fun c!275396 () Bool)

(assert (=> d!513460 (= c!275396 (isEmpty!11547 (dropList!735 (++!5052 lt!638184 lt!638169) lt!638775)))))

(declare-fun e!1079399 () Bool)

(assert (=> d!513460 (= (prefixMatchZipper!210 lt!638783 (dropList!735 (++!5052 lt!638184 lt!638169) lt!638775)) e!1079399)))

(declare-fun b!1686025 () Bool)

(assert (=> b!1686025 (= e!1079399 (not (lostCauseZipper!43 lt!638783)))))

(declare-fun b!1686026 () Bool)

(assert (=> b!1686026 (= e!1079399 (prefixMatchZipper!210 (derivationStepZipper!67 lt!638783 (head!3766 (dropList!735 (++!5052 lt!638184 lt!638169) lt!638775))) (tail!2512 (dropList!735 (++!5052 lt!638184 lt!638169) lt!638775))))))

(assert (= (and d!513460 c!275396) b!1686025))

(assert (= (and d!513460 (not c!275396)) b!1686026))

(assert (=> d!513460 m!2064649))

(declare-fun m!2069077 () Bool)

(assert (=> d!513460 m!2069077))

(assert (=> b!1686025 m!2069009))

(assert (=> b!1686026 m!2064649))

(declare-fun m!2069079 () Bool)

(assert (=> b!1686026 m!2069079))

(assert (=> b!1686026 m!2069079))

(declare-fun m!2069081 () Bool)

(assert (=> b!1686026 m!2069081))

(assert (=> b!1686026 m!2064649))

(declare-fun m!2069083 () Bool)

(assert (=> b!1686026 m!2069083))

(assert (=> b!1686026 m!2069081))

(assert (=> b!1686026 m!2069083))

(declare-fun m!2069085 () Bool)

(assert (=> b!1686026 m!2069085))

(assert (=> d!512344 d!513460))

(declare-fun d!513462 () Bool)

(assert (=> d!513462 (= (head!3766 lt!638185) (h!23864 lt!638185))))

(assert (=> b!1683651 d!513462))

(declare-fun d!513464 () Bool)

(assert (=> d!513464 (= (head!3766 lt!638182) (h!23864 lt!638182))))

(assert (=> b!1683651 d!513464))

(declare-fun b!1686027 () Bool)

(declare-fun res!755831 () Bool)

(declare-fun e!1079401 () Bool)

(assert (=> b!1686027 (=> (not res!755831) (not e!1079401))))

(declare-fun lt!640288 () Option!3558)

(assert (=> b!1686027 (= res!755831 (< (size!14706 (_2!10502 (get!5414 lt!640288))) (size!14706 lt!638187)))))

(declare-fun d!513466 () Bool)

(declare-fun e!1079400 () Bool)

(assert (=> d!513466 e!1079400))

(declare-fun res!755835 () Bool)

(assert (=> d!513466 (=> res!755835 e!1079400)))

(assert (=> d!513466 (= res!755835 (isEmpty!11548 lt!640288))))

(declare-fun e!1079402 () Option!3558)

(assert (=> d!513466 (= lt!640288 e!1079402)))

(declare-fun c!275397 () Bool)

(assert (=> d!513466 (= c!275397 (and ((_ is Cons!18466) (t!154513 rules!1846)) ((_ is Nil!18466) (t!154513 (t!154513 rules!1846)))))))

(declare-fun lt!640289 () Unit!31713)

(declare-fun lt!640291 () Unit!31713)

(assert (=> d!513466 (= lt!640289 lt!640291)))

(assert (=> d!513466 (isPrefix!1509 lt!638187 lt!638187)))

(assert (=> d!513466 (= lt!640291 (lemmaIsPrefixRefl!1028 lt!638187 lt!638187))))

(assert (=> d!513466 (rulesValidInductive!1050 thiss!17113 (t!154513 rules!1846))))

(assert (=> d!513466 (= (maxPrefix!1440 thiss!17113 (t!154513 rules!1846) lt!638187) lt!640288)))

(declare-fun call!107792 () Option!3558)

(declare-fun bm!107787 () Bool)

(assert (=> bm!107787 (= call!107792 (maxPrefixOneRule!843 thiss!17113 (h!23867 (t!154513 rules!1846)) lt!638187))))

(declare-fun b!1686028 () Bool)

(assert (=> b!1686028 (= e!1079401 (contains!3242 (t!154513 rules!1846) (rule!5151 (_1!10502 (get!5414 lt!640288)))))))

(declare-fun b!1686029 () Bool)

(assert (=> b!1686029 (= e!1079402 call!107792)))

(declare-fun b!1686030 () Bool)

(declare-fun res!755834 () Bool)

(assert (=> b!1686030 (=> (not res!755834) (not e!1079401))))

(assert (=> b!1686030 (= res!755834 (= (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!640288)))) (originalCharacters!4065 (_1!10502 (get!5414 lt!640288)))))))

(declare-fun b!1686031 () Bool)

(assert (=> b!1686031 (= e!1079400 e!1079401)))

(declare-fun res!755832 () Bool)

(assert (=> b!1686031 (=> (not res!755832) (not e!1079401))))

(assert (=> b!1686031 (= res!755832 (isDefined!2907 lt!640288))))

(declare-fun b!1686032 () Bool)

(declare-fun res!755836 () Bool)

(assert (=> b!1686032 (=> (not res!755836) (not e!1079401))))

(assert (=> b!1686032 (= res!755836 (= (value!102326 (_1!10502 (get!5414 lt!640288))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!640288)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!640288)))))))))

(declare-fun b!1686033 () Bool)

(declare-fun res!755833 () Bool)

(assert (=> b!1686033 (=> (not res!755833) (not e!1079401))))

(assert (=> b!1686033 (= res!755833 (matchR!2070 (regex!3251 (rule!5151 (_1!10502 (get!5414 lt!640288)))) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!640288))))))))

(declare-fun b!1686034 () Bool)

(declare-fun res!755837 () Bool)

(assert (=> b!1686034 (=> (not res!755837) (not e!1079401))))

(assert (=> b!1686034 (= res!755837 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!640288)))) (_2!10502 (get!5414 lt!640288))) lt!638187))))

(declare-fun b!1686035 () Bool)

(declare-fun lt!640292 () Option!3558)

(declare-fun lt!640290 () Option!3558)

(assert (=> b!1686035 (= e!1079402 (ite (and ((_ is None!3557) lt!640292) ((_ is None!3557) lt!640290)) None!3557 (ite ((_ is None!3557) lt!640290) lt!640292 (ite ((_ is None!3557) lt!640292) lt!640290 (ite (>= (size!14700 (_1!10502 (v!24868 lt!640292))) (size!14700 (_1!10502 (v!24868 lt!640290)))) lt!640292 lt!640290)))))))

(assert (=> b!1686035 (= lt!640292 call!107792)))

(assert (=> b!1686035 (= lt!640290 (maxPrefix!1440 thiss!17113 (t!154513 (t!154513 rules!1846)) lt!638187))))

(assert (= (and d!513466 c!275397) b!1686029))

(assert (= (and d!513466 (not c!275397)) b!1686035))

(assert (= (or b!1686029 b!1686035) bm!107787))

(assert (= (and d!513466 (not res!755835)) b!1686031))

(assert (= (and b!1686031 res!755832) b!1686030))

(assert (= (and b!1686030 res!755834) b!1686027))

(assert (= (and b!1686027 res!755831) b!1686034))

(assert (= (and b!1686034 res!755837) b!1686032))

(assert (= (and b!1686032 res!755836) b!1686033))

(assert (= (and b!1686033 res!755833) b!1686028))

(declare-fun m!2069087 () Bool)

(assert (=> b!1686032 m!2069087))

(declare-fun m!2069089 () Bool)

(assert (=> b!1686032 m!2069089))

(assert (=> b!1686032 m!2069089))

(declare-fun m!2069091 () Bool)

(assert (=> b!1686032 m!2069091))

(assert (=> b!1686030 m!2069087))

(declare-fun m!2069093 () Bool)

(assert (=> b!1686030 m!2069093))

(assert (=> b!1686030 m!2069093))

(declare-fun m!2069095 () Bool)

(assert (=> b!1686030 m!2069095))

(assert (=> b!1686034 m!2069087))

(assert (=> b!1686034 m!2069093))

(assert (=> b!1686034 m!2069093))

(assert (=> b!1686034 m!2069095))

(assert (=> b!1686034 m!2069095))

(declare-fun m!2069097 () Bool)

(assert (=> b!1686034 m!2069097))

(declare-fun m!2069099 () Bool)

(assert (=> bm!107787 m!2069099))

(assert (=> b!1686028 m!2069087))

(declare-fun m!2069101 () Bool)

(assert (=> b!1686028 m!2069101))

(assert (=> b!1686033 m!2069087))

(assert (=> b!1686033 m!2069093))

(assert (=> b!1686033 m!2069093))

(assert (=> b!1686033 m!2069095))

(assert (=> b!1686033 m!2069095))

(declare-fun m!2069103 () Bool)

(assert (=> b!1686033 m!2069103))

(declare-fun m!2069105 () Bool)

(assert (=> d!513466 m!2069105))

(assert (=> d!513466 m!2064355))

(assert (=> d!513466 m!2064359))

(assert (=> d!513466 m!2066519))

(declare-fun m!2069107 () Bool)

(assert (=> b!1686035 m!2069107))

(declare-fun m!2069109 () Bool)

(assert (=> b!1686031 m!2069109))

(assert (=> b!1686027 m!2069087))

(declare-fun m!2069111 () Bool)

(assert (=> b!1686027 m!2069111))

(assert (=> b!1686027 m!2064371))

(assert (=> b!1683713 d!513466))

(declare-fun bs!399591 () Bool)

(declare-fun b!1686052 () Bool)

(assert (= bs!399591 (and b!1686052 d!512756)))

(declare-fun lambda!68331 () Int)

(assert (=> bs!399591 (= (and (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (= (toValue!4726 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) (= lambda!68331 lambda!68294))))

(declare-fun b!1686061 () Bool)

(declare-fun e!1079423 () Bool)

(assert (=> b!1686061 (= e!1079423 true)))

(declare-fun b!1686060 () Bool)

(declare-fun e!1079422 () Bool)

(assert (=> b!1686060 (= e!1079422 e!1079423)))

(assert (=> b!1686052 e!1079422))

(assert (= b!1686060 b!1686061))

(assert (= b!1686052 b!1686060))

(assert (=> b!1686061 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8373 order!11143 lambda!68331))))

(assert (=> b!1686061 (< (dynLambda!8367 order!11129 (toChars!4585 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8373 order!11143 lambda!68331))))

(declare-fun d!513468 () Bool)

(declare-fun e!1079415 () Bool)

(assert (=> d!513468 e!1079415))

(declare-fun res!755846 () Bool)

(assert (=> d!513468 (=> (not res!755846) (not e!1079415))))

(declare-fun lt!640322 () Option!3559)

(assert (=> d!513468 (= res!755846 (= (isDefined!2908 lt!640322) (isDefined!2907 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457))))))))))

(declare-fun e!1079414 () Option!3559)

(assert (=> d!513468 (= lt!640322 e!1079414)))

(declare-fun c!275400 () Bool)

(declare-datatypes ((tuple2!18214 0))(
  ( (tuple2!18215 (_1!10509 BalanceConc!12244) (_2!10509 BalanceConc!12244)) )
))
(declare-fun lt!640320 () tuple2!18214)

(assert (=> d!513468 (= c!275400 (isEmpty!11549 (_1!10509 lt!640320)))))

(declare-fun findLongestMatchWithZipperSequence!125 (Regex!4579 BalanceConc!12244) tuple2!18214)

(assert (=> d!513468 (= lt!640320 (findLongestMatchWithZipperSequence!125 (regex!3251 (h!23867 rules!1846)) (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(assert (=> d!513468 (ruleValid!767 thiss!17113 (h!23867 rules!1846))))

(assert (=> d!513468 (= (maxPrefixOneRuleZipperSequence!360 thiss!17113 (h!23867 rules!1846) (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))) lt!640322)))

(declare-fun b!1686048 () Bool)

(declare-fun e!1079416 () Bool)

(assert (=> b!1686048 (= e!1079416 (= (list!7415 (_2!10503 (get!5413 lt!640322))) (_2!10502 (get!5414 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(declare-fun b!1686049 () Bool)

(declare-fun e!1079413 () Bool)

(assert (=> b!1686049 (= e!1079415 e!1079413)))

(declare-fun res!755849 () Bool)

(assert (=> b!1686049 (=> res!755849 e!1079413)))

(assert (=> b!1686049 (= res!755849 (not (isDefined!2908 lt!640322)))))

(declare-fun b!1686050 () Bool)

(assert (=> b!1686050 (= e!1079414 None!3558)))

(declare-fun b!1686051 () Bool)

(declare-fun e!1079417 () Bool)

(declare-fun lt!640316 () List!18533)

(assert (=> b!1686051 (= e!1079417 (matchR!2070 (regex!3251 (h!23867 rules!1846)) (_1!10507 (findLongestMatchInner!375 (regex!3251 (h!23867 rules!1846)) Nil!18463 (size!14706 Nil!18463) lt!640316 lt!640316 (size!14706 lt!640316)))))))

(assert (=> b!1686052 (= e!1079414 (Some!3558 (tuple2!18203 (Token!6069 (apply!5021 (transformation!3251 (h!23867 rules!1846)) (_1!10509 lt!640320)) (h!23867 rules!1846) (size!14705 (_1!10509 lt!640320)) (list!7415 (_1!10509 lt!640320))) (_2!10509 lt!640320))))))

(assert (=> b!1686052 (= lt!640316 (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun lt!640317 () Unit!31713)

(assert (=> b!1686052 (= lt!640317 (longestMatchIsAcceptedByMatchOrIsEmpty!359 (regex!3251 (h!23867 rules!1846)) lt!640316))))

(declare-fun res!755847 () Bool)

(assert (=> b!1686052 (= res!755847 (isEmpty!11547 (_1!10507 (findLongestMatchInner!375 (regex!3251 (h!23867 rules!1846)) Nil!18463 (size!14706 Nil!18463) lt!640316 lt!640316 (size!14706 lt!640316)))))))

(assert (=> b!1686052 (=> res!755847 e!1079417)))

(assert (=> b!1686052 e!1079417))

(declare-fun lt!640321 () Unit!31713)

(assert (=> b!1686052 (= lt!640321 lt!640317)))

(declare-fun lt!640318 () Unit!31713)

(assert (=> b!1686052 (= lt!640318 (lemmaInv!506 (transformation!3251 (h!23867 rules!1846))))))

(declare-fun lt!640314 () Unit!31713)

(declare-fun ForallOf!242 (Int BalanceConc!12244) Unit!31713)

(assert (=> b!1686052 (= lt!640314 (ForallOf!242 lambda!68331 (_1!10509 lt!640320)))))

(declare-fun lt!640315 () Unit!31713)

(assert (=> b!1686052 (= lt!640315 (ForallOf!242 lambda!68331 (seqFromList!2240 (list!7415 (_1!10509 lt!640320)))))))

(declare-fun lt!640313 () Option!3559)

(assert (=> b!1686052 (= lt!640313 (Some!3558 (tuple2!18203 (Token!6069 (apply!5021 (transformation!3251 (h!23867 rules!1846)) (_1!10509 lt!640320)) (h!23867 rules!1846) (size!14705 (_1!10509 lt!640320)) (list!7415 (_1!10509 lt!640320))) (_2!10509 lt!640320))))))

(declare-fun lt!640319 () Unit!31713)

(assert (=> b!1686052 (= lt!640319 (lemmaEqSameImage!226 (transformation!3251 (h!23867 rules!1846)) (_1!10509 lt!640320) (seqFromList!2240 (list!7415 (_1!10509 lt!640320)))))))

(declare-fun b!1686053 () Bool)

(assert (=> b!1686053 (= e!1079413 e!1079416)))

(declare-fun res!755848 () Bool)

(assert (=> b!1686053 (=> (not res!755848) (not e!1079416))))

(assert (=> b!1686053 (= res!755848 (= (_1!10503 (get!5413 lt!640322)) (_1!10502 (get!5414 (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (list!7415 (seqFromList!2240 (originalCharacters!4065 (h!23866 tokens!457)))))))))))

(assert (= (and d!513468 c!275400) b!1686050))

(assert (= (and d!513468 (not c!275400)) b!1686052))

(assert (= (and b!1686052 (not res!755847)) b!1686051))

(assert (= (and d!513468 res!755846) b!1686049))

(assert (= (and b!1686049 (not res!755849)) b!1686053))

(assert (= (and b!1686053 res!755848) b!1686048))

(assert (=> b!1686052 m!2067279))

(declare-fun m!2069113 () Bool)

(assert (=> b!1686052 m!2069113))

(declare-fun m!2069115 () Bool)

(assert (=> b!1686052 m!2069115))

(declare-fun m!2069117 () Bool)

(assert (=> b!1686052 m!2069117))

(assert (=> b!1686052 m!2069113))

(declare-fun m!2069119 () Bool)

(assert (=> b!1686052 m!2069119))

(declare-fun m!2069121 () Bool)

(assert (=> b!1686052 m!2069121))

(declare-fun m!2069123 () Bool)

(assert (=> b!1686052 m!2069123))

(assert (=> b!1686052 m!2067279))

(assert (=> b!1686052 m!2063497))

(assert (=> b!1686052 m!2063727))

(declare-fun m!2069125 () Bool)

(assert (=> b!1686052 m!2069125))

(declare-fun m!2069127 () Bool)

(assert (=> b!1686052 m!2069127))

(declare-fun m!2069129 () Bool)

(assert (=> b!1686052 m!2069129))

(assert (=> b!1686052 m!2069127))

(declare-fun m!2069131 () Bool)

(assert (=> b!1686052 m!2069131))

(assert (=> b!1686052 m!2069125))

(assert (=> b!1686052 m!2069127))

(declare-fun m!2069133 () Bool)

(assert (=> b!1686052 m!2069133))

(declare-fun m!2069135 () Bool)

(assert (=> b!1686052 m!2069135))

(assert (=> b!1686048 m!2063727))

(assert (=> b!1686048 m!2065419))

(assert (=> b!1686048 m!2063497))

(assert (=> b!1686048 m!2063727))

(declare-fun m!2069137 () Bool)

(assert (=> b!1686048 m!2069137))

(assert (=> b!1686048 m!2065419))

(declare-fun m!2069139 () Bool)

(assert (=> b!1686048 m!2069139))

(declare-fun m!2069141 () Bool)

(assert (=> b!1686048 m!2069141))

(assert (=> d!513468 m!2065419))

(declare-fun m!2069143 () Bool)

(assert (=> d!513468 m!2069143))

(assert (=> d!513468 m!2066517))

(assert (=> d!513468 m!2063727))

(assert (=> d!513468 m!2065419))

(assert (=> d!513468 m!2063497))

(assert (=> d!513468 m!2063727))

(declare-fun m!2069145 () Bool)

(assert (=> d!513468 m!2069145))

(declare-fun m!2069147 () Bool)

(assert (=> d!513468 m!2069147))

(assert (=> d!513468 m!2063497))

(declare-fun m!2069149 () Bool)

(assert (=> d!513468 m!2069149))

(assert (=> b!1686051 m!2067279))

(assert (=> b!1686051 m!2069113))

(assert (=> b!1686051 m!2067279))

(assert (=> b!1686051 m!2069113))

(assert (=> b!1686051 m!2069115))

(declare-fun m!2069151 () Bool)

(assert (=> b!1686051 m!2069151))

(assert (=> b!1686049 m!2069145))

(assert (=> b!1686053 m!2069141))

(assert (=> b!1686053 m!2063497))

(assert (=> b!1686053 m!2063727))

(assert (=> b!1686053 m!2063727))

(assert (=> b!1686053 m!2065419))

(assert (=> b!1686053 m!2065419))

(assert (=> b!1686053 m!2069139))

(assert (=> bm!107586 d!513468))

(declare-fun d!513470 () Bool)

(assert (=> d!513470 (= (isDefined!2907 lt!638321) (not (isEmpty!11548 lt!638321)))))

(declare-fun bs!399592 () Bool)

(assert (= bs!399592 d!513470))

(assert (=> bs!399592 m!2063873))

(assert (=> b!1683563 d!513470))

(declare-fun b!1686062 () Bool)

(declare-fun res!755855 () Bool)

(declare-fun e!1079425 () Bool)

(assert (=> b!1686062 (=> (not res!755855) (not e!1079425))))

(declare-fun lt!640325 () Option!3558)

(assert (=> b!1686062 (= res!755855 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!640325)))) (_2!10502 (get!5414 lt!640325))) (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun d!513472 () Bool)

(declare-fun e!1079424 () Bool)

(assert (=> d!513472 e!1079424))

(declare-fun res!755850 () Bool)

(assert (=> d!513472 (=> res!755850 e!1079424)))

(assert (=> d!513472 (= res!755850 (isEmpty!11548 lt!640325))))

(declare-fun e!1079427 () Option!3558)

(assert (=> d!513472 (= lt!640325 e!1079427)))

(declare-fun c!275401 () Bool)

(declare-fun lt!640327 () tuple2!18210)

(assert (=> d!513472 (= c!275401 (isEmpty!11547 (_1!10507 lt!640327)))))

(assert (=> d!513472 (= lt!640327 (findLongestMatch!302 (regex!3251 (h!23867 rules!1846)) (originalCharacters!4065 (h!23866 tokens!457))))))

(assert (=> d!513472 (ruleValid!767 thiss!17113 (h!23867 rules!1846))))

(assert (=> d!513472 (= (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) (originalCharacters!4065 (h!23866 tokens!457))) lt!640325)))

(declare-fun b!1686063 () Bool)

(declare-fun res!755851 () Bool)

(assert (=> b!1686063 (=> (not res!755851) (not e!1079425))))

(assert (=> b!1686063 (= res!755851 (= (value!102326 (_1!10502 (get!5414 lt!640325))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!640325)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!640325)))))))))

(declare-fun b!1686064 () Bool)

(declare-fun e!1079426 () Bool)

(assert (=> b!1686064 (= e!1079426 (matchR!2070 (regex!3251 (h!23867 rules!1846)) (_1!10507 (findLongestMatchInner!375 (regex!3251 (h!23867 rules!1846)) Nil!18463 (size!14706 Nil!18463) (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457)) (size!14706 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(declare-fun b!1686065 () Bool)

(assert (=> b!1686065 (= e!1079427 (Some!3557 (tuple2!18201 (Token!6069 (apply!5021 (transformation!3251 (h!23867 rules!1846)) (seqFromList!2240 (_1!10507 lt!640327))) (h!23867 rules!1846) (size!14705 (seqFromList!2240 (_1!10507 lt!640327))) (_1!10507 lt!640327)) (_2!10507 lt!640327))))))

(declare-fun lt!640323 () Unit!31713)

(assert (=> b!1686065 (= lt!640323 (longestMatchIsAcceptedByMatchOrIsEmpty!359 (regex!3251 (h!23867 rules!1846)) (originalCharacters!4065 (h!23866 tokens!457))))))

(declare-fun res!755854 () Bool)

(assert (=> b!1686065 (= res!755854 (isEmpty!11547 (_1!10507 (findLongestMatchInner!375 (regex!3251 (h!23867 rules!1846)) Nil!18463 (size!14706 Nil!18463) (originalCharacters!4065 (h!23866 tokens!457)) (originalCharacters!4065 (h!23866 tokens!457)) (size!14706 (originalCharacters!4065 (h!23866 tokens!457)))))))))

(assert (=> b!1686065 (=> res!755854 e!1079426)))

(assert (=> b!1686065 e!1079426))

(declare-fun lt!640324 () Unit!31713)

(assert (=> b!1686065 (= lt!640324 lt!640323)))

(declare-fun lt!640326 () Unit!31713)

(assert (=> b!1686065 (= lt!640326 (lemmaSemiInverse!441 (transformation!3251 (h!23867 rules!1846)) (seqFromList!2240 (_1!10507 lt!640327))))))

(declare-fun b!1686066 () Bool)

(declare-fun res!755856 () Bool)

(assert (=> b!1686066 (=> (not res!755856) (not e!1079425))))

(assert (=> b!1686066 (= res!755856 (= (rule!5151 (_1!10502 (get!5414 lt!640325))) (h!23867 rules!1846)))))

(declare-fun b!1686067 () Bool)

(assert (=> b!1686067 (= e!1079427 None!3557)))

(declare-fun b!1686068 () Bool)

(assert (=> b!1686068 (= e!1079425 (= (size!14700 (_1!10502 (get!5414 lt!640325))) (size!14706 (originalCharacters!4065 (_1!10502 (get!5414 lt!640325))))))))

(declare-fun b!1686069 () Bool)

(declare-fun res!755853 () Bool)

(assert (=> b!1686069 (=> (not res!755853) (not e!1079425))))

(assert (=> b!1686069 (= res!755853 (< (size!14706 (_2!10502 (get!5414 lt!640325))) (size!14706 (originalCharacters!4065 (h!23866 tokens!457)))))))

(declare-fun b!1686070 () Bool)

(assert (=> b!1686070 (= e!1079424 e!1079425)))

(declare-fun res!755852 () Bool)

(assert (=> b!1686070 (=> (not res!755852) (not e!1079425))))

(assert (=> b!1686070 (= res!755852 (matchR!2070 (regex!3251 (h!23867 rules!1846)) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!640325))))))))

(assert (= (and d!513472 c!275401) b!1686067))

(assert (= (and d!513472 (not c!275401)) b!1686065))

(assert (= (and b!1686065 (not res!755854)) b!1686064))

(assert (= (and d!513472 (not res!755850)) b!1686070))

(assert (= (and b!1686070 res!755852) b!1686062))

(assert (= (and b!1686062 res!755855) b!1686069))

(assert (= (and b!1686069 res!755853) b!1686066))

(assert (= (and b!1686066 res!755856) b!1686063))

(assert (= (and b!1686063 res!755851) b!1686068))

(declare-fun m!2069153 () Bool)

(assert (=> b!1686068 m!2069153))

(declare-fun m!2069155 () Bool)

(assert (=> b!1686068 m!2069155))

(assert (=> b!1686064 m!2067279))

(assert (=> b!1686064 m!2063851))

(assert (=> b!1686064 m!2067279))

(assert (=> b!1686064 m!2063851))

(declare-fun m!2069157 () Bool)

(assert (=> b!1686064 m!2069157))

(declare-fun m!2069159 () Bool)

(assert (=> b!1686064 m!2069159))

(assert (=> b!1686063 m!2069153))

(declare-fun m!2069161 () Bool)

(assert (=> b!1686063 m!2069161))

(assert (=> b!1686063 m!2069161))

(declare-fun m!2069163 () Bool)

(assert (=> b!1686063 m!2069163))

(assert (=> b!1686062 m!2069153))

(declare-fun m!2069165 () Bool)

(assert (=> b!1686062 m!2069165))

(assert (=> b!1686062 m!2069165))

(declare-fun m!2069167 () Bool)

(assert (=> b!1686062 m!2069167))

(assert (=> b!1686062 m!2069167))

(declare-fun m!2069169 () Bool)

(assert (=> b!1686062 m!2069169))

(declare-fun m!2069171 () Bool)

(assert (=> d!513472 m!2069171))

(declare-fun m!2069173 () Bool)

(assert (=> d!513472 m!2069173))

(declare-fun m!2069175 () Bool)

(assert (=> d!513472 m!2069175))

(assert (=> d!513472 m!2066517))

(declare-fun m!2069177 () Bool)

(assert (=> b!1686065 m!2069177))

(assert (=> b!1686065 m!2069177))

(declare-fun m!2069179 () Bool)

(assert (=> b!1686065 m!2069179))

(assert (=> b!1686065 m!2067279))

(declare-fun m!2069181 () Bool)

(assert (=> b!1686065 m!2069181))

(declare-fun m!2069183 () Bool)

(assert (=> b!1686065 m!2069183))

(assert (=> b!1686065 m!2069177))

(declare-fun m!2069185 () Bool)

(assert (=> b!1686065 m!2069185))

(assert (=> b!1686065 m!2063851))

(assert (=> b!1686065 m!2067279))

(assert (=> b!1686065 m!2063851))

(assert (=> b!1686065 m!2069157))

(assert (=> b!1686065 m!2069177))

(declare-fun m!2069187 () Bool)

(assert (=> b!1686065 m!2069187))

(assert (=> b!1686069 m!2069153))

(declare-fun m!2069189 () Bool)

(assert (=> b!1686069 m!2069189))

(assert (=> b!1686069 m!2063851))

(assert (=> b!1686070 m!2069153))

(assert (=> b!1686070 m!2069165))

(assert (=> b!1686070 m!2069165))

(assert (=> b!1686070 m!2069167))

(assert (=> b!1686070 m!2069167))

(declare-fun m!2069191 () Bool)

(assert (=> b!1686070 m!2069191))

(assert (=> b!1686066 m!2069153))

(assert (=> bm!107592 d!513472))

(assert (=> b!1683739 d!512614))

(declare-fun d!513474 () Bool)

(assert (=> d!513474 (= (list!7416 (_1!10501 lt!638227)) (list!7419 (c!274781 (_1!10501 lt!638227))))))

(declare-fun bs!399593 () Bool)

(assert (= bs!399593 d!513474))

(declare-fun m!2069193 () Bool)

(assert (=> bs!399593 m!2069193))

(assert (=> b!1683435 d!513474))

(assert (=> b!1683435 d!512638))

(assert (=> b!1683435 d!512654))

(declare-fun b!1686071 () Bool)

(declare-fun res!755862 () Bool)

(declare-fun e!1079429 () Bool)

(assert (=> b!1686071 (=> (not res!755862) (not e!1079429))))

(declare-fun lt!640330 () Option!3558)

(assert (=> b!1686071 (= res!755862 (= (++!5051 (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!640330)))) (_2!10502 (get!5414 lt!640330))) lt!638187))))

(declare-fun d!513476 () Bool)

(declare-fun e!1079428 () Bool)

(assert (=> d!513476 e!1079428))

(declare-fun res!755857 () Bool)

(assert (=> d!513476 (=> res!755857 e!1079428)))

(assert (=> d!513476 (= res!755857 (isEmpty!11548 lt!640330))))

(declare-fun e!1079431 () Option!3558)

(assert (=> d!513476 (= lt!640330 e!1079431)))

(declare-fun c!275402 () Bool)

(declare-fun lt!640332 () tuple2!18210)

(assert (=> d!513476 (= c!275402 (isEmpty!11547 (_1!10507 lt!640332)))))

(assert (=> d!513476 (= lt!640332 (findLongestMatch!302 (regex!3251 (h!23867 rules!1846)) lt!638187))))

(assert (=> d!513476 (ruleValid!767 thiss!17113 (h!23867 rules!1846))))

(assert (=> d!513476 (= (maxPrefixOneRule!843 thiss!17113 (h!23867 rules!1846) lt!638187) lt!640330)))

(declare-fun b!1686072 () Bool)

(declare-fun res!755858 () Bool)

(assert (=> b!1686072 (=> (not res!755858) (not e!1079429))))

(assert (=> b!1686072 (= res!755858 (= (value!102326 (_1!10502 (get!5414 lt!640330))) (apply!5021 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!640330)))) (seqFromList!2240 (originalCharacters!4065 (_1!10502 (get!5414 lt!640330)))))))))

(declare-fun b!1686073 () Bool)

(declare-fun e!1079430 () Bool)

(assert (=> b!1686073 (= e!1079430 (matchR!2070 (regex!3251 (h!23867 rules!1846)) (_1!10507 (findLongestMatchInner!375 (regex!3251 (h!23867 rules!1846)) Nil!18463 (size!14706 Nil!18463) lt!638187 lt!638187 (size!14706 lt!638187)))))))

(declare-fun b!1686074 () Bool)

(assert (=> b!1686074 (= e!1079431 (Some!3557 (tuple2!18201 (Token!6069 (apply!5021 (transformation!3251 (h!23867 rules!1846)) (seqFromList!2240 (_1!10507 lt!640332))) (h!23867 rules!1846) (size!14705 (seqFromList!2240 (_1!10507 lt!640332))) (_1!10507 lt!640332)) (_2!10507 lt!640332))))))

(declare-fun lt!640328 () Unit!31713)

(assert (=> b!1686074 (= lt!640328 (longestMatchIsAcceptedByMatchOrIsEmpty!359 (regex!3251 (h!23867 rules!1846)) lt!638187))))

(declare-fun res!755861 () Bool)

(assert (=> b!1686074 (= res!755861 (isEmpty!11547 (_1!10507 (findLongestMatchInner!375 (regex!3251 (h!23867 rules!1846)) Nil!18463 (size!14706 Nil!18463) lt!638187 lt!638187 (size!14706 lt!638187)))))))

(assert (=> b!1686074 (=> res!755861 e!1079430)))

(assert (=> b!1686074 e!1079430))

(declare-fun lt!640329 () Unit!31713)

(assert (=> b!1686074 (= lt!640329 lt!640328)))

(declare-fun lt!640331 () Unit!31713)

(assert (=> b!1686074 (= lt!640331 (lemmaSemiInverse!441 (transformation!3251 (h!23867 rules!1846)) (seqFromList!2240 (_1!10507 lt!640332))))))

(declare-fun b!1686075 () Bool)

(declare-fun res!755863 () Bool)

(assert (=> b!1686075 (=> (not res!755863) (not e!1079429))))

(assert (=> b!1686075 (= res!755863 (= (rule!5151 (_1!10502 (get!5414 lt!640330))) (h!23867 rules!1846)))))

(declare-fun b!1686076 () Bool)

(assert (=> b!1686076 (= e!1079431 None!3557)))

(declare-fun b!1686077 () Bool)

(assert (=> b!1686077 (= e!1079429 (= (size!14700 (_1!10502 (get!5414 lt!640330))) (size!14706 (originalCharacters!4065 (_1!10502 (get!5414 lt!640330))))))))

(declare-fun b!1686078 () Bool)

(declare-fun res!755860 () Bool)

(assert (=> b!1686078 (=> (not res!755860) (not e!1079429))))

(assert (=> b!1686078 (= res!755860 (< (size!14706 (_2!10502 (get!5414 lt!640330))) (size!14706 lt!638187)))))

(declare-fun b!1686079 () Bool)

(assert (=> b!1686079 (= e!1079428 e!1079429)))

(declare-fun res!755859 () Bool)

(assert (=> b!1686079 (=> (not res!755859) (not e!1079429))))

(assert (=> b!1686079 (= res!755859 (matchR!2070 (regex!3251 (h!23867 rules!1846)) (list!7415 (charsOf!1900 (_1!10502 (get!5414 lt!640330))))))))

(assert (= (and d!513476 c!275402) b!1686076))

(assert (= (and d!513476 (not c!275402)) b!1686074))

(assert (= (and b!1686074 (not res!755861)) b!1686073))

(assert (= (and d!513476 (not res!755857)) b!1686079))

(assert (= (and b!1686079 res!755859) b!1686071))

(assert (= (and b!1686071 res!755862) b!1686078))

(assert (= (and b!1686078 res!755860) b!1686075))

(assert (= (and b!1686075 res!755863) b!1686072))

(assert (= (and b!1686072 res!755858) b!1686077))

(declare-fun m!2069195 () Bool)

(assert (=> b!1686077 m!2069195))

(declare-fun m!2069197 () Bool)

(assert (=> b!1686077 m!2069197))

(assert (=> b!1686073 m!2067279))

(assert (=> b!1686073 m!2064371))

(assert (=> b!1686073 m!2067279))

(assert (=> b!1686073 m!2064371))

(declare-fun m!2069199 () Bool)

(assert (=> b!1686073 m!2069199))

(declare-fun m!2069201 () Bool)

(assert (=> b!1686073 m!2069201))

(assert (=> b!1686072 m!2069195))

(declare-fun m!2069203 () Bool)

(assert (=> b!1686072 m!2069203))

(assert (=> b!1686072 m!2069203))

(declare-fun m!2069205 () Bool)

(assert (=> b!1686072 m!2069205))

(assert (=> b!1686071 m!2069195))

(declare-fun m!2069207 () Bool)

(assert (=> b!1686071 m!2069207))

(assert (=> b!1686071 m!2069207))

(declare-fun m!2069209 () Bool)

(assert (=> b!1686071 m!2069209))

(assert (=> b!1686071 m!2069209))

(declare-fun m!2069211 () Bool)

(assert (=> b!1686071 m!2069211))

(declare-fun m!2069213 () Bool)

(assert (=> d!513476 m!2069213))

(declare-fun m!2069215 () Bool)

(assert (=> d!513476 m!2069215))

(declare-fun m!2069217 () Bool)

(assert (=> d!513476 m!2069217))

(assert (=> d!513476 m!2066517))

(declare-fun m!2069219 () Bool)

(assert (=> b!1686074 m!2069219))

(assert (=> b!1686074 m!2069219))

(declare-fun m!2069221 () Bool)

(assert (=> b!1686074 m!2069221))

(assert (=> b!1686074 m!2067279))

(declare-fun m!2069223 () Bool)

(assert (=> b!1686074 m!2069223))

(declare-fun m!2069225 () Bool)

(assert (=> b!1686074 m!2069225))

(assert (=> b!1686074 m!2069219))

(declare-fun m!2069227 () Bool)

(assert (=> b!1686074 m!2069227))

(assert (=> b!1686074 m!2064371))

(assert (=> b!1686074 m!2067279))

(assert (=> b!1686074 m!2064371))

(assert (=> b!1686074 m!2069199))

(assert (=> b!1686074 m!2069219))

(declare-fun m!2069229 () Bool)

(assert (=> b!1686074 m!2069229))

(assert (=> b!1686078 m!2069195))

(declare-fun m!2069231 () Bool)

(assert (=> b!1686078 m!2069231))

(assert (=> b!1686078 m!2064371))

(assert (=> b!1686079 m!2069195))

(assert (=> b!1686079 m!2069207))

(assert (=> b!1686079 m!2069207))

(assert (=> b!1686079 m!2069209))

(assert (=> b!1686079 m!2069209))

(declare-fun m!2069233 () Bool)

(assert (=> b!1686079 m!2069233))

(assert (=> b!1686075 m!2069195))

(assert (=> bm!107594 d!513476))

(declare-fun d!513478 () Bool)

(assert (=> d!513478 (= (isEmpty!11544 (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))) ((_ is Nil!18465) (list!7416 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))))))

(assert (=> d!512122 d!513478))

(assert (=> d!512122 d!512938))

(declare-fun lt!640335 () Bool)

(declare-fun d!513480 () Bool)

(assert (=> d!513480 (= lt!640335 (isEmpty!11544 (list!7419 (c!274781 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185)))))))))

(assert (=> d!513480 (= lt!640335 (= (size!14711 (c!274781 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))) 0))))

(assert (=> d!513480 (= (isEmpty!11545 (c!274781 (_1!10501 (lex!1364 thiss!17113 rules!1846 (seqFromList!2240 lt!638185))))) lt!640335)))

(declare-fun bs!399594 () Bool)

(assert (= bs!399594 d!513480))

(assert (=> bs!399594 m!2066779))

(assert (=> bs!399594 m!2066779))

(declare-fun m!2069235 () Bool)

(assert (=> bs!399594 m!2069235))

(declare-fun m!2069237 () Bool)

(assert (=> bs!399594 m!2069237))

(assert (=> d!512122 d!513480))

(declare-fun d!513482 () Bool)

(declare-fun lt!640336 () Int)

(assert (=> d!513482 (= lt!640336 (size!14710 (list!7416 (_1!10501 lt!638520))))))

(assert (=> d!513482 (= lt!640336 (size!14711 (c!274781 (_1!10501 lt!638520))))))

(assert (=> d!513482 (= (size!14704 (_1!10501 lt!638520)) lt!640336)))

(declare-fun bs!399595 () Bool)

(assert (= bs!399595 d!513482))

(assert (=> bs!399595 m!2064211))

(assert (=> bs!399595 m!2064211))

(declare-fun m!2069239 () Bool)

(assert (=> bs!399595 m!2069239))

(declare-fun m!2069241 () Bool)

(assert (=> bs!399595 m!2069241))

(assert (=> d!512250 d!513482))

(declare-fun lt!640355 () BalanceConc!12244)

(declare-fun e!1079434 () tuple2!18198)

(declare-fun lt!640339 () Option!3559)

(declare-fun b!1686081 () Bool)

(assert (=> b!1686081 (= e!1079434 (lexTailRecV2!628 thiss!17113 rules!1846 lt!638174 lt!640355 (_2!10503 (v!24869 lt!640339)) (append!577 (BalanceConc!12247 Empty!6151) (_1!10503 (v!24869 lt!640339)))))))

(declare-fun lt!640342 () tuple2!18198)

(assert (=> b!1686081 (= lt!640342 (lexRec!388 thiss!17113 rules!1846 (_2!10503 (v!24869 lt!640339))))))

(declare-fun lt!640345 () List!18533)

(assert (=> b!1686081 (= lt!640345 (list!7415 (BalanceConc!12245 Empty!6150)))))

(declare-fun lt!640368 () List!18533)

(assert (=> b!1686081 (= lt!640368 (list!7415 (charsOf!1900 (_1!10503 (v!24869 lt!640339)))))))

(declare-fun lt!640346 () List!18533)

(assert (=> b!1686081 (= lt!640346 (list!7415 (_2!10503 (v!24869 lt!640339))))))

(declare-fun lt!640356 () Unit!31713)

(assert (=> b!1686081 (= lt!640356 (lemmaConcatAssociativity!1053 lt!640345 lt!640368 lt!640346))))

(assert (=> b!1686081 (= (++!5051 (++!5051 lt!640345 lt!640368) lt!640346) (++!5051 lt!640345 (++!5051 lt!640368 lt!640346)))))

(declare-fun lt!640338 () Unit!31713)

(assert (=> b!1686081 (= lt!640338 lt!640356)))

(declare-fun lt!640359 () Option!3559)

(assert (=> b!1686081 (= lt!640359 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 lt!638174))))

(declare-fun c!275405 () Bool)

(assert (=> b!1686081 (= c!275405 ((_ is Some!3558) lt!640359))))

(declare-fun e!1079433 () tuple2!18198)

(assert (=> b!1686081 (= (lexRec!388 thiss!17113 rules!1846 lt!638174) e!1079433)))

(declare-fun lt!640360 () Unit!31713)

(declare-fun Unit!31825 () Unit!31713)

(assert (=> b!1686081 (= lt!640360 Unit!31825)))

(declare-fun lt!640352 () List!18535)

(assert (=> b!1686081 (= lt!640352 (list!7416 (BalanceConc!12247 Empty!6151)))))

(declare-fun lt!640349 () List!18535)

(assert (=> b!1686081 (= lt!640349 (Cons!18465 (_1!10503 (v!24869 lt!640339)) Nil!18465))))

(declare-fun lt!640357 () List!18535)

(assert (=> b!1686081 (= lt!640357 (list!7416 (_1!10501 lt!640342)))))

(declare-fun lt!640340 () Unit!31713)

(assert (=> b!1686081 (= lt!640340 (lemmaConcatAssociativity!1054 lt!640352 lt!640349 lt!640357))))

(assert (=> b!1686081 (= (++!5055 (++!5055 lt!640352 lt!640349) lt!640357) (++!5055 lt!640352 (++!5055 lt!640349 lt!640357)))))

(declare-fun lt!640362 () Unit!31713)

(assert (=> b!1686081 (= lt!640362 lt!640340)))

(declare-fun lt!640364 () List!18533)

(assert (=> b!1686081 (= lt!640364 (++!5051 (list!7415 (BalanceConc!12245 Empty!6150)) (list!7415 (charsOf!1900 (_1!10503 (v!24869 lt!640339))))))))

(declare-fun lt!640341 () List!18533)

(assert (=> b!1686081 (= lt!640341 (list!7415 (_2!10503 (v!24869 lt!640339))))))

(declare-fun lt!640370 () List!18535)

(assert (=> b!1686081 (= lt!640370 (list!7416 (append!577 (BalanceConc!12247 Empty!6151) (_1!10503 (v!24869 lt!640339)))))))

(declare-fun lt!640358 () Unit!31713)

(assert (=> b!1686081 (= lt!640358 (lemmaLexThenLexPrefix!276 thiss!17113 rules!1846 lt!640364 lt!640341 lt!640370 (list!7416 (_1!10501 lt!640342)) (list!7415 (_2!10501 lt!640342))))))

(assert (=> b!1686081 (= (lexList!905 thiss!17113 rules!1846 lt!640364) (tuple2!18207 lt!640370 Nil!18463))))

(declare-fun lt!640337 () Unit!31713)

(assert (=> b!1686081 (= lt!640337 lt!640358)))

(declare-fun lt!640343 () BalanceConc!12244)

(assert (=> b!1686081 (= lt!640343 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (_1!10503 (v!24869 lt!640339)))))))

(declare-fun lt!640347 () Option!3559)

(assert (=> b!1686081 (= lt!640347 (maxPrefixZipperSequence!751 thiss!17113 rules!1846 lt!640343))))

(declare-fun c!275404 () Bool)

(assert (=> b!1686081 (= c!275404 ((_ is Some!3558) lt!640347))))

(declare-fun e!1079435 () tuple2!18198)

(assert (=> b!1686081 (= (lexRec!388 thiss!17113 rules!1846 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (_1!10503 (v!24869 lt!640339))))) e!1079435)))

(declare-fun lt!640344 () Unit!31713)

(declare-fun Unit!31828 () Unit!31713)

(assert (=> b!1686081 (= lt!640344 Unit!31828)))

(assert (=> b!1686081 (= lt!640355 (++!5052 (BalanceConc!12245 Empty!6150) (charsOf!1900 (_1!10503 (v!24869 lt!640339)))))))

(declare-fun lt!640361 () List!18533)

(assert (=> b!1686081 (= lt!640361 (list!7415 lt!640355))))

(declare-fun lt!640366 () List!18533)

(assert (=> b!1686081 (= lt!640366 (list!7415 (_2!10503 (v!24869 lt!640339))))))

(declare-fun lt!640363 () Unit!31713)

(assert (=> b!1686081 (= lt!640363 (lemmaConcatTwoListThenFSndIsSuffix!335 lt!640361 lt!640366))))

(assert (=> b!1686081 (isSuffix!434 lt!640366 (++!5051 lt!640361 lt!640366))))

(declare-fun lt!640367 () Unit!31713)

(assert (=> b!1686081 (= lt!640367 lt!640363)))

(declare-fun lt!640351 () tuple2!18198)

(declare-fun b!1686082 () Bool)

(assert (=> b!1686082 (= lt!640351 (lexRec!388 thiss!17113 rules!1846 (_2!10503 (v!24869 lt!640347))))))

(assert (=> b!1686082 (= e!1079435 (tuple2!18199 (prepend!845 (_1!10501 lt!640351) (_1!10503 (v!24869 lt!640347))) (_2!10501 lt!640351)))))

(declare-fun e!1079432 () Bool)

(declare-fun b!1686083 () Bool)

(declare-fun lt!640350 () tuple2!18198)

(assert (=> b!1686083 (= e!1079432 (= (list!7415 (_2!10501 lt!640350)) (list!7415 (_2!10501 (lexRec!388 thiss!17113 rules!1846 lt!638174)))))))

(declare-fun b!1686084 () Bool)

(assert (=> b!1686084 (= e!1079434 (tuple2!18199 (BalanceConc!12247 Empty!6151) lt!638174))))

(declare-fun b!1686085 () Bool)

(assert (=> b!1686085 (= e!1079433 (tuple2!18199 (BalanceConc!12247 Empty!6151) lt!638174))))

(declare-fun b!1686086 () Bool)

(assert (=> b!1686086 (= e!1079435 (tuple2!18199 (BalanceConc!12247 Empty!6151) lt!640343))))

(declare-fun d!513484 () Bool)

(assert (=> d!513484 e!1079432))

(declare-fun res!755864 () Bool)

(assert (=> d!513484 (=> (not res!755864) (not e!1079432))))

(assert (=> d!513484 (= res!755864 (= (list!7416 (_1!10501 lt!640350)) (list!7416 (_1!10501 (lexRec!388 thiss!17113 rules!1846 lt!638174)))))))

(assert (=> d!513484 (= lt!640350 e!1079434)))

(declare-fun c!275403 () Bool)

(assert (=> d!513484 (= c!275403 ((_ is Some!3558) lt!640339))))

(assert (=> d!513484 (= lt!640339 (maxPrefixZipperSequenceV2!283 thiss!17113 rules!1846 lt!638174 lt!638174))))

(declare-fun lt!640353 () Unit!31713)

(declare-fun lt!640348 () Unit!31713)

(assert (=> d!513484 (= lt!640353 lt!640348)))

(declare-fun lt!640365 () List!18533)

(declare-fun lt!640369 () List!18533)

(assert (=> d!513484 (isSuffix!434 lt!640365 (++!5051 lt!640369 lt!640365))))

(assert (=> d!513484 (= lt!640348 (lemmaConcatTwoListThenFSndIsSuffix!335 lt!640369 lt!640365))))

(assert (=> d!513484 (= lt!640365 (list!7415 lt!638174))))

(assert (=> d!513484 (= lt!640369 (list!7415 (BalanceConc!12245 Empty!6150)))))

(assert (=> d!513484 (= (lexTailRecV2!628 thiss!17113 rules!1846 lt!638174 (BalanceConc!12245 Empty!6150) lt!638174 (BalanceConc!12247 Empty!6151)) lt!640350)))

(declare-fun lt!640354 () tuple2!18198)

(declare-fun b!1686080 () Bool)

(assert (=> b!1686080 (= lt!640354 (lexRec!388 thiss!17113 rules!1846 (_2!10503 (v!24869 lt!640359))))))

(assert (=> b!1686080 (= e!1079433 (tuple2!18199 (prepend!845 (_1!10501 lt!640354) (_1!10503 (v!24869 lt!640359))) (_2!10501 lt!640354)))))

(assert (= (and d!513484 c!275403) b!1686081))

(assert (= (and d!513484 (not c!275403)) b!1686084))

(assert (= (and b!1686081 c!275405) b!1686080))

(assert (= (and b!1686081 (not c!275405)) b!1686085))

(assert (= (and b!1686081 c!275404) b!1686082))

(assert (= (and b!1686081 (not c!275404)) b!1686086))

(assert (= (and d!513484 res!755864) b!1686083))

(declare-fun m!2069243 () Bool)

(assert (=> b!1686081 m!2069243))

(declare-fun m!2069245 () Bool)

(assert (=> b!1686081 m!2069245))

(declare-fun m!2069247 () Bool)

(assert (=> b!1686081 m!2069247))

(declare-fun m!2069249 () Bool)

(assert (=> b!1686081 m!2069249))

(declare-fun m!2069251 () Bool)

(assert (=> b!1686081 m!2069251))

(declare-fun m!2069253 () Bool)

(assert (=> b!1686081 m!2069253))

(declare-fun m!2069255 () Bool)

(assert (=> b!1686081 m!2069255))

(assert (=> b!1686081 m!2069251))

(declare-fun m!2069257 () Bool)

(assert (=> b!1686081 m!2069257))

(declare-fun m!2069259 () Bool)

(assert (=> b!1686081 m!2069259))

(declare-fun m!2069261 () Bool)

(assert (=> b!1686081 m!2069261))

(declare-fun m!2069263 () Bool)

(assert (=> b!1686081 m!2069263))

(declare-fun m!2069265 () Bool)

(assert (=> b!1686081 m!2069265))

(declare-fun m!2069267 () Bool)

(assert (=> b!1686081 m!2069267))

(declare-fun m!2069269 () Bool)

(assert (=> b!1686081 m!2069269))

(assert (=> b!1686081 m!2069243))

(declare-fun m!2069271 () Bool)

(assert (=> b!1686081 m!2069271))

(declare-fun m!2069273 () Bool)

(assert (=> b!1686081 m!2069273))

(declare-fun m!2069275 () Bool)

(assert (=> b!1686081 m!2069275))

(assert (=> b!1686081 m!2069265))

(assert (=> b!1686081 m!2069257))

(declare-fun m!2069277 () Bool)

(assert (=> b!1686081 m!2069277))

(declare-fun m!2069279 () Bool)

(assert (=> b!1686081 m!2069279))

(assert (=> b!1686081 m!2069263))

(assert (=> b!1686081 m!2065915))

(assert (=> b!1686081 m!2069259))

(assert (=> b!1686081 m!2069255))

(declare-fun m!2069281 () Bool)

(assert (=> b!1686081 m!2069281))

(assert (=> b!1686081 m!2064413))

(declare-fun m!2069283 () Bool)

(assert (=> b!1686081 m!2069283))

(declare-fun m!2069285 () Bool)

(assert (=> b!1686081 m!2069285))

(declare-fun m!2069287 () Bool)

(assert (=> b!1686081 m!2069287))

(assert (=> b!1686081 m!2064413))

(declare-fun m!2069289 () Bool)

(assert (=> b!1686081 m!2069289))

(declare-fun m!2069291 () Bool)

(assert (=> b!1686081 m!2069291))

(declare-fun m!2069293 () Bool)

(assert (=> b!1686081 m!2069293))

(assert (=> b!1686081 m!2069247))

(declare-fun m!2069295 () Bool)

(assert (=> b!1686081 m!2069295))

(assert (=> b!1686081 m!2069257))

(assert (=> b!1686081 m!2069283))

(declare-fun m!2069297 () Bool)

(assert (=> b!1686081 m!2069297))

(assert (=> b!1686081 m!2069277))

(declare-fun m!2069299 () Bool)

(assert (=> b!1686081 m!2069299))

(declare-fun m!2069301 () Bool)

(assert (=> b!1686081 m!2069301))

(assert (=> b!1686081 m!2069289))

(assert (=> b!1686081 m!2069247))

(declare-fun m!2069303 () Bool)

(assert (=> b!1686081 m!2069303))

(declare-fun m!2069305 () Bool)

(assert (=> b!1686082 m!2069305))

(declare-fun m!2069307 () Bool)

(assert (=> b!1686082 m!2069307))

(declare-fun m!2069309 () Bool)

(assert (=> b!1686080 m!2069309))

(declare-fun m!2069311 () Bool)

(assert (=> b!1686080 m!2069311))

(declare-fun m!2069313 () Bool)

(assert (=> b!1686083 m!2069313))

(assert (=> b!1686083 m!2069293))

(declare-fun m!2069315 () Bool)

(assert (=> b!1686083 m!2069315))

(declare-fun m!2069317 () Bool)

(assert (=> d!513484 m!2069317))

(declare-fun m!2069319 () Bool)

(assert (=> d!513484 m!2069319))

(assert (=> d!513484 m!2069319))

(declare-fun m!2069321 () Bool)

(assert (=> d!513484 m!2069321))

(assert (=> d!513484 m!2064413))

(assert (=> d!513484 m!2063487))

(assert (=> d!513484 m!2069293))

(declare-fun m!2069323 () Bool)

(assert (=> d!513484 m!2069323))

(declare-fun m!2069325 () Bool)

(assert (=> d!513484 m!2069325))

(declare-fun m!2069327 () Bool)

(assert (=> d!513484 m!2069327))

(assert (=> d!512250 d!513484))

(declare-fun bs!399596 () Bool)

(declare-fun d!513486 () Bool)

(assert (= bs!399596 (and d!513486 d!512756)))

(declare-fun lambda!68332 () Int)

(assert (=> bs!399596 (= (and (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) (= (toValue!4726 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (rule!5151 (h!23866 tokens!457)))))) (= lambda!68332 lambda!68294))))

(declare-fun bs!399597 () Bool)

(assert (= bs!399597 (and d!513486 b!1686052)))

(assert (=> bs!399597 (= lambda!68332 lambda!68331)))

(assert (=> d!513486 true))

(assert (=> d!513486 (< (dynLambda!8367 order!11129 (toChars!4585 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8373 order!11143 lambda!68332))))

(assert (=> d!513486 true))

(assert (=> d!513486 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (h!23867 rules!1846)))) (dynLambda!8373 order!11143 lambda!68332))))

(assert (=> d!513486 (= (semiInverseModEq!1275 (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toValue!4726 (transformation!3251 (h!23867 rules!1846)))) (Forall!668 lambda!68332))))

(declare-fun bs!399598 () Bool)

(assert (= bs!399598 d!513486))

(declare-fun m!2069329 () Bool)

(assert (=> bs!399598 m!2069329))

(assert (=> d!512160 d!513486))

(declare-fun d!513488 () Bool)

(assert (=> d!513488 (= (isEmpty!11548 (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 tokens!457)))) (not ((_ is Some!3557) (maxPrefix!1440 thiss!17113 rules!1846 (originalCharacters!4065 (h!23866 tokens!457))))))))

(assert (=> d!512190 d!513488))

(declare-fun d!513490 () Bool)

(declare-fun charsToBigInt!1 (List!18534) Int)

(assert (=> d!513490 (= (inv!17 (value!102326 (h!23866 tokens!457))) (= (charsToBigInt!1 (text!23835 (value!102326 (h!23866 tokens!457)))) (value!102318 (value!102326 (h!23866 tokens!457)))))))

(declare-fun bs!399599 () Bool)

(assert (= bs!399599 d!513490))

(declare-fun m!2069331 () Bool)

(assert (=> bs!399599 m!2069331))

(assert (=> b!1683696 d!513490))

(declare-fun b!1686089 () Bool)

(declare-fun e!1079438 () Bool)

(assert (=> b!1686089 (= e!1079438 true)))

(declare-fun b!1686088 () Bool)

(declare-fun e!1079437 () Bool)

(assert (=> b!1686088 (= e!1079437 e!1079438)))

(declare-fun b!1686087 () Bool)

(declare-fun e!1079436 () Bool)

(assert (=> b!1686087 (= e!1079436 e!1079437)))

(assert (=> b!1683773 e!1079436))

(assert (= b!1686088 b!1686089))

(assert (= b!1686087 b!1686088))

(assert (= (and b!1683773 ((_ is Cons!18466) (t!154513 rules!1846))) b!1686087))

(assert (=> b!1686089 (< (dynLambda!8365 order!11125 (toValue!4726 (transformation!3251 (h!23867 (t!154513 rules!1846))))) (dynLambda!8366 order!11127 lambda!68268))))

(assert (=> b!1686089 (< (dynLambda!8367 order!11129 (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846))))) (dynLambda!8366 order!11127 lambda!68268))))

(declare-fun e!1079443 () Bool)

(declare-fun tp!484138 () Bool)

(declare-fun b!1686098 () Bool)

(declare-fun tp!484140 () Bool)

(assert (=> b!1686098 (= e!1079443 (and (inv!23829 (left!14761 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))))) tp!484140 (inv!23829 (right!15091 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))))) tp!484138))))

(declare-fun b!1686100 () Bool)

(declare-fun e!1079444 () Bool)

(declare-fun tp!484139 () Bool)

(assert (=> b!1686100 (= e!1079444 tp!484139)))

(declare-fun b!1686099 () Bool)

(declare-fun inv!23835 (IArray!12305) Bool)

(assert (=> b!1686099 (= e!1079443 (and (inv!23835 (xs!9006 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))))) e!1079444))))

(assert (=> b!1683884 (= tp!483986 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457)))))) e!1079443))))

(assert (= (and b!1683884 ((_ is Node!6150) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))))) b!1686098))

(assert (= b!1686099 b!1686100))

(assert (= (and b!1683884 ((_ is Leaf!8996) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (value!102326 (h!23866 (t!154512 tokens!457))))))) b!1686099))

(declare-fun m!2069333 () Bool)

(assert (=> b!1686098 m!2069333))

(declare-fun m!2069335 () Bool)

(assert (=> b!1686098 m!2069335))

(declare-fun m!2069337 () Bool)

(assert (=> b!1686099 m!2069337))

(assert (=> b!1683884 m!2064685))

(declare-fun tp!484141 () Bool)

(declare-fun tp!484143 () Bool)

(declare-fun e!1079445 () Bool)

(declare-fun b!1686101 () Bool)

(assert (=> b!1686101 (= e!1079445 (and (inv!23829 (left!14761 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))))) tp!484143 (inv!23829 (right!15091 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))))) tp!484141))))

(declare-fun b!1686103 () Bool)

(declare-fun e!1079446 () Bool)

(declare-fun tp!484142 () Bool)

(assert (=> b!1686103 (= e!1079446 tp!484142)))

(declare-fun b!1686102 () Bool)

(assert (=> b!1686102 (= e!1079445 (and (inv!23835 (xs!9006 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))))) e!1079446))))

(assert (=> b!1683524 (= tp!483934 (and (inv!23829 (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457))))) e!1079445))))

(assert (= (and b!1683524 ((_ is Node!6150) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))))) b!1686101))

(assert (= b!1686102 b!1686103))

(assert (= (and b!1683524 ((_ is Leaf!8996) (c!274779 (dynLambda!8361 (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (value!102326 (h!23866 tokens!457)))))) b!1686102))

(declare-fun m!2069339 () Bool)

(assert (=> b!1686101 m!2069339))

(declare-fun m!2069341 () Bool)

(assert (=> b!1686101 m!2069341))

(declare-fun m!2069343 () Bool)

(assert (=> b!1686102 m!2069343))

(assert (=> b!1683524 m!2063841))

(declare-fun b!1686104 () Bool)

(declare-fun e!1079447 () Bool)

(assert (=> b!1686104 (= e!1079447 tp_is_empty!7433)))

(assert (=> b!1683897 (= tp!483998 e!1079447)))

(declare-fun b!1686106 () Bool)

(declare-fun tp!484145 () Bool)

(assert (=> b!1686106 (= e!1079447 tp!484145)))

(declare-fun b!1686105 () Bool)

(declare-fun tp!484148 () Bool)

(declare-fun tp!484147 () Bool)

(assert (=> b!1686105 (= e!1079447 (and tp!484148 tp!484147))))

(declare-fun b!1686107 () Bool)

(declare-fun tp!484144 () Bool)

(declare-fun tp!484146 () Bool)

(assert (=> b!1686107 (= e!1079447 (and tp!484144 tp!484146))))

(assert (= (and b!1683897 ((_ is ElementMatch!4579) (reg!4908 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686104))

(assert (= (and b!1683897 ((_ is Concat!7921) (reg!4908 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686105))

(assert (= (and b!1683897 ((_ is Star!4579) (reg!4908 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686106))

(assert (= (and b!1683897 ((_ is Union!4579) (reg!4908 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686107))

(declare-fun b!1686108 () Bool)

(declare-fun e!1079448 () Bool)

(assert (=> b!1686108 (= e!1079448 tp_is_empty!7433)))

(assert (=> b!1683898 (= tp!483997 e!1079448)))

(declare-fun b!1686110 () Bool)

(declare-fun tp!484150 () Bool)

(assert (=> b!1686110 (= e!1079448 tp!484150)))

(declare-fun b!1686109 () Bool)

(declare-fun tp!484153 () Bool)

(declare-fun tp!484152 () Bool)

(assert (=> b!1686109 (= e!1079448 (and tp!484153 tp!484152))))

(declare-fun b!1686111 () Bool)

(declare-fun tp!484149 () Bool)

(declare-fun tp!484151 () Bool)

(assert (=> b!1686111 (= e!1079448 (and tp!484149 tp!484151))))

(assert (= (and b!1683898 ((_ is ElementMatch!4579) (regOne!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686108))

(assert (= (and b!1683898 ((_ is Concat!7921) (regOne!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686109))

(assert (= (and b!1683898 ((_ is Star!4579) (regOne!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686110))

(assert (= (and b!1683898 ((_ is Union!4579) (regOne!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686111))

(declare-fun b!1686112 () Bool)

(declare-fun e!1079449 () Bool)

(assert (=> b!1686112 (= e!1079449 tp_is_empty!7433)))

(assert (=> b!1683898 (= tp!483999 e!1079449)))

(declare-fun b!1686114 () Bool)

(declare-fun tp!484155 () Bool)

(assert (=> b!1686114 (= e!1079449 tp!484155)))

(declare-fun b!1686113 () Bool)

(declare-fun tp!484158 () Bool)

(declare-fun tp!484157 () Bool)

(assert (=> b!1686113 (= e!1079449 (and tp!484158 tp!484157))))

(declare-fun b!1686115 () Bool)

(declare-fun tp!484154 () Bool)

(declare-fun tp!484156 () Bool)

(assert (=> b!1686115 (= e!1079449 (and tp!484154 tp!484156))))

(assert (= (and b!1683898 ((_ is ElementMatch!4579) (regTwo!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686112))

(assert (= (and b!1683898 ((_ is Concat!7921) (regTwo!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686113))

(assert (= (and b!1683898 ((_ is Star!4579) (regTwo!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686114))

(assert (= (and b!1683898 ((_ is Union!4579) (regTwo!9671 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686115))

(declare-fun b!1686116 () Bool)

(declare-fun e!1079450 () Bool)

(assert (=> b!1686116 (= e!1079450 tp_is_empty!7433)))

(assert (=> b!1683913 (= tp!484016 e!1079450)))

(declare-fun b!1686118 () Bool)

(declare-fun tp!484160 () Bool)

(assert (=> b!1686118 (= e!1079450 tp!484160)))

(declare-fun b!1686117 () Bool)

(declare-fun tp!484163 () Bool)

(declare-fun tp!484162 () Bool)

(assert (=> b!1686117 (= e!1079450 (and tp!484163 tp!484162))))

(declare-fun b!1686119 () Bool)

(declare-fun tp!484159 () Bool)

(declare-fun tp!484161 () Bool)

(assert (=> b!1686119 (= e!1079450 (and tp!484159 tp!484161))))

(assert (= (and b!1683913 ((_ is ElementMatch!4579) (regex!3251 (h!23867 (t!154513 rules!1846))))) b!1686116))

(assert (= (and b!1683913 ((_ is Concat!7921) (regex!3251 (h!23867 (t!154513 rules!1846))))) b!1686117))

(assert (= (and b!1683913 ((_ is Star!4579) (regex!3251 (h!23867 (t!154513 rules!1846))))) b!1686118))

(assert (= (and b!1683913 ((_ is Union!4579) (regex!3251 (h!23867 (t!154513 rules!1846))))) b!1686119))

(declare-fun b!1686120 () Bool)

(declare-fun e!1079451 () Bool)

(assert (=> b!1686120 (= e!1079451 tp_is_empty!7433)))

(assert (=> b!1683896 (= tp!484001 e!1079451)))

(declare-fun b!1686122 () Bool)

(declare-fun tp!484165 () Bool)

(assert (=> b!1686122 (= e!1079451 tp!484165)))

(declare-fun b!1686121 () Bool)

(declare-fun tp!484168 () Bool)

(declare-fun tp!484167 () Bool)

(assert (=> b!1686121 (= e!1079451 (and tp!484168 tp!484167))))

(declare-fun b!1686123 () Bool)

(declare-fun tp!484164 () Bool)

(declare-fun tp!484166 () Bool)

(assert (=> b!1686123 (= e!1079451 (and tp!484164 tp!484166))))

(assert (= (and b!1683896 ((_ is ElementMatch!4579) (regOne!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686120))

(assert (= (and b!1683896 ((_ is Concat!7921) (regOne!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686121))

(assert (= (and b!1683896 ((_ is Star!4579) (regOne!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686122))

(assert (= (and b!1683896 ((_ is Union!4579) (regOne!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686123))

(declare-fun b!1686124 () Bool)

(declare-fun e!1079452 () Bool)

(assert (=> b!1686124 (= e!1079452 tp_is_empty!7433)))

(assert (=> b!1683896 (= tp!484000 e!1079452)))

(declare-fun b!1686126 () Bool)

(declare-fun tp!484170 () Bool)

(assert (=> b!1686126 (= e!1079452 tp!484170)))

(declare-fun b!1686125 () Bool)

(declare-fun tp!484173 () Bool)

(declare-fun tp!484172 () Bool)

(assert (=> b!1686125 (= e!1079452 (and tp!484173 tp!484172))))

(declare-fun b!1686127 () Bool)

(declare-fun tp!484169 () Bool)

(declare-fun tp!484171 () Bool)

(assert (=> b!1686127 (= e!1079452 (and tp!484169 tp!484171))))

(assert (= (and b!1683896 ((_ is ElementMatch!4579) (regTwo!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686124))

(assert (= (and b!1683896 ((_ is Concat!7921) (regTwo!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686125))

(assert (= (and b!1683896 ((_ is Star!4579) (regTwo!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686126))

(assert (= (and b!1683896 ((_ is Union!4579) (regTwo!9670 (regex!3251 (rule!5151 (h!23866 tokens!457)))))) b!1686127))

(declare-fun b!1686130 () Bool)

(declare-fun b_free!45623 () Bool)

(declare-fun b_next!46327 () Bool)

(assert (=> b!1686130 (= b_free!45623 (not b_next!46327))))

(declare-fun t!154757 () Bool)

(declare-fun tb!97799 () Bool)

(assert (=> (and b!1686130 (= (toValue!4726 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154757) tb!97799))

(declare-fun result!117882 () Bool)

(assert (= result!117882 result!117730))

(assert (=> d!512564 t!154757))

(declare-fun t!154759 () Bool)

(declare-fun tb!97801 () Bool)

(assert (=> (and b!1686130 (= (toValue!4726 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154759) tb!97801))

(declare-fun result!117884 () Bool)

(assert (= result!117884 result!117740))

(assert (=> d!512592 t!154759))

(declare-fun b_and!120501 () Bool)

(declare-fun tp!484174 () Bool)

(assert (=> b!1686130 (= tp!484174 (and (=> t!154757 result!117882) (=> t!154759 result!117884) b_and!120501))))

(declare-fun b_free!45625 () Bool)

(declare-fun b_next!46329 () Bool)

(assert (=> b!1686130 (= b_free!45625 (not b_next!46329))))

(declare-fun t!154761 () Bool)

(declare-fun tb!97803 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) t!154761) tb!97803))

(declare-fun result!117886 () Bool)

(assert (= result!117886 result!117660))

(assert (=> d!512256 t!154761))

(declare-fun tb!97805 () Bool)

(declare-fun t!154763 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154763) tb!97805))

(declare-fun result!117888 () Bool)

(assert (= result!117888 result!117756))

(assert (=> d!512744 t!154763))

(assert (=> b!1683518 t!154761))

(declare-fun tb!97807 () Bool)

(declare-fun t!154765 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457))))))) t!154765) tb!97807))

(declare-fun result!117890 () Bool)

(assert (= result!117890 result!117804))

(assert (=> d!513184 t!154765))

(declare-fun tb!97809 () Bool)

(declare-fun t!154767 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) t!154767) tb!97809))

(declare-fun result!117892 () Bool)

(assert (= result!117892 result!117686))

(assert (=> b!1684607 t!154767))

(assert (=> d!512350 t!154767))

(declare-fun t!154769 () Bool)

(declare-fun tb!97811 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0))))) t!154769) tb!97811))

(declare-fun result!117894 () Bool)

(assert (= result!117894 result!117788))

(assert (=> d!512876 t!154769))

(declare-fun t!154771 () Bool)

(declare-fun tb!97813 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154771) tb!97813))

(declare-fun result!117896 () Bool)

(assert (= result!117896 result!117764))

(assert (=> d!512754 t!154771))

(declare-fun tb!97815 () Bool)

(declare-fun t!154773 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 lt!638731)))) t!154773) tb!97815))

(declare-fun result!117898 () Bool)

(assert (= result!117898 result!117722))

(assert (=> d!512544 t!154773))

(declare-fun tb!97817 () Bool)

(declare-fun t!154775 () Bool)

(assert (=> (and b!1686130 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))) t!154775) tb!97817))

(declare-fun result!117900 () Bool)

(assert (= result!117900 result!117748))

(assert (=> d!512726 t!154775))

(declare-fun b_and!120503 () Bool)

(declare-fun tp!484175 () Bool)

(assert (=> b!1686130 (= tp!484175 (and (=> t!154761 result!117886) (=> t!154773 result!117898) (=> t!154765 result!117890) (=> t!154769 result!117894) (=> t!154763 result!117888) (=> t!154767 result!117892) (=> t!154771 result!117896) (=> t!154775 result!117900) b_and!120503))))

(declare-fun e!1079456 () Bool)

(assert (=> b!1686130 (= e!1079456 (and tp!484174 tp!484175))))

(declare-fun e!1079453 () Bool)

(declare-fun tp!484177 () Bool)

(declare-fun b!1686129 () Bool)

(assert (=> b!1686129 (= e!1079453 (and tp!484177 (inv!23822 (tag!3539 (h!23867 (t!154513 (t!154513 rules!1846))))) (inv!23826 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) e!1079456))))

(declare-fun b!1686128 () Bool)

(declare-fun e!1079455 () Bool)

(declare-fun tp!484176 () Bool)

(assert (=> b!1686128 (= e!1079455 (and e!1079453 tp!484176))))

(assert (=> b!1683912 (= tp!484015 e!1079455)))

(assert (= b!1686129 b!1686130))

(assert (= b!1686128 b!1686129))

(assert (= (and b!1683912 ((_ is Cons!18466) (t!154513 (t!154513 rules!1846)))) b!1686128))

(declare-fun m!2069345 () Bool)

(assert (=> b!1686129 m!2069345))

(declare-fun m!2069347 () Bool)

(assert (=> b!1686129 m!2069347))

(declare-fun b!1686134 () Bool)

(declare-fun b_free!45627 () Bool)

(declare-fun b_next!46331 () Bool)

(assert (=> b!1686134 (= b_free!45627 (not b_next!46331))))

(declare-fun t!154777 () Bool)

(declare-fun tb!97819 () Bool)

(assert (=> (and b!1686134 (= (toValue!4726 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154777) tb!97819))

(declare-fun result!117902 () Bool)

(assert (= result!117902 result!117730))

(assert (=> d!512564 t!154777))

(declare-fun t!154779 () Bool)

(declare-fun tb!97821 () Bool)

(assert (=> (and b!1686134 (= (toValue!4726 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toValue!4726 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154779) tb!97821))

(declare-fun result!117904 () Bool)

(assert (= result!117904 result!117740))

(assert (=> d!512592 t!154779))

(declare-fun b_and!120505 () Bool)

(declare-fun tp!484180 () Bool)

(assert (=> b!1686134 (= tp!484180 (and (=> t!154777 result!117902) (=> t!154779 result!117904) b_and!120505))))

(declare-fun b_free!45629 () Bool)

(declare-fun b_next!46333 () Bool)

(assert (=> b!1686134 (= b_free!45629 (not b_next!46333))))

(declare-fun t!154781 () Bool)

(declare-fun tb!97823 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457))))) t!154781) tb!97823))

(declare-fun result!117906 () Bool)

(assert (= result!117906 result!117660))

(assert (=> d!512256 t!154781))

(declare-fun tb!97825 () Bool)

(declare-fun t!154783 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638606)))))) t!154783) tb!97825))

(declare-fun result!117908 () Bool)

(assert (= result!117908 result!117756))

(assert (=> d!512744 t!154783))

(assert (=> b!1683518 t!154781))

(declare-fun t!154785 () Bool)

(declare-fun tb!97827 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457))))))) t!154785) tb!97827))

(declare-fun result!117910 () Bool)

(assert (= result!117910 result!117804))

(assert (=> d!513184 t!154785))

(declare-fun t!154787 () Bool)

(declare-fun tb!97829 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) t!154787) tb!97829))

(declare-fun result!117912 () Bool)

(assert (= result!117912 result!117686))

(assert (=> b!1684607 t!154787))

(assert (=> d!512350 t!154787))

(declare-fun tb!97831 () Bool)

(declare-fun t!154789 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (apply!5022 lt!638180 0))))) t!154789) tb!97831))

(declare-fun result!117914 () Bool)

(assert (= result!117914 result!117788))

(assert (=> d!512876 t!154789))

(declare-fun t!154791 () Bool)

(declare-fun tb!97833 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (_1!10502 (get!5414 lt!638321)))))) t!154791) tb!97833))

(declare-fun result!117916 () Bool)

(assert (= result!117916 result!117764))

(assert (=> d!512754 t!154791))

(declare-fun t!154793 () Bool)

(declare-fun tb!97835 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 lt!638731)))) t!154793) tb!97835))

(declare-fun result!117918 () Bool)

(assert (= result!117918 result!117722))

(assert (=> d!512544 t!154793))

(declare-fun t!154795 () Bool)

(declare-fun tb!97837 () Bool)

(assert (=> (and b!1686134 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (Cons!18465 (h!23866 tokens!457) Nil!18465)))))) t!154795) tb!97837))

(declare-fun result!117920 () Bool)

(assert (= result!117920 result!117748))

(assert (=> d!512726 t!154795))

(declare-fun tp!484179 () Bool)

(declare-fun b_and!120507 () Bool)

(assert (=> b!1686134 (= tp!484179 (and (=> t!154781 result!117906) (=> t!154795 result!117920) (=> t!154793 result!117918) (=> t!154789 result!117914) (=> t!154785 result!117910) (=> t!154787 result!117912) (=> t!154791 result!117916) (=> t!154783 result!117908) b_and!120507))))

(declare-fun tp!484178 () Bool)

(declare-fun e!1079458 () Bool)

(declare-fun e!1079460 () Bool)

(declare-fun b!1686131 () Bool)

(assert (=> b!1686131 (= e!1079458 (and (inv!23825 (h!23866 (t!154512 (t!154512 tokens!457)))) e!1079460 tp!484178))))

(declare-fun tp!484182 () Bool)

(declare-fun e!1079462 () Bool)

(declare-fun e!1079459 () Bool)

(declare-fun b!1686133 () Bool)

(assert (=> b!1686133 (= e!1079459 (and tp!484182 (inv!23822 (tag!3539 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (inv!23826 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) e!1079462))))

(assert (=> b!1683925 (= tp!484027 e!1079458)))

(assert (=> b!1686134 (= e!1079462 (and tp!484180 tp!484179))))

(declare-fun tp!484181 () Bool)

(declare-fun b!1686132 () Bool)

(assert (=> b!1686132 (= e!1079460 (and (inv!21 (value!102326 (h!23866 (t!154512 (t!154512 tokens!457))))) e!1079459 tp!484181))))

(assert (= b!1686133 b!1686134))

(assert (= b!1686132 b!1686133))

(assert (= b!1686131 b!1686132))

(assert (= (and b!1683925 ((_ is Cons!18465) (t!154512 (t!154512 tokens!457)))) b!1686131))

(declare-fun m!2069349 () Bool)

(assert (=> b!1686131 m!2069349))

(declare-fun m!2069351 () Bool)

(assert (=> b!1686133 m!2069351))

(declare-fun m!2069353 () Bool)

(assert (=> b!1686133 m!2069353))

(declare-fun m!2069355 () Bool)

(assert (=> b!1686132 m!2069355))

(declare-fun b!1686135 () Bool)

(declare-fun e!1079463 () Bool)

(assert (=> b!1686135 (= e!1079463 tp_is_empty!7433)))

(assert (=> b!1683930 (= tp!484036 e!1079463)))

(declare-fun b!1686137 () Bool)

(declare-fun tp!484184 () Bool)

(assert (=> b!1686137 (= e!1079463 tp!484184)))

(declare-fun b!1686136 () Bool)

(declare-fun tp!484187 () Bool)

(declare-fun tp!484186 () Bool)

(assert (=> b!1686136 (= e!1079463 (and tp!484187 tp!484186))))

(declare-fun b!1686138 () Bool)

(declare-fun tp!484183 () Bool)

(declare-fun tp!484185 () Bool)

(assert (=> b!1686138 (= e!1079463 (and tp!484183 tp!484185))))

(assert (= (and b!1683930 ((_ is ElementMatch!4579) (regOne!9670 (regex!3251 (h!23867 rules!1846))))) b!1686135))

(assert (= (and b!1683930 ((_ is Concat!7921) (regOne!9670 (regex!3251 (h!23867 rules!1846))))) b!1686136))

(assert (= (and b!1683930 ((_ is Star!4579) (regOne!9670 (regex!3251 (h!23867 rules!1846))))) b!1686137))

(assert (= (and b!1683930 ((_ is Union!4579) (regOne!9670 (regex!3251 (h!23867 rules!1846))))) b!1686138))

(declare-fun b!1686139 () Bool)

(declare-fun e!1079464 () Bool)

(assert (=> b!1686139 (= e!1079464 tp_is_empty!7433)))

(assert (=> b!1683930 (= tp!484035 e!1079464)))

(declare-fun b!1686141 () Bool)

(declare-fun tp!484189 () Bool)

(assert (=> b!1686141 (= e!1079464 tp!484189)))

(declare-fun b!1686140 () Bool)

(declare-fun tp!484192 () Bool)

(declare-fun tp!484191 () Bool)

(assert (=> b!1686140 (= e!1079464 (and tp!484192 tp!484191))))

(declare-fun b!1686142 () Bool)

(declare-fun tp!484188 () Bool)

(declare-fun tp!484190 () Bool)

(assert (=> b!1686142 (= e!1079464 (and tp!484188 tp!484190))))

(assert (= (and b!1683930 ((_ is ElementMatch!4579) (regTwo!9670 (regex!3251 (h!23867 rules!1846))))) b!1686139))

(assert (= (and b!1683930 ((_ is Concat!7921) (regTwo!9670 (regex!3251 (h!23867 rules!1846))))) b!1686140))

(assert (= (and b!1683930 ((_ is Star!4579) (regTwo!9670 (regex!3251 (h!23867 rules!1846))))) b!1686141))

(assert (= (and b!1683930 ((_ is Union!4579) (regTwo!9670 (regex!3251 (h!23867 rules!1846))))) b!1686142))

(declare-fun b!1686143 () Bool)

(declare-fun e!1079465 () Bool)

(declare-fun tp!484193 () Bool)

(assert (=> b!1686143 (= e!1079465 (and tp_is_empty!7433 tp!484193))))

(assert (=> b!1683903 (= tp!484004 e!1079465)))

(assert (= (and b!1683903 ((_ is Cons!18463) (t!154510 (originalCharacters!4065 (h!23866 tokens!457))))) b!1686143))

(declare-fun b!1686144 () Bool)

(declare-fun e!1079466 () Bool)

(assert (=> b!1686144 (= e!1079466 tp_is_empty!7433)))

(assert (=> b!1683932 (= tp!484032 e!1079466)))

(declare-fun b!1686146 () Bool)

(declare-fun tp!484195 () Bool)

(assert (=> b!1686146 (= e!1079466 tp!484195)))

(declare-fun b!1686145 () Bool)

(declare-fun tp!484198 () Bool)

(declare-fun tp!484197 () Bool)

(assert (=> b!1686145 (= e!1079466 (and tp!484198 tp!484197))))

(declare-fun b!1686147 () Bool)

(declare-fun tp!484194 () Bool)

(declare-fun tp!484196 () Bool)

(assert (=> b!1686147 (= e!1079466 (and tp!484194 tp!484196))))

(assert (= (and b!1683932 ((_ is ElementMatch!4579) (regOne!9671 (regex!3251 (h!23867 rules!1846))))) b!1686144))

(assert (= (and b!1683932 ((_ is Concat!7921) (regOne!9671 (regex!3251 (h!23867 rules!1846))))) b!1686145))

(assert (= (and b!1683932 ((_ is Star!4579) (regOne!9671 (regex!3251 (h!23867 rules!1846))))) b!1686146))

(assert (= (and b!1683932 ((_ is Union!4579) (regOne!9671 (regex!3251 (h!23867 rules!1846))))) b!1686147))

(declare-fun b!1686148 () Bool)

(declare-fun e!1079467 () Bool)

(assert (=> b!1686148 (= e!1079467 tp_is_empty!7433)))

(assert (=> b!1683932 (= tp!484034 e!1079467)))

(declare-fun b!1686150 () Bool)

(declare-fun tp!484200 () Bool)

(assert (=> b!1686150 (= e!1079467 tp!484200)))

(declare-fun b!1686149 () Bool)

(declare-fun tp!484203 () Bool)

(declare-fun tp!484202 () Bool)

(assert (=> b!1686149 (= e!1079467 (and tp!484203 tp!484202))))

(declare-fun b!1686151 () Bool)

(declare-fun tp!484199 () Bool)

(declare-fun tp!484201 () Bool)

(assert (=> b!1686151 (= e!1079467 (and tp!484199 tp!484201))))

(assert (= (and b!1683932 ((_ is ElementMatch!4579) (regTwo!9671 (regex!3251 (h!23867 rules!1846))))) b!1686148))

(assert (= (and b!1683932 ((_ is Concat!7921) (regTwo!9671 (regex!3251 (h!23867 rules!1846))))) b!1686149))

(assert (= (and b!1683932 ((_ is Star!4579) (regTwo!9671 (regex!3251 (h!23867 rules!1846))))) b!1686150))

(assert (= (and b!1683932 ((_ is Union!4579) (regTwo!9671 (regex!3251 (h!23867 rules!1846))))) b!1686151))

(declare-fun b!1686152 () Bool)

(declare-fun e!1079468 () Bool)

(assert (=> b!1686152 (= e!1079468 tp_is_empty!7433)))

(assert (=> b!1683931 (= tp!484033 e!1079468)))

(declare-fun b!1686154 () Bool)

(declare-fun tp!484205 () Bool)

(assert (=> b!1686154 (= e!1079468 tp!484205)))

(declare-fun b!1686153 () Bool)

(declare-fun tp!484208 () Bool)

(declare-fun tp!484207 () Bool)

(assert (=> b!1686153 (= e!1079468 (and tp!484208 tp!484207))))

(declare-fun b!1686155 () Bool)

(declare-fun tp!484204 () Bool)

(declare-fun tp!484206 () Bool)

(assert (=> b!1686155 (= e!1079468 (and tp!484204 tp!484206))))

(assert (= (and b!1683931 ((_ is ElementMatch!4579) (reg!4908 (regex!3251 (h!23867 rules!1846))))) b!1686152))

(assert (= (and b!1683931 ((_ is Concat!7921) (reg!4908 (regex!3251 (h!23867 rules!1846))))) b!1686153))

(assert (= (and b!1683931 ((_ is Star!4579) (reg!4908 (regex!3251 (h!23867 rules!1846))))) b!1686154))

(assert (= (and b!1683931 ((_ is Union!4579) (reg!4908 (regex!3251 (h!23867 rules!1846))))) b!1686155))

(declare-fun b!1686156 () Bool)

(declare-fun e!1079469 () Bool)

(declare-fun tp!484209 () Bool)

(assert (=> b!1686156 (= e!1079469 (and tp_is_empty!7433 tp!484209))))

(assert (=> b!1683926 (= tp!484030 e!1079469)))

(assert (= (and b!1683926 ((_ is Cons!18463) (originalCharacters!4065 (h!23866 (t!154512 tokens!457))))) b!1686156))

(declare-fun b!1686157 () Bool)

(declare-fun e!1079470 () Bool)

(assert (=> b!1686157 (= e!1079470 tp_is_empty!7433)))

(assert (=> b!1683927 (= tp!484031 e!1079470)))

(declare-fun b!1686159 () Bool)

(declare-fun tp!484211 () Bool)

(assert (=> b!1686159 (= e!1079470 tp!484211)))

(declare-fun b!1686158 () Bool)

(declare-fun tp!484214 () Bool)

(declare-fun tp!484213 () Bool)

(assert (=> b!1686158 (= e!1079470 (and tp!484214 tp!484213))))

(declare-fun b!1686160 () Bool)

(declare-fun tp!484210 () Bool)

(declare-fun tp!484212 () Bool)

(assert (=> b!1686160 (= e!1079470 (and tp!484210 tp!484212))))

(assert (= (and b!1683927 ((_ is ElementMatch!4579) (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) b!1686157))

(assert (= (and b!1683927 ((_ is Concat!7921) (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) b!1686158))

(assert (= (and b!1683927 ((_ is Star!4579) (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) b!1686159))

(assert (= (and b!1683927 ((_ is Union!4579) (regex!3251 (rule!5151 (h!23866 (t!154512 tokens!457)))))) b!1686160))

(declare-fun b_lambda!53025 () Bool)

(assert (= b_lambda!53001 (or d!512348 b_lambda!53025)))

(declare-fun bs!399600 () Bool)

(declare-fun d!513492 () Bool)

(assert (= bs!399600 (and d!513492 d!512348)))

(assert (=> bs!399600 (= (dynLambda!8374 lambda!68274 (h!23867 rules!1846)) (regex!3251 (h!23867 rules!1846)))))

(assert (=> b!1685150 d!513492))

(declare-fun b_lambda!53027 () Bool)

(assert (= b_lambda!53007 (or (and b!1686130 b_free!45625 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))))) (and b!1683338 b_free!45597 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))))) (and b!1683914 b_free!45609 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))))) (and b!1686134 b_free!45629) (and b!1683332 b_free!45593 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))))) (and b!1683928 b_free!45613 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))))) b_lambda!53027)))

(declare-fun b_lambda!53029 () Bool)

(assert (= b_lambda!53005 (or d!512302 b_lambda!53029)))

(declare-fun bs!399601 () Bool)

(declare-fun d!513494 () Bool)

(assert (= bs!399601 (and d!513494 d!512302)))

(assert (=> bs!399601 (= (dynLambda!8375 lambda!68268 (h!23866 tokens!457)) (rulesProduceIndividualToken!1528 thiss!17113 rules!1846 (h!23866 tokens!457)))))

(assert (=> bs!399601 m!2063527))

(assert (=> b!1685346 d!513494))

(declare-fun b_lambda!53031 () Bool)

(assert (= b_lambda!52989 (or (and b!1683332 b_free!45593 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 tokens!457)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) (and b!1683928 b_free!45613) (and b!1686130 b_free!45625 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 (t!154513 rules!1846))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) (and b!1683914 b_free!45609 (= (toChars!4585 (transformation!3251 (h!23867 (t!154513 rules!1846)))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) (and b!1683338 b_free!45597 (= (toChars!4585 (transformation!3251 (h!23867 rules!1846))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) (and b!1686134 b_free!45629 (= (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 (t!154512 tokens!457)))))) (toChars!4585 (transformation!3251 (rule!5151 (h!23866 (t!154512 tokens!457))))))) b_lambda!53031)))

(check-sat (not d!512954) (not d!512750) (not b!1685465) (not d!512878) (not b!1684928) (not d!513128) (not d!512890) (not b!1685943) (not d!512602) (not b!1686110) (not b!1685380) (not b!1685372) (not b!1684872) (not b!1686070) (not b!1685451) (not b!1684595) (not b!1685244) (not b!1685351) (not b!1685213) (not b!1686024) (not b!1684570) (not b!1684638) (not b!1685428) (not b!1685016) (not d!513088) (not b!1685336) (not b!1684349) (not b!1685449) (not b!1684279) (not b!1685961) (not d!513180) (not d!512888) (not bm!107759) (not b!1685948) (not tb!97727) (not b!1685210) (not bm!107606) (not d!512568) (not b!1684639) (not d!512870) (not d!513024) (not d!513192) (not b_lambda!52991) b_and!120393 (not b!1684672) (not bm!107661) (not b!1685280) (not b!1684812) (not d!513162) (not b!1684613) (not b!1685457) (not b!1685426) (not b!1685931) (not d!512716) (not d!512556) (not b!1685207) (not b!1686105) (not b!1685956) (not d!513470) (not b_next!46331) (not d!513112) (not d!513156) (not d!513460) (not b!1685444) (not b!1684371) (not d!512702) (not b!1685912) (not d!512638) (not tb!97647) (not b!1684988) (not b!1685407) (not b!1685241) (not b!1684813) (not b!1684280) (not b!1685933) (not d!512918) (not d!512910) (not b!1686103) (not d!512850) (not b!1684598) (not b!1686131) (not b!1685445) (not tb!97711) (not b!1684569) (not b!1685028) (not b!1685435) (not d!513094) (not b!1686078) (not b_lambda!52983) (not b!1686119) (not b!1685381) (not d!513412) (not b_next!46301) (not bm!107758) (not b!1685970) (not b!1684520) (not b!1686031) (not b!1684689) (not b!1685140) (not b!1685319) (not b!1684369) (not b!1685208) (not b!1685962) (not d!513148) (not b!1685187) (not b!1686129) (not b!1685367) (not d!512898) (not d!513402) (not b!1684568) (not b!1685365) (not d!513474) (not b!1685938) (not b!1685045) (not d!513380) (not bm!107711) (not b!1686111) (not d!512672) (not d!513160) (not d!512724) (not d!513150) (not b!1685240) b_and!120463 (not b!1685206) (not b!1685957) (not d!513208) (not b!1686147) (not b!1685220) (not b!1685214) (not d!513202) (not b!1684916) (not d!513450) (not b!1684819) (not b!1686064) (not d!512654) (not b!1684501) (not b!1685186) (not b_lambda!52993) (not d!513080) (not b!1685425) (not b!1685250) (not b!1686051) (not b!1685456) (not b_next!46315) (not b!1684344) (not b!1685431) (not tb!97679) (not b!1684368) (not b!1686023) (not b!1684987) (not d!513400) (not b!1686106) (not b!1686098) (not d!513388) (not b!1684865) (not b_next!46327) (not b!1685356) (not d!512510) (not b!1684914) b_and!120505 (not b!1685242) (not b!1684633) (not d!512536) (not b!1685951) (not b!1684930) (not b!1685281) (not d!512900) (not b!1684976) (not b!1686142) (not d!513438) (not b!1684934) (not b!1686048) (not d!512666) (not b!1684668) (not b!1684866) (not b!1684980) (not b!1686118) (not d!512700) (not b!1685420) (not b!1685911) b_and!120507 (not b!1685039) (not b!1685463) (not d!513168) (not d!512760) (not bm!107756) (not b!1685341) (not d!512752) (not b!1684646) (not b_lambda!53029) (not d!513060) (not b!1685406) (not d!513468) (not b!1684975) (not d!513106) (not b!1685321) (not b!1685048) (not d!512598) (not b!1685235) (not b!1685959) (not d!512550) (not b!1685185) (not b!1684903) (not b!1684402) (not b!1686033) (not b!1685424) (not b!1685142) (not d!512876) (not d!513390) (not d!512618) (not b!1686074) (not b!1686077) (not b!1685935) (not bm!107757) (not bm!107708) (not d!512922) (not d!513432) (not b!1685329) (not b!1685433) (not bm!107699) (not b!1685453) (not d!512966) (not d!513430) (not bm!107739) (not b!1684648) (not b_lambda!52999) (not b!1685942) (not b!1685331) (not b!1684447) (not d!512614) (not b!1684816) (not b!1686073) (not b!1684873) (not b!1686115) (not d!513116) (not b!1686075) (not b!1684370) (not b!1685469) (not b!1684350) (not d!512726) (not d!512952) (not b!1684238) (not d!512670) (not b!1684511) (not d!513416) (not b!1685243) (not d!512944) (not b!1685941) (not b!1686026) (not b!1685030) (not b!1684845) (not d!512758) (not b!1686159) (not d!512588) (not b!1685944) (not b!1685437) (not b!1685410) (not d!512718) (not d!513174) (not b!1685017) (not b!1684918) (not b!1686102) (not b!1685409) (not b!1685987) (not d!513184) b_and!120461 (not b!1685932) (not b!1685434) (not b!1684283) (not d!512924) (not d!513454) (not d!512544) (not b!1685141) (not b!1686126) (not b!1684351) (not b!1685937) (not d!512874) (not b!1684634) (not d!512548) (not b!1686113) (not b!1685134) (not d!512754) (not tb!97687) (not b!1684690) (not d!512732) (not b!1685976) (not b!1685462) (not d!513392) (not b!1685040) (not b!1685238) (not b_lambda!52985) (not bm!107701) (not b_next!46313) (not b!1685317) (not b!1685019) (not b!1685073) (not b!1685143) (not b_lambda!53027) (not d!512986) (not b!1684691) (not b!1686025) (not b!1685013) (not b!1684604) (not b_next!46311) (not d!513124) (not b!1685330) b_and!120467 (not b!1684876) (not b!1685472) (not b!1685212) (not b!1684285) (not d!512622) (not b!1686154) (not bs!399601) (not b!1686032) (not d!512516) (not d!513194) (not b!1686072) (not b!1684906) (not b!1685282) (not b!1685923) (not b!1684952) (not b!1686022) (not d!513446) (not d!513482) (not b!1684445) (not d!513046) (not d!513472) (not d!513056) (not b!1685051) b_and!120391 (not d!513082) (not b!1686080) (not b!1685400) (not b!1686006) (not d!512934) (not b!1685924) (not d!512730) (not b!1685323) (not b!1685018) (not b!1685296) (not d!512722) (not b!1685918) (not b!1685954) (not b!1686083) (not b!1684654) (not b!1685315) (not b!1685325) (not b!1685446) (not b!1685417) (not b!1684815) (not b!1686087) (not b!1686145) (not b!1685955) (not d!513158) (not d!513144) (not d!512626) (not d!513436) (not b!1686109) (not b!1685295) (not b!1684242) (not b!1686146) (not b!1685950) (not d!513090) (not b!1685339) (not d!513136) (not b!1686128) (not b!1684932) (not b!1686155) (not b!1685219) (not b!1685283) (not bm!107777) (not b!1686137) (not b!1686107) (not bm!107727) (not d!512744) (not d!513130) (not b!1686143) (not d!512896) (not b!1685217) (not b!1684601) (not b!1686158) (not d!513490) (not b!1685230) (not d!513062) (not b!1685427) (not b!1685430) (not bm!107710) (not b!1685458) (not d!513092) (not b!1686017) (not b!1686030) (not b!1685966) (not b!1684978) (not b!1685357) (not b!1684979) b_and!120501 (not b!1684185) (not b!1684607) (not b!1685246) (not bm!107658) (not d!513444) (not b!1686149) (not b!1684610) (not b_next!46297) (not b!1685349) (not d!512880) (not b!1685473) b_and!120503 (not b!1686100) (not b!1684299) (not b!1685986) (not b!1683884) (not b!1686117) (not tb!97671) (not d!513030) (not b_lambda!53031) (not b!1685370) (not b!1686132) (not d!512882) (not b!1685291) (not b!1684239) (not bm!107787) (not d!513480) (not d!513422) (not b!1685934) (not d!512756) (not b!1685216) (not b!1684806) (not b!1685920) (not b!1684688) (not b!1685927) (not b!1684602) (not d!512630) (not b!1685233) (not b!1684615) (not b!1685975) (not b!1685981) (not b!1685328) (not b!1684627) (not b!1685369) (not b!1684635) (not b!1686028) (not b!1685401) (not b!1684617) (not b_lambda!52969) (not b!1684237) (not b!1685021) (not d!513074) (not b!1684921) (not b!1686081) (not b!1684518) (not d!513196) (not d!513188) (not d!513442) (not b!1684297) (not b!1686156) (not b!1685215) (not b!1685922) (not d!513396) (not b!1684591) (not b!1685429) (not b!1686160) (not d!512596) (not b!1685011) (not d!513414) (not b!1685422) (not b!1685447) (not b!1684364) (not bm!107731) (not bm!107730) (not d!513146) (not d!512734) (not b!1685247) (not b!1685335) (not d!512774) (not b!1684567) (not b!1683524) (not d!512512) (not b_next!46333) (not b!1684915) (not b!1684656) (not b!1685350) (not d!513408) (not d!512558) (not b!1685452) (not bm!107662) (not d!513032) (not b!1684614) (not b!1684241) (not b!1685020) (not b!1684977) (not d!513076) (not d!513140) (not b!1686141) (not b!1684931) (not b!1685915) (not b!1685332) (not d!513486) (not b!1684859) (not b!1685438) (not b!1684365) (not d!513382) (not b!1685359) (not d!512662) b_and!120465 (not b!1684901) (not d!512938) (not b!1684448) (not b!1685969) (not b!1685396) (not b_next!46299) (not b!1685046) (not b!1684514) (not d!513186) (not b!1684983) (not b!1685421) (not bm!107750) (not b!1685337) (not b!1684867) (not b!1684291) (not b!1685029) (not b!1685053) (not b!1686099) (not tb!97663) (not b_lambda!52967) (not d!512586) (not b!1685914) (not b!1685978) (not b!1685455) (not b!1686053) (not d!512712) (not b!1685209) (not b!1684618) (not b!1686127) (not b!1685326) (not b!1685334) (not d!512742) (not b!1685236) (not b!1686153) (not b_lambda!53025) (not b!1684692) (not bm!107740) (not b!1686121) (not b!1685150) (not d!513044) (not d!513190) (not b!1685333) (not b!1686082) (not b!1685470) (not b!1685227) (not d!513134) (not d!512634) (not b!1685364) (not b!1686122) (not b!1684249) (not b_lambda!52971) (not d!513022) (not b!1684608) (not d!512854) (not b!1685290) (not b!1684178) (not b!1684345) (not d!512710) (not b!1685049) (not b!1686052) (not b!1685012) (not d!513384) (not b!1684502) (not b!1686150) (not d!513138) (not d!513206) (not bm!107786) (not b!1686021) (not b!1685405) (not b!1685471) (not d!512764) (not b!1684599) (not d!513456) (not b!1686049) (not b!1685249) (not b!1686079) (not b!1686027) (not b!1686069) (not d!512748) tp_is_empty!7433 (not b!1685468) (not bm!107785) (not d!513154) (not d!513034) (not b!1685403) (not b!1685965) (not b!1684592) (not d!513040) (not b!1684367) (not b!1685930) b_and!120395 (not b!1685052) (not d!513166) (not b!1684625) (not b!1686151) (not d!513172) (not b!1686020) (not b!1684655) (not b!1685379) (not d!513418) (not b!1684612) (not d!513178) (not d!513114) (not b!1684955) (not b!1684594) (not d!512566) (not b!1686065) (not d!512940) (not d!512894) (not b_next!46295) (not b!1684986) (not b!1685239) (not b!1685362) (not b!1685404) (not d!513204) (not b!1685977) (not b!1684513) (not d!513028) (not b!1686101) (not d!513476) (not b!1685138) (not d!512620) (not b!1686068) (not b!1684516) b_and!120389 (not b!1686063) (not d!512668) (not b!1684693) (not b!1686114) (not b!1684913) (not b!1686138) (not b!1685136) (not bm!107728) (not bm!107751) (not b!1686035) (not b!1686034) (not b!1684950) (not b!1686133) (not b!1685050) (not b!1686140) (not b!1684933) (not b!1685461) (not b!1685441) (not b!1685448) (not b!1685960) (not d!512610) (not d!513064) (not b!1686066) (not b_next!46329) (not b!1685467) (not b_lambda!52981) (not d!512740) (not b!1685347) (not b!1684956) (not b!1685953) (not b!1686123) (not b!1685936) (not b!1685399) (not d!512706) (not b_next!46317) (not b!1684180) (not d!513042) (not d!513466) (not d!512884) (not b!1684605) (not d!512576) (not b!1684943) (not bm!107729) (not bm!107707) (not d!513424) (not b!1684636) (not b!1686062) (not b!1685926) (not d!512852) (not b!1685440) (not b!1685234) (not d!513440) (not b!1686136) (not b!1684408) (not tb!97655) (not d!513386) (not b!1685288) (not b!1685964) (not d!513176) (not b!1684500) (not b!1684844) (not b_lambda!52987) (not b!1684669) (not d!513452) (not d!513458) (not bm!107755) (not d!513058) (not b!1684451) (not b!1684450) (not b!1685014) (not d!512594) (not d!513122) (not b!1685464) (not b!1684290) (not b!1684372) (not b!1684984) (not b!1686071) (not b!1685360) (not d!512632) (not d!513182) (not d!513484) (not bm!107639) (not b!1686125) (not d!512578) (not d!512920) (not d!513066) (not b!1684509) (not b!1685322) (not b!1685442) (not b!1685419) (not bm!107709) (not d!512636) (not d!512674))
(check-sat (not b_next!46301) b_and!120463 b_and!120507 b_and!120461 b_and!120391 (not b_next!46333) b_and!120395 b_and!120393 (not b_next!46331) (not b_next!46327) b_and!120505 (not b_next!46315) (not b_next!46313) b_and!120467 (not b_next!46311) b_and!120501 (not b_next!46297) b_and!120503 b_and!120465 (not b_next!46299) (not b_next!46295) b_and!120389 (not b_next!46329) (not b_next!46317))
