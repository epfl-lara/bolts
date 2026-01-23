; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!138726 () Bool)

(assert start!138726)

(declare-fun b!1478354 () Bool)

(declare-fun b_free!37959 () Bool)

(declare-fun b_next!38663 () Bool)

(assert (=> b!1478354 (= b_free!37959 (not b_next!38663))))

(declare-fun tp!418796 () Bool)

(declare-fun b_and!102317 () Bool)

(assert (=> b!1478354 (= tp!418796 b_and!102317)))

(declare-fun b_free!37961 () Bool)

(declare-fun b_next!38665 () Bool)

(assert (=> b!1478354 (= b_free!37961 (not b_next!38665))))

(declare-fun tp!418795 () Bool)

(declare-fun b_and!102319 () Bool)

(assert (=> b!1478354 (= tp!418795 b_and!102319)))

(declare-fun b!1478358 () Bool)

(declare-fun b_free!37963 () Bool)

(declare-fun b_next!38667 () Bool)

(assert (=> b!1478358 (= b_free!37963 (not b_next!38667))))

(declare-fun tp!418792 () Bool)

(declare-fun b_and!102321 () Bool)

(assert (=> b!1478358 (= tp!418792 b_and!102321)))

(declare-fun b_free!37965 () Bool)

(declare-fun b_next!38669 () Bool)

(assert (=> b!1478358 (= b_free!37965 (not b_next!38669))))

(declare-fun tp!418803 () Bool)

(declare-fun b_and!102323 () Bool)

(assert (=> b!1478358 (= tp!418803 b_and!102323)))

(declare-fun b!1478348 () Bool)

(declare-fun b_free!37967 () Bool)

(declare-fun b_next!38671 () Bool)

(assert (=> b!1478348 (= b_free!37967 (not b_next!38671))))

(declare-fun tp!418799 () Bool)

(declare-fun b_and!102325 () Bool)

(assert (=> b!1478348 (= tp!418799 b_and!102325)))

(declare-fun b_free!37969 () Bool)

(declare-fun b_next!38673 () Bool)

(assert (=> b!1478348 (= b_free!37969 (not b_next!38673))))

(declare-fun tp!418791 () Bool)

(declare-fun b_and!102327 () Bool)

(assert (=> b!1478348 (= tp!418791 b_and!102327)))

(declare-fun tp!418800 () Bool)

(declare-fun b!1478345 () Bool)

(declare-fun e!944850 () Bool)

(declare-datatypes ((List!15679 0))(
  ( (Nil!15613) (Cons!15613 (h!21014 (_ BitVec 16)) (t!136936 List!15679)) )
))
(declare-datatypes ((TokenValue!2873 0))(
  ( (FloatLiteralValue!5746 (text!20556 List!15679)) (TokenValueExt!2872 (__x!9536 Int)) (Broken!14365 (value!88937 List!15679)) (Object!2938) (End!2873) (Def!2873) (Underscore!2873) (Match!2873) (Else!2873) (Error!2873) (Case!2873) (If!2873) (Extends!2873) (Abstract!2873) (Class!2873) (Val!2873) (DelimiterValue!5746 (del!2933 List!15679)) (KeywordValue!2879 (value!88938 List!15679)) (CommentValue!5746 (value!88939 List!15679)) (WhitespaceValue!5746 (value!88940 List!15679)) (IndentationValue!2873 (value!88941 List!15679)) (String!18620) (Int32!2873) (Broken!14366 (value!88942 List!15679)) (Boolean!2874) (Unit!25390) (OperatorValue!2876 (op!2933 List!15679)) (IdentifierValue!5746 (value!88943 List!15679)) (IdentifierValue!5747 (value!88944 List!15679)) (WhitespaceValue!5747 (value!88945 List!15679)) (True!5746) (False!5746) (Broken!14367 (value!88946 List!15679)) (Broken!14368 (value!88947 List!15679)) (True!5747) (RightBrace!2873) (RightBracket!2873) (Colon!2873) (Null!2873) (Comma!2873) (LeftBracket!2873) (False!5747) (LeftBrace!2873) (ImaginaryLiteralValue!2873 (text!20557 List!15679)) (StringLiteralValue!8619 (value!88948 List!15679)) (EOFValue!2873 (value!88949 List!15679)) (IdentValue!2873 (value!88950 List!15679)) (DelimiterValue!5747 (value!88951 List!15679)) (DedentValue!2873 (value!88952 List!15679)) (NewLineValue!2873 (value!88953 List!15679)) (IntegerValue!8619 (value!88954 (_ BitVec 32)) (text!20558 List!15679)) (IntegerValue!8620 (value!88955 Int) (text!20559 List!15679)) (Times!2873) (Or!2873) (Equal!2873) (Minus!2873) (Broken!14369 (value!88956 List!15679)) (And!2873) (Div!2873) (LessEqual!2873) (Mod!2873) (Concat!6970) (Not!2873) (Plus!2873) (SpaceValue!2873 (value!88957 List!15679)) (IntegerValue!8621 (value!88958 Int) (text!20560 List!15679)) (StringLiteralValue!8620 (text!20561 List!15679)) (FloatLiteralValue!5747 (text!20562 List!15679)) (BytesLiteralValue!2873 (value!88959 List!15679)) (CommentValue!5747 (value!88960 List!15679)) (StringLiteralValue!8621 (value!88961 List!15679)) (ErrorTokenValue!2873 (msg!2934 List!15679)) )
))
(declare-datatypes ((C!8372 0))(
  ( (C!8373 (val!4756 Int)) )
))
(declare-datatypes ((Regex!4097 0))(
  ( (ElementMatch!4097 (c!242748 C!8372)) (Concat!6971 (regOne!8706 Regex!4097) (regTwo!8706 Regex!4097)) (EmptyExpr!4097) (Star!4097 (reg!4426 Regex!4097)) (EmptyLang!4097) (Union!4097 (regOne!8707 Regex!4097) (regTwo!8707 Regex!4097)) )
))
(declare-datatypes ((String!18621 0))(
  ( (String!18622 (value!88962 String)) )
))
(declare-datatypes ((List!15680 0))(
  ( (Nil!15614) (Cons!15614 (h!21015 C!8372) (t!136937 List!15680)) )
))
(declare-datatypes ((IArray!10639 0))(
  ( (IArray!10640 (innerList!5377 List!15680)) )
))
(declare-datatypes ((Conc!5317 0))(
  ( (Node!5317 (left!13167 Conc!5317) (right!13497 Conc!5317) (csize!10864 Int) (cheight!5528 Int)) (Leaf!7910 (xs!8072 IArray!10639) (csize!10865 Int)) (Empty!5317) )
))
(declare-datatypes ((BalanceConc!10574 0))(
  ( (BalanceConc!10575 (c!242749 Conc!5317)) )
))
(declare-datatypes ((TokenValueInjection!5406 0))(
  ( (TokenValueInjection!5407 (toValue!4118 Int) (toChars!3977 Int)) )
))
(declare-datatypes ((Rule!5366 0))(
  ( (Rule!5367 (regex!2783 Regex!4097) (tag!3047 String!18621) (isSeparator!2783 Bool) (transformation!2783 TokenValueInjection!5406)) )
))
(declare-datatypes ((Token!5228 0))(
  ( (Token!5229 (value!88963 TokenValue!2873) (rule!4560 Rule!5366) (size!12643 Int) (originalCharacters!3645 List!15680)) )
))
(declare-datatypes ((List!15681 0))(
  ( (Nil!15615) (Cons!15615 (h!21016 Token!5228) (t!136938 List!15681)) )
))
(declare-fun l1!3136 () List!15681)

(declare-fun e!944846 () Bool)

(declare-fun inv!21 (TokenValue!2873) Bool)

(assert (=> b!1478345 (= e!944846 (and (inv!21 (value!88963 (h!21016 l1!3136))) e!944850 tp!418800))))

(declare-fun e!944856 () Bool)

(declare-fun b!1478346 () Bool)

(declare-fun tp!418804 () Bool)

(declare-datatypes ((List!15682 0))(
  ( (Nil!15616) (Cons!15616 (h!21017 Rule!5366) (t!136939 List!15682)) )
))
(declare-fun rules!4290 () List!15682)

(declare-fun e!944853 () Bool)

(declare-fun inv!20824 (String!18621) Bool)

(declare-fun inv!20827 (TokenValueInjection!5406) Bool)

(assert (=> b!1478346 (= e!944856 (and tp!418804 (inv!20824 (tag!3047 (h!21017 rules!4290))) (inv!20827 (transformation!2783 (h!21017 rules!4290))) e!944853))))

(declare-fun b!1478347 () Bool)

(declare-fun res!668045 () Bool)

(declare-fun e!944855 () Bool)

(assert (=> b!1478347 (=> (not res!668045) (not e!944855))))

(declare-datatypes ((LexerInterface!2439 0))(
  ( (LexerInterfaceExt!2436 (__x!9537 Int)) (Lexer!2437) )
))
(declare-fun thiss!27374 () LexerInterface!2439)

(declare-fun rulesInvariant!2228 (LexerInterface!2439 List!15682) Bool)

(assert (=> b!1478347 (= res!668045 (rulesInvariant!2228 thiss!27374 rules!4290))))

(declare-fun e!944844 () Bool)

(assert (=> b!1478348 (= e!944844 (and tp!418799 tp!418791))))

(declare-fun res!668043 () Bool)

(assert (=> start!138726 (=> (not res!668043) (not e!944855))))

(get-info :version)

(assert (=> start!138726 (= res!668043 ((_ is Lexer!2437) thiss!27374))))

(assert (=> start!138726 e!944855))

(assert (=> start!138726 true))

(declare-fun e!944860 () Bool)

(assert (=> start!138726 e!944860))

(declare-fun e!944848 () Bool)

(assert (=> start!138726 e!944848))

(declare-fun e!944859 () Bool)

(assert (=> start!138726 e!944859))

(declare-fun b!1478349 () Bool)

(declare-fun e!944851 () Bool)

(assert (=> b!1478349 (= e!944855 (not e!944851))))

(declare-fun res!668051 () Bool)

(assert (=> b!1478349 (=> res!668051 e!944851)))

(declare-fun lt!513657 () Token!5228)

(declare-fun lt!513656 () Token!5228)

(declare-fun separableTokensPredicate!578 (LexerInterface!2439 Token!5228 Token!5228 List!15682) Bool)

(assert (=> b!1478349 (= res!668051 (not (separableTokensPredicate!578 thiss!27374 lt!513656 lt!513657 rules!4290)))))

(declare-fun rulesProduceIndividualToken!1296 (LexerInterface!2439 List!15682 Token!5228) Bool)

(assert (=> b!1478349 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 lt!513657)))

(declare-datatypes ((Unit!25391 0))(
  ( (Unit!25392) )
))
(declare-fun lt!513659 () Unit!25391)

(declare-fun l2!3105 () List!15681)

(declare-fun lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 (LexerInterface!2439 List!15682 List!15681 Token!5228) Unit!25391)

