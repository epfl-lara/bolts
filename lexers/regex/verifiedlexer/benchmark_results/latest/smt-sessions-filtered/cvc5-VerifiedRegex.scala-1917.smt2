; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!94640 () Bool)

(assert start!94640)

(declare-fun bs!259421 () Bool)

(declare-fun b!1100966 () Bool)

(assert (= bs!259421 (and b!1100966 start!94640)))

(declare-fun lambda!43302 () Int)

(declare-fun lambda!43301 () Int)

(assert (=> bs!259421 (not (= lambda!43302 lambda!43301))))

(declare-fun b!1100977 () Bool)

(declare-fun e!697254 () Bool)

(assert (=> b!1100977 (= e!697254 true)))

(declare-fun b!1100976 () Bool)

(declare-fun e!697253 () Bool)

(assert (=> b!1100976 (= e!697253 e!697254)))

(assert (=> b!1100966 e!697253))

(assert (= b!1100976 b!1100977))

(assert (= b!1100966 b!1100976))

(declare-fun lambda!43303 () Int)

(assert (=> bs!259421 (not (= lambda!43303 lambda!43301))))

(assert (=> b!1100966 (not (= lambda!43303 lambda!43302))))

(declare-fun b!1100979 () Bool)

(declare-fun e!697256 () Bool)

(assert (=> b!1100979 (= e!697256 true)))

(declare-fun b!1100978 () Bool)

(declare-fun e!697255 () Bool)

(assert (=> b!1100978 (= e!697255 e!697256)))

(assert (=> b!1100966 e!697255))

(assert (= b!1100978 b!1100979))

(assert (= b!1100966 b!1100978))

(declare-fun lambda!43304 () Int)

(assert (=> bs!259421 (not (= lambda!43304 lambda!43301))))

(assert (=> b!1100966 (not (= lambda!43304 lambda!43302))))

(assert (=> b!1100966 (not (= lambda!43304 lambda!43303))))

(declare-fun b!1100981 () Bool)

(declare-fun e!697258 () Bool)

(assert (=> b!1100981 (= e!697258 true)))

(declare-fun b!1100980 () Bool)

(declare-fun e!697257 () Bool)

(assert (=> b!1100980 (= e!697257 e!697258)))

(assert (=> b!1100966 e!697257))

(assert (= b!1100980 b!1100981))

(assert (= b!1100966 b!1100980))

(declare-fun res!488375 () Bool)

(declare-fun e!697247 () Bool)

(assert (=> start!94640 (=> (not res!488375) (not e!697247))))

