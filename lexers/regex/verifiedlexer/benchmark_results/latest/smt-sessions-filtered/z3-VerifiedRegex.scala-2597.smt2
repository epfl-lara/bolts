; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138974 () Bool)

(assert start!138974)

(declare-fun b!1480402 () Bool)

(declare-fun b_free!38175 () Bool)

(declare-fun b_next!38879 () Bool)

(assert (=> b!1480402 (= b_free!38175 (not b_next!38879))))

(declare-fun tp!419732 () Bool)

(declare-fun b_and!102629 () Bool)

(assert (=> b!1480402 (= tp!419732 b_and!102629)))

(declare-fun b_free!38177 () Bool)

(declare-fun b_next!38881 () Bool)

(assert (=> b!1480402 (= b_free!38177 (not b_next!38881))))

(declare-fun tp!419731 () Bool)

(declare-fun b_and!102631 () Bool)

(assert (=> b!1480402 (= tp!419731 b_and!102631)))

(declare-fun b!1480393 () Bool)

(declare-fun b_free!38179 () Bool)

(declare-fun b_next!38883 () Bool)

(assert (=> b!1480393 (= b_free!38179 (not b_next!38883))))

(declare-fun tp!419735 () Bool)

(declare-fun b_and!102633 () Bool)

(assert (=> b!1480393 (= tp!419735 b_and!102633)))

(declare-fun b_free!38181 () Bool)

(declare-fun b_next!38885 () Bool)

(assert (=> b!1480393 (= b_free!38181 (not b_next!38885))))

(declare-fun tp!419737 () Bool)

(declare-fun b_and!102635 () Bool)

(assert (=> b!1480393 (= tp!419737 b_and!102635)))

(declare-fun b!1480391 () Bool)

(declare-fun b_free!38183 () Bool)

(declare-fun b_next!38887 () Bool)

(assert (=> b!1480391 (= b_free!38183 (not b_next!38887))))

(declare-fun tp!419743 () Bool)

(declare-fun b_and!102637 () Bool)

(assert (=> b!1480391 (= tp!419743 b_and!102637)))

(declare-fun b_free!38185 () Bool)

(declare-fun b_next!38889 () Bool)

(assert (=> b!1480391 (= b_free!38185 (not b_next!38889))))

(declare-fun tp!419741 () Bool)

(declare-fun b_and!102639 () Bool)

(assert (=> b!1480391 (= tp!419741 b_and!102639)))

(declare-datatypes ((List!15726 0))(
  ( (Nil!15660) (Cons!15660 (h!21061 (_ BitVec 16)) (t!137207 List!15726)) )
))
(declare-datatypes ((C!8392 0))(
  ( (C!8393 (val!4766 Int)) )
))
(declare-datatypes ((List!15727 0))(
  ( (Nil!15661) (Cons!15661 (h!21062 C!8392) (t!137208 List!15727)) )
))
(declare-datatypes ((TokenValue!2883 0))(
  ( (FloatLiteralValue!5766 (text!20626 List!15726)) (TokenValueExt!2882 (__x!9556 Int)) (Broken!14415 (value!89222 List!15726)) (Object!2948) (End!2883) (Def!2883) (Underscore!2883) (Match!2883) (Else!2883) (Error!2883) (Case!2883) (If!2883) (Extends!2883) (Abstract!2883) (Class!2883) (Val!2883) (DelimiterValue!5766 (del!2943 List!15726)) (KeywordValue!2889 (value!89223 List!15726)) (CommentValue!5766 (value!89224 List!15726)) (WhitespaceValue!5766 (value!89225 List!15726)) (IndentationValue!2883 (value!89226 List!15726)) (String!18670) (Int32!2883) (Broken!14416 (value!89227 List!15726)) (Boolean!2884) (Unit!25483) (OperatorValue!2886 (op!2943 List!15726)) (IdentifierValue!5766 (value!89228 List!15726)) (IdentifierValue!5767 (value!89229 List!15726)) (WhitespaceValue!5767 (value!89230 List!15726)) (True!5766) (False!5766) (Broken!14417 (value!89231 List!15726)) (Broken!14418 (value!89232 List!15726)) (True!5767) (RightBrace!2883) (RightBracket!2883) (Colon!2883) (Null!2883) (Comma!2883) (LeftBracket!2883) (False!5767) (LeftBrace!2883) (ImaginaryLiteralValue!2883 (text!20627 List!15726)) (StringLiteralValue!8649 (value!89233 List!15726)) (EOFValue!2883 (value!89234 List!15726)) (IdentValue!2883 (value!89235 List!15726)) (DelimiterValue!5767 (value!89236 List!15726)) (DedentValue!2883 (value!89237 List!15726)) (NewLineValue!2883 (value!89238 List!15726)) (IntegerValue!8649 (value!89239 (_ BitVec 32)) (text!20628 List!15726)) (IntegerValue!8650 (value!89240 Int) (text!20629 List!15726)) (Times!2883) (Or!2883) (Equal!2883) (Minus!2883) (Broken!14419 (value!89241 List!15726)) (And!2883) (Div!2883) (LessEqual!2883) (Mod!2883) (Concat!6990) (Not!2883) (Plus!2883) (SpaceValue!2883 (value!89242 List!15726)) (IntegerValue!8651 (value!89243 Int) (text!20630 List!15726)) (StringLiteralValue!8650 (text!20631 List!15726)) (FloatLiteralValue!5767 (text!20632 List!15726)) (BytesLiteralValue!2883 (value!89244 List!15726)) (CommentValue!5767 (value!89245 List!15726)) (StringLiteralValue!8651 (value!89246 List!15726)) (ErrorTokenValue!2883 (msg!2944 List!15726)) )
))
(declare-datatypes ((IArray!10675 0))(
  ( (IArray!10676 (innerList!5395 List!15727)) )
))
(declare-datatypes ((Conc!5335 0))(
  ( (Node!5335 (left!13206 Conc!5335) (right!13536 Conc!5335) (csize!10900 Int) (cheight!5546 Int)) (Leaf!7933 (xs!8090 IArray!10675) (csize!10901 Int)) (Empty!5335) )
))
(declare-datatypes ((BalanceConc!10610 0))(
  ( (BalanceConc!10611 (c!242876 Conc!5335)) )
))
(declare-datatypes ((TokenValueInjection!5426 0))(
  ( (TokenValueInjection!5427 (toValue!4128 Int) (toChars!3987 Int)) )
))
(declare-datatypes ((Regex!4107 0))(
  ( (ElementMatch!4107 (c!242877 C!8392)) (Concat!6991 (regOne!8726 Regex!4107) (regTwo!8726 Regex!4107)) (EmptyExpr!4107) (Star!4107 (reg!4436 Regex!4107)) (EmptyLang!4107) (Union!4107 (regOne!8727 Regex!4107) (regTwo!8727 Regex!4107)) )
))
(declare-datatypes ((String!18671 0))(
  ( (String!18672 (value!89247 String)) )
))
(declare-datatypes ((Rule!5386 0))(
  ( (Rule!5387 (regex!2793 Regex!4107) (tag!3057 String!18671) (isSeparator!2793 Bool) (transformation!2793 TokenValueInjection!5426)) )
))
(declare-datatypes ((List!15728 0))(
  ( (Nil!15662) (Cons!15662 (h!21063 Rule!5386) (t!137209 List!15728)) )
))
(declare-fun rules!4290 () List!15728)

(declare-fun b!1480377 () Bool)

(declare-datatypes ((Token!5248 0))(
  ( (Token!5249 (value!89248 TokenValue!2883) (rule!4570 Rule!5386) (size!12679 Int) (originalCharacters!3655 List!15727)) )
))
(declare-datatypes ((List!15729 0))(
  ( (Nil!15663) (Cons!15663 (h!21064 Token!5248) (t!137210 List!15729)) )
))
(declare-fun lt!514300 () List!15729)

(declare-fun e!946381 () Bool)

(declare-datatypes ((LexerInterface!2449 0))(
  ( (LexerInterfaceExt!2446 (__x!9557 Int)) (Lexer!2447) )
))
(declare-fun thiss!27374 () LexerInterface!2449)

(declare-fun tokensListTwoByTwoPredicateSeparableList!309 (LexerInterface!2449 List!15729 List!15728) Bool)

(assert (=> b!1480377 (= e!946381 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 lt!514300 rules!4290))))

(declare-fun b!1480378 () Bool)

(declare-fun res!668922 () Bool)

(declare-fun e!946374 () Bool)

(assert (=> b!1480378 (=> res!668922 e!946374)))

(declare-fun l1!3136 () List!15729)

(declare-fun isEmpty!9794 (List!15729) Bool)

(assert (=> b!1480378 (= res!668922 (isEmpty!9794 (t!137210 l1!3136)))))

(declare-fun e!946370 () Bool)

(declare-fun e!946383 () Bool)

(declare-fun tp!419739 () Bool)

(declare-fun b!1480379 () Bool)

(declare-fun inv!20878 (Token!5248) Bool)

(assert (=> b!1480379 (= e!946370 (and (inv!20878 (h!21064 l1!3136)) e!946383 tp!419739))))

(declare-fun b!1480380 () Bool)

(declare-fun res!668915 () Bool)

(declare-fun e!946368 () Bool)

(assert (=> b!1480380 (=> (not res!668915) (not e!946368))))

(assert (=> b!1480380 (= res!668915 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 l1!3136 rules!4290))))

(declare-fun lt!514299 () List!15729)

(declare-fun e!946377 () Bool)

(declare-fun b!1480381 () Bool)

(assert (=> b!1480381 (= e!946377 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 lt!514299 rules!4290))))

(declare-fun rulesProduceEachTokenIndividuallyList!816 (LexerInterface!2449 List!15728 List!15729) Bool)

(assert (=> b!1480381 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 lt!514299)))

(declare-fun l2!3105 () List!15729)

(declare-fun ++!4220 (List!15729 List!15729) List!15729)

(assert (=> b!1480381 (= lt!514299 (++!4220 l1!3136 l2!3105))))

(declare-datatypes ((Unit!25484 0))(
  ( (Unit!25485) )
))
(declare-fun lt!514293 () Unit!25484)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!74 (LexerInterface!2449 List!15728 List!15729 List!15729) Unit!25484)

(assert (=> b!1480381 (= lt!514293 (lemmaRulesProduceEachTokenIndividuallyConcat!74 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> b!1480381 e!946381))

(declare-fun res!668913 () Bool)

(assert (=> b!1480381 (=> (not res!668913) (not e!946381))))

(assert (=> b!1480381 (= res!668913 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 lt!514300))))

(assert (=> b!1480381 (= lt!514300 (++!4220 (t!137210 l1!3136) l2!3105))))

(declare-fun lt!514298 () Unit!25484)

(assert (=> b!1480381 (= lt!514298 (lemmaRulesProduceEachTokenIndividuallyConcat!74 thiss!27374 rules!4290 (t!137210 l1!3136) l2!3105))))

(declare-fun lt!514301 () Unit!25484)

(declare-fun tokensListTwoByTwoPredicateConcatSeparableTokensList!66 (LexerInterface!2449 List!15729 List!15729 List!15728) Unit!25484)

(assert (=> b!1480381 (= lt!514301 (tokensListTwoByTwoPredicateConcatSeparableTokensList!66 thiss!27374 (t!137210 l1!3136) l2!3105 rules!4290))))

(declare-fun b!1480382 () Bool)

(declare-fun res!668926 () Bool)

(assert (=> b!1480382 (=> (not res!668926) (not e!946368))))

(assert (=> b!1480382 (= res!668926 (not (isEmpty!9794 l2!3105)))))

(declare-fun b!1480383 () Bool)

(assert (=> b!1480383 (= e!946368 (not e!946374))))

(declare-fun res!668918 () Bool)

(assert (=> b!1480383 (=> res!668918 e!946374)))

(declare-fun lt!514292 () Token!5248)

(declare-fun lt!514294 () Token!5248)

(declare-fun separableTokensPredicate!588 (LexerInterface!2449 Token!5248 Token!5248 List!15728) Bool)

(assert (=> b!1480383 (= res!668918 (not (separableTokensPredicate!588 thiss!27374 lt!514292 lt!514294 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1306 (LexerInterface!2449 List!15728 Token!5248) Bool)

(assert (=> b!1480383 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514294)))

(declare-fun lt!514291 () Unit!25484)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 (LexerInterface!2449 List!15728 List!15729 Token!5248) Unit!25484)

(assert (=> b!1480383 (= lt!514291 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l2!3105 lt!514294))))

(declare-fun head!3081 (List!15729) Token!5248)

(assert (=> b!1480383 (= lt!514294 (head!3081 l2!3105))))

(assert (=> b!1480383 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514292)))

(declare-fun lt!514295 () Unit!25484)

(assert (=> b!1480383 (= lt!514295 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l1!3136 lt!514292))))

(declare-fun last!351 (List!15729) Token!5248)

(assert (=> b!1480383 (= lt!514292 (last!351 l1!3136))))

(declare-fun b!1480384 () Bool)

(declare-fun res!668923 () Bool)

(assert (=> b!1480384 (=> (not res!668923) (not e!946368))))

(assert (=> b!1480384 (= res!668923 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1480385 () Bool)

(declare-fun res!668921 () Bool)

(assert (=> b!1480385 (=> (not res!668921) (not e!946368))))

(declare-fun rulesInvariant!2238 (LexerInterface!2449 List!15728) Bool)

(assert (=> b!1480385 (= res!668921 (rulesInvariant!2238 thiss!27374 rules!4290))))

(declare-fun e!946369 () Bool)

(declare-fun b!1480386 () Bool)

(declare-fun tp!419736 () Bool)

(declare-fun e!946380 () Bool)

(declare-fun inv!20875 (String!18671) Bool)

(declare-fun inv!20879 (TokenValueInjection!5426) Bool)

(assert (=> b!1480386 (= e!946369 (and tp!419736 (inv!20875 (tag!3057 (rule!4570 (h!21064 l2!3105)))) (inv!20879 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) e!946380))))

(declare-fun e!946379 () Bool)

(declare-fun tp!419734 () Bool)

(declare-fun e!946385 () Bool)

(declare-fun b!1480387 () Bool)

(assert (=> b!1480387 (= e!946385 (and (inv!20878 (h!21064 l2!3105)) e!946379 tp!419734))))

(declare-fun b!1480389 () Bool)

(declare-fun res!668914 () Bool)

(assert (=> b!1480389 (=> res!668914 e!946374)))

(get-info :version)

(assert (=> b!1480389 (= res!668914 (not ((_ is Cons!15663) l1!3136)))))

(declare-fun tp!419744 () Bool)

(declare-fun b!1480390 () Bool)

(declare-fun inv!21 (TokenValue!2883) Bool)

(assert (=> b!1480390 (= e!946379 (and (inv!21 (value!89248 (h!21064 l2!3105))) e!946369 tp!419744))))

(declare-fun e!946384 () Bool)

(assert (=> b!1480391 (= e!946384 (and tp!419743 tp!419741))))

(declare-fun b!1480392 () Bool)

(declare-fun res!668916 () Bool)

(assert (=> b!1480392 (=> (not res!668916) (not e!946368))))

(declare-fun isEmpty!9795 (List!15728) Bool)

(assert (=> b!1480392 (= res!668916 (not (isEmpty!9795 rules!4290)))))

(assert (=> b!1480393 (= e!946380 (and tp!419735 tp!419737))))

(declare-fun b!1480394 () Bool)

(assert (=> b!1480394 (= e!946374 e!946377)))

(declare-fun res!668917 () Bool)

(assert (=> b!1480394 (=> res!668917 e!946377)))

(declare-fun lt!514296 () Token!5248)

(assert (=> b!1480394 (= res!668917 (not (separableTokensPredicate!588 thiss!27374 lt!514296 lt!514294 rules!4290)))))

(assert (=> b!1480394 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514296)))

(declare-fun lt!514297 () Unit!25484)

(assert (=> b!1480394 (= lt!514297 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 (t!137210 l1!3136) lt!514296))))

