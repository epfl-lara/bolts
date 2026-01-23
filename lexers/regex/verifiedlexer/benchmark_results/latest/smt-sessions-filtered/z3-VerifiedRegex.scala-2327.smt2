; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115038 () Bool)

(assert start!115038)

(declare-fun b!1302922 () Bool)

(declare-fun b_free!31107 () Bool)

(declare-fun b_next!31811 () Bool)

(assert (=> b!1302922 (= b_free!31107 (not b_next!31811))))

(declare-fun tp!380281 () Bool)

(declare-fun b_and!86959 () Bool)

(assert (=> b!1302922 (= tp!380281 b_and!86959)))

(declare-fun b_free!31109 () Bool)

(declare-fun b_next!31813 () Bool)

(assert (=> b!1302922 (= b_free!31109 (not b_next!31813))))

(declare-fun tp!380280 () Bool)

(declare-fun b_and!86961 () Bool)

(assert (=> b!1302922 (= tp!380280 b_and!86961)))

(declare-fun b!1302942 () Bool)

(declare-fun b_free!31111 () Bool)

(declare-fun b_next!31815 () Bool)

(assert (=> b!1302942 (= b_free!31111 (not b_next!31815))))

(declare-fun tp!380285 () Bool)

(declare-fun b_and!86963 () Bool)

(assert (=> b!1302942 (= tp!380285 b_and!86963)))

(declare-fun b_free!31113 () Bool)

(declare-fun b_next!31817 () Bool)

(assert (=> b!1302942 (= b_free!31113 (not b_next!31817))))

(declare-fun tp!380290 () Bool)

(declare-fun b_and!86965 () Bool)

(assert (=> b!1302942 (= tp!380290 b_and!86965)))

(declare-fun b!1302924 () Bool)

(declare-fun b_free!31115 () Bool)

(declare-fun b_next!31819 () Bool)

(assert (=> b!1302924 (= b_free!31115 (not b_next!31819))))

(declare-fun tp!380288 () Bool)

(declare-fun b_and!86967 () Bool)

(assert (=> b!1302924 (= tp!380288 b_and!86967)))

(declare-fun b_free!31117 () Bool)

(declare-fun b_next!31821 () Bool)

(assert (=> b!1302924 (= b_free!31117 (not b_next!31821))))

(declare-fun tp!380284 () Bool)

(declare-fun b_and!86969 () Bool)

(assert (=> b!1302924 (= tp!380284 b_and!86969)))

(declare-fun b!1302932 () Bool)

(assert (=> b!1302932 true))

(assert (=> b!1302932 true))

(declare-fun b!1302940 () Bool)

(assert (=> b!1302940 true))

(declare-fun b!1302926 () Bool)

(assert (=> b!1302926 true))

(declare-fun e!835466 () Bool)

(assert (=> b!1302922 (= e!835466 (and tp!380281 tp!380280))))

(declare-fun b!1302923 () Bool)

(declare-fun e!835481 () Bool)

(declare-fun e!835468 () Bool)

(declare-fun tp!380283 () Bool)

(assert (=> b!1302923 (= e!835481 (and e!835468 tp!380283))))

(declare-fun e!835473 () Bool)

(assert (=> b!1302924 (= e!835473 (and tp!380288 tp!380284))))

(declare-fun b!1302925 () Bool)

(declare-fun res!583843 () Bool)

(declare-fun e!835485 () Bool)

(assert (=> b!1302925 (=> (not res!583843) (not e!835485))))

(declare-datatypes ((LexerInterface!1958 0))(
  ( (LexerInterfaceExt!1955 (__x!8535 Int)) (Lexer!1956) )
))
(declare-fun thiss!19762 () LexerInterface!1958)

