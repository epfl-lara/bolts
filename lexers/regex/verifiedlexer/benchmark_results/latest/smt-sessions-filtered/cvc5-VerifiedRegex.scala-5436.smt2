; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!276246 () Bool)

(assert start!276246)

(declare-fun b!2840471 () Bool)

(declare-fun b_free!82333 () Bool)

(declare-fun b_next!83037 () Bool)

(assert (=> b!2840471 (= b_free!82333 (not b_next!83037))))

(declare-fun tp!909852 () Bool)

(declare-fun b_and!208371 () Bool)

(assert (=> b!2840471 (= tp!909852 b_and!208371)))

(declare-fun b_free!82335 () Bool)

(declare-fun b_next!83039 () Bool)

(assert (=> b!2840471 (= b_free!82335 (not b_next!83039))))

(declare-fun tp!909854 () Bool)

(declare-fun b_and!208373 () Bool)

(assert (=> b!2840471 (= tp!909854 b_and!208373)))

(declare-fun b!2840459 () Bool)

(declare-fun b_free!82337 () Bool)

(declare-fun b_next!83041 () Bool)

(assert (=> b!2840459 (= b_free!82337 (not b_next!83041))))

(declare-fun tp!909858 () Bool)

(declare-fun b_and!208375 () Bool)

(assert (=> b!2840459 (= tp!909858 b_and!208375)))

(declare-fun b_free!82339 () Bool)

(declare-fun b_next!83043 () Bool)

(assert (=> b!2840459 (= b_free!82339 (not b_next!83043))))

(declare-fun tp!909853 () Bool)

(declare-fun b_and!208377 () Bool)

(assert (=> b!2840459 (= tp!909853 b_and!208377)))

(declare-fun b!2840475 () Bool)

(declare-fun b_free!82341 () Bool)

(declare-fun b_next!83045 () Bool)

(assert (=> b!2840475 (= b_free!82341 (not b_next!83045))))

(declare-fun tp!909851 () Bool)

(declare-fun b_and!208379 () Bool)

(assert (=> b!2840475 (= tp!909851 b_and!208379)))

(declare-fun b_free!82343 () Bool)

(declare-fun b_next!83047 () Bool)

(assert (=> b!2840475 (= b_free!82343 (not b_next!83047))))

(declare-fun tp!909856 () Bool)

(declare-fun b_and!208381 () Bool)

(assert (=> b!2840475 (= tp!909856 b_and!208381)))

(declare-fun b!2840456 () Bool)

(declare-fun e!1799436 () Bool)

(declare-datatypes ((String!36958 0))(
  ( (String!36959 (value!162469 String)) )
))
(declare-datatypes ((C!17078 0))(
  ( (C!17079 (val!10551 Int)) )
))
(declare-datatypes ((List!33747 0))(
  ( (Nil!33623) (Cons!33623 (h!39043 C!17078) (t!232488 List!33747)) )
))
(declare-datatypes ((IArray!20879 0))(
  ( (IArray!20880 (innerList!10497 List!33747)) )
))
(declare-datatypes ((Conc!10437 0))(
  ( (Node!10437 (left!25345 Conc!10437) (right!25675 Conc!10437) (csize!21104 Int) (cheight!10648 Int)) (Leaf!15874 (xs!13549 IArray!20879) (csize!21105 Int)) (Empty!10437) )
))
(declare-datatypes ((BalanceConc!20512 0))(
  ( (BalanceConc!20513 (c!458580 Conc!10437)) )
))
(declare-datatypes ((List!33748 0))(
  ( (Nil!33624) (Cons!33624 (h!39044 (_ BitVec 16)) (t!232489 List!33748)) )
))
(declare-datatypes ((Regex!8448 0))(
  ( (ElementMatch!8448 (c!458581 C!17078)) (Concat!13735 (regOne!17408 Regex!8448) (regTwo!17408 Regex!8448)) (EmptyExpr!8448) (Star!8448 (reg!8777 Regex!8448)) (EmptyLang!8448) (Union!8448 (regOne!17409 Regex!8448) (regTwo!17409 Regex!8448)) )
))
(declare-datatypes ((TokenValue!5287 0))(
  ( (FloatLiteralValue!10574 (text!37454 List!33748)) (TokenValueExt!5286 (__x!22312 Int)) (Broken!26435 (value!162470 List!33748)) (Object!5410) (End!5287) (Def!5287) (Underscore!5287) (Match!5287) (Else!5287) (Error!5287) (Case!5287) (If!5287) (Extends!5287) (Abstract!5287) (Class!5287) (Val!5287) (DelimiterValue!10574 (del!5347 List!33748)) (KeywordValue!5293 (value!162471 List!33748)) (CommentValue!10574 (value!162472 List!33748)) (WhitespaceValue!10574 (value!162473 List!33748)) (IndentationValue!5287 (value!162474 List!33748)) (String!36960) (Int32!5287) (Broken!26436 (value!162475 List!33748)) (Boolean!5288) (Unit!47471) (OperatorValue!5290 (op!5347 List!33748)) (IdentifierValue!10574 (value!162476 List!33748)) (IdentifierValue!10575 (value!162477 List!33748)) (WhitespaceValue!10575 (value!162478 List!33748)) (True!10574) (False!10574) (Broken!26437 (value!162479 List!33748)) (Broken!26438 (value!162480 List!33748)) (True!10575) (RightBrace!5287) (RightBracket!5287) (Colon!5287) (Null!5287) (Comma!5287) (LeftBracket!5287) (False!10575) (LeftBrace!5287) (ImaginaryLiteralValue!5287 (text!37455 List!33748)) (StringLiteralValue!15861 (value!162481 List!33748)) (EOFValue!5287 (value!162482 List!33748)) (IdentValue!5287 (value!162483 List!33748)) (DelimiterValue!10575 (value!162484 List!33748)) (DedentValue!5287 (value!162485 List!33748)) (NewLineValue!5287 (value!162486 List!33748)) (IntegerValue!15861 (value!162487 (_ BitVec 32)) (text!37456 List!33748)) (IntegerValue!15862 (value!162488 Int) (text!37457 List!33748)) (Times!5287) (Or!5287) (Equal!5287) (Minus!5287) (Broken!26439 (value!162489 List!33748)) (And!5287) (Div!5287) (LessEqual!5287) (Mod!5287) (Concat!13736) (Not!5287) (Plus!5287) (SpaceValue!5287 (value!162490 List!33748)) (IntegerValue!15863 (value!162491 Int) (text!37458 List!33748)) (StringLiteralValue!15862 (text!37459 List!33748)) (FloatLiteralValue!10575 (text!37460 List!33748)) (BytesLiteralValue!5287 (value!162492 List!33748)) (CommentValue!10575 (value!162493 List!33748)) (StringLiteralValue!15863 (value!162494 List!33748)) (ErrorTokenValue!5287 (msg!5348 List!33748)) )
))
(declare-datatypes ((TokenValueInjection!10002 0))(
  ( (TokenValueInjection!10003 (toValue!7099 Int) (toChars!6958 Int)) )
))
(declare-datatypes ((Rule!9914 0))(
  ( (Rule!9915 (regex!5057 Regex!8448) (tag!5561 String!36958) (isSeparator!5057 Bool) (transformation!5057 TokenValueInjection!10002)) )
))
(declare-datatypes ((Token!9516 0))(
  ( (Token!9517 (value!162495 TokenValue!5287) (rule!7485 Rule!9914) (size!26104 Int) (originalCharacters!5789 List!33747)) )
))
(declare-datatypes ((List!33749 0))(
  ( (Nil!33625) (Cons!33625 (h!39045 Token!9516) (t!232490 List!33749)) )
))
(declare-fun tokens!612 () List!33749)

(declare-fun ListPrimitiveSize!228 (List!33749) Int)

(assert (=> b!2840456 (= e!1799436 (>= (ListPrimitiveSize!228 (t!232490 tokens!612)) (ListPrimitiveSize!228 tokens!612)))))

(declare-fun e!1799439 () Bool)

(declare-fun tokensBis!14 () List!33749)

(declare-fun tp!909861 () Bool)

(declare-fun e!1799438 () Bool)

(declare-fun b!2840457 () Bool)

(declare-fun inv!45599 (Token!9516) Bool)

(assert (=> b!2840457 (= e!1799439 (and (inv!45599 (h!39045 tokensBis!14)) e!1799438 tp!909861))))

(declare-fun b!2840458 () Bool)

(declare-fun res!1181760 () Bool)

(assert (=> b!2840458 (=> (not res!1181760) (not e!1799436))))

(declare-datatypes ((List!33750 0))(
  ( (Nil!33626) (Cons!33626 (h!39046 Rule!9914) (t!232491 List!33750)) )
))
(declare-fun rules!4246 () List!33750)

(declare-fun isEmpty!18516 (List!33750) Bool)

(assert (=> b!2840458 (= res!1181760 (not (isEmpty!18516 rules!4246)))))

(declare-fun e!1799424 () Bool)

(assert (=> b!2840459 (= e!1799424 (and tp!909858 tp!909853))))

