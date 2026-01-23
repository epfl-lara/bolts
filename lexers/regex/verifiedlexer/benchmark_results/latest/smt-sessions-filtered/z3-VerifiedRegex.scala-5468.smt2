; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277314 () Bool)

(assert start!277314)

(declare-fun b!2847495 () Bool)

(declare-fun b_free!82737 () Bool)

(declare-fun b_next!83441 () Bool)

(assert (=> b!2847495 (= b_free!82737 (not b_next!83441))))

(declare-fun tp!913825 () Bool)

(declare-fun b_and!208979 () Bool)

(assert (=> b!2847495 (= tp!913825 b_and!208979)))

(declare-fun b_free!82739 () Bool)

(declare-fun b_next!83443 () Bool)

(assert (=> b!2847495 (= b_free!82739 (not b_next!83443))))

(declare-fun tp!913826 () Bool)

(declare-fun b_and!208981 () Bool)

(assert (=> b!2847495 (= tp!913826 b_and!208981)))

(declare-fun b!2847491 () Bool)

(declare-fun res!1183862 () Bool)

(declare-fun e!1804335 () Bool)

(assert (=> b!2847491 (=> (not res!1183862) (not e!1804335))))

(declare-datatypes ((LexerInterface!4665 0))(
  ( (LexerInterfaceExt!4662 (__x!22409 Int)) (Lexer!4663) )
))
(declare-fun thiss!10976 () LexerInterface!4665)

(declare-datatypes ((List!33935 0))(
  ( (Nil!33811) (Cons!33811 (h!39231 (_ BitVec 16)) (t!232960 List!33935)) )
))
(declare-datatypes ((TokenValue!5306 0))(
  ( (FloatLiteralValue!10612 (text!37587 List!33935)) (TokenValueExt!5305 (__x!22410 Int)) (Broken!26530 (value!163075 List!33935)) (Object!5429) (End!5306) (Def!5306) (Underscore!5306) (Match!5306) (Else!5306) (Error!5306) (Case!5306) (If!5306) (Extends!5306) (Abstract!5306) (Class!5306) (Val!5306) (DelimiterValue!10612 (del!5366 List!33935)) (KeywordValue!5312 (value!163076 List!33935)) (CommentValue!10612 (value!163077 List!33935)) (WhitespaceValue!10612 (value!163078 List!33935)) (IndentationValue!5306 (value!163079 List!33935)) (String!37143) (Int32!5306) (Broken!26531 (value!163080 List!33935)) (Boolean!5307) (Unit!47566) (OperatorValue!5309 (op!5366 List!33935)) (IdentifierValue!10612 (value!163081 List!33935)) (IdentifierValue!10613 (value!163082 List!33935)) (WhitespaceValue!10613 (value!163083 List!33935)) (True!10612) (False!10612) (Broken!26532 (value!163084 List!33935)) (Broken!26533 (value!163085 List!33935)) (True!10613) (RightBrace!5306) (RightBracket!5306) (Colon!5306) (Null!5306) (Comma!5306) (LeftBracket!5306) (False!10613) (LeftBrace!5306) (ImaginaryLiteralValue!5306 (text!37588 List!33935)) (StringLiteralValue!15918 (value!163086 List!33935)) (EOFValue!5306 (value!163087 List!33935)) (IdentValue!5306 (value!163088 List!33935)) (DelimiterValue!10613 (value!163089 List!33935)) (DedentValue!5306 (value!163090 List!33935)) (NewLineValue!5306 (value!163091 List!33935)) (IntegerValue!15918 (value!163092 (_ BitVec 32)) (text!37589 List!33935)) (IntegerValue!15919 (value!163093 Int) (text!37590 List!33935)) (Times!5306) (Or!5306) (Equal!5306) (Minus!5306) (Broken!26534 (value!163094 List!33935)) (And!5306) (Div!5306) (LessEqual!5306) (Mod!5306) (Concat!13797) (Not!5306) (Plus!5306) (SpaceValue!5306 (value!163095 List!33935)) (IntegerValue!15920 (value!163096 Int) (text!37591 List!33935)) (StringLiteralValue!15919 (text!37592 List!33935)) (FloatLiteralValue!10613 (text!37593 List!33935)) (BytesLiteralValue!5306 (value!163097 List!33935)) (CommentValue!10613 (value!163098 List!33935)) (StringLiteralValue!15920 (value!163099 List!33935)) (ErrorTokenValue!5306 (msg!5367 List!33935)) )
))
(declare-datatypes ((C!17164 0))(
  ( (C!17165 (val!10616 Int)) )
))
(declare-datatypes ((List!33936 0))(
  ( (Nil!33812) (Cons!33812 (h!39232 C!17164) (t!232961 List!33936)) )
))
(declare-datatypes ((IArray!20973 0))(
  ( (IArray!20974 (innerList!10544 List!33936)) )
))
(declare-datatypes ((Conc!10484 0))(
  ( (Node!10484 (left!25448 Conc!10484) (right!25778 Conc!10484) (csize!21198 Int) (cheight!10695 Int)) (Leaf!15953 (xs!13602 IArray!20973) (csize!21199 Int)) (Empty!10484) )
))
(declare-datatypes ((BalanceConc!20606 0))(
  ( (BalanceConc!20607 (c!459440 Conc!10484)) )
))
(declare-datatypes ((Regex!8491 0))(
  ( (ElementMatch!8491 (c!459441 C!17164)) (Concat!13798 (regOne!17494 Regex!8491) (regTwo!17494 Regex!8491)) (EmptyExpr!8491) (Star!8491 (reg!8820 Regex!8491)) (EmptyLang!8491) (Union!8491 (regOne!17495 Regex!8491) (regTwo!17495 Regex!8491)) )
))
(declare-datatypes ((String!37144 0))(
  ( (String!37145 (value!163100 String)) )
))
(declare-datatypes ((TokenValueInjection!10040 0))(
  ( (TokenValueInjection!10041 (toValue!7132 Int) (toChars!6991 Int)) )
))
(declare-datatypes ((Rule!9952 0))(
  ( (Rule!9953 (regex!5076 Regex!8491) (tag!5580 String!37144) (isSeparator!5076 Bool) (transformation!5076 TokenValueInjection!10040)) )
))
(declare-datatypes ((List!33937 0))(
  ( (Nil!33813) (Cons!33813 (h!39233 Rule!9952) (t!232962 List!33937)) )
))
(declare-fun rules!1036 () List!33937)

