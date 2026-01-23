; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!49162 () Bool)

(assert start!49162)

(declare-fun b!533853 () Bool)

(declare-fun b_free!14505 () Bool)

(declare-fun b_next!14521 () Bool)

(assert (=> b!533853 (= b_free!14505 (not b_next!14521))))

(declare-fun tp!170362 () Bool)

(declare-fun b_and!52187 () Bool)

(assert (=> b!533853 (= tp!170362 b_and!52187)))

(declare-fun b_free!14507 () Bool)

(declare-fun b_next!14523 () Bool)

(assert (=> b!533853 (= b_free!14507 (not b_next!14523))))

(declare-fun tp!170360 () Bool)

(declare-fun b_and!52189 () Bool)

(assert (=> b!533853 (= tp!170360 b_and!52189)))

(declare-fun b!533850 () Bool)

(declare-fun b_free!14509 () Bool)

(declare-fun b_next!14525 () Bool)

(assert (=> b!533850 (= b_free!14509 (not b_next!14525))))

(declare-fun tp!170363 () Bool)

(declare-fun b_and!52191 () Bool)

(assert (=> b!533850 (= tp!170363 b_and!52191)))

(declare-fun b_free!14511 () Bool)

(declare-fun b_next!14527 () Bool)

(assert (=> b!533850 (= b_free!14511 (not b_next!14527))))

(declare-fun tp!170357 () Bool)

(declare-fun b_and!52193 () Bool)

(assert (=> b!533850 (= tp!170357 b_and!52193)))

(declare-fun b!533840 () Bool)

(declare-fun e!321628 () Bool)

(declare-fun e!321642 () Bool)

(declare-fun tp!170361 () Bool)

(assert (=> b!533840 (= e!321628 (and e!321642 tp!170361))))

(declare-fun b!533841 () Bool)

(declare-fun res!225605 () Bool)

(declare-fun e!321644 () Bool)

(assert (=> b!533841 (=> (not res!225605) (not e!321644))))

(declare-datatypes ((C!3466 0))(
  ( (C!3467 (val!1959 Int)) )
))
(declare-datatypes ((Regex!1272 0))(
  ( (ElementMatch!1272 (c!101752 C!3466)) (Concat!2234 (regOne!3056 Regex!1272) (regTwo!3056 Regex!1272)) (EmptyExpr!1272) (Star!1272 (reg!1601 Regex!1272)) (EmptyLang!1272) (Union!1272 (regOne!3057 Regex!1272) (regTwo!3057 Regex!1272)) )
))
(declare-datatypes ((String!6555 0))(
  ( (String!6556 (value!31575 String)) )
))
(declare-datatypes ((List!5144 0))(
  ( (Nil!5134) (Cons!5134 (h!10535 (_ BitVec 16)) (t!73965 List!5144)) )
))
(declare-datatypes ((TokenValue!962 0))(
  ( (FloatLiteralValue!1924 (text!7179 List!5144)) (TokenValueExt!961 (__x!3822 Int)) (Broken!4810 (value!31576 List!5144)) (Object!971) (End!962) (Def!962) (Underscore!962) (Match!962) (Else!962) (Error!962) (Case!962) (If!962) (Extends!962) (Abstract!962) (Class!962) (Val!962) (DelimiterValue!1924 (del!1022 List!5144)) (KeywordValue!968 (value!31577 List!5144)) (CommentValue!1924 (value!31578 List!5144)) (WhitespaceValue!1924 (value!31579 List!5144)) (IndentationValue!962 (value!31580 List!5144)) (String!6557) (Int32!962) (Broken!4811 (value!31581 List!5144)) (Boolean!963) (Unit!8957) (OperatorValue!965 (op!1022 List!5144)) (IdentifierValue!1924 (value!31582 List!5144)) (IdentifierValue!1925 (value!31583 List!5144)) (WhitespaceValue!1925 (value!31584 List!5144)) (True!1924) (False!1924) (Broken!4812 (value!31585 List!5144)) (Broken!4813 (value!31586 List!5144)) (True!1925) (RightBrace!962) (RightBracket!962) (Colon!962) (Null!962) (Comma!962) (LeftBracket!962) (False!1925) (LeftBrace!962) (ImaginaryLiteralValue!962 (text!7180 List!5144)) (StringLiteralValue!2886 (value!31587 List!5144)) (EOFValue!962 (value!31588 List!5144)) (IdentValue!962 (value!31589 List!5144)) (DelimiterValue!1925 (value!31590 List!5144)) (DedentValue!962 (value!31591 List!5144)) (NewLineValue!962 (value!31592 List!5144)) (IntegerValue!2886 (value!31593 (_ BitVec 32)) (text!7181 List!5144)) (IntegerValue!2887 (value!31594 Int) (text!7182 List!5144)) (Times!962) (Or!962) (Equal!962) (Minus!962) (Broken!4814 (value!31595 List!5144)) (And!962) (Div!962) (LessEqual!962) (Mod!962) (Concat!2235) (Not!962) (Plus!962) (SpaceValue!962 (value!31596 List!5144)) (IntegerValue!2888 (value!31597 Int) (text!7183 List!5144)) (StringLiteralValue!2887 (text!7184 List!5144)) (FloatLiteralValue!1925 (text!7185 List!5144)) (BytesLiteralValue!962 (value!31598 List!5144)) (CommentValue!1925 (value!31599 List!5144)) (StringLiteralValue!2888 (value!31600 List!5144)) (ErrorTokenValue!962 (msg!1023 List!5144)) )
))
(declare-datatypes ((List!5145 0))(
  ( (Nil!5135) (Cons!5135 (h!10536 C!3466) (t!73966 List!5145)) )
))
(declare-datatypes ((IArray!3311 0))(
  ( (IArray!3312 (innerList!1713 List!5145)) )
))
(declare-datatypes ((Conc!1655 0))(
  ( (Node!1655 (left!4321 Conc!1655) (right!4651 Conc!1655) (csize!3540 Int) (cheight!1866 Int)) (Leaf!2632 (xs!4292 IArray!3311) (csize!3541 Int)) (Empty!1655) )
))
(declare-datatypes ((BalanceConc!3318 0))(
  ( (BalanceConc!3319 (c!101753 Conc!1655)) )
))
(declare-datatypes ((TokenValueInjection!1692 0))(
  ( (TokenValueInjection!1693 (toValue!1785 Int) (toChars!1644 Int)) )
))
(declare-datatypes ((Rule!1676 0))(
  ( (Rule!1677 (regex!938 Regex!1272) (tag!1200 String!6555) (isSeparator!938 Bool) (transformation!938 TokenValueInjection!1692)) )
))
(declare-datatypes ((List!5146 0))(
  ( (Nil!5136) (Cons!5136 (h!10537 Rule!1676) (t!73967 List!5146)) )
))
(declare-fun rules!3103 () List!5146)

(declare-fun isEmpty!3714 (List!5146) Bool)

(assert (=> b!533841 (= res!225605 (not (isEmpty!3714 rules!3103)))))

(declare-fun b!533842 () Bool)

(declare-fun res!225599 () Bool)

(declare-fun e!321636 () Bool)

(assert (=> b!533842 (=> (not res!225599) (not e!321636))))

(declare-datatypes ((Token!1612 0))(
  ( (Token!1613 (value!31601 TokenValue!962) (rule!1640 Rule!1676) (size!4146 Int) (originalCharacters!977 List!5145)) )
))
(declare-datatypes ((tuple2!6234 0))(
  ( (tuple2!6235 (_1!3381 Token!1612) (_2!3381 List!5145)) )
))
(declare-datatypes ((Option!1288 0))(
  ( (None!1287) (Some!1287 (v!16094 tuple2!6234)) )
))
(declare-fun lt!219902 () Option!1288)

(declare-fun size!4147 (List!5145) Int)

(assert (=> b!533842 (= res!225599 (= (size!4146 (_1!3381 (v!16094 lt!219902))) (size!4147 (originalCharacters!977 (_1!3381 (v!16094 lt!219902))))))))

(declare-fun b!533843 () Bool)

(declare-fun res!225603 () Bool)

(assert (=> b!533843 (=> (not res!225603) (not e!321644))))

(declare-fun input!2705 () List!5145)

(declare-fun isEmpty!3715 (List!5145) Bool)

(assert (=> b!533843 (= res!225603 (not (isEmpty!3715 input!2705)))))

(declare-fun b!533844 () Bool)

(declare-fun e!321635 () Bool)

(declare-fun e!321626 () Bool)

(assert (=> b!533844 (= e!321635 e!321626)))

(declare-fun res!225602 () Bool)

(assert (=> b!533844 (=> (not res!225602) (not e!321626))))

(declare-fun lt!219903 () Option!1288)

(declare-fun isDefined!1100 (Option!1288) Bool)

(assert (=> b!533844 (= res!225602 (isDefined!1100 lt!219903))))

(declare-datatypes ((LexerInterface!824 0))(
  ( (LexerInterfaceExt!821 (__x!3823 Int)) (Lexer!822) )
))
(declare-fun thiss!22590 () LexerInterface!824)

(declare-fun lt!219898 () List!5145)

(declare-fun maxPrefix!522 (LexerInterface!824 List!5146 List!5145) Option!1288)

(assert (=> b!533844 (= lt!219903 (maxPrefix!522 thiss!22590 rules!3103 lt!219898))))

(declare-fun suffix!1342 () List!5145)

(declare-fun ++!1426 (List!5145 List!5145) List!5145)

(assert (=> b!533844 (= lt!219898 (++!1426 input!2705 suffix!1342))))

(declare-fun b!533845 () Bool)

(declare-fun e!321643 () Bool)

(declare-fun e!321638 () Bool)

(assert (=> b!533845 (= e!321643 (not e!321638))))

(declare-fun res!225604 () Bool)

(assert (=> b!533845 (=> res!225604 e!321638)))

(declare-fun lt!219895 () List!5145)

(declare-fun isPrefix!580 (List!5145 List!5145) Bool)

(assert (=> b!533845 (= res!225604 (not (isPrefix!580 input!2705 lt!219895)))))

(declare-fun lt!219888 () List!5145)

(assert (=> b!533845 (isPrefix!580 lt!219888 lt!219895)))

(declare-datatypes ((Unit!8958 0))(
  ( (Unit!8959) )
))
(declare-fun lt!219889 () Unit!8958)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!431 (List!5145 List!5145) Unit!8958)

(assert (=> b!533845 (= lt!219889 (lemmaConcatTwoListThenFirstIsPrefix!431 lt!219888 suffix!1342))))

(assert (=> b!533845 (isPrefix!580 input!2705 lt!219898)))

(declare-fun lt!219892 () Unit!8958)

(assert (=> b!533845 (= lt!219892 (lemmaConcatTwoListThenFirstIsPrefix!431 input!2705 suffix!1342))))

(assert (=> b!533845 e!321636))

(declare-fun res!225600 () Bool)

(assert (=> b!533845 (=> (not res!225600) (not e!321636))))

(declare-fun lt!219891 () TokenValue!962)

(assert (=> b!533845 (= res!225600 (= (value!31601 (_1!3381 (v!16094 lt!219902))) lt!219891))))

(declare-fun lt!219897 () List!5145)

(declare-fun apply!1213 (TokenValueInjection!1692 BalanceConc!3318) TokenValue!962)

(declare-fun seqFromList!1136 (List!5145) BalanceConc!3318)

(assert (=> b!533845 (= lt!219891 (apply!1213 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))) (seqFromList!1136 lt!219897)))))

(declare-fun lt!219894 () Unit!8958)

(declare-fun token!491 () Token!1612)

(declare-fun lemmaInv!86 (TokenValueInjection!1692) Unit!8958)

(assert (=> b!533845 (= lt!219894 (lemmaInv!86 (transformation!938 (rule!1640 token!491))))))

(declare-fun lt!219884 () Unit!8958)

(assert (=> b!533845 (= lt!219884 (lemmaInv!86 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))))))

(declare-fun ruleValid!158 (LexerInterface!824 Rule!1676) Bool)

(assert (=> b!533845 (ruleValid!158 thiss!22590 (rule!1640 token!491))))

(declare-fun lt!219900 () Unit!8958)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!17 (LexerInterface!824 Rule!1676 List!5146) Unit!8958)

(assert (=> b!533845 (= lt!219900 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!17 thiss!22590 (rule!1640 token!491) rules!3103))))

(assert (=> b!533845 (ruleValid!158 thiss!22590 (rule!1640 (_1!3381 (v!16094 lt!219902))))))

(declare-fun lt!219905 () Unit!8958)

(assert (=> b!533845 (= lt!219905 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!17 thiss!22590 (rule!1640 (_1!3381 (v!16094 lt!219902))) rules!3103))))

(assert (=> b!533845 (isPrefix!580 input!2705 input!2705)))

(declare-fun lt!219885 () Unit!8958)

(declare-fun lemmaIsPrefixRefl!320 (List!5145 List!5145) Unit!8958)

(assert (=> b!533845 (= lt!219885 (lemmaIsPrefixRefl!320 input!2705 input!2705))))

(declare-fun lt!219901 () List!5145)

(assert (=> b!533845 (= (_2!3381 (v!16094 lt!219902)) lt!219901)))

(declare-fun lt!219896 () Unit!8958)

(declare-fun lemmaSamePrefixThenSameSuffix!307 (List!5145 List!5145 List!5145 List!5145 List!5145) Unit!8958)

(assert (=> b!533845 (= lt!219896 (lemmaSamePrefixThenSameSuffix!307 lt!219897 (_2!3381 (v!16094 lt!219902)) lt!219897 lt!219901 input!2705))))

(declare-fun getSuffix!103 (List!5145 List!5145) List!5145)

(assert (=> b!533845 (= lt!219901 (getSuffix!103 input!2705 lt!219897))))

(assert (=> b!533845 (isPrefix!580 lt!219897 (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902))))))