(declare-fun tp!909855 () Bool)

(declare-fun b!2840460 () Bool)

(declare-fun e!1799423 () Bool)

(declare-fun inv!45596 (String!36958) Bool)

(declare-fun inv!45600 (TokenValueInjection!10002) Bool)

(assert (=> b!2840460 (= e!1799423 (and tp!909855 (inv!45596 (tag!5561 (rule!7485 (h!39045 tokens!612)))) (inv!45600 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) e!1799424))))

(declare-fun b!2840461 () Bool)

(declare-fun res!1181766 () Bool)

(assert (=> b!2840461 (=> (not res!1181766) (not e!1799436))))

(assert (=> b!2840461 (= res!1181766 (and (not (is-Nil!33625 tokensBis!14)) (is-Cons!33625 tokens!612)))))

(declare-fun b!2840462 () Bool)

(declare-fun res!1181769 () Bool)

(assert (=> b!2840462 (=> (not res!1181769) (not e!1799436))))

(declare-fun subseq!523 (List!33749 List!33749) Bool)

(assert (=> b!2840462 (= res!1181769 (subseq!523 tokensBis!14 tokens!612))))

(declare-fun b!2840463 () Bool)

(declare-fun e!1799430 () Bool)

(declare-fun e!1799432 () Bool)

(declare-fun tp!909859 () Bool)

(assert (=> b!2840463 (= e!1799430 (and tp!909859 (inv!45596 (tag!5561 (rule!7485 (h!39045 tokensBis!14)))) (inv!45600 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) e!1799432))))

(declare-fun b!2840464 () Bool)

(declare-fun res!1181763 () Bool)

(assert (=> b!2840464 (=> (not res!1181763) (not e!1799436))))

(assert (=> b!2840464 (= res!1181763 (subseq!523 tokensBis!14 (t!232490 tokens!612)))))

(declare-fun b!2840465 () Bool)

(declare-fun tp!909862 () Bool)

(declare-fun inv!21 (TokenValue!5287) Bool)

(assert (=> b!2840465 (= e!1799438 (and (inv!21 (value!162495 (h!39045 tokensBis!14))) e!1799430 tp!909862))))

(declare-fun b!2840466 () Bool)

(declare-fun e!1799431 () Bool)

(declare-fun e!1799433 () Bool)

(declare-fun tp!909849 () Bool)

(assert (=> b!2840466 (= e!1799431 (and e!1799433 tp!909849))))

(declare-fun b!2840467 () Bool)

(declare-fun e!1799425 () Bool)

(assert (=> b!2840467 (= e!1799425 (not (subseq!523 (t!232490 tokensBis!14) (t!232490 tokens!612))))))

(declare-fun e!1799427 () Bool)

(declare-fun e!1799429 () Bool)

(declare-fun tp!909860 () Bool)

(declare-fun b!2840455 () Bool)

(assert (=> b!2840455 (= e!1799429 (and (inv!45599 (h!39045 tokens!612)) e!1799427 tp!909860))))

(declare-fun res!1181768 () Bool)

(assert (=> start!276246 (=> (not res!1181768) (not e!1799436))))

(declare-datatypes ((LexerInterface!4647 0))(
  ( (LexerInterfaceExt!4644 (__x!22313 Int)) (Lexer!4645) )
))
(declare-fun thiss!27264 () LexerInterface!4647)

(assert (=> start!276246 (= res!1181768 (is-Lexer!4645 thiss!27264))))

(assert (=> start!276246 e!1799436))

(assert (=> start!276246 true))

(assert (=> start!276246 e!1799431))

(assert (=> start!276246 e!1799439))

(assert (=> start!276246 e!1799429))

(declare-fun b!2840468 () Bool)

(declare-fun res!1181761 () Bool)

(assert (=> b!2840468 (=> (not res!1181761) (not e!1799436))))

(declare-fun rulesProduceEachTokenIndividuallyList!1688 (LexerInterface!4647 List!33750 List!33749) Bool)

(assert (=> b!2840468 (= res!1181761 (rulesProduceEachTokenIndividuallyList!1688 thiss!27264 rules!4246 tokens!612))))

(declare-fun b!2840469 () Bool)

(declare-fun tp!909857 () Bool)

(assert (=> b!2840469 (= e!1799427 (and (inv!21 (value!162495 (h!39045 tokens!612))) e!1799423 tp!909857))))

(declare-fun b!2840470 () Bool)

(declare-fun res!1181764 () Bool)

(assert (=> b!2840470 (=> (not res!1181764) (not e!1799436))))

(declare-fun rulesInvariant!4063 (LexerInterface!4647 List!33750) Bool)

(assert (=> b!2840470 (= res!1181764 (rulesInvariant!4063 thiss!27264 rules!4246))))

(assert (=> b!2840471 (= e!1799432 (and tp!909852 tp!909854))))

(declare-fun b!2840472 () Bool)

(declare-fun res!1181762 () Bool)

(assert (=> b!2840472 (=> (not res!1181762) (not e!1799436))))

(assert (=> b!2840472 (= res!1181762 e!1799425)))

(declare-fun res!1181765 () Bool)

(assert (=> b!2840472 (=> res!1181765 e!1799425)))

(assert (=> b!2840472 (= res!1181765 (not (= (h!39045 tokensBis!14) (h!39045 tokens!612))))))

(declare-fun b!2840473 () Bool)

(declare-fun res!1181767 () Bool)

(assert (=> b!2840473 (=> (not res!1181767) (not e!1799436))))

(assert (=> b!2840473 (= res!1181767 (rulesProduceEachTokenIndividuallyList!1688 thiss!27264 rules!4246 (t!232490 tokens!612)))))

(declare-fun e!1799437 () Bool)

(declare-fun tp!909850 () Bool)

(declare-fun b!2840474 () Bool)

(assert (=> b!2840474 (= e!1799433 (and tp!909850 (inv!45596 (tag!5561 (h!39046 rules!4246))) (inv!45600 (transformation!5057 (h!39046 rules!4246))) e!1799437))))

(assert (=> b!2840475 (= e!1799437 (and tp!909851 tp!909856))))

(assert (= (and start!276246 res!1181768) b!2840458))

(assert (= (and b!2840458 res!1181760) b!2840470))

(assert (= (and b!2840470 res!1181764) b!2840462))

(assert (= (and b!2840462 res!1181769) b!2840468))

(assert (= (and b!2840468 res!1181761) b!2840461))

(assert (= (and b!2840461 res!1181766) b!2840472))

(assert (= (and b!2840472 (not res!1181765)) b!2840467))

(assert (= (and b!2840472 res!1181762) b!2840464))

(assert (= (and b!2840464 res!1181763) b!2840473))

(assert (= (and b!2840473 res!1181767) b!2840456))

(assert (= b!2840474 b!2840475))

(assert (= b!2840466 b!2840474))

(assert (= (and start!276246 (is-Cons!33626 rules!4246)) b!2840466))

(assert (= b!2840463 b!2840471))

(assert (= b!2840465 b!2840463))

(assert (= b!2840457 b!2840465))

(assert (= (and start!276246 (is-Cons!33625 tokensBis!14)) b!2840457))

(assert (= b!2840460 b!2840459))

(assert (= b!2840469 b!2840460))

(assert (= b!2840455 b!2840469))

(assert (= (and start!276246 (is-Cons!33625 tokens!612)) b!2840455))

(declare-fun m!3268863 () Bool)

(assert (=> b!2840473 m!3268863))

(declare-fun m!3268865 () Bool)

(assert (=> b!2840455 m!3268865))

(declare-fun m!3268867 () Bool)

(assert (=> b!2840457 m!3268867))

(declare-fun m!3268869 () Bool)

(assert (=> b!2840465 m!3268869))

(declare-fun m!3268871 () Bool)

(assert (=> b!2840460 m!3268871))

(declare-fun m!3268873 () Bool)

(assert (=> b!2840460 m!3268873))

(declare-fun m!3268875 () Bool)

(assert (=> b!2840458 m!3268875))

(declare-fun m!3268877 () Bool)

(assert (=> b!2840456 m!3268877))

(declare-fun m!3268879 () Bool)

(assert (=> b!2840456 m!3268879))

(declare-fun m!3268881 () Bool)

(assert (=> b!2840469 m!3268881))

(declare-fun m!3268883 () Bool)

(assert (=> b!2840468 m!3268883))

(declare-fun m!3268885 () Bool)

(assert (=> b!2840470 m!3268885))

(declare-fun m!3268887 () Bool)

(assert (=> b!2840467 m!3268887))

(declare-fun m!3268889 () Bool)

(assert (=> b!2840462 m!3268889))

(declare-fun m!3268891 () Bool)

(assert (=> b!2840464 m!3268891))

(declare-fun m!3268893 () Bool)

(assert (=> b!2840474 m!3268893))

(declare-fun m!3268895 () Bool)

(assert (=> b!2840474 m!3268895))

(declare-fun m!3268897 () Bool)

(assert (=> b!2840463 m!3268897))

(declare-fun m!3268899 () Bool)

(assert (=> b!2840463 m!3268899))

