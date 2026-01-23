; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!118710 () Bool)

(assert start!118710)

(declare-fun b!1334639 () Bool)

(declare-fun b_free!32443 () Bool)

(declare-fun b_next!33147 () Bool)

(assert (=> b!1334639 (= b_free!32443 (not b_next!33147))))

(declare-fun tp!386069 () Bool)

(declare-fun b_and!89243 () Bool)

(assert (=> b!1334639 (= tp!386069 b_and!89243)))

(declare-fun b_free!32445 () Bool)

(declare-fun b_next!33149 () Bool)

(assert (=> b!1334639 (= b_free!32445 (not b_next!33149))))

(declare-fun tp!386071 () Bool)

(declare-fun b_and!89245 () Bool)

(assert (=> b!1334639 (= tp!386071 b_and!89245)))

(declare-fun b!1334642 () Bool)

(declare-fun b_free!32447 () Bool)

(declare-fun b_next!33151 () Bool)

(assert (=> b!1334642 (= b_free!32447 (not b_next!33151))))

(declare-fun tp!386067 () Bool)

(declare-fun b_and!89247 () Bool)

(assert (=> b!1334642 (= tp!386067 b_and!89247)))

(declare-fun b_free!32449 () Bool)

(declare-fun b_next!33153 () Bool)

(assert (=> b!1334642 (= b_free!32449 (not b_next!33153))))

(declare-fun tp!386068 () Bool)

(declare-fun b_and!89249 () Bool)

(assert (=> b!1334642 (= tp!386068 b_and!89249)))

(declare-fun b!1334631 () Bool)

(declare-fun b_free!32451 () Bool)

(declare-fun b_next!33155 () Bool)

(assert (=> b!1334631 (= b_free!32451 (not b_next!33155))))

(declare-fun tp!386074 () Bool)

(declare-fun b_and!89251 () Bool)

(assert (=> b!1334631 (= tp!386074 b_and!89251)))

(declare-fun b_free!32453 () Bool)

(declare-fun b_next!33157 () Bool)

(assert (=> b!1334631 (= b_free!32453 (not b_next!33157))))

(declare-fun tp!386073 () Bool)

(declare-fun b_and!89253 () Bool)

(assert (=> b!1334631 (= tp!386073 b_and!89253)))

(declare-fun e!855015 () Bool)

(declare-fun e!855012 () Bool)

(declare-datatypes ((List!13684 0))(
  ( (Nil!13618) (Cons!13618 (h!19019 (_ BitVec 16)) (t!119163 List!13684)) )
))
(declare-datatypes ((TokenValue!2451 0))(
  ( (FloatLiteralValue!4902 (text!17602 List!13684)) (TokenValueExt!2450 (__x!8731 Int)) (Broken!12255 (value!76895 List!13684)) (Object!2516) (End!2451) (Def!2451) (Underscore!2451) (Match!2451) (Else!2451) (Error!2451) (Case!2451) (If!2451) (Extends!2451) (Abstract!2451) (Class!2451) (Val!2451) (DelimiterValue!4902 (del!2511 List!13684)) (KeywordValue!2457 (value!76896 List!13684)) (CommentValue!4902 (value!76897 List!13684)) (WhitespaceValue!4902 (value!76898 List!13684)) (IndentationValue!2451 (value!76899 List!13684)) (String!16490) (Int32!2451) (Broken!12256 (value!76900 List!13684)) (Boolean!2452) (Unit!19756) (OperatorValue!2454 (op!2511 List!13684)) (IdentifierValue!4902 (value!76901 List!13684)) (IdentifierValue!4903 (value!76902 List!13684)) (WhitespaceValue!4903 (value!76903 List!13684)) (True!4902) (False!4902) (Broken!12257 (value!76904 List!13684)) (Broken!12258 (value!76905 List!13684)) (True!4903) (RightBrace!2451) (RightBracket!2451) (Colon!2451) (Null!2451) (Comma!2451) (LeftBracket!2451) (False!4903) (LeftBrace!2451) (ImaginaryLiteralValue!2451 (text!17603 List!13684)) (StringLiteralValue!7353 (value!76906 List!13684)) (EOFValue!2451 (value!76907 List!13684)) (IdentValue!2451 (value!76908 List!13684)) (DelimiterValue!4903 (value!76909 List!13684)) (DedentValue!2451 (value!76910 List!13684)) (NewLineValue!2451 (value!76911 List!13684)) (IntegerValue!7353 (value!76912 (_ BitVec 32)) (text!17604 List!13684)) (IntegerValue!7354 (value!76913 Int) (text!17605 List!13684)) (Times!2451) (Or!2451) (Equal!2451) (Minus!2451) (Broken!12259 (value!76914 List!13684)) (And!2451) (Div!2451) (LessEqual!2451) (Mod!2451) (Concat!6126) (Not!2451) (Plus!2451) (SpaceValue!2451 (value!76915 List!13684)) (IntegerValue!7355 (value!76916 Int) (text!17606 List!13684)) (StringLiteralValue!7354 (text!17607 List!13684)) (FloatLiteralValue!4903 (text!17608 List!13684)) (BytesLiteralValue!2451 (value!76917 List!13684)) (CommentValue!4903 (value!76918 List!13684)) (StringLiteralValue!7355 (value!76919 List!13684)) (ErrorTokenValue!2451 (msg!2512 List!13684)) )
))
(declare-datatypes ((C!7640 0))(
  ( (C!7641 (val!4380 Int)) )
))
(declare-datatypes ((List!13685 0))(
  ( (Nil!13619) (Cons!13619 (h!19020 C!7640) (t!119164 List!13685)) )
))
(declare-datatypes ((IArray!8983 0))(
  ( (IArray!8984 (innerList!4549 List!13685)) )
))
(declare-datatypes ((Conc!4489 0))(
  ( (Node!4489 (left!11687 Conc!4489) (right!12017 Conc!4489) (csize!9208 Int) (cheight!4700 Int)) (Leaf!6866 (xs!7204 IArray!8983) (csize!9209 Int)) (Empty!4489) )
))
(declare-datatypes ((BalanceConc!8918 0))(
  ( (BalanceConc!8919 (c!218523 Conc!4489)) )
))
(declare-datatypes ((Regex!3675 0))(
  ( (ElementMatch!3675 (c!218524 C!7640)) (Concat!6127 (regOne!7862 Regex!3675) (regTwo!7862 Regex!3675)) (EmptyExpr!3675) (Star!3675 (reg!4004 Regex!3675)) (EmptyLang!3675) (Union!3675 (regOne!7863 Regex!3675) (regTwo!7863 Regex!3675)) )
))
(declare-datatypes ((String!16491 0))(
  ( (String!16492 (value!76920 String)) )
))
(declare-datatypes ((TokenValueInjection!4562 0))(
  ( (TokenValueInjection!4563 (toValue!3592 Int) (toChars!3451 Int)) )
))
(declare-datatypes ((Rule!4522 0))(
  ( (Rule!4523 (regex!2361 Regex!3675) (tag!2623 String!16491) (isSeparator!2361 Bool) (transformation!2361 TokenValueInjection!4562)) )
))
(declare-datatypes ((Token!4384 0))(
  ( (Token!4385 (value!76921 TokenValue!2451) (rule!4106 Rule!4522) (size!11081 Int) (originalCharacters!3223 List!13685)) )
))
(declare-fun t2!34 () Token!4384)

(declare-fun tp!386075 () Bool)

(declare-fun b!1334627 () Bool)

(declare-fun inv!17949 (String!16491) Bool)

(declare-fun inv!17952 (TokenValueInjection!4562) Bool)

(assert (=> b!1334627 (= e!855012 (and tp!386075 (inv!17949 (tag!2623 (rule!4106 t2!34))) (inv!17952 (transformation!2361 (rule!4106 t2!34))) e!855015))))

(declare-fun e!855017 () Bool)

(declare-fun b!1334628 () Bool)

(declare-fun tp!386070 () Bool)

(declare-fun e!855014 () Bool)

(declare-datatypes ((List!13686 0))(
  ( (Nil!13620) (Cons!13620 (h!19021 Rule!4522) (t!119165 List!13686)) )
))
(declare-fun rules!2550 () List!13686)

(assert (=> b!1334628 (= e!855014 (and tp!386070 (inv!17949 (tag!2623 (h!19021 rules!2550))) (inv!17952 (transformation!2361 (h!19021 rules!2550))) e!855017))))

(declare-fun b!1334629 () Bool)

(declare-fun e!855003 () Bool)

(declare-fun e!855007 () Bool)

(assert (=> b!1334629 (= e!855003 e!855007)))

(declare-fun res!601900 () Bool)

(assert (=> b!1334629 (=> (not res!601900) (not e!855007))))

(declare-fun lt!441934 () BalanceConc!8918)

(declare-fun size!11082 (BalanceConc!8918) Int)

(assert (=> b!1334629 (= res!601900 (> (size!11082 lt!441934) 0))))

(declare-fun charsOf!1333 (Token!4384) BalanceConc!8918)

(assert (=> b!1334629 (= lt!441934 (charsOf!1333 t2!34))))

(declare-fun e!855005 () Bool)

(declare-fun tp!386078 () Bool)

(declare-fun b!1334630 () Bool)

(declare-fun inv!21 (TokenValue!2451) Bool)

(assert (=> b!1334630 (= e!855005 (and (inv!21 (value!76921 t2!34)) e!855012 tp!386078))))

(assert (=> b!1334631 (= e!855015 (and tp!386074 tp!386073))))

(declare-fun e!855011 () Bool)

(declare-fun t1!34 () Token!4384)

(declare-fun b!1334632 () Bool)

(declare-fun tp!386077 () Bool)

(declare-fun e!855013 () Bool)

(assert (=> b!1334632 (= e!855013 (and (inv!21 (value!76921 t1!34)) e!855011 tp!386077))))

(declare-fun b!1334633 () Bool)

(declare-fun res!601903 () Bool)

(assert (=> b!1334633 (=> (not res!601903) (not e!855003))))

(declare-fun isEmpty!8119 (List!13686) Bool)

(assert (=> b!1334633 (= res!601903 (not (isEmpty!8119 rules!2550)))))

(declare-fun b!1334634 () Bool)

(declare-fun res!601899 () Bool)

(assert (=> b!1334634 (=> (not res!601899) (not e!855003))))

(declare-datatypes ((LexerInterface!2056 0))(
  ( (LexerInterfaceExt!2053 (__x!8732 Int)) (Lexer!2054) )
))
(declare-fun thiss!19762 () LexerInterface!2056)

(declare-fun rulesProduceIndividualToken!1025 (LexerInterface!2056 List!13686 Token!4384) Bool)

(assert (=> b!1334634 (= res!601899 (rulesProduceIndividualToken!1025 thiss!19762 rules!2550 t2!34))))

(declare-fun b!1334635 () Bool)

(declare-fun res!601902 () Bool)

(assert (=> b!1334635 (=> (not res!601902) (not e!855007))))

(declare-fun separableTokensPredicate!339 (LexerInterface!2056 Token!4384 Token!4384 List!13686) Bool)

(assert (=> b!1334635 (= res!601902 (not (separableTokensPredicate!339 thiss!19762 t1!34 t2!34 rules!2550)))))

(declare-fun b!1334636 () Bool)

(declare-fun res!601897 () Bool)

(assert (=> b!1334636 (=> (not res!601897) (not e!855003))))

(assert (=> b!1334636 (= res!601897 (not (= (isSeparator!2361 (rule!4106 t1!34)) (isSeparator!2361 (rule!4106 t2!34)))))))

(declare-fun b!1334637 () Bool)

(declare-fun res!601905 () Bool)

(assert (=> b!1334637 (=> (not res!601905) (not e!855003))))

(declare-fun rulesInvariant!1926 (LexerInterface!2056 List!13686) Bool)

(assert (=> b!1334637 (= res!601905 (rulesInvariant!1926 thiss!19762 rules!2550))))

(declare-fun b!1334638 () Bool)

(declare-fun e!855006 () Bool)

(declare-fun tp!386072 () Bool)

(assert (=> b!1334638 (= e!855006 (and e!855014 tp!386072))))

(declare-fun res!601901 () Bool)

(assert (=> start!118710 (=> (not res!601901) (not e!855003))))

(get-info :version)

(assert (=> start!118710 (= res!601901 ((_ is Lexer!2054) thiss!19762))))

(assert (=> start!118710 e!855003))

(assert (=> start!118710 true))

(assert (=> start!118710 e!855006))

(declare-fun inv!17953 (Token!4384) Bool)

(assert (=> start!118710 (and (inv!17953 t1!34) e!855013)))

(assert (=> start!118710 (and (inv!17953 t2!34) e!855005)))

(declare-fun b!1334626 () Bool)

(declare-fun e!855018 () Bool)

(declare-fun tp!386076 () Bool)

(assert (=> b!1334626 (= e!855011 (and tp!386076 (inv!17949 (tag!2623 (rule!4106 t1!34))) (inv!17952 (transformation!2361 (rule!4106 t1!34))) e!855018))))

(assert (=> b!1334639 (= e!855017 (and tp!386069 tp!386071))))

(declare-fun b!1334640 () Bool)

(declare-fun res!601904 () Bool)

(assert (=> b!1334640 (=> (not res!601904) (not e!855007))))

(declare-fun sepAndNonSepRulesDisjointChars!734 (List!13686 List!13686) Bool)

(assert (=> b!1334640 (= res!601904 (sepAndNonSepRulesDisjointChars!734 rules!2550 rules!2550))))

(declare-fun b!1334641 () Bool)

(declare-fun prefixMatch!184 (Regex!3675 List!13685) Bool)

(declare-fun rulesRegex!244 (LexerInterface!2056 List!13686) Regex!3675)

(declare-fun ++!3476 (List!13685 List!13685) List!13685)

(declare-fun list!5169 (BalanceConc!8918) List!13685)

(declare-fun apply!3171 (BalanceConc!8918 Int) C!7640)

