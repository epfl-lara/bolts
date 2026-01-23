; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22274 () Bool)

(assert start!22274)

(declare-fun b!206331 () Bool)

(declare-fun b_free!7937 () Bool)

(declare-fun b_next!7937 () Bool)

(assert (=> b!206331 (= b_free!7937 (not b_next!7937))))

(declare-fun tp!90681 () Bool)

(declare-fun b_and!14909 () Bool)

(assert (=> b!206331 (= tp!90681 b_and!14909)))

(declare-fun b_free!7939 () Bool)

(declare-fun b_next!7939 () Bool)

(assert (=> b!206331 (= b_free!7939 (not b_next!7939))))

(declare-fun tp!90683 () Bool)

(declare-fun b_and!14911 () Bool)

(assert (=> b!206331 (= tp!90683 b_and!14911)))

(declare-fun b!206357 () Bool)

(declare-fun b_free!7941 () Bool)

(declare-fun b_next!7941 () Bool)

(assert (=> b!206357 (= b_free!7941 (not b_next!7941))))

(declare-fun tp!90679 () Bool)

(declare-fun b_and!14913 () Bool)

(assert (=> b!206357 (= tp!90679 b_and!14913)))

(declare-fun b_free!7943 () Bool)

(declare-fun b_next!7943 () Bool)

(assert (=> b!206357 (= b_free!7943 (not b_next!7943))))

(declare-fun tp!90684 () Bool)

(declare-fun b_and!14915 () Bool)

(assert (=> b!206357 (= tp!90684 b_and!14915)))

(declare-fun b!206344 () Bool)

(declare-fun b_free!7945 () Bool)

(declare-fun b_next!7945 () Bool)

(assert (=> b!206344 (= b_free!7945 (not b_next!7945))))

(declare-fun tp!90674 () Bool)

(declare-fun b_and!14917 () Bool)

(assert (=> b!206344 (= tp!90674 b_and!14917)))

(declare-fun b_free!7947 () Bool)

(declare-fun b_next!7947 () Bool)

(assert (=> b!206344 (= b_free!7947 (not b_next!7947))))

(declare-fun tp!90678 () Bool)

(declare-fun b_and!14919 () Bool)

(assert (=> b!206344 (= tp!90678 b_and!14919)))

(declare-fun bs!21014 () Bool)

(declare-fun b!206324 () Bool)

(declare-fun b!206354 () Bool)

(assert (= bs!21014 (and b!206324 b!206354)))

(declare-fun lambda!6308 () Int)

(declare-fun lambda!6307 () Int)

(assert (=> bs!21014 (not (= lambda!6308 lambda!6307))))

(declare-fun b!206370 () Bool)

(declare-fun e!126975 () Bool)

(assert (=> b!206370 (= e!126975 true)))

(declare-fun b!206369 () Bool)

(declare-fun e!126974 () Bool)

(assert (=> b!206369 (= e!126974 e!126975)))

(declare-fun b!206368 () Bool)

(declare-fun e!126973 () Bool)

(assert (=> b!206368 (= e!126973 e!126974)))

(assert (=> b!206324 e!126973))

(assert (= b!206369 b!206370))

(assert (= b!206368 b!206369))

(declare-datatypes ((List!3293 0))(
  ( (Nil!3283) (Cons!3283 (h!8680 (_ BitVec 16)) (t!31013 List!3293)) )
))
(declare-datatypes ((TokenValue!629 0))(
  ( (FloatLiteralValue!1258 (text!4848 List!3293)) (TokenValueExt!628 (__x!2745 Int)) (Broken!3145 (value!21589 List!3293)) (Object!638) (End!629) (Def!629) (Underscore!629) (Match!629) (Else!629) (Error!629) (Case!629) (If!629) (Extends!629) (Abstract!629) (Class!629) (Val!629) (DelimiterValue!1258 (del!689 List!3293)) (KeywordValue!635 (value!21590 List!3293)) (CommentValue!1258 (value!21591 List!3293)) (WhitespaceValue!1258 (value!21592 List!3293)) (IndentationValue!629 (value!21593 List!3293)) (String!4224) (Int32!629) (Broken!3146 (value!21594 List!3293)) (Boolean!630) (Unit!3339) (OperatorValue!632 (op!689 List!3293)) (IdentifierValue!1258 (value!21595 List!3293)) (IdentifierValue!1259 (value!21596 List!3293)) (WhitespaceValue!1259 (value!21597 List!3293)) (True!1258) (False!1258) (Broken!3147 (value!21598 List!3293)) (Broken!3148 (value!21599 List!3293)) (True!1259) (RightBrace!629) (RightBracket!629) (Colon!629) (Null!629) (Comma!629) (LeftBracket!629) (False!1259) (LeftBrace!629) (ImaginaryLiteralValue!629 (text!4849 List!3293)) (StringLiteralValue!1887 (value!21600 List!3293)) (EOFValue!629 (value!21601 List!3293)) (IdentValue!629 (value!21602 List!3293)) (DelimiterValue!1259 (value!21603 List!3293)) (DedentValue!629 (value!21604 List!3293)) (NewLineValue!629 (value!21605 List!3293)) (IntegerValue!1887 (value!21606 (_ BitVec 32)) (text!4850 List!3293)) (IntegerValue!1888 (value!21607 Int) (text!4851 List!3293)) (Times!629) (Or!629) (Equal!629) (Minus!629) (Broken!3149 (value!21608 List!3293)) (And!629) (Div!629) (LessEqual!629) (Mod!629) (Concat!1460) (Not!629) (Plus!629) (SpaceValue!629 (value!21609 List!3293)) (IntegerValue!1889 (value!21610 Int) (text!4852 List!3293)) (StringLiteralValue!1888 (text!4853 List!3293)) (FloatLiteralValue!1259 (text!4854 List!3293)) (BytesLiteralValue!629 (value!21611 List!3293)) (CommentValue!1259 (value!21612 List!3293)) (StringLiteralValue!1889 (value!21613 List!3293)) (ErrorTokenValue!629 (msg!690 List!3293)) )
))
(declare-datatypes ((C!2584 0))(
  ( (C!2585 (val!1178 Int)) )
))
(declare-datatypes ((List!3294 0))(
  ( (Nil!3284) (Cons!3284 (h!8681 C!2584) (t!31014 List!3294)) )
))
(declare-datatypes ((IArray!2073 0))(
  ( (IArray!2074 (innerList!1094 List!3294)) )
))
(declare-datatypes ((Conc!1036 0))(
  ( (Node!1036 (left!2610 Conc!1036) (right!2940 Conc!1036) (csize!2302 Int) (cheight!1247 Int)) (Leaf!1679 (xs!3631 IArray!2073) (csize!2303 Int)) (Empty!1036) )
))
(declare-datatypes ((BalanceConc!2080 0))(
  ( (BalanceConc!2081 (c!39565 Conc!1036)) )
))
(declare-datatypes ((TokenValueInjection!1030 0))(
  ( (TokenValueInjection!1031 (toValue!1290 Int) (toChars!1149 Int)) )
))
(declare-datatypes ((Regex!831 0))(
  ( (ElementMatch!831 (c!39566 C!2584)) (Concat!1461 (regOne!2174 Regex!831) (regTwo!2174 Regex!831)) (EmptyExpr!831) (Star!831 (reg!1160 Regex!831)) (EmptyLang!831) (Union!831 (regOne!2175 Regex!831) (regTwo!2175 Regex!831)) )
))
(declare-datatypes ((String!4225 0))(
  ( (String!4226 (value!21614 String)) )
))
(declare-datatypes ((Rule!1014 0))(
  ( (Rule!1015 (regex!607 Regex!831) (tag!795 String!4225) (isSeparator!607 Bool) (transformation!607 TokenValueInjection!1030)) )
))
(declare-datatypes ((List!3295 0))(
  ( (Nil!3285) (Cons!3285 (h!8682 Rule!1014) (t!31015 List!3295)) )
))
(declare-fun rules!1920 () List!3295)