(declare-datatypes ((List!13162 0))(
  ( (Nil!13096) (Cons!13096 (h!18497 (_ BitVec 16)) (t!117723 List!13162)) )
))
(declare-datatypes ((TokenValue!2353 0))(
  ( (FloatLiteralValue!4706 (text!16916 List!13162)) (TokenValueExt!2352 (__x!8536 Int)) (Broken!11765 (value!74102 List!13162)) (Object!2418) (End!2353) (Def!2353) (Underscore!2353) (Match!2353) (Else!2353) (Error!2353) (Case!2353) (If!2353) (Extends!2353) (Abstract!2353) (Class!2353) (Val!2353) (DelimiterValue!4706 (del!2413 List!13162)) (KeywordValue!2359 (value!74103 List!13162)) (CommentValue!4706 (value!74104 List!13162)) (WhitespaceValue!4706 (value!74105 List!13162)) (IndentationValue!2353 (value!74106 List!13162)) (String!16000) (Int32!2353) (Broken!11766 (value!74107 List!13162)) (Boolean!2354) (Unit!19209) (OperatorValue!2356 (op!2413 List!13162)) (IdentifierValue!4706 (value!74108 List!13162)) (IdentifierValue!4707 (value!74109 List!13162)) (WhitespaceValue!4707 (value!74110 List!13162)) (True!4706) (False!4706) (Broken!11767 (value!74111 List!13162)) (Broken!11768 (value!74112 List!13162)) (True!4707) (RightBrace!2353) (RightBracket!2353) (Colon!2353) (Null!2353) (Comma!2353) (LeftBracket!2353) (False!4707) (LeftBrace!2353) (ImaginaryLiteralValue!2353 (text!16917 List!13162)) (StringLiteralValue!7059 (value!74113 List!13162)) (EOFValue!2353 (value!74114 List!13162)) (IdentValue!2353 (value!74115 List!13162)) (DelimiterValue!4707 (value!74116 List!13162)) (DedentValue!2353 (value!74117 List!13162)) (NewLineValue!2353 (value!74118 List!13162)) (IntegerValue!7059 (value!74119 (_ BitVec 32)) (text!16918 List!13162)) (IntegerValue!7060 (value!74120 Int) (text!16919 List!13162)) (Times!2353) (Or!2353) (Equal!2353) (Minus!2353) (Broken!11769 (value!74121 List!13162)) (And!2353) (Div!2353) (LessEqual!2353) (Mod!2353) (Concat!5930) (Not!2353) (Plus!2353) (SpaceValue!2353 (value!74122 List!13162)) (IntegerValue!7061 (value!74123 Int) (text!16920 List!13162)) (StringLiteralValue!7060 (text!16921 List!13162)) (FloatLiteralValue!4707 (text!16922 List!13162)) (BytesLiteralValue!2353 (value!74124 List!13162)) (CommentValue!4707 (value!74125 List!13162)) (StringLiteralValue!7061 (value!74126 List!13162)) (ErrorTokenValue!2353 (msg!2414 List!13162)) )
))
(declare-datatypes ((C!7444 0))(
  ( (C!7445 (val!4282 Int)) )
))
(declare-datatypes ((List!13163 0))(
  ( (Nil!13097) (Cons!13097 (h!18498 C!7444) (t!117724 List!13163)) )
))
(declare-datatypes ((IArray!8597 0))(
  ( (IArray!8598 (innerList!4356 List!13163)) )
))
(declare-datatypes ((Conc!4296 0))(
  ( (Node!4296 (left!11261 Conc!4296) (right!11591 Conc!4296) (csize!8822 Int) (cheight!4507 Int)) (Leaf!6624 (xs!7011 IArray!8597) (csize!8823 Int)) (Empty!4296) )
))
(declare-datatypes ((BalanceConc!8532 0))(
  ( (BalanceConc!8533 (c!214252 Conc!4296)) )
))
(declare-datatypes ((Regex!3577 0))(
  ( (ElementMatch!3577 (c!214253 C!7444)) (Concat!5931 (regOne!7666 Regex!3577) (regTwo!7666 Regex!3577)) (EmptyExpr!3577) (Star!3577 (reg!3906 Regex!3577)) (EmptyLang!3577) (Union!3577 (regOne!7667 Regex!3577) (regTwo!7667 Regex!3577)) )
))
(declare-datatypes ((String!16001 0))(
  ( (String!16002 (value!74127 String)) )
))
(declare-datatypes ((TokenValueInjection!4366 0))(
  ( (TokenValueInjection!4367 (toValue!3478 Int) (toChars!3337 Int)) )
))
(declare-datatypes ((Rule!4326 0))(
  ( (Rule!4327 (regex!2263 Regex!3577) (tag!2525 String!16001) (isSeparator!2263 Bool) (transformation!2263 TokenValueInjection!4366)) )
))
(declare-datatypes ((List!13164 0))(
  ( (Nil!13098) (Cons!13098 (h!18499 Rule!4326) (t!117725 List!13164)) )
))
(declare-fun rules!2550 () List!13164)