(assert (=> b!1334641 (= e!855007 (not (prefixMatch!184 (rulesRegex!244 thiss!19762 rules!2550) (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(assert (=> b!1334642 (= e!855018 (and tp!386067 tp!386068))))

(declare-fun b!1334643 () Bool)

(declare-fun res!601898 () Bool)

(assert (=> b!1334643 (=> (not res!601898) (not e!855003))))

(assert (=> b!1334643 (= res!601898 (rulesProduceIndividualToken!1025 thiss!19762 rules!2550 t1!34))))

(assert (= (and start!118710 res!601901) b!1334633))

(assert (= (and b!1334633 res!601903) b!1334637))

(assert (= (and b!1334637 res!601905) b!1334643))

(assert (= (and b!1334643 res!601898) b!1334634))

(assert (= (and b!1334634 res!601899) b!1334636))

(assert (= (and b!1334636 res!601897) b!1334629))

(assert (= (and b!1334629 res!601900) b!1334640))

(assert (= (and b!1334640 res!601904) b!1334635))

(assert (= (and b!1334635 res!601902) b!1334641))

(assert (= b!1334628 b!1334639))

(assert (= b!1334638 b!1334628))

(assert (= (and start!118710 ((_ is Cons!13620) rules!2550)) b!1334638))

(assert (= b!1334626 b!1334642))

(assert (= b!1334632 b!1334626))

(assert (= start!118710 b!1334632))

(assert (= b!1334627 b!1334631))

(assert (= b!1334630 b!1334627))

(assert (= start!118710 b!1334630))

(declare-fun m!1491939 () Bool)

(assert (=> b!1334640 m!1491939))

(declare-fun m!1491941 () Bool)

(assert (=> b!1334627 m!1491941))

(declare-fun m!1491943 () Bool)

(assert (=> b!1334627 m!1491943))

(declare-fun m!1491945 () Bool)

(assert (=> b!1334629 m!1491945))

(declare-fun m!1491947 () Bool)

(assert (=> b!1334629 m!1491947))

(declare-fun m!1491949 () Bool)

(assert (=> b!1334632 m!1491949))

(declare-fun m!1491951 () Bool)

(assert (=> b!1334637 m!1491951))

(declare-fun m!1491953 () Bool)

(assert (=> b!1334641 m!1491953))

(declare-fun m!1491955 () Bool)

(assert (=> b!1334641 m!1491955))

(declare-fun m!1491957 () Bool)

(assert (=> b!1334641 m!1491957))

(declare-fun m!1491959 () Bool)

(assert (=> b!1334641 m!1491959))

(assert (=> b!1334641 m!1491953))

(declare-fun m!1491961 () Bool)

(assert (=> b!1334641 m!1491961))

(assert (=> b!1334641 m!1491955))

(declare-fun m!1491963 () Bool)

(assert (=> b!1334641 m!1491963))

(assert (=> b!1334641 m!1491961))

(assert (=> b!1334641 m!1491957))

(declare-fun m!1491965 () Bool)

(assert (=> b!1334630 m!1491965))

(declare-fun m!1491967 () Bool)

(assert (=> b!1334633 m!1491967))

(declare-fun m!1491969 () Bool)

(assert (=> b!1334628 m!1491969))

(declare-fun m!1491971 () Bool)

(assert (=> b!1334628 m!1491971))

(declare-fun m!1491973 () Bool)

(assert (=> b!1334626 m!1491973))

(declare-fun m!1491975 () Bool)

(assert (=> b!1334626 m!1491975))

(declare-fun m!1491977 () Bool)

(assert (=> start!118710 m!1491977))

(declare-fun m!1491979 () Bool)

(assert (=> start!118710 m!1491979))

(declare-fun m!1491981 () Bool)

(assert (=> b!1334634 m!1491981))

(declare-fun m!1491983 () Bool)

(assert (=> b!1334643 m!1491983))

(declare-fun m!1491985 () Bool)

(assert (=> b!1334635 m!1491985))

(check-sat (not b!1334634) b_and!89243 (not b_next!33157) (not b_next!33147) (not b!1334630) (not b!1334637) b_and!89251 (not start!118710) b_and!89249 (not b_next!33153) (not b!1334627) b_and!89253 (not b!1334633) (not b!1334635) (not b!1334628) (not b!1334632) (not b!1334629) (not b!1334638) (not b!1334626) b_and!89245 (not b!1334643) (not b!1334640) (not b_next!33155) b_and!89247 (not b_next!33149) (not b_next!33151) (not b!1334641))
(check-sat b_and!89253 b_and!89243 (not b_next!33157) b_and!89245 (not b_next!33147) (not b_next!33151) b_and!89251 b_and!89249 (not b_next!33153) (not b_next!33155) b_and!89247 (not b_next!33149))
(get-model)

(declare-fun d!375849 () Bool)

(declare-fun c!218533 () Bool)

(declare-fun isEmpty!8122 (List!13685) Bool)

(assert (=> d!375849 (= c!218533 (isEmpty!8122 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))))

(declare-fun e!855030 () Bool)

(assert (=> d!375849 (= (prefixMatch!184 (rulesRegex!244 thiss!19762 rules!2550) (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))) e!855030)))

(declare-fun b!1334663 () Bool)

(declare-fun lostCause!295 (Regex!3675) Bool)

(assert (=> b!1334663 (= e!855030 (not (lostCause!295 (rulesRegex!244 thiss!19762 rules!2550))))))

(declare-fun b!1334664 () Bool)

(declare-fun derivativeStep!919 (Regex!3675 C!7640) Regex!3675)

(declare-fun head!2363 (List!13685) C!7640)

(declare-fun tail!1912 (List!13685) List!13685)

(assert (=> b!1334664 (= e!855030 (prefixMatch!184 (derivativeStep!919 (rulesRegex!244 thiss!19762 rules!2550) (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))) (tail!1912 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(assert (= (and d!375849 c!218533) b!1334663))

(assert (= (and d!375849 (not c!218533)) b!1334664))

(assert (=> d!375849 m!1491957))

(declare-fun m!1491993 () Bool)

(assert (=> d!375849 m!1491993))

(assert (=> b!1334663 m!1491955))

(declare-fun m!1491995 () Bool)

(assert (=> b!1334663 m!1491995))

(assert (=> b!1334664 m!1491957))

(declare-fun m!1491997 () Bool)

(assert (=> b!1334664 m!1491997))

(assert (=> b!1334664 m!1491955))

(assert (=> b!1334664 m!1491997))

(declare-fun m!1491999 () Bool)

(assert (=> b!1334664 m!1491999))

(assert (=> b!1334664 m!1491957))

(declare-fun m!1492001 () Bool)

(assert (=> b!1334664 m!1492001))

(assert (=> b!1334664 m!1491999))

(assert (=> b!1334664 m!1492001))

(declare-fun m!1492003 () Bool)

(assert (=> b!1334664 m!1492003))

(assert (=> b!1334641 d!375849))

(declare-fun d!375851 () Bool)

(declare-fun lt!441937 () C!7640)

(declare-fun apply!3175 (List!13685 Int) C!7640)

(assert (=> d!375851 (= lt!441937 (apply!3175 (list!5169 lt!441934) 0))))

(declare-fun apply!3176 (Conc!4489 Int) C!7640)

(assert (=> d!375851 (= lt!441937 (apply!3176 (c!218523 lt!441934) 0))))

(declare-fun e!855033 () Bool)

(assert (=> d!375851 e!855033))

(declare-fun res!601919 () Bool)

(assert (=> d!375851 (=> (not res!601919) (not e!855033))))

(assert (=> d!375851 (= res!601919 (<= 0 0))))

(assert (=> d!375851 (= (apply!3171 lt!441934 0) lt!441937)))

(declare-fun b!1334667 () Bool)

(assert (=> b!1334667 (= e!855033 (< 0 (size!11082 lt!441934)))))

(assert (= (and d!375851 res!601919) b!1334667))

(declare-fun m!1492005 () Bool)

(assert (=> d!375851 m!1492005))

(assert (=> d!375851 m!1492005))

(declare-fun m!1492007 () Bool)

(assert (=> d!375851 m!1492007))

(declare-fun m!1492009 () Bool)

(assert (=> d!375851 m!1492009))

(assert (=> b!1334667 m!1491945))

(assert (=> b!1334641 d!375851))

(declare-fun b!1334678 () Bool)

(declare-fun res!601925 () Bool)

(declare-fun e!855038 () Bool)

(assert (=> b!1334678 (=> (not res!601925) (not e!855038))))

(declare-fun lt!441940 () List!13685)

(declare-fun size!11086 (List!13685) Int)

(assert (=> b!1334678 (= res!601925 (= (size!11086 lt!441940) (+ (size!11086 (list!5169 (charsOf!1333 t1!34))) (size!11086 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(declare-fun d!375853 () Bool)

(assert (=> d!375853 e!855038))

(declare-fun res!601924 () Bool)

(assert (=> d!375853 (=> (not res!601924) (not e!855038))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1933 (List!13685) (InoxSet C!7640))

(assert (=> d!375853 (= res!601924 (= (content!1933 lt!441940) ((_ map or) (content!1933 (list!5169 (charsOf!1333 t1!34))) (content!1933 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(declare-fun e!855039 () List!13685)

(assert (=> d!375853 (= lt!441940 e!855039)))

(declare-fun c!218536 () Bool)

(assert (=> d!375853 (= c!218536 ((_ is Nil!13619) (list!5169 (charsOf!1333 t1!34))))))

(assert (=> d!375853 (= (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)) lt!441940)))

(declare-fun b!1334679 () Bool)

(assert (=> b!1334679 (= e!855038 (or (not (= (Cons!13619 (apply!3171 lt!441934 0) Nil!13619) Nil!13619)) (= lt!441940 (list!5169 (charsOf!1333 t1!34)))))))

(declare-fun b!1334676 () Bool)

(assert (=> b!1334676 (= e!855039 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))

(declare-fun b!1334677 () Bool)

(assert (=> b!1334677 (= e!855039 (Cons!13619 (h!19020 (list!5169 (charsOf!1333 t1!34))) (++!3476 (t!119164 (list!5169 (charsOf!1333 t1!34))) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))))

(assert (= (and d!375853 c!218536) b!1334676))

(assert (= (and d!375853 (not c!218536)) b!1334677))

(assert (= (and d!375853 res!601924) b!1334678))

(assert (= (and b!1334678 res!601925) b!1334679))

(declare-fun m!1492011 () Bool)

(assert (=> b!1334678 m!1492011))

(assert (=> b!1334678 m!1491961))

(declare-fun m!1492013 () Bool)

(assert (=> b!1334678 m!1492013))

(declare-fun m!1492015 () Bool)

(assert (=> b!1334678 m!1492015))

(declare-fun m!1492017 () Bool)

(assert (=> d!375853 m!1492017))

(assert (=> d!375853 m!1491961))

(declare-fun m!1492019 () Bool)

(assert (=> d!375853 m!1492019))

(declare-fun m!1492021 () Bool)

(assert (=> d!375853 m!1492021))

(declare-fun m!1492023 () Bool)

(assert (=> b!1334677 m!1492023))

(assert (=> b!1334641 d!375853))

(declare-fun d!375855 () Bool)

(declare-fun list!5172 (Conc!4489) List!13685)

(assert (=> d!375855 (= (list!5169 (charsOf!1333 t1!34)) (list!5172 (c!218523 (charsOf!1333 t1!34))))))

(declare-fun bs!331829 () Bool)

(assert (= bs!331829 d!375855))

(declare-fun m!1492025 () Bool)

(assert (=> bs!331829 m!1492025))

(assert (=> b!1334641 d!375855))

(declare-fun d!375857 () Bool)

(declare-fun lt!441943 () BalanceConc!8918)

(assert (=> d!375857 (= (list!5169 lt!441943) (originalCharacters!3223 t1!34))))

(declare-fun dynLambda!5992 (Int TokenValue!2451) BalanceConc!8918)

(assert (=> d!375857 (= lt!441943 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))))

(assert (=> d!375857 (= (charsOf!1333 t1!34) lt!441943)))

(declare-fun b_lambda!39351 () Bool)

(assert (=> (not b_lambda!39351) (not d!375857)))

(declare-fun tb!70401 () Bool)

(declare-fun t!119167 () Bool)

(assert (=> (and b!1334639 (= (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) t!119167) tb!70401))

(declare-fun b!1334684 () Bool)

(declare-fun e!855042 () Bool)

(declare-fun tp!386081 () Bool)

(declare-fun inv!17956 (Conc!4489) Bool)

(assert (=> b!1334684 (= e!855042 (and (inv!17956 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))) tp!386081))))

(declare-fun result!85510 () Bool)

(declare-fun inv!17957 (BalanceConc!8918) Bool)

(assert (=> tb!70401 (= result!85510 (and (inv!17957 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))) e!855042))))

(assert (= tb!70401 b!1334684))

(declare-fun m!1492027 () Bool)

(assert (=> b!1334684 m!1492027))

(declare-fun m!1492029 () Bool)

(assert (=> tb!70401 m!1492029))

(assert (=> d!375857 t!119167))

(declare-fun b_and!89255 () Bool)

(assert (= b_and!89245 (and (=> t!119167 result!85510) b_and!89255)))

(declare-fun t!119169 () Bool)

(declare-fun tb!70403 () Bool)

(assert (=> (and b!1334642 (= (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) t!119169) tb!70403))

(declare-fun result!85514 () Bool)

(assert (= result!85514 result!85510))

(assert (=> d!375857 t!119169))

(declare-fun b_and!89257 () Bool)

(assert (= b_and!89249 (and (=> t!119169 result!85514) b_and!89257)))

(declare-fun tb!70405 () Bool)

(declare-fun t!119171 () Bool)

(assert (=> (and b!1334631 (= (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) t!119171) tb!70405))

(declare-fun result!85516 () Bool)

(assert (= result!85516 result!85510))

(assert (=> d!375857 t!119171))

(declare-fun b_and!89259 () Bool)

(assert (= b_and!89253 (and (=> t!119171 result!85516) b_and!89259)))

(declare-fun m!1492031 () Bool)

(assert (=> d!375857 m!1492031))

(declare-fun m!1492033 () Bool)

(assert (=> d!375857 m!1492033))

(assert (=> b!1334641 d!375857))

(declare-fun d!375859 () Bool)

(declare-datatypes ((Unit!19759 0))(
  ( (Unit!19760) )
))
(declare-fun lt!441946 () Unit!19759)

(declare-fun lemma!89 (List!13686 LexerInterface!2056 List!13686) Unit!19759)

(assert (=> d!375859 (= lt!441946 (lemma!89 rules!2550 thiss!19762 rules!2550))))

(declare-fun lambda!55910 () Int)

(declare-datatypes ((List!13690 0))(
  ( (Nil!13624) (Cons!13624 (h!19025 Regex!3675) (t!119203 List!13690)) )
))
(declare-fun generalisedUnion!97 (List!13690) Regex!3675)

(declare-fun map!3004 (List!13686 Int) List!13690)

(assert (=> d!375859 (= (rulesRegex!244 thiss!19762 rules!2550) (generalisedUnion!97 (map!3004 rules!2550 lambda!55910)))))

(declare-fun bs!331830 () Bool)

(assert (= bs!331830 d!375859))

(declare-fun m!1492035 () Bool)

(assert (=> bs!331830 m!1492035))

(declare-fun m!1492037 () Bool)

(assert (=> bs!331830 m!1492037))

(assert (=> bs!331830 m!1492037))

(declare-fun m!1492039 () Bool)

(assert (=> bs!331830 m!1492039))

(assert (=> b!1334641 d!375859))

(declare-fun b!1334704 () Bool)

(declare-fun e!855056 () Bool)

(declare-fun e!855057 () Bool)

(assert (=> b!1334704 (= e!855056 e!855057)))

(declare-fun c!218541 () Bool)

(assert (=> b!1334704 (= c!218541 ((_ is IntegerValue!7354) (value!76921 t2!34)))))

(declare-fun d!375861 () Bool)

(declare-fun c!218542 () Bool)

(assert (=> d!375861 (= c!218542 ((_ is IntegerValue!7353) (value!76921 t2!34)))))

(assert (=> d!375861 (= (inv!21 (value!76921 t2!34)) e!855056)))

(declare-fun b!1334705 () Bool)

(declare-fun e!855055 () Bool)

(declare-fun inv!15 (TokenValue!2451) Bool)

(assert (=> b!1334705 (= e!855055 (inv!15 (value!76921 t2!34)))))

(declare-fun b!1334706 () Bool)

(declare-fun res!601937 () Bool)

(assert (=> b!1334706 (=> res!601937 e!855055)))

(assert (=> b!1334706 (= res!601937 (not ((_ is IntegerValue!7355) (value!76921 t2!34))))))

(assert (=> b!1334706 (= e!855057 e!855055)))

(declare-fun b!1334707 () Bool)

(declare-fun inv!17 (TokenValue!2451) Bool)

(assert (=> b!1334707 (= e!855057 (inv!17 (value!76921 t2!34)))))

(declare-fun b!1334708 () Bool)

(declare-fun inv!16 (TokenValue!2451) Bool)

(assert (=> b!1334708 (= e!855056 (inv!16 (value!76921 t2!34)))))

(assert (= (and d!375861 c!218542) b!1334708))

(assert (= (and d!375861 (not c!218542)) b!1334704))

(assert (= (and b!1334704 c!218541) b!1334707))

(assert (= (and b!1334704 (not c!218541)) b!1334706))

(assert (= (and b!1334706 (not res!601937)) b!1334705))

(declare-fun m!1492041 () Bool)

(assert (=> b!1334705 m!1492041))

(declare-fun m!1492045 () Bool)

(assert (=> b!1334707 m!1492045))

(declare-fun m!1492047 () Bool)

(assert (=> b!1334708 m!1492047))

(assert (=> b!1334630 d!375861))

(declare-fun d!375863 () Bool)

(declare-fun lt!441976 () Bool)

(declare-fun e!855122 () Bool)

(assert (=> d!375863 (= lt!441976 e!855122)))

(declare-fun res!601981 () Bool)

(assert (=> d!375863 (=> (not res!601981) (not e!855122))))

(declare-datatypes ((List!13691 0))(
  ( (Nil!13625) (Cons!13625 (h!19026 Token!4384) (t!119204 List!13691)) )
))
(declare-datatypes ((IArray!8987 0))(
  ( (IArray!8988 (innerList!4551 List!13691)) )
))
(declare-datatypes ((Conc!4491 0))(
  ( (Node!4491 (left!11689 Conc!4491) (right!12019 Conc!4491) (csize!9212 Int) (cheight!4702 Int)) (Leaf!6868 (xs!7206 IArray!8987) (csize!9213 Int)) (Empty!4491) )
))
(declare-datatypes ((BalanceConc!8922 0))(
  ( (BalanceConc!8923 (c!218554 Conc!4491)) )
))
(declare-fun list!5173 (BalanceConc!8922) List!13691)

(declare-datatypes ((tuple2!13262 0))(
  ( (tuple2!13263 (_1!7517 BalanceConc!8922) (_2!7517 BalanceConc!8918)) )
))
(declare-fun lex!889 (LexerInterface!2056 List!13686 BalanceConc!8918) tuple2!13262)

(declare-fun print!828 (LexerInterface!2056 BalanceConc!8922) BalanceConc!8918)

(declare-fun singletonSeq!961 (Token!4384) BalanceConc!8922)

(assert (=> d!375863 (= res!601981 (= (list!5173 (_1!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34))))) (list!5173 (singletonSeq!961 t1!34))))))

(declare-fun e!855123 () Bool)

(assert (=> d!375863 (= lt!441976 e!855123)))

(declare-fun res!601980 () Bool)

(assert (=> d!375863 (=> (not res!601980) (not e!855123))))

(declare-fun lt!441975 () tuple2!13262)

(declare-fun size!11087 (BalanceConc!8922) Int)

(assert (=> d!375863 (= res!601980 (= (size!11087 (_1!7517 lt!441975)) 1))))

(assert (=> d!375863 (= lt!441975 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34))))))

(assert (=> d!375863 (not (isEmpty!8119 rules!2550))))

(assert (=> d!375863 (= (rulesProduceIndividualToken!1025 thiss!19762 rules!2550 t1!34) lt!441976)))

(declare-fun b!1334811 () Bool)

(declare-fun res!601979 () Bool)

(assert (=> b!1334811 (=> (not res!601979) (not e!855123))))

(declare-fun apply!3177 (BalanceConc!8922 Int) Token!4384)

(assert (=> b!1334811 (= res!601979 (= (apply!3177 (_1!7517 lt!441975) 0) t1!34))))

(declare-fun b!1334812 () Bool)

(declare-fun isEmpty!8123 (BalanceConc!8918) Bool)

(assert (=> b!1334812 (= e!855123 (isEmpty!8123 (_2!7517 lt!441975)))))

(declare-fun b!1334813 () Bool)

(assert (=> b!1334813 (= e!855122 (isEmpty!8123 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34))))))))

(assert (= (and d!375863 res!601980) b!1334811))

(assert (= (and b!1334811 res!601979) b!1334812))

(assert (= (and d!375863 res!601981) b!1334813))

(declare-fun m!1492193 () Bool)

(assert (=> d!375863 m!1492193))

(declare-fun m!1492195 () Bool)

(assert (=> d!375863 m!1492195))

(declare-fun m!1492197 () Bool)

(assert (=> d!375863 m!1492197))

(declare-fun m!1492199 () Bool)

(assert (=> d!375863 m!1492199))

(assert (=> d!375863 m!1492193))

(assert (=> d!375863 m!1492193))

(declare-fun m!1492201 () Bool)

(assert (=> d!375863 m!1492201))

(assert (=> d!375863 m!1492195))

(declare-fun m!1492203 () Bool)

(assert (=> d!375863 m!1492203))

(assert (=> d!375863 m!1491967))

(declare-fun m!1492205 () Bool)

(assert (=> b!1334811 m!1492205))

(declare-fun m!1492207 () Bool)

(assert (=> b!1334812 m!1492207))

(assert (=> b!1334813 m!1492193))

(assert (=> b!1334813 m!1492193))

(assert (=> b!1334813 m!1492195))

(assert (=> b!1334813 m!1492195))

(assert (=> b!1334813 m!1492203))

(declare-fun m!1492209 () Bool)

(assert (=> b!1334813 m!1492209))

(assert (=> b!1334643 d!375863))

(declare-fun b!1334814 () Bool)

(declare-fun e!855125 () Bool)

(declare-fun e!855126 () Bool)

(assert (=> b!1334814 (= e!855125 e!855126)))

(declare-fun c!218552 () Bool)

(assert (=> b!1334814 (= c!218552 ((_ is IntegerValue!7354) (value!76921 t1!34)))))

(declare-fun d!375909 () Bool)

(declare-fun c!218553 () Bool)

(assert (=> d!375909 (= c!218553 ((_ is IntegerValue!7353) (value!76921 t1!34)))))

(assert (=> d!375909 (= (inv!21 (value!76921 t1!34)) e!855125)))

(declare-fun b!1334815 () Bool)

(declare-fun e!855124 () Bool)

(assert (=> b!1334815 (= e!855124 (inv!15 (value!76921 t1!34)))))

(declare-fun b!1334816 () Bool)

(declare-fun res!601982 () Bool)

(assert (=> b!1334816 (=> res!601982 e!855124)))

(assert (=> b!1334816 (= res!601982 (not ((_ is IntegerValue!7355) (value!76921 t1!34))))))

(assert (=> b!1334816 (= e!855126 e!855124)))

(declare-fun b!1334817 () Bool)

(assert (=> b!1334817 (= e!855126 (inv!17 (value!76921 t1!34)))))

(declare-fun b!1334818 () Bool)

(assert (=> b!1334818 (= e!855125 (inv!16 (value!76921 t1!34)))))

(assert (= (and d!375909 c!218553) b!1334818))

(assert (= (and d!375909 (not c!218553)) b!1334814))

(assert (= (and b!1334814 c!218552) b!1334817))

(assert (= (and b!1334814 (not c!218552)) b!1334816))

(assert (= (and b!1334816 (not res!601982)) b!1334815))

(declare-fun m!1492211 () Bool)

(assert (=> b!1334815 m!1492211))

(declare-fun m!1492213 () Bool)

(assert (=> b!1334817 m!1492213))

(declare-fun m!1492215 () Bool)

(assert (=> b!1334818 m!1492215))

(assert (=> b!1334632 d!375909))

(declare-fun d!375911 () Bool)

(assert (=> d!375911 (= (inv!17949 (tag!2623 (h!19021 rules!2550))) (= (mod (str.len (value!76920 (tag!2623 (h!19021 rules!2550)))) 2) 0))))

(assert (=> b!1334628 d!375911))

(declare-fun d!375913 () Bool)

(declare-fun res!601985 () Bool)

(declare-fun e!855129 () Bool)

(assert (=> d!375913 (=> (not res!601985) (not e!855129))))

(declare-fun semiInverseModEq!890 (Int Int) Bool)

(assert (=> d!375913 (= res!601985 (semiInverseModEq!890 (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toValue!3592 (transformation!2361 (h!19021 rules!2550)))))))

(assert (=> d!375913 (= (inv!17952 (transformation!2361 (h!19021 rules!2550))) e!855129)))

(declare-fun b!1334821 () Bool)

(declare-fun equivClasses!849 (Int Int) Bool)

(assert (=> b!1334821 (= e!855129 (equivClasses!849 (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toValue!3592 (transformation!2361 (h!19021 rules!2550)))))))

(assert (= (and d!375913 res!601985) b!1334821))

(declare-fun m!1492217 () Bool)

(assert (=> d!375913 m!1492217))

(declare-fun m!1492219 () Bool)

(assert (=> b!1334821 m!1492219))

(assert (=> b!1334628 d!375913))

(declare-fun d!375915 () Bool)

(declare-fun lt!441979 () Int)

(assert (=> d!375915 (= lt!441979 (size!11086 (list!5169 lt!441934)))))

(declare-fun size!11088 (Conc!4489) Int)

(assert (=> d!375915 (= lt!441979 (size!11088 (c!218523 lt!441934)))))

(assert (=> d!375915 (= (size!11082 lt!441934) lt!441979)))

(declare-fun bs!331835 () Bool)

(assert (= bs!331835 d!375915))

(assert (=> bs!331835 m!1492005))

(assert (=> bs!331835 m!1492005))

(declare-fun m!1492221 () Bool)

(assert (=> bs!331835 m!1492221))

(declare-fun m!1492223 () Bool)

(assert (=> bs!331835 m!1492223))

(assert (=> b!1334629 d!375915))

(declare-fun d!375917 () Bool)

(declare-fun lt!441980 () BalanceConc!8918)

(assert (=> d!375917 (= (list!5169 lt!441980) (originalCharacters!3223 t2!34))))

(assert (=> d!375917 (= lt!441980 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))))

(assert (=> d!375917 (= (charsOf!1333 t2!34) lt!441980)))

(declare-fun b_lambda!39369 () Bool)

(assert (=> (not b_lambda!39369) (not d!375917)))

(declare-fun tb!70423 () Bool)

(declare-fun t!119193 () Bool)

(assert (=> (and b!1334639 (= (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toChars!3451 (transformation!2361 (rule!4106 t2!34)))) t!119193) tb!70423))

(declare-fun b!1334822 () Bool)

(declare-fun e!855130 () Bool)

(declare-fun tp!386127 () Bool)

(assert (=> b!1334822 (= e!855130 (and (inv!17956 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))) tp!386127))))

(declare-fun result!85542 () Bool)

(assert (=> tb!70423 (= result!85542 (and (inv!17957 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))) e!855130))))

(assert (= tb!70423 b!1334822))

(declare-fun m!1492225 () Bool)

(assert (=> b!1334822 m!1492225))

(declare-fun m!1492227 () Bool)

(assert (=> tb!70423 m!1492227))

(assert (=> d!375917 t!119193))

(declare-fun b_and!89289 () Bool)

(assert (= b_and!89255 (and (=> t!119193 result!85542) b_and!89289)))

(declare-fun tb!70425 () Bool)

(declare-fun t!119195 () Bool)

(assert (=> (and b!1334642 (= (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toChars!3451 (transformation!2361 (rule!4106 t2!34)))) t!119195) tb!70425))

(declare-fun result!85544 () Bool)

(assert (= result!85544 result!85542))

(assert (=> d!375917 t!119195))

(declare-fun b_and!89291 () Bool)

(assert (= b_and!89257 (and (=> t!119195 result!85544) b_and!89291)))

(declare-fun t!119197 () Bool)

(declare-fun tb!70427 () Bool)

(assert (=> (and b!1334631 (= (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toChars!3451 (transformation!2361 (rule!4106 t2!34)))) t!119197) tb!70427))

(declare-fun result!85546 () Bool)

(assert (= result!85546 result!85542))

(assert (=> d!375917 t!119197))

(declare-fun b_and!89293 () Bool)

(assert (= b_and!89259 (and (=> t!119197 result!85546) b_and!89293)))

(declare-fun m!1492229 () Bool)

(assert (=> d!375917 m!1492229))

(declare-fun m!1492231 () Bool)

(assert (=> d!375917 m!1492231))

(assert (=> b!1334629 d!375917))

(declare-fun d!375919 () Bool)

(declare-fun res!601990 () Bool)

(declare-fun e!855135 () Bool)

(assert (=> d!375919 (=> res!601990 e!855135)))

(assert (=> d!375919 (= res!601990 (not ((_ is Cons!13620) rules!2550)))))

(assert (=> d!375919 (= (sepAndNonSepRulesDisjointChars!734 rules!2550 rules!2550) e!855135)))

(declare-fun b!1334827 () Bool)

(declare-fun e!855136 () Bool)

(assert (=> b!1334827 (= e!855135 e!855136)))

(declare-fun res!601991 () Bool)

(assert (=> b!1334827 (=> (not res!601991) (not e!855136))))

(declare-fun ruleDisjointCharsFromAllFromOtherType!332 (Rule!4522 List!13686) Bool)

(assert (=> b!1334827 (= res!601991 (ruleDisjointCharsFromAllFromOtherType!332 (h!19021 rules!2550) rules!2550))))

(declare-fun b!1334828 () Bool)

(assert (=> b!1334828 (= e!855136 (sepAndNonSepRulesDisjointChars!734 rules!2550 (t!119165 rules!2550)))))

(assert (= (and d!375919 (not res!601990)) b!1334827))

(assert (= (and b!1334827 res!601991) b!1334828))

(declare-fun m!1492233 () Bool)

(assert (=> b!1334827 m!1492233))

(declare-fun m!1492235 () Bool)

(assert (=> b!1334828 m!1492235))

(assert (=> b!1334640 d!375919))

(declare-fun d!375921 () Bool)

(declare-fun res!601994 () Bool)

(declare-fun e!855139 () Bool)

(assert (=> d!375921 (=> (not res!601994) (not e!855139))))

(declare-fun rulesValid!859 (LexerInterface!2056 List!13686) Bool)

(assert (=> d!375921 (= res!601994 (rulesValid!859 thiss!19762 rules!2550))))

(assert (=> d!375921 (= (rulesInvariant!1926 thiss!19762 rules!2550) e!855139)))

(declare-fun b!1334831 () Bool)

(declare-datatypes ((List!13692 0))(
  ( (Nil!13626) (Cons!13626 (h!19027 String!16491) (t!119205 List!13692)) )
))
(declare-fun noDuplicateTag!859 (LexerInterface!2056 List!13686 List!13692) Bool)

(assert (=> b!1334831 (= e!855139 (noDuplicateTag!859 thiss!19762 rules!2550 Nil!13626))))

(assert (= (and d!375921 res!601994) b!1334831))

(declare-fun m!1492237 () Bool)

(assert (=> d!375921 m!1492237))

(declare-fun m!1492239 () Bool)

(assert (=> b!1334831 m!1492239))

(assert (=> b!1334637 d!375921))

(declare-fun d!375923 () Bool)

(assert (=> d!375923 (= (inv!17949 (tag!2623 (rule!4106 t1!34))) (= (mod (str.len (value!76920 (tag!2623 (rule!4106 t1!34)))) 2) 0))))

(assert (=> b!1334626 d!375923))

(declare-fun d!375925 () Bool)

(declare-fun res!601995 () Bool)

(declare-fun e!855140 () Bool)

(assert (=> d!375925 (=> (not res!601995) (not e!855140))))

(assert (=> d!375925 (= res!601995 (semiInverseModEq!890 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toValue!3592 (transformation!2361 (rule!4106 t1!34)))))))

(assert (=> d!375925 (= (inv!17952 (transformation!2361 (rule!4106 t1!34))) e!855140)))

(declare-fun b!1334832 () Bool)

(assert (=> b!1334832 (= e!855140 (equivClasses!849 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toValue!3592 (transformation!2361 (rule!4106 t1!34)))))))

(assert (= (and d!375925 res!601995) b!1334832))

(declare-fun m!1492241 () Bool)

(assert (=> d!375925 m!1492241))

(declare-fun m!1492243 () Bool)

(assert (=> b!1334832 m!1492243))

(assert (=> b!1334626 d!375925))

(declare-fun d!375927 () Bool)

(assert (=> d!375927 (= (inv!17949 (tag!2623 (rule!4106 t2!34))) (= (mod (str.len (value!76920 (tag!2623 (rule!4106 t2!34)))) 2) 0))))

(assert (=> b!1334627 d!375927))

(declare-fun d!375929 () Bool)

(declare-fun res!601996 () Bool)

(declare-fun e!855141 () Bool)

(assert (=> d!375929 (=> (not res!601996) (not e!855141))))

(assert (=> d!375929 (= res!601996 (semiInverseModEq!890 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toValue!3592 (transformation!2361 (rule!4106 t2!34)))))))

(assert (=> d!375929 (= (inv!17952 (transformation!2361 (rule!4106 t2!34))) e!855141)))

(declare-fun b!1334833 () Bool)

(assert (=> b!1334833 (= e!855141 (equivClasses!849 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toValue!3592 (transformation!2361 (rule!4106 t2!34)))))))

(assert (= (and d!375929 res!601996) b!1334833))

(declare-fun m!1492245 () Bool)

(assert (=> d!375929 m!1492245))

(declare-fun m!1492247 () Bool)

(assert (=> b!1334833 m!1492247))

(assert (=> b!1334627 d!375929))

(declare-fun d!375931 () Bool)

(assert (=> d!375931 (= (isEmpty!8119 rules!2550) ((_ is Nil!13620) rules!2550))))

(assert (=> b!1334633 d!375931))

(declare-fun d!375933 () Bool)

(declare-fun lt!441982 () Bool)

(declare-fun e!855142 () Bool)

(assert (=> d!375933 (= lt!441982 e!855142)))

(declare-fun res!601999 () Bool)

(assert (=> d!375933 (=> (not res!601999) (not e!855142))))

(assert (=> d!375933 (= res!601999 (= (list!5173 (_1!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34))))) (list!5173 (singletonSeq!961 t2!34))))))

(declare-fun e!855143 () Bool)

(assert (=> d!375933 (= lt!441982 e!855143)))

(declare-fun res!601998 () Bool)

(assert (=> d!375933 (=> (not res!601998) (not e!855143))))

(declare-fun lt!441981 () tuple2!13262)

(assert (=> d!375933 (= res!601998 (= (size!11087 (_1!7517 lt!441981)) 1))))

(assert (=> d!375933 (= lt!441981 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34))))))

(assert (=> d!375933 (not (isEmpty!8119 rules!2550))))

(assert (=> d!375933 (= (rulesProduceIndividualToken!1025 thiss!19762 rules!2550 t2!34) lt!441982)))

(declare-fun b!1334834 () Bool)

(declare-fun res!601997 () Bool)

(assert (=> b!1334834 (=> (not res!601997) (not e!855143))))

(assert (=> b!1334834 (= res!601997 (= (apply!3177 (_1!7517 lt!441981) 0) t2!34))))

(declare-fun b!1334835 () Bool)

(assert (=> b!1334835 (= e!855143 (isEmpty!8123 (_2!7517 lt!441981)))))

(declare-fun b!1334836 () Bool)

(assert (=> b!1334836 (= e!855142 (isEmpty!8123 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34))))))))

(assert (= (and d!375933 res!601998) b!1334834))

(assert (= (and b!1334834 res!601997) b!1334835))

(assert (= (and d!375933 res!601999) b!1334836))

(declare-fun m!1492249 () Bool)

(assert (=> d!375933 m!1492249))

(declare-fun m!1492251 () Bool)

(assert (=> d!375933 m!1492251))

(declare-fun m!1492253 () Bool)

(assert (=> d!375933 m!1492253))

(declare-fun m!1492255 () Bool)

(assert (=> d!375933 m!1492255))

(assert (=> d!375933 m!1492249))

(assert (=> d!375933 m!1492249))

(declare-fun m!1492257 () Bool)

(assert (=> d!375933 m!1492257))

(assert (=> d!375933 m!1492251))

