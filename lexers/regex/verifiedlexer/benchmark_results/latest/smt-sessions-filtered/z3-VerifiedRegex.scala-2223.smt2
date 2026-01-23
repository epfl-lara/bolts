; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!109058 () Bool)

(assert start!109058)

(declare-fun b!1218954 () Bool)

(declare-fun b_free!29449 () Bool)

(declare-fun b_next!30153 () Bool)

(assert (=> b!1218954 (= b_free!29449 (not b_next!30153))))

(declare-fun tp!346459 () Bool)

(declare-fun b_and!82945 () Bool)

(assert (=> b!1218954 (= tp!346459 b_and!82945)))

(declare-fun b_free!29451 () Bool)

(declare-fun b_next!30155 () Bool)

(assert (=> b!1218954 (= b_free!29451 (not b_next!30155))))

(declare-fun tp!346461 () Bool)

(declare-fun b_and!82947 () Bool)

(assert (=> b!1218954 (= tp!346461 b_and!82947)))

(declare-fun b!1218955 () Bool)

(declare-fun b_free!29453 () Bool)

(declare-fun b_next!30157 () Bool)

(assert (=> b!1218955 (= b_free!29453 (not b_next!30157))))

(declare-fun tp!346457 () Bool)

(declare-fun b_and!82949 () Bool)

(assert (=> b!1218955 (= tp!346457 b_and!82949)))

(declare-fun b_free!29455 () Bool)

(declare-fun b_next!30159 () Bool)

(assert (=> b!1218955 (= b_free!29455 (not b_next!30159))))

(declare-fun tp!346456 () Bool)

(declare-fun b_and!82951 () Bool)

(assert (=> b!1218955 (= tp!346456 b_and!82951)))

(declare-datatypes ((List!12537 0))(
  ( (Nil!12479) (Cons!12479 (h!17880 (_ BitVec 16)) (t!113427 List!12537)) )
))
(declare-datatypes ((TokenValue!2219 0))(
  ( (FloatLiteralValue!4438 (text!15978 List!12537)) (TokenValueExt!2218 (__x!8153 Int)) (Broken!11095 (value!69874 List!12537)) (Object!2276) (End!2219) (Def!2219) (Underscore!2219) (Match!2219) (Else!2219) (Error!2219) (Case!2219) (If!2219) (Extends!2219) (Abstract!2219) (Class!2219) (Val!2219) (DelimiterValue!4438 (del!2279 List!12537)) (KeywordValue!2225 (value!69875 List!12537)) (CommentValue!4438 (value!69876 List!12537)) (WhitespaceValue!4438 (value!69877 List!12537)) (IndentationValue!2219 (value!69878 List!12537)) (String!15226) (Int32!2219) (Broken!11096 (value!69879 List!12537)) (Boolean!2220) (Unit!18725) (OperatorValue!2222 (op!2279 List!12537)) (IdentifierValue!4438 (value!69880 List!12537)) (IdentifierValue!4439 (value!69881 List!12537)) (WhitespaceValue!4439 (value!69882 List!12537)) (True!4438) (False!4438) (Broken!11097 (value!69883 List!12537)) (Broken!11098 (value!69884 List!12537)) (True!4439) (RightBrace!2219) (RightBracket!2219) (Colon!2219) (Null!2219) (Comma!2219) (LeftBracket!2219) (False!4439) (LeftBrace!2219) (ImaginaryLiteralValue!2219 (text!15979 List!12537)) (StringLiteralValue!6657 (value!69885 List!12537)) (EOFValue!2219 (value!69886 List!12537)) (IdentValue!2219 (value!69887 List!12537)) (DelimiterValue!4439 (value!69888 List!12537)) (DedentValue!2219 (value!69889 List!12537)) (NewLineValue!2219 (value!69890 List!12537)) (IntegerValue!6657 (value!69891 (_ BitVec 32)) (text!15980 List!12537)) (IntegerValue!6658 (value!69892 Int) (text!15981 List!12537)) (Times!2219) (Or!2219) (Equal!2219) (Minus!2219) (Broken!11099 (value!69893 List!12537)) (And!2219) (Div!2219) (LessEqual!2219) (Mod!2219) (Concat!5640) (Not!2219) (Plus!2219) (SpaceValue!2219 (value!69894 List!12537)) (IntegerValue!6659 (value!69895 Int) (text!15982 List!12537)) (StringLiteralValue!6658 (text!15983 List!12537)) (FloatLiteralValue!4439 (text!15984 List!12537)) (BytesLiteralValue!2219 (value!69896 List!12537)) (CommentValue!4439 (value!69897 List!12537)) (StringLiteralValue!6659 (value!69898 List!12537)) (ErrorTokenValue!2219 (msg!2280 List!12537)) )
))
(declare-datatypes ((C!7160 0))(
  ( (C!7161 (val!4110 Int)) )
))
(declare-datatypes ((List!12538 0))(
  ( (Nil!12480) (Cons!12480 (h!17881 C!7160) (t!113428 List!12538)) )
))
(declare-datatypes ((IArray!8171 0))(
  ( (IArray!8172 (innerList!4143 List!12538)) )
))
(declare-datatypes ((Conc!4083 0))(
  ( (Node!4083 (left!10750 Conc!4083) (right!11080 Conc!4083) (csize!8396 Int) (cheight!4294 Int)) (Leaf!6307 (xs!6794 IArray!8171) (csize!8397 Int)) (Empty!4083) )
))
(declare-datatypes ((BalanceConc!8098 0))(
  ( (BalanceConc!8099 (c!203751 Conc!4083)) )
))
(declare-datatypes ((Regex!3421 0))(
  ( (ElementMatch!3421 (c!203752 C!7160)) (Concat!5641 (regOne!7354 Regex!3421) (regTwo!7354 Regex!3421)) (EmptyExpr!3421) (Star!3421 (reg!3750 Regex!3421)) (EmptyLang!3421) (Union!3421 (regOne!7355 Regex!3421) (regTwo!7355 Regex!3421)) )
))
(declare-datatypes ((String!15227 0))(
  ( (String!15228 (value!69899 String)) )
))
(declare-datatypes ((TokenValueInjection!4134 0))(
  ( (TokenValueInjection!4135 (toValue!3284 Int) (toChars!3143 Int)) )
))
(declare-datatypes ((Rule!4102 0))(
  ( (Rule!4103 (regex!2151 Regex!3421) (tag!2413 String!15227) (isSeparator!2151 Bool) (transformation!2151 TokenValueInjection!4134)) )
))
(declare-datatypes ((Token!3964 0))(
  ( (Token!3965 (value!69900 TokenValue!2219) (rule!3576 Rule!4102) (size!9854 Int) (originalCharacters!2705 List!12538)) )
))
(declare-datatypes ((List!12539 0))(
  ( (Nil!12481) (Cons!12481 (h!17882 Token!3964) (t!113429 List!12539)) )
))
(declare-fun tokens!556 () List!12539)

(declare-fun e!782485 () Bool)

(declare-fun e!782469 () Bool)

(declare-fun tp!346463 () Bool)

(declare-fun b!1218939 () Bool)

(declare-fun inv!21 (TokenValue!2219) Bool)

(assert (=> b!1218939 (= e!782469 (and (inv!21 (value!69900 (h!17882 tokens!556))) e!782485 tp!346463))))

(declare-fun b!1218940 () Bool)

(declare-fun e!782481 () Bool)

(declare-fun e!782477 () Bool)

(assert (=> b!1218940 (= e!782481 e!782477)))

(declare-fun res!547974 () Bool)

(assert (=> b!1218940 (=> (not res!547974) (not e!782477))))

(declare-datatypes ((tuple2!12344 0))(
  ( (tuple2!12345 (_1!7019 List!12539) (_2!7019 List!12538)) )
))
(declare-fun lt!416328 () tuple2!12344)

(get-info :version)

(assert (=> b!1218940 (= res!547974 (and (= (_1!7019 lt!416328) tokens!556) (not ((_ is Nil!12481) tokens!556))))))

(declare-datatypes ((LexerInterface!1846 0))(
  ( (LexerInterfaceExt!1843 (__x!8154 Int)) (Lexer!1844) )
))
(declare-fun thiss!20528 () LexerInterface!1846)

(declare-datatypes ((List!12540 0))(
  ( (Nil!12482) (Cons!12482 (h!17883 Rule!4102) (t!113430 List!12540)) )
))
(declare-fun rules!2728 () List!12540)

(declare-fun input!2346 () List!12538)

(declare-fun lexList!476 (LexerInterface!1846 List!12540 List!12538) tuple2!12344)

(assert (=> b!1218940 (= lt!416328 (lexList!476 thiss!20528 rules!2728 input!2346))))

(declare-fun res!547968 () Bool)

(assert (=> start!109058 (=> (not res!547968) (not e!782481))))

(assert (=> start!109058 (= res!547968 ((_ is Lexer!1844) thiss!20528))))

(assert (=> start!109058 e!782481))

(assert (=> start!109058 true))

(declare-fun e!782471 () Bool)

(assert (=> start!109058 e!782471))

(declare-fun e!782483 () Bool)

(assert (=> start!109058 e!782483))

(declare-fun e!782475 () Bool)

(assert (=> start!109058 e!782475))

(declare-fun tp!346460 () Bool)

(declare-fun b!1218941 () Bool)

(declare-fun inv!16677 (Token!3964) Bool)

(assert (=> b!1218941 (= e!782483 (and (inv!16677 (h!17882 tokens!556)) e!782469 tp!346460))))

(declare-fun b!1218942 () Bool)

(declare-fun res!547978 () Bool)

(declare-fun e!782470 () Bool)

(assert (=> b!1218942 (=> (not res!547978) (not e!782470))))

(declare-fun lt!416326 () List!12538)

(declare-fun isEmpty!7428 (List!12538) Bool)

(assert (=> b!1218942 (= res!547978 (not (isEmpty!7428 lt!416326)))))

(declare-fun b!1218943 () Bool)

(declare-fun res!547971 () Bool)

(assert (=> b!1218943 (=> (not res!547971) (not e!782481))))

(declare-fun isEmpty!7429 (List!12540) Bool)

(assert (=> b!1218943 (= res!547971 (not (isEmpty!7429 rules!2728)))))

(declare-fun b!1218944 () Bool)

(declare-fun res!547970 () Bool)

(declare-fun e!782480 () Bool)

(assert (=> b!1218944 (=> (not res!547970) (not e!782480))))

(declare-datatypes ((tuple2!12346 0))(
  ( (tuple2!12347 (_1!7020 Token!3964) (_2!7020 List!12538)) )
))
(declare-fun lt!416329 () tuple2!12346)

(declare-fun lt!416332 () List!12538)

(declare-fun matchR!1536 (Regex!3421 List!12538) Bool)

(assert (=> b!1218944 (= res!547970 (matchR!1536 (regex!2151 (rule!3576 (_1!7020 lt!416329))) lt!416332))))

(declare-fun b!1218945 () Bool)

(declare-fun res!547973 () Bool)

(assert (=> b!1218945 (=> (not res!547973) (not e!782480))))

(declare-fun rulesProduceIndividualToken!840 (LexerInterface!1846 List!12540 Token!3964) Bool)

(assert (=> b!1218945 (= res!547973 (not (rulesProduceIndividualToken!840 thiss!20528 rules!2728 (h!17882 tokens!556))))))

(declare-fun b!1218946 () Bool)

(declare-fun e!782478 () Bool)

(declare-fun e!782486 () Bool)

(assert (=> b!1218946 (= e!782478 e!782486)))

(declare-fun res!547972 () Bool)

(assert (=> b!1218946 (=> (not res!547972) (not e!782486))))

(declare-fun lt!416330 () BalanceConc!8098)

(declare-fun lt!416327 () BalanceConc!8098)

(assert (=> b!1218946 (= res!547972 (= lt!416330 lt!416327))))

(declare-fun charsOf!1155 (Token!3964) BalanceConc!8098)

(assert (=> b!1218946 (= lt!416327 (charsOf!1155 (h!17882 tokens!556)))))

(assert (=> b!1218946 (= lt!416330 (charsOf!1155 (_1!7020 lt!416329)))))

(declare-fun b!1218947 () Bool)

(declare-fun e!782479 () Bool)

(declare-fun tp!346462 () Bool)

(declare-fun inv!16674 (String!15227) Bool)

(declare-fun inv!16678 (TokenValueInjection!4134) Bool)

(assert (=> b!1218947 (= e!782485 (and tp!346462 (inv!16674 (tag!2413 (rule!3576 (h!17882 tokens!556)))) (inv!16678 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) e!782479))))

(declare-fun b!1218948 () Bool)

(declare-fun e!782484 () Bool)

(assert (=> b!1218948 (= e!782484 e!782480)))

(declare-fun res!547969 () Bool)

(assert (=> b!1218948 (=> (not res!547969) (not e!782480))))

(declare-fun lt!416333 () List!12538)

(assert (=> b!1218948 (= res!547969 (= lt!416333 input!2346))))

(declare-fun ++!3186 (List!12538 List!12538) List!12538)

(assert (=> b!1218948 (= lt!416333 (++!3186 lt!416326 (_2!7020 lt!416329)))))

(declare-fun b!1218949 () Bool)

(declare-fun e!782472 () Bool)

(declare-fun tp!346464 () Bool)

(assert (=> b!1218949 (= e!782471 (and e!782472 tp!346464))))

(declare-fun b!1218950 () Bool)

(declare-fun res!547979 () Bool)

(assert (=> b!1218950 (=> (not res!547979) (not e!782481))))

(declare-fun rulesInvariant!1720 (LexerInterface!1846 List!12540) Bool)

(assert (=> b!1218950 (= res!547979 (rulesInvariant!1720 thiss!20528 rules!2728))))

(declare-fun tp!346465 () Bool)

(declare-fun b!1218951 () Bool)

(declare-fun e!782482 () Bool)

(assert (=> b!1218951 (= e!782472 (and tp!346465 (inv!16674 (tag!2413 (h!17883 rules!2728))) (inv!16678 (transformation!2151 (h!17883 rules!2728))) e!782482))))

(declare-fun b!1218952 () Bool)

(assert (=> b!1218952 (= e!782480 e!782470)))

(declare-fun res!547980 () Bool)

(assert (=> b!1218952 (=> (not res!547980) (not e!782470))))

(declare-fun lt!416334 () List!12539)

(declare-fun isEmpty!7430 (List!12539) Bool)

(assert (=> b!1218952 (= res!547980 (not (isEmpty!7430 lt!416334)))))

(declare-fun lt!416331 () tuple2!12344)

(assert (=> b!1218952 (= lt!416331 (lexList!476 thiss!20528 rules!2728 (_2!7020 lt!416329)))))

(assert (=> b!1218952 (= lt!416334 (Cons!12481 (h!17882 tokens!556) Nil!12481))))

(declare-fun b!1218953 () Bool)

(declare-fun ++!3187 (List!12539 List!12539) List!12539)

(assert (=> b!1218953 (= e!782470 (not (= (lexList!476 thiss!20528 rules!2728 lt!416333) (tuple2!12345 (++!3187 lt!416334 (_1!7019 lt!416331)) (_2!7019 lt!416328)))))))

(assert (=> b!1218954 (= e!782482 (and tp!346459 tp!346461))))

(assert (=> b!1218955 (= e!782479 (and tp!346457 tp!346456))))

(declare-fun b!1218956 () Bool)

(assert (=> b!1218956 (= e!782486 e!782484)))

(declare-fun res!547976 () Bool)

(assert (=> b!1218956 (=> (not res!547976) (not e!782484))))

(assert (=> b!1218956 (= res!547976 (= lt!416332 lt!416326))))

(declare-fun list!4606 (BalanceConc!8098) List!12538)

(assert (=> b!1218956 (= lt!416326 (list!4606 lt!416327))))

(assert (=> b!1218956 (= lt!416332 (list!4606 lt!416330))))

(declare-fun b!1218957 () Bool)

(declare-fun e!782468 () Bool)

(assert (=> b!1218957 (= e!782468 e!782478)))

(declare-fun res!547975 () Bool)

(assert (=> b!1218957 (=> (not res!547975) (not e!782478))))

(assert (=> b!1218957 (= res!547975 (= (_1!7020 lt!416329) (h!17882 tokens!556)))))

(declare-datatypes ((Option!2513 0))(
  ( (None!2512) (Some!2512 (v!20643 tuple2!12346)) )
))
(declare-fun lt!416335 () Option!2513)

(declare-fun get!4104 (Option!2513) tuple2!12346)

(assert (=> b!1218957 (= lt!416329 (get!4104 lt!416335))))

(declare-fun b!1218958 () Bool)

(assert (=> b!1218958 (= e!782477 e!782468)))

(declare-fun res!547977 () Bool)

(assert (=> b!1218958 (=> (not res!547977) (not e!782468))))

(declare-fun isDefined!2149 (Option!2513) Bool)

(assert (=> b!1218958 (= res!547977 (isDefined!2149 lt!416335))))

(declare-fun maxPrefix!968 (LexerInterface!1846 List!12540 List!12538) Option!2513)

(assert (=> b!1218958 (= lt!416335 (maxPrefix!968 thiss!20528 rules!2728 input!2346))))

(declare-fun b!1218959 () Bool)

(declare-fun tp_is_empty!6363 () Bool)

(declare-fun tp!346458 () Bool)

(assert (=> b!1218959 (= e!782475 (and tp_is_empty!6363 tp!346458))))

(assert (= (and start!109058 res!547968) b!1218943))

(assert (= (and b!1218943 res!547971) b!1218950))

(assert (= (and b!1218950 res!547979) b!1218940))

(assert (= (and b!1218940 res!547974) b!1218958))

(assert (= (and b!1218958 res!547977) b!1218957))

(assert (= (and b!1218957 res!547975) b!1218946))

(assert (= (and b!1218946 res!547972) b!1218956))

(assert (= (and b!1218956 res!547976) b!1218948))

(assert (= (and b!1218948 res!547969) b!1218944))

(assert (= (and b!1218944 res!547970) b!1218945))

(assert (= (and b!1218945 res!547973) b!1218952))

(assert (= (and b!1218952 res!547980) b!1218942))

(assert (= (and b!1218942 res!547978) b!1218953))

(assert (= b!1218951 b!1218954))

(assert (= b!1218949 b!1218951))

(assert (= (and start!109058 ((_ is Cons!12482) rules!2728)) b!1218949))

(assert (= b!1218947 b!1218955))

(assert (= b!1218939 b!1218947))

(assert (= b!1218941 b!1218939))

(assert (= (and start!109058 ((_ is Cons!12481) tokens!556)) b!1218941))

(assert (= (and start!109058 ((_ is Cons!12480) input!2346)) b!1218959))

(declare-fun m!1392587 () Bool)

(assert (=> b!1218944 m!1392587))

(declare-fun m!1392589 () Bool)

(assert (=> b!1218958 m!1392589))

(declare-fun m!1392591 () Bool)

(assert (=> b!1218958 m!1392591))

(declare-fun m!1392593 () Bool)

(assert (=> b!1218940 m!1392593))

(declare-fun m!1392595 () Bool)

(assert (=> b!1218948 m!1392595))

(declare-fun m!1392597 () Bool)

(assert (=> b!1218951 m!1392597))

(declare-fun m!1392599 () Bool)

(assert (=> b!1218951 m!1392599))

(declare-fun m!1392601 () Bool)

(assert (=> b!1218957 m!1392601))

(declare-fun m!1392603 () Bool)

(assert (=> b!1218941 m!1392603))

(declare-fun m!1392605 () Bool)

(assert (=> b!1218950 m!1392605))

(declare-fun m!1392607 () Bool)

(assert (=> b!1218956 m!1392607))

(declare-fun m!1392609 () Bool)

(assert (=> b!1218956 m!1392609))

(declare-fun m!1392611 () Bool)

(assert (=> b!1218952 m!1392611))

(declare-fun m!1392613 () Bool)

(assert (=> b!1218952 m!1392613))

(declare-fun m!1392615 () Bool)

(assert (=> b!1218947 m!1392615))

(declare-fun m!1392617 () Bool)

(assert (=> b!1218947 m!1392617))

(declare-fun m!1392619 () Bool)

(assert (=> b!1218946 m!1392619))

(declare-fun m!1392621 () Bool)

(assert (=> b!1218946 m!1392621))

(declare-fun m!1392623 () Bool)

(assert (=> b!1218942 m!1392623))

(declare-fun m!1392625 () Bool)

(assert (=> b!1218953 m!1392625))

(declare-fun m!1392627 () Bool)

(assert (=> b!1218953 m!1392627))

(declare-fun m!1392629 () Bool)

(assert (=> b!1218943 m!1392629))

(declare-fun m!1392631 () Bool)

(assert (=> b!1218945 m!1392631))

(declare-fun m!1392633 () Bool)

(assert (=> b!1218939 m!1392633))

(check-sat (not b!1218956) (not b!1218948) b_and!82945 (not b!1218939) (not b!1218940) (not b!1218946) tp_is_empty!6363 (not b_next!30155) (not b!1218943) (not b_next!30159) (not b!1218953) b_and!82947 (not b!1218949) (not b_next!30157) (not b!1218944) (not b!1218945) (not b!1218950) b_and!82951 (not b!1218957) (not b!1218952) (not b!1218959) (not b!1218941) (not b!1218951) (not b!1218958) (not b!1218947) (not b_next!30153) (not b!1218942) b_and!82949)
(check-sat (not b_next!30157) b_and!82945 b_and!82951 (not b_next!30153) b_and!82949 (not b_next!30155) (not b_next!30159) b_and!82947)
(get-model)

(declare-fun d!347868 () Bool)

(assert (=> d!347868 (= (isEmpty!7429 rules!2728) ((_ is Nil!12482) rules!2728))))

(assert (=> b!1218943 d!347868))

(declare-fun d!347870 () Bool)

(declare-fun lt!416390 () Bool)

(declare-fun e!782616 () Bool)

(assert (=> d!347870 (= lt!416390 e!782616)))

(declare-fun res!548079 () Bool)

(assert (=> d!347870 (=> (not res!548079) (not e!782616))))

(declare-datatypes ((IArray!8175 0))(
  ( (IArray!8176 (innerList!4145 List!12539)) )
))
(declare-datatypes ((Conc!4085 0))(
  ( (Node!4085 (left!10752 Conc!4085) (right!11082 Conc!4085) (csize!8400 Int) (cheight!4296 Int)) (Leaf!6309 (xs!6796 IArray!8175) (csize!8401 Int)) (Empty!4085) )
))
(declare-datatypes ((BalanceConc!8102 0))(
  ( (BalanceConc!8103 (c!203822 Conc!4085)) )
))
(declare-fun list!4609 (BalanceConc!8102) List!12539)

(declare-datatypes ((tuple2!12350 0))(
  ( (tuple2!12351 (_1!7022 BalanceConc!8102) (_2!7022 BalanceConc!8098)) )
))
(declare-fun lex!752 (LexerInterface!1846 List!12540 BalanceConc!8098) tuple2!12350)

(declare-fun print!689 (LexerInterface!1846 BalanceConc!8102) BalanceConc!8098)

(declare-fun singletonSeq!737 (Token!3964) BalanceConc!8102)

(assert (=> d!347870 (= res!548079 (= (list!4609 (_1!7022 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)))))) (list!4609 (singletonSeq!737 (h!17882 tokens!556)))))))

(declare-fun e!782615 () Bool)

(assert (=> d!347870 (= lt!416390 e!782615)))

(declare-fun res!548081 () Bool)

(assert (=> d!347870 (=> (not res!548081) (not e!782615))))

(declare-fun lt!416389 () tuple2!12350)

(declare-fun size!9858 (BalanceConc!8102) Int)

(assert (=> d!347870 (= res!548081 (= (size!9858 (_1!7022 lt!416389)) 1))))

(assert (=> d!347870 (= lt!416389 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)))))))

(assert (=> d!347870 (not (isEmpty!7429 rules!2728))))

(assert (=> d!347870 (= (rulesProduceIndividualToken!840 thiss!20528 rules!2728 (h!17882 tokens!556)) lt!416390)))

(declare-fun b!1219176 () Bool)

(declare-fun res!548080 () Bool)

(assert (=> b!1219176 (=> (not res!548080) (not e!782615))))

(declare-fun apply!2660 (BalanceConc!8102 Int) Token!3964)

(assert (=> b!1219176 (= res!548080 (= (apply!2660 (_1!7022 lt!416389) 0) (h!17882 tokens!556)))))

(declare-fun b!1219177 () Bool)

(declare-fun isEmpty!7433 (BalanceConc!8098) Bool)

(assert (=> b!1219177 (= e!782615 (isEmpty!7433 (_2!7022 lt!416389)))))

(declare-fun b!1219178 () Bool)

(assert (=> b!1219178 (= e!782616 (isEmpty!7433 (_2!7022 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)))))))))

(assert (= (and d!347870 res!548081) b!1219176))

(assert (= (and b!1219176 res!548080) b!1219177))

(assert (= (and d!347870 res!548079) b!1219178))

(declare-fun m!1392819 () Bool)

(assert (=> d!347870 m!1392819))

(declare-fun m!1392821 () Bool)

(assert (=> d!347870 m!1392821))

(declare-fun m!1392823 () Bool)

(assert (=> d!347870 m!1392823))

(declare-fun m!1392825 () Bool)

(assert (=> d!347870 m!1392825))

(declare-fun m!1392827 () Bool)

(assert (=> d!347870 m!1392827))

(declare-fun m!1392829 () Bool)

(assert (=> d!347870 m!1392829))

(assert (=> d!347870 m!1392629))

(assert (=> d!347870 m!1392825))

(assert (=> d!347870 m!1392825))

(assert (=> d!347870 m!1392819))

(declare-fun m!1392831 () Bool)

(assert (=> b!1219176 m!1392831))

(declare-fun m!1392833 () Bool)

(assert (=> b!1219177 m!1392833))

(assert (=> b!1219178 m!1392825))

(assert (=> b!1219178 m!1392825))

(assert (=> b!1219178 m!1392819))

(assert (=> b!1219178 m!1392819))

(assert (=> b!1219178 m!1392821))

(declare-fun m!1392835 () Bool)

(assert (=> b!1219178 m!1392835))

(assert (=> b!1218945 d!347870))

(declare-fun b!1219207 () Bool)

(declare-fun res!548104 () Bool)

(declare-fun e!782634 () Bool)

(assert (=> b!1219207 (=> res!548104 e!782634)))

(declare-fun e!782633 () Bool)

(assert (=> b!1219207 (= res!548104 e!782633)))

(declare-fun res!548101 () Bool)

(assert (=> b!1219207 (=> (not res!548101) (not e!782633))))

(declare-fun lt!416393 () Bool)

(assert (=> b!1219207 (= res!548101 lt!416393)))

(declare-fun b!1219208 () Bool)

(declare-fun e!782636 () Bool)

(declare-fun derivativeStep!853 (Regex!3421 C!7160) Regex!3421)

(declare-fun head!2157 (List!12538) C!7160)

(declare-fun tail!1789 (List!12538) List!12538)

(assert (=> b!1219208 (= e!782636 (matchR!1536 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332)) (tail!1789 lt!416332)))))

(declare-fun b!1219209 () Bool)

(declare-fun e!782637 () Bool)

(declare-fun e!782631 () Bool)

(assert (=> b!1219209 (= e!782637 e!782631)))

(declare-fun res!548099 () Bool)

(assert (=> b!1219209 (=> res!548099 e!782631)))

(declare-fun call!84612 () Bool)

(assert (=> b!1219209 (= res!548099 call!84612)))

(declare-fun b!1219211 () Bool)

