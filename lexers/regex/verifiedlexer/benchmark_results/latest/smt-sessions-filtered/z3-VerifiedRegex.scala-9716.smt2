; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508124 () Bool)

(assert start!508124)

(declare-fun b!4861569 () Bool)

(declare-fun b_free!130499 () Bool)

(declare-fun b_next!131289 () Bool)

(assert (=> b!4861569 (= b_free!130499 (not b_next!131289))))

(declare-fun tp!1367869 () Bool)

(declare-fun b_and!342351 () Bool)

(assert (=> b!4861569 (= tp!1367869 b_and!342351)))

(declare-fun b_free!130501 () Bool)

(declare-fun b_next!131291 () Bool)

(assert (=> b!4861569 (= b_free!130501 (not b_next!131291))))

(declare-fun tp!1367873 () Bool)

(declare-fun b_and!342353 () Bool)

(assert (=> b!4861569 (= tp!1367873 b_and!342353)))

(declare-fun b!4861563 () Bool)

(declare-fun e!3039601 () Bool)

(declare-datatypes ((C!26372 0))(
  ( (C!26373 (val!22508 Int)) )
))
(declare-datatypes ((List!55983 0))(
  ( (Nil!55859) (Cons!55859 (h!62307 C!26372) (t!363603 List!55983)) )
))
(declare-datatypes ((IArray!29141 0))(
  ( (IArray!29142 (innerList!14628 List!55983)) )
))
(declare-datatypes ((Conc!14540 0))(
  ( (Node!14540 (left!40574 Conc!14540) (right!40904 Conc!14540) (csize!29310 Int) (cheight!14751 Int)) (Leaf!24257 (xs!17846 IArray!29141) (csize!29311 Int)) (Empty!14540) )
))
(declare-datatypes ((BalanceConc!28522 0))(
  ( (BalanceConc!28523 (c!826857 Conc!14540)) )
))
(declare-fun input!661 () BalanceConc!28522)

(declare-fun tp!1367868 () Bool)

(declare-fun inv!71738 (Conc!14540) Bool)

(assert (=> b!4861563 (= e!3039601 (and (inv!71738 (c!826857 input!661)) tp!1367868))))

(declare-fun b!4861564 () Bool)

(declare-fun e!3039607 () Bool)

(declare-fun totalInput!332 () BalanceConc!28522)

(declare-fun tp!1367870 () Bool)

(assert (=> b!4861564 (= e!3039607 (and (inv!71738 (c!826857 totalInput!332)) tp!1367870))))

(declare-datatypes ((List!55984 0))(
  ( (Nil!55860) (Cons!55860 (h!62308 (_ BitVec 16)) (t!363604 List!55984)) )
))
(declare-datatypes ((TokenValue!8322 0))(
  ( (FloatLiteralValue!16644 (text!58699 List!55984)) (TokenValueExt!8321 (__x!33937 Int)) (Broken!41610 (value!257463 List!55984)) (Object!8445) (End!8322) (Def!8322) (Underscore!8322) (Match!8322) (Else!8322) (Error!8322) (Case!8322) (If!8322) (Extends!8322) (Abstract!8322) (Class!8322) (Val!8322) (DelimiterValue!16644 (del!8382 List!55984)) (KeywordValue!8328 (value!257464 List!55984)) (CommentValue!16644 (value!257465 List!55984)) (WhitespaceValue!16644 (value!257466 List!55984)) (IndentationValue!8322 (value!257467 List!55984)) (String!63027) (Int32!8322) (Broken!41611 (value!257468 List!55984)) (Boolean!8323) (Unit!145905) (OperatorValue!8325 (op!8382 List!55984)) (IdentifierValue!16644 (value!257469 List!55984)) (IdentifierValue!16645 (value!257470 List!55984)) (WhitespaceValue!16645 (value!257471 List!55984)) (True!16644) (False!16644) (Broken!41612 (value!257472 List!55984)) (Broken!41613 (value!257473 List!55984)) (True!16645) (RightBrace!8322) (RightBracket!8322) (Colon!8322) (Null!8322) (Comma!8322) (LeftBracket!8322) (False!16645) (LeftBrace!8322) (ImaginaryLiteralValue!8322 (text!58700 List!55984)) (StringLiteralValue!24966 (value!257474 List!55984)) (EOFValue!8322 (value!257475 List!55984)) (IdentValue!8322 (value!257476 List!55984)) (DelimiterValue!16645 (value!257477 List!55984)) (DedentValue!8322 (value!257478 List!55984)) (NewLineValue!8322 (value!257479 List!55984)) (IntegerValue!24966 (value!257480 (_ BitVec 32)) (text!58701 List!55984)) (IntegerValue!24967 (value!257481 Int) (text!58702 List!55984)) (Times!8322) (Or!8322) (Equal!8322) (Minus!8322) (Broken!41614 (value!257482 List!55984)) (And!8322) (Div!8322) (LessEqual!8322) (Mod!8322) (Concat!21409) (Not!8322) (Plus!8322) (SpaceValue!8322 (value!257483 List!55984)) (IntegerValue!24968 (value!257484 Int) (text!58703 List!55984)) (StringLiteralValue!24967 (text!58704 List!55984)) (FloatLiteralValue!16645 (text!58705 List!55984)) (BytesLiteralValue!8322 (value!257485 List!55984)) (CommentValue!16645 (value!257486 List!55984)) (StringLiteralValue!24968 (value!257487 List!55984)) (ErrorTokenValue!8322 (msg!8383 List!55984)) )
))
(declare-datatypes ((TokenValueInjection!15952 0))(
  ( (TokenValueInjection!15953 (toValue!10863 Int) (toChars!10722 Int)) )
))
(declare-datatypes ((String!63028 0))(
  ( (String!63029 (value!257488 String)) )
))
(declare-datatypes ((Regex!13087 0))(
  ( (ElementMatch!13087 (c!826858 C!26372)) (Concat!21410 (regOne!26686 Regex!13087) (regTwo!26686 Regex!13087)) (EmptyExpr!13087) (Star!13087 (reg!13416 Regex!13087)) (EmptyLang!13087) (Union!13087 (regOne!26687 Regex!13087) (regTwo!26687 Regex!13087)) )
))
(declare-datatypes ((Rule!15824 0))(
  ( (Rule!15825 (regex!8012 Regex!13087) (tag!8876 String!63028) (isSeparator!8012 Bool) (transformation!8012 TokenValueInjection!15952)) )
))
(declare-datatypes ((List!55985 0))(
  ( (Nil!55861) (Cons!55861 (h!62309 Rule!15824) (t!363605 List!55985)) )
))
(declare-fun rules!1248 () List!55985)

(declare-fun e!3039604 () Bool)

(declare-fun tp!1367872 () Bool)

(declare-fun b!4861565 () Bool)

(declare-fun e!3039605 () Bool)

(declare-fun inv!71734 (String!63028) Bool)

(declare-fun inv!71739 (TokenValueInjection!15952) Bool)

(assert (=> b!4861565 (= e!3039605 (and tp!1367872 (inv!71734 (tag!8876 (h!62309 rules!1248))) (inv!71739 (transformation!8012 (h!62309 rules!1248))) e!3039604))))

(declare-fun b!4861566 () Bool)

(declare-fun e!3039603 () Bool)

(declare-datatypes ((LexerInterface!7604 0))(
  ( (LexerInterfaceExt!7601 (__x!33938 Int)) (Lexer!7602) )
))
(declare-fun thiss!11777 () LexerInterface!7604)

(declare-fun rulesValidInductive!3011 (LexerInterface!7604 List!55985) Bool)

(assert (=> b!4861566 (= e!3039603 (not (rulesValidInductive!3011 thiss!11777 rules!1248)))))

(declare-fun b!4861567 () Bool)

(declare-fun e!3039602 () Bool)

(declare-fun tp!1367871 () Bool)

(assert (=> b!4861567 (= e!3039602 (and e!3039605 tp!1367871))))

(declare-fun b!4861568 () Bool)

(declare-fun res!2075399 () Bool)

(assert (=> b!4861568 (=> (not res!2075399) (not e!3039603))))

(declare-fun isEmpty!29871 (List!55985) Bool)

(assert (=> b!4861568 (= res!2075399 (not (isEmpty!29871 rules!1248)))))

(assert (=> b!4861569 (= e!3039604 (and tp!1367869 tp!1367873))))

(declare-fun b!4861570 () Bool)

(declare-fun res!2075400 () Bool)

(assert (=> b!4861570 (=> (not res!2075400) (not e!3039603))))

(declare-fun rulesInvariant!6702 (LexerInterface!7604 List!55985) Bool)

(assert (=> b!4861570 (= res!2075400 (rulesInvariant!6702 thiss!11777 rules!1248))))

(declare-fun b!4861571 () Bool)

(declare-fun res!2075401 () Bool)

(assert (=> b!4861571 (=> (not res!2075401) (not e!3039603))))

(declare-fun isSuffix!1041 (List!55983 List!55983) Bool)

(declare-fun list!17438 (BalanceConc!28522) List!55983)

(assert (=> b!4861571 (= res!2075401 (isSuffix!1041 (list!17438 input!661) (list!17438 totalInput!332)))))

(declare-fun res!2075398 () Bool)

(assert (=> start!508124 (=> (not res!2075398) (not e!3039603))))

(get-info :version)

(assert (=> start!508124 (= res!2075398 ((_ is Lexer!7602) thiss!11777))))

(assert (=> start!508124 e!3039603))

(assert (=> start!508124 true))

(assert (=> start!508124 e!3039602))

(declare-fun inv!71740 (BalanceConc!28522) Bool)

(assert (=> start!508124 (and (inv!71740 input!661) e!3039601)))

(assert (=> start!508124 (and (inv!71740 totalInput!332) e!3039607)))

(assert (= (and start!508124 res!2075398) b!4861568))

(assert (= (and b!4861568 res!2075399) b!4861570))

(assert (= (and b!4861570 res!2075400) b!4861571))

(assert (= (and b!4861571 res!2075401) b!4861566))

(assert (= b!4861565 b!4861569))

(assert (= b!4861567 b!4861565))

(assert (= (and start!508124 ((_ is Cons!55861) rules!1248)) b!4861567))

(assert (= start!508124 b!4861563))

(assert (= start!508124 b!4861564))

(declare-fun m!5859240 () Bool)

(assert (=> b!4861571 m!5859240))

(declare-fun m!5859242 () Bool)

(assert (=> b!4861571 m!5859242))

(assert (=> b!4861571 m!5859240))

(assert (=> b!4861571 m!5859242))

(declare-fun m!5859244 () Bool)

(assert (=> b!4861571 m!5859244))

(declare-fun m!5859246 () Bool)

(assert (=> b!4861568 m!5859246))

(declare-fun m!5859248 () Bool)

(assert (=> b!4861565 m!5859248))

(declare-fun m!5859250 () Bool)

(assert (=> b!4861565 m!5859250))

(declare-fun m!5859252 () Bool)

(assert (=> b!4861570 m!5859252))

(declare-fun m!5859254 () Bool)

(assert (=> start!508124 m!5859254))

(declare-fun m!5859256 () Bool)

(assert (=> start!508124 m!5859256))

(declare-fun m!5859258 () Bool)

(assert (=> b!4861563 m!5859258))

(declare-fun m!5859260 () Bool)

(assert (=> b!4861564 m!5859260))

(declare-fun m!5859262 () Bool)

(assert (=> b!4861566 m!5859262))

(check-sat (not b!4861564) (not b_next!131289) (not b!4861568) b_and!342353 (not b!4861565) (not b!4861571) (not b!4861566) (not start!508124) b_and!342351 (not b!4861563) (not b!4861567) (not b_next!131291) (not b!4861570))
(check-sat b_and!342353 b_and!342351 (not b_next!131289) (not b_next!131291))
(get-model)

(declare-fun d!1560367 () Bool)

(declare-fun isBalanced!3943 (Conc!14540) Bool)

