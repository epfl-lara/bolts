; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!275970 () Bool)

(assert start!275970)

(declare-fun b!2837409 () Bool)

(declare-fun b_free!81925 () Bool)

(declare-fun b_next!82629 () Bool)

(assert (=> b!2837409 (= b_free!81925 (not b_next!82629))))

(declare-fun tp!908107 () Bool)

(declare-fun b_and!207795 () Bool)

(assert (=> b!2837409 (= tp!908107 b_and!207795)))

(declare-fun b_free!81927 () Bool)

(declare-fun b_next!82631 () Bool)

(assert (=> b!2837409 (= b_free!81927 (not b_next!82631))))

(declare-fun tp!908112 () Bool)

(declare-fun b_and!207797 () Bool)

(assert (=> b!2837409 (= tp!908112 b_and!207797)))

(declare-fun b!2837422 () Bool)

(declare-fun b_free!81929 () Bool)

(declare-fun b_next!82633 () Bool)

(assert (=> b!2837422 (= b_free!81929 (not b_next!82633))))

(declare-fun tp!908104 () Bool)

(declare-fun b_and!207799 () Bool)

(assert (=> b!2837422 (= tp!908104 b_and!207799)))

(declare-fun b_free!81931 () Bool)

(declare-fun b_next!82635 () Bool)

(assert (=> b!2837422 (= b_free!81931 (not b_next!82635))))

(declare-fun tp!908108 () Bool)

(declare-fun b_and!207801 () Bool)

(assert (=> b!2837422 (= tp!908108 b_and!207801)))

(declare-fun b!2837418 () Bool)

(declare-fun b_free!81933 () Bool)

(declare-fun b_next!82637 () Bool)

(assert (=> b!2837418 (= b_free!81933 (not b_next!82637))))

(declare-fun tp!908100 () Bool)

(declare-fun b_and!207803 () Bool)

(assert (=> b!2837418 (= tp!908100 b_and!207803)))

(declare-fun b_free!81935 () Bool)

(declare-fun b_next!82639 () Bool)

(assert (=> b!2837418 (= b_free!81935 (not b_next!82639))))

(declare-fun tp!908105 () Bool)

(declare-fun b_and!207805 () Bool)

(assert (=> b!2837418 (= tp!908105 b_and!207805)))

(declare-fun e!1796857 () Bool)

(assert (=> b!2837409 (= e!1796857 (and tp!908107 tp!908112))))

(declare-fun b!2837410 () Bool)

(declare-fun res!1180697 () Bool)

(declare-fun e!1796863 () Bool)

(assert (=> b!2837410 (=> (not res!1180697) (not e!1796863))))

(declare-datatypes ((C!17038 0))(
  ( (C!17039 (val!10531 Int)) )
))
(declare-datatypes ((List!33654 0))(
  ( (Nil!33530) (Cons!33530 (h!38950 C!17038) (t!232031 List!33654)) )
))
(declare-datatypes ((Regex!8428 0))(
  ( (ElementMatch!8428 (c!458414 C!17038)) (Concat!13695 (regOne!17368 Regex!8428) (regTwo!17368 Regex!8428)) (EmptyExpr!8428) (Star!8428 (reg!8757 Regex!8428)) (EmptyLang!8428) (Union!8428 (regOne!17369 Regex!8428) (regTwo!17369 Regex!8428)) )
))
(declare-datatypes ((String!36858 0))(
  ( (String!36859 (value!161899 String)) )
))
(declare-datatypes ((List!33655 0))(
  ( (Nil!33531) (Cons!33531 (h!38951 (_ BitVec 16)) (t!232032 List!33655)) )
))
(declare-datatypes ((TokenValue!5267 0))(
  ( (FloatLiteralValue!10534 (text!37314 List!33655)) (TokenValueExt!5266 (__x!22272 Int)) (Broken!26335 (value!161900 List!33655)) (Object!5390) (End!5267) (Def!5267) (Underscore!5267) (Match!5267) (Else!5267) (Error!5267) (Case!5267) (If!5267) (Extends!5267) (Abstract!5267) (Class!5267) (Val!5267) (DelimiterValue!10534 (del!5327 List!33655)) (KeywordValue!5273 (value!161901 List!33655)) (CommentValue!10534 (value!161902 List!33655)) (WhitespaceValue!10534 (value!161903 List!33655)) (IndentationValue!5267 (value!161904 List!33655)) (String!36860) (Int32!5267) (Broken!26336 (value!161905 List!33655)) (Boolean!5268) (Unit!47447) (OperatorValue!5270 (op!5327 List!33655)) (IdentifierValue!10534 (value!161906 List!33655)) (IdentifierValue!10535 (value!161907 List!33655)) (WhitespaceValue!10535 (value!161908 List!33655)) (True!10534) (False!10534) (Broken!26337 (value!161909 List!33655)) (Broken!26338 (value!161910 List!33655)) (True!10535) (RightBrace!5267) (RightBracket!5267) (Colon!5267) (Null!5267) (Comma!5267) (LeftBracket!5267) (False!10535) (LeftBrace!5267) (ImaginaryLiteralValue!5267 (text!37315 List!33655)) (StringLiteralValue!15801 (value!161911 List!33655)) (EOFValue!5267 (value!161912 List!33655)) (IdentValue!5267 (value!161913 List!33655)) (DelimiterValue!10535 (value!161914 List!33655)) (DedentValue!5267 (value!161915 List!33655)) (NewLineValue!5267 (value!161916 List!33655)) (IntegerValue!15801 (value!161917 (_ BitVec 32)) (text!37316 List!33655)) (IntegerValue!15802 (value!161918 Int) (text!37317 List!33655)) (Times!5267) (Or!5267) (Equal!5267) (Minus!5267) (Broken!26339 (value!161919 List!33655)) (And!5267) (Div!5267) (LessEqual!5267) (Mod!5267) (Concat!13696) (Not!5267) (Plus!5267) (SpaceValue!5267 (value!161920 List!33655)) (IntegerValue!15803 (value!161921 Int) (text!37318 List!33655)) (StringLiteralValue!15802 (text!37319 List!33655)) (FloatLiteralValue!10535 (text!37320 List!33655)) (BytesLiteralValue!5267 (value!161922 List!33655)) (CommentValue!10535 (value!161923 List!33655)) (StringLiteralValue!15803 (value!161924 List!33655)) (ErrorTokenValue!5267 (msg!5328 List!33655)) )
))
(declare-datatypes ((IArray!20839 0))(
  ( (IArray!20840 (innerList!10477 List!33654)) )
))
(declare-datatypes ((Conc!10417 0))(
  ( (Node!10417 (left!25287 Conc!10417) (right!25617 Conc!10417) (csize!21064 Int) (cheight!10628 Int)) (Leaf!15844 (xs!13529 IArray!20839) (csize!21065 Int)) (Empty!10417) )
))
(declare-datatypes ((BalanceConc!20472 0))(
  ( (BalanceConc!20473 (c!458415 Conc!10417)) )
))
(declare-datatypes ((TokenValueInjection!9962 0))(
  ( (TokenValueInjection!9963 (toValue!7079 Int) (toChars!6938 Int)) )
))
(declare-datatypes ((Rule!9874 0))(
  ( (Rule!9875 (regex!5037 Regex!8428) (tag!5541 String!36858) (isSeparator!5037 Bool) (transformation!5037 TokenValueInjection!9962)) )
))
(declare-datatypes ((List!33656 0))(
  ( (Nil!33532) (Cons!33532 (h!38952 Rule!9874) (t!232033 List!33656)) )
))
(declare-fun rules!4246 () List!33656)

