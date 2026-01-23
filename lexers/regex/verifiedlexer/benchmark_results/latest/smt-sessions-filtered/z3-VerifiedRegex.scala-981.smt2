; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!49392 () Bool)

(assert start!49392)

(declare-fun b!535428 () Bool)

(declare-fun b_free!14609 () Bool)

(declare-fun b_next!14625 () Bool)

(assert (=> b!535428 (= b_free!14609 (not b_next!14625))))

(declare-fun tp!170857 () Bool)

(declare-fun b_and!52363 () Bool)

(assert (=> b!535428 (= tp!170857 b_and!52363)))

(declare-fun b_free!14611 () Bool)

(declare-fun b_next!14627 () Bool)

(assert (=> b!535428 (= b_free!14611 (not b_next!14627))))

(declare-fun tp!170855 () Bool)

(declare-fun b_and!52365 () Bool)

(assert (=> b!535428 (= tp!170855 b_and!52365)))

(declare-fun b!535410 () Bool)

(declare-fun b_free!14613 () Bool)

(declare-fun b_next!14629 () Bool)

(assert (=> b!535410 (= b_free!14613 (not b_next!14629))))

(declare-fun tp!170858 () Bool)

(declare-fun b_and!52367 () Bool)

(assert (=> b!535410 (= tp!170858 b_and!52367)))

(declare-fun b_free!14615 () Bool)

(declare-fun b_next!14631 () Bool)

(assert (=> b!535410 (= b_free!14615 (not b_next!14631))))

(declare-fun tp!170852 () Bool)

(declare-fun b_and!52369 () Bool)

(assert (=> b!535410 (= tp!170852 b_and!52369)))

(declare-fun b!535402 () Bool)

(declare-fun res!226474 () Bool)

(declare-fun e!322760 () Bool)

(assert (=> b!535402 (=> res!226474 e!322760)))

(declare-datatypes ((C!3488 0))(
  ( (C!3489 (val!1970 Int)) )
))
(declare-datatypes ((List!5181 0))(
  ( (Nil!5171) (Cons!5171 (h!10572 C!3488) (t!74086 List!5181)) )
))
(declare-fun input!2705 () List!5181)

(declare-fun lt!221033 () List!5181)

(assert (=> b!535402 (= res!226474 (not (= input!2705 lt!221033)))))

(declare-fun b!535403 () Bool)

(declare-fun e!322770 () Bool)

(declare-fun e!322762 () Bool)

(assert (=> b!535403 (= e!322770 e!322762)))

(declare-fun res!226471 () Bool)

(assert (=> b!535403 (=> (not res!226471) (not e!322762))))

(declare-fun lt!221008 () List!5181)

(declare-fun lt!221004 () List!5181)

(assert (=> b!535403 (= res!226471 (= lt!221008 lt!221004))))

(declare-fun lt!221018 () List!5181)

(declare-fun suffix!1342 () List!5181)

(declare-fun ++!1437 (List!5181 List!5181) List!5181)

(assert (=> b!535403 (= lt!221008 (++!1437 lt!221018 suffix!1342))))

(declare-fun lt!221013 () List!5181)