(assert (=> d!1560367 (= (inv!71740 input!661) (isBalanced!3943 (c!826857 input!661)))))

(declare-fun bs!1173967 () Bool)

(assert (= bs!1173967 d!1560367))

(declare-fun m!5859264 () Bool)

(assert (=> bs!1173967 m!5859264))

(assert (=> start!508124 d!1560367))

(declare-fun d!1560371 () Bool)

(assert (=> d!1560371 (= (inv!71740 totalInput!332) (isBalanced!3943 (c!826857 totalInput!332)))))

(declare-fun bs!1173968 () Bool)

(assert (= bs!1173968 d!1560371))

(declare-fun m!5859266 () Bool)

(assert (=> bs!1173968 m!5859266))

(assert (=> start!508124 d!1560371))

(declare-fun d!1560373 () Bool)

(assert (=> d!1560373 (= (isEmpty!29871 rules!1248) ((_ is Nil!55861) rules!1248))))

(assert (=> b!4861568 d!1560373))

(declare-fun d!1560375 () Bool)

(declare-fun c!826861 () Bool)

(assert (=> d!1560375 (= c!826861 ((_ is Node!14540) (c!826857 input!661)))))

(declare-fun e!3039612 () Bool)

(assert (=> d!1560375 (= (inv!71738 (c!826857 input!661)) e!3039612)))

(declare-fun b!4861578 () Bool)

(declare-fun inv!71741 (Conc!14540) Bool)

(assert (=> b!4861578 (= e!3039612 (inv!71741 (c!826857 input!661)))))

(declare-fun b!4861579 () Bool)

(declare-fun e!3039613 () Bool)

(assert (=> b!4861579 (= e!3039612 e!3039613)))

(declare-fun res!2075404 () Bool)

(assert (=> b!4861579 (= res!2075404 (not ((_ is Leaf!24257) (c!826857 input!661))))))

(assert (=> b!4861579 (=> res!2075404 e!3039613)))

(declare-fun b!4861580 () Bool)

(declare-fun inv!71742 (Conc!14540) Bool)

(assert (=> b!4861580 (= e!3039613 (inv!71742 (c!826857 input!661)))))

(assert (= (and d!1560375 c!826861) b!4861578))

(assert (= (and d!1560375 (not c!826861)) b!4861579))

(assert (= (and b!4861579 (not res!2075404)) b!4861580))

(declare-fun m!5859268 () Bool)

(assert (=> b!4861578 m!5859268))

(declare-fun m!5859270 () Bool)

(assert (=> b!4861580 m!5859270))

(assert (=> b!4861563 d!1560375))

(declare-fun d!1560377 () Bool)

(declare-fun res!2075409 () Bool)

(declare-fun e!3039620 () Bool)

(assert (=> d!1560377 (=> (not res!2075409) (not e!3039620))))

(declare-fun rulesValid!3113 (LexerInterface!7604 List!55985) Bool)

(assert (=> d!1560377 (= res!2075409 (rulesValid!3113 thiss!11777 rules!1248))))

(assert (=> d!1560377 (= (rulesInvariant!6702 thiss!11777 rules!1248) e!3039620)))

(declare-fun b!4861589 () Bool)

(declare-datatypes ((List!55986 0))(
  ( (Nil!55862) (Cons!55862 (h!62310 String!63028) (t!363606 List!55986)) )
))
(declare-fun noDuplicateTag!3274 (LexerInterface!7604 List!55985 List!55986) Bool)

(assert (=> b!4861589 (= e!3039620 (noDuplicateTag!3274 thiss!11777 rules!1248 Nil!55862))))

(assert (= (and d!1560377 res!2075409) b!4861589))

(declare-fun m!5859272 () Bool)

(assert (=> d!1560377 m!5859272))

(declare-fun m!5859274 () Bool)

(assert (=> b!4861589 m!5859274))

(assert (=> b!4861570 d!1560377))

(declare-fun d!1560379 () Bool)

(assert (=> d!1560379 (= (inv!71734 (tag!8876 (h!62309 rules!1248))) (= (mod (str.len (value!257488 (tag!8876 (h!62309 rules!1248)))) 2) 0))))

(assert (=> b!4861565 d!1560379))

(declare-fun d!1560381 () Bool)

(declare-fun res!2075413 () Bool)

(declare-fun e!3039625 () Bool)

(assert (=> d!1560381 (=> (not res!2075413) (not e!3039625))))

(declare-fun semiInverseModEq!3537 (Int Int) Bool)

(assert (=> d!1560381 (= res!2075413 (semiInverseModEq!3537 (toChars!10722 (transformation!8012 (h!62309 rules!1248))) (toValue!10863 (transformation!8012 (h!62309 rules!1248)))))))

(assert (=> d!1560381 (= (inv!71739 (transformation!8012 (h!62309 rules!1248))) e!3039625)))

(declare-fun b!4861595 () Bool)

(declare-fun equivClasses!3416 (Int Int) Bool)

(assert (=> b!4861595 (= e!3039625 (equivClasses!3416 (toChars!10722 (transformation!8012 (h!62309 rules!1248))) (toValue!10863 (transformation!8012 (h!62309 rules!1248)))))))

(assert (= (and d!1560381 res!2075413) b!4861595))

(declare-fun m!5859280 () Bool)

(assert (=> d!1560381 m!5859280))

(declare-fun m!5859282 () Bool)

(assert (=> b!4861595 m!5859282))

(assert (=> b!4861565 d!1560381))

(declare-fun d!1560385 () Bool)

(declare-fun c!826865 () Bool)

(assert (=> d!1560385 (= c!826865 ((_ is Node!14540) (c!826857 totalInput!332)))))

(declare-fun e!3039626 () Bool)

(assert (=> d!1560385 (= (inv!71738 (c!826857 totalInput!332)) e!3039626)))

(declare-fun b!4861596 () Bool)

(assert (=> b!4861596 (= e!3039626 (inv!71741 (c!826857 totalInput!332)))))

(declare-fun b!4861597 () Bool)

(declare-fun e!3039627 () Bool)

(assert (=> b!4861597 (= e!3039626 e!3039627)))

(declare-fun res!2075414 () Bool)

(assert (=> b!4861597 (= res!2075414 (not ((_ is Leaf!24257) (c!826857 totalInput!332))))))

(assert (=> b!4861597 (=> res!2075414 e!3039627)))

(declare-fun b!4861598 () Bool)

(assert (=> b!4861598 (= e!3039627 (inv!71742 (c!826857 totalInput!332)))))

(assert (= (and d!1560385 c!826865) b!4861596))

(assert (= (and d!1560385 (not c!826865)) b!4861597))

(assert (= (and b!4861597 (not res!2075414)) b!4861598))

(declare-fun m!5859284 () Bool)

(assert (=> b!4861596 m!5859284))

(declare-fun m!5859286 () Bool)

(assert (=> b!4861598 m!5859286))

(assert (=> b!4861564 d!1560385))

(declare-fun d!1560387 () Bool)

(assert (=> d!1560387 true))

(declare-fun lt!1992537 () Bool)

(declare-fun lambda!243286 () Int)

(declare-fun forall!13041 (List!55985 Int) Bool)

(assert (=> d!1560387 (= lt!1992537 (forall!13041 rules!1248 lambda!243286))))

(declare-fun e!3039637 () Bool)

(assert (=> d!1560387 (= lt!1992537 e!3039637)))

(declare-fun res!2075424 () Bool)

(assert (=> d!1560387 (=> res!2075424 e!3039637)))

(assert (=> d!1560387 (= res!2075424 (not ((_ is Cons!55861) rules!1248)))))

(assert (=> d!1560387 (= (rulesValidInductive!3011 thiss!11777 rules!1248) lt!1992537)))

(declare-fun b!4861607 () Bool)

(declare-fun e!3039636 () Bool)

(assert (=> b!4861607 (= e!3039637 e!3039636)))

(declare-fun res!2075423 () Bool)

(assert (=> b!4861607 (=> (not res!2075423) (not e!3039636))))

(declare-fun ruleValid!3623 (LexerInterface!7604 Rule!15824) Bool)

(assert (=> b!4861607 (= res!2075423 (ruleValid!3623 thiss!11777 (h!62309 rules!1248)))))

(declare-fun b!4861608 () Bool)

(assert (=> b!4861608 (= e!3039636 (rulesValidInductive!3011 thiss!11777 (t!363605 rules!1248)))))

(assert (= (and d!1560387 (not res!2075424)) b!4861607))

(assert (= (and b!4861607 res!2075423) b!4861608))

(declare-fun m!5859288 () Bool)

(assert (=> d!1560387 m!5859288))

(declare-fun m!5859290 () Bool)

(assert (=> b!4861607 m!5859290))

(declare-fun m!5859292 () Bool)

(assert (=> b!4861608 m!5859292))

(assert (=> b!4861566 d!1560387))

(declare-fun d!1560389 () Bool)

(declare-fun e!3039640 () Bool)

(assert (=> d!1560389 e!3039640))

(declare-fun res!2075427 () Bool)

(assert (=> d!1560389 (=> res!2075427 e!3039640)))

(declare-fun lt!1992540 () Bool)

(assert (=> d!1560389 (= res!2075427 (not lt!1992540))))

(declare-fun drop!2193 (List!55983 Int) List!55983)

(declare-fun size!36801 (List!55983) Int)

(assert (=> d!1560389 (= lt!1992540 (= (list!17438 input!661) (drop!2193 (list!17438 totalInput!332) (- (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661))))))))

(assert (=> d!1560389 (= (isSuffix!1041 (list!17438 input!661) (list!17438 totalInput!332)) lt!1992540)))

(declare-fun b!4861613 () Bool)

(assert (=> b!4861613 (= e!3039640 (>= (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661))))))

(assert (= (and d!1560389 (not res!2075427)) b!4861613))

(assert (=> d!1560389 m!5859242))

(declare-fun m!5859294 () Bool)

(assert (=> d!1560389 m!5859294))

(assert (=> d!1560389 m!5859240))

(declare-fun m!5859296 () Bool)

(assert (=> d!1560389 m!5859296))

(assert (=> d!1560389 m!5859242))

(declare-fun m!5859298 () Bool)

(assert (=> d!1560389 m!5859298))

(assert (=> b!4861613 m!5859242))

(assert (=> b!4861613 m!5859294))

(assert (=> b!4861613 m!5859240))

(assert (=> b!4861613 m!5859296))

(assert (=> b!4861571 d!1560389))

(declare-fun d!1560391 () Bool)

(declare-fun list!17439 (Conc!14540) List!55983)

(assert (=> d!1560391 (= (list!17438 input!661) (list!17439 (c!826857 input!661)))))

(declare-fun bs!1173969 () Bool)

(assert (= bs!1173969 d!1560391))

(declare-fun m!5859300 () Bool)

(assert (=> bs!1173969 m!5859300))

(assert (=> b!4861571 d!1560391))

(declare-fun d!1560393 () Bool)

(assert (=> d!1560393 (= (list!17438 totalInput!332) (list!17439 (c!826857 totalInput!332)))))

(declare-fun bs!1173970 () Bool)

(assert (= bs!1173970 d!1560393))

(declare-fun m!5859302 () Bool)

(assert (=> bs!1173970 m!5859302))

(assert (=> b!4861571 d!1560393))

(declare-fun b!4861624 () Bool)

(declare-fun b_free!130503 () Bool)

(declare-fun b_next!131293 () Bool)

(assert (=> b!4861624 (= b_free!130503 (not b_next!131293))))

(declare-fun tp!1367885 () Bool)

(declare-fun b_and!342355 () Bool)

(assert (=> b!4861624 (= tp!1367885 b_and!342355)))

(declare-fun b_free!130505 () Bool)

(declare-fun b_next!131295 () Bool)

(assert (=> b!4861624 (= b_free!130505 (not b_next!131295))))

(declare-fun tp!1367884 () Bool)

(declare-fun b_and!342357 () Bool)

(assert (=> b!4861624 (= tp!1367884 b_and!342357)))