(get-info :version)

(assert (= (and b!206324 ((_ is Cons!3285) rules!1920)) b!206368))

(declare-fun order!2141 () Int)

(declare-fun order!2143 () Int)

(declare-fun dynLambda!1449 (Int Int) Int)

(declare-fun dynLambda!1450 (Int Int) Int)

(assert (=> b!206370 (< (dynLambda!1449 order!2141 (toValue!1290 (transformation!607 (h!8682 rules!1920)))) (dynLambda!1450 order!2143 lambda!6308))))

(declare-fun order!2145 () Int)

(declare-fun dynLambda!1451 (Int Int) Int)

(assert (=> b!206370 (< (dynLambda!1451 order!2145 (toChars!1149 (transformation!607 (h!8682 rules!1920)))) (dynLambda!1450 order!2143 lambda!6308))))

(assert (=> b!206324 true))

(declare-fun b!206310 () Bool)

(declare-fun e!126941 () Bool)

(assert (=> b!206310 (= e!126941 false)))

(declare-fun b!206311 () Bool)

(declare-datatypes ((Unit!3340 0))(
  ( (Unit!3341) )
))
(declare-fun e!126940 () Unit!3340)

(declare-fun Unit!3342 () Unit!3340)

(assert (=> b!206311 (= e!126940 Unit!3342)))

(assert (=> b!206311 false))

(declare-fun b!206312 () Bool)

(declare-fun res!94575 () Bool)

(declare-fun e!126960 () Bool)

(assert (=> b!206312 (=> (not res!94575) (not e!126960))))

(declare-fun isEmpty!1728 (List!3295) Bool)

(assert (=> b!206312 (= res!94575 (not (isEmpty!1728 rules!1920)))))

(declare-fun b!206313 () Bool)

(declare-fun e!126953 () Bool)

(declare-datatypes ((Token!958 0))(
  ( (Token!959 (value!21615 TokenValue!629) (rule!1134 Rule!1014) (size!2636 Int) (originalCharacters!650 List!3294)) )
))
(declare-datatypes ((tuple2!3430 0))(
  ( (tuple2!3431 (_1!1931 Token!958) (_2!1931 List!3294)) )
))
(declare-datatypes ((Option!513 0))(
  ( (None!512) (Some!512 (v!14071 tuple2!3430)) )
))
(declare-fun lt!74550 () Option!513)

(declare-datatypes ((List!3296 0))(
  ( (Nil!3286) (Cons!3286 (h!8683 Token!958) (t!31016 List!3296)) )
))
(declare-fun tokens!465 () List!3296)

(declare-fun get!982 (Option!513) tuple2!3430)

(declare-fun head!709 (List!3296) Token!958)

(assert (=> b!206313 (= e!126953 (= (_1!1931 (get!982 lt!74550)) (head!709 tokens!465)))))

(declare-fun b!206314 () Bool)

(declare-fun e!126937 () Bool)

(declare-fun lt!74539 () List!3294)

(declare-fun matchR!169 (Regex!831 List!3294) Bool)

(assert (=> b!206314 (= e!126937 (matchR!169 (regex!607 (rule!1134 (h!8683 tokens!465))) lt!74539))))

(declare-fun b!206315 () Bool)

(declare-fun res!94597 () Bool)

(declare-fun e!126945 () Bool)

(assert (=> b!206315 (=> (not res!94597) (not e!126945))))

(declare-datatypes ((IArray!2075 0))(
  ( (IArray!2076 (innerList!1095 List!3296)) )
))
(declare-datatypes ((Conc!1037 0))(
  ( (Node!1037 (left!2611 Conc!1037) (right!2941 Conc!1037) (csize!2304 Int) (cheight!1248 Int)) (Leaf!1680 (xs!3632 IArray!2075) (csize!2305 Int)) (Empty!1037) )
))
(declare-datatypes ((BalanceConc!2082 0))(
  ( (BalanceConc!2083 (c!39567 Conc!1037)) )
))
(declare-datatypes ((tuple2!3432 0))(
  ( (tuple2!3433 (_1!1932 BalanceConc!2082) (_2!1932 BalanceConc!2080)) )
))
(declare-fun lt!74523 () tuple2!3432)

(declare-fun lt!74518 () Token!958)

(declare-fun apply!542 (BalanceConc!2082 Int) Token!958)

(assert (=> b!206315 (= res!94597 (= (apply!542 (_1!1932 lt!74523) 0) lt!74518))))

(declare-fun b!206316 () Bool)

(declare-fun e!126931 () Bool)

(assert (=> b!206316 (= e!126960 e!126931)))

(declare-fun res!94574 () Bool)

(assert (=> b!206316 (=> (not res!94574) (not e!126931))))

(declare-datatypes ((LexerInterface!493 0))(
  ( (LexerInterfaceExt!490 (__x!2746 Int)) (Lexer!491) )
))
(declare-fun thiss!17480 () LexerInterface!493)

(declare-fun lt!74509 () BalanceConc!2082)

(declare-fun rulesProduceEachTokenIndividually!285 (LexerInterface!493 List!3295 BalanceConc!2082) Bool)

(assert (=> b!206316 (= res!94574 (rulesProduceEachTokenIndividually!285 thiss!17480 rules!1920 lt!74509))))

(declare-fun seqFromList!591 (List!3296) BalanceConc!2082)

(assert (=> b!206316 (= lt!74509 (seqFromList!591 tokens!465))))

(declare-fun b!206317 () Bool)

(declare-fun e!126963 () Bool)

(declare-fun e!126957 () Bool)

(assert (=> b!206317 (= e!126963 e!126957)))

(declare-fun res!94578 () Bool)

(assert (=> b!206317 (=> res!94578 e!126957)))