(assert (=> b!1478349 (= lt!513659 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l2!3105 lt!513657))))

(declare-fun head!3071 (List!15681) Token!5228)

(assert (=> b!1478349 (= lt!513657 (head!3071 l2!3105))))

(assert (=> b!1478349 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 lt!513656)))

(declare-fun lt!513658 () Unit!25391)

(assert (=> b!1478349 (= lt!513658 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l1!3136 lt!513656))))

(declare-fun last!341 (List!15681) Token!5228)

(assert (=> b!1478349 (= lt!513656 (last!341 l1!3136))))

(declare-fun b!1478350 () Bool)

(declare-fun res!668046 () Bool)

(assert (=> b!1478350 (=> (not res!668046) (not e!944855))))

(declare-fun tokensListTwoByTwoPredicateSeparableList!299 (LexerInterface!2439 List!15681 List!15682) Bool)

(assert (=> b!1478350 (= res!668046 (tokensListTwoByTwoPredicateSeparableList!299 thiss!27374 l2!3105 rules!4290))))

(declare-fun b!1478351 () Bool)

(declare-fun res!668047 () Bool)

(assert (=> b!1478351 (=> (not res!668047) (not e!944855))))

(declare-fun isEmpty!9758 (List!15681) Bool)

(assert (=> b!1478351 (= res!668047 (not (isEmpty!9758 l1!3136)))))

(declare-fun b!1478352 () Bool)

(declare-fun tp!418793 () Bool)

(assert (=> b!1478352 (= e!944860 (and e!944856 tp!418793))))

(declare-fun b!1478353 () Bool)

(declare-fun res!668048 () Bool)

(assert (=> b!1478353 (=> (not res!668048) (not e!944855))))

(declare-fun isEmpty!9759 (List!15682) Bool)

(assert (=> b!1478353 (= res!668048 (not (isEmpty!9759 rules!4290)))))

(assert (=> b!1478354 (= e!944853 (and tp!418796 tp!418795))))

(declare-fun tp!418797 () Bool)

(declare-fun b!1478355 () Bool)

(declare-fun e!944854 () Bool)

(assert (=> b!1478355 (= e!944850 (and tp!418797 (inv!20824 (tag!3047 (rule!4560 (h!21016 l1!3136)))) (inv!20827 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) e!944854))))

(declare-fun b!1478356 () Bool)

(declare-fun tp!418794 () Bool)

(declare-fun inv!20828 (Token!5228) Bool)

(assert (=> b!1478356 (= e!944848 (and (inv!20828 (h!21016 l1!3136)) e!944846 tp!418794))))

(declare-fun tp!418798 () Bool)

(declare-fun e!944849 () Bool)

(declare-fun b!1478357 () Bool)

(assert (=> b!1478357 (= e!944859 (and (inv!20828 (h!21016 l2!3105)) e!944849 tp!418798))))

(assert (=> b!1478358 (= e!944854 (and tp!418792 tp!418803))))

(declare-fun b!1478359 () Bool)

(declare-fun res!668052 () Bool)

(assert (=> b!1478359 (=> res!668052 e!944851)))

(assert (=> b!1478359 (= res!668052 (not ((_ is Cons!15615) l1!3136)))))

(declare-fun b!1478360 () Bool)

(declare-fun res!668041 () Bool)

(assert (=> b!1478360 (=> (not res!668041) (not e!944855))))

(assert (=> b!1478360 (= res!668041 (not (isEmpty!9758 l2!3105)))))

(declare-fun b!1478361 () Bool)

(declare-fun res!668049 () Bool)

(assert (=> b!1478361 (=> (not res!668049) (not e!944855))))

(declare-fun rulesProduceEachTokenIndividuallyList!806 (LexerInterface!2439 List!15682 List!15681) Bool)

(assert (=> b!1478361 (= res!668049 (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 l2!3105))))

(declare-fun b!1478362 () Bool)

(declare-fun res!668044 () Bool)

(assert (=> b!1478362 (=> res!668044 e!944851)))

(assert (=> b!1478362 (= res!668044 (isEmpty!9758 (t!136938 l1!3136)))))

(declare-fun e!944845 () Bool)

(declare-fun b!1478363 () Bool)

(declare-fun tp!418801 () Bool)

(assert (=> b!1478363 (= e!944849 (and (inv!21 (value!88963 (h!21016 l2!3105))) e!944845 tp!418801))))

(declare-fun b!1478364 () Bool)

(declare-fun tp!418802 () Bool)

(assert (=> b!1478364 (= e!944845 (and tp!418802 (inv!20824 (tag!3047 (rule!4560 (h!21016 l2!3105)))) (inv!20827 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) e!944844))))

(declare-fun b!1478365 () Bool)

(declare-fun res!668042 () Bool)

(assert (=> b!1478365 (=> (not res!668042) (not e!944855))))

(assert (=> b!1478365 (= res!668042 (tokensListTwoByTwoPredicateSeparableList!299 thiss!27374 l1!3136 rules!4290))))

(declare-fun b!1478366 () Bool)

(assert (=> b!1478366 (= e!944851 (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 (t!136938 l1!3136)))))

(declare-fun b!1478367 () Bool)

(declare-fun res!668050 () Bool)

(assert (=> b!1478367 (=> (not res!668050) (not e!944855))))

(assert (=> b!1478367 (= res!668050 (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 l1!3136))))

(assert (= (and start!138726 res!668043) b!1478353))

(assert (= (and b!1478353 res!668048) b!1478347))

(assert (= (and b!1478347 res!668045) b!1478367))

(assert (= (and b!1478367 res!668050) b!1478361))

(assert (= (and b!1478361 res!668049) b!1478365))

(assert (= (and b!1478365 res!668042) b!1478350))

(assert (= (and b!1478350 res!668046) b!1478351))

(assert (= (and b!1478351 res!668047) b!1478360))

(assert (= (and b!1478360 res!668041) b!1478349))

(assert (= (and b!1478349 (not res!668051)) b!1478359))

(assert (= (and b!1478359 (not res!668052)) b!1478362))

(assert (= (and b!1478362 (not res!668044)) b!1478366))

(assert (= b!1478346 b!1478354))

(assert (= b!1478352 b!1478346))

(assert (= (and start!138726 ((_ is Cons!15616) rules!4290)) b!1478352))

(assert (= b!1478355 b!1478358))

(assert (= b!1478345 b!1478355))

(assert (= b!1478356 b!1478345))

(assert (= (and start!138726 ((_ is Cons!15615) l1!3136)) b!1478356))

(assert (= b!1478364 b!1478348))

(assert (= b!1478363 b!1478364))

(assert (= b!1478357 b!1478363))

(assert (= (and start!138726 ((_ is Cons!15615) l2!3105)) b!1478357))

(declare-fun m!1723815 () Bool)

(assert (=> b!1478349 m!1723815))

(declare-fun m!1723817 () Bool)

(assert (=> b!1478349 m!1723817))

(declare-fun m!1723819 () Bool)

(assert (=> b!1478349 m!1723819))

(declare-fun m!1723821 () Bool)

(assert (=> b!1478349 m!1723821))

(declare-fun m!1723823 () Bool)

(assert (=> b!1478349 m!1723823))

(declare-fun m!1723825 () Bool)

(assert (=> b!1478349 m!1723825))

(declare-fun m!1723827 () Bool)

(assert (=> b!1478349 m!1723827))

(declare-fun m!1723829 () Bool)

(assert (=> b!1478360 m!1723829))

(declare-fun m!1723831 () Bool)

(assert (=> b!1478346 m!1723831))

(declare-fun m!1723833 () Bool)

(assert (=> b!1478346 m!1723833))

(declare-fun m!1723835 () Bool)

(assert (=> b!1478367 m!1723835))

(declare-fun m!1723837 () Bool)

(assert (=> b!1478364 m!1723837))

(declare-fun m!1723839 () Bool)

(assert (=> b!1478364 m!1723839))

(declare-fun m!1723841 () Bool)

(assert (=> b!1478356 m!1723841))

(declare-fun m!1723843 () Bool)

(assert (=> b!1478350 m!1723843))

(declare-fun m!1723845 () Bool)

(assert (=> b!1478351 m!1723845))

(declare-fun m!1723847 () Bool)

(assert (=> b!1478361 m!1723847))

(declare-fun m!1723849 () Bool)

(assert (=> b!1478365 m!1723849))

(declare-fun m!1723851 () Bool)

(assert (=> b!1478345 m!1723851))

(declare-fun m!1723853 () Bool)

(assert (=> b!1478353 m!1723853))

(declare-fun m!1723855 () Bool)

(assert (=> b!1478363 m!1723855))

(declare-fun m!1723857 () Bool)

(assert (=> b!1478357 m!1723857))

(declare-fun m!1723859 () Bool)

(assert (=> b!1478366 m!1723859))

(declare-fun m!1723861 () Bool)

(assert (=> b!1478362 m!1723861))

(declare-fun m!1723863 () Bool)

(assert (=> b!1478347 m!1723863))

(declare-fun m!1723865 () Bool)

(assert (=> b!1478355 m!1723865))

(declare-fun m!1723867 () Bool)

(assert (=> b!1478355 m!1723867))

(check-sat (not b!1478345) (not b!1478366) b_and!102317 (not b!1478352) (not b!1478363) b_and!102321 (not b!1478351) (not b!1478346) b_and!102323 (not b!1478361) (not b_next!38665) (not b_next!38673) (not b!1478347) (not b!1478356) (not b_next!38667) (not b!1478360) (not b_next!38669) b_and!102325 (not b!1478357) (not b_next!38671) (not b!1478350) (not b!1478353) (not b!1478355) (not b!1478362) b_and!102319 (not b!1478349) (not b!1478364) (not b!1478367) (not b_next!38663) b_and!102327 (not b!1478365))
(check-sat b_and!102317 b_and!102321 (not b_next!38671) b_and!102323 (not b_next!38665) (not b_next!38673) b_and!102327 (not b_next!38667) (not b_next!38669) b_and!102325 b_and!102319 (not b_next!38663))
(get-model)

(declare-fun d!433529 () Bool)

(declare-fun res!668081 () Bool)

(declare-fun e!944883 () Bool)

(assert (=> d!433529 (=> res!668081 e!944883)))

(assert (=> d!433529 (= res!668081 (or (not ((_ is Cons!15615) l1!3136)) (not ((_ is Cons!15615) (t!136938 l1!3136)))))))

(assert (=> d!433529 (= (tokensListTwoByTwoPredicateSeparableList!299 thiss!27374 l1!3136 rules!4290) e!944883)))

(declare-fun b!1478394 () Bool)

(declare-fun e!944882 () Bool)

(assert (=> b!1478394 (= e!944883 e!944882)))

(declare-fun res!668082 () Bool)

(assert (=> b!1478394 (=> (not res!668082) (not e!944882))))

(assert (=> b!1478394 (= res!668082 (separableTokensPredicate!578 thiss!27374 (h!21016 l1!3136) (h!21016 (t!136938 l1!3136)) rules!4290))))