(push 1)

(assert b_and!208375)

(assert b_and!208381)

(assert (not b!2840468))

(assert (not b!2840467))

(assert (not b!2840465))

(assert (not b!2840466))

(assert (not b_next!83039))

(assert (not b!2840469))

(assert b_and!208379)

(assert (not b_next!83045))

(assert (not b!2840456))

(assert (not b_next!83041))

(assert (not b!2840462))

(assert (not b!2840460))

(assert (not b_next!83037))

(assert (not b_next!83047))

(assert (not b!2840458))

(assert (not b!2840470))

(assert (not b!2840463))

(assert b_and!208377)

(assert (not b!2840457))

(assert (not b_next!83043))

(assert b_and!208373)

(assert b_and!208371)

(assert (not b!2840473))

(assert (not b!2840455))

(assert (not b!2840474))

(assert (not b!2840464))

(check-sat)

(pop 1)

(push 1)

(assert b_and!208379)

(assert b_and!208375)

(assert b_and!208381)

(assert b_and!208377)

(assert (not b_next!83039))

(assert b_and!208371)

(assert (not b_next!83045))

(assert (not b_next!83041))

(assert (not b_next!83037))

(assert (not b_next!83047))

(assert (not b_next!83043))

(assert b_and!208373)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2840553 () Bool)

(declare-fun e!1799502 () Bool)

(declare-fun e!1799503 () Bool)

(assert (=> b!2840553 (= e!1799502 e!1799503)))

(declare-fun c!458591 () Bool)

(assert (=> b!2840553 (= c!458591 (is-IntegerValue!15862 (value!162495 (h!39045 tokensBis!14))))))

(declare-fun b!2840554 () Bool)

(declare-fun inv!17 (TokenValue!5287) Bool)

(assert (=> b!2840554 (= e!1799503 (inv!17 (value!162495 (h!39045 tokensBis!14))))))

(declare-fun b!2840555 () Bool)

(declare-fun inv!16 (TokenValue!5287) Bool)

(assert (=> b!2840555 (= e!1799502 (inv!16 (value!162495 (h!39045 tokensBis!14))))))

(declare-fun d!823723 () Bool)

(declare-fun c!458590 () Bool)

(assert (=> d!823723 (= c!458590 (is-IntegerValue!15861 (value!162495 (h!39045 tokensBis!14))))))

(assert (=> d!823723 (= (inv!21 (value!162495 (h!39045 tokensBis!14))) e!1799502)))

(declare-fun b!2840556 () Bool)

(declare-fun e!1799504 () Bool)

(declare-fun inv!15 (TokenValue!5287) Bool)

(assert (=> b!2840556 (= e!1799504 (inv!15 (value!162495 (h!39045 tokensBis!14))))))

(declare-fun b!2840557 () Bool)

(declare-fun res!1181810 () Bool)

(assert (=> b!2840557 (=> res!1181810 e!1799504)))

(assert (=> b!2840557 (= res!1181810 (not (is-IntegerValue!15863 (value!162495 (h!39045 tokensBis!14)))))))

(assert (=> b!2840557 (= e!1799503 e!1799504)))

(assert (= (and d!823723 c!458590) b!2840555))

(assert (= (and d!823723 (not c!458590)) b!2840553))

(assert (= (and b!2840553 c!458591) b!2840554))

(assert (= (and b!2840553 (not c!458591)) b!2840557))

(assert (= (and b!2840557 (not res!1181810)) b!2840556))

(declare-fun m!3268939 () Bool)

(assert (=> b!2840554 m!3268939))

(declare-fun m!3268943 () Bool)

(assert (=> b!2840555 m!3268943))

(declare-fun m!3268945 () Bool)

(assert (=> b!2840556 m!3268945))

(assert (=> b!2840465 d!823723))

(declare-fun d!823729 () Bool)

(declare-fun res!1181815 () Bool)

(declare-fun e!1799509 () Bool)

(assert (=> d!823729 (=> (not res!1181815) (not e!1799509))))

(declare-fun isEmpty!18518 (List!33747) Bool)

(assert (=> d!823729 (= res!1181815 (not (isEmpty!18518 (originalCharacters!5789 (h!39045 tokens!612)))))))

(assert (=> d!823729 (= (inv!45599 (h!39045 tokens!612)) e!1799509)))

(declare-fun b!2840566 () Bool)

(declare-fun res!1181816 () Bool)

(assert (=> b!2840566 (=> (not res!1181816) (not e!1799509))))

(declare-fun list!12535 (BalanceConc!20512) List!33747)

(declare-fun dynLambda!14148 (Int TokenValue!5287) BalanceConc!20512)

(assert (=> b!2840566 (= res!1181816 (= (originalCharacters!5789 (h!39045 tokens!612)) (list!12535 (dynLambda!14148 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (value!162495 (h!39045 tokens!612))))))))

(declare-fun b!2840567 () Bool)

(declare-fun size!26106 (List!33747) Int)

(assert (=> b!2840567 (= e!1799509 (= (size!26104 (h!39045 tokens!612)) (size!26106 (originalCharacters!5789 (h!39045 tokens!612)))))))

(assert (= (and d!823729 res!1181815) b!2840566))

(assert (= (and b!2840566 res!1181816) b!2840567))

(declare-fun b_lambda!85391 () Bool)

(assert (=> (not b_lambda!85391) (not b!2840566)))

(declare-fun t!232497 () Bool)

(declare-fun tb!154853 () Bool)

(assert (=> (and b!2840471 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612))))) t!232497) tb!154853))

(declare-fun b!2840572 () Bool)

(declare-fun e!1799512 () Bool)

(declare-fun tp!909907 () Bool)

(declare-fun inv!45603 (Conc!10437) Bool)

(assert (=> b!2840572 (= e!1799512 (and (inv!45603 (c!458580 (dynLambda!14148 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (value!162495 (h!39045 tokens!612))))) tp!909907))))

(declare-fun result!193178 () Bool)

(declare-fun inv!45604 (BalanceConc!20512) Bool)

(assert (=> tb!154853 (= result!193178 (and (inv!45604 (dynLambda!14148 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (value!162495 (h!39045 tokens!612)))) e!1799512))))

(assert (= tb!154853 b!2840572))

(declare-fun m!3268947 () Bool)

(assert (=> b!2840572 m!3268947))

(declare-fun m!3268949 () Bool)

(assert (=> tb!154853 m!3268949))

(assert (=> b!2840566 t!232497))

(declare-fun b_and!208395 () Bool)

(assert (= b_and!208373 (and (=> t!232497 result!193178) b_and!208395)))

(declare-fun t!232499 () Bool)

(declare-fun tb!154855 () Bool)

(assert (=> (and b!2840459 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612))))) t!232499) tb!154855))

(declare-fun result!193182 () Bool)

(assert (= result!193182 result!193178))

(assert (=> b!2840566 t!232499))

(declare-fun b_and!208397 () Bool)

(assert (= b_and!208377 (and (=> t!232499 result!193182) b_and!208397)))

(declare-fun tb!154857 () Bool)

(declare-fun t!232501 () Bool)

(assert (=> (and b!2840475 (= (toChars!6958 (transformation!5057 (h!39046 rules!4246))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612))))) t!232501) tb!154857))

(declare-fun result!193184 () Bool)

(assert (= result!193184 result!193178))

(assert (=> b!2840566 t!232501))

(declare-fun b_and!208399 () Bool)

(assert (= b_and!208381 (and (=> t!232501 result!193184) b_and!208399)))

(declare-fun m!3268951 () Bool)

(assert (=> d!823729 m!3268951))

(declare-fun m!3268953 () Bool)

(assert (=> b!2840566 m!3268953))

(assert (=> b!2840566 m!3268953))

(declare-fun m!3268955 () Bool)

(assert (=> b!2840566 m!3268955))

(declare-fun m!3268957 () Bool)

(assert (=> b!2840567 m!3268957))

(assert (=> b!2840455 d!823729))

(declare-fun b!2840582 () Bool)

(declare-fun e!1799521 () Bool)

(declare-fun e!1799524 () Bool)

(assert (=> b!2840582 (= e!1799521 e!1799524)))

(declare-fun res!1181827 () Bool)

(assert (=> b!2840582 (=> res!1181827 e!1799524)))

(declare-fun e!1799523 () Bool)

(assert (=> b!2840582 (= res!1181827 e!1799523)))

(declare-fun res!1181825 () Bool)

(assert (=> b!2840582 (=> (not res!1181825) (not e!1799523))))

(assert (=> b!2840582 (= res!1181825 (= (h!39045 (t!232490 tokensBis!14)) (h!39045 (t!232490 tokens!612))))))

(declare-fun b!2840581 () Bool)

(declare-fun e!1799522 () Bool)

(assert (=> b!2840581 (= e!1799522 e!1799521)))

(declare-fun res!1181828 () Bool)

(assert (=> b!2840581 (=> (not res!1181828) (not e!1799521))))

(assert (=> b!2840581 (= res!1181828 (is-Cons!33625 (t!232490 tokens!612)))))

(declare-fun b!2840583 () Bool)