(declare-fun rulesValidInductive!1741 (LexerInterface!4665 List!33937) Bool)

(assert (=> b!2847491 (= res!1183862 (rulesValidInductive!1741 thiss!10976 rules!1036))))

(declare-fun res!1183861 () Bool)

(assert (=> start!277314 (=> (not res!1183861) (not e!1804335))))

(get-info :version)

(assert (=> start!277314 (= res!1183861 ((_ is Lexer!4663) thiss!10976))))

(assert (=> start!277314 e!1804335))

(assert (=> start!277314 true))

(declare-fun e!1804333 () Bool)

(assert (=> start!277314 e!1804333))

(declare-fun tp!913828 () Bool)

(declare-fun b!2847492 () Bool)

(declare-fun e!1804332 () Bool)

(declare-fun e!1804336 () Bool)

(declare-fun inv!45850 (String!37144) Bool)

(declare-fun inv!45852 (TokenValueInjection!10040) Bool)

(assert (=> b!2847492 (= e!1804336 (and tp!913828 (inv!45850 (tag!5580 (h!39233 rules!1036))) (inv!45852 (transformation!5076 (h!39233 rules!1036))) e!1804332))))

(declare-fun b!2847493 () Bool)

(declare-fun tp!913827 () Bool)

(assert (=> b!2847493 (= e!1804333 (and e!1804336 tp!913827))))

(declare-fun lambda!104538 () Int)

(declare-fun b!2847494 () Bool)

(declare-fun lambda!104539 () Int)

(declare-datatypes ((List!33938 0))(
  ( (Nil!33814) (Cons!33814 (h!39234 Regex!8491) (t!232963 List!33938)) )
))
(declare-fun forall!6939 (List!33938 Int) Bool)

(declare-fun map!7257 (List!33937 Int) List!33938)

