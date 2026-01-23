; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!101336 () Bool)

(assert start!101336)

(declare-fun b!1158590 () Bool)

(declare-fun e!741374 () Bool)

(assert (=> b!1158590 (= e!741374 true)))

(declare-fun b!1158589 () Bool)

(declare-fun e!741373 () Bool)

(assert (=> b!1158589 (= e!741373 e!741374)))

(declare-fun b!1158575 () Bool)

(assert (=> b!1158575 e!741373))

(assert (= b!1158589 b!1158590))

(assert (= b!1158575 b!1158589))

(declare-fun b!1158569 () Bool)

(declare-fun res!521711 () Bool)

(declare-fun e!741364 () Bool)

(assert (=> b!1158569 (=> res!521711 e!741364)))

(declare-datatypes ((List!11343 0))(
  ( (Nil!11319) (Cons!11319 (h!16720 (_ BitVec 16)) (t!109324 List!11343)) )
))
(declare-datatypes ((TokenValue!2028 0))(
  ( (FloatLiteralValue!4056 (text!14641 List!11343)) (TokenValueExt!2027 (__x!7767 Int)) (Broken!10140 (value!63889 List!11343)) (Object!2051) (End!2028) (Def!2028) (Underscore!2028) (Match!2028) (Else!2028) (Error!2028) (Case!2028) (If!2028) (Extends!2028) (Abstract!2028) (Class!2028) (Val!2028) (DelimiterValue!4056 (del!2088 List!11343)) (KeywordValue!2034 (value!63890 List!11343)) (CommentValue!4056 (value!63891 List!11343)) (WhitespaceValue!4056 (value!63892 List!11343)) (IndentationValue!2028 (value!63893 List!11343)) (String!13729) (Int32!2028) (Broken!10141 (value!63894 List!11343)) (Boolean!2029) (Unit!17331) (OperatorValue!2031 (op!2088 List!11343)) (IdentifierValue!4056 (value!63895 List!11343)) (IdentifierValue!4057 (value!63896 List!11343)) (WhitespaceValue!4057 (value!63897 List!11343)) (True!4056) (False!4056) (Broken!10142 (value!63898 List!11343)) (Broken!10143 (value!63899 List!11343)) (True!4057) (RightBrace!2028) (RightBracket!2028) (Colon!2028) (Null!2028) (Comma!2028) (LeftBracket!2028) (False!4057) (LeftBrace!2028) (ImaginaryLiteralValue!2028 (text!14642 List!11343)) (StringLiteralValue!6084 (value!63900 List!11343)) (EOFValue!2028 (value!63901 List!11343)) (IdentValue!2028 (value!63902 List!11343)) (DelimiterValue!4057 (value!63903 List!11343)) (DedentValue!2028 (value!63904 List!11343)) (NewLineValue!2028 (value!63905 List!11343)) (IntegerValue!6084 (value!63906 (_ BitVec 32)) (text!14643 List!11343)) (IntegerValue!6085 (value!63907 Int) (text!14644 List!11343)) (Times!2028) (Or!2028) (Equal!2028) (Minus!2028) (Broken!10144 (value!63908 List!11343)) (And!2028) (Div!2028) (LessEqual!2028) (Mod!2028) (Concat!5260) (Not!2028) (Plus!2028) (SpaceValue!2028 (value!63909 List!11343)) (IntegerValue!6086 (value!63910 Int) (text!14645 List!11343)) (StringLiteralValue!6085 (text!14646 List!11343)) (FloatLiteralValue!4057 (text!14647 List!11343)) (BytesLiteralValue!2028 (value!63911 List!11343)) (CommentValue!4057 (value!63912 List!11343)) (StringLiteralValue!6086 (value!63913 List!11343)) (ErrorTokenValue!2028 (msg!2089 List!11343)) )
))
(declare-datatypes ((C!6782 0))(
  ( (C!6783 (val!3647 Int)) )
))
(declare-datatypes ((Regex!3232 0))(
  ( (ElementMatch!3232 (c!194141 C!6782)) (Concat!5261 (regOne!6976 Regex!3232) (regTwo!6976 Regex!3232)) (EmptyExpr!3232) (Star!3232 (reg!3561 Regex!3232)) (EmptyLang!3232) (Union!3232 (regOne!6977 Regex!3232) (regTwo!6977 Regex!3232)) )
))
(declare-datatypes ((String!13730 0))(
  ( (String!13731 (value!63914 String)) )
))
(declare-datatypes ((List!11344 0))(
  ( (Nil!11320) (Cons!11320 (h!16721 C!6782) (t!109325 List!11344)) )
))
(declare-datatypes ((IArray!7377 0))(
  ( (IArray!7378 (innerList!3746 List!11344)) )
))
(declare-datatypes ((Conc!3686 0))(
  ( (Node!3686 (left!9875 Conc!3686) (right!10205 Conc!3686) (csize!7602 Int) (cheight!3897 Int)) (Leaf!5678 (xs!6391 IArray!7377) (csize!7603 Int)) (Empty!3686) )
))
(declare-datatypes ((BalanceConc!7394 0))(
  ( (BalanceConc!7395 (c!194142 Conc!3686)) )
))
(declare-datatypes ((TokenValueInjection!3756 0))(
  ( (TokenValueInjection!3757 (toValue!3063 Int) (toChars!2922 Int)) )
))
(declare-datatypes ((Rule!3724 0))(
  ( (Rule!3725 (regex!1962 Regex!3232) (tag!2224 String!13730) (isSeparator!1962 Bool) (transformation!1962 TokenValueInjection!3756)) )
))
(declare-datatypes ((Token!3586 0))(
  ( (Token!3587 (value!63915 TokenValue!2028) (rule!3383 Rule!3724) (size!8902 Int) (originalCharacters!2516 List!11344)) )
))
(declare-datatypes ((List!11345 0))(
  ( (Nil!11321) (Cons!11321 (h!16722 Token!3586) (t!109326 List!11345)) )
))
(declare-datatypes ((IArray!7379 0))(
  ( (IArray!7380 (innerList!3747 List!11345)) )
))
(declare-datatypes ((Conc!3687 0))(
  ( (Node!3687 (left!9876 Conc!3687) (right!10206 Conc!3687) (csize!7604 Int) (cheight!3898 Int)) (Leaf!5679 (xs!6392 IArray!7379) (csize!7605 Int)) (Empty!3687) )
))
(declare-datatypes ((BalanceConc!7396 0))(
  ( (BalanceConc!7397 (c!194143 Conc!3687)) )
))
(declare-fun lt!393711 () BalanceConc!7396)

(declare-fun lambda!46948 () Int)

(declare-fun forall!2922 (BalanceConc!7396 Int) Bool)

(assert (=> b!1158569 (= res!521711 (not (forall!2922 lt!393711 lambda!46948)))))

(declare-fun b!1158570 () Bool)

(declare-fun e!741363 () Bool)

(declare-fun e!741359 () Bool)

(assert (=> b!1158570 (= e!741363 e!741359)))

(declare-fun res!521715 () Bool)

(assert (=> b!1158570 (=> (not res!521715) (not e!741359))))

(declare-datatypes ((List!11346 0))(
  ( (Nil!11322) (Cons!11322 (h!16723 Rule!3724) (t!109327 List!11346)) )
))
(declare-datatypes ((PrintableTokens!610 0))(
  ( (PrintableTokens!611 (rules!9449 List!11346) (tokens!1561 BalanceConc!7396)) )
))
(declare-fun thiss!10527 () PrintableTokens!610)

(declare-fun lt!393713 () List!11345)

(declare-datatypes ((LexerInterface!1657 0))(
  ( (LexerInterfaceExt!1654 (__x!7768 Int)) (Lexer!1655) )
))
(declare-fun rulesProduceIndividualToken!694 (LexerInterface!1657 List!11346 Token!3586) Bool)

(assert (=> b!1158570 (= res!521715 (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 lt!393713)))))

(declare-fun b!1158571 () Bool)

(declare-fun e!741358 () Bool)

(declare-fun e!741368 () Bool)

(assert (=> b!1158571 (= e!741358 e!741368)))

(declare-fun res!521716 () Bool)

(assert (=> b!1158571 (=> (not res!521716) (not e!741368))))

(declare-fun rulesInvariant!1531 (LexerInterface!1657 List!11346) Bool)

(assert (=> b!1158571 (= res!521716 (rulesInvariant!1531 Lexer!1655 (rules!9449 thiss!10527)))))

(declare-datatypes ((Unit!17332 0))(
  ( (Unit!17333) )
))
(declare-fun lt!393712 () Unit!17332)

(declare-fun lemmaInvariant!149 (PrintableTokens!610) Unit!17332)

(assert (=> b!1158571 (= lt!393712 (lemmaInvariant!149 thiss!10527))))

(declare-fun b!1158572 () Bool)

(declare-fun res!521710 () Bool)

(assert (=> b!1158572 (=> (not res!521710) (not e!741358))))

(declare-fun to!267 () Int)

(declare-fun size!8903 (BalanceConc!7396) Int)

(assert (=> b!1158572 (= res!521710 (<= to!267 (size!8903 (tokens!1561 thiss!10527))))))

(declare-fun b!1158573 () Bool)

(declare-fun isBalanced!1042 (Conc!3687) Bool)

(assert (=> b!1158573 (= e!741364 (isBalanced!1042 (c!194143 (tokens!1561 thiss!10527))))))

(declare-fun res!521713 () Bool)

(assert (=> start!101336 (=> (not res!521713) (not e!741358))))

(declare-fun from!787 () Int)