(declare-fun m!1492259 () Bool)

(assert (=> d!375933 m!1492259))

(assert (=> d!375933 m!1491967))

(declare-fun m!1492261 () Bool)

(assert (=> b!1334834 m!1492261))

(declare-fun m!1492263 () Bool)

(assert (=> b!1334835 m!1492263))

(assert (=> b!1334836 m!1492249))

(assert (=> b!1334836 m!1492249))

(assert (=> b!1334836 m!1492251))

(assert (=> b!1334836 m!1492251))

(assert (=> b!1334836 m!1492259))

(declare-fun m!1492265 () Bool)

(assert (=> b!1334836 m!1492265))

(assert (=> b!1334634 d!375933))

(declare-fun d!375935 () Bool)

(declare-fun res!602004 () Bool)

(declare-fun e!855146 () Bool)

(assert (=> d!375935 (=> (not res!602004) (not e!855146))))

(assert (=> d!375935 (= res!602004 (not (isEmpty!8122 (originalCharacters!3223 t1!34))))))

(assert (=> d!375935 (= (inv!17953 t1!34) e!855146)))

(declare-fun b!1334841 () Bool)

(declare-fun res!602005 () Bool)

(assert (=> b!1334841 (=> (not res!602005) (not e!855146))))

(assert (=> b!1334841 (= res!602005 (= (originalCharacters!3223 t1!34) (list!5169 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))))))

(declare-fun b!1334842 () Bool)

(assert (=> b!1334842 (= e!855146 (= (size!11081 t1!34) (size!11086 (originalCharacters!3223 t1!34))))))

(assert (= (and d!375935 res!602004) b!1334841))

(assert (= (and b!1334841 res!602005) b!1334842))

(declare-fun b_lambda!39371 () Bool)

(assert (=> (not b_lambda!39371) (not b!1334841)))

(assert (=> b!1334841 t!119167))

(declare-fun b_and!89295 () Bool)

(assert (= b_and!89289 (and (=> t!119167 result!85510) b_and!89295)))

(assert (=> b!1334841 t!119169))

(declare-fun b_and!89297 () Bool)

(assert (= b_and!89291 (and (=> t!119169 result!85514) b_and!89297)))

(assert (=> b!1334841 t!119171))

(declare-fun b_and!89299 () Bool)

(assert (= b_and!89293 (and (=> t!119171 result!85516) b_and!89299)))

(declare-fun m!1492267 () Bool)

(assert (=> d!375935 m!1492267))

(assert (=> b!1334841 m!1492033))

(assert (=> b!1334841 m!1492033))

(declare-fun m!1492269 () Bool)

(assert (=> b!1334841 m!1492269))

(declare-fun m!1492271 () Bool)

(assert (=> b!1334842 m!1492271))

(assert (=> start!118710 d!375935))

(declare-fun d!375937 () Bool)

(declare-fun res!602006 () Bool)

(declare-fun e!855147 () Bool)

(assert (=> d!375937 (=> (not res!602006) (not e!855147))))

(assert (=> d!375937 (= res!602006 (not (isEmpty!8122 (originalCharacters!3223 t2!34))))))

(assert (=> d!375937 (= (inv!17953 t2!34) e!855147)))

(declare-fun b!1334843 () Bool)

(declare-fun res!602007 () Bool)

(assert (=> b!1334843 (=> (not res!602007) (not e!855147))))

(assert (=> b!1334843 (= res!602007 (= (originalCharacters!3223 t2!34) (list!5169 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))))))

(declare-fun b!1334844 () Bool)

(assert (=> b!1334844 (= e!855147 (= (size!11081 t2!34) (size!11086 (originalCharacters!3223 t2!34))))))

(assert (= (and d!375937 res!602006) b!1334843))

(assert (= (and b!1334843 res!602007) b!1334844))

(declare-fun b_lambda!39373 () Bool)

(assert (=> (not b_lambda!39373) (not b!1334843)))

(assert (=> b!1334843 t!119193))

(declare-fun b_and!89301 () Bool)

(assert (= b_and!89295 (and (=> t!119193 result!85542) b_and!89301)))

(assert (=> b!1334843 t!119195))

(declare-fun b_and!89303 () Bool)

(assert (= b_and!89297 (and (=> t!119195 result!85544) b_and!89303)))

(assert (=> b!1334843 t!119197))

(declare-fun b_and!89305 () Bool)

(assert (= b_and!89299 (and (=> t!119197 result!85546) b_and!89305)))

(declare-fun m!1492273 () Bool)

(assert (=> d!375937 m!1492273))

(assert (=> b!1334843 m!1492231))

(assert (=> b!1334843 m!1492231))

(declare-fun m!1492275 () Bool)

(assert (=> b!1334843 m!1492275))

(declare-fun m!1492277 () Bool)

(assert (=> b!1334844 m!1492277))

(assert (=> start!118710 d!375937))

(declare-fun d!375939 () Bool)

(declare-fun prefixMatchZipperSequence!202 (Regex!3675 BalanceConc!8918) Bool)

(declare-fun ++!3478 (BalanceConc!8918 BalanceConc!8918) BalanceConc!8918)

(declare-fun singletonSeq!962 (C!7640) BalanceConc!8918)

(assert (=> d!375939 (= (separableTokensPredicate!339 thiss!19762 t1!34 t2!34 rules!2550) (not (prefixMatchZipperSequence!202 (rulesRegex!244 thiss!19762 rules!2550) (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))))))

(declare-fun bs!331836 () Bool)

(assert (= bs!331836 d!375939))

(assert (=> bs!331836 m!1491947))

(assert (=> bs!331836 m!1491953))

(declare-fun m!1492279 () Bool)

(assert (=> bs!331836 m!1492279))

(declare-fun m!1492281 () Bool)

(assert (=> bs!331836 m!1492281))

(assert (=> bs!331836 m!1491955))

(assert (=> bs!331836 m!1491953))

(assert (=> bs!331836 m!1491955))

(assert (=> bs!331836 m!1492281))

(declare-fun m!1492283 () Bool)

(assert (=> bs!331836 m!1492283))

(assert (=> bs!331836 m!1491947))

(declare-fun m!1492285 () Bool)

(assert (=> bs!331836 m!1492285))

(assert (=> bs!331836 m!1492285))

(assert (=> bs!331836 m!1492279))

(assert (=> b!1334635 d!375939))

(declare-fun b!1334849 () Bool)

(declare-fun e!855150 () Bool)

(declare-fun tp_is_empty!6671 () Bool)

(declare-fun tp!386130 () Bool)

(assert (=> b!1334849 (= e!855150 (and tp_is_empty!6671 tp!386130))))

(assert (=> b!1334630 (= tp!386078 e!855150)))

(assert (= (and b!1334630 ((_ is Cons!13619) (originalCharacters!3223 t2!34))) b!1334849))

(declare-fun b!1334860 () Bool)

(declare-fun e!855153 () Bool)

(assert (=> b!1334860 (= e!855153 tp_is_empty!6671)))

(declare-fun b!1334863 () Bool)

(declare-fun tp!386145 () Bool)

(declare-fun tp!386143 () Bool)

(assert (=> b!1334863 (= e!855153 (and tp!386145 tp!386143))))

(declare-fun b!1334861 () Bool)

(declare-fun tp!386142 () Bool)

(declare-fun tp!386141 () Bool)

(assert (=> b!1334861 (= e!855153 (and tp!386142 tp!386141))))

(declare-fun b!1334862 () Bool)

(declare-fun tp!386144 () Bool)

(assert (=> b!1334862 (= e!855153 tp!386144)))

(assert (=> b!1334626 (= tp!386076 e!855153)))

(assert (= (and b!1334626 ((_ is ElementMatch!3675) (regex!2361 (rule!4106 t1!34)))) b!1334860))

(assert (= (and b!1334626 ((_ is Concat!6127) (regex!2361 (rule!4106 t1!34)))) b!1334861))

(assert (= (and b!1334626 ((_ is Star!3675) (regex!2361 (rule!4106 t1!34)))) b!1334862))

(assert (= (and b!1334626 ((_ is Union!3675) (regex!2361 (rule!4106 t1!34)))) b!1334863))

(declare-fun b!1334864 () Bool)

(declare-fun e!855154 () Bool)

(assert (=> b!1334864 (= e!855154 tp_is_empty!6671)))

(declare-fun b!1334867 () Bool)

(declare-fun tp!386150 () Bool)

(declare-fun tp!386148 () Bool)

(assert (=> b!1334867 (= e!855154 (and tp!386150 tp!386148))))

(declare-fun b!1334865 () Bool)

(declare-fun tp!386147 () Bool)

(declare-fun tp!386146 () Bool)

(assert (=> b!1334865 (= e!855154 (and tp!386147 tp!386146))))

(declare-fun b!1334866 () Bool)

(declare-fun tp!386149 () Bool)

(assert (=> b!1334866 (= e!855154 tp!386149)))

(assert (=> b!1334627 (= tp!386075 e!855154)))

(assert (= (and b!1334627 ((_ is ElementMatch!3675) (regex!2361 (rule!4106 t2!34)))) b!1334864))

(assert (= (and b!1334627 ((_ is Concat!6127) (regex!2361 (rule!4106 t2!34)))) b!1334865))

(assert (= (and b!1334627 ((_ is Star!3675) (regex!2361 (rule!4106 t2!34)))) b!1334866))

(assert (= (and b!1334627 ((_ is Union!3675) (regex!2361 (rule!4106 t2!34)))) b!1334867))

(declare-fun b!1334868 () Bool)

(declare-fun e!855155 () Bool)

(declare-fun tp!386151 () Bool)

(assert (=> b!1334868 (= e!855155 (and tp_is_empty!6671 tp!386151))))

(assert (=> b!1334632 (= tp!386077 e!855155)))

(assert (= (and b!1334632 ((_ is Cons!13619) (originalCharacters!3223 t1!34))) b!1334868))

(declare-fun b!1334879 () Bool)

(declare-fun b_free!32459 () Bool)

(declare-fun b_next!33163 () Bool)

(assert (=> b!1334879 (= b_free!32459 (not b_next!33163))))

(declare-fun tp!386163 () Bool)

(declare-fun b_and!89307 () Bool)

(assert (=> b!1334879 (= tp!386163 b_and!89307)))

(declare-fun b_free!32461 () Bool)

(declare-fun b_next!33165 () Bool)

(assert (=> b!1334879 (= b_free!32461 (not b_next!33165))))

(declare-fun t!119200 () Bool)

(declare-fun tb!70429 () Bool)

(assert (=> (and b!1334879 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) t!119200) tb!70429))

(declare-fun result!85554 () Bool)

(assert (= result!85554 result!85510))

(assert (=> d!375857 t!119200))

(declare-fun tb!70431 () Bool)

(declare-fun t!119202 () Bool)

(assert (=> (and b!1334879 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toChars!3451 (transformation!2361 (rule!4106 t2!34)))) t!119202) tb!70431))

(declare-fun result!85556 () Bool)

(assert (= result!85556 result!85542))

(assert (=> d!375917 t!119202))

(assert (=> b!1334841 t!119200))

(assert (=> b!1334843 t!119202))

(declare-fun tp!386161 () Bool)

(declare-fun b_and!89309 () Bool)

(assert (=> b!1334879 (= tp!386161 (and (=> t!119200 result!85554) (=> t!119202 result!85556) b_and!89309))))

(declare-fun e!855165 () Bool)

(assert (=> b!1334879 (= e!855165 (and tp!386163 tp!386161))))

(declare-fun e!855166 () Bool)

(declare-fun b!1334878 () Bool)

(declare-fun tp!386162 () Bool)

(assert (=> b!1334878 (= e!855166 (and tp!386162 (inv!17949 (tag!2623 (h!19021 (t!119165 rules!2550)))) (inv!17952 (transformation!2361 (h!19021 (t!119165 rules!2550)))) e!855165))))

(declare-fun b!1334877 () Bool)

(declare-fun e!855164 () Bool)

(declare-fun tp!386160 () Bool)

(assert (=> b!1334877 (= e!855164 (and e!855166 tp!386160))))

(assert (=> b!1334638 (= tp!386072 e!855164)))

(assert (= b!1334878 b!1334879))

(assert (= b!1334877 b!1334878))

(assert (= (and b!1334638 ((_ is Cons!13620) (t!119165 rules!2550))) b!1334877))

(declare-fun m!1492287 () Bool)

(assert (=> b!1334878 m!1492287))

(declare-fun m!1492289 () Bool)

(assert (=> b!1334878 m!1492289))

(declare-fun b!1334880 () Bool)

(declare-fun e!855168 () Bool)

(assert (=> b!1334880 (= e!855168 tp_is_empty!6671)))

(declare-fun b!1334883 () Bool)

(declare-fun tp!386168 () Bool)

(declare-fun tp!386166 () Bool)

(assert (=> b!1334883 (= e!855168 (and tp!386168 tp!386166))))

(declare-fun b!1334881 () Bool)

(declare-fun tp!386165 () Bool)

(declare-fun tp!386164 () Bool)

(assert (=> b!1334881 (= e!855168 (and tp!386165 tp!386164))))

(declare-fun b!1334882 () Bool)

(declare-fun tp!386167 () Bool)

(assert (=> b!1334882 (= e!855168 tp!386167)))

(assert (=> b!1334628 (= tp!386070 e!855168)))

(assert (= (and b!1334628 ((_ is ElementMatch!3675) (regex!2361 (h!19021 rules!2550)))) b!1334880))

(assert (= (and b!1334628 ((_ is Concat!6127) (regex!2361 (h!19021 rules!2550)))) b!1334881))

(assert (= (and b!1334628 ((_ is Star!3675) (regex!2361 (h!19021 rules!2550)))) b!1334882))

(assert (= (and b!1334628 ((_ is Union!3675) (regex!2361 (h!19021 rules!2550)))) b!1334883))

(declare-fun b_lambda!39375 () Bool)

(assert (= b_lambda!39351 (or (and b!1334639 b_free!32445 (= (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toChars!3451 (transformation!2361 (rule!4106 t1!34))))) (and b!1334642 b_free!32449) (and b!1334631 b_free!32453 (= (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toChars!3451 (transformation!2361 (rule!4106 t1!34))))) (and b!1334879 b_free!32461 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toChars!3451 (transformation!2361 (rule!4106 t1!34))))) b_lambda!39375)))

(declare-fun b_lambda!39377 () Bool)

(assert (= b_lambda!39371 (or (and b!1334639 b_free!32445 (= (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toChars!3451 (transformation!2361 (rule!4106 t1!34))))) (and b!1334642 b_free!32449) (and b!1334631 b_free!32453 (= (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toChars!3451 (transformation!2361 (rule!4106 t1!34))))) (and b!1334879 b_free!32461 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toChars!3451 (transformation!2361 (rule!4106 t1!34))))) b_lambda!39377)))

(declare-fun b_lambda!39379 () Bool)

(assert (= b_lambda!39369 (or (and b!1334639 b_free!32445 (= (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toChars!3451 (transformation!2361 (rule!4106 t2!34))))) (and b!1334642 b_free!32449 (= (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toChars!3451 (transformation!2361 (rule!4106 t2!34))))) (and b!1334631 b_free!32453) (and b!1334879 b_free!32461 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toChars!3451 (transformation!2361 (rule!4106 t2!34))))) b_lambda!39379)))

(declare-fun b_lambda!39381 () Bool)

(assert (= b_lambda!39373 (or (and b!1334639 b_free!32445 (= (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toChars!3451 (transformation!2361 (rule!4106 t2!34))))) (and b!1334642 b_free!32449 (= (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toChars!3451 (transformation!2361 (rule!4106 t2!34))))) (and b!1334631 b_free!32453) (and b!1334879 b_free!32461 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toChars!3451 (transformation!2361 (rule!4106 t2!34))))) b_lambda!39381)))

(check-sat (not d!375921) (not b!1334881) (not b_lambda!39379) (not b_lambda!39377) b_and!89303 (not b!1334842) (not d!375929) (not b!1334663) (not d!375937) (not d!375933) (not d!375859) (not d!375853) (not d!375925) (not d!375857) b_and!89243 (not d!375849) (not d!375855) (not b!1334684) (not d!375851) (not b_next!33157) (not b!1334811) (not b!1334831) (not b!1334878) tp_is_empty!6671 (not b!1334863) (not b!1334818) (not b!1334836) (not b_lambda!39381) (not b!1334705) (not b!1334833) (not b_next!33147) (not b!1334844) (not d!375915) (not b!1334667) (not b!1334861) (not b!1334822) (not b!1334812) (not b_next!33155) b_and!89247 (not b_next!33149) (not b!1334835) (not b!1334843) (not tb!70401) b_and!89305 (not b_next!33165) b_and!89309 (not b!1334664) (not b_next!33151) (not b!1334828) (not b!1334707) (not b!1334866) (not b!1334868) (not d!375917) (not b!1334708) (not d!375863) (not b!1334677) (not b!1334867) (not b!1334815) b_and!89251 (not tb!70423) (not d!375913) (not b!1334827) (not b!1334834) (not b!1334865) (not b_next!33153) (not b!1334817) b_and!89307 (not b!1334678) (not b_next!33163) (not b_lambda!39375) (not b!1334813) (not d!375939) (not b!1334877) (not d!375935) (not b!1334883) (not b!1334821) (not b!1334849) (not b!1334841) (not b!1334882) (not b!1334832) (not b!1334862) b_and!89301)
(check-sat b_and!89243 (not b_next!33157) (not b_next!33147) b_and!89303 (not b_next!33151) b_and!89251 (not b_next!33153) b_and!89301 (not b_next!33155) b_and!89247 (not b_next!33149) b_and!89305 (not b_next!33165) b_and!89309 b_and!89307 (not b_next!33163))
(get-model)

(declare-fun d!375957 () Bool)

(declare-fun lt!441988 () Bool)

(assert (=> d!375957 (= lt!441988 (isEmpty!8122 (list!5169 (_2!7517 lt!441975))))))

(declare-fun isEmpty!8126 (Conc!4489) Bool)

(assert (=> d!375957 (= lt!441988 (isEmpty!8126 (c!218523 (_2!7517 lt!441975))))))

(assert (=> d!375957 (= (isEmpty!8123 (_2!7517 lt!441975)) lt!441988)))

(declare-fun bs!331843 () Bool)

(assert (= bs!331843 d!375957))

(declare-fun m!1492307 () Bool)

(assert (=> bs!331843 m!1492307))

(assert (=> bs!331843 m!1492307))

(declare-fun m!1492309 () Bool)

(assert (=> bs!331843 m!1492309))

(declare-fun m!1492311 () Bool)

(assert (=> bs!331843 m!1492311))

(assert (=> b!1334812 d!375957))

(declare-fun d!375959 () Bool)

(declare-fun isBalanced!1301 (Conc!4489) Bool)

(assert (=> d!375959 (= (inv!17957 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))) (isBalanced!1301 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))))))

(declare-fun bs!331844 () Bool)

(assert (= bs!331844 d!375959))

(declare-fun m!1492313 () Bool)

(assert (=> bs!331844 m!1492313))

(assert (=> tb!70423 d!375959))

(declare-fun d!375961 () Bool)

(assert (=> d!375961 true))

(declare-fun order!8179 () Int)

(declare-fun order!8181 () Int)

(declare-fun lambda!55923 () Int)

(declare-fun dynLambda!5997 (Int Int) Int)

(declare-fun dynLambda!5998 (Int Int) Int)

(assert (=> d!375961 (< (dynLambda!5997 order!8179 (toValue!3592 (transformation!2361 (rule!4106 t1!34)))) (dynLambda!5998 order!8181 lambda!55923))))

(declare-fun Forall2!423 (Int) Bool)

(assert (=> d!375961 (= (equivClasses!849 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toValue!3592 (transformation!2361 (rule!4106 t1!34)))) (Forall2!423 lambda!55923))))

(declare-fun bs!331857 () Bool)

(assert (= bs!331857 d!375961))

(declare-fun m!1492401 () Bool)

(assert (=> bs!331857 m!1492401))

(assert (=> b!1334832 d!375961))

(declare-fun d!376007 () Bool)

(declare-fun c!218576 () Bool)