(declare-fun lt!74520 () List!3294)

(declare-fun lt!74514 () List!3294)

(assert (=> b!206317 (= res!94578 (or (not (= lt!74514 lt!74520)) (not (= lt!74520 lt!74539)) (not (= lt!74514 lt!74539))))))

(declare-fun printList!177 (LexerInterface!493 List!3296) List!3294)

(assert (=> b!206317 (= lt!74520 (printList!177 thiss!17480 (Cons!3286 (h!8683 tokens!465) Nil!3286)))))

(declare-fun lt!74521 () BalanceConc!2080)

(declare-fun list!1225 (BalanceConc!2080) List!3294)

(assert (=> b!206317 (= lt!74514 (list!1225 lt!74521))))

(declare-fun lt!74535 () BalanceConc!2082)

(declare-fun printTailRec!187 (LexerInterface!493 BalanceConc!2082 Int BalanceConc!2080) BalanceConc!2080)

(assert (=> b!206317 (= lt!74521 (printTailRec!187 thiss!17480 lt!74535 0 (BalanceConc!2081 Empty!1036)))))

(declare-fun print!224 (LexerInterface!493 BalanceConc!2082) BalanceConc!2080)

(assert (=> b!206317 (= lt!74521 (print!224 thiss!17480 lt!74535))))

(declare-fun singletonSeq!159 (Token!958) BalanceConc!2082)

(assert (=> b!206317 (= lt!74535 (singletonSeq!159 (h!8683 tokens!465)))))

(declare-fun tp!90675 () Bool)

(declare-fun b!206318 () Bool)

(declare-fun e!126962 () Bool)

(declare-fun e!126934 () Bool)

(declare-fun inv!4124 (String!4225) Bool)

(declare-fun inv!4127 (TokenValueInjection!1030) Bool)

(assert (=> b!206318 (= e!126934 (and tp!90675 (inv!4124 (tag!795 (h!8682 rules!1920))) (inv!4127 (transformation!607 (h!8682 rules!1920))) e!126962))))

(declare-fun b!206319 () Bool)

(declare-fun e!126965 () Bool)

(assert (=> b!206319 (= e!126965 e!126953)))

(declare-fun res!94586 () Bool)

(assert (=> b!206319 (=> (not res!94586) (not e!126953))))

(declare-fun isDefined!364 (Option!513) Bool)

(assert (=> b!206319 (= res!94586 (isDefined!364 lt!74550))))

(declare-fun lt!74548 () List!3294)

(declare-fun maxPrefix!223 (LexerInterface!493 List!3295 List!3294) Option!513)

(assert (=> b!206319 (= lt!74550 (maxPrefix!223 thiss!17480 rules!1920 lt!74548))))

(declare-fun b!206320 () Bool)

(declare-fun e!126952 () Bool)

(declare-fun separatorToken!170 () Token!958)

(declare-fun lt!74516 () Rule!1014)

(assert (=> b!206320 (= e!126952 (= (rule!1134 separatorToken!170) lt!74516))))

(declare-fun b!206321 () Bool)

(declare-fun e!126956 () Bool)

(declare-fun e!126935 () Bool)

(assert (=> b!206321 (= e!126956 (not e!126935))))

(declare-fun res!94607 () Bool)

(assert (=> b!206321 (=> res!94607 e!126935)))

(declare-fun lt!74525 () List!3294)

(declare-fun printWithSeparatorTokenWhenNeededRec!176 (LexerInterface!493 List!3295 BalanceConc!2082 Token!958 Int) BalanceConc!2080)

(assert (=> b!206321 (= res!94607 (not (= lt!74525 (list!1225 (printWithSeparatorTokenWhenNeededRec!176 thiss!17480 rules!1920 (seqFromList!591 (t!31016 tokens!465)) separatorToken!170 0)))))))

(declare-fun lt!74526 () List!3294)

(declare-fun lt!74540 () List!3294)

(assert (=> b!206321 (= lt!74526 lt!74540)))

(declare-fun lt!74542 () List!3294)

(declare-fun ++!804 (List!3294 List!3294) List!3294)

(assert (=> b!206321 (= lt!74540 (++!804 lt!74539 lt!74542))))

(declare-fun lt!74547 () List!3294)

(assert (=> b!206321 (= lt!74526 (++!804 (++!804 lt!74539 lt!74547) lt!74525))))

(declare-fun lt!74505 () Unit!3340)

(declare-fun lemmaConcatAssociativity!302 (List!3294 List!3294 List!3294) Unit!3340)

(assert (=> b!206321 (= lt!74505 (lemmaConcatAssociativity!302 lt!74539 lt!74547 lt!74525))))

(declare-fun charsOf!262 (Token!958) BalanceConc!2080)

(assert (=> b!206321 (= lt!74539 (list!1225 (charsOf!262 (h!8683 tokens!465))))))

(assert (=> b!206321 (= lt!74542 (++!804 lt!74547 lt!74525))))

(declare-fun printWithSeparatorTokenWhenNeededList!186 (LexerInterface!493 List!3295 List!3296 Token!958) List!3294)

(assert (=> b!206321 (= lt!74525 (printWithSeparatorTokenWhenNeededList!186 thiss!17480 rules!1920 (t!31016 tokens!465) separatorToken!170))))

(assert (=> b!206321 (= lt!74547 (list!1225 (charsOf!262 separatorToken!170)))))

(declare-fun b!206322 () Bool)

(declare-fun e!126933 () Bool)

(declare-fun tp!90680 () Bool)

(declare-fun e!126946 () Bool)

(declare-fun inv!21 (TokenValue!629) Bool)

(assert (=> b!206322 (= e!126933 (and (inv!21 (value!21615 (h!8683 tokens!465))) e!126946 tp!90680))))

(declare-fun b!206323 () Bool)

(declare-fun res!94588 () Bool)

(assert (=> b!206323 (=> res!94588 e!126957)))

(declare-fun isEmpty!1729 (BalanceConc!2082) Bool)

(declare-fun lex!293 (LexerInterface!493 List!3295 BalanceConc!2080) tuple2!3432)

(declare-fun seqFromList!592 (List!3294) BalanceConc!2080)

(assert (=> b!206323 (= res!94588 (isEmpty!1729 (_1!1932 (lex!293 thiss!17480 rules!1920 (seqFromList!592 lt!74539)))))))

(declare-fun e!126954 () Bool)

(assert (=> b!206324 (= e!126957 e!126954)))

(declare-fun res!94593 () Bool)

(assert (=> b!206324 (=> res!94593 e!126954)))

(declare-datatypes ((tuple2!3434 0))(
  ( (tuple2!3435 (_1!1933 Token!958) (_2!1933 BalanceConc!2080)) )
))
(declare-datatypes ((Option!514 0))(
  ( (None!513) (Some!513 (v!14072 tuple2!3434)) )
))
(declare-fun isDefined!365 (Option!514) Bool)