(declare-fun isEmpty!18482 (List!33656) Bool)

(assert (=> b!2837410 (= res!1180697 (not (isEmpty!18482 rules!4246)))))

(declare-fun b!2837411 () Bool)

(declare-fun e!1796864 () Bool)

(declare-fun e!1796852 () Bool)

(declare-fun tp!908101 () Bool)

(assert (=> b!2837411 (= e!1796864 (and e!1796852 tp!908101))))

(declare-fun res!1180695 () Bool)

(assert (=> start!275970 (=> (not res!1180695) (not e!1796863))))

(declare-datatypes ((LexerInterface!4627 0))(
  ( (LexerInterfaceExt!4624 (__x!22273 Int)) (Lexer!4625) )
))
(declare-fun thiss!27264 () LexerInterface!4627)

(assert (=> start!275970 (= res!1180695 (is-Lexer!4625 thiss!27264))))

(assert (=> start!275970 e!1796863))

(assert (=> start!275970 true))

(assert (=> start!275970 e!1796864))

(declare-fun e!1796858 () Bool)

(assert (=> start!275970 e!1796858))

(declare-fun e!1796861 () Bool)

(assert (=> start!275970 e!1796861))

(declare-fun b!2837412 () Bool)

(declare-fun res!1180698 () Bool)

(assert (=> b!2837412 (=> (not res!1180698) (not e!1796863))))

(declare-fun rulesInvariant!4043 (LexerInterface!4627 List!33656) Bool)

(assert (=> b!2837412 (= res!1180698 (rulesInvariant!4043 thiss!27264 rules!4246))))

(declare-fun e!1796848 () Bool)

(declare-fun b!2837413 () Bool)

(declare-fun tp!908106 () Bool)

(declare-fun inv!45498 (String!36858) Bool)

(declare-fun inv!45501 (TokenValueInjection!9962) Bool)

(assert (=> b!2837413 (= e!1796852 (and tp!908106 (inv!45498 (tag!5541 (h!38952 rules!4246))) (inv!45501 (transformation!5037 (h!38952 rules!4246))) e!1796848))))

(declare-fun b!2837414 () Bool)

(declare-fun e!1796854 () Bool)

(declare-fun tp!908102 () Bool)

(declare-datatypes ((Token!9476 0))(
  ( (Token!9477 (value!161925 TokenValue!5267) (rule!7465 Rule!9874) (size!26070 Int) (originalCharacters!5769 List!33654)) )
))
(declare-datatypes ((List!33657 0))(
  ( (Nil!33533) (Cons!33533 (h!38953 Token!9476) (t!232034 List!33657)) )
))
(declare-fun tokensBis!14 () List!33657)

(declare-fun inv!45502 (Token!9476) Bool)

(assert (=> b!2837414 (= e!1796858 (and (inv!45502 (h!38953 tokensBis!14)) e!1796854 tp!908102))))

(declare-fun e!1796855 () Bool)

(declare-fun b!2837415 () Bool)

(declare-fun tokens!612 () List!33657)

(declare-fun tp!908109 () Bool)

(assert (=> b!2837415 (= e!1796861 (and (inv!45502 (h!38953 tokens!612)) e!1796855 tp!908109))))

(declare-fun b!2837416 () Bool)

(declare-fun res!1180694 () Bool)

(assert (=> b!2837416 (=> (not res!1180694) (not e!1796863))))

(declare-fun rulesProduceEachTokenIndividuallyList!1668 (LexerInterface!4627 List!33656 List!33657) Bool)

(assert (=> b!2837416 (= res!1180694 (rulesProduceEachTokenIndividuallyList!1668 thiss!27264 rules!4246 tokens!612))))

(declare-fun e!1796860 () Bool)

(declare-fun tp!908103 () Bool)

(declare-fun b!2837417 () Bool)

(assert (=> b!2837417 (= e!1796860 (and tp!908103 (inv!45498 (tag!5541 (rule!7465 (h!38953 tokens!612)))) (inv!45501 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) e!1796857))))

(declare-fun e!1796851 () Bool)

(assert (=> b!2837418 (= e!1796851 (and tp!908100 tp!908105))))

(declare-fun e!1796853 () Bool)

(declare-fun tp!908111 () Bool)

(declare-fun b!2837419 () Bool)

(assert (=> b!2837419 (= e!1796853 (and tp!908111 (inv!45498 (tag!5541 (rule!7465 (h!38953 tokensBis!14)))) (inv!45501 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) e!1796851))))

(declare-fun tp!908099 () Bool)

(declare-fun b!2837420 () Bool)

(declare-fun inv!21 (TokenValue!5267) Bool)

(assert (=> b!2837420 (= e!1796854 (and (inv!21 (value!161925 (h!38953 tokensBis!14))) e!1796853 tp!908099))))

(declare-fun b!2837421 () Bool)

(declare-fun ListPrimitiveSize!224 (List!33657) Int)

(assert (=> b!2837421 (= e!1796863 (< (ListPrimitiveSize!224 tokens!612) 0))))

(assert (=> b!2837422 (= e!1796848 (and tp!908104 tp!908108))))

(declare-fun b!2837423 () Bool)

(declare-fun res!1180696 () Bool)

(assert (=> b!2837423 (=> (not res!1180696) (not e!1796863))))

(declare-fun subseq!503 (List!33657 List!33657) Bool)

(assert (=> b!2837423 (= res!1180696 (subseq!503 tokensBis!14 tokens!612))))

(declare-fun b!2837424 () Bool)

(declare-fun tp!908110 () Bool)

(assert (=> b!2837424 (= e!1796855 (and (inv!21 (value!161925 (h!38953 tokens!612))) e!1796860 tp!908110))))

(assert (= (and start!275970 res!1180695) b!2837410))

(assert (= (and b!2837410 res!1180697) b!2837412))

(assert (= (and b!2837412 res!1180698) b!2837423))

(assert (= (and b!2837423 res!1180696) b!2837416))

(assert (= (and b!2837416 res!1180694) b!2837421))

(assert (= b!2837413 b!2837422))

(assert (= b!2837411 b!2837413))

(assert (= (and start!275970 (is-Cons!33532 rules!4246)) b!2837411))

(assert (= b!2837419 b!2837418))

(assert (= b!2837420 b!2837419))

(assert (= b!2837414 b!2837420))

(assert (= (and start!275970 (is-Cons!33533 tokensBis!14)) b!2837414))

(assert (= b!2837417 b!2837409))

(assert (= b!2837424 b!2837417))

(assert (= b!2837415 b!2837424))

(assert (= (and start!275970 (is-Cons!33533 tokens!612)) b!2837415))

(declare-fun m!3266983 () Bool)

(assert (=> b!2837414 m!3266983))

(declare-fun m!3266985 () Bool)

(assert (=> b!2837412 m!3266985))

(declare-fun m!3266987 () Bool)

(assert (=> b!2837424 m!3266987))

(declare-fun m!3266989 () Bool)

(assert (=> b!2837417 m!3266989))

(declare-fun m!3266991 () Bool)

(assert (=> b!2837417 m!3266991))

(declare-fun m!3266993 () Bool)

(assert (=> b!2837420 m!3266993))

(declare-fun m!3266995 () Bool)

(assert (=> b!2837419 m!3266995))

(declare-fun m!3266997 () Bool)

(assert (=> b!2837419 m!3266997))

(declare-fun m!3266999 () Bool)

(assert (=> b!2837410 m!3266999))

(declare-fun m!3267001 () Bool)

(assert (=> b!2837421 m!3267001))

(declare-fun m!3267003 () Bool)

