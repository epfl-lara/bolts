; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!178110 () Bool)

(assert start!178110)

(declare-fun b!1787481 () Bool)

(declare-fun b_free!49703 () Bool)

(declare-fun b_next!50407 () Bool)

(assert (=> b!1787481 (= b_free!49703 (not b_next!50407))))

(declare-fun tp!505521 () Bool)

(declare-fun b_and!137679 () Bool)

(assert (=> b!1787481 (= tp!505521 b_and!137679)))

(declare-fun b_free!49705 () Bool)

(declare-fun b_next!50409 () Bool)

(assert (=> b!1787481 (= b_free!49705 (not b_next!50409))))

(declare-fun tp!505518 () Bool)

(declare-fun b_and!137681 () Bool)

(assert (=> b!1787481 (= tp!505518 b_and!137681)))

(declare-fun b!1787472 () Bool)

(declare-fun b_free!49707 () Bool)

(declare-fun b_next!50411 () Bool)

(assert (=> b!1787472 (= b_free!49707 (not b_next!50411))))

(declare-fun tp!505519 () Bool)

(declare-fun b_and!137683 () Bool)

(assert (=> b!1787472 (= tp!505519 b_and!137683)))

(declare-fun b_free!49709 () Bool)

(declare-fun b_next!50413 () Bool)

(assert (=> b!1787472 (= b_free!49709 (not b_next!50413))))

(declare-fun tp!505526 () Bool)

(declare-fun b_and!137685 () Bool)

(assert (=> b!1787472 (= tp!505526 b_and!137685)))

(declare-fun b!1787464 () Bool)

(declare-fun b_free!49711 () Bool)

(declare-fun b_next!50415 () Bool)

(assert (=> b!1787464 (= b_free!49711 (not b_next!50415))))

(declare-fun tp!505523 () Bool)

(declare-fun b_and!137687 () Bool)

(assert (=> b!1787464 (= tp!505523 b_and!137687)))

(declare-fun b_free!49713 () Bool)

(declare-fun b_next!50417 () Bool)

(assert (=> b!1787464 (= b_free!49713 (not b_next!50417))))

(declare-fun tp!505517 () Bool)

(declare-fun b_and!137689 () Bool)

(assert (=> b!1787464 (= tp!505517 b_and!137689)))

(declare-fun b!1787494 () Bool)

(declare-fun e!1144087 () Bool)

(assert (=> b!1787494 (= e!1144087 true)))

(declare-fun b!1787493 () Bool)

(declare-fun e!1144086 () Bool)

(assert (=> b!1787493 (= e!1144086 e!1144087)))

(declare-fun b!1787492 () Bool)

(declare-fun e!1144085 () Bool)

(assert (=> b!1787492 (= e!1144085 e!1144086)))

(declare-fun b!1787466 () Bool)

(assert (=> b!1787466 e!1144085))

(assert (= b!1787493 b!1787494))

(assert (= b!1787492 b!1787493))

(assert (= b!1787466 b!1787492))

(declare-fun order!12791 () Int)

(declare-datatypes ((List!19779 0))(
  ( (Nil!19709) (Cons!19709 (h!25110 (_ BitVec 16)) (t!167282 List!19779)) )
))
(declare-datatypes ((TokenValue!3625 0))(
  ( (FloatLiteralValue!7250 (text!25820 List!19779)) (TokenValueExt!3624 (__x!12552 Int)) (Broken!18125 (value!110394 List!19779)) (Object!3694) (End!3625) (Def!3625) (Underscore!3625) (Match!3625) (Else!3625) (Error!3625) (Case!3625) (If!3625) (Extends!3625) (Abstract!3625) (Class!3625) (Val!3625) (DelimiterValue!7250 (del!3685 List!19779)) (KeywordValue!3631 (value!110395 List!19779)) (CommentValue!7250 (value!110396 List!19779)) (WhitespaceValue!7250 (value!110397 List!19779)) (IndentationValue!3625 (value!110398 List!19779)) (String!22456) (Int32!3625) (Broken!18126 (value!110399 List!19779)) (Boolean!3626) (Unit!34102) (OperatorValue!3628 (op!3685 List!19779)) (IdentifierValue!7250 (value!110400 List!19779)) (IdentifierValue!7251 (value!110401 List!19779)) (WhitespaceValue!7251 (value!110402 List!19779)) (True!7250) (False!7250) (Broken!18127 (value!110403 List!19779)) (Broken!18128 (value!110404 List!19779)) (True!7251) (RightBrace!3625) (RightBracket!3625) (Colon!3625) (Null!3625) (Comma!3625) (LeftBracket!3625) (False!7251) (LeftBrace!3625) (ImaginaryLiteralValue!3625 (text!25821 List!19779)) (StringLiteralValue!10875 (value!110405 List!19779)) (EOFValue!3625 (value!110406 List!19779)) (IdentValue!3625 (value!110407 List!19779)) (DelimiterValue!7251 (value!110408 List!19779)) (DedentValue!3625 (value!110409 List!19779)) (NewLineValue!3625 (value!110410 List!19779)) (IntegerValue!10875 (value!110411 (_ BitVec 32)) (text!25822 List!19779)) (IntegerValue!10876 (value!110412 Int) (text!25823 List!19779)) (Times!3625) (Or!3625) (Equal!3625) (Minus!3625) (Broken!18129 (value!110413 List!19779)) (And!3625) (Div!3625) (LessEqual!3625) (Mod!3625) (Concat!8488) (Not!3625) (Plus!3625) (SpaceValue!3625 (value!110414 List!19779)) (IntegerValue!10877 (value!110415 Int) (text!25824 List!19779)) (StringLiteralValue!10876 (text!25825 List!19779)) (FloatLiteralValue!7251 (text!25826 List!19779)) (BytesLiteralValue!3625 (value!110416 List!19779)) (CommentValue!7251 (value!110417 List!19779)) (StringLiteralValue!10877 (value!110418 List!19779)) (ErrorTokenValue!3625 (msg!3686 List!19779)) )
))
(declare-datatypes ((C!9900 0))(
  ( (C!9901 (val!5546 Int)) )
))
(declare-datatypes ((List!19780 0))(
  ( (Nil!19710) (Cons!19710 (h!25111 C!9900) (t!167283 List!19780)) )
))
(declare-datatypes ((Regex!4863 0))(
  ( (ElementMatch!4863 (c!290636 C!9900)) (Concat!8489 (regOne!10238 Regex!4863) (regTwo!10238 Regex!4863)) (EmptyExpr!4863) (Star!4863 (reg!5192 Regex!4863)) (EmptyLang!4863) (Union!4863 (regOne!10239 Regex!4863) (regTwo!10239 Regex!4863)) )
))
(declare-datatypes ((String!22457 0))(
  ( (String!22458 (value!110419 String)) )
))
(declare-datatypes ((IArray!13119 0))(
  ( (IArray!13120 (innerList!6617 List!19780)) )
))
(declare-datatypes ((Conc!6557 0))(
  ( (Node!6557 (left!15806 Conc!6557) (right!16136 Conc!6557) (csize!13344 Int) (cheight!6768 Int)) (Leaf!9545 (xs!9433 IArray!13119) (csize!13345 Int)) (Empty!6557) )
))
(declare-datatypes ((BalanceConc!13058 0))(
  ( (BalanceConc!13059 (c!290637 Conc!6557)) )
))
(declare-datatypes ((TokenValueInjection!6910 0))(
  ( (TokenValueInjection!6911 (toValue!5062 Int) (toChars!4921 Int)) )
))
(declare-datatypes ((Rule!6870 0))(
  ( (Rule!6871 (regex!3535 Regex!4863) (tag!3939 String!22457) (isSeparator!3535 Bool) (transformation!3535 TokenValueInjection!6910)) )
))
(declare-datatypes ((Token!6636 0))(
  ( (Token!6637 (value!110420 TokenValue!3625) (rule!5627 Rule!6870) (size!15658 Int) (originalCharacters!4349 List!19780)) )
))
(declare-datatypes ((tuple2!19294 0))(
  ( (tuple2!19295 (_1!11049 Token!6636) (_2!11049 List!19780)) )
))
(declare-fun lt!696470 () tuple2!19294)