(declare-datatypes ((List!10635 0))(
  ( (Nil!10619) (Cons!10619 (h!16020 (_ BitVec 16)) (t!103937 List!10635)) )
))
(declare-datatypes ((TokenValue!1889 0))(
  ( (FloatLiteralValue!3778 (text!13668 List!10635)) (TokenValueExt!1888 (__x!7471 Int)) (Broken!9445 (value!59884 List!10635)) (Object!1904) (End!1889) (Def!1889) (Underscore!1889) (Match!1889) (Else!1889) (Error!1889) (Case!1889) (If!1889) (Extends!1889) (Abstract!1889) (Class!1889) (Val!1889) (DelimiterValue!3778 (del!1949 List!10635)) (KeywordValue!1895 (value!59885 List!10635)) (CommentValue!3778 (value!59886 List!10635)) (WhitespaceValue!3778 (value!59887 List!10635)) (IndentationValue!1889 (value!59888 List!10635)) (String!13016) (Int32!1889) (Broken!9446 (value!59889 List!10635)) (Boolean!1890) (Unit!16213) (OperatorValue!1892 (op!1949 List!10635)) (IdentifierValue!3778 (value!59890 List!10635)) (IdentifierValue!3779 (value!59891 List!10635)) (WhitespaceValue!3779 (value!59892 List!10635)) (True!3778) (False!3778) (Broken!9447 (value!59893 List!10635)) (Broken!9448 (value!59894 List!10635)) (True!3779) (RightBrace!1889) (RightBracket!1889) (Colon!1889) (Null!1889) (Comma!1889) (LeftBracket!1889) (False!3779) (LeftBrace!1889) (ImaginaryLiteralValue!1889 (text!13669 List!10635)) (StringLiteralValue!5667 (value!59895 List!10635)) (EOFValue!1889 (value!59896 List!10635)) (IdentValue!1889 (value!59897 List!10635)) (DelimiterValue!3779 (value!59898 List!10635)) (DedentValue!1889 (value!59899 List!10635)) (NewLineValue!1889 (value!59900 List!10635)) (IntegerValue!5667 (value!59901 (_ BitVec 32)) (text!13670 List!10635)) (IntegerValue!5668 (value!59902 Int) (text!13671 List!10635)) (Times!1889) (Or!1889) (Equal!1889) (Minus!1889) (Broken!9449 (value!59903 List!10635)) (And!1889) (Div!1889) (LessEqual!1889) (Mod!1889) (Concat!4981) (Not!1889) (Plus!1889) (SpaceValue!1889 (value!59904 List!10635)) (IntegerValue!5669 (value!59905 Int) (text!13672 List!10635)) (StringLiteralValue!5668 (text!13673 List!10635)) (FloatLiteralValue!3779 (text!13674 List!10635)) (BytesLiteralValue!1889 (value!59906 List!10635)) (CommentValue!3779 (value!59907 List!10635)) (StringLiteralValue!5669 (value!59908 List!10635)) (ErrorTokenValue!1889 (msg!1950 List!10635)) )
))
(declare-datatypes ((Regex!3092 0))(
  ( (ElementMatch!3092 (c!186895 (_ BitVec 16))) (Concat!4982 (regOne!6696 Regex!3092) (regTwo!6696 Regex!3092)) (EmptyExpr!3092) (Star!3092 (reg!3421 Regex!3092)) (EmptyLang!3092) (Union!3092 (regOne!6697 Regex!3092) (regTwo!6697 Regex!3092)) )
))
(declare-datatypes ((String!13017 0))(
  ( (String!13018 (value!59909 String)) )
))
(declare-datatypes ((IArray!6597 0))(
  ( (IArray!6598 (innerList!3356 List!10635)) )
))
(declare-datatypes ((Conc!3296 0))(
  ( (Node!3296 (left!9173 Conc!3296) (right!9503 Conc!3296) (csize!6822 Int) (cheight!3507 Int)) (Leaf!5214 (xs!5989 IArray!6597) (csize!6823 Int)) (Empty!3296) )
))
(declare-datatypes ((BalanceConc!6606 0))(
  ( (BalanceConc!6607 (c!186896 Conc!3296)) )
))
(declare-datatypes ((TokenValueInjection!3478 0))(
  ( (TokenValueInjection!3479 (toValue!2900 Int) (toChars!2759 Int)) )
))
(declare-datatypes ((Rule!3446 0))(
  ( (Rule!3447 (regex!1823 Regex!3092) (tag!2085 String!13017) (isSeparator!1823 Bool) (transformation!1823 TokenValueInjection!3478)) )
))
(declare-datatypes ((List!10636 0))(
  ( (Nil!10620) (Cons!10620 (h!16021 Rule!3446) (t!103938 List!10636)) )
))
(declare-datatypes ((Token!3312 0))(
  ( (Token!3313 (value!59910 TokenValue!1889) (rule!3246 Rule!3446) (size!8241 Int) (originalCharacters!2379 List!10635)) )
))
(declare-datatypes ((List!10637 0))(
  ( (Nil!10621) (Cons!10621 (h!16022 Token!3312) (t!103939 List!10637)) )
))
(declare-datatypes ((IArray!6599 0))(
  ( (IArray!6600 (innerList!3357 List!10637)) )
))
(declare-datatypes ((Conc!3297 0))(
  ( (Node!3297 (left!9174 Conc!3297) (right!9504 Conc!3297) (csize!6824 Int) (cheight!3508 Int)) (Leaf!5215 (xs!5990 IArray!6599) (csize!6825 Int)) (Empty!3297) )
))
(declare-datatypes ((BalanceConc!6608 0))(
  ( (BalanceConc!6609 (c!186897 Conc!3297)) )
))
(declare-datatypes ((PrintableTokens!362 0))(
  ( (PrintableTokens!363 (rules!9110 List!10636) (tokens!1382 BalanceConc!6608)) )
))
(declare-datatypes ((tuple2!11772 0))(
  ( (tuple2!11773 (_1!6712 Int) (_2!6712 PrintableTokens!362)) )
))
(declare-datatypes ((List!10638 0))(
  ( (Nil!10622) (Cons!10622 (h!16023 tuple2!11772) (t!103940 List!10638)) )
))
(declare-datatypes ((IArray!6601 0))(
  ( (IArray!6602 (innerList!3358 List!10638)) )
))
(declare-datatypes ((Conc!3298 0))(
  ( (Node!3298 (left!9175 Conc!3298) (right!9505 Conc!3298) (csize!6826 Int) (cheight!3509 Int)) (Leaf!5216 (xs!5991 IArray!6601) (csize!6827 Int)) (Empty!3298) )
))
(declare-datatypes ((BalanceConc!6610 0))(
  ( (BalanceConc!6611 (c!186898 Conc!3298)) )
))
(declare-fun objs!8 () BalanceConc!6610)

(declare-fun forall!2445 (BalanceConc!6610 Int) Bool)

(assert (=> start!94640 (= res!488375 (forall!2445 objs!8 lambda!43301))))

(assert (=> start!94640 e!697247))

(declare-fun e!697243 () Bool)

(declare-fun inv!13647 (BalanceConc!6610) Bool)

(assert (=> start!94640 (and (inv!13647 objs!8) e!697243)))

(declare-fun b!1100962 () Bool)

(declare-fun res!488376 () Bool)

(declare-fun e!697246 () Bool)

(assert (=> b!1100962 (=> (not res!488376) (not e!697246))))

(assert (=> b!1100962 (= res!488376 (forall!2445 objs!8 lambda!43302))))

(declare-fun b!1100963 () Bool)

(declare-fun tp!327017 () Bool)

(declare-fun inv!13648 (Conc!3298) Bool)

(assert (=> b!1100963 (= e!697243 (and (inv!13648 (c!186898 objs!8)) tp!327017))))

(declare-fun b!1100964 () Bool)

(declare-datatypes ((Unit!16214 0))(
  ( (Unit!16215) )
))
(declare-fun e!697245 () Unit!16214)

(declare-fun err!2597 () Unit!16214)

(assert (=> b!1100964 (= e!697245 err!2597)))

(declare-fun lt!371925 () tuple2!11772)

(declare-fun lt!371924 () Unit!16214)