(declare-datatypes ((Token!4188 0))(
  ( (Token!4189 (value!74128 TokenValue!2353) (rule!4002 Rule!4326) (size!10692 Int) (originalCharacters!3125 List!13163)) )
))
(declare-fun t2!34 () Token!4188)

(declare-fun rulesProduceIndividualToken!927 (LexerInterface!1958 List!13164 Token!4188) Bool)

(assert (=> b!1302925 (= res!583843 (rulesProduceIndividualToken!927 thiss!19762 rules!2550 t2!34))))

(declare-fun e!835488 () Bool)

(declare-fun e!835479 () Bool)

(assert (=> b!1302926 (= e!835488 e!835479)))

(declare-fun res!583835 () Bool)

(assert (=> b!1302926 (=> res!583835 e!835479)))

(declare-fun lambda!51625 () Int)

(declare-fun exists!228 (List!13164 Int) Bool)

(assert (=> b!1302926 (= res!583835 (not (exists!228 rules!2550 lambda!51625)))))

(assert (=> b!1302926 (exists!228 rules!2550 lambda!51625)))

(declare-fun lt!428436 () Regex!3577)

(declare-fun lambda!51623 () Int)

(declare-datatypes ((Unit!19210 0))(
  ( (Unit!19211) )
))
(declare-fun lt!428439 () Unit!19210)

(declare-fun lemmaMapContains!6 (List!13164 Int Regex!3577) Unit!19210)

(assert (=> b!1302926 (= lt!428439 (lemmaMapContains!6 rules!2550 lambda!51623 lt!428436))))

(declare-fun b!1302927 () Bool)

(declare-fun res!583830 () Bool)

(assert (=> b!1302927 (=> (not res!583830) (not e!835485))))

(declare-fun t1!34 () Token!4188)

(assert (=> b!1302927 (= res!583830 (not (= (isSeparator!2263 (rule!4002 t1!34)) (isSeparator!2263 (rule!4002 t2!34)))))))

(declare-fun b!1302928 () Bool)

(declare-fun e!835483 () Bool)

(assert (=> b!1302928 (= e!835483 e!835488)))

(declare-fun res!583833 () Bool)

(assert (=> b!1302928 (=> res!583833 e!835488)))

(declare-datatypes ((List!13165 0))(
  ( (Nil!13099) (Cons!13099 (h!18500 Regex!3577) (t!117726 List!13165)) )
))
(declare-fun contains!2210 (List!13165 Regex!3577) Bool)

(declare-fun map!2861 (List!13164 Int) List!13165)

(assert (=> b!1302928 (= res!583833 (not (contains!2210 (map!2861 rules!2550 lambda!51623) lt!428436)))))

(declare-fun lambda!51624 () Int)

(declare-fun getWitness!120 (List!13165 Int) Regex!3577)

(assert (=> b!1302928 (= lt!428436 (getWitness!120 (map!2861 rules!2550 lambda!51623) lambda!51624))))

