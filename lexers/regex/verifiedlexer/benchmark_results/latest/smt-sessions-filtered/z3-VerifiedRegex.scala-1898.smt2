; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93310 () Bool)

(assert start!93310)

(declare-fun bs!257928 () Bool)

(declare-fun b!1091198 () Bool)

(assert (= bs!257928 (and b!1091198 start!93310)))

(declare-fun lambda!41332 () Int)

(declare-fun lambda!41331 () Int)

(assert (=> bs!257928 (not (= lambda!41332 lambda!41331))))

(declare-fun b!1091207 () Bool)

(declare-fun e!690524 () Bool)

(assert (=> b!1091207 (= e!690524 true)))

(declare-fun b!1091206 () Bool)

(declare-fun e!690523 () Bool)

(assert (=> b!1091206 (= e!690523 e!690524)))

(assert (=> b!1091198 e!690523))

(assert (= b!1091206 b!1091207))

(assert (= b!1091198 b!1091206))

(declare-fun lambda!41333 () Int)

(assert (=> bs!257928 (not (= lambda!41333 lambda!41331))))

(assert (=> b!1091198 (not (= lambda!41333 lambda!41332))))

(declare-fun b!1091209 () Bool)

(declare-fun e!690526 () Bool)

(assert (=> b!1091209 (= e!690526 true)))

(declare-fun b!1091208 () Bool)

(declare-fun e!690525 () Bool)

(assert (=> b!1091208 (= e!690525 e!690526)))

(assert (=> b!1091198 e!690525))

(assert (= b!1091208 b!1091209))

(assert (= b!1091198 b!1091208))

(declare-fun lambda!41334 () Int)

(assert (=> bs!257928 (not (= lambda!41334 lambda!41331))))

(assert (=> b!1091198 (not (= lambda!41334 lambda!41332))))

(assert (=> b!1091198 (not (= lambda!41334 lambda!41333))))

(declare-fun b!1091211 () Bool)

(declare-fun e!690528 () Bool)

(assert (=> b!1091211 (= e!690528 true)))

(declare-fun b!1091210 () Bool)

(declare-fun e!690527 () Bool)

(assert (=> b!1091210 (= e!690527 e!690528)))

(assert (=> b!1091198 e!690527))

(assert (= b!1091210 b!1091211))

(assert (= b!1091198 b!1091210))

(declare-fun b!1091182 () Bool)

(declare-datatypes ((Unit!15880 0))(
  ( (Unit!15881) )
))
(declare-fun e!690513 () Unit!15880)

(declare-fun Unit!15882 () Unit!15880)

(assert (=> b!1091182 (= e!690513 Unit!15882)))

(declare-fun b!1091183 () Bool)

(declare-fun err!1975 () Unit!15880)

(assert (=> b!1091183 (= e!690513 err!1975)))