(assert (=> b!1480394 (= lt!514296 (last!351 (t!137210 l1!3136)))))

(declare-fun e!946373 () Bool)

(declare-fun tp!419740 () Bool)

(declare-fun b!1480395 () Bool)

(assert (=> b!1480395 (= e!946383 (and (inv!21 (value!89248 (h!21064 l1!3136))) e!946373 tp!419740))))

(declare-fun b!1480396 () Bool)

(declare-fun res!668919 () Bool)

(assert (=> b!1480396 (=> (not res!668919) (not e!946368))))

(assert (=> b!1480396 (= res!668919 (not (isEmpty!9794 l1!3136)))))

(declare-fun b!1480397 () Bool)

(declare-fun res!668925 () Bool)

(assert (=> b!1480397 (=> (not res!668925) (not e!946368))))

(assert (=> b!1480397 (= res!668925 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1480398 () Bool)

(declare-fun res!668924 () Bool)

(assert (=> b!1480398 (=> (not res!668924) (not e!946368))))

(assert (=> b!1480398 (= res!668924 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 l1!3136))))

(declare-fun b!1480399 () Bool)

(declare-fun res!668912 () Bool)

(assert (=> b!1480399 (=> res!668912 e!946374)))

(assert (=> b!1480399 (= res!668912 (not (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 l1!3136))))))

(declare-fun b!1480400 () Bool)

(declare-fun e!946378 () Bool)

(declare-fun tp!419738 () Bool)

(assert (=> b!1480400 (= e!946373 (and tp!419738 (inv!20875 (tag!3057 (rule!4570 (h!21064 l1!3136)))) (inv!20879 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) e!946378))))

(declare-fun b!1480401 () Bool)

(declare-fun res!668911 () Bool)

(assert (=> b!1480401 (=> res!668911 e!946374)))

(assert (=> b!1480401 (= res!668911 (not (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (t!137210 l1!3136) rules!4290)))))

(declare-fun res!668920 () Bool)

(assert (=> start!138974 (=> (not res!668920) (not e!946368))))

(assert (=> start!138974 (= res!668920 ((_ is Lexer!2447) thiss!27374))))

(assert (=> start!138974 e!946368))

(assert (=> start!138974 true))

(declare-fun e!946375 () Bool)

(assert (=> start!138974 e!946375))

(assert (=> start!138974 e!946370))

(assert (=> start!138974 e!946385))

(declare-fun tp!419733 () Bool)

(declare-fun e!946372 () Bool)

(declare-fun b!1480388 () Bool)

(assert (=> b!1480388 (= e!946372 (and tp!419733 (inv!20875 (tag!3057 (h!21063 rules!4290))) (inv!20879 (transformation!2793 (h!21063 rules!4290))) e!946384))))

(assert (=> b!1480402 (= e!946378 (and tp!419732 tp!419731))))

(declare-fun b!1480403 () Bool)

(declare-fun tp!419742 () Bool)

(assert (=> b!1480403 (= e!946375 (and e!946372 tp!419742))))

(assert (= (and start!138974 res!668920) b!1480392))

(assert (= (and b!1480392 res!668916) b!1480385))

(assert (= (and b!1480385 res!668921) b!1480398))

(assert (= (and b!1480398 res!668924) b!1480384))

(assert (= (and b!1480384 res!668923) b!1480380))

(assert (= (and b!1480380 res!668915) b!1480397))

(assert (= (and b!1480397 res!668925) b!1480396))

(assert (= (and b!1480396 res!668919) b!1480382))

(assert (= (and b!1480382 res!668926) b!1480383))

(assert (= (and b!1480383 (not res!668918)) b!1480389))

(assert (= (and b!1480389 (not res!668914)) b!1480378))

(assert (= (and b!1480378 (not res!668922)) b!1480399))

(assert (= (and b!1480399 (not res!668912)) b!1480401))

(assert (= (and b!1480401 (not res!668911)) b!1480394))

(assert (= (and b!1480394 (not res!668917)) b!1480381))

(assert (= (and b!1480381 res!668913) b!1480377))

(assert (= b!1480388 b!1480391))

(assert (= b!1480403 b!1480388))

(assert (= (and start!138974 ((_ is Cons!15662) rules!4290)) b!1480403))

(assert (= b!1480400 b!1480402))

(assert (= b!1480395 b!1480400))

(assert (= b!1480379 b!1480395))

(assert (= (and start!138974 ((_ is Cons!15663) l1!3136)) b!1480379))

(assert (= b!1480386 b!1480393))

(assert (= b!1480390 b!1480386))

(assert (= b!1480387 b!1480390))

(assert (= (and start!138974 ((_ is Cons!15663) l2!3105)) b!1480387))

(declare-fun m!1726015 () Bool)

(assert (=> b!1480396 m!1726015))

(declare-fun m!1726017 () Bool)

(assert (=> b!1480394 m!1726017))

(declare-fun m!1726019 () Bool)

(assert (=> b!1480394 m!1726019))

(declare-fun m!1726021 () Bool)

(assert (=> b!1480394 m!1726021))

(declare-fun m!1726023 () Bool)

(assert (=> b!1480394 m!1726023))

(declare-fun m!1726025 () Bool)

(assert (=> b!1480377 m!1726025))

(declare-fun m!1726027 () Bool)

(assert (=> b!1480382 m!1726027))

(declare-fun m!1726029 () Bool)

(assert (=> b!1480379 m!1726029))

(declare-fun m!1726031 () Bool)

(assert (=> b!1480380 m!1726031))

(declare-fun m!1726033 () Bool)

(assert (=> b!1480388 m!1726033))

(declare-fun m!1726035 () Bool)

(assert (=> b!1480388 m!1726035))

(declare-fun m!1726037 () Bool)

(assert (=> b!1480399 m!1726037))

(declare-fun m!1726039 () Bool)

(assert (=> b!1480392 m!1726039))

(declare-fun m!1726041 () Bool)

(assert (=> b!1480398 m!1726041))

(declare-fun m!1726043 () Bool)

(assert (=> b!1480401 m!1726043))

(declare-fun m!1726045 () Bool)

(assert (=> b!1480387 m!1726045))

(declare-fun m!1726047 () Bool)

(assert (=> b!1480378 m!1726047))

(declare-fun m!1726049 () Bool)

(assert (=> b!1480383 m!1726049))

(declare-fun m!1726051 () Bool)

(assert (=> b!1480383 m!1726051))

(declare-fun m!1726053 () Bool)

(assert (=> b!1480383 m!1726053))

(declare-fun m!1726055 () Bool)

(assert (=> b!1480383 m!1726055))

(declare-fun m!1726057 () Bool)

(assert (=> b!1480383 m!1726057))

(declare-fun m!1726059 () Bool)

(assert (=> b!1480383 m!1726059))

(declare-fun m!1726061 () Bool)

(assert (=> b!1480383 m!1726061))

(declare-fun m!1726063 () Bool)

(assert (=> b!1480395 m!1726063))

(declare-fun m!1726065 () Bool)

(assert (=> b!1480384 m!1726065))

(declare-fun m!1726067 () Bool)

(assert (=> b!1480385 m!1726067))

(declare-fun m!1726069 () Bool)

(assert (=> b!1480400 m!1726069))

(declare-fun m!1726071 () Bool)

(assert (=> b!1480400 m!1726071))

(declare-fun m!1726073 () Bool)

(assert (=> b!1480381 m!1726073))

(declare-fun m!1726075 () Bool)

(assert (=> b!1480381 m!1726075))

(declare-fun m!1726077 () Bool)

(assert (=> b!1480381 m!1726077))

(declare-fun m!1726079 () Bool)

(assert (=> b!1480381 m!1726079))

(declare-fun m!1726081 () Bool)

(assert (=> b!1480381 m!1726081))

(declare-fun m!1726083 () Bool)

(assert (=> b!1480381 m!1726083))

(declare-fun m!1726085 () Bool)

(assert (=> b!1480381 m!1726085))

(declare-fun m!1726087 () Bool)

(assert (=> b!1480381 m!1726087))

(declare-fun m!1726089 () Bool)

(assert (=> b!1480390 m!1726089))

(declare-fun m!1726091 () Bool)

(assert (=> b!1480386 m!1726091))

(declare-fun m!1726093 () Bool)

(assert (=> b!1480386 m!1726093))

(declare-fun m!1726095 () Bool)

(assert (=> b!1480397 m!1726095))

(check-sat (not b!1480377) (not b!1480390) b_and!102639 (not b_next!38883) b_and!102633 (not b!1480388) (not b!1480397) (not b!1480378) (not b!1480400) (not b!1480392) (not b_next!38885) (not b!1480379) b_and!102631 (not b_next!38879) (not b!1480383) (not b!1480395) (not b!1480396) (not b!1480401) (not b!1480403) (not b_next!38881) b_and!102637 (not b_next!38887) (not b!1480381) (not b!1480380) (not b!1480394) (not b!1480384) (not b!1480387) (not b_next!38889) (not b!1480385) (not b!1480382) (not b!1480399) b_and!102629 (not b!1480386) b_and!102635 (not b!1480398))
(check-sat (not b_next!38881) b_and!102639 (not b_next!38883) b_and!102633 (not b_next!38889) b_and!102629 (not b_next!38885) b_and!102635 b_and!102631 (not b_next!38879) b_and!102637 (not b_next!38887))
(get-model)

(declare-fun d!434018 () Bool)

(assert (=> d!434018 (= (inv!20875 (tag!3057 (rule!4570 (h!21064 l2!3105)))) (= (mod (str.len (value!89247 (tag!3057 (rule!4570 (h!21064 l2!3105))))) 2) 0))))

(assert (=> b!1480386 d!434018))

(declare-fun d!434020 () Bool)

(declare-fun res!668931 () Bool)

(declare-fun e!946389 () Bool)

(assert (=> d!434020 (=> (not res!668931) (not e!946389))))

(declare-fun semiInverseModEq!1052 (Int Int) Bool)

(assert (=> d!434020 (= res!668931 (semiInverseModEq!1052 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (toValue!4128 (transformation!2793 (rule!4570 (h!21064 l2!3105))))))))

(assert (=> d!434020 (= (inv!20879 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) e!946389)))

(declare-fun b!1480406 () Bool)

(declare-fun equivClasses!1011 (Int Int) Bool)

(assert (=> b!1480406 (= e!946389 (equivClasses!1011 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (toValue!4128 (transformation!2793 (rule!4570 (h!21064 l2!3105))))))))

(assert (= (and d!434020 res!668931) b!1480406))

(declare-fun m!1726097 () Bool)

(assert (=> d!434020 m!1726097))

(declare-fun m!1726099 () Bool)

(assert (=> b!1480406 m!1726099))

(assert (=> b!1480386 d!434020))

(declare-fun d!434022 () Bool)

(assert (=> d!434022 (= (isEmpty!9794 l1!3136) ((_ is Nil!15663) l1!3136))))

(assert (=> b!1480396 d!434022))

(declare-fun d!434024 () Bool)

(declare-fun res!668934 () Bool)

(declare-fun e!946392 () Bool)

(assert (=> d!434024 (=> (not res!668934) (not e!946392))))

(declare-fun rulesValid!1023 (LexerInterface!2449 List!15728) Bool)

(assert (=> d!434024 (= res!668934 (rulesValid!1023 thiss!27374 rules!4290))))

(assert (=> d!434024 (= (rulesInvariant!2238 thiss!27374 rules!4290) e!946392)))

(declare-fun b!1480409 () Bool)

(declare-datatypes ((List!15730 0))(
  ( (Nil!15664) (Cons!15664 (h!21065 String!18671) (t!137255 List!15730)) )
))
(declare-fun noDuplicateTag!1023 (LexerInterface!2449 List!15728 List!15730) Bool)

(assert (=> b!1480409 (= e!946392 (noDuplicateTag!1023 thiss!27374 rules!4290 Nil!15664))))

(assert (= (and d!434024 res!668934) b!1480409))

(declare-fun m!1726101 () Bool)

(assert (=> d!434024 m!1726101))

(declare-fun m!1726103 () Bool)

(assert (=> b!1480409 m!1726103))

(assert (=> b!1480385 d!434024))

(declare-fun b!1480445 () Bool)

(declare-fun e!946420 () Bool)

(assert (=> b!1480445 (= e!946420 true)))

(declare-fun b!1480444 () Bool)

(declare-fun e!946419 () Bool)

(assert (=> b!1480444 (= e!946419 e!946420)))

(declare-fun b!1480443 () Bool)

(declare-fun e!946418 () Bool)

(assert (=> b!1480443 (= e!946418 e!946419)))

(declare-fun d!434026 () Bool)

(assert (=> d!434026 e!946418))

(assert (= b!1480444 b!1480445))

(assert (= b!1480443 b!1480444))

(assert (= (and d!434026 ((_ is Cons!15662) rules!4290)) b!1480443))

(declare-fun lambda!63758 () Int)

(declare-fun order!9445 () Int)

(declare-fun order!9443 () Int)

(declare-fun dynLambda!7123 (Int Int) Int)

(declare-fun dynLambda!7124 (Int Int) Int)

(assert (=> b!1480445 (< (dynLambda!7123 order!9443 (toValue!4128 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63758))))

(declare-fun order!9447 () Int)

(declare-fun dynLambda!7125 (Int Int) Int)

(assert (=> b!1480445 (< (dynLambda!7125 order!9447 (toChars!3987 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63758))))

(assert (=> d!434026 true))

(declare-fun lt!514306 () Bool)

(declare-fun forall!3809 (List!15729 Int) Bool)

(assert (=> d!434026 (= lt!514306 (forall!3809 l1!3136 lambda!63758))))

(declare-fun e!946410 () Bool)

(assert (=> d!434026 (= lt!514306 e!946410)))

(declare-fun res!668950 () Bool)

(assert (=> d!434026 (=> res!668950 e!946410)))

(assert (=> d!434026 (= res!668950 (not ((_ is Cons!15663) l1!3136)))))

(assert (=> d!434026 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434026 (= (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 l1!3136) lt!514306)))

(declare-fun b!1480433 () Bool)

(declare-fun e!946411 () Bool)

(assert (=> b!1480433 (= e!946410 e!946411)))

(declare-fun res!668949 () Bool)

(assert (=> b!1480433 (=> (not res!668949) (not e!946411))))

(assert (=> b!1480433 (= res!668949 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 l1!3136)))))

(declare-fun b!1480434 () Bool)

(assert (=> b!1480434 (= e!946411 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 l1!3136)))))

(assert (= (and d!434026 (not res!668950)) b!1480433))

(assert (= (and b!1480433 res!668949) b!1480434))

(declare-fun m!1726111 () Bool)

(assert (=> d!434026 m!1726111))

(assert (=> d!434026 m!1726039))

(declare-fun m!1726113 () Bool)

(assert (=> b!1480433 m!1726113))

(assert (=> b!1480434 m!1726037))

(assert (=> b!1480398 d!434026))

(declare-fun d!434032 () Bool)

(declare-fun res!668955 () Bool)

(declare-fun e!946423 () Bool)

