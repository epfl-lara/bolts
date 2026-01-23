; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!511020 () Bool)

(assert start!511020)

(declare-fun b!4883687 () Bool)

(declare-fun b_free!131083 () Bool)

(declare-fun b_next!131873 () Bool)

(assert (=> b!4883687 (= b_free!131083 (not b_next!131873))))

(declare-fun tp!1374257 () Bool)

(declare-fun b_and!343915 () Bool)

(assert (=> b!4883687 (= tp!1374257 b_and!343915)))

(declare-fun b_free!131085 () Bool)

(declare-fun b_next!131875 () Bool)

(assert (=> b!4883687 (= b_free!131085 (not b_next!131875))))

(declare-fun tp!1374259 () Bool)

(declare-fun b_and!343917 () Bool)

(assert (=> b!4883687 (= tp!1374259 b_and!343917)))

(declare-fun b!4883682 () Bool)

(declare-fun e!3052449 () Bool)

(declare-fun e!3052443 () Bool)

(assert (=> b!4883682 (= e!3052449 (not e!3052443))))

(declare-fun res!2084931 () Bool)

(assert (=> b!4883682 (=> res!2084931 e!3052443)))

(declare-datatypes ((C!26544 0))(
  ( (C!26545 (val!22606 Int)) )
))
(declare-datatypes ((List!56299 0))(
  ( (Nil!56175) (Cons!56175 (h!62623 C!26544) (t!364945 List!56299)) )
))
(declare-datatypes ((IArray!29393 0))(
  ( (IArray!29394 (innerList!14754 List!56299)) )
))
(declare-datatypes ((Conc!14666 0))(
  ( (Node!14666 (left!40809 Conc!14666) (right!41139 Conc!14666) (csize!29562 Int) (cheight!14877 Int)) (Leaf!24432 (xs!17982 IArray!29393) (csize!29563 Int)) (Empty!14666) )
))
(declare-datatypes ((BalanceConc!28762 0))(
  ( (BalanceConc!28763 (c!830475 Conc!14666)) )
))
(declare-datatypes ((List!56300 0))(
  ( (Nil!56176) (Cons!56176 (h!62624 (_ BitVec 16)) (t!364946 List!56300)) )
))
(declare-datatypes ((TokenValue!8408 0))(
  ( (FloatLiteralValue!16816 (text!59301 List!56300)) (TokenValueExt!8407 (__x!34109 Int)) (Broken!42040 (value!259919 List!56300)) (Object!8531) (End!8408) (Def!8408) (Underscore!8408) (Match!8408) (Else!8408) (Error!8408) (Case!8408) (If!8408) (Extends!8408) (Abstract!8408) (Class!8408) (Val!8408) (DelimiterValue!16816 (del!8468 List!56300)) (KeywordValue!8414 (value!259920 List!56300)) (CommentValue!16816 (value!259921 List!56300)) (WhitespaceValue!16816 (value!259922 List!56300)) (IndentationValue!8408 (value!259923 List!56300)) (String!63481) (Int32!8408) (Broken!42041 (value!259924 List!56300)) (Boolean!8409) (Unit!146165) (OperatorValue!8411 (op!8468 List!56300)) (IdentifierValue!16816 (value!259925 List!56300)) (IdentifierValue!16817 (value!259926 List!56300)) (WhitespaceValue!16817 (value!259927 List!56300)) (True!16816) (False!16816) (Broken!42042 (value!259928 List!56300)) (Broken!42043 (value!259929 List!56300)) (True!16817) (RightBrace!8408) (RightBracket!8408) (Colon!8408) (Null!8408) (Comma!8408) (LeftBracket!8408) (False!16817) (LeftBrace!8408) (ImaginaryLiteralValue!8408 (text!59302 List!56300)) (StringLiteralValue!25224 (value!259930 List!56300)) (EOFValue!8408 (value!259931 List!56300)) (IdentValue!8408 (value!259932 List!56300)) (DelimiterValue!16817 (value!259933 List!56300)) (DedentValue!8408 (value!259934 List!56300)) (NewLineValue!8408 (value!259935 List!56300)) (IntegerValue!25224 (value!259936 (_ BitVec 32)) (text!59303 List!56300)) (IntegerValue!25225 (value!259937 Int) (text!59304 List!56300)) (Times!8408) (Or!8408) (Equal!8408) (Minus!8408) (Broken!42044 (value!259938 List!56300)) (And!8408) (Div!8408) (LessEqual!8408) (Mod!8408) (Concat!21581) (Not!8408) (Plus!8408) (SpaceValue!8408 (value!259939 List!56300)) (IntegerValue!25226 (value!259940 Int) (text!59305 List!56300)) (StringLiteralValue!25225 (text!59306 List!56300)) (FloatLiteralValue!16817 (text!59307 List!56300)) (BytesLiteralValue!8408 (value!259941 List!56300)) (CommentValue!16817 (value!259942 List!56300)) (StringLiteralValue!25226 (value!259943 List!56300)) (ErrorTokenValue!8408 (msg!8469 List!56300)) )
))
(declare-datatypes ((String!63482 0))(
  ( (String!63483 (value!259944 String)) )
))
(declare-datatypes ((Regex!13173 0))(
  ( (ElementMatch!13173 (c!830476 C!26544)) (Concat!21582 (regOne!26858 Regex!13173) (regTwo!26858 Regex!13173)) (EmptyExpr!13173) (Star!13173 (reg!13502 Regex!13173)) (EmptyLang!13173) (Union!13173 (regOne!26859 Regex!13173) (regTwo!26859 Regex!13173)) )
))
(declare-datatypes ((TokenValueInjection!16124 0))(
  ( (TokenValueInjection!16125 (toValue!10985 Int) (toChars!10844 Int)) )
))
(declare-datatypes ((Rule!15996 0))(
  ( (Rule!15997 (regex!8098 Regex!13173) (tag!8962 String!63482) (isSeparator!8098 Bool) (transformation!8098 TokenValueInjection!16124)) )
))
(declare-datatypes ((List!56301 0))(
  ( (Nil!56177) (Cons!56177 (h!62625 Rule!15996) (t!364947 List!56301)) )
))
(declare-fun rulesArg!165 () List!56301)