(declare-fun lambda!70810 () Int)

(declare-fun order!12793 () Int)

(declare-fun dynLambda!9737 (Int Int) Int)

(declare-fun dynLambda!9738 (Int Int) Int)

(assert (=> b!1787494 (< (dynLambda!9737 order!12791 (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) (dynLambda!9738 order!12793 lambda!70810))))

(declare-fun order!12795 () Int)

(declare-fun dynLambda!9739 (Int Int) Int)

(assert (=> b!1787494 (< (dynLambda!9739 order!12795 (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) (dynLambda!9738 order!12793 lambda!70810))))

(declare-fun b!1787443 () Bool)

(declare-fun e!1144057 () Bool)

(declare-fun e!1144050 () Bool)

(assert (=> b!1787443 (= e!1144057 e!1144050)))

(declare-fun res!806112 () Bool)

(assert (=> b!1787443 (=> (not res!806112) (not e!1144050))))

(declare-fun lt!696487 () Rule!6870)

(declare-fun matchR!2336 (Regex!4863 List!19780) Bool)

(declare-fun list!8017 (BalanceConc!13058) List!19780)

(declare-fun charsOf!2184 (Token!6636) BalanceConc!13058)

(assert (=> b!1787443 (= res!806112 (matchR!2336 (regex!3535 lt!696487) (list!8017 (charsOf!2184 (_1!11049 lt!696470)))))))

(declare-datatypes ((Option!4092 0))(
  ( (None!4091) (Some!4091 (v!25590 Rule!6870)) )
))
(declare-fun lt!696462 () Option!4092)

(declare-fun get!6077 (Option!4092) Rule!6870)

(assert (=> b!1787443 (= lt!696487 (get!6077 lt!696462))))

(declare-fun b!1787444 () Bool)

(declare-fun e!1144067 () Bool)

(declare-fun e!1144066 () Bool)

(assert (=> b!1787444 (= e!1144067 e!1144066)))

(declare-fun res!806126 () Bool)

(assert (=> b!1787444 (=> (not res!806126) (not e!1144066))))

(declare-fun lt!696474 () tuple2!19294)

(declare-fun token!523 () Token!6636)

(assert (=> b!1787444 (= res!806126 (= (_1!11049 lt!696474) token!523))))

(declare-datatypes ((Option!4093 0))(
  ( (None!4092) (Some!4092 (v!25591 tuple2!19294)) )
))
(declare-fun lt!696451 () Option!4093)

(declare-fun get!6078 (Option!4093) tuple2!19294)

(assert (=> b!1787444 (= lt!696474 (get!6078 lt!696451))))

(declare-fun res!806128 () Bool)

(declare-fun e!1144073 () Bool)

(assert (=> start!178110 (=> (not res!806128) (not e!1144073))))

(declare-datatypes ((LexerInterface!3164 0))(
  ( (LexerInterfaceExt!3161 (__x!12553 Int)) (Lexer!3162) )
))
(declare-fun thiss!24550 () LexerInterface!3164)

(get-info :version)

(assert (=> start!178110 (= res!806128 ((_ is Lexer!3162) thiss!24550))))

(assert (=> start!178110 e!1144073))

(declare-fun e!1144065 () Bool)

(assert (=> start!178110 e!1144065))

(declare-fun e!1144069 () Bool)

(assert (=> start!178110 e!1144069))

(assert (=> start!178110 true))

(declare-fun e!1144059 () Bool)

(declare-fun inv!25674 (Token!6636) Bool)

(assert (=> start!178110 (and (inv!25674 token!523) e!1144059)))

(declare-fun e!1144076 () Bool)

(assert (=> start!178110 e!1144076))

(declare-fun b!1787445 () Bool)

(declare-fun e!1144056 () Bool)

(declare-fun e!1144055 () Bool)

(assert (=> b!1787445 (= e!1144056 e!1144055)))

(declare-fun res!806127 () Bool)

(assert (=> b!1787445 (=> res!806127 e!1144055)))

(declare-fun lt!696475 () Bool)

(assert (=> b!1787445 (= res!806127 lt!696475)))

(declare-datatypes ((Unit!34103 0))(
  ( (Unit!34104) )
))
(declare-fun lt!696455 () Unit!34103)

(declare-fun e!1144068 () Unit!34103)

(assert (=> b!1787445 (= lt!696455 e!1144068)))

(declare-fun c!290634 () Bool)

(assert (=> b!1787445 (= c!290634 lt!696475)))

(declare-fun lt!696459 () Int)

(declare-fun lt!696485 () Int)

(assert (=> b!1787445 (= lt!696475 (> lt!696459 lt!696485))))

(declare-fun lt!696488 () BalanceConc!13058)

(declare-fun size!15659 (BalanceConc!13058) Int)

(assert (=> b!1787445 (= lt!696485 (size!15659 lt!696488))))

(declare-fun lt!696445 () Regex!4863)

(declare-fun lt!696456 () List!19780)

(assert (=> b!1787445 (matchR!2336 lt!696445 lt!696456)))

(declare-fun lt!696453 () Unit!34103)

(declare-fun rule!422 () Rule!6870)

(declare-datatypes ((List!19781 0))(
  ( (Nil!19711) (Cons!19711 (h!25112 Rule!6870) (t!167284 List!19781)) )
))
(declare-fun rules!3447 () List!19781)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!242 (LexerInterface!3164 List!19781 List!19780 Token!6636 Rule!6870 List!19780) Unit!34103)

(assert (=> b!1787445 (= lt!696453 (lemmaMaxPrefixThenMatchesRulesRegex!242 thiss!24550 rules!3447 lt!696456 token!523 rule!422 Nil!19710))))

(declare-fun b!1787446 () Bool)

(declare-fun e!1144048 () Bool)

(declare-fun tp!505515 () Bool)

(declare-fun e!1144051 () Bool)

(declare-fun inv!25669 (String!22457) Bool)

(declare-fun inv!25675 (TokenValueInjection!6910) Bool)

(assert (=> b!1787446 (= e!1144051 (and tp!505515 (inv!25669 (tag!3939 (rule!5627 token!523))) (inv!25675 (transformation!3535 (rule!5627 token!523))) e!1144048))))

(declare-fun b!1787447 () Bool)

(declare-fun Unit!34105 () Unit!34103)

(assert (=> b!1787447 (= e!1144068 Unit!34105)))

(declare-fun b!1787448 () Bool)

(declare-fun e!1144049 () Unit!34103)

(declare-fun Unit!34106 () Unit!34103)

(assert (=> b!1787448 (= e!1144049 Unit!34106)))

(declare-fun lt!696491 () Unit!34103)

(declare-fun lt!696466 () List!19780)

(declare-fun lt!696458 () List!19780)

(declare-fun lemmaMaxPrefixOutputsMaxPrefix!244 (LexerInterface!3164 List!19781 Rule!6870 List!19780 List!19780 List!19780 Rule!6870) Unit!34103)

(assert (=> b!1787448 (= lt!696491 (lemmaMaxPrefixOutputsMaxPrefix!244 thiss!24550 rules!3447 (rule!5627 (_1!11049 lt!696470)) lt!696466 lt!696458 lt!696456 rule!422))))

(assert (=> b!1787448 false))

(declare-fun tp!505520 () Bool)

(declare-fun e!1144047 () Bool)

(declare-fun b!1787449 () Bool)

(assert (=> b!1787449 (= e!1144069 (and tp!505520 (inv!25669 (tag!3939 rule!422)) (inv!25675 (transformation!3535 rule!422)) e!1144047))))

(declare-fun b!1787450 () Bool)

(declare-fun e!1144046 () Bool)

(declare-fun e!1144054 () Bool)

(assert (=> b!1787450 (= e!1144046 e!1144054)))

(declare-fun res!806122 () Bool)

(assert (=> b!1787450 (=> res!806122 e!1144054)))

(declare-fun lt!696448 () Int)

(declare-fun lt!696454 () Int)

(assert (=> b!1787450 (= res!806122 (>= lt!696448 lt!696454))))

(declare-fun lt!696446 () Unit!34103)

(declare-fun e!1144061 () Unit!34103)

(assert (=> b!1787450 (= lt!696446 e!1144061)))

(declare-fun c!290633 () Bool)

(assert (=> b!1787450 (= c!290633 (< lt!696454 lt!696448))))

(declare-fun getIndex!200 (List!19781 Rule!6870) Int)

(assert (=> b!1787450 (= lt!696448 (getIndex!200 rules!3447 (rule!5627 (_1!11049 lt!696470))))))

(assert (=> b!1787450 (= lt!696454 (getIndex!200 rules!3447 (rule!5627 token!523)))))

(declare-fun b!1787451 () Bool)

(declare-fun e!1144070 () Bool)

(declare-fun e!1144053 () Bool)

(assert (=> b!1787451 (= e!1144070 e!1144053)))

(declare-fun res!806135 () Bool)

(assert (=> b!1787451 (=> res!806135 e!1144053)))

(declare-fun isPrefix!1775 (List!19780 List!19780) Bool)

(assert (=> b!1787451 (= res!806135 (not (isPrefix!1775 lt!696466 lt!696458)))))

(declare-fun ++!5359 (List!19780 List!19780) List!19780)

(assert (=> b!1787451 (isPrefix!1775 lt!696466 (++!5359 lt!696466 (_2!11049 lt!696470)))))

(declare-fun lt!696486 () Unit!34103)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1284 (List!19780 List!19780) Unit!34103)