(declare-fun lt!219899 () Unit!8958)

(assert (=> b!533845 (= lt!219899 (lemmaConcatTwoListThenFirstIsPrefix!431 lt!219897 (_2!3381 (v!16094 lt!219902))))))

(declare-fun lt!219890 () Unit!8958)

(declare-fun lemmaCharactersSize!17 (Token!1612) Unit!8958)

(assert (=> b!533845 (= lt!219890 (lemmaCharactersSize!17 token!491))))

(declare-fun lt!219906 () Unit!8958)

(assert (=> b!533845 (= lt!219906 (lemmaCharactersSize!17 (_1!3381 (v!16094 lt!219902))))))

(declare-fun lt!219887 () Unit!8958)

(declare-fun e!321637 () Unit!8958)

(assert (=> b!533845 (= lt!219887 e!321637)))

(declare-fun c!101751 () Bool)

(declare-fun lt!219907 () Int)

(declare-fun lt!219893 () Int)

(assert (=> b!533845 (= c!101751 (> lt!219907 lt!219893))))

(assert (=> b!533845 (= lt!219893 (size!4147 lt!219888))))

(assert (=> b!533845 (= lt!219907 (size!4147 lt!219897))))

(declare-fun list!2136 (BalanceConc!3318) List!5145)

(declare-fun charsOf!567 (Token!1612) BalanceConc!3318)

(assert (=> b!533845 (= lt!219897 (list!2136 (charsOf!567 (_1!3381 (v!16094 lt!219902)))))))

(assert (=> b!533845 (= lt!219902 (Some!1287 (v!16094 lt!219902)))))

(declare-fun lt!219886 () Unit!8958)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!23 (List!5145 List!5145 List!5145 List!5145) Unit!8958)

(assert (=> b!533845 (= lt!219886 (lemmaConcatSameAndSameSizesThenSameLists!23 lt!219888 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!533847 () Bool)

(declare-fun e!321639 () Bool)

(declare-fun tp_is_empty!2899 () Bool)

(declare-fun tp!170356 () Bool)

(assert (=> b!533847 (= e!321639 (and tp_is_empty!2899 tp!170356))))

(declare-fun b!533848 () Bool)

(declare-fun e!321640 () Bool)

(assert (=> b!533848 (= e!321640 e!321643)))

(declare-fun res!225596 () Bool)

(assert (=> b!533848 (=> (not res!225596) (not e!321643))))

(assert (=> b!533848 (= res!225596 (= lt!219895 lt!219898))))

(assert (=> b!533848 (= lt!219895 (++!1426 lt!219888 suffix!1342))))

(declare-fun b!533849 () Bool)

(assert (=> b!533849 (= e!321644 e!321635)))

(declare-fun res!225606 () Bool)

(assert (=> b!533849 (=> (not res!225606) (not e!321635))))

(assert (=> b!533849 (= res!225606 (= lt!219888 input!2705))))

(assert (=> b!533849 (= lt!219888 (list!2136 (charsOf!567 token!491)))))

(declare-fun e!321634 () Bool)

(assert (=> b!533850 (= e!321634 (and tp!170363 tp!170357))))

(declare-fun b!533851 () Bool)

(assert (=> b!533851 (= e!321636 (and (= (size!4146 (_1!3381 (v!16094 lt!219902))) lt!219907) (= (originalCharacters!977 (_1!3381 (v!16094 lt!219902))) lt!219897) (= (v!16094 lt!219902) (tuple2!6235 (Token!1613 lt!219891 (rule!1640 (_1!3381 (v!16094 lt!219902))) lt!219907 lt!219897) lt!219901))))))

(declare-fun b!533852 () Bool)

(declare-fun Unit!8960 () Unit!8958)

(assert (=> b!533852 (= e!321637 Unit!8960)))

(declare-fun e!321627 () Bool)

(assert (=> b!533853 (= e!321627 (and tp!170362 tp!170360))))

(declare-fun tp!170364 () Bool)

(declare-fun b!533854 () Bool)

(declare-fun inv!6445 (String!6555) Bool)

(declare-fun inv!6448 (TokenValueInjection!1692) Bool)

(assert (=> b!533854 (= e!321642 (and tp!170364 (inv!6445 (tag!1200 (h!10537 rules!3103))) (inv!6448 (transformation!938 (h!10537 rules!3103))) e!321634))))

(declare-fun b!533855 () Bool)

(declare-fun e!321641 () Bool)

(declare-fun tp!170358 () Bool)

(declare-fun e!321633 () Bool)

(declare-fun inv!21 (TokenValue!962) Bool)

(assert (=> b!533855 (= e!321633 (and (inv!21 (value!31601 token!491)) e!321641 tp!170358))))

(declare-fun b!533856 () Bool)

(declare-fun res!225598 () Bool)

(assert (=> b!533856 (=> (not res!225598) (not e!321644))))

(declare-fun rulesInvariant!787 (LexerInterface!824 List!5146) Bool)

(assert (=> b!533856 (= res!225598 (rulesInvariant!787 thiss!22590 rules!3103))))

(declare-fun b!533857 () Bool)

(declare-fun e!321632 () Bool)

(assert (=> b!533857 (= e!321632 e!321640)))

(declare-fun res!225597 () Bool)

(assert (=> b!533857 (=> (not res!225597) (not e!321640))))

(assert (=> b!533857 (= res!225597 (is-Some!1287 lt!219902))))

(assert (=> b!533857 (= lt!219902 (maxPrefix!522 thiss!22590 rules!3103 input!2705))))

(declare-fun b!533858 () Bool)

(declare-fun Unit!8961 () Unit!8958)

(assert (=> b!533858 (= e!321637 Unit!8961)))

(assert (=> b!533858 false))

(declare-fun b!533859 () Bool)

(assert (=> b!533859 (= e!321626 e!321632)))

(declare-fun res!225595 () Bool)

(assert (=> b!533859 (=> (not res!225595) (not e!321632))))

(declare-fun lt!219904 () tuple2!6234)

(assert (=> b!533859 (= res!225595 (and (= (_1!3381 lt!219904) token!491) (= (_2!3381 lt!219904) suffix!1342)))))

(declare-fun get!1922 (Option!1288) tuple2!6234)

(assert (=> b!533859 (= lt!219904 (get!1922 lt!219903))))

(declare-fun b!533860 () Bool)

(declare-fun e!321625 () Bool)

(declare-fun tp!170359 () Bool)

(assert (=> b!533860 (= e!321625 (and tp_is_empty!2899 tp!170359))))

(declare-fun b!533861 () Bool)

(declare-fun tp!170355 () Bool)

(assert (=> b!533861 (= e!321641 (and tp!170355 (inv!6445 (tag!1200 (rule!1640 token!491))) (inv!6448 (transformation!938 (rule!1640 token!491))) e!321627))))

(declare-fun b!533846 () Bool)

(assert (=> b!533846 (= e!321638 (>= (size!4147 lt!219898) lt!219893))))

(declare-fun res!225601 () Bool)

(assert (=> start!49162 (=> (not res!225601) (not e!321644))))

(assert (=> start!49162 (= res!225601 (is-Lexer!822 thiss!22590))))

(assert (=> start!49162 e!321644))

(assert (=> start!49162 e!321639))

(assert (=> start!49162 e!321628))

(declare-fun inv!6449 (Token!1612) Bool)

(assert (=> start!49162 (and (inv!6449 token!491) e!321633)))

(assert (=> start!49162 true))

(assert (=> start!49162 e!321625))

(assert (= (and start!49162 res!225601) b!533841))

(assert (= (and b!533841 res!225605) b!533856))

(assert (= (and b!533856 res!225598) b!533843))

(assert (= (and b!533843 res!225603) b!533849))

(assert (= (and b!533849 res!225606) b!533844))

(assert (= (and b!533844 res!225602) b!533859))

(assert (= (and b!533859 res!225595) b!533857))

(assert (= (and b!533857 res!225597) b!533848))

(assert (= (and b!533848 res!225596) b!533845))

(assert (= (and b!533845 c!101751) b!533858))

(assert (= (and b!533845 (not c!101751)) b!533852))

(assert (= (and b!533845 res!225600) b!533842))

(assert (= (and b!533842 res!225599) b!533851))

(assert (= (and b!533845 (not res!225604)) b!533846))

(assert (= (and start!49162 (is-Cons!5135 suffix!1342)) b!533847))

(assert (= b!533854 b!533850))

(assert (= b!533840 b!533854))

(assert (= (and start!49162 (is-Cons!5136 rules!3103)) b!533840))

(assert (= b!533861 b!533853))

(assert (= b!533855 b!533861))

(assert (= start!49162 b!533855))

(assert (= (and start!49162 (is-Cons!5135 input!2705)) b!533860))

(declare-fun m!779287 () Bool)

(assert (=> b!533861 m!779287))

(declare-fun m!779289 () Bool)

(assert (=> b!533861 m!779289))

(declare-fun m!779291 () Bool)

(assert (=> b!533849 m!779291))

(assert (=> b!533849 m!779291))

(declare-fun m!779293 () Bool)

(assert (=> b!533849 m!779293))

(declare-fun m!779295 () Bool)

(assert (=> b!533846 m!779295))

(declare-fun m!779297 () Bool)

(assert (=> b!533854 m!779297))

(declare-fun m!779299 () Bool)

(assert (=> b!533854 m!779299))

(declare-fun m!779301 () Bool)

(assert (=> b!533855 m!779301))

(declare-fun m!779303 () Bool)

(assert (=> b!533856 m!779303))

(declare-fun m!779305 () Bool)

(assert (=> b!533859 m!779305))

(declare-fun m!779307 () Bool)

(assert (=> b!533848 m!779307))

(declare-fun m!779309 () Bool)

(assert (=> b!533845 m!779309))

(declare-fun m!779311 () Bool)

(assert (=> b!533845 m!779311))

(declare-fun m!779313 () Bool)

(assert (=> b!533845 m!779313))

(declare-fun m!779315 () Bool)

(assert (=> b!533845 m!779315))

(declare-fun m!779317 () Bool)

(assert (=> b!533845 m!779317))

(declare-fun m!779319 () Bool)

(assert (=> b!533845 m!779319))

(declare-fun m!779321 () Bool)

(assert (=> b!533845 m!779321))

(declare-fun m!779323 () Bool)

(assert (=> b!533845 m!779323))

(declare-fun m!779325 () Bool)

(assert (=> b!533845 m!779325))

(declare-fun m!779327 () Bool)

(assert (=> b!533845 m!779327))

(declare-fun m!779329 () Bool)

(assert (=> b!533845 m!779329))

(declare-fun m!779331 () Bool)

(assert (=> b!533845 m!779331))

(declare-fun m!779333 () Bool)

(assert (=> b!533845 m!779333))

(declare-fun m!779335 () Bool)

(assert (=> b!533845 m!779335))

(declare-fun m!779337 () Bool)

(assert (=> b!533845 m!779337))

(declare-fun m!779339 () Bool)

(assert (=> b!533845 m!779339))

(declare-fun m!779341 () Bool)

(assert (=> b!533845 m!779341))

(declare-fun m!779343 () Bool)

(assert (=> b!533845 m!779343))

(declare-fun m!779345 () Bool)

(assert (=> b!533845 m!779345))

(declare-fun m!779347 () Bool)

(assert (=> b!533845 m!779347))

(declare-fun m!779349 () Bool)

(assert (=> b!533845 m!779349))

(declare-fun m!779351 () Bool)

(assert (=> b!533845 m!779351))

(declare-fun m!779353 () Bool)

(assert (=> b!533845 m!779353))

(assert (=> b!533845 m!779313))

(declare-fun m!779355 () Bool)

(assert (=> b!533845 m!779355))

(assert (=> b!533845 m!779327))

(declare-fun m!779357 () Bool)

(assert (=> b!533845 m!779357))

(declare-fun m!779359 () Bool)

(assert (=> b!533845 m!779359))

(assert (=> b!533845 m!779351))

(declare-fun m!779361 () Bool)

(assert (=> b!533845 m!779361))

(declare-fun m!779363 () Bool)

(assert (=> b!533843 m!779363))

(declare-fun m!779365 () Bool)

(assert (=> start!49162 m!779365))

(declare-fun m!779367 () Bool)

(assert (=> b!533842 m!779367))

(declare-fun m!779369 () Bool)

(assert (=> b!533841 m!779369))

(declare-fun m!779371 () Bool)

(assert (=> b!533844 m!779371))

(declare-fun m!779373 () Bool)

(assert (=> b!533844 m!779373))

(declare-fun m!779375 () Bool)

(assert (=> b!533844 m!779375))

(declare-fun m!779377 () Bool)

(assert (=> b!533857 m!779377))

(push 1)

(assert (not b!533846))

(assert (not b!533857))

(assert (not b!533859))

(assert b_and!52191)

(assert b_and!52187)

(assert (not start!49162))

(assert (not b_next!14523))

(assert (not b!533856))

(assert (not b_next!14527))

(assert b_and!52189)

(assert (not b!533840))

(assert (not b_next!14521))

(assert tp_is_empty!2899)

(assert (not b!533844))

(assert (not b!533855))

(assert (not b!533843))

(assert (not b!533842))

(assert (not b!533860))

(assert b_and!52193)

(assert (not b!533845))

(assert (not b!533861))

(assert (not b!533847))

(assert (not b_next!14525))

(assert (not b!533854))

(assert (not b!533849))

(assert (not b!533848))

(assert (not b!533841))

(check-sat)

(pop 1)

(push 1)

(assert b_and!52191)

(assert b_and!52187)

(assert (not b_next!14523))

(assert (not b_next!14527))

(assert b_and!52189)

(assert (not b_next!14521))

(assert (not b_next!14525))

(assert b_and!52193)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!189049 () Bool)

(declare-fun res!225653 () Bool)

(declare-fun e!321707 () Bool)

(assert (=> d!189049 (=> (not res!225653) (not e!321707))))

(declare-fun rulesValid!337 (LexerInterface!824 List!5146) Bool)

(assert (=> d!189049 (= res!225653 (rulesValid!337 thiss!22590 rules!3103))))

(assert (=> d!189049 (= (rulesInvariant!787 thiss!22590 rules!3103) e!321707)))

(declare-fun b!533930 () Bool)

(declare-datatypes ((List!5150 0))(
  ( (Nil!5140) (Cons!5140 (h!10541 String!6555) (t!73989 List!5150)) )
))
(declare-fun noDuplicateTag!337 (LexerInterface!824 List!5146 List!5150) Bool)

(assert (=> b!533930 (= e!321707 (noDuplicateTag!337 thiss!22590 rules!3103 Nil!5140))))

(assert (= (and d!189049 res!225653) b!533930))

(declare-fun m!779471 () Bool)

(assert (=> d!189049 m!779471))

(declare-fun m!779473 () Bool)

(assert (=> b!533930 m!779473))

(assert (=> b!533856 d!189049))

(declare-fun d!189051 () Bool)

(declare-fun lt!219982 () Int)

(assert (=> d!189051 (>= lt!219982 0)))

(declare-fun e!321710 () Int)

(assert (=> d!189051 (= lt!219982 e!321710)))

(declare-fun c!101762 () Bool)

(assert (=> d!189051 (= c!101762 (is-Nil!5135 lt!219888))))

(assert (=> d!189051 (= (size!4147 lt!219888) lt!219982)))

(declare-fun b!533935 () Bool)

(assert (=> b!533935 (= e!321710 0)))

(declare-fun b!533936 () Bool)

(assert (=> b!533936 (= e!321710 (+ 1 (size!4147 (t!73966 lt!219888))))))

(assert (= (and d!189051 c!101762) b!533935))

(assert (= (and d!189051 (not c!101762)) b!533936))

(declare-fun m!779475 () Bool)

(assert (=> b!533936 m!779475))

(assert (=> b!533845 d!189051))

(declare-fun d!189053 () Bool)

(declare-fun res!225658 () Bool)

(declare-fun e!321713 () Bool)

(assert (=> d!189053 (=> (not res!225658) (not e!321713))))

(declare-fun validRegex!429 (Regex!1272) Bool)

(assert (=> d!189053 (= res!225658 (validRegex!429 (regex!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))))))

(assert (=> d!189053 (= (ruleValid!158 thiss!22590 (rule!1640 (_1!3381 (v!16094 lt!219902)))) e!321713)))

(declare-fun b!533941 () Bool)

(declare-fun res!225659 () Bool)

(assert (=> b!533941 (=> (not res!225659) (not e!321713))))

(declare-fun nullable!334 (Regex!1272) Bool)

(assert (=> b!533941 (= res!225659 (not (nullable!334 (regex!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))))))

(declare-fun b!533942 () Bool)

(assert (=> b!533942 (= e!321713 (not (= (tag!1200 (rule!1640 (_1!3381 (v!16094 lt!219902)))) (String!6556 ""))))))

(assert (= (and d!189053 res!225658) b!533941))

(assert (= (and b!533941 res!225659) b!533942))

(declare-fun m!779477 () Bool)

(assert (=> d!189053 m!779477))

(declare-fun m!779479 () Bool)

(assert (=> b!533941 m!779479))

(assert (=> b!533845 d!189053))

(declare-fun b!533952 () Bool)

(declare-fun res!225668 () Bool)

(declare-fun e!321721 () Bool)

(assert (=> b!533952 (=> (not res!225668) (not e!321721))))

(declare-fun head!1171 (List!5145) C!3466)

(assert (=> b!533952 (= res!225668 (= (head!1171 lt!219897) (head!1171 (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902))))))))