(assert (=> d!376007 (= c!218576 (isEmpty!8122 (tail!1912 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(declare-fun e!855209 () Bool)

(assert (=> d!376007 (= (prefixMatch!184 (derivativeStep!919 (rulesRegex!244 thiss!19762 rules!2550) (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))) (tail!1912 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))) e!855209)))

(declare-fun b!1334954 () Bool)

(assert (=> b!1334954 (= e!855209 (not (lostCause!295 (derivativeStep!919 (rulesRegex!244 thiss!19762 rules!2550) (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))))

(declare-fun b!1334955 () Bool)

(assert (=> b!1334955 (= e!855209 (prefixMatch!184 (derivativeStep!919 (derivativeStep!919 (rulesRegex!244 thiss!19762 rules!2550) (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))) (head!2363 (tail!1912 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))) (tail!1912 (tail!1912 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))))))

(assert (= (and d!376007 c!218576) b!1334954))

(assert (= (and d!376007 (not c!218576)) b!1334955))

(assert (=> d!376007 m!1492001))

(declare-fun m!1492403 () Bool)

(assert (=> d!376007 m!1492403))

(assert (=> b!1334954 m!1491999))

(declare-fun m!1492405 () Bool)

(assert (=> b!1334954 m!1492405))

(assert (=> b!1334955 m!1492001))

(declare-fun m!1492407 () Bool)

(assert (=> b!1334955 m!1492407))

(assert (=> b!1334955 m!1491999))

(assert (=> b!1334955 m!1492407))

(declare-fun m!1492409 () Bool)

(assert (=> b!1334955 m!1492409))

(assert (=> b!1334955 m!1492001))

(declare-fun m!1492411 () Bool)

(assert (=> b!1334955 m!1492411))

(assert (=> b!1334955 m!1492409))

(assert (=> b!1334955 m!1492411))

(declare-fun m!1492413 () Bool)

(assert (=> b!1334955 m!1492413))

(assert (=> b!1334664 d!376007))

(declare-fun bm!90140 () Bool)

(declare-fun call!90145 () Regex!3675)

(declare-fun call!90146 () Regex!3675)

(assert (=> bm!90140 (= call!90145 call!90146)))

(declare-fun d!376009 () Bool)

(declare-fun lt!442006 () Regex!3675)

(declare-fun validRegex!1580 (Regex!3675) Bool)

(assert (=> d!376009 (validRegex!1580 lt!442006)))

(declare-fun e!855221 () Regex!3675)

(assert (=> d!376009 (= lt!442006 e!855221)))

(declare-fun c!218591 () Bool)

(assert (=> d!376009 (= c!218591 (or ((_ is EmptyExpr!3675) (rulesRegex!244 thiss!19762 rules!2550)) ((_ is EmptyLang!3675) (rulesRegex!244 thiss!19762 rules!2550))))))

(assert (=> d!376009 (validRegex!1580 (rulesRegex!244 thiss!19762 rules!2550))))

(assert (=> d!376009 (= (derivativeStep!919 (rulesRegex!244 thiss!19762 rules!2550) (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))) lt!442006)))

(declare-fun bm!90141 () Bool)

(declare-fun call!90147 () Regex!3675)

(declare-fun c!218590 () Bool)

(assert (=> bm!90141 (= call!90147 (derivativeStep!919 (ite c!218590 (regOne!7863 (rulesRegex!244 thiss!19762 rules!2550)) (regOne!7862 (rulesRegex!244 thiss!19762 rules!2550))) (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(declare-fun call!90148 () Regex!3675)

(declare-fun e!855220 () Regex!3675)

(declare-fun b!1334976 () Bool)

(assert (=> b!1334976 (= e!855220 (Union!3675 (Concat!6127 call!90147 (regTwo!7862 (rulesRegex!244 thiss!19762 rules!2550))) call!90148))))

(declare-fun b!1334977 () Bool)

(assert (=> b!1334977 (= c!218590 ((_ is Union!3675) (rulesRegex!244 thiss!19762 rules!2550)))))

(declare-fun e!855222 () Regex!3675)

(declare-fun e!855223 () Regex!3675)

(assert (=> b!1334977 (= e!855222 e!855223)))

(declare-fun b!1334978 () Bool)

(assert (=> b!1334978 (= e!855221 EmptyLang!3675)))

(declare-fun b!1334979 () Bool)

(assert (=> b!1334979 (= e!855222 (ite (= (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))) (c!218524 (rulesRegex!244 thiss!19762 rules!2550))) EmptyExpr!3675 EmptyLang!3675))))

(declare-fun b!1334980 () Bool)

(assert (=> b!1334980 (= e!855223 (Union!3675 call!90147 call!90146))))

(declare-fun b!1334981 () Bool)

(declare-fun e!855224 () Regex!3675)

(assert (=> b!1334981 (= e!855223 e!855224)))

(declare-fun c!218589 () Bool)

(assert (=> b!1334981 (= c!218589 ((_ is Star!3675) (rulesRegex!244 thiss!19762 rules!2550)))))

(declare-fun b!1334982 () Bool)

(assert (=> b!1334982 (= e!855224 (Concat!6127 call!90145 (rulesRegex!244 thiss!19762 rules!2550)))))

(declare-fun c!218587 () Bool)

(declare-fun bm!90142 () Bool)

(assert (=> bm!90142 (= call!90146 (derivativeStep!919 (ite c!218590 (regTwo!7863 (rulesRegex!244 thiss!19762 rules!2550)) (ite c!218589 (reg!4004 (rulesRegex!244 thiss!19762 rules!2550)) (ite c!218587 (regTwo!7862 (rulesRegex!244 thiss!19762 rules!2550)) (regOne!7862 (rulesRegex!244 thiss!19762 rules!2550))))) (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(declare-fun b!1334983 () Bool)

(assert (=> b!1334983 (= e!855220 (Union!3675 (Concat!6127 call!90148 (regTwo!7862 (rulesRegex!244 thiss!19762 rules!2550))) EmptyLang!3675))))

(declare-fun b!1334984 () Bool)

(assert (=> b!1334984 (= e!855221 e!855222)))

(declare-fun c!218588 () Bool)

(assert (=> b!1334984 (= c!218588 ((_ is ElementMatch!3675) (rulesRegex!244 thiss!19762 rules!2550)))))

(declare-fun b!1334985 () Bool)

(declare-fun nullable!1166 (Regex!3675) Bool)

(assert (=> b!1334985 (= c!218587 (nullable!1166 (regOne!7862 (rulesRegex!244 thiss!19762 rules!2550))))))

(assert (=> b!1334985 (= e!855224 e!855220)))

(declare-fun bm!90143 () Bool)

(assert (=> bm!90143 (= call!90148 call!90145)))

(assert (= (and d!376009 c!218591) b!1334978))

(assert (= (and d!376009 (not c!218591)) b!1334984))

(assert (= (and b!1334984 c!218588) b!1334979))

(assert (= (and b!1334984 (not c!218588)) b!1334977))

(assert (= (and b!1334977 c!218590) b!1334980))

(assert (= (and b!1334977 (not c!218590)) b!1334981))

(assert (= (and b!1334981 c!218589) b!1334982))

(assert (= (and b!1334981 (not c!218589)) b!1334985))

(assert (= (and b!1334985 c!218587) b!1334976))

(assert (= (and b!1334985 (not c!218587)) b!1334983))

(assert (= (or b!1334976 b!1334983) bm!90143))

(assert (= (or b!1334982 bm!90143) bm!90140))

(assert (= (or b!1334980 b!1334976) bm!90141))

(assert (= (or b!1334980 bm!90140) bm!90142))

(declare-fun m!1492415 () Bool)

(assert (=> d!376009 m!1492415))

(assert (=> d!376009 m!1491955))

(declare-fun m!1492417 () Bool)

(assert (=> d!376009 m!1492417))

(assert (=> bm!90141 m!1491997))

(declare-fun m!1492419 () Bool)

(assert (=> bm!90141 m!1492419))

(assert (=> bm!90142 m!1491997))

(declare-fun m!1492421 () Bool)

(assert (=> bm!90142 m!1492421))

(declare-fun m!1492423 () Bool)

(assert (=> b!1334985 m!1492423))

(assert (=> b!1334664 d!376009))

(declare-fun d!376011 () Bool)

(assert (=> d!376011 (= (head!2363 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))) (h!19020 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))))

(assert (=> b!1334664 d!376011))

(declare-fun d!376013 () Bool)

(assert (=> d!376013 (= (tail!1912 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))) (t!119164 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))))

(assert (=> b!1334664 d!376013))

(declare-fun d!376015 () Bool)

(declare-fun c!218594 () Bool)

(assert (=> d!376015 (= c!218594 ((_ is Nil!13619) lt!441940))))

(declare-fun e!855227 () (InoxSet C!7640))

(assert (=> d!376015 (= (content!1933 lt!441940) e!855227)))

(declare-fun b!1334990 () Bool)

(assert (=> b!1334990 (= e!855227 ((as const (Array C!7640 Bool)) false))))

(declare-fun b!1334991 () Bool)

(assert (=> b!1334991 (= e!855227 ((_ map or) (store ((as const (Array C!7640 Bool)) false) (h!19020 lt!441940) true) (content!1933 (t!119164 lt!441940))))))

(assert (= (and d!376015 c!218594) b!1334990))

(assert (= (and d!376015 (not c!218594)) b!1334991))

(declare-fun m!1492425 () Bool)

(assert (=> b!1334991 m!1492425))

(declare-fun m!1492427 () Bool)

(assert (=> b!1334991 m!1492427))

(assert (=> d!375853 d!376015))

(declare-fun d!376017 () Bool)

(declare-fun c!218595 () Bool)

(assert (=> d!376017 (= c!218595 ((_ is Nil!13619) (list!5169 (charsOf!1333 t1!34))))))

(declare-fun e!855228 () (InoxSet C!7640))

(assert (=> d!376017 (= (content!1933 (list!5169 (charsOf!1333 t1!34))) e!855228)))

(declare-fun b!1334992 () Bool)

(assert (=> b!1334992 (= e!855228 ((as const (Array C!7640 Bool)) false))))

(declare-fun b!1334993 () Bool)

(assert (=> b!1334993 (= e!855228 ((_ map or) (store ((as const (Array C!7640 Bool)) false) (h!19020 (list!5169 (charsOf!1333 t1!34))) true) (content!1933 (t!119164 (list!5169 (charsOf!1333 t1!34))))))))

(assert (= (and d!376017 c!218595) b!1334992))

(assert (= (and d!376017 (not c!218595)) b!1334993))

(declare-fun m!1492429 () Bool)

(assert (=> b!1334993 m!1492429))

(declare-fun m!1492431 () Bool)

(assert (=> b!1334993 m!1492431))

(assert (=> d!375853 d!376017))

(declare-fun d!376019 () Bool)

(declare-fun c!218596 () Bool)

(assert (=> d!376019 (= c!218596 ((_ is Nil!13619) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))

(declare-fun e!855229 () (InoxSet C!7640))

(assert (=> d!376019 (= (content!1933 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)) e!855229)))

(declare-fun b!1334994 () Bool)

(assert (=> b!1334994 (= e!855229 ((as const (Array C!7640 Bool)) false))))

(declare-fun b!1334995 () Bool)

(assert (=> b!1334995 (= e!855229 ((_ map or) (store ((as const (Array C!7640 Bool)) false) (h!19020 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)) true) (content!1933 (t!119164 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(assert (= (and d!376019 c!218596) b!1334994))

(assert (= (and d!376019 (not c!218596)) b!1334995))

(declare-fun m!1492433 () Bool)

(assert (=> b!1334995 m!1492433))

(declare-fun m!1492435 () Bool)

(assert (=> b!1334995 m!1492435))

(assert (=> d!375853 d!376019))

(declare-fun d!376021 () Bool)

(assert (=> d!376021 true))

(declare-fun lt!442009 () Bool)

(declare-fun rulesValidInductive!746 (LexerInterface!2056 List!13686) Bool)

(assert (=> d!376021 (= lt!442009 (rulesValidInductive!746 thiss!19762 rules!2550))))

(declare-fun lambda!55926 () Int)

(declare-fun forall!3332 (List!13686 Int) Bool)

(assert (=> d!376021 (= lt!442009 (forall!3332 rules!2550 lambda!55926))))

(assert (=> d!376021 (= (rulesValid!859 thiss!19762 rules!2550) lt!442009)))

(declare-fun bs!331858 () Bool)

(assert (= bs!331858 d!376021))

(declare-fun m!1492437 () Bool)

(assert (=> bs!331858 m!1492437))

(declare-fun m!1492439 () Bool)

(assert (=> bs!331858 m!1492439))

(assert (=> d!375921 d!376021))

(declare-fun bs!331859 () Bool)

(declare-fun d!376023 () Bool)

(assert (= bs!331859 (and d!376023 d!375859)))

(declare-fun lambda!55931 () Int)

(assert (=> bs!331859 (= lambda!55931 lambda!55910)))

(declare-fun lambda!55932 () Int)

(declare-fun forall!3333 (List!13690 Int) Bool)

(assert (=> d!376023 (forall!3333 (map!3004 rules!2550 lambda!55931) lambda!55932)))

(declare-fun lt!442014 () Unit!19759)

(declare-fun e!855232 () Unit!19759)

(assert (=> d!376023 (= lt!442014 e!855232)))

(declare-fun c!218599 () Bool)

(assert (=> d!376023 (= c!218599 ((_ is Nil!13620) rules!2550))))

(assert (=> d!376023 (rulesValidInductive!746 thiss!19762 rules!2550)))

(assert (=> d!376023 (= (lemma!89 rules!2550 thiss!19762 rules!2550) lt!442014)))

(declare-fun b!1335002 () Bool)

(declare-fun Unit!19761 () Unit!19759)

(assert (=> b!1335002 (= e!855232 Unit!19761)))

(declare-fun b!1335003 () Bool)

(declare-fun Unit!19762 () Unit!19759)

(assert (=> b!1335003 (= e!855232 Unit!19762)))

(declare-fun lt!442015 () Unit!19759)

(assert (=> b!1335003 (= lt!442015 (lemma!89 rules!2550 thiss!19762 (t!119165 rules!2550)))))

(assert (= (and d!376023 c!218599) b!1335002))

(assert (= (and d!376023 (not c!218599)) b!1335003))

(declare-fun m!1492441 () Bool)

(assert (=> d!376023 m!1492441))

(assert (=> d!376023 m!1492441))

(declare-fun m!1492443 () Bool)

(assert (=> d!376023 m!1492443))

(assert (=> d!376023 m!1492437))

(declare-fun m!1492445 () Bool)

(assert (=> b!1335003 m!1492445))

(assert (=> d!375859 d!376023))

(declare-fun bs!331860 () Bool)

(declare-fun d!376025 () Bool)

(assert (= bs!331860 (and d!376025 d!376023)))

(declare-fun lambda!55935 () Int)

(assert (=> bs!331860 (= lambda!55935 lambda!55932)))

(declare-fun b!1335024 () Bool)

(declare-fun e!855249 () Regex!3675)

(assert (=> b!1335024 (= e!855249 (Union!3675 (h!19025 (map!3004 rules!2550 lambda!55910)) (generalisedUnion!97 (t!119203 (map!3004 rules!2550 lambda!55910)))))))

(declare-fun b!1335025 () Bool)

(declare-fun e!855250 () Regex!3675)

(assert (=> b!1335025 (= e!855250 e!855249)))

(declare-fun c!218612 () Bool)

(assert (=> b!1335025 (= c!218612 ((_ is Cons!13624) (map!3004 rules!2550 lambda!55910)))))

(declare-fun b!1335026 () Bool)

(assert (=> b!1335026 (= e!855250 (h!19025 (map!3004 rules!2550 lambda!55910)))))

(declare-fun b!1335028 () Bool)

(declare-fun e!855245 () Bool)

(declare-fun isEmpty!8127 (List!13690) Bool)

(assert (=> b!1335028 (= e!855245 (isEmpty!8127 (t!119203 (map!3004 rules!2550 lambda!55910))))))

(declare-fun b!1335029 () Bool)

(assert (=> b!1335029 (= e!855249 EmptyLang!3675)))

(declare-fun b!1335030 () Bool)

(declare-fun e!855248 () Bool)

(declare-fun lt!442018 () Regex!3675)

(declare-fun isUnion!26 (Regex!3675) Bool)

(assert (=> b!1335030 (= e!855248 (isUnion!26 lt!442018))))

(declare-fun b!1335027 () Bool)

(declare-fun e!855246 () Bool)

(assert (=> b!1335027 (= e!855246 e!855248)))

(declare-fun c!218609 () Bool)

(declare-fun tail!1913 (List!13690) List!13690)

(assert (=> b!1335027 (= c!218609 (isEmpty!8127 (tail!1913 (map!3004 rules!2550 lambda!55910))))))

(declare-fun e!855247 () Bool)

(assert (=> d!376025 e!855247))

(declare-fun res!602037 () Bool)

(assert (=> d!376025 (=> (not res!602037) (not e!855247))))

(assert (=> d!376025 (= res!602037 (validRegex!1580 lt!442018))))

(assert (=> d!376025 (= lt!442018 e!855250)))

(declare-fun c!218611 () Bool)

(assert (=> d!376025 (= c!218611 e!855245)))

(declare-fun res!602038 () Bool)

(assert (=> d!376025 (=> (not res!602038) (not e!855245))))

(assert (=> d!376025 (= res!602038 ((_ is Cons!13624) (map!3004 rules!2550 lambda!55910)))))

(assert (=> d!376025 (forall!3333 (map!3004 rules!2550 lambda!55910) lambda!55935)))

(assert (=> d!376025 (= (generalisedUnion!97 (map!3004 rules!2550 lambda!55910)) lt!442018)))

(declare-fun b!1335031 () Bool)

(declare-fun isEmptyLang!26 (Regex!3675) Bool)

(assert (=> b!1335031 (= e!855246 (isEmptyLang!26 lt!442018))))

(declare-fun b!1335032 () Bool)

(assert (=> b!1335032 (= e!855247 e!855246)))

(declare-fun c!218610 () Bool)

(assert (=> b!1335032 (= c!218610 (isEmpty!8127 (map!3004 rules!2550 lambda!55910)))))

(declare-fun b!1335033 () Bool)

(declare-fun head!2364 (List!13690) Regex!3675)

(assert (=> b!1335033 (= e!855248 (= lt!442018 (head!2364 (map!3004 rules!2550 lambda!55910))))))

(assert (= (and d!376025 res!602038) b!1335028))

(assert (= (and d!376025 c!218611) b!1335026))

(assert (= (and d!376025 (not c!218611)) b!1335025))

(assert (= (and b!1335025 c!218612) b!1335024))

(assert (= (and b!1335025 (not c!218612)) b!1335029))

(assert (= (and d!376025 res!602037) b!1335032))

(assert (= (and b!1335032 c!218610) b!1335031))

(assert (= (and b!1335032 (not c!218610)) b!1335027))

(assert (= (and b!1335027 c!218609) b!1335033))

(assert (= (and b!1335027 (not c!218609)) b!1335030))

(declare-fun m!1492447 () Bool)

(assert (=> b!1335030 m!1492447))

(declare-fun m!1492449 () Bool)

(assert (=> b!1335024 m!1492449))

(declare-fun m!1492451 () Bool)

(assert (=> b!1335031 m!1492451))

(declare-fun m!1492453 () Bool)

(assert (=> d!376025 m!1492453))

(assert (=> d!376025 m!1492037))

(declare-fun m!1492455 () Bool)

(assert (=> d!376025 m!1492455))

(assert (=> b!1335033 m!1492037))

(declare-fun m!1492457 () Bool)

(assert (=> b!1335033 m!1492457))

(assert (=> b!1335027 m!1492037))

(declare-fun m!1492459 () Bool)

(assert (=> b!1335027 m!1492459))

(assert (=> b!1335027 m!1492459))

(declare-fun m!1492461 () Bool)

(assert (=> b!1335027 m!1492461))

(declare-fun m!1492463 () Bool)

(assert (=> b!1335028 m!1492463))

(assert (=> b!1335032 m!1492037))

(declare-fun m!1492465 () Bool)

(assert (=> b!1335032 m!1492465))

(assert (=> d!375859 d!376025))

(declare-fun d!376027 () Bool)

(declare-fun lt!442021 () List!13690)

(declare-fun size!11089 (List!13690) Int)

(declare-fun size!11090 (List!13686) Int)

(assert (=> d!376027 (= (size!11089 lt!442021) (size!11090 rules!2550))))

(declare-fun e!855253 () List!13690)

(assert (=> d!376027 (= lt!442021 e!855253)))

(declare-fun c!218615 () Bool)

(assert (=> d!376027 (= c!218615 ((_ is Nil!13620) rules!2550))))

(assert (=> d!376027 (= (map!3004 rules!2550 lambda!55910) lt!442021)))

(declare-fun b!1335038 () Bool)

(assert (=> b!1335038 (= e!855253 Nil!13624)))

(declare-fun b!1335039 () Bool)

(declare-fun $colon$colon!170 (List!13690 Regex!3675) List!13690)

(declare-fun dynLambda!5999 (Int Rule!4522) Regex!3675)

(assert (=> b!1335039 (= e!855253 ($colon$colon!170 (map!3004 (t!119165 rules!2550) lambda!55910) (dynLambda!5999 lambda!55910 (h!19021 rules!2550))))))

(assert (= (and d!376027 c!218615) b!1335038))

(assert (= (and d!376027 (not c!218615)) b!1335039))

(declare-fun b_lambda!39383 () Bool)

(assert (=> (not b_lambda!39383) (not b!1335039)))

(declare-fun m!1492467 () Bool)

(assert (=> d!376027 m!1492467))

(declare-fun m!1492469 () Bool)

(assert (=> d!376027 m!1492469))

(declare-fun m!1492471 () Bool)

(assert (=> b!1335039 m!1492471))

(declare-fun m!1492473 () Bool)

(assert (=> b!1335039 m!1492473))

(assert (=> b!1335039 m!1492471))

(assert (=> b!1335039 m!1492473))

(declare-fun m!1492475 () Bool)

(assert (=> b!1335039 m!1492475))

(assert (=> d!375859 d!376027))

(declare-fun b!1335064 () Bool)

(declare-fun e!855267 () List!13685)

(declare-fun e!855268 () List!13685)

(assert (=> b!1335064 (= e!855267 e!855268)))

(declare-fun c!218624 () Bool)

(assert (=> b!1335064 (= c!218624 ((_ is Leaf!6866) (c!218523 (charsOf!1333 t1!34))))))

(declare-fun b!1335065 () Bool)

(declare-fun list!5175 (IArray!8983) List!13685)

(assert (=> b!1335065 (= e!855268 (list!5175 (xs!7204 (c!218523 (charsOf!1333 t1!34)))))))

(declare-fun b!1335066 () Bool)

(assert (=> b!1335066 (= e!855268 (++!3476 (list!5172 (left!11687 (c!218523 (charsOf!1333 t1!34)))) (list!5172 (right!12017 (c!218523 (charsOf!1333 t1!34))))))))

(declare-fun d!376029 () Bool)

(declare-fun c!218623 () Bool)

(assert (=> d!376029 (= c!218623 ((_ is Empty!4489) (c!218523 (charsOf!1333 t1!34))))))

(assert (=> d!376029 (= (list!5172 (c!218523 (charsOf!1333 t1!34))) e!855267)))

(declare-fun b!1335063 () Bool)

(assert (=> b!1335063 (= e!855267 Nil!13619)))

(assert (= (and d!376029 c!218623) b!1335063))

(assert (= (and d!376029 (not c!218623)) b!1335064))

(assert (= (and b!1335064 c!218624) b!1335065))

(assert (= (and b!1335064 (not c!218624)) b!1335066))

(declare-fun m!1492477 () Bool)

(assert (=> b!1335065 m!1492477))

(declare-fun m!1492479 () Bool)

(assert (=> b!1335066 m!1492479))

(declare-fun m!1492481 () Bool)

(assert (=> b!1335066 m!1492481))

(assert (=> b!1335066 m!1492479))

(assert (=> b!1335066 m!1492481))

(declare-fun m!1492483 () Bool)

(assert (=> b!1335066 m!1492483))

(assert (=> d!375855 d!376029))

(declare-fun d!376031 () Bool)

(declare-fun lt!442027 () Token!4384)

(declare-fun apply!3181 (List!13691 Int) Token!4384)

(assert (=> d!376031 (= lt!442027 (apply!3181 (list!5173 (_1!7517 lt!441981)) 0))))

(declare-fun apply!3182 (Conc!4491 Int) Token!4384)

(assert (=> d!376031 (= lt!442027 (apply!3182 (c!218554 (_1!7517 lt!441981)) 0))))

(declare-fun e!855271 () Bool)

(assert (=> d!376031 e!855271))

(declare-fun res!602050 () Bool)

(assert (=> d!376031 (=> (not res!602050) (not e!855271))))

(assert (=> d!376031 (= res!602050 (<= 0 0))))

(assert (=> d!376031 (= (apply!3177 (_1!7517 lt!441981) 0) lt!442027)))

(declare-fun b!1335069 () Bool)

(assert (=> b!1335069 (= e!855271 (< 0 (size!11087 (_1!7517 lt!441981))))))

(assert (= (and d!376031 res!602050) b!1335069))

(declare-fun m!1492503 () Bool)

(assert (=> d!376031 m!1492503))

(assert (=> d!376031 m!1492503))

(declare-fun m!1492505 () Bool)

(assert (=> d!376031 m!1492505))

(declare-fun m!1492507 () Bool)

(assert (=> d!376031 m!1492507))

(assert (=> b!1335069 m!1492255))

(assert (=> b!1334834 d!376031))

(assert (=> b!1334667 d!375915))

(declare-fun d!376035 () Bool)

(declare-fun charsToInt!0 (List!13684) (_ BitVec 32))

(assert (=> d!376035 (= (inv!16 (value!76921 t1!34)) (= (charsToInt!0 (text!17604 (value!76921 t1!34))) (value!76912 (value!76921 t1!34))))))

(declare-fun bs!331861 () Bool)

(assert (= bs!331861 d!376035))

(declare-fun m!1492509 () Bool)

(assert (=> bs!331861 m!1492509))

(assert (=> b!1334818 d!376035))

(declare-fun d!376037 () Bool)

(assert (=> d!376037 (= (isEmpty!8122 (originalCharacters!3223 t2!34)) ((_ is Nil!13619) (originalCharacters!3223 t2!34)))))

(assert (=> d!375937 d!376037))

(declare-fun d!376039 () Bool)

(declare-fun lt!442028 () Bool)

(assert (=> d!376039 (= lt!442028 (isEmpty!8122 (list!5169 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34)))))))))

(assert (=> d!376039 (= lt!442028 (isEmpty!8126 (c!218523 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34)))))))))

(assert (=> d!376039 (= (isEmpty!8123 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34))))) lt!442028)))

(declare-fun bs!331862 () Bool)

(assert (= bs!331862 d!376039))

(declare-fun m!1492511 () Bool)

(assert (=> bs!331862 m!1492511))

(assert (=> bs!331862 m!1492511))

(declare-fun m!1492513 () Bool)

(assert (=> bs!331862 m!1492513))

(declare-fun m!1492515 () Bool)

(assert (=> bs!331862 m!1492515))

(assert (=> b!1334836 d!376039))

(declare-fun b!1335152 () Bool)

(declare-fun e!855323 () Bool)

(declare-fun e!855321 () Bool)

(assert (=> b!1335152 (= e!855323 e!855321)))

(declare-fun res!602095 () Bool)

(declare-fun lt!442094 () tuple2!13262)

(assert (=> b!1335152 (= res!602095 (< (size!11082 (_2!7517 lt!442094)) (size!11082 (print!828 thiss!19762 (singletonSeq!961 t2!34)))))))

(assert (=> b!1335152 (=> (not res!602095) (not e!855321))))

(declare-fun b!1335153 () Bool)

(assert (=> b!1335153 (= e!855323 (= (_2!7517 lt!442094) (print!828 thiss!19762 (singletonSeq!961 t2!34))))))

(declare-fun d!376041 () Bool)

(declare-fun e!855322 () Bool)

(assert (=> d!376041 e!855322))

(declare-fun res!602093 () Bool)

(assert (=> d!376041 (=> (not res!602093) (not e!855322))))

(assert (=> d!376041 (= res!602093 e!855323)))

(declare-fun c!218648 () Bool)

(assert (=> d!376041 (= c!218648 (> (size!11087 (_1!7517 lt!442094)) 0))))

(declare-fun lexTailRecV2!385 (LexerInterface!2056 List!13686 BalanceConc!8918 BalanceConc!8918 BalanceConc!8918 BalanceConc!8922) tuple2!13262)

(assert (=> d!376041 (= lt!442094 (lexTailRecV2!385 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34)) (BalanceConc!8919 Empty!4489) (print!828 thiss!19762 (singletonSeq!961 t2!34)) (BalanceConc!8923 Empty!4491)))))

(assert (=> d!376041 (= (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34))) lt!442094)))

(declare-fun b!1335154 () Bool)

(declare-fun isEmpty!8128 (BalanceConc!8922) Bool)

(assert (=> b!1335154 (= e!855321 (not (isEmpty!8128 (_1!7517 lt!442094))))))

(declare-fun b!1335155 () Bool)

(declare-datatypes ((tuple2!13266 0))(
  ( (tuple2!13267 (_1!7519 List!13691) (_2!7519 List!13685)) )
))
(declare-fun lexList!590 (LexerInterface!2056 List!13686 List!13685) tuple2!13266)

(assert (=> b!1335155 (= e!855322 (= (list!5169 (_2!7517 lt!442094)) (_2!7519 (lexList!590 thiss!19762 rules!2550 (list!5169 (print!828 thiss!19762 (singletonSeq!961 t2!34)))))))))

(declare-fun b!1335156 () Bool)

(declare-fun res!602094 () Bool)

(assert (=> b!1335156 (=> (not res!602094) (not e!855322))))

(assert (=> b!1335156 (= res!602094 (= (list!5173 (_1!7517 lt!442094)) (_1!7519 (lexList!590 thiss!19762 rules!2550 (list!5169 (print!828 thiss!19762 (singletonSeq!961 t2!34)))))))))

(assert (= (and d!376041 c!218648) b!1335152))

(assert (= (and d!376041 (not c!218648)) b!1335153))

(assert (= (and b!1335152 res!602095) b!1335154))

(assert (= (and d!376041 res!602093) b!1335156))

(assert (= (and b!1335156 res!602094) b!1335155))

(declare-fun m!1492675 () Bool)

(assert (=> b!1335155 m!1492675))

(assert (=> b!1335155 m!1492251))

