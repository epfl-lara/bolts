; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!395410 () Bool)

(assert start!395410)

(declare-fun b!4153911 () Bool)

(declare-fun b_free!118963 () Bool)

(declare-fun b_next!119667 () Bool)

(assert (=> b!4153911 (= b_free!118963 (not b_next!119667))))

(declare-fun tp!1266488 () Bool)

(declare-fun b_and!323325 () Bool)

(assert (=> b!4153911 (= tp!1266488 b_and!323325)))

(declare-fun b_free!118965 () Bool)

(declare-fun b_next!119669 () Bool)

(assert (=> b!4153911 (= b_free!118965 (not b_next!119669))))

(declare-fun tp!1266489 () Bool)

(declare-fun b_and!323327 () Bool)

(assert (=> b!4153911 (= tp!1266489 b_and!323327)))

(declare-fun b!4153905 () Bool)

(declare-fun b_free!118967 () Bool)

(declare-fun b_next!119671 () Bool)

(assert (=> b!4153905 (= b_free!118967 (not b_next!119671))))

(declare-fun tp!1266484 () Bool)

(declare-fun b_and!323329 () Bool)

(assert (=> b!4153905 (= tp!1266484 b_and!323329)))

(declare-fun b_free!118969 () Bool)

(declare-fun b_next!119673 () Bool)

(assert (=> b!4153905 (= b_free!118969 (not b_next!119673))))

(declare-fun tp!1266482 () Bool)

(declare-fun b_and!323331 () Bool)

(assert (=> b!4153905 (= tp!1266482 b_and!323331)))

(declare-fun b!4153904 () Bool)

(declare-fun b_free!118971 () Bool)

(declare-fun b_next!119675 () Bool)

(assert (=> b!4153904 (= b_free!118971 (not b_next!119675))))

(declare-fun tp!1266490 () Bool)

(declare-fun b_and!323333 () Bool)

(assert (=> b!4153904 (= tp!1266490 b_and!323333)))

(declare-fun b_free!118973 () Bool)

(declare-fun b_next!119677 () Bool)

(assert (=> b!4153904 (= b_free!118973 (not b_next!119677))))

(declare-fun tp!1266483 () Bool)

(declare-fun b_and!323335 () Bool)

(assert (=> b!4153904 (= tp!1266483 b_and!323335)))

(declare-fun b!4153900 () Bool)

(declare-fun res!1701201 () Bool)

(declare-fun e!2577360 () Bool)

(assert (=> b!4153900 (=> (not res!1701201) (not e!2577360))))