(declare-fun b!533953 () Bool)

(declare-fun tail!700 (List!5145) List!5145)

(assert (=> b!533953 (= e!321721 (isPrefix!580 (tail!700 lt!219897) (tail!700 (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902))))))))

(declare-fun d!189055 () Bool)

(declare-fun e!321720 () Bool)

(assert (=> d!189055 e!321720))

(declare-fun res!225671 () Bool)

(assert (=> d!189055 (=> res!225671 e!321720)))

(declare-fun lt!219985 () Bool)

(assert (=> d!189055 (= res!225671 (not lt!219985))))

(declare-fun e!321722 () Bool)

(assert (=> d!189055 (= lt!219985 e!321722)))

(declare-fun res!225669 () Bool)

(assert (=> d!189055 (=> res!225669 e!321722)))

(assert (=> d!189055 (= res!225669 (is-Nil!5135 lt!219897))))

(assert (=> d!189055 (= (isPrefix!580 lt!219897 (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902)))) lt!219985)))

(declare-fun b!533951 () Bool)

(assert (=> b!533951 (= e!321722 e!321721)))

(declare-fun res!225670 () Bool)

(assert (=> b!533951 (=> (not res!225670) (not e!321721))))

(assert (=> b!533951 (= res!225670 (not (is-Nil!5135 (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902))))))))

(declare-fun b!533954 () Bool)

(assert (=> b!533954 (= e!321720 (>= (size!4147 (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902)))) (size!4147 lt!219897)))))

(assert (= (and d!189055 (not res!225669)) b!533951))

(assert (= (and b!533951 res!225670) b!533952))

(assert (= (and b!533952 res!225668) b!533953))

(assert (= (and d!189055 (not res!225671)) b!533954))

(declare-fun m!779481 () Bool)

(assert (=> b!533952 m!779481))

(assert (=> b!533952 m!779327))

(declare-fun m!779483 () Bool)

(assert (=> b!533952 m!779483))

(declare-fun m!779485 () Bool)

(assert (=> b!533953 m!779485))

(assert (=> b!533953 m!779327))

(declare-fun m!779487 () Bool)

(assert (=> b!533953 m!779487))

(assert (=> b!533953 m!779485))

(assert (=> b!533953 m!779487))

(declare-fun m!779489 () Bool)

(assert (=> b!533953 m!779489))

(assert (=> b!533954 m!779327))

(declare-fun m!779491 () Bool)

(assert (=> b!533954 m!779491))

(assert (=> b!533954 m!779333))

(assert (=> b!533845 d!189055))

(declare-fun d!189057 () Bool)

(assert (=> d!189057 (= (_2!3381 (v!16094 lt!219902)) lt!219901)))

(declare-fun lt!219988 () Unit!8958)

(declare-fun choose!3753 (List!5145 List!5145 List!5145 List!5145 List!5145) Unit!8958)

(assert (=> d!189057 (= lt!219988 (choose!3753 lt!219897 (_2!3381 (v!16094 lt!219902)) lt!219897 lt!219901 input!2705))))

(assert (=> d!189057 (isPrefix!580 lt!219897 input!2705)))

(assert (=> d!189057 (= (lemmaSamePrefixThenSameSuffix!307 lt!219897 (_2!3381 (v!16094 lt!219902)) lt!219897 lt!219901 input!2705) lt!219988)))

(declare-fun bs!67248 () Bool)

(assert (= bs!67248 d!189057))

(declare-fun m!779493 () Bool)

(assert (=> bs!67248 m!779493))

(declare-fun m!779495 () Bool)

(assert (=> bs!67248 m!779495))

(assert (=> b!533845 d!189057))

(declare-fun b!533956 () Bool)

(declare-fun res!225672 () Bool)

(declare-fun e!321724 () Bool)

(assert (=> b!533956 (=> (not res!225672) (not e!321724))))

(assert (=> b!533956 (= res!225672 (= (head!1171 input!2705) (head!1171 input!2705)))))

(declare-fun b!533957 () Bool)

(assert (=> b!533957 (= e!321724 (isPrefix!580 (tail!700 input!2705) (tail!700 input!2705)))))

(declare-fun d!189059 () Bool)

(declare-fun e!321723 () Bool)

(assert (=> d!189059 e!321723))

(declare-fun res!225675 () Bool)

(assert (=> d!189059 (=> res!225675 e!321723)))

(declare-fun lt!219989 () Bool)

(assert (=> d!189059 (= res!225675 (not lt!219989))))

(declare-fun e!321725 () Bool)

(assert (=> d!189059 (= lt!219989 e!321725)))

(declare-fun res!225673 () Bool)

(assert (=> d!189059 (=> res!225673 e!321725)))

(assert (=> d!189059 (= res!225673 (is-Nil!5135 input!2705))))

(assert (=> d!189059 (= (isPrefix!580 input!2705 input!2705) lt!219989)))

(declare-fun b!533955 () Bool)

(assert (=> b!533955 (= e!321725 e!321724)))

(declare-fun res!225674 () Bool)

(assert (=> b!533955 (=> (not res!225674) (not e!321724))))

(assert (=> b!533955 (= res!225674 (not (is-Nil!5135 input!2705)))))

(declare-fun b!533958 () Bool)

(assert (=> b!533958 (= e!321723 (>= (size!4147 input!2705) (size!4147 input!2705)))))

(assert (= (and d!189059 (not res!225673)) b!533955))

(assert (= (and b!533955 res!225674) b!533956))

(assert (= (and b!533956 res!225672) b!533957))

(assert (= (and d!189059 (not res!225675)) b!533958))

(declare-fun m!779497 () Bool)

(assert (=> b!533956 m!779497))

(assert (=> b!533956 m!779497))

(declare-fun m!779499 () Bool)

(assert (=> b!533957 m!779499))

(assert (=> b!533957 m!779499))

(assert (=> b!533957 m!779499))

(assert (=> b!533957 m!779499))

(declare-fun m!779501 () Bool)

(assert (=> b!533957 m!779501))

(declare-fun m!779503 () Bool)

(assert (=> b!533958 m!779503))

(assert (=> b!533958 m!779503))

(assert (=> b!533845 d!189059))

(declare-fun b!533967 () Bool)

(declare-fun e!321731 () List!5145)

(assert (=> b!533967 (= e!321731 (_2!3381 (v!16094 lt!219902)))))

(declare-fun b!533969 () Bool)

(declare-fun res!225681 () Bool)

(declare-fun e!321730 () Bool)

(assert (=> b!533969 (=> (not res!225681) (not e!321730))))

(declare-fun lt!219992 () List!5145)

(assert (=> b!533969 (= res!225681 (= (size!4147 lt!219992) (+ (size!4147 lt!219897) (size!4147 (_2!3381 (v!16094 lt!219902))))))))

(declare-fun d!189061 () Bool)

(assert (=> d!189061 e!321730))

(declare-fun res!225680 () Bool)

(assert (=> d!189061 (=> (not res!225680) (not e!321730))))

(declare-fun content!907 (List!5145) (Set C!3466))

(assert (=> d!189061 (= res!225680 (= (content!907 lt!219992) (set.union (content!907 lt!219897) (content!907 (_2!3381 (v!16094 lt!219902))))))))

(assert (=> d!189061 (= lt!219992 e!321731)))

(declare-fun c!101765 () Bool)

(assert (=> d!189061 (= c!101765 (is-Nil!5135 lt!219897))))

(assert (=> d!189061 (= (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902))) lt!219992)))

(declare-fun b!533970 () Bool)

(assert (=> b!533970 (= e!321730 (or (not (= (_2!3381 (v!16094 lt!219902)) Nil!5135)) (= lt!219992 lt!219897)))))

(declare-fun b!533968 () Bool)

(assert (=> b!533968 (= e!321731 (Cons!5135 (h!10536 lt!219897) (++!1426 (t!73966 lt!219897) (_2!3381 (v!16094 lt!219902)))))))

(assert (= (and d!189061 c!101765) b!533967))

(assert (= (and d!189061 (not c!101765)) b!533968))

(assert (= (and d!189061 res!225680) b!533969))

(assert (= (and b!533969 res!225681) b!533970))

(declare-fun m!779505 () Bool)

(assert (=> b!533969 m!779505))

(assert (=> b!533969 m!779333))

(declare-fun m!779507 () Bool)

(assert (=> b!533969 m!779507))

(declare-fun m!779509 () Bool)

(assert (=> d!189061 m!779509))

(declare-fun m!779511 () Bool)

(assert (=> d!189061 m!779511))

(declare-fun m!779513 () Bool)

(assert (=> d!189061 m!779513))

(declare-fun m!779515 () Bool)

(assert (=> b!533968 m!779515))

(assert (=> b!533845 d!189061))

(declare-fun d!189065 () Bool)

(declare-fun res!225682 () Bool)

(declare-fun e!321732 () Bool)

(assert (=> d!189065 (=> (not res!225682) (not e!321732))))

(assert (=> d!189065 (= res!225682 (validRegex!429 (regex!938 (rule!1640 token!491))))))

(assert (=> d!189065 (= (ruleValid!158 thiss!22590 (rule!1640 token!491)) e!321732)))

(declare-fun b!533971 () Bool)

(declare-fun res!225683 () Bool)

(assert (=> b!533971 (=> (not res!225683) (not e!321732))))

(assert (=> b!533971 (= res!225683 (not (nullable!334 (regex!938 (rule!1640 token!491)))))))

(declare-fun b!533972 () Bool)

(assert (=> b!533972 (= e!321732 (not (= (tag!1200 (rule!1640 token!491)) (String!6556 ""))))))

(assert (= (and d!189065 res!225682) b!533971))

(assert (= (and b!533971 res!225683) b!533972))

(declare-fun m!779517 () Bool)

(assert (=> d!189065 m!779517))

(declare-fun m!779519 () Bool)

(assert (=> b!533971 m!779519))

(assert (=> b!533845 d!189065))

(declare-fun d!189067 () Bool)

(declare-fun lt!219995 () BalanceConc!3318)

(assert (=> d!189067 (= (list!2136 lt!219995) (originalCharacters!977 (_1!3381 (v!16094 lt!219902))))))