(declare-fun b!1302929 () Bool)

(declare-fun e!835480 () Bool)

(declare-fun e!835475 () Bool)

(assert (=> b!1302929 (= e!835480 e!835475)))

(declare-fun res!583827 () Bool)

(assert (=> b!1302929 (=> (not res!583827) (not e!835475))))

(declare-fun lt!428431 () Regex!3577)

(declare-fun lt!428440 () List!13163)

(declare-fun prefixMatch!90 (Regex!3577 List!13163) Bool)

(assert (=> b!1302929 (= res!583827 (prefixMatch!90 lt!428431 lt!428440))))

(declare-fun rulesRegex!148 (LexerInterface!1958 List!13164) Regex!3577)

(assert (=> b!1302929 (= lt!428431 (rulesRegex!148 thiss!19762 rules!2550))))

(declare-fun lt!428435 () List!13163)

(declare-fun lt!428437 () C!7444)

(declare-fun ++!3334 (List!13163 List!13163) List!13163)

(assert (=> b!1302929 (= lt!428440 (++!3334 lt!428435 (Cons!13097 lt!428437 Nil!13097)))))

(declare-fun lt!428438 () BalanceConc!8532)

(declare-fun apply!2929 (BalanceConc!8532 Int) C!7444)

(assert (=> b!1302929 (= lt!428437 (apply!2929 lt!428438 0))))

(declare-fun lt!428433 () BalanceConc!8532)

(declare-fun list!4905 (BalanceConc!8532) List!13163)

(assert (=> b!1302929 (= lt!428435 (list!4905 lt!428433))))

(declare-fun charsOf!1235 (Token!4188) BalanceConc!8532)

(assert (=> b!1302929 (= lt!428433 (charsOf!1235 t1!34))))

(declare-fun b!1302930 () Bool)

(declare-fun res!583834 () Bool)

(assert (=> b!1302930 (=> (not res!583834) (not e!835485))))

(assert (=> b!1302930 (= res!583834 (rulesProduceIndividualToken!927 thiss!19762 rules!2550 t1!34))))

(declare-fun e!835474 () Bool)

(declare-fun b!1302931 () Bool)

(declare-fun tp!380282 () Bool)

(declare-fun e!835486 () Bool)

(declare-fun inv!21 (TokenValue!2353) Bool)

(assert (=> b!1302931 (= e!835474 (and (inv!21 (value!74128 t2!34)) e!835486 tp!380282))))

(declare-fun b!1302921 () Bool)

(declare-fun res!583842 () Bool)

(declare-fun e!835470 () Bool)

(assert (=> b!1302921 (=> res!583842 e!835470)))

(declare-fun lt!428427 () List!13163)

(declare-fun matchR!1579 (Regex!3577 List!13163) Bool)

(assert (=> b!1302921 (= res!583842 (not (matchR!1579 lt!428431 lt!428427)))))

(declare-fun res!583839 () Bool)

(assert (=> start!115038 (=> (not res!583839) (not e!835485))))

(get-info :version)

(assert (=> start!115038 (= res!583839 ((_ is Lexer!1956) thiss!19762))))

(assert (=> start!115038 e!835485))

(assert (=> start!115038 true))

(assert (=> start!115038 e!835481))

(declare-fun e!835467 () Bool)

(declare-fun inv!17521 (Token!4188) Bool)

(assert (=> start!115038 (and (inv!17521 t1!34) e!835467)))

(assert (=> start!115038 (and (inv!17521 t2!34) e!835474)))

(declare-fun e!835469 () Bool)

(assert (=> b!1302932 (= e!835475 (not e!835469))))

(declare-fun res!583838 () Bool)

(assert (=> b!1302932 (=> res!583838 e!835469)))

(declare-fun lambda!51622 () Int)

(declare-fun Exists!735 (Int) Bool)

(assert (=> b!1302932 (= res!583838 (not (Exists!735 lambda!51622)))))