(declare-datatypes ((List!45300 0))(
  ( (Nil!45176) (Cons!45176 (h!50596 (_ BitVec 16)) (t!343331 List!45300)) )
))
(declare-datatypes ((TokenValue!7680 0))(
  ( (FloatLiteralValue!15360 (text!54205 List!45300)) (TokenValueExt!7679 (__x!27577 Int)) (Broken!38400 (value!232840 List!45300)) (Object!7803) (End!7680) (Def!7680) (Underscore!7680) (Match!7680) (Else!7680) (Error!7680) (Case!7680) (If!7680) (Extends!7680) (Abstract!7680) (Class!7680) (Val!7680) (DelimiterValue!15360 (del!7740 List!45300)) (KeywordValue!7686 (value!232841 List!45300)) (CommentValue!15360 (value!232842 List!45300)) (WhitespaceValue!15360 (value!232843 List!45300)) (IndentationValue!7680 (value!232844 List!45300)) (String!52149) (Int32!7680) (Broken!38401 (value!232845 List!45300)) (Boolean!7681) (Unit!64412) (OperatorValue!7683 (op!7740 List!45300)) (IdentifierValue!15360 (value!232846 List!45300)) (IdentifierValue!15361 (value!232847 List!45300)) (WhitespaceValue!15361 (value!232848 List!45300)) (True!15360) (False!15360) (Broken!38402 (value!232849 List!45300)) (Broken!38403 (value!232850 List!45300)) (True!15361) (RightBrace!7680) (RightBracket!7680) (Colon!7680) (Null!7680) (Comma!7680) (LeftBracket!7680) (False!15361) (LeftBrace!7680) (ImaginaryLiteralValue!7680 (text!54206 List!45300)) (StringLiteralValue!23040 (value!232851 List!45300)) (EOFValue!7680 (value!232852 List!45300)) (IdentValue!7680 (value!232853 List!45300)) (DelimiterValue!15361 (value!232854 List!45300)) (DedentValue!7680 (value!232855 List!45300)) (NewLineValue!7680 (value!232856 List!45300)) (IntegerValue!23040 (value!232857 (_ BitVec 32)) (text!54207 List!45300)) (IntegerValue!23041 (value!232858 Int) (text!54208 List!45300)) (Times!7680) (Or!7680) (Equal!7680) (Minus!7680) (Broken!38404 (value!232859 List!45300)) (And!7680) (Div!7680) (LessEqual!7680) (Mod!7680) (Concat!20035) (Not!7680) (Plus!7680) (SpaceValue!7680 (value!232860 List!45300)) (IntegerValue!23042 (value!232861 Int) (text!54209 List!45300)) (StringLiteralValue!23041 (text!54210 List!45300)) (FloatLiteralValue!15361 (text!54211 List!45300)) (BytesLiteralValue!7680 (value!232862 List!45300)) (CommentValue!15361 (value!232863 List!45300)) (StringLiteralValue!23042 (value!232864 List!45300)) (ErrorTokenValue!7680 (msg!7741 List!45300)) )
))
(declare-datatypes ((C!24896 0))(
  ( (C!24897 (val!14558 Int)) )
))
(declare-datatypes ((List!45301 0))(
  ( (Nil!45177) (Cons!45177 (h!50597 C!24896) (t!343332 List!45301)) )
))
(declare-datatypes ((String!52150 0))(
  ( (String!52151 (value!232865 String)) )
))
(declare-datatypes ((IArray!27327 0))(
  ( (IArray!27328 (innerList!13721 List!45301)) )
))
(declare-datatypes ((Conc!13661 0))(
  ( (Node!13661 (left!33808 Conc!13661) (right!34138 Conc!13661) (csize!27552 Int) (cheight!13872 Int)) (Leaf!21101 (xs!16967 IArray!27327) (csize!27553 Int)) (Empty!13661) )
))
(declare-datatypes ((Regex!12355 0))(
  ( (ElementMatch!12355 (c!711230 C!24896)) (Concat!20036 (regOne!25222 Regex!12355) (regTwo!25222 Regex!12355)) (EmptyExpr!12355) (Star!12355 (reg!12684 Regex!12355)) (EmptyLang!12355) (Union!12355 (regOne!25223 Regex!12355) (regTwo!25223 Regex!12355)) )
))
(declare-datatypes ((BalanceConc!26916 0))(
  ( (BalanceConc!26917 (c!711231 Conc!13661)) )
))
(declare-datatypes ((TokenValueInjection!14788 0))(
  ( (TokenValueInjection!14789 (toValue!10114 Int) (toChars!9973 Int)) )
))
(declare-datatypes ((Rule!14700 0))(
  ( (Rule!14701 (regex!7450 Regex!12355) (tag!8310 String!52150) (isSeparator!7450 Bool) (transformation!7450 TokenValueInjection!14788)) )
))
(declare-datatypes ((List!45302 0))(
  ( (Nil!45178) (Cons!45178 (h!50598 Rule!14700) (t!343333 List!45302)) )
))
(declare-fun rules!4102 () List!45302)

(declare-fun r2!597 () Rule!14700)

(declare-fun r1!615 () Rule!14700)

(declare-fun getIndex!792 (List!45302 Rule!14700) Int)

(assert (=> b!4153900 (= res!1701201 (< (getIndex!792 rules!4102 r1!615) (getIndex!792 rules!4102 r2!597)))))

(declare-fun b!4153901 () Bool)

(declare-fun res!1701204 () Bool)

(assert (=> b!4153901 (=> (not res!1701204) (not e!2577360))))

(declare-fun contains!9142 (List!45302 Rule!14700) Bool)

(assert (=> b!4153901 (= res!1701204 (contains!9142 rules!4102 r2!597))))

(declare-fun e!2577366 () Bool)

(declare-fun tp!1266485 () Bool)

(declare-fun b!4153902 () Bool)

(declare-fun e!2577362 () Bool)

(declare-fun inv!59770 (String!52150) Bool)

(declare-fun inv!59772 (TokenValueInjection!14788) Bool)

(assert (=> b!4153902 (= e!2577366 (and tp!1266485 (inv!59770 (tag!8310 r2!597)) (inv!59772 (transformation!7450 r2!597)) e!2577362))))

(declare-fun b!4153903 () Bool)

(declare-fun e!2577369 () Bool)

(declare-fun e!2577364 () Bool)

(declare-fun tp!1266487 () Bool)

(assert (=> b!4153903 (= e!2577369 (and e!2577364 tp!1266487))))

(declare-fun e!2577365 () Bool)

(assert (=> b!4153904 (= e!2577365 (and tp!1266490 tp!1266483))))

(assert (=> b!4153905 (= e!2577362 (and tp!1266484 tp!1266482))))

(declare-fun b!4153906 () Bool)

(declare-fun res!1701202 () Bool)

(assert (=> b!4153906 (=> (not res!1701202) (not e!2577360))))

(declare-fun head!8776 (List!45302) Rule!14700)

(assert (=> b!4153906 (= res!1701202 (= (head!8776 rules!4102) r1!615))))

