; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!169034 () Bool)

(assert start!169034)

(declare-fun b!1723549 () Bool)

(declare-fun b_free!47019 () Bool)

(declare-fun b_next!47723 () Bool)

(assert (=> b!1723549 (= b_free!47019 (not b_next!47723))))

(declare-fun tp!491982 () Bool)

(declare-fun b_and!126171 () Bool)

(assert (=> b!1723549 (= tp!491982 b_and!126171)))

(declare-fun b_free!47021 () Bool)

(declare-fun b_next!47725 () Bool)

(assert (=> b!1723549 (= b_free!47021 (not b_next!47725))))

(declare-fun tp!491986 () Bool)

(declare-fun b_and!126173 () Bool)

(assert (=> b!1723549 (= tp!491986 b_and!126173)))

(declare-fun b!1723550 () Bool)

(declare-fun b_free!47023 () Bool)

(declare-fun b_next!47727 () Bool)

(assert (=> b!1723550 (= b_free!47023 (not b_next!47727))))

(declare-fun tp!491984 () Bool)

(declare-fun b_and!126175 () Bool)

(assert (=> b!1723550 (= tp!491984 b_and!126175)))

(declare-fun b_free!47025 () Bool)

(declare-fun b_next!47729 () Bool)

(assert (=> b!1723550 (= b_free!47025 (not b_next!47729))))

(declare-fun tp!491992 () Bool)

(declare-fun b_and!126177 () Bool)

(assert (=> b!1723550 (= tp!491992 b_and!126177)))

(declare-fun b!1723545 () Bool)

(declare-fun b_free!47027 () Bool)

(declare-fun b_next!47731 () Bool)

(assert (=> b!1723545 (= b_free!47027 (not b_next!47731))))

(declare-fun tp!491987 () Bool)

(declare-fun b_and!126179 () Bool)

(assert (=> b!1723545 (= tp!491987 b_and!126179)))

(declare-fun b_free!47029 () Bool)

(declare-fun b_next!47733 () Bool)

(assert (=> b!1723545 (= b_free!47029 (not b_next!47733))))

(declare-fun tp!491985 () Bool)

(declare-fun b_and!126181 () Bool)

(assert (=> b!1723545 (= tp!491985 b_and!126181)))

(declare-fun b!1723578 () Bool)

(declare-fun e!1102515 () Bool)

(assert (=> b!1723578 (= e!1102515 true)))

(declare-fun b!1723577 () Bool)

(declare-fun e!1102514 () Bool)

(assert (=> b!1723577 (= e!1102514 e!1102515)))

(declare-fun b!1723576 () Bool)

(declare-fun e!1102513 () Bool)

(assert (=> b!1723576 (= e!1102513 e!1102514)))

(declare-fun b!1723551 () Bool)

(assert (=> b!1723551 e!1102513))

(assert (= b!1723577 b!1723578))

(assert (= b!1723576 b!1723577))

(assert (= b!1723551 b!1723576))

(declare-fun order!11531 () Int)

(declare-fun order!11533 () Int)

(declare-fun lambda!69182 () Int)

(declare-datatypes ((List!18942 0))(
  ( (Nil!18872) (Cons!18872 (h!24273 (_ BitVec 16)) (t!159809 List!18942)) )
))
(declare-datatypes ((TokenValue!3435 0))(
  ( (FloatLiteralValue!6870 (text!24490 List!18942)) (TokenValueExt!3434 (__x!12172 Int)) (Broken!17175 (value!104979 List!18942)) (Object!3504) (End!3435) (Def!3435) (Underscore!3435) (Match!3435) (Else!3435) (Error!3435) (Case!3435) (If!3435) (Extends!3435) (Abstract!3435) (Class!3435) (Val!3435) (DelimiterValue!6870 (del!3495 List!18942)) (KeywordValue!3441 (value!104980 List!18942)) (CommentValue!6870 (value!104981 List!18942)) (WhitespaceValue!6870 (value!104982 List!18942)) (IndentationValue!3435 (value!104983 List!18942)) (String!21506) (Int32!3435) (Broken!17176 (value!104984 List!18942)) (Boolean!3436) (Unit!32716) (OperatorValue!3438 (op!3495 List!18942)) (IdentifierValue!6870 (value!104985 List!18942)) (IdentifierValue!6871 (value!104986 List!18942)) (WhitespaceValue!6871 (value!104987 List!18942)) (True!6870) (False!6870) (Broken!17177 (value!104988 List!18942)) (Broken!17178 (value!104989 List!18942)) (True!6871) (RightBrace!3435) (RightBracket!3435) (Colon!3435) (Null!3435) (Comma!3435) (LeftBracket!3435) (False!6871) (LeftBrace!3435) (ImaginaryLiteralValue!3435 (text!24491 List!18942)) (StringLiteralValue!10305 (value!104990 List!18942)) (EOFValue!3435 (value!104991 List!18942)) (IdentValue!3435 (value!104992 List!18942)) (DelimiterValue!6871 (value!104993 List!18942)) (DedentValue!3435 (value!104994 List!18942)) (NewLineValue!3435 (value!104995 List!18942)) (IntegerValue!10305 (value!104996 (_ BitVec 32)) (text!24492 List!18942)) (IntegerValue!10306 (value!104997 Int) (text!24493 List!18942)) (Times!3435) (Or!3435) (Equal!3435) (Minus!3435) (Broken!17179 (value!104998 List!18942)) (And!3435) (Div!3435) (LessEqual!3435) (Mod!3435) (Concat!8108) (Not!3435) (Plus!3435) (SpaceValue!3435 (value!104999 List!18942)) (IntegerValue!10307 (value!105000 Int) (text!24494 List!18942)) (StringLiteralValue!10306 (text!24495 List!18942)) (FloatLiteralValue!6871 (text!24496 List!18942)) (BytesLiteralValue!3435 (value!105001 List!18942)) (CommentValue!6871 (value!105002 List!18942)) (StringLiteralValue!10307 (value!105003 List!18942)) (ErrorTokenValue!3435 (msg!3496 List!18942)) )
))
(declare-datatypes ((C!9520 0))(
  ( (C!9521 (val!5356 Int)) )
))
(declare-datatypes ((List!18943 0))(
  ( (Nil!18873) (Cons!18873 (h!24274 C!9520) (t!159810 List!18943)) )
))
(declare-datatypes ((Regex!4673 0))(
  ( (ElementMatch!4673 (c!281900 C!9520)) (Concat!8109 (regOne!9858 Regex!4673) (regTwo!9858 Regex!4673)) (EmptyExpr!4673) (Star!4673 (reg!5002 Regex!4673)) (EmptyLang!4673) (Union!4673 (regOne!9859 Regex!4673) (regTwo!9859 Regex!4673)) )
))
(declare-datatypes ((String!21507 0))(
  ( (String!21508 (value!105004 String)) )
))
(declare-datatypes ((IArray!12559 0))(
  ( (IArray!12560 (innerList!6337 List!18943)) )
))
(declare-datatypes ((Conc!6277 0))(
  ( (Node!6277 (left!15063 Conc!6277) (right!15393 Conc!6277) (csize!12784 Int) (cheight!6488 Int)) (Leaf!9170 (xs!9153 IArray!12559) (csize!12785 Int)) (Empty!6277) )
))
(declare-datatypes ((BalanceConc!12498 0))(
  ( (BalanceConc!12499 (c!281901 Conc!6277)) )
))
(declare-datatypes ((TokenValueInjection!6530 0))(
  ( (TokenValueInjection!6531 (toValue!4852 Int) (toChars!4711 Int)) )
))
(declare-datatypes ((Rule!6490 0))(
  ( (Rule!6491 (regex!3345 Regex!4673) (tag!3659 String!21507) (isSeparator!3345 Bool) (transformation!3345 TokenValueInjection!6530)) )
))
(declare-datatypes ((Token!6256 0))(
  ( (Token!6257 (value!105005 TokenValue!3435) (rule!5299 Rule!6490) (size!14996 Int) (originalCharacters!4159 List!18943)) )
))
(declare-datatypes ((tuple2!18562 0))(
  ( (tuple2!18563 (_1!10683 Token!6256) (_2!10683 List!18943)) )
))
(declare-fun lt!659705 () tuple2!18562)