(get-info :version)

(assert (=> b!4883682 (= res!2084931 (or (and ((_ is Cons!56177) rulesArg!165) ((_ is Nil!56177) (t!364947 rulesArg!165))) (not ((_ is Cons!56177) rulesArg!165))))))

(declare-fun lt!2000631 () List!56299)

(declare-fun isPrefix!4820 (List!56299 List!56299) Bool)

(assert (=> b!4883682 (isPrefix!4820 lt!2000631 lt!2000631)))

(declare-datatypes ((Unit!146166 0))(
  ( (Unit!146167) )
))
(declare-fun lt!2000628 () Unit!146166)

(declare-fun lemmaIsPrefixRefl!3217 (List!56299 List!56299) Unit!146166)

(assert (=> b!4883682 (= lt!2000628 (lemmaIsPrefixRefl!3217 lt!2000631 lt!2000631))))

(declare-fun input!1236 () BalanceConc!28762)

(declare-fun list!17623 (BalanceConc!28762) List!56299)

(assert (=> b!4883682 (= lt!2000631 (list!17623 input!1236))))

(declare-fun b!4883683 () Bool)

(declare-fun res!2084935 () Bool)

(assert (=> b!4883683 (=> (not res!2084935) (not e!3052449))))

(declare-fun isEmpty!30099 (List!56301) Bool)

(assert (=> b!4883683 (= res!2084935 (not (isEmpty!30099 rulesArg!165)))))

(declare-fun b!4883684 () Bool)

(declare-fun e!3052450 () Bool)

(declare-fun tp!1374258 () Bool)

(declare-fun inv!72265 (Conc!14666) Bool)

(assert (=> b!4883684 (= e!3052450 (and (inv!72265 (c!830475 input!1236)) tp!1374258))))

(declare-fun b!4883686 () Bool)

(declare-fun e!3052444 () Bool)

(assert (=> b!4883686 (= e!3052444 true)))

(declare-datatypes ((LexerInterface!7690 0))(
  ( (LexerInterfaceExt!7687 (__x!34110 Int)) (Lexer!7688) )
))
(declare-fun thiss!14805 () LexerInterface!7690)

(declare-datatypes ((Token!14764 0))(
  ( (Token!14765 (value!259945 TokenValue!8408) (rule!11260 Rule!15996) (size!37017 Int) (originalCharacters!8413 List!56299)) )
))
(declare-datatypes ((tuple2!60088 0))(
  ( (tuple2!60089 (_1!33347 Token!14764) (_2!33347 List!56299)) )
))
(declare-datatypes ((Option!13879 0))(
  ( (None!13878) (Some!13878 (v!49828 tuple2!60088)) )
))
(declare-fun lt!2000632 () Option!13879)

(declare-fun maxPrefixZipper!601 (LexerInterface!7690 List!56301 List!56299) Option!13879)

(assert (=> b!4883686 (= lt!2000632 (maxPrefixZipper!601 thiss!14805 rulesArg!165 lt!2000631))))

(declare-fun e!3052445 () Bool)

(assert (=> b!4883687 (= e!3052445 (and tp!1374257 tp!1374259))))

(declare-fun b!4883688 () Bool)

(assert (=> b!4883688 (= e!3052443 e!3052444)))

(declare-fun res!2084934 () Bool)

(assert (=> b!4883688 (=> res!2084934 e!3052444)))