(assert (=> b!1219211 (= e!782631 (not (= (head!2157 lt!416332) (c!203752 (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))))

(declare-fun b!1219212 () Bool)

(declare-fun res!548105 () Bool)

(assert (=> b!1219212 (=> res!548105 e!782631)))

(assert (=> b!1219212 (= res!548105 (not (isEmpty!7428 (tail!1789 lt!416332))))))

(declare-fun b!1219213 () Bool)

(declare-fun e!782632 () Bool)

(assert (=> b!1219213 (= e!782632 (not lt!416393))))

(declare-fun bm!84607 () Bool)

(assert (=> bm!84607 (= call!84612 (isEmpty!7428 lt!416332))))

(declare-fun b!1219214 () Bool)

(declare-fun nullable!1060 (Regex!3421) Bool)

(assert (=> b!1219214 (= e!782636 (nullable!1060 (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun b!1219215 () Bool)

(declare-fun res!548103 () Bool)

(assert (=> b!1219215 (=> res!548103 e!782634)))

(assert (=> b!1219215 (= res!548103 (not ((_ is ElementMatch!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329))))))))

(assert (=> b!1219215 (= e!782632 e!782634)))

(declare-fun b!1219216 () Bool)

(declare-fun e!782635 () Bool)

(assert (=> b!1219216 (= e!782635 e!782632)))

(declare-fun c!203795 () Bool)

(assert (=> b!1219216 (= c!203795 ((_ is EmptyLang!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun b!1219217 () Bool)

(declare-fun res!548098 () Bool)

(assert (=> b!1219217 (=> (not res!548098) (not e!782633))))

(assert (=> b!1219217 (= res!548098 (isEmpty!7428 (tail!1789 lt!416332)))))

(declare-fun b!1219218 () Bool)

(assert (=> b!1219218 (= e!782635 (= lt!416393 call!84612))))

(declare-fun b!1219219 () Bool)

(declare-fun res!548102 () Bool)

(assert (=> b!1219219 (=> (not res!548102) (not e!782633))))

(assert (=> b!1219219 (= res!548102 (not call!84612))))

(declare-fun b!1219220 () Bool)

(assert (=> b!1219220 (= e!782634 e!782637)))

(declare-fun res!548100 () Bool)

(assert (=> b!1219220 (=> (not res!548100) (not e!782637))))

(assert (=> b!1219220 (= res!548100 (not lt!416393))))

(declare-fun b!1219210 () Bool)

(assert (=> b!1219210 (= e!782633 (= (head!2157 lt!416332) (c!203752 (regex!2151 (rule!3576 (_1!7020 lt!416329))))))))

(declare-fun d!347914 () Bool)

(assert (=> d!347914 e!782635))

(declare-fun c!203796 () Bool)

(assert (=> d!347914 (= c!203796 ((_ is EmptyExpr!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(assert (=> d!347914 (= lt!416393 e!782636)))

(declare-fun c!203794 () Bool)

(assert (=> d!347914 (= c!203794 (isEmpty!7428 lt!416332))))

(declare-fun validRegex!1457 (Regex!3421) Bool)

(assert (=> d!347914 (validRegex!1457 (regex!2151 (rule!3576 (_1!7020 lt!416329))))))

(assert (=> d!347914 (= (matchR!1536 (regex!2151 (rule!3576 (_1!7020 lt!416329))) lt!416332) lt!416393)))

(assert (= (and d!347914 c!203794) b!1219214))

(assert (= (and d!347914 (not c!203794)) b!1219208))

(assert (= (and d!347914 c!203796) b!1219218))

(assert (= (and d!347914 (not c!203796)) b!1219216))

(assert (= (and b!1219216 c!203795) b!1219213))

(assert (= (and b!1219216 (not c!203795)) b!1219215))

(assert (= (and b!1219215 (not res!548103)) b!1219207))

(assert (= (and b!1219207 res!548101) b!1219219))

(assert (= (and b!1219219 res!548102) b!1219217))

(assert (= (and b!1219217 res!548098) b!1219210))

(assert (= (and b!1219207 (not res!548104)) b!1219220))

(assert (= (and b!1219220 res!548100) b!1219209))

(assert (= (and b!1219209 (not res!548099)) b!1219212))

(assert (= (and b!1219212 (not res!548105)) b!1219211))

(assert (= (or b!1219218 b!1219209 b!1219219) bm!84607))

(declare-fun m!1392837 () Bool)

(assert (=> b!1219217 m!1392837))

(assert (=> b!1219217 m!1392837))

(declare-fun m!1392839 () Bool)

(assert (=> b!1219217 m!1392839))

(assert (=> b!1219212 m!1392837))

(assert (=> b!1219212 m!1392837))

(assert (=> b!1219212 m!1392839))

(declare-fun m!1392841 () Bool)

(assert (=> bm!84607 m!1392841))

(assert (=> d!347914 m!1392841))

(declare-fun m!1392843 () Bool)

(assert (=> d!347914 m!1392843))

(declare-fun m!1392845 () Bool)

(assert (=> b!1219208 m!1392845))

(assert (=> b!1219208 m!1392845))

(declare-fun m!1392847 () Bool)

(assert (=> b!1219208 m!1392847))

(assert (=> b!1219208 m!1392837))

(assert (=> b!1219208 m!1392847))

(assert (=> b!1219208 m!1392837))

(declare-fun m!1392849 () Bool)

(assert (=> b!1219208 m!1392849))

(assert (=> b!1219210 m!1392845))

(declare-fun m!1392851 () Bool)

(assert (=> b!1219214 m!1392851))

(assert (=> b!1219211 m!1392845))

(assert (=> b!1218944 d!347914))

(declare-fun d!347916 () Bool)

(declare-fun res!548110 () Bool)

(declare-fun e!782640 () Bool)

(assert (=> d!347916 (=> (not res!548110) (not e!782640))))

(assert (=> d!347916 (= res!548110 (not (isEmpty!7428 (originalCharacters!2705 (h!17882 tokens!556)))))))

(assert (=> d!347916 (= (inv!16677 (h!17882 tokens!556)) e!782640)))

(declare-fun b!1219225 () Bool)

(declare-fun res!548111 () Bool)

(assert (=> b!1219225 (=> (not res!548111) (not e!782640))))

(declare-fun dynLambda!5441 (Int TokenValue!2219) BalanceConc!8098)

(assert (=> b!1219225 (= res!548111 (= (originalCharacters!2705 (h!17882 tokens!556)) (list!4606 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))))))

(declare-fun b!1219226 () Bool)

(declare-fun size!9859 (List!12538) Int)

(assert (=> b!1219226 (= e!782640 (= (size!9854 (h!17882 tokens!556)) (size!9859 (originalCharacters!2705 (h!17882 tokens!556)))))))

(assert (= (and d!347916 res!548110) b!1219225))

(assert (= (and b!1219225 res!548111) b!1219226))

(declare-fun b_lambda!35969 () Bool)

(assert (=> (not b_lambda!35969) (not b!1219225)))

(declare-fun tb!66977 () Bool)

(declare-fun t!113450 () Bool)

(assert (=> (and b!1218954 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) t!113450) tb!66977))

(declare-fun b!1219231 () Bool)

(declare-fun e!782643 () Bool)

(declare-fun tp!346523 () Bool)

(declare-fun inv!16681 (Conc!4083) Bool)

(assert (=> b!1219231 (= e!782643 (and (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))) tp!346523))))

(declare-fun result!81130 () Bool)

(declare-fun inv!16682 (BalanceConc!8098) Bool)

(assert (=> tb!66977 (= result!81130 (and (inv!16682 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))) e!782643))))

(assert (= tb!66977 b!1219231))

(declare-fun m!1392853 () Bool)

(assert (=> b!1219231 m!1392853))

(declare-fun m!1392855 () Bool)

(assert (=> tb!66977 m!1392855))

(assert (=> b!1219225 t!113450))

(declare-fun b_and!82973 () Bool)

(assert (= b_and!82947 (and (=> t!113450 result!81130) b_and!82973)))

(declare-fun t!113452 () Bool)

(declare-fun tb!66979 () Bool)

(assert (=> (and b!1218955 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) t!113452) tb!66979))

(declare-fun result!81134 () Bool)

(assert (= result!81134 result!81130))

(assert (=> b!1219225 t!113452))

(declare-fun b_and!82975 () Bool)

(assert (= b_and!82951 (and (=> t!113452 result!81134) b_and!82975)))

(declare-fun m!1392857 () Bool)

(assert (=> d!347916 m!1392857))

(declare-fun m!1392859 () Bool)

(assert (=> b!1219225 m!1392859))

(assert (=> b!1219225 m!1392859))

(declare-fun m!1392861 () Bool)

(assert (=> b!1219225 m!1392861))

(declare-fun m!1392863 () Bool)

(assert (=> b!1219226 m!1392863))

(assert (=> b!1218941 d!347916))

(declare-fun d!347918 () Bool)

(assert (=> d!347918 (= (inv!16674 (tag!2413 (h!17883 rules!2728))) (= (mod (str.len (value!69899 (tag!2413 (h!17883 rules!2728)))) 2) 0))))

(assert (=> b!1218951 d!347918))

(declare-fun d!347920 () Bool)

(declare-fun res!548114 () Bool)

(declare-fun e!782646 () Bool)

(assert (=> d!347920 (=> (not res!548114) (not e!782646))))

(declare-fun semiInverseModEq!788 (Int Int) Bool)

(assert (=> d!347920 (= res!548114 (semiInverseModEq!788 (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toValue!3284 (transformation!2151 (h!17883 rules!2728)))))))

(assert (=> d!347920 (= (inv!16678 (transformation!2151 (h!17883 rules!2728))) e!782646)))

(declare-fun b!1219234 () Bool)

(declare-fun equivClasses!755 (Int Int) Bool)

(assert (=> b!1219234 (= e!782646 (equivClasses!755 (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toValue!3284 (transformation!2151 (h!17883 rules!2728)))))))

(assert (= (and d!347920 res!548114) b!1219234))

(declare-fun m!1392865 () Bool)

(assert (=> d!347920 m!1392865))

(declare-fun m!1392867 () Bool)

(assert (=> b!1219234 m!1392867))

(assert (=> b!1218951 d!347920))

(declare-fun d!347922 () Bool)

(declare-fun e!782654 () Bool)

(assert (=> d!347922 e!782654))

(declare-fun c!203801 () Bool)

(declare-fun lt!416402 () tuple2!12344)

(declare-fun size!9860 (List!12539) Int)

(assert (=> d!347922 (= c!203801 (> (size!9860 (_1!7019 lt!416402)) 0))))

(declare-fun e!782655 () tuple2!12344)

(assert (=> d!347922 (= lt!416402 e!782655)))

(declare-fun c!203802 () Bool)

(declare-fun lt!416401 () Option!2513)

(assert (=> d!347922 (= c!203802 ((_ is Some!2512) lt!416401))))

(assert (=> d!347922 (= lt!416401 (maxPrefix!968 thiss!20528 rules!2728 input!2346))))

(assert (=> d!347922 (= (lexList!476 thiss!20528 rules!2728 input!2346) lt!416402)))

(declare-fun b!1219245 () Bool)

(declare-fun lt!416400 () tuple2!12344)

(assert (=> b!1219245 (= e!782655 (tuple2!12345 (Cons!12481 (_1!7020 (v!20643 lt!416401)) (_1!7019 lt!416400)) (_2!7019 lt!416400)))))

(assert (=> b!1219245 (= lt!416400 (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416401))))))

(declare-fun b!1219246 () Bool)

(declare-fun e!782653 () Bool)

(assert (=> b!1219246 (= e!782653 (not (isEmpty!7430 (_1!7019 lt!416402))))))

(declare-fun b!1219247 () Bool)

(assert (=> b!1219247 (= e!782654 (= (_2!7019 lt!416402) input!2346))))

(declare-fun b!1219248 () Bool)

(assert (=> b!1219248 (= e!782654 e!782653)))

(declare-fun res!548117 () Bool)

(assert (=> b!1219248 (= res!548117 (< (size!9859 (_2!7019 lt!416402)) (size!9859 input!2346)))))

(assert (=> b!1219248 (=> (not res!548117) (not e!782653))))

(declare-fun b!1219249 () Bool)

(assert (=> b!1219249 (= e!782655 (tuple2!12345 Nil!12481 input!2346))))

(assert (= (and d!347922 c!203802) b!1219245))

(assert (= (and d!347922 (not c!203802)) b!1219249))

(assert (= (and d!347922 c!203801) b!1219248))

(assert (= (and d!347922 (not c!203801)) b!1219247))

(assert (= (and b!1219248 res!548117) b!1219246))

(declare-fun m!1392869 () Bool)

(assert (=> d!347922 m!1392869))

(assert (=> d!347922 m!1392591))

(declare-fun m!1392871 () Bool)

(assert (=> b!1219245 m!1392871))

(declare-fun m!1392873 () Bool)

(assert (=> b!1219246 m!1392873))

(declare-fun m!1392875 () Bool)

(assert (=> b!1219248 m!1392875))

(declare-fun m!1392877 () Bool)

(assert (=> b!1219248 m!1392877))

(assert (=> b!1218940 d!347922))

(declare-fun d!347924 () Bool)

(declare-fun e!782657 () Bool)

(assert (=> d!347924 e!782657))

(declare-fun c!203803 () Bool)

(declare-fun lt!416405 () tuple2!12344)

(assert (=> d!347924 (= c!203803 (> (size!9860 (_1!7019 lt!416405)) 0))))

(declare-fun e!782658 () tuple2!12344)

(assert (=> d!347924 (= lt!416405 e!782658)))

(declare-fun c!203804 () Bool)

(declare-fun lt!416404 () Option!2513)

(assert (=> d!347924 (= c!203804 ((_ is Some!2512) lt!416404))))

(assert (=> d!347924 (= lt!416404 (maxPrefix!968 thiss!20528 rules!2728 lt!416333))))

(assert (=> d!347924 (= (lexList!476 thiss!20528 rules!2728 lt!416333) lt!416405)))

(declare-fun b!1219250 () Bool)

(declare-fun lt!416403 () tuple2!12344)

(assert (=> b!1219250 (= e!782658 (tuple2!12345 (Cons!12481 (_1!7020 (v!20643 lt!416404)) (_1!7019 lt!416403)) (_2!7019 lt!416403)))))

(assert (=> b!1219250 (= lt!416403 (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416404))))))

(declare-fun b!1219251 () Bool)

(declare-fun e!782656 () Bool)

(assert (=> b!1219251 (= e!782656 (not (isEmpty!7430 (_1!7019 lt!416405))))))

(declare-fun b!1219252 () Bool)

(assert (=> b!1219252 (= e!782657 (= (_2!7019 lt!416405) lt!416333))))

(declare-fun b!1219253 () Bool)

(assert (=> b!1219253 (= e!782657 e!782656)))

(declare-fun res!548118 () Bool)

(assert (=> b!1219253 (= res!548118 (< (size!9859 (_2!7019 lt!416405)) (size!9859 lt!416333)))))

(assert (=> b!1219253 (=> (not res!548118) (not e!782656))))

(declare-fun b!1219254 () Bool)

(assert (=> b!1219254 (= e!782658 (tuple2!12345 Nil!12481 lt!416333))))

(assert (= (and d!347924 c!203804) b!1219250))

(assert (= (and d!347924 (not c!203804)) b!1219254))

(assert (= (and d!347924 c!203803) b!1219253))

(assert (= (and d!347924 (not c!203803)) b!1219252))

(assert (= (and b!1219253 res!548118) b!1219251))

(declare-fun m!1392879 () Bool)

(assert (=> d!347924 m!1392879))

(declare-fun m!1392881 () Bool)

(assert (=> d!347924 m!1392881))

(declare-fun m!1392883 () Bool)

(assert (=> b!1219250 m!1392883))

(declare-fun m!1392885 () Bool)

(assert (=> b!1219251 m!1392885))

(declare-fun m!1392887 () Bool)

(assert (=> b!1219253 m!1392887))

(declare-fun m!1392889 () Bool)

(assert (=> b!1219253 m!1392889))

(assert (=> b!1218953 d!347924))

(declare-fun b!1219263 () Bool)

(declare-fun e!782664 () List!12539)

(assert (=> b!1219263 (= e!782664 (_1!7019 lt!416331))))

(declare-fun d!347926 () Bool)

(declare-fun e!782663 () Bool)

(assert (=> d!347926 e!782663))

(declare-fun res!548124 () Bool)

(assert (=> d!347926 (=> (not res!548124) (not e!782663))))

(declare-fun lt!416408 () List!12539)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1773 (List!12539) (InoxSet Token!3964))

(assert (=> d!347926 (= res!548124 (= (content!1773 lt!416408) ((_ map or) (content!1773 lt!416334) (content!1773 (_1!7019 lt!416331)))))))

(assert (=> d!347926 (= lt!416408 e!782664)))

(declare-fun c!203807 () Bool)

(assert (=> d!347926 (= c!203807 ((_ is Nil!12481) lt!416334))))

(assert (=> d!347926 (= (++!3187 lt!416334 (_1!7019 lt!416331)) lt!416408)))

(declare-fun b!1219264 () Bool)

(assert (=> b!1219264 (= e!782664 (Cons!12481 (h!17882 lt!416334) (++!3187 (t!113429 lt!416334) (_1!7019 lt!416331))))))

(declare-fun b!1219265 () Bool)

(declare-fun res!548123 () Bool)

(assert (=> b!1219265 (=> (not res!548123) (not e!782663))))

(assert (=> b!1219265 (= res!548123 (= (size!9860 lt!416408) (+ (size!9860 lt!416334) (size!9860 (_1!7019 lt!416331)))))))

(declare-fun b!1219266 () Bool)

(assert (=> b!1219266 (= e!782663 (or (not (= (_1!7019 lt!416331) Nil!12481)) (= lt!416408 lt!416334)))))

(assert (= (and d!347926 c!203807) b!1219263))

(assert (= (and d!347926 (not c!203807)) b!1219264))

(assert (= (and d!347926 res!548124) b!1219265))

(assert (= (and b!1219265 res!548123) b!1219266))

(declare-fun m!1392891 () Bool)

(assert (=> d!347926 m!1392891))

(declare-fun m!1392893 () Bool)

(assert (=> d!347926 m!1392893))

(declare-fun m!1392895 () Bool)

(assert (=> d!347926 m!1392895))

(declare-fun m!1392897 () Bool)

(assert (=> b!1219264 m!1392897))

(declare-fun m!1392899 () Bool)

(assert (=> b!1219265 m!1392899))

(declare-fun m!1392901 () Bool)

(assert (=> b!1219265 m!1392901))

(declare-fun m!1392903 () Bool)

(assert (=> b!1219265 m!1392903))

(assert (=> b!1218953 d!347926))

(declare-fun d!347928 () Bool)

(assert (=> d!347928 (= (isEmpty!7428 lt!416326) ((_ is Nil!12480) lt!416326))))

(assert (=> b!1218942 d!347928))

(declare-fun d!347930 () Bool)

(assert (=> d!347930 (= (isEmpty!7430 lt!416334) ((_ is Nil!12481) lt!416334))))

(assert (=> b!1218952 d!347930))

(declare-fun d!347932 () Bool)

(declare-fun e!782666 () Bool)

(assert (=> d!347932 e!782666))

(declare-fun c!203808 () Bool)

(declare-fun lt!416411 () tuple2!12344)

(assert (=> d!347932 (= c!203808 (> (size!9860 (_1!7019 lt!416411)) 0))))

(declare-fun e!782667 () tuple2!12344)

(assert (=> d!347932 (= lt!416411 e!782667)))

(declare-fun c!203809 () Bool)

(declare-fun lt!416410 () Option!2513)

(assert (=> d!347932 (= c!203809 ((_ is Some!2512) lt!416410))))

(assert (=> d!347932 (= lt!416410 (maxPrefix!968 thiss!20528 rules!2728 (_2!7020 lt!416329)))))

(assert (=> d!347932 (= (lexList!476 thiss!20528 rules!2728 (_2!7020 lt!416329)) lt!416411)))

(declare-fun b!1219267 () Bool)

(declare-fun lt!416409 () tuple2!12344)

(assert (=> b!1219267 (= e!782667 (tuple2!12345 (Cons!12481 (_1!7020 (v!20643 lt!416410)) (_1!7019 lt!416409)) (_2!7019 lt!416409)))))

(assert (=> b!1219267 (= lt!416409 (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416410))))))

(declare-fun b!1219268 () Bool)

(declare-fun e!782665 () Bool)

(assert (=> b!1219268 (= e!782665 (not (isEmpty!7430 (_1!7019 lt!416411))))))

(declare-fun b!1219269 () Bool)

(assert (=> b!1219269 (= e!782666 (= (_2!7019 lt!416411) (_2!7020 lt!416329)))))

(declare-fun b!1219270 () Bool)

(assert (=> b!1219270 (= e!782666 e!782665)))

(declare-fun res!548125 () Bool)

(assert (=> b!1219270 (= res!548125 (< (size!9859 (_2!7019 lt!416411)) (size!9859 (_2!7020 lt!416329))))))

(assert (=> b!1219270 (=> (not res!548125) (not e!782665))))

(declare-fun b!1219271 () Bool)

(assert (=> b!1219271 (= e!782667 (tuple2!12345 Nil!12481 (_2!7020 lt!416329)))))

(assert (= (and d!347932 c!203809) b!1219267))

(assert (= (and d!347932 (not c!203809)) b!1219271))

(assert (= (and d!347932 c!203808) b!1219270))

(assert (= (and d!347932 (not c!203808)) b!1219269))

(assert (= (and b!1219270 res!548125) b!1219268))

(declare-fun m!1392905 () Bool)

(assert (=> d!347932 m!1392905))

(declare-fun m!1392907 () Bool)

(assert (=> d!347932 m!1392907))

(declare-fun m!1392909 () Bool)

(assert (=> b!1219267 m!1392909))

(declare-fun m!1392911 () Bool)

(assert (=> b!1219268 m!1392911))

(declare-fun m!1392913 () Bool)

(assert (=> b!1219270 m!1392913))

(declare-fun m!1392915 () Bool)

(assert (=> b!1219270 m!1392915))

(assert (=> b!1218952 d!347932))

(declare-fun b!1219283 () Bool)

(declare-fun lt!416414 () List!12538)

(declare-fun e!782672 () Bool)

(assert (=> b!1219283 (= e!782672 (or (not (= (_2!7020 lt!416329) Nil!12480)) (= lt!416414 lt!416326)))))

(declare-fun b!1219282 () Bool)

(declare-fun res!548130 () Bool)

(assert (=> b!1219282 (=> (not res!548130) (not e!782672))))

(assert (=> b!1219282 (= res!548130 (= (size!9859 lt!416414) (+ (size!9859 lt!416326) (size!9859 (_2!7020 lt!416329)))))))

(declare-fun b!1219280 () Bool)

(declare-fun e!782673 () List!12538)

(assert (=> b!1219280 (= e!782673 (_2!7020 lt!416329))))

(declare-fun b!1219281 () Bool)

(assert (=> b!1219281 (= e!782673 (Cons!12480 (h!17881 lt!416326) (++!3186 (t!113428 lt!416326) (_2!7020 lt!416329))))))

(declare-fun d!347934 () Bool)

(assert (=> d!347934 e!782672))

(declare-fun res!548131 () Bool)

(assert (=> d!347934 (=> (not res!548131) (not e!782672))))

(declare-fun content!1774 (List!12538) (InoxSet C!7160))

(assert (=> d!347934 (= res!548131 (= (content!1774 lt!416414) ((_ map or) (content!1774 lt!416326) (content!1774 (_2!7020 lt!416329)))))))

(assert (=> d!347934 (= lt!416414 e!782673)))

(declare-fun c!203812 () Bool)

(assert (=> d!347934 (= c!203812 ((_ is Nil!12480) lt!416326))))

(assert (=> d!347934 (= (++!3186 lt!416326 (_2!7020 lt!416329)) lt!416414)))

(assert (= (and d!347934 c!203812) b!1219280))

(assert (= (and d!347934 (not c!203812)) b!1219281))

(assert (= (and d!347934 res!548131) b!1219282))

(assert (= (and b!1219282 res!548130) b!1219283))

(declare-fun m!1392917 () Bool)

(assert (=> b!1219282 m!1392917))

(declare-fun m!1392919 () Bool)

(assert (=> b!1219282 m!1392919))

(assert (=> b!1219282 m!1392915))

(declare-fun m!1392921 () Bool)

(assert (=> b!1219281 m!1392921))

(declare-fun m!1392923 () Bool)

(assert (=> d!347934 m!1392923))

(declare-fun m!1392925 () Bool)

(assert (=> d!347934 m!1392925))

(declare-fun m!1392927 () Bool)

(assert (=> d!347934 m!1392927))

(assert (=> b!1218948 d!347934))

(declare-fun d!347936 () Bool)

(declare-fun res!548134 () Bool)

(declare-fun e!782676 () Bool)

(assert (=> d!347936 (=> (not res!548134) (not e!782676))))

(declare-fun rulesValid!775 (LexerInterface!1846 List!12540) Bool)

(assert (=> d!347936 (= res!548134 (rulesValid!775 thiss!20528 rules!2728))))

(assert (=> d!347936 (= (rulesInvariant!1720 thiss!20528 rules!2728) e!782676)))

(declare-fun b!1219286 () Bool)

(declare-datatypes ((List!12542 0))(
  ( (Nil!12484) (Cons!12484 (h!17885 String!15227) (t!113466 List!12542)) )
))
(declare-fun noDuplicateTag!775 (LexerInterface!1846 List!12540 List!12542) Bool)

(assert (=> b!1219286 (= e!782676 (noDuplicateTag!775 thiss!20528 rules!2728 Nil!12484))))

(assert (= (and d!347936 res!548134) b!1219286))

(declare-fun m!1392929 () Bool)

(assert (=> d!347936 m!1392929))

(declare-fun m!1392931 () Bool)

(assert (=> b!1219286 m!1392931))

(assert (=> b!1218950 d!347936))

(declare-fun b!1219297 () Bool)

(declare-fun e!782683 () Bool)

(declare-fun inv!16 (TokenValue!2219) Bool)

(assert (=> b!1219297 (= e!782683 (inv!16 (value!69900 (h!17882 tokens!556))))))

(declare-fun b!1219298 () Bool)

(declare-fun e!782684 () Bool)

(declare-fun inv!17 (TokenValue!2219) Bool)

(assert (=> b!1219298 (= e!782684 (inv!17 (value!69900 (h!17882 tokens!556))))))

(declare-fun d!347938 () Bool)

(declare-fun c!203817 () Bool)

(assert (=> d!347938 (= c!203817 ((_ is IntegerValue!6657) (value!69900 (h!17882 tokens!556))))))

(assert (=> d!347938 (= (inv!21 (value!69900 (h!17882 tokens!556))) e!782683)))

(declare-fun b!1219299 () Bool)

(declare-fun e!782685 () Bool)

(declare-fun inv!15 (TokenValue!2219) Bool)

(assert (=> b!1219299 (= e!782685 (inv!15 (value!69900 (h!17882 tokens!556))))))

(declare-fun b!1219300 () Bool)

(declare-fun res!548137 () Bool)

(assert (=> b!1219300 (=> res!548137 e!782685)))

(assert (=> b!1219300 (= res!548137 (not ((_ is IntegerValue!6659) (value!69900 (h!17882 tokens!556)))))))

(assert (=> b!1219300 (= e!782684 e!782685)))

(declare-fun b!1219301 () Bool)

(assert (=> b!1219301 (= e!782683 e!782684)))

(declare-fun c!203818 () Bool)

(assert (=> b!1219301 (= c!203818 ((_ is IntegerValue!6658) (value!69900 (h!17882 tokens!556))))))

(assert (= (and d!347938 c!203817) b!1219297))

(assert (= (and d!347938 (not c!203817)) b!1219301))

(assert (= (and b!1219301 c!203818) b!1219298))

(assert (= (and b!1219301 (not c!203818)) b!1219300))

(assert (= (and b!1219300 (not res!548137)) b!1219299))

(declare-fun m!1392933 () Bool)

(assert (=> b!1219297 m!1392933))

(declare-fun m!1392935 () Bool)

(assert (=> b!1219298 m!1392935))

(declare-fun m!1392937 () Bool)

(assert (=> b!1219299 m!1392937))

(assert (=> b!1218939 d!347938))

(declare-fun d!347940 () Bool)

(assert (=> d!347940 (= (get!4104 lt!416335) (v!20643 lt!416335))))

(assert (=> b!1218957 d!347940))

(declare-fun d!347942 () Bool)

(declare-fun lt!416417 () BalanceConc!8098)

(assert (=> d!347942 (= (list!4606 lt!416417) (originalCharacters!2705 (h!17882 tokens!556)))))

(assert (=> d!347942 (= lt!416417 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))))

(assert (=> d!347942 (= (charsOf!1155 (h!17882 tokens!556)) lt!416417)))

(declare-fun b_lambda!35971 () Bool)

(assert (=> (not b_lambda!35971) (not d!347942)))

(assert (=> d!347942 t!113450))

(declare-fun b_and!82977 () Bool)

(assert (= b_and!82973 (and (=> t!113450 result!81130) b_and!82977)))

(assert (=> d!347942 t!113452))

(declare-fun b_and!82979 () Bool)

(assert (= b_and!82975 (and (=> t!113452 result!81134) b_and!82979)))

(declare-fun m!1392939 () Bool)

(assert (=> d!347942 m!1392939))

(assert (=> d!347942 m!1392859))

(assert (=> b!1218946 d!347942))

(declare-fun d!347944 () Bool)

(declare-fun lt!416418 () BalanceConc!8098)

(assert (=> d!347944 (= (list!4606 lt!416418) (originalCharacters!2705 (_1!7020 lt!416329)))))

(assert (=> d!347944 (= lt!416418 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))))

(assert (=> d!347944 (= (charsOf!1155 (_1!7020 lt!416329)) lt!416418)))

(declare-fun b_lambda!35973 () Bool)

(assert (=> (not b_lambda!35973) (not d!347944)))

(declare-fun tb!66981 () Bool)

(declare-fun t!113455 () Bool)

(assert (=> (and b!1218954 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329))))) t!113455) tb!66981))

(declare-fun b!1219302 () Bool)

(declare-fun e!782686 () Bool)

(declare-fun tp!346524 () Bool)

(assert (=> b!1219302 (= e!782686 (and (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))) tp!346524))))

(declare-fun result!81136 () Bool)

(assert (=> tb!66981 (= result!81136 (and (inv!16682 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))) e!782686))))

(assert (= tb!66981 b!1219302))

(declare-fun m!1392941 () Bool)

(assert (=> b!1219302 m!1392941))

(declare-fun m!1392943 () Bool)

(assert (=> tb!66981 m!1392943))

(assert (=> d!347944 t!113455))

(declare-fun b_and!82981 () Bool)

(assert (= b_and!82977 (and (=> t!113455 result!81136) b_and!82981)))

(declare-fun t!113457 () Bool)

(declare-fun tb!66983 () Bool)

(assert (=> (and b!1218955 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329))))) t!113457) tb!66983))

(declare-fun result!81138 () Bool)

(assert (= result!81138 result!81136))

(assert (=> d!347944 t!113457))

(declare-fun b_and!82983 () Bool)

(assert (= b_and!82979 (and (=> t!113457 result!81138) b_and!82983)))

(declare-fun m!1392945 () Bool)

(assert (=> d!347944 m!1392945))

(declare-fun m!1392947 () Bool)

(assert (=> d!347944 m!1392947))

(assert (=> b!1218946 d!347944))

(declare-fun d!347946 () Bool)

(declare-fun list!4610 (Conc!4083) List!12538)

(assert (=> d!347946 (= (list!4606 lt!416327) (list!4610 (c!203751 lt!416327)))))

(declare-fun bs!288876 () Bool)

(assert (= bs!288876 d!347946))

(declare-fun m!1392949 () Bool)

(assert (=> bs!288876 m!1392949))

(assert (=> b!1218956 d!347946))

(declare-fun d!347948 () Bool)

(assert (=> d!347948 (= (list!4606 lt!416330) (list!4610 (c!203751 lt!416330)))))

(declare-fun bs!288877 () Bool)

(assert (= bs!288877 d!347948))

(declare-fun m!1392951 () Bool)

(assert (=> bs!288877 m!1392951))

(assert (=> b!1218956 d!347948))

(declare-fun d!347950 () Bool)

(declare-fun isEmpty!7434 (Option!2513) Bool)

(assert (=> d!347950 (= (isDefined!2149 lt!416335) (not (isEmpty!7434 lt!416335)))))

(declare-fun bs!288878 () Bool)

(assert (= bs!288878 d!347950))

(declare-fun m!1392953 () Bool)

(assert (=> bs!288878 m!1392953))

(assert (=> b!1218958 d!347950))

(declare-fun b!1219321 () Bool)

(declare-fun e!782695 () Bool)

(declare-fun e!782693 () Bool)

(assert (=> b!1219321 (= e!782695 e!782693)))

(declare-fun res!548152 () Bool)

(assert (=> b!1219321 (=> (not res!548152) (not e!782693))))

(declare-fun lt!416433 () Option!2513)

(assert (=> b!1219321 (= res!548152 (isDefined!2149 lt!416433))))

(declare-fun b!1219322 () Bool)

(declare-fun e!782694 () Option!2513)

(declare-fun call!84615 () Option!2513)

(assert (=> b!1219322 (= e!782694 call!84615)))

(declare-fun b!1219323 () Bool)

(declare-fun res!548154 () Bool)

(assert (=> b!1219323 (=> (not res!548154) (not e!782693))))

(assert (=> b!1219323 (= res!548154 (matchR!1536 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))) (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))))))

(declare-fun b!1219324 () Bool)

(declare-fun res!548153 () Bool)

(assert (=> b!1219324 (=> (not res!548153) (not e!782693))))

(declare-fun apply!2661 (TokenValueInjection!4134 BalanceConc!8098) TokenValue!2219)

(declare-fun seqFromList!1561 (List!12538) BalanceConc!8098)

(assert (=> b!1219324 (= res!548153 (= (value!69900 (_1!7020 (get!4104 lt!416433))) (apply!2661 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416433)))))))))

(declare-fun bm!84610 () Bool)

(declare-fun maxPrefixOneRule!557 (LexerInterface!1846 Rule!4102 List!12538) Option!2513)

(assert (=> bm!84610 (= call!84615 (maxPrefixOneRule!557 thiss!20528 (h!17883 rules!2728) input!2346))))

(declare-fun b!1219325 () Bool)

(declare-fun contains!2091 (List!12540 Rule!4102) Bool)

(assert (=> b!1219325 (= e!782693 (contains!2091 rules!2728 (rule!3576 (_1!7020 (get!4104 lt!416433)))))))

(declare-fun d!347952 () Bool)

(assert (=> d!347952 e!782695))

(declare-fun res!548158 () Bool)

(assert (=> d!347952 (=> res!548158 e!782695)))

(assert (=> d!347952 (= res!548158 (isEmpty!7434 lt!416433))))

(assert (=> d!347952 (= lt!416433 e!782694)))

(declare-fun c!203821 () Bool)

(assert (=> d!347952 (= c!203821 (and ((_ is Cons!12482) rules!2728) ((_ is Nil!12482) (t!113430 rules!2728))))))

(declare-datatypes ((Unit!18728 0))(
  ( (Unit!18729) )
))
(declare-fun lt!416430 () Unit!18728)

(declare-fun lt!416432 () Unit!18728)

(assert (=> d!347952 (= lt!416430 lt!416432)))

(declare-fun isPrefix!1038 (List!12538 List!12538) Bool)

(assert (=> d!347952 (isPrefix!1038 input!2346 input!2346)))

(declare-fun lemmaIsPrefixRefl!731 (List!12538 List!12538) Unit!18728)

(assert (=> d!347952 (= lt!416432 (lemmaIsPrefixRefl!731 input!2346 input!2346))))

(declare-fun rulesValidInductive!674 (LexerInterface!1846 List!12540) Bool)

(assert (=> d!347952 (rulesValidInductive!674 thiss!20528 rules!2728)))

(assert (=> d!347952 (= (maxPrefix!968 thiss!20528 rules!2728 input!2346) lt!416433)))

(declare-fun b!1219326 () Bool)

(declare-fun res!548156 () Bool)

(assert (=> b!1219326 (=> (not res!548156) (not e!782693))))

(assert (=> b!1219326 (= res!548156 (= (++!3186 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))) (_2!7020 (get!4104 lt!416433))) input!2346))))

(declare-fun b!1219327 () Bool)

(declare-fun res!548157 () Bool)

(assert (=> b!1219327 (=> (not res!548157) (not e!782693))))

(assert (=> b!1219327 (= res!548157 (= (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))) (originalCharacters!2705 (_1!7020 (get!4104 lt!416433)))))))

(declare-fun b!1219328 () Bool)

(declare-fun lt!416429 () Option!2513)

(declare-fun lt!416431 () Option!2513)

(assert (=> b!1219328 (= e!782694 (ite (and ((_ is None!2512) lt!416429) ((_ is None!2512) lt!416431)) None!2512 (ite ((_ is None!2512) lt!416431) lt!416429 (ite ((_ is None!2512) lt!416429) lt!416431 (ite (>= (size!9854 (_1!7020 (v!20643 lt!416429))) (size!9854 (_1!7020 (v!20643 lt!416431)))) lt!416429 lt!416431)))))))

(assert (=> b!1219328 (= lt!416429 call!84615)))

(assert (=> b!1219328 (= lt!416431 (maxPrefix!968 thiss!20528 (t!113430 rules!2728) input!2346))))

(declare-fun b!1219329 () Bool)

(declare-fun res!548155 () Bool)

(assert (=> b!1219329 (=> (not res!548155) (not e!782693))))

(assert (=> b!1219329 (= res!548155 (< (size!9859 (_2!7020 (get!4104 lt!416433))) (size!9859 input!2346)))))

(assert (= (and d!347952 c!203821) b!1219322))

(assert (= (and d!347952 (not c!203821)) b!1219328))

(assert (= (or b!1219322 b!1219328) bm!84610))

(assert (= (and d!347952 (not res!548158)) b!1219321))

(assert (= (and b!1219321 res!548152) b!1219327))

(assert (= (and b!1219327 res!548157) b!1219329))

(assert (= (and b!1219329 res!548155) b!1219326))

(assert (= (and b!1219326 res!548156) b!1219324))

