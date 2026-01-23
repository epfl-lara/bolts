; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!146970 () Bool)

(assert start!146970)

(declare-fun b!1574635 () Bool)

(declare-fun b_free!42327 () Bool)

(declare-fun b_next!43031 () Bool)

(assert (=> b!1574635 (= b_free!42327 (not b_next!43031))))

(declare-fun tp!463499 () Bool)

(declare-fun b_and!110165 () Bool)

(assert (=> b!1574635 (= tp!463499 b_and!110165)))

(declare-fun b_free!42329 () Bool)

(declare-fun b_next!43033 () Bool)

(assert (=> b!1574635 (= b_free!42329 (not b_next!43033))))

(declare-fun tp!463504 () Bool)

(declare-fun b_and!110167 () Bool)

(assert (=> b!1574635 (= tp!463504 b_and!110167)))

(declare-fun b!1574632 () Bool)

(declare-fun b_free!42331 () Bool)

(declare-fun b_next!43035 () Bool)

(assert (=> b!1574632 (= b_free!42331 (not b_next!43035))))

(declare-fun tp!463502 () Bool)

(declare-fun b_and!110169 () Bool)

(assert (=> b!1574632 (= tp!463502 b_and!110169)))

(declare-fun b_free!42333 () Bool)

(declare-fun b_next!43037 () Bool)

(assert (=> b!1574632 (= b_free!42333 (not b_next!43037))))

(declare-fun tp!463500 () Bool)

(declare-fun b_and!110171 () Bool)

(assert (=> b!1574632 (= tp!463500 b_and!110171)))

(declare-fun e!1011364 () Bool)

(assert (=> b!1574632 (= e!1011364 (and tp!463502 tp!463500))))

(declare-fun b!1574633 () Bool)

(declare-fun e!1011358 () Bool)

(declare-fun e!1011360 () Bool)

(declare-fun tp!463505 () Bool)

(assert (=> b!1574633 (= e!1011358 (and e!1011360 tp!463505))))

(declare-fun b!1574634 () Bool)

(declare-fun e!1011368 () Bool)

(declare-fun e!1011359 () Bool)

(assert (=> b!1574634 (= e!1011368 (not e!1011359))))

(declare-fun res!701792 () Bool)

(assert (=> b!1574634 (=> res!701792 e!1011359)))