(assert (=> b!2840583 (= e!1799523 (subseq!523 (t!232490 (t!232490 tokensBis!14)) (t!232490 (t!232490 tokens!612))))))

(declare-fun d!823733 () Bool)

(declare-fun res!1181826 () Bool)

(assert (=> d!823733 (=> res!1181826 e!1799522)))

(assert (=> d!823733 (= res!1181826 (is-Nil!33625 (t!232490 tokensBis!14)))))

(assert (=> d!823733 (= (subseq!523 (t!232490 tokensBis!14) (t!232490 tokens!612)) e!1799522)))

(declare-fun b!2840584 () Bool)

(assert (=> b!2840584 (= e!1799524 (subseq!523 (t!232490 tokensBis!14) (t!232490 (t!232490 tokens!612))))))

(assert (= (and d!823733 (not res!1181826)) b!2840581))

(assert (= (and b!2840581 res!1181828) b!2840582))

(assert (= (and b!2840582 res!1181825) b!2840583))

(assert (= (and b!2840582 (not res!1181827)) b!2840584))

(declare-fun m!3268959 () Bool)

(assert (=> b!2840583 m!3268959))

(declare-fun m!3268961 () Bool)

(assert (=> b!2840584 m!3268961))

(assert (=> b!2840467 d!823733))

(declare-fun d!823735 () Bool)

(declare-fun lt!1011574 () Int)

(assert (=> d!823735 (>= lt!1011574 0)))

(declare-fun e!1799527 () Int)

(assert (=> d!823735 (= lt!1011574 e!1799527)))

(declare-fun c!458596 () Bool)

(assert (=> d!823735 (= c!458596 (is-Nil!33625 (t!232490 tokens!612)))))

(assert (=> d!823735 (= (ListPrimitiveSize!228 (t!232490 tokens!612)) lt!1011574)))

(declare-fun b!2840589 () Bool)

(assert (=> b!2840589 (= e!1799527 0)))

(declare-fun b!2840590 () Bool)

(assert (=> b!2840590 (= e!1799527 (+ 1 (ListPrimitiveSize!228 (t!232490 (t!232490 tokens!612)))))))

(assert (= (and d!823735 c!458596) b!2840589))

(assert (= (and d!823735 (not c!458596)) b!2840590))

(declare-fun m!3268963 () Bool)

(assert (=> b!2840590 m!3268963))

(assert (=> b!2840456 d!823735))

(declare-fun d!823737 () Bool)

(declare-fun lt!1011575 () Int)

(assert (=> d!823737 (>= lt!1011575 0)))

(declare-fun e!1799528 () Int)

(assert (=> d!823737 (= lt!1011575 e!1799528)))

(declare-fun c!458597 () Bool)

(assert (=> d!823737 (= c!458597 (is-Nil!33625 tokens!612))))

(assert (=> d!823737 (= (ListPrimitiveSize!228 tokens!612) lt!1011575)))

(declare-fun b!2840591 () Bool)

(assert (=> b!2840591 (= e!1799528 0)))

(declare-fun b!2840592 () Bool)

(assert (=> b!2840592 (= e!1799528 (+ 1 (ListPrimitiveSize!228 (t!232490 tokens!612))))))

(assert (= (and d!823737 c!458597) b!2840591))

(assert (= (and d!823737 (not c!458597)) b!2840592))

(assert (=> b!2840592 m!3268877))

(assert (=> b!2840456 d!823737))

(declare-fun d!823739 () Bool)

(declare-fun res!1181829 () Bool)

(declare-fun e!1799529 () Bool)

(assert (=> d!823739 (=> (not res!1181829) (not e!1799529))))

(assert (=> d!823739 (= res!1181829 (not (isEmpty!18518 (originalCharacters!5789 (h!39045 tokensBis!14)))))))

(assert (=> d!823739 (= (inv!45599 (h!39045 tokensBis!14)) e!1799529)))

(declare-fun b!2840593 () Bool)

(declare-fun res!1181830 () Bool)

(assert (=> b!2840593 (=> (not res!1181830) (not e!1799529))))

(assert (=> b!2840593 (= res!1181830 (= (originalCharacters!5789 (h!39045 tokensBis!14)) (list!12535 (dynLambda!14148 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (value!162495 (h!39045 tokensBis!14))))))))

(declare-fun b!2840594 () Bool)

(assert (=> b!2840594 (= e!1799529 (= (size!26104 (h!39045 tokensBis!14)) (size!26106 (originalCharacters!5789 (h!39045 tokensBis!14)))))))

(assert (= (and d!823739 res!1181829) b!2840593))

(assert (= (and b!2840593 res!1181830) b!2840594))

(declare-fun b_lambda!85393 () Bool)

(assert (=> (not b_lambda!85393) (not b!2840593)))

(declare-fun t!232503 () Bool)

(declare-fun tb!154859 () Bool)

(assert (=> (and b!2840471 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))) t!232503) tb!154859))

(declare-fun b!2840595 () Bool)

(declare-fun e!1799530 () Bool)

(declare-fun tp!909908 () Bool)

(assert (=> b!2840595 (= e!1799530 (and (inv!45603 (c!458580 (dynLambda!14148 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (value!162495 (h!39045 tokensBis!14))))) tp!909908))))

(declare-fun result!193186 () Bool)

(assert (=> tb!154859 (= result!193186 (and (inv!45604 (dynLambda!14148 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (value!162495 (h!39045 tokensBis!14)))) e!1799530))))

(assert (= tb!154859 b!2840595))

(declare-fun m!3268965 () Bool)

(assert (=> b!2840595 m!3268965))

(declare-fun m!3268967 () Bool)

(assert (=> tb!154859 m!3268967))

(assert (=> b!2840593 t!232503))

(declare-fun b_and!208401 () Bool)

(assert (= b_and!208395 (and (=> t!232503 result!193186) b_and!208401)))

(declare-fun tb!154861 () Bool)

(declare-fun t!232505 () Bool)

(assert (=> (and b!2840459 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))) t!232505) tb!154861))

(declare-fun result!193188 () Bool)

(assert (= result!193188 result!193186))

(assert (=> b!2840593 t!232505))

(declare-fun b_and!208403 () Bool)

(assert (= b_and!208397 (and (=> t!232505 result!193188) b_and!208403)))

(declare-fun t!232507 () Bool)

(declare-fun tb!154863 () Bool)

(assert (=> (and b!2840475 (= (toChars!6958 (transformation!5057 (h!39046 rules!4246))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))) t!232507) tb!154863))

(declare-fun result!193190 () Bool)

(assert (= result!193190 result!193186))

(assert (=> b!2840593 t!232507))

(declare-fun b_and!208405 () Bool)

(assert (= b_and!208399 (and (=> t!232507 result!193190) b_and!208405)))

(declare-fun m!3268969 () Bool)

(assert (=> d!823739 m!3268969))

(declare-fun m!3268971 () Bool)

(assert (=> b!2840593 m!3268971))

(assert (=> b!2840593 m!3268971))

(declare-fun m!3268973 () Bool)

(assert (=> b!2840593 m!3268973))

(declare-fun m!3268975 () Bool)

(assert (=> b!2840594 m!3268975))

(assert (=> b!2840457 d!823739))

(declare-fun b!2840616 () Bool)

(declare-fun e!1799549 () Bool)

(assert (=> b!2840616 (= e!1799549 true)))

(declare-fun b!2840615 () Bool)

(declare-fun e!1799548 () Bool)

(assert (=> b!2840615 (= e!1799548 e!1799549)))

(declare-fun b!2840614 () Bool)

(declare-fun e!1799547 () Bool)

(assert (=> b!2840614 (= e!1799547 e!1799548)))

(declare-fun d!823741 () Bool)

(assert (=> d!823741 e!1799547))

(assert (= b!2840615 b!2840616))

(assert (= b!2840614 b!2840615))

(assert (= (and d!823741 (is-Cons!33626 rules!4246)) b!2840614))

(declare-fun order!17977 () Int)

(declare-fun lambda!104234 () Int)

(declare-fun order!17979 () Int)

(declare-fun dynLambda!14149 (Int Int) Int)

(declare-fun dynLambda!14150 (Int Int) Int)

(assert (=> b!2840616 (< (dynLambda!14149 order!17977 (toValue!7099 (transformation!5057 (h!39046 rules!4246)))) (dynLambda!14150 order!17979 lambda!104234))))

(declare-fun order!17981 () Int)

(declare-fun dynLambda!14151 (Int Int) Int)

(assert (=> b!2840616 (< (dynLambda!14151 order!17981 (toChars!6958 (transformation!5057 (h!39046 rules!4246)))) (dynLambda!14150 order!17979 lambda!104234))))

(assert (=> d!823741 true))

(declare-fun lt!1011580 () Bool)

(declare-fun forall!6912 (List!33749 Int) Bool)

(assert (=> d!823741 (= lt!1011580 (forall!6912 tokens!612 lambda!104234))))

(declare-fun e!1799539 () Bool)

(assert (=> d!823741 (= lt!1011580 e!1799539)))