(declare-fun dynLambda!3078 (Int TokenValue!962) BalanceConc!3318)

(assert (=> d!189067 (= lt!219995 (dynLambda!3078 (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) (value!31601 (_1!3381 (v!16094 lt!219902)))))))

(assert (=> d!189067 (= (charsOf!567 (_1!3381 (v!16094 lt!219902))) lt!219995)))

(declare-fun b_lambda!20623 () Bool)

(assert (=> (not b_lambda!20623) (not d!189067)))

(declare-fun t!73972 () Bool)

(declare-fun tb!47391 () Bool)

(assert (=> (and b!533853 (= (toChars!1644 (transformation!938 (rule!1640 token!491))) (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))) t!73972) tb!47391))

(declare-fun b!533981 () Bool)

(declare-fun e!321737 () Bool)

(declare-fun tp!170397 () Bool)

(declare-fun inv!6452 (Conc!1655) Bool)

(assert (=> b!533981 (= e!321737 (and (inv!6452 (c!101753 (dynLambda!3078 (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) (value!31601 (_1!3381 (v!16094 lt!219902)))))) tp!170397))))

(declare-fun result!52866 () Bool)

(declare-fun inv!6453 (BalanceConc!3318) Bool)

(assert (=> tb!47391 (= result!52866 (and (inv!6453 (dynLambda!3078 (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) (value!31601 (_1!3381 (v!16094 lt!219902))))) e!321737))))

(assert (= tb!47391 b!533981))

(declare-fun m!779521 () Bool)

(assert (=> b!533981 m!779521))

(declare-fun m!779523 () Bool)

(assert (=> tb!47391 m!779523))

(assert (=> d!189067 t!73972))

(declare-fun b_and!52203 () Bool)

(assert (= b_and!52189 (and (=> t!73972 result!52866) b_and!52203)))

(declare-fun tb!47393 () Bool)

(declare-fun t!73974 () Bool)

(assert (=> (and b!533850 (= (toChars!1644 (transformation!938 (h!10537 rules!3103))) (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))) t!73974) tb!47393))

(declare-fun result!52870 () Bool)

(assert (= result!52870 result!52866))

(assert (=> d!189067 t!73974))

(declare-fun b_and!52205 () Bool)

(assert (= b_and!52193 (and (=> t!73974 result!52870) b_and!52205)))

(declare-fun m!779525 () Bool)

(assert (=> d!189067 m!779525))

(declare-fun m!779527 () Bool)

(assert (=> d!189067 m!779527))

(assert (=> b!533845 d!189067))

(declare-fun d!189069 () Bool)

(declare-fun e!321741 () Bool)

(assert (=> d!189069 e!321741))

(declare-fun res!225686 () Bool)

(assert (=> d!189069 (=> (not res!225686) (not e!321741))))

(declare-fun semiInverseModEq!372 (Int Int) Bool)

(assert (=> d!189069 (= res!225686 (semiInverseModEq!372 (toChars!1644 (transformation!938 (rule!1640 token!491))) (toValue!1785 (transformation!938 (rule!1640 token!491)))))))

(declare-fun Unit!8967 () Unit!8958)

(assert (=> d!189069 (= (lemmaInv!86 (transformation!938 (rule!1640 token!491))) Unit!8967)))

(declare-fun b!533986 () Bool)

(declare-fun equivClasses!355 (Int Int) Bool)

(assert (=> b!533986 (= e!321741 (equivClasses!355 (toChars!1644 (transformation!938 (rule!1640 token!491))) (toValue!1785 (transformation!938 (rule!1640 token!491)))))))

(assert (= (and d!189069 res!225686) b!533986))

(declare-fun m!779531 () Bool)

(assert (=> d!189069 m!779531))

(declare-fun m!779533 () Bool)

(assert (=> b!533986 m!779533))

(assert (=> b!533845 d!189069))

(declare-fun d!189073 () Bool)

(assert (=> d!189073 (isPrefix!580 lt!219897 (++!1426 lt!219897 (_2!3381 (v!16094 lt!219902))))))

(declare-fun lt!220001 () Unit!8958)

(declare-fun choose!3754 (List!5145 List!5145) Unit!8958)

(assert (=> d!189073 (= lt!220001 (choose!3754 lt!219897 (_2!3381 (v!16094 lt!219902))))))

(assert (=> d!189073 (= (lemmaConcatTwoListThenFirstIsPrefix!431 lt!219897 (_2!3381 (v!16094 lt!219902))) lt!220001)))

(declare-fun bs!67249 () Bool)

(assert (= bs!67249 d!189073))

(assert (=> bs!67249 m!779327))

(assert (=> bs!67249 m!779327))

(assert (=> bs!67249 m!779357))

(declare-fun m!779535 () Bool)

(assert (=> bs!67249 m!779535))

(assert (=> b!533845 d!189073))

(declare-fun d!189075 () Bool)

(assert (=> d!189075 (isPrefix!580 lt!219888 (++!1426 lt!219888 suffix!1342))))

(declare-fun lt!220002 () Unit!8958)

(assert (=> d!189075 (= lt!220002 (choose!3754 lt!219888 suffix!1342))))

(assert (=> d!189075 (= (lemmaConcatTwoListThenFirstIsPrefix!431 lt!219888 suffix!1342) lt!220002)))

(declare-fun bs!67250 () Bool)

(assert (= bs!67250 d!189075))

(assert (=> bs!67250 m!779307))

(assert (=> bs!67250 m!779307))

(declare-fun m!779537 () Bool)

(assert (=> bs!67250 m!779537))

(declare-fun m!779539 () Bool)

(assert (=> bs!67250 m!779539))

(assert (=> b!533845 d!189075))

(declare-fun b!533990 () Bool)

(declare-fun res!225689 () Bool)

(declare-fun e!321745 () Bool)

(assert (=> b!533990 (=> (not res!225689) (not e!321745))))

(assert (=> b!533990 (= res!225689 (= (head!1171 input!2705) (head!1171 lt!219895)))))

(declare-fun b!533991 () Bool)

(assert (=> b!533991 (= e!321745 (isPrefix!580 (tail!700 input!2705) (tail!700 lt!219895)))))

(declare-fun d!189077 () Bool)

(declare-fun e!321744 () Bool)

(assert (=> d!189077 e!321744))

(declare-fun res!225692 () Bool)

(assert (=> d!189077 (=> res!225692 e!321744)))

(declare-fun lt!220003 () Bool)

(assert (=> d!189077 (= res!225692 (not lt!220003))))

(declare-fun e!321746 () Bool)

(assert (=> d!189077 (= lt!220003 e!321746)))

(declare-fun res!225690 () Bool)

(assert (=> d!189077 (=> res!225690 e!321746)))

(assert (=> d!189077 (= res!225690 (is-Nil!5135 input!2705))))

(assert (=> d!189077 (= (isPrefix!580 input!2705 lt!219895) lt!220003)))

(declare-fun b!533989 () Bool)

(assert (=> b!533989 (= e!321746 e!321745)))

(declare-fun res!225691 () Bool)

(assert (=> b!533989 (=> (not res!225691) (not e!321745))))

(assert (=> b!533989 (= res!225691 (not (is-Nil!5135 lt!219895)))))

(declare-fun b!533992 () Bool)

(assert (=> b!533992 (= e!321744 (>= (size!4147 lt!219895) (size!4147 input!2705)))))

(assert (= (and d!189077 (not res!225690)) b!533989))

(assert (= (and b!533989 res!225691) b!533990))

(assert (= (and b!533990 res!225689) b!533991))

(assert (= (and d!189077 (not res!225692)) b!533992))

(assert (=> b!533990 m!779497))

(declare-fun m!779541 () Bool)

(assert (=> b!533990 m!779541))

(assert (=> b!533991 m!779499))

(declare-fun m!779543 () Bool)

(assert (=> b!533991 m!779543))

(assert (=> b!533991 m!779499))

(assert (=> b!533991 m!779543))

(declare-fun m!779545 () Bool)

(assert (=> b!533991 m!779545))

(declare-fun m!779547 () Bool)

(assert (=> b!533992 m!779547))

(assert (=> b!533992 m!779503))

(assert (=> b!533845 d!189077))

(declare-fun d!189079 () Bool)

(assert (=> d!189079 (= (size!4146 (_1!3381 (v!16094 lt!219902))) (size!4147 (originalCharacters!977 (_1!3381 (v!16094 lt!219902)))))))

(declare-fun Unit!8968 () Unit!8958)

(assert (=> d!189079 (= (lemmaCharactersSize!17 (_1!3381 (v!16094 lt!219902))) Unit!8968)))

(declare-fun bs!67251 () Bool)

(assert (= bs!67251 d!189079))

(assert (=> bs!67251 m!779367))

(assert (=> b!533845 d!189079))

(declare-fun d!189081 () Bool)

(assert (=> d!189081 (ruleValid!158 thiss!22590 (rule!1640 token!491))))

(declare-fun lt!220006 () Unit!8958)

(declare-fun choose!3755 (LexerInterface!824 Rule!1676 List!5146) Unit!8958)

(assert (=> d!189081 (= lt!220006 (choose!3755 thiss!22590 (rule!1640 token!491) rules!3103))))

(declare-fun contains!1196 (List!5146 Rule!1676) Bool)

(assert (=> d!189081 (contains!1196 rules!3103 (rule!1640 token!491))))

(assert (=> d!189081 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!17 thiss!22590 (rule!1640 token!491) rules!3103) lt!220006)))

(declare-fun bs!67252 () Bool)

(assert (= bs!67252 d!189081))

(assert (=> bs!67252 m!779309))

(declare-fun m!779553 () Bool)

(assert (=> bs!67252 m!779553))

(declare-fun m!779555 () Bool)

(assert (=> bs!67252 m!779555))

(assert (=> b!533845 d!189081))

(declare-fun d!189087 () Bool)

(assert (=> d!189087 (isPrefix!580 input!2705 (++!1426 input!2705 suffix!1342))))

(declare-fun lt!220007 () Unit!8958)

(assert (=> d!189087 (= lt!220007 (choose!3754 input!2705 suffix!1342))))

(assert (=> d!189087 (= (lemmaConcatTwoListThenFirstIsPrefix!431 input!2705 suffix!1342) lt!220007)))

(declare-fun bs!67253 () Bool)

(assert (= bs!67253 d!189087))

(assert (=> bs!67253 m!779375))

(assert (=> bs!67253 m!779375))

(declare-fun m!779557 () Bool)

(assert (=> bs!67253 m!779557))

(declare-fun m!779559 () Bool)

(assert (=> bs!67253 m!779559))

(assert (=> b!533845 d!189087))

(declare-fun b!533995 () Bool)

(declare-fun res!225694 () Bool)

(declare-fun e!321749 () Bool)

(assert (=> b!533995 (=> (not res!225694) (not e!321749))))

(assert (=> b!533995 (= res!225694 (= (head!1171 input!2705) (head!1171 lt!219898)))))

(declare-fun b!533996 () Bool)

(assert (=> b!533996 (= e!321749 (isPrefix!580 (tail!700 input!2705) (tail!700 lt!219898)))))

(declare-fun d!189089 () Bool)

(declare-fun e!321748 () Bool)

(assert (=> d!189089 e!321748))

(declare-fun res!225697 () Bool)

(assert (=> d!189089 (=> res!225697 e!321748)))

(declare-fun lt!220008 () Bool)

(assert (=> d!189089 (= res!225697 (not lt!220008))))

(declare-fun e!321750 () Bool)

(assert (=> d!189089 (= lt!220008 e!321750)))

(declare-fun res!225695 () Bool)

(assert (=> d!189089 (=> res!225695 e!321750)))

(assert (=> d!189089 (= res!225695 (is-Nil!5135 input!2705))))

(assert (=> d!189089 (= (isPrefix!580 input!2705 lt!219898) lt!220008)))

(declare-fun b!533994 () Bool)

(assert (=> b!533994 (= e!321750 e!321749)))

(declare-fun res!225696 () Bool)

(assert (=> b!533994 (=> (not res!225696) (not e!321749))))

(assert (=> b!533994 (= res!225696 (not (is-Nil!5135 lt!219898)))))

(declare-fun b!533997 () Bool)

(assert (=> b!533997 (= e!321748 (>= (size!4147 lt!219898) (size!4147 input!2705)))))

(assert (= (and d!189089 (not res!225695)) b!533994))

(assert (= (and b!533994 res!225696) b!533995))

(assert (= (and b!533995 res!225694) b!533996))

(assert (= (and d!189089 (not res!225697)) b!533997))

(assert (=> b!533995 m!779497))

(declare-fun m!779561 () Bool)

(assert (=> b!533995 m!779561))

(assert (=> b!533996 m!779499))

(declare-fun m!779563 () Bool)

(assert (=> b!533996 m!779563))

(assert (=> b!533996 m!779499))

(assert (=> b!533996 m!779563))

(declare-fun m!779565 () Bool)

(assert (=> b!533996 m!779565))

(assert (=> b!533997 m!779295))

(assert (=> b!533997 m!779503))

(assert (=> b!533845 d!189089))

(declare-fun d!189091 () Bool)

(declare-fun lt!220011 () List!5145)

(assert (=> d!189091 (= (++!1426 lt!219897 lt!220011) input!2705)))

(declare-fun e!321755 () List!5145)

(assert (=> d!189091 (= lt!220011 e!321755)))

(declare-fun c!101771 () Bool)

(assert (=> d!189091 (= c!101771 (is-Cons!5135 lt!219897))))

(assert (=> d!189091 (>= (size!4147 input!2705) (size!4147 lt!219897))))

(assert (=> d!189091 (= (getSuffix!103 input!2705 lt!219897) lt!220011)))

(declare-fun b!534004 () Bool)

(assert (=> b!534004 (= e!321755 (getSuffix!103 (tail!700 input!2705) (t!73966 lt!219897)))))