(assert (=> b!1787451 (= lt!696486 (lemmaConcatTwoListThenFirstIsPrefix!1284 lt!696466 (_2!11049 lt!696470)))))

(declare-fun lt!696449 () BalanceConc!13058)

(assert (=> b!1787451 (= lt!696466 (list!8017 lt!696449))))

(assert (=> b!1787451 (= lt!696449 (charsOf!2184 (_1!11049 lt!696470)))))

(assert (=> b!1787451 e!1144057))

(declare-fun res!806136 () Bool)

(assert (=> b!1787451 (=> (not res!806136) (not e!1144057))))

(declare-fun isDefined!3435 (Option!4092) Bool)

(assert (=> b!1787451 (= res!806136 (isDefined!3435 lt!696462))))

(declare-fun getRuleFromTag!583 (LexerInterface!3164 List!19781 String!22457) Option!4092)

(assert (=> b!1787451 (= lt!696462 (getRuleFromTag!583 thiss!24550 rules!3447 (tag!3939 (rule!5627 (_1!11049 lt!696470)))))))

(declare-fun lt!696471 () Unit!34103)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!583 (LexerInterface!3164 List!19781 List!19780 Token!6636) Unit!34103)

(assert (=> b!1787451 (= lt!696471 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!583 thiss!24550 rules!3447 lt!696458 (_1!11049 lt!696470)))))

(declare-fun lt!696479 () Option!4093)

(assert (=> b!1787451 (= lt!696470 (get!6078 lt!696479))))

(declare-fun lt!696481 () Unit!34103)

(declare-fun suffix!1421 () List!19780)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!686 (LexerInterface!3164 List!19781 List!19780 List!19780) Unit!34103)

(assert (=> b!1787451 (= lt!696481 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!686 thiss!24550 rules!3447 lt!696456 suffix!1421))))

(declare-fun maxPrefix!1718 (LexerInterface!3164 List!19781 List!19780) Option!4093)

(assert (=> b!1787451 (= lt!696479 (maxPrefix!1718 thiss!24550 rules!3447 lt!696458))))

(assert (=> b!1787451 (isPrefix!1775 lt!696456 lt!696458)))

(declare-fun lt!696490 () Unit!34103)

(assert (=> b!1787451 (= lt!696490 (lemmaConcatTwoListThenFirstIsPrefix!1284 lt!696456 suffix!1421))))

(assert (=> b!1787451 (= lt!696458 (++!5359 lt!696456 suffix!1421))))

(declare-fun b!1787452 () Bool)

(declare-fun e!1144062 () Bool)

(declare-fun e!1144078 () Bool)

(assert (=> b!1787452 (= e!1144062 e!1144078)))

(declare-fun res!806113 () Bool)

(assert (=> b!1787452 (=> res!806113 e!1144078)))

(declare-fun lt!696469 () TokenValue!3625)

(assert (=> b!1787452 (= res!806113 (not (= lt!696479 (Some!4092 (tuple2!19295 (Token!6637 lt!696469 (rule!5627 (_1!11049 lt!696470)) lt!696459 lt!696466) (_2!11049 lt!696470))))))))

(assert (=> b!1787452 (= lt!696459 (size!15659 lt!696449))))

(declare-fun apply!5335 (TokenValueInjection!6910 BalanceConc!13058) TokenValue!3625)

(assert (=> b!1787452 (= lt!696469 (apply!5335 (transformation!3535 (rule!5627 (_1!11049 lt!696470))) lt!696449))))

(declare-fun lt!696483 () Unit!34103)

(declare-fun lemmaCharactersSize!593 (Token!6636) Unit!34103)

(assert (=> b!1787452 (= lt!696483 (lemmaCharactersSize!593 (_1!11049 lt!696470)))))

(declare-fun lt!696460 () Unit!34103)

