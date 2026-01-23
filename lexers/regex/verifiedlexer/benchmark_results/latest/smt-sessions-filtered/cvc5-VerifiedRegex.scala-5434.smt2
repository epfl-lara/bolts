; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276174 () Bool)

(assert start!276174)

(declare-fun b!2839662 () Bool)

(declare-fun b_free!82237 () Bool)

(declare-fun b_next!82941 () Bool)

(assert (=> b!2839662 (= b_free!82237 (not b_next!82941))))

(declare-fun tp!909421 () Bool)

(declare-fun b_and!208227 () Bool)

(assert (=> b!2839662 (= tp!909421 b_and!208227)))

(declare-fun b_free!82239 () Bool)

(declare-fun b_next!82943 () Bool)

(assert (=> b!2839662 (= b_free!82239 (not b_next!82943))))

(declare-fun tp!909422 () Bool)

(declare-fun b_and!208229 () Bool)

(assert (=> b!2839662 (= tp!909422 b_and!208229)))

(declare-fun b!2839655 () Bool)

(declare-fun b_free!82241 () Bool)

(declare-fun b_next!82945 () Bool)

(assert (=> b!2839655 (= b_free!82241 (not b_next!82945))))

(declare-fun tp!909429 () Bool)

(declare-fun b_and!208231 () Bool)

(assert (=> b!2839655 (= tp!909429 b_and!208231)))

(declare-fun b_free!82243 () Bool)

(declare-fun b_next!82947 () Bool)

(assert (=> b!2839655 (= b_free!82243 (not b_next!82947))))

(declare-fun tp!909432 () Bool)

(declare-fun b_and!208233 () Bool)

(assert (=> b!2839655 (= tp!909432 b_and!208233)))

(declare-fun b!2839658 () Bool)

(declare-fun b_free!82245 () Bool)

(declare-fun b_next!82949 () Bool)

(assert (=> b!2839658 (= b_free!82245 (not b_next!82949))))

(declare-fun tp!909433 () Bool)

(declare-fun b_and!208235 () Bool)

(assert (=> b!2839658 (= tp!909433 b_and!208235)))

(declare-fun b_free!82247 () Bool)

(declare-fun b_next!82951 () Bool)

(assert (=> b!2839658 (= b_free!82247 (not b_next!82951))))

(declare-fun tp!909426 () Bool)

(declare-fun b_and!208237 () Bool)

(assert (=> b!2839658 (= tp!909426 b_and!208237)))

(declare-fun e!1798772 () Bool)

(assert (=> b!2839655 (= e!1798772 (and tp!909429 tp!909432))))

(declare-fun b!2839656 () Bool)

(declare-fun e!1798779 () Bool)

(declare-datatypes ((C!17070 0))(
  ( (C!17071 (val!10547 Int)) )
))
(declare-datatypes ((List!33728 0))(
  ( (Nil!33604) (Cons!33604 (h!39024 C!17070) (t!232365 List!33728)) )
))
(declare-datatypes ((IArray!20871 0))(
  ( (IArray!20872 (innerList!10493 List!33728)) )
))
(declare-datatypes ((Conc!10433 0))(
  ( (Node!10433 (left!25331 Conc!10433) (right!25661 Conc!10433) (csize!21096 Int) (cheight!10644 Int)) (Leaf!15868 (xs!13545 IArray!20871) (csize!21097 Int)) (Empty!10433) )
))
(declare-datatypes ((BalanceConc!20504 0))(
  ( (BalanceConc!20505 (c!458540 Conc!10433)) )
))
(declare-datatypes ((List!33729 0))(
  ( (Nil!33605) (Cons!33605 (h!39025 (_ BitVec 16)) (t!232366 List!33729)) )
))
(declare-datatypes ((Regex!8444 0))(
  ( (ElementMatch!8444 (c!458541 C!17070)) (Concat!13727 (regOne!17400 Regex!8444) (regTwo!17400 Regex!8444)) (EmptyExpr!8444) (Star!8444 (reg!8773 Regex!8444)) (EmptyLang!8444) (Union!8444 (regOne!17401 Regex!8444) (regTwo!17401 Regex!8444)) )
))
(declare-datatypes ((String!36938 0))(
  ( (String!36939 (value!162355 String)) )
))
(declare-datatypes ((TokenValue!5283 0))(
  ( (FloatLiteralValue!10566 (text!37426 List!33729)) (TokenValueExt!5282 (__x!22304 Int)) (Broken!26415 (value!162356 List!33729)) (Object!5406) (End!5283) (Def!5283) (Underscore!5283) (Match!5283) (Else!5283) (Error!5283) (Case!5283) (If!5283) (Extends!5283) (Abstract!5283) (Class!5283) (Val!5283) (DelimiterValue!10566 (del!5343 List!33729)) (KeywordValue!5289 (value!162357 List!33729)) (CommentValue!10566 (value!162358 List!33729)) (WhitespaceValue!10566 (value!162359 List!33729)) (IndentationValue!5283 (value!162360 List!33729)) (String!36940) (Int32!5283) (Broken!26416 (value!162361 List!33729)) (Boolean!5284) (Unit!47467) (OperatorValue!5286 (op!5343 List!33729)) (IdentifierValue!10566 (value!162362 List!33729)) (IdentifierValue!10567 (value!162363 List!33729)) (WhitespaceValue!10567 (value!162364 List!33729)) (True!10566) (False!10566) (Broken!26417 (value!162365 List!33729)) (Broken!26418 (value!162366 List!33729)) (True!10567) (RightBrace!5283) (RightBracket!5283) (Colon!5283) (Null!5283) (Comma!5283) (LeftBracket!5283) (False!10567) (LeftBrace!5283) (ImaginaryLiteralValue!5283 (text!37427 List!33729)) (StringLiteralValue!15849 (value!162367 List!33729)) (EOFValue!5283 (value!162368 List!33729)) (IdentValue!5283 (value!162369 List!33729)) (DelimiterValue!10567 (value!162370 List!33729)) (DedentValue!5283 (value!162371 List!33729)) (NewLineValue!5283 (value!162372 List!33729)) (IntegerValue!15849 (value!162373 (_ BitVec 32)) (text!37428 List!33729)) (IntegerValue!15850 (value!162374 Int) (text!37429 List!33729)) (Times!5283) (Or!5283) (Equal!5283) (Minus!5283) (Broken!26419 (value!162375 List!33729)) (And!5283) (Div!5283) (LessEqual!5283) (Mod!5283) (Concat!13728) (Not!5283) (Plus!5283) (SpaceValue!5283 (value!162376 List!33729)) (IntegerValue!15851 (value!162377 Int) (text!37430 List!33729)) (StringLiteralValue!15850 (text!37431 List!33729)) (FloatLiteralValue!10567 (text!37432 List!33729)) (BytesLiteralValue!5283 (value!162378 List!33729)) (CommentValue!10567 (value!162379 List!33729)) (StringLiteralValue!15851 (value!162380 List!33729)) (ErrorTokenValue!5283 (msg!5344 List!33729)) )
))
(declare-datatypes ((TokenValueInjection!9994 0))(
  ( (TokenValueInjection!9995 (toValue!7095 Int) (toChars!6954 Int)) )
))
(declare-datatypes ((Rule!9906 0))(
  ( (Rule!9907 (regex!5053 Regex!8444) (tag!5557 String!36938) (isSeparator!5053 Bool) (transformation!5053 TokenValueInjection!9994)) )
))
(declare-datatypes ((Token!9508 0))(
  ( (Token!9509 (value!162381 TokenValue!5283) (rule!7481 Rule!9906) (size!26096 Int) (originalCharacters!5785 List!33728)) )
))
(declare-datatypes ((List!33730 0))(
  ( (Nil!33606) (Cons!33606 (h!39026 Token!9508) (t!232367 List!33730)) )
))
(declare-fun tokensBis!14 () List!33730)

(declare-fun tokens!612 () List!33730)

(declare-fun subseq!519 (List!33730 List!33730) Bool)

(assert (=> b!2839656 (= e!1798779 (not (subseq!519 (t!232367 tokensBis!14) (t!232367 tokens!612))))))

(declare-fun b!2839657 () Bool)

(declare-fun res!1181453 () Bool)

