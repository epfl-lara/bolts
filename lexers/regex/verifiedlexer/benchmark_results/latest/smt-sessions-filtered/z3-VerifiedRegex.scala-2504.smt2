; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132488 () Bool)

(assert start!132488)

(declare-fun b!1432461 () Bool)

(declare-fun res!648448 () Bool)

(declare-fun e!914382 () Bool)

(assert (=> b!1432461 (=> (not res!648448) (not e!914382))))

(declare-datatypes ((C!8020 0))(
  ( (C!8021 (val!4580 Int)) )
))
(declare-datatypes ((List!14930 0))(
  ( (Nil!14864) (Cons!14864 (h!20265 C!8020) (t!127149 List!14930)) )
))
(declare-datatypes ((IArray!10085 0))(
  ( (IArray!10086 (innerList!5100 List!14930)) )
))
(declare-datatypes ((Conc!5040 0))(
  ( (Node!5040 (left!12666 Conc!5040) (right!12996 Conc!5040) (csize!10310 Int) (cheight!5251 Int)) (Leaf!7545 (xs!7773 IArray!10085) (csize!10311 Int)) (Empty!5040) )
))
(declare-datatypes ((BalanceConc!10020 0))(
  ( (BalanceConc!10021 (c!235460 Conc!5040)) )
))
(declare-datatypes ((List!14931 0))(
  ( (Nil!14865) (Cons!14865 (h!20266 (_ BitVec 16)) (t!127150 List!14931)) )
))
(declare-datatypes ((TokenValue!2697 0))(
  ( (FloatLiteralValue!5394 (text!19324 List!14931)) (TokenValueExt!2696 (__x!9192 Int)) (Broken!13485 (value!83921 List!14931)) (Object!2762) (End!2697) (Def!2697) (Underscore!2697) (Match!2697) (Else!2697) (Error!2697) (Case!2697) (If!2697) (Extends!2697) (Abstract!2697) (Class!2697) (Val!2697) (DelimiterValue!5394 (del!2757 List!14931)) (KeywordValue!2703 (value!83922 List!14931)) (CommentValue!5394 (value!83923 List!14931)) (WhitespaceValue!5394 (value!83924 List!14931)) (IndentationValue!2697 (value!83925 List!14931)) (String!17740) (Int32!2697) (Broken!13486 (value!83926 List!14931)) (Boolean!2698) (Unit!22420) (OperatorValue!2700 (op!2757 List!14931)) (IdentifierValue!5394 (value!83927 List!14931)) (IdentifierValue!5395 (value!83928 List!14931)) (WhitespaceValue!5395 (value!83929 List!14931)) (True!5394) (False!5394) (Broken!13487 (value!83930 List!14931)) (Broken!13488 (value!83931 List!14931)) (True!5395) (RightBrace!2697) (RightBracket!2697) (Colon!2697) (Null!2697) (Comma!2697) (LeftBracket!2697) (False!5395) (LeftBrace!2697) (ImaginaryLiteralValue!2697 (text!19325 List!14931)) (StringLiteralValue!8091 (value!83932 List!14931)) (EOFValue!2697 (value!83933 List!14931)) (IdentValue!2697 (value!83934 List!14931)) (DelimiterValue!5395 (value!83935 List!14931)) (DedentValue!2697 (value!83936 List!14931)) (NewLineValue!2697 (value!83937 List!14931)) (IntegerValue!8091 (value!83938 (_ BitVec 32)) (text!19326 List!14931)) (IntegerValue!8092 (value!83939 Int) (text!19327 List!14931)) (Times!2697) (Or!2697) (Equal!2697) (Minus!2697) (Broken!13489 (value!83940 List!14931)) (And!2697) (Div!2697) (LessEqual!2697) (Mod!2697) (Concat!6618) (Not!2697) (Plus!2697) (SpaceValue!2697 (value!83941 List!14931)) (IntegerValue!8093 (value!83942 Int) (text!19328 List!14931)) (StringLiteralValue!8092 (text!19329 List!14931)) (FloatLiteralValue!5395 (text!19330 List!14931)) (BytesLiteralValue!2697 (value!83943 List!14931)) (CommentValue!5395 (value!83944 List!14931)) (StringLiteralValue!8093 (value!83945 List!14931)) (ErrorTokenValue!2697 (msg!2758 List!14931)) )
))
(declare-datatypes ((Regex!3921 0))(
  ( (ElementMatch!3921 (c!235461 C!8020)) (Concat!6619 (regOne!8354 Regex!3921) (regTwo!8354 Regex!3921)) (EmptyExpr!3921) (Star!3921 (reg!4250 Regex!3921)) (EmptyLang!3921) (Union!3921 (regOne!8355 Regex!3921) (regTwo!8355 Regex!3921)) )
))
(declare-datatypes ((String!17741 0))(
  ( (String!17742 (value!83946 String)) )
))
(declare-datatypes ((TokenValueInjection!5054 0))(
  ( (TokenValueInjection!5055 (toValue!3910 Int) (toChars!3769 Int)) )
))
(declare-datatypes ((Rule!5014 0))(
  ( (Rule!5015 (regex!2607 Regex!3921) (tag!2869 String!17741) (isSeparator!2607 Bool) (transformation!2607 TokenValueInjection!5054)) )
))
(declare-datatypes ((Token!4876 0))(
  ( (Token!4877 (value!83947 TokenValue!2697) (rule!4370 Rule!5014) (size!12195 Int) (originalCharacters!3469 List!14930)) )
))
(declare-datatypes ((List!14932 0))(
  ( (Nil!14866) (Cons!14866 (h!20267 Token!4876) (t!127151 List!14932)) )
))
(declare-datatypes ((IArray!10087 0))(
  ( (IArray!10088 (innerList!5101 List!14932)) )
))
(declare-datatypes ((Conc!5041 0))(
  ( (Node!5041 (left!12667 Conc!5041) (right!12997 Conc!5041) (csize!10312 Int) (cheight!5252 Int)) (Leaf!7546 (xs!7774 IArray!10087) (csize!10313 Int)) (Empty!5041) )
))
(declare-datatypes ((BalanceConc!10022 0))(
  ( (BalanceConc!10023 (c!235462 Conc!5041)) )
))
(declare-datatypes ((List!14933 0))(
  ( (Nil!14867) (Cons!14867 (h!20268 Rule!5014) (t!127152 List!14933)) )
))
(declare-datatypes ((PrintableTokens!996 0))(
  ( (PrintableTokens!997 (rules!11340 List!14933) (tokens!1956 BalanceConc!10022)) )
))
(declare-fun thiss!10022 () PrintableTokens!996)