(assert (=> b!1302932 (Exists!735 lambda!51622)))

(declare-fun lt!428429 () Unit!19210)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!53 (Regex!3577 List!13163) Unit!19210)

(assert (=> b!1302932 (= lt!428429 (lemmaPrefixMatchThenExistsStringThatMatches!53 lt!428431 lt!428440))))

(declare-fun b!1302933 () Bool)

(assert (=> b!1302933 (= e!835485 e!835480)))

(declare-fun res!583826 () Bool)

(assert (=> b!1302933 (=> (not res!583826) (not e!835480))))

(declare-fun size!10693 (BalanceConc!8532) Int)

(assert (=> b!1302933 (= res!583826 (> (size!10693 lt!428438) 0))))

(assert (=> b!1302933 (= lt!428438 (charsOf!1235 t2!34))))

(declare-fun b!1302934 () Bool)

(declare-fun tp!380289 () Bool)

(declare-fun inv!17518 (String!16001) Bool)

(declare-fun inv!17522 (TokenValueInjection!4366) Bool)

(assert (=> b!1302934 (= e!835468 (and tp!380289 (inv!17518 (tag!2525 (h!18499 rules!2550))) (inv!17522 (transformation!2263 (h!18499 rules!2550))) e!835473))))

(declare-fun b!1302935 () Bool)

(declare-fun e!835477 () Bool)

(assert (=> b!1302935 (= e!835477 e!835470)))

(declare-fun res!583836 () Bool)

(assert (=> b!1302935 (=> res!583836 e!835470)))

(declare-fun lt!428428 () C!7444)

(declare-fun contains!2211 (List!13163 C!7444) Bool)

(assert (=> b!1302935 (= res!583836 (not (contains!2211 lt!428440 lt!428428)))))

(assert (=> b!1302935 (= lt!428428 (apply!2929 lt!428433 0))))

(declare-fun b!1302936 () Bool)

(declare-fun res!583831 () Bool)

(assert (=> b!1302936 (=> (not res!583831) (not e!835485))))

(declare-fun rulesInvariant!1828 (LexerInterface!1958 List!13164) Bool)

(assert (=> b!1302936 (= res!583831 (rulesInvariant!1828 thiss!19762 rules!2550))))

(declare-fun b!1302937 () Bool)

(assert (=> b!1302937 (= e!835469 e!835477)))

(declare-fun res!583841 () Bool)

(assert (=> b!1302937 (=> res!583841 e!835477)))

(declare-fun getSuffix!433 (List!13163 List!13163) List!13163)

(assert (=> b!1302937 (= res!583841 (not (= lt!428427 (++!3334 lt!428440 (getSuffix!433 lt!428427 lt!428440)))))))

(declare-fun pickWitness!40 (Int) List!13163)

(assert (=> b!1302937 (= lt!428427 (pickWitness!40 lambda!51622))))

(declare-fun b!1302938 () Bool)

(declare-fun res!583840 () Bool)

(assert (=> b!1302938 (=> (not res!583840) (not e!835485))))

(declare-fun isEmpty!7761 (List!13164) Bool)

(assert (=> b!1302938 (= res!583840 (not (isEmpty!7761 rules!2550)))))

(declare-fun b!1302939 () Bool)

(declare-fun res!583837 () Bool)

(assert (=> b!1302939 (=> (not res!583837) (not e!835480))))

(declare-fun separableTokensPredicate!241 (LexerInterface!1958 Token!4188 Token!4188 List!13164) Bool)

(assert (=> b!1302939 (= res!583837 (not (separableTokensPredicate!241 thiss!19762 t1!34 t2!34 rules!2550)))))

(assert (=> b!1302940 (= e!835470 e!835483)))

(declare-fun res!583828 () Bool)

(assert (=> b!1302940 (=> res!583828 e!835483)))

(declare-fun exists!229 (List!13165 Int) Bool)