(declare-fun dynLambda!8716 (Int Int) Int)

(declare-fun dynLambda!8717 (Int Int) Int)

(assert (=> b!1723578 (< (dynLambda!8716 order!11531 (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) (dynLambda!8717 order!11533 lambda!69182))))

(declare-fun order!11535 () Int)

(declare-fun dynLambda!8718 (Int Int) Int)

(assert (=> b!1723578 (< (dynLambda!8718 order!11535 (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) (dynLambda!8717 order!11533 lambda!69182))))

(declare-fun b!1723538 () Bool)

(declare-fun e!1102503 () Bool)

(declare-fun e!1102497 () Bool)

(assert (=> b!1723538 (= e!1102503 e!1102497)))

(declare-fun res!773452 () Bool)

(assert (=> b!1723538 (=> res!773452 e!1102497)))

(declare-fun lt!659711 () List!18943)

(declare-fun lt!659687 () List!18943)

(declare-fun isPrefix!1586 (List!18943 List!18943) Bool)

(assert (=> b!1723538 (= res!773452 (not (isPrefix!1586 lt!659711 lt!659687)))))

(declare-fun ++!5170 (List!18943 List!18943) List!18943)

(assert (=> b!1723538 (isPrefix!1586 lt!659711 (++!5170 lt!659711 (_2!10683 lt!659705)))))

(declare-datatypes ((Unit!32717 0))(
  ( (Unit!32718) )
))
(declare-fun lt!659685 () Unit!32717)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!1096 (List!18943 List!18943) Unit!32717)

(assert (=> b!1723538 (= lt!659685 (lemmaConcatTwoListThenFirstIsPrefix!1096 lt!659711 (_2!10683 lt!659705)))))

(declare-fun lt!659707 () BalanceConc!12498)

(declare-fun list!7626 (BalanceConc!12498) List!18943)

(assert (=> b!1723538 (= lt!659711 (list!7626 lt!659707))))

(declare-fun charsOf!1994 (Token!6256) BalanceConc!12498)

(assert (=> b!1723538 (= lt!659707 (charsOf!1994 (_1!10683 lt!659705)))))

(declare-fun e!1102483 () Bool)

(assert (=> b!1723538 e!1102483))

(declare-fun res!773464 () Bool)

(assert (=> b!1723538 (=> (not res!773464) (not e!1102483))))

(declare-datatypes ((Option!3714 0))(
  ( (None!3713) (Some!3713 (v!25120 Rule!6490)) )
))
(declare-fun lt!659697 () Option!3714)

(declare-fun isDefined!3057 (Option!3714) Bool)

(assert (=> b!1723538 (= res!773464 (isDefined!3057 lt!659697))))

(declare-datatypes ((List!18944 0))(
  ( (Nil!18874) (Cons!18874 (h!24275 Rule!6490) (t!159811 List!18944)) )
))
(declare-fun rules!3447 () List!18944)

(declare-datatypes ((LexerInterface!2974 0))(
  ( (LexerInterfaceExt!2971 (__x!12173 Int)) (Lexer!2972) )
))
(declare-fun thiss!24550 () LexerInterface!2974)

(declare-fun getRuleFromTag!395 (LexerInterface!2974 List!18944 String!21507) Option!3714)

(assert (=> b!1723538 (= lt!659697 (getRuleFromTag!395 thiss!24550 rules!3447 (tag!3659 (rule!5299 (_1!10683 lt!659705)))))))

(declare-fun lt!659691 () Unit!32717)

(declare-fun lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!395 (LexerInterface!2974 List!18944 List!18943 Token!6256) Unit!32717)

(assert (=> b!1723538 (= lt!659691 (lemmaMaxPrefReturnTokenSoItsTagBelongsToTheRuleWithinToken!395 thiss!24550 rules!3447 lt!659687 (_1!10683 lt!659705)))))

(declare-datatypes ((Option!3715 0))(
  ( (None!3714) (Some!3714 (v!25121 tuple2!18562)) )
))
(declare-fun lt!659695 () Option!3715)

(declare-fun get!5604 (Option!3715) tuple2!18562)

(assert (=> b!1723538 (= lt!659705 (get!5604 lt!659695))))

(declare-fun suffix!1421 () List!18943)

(declare-fun lt!659694 () Unit!32717)

(declare-fun lt!659690 () List!18943)

(declare-fun lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!498 (LexerInterface!2974 List!18944 List!18943 List!18943) Unit!32717)

(assert (=> b!1723538 (= lt!659694 (lemmaLexIsDefinedWithStrThenLexWithSuffixIsDefined!498 thiss!24550 rules!3447 lt!659690 suffix!1421))))

(declare-fun maxPrefix!1528 (LexerInterface!2974 List!18944 List!18943) Option!3715)

(assert (=> b!1723538 (= lt!659695 (maxPrefix!1528 thiss!24550 rules!3447 lt!659687))))

(assert (=> b!1723538 (isPrefix!1586 lt!659690 lt!659687)))

(declare-fun lt!659709 () Unit!32717)

(assert (=> b!1723538 (= lt!659709 (lemmaConcatTwoListThenFirstIsPrefix!1096 lt!659690 suffix!1421))))

(assert (=> b!1723538 (= lt!659687 (++!5170 lt!659690 suffix!1421))))

(declare-fun b!1723539 () Bool)

(declare-fun e!1102496 () Bool)

(declare-fun e!1102495 () Bool)

(assert (=> b!1723539 (= e!1102496 e!1102495)))

(declare-fun res!773459 () Bool)

(assert (=> b!1723539 (=> res!773459 e!1102495)))

(declare-fun lt!659700 () TokenValue!3435)

(declare-fun lt!659684 () Int)

(assert (=> b!1723539 (= res!773459 (not (= lt!659695 (Some!3714 (tuple2!18563 (Token!6257 lt!659700 (rule!5299 (_1!10683 lt!659705)) lt!659684 lt!659711) (_2!10683 lt!659705))))))))

(declare-fun size!14997 (BalanceConc!12498) Int)

(assert (=> b!1723539 (= lt!659684 (size!14997 lt!659707))))

(declare-fun apply!5150 (TokenValueInjection!6530 BalanceConc!12498) TokenValue!3435)

(assert (=> b!1723539 (= lt!659700 (apply!5150 (transformation!3345 (rule!5299 (_1!10683 lt!659705))) lt!659707))))

(declare-fun lt!659706 () Unit!32717)

(declare-fun lemmaCharactersSize!417 (Token!6256) Unit!32717)

(assert (=> b!1723539 (= lt!659706 (lemmaCharactersSize!417 (_1!10683 lt!659705)))))

(declare-fun lt!659703 () Unit!32717)

(declare-fun lemmaEqSameImage!270 (TokenValueInjection!6530 BalanceConc!12498 BalanceConc!12498) Unit!32717)

(declare-fun seqFromList!2319 (List!18943) BalanceConc!12498)

(assert (=> b!1723539 (= lt!659703 (lemmaEqSameImage!270 (transformation!3345 (rule!5299 (_1!10683 lt!659705))) lt!659707 (seqFromList!2319 (originalCharacters!4159 (_1!10683 lt!659705)))))))

(declare-fun b!1723540 () Bool)

(declare-fun res!773458 () Bool)

(assert (=> b!1723540 (=> res!773458 e!1102496)))

(declare-fun dynLambda!8719 (Int TokenValue!3435) BalanceConc!12498)

(assert (=> b!1723540 (= res!773458 (not (= lt!659707 (dynLambda!8719 (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) (value!105005 (_1!10683 lt!659705))))))))

(declare-fun b!1723541 () Bool)

(declare-fun res!773451 () Bool)

(assert (=> b!1723541 (=> res!773451 e!1102497)))

(declare-fun matchR!2147 (Regex!4673 List!18943) Bool)

(assert (=> b!1723541 (= res!773451 (not (matchR!2147 (regex!3345 (rule!5299 (_1!10683 lt!659705))) lt!659711)))))

(declare-fun tp!491988 () Bool)

(declare-fun b!1723542 () Bool)

(declare-fun e!1102492 () Bool)

(declare-fun e!1102494 () Bool)

(declare-fun inv!24379 (String!21507) Bool)

(declare-fun inv!24384 (TokenValueInjection!6530) Bool)

(assert (=> b!1723542 (= e!1102492 (and tp!491988 (inv!24379 (tag!3659 (h!24275 rules!3447))) (inv!24384 (transformation!3345 (h!24275 rules!3447))) e!1102494))))

(declare-fun tp!491991 () Bool)

(declare-fun e!1102486 () Bool)

(declare-fun e!1102488 () Bool)

(declare-fun token!523 () Token!6256)

(declare-fun b!1723544 () Bool)

(assert (=> b!1723544 (= e!1102488 (and tp!491991 (inv!24379 (tag!3659 (rule!5299 token!523))) (inv!24384 (transformation!3345 (rule!5299 token!523))) e!1102486))))

(assert (=> b!1723545 (= e!1102494 (and tp!491987 tp!491985))))

(declare-fun b!1723546 () Bool)

(declare-fun e!1102499 () Bool)

(assert (=> b!1723546 (= e!1102499 e!1102503)))

(declare-fun res!773454 () Bool)

(assert (=> b!1723546 (=> res!773454 e!1102503)))

(declare-fun lt!659710 () Regex!4673)

(declare-fun prefixMatch!558 (Regex!4673 List!18943) Bool)

(declare-fun head!3902 (List!18943) C!9520)

(assert (=> b!1723546 (= res!773454 (prefixMatch!558 lt!659710 (++!5170 lt!659690 (Cons!18873 (head!3902 suffix!1421) Nil!18873))))))

(declare-fun rulesRegex!703 (LexerInterface!2974 List!18944) Regex!4673)

(assert (=> b!1723546 (= lt!659710 (rulesRegex!703 thiss!24550 rules!3447))))

(declare-fun b!1723547 () Bool)

(declare-fun res!773456 () Bool)

(declare-fun e!1102484 () Bool)

(assert (=> b!1723547 (=> (not res!773456) (not e!1102484))))

(declare-fun rule!422 () Rule!6490)

(declare-fun contains!3367 (List!18944 Rule!6490) Bool)

(assert (=> b!1723547 (= res!773456 (contains!3367 rules!3447 rule!422))))

(declare-fun tp!491989 () Bool)

(declare-fun e!1102506 () Bool)

(declare-fun b!1723548 () Bool)

(declare-fun inv!21 (TokenValue!3435) Bool)

(assert (=> b!1723548 (= e!1102506 (and (inv!21 (value!105005 token!523)) e!1102488 tp!491989))))

(declare-fun e!1102481 () Bool)

(assert (=> b!1723549 (= e!1102481 (and tp!491982 tp!491986))))

(declare-fun res!773450 () Bool)

(assert (=> start!169034 (=> (not res!773450) (not e!1102484))))

(get-info :version)

(assert (=> start!169034 (= res!773450 ((_ is Lexer!2972) thiss!24550))))

(assert (=> start!169034 e!1102484))

(declare-fun e!1102491 () Bool)

(assert (=> start!169034 e!1102491))

(declare-fun e!1102501 () Bool)

(assert (=> start!169034 e!1102501))

(assert (=> start!169034 true))

(declare-fun inv!24385 (Token!6256) Bool)

(assert (=> start!169034 (and (inv!24385 token!523) e!1102506)))

(declare-fun e!1102485 () Bool)

(assert (=> start!169034 e!1102485))

(declare-fun b!1723543 () Bool)

(declare-fun e!1102489 () Bool)

(assert (=> b!1723543 (= e!1102489 (not e!1102499))))

(declare-fun res!773463 () Bool)

(assert (=> b!1723543 (=> res!773463 e!1102499)))

(assert (=> b!1723543 (= res!773463 (not (matchR!2147 (regex!3345 rule!422) lt!659690)))))

(declare-fun ruleValid!844 (LexerInterface!2974 Rule!6490) Bool)

(assert (=> b!1723543 (ruleValid!844 thiss!24550 rule!422)))

(declare-fun lt!659683 () Unit!32717)

(declare-fun lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!368 (LexerInterface!2974 Rule!6490 List!18944) Unit!32717)

(assert (=> b!1723543 (= lt!659683 (lemmaRuleInListAndrulesValidInductiveThenRuleIsValid!368 thiss!24550 rule!422 rules!3447))))

(assert (=> b!1723550 (= e!1102486 (and tp!491984 tp!491992))))

(declare-fun e!1102490 () Bool)

(assert (=> b!1723551 (= e!1102497 e!1102490)))

(declare-fun res!773465 () Bool)

(assert (=> b!1723551 (=> res!773465 e!1102490)))

(declare-fun Forall!720 (Int) Bool)

(assert (=> b!1723551 (= res!773465 (not (Forall!720 lambda!69182)))))

(declare-fun lt!659702 () Unit!32717)

(declare-fun lemmaInv!552 (TokenValueInjection!6530) Unit!32717)

(assert (=> b!1723551 (= lt!659702 (lemmaInv!552 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))))))

