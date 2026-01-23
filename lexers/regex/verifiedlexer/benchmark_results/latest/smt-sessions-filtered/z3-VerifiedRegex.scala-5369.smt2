; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273670 () Bool)

(assert start!273670)

(declare-fun b!2820937 () Bool)

(declare-fun b_free!80693 () Bool)

(declare-fun b_next!81397 () Bool)

(assert (=> b!2820937 (= b_free!80693 (not b_next!81397))))

(declare-fun tp!900927 () Bool)

(declare-fun b_and!206079 () Bool)

(assert (=> b!2820937 (= tp!900927 b_and!206079)))

(declare-fun b_free!80695 () Bool)

(declare-fun b_next!81399 () Bool)

(assert (=> b!2820937 (= b_free!80695 (not b_next!81399))))

(declare-fun tp!900930 () Bool)

(declare-fun b_and!206081 () Bool)

(assert (=> b!2820937 (= tp!900930 b_and!206081)))

(declare-fun b!2820948 () Bool)

(declare-fun b_free!80697 () Bool)

(declare-fun b_next!81401 () Bool)

(assert (=> b!2820948 (= b_free!80697 (not b_next!81401))))

(declare-fun tp!900933 () Bool)

(declare-fun b_and!206083 () Bool)

(assert (=> b!2820948 (= tp!900933 b_and!206083)))

(declare-fun b_free!80699 () Bool)

(declare-fun b_next!81403 () Bool)

(assert (=> b!2820948 (= b_free!80699 (not b_next!81403))))

(declare-fun tp!900931 () Bool)

(declare-fun b_and!206085 () Bool)

(assert (=> b!2820948 (= tp!900931 b_and!206085)))

(declare-fun b!2820961 () Bool)

(declare-fun e!1784526 () Bool)

(assert (=> b!2820961 (= e!1784526 true)))

(declare-fun b!2820960 () Bool)

(declare-fun e!1784525 () Bool)

(assert (=> b!2820960 (= e!1784525 e!1784526)))

(declare-fun b!2820959 () Bool)

(declare-fun e!1784524 () Bool)

(assert (=> b!2820959 (= e!1784524 e!1784525)))

(declare-fun b!2820933 () Bool)

(assert (=> b!2820933 e!1784524))

(assert (= b!2820960 b!2820961))

(assert (= b!2820959 b!2820960))

(declare-datatypes ((String!36390 0))(
  ( (String!36391 (value!159568 String)) )
))
(declare-datatypes ((C!16876 0))(
  ( (C!16877 (val!10418 Int)) )
))
(declare-datatypes ((List!33222 0))(
  ( (Nil!33098) (Cons!33098 (h!38518 (_ BitVec 16)) (t!230503 List!33222)) )
))
(declare-datatypes ((TokenValue!5187 0))(
  ( (FloatLiteralValue!10374 (text!36754 List!33222)) (TokenValueExt!5186 (__x!22047 Int)) (Broken!25935 (value!159569 List!33222)) (Object!5310) (End!5187) (Def!5187) (Underscore!5187) (Match!5187) (Else!5187) (Error!5187) (Case!5187) (If!5187) (Extends!5187) (Abstract!5187) (Class!5187) (Val!5187) (DelimiterValue!10374 (del!5247 List!33222)) (KeywordValue!5193 (value!159570 List!33222)) (CommentValue!10374 (value!159571 List!33222)) (WhitespaceValue!10374 (value!159572 List!33222)) (IndentationValue!5187 (value!159573 List!33222)) (String!36392) (Int32!5187) (Broken!25936 (value!159574 List!33222)) (Boolean!5188) (Unit!47040) (OperatorValue!5190 (op!5247 List!33222)) (IdentifierValue!10374 (value!159575 List!33222)) (IdentifierValue!10375 (value!159576 List!33222)) (WhitespaceValue!10375 (value!159577 List!33222)) (True!10374) (False!10374) (Broken!25937 (value!159578 List!33222)) (Broken!25938 (value!159579 List!33222)) (True!10375) (RightBrace!5187) (RightBracket!5187) (Colon!5187) (Null!5187) (Comma!5187) (LeftBracket!5187) (False!10375) (LeftBrace!5187) (ImaginaryLiteralValue!5187 (text!36755 List!33222)) (StringLiteralValue!15561 (value!159580 List!33222)) (EOFValue!5187 (value!159581 List!33222)) (IdentValue!5187 (value!159582 List!33222)) (DelimiterValue!10375 (value!159583 List!33222)) (DedentValue!5187 (value!159584 List!33222)) (NewLineValue!5187 (value!159585 List!33222)) (IntegerValue!15561 (value!159586 (_ BitVec 32)) (text!36756 List!33222)) (IntegerValue!15562 (value!159587 Int) (text!36757 List!33222)) (Times!5187) (Or!5187) (Equal!5187) (Minus!5187) (Broken!25939 (value!159588 List!33222)) (And!5187) (Div!5187) (LessEqual!5187) (Mod!5187) (Concat!13534) (Not!5187) (Plus!5187) (SpaceValue!5187 (value!159589 List!33222)) (IntegerValue!15563 (value!159590 Int) (text!36758 List!33222)) (StringLiteralValue!15562 (text!36759 List!33222)) (FloatLiteralValue!10375 (text!36760 List!33222)) (BytesLiteralValue!5187 (value!159591 List!33222)) (CommentValue!10375 (value!159592 List!33222)) (StringLiteralValue!15563 (value!159593 List!33222)) (ErrorTokenValue!5187 (msg!5248 List!33222)) )
))
(declare-datatypes ((List!33223 0))(
  ( (Nil!33099) (Cons!33099 (h!38519 C!16876) (t!230504 List!33223)) )
))
(declare-datatypes ((IArray!20541 0))(
  ( (IArray!20542 (innerList!10328 List!33223)) )
))
(declare-datatypes ((Conc!10268 0))(
  ( (Node!10268 (left!24997 Conc!10268) (right!25327 Conc!10268) (csize!20766 Int) (cheight!10479 Int)) (Leaf!15638 (xs!13380 IArray!20541) (csize!20767 Int)) (Empty!10268) )
))
(declare-datatypes ((BalanceConc!20174 0))(
  ( (BalanceConc!20175 (c!457036 Conc!10268)) )
))
(declare-datatypes ((TokenValueInjection!9802 0))(
  ( (TokenValueInjection!9803 (toValue!6975 Int) (toChars!6834 Int)) )
))
(declare-datatypes ((Regex!8347 0))(
  ( (ElementMatch!8347 (c!457037 C!16876)) (Concat!13535 (regOne!17206 Regex!8347) (regTwo!17206 Regex!8347)) (EmptyExpr!8347) (Star!8347 (reg!8676 Regex!8347)) (EmptyLang!8347) (Union!8347 (regOne!17207 Regex!8347) (regTwo!17207 Regex!8347)) )
))
(declare-datatypes ((Rule!9714 0))(
  ( (Rule!9715 (regex!4957 Regex!8347) (tag!5461 String!36390) (isSeparator!4957 Bool) (transformation!4957 TokenValueInjection!9802)) )
))
(declare-datatypes ((List!33224 0))(
  ( (Nil!33100) (Cons!33100 (h!38520 Rule!9714) (t!230505 List!33224)) )
))
(declare-fun rules!4424 () List!33224)

(get-info :version)

(assert (= (and b!2820933 ((_ is Cons!33100) rules!4424)) b!2820959))

(declare-fun order!17587 () Int)

(declare-fun lambda!103561 () Int)

(declare-fun order!17589 () Int)

(declare-fun dynLambda!13844 (Int Int) Int)

(declare-fun dynLambda!13845 (Int Int) Int)

(assert (=> b!2820961 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103561))))

(declare-fun order!17591 () Int)

(declare-fun dynLambda!13846 (Int Int) Int)

(assert (=> b!2820961 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103561))))

(declare-fun b!2820931 () Bool)

(declare-fun res!1173952 () Bool)

(declare-fun e!1784517 () Bool)

(assert (=> b!2820931 (=> (not res!1173952) (not e!1784517))))

(declare-datatypes ((LexerInterface!4548 0))(
  ( (LexerInterfaceExt!4545 (__x!22048 Int)) (Lexer!4546) )
))
(declare-fun thiss!27755 () LexerInterface!4548)

(declare-datatypes ((Token!9316 0))(
  ( (Token!9317 (value!159594 TokenValue!5187) (rule!7385 Rule!9714) (size!25755 Int) (originalCharacters!5689 List!33223)) )
))
(declare-datatypes ((List!33225 0))(
  ( (Nil!33101) (Cons!33101 (h!38521 Token!9316) (t!230506 List!33225)) )
))
(declare-fun l!6581 () List!33225)

(declare-fun tokensListTwoByTwoPredicateSeparableList!685 (LexerInterface!4548 List!33225 List!33224) Bool)

(assert (=> b!2820931 (= res!1173952 (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 (t!230506 l!6581) rules!4424))))

(declare-fun b!2820932 () Bool)

(declare-fun res!1173962 () Bool)

(assert (=> b!2820932 (=> (not res!1173962) (not e!1784517))))

(declare-fun isEmpty!18298 (List!33224) Bool)

(assert (=> b!2820932 (= res!1173962 (not (isEmpty!18298 rules!4424)))))

(declare-fun res!1173954 () Bool)

(assert (=> start!273670 (=> (not res!1173954) (not e!1784517))))

(assert (=> start!273670 (= res!1173954 ((_ is Lexer!4546) thiss!27755))))

(assert (=> start!273670 e!1784517))

(assert (=> start!273670 true))

(declare-fun e!1784510 () Bool)

(assert (=> start!273670 e!1784510))

(declare-fun e!1784507 () Bool)

(assert (=> start!273670 e!1784507))

(declare-fun lt!1006865 () Bool)

(assert (=> b!2820933 (= e!1784517 (not lt!1006865))))

(declare-fun lt!1006866 () List!33225)

(declare-fun forall!6781 (List!33225 Int) Bool)

(assert (=> b!2820933 (forall!6781 lt!1006866 lambda!103561)))

(declare-datatypes ((Unit!47041 0))(
  ( (Unit!47042) )
))
(declare-fun lt!1006867 () Unit!47041)

(declare-fun lemmaForallSubseq!225 (List!33225 List!33225 Int) Unit!47041)

(assert (=> b!2820933 (= lt!1006867 (lemmaForallSubseq!225 lt!1006866 l!6581 lambda!103561))))

(declare-fun e!1784513 () Bool)

(assert (=> b!2820933 (= lt!1006865 e!1784513)))

(declare-fun res!1173958 () Bool)

(assert (=> b!2820933 (=> res!1173958 e!1784513)))

(assert (=> b!2820933 (= res!1173958 (not ((_ is Cons!33101) lt!1006866)))))

(declare-fun rulesProduceEachTokenIndividuallyList!1600 (LexerInterface!4548 List!33224 List!33225) Bool)

(assert (=> b!2820933 (= lt!1006865 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 lt!1006866))))

(declare-fun i!1730 () Int)

(declare-fun take!551 (List!33225 Int) List!33225)

(assert (=> b!2820933 (= lt!1006866 (take!551 l!6581 i!1730))))

(declare-fun e!1784516 () Bool)

(assert (=> b!2820933 e!1784516))

(declare-fun res!1173961 () Bool)

(assert (=> b!2820933 (=> (not res!1173961) (not e!1784516))))

(declare-fun lt!1006863 () List!33225)

(assert (=> b!2820933 (= res!1173961 (forall!6781 lt!1006863 lambda!103561))))

(declare-fun lt!1006862 () Unit!47041)

(assert (=> b!2820933 (= lt!1006862 (lemmaForallSubseq!225 lt!1006863 (t!230506 l!6581) lambda!103561))))

(declare-fun e!1784514 () Bool)

(assert (=> b!2820933 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 lt!1006863) e!1784514)))

(declare-fun res!1173955 () Bool)

(assert (=> b!2820933 (=> res!1173955 e!1784514)))

(assert (=> b!2820933 (= res!1173955 (not ((_ is Cons!33101) lt!1006863)))))

(assert (=> b!2820933 (= lt!1006863 (take!551 (t!230506 l!6581) (- i!1730 1)))))

(declare-fun lt!1006864 () Unit!47041)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!52 (LexerInterface!4548 List!33225 Int List!33224) Unit!47041)

(assert (=> b!2820933 (= lt!1006864 (tokensListTwoByTwoPredicateSeparableTokensTakeList!52 thiss!27755 (t!230506 l!6581) (- i!1730 1) rules!4424))))

(declare-fun b!2820934 () Bool)

(declare-fun res!1173956 () Bool)

(assert (=> b!2820934 (=> (not res!1173956) (not e!1784517))))