(assert (= (and b!1219324 res!548153) b!1219323))

(assert (= (and b!1219323 res!548154) b!1219325))

(declare-fun m!1392955 () Bool)

(assert (=> b!1219321 m!1392955))

(declare-fun m!1392957 () Bool)

(assert (=> b!1219325 m!1392957))

(declare-fun m!1392959 () Bool)

(assert (=> b!1219325 m!1392959))

(declare-fun m!1392961 () Bool)

(assert (=> b!1219328 m!1392961))

(assert (=> b!1219329 m!1392957))

(declare-fun m!1392963 () Bool)

(assert (=> b!1219329 m!1392963))

(assert (=> b!1219329 m!1392877))

(assert (=> b!1219326 m!1392957))

(declare-fun m!1392965 () Bool)

(assert (=> b!1219326 m!1392965))

(assert (=> b!1219326 m!1392965))

(declare-fun m!1392967 () Bool)

(assert (=> b!1219326 m!1392967))

(assert (=> b!1219326 m!1392967))

(declare-fun m!1392969 () Bool)

(assert (=> b!1219326 m!1392969))

(assert (=> b!1219327 m!1392957))

(assert (=> b!1219327 m!1392965))

(assert (=> b!1219327 m!1392965))

(assert (=> b!1219327 m!1392967))

(declare-fun m!1392971 () Bool)

(assert (=> bm!84610 m!1392971))

(assert (=> b!1219324 m!1392957))

(declare-fun m!1392973 () Bool)

(assert (=> b!1219324 m!1392973))

(assert (=> b!1219324 m!1392973))

(declare-fun m!1392975 () Bool)

(assert (=> b!1219324 m!1392975))

(declare-fun m!1392977 () Bool)

(assert (=> d!347952 m!1392977))

(declare-fun m!1392979 () Bool)

(assert (=> d!347952 m!1392979))

(declare-fun m!1392981 () Bool)

(assert (=> d!347952 m!1392981))

(declare-fun m!1392983 () Bool)

(assert (=> d!347952 m!1392983))

(assert (=> b!1219323 m!1392957))

(assert (=> b!1219323 m!1392965))

(assert (=> b!1219323 m!1392965))

(assert (=> b!1219323 m!1392967))

(assert (=> b!1219323 m!1392967))

(declare-fun m!1392985 () Bool)

(assert (=> b!1219323 m!1392985))

(assert (=> b!1218958 d!347952))

(declare-fun d!347954 () Bool)

(assert (=> d!347954 (= (inv!16674 (tag!2413 (rule!3576 (h!17882 tokens!556)))) (= (mod (str.len (value!69899 (tag!2413 (rule!3576 (h!17882 tokens!556))))) 2) 0))))

(assert (=> b!1218947 d!347954))

(declare-fun d!347956 () Bool)

(declare-fun res!548159 () Bool)

(declare-fun e!782696 () Bool)

(assert (=> d!347956 (=> (not res!548159) (not e!782696))))

(assert (=> d!347956 (= res!548159 (semiInverseModEq!788 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556))))))))

(assert (=> d!347956 (= (inv!16678 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) e!782696)))

(declare-fun b!1219330 () Bool)

(assert (=> b!1219330 (= e!782696 (equivClasses!755 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556))))))))

(assert (= (and d!347956 res!548159) b!1219330))

(declare-fun m!1392987 () Bool)

(assert (=> d!347956 m!1392987))

(declare-fun m!1392989 () Bool)

(assert (=> b!1219330 m!1392989))

(assert (=> b!1218947 d!347956))

(declare-fun b!1219341 () Bool)

(declare-fun b_free!29465 () Bool)

(declare-fun b_next!30169 () Bool)

(assert (=> b!1219341 (= b_free!29465 (not b_next!30169))))

(declare-fun tp!346535 () Bool)

(declare-fun b_and!82985 () Bool)

(assert (=> b!1219341 (= tp!346535 b_and!82985)))

(declare-fun b_free!29467 () Bool)

(declare-fun b_next!30171 () Bool)

(assert (=> b!1219341 (= b_free!29467 (not b_next!30171))))

(declare-fun t!113459 () Bool)

(declare-fun tb!66985 () Bool)

(assert (=> (and b!1219341 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) t!113459) tb!66985))

(declare-fun result!81142 () Bool)

(assert (= result!81142 result!81130))

(assert (=> b!1219225 t!113459))

(assert (=> d!347942 t!113459))

(declare-fun t!113461 () Bool)

(declare-fun tb!66987 () Bool)

(assert (=> (and b!1219341 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329))))) t!113461) tb!66987))

(declare-fun result!81144 () Bool)

(assert (= result!81144 result!81136))

(assert (=> d!347944 t!113461))

(declare-fun b_and!82987 () Bool)

(declare-fun tp!346536 () Bool)

(assert (=> b!1219341 (= tp!346536 (and (=> t!113459 result!81142) (=> t!113461 result!81144) b_and!82987))))

(declare-fun e!782705 () Bool)

(assert (=> b!1219341 (= e!782705 (and tp!346535 tp!346536))))

(declare-fun e!782708 () Bool)

(declare-fun tp!346533 () Bool)

(declare-fun b!1219340 () Bool)

(assert (=> b!1219340 (= e!782708 (and tp!346533 (inv!16674 (tag!2413 (h!17883 (t!113430 rules!2728)))) (inv!16678 (transformation!2151 (h!17883 (t!113430 rules!2728)))) e!782705))))

(declare-fun b!1219339 () Bool)

(declare-fun e!782706 () Bool)

(declare-fun tp!346534 () Bool)

(assert (=> b!1219339 (= e!782706 (and e!782708 tp!346534))))

(assert (=> b!1218949 (= tp!346464 e!782706)))

(assert (= b!1219340 b!1219341))

(assert (= b!1219339 b!1219340))

(assert (= (and b!1218949 ((_ is Cons!12482) (t!113430 rules!2728))) b!1219339))

(declare-fun m!1392991 () Bool)

(assert (=> b!1219340 m!1392991))

(declare-fun m!1392993 () Bool)

(assert (=> b!1219340 m!1392993))

(declare-fun b!1219346 () Bool)

(declare-fun e!782711 () Bool)

(declare-fun tp!346539 () Bool)

(assert (=> b!1219346 (= e!782711 (and tp_is_empty!6363 tp!346539))))

(assert (=> b!1218959 (= tp!346458 e!782711)))

(assert (= (and b!1218959 ((_ is Cons!12480) (t!113428 input!2346))) b!1219346))

(declare-fun b!1219347 () Bool)

(declare-fun e!782712 () Bool)

(declare-fun tp!346540 () Bool)

(assert (=> b!1219347 (= e!782712 (and tp_is_empty!6363 tp!346540))))

(assert (=> b!1218939 (= tp!346463 e!782712)))

(assert (= (and b!1218939 ((_ is Cons!12480) (originalCharacters!2705 (h!17882 tokens!556)))) b!1219347))

(declare-fun b!1219361 () Bool)

(declare-fun b_free!29469 () Bool)

(declare-fun b_next!30173 () Bool)

(assert (=> b!1219361 (= b_free!29469 (not b_next!30173))))

(declare-fun tp!346552 () Bool)

(declare-fun b_and!82989 () Bool)

(assert (=> b!1219361 (= tp!346552 b_and!82989)))

(declare-fun b_free!29471 () Bool)

(declare-fun b_next!30175 () Bool)

(assert (=> b!1219361 (= b_free!29471 (not b_next!30175))))

(declare-fun t!113463 () Bool)

(declare-fun tb!66989 () Bool)

(assert (=> (and b!1219361 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) t!113463) tb!66989))

(declare-fun result!81150 () Bool)

(assert (= result!81150 result!81130))

(assert (=> b!1219225 t!113463))

(assert (=> d!347942 t!113463))

(declare-fun t!113465 () Bool)

(declare-fun tb!66991 () Bool)

(assert (=> (and b!1219361 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329))))) t!113465) tb!66991))

(declare-fun result!81152 () Bool)

(assert (= result!81152 result!81136))

(assert (=> d!347944 t!113465))

(declare-fun b_and!82991 () Bool)

(declare-fun tp!346553 () Bool)

(assert (=> b!1219361 (= tp!346553 (and (=> t!113463 result!81150) (=> t!113465 result!81152) b_and!82991))))

(declare-fun e!782725 () Bool)

(assert (=> b!1219361 (= e!782725 (and tp!346552 tp!346553))))

(declare-fun e!782727 () Bool)

(declare-fun e!782729 () Bool)

(declare-fun tp!346551 () Bool)

(declare-fun b!1219358 () Bool)

(assert (=> b!1219358 (= e!782727 (and (inv!16677 (h!17882 (t!113429 tokens!556))) e!782729 tp!346551))))

(declare-fun b!1219359 () Bool)

(declare-fun e!782730 () Bool)

(declare-fun tp!346555 () Bool)

(assert (=> b!1219359 (= e!782729 (and (inv!21 (value!69900 (h!17882 (t!113429 tokens!556)))) e!782730 tp!346555))))

(assert (=> b!1218941 (= tp!346460 e!782727)))

(declare-fun b!1219360 () Bool)

(declare-fun tp!346554 () Bool)

(assert (=> b!1219360 (= e!782730 (and tp!346554 (inv!16674 (tag!2413 (rule!3576 (h!17882 (t!113429 tokens!556))))) (inv!16678 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) e!782725))))

(assert (= b!1219360 b!1219361))

(assert (= b!1219359 b!1219360))

(assert (= b!1219358 b!1219359))

(assert (= (and b!1218941 ((_ is Cons!12481) (t!113429 tokens!556))) b!1219358))

(declare-fun m!1392995 () Bool)

(assert (=> b!1219358 m!1392995))

(declare-fun m!1392997 () Bool)

(assert (=> b!1219359 m!1392997))

(declare-fun m!1392999 () Bool)

(assert (=> b!1219360 m!1392999))

(declare-fun m!1393001 () Bool)

(assert (=> b!1219360 m!1393001))

(declare-fun b!1219374 () Bool)

(declare-fun e!782733 () Bool)

(declare-fun tp!346567 () Bool)

(assert (=> b!1219374 (= e!782733 tp!346567)))

(declare-fun b!1219375 () Bool)

(declare-fun tp!346570 () Bool)

(declare-fun tp!346566 () Bool)

(assert (=> b!1219375 (= e!782733 (and tp!346570 tp!346566))))

(declare-fun b!1219373 () Bool)

(declare-fun tp!346569 () Bool)

(declare-fun tp!346568 () Bool)

(assert (=> b!1219373 (= e!782733 (and tp!346569 tp!346568))))

(assert (=> b!1218951 (= tp!346465 e!782733)))

(declare-fun b!1219372 () Bool)

(assert (=> b!1219372 (= e!782733 tp_is_empty!6363)))

(assert (= (and b!1218951 ((_ is ElementMatch!3421) (regex!2151 (h!17883 rules!2728)))) b!1219372))

(assert (= (and b!1218951 ((_ is Concat!5641) (regex!2151 (h!17883 rules!2728)))) b!1219373))

(assert (= (and b!1218951 ((_ is Star!3421) (regex!2151 (h!17883 rules!2728)))) b!1219374))

(assert (= (and b!1218951 ((_ is Union!3421) (regex!2151 (h!17883 rules!2728)))) b!1219375))

(declare-fun b!1219378 () Bool)

(declare-fun e!782734 () Bool)

(declare-fun tp!346572 () Bool)

(assert (=> b!1219378 (= e!782734 tp!346572)))

(declare-fun b!1219379 () Bool)

(declare-fun tp!346575 () Bool)

(declare-fun tp!346571 () Bool)

(assert (=> b!1219379 (= e!782734 (and tp!346575 tp!346571))))

(declare-fun b!1219377 () Bool)

(declare-fun tp!346574 () Bool)

(declare-fun tp!346573 () Bool)

(assert (=> b!1219377 (= e!782734 (and tp!346574 tp!346573))))

(assert (=> b!1218947 (= tp!346462 e!782734)))

(declare-fun b!1219376 () Bool)

(assert (=> b!1219376 (= e!782734 tp_is_empty!6363)))

(assert (= (and b!1218947 ((_ is ElementMatch!3421) (regex!2151 (rule!3576 (h!17882 tokens!556))))) b!1219376))

(assert (= (and b!1218947 ((_ is Concat!5641) (regex!2151 (rule!3576 (h!17882 tokens!556))))) b!1219377))

(assert (= (and b!1218947 ((_ is Star!3421) (regex!2151 (rule!3576 (h!17882 tokens!556))))) b!1219378))

(assert (= (and b!1218947 ((_ is Union!3421) (regex!2151 (rule!3576 (h!17882 tokens!556))))) b!1219379))

(declare-fun b_lambda!35975 () Bool)

(assert (= b_lambda!35971 (or (and b!1218954 b_free!29451 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))))) (and b!1218955 b_free!29455) (and b!1219341 b_free!29467 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))))) (and b!1219361 b_free!29471 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))))) b_lambda!35975)))

(declare-fun b_lambda!35977 () Bool)

(assert (= b_lambda!35969 (or (and b!1218954 b_free!29451 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))))) (and b!1218955 b_free!29455) (and b!1219341 b_free!29467 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))))) (and b!1219361 b_free!29471 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))))) b_lambda!35977)))

(check-sat (not d!347952) b_and!82945 (not d!347934) (not b!1219177) (not d!347956) (not b!1219211) (not b!1219217) (not d!347920) (not b!1219360) (not b_next!30159) (not b!1219178) (not b!1219286) (not d!347944) (not b!1219226) (not b!1219324) (not b_next!30169) (not d!347948) (not b!1219374) (not d!347926) (not b_next!30157) (not b!1219378) (not b_lambda!35973) (not tb!66981) (not b!1219281) b_and!82991 b_and!82981 (not d!347936) (not b!1219373) (not b!1219231) (not b!1219214) (not d!347932) (not b!1219328) (not b!1219245) (not b!1219208) (not b!1219359) (not b!1219321) (not b!1219248) (not b!1219340) (not b!1219268) (not b!1219297) (not d!347922) (not b!1219264) (not b_next!30171) (not b!1219377) b_and!82985 (not b!1219326) (not b!1219325) (not b_next!30153) (not b!1219379) (not b!1219298) b_and!82949 (not b!1219375) (not b!1219253) (not b!1219251) b_and!82989 (not b!1219330) (not b_lambda!35977) (not b!1219234) (not b_next!30173) (not d!347924) tp_is_empty!6363 b_and!82987 (not bm!84607) (not b!1219267) (not b_next!30155) (not b!1219225) (not b!1219302) (not bm!84610) (not b!1219176) (not d!347942) (not b!1219329) (not b!1219347) b_and!82983 (not d!347950) (not b!1219346) (not b!1219210) (not b!1219270) (not b!1219339) (not d!347870) (not b!1219358) (not b!1219265) (not b!1219250) (not b_lambda!35975) (not b!1219299) (not b!1219246) (not d!347914) (not b!1219323) (not b_next!30175) (not b!1219212) (not tb!66977) (not d!347916) (not d!347946) (not b!1219282) (not b!1219327))
(check-sat (not b_next!30159) (not b_next!30169) (not b_next!30157) b_and!82945 b_and!82949 b_and!82989 (not b_next!30173) b_and!82983 (not b_next!30175) b_and!82991 b_and!82981 (not b_next!30171) b_and!82985 (not b_next!30153) b_and!82987 (not b_next!30155))
(get-model)

(declare-fun d!348010 () Bool)

(assert (=> d!348010 (= (isEmpty!7428 lt!416332) ((_ is Nil!12480) lt!416332))))

(assert (=> bm!84607 d!348010))

(declare-fun lt!416468 () Bool)

(declare-fun d!348012 () Bool)

(assert (=> d!348012 (= lt!416468 (isEmpty!7428 (list!4606 (_2!7022 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))))))))))

(declare-fun isEmpty!7436 (Conc!4083) Bool)

(assert (=> d!348012 (= lt!416468 (isEmpty!7436 (c!203751 (_2!7022 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))))))))))

(assert (=> d!348012 (= (isEmpty!7433 (_2!7022 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)))))) lt!416468)))

(declare-fun bs!288883 () Bool)

(assert (= bs!288883 d!348012))

(declare-fun m!1393093 () Bool)

(assert (=> bs!288883 m!1393093))

(assert (=> bs!288883 m!1393093))

(declare-fun m!1393095 () Bool)

(assert (=> bs!288883 m!1393095))

(declare-fun m!1393097 () Bool)

(assert (=> bs!288883 m!1393097))

(assert (=> b!1219178 d!348012))

(declare-fun b!1219473 () Bool)

(declare-fun e!782791 () Bool)

(declare-fun e!782793 () Bool)

(assert (=> b!1219473 (= e!782791 e!782793)))

(declare-fun lt!416471 () tuple2!12350)

(declare-fun res!548209 () Bool)

(declare-fun size!9862 (BalanceConc!8098) Int)

(assert (=> b!1219473 (= res!548209 (< (size!9862 (_2!7022 lt!416471)) (size!9862 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))))))))

(assert (=> b!1219473 (=> (not res!548209) (not e!782793))))

(declare-fun b!1219474 () Bool)

(declare-fun isEmpty!7437 (BalanceConc!8102) Bool)

(assert (=> b!1219474 (= e!782793 (not (isEmpty!7437 (_1!7022 lt!416471))))))

(declare-fun b!1219475 () Bool)

(assert (=> b!1219475 (= e!782791 (= (_2!7022 lt!416471) (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)))))))

(declare-fun b!1219476 () Bool)

(declare-fun res!548208 () Bool)

(declare-fun e!782792 () Bool)

(assert (=> b!1219476 (=> (not res!548208) (not e!782792))))

(assert (=> b!1219476 (= res!548208 (= (list!4609 (_1!7022 lt!416471)) (_1!7019 (lexList!476 thiss!20528 rules!2728 (list!4606 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))))))))))

(declare-fun b!1219477 () Bool)

(assert (=> b!1219477 (= e!782792 (= (list!4606 (_2!7022 lt!416471)) (_2!7019 (lexList!476 thiss!20528 rules!2728 (list!4606 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))))))))))

(declare-fun d!348014 () Bool)

(assert (=> d!348014 e!782792))

(declare-fun res!548207 () Bool)

(assert (=> d!348014 (=> (not res!548207) (not e!782792))))

(assert (=> d!348014 (= res!548207 e!782791)))

(declare-fun c!203850 () Bool)

(assert (=> d!348014 (= c!203850 (> (size!9858 (_1!7022 lt!416471)) 0))))

(declare-fun lexTailRecV2!330 (LexerInterface!1846 List!12540 BalanceConc!8098 BalanceConc!8098 BalanceConc!8098 BalanceConc!8102) tuple2!12350)

(assert (=> d!348014 (= lt!416471 (lexTailRecV2!330 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))) (BalanceConc!8099 Empty!4083) (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))) (BalanceConc!8103 Empty!4085)))))

(assert (=> d!348014 (= (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)))) lt!416471)))

(assert (= (and d!348014 c!203850) b!1219473))

(assert (= (and d!348014 (not c!203850)) b!1219475))

(assert (= (and b!1219473 res!548209) b!1219474))

(assert (= (and d!348014 res!548207) b!1219476))

(assert (= (and b!1219476 res!548208) b!1219477))

(declare-fun m!1393099 () Bool)

(assert (=> b!1219476 m!1393099))

(assert (=> b!1219476 m!1392819))

(declare-fun m!1393101 () Bool)

(assert (=> b!1219476 m!1393101))

(assert (=> b!1219476 m!1393101))

(declare-fun m!1393103 () Bool)

(assert (=> b!1219476 m!1393103))

(declare-fun m!1393105 () Bool)

(assert (=> b!1219473 m!1393105))

(assert (=> b!1219473 m!1392819))

(declare-fun m!1393107 () Bool)

(assert (=> b!1219473 m!1393107))

(declare-fun m!1393109 () Bool)

(assert (=> d!348014 m!1393109))

(assert (=> d!348014 m!1392819))

(assert (=> d!348014 m!1392819))

(declare-fun m!1393111 () Bool)

(assert (=> d!348014 m!1393111))

(declare-fun m!1393113 () Bool)

(assert (=> b!1219474 m!1393113))

(declare-fun m!1393115 () Bool)

(assert (=> b!1219477 m!1393115))

(assert (=> b!1219477 m!1392819))

(assert (=> b!1219477 m!1393101))

(assert (=> b!1219477 m!1393101))

(assert (=> b!1219477 m!1393103))

(assert (=> b!1219178 d!348014))

(declare-fun d!348016 () Bool)

(declare-fun lt!416474 () BalanceConc!8098)

(declare-fun printList!523 (LexerInterface!1846 List!12539) List!12538)

(assert (=> d!348016 (= (list!4606 lt!416474) (printList!523 thiss!20528 (list!4609 (singletonSeq!737 (h!17882 tokens!556)))))))

(declare-fun printTailRec!505 (LexerInterface!1846 BalanceConc!8102 Int BalanceConc!8098) BalanceConc!8098)

(assert (=> d!348016 (= lt!416474 (printTailRec!505 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)) 0 (BalanceConc!8099 Empty!4083)))))

(assert (=> d!348016 (= (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))) lt!416474)))

(declare-fun bs!288884 () Bool)

(assert (= bs!288884 d!348016))

(declare-fun m!1393117 () Bool)

(assert (=> bs!288884 m!1393117))

(assert (=> bs!288884 m!1392825))

(assert (=> bs!288884 m!1392827))

(assert (=> bs!288884 m!1392827))

(declare-fun m!1393119 () Bool)

(assert (=> bs!288884 m!1393119))

(assert (=> bs!288884 m!1392825))

(declare-fun m!1393121 () Bool)

(assert (=> bs!288884 m!1393121))

(assert (=> b!1219178 d!348016))

(declare-fun d!348018 () Bool)

(declare-fun e!782796 () Bool)

(assert (=> d!348018 e!782796))

(declare-fun res!548212 () Bool)

(assert (=> d!348018 (=> (not res!548212) (not e!782796))))

(declare-fun lt!416477 () BalanceConc!8102)

(assert (=> d!348018 (= res!548212 (= (list!4609 lt!416477) (Cons!12481 (h!17882 tokens!556) Nil!12481)))))

(declare-fun singleton!313 (Token!3964) BalanceConc!8102)

(assert (=> d!348018 (= lt!416477 (singleton!313 (h!17882 tokens!556)))))

(assert (=> d!348018 (= (singletonSeq!737 (h!17882 tokens!556)) lt!416477)))

(declare-fun b!1219480 () Bool)

(declare-fun isBalanced!1186 (Conc!4085) Bool)

(assert (=> b!1219480 (= e!782796 (isBalanced!1186 (c!203822 lt!416477)))))

(assert (= (and d!348018 res!548212) b!1219480))

(declare-fun m!1393123 () Bool)

(assert (=> d!348018 m!1393123))

(declare-fun m!1393125 () Bool)

(assert (=> d!348018 m!1393125))

(declare-fun m!1393127 () Bool)

(assert (=> b!1219480 m!1393127))

(assert (=> b!1219178 d!348018))

(declare-fun d!348020 () Bool)

(assert (=> d!348020 (= (list!4606 lt!416417) (list!4610 (c!203751 lt!416417)))))

(declare-fun bs!288885 () Bool)

(assert (= bs!288885 d!348020))

(declare-fun m!1393129 () Bool)

(assert (=> bs!288885 m!1393129))

(assert (=> d!347942 d!348020))

(declare-fun d!348022 () Bool)

(assert (=> d!348022 (= (list!4606 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))) (list!4610 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))))))

(declare-fun bs!288886 () Bool)

(assert (= bs!288886 d!348022))

(declare-fun m!1393131 () Bool)

(assert (=> bs!288886 m!1393131))

(assert (=> b!1219225 d!348022))

(declare-fun d!348024 () Bool)

(declare-fun isBalanced!1187 (Conc!4083) Bool)

(assert (=> d!348024 (= (inv!16682 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))) (isBalanced!1187 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))))))

(declare-fun bs!288887 () Bool)

(assert (= bs!288887 d!348024))

(declare-fun m!1393133 () Bool)

(assert (=> bs!288887 m!1393133))

(assert (=> tb!66981 d!348024))

(declare-fun b!1219481 () Bool)

(declare-fun res!548219 () Bool)

(declare-fun e!782800 () Bool)

(assert (=> b!1219481 (=> res!548219 e!782800)))

(declare-fun e!782799 () Bool)

(assert (=> b!1219481 (= res!548219 e!782799)))

(declare-fun res!548216 () Bool)

(assert (=> b!1219481 (=> (not res!548216) (not e!782799))))

(declare-fun lt!416478 () Bool)

(assert (=> b!1219481 (= res!548216 lt!416478)))

(declare-fun b!1219482 () Bool)

(declare-fun e!782802 () Bool)

(assert (=> b!1219482 (= e!782802 (matchR!1536 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))) (head!2157 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))))) (tail!1789 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))))))))

(declare-fun b!1219483 () Bool)

(declare-fun e!782803 () Bool)

(declare-fun e!782797 () Bool)

(assert (=> b!1219483 (= e!782803 e!782797)))

(declare-fun res!548214 () Bool)

(assert (=> b!1219483 (=> res!548214 e!782797)))

(declare-fun call!84617 () Bool)

(assert (=> b!1219483 (= res!548214 call!84617)))

(declare-fun b!1219485 () Bool)

(assert (=> b!1219485 (= e!782797 (not (= (head!2157 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))) (c!203752 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))))))))

(declare-fun b!1219486 () Bool)

(declare-fun res!548220 () Bool)

(assert (=> b!1219486 (=> res!548220 e!782797)))

(assert (=> b!1219486 (= res!548220 (not (isEmpty!7428 (tail!1789 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))))))))

(declare-fun b!1219487 () Bool)

(declare-fun e!782798 () Bool)

(assert (=> b!1219487 (= e!782798 (not lt!416478))))

(declare-fun bm!84612 () Bool)

(assert (=> bm!84612 (= call!84617 (isEmpty!7428 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))))))

(declare-fun b!1219488 () Bool)

(assert (=> b!1219488 (= e!782802 (nullable!1060 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))))))

(declare-fun b!1219489 () Bool)

(declare-fun res!548218 () Bool)

(assert (=> b!1219489 (=> res!548218 e!782800)))

(assert (=> b!1219489 (= res!548218 (not ((_ is ElementMatch!3421) (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))))))

(assert (=> b!1219489 (= e!782798 e!782800)))

(declare-fun b!1219490 () Bool)

(declare-fun e!782801 () Bool)

(assert (=> b!1219490 (= e!782801 e!782798)))

(declare-fun c!203852 () Bool)

(assert (=> b!1219490 (= c!203852 ((_ is EmptyLang!3421) (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))))))

(declare-fun b!1219491 () Bool)

(declare-fun res!548213 () Bool)

(assert (=> b!1219491 (=> (not res!548213) (not e!782799))))

(assert (=> b!1219491 (= res!548213 (isEmpty!7428 (tail!1789 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))))))))

(declare-fun b!1219492 () Bool)

(assert (=> b!1219492 (= e!782801 (= lt!416478 call!84617))))

(declare-fun b!1219493 () Bool)

(declare-fun res!548217 () Bool)

(assert (=> b!1219493 (=> (not res!548217) (not e!782799))))

(assert (=> b!1219493 (= res!548217 (not call!84617))))

(declare-fun b!1219494 () Bool)

(assert (=> b!1219494 (= e!782800 e!782803)))

(declare-fun res!548215 () Bool)

(assert (=> b!1219494 (=> (not res!548215) (not e!782803))))

(assert (=> b!1219494 (= res!548215 (not lt!416478))))

(declare-fun b!1219484 () Bool)

(assert (=> b!1219484 (= e!782799 (= (head!2157 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))) (c!203752 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))))))

(declare-fun d!348026 () Bool)

(assert (=> d!348026 e!782801))

(declare-fun c!203853 () Bool)

(assert (=> d!348026 (= c!203853 ((_ is EmptyExpr!3421) (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))))))

(assert (=> d!348026 (= lt!416478 e!782802)))

(declare-fun c!203851 () Bool)

(assert (=> d!348026 (= c!203851 (isEmpty!7428 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))))))

(assert (=> d!348026 (validRegex!1457 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))))

(assert (=> d!348026 (= (matchR!1536 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))) (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))) lt!416478)))

(assert (= (and d!348026 c!203851) b!1219488))

(assert (= (and d!348026 (not c!203851)) b!1219482))

(assert (= (and d!348026 c!203853) b!1219492))

(assert (= (and d!348026 (not c!203853)) b!1219490))

(assert (= (and b!1219490 c!203852) b!1219487))

(assert (= (and b!1219490 (not c!203852)) b!1219489))

(assert (= (and b!1219489 (not res!548218)) b!1219481))

(assert (= (and b!1219481 res!548216) b!1219493))

(assert (= (and b!1219493 res!548217) b!1219491))

(assert (= (and b!1219491 res!548213) b!1219484))

(assert (= (and b!1219481 (not res!548219)) b!1219494))

(assert (= (and b!1219494 res!548215) b!1219483))

(assert (= (and b!1219483 (not res!548214)) b!1219486))

(assert (= (and b!1219486 (not res!548220)) b!1219485))

(assert (= (or b!1219492 b!1219483 b!1219493) bm!84612))

(assert (=> b!1219491 m!1392967))

(declare-fun m!1393135 () Bool)

(assert (=> b!1219491 m!1393135))

(assert (=> b!1219491 m!1393135))

(declare-fun m!1393137 () Bool)

(assert (=> b!1219491 m!1393137))

(assert (=> b!1219486 m!1392967))

(assert (=> b!1219486 m!1393135))

(assert (=> b!1219486 m!1393135))

(assert (=> b!1219486 m!1393137))

(assert (=> bm!84612 m!1392967))

(declare-fun m!1393139 () Bool)

(assert (=> bm!84612 m!1393139))

(assert (=> d!348026 m!1392967))

(assert (=> d!348026 m!1393139))

(declare-fun m!1393141 () Bool)

(assert (=> d!348026 m!1393141))

(assert (=> b!1219482 m!1392967))

(declare-fun m!1393143 () Bool)

(assert (=> b!1219482 m!1393143))

(assert (=> b!1219482 m!1393143))

(declare-fun m!1393145 () Bool)

(assert (=> b!1219482 m!1393145))

(assert (=> b!1219482 m!1392967))

(assert (=> b!1219482 m!1393135))

(assert (=> b!1219482 m!1393145))

(assert (=> b!1219482 m!1393135))

(declare-fun m!1393147 () Bool)

(assert (=> b!1219482 m!1393147))

(assert (=> b!1219484 m!1392967))

(assert (=> b!1219484 m!1393143))

(declare-fun m!1393149 () Bool)

(assert (=> b!1219488 m!1393149))

(assert (=> b!1219485 m!1392967))

(assert (=> b!1219485 m!1393143))

(assert (=> b!1219323 d!348026))

(declare-fun d!348028 () Bool)

(assert (=> d!348028 (= (get!4104 lt!416433) (v!20643 lt!416433))))

(assert (=> b!1219323 d!348028))

(declare-fun d!348030 () Bool)

(assert (=> d!348030 (= (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))) (list!4610 (c!203751 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))))))

(declare-fun bs!288888 () Bool)

(assert (= bs!288888 d!348030))

(declare-fun m!1393151 () Bool)

(assert (=> bs!288888 m!1393151))

(assert (=> b!1219323 d!348030))

(declare-fun d!348032 () Bool)

(declare-fun lt!416479 () BalanceConc!8098)

(assert (=> d!348032 (= (list!4606 lt!416479) (originalCharacters!2705 (_1!7020 (get!4104 lt!416433))))))

(assert (=> d!348032 (= lt!416479 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))) (value!69900 (_1!7020 (get!4104 lt!416433)))))))

(assert (=> d!348032 (= (charsOf!1155 (_1!7020 (get!4104 lt!416433))) lt!416479)))

(declare-fun b_lambda!35979 () Bool)

(assert (=> (not b_lambda!35979) (not d!348032)))

(declare-fun tb!66993 () Bool)

(declare-fun t!113470 () Bool)

(assert (=> (and b!1218954 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113470) tb!66993))

(declare-fun b!1219495 () Bool)

(declare-fun e!782804 () Bool)

(declare-fun tp!346576 () Bool)

(assert (=> b!1219495 (= e!782804 (and (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))) (value!69900 (_1!7020 (get!4104 lt!416433)))))) tp!346576))))

(declare-fun result!81156 () Bool)

(assert (=> tb!66993 (= result!81156 (and (inv!16682 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))) (value!69900 (_1!7020 (get!4104 lt!416433))))) e!782804))))

(assert (= tb!66993 b!1219495))

(declare-fun m!1393153 () Bool)

(assert (=> b!1219495 m!1393153))

(declare-fun m!1393155 () Bool)

(assert (=> tb!66993 m!1393155))

(assert (=> d!348032 t!113470))

(declare-fun b_and!82993 () Bool)