(declare-fun lt!513682 () Unit!25391)

(declare-fun Unit!25399 () Unit!25391)

(assert (=> b!1478394 (= lt!513682 Unit!25399)))

(declare-fun size!12646 (BalanceConc!10574) Int)

(declare-fun charsOf!1593 (Token!5228) BalanceConc!10574)

(assert (=> b!1478394 (> (size!12646 (charsOf!1593 (h!21016 (t!136938 l1!3136)))) 0)))

(declare-fun lt!513676 () Unit!25391)

(declare-fun Unit!25400 () Unit!25391)

(assert (=> b!1478394 (= lt!513676 Unit!25400)))

(assert (=> b!1478394 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 (t!136938 l1!3136)))))

(declare-fun lt!513677 () Unit!25391)

(declare-fun Unit!25401 () Unit!25391)

(assert (=> b!1478394 (= lt!513677 Unit!25401)))

(assert (=> b!1478394 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 l1!3136))))

(declare-fun lt!513679 () Unit!25391)

(declare-fun lt!513678 () Unit!25391)

(assert (=> b!1478394 (= lt!513679 lt!513678)))

(assert (=> b!1478394 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 (t!136938 l1!3136)))))

(assert (=> b!1478394 (= lt!513678 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l1!3136 (h!21016 (t!136938 l1!3136))))))

(declare-fun lt!513680 () Unit!25391)

(declare-fun lt!513681 () Unit!25391)

(assert (=> b!1478394 (= lt!513680 lt!513681)))

(assert (=> b!1478394 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 l1!3136))))

(assert (=> b!1478394 (= lt!513681 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l1!3136 (h!21016 l1!3136)))))

(declare-fun b!1478395 () Bool)

(assert (=> b!1478395 (= e!944882 (tokensListTwoByTwoPredicateSeparableList!299 thiss!27374 (Cons!15615 (h!21016 (t!136938 l1!3136)) (t!136938 (t!136938 l1!3136))) rules!4290))))

(assert (= (and d!433529 (not res!668081)) b!1478394))

(assert (= (and b!1478394 res!668082) b!1478395))

(declare-fun m!1723893 () Bool)

(assert (=> b!1478394 m!1723893))

(declare-fun m!1723895 () Bool)

(assert (=> b!1478394 m!1723895))

(declare-fun m!1723897 () Bool)

(assert (=> b!1478394 m!1723897))

(declare-fun m!1723899 () Bool)

(assert (=> b!1478394 m!1723899))

(declare-fun m!1723901 () Bool)

(assert (=> b!1478394 m!1723901))

(declare-fun m!1723903 () Bool)

(assert (=> b!1478394 m!1723903))

(assert (=> b!1478394 m!1723899))

(declare-fun m!1723905 () Bool)

(assert (=> b!1478394 m!1723905))

(declare-fun m!1723907 () Bool)

(assert (=> b!1478395 m!1723907))

(assert (=> b!1478365 d!433529))

(declare-fun b!1478469 () Bool)

(declare-fun e!944942 () Bool)

(assert (=> b!1478469 (= e!944942 true)))

(declare-fun b!1478468 () Bool)

(declare-fun e!944941 () Bool)

(assert (=> b!1478468 (= e!944941 e!944942)))

(declare-fun b!1478467 () Bool)

(declare-fun e!944940 () Bool)

(assert (=> b!1478467 (= e!944940 e!944941)))

(declare-fun d!433549 () Bool)

(assert (=> d!433549 e!944940))

(assert (= b!1478468 b!1478469))

(assert (= b!1478467 b!1478468))

(assert (= (and d!433549 ((_ is Cons!15616) rules!4290)) b!1478467))

(declare-fun order!9401 () Int)

(declare-fun lambda!63723 () Int)

(declare-fun order!9403 () Int)

(declare-fun dynLambda!7095 (Int Int) Int)

(declare-fun dynLambda!7096 (Int Int) Int)

(assert (=> b!1478469 (< (dynLambda!7095 order!9401 (toValue!4118 (transformation!2783 (h!21017 rules!4290)))) (dynLambda!7096 order!9403 lambda!63723))))

(declare-fun order!9405 () Int)

(declare-fun dynLambda!7097 (Int Int) Int)

(assert (=> b!1478469 (< (dynLambda!7097 order!9405 (toChars!3977 (transformation!2783 (h!21017 rules!4290)))) (dynLambda!7096 order!9403 lambda!63723))))

(assert (=> d!433549 true))

(declare-fun lt!513716 () Bool)

(declare-fun forall!3802 (List!15681 Int) Bool)

(assert (=> d!433549 (= lt!513716 (forall!3802 (t!136938 l1!3136) lambda!63723))))

(declare-fun e!944932 () Bool)

(assert (=> d!433549 (= lt!513716 e!944932)))

(declare-fun res!668109 () Bool)

(assert (=> d!433549 (=> res!668109 e!944932)))

(assert (=> d!433549 (= res!668109 (not ((_ is Cons!15615) (t!136938 l1!3136))))))

(assert (=> d!433549 (not (isEmpty!9759 rules!4290))))

(assert (=> d!433549 (= (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 (t!136938 l1!3136)) lt!513716)))

(declare-fun b!1478457 () Bool)

(declare-fun e!944933 () Bool)

(assert (=> b!1478457 (= e!944932 e!944933)))

(declare-fun res!668108 () Bool)

(assert (=> b!1478457 (=> (not res!668108) (not e!944933))))

(assert (=> b!1478457 (= res!668108 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 (t!136938 l1!3136))))))

(declare-fun b!1478458 () Bool)

(assert (=> b!1478458 (= e!944933 (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 (t!136938 (t!136938 l1!3136))))))

(assert (= (and d!433549 (not res!668109)) b!1478457))

(assert (= (and b!1478457 res!668108) b!1478458))

(declare-fun m!1723979 () Bool)

(assert (=> d!433549 m!1723979))

(assert (=> d!433549 m!1723853))

(assert (=> b!1478457 m!1723903))

(declare-fun m!1723981 () Bool)

(assert (=> b!1478458 m!1723981))

(assert (=> b!1478366 d!433549))

(declare-fun d!433575 () Bool)

(assert (=> d!433575 (= (inv!20824 (tag!3047 (rule!4560 (h!21016 l1!3136)))) (= (mod (str.len (value!88962 (tag!3047 (rule!4560 (h!21016 l1!3136))))) 2) 0))))

(assert (=> b!1478355 d!433575))

(declare-fun d!433577 () Bool)

(declare-fun res!668118 () Bool)

(declare-fun e!944949 () Bool)

(assert (=> d!433577 (=> (not res!668118) (not e!944949))))

(declare-fun semiInverseModEq!1045 (Int Int) Bool)

(assert (=> d!433577 (= res!668118 (semiInverseModEq!1045 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (toValue!4118 (transformation!2783 (rule!4560 (h!21016 l1!3136))))))))

(assert (=> d!433577 (= (inv!20827 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) e!944949)))

(declare-fun b!1478480 () Bool)

(declare-fun equivClasses!1004 (Int Int) Bool)

(assert (=> b!1478480 (= e!944949 (equivClasses!1004 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (toValue!4118 (transformation!2783 (rule!4560 (h!21016 l1!3136))))))))

(assert (= (and d!433577 res!668118) b!1478480))

(declare-fun m!1723983 () Bool)

(assert (=> d!433577 m!1723983))

(declare-fun m!1723985 () Bool)

(assert (=> b!1478480 m!1723985))

(assert (=> b!1478355 d!433577))

(declare-fun d!433579 () Bool)

(declare-fun res!668126 () Bool)

(declare-fun e!944954 () Bool)

(assert (=> d!433579 (=> (not res!668126) (not e!944954))))

(declare-fun isEmpty!9762 (List!15680) Bool)

(assert (=> d!433579 (= res!668126 (not (isEmpty!9762 (originalCharacters!3645 (h!21016 l1!3136)))))))

(assert (=> d!433579 (= (inv!20828 (h!21016 l1!3136)) e!944954)))

(declare-fun b!1478488 () Bool)

(declare-fun res!668127 () Bool)

(assert (=> b!1478488 (=> (not res!668127) (not e!944954))))

(declare-fun list!6209 (BalanceConc!10574) List!15680)

(declare-fun dynLambda!7098 (Int TokenValue!2873) BalanceConc!10574)

(assert (=> b!1478488 (= res!668127 (= (originalCharacters!3645 (h!21016 l1!3136)) (list!6209 (dynLambda!7098 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (value!88963 (h!21016 l1!3136))))))))

(declare-fun b!1478489 () Bool)

(declare-fun size!12648 (List!15680) Int)

(assert (=> b!1478489 (= e!944954 (= (size!12643 (h!21016 l1!3136)) (size!12648 (originalCharacters!3645 (h!21016 l1!3136)))))))

(assert (= (and d!433579 res!668126) b!1478488))

(assert (= (and b!1478488 res!668127) b!1478489))

(declare-fun b_lambda!46279 () Bool)

(assert (=> (not b_lambda!46279) (not b!1478488)))

(declare-fun tb!84329 () Bool)

(declare-fun t!136958 () Bool)

(assert (=> (and b!1478354 (= (toChars!3977 (transformation!2783 (h!21017 rules!4290))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136))))) t!136958) tb!84329))

(declare-fun b!1478494 () Bool)

(declare-fun e!944957 () Bool)

(declare-fun tp!418811 () Bool)

(declare-fun inv!20831 (Conc!5317) Bool)

(assert (=> b!1478494 (= e!944957 (and (inv!20831 (c!242749 (dynLambda!7098 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (value!88963 (h!21016 l1!3136))))) tp!418811))))

(declare-fun result!101364 () Bool)

(declare-fun inv!20832 (BalanceConc!10574) Bool)

(assert (=> tb!84329 (= result!101364 (and (inv!20832 (dynLambda!7098 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (value!88963 (h!21016 l1!3136)))) e!944957))))

(assert (= tb!84329 b!1478494))

(declare-fun m!1724005 () Bool)

(assert (=> b!1478494 m!1724005))

(declare-fun m!1724007 () Bool)

(assert (=> tb!84329 m!1724007))

(assert (=> b!1478488 t!136958))

(declare-fun b_and!102341 () Bool)

(assert (= b_and!102319 (and (=> t!136958 result!101364) b_and!102341)))

(declare-fun t!136960 () Bool)

(declare-fun tb!84331 () Bool)

(assert (=> (and b!1478358 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136))))) t!136960) tb!84331))

(declare-fun result!101368 () Bool)

(assert (= result!101368 result!101364))

(assert (=> b!1478488 t!136960))

(declare-fun b_and!102343 () Bool)

(assert (= b_and!102323 (and (=> t!136960 result!101368) b_and!102343)))

(declare-fun tb!84333 () Bool)

(declare-fun t!136962 () Bool)

(assert (=> (and b!1478348 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136))))) t!136962) tb!84333))

(declare-fun result!101370 () Bool)

(assert (= result!101370 result!101364))

(assert (=> b!1478488 t!136962))