(declare-fun lemmaEqSameImage!446 (TokenValueInjection!6910 BalanceConc!13058 BalanceConc!13058) Unit!34103)

(declare-fun seqFromList!2504 (List!19780) BalanceConc!13058)

(assert (=> b!1787452 (= lt!696460 (lemmaEqSameImage!446 (transformation!3535 (rule!5627 (_1!11049 lt!696470))) lt!696449 (seqFromList!2504 (originalCharacters!4349 (_1!11049 lt!696470)))))))

(declare-fun b!1787453 () Bool)

(declare-fun tp_is_empty!7969 () Bool)

(declare-fun tp!505516 () Bool)

(assert (=> b!1787453 (= e!1144065 (and tp_is_empty!7969 tp!505516))))

(declare-fun b!1787454 () Bool)

(declare-fun Unit!34107 () Unit!34103)

(assert (=> b!1787454 (= e!1144061 Unit!34107)))

(declare-fun b!1787455 () Bool)

(declare-fun res!806134 () Bool)

(assert (=> b!1787455 (=> (not res!806134) (not e!1144073))))

(declare-fun contains!3567 (List!19781 Rule!6870) Bool)

(assert (=> b!1787455 (= res!806134 (contains!3567 rules!3447 rule!422))))

(declare-fun b!1787456 () Bool)

(declare-fun res!806124 () Bool)

(assert (=> b!1787456 (=> (not res!806124) (not e!1144073))))

(declare-fun isEmpty!12458 (List!19781) Bool)

(assert (=> b!1787456 (= res!806124 (not (isEmpty!12458 rules!3447)))))

(declare-fun b!1787457 () Bool)

(declare-fun Unit!34108 () Unit!34103)

(assert (=> b!1787457 (= e!1144049 Unit!34108)))

(declare-fun b!1787458 () Bool)

(declare-fun e!1144074 () Bool)

(assert (=> b!1787458 (= e!1144074 false)))

(declare-fun b!1787459 () Bool)

(declare-fun res!806132 () Bool)

(assert (=> b!1787459 (=> res!806132 e!1144054)))

(assert (=> b!1787459 (= res!806132 (not (isPrefix!1775 lt!696456 lt!696456)))))

(declare-fun b!1787460 () Bool)

(declare-fun e!1144075 () Bool)

(assert (=> b!1787460 (= e!1144075 e!1144062)))

(declare-fun res!806111 () Bool)

(assert (=> b!1787460 (=> res!806111 e!1144062)))

(declare-fun dynLambda!9740 (Int TokenValue!3625) BalanceConc!13058)

(declare-fun dynLambda!9741 (Int BalanceConc!13058) TokenValue!3625)

(assert (=> b!1787460 (= res!806111 (not (= (list!8017 (dynLambda!9740 (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) (dynLambda!9741 (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) lt!696449))) lt!696466)))))

(declare-fun lt!696472 () Unit!34103)

(declare-fun lemmaSemiInverse!673 (TokenValueInjection!6910 BalanceConc!13058) Unit!34103)

(assert (=> b!1787460 (= lt!696472 (lemmaSemiInverse!673 (transformation!3535 (rule!5627 (_1!11049 lt!696470))) lt!696449))))

(declare-fun b!1787461 () Bool)

(declare-fun res!806125 () Bool)

(assert (=> b!1787461 (=> (not res!806125) (not e!1144066))))

(declare-fun isEmpty!12459 (List!19780) Bool)

(assert (=> b!1787461 (= res!806125 (isEmpty!12459 (_2!11049 lt!696474)))))

(declare-fun b!1787462 () Bool)

(declare-fun Unit!34109 () Unit!34103)

(assert (=> b!1787462 (= e!1144061 Unit!34109)))

(declare-fun lt!696480 () Unit!34103)

(declare-fun lemmaMaxPrefNoSmallerRuleMatches!156 (LexerInterface!3164 List!19781 Rule!6870 List!19780 List!19780 Rule!6870) Unit!34103)

(assert (=> b!1787462 (= lt!696480 (lemmaMaxPrefNoSmallerRuleMatches!156 thiss!24550 rules!3447 (rule!5627 (_1!11049 lt!696470)) lt!696466 lt!696458 (rule!5627 token!523)))))

(declare-fun res!806120 () Bool)

(assert (=> b!1787462 (= res!806120 (not (matchR!2336 (regex!3535 (rule!5627 token!523)) lt!696466)))))

(assert (=> b!1787462 (=> (not res!806120) (not e!1144074))))

(assert (=> b!1787462 e!1144074))

(declare-fun b!1787463 () Bool)

(declare-fun Unit!34110 () Unit!34103)

(assert (=> b!1787463 (= e!1144068 Unit!34110)))

(declare-fun lt!696461 () Unit!34103)

(assert (=> b!1787463 (= lt!696461 (lemmaMaxPrefixThenMatchesRulesRegex!242 thiss!24550 rules!3447 lt!696458 (_1!11049 lt!696470) (rule!5627 (_1!11049 lt!696470)) (_2!11049 lt!696470)))))

(assert (=> b!1787463 (matchR!2336 lt!696445 lt!696466)))

(declare-fun lt!696489 () List!19780)

(declare-fun getSuffix!942 (List!19780 List!19780) List!19780)

(assert (=> b!1787463 (= lt!696489 (getSuffix!942 lt!696458 lt!696456))))

(declare-fun lt!696452 () Unit!34103)

(declare-fun lemmaSamePrefixThenSameSuffix!886 (List!19780 List!19780 List!19780 List!19780 List!19780) Unit!34103)

(assert (=> b!1787463 (= lt!696452 (lemmaSamePrefixThenSameSuffix!886 lt!696456 suffix!1421 lt!696456 lt!696489 lt!696458))))

(assert (=> b!1787463 (= suffix!1421 lt!696489)))

(declare-fun lt!696467 () Unit!34103)

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!311 (List!19780 List!19780) Unit!34103)

(assert (=> b!1787463 (= lt!696467 (lemmaAddHeadSuffixToPrefixStillPrefix!311 lt!696456 lt!696458))))

(declare-fun head!4190 (List!19780) C!9900)

(assert (=> b!1787463 (isPrefix!1775 (++!5359 lt!696456 (Cons!19710 (head!4190 lt!696489) Nil!19710)) lt!696458)))

(declare-fun lt!696482 () Unit!34103)

(declare-fun lt!696450 () List!19780)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!183 (List!19780 List!19780 List!19780) Unit!34103)

(assert (=> b!1787463 (= lt!696482 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!183 lt!696466 lt!696450 lt!696458))))

(assert (=> b!1787463 (isPrefix!1775 lt!696450 lt!696466)))

(declare-fun lt!696484 () Unit!34103)

(declare-fun lemmaNotPrefixMatchThenCannotMatchLonger!174 (Regex!4863 List!19780 List!19780) Unit!34103)

(assert (=> b!1787463 (= lt!696484 (lemmaNotPrefixMatchThenCannotMatchLonger!174 lt!696445 lt!696450 lt!696466))))

(assert (=> b!1787463 false))

(declare-fun e!1144077 () Bool)

(assert (=> b!1787464 (= e!1144077 (and tp!505523 tp!505517))))