(declare-fun res!1701203 () Bool)

(assert (=> start!395410 (=> (not res!1701203) (not e!2577360))))

(declare-datatypes ((LexerInterface!7039 0))(
  ( (LexerInterfaceExt!7036 (__x!27578 Int)) (Lexer!7037) )
))
(declare-fun thiss!26968 () LexerInterface!7039)

(get-info :version)

(assert (=> start!395410 (= res!1701203 ((_ is Lexer!7037) thiss!26968))))

(assert (=> start!395410 e!2577360))

(assert (=> start!395410 true))

(assert (=> start!395410 e!2577369))

(declare-fun e!2577363 () Bool)

(assert (=> start!395410 e!2577363))

(assert (=> start!395410 e!2577366))

(declare-fun b!4153907 () Bool)

(declare-fun res!1701199 () Bool)

(assert (=> b!4153907 (=> (not res!1701199) (not e!2577360))))

(declare-datatypes ((List!45303 0))(
  ( (Nil!45179) (Cons!45179 (h!50599 String!52150) (t!343334 List!45303)) )
))
(declare-fun noDuplicateTag!3027 (LexerInterface!7039 List!45302 List!45303) Bool)

(declare-fun noDuplicateTag$default$2!32 (LexerInterface!7039) List!45303)

(assert (=> b!4153907 (= res!1701199 (noDuplicateTag!3027 thiss!26968 rules!4102 (noDuplicateTag$default$2!32 thiss!26968)))))

(declare-fun b!4153908 () Bool)

(declare-fun tp!1266481 () Bool)

(assert (=> b!4153908 (= e!2577364 (and tp!1266481 (inv!59770 (tag!8310 (h!50598 rules!4102))) (inv!59772 (transformation!7450 (h!50598 rules!4102))) e!2577365))))

(declare-fun e!2577368 () Bool)

(declare-fun b!4153909 () Bool)

(declare-fun tp!1266486 () Bool)

(assert (=> b!4153909 (= e!2577363 (and tp!1266486 (inv!59770 (tag!8310 r1!615)) (inv!59772 (transformation!7450 r1!615)) e!2577368))))

(declare-fun b!4153910 () Bool)

(assert (=> b!4153910 (= e!2577360 (not (not (= rules!4102 Nil!45178))))))

(assert (=> b!4153910 (not (= (tag!8310 r2!597) (tag!8310 r1!615)))))

(declare-datatypes ((Unit!64413 0))(
  ( (Unit!64414) )
))
(declare-fun lt!1481120 () Unit!64413)

(declare-fun lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!10 (LexerInterface!7039 List!45302 Rule!14700 String!52150 List!45303) Unit!64413)

(declare-fun tail!6615 (List!45302) List!45302)

(assert (=> b!4153910 (= lt!1481120 (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!10 thiss!26968 (tail!6615 rules!4102) r2!597 (tag!8310 r1!615) (Cons!45179 (tag!8310 r1!615) Nil!45179)))))

(assert (=> b!4153911 (= e!2577368 (and tp!1266488 tp!1266489))))

(declare-fun b!4153912 () Bool)

(declare-fun res!1701200 () Bool)

(assert (=> b!4153912 (=> (not res!1701200) (not e!2577360))))

(assert (=> b!4153912 (= res!1701200 (contains!9142 rules!4102 r1!615))))

(assert (= (and start!395410 res!1701203) b!4153912))

(assert (= (and b!4153912 res!1701200) b!4153901))

(assert (= (and b!4153901 res!1701204) b!4153907))

(assert (= (and b!4153907 res!1701199) b!4153900))

(assert (= (and b!4153900 res!1701201) b!4153906))

(assert (= (and b!4153906 res!1701202) b!4153910))

(assert (= b!4153908 b!4153904))

(assert (= b!4153903 b!4153908))

(assert (= (and start!395410 ((_ is Cons!45178) rules!4102)) b!4153903))

(assert (= b!4153909 b!4153911))

(assert (= start!395410 b!4153909))

(assert (= b!4153902 b!4153905))

(assert (= start!395410 b!4153902))

(declare-fun m!4748879 () Bool)

(assert (=> b!4153908 m!4748879))

(declare-fun m!4748881 () Bool)

(assert (=> b!4153908 m!4748881))

(declare-fun m!4748883 () Bool)

(assert (=> b!4153910 m!4748883))

(assert (=> b!4153910 m!4748883))

(declare-fun m!4748885 () Bool)

(assert (=> b!4153910 m!4748885))

(declare-fun m!4748887 () Bool)

(assert (=> b!4153909 m!4748887))

(declare-fun m!4748889 () Bool)

(assert (=> b!4153909 m!4748889))

(declare-fun m!4748891 () Bool)

(assert (=> b!4153907 m!4748891))