(assert (=> start!101336 (= res!521713 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> start!101336 e!741358))

(assert (=> start!101336 true))

(declare-fun e!741367 () Bool)

(declare-fun inv!14878 (PrintableTokens!610) Bool)

(assert (=> start!101336 (and (inv!14878 thiss!10527) e!741367)))

(declare-fun b!1158574 () Bool)

(declare-fun tp!333510 () Bool)

(declare-fun e!741362 () Bool)

(declare-fun inv!14879 (BalanceConc!7396) Bool)

(assert (=> b!1158574 (= e!741367 (and tp!333510 (inv!14879 (tokens!1561 thiss!10527)) e!741362))))

(declare-fun e!741361 () Bool)

(assert (=> b!1158575 (= e!741368 (not e!741361))))

(declare-fun res!521714 () Bool)

(assert (=> b!1158575 (=> res!521714 e!741361)))

(assert (=> b!1158575 (= res!521714 (not (forall!2922 (tokens!1561 thiss!10527) lambda!46948)))))

(declare-fun rulesProduceEachTokenIndividuallyList!525 (LexerInterface!1657 List!11346 List!11345) Bool)

(assert (=> b!1158575 (= (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) lt!393713) e!741363)))

(declare-fun res!521709 () Bool)

(assert (=> b!1158575 (=> res!521709 e!741363)))

(assert (=> b!1158575 (= res!521709 (not (is-Cons!11321 lt!393713)))))

(declare-fun list!4171 (BalanceConc!7396) List!11345)

(assert (=> b!1158575 (= lt!393713 (list!4171 (tokens!1561 thiss!10527)))))

(declare-fun rulesProduceEachTokenIndividually!696 (LexerInterface!1657 List!11346 BalanceConc!7396) Bool)

(assert (=> b!1158575 (= (rulesProduceEachTokenIndividually!696 Lexer!1655 (rules!9449 thiss!10527) (tokens!1561 thiss!10527)) (forall!2922 (tokens!1561 thiss!10527) lambda!46948))))

(declare-fun e!741365 () Bool)

(declare-fun b!1158576 () Bool)

(declare-fun e!741360 () Bool)

(declare-fun lt!393715 () List!11345)

(assert (=> b!1158576 (= e!741365 (= (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) lt!393715) e!741360))))

(declare-fun res!521717 () Bool)

(assert (=> b!1158576 (=> res!521717 e!741360)))

(assert (=> b!1158576 (= res!521717 (not (is-Cons!11321 lt!393715)))))

(declare-fun b!1158577 () Bool)

(assert (=> b!1158577 (= e!741359 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 lt!393713)))))

(declare-fun b!1158578 () Bool)

(declare-fun tp!333509 () Bool)

(declare-fun inv!14880 (Conc!3687) Bool)

(assert (=> b!1158578 (= e!741362 (and (inv!14880 (c!194143 (tokens!1561 thiss!10527))) tp!333509))))

(declare-fun b!1158579 () Bool)

(declare-fun res!521708 () Bool)

(assert (=> b!1158579 (=> (not res!521708) (not e!741365))))

(assert (=> b!1158579 (= res!521708 (= (rulesProduceEachTokenIndividually!696 Lexer!1655 (rules!9449 thiss!10527) lt!393711) (forall!2922 lt!393711 lambda!46948)))))

(declare-fun b!1158580 () Bool)

(assert (=> b!1158580 (= e!741361 e!741364)))

(declare-fun res!521718 () Bool)

(assert (=> b!1158580 (=> res!521718 e!741364)))

(declare-fun forall!2923 (List!11345 Int) Bool)

(assert (=> b!1158580 (= res!521718 (not (forall!2923 lt!393715 lambda!46948)))))

(assert (=> b!1158580 e!741365))

(declare-fun res!521719 () Bool)

(assert (=> b!1158580 (=> (not res!521719) (not e!741365))))

(assert (=> b!1158580 (= res!521719 (forall!2923 lt!393715 lambda!46948))))

(declare-fun lt!393716 () Unit!17332)

(declare-fun lemmaForallSubseq!110 (List!11345 List!11345 Int) Unit!17332)

(assert (=> b!1158580 (= lt!393716 (lemmaForallSubseq!110 lt!393715 lt!393713 lambda!46948))))

(assert (=> b!1158580 (= lt!393715 (list!4171 lt!393711))))

(declare-fun slice!215 (BalanceConc!7396 Int Int) BalanceConc!7396)

(assert (=> b!1158580 (= lt!393711 (slice!215 (tokens!1561 thiss!10527) from!787 to!267))))

(declare-fun subseq!218 (List!11345 List!11345) Bool)

(declare-fun slice!216 (List!11345 Int Int) List!11345)

(assert (=> b!1158580 (subseq!218 (slice!216 lt!393713 from!787 to!267) lt!393713)))

(declare-fun lt!393714 () Unit!17332)

(declare-fun lemmaSliceSubseq!59 (List!11345 Int Int) Unit!17332)

(assert (=> b!1158580 (= lt!393714 (lemmaSliceSubseq!59 lt!393713 from!787 to!267))))

(declare-fun b!1158581 () Bool)

(declare-fun e!741366 () Bool)

(assert (=> b!1158581 (= e!741366 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 lt!393715)))))

(declare-fun b!1158582 () Bool)

(assert (=> b!1158582 (= e!741360 e!741366)))

(declare-fun res!521712 () Bool)

(assert (=> b!1158582 (=> (not res!521712) (not e!741366))))

(assert (=> b!1158582 (= res!521712 (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 lt!393715)))))

(assert (= (and start!101336 res!521713) b!1158572))

(assert (= (and b!1158572 res!521710) b!1158571))

(assert (= (and b!1158571 res!521716) b!1158575))

(assert (= (and b!1158575 (not res!521709)) b!1158570))

(assert (= (and b!1158570 res!521715) b!1158577))

(assert (= (and b!1158575 (not res!521714)) b!1158580))

(assert (= (and b!1158580 res!521719) b!1158579))

(assert (= (and b!1158579 res!521708) b!1158576))

(assert (= (and b!1158576 (not res!521717)) b!1158582))

(assert (= (and b!1158582 res!521712) b!1158581))

(assert (= (and b!1158580 (not res!521718)) b!1158569))

(assert (= (and b!1158569 (not res!521711)) b!1158573))

(assert (= b!1158574 b!1158578))

(assert (= start!101336 b!1158574))

(declare-fun m!1325199 () Bool)

(assert (=> b!1158569 m!1325199))

(declare-fun m!1325201 () Bool)

(assert (=> b!1158574 m!1325201))

(declare-fun m!1325203 () Bool)

(assert (=> b!1158577 m!1325203))

(declare-fun m!1325205 () Bool)

(assert (=> b!1158580 m!1325205))

(declare-fun m!1325207 () Bool)

(assert (=> b!1158580 m!1325207))

(declare-fun m!1325209 () Bool)

(assert (=> b!1158580 m!1325209))

(declare-fun m!1325211 () Bool)

(assert (=> b!1158580 m!1325211))

(declare-fun m!1325213 () Bool)

(assert (=> b!1158580 m!1325213))

(declare-fun m!1325215 () Bool)

(assert (=> b!1158580 m!1325215))

(assert (=> b!1158580 m!1325209))

(declare-fun m!1325217 () Bool)

(assert (=> b!1158580 m!1325217))

(assert (=> b!1158580 m!1325215))

(declare-fun m!1325219 () Bool)

(assert (=> b!1158581 m!1325219))

(declare-fun m!1325221 () Bool)

(assert (=> b!1158571 m!1325221))

(declare-fun m!1325223 () Bool)

(assert (=> b!1158571 m!1325223))

(declare-fun m!1325225 () Bool)

(assert (=> b!1158576 m!1325225))

(declare-fun m!1325227 () Bool)

(assert (=> b!1158572 m!1325227))

(declare-fun m!1325229 () Bool)

(assert (=> b!1158573 m!1325229))

(declare-fun m!1325231 () Bool)

(assert (=> b!1158578 m!1325231))

(declare-fun m!1325233 () Bool)

(assert (=> b!1158570 m!1325233))

(declare-fun m!1325235 () Bool)

(assert (=> start!101336 m!1325235))

(declare-fun m!1325237 () Bool)

(assert (=> b!1158575 m!1325237))

(assert (=> b!1158575 m!1325237))

(declare-fun m!1325239 () Bool)

(assert (=> b!1158575 m!1325239))

(declare-fun m!1325241 () Bool)

(assert (=> b!1158575 m!1325241))

(declare-fun m!1325243 () Bool)

(assert (=> b!1158575 m!1325243))

(declare-fun m!1325245 () Bool)

(assert (=> b!1158579 m!1325245))

(assert (=> b!1158579 m!1325199))

(declare-fun m!1325247 () Bool)

(assert (=> b!1158582 m!1325247))

(push 1)

(assert (not b!1158579))

(assert (not b!1158590))

(assert (not b!1158572))

(assert (not b!1158580))

(assert (not b!1158582))

(assert (not b!1158589))

(assert (not b!1158577))

(assert (not b!1158574))

(assert (not b!1158570))

(assert (not b!1158581))

(assert (not b!1158576))

(assert (not b!1158578))

(assert (not b!1158571))

(assert (not b!1158575))

(assert (not b!1158573))

(assert (not start!101336))

(assert (not b!1158569))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!283217 () Bool)

(declare-fun d!331024 () Bool)

(assert (= bs!283217 (and d!331024 b!1158575)))

(declare-fun lambda!46964 () Int)

(assert (=> bs!283217 (= lambda!46964 lambda!46948)))

(declare-fun b!1158657 () Bool)

(declare-fun e!741428 () Bool)

(assert (=> b!1158657 (= e!741428 true)))

(declare-fun b!1158656 () Bool)

(declare-fun e!741427 () Bool)

(assert (=> b!1158656 (= e!741427 e!741428)))