(declare-fun e!1798769 () Bool)

(assert (=> b!2839657 (=> (not res!1181453) (not e!1798769))))

(assert (=> b!2839657 (= res!1181453 (subseq!519 tokensBis!14 tokens!612))))

(declare-fun e!1798774 () Bool)

(assert (=> b!2839658 (= e!1798774 (and tp!909433 tp!909426))))

(declare-fun res!1181456 () Bool)

(assert (=> start!276174 (=> (not res!1181456) (not e!1798769))))

(declare-datatypes ((LexerInterface!4643 0))(
  ( (LexerInterfaceExt!4640 (__x!22305 Int)) (Lexer!4641) )
))
(declare-fun thiss!27264 () LexerInterface!4643)

(assert (=> start!276174 (= res!1181456 (is-Lexer!4641 thiss!27264))))

(assert (=> start!276174 e!1798769))

(assert (=> start!276174 true))

(declare-fun e!1798766 () Bool)

(assert (=> start!276174 e!1798766))

(declare-fun e!1798777 () Bool)

(assert (=> start!276174 e!1798777))

(declare-fun e!1798767 () Bool)

(assert (=> start!276174 e!1798767))

(declare-fun b!2839659 () Bool)

(declare-fun e!1798773 () Bool)

(declare-fun tp!909431 () Bool)

(assert (=> b!2839659 (= e!1798766 (and e!1798773 tp!909431))))

(declare-fun b!2839660 () Bool)

(declare-fun e!1798768 () Bool)

(declare-fun tp!909424 () Bool)

(declare-fun inv!45577 (Token!9508) Bool)

(assert (=> b!2839660 (= e!1798767 (and (inv!45577 (h!39026 tokens!612)) e!1798768 tp!909424))))

(declare-fun b!2839661 () Bool)

(assert (=> b!2839661 (= e!1798769 (not (subseq!519 tokensBis!14 (t!232367 tokens!612))))))

(declare-fun e!1798781 () Bool)

(assert (=> b!2839662 (= e!1798781 (and tp!909421 tp!909422))))

(declare-fun b!2839663 () Bool)

(declare-fun e!1798765 () Bool)

(declare-fun tp!909425 () Bool)

(declare-fun e!1798778 () Bool)

(declare-fun inv!21 (TokenValue!5283) Bool)

(assert (=> b!2839663 (= e!1798778 (and (inv!21 (value!162381 (h!39026 tokensBis!14))) e!1798765 tp!909425))))

(declare-fun b!2839664 () Bool)

(declare-fun res!1181451 () Bool)

(assert (=> b!2839664 (=> (not res!1181451) (not e!1798769))))

(declare-datatypes ((List!33731 0))(
  ( (Nil!33607) (Cons!33607 (h!39027 Rule!9906) (t!232368 List!33731)) )
))
(declare-fun rules!4246 () List!33731)

(declare-fun rulesInvariant!4059 (LexerInterface!4643 List!33731) Bool)

(assert (=> b!2839664 (= res!1181451 (rulesInvariant!4059 thiss!27264 rules!4246))))

(declare-fun b!2839665 () Bool)

(declare-fun tp!909428 () Bool)

(declare-fun e!1798764 () Bool)

(declare-fun inv!45574 (String!36938) Bool)

(declare-fun inv!45578 (TokenValueInjection!9994) Bool)

(assert (=> b!2839665 (= e!1798764 (and tp!909428 (inv!45574 (tag!5557 (rule!7481 (h!39026 tokens!612)))) (inv!45578 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) e!1798774))))

(declare-fun b!2839666 () Bool)

(declare-fun res!1181450 () Bool)

(assert (=> b!2839666 (=> (not res!1181450) (not e!1798769))))

(declare-fun isEmpty!18508 (List!33731) Bool)

(assert (=> b!2839666 (= res!1181450 (not (isEmpty!18508 rules!4246)))))

(declare-fun b!2839667 () Bool)

(declare-fun tp!909427 () Bool)

(assert (=> b!2839667 (= e!1798768 (and (inv!21 (value!162381 (h!39026 tokens!612))) e!1798764 tp!909427))))

(declare-fun b!2839668 () Bool)

(declare-fun tp!909434 () Bool)

(assert (=> b!2839668 (= e!1798773 (and tp!909434 (inv!45574 (tag!5557 (h!39027 rules!4246))) (inv!45578 (transformation!5053 (h!39027 rules!4246))) e!1798772))))

(declare-fun b!2839669 () Bool)

(declare-fun res!1181454 () Bool)

(assert (=> b!2839669 (=> (not res!1181454) (not e!1798769))))

(declare-fun rulesProduceEachTokenIndividuallyList!1684 (LexerInterface!4643 List!33731 List!33730) Bool)

