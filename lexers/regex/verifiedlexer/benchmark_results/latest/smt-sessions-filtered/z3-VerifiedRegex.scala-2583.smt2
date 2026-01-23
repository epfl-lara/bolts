; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138250 () Bool)

(assert start!138250)

(declare-fun b!1474962 () Bool)

(declare-fun b_free!37599 () Bool)

(declare-fun b_next!38303 () Bool)

(assert (=> b!1474962 (= b_free!37599 (not b_next!38303))))

(declare-fun tp!417145 () Bool)

(declare-fun b_and!101693 () Bool)

(assert (=> b!1474962 (= tp!417145 b_and!101693)))

(declare-fun b_free!37601 () Bool)

(declare-fun b_next!38305 () Bool)

(assert (=> b!1474962 (= b_free!37601 (not b_next!38305))))

(declare-fun tp!417139 () Bool)

(declare-fun b_and!101695 () Bool)

(assert (=> b!1474962 (= tp!417139 b_and!101695)))

(declare-fun b!1474963 () Bool)

(declare-fun b_free!37603 () Bool)

(declare-fun b_next!38307 () Bool)

(assert (=> b!1474963 (= b_free!37603 (not b_next!38307))))

(declare-fun tp!417144 () Bool)

(declare-fun b_and!101697 () Bool)

(assert (=> b!1474963 (= tp!417144 b_and!101697)))

(declare-fun b_free!37605 () Bool)

(declare-fun b_next!38309 () Bool)

(assert (=> b!1474963 (= b_free!37605 (not b_next!38309))))

(declare-fun tp!417143 () Bool)

(declare-fun b_and!101699 () Bool)

(assert (=> b!1474963 (= tp!417143 b_and!101699)))

(declare-fun b!1474969 () Bool)

(declare-fun b_free!37607 () Bool)

(declare-fun b_next!38311 () Bool)

(assert (=> b!1474969 (= b_free!37607 (not b_next!38311))))

(declare-fun tp!417142 () Bool)

(declare-fun b_and!101701 () Bool)

(assert (=> b!1474969 (= tp!417142 b_and!101701)))

(declare-fun b_free!37609 () Bool)

(declare-fun b_next!38313 () Bool)

(assert (=> b!1474969 (= b_free!37609 (not b_next!38313))))

(declare-fun tp!417150 () Bool)

(declare-fun b_and!101703 () Bool)

(assert (=> b!1474969 (= tp!417150 b_and!101703)))

(declare-fun b!1474947 () Bool)

(declare-fun res!666677 () Bool)

(declare-fun e!942287 () Bool)

(assert (=> b!1474947 (=> (not res!666677) (not e!942287))))