(assert (=> b!2847494 (= e!1804335 (not (forall!6939 (map!7257 rules!1036 lambda!104538) lambda!104539)))))

(declare-datatypes ((Unit!47567 0))(
  ( (Unit!47568) )
))
(declare-fun lt!1012952 () Unit!47567)

(declare-fun lemma!569 (List!33937 LexerInterface!4665 List!33937) Unit!47567)

(assert (=> b!2847494 (= lt!1012952 (lemma!569 rules!1036 thiss!10976 rules!1036))))

(assert (=> b!2847495 (= e!1804332 (and tp!913825 tp!913826))))

(assert (= (and start!277314 res!1183861) b!2847491))

(assert (= (and b!2847491 res!1183862) b!2847494))

(assert (= b!2847492 b!2847495))

(assert (= b!2847493 b!2847492))

(assert (= (and start!277314 ((_ is Cons!33813) rules!1036)) b!2847493))

(declare-fun m!3274965 () Bool)

(assert (=> b!2847491 m!3274965))

(declare-fun m!3274967 () Bool)

(assert (=> b!2847492 m!3274967))

(declare-fun m!3274969 () Bool)

(assert (=> b!2847492 m!3274969))

(declare-fun m!3274971 () Bool)

(assert (=> b!2847494 m!3274971))

(assert (=> b!2847494 m!3274971))

(declare-fun m!3274973 () Bool)

(assert (=> b!2847494 m!3274973))

(declare-fun m!3274975 () Bool)

(assert (=> b!2847494 m!3274975))

(check-sat b_and!208979 (not b_next!83443) (not b_next!83441) (not b!2847493) (not b!2847492) b_and!208981 (not b!2847494) (not b!2847491))
(check-sat b_and!208981 b_and!208979 (not b_next!83443) (not b_next!83441))
(get-model)

(declare-fun d!825517 () Bool)

(declare-fun res!1183873 () Bool)

(declare-fun e!1804347 () Bool)

(assert (=> d!825517 (=> res!1183873 e!1804347)))

(assert (=> d!825517 (= res!1183873 ((_ is Nil!33814) (map!7257 rules!1036 lambda!104538)))))

(assert (=> d!825517 (= (forall!6939 (map!7257 rules!1036 lambda!104538) lambda!104539) e!1804347)))

(declare-fun b!2847508 () Bool)

(declare-fun e!1804348 () Bool)

(assert (=> b!2847508 (= e!1804347 e!1804348)))

(declare-fun res!1183874 () Bool)

(assert (=> b!2847508 (=> (not res!1183874) (not e!1804348))))

(declare-fun dynLambda!14202 (Int Regex!8491) Bool)

(assert (=> b!2847508 (= res!1183874 (dynLambda!14202 lambda!104539 (h!39234 (map!7257 rules!1036 lambda!104538))))))

(declare-fun b!2847509 () Bool)

(assert (=> b!2847509 (= e!1804348 (forall!6939 (t!232963 (map!7257 rules!1036 lambda!104538)) lambda!104539))))

(assert (= (and d!825517 (not res!1183873)) b!2847508))

(assert (= (and b!2847508 res!1183874) b!2847509))

(declare-fun b_lambda!85555 () Bool)

(assert (=> (not b_lambda!85555) (not b!2847508)))

(declare-fun m!3274983 () Bool)

(assert (=> b!2847508 m!3274983))

(declare-fun m!3274985 () Bool)

(assert (=> b!2847509 m!3274985))

(assert (=> b!2847494 d!825517))

(declare-fun d!825523 () Bool)

(declare-fun lt!1012958 () List!33938)

(declare-fun size!26250 (List!33938) Int)

(declare-fun size!26251 (List!33937) Int)

(assert (=> d!825523 (= (size!26250 lt!1012958) (size!26251 rules!1036))))

(declare-fun e!1804360 () List!33938)

(assert (=> d!825523 (= lt!1012958 e!1804360)))

(declare-fun c!459444 () Bool)

(assert (=> d!825523 (= c!459444 ((_ is Nil!33813) rules!1036))))

(assert (=> d!825523 (= (map!7257 rules!1036 lambda!104538) lt!1012958)))