(assert (=> b!1302940 (= res!583828 (not (exists!229 (map!2861 rules!2550 lambda!51623) lambda!51624)))))

(declare-fun lt!428434 () List!13165)

(assert (=> b!1302940 (exists!229 lt!428434 lambda!51624)))

(declare-fun lt!428430 () Unit!19210)

(declare-fun matchRGenUnionSpec!14 (Regex!3577 List!13165 List!13163) Unit!19210)

(assert (=> b!1302940 (= lt!428430 (matchRGenUnionSpec!14 lt!428431 lt!428434 lt!428427))))

(assert (=> b!1302940 (= lt!428434 (map!2861 rules!2550 lambda!51623))))

(declare-fun b!1302941 () Bool)

(declare-fun res!583829 () Bool)

(assert (=> b!1302941 (=> res!583829 e!835470)))

(assert (=> b!1302941 (= res!583829 (not (contains!2211 lt!428440 lt!428437)))))

(declare-fun e!835476 () Bool)

(assert (=> b!1302942 (= e!835476 (and tp!380285 tp!380290))))

(declare-fun b!1302943 () Bool)

(assert (=> b!1302943 (= e!835479 true)))

(declare-datatypes ((List!13166 0))(
  ( (Nil!13100) (Cons!13100 (h!18501 Token!4188) (t!117727 List!13166)) )
))
(declare-datatypes ((IArray!8599 0))(
  ( (IArray!8600 (innerList!4357 List!13166)) )
))
(declare-datatypes ((Conc!4297 0))(
  ( (Node!4297 (left!11262 Conc!4297) (right!11592 Conc!4297) (csize!8824 Int) (cheight!4508 Int)) (Leaf!6625 (xs!7012 IArray!8599) (csize!8825 Int)) (Empty!4297) )
))
(declare-datatypes ((BalanceConc!8534 0))(
  ( (BalanceConc!8535 (c!214254 Conc!4297)) )
))
(declare-fun lt!428426 () BalanceConc!8534)

(declare-fun singletonSeq!832 (Token!4188) BalanceConc!8534)

(assert (=> b!1302943 (= lt!428426 (singletonSeq!832 t1!34))))

(declare-fun lt!428432 () Rule!4326)

(declare-fun getWitness!121 (List!13164 Int) Rule!4326)

(assert (=> b!1302943 (= lt!428432 (getWitness!121 rules!2550 lambda!51625))))

(declare-fun b!1302944 () Bool)

(declare-fun res!583832 () Bool)

(assert (=> b!1302944 (=> res!583832 e!835470)))

(assert (=> b!1302944 (= res!583832 (not (contains!2211 lt!428427 lt!428437)))))

(declare-fun e!835472 () Bool)

(declare-fun tp!380287 () Bool)

(declare-fun b!1302945 () Bool)

(assert (=> b!1302945 (= e!835472 (and tp!380287 (inv!17518 (tag!2525 (rule!4002 t1!34))) (inv!17522 (transformation!2263 (rule!4002 t1!34))) e!835466))))

(declare-fun b!1302946 () Bool)

(declare-fun res!583844 () Bool)

(assert (=> b!1302946 (=> (not res!583844) (not e!835480))))

(declare-fun sepAndNonSepRulesDisjointChars!636 (List!13164 List!13164) Bool)

(assert (=> b!1302946 (= res!583844 (sepAndNonSepRulesDisjointChars!636 rules!2550 rules!2550))))

(declare-fun b!1302947 () Bool)

(declare-fun tp!380279 () Bool)

(assert (=> b!1302947 (= e!835467 (and (inv!21 (value!74128 t1!34)) e!835472 tp!380279))))

(declare-fun b!1302948 () Bool)

(declare-fun tp!380286 () Bool)

(assert (=> b!1302948 (= e!835486 (and tp!380286 (inv!17518 (tag!2525 (rule!4002 t2!34))) (inv!17522 (transformation!2263 (rule!4002 t2!34))) e!835476))))