(declare-fun b!1158655 () Bool)

(declare-fun e!741426 () Bool)

(assert (=> b!1158655 (= e!741426 e!741427)))

(assert (=> d!331024 e!741426))

(assert (= b!1158656 b!1158657))

(assert (= b!1158655 b!1158656))

(assert (= (and d!331024 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158655))

(declare-fun order!6941 () Int)

(declare-fun order!6939 () Int)

(declare-fun dynLambda!4995 (Int Int) Int)

(declare-fun dynLambda!4996 (Int Int) Int)

(assert (=> b!1158657 (< (dynLambda!4995 order!6939 (toValue!3063 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46964))))

(declare-fun order!6943 () Int)

(declare-fun dynLambda!4997 (Int Int) Int)

(assert (=> b!1158657 (< (dynLambda!4997 order!6943 (toChars!2922 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46964))))

(assert (=> d!331024 true))

(declare-fun lt!393737 () Bool)

(assert (=> d!331024 (= lt!393737 (forall!2923 (t!109326 lt!393715) lambda!46964))))

(declare-fun e!741418 () Bool)

(assert (=> d!331024 (= lt!393737 e!741418)))

(declare-fun res!521761 () Bool)

(assert (=> d!331024 (=> res!521761 e!741418)))

(assert (=> d!331024 (= res!521761 (not (is-Cons!11321 (t!109326 lt!393715))))))

(declare-fun isEmpty!6954 (List!11346) Bool)

(assert (=> d!331024 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331024 (= (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 lt!393715)) lt!393737)))

(declare-fun b!1158645 () Bool)

(declare-fun e!741419 () Bool)

(assert (=> b!1158645 (= e!741418 e!741419)))

(declare-fun res!521760 () Bool)

(assert (=> b!1158645 (=> (not res!521760) (not e!741419))))

(assert (=> b!1158645 (= res!521760 (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 (t!109326 lt!393715))))))

(declare-fun b!1158646 () Bool)

(assert (=> b!1158646 (= e!741419 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 (t!109326 lt!393715))))))

(assert (= (and d!331024 (not res!521761)) b!1158645))

(assert (= (and b!1158645 res!521760) b!1158646))

(declare-fun m!1325299 () Bool)

(assert (=> d!331024 m!1325299))

(declare-fun m!1325301 () Bool)

(assert (=> d!331024 m!1325301))

(declare-fun m!1325303 () Bool)

(assert (=> b!1158645 m!1325303))

(declare-fun m!1325305 () Bool)

(assert (=> b!1158646 m!1325305))

(assert (=> b!1158581 d!331024))

(declare-fun d!331026 () Bool)

(declare-fun lt!393742 () Bool)

(declare-fun e!741433 () Bool)

(assert (=> d!331026 (= lt!393742 e!741433)))

(declare-fun res!521769 () Bool)

(assert (=> d!331026 (=> (not res!521769) (not e!741433))))

(declare-datatypes ((tuple2!11988 0))(
  ( (tuple2!11989 (_1!6841 BalanceConc!7396) (_2!6841 BalanceConc!7394)) )
))
(declare-fun lex!687 (LexerInterface!1657 List!11346 BalanceConc!7394) tuple2!11988)

(declare-fun print!624 (LexerInterface!1657 BalanceConc!7396) BalanceConc!7394)

(declare-fun singletonSeq!642 (Token!3586) BalanceConc!7396)

(assert (=> d!331026 (= res!521769 (= (list!4171 (_1!6841 (lex!687 Lexer!1655 (rules!9449 thiss!10527) (print!624 Lexer!1655 (singletonSeq!642 (h!16722 lt!393713)))))) (list!4171 (singletonSeq!642 (h!16722 lt!393713)))))))

(declare-fun e!741434 () Bool)

(assert (=> d!331026 (= lt!393742 e!741434)))

(declare-fun res!521770 () Bool)

(assert (=> d!331026 (=> (not res!521770) (not e!741434))))

(declare-fun lt!393743 () tuple2!11988)

(assert (=> d!331026 (= res!521770 (= (size!8903 (_1!6841 lt!393743)) 1))))

(assert (=> d!331026 (= lt!393743 (lex!687 Lexer!1655 (rules!9449 thiss!10527) (print!624 Lexer!1655 (singletonSeq!642 (h!16722 lt!393713)))))))

(assert (=> d!331026 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331026 (= (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 lt!393713)) lt!393742)))

(declare-fun b!1158666 () Bool)

(declare-fun res!521768 () Bool)

(assert (=> b!1158666 (=> (not res!521768) (not e!741434))))

(declare-fun apply!2411 (BalanceConc!7396 Int) Token!3586)

(assert (=> b!1158666 (= res!521768 (= (apply!2411 (_1!6841 lt!393743) 0) (h!16722 lt!393713)))))

(declare-fun b!1158667 () Bool)

(declare-fun isEmpty!6955 (BalanceConc!7394) Bool)

(assert (=> b!1158667 (= e!741434 (isEmpty!6955 (_2!6841 lt!393743)))))

(declare-fun b!1158668 () Bool)

(assert (=> b!1158668 (= e!741433 (isEmpty!6955 (_2!6841 (lex!687 Lexer!1655 (rules!9449 thiss!10527) (print!624 Lexer!1655 (singletonSeq!642 (h!16722 lt!393713)))))))))

(assert (= (and d!331026 res!521770) b!1158666))

(assert (= (and b!1158666 res!521768) b!1158667))

(assert (= (and d!331026 res!521769) b!1158668))

(declare-fun m!1325307 () Bool)

(assert (=> d!331026 m!1325307))

(declare-fun m!1325309 () Bool)

(assert (=> d!331026 m!1325309))

(assert (=> d!331026 m!1325307))

(assert (=> d!331026 m!1325307))

(declare-fun m!1325311 () Bool)

(assert (=> d!331026 m!1325311))

(declare-fun m!1325313 () Bool)

(assert (=> d!331026 m!1325313))

(assert (=> d!331026 m!1325311))

(declare-fun m!1325315 () Bool)

(assert (=> d!331026 m!1325315))

(assert (=> d!331026 m!1325301))

(declare-fun m!1325317 () Bool)

(assert (=> d!331026 m!1325317))

(declare-fun m!1325319 () Bool)

(assert (=> b!1158666 m!1325319))

(declare-fun m!1325321 () Bool)

(assert (=> b!1158667 m!1325321))

(assert (=> b!1158668 m!1325307))

(assert (=> b!1158668 m!1325307))

(assert (=> b!1158668 m!1325311))

(assert (=> b!1158668 m!1325311))

(assert (=> b!1158668 m!1325315))

(declare-fun m!1325323 () Bool)

(assert (=> b!1158668 m!1325323))

(assert (=> b!1158570 d!331026))

(declare-fun d!331028 () Bool)

(assert (=> d!331028 (subseq!218 (slice!216 lt!393713 from!787 to!267) lt!393713)))

(declare-fun lt!393746 () Unit!17332)

(declare-fun choose!7440 (List!11345 Int Int) Unit!17332)

(assert (=> d!331028 (= lt!393746 (choose!7440 lt!393713 from!787 to!267))))

(declare-fun e!741437 () Bool)

(assert (=> d!331028 e!741437))

(declare-fun res!521773 () Bool)

(assert (=> d!331028 (=> (not res!521773) (not e!741437))))

(assert (=> d!331028 (= res!521773 (and (>= from!787 0) (>= to!267 from!787)))))

(assert (=> d!331028 (= (lemmaSliceSubseq!59 lt!393713 from!787 to!267) lt!393746)))

(declare-fun b!1158671 () Bool)

(declare-fun size!8906 (List!11345) Int)

(assert (=> b!1158671 (= e!741437 (<= to!267 (size!8906 lt!393713)))))

(assert (= (and d!331028 res!521773) b!1158671))

(assert (=> d!331028 m!1325209))

(assert (=> d!331028 m!1325209))

(assert (=> d!331028 m!1325217))

(declare-fun m!1325325 () Bool)

(assert (=> d!331028 m!1325325))

(declare-fun m!1325327 () Bool)

(assert (=> b!1158671 m!1325327))

(assert (=> b!1158580 d!331028))

(declare-fun d!331030 () Bool)

(assert (=> d!331030 (forall!2923 lt!393715 lambda!46948)))

(declare-fun lt!393749 () Unit!17332)

(declare-fun choose!7441 (List!11345 List!11345 Int) Unit!17332)

(assert (=> d!331030 (= lt!393749 (choose!7441 lt!393715 lt!393713 lambda!46948))))

(assert (=> d!331030 (forall!2923 lt!393713 lambda!46948)))

(assert (=> d!331030 (= (lemmaForallSubseq!110 lt!393715 lt!393713 lambda!46948) lt!393749)))

(declare-fun bs!283218 () Bool)

(assert (= bs!283218 d!331030))

(assert (=> bs!283218 m!1325215))

(declare-fun m!1325329 () Bool)

(assert (=> bs!283218 m!1325329))

(declare-fun m!1325331 () Bool)

(assert (=> bs!283218 m!1325331))

(assert (=> b!1158580 d!331030))

(declare-fun d!331032 () Bool)

(declare-fun e!741442 () Bool)

(assert (=> d!331032 e!741442))

(declare-fun res!521780 () Bool)

(assert (=> d!331032 (=> (not res!521780) (not e!741442))))

(declare-fun slice!219 (Conc!3687 Int Int) Conc!3687)

(assert (=> d!331032 (= res!521780 (isBalanced!1042 (slice!219 (c!194143 (tokens!1561 thiss!10527)) from!787 to!267)))))

(declare-fun lt!393752 () BalanceConc!7396)