(declare-fun m!1492677 () Bool)

(assert (=> b!1335155 m!1492677))

(assert (=> b!1335155 m!1492677))

(declare-fun m!1492679 () Bool)

(assert (=> b!1335155 m!1492679))

(declare-fun m!1492681 () Bool)

(assert (=> b!1335156 m!1492681))

(assert (=> b!1335156 m!1492251))

(assert (=> b!1335156 m!1492677))

(assert (=> b!1335156 m!1492677))

(assert (=> b!1335156 m!1492679))

(declare-fun m!1492683 () Bool)

(assert (=> d!376041 m!1492683))

(assert (=> d!376041 m!1492251))

(assert (=> d!376041 m!1492251))

(declare-fun m!1492685 () Bool)

(assert (=> d!376041 m!1492685))

(declare-fun m!1492687 () Bool)

(assert (=> b!1335152 m!1492687))

(assert (=> b!1335152 m!1492251))

(declare-fun m!1492689 () Bool)

(assert (=> b!1335152 m!1492689))

(declare-fun m!1492691 () Bool)

(assert (=> b!1335154 m!1492691))

(assert (=> b!1334836 d!376041))

(declare-fun d!376101 () Bool)

(declare-fun lt!442101 () BalanceConc!8918)

(declare-fun printList!580 (LexerInterface!2056 List!13691) List!13685)

(assert (=> d!376101 (= (list!5169 lt!442101) (printList!580 thiss!19762 (list!5173 (singletonSeq!961 t2!34))))))

(declare-fun printTailRec!562 (LexerInterface!2056 BalanceConc!8922 Int BalanceConc!8918) BalanceConc!8918)

(assert (=> d!376101 (= lt!442101 (printTailRec!562 thiss!19762 (singletonSeq!961 t2!34) 0 (BalanceConc!8919 Empty!4489)))))

(assert (=> d!376101 (= (print!828 thiss!19762 (singletonSeq!961 t2!34)) lt!442101)))

(declare-fun bs!331886 () Bool)

(assert (= bs!331886 d!376101))

(declare-fun m!1492727 () Bool)

(assert (=> bs!331886 m!1492727))

(assert (=> bs!331886 m!1492249))

(assert (=> bs!331886 m!1492257))

(assert (=> bs!331886 m!1492257))

(declare-fun m!1492729 () Bool)

(assert (=> bs!331886 m!1492729))

(assert (=> bs!331886 m!1492249))

(declare-fun m!1492731 () Bool)

(assert (=> bs!331886 m!1492731))

(assert (=> b!1334836 d!376101))

(declare-fun d!376119 () Bool)

(declare-fun e!855340 () Bool)

(assert (=> d!376119 e!855340))

(declare-fun res!602100 () Bool)

(assert (=> d!376119 (=> (not res!602100) (not e!855340))))

(declare-fun lt!442104 () BalanceConc!8922)

(assert (=> d!376119 (= res!602100 (= (list!5173 lt!442104) (Cons!13625 t2!34 Nil!13625)))))

(declare-fun singleton!407 (Token!4384) BalanceConc!8922)

(assert (=> d!376119 (= lt!442104 (singleton!407 t2!34))))

(assert (=> d!376119 (= (singletonSeq!961 t2!34) lt!442104)))

(declare-fun b!1335185 () Bool)

(declare-fun isBalanced!1302 (Conc!4491) Bool)

(assert (=> b!1335185 (= e!855340 (isBalanced!1302 (c!218554 lt!442104)))))

(assert (= (and d!376119 res!602100) b!1335185))

(declare-fun m!1492733 () Bool)

(assert (=> d!376119 m!1492733))

(declare-fun m!1492735 () Bool)

(assert (=> d!376119 m!1492735))

(declare-fun m!1492737 () Bool)

(assert (=> b!1335185 m!1492737))

(assert (=> b!1334836 d!376119))

(declare-fun bs!331887 () Bool)

(declare-fun d!376121 () Bool)

(assert (= bs!331887 (and d!376121 d!375961)))

(declare-fun lambda!55942 () Int)

(assert (=> bs!331887 (= (= (toValue!3592 (transformation!2361 (rule!4106 t2!34))) (toValue!3592 (transformation!2361 (rule!4106 t1!34)))) (= lambda!55942 lambda!55923))))

(assert (=> d!376121 true))

(assert (=> d!376121 (< (dynLambda!5997 order!8179 (toValue!3592 (transformation!2361 (rule!4106 t2!34)))) (dynLambda!5998 order!8181 lambda!55942))))

(assert (=> d!376121 (= (equivClasses!849 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toValue!3592 (transformation!2361 (rule!4106 t2!34)))) (Forall2!423 lambda!55942))))

(declare-fun bs!331888 () Bool)

(assert (= bs!331888 d!376121))

(declare-fun m!1492739 () Bool)

(assert (=> bs!331888 m!1492739))

(assert (=> b!1334833 d!376121))

(declare-fun b!1335198 () Bool)

(declare-fun res!602102 () Bool)

(declare-fun e!855346 () Bool)

(assert (=> b!1335198 (=> (not res!602102) (not e!855346))))

(declare-fun lt!442106 () List!13685)

(assert (=> b!1335198 (= res!602102 (= (size!11086 lt!442106) (+ (size!11086 (t!119164 (list!5169 (charsOf!1333 t1!34)))) (size!11086 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(declare-fun d!376123 () Bool)

(assert (=> d!376123 e!855346))

(declare-fun res!602101 () Bool)

(assert (=> d!376123 (=> (not res!602101) (not e!855346))))

(assert (=> d!376123 (= res!602101 (= (content!1933 lt!442106) ((_ map or) (content!1933 (t!119164 (list!5169 (charsOf!1333 t1!34)))) (content!1933 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(declare-fun e!855347 () List!13685)

(assert (=> d!376123 (= lt!442106 e!855347)))

(declare-fun c!218666 () Bool)

(assert (=> d!376123 (= c!218666 ((_ is Nil!13619) (t!119164 (list!5169 (charsOf!1333 t1!34)))))))

(assert (=> d!376123 (= (++!3476 (t!119164 (list!5169 (charsOf!1333 t1!34))) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)) lt!442106)))

(declare-fun b!1335199 () Bool)

(assert (=> b!1335199 (= e!855346 (or (not (= (Cons!13619 (apply!3171 lt!441934 0) Nil!13619) Nil!13619)) (= lt!442106 (t!119164 (list!5169 (charsOf!1333 t1!34))))))))

(declare-fun b!1335196 () Bool)

(assert (=> b!1335196 (= e!855347 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))

(declare-fun b!1335197 () Bool)

(assert (=> b!1335197 (= e!855347 (Cons!13619 (h!19020 (t!119164 (list!5169 (charsOf!1333 t1!34)))) (++!3476 (t!119164 (t!119164 (list!5169 (charsOf!1333 t1!34)))) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))))

(assert (= (and d!376123 c!218666) b!1335196))

(assert (= (and d!376123 (not c!218666)) b!1335197))

(assert (= (and d!376123 res!602101) b!1335198))

(assert (= (and b!1335198 res!602102) b!1335199))

(declare-fun m!1492743 () Bool)

(assert (=> b!1335198 m!1492743))

(declare-fun m!1492745 () Bool)

(assert (=> b!1335198 m!1492745))

(assert (=> b!1335198 m!1492015))

(declare-fun m!1492747 () Bool)

(assert (=> d!376123 m!1492747))

(assert (=> d!376123 m!1492431))

(assert (=> d!376123 m!1492021))

(declare-fun m!1492751 () Bool)

(assert (=> b!1335197 m!1492751))

(assert (=> b!1334677 d!376123))

(declare-fun b!1335200 () Bool)

(declare-fun e!855350 () Bool)

(declare-fun e!855348 () Bool)

(assert (=> b!1335200 (= e!855350 e!855348)))

(declare-fun lt!442107 () tuple2!13262)

(declare-fun res!602105 () Bool)

(assert (=> b!1335200 (= res!602105 (< (size!11082 (_2!7517 lt!442107)) (size!11082 (print!828 thiss!19762 (singletonSeq!961 t1!34)))))))

(assert (=> b!1335200 (=> (not res!602105) (not e!855348))))

(declare-fun b!1335201 () Bool)

(assert (=> b!1335201 (= e!855350 (= (_2!7517 lt!442107) (print!828 thiss!19762 (singletonSeq!961 t1!34))))))

(declare-fun d!376125 () Bool)

(declare-fun e!855349 () Bool)

(assert (=> d!376125 e!855349))

(declare-fun res!602103 () Bool)

(assert (=> d!376125 (=> (not res!602103) (not e!855349))))

(assert (=> d!376125 (= res!602103 e!855350)))

(declare-fun c!218667 () Bool)

(assert (=> d!376125 (= c!218667 (> (size!11087 (_1!7517 lt!442107)) 0))))

(assert (=> d!376125 (= lt!442107 (lexTailRecV2!385 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34)) (BalanceConc!8919 Empty!4489) (print!828 thiss!19762 (singletonSeq!961 t1!34)) (BalanceConc!8923 Empty!4491)))))

(assert (=> d!376125 (= (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34))) lt!442107)))

(declare-fun b!1335202 () Bool)

(assert (=> b!1335202 (= e!855348 (not (isEmpty!8128 (_1!7517 lt!442107))))))

(declare-fun b!1335203 () Bool)

(assert (=> b!1335203 (= e!855349 (= (list!5169 (_2!7517 lt!442107)) (_2!7519 (lexList!590 thiss!19762 rules!2550 (list!5169 (print!828 thiss!19762 (singletonSeq!961 t1!34)))))))))

(declare-fun b!1335204 () Bool)

(declare-fun res!602104 () Bool)

(assert (=> b!1335204 (=> (not res!602104) (not e!855349))))

(assert (=> b!1335204 (= res!602104 (= (list!5173 (_1!7517 lt!442107)) (_1!7519 (lexList!590 thiss!19762 rules!2550 (list!5169 (print!828 thiss!19762 (singletonSeq!961 t1!34)))))))))

(assert (= (and d!376125 c!218667) b!1335200))

(assert (= (and d!376125 (not c!218667)) b!1335201))

(assert (= (and b!1335200 res!602105) b!1335202))

(assert (= (and d!376125 res!602103) b!1335204))

(assert (= (and b!1335204 res!602104) b!1335203))

(declare-fun m!1492757 () Bool)

(assert (=> b!1335203 m!1492757))

(assert (=> b!1335203 m!1492195))

(declare-fun m!1492759 () Bool)

(assert (=> b!1335203 m!1492759))

(assert (=> b!1335203 m!1492759))

(declare-fun m!1492761 () Bool)

(assert (=> b!1335203 m!1492761))

(declare-fun m!1492763 () Bool)

(assert (=> b!1335204 m!1492763))

(assert (=> b!1335204 m!1492195))

(assert (=> b!1335204 m!1492759))

(assert (=> b!1335204 m!1492759))

(assert (=> b!1335204 m!1492761))

(declare-fun m!1492765 () Bool)

(assert (=> d!376125 m!1492765))

(assert (=> d!376125 m!1492195))

(assert (=> d!376125 m!1492195))

(declare-fun m!1492767 () Bool)

(assert (=> d!376125 m!1492767))

(declare-fun m!1492769 () Bool)

(assert (=> b!1335200 m!1492769))

(assert (=> b!1335200 m!1492195))

(declare-fun m!1492771 () Bool)

(assert (=> b!1335200 m!1492771))

(declare-fun m!1492773 () Bool)

(assert (=> b!1335202 m!1492773))

(assert (=> d!375863 d!376125))

(declare-fun d!376133 () Bool)

(declare-fun lt!442109 () BalanceConc!8918)

(assert (=> d!376133 (= (list!5169 lt!442109) (printList!580 thiss!19762 (list!5173 (singletonSeq!961 t1!34))))))

(assert (=> d!376133 (= lt!442109 (printTailRec!562 thiss!19762 (singletonSeq!961 t1!34) 0 (BalanceConc!8919 Empty!4489)))))

(assert (=> d!376133 (= (print!828 thiss!19762 (singletonSeq!961 t1!34)) lt!442109)))

(declare-fun bs!331889 () Bool)

(assert (= bs!331889 d!376133))

(declare-fun m!1492775 () Bool)

(assert (=> bs!331889 m!1492775))

(assert (=> bs!331889 m!1492193))

(assert (=> bs!331889 m!1492201))

(assert (=> bs!331889 m!1492201))

(declare-fun m!1492779 () Bool)

(assert (=> bs!331889 m!1492779))

(assert (=> bs!331889 m!1492193))

(declare-fun m!1492781 () Bool)

(assert (=> bs!331889 m!1492781))

(assert (=> d!375863 d!376133))

(declare-fun d!376137 () Bool)

(declare-fun lt!442112 () Int)

(declare-fun size!11093 (List!13691) Int)

(assert (=> d!376137 (= lt!442112 (size!11093 (list!5173 (_1!7517 lt!441975))))))

(declare-fun size!11094 (Conc!4491) Int)

(assert (=> d!376137 (= lt!442112 (size!11094 (c!218554 (_1!7517 lt!441975))))))

(assert (=> d!376137 (= (size!11087 (_1!7517 lt!441975)) lt!442112)))

(declare-fun bs!331890 () Bool)

(assert (= bs!331890 d!376137))

(declare-fun m!1492783 () Bool)

(assert (=> bs!331890 m!1492783))

(assert (=> bs!331890 m!1492783))

(declare-fun m!1492785 () Bool)

(assert (=> bs!331890 m!1492785))

(declare-fun m!1492787 () Bool)

(assert (=> bs!331890 m!1492787))

(assert (=> d!375863 d!376137))

(declare-fun d!376139 () Bool)

(declare-fun e!855352 () Bool)

(assert (=> d!376139 e!855352))

(declare-fun res!602106 () Bool)

(assert (=> d!376139 (=> (not res!602106) (not e!855352))))

(declare-fun lt!442113 () BalanceConc!8922)

(assert (=> d!376139 (= res!602106 (= (list!5173 lt!442113) (Cons!13625 t1!34 Nil!13625)))))

(assert (=> d!376139 (= lt!442113 (singleton!407 t1!34))))

(assert (=> d!376139 (= (singletonSeq!961 t1!34) lt!442113)))

(declare-fun b!1335207 () Bool)

(assert (=> b!1335207 (= e!855352 (isBalanced!1302 (c!218554 lt!442113)))))

(assert (= (and d!376139 res!602106) b!1335207))

(declare-fun m!1492789 () Bool)

(assert (=> d!376139 m!1492789))

(declare-fun m!1492791 () Bool)

(assert (=> d!376139 m!1492791))

(declare-fun m!1492793 () Bool)

(assert (=> b!1335207 m!1492793))

(assert (=> d!375863 d!376139))

(declare-fun d!376141 () Bool)

(declare-fun list!5177 (Conc!4491) List!13691)

(assert (=> d!376141 (= (list!5173 (_1!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34))))) (list!5177 (c!218554 (_1!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34)))))))))

(declare-fun bs!331891 () Bool)

(assert (= bs!331891 d!376141))

(declare-fun m!1492795 () Bool)

(assert (=> bs!331891 m!1492795))

(assert (=> d!375863 d!376141))

(declare-fun d!376143 () Bool)

(assert (=> d!376143 (= (list!5173 (singletonSeq!961 t1!34)) (list!5177 (c!218554 (singletonSeq!961 t1!34))))))

(declare-fun bs!331892 () Bool)

(assert (= bs!331892 d!376143))

(declare-fun m!1492797 () Bool)

(assert (=> bs!331892 m!1492797))

(assert (=> d!375863 d!376143))

(assert (=> d!375863 d!375931))

(declare-fun d!376145 () Bool)

(assert (=> d!376145 (= (list!5169 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))) (list!5172 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))))))

(declare-fun bs!331893 () Bool)

(assert (= bs!331893 d!376145))

(declare-fun m!1492799 () Bool)

(assert (=> bs!331893 m!1492799))

(assert (=> b!1334841 d!376145))

(declare-fun d!376147 () Bool)

(declare-fun charsToBigInt!0 (List!13684 Int) Int)

(assert (=> d!376147 (= (inv!15 (value!76921 t2!34)) (= (charsToBigInt!0 (text!17606 (value!76921 t2!34)) 0) (value!76916 (value!76921 t2!34))))))

(declare-fun bs!331895 () Bool)

(assert (= bs!331895 d!376147))

(declare-fun m!1492803 () Bool)

(assert (=> bs!331895 m!1492803))

(assert (=> b!1334705 d!376147))

(declare-fun d!376149 () Bool)

(declare-fun res!602107 () Bool)

(declare-fun e!855356 () Bool)

(assert (=> d!376149 (=> res!602107 e!855356)))

(assert (=> d!376149 (= res!602107 (not ((_ is Cons!13620) (t!119165 rules!2550))))))

(assert (=> d!376149 (= (sepAndNonSepRulesDisjointChars!734 rules!2550 (t!119165 rules!2550)) e!855356)))

(declare-fun b!1335214 () Bool)

(declare-fun e!855357 () Bool)

(assert (=> b!1335214 (= e!855356 e!855357)))

(declare-fun res!602108 () Bool)

(assert (=> b!1335214 (=> (not res!602108) (not e!855357))))

(assert (=> b!1335214 (= res!602108 (ruleDisjointCharsFromAllFromOtherType!332 (h!19021 (t!119165 rules!2550)) rules!2550))))

(declare-fun b!1335215 () Bool)

(assert (=> b!1335215 (= e!855357 (sepAndNonSepRulesDisjointChars!734 rules!2550 (t!119165 (t!119165 rules!2550))))))

(assert (= (and d!376149 (not res!602107)) b!1335214))

(assert (= (and b!1335214 res!602108) b!1335215))

(declare-fun m!1492809 () Bool)

(assert (=> b!1335214 m!1492809))

(declare-fun m!1492811 () Bool)

(assert (=> b!1335215 m!1492811))

(assert (=> b!1334828 d!376149))

(declare-fun d!376153 () Bool)

(declare-fun charsToBigInt!1 (List!13684) Int)

(assert (=> d!376153 (= (inv!17 (value!76921 t2!34)) (= (charsToBigInt!1 (text!17605 (value!76921 t2!34))) (value!76913 (value!76921 t2!34))))))

(declare-fun bs!331896 () Bool)

(assert (= bs!331896 d!376153))

(declare-fun m!1492813 () Bool)

(assert (=> bs!331896 m!1492813))

(assert (=> b!1334707 d!376153))

(declare-fun d!376155 () Bool)

(assert (=> d!376155 (= (list!5169 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))) (list!5172 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))))))

(declare-fun bs!331897 () Bool)

(assert (= bs!331897 d!376155))

(declare-fun m!1492815 () Bool)

(assert (=> bs!331897 m!1492815))

(assert (=> b!1334843 d!376155))

(declare-fun d!376157 () Bool)

(declare-fun lostCauseFct!116 (Regex!3675) Bool)

(assert (=> d!376157 (= (lostCause!295 (rulesRegex!244 thiss!19762 rules!2550)) (lostCauseFct!116 (rulesRegex!244 thiss!19762 rules!2550)))))

(declare-fun bs!331898 () Bool)

(assert (= bs!331898 d!376157))

(assert (=> bs!331898 m!1491955))

(declare-fun m!1492817 () Bool)

(assert (=> bs!331898 m!1492817))

(assert (=> b!1334663 d!376157))

(declare-fun d!376159 () Bool)

(declare-fun lt!442120 () Bool)

(assert (=> d!376159 (= lt!442120 (isEmpty!8122 (list!5169 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34)))))))))

(assert (=> d!376159 (= lt!442120 (isEmpty!8126 (c!218523 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34)))))))))

(assert (=> d!376159 (= (isEmpty!8123 (_2!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t1!34))))) lt!442120)))

(declare-fun bs!331899 () Bool)

(assert (= bs!331899 d!376159))

(declare-fun m!1492819 () Bool)

(assert (=> bs!331899 m!1492819))

(assert (=> bs!331899 m!1492819))

(declare-fun m!1492821 () Bool)

(assert (=> bs!331899 m!1492821))

(declare-fun m!1492823 () Bool)

(assert (=> bs!331899 m!1492823))

(assert (=> b!1334813 d!376159))

(assert (=> b!1334813 d!376125))

(assert (=> b!1334813 d!376133))

(assert (=> b!1334813 d!376139))

(declare-fun d!376161 () Bool)

(declare-fun c!218682 () Bool)

(assert (=> d!376161 (= c!218682 ((_ is Node!4489) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))))))

(declare-fun e!855374 () Bool)

(assert (=> d!376161 (= (inv!17956 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))) e!855374)))

(declare-fun b!1335242 () Bool)

(declare-fun inv!17960 (Conc!4489) Bool)

(assert (=> b!1335242 (= e!855374 (inv!17960 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))))))

(declare-fun b!1335243 () Bool)

(declare-fun e!855375 () Bool)

(assert (=> b!1335243 (= e!855374 e!855375)))

(declare-fun res!602115 () Bool)

(assert (=> b!1335243 (= res!602115 (not ((_ is Leaf!6866) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))))))))

(assert (=> b!1335243 (=> res!602115 e!855375)))

(declare-fun b!1335244 () Bool)

(declare-fun inv!17961 (Conc!4489) Bool)

(assert (=> b!1335244 (= e!855375 (inv!17961 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))))))

(assert (= (and d!376161 c!218682) b!1335242))

(assert (= (and d!376161 (not c!218682)) b!1335243))

(assert (= (and b!1335243 (not res!602115)) b!1335244))

(declare-fun m!1492825 () Bool)

(assert (=> b!1335242 m!1492825))

(declare-fun m!1492827 () Bool)

(assert (=> b!1335244 m!1492827))

(assert (=> b!1334684 d!376161))

(declare-fun d!376163 () Bool)

(assert (=> d!376163 true))

(declare-fun order!8185 () Int)

(declare-fun lambda!55954 () Int)

(declare-fun order!8183 () Int)

(declare-fun dynLambda!6000 (Int Int) Int)

(declare-fun dynLambda!6001 (Int Int) Int)

(assert (=> d!376163 (< (dynLambda!6000 order!8183 (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) (dynLambda!6001 order!8185 lambda!55954))))

(assert (=> d!376163 true))

(assert (=> d!376163 (< (dynLambda!5997 order!8179 (toValue!3592 (transformation!2361 (rule!4106 t1!34)))) (dynLambda!6001 order!8185 lambda!55954))))

(declare-fun Forall!521 (Int) Bool)

(assert (=> d!376163 (= (semiInverseModEq!890 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (toValue!3592 (transformation!2361 (rule!4106 t1!34)))) (Forall!521 lambda!55954))))

(declare-fun bs!331901 () Bool)

(assert (= bs!331901 d!376163))

(declare-fun m!1492849 () Bool)

(assert (=> bs!331901 m!1492849))

(assert (=> d!375925 d!376163))

(declare-fun d!376167 () Bool)

(declare-fun lt!442124 () Token!4384)

(assert (=> d!376167 (= lt!442124 (apply!3181 (list!5173 (_1!7517 lt!441975)) 0))))

(assert (=> d!376167 (= lt!442124 (apply!3182 (c!218554 (_1!7517 lt!441975)) 0))))

(declare-fun e!855382 () Bool)

(assert (=> d!376167 e!855382))

(declare-fun res!602118 () Bool)

(assert (=> d!376167 (=> (not res!602118) (not e!855382))))

(assert (=> d!376167 (= res!602118 (<= 0 0))))

(assert (=> d!376167 (= (apply!3177 (_1!7517 lt!441975) 0) lt!442124)))

(declare-fun b!1335259 () Bool)

(assert (=> b!1335259 (= e!855382 (< 0 (size!11087 (_1!7517 lt!441975))))))

(assert (= (and d!376167 res!602118) b!1335259))

(assert (=> d!376167 m!1492783))

(assert (=> d!376167 m!1492783))

(declare-fun m!1492851 () Bool)

(assert (=> d!376167 m!1492851))

(declare-fun m!1492853 () Bool)

(assert (=> d!376167 m!1492853))

(assert (=> b!1335259 m!1492199))

(assert (=> b!1334811 d!376167))

(declare-fun d!376169 () Bool)

(declare-fun c!218687 () Bool)

(assert (=> d!376169 (= c!218687 ((_ is Node!4489) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))))))

(declare-fun e!855383 () Bool)

(assert (=> d!376169 (= (inv!17956 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))) e!855383)))

(declare-fun b!1335260 () Bool)

(assert (=> b!1335260 (= e!855383 (inv!17960 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))))))

(declare-fun b!1335261 () Bool)

(declare-fun e!855384 () Bool)

(assert (=> b!1335261 (= e!855383 e!855384)))

(declare-fun res!602119 () Bool)

(assert (=> b!1335261 (= res!602119 (not ((_ is Leaf!6866) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))))))))

(assert (=> b!1335261 (=> res!602119 e!855384)))

(declare-fun b!1335262 () Bool)

(assert (=> b!1335262 (= e!855384 (inv!17961 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))))))

(assert (= (and d!376169 c!218687) b!1335260))

(assert (= (and d!376169 (not c!218687)) b!1335261))

(assert (= (and b!1335261 (not res!602119)) b!1335262))

(declare-fun m!1492855 () Bool)

(assert (=> b!1335260 m!1492855))

(declare-fun m!1492857 () Bool)

(assert (=> b!1335262 m!1492857))

(assert (=> b!1334822 d!376169))