(assert (=> b!4153907 m!4748891))

(declare-fun m!4748893 () Bool)

(assert (=> b!4153907 m!4748893))

(declare-fun m!4748895 () Bool)

(assert (=> b!4153906 m!4748895))

(declare-fun m!4748897 () Bool)

(assert (=> b!4153912 m!4748897))

(declare-fun m!4748899 () Bool)

(assert (=> b!4153902 m!4748899))

(declare-fun m!4748901 () Bool)

(assert (=> b!4153902 m!4748901))

(declare-fun m!4748903 () Bool)

(assert (=> b!4153900 m!4748903))

(declare-fun m!4748905 () Bool)

(assert (=> b!4153900 m!4748905))

(declare-fun m!4748907 () Bool)

(assert (=> b!4153901 m!4748907))

(check-sat (not b!4153903) (not b!4153908) (not b!4153900) (not b_next!119677) (not b_next!119667) (not b!4153912) (not b!4153907) (not b!4153909) (not b_next!119675) b_and!323325 (not b_next!119673) b_and!323335 (not b!4153910) (not b_next!119671) (not b!4153901) (not b!4153906) (not b!4153902) (not b_next!119669) b_and!323329 b_and!323333 b_and!323327 b_and!323331)
(check-sat (not b_next!119677) b_and!323335 (not b_next!119671) (not b_next!119667) (not b_next!119675) b_and!323325 (not b_next!119673) (not b_next!119669) b_and!323329 b_and!323333 b_and!323327 b_and!323331)
(get-model)

(declare-fun d!1228460 () Bool)

(assert (=> d!1228460 (= (inv!59770 (tag!8310 r2!597)) (= (mod (str.len (value!232865 (tag!8310 r2!597))) 2) 0))))

(assert (=> b!4153902 d!1228460))

(declare-fun d!1228462 () Bool)

(declare-fun res!1701216 () Bool)

(declare-fun e!2577375 () Bool)

(assert (=> d!1228462 (=> (not res!1701216) (not e!2577375))))

(declare-fun semiInverseModEq!3224 (Int Int) Bool)

(assert (=> d!1228462 (= res!1701216 (semiInverseModEq!3224 (toChars!9973 (transformation!7450 r2!597)) (toValue!10114 (transformation!7450 r2!597))))))

(assert (=> d!1228462 (= (inv!59772 (transformation!7450 r2!597)) e!2577375)))

(declare-fun b!4153915 () Bool)

(declare-fun equivClasses!3123 (Int Int) Bool)

(assert (=> b!4153915 (= e!2577375 (equivClasses!3123 (toChars!9973 (transformation!7450 r2!597)) (toValue!10114 (transformation!7450 r2!597))))))

(assert (= (and d!1228462 res!1701216) b!4153915))

(declare-fun m!4748909 () Bool)

(assert (=> d!1228462 m!4748909))

(declare-fun m!4748911 () Bool)

(assert (=> b!4153915 m!4748911))

(assert (=> b!4153902 d!1228462))

(declare-fun d!1228468 () Bool)

(declare-fun res!1701226 () Bool)

(declare-fun e!2577385 () Bool)

(assert (=> d!1228468 (=> res!1701226 e!2577385)))

(assert (=> d!1228468 (= res!1701226 ((_ is Nil!45178) rules!4102))))

(assert (=> d!1228468 (= (noDuplicateTag!3027 thiss!26968 rules!4102 (noDuplicateTag$default$2!32 thiss!26968)) e!2577385)))

(declare-fun b!4153927 () Bool)

(declare-fun e!2577386 () Bool)

(assert (=> b!4153927 (= e!2577385 e!2577386)))

(declare-fun res!1701227 () Bool)

(assert (=> b!4153927 (=> (not res!1701227) (not e!2577386))))

(declare-fun contains!9143 (List!45303 String!52150) Bool)

(assert (=> b!4153927 (= res!1701227 (not (contains!9143 (noDuplicateTag$default$2!32 thiss!26968) (tag!8310 (h!50598 rules!4102)))))))

(declare-fun b!4153928 () Bool)

(assert (=> b!4153928 (= e!2577386 (noDuplicateTag!3027 thiss!26968 (t!343333 rules!4102) (Cons!45179 (tag!8310 (h!50598 rules!4102)) (noDuplicateTag$default$2!32 thiss!26968))))))

(assert (= (and d!1228468 (not res!1701226)) b!4153927))

(assert (= (and b!4153927 res!1701227) b!4153928))

(assert (=> b!4153927 m!4748891))

(declare-fun m!4748917 () Bool)

(assert (=> b!4153927 m!4748917))

(declare-fun m!4748919 () Bool)

(assert (=> b!4153928 m!4748919))

(assert (=> b!4153907 d!1228468))

(declare-fun d!1228472 () Bool)