(declare-datatypes ((Regex!1283 0))(
  ( (ElementMatch!1283 (c!101918 C!3488)) (Concat!2256 (regOne!3078 Regex!1283) (regTwo!3078 Regex!1283)) (EmptyExpr!1283) (Star!1283 (reg!1612 Regex!1283)) (EmptyLang!1283) (Union!1283 (regOne!3079 Regex!1283) (regTwo!3079 Regex!1283)) )
))
(declare-datatypes ((List!5182 0))(
  ( (Nil!5172) (Cons!5172 (h!10573 (_ BitVec 16)) (t!74087 List!5182)) )
))
(declare-datatypes ((IArray!3333 0))(
  ( (IArray!3334 (innerList!1724 List!5181)) )
))
(declare-datatypes ((Conc!1666 0))(
  ( (Node!1666 (left!4337 Conc!1666) (right!4667 Conc!1666) (csize!3562 Int) (cheight!1877 Int)) (Leaf!2648 (xs!4303 IArray!3333) (csize!3563 Int)) (Empty!1666) )
))
(declare-datatypes ((BalanceConc!3340 0))(
  ( (BalanceConc!3341 (c!101919 Conc!1666)) )
))
(declare-datatypes ((TokenValue!973 0))(
  ( (FloatLiteralValue!1946 (text!7256 List!5182)) (TokenValueExt!972 (__x!3844 Int)) (Broken!4865 (value!31887 List!5182)) (Object!982) (End!973) (Def!973) (Underscore!973) (Match!973) (Else!973) (Error!973) (Case!973) (If!973) (Extends!973) (Abstract!973) (Class!973) (Val!973) (DelimiterValue!1946 (del!1033 List!5182)) (KeywordValue!979 (value!31888 List!5182)) (CommentValue!1946 (value!31889 List!5182)) (WhitespaceValue!1946 (value!31890 List!5182)) (IndentationValue!973 (value!31891 List!5182)) (String!6608) (Int32!973) (Broken!4866 (value!31892 List!5182)) (Boolean!974) (Unit!9028) (OperatorValue!976 (op!1033 List!5182)) (IdentifierValue!1946 (value!31893 List!5182)) (IdentifierValue!1947 (value!31894 List!5182)) (WhitespaceValue!1947 (value!31895 List!5182)) (True!1946) (False!1946) (Broken!4867 (value!31896 List!5182)) (Broken!4868 (value!31897 List!5182)) (True!1947) (RightBrace!973) (RightBracket!973) (Colon!973) (Null!973) (Comma!973) (LeftBracket!973) (False!1947) (LeftBrace!973) (ImaginaryLiteralValue!973 (text!7257 List!5182)) (StringLiteralValue!2919 (value!31898 List!5182)) (EOFValue!973 (value!31899 List!5182)) (IdentValue!973 (value!31900 List!5182)) (DelimiterValue!1947 (value!31901 List!5182)) (DedentValue!973 (value!31902 List!5182)) (NewLineValue!973 (value!31903 List!5182)) (IntegerValue!2919 (value!31904 (_ BitVec 32)) (text!7258 List!5182)) (IntegerValue!2920 (value!31905 Int) (text!7259 List!5182)) (Times!973) (Or!973) (Equal!973) (Minus!973) (Broken!4869 (value!31906 List!5182)) (And!973) (Div!973) (LessEqual!973) (Mod!973) (Concat!2257) (Not!973) (Plus!973) (SpaceValue!973 (value!31907 List!5182)) (IntegerValue!2921 (value!31908 Int) (text!7260 List!5182)) (StringLiteralValue!2920 (text!7261 List!5182)) (FloatLiteralValue!1947 (text!7262 List!5182)) (BytesLiteralValue!973 (value!31909 List!5182)) (CommentValue!1947 (value!31910 List!5182)) (StringLiteralValue!2921 (value!31911 List!5182)) (ErrorTokenValue!973 (msg!1034 List!5182)) )
))
(declare-datatypes ((String!6609 0))(
  ( (String!6610 (value!31912 String)) )
))
(declare-datatypes ((TokenValueInjection!1714 0))(
  ( (TokenValueInjection!1715 (toValue!1796 Int) (toChars!1655 Int)) )
))
(declare-datatypes ((Rule!1698 0))(
  ( (Rule!1699 (regex!949 Regex!1283) (tag!1211 String!6609) (isSeparator!949 Bool) (transformation!949 TokenValueInjection!1714)) )
))
(declare-datatypes ((Token!1634 0))(
  ( (Token!1635 (value!31913 TokenValue!973) (rule!1651 Rule!1698) (size!4168 Int) (originalCharacters!988 List!5181)) )
))
(declare-datatypes ((tuple2!6256 0))(
  ( (tuple2!6257 (_1!3392 Token!1634) (_2!3392 List!5181)) )
))
(declare-fun lt!221006 () tuple2!6256)

(declare-datatypes ((Option!1299 0))(
  ( (None!1298) (Some!1298 (v!16105 tuple2!6256)) )
))
(declare-fun lt!221021 () Option!1299)

(declare-fun e!322773 () Bool)

(declare-fun lt!221012 () TokenValue!973)

(declare-fun lt!221019 () List!5181)

(declare-fun lt!221010 () Int)

(declare-fun b!535405 () Bool)