(declare-fun b!1723552 () Bool)

(declare-fun e!1102493 () Bool)

(assert (=> b!1723552 (= e!1102484 e!1102493)))

(declare-fun res!773449 () Bool)

(assert (=> b!1723552 (=> (not res!773449) (not e!1102493))))

(declare-fun lt!659699 () Option!3715)

(declare-fun isDefined!3058 (Option!3715) Bool)

(assert (=> b!1723552 (= res!773449 (isDefined!3058 lt!659699))))

(assert (=> b!1723552 (= lt!659699 (maxPrefix!1528 thiss!24550 rules!3447 lt!659690))))

(declare-fun lt!659704 () BalanceConc!12498)

(assert (=> b!1723552 (= lt!659690 (list!7626 lt!659704))))

(assert (=> b!1723552 (= lt!659704 (charsOf!1994 token!523))))

(declare-fun b!1723553 () Bool)

(declare-fun tp_is_empty!7589 () Bool)

(declare-fun tp!491990 () Bool)

(assert (=> b!1723553 (= e!1102491 (and tp_is_empty!7589 tp!491990))))

(declare-fun b!1723554 () Bool)

(declare-fun res!773460 () Bool)

(assert (=> b!1723554 (=> (not res!773460) (not e!1102489))))

(assert (=> b!1723554 (= res!773460 (= (rule!5299 token!523) rule!422))))