(declare-fun res!1181839 () Bool)

(assert (=> d!823741 (=> res!1181839 e!1799539)))

(assert (=> d!823741 (= res!1181839 (not (is-Cons!33625 tokens!612)))))

(assert (=> d!823741 (not (isEmpty!18516 rules!4246))))

(assert (=> d!823741 (= (rulesProduceEachTokenIndividuallyList!1688 thiss!27264 rules!4246 tokens!612) lt!1011580)))

(declare-fun b!2840604 () Bool)

(declare-fun e!1799540 () Bool)

(assert (=> b!2840604 (= e!1799539 e!1799540)))

(declare-fun res!1181840 () Bool)

(assert (=> b!2840604 (=> (not res!1181840) (not e!1799540))))

(declare-fun rulesProduceIndividualToken!2159 (LexerInterface!4647 List!33750 Token!9516) Bool)

(assert (=> b!2840604 (= res!1181840 (rulesProduceIndividualToken!2159 thiss!27264 rules!4246 (h!39045 tokens!612)))))

(declare-fun b!2840605 () Bool)

(assert (=> b!2840605 (= e!1799540 (rulesProduceEachTokenIndividuallyList!1688 thiss!27264 rules!4246 (t!232490 tokens!612)))))

(assert (= (and d!823741 (not res!1181839)) b!2840604))

(assert (= (and b!2840604 res!1181840) b!2840605))

(declare-fun m!3268977 () Bool)

(assert (=> d!823741 m!3268977))

(assert (=> d!823741 m!3268875))

(declare-fun m!3268979 () Bool)

(assert (=> b!2840604 m!3268979))

(assert (=> b!2840605 m!3268863))

(assert (=> b!2840468 d!823741))

(declare-fun b!2840619 () Bool)

(declare-fun e!1799550 () Bool)

(declare-fun e!1799551 () Bool)

(assert (=> b!2840619 (= e!1799550 e!1799551)))

(declare-fun c!458599 () Bool)

(assert (=> b!2840619 (= c!458599 (is-IntegerValue!15862 (value!162495 (h!39045 tokens!612))))))

(declare-fun b!2840620 () Bool)

(assert (=> b!2840620 (= e!1799551 (inv!17 (value!162495 (h!39045 tokens!612))))))

(declare-fun b!2840621 () Bool)

(assert (=> b!2840621 (= e!1799550 (inv!16 (value!162495 (h!39045 tokens!612))))))

(declare-fun d!823743 () Bool)

(declare-fun c!458598 () Bool)

(assert (=> d!823743 (= c!458598 (is-IntegerValue!15861 (value!162495 (h!39045 tokens!612))))))

(assert (=> d!823743 (= (inv!21 (value!162495 (h!39045 tokens!612))) e!1799550)))

(declare-fun b!2840622 () Bool)

(declare-fun e!1799552 () Bool)

(assert (=> b!2840622 (= e!1799552 (inv!15 (value!162495 (h!39045 tokens!612))))))

(declare-fun b!2840623 () Bool)

(declare-fun res!1181841 () Bool)

(assert (=> b!2840623 (=> res!1181841 e!1799552)))

(assert (=> b!2840623 (= res!1181841 (not (is-IntegerValue!15863 (value!162495 (h!39045 tokens!612)))))))

(assert (=> b!2840623 (= e!1799551 e!1799552)))

(assert (= (and d!823743 c!458598) b!2840621))

(assert (= (and d!823743 (not c!458598)) b!2840619))

(assert (= (and b!2840619 c!458599) b!2840620))

(assert (= (and b!2840619 (not c!458599)) b!2840623))

(assert (= (and b!2840623 (not res!1181841)) b!2840622))

(declare-fun m!3268981 () Bool)

(assert (=> b!2840620 m!3268981))

(declare-fun m!3268983 () Bool)

(assert (=> b!2840621 m!3268983))

(declare-fun m!3268985 () Bool)

(assert (=> b!2840622 m!3268985))

(assert (=> b!2840469 d!823743))

(declare-fun d!823745 () Bool)

(assert (=> d!823745 (= (isEmpty!18516 rules!4246) (is-Nil!33626 rules!4246))))

(assert (=> b!2840458 d!823745))

(declare-fun d!823747 () Bool)

(declare-fun res!1181844 () Bool)

(declare-fun e!1799555 () Bool)

(assert (=> d!823747 (=> (not res!1181844) (not e!1799555))))

(declare-fun rulesValid!1875 (LexerInterface!4647 List!33750) Bool)

(assert (=> d!823747 (= res!1181844 (rulesValid!1875 thiss!27264 rules!4246))))

(assert (=> d!823747 (= (rulesInvariant!4063 thiss!27264 rules!4246) e!1799555)))

(declare-fun b!2840626 () Bool)

(declare-datatypes ((List!33755 0))(
  ( (Nil!33631) (Cons!33631 (h!39051 String!36958) (t!232524 List!33755)) )
))
(declare-fun noDuplicateTag!1871 (LexerInterface!4647 List!33750 List!33755) Bool)

(assert (=> b!2840626 (= e!1799555 (noDuplicateTag!1871 thiss!27264 rules!4246 Nil!33631))))

(assert (= (and d!823747 res!1181844) b!2840626))

(declare-fun m!3268987 () Bool)

(assert (=> d!823747 m!3268987))

(declare-fun m!3268989 () Bool)

(assert (=> b!2840626 m!3268989))

(assert (=> b!2840470 d!823747))

(declare-fun d!823749 () Bool)

(assert (=> d!823749 (= (inv!45596 (tag!5561 (rule!7485 (h!39045 tokens!612)))) (= (mod (str.len (value!162469 (tag!5561 (rule!7485 (h!39045 tokens!612))))) 2) 0))))

(assert (=> b!2840460 d!823749))

(declare-fun d!823751 () Bool)

(declare-fun res!1181847 () Bool)

(declare-fun e!1799558 () Bool)

(assert (=> d!823751 (=> (not res!1181847) (not e!1799558))))

(declare-fun semiInverseModEq!2106 (Int Int) Bool)

(assert (=> d!823751 (= res!1181847 (semiInverseModEq!2106 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (toValue!7099 (transformation!5057 (rule!7485 (h!39045 tokens!612))))))))

(assert (=> d!823751 (= (inv!45600 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) e!1799558)))

(declare-fun b!2840629 () Bool)

(declare-fun equivClasses!2005 (Int Int) Bool)

(assert (=> b!2840629 (= e!1799558 (equivClasses!2005 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (toValue!7099 (transformation!5057 (rule!7485 (h!39045 tokens!612))))))))

(assert (= (and d!823751 res!1181847) b!2840629))

(declare-fun m!3268991 () Bool)

(assert (=> d!823751 m!3268991))

(declare-fun m!3268993 () Bool)

(assert (=> b!2840629 m!3268993))

(assert (=> b!2840460 d!823751))

(declare-fun bs!518878 () Bool)

(declare-fun d!823753 () Bool)

(assert (= bs!518878 (and d!823753 d!823741)))

(declare-fun lambda!104235 () Int)

(assert (=> bs!518878 (= lambda!104235 lambda!104234)))

(declare-fun b!2840634 () Bool)

(declare-fun e!1799563 () Bool)

(assert (=> b!2840634 (= e!1799563 true)))

(declare-fun b!2840633 () Bool)

(declare-fun e!1799562 () Bool)

(assert (=> b!2840633 (= e!1799562 e!1799563)))

(declare-fun b!2840632 () Bool)

(declare-fun e!1799561 () Bool)

(assert (=> b!2840632 (= e!1799561 e!1799562)))

(assert (=> d!823753 e!1799561))

(assert (= b!2840633 b!2840634))

(assert (= b!2840632 b!2840633))

(assert (= (and d!823753 (is-Cons!33626 rules!4246)) b!2840632))

(assert (=> b!2840634 (< (dynLambda!14149 order!17977 (toValue!7099 (transformation!5057 (h!39046 rules!4246)))) (dynLambda!14150 order!17979 lambda!104235))))

(assert (=> b!2840634 (< (dynLambda!14151 order!17981 (toChars!6958 (transformation!5057 (h!39046 rules!4246)))) (dynLambda!14150 order!17979 lambda!104235))))

(assert (=> d!823753 true))

(declare-fun lt!1011581 () Bool)

(assert (=> d!823753 (= lt!1011581 (forall!6912 (t!232490 tokens!612) lambda!104235))))

(declare-fun e!1799559 () Bool)

(assert (=> d!823753 (= lt!1011581 e!1799559)))

(declare-fun res!1181848 () Bool)

(assert (=> d!823753 (=> res!1181848 e!1799559)))

(assert (=> d!823753 (= res!1181848 (not (is-Cons!33625 (t!232490 tokens!612))))))

(assert (=> d!823753 (not (isEmpty!18516 rules!4246))))

(assert (=> d!823753 (= (rulesProduceEachTokenIndividuallyList!1688 thiss!27264 rules!4246 (t!232490 tokens!612)) lt!1011581)))

(declare-fun b!2840630 () Bool)

(declare-fun e!1799560 () Bool)