(declare-fun maxPrefixZipperSequence!186 (LexerInterface!493 List!3295 BalanceConc!2080) Option!514)

(assert (=> b!206324 (= res!94593 (not (isDefined!365 (maxPrefixZipperSequence!186 thiss!17480 rules!1920 (seqFromList!592 (originalCharacters!650 (h!8683 tokens!465)))))))))

(declare-fun lt!74508 () Unit!3340)

(declare-fun forallContained!174 (List!3296 Int Token!958) Unit!3340)

(assert (=> b!206324 (= lt!74508 (forallContained!174 tokens!465 lambda!6308 (h!8683 tokens!465)))))

(assert (=> b!206324 (= lt!74539 (originalCharacters!650 (h!8683 tokens!465)))))

(declare-fun b!206325 () Bool)

(assert (=> b!206325 (= e!126931 e!126956)))

(declare-fun res!94591 () Bool)

(assert (=> b!206325 (=> (not res!94591) (not e!126956))))

(declare-fun lt!74504 () List!3294)

(assert (=> b!206325 (= res!94591 (= lt!74548 lt!74504))))

(assert (=> b!206325 (= lt!74504 (list!1225 (printWithSeparatorTokenWhenNeededRec!176 thiss!17480 rules!1920 lt!74509 separatorToken!170 0)))))

(assert (=> b!206325 (= lt!74548 (printWithSeparatorTokenWhenNeededList!186 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun b!206326 () Bool)

(declare-fun e!126938 () Unit!3340)

(declare-fun Unit!3343 () Unit!3340)

(assert (=> b!206326 (= e!126938 Unit!3343)))

(declare-fun lt!74533 () List!3294)

(declare-fun lt!74532 () Unit!3340)

(declare-fun lt!74506 () C!2584)

(declare-fun lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!6 (Regex!831 List!3294 C!2584) Unit!3340)

(assert (=> b!206326 (= lt!74532 (lemmaRegexCannotMatchAStringContainingACharItDoesNotContain!6 (regex!607 (rule!1134 lt!74518)) lt!74533 lt!74506))))

(declare-fun res!94579 () Bool)

(assert (=> b!206326 (= res!94579 (not (matchR!169 (regex!607 (rule!1134 lt!74518)) lt!74533)))))

(assert (=> b!206326 (=> (not res!94579) (not e!126941))))

(assert (=> b!206326 e!126941))

(declare-fun b!206327 () Bool)

(declare-fun res!94582 () Bool)

(assert (=> b!206327 (=> (not res!94582) (not e!126931))))

(assert (=> b!206327 (= res!94582 ((_ is Cons!3286) tokens!465))))

(declare-fun tp!90676 () Bool)

(declare-fun e!126943 () Bool)

(declare-fun b!206328 () Bool)

(declare-fun e!126932 () Bool)

(assert (=> b!206328 (= e!126943 (and (inv!21 (value!21615 separatorToken!170)) e!126932 tp!90676))))

(declare-fun b!206329 () Bool)

(declare-fun res!94598 () Bool)

(assert (=> b!206329 (=> res!94598 e!126957)))

(declare-fun rulesProduceIndividualToken!242 (LexerInterface!493 List!3295 Token!958) Bool)

(assert (=> b!206329 (= res!94598 (not (rulesProduceIndividualToken!242 thiss!17480 rules!1920 (h!8683 tokens!465))))))

(declare-fun res!94596 () Bool)

(assert (=> start!22274 (=> (not res!94596) (not e!126960))))

(assert (=> start!22274 (= res!94596 ((_ is Lexer!491) thiss!17480))))

(assert (=> start!22274 e!126960))

(assert (=> start!22274 true))

(declare-fun e!126964 () Bool)

(assert (=> start!22274 e!126964))

(declare-fun inv!4128 (Token!958) Bool)

(assert (=> start!22274 (and (inv!4128 separatorToken!170) e!126943)))

(declare-fun e!126966 () Bool)

(assert (=> start!22274 e!126966))

(declare-fun b!206330 () Bool)

(declare-fun tp!90673 () Bool)

(assert (=> b!206330 (= e!126964 (and e!126934 tp!90673))))

(declare-fun e!126961 () Bool)

(assert (=> b!206331 (= e!126961 (and tp!90681 tp!90683))))

(declare-fun b!206332 () Bool)

(assert (=> b!206332 (= e!126935 e!126963)))

(declare-fun res!94577 () Bool)

(assert (=> b!206332 (=> res!94577 e!126963)))

(declare-fun e!126930 () Bool)

(assert (=> b!206332 (= res!94577 e!126930)))

(declare-fun res!94606 () Bool)

(assert (=> b!206332 (=> (not res!94606) (not e!126930))))

(declare-fun lt!74519 () Bool)

(assert (=> b!206332 (= res!94606 (not lt!74519))))

(assert (=> b!206332 (= lt!74519 (= lt!74548 lt!74540))))

(declare-fun b!206333 () Bool)

(declare-fun e!126947 () Bool)

(declare-fun e!126950 () Bool)

(assert (=> b!206333 (= e!126947 e!126950)))

(declare-fun res!94587 () Bool)

(assert (=> b!206333 (=> (not res!94587) (not e!126950))))

(declare-fun lt!74536 () Rule!1014)

(assert (=> b!206333 (= res!94587 (matchR!169 (regex!607 lt!74536) lt!74533))))

(declare-datatypes ((Option!515 0))(
  ( (None!514) (Some!514 (v!14073 Rule!1014)) )
))
(declare-fun lt!74549 () Option!515)

(declare-fun get!983 (Option!515) Rule!1014)

(assert (=> b!206333 (= lt!74536 (get!983 lt!74549))))

(declare-fun b!206334 () Bool)

(declare-fun tp!90682 () Bool)

(assert (=> b!206334 (= e!126966 (and (inv!4128 (h!8683 tokens!465)) e!126933 tp!90682))))

(declare-fun b!206335 () Bool)

(declare-fun res!94599 () Bool)

(declare-fun e!126955 () Bool)

(assert (=> b!206335 (=> res!94599 e!126955)))

(assert (=> b!206335 (= res!94599 (isSeparator!607 (rule!1134 lt!74518)))))

(declare-fun b!206336 () Bool)

(declare-fun res!94576 () Bool)

(assert (=> b!206336 (=> (not res!94576) (not e!126960))))

(declare-fun rulesInvariant!459 (LexerInterface!493 List!3295) Bool)

(assert (=> b!206336 (= res!94576 (rulesInvariant!459 thiss!17480 rules!1920))))

(declare-fun b!206337 () Bool)

(declare-fun e!126944 () Bool)

(assert (=> b!206337 (= e!126944 e!126952)))

(declare-fun res!94603 () Bool)

(assert (=> b!206337 (=> (not res!94603) (not e!126952))))

(assert (=> b!206337 (= res!94603 (matchR!169 (regex!607 lt!74516) lt!74547))))

(declare-fun lt!74527 () Option!515)

(assert (=> b!206337 (= lt!74516 (get!983 lt!74527))))

(declare-fun b!206338 () Bool)

(declare-fun isEmpty!1730 (BalanceConc!2080) Bool)

(assert (=> b!206338 (= e!126945 (isEmpty!1730 (_2!1932 lt!74523)))))

(declare-fun b!206339 () Bool)

(declare-fun res!94601 () Bool)

(declare-fun e!126936 () Bool)

(assert (=> b!206339 (=> (not res!94601) (not e!126936))))

(declare-fun lt!74522 () tuple2!3432)

(assert (=> b!206339 (= res!94601 (= (apply!542 (_1!1932 lt!74522) 0) separatorToken!170))))

(declare-fun b!206340 () Bool)

(assert (=> b!206340 (= e!126936 (isEmpty!1730 (_2!1932 lt!74522)))))

(declare-fun b!206341 () Bool)

(declare-fun res!94592 () Bool)

(assert (=> b!206341 (=> (not res!94592) (not e!126937))))

(declare-fun lt!74545 () tuple2!3430)

(declare-fun isEmpty!1731 (List!3294) Bool)

(assert (=> b!206341 (= res!94592 (isEmpty!1731 (_2!1931 lt!74545)))))

(declare-fun b!206342 () Bool)

(declare-fun e!126949 () Bool)

(assert (=> b!206342 (= e!126949 e!126955)))

(declare-fun res!94605 () Bool)

(assert (=> b!206342 (=> res!94605 e!126955)))

(declare-fun lt!74530 () C!2584)

(declare-fun contains!549 (List!3294 C!2584) Bool)

(declare-fun usedCharacters!12 (Regex!831) List!3294)

(assert (=> b!206342 (= res!94605 (not (contains!549 (usedCharacters!12 (regex!607 (rule!1134 separatorToken!170))) lt!74530)))))

(declare-fun head!710 (List!3294) C!2584)

(assert (=> b!206342 (= lt!74530 (head!710 lt!74525))))

(declare-fun lt!74511 () Unit!3340)

(assert (=> b!206342 (= lt!74511 e!126938)))

(declare-fun c!39564 () Bool)

(declare-fun lt!74528 () List!3294)

(assert (=> b!206342 (= c!39564 (not (contains!549 lt!74528 lt!74506)))))

(assert (=> b!206342 (= lt!74506 (head!710 lt!74533))))

(assert (=> b!206342 (= lt!74528 (usedCharacters!12 (regex!607 (rule!1134 lt!74518))))))

(assert (=> b!206342 e!126947))

(declare-fun res!94572 () Bool)

(assert (=> b!206342 (=> (not res!94572) (not e!126947))))

(declare-fun isDefined!366 (Option!515) Bool)

(assert (=> b!206342 (= res!94572 (isDefined!366 lt!74549))))

(declare-fun getRuleFromTag!48 (LexerInterface!493 List!3295 String!4225) Option!515)

(assert (=> b!206342 (= lt!74549 (getRuleFromTag!48 thiss!17480 rules!1920 (tag!795 (rule!1134 lt!74518))))))

(declare-fun lt!74529 () Unit!3340)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!48 (LexerInterface!493 List!3295 List!3294 Token!958) Unit!3340)

(assert (=> b!206342 (= lt!74529 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!48 thiss!17480 rules!1920 lt!74533 lt!74518))))

(assert (=> b!206342 (= lt!74533 (list!1225 (charsOf!262 lt!74518)))))

(declare-fun lt!74543 () Unit!3340)

(assert (=> b!206342 (= lt!74543 (forallContained!174 tokens!465 lambda!6308 lt!74518))))

(assert (=> b!206342 e!126945))

(declare-fun res!94590 () Bool)

(assert (=> b!206342 (=> (not res!94590) (not e!126945))))

(declare-fun size!2637 (BalanceConc!2082) Int)

(assert (=> b!206342 (= res!94590 (= (size!2637 (_1!1932 lt!74523)) 1))))

(declare-fun lt!74541 () BalanceConc!2080)

(assert (=> b!206342 (= lt!74523 (lex!293 thiss!17480 rules!1920 lt!74541))))

(declare-fun lt!74534 () BalanceConc!2082)

(assert (=> b!206342 (= lt!74541 (printTailRec!187 thiss!17480 lt!74534 0 (BalanceConc!2081 Empty!1036)))))

(assert (=> b!206342 (= lt!74541 (print!224 thiss!17480 lt!74534))))

(assert (=> b!206342 (= lt!74534 (singletonSeq!159 lt!74518))))

(assert (=> b!206342 e!126944))

(declare-fun res!94602 () Bool)

(assert (=> b!206342 (=> (not res!94602) (not e!126944))))

(assert (=> b!206342 (= res!94602 (isDefined!366 lt!74527))))

(assert (=> b!206342 (= lt!74527 (getRuleFromTag!48 thiss!17480 rules!1920 (tag!795 (rule!1134 separatorToken!170))))))

(declare-fun lt!74512 () Unit!3340)

(assert (=> b!206342 (= lt!74512 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!48 thiss!17480 rules!1920 lt!74547 separatorToken!170))))