(assert (=> d!434032 (=> (not res!668955) (not e!946423))))

(declare-fun isEmpty!9796 (List!15727) Bool)

(assert (=> d!434032 (= res!668955 (not (isEmpty!9796 (originalCharacters!3655 (h!21064 l2!3105)))))))

(assert (=> d!434032 (= (inv!20878 (h!21064 l2!3105)) e!946423)))

(declare-fun b!1480452 () Bool)

(declare-fun res!668956 () Bool)

(assert (=> b!1480452 (=> (not res!668956) (not e!946423))))

(declare-fun list!6223 (BalanceConc!10610) List!15727)

(declare-fun dynLambda!7126 (Int TokenValue!2883) BalanceConc!10610)

(assert (=> b!1480452 (= res!668956 (= (originalCharacters!3655 (h!21064 l2!3105)) (list!6223 (dynLambda!7126 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (value!89248 (h!21064 l2!3105))))))))

(declare-fun b!1480453 () Bool)

(declare-fun size!12680 (List!15727) Int)

(assert (=> b!1480453 (= e!946423 (= (size!12679 (h!21064 l2!3105)) (size!12680 (originalCharacters!3655 (h!21064 l2!3105)))))))

(assert (= (and d!434032 res!668955) b!1480452))

(assert (= (and b!1480452 res!668956) b!1480453))

(declare-fun b_lambda!46339 () Bool)

(assert (=> (not b_lambda!46339) (not b!1480452)))

(declare-fun t!137216 () Bool)

(declare-fun tb!84509 () Bool)

(assert (=> (and b!1480402 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105))))) t!137216) tb!84509))

(declare-fun b!1480458 () Bool)

(declare-fun e!946426 () Bool)

(declare-fun tp!419747 () Bool)

(declare-fun inv!20880 (Conc!5335) Bool)

(assert (=> b!1480458 (= e!946426 (and (inv!20880 (c!242876 (dynLambda!7126 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (value!89248 (h!21064 l2!3105))))) tp!419747))))

(declare-fun result!101622 () Bool)

(declare-fun inv!20881 (BalanceConc!10610) Bool)

(assert (=> tb!84509 (= result!101622 (and (inv!20881 (dynLambda!7126 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (value!89248 (h!21064 l2!3105)))) e!946426))))

(assert (= tb!84509 b!1480458))

(declare-fun m!1726115 () Bool)

(assert (=> b!1480458 m!1726115))

(declare-fun m!1726117 () Bool)

(assert (=> tb!84509 m!1726117))

(assert (=> b!1480452 t!137216))

(declare-fun b_and!102641 () Bool)

(assert (= b_and!102631 (and (=> t!137216 result!101622) b_and!102641)))

(declare-fun t!137218 () Bool)

(declare-fun tb!84511 () Bool)

(assert (=> (and b!1480393 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105))))) t!137218) tb!84511))

(declare-fun result!101626 () Bool)

(assert (= result!101626 result!101622))

(assert (=> b!1480452 t!137218))

(declare-fun b_and!102643 () Bool)

(assert (= b_and!102635 (and (=> t!137218 result!101626) b_and!102643)))

(declare-fun t!137220 () Bool)

(declare-fun tb!84513 () Bool)

(assert (=> (and b!1480391 (= (toChars!3987 (transformation!2793 (h!21063 rules!4290))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105))))) t!137220) tb!84513))

(declare-fun result!101628 () Bool)

(assert (= result!101628 result!101622))

(assert (=> b!1480452 t!137220))

(declare-fun b_and!102645 () Bool)

(assert (= b_and!102639 (and (=> t!137220 result!101628) b_and!102645)))

(declare-fun m!1726119 () Bool)

(assert (=> d!434032 m!1726119))

(declare-fun m!1726121 () Bool)

(assert (=> b!1480452 m!1726121))

(assert (=> b!1480452 m!1726121))

(declare-fun m!1726123 () Bool)

(assert (=> b!1480452 m!1726123))

(declare-fun m!1726125 () Bool)

(assert (=> b!1480453 m!1726125))

(assert (=> b!1480387 d!434032))

(declare-fun d!434034 () Bool)

(declare-fun res!668969 () Bool)

(declare-fun e!946454 () Bool)

(assert (=> d!434034 (=> res!668969 e!946454)))

(assert (=> d!434034 (= res!668969 (or (not ((_ is Cons!15663) l2!3105)) (not ((_ is Cons!15663) (t!137210 l2!3105)))))))

(assert (=> d!434034 (= (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 l2!3105 rules!4290) e!946454)))

(declare-fun b!1480491 () Bool)

(declare-fun e!946453 () Bool)

(assert (=> b!1480491 (= e!946454 e!946453)))

(declare-fun res!668970 () Bool)

(assert (=> b!1480491 (=> (not res!668970) (not e!946453))))

(assert (=> b!1480491 (= res!668970 (separableTokensPredicate!588 thiss!27374 (h!21064 l2!3105) (h!21064 (t!137210 l2!3105)) rules!4290))))

(declare-fun lt!514323 () Unit!25484)

(declare-fun Unit!25486 () Unit!25484)

(assert (=> b!1480491 (= lt!514323 Unit!25486)))

(declare-fun size!12681 (BalanceConc!10610) Int)

(declare-fun charsOf!1600 (Token!5248) BalanceConc!10610)

(assert (=> b!1480491 (> (size!12681 (charsOf!1600 (h!21064 (t!137210 l2!3105)))) 0)))

(declare-fun lt!514329 () Unit!25484)

(declare-fun Unit!25487 () Unit!25484)

(assert (=> b!1480491 (= lt!514329 Unit!25487)))

(assert (=> b!1480491 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 l2!3105)))))

(declare-fun lt!514326 () Unit!25484)

(declare-fun Unit!25488 () Unit!25484)

(assert (=> b!1480491 (= lt!514326 Unit!25488)))

(assert (=> b!1480491 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 l2!3105))))

(declare-fun lt!514327 () Unit!25484)

(declare-fun lt!514325 () Unit!25484)

(assert (=> b!1480491 (= lt!514327 lt!514325)))

(assert (=> b!1480491 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 l2!3105)))))

(assert (=> b!1480491 (= lt!514325 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l2!3105 (h!21064 (t!137210 l2!3105))))))

(declare-fun lt!514328 () Unit!25484)

(declare-fun lt!514324 () Unit!25484)

(assert (=> b!1480491 (= lt!514328 lt!514324)))

(assert (=> b!1480491 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 l2!3105))))

(assert (=> b!1480491 (= lt!514324 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l2!3105 (h!21064 l2!3105)))))

(declare-fun b!1480492 () Bool)

(assert (=> b!1480492 (= e!946453 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (Cons!15663 (h!21064 (t!137210 l2!3105)) (t!137210 (t!137210 l2!3105))) rules!4290))))

(assert (= (and d!434034 (not res!668969)) b!1480491))

(assert (= (and b!1480491 res!668970) b!1480492))

(declare-fun m!1726147 () Bool)

(assert (=> b!1480491 m!1726147))

(declare-fun m!1726149 () Bool)

(assert (=> b!1480491 m!1726149))

(declare-fun m!1726151 () Bool)

(assert (=> b!1480491 m!1726151))

(declare-fun m!1726153 () Bool)

(assert (=> b!1480491 m!1726153))

(assert (=> b!1480491 m!1726149))

(declare-fun m!1726155 () Bool)

(assert (=> b!1480491 m!1726155))

(declare-fun m!1726157 () Bool)

(assert (=> b!1480491 m!1726157))

(declare-fun m!1726159 () Bool)

(assert (=> b!1480491 m!1726159))

(declare-fun m!1726161 () Bool)

(assert (=> b!1480492 m!1726161))

(assert (=> b!1480397 d!434034))

(declare-fun d!434048 () Bool)

(assert (=> d!434048 (= (isEmpty!9794 (t!137210 l1!3136)) ((_ is Nil!15663) (t!137210 l1!3136)))))

(assert (=> b!1480378 d!434048))

(declare-fun bs!345818 () Bool)

(declare-fun d!434050 () Bool)

(assert (= bs!345818 (and d!434050 d!434026)))

(declare-fun lambda!63763 () Int)

(assert (=> bs!345818 (= lambda!63763 lambda!63758)))

(declare-fun b!1480497 () Bool)

(declare-fun e!946459 () Bool)

(assert (=> b!1480497 (= e!946459 true)))

(declare-fun b!1480496 () Bool)

(declare-fun e!946458 () Bool)

(assert (=> b!1480496 (= e!946458 e!946459)))

(declare-fun b!1480495 () Bool)

(declare-fun e!946457 () Bool)

(assert (=> b!1480495 (= e!946457 e!946458)))

(assert (=> d!434050 e!946457))

(assert (= b!1480496 b!1480497))

(assert (= b!1480495 b!1480496))

(assert (= (and d!434050 ((_ is Cons!15662) rules!4290)) b!1480495))

(assert (=> b!1480497 (< (dynLambda!7123 order!9443 (toValue!4128 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63763))))

(assert (=> b!1480497 (< (dynLambda!7125 order!9447 (toChars!3987 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63763))))

(assert (=> d!434050 true))

(declare-fun lt!514330 () Bool)

(assert (=> d!434050 (= lt!514330 (forall!3809 (t!137210 l1!3136) lambda!63763))))

(declare-fun e!946455 () Bool)

(assert (=> d!434050 (= lt!514330 e!946455)))

(declare-fun res!668972 () Bool)

(assert (=> d!434050 (=> res!668972 e!946455)))

(assert (=> d!434050 (= res!668972 (not ((_ is Cons!15663) (t!137210 l1!3136))))))

(assert (=> d!434050 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434050 (= (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 l1!3136)) lt!514330)))

(declare-fun b!1480493 () Bool)

(declare-fun e!946456 () Bool)

(assert (=> b!1480493 (= e!946455 e!946456)))

(declare-fun res!668971 () Bool)

(assert (=> b!1480493 (=> (not res!668971) (not e!946456))))

(assert (=> b!1480493 (= res!668971 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 l1!3136))))))

(declare-fun b!1480494 () Bool)

(assert (=> b!1480494 (= e!946456 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 (t!137210 l1!3136))))))

(assert (= (and d!434050 (not res!668972)) b!1480493))

(assert (= (and b!1480493 res!668971) b!1480494))

(declare-fun m!1726163 () Bool)

(assert (=> d!434050 m!1726163))

(assert (=> d!434050 m!1726039))

(declare-fun m!1726165 () Bool)

(assert (=> b!1480493 m!1726165))

(declare-fun m!1726167 () Bool)

(assert (=> b!1480494 m!1726167))

(assert (=> b!1480399 d!434050))

(declare-fun d!434052 () Bool)

(assert (=> d!434052 (= (inv!20875 (tag!3057 (h!21063 rules!4290))) (= (mod (str.len (value!89247 (tag!3057 (h!21063 rules!4290)))) 2) 0))))

(assert (=> b!1480388 d!434052))

(declare-fun d!434054 () Bool)

(declare-fun res!668973 () Bool)

(declare-fun e!946460 () Bool)

(assert (=> d!434054 (=> (not res!668973) (not e!946460))))

(assert (=> d!434054 (= res!668973 (semiInverseModEq!1052 (toChars!3987 (transformation!2793 (h!21063 rules!4290))) (toValue!4128 (transformation!2793 (h!21063 rules!4290)))))))

(assert (=> d!434054 (= (inv!20879 (transformation!2793 (h!21063 rules!4290))) e!946460)))

(declare-fun b!1480498 () Bool)

(assert (=> b!1480498 (= e!946460 (equivClasses!1011 (toChars!3987 (transformation!2793 (h!21063 rules!4290))) (toValue!4128 (transformation!2793 (h!21063 rules!4290)))))))

(assert (= (and d!434054 res!668973) b!1480498))

(declare-fun m!1726169 () Bool)

(assert (=> d!434054 m!1726169))

(declare-fun m!1726171 () Bool)

(assert (=> b!1480498 m!1726171))

(assert (=> b!1480388 d!434054))

(declare-fun d!434056 () Bool)

(declare-fun res!668974 () Bool)

(declare-fun e!946462 () Bool)

(assert (=> d!434056 (=> res!668974 e!946462)))

(assert (=> d!434056 (= res!668974 (or (not ((_ is Cons!15663) lt!514300)) (not ((_ is Cons!15663) (t!137210 lt!514300)))))))

(assert (=> d!434056 (= (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 lt!514300 rules!4290) e!946462)))

(declare-fun b!1480499 () Bool)

(declare-fun e!946461 () Bool)

(assert (=> b!1480499 (= e!946462 e!946461)))

(declare-fun res!668975 () Bool)

(assert (=> b!1480499 (=> (not res!668975) (not e!946461))))

(assert (=> b!1480499 (= res!668975 (separableTokensPredicate!588 thiss!27374 (h!21064 lt!514300) (h!21064 (t!137210 lt!514300)) rules!4290))))

(declare-fun lt!514331 () Unit!25484)

(declare-fun Unit!25489 () Unit!25484)

(assert (=> b!1480499 (= lt!514331 Unit!25489)))

(assert (=> b!1480499 (> (size!12681 (charsOf!1600 (h!21064 (t!137210 lt!514300)))) 0)))

(declare-fun lt!514337 () Unit!25484)

(declare-fun Unit!25490 () Unit!25484)

(assert (=> b!1480499 (= lt!514337 Unit!25490)))

(assert (=> b!1480499 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 lt!514300)))))

(declare-fun lt!514334 () Unit!25484)

(declare-fun Unit!25491 () Unit!25484)

(assert (=> b!1480499 (= lt!514334 Unit!25491)))

(assert (=> b!1480499 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 lt!514300))))

(declare-fun lt!514335 () Unit!25484)

(declare-fun lt!514333 () Unit!25484)

(assert (=> b!1480499 (= lt!514335 lt!514333)))

(assert (=> b!1480499 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 lt!514300)))))

(assert (=> b!1480499 (= lt!514333 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 lt!514300 (h!21064 (t!137210 lt!514300))))))

(declare-fun lt!514336 () Unit!25484)

(declare-fun lt!514332 () Unit!25484)

(assert (=> b!1480499 (= lt!514336 lt!514332)))

(assert (=> b!1480499 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 lt!514300))))

(assert (=> b!1480499 (= lt!514332 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 lt!514300 (h!21064 lt!514300)))))

(declare-fun b!1480500 () Bool)

(assert (=> b!1480500 (= e!946461 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (Cons!15663 (h!21064 (t!137210 lt!514300)) (t!137210 (t!137210 lt!514300))) rules!4290))))

(assert (= (and d!434056 (not res!668974)) b!1480499))

(assert (= (and b!1480499 res!668975) b!1480500))

(declare-fun m!1726173 () Bool)

(assert (=> b!1480499 m!1726173))

(declare-fun m!1726175 () Bool)

(assert (=> b!1480499 m!1726175))

(declare-fun m!1726177 () Bool)

(assert (=> b!1480499 m!1726177))

(declare-fun m!1726179 () Bool)

(assert (=> b!1480499 m!1726179))

(assert (=> b!1480499 m!1726175))

(declare-fun m!1726181 () Bool)

(assert (=> b!1480499 m!1726181))

(declare-fun m!1726183 () Bool)

(assert (=> b!1480499 m!1726183))

(declare-fun m!1726185 () Bool)

(assert (=> b!1480499 m!1726185))

(declare-fun m!1726187 () Bool)

(assert (=> b!1480500 m!1726187))

(assert (=> b!1480377 d!434056))

(declare-fun b!1480511 () Bool)