(assert (= b_and!82981 (and (=> t!113470 result!81156) b_and!82993)))

(declare-fun tb!66995 () Bool)

(declare-fun t!113472 () Bool)

(assert (=> (and b!1218955 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113472) tb!66995))

(declare-fun result!81158 () Bool)

(assert (= result!81158 result!81156))

(assert (=> d!348032 t!113472))

(declare-fun b_and!82995 () Bool)

(assert (= b_and!82983 (and (=> t!113472 result!81158) b_and!82995)))

(declare-fun tb!66997 () Bool)

(declare-fun t!113474 () Bool)

(assert (=> (and b!1219341 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113474) tb!66997))

(declare-fun result!81160 () Bool)

(assert (= result!81160 result!81156))

(assert (=> d!348032 t!113474))

(declare-fun b_and!82997 () Bool)

(assert (= b_and!82987 (and (=> t!113474 result!81160) b_and!82997)))

(declare-fun t!113476 () Bool)

(declare-fun tb!66999 () Bool)

(assert (=> (and b!1219361 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113476) tb!66999))

(declare-fun result!81162 () Bool)

(assert (= result!81162 result!81156))

(assert (=> d!348032 t!113476))

(declare-fun b_and!82999 () Bool)

(assert (= b_and!82991 (and (=> t!113476 result!81162) b_and!82999)))

(declare-fun m!1393157 () Bool)

(assert (=> d!348032 m!1393157))

(declare-fun m!1393159 () Bool)

(assert (=> d!348032 m!1393159))

(assert (=> b!1219323 d!348032))

(declare-fun d!348034 () Bool)

(declare-fun lt!416482 () Int)

(assert (=> d!348034 (>= lt!416482 0)))

(declare-fun e!782807 () Int)

(assert (=> d!348034 (= lt!416482 e!782807)))

(declare-fun c!203856 () Bool)

(assert (=> d!348034 (= c!203856 ((_ is Nil!12480) lt!416414))))

(assert (=> d!348034 (= (size!9859 lt!416414) lt!416482)))

(declare-fun b!1219500 () Bool)

(assert (=> b!1219500 (= e!782807 0)))

(declare-fun b!1219501 () Bool)

(assert (=> b!1219501 (= e!782807 (+ 1 (size!9859 (t!113428 lt!416414))))))

(assert (= (and d!348034 c!203856) b!1219500))

(assert (= (and d!348034 (not c!203856)) b!1219501))

(declare-fun m!1393161 () Bool)

(assert (=> b!1219501 m!1393161))

(assert (=> b!1219282 d!348034))

(declare-fun d!348036 () Bool)

(declare-fun lt!416483 () Int)

(assert (=> d!348036 (>= lt!416483 0)))

(declare-fun e!782808 () Int)

(assert (=> d!348036 (= lt!416483 e!782808)))

(declare-fun c!203857 () Bool)

(assert (=> d!348036 (= c!203857 ((_ is Nil!12480) lt!416326))))

(assert (=> d!348036 (= (size!9859 lt!416326) lt!416483)))

(declare-fun b!1219502 () Bool)

(assert (=> b!1219502 (= e!782808 0)))

(declare-fun b!1219503 () Bool)

(assert (=> b!1219503 (= e!782808 (+ 1 (size!9859 (t!113428 lt!416326))))))

(assert (= (and d!348036 c!203857) b!1219502))

(assert (= (and d!348036 (not c!203857)) b!1219503))

(declare-fun m!1393163 () Bool)

(assert (=> b!1219503 m!1393163))

(assert (=> b!1219282 d!348036))

(declare-fun d!348038 () Bool)

(declare-fun lt!416484 () Int)

(assert (=> d!348038 (>= lt!416484 0)))

(declare-fun e!782809 () Int)

(assert (=> d!348038 (= lt!416484 e!782809)))

(declare-fun c!203858 () Bool)

(assert (=> d!348038 (= c!203858 ((_ is Nil!12480) (_2!7020 lt!416329)))))

(assert (=> d!348038 (= (size!9859 (_2!7020 lt!416329)) lt!416484)))

(declare-fun b!1219504 () Bool)

(assert (=> b!1219504 (= e!782809 0)))

(declare-fun b!1219505 () Bool)

(assert (=> b!1219505 (= e!782809 (+ 1 (size!9859 (t!113428 (_2!7020 lt!416329)))))))

(assert (= (and d!348038 c!203858) b!1219504))

(assert (= (and d!348038 (not c!203858)) b!1219505))

(declare-fun m!1393165 () Bool)

(assert (=> b!1219505 m!1393165))

(assert (=> b!1219282 d!348038))

(declare-fun d!348040 () Bool)

(assert (=> d!348040 (= (isEmpty!7430 (_1!7019 lt!416402)) ((_ is Nil!12481) (_1!7019 lt!416402)))))

(assert (=> b!1219246 d!348040))

(declare-fun d!348042 () Bool)

(declare-fun lt!416487 () Int)

(assert (=> d!348042 (>= lt!416487 0)))

(declare-fun e!782812 () Int)

(assert (=> d!348042 (= lt!416487 e!782812)))

(declare-fun c!203861 () Bool)

(assert (=> d!348042 (= c!203861 ((_ is Nil!12481) (_1!7019 lt!416411)))))

(assert (=> d!348042 (= (size!9860 (_1!7019 lt!416411)) lt!416487)))

(declare-fun b!1219510 () Bool)

(assert (=> b!1219510 (= e!782812 0)))

(declare-fun b!1219511 () Bool)

(assert (=> b!1219511 (= e!782812 (+ 1 (size!9860 (t!113429 (_1!7019 lt!416411)))))))

(assert (= (and d!348042 c!203861) b!1219510))

(assert (= (and d!348042 (not c!203861)) b!1219511))

(declare-fun m!1393167 () Bool)

(assert (=> b!1219511 m!1393167))

(assert (=> d!347932 d!348042))

(declare-fun b!1219512 () Bool)

(declare-fun e!782815 () Bool)

(declare-fun e!782813 () Bool)

(assert (=> b!1219512 (= e!782815 e!782813)))

(declare-fun res!548221 () Bool)

(assert (=> b!1219512 (=> (not res!548221) (not e!782813))))

(declare-fun lt!416492 () Option!2513)

(assert (=> b!1219512 (= res!548221 (isDefined!2149 lt!416492))))

(declare-fun b!1219513 () Bool)

(declare-fun e!782814 () Option!2513)

(declare-fun call!84618 () Option!2513)

(assert (=> b!1219513 (= e!782814 call!84618)))

(declare-fun b!1219514 () Bool)

(declare-fun res!548223 () Bool)

(assert (=> b!1219514 (=> (not res!548223) (not e!782813))))

(assert (=> b!1219514 (= res!548223 (matchR!1536 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416492)))) (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416492))))))))

(declare-fun b!1219515 () Bool)

(declare-fun res!548222 () Bool)

(assert (=> b!1219515 (=> (not res!548222) (not e!782813))))

(assert (=> b!1219515 (= res!548222 (= (value!69900 (_1!7020 (get!4104 lt!416492))) (apply!2661 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416492)))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416492)))))))))

(declare-fun bm!84613 () Bool)

(assert (=> bm!84613 (= call!84618 (maxPrefixOneRule!557 thiss!20528 (h!17883 rules!2728) (_2!7020 lt!416329)))))

(declare-fun b!1219516 () Bool)

(assert (=> b!1219516 (= e!782813 (contains!2091 rules!2728 (rule!3576 (_1!7020 (get!4104 lt!416492)))))))

(declare-fun d!348044 () Bool)

(assert (=> d!348044 e!782815))

(declare-fun res!548227 () Bool)

(assert (=> d!348044 (=> res!548227 e!782815)))

(assert (=> d!348044 (= res!548227 (isEmpty!7434 lt!416492))))

(assert (=> d!348044 (= lt!416492 e!782814)))

(declare-fun c!203862 () Bool)

(assert (=> d!348044 (= c!203862 (and ((_ is Cons!12482) rules!2728) ((_ is Nil!12482) (t!113430 rules!2728))))))

(declare-fun lt!416489 () Unit!18728)

(declare-fun lt!416491 () Unit!18728)

(assert (=> d!348044 (= lt!416489 lt!416491)))

(assert (=> d!348044 (isPrefix!1038 (_2!7020 lt!416329) (_2!7020 lt!416329))))

(assert (=> d!348044 (= lt!416491 (lemmaIsPrefixRefl!731 (_2!7020 lt!416329) (_2!7020 lt!416329)))))

(assert (=> d!348044 (rulesValidInductive!674 thiss!20528 rules!2728)))

(assert (=> d!348044 (= (maxPrefix!968 thiss!20528 rules!2728 (_2!7020 lt!416329)) lt!416492)))

(declare-fun b!1219517 () Bool)

(declare-fun res!548225 () Bool)

(assert (=> b!1219517 (=> (not res!548225) (not e!782813))))

(assert (=> b!1219517 (= res!548225 (= (++!3186 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416492)))) (_2!7020 (get!4104 lt!416492))) (_2!7020 lt!416329)))))

(declare-fun b!1219518 () Bool)

(declare-fun res!548226 () Bool)

(assert (=> b!1219518 (=> (not res!548226) (not e!782813))))

(assert (=> b!1219518 (= res!548226 (= (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416492)))) (originalCharacters!2705 (_1!7020 (get!4104 lt!416492)))))))

(declare-fun b!1219519 () Bool)

(declare-fun lt!416488 () Option!2513)

(declare-fun lt!416490 () Option!2513)

(assert (=> b!1219519 (= e!782814 (ite (and ((_ is None!2512) lt!416488) ((_ is None!2512) lt!416490)) None!2512 (ite ((_ is None!2512) lt!416490) lt!416488 (ite ((_ is None!2512) lt!416488) lt!416490 (ite (>= (size!9854 (_1!7020 (v!20643 lt!416488))) (size!9854 (_1!7020 (v!20643 lt!416490)))) lt!416488 lt!416490)))))))

(assert (=> b!1219519 (= lt!416488 call!84618)))

(assert (=> b!1219519 (= lt!416490 (maxPrefix!968 thiss!20528 (t!113430 rules!2728) (_2!7020 lt!416329)))))

(declare-fun b!1219520 () Bool)

(declare-fun res!548224 () Bool)

(assert (=> b!1219520 (=> (not res!548224) (not e!782813))))

(assert (=> b!1219520 (= res!548224 (< (size!9859 (_2!7020 (get!4104 lt!416492))) (size!9859 (_2!7020 lt!416329))))))

(assert (= (and d!348044 c!203862) b!1219513))

(assert (= (and d!348044 (not c!203862)) b!1219519))

(assert (= (or b!1219513 b!1219519) bm!84613))

(assert (= (and d!348044 (not res!548227)) b!1219512))

(assert (= (and b!1219512 res!548221) b!1219518))

(assert (= (and b!1219518 res!548226) b!1219520))

(assert (= (and b!1219520 res!548224) b!1219517))

(assert (= (and b!1219517 res!548225) b!1219515))

(assert (= (and b!1219515 res!548222) b!1219514))

(assert (= (and b!1219514 res!548223) b!1219516))

(declare-fun m!1393169 () Bool)

(assert (=> b!1219512 m!1393169))

(declare-fun m!1393171 () Bool)

(assert (=> b!1219516 m!1393171))

(declare-fun m!1393173 () Bool)

(assert (=> b!1219516 m!1393173))

(declare-fun m!1393175 () Bool)

(assert (=> b!1219519 m!1393175))

(assert (=> b!1219520 m!1393171))

(declare-fun m!1393177 () Bool)

(assert (=> b!1219520 m!1393177))

(assert (=> b!1219520 m!1392915))

(assert (=> b!1219517 m!1393171))

(declare-fun m!1393179 () Bool)

(assert (=> b!1219517 m!1393179))

(assert (=> b!1219517 m!1393179))

(declare-fun m!1393181 () Bool)

(assert (=> b!1219517 m!1393181))

(assert (=> b!1219517 m!1393181))

(declare-fun m!1393183 () Bool)

(assert (=> b!1219517 m!1393183))

(assert (=> b!1219518 m!1393171))

(assert (=> b!1219518 m!1393179))

(assert (=> b!1219518 m!1393179))

(assert (=> b!1219518 m!1393181))

(declare-fun m!1393185 () Bool)

(assert (=> bm!84613 m!1393185))

(assert (=> b!1219515 m!1393171))

(declare-fun m!1393187 () Bool)

(assert (=> b!1219515 m!1393187))

(assert (=> b!1219515 m!1393187))

(declare-fun m!1393189 () Bool)

(assert (=> b!1219515 m!1393189))

(declare-fun m!1393191 () Bool)

(assert (=> d!348044 m!1393191))

(declare-fun m!1393193 () Bool)

(assert (=> d!348044 m!1393193))

(declare-fun m!1393195 () Bool)

(assert (=> d!348044 m!1393195))

(assert (=> d!348044 m!1392983))

(assert (=> b!1219514 m!1393171))

(assert (=> b!1219514 m!1393179))

(assert (=> b!1219514 m!1393179))

(assert (=> b!1219514 m!1393181))

(assert (=> b!1219514 m!1393181))

(declare-fun m!1393197 () Bool)

(assert (=> b!1219514 m!1393197))

(assert (=> d!347932 d!348044))

(declare-fun d!348046 () Bool)

(declare-fun c!203865 () Bool)

(assert (=> d!348046 (= c!203865 ((_ is Nil!12481) lt!416408))))

(declare-fun e!782818 () (InoxSet Token!3964))

(assert (=> d!348046 (= (content!1773 lt!416408) e!782818)))

(declare-fun b!1219525 () Bool)

(assert (=> b!1219525 (= e!782818 ((as const (Array Token!3964 Bool)) false))))

(declare-fun b!1219526 () Bool)

(assert (=> b!1219526 (= e!782818 ((_ map or) (store ((as const (Array Token!3964 Bool)) false) (h!17882 lt!416408) true) (content!1773 (t!113429 lt!416408))))))

(assert (= (and d!348046 c!203865) b!1219525))

(assert (= (and d!348046 (not c!203865)) b!1219526))

(declare-fun m!1393199 () Bool)

(assert (=> b!1219526 m!1393199))

(declare-fun m!1393201 () Bool)

(assert (=> b!1219526 m!1393201))

(assert (=> d!347926 d!348046))

(declare-fun d!348048 () Bool)

(declare-fun c!203866 () Bool)

(assert (=> d!348048 (= c!203866 ((_ is Nil!12481) lt!416334))))

(declare-fun e!782819 () (InoxSet Token!3964))

(assert (=> d!348048 (= (content!1773 lt!416334) e!782819)))

(declare-fun b!1219527 () Bool)

(assert (=> b!1219527 (= e!782819 ((as const (Array Token!3964 Bool)) false))))

(declare-fun b!1219528 () Bool)

(assert (=> b!1219528 (= e!782819 ((_ map or) (store ((as const (Array Token!3964 Bool)) false) (h!17882 lt!416334) true) (content!1773 (t!113429 lt!416334))))))

(assert (= (and d!348048 c!203866) b!1219527))

(assert (= (and d!348048 (not c!203866)) b!1219528))

(declare-fun m!1393203 () Bool)

(assert (=> b!1219528 m!1393203))

(declare-fun m!1393205 () Bool)

(assert (=> b!1219528 m!1393205))

(assert (=> d!347926 d!348048))

(declare-fun d!348050 () Bool)

(declare-fun c!203867 () Bool)

(assert (=> d!348050 (= c!203867 ((_ is Nil!12481) (_1!7019 lt!416331)))))

(declare-fun e!782820 () (InoxSet Token!3964))

(assert (=> d!348050 (= (content!1773 (_1!7019 lt!416331)) e!782820)))

(declare-fun b!1219529 () Bool)

(assert (=> b!1219529 (= e!782820 ((as const (Array Token!3964 Bool)) false))))

(declare-fun b!1219530 () Bool)

(assert (=> b!1219530 (= e!782820 ((_ map or) (store ((as const (Array Token!3964 Bool)) false) (h!17882 (_1!7019 lt!416331)) true) (content!1773 (t!113429 (_1!7019 lt!416331)))))))

(assert (= (and d!348050 c!203867) b!1219529))

(assert (= (and d!348050 (not c!203867)) b!1219530))

(declare-fun m!1393207 () Bool)

(assert (=> b!1219530 m!1393207))

(declare-fun m!1393209 () Bool)

(assert (=> b!1219530 m!1393209))

(assert (=> d!347926 d!348050))

(declare-fun d!348052 () Bool)

(assert (=> d!348052 (= (inv!16674 (tag!2413 (rule!3576 (h!17882 (t!113429 tokens!556))))) (= (mod (str.len (value!69899 (tag!2413 (rule!3576 (h!17882 (t!113429 tokens!556)))))) 2) 0))))

(assert (=> b!1219360 d!348052))

(declare-fun d!348054 () Bool)

(declare-fun res!548228 () Bool)

(declare-fun e!782821 () Bool)

(assert (=> d!348054 (=> (not res!548228) (not e!782821))))

(assert (=> d!348054 (= res!548228 (semiInverseModEq!788 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toValue!3284 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))))))

(assert (=> d!348054 (= (inv!16678 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) e!782821)))

(declare-fun b!1219531 () Bool)

(assert (=> b!1219531 (= e!782821 (equivClasses!755 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toValue!3284 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))))))

(assert (= (and d!348054 res!548228) b!1219531))

(declare-fun m!1393211 () Bool)

(assert (=> d!348054 m!1393211))

(declare-fun m!1393213 () Bool)

(assert (=> b!1219531 m!1393213))

(assert (=> b!1219360 d!348054))

(declare-fun d!348056 () Bool)

(assert (=> d!348056 (= (isEmpty!7428 (tail!1789 lt!416332)) ((_ is Nil!12480) (tail!1789 lt!416332)))))

(assert (=> b!1219212 d!348056))

(declare-fun d!348058 () Bool)

(assert (=> d!348058 (= (tail!1789 lt!416332) (t!113428 lt!416332))))

(assert (=> b!1219212 d!348058))

(declare-fun d!348060 () Bool)

(assert (=> d!348060 (= (isDefined!2149 lt!416433) (not (isEmpty!7434 lt!416433)))))

(declare-fun bs!288889 () Bool)

(assert (= bs!288889 d!348060))

(assert (=> bs!288889 m!1392977))

(assert (=> b!1219321 d!348060))

(declare-fun d!348062 () Bool)

(declare-fun lt!416495 () Token!3964)

(declare-fun apply!2662 (List!12539 Int) Token!3964)

(assert (=> d!348062 (= lt!416495 (apply!2662 (list!4609 (_1!7022 lt!416389)) 0))))

(declare-fun apply!2663 (Conc!4085 Int) Token!3964)

(assert (=> d!348062 (= lt!416495 (apply!2663 (c!203822 (_1!7022 lt!416389)) 0))))

(declare-fun e!782824 () Bool)

(assert (=> d!348062 e!782824))

(declare-fun res!548231 () Bool)

(assert (=> d!348062 (=> (not res!548231) (not e!782824))))

(assert (=> d!348062 (= res!548231 (<= 0 0))))

(assert (=> d!348062 (= (apply!2660 (_1!7022 lt!416389) 0) lt!416495)))

(declare-fun b!1219534 () Bool)

(assert (=> b!1219534 (= e!782824 (< 0 (size!9858 (_1!7022 lt!416389))))))

(assert (= (and d!348062 res!548231) b!1219534))

(declare-fun m!1393215 () Bool)

(assert (=> d!348062 m!1393215))

(assert (=> d!348062 m!1393215))

(declare-fun m!1393217 () Bool)

(assert (=> d!348062 m!1393217))

(declare-fun m!1393219 () Bool)

(assert (=> d!348062 m!1393219))

(assert (=> b!1219534 m!1392823))

(assert (=> b!1219176 d!348062))

(declare-fun d!348064 () Bool)

(assert (=> d!348064 true))

(declare-fun lt!416556 () Bool)

(assert (=> d!348064 (= lt!416556 (rulesValidInductive!674 thiss!20528 rules!2728))))

(declare-fun lambda!49186 () Int)

(declare-fun forall!3185 (List!12540 Int) Bool)

(assert (=> d!348064 (= lt!416556 (forall!3185 rules!2728 lambda!49186))))

(assert (=> d!348064 (= (rulesValid!775 thiss!20528 rules!2728) lt!416556)))

(declare-fun bs!288900 () Bool)

(assert (= bs!288900 d!348064))

(assert (=> bs!288900 m!1392983))

(declare-fun m!1393475 () Bool)

(assert (=> bs!288900 m!1393475))

(assert (=> d!347936 d!348064))

(declare-fun b!1219693 () Bool)

(declare-fun res!548305 () Bool)

(declare-fun e!782908 () Bool)

(assert (=> b!1219693 (=> res!548305 e!782908)))

(declare-fun e!782907 () Bool)

(assert (=> b!1219693 (= res!548305 e!782907)))

(declare-fun res!548302 () Bool)

(assert (=> b!1219693 (=> (not res!548302) (not e!782907))))

(declare-fun lt!416557 () Bool)

(assert (=> b!1219693 (= res!548302 lt!416557)))

(declare-fun b!1219694 () Bool)

(declare-fun e!782910 () Bool)

(assert (=> b!1219694 (= e!782910 (matchR!1536 (derivativeStep!853 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332)) (head!2157 (tail!1789 lt!416332))) (tail!1789 (tail!1789 lt!416332))))))

(declare-fun b!1219695 () Bool)

(declare-fun e!782911 () Bool)

(declare-fun e!782905 () Bool)

(assert (=> b!1219695 (= e!782911 e!782905)))

(declare-fun res!548300 () Bool)

(assert (=> b!1219695 (=> res!548300 e!782905)))

(declare-fun call!84634 () Bool)

(assert (=> b!1219695 (= res!548300 call!84634)))

(declare-fun b!1219697 () Bool)

(assert (=> b!1219697 (= e!782905 (not (= (head!2157 (tail!1789 lt!416332)) (c!203752 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332))))))))

(declare-fun b!1219698 () Bool)

(declare-fun res!548306 () Bool)

(assert (=> b!1219698 (=> res!548306 e!782905)))

(assert (=> b!1219698 (= res!548306 (not (isEmpty!7428 (tail!1789 (tail!1789 lt!416332)))))))

(declare-fun b!1219699 () Bool)

(declare-fun e!782906 () Bool)

(assert (=> b!1219699 (= e!782906 (not lt!416557))))

(declare-fun bm!84629 () Bool)

(assert (=> bm!84629 (= call!84634 (isEmpty!7428 (tail!1789 lt!416332)))))

(declare-fun b!1219700 () Bool)

(assert (=> b!1219700 (= e!782910 (nullable!1060 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332))))))

(declare-fun b!1219701 () Bool)

(declare-fun res!548304 () Bool)

(assert (=> b!1219701 (=> res!548304 e!782908)))

(assert (=> b!1219701 (= res!548304 (not ((_ is ElementMatch!3421) (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332)))))))

(assert (=> b!1219701 (= e!782906 e!782908)))

(declare-fun b!1219702 () Bool)

(declare-fun e!782909 () Bool)

(assert (=> b!1219702 (= e!782909 e!782906)))

(declare-fun c!203911 () Bool)

(assert (=> b!1219702 (= c!203911 ((_ is EmptyLang!3421) (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332))))))

(declare-fun b!1219703 () Bool)

(declare-fun res!548299 () Bool)

(assert (=> b!1219703 (=> (not res!548299) (not e!782907))))

(assert (=> b!1219703 (= res!548299 (isEmpty!7428 (tail!1789 (tail!1789 lt!416332))))))

(declare-fun b!1219704 () Bool)

(assert (=> b!1219704 (= e!782909 (= lt!416557 call!84634))))

(declare-fun b!1219705 () Bool)

(declare-fun res!548303 () Bool)

(assert (=> b!1219705 (=> (not res!548303) (not e!782907))))

(assert (=> b!1219705 (= res!548303 (not call!84634))))

(declare-fun b!1219706 () Bool)

(assert (=> b!1219706 (= e!782908 e!782911)))

(declare-fun res!548301 () Bool)

(assert (=> b!1219706 (=> (not res!548301) (not e!782911))))

(assert (=> b!1219706 (= res!548301 (not lt!416557))))

(declare-fun b!1219696 () Bool)

(assert (=> b!1219696 (= e!782907 (= (head!2157 (tail!1789 lt!416332)) (c!203752 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332)))))))

(declare-fun d!348136 () Bool)

(assert (=> d!348136 e!782909))

(declare-fun c!203912 () Bool)

(assert (=> d!348136 (= c!203912 ((_ is EmptyExpr!3421) (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332))))))

(assert (=> d!348136 (= lt!416557 e!782910)))

(declare-fun c!203910 () Bool)

(assert (=> d!348136 (= c!203910 (isEmpty!7428 (tail!1789 lt!416332)))))

(assert (=> d!348136 (validRegex!1457 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332)))))

(assert (=> d!348136 (= (matchR!1536 (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332)) (tail!1789 lt!416332)) lt!416557)))

(assert (= (and d!348136 c!203910) b!1219700))

(assert (= (and d!348136 (not c!203910)) b!1219694))

(assert (= (and d!348136 c!203912) b!1219704))

(assert (= (and d!348136 (not c!203912)) b!1219702))

(assert (= (and b!1219702 c!203911) b!1219699))

(assert (= (and b!1219702 (not c!203911)) b!1219701))

(assert (= (and b!1219701 (not res!548304)) b!1219693))

(assert (= (and b!1219693 res!548302) b!1219705))

(assert (= (and b!1219705 res!548303) b!1219703))

(assert (= (and b!1219703 res!548299) b!1219696))

(assert (= (and b!1219693 (not res!548305)) b!1219706))

(assert (= (and b!1219706 res!548301) b!1219695))

(assert (= (and b!1219695 (not res!548300)) b!1219698))

(assert (= (and b!1219698 (not res!548306)) b!1219697))

(assert (= (or b!1219704 b!1219695 b!1219705) bm!84629))

(assert (=> b!1219703 m!1392837))

(declare-fun m!1393481 () Bool)

(assert (=> b!1219703 m!1393481))

(assert (=> b!1219703 m!1393481))

(declare-fun m!1393483 () Bool)

(assert (=> b!1219703 m!1393483))

(assert (=> b!1219698 m!1392837))

(assert (=> b!1219698 m!1393481))

(assert (=> b!1219698 m!1393481))

(assert (=> b!1219698 m!1393483))

(assert (=> bm!84629 m!1392837))

(assert (=> bm!84629 m!1392839))

(assert (=> d!348136 m!1392837))

(assert (=> d!348136 m!1392839))

(assert (=> d!348136 m!1392847))

(declare-fun m!1393485 () Bool)

(assert (=> d!348136 m!1393485))

(assert (=> b!1219694 m!1392837))

(declare-fun m!1393487 () Bool)

(assert (=> b!1219694 m!1393487))

(assert (=> b!1219694 m!1392847))

(assert (=> b!1219694 m!1393487))

(declare-fun m!1393489 () Bool)

(assert (=> b!1219694 m!1393489))

(assert (=> b!1219694 m!1392837))

(assert (=> b!1219694 m!1393481))

(assert (=> b!1219694 m!1393489))

(assert (=> b!1219694 m!1393481))

(declare-fun m!1393491 () Bool)

(assert (=> b!1219694 m!1393491))

(assert (=> b!1219696 m!1392837))

(assert (=> b!1219696 m!1393487))

(assert (=> b!1219700 m!1392847))

(declare-fun m!1393493 () Bool)

(assert (=> b!1219700 m!1393493))

(assert (=> b!1219697 m!1392837))

(assert (=> b!1219697 m!1393487))

(assert (=> b!1219208 d!348136))

(declare-fun c!203935 () Bool)

(declare-fun bm!84638 () Bool)

(declare-fun call!84645 () Regex!3421)

(assert (=> bm!84638 (= call!84645 (derivativeStep!853 (ite c!203935 (regOne!7355 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (regOne!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329))))) (head!2157 lt!416332)))))

(declare-fun bm!84639 () Bool)

(declare-fun call!84644 () Regex!3421)

(declare-fun call!84643 () Regex!3421)

(assert (=> bm!84639 (= call!84644 call!84643)))

(declare-fun b!1219750 () Bool)

(declare-fun e!782936 () Regex!3421)

(assert (=> b!1219750 (= e!782936 (Concat!5641 call!84644 (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun bm!84640 () Bool)

(declare-fun c!203934 () Bool)

(declare-fun c!203931 () Bool)

(assert (=> bm!84640 (= call!84643 (derivativeStep!853 (ite c!203935 (regTwo!7355 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (ite c!203931 (reg!3750 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (ite c!203934 (regTwo!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (regOne!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329))))))) (head!2157 lt!416332)))))

(declare-fun b!1219751 () Bool)

(assert (=> b!1219751 (= c!203934 (nullable!1060 (regOne!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329))))))))

(declare-fun e!782937 () Regex!3421)

(assert (=> b!1219751 (= e!782936 e!782937)))

(declare-fun d!348142 () Bool)

(declare-fun lt!416567 () Regex!3421)

(assert (=> d!348142 (validRegex!1457 lt!416567)))

(declare-fun e!782939 () Regex!3421)

(assert (=> d!348142 (= lt!416567 e!782939)))

(declare-fun c!203932 () Bool)

(assert (=> d!348142 (= c!203932 (or ((_ is EmptyExpr!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))) ((_ is EmptyLang!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329))))))))

(assert (=> d!348142 (validRegex!1457 (regex!2151 (rule!3576 (_1!7020 lt!416329))))))

(assert (=> d!348142 (= (derivativeStep!853 (regex!2151 (rule!3576 (_1!7020 lt!416329))) (head!2157 lt!416332)) lt!416567)))

(declare-fun b!1219752 () Bool)

(declare-fun e!782938 () Regex!3421)

(assert (=> b!1219752 (= e!782938 (Union!3421 call!84645 call!84643))))

(declare-fun b!1219753 () Bool)

(assert (=> b!1219753 (= e!782939 EmptyLang!3421)))

(declare-fun b!1219754 () Bool)

(declare-fun call!84646 () Regex!3421)

(assert (=> b!1219754 (= e!782937 (Union!3421 (Concat!5641 call!84645 (regTwo!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329))))) call!84646))))

(declare-fun b!1219755 () Bool)

(assert (=> b!1219755 (= e!782938 e!782936)))

