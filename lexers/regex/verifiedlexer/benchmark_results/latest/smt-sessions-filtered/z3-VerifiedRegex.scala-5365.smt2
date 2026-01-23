; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!273654 () Bool)

(assert start!273654)

(declare-fun b!2820374 () Bool)

(declare-fun b_free!80629 () Bool)

(declare-fun b_next!81333 () Bool)

(assert (=> b!2820374 (= b_free!80629 (not b_next!81333))))

(declare-fun tp!900714 () Bool)

(declare-fun b_and!206015 () Bool)

(assert (=> b!2820374 (= tp!900714 b_and!206015)))

(declare-fun b_free!80631 () Bool)

(declare-fun b_next!81335 () Bool)

(assert (=> b!2820374 (= b_free!80631 (not b_next!81335))))

(declare-fun tp!900715 () Bool)

(declare-fun b_and!206017 () Bool)

(assert (=> b!2820374 (= tp!900715 b_and!206017)))

(declare-fun b!2820377 () Bool)

(declare-fun b_free!80633 () Bool)

(declare-fun b_next!81337 () Bool)

(assert (=> b!2820377 (= b_free!80633 (not b_next!81337))))

(declare-fun tp!900710 () Bool)

(declare-fun b_and!206019 () Bool)

(assert (=> b!2820377 (= tp!900710 b_and!206019)))

(declare-fun b_free!80635 () Bool)

(declare-fun b_next!81339 () Bool)

(assert (=> b!2820377 (= b_free!80635 (not b_next!81339))))

(declare-fun tp!900717 () Bool)

(declare-fun b_and!206021 () Bool)

(assert (=> b!2820377 (= tp!900717 b_and!206021)))

(declare-fun b!2820393 () Bool)

(declare-fun e!1784070 () Bool)

(assert (=> b!2820393 (= e!1784070 true)))

(declare-fun b!2820392 () Bool)

(declare-fun e!1784069 () Bool)

(assert (=> b!2820392 (= e!1784069 e!1784070)))

(declare-fun b!2820391 () Bool)

(declare-fun e!1784068 () Bool)

(assert (=> b!2820391 (= e!1784068 e!1784069)))

(declare-fun b!2820380 () Bool)

(assert (=> b!2820380 e!1784068))

(assert (= b!2820392 b!2820393))

(assert (= b!2820391 b!2820392))