(assert (=> b!2839669 (= res!1181454 (rulesProduceEachTokenIndividuallyList!1684 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2839670 () Bool)

(declare-fun res!1181455 () Bool)

(assert (=> b!2839670 (=> (not res!1181455) (not e!1798769))))

(assert (=> b!2839670 (= res!1181455 e!1798779)))

(declare-fun res!1181452 () Bool)

(assert (=> b!2839670 (=> res!1181452 e!1798779)))

(assert (=> b!2839670 (= res!1181452 (not (= (h!39026 tokensBis!14) (h!39026 tokens!612))))))

(declare-fun tp!909430 () Bool)

(declare-fun b!2839671 () Bool)

(assert (=> b!2839671 (= e!1798765 (and tp!909430 (inv!45574 (tag!5557 (rule!7481 (h!39026 tokensBis!14)))) (inv!45578 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) e!1798781))))

(declare-fun tp!909423 () Bool)

(declare-fun b!2839672 () Bool)

(assert (=> b!2839672 (= e!1798777 (and (inv!45577 (h!39026 tokensBis!14)) e!1798778 tp!909423))))

(declare-fun b!2839673 () Bool)

(declare-fun res!1181457 () Bool)

(assert (=> b!2839673 (=> (not res!1181457) (not e!1798769))))

(assert (=> b!2839673 (= res!1181457 (and (not (is-Nil!33606 tokensBis!14)) (is-Cons!33606 tokens!612)))))

(assert (= (and start!276174 res!1181456) b!2839666))

(assert (= (and b!2839666 res!1181450) b!2839664))

(assert (= (and b!2839664 res!1181451) b!2839657))

(assert (= (and b!2839657 res!1181453) b!2839669))

(assert (= (and b!2839669 res!1181454) b!2839673))

(assert (= (and b!2839673 res!1181457) b!2839670))

(assert (= (and b!2839670 (not res!1181452)) b!2839656))

(assert (= (and b!2839670 res!1181455) b!2839661))

(assert (= b!2839668 b!2839655))

(assert (= b!2839659 b!2839668))

(assert (= (and start!276174 (is-Cons!33607 rules!4246)) b!2839659))

(assert (= b!2839671 b!2839662))

(assert (= b!2839663 b!2839671))

(assert (= b!2839672 b!2839663))

(assert (= (and start!276174 (is-Cons!33606 tokensBis!14)) b!2839672))

(assert (= b!2839665 b!2839658))

(assert (= b!2839667 b!2839665))

(assert (= b!2839660 b!2839667))

(assert (= (and start!276174 (is-Cons!33606 tokens!612)) b!2839660))

(declare-fun m!3268387 () Bool)

(assert (=> b!2839668 m!3268387))

(declare-fun m!3268389 () Bool)

(assert (=> b!2839668 m!3268389))

(declare-fun m!3268391 () Bool)

(assert (=> b!2839664 m!3268391))

(declare-fun m!3268393 () Bool)

(assert (=> b!2839663 m!3268393))

(declare-fun m!3268395 () Bool)

(assert (=> b!2839661 m!3268395))

(declare-fun m!3268397 () Bool)

(assert (=> b!2839672 m!3268397))

(declare-fun m!3268399 () Bool)

(assert (=> b!2839656 m!3268399))

(declare-fun m!3268401 () Bool)

(assert (=> b!2839666 m!3268401))

(declare-fun m!3268403 () Bool)

(assert (=> b!2839660 m!3268403))

(declare-fun m!3268405 () Bool)

(assert (=> b!2839667 m!3268405))

(declare-fun m!3268407 () Bool)

(assert (=> b!2839657 m!3268407))

(declare-fun m!3268409 () Bool)

(assert (=> b!2839665 m!3268409))

(declare-fun m!3268411 () Bool)

(assert (=> b!2839665 m!3268411))

(declare-fun m!3268413 () Bool)

(assert (=> b!2839671 m!3268413))

(declare-fun m!3268415 () Bool)

(assert (=> b!2839671 m!3268415))

(declare-fun m!3268417 () Bool)

(assert (=> b!2839669 m!3268417))

(push 1)

(assert (not b_next!82941))

(assert (not b!2839671))

(assert (not b_next!82951))

(assert (not b!2839669))

(assert (not b_next!82947))

(assert b_and!208227)

(assert (not b!2839665))

(assert b_and!208231)

(assert (not b!2839663))

(assert b_and!208237)

(assert (not b!2839661))

(assert (not b_next!82943))

(assert b_and!208235)

(assert (not b!2839672))

(assert (not b!2839667))

(assert (not b!2839660))

(assert b_and!208233)

(assert (not b!2839666))

(assert (not b!2839668))

(assert (not b!2839659))

(assert b_and!208229)

(assert (not b!2839656))

(assert (not b_next!82945))

(assert (not b_next!82949))

(assert (not b!2839664))

(assert (not b!2839657))

(check-sat)

(pop 1)

(push 1)

(assert (not b_next!82941))

(assert (not b_next!82951))

(assert (not b_next!82947))

(assert b_and!208233)

(assert b_and!208227)

(assert b_and!208231)

(assert b_and!208237)

(assert b_and!208229)

(assert (not b_next!82943))

(assert b_and!208235)

(assert (not b_next!82945))

(assert (not b_next!82949))

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2839747 () Bool)

(declare-fun e!1798847 () Bool)

(assert (=> b!2839747 (= e!1798847 (subseq!519 (t!232367 (t!232367 tokensBis!14)) (t!232367 (t!232367 tokens!612))))))

(declare-fun b!2839746 () Bool)

(declare-fun e!1798849 () Bool)

(declare-fun e!1798848 () Bool)

(assert (=> b!2839746 (= e!1798849 e!1798848)))

(declare-fun res!1181504 () Bool)

(assert (=> b!2839746 (=> res!1181504 e!1798848)))

(assert (=> b!2839746 (= res!1181504 e!1798847)))

(declare-fun res!1181507 () Bool)

(assert (=> b!2839746 (=> (not res!1181507) (not e!1798847))))

(assert (=> b!2839746 (= res!1181507 (= (h!39026 (t!232367 tokensBis!14)) (h!39026 (t!232367 tokens!612))))))

(declare-fun d!823591 () Bool)

(declare-fun res!1181506 () Bool)

(declare-fun e!1798850 () Bool)

(assert (=> d!823591 (=> res!1181506 e!1798850)))

(assert (=> d!823591 (= res!1181506 (is-Nil!33606 (t!232367 tokensBis!14)))))

(assert (=> d!823591 (= (subseq!519 (t!232367 tokensBis!14) (t!232367 tokens!612)) e!1798850)))

(declare-fun b!2839745 () Bool)

(assert (=> b!2839745 (= e!1798850 e!1798849)))

(declare-fun res!1181505 () Bool)

(assert (=> b!2839745 (=> (not res!1181505) (not e!1798849))))

(assert (=> b!2839745 (= res!1181505 (is-Cons!33606 (t!232367 tokens!612)))))

(declare-fun b!2839748 () Bool)

(assert (=> b!2839748 (= e!1798848 (subseq!519 (t!232367 tokensBis!14) (t!232367 (t!232367 tokens!612))))))

(assert (= (and d!823591 (not res!1181506)) b!2839745))

(assert (= (and b!2839745 res!1181505) b!2839746))

(assert (= (and b!2839746 res!1181507) b!2839747))

(assert (= (and b!2839746 (not res!1181504)) b!2839748))

(declare-fun m!3268451 () Bool)

(assert (=> b!2839747 m!3268451))

(declare-fun m!3268453 () Bool)

(assert (=> b!2839748 m!3268453))

(assert (=> b!2839656 d!823591))

(declare-fun d!823593 () Bool)

(assert (=> d!823593 (= (isEmpty!18508 rules!4246) (is-Nil!33607 rules!4246))))

(assert (=> b!2839666 d!823593))

(declare-fun d!823595 () Bool)

(assert (=> d!823595 (= (inv!45574 (tag!5557 (rule!7481 (h!39026 tokens!612)))) (= (mod (str.len (value!162355 (tag!5557 (rule!7481 (h!39026 tokens!612))))) 2) 0))))

(assert (=> b!2839665 d!823595))

(declare-fun d!823597 () Bool)

(declare-fun res!1181510 () Bool)

(declare-fun e!1798856 () Bool)

(assert (=> d!823597 (=> (not res!1181510) (not e!1798856))))

(declare-fun semiInverseModEq!2102 (Int Int) Bool)

(assert (=> d!823597 (= res!1181510 (semiInverseModEq!2102 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (toValue!7095 (transformation!5053 (rule!7481 (h!39026 tokens!612))))))))

(assert (=> d!823597 (= (inv!45578 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) e!1798856)))

(declare-fun b!2839756 () Bool)

(declare-fun equivClasses!2001 (Int Int) Bool)

(assert (=> b!2839756 (= e!1798856 (equivClasses!2001 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (toValue!7095 (transformation!5053 (rule!7481 (h!39026 tokens!612))))))))

(assert (= (and d!823597 res!1181510) b!2839756))

(declare-fun m!3268461 () Bool)

(assert (=> d!823597 m!3268461))

(declare-fun m!3268465 () Bool)

(assert (=> b!2839756 m!3268465))

(assert (=> b!2839665 d!823597))

(declare-fun b!2839777 () Bool)

(declare-fun e!1798875 () Bool)

(assert (=> b!2839777 (= e!1798875 true)))

(declare-fun b!2839776 () Bool)

(declare-fun e!1798874 () Bool)

(assert (=> b!2839776 (= e!1798874 e!1798875)))

(declare-fun b!2839775 () Bool)

(declare-fun e!1798873 () Bool)

(assert (=> b!2839775 (= e!1798873 e!1798874)))

(declare-fun d!823599 () Bool)

(assert (=> d!823599 e!1798873))

(assert (= b!2839776 b!2839777))

(assert (= b!2839775 b!2839776))

(assert (= (and d!823599 (is-Cons!33607 rules!4246)) b!2839775))

(declare-fun order!17955 () Int)

(declare-fun order!17953 () Int)

(declare-fun lambda!104220 () Int)

(declare-fun dynLambda!14132 (Int Int) Int)

(declare-fun dynLambda!14133 (Int Int) Int)

(assert (=> b!2839777 (< (dynLambda!14132 order!17953 (toValue!7095 (transformation!5053 (h!39027 rules!4246)))) (dynLambda!14133 order!17955 lambda!104220))))

(declare-fun order!17957 () Int)

(declare-fun dynLambda!14134 (Int Int) Int)

(assert (=> b!2839777 (< (dynLambda!14134 order!17957 (toChars!6954 (transformation!5053 (h!39027 rules!4246)))) (dynLambda!14133 order!17955 lambda!104220))))

(assert (=> d!823599 true))

(declare-fun lt!1011558 () Bool)

(declare-fun forall!6908 (List!33730 Int) Bool)

(assert (=> d!823599 (= lt!1011558 (forall!6908 tokens!612 lambda!104220))))

(declare-fun e!1798866 () Bool)

(assert (=> d!823599 (= lt!1011558 e!1798866)))

(declare-fun res!1181520 () Bool)

(assert (=> d!823599 (=> res!1181520 e!1798866)))

(assert (=> d!823599 (= res!1181520 (not (is-Cons!33606 tokens!612)))))

(assert (=> d!823599 (not (isEmpty!18508 rules!4246))))

(assert (=> d!823599 (= (rulesProduceEachTokenIndividuallyList!1684 thiss!27264 rules!4246 tokens!612) lt!1011558)))

(declare-fun b!2839765 () Bool)

(declare-fun e!1798865 () Bool)

(assert (=> b!2839765 (= e!1798866 e!1798865)))

(declare-fun res!1181519 () Bool)

(assert (=> b!2839765 (=> (not res!1181519) (not e!1798865))))

(declare-fun rulesProduceIndividualToken!2155 (LexerInterface!4643 List!33731 Token!9508) Bool)

(assert (=> b!2839765 (= res!1181519 (rulesProduceIndividualToken!2155 thiss!27264 rules!4246 (h!39026 tokens!612)))))

(declare-fun b!2839766 () Bool)

(assert (=> b!2839766 (= e!1798865 (rulesProduceEachTokenIndividuallyList!1684 thiss!27264 rules!4246 (t!232367 tokens!612)))))

(assert (= (and d!823599 (not res!1181520)) b!2839765))

(assert (= (and b!2839765 res!1181519) b!2839766))

(declare-fun m!3268471 () Bool)

(assert (=> d!823599 m!3268471))

(assert (=> d!823599 m!3268401))

(declare-fun m!3268473 () Bool)

(assert (=> b!2839765 m!3268473))

(declare-fun m!3268475 () Bool)

(assert (=> b!2839766 m!3268475))

(assert (=> b!2839669 d!823599))

(declare-fun b!2839782 () Bool)

(declare-fun e!1798876 () Bool)

(assert (=> b!2839782 (= e!1798876 (subseq!519 (t!232367 tokensBis!14) (t!232367 tokens!612)))))

(declare-fun b!2839781 () Bool)

(declare-fun e!1798878 () Bool)

(declare-fun e!1798877 () Bool)

(assert (=> b!2839781 (= e!1798878 e!1798877)))

(declare-fun res!1181521 () Bool)

(assert (=> b!2839781 (=> res!1181521 e!1798877)))

(assert (=> b!2839781 (= res!1181521 e!1798876)))

(declare-fun res!1181524 () Bool)

(assert (=> b!2839781 (=> (not res!1181524) (not e!1798876))))

(assert (=> b!2839781 (= res!1181524 (= (h!39026 tokensBis!14) (h!39026 tokens!612)))))

(declare-fun d!823603 () Bool)

(declare-fun res!1181523 () Bool)

(declare-fun e!1798879 () Bool)

(assert (=> d!823603 (=> res!1181523 e!1798879)))

(assert (=> d!823603 (= res!1181523 (is-Nil!33606 tokensBis!14))))

(assert (=> d!823603 (= (subseq!519 tokensBis!14 tokens!612) e!1798879)))

(declare-fun b!2839780 () Bool)

(assert (=> b!2839780 (= e!1798879 e!1798878)))

(declare-fun res!1181522 () Bool)

(assert (=> b!2839780 (=> (not res!1181522) (not e!1798878))))

(assert (=> b!2839780 (= res!1181522 (is-Cons!33606 tokens!612))))

(declare-fun b!2839783 () Bool)

(assert (=> b!2839783 (= e!1798877 (subseq!519 tokensBis!14 (t!232367 tokens!612)))))

(assert (= (and d!823603 (not res!1181523)) b!2839780))

(assert (= (and b!2839780 res!1181522) b!2839781))

(assert (= (and b!2839781 res!1181524) b!2839782))

(assert (= (and b!2839781 (not res!1181521)) b!2839783))

(assert (=> b!2839782 m!3268399))

(assert (=> b!2839783 m!3268395))

(assert (=> b!2839657 d!823603))

(declare-fun d!823605 () Bool)

(assert (=> d!823605 (= (inv!45574 (tag!5557 (h!39027 rules!4246))) (= (mod (str.len (value!162355 (tag!5557 (h!39027 rules!4246)))) 2) 0))))

(assert (=> b!2839668 d!823605))

(declare-fun d!823607 () Bool)

(declare-fun res!1181525 () Bool)

(declare-fun e!1798880 () Bool)

(assert (=> d!823607 (=> (not res!1181525) (not e!1798880))))

(assert (=> d!823607 (= res!1181525 (semiInverseModEq!2102 (toChars!6954 (transformation!5053 (h!39027 rules!4246))) (toValue!7095 (transformation!5053 (h!39027 rules!4246)))))))

(assert (=> d!823607 (= (inv!45578 (transformation!5053 (h!39027 rules!4246))) e!1798880)))

(declare-fun b!2839784 () Bool)

(assert (=> b!2839784 (= e!1798880 (equivClasses!2001 (toChars!6954 (transformation!5053 (h!39027 rules!4246))) (toValue!7095 (transformation!5053 (h!39027 rules!4246)))))))

(assert (= (and d!823607 res!1181525) b!2839784))

(declare-fun m!3268477 () Bool)

(assert (=> d!823607 m!3268477))

(declare-fun m!3268479 () Bool)

(assert (=> b!2839784 m!3268479))

(assert (=> b!2839668 d!823607))

(declare-fun b!2839795 () Bool)

(declare-fun e!1798889 () Bool)

(declare-fun inv!17 (TokenValue!5283) Bool)

(assert (=> b!2839795 (= e!1798889 (inv!17 (value!162381 (h!39026 tokens!612))))))

(declare-fun b!2839796 () Bool)

(declare-fun e!1798887 () Bool)

(assert (=> b!2839796 (= e!1798887 e!1798889)))

(declare-fun c!458548 () Bool)

(assert (=> b!2839796 (= c!458548 (is-IntegerValue!15850 (value!162381 (h!39026 tokens!612))))))

(declare-fun d!823609 () Bool)

(declare-fun c!458549 () Bool)

(assert (=> d!823609 (= c!458549 (is-IntegerValue!15849 (value!162381 (h!39026 tokens!612))))))

(assert (=> d!823609 (= (inv!21 (value!162381 (h!39026 tokens!612))) e!1798887)))

(declare-fun b!2839797 () Bool)

(declare-fun inv!16 (TokenValue!5283) Bool)

(assert (=> b!2839797 (= e!1798887 (inv!16 (value!162381 (h!39026 tokens!612))))))

(declare-fun b!2839798 () Bool)

(declare-fun res!1181528 () Bool)

(declare-fun e!1798888 () Bool)

(assert (=> b!2839798 (=> res!1181528 e!1798888)))

(assert (=> b!2839798 (= res!1181528 (not (is-IntegerValue!15851 (value!162381 (h!39026 tokens!612)))))))

(assert (=> b!2839798 (= e!1798889 e!1798888)))

(declare-fun b!2839799 () Bool)

(declare-fun inv!15 (TokenValue!5283) Bool)

(assert (=> b!2839799 (= e!1798888 (inv!15 (value!162381 (h!39026 tokens!612))))))

(assert (= (and d!823609 c!458549) b!2839797))

(assert (= (and d!823609 (not c!458549)) b!2839796))

(assert (= (and b!2839796 c!458548) b!2839795))

(assert (= (and b!2839796 (not c!458548)) b!2839798))

(assert (= (and b!2839798 (not res!1181528)) b!2839799))

(declare-fun m!3268481 () Bool)

(assert (=> b!2839795 m!3268481))

(declare-fun m!3268483 () Bool)

(assert (=> b!2839797 m!3268483))

(declare-fun m!3268485 () Bool)

(assert (=> b!2839799 m!3268485))

(assert (=> b!2839667 d!823609))

(declare-fun b!2839802 () Bool)

(declare-fun e!1798890 () Bool)

(assert (=> b!2839802 (= e!1798890 (subseq!519 (t!232367 tokensBis!14) (t!232367 (t!232367 tokens!612))))))

(declare-fun b!2839801 () Bool)

(declare-fun e!1798892 () Bool)

(declare-fun e!1798891 () Bool)

(assert (=> b!2839801 (= e!1798892 e!1798891)))

(declare-fun res!1181529 () Bool)

(assert (=> b!2839801 (=> res!1181529 e!1798891)))

(assert (=> b!2839801 (= res!1181529 e!1798890)))

(declare-fun res!1181532 () Bool)

(assert (=> b!2839801 (=> (not res!1181532) (not e!1798890))))

(assert (=> b!2839801 (= res!1181532 (= (h!39026 tokensBis!14) (h!39026 (t!232367 tokens!612))))))

(declare-fun d!823611 () Bool)

(declare-fun res!1181531 () Bool)

(declare-fun e!1798893 () Bool)

(assert (=> d!823611 (=> res!1181531 e!1798893)))

(assert (=> d!823611 (= res!1181531 (is-Nil!33606 tokensBis!14))))

(assert (=> d!823611 (= (subseq!519 tokensBis!14 (t!232367 tokens!612)) e!1798893)))

(declare-fun b!2839800 () Bool)

(assert (=> b!2839800 (= e!1798893 e!1798892)))

(declare-fun res!1181530 () Bool)

(assert (=> b!2839800 (=> (not res!1181530) (not e!1798892))))

(assert (=> b!2839800 (= res!1181530 (is-Cons!33606 (t!232367 tokens!612)))))

(declare-fun b!2839803 () Bool)

(assert (=> b!2839803 (= e!1798891 (subseq!519 tokensBis!14 (t!232367 (t!232367 tokens!612))))))

(assert (= (and d!823611 (not res!1181531)) b!2839800))

(assert (= (and b!2839800 res!1181530) b!2839801))

(assert (= (and b!2839801 res!1181532) b!2839802))

(assert (= (and b!2839801 (not res!1181529)) b!2839803))

(assert (=> b!2839802 m!3268453))

(declare-fun m!3268487 () Bool)

(assert (=> b!2839803 m!3268487))

(assert (=> b!2839661 d!823611))

(declare-fun d!823613 () Bool)

(declare-fun res!1181537 () Bool)

(declare-fun e!1798896 () Bool)

(assert (=> d!823613 (=> (not res!1181537) (not e!1798896))))

(declare-fun isEmpty!18510 (List!33728) Bool)

(assert (=> d!823613 (= res!1181537 (not (isEmpty!18510 (originalCharacters!5785 (h!39026 tokensBis!14)))))))

(assert (=> d!823613 (= (inv!45577 (h!39026 tokensBis!14)) e!1798896)))

(declare-fun b!2839808 () Bool)

(declare-fun res!1181538 () Bool)

(assert (=> b!2839808 (=> (not res!1181538) (not e!1798896))))

(declare-fun list!12531 (BalanceConc!20504) List!33728)

(declare-fun dynLambda!14135 (Int TokenValue!5283) BalanceConc!20504)

(assert (=> b!2839808 (= res!1181538 (= (originalCharacters!5785 (h!39026 tokensBis!14)) (list!12531 (dynLambda!14135 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (value!162381 (h!39026 tokensBis!14))))))))

(declare-fun b!2839809 () Bool)

(declare-fun size!26098 (List!33728) Int)

(assert (=> b!2839809 (= e!1798896 (= (size!26096 (h!39026 tokensBis!14)) (size!26098 (originalCharacters!5785 (h!39026 tokensBis!14)))))))

(assert (= (and d!823613 res!1181537) b!2839808))

(assert (= (and b!2839808 res!1181538) b!2839809))

(declare-fun b_lambda!85361 () Bool)

(assert (=> (not b_lambda!85361) (not b!2839808)))

(declare-fun t!232384 () Bool)

(declare-fun tb!154763 () Bool)

(assert (=> (and b!2839662 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))) t!232384) tb!154763))