(declare-datatypes ((String!18530 0))(
  ( (String!18531 (value!88424 String)) )
))
(declare-datatypes ((List!15594 0))(
  ( (Nil!15528) (Cons!15528 (h!20929 (_ BitVec 16)) (t!136385 List!15594)) )
))
(declare-datatypes ((C!8336 0))(
  ( (C!8337 (val!4738 Int)) )
))
(declare-datatypes ((List!15595 0))(
  ( (Nil!15529) (Cons!15529 (h!20930 C!8336) (t!136386 List!15595)) )
))
(declare-datatypes ((Regex!4079 0))(
  ( (ElementMatch!4079 (c!242509 C!8336)) (Concat!6934 (regOne!8670 Regex!4079) (regTwo!8670 Regex!4079)) (EmptyExpr!4079) (Star!4079 (reg!4408 Regex!4079)) (EmptyLang!4079) (Union!4079 (regOne!8671 Regex!4079) (regTwo!8671 Regex!4079)) )
))
(declare-datatypes ((TokenValue!2855 0))(
  ( (FloatLiteralValue!5710 (text!20430 List!15594)) (TokenValueExt!2854 (__x!9500 Int)) (Broken!14275 (value!88425 List!15594)) (Object!2920) (End!2855) (Def!2855) (Underscore!2855) (Match!2855) (Else!2855) (Error!2855) (Case!2855) (If!2855) (Extends!2855) (Abstract!2855) (Class!2855) (Val!2855) (DelimiterValue!5710 (del!2915 List!15594)) (KeywordValue!2861 (value!88426 List!15594)) (CommentValue!5710 (value!88427 List!15594)) (WhitespaceValue!5710 (value!88428 List!15594)) (IndentationValue!2855 (value!88429 List!15594)) (String!18532) (Int32!2855) (Broken!14276 (value!88430 List!15594)) (Boolean!2856) (Unit!25274) (OperatorValue!2858 (op!2915 List!15594)) (IdentifierValue!5710 (value!88431 List!15594)) (IdentifierValue!5711 (value!88432 List!15594)) (WhitespaceValue!5711 (value!88433 List!15594)) (True!5710) (False!5710) (Broken!14277 (value!88434 List!15594)) (Broken!14278 (value!88435 List!15594)) (True!5711) (RightBrace!2855) (RightBracket!2855) (Colon!2855) (Null!2855) (Comma!2855) (LeftBracket!2855) (False!5711) (LeftBrace!2855) (ImaginaryLiteralValue!2855 (text!20431 List!15594)) (StringLiteralValue!8565 (value!88436 List!15594)) (EOFValue!2855 (value!88437 List!15594)) (IdentValue!2855 (value!88438 List!15594)) (DelimiterValue!5711 (value!88439 List!15594)) (DedentValue!2855 (value!88440 List!15594)) (NewLineValue!2855 (value!88441 List!15594)) (IntegerValue!8565 (value!88442 (_ BitVec 32)) (text!20432 List!15594)) (IntegerValue!8566 (value!88443 Int) (text!20433 List!15594)) (Times!2855) (Or!2855) (Equal!2855) (Minus!2855) (Broken!14279 (value!88444 List!15594)) (And!2855) (Div!2855) (LessEqual!2855) (Mod!2855) (Concat!6935) (Not!2855) (Plus!2855) (SpaceValue!2855 (value!88445 List!15594)) (IntegerValue!8567 (value!88446 Int) (text!20434 List!15594)) (StringLiteralValue!8566 (text!20435 List!15594)) (FloatLiteralValue!5711 (text!20436 List!15594)) (BytesLiteralValue!2855 (value!88447 List!15594)) (CommentValue!5711 (value!88448 List!15594)) (StringLiteralValue!8567 (value!88449 List!15594)) (ErrorTokenValue!2855 (msg!2916 List!15594)) )
))
(declare-datatypes ((IArray!10589 0))(
  ( (IArray!10590 (innerList!5352 List!15595)) )
))
(declare-datatypes ((Conc!5292 0))(
  ( (Node!5292 (left!13113 Conc!5292) (right!13443 Conc!5292) (csize!10814 Int) (cheight!5503 Int)) (Leaf!7876 (xs!8047 IArray!10589) (csize!10815 Int)) (Empty!5292) )
))
(declare-datatypes ((BalanceConc!10524 0))(
  ( (BalanceConc!10525 (c!242510 Conc!5292)) )
))
(declare-datatypes ((TokenValueInjection!5370 0))(
  ( (TokenValueInjection!5371 (toValue!4096 Int) (toChars!3955 Int)) )
))
(declare-datatypes ((Rule!5330 0))(
  ( (Rule!5331 (regex!2765 Regex!4079) (tag!3029 String!18530) (isSeparator!2765 Bool) (transformation!2765 TokenValueInjection!5370)) )
))
(declare-datatypes ((List!15596 0))(
  ( (Nil!15530) (Cons!15530 (h!20931 Rule!5330) (t!136387 List!15596)) )
))
(declare-fun rules!4290 () List!15596)

(declare-datatypes ((LexerInterface!2421 0))(
  ( (LexerInterfaceExt!2418 (__x!9501 Int)) (Lexer!2419) )
))
(declare-fun thiss!27374 () LexerInterface!2421)

