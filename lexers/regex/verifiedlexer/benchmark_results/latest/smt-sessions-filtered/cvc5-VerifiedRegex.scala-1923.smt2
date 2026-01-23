; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94960 () Bool)

(assert start!94960)

(declare-fun bs!259617 () Bool)

(declare-fun b!1102691 () Bool)

(assert (= bs!259617 (and b!1102691 start!94960)))

(declare-fun lambda!43626 () Int)

(declare-fun lambda!43625 () Int)

(assert (=> bs!259617 (not (= lambda!43626 lambda!43625))))

(declare-fun b!1102714 () Bool)

(declare-fun e!698531 () Bool)

(assert (=> b!1102714 (= e!698531 true)))

(declare-fun b!1102713 () Bool)

(declare-fun e!698530 () Bool)

(assert (=> b!1102713 (= e!698530 e!698531)))

(assert (=> b!1102691 e!698530))

(assert (= b!1102713 b!1102714))

(assert (= b!1102691 b!1102713))

(declare-fun lambda!43627 () Int)

(assert (=> bs!259617 (not (= lambda!43627 lambda!43625))))

(assert (=> b!1102691 (not (= lambda!43627 lambda!43626))))

(declare-fun b!1102716 () Bool)

(declare-fun e!698533 () Bool)

(assert (=> b!1102716 (= e!698533 true)))

(declare-fun b!1102715 () Bool)

(declare-fun e!698532 () Bool)

(assert (=> b!1102715 (= e!698532 e!698533)))

(assert (=> b!1102691 e!698532))

(assert (= b!1102715 b!1102716))

(assert (= b!1102691 b!1102715))

(declare-fun lambda!43628 () Int)

(assert (=> bs!259617 (not (= lambda!43628 lambda!43625))))

(assert (=> b!1102691 (not (= lambda!43628 lambda!43626))))

(assert (=> b!1102691 (not (= lambda!43628 lambda!43627))))

(declare-fun b!1102718 () Bool)

(declare-fun e!698535 () Bool)

(assert (=> b!1102718 (= e!698535 true)))

(declare-fun b!1102717 () Bool)

(declare-fun e!698534 () Bool)

(assert (=> b!1102717 (= e!698534 e!698535)))

(assert (=> b!1102691 e!698534))

(assert (= b!1102717 b!1102718))

(assert (= b!1102691 b!1102717))

(declare-fun b!1102688 () Bool)

(declare-datatypes ((Unit!16281 0))(
  ( (Unit!16282) )
))
(declare-fun e!698514 () Unit!16281)

(declare-fun Unit!16283 () Unit!16281)

(assert (=> b!1102688 (= e!698514 Unit!16283)))

(declare-fun b!1102689 () Bool)

(declare-fun e!698524 () Bool)

(declare-datatypes ((List!10683 0))(
  ( (Nil!10667) (Cons!10667 (h!16068 (_ BitVec 16)) (t!104261 List!10683)) )
))
(declare-datatypes ((TokenValue!1901 0))(
  ( (FloatLiteralValue!3802 (text!13752 List!10683)) (TokenValueExt!1900 (__x!7483 Int)) (Broken!9505 (value!60226 List!10683)) (Object!1916) (End!1901) (Def!1901) (Underscore!1901) (Match!1901) (Else!1901) (Error!1901) (Case!1901) (If!1901) (Extends!1901) (Abstract!1901) (Class!1901) (Val!1901) (DelimiterValue!3802 (del!1961 List!10683)) (KeywordValue!1907 (value!60227 List!10683)) (CommentValue!3802 (value!60228 List!10683)) (WhitespaceValue!3802 (value!60229 List!10683)) (IndentationValue!1901 (value!60230 List!10683)) (String!13076) (Int32!1901) (Broken!9506 (value!60231 List!10683)) (Boolean!1902) (Unit!16284) (OperatorValue!1904 (op!1961 List!10683)) (IdentifierValue!3802 (value!60232 List!10683)) (IdentifierValue!3803 (value!60233 List!10683)) (WhitespaceValue!3803 (value!60234 List!10683)) (True!3802) (False!3802) (Broken!9507 (value!60235 List!10683)) (Broken!9508 (value!60236 List!10683)) (True!3803) (RightBrace!1901) (RightBracket!1901) (Colon!1901) (Null!1901) (Comma!1901) (LeftBracket!1901) (False!3803) (LeftBrace!1901) (ImaginaryLiteralValue!1901 (text!13753 List!10683)) (StringLiteralValue!5703 (value!60237 List!10683)) (EOFValue!1901 (value!60238 List!10683)) (IdentValue!1901 (value!60239 List!10683)) (DelimiterValue!3803 (value!60240 List!10683)) (DedentValue!1901 (value!60241 List!10683)) (NewLineValue!1901 (value!60242 List!10683)) (IntegerValue!5703 (value!60243 (_ BitVec 32)) (text!13754 List!10683)) (IntegerValue!5704 (value!60244 Int) (text!13755 List!10683)) (Times!1901) (Or!1901) (Equal!1901) (Minus!1901) (Broken!9509 (value!60245 List!10683)) (And!1901) (Div!1901) (LessEqual!1901) (Mod!1901) (Concat!5005) (Not!1901) (Plus!1901) (SpaceValue!1901 (value!60246 List!10683)) (IntegerValue!5705 (value!60247 Int) (text!13756 List!10683)) (StringLiteralValue!5704 (text!13757 List!10683)) (FloatLiteralValue!3803 (text!13758 List!10683)) (BytesLiteralValue!1901 (value!60248 List!10683)) (CommentValue!3803 (value!60249 List!10683)) (StringLiteralValue!5705 (value!60250 List!10683)) (ErrorTokenValue!1901 (msg!1962 List!10683)) )
))
(declare-datatypes ((Regex!3104 0))(
  ( (ElementMatch!3104 (c!187182 (_ BitVec 16))) (Concat!5006 (regOne!6720 Regex!3104) (regTwo!6720 Regex!3104)) (EmptyExpr!3104) (Star!3104 (reg!3433 Regex!3104)) (EmptyLang!3104) (Union!3104 (regOne!6721 Regex!3104) (regTwo!6721 Regex!3104)) )
))
(declare-datatypes ((String!13077 0))(
  ( (String!13078 (value!60251 String)) )
))
(declare-datatypes ((IArray!6669 0))(
  ( (IArray!6670 (innerList!3392 List!10683)) )
))
(declare-datatypes ((Conc!3332 0))(
  ( (Node!3332 (left!9239 Conc!3332) (right!9569 Conc!3332) (csize!6894 Int) (cheight!3543 Int)) (Leaf!5256 (xs!6025 IArray!6669) (csize!6895 Int)) (Empty!3332) )
))
(declare-datatypes ((BalanceConc!6678 0))(
  ( (BalanceConc!6679 (c!187183 Conc!3332)) )
))
(declare-datatypes ((TokenValueInjection!3502 0))(
  ( (TokenValueInjection!3503 (toValue!2912 Int) (toChars!2771 Int)) )
))
(declare-datatypes ((Rule!3470 0))(
  ( (Rule!3471 (regex!1835 Regex!3104) (tag!2097 String!13077) (isSeparator!1835 Bool) (transformation!1835 TokenValueInjection!3502)) )
))
(declare-datatypes ((List!10684 0))(
  ( (Nil!10668) (Cons!10668 (h!16069 Rule!3470) (t!104262 List!10684)) )
))
(declare-datatypes ((Token!3336 0))(
  ( (Token!3337 (value!60252 TokenValue!1901) (rule!3258 Rule!3470) (size!8287 Int) (originalCharacters!2391 List!10683)) )
))
(declare-datatypes ((List!10685 0))(
  ( (Nil!10669) (Cons!10669 (h!16070 Token!3336) (t!104263 List!10685)) )
))
(declare-datatypes ((IArray!6671 0))(
  ( (IArray!6672 (innerList!3393 List!10685)) )
))
(declare-datatypes ((Conc!3333 0))(
  ( (Node!3333 (left!9240 Conc!3333) (right!9570 Conc!3333) (csize!6896 Int) (cheight!3544 Int)) (Leaf!5257 (xs!6026 IArray!6671) (csize!6897 Int)) (Empty!3333) )
))
(declare-datatypes ((BalanceConc!6680 0))(
  ( (BalanceConc!6681 (c!187184 Conc!3333)) )
))
(declare-datatypes ((PrintableTokens!386 0))(
  ( (PrintableTokens!387 (rules!9122 List!10684) (tokens!1394 BalanceConc!6680)) )
))
(declare-datatypes ((tuple2!11796 0))(
  ( (tuple2!11797 (_1!6724 Int) (_2!6724 PrintableTokens!386)) )
))
(declare-datatypes ((List!10686 0))(
  ( (Nil!10670) (Cons!10670 (h!16071 tuple2!11796) (t!104264 List!10686)) )
))
(declare-fun lt!372902 () List!10686)

(declare-fun size!8288 (List!10686) Int)

(declare-fun filter!369 (List!10686 Int) List!10686)

(assert (=> b!1102689 (= e!698524 (< (size!8288 (filter!369 lt!372902 lambda!43628)) (size!8288 lt!372902)))))

(declare-fun b!1102690 () Bool)

(declare-fun e!698513 () Bool)

(declare-fun e!698511 () Bool)

(assert (=> b!1102690 (= e!698513 e!698511)))

(declare-fun res!488939 () Bool)

(assert (=> b!1102690 (=> res!488939 e!698511)))

(declare-datatypes ((IArray!6673 0))(
  ( (IArray!6674 (innerList!3394 List!10686)) )
))
(declare-datatypes ((Conc!3334 0))(
  ( (Node!3334 (left!9241 Conc!3334) (right!9571 Conc!3334) (csize!6898 Int) (cheight!3545 Int)) (Leaf!5258 (xs!6027 IArray!6673) (csize!6899 Int)) (Empty!3334) )
))
(declare-datatypes ((BalanceConc!6682 0))(
  ( (BalanceConc!6683 (c!187185 Conc!3334)) )
))
(declare-fun lt!372892 () BalanceConc!6682)

(declare-fun lt!372889 () Int)

(declare-fun size!8289 (BalanceConc!6682) Int)