(declare-fun isEmpty!9217 (BalanceConc!10022) Bool)

(assert (=> b!1432461 (= res!648448 (not (isEmpty!9217 (tokens!1956 thiss!10022))))))

(declare-fun res!648451 () Bool)

(declare-fun e!914387 () Bool)

(assert (=> start!132488 (=> (not res!648451) (not e!914387))))

(declare-fun other!32 () PrintableTokens!996)

(assert (=> start!132488 (= res!648451 (= (rules!11340 thiss!10022) (rules!11340 other!32)))))

(assert (=> start!132488 e!914387))

(declare-fun e!914381 () Bool)

(declare-fun inv!19733 (PrintableTokens!996) Bool)

(assert (=> start!132488 (and (inv!19733 thiss!10022) e!914381)))

(declare-fun e!914388 () Bool)

(assert (=> start!132488 (and (inv!19733 other!32) e!914388)))

(declare-fun b!1432462 () Bool)

(declare-fun e!914385 () Bool)

(declare-fun tp!406030 () Bool)

(declare-fun inv!19734 (Conc!5041) Bool)

(assert (=> b!1432462 (= e!914385 (and (inv!19734 (c!235462 (tokens!1956 other!32))) tp!406030))))

(declare-fun b!1432463 () Bool)

(declare-fun e!914383 () Bool)

(assert (=> b!1432463 (= e!914383 true)))

(declare-fun lt!486733 () BalanceConc!10022)

(declare-fun print!1048 (PrintableTokens!996) BalanceConc!10020)

(declare-datatypes ((LexerInterface!2271 0))(
  ( (LexerInterfaceExt!2268 (__x!9193 Int)) (Lexer!2269) )
))
(declare-fun print!1049 (LexerInterface!2271 BalanceConc!10022) BalanceConc!10020)

(assert (=> b!1432463 (= (print!1048 (PrintableTokens!997 (rules!11340 thiss!10022) lt!486733)) (print!1049 Lexer!2269 lt!486733))))

(declare-datatypes ((Unit!22421 0))(
  ( (Unit!22422) )
))
(declare-fun lt!486726 () Unit!22421)