(assert (=> b!2837423 m!3267003))

(declare-fun m!3267005 () Bool)

(assert (=> b!2837416 m!3267005))

(declare-fun m!3267007 () Bool)

(assert (=> b!2837413 m!3267007))

(declare-fun m!3267009 () Bool)

(assert (=> b!2837413 m!3267009))

(declare-fun m!3267011 () Bool)

(assert (=> b!2837415 m!3267011))

(push 1)

(assert (not b_next!82637))

(assert (not b!2837416))

(assert (not b!2837412))

(assert (not b!2837424))

(assert (not b!2837415))

(assert (not b_next!82633))

(assert (not b!2837419))

(assert (not b!2837423))

(assert (not b_next!82639))

(assert (not b!2837410))

(assert b_and!207805)

(assert (not b!2837411))

(assert (not b!2837417))

(assert (not b!2837421))

(assert (not b_next!82629))

(assert (not b_next!82635))

(assert b_and!207799)

(assert b_and!207795)

(assert (not b!2837413))

(assert (not b!2837420))

(assert b_and!207801)

(assert b_and!207803)

(assert (not b!2837414))

(assert b_and!207797)

(assert (not b_next!82631))

(check-sat)

(pop 1)

(push 1)

(assert b_and!207795)

(assert (not b_next!82637))

(assert b_and!207801)

(assert (not b_next!82633))

(assert b_and!207803)

(assert (not b_next!82639))

(assert b_and!207805)

(assert (not b_next!82629))

(assert (not b_next!82635))

(assert b_and!207799)

(assert b_and!207797)

(assert (not b_next!82631))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!823253 () Bool)

(declare-fun res!1180721 () Bool)

(declare-fun e!1796923 () Bool)

(assert (=> d!823253 (=> (not res!1180721) (not e!1796923))))

(declare-fun rulesValid!1862 (LexerInterface!4627 List!33656) Bool)

(assert (=> d!823253 (= res!1180721 (rulesValid!1862 thiss!27264 rules!4246))))

(assert (=> d!823253 (= (rulesInvariant!4043 thiss!27264 rules!4246) e!1796923)))

(declare-fun b!2837480 () Bool)

(declare-datatypes ((List!33662 0))(
  ( (Nil!33538) (Cons!33538 (h!38958 String!36858) (t!232073 List!33662)) )
))
(declare-fun noDuplicateTag!1858 (LexerInterface!4627 List!33656 List!33662) Bool)

(assert (=> b!2837480 (= e!1796923 (noDuplicateTag!1858 thiss!27264 rules!4246 Nil!33538))))

(assert (= (and d!823253 res!1180721) b!2837480))

(declare-fun m!3267047 () Bool)

(assert (=> d!823253 m!3267047))

(declare-fun m!3267049 () Bool)

(assert (=> b!2837480 m!3267049))

(assert (=> b!2837412 d!823253))

(declare-fun b!2837501 () Bool)

(declare-fun e!1796942 () Bool)

(assert (=> b!2837501 (= e!1796942 (subseq!503 tokensBis!14 (t!232034 tokens!612)))))

(declare-fun b!2837498 () Bool)

(declare-fun e!1796944 () Bool)

(declare-fun e!1796941 () Bool)

(assert (=> b!2837498 (= e!1796944 e!1796941)))

(declare-fun res!1180740 () Bool)

(assert (=> b!2837498 (=> (not res!1180740) (not e!1796941))))

(assert (=> b!2837498 (= res!1180740 (is-Cons!33533 tokens!612))))

(declare-fun b!2837500 () Bool)

(declare-fun e!1796943 () Bool)

(assert (=> b!2837500 (= e!1796943 (subseq!503 (t!232034 tokensBis!14) (t!232034 tokens!612)))))

(declare-fun b!2837499 () Bool)

(assert (=> b!2837499 (= e!1796941 e!1796942)))

(declare-fun res!1180741 () Bool)

(assert (=> b!2837499 (=> res!1180741 e!1796942)))

(assert (=> b!2837499 (= res!1180741 e!1796943)))

(declare-fun res!1180742 () Bool)

(assert (=> b!2837499 (=> (not res!1180742) (not e!1796943))))

(assert (=> b!2837499 (= res!1180742 (= (h!38953 tokensBis!14) (h!38953 tokens!612)))))

(declare-fun d!823257 () Bool)

(declare-fun res!1180739 () Bool)

(assert (=> d!823257 (=> res!1180739 e!1796944)))

(assert (=> d!823257 (= res!1180739 (is-Nil!33533 tokensBis!14))))

(assert (=> d!823257 (= (subseq!503 tokensBis!14 tokens!612) e!1796944)))

(assert (= (and d!823257 (not res!1180739)) b!2837498))

(assert (= (and b!2837498 res!1180740) b!2837499))

(assert (= (and b!2837499 res!1180742) b!2837500))

(assert (= (and b!2837499 (not res!1180741)) b!2837501))

(declare-fun m!3267055 () Bool)

(assert (=> b!2837501 m!3267055))

(declare-fun m!3267057 () Bool)

(assert (=> b!2837500 m!3267057))

(assert (=> b!2837423 d!823257))

(declare-fun d!823261 () Bool)

(declare-fun lt!1011482 () Int)

(assert (=> d!823261 (>= lt!1011482 0)))

(declare-fun e!1796951 () Int)

(assert (=> d!823261 (= lt!1011482 e!1796951)))

(declare-fun c!458420 () Bool)

(assert (=> d!823261 (= c!458420 (is-Nil!33533 tokens!612))))

(assert (=> d!823261 (= (ListPrimitiveSize!224 tokens!612) lt!1011482)))

(declare-fun b!2837510 () Bool)

(assert (=> b!2837510 (= e!1796951 0)))

(declare-fun b!2837511 () Bool)

(assert (=> b!2837511 (= e!1796951 (+ 1 (ListPrimitiveSize!224 (t!232034 tokens!612))))))

(assert (= (and d!823261 c!458420) b!2837510))

(assert (= (and d!823261 (not c!458420)) b!2837511))

(declare-fun m!3267063 () Bool)

(assert (=> b!2837511 m!3267063))

(assert (=> b!2837421 d!823261))

(declare-fun d!823265 () Bool)

(declare-fun res!1180753 () Bool)

(declare-fun e!1796960 () Bool)

(assert (=> d!823265 (=> (not res!1180753) (not e!1796960))))

(declare-fun isEmpty!18484 (List!33654) Bool)

(assert (=> d!823265 (= res!1180753 (not (isEmpty!18484 (originalCharacters!5769 (h!38953 tokens!612)))))))

(assert (=> d!823265 (= (inv!45502 (h!38953 tokens!612)) e!1796960)))

(declare-fun b!2837526 () Bool)

(declare-fun res!1180754 () Bool)

(assert (=> b!2837526 (=> (not res!1180754) (not e!1796960))))

(declare-fun list!12521 (BalanceConc!20472) List!33654)

(declare-fun dynLambda!14092 (Int TokenValue!5267) BalanceConc!20472)

(assert (=> b!2837526 (= res!1180754 (= (originalCharacters!5769 (h!38953 tokens!612)) (list!12521 (dynLambda!14092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (value!161925 (h!38953 tokens!612))))))))

(declare-fun b!2837527 () Bool)

(declare-fun size!26072 (List!33654) Int)

(assert (=> b!2837527 (= e!1796960 (= (size!26070 (h!38953 tokens!612)) (size!26072 (originalCharacters!5769 (h!38953 tokens!612)))))))

(assert (= (and d!823265 res!1180753) b!2837526))

(assert (= (and b!2837526 res!1180754) b!2837527))