(assert (=> b!2820934 (= res!1173956 (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2820935 () Bool)

(assert (=> b!2820935 (= e!1784516 (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 lt!1006863 rules!4424))))

(declare-fun e!1784512 () Bool)

(declare-fun b!2820936 () Bool)

(assert (=> b!2820936 (= e!1784512 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 lt!1006863)))))

(declare-fun e!1784506 () Bool)

(assert (=> b!2820937 (= e!1784506 (and tp!900927 tp!900930))))

(declare-fun e!1784508 () Bool)

(declare-fun b!2820938 () Bool)

(declare-fun tp!900926 () Bool)

(declare-fun inv!45019 (Token!9316) Bool)

(assert (=> b!2820938 (= e!1784507 (and (inv!45019 (h!38521 l!6581)) e!1784508 tp!900926))))

(declare-fun b!2820939 () Bool)

(declare-fun e!1784503 () Bool)

(assert (=> b!2820939 (= e!1784513 e!1784503)))

(declare-fun res!1173953 () Bool)

(assert (=> b!2820939 (=> (not res!1173953) (not e!1784503))))

(declare-fun rulesProduceIndividualToken!2086 (LexerInterface!4548 List!33224 Token!9316) Bool)

(assert (=> b!2820939 (= res!1173953 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006866)))))

(declare-fun b!2820940 () Bool)

(declare-fun e!1784505 () Bool)

(declare-fun tp!900934 () Bool)

(assert (=> b!2820940 (= e!1784510 (and e!1784505 tp!900934))))

(declare-fun e!1784511 () Bool)

(declare-fun tp!900928 () Bool)

(declare-fun b!2820941 () Bool)

(declare-fun inv!45016 (String!36390) Bool)

(declare-fun inv!45020 (TokenValueInjection!9802) Bool)

(assert (=> b!2820941 (= e!1784505 (and tp!900928 (inv!45016 (tag!5461 (h!38520 rules!4424))) (inv!45020 (transformation!4957 (h!38520 rules!4424))) e!1784511))))

(declare-fun b!2820942 () Bool)

(declare-fun res!1173957 () Bool)

(assert (=> b!2820942 (=> (not res!1173957) (not e!1784517))))

(assert (=> b!2820942 (= res!1173957 (and (not ((_ is Nil!33101) l!6581)) (> i!1730 0)))))

(declare-fun b!2820943 () Bool)

(declare-fun res!1173960 () Bool)

(assert (=> b!2820943 (=> (not res!1173960) (not e!1784517))))

(declare-fun rulesInvariant!3966 (LexerInterface!4548 List!33224) Bool)

(assert (=> b!2820943 (= res!1173960 (rulesInvariant!3966 thiss!27755 rules!4424))))

(declare-fun e!1784509 () Bool)

(declare-fun b!2820944 () Bool)

(declare-fun tp!900929 () Bool)

(assert (=> b!2820944 (= e!1784509 (and tp!900929 (inv!45016 (tag!5461 (rule!7385 (h!38521 l!6581)))) (inv!45020 (transformation!4957 (rule!7385 (h!38521 l!6581)))) e!1784506))))

(declare-fun b!2820945 () Bool)

(declare-fun res!1173951 () Bool)

(assert (=> b!2820945 (=> (not res!1173951) (not e!1784517))))

(assert (=> b!2820945 (= res!1173951 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 l!6581))))

(declare-fun b!2820946 () Bool)

(declare-fun res!1173950 () Bool)

(assert (=> b!2820946 (=> (not res!1173950) (not e!1784517))))

(assert (=> b!2820946 (= res!1173950 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 l!6581)))))

(declare-fun tp!900932 () Bool)

(declare-fun b!2820947 () Bool)

(declare-fun inv!21 (TokenValue!5187) Bool)

(assert (=> b!2820947 (= e!1784508 (and (inv!21 (value!159594 (h!38521 l!6581))) e!1784509 tp!900932))))

(assert (=> b!2820948 (= e!1784511 (and tp!900933 tp!900931))))

(declare-fun b!2820949 () Bool)

(assert (=> b!2820949 (= e!1784503 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 lt!1006866)))))

(declare-fun b!2820950 () Bool)

(assert (=> b!2820950 (= e!1784514 e!1784512)))

(declare-fun res!1173959 () Bool)

(assert (=> b!2820950 (=> (not res!1173959) (not e!1784512))))

(assert (=> b!2820950 (= res!1173959 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006863)))))

(assert (= (and start!273670 res!1173954) b!2820932))

(assert (= (and b!2820932 res!1173962) b!2820943))

(assert (= (and b!2820943 res!1173960) b!2820945))

(assert (= (and b!2820945 res!1173951) b!2820934))

(assert (= (and b!2820934 res!1173956) b!2820942))

(assert (= (and b!2820942 res!1173957) b!2820946))

(assert (= (and b!2820946 res!1173950) b!2820931))

(assert (= (and b!2820931 res!1173952) b!2820933))

(assert (= (and b!2820933 (not res!1173955)) b!2820950))

(assert (= (and b!2820950 res!1173959) b!2820936))

(assert (= (and b!2820933 res!1173961) b!2820935))

(assert (= (and b!2820933 (not res!1173958)) b!2820939))

(assert (= (and b!2820939 res!1173953) b!2820949))

(assert (= b!2820941 b!2820948))

(assert (= b!2820940 b!2820941))

(assert (= (and start!273670 ((_ is Cons!33100) rules!4424)) b!2820940))

(assert (= b!2820944 b!2820937))

(assert (= b!2820947 b!2820944))

(assert (= b!2820938 b!2820947))

(assert (= (and start!273670 ((_ is Cons!33101) l!6581)) b!2820938))

(declare-fun m!3251347 () Bool)

(assert (=> b!2820945 m!3251347))

(declare-fun m!3251349 () Bool)

(assert (=> b!2820933 m!3251349))

(declare-fun m!3251351 () Bool)

(assert (=> b!2820933 m!3251351))

(declare-fun m!3251353 () Bool)

(assert (=> b!2820933 m!3251353))

(declare-fun m!3251355 () Bool)

(assert (=> b!2820933 m!3251355))

(declare-fun m!3251357 () Bool)

(assert (=> b!2820933 m!3251357))

(declare-fun m!3251359 () Bool)

(assert (=> b!2820933 m!3251359))

(declare-fun m!3251361 () Bool)

(assert (=> b!2820933 m!3251361))

(declare-fun m!3251363 () Bool)

(assert (=> b!2820933 m!3251363))

(declare-fun m!3251365 () Bool)

(assert (=> b!2820933 m!3251365))

(declare-fun m!3251367 () Bool)

(assert (=> b!2820946 m!3251367))

(declare-fun m!3251369 () Bool)

(assert (=> b!2820935 m!3251369))

(declare-fun m!3251371 () Bool)

(assert (=> b!2820938 m!3251371))

(declare-fun m!3251373 () Bool)

(assert (=> b!2820943 m!3251373))

(declare-fun m!3251375 () Bool)

(assert (=> b!2820944 m!3251375))

(declare-fun m!3251377 () Bool)

(assert (=> b!2820944 m!3251377))

(declare-fun m!3251379 () Bool)

(assert (=> b!2820934 m!3251379))

(declare-fun m!3251381 () Bool)

(assert (=> b!2820939 m!3251381))

(declare-fun m!3251383 () Bool)

(assert (=> b!2820931 m!3251383))

(declare-fun m!3251385 () Bool)

(assert (=> b!2820949 m!3251385))

(declare-fun m!3251387 () Bool)

(assert (=> b!2820950 m!3251387))

(declare-fun m!3251389 () Bool)

(assert (=> b!2820947 m!3251389))

(declare-fun m!3251391 () Bool)

(assert (=> b!2820936 m!3251391))

(declare-fun m!3251393 () Bool)

(assert (=> b!2820932 m!3251393))

(declare-fun m!3251395 () Bool)

(assert (=> b!2820941 m!3251395))

(declare-fun m!3251397 () Bool)

(assert (=> b!2820941 m!3251397))

(check-sat b_and!206083 (not b_next!81403) (not b!2820936) (not b!2820950) (not b!2820939) b_and!206079 (not b!2820945) (not b_next!81401) (not b_next!81399) (not b!2820934) (not b!2820947) (not b!2820935) b_and!206085 (not b!2820944) (not b!2820946) (not b!2820959) (not b!2820938) (not b!2820941) (not b!2820931) (not b!2820932) (not b!2820940) (not b_next!81397) b_and!206081 (not b!2820933) (not b!2820949) (not b!2820943))
(check-sat b_and!206083 (not b_next!81403) b_and!206079 (not b_next!81401) (not b_next!81399) b_and!206085 (not b_next!81397) b_and!206081)
(get-model)

(declare-fun bs!517360 () Bool)

(declare-fun d!818970 () Bool)

(assert (= bs!517360 (and d!818970 b!2820933)))

(declare-fun lambda!103564 () Int)

(assert (=> bs!517360 (= (= thiss!27755 Lexer!4546) (= lambda!103564 lambda!103561))))

(declare-fun b!2820970 () Bool)

(declare-fun e!1784535 () Bool)

(assert (=> b!2820970 (= e!1784535 true)))

(declare-fun b!2820969 () Bool)

(declare-fun e!1784534 () Bool)

(assert (=> b!2820969 (= e!1784534 e!1784535)))

(declare-fun b!2820968 () Bool)

(declare-fun e!1784533 () Bool)

(assert (=> b!2820968 (= e!1784533 e!1784534)))

(assert (=> d!818970 e!1784533))

(assert (= b!2820969 b!2820970))

(assert (= b!2820968 b!2820969))

(assert (= (and d!818970 ((_ is Cons!33100) rules!4424)) b!2820968))

(assert (=> b!2820970 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103564))))

(assert (=> b!2820970 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103564))))

(assert (=> d!818970 true))

(declare-fun lt!1006870 () Bool)

(assert (=> d!818970 (= lt!1006870 (forall!6781 (t!230506 lt!1006866) lambda!103564))))

(declare-fun e!1784532 () Bool)

(assert (=> d!818970 (= lt!1006870 e!1784532)))

(declare-fun res!1173975 () Bool)

(assert (=> d!818970 (=> res!1173975 e!1784532)))

(assert (=> d!818970 (= res!1173975 (not ((_ is Cons!33101) (t!230506 lt!1006866))))))

(assert (=> d!818970 (not (isEmpty!18298 rules!4424))))

(assert (=> d!818970 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 lt!1006866)) lt!1006870)))

(declare-fun b!2820966 () Bool)

(declare-fun e!1784531 () Bool)

(assert (=> b!2820966 (= e!1784532 e!1784531)))

(declare-fun res!1173974 () Bool)

(assert (=> b!2820966 (=> (not res!1173974) (not e!1784531))))

(assert (=> b!2820966 (= res!1173974 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 lt!1006866))))))

(declare-fun b!2820967 () Bool)

(assert (=> b!2820967 (= e!1784531 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 (t!230506 lt!1006866))))))

(assert (= (and d!818970 (not res!1173975)) b!2820966))

(assert (= (and b!2820966 res!1173974) b!2820967))

(declare-fun m!3251399 () Bool)

(assert (=> d!818970 m!3251399))

(assert (=> d!818970 m!3251393))

(declare-fun m!3251401 () Bool)

(assert (=> b!2820966 m!3251401))

(declare-fun m!3251403 () Bool)

(assert (=> b!2820967 m!3251403))

(assert (=> b!2820949 d!818970))

(declare-fun d!818974 () Bool)

(declare-fun res!1173980 () Bool)

(declare-fun e!1784538 () Bool)

(assert (=> d!818974 (=> (not res!1173980) (not e!1784538))))

(declare-fun isEmpty!18299 (List!33223) Bool)

(assert (=> d!818974 (= res!1173980 (not (isEmpty!18299 (originalCharacters!5689 (h!38521 l!6581)))))))

(assert (=> d!818974 (= (inv!45019 (h!38521 l!6581)) e!1784538)))

(declare-fun b!2820977 () Bool)

(declare-fun res!1173981 () Bool)

(assert (=> b!2820977 (=> (not res!1173981) (not e!1784538))))

(declare-fun list!12397 (BalanceConc!20174) List!33223)

(declare-fun dynLambda!13847 (Int TokenValue!5187) BalanceConc!20174)

(assert (=> b!2820977 (= res!1173981 (= (originalCharacters!5689 (h!38521 l!6581)) (list!12397 (dynLambda!13847 (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))) (value!159594 (h!38521 l!6581))))))))

(declare-fun b!2820978 () Bool)

(declare-fun size!25756 (List!33223) Int)

(assert (=> b!2820978 (= e!1784538 (= (size!25755 (h!38521 l!6581)) (size!25756 (originalCharacters!5689 (h!38521 l!6581)))))))

(assert (= (and d!818974 res!1173980) b!2820977))

(assert (= (and b!2820977 res!1173981) b!2820978))

(declare-fun b_lambda!84407 () Bool)

(assert (=> (not b_lambda!84407) (not b!2820977)))

(declare-fun t!230510 () Bool)

(declare-fun tb!153797 () Bool)

(assert (=> (and b!2820937 (= (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))) (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581))))) t!230510) tb!153797))