(declare-fun b!2847523 () Bool)

(assert (=> b!2847523 (= e!1804360 Nil!33814)))

(declare-fun b!2847524 () Bool)

(declare-fun $colon$colon!584 (List!33938 Regex!8491) List!33938)

(declare-fun dynLambda!14204 (Int Rule!9952) Regex!8491)

(assert (=> b!2847524 (= e!1804360 ($colon$colon!584 (map!7257 (t!232962 rules!1036) lambda!104538) (dynLambda!14204 lambda!104538 (h!39233 rules!1036))))))

(assert (= (and d!825523 c!459444) b!2847523))

(assert (= (and d!825523 (not c!459444)) b!2847524))

(declare-fun b_lambda!85559 () Bool)

(assert (=> (not b_lambda!85559) (not b!2847524)))

(declare-fun m!3274995 () Bool)

(assert (=> d!825523 m!3274995))

(declare-fun m!3274997 () Bool)

(assert (=> d!825523 m!3274997))

(declare-fun m!3274999 () Bool)

(assert (=> b!2847524 m!3274999))

(declare-fun m!3275001 () Bool)

(assert (=> b!2847524 m!3275001))

(assert (=> b!2847524 m!3274999))

(assert (=> b!2847524 m!3275001))

(declare-fun m!3275003 () Bool)

(assert (=> b!2847524 m!3275003))

(assert (=> b!2847494 d!825523))

(declare-fun bs!519978 () Bool)

(declare-fun d!825529 () Bool)

(assert (= bs!519978 (and d!825529 b!2847494)))

(declare-fun lambda!104547 () Int)

(assert (=> bs!519978 (= lambda!104547 lambda!104538)))

(declare-fun lambda!104550 () Int)

(assert (=> bs!519978 (= lambda!104550 lambda!104539)))

(assert (=> d!825529 (forall!6939 (map!7257 rules!1036 lambda!104547) lambda!104550)))

(declare-fun lt!1012970 () Unit!47567)

(declare-fun e!1804368 () Unit!47567)

(assert (=> d!825529 (= lt!1012970 e!1804368)))

(declare-fun c!459452 () Bool)

(assert (=> d!825529 (= c!459452 ((_ is Nil!33813) rules!1036))))

(assert (=> d!825529 (rulesValidInductive!1741 thiss!10976 rules!1036)))

(assert (=> d!825529 (= (lemma!569 rules!1036 thiss!10976 rules!1036) lt!1012970)))

(declare-fun b!2847539 () Bool)

(declare-fun Unit!47569 () Unit!47567)

(assert (=> b!2847539 (= e!1804368 Unit!47569)))

(declare-fun b!2847540 () Bool)

(declare-fun Unit!47570 () Unit!47567)

(assert (=> b!2847540 (= e!1804368 Unit!47570)))

(declare-fun lt!1012971 () Unit!47567)

(assert (=> b!2847540 (= lt!1012971 (lemma!569 rules!1036 thiss!10976 (t!232962 rules!1036)))))

(assert (= (and d!825529 c!459452) b!2847539))

(assert (= (and d!825529 (not c!459452)) b!2847540))

(declare-fun m!3275015 () Bool)

(assert (=> d!825529 m!3275015))

(assert (=> d!825529 m!3275015))

(declare-fun m!3275017 () Bool)

(assert (=> d!825529 m!3275017))

(assert (=> d!825529 m!3274965))

(declare-fun m!3275019 () Bool)

(assert (=> b!2847540 m!3275019))

(assert (=> b!2847494 d!825529))

(declare-fun d!825533 () Bool)

(assert (=> d!825533 (= (inv!45850 (tag!5580 (h!39233 rules!1036))) (= (mod (str.len (value!163100 (tag!5580 (h!39233 rules!1036)))) 2) 0))))

(assert (=> b!2847492 d!825533))

(declare-fun d!825535 () Bool)

(declare-fun res!1183886 () Bool)

(declare-fun e!1804381 () Bool)

(assert (=> d!825535 (=> (not res!1183886) (not e!1804381))))

(declare-fun semiInverseModEq!2118 (Int Int) Bool)