(assert (=> b!1219755 (= c!203931 ((_ is Star!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun b!1219756 () Bool)

(declare-fun e!782940 () Regex!3421)

(assert (=> b!1219756 (= e!782939 e!782940)))

(declare-fun c!203933 () Bool)

(assert (=> b!1219756 (= c!203933 ((_ is ElementMatch!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun b!1219757 () Bool)

(assert (=> b!1219757 (= e!782937 (Union!3421 (Concat!5641 call!84646 (regTwo!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329))))) EmptyLang!3421))))

(declare-fun b!1219758 () Bool)

(assert (=> b!1219758 (= c!203935 ((_ is Union!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(assert (=> b!1219758 (= e!782940 e!782938)))

(declare-fun b!1219759 () Bool)

(assert (=> b!1219759 (= e!782940 (ite (= (head!2157 lt!416332) (c!203752 (regex!2151 (rule!3576 (_1!7020 lt!416329))))) EmptyExpr!3421 EmptyLang!3421))))

(declare-fun bm!84641 () Bool)

(assert (=> bm!84641 (= call!84646 call!84644)))

(assert (= (and d!348142 c!203932) b!1219753))

(assert (= (and d!348142 (not c!203932)) b!1219756))

(assert (= (and b!1219756 c!203933) b!1219759))

(assert (= (and b!1219756 (not c!203933)) b!1219758))

(assert (= (and b!1219758 c!203935) b!1219752))

(assert (= (and b!1219758 (not c!203935)) b!1219755))

(assert (= (and b!1219755 c!203931) b!1219750))

(assert (= (and b!1219755 (not c!203931)) b!1219751))

(assert (= (and b!1219751 c!203934) b!1219754))

(assert (= (and b!1219751 (not c!203934)) b!1219757))

(assert (= (or b!1219754 b!1219757) bm!84641))

(assert (= (or b!1219750 bm!84641) bm!84639))

(assert (= (or b!1219752 bm!84639) bm!84640))

(assert (= (or b!1219752 b!1219754) bm!84638))

(assert (=> bm!84638 m!1392845))

(declare-fun m!1393545 () Bool)

(assert (=> bm!84638 m!1393545))

(assert (=> bm!84640 m!1392845))

(declare-fun m!1393549 () Bool)

(assert (=> bm!84640 m!1393549))

(declare-fun m!1393551 () Bool)

(assert (=> b!1219751 m!1393551))

(declare-fun m!1393553 () Bool)

(assert (=> d!348142 m!1393553))

(assert (=> d!348142 m!1392843))

(assert (=> b!1219208 d!348142))

(declare-fun d!348174 () Bool)

(assert (=> d!348174 (= (head!2157 lt!416332) (h!17881 lt!416332))))

(assert (=> b!1219208 d!348174))

(assert (=> b!1219208 d!348058))

(assert (=> b!1219210 d!348174))

(declare-fun d!348176 () Bool)

(assert (=> d!348176 (= (isEmpty!7434 lt!416335) (not ((_ is Some!2512) lt!416335)))))

(assert (=> d!347950 d!348176))

(declare-fun d!348182 () Bool)

(declare-fun res!548317 () Bool)

(declare-fun e!782946 () Bool)

(assert (=> d!348182 (=> (not res!548317) (not e!782946))))

(assert (=> d!348182 (= res!548317 (not (isEmpty!7428 (originalCharacters!2705 (h!17882 (t!113429 tokens!556))))))))

(assert (=> d!348182 (= (inv!16677 (h!17882 (t!113429 tokens!556))) e!782946)))

(declare-fun b!1219767 () Bool)

(declare-fun res!548318 () Bool)

(assert (=> b!1219767 (=> (not res!548318) (not e!782946))))

(assert (=> b!1219767 (= res!548318 (= (originalCharacters!2705 (h!17882 (t!113429 tokens!556))) (list!4606 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (value!69900 (h!17882 (t!113429 tokens!556)))))))))

(declare-fun b!1219768 () Bool)

(assert (=> b!1219768 (= e!782946 (= (size!9854 (h!17882 (t!113429 tokens!556))) (size!9859 (originalCharacters!2705 (h!17882 (t!113429 tokens!556))))))))

(assert (= (and d!348182 res!548317) b!1219767))

(assert (= (and b!1219767 res!548318) b!1219768))

(declare-fun b_lambda!35983 () Bool)

(assert (=> (not b_lambda!35983) (not b!1219767)))

(declare-fun tb!67009 () Bool)

(declare-fun t!113487 () Bool)

(assert (=> (and b!1218954 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) t!113487) tb!67009))

(declare-fun b!1219773 () Bool)

(declare-fun e!782949 () Bool)

(declare-fun tp!346578 () Bool)

(assert (=> b!1219773 (= e!782949 (and (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (value!69900 (h!17882 (t!113429 tokens!556)))))) tp!346578))))

(declare-fun result!81172 () Bool)

(assert (=> tb!67009 (= result!81172 (and (inv!16682 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (value!69900 (h!17882 (t!113429 tokens!556))))) e!782949))))

(assert (= tb!67009 b!1219773))

(declare-fun m!1393563 () Bool)

(assert (=> b!1219773 m!1393563))

(declare-fun m!1393565 () Bool)

(assert (=> tb!67009 m!1393565))

(assert (=> b!1219767 t!113487))

(declare-fun b_and!83009 () Bool)

(assert (= b_and!82993 (and (=> t!113487 result!81172) b_and!83009)))

(declare-fun t!113491 () Bool)

(declare-fun tb!67013 () Bool)

(assert (=> (and b!1218955 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) t!113491) tb!67013))

(declare-fun result!81176 () Bool)

(assert (= result!81176 result!81172))

(assert (=> b!1219767 t!113491))

(declare-fun b_and!83011 () Bool)

(assert (= b_and!82995 (and (=> t!113491 result!81176) b_and!83011)))

(declare-fun tb!67015 () Bool)

(declare-fun t!113493 () Bool)

(assert (=> (and b!1219341 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) t!113493) tb!67015))

(declare-fun result!81178 () Bool)

(assert (= result!81178 result!81172))

(assert (=> b!1219767 t!113493))

(declare-fun b_and!83013 () Bool)

(assert (= b_and!82997 (and (=> t!113493 result!81178) b_and!83013)))

(declare-fun t!113495 () Bool)

(declare-fun tb!67017 () Bool)

(assert (=> (and b!1219361 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) t!113495) tb!67017))

(declare-fun result!81180 () Bool)

(assert (= result!81180 result!81172))

(assert (=> b!1219767 t!113495))

(declare-fun b_and!83015 () Bool)

(assert (= b_and!82999 (and (=> t!113495 result!81180) b_and!83015)))

(declare-fun m!1393571 () Bool)

(assert (=> d!348182 m!1393571))

(declare-fun m!1393573 () Bool)

(assert (=> b!1219767 m!1393573))

(assert (=> b!1219767 m!1393573))

(declare-fun m!1393575 () Bool)

(assert (=> b!1219767 m!1393575))

(declare-fun m!1393577 () Bool)

(assert (=> b!1219768 m!1393577))

(assert (=> b!1219358 d!348182))

(declare-fun d!348188 () Bool)

(declare-fun lt!416571 () Int)

(assert (=> d!348188 (>= lt!416571 0)))

(declare-fun e!782951 () Int)

(assert (=> d!348188 (= lt!416571 e!782951)))

(declare-fun c!203939 () Bool)

(assert (=> d!348188 (= c!203939 ((_ is Nil!12481) lt!416408))))

(assert (=> d!348188 (= (size!9860 lt!416408) lt!416571)))

(declare-fun b!1219775 () Bool)

(assert (=> b!1219775 (= e!782951 0)))

(declare-fun b!1219776 () Bool)

(assert (=> b!1219776 (= e!782951 (+ 1 (size!9860 (t!113429 lt!416408))))))

(assert (= (and d!348188 c!203939) b!1219775))

(assert (= (and d!348188 (not c!203939)) b!1219776))

(declare-fun m!1393587 () Bool)

(assert (=> b!1219776 m!1393587))

(assert (=> b!1219265 d!348188))

(declare-fun d!348192 () Bool)

(declare-fun lt!416572 () Int)

(assert (=> d!348192 (>= lt!416572 0)))

(declare-fun e!782952 () Int)

(assert (=> d!348192 (= lt!416572 e!782952)))

(declare-fun c!203940 () Bool)

(assert (=> d!348192 (= c!203940 ((_ is Nil!12481) lt!416334))))

(assert (=> d!348192 (= (size!9860 lt!416334) lt!416572)))

(declare-fun b!1219777 () Bool)

(assert (=> b!1219777 (= e!782952 0)))

(declare-fun b!1219778 () Bool)

(assert (=> b!1219778 (= e!782952 (+ 1 (size!9860 (t!113429 lt!416334))))))

(assert (= (and d!348192 c!203940) b!1219777))

(assert (= (and d!348192 (not c!203940)) b!1219778))

(declare-fun m!1393589 () Bool)

(assert (=> b!1219778 m!1393589))

(assert (=> b!1219265 d!348192))

(declare-fun d!348194 () Bool)

(declare-fun lt!416573 () Int)

(assert (=> d!348194 (>= lt!416573 0)))

(declare-fun e!782955 () Int)

(assert (=> d!348194 (= lt!416573 e!782955)))

(declare-fun c!203942 () Bool)

(assert (=> d!348194 (= c!203942 ((_ is Nil!12481) (_1!7019 lt!416331)))))

(assert (=> d!348194 (= (size!9860 (_1!7019 lt!416331)) lt!416573)))

(declare-fun b!1219782 () Bool)

(assert (=> b!1219782 (= e!782955 0)))

(declare-fun b!1219783 () Bool)

(assert (=> b!1219783 (= e!782955 (+ 1 (size!9860 (t!113429 (_1!7019 lt!416331)))))))

(assert (= (and d!348194 c!203942) b!1219782))

(assert (= (and d!348194 (not c!203942)) b!1219783))

(declare-fun m!1393595 () Bool)

(assert (=> b!1219783 m!1393595))

(assert (=> b!1219265 d!348194))

(declare-fun d!348196 () Bool)

(declare-fun res!548334 () Bool)

(declare-fun e!782967 () Bool)

(assert (=> d!348196 (=> res!548334 e!782967)))

(assert (=> d!348196 (= res!548334 ((_ is Nil!12482) rules!2728))))

(assert (=> d!348196 (= (noDuplicateTag!775 thiss!20528 rules!2728 Nil!12484) e!782967)))

(declare-fun b!1219802 () Bool)

(declare-fun e!782968 () Bool)

(assert (=> b!1219802 (= e!782967 e!782968)))

(declare-fun res!548335 () Bool)

(assert (=> b!1219802 (=> (not res!548335) (not e!782968))))

(declare-fun contains!2092 (List!12542 String!15227) Bool)

(assert (=> b!1219802 (= res!548335 (not (contains!2092 Nil!12484 (tag!2413 (h!17883 rules!2728)))))))

(declare-fun b!1219803 () Bool)

(assert (=> b!1219803 (= e!782968 (noDuplicateTag!775 thiss!20528 (t!113430 rules!2728) (Cons!12484 (tag!2413 (h!17883 rules!2728)) Nil!12484)))))

(assert (= (and d!348196 (not res!548334)) b!1219802))

(assert (= (and b!1219802 res!548335) b!1219803))

(declare-fun m!1393613 () Bool)

(assert (=> b!1219802 m!1393613))

(declare-fun m!1393615 () Bool)

(assert (=> b!1219803 m!1393615))

(assert (=> b!1219286 d!348196))

(declare-fun d!348202 () Bool)

(declare-fun lt!416575 () Int)

(assert (=> d!348202 (>= lt!416575 0)))

(declare-fun e!782969 () Int)

(assert (=> d!348202 (= lt!416575 e!782969)))

(declare-fun c!203946 () Bool)

(assert (=> d!348202 (= c!203946 ((_ is Nil!12481) (_1!7019 lt!416402)))))

(assert (=> d!348202 (= (size!9860 (_1!7019 lt!416402)) lt!416575)))

(declare-fun b!1219804 () Bool)

(assert (=> b!1219804 (= e!782969 0)))

(declare-fun b!1219805 () Bool)

(assert (=> b!1219805 (= e!782969 (+ 1 (size!9860 (t!113429 (_1!7019 lt!416402)))))))

(assert (= (and d!348202 c!203946) b!1219804))

(assert (= (and d!348202 (not c!203946)) b!1219805))

(declare-fun m!1393617 () Bool)

(assert (=> b!1219805 m!1393617))

(assert (=> d!347922 d!348202))

(assert (=> d!347922 d!347952))

(declare-fun d!348204 () Bool)

(declare-fun lt!416576 () Int)

(assert (=> d!348204 (>= lt!416576 0)))

(declare-fun e!782970 () Int)

(assert (=> d!348204 (= lt!416576 e!782970)))

(declare-fun c!203947 () Bool)

(assert (=> d!348204 (= c!203947 ((_ is Nil!12480) (_2!7020 (get!4104 lt!416433))))))

(assert (=> d!348204 (= (size!9859 (_2!7020 (get!4104 lt!416433))) lt!416576)))

(declare-fun b!1219806 () Bool)

(assert (=> b!1219806 (= e!782970 0)))

(declare-fun b!1219807 () Bool)

(assert (=> b!1219807 (= e!782970 (+ 1 (size!9859 (t!113428 (_2!7020 (get!4104 lt!416433))))))))

(assert (= (and d!348204 c!203947) b!1219806))

(assert (= (and d!348204 (not c!203947)) b!1219807))

(declare-fun m!1393619 () Bool)

(assert (=> b!1219807 m!1393619))

(assert (=> b!1219329 d!348204))

(assert (=> b!1219329 d!348028))

(declare-fun d!348206 () Bool)

(declare-fun lt!416577 () Int)

(assert (=> d!348206 (>= lt!416577 0)))

(declare-fun e!782971 () Int)

(assert (=> d!348206 (= lt!416577 e!782971)))

(declare-fun c!203948 () Bool)

(assert (=> d!348206 (= c!203948 ((_ is Nil!12480) input!2346))))

(assert (=> d!348206 (= (size!9859 input!2346) lt!416577)))

(declare-fun b!1219808 () Bool)

(assert (=> b!1219808 (= e!782971 0)))

(declare-fun b!1219809 () Bool)

(assert (=> b!1219809 (= e!782971 (+ 1 (size!9859 (t!113428 input!2346))))))

(assert (= (and d!348206 c!203948) b!1219808))

(assert (= (and d!348206 (not c!203948)) b!1219809))

(declare-fun m!1393621 () Bool)

(assert (=> b!1219809 m!1393621))

(assert (=> b!1219329 d!348206))

(declare-fun d!348208 () Bool)

(assert (=> d!348208 true))

(declare-fun order!7575 () Int)

(declare-fun lambda!49194 () Int)

(declare-fun order!7577 () Int)

(declare-fun dynLambda!5444 (Int Int) Int)

(declare-fun dynLambda!5445 (Int Int) Int)

(assert (=> d!348208 (< (dynLambda!5444 order!7575 (toChars!3143 (transformation!2151 (h!17883 rules!2728)))) (dynLambda!5445 order!7577 lambda!49194))))

(assert (=> d!348208 true))

(declare-fun order!7579 () Int)

(declare-fun dynLambda!5446 (Int Int) Int)

(assert (=> d!348208 (< (dynLambda!5446 order!7579 (toValue!3284 (transformation!2151 (h!17883 rules!2728)))) (dynLambda!5445 order!7577 lambda!49194))))

(declare-fun Forall!457 (Int) Bool)

(assert (=> d!348208 (= (semiInverseModEq!788 (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toValue!3284 (transformation!2151 (h!17883 rules!2728)))) (Forall!457 lambda!49194))))

(declare-fun bs!288913 () Bool)

(assert (= bs!288913 d!348208))

(declare-fun m!1393633 () Bool)

(assert (=> bs!288913 m!1393633))

(assert (=> d!347920 d!348208))

(declare-fun d!348216 () Bool)

(declare-fun e!782975 () Bool)

(assert (=> d!348216 e!782975))

(declare-fun c!203950 () Bool)

(declare-fun lt!416581 () tuple2!12344)

(assert (=> d!348216 (= c!203950 (> (size!9860 (_1!7019 lt!416581)) 0))))

(declare-fun e!782976 () tuple2!12344)

(assert (=> d!348216 (= lt!416581 e!782976)))

(declare-fun c!203951 () Bool)

(declare-fun lt!416580 () Option!2513)

(assert (=> d!348216 (= c!203951 ((_ is Some!2512) lt!416580))))

(assert (=> d!348216 (= lt!416580 (maxPrefix!968 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416410))))))

(assert (=> d!348216 (= (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416410))) lt!416581)))

(declare-fun b!1219822 () Bool)

(declare-fun lt!416579 () tuple2!12344)

(assert (=> b!1219822 (= e!782976 (tuple2!12345 (Cons!12481 (_1!7020 (v!20643 lt!416580)) (_1!7019 lt!416579)) (_2!7019 lt!416579)))))

(assert (=> b!1219822 (= lt!416579 (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416580))))))

(declare-fun b!1219823 () Bool)

(declare-fun e!782974 () Bool)

(assert (=> b!1219823 (= e!782974 (not (isEmpty!7430 (_1!7019 lt!416581))))))

(declare-fun b!1219824 () Bool)

(assert (=> b!1219824 (= e!782975 (= (_2!7019 lt!416581) (_2!7020 (v!20643 lt!416410))))))

(declare-fun b!1219825 () Bool)

(assert (=> b!1219825 (= e!782975 e!782974)))

(declare-fun res!548338 () Bool)

(assert (=> b!1219825 (= res!548338 (< (size!9859 (_2!7019 lt!416581)) (size!9859 (_2!7020 (v!20643 lt!416410)))))))

(assert (=> b!1219825 (=> (not res!548338) (not e!782974))))

(declare-fun b!1219826 () Bool)

(assert (=> b!1219826 (= e!782976 (tuple2!12345 Nil!12481 (_2!7020 (v!20643 lt!416410))))))

(assert (= (and d!348216 c!203951) b!1219822))

(assert (= (and d!348216 (not c!203951)) b!1219826))

(assert (= (and d!348216 c!203950) b!1219825))

(assert (= (and d!348216 (not c!203950)) b!1219824))

(assert (= (and b!1219825 res!548338) b!1219823))

(declare-fun m!1393635 () Bool)

(assert (=> d!348216 m!1393635))

(declare-fun m!1393637 () Bool)

(assert (=> d!348216 m!1393637))

(declare-fun m!1393639 () Bool)

(assert (=> b!1219822 m!1393639))

(declare-fun m!1393641 () Bool)

(assert (=> b!1219823 m!1393641))

(declare-fun m!1393643 () Bool)

(assert (=> b!1219825 m!1393643))

(declare-fun m!1393645 () Bool)

(assert (=> b!1219825 m!1393645))

(assert (=> b!1219267 d!348216))

(declare-fun d!348218 () Bool)

(declare-fun charsToBigInt!1 (List!12537) Int)

(assert (=> d!348218 (= (inv!17 (value!69900 (h!17882 tokens!556))) (= (charsToBigInt!1 (text!15981 (value!69900 (h!17882 tokens!556)))) (value!69892 (value!69900 (h!17882 tokens!556)))))))

(declare-fun bs!288914 () Bool)

(assert (= bs!288914 d!348218))

(declare-fun m!1393647 () Bool)

(assert (=> bs!288914 m!1393647))

(assert (=> b!1219298 d!348218))

(declare-fun d!348220 () Bool)

(declare-fun c!203958 () Bool)

(assert (=> d!348220 (= c!203958 ((_ is Node!4083) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))))))

(declare-fun e!782995 () Bool)

(assert (=> d!348220 (= (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))) e!782995)))

(declare-fun b!1219851 () Bool)

(declare-fun inv!16685 (Conc!4083) Bool)

(assert (=> b!1219851 (= e!782995 (inv!16685 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))))))

(declare-fun b!1219852 () Bool)

(declare-fun e!782996 () Bool)

(assert (=> b!1219852 (= e!782995 e!782996)))

(declare-fun res!548351 () Bool)

(assert (=> b!1219852 (= res!548351 (not ((_ is Leaf!6307) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))))))))

(assert (=> b!1219852 (=> res!548351 e!782996)))

(declare-fun b!1219853 () Bool)

(declare-fun inv!16686 (Conc!4083) Bool)

(assert (=> b!1219853 (= e!782996 (inv!16686 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))))))

(assert (= (and d!348220 c!203958) b!1219851))

(assert (= (and d!348220 (not c!203958)) b!1219852))

(assert (= (and b!1219852 (not res!548351)) b!1219853))

(declare-fun m!1393649 () Bool)

(assert (=> b!1219851 m!1393649))

(declare-fun m!1393651 () Bool)

(assert (=> b!1219853 m!1393651))

(assert (=> b!1219302 d!348220))

(assert (=> b!1219327 d!348030))

(assert (=> b!1219327 d!348032))

(assert (=> b!1219327 d!348028))

(declare-fun d!348222 () Bool)

(assert (=> d!348222 (= (inv!16682 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))) (isBalanced!1187 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))))))

(declare-fun bs!288915 () Bool)

(assert (= bs!288915 d!348222))

(declare-fun m!1393653 () Bool)

(assert (=> bs!288915 m!1393653))

(assert (=> tb!66977 d!348222))

(assert (=> b!1219324 d!348028))

(declare-fun d!348224 () Bool)

(declare-fun dynLambda!5447 (Int BalanceConc!8098) TokenValue!2219)

(assert (=> d!348224 (= (apply!2661 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416433))))) (dynLambda!5447 (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416433))))))))

(declare-fun b_lambda!35987 () Bool)

(assert (=> (not b_lambda!35987) (not d!348224)))

(declare-fun t!113503 () Bool)

(declare-fun tb!67025 () Bool)

(assert (=> (and b!1218954 (= (toValue!3284 (transformation!2151 (h!17883 rules!2728))) (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113503) tb!67025))

(declare-fun result!81188 () Bool)

(assert (=> tb!67025 (= result!81188 (inv!21 (dynLambda!5447 (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433))))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416433)))))))))

(declare-fun m!1393661 () Bool)

(assert (=> tb!67025 m!1393661))

(assert (=> d!348224 t!113503))

(declare-fun b_and!83025 () Bool)

(assert (= b_and!82945 (and (=> t!113503 result!81188) b_and!83025)))

(declare-fun t!113507 () Bool)

(declare-fun tb!67029 () Bool)

(assert (=> (and b!1218955 (= (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113507) tb!67029))

(declare-fun result!81196 () Bool)

(assert (= result!81196 result!81188))

(assert (=> d!348224 t!113507))

(declare-fun b_and!83027 () Bool)

(assert (= b_and!82949 (and (=> t!113507 result!81196) b_and!83027)))

(declare-fun t!113509 () Bool)

(declare-fun tb!67031 () Bool)

(assert (=> (and b!1219341 (= (toValue!3284 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113509) tb!67031))

(declare-fun result!81198 () Bool)

(assert (= result!81198 result!81188))

(assert (=> d!348224 t!113509))

(declare-fun b_and!83029 () Bool)

(assert (= b_and!82985 (and (=> t!113509 result!81198) b_and!83029)))

(declare-fun tb!67033 () Bool)

(declare-fun t!113511 () Bool)

(assert (=> (and b!1219361 (= (toValue!3284 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113511) tb!67033))

(declare-fun result!81200 () Bool)

(assert (= result!81200 result!81188))

(assert (=> d!348224 t!113511))

(declare-fun b_and!83033 () Bool)

(assert (= b_and!82989 (and (=> t!113511 result!81200) b_and!83033)))

(assert (=> d!348224 m!1392973))

(declare-fun m!1393665 () Bool)

(assert (=> d!348224 m!1393665))

(assert (=> b!1219324 d!348224))

(declare-fun d!348228 () Bool)

(declare-fun fromListB!689 (List!12538) BalanceConc!8098)

(assert (=> d!348228 (= (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416433)))) (fromListB!689 (originalCharacters!2705 (_1!7020 (get!4104 lt!416433)))))))

(declare-fun bs!288916 () Bool)

(assert (= bs!288916 d!348228))

(declare-fun m!1393669 () Bool)

(assert (=> bs!288916 m!1393669))

(assert (=> b!1219324 d!348228))

(declare-fun d!348232 () Bool)

(declare-fun c!203961 () Bool)

(assert (=> d!348232 (= c!203961 ((_ is Node!4083) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))))))

(declare-fun e!783010 () Bool)

(assert (=> d!348232 (= (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))) e!783010)))

(declare-fun b!1219867 () Bool)

(assert (=> b!1219867 (= e!783010 (inv!16685 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))))))

(declare-fun b!1219868 () Bool)

(declare-fun e!783011 () Bool)

(assert (=> b!1219868 (= e!783010 e!783011)))

(declare-fun res!548357 () Bool)

(assert (=> b!1219868 (= res!548357 (not ((_ is Leaf!6307) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))))))))

(assert (=> b!1219868 (=> res!548357 e!783011)))

(declare-fun b!1219869 () Bool)

(assert (=> b!1219869 (= e!783011 (inv!16686 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))))))

(assert (= (and d!348232 c!203961) b!1219867))

(assert (= (and d!348232 (not c!203961)) b!1219868))

(assert (= (and b!1219868 (not res!548357)) b!1219869))

(declare-fun m!1393671 () Bool)

(assert (=> b!1219867 m!1393671))

(declare-fun m!1393673 () Bool)

(assert (=> b!1219869 m!1393673))

(assert (=> b!1219231 d!348232))

(declare-fun d!348234 () Bool)

(declare-fun e!783013 () Bool)

(assert (=> d!348234 e!783013))

(declare-fun c!203962 () Bool)

(declare-fun lt!416584 () tuple2!12344)

(assert (=> d!348234 (= c!203962 (> (size!9860 (_1!7019 lt!416584)) 0))))

(declare-fun e!783014 () tuple2!12344)

(assert (=> d!348234 (= lt!416584 e!783014)))

(declare-fun c!203963 () Bool)

(declare-fun lt!416583 () Option!2513)

(assert (=> d!348234 (= c!203963 ((_ is Some!2512) lt!416583))))

(assert (=> d!348234 (= lt!416583 (maxPrefix!968 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416404))))))

(assert (=> d!348234 (= (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416404))) lt!416584)))

(declare-fun b!1219870 () Bool)

(declare-fun lt!416582 () tuple2!12344)

(assert (=> b!1219870 (= e!783014 (tuple2!12345 (Cons!12481 (_1!7020 (v!20643 lt!416583)) (_1!7019 lt!416582)) (_2!7019 lt!416582)))))

(assert (=> b!1219870 (= lt!416582 (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416583))))))

(declare-fun b!1219871 () Bool)

(declare-fun e!783012 () Bool)

(assert (=> b!1219871 (= e!783012 (not (isEmpty!7430 (_1!7019 lt!416584))))))

(declare-fun b!1219872 () Bool)

(assert (=> b!1219872 (= e!783013 (= (_2!7019 lt!416584) (_2!7020 (v!20643 lt!416404))))))

(declare-fun b!1219873 () Bool)

(assert (=> b!1219873 (= e!783013 e!783012)))

(declare-fun res!548358 () Bool)

(assert (=> b!1219873 (= res!548358 (< (size!9859 (_2!7019 lt!416584)) (size!9859 (_2!7020 (v!20643 lt!416404)))))))

(assert (=> b!1219873 (=> (not res!548358) (not e!783012))))

(declare-fun b!1219874 () Bool)

(assert (=> b!1219874 (= e!783014 (tuple2!12345 Nil!12481 (_2!7020 (v!20643 lt!416404))))))

(assert (= (and d!348234 c!203963) b!1219870))

(assert (= (and d!348234 (not c!203963)) b!1219874))

(assert (= (and d!348234 c!203962) b!1219873))

(assert (= (and d!348234 (not c!203962)) b!1219872))

(assert (= (and b!1219873 res!548358) b!1219871))

(declare-fun m!1393677 () Bool)

(assert (=> d!348234 m!1393677))

(declare-fun m!1393679 () Bool)

(assert (=> d!348234 m!1393679))

(declare-fun m!1393681 () Bool)

(assert (=> b!1219870 m!1393681))

(declare-fun m!1393683 () Bool)

(assert (=> b!1219871 m!1393683))

(declare-fun m!1393685 () Bool)

(assert (=> b!1219873 m!1393685))

(declare-fun m!1393687 () Bool)

(assert (=> b!1219873 m!1393687))

(assert (=> b!1219250 d!348234))

(declare-fun d!348236 () Bool)

(declare-fun lt!416587 () Bool)

(declare-fun content!1776 (List!12540) (InoxSet Rule!4102))

(assert (=> d!348236 (= lt!416587 (select (content!1776 rules!2728) (rule!3576 (_1!7020 (get!4104 lt!416433)))))))

(declare-fun e!783032 () Bool)

(assert (=> d!348236 (= lt!416587 e!783032)))

(declare-fun res!548363 () Bool)

(assert (=> d!348236 (=> (not res!548363) (not e!783032))))

(assert (=> d!348236 (= res!548363 ((_ is Cons!12482) rules!2728))))

(assert (=> d!348236 (= (contains!2091 rules!2728 (rule!3576 (_1!7020 (get!4104 lt!416433)))) lt!416587)))

(declare-fun b!1219915 () Bool)

(declare-fun e!783033 () Bool)

(assert (=> b!1219915 (= e!783032 e!783033)))

(declare-fun res!548364 () Bool)

(assert (=> b!1219915 (=> res!548364 e!783033)))

(assert (=> b!1219915 (= res!548364 (= (h!17883 rules!2728) (rule!3576 (_1!7020 (get!4104 lt!416433)))))))

(declare-fun b!1219916 () Bool)

(assert (=> b!1219916 (= e!783033 (contains!2091 (t!113430 rules!2728) (rule!3576 (_1!7020 (get!4104 lt!416433)))))))

(assert (= (and d!348236 res!548363) b!1219915))

(assert (= (and b!1219915 (not res!548364)) b!1219916))

(declare-fun m!1393695 () Bool)

(assert (=> d!348236 m!1393695))

(declare-fun m!1393697 () Bool)

(assert (=> d!348236 m!1393697))

(declare-fun m!1393699 () Bool)

(assert (=> b!1219916 m!1393699))

(assert (=> b!1219325 d!348236))

(assert (=> b!1219325 d!348028))

(declare-fun lt!416588 () List!12538)

(declare-fun b!1219928 () Bool)

(declare-fun e!783036 () Bool)

(assert (=> b!1219928 (= e!783036 (or (not (= (_2!7020 lt!416329) Nil!12480)) (= lt!416588 (t!113428 lt!416326))))))

(declare-fun b!1219927 () Bool)

(declare-fun res!548365 () Bool)

(assert (=> b!1219927 (=> (not res!548365) (not e!783036))))

(assert (=> b!1219927 (= res!548365 (= (size!9859 lt!416588) (+ (size!9859 (t!113428 lt!416326)) (size!9859 (_2!7020 lt!416329)))))))

(declare-fun b!1219925 () Bool)

(declare-fun e!783037 () List!12538)

(assert (=> b!1219925 (= e!783037 (_2!7020 lt!416329))))

(declare-fun b!1219926 () Bool)

(assert (=> b!1219926 (= e!783037 (Cons!12480 (h!17881 (t!113428 lt!416326)) (++!3186 (t!113428 (t!113428 lt!416326)) (_2!7020 lt!416329))))))

(declare-fun d!348238 () Bool)

(assert (=> d!348238 e!783036))

(declare-fun res!548366 () Bool)

(assert (=> d!348238 (=> (not res!548366) (not e!783036))))

(assert (=> d!348238 (= res!548366 (= (content!1774 lt!416588) ((_ map or) (content!1774 (t!113428 lt!416326)) (content!1774 (_2!7020 lt!416329)))))))

(assert (=> d!348238 (= lt!416588 e!783037)))

(declare-fun c!203964 () Bool)

(assert (=> d!348238 (= c!203964 ((_ is Nil!12480) (t!113428 lt!416326)))))

(assert (=> d!348238 (= (++!3186 (t!113428 lt!416326) (_2!7020 lt!416329)) lt!416588)))

(assert (= (and d!348238 c!203964) b!1219925))

(assert (= (and d!348238 (not c!203964)) b!1219926))

(assert (= (and d!348238 res!548366) b!1219927))

(assert (= (and b!1219927 res!548365) b!1219928))

(declare-fun m!1393701 () Bool)

(assert (=> b!1219927 m!1393701))

(assert (=> b!1219927 m!1393163))

(assert (=> b!1219927 m!1392915))

(declare-fun m!1393703 () Bool)

(assert (=> b!1219926 m!1393703))

(declare-fun m!1393705 () Bool)

(assert (=> d!348238 m!1393705))

(declare-fun m!1393707 () Bool)

(assert (=> d!348238 m!1393707))

(assert (=> d!348238 m!1392927))

(assert (=> b!1219281 d!348238))

(declare-fun d!348240 () Bool)

(declare-fun lt!416589 () Int)

(assert (=> d!348240 (>= lt!416589 0)))

(declare-fun e!783046 () Int)

(assert (=> d!348240 (= lt!416589 e!783046)))

(declare-fun c!203965 () Bool)

(assert (=> d!348240 (= c!203965 ((_ is Nil!12480) (originalCharacters!2705 (h!17882 tokens!556))))))

(assert (=> d!348240 (= (size!9859 (originalCharacters!2705 (h!17882 tokens!556))) lt!416589)))

(declare-fun b!1219941 () Bool)

(assert (=> b!1219941 (= e!783046 0)))

(declare-fun b!1219942 () Bool)

(assert (=> b!1219942 (= e!783046 (+ 1 (size!9859 (t!113428 (originalCharacters!2705 (h!17882 tokens!556))))))))

(assert (= (and d!348240 c!203965) b!1219941))

(assert (= (and d!348240 (not c!203965)) b!1219942))

(declare-fun m!1393709 () Bool)

(assert (=> b!1219942 m!1393709))

(assert (=> b!1219226 d!348240))

(declare-fun d!348242 () Bool)

(declare-fun lt!416590 () Int)

(assert (=> d!348242 (>= lt!416590 0)))

(declare-fun e!783047 () Int)

(assert (=> d!348242 (= lt!416590 e!783047)))

(declare-fun c!203966 () Bool)

(assert (=> d!348242 (= c!203966 ((_ is Nil!12480) (_2!7019 lt!416402)))))

(assert (=> d!348242 (= (size!9859 (_2!7019 lt!416402)) lt!416590)))

(declare-fun b!1219943 () Bool)

(assert (=> b!1219943 (= e!783047 0)))

(declare-fun b!1219944 () Bool)

(assert (=> b!1219944 (= e!783047 (+ 1 (size!9859 (t!113428 (_2!7019 lt!416402)))))))

(assert (= (and d!348242 c!203966) b!1219943))

(assert (= (and d!348242 (not c!203966)) b!1219944))

(declare-fun m!1393711 () Bool)

(assert (=> b!1219944 m!1393711))

(assert (=> b!1219248 d!348242))

(assert (=> b!1219248 d!348206))

(declare-fun d!348244 () Bool)

(declare-fun lt!416591 () Bool)

(assert (=> d!348244 (= lt!416591 (isEmpty!7428 (list!4606 (_2!7022 lt!416389))))))

(assert (=> d!348244 (= lt!416591 (isEmpty!7436 (c!203751 (_2!7022 lt!416389))))))

(assert (=> d!348244 (= (isEmpty!7433 (_2!7022 lt!416389)) lt!416591)))