(declare-fun b_and!102345 () Bool)

(assert (= b_and!102327 (and (=> t!136962 result!101370) b_and!102345)))

(declare-fun m!1724009 () Bool)

(assert (=> d!433579 m!1724009))

(declare-fun m!1724011 () Bool)

(assert (=> b!1478488 m!1724011))

(assert (=> b!1478488 m!1724011))

(declare-fun m!1724013 () Bool)

(assert (=> b!1478488 m!1724013))

(declare-fun m!1724015 () Bool)

(assert (=> b!1478489 m!1724015))

(assert (=> b!1478356 d!433579))

(declare-fun d!433585 () Bool)

(declare-fun c!242763 () Bool)

(assert (=> d!433585 (= c!242763 ((_ is IntegerValue!8619) (value!88963 (h!21016 l1!3136))))))

(declare-fun e!944965 () Bool)

(assert (=> d!433585 (= (inv!21 (value!88963 (h!21016 l1!3136))) e!944965)))

(declare-fun b!1478505 () Bool)

(declare-fun e!944966 () Bool)

(declare-fun inv!15 (TokenValue!2873) Bool)

(assert (=> b!1478505 (= e!944966 (inv!15 (value!88963 (h!21016 l1!3136))))))

(declare-fun b!1478506 () Bool)

(declare-fun e!944964 () Bool)

(declare-fun inv!17 (TokenValue!2873) Bool)

(assert (=> b!1478506 (= e!944964 (inv!17 (value!88963 (h!21016 l1!3136))))))

(declare-fun b!1478507 () Bool)

(assert (=> b!1478507 (= e!944965 e!944964)))

(declare-fun c!242762 () Bool)

(assert (=> b!1478507 (= c!242762 ((_ is IntegerValue!8620) (value!88963 (h!21016 l1!3136))))))

(declare-fun b!1478508 () Bool)

(declare-fun res!668130 () Bool)

(assert (=> b!1478508 (=> res!668130 e!944966)))

(assert (=> b!1478508 (= res!668130 (not ((_ is IntegerValue!8621) (value!88963 (h!21016 l1!3136)))))))

(assert (=> b!1478508 (= e!944964 e!944966)))

(declare-fun b!1478509 () Bool)

(declare-fun inv!16 (TokenValue!2873) Bool)

(assert (=> b!1478509 (= e!944965 (inv!16 (value!88963 (h!21016 l1!3136))))))

(assert (= (and d!433585 c!242763) b!1478509))

(assert (= (and d!433585 (not c!242763)) b!1478507))

(assert (= (and b!1478507 c!242762) b!1478506))

(assert (= (and b!1478507 (not c!242762)) b!1478508))

(assert (= (and b!1478508 (not res!668130)) b!1478505))

(declare-fun m!1724017 () Bool)

(assert (=> b!1478505 m!1724017))

(declare-fun m!1724019 () Bool)

(assert (=> b!1478506 m!1724019))

(declare-fun m!1724021 () Bool)

(assert (=> b!1478509 m!1724021))

(assert (=> b!1478345 d!433585))

(declare-fun d!433587 () Bool)

(assert (=> d!433587 (= (inv!20824 (tag!3047 (h!21017 rules!4290))) (= (mod (str.len (value!88962 (tag!3047 (h!21017 rules!4290)))) 2) 0))))

(assert (=> b!1478346 d!433587))

(declare-fun d!433589 () Bool)

(declare-fun res!668131 () Bool)

(declare-fun e!944967 () Bool)

(assert (=> d!433589 (=> (not res!668131) (not e!944967))))

(assert (=> d!433589 (= res!668131 (semiInverseModEq!1045 (toChars!3977 (transformation!2783 (h!21017 rules!4290))) (toValue!4118 (transformation!2783 (h!21017 rules!4290)))))))

(assert (=> d!433589 (= (inv!20827 (transformation!2783 (h!21017 rules!4290))) e!944967)))

(declare-fun b!1478510 () Bool)

(assert (=> b!1478510 (= e!944967 (equivClasses!1004 (toChars!3977 (transformation!2783 (h!21017 rules!4290))) (toValue!4118 (transformation!2783 (h!21017 rules!4290)))))))

(assert (= (and d!433589 res!668131) b!1478510))

(declare-fun m!1724023 () Bool)

(assert (=> d!433589 m!1724023))

(declare-fun m!1724025 () Bool)

(assert (=> b!1478510 m!1724025))

(assert (=> b!1478346 d!433589))

(declare-fun bs!345754 () Bool)

(declare-fun d!433591 () Bool)

(assert (= bs!345754 (and d!433591 d!433549)))

(declare-fun lambda!63724 () Int)

(assert (=> bs!345754 (= lambda!63724 lambda!63723)))

(declare-fun b!1478515 () Bool)

(declare-fun e!944972 () Bool)

(assert (=> b!1478515 (= e!944972 true)))

(declare-fun b!1478514 () Bool)

(declare-fun e!944971 () Bool)

(assert (=> b!1478514 (= e!944971 e!944972)))

(declare-fun b!1478513 () Bool)

(declare-fun e!944970 () Bool)

(assert (=> b!1478513 (= e!944970 e!944971)))

(assert (=> d!433591 e!944970))

(assert (= b!1478514 b!1478515))

(assert (= b!1478513 b!1478514))

(assert (= (and d!433591 ((_ is Cons!15616) rules!4290)) b!1478513))

(assert (=> b!1478515 (< (dynLambda!7095 order!9401 (toValue!4118 (transformation!2783 (h!21017 rules!4290)))) (dynLambda!7096 order!9403 lambda!63724))))

(assert (=> b!1478515 (< (dynLambda!7097 order!9405 (toChars!3977 (transformation!2783 (h!21017 rules!4290)))) (dynLambda!7096 order!9403 lambda!63724))))

(assert (=> d!433591 true))

(declare-fun lt!513723 () Bool)

(assert (=> d!433591 (= lt!513723 (forall!3802 l1!3136 lambda!63724))))

(declare-fun e!944968 () Bool)

(assert (=> d!433591 (= lt!513723 e!944968)))

(declare-fun res!668133 () Bool)

(assert (=> d!433591 (=> res!668133 e!944968)))

(assert (=> d!433591 (= res!668133 (not ((_ is Cons!15615) l1!3136)))))

(assert (=> d!433591 (not (isEmpty!9759 rules!4290))))

(assert (=> d!433591 (= (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 l1!3136) lt!513723)))

(declare-fun b!1478511 () Bool)

(declare-fun e!944969 () Bool)

(assert (=> b!1478511 (= e!944968 e!944969)))

(declare-fun res!668132 () Bool)

(assert (=> b!1478511 (=> (not res!668132) (not e!944969))))

(assert (=> b!1478511 (= res!668132 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 l1!3136)))))

(declare-fun b!1478512 () Bool)

(assert (=> b!1478512 (= e!944969 (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 (t!136938 l1!3136)))))

(assert (= (and d!433591 (not res!668133)) b!1478511))

(assert (= (and b!1478511 res!668132) b!1478512))

(declare-fun m!1724027 () Bool)

(assert (=> d!433591 m!1724027))

(assert (=> d!433591 m!1723853))

(assert (=> b!1478511 m!1723901))

(assert (=> b!1478512 m!1723859))

(assert (=> b!1478367 d!433591))

(declare-fun d!433593 () Bool)

(declare-fun res!668134 () Bool)

(declare-fun e!944973 () Bool)

(assert (=> d!433593 (=> (not res!668134) (not e!944973))))

(assert (=> d!433593 (= res!668134 (not (isEmpty!9762 (originalCharacters!3645 (h!21016 l2!3105)))))))

(assert (=> d!433593 (= (inv!20828 (h!21016 l2!3105)) e!944973)))

(declare-fun b!1478516 () Bool)

(declare-fun res!668135 () Bool)

(assert (=> b!1478516 (=> (not res!668135) (not e!944973))))

(assert (=> b!1478516 (= res!668135 (= (originalCharacters!3645 (h!21016 l2!3105)) (list!6209 (dynLambda!7098 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (value!88963 (h!21016 l2!3105))))))))

(declare-fun b!1478517 () Bool)

(assert (=> b!1478517 (= e!944973 (= (size!12643 (h!21016 l2!3105)) (size!12648 (originalCharacters!3645 (h!21016 l2!3105)))))))

(assert (= (and d!433593 res!668134) b!1478516))

(assert (= (and b!1478516 res!668135) b!1478517))

(declare-fun b_lambda!46281 () Bool)

(assert (=> (not b_lambda!46281) (not b!1478516)))

(declare-fun tb!84335 () Bool)

(declare-fun t!136964 () Bool)

(assert (=> (and b!1478354 (= (toChars!3977 (transformation!2783 (h!21017 rules!4290))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105))))) t!136964) tb!84335))

(declare-fun b!1478518 () Bool)

(declare-fun e!944974 () Bool)

(declare-fun tp!418812 () Bool)

(assert (=> b!1478518 (= e!944974 (and (inv!20831 (c!242749 (dynLambda!7098 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (value!88963 (h!21016 l2!3105))))) tp!418812))))

(declare-fun result!101372 () Bool)

(assert (=> tb!84335 (= result!101372 (and (inv!20832 (dynLambda!7098 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (value!88963 (h!21016 l2!3105)))) e!944974))))

(assert (= tb!84335 b!1478518))

(declare-fun m!1724029 () Bool)

(assert (=> b!1478518 m!1724029))

(declare-fun m!1724031 () Bool)

(assert (=> tb!84335 m!1724031))

(assert (=> b!1478516 t!136964))

(declare-fun b_and!102347 () Bool)

(assert (= b_and!102341 (and (=> t!136964 result!101372) b_and!102347)))

(declare-fun t!136966 () Bool)

(declare-fun tb!84337 () Bool)

(assert (=> (and b!1478358 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105))))) t!136966) tb!84337))

(declare-fun result!101374 () Bool)

(assert (= result!101374 result!101372))

(assert (=> b!1478516 t!136966))

(declare-fun b_and!102349 () Bool)

(assert (= b_and!102343 (and (=> t!136966 result!101374) b_and!102349)))

(declare-fun t!136968 () Bool)

(declare-fun tb!84339 () Bool)

(assert (=> (and b!1478348 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105))))) t!136968) tb!84339))

(declare-fun result!101376 () Bool)

(assert (= result!101376 result!101372))

(assert (=> b!1478516 t!136968))

(declare-fun b_and!102351 () Bool)

(assert (= b_and!102345 (and (=> t!136968 result!101376) b_and!102351)))

(declare-fun m!1724033 () Bool)

(assert (=> d!433593 m!1724033))

(declare-fun m!1724035 () Bool)

(assert (=> b!1478516 m!1724035))

(assert (=> b!1478516 m!1724035))

(declare-fun m!1724037 () Bool)

(assert (=> b!1478516 m!1724037))

(declare-fun m!1724039 () Bool)

(assert (=> b!1478517 m!1724039))

(assert (=> b!1478357 d!433593))