(assert (=> b!535405 (= e!322773 (and (= (size!4168 (_1!3392 (v!16105 lt!221021))) lt!221010) (= (originalCharacters!988 (_1!3392 (v!16105 lt!221021))) lt!221019) (= lt!221006 (tuple2!6257 (Token!1635 lt!221012 (rule!1651 (_1!3392 (v!16105 lt!221021))) lt!221010 lt!221019) lt!221013))))))

(declare-fun b!535406 () Bool)

(declare-fun res!226469 () Bool)

(declare-fun e!322774 () Bool)

(assert (=> b!535406 (=> (not res!226469) (not e!322774))))

(declare-datatypes ((LexerInterface!835 0))(
  ( (LexerInterfaceExt!832 (__x!3845 Int)) (Lexer!833) )
))
(declare-fun thiss!22590 () LexerInterface!835)

(declare-datatypes ((List!5183 0))(
  ( (Nil!5173) (Cons!5173 (h!10574 Rule!1698) (t!74088 List!5183)) )
))
(declare-fun rules!3103 () List!5183)

(declare-fun rulesInvariant!798 (LexerInterface!835 List!5183) Bool)

(assert (=> b!535406 (= res!226469 (rulesInvariant!798 thiss!22590 rules!3103))))

(declare-fun b!535407 () Bool)

(declare-fun e!322768 () Bool)

(declare-fun tp_is_empty!2921 () Bool)

(declare-fun tp!170853 () Bool)

(assert (=> b!535407 (= e!322768 (and tp_is_empty!2921 tp!170853))))

(declare-fun b!535408 () Bool)

(declare-fun res!226479 () Bool)

(assert (=> b!535408 (=> (not res!226479) (not e!322773))))

(declare-fun size!4169 (List!5181) Int)

(assert (=> b!535408 (= res!226479 (= (size!4168 (_1!3392 (v!16105 lt!221021))) (size!4169 (originalCharacters!988 (_1!3392 (v!16105 lt!221021))))))))

(declare-fun b!535409 () Bool)

(declare-fun e!322775 () Bool)

(assert (=> b!535409 (= e!322775 e!322770)))

(declare-fun res!226477 () Bool)

(assert (=> b!535409 (=> (not res!226477) (not e!322770))))

(get-info :version)

(assert (=> b!535409 (= res!226477 ((_ is Some!1298) lt!221021))))

(declare-fun maxPrefix!533 (LexerInterface!835 List!5183 List!5181) Option!1299)

(assert (=> b!535409 (= lt!221021 (maxPrefix!533 thiss!22590 rules!3103 input!2705))))

(declare-fun e!322772 () Bool)

(assert (=> b!535410 (= e!322772 (and tp!170858 tp!170852))))

(declare-fun b!535411 () Bool)

(declare-fun e!322769 () Bool)

(assert (=> b!535411 (= e!322762 (not e!322769))))

(declare-fun res!226478 () Bool)

(assert (=> b!535411 (=> res!226478 e!322769)))

(declare-fun isPrefix!591 (List!5181 List!5181) Bool)

(assert (=> b!535411 (= res!226478 (not (isPrefix!591 input!2705 lt!221008)))))

(assert (=> b!535411 (isPrefix!591 lt!221018 lt!221008)))

(declare-datatypes ((Unit!9029 0))(
  ( (Unit!9030) )
))
(declare-fun lt!221014 () Unit!9029)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!442 (List!5181 List!5181) Unit!9029)

(assert (=> b!535411 (= lt!221014 (lemmaConcatTwoListThenFirstIsPrefix!442 lt!221018 suffix!1342))))

(assert (=> b!535411 (isPrefix!591 input!2705 lt!221004)))

(declare-fun lt!221028 () Unit!9029)

(assert (=> b!535411 (= lt!221028 (lemmaConcatTwoListThenFirstIsPrefix!442 input!2705 suffix!1342))))

(assert (=> b!535411 e!322773))

(declare-fun res!226480 () Bool)

(assert (=> b!535411 (=> (not res!226480) (not e!322773))))

(assert (=> b!535411 (= res!226480 (= (value!31913 (_1!3392 (v!16105 lt!221021))) lt!221012))))

(declare-fun lt!221025 () BalanceConc!3340)