(declare-fun e!946470 () Bool)

(declare-fun inv!16 (TokenValue!2883) Bool)

(assert (=> b!1480511 (= e!946470 (inv!16 (value!89248 (h!21064 l2!3105))))))

(declare-fun b!1480512 () Bool)

(declare-fun e!946469 () Bool)

(assert (=> b!1480512 (= e!946470 e!946469)))

(declare-fun c!242890 () Bool)

(assert (=> b!1480512 (= c!242890 ((_ is IntegerValue!8650) (value!89248 (h!21064 l2!3105))))))

(declare-fun b!1480513 () Bool)

(declare-fun res!668978 () Bool)

(declare-fun e!946471 () Bool)

(assert (=> b!1480513 (=> res!668978 e!946471)))

(assert (=> b!1480513 (= res!668978 (not ((_ is IntegerValue!8651) (value!89248 (h!21064 l2!3105)))))))

(assert (=> b!1480513 (= e!946469 e!946471)))

(declare-fun b!1480514 () Bool)

(declare-fun inv!15 (TokenValue!2883) Bool)

(assert (=> b!1480514 (= e!946471 (inv!15 (value!89248 (h!21064 l2!3105))))))

(declare-fun d!434058 () Bool)

(declare-fun c!242891 () Bool)

(assert (=> d!434058 (= c!242891 ((_ is IntegerValue!8649) (value!89248 (h!21064 l2!3105))))))

(assert (=> d!434058 (= (inv!21 (value!89248 (h!21064 l2!3105))) e!946470)))

(declare-fun b!1480515 () Bool)

(declare-fun inv!17 (TokenValue!2883) Bool)

(assert (=> b!1480515 (= e!946469 (inv!17 (value!89248 (h!21064 l2!3105))))))

(assert (= (and d!434058 c!242891) b!1480511))

(assert (= (and d!434058 (not c!242891)) b!1480512))

(assert (= (and b!1480512 c!242890) b!1480515))

(assert (= (and b!1480512 (not c!242890)) b!1480513))

(assert (= (and b!1480513 (not res!668978)) b!1480514))

(declare-fun m!1726189 () Bool)

(assert (=> b!1480511 m!1726189))

(declare-fun m!1726191 () Bool)

(assert (=> b!1480514 m!1726191))

(declare-fun m!1726193 () Bool)

(assert (=> b!1480515 m!1726193))

(assert (=> b!1480390 d!434058))

(declare-fun d!434060 () Bool)

(declare-fun res!668979 () Bool)

(declare-fun e!946472 () Bool)

(assert (=> d!434060 (=> (not res!668979) (not e!946472))))

(assert (=> d!434060 (= res!668979 (not (isEmpty!9796 (originalCharacters!3655 (h!21064 l1!3136)))))))

(assert (=> d!434060 (= (inv!20878 (h!21064 l1!3136)) e!946472)))

(declare-fun b!1480516 () Bool)

(declare-fun res!668980 () Bool)

(assert (=> b!1480516 (=> (not res!668980) (not e!946472))))

(assert (=> b!1480516 (= res!668980 (= (originalCharacters!3655 (h!21064 l1!3136)) (list!6223 (dynLambda!7126 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (value!89248 (h!21064 l1!3136))))))))

(declare-fun b!1480517 () Bool)

(assert (=> b!1480517 (= e!946472 (= (size!12679 (h!21064 l1!3136)) (size!12680 (originalCharacters!3655 (h!21064 l1!3136)))))))

(assert (= (and d!434060 res!668979) b!1480516))

(assert (= (and b!1480516 res!668980) b!1480517))

(declare-fun b_lambda!46341 () Bool)

(assert (=> (not b_lambda!46341) (not b!1480516)))

(declare-fun t!137222 () Bool)

(declare-fun tb!84515 () Bool)

(assert (=> (and b!1480402 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136))))) t!137222) tb!84515))

(declare-fun b!1480518 () Bool)

(declare-fun e!946473 () Bool)

(declare-fun tp!419748 () Bool)

(assert (=> b!1480518 (= e!946473 (and (inv!20880 (c!242876 (dynLambda!7126 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (value!89248 (h!21064 l1!3136))))) tp!419748))))

(declare-fun result!101630 () Bool)

(assert (=> tb!84515 (= result!101630 (and (inv!20881 (dynLambda!7126 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (value!89248 (h!21064 l1!3136)))) e!946473))))

(assert (= tb!84515 b!1480518))

(declare-fun m!1726195 () Bool)

(assert (=> b!1480518 m!1726195))

(declare-fun m!1726197 () Bool)

(assert (=> tb!84515 m!1726197))

(assert (=> b!1480516 t!137222))

(declare-fun b_and!102647 () Bool)

(assert (= b_and!102641 (and (=> t!137222 result!101630) b_and!102647)))

(declare-fun tb!84517 () Bool)

(declare-fun t!137224 () Bool)

(assert (=> (and b!1480393 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136))))) t!137224) tb!84517))

(declare-fun result!101632 () Bool)

(assert (= result!101632 result!101630))

(assert (=> b!1480516 t!137224))

(declare-fun b_and!102649 () Bool)

(assert (= b_and!102643 (and (=> t!137224 result!101632) b_and!102649)))

(declare-fun tb!84519 () Bool)

(declare-fun t!137226 () Bool)

(assert (=> (and b!1480391 (= (toChars!3987 (transformation!2793 (h!21063 rules!4290))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136))))) t!137226) tb!84519))

(declare-fun result!101634 () Bool)

(assert (= result!101634 result!101630))

(assert (=> b!1480516 t!137226))

(declare-fun b_and!102651 () Bool)

(assert (= b_and!102645 (and (=> t!137226 result!101634) b_and!102651)))

(declare-fun m!1726199 () Bool)

(assert (=> d!434060 m!1726199))

(declare-fun m!1726201 () Bool)

(assert (=> b!1480516 m!1726201))

(assert (=> b!1480516 m!1726201))

(declare-fun m!1726203 () Bool)

(assert (=> b!1480516 m!1726203))

(declare-fun m!1726205 () Bool)

(assert (=> b!1480517 m!1726205))

(assert (=> b!1480379 d!434060))

(declare-fun d!434062 () Bool)

(assert (=> d!434062 (= (inv!20875 (tag!3057 (rule!4570 (h!21064 l1!3136)))) (= (mod (str.len (value!89247 (tag!3057 (rule!4570 (h!21064 l1!3136))))) 2) 0))))

(assert (=> b!1480400 d!434062))

(declare-fun d!434064 () Bool)

(declare-fun res!668981 () Bool)

(declare-fun e!946474 () Bool)

(assert (=> d!434064 (=> (not res!668981) (not e!946474))))

(assert (=> d!434064 (= res!668981 (semiInverseModEq!1052 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (toValue!4128 (transformation!2793 (rule!4570 (h!21064 l1!3136))))))))

(assert (=> d!434064 (= (inv!20879 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) e!946474)))

(declare-fun b!1480519 () Bool)

(assert (=> b!1480519 (= e!946474 (equivClasses!1011 (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (toValue!4128 (transformation!2793 (rule!4570 (h!21064 l1!3136))))))))

(assert (= (and d!434064 res!668981) b!1480519))

(declare-fun m!1726207 () Bool)

(assert (=> d!434064 m!1726207))

(declare-fun m!1726209 () Bool)

(assert (=> b!1480519 m!1726209))

(assert (=> b!1480400 d!434064))

(declare-fun d!434066 () Bool)

(declare-fun res!668982 () Bool)

(declare-fun e!946476 () Bool)

(assert (=> d!434066 (=> res!668982 e!946476)))

(assert (=> d!434066 (= res!668982 (or (not ((_ is Cons!15663) l1!3136)) (not ((_ is Cons!15663) (t!137210 l1!3136)))))))

(assert (=> d!434066 (= (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 l1!3136 rules!4290) e!946476)))

(declare-fun b!1480520 () Bool)

(declare-fun e!946475 () Bool)

(assert (=> b!1480520 (= e!946476 e!946475)))

(declare-fun res!668983 () Bool)

(assert (=> b!1480520 (=> (not res!668983) (not e!946475))))

(assert (=> b!1480520 (= res!668983 (separableTokensPredicate!588 thiss!27374 (h!21064 l1!3136) (h!21064 (t!137210 l1!3136)) rules!4290))))

(declare-fun lt!514338 () Unit!25484)

(declare-fun Unit!25495 () Unit!25484)

(assert (=> b!1480520 (= lt!514338 Unit!25495)))

(assert (=> b!1480520 (> (size!12681 (charsOf!1600 (h!21064 (t!137210 l1!3136)))) 0)))

(declare-fun lt!514344 () Unit!25484)

(declare-fun Unit!25496 () Unit!25484)

(assert (=> b!1480520 (= lt!514344 Unit!25496)))

(assert (=> b!1480520 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 l1!3136)))))

(declare-fun lt!514341 () Unit!25484)

(declare-fun Unit!25497 () Unit!25484)

(assert (=> b!1480520 (= lt!514341 Unit!25497)))

(assert (=> b!1480520 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 l1!3136))))

(declare-fun lt!514342 () Unit!25484)

(declare-fun lt!514340 () Unit!25484)

(assert (=> b!1480520 (= lt!514342 lt!514340)))

(assert (=> b!1480520 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 l1!3136)))))

(assert (=> b!1480520 (= lt!514340 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l1!3136 (h!21064 (t!137210 l1!3136))))))

(declare-fun lt!514343 () Unit!25484)

(declare-fun lt!514339 () Unit!25484)

(assert (=> b!1480520 (= lt!514343 lt!514339)))

(assert (=> b!1480520 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 l1!3136))))

(assert (=> b!1480520 (= lt!514339 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l1!3136 (h!21064 l1!3136)))))

(declare-fun b!1480521 () Bool)

(assert (=> b!1480521 (= e!946475 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (Cons!15663 (h!21064 (t!137210 l1!3136)) (t!137210 (t!137210 l1!3136))) rules!4290))))

(assert (= (and d!434066 (not res!668982)) b!1480520))

(assert (= (and b!1480520 res!668983) b!1480521))

(declare-fun m!1726211 () Bool)

(assert (=> b!1480520 m!1726211))

(declare-fun m!1726213 () Bool)

(assert (=> b!1480520 m!1726213))

(assert (=> b!1480520 m!1726165))

(assert (=> b!1480520 m!1726113))

(assert (=> b!1480520 m!1726213))

(declare-fun m!1726215 () Bool)

(assert (=> b!1480520 m!1726215))

(declare-fun m!1726217 () Bool)

(assert (=> b!1480520 m!1726217))

(declare-fun m!1726219 () Bool)

(assert (=> b!1480520 m!1726219))

(declare-fun m!1726221 () Bool)

(assert (=> b!1480521 m!1726221))

(assert (=> b!1480380 d!434066))

(declare-fun d!434068 () Bool)

(declare-fun res!668984 () Bool)

(declare-fun e!946478 () Bool)

(assert (=> d!434068 (=> res!668984 e!946478)))

(assert (=> d!434068 (= res!668984 (or (not ((_ is Cons!15663) (t!137210 l1!3136))) (not ((_ is Cons!15663) (t!137210 (t!137210 l1!3136))))))))

(assert (=> d!434068 (= (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (t!137210 l1!3136) rules!4290) e!946478)))

(declare-fun b!1480522 () Bool)

(declare-fun e!946477 () Bool)

(assert (=> b!1480522 (= e!946478 e!946477)))

(declare-fun res!668985 () Bool)

(assert (=> b!1480522 (=> (not res!668985) (not e!946477))))

(assert (=> b!1480522 (= res!668985 (separableTokensPredicate!588 thiss!27374 (h!21064 (t!137210 l1!3136)) (h!21064 (t!137210 (t!137210 l1!3136))) rules!4290))))

(declare-fun lt!514345 () Unit!25484)

(declare-fun Unit!25498 () Unit!25484)

(assert (=> b!1480522 (= lt!514345 Unit!25498)))

(assert (=> b!1480522 (> (size!12681 (charsOf!1600 (h!21064 (t!137210 (t!137210 l1!3136))))) 0)))

(declare-fun lt!514351 () Unit!25484)

(declare-fun Unit!25499 () Unit!25484)

(assert (=> b!1480522 (= lt!514351 Unit!25499)))

(assert (=> b!1480522 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 (t!137210 l1!3136))))))

(declare-fun lt!514348 () Unit!25484)

(declare-fun Unit!25500 () Unit!25484)

(assert (=> b!1480522 (= lt!514348 Unit!25500)))

(assert (=> b!1480522 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 l1!3136)))))

(declare-fun lt!514349 () Unit!25484)

(declare-fun lt!514347 () Unit!25484)

(assert (=> b!1480522 (= lt!514349 lt!514347)))

(assert (=> b!1480522 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 (t!137210 l1!3136))))))

(assert (=> b!1480522 (= lt!514347 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 (t!137210 l1!3136) (h!21064 (t!137210 (t!137210 l1!3136)))))))

(declare-fun lt!514350 () Unit!25484)

(declare-fun lt!514346 () Unit!25484)

(assert (=> b!1480522 (= lt!514350 lt!514346)))

(assert (=> b!1480522 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 l1!3136)))))

(assert (=> b!1480522 (= lt!514346 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 (t!137210 l1!3136) (h!21064 (t!137210 l1!3136))))))

(declare-fun b!1480523 () Bool)

(assert (=> b!1480523 (= e!946477 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (Cons!15663 (h!21064 (t!137210 (t!137210 l1!3136))) (t!137210 (t!137210 (t!137210 l1!3136)))) rules!4290))))

(assert (= (and d!434068 (not res!668984)) b!1480522))

(assert (= (and b!1480522 res!668985) b!1480523))

(declare-fun m!1726223 () Bool)

(assert (=> b!1480522 m!1726223))

(declare-fun m!1726225 () Bool)

(assert (=> b!1480522 m!1726225))

(declare-fun m!1726227 () Bool)

(assert (=> b!1480522 m!1726227))

(assert (=> b!1480522 m!1726165))

(assert (=> b!1480522 m!1726225))

(declare-fun m!1726229 () Bool)

(assert (=> b!1480522 m!1726229))

(declare-fun m!1726231 () Bool)

(assert (=> b!1480522 m!1726231))

(declare-fun m!1726233 () Bool)

(assert (=> b!1480522 m!1726233))

(declare-fun m!1726235 () Bool)

(assert (=> b!1480523 m!1726235))

(assert (=> b!1480401 d!434068))

(declare-fun d!434070 () Bool)

(assert (=> d!434070 (= (isEmpty!9794 l2!3105) ((_ is Nil!15663) l2!3105))))

(assert (=> b!1480382 d!434070))

(declare-fun d!434072 () Bool)

(assert (=> d!434072 (= (isEmpty!9795 rules!4290) ((_ is Nil!15662) rules!4290))))

(assert (=> b!1480392 d!434072))

(declare-fun bs!345819 () Bool)

(declare-fun d!434074 () Bool)

(assert (= bs!345819 (and d!434074 d!434026)))

(declare-fun lambda!63764 () Int)

(assert (=> bs!345819 (= lambda!63764 lambda!63758)))

(declare-fun bs!345820 () Bool)

(assert (= bs!345820 (and d!434074 d!434050)))

(assert (=> bs!345820 (= lambda!63764 lambda!63763)))

(declare-fun b!1480528 () Bool)

(declare-fun e!946483 () Bool)

(assert (=> b!1480528 (= e!946483 true)))

(declare-fun b!1480527 () Bool)