(declare-fun d!433595 () Bool)

(declare-fun res!668138 () Bool)

(declare-fun e!944977 () Bool)

(assert (=> d!433595 (=> (not res!668138) (not e!944977))))

(declare-fun rulesValid!1017 (LexerInterface!2439 List!15682) Bool)

(assert (=> d!433595 (= res!668138 (rulesValid!1017 thiss!27374 rules!4290))))

(assert (=> d!433595 (= (rulesInvariant!2228 thiss!27374 rules!4290) e!944977)))

(declare-fun b!1478521 () Bool)

(declare-datatypes ((List!15684 0))(
  ( (Nil!15618) (Cons!15618 (h!21019 String!18621) (t!136997 List!15684)) )
))
(declare-fun noDuplicateTag!1017 (LexerInterface!2439 List!15682 List!15684) Bool)

(assert (=> b!1478521 (= e!944977 (noDuplicateTag!1017 thiss!27374 rules!4290 Nil!15618))))

(assert (= (and d!433595 res!668138) b!1478521))

(declare-fun m!1724041 () Bool)

(assert (=> d!433595 m!1724041))

(declare-fun m!1724043 () Bool)

(assert (=> b!1478521 m!1724043))

(assert (=> b!1478347 d!433595))

(declare-fun d!433597 () Bool)

(assert (=> d!433597 (= (isEmpty!9758 l2!3105) ((_ is Nil!15615) l2!3105))))

(assert (=> b!1478360 d!433597))

(declare-fun d!433599 () Bool)

(assert (=> d!433599 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 lt!513657)))

(declare-fun lt!513732 () Unit!25391)

(declare-fun choose!9052 (LexerInterface!2439 List!15682 List!15681 Token!5228) Unit!25391)

(assert (=> d!433599 (= lt!513732 (choose!9052 thiss!27374 rules!4290 l2!3105 lt!513657))))

(assert (=> d!433599 (not (isEmpty!9759 rules!4290))))

(assert (=> d!433599 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l2!3105 lt!513657) lt!513732)))

(declare-fun bs!345756 () Bool)

(assert (= bs!345756 d!433599))

(assert (=> bs!345756 m!1723817))

(declare-fun m!1724051 () Bool)

(assert (=> bs!345756 m!1724051))

(assert (=> bs!345756 m!1723853))

(assert (=> b!1478349 d!433599))

(declare-fun d!433605 () Bool)

(assert (=> d!433605 (= (head!3071 l2!3105) (h!21016 l2!3105))))

(assert (=> b!1478349 d!433605))

(declare-fun d!433607 () Bool)

(declare-fun lt!513735 () Token!5228)

(declare-fun contains!2943 (List!15681 Token!5228) Bool)

(assert (=> d!433607 (contains!2943 l1!3136 lt!513735)))

(declare-fun e!944983 () Token!5228)

(assert (=> d!433607 (= lt!513735 e!944983)))

(declare-fun c!242769 () Bool)

(assert (=> d!433607 (= c!242769 (and ((_ is Cons!15615) l1!3136) ((_ is Nil!15615) (t!136938 l1!3136))))))

(assert (=> d!433607 (not (isEmpty!9758 l1!3136))))

(assert (=> d!433607 (= (last!341 l1!3136) lt!513735)))

(declare-fun b!1478532 () Bool)

(assert (=> b!1478532 (= e!944983 (h!21016 l1!3136))))

(declare-fun b!1478533 () Bool)

(assert (=> b!1478533 (= e!944983 (last!341 (t!136938 l1!3136)))))

(assert (= (and d!433607 c!242769) b!1478532))

(assert (= (and d!433607 (not c!242769)) b!1478533))

(declare-fun m!1724053 () Bool)

(assert (=> d!433607 m!1724053))

(assert (=> d!433607 m!1723845))

(declare-fun m!1724055 () Bool)

(assert (=> b!1478533 m!1724055))

(assert (=> b!1478349 d!433607))

(declare-fun d!433609 () Bool)

(assert (=> d!433609 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 lt!513656)))

(declare-fun lt!513736 () Unit!25391)

(assert (=> d!433609 (= lt!513736 (choose!9052 thiss!27374 rules!4290 l1!3136 lt!513656))))

(assert (=> d!433609 (not (isEmpty!9759 rules!4290))))

(assert (=> d!433609 (= (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l1!3136 lt!513656) lt!513736)))

(declare-fun bs!345757 () Bool)

(assert (= bs!345757 d!433609))

(assert (=> bs!345757 m!1723825))

(declare-fun m!1724057 () Bool)

(assert (=> bs!345757 m!1724057))

(assert (=> bs!345757 m!1723853))

(assert (=> b!1478349 d!433609))

(declare-fun d!433611 () Bool)

(declare-fun lt!513744 () Bool)

(declare-fun e!945036 () Bool)

(assert (=> d!433611 (= lt!513744 e!945036)))

(declare-fun res!668150 () Bool)

(assert (=> d!433611 (=> (not res!668150) (not e!945036))))

(declare-datatypes ((IArray!10643 0))(
  ( (IArray!10644 (innerList!5379 List!15681)) )
))
(declare-datatypes ((Conc!5319 0))(
  ( (Node!5319 (left!13173 Conc!5319) (right!13503 Conc!5319) (csize!10868 Int) (cheight!5530 Int)) (Leaf!7912 (xs!8074 IArray!10643) (csize!10869 Int)) (Empty!5319) )
))
(declare-datatypes ((BalanceConc!10578 0))(
  ( (BalanceConc!10579 (c!242773 Conc!5319)) )
))
(declare-fun list!6210 (BalanceConc!10578) List!15681)

(declare-datatypes ((tuple2!14318 0))(
  ( (tuple2!14319 (_1!8045 BalanceConc!10578) (_2!8045 BalanceConc!10574)) )
))
(declare-fun lex!1098 (LexerInterface!2439 List!15682 BalanceConc!10574) tuple2!14318)

(declare-fun print!1133 (LexerInterface!2439 BalanceConc!10578) BalanceConc!10574)

(declare-fun singletonSeq!1316 (Token!5228) BalanceConc!10578)

(assert (=> d!433611 (= res!668150 (= (list!6210 (_1!8045 (lex!1098 thiss!27374 rules!4290 (print!1133 thiss!27374 (singletonSeq!1316 lt!513656))))) (list!6210 (singletonSeq!1316 lt!513656))))))

(declare-fun e!945035 () Bool)

(assert (=> d!433611 (= lt!513744 e!945035)))

(declare-fun res!668148 () Bool)

(assert (=> d!433611 (=> (not res!668148) (not e!945035))))

(declare-fun lt!513745 () tuple2!14318)

(declare-fun size!12649 (BalanceConc!10578) Int)

(assert (=> d!433611 (= res!668148 (= (size!12649 (_1!8045 lt!513745)) 1))))

(assert (=> d!433611 (= lt!513745 (lex!1098 thiss!27374 rules!4290 (print!1133 thiss!27374 (singletonSeq!1316 lt!513656))))))

(assert (=> d!433611 (not (isEmpty!9759 rules!4290))))

(assert (=> d!433611 (= (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 lt!513656) lt!513744)))

(declare-fun b!1478600 () Bool)

(declare-fun res!668149 () Bool)

(assert (=> b!1478600 (=> (not res!668149) (not e!945035))))

(declare-fun apply!4031 (BalanceConc!10578 Int) Token!5228)

(assert (=> b!1478600 (= res!668149 (= (apply!4031 (_1!8045 lt!513745) 0) lt!513656))))

(declare-fun b!1478601 () Bool)

(declare-fun isEmpty!9763 (BalanceConc!10574) Bool)

(assert (=> b!1478601 (= e!945035 (isEmpty!9763 (_2!8045 lt!513745)))))

(declare-fun b!1478602 () Bool)

(assert (=> b!1478602 (= e!945036 (isEmpty!9763 (_2!8045 (lex!1098 thiss!27374 rules!4290 (print!1133 thiss!27374 (singletonSeq!1316 lt!513656))))))))

(assert (= (and d!433611 res!668148) b!1478600))

(assert (= (and b!1478600 res!668149) b!1478601))

(assert (= (and d!433611 res!668150) b!1478602))

(declare-fun m!1724113 () Bool)

(assert (=> d!433611 m!1724113))

(declare-fun m!1724115 () Bool)

(assert (=> d!433611 m!1724115))

(declare-fun m!1724117 () Bool)

(assert (=> d!433611 m!1724117))

(declare-fun m!1724119 () Bool)

(assert (=> d!433611 m!1724119))

(assert (=> d!433611 m!1724115))

(assert (=> d!433611 m!1724117))

(assert (=> d!433611 m!1723853))

(declare-fun m!1724121 () Bool)

(assert (=> d!433611 m!1724121))

(assert (=> d!433611 m!1724115))

(declare-fun m!1724123 () Bool)

(assert (=> d!433611 m!1724123))

(declare-fun m!1724125 () Bool)

(assert (=> b!1478600 m!1724125))

(declare-fun m!1724127 () Bool)

(assert (=> b!1478601 m!1724127))

(assert (=> b!1478602 m!1724115))

(assert (=> b!1478602 m!1724115))

(assert (=> b!1478602 m!1724117))

(assert (=> b!1478602 m!1724117))

(assert (=> b!1478602 m!1724119))

(declare-fun m!1724129 () Bool)

(assert (=> b!1478602 m!1724129))

(assert (=> b!1478349 d!433611))

(declare-fun d!433617 () Bool)

(declare-fun lt!513746 () Bool)

(declare-fun e!945038 () Bool)

(assert (=> d!433617 (= lt!513746 e!945038)))

(declare-fun res!668153 () Bool)

(assert (=> d!433617 (=> (not res!668153) (not e!945038))))

(assert (=> d!433617 (= res!668153 (= (list!6210 (_1!8045 (lex!1098 thiss!27374 rules!4290 (print!1133 thiss!27374 (singletonSeq!1316 lt!513657))))) (list!6210 (singletonSeq!1316 lt!513657))))))

(declare-fun e!945037 () Bool)

(assert (=> d!433617 (= lt!513746 e!945037)))

(declare-fun res!668151 () Bool)

(assert (=> d!433617 (=> (not res!668151) (not e!945037))))

(declare-fun lt!513747 () tuple2!14318)

(assert (=> d!433617 (= res!668151 (= (size!12649 (_1!8045 lt!513747)) 1))))

(assert (=> d!433617 (= lt!513747 (lex!1098 thiss!27374 rules!4290 (print!1133 thiss!27374 (singletonSeq!1316 lt!513657))))))

(assert (=> d!433617 (not (isEmpty!9759 rules!4290))))

(assert (=> d!433617 (= (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 lt!513657) lt!513746)))

(declare-fun b!1478603 () Bool)

(declare-fun res!668152 () Bool)

(assert (=> b!1478603 (=> (not res!668152) (not e!945037))))

(assert (=> b!1478603 (= res!668152 (= (apply!4031 (_1!8045 lt!513747) 0) lt!513657))))