(declare-datatypes ((C!8888 0))(
  ( (C!8889 (val!5040 Int)) )
))
(declare-datatypes ((List!17299 0))(
  ( (Nil!17229) (Cons!17229 (h!22630 C!8888) (t!143242 List!17299)) )
))
(declare-datatypes ((IArray!11417 0))(
  ( (IArray!11418 (innerList!5766 List!17299)) )
))
(declare-datatypes ((Conc!5706 0))(
  ( (Node!5706 (left!13934 Conc!5706) (right!14264 Conc!5706) (csize!11642 Int) (cheight!5917 Int)) (Leaf!8441 (xs!8510 IArray!11417) (csize!11643 Int)) (Empty!5706) )
))
(declare-datatypes ((BalanceConc!11356 0))(
  ( (BalanceConc!11357 (c!255287 Conc!5706)) )
))
(declare-datatypes ((List!17300 0))(
  ( (Nil!17230) (Cons!17230 (h!22631 (_ BitVec 16)) (t!143243 List!17300)) )
))
(declare-datatypes ((TokenValue!3119 0))(
  ( (FloatLiteralValue!6238 (text!22278 List!17300)) (TokenValueExt!3118 (__x!11540 Int)) (Broken!15595 (value!95973 List!17300)) (Object!3188) (End!3119) (Def!3119) (Underscore!3119) (Match!3119) (Else!3119) (Error!3119) (Case!3119) (If!3119) (Extends!3119) (Abstract!3119) (Class!3119) (Val!3119) (DelimiterValue!6238 (del!3179 List!17300)) (KeywordValue!3125 (value!95974 List!17300)) (CommentValue!6238 (value!95975 List!17300)) (WhitespaceValue!6238 (value!95976 List!17300)) (IndentationValue!3119 (value!95977 List!17300)) (String!19926) (Int32!3119) (Broken!15596 (value!95978 List!17300)) (Boolean!3120) (Unit!26608) (OperatorValue!3122 (op!3179 List!17300)) (IdentifierValue!6238 (value!95979 List!17300)) (IdentifierValue!6239 (value!95980 List!17300)) (WhitespaceValue!6239 (value!95981 List!17300)) (True!6238) (False!6238) (Broken!15597 (value!95982 List!17300)) (Broken!15598 (value!95983 List!17300)) (True!6239) (RightBrace!3119) (RightBracket!3119) (Colon!3119) (Null!3119) (Comma!3119) (LeftBracket!3119) (False!6239) (LeftBrace!3119) (ImaginaryLiteralValue!3119 (text!22279 List!17300)) (StringLiteralValue!9357 (value!95984 List!17300)) (EOFValue!3119 (value!95985 List!17300)) (IdentValue!3119 (value!95986 List!17300)) (DelimiterValue!6239 (value!95987 List!17300)) (DedentValue!3119 (value!95988 List!17300)) (NewLineValue!3119 (value!95989 List!17300)) (IntegerValue!9357 (value!95990 (_ BitVec 32)) (text!22280 List!17300)) (IntegerValue!9358 (value!95991 Int) (text!22281 List!17300)) (Times!3119) (Or!3119) (Equal!3119) (Minus!3119) (Broken!15599 (value!95992 List!17300)) (And!3119) (Div!3119) (LessEqual!3119) (Mod!3119) (Concat!7476) (Not!3119) (Plus!3119) (SpaceValue!3119 (value!95993 List!17300)) (IntegerValue!9359 (value!95994 Int) (text!22282 List!17300)) (StringLiteralValue!9358 (text!22283 List!17300)) (FloatLiteralValue!6239 (text!22284 List!17300)) (BytesLiteralValue!3119 (value!95995 List!17300)) (CommentValue!6239 (value!95996 List!17300)) (StringLiteralValue!9359 (value!95997 List!17300)) (ErrorTokenValue!3119 (msg!3180 List!17300)) )
))
(declare-datatypes ((Regex!4357 0))(
  ( (ElementMatch!4357 (c!255288 C!8888)) (Concat!7477 (regOne!9226 Regex!4357) (regTwo!9226 Regex!4357)) (EmptyExpr!4357) (Star!4357 (reg!4686 Regex!4357)) (EmptyLang!4357) (Union!4357 (regOne!9227 Regex!4357) (regTwo!9227 Regex!4357)) )
))
(declare-datatypes ((String!19927 0))(
  ( (String!19928 (value!95998 String)) )
))
(declare-datatypes ((TokenValueInjection!5898 0))(
  ( (TokenValueInjection!5899 (toValue!4424 Int) (toChars!4283 Int)) )
))
(declare-datatypes ((Rule!5858 0))(
  ( (Rule!5859 (regex!3029 Regex!4357) (tag!3295 String!19927) (isSeparator!3029 Bool) (transformation!3029 TokenValueInjection!5898)) )
))
(declare-datatypes ((Token!5624 0))(
  ( (Token!5625 (value!95999 TokenValue!3119) (rule!4821 Rule!5858) (size!13894 Int) (originalCharacters!3843 List!17299)) )
))
(declare-datatypes ((List!17301 0))(
  ( (Nil!17231) (Cons!17231 (h!22632 Token!5624) (t!143244 List!17301)) )
))
(declare-datatypes ((IArray!11419 0))(
  ( (IArray!11420 (innerList!5767 List!17301)) )
))
(declare-datatypes ((Conc!5707 0))(
  ( (Node!5707 (left!13935 Conc!5707) (right!14265 Conc!5707) (csize!11644 Int) (cheight!5918 Int)) (Leaf!8442 (xs!8511 IArray!11419) (csize!11645 Int)) (Empty!5707) )
))
(declare-datatypes ((BalanceConc!11358 0))(
  ( (BalanceConc!11359 (c!255289 Conc!5707)) )
))
(declare-datatypes ((tuple2!16702 0))(
  ( (tuple2!16703 (_1!9753 BalanceConc!11358) (_2!9753 BalanceConc!11356)) )
))
(declare-fun lt!547444 () tuple2!16702)