(declare-fun b!1723555 () Bool)

(declare-fun e!1102500 () Bool)

(assert (=> b!1723555 (= e!1102483 e!1102500)))

(declare-fun res!773457 () Bool)

(assert (=> b!1723555 (=> (not res!773457) (not e!1102500))))

(declare-fun lt!659698 () Rule!6490)

(assert (=> b!1723555 (= res!773457 (matchR!2147 (regex!3345 lt!659698) (list!7626 (charsOf!1994 (_1!10683 lt!659705)))))))

(declare-fun get!5605 (Option!3714) Rule!6490)

(assert (=> b!1723555 (= lt!659698 (get!5605 lt!659697))))

(declare-fun b!1723556 () Bool)

(declare-fun res!773446 () Bool)

(assert (=> b!1723556 (=> (not res!773446) (not e!1102484))))

(declare-fun rulesInvariant!2643 (LexerInterface!2974 List!18944) Bool)

(assert (=> b!1723556 (= res!773446 (rulesInvariant!2643 thiss!24550 rules!3447))))

(declare-fun b!1723557 () Bool)

(declare-fun res!773461 () Bool)

(assert (=> b!1723557 (=> (not res!773461) (not e!1102484))))

(declare-fun isEmpty!11869 (List!18944) Bool)

(assert (=> b!1723557 (= res!773461 (not (isEmpty!11869 rules!3447)))))