(declare-fun b!534005 () Bool)

(assert (=> b!534005 (= e!321755 input!2705)))

(assert (= (and d!189091 c!101771) b!534004))

(assert (= (and d!189091 (not c!101771)) b!534005))

(declare-fun m!779567 () Bool)

(assert (=> d!189091 m!779567))

(assert (=> d!189091 m!779503))

(assert (=> d!189091 m!779333))

(assert (=> b!534004 m!779499))

(assert (=> b!534004 m!779499))

(declare-fun m!779569 () Bool)

(assert (=> b!534004 m!779569))

(assert (=> b!533845 d!189091))

(declare-fun d!189093 () Bool)

(declare-fun lt!220012 () Int)

(assert (=> d!189093 (>= lt!220012 0)))

(declare-fun e!321756 () Int)

(assert (=> d!189093 (= lt!220012 e!321756)))

(declare-fun c!101772 () Bool)

(assert (=> d!189093 (= c!101772 (is-Nil!5135 lt!219897))))

(assert (=> d!189093 (= (size!4147 lt!219897) lt!220012)))

(declare-fun b!534006 () Bool)

(assert (=> b!534006 (= e!321756 0)))

(declare-fun b!534007 () Bool)

(assert (=> b!534007 (= e!321756 (+ 1 (size!4147 (t!73966 lt!219897))))))

(assert (= (and d!189093 c!101772) b!534006))

(assert (= (and d!189093 (not c!101772)) b!534007))

(declare-fun m!779571 () Bool)

(assert (=> b!534007 m!779571))

(assert (=> b!533845 d!189093))

(declare-fun d!189095 () Bool)

(assert (=> d!189095 (isPrefix!580 input!2705 input!2705)))

(declare-fun lt!220015 () Unit!8958)

(declare-fun choose!3756 (List!5145 List!5145) Unit!8958)

(assert (=> d!189095 (= lt!220015 (choose!3756 input!2705 input!2705))))

(assert (=> d!189095 (= (lemmaIsPrefixRefl!320 input!2705 input!2705) lt!220015)))

(declare-fun bs!67254 () Bool)

(assert (= bs!67254 d!189095))

(assert (=> bs!67254 m!779361))

(declare-fun m!779573 () Bool)

(assert (=> bs!67254 m!779573))

(assert (=> b!533845 d!189095))

(declare-fun d!189097 () Bool)

(declare-fun fromListB!508 (List!5145) BalanceConc!3318)

(assert (=> d!189097 (= (seqFromList!1136 lt!219897) (fromListB!508 lt!219897))))

(declare-fun bs!67256 () Bool)

(assert (= bs!67256 d!189097))

(declare-fun m!779581 () Bool)

(assert (=> bs!67256 m!779581))

(assert (=> b!533845 d!189097))

(declare-fun b!534010 () Bool)

(declare-fun res!225701 () Bool)

(declare-fun e!321759 () Bool)

(assert (=> b!534010 (=> (not res!225701) (not e!321759))))

(assert (=> b!534010 (= res!225701 (= (head!1171 lt!219888) (head!1171 lt!219895)))))

(declare-fun b!534011 () Bool)

(assert (=> b!534011 (= e!321759 (isPrefix!580 (tail!700 lt!219888) (tail!700 lt!219895)))))

(declare-fun d!189103 () Bool)

(declare-fun e!321758 () Bool)

(assert (=> d!189103 e!321758))

(declare-fun res!225704 () Bool)

(assert (=> d!189103 (=> res!225704 e!321758)))

(declare-fun lt!220016 () Bool)

(assert (=> d!189103 (= res!225704 (not lt!220016))))

(declare-fun e!321760 () Bool)

(assert (=> d!189103 (= lt!220016 e!321760)))

(declare-fun res!225702 () Bool)

(assert (=> d!189103 (=> res!225702 e!321760)))

(assert (=> d!189103 (= res!225702 (is-Nil!5135 lt!219888))))

(assert (=> d!189103 (= (isPrefix!580 lt!219888 lt!219895) lt!220016)))

(declare-fun b!534009 () Bool)

(assert (=> b!534009 (= e!321760 e!321759)))

(declare-fun res!225703 () Bool)

(assert (=> b!534009 (=> (not res!225703) (not e!321759))))

(assert (=> b!534009 (= res!225703 (not (is-Nil!5135 lt!219895)))))

(declare-fun b!534012 () Bool)

(assert (=> b!534012 (= e!321758 (>= (size!4147 lt!219895) (size!4147 lt!219888)))))

(assert (= (and d!189103 (not res!225702)) b!534009))

(assert (= (and b!534009 res!225703) b!534010))

(assert (= (and b!534010 res!225701) b!534011))

(assert (= (and d!189103 (not res!225704)) b!534012))

(declare-fun m!779583 () Bool)

(assert (=> b!534010 m!779583))

(assert (=> b!534010 m!779541))

(declare-fun m!779585 () Bool)

(assert (=> b!534011 m!779585))

(assert (=> b!534011 m!779543))

(assert (=> b!534011 m!779585))

(assert (=> b!534011 m!779543))

(declare-fun m!779587 () Bool)

(assert (=> b!534011 m!779587))

(assert (=> b!534012 m!779547))

(assert (=> b!534012 m!779335))

(assert (=> b!533845 d!189103))

(declare-fun d!189105 () Bool)

(declare-fun e!321761 () Bool)

(assert (=> d!189105 e!321761))

(declare-fun res!225705 () Bool)

(assert (=> d!189105 (=> (not res!225705) (not e!321761))))

(assert (=> d!189105 (= res!225705 (semiInverseModEq!372 (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) (toValue!1785 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))))))

(declare-fun Unit!8969 () Unit!8958)

(assert (=> d!189105 (= (lemmaInv!86 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) Unit!8969)))

(declare-fun b!534013 () Bool)

(assert (=> b!534013 (= e!321761 (equivClasses!355 (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) (toValue!1785 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))))))

(assert (= (and d!189105 res!225705) b!534013))

(declare-fun m!779589 () Bool)

(assert (=> d!189105 m!779589))

(declare-fun m!779591 () Bool)

(assert (=> b!534013 m!779591))

(assert (=> b!533845 d!189105))

(declare-fun d!189107 () Bool)

(assert (=> d!189107 (= (size!4146 token!491) (size!4147 (originalCharacters!977 token!491)))))

(declare-fun Unit!8970 () Unit!8958)

(assert (=> d!189107 (= (lemmaCharactersSize!17 token!491) Unit!8970)))

(declare-fun bs!67257 () Bool)

(assert (= bs!67257 d!189107))

(declare-fun m!779593 () Bool)

(assert (=> bs!67257 m!779593))

(assert (=> b!533845 d!189107))

(declare-fun d!189109 () Bool)

(assert (=> d!189109 (ruleValid!158 thiss!22590 (rule!1640 (_1!3381 (v!16094 lt!219902))))))

(declare-fun lt!220017 () Unit!8958)

(assert (=> d!189109 (= lt!220017 (choose!3755 thiss!22590 (rule!1640 (_1!3381 (v!16094 lt!219902))) rules!3103))))

(assert (=> d!189109 (contains!1196 rules!3103 (rule!1640 (_1!3381 (v!16094 lt!219902))))))

(assert (=> d!189109 (= (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!17 thiss!22590 (rule!1640 (_1!3381 (v!16094 lt!219902))) rules!3103) lt!220017)))

(declare-fun bs!67258 () Bool)

(assert (= bs!67258 d!189109))

(assert (=> bs!67258 m!779325))

(declare-fun m!779595 () Bool)

(assert (=> bs!67258 m!779595))

(declare-fun m!779597 () Bool)

(assert (=> bs!67258 m!779597))

(assert (=> b!533845 d!189109))

(declare-fun d!189111 () Bool)

(declare-fun dynLambda!3079 (Int BalanceConc!3318) TokenValue!962)

(assert (=> d!189111 (= (apply!1213 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))) (seqFromList!1136 lt!219897)) (dynLambda!3079 (toValue!1785 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) (seqFromList!1136 lt!219897)))))

(declare-fun b_lambda!20625 () Bool)

(assert (=> (not b_lambda!20625) (not d!189111)))

(declare-fun t!73976 () Bool)

(declare-fun tb!47395 () Bool)

(assert (=> (and b!533853 (= (toValue!1785 (transformation!938 (rule!1640 token!491))) (toValue!1785 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))) t!73976) tb!47395))

(declare-fun result!52872 () Bool)

(assert (=> tb!47395 (= result!52872 (inv!21 (dynLambda!3079 (toValue!1785 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902))))) (seqFromList!1136 lt!219897))))))

(declare-fun m!779599 () Bool)

(assert (=> tb!47395 m!779599))

(assert (=> d!189111 t!73976))

(declare-fun b_and!52207 () Bool)

(assert (= b_and!52187 (and (=> t!73976 result!52872) b_and!52207)))

(declare-fun t!73978 () Bool)

(declare-fun tb!47397 () Bool)

(assert (=> (and b!533850 (= (toValue!1785 (transformation!938 (h!10537 rules!3103))) (toValue!1785 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))) t!73978) tb!47397))

(declare-fun result!52876 () Bool)

(assert (= result!52876 result!52872))

(assert (=> d!189111 t!73978))

(declare-fun b_and!52209 () Bool)

(assert (= b_and!52191 (and (=> t!73978 result!52876) b_and!52209)))

(assert (=> d!189111 m!779313))

(declare-fun m!779601 () Bool)

(assert (=> d!189111 m!779601))

(assert (=> b!533845 d!189111))

(declare-fun d!189113 () Bool)

(declare-fun list!2138 (Conc!1655) List!5145)

(assert (=> d!189113 (= (list!2136 (charsOf!567 (_1!3381 (v!16094 lt!219902)))) (list!2138 (c!101753 (charsOf!567 (_1!3381 (v!16094 lt!219902))))))))

(declare-fun bs!67259 () Bool)

(assert (= bs!67259 d!189113))

(declare-fun m!779603 () Bool)

(assert (=> bs!67259 m!779603))

(assert (=> b!533845 d!189113))

(declare-fun d!189115 () Bool)

(assert (=> d!189115 (and (= lt!219888 input!2705) (= suffix!1342 suffix!1342))))

(declare-fun lt!220020 () Unit!8958)

(declare-fun choose!3757 (List!5145 List!5145 List!5145 List!5145) Unit!8958)

(assert (=> d!189115 (= lt!220020 (choose!3757 lt!219888 suffix!1342 input!2705 suffix!1342))))

(assert (=> d!189115 (= (++!1426 lt!219888 suffix!1342) (++!1426 input!2705 suffix!1342))))

(assert (=> d!189115 (= (lemmaConcatSameAndSameSizesThenSameLists!23 lt!219888 suffix!1342 input!2705 suffix!1342) lt!220020)))

(declare-fun bs!67260 () Bool)

(assert (= bs!67260 d!189115))

(declare-fun m!779605 () Bool)

(assert (=> bs!67260 m!779605))

(assert (=> bs!67260 m!779307))

(assert (=> bs!67260 m!779375))

(assert (=> b!533845 d!189115))

(declare-fun d!189117 () Bool)

(declare-fun res!225710 () Bool)

(declare-fun e!321767 () Bool)

(assert (=> d!189117 (=> (not res!225710) (not e!321767))))

(assert (=> d!189117 (= res!225710 (not (isEmpty!3715 (originalCharacters!977 token!491))))))

(assert (=> d!189117 (= (inv!6449 token!491) e!321767)))

(declare-fun b!534020 () Bool)

(declare-fun res!225711 () Bool)

(assert (=> b!534020 (=> (not res!225711) (not e!321767))))

(assert (=> b!534020 (= res!225711 (= (originalCharacters!977 token!491) (list!2136 (dynLambda!3078 (toChars!1644 (transformation!938 (rule!1640 token!491))) (value!31601 token!491)))))))

(declare-fun b!534021 () Bool)

(assert (=> b!534021 (= e!321767 (= (size!4146 token!491) (size!4147 (originalCharacters!977 token!491))))))

(assert (= (and d!189117 res!225710) b!534020))

(assert (= (and b!534020 res!225711) b!534021))

(declare-fun b_lambda!20627 () Bool)

(assert (=> (not b_lambda!20627) (not b!534020)))

(declare-fun t!73980 () Bool)

(declare-fun tb!47399 () Bool)

(assert (=> (and b!533853 (= (toChars!1644 (transformation!938 (rule!1640 token!491))) (toChars!1644 (transformation!938 (rule!1640 token!491)))) t!73980) tb!47399))

(declare-fun b!534022 () Bool)

(declare-fun e!321768 () Bool)

(declare-fun tp!170398 () Bool)

(assert (=> b!534022 (= e!321768 (and (inv!6452 (c!101753 (dynLambda!3078 (toChars!1644 (transformation!938 (rule!1640 token!491))) (value!31601 token!491)))) tp!170398))))

(declare-fun result!52878 () Bool)

(assert (=> tb!47399 (= result!52878 (and (inv!6453 (dynLambda!3078 (toChars!1644 (transformation!938 (rule!1640 token!491))) (value!31601 token!491))) e!321768))))

(assert (= tb!47399 b!534022))

(declare-fun m!779607 () Bool)

(assert (=> b!534022 m!779607))

(declare-fun m!779609 () Bool)

(assert (=> tb!47399 m!779609))

(assert (=> b!534020 t!73980))

(declare-fun b_and!52211 () Bool)

(assert (= b_and!52203 (and (=> t!73980 result!52878) b_and!52211)))

(declare-fun tb!47401 () Bool)

(declare-fun t!73982 () Bool)

(assert (=> (and b!533850 (= (toChars!1644 (transformation!938 (h!10537 rules!3103))) (toChars!1644 (transformation!938 (rule!1640 token!491)))) t!73982) tb!47401))

(declare-fun result!52880 () Bool)