(declare-fun e!946482 () Bool)

(assert (=> b!1480527 (= e!946482 e!946483)))

(declare-fun b!1480526 () Bool)

(declare-fun e!946481 () Bool)

(assert (=> b!1480526 (= e!946481 e!946482)))

(assert (=> d!434074 e!946481))

(assert (= b!1480527 b!1480528))

(assert (= b!1480526 b!1480527))

(assert (= (and d!434074 ((_ is Cons!15662) rules!4290)) b!1480526))

(assert (=> b!1480528 (< (dynLambda!7123 order!9443 (toValue!4128 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63764))))

(assert (=> b!1480528 (< (dynLambda!7125 order!9447 (toChars!3987 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63764))))

(assert (=> d!434074 true))

(declare-fun lt!514352 () Bool)

(assert (=> d!434074 (= lt!514352 (forall!3809 lt!514300 lambda!63764))))

(declare-fun e!946479 () Bool)

(assert (=> d!434074 (= lt!514352 e!946479)))

(declare-fun res!668987 () Bool)

(assert (=> d!434074 (=> res!668987 e!946479)))

(assert (=> d!434074 (= res!668987 (not ((_ is Cons!15663) lt!514300)))))

(assert (=> d!434074 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434074 (= (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 lt!514300) lt!514352)))

(declare-fun b!1480524 () Bool)

(declare-fun e!946480 () Bool)

(assert (=> b!1480524 (= e!946479 e!946480)))

(declare-fun res!668986 () Bool)

(assert (=> b!1480524 (=> (not res!668986) (not e!946480))))

(assert (=> b!1480524 (= res!668986 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 lt!514300)))))

(declare-fun b!1480525 () Bool)

(assert (=> b!1480525 (= e!946480 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 lt!514300)))))

(assert (= (and d!434074 (not res!668987)) b!1480524))

(assert (= (and b!1480524 res!668986) b!1480525))

(declare-fun m!1726237 () Bool)

(assert (=> d!434074 m!1726237))

(assert (=> d!434074 m!1726039))

(assert (=> b!1480524 m!1726179))

(declare-fun m!1726239 () Bool)

(assert (=> b!1480525 m!1726239))

(assert (=> b!1480381 d!434074))

(declare-fun b!1480543 () Bool)

(declare-fun res!668996 () Bool)

(declare-fun e!946492 () Bool)

(assert (=> b!1480543 (=> (not res!668996) (not e!946492))))

(declare-fun lt!514369 () List!15729)

(declare-fun size!12684 (List!15729) Int)

(assert (=> b!1480543 (= res!668996 (= (size!12684 lt!514369) (+ (size!12684 (t!137210 l1!3136)) (size!12684 l2!3105))))))

(declare-fun d!434076 () Bool)

(assert (=> d!434076 e!946492))

(declare-fun res!668997 () Bool)

(assert (=> d!434076 (=> (not res!668997) (not e!946492))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!2276 (List!15729) (InoxSet Token!5248))

(assert (=> d!434076 (= res!668997 (= (content!2276 lt!514369) ((_ map or) (content!2276 (t!137210 l1!3136)) (content!2276 l2!3105))))))

(declare-fun e!946493 () List!15729)

(assert (=> d!434076 (= lt!514369 e!946493)))

(declare-fun c!242894 () Bool)

(assert (=> d!434076 (= c!242894 ((_ is Nil!15663) (t!137210 l1!3136)))))

(assert (=> d!434076 (= (++!4220 (t!137210 l1!3136) l2!3105) lt!514369)))

(declare-fun b!1480542 () Bool)

(assert (=> b!1480542 (= e!946493 (Cons!15663 (h!21064 (t!137210 l1!3136)) (++!4220 (t!137210 (t!137210 l1!3136)) l2!3105)))))

(declare-fun b!1480541 () Bool)

(assert (=> b!1480541 (= e!946493 l2!3105)))

(declare-fun b!1480544 () Bool)

(assert (=> b!1480544 (= e!946492 (or (not (= l2!3105 Nil!15663)) (= lt!514369 (t!137210 l1!3136))))))

(assert (= (and d!434076 c!242894) b!1480541))

(assert (= (and d!434076 (not c!242894)) b!1480542))

(assert (= (and d!434076 res!668997) b!1480543))

(assert (= (and b!1480543 res!668996) b!1480544))

(declare-fun m!1726241 () Bool)

(assert (=> b!1480543 m!1726241))

(declare-fun m!1726243 () Bool)

(assert (=> b!1480543 m!1726243))

(declare-fun m!1726245 () Bool)

(assert (=> b!1480543 m!1726245))

(declare-fun m!1726247 () Bool)

(assert (=> d!434076 m!1726247))

(declare-fun m!1726249 () Bool)

(assert (=> d!434076 m!1726249))

(declare-fun m!1726251 () Bool)

(assert (=> d!434076 m!1726251))

(declare-fun m!1726253 () Bool)

(assert (=> b!1480542 m!1726253))

(assert (=> b!1480381 d!434076))

(declare-fun d!434078 () Bool)

(assert (=> d!434078 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (++!4220 (t!137210 l1!3136) l2!3105))))

(declare-fun lt!514382 () Unit!25484)

(declare-fun choose!9060 (LexerInterface!2449 List!15728 List!15729 List!15729) Unit!25484)

(assert (=> d!434078 (= lt!514382 (choose!9060 thiss!27374 rules!4290 (t!137210 l1!3136) l2!3105))))

(assert (=> d!434078 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434078 (= (lemmaRulesProduceEachTokenIndividuallyConcat!74 thiss!27374 rules!4290 (t!137210 l1!3136) l2!3105) lt!514382)))

(declare-fun bs!345822 () Bool)

(assert (= bs!345822 d!434078))

(assert (=> bs!345822 m!1726079))

(assert (=> bs!345822 m!1726079))

(declare-fun m!1726273 () Bool)

(assert (=> bs!345822 m!1726273))

(declare-fun m!1726275 () Bool)

(assert (=> bs!345822 m!1726275))

(assert (=> bs!345822 m!1726039))

(assert (=> b!1480381 d!434078))

(declare-fun d!434084 () Bool)

(declare-fun res!669000 () Bool)

(declare-fun e!946497 () Bool)

(assert (=> d!434084 (=> res!669000 e!946497)))

(assert (=> d!434084 (= res!669000 (or (not ((_ is Cons!15663) lt!514299)) (not ((_ is Cons!15663) (t!137210 lt!514299)))))))

(assert (=> d!434084 (= (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 lt!514299 rules!4290) e!946497)))

(declare-fun b!1480547 () Bool)

(declare-fun e!946496 () Bool)

(assert (=> b!1480547 (= e!946497 e!946496)))

(declare-fun res!669001 () Bool)

(assert (=> b!1480547 (=> (not res!669001) (not e!946496))))

(assert (=> b!1480547 (= res!669001 (separableTokensPredicate!588 thiss!27374 (h!21064 lt!514299) (h!21064 (t!137210 lt!514299)) rules!4290))))

(declare-fun lt!514383 () Unit!25484)

(declare-fun Unit!25501 () Unit!25484)

(assert (=> b!1480547 (= lt!514383 Unit!25501)))

(assert (=> b!1480547 (> (size!12681 (charsOf!1600 (h!21064 (t!137210 lt!514299)))) 0)))

(declare-fun lt!514389 () Unit!25484)

(declare-fun Unit!25502 () Unit!25484)

(assert (=> b!1480547 (= lt!514389 Unit!25502)))

(assert (=> b!1480547 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 lt!514299)))))

(declare-fun lt!514386 () Unit!25484)

(declare-fun Unit!25503 () Unit!25484)

(assert (=> b!1480547 (= lt!514386 Unit!25503)))

(assert (=> b!1480547 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 lt!514299))))

(declare-fun lt!514387 () Unit!25484)

(declare-fun lt!514385 () Unit!25484)

(assert (=> b!1480547 (= lt!514387 lt!514385)))

(assert (=> b!1480547 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 (t!137210 lt!514299)))))

(assert (=> b!1480547 (= lt!514385 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 lt!514299 (h!21064 (t!137210 lt!514299))))))

(declare-fun lt!514388 () Unit!25484)

(declare-fun lt!514384 () Unit!25484)

(assert (=> b!1480547 (= lt!514388 lt!514384)))

(assert (=> b!1480547 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 lt!514299))))

(assert (=> b!1480547 (= lt!514384 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 lt!514299 (h!21064 lt!514299)))))

(declare-fun b!1480548 () Bool)

(assert (=> b!1480548 (= e!946496 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (Cons!15663 (h!21064 (t!137210 lt!514299)) (t!137210 (t!137210 lt!514299))) rules!4290))))

(assert (= (and d!434084 (not res!669000)) b!1480547))

(assert (= (and b!1480547 res!669001) b!1480548))

(declare-fun m!1726277 () Bool)

(assert (=> b!1480547 m!1726277))

(declare-fun m!1726279 () Bool)

(assert (=> b!1480547 m!1726279))

(declare-fun m!1726281 () Bool)

(assert (=> b!1480547 m!1726281))

(declare-fun m!1726283 () Bool)

(assert (=> b!1480547 m!1726283))

(assert (=> b!1480547 m!1726279))

(declare-fun m!1726285 () Bool)

(assert (=> b!1480547 m!1726285))

(declare-fun m!1726287 () Bool)

(assert (=> b!1480547 m!1726287))

(declare-fun m!1726289 () Bool)

(assert (=> b!1480547 m!1726289))

(declare-fun m!1726291 () Bool)

(assert (=> b!1480548 m!1726291))

(assert (=> b!1480381 d!434084))

(declare-fun b!1480551 () Bool)

(declare-fun res!669002 () Bool)

(declare-fun e!946498 () Bool)

(assert (=> b!1480551 (=> (not res!669002) (not e!946498))))

(declare-fun lt!514390 () List!15729)

(assert (=> b!1480551 (= res!669002 (= (size!12684 lt!514390) (+ (size!12684 l1!3136) (size!12684 l2!3105))))))

(declare-fun d!434086 () Bool)

(assert (=> d!434086 e!946498))

(declare-fun res!669003 () Bool)

(assert (=> d!434086 (=> (not res!669003) (not e!946498))))

(assert (=> d!434086 (= res!669003 (= (content!2276 lt!514390) ((_ map or) (content!2276 l1!3136) (content!2276 l2!3105))))))

(declare-fun e!946499 () List!15729)

(assert (=> d!434086 (= lt!514390 e!946499)))

(declare-fun c!242895 () Bool)

(assert (=> d!434086 (= c!242895 ((_ is Nil!15663) l1!3136))))

(assert (=> d!434086 (= (++!4220 l1!3136 l2!3105) lt!514390)))

(declare-fun b!1480550 () Bool)

(assert (=> b!1480550 (= e!946499 (Cons!15663 (h!21064 l1!3136) (++!4220 (t!137210 l1!3136) l2!3105)))))

(declare-fun b!1480549 () Bool)

(assert (=> b!1480549 (= e!946499 l2!3105)))

(declare-fun b!1480552 () Bool)

(assert (=> b!1480552 (= e!946498 (or (not (= l2!3105 Nil!15663)) (= lt!514390 l1!3136)))))

(assert (= (and d!434086 c!242895) b!1480549))

(assert (= (and d!434086 (not c!242895)) b!1480550))

(assert (= (and d!434086 res!669003) b!1480551))

(assert (= (and b!1480551 res!669002) b!1480552))

(declare-fun m!1726293 () Bool)

(assert (=> b!1480551 m!1726293))

(declare-fun m!1726295 () Bool)

(assert (=> b!1480551 m!1726295))

(assert (=> b!1480551 m!1726245))

(declare-fun m!1726297 () Bool)

(assert (=> d!434086 m!1726297))

(declare-fun m!1726299 () Bool)

(assert (=> d!434086 m!1726299))

(assert (=> d!434086 m!1726251))

(assert (=> b!1480550 m!1726079))

(assert (=> b!1480381 d!434086))

(declare-fun bs!345823 () Bool)

(declare-fun d!434088 () Bool)

(assert (= bs!345823 (and d!434088 d!434026)))

(declare-fun lambda!63765 () Int)

(assert (=> bs!345823 (= lambda!63765 lambda!63758)))

(declare-fun bs!345824 () Bool)

(assert (= bs!345824 (and d!434088 d!434050)))

(assert (=> bs!345824 (= lambda!63765 lambda!63763)))

(declare-fun bs!345825 () Bool)

(assert (= bs!345825 (and d!434088 d!434074)))

(assert (=> bs!345825 (= lambda!63765 lambda!63764)))

(declare-fun b!1480557 () Bool)

(declare-fun e!946504 () Bool)

(assert (=> b!1480557 (= e!946504 true)))

(declare-fun b!1480556 () Bool)

(declare-fun e!946503 () Bool)

(assert (=> b!1480556 (= e!946503 e!946504)))

(declare-fun b!1480555 () Bool)

(declare-fun e!946502 () Bool)

(assert (=> b!1480555 (= e!946502 e!946503)))

(assert (=> d!434088 e!946502))

(assert (= b!1480556 b!1480557))

(assert (= b!1480555 b!1480556))

(assert (= (and d!434088 ((_ is Cons!15662) rules!4290)) b!1480555))

(assert (=> b!1480557 (< (dynLambda!7123 order!9443 (toValue!4128 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63765))))

(assert (=> b!1480557 (< (dynLambda!7125 order!9447 (toChars!3987 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63765))))

(assert (=> d!434088 true))

(declare-fun lt!514391 () Bool)

(assert (=> d!434088 (= lt!514391 (forall!3809 lt!514299 lambda!63765))))

(declare-fun e!946500 () Bool)

(assert (=> d!434088 (= lt!514391 e!946500)))

(declare-fun res!669005 () Bool)

(assert (=> d!434088 (=> res!669005 e!946500)))

(assert (=> d!434088 (= res!669005 (not ((_ is Cons!15663) lt!514299)))))

(assert (=> d!434088 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434088 (= (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 lt!514299) lt!514391)))

(declare-fun b!1480553 () Bool)

(declare-fun e!946501 () Bool)

(assert (=> b!1480553 (= e!946500 e!946501)))

(declare-fun res!669004 () Bool)

(assert (=> b!1480553 (=> (not res!669004) (not e!946501))))

(assert (=> b!1480553 (= res!669004 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 lt!514299)))))

(declare-fun b!1480554 () Bool)

(assert (=> b!1480554 (= e!946501 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 lt!514299)))))

(assert (= (and d!434088 (not res!669005)) b!1480553))

(assert (= (and b!1480553 res!669004) b!1480554))

(declare-fun m!1726301 () Bool)

(assert (=> d!434088 m!1726301))

(assert (=> d!434088 m!1726039))

(assert (=> b!1480553 m!1726283))

(declare-fun m!1726303 () Bool)

(assert (=> b!1480554 m!1726303))

(assert (=> b!1480381 d!434088))

(declare-fun d!434090 () Bool)

(assert (=> d!434090 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (++!4220 l1!3136 l2!3105))))

(declare-fun lt!514392 () Unit!25484)

(assert (=> d!434090 (= lt!514392 (choose!9060 thiss!27374 rules!4290 l1!3136 l2!3105))))

(assert (=> d!434090 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434090 (= (lemmaRulesProduceEachTokenIndividuallyConcat!74 thiss!27374 rules!4290 l1!3136 l2!3105) lt!514392)))

(declare-fun bs!345826 () Bool)

(assert (= bs!345826 d!434090))

(assert (=> bs!345826 m!1726077))