(assert (=> d!1228472 (= (noDuplicateTag$default$2!32 thiss!26968) Nil!45179)))

(assert (=> b!4153907 d!1228472))

(declare-fun d!1228474 () Bool)

(declare-fun lt!1481128 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6987 (List!45302) (InoxSet Rule!14700))

(assert (=> d!1228474 (= lt!1481128 (select (content!6987 rules!4102) r1!615))))

(declare-fun e!2577395 () Bool)

(assert (=> d!1228474 (= lt!1481128 e!2577395)))

(declare-fun res!1701236 () Bool)

(assert (=> d!1228474 (=> (not res!1701236) (not e!2577395))))

(assert (=> d!1228474 (= res!1701236 ((_ is Cons!45178) rules!4102))))

(assert (=> d!1228474 (= (contains!9142 rules!4102 r1!615) lt!1481128)))

(declare-fun b!4153936 () Bool)

(declare-fun e!2577394 () Bool)

(assert (=> b!4153936 (= e!2577395 e!2577394)))

(declare-fun res!1701235 () Bool)

(assert (=> b!4153936 (=> res!1701235 e!2577394)))

(assert (=> b!4153936 (= res!1701235 (= (h!50598 rules!4102) r1!615))))

(declare-fun b!4153937 () Bool)

(assert (=> b!4153937 (= e!2577394 (contains!9142 (t!343333 rules!4102) r1!615))))

(assert (= (and d!1228474 res!1701236) b!4153936))

(assert (= (and b!4153936 (not res!1701235)) b!4153937))

(declare-fun m!4748931 () Bool)

(assert (=> d!1228474 m!4748931))

(declare-fun m!4748933 () Bool)

(assert (=> d!1228474 m!4748933))

(declare-fun m!4748935 () Bool)

(assert (=> b!4153937 m!4748935))

(assert (=> b!4153912 d!1228474))

(declare-fun d!1228482 () Bool)

(declare-fun lt!1481129 () Bool)

(assert (=> d!1228482 (= lt!1481129 (select (content!6987 rules!4102) r2!597))))

(declare-fun e!2577397 () Bool)

(assert (=> d!1228482 (= lt!1481129 e!2577397)))

(declare-fun res!1701238 () Bool)

(assert (=> d!1228482 (=> (not res!1701238) (not e!2577397))))

(assert (=> d!1228482 (= res!1701238 ((_ is Cons!45178) rules!4102))))

(assert (=> d!1228482 (= (contains!9142 rules!4102 r2!597) lt!1481129)))

(declare-fun b!4153938 () Bool)

(declare-fun e!2577396 () Bool)

(assert (=> b!4153938 (= e!2577397 e!2577396)))

(declare-fun res!1701237 () Bool)

(assert (=> b!4153938 (=> res!1701237 e!2577396)))

(assert (=> b!4153938 (= res!1701237 (= (h!50598 rules!4102) r2!597))))

(declare-fun b!4153939 () Bool)

(assert (=> b!4153939 (= e!2577396 (contains!9142 (t!343333 rules!4102) r2!597))))

(assert (= (and d!1228482 res!1701238) b!4153938))

(assert (= (and b!4153938 (not res!1701237)) b!4153939))

(assert (=> d!1228482 m!4748931))

(declare-fun m!4748937 () Bool)

(assert (=> d!1228482 m!4748937))

(declare-fun m!4748939 () Bool)

(assert (=> b!4153939 m!4748939))

(assert (=> b!4153901 d!1228482))

(declare-fun d!1228484 () Bool)

(assert (=> d!1228484 (= (head!8776 rules!4102) (h!50598 rules!4102))))

(assert (=> b!4153906 d!1228484))

(declare-fun b!4153963 () Bool)

(declare-fun e!2577410 () Int)

(assert (=> b!4153963 (= e!2577410 (- 1))))

(declare-fun d!1228488 () Bool)

(declare-fun lt!1481135 () Int)

(assert (=> d!1228488 (>= lt!1481135 0)))

(declare-fun e!2577409 () Int)

(assert (=> d!1228488 (= lt!1481135 e!2577409)))

(declare-fun c!711240 () Bool)

(assert (=> d!1228488 (= c!711240 (and ((_ is Cons!45178) rules!4102) (= (h!50598 rules!4102) r1!615)))))

(assert (=> d!1228488 (contains!9142 rules!4102 r1!615)))

(assert (=> d!1228488 (= (getIndex!792 rules!4102 r1!615) lt!1481135)))

(declare-fun b!4153961 () Bool)

(assert (=> b!4153961 (= e!2577410 (+ 1 (getIndex!792 (t!343333 rules!4102) r1!615)))))

(declare-fun b!4153959 () Bool)

(assert (=> b!4153959 (= e!2577409 e!2577410)))

(declare-fun c!711243 () Bool)