(assert (=> b!1102690 (= res!488939 (>= (size!8289 lt!372892) lt!372889))))

(assert (=> b!1102690 e!698524))

(declare-fun res!488935 () Bool)

(assert (=> b!1102690 (=> res!488935 e!698524)))

(declare-fun lt!372909 () Bool)

(assert (=> b!1102690 (= res!488935 lt!372909)))

(declare-fun lt!372896 () Unit!16281)

(declare-fun lemmaNotForallFilterShorter!62 (List!10686 Int) Unit!16281)

(assert (=> b!1102690 (= lt!372896 (lemmaNotForallFilterShorter!62 lt!372902 lambda!43628))))

(declare-fun lt!372904 () Unit!16281)

(assert (=> b!1102690 (= lt!372904 e!698514)))

(declare-fun c!187181 () Bool)

(declare-fun objs!8 () BalanceConc!6682)

(declare-fun forall!2481 (BalanceConc!6682 Int) Bool)

(assert (=> b!1102690 (= c!187181 (forall!2481 objs!8 lambda!43628))))

(declare-fun e!698512 () Bool)

(declare-fun e!698517 () Bool)

(assert (=> b!1102691 (= e!698512 e!698517)))

(declare-fun res!488931 () Bool)

(assert (=> b!1102691 (=> (not res!488931) (not e!698517))))

(declare-fun lt!372888 () tuple2!11796)

(declare-fun contains!1894 (BalanceConc!6682 tuple2!11796) Bool)

(assert (=> b!1102691 (= res!488931 (contains!1894 objs!8 lt!372888))))

(declare-fun filter!370 (BalanceConc!6682 Int) BalanceConc!6682)

(assert (=> b!1102691 (= lt!372892 (filter!370 objs!8 lambda!43628))))

(declare-fun lt!372908 () BalanceConc!6682)

(assert (=> b!1102691 (= lt!372908 (filter!370 objs!8 lambda!43627))))

(declare-fun lt!372893 () BalanceConc!6682)

(assert (=> b!1102691 (= lt!372893 (filter!370 objs!8 lambda!43626))))

(declare-fun apply!2166 (BalanceConc!6682 Int) tuple2!11796)

(assert (=> b!1102691 (= lt!372888 (apply!2166 objs!8 (ite (>= lt!372889 0) (div lt!372889 2) (- (div (- lt!372889) 2)))))))

(declare-fun b!1102692 () Bool)

(declare-fun err!2736 () Unit!16281)

(assert (=> b!1102692 (= e!698514 err!2736)))

(declare-fun lt!372900 () Unit!16281)

(declare-fun forallContained!529 (List!10686 Int tuple2!11796) Unit!16281)

(assert (=> b!1102692 (= lt!372900 (forallContained!529 lt!372902 lambda!43628 lt!372888))))

(assert (=> b!1102692 true))

(declare-fun b!1102693 () Bool)

(declare-fun e!698521 () Bool)

(declare-fun e!698519 () Bool)

(assert (=> b!1102693 (= e!698521 (not e!698519))))

(declare-fun res!488938 () Bool)

(assert (=> b!1102693 (=> res!488938 e!698519)))

(assert (=> b!1102693 (= res!488938 (>= (size!8289 lt!372893) lt!372889))))

(declare-fun e!698522 () Bool)

(assert (=> b!1102693 e!698522))

(declare-fun res!488930 () Bool)

(assert (=> b!1102693 (=> res!488930 e!698522)))

(assert (=> b!1102693 (= res!488930 lt!372909)))

(declare-fun isEmpty!6700 (List!10686) Bool)

(assert (=> b!1102693 (= lt!372909 (isEmpty!6700 lt!372902))))

(declare-fun lt!372890 () Unit!16281)

(assert (=> b!1102693 (= lt!372890 (lemmaNotForallFilterShorter!62 lt!372902 lambda!43626))))

(declare-fun list!3849 (BalanceConc!6682) List!10686)

(assert (=> b!1102693 (= lt!372902 (list!3849 objs!8))))

(declare-fun lt!372891 () Unit!16281)

(declare-fun e!698520 () Unit!16281)

(assert (=> b!1102693 (= lt!372891 e!698520)))

(declare-fun c!187179 () Bool)

(assert (=> b!1102693 (= c!187179 (forall!2481 objs!8 lambda!43626))))

(declare-fun b!1102694 () Bool)

(declare-fun err!2735 () Unit!16281)

(assert (=> b!1102694 (= e!698520 err!2735)))

(declare-fun lt!372910 () Unit!16281)

(assert (=> b!1102694 (= lt!372910 (forallContained!529 (list!3849 objs!8) lambda!43626 lt!372888))))

(assert (=> b!1102694 true))

(declare-fun b!1102695 () Bool)

(declare-fun Unit!16285 () Unit!16281)

(assert (=> b!1102695 (= e!698520 Unit!16285)))

(declare-fun b!1102696 () Bool)

(assert (=> b!1102696 (= e!698519 e!698513)))

(declare-fun res!488933 () Bool)

(assert (=> b!1102696 (=> res!488933 e!698513)))

(declare-fun lt!372905 () Bool)

(assert (=> b!1102696 (= res!488933 lt!372905)))

(declare-fun lt!372898 () Unit!16281)

(declare-fun e!698523 () Unit!16281)

(assert (=> b!1102696 (= lt!372898 e!698523)))

(declare-fun c!187180 () Bool)

(assert (=> b!1102696 (= c!187180 lt!372905)))

(assert (=> b!1102696 (= lt!372905 (contains!1894 lt!372892 lt!372888))))

(declare-fun b!1102697 () Bool)

(declare-fun Unit!16286 () Unit!16281)

(assert (=> b!1102697 (= e!698523 Unit!16286)))

(declare-fun b!1102698 () Bool)

(declare-fun e!698525 () Bool)

(declare-fun lt!372907 () List!10686)

(declare-fun subseq!154 (List!10686 List!10686) Bool)

(assert (=> b!1102698 (= e!698525 (subseq!154 lt!372907 lt!372902))))

(declare-fun b!1102699 () Bool)

(declare-fun e!698516 () Bool)

(assert (=> b!1102699 (= e!698516 e!698512)))

(declare-fun res!488936 () Bool)

(assert (=> b!1102699 (=> (not res!488936) (not e!698512))))

(assert (=> b!1102699 (= res!488936 (> lt!372889 1))))

(assert (=> b!1102699 (= lt!372889 (size!8289 objs!8))))

(declare-fun b!1102700 () Bool)

(declare-fun err!2734 () Unit!16281)

(assert (=> b!1102700 (= e!698523 err!2734)))

(declare-fun lt!372895 () Unit!16281)

(assert (=> b!1102700 (= lt!372895 (forallContained!529 (list!3849 lt!372892) lambda!43628 lt!372888))))

(assert (=> b!1102700 true))

(declare-fun b!1102701 () Bool)

(declare-fun e!698515 () Bool)

(declare-fun tp!327161 () Bool)

(declare-fun inv!13718 (Conc!3334) Bool)

(assert (=> b!1102701 (= e!698515 (and (inv!13718 (c!187185 objs!8)) tp!327161))))

(declare-fun b!1102702 () Bool)

(assert (=> b!1102702 (= e!698511 e!698525)))

(declare-fun res!488932 () Bool)

(assert (=> b!1102702 (=> res!488932 e!698525)))

(declare-fun forall!2482 (List!10686 Int) Bool)

(assert (=> b!1102702 (= res!488932 (not (forall!2482 lt!372902 lambda!43625)))))

(assert (=> b!1102702 (= lt!372907 (list!3849 (filter!370 objs!8 lambda!43626)))))

(declare-fun lt!372901 () Unit!16281)

(declare-fun filterSubseq!44 (List!10686 Int) Unit!16281)

(assert (=> b!1102702 (= lt!372901 (filterSubseq!44 lt!372902 lambda!43628))))

(declare-fun lt!372903 () Unit!16281)

(assert (=> b!1102702 (= lt!372903 (filterSubseq!44 lt!372902 lambda!43627))))

(declare-fun lt!372897 () Unit!16281)

(assert (=> b!1102702 (= lt!372897 (filterSubseq!44 lt!372902 lambda!43626))))

(declare-fun b!1102703 () Bool)

(assert (=> b!1102703 (= e!698517 e!698521)))

(declare-fun res!488934 () Bool)

(assert (=> b!1102703 (=> (not res!488934) (not e!698521))))

(declare-fun lt!372906 () Bool)

(assert (=> b!1102703 (= res!488934 (not lt!372906))))

(declare-fun lt!372899 () Unit!16281)

(declare-fun e!698518 () Unit!16281)

(assert (=> b!1102703 (= lt!372899 e!698518)))

(declare-fun c!187178 () Bool)

(assert (=> b!1102703 (= c!187178 lt!372906)))

(assert (=> b!1102703 (= lt!372906 (contains!1894 lt!372893 lt!372888))))

(declare-fun b!1102704 () Bool)

(declare-fun err!2737 () Unit!16281)

(assert (=> b!1102704 (= e!698518 err!2737)))

(declare-fun lt!372894 () Unit!16281)

(assert (=> b!1102704 (= lt!372894 (forallContained!529 (list!3849 lt!372893) lambda!43626 lt!372888))))

(assert (=> b!1102704 true))

(declare-fun res!488937 () Bool)

(assert (=> start!94960 (=> (not res!488937) (not e!698516))))

(assert (=> start!94960 (= res!488937 (forall!2481 objs!8 lambda!43625))))

(assert (=> start!94960 e!698516))

(declare-fun inv!13719 (BalanceConc!6682) Bool)

(assert (=> start!94960 (and (inv!13719 objs!8) e!698515)))

(declare-fun b!1102705 () Bool)

(declare-fun Unit!16287 () Unit!16281)

(assert (=> b!1102705 (= e!698518 Unit!16287)))

(declare-fun b!1102706 () Bool)

(assert (=> b!1102706 (= e!698522 (< (size!8288 (filter!369 lt!372902 lambda!43626)) (size!8288 lt!372902)))))

(assert (= (and start!94960 res!488937) b!1102699))

(assert (= (and b!1102699 res!488936) b!1102691))