(declare-fun tokens!457 () List!17301)

(declare-fun list!6623 (BalanceConc!11358) List!17301)

(assert (=> b!1574634 (= res!701792 (not (= (list!6623 (_1!9753 lt!547444)) (t!143244 tokens!457))))))

(declare-datatypes ((Unit!26609 0))(
  ( (Unit!26610) )
))
(declare-fun lt!547443 () Unit!26609)

(declare-datatypes ((List!17302 0))(
  ( (Nil!17232) (Cons!17232 (h!22633 Rule!5858) (t!143245 List!17302)) )
))
(declare-fun rules!1846 () List!17302)

(declare-datatypes ((LexerInterface!2658 0))(
  ( (LexerInterfaceExt!2655 (__x!11541 Int)) (Lexer!2656) )
))
(declare-fun thiss!17113 () LexerInterface!2658)

(declare-fun theoremInvertabilityWhenTokenListSeparable!103 (LexerInterface!2658 List!17302 List!17301) Unit!26609)

(assert (=> b!1574634 (= lt!547443 (theoremInvertabilityWhenTokenListSeparable!103 thiss!17113 rules!1846 (t!143244 tokens!457)))))

(declare-fun lt!547441 () List!17299)

(declare-fun lt!547437 () List!17299)

(declare-fun isPrefix!1289 (List!17299 List!17299) Bool)

(assert (=> b!1574634 (isPrefix!1289 lt!547441 lt!547437)))

(declare-fun lt!547438 () Unit!26609)

(declare-fun lt!547439 () List!17299)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!814 (List!17299 List!17299) Unit!26609)

(assert (=> b!1574634 (= lt!547438 (lemmaConcatTwoListThenFirstIsPrefix!814 lt!547441 lt!547439))))

(declare-fun e!1011370 () Bool)

(assert (=> b!1574635 (= e!1011370 (and tp!463499 tp!463504))))

(declare-fun tp!463501 () Bool)

(declare-fun e!1011363 () Bool)

(declare-fun b!1574636 () Bool)

(declare-fun inv!22637 (String!19927) Bool)

(declare-fun inv!22640 (TokenValueInjection!5898) Bool)

(assert (=> b!1574636 (= e!1011363 (and tp!463501 (inv!22637 (tag!3295 (rule!4821 (h!22632 tokens!457)))) (inv!22640 (transformation!3029 (rule!4821 (h!22632 tokens!457)))) e!1011370))))

(declare-fun b!1574637 () Bool)

(assert (=> b!1574637 (= e!1011359 true)))

(declare-fun lt!547435 () List!17301)

(declare-fun seqFromList!1826 (List!17301) BalanceConc!11358)

(declare-fun $colon$colon!257 (List!17301 Token!5624) List!17301)

(assert (=> b!1574637 (= lt!547435 (list!6623 (seqFromList!1826 ($colon$colon!257 (t!143244 (t!143244 tokens!457)) (h!22632 (t!143244 tokens!457))))))))

(declare-fun e!1011366 () Bool)

(declare-fun e!1011361 () Bool)

(declare-fun b!1574638 () Bool)

(declare-fun tp!463503 () Bool)

(declare-fun inv!22641 (Token!5624) Bool)

(assert (=> b!1574638 (= e!1011366 (and (inv!22641 (h!22632 tokens!457)) e!1011361 tp!463503))))

(declare-fun tp!463498 () Bool)

(declare-fun b!1574639 () Bool)

(assert (=> b!1574639 (= e!1011360 (and tp!463498 (inv!22637 (tag!3295 (h!22633 rules!1846))) (inv!22640 (transformation!3029 (h!22633 rules!1846))) e!1011364))))

(declare-fun b!1574640 () Bool)

(declare-fun res!701795 () Bool)

(declare-fun e!1011365 () Bool)

(assert (=> b!1574640 (=> (not res!701795) (not e!1011365))))

(declare-fun rulesInvariant!2327 (LexerInterface!2658 List!17302) Bool)

(assert (=> b!1574640 (= res!701795 (rulesInvariant!2327 thiss!17113 rules!1846))))