(assert (=> d!825535 (= res!1183886 (semiInverseModEq!2118 (toChars!6991 (transformation!5076 (h!39233 rules!1036))) (toValue!7132 (transformation!5076 (h!39233 rules!1036)))))))

(assert (=> d!825535 (= (inv!45852 (transformation!5076 (h!39233 rules!1036))) e!1804381)))

(declare-fun b!2847565 () Bool)

(declare-fun equivClasses!2017 (Int Int) Bool)

(assert (=> b!2847565 (= e!1804381 (equivClasses!2017 (toChars!6991 (transformation!5076 (h!39233 rules!1036))) (toValue!7132 (transformation!5076 (h!39233 rules!1036)))))))

(assert (= (and d!825535 res!1183886) b!2847565))

(declare-fun m!3275027 () Bool)

(assert (=> d!825535 m!3275027))

(declare-fun m!3275029 () Bool)

(assert (=> b!2847565 m!3275029))

(assert (=> b!2847492 d!825535))

(declare-fun d!825537 () Bool)

(assert (=> d!825537 true))

(declare-fun lt!1012976 () Bool)

(declare-fun lambda!104557 () Int)

(declare-fun forall!6941 (List!33937 Int) Bool)

(assert (=> d!825537 (= lt!1012976 (forall!6941 rules!1036 lambda!104557))))

(declare-fun e!1804393 () Bool)

(assert (=> d!825537 (= lt!1012976 e!1804393)))

(declare-fun res!1183891 () Bool)

(assert (=> d!825537 (=> res!1183891 e!1804393)))

(assert (=> d!825537 (= res!1183891 (not ((_ is Cons!33813) rules!1036)))))

(assert (=> d!825537 (= (rulesValidInductive!1741 thiss!10976 rules!1036) lt!1012976)))

(declare-fun b!2847575 () Bool)

(declare-fun e!1804392 () Bool)

(assert (=> b!2847575 (= e!1804393 e!1804392)))

(declare-fun res!1183892 () Bool)

(assert (=> b!2847575 (=> (not res!1183892) (not e!1804392))))

(declare-fun ruleValid!1607 (LexerInterface!4665 Rule!9952) Bool)

(assert (=> b!2847575 (= res!1183892 (ruleValid!1607 thiss!10976 (h!39233 rules!1036)))))

(declare-fun b!2847576 () Bool)

(assert (=> b!2847576 (= e!1804392 (rulesValidInductive!1741 thiss!10976 (t!232962 rules!1036)))))

(assert (= (and d!825537 (not res!1183891)) b!2847575))

(assert (= (and b!2847575 res!1183892) b!2847576))

(declare-fun m!3275037 () Bool)

(assert (=> d!825537 m!3275037))

(declare-fun m!3275039 () Bool)

(assert (=> b!2847575 m!3275039))

(declare-fun m!3275041 () Bool)

(assert (=> b!2847576 m!3275041))

(assert (=> b!2847491 d!825537))

(declare-fun e!1804396 () Bool)

(assert (=> b!2847492 (= tp!913828 e!1804396)))

(declare-fun b!2847592 () Bool)

(declare-fun tp!913866 () Bool)

(declare-fun tp!913870 () Bool)

(assert (=> b!2847592 (= e!1804396 (and tp!913866 tp!913870))))

(declare-fun b!2847591 () Bool)

(declare-fun tp!913868 () Bool)

(assert (=> b!2847591 (= e!1804396 tp!913868)))

(declare-fun b!2847590 () Bool)

(declare-fun tp!913869 () Bool)

(declare-fun tp!913867 () Bool)

(assert (=> b!2847590 (= e!1804396 (and tp!913869 tp!913867))))

(declare-fun b!2847589 () Bool)

(declare-fun tp_is_empty!14727 () Bool)

(assert (=> b!2847589 (= e!1804396 tp_is_empty!14727)))

(assert (= (and b!2847492 ((_ is ElementMatch!8491) (regex!5076 (h!39233 rules!1036)))) b!2847589))

(assert (= (and b!2847492 ((_ is Concat!13798) (regex!5076 (h!39233 rules!1036)))) b!2847590))