(declare-fun d!376171 () Bool)

(assert (=> d!376171 (= (inv!17949 (tag!2623 (h!19021 (t!119165 rules!2550)))) (= (mod (str.len (value!76920 (tag!2623 (h!19021 (t!119165 rules!2550))))) 2) 0))))

(assert (=> b!1334878 d!376171))

(declare-fun d!376173 () Bool)

(declare-fun res!602120 () Bool)

(declare-fun e!855385 () Bool)

(assert (=> d!376173 (=> (not res!602120) (not e!855385))))

(assert (=> d!376173 (= res!602120 (semiInverseModEq!890 (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toValue!3592 (transformation!2361 (h!19021 (t!119165 rules!2550))))))))

(assert (=> d!376173 (= (inv!17952 (transformation!2361 (h!19021 (t!119165 rules!2550)))) e!855385)))

(declare-fun b!1335263 () Bool)

(assert (=> b!1335263 (= e!855385 (equivClasses!849 (toChars!3451 (transformation!2361 (h!19021 (t!119165 rules!2550)))) (toValue!3592 (transformation!2361 (h!19021 (t!119165 rules!2550))))))))

(assert (= (and d!376173 res!602120) b!1335263))

(declare-fun m!1492859 () Bool)

(assert (=> d!376173 m!1492859))

(declare-fun m!1492861 () Bool)

(assert (=> b!1335263 m!1492861))

(assert (=> b!1334878 d!376173))

(declare-fun d!376175 () Bool)

(assert (=> d!376175 (= (isEmpty!8122 (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))) ((_ is Nil!13619) (++!3476 (list!5169 (charsOf!1333 t1!34)) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619))))))

(assert (=> d!375849 d!376175))

(declare-fun d!376177 () Bool)

(declare-fun lt!442130 () Int)

(assert (=> d!376177 (>= lt!442130 0)))

(declare-fun e!855391 () Int)

(assert (=> d!376177 (= lt!442130 e!855391)))

(declare-fun c!218693 () Bool)

(assert (=> d!376177 (= c!218693 ((_ is Nil!13619) (list!5169 lt!441934)))))

(assert (=> d!376177 (= (size!11086 (list!5169 lt!441934)) lt!442130)))

(declare-fun b!1335274 () Bool)

(assert (=> b!1335274 (= e!855391 0)))

(declare-fun b!1335275 () Bool)

(assert (=> b!1335275 (= e!855391 (+ 1 (size!11086 (t!119164 (list!5169 lt!441934)))))))

(assert (= (and d!376177 c!218693) b!1335274))

(assert (= (and d!376177 (not c!218693)) b!1335275))

(declare-fun m!1492873 () Bool)

(assert (=> b!1335275 m!1492873))

(assert (=> d!375915 d!376177))

(declare-fun d!376179 () Bool)

(assert (=> d!376179 (= (list!5169 lt!441934) (list!5172 (c!218523 lt!441934)))))

(declare-fun bs!331902 () Bool)

(assert (= bs!331902 d!376179))

(declare-fun m!1492875 () Bool)

(assert (=> bs!331902 m!1492875))

(assert (=> d!375915 d!376179))

(declare-fun d!376181 () Bool)

(declare-fun lt!442133 () Int)

(assert (=> d!376181 (= lt!442133 (size!11086 (list!5172 (c!218523 lt!441934))))))

(assert (=> d!376181 (= lt!442133 (ite ((_ is Empty!4489) (c!218523 lt!441934)) 0 (ite ((_ is Leaf!6866) (c!218523 lt!441934)) (csize!9209 (c!218523 lt!441934)) (csize!9208 (c!218523 lt!441934)))))))

(assert (=> d!376181 (= (size!11088 (c!218523 lt!441934)) lt!442133)))

(declare-fun bs!331903 () Bool)

(assert (= bs!331903 d!376181))

(assert (=> bs!331903 m!1492875))

(assert (=> bs!331903 m!1492875))

(declare-fun m!1492877 () Bool)

(assert (=> bs!331903 m!1492877))

(assert (=> d!375915 d!376181))

(declare-fun d!376183 () Bool)

(assert (=> d!376183 (= (list!5173 (_1!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34))))) (list!5177 (c!218554 (_1!7517 (lex!889 thiss!19762 rules!2550 (print!828 thiss!19762 (singletonSeq!961 t2!34)))))))))

(declare-fun bs!331904 () Bool)

(assert (= bs!331904 d!376183))

(declare-fun m!1492879 () Bool)

(assert (=> bs!331904 m!1492879))

(assert (=> d!375933 d!376183))

(assert (=> d!375933 d!376101))

(declare-fun d!376185 () Bool)

(declare-fun lt!442134 () Int)

(assert (=> d!376185 (= lt!442134 (size!11093 (list!5173 (_1!7517 lt!441981))))))

(assert (=> d!376185 (= lt!442134 (size!11094 (c!218554 (_1!7517 lt!441981))))))

(assert (=> d!376185 (= (size!11087 (_1!7517 lt!441981)) lt!442134)))

(declare-fun bs!331905 () Bool)

(assert (= bs!331905 d!376185))

(assert (=> bs!331905 m!1492503))

(assert (=> bs!331905 m!1492503))

(declare-fun m!1492881 () Bool)

(assert (=> bs!331905 m!1492881))

(declare-fun m!1492883 () Bool)

(assert (=> bs!331905 m!1492883))

(assert (=> d!375933 d!376185))

(assert (=> d!375933 d!376119))

(assert (=> d!375933 d!375931))

(assert (=> d!375933 d!376041))

(declare-fun d!376187 () Bool)

(assert (=> d!376187 (= (list!5173 (singletonSeq!961 t2!34)) (list!5177 (c!218554 (singletonSeq!961 t2!34))))))

(declare-fun bs!331906 () Bool)

(assert (= bs!331906 d!376187))

(declare-fun m!1492885 () Bool)

(assert (=> bs!331906 m!1492885))

(assert (=> d!375933 d!376187))

(declare-fun bs!331907 () Bool)

(declare-fun d!376189 () Bool)

(assert (= bs!331907 (and d!376189 d!376163)))

(declare-fun lambda!55955 () Int)

(assert (=> bs!331907 (= (and (= (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) (= (toValue!3592 (transformation!2361 (h!19021 rules!2550))) (toValue!3592 (transformation!2361 (rule!4106 t1!34))))) (= lambda!55955 lambda!55954))))

(assert (=> d!376189 true))

(assert (=> d!376189 (< (dynLambda!6000 order!8183 (toChars!3451 (transformation!2361 (h!19021 rules!2550)))) (dynLambda!6001 order!8185 lambda!55955))))

(assert (=> d!376189 true))

(assert (=> d!376189 (< (dynLambda!5997 order!8179 (toValue!3592 (transformation!2361 (h!19021 rules!2550)))) (dynLambda!6001 order!8185 lambda!55955))))

(assert (=> d!376189 (= (semiInverseModEq!890 (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toValue!3592 (transformation!2361 (h!19021 rules!2550)))) (Forall!521 lambda!55955))))

(declare-fun bs!331908 () Bool)

(assert (= bs!331908 d!376189))

(declare-fun m!1492891 () Bool)

(assert (=> bs!331908 m!1492891))

(assert (=> d!375913 d!376189))

(declare-fun d!376191 () Bool)

(assert (=> d!376191 (= (inv!17957 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))) (isBalanced!1301 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))))))

(declare-fun bs!331909 () Bool)

(assert (= bs!331909 d!376191))

(declare-fun m!1492893 () Bool)

(assert (=> bs!331909 m!1492893))

(assert (=> tb!70401 d!376191))

(declare-fun d!376193 () Bool)

(declare-fun lt!442135 () Int)

(assert (=> d!376193 (>= lt!442135 0)))

(declare-fun e!855413 () Int)

(assert (=> d!376193 (= lt!442135 e!855413)))

(declare-fun c!218694 () Bool)

(assert (=> d!376193 (= c!218694 ((_ is Nil!13619) (originalCharacters!3223 t1!34)))))

(assert (=> d!376193 (= (size!11086 (originalCharacters!3223 t1!34)) lt!442135)))

(declare-fun b!1335333 () Bool)

(assert (=> b!1335333 (= e!855413 0)))

(declare-fun b!1335334 () Bool)

(assert (=> b!1335334 (= e!855413 (+ 1 (size!11086 (t!119164 (originalCharacters!3223 t1!34)))))))

(assert (= (and d!376193 c!218694) b!1335333))

(assert (= (and d!376193 (not c!218694)) b!1335334))

(declare-fun m!1492895 () Bool)

(assert (=> b!1335334 m!1492895))

(assert (=> b!1334842 d!376193))

(declare-fun d!376195 () Bool)

(assert (=> d!376195 (= (isEmpty!8122 (originalCharacters!3223 t1!34)) ((_ is Nil!13619) (originalCharacters!3223 t1!34)))))

(assert (=> d!375935 d!376195))

(declare-fun d!376197 () Bool)

(declare-fun lt!442136 () Bool)

(assert (=> d!376197 (= lt!442136 (isEmpty!8122 (list!5169 (_2!7517 lt!441981))))))

(assert (=> d!376197 (= lt!442136 (isEmpty!8126 (c!218523 (_2!7517 lt!441981))))))

(assert (=> d!376197 (= (isEmpty!8123 (_2!7517 lt!441981)) lt!442136)))

(declare-fun bs!331910 () Bool)

(assert (= bs!331910 d!376197))

(declare-fun m!1492897 () Bool)

(assert (=> bs!331910 m!1492897))

(assert (=> bs!331910 m!1492897))

(declare-fun m!1492899 () Bool)

(assert (=> bs!331910 m!1492899))

(declare-fun m!1492901 () Bool)

(assert (=> bs!331910 m!1492901))

(assert (=> b!1334835 d!376197))

(declare-fun d!376199 () Bool)

(declare-fun res!602125 () Bool)

(declare-fun e!855427 () Bool)

(assert (=> d!376199 (=> res!602125 e!855427)))

(assert (=> d!376199 (= res!602125 ((_ is Nil!13620) rules!2550))))

(assert (=> d!376199 (= (noDuplicateTag!859 thiss!19762 rules!2550 Nil!13626) e!855427)))

(declare-fun b!1335365 () Bool)

(declare-fun e!855428 () Bool)

(assert (=> b!1335365 (= e!855427 e!855428)))

(declare-fun res!602126 () Bool)

(assert (=> b!1335365 (=> (not res!602126) (not e!855428))))

(declare-fun contains!2486 (List!13692 String!16491) Bool)

(assert (=> b!1335365 (= res!602126 (not (contains!2486 Nil!13626 (tag!2623 (h!19021 rules!2550)))))))

(declare-fun b!1335366 () Bool)

(assert (=> b!1335366 (= e!855428 (noDuplicateTag!859 thiss!19762 (t!119165 rules!2550) (Cons!13626 (tag!2623 (h!19021 rules!2550)) Nil!13626)))))

(assert (= (and d!376199 (not res!602125)) b!1335365))

(assert (= (and b!1335365 res!602126) b!1335366))

(declare-fun m!1492915 () Bool)

(assert (=> b!1335365 m!1492915))

(declare-fun m!1492917 () Bool)

(assert (=> b!1335366 m!1492917))

(assert (=> b!1334831 d!376199))

(declare-fun b!1335376 () Bool)

(declare-fun res!602136 () Bool)

(declare-fun e!855431 () Bool)

(assert (=> b!1335376 (=> (not res!602136) (not e!855431))))

(declare-fun height!633 (Conc!4489) Int)

(declare-fun ++!3480 (Conc!4489 Conc!4489) Conc!4489)

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1335376 (= res!602136 (<= (height!633 (++!3480 (c!218523 (charsOf!1333 t1!34)) (c!218523 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))) (+ (max!0 (height!633 (c!218523 (charsOf!1333 t1!34))) (height!633 (c!218523 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))) 1)))))

(declare-fun b!1335377 () Bool)

(declare-fun res!602135 () Bool)

(assert (=> b!1335377 (=> (not res!602135) (not e!855431))))

(assert (=> b!1335377 (= res!602135 (>= (height!633 (++!3480 (c!218523 (charsOf!1333 t1!34)) (c!218523 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))) (max!0 (height!633 (c!218523 (charsOf!1333 t1!34))) (height!633 (c!218523 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0)))))))))

(declare-fun b!1335375 () Bool)

(declare-fun res!602138 () Bool)

(assert (=> b!1335375 (=> (not res!602138) (not e!855431))))

(assert (=> b!1335375 (= res!602138 (isBalanced!1301 (++!3480 (c!218523 (charsOf!1333 t1!34)) (c!218523 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))))))

(declare-fun b!1335378 () Bool)

(declare-fun lt!442139 () BalanceConc!8918)

(assert (=> b!1335378 (= e!855431 (= (list!5169 lt!442139) (++!3476 (list!5169 (charsOf!1333 t1!34)) (list!5169 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))))))

(declare-fun d!376203 () Bool)

(assert (=> d!376203 e!855431))

(declare-fun res!602137 () Bool)

(assert (=> d!376203 (=> (not res!602137) (not e!855431))))

(declare-fun appendAssocInst!263 (Conc!4489 Conc!4489) Bool)

(assert (=> d!376203 (= res!602137 (appendAssocInst!263 (c!218523 (charsOf!1333 t1!34)) (c!218523 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0)))))))

(assert (=> d!376203 (= lt!442139 (BalanceConc!8919 (++!3480 (c!218523 (charsOf!1333 t1!34)) (c!218523 (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))))))

(assert (=> d!376203 (= (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))) lt!442139)))

(assert (= (and d!376203 res!602137) b!1335375))

(assert (= (and b!1335375 res!602138) b!1335376))

(assert (= (and b!1335376 res!602136) b!1335377))

(assert (= (and b!1335377 res!602135) b!1335378))

(declare-fun m!1492919 () Bool)

(assert (=> b!1335376 m!1492919))

(declare-fun m!1492921 () Bool)

(assert (=> b!1335376 m!1492921))

(assert (=> b!1335376 m!1492919))

(declare-fun m!1492923 () Bool)

(assert (=> b!1335376 m!1492923))

(declare-fun m!1492925 () Bool)

(assert (=> b!1335376 m!1492925))

(assert (=> b!1335376 m!1492921))

(declare-fun m!1492927 () Bool)

(assert (=> b!1335376 m!1492927))

(assert (=> b!1335376 m!1492923))

(declare-fun m!1492929 () Bool)

(assert (=> b!1335378 m!1492929))

(assert (=> b!1335378 m!1491953))

(assert (=> b!1335378 m!1491961))

(assert (=> b!1335378 m!1492279))

(declare-fun m!1492931 () Bool)

(assert (=> b!1335378 m!1492931))

(assert (=> b!1335378 m!1491961))

(assert (=> b!1335378 m!1492931))

(declare-fun m!1492933 () Bool)

(assert (=> b!1335378 m!1492933))

(assert (=> b!1335377 m!1492919))

(assert (=> b!1335377 m!1492921))

(assert (=> b!1335377 m!1492919))

(assert (=> b!1335377 m!1492923))

(assert (=> b!1335377 m!1492925))

(assert (=> b!1335377 m!1492921))

(assert (=> b!1335377 m!1492927))

(assert (=> b!1335377 m!1492923))

(assert (=> b!1335375 m!1492921))

(assert (=> b!1335375 m!1492921))

(declare-fun m!1492935 () Bool)

(assert (=> b!1335375 m!1492935))

(declare-fun m!1492937 () Bool)

(assert (=> d!376203 m!1492937))

(assert (=> d!376203 m!1492921))

(assert (=> d!375939 d!376203))

(declare-fun lt!442164 () Bool)

(declare-fun d!376205 () Bool)

(assert (=> d!376205 (= lt!442164 (prefixMatch!184 (rulesRegex!244 thiss!19762 rules!2550) (list!5169 (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))))))))

(declare-datatypes ((Context!1170 0))(
  ( (Context!1171 (exprs!1085 List!13690)) )
))
(declare-fun prefixMatchZipperSequence!204 ((InoxSet Context!1170) BalanceConc!8918 Int) Bool)

(declare-fun focus!76 (Regex!3675) (InoxSet Context!1170))

(assert (=> d!376205 (= lt!442164 (prefixMatchZipperSequence!204 (focus!76 (rulesRegex!244 thiss!19762 rules!2550)) (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))) 0))))

(declare-fun lt!442169 () Unit!19759)

(declare-fun lt!442168 () Unit!19759)

(assert (=> d!376205 (= lt!442169 lt!442168)))

(declare-fun lt!442166 () (InoxSet Context!1170))

(declare-fun lt!442163 () List!13685)

(declare-fun prefixMatchZipper!56 ((InoxSet Context!1170) List!13685) Bool)

(assert (=> d!376205 (= (prefixMatch!184 (rulesRegex!244 thiss!19762 rules!2550) lt!442163) (prefixMatchZipper!56 lt!442166 lt!442163))))

(declare-datatypes ((List!13694 0))(
  ( (Nil!13628) (Cons!13628 (h!19029 Context!1170) (t!119225 List!13694)) )
))
(declare-fun lt!442167 () List!13694)

(declare-fun prefixMatchZipperRegexEquiv!56 ((InoxSet Context!1170) List!13694 Regex!3675 List!13685) Unit!19759)

(assert (=> d!376205 (= lt!442168 (prefixMatchZipperRegexEquiv!56 lt!442166 lt!442167 (rulesRegex!244 thiss!19762 rules!2550) lt!442163))))

(assert (=> d!376205 (= lt!442163 (list!5169 (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0)))))))

(declare-fun toList!740 ((InoxSet Context!1170)) List!13694)

(assert (=> d!376205 (= lt!442167 (toList!740 (focus!76 (rulesRegex!244 thiss!19762 rules!2550))))))

(assert (=> d!376205 (= lt!442166 (focus!76 (rulesRegex!244 thiss!19762 rules!2550)))))

(declare-fun lt!442162 () Unit!19759)

(declare-fun lt!442160 () Unit!19759)

(assert (=> d!376205 (= lt!442162 lt!442160)))

(declare-fun lt!442165 () (InoxSet Context!1170))

(declare-fun lt!442161 () Int)

(declare-fun dropList!376 (BalanceConc!8918 Int) List!13685)

(assert (=> d!376205 (= (prefixMatchZipper!56 lt!442165 (dropList!376 (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))) lt!442161)) (prefixMatchZipperSequence!204 lt!442165 (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))) lt!442161))))

(declare-fun lemmaprefixMatchZipperSequenceEquivalent!56 ((InoxSet Context!1170) BalanceConc!8918 Int) Unit!19759)

(assert (=> d!376205 (= lt!442160 (lemmaprefixMatchZipperSequenceEquivalent!56 lt!442165 (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0))) lt!442161))))

(assert (=> d!376205 (= lt!442161 0)))

(assert (=> d!376205 (= lt!442165 (focus!76 (rulesRegex!244 thiss!19762 rules!2550)))))

(assert (=> d!376205 (validRegex!1580 (rulesRegex!244 thiss!19762 rules!2550))))

(assert (=> d!376205 (= (prefixMatchZipperSequence!202 (rulesRegex!244 thiss!19762 rules!2550) (++!3478 (charsOf!1333 t1!34) (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0)))) lt!442164)))

(declare-fun bs!331912 () Bool)

(assert (= bs!331912 d!376205))

(assert (=> bs!331912 m!1492281))

(declare-fun m!1492939 () Bool)

(assert (=> bs!331912 m!1492939))

(assert (=> bs!331912 m!1492281))

(declare-fun m!1492941 () Bool)

(assert (=> bs!331912 m!1492941))

(assert (=> bs!331912 m!1492281))

(declare-fun m!1492943 () Bool)

(assert (=> bs!331912 m!1492943))

(assert (=> bs!331912 m!1491955))

(declare-fun m!1492945 () Bool)

(assert (=> bs!331912 m!1492945))

(assert (=> bs!331912 m!1492943))

(declare-fun m!1492947 () Bool)

(assert (=> bs!331912 m!1492947))

(assert (=> bs!331912 m!1491955))

(assert (=> bs!331912 m!1492417))

(assert (=> bs!331912 m!1491955))

(assert (=> bs!331912 m!1492939))

(declare-fun m!1492949 () Bool)

(assert (=> bs!331912 m!1492949))

(declare-fun m!1492951 () Bool)

(assert (=> bs!331912 m!1492951))

(assert (=> bs!331912 m!1492281))

(declare-fun m!1492953 () Bool)

(assert (=> bs!331912 m!1492953))

(assert (=> bs!331912 m!1491955))

(declare-fun m!1492955 () Bool)

(assert (=> bs!331912 m!1492955))

(assert (=> bs!331912 m!1491955))

(declare-fun m!1492957 () Bool)

(assert (=> bs!331912 m!1492957))

(assert (=> bs!331912 m!1492955))

(declare-fun m!1492959 () Bool)

(assert (=> bs!331912 m!1492959))

(assert (=> bs!331912 m!1492955))

(assert (=> bs!331912 m!1492281))

(declare-fun m!1492961 () Bool)

(assert (=> bs!331912 m!1492961))

(assert (=> d!375939 d!376205))

(declare-fun d!376207 () Bool)

(declare-fun e!855434 () Bool)

(assert (=> d!376207 e!855434))

(declare-fun res!602141 () Bool)

(assert (=> d!376207 (=> (not res!602141) (not e!855434))))

(declare-fun lt!442172 () BalanceConc!8918)

(assert (=> d!376207 (= res!602141 (= (list!5169 lt!442172) (Cons!13619 (apply!3171 (charsOf!1333 t2!34) 0) Nil!13619)))))

(declare-fun singleton!408 (C!7640) BalanceConc!8918)

(assert (=> d!376207 (= lt!442172 (singleton!408 (apply!3171 (charsOf!1333 t2!34) 0)))))

(assert (=> d!376207 (= (singletonSeq!962 (apply!3171 (charsOf!1333 t2!34) 0)) lt!442172)))

(declare-fun b!1335381 () Bool)

(assert (=> b!1335381 (= e!855434 (isBalanced!1301 (c!218523 lt!442172)))))

(assert (= (and d!376207 res!602141) b!1335381))

(declare-fun m!1492963 () Bool)

(assert (=> d!376207 m!1492963))

(assert (=> d!376207 m!1492285))

(declare-fun m!1492965 () Bool)

(assert (=> d!376207 m!1492965))

(declare-fun m!1492967 () Bool)

(assert (=> b!1335381 m!1492967))

(assert (=> d!375939 d!376207))

(assert (=> d!375939 d!375859))

(declare-fun d!376209 () Bool)

(declare-fun lt!442173 () C!7640)

(assert (=> d!376209 (= lt!442173 (apply!3175 (list!5169 (charsOf!1333 t2!34)) 0))))

(assert (=> d!376209 (= lt!442173 (apply!3176 (c!218523 (charsOf!1333 t2!34)) 0))))

(declare-fun e!855435 () Bool)

(assert (=> d!376209 e!855435))

(declare-fun res!602142 () Bool)

(assert (=> d!376209 (=> (not res!602142) (not e!855435))))

(assert (=> d!376209 (= res!602142 (<= 0 0))))

(assert (=> d!376209 (= (apply!3171 (charsOf!1333 t2!34) 0) lt!442173)))

(declare-fun b!1335382 () Bool)

(assert (=> b!1335382 (= e!855435 (< 0 (size!11082 (charsOf!1333 t2!34))))))

(assert (= (and d!376209 res!602142) b!1335382))

(assert (=> d!376209 m!1491947))

(declare-fun m!1492969 () Bool)

(assert (=> d!376209 m!1492969))

(assert (=> d!376209 m!1492969))

(declare-fun m!1492971 () Bool)

(assert (=> d!376209 m!1492971))

(declare-fun m!1492973 () Bool)

(assert (=> d!376209 m!1492973))

(assert (=> b!1335382 m!1491947))

(declare-fun m!1492975 () Bool)

(assert (=> b!1335382 m!1492975))

(assert (=> d!375939 d!376209))

(assert (=> d!375939 d!375857))

(assert (=> d!375939 d!375917))

(declare-fun bm!90161 () Bool)

(declare-fun call!90166 () Bool)

(assert (=> bm!90161 (= call!90166 (ruleDisjointCharsFromAllFromOtherType!332 (h!19021 rules!2550) (t!119165 rules!2550)))))

(declare-fun b!1335391 () Bool)

(declare-fun e!855444 () Bool)

(declare-fun e!855443 () Bool)

(assert (=> b!1335391 (= e!855444 e!855443)))

(declare-fun res!602147 () Bool)

(declare-fun rulesUseDisjointChars!164 (Rule!4522 Rule!4522) Bool)

(assert (=> b!1335391 (= res!602147 (rulesUseDisjointChars!164 (h!19021 rules!2550) (h!19021 rules!2550)))))

(assert (=> b!1335391 (=> (not res!602147) (not e!855443))))

(declare-fun d!376211 () Bool)

(declare-fun c!218700 () Bool)

(assert (=> d!376211 (= c!218700 (and ((_ is Cons!13620) rules!2550) (not (= (isSeparator!2361 (h!19021 rules!2550)) (isSeparator!2361 (h!19021 rules!2550))))))))

(assert (=> d!376211 (= (ruleDisjointCharsFromAllFromOtherType!332 (h!19021 rules!2550) rules!2550) e!855444)))

(declare-fun b!1335392 () Bool)

(declare-fun e!855442 () Bool)