(declare-fun b!2820983 () Bool)

(declare-fun e!1784541 () Bool)

(declare-fun tp!900937 () Bool)

(declare-fun inv!45021 (Conc!10268) Bool)

(assert (=> b!2820983 (= e!1784541 (and (inv!45021 (c!457036 (dynLambda!13847 (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))) (value!159594 (h!38521 l!6581))))) tp!900937))))

(declare-fun result!191470 () Bool)

(declare-fun inv!45022 (BalanceConc!20174) Bool)

(assert (=> tb!153797 (= result!191470 (and (inv!45022 (dynLambda!13847 (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))) (value!159594 (h!38521 l!6581)))) e!1784541))))

(assert (= tb!153797 b!2820983))

(declare-fun m!3251405 () Bool)

(assert (=> b!2820983 m!3251405))

(declare-fun m!3251407 () Bool)

(assert (=> tb!153797 m!3251407))

(assert (=> b!2820977 t!230510))

(declare-fun b_and!206087 () Bool)

(assert (= b_and!206081 (and (=> t!230510 result!191470) b_and!206087)))

(declare-fun tb!153799 () Bool)

(declare-fun t!230512 () Bool)

(assert (=> (and b!2820948 (= (toChars!6834 (transformation!4957 (h!38520 rules!4424))) (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581))))) t!230512) tb!153799))

(declare-fun result!191474 () Bool)

(assert (= result!191474 result!191470))

(assert (=> b!2820977 t!230512))

(declare-fun b_and!206089 () Bool)

(assert (= b_and!206085 (and (=> t!230512 result!191474) b_and!206089)))

(declare-fun m!3251409 () Bool)

(assert (=> d!818974 m!3251409))

(declare-fun m!3251411 () Bool)

(assert (=> b!2820977 m!3251411))

(assert (=> b!2820977 m!3251411))

(declare-fun m!3251413 () Bool)

(assert (=> b!2820977 m!3251413))

(declare-fun m!3251415 () Bool)

(assert (=> b!2820978 m!3251415))

(assert (=> b!2820938 d!818974))

(declare-fun b!2820994 () Bool)

(declare-fun res!1173984 () Bool)

(declare-fun e!1784549 () Bool)

(assert (=> b!2820994 (=> res!1173984 e!1784549)))

(assert (=> b!2820994 (= res!1173984 (not ((_ is IntegerValue!15563) (value!159594 (h!38521 l!6581)))))))

(declare-fun e!1784548 () Bool)

(assert (=> b!2820994 (= e!1784548 e!1784549)))

(declare-fun b!2820995 () Bool)

(declare-fun e!1784550 () Bool)

(assert (=> b!2820995 (= e!1784550 e!1784548)))

(declare-fun c!457042 () Bool)

(assert (=> b!2820995 (= c!457042 ((_ is IntegerValue!15562) (value!159594 (h!38521 l!6581))))))

(declare-fun b!2820996 () Bool)

(declare-fun inv!17 (TokenValue!5187) Bool)

(assert (=> b!2820996 (= e!1784548 (inv!17 (value!159594 (h!38521 l!6581))))))

(declare-fun b!2820997 () Bool)

(declare-fun inv!15 (TokenValue!5187) Bool)

(assert (=> b!2820997 (= e!1784549 (inv!15 (value!159594 (h!38521 l!6581))))))

(declare-fun d!818976 () Bool)

(declare-fun c!457043 () Bool)

(assert (=> d!818976 (= c!457043 ((_ is IntegerValue!15561) (value!159594 (h!38521 l!6581))))))

(assert (=> d!818976 (= (inv!21 (value!159594 (h!38521 l!6581))) e!1784550)))

(declare-fun b!2820998 () Bool)

(declare-fun inv!16 (TokenValue!5187) Bool)

(assert (=> b!2820998 (= e!1784550 (inv!16 (value!159594 (h!38521 l!6581))))))

(assert (= (and d!818976 c!457043) b!2820998))

(assert (= (and d!818976 (not c!457043)) b!2820995))

(assert (= (and b!2820995 c!457042) b!2820996))

(assert (= (and b!2820995 (not c!457042)) b!2820994))

(assert (= (and b!2820994 (not res!1173984)) b!2820997))

(declare-fun m!3251417 () Bool)

(assert (=> b!2820996 m!3251417))

(declare-fun m!3251419 () Bool)

(assert (=> b!2820997 m!3251419))

(declare-fun m!3251421 () Bool)

(assert (=> b!2820998 m!3251421))

(assert (=> b!2820947 d!818976))

(declare-fun bs!517361 () Bool)

(declare-fun d!818978 () Bool)

(assert (= bs!517361 (and d!818978 b!2820933)))

(declare-fun lambda!103565 () Int)

(assert (=> bs!517361 (= (= thiss!27755 Lexer!4546) (= lambda!103565 lambda!103561))))

(declare-fun bs!517362 () Bool)

(assert (= bs!517362 (and d!818978 d!818970)))

(assert (=> bs!517362 (= lambda!103565 lambda!103564)))

(declare-fun b!2821003 () Bool)

(declare-fun e!1784555 () Bool)

(assert (=> b!2821003 (= e!1784555 true)))

(declare-fun b!2821002 () Bool)

(declare-fun e!1784554 () Bool)

(assert (=> b!2821002 (= e!1784554 e!1784555)))

(declare-fun b!2821001 () Bool)

(declare-fun e!1784553 () Bool)

(assert (=> b!2821001 (= e!1784553 e!1784554)))

(assert (=> d!818978 e!1784553))

(assert (= b!2821002 b!2821003))

(assert (= b!2821001 b!2821002))

(assert (= (and d!818978 ((_ is Cons!33100) rules!4424)) b!2821001))

(assert (=> b!2821003 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103565))))

(assert (=> b!2821003 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103565))))

(assert (=> d!818978 true))

(declare-fun lt!1006871 () Bool)

(assert (=> d!818978 (= lt!1006871 (forall!6781 (t!230506 lt!1006863) lambda!103565))))

(declare-fun e!1784552 () Bool)

(assert (=> d!818978 (= lt!1006871 e!1784552)))

(declare-fun res!1173986 () Bool)

(assert (=> d!818978 (=> res!1173986 e!1784552)))

(assert (=> d!818978 (= res!1173986 (not ((_ is Cons!33101) (t!230506 lt!1006863))))))

(assert (=> d!818978 (not (isEmpty!18298 rules!4424))))

(assert (=> d!818978 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 lt!1006863)) lt!1006871)))

(declare-fun b!2820999 () Bool)

(declare-fun e!1784551 () Bool)

(assert (=> b!2820999 (= e!1784552 e!1784551)))

(declare-fun res!1173985 () Bool)

(assert (=> b!2820999 (=> (not res!1173985) (not e!1784551))))

(assert (=> b!2820999 (= res!1173985 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 lt!1006863))))))

(declare-fun b!2821000 () Bool)

(assert (=> b!2821000 (= e!1784551 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 (t!230506 lt!1006863))))))

(assert (= (and d!818978 (not res!1173986)) b!2820999))

(assert (= (and b!2820999 res!1173985) b!2821000))

(declare-fun m!3251423 () Bool)

(assert (=> d!818978 m!3251423))

(assert (=> d!818978 m!3251393))

(declare-fun m!3251425 () Bool)

(assert (=> b!2820999 m!3251425))

(declare-fun m!3251427 () Bool)

(assert (=> b!2821000 m!3251427))

(assert (=> b!2820936 d!818978))

(declare-fun bs!517363 () Bool)

(declare-fun d!818980 () Bool)

(assert (= bs!517363 (and d!818980 b!2820933)))

(declare-fun lambda!103566 () Int)

(assert (=> bs!517363 (= (= thiss!27755 Lexer!4546) (= lambda!103566 lambda!103561))))

(declare-fun bs!517364 () Bool)

(assert (= bs!517364 (and d!818980 d!818970)))

(assert (=> bs!517364 (= lambda!103566 lambda!103564)))

(declare-fun bs!517365 () Bool)

(assert (= bs!517365 (and d!818980 d!818978)))

(assert (=> bs!517365 (= lambda!103566 lambda!103565)))

(declare-fun b!2821008 () Bool)

(declare-fun e!1784560 () Bool)

(assert (=> b!2821008 (= e!1784560 true)))

(declare-fun b!2821007 () Bool)

(declare-fun e!1784559 () Bool)

(assert (=> b!2821007 (= e!1784559 e!1784560)))

(declare-fun b!2821006 () Bool)

(declare-fun e!1784558 () Bool)

(assert (=> b!2821006 (= e!1784558 e!1784559)))

(assert (=> d!818980 e!1784558))

(assert (= b!2821007 b!2821008))

(assert (= b!2821006 b!2821007))

(assert (= (and d!818980 ((_ is Cons!33100) rules!4424)) b!2821006))

(assert (=> b!2821008 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103566))))

(assert (=> b!2821008 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103566))))

(assert (=> d!818980 true))

(declare-fun lt!1006872 () Bool)

(assert (=> d!818980 (= lt!1006872 (forall!6781 (t!230506 l!6581) lambda!103566))))

(declare-fun e!1784557 () Bool)

(assert (=> d!818980 (= lt!1006872 e!1784557)))

(declare-fun res!1173988 () Bool)

(assert (=> d!818980 (=> res!1173988 e!1784557)))

(assert (=> d!818980 (= res!1173988 (not ((_ is Cons!33101) (t!230506 l!6581))))))

(assert (=> d!818980 (not (isEmpty!18298 rules!4424))))

(assert (=> d!818980 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 l!6581)) lt!1006872)))

(declare-fun b!2821004 () Bool)

(declare-fun e!1784556 () Bool)

(assert (=> b!2821004 (= e!1784557 e!1784556)))

(declare-fun res!1173987 () Bool)

(assert (=> b!2821004 (=> (not res!1173987) (not e!1784556))))

(assert (=> b!2821004 (= res!1173987 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 l!6581))))))

(declare-fun b!2821005 () Bool)

(assert (=> b!2821005 (= e!1784556 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 (t!230506 l!6581))))))

(assert (= (and d!818980 (not res!1173988)) b!2821004))

(assert (= (and b!2821004 res!1173987) b!2821005))

(declare-fun m!3251429 () Bool)

(assert (=> d!818980 m!3251429))

(assert (=> d!818980 m!3251393))

(declare-fun m!3251431 () Bool)

(assert (=> b!2821004 m!3251431))

(declare-fun m!3251433 () Bool)

(assert (=> b!2821005 m!3251433))

(assert (=> b!2820946 d!818980))

(declare-fun d!818982 () Bool)

(declare-fun res!1174013 () Bool)

(declare-fun e!1784603 () Bool)

(assert (=> d!818982 (=> res!1174013 e!1784603)))

(assert (=> d!818982 (= res!1174013 (or (not ((_ is Cons!33101) lt!1006863)) (not ((_ is Cons!33101) (t!230506 lt!1006863)))))))

(assert (=> d!818982 (= (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 lt!1006863 rules!4424) e!1784603)))

(declare-fun b!2821065 () Bool)

(declare-fun e!1784604 () Bool)

(assert (=> b!2821065 (= e!1784603 e!1784604)))

(declare-fun res!1174014 () Bool)

(assert (=> b!2821065 (=> (not res!1174014) (not e!1784604))))

(declare-fun separableTokensPredicate!890 (LexerInterface!4548 Token!9316 Token!9316 List!33224) Bool)

(assert (=> b!2821065 (= res!1174014 (separableTokensPredicate!890 thiss!27755 (h!38521 lt!1006863) (h!38521 (t!230506 lt!1006863)) rules!4424))))

(declare-fun lt!1006900 () Unit!47041)

(declare-fun Unit!47043 () Unit!47041)

(assert (=> b!2821065 (= lt!1006900 Unit!47043)))

(declare-fun size!25757 (BalanceConc!20174) Int)

(declare-fun charsOf!3065 (Token!9316) BalanceConc!20174)

(assert (=> b!2821065 (> (size!25757 (charsOf!3065 (h!38521 (t!230506 lt!1006863)))) 0)))

(declare-fun lt!1006903 () Unit!47041)

(declare-fun Unit!47044 () Unit!47041)

(assert (=> b!2821065 (= lt!1006903 Unit!47044)))

(assert (=> b!2821065 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 lt!1006863)))))

(declare-fun lt!1006901 () Unit!47041)

(declare-fun Unit!47045 () Unit!47041)

(assert (=> b!2821065 (= lt!1006901 Unit!47045)))

(assert (=> b!2821065 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006863))))

(declare-fun lt!1006904 () Unit!47041)

(declare-fun lt!1006902 () Unit!47041)

(assert (=> b!2821065 (= lt!1006904 lt!1006902)))

(assert (=> b!2821065 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 lt!1006863)))))

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!704 (LexerInterface!4548 List!33224 List!33225 Token!9316) Unit!47041)