(declare-datatypes ((List!10487 0))(
  ( (Nil!10471) (Cons!10471 (h!15872 (_ BitVec 16)) (t!101985 List!10487)) )
))
(declare-datatypes ((TokenValue!1852 0))(
  ( (FloatLiteralValue!3704 (text!13409 List!10487)) (TokenValueExt!1851 (__x!7434 Int)) (Broken!9260 (value!58828 List!10487)) (Object!1867) (End!1852) (Def!1852) (Underscore!1852) (Match!1852) (Else!1852) (Error!1852) (Case!1852) (If!1852) (Extends!1852) (Abstract!1852) (Class!1852) (Val!1852) (DelimiterValue!3704 (del!1912 List!10487)) (KeywordValue!1858 (value!58829 List!10487)) (CommentValue!3704 (value!58830 List!10487)) (WhitespaceValue!3704 (value!58831 List!10487)) (IndentationValue!1852 (value!58832 List!10487)) (String!12829) (Int32!1852) (Broken!9261 (value!58833 List!10487)) (Boolean!1853) (Unit!15883) (OperatorValue!1855 (op!1912 List!10487)) (IdentifierValue!3704 (value!58834 List!10487)) (IdentifierValue!3705 (value!58835 List!10487)) (WhitespaceValue!3705 (value!58836 List!10487)) (True!3704) (False!3704) (Broken!9262 (value!58837 List!10487)) (Broken!9263 (value!58838 List!10487)) (True!3705) (RightBrace!1852) (RightBracket!1852) (Colon!1852) (Null!1852) (Comma!1852) (LeftBracket!1852) (False!3705) (LeftBrace!1852) (ImaginaryLiteralValue!1852 (text!13410 List!10487)) (StringLiteralValue!5556 (value!58839 List!10487)) (EOFValue!1852 (value!58840 List!10487)) (IdentValue!1852 (value!58841 List!10487)) (DelimiterValue!3705 (value!58842 List!10487)) (DedentValue!1852 (value!58843 List!10487)) (NewLineValue!1852 (value!58844 List!10487)) (IntegerValue!5556 (value!58845 (_ BitVec 32)) (text!13411 List!10487)) (IntegerValue!5557 (value!58846 Int) (text!13412 List!10487)) (Times!1852) (Or!1852) (Equal!1852) (Minus!1852) (Broken!9264 (value!58847 List!10487)) (And!1852) (Div!1852) (LessEqual!1852) (Mod!1852) (Concat!4907) (Not!1852) (Plus!1852) (SpaceValue!1852 (value!58848 List!10487)) (IntegerValue!5558 (value!58849 Int) (text!13413 List!10487)) (StringLiteralValue!5557 (text!13414 List!10487)) (FloatLiteralValue!3705 (text!13415 List!10487)) (BytesLiteralValue!1852 (value!58850 List!10487)) (CommentValue!3705 (value!58851 List!10487)) (StringLiteralValue!5558 (value!58852 List!10487)) (ErrorTokenValue!1852 (msg!1913 List!10487)) )
))
(declare-datatypes ((Regex!3055 0))(
  ( (ElementMatch!3055 (c!184926 (_ BitVec 16))) (Concat!4908 (regOne!6622 Regex!3055) (regTwo!6622 Regex!3055)) (EmptyExpr!3055) (Star!3055 (reg!3384 Regex!3055)) (EmptyLang!3055) (Union!3055 (regOne!6623 Regex!3055) (regTwo!6623 Regex!3055)) )
))
(declare-datatypes ((String!12830 0))(
  ( (String!12831 (value!58853 String)) )
))
(declare-datatypes ((IArray!6375 0))(
  ( (IArray!6376 (innerList!3245 List!10487)) )
))
(declare-datatypes ((Conc!3185 0))(
  ( (Node!3185 (left!8981 Conc!3185) (right!9311 Conc!3185) (csize!6600 Int) (cheight!3396 Int)) (Leaf!5084 (xs!5878 IArray!6375) (csize!6601 Int)) (Empty!3185) )
))
(declare-datatypes ((BalanceConc!6384 0))(
  ( (BalanceConc!6385 (c!184927 Conc!3185)) )
))
(declare-datatypes ((TokenValueInjection!3404 0))(
  ( (TokenValueInjection!3405 (toValue!2863 Int) (toChars!2722 Int)) )
))
(declare-datatypes ((Rule!3372 0))(
  ( (Rule!3373 (regex!1786 Regex!3055) (tag!2048 String!12830) (isSeparator!1786 Bool) (transformation!1786 TokenValueInjection!3404)) )
))
(declare-datatypes ((Token!3238 0))(
  ( (Token!3239 (value!58854 TokenValue!1852) (rule!3209 Rule!3372) (size!8094 Int) (originalCharacters!2342 List!10487)) )
))
(declare-datatypes ((List!10488 0))(
  ( (Nil!10472) (Cons!10472 (h!15873 Token!3238) (t!101986 List!10488)) )
))
(declare-datatypes ((IArray!6377 0))(
  ( (IArray!6378 (innerList!3246 List!10488)) )
))
(declare-datatypes ((Conc!3186 0))(
  ( (Node!3186 (left!8982 Conc!3186) (right!9312 Conc!3186) (csize!6602 Int) (cheight!3397 Int)) (Leaf!5085 (xs!5879 IArray!6377) (csize!6603 Int)) (Empty!3186) )
))
(declare-datatypes ((List!10489 0))(
  ( (Nil!10473) (Cons!10473 (h!15874 Rule!3372) (t!101987 List!10489)) )
))
(declare-datatypes ((BalanceConc!6386 0))(
  ( (BalanceConc!6387 (c!184928 Conc!3186)) )
))
(declare-datatypes ((PrintableTokens!288 0))(
  ( (PrintableTokens!289 (rules!9073 List!10489) (tokens!1345 BalanceConc!6386)) )
))
(declare-datatypes ((tuple2!11698 0))(
  ( (tuple2!11699 (_1!6675 Int) (_2!6675 PrintableTokens!288)) )
))
(declare-datatypes ((List!10490 0))(
  ( (Nil!10474) (Cons!10474 (h!15875 tuple2!11698) (t!101988 List!10490)) )
))
(declare-fun lt!365481 () List!10490)