(declare-fun b!1302949 () Bool)

(declare-fun res!583825 () Bool)

(assert (=> b!1302949 (=> res!583825 e!835470)))

(assert (=> b!1302949 (= res!583825 (not (contains!2211 lt!428427 lt!428428)))))

(assert (= (and start!115038 res!583839) b!1302938))

(assert (= (and b!1302938 res!583840) b!1302936))

(assert (= (and b!1302936 res!583831) b!1302930))

(assert (= (and b!1302930 res!583834) b!1302925))

(assert (= (and b!1302925 res!583843) b!1302927))

(assert (= (and b!1302927 res!583830) b!1302933))

(assert (= (and b!1302933 res!583826) b!1302946))

(assert (= (and b!1302946 res!583844) b!1302939))

(assert (= (and b!1302939 res!583837) b!1302929))

(assert (= (and b!1302929 res!583827) b!1302932))

(assert (= (and b!1302932 (not res!583838)) b!1302937))

(assert (= (and b!1302937 (not res!583841)) b!1302935))

(assert (= (and b!1302935 (not res!583836)) b!1302949))

(assert (= (and b!1302949 (not res!583825)) b!1302941))

(assert (= (and b!1302941 (not res!583829)) b!1302944))

(assert (= (and b!1302944 (not res!583832)) b!1302921))

(assert (= (and b!1302921 (not res!583842)) b!1302940))

(assert (= (and b!1302940 (not res!583828)) b!1302928))

(assert (= (and b!1302928 (not res!583833)) b!1302926))

(assert (= (and b!1302926 (not res!583835)) b!1302943))

(assert (= b!1302934 b!1302924))

(assert (= b!1302923 b!1302934))

(assert (= (and start!115038 ((_ is Cons!13098) rules!2550)) b!1302923))

(assert (= b!1302945 b!1302922))

(assert (= b!1302947 b!1302945))

(assert (= start!115038 b!1302947))

(assert (= b!1302948 b!1302942))

(assert (= b!1302931 b!1302948))

(assert (= start!115038 b!1302931))

(declare-fun m!1454313 () Bool)

(assert (=> b!1302931 m!1454313))

(declare-fun m!1454315 () Bool)

(assert (=> b!1302937 m!1454315))

(assert (=> b!1302937 m!1454315))

(declare-fun m!1454317 () Bool)

(assert (=> b!1302937 m!1454317))

(declare-fun m!1454319 () Bool)

(assert (=> b!1302937 m!1454319))

(declare-fun m!1454321 () Bool)

(assert (=> b!1302938 m!1454321))

(declare-fun m!1454323 () Bool)

(assert (=> b!1302936 m!1454323))

(declare-fun m!1454325 () Bool)

(assert (=> b!1302934 m!1454325))

(declare-fun m!1454327 () Bool)

(assert (=> b!1302934 m!1454327))

(declare-fun m!1454329 () Bool)

(assert (=> b!1302926 m!1454329))

(assert (=> b!1302926 m!1454329))

(declare-fun m!1454331 () Bool)

(assert (=> b!1302926 m!1454331))

(declare-fun m!1454333 () Bool)

(assert (=> b!1302947 m!1454333))

(declare-fun m!1454335 () Bool)

(assert (=> b!1302935 m!1454335))

(declare-fun m!1454337 () Bool)

(assert (=> b!1302935 m!1454337))

(declare-fun m!1454339 () Bool)

(assert (=> b!1302933 m!1454339))

(declare-fun m!1454341 () Bool)

(assert (=> b!1302933 m!1454341))

(declare-fun m!1454343 () Bool)

(assert (=> b!1302941 m!1454343))

(declare-fun m!1454345 () Bool)

(assert (=> b!1302948 m!1454345))

(declare-fun m!1454347 () Bool)

(assert (=> b!1302948 m!1454347))