(assert (=> b!2821065 (= lt!1006902 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!704 thiss!27755 rules!4424 lt!1006863 (h!38521 (t!230506 lt!1006863))))))

(declare-fun lt!1006898 () Unit!47041)

(declare-fun lt!1006899 () Unit!47041)

(assert (=> b!2821065 (= lt!1006898 lt!1006899)))

(assert (=> b!2821065 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006863))))

(assert (=> b!2821065 (= lt!1006899 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!704 thiss!27755 rules!4424 lt!1006863 (h!38521 lt!1006863)))))

(declare-fun b!2821066 () Bool)

(assert (=> b!2821066 (= e!1784604 (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 (Cons!33101 (h!38521 (t!230506 lt!1006863)) (t!230506 (t!230506 lt!1006863))) rules!4424))))

(assert (= (and d!818982 (not res!1174013)) b!2821065))

(assert (= (and b!2821065 res!1174014) b!2821066))

(declare-fun m!3251473 () Bool)

(assert (=> b!2821065 m!3251473))

(declare-fun m!3251475 () Bool)

(assert (=> b!2821065 m!3251475))

(declare-fun m!3251477 () Bool)

(assert (=> b!2821065 m!3251477))

(declare-fun m!3251479 () Bool)

(assert (=> b!2821065 m!3251479))

(assert (=> b!2821065 m!3251425))

(declare-fun m!3251481 () Bool)

(assert (=> b!2821065 m!3251481))

(assert (=> b!2821065 m!3251475))

(assert (=> b!2821065 m!3251387))

(declare-fun m!3251483 () Bool)

(assert (=> b!2821066 m!3251483))

(assert (=> b!2820935 d!818982))

(declare-fun bs!517370 () Bool)

(declare-fun d!818998 () Bool)

(assert (= bs!517370 (and d!818998 b!2820933)))

(declare-fun lambda!103571 () Int)

(assert (=> bs!517370 (= (= thiss!27755 Lexer!4546) (= lambda!103571 lambda!103561))))

(declare-fun bs!517371 () Bool)

(assert (= bs!517371 (and d!818998 d!818970)))

(assert (=> bs!517371 (= lambda!103571 lambda!103564)))

(declare-fun bs!517372 () Bool)

(assert (= bs!517372 (and d!818998 d!818978)))

(assert (=> bs!517372 (= lambda!103571 lambda!103565)))

(declare-fun bs!517373 () Bool)

(assert (= bs!517373 (and d!818998 d!818980)))

(assert (=> bs!517373 (= lambda!103571 lambda!103566)))

(declare-fun b!2821071 () Bool)

(declare-fun e!1784609 () Bool)

(assert (=> b!2821071 (= e!1784609 true)))

(declare-fun b!2821070 () Bool)

(declare-fun e!1784608 () Bool)

(assert (=> b!2821070 (= e!1784608 e!1784609)))

(declare-fun b!2821069 () Bool)

(declare-fun e!1784607 () Bool)

(assert (=> b!2821069 (= e!1784607 e!1784608)))

(assert (=> d!818998 e!1784607))

(assert (= b!2821070 b!2821071))

(assert (= b!2821069 b!2821070))

(assert (= (and d!818998 ((_ is Cons!33100) rules!4424)) b!2821069))

(assert (=> b!2821071 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103571))))

(assert (=> b!2821071 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103571))))

(assert (=> d!818998 true))

(declare-fun lt!1006905 () Bool)

(assert (=> d!818998 (= lt!1006905 (forall!6781 l!6581 lambda!103571))))

(declare-fun e!1784606 () Bool)

(assert (=> d!818998 (= lt!1006905 e!1784606)))

(declare-fun res!1174016 () Bool)

(assert (=> d!818998 (=> res!1174016 e!1784606)))

(assert (=> d!818998 (= res!1174016 (not ((_ is Cons!33101) l!6581)))))

(assert (=> d!818998 (not (isEmpty!18298 rules!4424))))

(assert (=> d!818998 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 l!6581) lt!1006905)))

(declare-fun b!2821067 () Bool)

(declare-fun e!1784605 () Bool)

(assert (=> b!2821067 (= e!1784606 e!1784605)))

(declare-fun res!1174015 () Bool)

(assert (=> b!2821067 (=> (not res!1174015) (not e!1784605))))

(assert (=> b!2821067 (= res!1174015 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 l!6581)))))

(declare-fun b!2821068 () Bool)

(assert (=> b!2821068 (= e!1784605 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 l!6581)))))

(assert (= (and d!818998 (not res!1174016)) b!2821067))

(assert (= (and b!2821067 res!1174015) b!2821068))

(declare-fun m!3251485 () Bool)

(assert (=> d!818998 m!3251485))

(assert (=> d!818998 m!3251393))

(declare-fun m!3251487 () Bool)

(assert (=> b!2821067 m!3251487))

(assert (=> b!2821068 m!3251367))

(assert (=> b!2820945 d!818998))

(declare-fun d!819000 () Bool)

(declare-fun res!1174017 () Bool)

(declare-fun e!1784610 () Bool)

(assert (=> d!819000 (=> res!1174017 e!1784610)))

(assert (=> d!819000 (= res!1174017 (or (not ((_ is Cons!33101) l!6581)) (not ((_ is Cons!33101) (t!230506 l!6581)))))))

(assert (=> d!819000 (= (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 l!6581 rules!4424) e!1784610)))

(declare-fun b!2821072 () Bool)

(declare-fun e!1784611 () Bool)

(assert (=> b!2821072 (= e!1784610 e!1784611)))

(declare-fun res!1174018 () Bool)

(assert (=> b!2821072 (=> (not res!1174018) (not e!1784611))))

(assert (=> b!2821072 (= res!1174018 (separableTokensPredicate!890 thiss!27755 (h!38521 l!6581) (h!38521 (t!230506 l!6581)) rules!4424))))

(declare-fun lt!1006908 () Unit!47041)

(declare-fun Unit!47046 () Unit!47041)

(assert (=> b!2821072 (= lt!1006908 Unit!47046)))

(assert (=> b!2821072 (> (size!25757 (charsOf!3065 (h!38521 (t!230506 l!6581)))) 0)))

(declare-fun lt!1006911 () Unit!47041)

(declare-fun Unit!47047 () Unit!47041)

(assert (=> b!2821072 (= lt!1006911 Unit!47047)))

(assert (=> b!2821072 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 l!6581)))))

(declare-fun lt!1006909 () Unit!47041)

(declare-fun Unit!47048 () Unit!47041)

(assert (=> b!2821072 (= lt!1006909 Unit!47048)))

(assert (=> b!2821072 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 l!6581))))

(declare-fun lt!1006912 () Unit!47041)

(declare-fun lt!1006910 () Unit!47041)

(assert (=> b!2821072 (= lt!1006912 lt!1006910)))

(assert (=> b!2821072 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 l!6581)))))

(assert (=> b!2821072 (= lt!1006910 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!704 thiss!27755 rules!4424 l!6581 (h!38521 (t!230506 l!6581))))))

(declare-fun lt!1006906 () Unit!47041)

(declare-fun lt!1006907 () Unit!47041)

(assert (=> b!2821072 (= lt!1006906 lt!1006907)))

(assert (=> b!2821072 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 l!6581))))

(assert (=> b!2821072 (= lt!1006907 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!704 thiss!27755 rules!4424 l!6581 (h!38521 l!6581)))))

(declare-fun b!2821073 () Bool)

(assert (=> b!2821073 (= e!1784611 (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 (Cons!33101 (h!38521 (t!230506 l!6581)) (t!230506 (t!230506 l!6581))) rules!4424))))

(assert (= (and d!819000 (not res!1174017)) b!2821072))

(assert (= (and b!2821072 res!1174018) b!2821073))

(declare-fun m!3251489 () Bool)

(assert (=> b!2821072 m!3251489))

(declare-fun m!3251491 () Bool)

(assert (=> b!2821072 m!3251491))

(declare-fun m!3251493 () Bool)

(assert (=> b!2821072 m!3251493))

(declare-fun m!3251495 () Bool)

(assert (=> b!2821072 m!3251495))

(assert (=> b!2821072 m!3251431))

(declare-fun m!3251497 () Bool)

(assert (=> b!2821072 m!3251497))

(assert (=> b!2821072 m!3251491))

(assert (=> b!2821072 m!3251487))

(declare-fun m!3251499 () Bool)

(assert (=> b!2821073 m!3251499))

(assert (=> b!2820934 d!819000))

(declare-fun d!819002 () Bool)

(assert (=> d!819002 (= (inv!45016 (tag!5461 (rule!7385 (h!38521 l!6581)))) (= (mod (str.len (value!159568 (tag!5461 (rule!7385 (h!38521 l!6581))))) 2) 0))))

(assert (=> b!2820944 d!819002))

(declare-fun d!819004 () Bool)

(declare-fun res!1174021 () Bool)

(declare-fun e!1784614 () Bool)

(assert (=> d!819004 (=> (not res!1174021) (not e!1784614))))

(declare-fun semiInverseModEq!2049 (Int Int) Bool)

(assert (=> d!819004 (= res!1174021 (semiInverseModEq!2049 (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))) (toValue!6975 (transformation!4957 (rule!7385 (h!38521 l!6581))))))))

(assert (=> d!819004 (= (inv!45020 (transformation!4957 (rule!7385 (h!38521 l!6581)))) e!1784614)))

(declare-fun b!2821076 () Bool)

(declare-fun equivClasses!1948 (Int Int) Bool)

(assert (=> b!2821076 (= e!1784614 (equivClasses!1948 (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))) (toValue!6975 (transformation!4957 (rule!7385 (h!38521 l!6581))))))))

(assert (= (and d!819004 res!1174021) b!2821076))

(declare-fun m!3251501 () Bool)

(assert (=> d!819004 m!3251501))

(declare-fun m!3251503 () Bool)

(assert (=> b!2821076 m!3251503))

(assert (=> b!2820944 d!819004))

(declare-fun d!819006 () Bool)

(declare-fun res!1174026 () Bool)

(declare-fun e!1784619 () Bool)

(assert (=> d!819006 (=> res!1174026 e!1784619)))

(assert (=> d!819006 (= res!1174026 ((_ is Nil!33101) lt!1006863))))

(assert (=> d!819006 (= (forall!6781 lt!1006863 lambda!103561) e!1784619)))

(declare-fun b!2821081 () Bool)

(declare-fun e!1784620 () Bool)

(assert (=> b!2821081 (= e!1784619 e!1784620)))

(declare-fun res!1174027 () Bool)

(assert (=> b!2821081 (=> (not res!1174027) (not e!1784620))))

(declare-fun dynLambda!13849 (Int Token!9316) Bool)

(assert (=> b!2821081 (= res!1174027 (dynLambda!13849 lambda!103561 (h!38521 lt!1006863)))))

(declare-fun b!2821082 () Bool)

(assert (=> b!2821082 (= e!1784620 (forall!6781 (t!230506 lt!1006863) lambda!103561))))

(assert (= (and d!819006 (not res!1174026)) b!2821081))

(assert (= (and b!2821081 res!1174027) b!2821082))

(declare-fun b_lambda!84413 () Bool)

(assert (=> (not b_lambda!84413) (not b!2821081)))

(declare-fun m!3251505 () Bool)

(assert (=> b!2821081 m!3251505))

(declare-fun m!3251507 () Bool)

(assert (=> b!2821082 m!3251507))

(assert (=> b!2820933 d!819006))

(declare-fun d!819008 () Bool)

(assert (=> d!819008 (forall!6781 lt!1006866 lambda!103561)))

(declare-fun lt!1006915 () Unit!47041)

(declare-fun choose!16677 (List!33225 List!33225 Int) Unit!47041)

(assert (=> d!819008 (= lt!1006915 (choose!16677 lt!1006866 l!6581 lambda!103561))))

(assert (=> d!819008 (forall!6781 l!6581 lambda!103561)))

(assert (=> d!819008 (= (lemmaForallSubseq!225 lt!1006866 l!6581 lambda!103561) lt!1006915)))

(declare-fun bs!517374 () Bool)

(assert (= bs!517374 d!819008))

(assert (=> bs!517374 m!3251365))

(declare-fun m!3251509 () Bool)

(assert (=> bs!517374 m!3251509))

(declare-fun m!3251511 () Bool)

(assert (=> bs!517374 m!3251511))

(assert (=> b!2820933 d!819008))

(declare-fun bs!517375 () Bool)

(declare-fun d!819010 () Bool)

(assert (= bs!517375 (and d!819010 b!2820933)))

(declare-fun lambda!103572 () Int)

(assert (=> bs!517375 (= (= thiss!27755 Lexer!4546) (= lambda!103572 lambda!103561))))

(declare-fun bs!517376 () Bool)

(assert (= bs!517376 (and d!819010 d!818998)))

(assert (=> bs!517376 (= lambda!103572 lambda!103571)))

(declare-fun bs!517377 () Bool)

(assert (= bs!517377 (and d!819010 d!818980)))