(declare-fun apply!1224 (TokenValueInjection!1714 BalanceConc!3340) TokenValue!973)

(assert (=> b!535411 (= lt!221012 (apply!1224 (transformation!949 (rule!1651 (_1!3392 (v!16105 lt!221021)))) lt!221025))))

(declare-fun seqFromList!1147 (List!5181) BalanceConc!3340)

(assert (=> b!535411 (= lt!221025 (seqFromList!1147 lt!221019))))

(declare-fun lt!221029 () Unit!9029)

(declare-fun token!491 () Token!1634)

(declare-fun lemmaInv!97 (TokenValueInjection!1714) Unit!9029)

(assert (=> b!535411 (= lt!221029 (lemmaInv!97 (transformation!949 (rule!1651 token!491))))))

(declare-fun lt!221023 () Unit!9029)

(assert (=> b!535411 (= lt!221023 (lemmaInv!97 (transformation!949 (rule!1651 (_1!3392 (v!16105 lt!221021))))))))

(declare-fun ruleValid!169 (LexerInterface!835 Rule!1698) Bool)

(assert (=> b!535411 (ruleValid!169 thiss!22590 (rule!1651 token!491))))

(declare-fun lt!221005 () Unit!9029)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!28 (LexerInterface!835 Rule!1698 List!5183) Unit!9029)

(assert (=> b!535411 (= lt!221005 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!28 thiss!22590 (rule!1651 token!491) rules!3103))))

(assert (=> b!535411 (ruleValid!169 thiss!22590 (rule!1651 (_1!3392 (v!16105 lt!221021))))))

(declare-fun lt!221007 () Unit!9029)

(assert (=> b!535411 (= lt!221007 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!28 thiss!22590 (rule!1651 (_1!3392 (v!16105 lt!221021))) rules!3103))))

(assert (=> b!535411 (isPrefix!591 input!2705 input!2705)))

(declare-fun lt!221024 () Unit!9029)

(declare-fun lemmaIsPrefixRefl!331 (List!5181 List!5181) Unit!9029)

(assert (=> b!535411 (= lt!221024 (lemmaIsPrefixRefl!331 input!2705 input!2705))))

(assert (=> b!535411 (= (_2!3392 (v!16105 lt!221021)) lt!221013)))

(declare-fun lt!221011 () Unit!9029)

(declare-fun lemmaSamePrefixThenSameSuffix!318 (List!5181 List!5181 List!5181 List!5181 List!5181) Unit!9029)

(assert (=> b!535411 (= lt!221011 (lemmaSamePrefixThenSameSuffix!318 lt!221019 (_2!3392 (v!16105 lt!221021)) lt!221019 lt!221013 input!2705))))

(declare-fun getSuffix!114 (List!5181 List!5181) List!5181)

(assert (=> b!535411 (= lt!221013 (getSuffix!114 input!2705 lt!221019))))

(assert (=> b!535411 (isPrefix!591 lt!221019 lt!221033)))

(assert (=> b!535411 (= lt!221033 (++!1437 lt!221019 (_2!3392 (v!16105 lt!221021))))))

(declare-fun lt!221026 () Unit!9029)

(assert (=> b!535411 (= lt!221026 (lemmaConcatTwoListThenFirstIsPrefix!442 lt!221019 (_2!3392 (v!16105 lt!221021))))))

(declare-fun lt!221009 () Unit!9029)

(declare-fun lemmaCharactersSize!28 (Token!1634) Unit!9029)

(assert (=> b!535411 (= lt!221009 (lemmaCharactersSize!28 token!491))))

(declare-fun lt!221027 () Unit!9029)

(assert (=> b!535411 (= lt!221027 (lemmaCharactersSize!28 (_1!3392 (v!16105 lt!221021))))))

(declare-fun lt!221030 () Unit!9029)

(declare-fun e!322764 () Unit!9029)

(assert (=> b!535411 (= lt!221030 e!322764)))

(declare-fun c!101917 () Bool)

(declare-fun lt!221016 () Int)

(assert (=> b!535411 (= c!101917 (> lt!221010 lt!221016))))

(assert (=> b!535411 (= lt!221016 (size!4169 lt!221018))))