(declare-fun b!1574641 () Bool)

(declare-fun res!701798 () Bool)

(assert (=> b!1574641 (=> (not res!701798) (not e!1011365))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!351 (LexerInterface!2658 List!17301 List!17302) Bool)

(assert (=> b!1574641 (= res!701798 (tokensListTwoByTwoPredicateSeparableList!351 thiss!17113 tokens!457 rules!1846))))

(declare-fun res!701797 () Bool)

(assert (=> start!146970 (=> (not res!701797) (not e!1011365))))

(get-info :version)

(assert (=> start!146970 (= res!701797 ((_ is Lexer!2656) thiss!17113))))

(assert (=> start!146970 e!1011365))

(assert (=> start!146970 true))

(assert (=> start!146970 e!1011358))

(assert (=> start!146970 e!1011366))

(declare-fun b!1574642 () Bool)

(assert (=> b!1574642 (= e!1011365 e!1011368)))

(declare-fun res!701793 () Bool)

(assert (=> b!1574642 (=> (not res!701793) (not e!1011368))))

(declare-fun lt!547440 () List!17299)

(assert (=> b!1574642 (= res!701793 (= lt!547440 lt!547437))))

(declare-fun ++!4465 (List!17299 List!17299) List!17299)

(assert (=> b!1574642 (= lt!547437 (++!4465 lt!547441 lt!547439))))

(declare-fun lt!547442 () BalanceConc!11356)

(declare-fun list!6624 (BalanceConc!11356) List!17299)

(assert (=> b!1574642 (= lt!547440 (list!6624 lt!547442))))

(declare-fun lt!547436 () BalanceConc!11356)

(assert (=> b!1574642 (= lt!547439 (list!6624 lt!547436))))

(declare-fun charsOf!1678 (Token!5624) BalanceConc!11356)

(assert (=> b!1574642 (= lt!547441 (list!6624 (charsOf!1678 (h!22632 tokens!457))))))

(declare-fun lex!1142 (LexerInterface!2658 List!17302 BalanceConc!11356) tuple2!16702)

(assert (=> b!1574642 (= lt!547444 (lex!1142 thiss!17113 rules!1846 lt!547436))))

(declare-fun print!1189 (LexerInterface!2658 BalanceConc!11358) BalanceConc!11356)

(assert (=> b!1574642 (= lt!547436 (print!1189 thiss!17113 (seqFromList!1826 (t!143244 tokens!457))))))

(assert (=> b!1574642 (= lt!547442 (print!1189 thiss!17113 (seqFromList!1826 tokens!457)))))

(declare-fun b!1574643 () Bool)

(declare-fun res!701796 () Bool)

(assert (=> b!1574643 (=> (not res!701796) (not e!1011365))))

(assert (=> b!1574643 (= res!701796 (and (not ((_ is Nil!17231) tokens!457)) (not ((_ is Nil!17231) (t!143244 tokens!457)))))))

(declare-fun tp!463506 () Bool)

(declare-fun b!1574644 () Bool)

(declare-fun inv!21 (TokenValue!3119) Bool)

(assert (=> b!1574644 (= e!1011361 (and (inv!21 (value!95999 (h!22632 tokens!457))) e!1011363 tp!463506))))

(declare-fun b!1574645 () Bool)

(declare-fun res!701794 () Bool)

(assert (=> b!1574645 (=> (not res!701794) (not e!1011365))))

(declare-fun rulesProduceEachTokenIndividuallyList!860 (LexerInterface!2658 List!17302 List!17301) Bool)

(assert (=> b!1574645 (= res!701794 (rulesProduceEachTokenIndividuallyList!860 thiss!17113 rules!1846 tokens!457))))

(declare-fun b!1574646 () Bool)

(declare-fun res!701791 () Bool)

(assert (=> b!1574646 (=> (not res!701791) (not e!1011365))))

(declare-fun isEmpty!10287 (List!17302) Bool)

(assert (=> b!1574646 (= res!701791 (not (isEmpty!10287 rules!1846)))))

(assert (= (and start!146970 res!701797) b!1574646))

(assert (= (and b!1574646 res!701791) b!1574640))

(assert (= (and b!1574640 res!701795) b!1574645))

(assert (= (and b!1574645 res!701794) b!1574641))

(assert (= (and b!1574641 res!701798) b!1574643))

(assert (= (and b!1574643 res!701796) b!1574642))

(assert (= (and b!1574642 res!701793) b!1574634))

(assert (= (and b!1574634 (not res!701792)) b!1574637))

(assert (= b!1574639 b!1574632))

(assert (= b!1574633 b!1574639))

(assert (= (and start!146970 ((_ is Cons!17232) rules!1846)) b!1574633))

(assert (= b!1574636 b!1574635))

(assert (= b!1574644 b!1574636))

(assert (= b!1574638 b!1574644))

(assert (= (and start!146970 ((_ is Cons!17231) tokens!457)) b!1574638))

(declare-fun m!1853567 () Bool)

(assert (=> b!1574637 m!1853567))

(assert (=> b!1574637 m!1853567))

(declare-fun m!1853569 () Bool)

(assert (=> b!1574637 m!1853569))

(assert (=> b!1574637 m!1853569))

(declare-fun m!1853571 () Bool)

(assert (=> b!1574637 m!1853571))

(declare-fun m!1853573 () Bool)

(assert (=> b!1574636 m!1853573))

(declare-fun m!1853575 () Bool)

(assert (=> b!1574636 m!1853575))

(declare-fun m!1853577 () Bool)

(assert (=> b!1574642 m!1853577))

(declare-fun m!1853579 () Bool)

(assert (=> b!1574642 m!1853579))

(declare-fun m!1853581 () Bool)

(assert (=> b!1574642 m!1853581))

(declare-fun m!1853583 () Bool)

(assert (=> b!1574642 m!1853583))

(declare-fun m!1853585 () Bool)

(assert (=> b!1574642 m!1853585))

(assert (=> b!1574642 m!1853577))

(declare-fun m!1853587 () Bool)

(assert (=> b!1574642 m!1853587))

(assert (=> b!1574642 m!1853579))

(declare-fun m!1853589 () Bool)

(assert (=> b!1574642 m!1853589))

(declare-fun m!1853591 () Bool)

(assert (=> b!1574642 m!1853591))

(assert (=> b!1574642 m!1853589))

(declare-fun m!1853593 () Bool)

(assert (=> b!1574642 m!1853593))

(declare-fun m!1853595 () Bool)

(assert (=> b!1574642 m!1853595))

(declare-fun m!1853597 () Bool)

(assert (=> b!1574639 m!1853597))

(declare-fun m!1853599 () Bool)

(assert (=> b!1574639 m!1853599))

(declare-fun m!1853601 () Bool)

(assert (=> b!1574644 m!1853601))

(declare-fun m!1853603 () Bool)

(assert (=> b!1574640 m!1853603))

(declare-fun m!1853605 () Bool)

(assert (=> b!1574645 m!1853605))

(declare-fun m!1853607 () Bool)

(assert (=> b!1574641 m!1853607))

(declare-fun m!1853609 () Bool)

(assert (=> b!1574634 m!1853609))

(declare-fun m!1853611 () Bool)

(assert (=> b!1574634 m!1853611))

(declare-fun m!1853613 () Bool)

(assert (=> b!1574634 m!1853613))

(declare-fun m!1853615 () Bool)

(assert (=> b!1574634 m!1853615))

(declare-fun m!1853617 () Bool)

(assert (=> b!1574638 m!1853617))

(declare-fun m!1853619 () Bool)

(assert (=> b!1574646 m!1853619))

(check-sat (not b!1574633) (not b_next!43035) (not b_next!43037) (not b!1574638) b_and!110167 (not b!1574634) b_and!110165 (not b!1574646) (not b!1574642) b_and!110171 (not b_next!43033) (not b!1574641) (not b_next!43031) (not b!1574644) (not b!1574640) b_and!110169 (not b!1574636) (not b!1574639) (not b!1574645) (not b!1574637))
(check-sat (not b_next!43035) (not b_next!43037) b_and!110167 b_and!110169 b_and!110165 b_and!110171 (not b_next!43033) (not b_next!43031))