(declare-fun e!3039649 () Bool)

(assert (=> b!4861624 (= e!3039649 (and tp!1367885 tp!1367884))))

(declare-fun tp!1367883 () Bool)

(declare-fun e!3039651 () Bool)

(declare-fun b!4861623 () Bool)

(assert (=> b!4861623 (= e!3039651 (and tp!1367883 (inv!71734 (tag!8876 (h!62309 (t!363605 rules!1248)))) (inv!71739 (transformation!8012 (h!62309 (t!363605 rules!1248)))) e!3039649))))

(declare-fun b!4861622 () Bool)

(declare-fun e!3039652 () Bool)

(declare-fun tp!1367882 () Bool)

(assert (=> b!4861622 (= e!3039652 (and e!3039651 tp!1367882))))

(assert (=> b!4861567 (= tp!1367871 e!3039652)))

(assert (= b!4861623 b!4861624))

(assert (= b!4861622 b!4861623))

(assert (= (and b!4861567 ((_ is Cons!55861) (t!363605 rules!1248))) b!4861622))

(declare-fun m!5859304 () Bool)

(assert (=> b!4861623 m!5859304))

(declare-fun m!5859306 () Bool)

(assert (=> b!4861623 m!5859306))

(declare-fun tp!1367893 () Bool)

(declare-fun b!4861633 () Bool)

(declare-fun tp!1367894 () Bool)

(declare-fun e!3039658 () Bool)

(assert (=> b!4861633 (= e!3039658 (and (inv!71738 (left!40574 (c!826857 input!661))) tp!1367893 (inv!71738 (right!40904 (c!826857 input!661))) tp!1367894))))

(declare-fun b!4861635 () Bool)

(declare-fun e!3039657 () Bool)

(declare-fun tp!1367892 () Bool)

(assert (=> b!4861635 (= e!3039657 tp!1367892)))

(declare-fun b!4861634 () Bool)

(declare-fun inv!71743 (IArray!29141) Bool)

(assert (=> b!4861634 (= e!3039658 (and (inv!71743 (xs!17846 (c!826857 input!661))) e!3039657))))

(assert (=> b!4861563 (= tp!1367868 (and (inv!71738 (c!826857 input!661)) e!3039658))))

(assert (= (and b!4861563 ((_ is Node!14540) (c!826857 input!661))) b!4861633))

(assert (= b!4861634 b!4861635))

(assert (= (and b!4861563 ((_ is Leaf!24257) (c!826857 input!661))) b!4861634))

(declare-fun m!5859308 () Bool)

(assert (=> b!4861633 m!5859308))

(declare-fun m!5859310 () Bool)

(assert (=> b!4861633 m!5859310))

(declare-fun m!5859312 () Bool)

(assert (=> b!4861634 m!5859312))

(assert (=> b!4861563 m!5859258))

(declare-fun b!4861647 () Bool)

(declare-fun e!3039661 () Bool)

(declare-fun tp!1367907 () Bool)

(declare-fun tp!1367905 () Bool)

(assert (=> b!4861647 (= e!3039661 (and tp!1367907 tp!1367905))))

(declare-fun b!4861648 () Bool)

(declare-fun tp!1367906 () Bool)

(assert (=> b!4861648 (= e!3039661 tp!1367906)))

(assert (=> b!4861565 (= tp!1367872 e!3039661)))

(declare-fun b!4861649 () Bool)

(declare-fun tp!1367909 () Bool)

(declare-fun tp!1367908 () Bool)

(assert (=> b!4861649 (= e!3039661 (and tp!1367909 tp!1367908))))

(declare-fun b!4861646 () Bool)

(declare-fun tp_is_empty!35645 () Bool)

(assert (=> b!4861646 (= e!3039661 tp_is_empty!35645)))

(assert (= (and b!4861565 ((_ is ElementMatch!13087) (regex!8012 (h!62309 rules!1248)))) b!4861646))

(assert (= (and b!4861565 ((_ is Concat!21410) (regex!8012 (h!62309 rules!1248)))) b!4861647))

(assert (= (and b!4861565 ((_ is Star!13087) (regex!8012 (h!62309 rules!1248)))) b!4861648))

(assert (= (and b!4861565 ((_ is Union!13087) (regex!8012 (h!62309 rules!1248)))) b!4861649))

(declare-fun tp!1367912 () Bool)

(declare-fun e!3039663 () Bool)

(declare-fun b!4861650 () Bool)

(declare-fun tp!1367911 () Bool)

(assert (=> b!4861650 (= e!3039663 (and (inv!71738 (left!40574 (c!826857 totalInput!332))) tp!1367911 (inv!71738 (right!40904 (c!826857 totalInput!332))) tp!1367912))))

(declare-fun b!4861652 () Bool)

(declare-fun e!3039662 () Bool)

(declare-fun tp!1367910 () Bool)

(assert (=> b!4861652 (= e!3039662 tp!1367910)))

(declare-fun b!4861651 () Bool)

(assert (=> b!4861651 (= e!3039663 (and (inv!71743 (xs!17846 (c!826857 totalInput!332))) e!3039662))))

(assert (=> b!4861564 (= tp!1367870 (and (inv!71738 (c!826857 totalInput!332)) e!3039663))))

(assert (= (and b!4861564 ((_ is Node!14540) (c!826857 totalInput!332))) b!4861650))

(assert (= b!4861651 b!4861652))

(assert (= (and b!4861564 ((_ is Leaf!24257) (c!826857 totalInput!332))) b!4861651))

(declare-fun m!5859314 () Bool)

(assert (=> b!4861650 m!5859314))

(declare-fun m!5859316 () Bool)

(assert (=> b!4861650 m!5859316))

(declare-fun m!5859318 () Bool)

(assert (=> b!4861651 m!5859318))

(assert (=> b!4861564 m!5859260))

(check-sat (not b!4861589) (not b!4861608) (not b!4861563) (not b!4861652) (not b!4861651) (not b_next!131289) (not d!1560393) (not b!4861647) (not b!4861650) (not d!1560381) (not b!4861598) (not b!4861634) (not b_next!131291) (not b!4861578) (not b!4861564) b_and!342355 (not b!4861649) (not d!1560391) (not b!4861580) (not b!4861595) b_and!342353 (not b_next!131293) (not b_next!131295) (not d!1560371) (not b!4861622) (not d!1560389) (not b!4861613) (not d!1560387) (not d!1560367) b_and!342357 (not b!4861633) (not b!4861623) (not b!4861635) (not b!4861596) tp_is_empty!35645 (not b!4861607) b_and!342351 (not d!1560377) (not b!4861648))
(check-sat b_and!342355 (not b_next!131289) (not b_next!131295) b_and!342357 (not b_next!131291) b_and!342351 b_and!342353 (not b_next!131293))
(get-model)

(declare-fun d!1560415 () Bool)

(declare-fun res!2075446 () Bool)

(declare-fun e!3039702 () Bool)

(assert (=> d!1560415 (=> (not res!2075446) (not e!3039702))))

(declare-fun validRegex!5862 (Regex!13087) Bool)

(assert (=> d!1560415 (= res!2075446 (validRegex!5862 (regex!8012 (h!62309 rules!1248))))))

(assert (=> d!1560415 (= (ruleValid!3623 thiss!11777 (h!62309 rules!1248)) e!3039702)))

(declare-fun b!4861712 () Bool)

(declare-fun res!2075447 () Bool)

(assert (=> b!4861712 (=> (not res!2075447) (not e!3039702))))

(declare-fun nullable!4535 (Regex!13087) Bool)

(assert (=> b!4861712 (= res!2075447 (not (nullable!4535 (regex!8012 (h!62309 rules!1248)))))))

(declare-fun b!4861713 () Bool)

(assert (=> b!4861713 (= e!3039702 (not (= (tag!8876 (h!62309 rules!1248)) (String!63029 ""))))))

(assert (= (and d!1560415 res!2075446) b!4861712))

(assert (= (and b!4861712 res!2075447) b!4861713))

(declare-fun m!5859368 () Bool)

(assert (=> d!1560415 m!5859368))

(declare-fun m!5859370 () Bool)

(assert (=> b!4861712 m!5859370))

(assert (=> b!4861607 d!1560415))

(declare-fun b!4861723 () Bool)

(declare-fun e!3039707 () List!55983)

(declare-fun e!3039708 () List!55983)

(assert (=> b!4861723 (= e!3039707 e!3039708)))

(declare-fun c!826872 () Bool)

(assert (=> b!4861723 (= c!826872 ((_ is Leaf!24257) (c!826857 input!661)))))

(declare-fun d!1560417 () Bool)

(declare-fun c!826871 () Bool)

(assert (=> d!1560417 (= c!826871 ((_ is Empty!14540) (c!826857 input!661)))))

(assert (=> d!1560417 (= (list!17439 (c!826857 input!661)) e!3039707)))

(declare-fun b!4861725 () Bool)

(declare-fun ++!12164 (List!55983 List!55983) List!55983)

(assert (=> b!4861725 (= e!3039708 (++!12164 (list!17439 (left!40574 (c!826857 input!661))) (list!17439 (right!40904 (c!826857 input!661)))))))

(declare-fun b!4861722 () Bool)

(assert (=> b!4861722 (= e!3039707 Nil!55859)))

(declare-fun b!4861724 () Bool)

(declare-fun list!17441 (IArray!29141) List!55983)

(assert (=> b!4861724 (= e!3039708 (list!17441 (xs!17846 (c!826857 input!661))))))

(assert (= (and d!1560417 c!826871) b!4861722))

(assert (= (and d!1560417 (not c!826871)) b!4861723))

(assert (= (and b!4861723 c!826872) b!4861724))

(assert (= (and b!4861723 (not c!826872)) b!4861725))

(declare-fun m!5859372 () Bool)

(assert (=> b!4861725 m!5859372))

(declare-fun m!5859374 () Bool)

(assert (=> b!4861725 m!5859374))

(assert (=> b!4861725 m!5859372))

(assert (=> b!4861725 m!5859374))

(declare-fun m!5859376 () Bool)

(assert (=> b!4861725 m!5859376))

(declare-fun m!5859378 () Bool)

(assert (=> b!4861724 m!5859378))

(assert (=> d!1560391 d!1560417))

(declare-fun bs!1173975 () Bool)

(declare-fun d!1560419 () Bool)

(assert (= bs!1173975 (and d!1560419 d!1560387)))

(declare-fun lambda!243292 () Int)

(assert (=> bs!1173975 (= lambda!243292 lambda!243286)))

(assert (=> d!1560419 true))

(declare-fun lt!1992547 () Bool)

(assert (=> d!1560419 (= lt!1992547 (rulesValidInductive!3011 thiss!11777 rules!1248))))

(assert (=> d!1560419 (= lt!1992547 (forall!13041 rules!1248 lambda!243292))))

(assert (=> d!1560419 (= (rulesValid!3113 thiss!11777 rules!1248) lt!1992547)))

(declare-fun bs!1173976 () Bool)

(assert (= bs!1173976 d!1560419))

(assert (=> bs!1173976 m!5859262))

(declare-fun m!5859380 () Bool)

(assert (=> bs!1173976 m!5859380))

(assert (=> d!1560377 d!1560419))

(declare-fun bs!1173977 () Bool)

(declare-fun d!1560421 () Bool)

(assert (= bs!1173977 (and d!1560421 d!1560387)))

(declare-fun lambda!243293 () Int)

(assert (=> bs!1173977 (= lambda!243293 lambda!243286)))

(declare-fun bs!1173978 () Bool)

(assert (= bs!1173978 (and d!1560421 d!1560419)))

(assert (=> bs!1173978 (= lambda!243293 lambda!243292)))

(assert (=> d!1560421 true))

(declare-fun lt!1992548 () Bool)

(assert (=> d!1560421 (= lt!1992548 (forall!13041 (t!363605 rules!1248) lambda!243293))))

(declare-fun e!3039710 () Bool)