(declare-fun lt!371928 () BalanceConc!6610)

(declare-fun forallContained!517 (List!10638 Int tuple2!11772) Unit!16214)

(declare-fun list!3825 (BalanceConc!6610) List!10638)

(assert (=> b!1100964 (= lt!371924 (forallContained!517 (list!3825 lt!371928) lambda!43302 lt!371925))))

(assert (=> b!1100964 true))

(declare-fun b!1100965 () Bool)

(declare-fun e!697244 () Bool)

(assert (=> b!1100965 (= e!697244 e!697246)))

(declare-fun res!488373 () Bool)

(assert (=> b!1100965 (=> (not res!488373) (not e!697246))))

(declare-fun lt!371926 () Bool)

(assert (=> b!1100965 (= res!488373 (not lt!371926))))

(declare-fun lt!371929 () Unit!16214)

(assert (=> b!1100965 (= lt!371929 e!697245)))

(declare-fun c!186894 () Bool)

(assert (=> b!1100965 (= c!186894 lt!371926)))

(declare-fun contains!1858 (BalanceConc!6610 tuple2!11772) Bool)

(assert (=> b!1100965 (= lt!371926 (contains!1858 lt!371928 lt!371925))))

(declare-fun e!697248 () Bool)

(assert (=> b!1100966 (= e!697248 e!697244)))

(declare-fun res!488372 () Bool)

(assert (=> b!1100966 (=> (not res!488372) (not e!697244))))

(assert (=> b!1100966 (= res!488372 (contains!1858 objs!8 lt!371925))))

(declare-fun lt!371923 () BalanceConc!6610)

(declare-fun filter!334 (BalanceConc!6610 Int) BalanceConc!6610)

(assert (=> b!1100966 (= lt!371923 (filter!334 objs!8 lambda!43304))))

(declare-fun lt!371930 () BalanceConc!6610)

(assert (=> b!1100966 (= lt!371930 (filter!334 objs!8 lambda!43303))))

(assert (=> b!1100966 (= lt!371928 (filter!334 objs!8 lambda!43302))))

(declare-fun lt!371922 () Int)

(declare-fun apply!2134 (BalanceConc!6610 Int) tuple2!11772)

(assert (=> b!1100966 (= lt!371925 (apply!2134 objs!8 (ite (>= lt!371922 0) (div lt!371922 2) (- (div (- lt!371922) 2)))))))

(declare-fun b!1100967 () Bool)

(declare-fun Unit!16216 () Unit!16214)

(assert (=> b!1100967 (= e!697245 Unit!16216)))

(declare-fun b!1100968 () Bool)

(assert (=> b!1100968 (= e!697246 true)))

(declare-fun lt!371927 () Unit!16214)

(assert (=> b!1100968 (= lt!371927 (forallContained!517 (list!3825 objs!8) lambda!43302 lt!371925))))

(declare-fun b!1100969 () Bool)

(assert (=> b!1100969 (= e!697247 e!697248)))

(declare-fun res!488374 () Bool)

(assert (=> b!1100969 (=> (not res!488374) (not e!697248))))

(assert (=> b!1100969 (= res!488374 (> lt!371922 1))))

(declare-fun size!8242 (BalanceConc!6610) Int)

(assert (=> b!1100969 (= lt!371922 (size!8242 objs!8))))

(assert (= (and start!94640 res!488375) b!1100969))

(assert (= (and b!1100969 res!488374) b!1100966))

(assert (= (and b!1100966 res!488372) b!1100965))

(assert (= (and b!1100965 c!186894) b!1100964))

(assert (= (and b!1100965 (not c!186894)) b!1100967))

(assert (= (and b!1100965 res!488373) b!1100962))

(assert (= (and b!1100962 res!488376) b!1100968))

(assert (= start!94640 b!1100963))

(declare-fun m!1256899 () Bool)

(assert (=> b!1100964 m!1256899))

(assert (=> b!1100964 m!1256899))

(declare-fun m!1256901 () Bool)

(assert (=> b!1100964 m!1256901))

(declare-fun m!1256903 () Bool)

(assert (=> start!94640 m!1256903))

(declare-fun m!1256905 () Bool)

(assert (=> start!94640 m!1256905))

(declare-fun m!1256907 () Bool)

(assert (=> b!1100963 m!1256907))

(declare-fun m!1256909 () Bool)

(assert (=> b!1100965 m!1256909))

(declare-fun m!1256911 () Bool)

(assert (=> b!1100966 m!1256911))

(declare-fun m!1256913 () Bool)

(assert (=> b!1100966 m!1256913))

(declare-fun m!1256915 () Bool)

(assert (=> b!1100966 m!1256915))

(declare-fun m!1256917 () Bool)

(assert (=> b!1100966 m!1256917))

(declare-fun m!1256919 () Bool)

(assert (=> b!1100966 m!1256919))

(declare-fun m!1256921 () Bool)

(assert (=> b!1100968 m!1256921))

(assert (=> b!1100968 m!1256921))

(declare-fun m!1256923 () Bool)

(assert (=> b!1100968 m!1256923))

(declare-fun m!1256925 () Bool)

(assert (=> b!1100962 m!1256925))

(declare-fun m!1256927 () Bool)

(assert (=> b!1100969 m!1256927))

(push 1)

(assert (not b!1100981))

(assert (not b!1100977))

(assert (not start!94640))

(assert (not b!1100963))

(assert (not b!1100979))