(assert (=> b!1335392 (= e!855442 call!90166)))

(declare-fun b!1335393 () Bool)

(assert (=> b!1335393 (= e!855443 call!90166)))

(declare-fun b!1335394 () Bool)

(assert (=> b!1335394 (= e!855444 e!855442)))

(declare-fun res!602148 () Bool)

(assert (=> b!1335394 (= res!602148 (not ((_ is Cons!13620) rules!2550)))))

(assert (=> b!1335394 (=> res!602148 e!855442)))

(assert (= (and d!376211 c!218700) b!1335391))

(assert (= (and d!376211 (not c!218700)) b!1335394))

(assert (= (and b!1335391 res!602147) b!1335393))

(assert (= (and b!1335394 (not res!602148)) b!1335392))

(assert (= (or b!1335393 b!1335392) bm!90161))

(declare-fun m!1492977 () Bool)

(assert (=> bm!90161 m!1492977))

(declare-fun m!1492979 () Bool)

(assert (=> b!1335391 m!1492979))

(assert (=> b!1334827 d!376211))

(declare-fun d!376213 () Bool)

(assert (=> d!376213 (= (list!5169 lt!441943) (list!5172 (c!218523 lt!441943)))))

(declare-fun bs!331913 () Bool)

(assert (= bs!331913 d!376213))

(declare-fun m!1492981 () Bool)

(assert (=> bs!331913 m!1492981))

(assert (=> d!375857 d!376213))

(declare-fun d!376215 () Bool)

(assert (=> d!376215 (= (inv!15 (value!76921 t1!34)) (= (charsToBigInt!0 (text!17606 (value!76921 t1!34)) 0) (value!76916 (value!76921 t1!34))))))

(declare-fun bs!331914 () Bool)

(assert (= bs!331914 d!376215))

(declare-fun m!1492983 () Bool)

(assert (=> bs!331914 m!1492983))

(assert (=> b!1334815 d!376215))

(declare-fun d!376217 () Bool)

(declare-fun lt!442174 () Int)

(assert (=> d!376217 (>= lt!442174 0)))

(declare-fun e!855445 () Int)

(assert (=> d!376217 (= lt!442174 e!855445)))

(declare-fun c!218701 () Bool)

(assert (=> d!376217 (= c!218701 ((_ is Nil!13619) lt!441940))))

(assert (=> d!376217 (= (size!11086 lt!441940) lt!442174)))

(declare-fun b!1335395 () Bool)

(assert (=> b!1335395 (= e!855445 0)))

(declare-fun b!1335396 () Bool)

(assert (=> b!1335396 (= e!855445 (+ 1 (size!11086 (t!119164 lt!441940))))))

(assert (= (and d!376217 c!218701) b!1335395))

(assert (= (and d!376217 (not c!218701)) b!1335396))

(declare-fun m!1492985 () Bool)

(assert (=> b!1335396 m!1492985))

(assert (=> b!1334678 d!376217))

(declare-fun d!376219 () Bool)

(declare-fun lt!442175 () Int)

(assert (=> d!376219 (>= lt!442175 0)))

(declare-fun e!855446 () Int)

(assert (=> d!376219 (= lt!442175 e!855446)))

(declare-fun c!218702 () Bool)

(assert (=> d!376219 (= c!218702 ((_ is Nil!13619) (list!5169 (charsOf!1333 t1!34))))))

(assert (=> d!376219 (= (size!11086 (list!5169 (charsOf!1333 t1!34))) lt!442175)))

(declare-fun b!1335397 () Bool)

(assert (=> b!1335397 (= e!855446 0)))

(declare-fun b!1335398 () Bool)

(assert (=> b!1335398 (= e!855446 (+ 1 (size!11086 (t!119164 (list!5169 (charsOf!1333 t1!34))))))))

(assert (= (and d!376219 c!218702) b!1335397))

(assert (= (and d!376219 (not c!218702)) b!1335398))

(assert (=> b!1335398 m!1492745))

(assert (=> b!1334678 d!376219))

(declare-fun d!376221 () Bool)

(declare-fun lt!442176 () Int)

(assert (=> d!376221 (>= lt!442176 0)))

(declare-fun e!855447 () Int)

(assert (=> d!376221 (= lt!442176 e!855447)))

(declare-fun c!218703 () Bool)

(assert (=> d!376221 (= c!218703 ((_ is Nil!13619) (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))

(assert (=> d!376221 (= (size!11086 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)) lt!442176)))

(declare-fun b!1335399 () Bool)

(assert (=> b!1335399 (= e!855447 0)))

(declare-fun b!1335400 () Bool)

(assert (=> b!1335400 (= e!855447 (+ 1 (size!11086 (t!119164 (Cons!13619 (apply!3171 lt!441934 0) Nil!13619)))))))

(assert (= (and d!376221 c!218703) b!1335399))

(assert (= (and d!376221 (not c!218703)) b!1335400))

(declare-fun m!1492987 () Bool)

(assert (=> b!1335400 m!1492987))

(assert (=> b!1334678 d!376221))

(declare-fun bs!331915 () Bool)

(declare-fun d!376223 () Bool)

(assert (= bs!331915 (and d!376223 d!376163)))

(declare-fun lambda!55956 () Int)

(assert (=> bs!331915 (= (and (= (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) (= (toValue!3592 (transformation!2361 (rule!4106 t2!34))) (toValue!3592 (transformation!2361 (rule!4106 t1!34))))) (= lambda!55956 lambda!55954))))

(declare-fun bs!331916 () Bool)

(assert (= bs!331916 (and d!376223 d!376189)))

(assert (=> bs!331916 (= (and (= (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toChars!3451 (transformation!2361 (h!19021 rules!2550)))) (= (toValue!3592 (transformation!2361 (rule!4106 t2!34))) (toValue!3592 (transformation!2361 (h!19021 rules!2550))))) (= lambda!55956 lambda!55955))))

(assert (=> d!376223 true))

(assert (=> d!376223 (< (dynLambda!6000 order!8183 (toChars!3451 (transformation!2361 (rule!4106 t2!34)))) (dynLambda!6001 order!8185 lambda!55956))))

(assert (=> d!376223 true))

(assert (=> d!376223 (< (dynLambda!5997 order!8179 (toValue!3592 (transformation!2361 (rule!4106 t2!34)))) (dynLambda!6001 order!8185 lambda!55956))))

(assert (=> d!376223 (= (semiInverseModEq!890 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (toValue!3592 (transformation!2361 (rule!4106 t2!34)))) (Forall!521 lambda!55956))))

(declare-fun bs!331917 () Bool)

(assert (= bs!331917 d!376223))

(declare-fun m!1492989 () Bool)

(assert (=> bs!331917 m!1492989))

(assert (=> d!375929 d!376223))

(declare-fun d!376225 () Bool)

(assert (=> d!376225 (= (inv!17 (value!76921 t1!34)) (= (charsToBigInt!1 (text!17605 (value!76921 t1!34))) (value!76913 (value!76921 t1!34))))))

(declare-fun bs!331918 () Bool)

(assert (= bs!331918 d!376225))

(declare-fun m!1492991 () Bool)

(assert (=> bs!331918 m!1492991))

(assert (=> b!1334817 d!376225))

(declare-fun d!376227 () Bool)

(declare-fun lt!442179 () C!7640)

(declare-fun contains!2487 (List!13685 C!7640) Bool)

(assert (=> d!376227 (contains!2487 (list!5169 lt!441934) lt!442179)))

(declare-fun e!855453 () C!7640)

(assert (=> d!376227 (= lt!442179 e!855453)))

(declare-fun c!218706 () Bool)

(assert (=> d!376227 (= c!218706 (= 0 0))))

(declare-fun e!855452 () Bool)

(assert (=> d!376227 e!855452))

(declare-fun res!602151 () Bool)

(assert (=> d!376227 (=> (not res!602151) (not e!855452))))

(assert (=> d!376227 (= res!602151 (<= 0 0))))

(assert (=> d!376227 (= (apply!3175 (list!5169 lt!441934) 0) lt!442179)))

(declare-fun b!1335407 () Bool)

(assert (=> b!1335407 (= e!855452 (< 0 (size!11086 (list!5169 lt!441934))))))

(declare-fun b!1335408 () Bool)

(assert (=> b!1335408 (= e!855453 (head!2363 (list!5169 lt!441934)))))

(declare-fun b!1335409 () Bool)

(assert (=> b!1335409 (= e!855453 (apply!3175 (tail!1912 (list!5169 lt!441934)) (- 0 1)))))

(assert (= (and d!376227 res!602151) b!1335407))

(assert (= (and d!376227 c!218706) b!1335408))

(assert (= (and d!376227 (not c!218706)) b!1335409))

(assert (=> d!376227 m!1492005))

(declare-fun m!1492993 () Bool)

(assert (=> d!376227 m!1492993))

(assert (=> b!1335407 m!1492005))

(assert (=> b!1335407 m!1492221))

(assert (=> b!1335408 m!1492005))

(declare-fun m!1492995 () Bool)

(assert (=> b!1335408 m!1492995))

(assert (=> b!1335409 m!1492005))

(declare-fun m!1492997 () Bool)

(assert (=> b!1335409 m!1492997))

(assert (=> b!1335409 m!1492997))

(declare-fun m!1492999 () Bool)

(assert (=> b!1335409 m!1492999))

(assert (=> d!375851 d!376227))

(assert (=> d!375851 d!376179))

(declare-fun b!1335424 () Bool)

(declare-fun e!855463 () Int)

(assert (=> b!1335424 (= e!855463 0)))

(declare-fun b!1335425 () Bool)

(declare-fun e!855462 () C!7640)

(declare-fun call!90169 () C!7640)

(assert (=> b!1335425 (= e!855462 call!90169)))

(declare-fun b!1335426 () Bool)

(assert (=> b!1335426 (= e!855463 (- 0 (size!11088 (left!11687 (c!218523 lt!441934)))))))

(declare-fun b!1335427 () Bool)

(declare-fun e!855464 () C!7640)

(declare-fun apply!3183 (IArray!8983 Int) C!7640)

(assert (=> b!1335427 (= e!855464 (apply!3183 (xs!7204 (c!218523 lt!441934)) 0))))

(declare-fun b!1335428 () Bool)

(assert (=> b!1335428 (= e!855462 call!90169)))

(declare-fun bm!90164 () Bool)

(declare-fun c!218715 () Bool)

(declare-fun c!218713 () Bool)

(assert (=> bm!90164 (= c!218715 c!218713)))

(assert (=> bm!90164 (= call!90169 (apply!3176 (ite c!218713 (left!11687 (c!218523 lt!441934)) (right!12017 (c!218523 lt!441934))) e!855463))))

(declare-fun b!1335429 () Bool)

(declare-fun e!855465 () Bool)

(assert (=> b!1335429 (= e!855465 (< 0 (size!11088 (c!218523 lt!441934))))))

(declare-fun b!1335430 () Bool)

(assert (=> b!1335430 (= e!855464 e!855462)))

(declare-fun lt!442185 () Bool)

(declare-fun appendIndex!145 (List!13685 List!13685 Int) Bool)

(assert (=> b!1335430 (= lt!442185 (appendIndex!145 (list!5172 (left!11687 (c!218523 lt!441934))) (list!5172 (right!12017 (c!218523 lt!441934))) 0))))

(assert (=> b!1335430 (= c!218713 (< 0 (size!11088 (left!11687 (c!218523 lt!441934)))))))

(declare-fun d!376229 () Bool)

(declare-fun lt!442184 () C!7640)

(assert (=> d!376229 (= lt!442184 (apply!3175 (list!5172 (c!218523 lt!441934)) 0))))

(assert (=> d!376229 (= lt!442184 e!855464)))

(declare-fun c!218714 () Bool)

(assert (=> d!376229 (= c!218714 ((_ is Leaf!6866) (c!218523 lt!441934)))))

(assert (=> d!376229 e!855465))

(declare-fun res!602154 () Bool)

(assert (=> d!376229 (=> (not res!602154) (not e!855465))))

(assert (=> d!376229 (= res!602154 (<= 0 0))))

(assert (=> d!376229 (= (apply!3176 (c!218523 lt!441934) 0) lt!442184)))

(assert (= (and d!376229 res!602154) b!1335429))

(assert (= (and d!376229 c!218714) b!1335427))

(assert (= (and d!376229 (not c!218714)) b!1335430))

(assert (= (and b!1335430 c!218713) b!1335428))

(assert (= (and b!1335430 (not c!218713)) b!1335425))

(assert (= (or b!1335428 b!1335425) bm!90164))

(assert (= (and bm!90164 c!218715) b!1335424))

(assert (= (and bm!90164 (not c!218715)) b!1335426))

(declare-fun m!1493001 () Bool)

(assert (=> b!1335430 m!1493001))

(declare-fun m!1493003 () Bool)

(assert (=> b!1335430 m!1493003))

(assert (=> b!1335430 m!1493001))

(assert (=> b!1335430 m!1493003))

(declare-fun m!1493005 () Bool)

(assert (=> b!1335430 m!1493005))

(declare-fun m!1493007 () Bool)

(assert (=> b!1335430 m!1493007))

(assert (=> d!376229 m!1492875))

(assert (=> d!376229 m!1492875))

(declare-fun m!1493009 () Bool)

(assert (=> d!376229 m!1493009))

(assert (=> b!1335426 m!1493007))

(declare-fun m!1493011 () Bool)

(assert (=> bm!90164 m!1493011))

(assert (=> b!1335429 m!1492223))

(declare-fun m!1493013 () Bool)

(assert (=> b!1335427 m!1493013))

(assert (=> d!375851 d!376229))

(declare-fun d!376231 () Bool)

(assert (=> d!376231 (= (inv!16 (value!76921 t2!34)) (= (charsToInt!0 (text!17604 (value!76921 t2!34))) (value!76912 (value!76921 t2!34))))))

(declare-fun bs!331919 () Bool)

(assert (= bs!331919 d!376231))

(declare-fun m!1493015 () Bool)

(assert (=> bs!331919 m!1493015))

(assert (=> b!1334708 d!376231))

(declare-fun d!376233 () Bool)

(declare-fun lt!442186 () Int)

(assert (=> d!376233 (>= lt!442186 0)))

(declare-fun e!855466 () Int)

(assert (=> d!376233 (= lt!442186 e!855466)))

(declare-fun c!218716 () Bool)

(assert (=> d!376233 (= c!218716 ((_ is Nil!13619) (originalCharacters!3223 t2!34)))))

(assert (=> d!376233 (= (size!11086 (originalCharacters!3223 t2!34)) lt!442186)))

(declare-fun b!1335431 () Bool)

(assert (=> b!1335431 (= e!855466 0)))

(declare-fun b!1335432 () Bool)

(assert (=> b!1335432 (= e!855466 (+ 1 (size!11086 (t!119164 (originalCharacters!3223 t2!34)))))))

(assert (= (and d!376233 c!218716) b!1335431))

(assert (= (and d!376233 (not c!218716)) b!1335432))

(declare-fun m!1493017 () Bool)

(assert (=> b!1335432 m!1493017))

(assert (=> b!1334844 d!376233))

(declare-fun bs!331920 () Bool)

(declare-fun d!376235 () Bool)

(assert (= bs!331920 (and d!376235 d!375961)))

(declare-fun lambda!55957 () Int)

(assert (=> bs!331920 (= (= (toValue!3592 (transformation!2361 (h!19021 rules!2550))) (toValue!3592 (transformation!2361 (rule!4106 t1!34)))) (= lambda!55957 lambda!55923))))

(declare-fun bs!331921 () Bool)

(assert (= bs!331921 (and d!376235 d!376121)))

(assert (=> bs!331921 (= (= (toValue!3592 (transformation!2361 (h!19021 rules!2550))) (toValue!3592 (transformation!2361 (rule!4106 t2!34)))) (= lambda!55957 lambda!55942))))

(assert (=> d!376235 true))

(assert (=> d!376235 (< (dynLambda!5997 order!8179 (toValue!3592 (transformation!2361 (h!19021 rules!2550)))) (dynLambda!5998 order!8181 lambda!55957))))

(assert (=> d!376235 (= (equivClasses!849 (toChars!3451 (transformation!2361 (h!19021 rules!2550))) (toValue!3592 (transformation!2361 (h!19021 rules!2550)))) (Forall2!423 lambda!55957))))

(declare-fun bs!331922 () Bool)

(assert (= bs!331922 d!376235))

(declare-fun m!1493019 () Bool)

(assert (=> bs!331922 m!1493019))

(assert (=> b!1334821 d!376235))

(declare-fun d!376237 () Bool)

(assert (=> d!376237 (= (list!5169 lt!441980) (list!5172 (c!218523 lt!441980)))))

(declare-fun bs!331923 () Bool)

(assert (= bs!331923 d!376237))

(declare-fun m!1493021 () Bool)

(assert (=> bs!331923 m!1493021))

(assert (=> d!375917 d!376237))

(declare-fun b!1335433 () Bool)

(declare-fun e!855467 () Bool)

(assert (=> b!1335433 (= e!855467 tp_is_empty!6671)))

(declare-fun b!1335436 () Bool)

(declare-fun tp!386271 () Bool)

(declare-fun tp!386269 () Bool)

(assert (=> b!1335436 (= e!855467 (and tp!386271 tp!386269))))

(declare-fun b!1335434 () Bool)

(declare-fun tp!386268 () Bool)

(declare-fun tp!386267 () Bool)

(assert (=> b!1335434 (= e!855467 (and tp!386268 tp!386267))))

(declare-fun b!1335435 () Bool)

(declare-fun tp!386270 () Bool)

(assert (=> b!1335435 (= e!855467 tp!386270)))

(assert (=> b!1334883 (= tp!386168 e!855467)))

(assert (= (and b!1334883 ((_ is ElementMatch!3675) (regOne!7863 (regex!2361 (h!19021 rules!2550))))) b!1335433))

(assert (= (and b!1334883 ((_ is Concat!6127) (regOne!7863 (regex!2361 (h!19021 rules!2550))))) b!1335434))

(assert (= (and b!1334883 ((_ is Star!3675) (regOne!7863 (regex!2361 (h!19021 rules!2550))))) b!1335435))

(assert (= (and b!1334883 ((_ is Union!3675) (regOne!7863 (regex!2361 (h!19021 rules!2550))))) b!1335436))

(declare-fun b!1335437 () Bool)

(declare-fun e!855468 () Bool)

(assert (=> b!1335437 (= e!855468 tp_is_empty!6671)))

(declare-fun b!1335440 () Bool)

(declare-fun tp!386276 () Bool)

(declare-fun tp!386274 () Bool)

(assert (=> b!1335440 (= e!855468 (and tp!386276 tp!386274))))

(declare-fun b!1335438 () Bool)

(declare-fun tp!386273 () Bool)

(declare-fun tp!386272 () Bool)

(assert (=> b!1335438 (= e!855468 (and tp!386273 tp!386272))))

(declare-fun b!1335439 () Bool)

(declare-fun tp!386275 () Bool)

(assert (=> b!1335439 (= e!855468 tp!386275)))

(assert (=> b!1334883 (= tp!386166 e!855468)))

(assert (= (and b!1334883 ((_ is ElementMatch!3675) (regTwo!7863 (regex!2361 (h!19021 rules!2550))))) b!1335437))

(assert (= (and b!1334883 ((_ is Concat!6127) (regTwo!7863 (regex!2361 (h!19021 rules!2550))))) b!1335438))

(assert (= (and b!1334883 ((_ is Star!3675) (regTwo!7863 (regex!2361 (h!19021 rules!2550))))) b!1335439))

(assert (= (and b!1334883 ((_ is Union!3675) (regTwo!7863 (regex!2361 (h!19021 rules!2550))))) b!1335440))

(declare-fun b!1335441 () Bool)

(declare-fun e!855469 () Bool)

(assert (=> b!1335441 (= e!855469 tp_is_empty!6671)))

(declare-fun b!1335444 () Bool)

(declare-fun tp!386281 () Bool)

(declare-fun tp!386279 () Bool)

(assert (=> b!1335444 (= e!855469 (and tp!386281 tp!386279))))

(declare-fun b!1335442 () Bool)

(declare-fun tp!386278 () Bool)

(declare-fun tp!386277 () Bool)

(assert (=> b!1335442 (= e!855469 (and tp!386278 tp!386277))))

(declare-fun b!1335443 () Bool)

(declare-fun tp!386280 () Bool)

(assert (=> b!1335443 (= e!855469 tp!386280)))

(assert (=> b!1334882 (= tp!386167 e!855469)))

(assert (= (and b!1334882 ((_ is ElementMatch!3675) (reg!4004 (regex!2361 (h!19021 rules!2550))))) b!1335441))

(assert (= (and b!1334882 ((_ is Concat!6127) (reg!4004 (regex!2361 (h!19021 rules!2550))))) b!1335442))

(assert (= (and b!1334882 ((_ is Star!3675) (reg!4004 (regex!2361 (h!19021 rules!2550))))) b!1335443))

(assert (= (and b!1334882 ((_ is Union!3675) (reg!4004 (regex!2361 (h!19021 rules!2550))))) b!1335444))

(declare-fun b!1335445 () Bool)

(declare-fun e!855470 () Bool)

(declare-fun tp!386282 () Bool)

(assert (=> b!1335445 (= e!855470 (and tp_is_empty!6671 tp!386282))))

(assert (=> b!1334849 (= tp!386130 e!855470)))

(assert (= (and b!1334849 ((_ is Cons!13619) (t!119164 (originalCharacters!3223 t2!34)))) b!1335445))

(declare-fun b!1335446 () Bool)

(declare-fun e!855471 () Bool)

(assert (=> b!1335446 (= e!855471 tp_is_empty!6671)))

(declare-fun b!1335449 () Bool)

(declare-fun tp!386287 () Bool)

(declare-fun tp!386285 () Bool)

(assert (=> b!1335449 (= e!855471 (and tp!386287 tp!386285))))

(declare-fun b!1335447 () Bool)

(declare-fun tp!386284 () Bool)

(declare-fun tp!386283 () Bool)

(assert (=> b!1335447 (= e!855471 (and tp!386284 tp!386283))))

(declare-fun b!1335448 () Bool)

(declare-fun tp!386286 () Bool)

(assert (=> b!1335448 (= e!855471 tp!386286)))

(assert (=> b!1334881 (= tp!386165 e!855471)))

(assert (= (and b!1334881 ((_ is ElementMatch!3675) (regOne!7862 (regex!2361 (h!19021 rules!2550))))) b!1335446))

(assert (= (and b!1334881 ((_ is Concat!6127) (regOne!7862 (regex!2361 (h!19021 rules!2550))))) b!1335447))

(assert (= (and b!1334881 ((_ is Star!3675) (regOne!7862 (regex!2361 (h!19021 rules!2550))))) b!1335448))

(assert (= (and b!1334881 ((_ is Union!3675) (regOne!7862 (regex!2361 (h!19021 rules!2550))))) b!1335449))

(declare-fun b!1335450 () Bool)

(declare-fun e!855472 () Bool)

(assert (=> b!1335450 (= e!855472 tp_is_empty!6671)))

(declare-fun b!1335453 () Bool)

(declare-fun tp!386292 () Bool)

(declare-fun tp!386290 () Bool)

(assert (=> b!1335453 (= e!855472 (and tp!386292 tp!386290))))

(declare-fun b!1335451 () Bool)

(declare-fun tp!386289 () Bool)

(declare-fun tp!386288 () Bool)

(assert (=> b!1335451 (= e!855472 (and tp!386289 tp!386288))))

(declare-fun b!1335452 () Bool)

(declare-fun tp!386291 () Bool)

(assert (=> b!1335452 (= e!855472 tp!386291)))

(assert (=> b!1334881 (= tp!386164 e!855472)))

(assert (= (and b!1334881 ((_ is ElementMatch!3675) (regTwo!7862 (regex!2361 (h!19021 rules!2550))))) b!1335450))

(assert (= (and b!1334881 ((_ is Concat!6127) (regTwo!7862 (regex!2361 (h!19021 rules!2550))))) b!1335451))

(assert (= (and b!1334881 ((_ is Star!3675) (regTwo!7862 (regex!2361 (h!19021 rules!2550))))) b!1335452))

(assert (= (and b!1334881 ((_ is Union!3675) (regTwo!7862 (regex!2361 (h!19021 rules!2550))))) b!1335453))

(declare-fun b!1335454 () Bool)

(declare-fun e!855473 () Bool)

(declare-fun tp!386293 () Bool)

(assert (=> b!1335454 (= e!855473 (and tp_is_empty!6671 tp!386293))))

(assert (=> b!1334868 (= tp!386151 e!855473)))

(assert (= (and b!1334868 ((_ is Cons!13619) (t!119164 (originalCharacters!3223 t1!34)))) b!1335454))

(declare-fun b!1335457 () Bool)

(declare-fun b_free!32467 () Bool)

(declare-fun b_next!33171 () Bool)

(assert (=> b!1335457 (= b_free!32467 (not b_next!33171))))

(declare-fun tp!386297 () Bool)

(declare-fun b_and!89315 () Bool)

(assert (=> b!1335457 (= tp!386297 b_and!89315)))

(declare-fun b_free!32469 () Bool)

(declare-fun b_next!33173 () Bool)

(assert (=> b!1335457 (= b_free!32469 (not b_next!33173))))

(declare-fun tb!70437 () Bool)

(declare-fun t!119221 () Bool)

(assert (=> (and b!1335457 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 (t!119165 rules!2550))))) (toChars!3451 (transformation!2361 (rule!4106 t1!34)))) t!119221) tb!70437))