(assert (=> d!1560421 (= lt!1992548 e!3039710)))

(declare-fun res!2075449 () Bool)

(assert (=> d!1560421 (=> res!2075449 e!3039710)))

(assert (=> d!1560421 (= res!2075449 (not ((_ is Cons!55861) (t!363605 rules!1248))))))

(assert (=> d!1560421 (= (rulesValidInductive!3011 thiss!11777 (t!363605 rules!1248)) lt!1992548)))

(declare-fun b!4861726 () Bool)

(declare-fun e!3039709 () Bool)

(assert (=> b!4861726 (= e!3039710 e!3039709)))

(declare-fun res!2075448 () Bool)

(assert (=> b!4861726 (=> (not res!2075448) (not e!3039709))))

(assert (=> b!4861726 (= res!2075448 (ruleValid!3623 thiss!11777 (h!62309 (t!363605 rules!1248))))))

(declare-fun b!4861727 () Bool)

(assert (=> b!4861727 (= e!3039709 (rulesValidInductive!3011 thiss!11777 (t!363605 (t!363605 rules!1248))))))

(assert (= (and d!1560421 (not res!2075449)) b!4861726))

(assert (= (and b!4861726 res!2075448) b!4861727))

(declare-fun m!5859382 () Bool)

(assert (=> d!1560421 m!5859382))

(declare-fun m!5859384 () Bool)

(assert (=> b!4861726 m!5859384))

(declare-fun m!5859386 () Bool)

(assert (=> b!4861727 m!5859386))

(assert (=> b!4861608 d!1560421))

(declare-fun d!1560423 () Bool)

(declare-fun res!2075456 () Bool)

(declare-fun e!3039713 () Bool)

(assert (=> d!1560423 (=> (not res!2075456) (not e!3039713))))

(declare-fun size!36803 (Conc!14540) Int)

(assert (=> d!1560423 (= res!2075456 (= (csize!29310 (c!826857 totalInput!332)) (+ (size!36803 (left!40574 (c!826857 totalInput!332))) (size!36803 (right!40904 (c!826857 totalInput!332))))))))

(assert (=> d!1560423 (= (inv!71741 (c!826857 totalInput!332)) e!3039713)))

(declare-fun b!4861734 () Bool)

(declare-fun res!2075457 () Bool)

(assert (=> b!4861734 (=> (not res!2075457) (not e!3039713))))

(assert (=> b!4861734 (= res!2075457 (and (not (= (left!40574 (c!826857 totalInput!332)) Empty!14540)) (not (= (right!40904 (c!826857 totalInput!332)) Empty!14540))))))

(declare-fun b!4861735 () Bool)

(declare-fun res!2075458 () Bool)