(declare-fun b!1723558 () Bool)

(assert (=> b!1723558 (= e!1102493 e!1102489)))

(declare-fun res!773455 () Bool)

(assert (=> b!1723558 (=> (not res!773455) (not e!1102489))))

(declare-fun lt!659708 () tuple2!18562)

(assert (=> b!1723558 (= res!773455 (= (_1!10683 lt!659708) token!523))))

(assert (=> b!1723558 (= lt!659708 (get!5604 lt!659699))))

(declare-fun b!1723559 () Bool)

(declare-fun e!1102482 () Bool)

(declare-fun e!1102504 () Bool)

(assert (=> b!1723559 (= e!1102482 e!1102504)))

(declare-fun res!773447 () Bool)

(assert (=> b!1723559 (=> res!773447 e!1102504)))

(assert (=> b!1723559 (= res!773447 (<= lt!659684 (size!14997 lt!659704)))))

(assert (=> b!1723559 (matchR!2147 lt!659710 lt!659690)))

(declare-fun lt!659696 () Unit!32717)

(declare-fun lemmaMaxPrefixThenMatchesRulesRegex!94 (LexerInterface!2974 List!18944 List!18943 Token!6256 Rule!6490 List!18943) Unit!32717)

(assert (=> b!1723559 (= lt!659696 (lemmaMaxPrefixThenMatchesRulesRegex!94 thiss!24550 rules!3447 lt!659690 token!523 rule!422 Nil!18873))))

(declare-fun b!1723560 () Bool)

(assert (=> b!1723560 (= e!1102490 e!1102496)))

(declare-fun res!773466 () Bool)

(assert (=> b!1723560 (=> res!773466 e!1102496)))

(declare-fun dynLambda!8720 (Int BalanceConc!12498) TokenValue!3435)

(assert (=> b!1723560 (= res!773466 (not (= (list!7626 (dynLambda!8719 (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) (dynLambda!8720 (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) lt!659707))) lt!659711)))))

(declare-fun lt!659689 () Unit!32717)

(declare-fun lemmaSemiInverse!491 (TokenValueInjection!6530 BalanceConc!12498) Unit!32717)

(assert (=> b!1723560 (= lt!659689 (lemmaSemiInverse!491 (transformation!3345 (rule!5299 (_1!10683 lt!659705))) lt!659707))))

(declare-fun b!1723561 () Bool)

(assert (=> b!1723561 (= e!1102500 (= (rule!5299 (_1!10683 lt!659705)) lt!659698))))

(declare-fun b!1723562 () Bool)

(assert (=> b!1723562 (= e!1102504 true)))

(assert (=> b!1723562 (matchR!2147 lt!659710 lt!659711)))

(declare-fun lt!659693 () Unit!32717)

(assert (=> b!1723562 (= lt!659693 (lemmaMaxPrefixThenMatchesRulesRegex!94 thiss!24550 rules!3447 lt!659687 (_1!10683 lt!659705) (rule!5299 (_1!10683 lt!659705)) (_2!10683 lt!659705)))))

(declare-fun b!1723563 () Bool)

(declare-fun res!773448 () Bool)

(assert (=> b!1723563 (=> (not res!773448) (not e!1102489))))

(declare-fun isEmpty!11870 (List!18943) Bool)

(assert (=> b!1723563 (= res!773448 (isEmpty!11870 (_2!10683 lt!659708)))))

(declare-fun b!1723564 () Bool)

(declare-fun res!773462 () Bool)

(assert (=> b!1723564 (=> res!773462 e!1102499)))

(assert (=> b!1723564 (= res!773462 (isEmpty!11870 suffix!1421))))

(declare-fun b!1723565 () Bool)

(declare-fun tp!491983 () Bool)

(assert (=> b!1723565 (= e!1102485 (and e!1102492 tp!491983))))

(declare-fun b!1723566 () Bool)

(assert (=> b!1723566 (= e!1102495 e!1102482)))

(declare-fun res!773453 () Bool)

(assert (=> b!1723566 (=> res!773453 e!1102482)))

(declare-fun lt!659692 () Option!3715)

(declare-fun lt!659682 () List!18943)

(assert (=> b!1723566 (= res!773453 (or (not (= lt!659682 (_2!10683 lt!659705))) (not (= lt!659692 (Some!3714 (tuple2!18563 (_1!10683 lt!659705) lt!659682))))))))

(assert (=> b!1723566 (= (_2!10683 lt!659705) lt!659682)))

(declare-fun lt!659701 () Unit!32717)

(declare-fun lemmaSamePrefixThenSameSuffix!730 (List!18943 List!18943 List!18943 List!18943 List!18943) Unit!32717)

(assert (=> b!1723566 (= lt!659701 (lemmaSamePrefixThenSameSuffix!730 lt!659711 (_2!10683 lt!659705) lt!659711 lt!659682 lt!659687))))

(declare-fun getSuffix!780 (List!18943 List!18943) List!18943)

(assert (=> b!1723566 (= lt!659682 (getSuffix!780 lt!659687 lt!659711))))

(declare-fun lt!659712 () TokenValue!3435)

(declare-fun lt!659688 () Int)

(assert (=> b!1723566 (= lt!659692 (Some!3714 (tuple2!18563 (Token!6257 lt!659712 (rule!5299 (_1!10683 lt!659705)) lt!659688 lt!659711) (_2!10683 lt!659705))))))