(declare-fun b!2839814 () Bool)

(declare-fun e!1798899 () Bool)

(declare-fun tp!909482 () Bool)

(declare-fun inv!45581 (Conc!10433) Bool)

(assert (=> b!2839814 (= e!1798899 (and (inv!45581 (c!458540 (dynLambda!14135 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (value!162381 (h!39026 tokensBis!14))))) tp!909482))))

(declare-fun result!193050 () Bool)

(declare-fun inv!45582 (BalanceConc!20504) Bool)

(assert (=> tb!154763 (= result!193050 (and (inv!45582 (dynLambda!14135 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (value!162381 (h!39026 tokensBis!14)))) e!1798899))))

(assert (= tb!154763 b!2839814))

(declare-fun m!3268489 () Bool)

(assert (=> b!2839814 m!3268489))

(declare-fun m!3268491 () Bool)

(assert (=> tb!154763 m!3268491))

(assert (=> b!2839808 t!232384))

(declare-fun b_and!208257 () Bool)

(assert (= b_and!208229 (and (=> t!232384 result!193050) b_and!208257)))

(declare-fun tb!154765 () Bool)

(declare-fun t!232386 () Bool)

(assert (=> (and b!2839655 (= (toChars!6954 (transformation!5053 (h!39027 rules!4246))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))) t!232386) tb!154765))