(declare-fun b!1787465 () Bool)

(assert (=> b!1787465 (= e!1144073 e!1144067)))

(declare-fun res!806129 () Bool)

(assert (=> b!1787465 (=> (not res!806129) (not e!1144067))))

(declare-fun isDefined!3436 (Option!4093) Bool)

(assert (=> b!1787465 (= res!806129 (isDefined!3436 lt!696451))))

(assert (=> b!1787465 (= lt!696451 (maxPrefix!1718 thiss!24550 rules!3447 lt!696456))))

(assert (=> b!1787465 (= lt!696456 (list!8017 lt!696488))))

(assert (=> b!1787465 (= lt!696488 (charsOf!2184 token!523))))

(assert (=> b!1787466 (= e!1144053 e!1144075)))

(declare-fun res!806118 () Bool)

(assert (=> b!1787466 (=> res!806118 e!1144075)))

(declare-fun Forall!902 (Int) Bool)

(assert (=> b!1787466 (= res!806118 (not (Forall!902 lambda!70810)))))

(declare-fun lt!696473 () Unit!34103)

(declare-fun lemmaInv!734 (TokenValueInjection!6910) Unit!34103)

(assert (=> b!1787466 (= lt!696473 (lemmaInv!734 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))))))

(declare-fun b!1787467 () Bool)

(declare-fun e!1144064 () Bool)

(declare-fun tp!505525 () Bool)

(assert (=> b!1787467 (= e!1144076 (and e!1144064 tp!505525))))

(declare-fun b!1787468 () Bool)

(declare-fun e!1144072 () Bool)

(assert (=> b!1787468 (= e!1144055 e!1144072)))

(declare-fun res!806130 () Bool)

(assert (=> b!1787468 (=> res!806130 e!1144072)))

(assert (=> b!1787468 (= res!806130 (not (= lt!696459 lt!696485)))))

(declare-fun lt!696468 () Unit!34103)

(assert (=> b!1787468 (= lt!696468 e!1144049)))

(declare-fun c!290635 () Bool)

(assert (=> b!1787468 (= c!290635 (< lt!696459 lt!696485))))

(declare-fun b!1787469 () Bool)

(declare-fun res!806116 () Bool)

(assert (=> b!1787469 (=> res!806116 e!1144062)))

(assert (=> b!1787469 (= res!806116 (not (= lt!696449 (dynLambda!9740 (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) (value!110420 (_1!11049 lt!696470))))))))

(declare-fun b!1787470 () Bool)

(declare-fun tp!505524 () Bool)

(declare-fun inv!21 (TokenValue!3625) Bool)

(assert (=> b!1787470 (= e!1144059 (and (inv!21 (value!110420 token!523)) e!1144051 tp!505524))))

(declare-fun b!1787471 () Bool)

(declare-fun res!806114 () Bool)

(assert (=> b!1787471 (=> (not res!806114) (not e!1144073))))

(declare-fun rulesInvariant!2833 (LexerInterface!3164 List!19781) Bool)

(assert (=> b!1787471 (= res!806114 (rulesInvariant!2833 thiss!24550 rules!3447))))

(assert (=> b!1787472 (= e!1144047 (and tp!505519 tp!505526))))

(declare-fun b!1787473 () Bool)

(declare-fun res!806133 () Bool)

(assert (=> b!1787473 (=> (not res!806133) (not e!1144066))))

(assert (=> b!1787473 (= res!806133 (= (rule!5627 token!523) rule!422))))

(declare-fun b!1787474 () Bool)

(declare-fun e!1144071 () Bool)

(assert (=> b!1787474 (= e!1144066 (not e!1144071))))

(declare-fun res!806117 () Bool)

(assert (=> b!1787474 (=> res!806117 e!1144071)))

(assert (=> b!1787474 (= res!806117 (not (matchR!2336 (regex!3535 rule!422) lt!696456)))))

(declare-fun ruleValid!1033 (LexerInterface!3164 Rule!6870) Bool)

(assert (=> b!1787474 (ruleValid!1033 thiss!24550 rule!422)))

(declare-fun lt!696476 () Unit!34103)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!556 (LexerInterface!3164 Rule!6870 List!19781) Unit!34103)

(assert (=> b!1787474 (= lt!696476 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!556 thiss!24550 rule!422 rules!3447))))

(declare-fun b!1787475 () Bool)

(declare-fun res!806123 () Bool)

(assert (=> b!1787475 (=> res!806123 e!1144053)))

(assert (=> b!1787475 (= res!806123 (not (matchR!2336 (regex!3535 (rule!5627 (_1!11049 lt!696470))) lt!696466)))))

(declare-fun b!1787476 () Bool)

(assert (=> b!1787476 (= e!1144071 e!1144070)))

(declare-fun res!806119 () Bool)

(assert (=> b!1787476 (=> res!806119 e!1144070)))

(declare-fun prefixMatch!746 (Regex!4863 List!19780) Bool)

(assert (=> b!1787476 (= res!806119 (prefixMatch!746 lt!696445 lt!696450))))

(assert (=> b!1787476 (= lt!696450 (++!5359 lt!696456 (Cons!19710 (head!4190 suffix!1421) Nil!19710)))))

(declare-fun rulesRegex!891 (LexerInterface!3164 List!19781) Regex!4863)

(assert (=> b!1787476 (= lt!696445 (rulesRegex!891 thiss!24550 rules!3447))))

(declare-fun b!1787477 () Bool)

(assert (=> b!1787477 (= e!1144050 (= (rule!5627 (_1!11049 lt!696470)) lt!696487))))

(declare-fun b!1787478 () Bool)

(assert (=> b!1787478 (= e!1144072 e!1144046)))

(declare-fun res!806131 () Bool)

(assert (=> b!1787478 (=> res!806131 e!1144046)))

(assert (=> b!1787478 (= res!806131 (= (rule!5627 (_1!11049 lt!696470)) (rule!5627 token!523)))))

(assert (=> b!1787478 (= suffix!1421 (_2!11049 lt!696470))))

(declare-fun lt!696478 () Unit!34103)

(assert (=> b!1787478 (= lt!696478 (lemmaSamePrefixThenSameSuffix!886 lt!696456 suffix!1421 lt!696456 (_2!11049 lt!696470) lt!696458))))

(assert (=> b!1787478 (= lt!696466 lt!696456)))

(declare-fun lt!696465 () Unit!34103)

(declare-fun lemmaIsPrefixSameLengthThenSameList!271 (List!19780 List!19780 List!19780) Unit!34103)

(assert (=> b!1787478 (= lt!696465 (lemmaIsPrefixSameLengthThenSameList!271 lt!696466 lt!696456 lt!696458))))

(declare-fun b!1787479 () Bool)

(assert (=> b!1787479 (= e!1144054 (contains!3567 rules!3447 (rule!5627 token!523)))))

(declare-fun b!1787480 () Bool)

(declare-fun res!806115 () Bool)

(assert (=> b!1787480 (=> res!806115 e!1144071)))

(assert (=> b!1787480 (= res!806115 (isEmpty!12459 suffix!1421))))

(assert (=> b!1787481 (= e!1144048 (and tp!505521 tp!505518))))