(assert (=> bs!345826 m!1726077))

(declare-fun m!1726305 () Bool)

(assert (=> bs!345826 m!1726305))

(declare-fun m!1726307 () Bool)

(assert (=> bs!345826 m!1726307))

(assert (=> bs!345826 m!1726039))

(assert (=> b!1480381 d!434090))

(declare-fun d!434092 () Bool)

(declare-fun e!946513 () Bool)

(assert (=> d!434092 e!946513))

(declare-fun res!669023 () Bool)

(assert (=> d!434092 (=> (not res!669023) (not e!946513))))

(assert (=> d!434092 (= res!669023 ((_ is Lexer!2447) thiss!27374))))

(declare-fun lt!514405 () Unit!25484)

(declare-fun choose!9061 (LexerInterface!2449 List!15729 List!15729 List!15728) Unit!25484)

(assert (=> d!434092 (= lt!514405 (choose!9061 thiss!27374 (t!137210 l1!3136) l2!3105 rules!4290))))

(assert (=> d!434092 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434092 (= (tokensListTwoByTwoPredicateConcatSeparableTokensList!66 thiss!27374 (t!137210 l1!3136) l2!3105 rules!4290) lt!514405)))

(declare-fun b!1480576 () Bool)

(declare-fun res!669024 () Bool)

(assert (=> b!1480576 (=> (not res!669024) (not e!946513))))

(assert (=> b!1480576 (= res!669024 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 l1!3136)))))

(declare-fun b!1480578 () Bool)

(assert (=> b!1480578 (= e!946513 (tokensListTwoByTwoPredicateSeparableList!309 thiss!27374 (++!4220 (t!137210 l1!3136) l2!3105) rules!4290))))

(declare-fun lt!514406 () Unit!25484)

(declare-fun lt!514407 () Unit!25484)

(assert (=> b!1480578 (= lt!514406 lt!514407)))

(assert (=> b!1480578 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (++!4220 (t!137210 l1!3136) l2!3105))))

(assert (=> b!1480578 (= lt!514407 (lemmaRulesProduceEachTokenIndividuallyConcat!74 thiss!27374 rules!4290 (t!137210 l1!3136) l2!3105))))

(declare-fun b!1480577 () Bool)

(declare-fun res!669025 () Bool)

(assert (=> b!1480577 (=> (not res!669025) (not e!946513))))

(assert (=> b!1480577 (= res!669025 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1480575 () Bool)

(declare-fun res!669026 () Bool)

(assert (=> b!1480575 (=> (not res!669026) (not e!946513))))

(assert (=> b!1480575 (= res!669026 (rulesInvariant!2238 thiss!27374 rules!4290))))

(assert (= (and d!434092 res!669023) b!1480575))

(assert (= (and b!1480575 res!669026) b!1480576))

(assert (= (and b!1480576 res!669024) b!1480577))

(assert (= (and b!1480577 res!669025) b!1480578))

(assert (=> b!1480578 m!1726079))

(assert (=> b!1480578 m!1726079))

(declare-fun m!1726327 () Bool)

(assert (=> b!1480578 m!1726327))

(assert (=> b!1480578 m!1726079))

(assert (=> b!1480578 m!1726273))

(assert (=> b!1480578 m!1726085))

(assert (=> b!1480575 m!1726067))

(assert (=> b!1480577 m!1726065))

(declare-fun m!1726329 () Bool)

(assert (=> d!434092 m!1726329))

(assert (=> d!434092 m!1726039))

(assert (=> b!1480576 m!1726037))

(assert (=> b!1480381 d!434092))

(declare-fun d!434096 () Bool)

(declare-fun prefixMatchZipperSequence!383 (Regex!4107 BalanceConc!10610) Bool)

(declare-fun rulesRegex!433 (LexerInterface!2449 List!15728) Regex!4107)

(declare-fun ++!4222 (BalanceConc!10610 BalanceConc!10610) BalanceConc!10610)

(declare-fun singletonSeq!1332 (C!8392) BalanceConc!10610)

(declare-fun apply!4047 (BalanceConc!10610 Int) C!8392)

(assert (=> d!434096 (= (separableTokensPredicate!588 thiss!27374 lt!514296 lt!514294 rules!4290) (not (prefixMatchZipperSequence!383 (rulesRegex!433 thiss!27374 rules!4290) (++!4222 (charsOf!1600 lt!514296) (singletonSeq!1332 (apply!4047 (charsOf!1600 lt!514294) 0))))))))

(declare-fun bs!345833 () Bool)

(assert (= bs!345833 d!434096))

(declare-fun m!1726463 () Bool)

(assert (=> bs!345833 m!1726463))

(declare-fun m!1726465 () Bool)

(assert (=> bs!345833 m!1726465))

(declare-fun m!1726467 () Bool)

(assert (=> bs!345833 m!1726467))

(declare-fun m!1726469 () Bool)

(assert (=> bs!345833 m!1726469))

(declare-fun m!1726471 () Bool)

(assert (=> bs!345833 m!1726471))

(declare-fun m!1726473 () Bool)

(assert (=> bs!345833 m!1726473))

(declare-fun m!1726475 () Bool)

(assert (=> bs!345833 m!1726475))

(assert (=> bs!345833 m!1726471))

(assert (=> bs!345833 m!1726469))

(assert (=> bs!345833 m!1726465))

(assert (=> bs!345833 m!1726473))

(assert (=> bs!345833 m!1726467))

(assert (=> bs!345833 m!1726463))

(assert (=> b!1480394 d!434096))

(declare-fun d!434138 () Bool)

(declare-fun lt!514449 () Bool)

(declare-fun e!946558 () Bool)

(assert (=> d!434138 (= lt!514449 e!946558)))

(declare-fun res!669067 () Bool)

(assert (=> d!434138 (=> (not res!669067) (not e!946558))))

(declare-datatypes ((IArray!10679 0))(
  ( (IArray!10680 (innerList!5397 List!15729)) )
))
(declare-datatypes ((Conc!5337 0))(
  ( (Node!5337 (left!13212 Conc!5337) (right!13542 Conc!5337) (csize!10904 Int) (cheight!5548 Int)) (Leaf!7935 (xs!8092 IArray!10679) (csize!10905 Int)) (Empty!5337) )
))
(declare-datatypes ((BalanceConc!10614 0))(
  ( (BalanceConc!10615 (c!242911 Conc!5337)) )
))
(declare-fun list!6226 (BalanceConc!10614) List!15729)

(declare-datatypes ((tuple2!14334 0))(
  ( (tuple2!14335 (_1!8053 BalanceConc!10614) (_2!8053 BalanceConc!10610)) )
))
(declare-fun lex!1106 (LexerInterface!2449 List!15728 BalanceConc!10610) tuple2!14334)

(declare-fun print!1141 (LexerInterface!2449 BalanceConc!10614) BalanceConc!10610)

(declare-fun singletonSeq!1333 (Token!5248) BalanceConc!10614)

(assert (=> d!434138 (= res!669067 (= (list!6226 (_1!8053 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514296))))) (list!6226 (singletonSeq!1333 lt!514296))))))

(declare-fun e!946559 () Bool)

(assert (=> d!434138 (= lt!514449 e!946559)))

(declare-fun res!669065 () Bool)

(assert (=> d!434138 (=> (not res!669065) (not e!946559))))

(declare-fun lt!514448 () tuple2!14334)

(declare-fun size!12686 (BalanceConc!10614) Int)

(assert (=> d!434138 (= res!669065 (= (size!12686 (_1!8053 lt!514448)) 1))))

(assert (=> d!434138 (= lt!514448 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514296))))))

(assert (=> d!434138 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434138 (= (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514296) lt!514449)))

(declare-fun b!1480643 () Bool)

(declare-fun res!669066 () Bool)

(assert (=> b!1480643 (=> (not res!669066) (not e!946559))))

(declare-fun apply!4048 (BalanceConc!10614 Int) Token!5248)

(assert (=> b!1480643 (= res!669066 (= (apply!4048 (_1!8053 lt!514448) 0) lt!514296))))

(declare-fun b!1480644 () Bool)

(declare-fun isEmpty!9799 (BalanceConc!10610) Bool)

(assert (=> b!1480644 (= e!946559 (isEmpty!9799 (_2!8053 lt!514448)))))

(declare-fun b!1480645 () Bool)

(assert (=> b!1480645 (= e!946558 (isEmpty!9799 (_2!8053 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514296))))))))

(assert (= (and d!434138 res!669065) b!1480643))

(assert (= (and b!1480643 res!669066) b!1480644))

(assert (= (and d!434138 res!669067) b!1480645))

(declare-fun m!1726511 () Bool)

(assert (=> d!434138 m!1726511))

(assert (=> d!434138 m!1726039))

(declare-fun m!1726513 () Bool)

(assert (=> d!434138 m!1726513))

(assert (=> d!434138 m!1726511))

(declare-fun m!1726515 () Bool)

(assert (=> d!434138 m!1726515))

(declare-fun m!1726517 () Bool)

(assert (=> d!434138 m!1726517))

(declare-fun m!1726519 () Bool)

(assert (=> d!434138 m!1726519))

(declare-fun m!1726521 () Bool)

(assert (=> d!434138 m!1726521))

(assert (=> d!434138 m!1726511))

(assert (=> d!434138 m!1726519))

(declare-fun m!1726523 () Bool)

(assert (=> b!1480643 m!1726523))

(declare-fun m!1726525 () Bool)

(assert (=> b!1480644 m!1726525))

(assert (=> b!1480645 m!1726511))

(assert (=> b!1480645 m!1726511))

(assert (=> b!1480645 m!1726519))

(assert (=> b!1480645 m!1726519))

(assert (=> b!1480645 m!1726521))

(declare-fun m!1726527 () Bool)

(assert (=> b!1480645 m!1726527))

(assert (=> b!1480394 d!434138))

(declare-fun d!434146 () Bool)

(assert (=> d!434146 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514296)))

(declare-fun lt!514458 () Unit!25484)

(declare-fun choose!9062 (LexerInterface!2449 List!15728 List!15729 Token!5248) Unit!25484)

(assert (=> d!434146 (= lt!514458 (choose!9062 thiss!27374 rules!4290 (t!137210 l1!3136) lt!514296))))

(assert (=> d!434146 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434146 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 (t!137210 l1!3136) lt!514296) lt!514458)))

(declare-fun bs!345843 () Bool)

(assert (= bs!345843 d!434146))

(assert (=> bs!345843 m!1726019))

(declare-fun m!1726549 () Bool)

(assert (=> bs!345843 m!1726549))

(assert (=> bs!345843 m!1726039))

(assert (=> b!1480394 d!434146))

(declare-fun d!434156 () Bool)

(declare-fun lt!514461 () Token!5248)

(declare-fun contains!2951 (List!15729 Token!5248) Bool)

(assert (=> d!434156 (contains!2951 (t!137210 l1!3136) lt!514461)))

(declare-fun e!946569 () Token!5248)

(assert (=> d!434156 (= lt!514461 e!946569)))

(declare-fun c!242906 () Bool)

(assert (=> d!434156 (= c!242906 (and ((_ is Cons!15663) (t!137210 l1!3136)) ((_ is Nil!15663) (t!137210 (t!137210 l1!3136)))))))

(assert (=> d!434156 (not (isEmpty!9794 (t!137210 l1!3136)))))

(assert (=> d!434156 (= (last!351 (t!137210 l1!3136)) lt!514461)))

(declare-fun b!1480659 () Bool)

(assert (=> b!1480659 (= e!946569 (h!21064 (t!137210 l1!3136)))))

(declare-fun b!1480660 () Bool)

(assert (=> b!1480660 (= e!946569 (last!351 (t!137210 (t!137210 l1!3136))))))

(assert (= (and d!434156 c!242906) b!1480659))

(assert (= (and d!434156 (not c!242906)) b!1480660))

(declare-fun m!1726551 () Bool)

(assert (=> d!434156 m!1726551))

(assert (=> d!434156 m!1726047))

(declare-fun m!1726553 () Bool)

(assert (=> b!1480660 m!1726553))

(assert (=> b!1480394 d!434156))

(declare-fun d!434158 () Bool)

(assert (=> d!434158 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514294)))

(declare-fun lt!514462 () Unit!25484)

(assert (=> d!434158 (= lt!514462 (choose!9062 thiss!27374 rules!4290 l2!3105 lt!514294))))

(assert (=> d!434158 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434158 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l2!3105 lt!514294) lt!514462)))

(declare-fun bs!345844 () Bool)

(assert (= bs!345844 d!434158))

(assert (=> bs!345844 m!1726061))

(declare-fun m!1726555 () Bool)

(assert (=> bs!345844 m!1726555))

(assert (=> bs!345844 m!1726039))

(assert (=> b!1480383 d!434158))

(declare-fun d!434160 () Bool)

(declare-fun lt!514464 () Bool)

(declare-fun e!946570 () Bool)

(assert (=> d!434160 (= lt!514464 e!946570)))

(declare-fun res!669074 () Bool)

(assert (=> d!434160 (=> (not res!669074) (not e!946570))))

(assert (=> d!434160 (= res!669074 (= (list!6226 (_1!8053 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514292))))) (list!6226 (singletonSeq!1333 lt!514292))))))

(declare-fun e!946571 () Bool)

(assert (=> d!434160 (= lt!514464 e!946571)))

(declare-fun res!669072 () Bool)

(assert (=> d!434160 (=> (not res!669072) (not e!946571))))

(declare-fun lt!514463 () tuple2!14334)

(assert (=> d!434160 (= res!669072 (= (size!12686 (_1!8053 lt!514463)) 1))))

(assert (=> d!434160 (= lt!514463 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514292))))))

(assert (=> d!434160 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434160 (= (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514292) lt!514464)))

(declare-fun b!1480661 () Bool)

(declare-fun res!669073 () Bool)

(assert (=> b!1480661 (=> (not res!669073) (not e!946571))))

(assert (=> b!1480661 (= res!669073 (= (apply!4048 (_1!8053 lt!514463) 0) lt!514292))))

(declare-fun b!1480662 () Bool)

(assert (=> b!1480662 (= e!946571 (isEmpty!9799 (_2!8053 lt!514463)))))

(declare-fun b!1480663 () Bool)

(assert (=> b!1480663 (= e!946570 (isEmpty!9799 (_2!8053 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514292))))))))

(assert (= (and d!434160 res!669072) b!1480661))

(assert (= (and b!1480661 res!669073) b!1480662))

(assert (= (and d!434160 res!669074) b!1480663))

(declare-fun m!1726557 () Bool)

(assert (=> d!434160 m!1726557))

(assert (=> d!434160 m!1726039))

(declare-fun m!1726559 () Bool)

(assert (=> d!434160 m!1726559))

(assert (=> d!434160 m!1726557))

(declare-fun m!1726561 () Bool)

(assert (=> d!434160 m!1726561))

(declare-fun m!1726563 () Bool)

(assert (=> d!434160 m!1726563))

(declare-fun m!1726565 () Bool)

(assert (=> d!434160 m!1726565))

(declare-fun m!1726567 () Bool)

(assert (=> d!434160 m!1726567))

(assert (=> d!434160 m!1726557))

(assert (=> d!434160 m!1726565))

(declare-fun m!1726569 () Bool)

(assert (=> b!1480661 m!1726569))

(declare-fun m!1726571 () Bool)

(assert (=> b!1480662 m!1726571))

(assert (=> b!1480663 m!1726557))

(assert (=> b!1480663 m!1726557))

(assert (=> b!1480663 m!1726565))