(declare-fun lt!365473 () Unit!15880)

(declare-fun lt!365469 () tuple2!11698)

(declare-fun forallContained!488 (List!10490 Int tuple2!11698) Unit!15880)

(assert (=> b!1091183 (= lt!365473 (forallContained!488 lt!365481 lambda!41334 lt!365469))))

(assert (=> b!1091183 true))

(declare-fun b!1091184 () Bool)

(declare-fun e!690511 () Bool)

(assert (=> b!1091184 (= e!690511 true)))

(declare-fun lt!365485 () List!10490)

(declare-datatypes ((IArray!6379 0))(
  ( (IArray!6380 (innerList!3247 List!10490)) )
))
(declare-datatypes ((Conc!3187 0))(
  ( (Node!3187 (left!8983 Conc!3187) (right!9313 Conc!3187) (csize!6604 Int) (cheight!3398 Int)) (Leaf!5086 (xs!5880 IArray!6379) (csize!6605 Int)) (Empty!3187) )
))
(declare-datatypes ((BalanceConc!6388 0))(
  ( (BalanceConc!6389 (c!184929 Conc!3187)) )
))
(declare-fun objs!8 () BalanceConc!6388)

(declare-fun list!3752 (BalanceConc!6388) List!10490)

(declare-fun filter!236 (BalanceConc!6388 Int) BalanceConc!6388)

(assert (=> b!1091184 (= lt!365485 (list!3752 (filter!236 objs!8 lambda!41334)))))

(declare-fun lt!365489 () List!10490)

(declare-fun forall!2334 (List!10490 Int) Bool)

(assert (=> b!1091184 (forall!2334 lt!365489 lambda!41331)))

(declare-fun lt!365494 () Unit!15880)

(declare-fun lemmaForallSubseq!31 (List!10490 List!10490 Int) Unit!15880)

(assert (=> b!1091184 (= lt!365494 (lemmaForallSubseq!31 lt!365489 lt!365481 lambda!41331))))

(assert (=> b!1091184 (= lt!365489 (list!3752 (filter!236 objs!8 lambda!41333)))))

(declare-fun lt!365471 () List!10490)

(assert (=> b!1091184 (forall!2334 lt!365471 lambda!41331)))

(declare-fun lt!365482 () Unit!15880)

(assert (=> b!1091184 (= lt!365482 (lemmaForallSubseq!31 lt!365471 lt!365481 lambda!41331))))

(assert (=> b!1091184 (= lt!365471 (list!3752 (filter!236 objs!8 lambda!41332)))))