(declare-fun b_lambda!85279 () Bool)

(assert (=> (not b_lambda!85279) (not b!2837526)))

(declare-fun t!232040 () Bool)

(declare-fun tb!154517 () Bool)

(assert (=> (and b!2837409 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612))))) t!232040) tb!154517))

(declare-fun b!2837538 () Bool)

(declare-fun e!1796967 () Bool)

(declare-fun tp!908157 () Bool)

(declare-fun inv!45505 (Conc!10417) Bool)

(assert (=> b!2837538 (= e!1796967 (and (inv!45505 (c!458415 (dynLambda!14092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (value!161925 (h!38953 tokens!612))))) tp!908157))))

(declare-fun result!192702 () Bool)

(declare-fun inv!45506 (BalanceConc!20472) Bool)

(assert (=> tb!154517 (= result!192702 (and (inv!45506 (dynLambda!14092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (value!161925 (h!38953 tokens!612)))) e!1796967))))

(assert (= tb!154517 b!2837538))

(declare-fun m!3267075 () Bool)

(assert (=> b!2837538 m!3267075))

(declare-fun m!3267077 () Bool)

(assert (=> tb!154517 m!3267077))

(assert (=> b!2837526 t!232040))

(declare-fun b_and!207819 () Bool)

(assert (= b_and!207797 (and (=> t!232040 result!192702) b_and!207819)))

(declare-fun t!232042 () Bool)

(declare-fun tb!154519 () Bool)

(assert (=> (and b!2837422 (= (toChars!6938 (transformation!5037 (h!38952 rules!4246))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612))))) t!232042) tb!154519))

(declare-fun result!192706 () Bool)

(assert (= result!192706 result!192702))

(assert (=> b!2837526 t!232042))

(declare-fun b_and!207821 () Bool)

(assert (= b_and!207801 (and (=> t!232042 result!192706) b_and!207821)))

(declare-fun tb!154521 () Bool)

(declare-fun t!232044 () Bool)

(assert (=> (and b!2837418 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612))))) t!232044) tb!154521))

(declare-fun result!192708 () Bool)

(assert (= result!192708 result!192702))

(assert (=> b!2837526 t!232044))

(declare-fun b_and!207823 () Bool)

(assert (= b_and!207805 (and (=> t!232044 result!192708) b_and!207823)))

(declare-fun m!3267079 () Bool)

(assert (=> d!823265 m!3267079))

(declare-fun m!3267081 () Bool)

(assert (=> b!2837526 m!3267081))

(assert (=> b!2837526 m!3267081))

(declare-fun m!3267083 () Bool)

(assert (=> b!2837526 m!3267083))

(declare-fun m!3267085 () Bool)

(assert (=> b!2837527 m!3267085))

(assert (=> b!2837415 d!823265))

(declare-fun d!823273 () Bool)

(assert (=> d!823273 (= (inv!45498 (tag!5541 (h!38952 rules!4246))) (= (mod (str.len (value!161899 (tag!5541 (h!38952 rules!4246)))) 2) 0))))

(assert (=> b!2837413 d!823273))

(declare-fun d!823275 () Bool)

(declare-fun res!1180763 () Bool)

(declare-fun e!1796972 () Bool)

(assert (=> d!823275 (=> (not res!1180763) (not e!1796972))))

(declare-fun semiInverseModEq!2092 (Int Int) Bool)

(assert (=> d!823275 (= res!1180763 (semiInverseModEq!2092 (toChars!6938 (transformation!5037 (h!38952 rules!4246))) (toValue!7079 (transformation!5037 (h!38952 rules!4246)))))))

(assert (=> d!823275 (= (inv!45501 (transformation!5037 (h!38952 rules!4246))) e!1796972)))

(declare-fun b!2837545 () Bool)

(declare-fun equivClasses!1991 (Int Int) Bool)

(assert (=> b!2837545 (= e!1796972 (equivClasses!1991 (toChars!6938 (transformation!5037 (h!38952 rules!4246))) (toValue!7079 (transformation!5037 (h!38952 rules!4246)))))))

(assert (= (and d!823275 res!1180763) b!2837545))

(declare-fun m!3267087 () Bool)

(assert (=> d!823275 m!3267087))

(declare-fun m!3267089 () Bool)

(assert (=> b!2837545 m!3267089))

(assert (=> b!2837413 d!823275))

(declare-fun b!2837563 () Bool)

(declare-fun e!1796983 () Bool)

(declare-fun inv!16 (TokenValue!5267) Bool)

(assert (=> b!2837563 (= e!1796983 (inv!16 (value!161925 (h!38953 tokens!612))))))

(declare-fun b!2837564 () Bool)

(declare-fun e!1796984 () Bool)

(declare-fun inv!17 (TokenValue!5267) Bool)

(assert (=> b!2837564 (= e!1796984 (inv!17 (value!161925 (h!38953 tokens!612))))))

(declare-fun b!2837565 () Bool)

(declare-fun e!1796985 () Bool)

(declare-fun inv!15 (TokenValue!5267) Bool)

(assert (=> b!2837565 (= e!1796985 (inv!15 (value!161925 (h!38953 tokens!612))))))

(declare-fun d!823277 () Bool)

(declare-fun c!458431 () Bool)

(assert (=> d!823277 (= c!458431 (is-IntegerValue!15801 (value!161925 (h!38953 tokens!612))))))

(assert (=> d!823277 (= (inv!21 (value!161925 (h!38953 tokens!612))) e!1796983)))

(declare-fun b!2837566 () Bool)

(assert (=> b!2837566 (= e!1796983 e!1796984)))

(declare-fun c!458432 () Bool)

(assert (=> b!2837566 (= c!458432 (is-IntegerValue!15802 (value!161925 (h!38953 tokens!612))))))

(declare-fun b!2837567 () Bool)

(declare-fun res!1180768 () Bool)

(assert (=> b!2837567 (=> res!1180768 e!1796985)))

(assert (=> b!2837567 (= res!1180768 (not (is-IntegerValue!15803 (value!161925 (h!38953 tokens!612)))))))

(assert (=> b!2837567 (= e!1796984 e!1796985)))

(assert (= (and d!823277 c!458431) b!2837563))

(assert (= (and d!823277 (not c!458431)) b!2837566))

(assert (= (and b!2837566 c!458432) b!2837564))

(assert (= (and b!2837566 (not c!458432)) b!2837567))

(assert (= (and b!2837567 (not res!1180768)) b!2837565))

(declare-fun m!3267103 () Bool)

(assert (=> b!2837563 m!3267103))

(declare-fun m!3267105 () Bool)

(assert (=> b!2837564 m!3267105))

(declare-fun m!3267107 () Bool)

(assert (=> b!2837565 m!3267107))

(assert (=> b!2837424 d!823277))

(declare-fun d!823281 () Bool)

(declare-fun res!1180769 () Bool)

(declare-fun e!1796986 () Bool)

(assert (=> d!823281 (=> (not res!1180769) (not e!1796986))))

(assert (=> d!823281 (= res!1180769 (not (isEmpty!18484 (originalCharacters!5769 (h!38953 tokensBis!14)))))))

(assert (=> d!823281 (= (inv!45502 (h!38953 tokensBis!14)) e!1796986)))

(declare-fun b!2837568 () Bool)

(declare-fun res!1180770 () Bool)

(assert (=> b!2837568 (=> (not res!1180770) (not e!1796986))))

(assert (=> b!2837568 (= res!1180770 (= (originalCharacters!5769 (h!38953 tokensBis!14)) (list!12521 (dynLambda!14092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (value!161925 (h!38953 tokensBis!14))))))))