(assert (=> b!2840630 (= e!1799559 e!1799560)))

(declare-fun res!1181849 () Bool)

(assert (=> b!2840630 (=> (not res!1181849) (not e!1799560))))

(assert (=> b!2840630 (= res!1181849 (rulesProduceIndividualToken!2159 thiss!27264 rules!4246 (h!39045 (t!232490 tokens!612))))))

(declare-fun b!2840631 () Bool)

(assert (=> b!2840631 (= e!1799560 (rulesProduceEachTokenIndividuallyList!1688 thiss!27264 rules!4246 (t!232490 (t!232490 tokens!612))))))

(assert (= (and d!823753 (not res!1181848)) b!2840630))

(assert (= (and b!2840630 res!1181849) b!2840631))

(declare-fun m!3268995 () Bool)

(assert (=> d!823753 m!3268995))

(assert (=> d!823753 m!3268875))

(declare-fun m!3268997 () Bool)

(assert (=> b!2840630 m!3268997))

(declare-fun m!3268999 () Bool)

(assert (=> b!2840631 m!3268999))

(assert (=> b!2840473 d!823753))

(declare-fun b!2840636 () Bool)

(declare-fun e!1799564 () Bool)

(declare-fun e!1799567 () Bool)

(assert (=> b!2840636 (= e!1799564 e!1799567)))

(declare-fun res!1181852 () Bool)

(assert (=> b!2840636 (=> res!1181852 e!1799567)))

(declare-fun e!1799566 () Bool)

(assert (=> b!2840636 (= res!1181852 e!1799566)))

(declare-fun res!1181850 () Bool)

(assert (=> b!2840636 (=> (not res!1181850) (not e!1799566))))

(assert (=> b!2840636 (= res!1181850 (= (h!39045 tokensBis!14) (h!39045 tokens!612)))))

(declare-fun b!2840635 () Bool)

(declare-fun e!1799565 () Bool)

(assert (=> b!2840635 (= e!1799565 e!1799564)))

(declare-fun res!1181853 () Bool)

(assert (=> b!2840635 (=> (not res!1181853) (not e!1799564))))

(assert (=> b!2840635 (= res!1181853 (is-Cons!33625 tokens!612))))

(declare-fun b!2840637 () Bool)

(assert (=> b!2840637 (= e!1799566 (subseq!523 (t!232490 tokensBis!14) (t!232490 tokens!612)))))

(declare-fun d!823755 () Bool)

(declare-fun res!1181851 () Bool)

(assert (=> d!823755 (=> res!1181851 e!1799565)))

(assert (=> d!823755 (= res!1181851 (is-Nil!33625 tokensBis!14))))

(assert (=> d!823755 (= (subseq!523 tokensBis!14 tokens!612) e!1799565)))

(declare-fun b!2840638 () Bool)

(assert (=> b!2840638 (= e!1799567 (subseq!523 tokensBis!14 (t!232490 tokens!612)))))

(assert (= (and d!823755 (not res!1181851)) b!2840635))

(assert (= (and b!2840635 res!1181853) b!2840636))

(assert (= (and b!2840636 res!1181850) b!2840637))

(assert (= (and b!2840636 (not res!1181852)) b!2840638))

(assert (=> b!2840637 m!3268887))

(assert (=> b!2840638 m!3268891))

(assert (=> b!2840462 d!823755))

(declare-fun d!823757 () Bool)

(assert (=> d!823757 (= (inv!45596 (tag!5561 (rule!7485 (h!39045 tokensBis!14)))) (= (mod (str.len (value!162469 (tag!5561 (rule!7485 (h!39045 tokensBis!14))))) 2) 0))))

(assert (=> b!2840463 d!823757))

(declare-fun d!823759 () Bool)

(declare-fun res!1181854 () Bool)

(declare-fun e!1799568 () Bool)

(assert (=> d!823759 (=> (not res!1181854) (not e!1799568))))

(assert (=> d!823759 (= res!1181854 (semiInverseModEq!2106 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (toValue!7099 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))))))

(assert (=> d!823759 (= (inv!45600 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) e!1799568)))

(declare-fun b!2840639 () Bool)

(assert (=> b!2840639 (= e!1799568 (equivClasses!2005 (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (toValue!7099 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))))))

(assert (= (and d!823759 res!1181854) b!2840639))

(declare-fun m!3269001 () Bool)

(assert (=> d!823759 m!3269001))

(declare-fun m!3269003 () Bool)

(assert (=> b!2840639 m!3269003))

(assert (=> b!2840463 d!823759))

(declare-fun d!823761 () Bool)

(assert (=> d!823761 (= (inv!45596 (tag!5561 (h!39046 rules!4246))) (= (mod (str.len (value!162469 (tag!5561 (h!39046 rules!4246)))) 2) 0))))

(assert (=> b!2840474 d!823761))

(declare-fun d!823763 () Bool)

(declare-fun res!1181855 () Bool)

(declare-fun e!1799569 () Bool)

(assert (=> d!823763 (=> (not res!1181855) (not e!1799569))))

(assert (=> d!823763 (= res!1181855 (semiInverseModEq!2106 (toChars!6958 (transformation!5057 (h!39046 rules!4246))) (toValue!7099 (transformation!5057 (h!39046 rules!4246)))))))

(assert (=> d!823763 (= (inv!45600 (transformation!5057 (h!39046 rules!4246))) e!1799569)))

(declare-fun b!2840640 () Bool)

(assert (=> b!2840640 (= e!1799569 (equivClasses!2005 (toChars!6958 (transformation!5057 (h!39046 rules!4246))) (toValue!7099 (transformation!5057 (h!39046 rules!4246)))))))

(assert (= (and d!823763 res!1181855) b!2840640))

(declare-fun m!3269005 () Bool)

(assert (=> d!823763 m!3269005))

(declare-fun m!3269007 () Bool)

(assert (=> b!2840640 m!3269007))

(assert (=> b!2840474 d!823763))

(declare-fun b!2840642 () Bool)

(declare-fun e!1799570 () Bool)

(declare-fun e!1799573 () Bool)

(assert (=> b!2840642 (= e!1799570 e!1799573)))

(declare-fun res!1181858 () Bool)

(assert (=> b!2840642 (=> res!1181858 e!1799573)))

(declare-fun e!1799572 () Bool)

(assert (=> b!2840642 (= res!1181858 e!1799572)))

(declare-fun res!1181856 () Bool)

(assert (=> b!2840642 (=> (not res!1181856) (not e!1799572))))

(assert (=> b!2840642 (= res!1181856 (= (h!39045 tokensBis!14) (h!39045 (t!232490 tokens!612))))))

(declare-fun b!2840641 () Bool)

(declare-fun e!1799571 () Bool)

(assert (=> b!2840641 (= e!1799571 e!1799570)))

(declare-fun res!1181859 () Bool)

(assert (=> b!2840641 (=> (not res!1181859) (not e!1799570))))

(assert (=> b!2840641 (= res!1181859 (is-Cons!33625 (t!232490 tokens!612)))))

(declare-fun b!2840643 () Bool)

(assert (=> b!2840643 (= e!1799572 (subseq!523 (t!232490 tokensBis!14) (t!232490 (t!232490 tokens!612))))))

(declare-fun d!823765 () Bool)

(declare-fun res!1181857 () Bool)

(assert (=> d!823765 (=> res!1181857 e!1799571)))

(assert (=> d!823765 (= res!1181857 (is-Nil!33625 tokensBis!14))))

(assert (=> d!823765 (= (subseq!523 tokensBis!14 (t!232490 tokens!612)) e!1799571)))

(declare-fun b!2840644 () Bool)

(assert (=> b!2840644 (= e!1799573 (subseq!523 tokensBis!14 (t!232490 (t!232490 tokens!612))))))

(assert (= (and d!823765 (not res!1181857)) b!2840641))

(assert (= (and b!2840641 res!1181859) b!2840642))

(assert (= (and b!2840642 res!1181856) b!2840643))

(assert (= (and b!2840642 (not res!1181858)) b!2840644))

(assert (=> b!2840643 m!3268961))

(declare-fun m!3269009 () Bool)

(assert (=> b!2840644 m!3269009))

(assert (=> b!2840464 d!823765))

(declare-fun b!2840649 () Bool)

(declare-fun e!1799576 () Bool)

(declare-fun tp_is_empty!14625 () Bool)

(declare-fun tp!909911 () Bool)

(assert (=> b!2840649 (= e!1799576 (and tp_is_empty!14625 tp!909911))))

(assert (=> b!2840465 (= tp!909862 e!1799576)))

(assert (= (and b!2840465 (is-Cons!33623 (originalCharacters!5789 (h!39045 tokensBis!14)))) b!2840649))

(declare-fun b!2840663 () Bool)

(declare-fun b_free!82357 () Bool)

(declare-fun b_next!83061 () Bool)

(assert (=> b!2840663 (= b_free!82357 (not b_next!83061))))

(declare-fun tp!909922 () Bool)

(declare-fun b_and!208407 () Bool)

(assert (=> b!2840663 (= tp!909922 b_and!208407)))