(assert (=> b!206342 e!126936))

(declare-fun res!94594 () Bool)

(assert (=> b!206342 (=> (not res!94594) (not e!126936))))

(assert (=> b!206342 (= res!94594 (= (size!2637 (_1!1932 lt!74522)) 1))))

(declare-fun lt!74531 () BalanceConc!2080)

(assert (=> b!206342 (= lt!74522 (lex!293 thiss!17480 rules!1920 lt!74531))))

(declare-fun lt!74515 () BalanceConc!2082)

(assert (=> b!206342 (= lt!74531 (printTailRec!187 thiss!17480 lt!74515 0 (BalanceConc!2081 Empty!1036)))))

(assert (=> b!206342 (= lt!74531 (print!224 thiss!17480 lt!74515))))

(assert (=> b!206342 (= lt!74515 (singletonSeq!159 separatorToken!170))))

(assert (=> b!206342 (rulesProduceIndividualToken!242 thiss!17480 rules!1920 lt!74518)))

(declare-fun lt!74544 () Unit!3340)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!60 (LexerInterface!493 List!3295 List!3296 Token!958) Unit!3340)

(assert (=> b!206342 (= lt!74544 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!60 thiss!17480 rules!1920 tokens!465 lt!74518))))

(assert (=> b!206342 (= lt!74518 (head!709 (t!31016 tokens!465)))))

(declare-fun lt!74538 () Unit!3340)

(assert (=> b!206342 (= lt!74538 e!126940)))

(declare-fun c!39563 () Bool)

(declare-fun isEmpty!1732 (List!3296) Bool)