(declare-fun b!2837569 () Bool)

(assert (=> b!2837569 (= e!1796986 (= (size!26070 (h!38953 tokensBis!14)) (size!26072 (originalCharacters!5769 (h!38953 tokensBis!14)))))))

(assert (= (and d!823281 res!1180769) b!2837568))

(assert (= (and b!2837568 res!1180770) b!2837569))

(declare-fun b_lambda!85283 () Bool)

(assert (=> (not b_lambda!85283) (not b!2837568)))

(declare-fun t!232052 () Bool)

(declare-fun tb!154529 () Bool)

(assert (=> (and b!2837409 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))) t!232052) tb!154529))

(declare-fun b!2837570 () Bool)

(declare-fun e!1796987 () Bool)

(declare-fun tp!908161 () Bool)

(assert (=> b!2837570 (= e!1796987 (and (inv!45505 (c!458415 (dynLambda!14092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (value!161925 (h!38953 tokensBis!14))))) tp!908161))))

(declare-fun result!192718 () Bool)

(assert (=> tb!154529 (= result!192718 (and (inv!45506 (dynLambda!14092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (value!161925 (h!38953 tokensBis!14)))) e!1796987))))

(assert (= tb!154529 b!2837570))

(declare-fun m!3267109 () Bool)

(assert (=> b!2837570 m!3267109))

(declare-fun m!3267111 () Bool)

(assert (=> tb!154529 m!3267111))

(assert (=> b!2837568 t!232052))

(declare-fun b_and!207831 () Bool)

(assert (= b_and!207819 (and (=> t!232052 result!192718) b_and!207831)))

(declare-fun tb!154531 () Bool)

(declare-fun t!232054 () Bool)

(assert (=> (and b!2837422 (= (toChars!6938 (transformation!5037 (h!38952 rules!4246))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))) t!232054) tb!154531))

(declare-fun result!192720 () Bool)

(assert (= result!192720 result!192718))

(assert (=> b!2837568 t!232054))

(declare-fun b_and!207833 () Bool)

(assert (= b_and!207821 (and (=> t!232054 result!192720) b_and!207833)))

(declare-fun t!232056 () Bool)

(declare-fun tb!154533 () Bool)

(assert (=> (and b!2837418 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))) t!232056) tb!154533))

(declare-fun result!192722 () Bool)

(assert (= result!192722 result!192718))

(assert (=> b!2837568 t!232056))

(declare-fun b_and!207835 () Bool)

(assert (= b_and!207823 (and (=> t!232056 result!192722) b_and!207835)))

(declare-fun m!3267113 () Bool)

(assert (=> d!823281 m!3267113))

(declare-fun m!3267115 () Bool)

(assert (=> b!2837568 m!3267115))

(assert (=> b!2837568 m!3267115))

(declare-fun m!3267117 () Bool)

(assert (=> b!2837568 m!3267117))

(declare-fun m!3267119 () Bool)

(assert (=> b!2837569 m!3267119))

(assert (=> b!2837414 d!823281))

(declare-fun d!823283 () Bool)

(assert (=> d!823283 (= (inv!45498 (tag!5541 (rule!7465 (h!38953 tokens!612)))) (= (mod (str.len (value!161899 (tag!5541 (rule!7465 (h!38953 tokens!612))))) 2) 0))))

(assert (=> b!2837417 d!823283))

(declare-fun d!823285 () Bool)

(declare-fun res!1180771 () Bool)

(declare-fun e!1796988 () Bool)

(assert (=> d!823285 (=> (not res!1180771) (not e!1796988))))

(assert (=> d!823285 (= res!1180771 (semiInverseModEq!2092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (toValue!7079 (transformation!5037 (rule!7465 (h!38953 tokens!612))))))))

(assert (=> d!823285 (= (inv!45501 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) e!1796988)))

(declare-fun b!2837571 () Bool)

(assert (=> b!2837571 (= e!1796988 (equivClasses!1991 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (toValue!7079 (transformation!5037 (rule!7465 (h!38953 tokens!612))))))))

(assert (= (and d!823285 res!1180771) b!2837571))

(declare-fun m!3267121 () Bool)

(assert (=> d!823285 m!3267121))

(declare-fun m!3267123 () Bool)

(assert (=> b!2837571 m!3267123))

(assert (=> b!2837417 d!823285))

(declare-fun b!2837592 () Bool)

(declare-fun e!1797007 () Bool)

(assert (=> b!2837592 (= e!1797007 true)))

(declare-fun b!2837591 () Bool)

(declare-fun e!1797006 () Bool)

(assert (=> b!2837591 (= e!1797006 e!1797007)))

(declare-fun b!2837590 () Bool)

(declare-fun e!1797005 () Bool)

(assert (=> b!2837590 (= e!1797005 e!1797006)))

(declare-fun d!823287 () Bool)

(assert (=> d!823287 e!1797005))

(assert (= b!2837591 b!2837592))

(assert (= b!2837590 b!2837591))

(assert (= (and d!823287 (is-Cons!33532 rules!4246)) b!2837590))

(declare-fun order!17893 () Int)

(declare-fun lambda!104178 () Int)

(declare-fun order!17895 () Int)

(declare-fun dynLambda!14093 (Int Int) Int)

(declare-fun dynLambda!14094 (Int Int) Int)

(assert (=> b!2837592 (< (dynLambda!14093 order!17893 (toValue!7079 (transformation!5037 (h!38952 rules!4246)))) (dynLambda!14094 order!17895 lambda!104178))))

(declare-fun order!17897 () Int)

(declare-fun dynLambda!14095 (Int Int) Int)

(assert (=> b!2837592 (< (dynLambda!14095 order!17897 (toChars!6938 (transformation!5037 (h!38952 rules!4246)))) (dynLambda!14094 order!17895 lambda!104178))))

(assert (=> d!823287 true))

(declare-fun lt!1011487 () Bool)

(declare-fun forall!6898 (List!33657 Int) Bool)

(assert (=> d!823287 (= lt!1011487 (forall!6898 tokens!612 lambda!104178))))

(declare-fun e!1796998 () Bool)

(assert (=> d!823287 (= lt!1011487 e!1796998)))

(declare-fun res!1180781 () Bool)

(assert (=> d!823287 (=> res!1180781 e!1796998)))

(assert (=> d!823287 (= res!1180781 (not (is-Cons!33533 tokens!612)))))

(assert (=> d!823287 (not (isEmpty!18482 rules!4246))))

(assert (=> d!823287 (= (rulesProduceEachTokenIndividuallyList!1668 thiss!27264 rules!4246 tokens!612) lt!1011487)))

(declare-fun b!2837580 () Bool)

(declare-fun e!1796997 () Bool)

(assert (=> b!2837580 (= e!1796998 e!1796997)))

(declare-fun res!1180780 () Bool)

(assert (=> b!2837580 (=> (not res!1180780) (not e!1796997))))

(declare-fun rulesProduceIndividualToken!2145 (LexerInterface!4627 List!33656 Token!9476) Bool)

(assert (=> b!2837580 (= res!1180780 (rulesProduceIndividualToken!2145 thiss!27264 rules!4246 (h!38953 tokens!612)))))

(declare-fun b!2837581 () Bool)

(assert (=> b!2837581 (= e!1796997 (rulesProduceEachTokenIndividuallyList!1668 thiss!27264 rules!4246 (t!232034 tokens!612)))))

(assert (= (and d!823287 (not res!1180781)) b!2837580))

(assert (= (and b!2837580 res!1180780) b!2837581))

(declare-fun m!3267125 () Bool)