(declare-fun theoremInvertabilityWhenTokenListSeparable!61 (LexerInterface!2271 List!14933 List!14932) Unit!22421)

(declare-fun list!5904 (BalanceConc!10022) List!14932)

(assert (=> b!1432463 (= lt!486726 (theoremInvertabilityWhenTokenListSeparable!61 Lexer!2269 (rules!11340 thiss!10022) (list!5904 lt!486733)))))

(assert (=> b!1432463 (= (print!1048 other!32) (print!1049 Lexer!2269 (tokens!1956 other!32)))))

(declare-fun lt!486730 () Unit!22421)

(declare-fun lt!486721 () List!14932)

(assert (=> b!1432463 (= lt!486730 (theoremInvertabilityWhenTokenListSeparable!61 Lexer!2269 (rules!11340 other!32) lt!486721))))

(assert (=> b!1432463 (= (print!1048 thiss!10022) (print!1049 Lexer!2269 (tokens!1956 thiss!10022)))))

(declare-fun lt!486735 () Unit!22421)

(declare-fun lt!486734 () List!14932)

(assert (=> b!1432463 (= lt!486735 (theoremInvertabilityWhenTokenListSeparable!61 Lexer!2269 (rules!11340 thiss!10022) lt!486734))))

(declare-fun lt!486731 () List!14932)

(declare-fun printList!699 (LexerInterface!2271 List!14932) List!14930)

(declare-fun ++!3964 (List!14930 List!14930) List!14930)

(assert (=> b!1432463 (= (printList!699 Lexer!2269 lt!486731) (++!3964 (printList!699 Lexer!2269 lt!486734) (printList!699 Lexer!2269 lt!486721)))))

(declare-fun lt!486725 () Unit!22421)

(declare-fun lemmaPrintConcatSameAsConcatPrint!60 (LexerInterface!2271 List!14932 List!14932) Unit!22421)

(assert (=> b!1432463 (= lt!486725 (lemmaPrintConcatSameAsConcatPrint!60 Lexer!2269 lt!486734 lt!486721))))

(declare-fun b!1432464 () Bool)

(assert (=> b!1432464 (= e!914387 e!914382)))

(declare-fun res!648446 () Bool)

(assert (=> b!1432464 (=> (not res!648446) (not e!914382))))

(assert (=> b!1432464 (= res!648446 (not (isEmpty!9217 (tokens!1956 other!32))))))

(declare-fun lt!486728 () Unit!22421)

(declare-fun lemmaInvariant!303 (PrintableTokens!996) Unit!22421)

(assert (=> b!1432464 (= lt!486728 (lemmaInvariant!303 thiss!10022))))

(declare-fun lt!486723 () Unit!22421)

(assert (=> b!1432464 (= lt!486723 (lemmaInvariant!303 other!32))))

(declare-fun b!1432465 () Bool)

(declare-fun e!914386 () Bool)

(assert (=> b!1432465 (= e!914386 e!914383)))

(declare-fun res!648450 () Bool)

(assert (=> b!1432465 (=> res!648450 e!914383)))

(declare-fun tokensListTwoByTwoPredicateSeparable!106 (LexerInterface!2271 BalanceConc!10022 Int List!14933) Bool)

(assert (=> b!1432465 (= res!648450 (not (tokensListTwoByTwoPredicateSeparable!106 Lexer!2269 lt!486733 0 (rules!11340 thiss!10022))))))

(declare-fun ++!3965 (BalanceConc!10022 BalanceConc!10022) BalanceConc!10022)

(assert (=> b!1432465 (= lt!486733 (++!3965 (tokens!1956 thiss!10022) (tokens!1956 other!32)))))

(declare-fun e!914384 () Bool)

(assert (=> b!1432465 e!914384))

(declare-fun res!648449 () Bool)

(assert (=> b!1432465 (=> (not res!648449) (not e!914384))))

(declare-fun rulesProduceEachTokenIndividuallyList!714 (LexerInterface!2271 List!14933 List!14932) Bool)

(assert (=> b!1432465 (= res!648449 (rulesProduceEachTokenIndividuallyList!714 Lexer!2269 (rules!11340 thiss!10022) lt!486731))))

(declare-fun ++!3966 (List!14932 List!14932) List!14932)

(assert (=> b!1432465 (= lt!486731 (++!3966 lt!486734 lt!486721))))