(declare-fun b_free!82359 () Bool)

(declare-fun b_next!83063 () Bool)

(assert (=> b!2840663 (= b_free!82359 (not b_next!83063))))

(declare-fun t!232513 () Bool)

(declare-fun tb!154865 () Bool)

(assert (=> (and b!2840663 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokens!612))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612))))) t!232513) tb!154865))

(declare-fun result!193196 () Bool)

(assert (= result!193196 result!193178))

(assert (=> b!2840566 t!232513))

(declare-fun t!232515 () Bool)

(declare-fun tb!154867 () Bool)

(assert (=> (and b!2840663 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokens!612))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))) t!232515) tb!154867))

(declare-fun result!193198 () Bool)

(assert (= result!193198 result!193186))

(assert (=> b!2840593 t!232515))

(declare-fun b_and!208409 () Bool)

(declare-fun tp!909926 () Bool)

(assert (=> b!2840663 (= tp!909926 (and (=> t!232513 result!193196) (=> t!232515 result!193198) b_and!208409))))

(declare-fun e!1799589 () Bool)

(assert (=> b!2840663 (= e!1799589 (and tp!909922 tp!909926))))

(declare-fun e!1799592 () Bool)

(assert (=> b!2840455 (= tp!909860 e!1799592)))

(declare-fun e!1799590 () Bool)

(declare-fun b!2840661 () Bool)

(declare-fun e!1799594 () Bool)

(declare-fun tp!909925 () Bool)

(assert (=> b!2840661 (= e!1799594 (and (inv!21 (value!162495 (h!39045 (t!232490 tokens!612)))) e!1799590 tp!909925))))

(declare-fun b!2840662 () Bool)

(declare-fun tp!909923 () Bool)

(assert (=> b!2840662 (= e!1799590 (and tp!909923 (inv!45596 (tag!5561 (rule!7485 (h!39045 (t!232490 tokens!612))))) (inv!45600 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokens!612))))) e!1799589))))

(declare-fun b!2840660 () Bool)

(declare-fun tp!909924 () Bool)

(assert (=> b!2840660 (= e!1799592 (and (inv!45599 (h!39045 (t!232490 tokens!612))) e!1799594 tp!909924))))

(assert (= b!2840662 b!2840663))

(assert (= b!2840661 b!2840662))

(assert (= b!2840660 b!2840661))

(assert (= (and b!2840455 (is-Cons!33625 (t!232490 tokens!612))) b!2840660))

(declare-fun m!3269011 () Bool)

(assert (=> b!2840661 m!3269011))

(declare-fun m!3269013 () Bool)

(assert (=> b!2840662 m!3269013))

(declare-fun m!3269015 () Bool)

(assert (=> b!2840662 m!3269015))

(declare-fun m!3269017 () Bool)

(assert (=> b!2840660 m!3269017))

(declare-fun b!2840674 () Bool)

(declare-fun b_free!82361 () Bool)

(declare-fun b_next!83065 () Bool)

(assert (=> b!2840674 (= b_free!82361 (not b_next!83065))))

(declare-fun tp!909935 () Bool)

(declare-fun b_and!208411 () Bool)

(assert (=> b!2840674 (= tp!909935 b_and!208411)))

(declare-fun b_free!82363 () Bool)

(declare-fun b_next!83067 () Bool)

(assert (=> b!2840674 (= b_free!82363 (not b_next!83067))))

(declare-fun t!232517 () Bool)

(declare-fun tb!154869 () Bool)

(assert (=> (and b!2840674 (= (toChars!6958 (transformation!5057 (h!39046 (t!232491 rules!4246)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612))))) t!232517) tb!154869))

(declare-fun result!193202 () Bool)

(assert (= result!193202 result!193178))

(assert (=> b!2840566 t!232517))

(declare-fun t!232519 () Bool)

(declare-fun tb!154871 () Bool)

(assert (=> (and b!2840674 (= (toChars!6958 (transformation!5057 (h!39046 (t!232491 rules!4246)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))) t!232519) tb!154871))

(declare-fun result!193204 () Bool)

(assert (= result!193204 result!193186))

(assert (=> b!2840593 t!232519))

(declare-fun b_and!208413 () Bool)

(declare-fun tp!909938 () Bool)

(assert (=> b!2840674 (= tp!909938 (and (=> t!232517 result!193202) (=> t!232519 result!193204) b_and!208413))))

(declare-fun e!1799606 () Bool)

(assert (=> b!2840674 (= e!1799606 (and tp!909935 tp!909938))))

(declare-fun b!2840673 () Bool)

(declare-fun e!1799603 () Bool)

(declare-fun tp!909937 () Bool)

(assert (=> b!2840673 (= e!1799603 (and tp!909937 (inv!45596 (tag!5561 (h!39046 (t!232491 rules!4246)))) (inv!45600 (transformation!5057 (h!39046 (t!232491 rules!4246)))) e!1799606))))

(declare-fun b!2840672 () Bool)

(declare-fun e!1799605 () Bool)

(declare-fun tp!909936 () Bool)

(assert (=> b!2840672 (= e!1799605 (and e!1799603 tp!909936))))

(assert (=> b!2840466 (= tp!909849 e!1799605)))

(assert (= b!2840673 b!2840674))

(assert (= b!2840672 b!2840673))

(assert (= (and b!2840466 (is-Cons!33626 (t!232491 rules!4246))) b!2840672))

(declare-fun m!3269019 () Bool)

(assert (=> b!2840673 m!3269019))

(declare-fun m!3269021 () Bool)

(assert (=> b!2840673 m!3269021))

(declare-fun b!2840678 () Bool)

(declare-fun b_free!82365 () Bool)

(declare-fun b_next!83069 () Bool)

(assert (=> b!2840678 (= b_free!82365 (not b_next!83069))))

(declare-fun tp!909939 () Bool)

(declare-fun b_and!208415 () Bool)

(assert (=> b!2840678 (= tp!909939 b_and!208415)))

(declare-fun b_free!82367 () Bool)

(declare-fun b_next!83071 () Bool)

(assert (=> b!2840678 (= b_free!82367 (not b_next!83071))))

(declare-fun tb!154873 () Bool)

(declare-fun t!232521 () Bool)

(assert (=> (and b!2840678 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokensBis!14))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612))))) t!232521) tb!154873))

(declare-fun result!193206 () Bool)

(assert (= result!193206 result!193178))

(assert (=> b!2840566 t!232521))

(declare-fun t!232523 () Bool)

(declare-fun tb!154875 () Bool)

(assert (=> (and b!2840678 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokensBis!14))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14))))) t!232523) tb!154875))

(declare-fun result!193208 () Bool)

(assert (= result!193208 result!193186))

(assert (=> b!2840593 t!232523))

(declare-fun b_and!208417 () Bool)

(declare-fun tp!909943 () Bool)

(assert (=> b!2840678 (= tp!909943 (and (=> t!232521 result!193206) (=> t!232523 result!193208) b_and!208417))))

(declare-fun e!1799607 () Bool)

(assert (=> b!2840678 (= e!1799607 (and tp!909939 tp!909943))))

(declare-fun e!1799610 () Bool)

(assert (=> b!2840457 (= tp!909861 e!1799610)))

(declare-fun e!1799608 () Bool)

(declare-fun e!1799612 () Bool)

(declare-fun b!2840676 () Bool)

(declare-fun tp!909942 () Bool)

(assert (=> b!2840676 (= e!1799612 (and (inv!21 (value!162495 (h!39045 (t!232490 tokensBis!14)))) e!1799608 tp!909942))))

(declare-fun tp!909940 () Bool)

(declare-fun b!2840677 () Bool)

(assert (=> b!2840677 (= e!1799608 (and tp!909940 (inv!45596 (tag!5561 (rule!7485 (h!39045 (t!232490 tokensBis!14))))) (inv!45600 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokensBis!14))))) e!1799607))))

(declare-fun tp!909941 () Bool)

(declare-fun b!2840675 () Bool)

(assert (=> b!2840675 (= e!1799610 (and (inv!45599 (h!39045 (t!232490 tokensBis!14))) e!1799612 tp!909941))))

(assert (= b!2840677 b!2840678))

(assert (= b!2840676 b!2840677))

(assert (= b!2840675 b!2840676))

(assert (= (and b!2840457 (is-Cons!33625 (t!232490 tokensBis!14))) b!2840675))

(declare-fun m!3269023 () Bool)

(assert (=> b!2840676 m!3269023))

(declare-fun m!3269025 () Bool)

(assert (=> b!2840677 m!3269025))

(declare-fun m!3269027 () Bool)

(assert (=> b!2840677 m!3269027))

(declare-fun m!3269029 () Bool)

(assert (=> b!2840675 m!3269029))

(declare-fun b!2840679 () Bool)

(declare-fun e!1799613 () Bool)

(declare-fun tp!909944 () Bool)

(assert (=> b!2840679 (= e!1799613 (and tp_is_empty!14625 tp!909944))))

(assert (=> b!2840469 (= tp!909857 e!1799613)))