(declare-fun bs!288918 () Bool)

(assert (= bs!288918 d!348244))

(declare-fun m!1393713 () Bool)

(assert (=> bs!288918 m!1393713))

(assert (=> bs!288918 m!1393713))

(declare-fun m!1393715 () Bool)

(assert (=> bs!288918 m!1393715))

(declare-fun m!1393717 () Bool)

(assert (=> bs!288918 m!1393717))

(assert (=> b!1219177 d!348244))

(declare-fun d!348246 () Bool)

(assert (=> d!348246 true))

(declare-fun order!7581 () Int)

(declare-fun lambda!49197 () Int)

(declare-fun dynLambda!5448 (Int Int) Int)

(assert (=> d!348246 (< (dynLambda!5446 order!7579 (toValue!3284 (transformation!2151 (h!17883 rules!2728)))) (dynLambda!5448 order!7581 lambda!49197))))

(declare-fun Forall2!368 (Int) Bool)

(assert (=> d!348246 (= (equivClasses!755 (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toValue!3284 (transformation!2151 (h!17883 rules!2728)))) (Forall2!368 lambda!49197))))

(declare-fun bs!288919 () Bool)

(assert (= bs!288919 d!348246))

(declare-fun m!1393737 () Bool)

(assert (=> bs!288919 m!1393737))

(assert (=> b!1219234 d!348246))

(declare-fun d!348248 () Bool)

(declare-fun nullableFct!236 (Regex!3421) Bool)

(assert (=> d!348248 (= (nullable!1060 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (nullableFct!236 (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun bs!288920 () Bool)

(assert (= bs!288920 d!348248))

(declare-fun m!1393739 () Bool)

(assert (=> bs!288920 m!1393739))

(assert (=> b!1219214 d!348248))

(declare-fun bs!288921 () Bool)

(declare-fun d!348250 () Bool)

(assert (= bs!288921 (and d!348250 d!348208)))

(declare-fun lambda!49198 () Int)

(assert (=> bs!288921 (= (and (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toChars!3143 (transformation!2151 (h!17883 rules!2728)))) (= (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toValue!3284 (transformation!2151 (h!17883 rules!2728))))) (= lambda!49198 lambda!49194))))

(assert (=> d!348250 true))

(assert (=> d!348250 (< (dynLambda!5444 order!7575 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) (dynLambda!5445 order!7577 lambda!49198))))

(assert (=> d!348250 true))

(assert (=> d!348250 (< (dynLambda!5446 order!7579 (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) (dynLambda!5445 order!7577 lambda!49198))))

(assert (=> d!348250 (= (semiInverseModEq!788 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) (Forall!457 lambda!49198))))

(declare-fun bs!288922 () Bool)

(assert (= bs!288922 d!348250))

(declare-fun m!1393741 () Bool)

(assert (=> bs!288922 m!1393741))

(assert (=> d!347956 d!348250))

(declare-fun b!1219965 () Bool)

(declare-fun e!783060 () Bool)

(assert (=> b!1219965 (= e!783060 (inv!16 (value!69900 (h!17882 (t!113429 tokens!556)))))))

(declare-fun b!1219966 () Bool)

(declare-fun e!783061 () Bool)

(assert (=> b!1219966 (= e!783061 (inv!17 (value!69900 (h!17882 (t!113429 tokens!556)))))))

(declare-fun d!348252 () Bool)

(declare-fun c!203967 () Bool)

(assert (=> d!348252 (= c!203967 ((_ is IntegerValue!6657) (value!69900 (h!17882 (t!113429 tokens!556)))))))

(assert (=> d!348252 (= (inv!21 (value!69900 (h!17882 (t!113429 tokens!556)))) e!783060)))

(declare-fun b!1219967 () Bool)

(declare-fun e!783062 () Bool)

(assert (=> b!1219967 (= e!783062 (inv!15 (value!69900 (h!17882 (t!113429 tokens!556)))))))

(declare-fun b!1219968 () Bool)

(declare-fun res!548369 () Bool)

(assert (=> b!1219968 (=> res!548369 e!783062)))

(assert (=> b!1219968 (= res!548369 (not ((_ is IntegerValue!6659) (value!69900 (h!17882 (t!113429 tokens!556))))))))

(assert (=> b!1219968 (= e!783061 e!783062)))

(declare-fun b!1219969 () Bool)

(assert (=> b!1219969 (= e!783060 e!783061)))

(declare-fun c!203968 () Bool)

(assert (=> b!1219969 (= c!203968 ((_ is IntegerValue!6658) (value!69900 (h!17882 (t!113429 tokens!556)))))))

(assert (= (and d!348252 c!203967) b!1219965))

(assert (= (and d!348252 (not c!203967)) b!1219969))

(assert (= (and b!1219969 c!203968) b!1219966))

(assert (= (and b!1219969 (not c!203968)) b!1219968))

(assert (= (and b!1219968 (not res!548369)) b!1219967))

(declare-fun m!1393743 () Bool)

(assert (=> b!1219965 m!1393743))

(declare-fun m!1393745 () Bool)

(assert (=> b!1219966 m!1393745))

(declare-fun m!1393747 () Bool)

(assert (=> b!1219967 m!1393747))

(assert (=> b!1219359 d!348252))

(assert (=> b!1219211 d!348174))

(assert (=> d!347914 d!348010))

(declare-fun b!1219988 () Bool)

(declare-fun res!548382 () Bool)

(declare-fun e!783077 () Bool)

(assert (=> b!1219988 (=> res!548382 e!783077)))

(assert (=> b!1219988 (= res!548382 (not ((_ is Concat!5641) (regex!2151 (rule!3576 (_1!7020 lt!416329))))))))

(declare-fun e!783079 () Bool)

(assert (=> b!1219988 (= e!783079 e!783077)))

(declare-fun bm!84658 () Bool)

(declare-fun call!84665 () Bool)

(declare-fun call!84663 () Bool)

(assert (=> bm!84658 (= call!84665 call!84663)))

(declare-fun b!1219989 () Bool)

(declare-fun e!783081 () Bool)

(assert (=> b!1219989 (= e!783081 e!783079)))

(declare-fun c!203973 () Bool)

(assert (=> b!1219989 (= c!203973 ((_ is Union!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun b!1219990 () Bool)

(declare-fun res!548381 () Bool)

(declare-fun e!783080 () Bool)

(assert (=> b!1219990 (=> (not res!548381) (not e!783080))))

(declare-fun call!84664 () Bool)

(assert (=> b!1219990 (= res!548381 call!84664)))

(assert (=> b!1219990 (= e!783079 e!783080)))

(declare-fun b!1219991 () Bool)

(assert (=> b!1219991 (= e!783080 call!84665)))

(declare-fun d!348254 () Bool)

(declare-fun res!548383 () Bool)

(declare-fun e!783082 () Bool)

(assert (=> d!348254 (=> res!548383 e!783082)))

(assert (=> d!348254 (= res!548383 ((_ is ElementMatch!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(assert (=> d!348254 (= (validRegex!1457 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) e!783082)))

(declare-fun b!1219992 () Bool)

(declare-fun e!783078 () Bool)

(assert (=> b!1219992 (= e!783078 call!84663)))

(declare-fun b!1219993 () Bool)

(assert (=> b!1219993 (= e!783082 e!783081)))

(declare-fun c!203974 () Bool)

(assert (=> b!1219993 (= c!203974 ((_ is Star!3421) (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))

(declare-fun b!1219994 () Bool)

(assert (=> b!1219994 (= e!783081 e!783078)))

(declare-fun res!548384 () Bool)

(assert (=> b!1219994 (= res!548384 (not (nullable!1060 (reg!3750 (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))))

(assert (=> b!1219994 (=> (not res!548384) (not e!783078))))

(declare-fun bm!84659 () Bool)

(assert (=> bm!84659 (= call!84664 (validRegex!1457 (ite c!203973 (regOne!7355 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (regTwo!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329)))))))))

(declare-fun b!1219995 () Bool)

(declare-fun e!783083 () Bool)

(assert (=> b!1219995 (= e!783077 e!783083)))

(declare-fun res!548380 () Bool)

(assert (=> b!1219995 (=> (not res!548380) (not e!783083))))

(assert (=> b!1219995 (= res!548380 call!84665)))

(declare-fun bm!84660 () Bool)

(assert (=> bm!84660 (= call!84663 (validRegex!1457 (ite c!203974 (reg!3750 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (ite c!203973 (regTwo!7355 (regex!2151 (rule!3576 (_1!7020 lt!416329)))) (regOne!7354 (regex!2151 (rule!3576 (_1!7020 lt!416329))))))))))

(declare-fun b!1219996 () Bool)

(assert (=> b!1219996 (= e!783083 call!84664)))

(assert (= (and d!348254 (not res!548383)) b!1219993))

(assert (= (and b!1219993 c!203974) b!1219994))

(assert (= (and b!1219993 (not c!203974)) b!1219989))

(assert (= (and b!1219994 res!548384) b!1219992))

(assert (= (and b!1219989 c!203973) b!1219990))

(assert (= (and b!1219989 (not c!203973)) b!1219988))

(assert (= (and b!1219990 res!548381) b!1219991))

(assert (= (and b!1219988 (not res!548382)) b!1219995))

(assert (= (and b!1219995 res!548380) b!1219996))

(assert (= (or b!1219991 b!1219995) bm!84658))

(assert (= (or b!1219990 b!1219996) bm!84659))

(assert (= (or b!1219992 bm!84658) bm!84660))

(declare-fun m!1393749 () Bool)

(assert (=> b!1219994 m!1393749))

(declare-fun m!1393751 () Bool)

(assert (=> bm!84659 m!1393751))

(declare-fun m!1393753 () Bool)

(assert (=> bm!84660 m!1393753))

(assert (=> d!347914 d!348254))

(declare-fun d!348256 () Bool)

(assert (=> d!348256 (= (list!4606 lt!416418) (list!4610 (c!203751 lt!416418)))))

(declare-fun bs!288923 () Bool)

(assert (= bs!288923 d!348256))

(declare-fun m!1393755 () Bool)

(assert (=> bs!288923 m!1393755))

(assert (=> d!347944 d!348256))

(declare-fun d!348258 () Bool)

(declare-fun e!783085 () Bool)

(assert (=> d!348258 e!783085))

(declare-fun c!203975 () Bool)

(declare-fun lt!416594 () tuple2!12344)

(assert (=> d!348258 (= c!203975 (> (size!9860 (_1!7019 lt!416594)) 0))))

(declare-fun e!783086 () tuple2!12344)

(assert (=> d!348258 (= lt!416594 e!783086)))

(declare-fun c!203976 () Bool)

(declare-fun lt!416593 () Option!2513)

(assert (=> d!348258 (= c!203976 ((_ is Some!2512) lt!416593))))

(assert (=> d!348258 (= lt!416593 (maxPrefix!968 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416401))))))

(assert (=> d!348258 (= (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416401))) lt!416594)))

(declare-fun b!1219997 () Bool)

(declare-fun lt!416592 () tuple2!12344)

(assert (=> b!1219997 (= e!783086 (tuple2!12345 (Cons!12481 (_1!7020 (v!20643 lt!416593)) (_1!7019 lt!416592)) (_2!7019 lt!416592)))))

(assert (=> b!1219997 (= lt!416592 (lexList!476 thiss!20528 rules!2728 (_2!7020 (v!20643 lt!416593))))))

(declare-fun b!1219998 () Bool)

(declare-fun e!783084 () Bool)

(assert (=> b!1219998 (= e!783084 (not (isEmpty!7430 (_1!7019 lt!416594))))))

(declare-fun b!1219999 () Bool)

(assert (=> b!1219999 (= e!783085 (= (_2!7019 lt!416594) (_2!7020 (v!20643 lt!416401))))))

(declare-fun b!1220000 () Bool)

(assert (=> b!1220000 (= e!783085 e!783084)))

(declare-fun res!548385 () Bool)

(assert (=> b!1220000 (= res!548385 (< (size!9859 (_2!7019 lt!416594)) (size!9859 (_2!7020 (v!20643 lt!416401)))))))

(assert (=> b!1220000 (=> (not res!548385) (not e!783084))))

(declare-fun b!1220001 () Bool)

(assert (=> b!1220001 (= e!783086 (tuple2!12345 Nil!12481 (_2!7020 (v!20643 lt!416401))))))

(assert (= (and d!348258 c!203976) b!1219997))

(assert (= (and d!348258 (not c!203976)) b!1220001))

(assert (= (and d!348258 c!203975) b!1220000))

(assert (= (and d!348258 (not c!203975)) b!1219999))

(assert (= (and b!1220000 res!548385) b!1219998))

(declare-fun m!1393757 () Bool)

(assert (=> d!348258 m!1393757))

(declare-fun m!1393759 () Bool)

(assert (=> d!348258 m!1393759))

(declare-fun m!1393761 () Bool)

(assert (=> b!1219997 m!1393761))

(declare-fun m!1393763 () Bool)

(assert (=> b!1219998 m!1393763))

(declare-fun m!1393765 () Bool)

(assert (=> b!1220000 m!1393765))

(declare-fun m!1393767 () Bool)

(assert (=> b!1220000 m!1393767))

(assert (=> b!1219245 d!348258))

(declare-fun d!348260 () Bool)

(declare-fun lt!416595 () Int)

(assert (=> d!348260 (>= lt!416595 0)))

(declare-fun e!783087 () Int)

(assert (=> d!348260 (= lt!416595 e!783087)))

(declare-fun c!203977 () Bool)

(assert (=> d!348260 (= c!203977 ((_ is Nil!12481) (_1!7019 lt!416405)))))

(assert (=> d!348260 (= (size!9860 (_1!7019 lt!416405)) lt!416595)))

(declare-fun b!1220002 () Bool)

(assert (=> b!1220002 (= e!783087 0)))

(declare-fun b!1220003 () Bool)

(assert (=> b!1220003 (= e!783087 (+ 1 (size!9860 (t!113429 (_1!7019 lt!416405)))))))

(assert (= (and d!348260 c!203977) b!1220002))

(assert (= (and d!348260 (not c!203977)) b!1220003))

(declare-fun m!1393769 () Bool)

(assert (=> b!1220003 m!1393769))

(assert (=> d!347924 d!348260))

(declare-fun b!1220004 () Bool)

(declare-fun e!783090 () Bool)

(declare-fun e!783088 () Bool)

(assert (=> b!1220004 (= e!783090 e!783088)))

(declare-fun res!548386 () Bool)

(assert (=> b!1220004 (=> (not res!548386) (not e!783088))))

(declare-fun lt!416600 () Option!2513)

(assert (=> b!1220004 (= res!548386 (isDefined!2149 lt!416600))))

(declare-fun b!1220005 () Bool)

(declare-fun e!783089 () Option!2513)

(declare-fun call!84666 () Option!2513)

(assert (=> b!1220005 (= e!783089 call!84666)))

(declare-fun b!1220006 () Bool)

(declare-fun res!548388 () Bool)

(assert (=> b!1220006 (=> (not res!548388) (not e!783088))))

(assert (=> b!1220006 (= res!548388 (matchR!1536 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416600)))) (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416600))))))))

(declare-fun b!1220007 () Bool)

(declare-fun res!548387 () Bool)

(assert (=> b!1220007 (=> (not res!548387) (not e!783088))))

(assert (=> b!1220007 (= res!548387 (= (value!69900 (_1!7020 (get!4104 lt!416600))) (apply!2661 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416600)))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416600)))))))))

(declare-fun bm!84661 () Bool)

(assert (=> bm!84661 (= call!84666 (maxPrefixOneRule!557 thiss!20528 (h!17883 rules!2728) lt!416333))))

(declare-fun b!1220008 () Bool)

(assert (=> b!1220008 (= e!783088 (contains!2091 rules!2728 (rule!3576 (_1!7020 (get!4104 lt!416600)))))))

(declare-fun d!348262 () Bool)

(assert (=> d!348262 e!783090))

(declare-fun res!548392 () Bool)

(assert (=> d!348262 (=> res!548392 e!783090)))

(assert (=> d!348262 (= res!548392 (isEmpty!7434 lt!416600))))

(assert (=> d!348262 (= lt!416600 e!783089)))

(declare-fun c!203978 () Bool)

(assert (=> d!348262 (= c!203978 (and ((_ is Cons!12482) rules!2728) ((_ is Nil!12482) (t!113430 rules!2728))))))

(declare-fun lt!416597 () Unit!18728)

(declare-fun lt!416599 () Unit!18728)

(assert (=> d!348262 (= lt!416597 lt!416599)))

(assert (=> d!348262 (isPrefix!1038 lt!416333 lt!416333)))

(assert (=> d!348262 (= lt!416599 (lemmaIsPrefixRefl!731 lt!416333 lt!416333))))

(assert (=> d!348262 (rulesValidInductive!674 thiss!20528 rules!2728)))

(assert (=> d!348262 (= (maxPrefix!968 thiss!20528 rules!2728 lt!416333) lt!416600)))

(declare-fun b!1220009 () Bool)

(declare-fun res!548390 () Bool)

(assert (=> b!1220009 (=> (not res!548390) (not e!783088))))

(assert (=> b!1220009 (= res!548390 (= (++!3186 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416600)))) (_2!7020 (get!4104 lt!416600))) lt!416333))))

(declare-fun b!1220010 () Bool)

(declare-fun res!548391 () Bool)

(assert (=> b!1220010 (=> (not res!548391) (not e!783088))))

(assert (=> b!1220010 (= res!548391 (= (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416600)))) (originalCharacters!2705 (_1!7020 (get!4104 lt!416600)))))))

(declare-fun b!1220011 () Bool)

(declare-fun lt!416596 () Option!2513)

(declare-fun lt!416598 () Option!2513)

(assert (=> b!1220011 (= e!783089 (ite (and ((_ is None!2512) lt!416596) ((_ is None!2512) lt!416598)) None!2512 (ite ((_ is None!2512) lt!416598) lt!416596 (ite ((_ is None!2512) lt!416596) lt!416598 (ite (>= (size!9854 (_1!7020 (v!20643 lt!416596))) (size!9854 (_1!7020 (v!20643 lt!416598)))) lt!416596 lt!416598)))))))

(assert (=> b!1220011 (= lt!416596 call!84666)))

(assert (=> b!1220011 (= lt!416598 (maxPrefix!968 thiss!20528 (t!113430 rules!2728) lt!416333))))

(declare-fun b!1220012 () Bool)

(declare-fun res!548389 () Bool)

(assert (=> b!1220012 (=> (not res!548389) (not e!783088))))

(assert (=> b!1220012 (= res!548389 (< (size!9859 (_2!7020 (get!4104 lt!416600))) (size!9859 lt!416333)))))

(assert (= (and d!348262 c!203978) b!1220005))

(assert (= (and d!348262 (not c!203978)) b!1220011))

(assert (= (or b!1220005 b!1220011) bm!84661))

(assert (= (and d!348262 (not res!548392)) b!1220004))

(assert (= (and b!1220004 res!548386) b!1220010))

(assert (= (and b!1220010 res!548391) b!1220012))

(assert (= (and b!1220012 res!548389) b!1220009))

(assert (= (and b!1220009 res!548390) b!1220007))

(assert (= (and b!1220007 res!548387) b!1220006))

(assert (= (and b!1220006 res!548388) b!1220008))

(declare-fun m!1393771 () Bool)

(assert (=> b!1220004 m!1393771))

(declare-fun m!1393773 () Bool)

(assert (=> b!1220008 m!1393773))

(declare-fun m!1393775 () Bool)

(assert (=> b!1220008 m!1393775))

(declare-fun m!1393777 () Bool)

(assert (=> b!1220011 m!1393777))

(assert (=> b!1220012 m!1393773))

(declare-fun m!1393779 () Bool)

(assert (=> b!1220012 m!1393779))

(assert (=> b!1220012 m!1392889))

(assert (=> b!1220009 m!1393773))

(declare-fun m!1393781 () Bool)

(assert (=> b!1220009 m!1393781))

(assert (=> b!1220009 m!1393781))

(declare-fun m!1393783 () Bool)

(assert (=> b!1220009 m!1393783))

(assert (=> b!1220009 m!1393783))

(declare-fun m!1393785 () Bool)

(assert (=> b!1220009 m!1393785))

(assert (=> b!1220010 m!1393773))

(assert (=> b!1220010 m!1393781))

(assert (=> b!1220010 m!1393781))

(assert (=> b!1220010 m!1393783))

(declare-fun m!1393787 () Bool)

(assert (=> bm!84661 m!1393787))

(assert (=> b!1220007 m!1393773))

(declare-fun m!1393789 () Bool)

(assert (=> b!1220007 m!1393789))

(assert (=> b!1220007 m!1393789))

(declare-fun m!1393791 () Bool)

(assert (=> b!1220007 m!1393791))

(declare-fun m!1393793 () Bool)

(assert (=> d!348262 m!1393793))

(declare-fun m!1393795 () Bool)

(assert (=> d!348262 m!1393795))

(declare-fun m!1393797 () Bool)

(assert (=> d!348262 m!1393797))

(assert (=> d!348262 m!1392983))

(assert (=> b!1220006 m!1393773))

(assert (=> b!1220006 m!1393781))

(assert (=> b!1220006 m!1393781))

(assert (=> b!1220006 m!1393783))

(assert (=> b!1220006 m!1393783))

(declare-fun m!1393799 () Bool)

(assert (=> b!1220006 m!1393799))

(assert (=> d!347924 d!348262))

(declare-fun b!1220021 () Bool)

(declare-fun e!783095 () List!12538)

(assert (=> b!1220021 (= e!783095 Nil!12480)))

(declare-fun b!1220022 () Bool)

(declare-fun e!783096 () List!12538)

(assert (=> b!1220022 (= e!783095 e!783096)))

(declare-fun c!203984 () Bool)

(assert (=> b!1220022 (= c!203984 ((_ is Leaf!6307) (c!203751 lt!416330)))))

(declare-fun b!1220024 () Bool)

(assert (=> b!1220024 (= e!783096 (++!3186 (list!4610 (left!10750 (c!203751 lt!416330))) (list!4610 (right!11080 (c!203751 lt!416330)))))))

(declare-fun d!348264 () Bool)

(declare-fun c!203983 () Bool)

(assert (=> d!348264 (= c!203983 ((_ is Empty!4083) (c!203751 lt!416330)))))

(assert (=> d!348264 (= (list!4610 (c!203751 lt!416330)) e!783095)))

(declare-fun b!1220023 () Bool)

(declare-fun list!4613 (IArray!8171) List!12538)

(assert (=> b!1220023 (= e!783096 (list!4613 (xs!6794 (c!203751 lt!416330))))))

(assert (= (and d!348264 c!203983) b!1220021))

(assert (= (and d!348264 (not c!203983)) b!1220022))

(assert (= (and b!1220022 c!203984) b!1220023))

(assert (= (and b!1220022 (not c!203984)) b!1220024))

(declare-fun m!1393801 () Bool)

(assert (=> b!1220024 m!1393801))

(declare-fun m!1393803 () Bool)

(assert (=> b!1220024 m!1393803))

(assert (=> b!1220024 m!1393801))

(assert (=> b!1220024 m!1393803))

(declare-fun m!1393805 () Bool)

(assert (=> b!1220024 m!1393805))

(declare-fun m!1393807 () Bool)

(assert (=> b!1220023 m!1393807))

(assert (=> d!347948 d!348264))

(declare-fun b!1220025 () Bool)

(declare-fun e!783098 () List!12539)

(assert (=> b!1220025 (= e!783098 (_1!7019 lt!416331))))

(declare-fun d!348266 () Bool)

(declare-fun e!783097 () Bool)

(assert (=> d!348266 e!783097))

(declare-fun res!548394 () Bool)

(assert (=> d!348266 (=> (not res!548394) (not e!783097))))

(declare-fun lt!416601 () List!12539)

(assert (=> d!348266 (= res!548394 (= (content!1773 lt!416601) ((_ map or) (content!1773 (t!113429 lt!416334)) (content!1773 (_1!7019 lt!416331)))))))

(assert (=> d!348266 (= lt!416601 e!783098)))

(declare-fun c!203985 () Bool)

(assert (=> d!348266 (= c!203985 ((_ is Nil!12481) (t!113429 lt!416334)))))

(assert (=> d!348266 (= (++!3187 (t!113429 lt!416334) (_1!7019 lt!416331)) lt!416601)))

(declare-fun b!1220026 () Bool)

(assert (=> b!1220026 (= e!783098 (Cons!12481 (h!17882 (t!113429 lt!416334)) (++!3187 (t!113429 (t!113429 lt!416334)) (_1!7019 lt!416331))))))

(declare-fun b!1220027 () Bool)

(declare-fun res!548393 () Bool)

(assert (=> b!1220027 (=> (not res!548393) (not e!783097))))

(assert (=> b!1220027 (= res!548393 (= (size!9860 lt!416601) (+ (size!9860 (t!113429 lt!416334)) (size!9860 (_1!7019 lt!416331)))))))

(declare-fun b!1220028 () Bool)

(assert (=> b!1220028 (= e!783097 (or (not (= (_1!7019 lt!416331) Nil!12481)) (= lt!416601 (t!113429 lt!416334))))))

(assert (= (and d!348266 c!203985) b!1220025))

(assert (= (and d!348266 (not c!203985)) b!1220026))

(assert (= (and d!348266 res!548394) b!1220027))

(assert (= (and b!1220027 res!548393) b!1220028))

(declare-fun m!1393809 () Bool)

(assert (=> d!348266 m!1393809))

(assert (=> d!348266 m!1393205))

(assert (=> d!348266 m!1392895))

(declare-fun m!1393811 () Bool)

(assert (=> b!1220026 m!1393811))

(declare-fun m!1393813 () Bool)

(assert (=> b!1220027 m!1393813))

(assert (=> b!1220027 m!1393589))

(assert (=> b!1220027 m!1392903))

(assert (=> b!1219264 d!348266))

(declare-fun d!348268 () Bool)

(declare-fun lt!416602 () Int)

(assert (=> d!348268 (>= lt!416602 0)))

(declare-fun e!783099 () Int)

(assert (=> d!348268 (= lt!416602 e!783099)))

(declare-fun c!203986 () Bool)

(assert (=> d!348268 (= c!203986 ((_ is Nil!12480) (_2!7019 lt!416411)))))

(assert (=> d!348268 (= (size!9859 (_2!7019 lt!416411)) lt!416602)))

(declare-fun b!1220029 () Bool)

(assert (=> b!1220029 (= e!783099 0)))

(declare-fun b!1220030 () Bool)

(assert (=> b!1220030 (= e!783099 (+ 1 (size!9859 (t!113428 (_2!7019 lt!416411)))))))

(assert (= (and d!348268 c!203986) b!1220029))

(assert (= (and d!348268 (not c!203986)) b!1220030))

(declare-fun m!1393815 () Bool)

(assert (=> b!1220030 m!1393815))

(assert (=> b!1219270 d!348268))

(assert (=> b!1219270 d!348038))

(declare-fun d!348270 () Bool)

(declare-fun c!203989 () Bool)

(assert (=> d!348270 (= c!203989 ((_ is Nil!12480) lt!416414))))

(declare-fun e!783102 () (InoxSet C!7160))

(assert (=> d!348270 (= (content!1774 lt!416414) e!783102)))

(declare-fun b!1220035 () Bool)

(assert (=> b!1220035 (= e!783102 ((as const (Array C!7160 Bool)) false))))

(declare-fun b!1220036 () Bool)

(assert (=> b!1220036 (= e!783102 ((_ map or) (store ((as const (Array C!7160 Bool)) false) (h!17881 lt!416414) true) (content!1774 (t!113428 lt!416414))))))

(assert (= (and d!348270 c!203989) b!1220035))

(assert (= (and d!348270 (not c!203989)) b!1220036))

(declare-fun m!1393817 () Bool)

(assert (=> b!1220036 m!1393817))

(declare-fun m!1393819 () Bool)

(assert (=> b!1220036 m!1393819))

(assert (=> d!347934 d!348270))

(declare-fun d!348272 () Bool)

(declare-fun c!203990 () Bool)

(assert (=> d!348272 (= c!203990 ((_ is Nil!12480) lt!416326))))

(declare-fun e!783103 () (InoxSet C!7160))

(assert (=> d!348272 (= (content!1774 lt!416326) e!783103)))

(declare-fun b!1220037 () Bool)

(assert (=> b!1220037 (= e!783103 ((as const (Array C!7160 Bool)) false))))

(declare-fun b!1220038 () Bool)

(assert (=> b!1220038 (= e!783103 ((_ map or) (store ((as const (Array C!7160 Bool)) false) (h!17881 lt!416326) true) (content!1774 (t!113428 lt!416326))))))

(assert (= (and d!348272 c!203990) b!1220037))

(assert (= (and d!348272 (not c!203990)) b!1220038))

(declare-fun m!1393821 () Bool)

(assert (=> b!1220038 m!1393821))

(assert (=> b!1220038 m!1393707))

(assert (=> d!347934 d!348272))

(declare-fun d!348274 () Bool)

(declare-fun c!203991 () Bool)

(assert (=> d!348274 (= c!203991 ((_ is Nil!12480) (_2!7020 lt!416329)))))

(declare-fun e!783104 () (InoxSet C!7160))

(assert (=> d!348274 (= (content!1774 (_2!7020 lt!416329)) e!783104)))

(declare-fun b!1220039 () Bool)

(assert (=> b!1220039 (= e!783104 ((as const (Array C!7160 Bool)) false))))

(declare-fun b!1220040 () Bool)

(assert (=> b!1220040 (= e!783104 ((_ map or) (store ((as const (Array C!7160 Bool)) false) (h!17881 (_2!7020 lt!416329)) true) (content!1774 (t!113428 (_2!7020 lt!416329)))))))

(assert (= (and d!348274 c!203991) b!1220039))

(assert (= (and d!348274 (not c!203991)) b!1220040))

(declare-fun m!1393823 () Bool)

(assert (=> b!1220040 m!1393823))

(declare-fun m!1393825 () Bool)

(assert (=> b!1220040 m!1393825))

(assert (=> d!347934 d!348274))

(assert (=> d!347870 d!348016))

(declare-fun d!348276 () Bool)

(declare-fun lt!416605 () Int)

(assert (=> d!348276 (= lt!416605 (size!9860 (list!4609 (_1!7022 lt!416389))))))

(declare-fun size!9864 (Conc!4085) Int)

(assert (=> d!348276 (= lt!416605 (size!9864 (c!203822 (_1!7022 lt!416389))))))

(assert (=> d!348276 (= (size!9858 (_1!7022 lt!416389)) lt!416605)))

(declare-fun bs!288924 () Bool)

(assert (= bs!288924 d!348276))

(assert (=> bs!288924 m!1393215))

(assert (=> bs!288924 m!1393215))

(declare-fun m!1393827 () Bool)

(assert (=> bs!288924 m!1393827))

(declare-fun m!1393829 () Bool)

(assert (=> bs!288924 m!1393829))

(assert (=> d!347870 d!348276))

(assert (=> d!347870 d!348018))

(declare-fun d!348278 () Bool)

(declare-fun list!4614 (Conc!4085) List!12539)

(assert (=> d!348278 (= (list!4609 (singletonSeq!737 (h!17882 tokens!556))) (list!4614 (c!203822 (singletonSeq!737 (h!17882 tokens!556)))))))

(declare-fun bs!288925 () Bool)

(assert (= bs!288925 d!348278))

(declare-fun m!1393831 () Bool)

(assert (=> bs!288925 m!1393831))

(assert (=> d!347870 d!348278))

(declare-fun d!348280 () Bool)

(assert (=> d!348280 (= (list!4609 (_1!7022 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556)))))) (list!4614 (c!203822 (_1!7022 (lex!752 thiss!20528 rules!2728 (print!689 thiss!20528 (singletonSeq!737 (h!17882 tokens!556))))))))))

(declare-fun bs!288926 () Bool)

(assert (= bs!288926 d!348280))

(declare-fun m!1393833 () Bool)

(assert (=> bs!288926 m!1393833))

(assert (=> d!347870 d!348280))

(assert (=> d!347870 d!348014))

(assert (=> d!347870 d!347868))

(declare-fun d!348282 () Bool)

(assert (=> d!348282 (= (isEmpty!7430 (_1!7019 lt!416411)) ((_ is Nil!12481) (_1!7019 lt!416411)))))

(assert (=> b!1219268 d!348282))

(declare-fun b!1220044 () Bool)

(declare-fun e!783105 () Bool)

(declare-fun lt!416606 () List!12538)

(assert (=> b!1220044 (= e!783105 (or (not (= (_2!7020 (get!4104 lt!416433)) Nil!12480)) (= lt!416606 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))))))))

(declare-fun b!1220043 () Bool)

(declare-fun res!548395 () Bool)

(assert (=> b!1220043 (=> (not res!548395) (not e!783105))))

(assert (=> b!1220043 (= res!548395 (= (size!9859 lt!416606) (+ (size!9859 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))) (size!9859 (_2!7020 (get!4104 lt!416433))))))))