(declare-fun lt!486727 () Unit!22421)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!44 (LexerInterface!2271 List!14933 List!14932 List!14932) Unit!22421)

(assert (=> b!1432465 (= lt!486727 (lemmaRulesProduceEachTokenIndividuallyConcat!44 Lexer!2269 (rules!11340 thiss!10022) lt!486734 lt!486721))))

(declare-fun lt!486736 () Unit!22421)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!44 (LexerInterface!2271 List!14932 List!14932 List!14933) Unit!22421)

(assert (=> b!1432465 (= lt!486736 (tokensListTwoByTwoPredicateConcatSeparableTokensList!44 Lexer!2269 lt!486734 lt!486721 (rules!11340 thiss!10022)))))

(declare-fun b!1432466 () Bool)

(declare-fun tokensListTwoByTwoPredicateSeparableList!229 (LexerInterface!2271 List!14932 List!14933) Bool)

(assert (=> b!1432466 (= e!914384 (tokensListTwoByTwoPredicateSeparableList!229 Lexer!2269 lt!486731 (rules!11340 thiss!10022)))))

(declare-fun b!1432467 () Bool)

(declare-fun e!914389 () Bool)

(declare-fun tp!406032 () Bool)

(assert (=> b!1432467 (= e!914389 (and (inv!19734 (c!235462 (tokens!1956 thiss!10022))) tp!406032))))

(declare-fun b!1432468 () Bool)

(assert (=> b!1432468 (= e!914382 (not e!914386))))

(declare-fun res!648447 () Bool)

(assert (=> b!1432468 (=> res!648447 e!914386)))

(declare-fun lt!486722 () Token!4876)

(declare-fun lt!486724 () Token!4876)

(declare-fun separableTokensPredicate!506 (LexerInterface!2271 Token!4876 Token!4876 List!14933) Bool)

(assert (=> b!1432468 (= res!648447 (not (separableTokensPredicate!506 Lexer!2269 lt!486724 lt!486722 (rules!11340 thiss!10022))))))

(declare-fun rulesProduceIndividualToken!1204 (LexerInterface!2271 List!14933 Token!4876) Bool)

(assert (=> b!1432468 (rulesProduceIndividualToken!1204 Lexer!2269 (rules!11340 thiss!10022) lt!486722)))

(declare-fun lt!486732 () Unit!22421)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!389 (LexerInterface!2271 List!14933 List!14932 Token!4876) Unit!22421)

(assert (=> b!1432468 (= lt!486732 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!389 Lexer!2269 (rules!11340 thiss!10022) lt!486721 lt!486722))))

(declare-fun head!2867 (BalanceConc!10022) Token!4876)

(assert (=> b!1432468 (= lt!486722 (head!2867 (tokens!1956 other!32)))))

(assert (=> b!1432468 (= lt!486721 (list!5904 (tokens!1956 other!32)))))

(assert (=> b!1432468 (rulesProduceIndividualToken!1204 Lexer!2269 (rules!11340 thiss!10022) lt!486724)))

(declare-fun lt!486729 () Unit!22421)

(assert (=> b!1432468 (= lt!486729 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!389 Lexer!2269 (rules!11340 thiss!10022) lt!486734 lt!486724))))

(declare-fun last!149 (BalanceConc!10022) Token!4876)

(assert (=> b!1432468 (= lt!486724 (last!149 (tokens!1956 thiss!10022)))))

(assert (=> b!1432468 (= lt!486734 (list!5904 (tokens!1956 thiss!10022)))))

(declare-fun tp!406029 () Bool)

(declare-fun b!1432469 () Bool)

(declare-fun inv!19735 (BalanceConc!10022) Bool)

(assert (=> b!1432469 (= e!914388 (and tp!406029 (inv!19735 (tokens!1956 other!32)) e!914385))))

(declare-fun tp!406031 () Bool)

(declare-fun b!1432470 () Bool)

(assert (=> b!1432470 (= e!914381 (and tp!406031 (inv!19735 (tokens!1956 thiss!10022)) e!914389))))

(assert (= (and start!132488 res!648451) b!1432464))

(assert (= (and b!1432464 res!648446) b!1432461))

(assert (= (and b!1432461 res!648448) b!1432468))

(assert (= (and b!1432468 (not res!648447)) b!1432465))

(assert (= (and b!1432465 res!648449) b!1432466))

(assert (= (and b!1432465 (not res!648450)) b!1432463))