(declare-fun maxPrefixOneRule!904 (LexerInterface!2974 Rule!6490 List!18943) Option!3715)

(assert (=> b!1723566 (= lt!659692 (maxPrefixOneRule!904 thiss!24550 (rule!5299 (_1!10683 lt!659705)) lt!659687))))

(declare-fun size!14998 (List!18943) Int)

(assert (=> b!1723566 (= lt!659688 (size!14998 lt!659711))))

(assert (=> b!1723566 (= lt!659712 (apply!5150 (transformation!3345 (rule!5299 (_1!10683 lt!659705))) (seqFromList!2319 lt!659711)))))

(declare-fun lt!659686 () Unit!32717)

(declare-fun lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!303 (LexerInterface!2974 List!18944 List!18943 List!18943 List!18943 Rule!6490) Unit!32717)

(assert (=> b!1723566 (= lt!659686 (lemmaMaxPrefixSoFindMaxPrefOneRuleWithThisRule!303 thiss!24550 rules!3447 lt!659711 lt!659687 (_2!10683 lt!659705) (rule!5299 (_1!10683 lt!659705))))))

(declare-fun tp!491981 () Bool)

(declare-fun b!1723567 () Bool)

(assert (=> b!1723567 (= e!1102501 (and tp!491981 (inv!24379 (tag!3659 rule!422)) (inv!24384 (transformation!3345 rule!422)) e!1102481))))

(assert (= (and start!169034 res!773450) b!1723557))

(assert (= (and b!1723557 res!773461) b!1723556))

(assert (= (and b!1723556 res!773446) b!1723547))

(assert (= (and b!1723547 res!773456) b!1723552))

(assert (= (and b!1723552 res!773449) b!1723558))

(assert (= (and b!1723558 res!773455) b!1723563))

(assert (= (and b!1723563 res!773448) b!1723554))

(assert (= (and b!1723554 res!773460) b!1723543))

(assert (= (and b!1723543 (not res!773463)) b!1723564))

(assert (= (and b!1723564 (not res!773462)) b!1723546))

(assert (= (and b!1723546 (not res!773454)) b!1723538))

(assert (= (and b!1723538 res!773464) b!1723555))

(assert (= (and b!1723555 res!773457) b!1723561))

(assert (= (and b!1723538 (not res!773452)) b!1723541))

(assert (= (and b!1723541 (not res!773451)) b!1723551))

(assert (= (and b!1723551 (not res!773465)) b!1723560))

(assert (= (and b!1723560 (not res!773466)) b!1723540))

(assert (= (and b!1723540 (not res!773458)) b!1723539))

(assert (= (and b!1723539 (not res!773459)) b!1723566))

(assert (= (and b!1723566 (not res!773453)) b!1723559))

(assert (= (and b!1723559 (not res!773447)) b!1723562))

(assert (= (and start!169034 ((_ is Cons!18873) suffix!1421)) b!1723553))

(assert (= b!1723567 b!1723549))

(assert (= start!169034 b!1723567))

(assert (= b!1723544 b!1723550))

(assert (= b!1723548 b!1723544))

(assert (= start!169034 b!1723548))

(assert (= b!1723542 b!1723545))

(assert (= b!1723565 b!1723542))

(assert (= (and start!169034 ((_ is Cons!18874) rules!3447)) b!1723565))

(declare-fun b_lambda!54739 () Bool)

(assert (=> (not b_lambda!54739) (not b!1723540)))

(declare-fun t!159792 () Bool)

(declare-fun tb!102285 () Bool)