(declare-datatypes ((C!16860 0))(
  ( (C!16861 (val!10410 Int)) )
))
(declare-datatypes ((List!33190 0))(
  ( (Nil!33066) (Cons!33066 (h!38486 (_ BitVec 16)) (t!230447 List!33190)) )
))
(declare-datatypes ((TokenValue!5179 0))(
  ( (FloatLiteralValue!10358 (text!36698 List!33190)) (TokenValueExt!5178 (__x!22031 Int)) (Broken!25895 (value!159340 List!33190)) (Object!5302) (End!5179) (Def!5179) (Underscore!5179) (Match!5179) (Else!5179) (Error!5179) (Case!5179) (If!5179) (Extends!5179) (Abstract!5179) (Class!5179) (Val!5179) (DelimiterValue!10358 (del!5239 List!33190)) (KeywordValue!5185 (value!159341 List!33190)) (CommentValue!10358 (value!159342 List!33190)) (WhitespaceValue!10358 (value!159343 List!33190)) (IndentationValue!5179 (value!159344 List!33190)) (String!36350) (Int32!5179) (Broken!25896 (value!159345 List!33190)) (Boolean!5180) (Unit!47016) (OperatorValue!5182 (op!5239 List!33190)) (IdentifierValue!10358 (value!159346 List!33190)) (IdentifierValue!10359 (value!159347 List!33190)) (WhitespaceValue!10359 (value!159348 List!33190)) (True!10358) (False!10358) (Broken!25897 (value!159349 List!33190)) (Broken!25898 (value!159350 List!33190)) (True!10359) (RightBrace!5179) (RightBracket!5179) (Colon!5179) (Null!5179) (Comma!5179) (LeftBracket!5179) (False!10359) (LeftBrace!5179) (ImaginaryLiteralValue!5179 (text!36699 List!33190)) (StringLiteralValue!15537 (value!159351 List!33190)) (EOFValue!5179 (value!159352 List!33190)) (IdentValue!5179 (value!159353 List!33190)) (DelimiterValue!10359 (value!159354 List!33190)) (DedentValue!5179 (value!159355 List!33190)) (NewLineValue!5179 (value!159356 List!33190)) (IntegerValue!15537 (value!159357 (_ BitVec 32)) (text!36700 List!33190)) (IntegerValue!15538 (value!159358 Int) (text!36701 List!33190)) (Times!5179) (Or!5179) (Equal!5179) (Minus!5179) (Broken!25899 (value!159359 List!33190)) (And!5179) (Div!5179) (LessEqual!5179) (Mod!5179) (Concat!13518) (Not!5179) (Plus!5179) (SpaceValue!5179 (value!159360 List!33190)) (IntegerValue!15539 (value!159361 Int) (text!36702 List!33190)) (StringLiteralValue!15538 (text!36703 List!33190)) (FloatLiteralValue!10359 (text!36704 List!33190)) (BytesLiteralValue!5179 (value!159362 List!33190)) (CommentValue!10359 (value!159363 List!33190)) (StringLiteralValue!15539 (value!159364 List!33190)) (ErrorTokenValue!5179 (msg!5240 List!33190)) )
))
(declare-datatypes ((List!33191 0))(
  ( (Nil!33067) (Cons!33067 (h!38487 C!16860) (t!230448 List!33191)) )
))
(declare-datatypes ((IArray!20525 0))(
  ( (IArray!20526 (innerList!10320 List!33191)) )
))
(declare-datatypes ((Conc!10260 0))(
  ( (Node!10260 (left!24969 Conc!10260) (right!25299 Conc!10260) (csize!20750 Int) (cheight!10471 Int)) (Leaf!15626 (xs!13372 IArray!20525) (csize!20751 Int)) (Empty!10260) )
))
(declare-datatypes ((BalanceConc!20158 0))(
  ( (BalanceConc!20159 (c!457020 Conc!10260)) )
))
(declare-datatypes ((TokenValueInjection!9786 0))(
  ( (TokenValueInjection!9787 (toValue!6967 Int) (toChars!6826 Int)) )
))
(declare-datatypes ((Regex!8339 0))(
  ( (ElementMatch!8339 (c!457021 C!16860)) (Concat!13519 (regOne!17190 Regex!8339) (regTwo!17190 Regex!8339)) (EmptyExpr!8339) (Star!8339 (reg!8668 Regex!8339)) (EmptyLang!8339) (Union!8339 (regOne!17191 Regex!8339) (regTwo!17191 Regex!8339)) )
))
(declare-datatypes ((String!36351 0))(
  ( (String!36352 (value!159365 String)) )
))
(declare-datatypes ((Rule!9698 0))(
  ( (Rule!9699 (regex!4949 Regex!8339) (tag!5453 String!36351) (isSeparator!4949 Bool) (transformation!4949 TokenValueInjection!9786)) )
))
(declare-datatypes ((List!33192 0))(
  ( (Nil!33068) (Cons!33068 (h!38488 Rule!9698) (t!230449 List!33192)) )
))
(declare-fun rules!4424 () List!33192)

(get-info :version)

(assert (= (and b!2820380 ((_ is Cons!33068) rules!4424)) b!2820391))

(declare-fun lambda!103529 () Int)

(declare-fun order!17541 () Int)

(declare-fun order!17539 () Int)

(declare-fun dynLambda!13820 (Int Int) Int)

(declare-fun dynLambda!13821 (Int Int) Int)

(assert (=> b!2820393 (< (dynLambda!13820 order!17539 (toValue!6967 (transformation!4949 (h!38488 rules!4424)))) (dynLambda!13821 order!17541 lambda!103529))))

(declare-fun order!17543 () Int)

(declare-fun dynLambda!13822 (Int Int) Int)

(assert (=> b!2820393 (< (dynLambda!13822 order!17543 (toChars!6826 (transformation!4949 (h!38488 rules!4424)))) (dynLambda!13821 order!17541 lambda!103529))))

(declare-fun b!2820363 () Bool)

(declare-fun e!1784054 () Bool)

(declare-fun e!1784047 () Bool)

(assert (=> b!2820363 (= e!1784054 e!1784047)))

(declare-fun res!1173650 () Bool)

(assert (=> b!2820363 (=> (not res!1173650) (not e!1784047))))

(declare-datatypes ((LexerInterface!4540 0))(
  ( (LexerInterfaceExt!4537 (__x!22032 Int)) (Lexer!4538) )
))
(declare-fun thiss!27755 () LexerInterface!4540)