(assert (= (and b!1102691 res!488931) b!1102703))

(assert (= (and b!1102703 c!187178) b!1102704))

(assert (= (and b!1102703 (not c!187178)) b!1102705))

(assert (= (and b!1102703 res!488934) b!1102693))

(assert (= (and b!1102693 c!187179) b!1102694))

(assert (= (and b!1102693 (not c!187179)) b!1102695))

(assert (= (and b!1102693 (not res!488930)) b!1102706))

(assert (= (and b!1102693 (not res!488938)) b!1102696))

(assert (= (and b!1102696 c!187180) b!1102700))

(assert (= (and b!1102696 (not c!187180)) b!1102697))

(assert (= (and b!1102696 (not res!488933)) b!1102690))

(assert (= (and b!1102690 c!187181) b!1102692))

(assert (= (and b!1102690 (not c!187181)) b!1102688))

(assert (= (and b!1102690 (not res!488935)) b!1102689))

(assert (= (and b!1102690 (not res!488939)) b!1102702))

(assert (= (and b!1102702 (not res!488932)) b!1102698))

(assert (= start!94960 b!1102701))

(declare-fun m!1258771 () Bool)

(assert (=> b!1102693 m!1258771))

(declare-fun m!1258773 () Bool)

(assert (=> b!1102693 m!1258773))

(declare-fun m!1258775 () Bool)

(assert (=> b!1102693 m!1258775))

(declare-fun m!1258777 () Bool)

(assert (=> b!1102693 m!1258777))

(declare-fun m!1258779 () Bool)

(assert (=> b!1102693 m!1258779))

(assert (=> b!1102694 m!1258771))

(assert (=> b!1102694 m!1258771))

(declare-fun m!1258781 () Bool)

(assert (=> b!1102694 m!1258781))

(declare-fun m!1258783 () Bool)

(assert (=> b!1102702 m!1258783))

(declare-fun m!1258785 () Bool)

(assert (=> b!1102702 m!1258785))

(declare-fun m!1258787 () Bool)

(assert (=> b!1102702 m!1258787))

(declare-fun m!1258789 () Bool)

(assert (=> b!1102702 m!1258789))

(declare-fun m!1258791 () Bool)

(assert (=> b!1102702 m!1258791))

(assert (=> b!1102702 m!1258789))

(declare-fun m!1258793 () Bool)

(assert (=> b!1102702 m!1258793))

(declare-fun m!1258795 () Bool)

(assert (=> b!1102701 m!1258795))

(declare-fun m!1258797 () Bool)

(assert (=> b!1102704 m!1258797))

(assert (=> b!1102704 m!1258797))

(declare-fun m!1258799 () Bool)

(assert (=> b!1102704 m!1258799))

(declare-fun m!1258801 () Bool)

(assert (=> b!1102691 m!1258801))

(declare-fun m!1258803 () Bool)

(assert (=> b!1102691 m!1258803))

(declare-fun m!1258805 () Bool)

(assert (=> b!1102691 m!1258805))

(assert (=> b!1102691 m!1258789))

(declare-fun m!1258807 () Bool)

(assert (=> b!1102691 m!1258807))

(declare-fun m!1258809 () Bool)

(assert (=> b!1102696 m!1258809))

(declare-fun m!1258811 () Bool)

(assert (=> b!1102699 m!1258811))

(declare-fun m!1258813 () Bool)

(assert (=> b!1102703 m!1258813))

(declare-fun m!1258815 () Bool)

(assert (=> b!1102690 m!1258815))

(declare-fun m!1258817 () Bool)

(assert (=> b!1102690 m!1258817))

(declare-fun m!1258819 () Bool)

(assert (=> b!1102690 m!1258819))

(declare-fun m!1258821 () Bool)

(assert (=> b!1102698 m!1258821))

(declare-fun m!1258823 () Bool)

(assert (=> b!1102692 m!1258823))

(declare-fun m!1258825 () Bool)

(assert (=> b!1102706 m!1258825))

(assert (=> b!1102706 m!1258825))

(declare-fun m!1258827 () Bool)

(assert (=> b!1102706 m!1258827))

(declare-fun m!1258829 () Bool)

(assert (=> b!1102706 m!1258829))

(declare-fun m!1258831 () Bool)

(assert (=> b!1102700 m!1258831))

(assert (=> b!1102700 m!1258831))

(declare-fun m!1258833 () Bool)

(assert (=> b!1102700 m!1258833))

(declare-fun m!1258835 () Bool)

(assert (=> start!94960 m!1258835))

(declare-fun m!1258837 () Bool)

(assert (=> start!94960 m!1258837))

(declare-fun m!1258839 () Bool)

(assert (=> b!1102689 m!1258839))

(assert (=> b!1102689 m!1258839))

(declare-fun m!1258841 () Bool)

(assert (=> b!1102689 m!1258841))

(assert (=> b!1102689 m!1258829))

(push 1)

(assert (not b!1102692))

(assert (not b!1102713))

(assert (not b!1102694))

(assert (not start!94960))

(assert (not b!1102714))

(assert (not b!1102698))

(assert (not b!1102718))

(assert (not b!1102689))

(assert (not b!1102715))

(assert (not b!1102717))

(assert (not b!1102706))

(assert (not b!1102716))

(assert (not b!1102702))

(assert (not b!1102704))

(assert (not b!1102693))

(assert (not b!1102690))

(assert (not b!1102699))

(assert (not b!1102696))

(assert (not b!1102700))

(assert (not b!1102691))

(assert (not b!1102701))