(declare-fun lt!365477 () Unit!15880)

(declare-fun filterSubseq!23 (List!10490 Int) Unit!15880)

(assert (=> b!1091184 (= lt!365477 (filterSubseq!23 lt!365481 lambda!41334))))

(declare-fun lt!365476 () Unit!15880)

(assert (=> b!1091184 (= lt!365476 (filterSubseq!23 lt!365481 lambda!41333))))

(declare-fun lt!365474 () Unit!15880)

(assert (=> b!1091184 (= lt!365474 (filterSubseq!23 lt!365481 lambda!41332))))

(declare-fun b!1091185 () Bool)

(declare-fun e!690507 () Unit!15880)

(declare-fun Unit!15884 () Unit!15880)

(assert (=> b!1091185 (= e!690507 Unit!15884)))

(declare-fun b!1091186 () Bool)

(declare-fun e!690517 () Bool)

(declare-fun e!690510 () Bool)

(assert (=> b!1091186 (= e!690517 e!690510)))

(declare-fun res!484906 () Bool)

(assert (=> b!1091186 (=> (not res!484906) (not e!690510))))

(declare-fun lt!365491 () Bool)

(assert (=> b!1091186 (= res!484906 (not lt!365491))))

(declare-fun lt!365479 () Unit!15880)

(declare-fun e!690515 () Unit!15880)

(assert (=> b!1091186 (= lt!365479 e!690515)))

(declare-fun c!184922 () Bool)

(assert (=> b!1091186 (= c!184922 lt!365491)))

(declare-fun lt!365495 () BalanceConc!6388)

(declare-fun contains!1762 (BalanceConc!6388 tuple2!11698) Bool)

(assert (=> b!1091186 (= lt!365491 (contains!1762 lt!365495 lt!365469))))

(declare-fun b!1091187 () Bool)

(declare-fun e!690509 () Unit!15880)

(declare-fun Unit!15885 () Unit!15880)

(assert (=> b!1091187 (= e!690509 Unit!15885)))

(declare-fun res!484908 () Bool)

(declare-fun e!690505 () Bool)

(assert (=> start!93310 (=> (not res!484908) (not e!690505))))

(declare-fun forall!2335 (BalanceConc!6388 Int) Bool)

(assert (=> start!93310 (= res!484908 (forall!2335 objs!8 lambda!41331))))

(assert (=> start!93310 e!690505))

(declare-fun e!690518 () Bool)

(declare-fun inv!13404 (BalanceConc!6388) Bool)

(assert (=> start!93310 (and (inv!13404 objs!8) e!690518)))

(declare-fun b!1091188 () Bool)

(declare-fun err!1977 () Unit!15880)

(assert (=> b!1091188 (= e!690509 err!1977)))

(declare-fun lt!365487 () Unit!15880)

(declare-fun lt!365484 () BalanceConc!6388)

(assert (=> b!1091188 (= lt!365487 (forallContained!488 (list!3752 lt!365484) lambda!41334 lt!365469))))

(assert (=> b!1091188 true))

(declare-fun b!1091189 () Bool)

(declare-fun e!690506 () Bool)

(assert (=> b!1091189 (= e!690510 (not e!690506))))

(declare-fun res!484913 () Bool)

(assert (=> b!1091189 (=> res!484913 e!690506)))

(declare-fun lt!365483 () Int)

(declare-fun size!8095 (BalanceConc!6388) Int)

(assert (=> b!1091189 (= res!484913 (>= (size!8095 lt!365495) lt!365483))))

(declare-fun e!690508 () Bool)

(assert (=> b!1091189 e!690508))

(declare-fun res!484909 () Bool)

(assert (=> b!1091189 (=> res!484909 e!690508)))

(declare-fun lt!365470 () Bool)

(assert (=> b!1091189 (= res!484909 lt!365470)))