(assert (=> b!1480663 m!1726565))

(assert (=> b!1480663 m!1726567))

(declare-fun m!1726573 () Bool)

(assert (=> b!1480663 m!1726573))

(assert (=> b!1480383 d!434160))

(declare-fun d!434162 () Bool)

(assert (=> d!434162 (= (head!3081 l2!3105) (h!21064 l2!3105))))

(assert (=> b!1480383 d!434162))

(declare-fun d!434164 () Bool)

(declare-fun lt!514466 () Bool)

(declare-fun e!946572 () Bool)

(assert (=> d!434164 (= lt!514466 e!946572)))

(declare-fun res!669077 () Bool)

(assert (=> d!434164 (=> (not res!669077) (not e!946572))))

(assert (=> d!434164 (= res!669077 (= (list!6226 (_1!8053 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514294))))) (list!6226 (singletonSeq!1333 lt!514294))))))

(declare-fun e!946573 () Bool)

(assert (=> d!434164 (= lt!514466 e!946573)))

(declare-fun res!669075 () Bool)

(assert (=> d!434164 (=> (not res!669075) (not e!946573))))

(declare-fun lt!514465 () tuple2!14334)

(assert (=> d!434164 (= res!669075 (= (size!12686 (_1!8053 lt!514465)) 1))))

(assert (=> d!434164 (= lt!514465 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514294))))))

(assert (=> d!434164 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434164 (= (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514294) lt!514466)))

(declare-fun b!1480664 () Bool)

(declare-fun res!669076 () Bool)

(assert (=> b!1480664 (=> (not res!669076) (not e!946573))))

(assert (=> b!1480664 (= res!669076 (= (apply!4048 (_1!8053 lt!514465) 0) lt!514294))))

(declare-fun b!1480665 () Bool)

(assert (=> b!1480665 (= e!946573 (isEmpty!9799 (_2!8053 lt!514465)))))

(declare-fun b!1480666 () Bool)

(assert (=> b!1480666 (= e!946572 (isEmpty!9799 (_2!8053 (lex!1106 thiss!27374 rules!4290 (print!1141 thiss!27374 (singletonSeq!1333 lt!514294))))))))

(assert (= (and d!434164 res!669075) b!1480664))

(assert (= (and b!1480664 res!669076) b!1480665))

(assert (= (and d!434164 res!669077) b!1480666))

(declare-fun m!1726575 () Bool)

(assert (=> d!434164 m!1726575))

(assert (=> d!434164 m!1726039))

(declare-fun m!1726577 () Bool)

(assert (=> d!434164 m!1726577))

(assert (=> d!434164 m!1726575))

(declare-fun m!1726579 () Bool)

(assert (=> d!434164 m!1726579))

(declare-fun m!1726581 () Bool)

(assert (=> d!434164 m!1726581))

(declare-fun m!1726583 () Bool)

(assert (=> d!434164 m!1726583))

(declare-fun m!1726585 () Bool)

(assert (=> d!434164 m!1726585))

(assert (=> d!434164 m!1726575))

(assert (=> d!434164 m!1726583))

(declare-fun m!1726587 () Bool)

(assert (=> b!1480664 m!1726587))

(declare-fun m!1726589 () Bool)

(assert (=> b!1480665 m!1726589))

(assert (=> b!1480666 m!1726575))

(assert (=> b!1480666 m!1726575))

(assert (=> b!1480666 m!1726583))

(assert (=> b!1480666 m!1726583))

(assert (=> b!1480666 m!1726585))

(declare-fun m!1726591 () Bool)

(assert (=> b!1480666 m!1726591))

(assert (=> b!1480383 d!434164))

(declare-fun d!434166 () Bool)

(declare-fun lt!514467 () Token!5248)

(assert (=> d!434166 (contains!2951 l1!3136 lt!514467)))

(declare-fun e!946574 () Token!5248)

(assert (=> d!434166 (= lt!514467 e!946574)))

(declare-fun c!242907 () Bool)

(assert (=> d!434166 (= c!242907 (and ((_ is Cons!15663) l1!3136) ((_ is Nil!15663) (t!137210 l1!3136))))))

(assert (=> d!434166 (not (isEmpty!9794 l1!3136))))

(assert (=> d!434166 (= (last!351 l1!3136) lt!514467)))

(declare-fun b!1480667 () Bool)

(assert (=> b!1480667 (= e!946574 (h!21064 l1!3136))))

(declare-fun b!1480668 () Bool)

(assert (=> b!1480668 (= e!946574 (last!351 (t!137210 l1!3136)))))

(assert (= (and d!434166 c!242907) b!1480667))

(assert (= (and d!434166 (not c!242907)) b!1480668))

(declare-fun m!1726593 () Bool)

(assert (=> d!434166 m!1726593))

(assert (=> d!434166 m!1726015))

(assert (=> b!1480668 m!1726023))

(assert (=> b!1480383 d!434166))

(declare-fun d!434168 () Bool)

(assert (=> d!434168 (= (separableTokensPredicate!588 thiss!27374 lt!514292 lt!514294 rules!4290) (not (prefixMatchZipperSequence!383 (rulesRegex!433 thiss!27374 rules!4290) (++!4222 (charsOf!1600 lt!514292) (singletonSeq!1332 (apply!4047 (charsOf!1600 lt!514294) 0))))))))

(declare-fun bs!345845 () Bool)

(assert (= bs!345845 d!434168))

(assert (=> bs!345845 m!1726463))

(assert (=> bs!345845 m!1726465))

(assert (=> bs!345845 m!1726467))

(declare-fun m!1726595 () Bool)

(assert (=> bs!345845 m!1726595))

(assert (=> bs!345845 m!1726471))

(declare-fun m!1726597 () Bool)

(assert (=> bs!345845 m!1726597))

(declare-fun m!1726599 () Bool)

(assert (=> bs!345845 m!1726599))

(assert (=> bs!345845 m!1726471))

(assert (=> bs!345845 m!1726595))

(assert (=> bs!345845 m!1726465))

(assert (=> bs!345845 m!1726597))

(assert (=> bs!345845 m!1726467))

(assert (=> bs!345845 m!1726463))

(assert (=> b!1480383 d!434168))

(declare-fun d!434170 () Bool)

(assert (=> d!434170 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 lt!514292)))

(declare-fun lt!514468 () Unit!25484)

(assert (=> d!434170 (= lt!514468 (choose!9062 thiss!27374 rules!4290 l1!3136 lt!514292))))

(assert (=> d!434170 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434170 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!487 thiss!27374 rules!4290 l1!3136 lt!514292) lt!514468)))

(declare-fun bs!345846 () Bool)

(assert (= bs!345846 d!434170))

(assert (=> bs!345846 m!1726055))

(declare-fun m!1726601 () Bool)

(assert (=> bs!345846 m!1726601))

(assert (=> bs!345846 m!1726039))

(assert (=> b!1480383 d!434170))

(declare-fun b!1480669 () Bool)

(declare-fun e!946576 () Bool)

(assert (=> b!1480669 (= e!946576 (inv!16 (value!89248 (h!21064 l1!3136))))))

(declare-fun b!1480670 () Bool)

(declare-fun e!946575 () Bool)

(assert (=> b!1480670 (= e!946576 e!946575)))

(declare-fun c!242908 () Bool)

(assert (=> b!1480670 (= c!242908 ((_ is IntegerValue!8650) (value!89248 (h!21064 l1!3136))))))

(declare-fun b!1480671 () Bool)

(declare-fun res!669078 () Bool)

(declare-fun e!946577 () Bool)

(assert (=> b!1480671 (=> res!669078 e!946577)))

(assert (=> b!1480671 (= res!669078 (not ((_ is IntegerValue!8651) (value!89248 (h!21064 l1!3136)))))))

(assert (=> b!1480671 (= e!946575 e!946577)))

(declare-fun b!1480672 () Bool)

(assert (=> b!1480672 (= e!946577 (inv!15 (value!89248 (h!21064 l1!3136))))))

(declare-fun d!434172 () Bool)

(declare-fun c!242909 () Bool)

(assert (=> d!434172 (= c!242909 ((_ is IntegerValue!8649) (value!89248 (h!21064 l1!3136))))))

(assert (=> d!434172 (= (inv!21 (value!89248 (h!21064 l1!3136))) e!946576)))

(declare-fun b!1480673 () Bool)

(assert (=> b!1480673 (= e!946575 (inv!17 (value!89248 (h!21064 l1!3136))))))

(assert (= (and d!434172 c!242909) b!1480669))

(assert (= (and d!434172 (not c!242909)) b!1480670))

(assert (= (and b!1480670 c!242908) b!1480673))

(assert (= (and b!1480670 (not c!242908)) b!1480671))

(assert (= (and b!1480671 (not res!669078)) b!1480672))

(declare-fun m!1726603 () Bool)

(assert (=> b!1480669 m!1726603))

(declare-fun m!1726605 () Bool)

(assert (=> b!1480672 m!1726605))

(declare-fun m!1726607 () Bool)

(assert (=> b!1480673 m!1726607))

(assert (=> b!1480395 d!434172))

(declare-fun bs!345847 () Bool)

(declare-fun d!434174 () Bool)

(assert (= bs!345847 (and d!434174 d!434026)))

(declare-fun lambda!63769 () Int)

(assert (=> bs!345847 (= lambda!63769 lambda!63758)))

(declare-fun bs!345848 () Bool)

(assert (= bs!345848 (and d!434174 d!434050)))

(assert (=> bs!345848 (= lambda!63769 lambda!63763)))

(declare-fun bs!345849 () Bool)

(assert (= bs!345849 (and d!434174 d!434074)))

(assert (=> bs!345849 (= lambda!63769 lambda!63764)))

(declare-fun bs!345850 () Bool)

(assert (= bs!345850 (and d!434174 d!434088)))

(assert (=> bs!345850 (= lambda!63769 lambda!63765)))

(declare-fun b!1480678 () Bool)

(declare-fun e!946582 () Bool)

(assert (=> b!1480678 (= e!946582 true)))

(declare-fun b!1480677 () Bool)

(declare-fun e!946581 () Bool)

(assert (=> b!1480677 (= e!946581 e!946582)))

(declare-fun b!1480676 () Bool)

(declare-fun e!946580 () Bool)

(assert (=> b!1480676 (= e!946580 e!946581)))

(assert (=> d!434174 e!946580))

(assert (= b!1480677 b!1480678))

(assert (= b!1480676 b!1480677))

(assert (= (and d!434174 ((_ is Cons!15662) rules!4290)) b!1480676))

(assert (=> b!1480678 (< (dynLambda!7123 order!9443 (toValue!4128 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63769))))

(assert (=> b!1480678 (< (dynLambda!7125 order!9447 (toChars!3987 (transformation!2793 (h!21063 rules!4290)))) (dynLambda!7124 order!9445 lambda!63769))))

(assert (=> d!434174 true))

(declare-fun lt!514469 () Bool)

(assert (=> d!434174 (= lt!514469 (forall!3809 l2!3105 lambda!63769))))

(declare-fun e!946578 () Bool)

(assert (=> d!434174 (= lt!514469 e!946578)))

(declare-fun res!669080 () Bool)

(assert (=> d!434174 (=> res!669080 e!946578)))

(assert (=> d!434174 (= res!669080 (not ((_ is Cons!15663) l2!3105)))))

(assert (=> d!434174 (not (isEmpty!9795 rules!4290))))

(assert (=> d!434174 (= (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 l2!3105) lt!514469)))

(declare-fun b!1480674 () Bool)

(declare-fun e!946579 () Bool)

(assert (=> b!1480674 (= e!946578 e!946579)))

(declare-fun res!669079 () Bool)

(assert (=> b!1480674 (=> (not res!669079) (not e!946579))))

(assert (=> b!1480674 (= res!669079 (rulesProduceIndividualToken!1306 thiss!27374 rules!4290 (h!21064 l2!3105)))))

(declare-fun b!1480675 () Bool)

(assert (=> b!1480675 (= e!946579 (rulesProduceEachTokenIndividuallyList!816 thiss!27374 rules!4290 (t!137210 l2!3105)))))

(assert (= (and d!434174 (not res!669080)) b!1480674))

(assert (= (and b!1480674 res!669079) b!1480675))

(declare-fun m!1726609 () Bool)

(assert (=> d!434174 m!1726609))

(assert (=> d!434174 m!1726039))

(assert (=> b!1480674 m!1726153))

(declare-fun m!1726611 () Bool)

(assert (=> b!1480675 m!1726611))

(assert (=> b!1480384 d!434174))

(declare-fun b!1480689 () Bool)

(declare-fun e!946585 () Bool)

(declare-fun tp_is_empty!6973 () Bool)

(assert (=> b!1480689 (= e!946585 tp_is_empty!6973)))

(declare-fun b!1480691 () Bool)

(declare-fun tp!419766 () Bool)

(assert (=> b!1480691 (= e!946585 tp!419766)))

(assert (=> b!1480386 (= tp!419736 e!946585)))

(declare-fun b!1480692 () Bool)

(declare-fun tp!419767 () Bool)

(declare-fun tp!419764 () Bool)

(assert (=> b!1480692 (= e!946585 (and tp!419767 tp!419764))))

(declare-fun b!1480690 () Bool)

(declare-fun tp!419763 () Bool)

(declare-fun tp!419765 () Bool)

(assert (=> b!1480690 (= e!946585 (and tp!419763 tp!419765))))

(assert (= (and b!1480386 ((_ is ElementMatch!4107) (regex!2793 (rule!4570 (h!21064 l2!3105))))) b!1480689))

(assert (= (and b!1480386 ((_ is Concat!6991) (regex!2793 (rule!4570 (h!21064 l2!3105))))) b!1480690))

(assert (= (and b!1480386 ((_ is Star!4107) (regex!2793 (rule!4570 (h!21064 l2!3105))))) b!1480691))

(assert (= (and b!1480386 ((_ is Union!4107) (regex!2793 (rule!4570 (h!21064 l2!3105))))) b!1480692))

(declare-fun b!1480706 () Bool)

(declare-fun b_free!38187 () Bool)

(declare-fun b_next!38891 () Bool)

(assert (=> b!1480706 (= b_free!38187 (not b_next!38891))))

(declare-fun tp!419778 () Bool)

(declare-fun b_and!102665 () Bool)

(assert (=> b!1480706 (= tp!419778 b_and!102665)))

(declare-fun b_free!38189 () Bool)

(declare-fun b_next!38893 () Bool)

(assert (=> b!1480706 (= b_free!38189 (not b_next!38893))))

(declare-fun t!137244 () Bool)

(declare-fun tb!84533 () Bool)

(assert (=> (and b!1480706 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l2!3105))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105))))) t!137244) tb!84533))

(declare-fun result!101654 () Bool)

(assert (= result!101654 result!101622))

(assert (=> b!1480452 t!137244))

(declare-fun tb!84535 () Bool)

(declare-fun t!137246 () Bool)

(assert (=> (and b!1480706 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l2!3105))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136))))) t!137246) tb!84535))

(declare-fun result!101656 () Bool)

(assert (= result!101656 result!101630))

(assert (=> b!1480516 t!137246))

(declare-fun b_and!102667 () Bool)

(declare-fun tp!419782 () Bool)

(assert (=> b!1480706 (= tp!419782 (and (=> t!137244 result!101654) (=> t!137246 result!101656) b_and!102667))))

(declare-fun tp!419780 () Bool)

(declare-fun e!946599 () Bool)

(declare-fun e!946602 () Bool)

(declare-fun b!1480704 () Bool)