(assert (=> d!331032 (= lt!393752 (BalanceConc!7397 (slice!219 (c!194143 (tokens!1561 thiss!10527)) from!787 to!267)))))

(declare-fun e!741443 () Bool)

(assert (=> d!331032 e!741443))

(declare-fun res!521782 () Bool)

(assert (=> d!331032 (=> (not res!521782) (not e!741443))))

(assert (=> d!331032 (= res!521782 (and (<= 0 from!787) (<= from!787 to!267)))))

(assert (=> d!331032 (= (slice!215 (tokens!1561 thiss!10527) from!787 to!267) lt!393752)))

(declare-fun b!1158678 () Bool)

(declare-fun res!521781 () Bool)

(assert (=> b!1158678 (=> (not res!521781) (not e!741443))))

(assert (=> b!1158678 (= res!521781 (<= to!267 (size!8903 (tokens!1561 thiss!10527))))))

(declare-fun b!1158679 () Bool)

(assert (=> b!1158679 (= e!741443 (isBalanced!1042 (c!194143 (tokens!1561 thiss!10527))))))

(declare-fun b!1158680 () Bool)

(assert (=> b!1158680 (= e!741442 (= (list!4171 lt!393752) (slice!216 (list!4171 (tokens!1561 thiss!10527)) from!787 to!267)))))

(assert (= (and d!331032 res!521782) b!1158678))

(assert (= (and b!1158678 res!521781) b!1158679))

(assert (= (and d!331032 res!521780) b!1158680))

(declare-fun m!1325333 () Bool)

(assert (=> d!331032 m!1325333))

(assert (=> d!331032 m!1325333))

(declare-fun m!1325335 () Bool)

(assert (=> d!331032 m!1325335))

(assert (=> b!1158678 m!1325227))

(assert (=> b!1158679 m!1325229))

(declare-fun m!1325337 () Bool)

(assert (=> b!1158680 m!1325337))

(assert (=> b!1158680 m!1325241))

(assert (=> b!1158680 m!1325241))

(declare-fun m!1325339 () Bool)

(assert (=> b!1158680 m!1325339))

(assert (=> b!1158580 d!331032))

(declare-fun d!331034 () Bool)

(declare-fun take!52 (List!11345 Int) List!11345)

(declare-fun drop!454 (List!11345 Int) List!11345)

(assert (=> d!331034 (= (slice!216 lt!393713 from!787 to!267) (take!52 (drop!454 lt!393713 from!787) (- to!267 from!787)))))

(declare-fun bs!283219 () Bool)

(assert (= bs!283219 d!331034))

(declare-fun m!1325341 () Bool)

(assert (=> bs!283219 m!1325341))

(assert (=> bs!283219 m!1325341))

(declare-fun m!1325343 () Bool)

(assert (=> bs!283219 m!1325343))

(assert (=> b!1158580 d!331034))

(declare-fun e!741458 () Bool)

(declare-fun b!1158695 () Bool)

(assert (=> b!1158695 (= e!741458 (subseq!218 (t!109326 (slice!216 lt!393713 from!787 to!267)) (t!109326 lt!393713)))))

(declare-fun b!1158694 () Bool)

(declare-fun e!741459 () Bool)

(declare-fun e!741457 () Bool)

(assert (=> b!1158694 (= e!741459 e!741457)))

(declare-fun res!521798 () Bool)

(assert (=> b!1158694 (=> res!521798 e!741457)))

(assert (=> b!1158694 (= res!521798 e!741458)))

(declare-fun res!521796 () Bool)

(assert (=> b!1158694 (=> (not res!521796) (not e!741458))))

(assert (=> b!1158694 (= res!521796 (= (h!16722 (slice!216 lt!393713 from!787 to!267)) (h!16722 lt!393713)))))

(declare-fun b!1158696 () Bool)

(assert (=> b!1158696 (= e!741457 (subseq!218 (slice!216 lt!393713 from!787 to!267) (t!109326 lt!393713)))))

(declare-fun d!331036 () Bool)

(declare-fun res!521795 () Bool)

(declare-fun e!741456 () Bool)

(assert (=> d!331036 (=> res!521795 e!741456)))

(assert (=> d!331036 (= res!521795 (is-Nil!11321 (slice!216 lt!393713 from!787 to!267)))))

(assert (=> d!331036 (= (subseq!218 (slice!216 lt!393713 from!787 to!267) lt!393713) e!741456)))

(declare-fun b!1158693 () Bool)

(assert (=> b!1158693 (= e!741456 e!741459)))

(declare-fun res!521797 () Bool)

(assert (=> b!1158693 (=> (not res!521797) (not e!741459))))

(assert (=> b!1158693 (= res!521797 (is-Cons!11321 lt!393713))))

(assert (= (and d!331036 (not res!521795)) b!1158693))

(assert (= (and b!1158693 res!521797) b!1158694))

(assert (= (and b!1158694 res!521796) b!1158695))

(assert (= (and b!1158694 (not res!521798)) b!1158696))

(declare-fun m!1325345 () Bool)

(assert (=> b!1158695 m!1325345))

(assert (=> b!1158696 m!1325209))

(declare-fun m!1325347 () Bool)

(assert (=> b!1158696 m!1325347))

(assert (=> b!1158580 d!331036))

(declare-fun d!331038 () Bool)

(declare-fun list!4173 (Conc!3687) List!11345)

(assert (=> d!331038 (= (list!4171 lt!393711) (list!4173 (c!194143 lt!393711)))))

(declare-fun bs!283220 () Bool)

(assert (= bs!283220 d!331038))

(declare-fun m!1325349 () Bool)

(assert (=> bs!283220 m!1325349))

(assert (=> b!1158580 d!331038))

(declare-fun d!331040 () Bool)

(declare-fun res!521805 () Bool)

(declare-fun e!741468 () Bool)

(assert (=> d!331040 (=> res!521805 e!741468)))

(assert (=> d!331040 (= res!521805 (is-Nil!11321 lt!393715))))

(assert (=> d!331040 (= (forall!2923 lt!393715 lambda!46948) e!741468)))

(declare-fun b!1158707 () Bool)

(declare-fun e!741469 () Bool)

(assert (=> b!1158707 (= e!741468 e!741469)))

(declare-fun res!521806 () Bool)

(assert (=> b!1158707 (=> (not res!521806) (not e!741469))))

(declare-fun dynLambda!4998 (Int Token!3586) Bool)

(assert (=> b!1158707 (= res!521806 (dynLambda!4998 lambda!46948 (h!16722 lt!393715)))))

(declare-fun b!1158708 () Bool)

(assert (=> b!1158708 (= e!741469 (forall!2923 (t!109326 lt!393715) lambda!46948))))

(assert (= (and d!331040 (not res!521805)) b!1158707))

(assert (= (and b!1158707 res!521806) b!1158708))

(declare-fun b_lambda!34591 () Bool)

(assert (=> (not b_lambda!34591) (not b!1158707)))

(declare-fun m!1325351 () Bool)

(assert (=> b!1158707 m!1325351))

(declare-fun m!1325353 () Bool)

(assert (=> b!1158708 m!1325353))

(assert (=> b!1158580 d!331040))

(declare-fun d!331042 () Bool)

(declare-fun lt!393758 () Bool)

(assert (=> d!331042 (= lt!393758 (forall!2923 (list!4171 lt!393711) lambda!46948))))

(declare-fun forall!2926 (Conc!3687 Int) Bool)

(assert (=> d!331042 (= lt!393758 (forall!2926 (c!194143 lt!393711) lambda!46948))))

(assert (=> d!331042 (= (forall!2922 lt!393711 lambda!46948) lt!393758)))

(declare-fun bs!283221 () Bool)

(assert (= bs!283221 d!331042))

(assert (=> bs!283221 m!1325213))

(assert (=> bs!283221 m!1325213))

(declare-fun m!1325355 () Bool)

(assert (=> bs!283221 m!1325355))

(declare-fun m!1325357 () Bool)

(assert (=> bs!283221 m!1325357))

(assert (=> b!1158569 d!331042))

(declare-fun bs!283223 () Bool)

(declare-fun d!331044 () Bool)

(assert (= bs!283223 (and d!331044 b!1158575)))

(declare-fun lambda!46972 () Int)

(assert (=> bs!283223 (= lambda!46972 lambda!46948)))

(declare-fun bs!283224 () Bool)

(assert (= bs!283224 (and d!331044 d!331024)))

(assert (=> bs!283224 (= lambda!46972 lambda!46964)))

(declare-fun b!1158723 () Bool)

(declare-fun e!741482 () Bool)

(assert (=> b!1158723 (= e!741482 true)))

(declare-fun b!1158722 () Bool)

(declare-fun e!741481 () Bool)

(assert (=> b!1158722 (= e!741481 e!741482)))

(declare-fun b!1158721 () Bool)

(declare-fun e!741480 () Bool)

(assert (=> b!1158721 (= e!741480 e!741481)))

(assert (=> d!331044 e!741480))

(assert (= b!1158722 b!1158723))

(assert (= b!1158721 b!1158722))