(assert (=> b!4861735 (=> (not res!2075458) (not e!3039713))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1916 (Conc!14540) Int)

(assert (=> b!4861735 (= res!2075458 (= (cheight!14751 (c!826857 totalInput!332)) (+ (max!0 (height!1916 (left!40574 (c!826857 totalInput!332))) (height!1916 (right!40904 (c!826857 totalInput!332)))) 1)))))

(declare-fun b!4861736 () Bool)

(assert (=> b!4861736 (= e!3039713 (<= 0 (cheight!14751 (c!826857 totalInput!332))))))

(assert (= (and d!1560423 res!2075456) b!4861734))

(assert (= (and b!4861734 res!2075457) b!4861735))

(assert (= (and b!4861735 res!2075458) b!4861736))

(declare-fun m!5859388 () Bool)

(assert (=> d!1560423 m!5859388))

(declare-fun m!5859390 () Bool)

(assert (=> d!1560423 m!5859390))

(declare-fun m!5859392 () Bool)

(assert (=> b!4861735 m!5859392))

(declare-fun m!5859394 () Bool)

(assert (=> b!4861735 m!5859394))

(assert (=> b!4861735 m!5859392))

(assert (=> b!4861735 m!5859394))

(declare-fun m!5859396 () Bool)

(assert (=> b!4861735 m!5859396))

(assert (=> b!4861596 d!1560423))

(declare-fun b!4861750 () Bool)

(declare-fun e!3039718 () Bool)

(declare-fun isEmpty!29872 (Conc!14540) Bool)

(assert (=> b!4861750 (= e!3039718 (not (isEmpty!29872 (right!40904 (c!826857 input!661)))))))

(declare-fun b!4861751 () Bool)

(declare-fun res!2075475 () Bool)

(assert (=> b!4861751 (=> (not res!2075475) (not e!3039718))))

(assert (=> b!4861751 (= res!2075475 (not (isEmpty!29872 (left!40574 (c!826857 input!661)))))))

(declare-fun b!4861752 () Bool)

(declare-fun res!2075474 () Bool)

(assert (=> b!4861752 (=> (not res!2075474) (not e!3039718))))

(assert (=> b!4861752 (= res!2075474 (<= (- (height!1916 (left!40574 (c!826857 input!661))) (height!1916 (right!40904 (c!826857 input!661)))) 1))))

(declare-fun b!4861753 () Bool)

(declare-fun e!3039719 () Bool)

(assert (=> b!4861753 (= e!3039719 e!3039718)))

(declare-fun res!2075472 () Bool)

(assert (=> b!4861753 (=> (not res!2075472) (not e!3039718))))

(assert (=> b!4861753 (= res!2075472 (<= (- 1) (- (height!1916 (left!40574 (c!826857 input!661))) (height!1916 (right!40904 (c!826857 input!661))))))))

(declare-fun b!4861754 () Bool)

(declare-fun res!2075473 () Bool)

(assert (=> b!4861754 (=> (not res!2075473) (not e!3039718))))

(assert (=> b!4861754 (= res!2075473 (isBalanced!3943 (left!40574 (c!826857 input!661))))))

(declare-fun d!1560425 () Bool)

(declare-fun res!2075471 () Bool)

(assert (=> d!1560425 (=> res!2075471 e!3039719)))

(assert (=> d!1560425 (= res!2075471 (not ((_ is Node!14540) (c!826857 input!661))))))

(assert (=> d!1560425 (= (isBalanced!3943 (c!826857 input!661)) e!3039719)))

(declare-fun b!4861749 () Bool)

(declare-fun res!2075476 () Bool)

(assert (=> b!4861749 (=> (not res!2075476) (not e!3039718))))

(assert (=> b!4861749 (= res!2075476 (isBalanced!3943 (right!40904 (c!826857 input!661))))))

(assert (= (and d!1560425 (not res!2075471)) b!4861753))

(assert (= (and b!4861753 res!2075472) b!4861752))

(assert (= (and b!4861752 res!2075474) b!4861754))

(assert (= (and b!4861754 res!2075473) b!4861749))

(assert (= (and b!4861749 res!2075476) b!4861751))

(assert (= (and b!4861751 res!2075475) b!4861750))

(declare-fun m!5859398 () Bool)

(assert (=> b!4861753 m!5859398))

(declare-fun m!5859400 () Bool)

(assert (=> b!4861753 m!5859400))

(declare-fun m!5859402 () Bool)

(assert (=> b!4861750 m!5859402))

(assert (=> b!4861752 m!5859398))

(assert (=> b!4861752 m!5859400))

(declare-fun m!5859404 () Bool)

(assert (=> b!4861751 m!5859404))

(declare-fun m!5859406 () Bool)

(assert (=> b!4861754 m!5859406))

(declare-fun m!5859408 () Bool)

(assert (=> b!4861749 m!5859408))

(assert (=> d!1560367 d!1560425))

(declare-fun d!1560427 () Bool)

(declare-fun res!2075477 () Bool)

(declare-fun e!3039720 () Bool)

(assert (=> d!1560427 (=> (not res!2075477) (not e!3039720))))

(assert (=> d!1560427 (= res!2075477 (= (csize!29310 (c!826857 input!661)) (+ (size!36803 (left!40574 (c!826857 input!661))) (size!36803 (right!40904 (c!826857 input!661))))))))

(assert (=> d!1560427 (= (inv!71741 (c!826857 input!661)) e!3039720)))

(declare-fun b!4861755 () Bool)

(declare-fun res!2075478 () Bool)

(assert (=> b!4861755 (=> (not res!2075478) (not e!3039720))))

(assert (=> b!4861755 (= res!2075478 (and (not (= (left!40574 (c!826857 input!661)) Empty!14540)) (not (= (right!40904 (c!826857 input!661)) Empty!14540))))))

(declare-fun b!4861756 () Bool)

(declare-fun res!2075479 () Bool)

(assert (=> b!4861756 (=> (not res!2075479) (not e!3039720))))

(assert (=> b!4861756 (= res!2075479 (= (cheight!14751 (c!826857 input!661)) (+ (max!0 (height!1916 (left!40574 (c!826857 input!661))) (height!1916 (right!40904 (c!826857 input!661)))) 1)))))

(declare-fun b!4861757 () Bool)

(assert (=> b!4861757 (= e!3039720 (<= 0 (cheight!14751 (c!826857 input!661))))))

(assert (= (and d!1560427 res!2075477) b!4861755))

(assert (= (and b!4861755 res!2075478) b!4861756))

(assert (= (and b!4861756 res!2075479) b!4861757))

(declare-fun m!5859410 () Bool)

(assert (=> d!1560427 m!5859410))

(declare-fun m!5859412 () Bool)

(assert (=> d!1560427 m!5859412))

(assert (=> b!4861756 m!5859398))

(assert (=> b!4861756 m!5859400))

(assert (=> b!4861756 m!5859398))

(assert (=> b!4861756 m!5859400))

(declare-fun m!5859414 () Bool)

(assert (=> b!4861756 m!5859414))

(assert (=> b!4861578 d!1560427))

(declare-fun d!1560429 () Bool)

(declare-fun res!2075484 () Bool)

(declare-fun e!3039723 () Bool)

(assert (=> d!1560429 (=> (not res!2075484) (not e!3039723))))

(assert (=> d!1560429 (= res!2075484 (<= (size!36801 (list!17441 (xs!17846 (c!826857 input!661)))) 512))))

(assert (=> d!1560429 (= (inv!71742 (c!826857 input!661)) e!3039723)))

(declare-fun b!4861762 () Bool)

(declare-fun res!2075485 () Bool)

(assert (=> b!4861762 (=> (not res!2075485) (not e!3039723))))

(assert (=> b!4861762 (= res!2075485 (= (csize!29311 (c!826857 input!661)) (size!36801 (list!17441 (xs!17846 (c!826857 input!661))))))))

(declare-fun b!4861763 () Bool)

(assert (=> b!4861763 (= e!3039723 (and (> (csize!29311 (c!826857 input!661)) 0) (<= (csize!29311 (c!826857 input!661)) 512)))))

(assert (= (and d!1560429 res!2075484) b!4861762))

(assert (= (and b!4861762 res!2075485) b!4861763))

(assert (=> d!1560429 m!5859378))

(assert (=> d!1560429 m!5859378))

(declare-fun m!5859416 () Bool)

(assert (=> d!1560429 m!5859416))

(assert (=> b!4861762 m!5859378))

(assert (=> b!4861762 m!5859378))

(assert (=> b!4861762 m!5859416))

(assert (=> b!4861580 d!1560429))

(declare-fun d!1560431 () Bool)

(declare-fun res!2075486 () Bool)

(declare-fun e!3039724 () Bool)

(assert (=> d!1560431 (=> (not res!2075486) (not e!3039724))))

(assert (=> d!1560431 (= res!2075486 (<= (size!36801 (list!17441 (xs!17846 (c!826857 totalInput!332)))) 512))))

(assert (=> d!1560431 (= (inv!71742 (c!826857 totalInput!332)) e!3039724)))

(declare-fun b!4861764 () Bool)

(declare-fun res!2075487 () Bool)

(assert (=> b!4861764 (=> (not res!2075487) (not e!3039724))))

(assert (=> b!4861764 (= res!2075487 (= (csize!29311 (c!826857 totalInput!332)) (size!36801 (list!17441 (xs!17846 (c!826857 totalInput!332))))))))

(declare-fun b!4861765 () Bool)

(assert (=> b!4861765 (= e!3039724 (and (> (csize!29311 (c!826857 totalInput!332)) 0) (<= (csize!29311 (c!826857 totalInput!332)) 512)))))

(assert (= (and d!1560431 res!2075486) b!4861764))

(assert (= (and b!4861764 res!2075487) b!4861765))

(declare-fun m!5859418 () Bool)

(assert (=> d!1560431 m!5859418))

(assert (=> d!1560431 m!5859418))

(declare-fun m!5859420 () Bool)

(assert (=> d!1560431 m!5859420))

(assert (=> b!4861764 m!5859418))

(assert (=> b!4861764 m!5859418))

(assert (=> b!4861764 m!5859420))

(assert (=> b!4861598 d!1560431))

(declare-fun d!1560433 () Bool)

(assert (=> d!1560433 (= (inv!71734 (tag!8876 (h!62309 (t!363605 rules!1248)))) (= (mod (str.len (value!257488 (tag!8876 (h!62309 (t!363605 rules!1248))))) 2) 0))))

(assert (=> b!4861623 d!1560433))

(declare-fun d!1560435 () Bool)

(declare-fun res!2075488 () Bool)

(declare-fun e!3039725 () Bool)

(assert (=> d!1560435 (=> (not res!2075488) (not e!3039725))))

(assert (=> d!1560435 (= res!2075488 (semiInverseModEq!3537 (toChars!10722 (transformation!8012 (h!62309 (t!363605 rules!1248)))) (toValue!10863 (transformation!8012 (h!62309 (t!363605 rules!1248))))))))

(assert (=> d!1560435 (= (inv!71739 (transformation!8012 (h!62309 (t!363605 rules!1248)))) e!3039725)))

(declare-fun b!4861766 () Bool)

(assert (=> b!4861766 (= e!3039725 (equivClasses!3416 (toChars!10722 (transformation!8012 (h!62309 (t!363605 rules!1248)))) (toValue!10863 (transformation!8012 (h!62309 (t!363605 rules!1248))))))))

(assert (= (and d!1560435 res!2075488) b!4861766))

(declare-fun m!5859422 () Bool)

(assert (=> d!1560435 m!5859422))

(declare-fun m!5859424 () Bool)

(assert (=> b!4861766 m!5859424))

(assert (=> b!4861623 d!1560435))

(declare-fun b!4861768 () Bool)

(declare-fun e!3039726 () List!55983)

(declare-fun e!3039727 () List!55983)

(assert (=> b!4861768 (= e!3039726 e!3039727)))

(declare-fun c!826874 () Bool)

(assert (=> b!4861768 (= c!826874 ((_ is Leaf!24257) (c!826857 totalInput!332)))))

(declare-fun d!1560437 () Bool)

(declare-fun c!826873 () Bool)

(assert (=> d!1560437 (= c!826873 ((_ is Empty!14540) (c!826857 totalInput!332)))))

(assert (=> d!1560437 (= (list!17439 (c!826857 totalInput!332)) e!3039726)))

(declare-fun b!4861770 () Bool)

(assert (=> b!4861770 (= e!3039727 (++!12164 (list!17439 (left!40574 (c!826857 totalInput!332))) (list!17439 (right!40904 (c!826857 totalInput!332)))))))

(declare-fun b!4861767 () Bool)

(assert (=> b!4861767 (= e!3039726 Nil!55859)))

(declare-fun b!4861769 () Bool)

(assert (=> b!4861769 (= e!3039727 (list!17441 (xs!17846 (c!826857 totalInput!332))))))

(assert (= (and d!1560437 c!826873) b!4861767))

(assert (= (and d!1560437 (not c!826873)) b!4861768))

(assert (= (and b!4861768 c!826874) b!4861769))

(assert (= (and b!4861768 (not c!826874)) b!4861770))

(declare-fun m!5859426 () Bool)

(assert (=> b!4861770 m!5859426))

(declare-fun m!5859428 () Bool)

(assert (=> b!4861770 m!5859428))

(assert (=> b!4861770 m!5859426))

(assert (=> b!4861770 m!5859428))

(declare-fun m!5859430 () Bool)

(assert (=> b!4861770 m!5859430))

(assert (=> b!4861769 m!5859418))

(assert (=> d!1560393 d!1560437))

(declare-fun d!1560439 () Bool)

(declare-fun res!2075493 () Bool)

(declare-fun e!3039732 () Bool)

(assert (=> d!1560439 (=> res!2075493 e!3039732)))

(assert (=> d!1560439 (= res!2075493 ((_ is Nil!55861) rules!1248))))

(assert (=> d!1560439 (= (forall!13041 rules!1248 lambda!243286) e!3039732)))

(declare-fun b!4861775 () Bool)

(declare-fun e!3039733 () Bool)

(assert (=> b!4861775 (= e!3039732 e!3039733)))

(declare-fun res!2075494 () Bool)

(assert (=> b!4861775 (=> (not res!2075494) (not e!3039733))))

(declare-fun dynLambda!22409 (Int Rule!15824) Bool)

(assert (=> b!4861775 (= res!2075494 (dynLambda!22409 lambda!243286 (h!62309 rules!1248)))))

(declare-fun b!4861776 () Bool)

(assert (=> b!4861776 (= e!3039733 (forall!13041 (t!363605 rules!1248) lambda!243286))))

(assert (= (and d!1560439 (not res!2075493)) b!4861775))

(assert (= (and b!4861775 res!2075494) b!4861776))

(declare-fun b_lambda!193393 () Bool)

(assert (=> (not b_lambda!193393) (not b!4861775)))

(declare-fun m!5859432 () Bool)

(assert (=> b!4861775 m!5859432))

(declare-fun m!5859434 () Bool)

(assert (=> b!4861776 m!5859434))

(assert (=> d!1560387 d!1560439))

(declare-fun d!1560441 () Bool)

(declare-fun c!826875 () Bool)

(assert (=> d!1560441 (= c!826875 ((_ is Node!14540) (left!40574 (c!826857 input!661))))))

(declare-fun e!3039734 () Bool)

(assert (=> d!1560441 (= (inv!71738 (left!40574 (c!826857 input!661))) e!3039734)))

(declare-fun b!4861777 () Bool)

(assert (=> b!4861777 (= e!3039734 (inv!71741 (left!40574 (c!826857 input!661))))))

(declare-fun b!4861778 () Bool)

(declare-fun e!3039735 () Bool)

(assert (=> b!4861778 (= e!3039734 e!3039735)))

(declare-fun res!2075495 () Bool)

(assert (=> b!4861778 (= res!2075495 (not ((_ is Leaf!24257) (left!40574 (c!826857 input!661)))))))

(assert (=> b!4861778 (=> res!2075495 e!3039735)))

(declare-fun b!4861779 () Bool)

(assert (=> b!4861779 (= e!3039735 (inv!71742 (left!40574 (c!826857 input!661))))))

(assert (= (and d!1560441 c!826875) b!4861777))

(assert (= (and d!1560441 (not c!826875)) b!4861778))

(assert (= (and b!4861778 (not res!2075495)) b!4861779))

(declare-fun m!5859436 () Bool)

(assert (=> b!4861777 m!5859436))

(declare-fun m!5859438 () Bool)

(assert (=> b!4861779 m!5859438))

(assert (=> b!4861633 d!1560441))

(declare-fun d!1560443 () Bool)

(declare-fun c!826876 () Bool)

(assert (=> d!1560443 (= c!826876 ((_ is Node!14540) (right!40904 (c!826857 input!661))))))

(declare-fun e!3039736 () Bool)

(assert (=> d!1560443 (= (inv!71738 (right!40904 (c!826857 input!661))) e!3039736)))

(declare-fun b!4861780 () Bool)

(assert (=> b!4861780 (= e!3039736 (inv!71741 (right!40904 (c!826857 input!661))))))

(declare-fun b!4861781 () Bool)

(declare-fun e!3039737 () Bool)

(assert (=> b!4861781 (= e!3039736 e!3039737)))

(declare-fun res!2075496 () Bool)

(assert (=> b!4861781 (= res!2075496 (not ((_ is Leaf!24257) (right!40904 (c!826857 input!661)))))))

(assert (=> b!4861781 (=> res!2075496 e!3039737)))

(declare-fun b!4861782 () Bool)

(assert (=> b!4861782 (= e!3039737 (inv!71742 (right!40904 (c!826857 input!661))))))

(assert (= (and d!1560443 c!826876) b!4861780))

(assert (= (and d!1560443 (not c!826876)) b!4861781))

(assert (= (and b!4861781 (not res!2075496)) b!4861782))

(declare-fun m!5859440 () Bool)

(assert (=> b!4861780 m!5859440))

(declare-fun m!5859442 () Bool)

(assert (=> b!4861782 m!5859442))

(assert (=> b!4861633 d!1560443))

(declare-fun d!1560445 () Bool)

(assert (=> d!1560445 (= (inv!71743 (xs!17846 (c!826857 input!661))) (<= (size!36801 (innerList!14628 (xs!17846 (c!826857 input!661)))) 2147483647))))

(declare-fun bs!1173979 () Bool)

(assert (= bs!1173979 d!1560445))

(declare-fun m!5859444 () Bool)

(assert (=> bs!1173979 m!5859444))

(assert (=> b!4861634 d!1560445))

(assert (=> b!4861563 d!1560375))

(declare-fun d!1560447 () Bool)

(assert (=> d!1560447 true))

(declare-fun lambda!243296 () Int)

(declare-fun order!25147 () Int)

(declare-fun order!25149 () Int)

(declare-fun dynLambda!22410 (Int Int) Int)

(declare-fun dynLambda!22411 (Int Int) Int)

(assert (=> d!1560447 (< (dynLambda!22410 order!25147 (toValue!10863 (transformation!8012 (h!62309 rules!1248)))) (dynLambda!22411 order!25149 lambda!243296))))

(declare-fun Forall2!1246 (Int) Bool)

(assert (=> d!1560447 (= (equivClasses!3416 (toChars!10722 (transformation!8012 (h!62309 rules!1248))) (toValue!10863 (transformation!8012 (h!62309 rules!1248)))) (Forall2!1246 lambda!243296))))

(declare-fun bs!1173980 () Bool)

(assert (= bs!1173980 d!1560447))

(declare-fun m!5859446 () Bool)

(assert (=> bs!1173980 m!5859446))

(assert (=> b!4861595 d!1560447))

(assert (=> b!4861564 d!1560385))

(declare-fun d!1560449 () Bool)

(declare-fun lt!1992551 () Int)

(assert (=> d!1560449 (>= lt!1992551 0)))

(declare-fun e!3039742 () Int)

(assert (=> d!1560449 (= lt!1992551 e!3039742)))

(declare-fun c!826879 () Bool)

(assert (=> d!1560449 (= c!826879 ((_ is Nil!55859) (list!17438 totalInput!332)))))

(assert (=> d!1560449 (= (size!36801 (list!17438 totalInput!332)) lt!1992551)))

(declare-fun b!4861791 () Bool)

(assert (=> b!4861791 (= e!3039742 0)))

(declare-fun b!4861792 () Bool)

(assert (=> b!4861792 (= e!3039742 (+ 1 (size!36801 (t!363603 (list!17438 totalInput!332)))))))

(assert (= (and d!1560449 c!826879) b!4861791))

(assert (= (and d!1560449 (not c!826879)) b!4861792))

(declare-fun m!5859448 () Bool)

(assert (=> b!4861792 m!5859448))

(assert (=> b!4861613 d!1560449))

(declare-fun d!1560451 () Bool)

(declare-fun lt!1992552 () Int)

(assert (=> d!1560451 (>= lt!1992552 0)))

(declare-fun e!3039743 () Int)

(assert (=> d!1560451 (= lt!1992552 e!3039743)))

(declare-fun c!826880 () Bool)

(assert (=> d!1560451 (= c!826880 ((_ is Nil!55859) (list!17438 input!661)))))

(assert (=> d!1560451 (= (size!36801 (list!17438 input!661)) lt!1992552)))

(declare-fun b!4861793 () Bool)

(assert (=> b!4861793 (= e!3039743 0)))

(declare-fun b!4861794 () Bool)

(assert (=> b!4861794 (= e!3039743 (+ 1 (size!36801 (t!363603 (list!17438 input!661)))))))

(assert (= (and d!1560451 c!826880) b!4861793))

(assert (= (and d!1560451 (not c!826880)) b!4861794))

(declare-fun m!5859450 () Bool)

(assert (=> b!4861794 m!5859450))

(assert (=> b!4861613 d!1560451))

(declare-fun b!4861796 () Bool)

(declare-fun e!3039744 () Bool)

(assert (=> b!4861796 (= e!3039744 (not (isEmpty!29872 (right!40904 (c!826857 totalInput!332)))))))

(declare-fun b!4861797 () Bool)

(declare-fun res!2075503 () Bool)

(assert (=> b!4861797 (=> (not res!2075503) (not e!3039744))))

(assert (=> b!4861797 (= res!2075503 (not (isEmpty!29872 (left!40574 (c!826857 totalInput!332)))))))

(declare-fun b!4861798 () Bool)

(declare-fun res!2075502 () Bool)

(assert (=> b!4861798 (=> (not res!2075502) (not e!3039744))))

(assert (=> b!4861798 (= res!2075502 (<= (- (height!1916 (left!40574 (c!826857 totalInput!332))) (height!1916 (right!40904 (c!826857 totalInput!332)))) 1))))

(declare-fun b!4861799 () Bool)

(declare-fun e!3039745 () Bool)

(assert (=> b!4861799 (= e!3039745 e!3039744)))

(declare-fun res!2075500 () Bool)

(assert (=> b!4861799 (=> (not res!2075500) (not e!3039744))))

(assert (=> b!4861799 (= res!2075500 (<= (- 1) (- (height!1916 (left!40574 (c!826857 totalInput!332))) (height!1916 (right!40904 (c!826857 totalInput!332))))))))

(declare-fun b!4861800 () Bool)

(declare-fun res!2075501 () Bool)

(assert (=> b!4861800 (=> (not res!2075501) (not e!3039744))))

(assert (=> b!4861800 (= res!2075501 (isBalanced!3943 (left!40574 (c!826857 totalInput!332))))))

(declare-fun d!1560453 () Bool)

(declare-fun res!2075499 () Bool)

(assert (=> d!1560453 (=> res!2075499 e!3039745)))

(assert (=> d!1560453 (= res!2075499 (not ((_ is Node!14540) (c!826857 totalInput!332))))))

(assert (=> d!1560453 (= (isBalanced!3943 (c!826857 totalInput!332)) e!3039745)))

(declare-fun b!4861795 () Bool)

(declare-fun res!2075504 () Bool)

(assert (=> b!4861795 (=> (not res!2075504) (not e!3039744))))

(assert (=> b!4861795 (= res!2075504 (isBalanced!3943 (right!40904 (c!826857 totalInput!332))))))

(assert (= (and d!1560453 (not res!2075499)) b!4861799))

(assert (= (and b!4861799 res!2075500) b!4861798))

(assert (= (and b!4861798 res!2075502) b!4861800))

(assert (= (and b!4861800 res!2075501) b!4861795))

(assert (= (and b!4861795 res!2075504) b!4861797))

(assert (= (and b!4861797 res!2075503) b!4861796))

(assert (=> b!4861799 m!5859392))

(assert (=> b!4861799 m!5859394))

(declare-fun m!5859452 () Bool)

(assert (=> b!4861796 m!5859452))

(assert (=> b!4861798 m!5859392))

(assert (=> b!4861798 m!5859394))

(declare-fun m!5859454 () Bool)

(assert (=> b!4861797 m!5859454))

(declare-fun m!5859456 () Bool)

(assert (=> b!4861800 m!5859456))

(declare-fun m!5859458 () Bool)

(assert (=> b!4861795 m!5859458))

(assert (=> d!1560371 d!1560453))

(declare-fun d!1560455 () Bool)

(assert (=> d!1560455 true))

(declare-fun lambda!243299 () Int)

(declare-fun order!25153 () Int)

(declare-fun order!25151 () Int)

(declare-fun dynLambda!22412 (Int Int) Int)

(declare-fun dynLambda!22413 (Int Int) Int)

(assert (=> d!1560455 (< (dynLambda!22412 order!25151 (toChars!10722 (transformation!8012 (h!62309 rules!1248)))) (dynLambda!22413 order!25153 lambda!243299))))

(assert (=> d!1560455 true))

(assert (=> d!1560455 (< (dynLambda!22410 order!25147 (toValue!10863 (transformation!8012 (h!62309 rules!1248)))) (dynLambda!22413 order!25153 lambda!243299))))

(declare-fun Forall!1667 (Int) Bool)

(assert (=> d!1560455 (= (semiInverseModEq!3537 (toChars!10722 (transformation!8012 (h!62309 rules!1248))) (toValue!10863 (transformation!8012 (h!62309 rules!1248)))) (Forall!1667 lambda!243299))))

(declare-fun bs!1173981 () Bool)

(assert (= bs!1173981 d!1560455))

(declare-fun m!5859460 () Bool)

(assert (=> bs!1173981 m!5859460))

(assert (=> d!1560381 d!1560455))

(declare-fun d!1560457 () Bool)

(declare-fun res!2075509 () Bool)

(declare-fun e!3039750 () Bool)

(assert (=> d!1560457 (=> res!2075509 e!3039750)))

(assert (=> d!1560457 (= res!2075509 ((_ is Nil!55861) rules!1248))))

(assert (=> d!1560457 (= (noDuplicateTag!3274 thiss!11777 rules!1248 Nil!55862) e!3039750)))

(declare-fun b!4861809 () Bool)

(declare-fun e!3039751 () Bool)

(assert (=> b!4861809 (= e!3039750 e!3039751)))

(declare-fun res!2075510 () Bool)

(assert (=> b!4861809 (=> (not res!2075510) (not e!3039751))))

(declare-fun contains!19381 (List!55986 String!63028) Bool)

(assert (=> b!4861809 (= res!2075510 (not (contains!19381 Nil!55862 (tag!8876 (h!62309 rules!1248)))))))

(declare-fun b!4861810 () Bool)

(assert (=> b!4861810 (= e!3039751 (noDuplicateTag!3274 thiss!11777 (t!363605 rules!1248) (Cons!55862 (tag!8876 (h!62309 rules!1248)) Nil!55862)))))

(assert (= (and d!1560457 (not res!2075509)) b!4861809))

(assert (= (and b!4861809 res!2075510) b!4861810))

(declare-fun m!5859462 () Bool)

(assert (=> b!4861809 m!5859462))

(declare-fun m!5859464 () Bool)

(assert (=> b!4861810 m!5859464))

(assert (=> b!4861589 d!1560457))

(declare-fun b!4861829 () Bool)

(declare-fun e!3039762 () Int)

(declare-fun call!337791 () Int)

(assert (=> b!4861829 (= e!3039762 call!337791)))

(declare-fun b!4861830 () Bool)

(declare-fun e!3039766 () Bool)

(declare-fun lt!1992555 () List!55983)

(assert (=> b!4861830 (= e!3039766 (= (size!36801 lt!1992555) e!3039762))))

(declare-fun c!826890 () Bool)

(assert (=> b!4861830 (= c!826890 (<= (- (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661))) 0))))