(assert (=> d!823287 m!3267125))

(assert (=> d!823287 m!3266999))

(declare-fun m!3267127 () Bool)

(assert (=> b!2837580 m!3267127))

(declare-fun m!3267129 () Bool)

(assert (=> b!2837581 m!3267129))

(assert (=> b!2837416 d!823287))

(declare-fun b!2837595 () Bool)

(declare-fun e!1797008 () Bool)

(assert (=> b!2837595 (= e!1797008 (inv!16 (value!161925 (h!38953 tokensBis!14))))))

(declare-fun b!2837596 () Bool)

(declare-fun e!1797009 () Bool)

(assert (=> b!2837596 (= e!1797009 (inv!17 (value!161925 (h!38953 tokensBis!14))))))

(declare-fun b!2837597 () Bool)

(declare-fun e!1797010 () Bool)

(assert (=> b!2837597 (= e!1797010 (inv!15 (value!161925 (h!38953 tokensBis!14))))))

(declare-fun d!823289 () Bool)

(declare-fun c!458433 () Bool)

(assert (=> d!823289 (= c!458433 (is-IntegerValue!15801 (value!161925 (h!38953 tokensBis!14))))))

(assert (=> d!823289 (= (inv!21 (value!161925 (h!38953 tokensBis!14))) e!1797008)))

(declare-fun b!2837598 () Bool)

(assert (=> b!2837598 (= e!1797008 e!1797009)))

(declare-fun c!458434 () Bool)

(assert (=> b!2837598 (= c!458434 (is-IntegerValue!15802 (value!161925 (h!38953 tokensBis!14))))))

(declare-fun b!2837599 () Bool)

(declare-fun res!1180782 () Bool)

(assert (=> b!2837599 (=> res!1180782 e!1797010)))

(assert (=> b!2837599 (= res!1180782 (not (is-IntegerValue!15803 (value!161925 (h!38953 tokensBis!14)))))))

(assert (=> b!2837599 (= e!1797009 e!1797010)))

(assert (= (and d!823289 c!458433) b!2837595))

(assert (= (and d!823289 (not c!458433)) b!2837598))

(assert (= (and b!2837598 c!458434) b!2837596))

(assert (= (and b!2837598 (not c!458434)) b!2837599))

(assert (= (and b!2837599 (not res!1180782)) b!2837597))

(declare-fun m!3267131 () Bool)

(assert (=> b!2837595 m!3267131))

(declare-fun m!3267133 () Bool)

(assert (=> b!2837596 m!3267133))

(declare-fun m!3267135 () Bool)

(assert (=> b!2837597 m!3267135))

(assert (=> b!2837420 d!823289))

(declare-fun d!823291 () Bool)

(assert (=> d!823291 (= (isEmpty!18482 rules!4246) (is-Nil!33532 rules!4246))))

(assert (=> b!2837410 d!823291))

(declare-fun d!823293 () Bool)

(assert (=> d!823293 (= (inv!45498 (tag!5541 (rule!7465 (h!38953 tokensBis!14)))) (= (mod (str.len (value!161899 (tag!5541 (rule!7465 (h!38953 tokensBis!14))))) 2) 0))))

(assert (=> b!2837419 d!823293))

(declare-fun d!823295 () Bool)

(declare-fun res!1180783 () Bool)

(declare-fun e!1797011 () Bool)

(assert (=> d!823295 (=> (not res!1180783) (not e!1797011))))

(assert (=> d!823295 (= res!1180783 (semiInverseModEq!2092 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (toValue!7079 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))))))

(assert (=> d!823295 (= (inv!45501 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) e!1797011)))

(declare-fun b!2837600 () Bool)

(assert (=> b!2837600 (= e!1797011 (equivClasses!1991 (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (toValue!7079 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))))))

(assert (= (and d!823295 res!1180783) b!2837600))

(declare-fun m!3267137 () Bool)

(assert (=> d!823295 m!3267137))

(declare-fun m!3267139 () Bool)

(assert (=> b!2837600 m!3267139))

(assert (=> b!2837419 d!823295))

(declare-fun b!2837612 () Bool)

(declare-fun e!1797014 () Bool)

(declare-fun tp!908172 () Bool)

(declare-fun tp!908175 () Bool)

(assert (=> b!2837612 (= e!1797014 (and tp!908172 tp!908175))))

(declare-fun b!2837611 () Bool)

(declare-fun tp_is_empty!14597 () Bool)

(assert (=> b!2837611 (= e!1797014 tp_is_empty!14597)))

(declare-fun b!2837613 () Bool)

(declare-fun tp!908173 () Bool)

(assert (=> b!2837613 (= e!1797014 tp!908173)))

(assert (=> b!2837417 (= tp!908103 e!1797014)))

(declare-fun b!2837614 () Bool)

(declare-fun tp!908174 () Bool)

(declare-fun tp!908176 () Bool)

(assert (=> b!2837614 (= e!1797014 (and tp!908174 tp!908176))))

(assert (= (and b!2837417 (is-ElementMatch!8428 (regex!5037 (rule!7465 (h!38953 tokens!612))))) b!2837611))

(assert (= (and b!2837417 (is-Concat!13695 (regex!5037 (rule!7465 (h!38953 tokens!612))))) b!2837612))

(assert (= (and b!2837417 (is-Star!8428 (regex!5037 (rule!7465 (h!38953 tokens!612))))) b!2837613))

(assert (= (and b!2837417 (is-Union!8428 (regex!5037 (rule!7465 (h!38953 tokens!612))))) b!2837614))

(declare-fun b!2837625 () Bool)

(declare-fun b_free!81949 () Bool)

(declare-fun b_next!82653 () Bool)

(assert (=> b!2837625 (= b_free!81949 (not b_next!82653))))

(declare-fun tp!908188 () Bool)

(declare-fun b_and!207837 () Bool)

(assert (=> b!2837625 (= tp!908188 b_and!207837)))

(declare-fun b_free!81951 () Bool)

(declare-fun b_next!82655 () Bool)

(assert (=> b!2837625 (= b_free!81951 (not b_next!82655))))

(declare-fun t!232062 () Bool)

(declare-fun tb!154535 () Bool)

(assert (=> (and b!2837625 (= (toChars!6938 (transformation!5037 (h!38952 (t!232033 rules!4246)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612))))) t!232062) tb!154535))

(declare-fun result!192728 () Bool)

(assert (= result!192728 result!192702))

(assert (=> b!2837526 t!232062))

(declare-fun tb!154537 () Bool)

(declare-fun t!232064 () Bool)