(assert (=> bs!517377 (= lambda!103572 lambda!103566)))

(declare-fun bs!517378 () Bool)

(assert (= bs!517378 (and d!819010 d!818978)))

(assert (=> bs!517378 (= lambda!103572 lambda!103565)))

(declare-fun bs!517379 () Bool)

(assert (= bs!517379 (and d!819010 d!818970)))

(assert (=> bs!517379 (= lambda!103572 lambda!103564)))

(declare-fun b!2821087 () Bool)

(declare-fun e!1784625 () Bool)

(assert (=> b!2821087 (= e!1784625 true)))

(declare-fun b!2821086 () Bool)

(declare-fun e!1784624 () Bool)

(assert (=> b!2821086 (= e!1784624 e!1784625)))

(declare-fun b!2821085 () Bool)

(declare-fun e!1784623 () Bool)

(assert (=> b!2821085 (= e!1784623 e!1784624)))

(assert (=> d!819010 e!1784623))

(assert (= b!2821086 b!2821087))

(assert (= b!2821085 b!2821086))

(assert (= (and d!819010 ((_ is Cons!33100) rules!4424)) b!2821085))

(assert (=> b!2821087 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103572))))

(assert (=> b!2821087 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103572))))

(assert (=> d!819010 true))

(declare-fun lt!1006916 () Bool)

(assert (=> d!819010 (= lt!1006916 (forall!6781 lt!1006866 lambda!103572))))

(declare-fun e!1784622 () Bool)

(assert (=> d!819010 (= lt!1006916 e!1784622)))

(declare-fun res!1174029 () Bool)

(assert (=> d!819010 (=> res!1174029 e!1784622)))

(assert (=> d!819010 (= res!1174029 (not ((_ is Cons!33101) lt!1006866)))))

(assert (=> d!819010 (not (isEmpty!18298 rules!4424))))

(assert (=> d!819010 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 lt!1006866) lt!1006916)))

(declare-fun b!2821083 () Bool)

(declare-fun e!1784621 () Bool)

(assert (=> b!2821083 (= e!1784622 e!1784621)))

(declare-fun res!1174028 () Bool)

(assert (=> b!2821083 (=> (not res!1174028) (not e!1784621))))

(assert (=> b!2821083 (= res!1174028 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006866)))))

(declare-fun b!2821084 () Bool)

(assert (=> b!2821084 (= e!1784621 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 lt!1006866)))))

(assert (= (and d!819010 (not res!1174029)) b!2821083))

(assert (= (and b!2821083 res!1174028) b!2821084))

(declare-fun m!3251513 () Bool)

(assert (=> d!819010 m!3251513))

(assert (=> d!819010 m!3251393))

(assert (=> b!2821083 m!3251381))

(assert (=> b!2821084 m!3251385))

(assert (=> b!2820933 d!819010))

(declare-fun d!819012 () Bool)

(assert (=> d!819012 (forall!6781 lt!1006863 lambda!103561)))

(declare-fun lt!1006917 () Unit!47041)

(assert (=> d!819012 (= lt!1006917 (choose!16677 lt!1006863 (t!230506 l!6581) lambda!103561))))

(assert (=> d!819012 (forall!6781 (t!230506 l!6581) lambda!103561)))

(assert (=> d!819012 (= (lemmaForallSubseq!225 lt!1006863 (t!230506 l!6581) lambda!103561) lt!1006917)))

(declare-fun bs!517380 () Bool)

(assert (= bs!517380 d!819012))

(assert (=> bs!517380 m!3251361))

(declare-fun m!3251515 () Bool)

(assert (=> bs!517380 m!3251515))

(declare-fun m!3251517 () Bool)

(assert (=> bs!517380 m!3251517))

(assert (=> b!2820933 d!819012))

(declare-fun b!2821102 () Bool)

(declare-fun e!1784637 () Int)

(assert (=> b!2821102 (= e!1784637 i!1730)))

(declare-fun b!2821103 () Bool)

(declare-fun size!25759 (List!33225) Int)

(assert (=> b!2821103 (= e!1784637 (size!25759 l!6581))))

(declare-fun d!819014 () Bool)

(declare-fun e!1784634 () Bool)

(assert (=> d!819014 e!1784634))

(declare-fun res!1174032 () Bool)

(assert (=> d!819014 (=> (not res!1174032) (not e!1784634))))

(declare-fun lt!1006920 () List!33225)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4610 (List!33225) (InoxSet Token!9316))

(assert (=> d!819014 (= res!1174032 (= ((_ map implies) (content!4610 lt!1006920) (content!4610 l!6581)) ((as const (InoxSet Token!9316)) true)))))

(declare-fun e!1784635 () List!33225)

(assert (=> d!819014 (= lt!1006920 e!1784635)))

(declare-fun c!457062 () Bool)

(assert (=> d!819014 (= c!457062 (or ((_ is Nil!33101) l!6581) (<= i!1730 0)))))

(assert (=> d!819014 (= (take!551 l!6581 i!1730) lt!1006920)))

(declare-fun b!2821104 () Bool)

(declare-fun e!1784636 () Int)

(assert (=> b!2821104 (= e!1784636 0)))

(declare-fun b!2821105 () Bool)

(assert (=> b!2821105 (= e!1784636 e!1784637)))

(declare-fun c!457064 () Bool)

(assert (=> b!2821105 (= c!457064 (>= i!1730 (size!25759 l!6581)))))

(declare-fun b!2821106 () Bool)

(assert (=> b!2821106 (= e!1784635 Nil!33101)))

(declare-fun b!2821107 () Bool)

(assert (=> b!2821107 (= e!1784634 (= (size!25759 lt!1006920) e!1784636))))

(declare-fun c!457063 () Bool)

(assert (=> b!2821107 (= c!457063 (<= i!1730 0))))

(declare-fun b!2821108 () Bool)

(assert (=> b!2821108 (= e!1784635 (Cons!33101 (h!38521 l!6581) (take!551 (t!230506 l!6581) (- i!1730 1))))))

(assert (= (and d!819014 c!457062) b!2821106))

(assert (= (and d!819014 (not c!457062)) b!2821108))

(assert (= (and d!819014 res!1174032) b!2821107))

(assert (= (and b!2821107 c!457063) b!2821104))

(assert (= (and b!2821107 (not c!457063)) b!2821105))

(assert (= (and b!2821105 c!457064) b!2821103))

(assert (= (and b!2821105 (not c!457064)) b!2821102))

(declare-fun m!3251519 () Bool)

(assert (=> b!2821105 m!3251519))

(assert (=> b!2821108 m!3251355))

(declare-fun m!3251521 () Bool)

(assert (=> b!2821107 m!3251521))

(assert (=> b!2821103 m!3251519))

(declare-fun m!3251523 () Bool)

(assert (=> d!819014 m!3251523))

(declare-fun m!3251525 () Bool)

(assert (=> d!819014 m!3251525))

(assert (=> b!2820933 d!819014))

(declare-fun b!2821109 () Bool)

(declare-fun e!1784641 () Int)

(assert (=> b!2821109 (= e!1784641 (- i!1730 1))))

(declare-fun b!2821110 () Bool)

(assert (=> b!2821110 (= e!1784641 (size!25759 (t!230506 l!6581)))))

(declare-fun d!819016 () Bool)

(declare-fun e!1784638 () Bool)

(assert (=> d!819016 e!1784638))

(declare-fun res!1174033 () Bool)

(assert (=> d!819016 (=> (not res!1174033) (not e!1784638))))

(declare-fun lt!1006921 () List!33225)

(assert (=> d!819016 (= res!1174033 (= ((_ map implies) (content!4610 lt!1006921) (content!4610 (t!230506 l!6581))) ((as const (InoxSet Token!9316)) true)))))

(declare-fun e!1784639 () List!33225)

(assert (=> d!819016 (= lt!1006921 e!1784639)))

(declare-fun c!457065 () Bool)

(assert (=> d!819016 (= c!457065 (or ((_ is Nil!33101) (t!230506 l!6581)) (<= (- i!1730 1) 0)))))

(assert (=> d!819016 (= (take!551 (t!230506 l!6581) (- i!1730 1)) lt!1006921)))

(declare-fun b!2821111 () Bool)

(declare-fun e!1784640 () Int)

(assert (=> b!2821111 (= e!1784640 0)))

(declare-fun b!2821112 () Bool)

(assert (=> b!2821112 (= e!1784640 e!1784641)))

(declare-fun c!457067 () Bool)

(assert (=> b!2821112 (= c!457067 (>= (- i!1730 1) (size!25759 (t!230506 l!6581))))))

(declare-fun b!2821113 () Bool)

(assert (=> b!2821113 (= e!1784639 Nil!33101)))

(declare-fun b!2821114 () Bool)

(assert (=> b!2821114 (= e!1784638 (= (size!25759 lt!1006921) e!1784640))))

(declare-fun c!457066 () Bool)

(assert (=> b!2821114 (= c!457066 (<= (- i!1730 1) 0))))

(declare-fun b!2821115 () Bool)

(assert (=> b!2821115 (= e!1784639 (Cons!33101 (h!38521 (t!230506 l!6581)) (take!551 (t!230506 (t!230506 l!6581)) (- (- i!1730 1) 1))))))

(assert (= (and d!819016 c!457065) b!2821113))

(assert (= (and d!819016 (not c!457065)) b!2821115))

(assert (= (and d!819016 res!1174033) b!2821114))

(assert (= (and b!2821114 c!457066) b!2821111))

(assert (= (and b!2821114 (not c!457066)) b!2821112))

(assert (= (and b!2821112 c!457067) b!2821110))

(assert (= (and b!2821112 (not c!457067)) b!2821109))

(declare-fun m!3251527 () Bool)

(assert (=> b!2821112 m!3251527))

(declare-fun m!3251529 () Bool)

(assert (=> b!2821115 m!3251529))

(declare-fun m!3251531 () Bool)

(assert (=> b!2821114 m!3251531))

(assert (=> b!2821110 m!3251527))

(declare-fun m!3251533 () Bool)

(assert (=> d!819016 m!3251533))

(declare-fun m!3251535 () Bool)

(assert (=> d!819016 m!3251535))

(assert (=> b!2820933 d!819016))

(declare-fun bs!517389 () Bool)

(declare-fun b!2821146 () Bool)

(assert (= bs!517389 (and b!2821146 b!2820933)))

(declare-fun lambda!103579 () Int)

(assert (=> bs!517389 (= lambda!103579 lambda!103561)))

(declare-fun bs!517390 () Bool)

(assert (= bs!517390 (and b!2821146 d!818998)))

(assert (=> bs!517390 (= (= Lexer!4546 thiss!27755) (= lambda!103579 lambda!103571))))

(declare-fun bs!517391 () Bool)

(assert (= bs!517391 (and b!2821146 d!818980)))

(assert (=> bs!517391 (= (= Lexer!4546 thiss!27755) (= lambda!103579 lambda!103566))))

(declare-fun bs!517392 () Bool)

(assert (= bs!517392 (and b!2821146 d!819010)))

(assert (=> bs!517392 (= (= Lexer!4546 thiss!27755) (= lambda!103579 lambda!103572))))

(declare-fun bs!517393 () Bool)

(assert (= bs!517393 (and b!2821146 d!818978)))

(assert (=> bs!517393 (= (= Lexer!4546 thiss!27755) (= lambda!103579 lambda!103565))))

(declare-fun bs!517394 () Bool)

(assert (= bs!517394 (and b!2821146 d!818970)))

(assert (=> bs!517394 (= (= Lexer!4546 thiss!27755) (= lambda!103579 lambda!103564))))

(declare-fun b!2821150 () Bool)

(declare-fun e!1784676 () Bool)

(assert (=> b!2821150 (= e!1784676 true)))

(declare-fun b!2821149 () Bool)

(declare-fun e!1784675 () Bool)

(assert (=> b!2821149 (= e!1784675 e!1784676)))

(declare-fun b!2821148 () Bool)

(declare-fun e!1784674 () Bool)

(assert (=> b!2821148 (= e!1784674 e!1784675)))

(assert (=> b!2821146 e!1784674))

(assert (= b!2821149 b!2821150))

(assert (= b!2821148 b!2821149))

(assert (= (and b!2821146 ((_ is Cons!33100) rules!4424)) b!2821148))

(assert (=> b!2821150 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103579))))

(assert (=> b!2821150 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103579))))

(declare-fun b!2821147 () Bool)

(declare-fun e!1784672 () Bool)

(declare-fun lt!1006952 () List!33225)

(declare-fun subseq!449 (List!33225 List!33225) Bool)

(assert (=> b!2821147 (= e!1784672 (subseq!449 lt!1006952 (t!230506 l!6581)))))

(declare-fun d!819018 () Bool)

(declare-fun e!1784673 () Bool)

(assert (=> d!819018 e!1784673))

(declare-fun res!1174059 () Bool)

(assert (=> d!819018 (=> (not res!1174059) (not e!1784673))))

(declare-fun e!1784671 () Bool)