(assert (=> (and b!1723549 (= (toChars!4711 (transformation!3345 rule!422)) (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159792) tb!102285))

(declare-fun b!1723583 () Bool)

(declare-fun e!1102518 () Bool)

(declare-fun tp!491995 () Bool)

(declare-fun inv!24386 (Conc!6277) Bool)

(assert (=> b!1723583 (= e!1102518 (and (inv!24386 (c!281901 (dynLambda!8719 (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) (value!105005 (_1!10683 lt!659705))))) tp!491995))))

(declare-fun result!122952 () Bool)

(declare-fun inv!24387 (BalanceConc!12498) Bool)

(assert (=> tb!102285 (= result!122952 (and (inv!24387 (dynLambda!8719 (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) (value!105005 (_1!10683 lt!659705)))) e!1102518))))

(assert (= tb!102285 b!1723583))

(declare-fun m!2129719 () Bool)

(assert (=> b!1723583 m!2129719))

(declare-fun m!2129721 () Bool)

(assert (=> tb!102285 m!2129721))

(assert (=> b!1723540 t!159792))

(declare-fun b_and!126183 () Bool)

(assert (= b_and!126173 (and (=> t!159792 result!122952) b_and!126183)))

(declare-fun tb!102287 () Bool)

(declare-fun t!159794 () Bool)

(assert (=> (and b!1723550 (= (toChars!4711 (transformation!3345 (rule!5299 token!523))) (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159794) tb!102287))

(declare-fun result!122956 () Bool)

(assert (= result!122956 result!122952))

(assert (=> b!1723540 t!159794))

(declare-fun b_and!126185 () Bool)

(assert (= b_and!126177 (and (=> t!159794 result!122956) b_and!126185)))

(declare-fun t!159796 () Bool)

(declare-fun tb!102289 () Bool)

(assert (=> (and b!1723545 (= (toChars!4711 (transformation!3345 (h!24275 rules!3447))) (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159796) tb!102289))

(declare-fun result!122958 () Bool)

(assert (= result!122958 result!122952))

(assert (=> b!1723540 t!159796))

(declare-fun b_and!126187 () Bool)

(assert (= b_and!126181 (and (=> t!159796 result!122958) b_and!126187)))

(declare-fun b_lambda!54741 () Bool)

(assert (=> (not b_lambda!54741) (not b!1723560)))

(declare-fun t!159798 () Bool)

(declare-fun tb!102291 () Bool)

(assert (=> (and b!1723549 (= (toChars!4711 (transformation!3345 rule!422)) (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159798) tb!102291))

(declare-fun e!1102519 () Bool)

(declare-fun tp!491996 () Bool)

(declare-fun b!1723584 () Bool)

(assert (=> b!1723584 (= e!1102519 (and (inv!24386 (c!281901 (dynLambda!8719 (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) (dynLambda!8720 (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) lt!659707)))) tp!491996))))

(declare-fun result!122960 () Bool)

(assert (=> tb!102291 (= result!122960 (and (inv!24387 (dynLambda!8719 (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) (dynLambda!8720 (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) lt!659707))) e!1102519))))

(assert (= tb!102291 b!1723584))

(declare-fun m!2129723 () Bool)

(assert (=> b!1723584 m!2129723))

(declare-fun m!2129725 () Bool)

(assert (=> tb!102291 m!2129725))

(assert (=> b!1723560 t!159798))

(declare-fun b_and!126189 () Bool)

(assert (= b_and!126183 (and (=> t!159798 result!122960) b_and!126189)))

(declare-fun tb!102293 () Bool)

(declare-fun t!159800 () Bool)

(assert (=> (and b!1723550 (= (toChars!4711 (transformation!3345 (rule!5299 token!523))) (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159800) tb!102293))

(declare-fun result!122962 () Bool)

(assert (= result!122962 result!122960))

(assert (=> b!1723560 t!159800))

(declare-fun b_and!126191 () Bool)

(assert (= b_and!126185 (and (=> t!159800 result!122962) b_and!126191)))

(declare-fun t!159802 () Bool)

(declare-fun tb!102295 () Bool)

(assert (=> (and b!1723545 (= (toChars!4711 (transformation!3345 (h!24275 rules!3447))) (toChars!4711 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159802) tb!102295))

(declare-fun result!122964 () Bool)

(assert (= result!122964 result!122960))

(assert (=> b!1723560 t!159802))

(declare-fun b_and!126193 () Bool)

(assert (= b_and!126187 (and (=> t!159802 result!122964) b_and!126193)))

(declare-fun b_lambda!54743 () Bool)

(assert (=> (not b_lambda!54743) (not b!1723560)))

(declare-fun tb!102297 () Bool)

(declare-fun t!159804 () Bool)

(assert (=> (and b!1723549 (= (toValue!4852 (transformation!3345 rule!422)) (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159804) tb!102297))

(declare-fun result!122966 () Bool)

(assert (=> tb!102297 (= result!122966 (inv!21 (dynLambda!8720 (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705)))) lt!659707)))))

(declare-fun m!2129727 () Bool)

(assert (=> tb!102297 m!2129727))

(assert (=> b!1723560 t!159804))

(declare-fun b_and!126195 () Bool)

(assert (= b_and!126171 (and (=> t!159804 result!122966) b_and!126195)))

(declare-fun t!159806 () Bool)

(declare-fun tb!102299 () Bool)

(assert (=> (and b!1723550 (= (toValue!4852 (transformation!3345 (rule!5299 token!523))) (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159806) tb!102299))

(declare-fun result!122970 () Bool)

(assert (= result!122970 result!122966))

(assert (=> b!1723560 t!159806))

(declare-fun b_and!126197 () Bool)

(assert (= b_and!126175 (and (=> t!159806 result!122970) b_and!126197)))

(declare-fun tb!102301 () Bool)

(declare-fun t!159808 () Bool)

(assert (=> (and b!1723545 (= (toValue!4852 (transformation!3345 (h!24275 rules!3447))) (toValue!4852 (transformation!3345 (rule!5299 (_1!10683 lt!659705))))) t!159808) tb!102301))

(declare-fun result!122972 () Bool)

(assert (= result!122972 result!122966))

(assert (=> b!1723560 t!159808))

(declare-fun b_and!126199 () Bool)

(assert (= b_and!126179 (and (=> t!159808 result!122972) b_and!126199)))

(declare-fun m!2129729 () Bool)

(assert (=> b!1723562 m!2129729))

(declare-fun m!2129731 () Bool)

(assert (=> b!1723562 m!2129731))

(declare-fun m!2129733 () Bool)

(assert (=> b!1723566 m!2129733))

(declare-fun m!2129735 () Bool)

(assert (=> b!1723566 m!2129735))

(declare-fun m!2129737 () Bool)

(assert (=> b!1723566 m!2129737))

(declare-fun m!2129739 () Bool)

(assert (=> b!1723566 m!2129739))

(declare-fun m!2129741 () Bool)

(assert (=> b!1723566 m!2129741))

(declare-fun m!2129743 () Bool)

(assert (=> b!1723566 m!2129743))

(assert (=> b!1723566 m!2129737))

(declare-fun m!2129745 () Bool)

(assert (=> b!1723566 m!2129745))

(declare-fun m!2129747 () Bool)

(assert (=> b!1723544 m!2129747))

(declare-fun m!2129749 () Bool)

(assert (=> b!1723544 m!2129749))

(declare-fun m!2129751 () Bool)

(assert (=> b!1723542 m!2129751))

(declare-fun m!2129753 () Bool)

(assert (=> b!1723542 m!2129753))

(declare-fun m!2129755 () Bool)

(assert (=> b!1723543 m!2129755))

(declare-fun m!2129757 () Bool)

(assert (=> b!1723543 m!2129757))

(declare-fun m!2129759 () Bool)

(assert (=> b!1723543 m!2129759))

(declare-fun m!2129761 () Bool)

(assert (=> b!1723557 m!2129761))

(declare-fun m!2129763 () Bool)

(assert (=> b!1723563 m!2129763))

(declare-fun m!2129765 () Bool)

(assert (=> b!1723559 m!2129765))

(declare-fun m!2129767 () Bool)

(assert (=> b!1723559 m!2129767))

(declare-fun m!2129769 () Bool)

(assert (=> b!1723559 m!2129769))

(declare-fun m!2129771 () Bool)

(assert (=> b!1723555 m!2129771))

(assert (=> b!1723555 m!2129771))

(declare-fun m!2129773 () Bool)

(assert (=> b!1723555 m!2129773))

(assert (=> b!1723555 m!2129773))

(declare-fun m!2129775 () Bool)

(assert (=> b!1723555 m!2129775))

(declare-fun m!2129777 () Bool)

(assert (=> b!1723555 m!2129777))

(declare-fun m!2129779 () Bool)

(assert (=> b!1723541 m!2129779))

(declare-fun m!2129781 () Bool)

(assert (=> b!1723564 m!2129781))

(declare-fun m!2129783 () Bool)

(assert (=> b!1723560 m!2129783))

(assert (=> b!1723560 m!2129783))

(declare-fun m!2129785 () Bool)

(assert (=> b!1723560 m!2129785))

(assert (=> b!1723560 m!2129785))

(declare-fun m!2129787 () Bool)

(assert (=> b!1723560 m!2129787))

(declare-fun m!2129789 () Bool)

(assert (=> b!1723560 m!2129789))

(declare-fun m!2129791 () Bool)

(assert (=> b!1723552 m!2129791))

(declare-fun m!2129793 () Bool)

(assert (=> b!1723552 m!2129793))

(declare-fun m!2129795 () Bool)

(assert (=> b!1723552 m!2129795))

(declare-fun m!2129797 () Bool)

(assert (=> b!1723552 m!2129797))

(declare-fun m!2129799 () Bool)

(assert (=> b!1723540 m!2129799))

(declare-fun m!2129801 () Bool)

(assert (=> b!1723551 m!2129801))

(declare-fun m!2129803 () Bool)

(assert (=> b!1723551 m!2129803))

(declare-fun m!2129805 () Bool)

(assert (=> b!1723547 m!2129805))

(declare-fun m!2129807 () Bool)

(assert (=> start!169034 m!2129807))

(declare-fun m!2129809 () Bool)

(assert (=> b!1723556 m!2129809))

(declare-fun m!2129811 () Bool)

(assert (=> b!1723539 m!2129811))

(declare-fun m!2129813 () Bool)

(assert (=> b!1723539 m!2129813))

(declare-fun m!2129815 () Bool)

(assert (=> b!1723539 m!2129815))

(assert (=> b!1723539 m!2129815))

(declare-fun m!2129817 () Bool)

(assert (=> b!1723539 m!2129817))

(declare-fun m!2129819 () Bool)

(assert (=> b!1723539 m!2129819))

(declare-fun m!2129821 () Bool)

(assert (=> b!1723558 m!2129821))

(declare-fun m!2129823 () Bool)

(assert (=> b!1723567 m!2129823))

(declare-fun m!2129825 () Bool)

(assert (=> b!1723567 m!2129825))

(declare-fun m!2129827 () Bool)

(assert (=> b!1723548 m!2129827))

(declare-fun m!2129829 () Bool)

(assert (=> b!1723538 m!2129829))

(declare-fun m!2129831 () Bool)

(assert (=> b!1723538 m!2129831))

(declare-fun m!2129833 () Bool)

(assert (=> b!1723538 m!2129833))

(declare-fun m!2129835 () Bool)

(assert (=> b!1723538 m!2129835))

(declare-fun m!2129837 () Bool)

(assert (=> b!1723538 m!2129837))

(declare-fun m!2129839 () Bool)

(assert (=> b!1723538 m!2129839))

(declare-fun m!2129841 () Bool)

(assert (=> b!1723538 m!2129841))

(declare-fun m!2129843 () Bool)

(assert (=> b!1723538 m!2129843))

(declare-fun m!2129845 () Bool)

(assert (=> b!1723538 m!2129845))

(assert (=> b!1723538 m!2129831))

(declare-fun m!2129847 () Bool)

(assert (=> b!1723538 m!2129847))

(assert (=> b!1723538 m!2129771))

(declare-fun m!2129849 () Bool)

(assert (=> b!1723538 m!2129849))

(declare-fun m!2129851 () Bool)

(assert (=> b!1723538 m!2129851))

(declare-fun m!2129853 () Bool)

(assert (=> b!1723538 m!2129853))

(declare-fun m!2129855 () Bool)

(assert (=> b!1723538 m!2129855))

(declare-fun m!2129857 () Bool)

(assert (=> b!1723546 m!2129857))

(declare-fun m!2129859 () Bool)

(assert (=> b!1723546 m!2129859))

(assert (=> b!1723546 m!2129859))

(declare-fun m!2129861 () Bool)

(assert (=> b!1723546 m!2129861))

(declare-fun m!2129863 () Bool)

(assert (=> b!1723546 m!2129863))

(check-sat (not b!1723546) (not b!1723553) (not b!1723539) (not b!1723583) (not b!1723551) b_and!126199 b_and!126195 (not b_lambda!54741) (not start!169034) b_and!126189 (not b_lambda!54743) tp_is_empty!7589 (not b_lambda!54739) (not b!1723562) (not b!1723544) (not tb!102285) (not b!1723558) (not b!1723541) (not b_next!47729) (not b!1723565) (not b!1723560) (not b!1723557) (not b!1723559) (not tb!102297) (not b!1723548) b_and!126191 (not b_next!47723) (not b!1723584) (not b!1723547) (not b_next!47727) (not b!1723566) (not b!1723555) (not b!1723543) (not tb!102291) (not b!1723567) (not b!1723542) (not b!1723564) (not b!1723538) b_and!126193 (not b!1723552) (not b!1723563) (not b_next!47725) (not b_next!47731) b_and!126197 (not b_next!47733) (not b!1723556))
(check-sat b_and!126189 (not b_next!47729) (not b_next!47727) b_and!126193 b_and!126199 b_and!126195 b_and!126191 (not b_next!47723) (not b_next!47725) (not b_next!47731) b_and!126197 (not b_next!47733))