(assert (= (and d!331044 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158721))

(assert (=> b!1158723 (< (dynLambda!4995 order!6939 (toValue!3063 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46972))))

(assert (=> b!1158723 (< (dynLambda!4997 order!6943 (toChars!2922 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46972))))

(assert (=> d!331044 true))

(declare-fun e!741479 () Bool)

(assert (=> d!331044 e!741479))

(declare-fun res!521809 () Bool)

(assert (=> d!331044 (=> (not res!521809) (not e!741479))))

(declare-fun lt!393761 () Bool)

(assert (=> d!331044 (= res!521809 (= lt!393761 (forall!2923 (list!4171 lt!393711) lambda!46972)))))

(assert (=> d!331044 (= lt!393761 (forall!2922 lt!393711 lambda!46972))))

(assert (=> d!331044 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331044 (= (rulesProduceEachTokenIndividually!696 Lexer!1655 (rules!9449 thiss!10527) lt!393711) lt!393761)))

(declare-fun b!1158720 () Bool)

(assert (=> b!1158720 (= e!741479 (= lt!393761 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (list!4171 lt!393711))))))

(assert (= (and d!331044 res!521809) b!1158720))

(assert (=> d!331044 m!1325213))

(assert (=> d!331044 m!1325213))

(declare-fun m!1325367 () Bool)

(assert (=> d!331044 m!1325367))

(declare-fun m!1325369 () Bool)

(assert (=> d!331044 m!1325369))

(assert (=> d!331044 m!1325301))

(assert (=> b!1158720 m!1325213))

(assert (=> b!1158720 m!1325213))

(declare-fun m!1325371 () Bool)

(assert (=> b!1158720 m!1325371))

(assert (=> b!1158579 d!331044))

(assert (=> b!1158579 d!331042))

(declare-fun d!331048 () Bool)

(declare-fun c!194150 () Bool)

(assert (=> d!331048 (= c!194150 (is-Node!3687 (c!194143 (tokens!1561 thiss!10527))))))

(declare-fun e!741487 () Bool)

(assert (=> d!331048 (= (inv!14880 (c!194143 (tokens!1561 thiss!10527))) e!741487)))

(declare-fun b!1158730 () Bool)

(declare-fun inv!14884 (Conc!3687) Bool)

(assert (=> b!1158730 (= e!741487 (inv!14884 (c!194143 (tokens!1561 thiss!10527))))))

(declare-fun b!1158731 () Bool)

(declare-fun e!741488 () Bool)

(assert (=> b!1158731 (= e!741487 e!741488)))

(declare-fun res!521812 () Bool)

(assert (=> b!1158731 (= res!521812 (not (is-Leaf!5679 (c!194143 (tokens!1561 thiss!10527)))))))

(assert (=> b!1158731 (=> res!521812 e!741488)))

(declare-fun b!1158732 () Bool)

(declare-fun inv!14885 (Conc!3687) Bool)

(assert (=> b!1158732 (= e!741488 (inv!14885 (c!194143 (tokens!1561 thiss!10527))))))

(assert (= (and d!331048 c!194150) b!1158730))

(assert (= (and d!331048 (not c!194150)) b!1158731))

(assert (= (and b!1158731 (not res!521812)) b!1158732))

(declare-fun m!1325373 () Bool)

(assert (=> b!1158730 m!1325373))

(declare-fun m!1325375 () Bool)

(assert (=> b!1158732 m!1325375))

(assert (=> b!1158578 d!331048))

(declare-fun bs!283225 () Bool)

(declare-fun d!331050 () Bool)

(assert (= bs!283225 (and d!331050 b!1158575)))

(declare-fun lambda!46973 () Int)

(assert (=> bs!283225 (= lambda!46973 lambda!46948)))

(declare-fun bs!283226 () Bool)

(assert (= bs!283226 (and d!331050 d!331024)))

(assert (=> bs!283226 (= lambda!46973 lambda!46964)))

(declare-fun bs!283227 () Bool)

(assert (= bs!283227 (and d!331050 d!331044)))

(assert (=> bs!283227 (= lambda!46973 lambda!46972)))

(declare-fun b!1158737 () Bool)

(declare-fun e!741493 () Bool)

(assert (=> b!1158737 (= e!741493 true)))

(declare-fun b!1158736 () Bool)

(declare-fun e!741492 () Bool)

(assert (=> b!1158736 (= e!741492 e!741493)))

(declare-fun b!1158735 () Bool)

(declare-fun e!741491 () Bool)

(assert (=> b!1158735 (= e!741491 e!741492)))

(assert (=> d!331050 e!741491))

(assert (= b!1158736 b!1158737))

(assert (= b!1158735 b!1158736))

(assert (= (and d!331050 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158735))

(assert (=> b!1158737 (< (dynLambda!4995 order!6939 (toValue!3063 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46973))))

(assert (=> b!1158737 (< (dynLambda!4997 order!6943 (toChars!2922 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46973))))

(assert (=> d!331050 true))

(declare-fun lt!393762 () Bool)

(assert (=> d!331050 (= lt!393762 (forall!2923 (t!109326 lt!393713) lambda!46973))))

(declare-fun e!741489 () Bool)

(assert (=> d!331050 (= lt!393762 e!741489)))

(declare-fun res!521814 () Bool)

(assert (=> d!331050 (=> res!521814 e!741489)))

(assert (=> d!331050 (= res!521814 (not (is-Cons!11321 (t!109326 lt!393713))))))

(assert (=> d!331050 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331050 (= (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 lt!393713)) lt!393762)))

(declare-fun b!1158733 () Bool)

(declare-fun e!741490 () Bool)

(assert (=> b!1158733 (= e!741489 e!741490)))

(declare-fun res!521813 () Bool)

(assert (=> b!1158733 (=> (not res!521813) (not e!741490))))

(assert (=> b!1158733 (= res!521813 (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 (t!109326 lt!393713))))))

(declare-fun b!1158734 () Bool)

(assert (=> b!1158734 (= e!741490 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 (t!109326 lt!393713))))))

(assert (= (and d!331050 (not res!521814)) b!1158733))

(assert (= (and b!1158733 res!521813) b!1158734))

(declare-fun m!1325377 () Bool)

(assert (=> d!331050 m!1325377))

(assert (=> d!331050 m!1325301))

(declare-fun m!1325379 () Bool)

(assert (=> b!1158733 m!1325379))

(declare-fun m!1325381 () Bool)

(assert (=> b!1158734 m!1325381))

(assert (=> b!1158577 d!331050))

(declare-fun bs!283228 () Bool)

(declare-fun d!331052 () Bool)

(assert (= bs!283228 (and d!331052 b!1158575)))

(declare-fun lambda!46974 () Int)

(assert (=> bs!283228 (= lambda!46974 lambda!46948)))

(declare-fun bs!283229 () Bool)

(assert (= bs!283229 (and d!331052 d!331024)))

(assert (=> bs!283229 (= lambda!46974 lambda!46964)))

(declare-fun bs!283230 () Bool)

(assert (= bs!283230 (and d!331052 d!331044)))

(assert (=> bs!283230 (= lambda!46974 lambda!46972)))

(declare-fun bs!283231 () Bool)

(assert (= bs!283231 (and d!331052 d!331050)))

(assert (=> bs!283231 (= lambda!46974 lambda!46973)))

(declare-fun b!1158742 () Bool)

(declare-fun e!741498 () Bool)

(assert (=> b!1158742 (= e!741498 true)))

(declare-fun b!1158741 () Bool)

(declare-fun e!741497 () Bool)

(assert (=> b!1158741 (= e!741497 e!741498)))

(declare-fun b!1158740 () Bool)

(declare-fun e!741496 () Bool)

(assert (=> b!1158740 (= e!741496 e!741497)))

(assert (=> d!331052 e!741496))

(assert (= b!1158741 b!1158742))

(assert (= b!1158740 b!1158741))

(assert (= (and d!331052 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158740))

(assert (=> b!1158742 (< (dynLambda!4995 order!6939 (toValue!3063 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46974))))

(assert (=> b!1158742 (< (dynLambda!4997 order!6943 (toChars!2922 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46974))))

(assert (=> d!331052 true))

(declare-fun lt!393763 () Bool)

(assert (=> d!331052 (= lt!393763 (forall!2923 lt!393715 lambda!46974))))

(declare-fun e!741494 () Bool)

(assert (=> d!331052 (= lt!393763 e!741494)))

(declare-fun res!521816 () Bool)

(assert (=> d!331052 (=> res!521816 e!741494)))

(assert (=> d!331052 (= res!521816 (not (is-Cons!11321 lt!393715)))))

(assert (=> d!331052 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331052 (= (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) lt!393715) lt!393763)))

(declare-fun b!1158738 () Bool)

(declare-fun e!741495 () Bool)

(assert (=> b!1158738 (= e!741494 e!741495)))

(declare-fun res!521815 () Bool)

(assert (=> b!1158738 (=> (not res!521815) (not e!741495))))

(assert (=> b!1158738 (= res!521815 (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 lt!393715)))))

(declare-fun b!1158739 () Bool)

(assert (=> b!1158739 (= e!741495 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 lt!393715)))))

(assert (= (and d!331052 (not res!521816)) b!1158738))

(assert (= (and b!1158738 res!521815) b!1158739))

(declare-fun m!1325383 () Bool)

(assert (=> d!331052 m!1325383))

(assert (=> d!331052 m!1325301))

(assert (=> b!1158738 m!1325247))

(assert (=> b!1158739 m!1325219))

(assert (=> b!1158576 d!331052))

(declare-fun bs!283232 () Bool)

(declare-fun d!331054 () Bool)

(assert (= bs!283232 (and d!331054 b!1158575)))

(declare-fun lambda!46975 () Int)

(assert (=> bs!283232 (= lambda!46975 lambda!46948)))

(declare-fun bs!283233 () Bool)

(assert (= bs!283233 (and d!331054 d!331044)))

(assert (=> bs!283233 (= lambda!46975 lambda!46972)))

(declare-fun bs!283234 () Bool)

(assert (= bs!283234 (and d!331054 d!331052)))

(assert (=> bs!283234 (= lambda!46975 lambda!46974)))

(declare-fun bs!283235 () Bool)

(assert (= bs!283235 (and d!331054 d!331024)))

(assert (=> bs!283235 (= lambda!46975 lambda!46964)))

(declare-fun bs!283236 () Bool)