(assert (=> (and b!2837625 (= (toChars!6938 (transformation!5037 (h!38952 (t!232033 rules!4246)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))) t!232064) tb!154537))

(declare-fun result!192730 () Bool)

(assert (= result!192730 result!192718))

(assert (=> b!2837568 t!232064))

(declare-fun tp!908186 () Bool)

(declare-fun b_and!207839 () Bool)

(assert (=> b!2837625 (= tp!908186 (and (=> t!232062 result!192728) (=> t!232064 result!192730) b_and!207839))))

(declare-fun e!1797023 () Bool)

(assert (=> b!2837625 (= e!1797023 (and tp!908188 tp!908186))))

(declare-fun e!1797025 () Bool)

(declare-fun b!2837624 () Bool)

(declare-fun tp!908187 () Bool)

(assert (=> b!2837624 (= e!1797025 (and tp!908187 (inv!45498 (tag!5541 (h!38952 (t!232033 rules!4246)))) (inv!45501 (transformation!5037 (h!38952 (t!232033 rules!4246)))) e!1797023))))

(declare-fun b!2837623 () Bool)

(declare-fun e!1797024 () Bool)

(declare-fun tp!908185 () Bool)

(assert (=> b!2837623 (= e!1797024 (and e!1797025 tp!908185))))

(assert (=> b!2837411 (= tp!908101 e!1797024)))

(assert (= b!2837624 b!2837625))

(assert (= b!2837623 b!2837624))

(assert (= (and b!2837411 (is-Cons!33532 (t!232033 rules!4246))) b!2837623))

(declare-fun m!3267141 () Bool)

(assert (=> b!2837624 m!3267141))

(declare-fun m!3267143 () Bool)

(assert (=> b!2837624 m!3267143))

(declare-fun b!2837630 () Bool)

(declare-fun e!1797029 () Bool)

(declare-fun tp!908191 () Bool)

(assert (=> b!2837630 (= e!1797029 (and tp_is_empty!14597 tp!908191))))

(assert (=> b!2837420 (= tp!908099 e!1797029)))

(assert (= (and b!2837420 (is-Cons!33530 (originalCharacters!5769 (h!38953 tokensBis!14)))) b!2837630))

(declare-fun b!2837644 () Bool)

(declare-fun b_free!81953 () Bool)

(declare-fun b_next!82657 () Bool)

(assert (=> b!2837644 (= b_free!81953 (not b_next!82657))))

(declare-fun tp!908203 () Bool)

(declare-fun b_and!207841 () Bool)

(assert (=> b!2837644 (= tp!908203 b_and!207841)))

(declare-fun b_free!81955 () Bool)

(declare-fun b_next!82659 () Bool)

(assert (=> b!2837644 (= b_free!81955 (not b_next!82659))))

(declare-fun t!232066 () Bool)

(declare-fun tb!154539 () Bool)

(assert (=> (and b!2837644 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokens!612))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612))))) t!232066) tb!154539))

(declare-fun result!192736 () Bool)

(assert (= result!192736 result!192702))

(assert (=> b!2837526 t!232066))

(declare-fun t!232068 () Bool)

(declare-fun tb!154541 () Bool)

(assert (=> (and b!2837644 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokens!612))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))) t!232068) tb!154541))

(declare-fun result!192738 () Bool)

(assert (= result!192738 result!192718))

(assert (=> b!2837568 t!232068))

(declare-fun b_and!207843 () Bool)

(declare-fun tp!908205 () Bool)

(assert (=> b!2837644 (= tp!908205 (and (=> t!232066 result!192736) (=> t!232068 result!192738) b_and!207843))))

(declare-fun e!1797045 () Bool)

(declare-fun tp!908206 () Bool)

(declare-fun e!1797042 () Bool)

(declare-fun b!2837643 () Bool)

(assert (=> b!2837643 (= e!1797042 (and tp!908206 (inv!45498 (tag!5541 (rule!7465 (h!38953 (t!232034 tokens!612))))) (inv!45501 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokens!612))))) e!1797045))))

(declare-fun e!1797044 () Bool)

(declare-fun b!2837642 () Bool)

(declare-fun tp!908204 () Bool)

(assert (=> b!2837642 (= e!1797044 (and (inv!21 (value!161925 (h!38953 (t!232034 tokens!612)))) e!1797042 tp!908204))))

(declare-fun e!1797047 () Bool)

(assert (=> b!2837415 (= tp!908109 e!1797047)))

(declare-fun tp!908202 () Bool)

(declare-fun b!2837641 () Bool)

(assert (=> b!2837641 (= e!1797047 (and (inv!45502 (h!38953 (t!232034 tokens!612))) e!1797044 tp!908202))))

(assert (=> b!2837644 (= e!1797045 (and tp!908203 tp!908205))))

(assert (= b!2837643 b!2837644))

(assert (= b!2837642 b!2837643))

(assert (= b!2837641 b!2837642))

(assert (= (and b!2837415 (is-Cons!33533 (t!232034 tokens!612))) b!2837641))

(declare-fun m!3267145 () Bool)

(assert (=> b!2837643 m!3267145))

(declare-fun m!3267147 () Bool)

(assert (=> b!2837643 m!3267147))

(declare-fun m!3267149 () Bool)

(assert (=> b!2837642 m!3267149))

(declare-fun m!3267151 () Bool)

(assert (=> b!2837641 m!3267151))

(declare-fun b!2837646 () Bool)

(declare-fun e!1797048 () Bool)

(declare-fun tp!908207 () Bool)

(declare-fun tp!908210 () Bool)

(assert (=> b!2837646 (= e!1797048 (and tp!908207 tp!908210))))

(declare-fun b!2837645 () Bool)

(assert (=> b!2837645 (= e!1797048 tp_is_empty!14597)))

(declare-fun b!2837647 () Bool)

(declare-fun tp!908208 () Bool)

(assert (=> b!2837647 (= e!1797048 tp!908208)))

(assert (=> b!2837413 (= tp!908106 e!1797048)))

(declare-fun b!2837648 () Bool)

(declare-fun tp!908209 () Bool)

(declare-fun tp!908211 () Bool)

(assert (=> b!2837648 (= e!1797048 (and tp!908209 tp!908211))))

(assert (= (and b!2837413 (is-ElementMatch!8428 (regex!5037 (h!38952 rules!4246)))) b!2837645))

(assert (= (and b!2837413 (is-Concat!13695 (regex!5037 (h!38952 rules!4246)))) b!2837646))

(assert (= (and b!2837413 (is-Star!8428 (regex!5037 (h!38952 rules!4246)))) b!2837647))

(assert (= (and b!2837413 (is-Union!8428 (regex!5037 (h!38952 rules!4246)))) b!2837648))

(declare-fun b!2837649 () Bool)

(declare-fun e!1797049 () Bool)

(declare-fun tp!908212 () Bool)

(assert (=> b!2837649 (= e!1797049 (and tp_is_empty!14597 tp!908212))))

(assert (=> b!2837424 (= tp!908110 e!1797049)))

(assert (= (and b!2837424 (is-Cons!33530 (originalCharacters!5769 (h!38953 tokens!612)))) b!2837649))

(declare-fun b!2837651 () Bool)

(declare-fun e!1797050 () Bool)

(declare-fun tp!908213 () Bool)

(declare-fun tp!908216 () Bool)

(assert (=> b!2837651 (= e!1797050 (and tp!908213 tp!908216))))

(declare-fun b!2837650 () Bool)

(assert (=> b!2837650 (= e!1797050 tp_is_empty!14597)))

(declare-fun b!2837652 () Bool)

(declare-fun tp!908214 () Bool)

(assert (=> b!2837652 (= e!1797050 tp!908214)))

(assert (=> b!2837419 (= tp!908111 e!1797050)))

(declare-fun b!2837653 () Bool)

(declare-fun tp!908215 () Bool)

(declare-fun tp!908217 () Bool)

(assert (=> b!2837653 (= e!1797050 (and tp!908215 tp!908217))))

(assert (= (and b!2837419 (is-ElementMatch!8428 (regex!5037 (rule!7465 (h!38953 tokensBis!14))))) b!2837650))

(assert (= (and b!2837419 (is-Concat!13695 (regex!5037 (rule!7465 (h!38953 tokensBis!14))))) b!2837651))

(assert (= (and b!2837419 (is-Star!8428 (regex!5037 (rule!7465 (h!38953 tokensBis!14))))) b!2837652))

(assert (= (and b!2837419 (is-Union!8428 (regex!5037 (rule!7465 (h!38953 tokensBis!14))))) b!2837653))

(declare-fun b!2837657 () Bool)

(declare-fun b_free!81957 () Bool)