(assert (=> b!1480704 (= e!946599 (and (inv!21 (value!89248 (h!21064 (t!137210 l2!3105)))) e!946602 tp!419780))))

(declare-fun e!946600 () Bool)

(declare-fun tp!419781 () Bool)

(declare-fun b!1480705 () Bool)

(assert (=> b!1480705 (= e!946602 (and tp!419781 (inv!20875 (tag!3057 (rule!4570 (h!21064 (t!137210 l2!3105))))) (inv!20879 (transformation!2793 (rule!4570 (h!21064 (t!137210 l2!3105))))) e!946600))))

(declare-fun e!946598 () Bool)

(assert (=> b!1480387 (= tp!419734 e!946598)))

(declare-fun b!1480703 () Bool)

(declare-fun tp!419779 () Bool)

(assert (=> b!1480703 (= e!946598 (and (inv!20878 (h!21064 (t!137210 l2!3105))) e!946599 tp!419779))))

(assert (=> b!1480706 (= e!946600 (and tp!419778 tp!419782))))

(assert (= b!1480705 b!1480706))

(assert (= b!1480704 b!1480705))

(assert (= b!1480703 b!1480704))

(assert (= (and b!1480387 ((_ is Cons!15663) (t!137210 l2!3105))) b!1480703))

(declare-fun m!1726613 () Bool)

(assert (=> b!1480704 m!1726613))

(declare-fun m!1726615 () Bool)

(assert (=> b!1480705 m!1726615))

(declare-fun m!1726617 () Bool)

(assert (=> b!1480705 m!1726617))

(declare-fun m!1726619 () Bool)

(assert (=> b!1480703 m!1726619))

(declare-fun b!1480707 () Bool)

(declare-fun e!946604 () Bool)

(assert (=> b!1480707 (= e!946604 tp_is_empty!6973)))

(declare-fun b!1480709 () Bool)

(declare-fun tp!419786 () Bool)

(assert (=> b!1480709 (= e!946604 tp!419786)))

(assert (=> b!1480388 (= tp!419733 e!946604)))

(declare-fun b!1480710 () Bool)

(declare-fun tp!419787 () Bool)

(declare-fun tp!419784 () Bool)

(assert (=> b!1480710 (= e!946604 (and tp!419787 tp!419784))))

(declare-fun b!1480708 () Bool)

(declare-fun tp!419783 () Bool)

(declare-fun tp!419785 () Bool)

(assert (=> b!1480708 (= e!946604 (and tp!419783 tp!419785))))

(assert (= (and b!1480388 ((_ is ElementMatch!4107) (regex!2793 (h!21063 rules!4290)))) b!1480707))

(assert (= (and b!1480388 ((_ is Concat!6991) (regex!2793 (h!21063 rules!4290)))) b!1480708))

(assert (= (and b!1480388 ((_ is Star!4107) (regex!2793 (h!21063 rules!4290)))) b!1480709))

(assert (= (and b!1480388 ((_ is Union!4107) (regex!2793 (h!21063 rules!4290)))) b!1480710))

(declare-fun b!1480715 () Bool)

(declare-fun e!946607 () Bool)

(declare-fun tp!419790 () Bool)

(assert (=> b!1480715 (= e!946607 (and tp_is_empty!6973 tp!419790))))

(assert (=> b!1480390 (= tp!419744 e!946607)))

(assert (= (and b!1480390 ((_ is Cons!15661) (originalCharacters!3655 (h!21064 l2!3105)))) b!1480715))

(declare-fun b!1480719 () Bool)

(declare-fun b_free!38191 () Bool)

(declare-fun b_next!38895 () Bool)

(assert (=> b!1480719 (= b_free!38191 (not b_next!38895))))

(declare-fun tp!419791 () Bool)

(declare-fun b_and!102669 () Bool)

(assert (=> b!1480719 (= tp!419791 b_and!102669)))

(declare-fun b_free!38193 () Bool)

(declare-fun b_next!38897 () Bool)

(assert (=> b!1480719 (= b_free!38193 (not b_next!38897))))

(declare-fun tb!84537 () Bool)

(declare-fun t!137248 () Bool)

(assert (=> (and b!1480719 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l1!3136))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105))))) t!137248) tb!84537))

(declare-fun result!101660 () Bool)

(assert (= result!101660 result!101622))

(assert (=> b!1480452 t!137248))

(declare-fun t!137250 () Bool)

(declare-fun tb!84539 () Bool)

(assert (=> (and b!1480719 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l1!3136))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136))))) t!137250) tb!84539))

(declare-fun result!101662 () Bool)

(assert (= result!101662 result!101630))

(assert (=> b!1480516 t!137250))

(declare-fun tp!419795 () Bool)

(declare-fun b_and!102671 () Bool)

(assert (=> b!1480719 (= tp!419795 (and (=> t!137248 result!101660) (=> t!137250 result!101662) b_and!102671))))

(declare-fun tp!419793 () Bool)

(declare-fun b!1480717 () Bool)

(declare-fun e!946612 () Bool)

(declare-fun e!946609 () Bool)

(assert (=> b!1480717 (= e!946609 (and (inv!21 (value!89248 (h!21064 (t!137210 l1!3136)))) e!946612 tp!419793))))

(declare-fun b!1480718 () Bool)

(declare-fun tp!419794 () Bool)

(declare-fun e!946610 () Bool)

(assert (=> b!1480718 (= e!946612 (and tp!419794 (inv!20875 (tag!3057 (rule!4570 (h!21064 (t!137210 l1!3136))))) (inv!20879 (transformation!2793 (rule!4570 (h!21064 (t!137210 l1!3136))))) e!946610))))

(declare-fun e!946608 () Bool)

(assert (=> b!1480379 (= tp!419739 e!946608)))

(declare-fun b!1480716 () Bool)

(declare-fun tp!419792 () Bool)

(assert (=> b!1480716 (= e!946608 (and (inv!20878 (h!21064 (t!137210 l1!3136))) e!946609 tp!419792))))

(assert (=> b!1480719 (= e!946610 (and tp!419791 tp!419795))))

(assert (= b!1480718 b!1480719))

(assert (= b!1480717 b!1480718))

(assert (= b!1480716 b!1480717))

(assert (= (and b!1480379 ((_ is Cons!15663) (t!137210 l1!3136))) b!1480716))

(declare-fun m!1726621 () Bool)

(assert (=> b!1480717 m!1726621))

(declare-fun m!1726623 () Bool)

(assert (=> b!1480718 m!1726623))

(declare-fun m!1726625 () Bool)

(assert (=> b!1480718 m!1726625))

(declare-fun m!1726627 () Bool)

(assert (=> b!1480716 m!1726627))

(declare-fun b!1480720 () Bool)

(declare-fun e!946614 () Bool)

(assert (=> b!1480720 (= e!946614 tp_is_empty!6973)))

(declare-fun b!1480722 () Bool)

(declare-fun tp!419799 () Bool)

(assert (=> b!1480722 (= e!946614 tp!419799)))

(assert (=> b!1480400 (= tp!419738 e!946614)))

(declare-fun b!1480723 () Bool)

(declare-fun tp!419800 () Bool)

(declare-fun tp!419797 () Bool)

(assert (=> b!1480723 (= e!946614 (and tp!419800 tp!419797))))

(declare-fun b!1480721 () Bool)

(declare-fun tp!419796 () Bool)

(declare-fun tp!419798 () Bool)

(assert (=> b!1480721 (= e!946614 (and tp!419796 tp!419798))))

(assert (= (and b!1480400 ((_ is ElementMatch!4107) (regex!2793 (rule!4570 (h!21064 l1!3136))))) b!1480720))

(assert (= (and b!1480400 ((_ is Concat!6991) (regex!2793 (rule!4570 (h!21064 l1!3136))))) b!1480721))

(assert (= (and b!1480400 ((_ is Star!4107) (regex!2793 (rule!4570 (h!21064 l1!3136))))) b!1480722))

(assert (= (and b!1480400 ((_ is Union!4107) (regex!2793 (rule!4570 (h!21064 l1!3136))))) b!1480723))

(declare-fun b!1480736 () Bool)

(declare-fun b_free!38195 () Bool)

(declare-fun b_next!38899 () Bool)

(assert (=> b!1480736 (= b_free!38195 (not b_next!38899))))

(declare-fun tp!419810 () Bool)

(declare-fun b_and!102673 () Bool)

(assert (=> b!1480736 (= tp!419810 b_and!102673)))

(declare-fun b_free!38197 () Bool)

(declare-fun b_next!38901 () Bool)

(assert (=> b!1480736 (= b_free!38197 (not b_next!38901))))

(declare-fun t!137252 () Bool)

(declare-fun tb!84541 () Bool)

(assert (=> (and b!1480736 (= (toChars!3987 (transformation!2793 (h!21063 (t!137209 rules!4290)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105))))) t!137252) tb!84541))

(declare-fun result!101666 () Bool)

(assert (= result!101666 result!101622))

(assert (=> b!1480452 t!137252))

(declare-fun tb!84543 () Bool)

(declare-fun t!137254 () Bool)

(assert (=> (and b!1480736 (= (toChars!3987 (transformation!2793 (h!21063 (t!137209 rules!4290)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136))))) t!137254) tb!84543))

(declare-fun result!101668 () Bool)

(assert (= result!101668 result!101630))

(assert (=> b!1480516 t!137254))

(declare-fun tp!419811 () Bool)

(declare-fun b_and!102675 () Bool)

(assert (=> b!1480736 (= tp!419811 (and (=> t!137252 result!101666) (=> t!137254 result!101668) b_and!102675))))

(declare-fun e!946627 () Bool)

(assert (=> b!1480736 (= e!946627 (and tp!419810 tp!419811))))

(declare-fun b!1480735 () Bool)

(declare-fun tp!419809 () Bool)

(declare-fun e!946626 () Bool)

(assert (=> b!1480735 (= e!946626 (and tp!419809 (inv!20875 (tag!3057 (h!21063 (t!137209 rules!4290)))) (inv!20879 (transformation!2793 (h!21063 (t!137209 rules!4290)))) e!946627))))

(declare-fun b!1480734 () Bool)

(declare-fun e!946625 () Bool)

(declare-fun tp!419812 () Bool)

(assert (=> b!1480734 (= e!946625 (and e!946626 tp!419812))))

(assert (=> b!1480403 (= tp!419742 e!946625)))

(assert (= b!1480735 b!1480736))

(assert (= b!1480734 b!1480735))

(assert (= (and b!1480403 ((_ is Cons!15662) (t!137209 rules!4290))) b!1480734))

(declare-fun m!1726629 () Bool)

(assert (=> b!1480735 m!1726629))

(declare-fun m!1726631 () Bool)

(assert (=> b!1480735 m!1726631))

(declare-fun b!1480743 () Bool)

(declare-fun e!946629 () Bool)

(declare-fun tp!419813 () Bool)

(assert (=> b!1480743 (= e!946629 (and tp_is_empty!6973 tp!419813))))

(assert (=> b!1480395 (= tp!419740 e!946629)))

(assert (= (and b!1480395 ((_ is Cons!15661) (originalCharacters!3655 (h!21064 l1!3136)))) b!1480743))

(declare-fun b_lambda!46347 () Bool)

(assert (= b_lambda!46341 (or (and b!1480391 b_free!38185 (= (toChars!3987 (transformation!2793 (h!21063 rules!4290))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))))) (and b!1480719 b_free!38193 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l1!3136))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))))) (and b!1480393 b_free!38181 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))))) (and b!1480706 b_free!38189 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l2!3105))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))))) (and b!1480402 b_free!38177) (and b!1480736 b_free!38197 (= (toChars!3987 (transformation!2793 (h!21063 (t!137209 rules!4290)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))))) b_lambda!46347)))

(declare-fun b_lambda!46349 () Bool)

(assert (= b_lambda!46339 (or (and b!1480402 b_free!38177 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l1!3136)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))))) (and b!1480719 b_free!38193 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l1!3136))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))))) (and b!1480706 b_free!38189 (= (toChars!3987 (transformation!2793 (rule!4570 (h!21064 (t!137210 l2!3105))))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))))) (and b!1480391 b_free!38185 (= (toChars!3987 (transformation!2793 (h!21063 rules!4290))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))))) (and b!1480736 b_free!38197 (= (toChars!3987 (transformation!2793 (h!21063 (t!137209 rules!4290)))) (toChars!3987 (transformation!2793 (rule!4570 (h!21064 l2!3105)))))) (and b!1480393 b_free!38181) b_lambda!46349)))

(check-sat (not b!1480691) (not b!1480644) (not d!434170) (not b!1480722) (not b_next!38879) (not d!434064) (not b!1480515) (not b!1480495) (not b!1480520) b_and!102669 (not b_next!38895) (not b!1480522) (not b!1480675) (not b!1480704) tp_is_empty!6973 (not b!1480721) (not b_lambda!46349) (not b!1480555) (not b!1480718) b_and!102651 (not b_lambda!46347) (not b!1480554) (not b!1480547) b_and!102675 (not d!434174) (not b!1480524) (not b!1480498) (not b_next!38881) (not b_next!38891) (not d!434060) (not b!1480575) (not d!434076) (not b!1480672) (not b!1480514) (not d!434146) (not b!1480690) (not d!434078) b_and!102637 (not b!1480492) (not b!1480743) (not b!1480494) (not b!1480643) (not b_next!38887) (not b!1480517) (not b!1480660) (not b!1480409) (not b!1480666) (not b_next!38883) (not d!434160) b_and!102633 (not b!1480443) (not b!1480676) (not d!434096) (not b_next!38893) (not b!1480716) (not b!1480406) (not b_next!38901) (not b!1480521) (not b!1480673) (not b!1480578) (not b!1480516) (not b!1480458) (not b!1480576) (not b!1480661) (not b!1480717) (not b!1480543) (not b!1480551) (not b!1480525) (not d!434166) (not b!1480715) (not d!434050) (not d!434158) (not b!1480734) b_and!102649 b_and!102665 (not b!1480669) (not d!434086) (not b!1480723) (not b!1480577) (not b!1480433) (not b!1480548) (not d!434164) (not b!1480518) (not d!434032) (not b!1480735) (not b!1480709) (not b!1480453) (not b!1480553) (not tb!84515) (not d!434024) b_and!102667 b_and!102673 (not b!1480692) (not d!434156) (not b!1480493) (not b!1480491) (not b!1480645) (not b!1480664) (not d!434020) (not b_next!38899) (not b_next!38889) (not d!434138) (not b!1480663) (not b!1480662) (not b!1480710) (not d!434054) (not b!1480500) (not b!1480668) (not b!1480674) (not b!1480542) b_and!102629 (not b!1480434) (not b!1480665) (not b!1480703) (not b!1480519) b_and!102671 (not d!434092) (not b_next!38885) b_and!102647 (not d!434026) (not d!434088) (not b!1480705) (not b!1480452) (not b!1480499) (not d!434074) (not b_next!38897) (not b!1480511) (not d!434168) (not b!1480523) (not b!1480708) (not tb!84509) (not d!434090) (not b!1480526) (not b!1480550))
(check-sat (not b_next!38879) (not b_next!38883) b_and!102633 (not b_next!38893) (not b_next!38901) b_and!102649 b_and!102665 b_and!102629 b_and!102647 (not b_next!38897) b_and!102669 (not b_next!38895) b_and!102651 b_and!102675 (not b_next!38881) (not b_next!38891) b_and!102637 (not b_next!38887) b_and!102667 b_and!102673 (not b_next!38899) (not b_next!38889) b_and!102671 (not b_next!38885))