(declare-fun result!193054 () Bool)

(assert (= result!193054 result!193050))

(assert (=> b!2839808 t!232386))

(declare-fun b_and!208259 () Bool)

(assert (= b_and!208233 (and (=> t!232386 result!193054) b_and!208259)))

(declare-fun tb!154767 () Bool)

(declare-fun t!232388 () Bool)

(assert (=> (and b!2839658 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))) t!232388) tb!154767))

(declare-fun result!193056 () Bool)

(assert (= result!193056 result!193050))

(assert (=> b!2839808 t!232388))

(declare-fun b_and!208261 () Bool)

(assert (= b_and!208237 (and (=> t!232388 result!193056) b_and!208261)))

(declare-fun m!3268493 () Bool)

(assert (=> d!823613 m!3268493))

(declare-fun m!3268495 () Bool)

(assert (=> b!2839808 m!3268495))

(assert (=> b!2839808 m!3268495))

(declare-fun m!3268497 () Bool)

(assert (=> b!2839808 m!3268497))

(declare-fun m!3268499 () Bool)

(assert (=> b!2839809 m!3268499))

(assert (=> b!2839672 d!823613))

(declare-fun d!823615 () Bool)

(assert (=> d!823615 (= (inv!45574 (tag!5557 (rule!7481 (h!39026 tokensBis!14)))) (= (mod (str.len (value!162355 (tag!5557 (rule!7481 (h!39026 tokensBis!14))))) 2) 0))))

(assert (=> b!2839671 d!823615))

(declare-fun d!823617 () Bool)

(declare-fun res!1181539 () Bool)

(declare-fun e!1798900 () Bool)

(assert (=> d!823617 (=> (not res!1181539) (not e!1798900))))

(assert (=> d!823617 (= res!1181539 (semiInverseModEq!2102 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (toValue!7095 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))))))

(assert (=> d!823617 (= (inv!45578 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) e!1798900)))

(declare-fun b!2839815 () Bool)

(assert (=> b!2839815 (= e!1798900 (equivClasses!2001 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (toValue!7095 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))))))

(assert (= (and d!823617 res!1181539) b!2839815))

(declare-fun m!3268501 () Bool)

(assert (=> d!823617 m!3268501))

(declare-fun m!3268503 () Bool)

(assert (=> b!2839815 m!3268503))

(assert (=> b!2839671 d!823617))

(declare-fun d!823619 () Bool)

(declare-fun res!1181540 () Bool)

(declare-fun e!1798901 () Bool)

(assert (=> d!823619 (=> (not res!1181540) (not e!1798901))))

(assert (=> d!823619 (= res!1181540 (not (isEmpty!18510 (originalCharacters!5785 (h!39026 tokens!612)))))))

(assert (=> d!823619 (= (inv!45577 (h!39026 tokens!612)) e!1798901)))

(declare-fun b!2839816 () Bool)

(declare-fun res!1181541 () Bool)

(assert (=> b!2839816 (=> (not res!1181541) (not e!1798901))))

(assert (=> b!2839816 (= res!1181541 (= (originalCharacters!5785 (h!39026 tokens!612)) (list!12531 (dynLambda!14135 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (value!162381 (h!39026 tokens!612))))))))

(declare-fun b!2839817 () Bool)

(assert (=> b!2839817 (= e!1798901 (= (size!26096 (h!39026 tokens!612)) (size!26098 (originalCharacters!5785 (h!39026 tokens!612)))))))

(assert (= (and d!823619 res!1181540) b!2839816))

(assert (= (and b!2839816 res!1181541) b!2839817))

(declare-fun b_lambda!85363 () Bool)

(assert (=> (not b_lambda!85363) (not b!2839816)))

(declare-fun t!232390 () Bool)

(declare-fun tb!154769 () Bool)

(assert (=> (and b!2839662 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612))))) t!232390) tb!154769))

(declare-fun b!2839818 () Bool)