(assert (not b!1100964))

(assert (not b!1100978))

(assert (not b!1100969))

(assert (not b!1100966))

(assert (not b!1100968))

(assert (not b!1100976))

(assert (not b!1100962))

(assert (not b!1100965))

(assert (not b!1100980))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!311342 () Bool)

(declare-fun dynLambda!4671 (Int tuple2!11772) Bool)

(assert (=> d!311342 (dynLambda!4671 lambda!43302 lt!371925)))

(declare-fun lt!371963 () Unit!16214)

(declare-fun choose!7095 (List!10638 Int tuple2!11772) Unit!16214)

(assert (=> d!311342 (= lt!371963 (choose!7095 (list!3825 objs!8) lambda!43302 lt!371925))))

(declare-fun e!697289 () Bool)

(assert (=> d!311342 e!697289))

(declare-fun res!488394 () Bool)

(assert (=> d!311342 (=> (not res!488394) (not e!697289))))

(declare-fun forall!2447 (List!10638 Int) Bool)

(assert (=> d!311342 (= res!488394 (forall!2447 (list!3825 objs!8) lambda!43302))))

(assert (=> d!311342 (= (forallContained!517 (list!3825 objs!8) lambda!43302 lt!371925) lt!371963)))

(declare-fun b!1101020 () Bool)

(declare-fun contains!1860 (List!10638 tuple2!11772) Bool)

(assert (=> b!1101020 (= e!697289 (contains!1860 (list!3825 objs!8) lt!371925))))

(assert (= (and d!311342 res!488394) b!1101020))

(declare-fun b_lambda!32163 () Bool)

(assert (=> (not b_lambda!32163) (not d!311342)))

(declare-fun m!1256965 () Bool)

(assert (=> d!311342 m!1256965))

(assert (=> d!311342 m!1256921))

(declare-fun m!1256967 () Bool)

(assert (=> d!311342 m!1256967))

(assert (=> d!311342 m!1256921))

(declare-fun m!1256969 () Bool)

(assert (=> d!311342 m!1256969))

(assert (=> b!1101020 m!1256921))

(declare-fun m!1256971 () Bool)

(assert (=> b!1101020 m!1256971))

(assert (=> b!1100968 d!311342))

(declare-fun d!311344 () Bool)

(declare-fun list!3827 (Conc!3298) List!10638)

(assert (=> d!311344 (= (list!3825 objs!8) (list!3827 (c!186898 objs!8)))))

(declare-fun bs!259425 () Bool)

(assert (= bs!259425 d!311344))

(declare-fun m!1256973 () Bool)

(assert (=> bs!259425 m!1256973))

(assert (=> b!1100968 d!311344))

(declare-fun d!311346 () Bool)

(declare-fun c!186911 () Bool)

(assert (=> d!311346 (= c!186911 (is-Node!3298 (c!186898 objs!8)))))

(declare-fun e!697300 () Bool)

(assert (=> d!311346 (= (inv!13648 (c!186898 objs!8)) e!697300)))

(declare-fun b!1101036 () Bool)

(declare-fun inv!13651 (Conc!3298) Bool)

(assert (=> b!1101036 (= e!697300 (inv!13651 (c!186898 objs!8)))))

(declare-fun b!1101037 () Bool)

(declare-fun e!697301 () Bool)

(assert (=> b!1101037 (= e!697300 e!697301)))

(declare-fun res!488400 () Bool)

(assert (=> b!1101037 (= res!488400 (not (is-Leaf!5216 (c!186898 objs!8))))))

(assert (=> b!1101037 (=> res!488400 e!697301)))

(declare-fun b!1101038 () Bool)

(declare-fun inv!13652 (Conc!3298) Bool)

(assert (=> b!1101038 (= e!697301 (inv!13652 (c!186898 objs!8)))))

(assert (= (and d!311346 c!186911) b!1101036))

(assert (= (and d!311346 (not c!186911)) b!1101037))

(assert (= (and b!1101037 (not res!488400)) b!1101038))

(declare-fun m!1256979 () Bool)

(assert (=> b!1101036 m!1256979))

(declare-fun m!1256981 () Bool)

(assert (=> b!1101038 m!1256981))

(assert (=> b!1100963 d!311346))

(declare-fun d!311350 () Bool)

(declare-fun lt!371966 () Bool)

(assert (=> d!311350 (= lt!371966 (forall!2447 (list!3825 objs!8) lambda!43302))))

(declare-fun forall!2448 (Conc!3298 Int) Bool)

(assert (=> d!311350 (= lt!371966 (forall!2448 (c!186898 objs!8) lambda!43302))))

(assert (=> d!311350 (= (forall!2445 objs!8 lambda!43302) lt!371966)))

(declare-fun bs!259426 () Bool)

(assert (= bs!259426 d!311350))

(assert (=> bs!259426 m!1256921))

(assert (=> bs!259426 m!1256921))

(assert (=> bs!259426 m!1256969))

(declare-fun m!1256983 () Bool)

(assert (=> bs!259426 m!1256983))

(assert (=> b!1100962 d!311350))

(declare-fun d!311352 () Bool)

(declare-fun lt!371969 () Bool)

(assert (=> d!311352 (= lt!371969 (forall!2447 (list!3825 objs!8) lambda!43301))))

(assert (=> d!311352 (= lt!371969 (forall!2448 (c!186898 objs!8) lambda!43301))))