(assert (=> b!535411 (= lt!221010 (size!4169 lt!221019))))

(declare-fun list!2151 (BalanceConc!3340) List!5181)

(declare-fun charsOf!578 (Token!1634) BalanceConc!3340)

(assert (=> b!535411 (= lt!221019 (list!2151 (charsOf!578 (_1!3392 (v!16105 lt!221021)))))))

(assert (=> b!535411 (= lt!221021 (Some!1298 lt!221006))))

(assert (=> b!535411 (= lt!221006 (tuple2!6257 (_1!3392 (v!16105 lt!221021)) (_2!3392 (v!16105 lt!221021))))))

(declare-fun lt!221032 () Unit!9029)

(declare-fun lemmaConcatSameAndSameSizesThenSameLists!34 (List!5181 List!5181 List!5181 List!5181) Unit!9029)

(assert (=> b!535411 (= lt!221032 (lemmaConcatSameAndSameSizesThenSameLists!34 lt!221018 suffix!1342 input!2705 suffix!1342))))

(declare-fun b!535412 () Bool)

(declare-fun e!322765 () Bool)

(assert (=> b!535412 (= e!322760 e!322765)))

(declare-fun res!226470 () Bool)

(assert (=> b!535412 (=> res!226470 e!322765)))

(assert (=> b!535412 (= res!226470 (not (= lt!221021 (Some!1298 (tuple2!6257 (Token!1635 lt!221012 (rule!1651 (_1!3392 (v!16105 lt!221021))) lt!221010 lt!221019) (_2!3392 (v!16105 lt!221021)))))))))

(declare-fun lt!221031 () Unit!9029)

(declare-fun lemmaSemiInverse!100 (TokenValueInjection!1714 BalanceConc!3340) Unit!9029)

(assert (=> b!535412 (= lt!221031 (lemmaSemiInverse!100 (transformation!949 (rule!1651 (_1!3392 (v!16105 lt!221021)))) lt!221025))))

(declare-fun b!535413 () Bool)

(declare-fun res!226481 () Bool)

(assert (=> b!535413 (=> (not res!226481) (not e!322774))))

(declare-fun isEmpty!3740 (List!5183) Bool)

(assert (=> b!535413 (= res!226481 (not (isEmpty!3740 rules!3103)))))

(declare-fun b!535414 () Bool)

(declare-fun e!322776 () Bool)

(declare-fun tp!170849 () Bool)

(assert (=> b!535414 (= e!322776 (and tp_is_empty!2921 tp!170849))))

(declare-fun res!226467 () Bool)

(assert (=> start!49392 (=> (not res!226467) (not e!322774))))

(assert (=> start!49392 (= res!226467 ((_ is Lexer!833) thiss!22590))))

(assert (=> start!49392 e!322774))

(assert (=> start!49392 e!322768))

(declare-fun e!322771 () Bool)

(assert (=> start!49392 e!322771))

(declare-fun e!322758 () Bool)

(declare-fun inv!6493 (Token!1634) Bool)

(assert (=> start!49392 (and (inv!6493 token!491) e!322758)))

(assert (=> start!49392 true))

(assert (=> start!49392 e!322776))

(declare-fun b!535404 () Bool)

(declare-fun e!322759 () Bool)

(declare-fun e!322779 () Bool)

(assert (=> b!535404 (= e!322759 e!322779)))

(declare-fun res!226484 () Bool)

(assert (=> b!535404 (=> (not res!226484) (not e!322779))))

(declare-fun lt!221017 () Option!1299)

(declare-fun isDefined!1111 (Option!1299) Bool)

(assert (=> b!535404 (= res!226484 (isDefined!1111 lt!221017))))

(assert (=> b!535404 (= lt!221017 (maxPrefix!533 thiss!22590 rules!3103 lt!221004))))

(assert (=> b!535404 (= lt!221004 (++!1437 input!2705 suffix!1342))))

(declare-fun b!535415 () Bool)

(assert (=> b!535415 (= e!322774 e!322759)))

(declare-fun res!226476 () Bool)

(assert (=> b!535415 (=> (not res!226476) (not e!322759))))

(assert (=> b!535415 (= res!226476 (= lt!221018 input!2705))))

(assert (=> b!535415 (= lt!221018 (list!2151 (charsOf!578 token!491)))))