(declare-fun b!1787482 () Bool)

(declare-fun tp!505522 () Bool)

(assert (=> b!1787482 (= e!1144064 (and tp!505522 (inv!25669 (tag!3939 (h!25112 rules!3447))) (inv!25675 (transformation!3535 (h!25112 rules!3447))) e!1144077))))

(declare-fun b!1787483 () Bool)

(assert (=> b!1787483 (= e!1144078 e!1144056)))

(declare-fun res!806121 () Bool)

(assert (=> b!1787483 (=> res!806121 e!1144056)))

(declare-fun lt!696457 () Option!4093)

(declare-fun lt!696492 () List!19780)

(assert (=> b!1787483 (= res!806121 (or (not (= lt!696492 (_2!11049 lt!696470))) (not (= lt!696457 (Some!4092 (tuple2!19295 (_1!11049 lt!696470) lt!696492))))))))

(assert (=> b!1787483 (= (_2!11049 lt!696470) lt!696492)))

(declare-fun lt!696463 () Unit!34103)

(assert (=> b!1787483 (= lt!696463 (lemmaSamePrefixThenSameSuffix!886 lt!696466 (_2!11049 lt!696470) lt!696466 lt!696492 lt!696458))))

(assert (=> b!1787483 (= lt!696492 (getSuffix!942 lt!696458 lt!696466))))

(declare-fun lt!696447 () Int)

(declare-fun lt!696464 () TokenValue!3625)

(assert (=> b!1787483 (= lt!696457 (Some!4092 (tuple2!19295 (Token!6637 lt!696464 (rule!5627 (_1!11049 lt!696470)) lt!696447 lt!696466) (_2!11049 lt!696470))))))

(declare-fun maxPrefixOneRule!1087 (LexerInterface!3164 Rule!6870 List!19780) Option!4093)

(assert (=> b!1787483 (= lt!696457 (maxPrefixOneRule!1087 thiss!24550 (rule!5627 (_1!11049 lt!696470)) lt!696458))))

(declare-fun size!15660 (List!19780) Int)

(assert (=> b!1787483 (= lt!696447 (size!15660 lt!696466))))

(assert (=> b!1787483 (= lt!696464 (apply!5335 (transformation!3535 (rule!5627 (_1!11049 lt!696470))) (seqFromList!2504 lt!696466)))))

(declare-fun lt!696477 () Unit!34103)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!465 (LexerInterface!3164 List!19781 List!19780 List!19780 List!19780 Rule!6870) Unit!34103)

(assert (=> b!1787483 (= lt!696477 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!465 thiss!24550 rules!3447 lt!696466 lt!696458 (_2!11049 lt!696470) (rule!5627 (_1!11049 lt!696470))))))

(assert (= (and start!178110 res!806128) b!1787456))

(assert (= (and b!1787456 res!806124) b!1787471))

(assert (= (and b!1787471 res!806114) b!1787455))

(assert (= (and b!1787455 res!806134) b!1787465))

(assert (= (and b!1787465 res!806129) b!1787444))

(assert (= (and b!1787444 res!806126) b!1787461))

(assert (= (and b!1787461 res!806125) b!1787473))

(assert (= (and b!1787473 res!806133) b!1787474))

(assert (= (and b!1787474 (not res!806117)) b!1787480))

(assert (= (and b!1787480 (not res!806115)) b!1787476))

(assert (= (and b!1787476 (not res!806119)) b!1787451))

(assert (= (and b!1787451 res!806136) b!1787443))

(assert (= (and b!1787443 res!806112) b!1787477))

(assert (= (and b!1787451 (not res!806135)) b!1787475))

(assert (= (and b!1787475 (not res!806123)) b!1787466))

(assert (= (and b!1787466 (not res!806118)) b!1787460))

(assert (= (and b!1787460 (not res!806111)) b!1787469))

(assert (= (and b!1787469 (not res!806116)) b!1787452))

(assert (= (and b!1787452 (not res!806113)) b!1787483))

(assert (= (and b!1787483 (not res!806121)) b!1787445))

(assert (= (and b!1787445 c!290634) b!1787463))

(assert (= (and b!1787445 (not c!290634)) b!1787447))

(assert (= (and b!1787445 (not res!806127)) b!1787468))

(assert (= (and b!1787468 c!290635) b!1787448))

(assert (= (and b!1787468 (not c!290635)) b!1787457))

(assert (= (and b!1787468 (not res!806130)) b!1787478))

(assert (= (and b!1787478 (not res!806131)) b!1787450))

(assert (= (and b!1787450 c!290633) b!1787462))

(assert (= (and b!1787450 (not c!290633)) b!1787454))

(assert (= (and b!1787462 res!806120) b!1787458))

(assert (= (and b!1787450 (not res!806122)) b!1787459))

(assert (= (and b!1787459 (not res!806132)) b!1787479))

(assert (= (and start!178110 ((_ is Cons!19710) suffix!1421)) b!1787453))

(assert (= b!1787449 b!1787472))

(assert (= start!178110 b!1787449))

(assert (= b!1787446 b!1787481))

(assert (= b!1787470 b!1787446))

(assert (= start!178110 b!1787470))

(assert (= b!1787482 b!1787464))

(assert (= b!1787467 b!1787482))

(assert (= (and start!178110 ((_ is Cons!19711) rules!3447)) b!1787467))

(declare-fun b_lambda!58687 () Bool)

(assert (=> (not b_lambda!58687) (not b!1787460)))

(declare-fun t!167265 () Bool)

(declare-fun tb!108895 () Bool)