(assert (= result!52880 result!52878))

(assert (=> b!534020 t!73982))

(declare-fun b_and!52213 () Bool)

(assert (= b_and!52205 (and (=> t!73982 result!52880) b_and!52213)))

(declare-fun m!779611 () Bool)

(assert (=> d!189117 m!779611))

(declare-fun m!779613 () Bool)

(assert (=> b!534020 m!779613))

(assert (=> b!534020 m!779613))

(declare-fun m!779615 () Bool)

(assert (=> b!534020 m!779615))

(assert (=> b!534021 m!779593))

(assert (=> start!49162 d!189117))

(declare-fun b!534034 () Bool)

(declare-fun e!321777 () Bool)

(declare-fun inv!15 (TokenValue!962) Bool)

(assert (=> b!534034 (= e!321777 (inv!15 (value!31601 token!491)))))

(declare-fun b!534035 () Bool)

(declare-fun e!321775 () Bool)

(declare-fun inv!16 (TokenValue!962) Bool)

(assert (=> b!534035 (= e!321775 (inv!16 (value!31601 token!491)))))

(declare-fun b!534036 () Bool)

(declare-fun e!321776 () Bool)

(declare-fun inv!17 (TokenValue!962) Bool)

(assert (=> b!534036 (= e!321776 (inv!17 (value!31601 token!491)))))

(declare-fun b!534037 () Bool)

(assert (=> b!534037 (= e!321775 e!321776)))

(declare-fun c!101777 () Bool)

(assert (=> b!534037 (= c!101777 (is-IntegerValue!2887 (value!31601 token!491)))))

(declare-fun d!189119 () Bool)

(declare-fun c!101778 () Bool)

(assert (=> d!189119 (= c!101778 (is-IntegerValue!2886 (value!31601 token!491)))))

(assert (=> d!189119 (= (inv!21 (value!31601 token!491)) e!321775)))

(declare-fun b!534033 () Bool)

(declare-fun res!225714 () Bool)

(assert (=> b!534033 (=> res!225714 e!321777)))

(assert (=> b!534033 (= res!225714 (not (is-IntegerValue!2888 (value!31601 token!491))))))

(assert (=> b!534033 (= e!321776 e!321777)))

(assert (= (and d!189119 c!101778) b!534035))

(assert (= (and d!189119 (not c!101778)) b!534037))

(assert (= (and b!534037 c!101777) b!534036))

(assert (= (and b!534037 (not c!101777)) b!534033))

(assert (= (and b!534033 (not res!225714)) b!534034))

(declare-fun m!779617 () Bool)

(assert (=> b!534034 m!779617))

(declare-fun m!779619 () Bool)

(assert (=> b!534035 m!779619))

(declare-fun m!779621 () Bool)

(assert (=> b!534036 m!779621))

(assert (=> b!533855 d!189119))

(declare-fun d!189121 () Bool)

(declare-fun isEmpty!3718 (Option!1288) Bool)

(assert (=> d!189121 (= (isDefined!1100 lt!219903) (not (isEmpty!3718 lt!219903)))))

(declare-fun bs!67261 () Bool)

(assert (= bs!67261 d!189121))

(declare-fun m!779623 () Bool)

(assert (=> bs!67261 m!779623))

(assert (=> b!533844 d!189121))

(declare-fun b!534056 () Bool)

(declare-fun res!225735 () Bool)

(declare-fun e!321784 () Bool)

(assert (=> b!534056 (=> (not res!225735) (not e!321784))))

(declare-fun lt!220033 () Option!1288)

(assert (=> b!534056 (= res!225735 (< (size!4147 (_2!3381 (get!1922 lt!220033))) (size!4147 lt!219898)))))

(declare-fun b!534057 () Bool)

(declare-fun res!225733 () Bool)

(assert (=> b!534057 (=> (not res!225733) (not e!321784))))

(assert (=> b!534057 (= res!225733 (= (++!1426 (list!2136 (charsOf!567 (_1!3381 (get!1922 lt!220033)))) (_2!3381 (get!1922 lt!220033))) lt!219898))))

(declare-fun b!534059 () Bool)

(declare-fun res!225730 () Bool)

(assert (=> b!534059 (=> (not res!225730) (not e!321784))))

(declare-fun matchR!445 (Regex!1272 List!5145) Bool)

(assert (=> b!534059 (= res!225730 (matchR!445 (regex!938 (rule!1640 (_1!3381 (get!1922 lt!220033)))) (list!2136 (charsOf!567 (_1!3381 (get!1922 lt!220033))))))))

(declare-fun bm!38185 () Bool)

(declare-fun call!38190 () Option!1288)

(declare-fun maxPrefixOneRule!245 (LexerInterface!824 Rule!1676 List!5145) Option!1288)

(assert (=> bm!38185 (= call!38190 (maxPrefixOneRule!245 thiss!22590 (h!10537 rules!3103) lt!219898))))

(declare-fun b!534060 () Bool)

(declare-fun res!225731 () Bool)

(assert (=> b!534060 (=> (not res!225731) (not e!321784))))

(assert (=> b!534060 (= res!225731 (= (list!2136 (charsOf!567 (_1!3381 (get!1922 lt!220033)))) (originalCharacters!977 (_1!3381 (get!1922 lt!220033)))))))

(declare-fun b!534061 () Bool)

(assert (=> b!534061 (= e!321784 (contains!1196 rules!3103 (rule!1640 (_1!3381 (get!1922 lt!220033)))))))

(declare-fun b!534062 () Bool)

(declare-fun e!321785 () Option!1288)

(declare-fun lt!220032 () Option!1288)

(declare-fun lt!220034 () Option!1288)

(assert (=> b!534062 (= e!321785 (ite (and (is-None!1287 lt!220032) (is-None!1287 lt!220034)) None!1287 (ite (is-None!1287 lt!220034) lt!220032 (ite (is-None!1287 lt!220032) lt!220034 (ite (>= (size!4146 (_1!3381 (v!16094 lt!220032))) (size!4146 (_1!3381 (v!16094 lt!220034)))) lt!220032 lt!220034)))))))

(assert (=> b!534062 (= lt!220032 call!38190)))

(assert (=> b!534062 (= lt!220034 (maxPrefix!522 thiss!22590 (t!73967 rules!3103) lt!219898))))

(declare-fun b!534063 () Bool)

(assert (=> b!534063 (= e!321785 call!38190)))

(declare-fun b!534064 () Bool)

(declare-fun res!225734 () Bool)

(assert (=> b!534064 (=> (not res!225734) (not e!321784))))

(assert (=> b!534064 (= res!225734 (= (value!31601 (_1!3381 (get!1922 lt!220033))) (apply!1213 (transformation!938 (rule!1640 (_1!3381 (get!1922 lt!220033)))) (seqFromList!1136 (originalCharacters!977 (_1!3381 (get!1922 lt!220033)))))))))

(declare-fun d!189123 () Bool)

(declare-fun e!321786 () Bool)

(assert (=> d!189123 e!321786))

(declare-fun res!225732 () Bool)

(assert (=> d!189123 (=> res!225732 e!321786)))

(assert (=> d!189123 (= res!225732 (isEmpty!3718 lt!220033))))

(assert (=> d!189123 (= lt!220033 e!321785)))

(declare-fun c!101781 () Bool)

(assert (=> d!189123 (= c!101781 (and (is-Cons!5136 rules!3103) (is-Nil!5136 (t!73967 rules!3103))))))

(declare-fun lt!220031 () Unit!8958)

(declare-fun lt!220035 () Unit!8958)

(assert (=> d!189123 (= lt!220031 lt!220035)))

(assert (=> d!189123 (isPrefix!580 lt!219898 lt!219898)))

(assert (=> d!189123 (= lt!220035 (lemmaIsPrefixRefl!320 lt!219898 lt!219898))))

(declare-fun rulesValidInductive!327 (LexerInterface!824 List!5146) Bool)

(assert (=> d!189123 (rulesValidInductive!327 thiss!22590 rules!3103)))

(assert (=> d!189123 (= (maxPrefix!522 thiss!22590 rules!3103 lt!219898) lt!220033)))

(declare-fun b!534058 () Bool)

(assert (=> b!534058 (= e!321786 e!321784)))

(declare-fun res!225729 () Bool)

(assert (=> b!534058 (=> (not res!225729) (not e!321784))))

(assert (=> b!534058 (= res!225729 (isDefined!1100 lt!220033))))

(assert (= (and d!189123 c!101781) b!534063))

(assert (= (and d!189123 (not c!101781)) b!534062))

(assert (= (or b!534063 b!534062) bm!38185))

(assert (= (and d!189123 (not res!225732)) b!534058))

(assert (= (and b!534058 res!225729) b!534060))

(assert (= (and b!534060 res!225731) b!534056))

(assert (= (and b!534056 res!225735) b!534057))

(assert (= (and b!534057 res!225733) b!534064))

(assert (= (and b!534064 res!225734) b!534059))

(assert (= (and b!534059 res!225730) b!534061))

(declare-fun m!779625 () Bool)

(assert (=> d!189123 m!779625))

(declare-fun m!779627 () Bool)

(assert (=> d!189123 m!779627))

(declare-fun m!779629 () Bool)

(assert (=> d!189123 m!779629))

(declare-fun m!779631 () Bool)

(assert (=> d!189123 m!779631))

(declare-fun m!779633 () Bool)

(assert (=> b!534064 m!779633))

(declare-fun m!779635 () Bool)

(assert (=> b!534064 m!779635))

(assert (=> b!534064 m!779635))

(declare-fun m!779637 () Bool)

(assert (=> b!534064 m!779637))

(assert (=> b!534059 m!779633))

(declare-fun m!779639 () Bool)

(assert (=> b!534059 m!779639))

(assert (=> b!534059 m!779639))

(declare-fun m!779641 () Bool)

(assert (=> b!534059 m!779641))

(assert (=> b!534059 m!779641))

(declare-fun m!779643 () Bool)

(assert (=> b!534059 m!779643))

(assert (=> b!534060 m!779633))

(assert (=> b!534060 m!779639))

(assert (=> b!534060 m!779639))

(assert (=> b!534060 m!779641))

(declare-fun m!779645 () Bool)

(assert (=> bm!38185 m!779645))

(declare-fun m!779647 () Bool)

(assert (=> b!534058 m!779647))

(assert (=> b!534061 m!779633))

(declare-fun m!779649 () Bool)

(assert (=> b!534061 m!779649))

(assert (=> b!534057 m!779633))

(assert (=> b!534057 m!779639))

(assert (=> b!534057 m!779639))

(assert (=> b!534057 m!779641))

(assert (=> b!534057 m!779641))

(declare-fun m!779651 () Bool)

(assert (=> b!534057 m!779651))

(assert (=> b!534056 m!779633))

(declare-fun m!779653 () Bool)

(assert (=> b!534056 m!779653))

(assert (=> b!534056 m!779295))

(declare-fun m!779655 () Bool)

(assert (=> b!534062 m!779655))

(assert (=> b!533844 d!189123))

(declare-fun b!534065 () Bool)

(declare-fun e!321788 () List!5145)

(assert (=> b!534065 (= e!321788 suffix!1342)))

(declare-fun b!534067 () Bool)

(declare-fun res!225737 () Bool)

(declare-fun e!321787 () Bool)

(assert (=> b!534067 (=> (not res!225737) (not e!321787))))

(declare-fun lt!220036 () List!5145)

(assert (=> b!534067 (= res!225737 (= (size!4147 lt!220036) (+ (size!4147 input!2705) (size!4147 suffix!1342))))))

(declare-fun d!189125 () Bool)

(assert (=> d!189125 e!321787))

(declare-fun res!225736 () Bool)

(assert (=> d!189125 (=> (not res!225736) (not e!321787))))

(assert (=> d!189125 (= res!225736 (= (content!907 lt!220036) (set.union (content!907 input!2705) (content!907 suffix!1342))))))

(assert (=> d!189125 (= lt!220036 e!321788)))

(declare-fun c!101782 () Bool)

(assert (=> d!189125 (= c!101782 (is-Nil!5135 input!2705))))

(assert (=> d!189125 (= (++!1426 input!2705 suffix!1342) lt!220036)))

(declare-fun b!534068 () Bool)

(assert (=> b!534068 (= e!321787 (or (not (= suffix!1342 Nil!5135)) (= lt!220036 input!2705)))))

(declare-fun b!534066 () Bool)

(assert (=> b!534066 (= e!321788 (Cons!5135 (h!10536 input!2705) (++!1426 (t!73966 input!2705) suffix!1342)))))

(assert (= (and d!189125 c!101782) b!534065))

(assert (= (and d!189125 (not c!101782)) b!534066))

(assert (= (and d!189125 res!225736) b!534067))

(assert (= (and b!534067 res!225737) b!534068))

(declare-fun m!779657 () Bool)

(assert (=> b!534067 m!779657))

(assert (=> b!534067 m!779503))

(declare-fun m!779659 () Bool)

(assert (=> b!534067 m!779659))

(declare-fun m!779661 () Bool)

(assert (=> d!189125 m!779661))

(declare-fun m!779663 () Bool)

(assert (=> d!189125 m!779663))

(declare-fun m!779665 () Bool)

(assert (=> d!189125 m!779665))

(declare-fun m!779667 () Bool)

(assert (=> b!534066 m!779667))

(assert (=> b!533844 d!189125))

(declare-fun d!189127 () Bool)

(assert (=> d!189127 (= (inv!6445 (tag!1200 (h!10537 rules!3103))) (= (mod (str.len (value!31575 (tag!1200 (h!10537 rules!3103)))) 2) 0))))

(assert (=> b!533854 d!189127))

(declare-fun d!189129 () Bool)

(declare-fun res!225740 () Bool)

(declare-fun e!321791 () Bool)

(assert (=> d!189129 (=> (not res!225740) (not e!321791))))