(declare-fun e!3039763 () Int)

(declare-fun b!4861831 () Bool)

(assert (=> b!4861831 (= e!3039763 (- call!337791 (- (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661)))))))

(declare-fun d!1560459 () Bool)

(assert (=> d!1560459 e!3039766))

(declare-fun res!2075513 () Bool)

(assert (=> d!1560459 (=> (not res!2075513) (not e!3039766))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9958 (List!55983) (InoxSet C!26372))

(assert (=> d!1560459 (= res!2075513 (= ((_ map implies) (content!9958 lt!1992555) (content!9958 (list!17438 totalInput!332))) ((as const (InoxSet C!26372)) true)))))

(declare-fun e!3039764 () List!55983)

(assert (=> d!1560459 (= lt!1992555 e!3039764)))

(declare-fun c!826892 () Bool)

(assert (=> d!1560459 (= c!826892 ((_ is Nil!55859) (list!17438 totalInput!332)))))

(assert (=> d!1560459 (= (drop!2193 (list!17438 totalInput!332) (- (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661)))) lt!1992555)))

(declare-fun b!4861832 () Bool)

(declare-fun e!3039765 () List!55983)

(assert (=> b!4861832 (= e!3039765 (drop!2193 (t!363603 (list!17438 totalInput!332)) (- (- (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661))) 1)))))

(declare-fun bm!337786 () Bool)

(assert (=> bm!337786 (= call!337791 (size!36801 (list!17438 totalInput!332)))))

(declare-fun b!4861833 () Bool)

(assert (=> b!4861833 (= e!3039764 Nil!55859)))

(declare-fun b!4861834 () Bool)

(assert (=> b!4861834 (= e!3039765 (list!17438 totalInput!332))))

(declare-fun b!4861835 () Bool)

(assert (=> b!4861835 (= e!3039763 0)))

(declare-fun b!4861836 () Bool)

(assert (=> b!4861836 (= e!3039762 e!3039763)))

(declare-fun c!826891 () Bool)

(assert (=> b!4861836 (= c!826891 (>= (- (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661))) call!337791))))

(declare-fun b!4861837 () Bool)

(assert (=> b!4861837 (= e!3039764 e!3039765)))

(declare-fun c!826889 () Bool)

(assert (=> b!4861837 (= c!826889 (<= (- (size!36801 (list!17438 totalInput!332)) (size!36801 (list!17438 input!661))) 0))))

(assert (= (and d!1560459 c!826892) b!4861833))

(assert (= (and d!1560459 (not c!826892)) b!4861837))

(assert (= (and b!4861837 c!826889) b!4861834))

(assert (= (and b!4861837 (not c!826889)) b!4861832))

(assert (= (and d!1560459 res!2075513) b!4861830))

(assert (= (and b!4861830 c!826890) b!4861829))

(assert (= (and b!4861830 (not c!826890)) b!4861836))

(assert (= (and b!4861836 c!826891) b!4861835))

(assert (= (and b!4861836 (not c!826891)) b!4861831))

(assert (= (or b!4861829 b!4861836 b!4861831) bm!337786))

(declare-fun m!5859466 () Bool)

(assert (=> b!4861830 m!5859466))

(declare-fun m!5859468 () Bool)

(assert (=> d!1560459 m!5859468))

(assert (=> d!1560459 m!5859242))

(declare-fun m!5859470 () Bool)

(assert (=> d!1560459 m!5859470))

(declare-fun m!5859472 () Bool)

(assert (=> b!4861832 m!5859472))

(assert (=> bm!337786 m!5859242))

(assert (=> bm!337786 m!5859294))

(assert (=> d!1560389 d!1560459))

(assert (=> d!1560389 d!1560449))

(assert (=> d!1560389 d!1560451))

(declare-fun d!1560461 () Bool)

(declare-fun c!826893 () Bool)

(assert (=> d!1560461 (= c!826893 ((_ is Node!14540) (left!40574 (c!826857 totalInput!332))))))

(declare-fun e!3039767 () Bool)

(assert (=> d!1560461 (= (inv!71738 (left!40574 (c!826857 totalInput!332))) e!3039767)))

(declare-fun b!4861838 () Bool)

(assert (=> b!4861838 (= e!3039767 (inv!71741 (left!40574 (c!826857 totalInput!332))))))

(declare-fun b!4861839 () Bool)

(declare-fun e!3039768 () Bool)

(assert (=> b!4861839 (= e!3039767 e!3039768)))

(declare-fun res!2075514 () Bool)