(assert (not b!1102703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311986 () Bool)

(declare-fun e!698593 () Bool)

(assert (=> d!311986 e!698593))

(declare-fun res!488972 () Bool)

(assert (=> d!311986 (=> (not res!488972) (not e!698593))))

(declare-fun isBalanced!922 (Conc!3334) Bool)

(declare-fun filter!373 (Conc!3334 Int) Conc!3334)

(assert (=> d!311986 (= res!488972 (isBalanced!922 (filter!373 (c!187185 objs!8) lambda!43626)))))

(declare-fun lt!372982 () BalanceConc!6682)

(assert (=> d!311986 (= lt!372982 (BalanceConc!6683 (filter!373 (c!187185 objs!8) lambda!43626)))))

(assert (=> d!311986 (= (filter!370 objs!8 lambda!43626) lt!372982)))

(declare-fun b!1102790 () Bool)

(assert (=> b!1102790 (= e!698593 (= (list!3849 lt!372982) (filter!369 (list!3849 objs!8) lambda!43626)))))

(assert (= (and d!311986 res!488972) b!1102790))

(declare-fun m!1258915 () Bool)

(assert (=> d!311986 m!1258915))

(assert (=> d!311986 m!1258915))

(declare-fun m!1258917 () Bool)

(assert (=> d!311986 m!1258917))

(declare-fun m!1258919 () Bool)

(assert (=> b!1102790 m!1258919))

(assert (=> b!1102790 m!1258771))

(assert (=> b!1102790 m!1258771))

(declare-fun m!1258921 () Bool)

(assert (=> b!1102790 m!1258921))

(assert (=> b!1102702 d!311986))

(declare-fun d!311990 () Bool)

(assert (=> d!311990 (subseq!154 (filter!369 lt!372902 lambda!43628) lt!372902)))

(declare-fun lt!372985 () Unit!16281)

(declare-fun choose!7115 (List!10686 Int) Unit!16281)

(assert (=> d!311990 (= lt!372985 (choose!7115 lt!372902 lambda!43628))))

(assert (=> d!311990 (= (filterSubseq!44 lt!372902 lambda!43628) lt!372985)))

(declare-fun bs!259619 () Bool)

(assert (= bs!259619 d!311990))

(assert (=> bs!259619 m!1258839))

(assert (=> bs!259619 m!1258839))

(declare-fun m!1258923 () Bool)

(assert (=> bs!259619 m!1258923))

(declare-fun m!1258925 () Bool)

(assert (=> bs!259619 m!1258925))

(assert (=> b!1102702 d!311990))

(declare-fun d!311992 () Bool)

(assert (=> d!311992 (subseq!154 (filter!369 lt!372902 lambda!43626) lt!372902)))

(declare-fun lt!372986 () Unit!16281)

(assert (=> d!311992 (= lt!372986 (choose!7115 lt!372902 lambda!43626))))

(assert (=> d!311992 (= (filterSubseq!44 lt!372902 lambda!43626) lt!372986)))

(declare-fun bs!259620 () Bool)

(assert (= bs!259620 d!311992))

(assert (=> bs!259620 m!1258825))

(assert (=> bs!259620 m!1258825))

(declare-fun m!1258927 () Bool)

(assert (=> bs!259620 m!1258927))

(declare-fun m!1258929 () Bool)

(assert (=> bs!259620 m!1258929))

(assert (=> b!1102702 d!311992))

(declare-fun d!311994 () Bool)

(declare-fun res!488979 () Bool)

(declare-fun e!698600 () Bool)

(assert (=> d!311994 (=> res!488979 e!698600)))

(assert (=> d!311994 (= res!488979 (is-Nil!10670 lt!372902))))

(assert (=> d!311994 (= (forall!2482 lt!372902 lambda!43625) e!698600)))

(declare-fun b!1102797 () Bool)

(declare-fun e!698601 () Bool)

(assert (=> b!1102797 (= e!698600 e!698601)))

(declare-fun res!488980 () Bool)

(assert (=> b!1102797 (=> (not res!488980) (not e!698601))))

(declare-fun dynLambda!4704 (Int tuple2!11796) Bool)

(assert (=> b!1102797 (= res!488980 (dynLambda!4704 lambda!43625 (h!16071 lt!372902)))))

(declare-fun b!1102798 () Bool)

(assert (=> b!1102798 (= e!698601 (forall!2482 (t!104264 lt!372902) lambda!43625))))

(assert (= (and d!311994 (not res!488979)) b!1102797))

(assert (= (and b!1102797 res!488980) b!1102798))

(declare-fun b_lambda!32379 () Bool)

(assert (=> (not b_lambda!32379) (not b!1102797)))

(declare-fun m!1258931 () Bool)

(assert (=> b!1102797 m!1258931))

(declare-fun m!1258933 () Bool)

(assert (=> b!1102798 m!1258933))

(assert (=> b!1102702 d!311994))

(declare-fun d!311996 () Bool)

(assert (=> d!311996 (subseq!154 (filter!369 lt!372902 lambda!43627) lt!372902)))

(declare-fun lt!372989 () Unit!16281)

(assert (=> d!311996 (= lt!372989 (choose!7115 lt!372902 lambda!43627))))

(assert (=> d!311996 (= (filterSubseq!44 lt!372902 lambda!43627) lt!372989)))

(declare-fun bs!259621 () Bool)

(assert (= bs!259621 d!311996))

(declare-fun m!1258935 () Bool)

(assert (=> bs!259621 m!1258935))

(assert (=> bs!259621 m!1258935))

(declare-fun m!1258937 () Bool)

(assert (=> bs!259621 m!1258937))

(declare-fun m!1258939 () Bool)

(assert (=> bs!259621 m!1258939))

(assert (=> b!1102702 d!311996))

(declare-fun d!311998 () Bool)

(declare-fun list!3851 (Conc!3334) List!10686)

(assert (=> d!311998 (= (list!3849 (filter!370 objs!8 lambda!43626)) (list!3851 (c!187185 (filter!370 objs!8 lambda!43626))))))

(declare-fun bs!259622 () Bool)

(assert (= bs!259622 d!311998))

(declare-fun m!1258941 () Bool)

(assert (=> bs!259622 m!1258941))

(assert (=> b!1102702 d!311998))

(declare-fun d!312000 () Bool)

(declare-fun lt!372994 () Bool)

(declare-fun contains!1896 (List!10686 tuple2!11796) Bool)

(assert (=> d!312000 (= lt!372994 (contains!1896 (list!3849 lt!372893) lt!372888))))

(declare-fun contains!1897 (Conc!3334 tuple2!11796) Bool)

(assert (=> d!312000 (= lt!372994 (contains!1897 (c!187185 lt!372893) lt!372888))))

(assert (=> d!312000 (= (contains!1894 lt!372893 lt!372888) lt!372994)))

(declare-fun bs!259623 () Bool)

(assert (= bs!259623 d!312000))

(assert (=> bs!259623 m!1258797))

(assert (=> bs!259623 m!1258797))

(declare-fun m!1258959 () Bool)

(assert (=> bs!259623 m!1258959))

(declare-fun m!1258961 () Bool)

(assert (=> bs!259623 m!1258961))

(assert (=> b!1102703 d!312000))

(declare-fun d!312006 () Bool)

(assert (=> d!312006 (dynLambda!4704 lambda!43628 lt!372888)))

(declare-fun lt!372997 () Unit!16281)

(declare-fun choose!7116 (List!10686 Int tuple2!11796) Unit!16281)

(assert (=> d!312006 (= lt!372997 (choose!7116 lt!372902 lambda!43628 lt!372888))))

(declare-fun e!698606 () Bool)

(assert (=> d!312006 e!698606))

(declare-fun res!488985 () Bool)

(assert (=> d!312006 (=> (not res!488985) (not e!698606))))

(assert (=> d!312006 (= res!488985 (forall!2482 lt!372902 lambda!43628))))

(assert (=> d!312006 (= (forallContained!529 lt!372902 lambda!43628 lt!372888) lt!372997)))

(declare-fun b!1102803 () Bool)

(assert (=> b!1102803 (= e!698606 (contains!1896 lt!372902 lt!372888))))

(assert (= (and d!312006 res!488985) b!1102803))

(declare-fun b_lambda!32385 () Bool)

(assert (=> (not b_lambda!32385) (not d!312006)))

(declare-fun m!1258965 () Bool)

(assert (=> d!312006 m!1258965))

(declare-fun m!1258967 () Bool)

(assert (=> d!312006 m!1258967))

(declare-fun m!1258969 () Bool)

(assert (=> d!312006 m!1258969))

(declare-fun m!1258971 () Bool)

(assert (=> b!1102803 m!1258971))

(assert (=> b!1102692 d!312006))

(declare-fun d!312010 () Bool)

(declare-fun lt!373002 () Bool)

(assert (=> d!312010 (= lt!373002 (forall!2482 (list!3849 objs!8) lambda!43626))))

(declare-fun forall!2485 (Conc!3334 Int) Bool)

(assert (=> d!312010 (= lt!373002 (forall!2485 (c!187185 objs!8) lambda!43626))))

(assert (=> d!312010 (= (forall!2481 objs!8 lambda!43626) lt!373002)))

(declare-fun bs!259625 () Bool)

(assert (= bs!259625 d!312010))

(assert (=> bs!259625 m!1258771))

(assert (=> bs!259625 m!1258771))

(declare-fun m!1258973 () Bool)

(assert (=> bs!259625 m!1258973))

(declare-fun m!1258975 () Bool)

(assert (=> bs!259625 m!1258975))

(assert (=> b!1102693 d!312010))

(declare-fun d!312012 () Bool)

(assert (=> d!312012 (= (list!3849 objs!8) (list!3851 (c!187185 objs!8)))))

(declare-fun bs!259626 () Bool)

(assert (= bs!259626 d!312012))

(declare-fun m!1258977 () Bool)

(assert (=> bs!259626 m!1258977))

(assert (=> b!1102693 d!312012))

(declare-fun d!312014 () Bool)

(assert (=> d!312014 (= (isEmpty!6700 lt!372902) (is-Nil!10670 lt!372902))))

(assert (=> b!1102693 d!312014))

(declare-fun d!312016 () Bool)

(declare-fun lt!373006 () Int)

(assert (=> d!312016 (= lt!373006 (size!8288 (list!3849 lt!372893)))))

(declare-fun size!8293 (Conc!3334) Int)

(assert (=> d!312016 (= lt!373006 (size!8293 (c!187185 lt!372893)))))

(assert (=> d!312016 (= (size!8289 lt!372893) lt!373006)))

(declare-fun bs!259627 () Bool)

(assert (= bs!259627 d!312016))

(assert (=> bs!259627 m!1258797))

(assert (=> bs!259627 m!1258797))

(declare-fun m!1258981 () Bool)

(assert (=> bs!259627 m!1258981))

(declare-fun m!1258983 () Bool)

(assert (=> bs!259627 m!1258983))

(assert (=> b!1102693 d!312016))

(declare-fun d!312020 () Bool)

(declare-fun e!698612 () Bool)

(assert (=> d!312020 e!698612))

(declare-fun res!488988 () Bool)

(assert (=> d!312020 (=> res!488988 e!698612)))

(assert (=> d!312020 (= res!488988 (isEmpty!6700 lt!372902))))

(declare-fun lt!373009 () Unit!16281)

(declare-fun choose!7117 (List!10686 Int) Unit!16281)

(assert (=> d!312020 (= lt!373009 (choose!7117 lt!372902 lambda!43626))))

(assert (=> d!312020 (not (forall!2482 lt!372902 lambda!43626))))

(assert (=> d!312020 (= (lemmaNotForallFilterShorter!62 lt!372902 lambda!43626) lt!373009)))

(declare-fun b!1102812 () Bool)

(assert (=> b!1102812 (= e!698612 (< (size!8288 (filter!369 lt!372902 lambda!43626)) (size!8288 lt!372902)))))

(assert (= (and d!312020 (not res!488988)) b!1102812))

(assert (=> d!312020 m!1258779))

(declare-fun m!1258985 () Bool)

(assert (=> d!312020 m!1258985))

(declare-fun m!1258987 () Bool)

(assert (=> d!312020 m!1258987))

(assert (=> b!1102812 m!1258825))

(assert (=> b!1102812 m!1258825))

(assert (=> b!1102812 m!1258827))

(assert (=> b!1102812 m!1258829))

(assert (=> b!1102693 d!312020))

(declare-fun d!312022 () Bool)

(assert (=> d!312022 (dynLambda!4704 lambda!43626 lt!372888)))

(declare-fun lt!373010 () Unit!16281)

(assert (=> d!312022 (= lt!373010 (choose!7116 (list!3849 lt!372893) lambda!43626 lt!372888))))

(declare-fun e!698613 () Bool)

(assert (=> d!312022 e!698613))

(declare-fun res!488989 () Bool)

(assert (=> d!312022 (=> (not res!488989) (not e!698613))))

(assert (=> d!312022 (= res!488989 (forall!2482 (list!3849 lt!372893) lambda!43626))))

(assert (=> d!312022 (= (forallContained!529 (list!3849 lt!372893) lambda!43626 lt!372888) lt!373010)))

(declare-fun b!1102813 () Bool)

(assert (=> b!1102813 (= e!698613 (contains!1896 (list!3849 lt!372893) lt!372888))))

(assert (= (and d!312022 res!488989) b!1102813))

(declare-fun b_lambda!32387 () Bool)

(assert (=> (not b_lambda!32387) (not d!312022)))

(declare-fun m!1258989 () Bool)

(assert (=> d!312022 m!1258989))

(assert (=> d!312022 m!1258797))

(declare-fun m!1258991 () Bool)

(assert (=> d!312022 m!1258991))

(assert (=> d!312022 m!1258797))

(declare-fun m!1258993 () Bool)

(assert (=> d!312022 m!1258993))

(assert (=> b!1102813 m!1258797))

(assert (=> b!1102813 m!1258959))

(assert (=> b!1102704 d!312022))

(declare-fun d!312024 () Bool)

(assert (=> d!312024 (= (list!3849 lt!372893) (list!3851 (c!187185 lt!372893)))))

(declare-fun bs!259628 () Bool)

(assert (= bs!259628 d!312024))

(declare-fun m!1258995 () Bool)

(assert (=> bs!259628 m!1258995))

(assert (=> b!1102704 d!312024))

(declare-fun d!312026 () Bool)

(assert (=> d!312026 (dynLambda!4704 lambda!43626 lt!372888)))

(declare-fun lt!373011 () Unit!16281)

(assert (=> d!312026 (= lt!373011 (choose!7116 (list!3849 objs!8) lambda!43626 lt!372888))))

(declare-fun e!698614 () Bool)

(assert (=> d!312026 e!698614))

(declare-fun res!488990 () Bool)

(assert (=> d!312026 (=> (not res!488990) (not e!698614))))

(assert (=> d!312026 (= res!488990 (forall!2482 (list!3849 objs!8) lambda!43626))))

(assert (=> d!312026 (= (forallContained!529 (list!3849 objs!8) lambda!43626 lt!372888) lt!373011)))

(declare-fun b!1102814 () Bool)

(assert (=> b!1102814 (= e!698614 (contains!1896 (list!3849 objs!8) lt!372888))))

(assert (= (and d!312026 res!488990) b!1102814))

(declare-fun b_lambda!32389 () Bool)

(assert (=> (not b_lambda!32389) (not d!312026)))

(assert (=> d!312026 m!1258989))

(assert (=> d!312026 m!1258771))

(declare-fun m!1258997 () Bool)

(assert (=> d!312026 m!1258997))

(assert (=> d!312026 m!1258771))

(assert (=> d!312026 m!1258973))

(assert (=> b!1102814 m!1258771))

(declare-fun m!1258999 () Bool)

(assert (=> b!1102814 m!1258999))

(assert (=> b!1102694 d!312026))

(assert (=> b!1102694 d!312012))

(declare-fun d!312028 () Bool)

(declare-fun lt!373016 () Int)

(assert (=> d!312028 (>= lt!373016 0)))

(declare-fun e!698621 () Int)

(assert (=> d!312028 (= lt!373016 e!698621)))

(declare-fun c!187212 () Bool)

(assert (=> d!312028 (= c!187212 (is-Nil!10670 (filter!369 lt!372902 lambda!43626)))))

(assert (=> d!312028 (= (size!8288 (filter!369 lt!372902 lambda!43626)) lt!373016)))

(declare-fun b!1102827 () Bool)

(assert (=> b!1102827 (= e!698621 0)))

(declare-fun b!1102828 () Bool)

(assert (=> b!1102828 (= e!698621 (+ 1 (size!8288 (t!104264 (filter!369 lt!372902 lambda!43626)))))))

(assert (= (and d!312028 c!187212) b!1102827))

(assert (= (and d!312028 (not c!187212)) b!1102828))

(declare-fun m!1259001 () Bool)

(assert (=> b!1102828 m!1259001))

(assert (=> b!1102706 d!312028))

(declare-fun b!1102845 () Bool)

(declare-fun e!698631 () List!10686)

(declare-fun call!80459 () List!10686)

(assert (=> b!1102845 (= e!698631 (Cons!10670 (h!16071 lt!372902) call!80459))))

(declare-fun b!1102846 () Bool)

(declare-fun e!698632 () List!10686)

(assert (=> b!1102846 (= e!698632 Nil!10670)))

(declare-fun b!1102847 () Bool)

(assert (=> b!1102847 (= e!698632 e!698631)))

(declare-fun c!187217 () Bool)

(assert (=> b!1102847 (= c!187217 (dynLambda!4704 lambda!43626 (h!16071 lt!372902)))))

(declare-fun bm!80454 () Bool)

(assert (=> bm!80454 (= call!80459 (filter!369 (t!104264 lt!372902) lambda!43626))))

(declare-fun b!1102848 () Bool)

(declare-fun e!698630 () Bool)

(declare-fun lt!373019 () List!10686)

(assert (=> b!1102848 (= e!698630 (forall!2482 lt!373019 lambda!43626))))

(declare-fun b!1102849 () Bool)

(declare-fun res!488999 () Bool)

(assert (=> b!1102849 (=> (not res!488999) (not e!698630))))

(declare-fun content!1541 (List!10686) (Set tuple2!11796))

(assert (=> b!1102849 (= res!488999 (set.subset (content!1541 lt!373019) (content!1541 lt!372902)))))

(declare-fun d!312030 () Bool)

(assert (=> d!312030 e!698630))

(declare-fun res!489000 () Bool)

(assert (=> d!312030 (=> (not res!489000) (not e!698630))))

(assert (=> d!312030 (= res!489000 (<= (size!8288 lt!373019) (size!8288 lt!372902)))))

(assert (=> d!312030 (= lt!373019 e!698632)))

(declare-fun c!187218 () Bool)

(assert (=> d!312030 (= c!187218 (is-Nil!10670 lt!372902))))

(assert (=> d!312030 (= (filter!369 lt!372902 lambda!43626) lt!373019)))

(declare-fun b!1102850 () Bool)

(assert (=> b!1102850 (= e!698631 call!80459)))

(assert (= (and d!312030 c!187218) b!1102846))

(assert (= (and d!312030 (not c!187218)) b!1102847))

(assert (= (and b!1102847 c!187217) b!1102845))

(assert (= (and b!1102847 (not c!187217)) b!1102850))

(assert (= (or b!1102845 b!1102850) bm!80454))

(assert (= (and d!312030 res!489000) b!1102849))

(assert (= (and b!1102849 res!488999) b!1102848))

(declare-fun b_lambda!32391 () Bool)

(assert (=> (not b_lambda!32391) (not b!1102847)))

(declare-fun m!1259003 () Bool)

(assert (=> b!1102849 m!1259003))

(declare-fun m!1259005 () Bool)

(assert (=> b!1102849 m!1259005))

(declare-fun m!1259007 () Bool)

(assert (=> bm!80454 m!1259007))

(declare-fun m!1259009 () Bool)

(assert (=> d!312030 m!1259009))

(assert (=> d!312030 m!1258829))

(declare-fun m!1259011 () Bool)

(assert (=> b!1102847 m!1259011))

(declare-fun m!1259013 () Bool)

(assert (=> b!1102848 m!1259013))

(assert (=> b!1102706 d!312030))

(declare-fun d!312032 () Bool)

(declare-fun lt!373021 () Int)

(assert (=> d!312032 (>= lt!373021 0)))

(declare-fun e!698636 () Int)

(assert (=> d!312032 (= lt!373021 e!698636)))

(declare-fun c!187221 () Bool)

(assert (=> d!312032 (= c!187221 (is-Nil!10670 lt!372902))))

(assert (=> d!312032 (= (size!8288 lt!372902) lt!373021)))

(declare-fun b!1102857 () Bool)

(assert (=> b!1102857 (= e!698636 0)))

(declare-fun b!1102858 () Bool)

(assert (=> b!1102858 (= e!698636 (+ 1 (size!8288 (t!104264 lt!372902))))))

(assert (= (and d!312032 c!187221) b!1102857))

(assert (= (and d!312032 (not c!187221)) b!1102858))

(declare-fun m!1259015 () Bool)

(assert (=> b!1102858 m!1259015))

(assert (=> b!1102706 d!312032))

(declare-fun d!312034 () Bool)

(declare-fun lt!373022 () Bool)

(assert (=> d!312034 (= lt!373022 (contains!1896 (list!3849 lt!372892) lt!372888))))

(assert (=> d!312034 (= lt!373022 (contains!1897 (c!187185 lt!372892) lt!372888))))

(assert (=> d!312034 (= (contains!1894 lt!372892 lt!372888) lt!373022)))

(declare-fun bs!259629 () Bool)

(assert (= bs!259629 d!312034))

(assert (=> bs!259629 m!1258831))

(assert (=> bs!259629 m!1258831))

(declare-fun m!1259017 () Bool)

(assert (=> bs!259629 m!1259017))

(declare-fun m!1259019 () Bool)

(assert (=> bs!259629 m!1259019))

(assert (=> b!1102696 d!312034))

(declare-fun b!1102869 () Bool)

(declare-fun e!698649 () Bool)

(declare-fun e!698647 () Bool)

(assert (=> b!1102869 (= e!698649 e!698647)))

(declare-fun res!489012 () Bool)

(assert (=> b!1102869 (=> (not res!489012) (not e!698647))))

(assert (=> b!1102869 (= res!489012 (is-Cons!10670 lt!372902))))

(declare-fun b!1102870 () Bool)

(declare-fun e!698648 () Bool)

(assert (=> b!1102870 (= e!698647 e!698648)))

(declare-fun res!489011 () Bool)

(assert (=> b!1102870 (=> res!489011 e!698648)))

(declare-fun e!698646 () Bool)

(assert (=> b!1102870 (= res!489011 e!698646)))

(declare-fun res!489013 () Bool)

(assert (=> b!1102870 (=> (not res!489013) (not e!698646))))

(assert (=> b!1102870 (= res!489013 (= (h!16071 lt!372907) (h!16071 lt!372902)))))

(declare-fun b!1102871 () Bool)

(assert (=> b!1102871 (= e!698646 (subseq!154 (t!104264 lt!372907) (t!104264 lt!372902)))))

(declare-fun d!312036 () Bool)

(declare-fun res!489014 () Bool)

(assert (=> d!312036 (=> res!489014 e!698649)))

(assert (=> d!312036 (= res!489014 (is-Nil!10670 lt!372907))))

(assert (=> d!312036 (= (subseq!154 lt!372907 lt!372902) e!698649)))

(declare-fun b!1102872 () Bool)

(assert (=> b!1102872 (= e!698648 (subseq!154 lt!372907 (t!104264 lt!372902)))))

(assert (= (and d!312036 (not res!489014)) b!1102869))

(assert (= (and b!1102869 res!489012) b!1102870))

(assert (= (and b!1102870 res!489013) b!1102871))

(assert (= (and b!1102870 (not res!489011)) b!1102872))

(declare-fun m!1259035 () Bool)

(assert (=> b!1102871 m!1259035))

(declare-fun m!1259037 () Bool)

(assert (=> b!1102872 m!1259037))

(assert (=> b!1102698 d!312036))

(declare-fun d!312042 () Bool)

(declare-fun lt!373024 () Int)

(assert (=> d!312042 (= lt!373024 (size!8288 (list!3849 objs!8)))))

(assert (=> d!312042 (= lt!373024 (size!8293 (c!187185 objs!8)))))

(assert (=> d!312042 (= (size!8289 objs!8) lt!373024)))

(declare-fun bs!259630 () Bool)

(assert (= bs!259630 d!312042))

(assert (=> bs!259630 m!1258771))

(assert (=> bs!259630 m!1258771))

(declare-fun m!1259039 () Bool)

(assert (=> bs!259630 m!1259039))

(declare-fun m!1259041 () Bool)

(assert (=> bs!259630 m!1259041))

(assert (=> b!1102699 d!312042))

(declare-fun d!312044 () Bool)

(declare-fun lt!373025 () Int)

(assert (=> d!312044 (>= lt!373025 0)))

(declare-fun e!698650 () Int)

(assert (=> d!312044 (= lt!373025 e!698650)))

(declare-fun c!187223 () Bool)

(assert (=> d!312044 (= c!187223 (is-Nil!10670 (filter!369 lt!372902 lambda!43628)))))

(assert (=> d!312044 (= (size!8288 (filter!369 lt!372902 lambda!43628)) lt!373025)))

(declare-fun b!1102873 () Bool)

(assert (=> b!1102873 (= e!698650 0)))

(declare-fun b!1102874 () Bool)

(assert (=> b!1102874 (= e!698650 (+ 1 (size!8288 (t!104264 (filter!369 lt!372902 lambda!43628)))))))

(assert (= (and d!312044 c!187223) b!1102873))

(assert (= (and d!312044 (not c!187223)) b!1102874))

(declare-fun m!1259043 () Bool)

(assert (=> b!1102874 m!1259043))

(assert (=> b!1102689 d!312044))

(declare-fun b!1102875 () Bool)

(declare-fun e!698652 () List!10686)

(declare-fun call!80461 () List!10686)

(assert (=> b!1102875 (= e!698652 (Cons!10670 (h!16071 lt!372902) call!80461))))

(declare-fun b!1102876 () Bool)

(declare-fun e!698653 () List!10686)

(assert (=> b!1102876 (= e!698653 Nil!10670)))

(declare-fun b!1102877 () Bool)

(assert (=> b!1102877 (= e!698653 e!698652)))

(declare-fun c!187224 () Bool)

(assert (=> b!1102877 (= c!187224 (dynLambda!4704 lambda!43628 (h!16071 lt!372902)))))

(declare-fun bm!80456 () Bool)

(assert (=> bm!80456 (= call!80461 (filter!369 (t!104264 lt!372902) lambda!43628))))

(declare-fun b!1102878 () Bool)

(declare-fun e!698651 () Bool)

(declare-fun lt!373026 () List!10686)

(assert (=> b!1102878 (= e!698651 (forall!2482 lt!373026 lambda!43628))))

(declare-fun b!1102879 () Bool)

(declare-fun res!489015 () Bool)

(assert (=> b!1102879 (=> (not res!489015) (not e!698651))))

(assert (=> b!1102879 (= res!489015 (set.subset (content!1541 lt!373026) (content!1541 lt!372902)))))

(declare-fun d!312046 () Bool)

(assert (=> d!312046 e!698651))

(declare-fun res!489016 () Bool)

(assert (=> d!312046 (=> (not res!489016) (not e!698651))))

(assert (=> d!312046 (= res!489016 (<= (size!8288 lt!373026) (size!8288 lt!372902)))))

(assert (=> d!312046 (= lt!373026 e!698653)))

(declare-fun c!187225 () Bool)

(assert (=> d!312046 (= c!187225 (is-Nil!10670 lt!372902))))

(assert (=> d!312046 (= (filter!369 lt!372902 lambda!43628) lt!373026)))

(declare-fun b!1102880 () Bool)

(assert (=> b!1102880 (= e!698652 call!80461)))

(assert (= (and d!312046 c!187225) b!1102876))

(assert (= (and d!312046 (not c!187225)) b!1102877))

(assert (= (and b!1102877 c!187224) b!1102875))

(assert (= (and b!1102877 (not c!187224)) b!1102880))

(assert (= (or b!1102875 b!1102880) bm!80456))

(assert (= (and d!312046 res!489016) b!1102879))

(assert (= (and b!1102879 res!489015) b!1102878))

(declare-fun b_lambda!32395 () Bool)

(assert (=> (not b_lambda!32395) (not b!1102877)))

(declare-fun m!1259045 () Bool)

(assert (=> b!1102879 m!1259045))

(assert (=> b!1102879 m!1259005))

(declare-fun m!1259047 () Bool)

(assert (=> bm!80456 m!1259047))

(declare-fun m!1259049 () Bool)

(assert (=> d!312046 m!1259049))

(assert (=> d!312046 m!1258829))

(declare-fun m!1259051 () Bool)

(assert (=> b!1102877 m!1259051))

(declare-fun m!1259053 () Bool)

(assert (=> b!1102878 m!1259053))

(assert (=> b!1102689 d!312046))

(assert (=> b!1102689 d!312032))

(declare-fun d!312048 () Bool)

(declare-fun lt!373027 () Bool)

(assert (=> d!312048 (= lt!373027 (forall!2482 (list!3849 objs!8) lambda!43625))))

(assert (=> d!312048 (= lt!373027 (forall!2485 (c!187185 objs!8) lambda!43625))))

(assert (=> d!312048 (= (forall!2481 objs!8 lambda!43625) lt!373027)))

(declare-fun bs!259631 () Bool)

(assert (= bs!259631 d!312048))

(assert (=> bs!259631 m!1258771))

(assert (=> bs!259631 m!1258771))

(declare-fun m!1259055 () Bool)

(assert (=> bs!259631 m!1259055))

(declare-fun m!1259057 () Bool)

(assert (=> bs!259631 m!1259057))

(assert (=> start!94960 d!312048))

(declare-fun d!312050 () Bool)

(assert (=> d!312050 (= (inv!13719 objs!8) (isBalanced!922 (c!187185 objs!8)))))

(declare-fun bs!259632 () Bool)

(assert (= bs!259632 d!312050))

(declare-fun m!1259059 () Bool)

(assert (=> bs!259632 m!1259059))

(assert (=> start!94960 d!312050))

(declare-fun d!312052 () Bool)

(assert (=> d!312052 (dynLambda!4704 lambda!43628 lt!372888)))

(declare-fun lt!373030 () Unit!16281)

(assert (=> d!312052 (= lt!373030 (choose!7116 (list!3849 lt!372892) lambda!43628 lt!372888))))

(declare-fun e!698654 () Bool)

(assert (=> d!312052 e!698654))

(declare-fun res!489017 () Bool)

(assert (=> d!312052 (=> (not res!489017) (not e!698654))))

(assert (=> d!312052 (= res!489017 (forall!2482 (list!3849 lt!372892) lambda!43628))))

(assert (=> d!312052 (= (forallContained!529 (list!3849 lt!372892) lambda!43628 lt!372888) lt!373030)))

(declare-fun b!1102881 () Bool)

(assert (=> b!1102881 (= e!698654 (contains!1896 (list!3849 lt!372892) lt!372888))))

(assert (= (and d!312052 res!489017) b!1102881))

(declare-fun b_lambda!32397 () Bool)

(assert (=> (not b_lambda!32397) (not d!312052)))

(assert (=> d!312052 m!1258965))

(assert (=> d!312052 m!1258831))

(declare-fun m!1259061 () Bool)

(assert (=> d!312052 m!1259061))

(assert (=> d!312052 m!1258831))

(declare-fun m!1259063 () Bool)

(assert (=> d!312052 m!1259063))

(assert (=> b!1102881 m!1258831))

(assert (=> b!1102881 m!1259017))

(assert (=> b!1102700 d!312052))

(declare-fun d!312054 () Bool)

(assert (=> d!312054 (= (list!3849 lt!372892) (list!3851 (c!187185 lt!372892)))))

(declare-fun bs!259633 () Bool)

(assert (= bs!259633 d!312054))

(declare-fun m!1259065 () Bool)

(assert (=> bs!259633 m!1259065))

(assert (=> b!1102700 d!312054))

(declare-fun d!312056 () Bool)

(declare-fun c!187228 () Bool)

(assert (=> d!312056 (= c!187228 (is-Node!3334 (c!187185 objs!8)))))

(declare-fun e!698659 () Bool)

(assert (=> d!312056 (= (inv!13718 (c!187185 objs!8)) e!698659)))

(declare-fun b!1102888 () Bool)

(declare-fun inv!13722 (Conc!3334) Bool)

(assert (=> b!1102888 (= e!698659 (inv!13722 (c!187185 objs!8)))))

(declare-fun b!1102889 () Bool)

(declare-fun e!698660 () Bool)

(assert (=> b!1102889 (= e!698659 e!698660)))

(declare-fun res!489020 () Bool)

(assert (=> b!1102889 (= res!489020 (not (is-Leaf!5258 (c!187185 objs!8))))))

(assert (=> b!1102889 (=> res!489020 e!698660)))

(declare-fun b!1102890 () Bool)

(declare-fun inv!13723 (Conc!3334) Bool)

(assert (=> b!1102890 (= e!698660 (inv!13723 (c!187185 objs!8)))))

(assert (= (and d!312056 c!187228) b!1102888))

(assert (= (and d!312056 (not c!187228)) b!1102889))

(assert (= (and b!1102889 (not res!489020)) b!1102890))

(declare-fun m!1259071 () Bool)

(assert (=> b!1102888 m!1259071))

(declare-fun m!1259073 () Bool)

(assert (=> b!1102890 m!1259073))

(assert (=> b!1102701 d!312056))

(declare-fun d!312060 () Bool)

(declare-fun lt!373032 () Int)

(assert (=> d!312060 (= lt!373032 (size!8288 (list!3849 lt!372892)))))

(assert (=> d!312060 (= lt!373032 (size!8293 (c!187185 lt!372892)))))

(assert (=> d!312060 (= (size!8289 lt!372892) lt!373032)))

(declare-fun bs!259635 () Bool)

(assert (= bs!259635 d!312060))

(assert (=> bs!259635 m!1258831))

(assert (=> bs!259635 m!1258831))

(declare-fun m!1259075 () Bool)

(assert (=> bs!259635 m!1259075))

(declare-fun m!1259077 () Bool)

(assert (=> bs!259635 m!1259077))

(assert (=> b!1102690 d!312060))

(declare-fun d!312062 () Bool)

(declare-fun e!698661 () Bool)

(assert (=> d!312062 e!698661))

(declare-fun res!489021 () Bool)

(assert (=> d!312062 (=> res!489021 e!698661)))

(assert (=> d!312062 (= res!489021 (isEmpty!6700 lt!372902))))

(declare-fun lt!373033 () Unit!16281)

(assert (=> d!312062 (= lt!373033 (choose!7117 lt!372902 lambda!43628))))

(assert (=> d!312062 (not (forall!2482 lt!372902 lambda!43628))))

(assert (=> d!312062 (= (lemmaNotForallFilterShorter!62 lt!372902 lambda!43628) lt!373033)))

(declare-fun b!1102891 () Bool)

(assert (=> b!1102891 (= e!698661 (< (size!8288 (filter!369 lt!372902 lambda!43628)) (size!8288 lt!372902)))))

(assert (= (and d!312062 (not res!489021)) b!1102891))

(assert (=> d!312062 m!1258779))

(declare-fun m!1259081 () Bool)

(assert (=> d!312062 m!1259081))

(assert (=> d!312062 m!1258969))

(assert (=> b!1102891 m!1258839))

(assert (=> b!1102891 m!1258839))

(assert (=> b!1102891 m!1258841))

(assert (=> b!1102891 m!1258829))

(assert (=> b!1102690 d!312062))

(declare-fun d!312066 () Bool)

(declare-fun lt!373034 () Bool)

(assert (=> d!312066 (= lt!373034 (forall!2482 (list!3849 objs!8) lambda!43628))))

(assert (=> d!312066 (= lt!373034 (forall!2485 (c!187185 objs!8) lambda!43628))))

(assert (=> d!312066 (= (forall!2481 objs!8 lambda!43628) lt!373034)))

(declare-fun bs!259637 () Bool)

(assert (= bs!259637 d!312066))

(assert (=> bs!259637 m!1258771))

(assert (=> bs!259637 m!1258771))

(declare-fun m!1259083 () Bool)

(assert (=> bs!259637 m!1259083))

(declare-fun m!1259085 () Bool)

(assert (=> bs!259637 m!1259085))

(assert (=> b!1102690 d!312066))

(assert (=> b!1102691 d!311986))

(declare-fun d!312068 () Bool)

(declare-fun e!698662 () Bool)

(assert (=> d!312068 e!698662))

(declare-fun res!489022 () Bool)

(assert (=> d!312068 (=> (not res!489022) (not e!698662))))

(assert (=> d!312068 (= res!489022 (isBalanced!922 (filter!373 (c!187185 objs!8) lambda!43627)))))

(declare-fun lt!373035 () BalanceConc!6682)

(assert (=> d!312068 (= lt!373035 (BalanceConc!6683 (filter!373 (c!187185 objs!8) lambda!43627)))))

(assert (=> d!312068 (= (filter!370 objs!8 lambda!43627) lt!373035)))

(declare-fun b!1102892 () Bool)

(assert (=> b!1102892 (= e!698662 (= (list!3849 lt!373035) (filter!369 (list!3849 objs!8) lambda!43627)))))

(assert (= (and d!312068 res!489022) b!1102892))

(declare-fun m!1259087 () Bool)

(assert (=> d!312068 m!1259087))

(assert (=> d!312068 m!1259087))

(declare-fun m!1259089 () Bool)

(assert (=> d!312068 m!1259089))

(declare-fun m!1259091 () Bool)

(assert (=> b!1102892 m!1259091))

(assert (=> b!1102892 m!1258771))

(assert (=> b!1102892 m!1258771))

(declare-fun m!1259093 () Bool)

(assert (=> b!1102892 m!1259093))

(assert (=> b!1102691 d!312068))

(declare-fun d!312070 () Bool)

(declare-fun e!698663 () Bool)

(assert (=> d!312070 e!698663))

(declare-fun res!489023 () Bool)

(assert (=> d!312070 (=> (not res!489023) (not e!698663))))

(assert (=> d!312070 (= res!489023 (isBalanced!922 (filter!373 (c!187185 objs!8) lambda!43628)))))

(declare-fun lt!373036 () BalanceConc!6682)

(assert (=> d!312070 (= lt!373036 (BalanceConc!6683 (filter!373 (c!187185 objs!8) lambda!43628)))))

(assert (=> d!312070 (= (filter!370 objs!8 lambda!43628) lt!373036)))

(declare-fun b!1102893 () Bool)

(assert (=> b!1102893 (= e!698663 (= (list!3849 lt!373036) (filter!369 (list!3849 objs!8) lambda!43628)))))

(assert (= (and d!312070 res!489023) b!1102893))

(declare-fun m!1259095 () Bool)

(assert (=> d!312070 m!1259095))

(assert (=> d!312070 m!1259095))

(declare-fun m!1259097 () Bool)

(assert (=> d!312070 m!1259097))

(declare-fun m!1259099 () Bool)

(assert (=> b!1102893 m!1259099))

(assert (=> b!1102893 m!1258771))

(assert (=> b!1102893 m!1258771))

(declare-fun m!1259101 () Bool)

(assert (=> b!1102893 m!1259101))

(assert (=> b!1102691 d!312070))

(declare-fun d!312072 () Bool)

(declare-fun lt!373044 () tuple2!11796)

(declare-fun apply!2168 (List!10686 Int) tuple2!11796)

(assert (=> d!312072 (= lt!373044 (apply!2168 (list!3849 objs!8) (ite (>= lt!372889 0) (div lt!372889 2) (- (div (- lt!372889) 2)))))))

(declare-fun apply!2169 (Conc!3334 Int) tuple2!11796)

(assert (=> d!312072 (= lt!373044 (apply!2169 (c!187185 objs!8) (ite (>= lt!372889 0) (div lt!372889 2) (- (div (- lt!372889) 2)))))))

(declare-fun e!698667 () Bool)

(assert (=> d!312072 e!698667))

(declare-fun res!489026 () Bool)

(assert (=> d!312072 (=> (not res!489026) (not e!698667))))

(assert (=> d!312072 (= res!489026 (<= 0 (ite (>= lt!372889 0) (div lt!372889 2) (- (div (- lt!372889) 2)))))))

(assert (=> d!312072 (= (apply!2166 objs!8 (ite (>= lt!372889 0) (div lt!372889 2) (- (div (- lt!372889) 2)))) lt!373044)))

(declare-fun b!1102898 () Bool)

(assert (=> b!1102898 (= e!698667 (< (ite (>= lt!372889 0) (div lt!372889 2) (- (div (- lt!372889) 2))) (size!8289 objs!8)))))

(assert (= (and d!312072 res!489026) b!1102898))

(assert (=> d!312072 m!1258771))

(assert (=> d!312072 m!1258771))

(declare-fun m!1259111 () Bool)

(assert (=> d!312072 m!1259111))

(declare-fun m!1259113 () Bool)

(assert (=> d!312072 m!1259113))

(assert (=> b!1102898 m!1258811))

(assert (=> b!1102691 d!312072))

(declare-fun d!312080 () Bool)

(declare-fun lt!373046 () Bool)

(assert (=> d!312080 (= lt!373046 (contains!1896 (list!3849 objs!8) lt!372888))))

(assert (=> d!312080 (= lt!373046 (contains!1897 (c!187185 objs!8) lt!372888))))

(assert (=> d!312080 (= (contains!1894 objs!8 lt!372888) lt!373046)))

(declare-fun bs!259640 () Bool)

(assert (= bs!259640 d!312080))

(assert (=> bs!259640 m!1258771))

(assert (=> bs!259640 m!1258771))

(assert (=> bs!259640 m!1258999))

(declare-fun m!1259115 () Bool)

(assert (=> bs!259640 m!1259115))

(assert (=> b!1102691 d!312080))

(declare-fun b!1102915 () Bool)

(declare-fun e!698679 () Bool)

(assert (=> b!1102915 (= e!698679 true)))

(declare-fun b!1102914 () Bool)

(declare-fun e!698678 () Bool)

(assert (=> b!1102914 (= e!698678 e!698679)))

(declare-fun b!1102913 () Bool)

(declare-fun e!698677 () Bool)

(assert (=> b!1102913 (= e!698677 e!698678)))

(assert (=> b!1102713 e!698677))

(assert (= b!1102914 b!1102915))

(assert (= b!1102913 b!1102914))

(assert (= (and b!1102713 (is-Cons!10668 (rules!9122 (_2!6724 lt!372888)))) b!1102913))

(declare-fun order!6525 () Int)

(declare-fun order!6527 () Int)

(declare-fun dynLambda!4706 (Int Int) Int)

(declare-fun dynLambda!4707 (Int Int) Int)

(assert (=> b!1102915 (< (dynLambda!4706 order!6525 (toValue!2912 (transformation!1835 (h!16069 (rules!9122 (_2!6724 lt!372888)))))) (dynLambda!4707 order!6527 lambda!43626))))

(declare-fun order!6529 () Int)

(declare-fun dynLambda!4708 (Int Int) Int)

(assert (=> b!1102915 (< (dynLambda!4708 order!6529 (toChars!2771 (transformation!1835 (h!16069 (rules!9122 (_2!6724 lt!372888)))))) (dynLambda!4707 order!6527 lambda!43626))))

(declare-fun b!1102918 () Bool)

(declare-fun e!698682 () Bool)

(assert (=> b!1102918 (= e!698682 true)))

(declare-fun b!1102917 () Bool)

(declare-fun e!698681 () Bool)

(assert (=> b!1102917 (= e!698681 e!698682)))

(declare-fun b!1102916 () Bool)

(declare-fun e!698680 () Bool)

(assert (=> b!1102916 (= e!698680 e!698681)))

(assert (=> b!1102715 e!698680))

(assert (= b!1102917 b!1102918))

(assert (= b!1102916 b!1102917))

(assert (= (and b!1102715 (is-Cons!10668 (rules!9122 (_2!6724 lt!372888)))) b!1102916))

(assert (=> b!1102918 (< (dynLambda!4706 order!6525 (toValue!2912 (transformation!1835 (h!16069 (rules!9122 (_2!6724 lt!372888)))))) (dynLambda!4707 order!6527 lambda!43627))))

(assert (=> b!1102918 (< (dynLambda!4708 order!6529 (toChars!2771 (transformation!1835 (h!16069 (rules!9122 (_2!6724 lt!372888)))))) (dynLambda!4707 order!6527 lambda!43627))))

(declare-fun b!1102921 () Bool)

(declare-fun e!698685 () Bool)

(assert (=> b!1102921 (= e!698685 true)))

(declare-fun b!1102920 () Bool)

(declare-fun e!698684 () Bool)

(assert (=> b!1102920 (= e!698684 e!698685)))

(declare-fun b!1102919 () Bool)

(declare-fun e!698683 () Bool)

(assert (=> b!1102919 (= e!698683 e!698684)))

(assert (=> b!1102717 e!698683))

(assert (= b!1102920 b!1102921))

(assert (= b!1102919 b!1102920))

(assert (= (and b!1102717 (is-Cons!10668 (rules!9122 (_2!6724 lt!372888)))) b!1102919))

(assert (=> b!1102921 (< (dynLambda!4706 order!6525 (toValue!2912 (transformation!1835 (h!16069 (rules!9122 (_2!6724 lt!372888)))))) (dynLambda!4707 order!6527 lambda!43628))))

(assert (=> b!1102921 (< (dynLambda!4708 order!6529 (toChars!2771 (transformation!1835 (h!16069 (rules!9122 (_2!6724 lt!372888)))))) (dynLambda!4707 order!6527 lambda!43628))))

(declare-fun b!1102930 () Bool)

(declare-fun e!698690 () Bool)

(assert (=> b!1102930 (= e!698690 true)))

(declare-fun b!1102932 () Bool)

(declare-fun e!698691 () Bool)

(assert (=> b!1102932 (= e!698691 true)))

(declare-fun b!1102931 () Bool)

(assert (=> b!1102931 (= e!698690 e!698691)))

(assert (=> b!1102718 e!698690))

(assert (= (and b!1102718 (is-Node!3333 (c!187184 (tokens!1394 (_2!6724 lt!372888))))) b!1102930))

(assert (= b!1102931 b!1102932))

(assert (= (and b!1102718 (is-Leaf!5257 (c!187184 (tokens!1394 (_2!6724 lt!372888))))) b!1102931))

(declare-fun b!1102933 () Bool)

(declare-fun e!698692 () Bool)

(assert (=> b!1102933 (= e!698692 true)))

(declare-fun b!1102935 () Bool)

(declare-fun e!698693 () Bool)

(assert (=> b!1102935 (= e!698693 true)))

(declare-fun b!1102934 () Bool)

(assert (=> b!1102934 (= e!698692 e!698693)))

(assert (=> b!1102714 e!698692))

(assert (= (and b!1102714 (is-Node!3333 (c!187184 (tokens!1394 (_2!6724 lt!372888))))) b!1102933))

(assert (= b!1102934 b!1102935))

(assert (= (and b!1102714 (is-Leaf!5257 (c!187184 (tokens!1394 (_2!6724 lt!372888))))) b!1102934))

(declare-fun b!1102936 () Bool)

(declare-fun e!698694 () Bool)

(assert (=> b!1102936 (= e!698694 true)))

(declare-fun b!1102938 () Bool)

(declare-fun e!698695 () Bool)

(assert (=> b!1102938 (= e!698695 true)))

(declare-fun b!1102937 () Bool)

(assert (=> b!1102937 (= e!698694 e!698695)))

(assert (=> b!1102716 e!698694))

(assert (= (and b!1102716 (is-Node!3333 (c!187184 (tokens!1394 (_2!6724 lt!372888))))) b!1102936))

(assert (= b!1102937 b!1102938))

(assert (= (and b!1102716 (is-Leaf!5257 (c!187184 (tokens!1394 (_2!6724 lt!372888))))) b!1102937))

(declare-fun e!698701 () Bool)

(declare-fun tp!327171 () Bool)

(declare-fun b!1102947 () Bool)

(declare-fun tp!327173 () Bool)

(assert (=> b!1102947 (= e!698701 (and (inv!13718 (left!9241 (c!187185 objs!8))) tp!327171 (inv!13718 (right!9571 (c!187185 objs!8))) tp!327173))))

(declare-fun b!1102949 () Bool)

(declare-fun e!698700 () Bool)

(declare-fun tp!327172 () Bool)

(assert (=> b!1102949 (= e!698700 tp!327172)))

(declare-fun b!1102948 () Bool)

(declare-fun inv!13724 (IArray!6673) Bool)

(assert (=> b!1102948 (= e!698701 (and (inv!13724 (xs!6027 (c!187185 objs!8))) e!698700))))

(assert (=> b!1102701 (= tp!327161 (and (inv!13718 (c!187185 objs!8)) e!698701))))

(assert (= (and b!1102701 (is-Node!3334 (c!187185 objs!8))) b!1102947))

(assert (= b!1102948 b!1102949))

(assert (= (and b!1102701 (is-Leaf!5258 (c!187185 objs!8))) b!1102948))

(declare-fun m!1259127 () Bool)

(assert (=> b!1102947 m!1259127))

(declare-fun m!1259129 () Bool)

(assert (=> b!1102947 m!1259129))

(declare-fun m!1259131 () Bool)

(assert (=> b!1102948 m!1259131))

(assert (=> b!1102701 m!1258795))

(declare-fun b_lambda!32401 () Bool)

(assert (= b_lambda!32395 (or b!1102691 b_lambda!32401)))

(declare-fun bs!259642 () Bool)

(declare-fun d!312084 () Bool)

(assert (= bs!259642 (and d!312084 b!1102691)))

(assert (=> bs!259642 (= (dynLambda!4704 lambda!43628 (h!16071 lt!372902)) (> (_1!6724 (h!16071 lt!372902)) (_1!6724 lt!372888)))))

(assert (=> b!1102877 d!312084))

(declare-fun b_lambda!32403 () Bool)

(assert (= b_lambda!32379 (or start!94960 b_lambda!32403)))

(declare-fun bs!259643 () Bool)

(declare-fun d!312086 () Bool)

(assert (= bs!259643 (and d!312086 start!94960)))

(declare-fun usesJsonRules!0 (PrintableTokens!386) Bool)

(assert (=> bs!259643 (= (dynLambda!4704 lambda!43625 (h!16071 lt!372902)) (usesJsonRules!0 (_2!6724 (h!16071 lt!372902))))))

(declare-fun m!1259137 () Bool)

(assert (=> bs!259643 m!1259137))

(assert (=> b!1102797 d!312086))

(declare-fun b_lambda!32405 () Bool)

(assert (= b_lambda!32391 (or b!1102691 b_lambda!32405)))

(declare-fun bs!259644 () Bool)

(declare-fun d!312090 () Bool)

(assert (= bs!259644 (and d!312090 b!1102691)))

(assert (=> bs!259644 (= (dynLambda!4704 lambda!43626 (h!16071 lt!372902)) (< (_1!6724 (h!16071 lt!372902)) (_1!6724 lt!372888)))))

(assert (=> b!1102847 d!312090))

(declare-fun b_lambda!32407 () Bool)

(assert (= b_lambda!32397 (or b!1102691 b_lambda!32407)))

(declare-fun bs!259645 () Bool)

(declare-fun d!312092 () Bool)

(assert (= bs!259645 (and d!312092 b!1102691)))

(assert (=> bs!259645 (= (dynLambda!4704 lambda!43628 lt!372888) (> (_1!6724 lt!372888) (_1!6724 lt!372888)))))

(assert (=> d!312052 d!312092))

(declare-fun b_lambda!32409 () Bool)

(assert (= b_lambda!32385 (or b!1102691 b_lambda!32409)))

(assert (=> d!312006 d!312092))

(declare-fun b_lambda!32411 () Bool)

(assert (= b_lambda!32387 (or b!1102691 b_lambda!32411)))

(declare-fun bs!259646 () Bool)

(declare-fun d!312094 () Bool)

(assert (= bs!259646 (and d!312094 b!1102691)))

(assert (=> bs!259646 (= (dynLambda!4704 lambda!43626 lt!372888) (< (_1!6724 lt!372888) (_1!6724 lt!372888)))))

(assert (=> d!312022 d!312094))

(declare-fun b_lambda!32413 () Bool)

(assert (= b_lambda!32389 (or b!1102691 b_lambda!32413)))

(assert (=> d!312026 d!312094))

(push 1)

(assert (not d!311992))

(assert (not b!1102881))

(assert (not d!312062))

(assert (not b_lambda!32407))

(assert (not b!1102888))

(assert (not b_lambda!32403))

(assert (not b!1102803))

(assert (not d!312080))

(assert (not bm!80456))

(assert (not b!1102878))

(assert (not b!1102932))

(assert (not b!1102798))

(assert (not b_lambda!32405))

(assert (not b!1102790))

(assert (not d!312066))

(assert (not d!312020))

(assert (not b!1102930))

(assert (not b!1102892))

(assert (not b!1102936))

(assert (not b!1102916))

(assert (not d!312000))

(assert (not d!311990))

(assert (not b!1102813))

(assert (not b!1102913))

(assert (not b!1102828))

(assert (not b_lambda!32409))

(assert (not d!312060))

(assert (not b!1102814))

(assert (not bs!259643))

(assert (not b!1102879))

(assert (not b!1102938))

(assert (not d!312068))

(assert (not b!1102872))

(assert (not d!312006))

(assert (not d!312024))

(assert (not b!1102848))

(assert (not b!1102874))

(assert (not b!1102898))

(assert (not b!1102947))

(assert (not b!1102890))

(assert (not d!312050))

(assert (not d!311986))

(assert (not d!312030))

(assert (not b!1102948))

(assert (not d!312070))

(assert (not d!312054))

(assert (not b!1102893))

(assert (not d!312046))

(assert (not b!1102812))

(assert (not bm!80454))

(assert (not b!1102933))

(assert (not b!1102871))

(assert (not d!312042))

(assert (not b!1102849))

(assert (not d!312010))

(assert (not b!1102935))

(assert (not d!311998))

(assert (not d!312026))

(assert (not b!1102949))

(assert (not d!312012))

(assert (not d!312034))

(assert (not d!312022))

(assert (not b!1102891))

(assert (not d!311996))

(assert (not d!312052))

(assert (not b_lambda!32401))

(assert (not d!312048))

(assert (not b!1102858))

(assert (not b!1102919))

(assert (not b!1102701))

(assert (not b_lambda!32413))

(assert (not d!312016))

(assert (not d!312072))

(assert (not b_lambda!32411))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