(declare-fun m!1454349 () Bool)

(assert (=> b!1302943 m!1454349))

(declare-fun m!1454351 () Bool)

(assert (=> b!1302943 m!1454351))

(declare-fun m!1454353 () Bool)

(assert (=> b!1302930 m!1454353))

(declare-fun m!1454355 () Bool)

(assert (=> b!1302932 m!1454355))

(assert (=> b!1302932 m!1454355))

(declare-fun m!1454357 () Bool)

(assert (=> b!1302932 m!1454357))

(declare-fun m!1454359 () Bool)

(assert (=> b!1302921 m!1454359))

(declare-fun m!1454361 () Bool)

(assert (=> b!1302944 m!1454361))

(declare-fun m!1454363 () Bool)

(assert (=> b!1302929 m!1454363))

(declare-fun m!1454365 () Bool)

(assert (=> b!1302929 m!1454365))

(declare-fun m!1454367 () Bool)

(assert (=> b!1302929 m!1454367))

(declare-fun m!1454369 () Bool)

(assert (=> b!1302929 m!1454369))

(declare-fun m!1454371 () Bool)

(assert (=> b!1302929 m!1454371))

(declare-fun m!1454373 () Bool)

(assert (=> b!1302929 m!1454373))

(declare-fun m!1454375 () Bool)

(assert (=> b!1302946 m!1454375))

(declare-fun m!1454377 () Bool)

(assert (=> b!1302940 m!1454377))

(declare-fun m!1454379 () Bool)

(assert (=> b!1302940 m!1454379))

(declare-fun m!1454381 () Bool)

(assert (=> b!1302940 m!1454381))

(assert (=> b!1302940 m!1454379))

(assert (=> b!1302940 m!1454379))

(declare-fun m!1454383 () Bool)

(assert (=> b!1302940 m!1454383))

(declare-fun m!1454385 () Bool)

(assert (=> b!1302945 m!1454385))

(declare-fun m!1454387 () Bool)

(assert (=> b!1302945 m!1454387))

(assert (=> b!1302928 m!1454379))

(assert (=> b!1302928 m!1454379))

(declare-fun m!1454389 () Bool)

(assert (=> b!1302928 m!1454389))

(assert (=> b!1302928 m!1454379))

(assert (=> b!1302928 m!1454379))

(declare-fun m!1454391 () Bool)

(assert (=> b!1302928 m!1454391))

(declare-fun m!1454393 () Bool)

(assert (=> b!1302925 m!1454393))

(declare-fun m!1454395 () Bool)

(assert (=> start!115038 m!1454395))

(declare-fun m!1454397 () Bool)

(assert (=> start!115038 m!1454397))

(declare-fun m!1454399 () Bool)

(assert (=> b!1302939 m!1454399))

(declare-fun m!1454401 () Bool)

(assert (=> b!1302949 m!1454401))

(check-sat (not b!1302921) (not b!1302931) (not b!1302934) (not b_next!31819) (not b_next!31815) (not b!1302939) (not b!1302937) (not b_next!31817) (not b!1302926) (not b!1302932) (not b!1302949) b_and!86963 (not b!1302933) (not b_next!31821) b_and!86959 (not b!1302938) (not b!1302923) (not b!1302944) (not b!1302943) (not b!1302946) (not b!1302948) (not b!1302928) (not b!1302929) (not b_next!31813) (not b_next!31811) b_and!86969 (not b!1302945) (not b!1302941) b_and!86967 b_and!86965 (not b!1302936) b_and!86961 (not b!1302925) (not b!1302940) (not b!1302930) (not b!1302935) (not start!115038) (not b!1302947))
(check-sat (not b_next!31819) (not b_next!31815) (not b_next!31817) b_and!86961 b_and!86963 (not b_next!31821) b_and!86959 (not b_next!31813) (not b_next!31811) b_and!86969 b_and!86967 b_and!86965)