(assert (=> b!206342 (= c!39563 (isEmpty!1732 (t!31016 tokens!465)))))

(declare-fun lt!74510 () Option!513)

(assert (=> b!206342 (= lt!74510 (maxPrefix!223 thiss!17480 rules!1920 lt!74542))))

(declare-fun lt!74513 () tuple2!3430)

(assert (=> b!206342 (= lt!74542 (_2!1931 lt!74513))))

(declare-fun lt!74546 () Unit!3340)

(declare-fun lemmaSamePrefixThenSameSuffix!128 (List!3294 List!3294 List!3294 List!3294 List!3294) Unit!3340)

(assert (=> b!206342 (= lt!74546 (lemmaSamePrefixThenSameSuffix!128 lt!74539 lt!74542 lt!74539 (_2!1931 lt!74513) lt!74548))))

(assert (=> b!206342 (= lt!74513 (get!982 (maxPrefix!223 thiss!17480 rules!1920 lt!74548)))))

(declare-fun isPrefix!303 (List!3294 List!3294) Bool)

(assert (=> b!206342 (isPrefix!303 lt!74539 lt!74540)))

(declare-fun lt!74517 () Unit!3340)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!198 (List!3294 List!3294) Unit!3340)

(assert (=> b!206342 (= lt!74517 (lemmaConcatTwoListThenFirstIsPrefix!198 lt!74539 lt!74542))))

(assert (=> b!206342 e!126965))

(declare-fun res!94595 () Bool)

(assert (=> b!206342 (=> res!94595 e!126965)))

(assert (=> b!206342 (= res!94595 (isEmpty!1732 tokens!465))))

(declare-fun lt!74507 () Unit!3340)

(declare-fun lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!68 (LexerInterface!493 List!3295 List!3296 Token!958) Unit!3340)

(assert (=> b!206342 (= lt!74507 (lemmaPrintWithSepTokenWhenNeededThenMaxPrefReturnsHead!68 thiss!17480 rules!1920 tokens!465 separatorToken!170))))

(declare-fun tp!90685 () Bool)

(declare-fun b!206343 () Bool)

(assert (=> b!206343 (= e!126932 (and tp!90685 (inv!4124 (tag!795 (rule!1134 separatorToken!170))) (inv!4127 (transformation!607 (rule!1134 separatorToken!170))) e!126961))))

(declare-fun e!126958 () Bool)

(assert (=> b!206344 (= e!126958 (and tp!90674 tp!90678))))

(declare-fun b!206345 () Bool)

(declare-fun res!94581 () Bool)

(assert (=> b!206345 (=> (not res!94581) (not e!126931))))

(declare-fun sepAndNonSepRulesDisjointChars!196 (List!3295 List!3295) Bool)

(assert (=> b!206345 (= res!94581 (sepAndNonSepRulesDisjointChars!196 rules!1920 rules!1920))))

(declare-fun b!206346 () Bool)

(assert (=> b!206346 (= e!126930 (not (= lt!74548 (++!804 lt!74539 lt!74525))))))

(declare-fun b!206347 () Bool)

(declare-fun res!94584 () Bool)

(assert (=> b!206347 (=> res!94584 e!126955)))

(declare-fun contains!550 (List!3295 Rule!1014) Bool)

(assert (=> b!206347 (= res!94584 (not (contains!550 rules!1920 (rule!1134 lt!74518))))))

(declare-fun b!206348 () Bool)

(declare-fun res!94589 () Bool)

(assert (=> b!206348 (=> (not res!94589) (not e!126956))))

(assert (=> b!206348 (= res!94589 (= (list!1225 (seqFromList!592 lt!74548)) lt!74504))))

(declare-fun b!206349 () Bool)

(declare-fun Unit!3344 () Unit!3340)

(assert (=> b!206349 (= e!126938 Unit!3344)))

(declare-fun b!206350 () Bool)

(declare-fun res!94580 () Bool)

(assert (=> b!206350 (=> (not res!94580) (not e!126931))))

(assert (=> b!206350 (= res!94580 (rulesProduceIndividualToken!242 thiss!17480 rules!1920 separatorToken!170))))

(declare-fun b!206351 () Bool)

(declare-fun res!94585 () Bool)

(assert (=> b!206351 (=> (not res!94585) (not e!126931))))

(assert (=> b!206351 (= res!94585 (isSeparator!607 (rule!1134 separatorToken!170)))))

(declare-fun b!206352 () Bool)

(assert (=> b!206352 (= e!126950 (= (rule!1134 lt!74518) lt!74536))))

(declare-fun b!206353 () Bool)

(declare-fun res!94573 () Bool)

(assert (=> b!206353 (=> res!94573 e!126955)))

(assert (=> b!206353 (= res!94573 (not (contains!550 rules!1920 (rule!1134 separatorToken!170))))))

(declare-fun res!94583 () Bool)

(assert (=> b!206354 (=> (not res!94583) (not e!126931))))

(declare-fun forall!711 (List!3296 Int) Bool)

(assert (=> b!206354 (= res!94583 (forall!711 tokens!465 lambda!6307))))

(declare-fun b!206355 () Bool)

(declare-fun tp!90677 () Bool)

(assert (=> b!206355 (= e!126946 (and tp!90677 (inv!4124 (tag!795 (rule!1134 (h!8683 tokens!465)))) (inv!4127 (transformation!607 (rule!1134 (h!8683 tokens!465)))) e!126958))))

(declare-fun b!206356 () Bool)

(declare-fun Unit!3345 () Unit!3340)

(assert (=> b!206356 (= e!126940 Unit!3345)))

(assert (=> b!206357 (= e!126962 (and tp!90679 tp!90684))))

(declare-fun b!206358 () Bool)

(assert (=> b!206358 (= e!126954 e!126949)))

(declare-fun res!94604 () Bool)

(assert (=> b!206358 (=> res!94604 e!126949)))

(assert (=> b!206358 (= res!94604 (not lt!74519))))

(assert (=> b!206358 e!126937))

(declare-fun res!94600 () Bool)

(assert (=> b!206358 (=> (not res!94600) (not e!126937))))

(assert (=> b!206358 (= res!94600 (= (_1!1931 lt!74545) (h!8683 tokens!465)))))

(declare-fun lt!74537 () Option!513)

(assert (=> b!206358 (= lt!74545 (get!982 lt!74537))))

(assert (=> b!206358 (isDefined!364 lt!74537)))

(assert (=> b!206358 (= lt!74537 (maxPrefix!223 thiss!17480 rules!1920 lt!74539))))

(declare-fun b!206359 () Bool)

(assert (=> b!206359 (= e!126955 true)))

(declare-fun lt!74524 () Bool)

(assert (=> b!206359 (= lt!74524 (contains!549 lt!74528 lt!74530))))

(assert (= (and start!22274 res!94596) b!206312))