(declare-datatypes ((Token!5192 0))(
  ( (Token!5193 (value!88450 TokenValue!2855) (rule!4542 Rule!5330) (size!12589 Int) (originalCharacters!3627 List!15595)) )
))
(declare-datatypes ((List!15597 0))(
  ( (Nil!15531) (Cons!15531 (h!20932 Token!5192) (t!136388 List!15597)) )
))
(declare-fun l1!3136 () List!15597)

(declare-fun tokensListTwoByTwoPredicateSeparableList!281 (LexerInterface!2421 List!15597 List!15596) Bool)

(assert (=> b!1474947 (= res!666677 (tokensListTwoByTwoPredicateSeparableList!281 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1474948 () Bool)

(declare-fun res!666675 () Bool)

(declare-fun e!942288 () Bool)

(assert (=> b!1474948 (=> res!666675 e!942288)))

(declare-fun isEmpty!9701 (List!15597) Bool)

(assert (=> b!1474948 (= res!666675 (not (isEmpty!9701 (t!136388 l1!3136))))))

(declare-fun b!1474949 () Bool)

(declare-fun res!666679 () Bool)

(assert (=> b!1474949 (=> (not res!666679) (not e!942287))))

(declare-fun l2!3105 () List!15597)

(declare-fun rulesProduceEachTokenIndividuallyList!788 (LexerInterface!2421 List!15596 List!15597) Bool)

(assert (=> b!1474949 (= res!666679 (rulesProduceEachTokenIndividuallyList!788 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1474950 () Bool)

(assert (=> b!1474950 (= e!942288 true)))

(declare-fun ++!4195 (List!15597 List!15597) List!15597)

(assert (=> b!1474950 (rulesProduceEachTokenIndividuallyList!788 thiss!27374 rules!4290 (++!4195 l1!3136 l2!3105))))

(declare-datatypes ((Unit!25275 0))(
  ( (Unit!25276) )
))
(declare-fun lt!512709 () Unit!25275)

(declare-fun lemmaRulesProduceEachTokenIndividuallyConcat!66 (LexerInterface!2421 List!15596 List!15597 List!15597) Unit!25275)

(assert (=> b!1474950 (= lt!512709 (lemmaRulesProduceEachTokenIndividuallyConcat!66 thiss!27374 rules!4290 l1!3136 l2!3105))))

(declare-fun e!942286 () Bool)

(declare-fun b!1474951 () Bool)

(declare-fun e!942278 () Bool)

(declare-fun tp!417147 () Bool)

(declare-fun inv!20735 (String!18530) Bool)

(declare-fun inv!20738 (TokenValueInjection!5370) Bool)

(assert (=> b!1474951 (= e!942278 (and tp!417147 (inv!20735 (tag!3029 (rule!4542 (h!20932 l1!3136)))) (inv!20738 (transformation!2765 (rule!4542 (h!20932 l1!3136)))) e!942286))))

(declare-fun b!1474952 () Bool)

(declare-fun res!666674 () Bool)

(assert (=> b!1474952 (=> (not res!666674) (not e!942287))))

(assert (=> b!1474952 (= res!666674 (not (isEmpty!9701 l2!3105)))))

(declare-fun tp!417148 () Bool)

(declare-fun b!1474953 () Bool)

(declare-fun e!942276 () Bool)

(declare-fun inv!21 (TokenValue!2855) Bool)

(assert (=> b!1474953 (= e!942276 (and (inv!21 (value!88450 (h!20932 l1!3136))) e!942278 tp!417148))))

(declare-fun b!1474954 () Bool)

(declare-fun e!942290 () Bool)

(declare-fun e!942285 () Bool)

(declare-fun tp!417137 () Bool)

(assert (=> b!1474954 (= e!942285 (and tp!417137 (inv!20735 (tag!3029 (h!20931 rules!4290))) (inv!20738 (transformation!2765 (h!20931 rules!4290))) e!942290))))

(declare-fun b!1474955 () Bool)

(assert (=> b!1474955 (= e!942287 (not e!942288))))

(declare-fun res!666672 () Bool)

(assert (=> b!1474955 (=> res!666672 e!942288)))

(declare-fun lt!512713 () Token!5192)

(declare-fun lt!512711 () Token!5192)

(declare-fun separableTokensPredicate!564 (LexerInterface!2421 Token!5192 Token!5192 List!15596) Bool)

(assert (=> b!1474955 (= res!666672 (not (separableTokensPredicate!564 thiss!27374 lt!512711 lt!512713 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1280 (LexerInterface!2421 List!15596 Token!5192) Bool)

(assert (=> b!1474955 (rulesProduceIndividualToken!1280 thiss!27374 rules!4290 lt!512713)))

(declare-fun lt!512710 () Unit!25275)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!461 (LexerInterface!2421 List!15596 List!15597 Token!5192) Unit!25275)

(assert (=> b!1474955 (= lt!512710 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!461 thiss!27374 rules!4290 l2!3105 lt!512713))))

(declare-fun head!3059 (List!15597) Token!5192)

(assert (=> b!1474955 (= lt!512713 (head!3059 l2!3105))))

(assert (=> b!1474955 (rulesProduceIndividualToken!1280 thiss!27374 rules!4290 lt!512711)))

(declare-fun lt!512712 () Unit!25275)

(assert (=> b!1474955 (= lt!512712 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!461 thiss!27374 rules!4290 l1!3136 lt!512711))))

(declare-fun last!323 (List!15597) Token!5192)

(assert (=> b!1474955 (= lt!512711 (last!323 l1!3136))))

(declare-fun tp!417138 () Bool)

(declare-fun e!942277 () Bool)

(declare-fun b!1474956 () Bool)

(declare-fun e!942289 () Bool)

(assert (=> b!1474956 (= e!942289 (and (inv!21 (value!88450 (h!20932 l2!3105))) e!942277 tp!417138))))

(declare-fun b!1474957 () Bool)

(declare-fun e!942279 () Bool)

(assert (=> b!1474957 (= e!942279 (not (isEmpty!9701 (t!136388 l1!3136))))))

(declare-fun b!1474958 () Bool)

(declare-fun tp!417141 () Bool)

(declare-fun e!942291 () Bool)

(declare-fun inv!20739 (Token!5192) Bool)

(assert (=> b!1474958 (= e!942291 (and (inv!20739 (h!20932 l1!3136)) e!942276 tp!417141))))

(declare-fun e!942282 () Bool)

(declare-fun tp!417146 () Bool)

(declare-fun b!1474959 () Bool)

(assert (=> b!1474959 (= e!942277 (and tp!417146 (inv!20735 (tag!3029 (rule!4542 (h!20932 l2!3105)))) (inv!20738 (transformation!2765 (rule!4542 (h!20932 l2!3105)))) e!942282))))

(declare-fun b!1474960 () Bool)

(declare-fun res!666676 () Bool)

(assert (=> b!1474960 (=> (not res!666676) (not e!942287))))

(declare-fun isEmpty!9702 (List!15596) Bool)

(assert (=> b!1474960 (= res!666676 (not (isEmpty!9702 rules!4290)))))

(declare-fun b!1474961 () Bool)

(declare-fun res!666680 () Bool)

(assert (=> b!1474961 (=> res!666680 e!942288)))

(get-info :version)

(assert (=> b!1474961 (= res!666680 (not ((_ is Cons!15531) l1!3136)))))

(assert (=> b!1474962 (= e!942286 (and tp!417145 tp!417139))))

(assert (=> b!1474963 (= e!942282 (and tp!417144 tp!417143))))

(declare-fun b!1474964 () Bool)

(declare-fun res!666673 () Bool)

(assert (=> b!1474964 (=> (not res!666673) (not e!942287))))

(assert (=> b!1474964 (= res!666673 (tokensListTwoByTwoPredicateSeparableList!281 thiss!27374 l2!3105 rules!4290))))

(declare-fun res!666678 () Bool)

(assert (=> start!138250 (=> (not res!666678) (not e!942287))))

(assert (=> start!138250 (= res!666678 ((_ is Lexer!2419) thiss!27374))))

(assert (=> start!138250 e!942287))

(assert (=> start!138250 true))

(declare-fun e!942284 () Bool)

(assert (=> start!138250 e!942284))

(assert (=> start!138250 e!942291))

(declare-fun e!942292 () Bool)

(assert (=> start!138250 e!942292))

(declare-fun b!1474965 () Bool)

(declare-fun tp!417149 () Bool)

(assert (=> b!1474965 (= e!942284 (and e!942285 tp!417149))))

(declare-fun b!1474966 () Bool)

(declare-fun res!666681 () Bool)

(assert (=> b!1474966 (=> res!666681 e!942288)))

(assert (=> b!1474966 (= res!666681 e!942279)))

(declare-fun res!666670 () Bool)

(assert (=> b!1474966 (=> (not res!666670) (not e!942279))))

(assert (=> b!1474966 (= res!666670 ((_ is Cons!15531) l1!3136))))

(declare-fun b!1474967 () Bool)

(declare-fun res!666682 () Bool)

(assert (=> b!1474967 (=> (not res!666682) (not e!942287))))

(assert (=> b!1474967 (= res!666682 (not (isEmpty!9701 l1!3136)))))

(declare-fun b!1474968 () Bool)

(declare-fun res!666671 () Bool)

(assert (=> b!1474968 (=> (not res!666671) (not e!942287))))

(declare-fun rulesInvariant!2210 (LexerInterface!2421 List!15596) Bool)

(assert (=> b!1474968 (= res!666671 (rulesInvariant!2210 thiss!27374 rules!4290))))

(assert (=> b!1474969 (= e!942290 (and tp!417142 tp!417150))))

(declare-fun tp!417140 () Bool)

(declare-fun b!1474970 () Bool)

(assert (=> b!1474970 (= e!942292 (and (inv!20739 (h!20932 l2!3105)) e!942289 tp!417140))))

(declare-fun b!1474971 () Bool)

(declare-fun res!666683 () Bool)

(assert (=> b!1474971 (=> (not res!666683) (not e!942287))))

(assert (=> b!1474971 (= res!666683 (rulesProduceEachTokenIndividuallyList!788 thiss!27374 rules!4290 l1!3136))))

(assert (= (and start!138250 res!666678) b!1474960))

(assert (= (and b!1474960 res!666676) b!1474968))

(assert (= (and b!1474968 res!666671) b!1474971))

(assert (= (and b!1474971 res!666683) b!1474949))

(assert (= (and b!1474949 res!666679) b!1474947))

(assert (= (and b!1474947 res!666677) b!1474964))

(assert (= (and b!1474964 res!666673) b!1474967))

(assert (= (and b!1474967 res!666682) b!1474952))

(assert (= (and b!1474952 res!666674) b!1474955))

(assert (= (and b!1474955 (not res!666672)) b!1474966))

(assert (= (and b!1474966 res!666670) b!1474957))

(assert (= (and b!1474966 (not res!666681)) b!1474961))

(assert (= (and b!1474961 (not res!666680)) b!1474948))

(assert (= (and b!1474948 (not res!666675)) b!1474950))

(assert (= b!1474954 b!1474969))

(assert (= b!1474965 b!1474954))

(assert (= (and start!138250 ((_ is Cons!15530) rules!4290)) b!1474965))

(assert (= b!1474951 b!1474962))

(assert (= b!1474953 b!1474951))

(assert (= b!1474958 b!1474953))

(assert (= (and start!138250 ((_ is Cons!15531) l1!3136)) b!1474958))

(assert (= b!1474959 b!1474963))

(assert (= b!1474956 b!1474959))

(assert (= b!1474970 b!1474956))

(assert (= (and start!138250 ((_ is Cons!15531) l2!3105)) b!1474970))

(declare-fun m!1720059 () Bool)

(assert (=> b!1474967 m!1720059))

(declare-fun m!1720061 () Bool)

(assert (=> b!1474958 m!1720061))

(declare-fun m!1720063 () Bool)

(assert (=> b!1474971 m!1720063))

(declare-fun m!1720065 () Bool)

(assert (=> b!1474959 m!1720065))

(declare-fun m!1720067 () Bool)

(assert (=> b!1474959 m!1720067))

(declare-fun m!1720069 () Bool)

(assert (=> b!1474960 m!1720069))

(declare-fun m!1720071 () Bool)

(assert (=> b!1474954 m!1720071))

(declare-fun m!1720073 () Bool)

(assert (=> b!1474954 m!1720073))

(declare-fun m!1720075 () Bool)

(assert (=> b!1474952 m!1720075))

(declare-fun m!1720077 () Bool)

(assert (=> b!1474953 m!1720077))

(declare-fun m!1720079 () Bool)

(assert (=> b!1474951 m!1720079))

(declare-fun m!1720081 () Bool)

(assert (=> b!1474951 m!1720081))

(declare-fun m!1720083 () Bool)

(assert (=> b!1474957 m!1720083))

(declare-fun m!1720085 () Bool)

(assert (=> b!1474970 m!1720085))

(assert (=> b!1474948 m!1720083))

(declare-fun m!1720087 () Bool)

(assert (=> b!1474947 m!1720087))

(declare-fun m!1720089 () Bool)

(assert (=> b!1474964 m!1720089))

(declare-fun m!1720091 () Bool)

(assert (=> b!1474968 m!1720091))

(declare-fun m!1720093 () Bool)

(assert (=> b!1474949 m!1720093))

(declare-fun m!1720095 () Bool)

(assert (=> b!1474956 m!1720095))

(declare-fun m!1720097 () Bool)

(assert (=> b!1474955 m!1720097))

(declare-fun m!1720099 () Bool)

(assert (=> b!1474955 m!1720099))

(declare-fun m!1720101 () Bool)

(assert (=> b!1474955 m!1720101))

(declare-fun m!1720103 () Bool)

(assert (=> b!1474955 m!1720103))

(declare-fun m!1720105 () Bool)

(assert (=> b!1474955 m!1720105))

(declare-fun m!1720107 () Bool)

(assert (=> b!1474955 m!1720107))

(declare-fun m!1720109 () Bool)

(assert (=> b!1474955 m!1720109))

(declare-fun m!1720111 () Bool)

(assert (=> b!1474950 m!1720111))

(assert (=> b!1474950 m!1720111))

(declare-fun m!1720113 () Bool)

(assert (=> b!1474950 m!1720113))

(declare-fun m!1720115 () Bool)

(assert (=> b!1474950 m!1720115))

(check-sat (not b!1474951) (not b!1474948) (not b!1474971) b_and!101699 (not b_next!38311) (not b!1474947) b_and!101695 (not b!1474967) (not b!1474957) (not b!1474953) b_and!101701 (not b!1474949) (not b!1474956) (not b_next!38305) b_and!101693 (not b_next!38313) (not b!1474950) (not b!1474970) (not b_next!38309) (not b!1474965) (not b!1474968) (not b_next!38307) (not b!1474955) (not b!1474964) (not b!1474960) b_and!101703 b_and!101697 (not b!1474952) (not b!1474954) (not b!1474959) (not b!1474958) (not b_next!38303))
(check-sat (not b_next!38313) (not b_next!38309) b_and!101699 (not b_next!38311) b_and!101695 (not b_next!38307) b_and!101703 b_and!101697 (not b_next!38303) b_and!101701 (not b_next!38305) b_and!101693)