(declare-datatypes ((Token!9300 0))(
  ( (Token!9301 (value!159366 TokenValue!5179) (rule!7377 Rule!9698) (size!25747 Int) (originalCharacters!5681 List!33191)) )
))
(declare-datatypes ((List!33193 0))(
  ( (Nil!33069) (Cons!33069 (h!38489 Token!9300) (t!230450 List!33193)) )
))
(declare-fun lt!1006751 () List!33193)

(declare-fun rulesProduceIndividualToken!2078 (LexerInterface!4540 List!33192 Token!9300) Bool)

(assert (=> b!2820363 (= res!1173650 (rulesProduceIndividualToken!2078 thiss!27755 rules!4424 (h!38489 lt!1006751)))))

(declare-fun b!2820364 () Bool)

(declare-fun res!1173644 () Bool)

(declare-fun e!1784050 () Bool)

(assert (=> b!2820364 (=> (not res!1173644) (not e!1784050))))

(declare-fun l!6581 () List!33193)

(declare-fun tokensListTwoByTwoPredicateSeparableList!677 (LexerInterface!4540 List!33193 List!33192) Bool)

(assert (=> b!2820364 (= res!1173644 (tokensListTwoByTwoPredicateSeparableList!677 thiss!27755 (t!230450 l!6581) rules!4424))))

(declare-fun b!2820365 () Bool)

(declare-fun res!1173638 () Bool)

(assert (=> b!2820365 (=> (not res!1173638) (not e!1784050))))

(declare-fun isEmpty!18290 (List!33192) Bool)

(assert (=> b!2820365 (= res!1173638 (not (isEmpty!18290 rules!4424)))))

(declare-fun lt!1006753 () List!33193)

(declare-fun b!2820366 () Bool)

(declare-fun e!1784058 () Bool)

(declare-fun rulesProduceEachTokenIndividuallyList!1592 (LexerInterface!4540 List!33192 List!33193) Bool)

(assert (=> b!2820366 (= e!1784058 (rulesProduceEachTokenIndividuallyList!1592 thiss!27755 rules!4424 (t!230450 lt!1006753)))))

(declare-fun e!1784051 () Bool)

(declare-fun b!2820367 () Bool)

(declare-fun tp!900712 () Bool)

(declare-fun e!1784052 () Bool)

(declare-fun inv!44988 (String!36351) Bool)

(declare-fun inv!44991 (TokenValueInjection!9786) Bool)

(assert (=> b!2820367 (= e!1784051 (and tp!900712 (inv!44988 (tag!5453 (rule!7377 (h!38489 l!6581)))) (inv!44991 (transformation!4949 (rule!7377 (h!38489 l!6581)))) e!1784052))))

(declare-fun e!1784060 () Bool)

(declare-fun tp!900711 () Bool)

(declare-fun b!2820368 () Bool)

(declare-fun e!1784046 () Bool)

(assert (=> b!2820368 (= e!1784060 (and tp!900711 (inv!44988 (tag!5453 (h!38488 rules!4424))) (inv!44991 (transformation!4949 (h!38488 rules!4424))) e!1784046))))

(declare-fun b!2820369 () Bool)

(declare-fun res!1173648 () Bool)

(assert (=> b!2820369 (=> (not res!1173648) (not e!1784050))))

(assert (=> b!2820369 (= res!1173648 (tokensListTwoByTwoPredicateSeparableList!677 thiss!27755 l!6581 rules!4424))))

(declare-fun b!2820370 () Bool)

(declare-fun res!1173645 () Bool)

(assert (=> b!2820370 (=> (not res!1173645) (not e!1784050))))

(declare-fun rulesInvariant!3958 (LexerInterface!4540 List!33192) Bool)

(assert (=> b!2820370 (= res!1173645 (rulesInvariant!3958 thiss!27755 rules!4424))))

(declare-fun b!2820371 () Bool)

(assert (=> b!2820371 (= e!1784047 (rulesProduceEachTokenIndividuallyList!1592 thiss!27755 rules!4424 (t!230450 lt!1006751)))))

(declare-fun b!2820372 () Bool)

(declare-fun res!1173639 () Bool)

(assert (=> b!2820372 (=> (not res!1173639) (not e!1784050))))

(declare-fun i!1730 () Int)

(assert (=> b!2820372 (= res!1173639 (and (not ((_ is Nil!33069) l!6581)) (> i!1730 0)))))

(declare-fun b!2820373 () Bool)

(declare-fun res!1173649 () Bool)

(assert (=> b!2820373 (=> (not res!1173649) (not e!1784050))))

(assert (=> b!2820373 (= res!1173649 (rulesProduceEachTokenIndividuallyList!1592 thiss!27755 rules!4424 (t!230450 l!6581)))))