(assert (=> d!311352 (= (forall!2445 objs!8 lambda!43301) lt!371969)))

(declare-fun bs!259427 () Bool)

(assert (= bs!259427 d!311352))

(assert (=> bs!259427 m!1256921))

(assert (=> bs!259427 m!1256921))

(declare-fun m!1256985 () Bool)

(assert (=> bs!259427 m!1256985))

(declare-fun m!1256987 () Bool)

(assert (=> bs!259427 m!1256987))

(assert (=> start!94640 d!311352))

(declare-fun d!311354 () Bool)

(declare-fun isBalanced!911 (Conc!3298) Bool)

(assert (=> d!311354 (= (inv!13647 objs!8) (isBalanced!911 (c!186898 objs!8)))))

(declare-fun bs!259428 () Bool)

(assert (= bs!259428 d!311354))

(declare-fun m!1256989 () Bool)

(assert (=> bs!259428 m!1256989))

(assert (=> start!94640 d!311354))

(declare-fun d!311356 () Bool)

(declare-fun lt!371973 () Bool)

(assert (=> d!311356 (= lt!371973 (contains!1860 (list!3825 objs!8) lt!371925))))

(declare-fun contains!1861 (Conc!3298 tuple2!11772) Bool)

(assert (=> d!311356 (= lt!371973 (contains!1861 (c!186898 objs!8) lt!371925))))

(assert (=> d!311356 (= (contains!1858 objs!8 lt!371925) lt!371973)))

(declare-fun bs!259429 () Bool)

(assert (= bs!259429 d!311356))

(assert (=> bs!259429 m!1256921))

(assert (=> bs!259429 m!1256921))

(assert (=> bs!259429 m!1256971))

(declare-fun m!1256999 () Bool)

(assert (=> bs!259429 m!1256999))

(assert (=> b!1100966 d!311356))

(declare-fun d!311360 () Bool)

(declare-fun e!697307 () Bool)

(assert (=> d!311360 e!697307))

(declare-fun res!488406 () Bool)

(assert (=> d!311360 (=> (not res!488406) (not e!697307))))

(declare-fun filter!336 (Conc!3298 Int) Conc!3298)

(assert (=> d!311360 (= res!488406 (isBalanced!911 (filter!336 (c!186898 objs!8) lambda!43304)))))

(declare-fun lt!371976 () BalanceConc!6610)

(assert (=> d!311360 (= lt!371976 (BalanceConc!6611 (filter!336 (c!186898 objs!8) lambda!43304)))))

(assert (=> d!311360 (= (filter!334 objs!8 lambda!43304) lt!371976)))

(declare-fun b!1101044 () Bool)

(declare-fun filter!337 (List!10638 Int) List!10638)

(assert (=> b!1101044 (= e!697307 (= (list!3825 lt!371976) (filter!337 (list!3825 objs!8) lambda!43304)))))

(assert (= (and d!311360 res!488406) b!1101044))

(declare-fun m!1257003 () Bool)

(assert (=> d!311360 m!1257003))

(assert (=> d!311360 m!1257003))

(declare-fun m!1257005 () Bool)

(assert (=> d!311360 m!1257005))

(declare-fun m!1257007 () Bool)

(assert (=> b!1101044 m!1257007))

(assert (=> b!1101044 m!1256921))

(assert (=> b!1101044 m!1256921))

(declare-fun m!1257009 () Bool)

(assert (=> b!1101044 m!1257009))

(assert (=> b!1100966 d!311360))

(declare-fun d!311364 () Bool)

(declare-fun lt!371979 () tuple2!11772)

(declare-fun apply!2136 (List!10638 Int) tuple2!11772)

(assert (=> d!311364 (= lt!371979 (apply!2136 (list!3825 objs!8) (ite (>= lt!371922 0) (div lt!371922 2) (- (div (- lt!371922) 2)))))))

(declare-fun apply!2137 (Conc!3298 Int) tuple2!11772)

(assert (=> d!311364 (= lt!371979 (apply!2137 (c!186898 objs!8) (ite (>= lt!371922 0) (div lt!371922 2) (- (div (- lt!371922) 2)))))))

(declare-fun e!697310 () Bool)

(assert (=> d!311364 e!697310))

(declare-fun res!488409 () Bool)

(assert (=> d!311364 (=> (not res!488409) (not e!697310))))

(assert (=> d!311364 (= res!488409 (<= 0 (ite (>= lt!371922 0) (div lt!371922 2) (- (div (- lt!371922) 2)))))))

(assert (=> d!311364 (= (apply!2134 objs!8 (ite (>= lt!371922 0) (div lt!371922 2) (- (div (- lt!371922) 2)))) lt!371979)))

(declare-fun b!1101047 () Bool)

(assert (=> b!1101047 (= e!697310 (< (ite (>= lt!371922 0) (div lt!371922 2) (- (div (- lt!371922) 2))) (size!8242 objs!8)))))

(assert (= (and d!311364 res!488409) b!1101047))

(assert (=> d!311364 m!1256921))

(assert (=> d!311364 m!1256921))

(declare-fun m!1257011 () Bool)

(assert (=> d!311364 m!1257011))

(declare-fun m!1257013 () Bool)

(assert (=> d!311364 m!1257013))

(assert (=> b!1101047 m!1256927))

(assert (=> b!1100966 d!311364))

(declare-fun d!311366 () Bool)

(declare-fun e!697311 () Bool)