(declare-datatypes ((tuple2!60090 0))(
  ( (tuple2!60091 (_1!33348 Token!14764) (_2!33348 BalanceConc!28762)) )
))
(declare-datatypes ((Option!13880 0))(
  ( (None!13879) (Some!13879 (v!49829 tuple2!60090)) )
))
(declare-fun lt!2000629 () Option!13880)

(declare-fun lt!2000630 () Option!13880)

(assert (=> b!4883688 (= res!2084934 (or (and ((_ is None!13879) lt!2000629) ((_ is None!13879) lt!2000630)) (not ((_ is None!13879) lt!2000630))))))

(declare-fun maxPrefixZipperSequence!1259 (LexerInterface!7690 List!56301 BalanceConc!28762) Option!13880)

(assert (=> b!4883688 (= lt!2000630 (maxPrefixZipperSequence!1259 thiss!14805 (t!364947 rulesArg!165) input!1236))))

(declare-fun maxPrefixOneRuleZipperSequence!624 (LexerInterface!7690 Rule!15996 BalanceConc!28762) Option!13880)

(assert (=> b!4883688 (= lt!2000629 (maxPrefixOneRuleZipperSequence!624 thiss!14805 (h!62625 rulesArg!165) input!1236))))

(declare-fun res!2084932 () Bool)

(assert (=> start!511020 (=> (not res!2084932) (not e!3052449))))

(assert (=> start!511020 (= res!2084932 ((_ is Lexer!7688) thiss!14805))))

(assert (=> start!511020 e!3052449))

(assert (=> start!511020 true))

(declare-fun e!3052448 () Bool)

(assert (=> start!511020 e!3052448))

(declare-fun inv!72266 (BalanceConc!28762) Bool)

(assert (=> start!511020 (and (inv!72266 input!1236) e!3052450)))

(declare-fun b!4883685 () Bool)

(declare-fun res!2084933 () Bool)

(assert (=> b!4883685 (=> (not res!2084933) (not e!3052449))))

(declare-fun rulesValidInductive!3077 (LexerInterface!7690 List!56301) Bool)

(assert (=> b!4883685 (= res!2084933 (rulesValidInductive!3077 thiss!14805 rulesArg!165))))

(declare-fun b!4883689 () Bool)

(declare-fun e!3052447 () Bool)

(declare-fun tp!1374260 () Bool)

(declare-fun inv!72261 (String!63482) Bool)

(declare-fun inv!72267 (TokenValueInjection!16124) Bool)

(assert (=> b!4883689 (= e!3052447 (and tp!1374260 (inv!72261 (tag!8962 (h!62625 rulesArg!165))) (inv!72267 (transformation!8098 (h!62625 rulesArg!165))) e!3052445))))

(declare-fun b!4883690 () Bool)

(declare-fun tp!1374261 () Bool)

(assert (=> b!4883690 (= e!3052448 (and e!3052447 tp!1374261))))

(assert (= (and start!511020 res!2084932) b!4883685))

(assert (= (and b!4883685 res!2084933) b!4883683))

(assert (= (and b!4883683 res!2084935) b!4883682))

(assert (= (and b!4883682 (not res!2084931)) b!4883688))

(assert (= (and b!4883688 (not res!2084934)) b!4883686))

(assert (= b!4883689 b!4883687))

(assert (= b!4883690 b!4883689))

(assert (= (and start!511020 ((_ is Cons!56177) rulesArg!165)) b!4883690))

(assert (= start!511020 b!4883684))

(declare-fun m!5887644 () Bool)

(assert (=> b!4883689 m!5887644))

(declare-fun m!5887646 () Bool)

(assert (=> b!4883689 m!5887646))

(declare-fun m!5887648 () Bool)

(assert (=> b!4883685 m!5887648))

(declare-fun m!5887650 () Bool)

(assert (=> start!511020 m!5887650))

(declare-fun m!5887652 () Bool)

(assert (=> b!4883684 m!5887652))

(declare-fun m!5887654 () Bool)

(assert (=> b!4883682 m!5887654))

(declare-fun m!5887656 () Bool)

(assert (=> b!4883682 m!5887656))

(declare-fun m!5887658 () Bool)

(assert (=> b!4883682 m!5887658))

(declare-fun m!5887660 () Bool)

(assert (=> b!4883683 m!5887660))

(declare-fun m!5887662 () Bool)

(assert (=> b!4883686 m!5887662))

(declare-fun m!5887664 () Bool)

(assert (=> b!4883688 m!5887664))

(declare-fun m!5887666 () Bool)

(assert (=> b!4883688 m!5887666))

(check-sat (not b!4883685) (not b_next!131875) (not b!4883689) (not b!4883683) (not start!511020) (not b_next!131873) b_and!343915 (not b!4883684) (not b!4883688) (not b!4883682) (not b!4883690) (not b!4883686) b_and!343917)
(check-sat b_and!343917 b_and!343915 (not b_next!131873) (not b_next!131875))