(declare-fun e!1798902 () Bool)

(declare-fun tp!909483 () Bool)

(assert (=> b!2839818 (= e!1798902 (and (inv!45581 (c!458540 (dynLambda!14135 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (value!162381 (h!39026 tokens!612))))) tp!909483))))

(declare-fun result!193058 () Bool)

(assert (=> tb!154769 (= result!193058 (and (inv!45582 (dynLambda!14135 (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (value!162381 (h!39026 tokens!612)))) e!1798902))))

(assert (= tb!154769 b!2839818))

(declare-fun m!3268505 () Bool)

(assert (=> b!2839818 m!3268505))

(declare-fun m!3268507 () Bool)

(assert (=> tb!154769 m!3268507))

(assert (=> b!2839816 t!232390))

(declare-fun b_and!208263 () Bool)

(assert (= b_and!208257 (and (=> t!232390 result!193058) b_and!208263)))

(declare-fun t!232392 () Bool)

(declare-fun tb!154771 () Bool)

(assert (=> (and b!2839655 (= (toChars!6954 (transformation!5053 (h!39027 rules!4246))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612))))) t!232392) tb!154771))

(declare-fun result!193060 () Bool)

(assert (= result!193060 result!193058))

(assert (=> b!2839816 t!232392))

(declare-fun b_and!208265 () Bool)

(assert (= b_and!208259 (and (=> t!232392 result!193060) b_and!208265)))

(declare-fun t!232394 () Bool)

(declare-fun tb!154773 () Bool)

(assert (=> (and b!2839658 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612))))) t!232394) tb!154773))

(declare-fun result!193062 () Bool)

(assert (= result!193062 result!193058))

(assert (=> b!2839816 t!232394))

(declare-fun b_and!208267 () Bool)

(assert (= b_and!208261 (and (=> t!232394 result!193062) b_and!208267)))

(declare-fun m!3268509 () Bool)

(assert (=> d!823619 m!3268509))

(declare-fun m!3268511 () Bool)

(assert (=> b!2839816 m!3268511))

(assert (=> b!2839816 m!3268511))

(declare-fun m!3268513 () Bool)

(assert (=> b!2839816 m!3268513))

(declare-fun m!3268515 () Bool)

(assert (=> b!2839817 m!3268515))

(assert (=> b!2839660 d!823619))

(declare-fun d!823621 () Bool)

(declare-fun res!1181544 () Bool)

(declare-fun e!1798905 () Bool)

(assert (=> d!823621 (=> (not res!1181544) (not e!1798905))))

(declare-fun rulesValid!1872 (LexerInterface!4643 List!33731) Bool)

(assert (=> d!823621 (= res!1181544 (rulesValid!1872 thiss!27264 rules!4246))))

(assert (=> d!823621 (= (rulesInvariant!4059 thiss!27264 rules!4246) e!1798905)))

(declare-fun b!2839821 () Bool)

(declare-datatypes ((List!33736 0))(
  ( (Nil!33612) (Cons!33612 (h!39032 String!36938) (t!232407 List!33736)) )
))
(declare-fun noDuplicateTag!1868 (LexerInterface!4643 List!33731 List!33736) Bool)

(assert (=> b!2839821 (= e!1798905 (noDuplicateTag!1868 thiss!27264 rules!4246 Nil!33612))))

(assert (= (and d!823621 res!1181544) b!2839821))

(declare-fun m!3268517 () Bool)

(assert (=> d!823621 m!3268517))

(declare-fun m!3268519 () Bool)

(assert (=> b!2839821 m!3268519))

(assert (=> b!2839664 d!823621))

(declare-fun b!2839822 () Bool)

(declare-fun e!1798908 () Bool)

(assert (=> b!2839822 (= e!1798908 (inv!17 (value!162381 (h!39026 tokensBis!14))))))

(declare-fun b!2839823 () Bool)

(declare-fun e!1798906 () Bool)

(assert (=> b!2839823 (= e!1798906 e!1798908)))

(declare-fun c!458550 () Bool)

(assert (=> b!2839823 (= c!458550 (is-IntegerValue!15850 (value!162381 (h!39026 tokensBis!14))))))

(declare-fun d!823623 () Bool)

(declare-fun c!458551 () Bool)

(assert (=> d!823623 (= c!458551 (is-IntegerValue!15849 (value!162381 (h!39026 tokensBis!14))))))

(assert (=> d!823623 (= (inv!21 (value!162381 (h!39026 tokensBis!14))) e!1798906)))

(declare-fun b!2839824 () Bool)

(assert (=> b!2839824 (= e!1798906 (inv!16 (value!162381 (h!39026 tokensBis!14))))))

(declare-fun b!2839825 () Bool)

(declare-fun res!1181545 () Bool)

(declare-fun e!1798907 () Bool)

(assert (=> b!2839825 (=> res!1181545 e!1798907)))

(assert (=> b!2839825 (= res!1181545 (not (is-IntegerValue!15851 (value!162381 (h!39026 tokensBis!14)))))))

(assert (=> b!2839825 (= e!1798908 e!1798907)))

(declare-fun b!2839826 () Bool)

(assert (=> b!2839826 (= e!1798907 (inv!15 (value!162381 (h!39026 tokensBis!14))))))

(assert (= (and d!823623 c!458551) b!2839824))

(assert (= (and d!823623 (not c!458551)) b!2839823))

(assert (= (and b!2839823 c!458550) b!2839822))

(assert (= (and b!2839823 (not c!458550)) b!2839825))

(assert (= (and b!2839825 (not res!1181545)) b!2839826))

(declare-fun m!3268521 () Bool)

(assert (=> b!2839822 m!3268521))

(declare-fun m!3268523 () Bool)

(assert (=> b!2839824 m!3268523))

(declare-fun m!3268525 () Bool)

(assert (=> b!2839826 m!3268525))

(assert (=> b!2839663 d!823623))

(declare-fun b!2839840 () Bool)

(declare-fun b_free!82261 () Bool)

(declare-fun b_next!82965 () Bool)

(assert (=> b!2839840 (= b_free!82261 (not b_next!82965))))

(declare-fun tp!909498 () Bool)

(declare-fun b_and!208269 () Bool)

(assert (=> b!2839840 (= tp!909498 b_and!208269)))

(declare-fun b_free!82263 () Bool)

(declare-fun b_next!82967 () Bool)

(assert (=> b!2839840 (= b_free!82263 (not b_next!82967))))

(declare-fun t!232396 () Bool)

(declare-fun tb!154775 () Bool)

(assert (=> (and b!2839840 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokensBis!14))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))) t!232396) tb!154775))

(declare-fun result!193066 () Bool)

(assert (= result!193066 result!193050))

(assert (=> b!2839808 t!232396))

(declare-fun tb!154777 () Bool)

(declare-fun t!232398 () Bool)

(assert (=> (and b!2839840 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokensBis!14))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612))))) t!232398) tb!154777))

(declare-fun result!193068 () Bool)

(assert (= result!193068 result!193058))

(assert (=> b!2839816 t!232398))

(declare-fun b_and!208271 () Bool)

(declare-fun tp!909497 () Bool)

(assert (=> b!2839840 (= tp!909497 (and (=> t!232396 result!193066) (=> t!232398 result!193068) b_and!208271))))

(declare-fun b!2839837 () Bool)

(declare-fun e!1798922 () Bool)

(declare-fun tp!909496 () Bool)

(declare-fun e!1798925 () Bool)

(assert (=> b!2839837 (= e!1798922 (and (inv!45577 (h!39026 (t!232367 tokensBis!14))) e!1798925 tp!909496))))

(declare-fun e!1798921 () Bool)

(assert (=> b!2839840 (= e!1798921 (and tp!909498 tp!909497))))

(declare-fun b!2839838 () Bool)

(declare-fun e!1798926 () Bool)

(declare-fun tp!909495 () Bool)

(assert (=> b!2839838 (= e!1798925 (and (inv!21 (value!162381 (h!39026 (t!232367 tokensBis!14)))) e!1798926 tp!909495))))

(assert (=> b!2839672 (= tp!909423 e!1798922)))

(declare-fun tp!909494 () Bool)

(declare-fun b!2839839 () Bool)