(declare-fun b!535416 () Bool)

(assert (=> b!535416 (= e!322779 e!322775)))

(declare-fun res!226468 () Bool)

(assert (=> b!535416 (=> (not res!226468) (not e!322775))))

(declare-fun lt!221015 () tuple2!6256)

(assert (=> b!535416 (= res!226468 (and (= (_1!3392 lt!221015) token!491) (= (_2!3392 lt!221015) suffix!1342)))))

(declare-fun get!1938 (Option!1299) tuple2!6256)

(assert (=> b!535416 (= lt!221015 (get!1938 lt!221017))))

(declare-fun b!535417 () Bool)

(assert (=> b!535417 (= e!322769 e!322760)))

(declare-fun res!226472 () Bool)

(assert (=> b!535417 (=> res!226472 e!322760)))

(declare-fun contains!1201 (List!5183 Rule!1698) Bool)

(assert (=> b!535417 (= res!226472 (not (contains!1201 rules!3103 (rule!1651 (_1!3392 (v!16105 lt!221021))))))))

(declare-fun e!322763 () Bool)

(assert (=> b!535417 e!322763))

(declare-fun res!226483 () Bool)

(assert (=> b!535417 (=> (not res!226483) (not e!322763))))

(declare-fun lt!221022 () TokenValue!973)

(assert (=> b!535417 (= res!226483 (= (value!31913 token!491) lt!221022))))

(assert (=> b!535417 (= lt!221022 (apply!1224 (transformation!949 (rule!1651 token!491)) (seqFromList!1147 lt!221018)))))

(declare-fun lt!221020 () List!5181)

(assert (=> b!535417 (= suffix!1342 lt!221020)))

(declare-fun lt!221035 () Unit!9029)

(assert (=> b!535417 (= lt!221035 (lemmaSamePrefixThenSameSuffix!318 lt!221018 suffix!1342 lt!221018 lt!221020 lt!221004))))

(assert (=> b!535417 (= lt!221020 (getSuffix!114 lt!221004 lt!221018))))

(declare-fun b!535418 () Bool)

(declare-fun Unit!9031 () Unit!9029)

(assert (=> b!535418 (= e!322764 Unit!9031)))

(declare-fun b!535419 () Bool)

(declare-fun res!226482 () Bool)

(assert (=> b!535419 (=> (not res!226482) (not e!322763))))

(assert (=> b!535419 (= res!226482 (= (size!4168 token!491) (size!4169 (originalCharacters!988 token!491))))))

(declare-fun e!322778 () Bool)

(declare-fun b!535420 () Bool)

(declare-fun tp!170850 () Bool)

(declare-fun inv!6490 (String!6609) Bool)

(declare-fun inv!6494 (TokenValueInjection!1714) Bool)

(assert (=> b!535420 (= e!322778 (and tp!170850 (inv!6490 (tag!1211 (rule!1651 token!491))) (inv!6494 (transformation!949 (rule!1651 token!491))) e!322772))))

(declare-fun b!535421 () Bool)

(assert (=> b!535421 (= e!322763 (and (= (size!4168 token!491) lt!221016) (= (originalCharacters!988 token!491) lt!221018) (= (tuple2!6257 token!491 suffix!1342) (tuple2!6257 (Token!1635 lt!221022 (rule!1651 token!491) lt!221016 lt!221018) lt!221020))))))

(declare-fun b!535422 () Bool)

(assert (=> b!535422 (= e!322765 true)))

(declare-fun lt!221034 () Bool)

(declare-fun matchR!450 (Regex!1283 List!5181) Bool)

(assert (=> b!535422 (= lt!221034 (matchR!450 (regex!949 (rule!1651 (_1!3392 (v!16105 lt!221021)))) lt!221019))))

(declare-fun b!535423 () Bool)

(declare-fun e!322780 () Bool)

(declare-fun tp!170856 () Bool)

(declare-fun e!322767 () Bool)

(assert (=> b!535423 (= e!322780 (and tp!170856 (inv!6490 (tag!1211 (h!10574 rules!3103))) (inv!6494 (transformation!949 (h!10574 rules!3103))) e!322767))))

(declare-fun b!535424 () Bool)