(assert (=> d!819018 (= res!1174059 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (take!551 (t!230506 l!6581) (- i!1730 1))) e!1784671))))

(declare-fun res!1174058 () Bool)

(assert (=> d!819018 (=> res!1174058 e!1784671)))

(declare-fun lt!1006949 () List!33225)

(assert (=> d!819018 (= res!1174058 (not ((_ is Cons!33101) lt!1006949)))))

(assert (=> d!819018 (= lt!1006949 (take!551 (t!230506 l!6581) (- i!1730 1)))))

(declare-fun lt!1006953 () Unit!47041)

(declare-fun choose!16679 (LexerInterface!4548 List!33225 Int List!33224) Unit!47041)

(assert (=> d!819018 (= lt!1006953 (choose!16679 thiss!27755 (t!230506 l!6581) (- i!1730 1) rules!4424))))

(assert (=> d!819018 (not (isEmpty!18298 rules!4424))))

(assert (=> d!819018 (= (tokensListTwoByTwoPredicateSeparableTokensTakeList!52 thiss!27755 (t!230506 l!6581) (- i!1730 1) rules!4424) lt!1006953)))

(declare-fun b!2821144 () Bool)

(declare-fun e!1784670 () Bool)

(assert (=> b!2821144 (= e!1784671 e!1784670)))

(declare-fun res!1174056 () Bool)

(assert (=> b!2821144 (=> (not res!1174056) (not e!1784670))))

(assert (=> b!2821144 (= res!1174056 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006949)))))

(assert (=> b!2821146 (= e!1784673 (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 (take!551 (t!230506 l!6581) (- i!1730 1)) rules!4424))))

(declare-fun lt!1006951 () Unit!47041)

(declare-fun lt!1006950 () Unit!47041)

(assert (=> b!2821146 (= lt!1006951 lt!1006950)))

(assert (=> b!2821146 (forall!6781 lt!1006952 lambda!103579)))

(assert (=> b!2821146 (= lt!1006950 (lemmaForallSubseq!225 lt!1006952 (t!230506 l!6581) lambda!103579))))

(assert (=> b!2821146 e!1784672))

(declare-fun res!1174057 () Bool)

(assert (=> b!2821146 (=> (not res!1174057) (not e!1784672))))

(assert (=> b!2821146 (= res!1174057 (forall!6781 (t!230506 l!6581) lambda!103579))))

(assert (=> b!2821146 (= lt!1006952 (take!551 (t!230506 l!6581) (- i!1730 1)))))

(declare-fun b!2821145 () Bool)

(assert (=> b!2821145 (= e!1784670 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 lt!1006949)))))

(assert (= (and d!819018 (not res!1174058)) b!2821144))

(assert (= (and b!2821144 res!1174056) b!2821145))

(assert (= (and d!819018 res!1174059) b!2821146))

(assert (= (and b!2821146 res!1174057) b!2821147))

(declare-fun m!3251561 () Bool)

(assert (=> b!2821147 m!3251561))

(assert (=> d!819018 m!3251355))

(assert (=> d!819018 m!3251355))

(declare-fun m!3251563 () Bool)

(assert (=> d!819018 m!3251563))

(declare-fun m!3251565 () Bool)

(assert (=> d!819018 m!3251565))

(assert (=> d!819018 m!3251393))

(declare-fun m!3251567 () Bool)

(assert (=> b!2821145 m!3251567))

(declare-fun m!3251569 () Bool)

(assert (=> b!2821144 m!3251569))

(assert (=> b!2821146 m!3251355))

(declare-fun m!3251571 () Bool)

(assert (=> b!2821146 m!3251571))

(declare-fun m!3251573 () Bool)

(assert (=> b!2821146 m!3251573))

(assert (=> b!2821146 m!3251355))

(declare-fun m!3251575 () Bool)

(assert (=> b!2821146 m!3251575))

(declare-fun m!3251577 () Bool)

(assert (=> b!2821146 m!3251577))

(assert (=> b!2820933 d!819018))

(declare-fun d!819026 () Bool)

(declare-fun res!1174060 () Bool)

(declare-fun e!1784677 () Bool)

(assert (=> d!819026 (=> res!1174060 e!1784677)))

(assert (=> d!819026 (= res!1174060 ((_ is Nil!33101) lt!1006866))))

(assert (=> d!819026 (= (forall!6781 lt!1006866 lambda!103561) e!1784677)))

(declare-fun b!2821151 () Bool)

(declare-fun e!1784678 () Bool)

(assert (=> b!2821151 (= e!1784677 e!1784678)))

(declare-fun res!1174061 () Bool)

(assert (=> b!2821151 (=> (not res!1174061) (not e!1784678))))

(assert (=> b!2821151 (= res!1174061 (dynLambda!13849 lambda!103561 (h!38521 lt!1006866)))))

(declare-fun b!2821152 () Bool)

(assert (=> b!2821152 (= e!1784678 (forall!6781 (t!230506 lt!1006866) lambda!103561))))

(assert (= (and d!819026 (not res!1174060)) b!2821151))

(assert (= (and b!2821151 res!1174061) b!2821152))

(declare-fun b_lambda!84415 () Bool)

(assert (=> (not b_lambda!84415) (not b!2821151)))

(declare-fun m!3251579 () Bool)

(assert (=> b!2821151 m!3251579))

(declare-fun m!3251581 () Bool)

(assert (=> b!2821152 m!3251581))

(assert (=> b!2820933 d!819026))

(declare-fun bs!517395 () Bool)

(declare-fun d!819028 () Bool)

(assert (= bs!517395 (and d!819028 b!2820933)))

(declare-fun lambda!103580 () Int)

(assert (=> bs!517395 (= (= thiss!27755 Lexer!4546) (= lambda!103580 lambda!103561))))

(declare-fun bs!517396 () Bool)

(assert (= bs!517396 (and d!819028 d!818998)))

(assert (=> bs!517396 (= lambda!103580 lambda!103571)))

(declare-fun bs!517397 () Bool)

(assert (= bs!517397 (and d!819028 d!818980)))

(assert (=> bs!517397 (= lambda!103580 lambda!103566)))

(declare-fun bs!517398 () Bool)

(assert (= bs!517398 (and d!819028 b!2821146)))

(assert (=> bs!517398 (= (= thiss!27755 Lexer!4546) (= lambda!103580 lambda!103579))))

(declare-fun bs!517399 () Bool)

(assert (= bs!517399 (and d!819028 d!819010)))

(assert (=> bs!517399 (= lambda!103580 lambda!103572)))

(declare-fun bs!517400 () Bool)

(assert (= bs!517400 (and d!819028 d!818978)))

(assert (=> bs!517400 (= lambda!103580 lambda!103565)))

(declare-fun bs!517401 () Bool)

(assert (= bs!517401 (and d!819028 d!818970)))

(assert (=> bs!517401 (= lambda!103580 lambda!103564)))

(declare-fun b!2821157 () Bool)

(declare-fun e!1784683 () Bool)

(assert (=> b!2821157 (= e!1784683 true)))

(declare-fun b!2821156 () Bool)

(declare-fun e!1784682 () Bool)

(assert (=> b!2821156 (= e!1784682 e!1784683)))

(declare-fun b!2821155 () Bool)

(declare-fun e!1784681 () Bool)

(assert (=> b!2821155 (= e!1784681 e!1784682)))

(assert (=> d!819028 e!1784681))

(assert (= b!2821156 b!2821157))

(assert (= b!2821155 b!2821156))

(assert (= (and d!819028 ((_ is Cons!33100) rules!4424)) b!2821155))

(assert (=> b!2821157 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103580))))

(assert (=> b!2821157 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 rules!4424)))) (dynLambda!13845 order!17589 lambda!103580))))

(assert (=> d!819028 true))

(declare-fun lt!1006954 () Bool)

(assert (=> d!819028 (= lt!1006954 (forall!6781 lt!1006863 lambda!103580))))

(declare-fun e!1784680 () Bool)

(assert (=> d!819028 (= lt!1006954 e!1784680)))

(declare-fun res!1174063 () Bool)

(assert (=> d!819028 (=> res!1174063 e!1784680)))

(assert (=> d!819028 (= res!1174063 (not ((_ is Cons!33101) lt!1006863)))))

(assert (=> d!819028 (not (isEmpty!18298 rules!4424))))

(assert (=> d!819028 (= (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 lt!1006863) lt!1006954)))

(declare-fun b!2821153 () Bool)

(declare-fun e!1784679 () Bool)

(assert (=> b!2821153 (= e!1784680 e!1784679)))

(declare-fun res!1174062 () Bool)

(assert (=> b!2821153 (=> (not res!1174062) (not e!1784679))))

(assert (=> b!2821153 (= res!1174062 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006863)))))

(declare-fun b!2821154 () Bool)

(assert (=> b!2821154 (= e!1784679 (rulesProduceEachTokenIndividuallyList!1600 thiss!27755 rules!4424 (t!230506 lt!1006863)))))

(assert (= (and d!819028 (not res!1174063)) b!2821153))

(assert (= (and b!2821153 res!1174062) b!2821154))

(declare-fun m!3251583 () Bool)

(assert (=> d!819028 m!3251583))

(assert (=> d!819028 m!3251393))

(assert (=> b!2821153 m!3251387))

(assert (=> b!2821154 m!3251391))

(assert (=> b!2820933 d!819028))

(declare-fun d!819030 () Bool)

(declare-fun res!1174066 () Bool)

(declare-fun e!1784686 () Bool)

(assert (=> d!819030 (=> (not res!1174066) (not e!1784686))))

(declare-fun rulesValid!1819 (LexerInterface!4548 List!33224) Bool)

(assert (=> d!819030 (= res!1174066 (rulesValid!1819 thiss!27755 rules!4424))))

(assert (=> d!819030 (= (rulesInvariant!3966 thiss!27755 rules!4424) e!1784686)))

(declare-fun b!2821160 () Bool)

(declare-datatypes ((List!33226 0))(
  ( (Nil!33102) (Cons!33102 (h!38522 String!36390) (t!230533 List!33226)) )
))
(declare-fun noDuplicateTag!1815 (LexerInterface!4548 List!33224 List!33226) Bool)

(assert (=> b!2821160 (= e!1784686 (noDuplicateTag!1815 thiss!27755 rules!4424 Nil!33102))))

(assert (= (and d!819030 res!1174066) b!2821160))

(declare-fun m!3251585 () Bool)

(assert (=> d!819030 m!3251585))

(declare-fun m!3251587 () Bool)

(assert (=> b!2821160 m!3251587))

(assert (=> b!2820943 d!819030))

(declare-fun d!819032 () Bool)

(assert (=> d!819032 (= (isEmpty!18298 rules!4424) ((_ is Nil!33100) rules!4424))))

(assert (=> b!2820932 d!819032))

(declare-fun d!819034 () Bool)

(declare-fun res!1174067 () Bool)

(declare-fun e!1784687 () Bool)

(assert (=> d!819034 (=> res!1174067 e!1784687)))

(assert (=> d!819034 (= res!1174067 (or (not ((_ is Cons!33101) (t!230506 l!6581))) (not ((_ is Cons!33101) (t!230506 (t!230506 l!6581))))))))

(assert (=> d!819034 (= (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 (t!230506 l!6581) rules!4424) e!1784687)))

(declare-fun b!2821161 () Bool)

(declare-fun e!1784688 () Bool)

(assert (=> b!2821161 (= e!1784687 e!1784688)))

(declare-fun res!1174068 () Bool)

(assert (=> b!2821161 (=> (not res!1174068) (not e!1784688))))

(assert (=> b!2821161 (= res!1174068 (separableTokensPredicate!890 thiss!27755 (h!38521 (t!230506 l!6581)) (h!38521 (t!230506 (t!230506 l!6581))) rules!4424))))

(declare-fun lt!1006957 () Unit!47041)

(declare-fun Unit!47049 () Unit!47041)

(assert (=> b!2821161 (= lt!1006957 Unit!47049)))

(assert (=> b!2821161 (> (size!25757 (charsOf!3065 (h!38521 (t!230506 (t!230506 l!6581))))) 0)))

(declare-fun lt!1006960 () Unit!47041)

(declare-fun Unit!47050 () Unit!47041)

(assert (=> b!2821161 (= lt!1006960 Unit!47050)))

(assert (=> b!2821161 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 (t!230506 l!6581))))))

(declare-fun lt!1006958 () Unit!47041)

(declare-fun Unit!47051 () Unit!47041)

(assert (=> b!2821161 (= lt!1006958 Unit!47051)))

(assert (=> b!2821161 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 l!6581)))))

(declare-fun lt!1006961 () Unit!47041)

(declare-fun lt!1006959 () Unit!47041)

(assert (=> b!2821161 (= lt!1006961 lt!1006959)))

(assert (=> b!2821161 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 (t!230506 l!6581))))))

(assert (=> b!2821161 (= lt!1006959 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!704 thiss!27755 rules!4424 (t!230506 l!6581) (h!38521 (t!230506 (t!230506 l!6581)))))))