(assert (=> d!189129 (= res!225740 (semiInverseModEq!372 (toChars!1644 (transformation!938 (h!10537 rules!3103))) (toValue!1785 (transformation!938 (h!10537 rules!3103)))))))

(assert (=> d!189129 (= (inv!6448 (transformation!938 (h!10537 rules!3103))) e!321791)))

(declare-fun b!534071 () Bool)

(assert (=> b!534071 (= e!321791 (equivClasses!355 (toChars!1644 (transformation!938 (h!10537 rules!3103))) (toValue!1785 (transformation!938 (h!10537 rules!3103)))))))

(assert (= (and d!189129 res!225740) b!534071))

(declare-fun m!779669 () Bool)

(assert (=> d!189129 m!779669))

(declare-fun m!779671 () Bool)

(assert (=> b!534071 m!779671))

(assert (=> b!533854 d!189129))

(declare-fun d!189131 () Bool)

(assert (=> d!189131 (= (isEmpty!3715 input!2705) (is-Nil!5135 input!2705))))

(assert (=> b!533843 d!189131))

(declare-fun d!189133 () Bool)

(declare-fun lt!220037 () Int)

(assert (=> d!189133 (>= lt!220037 0)))

(declare-fun e!321792 () Int)

(assert (=> d!189133 (= lt!220037 e!321792)))

(declare-fun c!101783 () Bool)

(assert (=> d!189133 (= c!101783 (is-Nil!5135 (originalCharacters!977 (_1!3381 (v!16094 lt!219902)))))))

(assert (=> d!189133 (= (size!4147 (originalCharacters!977 (_1!3381 (v!16094 lt!219902)))) lt!220037)))

(declare-fun b!534072 () Bool)

(assert (=> b!534072 (= e!321792 0)))

(declare-fun b!534073 () Bool)

(assert (=> b!534073 (= e!321792 (+ 1 (size!4147 (t!73966 (originalCharacters!977 (_1!3381 (v!16094 lt!219902)))))))))

(assert (= (and d!189133 c!101783) b!534072))

(assert (= (and d!189133 (not c!101783)) b!534073))

(declare-fun m!779673 () Bool)

(assert (=> b!534073 m!779673))

(assert (=> b!533842 d!189133))

(declare-fun d!189135 () Bool)

(assert (=> d!189135 (= (isEmpty!3714 rules!3103) (is-Nil!5136 rules!3103))))

(assert (=> b!533841 d!189135))

(declare-fun d!189137 () Bool)

(assert (=> d!189137 (= (inv!6445 (tag!1200 (rule!1640 token!491))) (= (mod (str.len (value!31575 (tag!1200 (rule!1640 token!491)))) 2) 0))))

(assert (=> b!533861 d!189137))

(declare-fun d!189139 () Bool)

(declare-fun res!225741 () Bool)

(declare-fun e!321793 () Bool)

(assert (=> d!189139 (=> (not res!225741) (not e!321793))))

(assert (=> d!189139 (= res!225741 (semiInverseModEq!372 (toChars!1644 (transformation!938 (rule!1640 token!491))) (toValue!1785 (transformation!938 (rule!1640 token!491)))))))

(assert (=> d!189139 (= (inv!6448 (transformation!938 (rule!1640 token!491))) e!321793)))

(declare-fun b!534074 () Bool)

(assert (=> b!534074 (= e!321793 (equivClasses!355 (toChars!1644 (transformation!938 (rule!1640 token!491))) (toValue!1785 (transformation!938 (rule!1640 token!491)))))))

(assert (= (and d!189139 res!225741) b!534074))

(assert (=> d!189139 m!779531))

(assert (=> b!534074 m!779533))

(assert (=> b!533861 d!189139))

(declare-fun d!189141 () Bool)

(assert (=> d!189141 (= (list!2136 (charsOf!567 token!491)) (list!2138 (c!101753 (charsOf!567 token!491))))))

(declare-fun bs!67262 () Bool)

(assert (= bs!67262 d!189141))

(declare-fun m!779675 () Bool)

(assert (=> bs!67262 m!779675))

(assert (=> b!533849 d!189141))

(declare-fun d!189143 () Bool)

(declare-fun lt!220038 () BalanceConc!3318)

(assert (=> d!189143 (= (list!2136 lt!220038) (originalCharacters!977 token!491))))

(assert (=> d!189143 (= lt!220038 (dynLambda!3078 (toChars!1644 (transformation!938 (rule!1640 token!491))) (value!31601 token!491)))))

(assert (=> d!189143 (= (charsOf!567 token!491) lt!220038)))

(declare-fun b_lambda!20629 () Bool)

(assert (=> (not b_lambda!20629) (not d!189143)))

(assert (=> d!189143 t!73980))

(declare-fun b_and!52215 () Bool)

(assert (= b_and!52211 (and (=> t!73980 result!52878) b_and!52215)))

(assert (=> d!189143 t!73982))

(declare-fun b_and!52217 () Bool)

(assert (= b_and!52213 (and (=> t!73982 result!52880) b_and!52217)))

(declare-fun m!779677 () Bool)

(assert (=> d!189143 m!779677))

(assert (=> d!189143 m!779613))

(assert (=> b!533849 d!189143))

(declare-fun d!189145 () Bool)

(assert (=> d!189145 (= (get!1922 lt!219903) (v!16094 lt!219903))))

(assert (=> b!533859 d!189145))

(declare-fun b!534079 () Bool)

(declare-fun e!321797 () List!5145)

(assert (=> b!534079 (= e!321797 suffix!1342)))

(declare-fun b!534081 () Bool)

(declare-fun res!225743 () Bool)

(declare-fun e!321796 () Bool)

(assert (=> b!534081 (=> (not res!225743) (not e!321796))))

(declare-fun lt!220045 () List!5145)

(assert (=> b!534081 (= res!225743 (= (size!4147 lt!220045) (+ (size!4147 lt!219888) (size!4147 suffix!1342))))))

(declare-fun d!189147 () Bool)

(assert (=> d!189147 e!321796))

(declare-fun res!225742 () Bool)

(assert (=> d!189147 (=> (not res!225742) (not e!321796))))

(assert (=> d!189147 (= res!225742 (= (content!907 lt!220045) (set.union (content!907 lt!219888) (content!907 suffix!1342))))))

(assert (=> d!189147 (= lt!220045 e!321797)))

(declare-fun c!101786 () Bool)

(assert (=> d!189147 (= c!101786 (is-Nil!5135 lt!219888))))

(assert (=> d!189147 (= (++!1426 lt!219888 suffix!1342) lt!220045)))

(declare-fun b!534082 () Bool)

(assert (=> b!534082 (= e!321796 (or (not (= suffix!1342 Nil!5135)) (= lt!220045 lt!219888)))))

(declare-fun b!534080 () Bool)

(assert (=> b!534080 (= e!321797 (Cons!5135 (h!10536 lt!219888) (++!1426 (t!73966 lt!219888) suffix!1342)))))

(assert (= (and d!189147 c!101786) b!534079))

(assert (= (and d!189147 (not c!101786)) b!534080))

(assert (= (and d!189147 res!225742) b!534081))

(assert (= (and b!534081 res!225743) b!534082))

(declare-fun m!779679 () Bool)

(assert (=> b!534081 m!779679))

(assert (=> b!534081 m!779335))

(assert (=> b!534081 m!779659))

(declare-fun m!779681 () Bool)

(assert (=> d!189147 m!779681))

(declare-fun m!779683 () Bool)

(assert (=> d!189147 m!779683))

(assert (=> d!189147 m!779665))

(declare-fun m!779685 () Bool)

(assert (=> b!534080 m!779685))

(assert (=> b!533848 d!189147))

(declare-fun b!534083 () Bool)

(declare-fun res!225750 () Bool)

(declare-fun e!321798 () Bool)

(assert (=> b!534083 (=> (not res!225750) (not e!321798))))

(declare-fun lt!220052 () Option!1288)

(assert (=> b!534083 (= res!225750 (< (size!4147 (_2!3381 (get!1922 lt!220052))) (size!4147 input!2705)))))

(declare-fun b!534084 () Bool)

(declare-fun res!225748 () Bool)

(assert (=> b!534084 (=> (not res!225748) (not e!321798))))

(assert (=> b!534084 (= res!225748 (= (++!1426 (list!2136 (charsOf!567 (_1!3381 (get!1922 lt!220052)))) (_2!3381 (get!1922 lt!220052))) input!2705))))

(declare-fun b!534086 () Bool)

(declare-fun res!225745 () Bool)

(assert (=> b!534086 (=> (not res!225745) (not e!321798))))

(assert (=> b!534086 (= res!225745 (matchR!445 (regex!938 (rule!1640 (_1!3381 (get!1922 lt!220052)))) (list!2136 (charsOf!567 (_1!3381 (get!1922 lt!220052))))))))

(declare-fun bm!38186 () Bool)

(declare-fun call!38191 () Option!1288)

(assert (=> bm!38186 (= call!38191 (maxPrefixOneRule!245 thiss!22590 (h!10537 rules!3103) input!2705))))

(declare-fun b!534087 () Bool)

(declare-fun res!225746 () Bool)

(assert (=> b!534087 (=> (not res!225746) (not e!321798))))

(assert (=> b!534087 (= res!225746 (= (list!2136 (charsOf!567 (_1!3381 (get!1922 lt!220052)))) (originalCharacters!977 (_1!3381 (get!1922 lt!220052)))))))

(declare-fun b!534088 () Bool)

(assert (=> b!534088 (= e!321798 (contains!1196 rules!3103 (rule!1640 (_1!3381 (get!1922 lt!220052)))))))

(declare-fun b!534089 () Bool)

(declare-fun e!321799 () Option!1288)

(declare-fun lt!220051 () Option!1288)

(declare-fun lt!220053 () Option!1288)

(assert (=> b!534089 (= e!321799 (ite (and (is-None!1287 lt!220051) (is-None!1287 lt!220053)) None!1287 (ite (is-None!1287 lt!220053) lt!220051 (ite (is-None!1287 lt!220051) lt!220053 (ite (>= (size!4146 (_1!3381 (v!16094 lt!220051))) (size!4146 (_1!3381 (v!16094 lt!220053)))) lt!220051 lt!220053)))))))

(assert (=> b!534089 (= lt!220051 call!38191)))

(assert (=> b!534089 (= lt!220053 (maxPrefix!522 thiss!22590 (t!73967 rules!3103) input!2705))))

(declare-fun b!534090 () Bool)

(assert (=> b!534090 (= e!321799 call!38191)))

(declare-fun b!534091 () Bool)

(declare-fun res!225749 () Bool)

(assert (=> b!534091 (=> (not res!225749) (not e!321798))))

(assert (=> b!534091 (= res!225749 (= (value!31601 (_1!3381 (get!1922 lt!220052))) (apply!1213 (transformation!938 (rule!1640 (_1!3381 (get!1922 lt!220052)))) (seqFromList!1136 (originalCharacters!977 (_1!3381 (get!1922 lt!220052)))))))))

(declare-fun d!189149 () Bool)

(declare-fun e!321800 () Bool)

(assert (=> d!189149 e!321800))

(declare-fun res!225747 () Bool)

(assert (=> d!189149 (=> res!225747 e!321800)))

(assert (=> d!189149 (= res!225747 (isEmpty!3718 lt!220052))))

(assert (=> d!189149 (= lt!220052 e!321799)))

(declare-fun c!101787 () Bool)

(assert (=> d!189149 (= c!101787 (and (is-Cons!5136 rules!3103) (is-Nil!5136 (t!73967 rules!3103))))))

(declare-fun lt!220050 () Unit!8958)

(declare-fun lt!220054 () Unit!8958)

(assert (=> d!189149 (= lt!220050 lt!220054)))

(assert (=> d!189149 (isPrefix!580 input!2705 input!2705)))

(assert (=> d!189149 (= lt!220054 (lemmaIsPrefixRefl!320 input!2705 input!2705))))

(assert (=> d!189149 (rulesValidInductive!327 thiss!22590 rules!3103)))

(assert (=> d!189149 (= (maxPrefix!522 thiss!22590 rules!3103 input!2705) lt!220052)))

(declare-fun b!534085 () Bool)

(assert (=> b!534085 (= e!321800 e!321798)))

(declare-fun res!225744 () Bool)

(assert (=> b!534085 (=> (not res!225744) (not e!321798))))

(assert (=> b!534085 (= res!225744 (isDefined!1100 lt!220052))))

(assert (= (and d!189149 c!101787) b!534090))

(assert (= (and d!189149 (not c!101787)) b!534089))

(assert (= (or b!534090 b!534089) bm!38186))

(assert (= (and d!189149 (not res!225747)) b!534085))

(assert (= (and b!534085 res!225744) b!534087))

(assert (= (and b!534087 res!225746) b!534083))

(assert (= (and b!534083 res!225750) b!534084))

(assert (= (and b!534084 res!225748) b!534091))

(assert (= (and b!534091 res!225749) b!534086))

(assert (= (and b!534086 res!225745) b!534088))

(declare-fun m!779687 () Bool)

(assert (=> d!189149 m!779687))

(assert (=> d!189149 m!779361))

(assert (=> d!189149 m!779323))

(assert (=> d!189149 m!779631))

(declare-fun m!779689 () Bool)

(assert (=> b!534091 m!779689))

(declare-fun m!779691 () Bool)

(assert (=> b!534091 m!779691))

(assert (=> b!534091 m!779691))

(declare-fun m!779693 () Bool)

(assert (=> b!534091 m!779693))

(assert (=> b!534086 m!779689))

(declare-fun m!779695 () Bool)

(assert (=> b!534086 m!779695))

(assert (=> b!534086 m!779695))

(declare-fun m!779697 () Bool)

(assert (=> b!534086 m!779697))

(assert (=> b!534086 m!779697))