(declare-fun b!1478604 () Bool)

(assert (=> b!1478604 (= e!945037 (isEmpty!9763 (_2!8045 lt!513747)))))

(declare-fun b!1478605 () Bool)

(assert (=> b!1478605 (= e!945038 (isEmpty!9763 (_2!8045 (lex!1098 thiss!27374 rules!4290 (print!1133 thiss!27374 (singletonSeq!1316 lt!513657))))))))

(assert (= (and d!433617 res!668151) b!1478603))

(assert (= (and b!1478603 res!668152) b!1478604))

(assert (= (and d!433617 res!668153) b!1478605))

(declare-fun m!1724131 () Bool)

(assert (=> d!433617 m!1724131))

(declare-fun m!1724133 () Bool)

(assert (=> d!433617 m!1724133))

(declare-fun m!1724135 () Bool)

(assert (=> d!433617 m!1724135))

(declare-fun m!1724137 () Bool)

(assert (=> d!433617 m!1724137))

(assert (=> d!433617 m!1724133))

(assert (=> d!433617 m!1724135))

(assert (=> d!433617 m!1723853))

(declare-fun m!1724139 () Bool)

(assert (=> d!433617 m!1724139))

(assert (=> d!433617 m!1724133))

(declare-fun m!1724141 () Bool)

(assert (=> d!433617 m!1724141))

(declare-fun m!1724143 () Bool)

(assert (=> b!1478603 m!1724143))

(declare-fun m!1724145 () Bool)

(assert (=> b!1478604 m!1724145))

(assert (=> b!1478605 m!1724133))

(assert (=> b!1478605 m!1724133))

(assert (=> b!1478605 m!1724135))

(assert (=> b!1478605 m!1724135))

(assert (=> b!1478605 m!1724137))

(declare-fun m!1724147 () Bool)

(assert (=> b!1478605 m!1724147))

(assert (=> b!1478349 d!433617))

(declare-fun d!433619 () Bool)

(declare-fun prefixMatchZipperSequence!375 (Regex!4097 BalanceConc!10574) Bool)

(declare-fun rulesRegex!425 (LexerInterface!2439 List!15682) Regex!4097)

(declare-fun ++!4212 (BalanceConc!10574 BalanceConc!10574) BalanceConc!10574)

(declare-fun singletonSeq!1317 (C!8372) BalanceConc!10574)

(declare-fun apply!4032 (BalanceConc!10574 Int) C!8372)

(assert (=> d!433619 (= (separableTokensPredicate!578 thiss!27374 lt!513656 lt!513657 rules!4290) (not (prefixMatchZipperSequence!375 (rulesRegex!425 thiss!27374 rules!4290) (++!4212 (charsOf!1593 lt!513656) (singletonSeq!1317 (apply!4032 (charsOf!1593 lt!513657) 0))))))))

(declare-fun bs!345760 () Bool)

(assert (= bs!345760 d!433619))

(declare-fun m!1724149 () Bool)

(assert (=> bs!345760 m!1724149))

(declare-fun m!1724151 () Bool)

(assert (=> bs!345760 m!1724151))

(assert (=> bs!345760 m!1724151))

(declare-fun m!1724153 () Bool)

(assert (=> bs!345760 m!1724153))

(declare-fun m!1724155 () Bool)

(assert (=> bs!345760 m!1724155))

(declare-fun m!1724157 () Bool)

(assert (=> bs!345760 m!1724157))

(declare-fun m!1724159 () Bool)

(assert (=> bs!345760 m!1724159))

(assert (=> bs!345760 m!1724159))

(declare-fun m!1724161 () Bool)

(assert (=> bs!345760 m!1724161))

(assert (=> bs!345760 m!1724149))

(assert (=> bs!345760 m!1724161))

(assert (=> bs!345760 m!1724153))

(assert (=> bs!345760 m!1724157))

(assert (=> b!1478349 d!433619))

(declare-fun d!433621 () Bool)

(declare-fun res!668154 () Bool)

(declare-fun e!945040 () Bool)

(assert (=> d!433621 (=> res!668154 e!945040)))

(assert (=> d!433621 (= res!668154 (or (not ((_ is Cons!15615) l2!3105)) (not ((_ is Cons!15615) (t!136938 l2!3105)))))))

(assert (=> d!433621 (= (tokensListTwoByTwoPredicateSeparableList!299 thiss!27374 l2!3105 rules!4290) e!945040)))

(declare-fun b!1478606 () Bool)

(declare-fun e!945039 () Bool)

(assert (=> b!1478606 (= e!945040 e!945039)))

(declare-fun res!668155 () Bool)

(assert (=> b!1478606 (=> (not res!668155) (not e!945039))))

(assert (=> b!1478606 (= res!668155 (separableTokensPredicate!578 thiss!27374 (h!21016 l2!3105) (h!21016 (t!136938 l2!3105)) rules!4290))))

(declare-fun lt!513754 () Unit!25391)

(declare-fun Unit!25402 () Unit!25391)

(assert (=> b!1478606 (= lt!513754 Unit!25402)))

(assert (=> b!1478606 (> (size!12646 (charsOf!1593 (h!21016 (t!136938 l2!3105)))) 0)))

(declare-fun lt!513748 () Unit!25391)

(declare-fun Unit!25403 () Unit!25391)

(assert (=> b!1478606 (= lt!513748 Unit!25403)))

(assert (=> b!1478606 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 (t!136938 l2!3105)))))

(declare-fun lt!513749 () Unit!25391)

(declare-fun Unit!25404 () Unit!25391)

(assert (=> b!1478606 (= lt!513749 Unit!25404)))

(assert (=> b!1478606 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 l2!3105))))

(declare-fun lt!513751 () Unit!25391)

(declare-fun lt!513750 () Unit!25391)

(assert (=> b!1478606 (= lt!513751 lt!513750)))

(assert (=> b!1478606 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 (t!136938 l2!3105)))))

(assert (=> b!1478606 (= lt!513750 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l2!3105 (h!21016 (t!136938 l2!3105))))))

(declare-fun lt!513752 () Unit!25391)

(declare-fun lt!513753 () Unit!25391)

(assert (=> b!1478606 (= lt!513752 lt!513753)))

(assert (=> b!1478606 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 l2!3105))))

(assert (=> b!1478606 (= lt!513753 (lemmaRulesProduceEachTokenIndividuallyThenForAnyToken!477 thiss!27374 rules!4290 l2!3105 (h!21016 l2!3105)))))

(declare-fun b!1478607 () Bool)

(assert (=> b!1478607 (= e!945039 (tokensListTwoByTwoPredicateSeparableList!299 thiss!27374 (Cons!15615 (h!21016 (t!136938 l2!3105)) (t!136938 (t!136938 l2!3105))) rules!4290))))

(assert (= (and d!433621 (not res!668154)) b!1478606))

(assert (= (and b!1478606 res!668155) b!1478607))

(declare-fun m!1724163 () Bool)

(assert (=> b!1478606 m!1724163))

(declare-fun m!1724165 () Bool)

(assert (=> b!1478606 m!1724165))

(declare-fun m!1724167 () Bool)

(assert (=> b!1478606 m!1724167))

(declare-fun m!1724169 () Bool)

(assert (=> b!1478606 m!1724169))

(declare-fun m!1724171 () Bool)

(assert (=> b!1478606 m!1724171))

(declare-fun m!1724173 () Bool)

(assert (=> b!1478606 m!1724173))

(assert (=> b!1478606 m!1724169))

(declare-fun m!1724175 () Bool)

(assert (=> b!1478606 m!1724175))

(declare-fun m!1724177 () Bool)

(assert (=> b!1478607 m!1724177))

(assert (=> b!1478350 d!433621))

(declare-fun bs!345761 () Bool)

(declare-fun d!433623 () Bool)

(assert (= bs!345761 (and d!433623 d!433549)))

(declare-fun lambda!63725 () Int)

(assert (=> bs!345761 (= lambda!63725 lambda!63723)))

(declare-fun bs!345762 () Bool)

(assert (= bs!345762 (and d!433623 d!433591)))

(assert (=> bs!345762 (= lambda!63725 lambda!63724)))

(declare-fun b!1478612 () Bool)

(declare-fun e!945045 () Bool)

(assert (=> b!1478612 (= e!945045 true)))

(declare-fun b!1478611 () Bool)

(declare-fun e!945044 () Bool)

(assert (=> b!1478611 (= e!945044 e!945045)))

(declare-fun b!1478610 () Bool)

(declare-fun e!945043 () Bool)

(assert (=> b!1478610 (= e!945043 e!945044)))

(assert (=> d!433623 e!945043))

(assert (= b!1478611 b!1478612))

(assert (= b!1478610 b!1478611))

(assert (= (and d!433623 ((_ is Cons!15616) rules!4290)) b!1478610))

(assert (=> b!1478612 (< (dynLambda!7095 order!9401 (toValue!4118 (transformation!2783 (h!21017 rules!4290)))) (dynLambda!7096 order!9403 lambda!63725))))

(assert (=> b!1478612 (< (dynLambda!7097 order!9405 (toChars!3977 (transformation!2783 (h!21017 rules!4290)))) (dynLambda!7096 order!9403 lambda!63725))))

(assert (=> d!433623 true))

(declare-fun lt!513755 () Bool)

(assert (=> d!433623 (= lt!513755 (forall!3802 l2!3105 lambda!63725))))

(declare-fun e!945041 () Bool)

(assert (=> d!433623 (= lt!513755 e!945041)))

(declare-fun res!668157 () Bool)

(assert (=> d!433623 (=> res!668157 e!945041)))

(assert (=> d!433623 (= res!668157 (not ((_ is Cons!15615) l2!3105)))))

(assert (=> d!433623 (not (isEmpty!9759 rules!4290))))

(assert (=> d!433623 (= (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 l2!3105) lt!513755)))

(declare-fun b!1478608 () Bool)

(declare-fun e!945042 () Bool)

(assert (=> b!1478608 (= e!945041 e!945042)))

(declare-fun res!668156 () Bool)

(assert (=> b!1478608 (=> (not res!668156) (not e!945042))))

(assert (=> b!1478608 (= res!668156 (rulesProduceIndividualToken!1296 thiss!27374 rules!4290 (h!21016 l2!3105)))))

(declare-fun b!1478609 () Bool)

(assert (=> b!1478609 (= e!945042 (rulesProduceEachTokenIndividuallyList!806 thiss!27374 rules!4290 (t!136938 l2!3105)))))

(assert (= (and d!433623 (not res!668157)) b!1478608))

(assert (= (and b!1478608 res!668156) b!1478609))

(declare-fun m!1724179 () Bool)

(assert (=> d!433623 m!1724179))

(assert (=> d!433623 m!1723853))

(assert (=> b!1478608 m!1724171))

(declare-fun m!1724181 () Bool)

(assert (=> b!1478609 m!1724181))

(assert (=> b!1478361 d!433623))

(declare-fun d!433625 () Bool)