(declare-fun lt!1006955 () Unit!47041)

(declare-fun lt!1006956 () Unit!47041)

(assert (=> b!2821161 (= lt!1006955 lt!1006956)))

(assert (=> b!2821161 (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 (t!230506 l!6581)))))

(assert (=> b!2821161 (= lt!1006956 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!704 thiss!27755 rules!4424 (t!230506 l!6581) (h!38521 (t!230506 l!6581))))))

(declare-fun b!2821162 () Bool)

(assert (=> b!2821162 (= e!1784688 (tokensListTwoByTwoPredicateSeparableList!685 thiss!27755 (Cons!33101 (h!38521 (t!230506 (t!230506 l!6581))) (t!230506 (t!230506 (t!230506 l!6581)))) rules!4424))))

(assert (= (and d!819034 (not res!1174067)) b!2821161))

(assert (= (and b!2821161 res!1174068) b!2821162))

(declare-fun m!3251589 () Bool)

(assert (=> b!2821161 m!3251589))

(declare-fun m!3251591 () Bool)

(assert (=> b!2821161 m!3251591))

(declare-fun m!3251593 () Bool)

(assert (=> b!2821161 m!3251593))

(declare-fun m!3251595 () Bool)

(assert (=> b!2821161 m!3251595))

(declare-fun m!3251597 () Bool)

(assert (=> b!2821161 m!3251597))

(declare-fun m!3251599 () Bool)

(assert (=> b!2821161 m!3251599))

(assert (=> b!2821161 m!3251591))

(assert (=> b!2821161 m!3251431))

(declare-fun m!3251601 () Bool)

(assert (=> b!2821162 m!3251601))

(assert (=> b!2820931 d!819034))

(declare-fun d!819036 () Bool)

(assert (=> d!819036 (= (inv!45016 (tag!5461 (h!38520 rules!4424))) (= (mod (str.len (value!159568 (tag!5461 (h!38520 rules!4424)))) 2) 0))))

(assert (=> b!2820941 d!819036))

(declare-fun d!819038 () Bool)

(declare-fun res!1174069 () Bool)

(declare-fun e!1784689 () Bool)

(assert (=> d!819038 (=> (not res!1174069) (not e!1784689))))

(assert (=> d!819038 (= res!1174069 (semiInverseModEq!2049 (toChars!6834 (transformation!4957 (h!38520 rules!4424))) (toValue!6975 (transformation!4957 (h!38520 rules!4424)))))))

(assert (=> d!819038 (= (inv!45020 (transformation!4957 (h!38520 rules!4424))) e!1784689)))

(declare-fun b!2821163 () Bool)

(assert (=> b!2821163 (= e!1784689 (equivClasses!1948 (toChars!6834 (transformation!4957 (h!38520 rules!4424))) (toValue!6975 (transformation!4957 (h!38520 rules!4424)))))))

(assert (= (and d!819038 res!1174069) b!2821163))

(declare-fun m!3251603 () Bool)

(assert (=> d!819038 m!3251603))

(declare-fun m!3251605 () Bool)

(assert (=> b!2821163 m!3251605))

(assert (=> b!2820941 d!819038))

(declare-fun d!819040 () Bool)

(declare-fun lt!1006973 () Bool)

(declare-fun e!1784710 () Bool)

(assert (=> d!819040 (= lt!1006973 e!1784710)))

(declare-fun res!1174090 () Bool)

(assert (=> d!819040 (=> (not res!1174090) (not e!1784710))))

(declare-datatypes ((IArray!20545 0))(
  ( (IArray!20546 (innerList!10330 List!33225)) )
))
(declare-datatypes ((Conc!10270 0))(
  ( (Node!10270 (left!24999 Conc!10270) (right!25329 Conc!10270) (csize!20770 Int) (cheight!10481 Int)) (Leaf!15640 (xs!13382 IArray!20545) (csize!20771 Int)) (Empty!10270) )
))
(declare-datatypes ((BalanceConc!20178 0))(
  ( (BalanceConc!20179 (c!457075 Conc!10270)) )
))
(declare-fun list!12399 (BalanceConc!20178) List!33225)

(declare-datatypes ((tuple2!33380 0))(
  ( (tuple2!33381 (_1!19783 BalanceConc!20178) (_2!19783 BalanceConc!20174)) )
))
(declare-fun lex!1988 (LexerInterface!4548 List!33224 BalanceConc!20174) tuple2!33380)

(declare-fun print!1707 (LexerInterface!4548 BalanceConc!20178) BalanceConc!20174)

(declare-fun singletonSeq!2131 (Token!9316) BalanceConc!20178)

(assert (=> d!819040 (= res!1174090 (= (list!12399 (_1!19783 (lex!1988 thiss!27755 rules!4424 (print!1707 thiss!27755 (singletonSeq!2131 (h!38521 lt!1006863)))))) (list!12399 (singletonSeq!2131 (h!38521 lt!1006863)))))))

(declare-fun e!1784709 () Bool)

(assert (=> d!819040 (= lt!1006973 e!1784709)))

(declare-fun res!1174088 () Bool)

(assert (=> d!819040 (=> (not res!1174088) (not e!1784709))))

(declare-fun lt!1006972 () tuple2!33380)

(declare-fun size!25762 (BalanceConc!20178) Int)

(assert (=> d!819040 (= res!1174088 (= (size!25762 (_1!19783 lt!1006972)) 1))))

(assert (=> d!819040 (= lt!1006972 (lex!1988 thiss!27755 rules!4424 (print!1707 thiss!27755 (singletonSeq!2131 (h!38521 lt!1006863)))))))

(assert (=> d!819040 (not (isEmpty!18298 rules!4424))))

(assert (=> d!819040 (= (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006863)) lt!1006973)))

(declare-fun b!2821194 () Bool)

(declare-fun res!1174089 () Bool)

(assert (=> b!2821194 (=> (not res!1174089) (not e!1784709))))

(declare-fun apply!7726 (BalanceConc!20178 Int) Token!9316)

(assert (=> b!2821194 (= res!1174089 (= (apply!7726 (_1!19783 lt!1006972) 0) (h!38521 lt!1006863)))))

(declare-fun b!2821195 () Bool)

(declare-fun isEmpty!18301 (BalanceConc!20174) Bool)

(assert (=> b!2821195 (= e!1784709 (isEmpty!18301 (_2!19783 lt!1006972)))))

(declare-fun b!2821196 () Bool)

(assert (=> b!2821196 (= e!1784710 (isEmpty!18301 (_2!19783 (lex!1988 thiss!27755 rules!4424 (print!1707 thiss!27755 (singletonSeq!2131 (h!38521 lt!1006863)))))))))

(assert (= (and d!819040 res!1174088) b!2821194))

(assert (= (and b!2821194 res!1174089) b!2821195))

(assert (= (and d!819040 res!1174090) b!2821196))

(declare-fun m!3251631 () Bool)

(assert (=> d!819040 m!3251631))

(declare-fun m!3251633 () Bool)

(assert (=> d!819040 m!3251633))

(declare-fun m!3251635 () Bool)

(assert (=> d!819040 m!3251635))

(assert (=> d!819040 m!3251631))

(declare-fun m!3251637 () Bool)

(assert (=> d!819040 m!3251637))

(assert (=> d!819040 m!3251633))

(declare-fun m!3251639 () Bool)

(assert (=> d!819040 m!3251639))

(assert (=> d!819040 m!3251631))

(declare-fun m!3251641 () Bool)

(assert (=> d!819040 m!3251641))

(assert (=> d!819040 m!3251393))

(declare-fun m!3251643 () Bool)

(assert (=> b!2821194 m!3251643))

(declare-fun m!3251645 () Bool)

(assert (=> b!2821195 m!3251645))

(assert (=> b!2821196 m!3251631))

(assert (=> b!2821196 m!3251631))

(assert (=> b!2821196 m!3251633))

(assert (=> b!2821196 m!3251633))

(assert (=> b!2821196 m!3251639))

(declare-fun m!3251647 () Bool)

(assert (=> b!2821196 m!3251647))

(assert (=> b!2820950 d!819040))

(declare-fun d!819046 () Bool)

(declare-fun lt!1006975 () Bool)

(declare-fun e!1784712 () Bool)

(assert (=> d!819046 (= lt!1006975 e!1784712)))

(declare-fun res!1174093 () Bool)

(assert (=> d!819046 (=> (not res!1174093) (not e!1784712))))

(assert (=> d!819046 (= res!1174093 (= (list!12399 (_1!19783 (lex!1988 thiss!27755 rules!4424 (print!1707 thiss!27755 (singletonSeq!2131 (h!38521 lt!1006866)))))) (list!12399 (singletonSeq!2131 (h!38521 lt!1006866)))))))

(declare-fun e!1784711 () Bool)

(assert (=> d!819046 (= lt!1006975 e!1784711)))

(declare-fun res!1174091 () Bool)

(assert (=> d!819046 (=> (not res!1174091) (not e!1784711))))

(declare-fun lt!1006974 () tuple2!33380)

(assert (=> d!819046 (= res!1174091 (= (size!25762 (_1!19783 lt!1006974)) 1))))

(assert (=> d!819046 (= lt!1006974 (lex!1988 thiss!27755 rules!4424 (print!1707 thiss!27755 (singletonSeq!2131 (h!38521 lt!1006866)))))))

(assert (=> d!819046 (not (isEmpty!18298 rules!4424))))

(assert (=> d!819046 (= (rulesProduceIndividualToken!2086 thiss!27755 rules!4424 (h!38521 lt!1006866)) lt!1006975)))

(declare-fun b!2821197 () Bool)

(declare-fun res!1174092 () Bool)

(assert (=> b!2821197 (=> (not res!1174092) (not e!1784711))))

(assert (=> b!2821197 (= res!1174092 (= (apply!7726 (_1!19783 lt!1006974) 0) (h!38521 lt!1006866)))))

(declare-fun b!2821198 () Bool)

(assert (=> b!2821198 (= e!1784711 (isEmpty!18301 (_2!19783 lt!1006974)))))

(declare-fun b!2821199 () Bool)

(assert (=> b!2821199 (= e!1784712 (isEmpty!18301 (_2!19783 (lex!1988 thiss!27755 rules!4424 (print!1707 thiss!27755 (singletonSeq!2131 (h!38521 lt!1006866)))))))))

(assert (= (and d!819046 res!1174091) b!2821197))

(assert (= (and b!2821197 res!1174092) b!2821198))

(assert (= (and d!819046 res!1174093) b!2821199))

(declare-fun m!3251649 () Bool)

(assert (=> d!819046 m!3251649))

(declare-fun m!3251651 () Bool)

(assert (=> d!819046 m!3251651))

(declare-fun m!3251653 () Bool)

(assert (=> d!819046 m!3251653))

(assert (=> d!819046 m!3251649))

(declare-fun m!3251655 () Bool)

(assert (=> d!819046 m!3251655))

(assert (=> d!819046 m!3251651))

(declare-fun m!3251657 () Bool)

(assert (=> d!819046 m!3251657))

(assert (=> d!819046 m!3251649))

(declare-fun m!3251659 () Bool)

(assert (=> d!819046 m!3251659))

(assert (=> d!819046 m!3251393))

(declare-fun m!3251661 () Bool)

(assert (=> b!2821197 m!3251661))

(declare-fun m!3251663 () Bool)

(assert (=> b!2821198 m!3251663))

(assert (=> b!2821199 m!3251649))

(assert (=> b!2821199 m!3251649))

(assert (=> b!2821199 m!3251651))

(assert (=> b!2821199 m!3251651))

(assert (=> b!2821199 m!3251657))

(declare-fun m!3251665 () Bool)

(assert (=> b!2821199 m!3251665))

(assert (=> b!2820939 d!819046))

(declare-fun b!2821202 () Bool)

(declare-fun e!1784715 () Bool)

(assert (=> b!2821202 (= e!1784715 true)))

(declare-fun b!2821201 () Bool)

(declare-fun e!1784714 () Bool)

(assert (=> b!2821201 (= e!1784714 e!1784715)))

(declare-fun b!2821200 () Bool)

(declare-fun e!1784713 () Bool)

(assert (=> b!2821200 (= e!1784713 e!1784714)))

(assert (=> b!2820959 e!1784713))

(assert (= b!2821201 b!2821202))

(assert (= b!2821200 b!2821201))

(assert (= (and b!2820959 ((_ is Cons!33100) (t!230505 rules!4424))) b!2821200))

(assert (=> b!2821202 (< (dynLambda!13844 order!17587 (toValue!6975 (transformation!4957 (h!38520 (t!230505 rules!4424))))) (dynLambda!13845 order!17589 lambda!103561))))

(assert (=> b!2821202 (< (dynLambda!13846 order!17591 (toChars!6834 (transformation!4957 (h!38520 (t!230505 rules!4424))))) (dynLambda!13845 order!17589 lambda!103561))))