(declare-fun b!1220041 () Bool)

(declare-fun e!783106 () List!12538)

(assert (=> b!1220041 (= e!783106 (_2!7020 (get!4104 lt!416433)))))

(declare-fun b!1220042 () Bool)

(assert (=> b!1220042 (= e!783106 (Cons!12480 (h!17881 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))) (++!3186 (t!113428 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))) (_2!7020 (get!4104 lt!416433)))))))

(declare-fun d!348284 () Bool)

(assert (=> d!348284 e!783105))

(declare-fun res!548396 () Bool)

(assert (=> d!348284 (=> (not res!548396) (not e!783105))))

(assert (=> d!348284 (= res!548396 (= (content!1774 lt!416606) ((_ map or) (content!1774 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))) (content!1774 (_2!7020 (get!4104 lt!416433))))))))

(assert (=> d!348284 (= lt!416606 e!783106)))

(declare-fun c!203992 () Bool)

(assert (=> d!348284 (= c!203992 ((_ is Nil!12480) (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433))))))))

(assert (=> d!348284 (= (++!3186 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416433)))) (_2!7020 (get!4104 lt!416433))) lt!416606)))

(assert (= (and d!348284 c!203992) b!1220041))

(assert (= (and d!348284 (not c!203992)) b!1220042))

(assert (= (and d!348284 res!548396) b!1220043))

(assert (= (and b!1220043 res!548395) b!1220044))

(declare-fun m!1393835 () Bool)

(assert (=> b!1220043 m!1393835))

(assert (=> b!1220043 m!1392967))

(declare-fun m!1393837 () Bool)

(assert (=> b!1220043 m!1393837))

(assert (=> b!1220043 m!1392963))

(declare-fun m!1393839 () Bool)

(assert (=> b!1220042 m!1393839))

(declare-fun m!1393841 () Bool)

(assert (=> d!348284 m!1393841))

(assert (=> d!348284 m!1392967))

(declare-fun m!1393843 () Bool)

(assert (=> d!348284 m!1393843))

(declare-fun m!1393845 () Bool)

(assert (=> d!348284 m!1393845))

(assert (=> b!1219326 d!348284))

(assert (=> b!1219326 d!348030))

(assert (=> b!1219326 d!348032))

(assert (=> b!1219326 d!348028))

(declare-fun b!1220045 () Bool)

(declare-fun e!783107 () List!12538)

(assert (=> b!1220045 (= e!783107 Nil!12480)))

(declare-fun b!1220046 () Bool)

(declare-fun e!783108 () List!12538)

(assert (=> b!1220046 (= e!783107 e!783108)))

(declare-fun c!203994 () Bool)

(assert (=> b!1220046 (= c!203994 ((_ is Leaf!6307) (c!203751 lt!416327)))))

(declare-fun b!1220048 () Bool)

(assert (=> b!1220048 (= e!783108 (++!3186 (list!4610 (left!10750 (c!203751 lt!416327))) (list!4610 (right!11080 (c!203751 lt!416327)))))))

(declare-fun d!348286 () Bool)

(declare-fun c!203993 () Bool)

(assert (=> d!348286 (= c!203993 ((_ is Empty!4083) (c!203751 lt!416327)))))

(assert (=> d!348286 (= (list!4610 (c!203751 lt!416327)) e!783107)))

(declare-fun b!1220047 () Bool)

(assert (=> b!1220047 (= e!783108 (list!4613 (xs!6794 (c!203751 lt!416327))))))

(assert (= (and d!348286 c!203993) b!1220045))

(assert (= (and d!348286 (not c!203993)) b!1220046))

(assert (= (and b!1220046 c!203994) b!1220047))

(assert (= (and b!1220046 (not c!203994)) b!1220048))

(declare-fun m!1393847 () Bool)

(assert (=> b!1220048 m!1393847))

(declare-fun m!1393849 () Bool)

(assert (=> b!1220048 m!1393849))

(assert (=> b!1220048 m!1393847))

(assert (=> b!1220048 m!1393849))

(declare-fun m!1393851 () Bool)

(assert (=> b!1220048 m!1393851))

(declare-fun m!1393853 () Bool)

(assert (=> b!1220047 m!1393853))

(assert (=> d!347946 d!348286))

(declare-fun d!348288 () Bool)

(declare-fun charsToBigInt!0 (List!12537 Int) Int)

(assert (=> d!348288 (= (inv!15 (value!69900 (h!17882 tokens!556))) (= (charsToBigInt!0 (text!15982 (value!69900 (h!17882 tokens!556))) 0) (value!69895 (value!69900 (h!17882 tokens!556)))))))

(declare-fun bs!288927 () Bool)

(assert (= bs!288927 d!348288))

(declare-fun m!1393855 () Bool)

(assert (=> bs!288927 m!1393855))

(assert (=> b!1219299 d!348288))

(declare-fun d!348290 () Bool)

(assert (=> d!348290 (= (inv!16674 (tag!2413 (h!17883 (t!113430 rules!2728)))) (= (mod (str.len (value!69899 (tag!2413 (h!17883 (t!113430 rules!2728))))) 2) 0))))

(assert (=> b!1219340 d!348290))

(declare-fun d!348292 () Bool)

(declare-fun res!548397 () Bool)

(declare-fun e!783109 () Bool)

(assert (=> d!348292 (=> (not res!548397) (not e!783109))))

(assert (=> d!348292 (= res!548397 (semiInverseModEq!788 (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toValue!3284 (transformation!2151 (h!17883 (t!113430 rules!2728))))))))

(assert (=> d!348292 (= (inv!16678 (transformation!2151 (h!17883 (t!113430 rules!2728)))) e!783109)))

(declare-fun b!1220049 () Bool)

(assert (=> b!1220049 (= e!783109 (equivClasses!755 (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toValue!3284 (transformation!2151 (h!17883 (t!113430 rules!2728))))))))

(assert (= (and d!348292 res!548397) b!1220049))

(declare-fun m!1393857 () Bool)

(assert (=> d!348292 m!1393857))

(declare-fun m!1393859 () Bool)

(assert (=> b!1220049 m!1393859))

(assert (=> b!1219340 d!348292))

(declare-fun d!348294 () Bool)

(declare-fun lt!416607 () Int)

(assert (=> d!348294 (>= lt!416607 0)))

(declare-fun e!783110 () Int)

(assert (=> d!348294 (= lt!416607 e!783110)))

(declare-fun c!203995 () Bool)

(assert (=> d!348294 (= c!203995 ((_ is Nil!12480) (_2!7019 lt!416405)))))

(assert (=> d!348294 (= (size!9859 (_2!7019 lt!416405)) lt!416607)))

(declare-fun b!1220050 () Bool)

(assert (=> b!1220050 (= e!783110 0)))

(declare-fun b!1220051 () Bool)

(assert (=> b!1220051 (= e!783110 (+ 1 (size!9859 (t!113428 (_2!7019 lt!416405)))))))

(assert (= (and d!348294 c!203995) b!1220050))

(assert (= (and d!348294 (not c!203995)) b!1220051))

(declare-fun m!1393861 () Bool)

(assert (=> b!1220051 m!1393861))

(assert (=> b!1219253 d!348294))

(declare-fun d!348296 () Bool)

(declare-fun lt!416608 () Int)

(assert (=> d!348296 (>= lt!416608 0)))

(declare-fun e!783111 () Int)

(assert (=> d!348296 (= lt!416608 e!783111)))

(declare-fun c!203996 () Bool)

(assert (=> d!348296 (= c!203996 ((_ is Nil!12480) lt!416333))))

(assert (=> d!348296 (= (size!9859 lt!416333) lt!416608)))

(declare-fun b!1220052 () Bool)

(assert (=> b!1220052 (= e!783111 0)))

(declare-fun b!1220053 () Bool)

(assert (=> b!1220053 (= e!783111 (+ 1 (size!9859 (t!113428 lt!416333))))))

(assert (= (and d!348296 c!203996) b!1220052))

(assert (= (and d!348296 (not c!203996)) b!1220053))

(declare-fun m!1393863 () Bool)

(assert (=> b!1220053 m!1393863))

(assert (=> b!1219253 d!348296))

(declare-fun b!1220054 () Bool)

(declare-fun e!783114 () Bool)

(declare-fun e!783112 () Bool)

(assert (=> b!1220054 (= e!783114 e!783112)))

(declare-fun res!548398 () Bool)

(assert (=> b!1220054 (=> (not res!548398) (not e!783112))))

(declare-fun lt!416613 () Option!2513)

(assert (=> b!1220054 (= res!548398 (isDefined!2149 lt!416613))))

(declare-fun b!1220055 () Bool)

(declare-fun e!783113 () Option!2513)

(declare-fun call!84667 () Option!2513)

(assert (=> b!1220055 (= e!783113 call!84667)))

(declare-fun b!1220056 () Bool)

(declare-fun res!548400 () Bool)

(assert (=> b!1220056 (=> (not res!548400) (not e!783112))))

(assert (=> b!1220056 (= res!548400 (matchR!1536 (regex!2151 (rule!3576 (_1!7020 (get!4104 lt!416613)))) (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416613))))))))

(declare-fun b!1220057 () Bool)

(declare-fun res!548399 () Bool)

(assert (=> b!1220057 (=> (not res!548399) (not e!783112))))

(assert (=> b!1220057 (= res!548399 (= (value!69900 (_1!7020 (get!4104 lt!416613))) (apply!2661 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416613)))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416613)))))))))

(declare-fun bm!84662 () Bool)

(assert (=> bm!84662 (= call!84667 (maxPrefixOneRule!557 thiss!20528 (h!17883 (t!113430 rules!2728)) input!2346))))

(declare-fun b!1220058 () Bool)

(assert (=> b!1220058 (= e!783112 (contains!2091 (t!113430 rules!2728) (rule!3576 (_1!7020 (get!4104 lt!416613)))))))

(declare-fun d!348298 () Bool)

(assert (=> d!348298 e!783114))

(declare-fun res!548404 () Bool)

(assert (=> d!348298 (=> res!548404 e!783114)))

(assert (=> d!348298 (= res!548404 (isEmpty!7434 lt!416613))))

(assert (=> d!348298 (= lt!416613 e!783113)))

(declare-fun c!203997 () Bool)

(assert (=> d!348298 (= c!203997 (and ((_ is Cons!12482) (t!113430 rules!2728)) ((_ is Nil!12482) (t!113430 (t!113430 rules!2728)))))))

(declare-fun lt!416610 () Unit!18728)

(declare-fun lt!416612 () Unit!18728)

(assert (=> d!348298 (= lt!416610 lt!416612)))

(assert (=> d!348298 (isPrefix!1038 input!2346 input!2346)))

(assert (=> d!348298 (= lt!416612 (lemmaIsPrefixRefl!731 input!2346 input!2346))))

(assert (=> d!348298 (rulesValidInductive!674 thiss!20528 (t!113430 rules!2728))))

(assert (=> d!348298 (= (maxPrefix!968 thiss!20528 (t!113430 rules!2728) input!2346) lt!416613)))

(declare-fun b!1220059 () Bool)

(declare-fun res!548402 () Bool)

(assert (=> b!1220059 (=> (not res!548402) (not e!783112))))

(assert (=> b!1220059 (= res!548402 (= (++!3186 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416613)))) (_2!7020 (get!4104 lt!416613))) input!2346))))

(declare-fun b!1220060 () Bool)

(declare-fun res!548403 () Bool)

(assert (=> b!1220060 (=> (not res!548403) (not e!783112))))

(assert (=> b!1220060 (= res!548403 (= (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416613)))) (originalCharacters!2705 (_1!7020 (get!4104 lt!416613)))))))

(declare-fun b!1220061 () Bool)

(declare-fun lt!416609 () Option!2513)

(declare-fun lt!416611 () Option!2513)

(assert (=> b!1220061 (= e!783113 (ite (and ((_ is None!2512) lt!416609) ((_ is None!2512) lt!416611)) None!2512 (ite ((_ is None!2512) lt!416611) lt!416609 (ite ((_ is None!2512) lt!416609) lt!416611 (ite (>= (size!9854 (_1!7020 (v!20643 lt!416609))) (size!9854 (_1!7020 (v!20643 lt!416611)))) lt!416609 lt!416611)))))))

(assert (=> b!1220061 (= lt!416609 call!84667)))

(assert (=> b!1220061 (= lt!416611 (maxPrefix!968 thiss!20528 (t!113430 (t!113430 rules!2728)) input!2346))))

(declare-fun b!1220062 () Bool)

(declare-fun res!548401 () Bool)

(assert (=> b!1220062 (=> (not res!548401) (not e!783112))))

(assert (=> b!1220062 (= res!548401 (< (size!9859 (_2!7020 (get!4104 lt!416613))) (size!9859 input!2346)))))

(assert (= (and d!348298 c!203997) b!1220055))

(assert (= (and d!348298 (not c!203997)) b!1220061))

(assert (= (or b!1220055 b!1220061) bm!84662))

(assert (= (and d!348298 (not res!548404)) b!1220054))

(assert (= (and b!1220054 res!548398) b!1220060))

(assert (= (and b!1220060 res!548403) b!1220062))

(assert (= (and b!1220062 res!548401) b!1220059))

(assert (= (and b!1220059 res!548402) b!1220057))

(assert (= (and b!1220057 res!548399) b!1220056))

(assert (= (and b!1220056 res!548400) b!1220058))

(declare-fun m!1393865 () Bool)

(assert (=> b!1220054 m!1393865))

(declare-fun m!1393867 () Bool)

(assert (=> b!1220058 m!1393867))

(declare-fun m!1393869 () Bool)

(assert (=> b!1220058 m!1393869))

(declare-fun m!1393871 () Bool)

(assert (=> b!1220061 m!1393871))

(assert (=> b!1220062 m!1393867))

(declare-fun m!1393873 () Bool)

(assert (=> b!1220062 m!1393873))

(assert (=> b!1220062 m!1392877))

(assert (=> b!1220059 m!1393867))

(declare-fun m!1393875 () Bool)

(assert (=> b!1220059 m!1393875))

(assert (=> b!1220059 m!1393875))

(declare-fun m!1393877 () Bool)

(assert (=> b!1220059 m!1393877))

(assert (=> b!1220059 m!1393877))

(declare-fun m!1393879 () Bool)

(assert (=> b!1220059 m!1393879))

(assert (=> b!1220060 m!1393867))

(assert (=> b!1220060 m!1393875))

(assert (=> b!1220060 m!1393875))

(assert (=> b!1220060 m!1393877))

(declare-fun m!1393881 () Bool)

(assert (=> bm!84662 m!1393881))

(assert (=> b!1220057 m!1393867))

(declare-fun m!1393883 () Bool)

(assert (=> b!1220057 m!1393883))

(assert (=> b!1220057 m!1393883))

(declare-fun m!1393885 () Bool)

(assert (=> b!1220057 m!1393885))

(declare-fun m!1393887 () Bool)

(assert (=> d!348298 m!1393887))

(assert (=> d!348298 m!1392979))

(assert (=> d!348298 m!1392981))

(declare-fun m!1393889 () Bool)

(assert (=> d!348298 m!1393889))

(assert (=> b!1220056 m!1393867))

(assert (=> b!1220056 m!1393875))

(assert (=> b!1220056 m!1393875))

(assert (=> b!1220056 m!1393877))

(assert (=> b!1220056 m!1393877))

(declare-fun m!1393891 () Bool)

(assert (=> b!1220056 m!1393891))

(assert (=> b!1219328 d!348298))

(declare-fun d!348300 () Bool)

(assert (=> d!348300 (= (isEmpty!7430 (_1!7019 lt!416405)) ((_ is Nil!12481) (_1!7019 lt!416405)))))

(assert (=> b!1219251 d!348300))

(declare-fun b!1220081 () Bool)

(declare-fun e!783124 () Bool)

(declare-fun lt!416626 () Option!2513)

(assert (=> b!1220081 (= e!783124 (= (size!9854 (_1!7020 (get!4104 lt!416626))) (size!9859 (originalCharacters!2705 (_1!7020 (get!4104 lt!416626))))))))

(declare-fun d!348302 () Bool)

(declare-fun e!783123 () Bool)

(assert (=> d!348302 e!783123))

(declare-fun res!548420 () Bool)

(assert (=> d!348302 (=> res!548420 e!783123)))

(assert (=> d!348302 (= res!548420 (isEmpty!7434 lt!416626))))

(declare-fun e!783126 () Option!2513)

(assert (=> d!348302 (= lt!416626 e!783126)))

(declare-fun c!204000 () Bool)

(declare-datatypes ((tuple2!12354 0))(
  ( (tuple2!12355 (_1!7024 List!12538) (_2!7024 List!12538)) )
))
(declare-fun lt!416624 () tuple2!12354)

(assert (=> d!348302 (= c!204000 (isEmpty!7428 (_1!7024 lt!416624)))))

(declare-fun findLongestMatch!217 (Regex!3421 List!12538) tuple2!12354)

(assert (=> d!348302 (= lt!416624 (findLongestMatch!217 (regex!2151 (h!17883 rules!2728)) input!2346))))

(declare-fun ruleValid!531 (LexerInterface!1846 Rule!4102) Bool)

(assert (=> d!348302 (ruleValid!531 thiss!20528 (h!17883 rules!2728))))

(assert (=> d!348302 (= (maxPrefixOneRule!557 thiss!20528 (h!17883 rules!2728) input!2346) lt!416626)))

(declare-fun b!1220082 () Bool)

(declare-fun res!548423 () Bool)

(assert (=> b!1220082 (=> (not res!548423) (not e!783124))))

(assert (=> b!1220082 (= res!548423 (< (size!9859 (_2!7020 (get!4104 lt!416626))) (size!9859 input!2346)))))

(declare-fun b!1220083 () Bool)

(declare-fun res!548425 () Bool)

(assert (=> b!1220083 (=> (not res!548425) (not e!783124))))

(assert (=> b!1220083 (= res!548425 (= (++!3186 (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416626)))) (_2!7020 (get!4104 lt!416626))) input!2346))))

(declare-fun b!1220084 () Bool)

(assert (=> b!1220084 (= e!783126 (Some!2512 (tuple2!12347 (Token!3965 (apply!2661 (transformation!2151 (h!17883 rules!2728)) (seqFromList!1561 (_1!7024 lt!416624))) (h!17883 rules!2728) (size!9862 (seqFromList!1561 (_1!7024 lt!416624))) (_1!7024 lt!416624)) (_2!7024 lt!416624))))))

(declare-fun lt!416628 () Unit!18728)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!245 (Regex!3421 List!12538) Unit!18728)

(assert (=> b!1220084 (= lt!416628 (longestMatchIsAcceptedByMatchOrIsEmpty!245 (regex!2151 (h!17883 rules!2728)) input!2346))))

(declare-fun res!548424 () Bool)

(declare-fun findLongestMatchInner!261 (Regex!3421 List!12538 Int List!12538 List!12538 Int) tuple2!12354)

(assert (=> b!1220084 (= res!548424 (isEmpty!7428 (_1!7024 (findLongestMatchInner!261 (regex!2151 (h!17883 rules!2728)) Nil!12480 (size!9859 Nil!12480) input!2346 input!2346 (size!9859 input!2346)))))))

(declare-fun e!783125 () Bool)

(assert (=> b!1220084 (=> res!548424 e!783125)))

(assert (=> b!1220084 e!783125))

(declare-fun lt!416627 () Unit!18728)

(assert (=> b!1220084 (= lt!416627 lt!416628)))

(declare-fun lt!416625 () Unit!18728)

(declare-fun lemmaSemiInverse!315 (TokenValueInjection!4134 BalanceConc!8098) Unit!18728)

(assert (=> b!1220084 (= lt!416625 (lemmaSemiInverse!315 (transformation!2151 (h!17883 rules!2728)) (seqFromList!1561 (_1!7024 lt!416624))))))

(declare-fun b!1220085 () Bool)

(declare-fun res!548422 () Bool)

(assert (=> b!1220085 (=> (not res!548422) (not e!783124))))

(assert (=> b!1220085 (= res!548422 (= (value!69900 (_1!7020 (get!4104 lt!416626))) (apply!2661 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416626)))) (seqFromList!1561 (originalCharacters!2705 (_1!7020 (get!4104 lt!416626)))))))))

(declare-fun b!1220086 () Bool)

(assert (=> b!1220086 (= e!783126 None!2512)))

(declare-fun b!1220087 () Bool)

(declare-fun res!548421 () Bool)

(assert (=> b!1220087 (=> (not res!548421) (not e!783124))))

(assert (=> b!1220087 (= res!548421 (= (rule!3576 (_1!7020 (get!4104 lt!416626))) (h!17883 rules!2728)))))

(declare-fun b!1220088 () Bool)

(assert (=> b!1220088 (= e!783125 (matchR!1536 (regex!2151 (h!17883 rules!2728)) (_1!7024 (findLongestMatchInner!261 (regex!2151 (h!17883 rules!2728)) Nil!12480 (size!9859 Nil!12480) input!2346 input!2346 (size!9859 input!2346)))))))

(declare-fun b!1220089 () Bool)

(assert (=> b!1220089 (= e!783123 e!783124)))

(declare-fun res!548419 () Bool)

(assert (=> b!1220089 (=> (not res!548419) (not e!783124))))

(assert (=> b!1220089 (= res!548419 (matchR!1536 (regex!2151 (h!17883 rules!2728)) (list!4606 (charsOf!1155 (_1!7020 (get!4104 lt!416626))))))))

(assert (= (and d!348302 c!204000) b!1220086))

(assert (= (and d!348302 (not c!204000)) b!1220084))

(assert (= (and b!1220084 (not res!548424)) b!1220088))

(assert (= (and d!348302 (not res!548420)) b!1220089))

(assert (= (and b!1220089 res!548419) b!1220083))

(assert (= (and b!1220083 res!548425) b!1220082))

(assert (= (and b!1220082 res!548423) b!1220087))

(assert (= (and b!1220087 res!548421) b!1220085))

(assert (= (and b!1220085 res!548422) b!1220081))

(declare-fun m!1393893 () Bool)

(assert (=> b!1220085 m!1393893))

(declare-fun m!1393895 () Bool)

(assert (=> b!1220085 m!1393895))

(assert (=> b!1220085 m!1393895))

(declare-fun m!1393897 () Bool)

(assert (=> b!1220085 m!1393897))

(assert (=> b!1220083 m!1393893))

(declare-fun m!1393899 () Bool)

(assert (=> b!1220083 m!1393899))

(assert (=> b!1220083 m!1393899))

(declare-fun m!1393901 () Bool)

(assert (=> b!1220083 m!1393901))

(assert (=> b!1220083 m!1393901))

(declare-fun m!1393903 () Bool)

(assert (=> b!1220083 m!1393903))

(assert (=> b!1220082 m!1393893))

(declare-fun m!1393905 () Bool)

(assert (=> b!1220082 m!1393905))

(assert (=> b!1220082 m!1392877))

(assert (=> b!1220089 m!1393893))

(assert (=> b!1220089 m!1393899))

(assert (=> b!1220089 m!1393899))

(assert (=> b!1220089 m!1393901))

(assert (=> b!1220089 m!1393901))

(declare-fun m!1393907 () Bool)

(assert (=> b!1220089 m!1393907))

(declare-fun m!1393909 () Bool)

(assert (=> b!1220088 m!1393909))

(assert (=> b!1220088 m!1392877))

(assert (=> b!1220088 m!1393909))

(assert (=> b!1220088 m!1392877))

(declare-fun m!1393911 () Bool)

(assert (=> b!1220088 m!1393911))

(declare-fun m!1393913 () Bool)

(assert (=> b!1220088 m!1393913))

(declare-fun m!1393915 () Bool)

(assert (=> d!348302 m!1393915))

(declare-fun m!1393917 () Bool)

(assert (=> d!348302 m!1393917))

(declare-fun m!1393919 () Bool)

(assert (=> d!348302 m!1393919))

(declare-fun m!1393921 () Bool)

(assert (=> d!348302 m!1393921))

(assert (=> b!1220081 m!1393893))

(declare-fun m!1393923 () Bool)

(assert (=> b!1220081 m!1393923))

(assert (=> b!1220087 m!1393893))

(declare-fun m!1393925 () Bool)

(assert (=> b!1220084 m!1393925))

(declare-fun m!1393927 () Bool)

(assert (=> b!1220084 m!1393927))

(declare-fun m!1393929 () Bool)

(assert (=> b!1220084 m!1393929))

(assert (=> b!1220084 m!1393909))

(assert (=> b!1220084 m!1392877))

(assert (=> b!1220084 m!1393911))

(assert (=> b!1220084 m!1393925))

(assert (=> b!1220084 m!1392877))

(assert (=> b!1220084 m!1393925))

(declare-fun m!1393931 () Bool)

(assert (=> b!1220084 m!1393931))

(declare-fun m!1393933 () Bool)

(assert (=> b!1220084 m!1393933))

(assert (=> b!1220084 m!1393909))

(assert (=> b!1220084 m!1393925))

(declare-fun m!1393935 () Bool)

(assert (=> b!1220084 m!1393935))

(assert (=> bm!84610 d!348302))

(assert (=> b!1219217 d!348056))

(assert (=> b!1219217 d!348058))

(declare-fun d!348304 () Bool)

(declare-fun charsToInt!0 (List!12537) (_ BitVec 32))

(assert (=> d!348304 (= (inv!16 (value!69900 (h!17882 tokens!556))) (= (charsToInt!0 (text!15980 (value!69900 (h!17882 tokens!556)))) (value!69891 (value!69900 (h!17882 tokens!556)))))))

(declare-fun bs!288928 () Bool)

(assert (= bs!288928 d!348304))

(declare-fun m!1393937 () Bool)

(assert (=> bs!288928 m!1393937))

(assert (=> b!1219297 d!348304))

(declare-fun d!348306 () Bool)

(assert (=> d!348306 (= (isEmpty!7434 lt!416433) (not ((_ is Some!2512) lt!416433)))))

(assert (=> d!347952 d!348306))

(declare-fun b!1220099 () Bool)

(declare-fun res!548436 () Bool)

(declare-fun e!783134 () Bool)

(assert (=> b!1220099 (=> (not res!548436) (not e!783134))))

(assert (=> b!1220099 (= res!548436 (= (head!2157 input!2346) (head!2157 input!2346)))))

(declare-fun b!1220101 () Bool)

(declare-fun e!783135 () Bool)

(assert (=> b!1220101 (= e!783135 (>= (size!9859 input!2346) (size!9859 input!2346)))))

(declare-fun d!348308 () Bool)

(assert (=> d!348308 e!783135))

(declare-fun res!548437 () Bool)

(assert (=> d!348308 (=> res!548437 e!783135)))

(declare-fun lt!416631 () Bool)

(assert (=> d!348308 (= res!548437 (not lt!416631))))

(declare-fun e!783133 () Bool)

(assert (=> d!348308 (= lt!416631 e!783133)))

(declare-fun res!548435 () Bool)

(assert (=> d!348308 (=> res!548435 e!783133)))

(assert (=> d!348308 (= res!548435 ((_ is Nil!12480) input!2346))))

(assert (=> d!348308 (= (isPrefix!1038 input!2346 input!2346) lt!416631)))

(declare-fun b!1220100 () Bool)

(assert (=> b!1220100 (= e!783134 (isPrefix!1038 (tail!1789 input!2346) (tail!1789 input!2346)))))

(declare-fun b!1220098 () Bool)

(assert (=> b!1220098 (= e!783133 e!783134)))

(declare-fun res!548434 () Bool)

(assert (=> b!1220098 (=> (not res!548434) (not e!783134))))

(assert (=> b!1220098 (= res!548434 (not ((_ is Nil!12480) input!2346)))))

(assert (= (and d!348308 (not res!548435)) b!1220098))

(assert (= (and b!1220098 res!548434) b!1220099))

(assert (= (and b!1220099 res!548436) b!1220100))

(assert (= (and d!348308 (not res!548437)) b!1220101))

(declare-fun m!1393939 () Bool)

(assert (=> b!1220099 m!1393939))

(assert (=> b!1220099 m!1393939))

(assert (=> b!1220101 m!1392877))

(assert (=> b!1220101 m!1392877))

(declare-fun m!1393941 () Bool)

(assert (=> b!1220100 m!1393941))

(assert (=> b!1220100 m!1393941))

(assert (=> b!1220100 m!1393941))

(assert (=> b!1220100 m!1393941))

(declare-fun m!1393943 () Bool)

(assert (=> b!1220100 m!1393943))

(assert (=> d!347952 d!348308))

(declare-fun d!348310 () Bool)

(assert (=> d!348310 (isPrefix!1038 input!2346 input!2346)))

(declare-fun lt!416634 () Unit!18728)

(declare-fun choose!7789 (List!12538 List!12538) Unit!18728)

(assert (=> d!348310 (= lt!416634 (choose!7789 input!2346 input!2346))))

(assert (=> d!348310 (= (lemmaIsPrefixRefl!731 input!2346 input!2346) lt!416634)))

(declare-fun bs!288929 () Bool)

(assert (= bs!288929 d!348310))

(assert (=> bs!288929 m!1392979))

(declare-fun m!1393945 () Bool)

(assert (=> bs!288929 m!1393945))

(assert (=> d!347952 d!348310))

(declare-fun bs!288930 () Bool)

(declare-fun d!348312 () Bool)

(assert (= bs!288930 (and d!348312 d!348064)))

(declare-fun lambda!49201 () Int)

(assert (=> bs!288930 (= lambda!49201 lambda!49186)))

(assert (=> d!348312 true))

(declare-fun lt!416637 () Bool)

(assert (=> d!348312 (= lt!416637 (forall!3185 rules!2728 lambda!49201))))

(declare-fun e!783140 () Bool)

(assert (=> d!348312 (= lt!416637 e!783140)))

(declare-fun res!548442 () Bool)

(assert (=> d!348312 (=> res!548442 e!783140)))

(assert (=> d!348312 (= res!548442 (not ((_ is Cons!12482) rules!2728)))))

(assert (=> d!348312 (= (rulesValidInductive!674 thiss!20528 rules!2728) lt!416637)))

(declare-fun b!1220106 () Bool)

(declare-fun e!783141 () Bool)

(assert (=> b!1220106 (= e!783140 e!783141)))

(declare-fun res!548443 () Bool)

(assert (=> b!1220106 (=> (not res!548443) (not e!783141))))

(assert (=> b!1220106 (= res!548443 (ruleValid!531 thiss!20528 (h!17883 rules!2728)))))

(declare-fun b!1220107 () Bool)

(assert (=> b!1220107 (= e!783141 (rulesValidInductive!674 thiss!20528 (t!113430 rules!2728)))))

(assert (= (and d!348312 (not res!548442)) b!1220106))

(assert (= (and b!1220106 res!548443) b!1220107))

(declare-fun m!1393947 () Bool)

(assert (=> d!348312 m!1393947))

(assert (=> b!1220106 m!1393921))

(assert (=> b!1220107 m!1393889))

(assert (=> d!347952 d!348312))

(declare-fun bs!288931 () Bool)

(declare-fun d!348314 () Bool)

(assert (= bs!288931 (and d!348314 d!348246)))

(declare-fun lambda!49202 () Int)

(assert (=> bs!288931 (= (= (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toValue!3284 (transformation!2151 (h!17883 rules!2728)))) (= lambda!49202 lambda!49197))))

(assert (=> d!348314 true))