(declare-fun res!1173647 () Bool)

(assert (=> start!273654 (=> (not res!1173647) (not e!1784050))))

(assert (=> start!273654 (= res!1173647 ((_ is Lexer!4538) thiss!27755))))

(assert (=> start!273654 e!1784050))

(assert (=> start!273654 true))

(declare-fun e!1784053 () Bool)

(assert (=> start!273654 e!1784053))

(declare-fun e!1784059 () Bool)

(assert (=> start!273654 e!1784059))

(assert (=> b!2820374 (= e!1784052 (and tp!900714 tp!900715))))

(declare-fun b!2820375 () Bool)

(declare-fun e!1784055 () Bool)

(declare-fun tp!900716 () Bool)

(declare-fun inv!21 (TokenValue!5179) Bool)

(assert (=> b!2820375 (= e!1784055 (and (inv!21 (value!159366 (h!38489 l!6581))) e!1784051 tp!900716))))

(declare-fun b!2820376 () Bool)

(declare-fun res!1173643 () Bool)

(assert (=> b!2820376 (=> (not res!1173643) (not e!1784050))))

(assert (=> b!2820376 (= res!1173643 (rulesProduceEachTokenIndividuallyList!1592 thiss!27755 rules!4424 l!6581))))

(assert (=> b!2820377 (= e!1784046 (and tp!900710 tp!900717))))

(declare-fun b!2820378 () Bool)

(declare-fun e!1784048 () Bool)

(assert (=> b!2820378 (= e!1784048 e!1784058)))

(declare-fun res!1173642 () Bool)

(assert (=> b!2820378 (=> (not res!1173642) (not e!1784058))))

(assert (=> b!2820378 (= res!1173642 (rulesProduceIndividualToken!2078 thiss!27755 rules!4424 (h!38489 lt!1006753)))))

(declare-fun b!2820379 () Bool)

(declare-fun e!1784061 () Bool)

(assert (=> b!2820379 (= e!1784061 (tokensListTwoByTwoPredicateSeparableList!677 thiss!27755 lt!1006751 rules!4424))))

(assert (=> b!2820380 (= e!1784050 (not true))))

(assert (=> b!2820380 (= (rulesProduceEachTokenIndividuallyList!1592 thiss!27755 rules!4424 lt!1006753) e!1784048)))

(declare-fun res!1173646 () Bool)

(assert (=> b!2820380 (=> res!1173646 e!1784048)))

(assert (=> b!2820380 (= res!1173646 (not ((_ is Cons!33069) lt!1006753)))))

(declare-fun take!543 (List!33193 Int) List!33193)

(assert (=> b!2820380 (= lt!1006753 (take!543 l!6581 i!1730))))

(assert (=> b!2820380 e!1784061))

(declare-fun res!1173641 () Bool)

(assert (=> b!2820380 (=> (not res!1173641) (not e!1784061))))

(declare-fun forall!6773 (List!33193 Int) Bool)

(assert (=> b!2820380 (= res!1173641 (forall!6773 lt!1006751 lambda!103529))))

(declare-datatypes ((Unit!47017 0))(
  ( (Unit!47018) )
))
(declare-fun lt!1006752 () Unit!47017)

(declare-fun lemmaForallSubseq!217 (List!33193 List!33193 Int) Unit!47017)

(assert (=> b!2820380 (= lt!1006752 (lemmaForallSubseq!217 lt!1006751 (t!230450 l!6581) lambda!103529))))

(assert (=> b!2820380 (= (rulesProduceEachTokenIndividuallyList!1592 thiss!27755 rules!4424 lt!1006751) e!1784054)))

(declare-fun res!1173640 () Bool)

(assert (=> b!2820380 (=> res!1173640 e!1784054)))

(assert (=> b!2820380 (= res!1173640 (not ((_ is Cons!33069) lt!1006751)))))

(assert (=> b!2820380 (= lt!1006751 (take!543 (t!230450 l!6581) (- i!1730 1)))))

(declare-fun lt!1006750 () Unit!47017)

(declare-fun tokensListTwoByTwoPredicateSeparableTokensTakeList!44 (LexerInterface!4540 List!33193 Int List!33192) Unit!47017)

(assert (=> b!2820380 (= lt!1006750 (tokensListTwoByTwoPredicateSeparableTokensTakeList!44 thiss!27755 (t!230450 l!6581) (- i!1730 1) rules!4424))))

(declare-fun b!2820381 () Bool)

(declare-fun tp!900718 () Bool)

(assert (=> b!2820381 (= e!1784053 (and e!1784060 tp!900718))))