(declare-fun isEmpty!6656 (List!10490) Bool)

(assert (=> b!1091189 (= lt!365470 (isEmpty!6656 lt!365481))))

(declare-fun lt!365488 () Unit!15880)

(declare-fun lemmaNotForallFilterShorter!29 (List!10490 Int) Unit!15880)

(assert (=> b!1091189 (= lt!365488 (lemmaNotForallFilterShorter!29 lt!365481 lambda!41332))))

(assert (=> b!1091189 (= lt!365481 (list!3752 objs!8))))

(declare-fun lt!365486 () Unit!15880)

(assert (=> b!1091189 (= lt!365486 e!690507)))

(declare-fun c!184925 () Bool)

(assert (=> b!1091189 (= c!184925 (forall!2335 objs!8 lambda!41332))))

(declare-fun b!1091190 () Bool)

(declare-fun Unit!15886 () Unit!15880)

(assert (=> b!1091190 (= e!690515 Unit!15886)))

(declare-fun b!1091191 () Bool)

(declare-fun e!690516 () Bool)

(assert (=> b!1091191 (= e!690506 e!690516)))

(declare-fun res!484910 () Bool)

(assert (=> b!1091191 (=> res!484910 e!690516)))

(declare-fun lt!365472 () Bool)

(assert (=> b!1091191 (= res!484910 lt!365472)))

(declare-fun lt!365480 () Unit!15880)

(assert (=> b!1091191 (= lt!365480 e!690509)))

(declare-fun c!184924 () Bool)

(assert (=> b!1091191 (= c!184924 lt!365472)))

(assert (=> b!1091191 (= lt!365472 (contains!1762 lt!365484 lt!365469))))

(declare-fun b!1091192 () Bool)

(declare-fun size!8096 (List!10490) Int)

(declare-fun filter!237 (List!10490 Int) List!10490)

(assert (=> b!1091192 (= e!690508 (< (size!8096 (filter!237 lt!365481 lambda!41332)) (size!8096 lt!365481)))))

(declare-fun b!1091193 () Bool)

(declare-fun e!690512 () Bool)

(assert (=> b!1091193 (= e!690512 (< (size!8096 (filter!237 lt!365481 lambda!41334)) (size!8096 lt!365481)))))

(declare-fun b!1091194 () Bool)

(declare-fun e!690514 () Bool)

(assert (=> b!1091194 (= e!690505 e!690514)))

(declare-fun res!484912 () Bool)

(assert (=> b!1091194 (=> (not res!484912) (not e!690514))))

(assert (=> b!1091194 (= res!484912 (> lt!365483 1))))

(assert (=> b!1091194 (= lt!365483 (size!8095 objs!8))))

(declare-fun b!1091195 () Bool)

(declare-fun err!1976 () Unit!15880)

(assert (=> b!1091195 (= e!690515 err!1976)))

(declare-fun lt!365475 () Unit!15880)

(assert (=> b!1091195 (= lt!365475 (forallContained!488 (list!3752 lt!365495) lambda!41332 lt!365469))))

(assert (=> b!1091195 true))

(declare-fun b!1091196 () Bool)

(assert (=> b!1091196 (= e!690516 e!690511)))

(declare-fun res!484907 () Bool)

(assert (=> b!1091196 (=> res!484907 e!690511)))

(assert (=> b!1091196 (= res!484907 (>= (size!8095 lt!365484) lt!365483))))

(assert (=> b!1091196 e!690512))

(declare-fun res!484911 () Bool)

(assert (=> b!1091196 (=> res!484911 e!690512)))

(assert (=> b!1091196 (= res!484911 lt!365470)))

(declare-fun lt!365478 () Unit!15880)

(assert (=> b!1091196 (= lt!365478 (lemmaNotForallFilterShorter!29 lt!365481 lambda!41334))))

(declare-fun lt!365490 () Unit!15880)

(assert (=> b!1091196 (= lt!365490 e!690513)))