(assert (=> (and b!1787481 (= (toChars!4921 (transformation!3535 (rule!5627 token!523))) (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167265) tb!108895))

(declare-fun e!1144090 () Bool)

(declare-fun tp!505529 () Bool)

(declare-fun b!1787499 () Bool)

(declare-fun inv!25676 (Conc!6557) Bool)

(assert (=> b!1787499 (= e!1144090 (and (inv!25676 (c!290637 (dynLambda!9740 (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) (dynLambda!9741 (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) lt!696449)))) tp!505529))))

(declare-fun result!131026 () Bool)

(declare-fun inv!25677 (BalanceConc!13058) Bool)

(assert (=> tb!108895 (= result!131026 (and (inv!25677 (dynLambda!9740 (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) (dynLambda!9741 (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) lt!696449))) e!1144090))))

(assert (= tb!108895 b!1787499))

(declare-fun m!2211287 () Bool)

(assert (=> b!1787499 m!2211287))

(declare-fun m!2211289 () Bool)

(assert (=> tb!108895 m!2211289))

(assert (=> b!1787460 t!167265))

(declare-fun b_and!137691 () Bool)

(assert (= b_and!137681 (and (=> t!167265 result!131026) b_and!137691)))

(declare-fun tb!108897 () Bool)

(declare-fun t!167267 () Bool)

(assert (=> (and b!1787472 (= (toChars!4921 (transformation!3535 rule!422)) (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167267) tb!108897))

(declare-fun result!131030 () Bool)

(assert (= result!131030 result!131026))

(assert (=> b!1787460 t!167267))

(declare-fun b_and!137693 () Bool)

(assert (= b_and!137685 (and (=> t!167267 result!131030) b_and!137693)))

(declare-fun t!167269 () Bool)

(declare-fun tb!108899 () Bool)

(assert (=> (and b!1787464 (= (toChars!4921 (transformation!3535 (h!25112 rules!3447))) (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167269) tb!108899))

(declare-fun result!131032 () Bool)

(assert (= result!131032 result!131026))

(assert (=> b!1787460 t!167269))

(declare-fun b_and!137695 () Bool)

(assert (= b_and!137689 (and (=> t!167269 result!131032) b_and!137695)))

(declare-fun b_lambda!58689 () Bool)

(assert (=> (not b_lambda!58689) (not b!1787460)))

(declare-fun tb!108901 () Bool)

(declare-fun t!167271 () Bool)

(assert (=> (and b!1787481 (= (toValue!5062 (transformation!3535 (rule!5627 token!523))) (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167271) tb!108901))

(declare-fun result!131034 () Bool)

(assert (=> tb!108901 (= result!131034 (inv!21 (dynLambda!9741 (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) lt!696449)))))

(declare-fun m!2211291 () Bool)

(assert (=> tb!108901 m!2211291))

(assert (=> b!1787460 t!167271))

(declare-fun b_and!137697 () Bool)

(assert (= b_and!137679 (and (=> t!167271 result!131034) b_and!137697)))

(declare-fun tb!108903 () Bool)

(declare-fun t!167273 () Bool)

(assert (=> (and b!1787472 (= (toValue!5062 (transformation!3535 rule!422)) (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167273) tb!108903))

(declare-fun result!131038 () Bool)

(assert (= result!131038 result!131034))

(assert (=> b!1787460 t!167273))

(declare-fun b_and!137699 () Bool)

(assert (= b_and!137683 (and (=> t!167273 result!131038) b_and!137699)))

(declare-fun t!167275 () Bool)

(declare-fun tb!108905 () Bool)

(assert (=> (and b!1787464 (= (toValue!5062 (transformation!3535 (h!25112 rules!3447))) (toValue!5062 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167275) tb!108905))

(declare-fun result!131040 () Bool)

(assert (= result!131040 result!131034))

(assert (=> b!1787460 t!167275))

(declare-fun b_and!137701 () Bool)

(assert (= b_and!137687 (and (=> t!167275 result!131040) b_and!137701)))

(declare-fun b_lambda!58691 () Bool)

(assert (=> (not b_lambda!58691) (not b!1787469)))

(declare-fun t!167277 () Bool)

(declare-fun tb!108907 () Bool)

(assert (=> (and b!1787481 (= (toChars!4921 (transformation!3535 (rule!5627 token!523))) (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167277) tb!108907))

(declare-fun b!1787502 () Bool)

(declare-fun e!1144094 () Bool)

(declare-fun tp!505530 () Bool)

(assert (=> b!1787502 (= e!1144094 (and (inv!25676 (c!290637 (dynLambda!9740 (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) (value!110420 (_1!11049 lt!696470))))) tp!505530))))

(declare-fun result!131042 () Bool)

(assert (=> tb!108907 (= result!131042 (and (inv!25677 (dynLambda!9740 (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470)))) (value!110420 (_1!11049 lt!696470)))) e!1144094))))

(assert (= tb!108907 b!1787502))

(declare-fun m!2211293 () Bool)

(assert (=> b!1787502 m!2211293))

(declare-fun m!2211295 () Bool)

(assert (=> tb!108907 m!2211295))

(assert (=> b!1787469 t!167277))

(declare-fun b_and!137703 () Bool)

(assert (= b_and!137691 (and (=> t!167277 result!131042) b_and!137703)))

(declare-fun tb!108909 () Bool)

(declare-fun t!167279 () Bool)

(assert (=> (and b!1787472 (= (toChars!4921 (transformation!3535 rule!422)) (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167279) tb!108909))

(declare-fun result!131044 () Bool)

(assert (= result!131044 result!131042))

(assert (=> b!1787469 t!167279))

(declare-fun b_and!137705 () Bool)

(assert (= b_and!137693 (and (=> t!167279 result!131044) b_and!137705)))

(declare-fun tb!108911 () Bool)

(declare-fun t!167281 () Bool)

(assert (=> (and b!1787464 (= (toChars!4921 (transformation!3535 (h!25112 rules!3447))) (toChars!4921 (transformation!3535 (rule!5627 (_1!11049 lt!696470))))) t!167281) tb!108911))

(declare-fun result!131046 () Bool)

(assert (= result!131046 result!131042))

(assert (=> b!1787469 t!167281))

(declare-fun b_and!137707 () Bool)

(assert (= b_and!137695 (and (=> t!167281 result!131046) b_and!137707)))

(declare-fun m!2211297 () Bool)

(assert (=> b!1787462 m!2211297))

(declare-fun m!2211299 () Bool)

(assert (=> b!1787462 m!2211299))

(declare-fun m!2211301 () Bool)

(assert (=> b!1787460 m!2211301))

(assert (=> b!1787460 m!2211301))

(declare-fun m!2211303 () Bool)

(assert (=> b!1787460 m!2211303))

(assert (=> b!1787460 m!2211303))

(declare-fun m!2211305 () Bool)

(assert (=> b!1787460 m!2211305))

(declare-fun m!2211307 () Bool)

(assert (=> b!1787460 m!2211307))

(declare-fun m!2211309 () Bool)

(assert (=> b!1787474 m!2211309))

(declare-fun m!2211311 () Bool)

(assert (=> b!1787474 m!2211311))

(declare-fun m!2211313 () Bool)

(assert (=> b!1787474 m!2211313))

(declare-fun m!2211315 () Bool)

(assert (=> b!1787463 m!2211315))

(declare-fun m!2211317 () Bool)

(assert (=> b!1787463 m!2211317))

(declare-fun m!2211319 () Bool)

(assert (=> b!1787463 m!2211319))

(declare-fun m!2211321 () Bool)

(assert (=> b!1787463 m!2211321))

(declare-fun m!2211323 () Bool)

(assert (=> b!1787463 m!2211323))

(declare-fun m!2211325 () Bool)

(assert (=> b!1787463 m!2211325))

(declare-fun m!2211327 () Bool)

(assert (=> b!1787463 m!2211327))

(declare-fun m!2211329 () Bool)

(assert (=> b!1787463 m!2211329))

(declare-fun m!2211331 () Bool)

(assert (=> b!1787463 m!2211331))

(assert (=> b!1787463 m!2211329))

(declare-fun m!2211333 () Bool)

(assert (=> b!1787463 m!2211333))

(declare-fun m!2211335 () Bool)

(assert (=> b!1787463 m!2211335))

(declare-fun m!2211337 () Bool)

(assert (=> b!1787482 m!2211337))

(declare-fun m!2211339 () Bool)

(assert (=> b!1787482 m!2211339))

(declare-fun m!2211341 () Bool)

(assert (=> b!1787445 m!2211341))

(declare-fun m!2211343 () Bool)

(assert (=> b!1787445 m!2211343))

(declare-fun m!2211345 () Bool)

(assert (=> b!1787445 m!2211345))

(declare-fun m!2211347 () Bool)

(assert (=> b!1787451 m!2211347))

(declare-fun m!2211349 () Bool)

(assert (=> b!1787451 m!2211349))

(declare-fun m!2211351 () Bool)

(assert (=> b!1787451 m!2211351))

(declare-fun m!2211353 () Bool)

(assert (=> b!1787451 m!2211353))

(declare-fun m!2211355 () Bool)

(assert (=> b!1787451 m!2211355))

(declare-fun m!2211357 () Bool)

(assert (=> b!1787451 m!2211357))

(declare-fun m!2211359 () Bool)

(assert (=> b!1787451 m!2211359))

(declare-fun m!2211361 () Bool)

(assert (=> b!1787451 m!2211361))

(declare-fun m!2211363 () Bool)

(assert (=> b!1787451 m!2211363))

(declare-fun m!2211365 () Bool)

(assert (=> b!1787451 m!2211365))

(declare-fun m!2211367 () Bool)

(assert (=> b!1787451 m!2211367))

(declare-fun m!2211369 () Bool)

(assert (=> b!1787451 m!2211369))

(assert (=> b!1787451 m!2211347))

(declare-fun m!2211371 () Bool)

(assert (=> b!1787451 m!2211371))

(declare-fun m!2211373 () Bool)

(assert (=> b!1787451 m!2211373))

(declare-fun m!2211375 () Bool)

(assert (=> b!1787451 m!2211375))

(declare-fun m!2211377 () Bool)

(assert (=> b!1787466 m!2211377))

(declare-fun m!2211379 () Bool)

(assert (=> b!1787466 m!2211379))

(declare-fun m!2211381 () Bool)

(assert (=> b!1787480 m!2211381))

(assert (=> b!1787443 m!2211363))

(assert (=> b!1787443 m!2211363))

(declare-fun m!2211383 () Bool)

(assert (=> b!1787443 m!2211383))

(assert (=> b!1787443 m!2211383))

(declare-fun m!2211385 () Bool)

(assert (=> b!1787443 m!2211385))

(declare-fun m!2211387 () Bool)

(assert (=> b!1787443 m!2211387))

(declare-fun m!2211389 () Bool)

(assert (=> b!1787479 m!2211389))

(declare-fun m!2211391 () Bool)

(assert (=> b!1787478 m!2211391))

(declare-fun m!2211393 () Bool)

(assert (=> b!1787478 m!2211393))

(declare-fun m!2211395 () Bool)

(assert (=> b!1787455 m!2211395))

(declare-fun m!2211397 () Bool)

(assert (=> b!1787475 m!2211397))

(declare-fun m!2211399 () Bool)

(assert (=> b!1787476 m!2211399))

(declare-fun m!2211401 () Bool)

(assert (=> b!1787476 m!2211401))

(declare-fun m!2211403 () Bool)

(assert (=> b!1787476 m!2211403))

(declare-fun m!2211405 () Bool)

(assert (=> b!1787476 m!2211405))

(declare-fun m!2211407 () Bool)

(assert (=> b!1787450 m!2211407))

(declare-fun m!2211409 () Bool)

(assert (=> b!1787450 m!2211409))

(declare-fun m!2211411 () Bool)

(assert (=> b!1787465 m!2211411))

(declare-fun m!2211413 () Bool)

(assert (=> b!1787465 m!2211413))

(declare-fun m!2211415 () Bool)

(assert (=> b!1787465 m!2211415))

(declare-fun m!2211417 () Bool)

(assert (=> b!1787465 m!2211417))

(declare-fun m!2211419 () Bool)

(assert (=> b!1787461 m!2211419))

(declare-fun m!2211421 () Bool)

(assert (=> b!1787446 m!2211421))

(declare-fun m!2211423 () Bool)

(assert (=> b!1787446 m!2211423))

(declare-fun m!2211425 () Bool)

(assert (=> b!1787459 m!2211425))

(declare-fun m!2211427 () Bool)

(assert (=> b!1787448 m!2211427))

(declare-fun m!2211429 () Bool)

(assert (=> b!1787470 m!2211429))

(declare-fun m!2211431 () Bool)

(assert (=> b!1787452 m!2211431))

(declare-fun m!2211433 () Bool)

(assert (=> b!1787452 m!2211433))

(declare-fun m!2211435 () Bool)

(assert (=> b!1787452 m!2211435))

(declare-fun m!2211437 () Bool)

(assert (=> b!1787452 m!2211437))

(assert (=> b!1787452 m!2211433))

(declare-fun m!2211439 () Bool)

(assert (=> b!1787452 m!2211439))

(declare-fun m!2211441 () Bool)

(assert (=> b!1787469 m!2211441))

(declare-fun m!2211443 () Bool)

(assert (=> b!1787471 m!2211443))

(declare-fun m!2211445 () Bool)

(assert (=> b!1787449 m!2211445))

(declare-fun m!2211447 () Bool)

(assert (=> b!1787449 m!2211447))

(declare-fun m!2211449 () Bool)

(assert (=> b!1787444 m!2211449))

(declare-fun m!2211451 () Bool)

(assert (=> start!178110 m!2211451))

(declare-fun m!2211453 () Bool)

(assert (=> b!1787456 m!2211453))

(declare-fun m!2211455 () Bool)

(assert (=> b!1787483 m!2211455))

(declare-fun m!2211457 () Bool)

(assert (=> b!1787483 m!2211457))

(declare-fun m!2211459 () Bool)

(assert (=> b!1787483 m!2211459))

(declare-fun m!2211461 () Bool)

(assert (=> b!1787483 m!2211461))

(declare-fun m!2211463 () Bool)

(assert (=> b!1787483 m!2211463))

(declare-fun m!2211465 () Bool)

(assert (=> b!1787483 m!2211465))

(assert (=> b!1787483 m!2211459))

(declare-fun m!2211467 () Bool)

(assert (=> b!1787483 m!2211467))

(check-sat (not b!1787474) (not b_lambda!58689) (not b!1787450) (not b!1787449) (not b!1787448) (not b!1787470) (not b!1787471) (not b!1787478) (not b!1787483) b_and!137703 (not b!1787465) (not b!1787502) tp_is_empty!7969 (not b_next!50417) (not b!1787460) (not b!1787443) (not b!1787459) (not b!1787452) (not b!1787467) (not b!1787451) (not tb!108907) b_and!137699 (not b!1787446) (not b!1787445) (not b_next!50415) (not b!1787479) (not b_next!50411) b_and!137701 (not b!1787466) (not b!1787476) (not b!1787480) b_and!137707 (not b_next!50413) (not b!1787475) (not tb!108901) (not b!1787444) (not b!1787463) b_and!137705 (not b_next!50409) (not b_lambda!58687) (not b!1787462) b_and!137697 (not b!1787499) (not b!1787456) (not b_lambda!58691) (not b!1787455) (not b!1787482) (not b_next!50407) (not start!178110) (not tb!108895) (not b!1787461) (not b!1787453))
(check-sat b_and!137703 (not b_next!50417) b_and!137699 (not b_next!50415) b_and!137705 (not b_next!50407) (not b_next!50411) b_and!137701 b_and!137707 (not b_next!50413) (not b_next!50409) b_and!137697)