(declare-fun result!85564 () Bool)

(assert (= result!85564 result!85510))

(assert (=> d!375857 t!119221))

(declare-fun t!119223 () Bool)

(declare-fun tb!70439 () Bool)

(assert (=> (and b!1335457 (= (toChars!3451 (transformation!2361 (h!19021 (t!119165 (t!119165 rules!2550))))) (toChars!3451 (transformation!2361 (rule!4106 t2!34)))) t!119223) tb!70439))

(declare-fun result!85566 () Bool)

(assert (= result!85566 result!85542))

(assert (=> d!375917 t!119223))

(assert (=> b!1334841 t!119221))

(assert (=> b!1334843 t!119223))

(declare-fun tp!386295 () Bool)

(declare-fun b_and!89317 () Bool)

(assert (=> b!1335457 (= tp!386295 (and (=> t!119221 result!85564) (=> t!119223 result!85566) b_and!89317))))

(declare-fun e!855475 () Bool)

(assert (=> b!1335457 (= e!855475 (and tp!386297 tp!386295))))

(declare-fun tp!386296 () Bool)

(declare-fun e!855476 () Bool)

(declare-fun b!1335456 () Bool)

(assert (=> b!1335456 (= e!855476 (and tp!386296 (inv!17949 (tag!2623 (h!19021 (t!119165 (t!119165 rules!2550))))) (inv!17952 (transformation!2361 (h!19021 (t!119165 (t!119165 rules!2550))))) e!855475))))

(declare-fun b!1335455 () Bool)

(declare-fun e!855474 () Bool)

(declare-fun tp!386294 () Bool)

(assert (=> b!1335455 (= e!855474 (and e!855476 tp!386294))))

(assert (=> b!1334877 (= tp!386160 e!855474)))

(assert (= b!1335456 b!1335457))

(assert (= b!1335455 b!1335456))

(assert (= (and b!1334877 ((_ is Cons!13620) (t!119165 (t!119165 rules!2550)))) b!1335455))

(declare-fun m!1493023 () Bool)

(assert (=> b!1335456 m!1493023))

(declare-fun m!1493025 () Bool)

(assert (=> b!1335456 m!1493025))

(declare-fun tp!386305 () Bool)

(declare-fun tp!386304 () Bool)

(declare-fun e!855482 () Bool)

(declare-fun b!1335466 () Bool)

(assert (=> b!1335466 (= e!855482 (and (inv!17956 (left!11687 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))))) tp!386304 (inv!17956 (right!12017 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))))) tp!386305))))

(declare-fun b!1335468 () Bool)

(declare-fun e!855483 () Bool)

(declare-fun tp!386306 () Bool)

(assert (=> b!1335468 (= e!855483 tp!386306)))

(declare-fun b!1335467 () Bool)

(declare-fun inv!17963 (IArray!8983) Bool)

(assert (=> b!1335467 (= e!855482 (and (inv!17963 (xs!7204 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))))) e!855483))))

(assert (=> b!1334684 (= tp!386081 (and (inv!17956 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34)))) e!855482))))

(assert (= (and b!1334684 ((_ is Node!4489) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))))) b!1335466))

(assert (= b!1335467 b!1335468))

(assert (= (and b!1334684 ((_ is Leaf!6866) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t1!34))) (value!76921 t1!34))))) b!1335467))

(declare-fun m!1493027 () Bool)

(assert (=> b!1335466 m!1493027))

(declare-fun m!1493029 () Bool)

(assert (=> b!1335466 m!1493029))

(declare-fun m!1493031 () Bool)

(assert (=> b!1335467 m!1493031))

(assert (=> b!1334684 m!1492027))

(declare-fun b!1335469 () Bool)

(declare-fun e!855484 () Bool)

(assert (=> b!1335469 (= e!855484 tp_is_empty!6671)))

(declare-fun b!1335472 () Bool)

(declare-fun tp!386311 () Bool)

(declare-fun tp!386309 () Bool)

(assert (=> b!1335472 (= e!855484 (and tp!386311 tp!386309))))

(declare-fun b!1335470 () Bool)

(declare-fun tp!386308 () Bool)

(declare-fun tp!386307 () Bool)

(assert (=> b!1335470 (= e!855484 (and tp!386308 tp!386307))))

(declare-fun b!1335471 () Bool)

(declare-fun tp!386310 () Bool)

(assert (=> b!1335471 (= e!855484 tp!386310)))

(assert (=> b!1334867 (= tp!386150 e!855484)))

(assert (= (and b!1334867 ((_ is ElementMatch!3675) (regOne!7863 (regex!2361 (rule!4106 t2!34))))) b!1335469))

(assert (= (and b!1334867 ((_ is Concat!6127) (regOne!7863 (regex!2361 (rule!4106 t2!34))))) b!1335470))

(assert (= (and b!1334867 ((_ is Star!3675) (regOne!7863 (regex!2361 (rule!4106 t2!34))))) b!1335471))

(assert (= (and b!1334867 ((_ is Union!3675) (regOne!7863 (regex!2361 (rule!4106 t2!34))))) b!1335472))

(declare-fun b!1335473 () Bool)

(declare-fun e!855485 () Bool)

(assert (=> b!1335473 (= e!855485 tp_is_empty!6671)))

(declare-fun b!1335476 () Bool)

(declare-fun tp!386316 () Bool)

(declare-fun tp!386314 () Bool)

(assert (=> b!1335476 (= e!855485 (and tp!386316 tp!386314))))

(declare-fun b!1335474 () Bool)

(declare-fun tp!386313 () Bool)

(declare-fun tp!386312 () Bool)

(assert (=> b!1335474 (= e!855485 (and tp!386313 tp!386312))))

(declare-fun b!1335475 () Bool)

(declare-fun tp!386315 () Bool)

(assert (=> b!1335475 (= e!855485 tp!386315)))

(assert (=> b!1334867 (= tp!386148 e!855485)))

(assert (= (and b!1334867 ((_ is ElementMatch!3675) (regTwo!7863 (regex!2361 (rule!4106 t2!34))))) b!1335473))

(assert (= (and b!1334867 ((_ is Concat!6127) (regTwo!7863 (regex!2361 (rule!4106 t2!34))))) b!1335474))

(assert (= (and b!1334867 ((_ is Star!3675) (regTwo!7863 (regex!2361 (rule!4106 t2!34))))) b!1335475))

(assert (= (and b!1334867 ((_ is Union!3675) (regTwo!7863 (regex!2361 (rule!4106 t2!34))))) b!1335476))

(declare-fun b!1335477 () Bool)

(declare-fun e!855486 () Bool)

(assert (=> b!1335477 (= e!855486 tp_is_empty!6671)))

(declare-fun b!1335480 () Bool)

(declare-fun tp!386321 () Bool)

(declare-fun tp!386319 () Bool)

(assert (=> b!1335480 (= e!855486 (and tp!386321 tp!386319))))

(declare-fun b!1335478 () Bool)

(declare-fun tp!386318 () Bool)

(declare-fun tp!386317 () Bool)

(assert (=> b!1335478 (= e!855486 (and tp!386318 tp!386317))))

(declare-fun b!1335479 () Bool)

(declare-fun tp!386320 () Bool)

(assert (=> b!1335479 (= e!855486 tp!386320)))

(assert (=> b!1334862 (= tp!386144 e!855486)))

(assert (= (and b!1334862 ((_ is ElementMatch!3675) (reg!4004 (regex!2361 (rule!4106 t1!34))))) b!1335477))

(assert (= (and b!1334862 ((_ is Concat!6127) (reg!4004 (regex!2361 (rule!4106 t1!34))))) b!1335478))

(assert (= (and b!1334862 ((_ is Star!3675) (reg!4004 (regex!2361 (rule!4106 t1!34))))) b!1335479))

(assert (= (and b!1334862 ((_ is Union!3675) (reg!4004 (regex!2361 (rule!4106 t1!34))))) b!1335480))

(declare-fun e!855487 () Bool)

(declare-fun tp!386323 () Bool)

(declare-fun tp!386322 () Bool)

(declare-fun b!1335481 () Bool)

(assert (=> b!1335481 (= e!855487 (and (inv!17956 (left!11687 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))))) tp!386322 (inv!17956 (right!12017 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))))) tp!386323))))

(declare-fun b!1335483 () Bool)

(declare-fun e!855488 () Bool)

(declare-fun tp!386324 () Bool)

(assert (=> b!1335483 (= e!855488 tp!386324)))

(declare-fun b!1335482 () Bool)

(assert (=> b!1335482 (= e!855487 (and (inv!17963 (xs!7204 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))))) e!855488))))

(assert (=> b!1334822 (= tp!386127 (and (inv!17956 (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34)))) e!855487))))

(assert (= (and b!1334822 ((_ is Node!4489) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))))) b!1335481))

(assert (= b!1335482 b!1335483))

(assert (= (and b!1334822 ((_ is Leaf!6866) (c!218523 (dynLambda!5992 (toChars!3451 (transformation!2361 (rule!4106 t2!34))) (value!76921 t2!34))))) b!1335482))

(declare-fun m!1493033 () Bool)

(assert (=> b!1335481 m!1493033))

(declare-fun m!1493035 () Bool)

(assert (=> b!1335481 m!1493035))

(declare-fun m!1493037 () Bool)

(assert (=> b!1335482 m!1493037))

(assert (=> b!1334822 m!1492225))

(declare-fun b!1335484 () Bool)

(declare-fun e!855489 () Bool)

(assert (=> b!1335484 (= e!855489 tp_is_empty!6671)))

(declare-fun b!1335487 () Bool)

(declare-fun tp!386329 () Bool)

(declare-fun tp!386327 () Bool)

(assert (=> b!1335487 (= e!855489 (and tp!386329 tp!386327))))

(declare-fun b!1335485 () Bool)

(declare-fun tp!386326 () Bool)

(declare-fun tp!386325 () Bool)

(assert (=> b!1335485 (= e!855489 (and tp!386326 tp!386325))))

(declare-fun b!1335486 () Bool)

(declare-fun tp!386328 () Bool)

(assert (=> b!1335486 (= e!855489 tp!386328)))

(assert (=> b!1334866 (= tp!386149 e!855489)))

(assert (= (and b!1334866 ((_ is ElementMatch!3675) (reg!4004 (regex!2361 (rule!4106 t2!34))))) b!1335484))

(assert (= (and b!1334866 ((_ is Concat!6127) (reg!4004 (regex!2361 (rule!4106 t2!34))))) b!1335485))

(assert (= (and b!1334866 ((_ is Star!3675) (reg!4004 (regex!2361 (rule!4106 t2!34))))) b!1335486))

(assert (= (and b!1334866 ((_ is Union!3675) (reg!4004 (regex!2361 (rule!4106 t2!34))))) b!1335487))

(declare-fun b!1335488 () Bool)

(declare-fun e!855490 () Bool)

(assert (=> b!1335488 (= e!855490 tp_is_empty!6671)))

(declare-fun b!1335491 () Bool)

(declare-fun tp!386334 () Bool)

(declare-fun tp!386332 () Bool)

(assert (=> b!1335491 (= e!855490 (and tp!386334 tp!386332))))

(declare-fun b!1335489 () Bool)

(declare-fun tp!386331 () Bool)

(declare-fun tp!386330 () Bool)

(assert (=> b!1335489 (= e!855490 (and tp!386331 tp!386330))))

(declare-fun b!1335490 () Bool)

(declare-fun tp!386333 () Bool)

(assert (=> b!1335490 (= e!855490 tp!386333)))

(assert (=> b!1334861 (= tp!386142 e!855490)))

(assert (= (and b!1334861 ((_ is ElementMatch!3675) (regOne!7862 (regex!2361 (rule!4106 t1!34))))) b!1335488))

(assert (= (and b!1334861 ((_ is Concat!6127) (regOne!7862 (regex!2361 (rule!4106 t1!34))))) b!1335489))

(assert (= (and b!1334861 ((_ is Star!3675) (regOne!7862 (regex!2361 (rule!4106 t1!34))))) b!1335490))

(assert (= (and b!1334861 ((_ is Union!3675) (regOne!7862 (regex!2361 (rule!4106 t1!34))))) b!1335491))

(declare-fun b!1335492 () Bool)

(declare-fun e!855491 () Bool)

(assert (=> b!1335492 (= e!855491 tp_is_empty!6671)))

(declare-fun b!1335495 () Bool)

(declare-fun tp!386339 () Bool)

(declare-fun tp!386337 () Bool)

(assert (=> b!1335495 (= e!855491 (and tp!386339 tp!386337))))

(declare-fun b!1335493 () Bool)

(declare-fun tp!386336 () Bool)

(declare-fun tp!386335 () Bool)

(assert (=> b!1335493 (= e!855491 (and tp!386336 tp!386335))))

(declare-fun b!1335494 () Bool)

(declare-fun tp!386338 () Bool)

(assert (=> b!1335494 (= e!855491 tp!386338)))

(assert (=> b!1334861 (= tp!386141 e!855491)))

(assert (= (and b!1334861 ((_ is ElementMatch!3675) (regTwo!7862 (regex!2361 (rule!4106 t1!34))))) b!1335492))

(assert (= (and b!1334861 ((_ is Concat!6127) (regTwo!7862 (regex!2361 (rule!4106 t1!34))))) b!1335493))

(assert (= (and b!1334861 ((_ is Star!3675) (regTwo!7862 (regex!2361 (rule!4106 t1!34))))) b!1335494))

(assert (= (and b!1334861 ((_ is Union!3675) (regTwo!7862 (regex!2361 (rule!4106 t1!34))))) b!1335495))

(declare-fun b!1335496 () Bool)

(declare-fun e!855492 () Bool)

(assert (=> b!1335496 (= e!855492 tp_is_empty!6671)))

(declare-fun b!1335499 () Bool)

(declare-fun tp!386344 () Bool)

(declare-fun tp!386342 () Bool)

(assert (=> b!1335499 (= e!855492 (and tp!386344 tp!386342))))

(declare-fun b!1335497 () Bool)

(declare-fun tp!386341 () Bool)

(declare-fun tp!386340 () Bool)

(assert (=> b!1335497 (= e!855492 (and tp!386341 tp!386340))))

(declare-fun b!1335498 () Bool)

(declare-fun tp!386343 () Bool)

(assert (=> b!1335498 (= e!855492 tp!386343)))

(assert (=> b!1334878 (= tp!386162 e!855492)))

(assert (= (and b!1334878 ((_ is ElementMatch!3675) (regex!2361 (h!19021 (t!119165 rules!2550))))) b!1335496))

(assert (= (and b!1334878 ((_ is Concat!6127) (regex!2361 (h!19021 (t!119165 rules!2550))))) b!1335497))

(assert (= (and b!1334878 ((_ is Star!3675) (regex!2361 (h!19021 (t!119165 rules!2550))))) b!1335498))

(assert (= (and b!1334878 ((_ is Union!3675) (regex!2361 (h!19021 (t!119165 rules!2550))))) b!1335499))

(declare-fun b!1335500 () Bool)

(declare-fun e!855493 () Bool)

(assert (=> b!1335500 (= e!855493 tp_is_empty!6671)))

(declare-fun b!1335503 () Bool)

(declare-fun tp!386349 () Bool)

(declare-fun tp!386347 () Bool)

(assert (=> b!1335503 (= e!855493 (and tp!386349 tp!386347))))

(declare-fun b!1335501 () Bool)

(declare-fun tp!386346 () Bool)

(declare-fun tp!386345 () Bool)

(assert (=> b!1335501 (= e!855493 (and tp!386346 tp!386345))))

(declare-fun b!1335502 () Bool)

(declare-fun tp!386348 () Bool)

(assert (=> b!1335502 (= e!855493 tp!386348)))

(assert (=> b!1334865 (= tp!386147 e!855493)))

(assert (= (and b!1334865 ((_ is ElementMatch!3675) (regOne!7862 (regex!2361 (rule!4106 t2!34))))) b!1335500))

(assert (= (and b!1334865 ((_ is Concat!6127) (regOne!7862 (regex!2361 (rule!4106 t2!34))))) b!1335501))

(assert (= (and b!1334865 ((_ is Star!3675) (regOne!7862 (regex!2361 (rule!4106 t2!34))))) b!1335502))

(assert (= (and b!1334865 ((_ is Union!3675) (regOne!7862 (regex!2361 (rule!4106 t2!34))))) b!1335503))

(declare-fun b!1335504 () Bool)

(declare-fun e!855494 () Bool)

(assert (=> b!1335504 (= e!855494 tp_is_empty!6671)))

(declare-fun b!1335507 () Bool)

(declare-fun tp!386354 () Bool)

(declare-fun tp!386352 () Bool)

(assert (=> b!1335507 (= e!855494 (and tp!386354 tp!386352))))

(declare-fun b!1335505 () Bool)

(declare-fun tp!386351 () Bool)

(declare-fun tp!386350 () Bool)

(assert (=> b!1335505 (= e!855494 (and tp!386351 tp!386350))))

(declare-fun b!1335506 () Bool)

(declare-fun tp!386353 () Bool)

(assert (=> b!1335506 (= e!855494 tp!386353)))

(assert (=> b!1334865 (= tp!386146 e!855494)))

(assert (= (and b!1334865 ((_ is ElementMatch!3675) (regTwo!7862 (regex!2361 (rule!4106 t2!34))))) b!1335504))

(assert (= (and b!1334865 ((_ is Concat!6127) (regTwo!7862 (regex!2361 (rule!4106 t2!34))))) b!1335505))

(assert (= (and b!1334865 ((_ is Star!3675) (regTwo!7862 (regex!2361 (rule!4106 t2!34))))) b!1335506))

(assert (= (and b!1334865 ((_ is Union!3675) (regTwo!7862 (regex!2361 (rule!4106 t2!34))))) b!1335507))

(declare-fun b!1335508 () Bool)

(declare-fun e!855495 () Bool)

(assert (=> b!1335508 (= e!855495 tp_is_empty!6671)))

(declare-fun b!1335511 () Bool)

(declare-fun tp!386359 () Bool)

(declare-fun tp!386357 () Bool)

(assert (=> b!1335511 (= e!855495 (and tp!386359 tp!386357))))

(declare-fun b!1335509 () Bool)

(declare-fun tp!386356 () Bool)

(declare-fun tp!386355 () Bool)

(assert (=> b!1335509 (= e!855495 (and tp!386356 tp!386355))))

(declare-fun b!1335510 () Bool)

(declare-fun tp!386358 () Bool)

(assert (=> b!1335510 (= e!855495 tp!386358)))

(assert (=> b!1334863 (= tp!386145 e!855495)))

(assert (= (and b!1334863 ((_ is ElementMatch!3675) (regOne!7863 (regex!2361 (rule!4106 t1!34))))) b!1335508))

(assert (= (and b!1334863 ((_ is Concat!6127) (regOne!7863 (regex!2361 (rule!4106 t1!34))))) b!1335509))

(assert (= (and b!1334863 ((_ is Star!3675) (regOne!7863 (regex!2361 (rule!4106 t1!34))))) b!1335510))

(assert (= (and b!1334863 ((_ is Union!3675) (regOne!7863 (regex!2361 (rule!4106 t1!34))))) b!1335511))

(declare-fun b!1335512 () Bool)

(declare-fun e!855496 () Bool)

(assert (=> b!1335512 (= e!855496 tp_is_empty!6671)))

(declare-fun b!1335515 () Bool)

(declare-fun tp!386364 () Bool)

(declare-fun tp!386362 () Bool)

(assert (=> b!1335515 (= e!855496 (and tp!386364 tp!386362))))

(declare-fun b!1335513 () Bool)

(declare-fun tp!386361 () Bool)

(declare-fun tp!386360 () Bool)

(assert (=> b!1335513 (= e!855496 (and tp!386361 tp!386360))))

(declare-fun b!1335514 () Bool)

(declare-fun tp!386363 () Bool)

(assert (=> b!1335514 (= e!855496 tp!386363)))

(assert (=> b!1334863 (= tp!386143 e!855496)))

(assert (= (and b!1334863 ((_ is ElementMatch!3675) (regTwo!7863 (regex!2361 (rule!4106 t1!34))))) b!1335512))

(assert (= (and b!1334863 ((_ is Concat!6127) (regTwo!7863 (regex!2361 (rule!4106 t1!34))))) b!1335513))

(assert (= (and b!1334863 ((_ is Star!3675) (regTwo!7863 (regex!2361 (rule!4106 t1!34))))) b!1335514))

(assert (= (and b!1334863 ((_ is Union!3675) (regTwo!7863 (regex!2361 (rule!4106 t1!34))))) b!1335515))

(declare-fun b_lambda!39389 () Bool)

(assert (= b_lambda!39383 (or d!375859 b_lambda!39389)))

(declare-fun bs!331924 () Bool)

(declare-fun d!376239 () Bool)

(assert (= bs!331924 (and d!376239 d!375859)))

(assert (=> bs!331924 (= (dynLambda!5999 lambda!55910 (h!19021 rules!2550)) (regex!2361 (h!19021 rules!2550)))))

(assert (=> b!1335039 d!376239))

(check-sat (not b!1335499) (not d!376179) (not b!1335375) (not b!1335378) (not b!1335152) (not b!1335432) (not b!1335031) (not b!1335039) (not d!376009) (not d!376183) (not d!376187) (not b!1335513) (not d!376021) (not d!376185) (not d!376007) (not b!1335027) (not b!1335515) (not d!376173) (not b!1335400) (not d!376205) b_and!89243 (not b!1335495) (not b!1335442) (not d!376101) (not b!1334684) (not b!1335490) (not d!376119) (not b!1335203) (not b!1335200) (not b!1335494) (not b!1335032) (not b!1335215) (not b!1335408) (not b_next!33157) (not b!1335028) (not d!376215) (not b!1335510) (not b!1335156) (not b_lambda!39389) (not d!376035) (not b!1335242) (not d!376143) (not bm!90164) (not b!1335391) (not b!1335493) (not d!376167) (not b!1335451) (not b!1335498) (not b!1335455) (not b!1335334) (not b!1335244) (not b!1335398) (not b!1335426) (not b!1335024) (not b!1335439) (not d!376141) tp_is_empty!6671 (not b!1335197) (not d!376197) (not b!1335511) (not b!1335506) (not d!376207) (not b!1335198) (not b!1334985) (not b!1335407) (not b!1335454) (not d!376153) (not d!376209) (not b_lambda!39379) (not d!376147) (not b!1335435) (not b_lambda!39381) (not d!376235) (not d!376237) (not d!376227) (not b_next!33173) (not b!1335471) (not d!376123) (not b!1335474) (not b!1335434) (not b!1335481) (not b_lambda!39377) (not b!1335185) (not d!375959) (not b!1335262) (not b_next!33147) (not b!1335154) (not b!1335069) (not b!1335466) (not b!1335381) (not b!1335207) (not d!376041) (not d!376231) (not d!376159) (not b!1334822) (not b!1335260) (not b_next!33155) b_and!89247 (not b_next!33149) (not b!1335443) (not d!375957) (not b!1335479) (not b!1335453) (not d!376163) (not b!1335366) b_and!89317 b_and!89305 (not b_next!33165) b_and!89309 (not b!1335452) (not b!1335430) b_and!89303 (not bm!90141) (not b!1335497) (not b!1335489) (not d!376225) (not d!376145) (not d!376223) (not d!376155) (not b!1335396) (not b!1335449) (not b!1335447) (not b!1334993) (not b!1335409) b_and!89315 (not b_next!33151) (not d!376025) (not b!1334995) (not b!1335204) (not b!1335382) (not b!1335468) (not b!1335470) (not b!1335436) (not d!376229) (not d!376203) (not b!1335505) (not b!1335155) (not b!1334991) (not b!1334955) (not b!1335033) (not b!1335214) (not b!1335485) (not b!1335263) (not b!1335514) (not b!1335507) (not b!1334954) (not b!1335487) (not b!1335275) (not d!376137) (not b!1335501) b_and!89251 (not b_next!33171) (not b!1335365) (not b!1335480) (not b!1335429) (not b!1335427) (not bm!90142) (not d!376133) (not d!376125) (not b!1335259) (not b!1335491) (not d!376027) (not b!1335066) (not b!1335478) (not d!376023) (not b!1335202) (not b!1335456) (not d!376139) (not b_next!33153) (not d!375961) (not d!376213) (not d!376191) b_and!89307 (not b!1335030) (not d!376039) (not b_next!33163) (not b!1335482) (not d!376157) (not b!1335003) (not b_lambda!39375) (not b!1335376) (not b!1335448) (not d!376181) (not b!1335444) (not b!1335438) (not b!1335486) (not b!1335440) (not b!1335476) (not d!376031) (not b!1335502) (not b!1335472) (not b!1335475) (not d!376121) (not b!1335377) (not b!1335467) (not d!376189) (not b!1335509) (not b!1335065) b_and!89301 (not b!1335483) (not b!1335445) (not bm!90161) (not b!1335503))
(check-sat b_and!89243 (not b_next!33157) (not b_next!33173) (not b_next!33147) b_and!89303 b_and!89251 (not b_next!33171) (not b_next!33153) b_and!89301 (not b_next!33155) b_and!89247 (not b_next!33149) b_and!89317 b_and!89305 (not b_next!33165) b_and!89309 b_and!89315 (not b_next!33151) b_and!89307 (not b_next!33163))