(assert (=> d!311366 e!697311))

(declare-fun res!488410 () Bool)

(assert (=> d!311366 (=> (not res!488410) (not e!697311))))

(assert (=> d!311366 (= res!488410 (isBalanced!911 (filter!336 (c!186898 objs!8) lambda!43303)))))

(declare-fun lt!371980 () BalanceConc!6610)

(assert (=> d!311366 (= lt!371980 (BalanceConc!6611 (filter!336 (c!186898 objs!8) lambda!43303)))))

(assert (=> d!311366 (= (filter!334 objs!8 lambda!43303) lt!371980)))

(declare-fun b!1101048 () Bool)

(assert (=> b!1101048 (= e!697311 (= (list!3825 lt!371980) (filter!337 (list!3825 objs!8) lambda!43303)))))

(assert (= (and d!311366 res!488410) b!1101048))

(declare-fun m!1257015 () Bool)

(assert (=> d!311366 m!1257015))

(assert (=> d!311366 m!1257015))

(declare-fun m!1257017 () Bool)

(assert (=> d!311366 m!1257017))

(declare-fun m!1257019 () Bool)

(assert (=> b!1101048 m!1257019))

(assert (=> b!1101048 m!1256921))

(assert (=> b!1101048 m!1256921))

(declare-fun m!1257021 () Bool)

(assert (=> b!1101048 m!1257021))

(assert (=> b!1100966 d!311366))

(declare-fun d!311368 () Bool)

(declare-fun e!697312 () Bool)

(assert (=> d!311368 e!697312))

(declare-fun res!488411 () Bool)

(assert (=> d!311368 (=> (not res!488411) (not e!697312))))

(assert (=> d!311368 (= res!488411 (isBalanced!911 (filter!336 (c!186898 objs!8) lambda!43302)))))

(declare-fun lt!371981 () BalanceConc!6610)

(assert (=> d!311368 (= lt!371981 (BalanceConc!6611 (filter!336 (c!186898 objs!8) lambda!43302)))))

(assert (=> d!311368 (= (filter!334 objs!8 lambda!43302) lt!371981)))

(declare-fun b!1101049 () Bool)

(assert (=> b!1101049 (= e!697312 (= (list!3825 lt!371981) (filter!337 (list!3825 objs!8) lambda!43302)))))

(assert (= (and d!311368 res!488411) b!1101049))

(declare-fun m!1257023 () Bool)

(assert (=> d!311368 m!1257023))

(assert (=> d!311368 m!1257023))

(declare-fun m!1257025 () Bool)

(assert (=> d!311368 m!1257025))

(declare-fun m!1257027 () Bool)

(assert (=> b!1101049 m!1257027))

(assert (=> b!1101049 m!1256921))

(assert (=> b!1101049 m!1256921))

(declare-fun m!1257029 () Bool)

(assert (=> b!1101049 m!1257029))

(assert (=> b!1100966 d!311368))

(declare-fun d!311370 () Bool)

(declare-fun lt!371982 () Bool)

(assert (=> d!311370 (= lt!371982 (contains!1860 (list!3825 lt!371928) lt!371925))))

(assert (=> d!311370 (= lt!371982 (contains!1861 (c!186898 lt!371928) lt!371925))))

(assert (=> d!311370 (= (contains!1858 lt!371928 lt!371925) lt!371982)))

(declare-fun bs!259431 () Bool)

(assert (= bs!259431 d!311370))

(assert (=> bs!259431 m!1256899))

(assert (=> bs!259431 m!1256899))

(declare-fun m!1257031 () Bool)

(assert (=> bs!259431 m!1257031))

(declare-fun m!1257033 () Bool)

(assert (=> bs!259431 m!1257033))

(assert (=> b!1100965 d!311370))

(declare-fun d!311372 () Bool)

(assert (=> d!311372 (dynLambda!4671 lambda!43302 lt!371925)))

(declare-fun lt!371983 () Unit!16214)

(assert (=> d!311372 (= lt!371983 (choose!7095 (list!3825 lt!371928) lambda!43302 lt!371925))))

(declare-fun e!697313 () Bool)

(assert (=> d!311372 e!697313))

(declare-fun res!488412 () Bool)

(assert (=> d!311372 (=> (not res!488412) (not e!697313))))

(assert (=> d!311372 (= res!488412 (forall!2447 (list!3825 lt!371928) lambda!43302))))

(assert (=> d!311372 (= (forallContained!517 (list!3825 lt!371928) lambda!43302 lt!371925) lt!371983)))

(declare-fun b!1101050 () Bool)

(assert (=> b!1101050 (= e!697313 (contains!1860 (list!3825 lt!371928) lt!371925))))

(assert (= (and d!311372 res!488412) b!1101050))

(declare-fun b_lambda!32167 () Bool)

(assert (=> (not b_lambda!32167) (not d!311372)))

(assert (=> d!311372 m!1256965))

(assert (=> d!311372 m!1256899))

(declare-fun m!1257035 () Bool)

(assert (=> d!311372 m!1257035))

(assert (=> d!311372 m!1256899))

(declare-fun m!1257037 () Bool)

(assert (=> d!311372 m!1257037))

(assert (=> b!1101050 m!1256899))

(assert (=> b!1101050 m!1257031))

(assert (=> b!1100964 d!311372))

(declare-fun d!311374 () Bool)