(declare-fun res!226473 () Bool)

(assert (=> b!535424 (=> res!226473 e!322760)))

(declare-fun isEmpty!3741 (List!5181) Bool)

(assert (=> b!535424 (= res!226473 (isEmpty!3741 lt!221019))))

(declare-fun b!535425 () Bool)

(declare-fun tp!170854 () Bool)

(declare-fun inv!21 (TokenValue!973) Bool)

(assert (=> b!535425 (= e!322758 (and (inv!21 (value!31913 token!491)) e!322778 tp!170854))))

(declare-fun b!535426 () Bool)

(declare-fun tp!170851 () Bool)

(assert (=> b!535426 (= e!322771 (and e!322780 tp!170851))))

(declare-fun b!535427 () Bool)

(declare-fun Unit!9032 () Unit!9029)

(assert (=> b!535427 (= e!322764 Unit!9032)))

(assert (=> b!535427 false))

(assert (=> b!535428 (= e!322767 (and tp!170857 tp!170855))))

(declare-fun b!535429 () Bool)

(declare-fun res!226475 () Bool)

(assert (=> b!535429 (=> (not res!226475) (not e!322774))))

(assert (=> b!535429 (= res!226475 (not (isEmpty!3741 input!2705)))))

(assert (= (and start!49392 res!226467) b!535413))

(assert (= (and b!535413 res!226481) b!535406))

(assert (= (and b!535406 res!226469) b!535429))

(assert (= (and b!535429 res!226475) b!535415))

(assert (= (and b!535415 res!226476) b!535404))

(assert (= (and b!535404 res!226484) b!535416))

(assert (= (and b!535416 res!226468) b!535409))

(assert (= (and b!535409 res!226477) b!535403))

(assert (= (and b!535403 res!226471) b!535411))

(assert (= (and b!535411 c!101917) b!535427))

(assert (= (and b!535411 (not c!101917)) b!535418))

(assert (= (and b!535411 res!226480) b!535408))

(assert (= (and b!535408 res!226479) b!535405))

(assert (= (and b!535411 (not res!226478)) b!535417))

(assert (= (and b!535417 res!226483) b!535419))

(assert (= (and b!535419 res!226482) b!535421))

(assert (= (and b!535417 (not res!226472)) b!535402))

(assert (= (and b!535402 (not res!226474)) b!535424))

(assert (= (and b!535424 (not res!226473)) b!535412))

(assert (= (and b!535412 (not res!226470)) b!535422))

(assert (= (and start!49392 ((_ is Cons!5171) suffix!1342)) b!535407))

(assert (= b!535423 b!535428))

(assert (= b!535426 b!535423))

(assert (= (and start!49392 ((_ is Cons!5173) rules!3103)) b!535426))

(assert (= b!535420 b!535410))

(assert (= b!535425 b!535420))

(assert (= start!49392 b!535425))

(assert (= (and start!49392 ((_ is Cons!5171) input!2705)) b!535414))

(declare-fun m!781343 () Bool)

(assert (=> b!535416 m!781343))

(declare-fun m!781345 () Bool)

(assert (=> b!535420 m!781345))

(declare-fun m!781347 () Bool)

(assert (=> b!535420 m!781347))

(declare-fun m!781349 () Bool)

(assert (=> b!535419 m!781349))

(declare-fun m!781351 () Bool)

(assert (=> b!535417 m!781351))

(declare-fun m!781353 () Bool)

(assert (=> b!535417 m!781353))

(declare-fun m!781355 () Bool)

(assert (=> b!535417 m!781355))

(declare-fun m!781357 () Bool)

(assert (=> b!535417 m!781357))

(assert (=> b!535417 m!781355))

(declare-fun m!781359 () Bool)

(assert (=> b!535417 m!781359))

(declare-fun m!781361 () Bool)

(assert (=> b!535411 m!781361))

(declare-fun m!781363 () Bool)

(assert (=> b!535411 m!781363))

(declare-fun m!781365 () Bool)

(assert (=> b!535411 m!781365))

(declare-fun m!781367 () Bool)

(assert (=> b!535411 m!781367))

(declare-fun m!781369 () Bool)

(assert (=> b!535411 m!781369))

(declare-fun m!781371 () Bool)