(assert (=> b!2839839 (= e!1798926 (and tp!909494 (inv!45574 (tag!5557 (rule!7481 (h!39026 (t!232367 tokensBis!14))))) (inv!45578 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokensBis!14))))) e!1798921))))

(assert (= b!2839839 b!2839840))

(assert (= b!2839838 b!2839839))

(assert (= b!2839837 b!2839838))

(assert (= (and b!2839672 (is-Cons!33606 (t!232367 tokensBis!14))) b!2839837))

(declare-fun m!3268527 () Bool)

(assert (=> b!2839837 m!3268527))

(declare-fun m!3268529 () Bool)

(assert (=> b!2839838 m!3268529))

(declare-fun m!3268531 () Bool)

(assert (=> b!2839839 m!3268531))

(declare-fun m!3268533 () Bool)

(assert (=> b!2839839 m!3268533))

(declare-fun e!1798929 () Bool)

(assert (=> b!2839671 (= tp!909430 e!1798929)))

(declare-fun b!2839853 () Bool)

(declare-fun tp!909512 () Bool)

(assert (=> b!2839853 (= e!1798929 tp!909512)))

(declare-fun b!2839854 () Bool)

(declare-fun tp!909510 () Bool)

(declare-fun tp!909509 () Bool)

(assert (=> b!2839854 (= e!1798929 (and tp!909510 tp!909509))))

(declare-fun b!2839852 () Bool)

(declare-fun tp!909513 () Bool)

(declare-fun tp!909511 () Bool)

(assert (=> b!2839852 (= e!1798929 (and tp!909513 tp!909511))))

(declare-fun b!2839851 () Bool)

(declare-fun tp_is_empty!14617 () Bool)

(assert (=> b!2839851 (= e!1798929 tp_is_empty!14617)))

(assert (= (and b!2839671 (is-ElementMatch!8444 (regex!5053 (rule!7481 (h!39026 tokensBis!14))))) b!2839851))

(assert (= (and b!2839671 (is-Concat!13727 (regex!5053 (rule!7481 (h!39026 tokensBis!14))))) b!2839852))

(assert (= (and b!2839671 (is-Star!8444 (regex!5053 (rule!7481 (h!39026 tokensBis!14))))) b!2839853))

(assert (= (and b!2839671 (is-Union!8444 (regex!5053 (rule!7481 (h!39026 tokensBis!14))))) b!2839854))

(declare-fun e!1798930 () Bool)

(assert (=> b!2839665 (= tp!909428 e!1798930)))

(declare-fun b!2839857 () Bool)

(declare-fun tp!909517 () Bool)

(assert (=> b!2839857 (= e!1798930 tp!909517)))

(declare-fun b!2839858 () Bool)

(declare-fun tp!909515 () Bool)

(declare-fun tp!909514 () Bool)

(assert (=> b!2839858 (= e!1798930 (and tp!909515 tp!909514))))

(declare-fun b!2839856 () Bool)

(declare-fun tp!909518 () Bool)

(declare-fun tp!909516 () Bool)

(assert (=> b!2839856 (= e!1798930 (and tp!909518 tp!909516))))

(declare-fun b!2839855 () Bool)

(assert (=> b!2839855 (= e!1798930 tp_is_empty!14617)))

(assert (= (and b!2839665 (is-ElementMatch!8444 (regex!5053 (rule!7481 (h!39026 tokens!612))))) b!2839855))

(assert (= (and b!2839665 (is-Concat!13727 (regex!5053 (rule!7481 (h!39026 tokens!612))))) b!2839856))

(assert (= (and b!2839665 (is-Star!8444 (regex!5053 (rule!7481 (h!39026 tokens!612))))) b!2839857))

(assert (= (and b!2839665 (is-Union!8444 (regex!5053 (rule!7481 (h!39026 tokens!612))))) b!2839858))

(declare-fun b!2839862 () Bool)

(declare-fun b_free!82265 () Bool)

(declare-fun b_next!82969 () Bool)

(assert (=> b!2839862 (= b_free!82265 (not b_next!82969))))

(declare-fun tp!909523 () Bool)

(declare-fun b_and!208273 () Bool)

(assert (=> b!2839862 (= tp!909523 b_and!208273)))

(declare-fun b_free!82267 () Bool)

(declare-fun b_next!82971 () Bool)

(assert (=> b!2839862 (= b_free!82267 (not b_next!82971))))

(declare-fun tb!154779 () Bool)

(declare-fun t!232400 () Bool)

(assert (=> (and b!2839862 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokens!612))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))) t!232400) tb!154779))

(declare-fun result!193072 () Bool)

(assert (= result!193072 result!193050))

(assert (=> b!2839808 t!232400))

(declare-fun t!232402 () Bool)

(declare-fun tb!154781 () Bool)

(assert (=> (and b!2839862 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokens!612))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612))))) t!232402) tb!154781))

(declare-fun result!193074 () Bool)

(assert (= result!193074 result!193058))

(assert (=> b!2839816 t!232402))

(declare-fun tp!909522 () Bool)

(declare-fun b_and!208275 () Bool)

(assert (=> b!2839862 (= tp!909522 (and (=> t!232400 result!193072) (=> t!232402 result!193074) b_and!208275))))

(declare-fun tp!909521 () Bool)

(declare-fun b!2839859 () Bool)

(declare-fun e!1798932 () Bool)

(declare-fun e!1798935 () Bool)

(assert (=> b!2839859 (= e!1798932 (and (inv!45577 (h!39026 (t!232367 tokens!612))) e!1798935 tp!909521))))

(declare-fun e!1798931 () Bool)

(assert (=> b!2839862 (= e!1798931 (and tp!909523 tp!909522))))

(declare-fun tp!909520 () Bool)

(declare-fun e!1798936 () Bool)

(declare-fun b!2839860 () Bool)

(assert (=> b!2839860 (= e!1798935 (and (inv!21 (value!162381 (h!39026 (t!232367 tokens!612)))) e!1798936 tp!909520))))

(assert (=> b!2839660 (= tp!909424 e!1798932)))

(declare-fun tp!909519 () Bool)

(declare-fun b!2839861 () Bool)

(assert (=> b!2839861 (= e!1798936 (and tp!909519 (inv!45574 (tag!5557 (rule!7481 (h!39026 (t!232367 tokens!612))))) (inv!45578 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokens!612))))) e!1798931))))

(assert (= b!2839861 b!2839862))

(assert (= b!2839860 b!2839861))

(assert (= b!2839859 b!2839860))

(assert (= (and b!2839660 (is-Cons!33606 (t!232367 tokens!612))) b!2839859))

(declare-fun m!3268535 () Bool)

(assert (=> b!2839859 m!3268535))

(declare-fun m!3268537 () Bool)

(assert (=> b!2839860 m!3268537))

(declare-fun m!3268539 () Bool)

(assert (=> b!2839861 m!3268539))

(declare-fun m!3268541 () Bool)

(assert (=> b!2839861 m!3268541))

(declare-fun b!2839873 () Bool)

(declare-fun b_free!82269 () Bool)

(declare-fun b_next!82973 () Bool)

(assert (=> b!2839873 (= b_free!82269 (not b_next!82973))))

(declare-fun tp!909534 () Bool)

(declare-fun b_and!208277 () Bool)

(assert (=> b!2839873 (= tp!909534 b_and!208277)))

(declare-fun b_free!82271 () Bool)

(declare-fun b_next!82975 () Bool)

(assert (=> b!2839873 (= b_free!82271 (not b_next!82975))))

(declare-fun t!232404 () Bool)

(declare-fun tb!154783 () Bool)

(assert (=> (and b!2839873 (= (toChars!6954 (transformation!5053 (h!39027 (t!232368 rules!4246)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14))))) t!232404) tb!154783))

(declare-fun result!193078 () Bool)

(assert (= result!193078 result!193050))

(assert (=> b!2839808 t!232404))

(declare-fun t!232406 () Bool)

(declare-fun tb!154785 () Bool)

(assert (=> (and b!2839873 (= (toChars!6954 (transformation!5053 (h!39027 (t!232368 rules!4246)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612))))) t!232406) tb!154785))

(declare-fun result!193080 () Bool)

(assert (= result!193080 result!193058))

(assert (=> b!2839816 t!232406))

(declare-fun b_and!208279 () Bool)