(declare-fun tp!900713 () Bool)

(declare-fun b!2820382 () Bool)

(declare-fun inv!44992 (Token!9300) Bool)

(assert (=> b!2820382 (= e!1784059 (and (inv!44992 (h!38489 l!6581)) e!1784055 tp!900713))))

(assert (= (and start!273654 res!1173647) b!2820365))

(assert (= (and b!2820365 res!1173638) b!2820370))

(assert (= (and b!2820370 res!1173645) b!2820376))

(assert (= (and b!2820376 res!1173643) b!2820369))

(assert (= (and b!2820369 res!1173648) b!2820372))

(assert (= (and b!2820372 res!1173639) b!2820373))

(assert (= (and b!2820373 res!1173649) b!2820364))

(assert (= (and b!2820364 res!1173644) b!2820380))

(assert (= (and b!2820380 (not res!1173640)) b!2820363))

(assert (= (and b!2820363 res!1173650) b!2820371))

(assert (= (and b!2820380 res!1173641) b!2820379))

(assert (= (and b!2820380 (not res!1173646)) b!2820378))

(assert (= (and b!2820378 res!1173642) b!2820366))

(assert (= b!2820368 b!2820377))

(assert (= b!2820381 b!2820368))

(assert (= (and start!273654 ((_ is Cons!33068) rules!4424)) b!2820381))

(assert (= b!2820367 b!2820374))

(assert (= b!2820375 b!2820367))

(assert (= b!2820382 b!2820375))

(assert (= (and start!273654 ((_ is Cons!33069) l!6581)) b!2820382))

(declare-fun m!3250947 () Bool)

(assert (=> b!2820363 m!3250947))

(declare-fun m!3250949 () Bool)

(assert (=> b!2820378 m!3250949))

(declare-fun m!3250951 () Bool)

(assert (=> b!2820370 m!3250951))

(declare-fun m!3250953 () Bool)

(assert (=> b!2820373 m!3250953))

(declare-fun m!3250955 () Bool)

(assert (=> b!2820365 m!3250955))

(declare-fun m!3250957 () Bool)

(assert (=> b!2820371 m!3250957))

(declare-fun m!3250959 () Bool)

(assert (=> b!2820366 m!3250959))

(declare-fun m!3250961 () Bool)

(assert (=> b!2820376 m!3250961))

(declare-fun m!3250963 () Bool)

(assert (=> b!2820375 m!3250963))

(declare-fun m!3250965 () Bool)

(assert (=> b!2820369 m!3250965))

(declare-fun m!3250967 () Bool)

(assert (=> b!2820380 m!3250967))

(declare-fun m!3250969 () Bool)

(assert (=> b!2820380 m!3250969))

(declare-fun m!3250971 () Bool)

(assert (=> b!2820380 m!3250971))

(declare-fun m!3250973 () Bool)

(assert (=> b!2820380 m!3250973))

(declare-fun m!3250975 () Bool)

(assert (=> b!2820380 m!3250975))

(declare-fun m!3250977 () Bool)

(assert (=> b!2820380 m!3250977))

(declare-fun m!3250979 () Bool)

(assert (=> b!2820380 m!3250979))

(declare-fun m!3250981 () Bool)

(assert (=> b!2820364 m!3250981))

(declare-fun m!3250983 () Bool)

(assert (=> b!2820367 m!3250983))

(declare-fun m!3250985 () Bool)

(assert (=> b!2820367 m!3250985))

(declare-fun m!3250987 () Bool)

(assert (=> b!2820379 m!3250987))

(declare-fun m!3250989 () Bool)

(assert (=> b!2820368 m!3250989))

(declare-fun m!3250991 () Bool)

(assert (=> b!2820368 m!3250991))

(declare-fun m!3250993 () Bool)

(assert (=> b!2820382 m!3250993))

(check-sat (not b!2820371) (not b!2820376) (not b_next!81337) (not b!2820366) (not b!2820369) (not b!2820367) (not b_next!81335) (not b!2820378) b_and!206017 (not b_next!81339) (not b!2820373) (not b!2820379) (not b!2820380) (not b!2820365) (not b!2820375) b_and!206021 (not b!2820370) (not b!2820381) (not b!2820368) (not b!2820364) (not b!2820391) b_and!206019 (not b!2820363) (not b!2820382) (not b_next!81333) b_and!206015)
(check-sat (not b_next!81337) (not b_next!81335) b_and!206017 (not b_next!81339) b_and!206021 b_and!206019 (not b_next!81333) b_and!206015)