(assert (= (and b!206312 res!94575) b!206336))

(assert (= (and b!206336 res!94576) b!206316))

(assert (= (and b!206316 res!94574) b!206350))

(assert (= (and b!206350 res!94580) b!206351))

(assert (= (and b!206351 res!94585) b!206354))

(assert (= (and b!206354 res!94583) b!206345))

(assert (= (and b!206345 res!94581) b!206327))

(assert (= (and b!206327 res!94582) b!206325))

(assert (= (and b!206325 res!94591) b!206348))

(assert (= (and b!206348 res!94589) b!206321))

(assert (= (and b!206321 (not res!94607)) b!206332))

(assert (= (and b!206332 res!94606) b!206346))

(assert (= (and b!206332 (not res!94577)) b!206317))

(assert (= (and b!206317 (not res!94578)) b!206329))

(assert (= (and b!206329 (not res!94598)) b!206323))

(assert (= (and b!206323 (not res!94588)) b!206324))

(assert (= (and b!206324 (not res!94593)) b!206358))

(assert (= (and b!206358 res!94600) b!206341))

(assert (= (and b!206341 res!94592) b!206314))

(assert (= (and b!206358 (not res!94604)) b!206342))

(assert (= (and b!206342 (not res!94595)) b!206319))

(assert (= (and b!206319 res!94586) b!206313))

(assert (= (and b!206342 c!39563) b!206311))

(assert (= (and b!206342 (not c!39563)) b!206356))

(assert (= (and b!206342 res!94594) b!206339))

(assert (= (and b!206339 res!94601) b!206340))

(assert (= (and b!206342 res!94602) b!206337))

(assert (= (and b!206337 res!94603) b!206320))

(assert (= (and b!206342 res!94590) b!206315))

(assert (= (and b!206315 res!94597) b!206338))

(assert (= (and b!206342 res!94572) b!206333))

(assert (= (and b!206333 res!94587) b!206352))

(assert (= (and b!206342 c!39564) b!206326))

(assert (= (and b!206342 (not c!39564)) b!206349))

(assert (= (and b!206326 res!94579) b!206310))

(assert (= (and b!206342 (not res!94605)) b!206353))

(assert (= (and b!206353 (not res!94573)) b!206347))

(assert (= (and b!206347 (not res!94584)) b!206335))

(assert (= (and b!206335 (not res!94599)) b!206359))

(assert (= b!206318 b!206357))

(assert (= b!206330 b!206318))

(assert (= (and start!22274 ((_ is Cons!3285) rules!1920)) b!206330))

(assert (= b!206343 b!206331))

(assert (= b!206328 b!206343))

(assert (= start!22274 b!206328))

(assert (= b!206355 b!206344))

(assert (= b!206322 b!206355))

(assert (= b!206334 b!206322))

(assert (= (and start!22274 ((_ is Cons!3286) tokens!465)) b!206334))

(declare-fun m!227533 () Bool)

(assert (=> b!206355 m!227533))

(declare-fun m!227535 () Bool)

(assert (=> b!206355 m!227535))

(declare-fun m!227537 () Bool)

(assert (=> b!206336 m!227537))

(declare-fun m!227539 () Bool)

(assert (=> b!206323 m!227539))

(assert (=> b!206323 m!227539))

(declare-fun m!227541 () Bool)

(assert (=> b!206323 m!227541))

(declare-fun m!227543 () Bool)

(assert (=> b!206323 m!227543))

(declare-fun m!227545 () Bool)

(assert (=> b!206313 m!227545))

(declare-fun m!227547 () Bool)

(assert (=> b!206313 m!227547))

(declare-fun m!227549 () Bool)

(assert (=> b!206321 m!227549))

(declare-fun m!227551 () Bool)

(assert (=> b!206321 m!227551))

(declare-fun m!227553 () Bool)

(assert (=> b!206321 m!227553))

(declare-fun m!227555 () Bool)

(assert (=> b!206321 m!227555))

(declare-fun m!227557 () Bool)

(assert (=> b!206321 m!227557))

(assert (=> b!206321 m!227557))

(declare-fun m!227559 () Bool)

(assert (=> b!206321 m!227559))

(declare-fun m!227561 () Bool)

(assert (=> b!206321 m!227561))

(assert (=> b!206321 m!227549))

(declare-fun m!227563 () Bool)

(assert (=> b!206321 m!227563))

(declare-fun m!227565 () Bool)

(assert (=> b!206321 m!227565))

(declare-fun m!227567 () Bool)

(assert (=> b!206321 m!227567))

(assert (=> b!206321 m!227553))

(declare-fun m!227569 () Bool)

(assert (=> b!206321 m!227569))

(assert (=> b!206321 m!227565))

(declare-fun m!227571 () Bool)

(assert (=> b!206321 m!227571))

(assert (=> b!206321 m!227563))

(declare-fun m!227573 () Bool)

(assert (=> b!206321 m!227573))

(declare-fun m!227575 () Bool)

(assert (=> b!206325 m!227575))

(assert (=> b!206325 m!227575))

(declare-fun m!227577 () Bool)

(assert (=> b!206325 m!227577))

(declare-fun m!227579 () Bool)

(assert (=> b!206325 m!227579))

(declare-fun m!227581 () Bool)

(assert (=> b!206346 m!227581))

(declare-fun m!227583 () Bool)

(assert (=> b!206359 m!227583))

(declare-fun m!227585 () Bool)

(assert (=> b!206345 m!227585))

(declare-fun m!227587 () Bool)

(assert (=> b!206334 m!227587))

(declare-fun m!227589 () Bool)

(assert (=> b!206343 m!227589))

(declare-fun m!227591 () Bool)

(assert (=> b!206343 m!227591))

(declare-fun m!227593 () Bool)

(assert (=> b!206342 m!227593))

(declare-fun m!227595 () Bool)

(assert (=> b!206342 m!227595))

(declare-fun m!227597 () Bool)

(assert (=> b!206342 m!227597))

(declare-fun m!227599 () Bool)

(assert (=> b!206342 m!227599))

(declare-fun m!227601 () Bool)

(assert (=> b!206342 m!227601))

(declare-fun m!227603 () Bool)

(assert (=> b!206342 m!227603))

(declare-fun m!227605 () Bool)

(assert (=> b!206342 m!227605))

(declare-fun m!227607 () Bool)

(assert (=> b!206342 m!227607))

(declare-fun m!227609 () Bool)

(assert (=> b!206342 m!227609))

(declare-fun m!227611 () Bool)

(assert (=> b!206342 m!227611))

(declare-fun m!227613 () Bool)

(assert (=> b!206342 m!227613))

(declare-fun m!227615 () Bool)

(assert (=> b!206342 m!227615))

(declare-fun m!227617 () Bool)

(assert (=> b!206342 m!227617))

(declare-fun m!227619 () Bool)

(assert (=> b!206342 m!227619))