(declare-fun tp!909532 () Bool)

(assert (=> b!2839873 (= tp!909532 (and (=> t!232404 result!193078) (=> t!232406 result!193080) b_and!208279))))

(declare-fun e!1798945 () Bool)

(assert (=> b!2839873 (= e!1798945 (and tp!909534 tp!909532))))

(declare-fun b!2839872 () Bool)

(declare-fun e!1798948 () Bool)

(declare-fun tp!909535 () Bool)

(assert (=> b!2839872 (= e!1798948 (and tp!909535 (inv!45574 (tag!5557 (h!39027 (t!232368 rules!4246)))) (inv!45578 (transformation!5053 (h!39027 (t!232368 rules!4246)))) e!1798945))))

(declare-fun b!2839871 () Bool)

(declare-fun e!1798947 () Bool)

(declare-fun tp!909533 () Bool)

(assert (=> b!2839871 (= e!1798947 (and e!1798948 tp!909533))))

(assert (=> b!2839659 (= tp!909431 e!1798947)))

(assert (= b!2839872 b!2839873))

(assert (= b!2839871 b!2839872))

(assert (= (and b!2839659 (is-Cons!33607 (t!232368 rules!4246))) b!2839871))

(declare-fun m!3268543 () Bool)

(assert (=> b!2839872 m!3268543))

(declare-fun m!3268545 () Bool)

(assert (=> b!2839872 m!3268545))

(declare-fun b!2839878 () Bool)

(declare-fun e!1798951 () Bool)

(declare-fun tp!909538 () Bool)

(assert (=> b!2839878 (= e!1798951 (and tp_is_empty!14617 tp!909538))))

(assert (=> b!2839663 (= tp!909425 e!1798951)))

(assert (= (and b!2839663 (is-Cons!33604 (originalCharacters!5785 (h!39026 tokensBis!14)))) b!2839878))

(declare-fun e!1798952 () Bool)

(assert (=> b!2839668 (= tp!909434 e!1798952)))

(declare-fun b!2839881 () Bool)

(declare-fun tp!909542 () Bool)

(assert (=> b!2839881 (= e!1798952 tp!909542)))

(declare-fun b!2839882 () Bool)

(declare-fun tp!909540 () Bool)

(declare-fun tp!909539 () Bool)

(assert (=> b!2839882 (= e!1798952 (and tp!909540 tp!909539))))

(declare-fun b!2839880 () Bool)

(declare-fun tp!909543 () Bool)

(declare-fun tp!909541 () Bool)

(assert (=> b!2839880 (= e!1798952 (and tp!909543 tp!909541))))

(declare-fun b!2839879 () Bool)

(assert (=> b!2839879 (= e!1798952 tp_is_empty!14617)))

(assert (= (and b!2839668 (is-ElementMatch!8444 (regex!5053 (h!39027 rules!4246)))) b!2839879))

(assert (= (and b!2839668 (is-Concat!13727 (regex!5053 (h!39027 rules!4246)))) b!2839880))

(assert (= (and b!2839668 (is-Star!8444 (regex!5053 (h!39027 rules!4246)))) b!2839881))

(assert (= (and b!2839668 (is-Union!8444 (regex!5053 (h!39027 rules!4246)))) b!2839882))

(declare-fun b!2839883 () Bool)

(declare-fun e!1798953 () Bool)

(declare-fun tp!909544 () Bool)

(assert (=> b!2839883 (= e!1798953 (and tp_is_empty!14617 tp!909544))))

(assert (=> b!2839667 (= tp!909427 e!1798953)))

(assert (= (and b!2839667 (is-Cons!33604 (originalCharacters!5785 (h!39026 tokens!612)))) b!2839883))

(declare-fun b_lambda!85365 () Bool)

(assert (= b_lambda!85363 (or (and b!2839862 b_free!82267 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokens!612))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))))) (and b!2839655 b_free!82243 (= (toChars!6954 (transformation!5053 (h!39027 rules!4246))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))))) (and b!2839840 b_free!82263 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokensBis!14))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))))) (and b!2839658 b_free!82247) (and b!2839873 b_free!82271 (= (toChars!6954 (transformation!5053 (h!39027 (t!232368 rules!4246)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))))) (and b!2839662 b_free!82239 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))))) b_lambda!85365)))

(declare-fun b_lambda!85367 () Bool)

(assert (= b_lambda!85361 (or (and b!2839658 b_free!82247 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokens!612)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))))) (and b!2839840 b_free!82263 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokensBis!14))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))))) (and b!2839662 b_free!82239) (and b!2839655 b_free!82243 (= (toChars!6954 (transformation!5053 (h!39027 rules!4246))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))))) (and b!2839873 b_free!82271 (= (toChars!6954 (transformation!5053 (h!39027 (t!232368 rules!4246)))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))))) (and b!2839862 b_free!82267 (= (toChars!6954 (transformation!5053 (rule!7481 (h!39026 (t!232367 tokens!612))))) (toChars!6954 (transformation!5053 (rule!7481 (h!39026 tokensBis!14)))))) b_lambda!85367)))

(push 1)

(assert (not tb!154769))

(assert (not b!2839756))

(assert (not b!2839783))

(assert (not b_next!82947))

(assert (not b!2839857))

(assert (not b!2839748))

(assert (not b!2839861))

(assert (not b_next!82965))

(assert (not b!2839854))

(assert (not b!2839803))

(assert tp_is_empty!14617)

(assert (not d!823619))

(assert (not b!2839871))

(assert (not b!2839824))

(assert b_and!208271)

(assert (not b_next!82941))

(assert b_and!208273)

(assert (not b!2839775))

(assert (not b!2839858))

(assert (not b!2839822))

(assert (not b!2839816))

(assert (not b_next!82973))

(assert b_and!208267)

(assert (not d!823607))

(assert (not b!2839797))

(assert (not b!2839852))

(assert (not b!2839838))

(assert (not b!2839817))

(assert b_and!208277)

(assert (not b!2839765))

(assert (not b_next!82951))

(assert (not d!823621))

(assert (not b!2839809))

(assert (not b_next!82943))

(assert (not b!2839784))

(assert (not b!2839859))

(assert b_and!208235)

(assert b_and!208263)

(assert b_and!208279)

(assert (not b!2839853))

(assert (not b!2839814))

(assert (not b!2839821))

(assert (not b!2839766))

(assert (not d!823597))

(assert b_and!208265)

(assert b_and!208227)

(assert (not d!823617))

(assert (not b!2839839))

(assert (not b!2839881))

(assert (not b_lambda!85365))

(assert (not b!2839826))

(assert (not b!2839818))

(assert (not b!2839799))

(assert (not b!2839747))

(assert (not b_next!82971))

(assert (not b!2839880))

(assert (not b!2839883))

(assert (not b_next!82967))

(assert (not b!2839795))

(assert (not b!2839802))

(assert (not d!823599))

(assert b_and!208231)

(assert b_and!208269)

(assert (not b!2839878))

(assert (not b!2839815))

(assert (not b!2839782))

(assert (not b!2839860))

(assert (not b!2839808))

(assert (not tb!154763))

(assert (not b_lambda!85367))

(assert (not d!823613))

(assert (not b!2839837))

(assert (not b_next!82969))

(assert b_and!208275)

(assert (not b_next!82945))

(assert (not b!2839882))

(assert (not b_next!82949))

(assert (not b_next!82975))

(assert (not b!2839872))

(assert (not b!2839856))

(check-sat)

(pop 1)

(push 1)

(assert b_and!208273)

(assert b_and!208277)

(assert (not b_next!82951))

(assert (not b_next!82947))

(assert (not b_next!82971))

(assert (not b_next!82967))

(assert b_and!208231)

(assert b_and!208269)

(assert (not b_next!82965))

(assert b_and!208271)

(assert (not b_next!82941))

(assert (not b_next!82973))

(assert b_and!208267)

(assert (not b_next!82943))

(assert b_and!208235)

(assert b_and!208263)

(assert b_and!208279)

(assert b_and!208265)

(assert b_and!208227)

(assert (not b_next!82969))

(assert b_and!208275)

(assert (not b_next!82945))

(assert (not b_next!82949))

(assert (not b_next!82975))

(check-sat)

(pop 1)