(declare-fun c!184923 () Bool)

(assert (=> b!1091196 (= c!184923 (forall!2335 objs!8 lambda!41334))))

(declare-fun b!1091197 () Bool)

(declare-fun err!1974 () Unit!15880)

(assert (=> b!1091197 (= e!690507 err!1974)))

(declare-fun lt!365492 () Unit!15880)

(assert (=> b!1091197 (= lt!365492 (forallContained!488 (list!3752 objs!8) lambda!41332 lt!365469))))

(assert (=> b!1091197 true))

(assert (=> b!1091198 (= e!690514 e!690517)))

(declare-fun res!484905 () Bool)

(assert (=> b!1091198 (=> (not res!484905) (not e!690517))))

(assert (=> b!1091198 (= res!484905 (contains!1762 objs!8 lt!365469))))

(assert (=> b!1091198 (= lt!365484 (filter!236 objs!8 lambda!41334))))

(declare-fun lt!365493 () BalanceConc!6388)

(assert (=> b!1091198 (= lt!365493 (filter!236 objs!8 lambda!41333))))

(assert (=> b!1091198 (= lt!365495 (filter!236 objs!8 lambda!41332))))

(declare-fun apply!2041 (BalanceConc!6388 Int) tuple2!11698)

(assert (=> b!1091198 (= lt!365469 (apply!2041 objs!8 (ite (>= lt!365483 0) (div lt!365483 2) (- (div (- lt!365483) 2)))))))

(declare-fun b!1091199 () Bool)

(declare-fun tp!326456 () Bool)

(declare-fun inv!13405 (Conc!3187) Bool)

(assert (=> b!1091199 (= e!690518 (and (inv!13405 (c!184929 objs!8)) tp!326456))))

(assert (= (and start!93310 res!484908) b!1091194))

(assert (= (and b!1091194 res!484912) b!1091198))

(assert (= (and b!1091198 res!484905) b!1091186))

(assert (= (and b!1091186 c!184922) b!1091195))

(assert (= (and b!1091186 (not c!184922)) b!1091190))

(assert (= (and b!1091186 res!484906) b!1091189))

(assert (= (and b!1091189 c!184925) b!1091197))

(assert (= (and b!1091189 (not c!184925)) b!1091185))

(assert (= (and b!1091189 (not res!484909)) b!1091192))

(assert (= (and b!1091189 (not res!484913)) b!1091191))

(assert (= (and b!1091191 c!184924) b!1091188))

(assert (= (and b!1091191 (not c!184924)) b!1091187))

(assert (= (and b!1091191 (not res!484910)) b!1091196))

(assert (= (and b!1091196 c!184923) b!1091183))

(assert (= (and b!1091196 (not c!184923)) b!1091182))

(assert (= (and b!1091196 (not res!484911)) b!1091193))

(assert (= (and b!1091196 (not res!484907)) b!1091184))

(assert (= start!93310 b!1091199))

(declare-fun m!1241623 () Bool)

(assert (=> b!1091192 m!1241623))

(assert (=> b!1091192 m!1241623))

(declare-fun m!1241625 () Bool)

(assert (=> b!1091192 m!1241625))

(declare-fun m!1241627 () Bool)

(assert (=> b!1091192 m!1241627))

(declare-fun m!1241629 () Bool)

(assert (=> b!1091188 m!1241629))

(assert (=> b!1091188 m!1241629))

(declare-fun m!1241631 () Bool)

(assert (=> b!1091188 m!1241631))

(declare-fun m!1241633 () Bool)

(assert (=> b!1091193 m!1241633))

(assert (=> b!1091193 m!1241633))

(declare-fun m!1241635 () Bool)

(assert (=> b!1091193 m!1241635))

(assert (=> b!1091193 m!1241627))

(declare-fun m!1241637 () Bool)

(assert (=> b!1091186 m!1241637))