(declare-fun m!227621 () Bool)

(assert (=> b!206342 m!227621))

(declare-fun m!227623 () Bool)

(assert (=> b!206342 m!227623))

(declare-fun m!227625 () Bool)

(assert (=> b!206342 m!227625))

(declare-fun m!227627 () Bool)

(assert (=> b!206342 m!227627))

(declare-fun m!227629 () Bool)

(assert (=> b!206342 m!227629))

(declare-fun m!227631 () Bool)

(assert (=> b!206342 m!227631))

(declare-fun m!227633 () Bool)

(assert (=> b!206342 m!227633))

(declare-fun m!227635 () Bool)

(assert (=> b!206342 m!227635))

(declare-fun m!227637 () Bool)

(assert (=> b!206342 m!227637))

(declare-fun m!227639 () Bool)

(assert (=> b!206342 m!227639))

(declare-fun m!227641 () Bool)

(assert (=> b!206342 m!227641))

(declare-fun m!227643 () Bool)

(assert (=> b!206342 m!227643))

(assert (=> b!206342 m!227599))

(declare-fun m!227645 () Bool)

(assert (=> b!206342 m!227645))

(assert (=> b!206342 m!227639))

(declare-fun m!227647 () Bool)

(assert (=> b!206342 m!227647))

(declare-fun m!227649 () Bool)

(assert (=> b!206342 m!227649))

(declare-fun m!227651 () Bool)

(assert (=> b!206342 m!227651))

(declare-fun m!227653 () Bool)

(assert (=> b!206342 m!227653))

(declare-fun m!227655 () Bool)

(assert (=> b!206342 m!227655))

(declare-fun m!227657 () Bool)

(assert (=> b!206342 m!227657))

(declare-fun m!227659 () Bool)

(assert (=> b!206342 m!227659))

(declare-fun m!227661 () Bool)

(assert (=> b!206342 m!227661))

(declare-fun m!227663 () Bool)

(assert (=> b!206342 m!227663))

(assert (=> b!206342 m!227623))

(declare-fun m!227665 () Bool)

(assert (=> b!206342 m!227665))

(declare-fun m!227667 () Bool)

(assert (=> b!206337 m!227667))

(declare-fun m!227669 () Bool)

(assert (=> b!206337 m!227669))

(declare-fun m!227671 () Bool)

(assert (=> b!206314 m!227671))

(declare-fun m!227673 () Bool)

(assert (=> b!206353 m!227673))

(declare-fun m!227675 () Bool)

(assert (=> b!206338 m!227675))

(declare-fun m!227677 () Bool)

(assert (=> b!206348 m!227677))

(assert (=> b!206348 m!227677))

(declare-fun m!227679 () Bool)

(assert (=> b!206348 m!227679))

(declare-fun m!227681 () Bool)

(assert (=> b!206319 m!227681))

(assert (=> b!206319 m!227623))

(declare-fun m!227683 () Bool)

(assert (=> b!206315 m!227683))

(declare-fun m!227685 () Bool)

(assert (=> start!22274 m!227685))

(declare-fun m!227687 () Bool)

(assert (=> b!206358 m!227687))

(declare-fun m!227689 () Bool)

(assert (=> b!206358 m!227689))

(declare-fun m!227691 () Bool)

(assert (=> b!206358 m!227691))

(declare-fun m!227693 () Bool)

(assert (=> b!206347 m!227693))

(declare-fun m!227695 () Bool)

(assert (=> b!206333 m!227695))

(declare-fun m!227697 () Bool)

(assert (=> b!206333 m!227697))

(declare-fun m!227699 () Bool)

(assert (=> b!206354 m!227699))

(declare-fun m!227701 () Bool)

(assert (=> b!206329 m!227701))

(declare-fun m!227703 () Bool)

(assert (=> b!206326 m!227703))

(declare-fun m!227705 () Bool)

(assert (=> b!206326 m!227705))

(declare-fun m!227707 () Bool)

(assert (=> b!206324 m!227707))

(assert (=> b!206324 m!227707))

(declare-fun m!227709 () Bool)

(assert (=> b!206324 m!227709))

(assert (=> b!206324 m!227709))

(declare-fun m!227711 () Bool)

(assert (=> b!206324 m!227711))

(declare-fun m!227713 () Bool)

(assert (=> b!206324 m!227713))

(declare-fun m!227715 () Bool)

(assert (=> b!206312 m!227715))

(declare-fun m!227717 () Bool)

(assert (=> b!206339 m!227717))

(declare-fun m!227719 () Bool)

(assert (=> b!206316 m!227719))

(declare-fun m!227721 () Bool)

(assert (=> b!206316 m!227721))

(declare-fun m!227723 () Bool)

(assert (=> b!206340 m!227723))

(declare-fun m!227725 () Bool)

(assert (=> b!206318 m!227725))

(declare-fun m!227727 () Bool)

(assert (=> b!206318 m!227727))

(declare-fun m!227729 () Bool)

(assert (=> b!206322 m!227729))

(declare-fun m!227731 () Bool)

(assert (=> b!206350 m!227731))

(declare-fun m!227733 () Bool)

(assert (=> b!206328 m!227733))

(declare-fun m!227735 () Bool)

(assert (=> b!206341 m!227735))

(declare-fun m!227737 () Bool)

(assert (=> b!206317 m!227737))

(declare-fun m!227739 () Bool)

(assert (=> b!206317 m!227739))

(declare-fun m!227741 () Bool)

(assert (=> b!206317 m!227741))

(declare-fun m!227743 () Bool)

(assert (=> b!206317 m!227743))

(declare-fun m!227745 () Bool)

(assert (=> b!206317 m!227745))

(check-sat (not b!206336) (not b_next!7945) (not b!206319) (not b!206341) b_and!14913 (not b!206330) (not b!206339) (not b!206325) (not b!206328) b_and!14911 (not b!206337) (not b!206326) b_and!14917 (not b!206314) (not start!22274) b_and!14919 (not b!206345) (not b!206353) (not b!206321) (not b!206340) (not b!206329) (not b!206315) b_and!14909 (not b_next!7941) (not b!206346) (not b!206324) (not b!206322) b_and!14915 (not b!206323) (not b_next!7939) (not b!206348) (not b!206316) (not b_next!7937) (not b!206354) (not b!206358) (not b!206342) (not b!206313) (not b!206350) (not b!206338) (not b!206333) (not b!206318) (not b!206317) (not b!206334) (not b!206312) (not b!206343) (not b!206347) (not b!206359) (not b_next!7947) (not b!206368) (not b_next!7943) (not b!206355))
(check-sat (not b_next!7945) b_and!14913 b_and!14915 (not b_next!7939) (not b_next!7937) b_and!14911 b_and!14917 b_and!14919 b_and!14909 (not b_next!7941) (not b_next!7947) (not b_next!7943))