(assert (= bs!283236 (and d!331054 d!331050)))

(assert (=> bs!283236 (= lambda!46975 lambda!46973)))

(declare-fun b!1158752 () Bool)

(declare-fun e!741506 () Bool)

(assert (=> b!1158752 (= e!741506 true)))

(declare-fun b!1158751 () Bool)

(declare-fun e!741505 () Bool)

(assert (=> b!1158751 (= e!741505 e!741506)))

(declare-fun b!1158750 () Bool)

(declare-fun e!741504 () Bool)

(assert (=> b!1158750 (= e!741504 e!741505)))

(assert (=> d!331054 e!741504))

(assert (= b!1158751 b!1158752))

(assert (= b!1158750 b!1158751))

(assert (= (and d!331054 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158750))

(assert (=> b!1158752 (< (dynLambda!4995 order!6939 (toValue!3063 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46975))))

(assert (=> b!1158752 (< (dynLambda!4997 order!6943 (toChars!2922 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46975))))

(assert (=> d!331054 true))

(declare-fun e!741503 () Bool)

(assert (=> d!331054 e!741503))

(declare-fun res!521823 () Bool)

(assert (=> d!331054 (=> (not res!521823) (not e!741503))))

(declare-fun lt!393768 () Bool)

(assert (=> d!331054 (= res!521823 (= lt!393768 (forall!2923 (list!4171 (tokens!1561 thiss!10527)) lambda!46975)))))

(assert (=> d!331054 (= lt!393768 (forall!2922 (tokens!1561 thiss!10527) lambda!46975))))

(assert (=> d!331054 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331054 (= (rulesProduceEachTokenIndividually!696 Lexer!1655 (rules!9449 thiss!10527) (tokens!1561 thiss!10527)) lt!393768)))

(declare-fun b!1158749 () Bool)

(assert (=> b!1158749 (= e!741503 (= lt!393768 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (list!4171 (tokens!1561 thiss!10527)))))))

(assert (= (and d!331054 res!521823) b!1158749))

(assert (=> d!331054 m!1325241))

(assert (=> d!331054 m!1325241))

(declare-fun m!1325385 () Bool)

(assert (=> d!331054 m!1325385))

(declare-fun m!1325387 () Bool)

(assert (=> d!331054 m!1325387))

(assert (=> d!331054 m!1325301))

(assert (=> b!1158749 m!1325241))

(assert (=> b!1158749 m!1325241))

(declare-fun m!1325389 () Bool)

(assert (=> b!1158749 m!1325389))

(assert (=> b!1158575 d!331054))

(declare-fun d!331056 () Bool)

(declare-fun lt!393769 () Bool)

(assert (=> d!331056 (= lt!393769 (forall!2923 (list!4171 (tokens!1561 thiss!10527)) lambda!46948))))

(assert (=> d!331056 (= lt!393769 (forall!2926 (c!194143 (tokens!1561 thiss!10527)) lambda!46948))))

(assert (=> d!331056 (= (forall!2922 (tokens!1561 thiss!10527) lambda!46948) lt!393769)))

(declare-fun bs!283237 () Bool)

(assert (= bs!283237 d!331056))

(assert (=> bs!283237 m!1325241))

(assert (=> bs!283237 m!1325241))

(declare-fun m!1325391 () Bool)

(assert (=> bs!283237 m!1325391))

(declare-fun m!1325393 () Bool)

(assert (=> bs!283237 m!1325393))

(assert (=> b!1158575 d!331056))

(declare-fun bs!283238 () Bool)

(declare-fun d!331058 () Bool)

(assert (= bs!283238 (and d!331058 d!331054)))

(declare-fun lambda!46976 () Int)

(assert (=> bs!283238 (= lambda!46976 lambda!46975)))

(declare-fun bs!283239 () Bool)

(assert (= bs!283239 (and d!331058 b!1158575)))

(assert (=> bs!283239 (= lambda!46976 lambda!46948)))

(declare-fun bs!283240 () Bool)

(assert (= bs!283240 (and d!331058 d!331044)))

(assert (=> bs!283240 (= lambda!46976 lambda!46972)))

(declare-fun bs!283241 () Bool)

(assert (= bs!283241 (and d!331058 d!331052)))

(assert (=> bs!283241 (= lambda!46976 lambda!46974)))

(declare-fun bs!283242 () Bool)

(assert (= bs!283242 (and d!331058 d!331024)))

(assert (=> bs!283242 (= lambda!46976 lambda!46964)))

(declare-fun bs!283243 () Bool)

(assert (= bs!283243 (and d!331058 d!331050)))

(assert (=> bs!283243 (= lambda!46976 lambda!46973)))

(declare-fun b!1158757 () Bool)

(declare-fun e!741511 () Bool)

(assert (=> b!1158757 (= e!741511 true)))

(declare-fun b!1158756 () Bool)

(declare-fun e!741510 () Bool)

(assert (=> b!1158756 (= e!741510 e!741511)))

(declare-fun b!1158755 () Bool)

(declare-fun e!741509 () Bool)

(assert (=> b!1158755 (= e!741509 e!741510)))

(assert (=> d!331058 e!741509))

(assert (= b!1158756 b!1158757))

(assert (= b!1158755 b!1158756))

(assert (= (and d!331058 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158755))

(assert (=> b!1158757 (< (dynLambda!4995 order!6939 (toValue!3063 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46976))))

(assert (=> b!1158757 (< (dynLambda!4997 order!6943 (toChars!2922 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46976))))

(assert (=> d!331058 true))

(declare-fun lt!393770 () Bool)

(assert (=> d!331058 (= lt!393770 (forall!2923 lt!393713 lambda!46976))))

(declare-fun e!741507 () Bool)

(assert (=> d!331058 (= lt!393770 e!741507)))

(declare-fun res!521825 () Bool)

(assert (=> d!331058 (=> res!521825 e!741507)))

(assert (=> d!331058 (= res!521825 (not (is-Cons!11321 lt!393713)))))

(assert (=> d!331058 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331058 (= (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) lt!393713) lt!393770)))

(declare-fun b!1158753 () Bool)

(declare-fun e!741508 () Bool)

(assert (=> b!1158753 (= e!741507 e!741508)))

(declare-fun res!521824 () Bool)

(assert (=> b!1158753 (=> (not res!521824) (not e!741508))))

(assert (=> b!1158753 (= res!521824 (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 lt!393713)))))

(declare-fun b!1158754 () Bool)

(assert (=> b!1158754 (= e!741508 (rulesProduceEachTokenIndividuallyList!525 Lexer!1655 (rules!9449 thiss!10527) (t!109326 lt!393713)))))

(assert (= (and d!331058 (not res!521825)) b!1158753))

(assert (= (and b!1158753 res!521824) b!1158754))

(declare-fun m!1325395 () Bool)

(assert (=> d!331058 m!1325395))

(assert (=> d!331058 m!1325301))

(assert (=> b!1158753 m!1325233))

(assert (=> b!1158754 m!1325203))

(assert (=> b!1158575 d!331058))

(declare-fun d!331060 () Bool)

(assert (=> d!331060 (= (list!4171 (tokens!1561 thiss!10527)) (list!4173 (c!194143 (tokens!1561 thiss!10527))))))

(declare-fun bs!283244 () Bool)

(assert (= bs!283244 d!331060))

(declare-fun m!1325397 () Bool)

(assert (=> bs!283244 m!1325397))

(assert (=> b!1158575 d!331060))

(declare-fun d!331062 () Bool)

(declare-fun res!521838 () Bool)

(declare-fun e!741519 () Bool)

(assert (=> d!331062 (=> (not res!521838) (not e!741519))))

(assert (=> d!331062 (= res!521838 (not (isEmpty!6954 (rules!9449 thiss!10527))))))

(assert (=> d!331062 (= (inv!14878 thiss!10527) e!741519)))

(declare-fun b!1158770 () Bool)

(declare-fun res!521839 () Bool)

(assert (=> b!1158770 (=> (not res!521839) (not e!741519))))

(assert (=> b!1158770 (= res!521839 (rulesInvariant!1531 Lexer!1655 (rules!9449 thiss!10527)))))

(declare-fun b!1158771 () Bool)

(declare-fun res!521840 () Bool)

(assert (=> b!1158771 (=> (not res!521840) (not e!741519))))

(assert (=> b!1158771 (= res!521840 (rulesProduceEachTokenIndividually!696 Lexer!1655 (rules!9449 thiss!10527) (tokens!1561 thiss!10527)))))

(declare-fun b!1158772 () Bool)

(declare-fun separableTokens!103 (LexerInterface!1657 BalanceConc!7396 List!11346) Bool)

(assert (=> b!1158772 (= e!741519 (separableTokens!103 Lexer!1655 (tokens!1561 thiss!10527) (rules!9449 thiss!10527)))))

(assert (= (and d!331062 res!521838) b!1158770))

(assert (= (and b!1158770 res!521839) b!1158771))

(assert (= (and b!1158771 res!521840) b!1158772))

(assert (=> d!331062 m!1325301))

(assert (=> b!1158770 m!1325221))

(assert (=> b!1158771 m!1325239))

(declare-fun m!1325421 () Bool)

(assert (=> b!1158772 m!1325421))

(assert (=> start!101336 d!331062))

(declare-fun d!331068 () Bool)

(assert (=> d!331068 (= (inv!14879 (tokens!1561 thiss!10527)) (isBalanced!1042 (c!194143 (tokens!1561 thiss!10527))))))

(declare-fun bs!283245 () Bool)

(assert (= bs!283245 d!331068))

(assert (=> bs!283245 m!1325229))

(assert (=> b!1158574 d!331068))

(declare-fun b!1158802 () Bool)

(declare-fun e!741535 () Bool)

(declare-fun isEmpty!6956 (Conc!3687) Bool)

(assert (=> b!1158802 (= e!741535 (not (isEmpty!6956 (right!10206 (c!194143 (tokens!1561 thiss!10527))))))))

(declare-fun d!331070 () Bool)

(declare-fun res!521869 () Bool)

(declare-fun e!741536 () Bool)

(assert (=> d!331070 (=> res!521869 e!741536)))

(assert (=> d!331070 (= res!521869 (not (is-Node!3687 (c!194143 (tokens!1561 thiss!10527)))))))

(assert (=> d!331070 (= (isBalanced!1042 (c!194143 (tokens!1561 thiss!10527))) e!741536)))

(declare-fun b!1158803 () Bool)

(declare-fun res!521866 () Bool)

(assert (=> b!1158803 (=> (not res!521866) (not e!741535))))

(assert (=> b!1158803 (= res!521866 (not (isEmpty!6956 (left!9876 (c!194143 (tokens!1561 thiss!10527))))))))

(declare-fun b!1158804 () Bool)

(assert (=> b!1158804 (= e!741536 e!741535)))

(declare-fun res!521865 () Bool)

(assert (=> b!1158804 (=> (not res!521865) (not e!741535))))

(declare-fun height!505 (Conc!3687) Int)

(assert (=> b!1158804 (= res!521865 (<= (- 1) (- (height!505 (left!9876 (c!194143 (tokens!1561 thiss!10527)))) (height!505 (right!10206 (c!194143 (tokens!1561 thiss!10527)))))))))

(declare-fun b!1158805 () Bool)

(declare-fun res!521868 () Bool)

(assert (=> b!1158805 (=> (not res!521868) (not e!741535))))

(assert (=> b!1158805 (= res!521868 (isBalanced!1042 (left!9876 (c!194143 (tokens!1561 thiss!10527)))))))

(declare-fun b!1158806 () Bool)

(declare-fun res!521864 () Bool)

(assert (=> b!1158806 (=> (not res!521864) (not e!741535))))

(assert (=> b!1158806 (= res!521864 (isBalanced!1042 (right!10206 (c!194143 (tokens!1561 thiss!10527)))))))

(declare-fun b!1158807 () Bool)

(declare-fun res!521867 () Bool)

(assert (=> b!1158807 (=> (not res!521867) (not e!741535))))

(assert (=> b!1158807 (= res!521867 (<= (- (height!505 (left!9876 (c!194143 (tokens!1561 thiss!10527)))) (height!505 (right!10206 (c!194143 (tokens!1561 thiss!10527))))) 1))))

(assert (= (and d!331070 (not res!521869)) b!1158804))

(assert (= (and b!1158804 res!521865) b!1158807))

(assert (= (and b!1158807 res!521867) b!1158805))

(assert (= (and b!1158805 res!521868) b!1158806))

(assert (= (and b!1158806 res!521864) b!1158803))

(assert (= (and b!1158803 res!521866) b!1158802))

(declare-fun m!1325429 () Bool)

(assert (=> b!1158803 m!1325429))

(declare-fun m!1325431 () Bool)

(assert (=> b!1158806 m!1325431))

(declare-fun m!1325433 () Bool)

(assert (=> b!1158807 m!1325433))

(declare-fun m!1325435 () Bool)

(assert (=> b!1158807 m!1325435))

(declare-fun m!1325437 () Bool)

(assert (=> b!1158802 m!1325437))

(assert (=> b!1158804 m!1325433))

(assert (=> b!1158804 m!1325435))

(declare-fun m!1325439 () Bool)

(assert (=> b!1158805 m!1325439))

(assert (=> b!1158573 d!331070))

(declare-fun d!331076 () Bool)

(declare-fun lt!393777 () Int)

(assert (=> d!331076 (= lt!393777 (size!8906 (list!4171 (tokens!1561 thiss!10527))))))

(declare-fun size!8907 (Conc!3687) Int)

(assert (=> d!331076 (= lt!393777 (size!8907 (c!194143 (tokens!1561 thiss!10527))))))

(assert (=> d!331076 (= (size!8903 (tokens!1561 thiss!10527)) lt!393777)))

(declare-fun bs!283251 () Bool)

(assert (= bs!283251 d!331076))

(assert (=> bs!283251 m!1325241))

(assert (=> bs!283251 m!1325241))

(declare-fun m!1325449 () Bool)

(assert (=> bs!283251 m!1325449))

(declare-fun m!1325451 () Bool)

(assert (=> bs!283251 m!1325451))

(assert (=> b!1158572 d!331076))

(declare-fun d!331082 () Bool)

(declare-fun lt!393778 () Bool)

(declare-fun e!741545 () Bool)

(assert (=> d!331082 (= lt!393778 e!741545)))

(declare-fun res!521873 () Bool)

(assert (=> d!331082 (=> (not res!521873) (not e!741545))))

(assert (=> d!331082 (= res!521873 (= (list!4171 (_1!6841 (lex!687 Lexer!1655 (rules!9449 thiss!10527) (print!624 Lexer!1655 (singletonSeq!642 (h!16722 lt!393715)))))) (list!4171 (singletonSeq!642 (h!16722 lt!393715)))))))

(declare-fun e!741546 () Bool)

(assert (=> d!331082 (= lt!393778 e!741546)))

(declare-fun res!521874 () Bool)

(assert (=> d!331082 (=> (not res!521874) (not e!741546))))

(declare-fun lt!393779 () tuple2!11988)

(assert (=> d!331082 (= res!521874 (= (size!8903 (_1!6841 lt!393779)) 1))))

(assert (=> d!331082 (= lt!393779 (lex!687 Lexer!1655 (rules!9449 thiss!10527) (print!624 Lexer!1655 (singletonSeq!642 (h!16722 lt!393715)))))))

(assert (=> d!331082 (not (isEmpty!6954 (rules!9449 thiss!10527)))))

(assert (=> d!331082 (= (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 lt!393715)) lt!393778)))

(declare-fun b!1158816 () Bool)

(declare-fun res!521872 () Bool)

(assert (=> b!1158816 (=> (not res!521872) (not e!741546))))

(assert (=> b!1158816 (= res!521872 (= (apply!2411 (_1!6841 lt!393779) 0) (h!16722 lt!393715)))))

(declare-fun b!1158817 () Bool)

(assert (=> b!1158817 (= e!741546 (isEmpty!6955 (_2!6841 lt!393779)))))

(declare-fun b!1158818 () Bool)

(assert (=> b!1158818 (= e!741545 (isEmpty!6955 (_2!6841 (lex!687 Lexer!1655 (rules!9449 thiss!10527) (print!624 Lexer!1655 (singletonSeq!642 (h!16722 lt!393715)))))))))

(assert (= (and d!331082 res!521874) b!1158816))

(assert (= (and b!1158816 res!521872) b!1158817))

(assert (= (and d!331082 res!521873) b!1158818))

(declare-fun m!1325453 () Bool)

(assert (=> d!331082 m!1325453))

(declare-fun m!1325455 () Bool)

(assert (=> d!331082 m!1325455))

(assert (=> d!331082 m!1325453))

(assert (=> d!331082 m!1325453))

(declare-fun m!1325457 () Bool)

(assert (=> d!331082 m!1325457))

(declare-fun m!1325459 () Bool)

(assert (=> d!331082 m!1325459))

(assert (=> d!331082 m!1325457))

(declare-fun m!1325461 () Bool)

(assert (=> d!331082 m!1325461))

(assert (=> d!331082 m!1325301))

(declare-fun m!1325463 () Bool)

(assert (=> d!331082 m!1325463))

(declare-fun m!1325465 () Bool)

(assert (=> b!1158816 m!1325465))

(declare-fun m!1325467 () Bool)

(assert (=> b!1158817 m!1325467))

(assert (=> b!1158818 m!1325453))

(assert (=> b!1158818 m!1325453))

(assert (=> b!1158818 m!1325457))

(assert (=> b!1158818 m!1325457))

(assert (=> b!1158818 m!1325461))

(declare-fun m!1325469 () Bool)

(assert (=> b!1158818 m!1325469))

(assert (=> b!1158582 d!331082))

(declare-fun d!331084 () Bool)

(declare-fun res!521889 () Bool)

(declare-fun e!741553 () Bool)

(assert (=> d!331084 (=> (not res!521889) (not e!741553))))

(declare-fun rulesValid!683 (LexerInterface!1657 List!11346) Bool)

(assert (=> d!331084 (= res!521889 (rulesValid!683 Lexer!1655 (rules!9449 thiss!10527)))))

(assert (=> d!331084 (= (rulesInvariant!1531 Lexer!1655 (rules!9449 thiss!10527)) e!741553)))

(declare-fun b!1158833 () Bool)

(declare-datatypes ((List!11351 0))(
  ( (Nil!11327) (Cons!11327 (h!16728 String!13730) (t!109361 List!11351)) )
))
(declare-fun noDuplicateTag!683 (LexerInterface!1657 List!11346 List!11351) Bool)

(assert (=> b!1158833 (= e!741553 (noDuplicateTag!683 Lexer!1655 (rules!9449 thiss!10527) Nil!11327))))

(assert (= (and d!331084 res!521889) b!1158833))

(declare-fun m!1325471 () Bool)

(assert (=> d!331084 m!1325471))

(declare-fun m!1325473 () Bool)

(assert (=> b!1158833 m!1325473))

(assert (=> b!1158571 d!331084))

(declare-fun d!331086 () Bool)

(declare-fun e!741566 () Bool)

(assert (=> d!331086 e!741566))

(declare-fun res!521906 () Bool)

(assert (=> d!331086 (=> (not res!521906) (not e!741566))))

(assert (=> d!331086 (= res!521906 (rulesInvariant!1531 Lexer!1655 (rules!9449 thiss!10527)))))

(declare-fun Unit!17337 () Unit!17332)

(assert (=> d!331086 (= (lemmaInvariant!149 thiss!10527) Unit!17337)))

(declare-fun b!1158853 () Bool)

(declare-fun res!521907 () Bool)

(assert (=> b!1158853 (=> (not res!521907) (not e!741566))))

(assert (=> b!1158853 (= res!521907 (rulesProduceEachTokenIndividually!696 Lexer!1655 (rules!9449 thiss!10527) (tokens!1561 thiss!10527)))))

(declare-fun b!1158854 () Bool)

(assert (=> b!1158854 (= e!741566 (separableTokens!103 Lexer!1655 (tokens!1561 thiss!10527) (rules!9449 thiss!10527)))))

(assert (= (and d!331086 res!521906) b!1158853))

(assert (= (and b!1158853 res!521907) b!1158854))

(assert (=> d!331086 m!1325221))

(assert (=> b!1158853 m!1325239))

(assert (=> b!1158854 m!1325421))

(assert (=> b!1158571 d!331086))

(declare-fun b!1158865 () Bool)

(declare-fun b_free!27713 () Bool)

(declare-fun b_next!28417 () Bool)

(assert (=> b!1158865 (= b_free!27713 (not b_next!28417))))

(declare-fun tp!333525 () Bool)

(declare-fun b_and!80589 () Bool)

(assert (=> b!1158865 (= tp!333525 b_and!80589)))

(declare-fun b_free!27715 () Bool)

(declare-fun b_next!28419 () Bool)

(assert (=> b!1158865 (= b_free!27715 (not b_next!28419))))

(declare-fun tp!333528 () Bool)

(declare-fun b_and!80591 () Bool)

(assert (=> b!1158865 (= tp!333528 b_and!80591)))

(declare-fun e!741577 () Bool)

(assert (=> b!1158865 (= e!741577 (and tp!333525 tp!333528))))

(declare-fun tp!333527 () Bool)

(declare-fun e!741575 () Bool)

(declare-fun b!1158864 () Bool)

(declare-fun inv!14875 (String!13730) Bool)

(declare-fun inv!14886 (TokenValueInjection!3756) Bool)

(assert (=> b!1158864 (= e!741575 (and tp!333527 (inv!14875 (tag!2224 (h!16723 (rules!9449 thiss!10527)))) (inv!14886 (transformation!1962 (h!16723 (rules!9449 thiss!10527)))) e!741577))))

(declare-fun b!1158863 () Bool)

(declare-fun e!741578 () Bool)

(declare-fun tp!333526 () Bool)

(assert (=> b!1158863 (= e!741578 (and e!741575 tp!333526))))

(assert (=> b!1158574 (= tp!333510 e!741578)))

(assert (= b!1158864 b!1158865))

(assert (= b!1158863 b!1158864))

(assert (= (and b!1158574 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158863))

(declare-fun m!1325519 () Bool)

(assert (=> b!1158864 m!1325519))

(declare-fun m!1325521 () Bool)

(assert (=> b!1158864 m!1325521))

(declare-fun b!1158874 () Bool)

(declare-fun e!741583 () Bool)

(assert (=> b!1158874 (= e!741583 true)))

(declare-fun b!1158876 () Bool)

(declare-fun e!741584 () Bool)

(assert (=> b!1158876 (= e!741584 true)))

(declare-fun b!1158875 () Bool)

(assert (=> b!1158875 (= e!741583 e!741584)))

(assert (=> b!1158590 e!741583))

(assert (= (and b!1158590 (is-Node!3687 (c!194143 (tokens!1561 thiss!10527)))) b!1158874))

(assert (= b!1158875 b!1158876))

(assert (= (and b!1158590 (is-Leaf!5679 (c!194143 (tokens!1561 thiss!10527)))) b!1158875))

(declare-fun tp!333535 () Bool)

(declare-fun e!741589 () Bool)

(declare-fun tp!333537 () Bool)

(declare-fun b!1158885 () Bool)

(assert (=> b!1158885 (= e!741589 (and (inv!14880 (left!9876 (c!194143 (tokens!1561 thiss!10527)))) tp!333537 (inv!14880 (right!10206 (c!194143 (tokens!1561 thiss!10527)))) tp!333535))))

(declare-fun b!1158887 () Bool)

(declare-fun e!741590 () Bool)

(declare-fun tp!333536 () Bool)

(assert (=> b!1158887 (= e!741590 tp!333536)))

(declare-fun b!1158886 () Bool)

(declare-fun inv!14887 (IArray!7379) Bool)

(assert (=> b!1158886 (= e!741589 (and (inv!14887 (xs!6392 (c!194143 (tokens!1561 thiss!10527)))) e!741590))))

(assert (=> b!1158578 (= tp!333509 (and (inv!14880 (c!194143 (tokens!1561 thiss!10527))) e!741589))))

(assert (= (and b!1158578 (is-Node!3687 (c!194143 (tokens!1561 thiss!10527)))) b!1158885))

(assert (= b!1158886 b!1158887))

(assert (= (and b!1158578 (is-Leaf!5679 (c!194143 (tokens!1561 thiss!10527)))) b!1158886))

(declare-fun m!1325523 () Bool)

(assert (=> b!1158885 m!1325523))

(declare-fun m!1325525 () Bool)

(assert (=> b!1158885 m!1325525))

(declare-fun m!1325527 () Bool)

(assert (=> b!1158886 m!1325527))

(assert (=> b!1158578 m!1325231))

(declare-fun b!1158890 () Bool)

(declare-fun e!741593 () Bool)

(assert (=> b!1158890 (= e!741593 true)))

(declare-fun b!1158889 () Bool)

(declare-fun e!741592 () Bool)

(assert (=> b!1158889 (= e!741592 e!741593)))

(declare-fun b!1158888 () Bool)

(declare-fun e!741591 () Bool)

(assert (=> b!1158888 (= e!741591 e!741592)))

(assert (=> b!1158589 e!741591))

(assert (= b!1158889 b!1158890))

(assert (= b!1158888 b!1158889))

(assert (= (and b!1158589 (is-Cons!11322 (rules!9449 thiss!10527))) b!1158888))

(assert (=> b!1158890 (< (dynLambda!4995 order!6939 (toValue!3063 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46948))))

(assert (=> b!1158890 (< (dynLambda!4997 order!6943 (toChars!2922 (transformation!1962 (h!16723 (rules!9449 thiss!10527))))) (dynLambda!4996 order!6941 lambda!46948))))

(declare-fun b_lambda!34593 () Bool)

(assert (= b_lambda!34591 (or b!1158575 b_lambda!34593)))

(declare-fun bs!283259 () Bool)

(declare-fun d!331100 () Bool)

(assert (= bs!283259 (and d!331100 b!1158575)))

(assert (=> bs!283259 (= (dynLambda!4998 lambda!46948 (h!16722 lt!393715)) (rulesProduceIndividualToken!694 Lexer!1655 (rules!9449 thiss!10527) (h!16722 lt!393715)))))

(assert (=> bs!283259 m!1325247))

(assert (=> b!1158707 d!331100))

(push 1)

(assert (not d!331032))

(assert (not b!1158806))

(assert (not b!1158732))

(assert (not d!331038))

(assert (not b!1158853))

(assert (not d!331042))

(assert (not d!331076))

(assert (not b!1158804))

(assert (not b!1158886))

(assert (not d!331052))

(assert (not b!1158833))

(assert (not b!1158666))

(assert (not b!1158734))

(assert b_and!80589)

(assert (not d!331034))

(assert (not b!1158735))

(assert (not b!1158803))

(assert (not b!1158876))

(assert (not d!331084))

(assert (not b!1158772))

(assert (not b!1158817))

(assert (not b!1158645))

(assert (not d!331044))

(assert (not bs!283259))

(assert (not b!1158863))

(assert (not b!1158818))

(assert (not b!1158578))

(assert (not b!1158802))

(assert (not d!331060))

(assert (not b!1158667))

(assert (not d!331082))

(assert (not b!1158854))

(assert (not b!1158680))

(assert (not b!1158721))

(assert (not b!1158671))

(assert (not b!1158740))

(assert (not d!331030))

(assert (not b!1158874))

(assert (not b!1158816))

(assert (not b_lambda!34593))

(assert (not b!1158754))

(assert (not d!331054))

(assert (not d!331058))

(assert (not b!1158730))

(assert (not b_next!28419))

(assert (not b!1158646))

(assert (not b!1158805))

(assert (not d!331086))

(assert (not b!1158771))

(assert (not b!1158733))

(assert (not b!1158887))

(assert (not d!331068))

(assert (not b!1158864))

(assert (not b!1158753))

(assert (not d!331050))

(assert (not b!1158720))

(assert (not d!331026))

(assert (not b!1158655))

(assert (not d!331024))

(assert (not b!1158885))

(assert (not b!1158738))

(assert (not d!331028))

(assert (not b!1158679))

(assert (not b!1158695))

(assert (not b!1158668))

(assert (not b!1158678))

(assert (not b!1158770))

(assert b_and!80591)

(assert (not b!1158749))

(assert (not b_next!28417))

(assert (not b!1158807))

(assert (not d!331056))

(assert (not b!1158696))

(assert (not b!1158755))

(assert (not b!1158739))

(assert (not b!1158888))

(assert (not d!331062))

(assert (not b!1158708))

(assert (not b!1158750))

(check-sat)

(pop 1)

(push 1)

(assert b_and!80589)

(assert b_and!80591)

(assert (not b_next!28417))

(assert (not b_next!28419))

(check-sat)

(pop 1)