(declare-fun b!2821216 () Bool)

(declare-fun b_free!80701 () Bool)

(declare-fun b_next!81405 () Bool)

(assert (=> b!2821216 (= b_free!80701 (not b_next!81405))))

(declare-fun tp!900948 () Bool)

(declare-fun b_and!206091 () Bool)

(assert (=> b!2821216 (= tp!900948 b_and!206091)))

(declare-fun b_free!80703 () Bool)

(declare-fun b_next!81407 () Bool)

(assert (=> b!2821216 (= b_free!80703 (not b_next!81407))))

(declare-fun t!230522 () Bool)

(declare-fun tb!153801 () Bool)

(assert (=> (and b!2821216 (= (toChars!6834 (transformation!4957 (rule!7385 (h!38521 (t!230506 l!6581))))) (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581))))) t!230522) tb!153801))

(declare-fun result!191478 () Bool)

(assert (= result!191478 result!191470))

(assert (=> b!2820977 t!230522))

(declare-fun b_and!206093 () Bool)

(declare-fun tp!900951 () Bool)

(assert (=> b!2821216 (= tp!900951 (and (=> t!230522 result!191478) b_and!206093))))

(declare-fun tp!900950 () Bool)

(declare-fun e!1784731 () Bool)

(declare-fun b!2821215 () Bool)

(declare-fun e!1784728 () Bool)

(assert (=> b!2821215 (= e!1784728 (and tp!900950 (inv!45016 (tag!5461 (rule!7385 (h!38521 (t!230506 l!6581))))) (inv!45020 (transformation!4957 (rule!7385 (h!38521 (t!230506 l!6581))))) e!1784731))))

(declare-fun b!2821213 () Bool)

(declare-fun e!1784732 () Bool)

(declare-fun tp!900949 () Bool)

(declare-fun e!1784733 () Bool)

(assert (=> b!2821213 (= e!1784732 (and (inv!45019 (h!38521 (t!230506 l!6581))) e!1784733 tp!900949))))

(declare-fun tp!900952 () Bool)

(declare-fun b!2821214 () Bool)

(assert (=> b!2821214 (= e!1784733 (and (inv!21 (value!159594 (h!38521 (t!230506 l!6581)))) e!1784728 tp!900952))))

(assert (=> b!2821216 (= e!1784731 (and tp!900948 tp!900951))))

(assert (=> b!2820938 (= tp!900926 e!1784732)))

(assert (= b!2821215 b!2821216))

(assert (= b!2821214 b!2821215))

(assert (= b!2821213 b!2821214))

(assert (= (and b!2820938 ((_ is Cons!33101) (t!230506 l!6581))) b!2821213))

(declare-fun m!3251667 () Bool)

(assert (=> b!2821215 m!3251667))

(declare-fun m!3251669 () Bool)

(assert (=> b!2821215 m!3251669))

(declare-fun m!3251671 () Bool)

(assert (=> b!2821213 m!3251671))

(declare-fun m!3251673 () Bool)

(assert (=> b!2821214 m!3251673))

(declare-fun b!2821221 () Bool)

(declare-fun e!1784736 () Bool)

(declare-fun tp_is_empty!14445 () Bool)

(declare-fun tp!900955 () Bool)

(assert (=> b!2821221 (= e!1784736 (and tp_is_empty!14445 tp!900955))))

(assert (=> b!2820947 (= tp!900932 e!1784736)))

(assert (= (and b!2820947 ((_ is Cons!33099) (originalCharacters!5689 (h!38521 l!6581)))) b!2821221))

(declare-fun b!2821234 () Bool)

(declare-fun e!1784739 () Bool)

(declare-fun tp!900970 () Bool)

(assert (=> b!2821234 (= e!1784739 tp!900970)))

(declare-fun b!2821235 () Bool)

(declare-fun tp!900967 () Bool)

(declare-fun tp!900966 () Bool)

(assert (=> b!2821235 (= e!1784739 (and tp!900967 tp!900966))))

(declare-fun b!2821233 () Bool)

(declare-fun tp!900968 () Bool)

(declare-fun tp!900969 () Bool)

(assert (=> b!2821233 (= e!1784739 (and tp!900968 tp!900969))))

(assert (=> b!2820944 (= tp!900929 e!1784739)))

(declare-fun b!2821232 () Bool)

(assert (=> b!2821232 (= e!1784739 tp_is_empty!14445)))

(assert (= (and b!2820944 ((_ is ElementMatch!8347) (regex!4957 (rule!7385 (h!38521 l!6581))))) b!2821232))

(assert (= (and b!2820944 ((_ is Concat!13535) (regex!4957 (rule!7385 (h!38521 l!6581))))) b!2821233))

(assert (= (and b!2820944 ((_ is Star!8347) (regex!4957 (rule!7385 (h!38521 l!6581))))) b!2821234))

(assert (= (and b!2820944 ((_ is Union!8347) (regex!4957 (rule!7385 (h!38521 l!6581))))) b!2821235))

(declare-fun b!2821238 () Bool)

(declare-fun e!1784740 () Bool)

(declare-fun tp!900975 () Bool)

(assert (=> b!2821238 (= e!1784740 tp!900975)))

(declare-fun b!2821239 () Bool)

(declare-fun tp!900972 () Bool)

(declare-fun tp!900971 () Bool)

(assert (=> b!2821239 (= e!1784740 (and tp!900972 tp!900971))))

(declare-fun b!2821237 () Bool)

(declare-fun tp!900973 () Bool)

(declare-fun tp!900974 () Bool)

(assert (=> b!2821237 (= e!1784740 (and tp!900973 tp!900974))))

(assert (=> b!2820941 (= tp!900928 e!1784740)))

(declare-fun b!2821236 () Bool)

(assert (=> b!2821236 (= e!1784740 tp_is_empty!14445)))

(assert (= (and b!2820941 ((_ is ElementMatch!8347) (regex!4957 (h!38520 rules!4424)))) b!2821236))

(assert (= (and b!2820941 ((_ is Concat!13535) (regex!4957 (h!38520 rules!4424)))) b!2821237))

(assert (= (and b!2820941 ((_ is Star!8347) (regex!4957 (h!38520 rules!4424)))) b!2821238))

(assert (= (and b!2820941 ((_ is Union!8347) (regex!4957 (h!38520 rules!4424)))) b!2821239))

(declare-fun b!2821250 () Bool)

(declare-fun b_free!80705 () Bool)

(declare-fun b_next!81409 () Bool)

(assert (=> b!2821250 (= b_free!80705 (not b_next!81409))))

(declare-fun tp!900987 () Bool)

(declare-fun b_and!206095 () Bool)

(assert (=> b!2821250 (= tp!900987 b_and!206095)))

(declare-fun b_free!80707 () Bool)

(declare-fun b_next!81411 () Bool)

(assert (=> b!2821250 (= b_free!80707 (not b_next!81411))))

(declare-fun tb!153803 () Bool)

(declare-fun t!230524 () Bool)

(assert (=> (and b!2821250 (= (toChars!6834 (transformation!4957 (h!38520 (t!230505 rules!4424)))) (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581))))) t!230524) tb!153803))

(declare-fun result!191486 () Bool)

(assert (= result!191486 result!191470))

(assert (=> b!2820977 t!230524))

(declare-fun b_and!206097 () Bool)

(declare-fun tp!900985 () Bool)

(assert (=> b!2821250 (= tp!900985 (and (=> t!230524 result!191486) b_and!206097))))

(declare-fun e!1784749 () Bool)

(assert (=> b!2821250 (= e!1784749 (and tp!900987 tp!900985))))

(declare-fun e!1784750 () Bool)

(declare-fun b!2821249 () Bool)

(declare-fun tp!900986 () Bool)

(assert (=> b!2821249 (= e!1784750 (and tp!900986 (inv!45016 (tag!5461 (h!38520 (t!230505 rules!4424)))) (inv!45020 (transformation!4957 (h!38520 (t!230505 rules!4424)))) e!1784749))))

(declare-fun b!2821248 () Bool)

(declare-fun e!1784751 () Bool)

(declare-fun tp!900984 () Bool)

(assert (=> b!2821248 (= e!1784751 (and e!1784750 tp!900984))))

(assert (=> b!2820940 (= tp!900934 e!1784751)))

(assert (= b!2821249 b!2821250))

(assert (= b!2821248 b!2821249))

(assert (= (and b!2820940 ((_ is Cons!33100) (t!230505 rules!4424))) b!2821248))

(declare-fun m!3251675 () Bool)

(assert (=> b!2821249 m!3251675))

(declare-fun m!3251677 () Bool)

(assert (=> b!2821249 m!3251677))

(declare-fun b_lambda!84417 () Bool)

(assert (= b_lambda!84407 (or (and b!2820937 b_free!80695) (and b!2820948 b_free!80699 (= (toChars!6834 (transformation!4957 (h!38520 rules!4424))) (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))))) (and b!2821216 b_free!80703 (= (toChars!6834 (transformation!4957 (rule!7385 (h!38521 (t!230506 l!6581))))) (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))))) (and b!2821250 b_free!80707 (= (toChars!6834 (transformation!4957 (h!38520 (t!230505 rules!4424)))) (toChars!6834 (transformation!4957 (rule!7385 (h!38521 l!6581)))))) b_lambda!84417)))

(declare-fun b_lambda!84419 () Bool)

(assert (= b_lambda!84413 (or b!2820933 b_lambda!84419)))

(declare-fun bs!517402 () Bool)

(declare-fun d!819048 () Bool)

(assert (= bs!517402 (and d!819048 b!2820933)))

(assert (=> bs!517402 (= (dynLambda!13849 lambda!103561 (h!38521 lt!1006863)) (rulesProduceIndividualToken!2086 Lexer!4546 rules!4424 (h!38521 lt!1006863)))))

(declare-fun m!3251679 () Bool)

(assert (=> bs!517402 m!3251679))

(assert (=> b!2821081 d!819048))

(declare-fun b_lambda!84421 () Bool)

(assert (= b_lambda!84415 (or b!2820933 b_lambda!84421)))

(declare-fun bs!517403 () Bool)

(declare-fun d!819050 () Bool)

(assert (= bs!517403 (and d!819050 b!2820933)))

(assert (=> bs!517403 (= (dynLambda!13849 lambda!103561 (h!38521 lt!1006866)) (rulesProduceIndividualToken!2086 Lexer!4546 rules!4424 (h!38521 lt!1006866)))))

(declare-fun m!3251681 () Bool)

(assert (=> bs!517403 m!3251681))

(assert (=> b!2821151 d!819050))

(check-sat (not b_lambda!84421) (not b!2821152) (not d!819010) (not d!819028) (not b!2820968) (not b!2821067) b_and!206083 (not b!2821085) (not b!2821200) (not b_lambda!84419) (not b_next!81405) (not b!2821110) (not b_next!81403) b_and!206091 (not b!2821163) (not b!2821249) (not b!2820966) (not b!2821068) (not b!2821197) (not b!2821072) (not b!2821066) tp_is_empty!14445 (not bs!517403) (not b!2821234) (not b!2821114) (not b!2821237) (not b!2821082) (not d!819012) (not b!2821105) (not b!2820997) b_and!206079 (not d!818998) (not b!2821084) (not b!2821146) (not b!2821147) (not b!2821196) b_and!206087 b_and!206097 (not b!2821065) (not b!2821160) (not b_next!81409) (not b!2821083) (not b!2821076) (not b!2821103) (not b!2821115) b_and!206093 (not d!819038) (not b!2821162) (not b!2821213) (not b!2821161) (not b!2821000) (not b_next!81401) (not b_next!81399) (not b_lambda!84417) (not b!2821145) (not d!818980) (not b!2821239) (not b!2821248) (not b!2821199) (not b_next!81407) (not b!2821108) (not b!2821215) (not d!819046) (not b!2820978) (not b!2820998) (not d!819018) (not b!2821069) (not b_next!81411) (not b!2821198) (not b!2820996) (not b!2821238) (not b_next!81397) (not b!2820999) (not b!2821004) (not d!818978) (not b!2820977) (not b!2821005) (not b!2821001) (not d!819040) (not d!819004) (not b!2821144) (not d!819014) (not b!2821112) (not b!2821214) (not b!2821154) (not d!819016) (not b!2821235) (not b!2821195) (not tb!153797) (not b!2821006) (not b!2821073) (not b!2820967) (not d!819030) (not b!2821194) b_and!206089 (not d!818974) (not b!2821107) (not b!2821233) (not b!2820983) (not bs!517402) (not b!2821153) (not d!819008) (not b!2821148) b_and!206095 (not b!2821221) (not d!818970) (not b!2821155))
(check-sat (not b_next!81403) b_and!206091 b_and!206079 b_and!206087 b_and!206093 (not b_next!81401) (not b_next!81399) (not b_next!81407) (not b_next!81411) (not b_next!81397) b_and!206089 b_and!206095 (not b_next!81405) b_and!206083 b_and!206097 (not b_next!81409))