(assert (=> b!4153959 (= c!711243 (and ((_ is Cons!45178) rules!4102) (not (= (h!50598 rules!4102) r1!615))))))

(declare-fun b!4153957 () Bool)

(assert (=> b!4153957 (= e!2577409 0)))

(assert (= (and d!1228488 c!711240) b!4153957))

(assert (= (and d!1228488 (not c!711240)) b!4153959))

(assert (= (and b!4153959 c!711243) b!4153961))

(assert (= (and b!4153959 (not c!711243)) b!4153963))

(assert (=> d!1228488 m!4748897))

(declare-fun m!4748947 () Bool)

(assert (=> b!4153961 m!4748947))

(assert (=> b!4153900 d!1228488))

(declare-fun b!4153971 () Bool)

(declare-fun e!2577415 () Int)

(assert (=> b!4153971 (= e!2577415 (- 1))))

(declare-fun d!1228494 () Bool)

(declare-fun lt!1481138 () Int)

(assert (=> d!1228494 (>= lt!1481138 0)))

(declare-fun e!2577414 () Int)

(assert (=> d!1228494 (= lt!1481138 e!2577414)))

(declare-fun c!711246 () Bool)

(assert (=> d!1228494 (= c!711246 (and ((_ is Cons!45178) rules!4102) (= (h!50598 rules!4102) r2!597)))))

(assert (=> d!1228494 (contains!9142 rules!4102 r2!597)))

(assert (=> d!1228494 (= (getIndex!792 rules!4102 r2!597) lt!1481138)))

(declare-fun b!4153970 () Bool)

(assert (=> b!4153970 (= e!2577415 (+ 1 (getIndex!792 (t!343333 rules!4102) r2!597)))))

(declare-fun b!4153969 () Bool)

(assert (=> b!4153969 (= e!2577414 e!2577415)))

(declare-fun c!711247 () Bool)

(assert (=> b!4153969 (= c!711247 (and ((_ is Cons!45178) rules!4102) (not (= (h!50598 rules!4102) r2!597))))))

(declare-fun b!4153968 () Bool)

(assert (=> b!4153968 (= e!2577414 0)))

(assert (= (and d!1228494 c!711246) b!4153968))

(assert (= (and d!1228494 (not c!711246)) b!4153969))

(assert (= (and b!4153969 c!711247) b!4153970))

(assert (= (and b!4153969 (not c!711247)) b!4153971))

(assert (=> d!1228494 m!4748907))

(declare-fun m!4748951 () Bool)

(assert (=> b!4153970 m!4748951))

(assert (=> b!4153900 d!1228494))

(declare-fun d!1228498 () Bool)

(assert (=> d!1228498 (not (= (tag!8310 r2!597) (tag!8310 r1!615)))))

(declare-fun lt!1481142 () Unit!64413)

(declare-fun choose!25435 (LexerInterface!7039 List!45302 Rule!14700 String!52150 List!45303) Unit!64413)

(assert (=> d!1228498 (= lt!1481142 (choose!25435 thiss!26968 (tail!6615 rules!4102) r2!597 (tag!8310 r1!615) (Cons!45179 (tag!8310 r1!615) Nil!45179)))))

(assert (=> d!1228498 (contains!9143 (Cons!45179 (tag!8310 r1!615) Nil!45179) (tag!8310 r1!615))))

(assert (=> d!1228498 (= (lemmaNoDuplicateAndTagInAccThenRuleCannotHaveSame!10 thiss!26968 (tail!6615 rules!4102) r2!597 (tag!8310 r1!615) (Cons!45179 (tag!8310 r1!615) Nil!45179)) lt!1481142)))

(declare-fun bs!595495 () Bool)

(assert (= bs!595495 d!1228498))

(assert (=> bs!595495 m!4748883))

(declare-fun m!4748957 () Bool)

(assert (=> bs!595495 m!4748957))

(declare-fun m!4748959 () Bool)

(assert (=> bs!595495 m!4748959))

(assert (=> b!4153910 d!1228498))

(declare-fun d!1228504 () Bool)

(assert (=> d!1228504 (= (tail!6615 rules!4102) (t!343333 rules!4102))))

(assert (=> b!4153910 d!1228504))

(declare-fun d!1228506 () Bool)

(assert (=> d!1228506 (= (inv!59770 (tag!8310 r1!615)) (= (mod (str.len (value!232865 (tag!8310 r1!615))) 2) 0))))

(assert (=> b!4153909 d!1228506))

(declare-fun d!1228508 () Bool)

(declare-fun res!1701245 () Bool)

(declare-fun e!2577422 () Bool)

(assert (=> d!1228508 (=> (not res!1701245) (not e!2577422))))

(assert (=> d!1228508 (= res!1701245 (semiInverseModEq!3224 (toChars!9973 (transformation!7450 r1!615)) (toValue!10114 (transformation!7450 r1!615))))))