(assert (=> d!348314 (< (dynLambda!5446 order!7579 (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) (dynLambda!5448 order!7581 lambda!49202))))

(assert (=> d!348314 (= (equivClasses!755 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toValue!3284 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) (Forall2!368 lambda!49202))))

(declare-fun bs!288932 () Bool)

(assert (= bs!288932 d!348314))

(declare-fun m!1393949 () Bool)

(assert (=> bs!288932 m!1393949))

(assert (=> b!1219330 d!348314))

(declare-fun d!348316 () Bool)

(assert (=> d!348316 (= (isEmpty!7428 (originalCharacters!2705 (h!17882 tokens!556))) ((_ is Nil!12480) (originalCharacters!2705 (h!17882 tokens!556))))))

(assert (=> d!347916 d!348316))

(declare-fun b!1220108 () Bool)

(declare-fun e!783142 () Bool)

(declare-fun tp!346664 () Bool)

(assert (=> b!1220108 (= e!783142 (and tp_is_empty!6363 tp!346664))))

(assert (=> b!1219347 (= tp!346540 e!783142)))

(assert (= (and b!1219347 ((_ is Cons!12480) (t!113428 (originalCharacters!2705 (h!17882 tokens!556))))) b!1220108))

(declare-fun b!1220111 () Bool)

(declare-fun e!783143 () Bool)

(declare-fun tp!346666 () Bool)

(assert (=> b!1220111 (= e!783143 tp!346666)))

(declare-fun b!1220112 () Bool)

(declare-fun tp!346669 () Bool)

(declare-fun tp!346665 () Bool)

(assert (=> b!1220112 (= e!783143 (and tp!346669 tp!346665))))

(declare-fun b!1220110 () Bool)

(declare-fun tp!346668 () Bool)

(declare-fun tp!346667 () Bool)

(assert (=> b!1220110 (= e!783143 (and tp!346668 tp!346667))))

(assert (=> b!1219377 (= tp!346574 e!783143)))

(declare-fun b!1220109 () Bool)

(assert (=> b!1220109 (= e!783143 tp_is_empty!6363)))

(assert (= (and b!1219377 ((_ is ElementMatch!3421) (regOne!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220109))

(assert (= (and b!1219377 ((_ is Concat!5641) (regOne!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220110))

(assert (= (and b!1219377 ((_ is Star!3421) (regOne!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220111))

(assert (= (and b!1219377 ((_ is Union!3421) (regOne!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220112))

(declare-fun b!1220115 () Bool)

(declare-fun e!783144 () Bool)

(declare-fun tp!346671 () Bool)

(assert (=> b!1220115 (= e!783144 tp!346671)))

(declare-fun b!1220116 () Bool)

(declare-fun tp!346674 () Bool)

(declare-fun tp!346670 () Bool)

(assert (=> b!1220116 (= e!783144 (and tp!346674 tp!346670))))

(declare-fun b!1220114 () Bool)

(declare-fun tp!346673 () Bool)

(declare-fun tp!346672 () Bool)

(assert (=> b!1220114 (= e!783144 (and tp!346673 tp!346672))))

(assert (=> b!1219377 (= tp!346573 e!783144)))

(declare-fun b!1220113 () Bool)

(assert (=> b!1220113 (= e!783144 tp_is_empty!6363)))

(assert (= (and b!1219377 ((_ is ElementMatch!3421) (regTwo!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220113))

(assert (= (and b!1219377 ((_ is Concat!5641) (regTwo!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220114))

(assert (= (and b!1219377 ((_ is Star!3421) (regTwo!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220115))

(assert (= (and b!1219377 ((_ is Union!3421) (regTwo!7354 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220116))

(declare-fun b!1220117 () Bool)

(declare-fun e!783145 () Bool)

(declare-fun tp!346675 () Bool)

(assert (=> b!1220117 (= e!783145 (and tp_is_empty!6363 tp!346675))))

(assert (=> b!1219359 (= tp!346555 e!783145)))

(assert (= (and b!1219359 ((_ is Cons!12480) (originalCharacters!2705 (h!17882 (t!113429 tokens!556))))) b!1220117))

(declare-fun b!1220120 () Bool)

(declare-fun e!783146 () Bool)

(declare-fun tp!346677 () Bool)

(assert (=> b!1220120 (= e!783146 tp!346677)))

(declare-fun b!1220121 () Bool)

(declare-fun tp!346680 () Bool)

(declare-fun tp!346676 () Bool)

(assert (=> b!1220121 (= e!783146 (and tp!346680 tp!346676))))

(declare-fun b!1220119 () Bool)

(declare-fun tp!346679 () Bool)

(declare-fun tp!346678 () Bool)

(assert (=> b!1220119 (= e!783146 (and tp!346679 tp!346678))))

(assert (=> b!1219360 (= tp!346554 e!783146)))

(declare-fun b!1220118 () Bool)

(assert (=> b!1220118 (= e!783146 tp_is_empty!6363)))

(assert (= (and b!1219360 ((_ is ElementMatch!3421) (regex!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) b!1220118))

(assert (= (and b!1219360 ((_ is Concat!5641) (regex!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) b!1220119))

(assert (= (and b!1219360 ((_ is Star!3421) (regex!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) b!1220120))

(assert (= (and b!1219360 ((_ is Union!3421) (regex!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) b!1220121))

(declare-fun b!1220124 () Bool)

(declare-fun b_free!29481 () Bool)

(declare-fun b_next!30185 () Bool)

(assert (=> b!1220124 (= b_free!29481 (not b_next!30185))))

(declare-fun t!113540 () Bool)

(declare-fun tb!67061 () Bool)

(assert (=> (and b!1220124 (= (toValue!3284 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113540) tb!67061))

(declare-fun result!81230 () Bool)

(assert (= result!81230 result!81188))

(assert (=> d!348224 t!113540))

(declare-fun tp!346683 () Bool)

(declare-fun b_and!83049 () Bool)

(assert (=> b!1220124 (= tp!346683 (and (=> t!113540 result!81230) b_and!83049))))

(declare-fun b_free!29483 () Bool)

(declare-fun b_next!30187 () Bool)

(assert (=> b!1220124 (= b_free!29483 (not b_next!30187))))

(declare-fun t!113542 () Bool)

(declare-fun tb!67063 () Bool)

(assert (=> (and b!1220124 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113542) tb!67063))

(declare-fun result!81232 () Bool)

(assert (= result!81232 result!81156))

(assert (=> d!348032 t!113542))

(declare-fun t!113544 () Bool)

(declare-fun tb!67065 () Bool)

(assert (=> (and b!1220124 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329))))) t!113544) tb!67065))

(declare-fun result!81234 () Bool)

(assert (= result!81234 result!81136))

(assert (=> d!347944 t!113544))

(declare-fun tb!67067 () Bool)

(declare-fun t!113546 () Bool)

(assert (=> (and b!1220124 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) t!113546) tb!67067))

(declare-fun result!81236 () Bool)

(assert (= result!81236 result!81130))

(assert (=> d!347942 t!113546))

(assert (=> b!1219225 t!113546))

(declare-fun t!113548 () Bool)

(declare-fun tb!67069 () Bool)

(assert (=> (and b!1220124 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) t!113548) tb!67069))

(declare-fun result!81238 () Bool)

(assert (= result!81238 result!81172))

(assert (=> b!1219767 t!113548))

(declare-fun b_and!83051 () Bool)

(declare-fun tp!346684 () Bool)

(assert (=> b!1220124 (= tp!346684 (and (=> t!113544 result!81234) (=> t!113548 result!81238) (=> t!113542 result!81232) (=> t!113546 result!81236) b_and!83051))))

(declare-fun e!783147 () Bool)

(assert (=> b!1220124 (= e!783147 (and tp!346683 tp!346684))))

(declare-fun tp!346681 () Bool)

(declare-fun e!783150 () Bool)

(declare-fun b!1220123 () Bool)

(assert (=> b!1220123 (= e!783150 (and tp!346681 (inv!16674 (tag!2413 (h!17883 (t!113430 (t!113430 rules!2728))))) (inv!16678 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) e!783147))))

(declare-fun b!1220122 () Bool)

(declare-fun e!783148 () Bool)

(declare-fun tp!346682 () Bool)

(assert (=> b!1220122 (= e!783148 (and e!783150 tp!346682))))

(assert (=> b!1219339 (= tp!346534 e!783148)))

(assert (= b!1220123 b!1220124))

(assert (= b!1220122 b!1220123))

(assert (= (and b!1219339 ((_ is Cons!12482) (t!113430 (t!113430 rules!2728)))) b!1220122))

(declare-fun m!1393951 () Bool)

(assert (=> b!1220123 m!1393951))

(declare-fun m!1393953 () Bool)

(assert (=> b!1220123 m!1393953))

(declare-fun b!1220127 () Bool)

(declare-fun e!783151 () Bool)

(declare-fun tp!346686 () Bool)

(assert (=> b!1220127 (= e!783151 tp!346686)))

(declare-fun b!1220128 () Bool)

(declare-fun tp!346689 () Bool)

(declare-fun tp!346685 () Bool)

(assert (=> b!1220128 (= e!783151 (and tp!346689 tp!346685))))

(declare-fun b!1220126 () Bool)

(declare-fun tp!346688 () Bool)

(declare-fun tp!346687 () Bool)

(assert (=> b!1220126 (= e!783151 (and tp!346688 tp!346687))))

(assert (=> b!1219340 (= tp!346533 e!783151)))

(declare-fun b!1220125 () Bool)

(assert (=> b!1220125 (= e!783151 tp_is_empty!6363)))

(assert (= (and b!1219340 ((_ is ElementMatch!3421) (regex!2151 (h!17883 (t!113430 rules!2728))))) b!1220125))

(assert (= (and b!1219340 ((_ is Concat!5641) (regex!2151 (h!17883 (t!113430 rules!2728))))) b!1220126))

(assert (= (and b!1219340 ((_ is Star!3421) (regex!2151 (h!17883 (t!113430 rules!2728))))) b!1220127))

(assert (= (and b!1219340 ((_ is Union!3421) (regex!2151 (h!17883 (t!113430 rules!2728))))) b!1220128))

(declare-fun e!783157 () Bool)

(declare-fun b!1220137 () Bool)

(declare-fun tp!346696 () Bool)

(declare-fun tp!346698 () Bool)

(assert (=> b!1220137 (= e!783157 (and (inv!16681 (left!10750 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))))) tp!346696 (inv!16681 (right!11080 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))))) tp!346698))))

(declare-fun b!1220139 () Bool)

(declare-fun e!783156 () Bool)

(declare-fun tp!346697 () Bool)

(assert (=> b!1220139 (= e!783156 tp!346697)))

(declare-fun b!1220138 () Bool)

(declare-fun inv!16688 (IArray!8171) Bool)

(assert (=> b!1220138 (= e!783157 (and (inv!16688 (xs!6794 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))))) e!783156))))

(assert (=> b!1219302 (= tp!346524 (and (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329))))) e!783157))))

(assert (= (and b!1219302 ((_ is Node!4083) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))))) b!1220137))

(assert (= b!1220138 b!1220139))

(assert (= (and b!1219302 ((_ is Leaf!6307) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))) (value!69900 (_1!7020 lt!416329)))))) b!1220138))

(declare-fun m!1393955 () Bool)

(assert (=> b!1220137 m!1393955))

(declare-fun m!1393957 () Bool)

(assert (=> b!1220137 m!1393957))

(declare-fun m!1393959 () Bool)

(assert (=> b!1220138 m!1393959))

(assert (=> b!1219302 m!1392941))

(declare-fun b!1220140 () Bool)

(declare-fun e!783158 () Bool)

(declare-fun tp!346699 () Bool)

(assert (=> b!1220140 (= e!783158 (and tp_is_empty!6363 tp!346699))))

(assert (=> b!1219346 (= tp!346539 e!783158)))

(assert (= (and b!1219346 ((_ is Cons!12480) (t!113428 (t!113428 input!2346)))) b!1220140))

(declare-fun b!1220144 () Bool)

(declare-fun b_free!29485 () Bool)

(declare-fun b_next!30189 () Bool)

(assert (=> b!1220144 (= b_free!29485 (not b_next!30189))))

(declare-fun t!113550 () Bool)

(declare-fun tb!67071 () Bool)

(assert (=> (and b!1220144 (= (toValue!3284 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (toValue!3284 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113550) tb!67071))

(declare-fun result!81242 () Bool)

(assert (= result!81242 result!81188))

(assert (=> d!348224 t!113550))

(declare-fun b_and!83053 () Bool)

(declare-fun tp!346701 () Bool)

(assert (=> b!1220144 (= tp!346701 (and (=> t!113550 result!81242) b_and!83053))))

(declare-fun b_free!29487 () Bool)

(declare-fun b_next!30191 () Bool)

(assert (=> b!1220144 (= b_free!29487 (not b_next!30191))))

(declare-fun t!113552 () Bool)

(declare-fun tb!67073 () Bool)

(assert (=> (and b!1220144 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 (get!4104 lt!416433)))))) t!113552) tb!67073))

(declare-fun result!81244 () Bool)

(assert (= result!81244 result!81156))

(assert (=> d!348032 t!113552))

(declare-fun t!113554 () Bool)

(declare-fun tb!67075 () Bool)

(assert (=> (and b!1220144 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329))))) t!113554) tb!67075))

(declare-fun result!81246 () Bool)

(assert (= result!81246 result!81136))

(assert (=> d!347944 t!113554))

(declare-fun t!113556 () Bool)

(declare-fun tb!67077 () Bool)

(assert (=> (and b!1220144 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556))))) t!113556) tb!67077))

(declare-fun result!81248 () Bool)

(assert (= result!81248 result!81130))

(assert (=> d!347942 t!113556))

(assert (=> b!1219225 t!113556))

(declare-fun t!113558 () Bool)

(declare-fun tb!67079 () Bool)

(assert (=> (and b!1220144 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556)))))) t!113558) tb!67079))

(declare-fun result!81250 () Bool)

(assert (= result!81250 result!81172))

(assert (=> b!1219767 t!113558))

(declare-fun b_and!83055 () Bool)

(declare-fun tp!346702 () Bool)

(assert (=> b!1220144 (= tp!346702 (and (=> t!113558 result!81250) (=> t!113552 result!81244) (=> t!113554 result!81246) (=> t!113556 result!81248) b_and!83055))))

(declare-fun e!783159 () Bool)

(assert (=> b!1220144 (= e!783159 (and tp!346701 tp!346702))))

(declare-fun e!783163 () Bool)

(declare-fun e!783161 () Bool)

(declare-fun tp!346700 () Bool)

(declare-fun b!1220141 () Bool)

(assert (=> b!1220141 (= e!783161 (and (inv!16677 (h!17882 (t!113429 (t!113429 tokens!556)))) e!783163 tp!346700))))

(declare-fun b!1220142 () Bool)

(declare-fun tp!346704 () Bool)

(declare-fun e!783164 () Bool)

(assert (=> b!1220142 (= e!783163 (and (inv!21 (value!69900 (h!17882 (t!113429 (t!113429 tokens!556))))) e!783164 tp!346704))))

(assert (=> b!1219358 (= tp!346551 e!783161)))

(declare-fun b!1220143 () Bool)

(declare-fun tp!346703 () Bool)

(assert (=> b!1220143 (= e!783164 (and tp!346703 (inv!16674 (tag!2413 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (inv!16678 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) e!783159))))

(assert (= b!1220143 b!1220144))

(assert (= b!1220142 b!1220143))

(assert (= b!1220141 b!1220142))

(assert (= (and b!1219358 ((_ is Cons!12481) (t!113429 (t!113429 tokens!556)))) b!1220141))

(declare-fun m!1393961 () Bool)

(assert (=> b!1220141 m!1393961))

(declare-fun m!1393963 () Bool)

(assert (=> b!1220142 m!1393963))

(declare-fun m!1393965 () Bool)

(assert (=> b!1220143 m!1393965))

(declare-fun m!1393967 () Bool)

(assert (=> b!1220143 m!1393967))

(declare-fun b!1220147 () Bool)

(declare-fun e!783165 () Bool)

(declare-fun tp!346706 () Bool)

(assert (=> b!1220147 (= e!783165 tp!346706)))

(declare-fun b!1220148 () Bool)

(declare-fun tp!346709 () Bool)

(declare-fun tp!346705 () Bool)

(assert (=> b!1220148 (= e!783165 (and tp!346709 tp!346705))))

(declare-fun b!1220146 () Bool)

(declare-fun tp!346708 () Bool)

(declare-fun tp!346707 () Bool)

(assert (=> b!1220146 (= e!783165 (and tp!346708 tp!346707))))

(assert (=> b!1219378 (= tp!346572 e!783165)))

(declare-fun b!1220145 () Bool)

(assert (=> b!1220145 (= e!783165 tp_is_empty!6363)))

(assert (= (and b!1219378 ((_ is ElementMatch!3421) (reg!3750 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220145))

(assert (= (and b!1219378 ((_ is Concat!5641) (reg!3750 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220146))

(assert (= (and b!1219378 ((_ is Star!3421) (reg!3750 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220147))

(assert (= (and b!1219378 ((_ is Union!3421) (reg!3750 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220148))

(declare-fun b!1220151 () Bool)

(declare-fun e!783166 () Bool)

(declare-fun tp!346711 () Bool)

(assert (=> b!1220151 (= e!783166 tp!346711)))

(declare-fun b!1220152 () Bool)

(declare-fun tp!346714 () Bool)

(declare-fun tp!346710 () Bool)

(assert (=> b!1220152 (= e!783166 (and tp!346714 tp!346710))))

(declare-fun b!1220150 () Bool)

(declare-fun tp!346713 () Bool)

(declare-fun tp!346712 () Bool)

(assert (=> b!1220150 (= e!783166 (and tp!346713 tp!346712))))

(assert (=> b!1219373 (= tp!346569 e!783166)))

(declare-fun b!1220149 () Bool)

(assert (=> b!1220149 (= e!783166 tp_is_empty!6363)))

(assert (= (and b!1219373 ((_ is ElementMatch!3421) (regOne!7354 (regex!2151 (h!17883 rules!2728))))) b!1220149))

(assert (= (and b!1219373 ((_ is Concat!5641) (regOne!7354 (regex!2151 (h!17883 rules!2728))))) b!1220150))

(assert (= (and b!1219373 ((_ is Star!3421) (regOne!7354 (regex!2151 (h!17883 rules!2728))))) b!1220151))

(assert (= (and b!1219373 ((_ is Union!3421) (regOne!7354 (regex!2151 (h!17883 rules!2728))))) b!1220152))

(declare-fun b!1220155 () Bool)

(declare-fun e!783167 () Bool)

(declare-fun tp!346716 () Bool)

(assert (=> b!1220155 (= e!783167 tp!346716)))

(declare-fun b!1220156 () Bool)

(declare-fun tp!346719 () Bool)

(declare-fun tp!346715 () Bool)

(assert (=> b!1220156 (= e!783167 (and tp!346719 tp!346715))))

(declare-fun b!1220154 () Bool)

(declare-fun tp!346718 () Bool)

(declare-fun tp!346717 () Bool)

(assert (=> b!1220154 (= e!783167 (and tp!346718 tp!346717))))

(assert (=> b!1219373 (= tp!346568 e!783167)))

(declare-fun b!1220153 () Bool)

(assert (=> b!1220153 (= e!783167 tp_is_empty!6363)))

(assert (= (and b!1219373 ((_ is ElementMatch!3421) (regTwo!7354 (regex!2151 (h!17883 rules!2728))))) b!1220153))

(assert (= (and b!1219373 ((_ is Concat!5641) (regTwo!7354 (regex!2151 (h!17883 rules!2728))))) b!1220154))

(assert (= (and b!1219373 ((_ is Star!3421) (regTwo!7354 (regex!2151 (h!17883 rules!2728))))) b!1220155))

(assert (= (and b!1219373 ((_ is Union!3421) (regTwo!7354 (regex!2151 (h!17883 rules!2728))))) b!1220156))

(declare-fun b!1220157 () Bool)

(declare-fun tp!346722 () Bool)

(declare-fun tp!346720 () Bool)

(declare-fun e!783169 () Bool)

(assert (=> b!1220157 (= e!783169 (and (inv!16681 (left!10750 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))))) tp!346720 (inv!16681 (right!11080 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))))) tp!346722))))

(declare-fun b!1220159 () Bool)

(declare-fun e!783168 () Bool)

(declare-fun tp!346721 () Bool)

(assert (=> b!1220159 (= e!783168 tp!346721)))

(declare-fun b!1220158 () Bool)

(assert (=> b!1220158 (= e!783169 (and (inv!16688 (xs!6794 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))))) e!783168))))

(assert (=> b!1219231 (= tp!346523 (and (inv!16681 (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556))))) e!783169))))

(assert (= (and b!1219231 ((_ is Node!4083) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))))) b!1220157))

(assert (= b!1220158 b!1220159))

(assert (= (and b!1219231 ((_ is Leaf!6307) (c!203751 (dynLambda!5441 (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (value!69900 (h!17882 tokens!556)))))) b!1220158))

(declare-fun m!1393969 () Bool)

(assert (=> b!1220157 m!1393969))

(declare-fun m!1393971 () Bool)

(assert (=> b!1220157 m!1393971))

(declare-fun m!1393973 () Bool)

(assert (=> b!1220158 m!1393973))

(assert (=> b!1219231 m!1392853))

(declare-fun b!1220162 () Bool)

(declare-fun e!783170 () Bool)

(declare-fun tp!346724 () Bool)

(assert (=> b!1220162 (= e!783170 tp!346724)))

(declare-fun b!1220163 () Bool)

(declare-fun tp!346727 () Bool)

(declare-fun tp!346723 () Bool)

(assert (=> b!1220163 (= e!783170 (and tp!346727 tp!346723))))

(declare-fun b!1220161 () Bool)

(declare-fun tp!346726 () Bool)

(declare-fun tp!346725 () Bool)

(assert (=> b!1220161 (= e!783170 (and tp!346726 tp!346725))))

(assert (=> b!1219374 (= tp!346567 e!783170)))

(declare-fun b!1220160 () Bool)

(assert (=> b!1220160 (= e!783170 tp_is_empty!6363)))

(assert (= (and b!1219374 ((_ is ElementMatch!3421) (reg!3750 (regex!2151 (h!17883 rules!2728))))) b!1220160))

(assert (= (and b!1219374 ((_ is Concat!5641) (reg!3750 (regex!2151 (h!17883 rules!2728))))) b!1220161))

(assert (= (and b!1219374 ((_ is Star!3421) (reg!3750 (regex!2151 (h!17883 rules!2728))))) b!1220162))

(assert (= (and b!1219374 ((_ is Union!3421) (reg!3750 (regex!2151 (h!17883 rules!2728))))) b!1220163))

(declare-fun b!1220166 () Bool)

(declare-fun e!783171 () Bool)

(declare-fun tp!346729 () Bool)

(assert (=> b!1220166 (= e!783171 tp!346729)))

(declare-fun b!1220167 () Bool)

(declare-fun tp!346732 () Bool)

(declare-fun tp!346728 () Bool)

(assert (=> b!1220167 (= e!783171 (and tp!346732 tp!346728))))

(declare-fun b!1220165 () Bool)

(declare-fun tp!346731 () Bool)

(declare-fun tp!346730 () Bool)

(assert (=> b!1220165 (= e!783171 (and tp!346731 tp!346730))))

(assert (=> b!1219379 (= tp!346575 e!783171)))

(declare-fun b!1220164 () Bool)

(assert (=> b!1220164 (= e!783171 tp_is_empty!6363)))

(assert (= (and b!1219379 ((_ is ElementMatch!3421) (regOne!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220164))

(assert (= (and b!1219379 ((_ is Concat!5641) (regOne!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220165))

(assert (= (and b!1219379 ((_ is Star!3421) (regOne!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220166))

(assert (= (and b!1219379 ((_ is Union!3421) (regOne!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220167))

(declare-fun b!1220170 () Bool)

(declare-fun e!783172 () Bool)

(declare-fun tp!346734 () Bool)

(assert (=> b!1220170 (= e!783172 tp!346734)))

(declare-fun b!1220171 () Bool)

(declare-fun tp!346737 () Bool)

(declare-fun tp!346733 () Bool)

(assert (=> b!1220171 (= e!783172 (and tp!346737 tp!346733))))

(declare-fun b!1220169 () Bool)

(declare-fun tp!346736 () Bool)

(declare-fun tp!346735 () Bool)

(assert (=> b!1220169 (= e!783172 (and tp!346736 tp!346735))))

(assert (=> b!1219379 (= tp!346571 e!783172)))

(declare-fun b!1220168 () Bool)

(assert (=> b!1220168 (= e!783172 tp_is_empty!6363)))

(assert (= (and b!1219379 ((_ is ElementMatch!3421) (regTwo!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220168))

(assert (= (and b!1219379 ((_ is Concat!5641) (regTwo!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220169))

(assert (= (and b!1219379 ((_ is Star!3421) (regTwo!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220170))

(assert (= (and b!1219379 ((_ is Union!3421) (regTwo!7355 (regex!2151 (rule!3576 (h!17882 tokens!556)))))) b!1220171))

(declare-fun b!1220174 () Bool)

(declare-fun e!783173 () Bool)

(declare-fun tp!346739 () Bool)

(assert (=> b!1220174 (= e!783173 tp!346739)))

(declare-fun b!1220175 () Bool)

(declare-fun tp!346742 () Bool)

(declare-fun tp!346738 () Bool)

(assert (=> b!1220175 (= e!783173 (and tp!346742 tp!346738))))

(declare-fun b!1220173 () Bool)

(declare-fun tp!346741 () Bool)

(declare-fun tp!346740 () Bool)

(assert (=> b!1220173 (= e!783173 (and tp!346741 tp!346740))))

(assert (=> b!1219375 (= tp!346570 e!783173)))

(declare-fun b!1220172 () Bool)

(assert (=> b!1220172 (= e!783173 tp_is_empty!6363)))

(assert (= (and b!1219375 ((_ is ElementMatch!3421) (regOne!7355 (regex!2151 (h!17883 rules!2728))))) b!1220172))

(assert (= (and b!1219375 ((_ is Concat!5641) (regOne!7355 (regex!2151 (h!17883 rules!2728))))) b!1220173))

(assert (= (and b!1219375 ((_ is Star!3421) (regOne!7355 (regex!2151 (h!17883 rules!2728))))) b!1220174))

(assert (= (and b!1219375 ((_ is Union!3421) (regOne!7355 (regex!2151 (h!17883 rules!2728))))) b!1220175))

(declare-fun b!1220178 () Bool)

(declare-fun e!783174 () Bool)

(declare-fun tp!346744 () Bool)

(assert (=> b!1220178 (= e!783174 tp!346744)))

(declare-fun b!1220179 () Bool)

(declare-fun tp!346747 () Bool)

(declare-fun tp!346743 () Bool)

(assert (=> b!1220179 (= e!783174 (and tp!346747 tp!346743))))

(declare-fun b!1220177 () Bool)

(declare-fun tp!346746 () Bool)

(declare-fun tp!346745 () Bool)

(assert (=> b!1220177 (= e!783174 (and tp!346746 tp!346745))))

(assert (=> b!1219375 (= tp!346566 e!783174)))

(declare-fun b!1220176 () Bool)

(assert (=> b!1220176 (= e!783174 tp_is_empty!6363)))

(assert (= (and b!1219375 ((_ is ElementMatch!3421) (regTwo!7355 (regex!2151 (h!17883 rules!2728))))) b!1220176))

(assert (= (and b!1219375 ((_ is Concat!5641) (regTwo!7355 (regex!2151 (h!17883 rules!2728))))) b!1220177))

(assert (= (and b!1219375 ((_ is Star!3421) (regTwo!7355 (regex!2151 (h!17883 rules!2728))))) b!1220178))

(assert (= (and b!1219375 ((_ is Union!3421) (regTwo!7355 (regex!2151 (h!17883 rules!2728))))) b!1220179))

(declare-fun b_lambda!35995 () Bool)

(assert (= b_lambda!35973 (or (and b!1218954 b_free!29451 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))))) (and b!1220144 b_free!29487 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))))) (and b!1220124 b_free!29483 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))))) (and b!1218955 b_free!29455 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))))) (and b!1219341 b_free!29467 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))))) (and b!1219361 b_free!29471 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))) (toChars!3143 (transformation!2151 (rule!3576 (_1!7020 lt!416329)))))) b_lambda!35995)))

(declare-fun b_lambda!35997 () Bool)

(assert (= b_lambda!35983 (or (and b!1220144 b_free!29487 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 (t!113429 tokens!556)))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))))) (and b!1218954 b_free!29451 (= (toChars!3143 (transformation!2151 (h!17883 rules!2728))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))))) (and b!1220124 b_free!29483 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 (t!113430 rules!2728))))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))))) (and b!1218955 b_free!29455 (= (toChars!3143 (transformation!2151 (rule!3576 (h!17882 tokens!556)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))))) (and b!1219341 b_free!29467 (= (toChars!3143 (transformation!2151 (h!17883 (t!113430 rules!2728)))) (toChars!3143 (transformation!2151 (rule!3576 (h!17882 (t!113429 tokens!556))))))) (and b!1219361 b_free!29471) b_lambda!35997)))

(check-sat b_and!83051 (not b!1220155) (not b!1219700) (not b!1220158) (not b!1220058) (not d!348218) (not d!348238) (not b!1219518) (not d!348278) (not b_next!30159) (not b!1219514) (not b!1220178) (not b_next!30169) (not bm!84660) (not d!348216) (not b!1219698) (not b!1220012) (not b!1219694) (not b!1220051) (not d!348020) (not b_next!30157) (not b!1219944) (not b!1219482) (not bm!84661) (not b!1220165) (not d!348262) (not b!1220170) (not d!348236) (not d!348032) (not b!1220169) (not b!1219503) (not b!1220054) (not b!1220119) (not d!348258) (not b!1219867) (not d!348016) b_and!83013 (not b!1219967) (not b!1220162) (not b!1219477) (not d!348024) (not b!1220177) (not b!1220175) (not d!348044) (not b!1220166) (not b!1220004) (not b!1220167) b_and!83009 (not b!1220000) (not d!348022) (not b!1219869) (not d!348244) (not d!348314) (not b!1220084) (not b!1220100) (not b!1219491) (not b!1220007) (not b_next!30185) (not b!1219768) (not b!1219505) (not b!1219231) (not b!1219853) (not b!1219997) (not b_lambda!35997) (not b!1219476) (not b!1220009) (not d!348142) b_and!83027 (not tb!67025) (not b!1220083) (not b!1219473) (not b!1219807) (not b!1220151) (not b!1219871) (not b!1220139) (not b!1219916) (not b!1219809) (not bm!84613) (not b!1220036) (not b!1219783) (not b!1220024) (not d!348288) b_and!83011 (not b!1220121) (not b!1219776) (not b!1219703) (not b!1219488) (not d!348182) (not bm!84640) (not b!1220157) (not d!348266) (not b!1220061) (not b!1220142) (not b!1219942) (not b!1219965) (not b!1220173) (not b!1219803) b_and!83025 (not b!1219697) (not d!348276) (not b!1220010) (not b!1219501) b_and!83053 (not b!1219751) (not b_next!30171) (not b!1220081) (not d!348228) (not b!1220040) (not b_next!30153) (not b!1220141) (not b!1220089) (not b!1220006) (not b!1219851) (not b!1220042) (not tb!67009) (not b!1219495) (not b_lambda!35979) (not d!348248) (not b!1220127) (not d!348064) (not d!348284) (not b!1220147) (not bm!84629) (not b!1219823) (not b!1219822) (not b!1220179) (not d!348208) (not b!1219484) (not b_next!30189) b_and!83055 (not b!1220048) (not b!1220143) (not b!1219516) (not b!1219802) (not b!1219480) (not d!348304) (not b!1219474) (not b!1220174) (not b!1220171) (not b!1219778) (not b!1219520) (not b_lambda!35977) (not b!1220117) (not b!1220060) (not d!348310) (not b!1220116) (not d!348014) (not b!1220043) (not b!1220101) (not b!1220163) (not b_next!30173) tp_is_empty!6363 (not b_lambda!35987) (not b!1220087) (not b_next!30155) (not b!1219825) (not d!348012) (not b!1220011) (not d!348312) (not d!348292) (not b!1219773) (not d!348302) (not b!1220047) (not b!1219519) (not b!1220120) (not b!1219302) (not b!1220082) (not b!1219486) (not tb!66993) (not b!1220148) (not d!348250) (not b!1219526) (not b!1220152) (not d!348222) (not b!1220026) (not b!1220159) (not b!1220108) (not d!348234) (not b!1220053) (not d!348030) (not b!1219767) (not d!348298) (not b!1220027) (not b!1220059) (not b!1220110) (not b!1219512) (not b!1220126) (not b!1219515) (not b!1219534) (not d!348018) (not b!1220008) b_and!83049 (not b!1219511) (not b!1219870) (not b!1220088) (not d!348054) (not b!1220122) (not b!1219531) (not b!1220106) (not bm!84638) (not b!1220003) (not b_next!30191) b_and!83029 (not b!1219926) (not b_lambda!35975) (not d!348062) (not b!1219873) b_and!83015 (not b!1219998) (not b!1219805) (not b!1220154) (not b!1220062) (not b!1219528) (not b!1220114) (not b!1220085) (not b!1220128) (not b!1220057) (not bm!84612) (not d!348060) (not b!1220049) (not b!1220123) (not b!1220107) (not b!1220099) (not b!1219696) b_and!83033 (not b!1220137) (not b!1219485) (not b!1220056) (not b!1220138) (not b_next!30175) (not b!1219517) (not d!348256) (not b!1219927) (not b!1220111) (not b_lambda!35995) (not bm!84662) (not b!1220112) (not d!348136) (not bm!84659) (not b!1220146) (not b_next!30187) (not b!1220156) (not b!1219966) (not d!348026) (not b!1220030) (not b!1220161) (not b!1220150) (not d!348246) (not b!1220038) (not b!1220023) (not d!348280) (not b!1219994) (not b!1220115) (not b!1219530) (not b!1220140))
(check-sat b_and!83051 (not b_next!30159) (not b_next!30169) (not b_next!30157) b_and!83013 b_and!83009 (not b_next!30185) b_and!83027 b_and!83011 (not b_next!30189) b_and!83055 (not b_next!30173) (not b_next!30155) b_and!83049 b_and!83033 (not b_next!30175) (not b_next!30187) b_and!83025 b_and!83053 (not b_next!30171) (not b_next!30153) (not b_next!30191) b_and!83029 b_and!83015)