(assert (=> b!535411 m!781371))

(declare-fun m!781373 () Bool)

(assert (=> b!535411 m!781373))

(declare-fun m!781375 () Bool)

(assert (=> b!535411 m!781375))

(declare-fun m!781377 () Bool)

(assert (=> b!535411 m!781377))

(declare-fun m!781379 () Bool)

(assert (=> b!535411 m!781379))

(declare-fun m!781381 () Bool)

(assert (=> b!535411 m!781381))

(declare-fun m!781383 () Bool)

(assert (=> b!535411 m!781383))

(declare-fun m!781385 () Bool)

(assert (=> b!535411 m!781385))

(declare-fun m!781387 () Bool)

(assert (=> b!535411 m!781387))

(declare-fun m!781389 () Bool)

(assert (=> b!535411 m!781389))

(declare-fun m!781391 () Bool)

(assert (=> b!535411 m!781391))

(declare-fun m!781393 () Bool)

(assert (=> b!535411 m!781393))

(declare-fun m!781395 () Bool)

(assert (=> b!535411 m!781395))

(declare-fun m!781397 () Bool)

(assert (=> b!535411 m!781397))

(assert (=> b!535411 m!781361))

(declare-fun m!781399 () Bool)

(assert (=> b!535411 m!781399))

(declare-fun m!781401 () Bool)

(assert (=> b!535411 m!781401))

(declare-fun m!781403 () Bool)

(assert (=> b!535411 m!781403))

(declare-fun m!781405 () Bool)

(assert (=> b!535411 m!781405))

(declare-fun m!781407 () Bool)

(assert (=> b!535411 m!781407))

(declare-fun m!781409 () Bool)

(assert (=> b!535411 m!781409))

(declare-fun m!781411 () Bool)

(assert (=> b!535411 m!781411))

(declare-fun m!781413 () Bool)

(assert (=> b!535411 m!781413))

(declare-fun m!781415 () Bool)

(assert (=> b!535424 m!781415))

(declare-fun m!781417 () Bool)

(assert (=> b!535409 m!781417))

(declare-fun m!781419 () Bool)

(assert (=> b!535422 m!781419))

(declare-fun m!781421 () Bool)

(assert (=> b!535413 m!781421))

(declare-fun m!781423 () Bool)

(assert (=> b!535425 m!781423))

(declare-fun m!781425 () Bool)

(assert (=> b!535423 m!781425))

(declare-fun m!781427 () Bool)

(assert (=> b!535423 m!781427))

(declare-fun m!781429 () Bool)

(assert (=> b!535429 m!781429))

(declare-fun m!781431 () Bool)

(assert (=> b!535403 m!781431))

(declare-fun m!781433 () Bool)

(assert (=> b!535404 m!781433))

(declare-fun m!781435 () Bool)

(assert (=> b!535404 m!781435))

(declare-fun m!781437 () Bool)

(assert (=> b!535404 m!781437))

(declare-fun m!781439 () Bool)

(assert (=> b!535415 m!781439))

(assert (=> b!535415 m!781439))

(declare-fun m!781441 () Bool)

(assert (=> b!535415 m!781441))

(declare-fun m!781443 () Bool)

(assert (=> b!535412 m!781443))

(declare-fun m!781445 () Bool)

(assert (=> start!49392 m!781445))

(declare-fun m!781447 () Bool)

(assert (=> b!535408 m!781447))

(declare-fun m!781449 () Bool)

(assert (=> b!535406 m!781449))

(check-sat (not b_next!14627) b_and!52365 tp_is_empty!2921 (not b!535406) (not b!535411) (not b_next!14629) (not start!49392) (not b_next!14625) b_and!52363 (not b!535425) (not b!535413) (not b!535412) (not b!535424) (not b!535429) (not b!535420) (not b!535423) b_and!52367 (not b!535422) (not b_next!14631) (not b!535419) (not b!535404) (not b!535415) (not b!535417) (not b!535403) (not b!535408) (not b!535409) b_and!52369 (not b!535414) (not b!535426) (not b!535407) (not b!535416))
(check-sat (not b_next!14627) b_and!52365 b_and!52367 (not b_next!14631) (not b_next!14629) b_and!52369 (not b_next!14625) b_and!52363)