(assert (= (and b!2840469 (is-Cons!33623 (originalCharacters!5789 (h!39045 tokens!612)))) b!2840679))

(declare-fun b!2840690 () Bool)

(declare-fun e!1799616 () Bool)

(assert (=> b!2840690 (= e!1799616 tp_is_empty!14625)))

(declare-fun b!2840692 () Bool)

(declare-fun tp!909959 () Bool)

(assert (=> b!2840692 (= e!1799616 tp!909959)))

(declare-fun b!2840691 () Bool)

(declare-fun tp!909958 () Bool)

(declare-fun tp!909955 () Bool)

(assert (=> b!2840691 (= e!1799616 (and tp!909958 tp!909955))))

(declare-fun b!2840693 () Bool)

(declare-fun tp!909956 () Bool)

(declare-fun tp!909957 () Bool)

(assert (=> b!2840693 (= e!1799616 (and tp!909956 tp!909957))))

(assert (=> b!2840460 (= tp!909855 e!1799616)))

(assert (= (and b!2840460 (is-ElementMatch!8448 (regex!5057 (rule!7485 (h!39045 tokens!612))))) b!2840690))

(assert (= (and b!2840460 (is-Concat!13735 (regex!5057 (rule!7485 (h!39045 tokens!612))))) b!2840691))

(assert (= (and b!2840460 (is-Star!8448 (regex!5057 (rule!7485 (h!39045 tokens!612))))) b!2840692))

(assert (= (and b!2840460 (is-Union!8448 (regex!5057 (rule!7485 (h!39045 tokens!612))))) b!2840693))

(declare-fun b!2840694 () Bool)

(declare-fun e!1799617 () Bool)

(assert (=> b!2840694 (= e!1799617 tp_is_empty!14625)))

(declare-fun b!2840696 () Bool)

(declare-fun tp!909964 () Bool)

(assert (=> b!2840696 (= e!1799617 tp!909964)))

(declare-fun b!2840695 () Bool)

(declare-fun tp!909963 () Bool)

(declare-fun tp!909960 () Bool)

(assert (=> b!2840695 (= e!1799617 (and tp!909963 tp!909960))))

(declare-fun b!2840697 () Bool)

(declare-fun tp!909961 () Bool)

(declare-fun tp!909962 () Bool)

(assert (=> b!2840697 (= e!1799617 (and tp!909961 tp!909962))))

(assert (=> b!2840463 (= tp!909859 e!1799617)))

(assert (= (and b!2840463 (is-ElementMatch!8448 (regex!5057 (rule!7485 (h!39045 tokensBis!14))))) b!2840694))

(assert (= (and b!2840463 (is-Concat!13735 (regex!5057 (rule!7485 (h!39045 tokensBis!14))))) b!2840695))

(assert (= (and b!2840463 (is-Star!8448 (regex!5057 (rule!7485 (h!39045 tokensBis!14))))) b!2840696))

(assert (= (and b!2840463 (is-Union!8448 (regex!5057 (rule!7485 (h!39045 tokensBis!14))))) b!2840697))

(declare-fun b!2840698 () Bool)

(declare-fun e!1799618 () Bool)

(assert (=> b!2840698 (= e!1799618 tp_is_empty!14625)))

(declare-fun b!2840700 () Bool)

(declare-fun tp!909969 () Bool)

(assert (=> b!2840700 (= e!1799618 tp!909969)))

(declare-fun b!2840699 () Bool)

(declare-fun tp!909968 () Bool)

(declare-fun tp!909965 () Bool)

(assert (=> b!2840699 (= e!1799618 (and tp!909968 tp!909965))))

(declare-fun b!2840701 () Bool)

(declare-fun tp!909966 () Bool)

(declare-fun tp!909967 () Bool)

(assert (=> b!2840701 (= e!1799618 (and tp!909966 tp!909967))))

(assert (=> b!2840474 (= tp!909850 e!1799618)))

(assert (= (and b!2840474 (is-ElementMatch!8448 (regex!5057 (h!39046 rules!4246)))) b!2840698))

(assert (= (and b!2840474 (is-Concat!13735 (regex!5057 (h!39046 rules!4246)))) b!2840699))

(assert (= (and b!2840474 (is-Star!8448 (regex!5057 (h!39046 rules!4246)))) b!2840700))

(assert (= (and b!2840474 (is-Union!8448 (regex!5057 (h!39046 rules!4246)))) b!2840701))

(declare-fun b_lambda!85395 () Bool)

(assert (= b_lambda!85393 (or (and b!2840471 b_free!82335) (and b!2840674 b_free!82363 (= (toChars!6958 (transformation!5057 (h!39046 (t!232491 rules!4246)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))))) (and b!2840663 b_free!82359 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokens!612))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))))) (and b!2840475 b_free!82343 (= (toChars!6958 (transformation!5057 (h!39046 rules!4246))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))))) (and b!2840678 b_free!82367 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokensBis!14))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))))) (and b!2840459 b_free!82339 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))))) b_lambda!85395)))

(declare-fun b_lambda!85397 () Bool)

(assert (= b_lambda!85391 (or (and b!2840459 b_free!82339) (and b!2840475 b_free!82343 (= (toChars!6958 (transformation!5057 (h!39046 rules!4246))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))))) (and b!2840663 b_free!82359 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokens!612))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))))) (and b!2840471 b_free!82335 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokensBis!14)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))))) (and b!2840674 b_free!82363 (= (toChars!6958 (transformation!5057 (h!39046 (t!232491 rules!4246)))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))))) (and b!2840678 b_free!82367 (= (toChars!6958 (transformation!5057 (rule!7485 (h!39045 (t!232490 tokensBis!14))))) (toChars!6958 (transformation!5057 (rule!7485 (h!39045 tokens!612)))))) b_lambda!85397)))

(push 1)

(assert (not d!823747))

(assert tp_is_empty!14625)

(assert (not b!2840700))

(assert (not b_lambda!85397))

(assert (not b!2840662))

(assert (not b!2840643))

(assert b_and!208413)

(assert (not b!2840583))

(assert (not b_next!83067))

(assert (not b!2840605))

(assert (not b!2840661))

(assert b_and!208379)

(assert (not b_next!83061))

(assert b_and!208375)

(assert (not b!2840594))

(assert (not b!2840592))

(assert (not b!2840632))

(assert b_and!208417)

(assert b_and!208411)

(assert (not b_next!83045))

(assert (not b_next!83041))

(assert (not b!2840673))

(assert (not b!2840676))

(assert (not b!2840638))

(assert (not b!2840630))

(assert (not b!2840701))

(assert (not b!2840631))

(assert (not d!823739))

(assert (not b!2840649))

(assert (not b!2840593))

(assert (not b_lambda!85395))

(assert (not b!2840620))

(assert (not b!2840622))

(assert (not d!823751))

(assert (not tb!154859))

(assert (not d!823759))

(assert (not b!2840644))

(assert (not b!2840640))

(assert (not b!2840679))

(assert (not d!823741))

(assert (not b!2840696))

(assert (not b_next!83037))

(assert (not b!2840572))

(assert b_and!208405)

(assert (not b_next!83047))

(assert b_and!208407)

(assert (not b!2840621))

(assert (not b_next!83063))

(assert (not b!2840554))

(assert (not b!2840693))

(assert b_and!208409)

(assert (not b!2840675))

(assert (not tb!154853))

(assert (not b!2840672))

(assert (not b!2840699))

(assert b_and!208415)

(assert (not b!2840697))

(assert b_and!208401)

(assert (not b!2840584))

(assert (not b!2840691))

(assert (not b!2840604))

(assert (not b!2840637))

(assert (not b!2840567))

(assert (not d!823763))

(assert (not d!823729))

(assert (not b_next!83069))

(assert (not b!2840555))

(assert (not b!2840660))

(assert (not b!2840692))

(assert (not b!2840590))

(assert (not b!2840566))

(assert (not b!2840695))

(assert (not b_next!83043))

(assert (not d!823753))

(assert b_and!208403)

(assert (not b_next!83039))

(assert (not b!2840614))

(assert b_and!208371)

(assert (not b!2840556))

(assert (not b!2840629))

(assert (not b_next!83071))

(assert (not b!2840626))

(assert (not b_next!83065))

(assert (not b!2840639))

(assert (not b!2840595))

(assert (not b!2840677))

(check-sat)

(pop 1)

(push 1)

(assert b_and!208379)

(assert b_and!208417)

(assert b_and!208407)

(assert b_and!208415)

(assert b_and!208401)

(assert (not b_next!83069))

(assert (not b_next!83043))

(assert b_and!208371)

(assert (not b_next!83071))

(assert (not b_next!83065))

(assert b_and!208413)

(assert (not b_next!83067))

(assert (not b_next!83061))

(assert b_and!208375)

(assert b_and!208411)

(assert (not b_next!83045))

(assert (not b_next!83041))

(assert (not b_next!83037))

(assert b_and!208405)

(assert (not b_next!83047))

(assert (not b_next!83063))

(assert b_and!208409)

(assert b_and!208403)

(assert (not b_next!83039))

(check-sat)

(pop 1)