(assert (= (and b!2847492 ((_ is Star!8491) (regex!5076 (h!39233 rules!1036)))) b!2847591))

(assert (= (and b!2847492 ((_ is Union!8491) (regex!5076 (h!39233 rules!1036)))) b!2847592))

(declare-fun b!2847603 () Bool)

(declare-fun b_free!82745 () Bool)

(declare-fun b_next!83449 () Bool)

(assert (=> b!2847603 (= b_free!82745 (not b_next!83449))))

(declare-fun tp!913879 () Bool)

(declare-fun b_and!208987 () Bool)

(assert (=> b!2847603 (= tp!913879 b_and!208987)))

(declare-fun b_free!82747 () Bool)

(declare-fun b_next!83451 () Bool)

(assert (=> b!2847603 (= b_free!82747 (not b_next!83451))))

(declare-fun tp!913882 () Bool)

(declare-fun b_and!208989 () Bool)

(assert (=> b!2847603 (= tp!913882 b_and!208989)))

(declare-fun e!1804406 () Bool)

(assert (=> b!2847603 (= e!1804406 (and tp!913879 tp!913882))))

(declare-fun tp!913881 () Bool)

(declare-fun b!2847602 () Bool)

(declare-fun e!1804405 () Bool)

(assert (=> b!2847602 (= e!1804405 (and tp!913881 (inv!45850 (tag!5580 (h!39233 (t!232962 rules!1036)))) (inv!45852 (transformation!5076 (h!39233 (t!232962 rules!1036)))) e!1804406))))

(declare-fun b!2847601 () Bool)

(declare-fun e!1804408 () Bool)

(declare-fun tp!913880 () Bool)

(assert (=> b!2847601 (= e!1804408 (and e!1804405 tp!913880))))

(assert (=> b!2847493 (= tp!913827 e!1804408)))

(assert (= b!2847602 b!2847603))

(assert (= b!2847601 b!2847602))

(assert (= (and b!2847493 ((_ is Cons!33813) (t!232962 rules!1036))) b!2847601))

(declare-fun m!3275043 () Bool)

(assert (=> b!2847602 m!3275043))

(declare-fun m!3275045 () Bool)

(assert (=> b!2847602 m!3275045))

(declare-fun b_lambda!85567 () Bool)

(assert (= b_lambda!85559 (or b!2847494 b_lambda!85567)))

(declare-fun bs!519982 () Bool)

(declare-fun d!825543 () Bool)

(assert (= bs!519982 (and d!825543 b!2847494)))

(assert (=> bs!519982 (= (dynLambda!14204 lambda!104538 (h!39233 rules!1036)) (regex!5076 (h!39233 rules!1036)))))

(assert (=> b!2847524 d!825543))

(declare-fun b_lambda!85569 () Bool)

(assert (= b_lambda!85555 (or b!2847494 b_lambda!85569)))

(declare-fun bs!519983 () Bool)

(declare-fun d!825545 () Bool)

(assert (= bs!519983 (and d!825545 b!2847494)))

(declare-fun validRegex!3372 (Regex!8491) Bool)

(assert (=> bs!519983 (= (dynLambda!14202 lambda!104539 (h!39234 (map!7257 rules!1036 lambda!104538))) (validRegex!3372 (h!39234 (map!7257 rules!1036 lambda!104538))))))

(declare-fun m!3275047 () Bool)

(assert (=> bs!519983 m!3275047))

(assert (=> b!2847508 d!825545))

(check-sat (not b!2847602) (not b_next!83443) (not b!2847540) (not b_next!83451) tp_is_empty!14727 (not d!825535) (not bs!519983) (not b!2847601) (not b!2847575) (not d!825529) (not b!2847592) (not b_next!83449) (not b!2847565) b_and!208979 (not b_next!83441) (not d!825523) (not b!2847524) (not b!2847591) (not b!2847576) b_and!208989 (not b_lambda!85569) (not b!2847509) (not b!2847590) b_and!208981 (not b_lambda!85567) (not d!825537) b_and!208987)
(check-sat b_and!208979 (not b_next!83443) (not b_next!83451) b_and!208981 b_and!208987 (not b_next!83449) (not b_next!83441) b_and!208989)