(assert (=> b!4861839 (= res!2075514 (not ((_ is Leaf!24257) (left!40574 (c!826857 totalInput!332)))))))

(assert (=> b!4861839 (=> res!2075514 e!3039768)))

(declare-fun b!4861840 () Bool)

(assert (=> b!4861840 (= e!3039768 (inv!71742 (left!40574 (c!826857 totalInput!332))))))

(assert (= (and d!1560461 c!826893) b!4861838))

(assert (= (and d!1560461 (not c!826893)) b!4861839))

(assert (= (and b!4861839 (not res!2075514)) b!4861840))

(declare-fun m!5859474 () Bool)

(assert (=> b!4861838 m!5859474))

(declare-fun m!5859476 () Bool)

(assert (=> b!4861840 m!5859476))

(assert (=> b!4861650 d!1560461))

(declare-fun d!1560463 () Bool)

(declare-fun c!826894 () Bool)

(assert (=> d!1560463 (= c!826894 ((_ is Node!14540) (right!40904 (c!826857 totalInput!332))))))

(declare-fun e!3039769 () Bool)

(assert (=> d!1560463 (= (inv!71738 (right!40904 (c!826857 totalInput!332))) e!3039769)))

(declare-fun b!4861841 () Bool)

(assert (=> b!4861841 (= e!3039769 (inv!71741 (right!40904 (c!826857 totalInput!332))))))

(declare-fun b!4861842 () Bool)

(declare-fun e!3039770 () Bool)

(assert (=> b!4861842 (= e!3039769 e!3039770)))

(declare-fun res!2075515 () Bool)

(assert (=> b!4861842 (= res!2075515 (not ((_ is Leaf!24257) (right!40904 (c!826857 totalInput!332)))))))

(assert (=> b!4861842 (=> res!2075515 e!3039770)))

(declare-fun b!4861843 () Bool)

(assert (=> b!4861843 (= e!3039770 (inv!71742 (right!40904 (c!826857 totalInput!332))))))

(assert (= (and d!1560463 c!826894) b!4861841))

(assert (= (and d!1560463 (not c!826894)) b!4861842))

(assert (= (and b!4861842 (not res!2075515)) b!4861843))

(declare-fun m!5859478 () Bool)

(assert (=> b!4861841 m!5859478))

(declare-fun m!5859480 () Bool)

(assert (=> b!4861843 m!5859480))

(assert (=> b!4861650 d!1560463))

(declare-fun d!1560465 () Bool)

(assert (=> d!1560465 (= (inv!71743 (xs!17846 (c!826857 totalInput!332))) (<= (size!36801 (innerList!14628 (xs!17846 (c!826857 totalInput!332)))) 2147483647))))

(declare-fun bs!1173982 () Bool)

(assert (= bs!1173982 d!1560465))

(declare-fun m!5859482 () Bool)

(assert (=> bs!1173982 m!5859482))

(assert (=> b!4861651 d!1560465))

(declare-fun e!3039772 () Bool)

(declare-fun b!4861844 () Bool)

(declare-fun tp!1367953 () Bool)

(declare-fun tp!1367954 () Bool)

(assert (=> b!4861844 (= e!3039772 (and (inv!71738 (left!40574 (left!40574 (c!826857 input!661)))) tp!1367953 (inv!71738 (right!40904 (left!40574 (c!826857 input!661)))) tp!1367954))))

(declare-fun b!4861846 () Bool)

(declare-fun e!3039771 () Bool)

(declare-fun tp!1367952 () Bool)

(assert (=> b!4861846 (= e!3039771 tp!1367952)))

(declare-fun b!4861845 () Bool)

(assert (=> b!4861845 (= e!3039772 (and (inv!71743 (xs!17846 (left!40574 (c!826857 input!661)))) e!3039771))))

(assert (=> b!4861633 (= tp!1367893 (and (inv!71738 (left!40574 (c!826857 input!661))) e!3039772))))

(assert (= (and b!4861633 ((_ is Node!14540) (left!40574 (c!826857 input!661)))) b!4861844))

(assert (= b!4861845 b!4861846))

(assert (= (and b!4861633 ((_ is Leaf!24257) (left!40574 (c!826857 input!661)))) b!4861845))

(declare-fun m!5859484 () Bool)

(assert (=> b!4861844 m!5859484))

(declare-fun m!5859486 () Bool)

(assert (=> b!4861844 m!5859486))

(declare-fun m!5859488 () Bool)

(assert (=> b!4861845 m!5859488))

(assert (=> b!4861633 m!5859308))

(declare-fun tp!1367957 () Bool)

(declare-fun b!4861847 () Bool)

(declare-fun e!3039774 () Bool)

(declare-fun tp!1367956 () Bool)

(assert (=> b!4861847 (= e!3039774 (and (inv!71738 (left!40574 (right!40904 (c!826857 input!661)))) tp!1367956 (inv!71738 (right!40904 (right!40904 (c!826857 input!661)))) tp!1367957))))

(declare-fun b!4861849 () Bool)

(declare-fun e!3039773 () Bool)

(declare-fun tp!1367955 () Bool)

(assert (=> b!4861849 (= e!3039773 tp!1367955)))

(declare-fun b!4861848 () Bool)

(assert (=> b!4861848 (= e!3039774 (and (inv!71743 (xs!17846 (right!40904 (c!826857 input!661)))) e!3039773))))

(assert (=> b!4861633 (= tp!1367894 (and (inv!71738 (right!40904 (c!826857 input!661))) e!3039774))))

(assert (= (and b!4861633 ((_ is Node!14540) (right!40904 (c!826857 input!661)))) b!4861847))

(assert (= b!4861848 b!4861849))

(assert (= (and b!4861633 ((_ is Leaf!24257) (right!40904 (c!826857 input!661)))) b!4861848))

(declare-fun m!5859490 () Bool)

(assert (=> b!4861847 m!5859490))

(declare-fun m!5859492 () Bool)

(assert (=> b!4861847 m!5859492))

(declare-fun m!5859494 () Bool)

(assert (=> b!4861848 m!5859494))

(assert (=> b!4861633 m!5859310))

(declare-fun b!4861854 () Bool)

(declare-fun e!3039777 () Bool)

(declare-fun tp!1367960 () Bool)

(assert (=> b!4861854 (= e!3039777 (and tp_is_empty!35645 tp!1367960))))

(assert (=> b!4861652 (= tp!1367910 e!3039777)))

(assert (= (and b!4861652 ((_ is Cons!55859) (innerList!14628 (xs!17846 (c!826857 totalInput!332))))) b!4861854))

(declare-fun b!4861857 () Bool)

(declare-fun b_free!130511 () Bool)

(declare-fun b_next!131301 () Bool)

(assert (=> b!4861857 (= b_free!130511 (not b_next!131301))))

(declare-fun tp!1367964 () Bool)

(declare-fun b_and!342363 () Bool)

(assert (=> b!4861857 (= tp!1367964 b_and!342363)))

(declare-fun b_free!130513 () Bool)

(declare-fun b_next!131303 () Bool)

(assert (=> b!4861857 (= b_free!130513 (not b_next!131303))))

(declare-fun tp!1367963 () Bool)

(declare-fun b_and!342365 () Bool)

(assert (=> b!4861857 (= tp!1367963 b_and!342365)))

(declare-fun e!3039778 () Bool)

(assert (=> b!4861857 (= e!3039778 (and tp!1367964 tp!1367963))))

(declare-fun b!4861856 () Bool)

(declare-fun tp!1367962 () Bool)

(declare-fun e!3039780 () Bool)

(assert (=> b!4861856 (= e!3039780 (and tp!1367962 (inv!71734 (tag!8876 (h!62309 (t!363605 (t!363605 rules!1248))))) (inv!71739 (transformation!8012 (h!62309 (t!363605 (t!363605 rules!1248))))) e!3039778))))

(declare-fun b!4861855 () Bool)

(declare-fun e!3039781 () Bool)

(declare-fun tp!1367961 () Bool)

(assert (=> b!4861855 (= e!3039781 (and e!3039780 tp!1367961))))

(assert (=> b!4861622 (= tp!1367882 e!3039781)))

(assert (= b!4861856 b!4861857))

(assert (= b!4861855 b!4861856))

(assert (= (and b!4861622 ((_ is Cons!55861) (t!363605 (t!363605 rules!1248)))) b!4861855))

(declare-fun m!5859496 () Bool)

(assert (=> b!4861856 m!5859496))

(declare-fun m!5859498 () Bool)

(assert (=> b!4861856 m!5859498))

(declare-fun b!4861859 () Bool)

(declare-fun e!3039782 () Bool)

(declare-fun tp!1367967 () Bool)

(declare-fun tp!1367965 () Bool)

(assert (=> b!4861859 (= e!3039782 (and tp!1367967 tp!1367965))))

(declare-fun b!4861860 () Bool)

(declare-fun tp!1367966 () Bool)

(assert (=> b!4861860 (= e!3039782 tp!1367966)))

(assert (=> b!4861647 (= tp!1367907 e!3039782)))

(declare-fun b!4861861 () Bool)

(declare-fun tp!1367969 () Bool)

(declare-fun tp!1367968 () Bool)

(assert (=> b!4861861 (= e!3039782 (and tp!1367969 tp!1367968))))

(declare-fun b!4861858 () Bool)

(assert (=> b!4861858 (= e!3039782 tp_is_empty!35645)))

(assert (= (and b!4861647 ((_ is ElementMatch!13087) (regOne!26686 (regex!8012 (h!62309 rules!1248))))) b!4861858))

(assert (= (and b!4861647 ((_ is Concat!21410) (regOne!26686 (regex!8012 (h!62309 rules!1248))))) b!4861859))

(assert (= (and b!4861647 ((_ is Star!13087) (regOne!26686 (regex!8012 (h!62309 rules!1248))))) b!4861860))

(assert (= (and b!4861647 ((_ is Union!13087) (regOne!26686 (regex!8012 (h!62309 rules!1248))))) b!4861861))

(declare-fun b!4861863 () Bool)

(declare-fun e!3039783 () Bool)

(declare-fun tp!1367972 () Bool)

(declare-fun tp!1367970 () Bool)

(assert (=> b!4861863 (= e!3039783 (and tp!1367972 tp!1367970))))

(declare-fun b!4861864 () Bool)

(declare-fun tp!1367971 () Bool)

(assert (=> b!4861864 (= e!3039783 tp!1367971)))

(assert (=> b!4861647 (= tp!1367905 e!3039783)))

(declare-fun b!4861865 () Bool)

(declare-fun tp!1367974 () Bool)

(declare-fun tp!1367973 () Bool)

(assert (=> b!4861865 (= e!3039783 (and tp!1367974 tp!1367973))))

(declare-fun b!4861862 () Bool)

(assert (=> b!4861862 (= e!3039783 tp_is_empty!35645)))

(assert (= (and b!4861647 ((_ is ElementMatch!13087) (regTwo!26686 (regex!8012 (h!62309 rules!1248))))) b!4861862))

(assert (= (and b!4861647 ((_ is Concat!21410) (regTwo!26686 (regex!8012 (h!62309 rules!1248))))) b!4861863))

(assert (= (and b!4861647 ((_ is Star!13087) (regTwo!26686 (regex!8012 (h!62309 rules!1248))))) b!4861864))

(assert (= (and b!4861647 ((_ is Union!13087) (regTwo!26686 (regex!8012 (h!62309 rules!1248))))) b!4861865))

(declare-fun b!4861867 () Bool)

(declare-fun e!3039784 () Bool)

(declare-fun tp!1367977 () Bool)

(declare-fun tp!1367975 () Bool)

(assert (=> b!4861867 (= e!3039784 (and tp!1367977 tp!1367975))))

(declare-fun b!4861868 () Bool)

(declare-fun tp!1367976 () Bool)

(assert (=> b!4861868 (= e!3039784 tp!1367976)))

(assert (=> b!4861648 (= tp!1367906 e!3039784)))

(declare-fun b!4861869 () Bool)