(assert (=> d!1228508 (= (inv!59772 (transformation!7450 r1!615)) e!2577422)))

(declare-fun b!4153978 () Bool)

(assert (=> b!4153978 (= e!2577422 (equivClasses!3123 (toChars!9973 (transformation!7450 r1!615)) (toValue!10114 (transformation!7450 r1!615))))))

(assert (= (and d!1228508 res!1701245) b!4153978))

(declare-fun m!4748961 () Bool)

(assert (=> d!1228508 m!4748961))

(declare-fun m!4748963 () Bool)

(assert (=> b!4153978 m!4748963))

(assert (=> b!4153909 d!1228508))

(declare-fun d!1228510 () Bool)

(assert (=> d!1228510 (= (inv!59770 (tag!8310 (h!50598 rules!4102))) (= (mod (str.len (value!232865 (tag!8310 (h!50598 rules!4102)))) 2) 0))))

(assert (=> b!4153908 d!1228510))

(declare-fun d!1228512 () Bool)

(declare-fun res!1701248 () Bool)

(declare-fun e!2577425 () Bool)

(assert (=> d!1228512 (=> (not res!1701248) (not e!2577425))))

(assert (=> d!1228512 (= res!1701248 (semiInverseModEq!3224 (toChars!9973 (transformation!7450 (h!50598 rules!4102))) (toValue!10114 (transformation!7450 (h!50598 rules!4102)))))))

(assert (=> d!1228512 (= (inv!59772 (transformation!7450 (h!50598 rules!4102))) e!2577425)))

(declare-fun b!4153981 () Bool)

(assert (=> b!4153981 (= e!2577425 (equivClasses!3123 (toChars!9973 (transformation!7450 (h!50598 rules!4102))) (toValue!10114 (transformation!7450 (h!50598 rules!4102)))))))

(assert (= (and d!1228512 res!1701248) b!4153981))

(declare-fun m!4748967 () Bool)

(assert (=> d!1228512 m!4748967))

(declare-fun m!4748971 () Bool)

(assert (=> b!4153981 m!4748971))

(assert (=> b!4153908 d!1228512))

(declare-fun b!4154004 () Bool)

(declare-fun e!2577431 () Bool)

(declare-fun tp!1266514 () Bool)

(declare-fun tp!1266511 () Bool)

(assert (=> b!4154004 (= e!2577431 (and tp!1266514 tp!1266511))))

(declare-fun b!4154003 () Bool)

(declare-fun tp_is_empty!21615 () Bool)

(assert (=> b!4154003 (= e!2577431 tp_is_empty!21615)))

(declare-fun b!4154005 () Bool)

(declare-fun tp!1266512 () Bool)

(assert (=> b!4154005 (= e!2577431 tp!1266512)))

(assert (=> b!4153902 (= tp!1266485 e!2577431)))

(declare-fun b!4154006 () Bool)

(declare-fun tp!1266515 () Bool)

(declare-fun tp!1266513 () Bool)

(assert (=> b!4154006 (= e!2577431 (and tp!1266515 tp!1266513))))

(assert (= (and b!4153902 ((_ is ElementMatch!12355) (regex!7450 r2!597))) b!4154003))

(assert (= (and b!4153902 ((_ is Concat!20036) (regex!7450 r2!597))) b!4154004))

(assert (= (and b!4153902 ((_ is Star!12355) (regex!7450 r2!597))) b!4154005))

(assert (= (and b!4153902 ((_ is Union!12355) (regex!7450 r2!597))) b!4154006))

(declare-fun b!4154008 () Bool)

(declare-fun e!2577432 () Bool)

(declare-fun tp!1266519 () Bool)

(declare-fun tp!1266516 () Bool)

(assert (=> b!4154008 (= e!2577432 (and tp!1266519 tp!1266516))))

(declare-fun b!4154007 () Bool)

(assert (=> b!4154007 (= e!2577432 tp_is_empty!21615)))

(declare-fun b!4154009 () Bool)

(declare-fun tp!1266517 () Bool)

(assert (=> b!4154009 (= e!2577432 tp!1266517)))

(assert (=> b!4153909 (= tp!1266486 e!2577432)))

(declare-fun b!4154010 () Bool)

(declare-fun tp!1266520 () Bool)

(declare-fun tp!1266518 () Bool)

(assert (=> b!4154010 (= e!2577432 (and tp!1266520 tp!1266518))))

(assert (= (and b!4153909 ((_ is ElementMatch!12355) (regex!7450 r1!615))) b!4154007))

(assert (= (and b!4153909 ((_ is Concat!20036) (regex!7450 r1!615))) b!4154008))

(assert (= (and b!4153909 ((_ is Star!12355) (regex!7450 r1!615))) b!4154009))