(assert (=> d!433625 (= (isEmpty!9758 (t!136938 l1!3136)) ((_ is Nil!15615) (t!136938 l1!3136)))))

(assert (=> b!1478362 d!433625))

(declare-fun d!433627 () Bool)

(assert (=> d!433627 (= (isEmpty!9758 l1!3136) ((_ is Nil!15615) l1!3136))))

(assert (=> b!1478351 d!433627))

(declare-fun d!433629 () Bool)

(declare-fun c!242771 () Bool)

(assert (=> d!433629 (= c!242771 ((_ is IntegerValue!8619) (value!88963 (h!21016 l2!3105))))))

(declare-fun e!945047 () Bool)

(assert (=> d!433629 (= (inv!21 (value!88963 (h!21016 l2!3105))) e!945047)))

(declare-fun b!1478613 () Bool)

(declare-fun e!945048 () Bool)

(assert (=> b!1478613 (= e!945048 (inv!15 (value!88963 (h!21016 l2!3105))))))

(declare-fun b!1478614 () Bool)

(declare-fun e!945046 () Bool)

(assert (=> b!1478614 (= e!945046 (inv!17 (value!88963 (h!21016 l2!3105))))))

(declare-fun b!1478615 () Bool)

(assert (=> b!1478615 (= e!945047 e!945046)))

(declare-fun c!242770 () Bool)

(assert (=> b!1478615 (= c!242770 ((_ is IntegerValue!8620) (value!88963 (h!21016 l2!3105))))))

(declare-fun b!1478616 () Bool)

(declare-fun res!668158 () Bool)

(assert (=> b!1478616 (=> res!668158 e!945048)))

(assert (=> b!1478616 (= res!668158 (not ((_ is IntegerValue!8621) (value!88963 (h!21016 l2!3105)))))))

(assert (=> b!1478616 (= e!945046 e!945048)))

(declare-fun b!1478617 () Bool)

(assert (=> b!1478617 (= e!945047 (inv!16 (value!88963 (h!21016 l2!3105))))))

(assert (= (and d!433629 c!242771) b!1478617))

(assert (= (and d!433629 (not c!242771)) b!1478615))

(assert (= (and b!1478615 c!242770) b!1478614))

(assert (= (and b!1478615 (not c!242770)) b!1478616))

(assert (= (and b!1478616 (not res!668158)) b!1478613))

(declare-fun m!1724183 () Bool)

(assert (=> b!1478613 m!1724183))

(declare-fun m!1724185 () Bool)

(assert (=> b!1478614 m!1724185))

(declare-fun m!1724187 () Bool)

(assert (=> b!1478617 m!1724187))

(assert (=> b!1478363 d!433629))

(declare-fun d!433631 () Bool)

(assert (=> d!433631 (= (inv!20824 (tag!3047 (rule!4560 (h!21016 l2!3105)))) (= (mod (str.len (value!88962 (tag!3047 (rule!4560 (h!21016 l2!3105))))) 2) 0))))

(assert (=> b!1478364 d!433631))

(declare-fun d!433633 () Bool)

(declare-fun res!668159 () Bool)

(declare-fun e!945049 () Bool)

(assert (=> d!433633 (=> (not res!668159) (not e!945049))))

(assert (=> d!433633 (= res!668159 (semiInverseModEq!1045 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (toValue!4118 (transformation!2783 (rule!4560 (h!21016 l2!3105))))))))

(assert (=> d!433633 (= (inv!20827 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) e!945049)))

(declare-fun b!1478618 () Bool)

(assert (=> b!1478618 (= e!945049 (equivClasses!1004 (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (toValue!4118 (transformation!2783 (rule!4560 (h!21016 l2!3105))))))))

(assert (= (and d!433633 res!668159) b!1478618))

(declare-fun m!1724189 () Bool)

(assert (=> d!433633 m!1724189))

(declare-fun m!1724191 () Bool)

(assert (=> b!1478618 m!1724191))

(assert (=> b!1478364 d!433633))

(declare-fun d!433635 () Bool)

(assert (=> d!433635 (= (isEmpty!9759 rules!4290) ((_ is Nil!15616) rules!4290))))

(assert (=> b!1478353 d!433635))

(declare-fun e!945052 () Bool)

(assert (=> b!1478355 (= tp!418797 e!945052)))

(declare-fun b!1478631 () Bool)

(declare-fun tp!418887 () Bool)

(assert (=> b!1478631 (= e!945052 tp!418887)))

(declare-fun b!1478630 () Bool)

(declare-fun tp!418888 () Bool)

(declare-fun tp!418884 () Bool)

(assert (=> b!1478630 (= e!945052 (and tp!418888 tp!418884))))

(declare-fun b!1478629 () Bool)

(declare-fun tp_is_empty!6959 () Bool)

(assert (=> b!1478629 (= e!945052 tp_is_empty!6959)))

(declare-fun b!1478632 () Bool)

(declare-fun tp!418885 () Bool)

(declare-fun tp!418886 () Bool)

(assert (=> b!1478632 (= e!945052 (and tp!418885 tp!418886))))

(assert (= (and b!1478355 ((_ is ElementMatch!4097) (regex!2783 (rule!4560 (h!21016 l1!3136))))) b!1478629))

(assert (= (and b!1478355 ((_ is Concat!6971) (regex!2783 (rule!4560 (h!21016 l1!3136))))) b!1478630))

(assert (= (and b!1478355 ((_ is Star!4097) (regex!2783 (rule!4560 (h!21016 l1!3136))))) b!1478631))

(assert (= (and b!1478355 ((_ is Union!4097) (regex!2783 (rule!4560 (h!21016 l1!3136))))) b!1478632))

(declare-fun b!1478646 () Bool)

(declare-fun b_free!37983 () Bool)

(declare-fun b_next!38687 () Bool)

(assert (=> b!1478646 (= b_free!37983 (not b_next!38687))))

(declare-fun tp!418901 () Bool)

(declare-fun b_and!102365 () Bool)

(assert (=> b!1478646 (= tp!418901 b_and!102365)))

(declare-fun b_free!37985 () Bool)

(declare-fun b_next!38689 () Bool)

(assert (=> b!1478646 (= b_free!37985 (not b_next!38689))))

(declare-fun t!136986 () Bool)

(declare-fun tb!84353 () Bool)

(assert (=> (and b!1478646 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l1!3136))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136))))) t!136986) tb!84353))

(declare-fun result!101402 () Bool)

(assert (= result!101402 result!101364))

(assert (=> b!1478488 t!136986))

(declare-fun tb!84355 () Bool)

(declare-fun t!136988 () Bool)

(assert (=> (and b!1478646 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l1!3136))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105))))) t!136988) tb!84355))

(declare-fun result!101404 () Bool)

(assert (= result!101404 result!101372))

(assert (=> b!1478516 t!136988))

(declare-fun b_and!102367 () Bool)

(declare-fun tp!418903 () Bool)

(assert (=> b!1478646 (= tp!418903 (and (=> t!136986 result!101402) (=> t!136988 result!101404) b_and!102367))))

(declare-fun e!945067 () Bool)

(declare-fun b!1478643 () Bool)

(declare-fun e!945065 () Bool)

(declare-fun tp!418902 () Bool)

(assert (=> b!1478643 (= e!945067 (and (inv!20828 (h!21016 (t!136938 l1!3136))) e!945065 tp!418902))))

(assert (=> b!1478356 (= tp!418794 e!945067)))

(declare-fun e!945069 () Bool)

(assert (=> b!1478646 (= e!945069 (and tp!418901 tp!418903))))

(declare-fun e!945068 () Bool)

(declare-fun tp!418899 () Bool)

(declare-fun b!1478644 () Bool)

(assert (=> b!1478644 (= e!945065 (and (inv!21 (value!88963 (h!21016 (t!136938 l1!3136)))) e!945068 tp!418899))))

(declare-fun tp!418900 () Bool)

(declare-fun b!1478645 () Bool)

(assert (=> b!1478645 (= e!945068 (and tp!418900 (inv!20824 (tag!3047 (rule!4560 (h!21016 (t!136938 l1!3136))))) (inv!20827 (transformation!2783 (rule!4560 (h!21016 (t!136938 l1!3136))))) e!945069))))

(assert (= b!1478645 b!1478646))

(assert (= b!1478644 b!1478645))

(assert (= b!1478643 b!1478644))

(assert (= (and b!1478356 ((_ is Cons!15615) (t!136938 l1!3136))) b!1478643))

(declare-fun m!1724193 () Bool)

(assert (=> b!1478643 m!1724193))

(declare-fun m!1724195 () Bool)

(assert (=> b!1478644 m!1724195))

(declare-fun m!1724197 () Bool)

(assert (=> b!1478645 m!1724197))

(declare-fun m!1724199 () Bool)

(assert (=> b!1478645 m!1724199))

(declare-fun b!1478651 () Bool)

(declare-fun e!945073 () Bool)

(declare-fun tp!418906 () Bool)

(assert (=> b!1478651 (= e!945073 (and tp_is_empty!6959 tp!418906))))

(assert (=> b!1478345 (= tp!418800 e!945073)))

(assert (= (and b!1478345 ((_ is Cons!15614) (originalCharacters!3645 (h!21016 l1!3136)))) b!1478651))

(declare-fun e!945074 () Bool)

(assert (=> b!1478346 (= tp!418804 e!945074)))

(declare-fun b!1478654 () Bool)

(declare-fun tp!418910 () Bool)

(assert (=> b!1478654 (= e!945074 tp!418910)))

(declare-fun b!1478653 () Bool)

(declare-fun tp!418911 () Bool)

(declare-fun tp!418907 () Bool)

(assert (=> b!1478653 (= e!945074 (and tp!418911 tp!418907))))

(declare-fun b!1478652 () Bool)

(assert (=> b!1478652 (= e!945074 tp_is_empty!6959)))

(declare-fun b!1478655 () Bool)

(declare-fun tp!418908 () Bool)

(declare-fun tp!418909 () Bool)

(assert (=> b!1478655 (= e!945074 (and tp!418908 tp!418909))))

(assert (= (and b!1478346 ((_ is ElementMatch!4097) (regex!2783 (h!21017 rules!4290)))) b!1478652))

(assert (= (and b!1478346 ((_ is Concat!6971) (regex!2783 (h!21017 rules!4290)))) b!1478653))

(assert (= (and b!1478346 ((_ is Star!4097) (regex!2783 (h!21017 rules!4290)))) b!1478654))

(assert (= (and b!1478346 ((_ is Union!4097) (regex!2783 (h!21017 rules!4290)))) b!1478655))

(declare-fun b!1478659 () Bool)

(declare-fun b_free!37987 () Bool)

(declare-fun b_next!38691 () Bool)

(assert (=> b!1478659 (= b_free!37987 (not b_next!38691))))

(declare-fun tp!418914 () Bool)

(declare-fun b_and!102369 () Bool)

(assert (=> b!1478659 (= tp!418914 b_and!102369)))

(declare-fun b_free!37989 () Bool)

(declare-fun b_next!38693 () Bool)