(assert (=> d!311374 (= (list!3825 lt!371928) (list!3827 (c!186898 lt!371928)))))

(declare-fun bs!259432 () Bool)

(assert (= bs!259432 d!311374))

(declare-fun m!1257039 () Bool)

(assert (=> bs!259432 m!1257039))

(assert (=> b!1100964 d!311374))

(declare-fun d!311376 () Bool)

(declare-fun lt!371988 () Int)

(declare-fun size!8245 (List!10638) Int)

(assert (=> d!311376 (= lt!371988 (size!8245 (list!3825 objs!8)))))

(declare-fun size!8246 (Conc!3298) Int)

(assert (=> d!311376 (= lt!371988 (size!8246 (c!186898 objs!8)))))

(assert (=> d!311376 (= (size!8242 objs!8) lt!371988)))

(declare-fun bs!259433 () Bool)

(assert (= bs!259433 d!311376))

(assert (=> bs!259433 m!1256921))

(assert (=> bs!259433 m!1256921))

(declare-fun m!1257041 () Bool)

(assert (=> bs!259433 m!1257041))

(declare-fun m!1257043 () Bool)

(assert (=> bs!259433 m!1257043))

(assert (=> b!1100969 d!311376))

(declare-fun tp!327028 () Bool)

(declare-fun b!1101061 () Bool)

(declare-fun tp!327027 () Bool)

(declare-fun e!697320 () Bool)

(assert (=> b!1101061 (= e!697320 (and (inv!13648 (left!9175 (c!186898 objs!8))) tp!327028 (inv!13648 (right!9505 (c!186898 objs!8))) tp!327027))))

(declare-fun b!1101063 () Bool)

(declare-fun e!697321 () Bool)

(declare-fun tp!327029 () Bool)

(assert (=> b!1101063 (= e!697321 tp!327029)))

(declare-fun b!1101062 () Bool)

(declare-fun inv!13653 (IArray!6601) Bool)

(assert (=> b!1101062 (= e!697320 (and (inv!13653 (xs!5991 (c!186898 objs!8))) e!697321))))

(assert (=> b!1100963 (= tp!327017 (and (inv!13648 (c!186898 objs!8)) e!697320))))

(assert (= (and b!1100963 (is-Node!3298 (c!186898 objs!8))) b!1101061))

(assert (= b!1101062 b!1101063))

(assert (= (and b!1100963 (is-Leaf!5216 (c!186898 objs!8))) b!1101062))

(declare-fun m!1257045 () Bool)

(assert (=> b!1101061 m!1257045))

(declare-fun m!1257047 () Bool)

(assert (=> b!1101061 m!1257047))

(declare-fun m!1257049 () Bool)

(assert (=> b!1101062 m!1257049))

(assert (=> b!1100963 m!1256907))

(declare-fun b!1101073 () Bool)

(declare-fun e!697327 () Bool)

(assert (=> b!1101073 (= e!697327 true)))

(declare-fun b!1101075 () Bool)

(declare-fun e!697328 () Bool)

(assert (=> b!1101075 (= e!697328 true)))

(declare-fun b!1101074 () Bool)

(assert (=> b!1101074 (= e!697327 e!697328)))

(assert (=> b!1100981 e!697327))

(assert (= (and b!1100981 (is-Node!3297 (c!186897 (tokens!1382 (_2!6712 lt!371925))))) b!1101073))

(assert (= b!1101074 b!1101075))

(assert (= (and b!1100981 (is-Leaf!5215 (c!186897 (tokens!1382 (_2!6712 lt!371925))))) b!1101074))

(declare-fun b!1101076 () Bool)

(declare-fun e!697329 () Bool)

(assert (=> b!1101076 (= e!697329 true)))

(declare-fun b!1101078 () Bool)

(declare-fun e!697330 () Bool)

(assert (=> b!1101078 (= e!697330 true)))

(declare-fun b!1101077 () Bool)

(assert (=> b!1101077 (= e!697329 e!697330)))

(assert (=> b!1100979 e!697329))

(assert (= (and b!1100979 (is-Node!3297 (c!186897 (tokens!1382 (_2!6712 lt!371925))))) b!1101076))

(assert (= b!1101077 b!1101078))

(assert (= (and b!1100979 (is-Leaf!5215 (c!186897 (tokens!1382 (_2!6712 lt!371925))))) b!1101077))

(declare-fun b!1101091 () Bool)

(declare-fun e!697341 () Bool)

(assert (=> b!1101091 (= e!697341 true)))

(declare-fun b!1101090 () Bool)

(declare-fun e!697340 () Bool)

(assert (=> b!1101090 (= e!697340 e!697341)))

(declare-fun b!1101089 () Bool)

(declare-fun e!697339 () Bool)

(assert (=> b!1101089 (= e!697339 e!697340)))

(assert (=> b!1100978 e!697339))

(assert (= b!1101090 b!1101091))

(assert (= b!1101089 b!1101090))

(assert (= (and b!1100978 (is-Cons!10620 (rules!9110 (_2!6712 lt!371925)))) b!1101089))

(declare-fun order!6455 () Int)

(declare-fun order!6453 () Int)

(declare-fun dynLambda!4672 (Int Int) Int)

(declare-fun dynLambda!4673 (Int Int) Int)

(assert (=> b!1101091 (< (dynLambda!4672 order!6453 (toValue!2900 (transformation!1823 (h!16021 (rules!9110 (_2!6712 lt!371925)))))) (dynLambda!4673 order!6455 lambda!43303))))