(declare-fun m!1241639 () Bool)

(assert (=> b!1091198 m!1241639))

(declare-fun m!1241641 () Bool)

(assert (=> b!1091198 m!1241641))

(declare-fun m!1241643 () Bool)

(assert (=> b!1091198 m!1241643))

(declare-fun m!1241645 () Bool)

(assert (=> b!1091198 m!1241645))

(declare-fun m!1241647 () Bool)

(assert (=> b!1091198 m!1241647))

(declare-fun m!1241649 () Bool)

(assert (=> b!1091195 m!1241649))

(assert (=> b!1091195 m!1241649))

(declare-fun m!1241651 () Bool)

(assert (=> b!1091195 m!1241651))

(declare-fun m!1241653 () Bool)

(assert (=> b!1091197 m!1241653))

(assert (=> b!1091197 m!1241653))

(declare-fun m!1241655 () Bool)

(assert (=> b!1091197 m!1241655))

(declare-fun m!1241657 () Bool)

(assert (=> b!1091194 m!1241657))

(declare-fun m!1241659 () Bool)

(assert (=> b!1091189 m!1241659))

(assert (=> b!1091189 m!1241653))

(declare-fun m!1241661 () Bool)

(assert (=> b!1091189 m!1241661))

(declare-fun m!1241663 () Bool)

(assert (=> b!1091189 m!1241663))

(declare-fun m!1241665 () Bool)

(assert (=> b!1091189 m!1241665))

(declare-fun m!1241667 () Bool)

(assert (=> start!93310 m!1241667))

(declare-fun m!1241669 () Bool)

(assert (=> start!93310 m!1241669))

(declare-fun m!1241671 () Bool)

(assert (=> b!1091196 m!1241671))

(declare-fun m!1241673 () Bool)

(assert (=> b!1091196 m!1241673))

(declare-fun m!1241675 () Bool)

(assert (=> b!1091196 m!1241675))

(declare-fun m!1241677 () Bool)

(assert (=> b!1091191 m!1241677))

(declare-fun m!1241679 () Bool)

(assert (=> b!1091183 m!1241679))

(declare-fun m!1241681 () Bool)

(assert (=> b!1091199 m!1241681))

(declare-fun m!1241683 () Bool)

(assert (=> b!1091184 m!1241683))

(declare-fun m!1241685 () Bool)

(assert (=> b!1091184 m!1241685))

(declare-fun m!1241687 () Bool)

(assert (=> b!1091184 m!1241687))

(declare-fun m!1241689 () Bool)

(assert (=> b!1091184 m!1241689))

(declare-fun m!1241691 () Bool)

(assert (=> b!1091184 m!1241691))

(assert (=> b!1091184 m!1241645))

(declare-fun m!1241693 () Bool)

(assert (=> b!1091184 m!1241693))

(assert (=> b!1091184 m!1241645))

(declare-fun m!1241695 () Bool)

(assert (=> b!1091184 m!1241695))

(assert (=> b!1091184 m!1241639))

(declare-fun m!1241697 () Bool)

(assert (=> b!1091184 m!1241697))

(declare-fun m!1241699 () Bool)

(assert (=> b!1091184 m!1241699))

(assert (=> b!1091184 m!1241641))

(declare-fun m!1241701 () Bool)

(assert (=> b!1091184 m!1241701))

(assert (=> b!1091184 m!1241639))

(assert (=> b!1091184 m!1241641))

(check-sat (not b!1091199) (not b!1091193) (not b!1091197) (not b!1091209) (not b!1091206) (not b!1091191) (not start!93310) (not b!1091198) (not b!1091189) (not b!1091210) (not b!1091196) (not b!1091183) (not b!1091211) (not b!1091184) (not b!1091188) (not b!1091186) (not b!1091192) (not b!1091207) (not b!1091195) (not b!1091194) (not b!1091208))
(check-sat)