(declare-fun m!779699 () Bool)

(assert (=> b!534086 m!779699))

(assert (=> b!534087 m!779689))

(assert (=> b!534087 m!779695))

(assert (=> b!534087 m!779695))

(assert (=> b!534087 m!779697))

(declare-fun m!779701 () Bool)

(assert (=> bm!38186 m!779701))

(declare-fun m!779703 () Bool)

(assert (=> b!534085 m!779703))

(assert (=> b!534088 m!779689))

(declare-fun m!779705 () Bool)

(assert (=> b!534088 m!779705))

(assert (=> b!534084 m!779689))

(assert (=> b!534084 m!779695))

(assert (=> b!534084 m!779695))

(assert (=> b!534084 m!779697))

(assert (=> b!534084 m!779697))

(declare-fun m!779707 () Bool)

(assert (=> b!534084 m!779707))

(assert (=> b!534083 m!779689))

(declare-fun m!779709 () Bool)

(assert (=> b!534083 m!779709))

(assert (=> b!534083 m!779503))

(declare-fun m!779711 () Bool)

(assert (=> b!534089 m!779711))

(assert (=> b!533857 d!189149))

(declare-fun d!189151 () Bool)

(declare-fun lt!220055 () Int)

(assert (=> d!189151 (>= lt!220055 0)))

(declare-fun e!321805 () Int)

(assert (=> d!189151 (= lt!220055 e!321805)))

(declare-fun c!101788 () Bool)

(assert (=> d!189151 (= c!101788 (is-Nil!5135 lt!219898))))

(assert (=> d!189151 (= (size!4147 lt!219898) lt!220055)))

(declare-fun b!534104 () Bool)

(assert (=> b!534104 (= e!321805 0)))

(declare-fun b!534105 () Bool)

(assert (=> b!534105 (= e!321805 (+ 1 (size!4147 (t!73966 lt!219898))))))

(assert (= (and d!189151 c!101788) b!534104))

(assert (= (and d!189151 (not c!101788)) b!534105))

(declare-fun m!779713 () Bool)

(assert (=> b!534105 m!779713))

(assert (=> b!533846 d!189151))

(declare-fun b!534118 () Bool)

(declare-fun b_free!14521 () Bool)

(declare-fun b_next!14537 () Bool)

(assert (=> b!534118 (= b_free!14521 (not b_next!14537))))

(declare-fun tb!47403 () Bool)

(declare-fun t!73984 () Bool)

(assert (=> (and b!534118 (= (toValue!1785 (transformation!938 (h!10537 (t!73967 rules!3103)))) (toValue!1785 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))) t!73984) tb!47403))

(declare-fun result!52884 () Bool)

(assert (= result!52884 result!52872))

(assert (=> d!189111 t!73984))

(declare-fun tp!170410 () Bool)

(declare-fun b_and!52219 () Bool)

(assert (=> b!534118 (= tp!170410 (and (=> t!73984 result!52884) b_and!52219))))

(declare-fun b_free!14523 () Bool)

(declare-fun b_next!14539 () Bool)

(assert (=> b!534118 (= b_free!14523 (not b_next!14539))))

(declare-fun t!73986 () Bool)

(declare-fun tb!47405 () Bool)

(assert (=> (and b!534118 (= (toChars!1644 (transformation!938 (h!10537 (t!73967 rules!3103)))) (toChars!1644 (transformation!938 (rule!1640 (_1!3381 (v!16094 lt!219902)))))) t!73986) tb!47405))

(declare-fun result!52886 () Bool)

(assert (= result!52886 result!52866))

(assert (=> d!189067 t!73986))

(declare-fun t!73988 () Bool)

(declare-fun tb!47407 () Bool)

(assert (=> (and b!534118 (= (toChars!1644 (transformation!938 (h!10537 (t!73967 rules!3103)))) (toChars!1644 (transformation!938 (rule!1640 token!491)))) t!73988) tb!47407))

(declare-fun result!52888 () Bool)

(assert (= result!52888 result!52878))

(assert (=> b!534020 t!73988))

(assert (=> d!189143 t!73988))

(declare-fun b_and!52221 () Bool)

(declare-fun tp!170407 () Bool)

(assert (=> b!534118 (= tp!170407 (and (=> t!73986 result!52886) (=> t!73988 result!52888) b_and!52221))))

(declare-fun e!321815 () Bool)

(assert (=> b!534118 (= e!321815 (and tp!170410 tp!170407))))

(declare-fun b!534117 () Bool)

(declare-fun e!321814 () Bool)

(declare-fun tp!170408 () Bool)

(assert (=> b!534117 (= e!321814 (and tp!170408 (inv!6445 (tag!1200 (h!10537 (t!73967 rules!3103)))) (inv!6448 (transformation!938 (h!10537 (t!73967 rules!3103)))) e!321815))))

(declare-fun b!534116 () Bool)

(declare-fun e!321816 () Bool)

(declare-fun tp!170409 () Bool)

(assert (=> b!534116 (= e!321816 (and e!321814 tp!170409))))

(assert (=> b!533840 (= tp!170361 e!321816)))

(assert (= b!534117 b!534118))

(assert (= b!534116 b!534117))

(assert (= (and b!533840 (is-Cons!5136 (t!73967 rules!3103))) b!534116))

(declare-fun m!779715 () Bool)

(assert (=> b!534117 m!779715))

(declare-fun m!779717 () Bool)

(assert (=> b!534117 m!779717))

(declare-fun b!534131 () Bool)

(declare-fun e!321820 () Bool)

(declare-fun tp!170421 () Bool)

(assert (=> b!534131 (= e!321820 tp!170421)))

(assert (=> b!533861 (= tp!170355 e!321820)))

(declare-fun b!534130 () Bool)

(declare-fun tp!170425 () Bool)

(declare-fun tp!170424 () Bool)

(assert (=> b!534130 (= e!321820 (and tp!170425 tp!170424))))

(declare-fun b!534129 () Bool)

(assert (=> b!534129 (= e!321820 tp_is_empty!2899)))

(declare-fun b!534132 () Bool)

(declare-fun tp!170423 () Bool)

(declare-fun tp!170422 () Bool)

(assert (=> b!534132 (= e!321820 (and tp!170423 tp!170422))))

(assert (= (and b!533861 (is-ElementMatch!1272 (regex!938 (rule!1640 token!491)))) b!534129))

(assert (= (and b!533861 (is-Concat!2234 (regex!938 (rule!1640 token!491)))) b!534130))

(assert (= (and b!533861 (is-Star!1272 (regex!938 (rule!1640 token!491)))) b!534131))

(assert (= (and b!533861 (is-Union!1272 (regex!938 (rule!1640 token!491)))) b!534132))

(declare-fun b!534137 () Bool)

(declare-fun e!321823 () Bool)

(declare-fun tp!170428 () Bool)

(assert (=> b!534137 (= e!321823 (and tp_is_empty!2899 tp!170428))))

(assert (=> b!533855 (= tp!170358 e!321823)))

(assert (= (and b!533855 (is-Cons!5135 (originalCharacters!977 token!491))) b!534137))

(declare-fun b!534138 () Bool)

(declare-fun e!321824 () Bool)

(declare-fun tp!170429 () Bool)

(assert (=> b!534138 (= e!321824 (and tp_is_empty!2899 tp!170429))))

(assert (=> b!533860 (= tp!170359 e!321824)))

(assert (= (and b!533860 (is-Cons!5135 (t!73966 input!2705))) b!534138))

(declare-fun b!534141 () Bool)

(declare-fun e!321825 () Bool)

(declare-fun tp!170430 () Bool)

(assert (=> b!534141 (= e!321825 tp!170430)))

(assert (=> b!533854 (= tp!170364 e!321825)))

(declare-fun b!534140 () Bool)

(declare-fun tp!170434 () Bool)

(declare-fun tp!170433 () Bool)

(assert (=> b!534140 (= e!321825 (and tp!170434 tp!170433))))

(declare-fun b!534139 () Bool)

(assert (=> b!534139 (= e!321825 tp_is_empty!2899)))

(declare-fun b!534142 () Bool)

(declare-fun tp!170432 () Bool)

(declare-fun tp!170431 () Bool)

(assert (=> b!534142 (= e!321825 (and tp!170432 tp!170431))))

(assert (= (and b!533854 (is-ElementMatch!1272 (regex!938 (h!10537 rules!3103)))) b!534139))

(assert (= (and b!533854 (is-Concat!2234 (regex!938 (h!10537 rules!3103)))) b!534140))

(assert (= (and b!533854 (is-Star!1272 (regex!938 (h!10537 rules!3103)))) b!534141))

(assert (= (and b!533854 (is-Union!1272 (regex!938 (h!10537 rules!3103)))) b!534142))

(declare-fun b!534143 () Bool)

(declare-fun e!321826 () Bool)

(declare-fun tp!170435 () Bool)

(assert (=> b!534143 (= e!321826 (and tp_is_empty!2899 tp!170435))))

(assert (=> b!533847 (= tp!170356 e!321826)))

(assert (= (and b!533847 (is-Cons!5135 (t!73966 suffix!1342))) b!534143))

(declare-fun b_lambda!20631 () Bool)

(assert (= b_lambda!20629 (or (and b!533853 b_free!14507) (and b!533850 b_free!14511 (= (toChars!1644 (transformation!938 (h!10537 rules!3103))) (toChars!1644 (transformation!938 (rule!1640 token!491))))) (and b!534118 b_free!14523 (= (toChars!1644 (transformation!938 (h!10537 (t!73967 rules!3103)))) (toChars!1644 (transformation!938 (rule!1640 token!491))))) b_lambda!20631)))

(declare-fun b_lambda!20633 () Bool)

(assert (= b_lambda!20627 (or (and b!533853 b_free!14507) (and b!533850 b_free!14511 (= (toChars!1644 (transformation!938 (h!10537 rules!3103))) (toChars!1644 (transformation!938 (rule!1640 token!491))))) (and b!534118 b_free!14523 (= (toChars!1644 (transformation!938 (h!10537 (t!73967 rules!3103)))) (toChars!1644 (transformation!938 (rule!1640 token!491))))) b_lambda!20633)))

(push 1)

(assert (not d!189117))

(assert (not bm!38186))

(assert (not bm!38185))

(assert (not b!534137))

(assert (not d!189129))

(assert (not b!533986))

(assert (not b!534143))

(assert (not d!189075))

(assert (not b!533941))

(assert (not d!189121))

(assert (not b!534022))

(assert (not b!534067))

(assert (not b!533969))

(assert (not d!189143))

(assert (not d!189073))

(assert (not b!534058))

(assert (not b!534140))

(assert (not b!534117))

(assert (not d!189069))

(assert (not d!189113))

(assert (not b!534062))

(assert (not d!189141))

(assert (not b!534138))

(assert (not b!534059))

(assert (not d!189067))

(assert b_and!52207)

(assert (not d!189053))

(assert b_and!52215)

(assert (not tb!47399))

(assert (not b!534105))

(assert b_and!52217)

(assert (not b!534116))

(assert (not d!189109))

(assert (not b!533996))

(assert (not b!533956))

(assert (not d!189115))

(assert (not b!533997))

(assert (not b!534071))

(assert (not b!533991))

(assert (not b_lambda!20625))

(assert (not b_next!14523))

(assert (not b!534086))

(assert (not b!533995))

(assert (not b!534073))

(assert (not b_lambda!20623))

(assert (not b!534088))

(assert (not tb!47391))

(assert (not b_next!14527))

(assert (not b!533936))

(assert (not d!189125))

(assert (not b!533992))

(assert (not d!189061))

(assert (not b!534007))

(assert (not b!534084))

(assert (not d!189091))

(assert (not b!534087))

(assert (not b!534130))

(assert (not b!533957))

(assert (not d!189065))

(assert (not b_lambda!20633))

(assert (not d!189057))

(assert (not b!534021))

(assert (not b!534012))

(assert (not b!534064))

(assert (not b_next!14521))

(assert (not b!533968))

(assert (not b!533990))

(assert (not b!534089))

(assert (not b!534142))

(assert b_and!52221)

(assert (not d!189147))

(assert (not b!534013))

(assert (not b!534056))

(assert tp_is_empty!2899)

(assert (not b!534141))

(assert (not b!534132))

(assert b_and!52209)

(assert (not d!189139))

(assert (not b!533953))

(assert (not b_next!14525))

(assert (not b!534034))

(assert (not b!534011))

(assert (not d!189079))

(assert (not d!189107))

(assert (not b!534081))

(assert (not b!534010))

(assert (not b_next!14537))

(assert (not b!533981))

(assert (not b!534083))

(assert (not b!534020))

(assert (not b!534036))

(assert (not d!189097))

(assert (not b!533952))

(assert (not b!534004))

(assert (not b!534085))

(assert (not d!189149))

(assert (not b!533930))

(assert (not b!534060))

(assert (not d!189081))

(assert (not b!533954))

(assert (not b_next!14539))

(assert b_and!52219)

(assert (not d!189105))

(assert (not d!189049))

(assert (not b!534066))

(assert (not tb!47395))

(assert (not b!534057))

(assert (not d!189095))

(assert (not b!534091))

(assert (not b!534131))

(assert (not b_lambda!20631))

(assert (not d!189123))

(assert (not b!534074))

(assert (not b!533958))

(assert (not b!534061))

(assert (not b!534080))

(assert (not d!189087))

(assert (not b!534035))

(assert (not b!533971))

(check-sat)

(pop 1)

(push 1)

(assert b_and!52207)

(assert b_and!52215)

(assert b_and!52217)

(assert (not b_next!14523))

(assert (not b_next!14527))

(assert (not b_next!14521))

(assert b_and!52221)

(assert b_and!52209)

(assert (not b_next!14525))

(assert (not b_next!14537))

(assert (not b_next!14539))

(assert b_and!52219)

(check-sat)

(pop 1)