(assert (=> b!1478659 (= b_free!37989 (not b_next!38693))))

(declare-fun t!136990 () Bool)

(declare-fun tb!84357 () Bool)

(assert (=> (and b!1478659 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l2!3105))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136))))) t!136990) tb!84357))

(declare-fun result!101408 () Bool)

(assert (= result!101408 result!101364))

(assert (=> b!1478488 t!136990))

(declare-fun t!136992 () Bool)

(declare-fun tb!84359 () Bool)

(assert (=> (and b!1478659 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l2!3105))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105))))) t!136992) tb!84359))

(declare-fun result!101410 () Bool)

(assert (= result!101410 result!101372))

(assert (=> b!1478516 t!136992))

(declare-fun b_and!102371 () Bool)

(declare-fun tp!418916 () Bool)

(assert (=> b!1478659 (= tp!418916 (and (=> t!136990 result!101408) (=> t!136992 result!101410) b_and!102371))))

(declare-fun e!945077 () Bool)

(declare-fun e!945075 () Bool)

(declare-fun tp!418915 () Bool)

(declare-fun b!1478656 () Bool)

(assert (=> b!1478656 (= e!945077 (and (inv!20828 (h!21016 (t!136938 l2!3105))) e!945075 tp!418915))))

(assert (=> b!1478357 (= tp!418798 e!945077)))

(declare-fun e!945079 () Bool)

(assert (=> b!1478659 (= e!945079 (and tp!418914 tp!418916))))

(declare-fun tp!418912 () Bool)

(declare-fun b!1478657 () Bool)

(declare-fun e!945078 () Bool)

(assert (=> b!1478657 (= e!945075 (and (inv!21 (value!88963 (h!21016 (t!136938 l2!3105)))) e!945078 tp!418912))))

(declare-fun b!1478658 () Bool)

(declare-fun tp!418913 () Bool)

(assert (=> b!1478658 (= e!945078 (and tp!418913 (inv!20824 (tag!3047 (rule!4560 (h!21016 (t!136938 l2!3105))))) (inv!20827 (transformation!2783 (rule!4560 (h!21016 (t!136938 l2!3105))))) e!945079))))

(assert (= b!1478658 b!1478659))

(assert (= b!1478657 b!1478658))

(assert (= b!1478656 b!1478657))

(assert (= (and b!1478357 ((_ is Cons!15615) (t!136938 l2!3105))) b!1478656))

(declare-fun m!1724201 () Bool)

(assert (=> b!1478656 m!1724201))

(declare-fun m!1724203 () Bool)

(assert (=> b!1478657 m!1724203))

(declare-fun m!1724205 () Bool)

(assert (=> b!1478658 m!1724205))

(declare-fun m!1724207 () Bool)

(assert (=> b!1478658 m!1724207))

(declare-fun b!1478670 () Bool)

(declare-fun b_free!37991 () Bool)

(declare-fun b_next!38695 () Bool)

(assert (=> b!1478670 (= b_free!37991 (not b_next!38695))))

(declare-fun tp!418926 () Bool)

(declare-fun b_and!102373 () Bool)

(assert (=> b!1478670 (= tp!418926 b_and!102373)))

(declare-fun b_free!37993 () Bool)

(declare-fun b_next!38697 () Bool)

(assert (=> b!1478670 (= b_free!37993 (not b_next!38697))))

(declare-fun tb!84361 () Bool)

(declare-fun t!136994 () Bool)

(assert (=> (and b!1478670 (= (toChars!3977 (transformation!2783 (h!21017 (t!136939 rules!4290)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136))))) t!136994) tb!84361))

(declare-fun result!101414 () Bool)

(assert (= result!101414 result!101364))

(assert (=> b!1478488 t!136994))

(declare-fun t!136996 () Bool)

(declare-fun tb!84363 () Bool)

(assert (=> (and b!1478670 (= (toChars!3977 (transformation!2783 (h!21017 (t!136939 rules!4290)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105))))) t!136996) tb!84363))

(declare-fun result!101416 () Bool)

(assert (= result!101416 result!101372))

(assert (=> b!1478516 t!136996))

(declare-fun tp!418925 () Bool)

(declare-fun b_and!102375 () Bool)

(assert (=> b!1478670 (= tp!418925 (and (=> t!136994 result!101414) (=> t!136996 result!101416) b_and!102375))))

(declare-fun e!945091 () Bool)

(assert (=> b!1478670 (= e!945091 (and tp!418926 tp!418925))))

(declare-fun tp!418928 () Bool)

(declare-fun b!1478669 () Bool)

(declare-fun e!945089 () Bool)

(assert (=> b!1478669 (= e!945089 (and tp!418928 (inv!20824 (tag!3047 (h!21017 (t!136939 rules!4290)))) (inv!20827 (transformation!2783 (h!21017 (t!136939 rules!4290)))) e!945091))))

(declare-fun b!1478668 () Bool)

(declare-fun e!945092 () Bool)

(declare-fun tp!418927 () Bool)

(assert (=> b!1478668 (= e!945092 (and e!945089 tp!418927))))

(assert (=> b!1478352 (= tp!418793 e!945092)))

(assert (= b!1478669 b!1478670))

(assert (= b!1478668 b!1478669))

(assert (= (and b!1478352 ((_ is Cons!15616) (t!136939 rules!4290))) b!1478668))

(declare-fun m!1724209 () Bool)

(assert (=> b!1478669 m!1724209))

(declare-fun m!1724211 () Bool)

(assert (=> b!1478669 m!1724211))

(declare-fun b!1478671 () Bool)

(declare-fun e!945093 () Bool)

(declare-fun tp!418929 () Bool)

(assert (=> b!1478671 (= e!945093 (and tp_is_empty!6959 tp!418929))))

(assert (=> b!1478363 (= tp!418801 e!945093)))

(assert (= (and b!1478363 ((_ is Cons!15614) (originalCharacters!3645 (h!21016 l2!3105)))) b!1478671))

(declare-fun e!945094 () Bool)

(assert (=> b!1478364 (= tp!418802 e!945094)))

(declare-fun b!1478674 () Bool)

(declare-fun tp!418933 () Bool)

(assert (=> b!1478674 (= e!945094 tp!418933)))

(declare-fun b!1478673 () Bool)

(declare-fun tp!418934 () Bool)

(declare-fun tp!418930 () Bool)

(assert (=> b!1478673 (= e!945094 (and tp!418934 tp!418930))))

(declare-fun b!1478672 () Bool)

(assert (=> b!1478672 (= e!945094 tp_is_empty!6959)))

(declare-fun b!1478675 () Bool)

(declare-fun tp!418931 () Bool)

(declare-fun tp!418932 () Bool)

(assert (=> b!1478675 (= e!945094 (and tp!418931 tp!418932))))

(assert (= (and b!1478364 ((_ is ElementMatch!4097) (regex!2783 (rule!4560 (h!21016 l2!3105))))) b!1478672))

(assert (= (and b!1478364 ((_ is Concat!6971) (regex!2783 (rule!4560 (h!21016 l2!3105))))) b!1478673))

(assert (= (and b!1478364 ((_ is Star!4097) (regex!2783 (rule!4560 (h!21016 l2!3105))))) b!1478674))

(assert (= (and b!1478364 ((_ is Union!4097) (regex!2783 (rule!4560 (h!21016 l2!3105))))) b!1478675))

(declare-fun b_lambda!46287 () Bool)

(assert (= b_lambda!46281 (or (and b!1478659 b_free!37989 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l2!3105))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))))) (and b!1478358 b_free!37965 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))))) (and b!1478646 b_free!37985 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l1!3136))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))))) (and b!1478348 b_free!37969) (and b!1478354 b_free!37961 (= (toChars!3977 (transformation!2783 (h!21017 rules!4290))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))))) (and b!1478670 b_free!37993 (= (toChars!3977 (transformation!2783 (h!21017 (t!136939 rules!4290)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))))) b_lambda!46287)))

(declare-fun b_lambda!46289 () Bool)

(assert (= b_lambda!46279 (or (and b!1478659 b_free!37989 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l2!3105))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))))) (and b!1478670 b_free!37993 (= (toChars!3977 (transformation!2783 (h!21017 (t!136939 rules!4290)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))))) (and b!1478646 b_free!37985 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 (t!136938 l1!3136))))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))))) (and b!1478358 b_free!37965) (and b!1478354 b_free!37961 (= (toChars!3977 (transformation!2783 (h!21017 rules!4290))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))))) (and b!1478348 b_free!37969 (= (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l2!3105)))) (toChars!3977 (transformation!2783 (rule!4560 (h!21016 l1!3136)))))) b_lambda!46289)))

(check-sat (not b!1478644) (not b!1478488) (not b!1478651) (not d!433593) (not b!1478606) b_and!102375 (not b!1478533) (not b!1478654) b_and!102365 (not d!433623) b_and!102347 (not b!1478673) (not b!1478669) (not d!433579) (not d!433609) (not b!1478480) (not b_lambda!46289) (not b!1478518) (not b!1478610) (not b!1478607) (not b!1478675) (not d!433633) (not b!1478509) (not b!1478603) (not b!1478657) (not b!1478643) (not d!433611) (not d!433619) b_and!102369 (not b!1478613) (not d!433589) (not b!1478631) b_and!102317 (not b!1478494) b_and!102371 (not b!1478505) (not b!1478605) b_and!102373 (not b_next!38693) (not b!1478513) (not b!1478617) (not b!1478614) b_and!102321 (not b!1478618) (not b_next!38667) b_and!102325 (not b!1478604) (not b_next!38669) b_and!102349 (not b_next!38671) (not b!1478510) (not b!1478489) (not b!1478511) (not b!1478630) (not tb!84329) (not b!1478467) (not d!433549) (not d!433617) (not b!1478395) (not b!1478674) (not b_next!38697) (not b!1478655) b_and!102367 (not b!1478600) b_and!102351 (not b_next!38691) (not b!1478671) (not b!1478458) (not b!1478602) (not b!1478506) (not d!433577) (not d!433595) (not b!1478658) (not b!1478601) (not d!433607) (not b!1478632) (not d!433591) (not b_lambda!46287) (not b_next!38665) (not b!1478645) tp_is_empty!6959 (not b_next!38689) (not b_next!38673) (not b!1478521) (not b!1478608) (not b!1478653) (not b!1478668) (not d!433599) (not b!1478516) (not b!1478609) (not tb!84335) (not b!1478457) (not b!1478394) (not b!1478517) (not b_next!38663) (not b_next!38695) (not b!1478512) (not b_next!38687) (not b!1478656))
(check-sat b_and!102375 b_and!102365 b_and!102347 b_and!102369 b_and!102317 b_and!102371 b_and!102373 (not b_next!38693) b_and!102321 (not b_next!38671) (not b_next!38697) b_and!102367 (not b_next!38673) (not b_next!38663) (not b_next!38695) (not b_next!38687) (not b_next!38667) b_and!102325 (not b_next!38669) b_and!102349 b_and!102351 (not b_next!38691) (not b_next!38665) (not b_next!38689))