(declare-fun order!6457 () Int)

(declare-fun dynLambda!4674 (Int Int) Int)

(assert (=> b!1101091 (< (dynLambda!4674 order!6457 (toChars!2759 (transformation!1823 (h!16021 (rules!9110 (_2!6712 lt!371925)))))) (dynLambda!4673 order!6455 lambda!43303))))

(declare-fun b!1101092 () Bool)

(declare-fun e!697342 () Bool)

(assert (=> b!1101092 (= e!697342 true)))

(declare-fun b!1101094 () Bool)

(declare-fun e!697343 () Bool)

(assert (=> b!1101094 (= e!697343 true)))

(declare-fun b!1101093 () Bool)

(assert (=> b!1101093 (= e!697342 e!697343)))

(assert (=> b!1100977 e!697342))

(assert (= (and b!1100977 (is-Node!3297 (c!186897 (tokens!1382 (_2!6712 lt!371925))))) b!1101092))

(assert (= b!1101093 b!1101094))

(assert (= (and b!1100977 (is-Leaf!5215 (c!186897 (tokens!1382 (_2!6712 lt!371925))))) b!1101093))

(declare-fun b!1101097 () Bool)

(declare-fun e!697346 () Bool)

(assert (=> b!1101097 (= e!697346 true)))

(declare-fun b!1101096 () Bool)

(declare-fun e!697345 () Bool)

(assert (=> b!1101096 (= e!697345 e!697346)))

(declare-fun b!1101095 () Bool)

(declare-fun e!697344 () Bool)

(assert (=> b!1101095 (= e!697344 e!697345)))

(assert (=> b!1100976 e!697344))

(assert (= b!1101096 b!1101097))

(assert (= b!1101095 b!1101096))

(assert (= (and b!1100976 (is-Cons!10620 (rules!9110 (_2!6712 lt!371925)))) b!1101095))

(assert (=> b!1101097 (< (dynLambda!4672 order!6453 (toValue!2900 (transformation!1823 (h!16021 (rules!9110 (_2!6712 lt!371925)))))) (dynLambda!4673 order!6455 lambda!43302))))

(assert (=> b!1101097 (< (dynLambda!4674 order!6457 (toChars!2759 (transformation!1823 (h!16021 (rules!9110 (_2!6712 lt!371925)))))) (dynLambda!4673 order!6455 lambda!43302))))

(declare-fun b!1101100 () Bool)

(declare-fun e!697349 () Bool)

(assert (=> b!1101100 (= e!697349 true)))

(declare-fun b!1101099 () Bool)

(declare-fun e!697348 () Bool)

(assert (=> b!1101099 (= e!697348 e!697349)))

(declare-fun b!1101098 () Bool)

(declare-fun e!697347 () Bool)

(assert (=> b!1101098 (= e!697347 e!697348)))

(assert (=> b!1100980 e!697347))

(assert (= b!1101099 b!1101100))

(assert (= b!1101098 b!1101099))

(assert (= (and b!1100980 (is-Cons!10620 (rules!9110 (_2!6712 lt!371925)))) b!1101098))

(assert (=> b!1101100 (< (dynLambda!4672 order!6453 (toValue!2900 (transformation!1823 (h!16021 (rules!9110 (_2!6712 lt!371925)))))) (dynLambda!4673 order!6455 lambda!43304))))

(assert (=> b!1101100 (< (dynLambda!4674 order!6457 (toChars!2759 (transformation!1823 (h!16021 (rules!9110 (_2!6712 lt!371925)))))) (dynLambda!4673 order!6455 lambda!43304))))

(declare-fun b_lambda!32169 () Bool)

(assert (= b_lambda!32167 (or b!1100966 b_lambda!32169)))

(declare-fun bs!259434 () Bool)

(declare-fun d!311384 () Bool)

(assert (= bs!259434 (and d!311384 b!1100966)))

(assert (=> bs!259434 (= (dynLambda!4671 lambda!43302 lt!371925) (< (_1!6712 lt!371925) (_1!6712 lt!371925)))))

(assert (=> d!311372 d!311384))

(declare-fun b_lambda!32171 () Bool)

(assert (= b_lambda!32163 (or b!1100966 b_lambda!32171)))

(assert (=> d!311342 d!311384))

(push 1)

(assert (not b!1101062))

(assert (not b!1101061))

(assert (not d!311376))

(assert (not b!1100963))

(assert (not b!1101020))

(assert (not d!311352))

(assert (not b!1101076))

(assert (not d!311342))

(assert (not d!311344))

(assert (not d!311370))

(assert (not b!1101089))

(assert (not d!311350))

(assert (not d!311374))

(assert (not b!1101050))

(assert (not d!311372))

(assert (not d!311366))

(assert (not d!311360))

(assert (not d!311356))

(assert (not b_lambda!32171))

(assert (not b!1101092))

(assert (not b!1101078))

(assert (not d!311368))

(assert (not b!1101075))

(assert (not d!311364))

(assert (not b!1101038))

(assert (not b!1101095))

(assert (not b!1101049))

(assert (not b_lambda!32169))

(assert (not b!1101098))

(assert (not d!311354))

(assert (not b!1101073))

(assert (not b!1101063))

(assert (not b!1101048))

(assert (not b!1101044))

(assert (not b!1101036))

(assert (not b!1101047))

(assert (not b!1101094))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