(declare-fun tp!1367979 () Bool)

(declare-fun tp!1367978 () Bool)

(assert (=> b!4861869 (= e!3039784 (and tp!1367979 tp!1367978))))

(declare-fun b!4861866 () Bool)

(assert (=> b!4861866 (= e!3039784 tp_is_empty!35645)))

(assert (= (and b!4861648 ((_ is ElementMatch!13087) (reg!13416 (regex!8012 (h!62309 rules!1248))))) b!4861866))

(assert (= (and b!4861648 ((_ is Concat!21410) (reg!13416 (regex!8012 (h!62309 rules!1248))))) b!4861867))

(assert (= (and b!4861648 ((_ is Star!13087) (reg!13416 (regex!8012 (h!62309 rules!1248))))) b!4861868))

(assert (= (and b!4861648 ((_ is Union!13087) (reg!13416 (regex!8012 (h!62309 rules!1248))))) b!4861869))

(declare-fun b!4861870 () Bool)

(declare-fun e!3039785 () Bool)

(declare-fun tp!1367980 () Bool)

(assert (=> b!4861870 (= e!3039785 (and tp_is_empty!35645 tp!1367980))))

(assert (=> b!4861635 (= tp!1367892 e!3039785)))

(assert (= (and b!4861635 ((_ is Cons!55859) (innerList!14628 (xs!17846 (c!826857 input!661))))) b!4861870))

(declare-fun b!4861872 () Bool)

(declare-fun e!3039786 () Bool)

(declare-fun tp!1367983 () Bool)

(declare-fun tp!1367981 () Bool)

(assert (=> b!4861872 (= e!3039786 (and tp!1367983 tp!1367981))))

(declare-fun b!4861873 () Bool)

(declare-fun tp!1367982 () Bool)

(assert (=> b!4861873 (= e!3039786 tp!1367982)))

(assert (=> b!4861623 (= tp!1367883 e!3039786)))

(declare-fun b!4861874 () Bool)

(declare-fun tp!1367985 () Bool)

(declare-fun tp!1367984 () Bool)

(assert (=> b!4861874 (= e!3039786 (and tp!1367985 tp!1367984))))

(declare-fun b!4861871 () Bool)

(assert (=> b!4861871 (= e!3039786 tp_is_empty!35645)))

(assert (= (and b!4861623 ((_ is ElementMatch!13087) (regex!8012 (h!62309 (t!363605 rules!1248))))) b!4861871))

(assert (= (and b!4861623 ((_ is Concat!21410) (regex!8012 (h!62309 (t!363605 rules!1248))))) b!4861872))

(assert (= (and b!4861623 ((_ is Star!13087) (regex!8012 (h!62309 (t!363605 rules!1248))))) b!4861873))

(assert (= (and b!4861623 ((_ is Union!13087) (regex!8012 (h!62309 (t!363605 rules!1248))))) b!4861874))

(declare-fun b!4861876 () Bool)

(declare-fun e!3039787 () Bool)

(declare-fun tp!1367988 () Bool)

(declare-fun tp!1367986 () Bool)

(assert (=> b!4861876 (= e!3039787 (and tp!1367988 tp!1367986))))

(declare-fun b!4861877 () Bool)

(declare-fun tp!1367987 () Bool)

(assert (=> b!4861877 (= e!3039787 tp!1367987)))

(assert (=> b!4861649 (= tp!1367909 e!3039787)))

(declare-fun b!4861878 () Bool)

(declare-fun tp!1367990 () Bool)

(declare-fun tp!1367989 () Bool)

(assert (=> b!4861878 (= e!3039787 (and tp!1367990 tp!1367989))))

(declare-fun b!4861875 () Bool)

(assert (=> b!4861875 (= e!3039787 tp_is_empty!35645)))

(assert (= (and b!4861649 ((_ is ElementMatch!13087) (regOne!26687 (regex!8012 (h!62309 rules!1248))))) b!4861875))

(assert (= (and b!4861649 ((_ is Concat!21410) (regOne!26687 (regex!8012 (h!62309 rules!1248))))) b!4861876))

(assert (= (and b!4861649 ((_ is Star!13087) (regOne!26687 (regex!8012 (h!62309 rules!1248))))) b!4861877))

(assert (= (and b!4861649 ((_ is Union!13087) (regOne!26687 (regex!8012 (h!62309 rules!1248))))) b!4861878))

(declare-fun b!4861880 () Bool)

(declare-fun e!3039788 () Bool)

(declare-fun tp!1367993 () Bool)

(declare-fun tp!1367991 () Bool)

(assert (=> b!4861880 (= e!3039788 (and tp!1367993 tp!1367991))))

(declare-fun b!4861881 () Bool)

(declare-fun tp!1367992 () Bool)

(assert (=> b!4861881 (= e!3039788 tp!1367992)))

(assert (=> b!4861649 (= tp!1367908 e!3039788)))

(declare-fun b!4861882 () Bool)

(declare-fun tp!1367995 () Bool)

(declare-fun tp!1367994 () Bool)

(assert (=> b!4861882 (= e!3039788 (and tp!1367995 tp!1367994))))

(declare-fun b!4861879 () Bool)

(assert (=> b!4861879 (= e!3039788 tp_is_empty!35645)))

(assert (= (and b!4861649 ((_ is ElementMatch!13087) (regTwo!26687 (regex!8012 (h!62309 rules!1248))))) b!4861879))

(assert (= (and b!4861649 ((_ is Concat!21410) (regTwo!26687 (regex!8012 (h!62309 rules!1248))))) b!4861880))

(assert (= (and b!4861649 ((_ is Star!13087) (regTwo!26687 (regex!8012 (h!62309 rules!1248))))) b!4861881))

(assert (= (and b!4861649 ((_ is Union!13087) (regTwo!26687 (regex!8012 (h!62309 rules!1248))))) b!4861882))

(declare-fun e!3039790 () Bool)

(declare-fun tp!1367997 () Bool)

(declare-fun b!4861883 () Bool)

(declare-fun tp!1367998 () Bool)

(assert (=> b!4861883 (= e!3039790 (and (inv!71738 (left!40574 (left!40574 (c!826857 totalInput!332)))) tp!1367997 (inv!71738 (right!40904 (left!40574 (c!826857 totalInput!332)))) tp!1367998))))

(declare-fun b!4861885 () Bool)

(declare-fun e!3039789 () Bool)

(declare-fun tp!1367996 () Bool)

(assert (=> b!4861885 (= e!3039789 tp!1367996)))

(declare-fun b!4861884 () Bool)

(assert (=> b!4861884 (= e!3039790 (and (inv!71743 (xs!17846 (left!40574 (c!826857 totalInput!332)))) e!3039789))))

(assert (=> b!4861650 (= tp!1367911 (and (inv!71738 (left!40574 (c!826857 totalInput!332))) e!3039790))))

(assert (= (and b!4861650 ((_ is Node!14540) (left!40574 (c!826857 totalInput!332)))) b!4861883))

(assert (= b!4861884 b!4861885))

(assert (= (and b!4861650 ((_ is Leaf!24257) (left!40574 (c!826857 totalInput!332)))) b!4861884))

(declare-fun m!5859500 () Bool)

(assert (=> b!4861883 m!5859500))

(declare-fun m!5859502 () Bool)

(assert (=> b!4861883 m!5859502))

(declare-fun m!5859504 () Bool)

(assert (=> b!4861884 m!5859504))

(assert (=> b!4861650 m!5859314))

(declare-fun tp!1368000 () Bool)

(declare-fun tp!1368001 () Bool)

(declare-fun e!3039792 () Bool)

(declare-fun b!4861886 () Bool)

(assert (=> b!4861886 (= e!3039792 (and (inv!71738 (left!40574 (right!40904 (c!826857 totalInput!332)))) tp!1368000 (inv!71738 (right!40904 (right!40904 (c!826857 totalInput!332)))) tp!1368001))))

(declare-fun b!4861888 () Bool)

(declare-fun e!3039791 () Bool)

(declare-fun tp!1367999 () Bool)

(assert (=> b!4861888 (= e!3039791 tp!1367999)))

(declare-fun b!4861887 () Bool)

(assert (=> b!4861887 (= e!3039792 (and (inv!71743 (xs!17846 (right!40904 (c!826857 totalInput!332)))) e!3039791))))

(assert (=> b!4861650 (= tp!1367912 (and (inv!71738 (right!40904 (c!826857 totalInput!332))) e!3039792))))

(assert (= (and b!4861650 ((_ is Node!14540) (right!40904 (c!826857 totalInput!332)))) b!4861886))

(assert (= b!4861887 b!4861888))

(assert (= (and b!4861650 ((_ is Leaf!24257) (right!40904 (c!826857 totalInput!332)))) b!4861887))

(declare-fun m!5859506 () Bool)

(assert (=> b!4861886 m!5859506))

(declare-fun m!5859508 () Bool)

(assert (=> b!4861886 m!5859508))

(declare-fun m!5859510 () Bool)

(assert (=> b!4861887 m!5859510))

(assert (=> b!4861650 m!5859316))

(declare-fun b_lambda!193395 () Bool)

(assert (= b_lambda!193393 (or d!1560387 b_lambda!193395)))

(declare-fun bs!1173983 () Bool)

(declare-fun d!1560467 () Bool)

(assert (= bs!1173983 (and d!1560467 d!1560387)))

(assert (=> bs!1173983 (= (dynLambda!22409 lambda!243286 (h!62309 rules!1248)) (ruleValid!3623 thiss!11777 (h!62309 rules!1248)))))

(assert (=> bs!1173983 m!5859290))

(assert (=> b!4861775 d!1560467))

(check-sat (not b!4861846) b_and!342363 (not b!4861795) (not b!4861753) (not b!4861877) (not b!4861878) (not b!4861796) (not b!4861859) (not b!4861860) (not b!4861750) b_and!342365 (not b!4861725) (not d!1560419) (not d!1560415) (not b!4861735) (not b!4861751) (not b!4861885) (not bs!1173983) (not b_next!131301) (not b!4861887) (not b!4861776) (not d!1560455) (not b!4861870) (not b!4861712) (not b!4861880) (not b!4861868) (not b!4861855) (not b!4861749) (not b!4861874) (not b!4861769) (not d!1560465) (not b!4861886) (not b!4861794) (not b!4861840) (not b!4861854) (not b!4861838) b_and!342355 (not b!4861884) (not b!4861830) (not b_next!131289) (not b!4861797) (not b!4861724) (not b!4861876) (not b!4861752) (not b!4861798) (not b!4861881) b_and!342353 (not b_next!131293) (not b!4861754) (not b!4861762) (not b!4861856) (not b!4861845) (not b!4861843) (not b!4861873) (not b!4861727) (not b!4861799) (not b!4861883) (not b_next!131295) (not bm!337786) (not b!4861888) (not b!4861726) (not b!4861861) (not d!1560423) (not d!1560421) (not b!4861844) (not b!4861869) b_and!342357 (not b!4861633) (not b!4861832) (not b!4861867) tp_is_empty!35645 (not b_lambda!193395) (not b!4861864) (not b!4861770) (not b!4861809) (not b!4861792) (not b!4861865) (not b!4861650) (not b_next!131303) (not b!4861810) (not b!4861872) (not b!4861782) (not d!1560431) (not d!1560427) (not b!4861780) (not b!4861766) (not d!1560429) (not d!1560447) (not b!4861847) (not b!4861764) (not b!4861777) (not b!4861841) (not d!1560445) (not b!4861849) (not d!1560435) (not b_next!131291) (not b!4861800) b_and!342351 (not b!4861848) (not b!4861779) (not b!4861882) (not d!1560459) (not b!4861863) (not b!4861756))
(check-sat b_and!342365 (not b_next!131301) b_and!342355 (not b_next!131289) (not b_next!131295) b_and!342363 b_and!342357 (not b_next!131303) (not b_next!131291) b_and!342351 b_and!342353 (not b_next!131293))