(assert (= (and b!4153909 ((_ is Union!12355) (regex!7450 r1!615))) b!4154010))

(declare-fun b!4154037 () Bool)

(declare-fun b_free!118975 () Bool)

(declare-fun b_next!119679 () Bool)

(assert (=> b!4154037 (= b_free!118975 (not b_next!119679))))

(declare-fun tp!1266549 () Bool)

(declare-fun b_and!323337 () Bool)

(assert (=> b!4154037 (= tp!1266549 b_and!323337)))

(declare-fun b_free!118977 () Bool)

(declare-fun b_next!119681 () Bool)

(assert (=> b!4154037 (= b_free!118977 (not b_next!119681))))

(declare-fun tp!1266550 () Bool)

(declare-fun b_and!323339 () Bool)

(assert (=> b!4154037 (= tp!1266550 b_and!323339)))

(declare-fun e!2577454 () Bool)

(assert (=> b!4154037 (= e!2577454 (and tp!1266549 tp!1266550))))

(declare-fun tp!1266547 () Bool)

(declare-fun e!2577452 () Bool)

(declare-fun b!4154036 () Bool)

(assert (=> b!4154036 (= e!2577452 (and tp!1266547 (inv!59770 (tag!8310 (h!50598 (t!343333 rules!4102)))) (inv!59772 (transformation!7450 (h!50598 (t!343333 rules!4102)))) e!2577454))))

(declare-fun b!4154035 () Bool)

(declare-fun e!2577453 () Bool)

(declare-fun tp!1266548 () Bool)

(assert (=> b!4154035 (= e!2577453 (and e!2577452 tp!1266548))))

(assert (=> b!4153903 (= tp!1266487 e!2577453)))

(assert (= b!4154036 b!4154037))

(assert (= b!4154035 b!4154036))

(assert (= (and b!4153903 ((_ is Cons!45178) (t!343333 rules!4102))) b!4154035))

(declare-fun m!4748977 () Bool)

(assert (=> b!4154036 m!4748977))

(declare-fun m!4748979 () Bool)

(assert (=> b!4154036 m!4748979))

(declare-fun b!4154039 () Bool)

(declare-fun e!2577455 () Bool)

(declare-fun tp!1266554 () Bool)

(declare-fun tp!1266551 () Bool)

(assert (=> b!4154039 (= e!2577455 (and tp!1266554 tp!1266551))))

(declare-fun b!4154038 () Bool)

(assert (=> b!4154038 (= e!2577455 tp_is_empty!21615)))

(declare-fun b!4154040 () Bool)

(declare-fun tp!1266552 () Bool)

(assert (=> b!4154040 (= e!2577455 tp!1266552)))

(assert (=> b!4153908 (= tp!1266481 e!2577455)))

(declare-fun b!4154041 () Bool)

(declare-fun tp!1266555 () Bool)

(declare-fun tp!1266553 () Bool)

(assert (=> b!4154041 (= e!2577455 (and tp!1266555 tp!1266553))))

(assert (= (and b!4153908 ((_ is ElementMatch!12355) (regex!7450 (h!50598 rules!4102)))) b!4154038))

(assert (= (and b!4153908 ((_ is Concat!20036) (regex!7450 (h!50598 rules!4102)))) b!4154039))

(assert (= (and b!4153908 ((_ is Star!12355) (regex!7450 (h!50598 rules!4102)))) b!4154040))

(assert (= (and b!4153908 ((_ is Union!12355) (regex!7450 (h!50598 rules!4102)))) b!4154041))

(check-sat (not b!4154009) (not b_next!119681) b_and!323335 (not b_next!119671) b_and!323337 (not b!4154039) (not b!4154010) (not b!4154005) b_and!323339 (not b!4153927) (not b!4153915) (not b!4154041) (not b!4153939) (not b!4153981) (not b!4153928) (not b!4154006) (not d!1228512) (not b!4154004) (not b!4154036) (not b!4153937) (not d!1228494) (not d!1228462) (not d!1228498) (not b!4154040) (not b_next!119677) (not d!1228474) (not b!4153978) (not b_next!119667) (not b!4153970) (not b_next!119679) (not b_next!119675) tp_is_empty!21615 b_and!323325 (not d!1228508) (not b_next!119669) b_and!323329 b_and!323333 (not d!1228488) b_and!323327 b_and!323331 (not b!4153961) (not b_next!119673) (not d!1228482) (not b!4154035) (not b!4154008))
(check-sat (not b_next!119681) (not b_next!119677) b_and!323335 (not b_next!119671) (not b_next!119667) b_and!323337 (not b_next!119679) (not b_next!119675) b_and!323325 b_and!323339 (not b_next!119673) (not b_next!119669) b_and!323329 b_and!323333 b_and!323327 b_and!323331)