(assert (= b!1432470 b!1432467))

(assert (= start!132488 b!1432470))

(assert (= b!1432469 b!1432462))

(assert (= start!132488 b!1432469))

(declare-fun m!1632487 () Bool)

(assert (=> b!1432463 m!1632487))

(declare-fun m!1632489 () Bool)

(assert (=> b!1432463 m!1632489))

(declare-fun m!1632491 () Bool)

(assert (=> b!1432463 m!1632491))

(declare-fun m!1632493 () Bool)

(assert (=> b!1432463 m!1632493))

(declare-fun m!1632495 () Bool)

(assert (=> b!1432463 m!1632495))

(declare-fun m!1632497 () Bool)

(assert (=> b!1432463 m!1632497))

(declare-fun m!1632499 () Bool)

(assert (=> b!1432463 m!1632499))

(declare-fun m!1632501 () Bool)

(assert (=> b!1432463 m!1632501))

(declare-fun m!1632503 () Bool)

(assert (=> b!1432463 m!1632503))

(declare-fun m!1632505 () Bool)

(assert (=> b!1432463 m!1632505))

(assert (=> b!1432463 m!1632503))

(assert (=> b!1432463 m!1632493))

(declare-fun m!1632507 () Bool)

(assert (=> b!1432463 m!1632507))

(declare-fun m!1632509 () Bool)

(assert (=> b!1432463 m!1632509))

(declare-fun m!1632511 () Bool)

(assert (=> b!1432463 m!1632511))

(declare-fun m!1632513 () Bool)

(assert (=> b!1432463 m!1632513))

(assert (=> b!1432463 m!1632495))

(declare-fun m!1632515 () Bool)

(assert (=> b!1432463 m!1632515))

(declare-fun m!1632517 () Bool)

(assert (=> b!1432462 m!1632517))

(declare-fun m!1632519 () Bool)

(assert (=> b!1432466 m!1632519))

(declare-fun m!1632521 () Bool)

(assert (=> b!1432467 m!1632521))

(declare-fun m!1632523 () Bool)

(assert (=> b!1432465 m!1632523))

(declare-fun m!1632525 () Bool)

(assert (=> b!1432465 m!1632525))

(declare-fun m!1632527 () Bool)

(assert (=> b!1432465 m!1632527))

(declare-fun m!1632529 () Bool)

(assert (=> b!1432465 m!1632529))

(declare-fun m!1632531 () Bool)

(assert (=> b!1432465 m!1632531))

(declare-fun m!1632533 () Bool)

(assert (=> b!1432465 m!1632533))

(declare-fun m!1632535 () Bool)

(assert (=> start!132488 m!1632535))

(declare-fun m!1632537 () Bool)

(assert (=> start!132488 m!1632537))

(declare-fun m!1632539 () Bool)

(assert (=> b!1432469 m!1632539))

(declare-fun m!1632541 () Bool)

(assert (=> b!1432470 m!1632541))

(declare-fun m!1632543 () Bool)

(assert (=> b!1432464 m!1632543))

(declare-fun m!1632545 () Bool)

(assert (=> b!1432464 m!1632545))

(declare-fun m!1632547 () Bool)

(assert (=> b!1432464 m!1632547))

(declare-fun m!1632549 () Bool)

(assert (=> b!1432461 m!1632549))

(declare-fun m!1632551 () Bool)

(assert (=> b!1432468 m!1632551))

(declare-fun m!1632553 () Bool)

(assert (=> b!1432468 m!1632553))

(declare-fun m!1632555 () Bool)

(assert (=> b!1432468 m!1632555))

(declare-fun m!1632557 () Bool)

(assert (=> b!1432468 m!1632557))

(declare-fun m!1632559 () Bool)

(assert (=> b!1432468 m!1632559))

(declare-fun m!1632561 () Bool)

(assert (=> b!1432468 m!1632561))

(declare-fun m!1632563 () Bool)

(assert (=> b!1432468 m!1632563))

(declare-fun m!1632565 () Bool)

(assert (=> b!1432468 m!1632565))

(declare-fun m!1632567 () Bool)

(assert (=> b!1432468 m!1632567))

(check-sat (not b!1432467) (not b!1432466) (not b!1432469) (not start!132488) (not b!1432463) (not b!1432464) (not b!1432461) (not b!1432465) (not b!1432462) (not b!1432468) (not b!1432470))
(check-sat)