(declare-fun b_next!82661 () Bool)

(assert (=> b!2837657 (= b_free!81957 (not b_next!82661))))

(declare-fun tp!908219 () Bool)

(declare-fun b_and!207845 () Bool)

(assert (=> b!2837657 (= tp!908219 b_and!207845)))

(declare-fun b_free!81959 () Bool)

(declare-fun b_next!82663 () Bool)

(assert (=> b!2837657 (= b_free!81959 (not b_next!82663))))

(declare-fun t!232070 () Bool)

(declare-fun tb!154543 () Bool)

(assert (=> (and b!2837657 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokensBis!14))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612))))) t!232070) tb!154543))

(declare-fun result!192740 () Bool)

(assert (= result!192740 result!192702))

(assert (=> b!2837526 t!232070))

(declare-fun t!232072 () Bool)

(declare-fun tb!154545 () Bool)

(assert (=> (and b!2837657 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokensBis!14))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14))))) t!232072) tb!154545))

(declare-fun result!192742 () Bool)

(assert (= result!192742 result!192718))

(assert (=> b!2837568 t!232072))

(declare-fun b_and!207847 () Bool)

(declare-fun tp!908221 () Bool)

(assert (=> b!2837657 (= tp!908221 (and (=> t!232070 result!192740) (=> t!232072 result!192742) b_and!207847))))

(declare-fun e!1797051 () Bool)

(declare-fun tp!908222 () Bool)

(declare-fun e!1797054 () Bool)

(declare-fun b!2837656 () Bool)

(assert (=> b!2837656 (= e!1797051 (and tp!908222 (inv!45498 (tag!5541 (rule!7465 (h!38953 (t!232034 tokensBis!14))))) (inv!45501 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokensBis!14))))) e!1797054))))

(declare-fun e!1797053 () Bool)

(declare-fun b!2837655 () Bool)

(declare-fun tp!908220 () Bool)

(assert (=> b!2837655 (= e!1797053 (and (inv!21 (value!161925 (h!38953 (t!232034 tokensBis!14)))) e!1797051 tp!908220))))

(declare-fun e!1797056 () Bool)

(assert (=> b!2837414 (= tp!908102 e!1797056)))

(declare-fun tp!908218 () Bool)

(declare-fun b!2837654 () Bool)

(assert (=> b!2837654 (= e!1797056 (and (inv!45502 (h!38953 (t!232034 tokensBis!14))) e!1797053 tp!908218))))

(assert (=> b!2837657 (= e!1797054 (and tp!908219 tp!908221))))

(assert (= b!2837656 b!2837657))

(assert (= b!2837655 b!2837656))

(assert (= b!2837654 b!2837655))

(assert (= (and b!2837414 (is-Cons!33533 (t!232034 tokensBis!14))) b!2837654))

(declare-fun m!3267153 () Bool)

(assert (=> b!2837656 m!3267153))

(declare-fun m!3267155 () Bool)

(assert (=> b!2837656 m!3267155))

(declare-fun m!3267157 () Bool)

(assert (=> b!2837655 m!3267157))

(declare-fun m!3267159 () Bool)

(assert (=> b!2837654 m!3267159))

(declare-fun b_lambda!85285 () Bool)

(assert (= b_lambda!85283 (or (and b!2837625 b_free!81951 (= (toChars!6938 (transformation!5037 (h!38952 (t!232033 rules!4246)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))))) (and b!2837418 b_free!81935) (and b!2837644 b_free!81955 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokens!612))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))))) (and b!2837409 b_free!81927 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))))) (and b!2837422 b_free!81931 (= (toChars!6938 (transformation!5037 (h!38952 rules!4246))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))))) (and b!2837657 b_free!81959 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokensBis!14))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))))) b_lambda!85285)))

(declare-fun b_lambda!85287 () Bool)

(assert (= b_lambda!85279 (or (and b!2837418 b_free!81935 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokensBis!14)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))))) (and b!2837409 b_free!81927) (and b!2837625 b_free!81951 (= (toChars!6938 (transformation!5037 (h!38952 (t!232033 rules!4246)))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))))) (and b!2837644 b_free!81955 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokens!612))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))))) (and b!2837422 b_free!81931 (= (toChars!6938 (transformation!5037 (h!38952 rules!4246))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))))) (and b!2837657 b_free!81959 (= (toChars!6938 (transformation!5037 (rule!7465 (h!38953 (t!232034 tokensBis!14))))) (toChars!6938 (transformation!5037 (rule!7465 (h!38953 tokens!612)))))) b_lambda!85287)))

(push 1)

(assert (not b!2837651))

(assert (not b!2837595))

(assert (not tb!154529))

(assert (not b!2837501))

(assert (not b!2837654))

(assert (not b_lambda!85287))

(assert (not b!2837655))

(assert (not b!2837527))

(assert (not b!2837613))

(assert (not b_next!82629))

(assert (not b_next!82635))

(assert b_and!207799)

(assert (not tb!154517))

(assert b_and!207795)

(assert (not b!2837571))

(assert b_and!207841)

(assert (not b!2837600))

(assert (not b_next!82637))

(assert (not b!2837648))

(assert (not b!2837580))

(assert b_and!207843)

(assert (not b!2837646))

(assert (not b!2837643))

(assert (not b_next!82657))

(assert (not d!823265))

(assert (not b!2837526))

(assert (not b!2837647))

(assert (not b!2837545))

(assert (not b!2837596))

(assert (not b!2837652))

(assert (not b!2837480))

(assert (not b!2837656))

(assert (not d!823287))

(assert (not b!2837511))

(assert b_and!207833)

(assert (not b_next!82633))

(assert (not b!2837624))

(assert (not d!823285))

(assert (not b!2837581))

(assert tp_is_empty!14597)

(assert (not b!2837614))

(assert (not b!2837642))

(assert b_and!207845)

(assert (not b!2837597))

(assert (not b!2837570))

(assert b_and!207835)

(assert (not b_next!82661))

(assert (not b_next!82663))

(assert (not b!2837612))

(assert (not d!823275))

(assert b_and!207803)

(assert b_and!207847)

(assert (not b_next!82639))

(assert (not b!2837563))

(assert (not b_next!82659))

(assert (not b!2837564))

(assert (not b_next!82655))

(assert (not d!823295))

(assert (not b!2837649))

(assert (not d!823253))

(assert (not b!2837500))

(assert (not b!2837653))

(assert (not b!2837641))

(assert (not b!2837630))

(assert b_and!207831)

(assert b_and!207837)

(assert (not b!2837623))

(assert (not b_lambda!85285))

(assert (not b_next!82631))

(assert (not b!2837590))

(assert (not b!2837565))

(assert (not b!2837569))

(assert b_and!207839)

(assert (not b!2837538))

(assert (not b_next!82653))

(assert (not b!2837568))

(assert (not d!823281))

(check-sat)

(pop 1)

(push 1)

(assert b_and!207795)

(assert b_and!207843)

(assert (not b_next!82657))

(assert b_and!207803)

(assert (not b_next!82659))

(assert (not b_next!82655))

(assert (not b_next!82631))

(assert (not b_next!82629))

(assert (not b_next!82635))

(assert b_and!207799)

(assert b_and!207841)

(assert (not b_next!82637))

(assert b_and!207833)

(assert (not b_next!82633))

(assert b_and!207845)

(assert b_and!207835)

(assert (not b_next!82661))

(assert (not b_next!82663))

(assert b_and!207847)

(assert (not b_next!82639))

(assert b_and!207831)

(assert b_and!207837)

(assert b_and!207839)

(assert (not b_next!82653))

(check-sat)

(pop 1)

