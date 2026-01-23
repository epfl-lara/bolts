; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59248 () Bool)

(assert start!59248)

(declare-fun b!617849 () Bool)

(declare-fun b_free!17817 () Bool)

(declare-fun b_next!17833 () Bool)

(assert (=> b!617849 (= b_free!17817 (not b_next!17833))))

(declare-fun tp!191230 () Bool)

(declare-fun b_and!61331 () Bool)

(assert (=> b!617849 (= tp!191230 b_and!61331)))

(declare-fun b_free!17819 () Bool)

(declare-fun b_next!17835 () Bool)

(assert (=> b!617849 (= b_free!17819 (not b_next!17835))))

(declare-fun tp!191226 () Bool)

(declare-fun b_and!61333 () Bool)

(assert (=> b!617849 (= tp!191226 b_and!61333)))

(declare-fun b!617853 () Bool)

(declare-fun b_free!17821 () Bool)

(declare-fun b_next!17837 () Bool)

(assert (=> b!617853 (= b_free!17821 (not b_next!17837))))

(declare-fun tp!191229 () Bool)

(declare-fun b_and!61335 () Bool)

(assert (=> b!617853 (= tp!191229 b_and!61335)))

(declare-fun b_free!17823 () Bool)

(declare-fun b_next!17839 () Bool)

(assert (=> b!617853 (= b_free!17823 (not b_next!17839))))

(declare-fun tp!191223 () Bool)

(declare-fun b_and!61337 () Bool)

(assert (=> b!617853 (= tp!191223 b_and!61337)))

(declare-fun e!374757 () Bool)

(assert (=> b!617849 (= e!374757 (and tp!191230 tp!191226))))

(declare-fun b!617850 () Bool)

(declare-fun res!269049 () Bool)

(declare-fun e!374763 () Bool)

(assert (=> b!617850 (=> (not res!269049) (not e!374763))))

(declare-datatypes ((List!6261 0))(
  ( (Nil!6251) (Cons!6251 (h!11652 (_ BitVec 16)) (t!81500 List!6261)) )
))
(declare-datatypes ((TokenValue!1289 0))(
  ( (FloatLiteralValue!2578 (text!9468 List!6261)) (TokenValueExt!1288 (__x!4478 Int)) (Broken!6445 (value!40890 List!6261)) (Object!1298) (End!1289) (Def!1289) (Underscore!1289) (Match!1289) (Else!1289) (Error!1289) (Case!1289) (If!1289) (Extends!1289) (Abstract!1289) (Class!1289) (Val!1289) (DelimiterValue!2578 (del!1349 List!6261)) (KeywordValue!1295 (value!40891 List!6261)) (CommentValue!2578 (value!40892 List!6261)) (WhitespaceValue!2578 (value!40893 List!6261)) (IndentationValue!1289 (value!40894 List!6261)) (String!8192) (Int32!1289) (Broken!6446 (value!40895 List!6261)) (Boolean!1290) (Unit!11391) (OperatorValue!1292 (op!1349 List!6261)) (IdentifierValue!2578 (value!40896 List!6261)) (IdentifierValue!2579 (value!40897 List!6261)) (WhitespaceValue!2579 (value!40898 List!6261)) (True!2578) (False!2578) (Broken!6447 (value!40899 List!6261)) (Broken!6448 (value!40900 List!6261)) (True!2579) (RightBrace!1289) (RightBracket!1289) (Colon!1289) (Null!1289) (Comma!1289) (LeftBracket!1289) (False!2579) (LeftBrace!1289) (ImaginaryLiteralValue!1289 (text!9469 List!6261)) (StringLiteralValue!3867 (value!40901 List!6261)) (EOFValue!1289 (value!40902 List!6261)) (IdentValue!1289 (value!40903 List!6261)) (DelimiterValue!2579 (value!40904 List!6261)) (DedentValue!1289 (value!40905 List!6261)) (NewLineValue!1289 (value!40906 List!6261)) (IntegerValue!3867 (value!40907 (_ BitVec 32)) (text!9470 List!6261)) (IntegerValue!3868 (value!40908 Int) (text!9471 List!6261)) (Times!1289) (Or!1289) (Equal!1289) (Minus!1289) (Broken!6449 (value!40909 List!6261)) (And!1289) (Div!1289) (LessEqual!1289) (Mod!1289) (Concat!2888) (Not!1289) (Plus!1289) (SpaceValue!1289 (value!40910 List!6261)) (IntegerValue!3869 (value!40911 Int) (text!9472 List!6261)) (StringLiteralValue!3868 (text!9473 List!6261)) (FloatLiteralValue!2579 (text!9474 List!6261)) (BytesLiteralValue!1289 (value!40912 List!6261)) (CommentValue!2579 (value!40913 List!6261)) (StringLiteralValue!3869 (value!40914 List!6261)) (ErrorTokenValue!1289 (msg!1350 List!6261)) )
))
(declare-datatypes ((C!4124 0))(
  ( (C!4125 (val!2288 Int)) )
))
(declare-datatypes ((Regex!1599 0))(
  ( (ElementMatch!1599 (c!113840 C!4124)) (Concat!2889 (regOne!3710 Regex!1599) (regTwo!3710 Regex!1599)) (EmptyExpr!1599) (Star!1599 (reg!1928 Regex!1599)) (EmptyLang!1599) (Union!1599 (regOne!3711 Regex!1599) (regTwo!3711 Regex!1599)) )
))
(declare-datatypes ((String!8193 0))(
  ( (String!8194 (value!40915 String)) )
))
(declare-datatypes ((List!6262 0))(
  ( (Nil!6252) (Cons!6252 (h!11653 C!4124) (t!81501 List!6262)) )
))
(declare-datatypes ((IArray!3965 0))(
  ( (IArray!3966 (innerList!2040 List!6262)) )
))
(declare-datatypes ((Conc!1982 0))(
  ( (Node!1982 (left!4968 Conc!1982) (right!5298 Conc!1982) (csize!4194 Int) (cheight!2193 Int)) (Leaf!3123 (xs!4619 IArray!3965) (csize!4195 Int)) (Empty!1982) )
))
(declare-datatypes ((BalanceConc!3972 0))(
  ( (BalanceConc!3973 (c!113841 Conc!1982)) )
))
(declare-datatypes ((TokenValueInjection!2346 0))(
  ( (TokenValueInjection!2347 (toValue!2178 Int) (toChars!2037 Int)) )
))
(declare-datatypes ((Rule!2330 0))(
  ( (Rule!2331 (regex!1265 Regex!1599) (tag!1527 String!8193) (isSeparator!1265 Bool) (transformation!1265 TokenValueInjection!2346)) )
))
(declare-datatypes ((List!6263 0))(
  ( (Nil!6253) (Cons!6253 (h!11654 Rule!2330) (t!81502 List!6263)) )
))
(declare-fun rules!3744 () List!6263)

(declare-fun r!3983 () Rule!2330)

(declare-fun contains!1482 (List!6263 Rule!2330) Bool)

(assert (=> b!617850 (= res!269049 (contains!1482 rules!3744 r!3983))))

(declare-fun b!617851 () Bool)

(declare-fun res!269047 () Bool)

(assert (=> b!617851 (=> (not res!269047) (not e!374763))))

(declare-fun p!2908 () List!6262)

(declare-fun input!3215 () List!6262)

(declare-fun isPrefix!895 (List!6262 List!6262) Bool)

(assert (=> b!617851 (= res!269047 (isPrefix!895 p!2908 input!3215))))

(declare-fun b!617852 () Bool)

(declare-datatypes ((LexerInterface!1153 0))(
  ( (LexerInterfaceExt!1150 (__x!4479 Int)) (Lexer!1151) )
))
(declare-fun thiss!25598 () LexerInterface!1153)

(declare-fun rulesValidInductive!484 (LexerInterface!1153 List!6263) Bool)

(assert (=> b!617852 (= e!374763 (not (rulesValidInductive!484 thiss!25598 rules!3744)))))

(declare-fun res!269051 () Bool)

(assert (=> start!59248 (=> (not res!269051) (not e!374763))))

(get-info :version)

(assert (=> start!59248 (= res!269051 ((_ is Lexer!1151) thiss!25598))))

(assert (=> start!59248 e!374763))

(declare-fun e!374759 () Bool)

(assert (=> start!59248 e!374759))

(declare-fun e!374761 () Bool)

(assert (=> start!59248 e!374761))

(declare-fun e!374756 () Bool)

(assert (=> start!59248 e!374756))

(assert (=> start!59248 true))

(declare-fun e!374762 () Bool)

(assert (=> start!59248 e!374762))

(declare-fun e!374758 () Bool)

(assert (=> b!617853 (= e!374758 (and tp!191229 tp!191223))))

(declare-fun b!617854 () Bool)

(declare-fun res!269046 () Bool)

(assert (=> b!617854 (=> (not res!269046) (not e!374763))))

(declare-datatypes ((Token!2254 0))(
  ( (Token!2255 (value!40916 TokenValue!1289) (rule!2055 Rule!2330) (size!4874 Int) (originalCharacters!1298 List!6262)) )
))
(declare-datatypes ((tuple2!7062 0))(
  ( (tuple2!7063 (_1!3795 Token!2254) (_2!3795 List!6262)) )
))
(declare-datatypes ((Option!1610 0))(
  ( (None!1609) (Some!1609 (v!16530 tuple2!7062)) )
))
(declare-fun isEmpty!4499 (Option!1610) Bool)

(declare-fun maxPrefix!843 (LexerInterface!1153 List!6263 List!6262) Option!1610)

(assert (=> b!617854 (= res!269046 (isEmpty!4499 (maxPrefix!843 thiss!25598 rules!3744 input!3215)))))

(declare-fun b!617855 () Bool)

(declare-fun res!269048 () Bool)

(assert (=> b!617855 (=> (not res!269048) (not e!374763))))

(declare-fun isEmpty!4500 (List!6263) Bool)

(assert (=> b!617855 (= res!269048 (not (isEmpty!4500 rules!3744)))))

(declare-fun b!617856 () Bool)

(declare-fun e!374755 () Bool)

(declare-fun tp!191224 () Bool)

(assert (=> b!617856 (= e!374756 (and e!374755 tp!191224))))

(declare-fun b!617857 () Bool)

(declare-fun tp_is_empty!3557 () Bool)

(declare-fun tp!191227 () Bool)

(assert (=> b!617857 (= e!374761 (and tp_is_empty!3557 tp!191227))))

(declare-fun tp!191231 () Bool)

(declare-fun b!617858 () Bool)

(declare-fun inv!7932 (String!8193) Bool)

(declare-fun inv!7934 (TokenValueInjection!2346) Bool)

(assert (=> b!617858 (= e!374755 (and tp!191231 (inv!7932 (tag!1527 (h!11654 rules!3744))) (inv!7934 (transformation!1265 (h!11654 rules!3744))) e!374757))))

(declare-fun tp!191225 () Bool)

(declare-fun b!617859 () Bool)

(assert (=> b!617859 (= e!374759 (and tp!191225 (inv!7932 (tag!1527 r!3983)) (inv!7934 (transformation!1265 r!3983)) e!374758))))

(declare-fun b!617860 () Bool)

(declare-fun res!269050 () Bool)

(assert (=> b!617860 (=> (not res!269050) (not e!374763))))

(declare-fun rulesInvariant!1114 (LexerInterface!1153 List!6263) Bool)

(assert (=> b!617860 (= res!269050 (rulesInvariant!1114 thiss!25598 rules!3744))))

(declare-fun b!617861 () Bool)

(declare-fun tp!191228 () Bool)

(assert (=> b!617861 (= e!374762 (and tp_is_empty!3557 tp!191228))))

(assert (= (and start!59248 res!269051) b!617851))

(assert (= (and b!617851 res!269047) b!617855))

(assert (= (and b!617855 res!269048) b!617860))

(assert (= (and b!617860 res!269050) b!617850))

(assert (= (and b!617850 res!269049) b!617854))

(assert (= (and b!617854 res!269046) b!617852))

(assert (= b!617859 b!617853))

(assert (= start!59248 b!617859))

(assert (= (and start!59248 ((_ is Cons!6252) p!2908)) b!617857))

(assert (= b!617858 b!617849))

(assert (= b!617856 b!617858))

(assert (= (and start!59248 ((_ is Cons!6253) rules!3744)) b!617856))

(assert (= (and start!59248 ((_ is Cons!6252) input!3215)) b!617861))

(declare-fun m!886029 () Bool)

(assert (=> b!617860 m!886029))

(declare-fun m!886031 () Bool)

(assert (=> b!617858 m!886031))

(declare-fun m!886033 () Bool)

(assert (=> b!617858 m!886033))

(declare-fun m!886035 () Bool)

(assert (=> b!617851 m!886035))

(declare-fun m!886037 () Bool)

(assert (=> b!617855 m!886037))

(declare-fun m!886039 () Bool)

(assert (=> b!617850 m!886039))

(declare-fun m!886041 () Bool)

(assert (=> b!617854 m!886041))

(assert (=> b!617854 m!886041))

(declare-fun m!886043 () Bool)

(assert (=> b!617854 m!886043))

(declare-fun m!886045 () Bool)

(assert (=> b!617852 m!886045))

(declare-fun m!886047 () Bool)

(assert (=> b!617859 m!886047))

(declare-fun m!886049 () Bool)

(assert (=> b!617859 m!886049))

(check-sat b_and!61337 b_and!61335 (not b_next!17833) b_and!61333 (not b_next!17839) (not b!617855) tp_is_empty!3557 b_and!61331 (not b!617857) (not b!617861) (not b!617854) (not b!617859) (not b!617852) (not b_next!17835) (not b!617858) (not b_next!17837) (not b!617856) (not b!617851) (not b!617860) (not b!617850))
(check-sat (not b_next!17837) b_and!61337 b_and!61335 (not b_next!17833) b_and!61333 (not b_next!17839) b_and!61331 (not b_next!17835))
(get-model)

(declare-fun d!216759 () Bool)

(declare-fun res!269056 () Bool)

(declare-fun e!374767 () Bool)

(assert (=> d!216759 (=> (not res!269056) (not e!374767))))

(declare-fun rulesValid!471 (LexerInterface!1153 List!6263) Bool)

(assert (=> d!216759 (= res!269056 (rulesValid!471 thiss!25598 rules!3744))))

(assert (=> d!216759 (= (rulesInvariant!1114 thiss!25598 rules!3744) e!374767)))

(declare-fun b!617864 () Bool)

(declare-datatypes ((List!6264 0))(
  ( (Nil!6254) (Cons!6254 (h!11655 String!8193) (t!81503 List!6264)) )
))
(declare-fun noDuplicateTag!471 (LexerInterface!1153 List!6263 List!6264) Bool)

(assert (=> b!617864 (= e!374767 (noDuplicateTag!471 thiss!25598 rules!3744 Nil!6254))))

(assert (= (and d!216759 res!269056) b!617864))

(declare-fun m!886051 () Bool)

(assert (=> d!216759 m!886051))

(declare-fun m!886053 () Bool)

(assert (=> b!617864 m!886053))

(assert (=> b!617860 d!216759))

(declare-fun d!216761 () Bool)

(assert (=> d!216761 (= (isEmpty!4500 rules!3744) ((_ is Nil!6253) rules!3744))))

(assert (=> b!617855 d!216761))

(declare-fun d!216763 () Bool)

(declare-fun lt!264621 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1139 (List!6263) (InoxSet Rule!2330))

(assert (=> d!216763 (= lt!264621 (select (content!1139 rules!3744) r!3983))))

(declare-fun e!374773 () Bool)

(assert (=> d!216763 (= lt!264621 e!374773)))

(declare-fun res!269062 () Bool)

(assert (=> d!216763 (=> (not res!269062) (not e!374773))))

(assert (=> d!216763 (= res!269062 ((_ is Cons!6253) rules!3744))))

(assert (=> d!216763 (= (contains!1482 rules!3744 r!3983) lt!264621)))

(declare-fun b!617869 () Bool)

(declare-fun e!374772 () Bool)

(assert (=> b!617869 (= e!374773 e!374772)))

(declare-fun res!269061 () Bool)

(assert (=> b!617869 (=> res!269061 e!374772)))

(assert (=> b!617869 (= res!269061 (= (h!11654 rules!3744) r!3983))))

(declare-fun b!617870 () Bool)

(assert (=> b!617870 (= e!374772 (contains!1482 (t!81502 rules!3744) r!3983))))

(assert (= (and d!216763 res!269062) b!617869))

(assert (= (and b!617869 (not res!269061)) b!617870))

(declare-fun m!886055 () Bool)

(assert (=> d!216763 m!886055))

(declare-fun m!886057 () Bool)

(assert (=> d!216763 m!886057))

(declare-fun m!886059 () Bool)

(assert (=> b!617870 m!886059))

(assert (=> b!617850 d!216763))

(declare-fun d!216765 () Bool)

(assert (=> d!216765 (= (inv!7932 (tag!1527 r!3983)) (= (mod (str.len (value!40915 (tag!1527 r!3983))) 2) 0))))

(assert (=> b!617859 d!216765))

(declare-fun d!216767 () Bool)

(declare-fun res!269067 () Bool)

(declare-fun e!374776 () Bool)

(assert (=> d!216767 (=> (not res!269067) (not e!374776))))

(declare-fun semiInverseModEq!508 (Int Int) Bool)

(assert (=> d!216767 (= res!269067 (semiInverseModEq!508 (toChars!2037 (transformation!1265 r!3983)) (toValue!2178 (transformation!1265 r!3983))))))

(assert (=> d!216767 (= (inv!7934 (transformation!1265 r!3983)) e!374776)))

(declare-fun b!617873 () Bool)

(declare-fun equivClasses!491 (Int Int) Bool)

(assert (=> b!617873 (= e!374776 (equivClasses!491 (toChars!2037 (transformation!1265 r!3983)) (toValue!2178 (transformation!1265 r!3983))))))

(assert (= (and d!216767 res!269067) b!617873))

(declare-fun m!886061 () Bool)

(assert (=> d!216767 m!886061))

(declare-fun m!886063 () Bool)

(assert (=> b!617873 m!886063))

(assert (=> b!617859 d!216767))

(declare-fun d!216769 () Bool)

(assert (=> d!216769 (= (isEmpty!4499 (maxPrefix!843 thiss!25598 rules!3744 input!3215)) (not ((_ is Some!1609) (maxPrefix!843 thiss!25598 rules!3744 input!3215))))))

(assert (=> b!617854 d!216769))

(declare-fun b!617912 () Bool)

(declare-fun res!269104 () Bool)

(declare-fun e!374801 () Bool)

(assert (=> b!617912 (=> (not res!269104) (not e!374801))))

(declare-fun lt!264639 () Option!1610)

(declare-fun size!4875 (List!6262) Int)

(declare-fun get!2398 (Option!1610) tuple2!7062)

(assert (=> b!617912 (= res!269104 (< (size!4875 (_2!3795 (get!2398 lt!264639))) (size!4875 input!3215)))))

(declare-fun b!617913 () Bool)

(declare-fun res!269102 () Bool)

(assert (=> b!617913 (=> (not res!269102) (not e!374801))))

(declare-fun list!2611 (BalanceConc!3972) List!6262)

(declare-fun charsOf!879 (Token!2254) BalanceConc!3972)

(assert (=> b!617913 (= res!269102 (= (list!2611 (charsOf!879 (_1!3795 (get!2398 lt!264639)))) (originalCharacters!1298 (_1!3795 (get!2398 lt!264639)))))))

(declare-fun b!617914 () Bool)

(declare-fun res!269105 () Bool)

(assert (=> b!617914 (=> (not res!269105) (not e!374801))))

(declare-fun matchR!685 (Regex!1599 List!6262) Bool)

(assert (=> b!617914 (= res!269105 (matchR!685 (regex!1265 (rule!2055 (_1!3795 (get!2398 lt!264639)))) (list!2611 (charsOf!879 (_1!3795 (get!2398 lt!264639))))))))

(declare-fun b!617915 () Bool)

(declare-fun res!269108 () Bool)

(assert (=> b!617915 (=> (not res!269108) (not e!374801))))

(declare-fun ++!1738 (List!6262 List!6262) List!6262)

(assert (=> b!617915 (= res!269108 (= (++!1738 (list!2611 (charsOf!879 (_1!3795 (get!2398 lt!264639)))) (_2!3795 (get!2398 lt!264639))) input!3215))))

(declare-fun b!617916 () Bool)

(declare-fun res!269103 () Bool)

(assert (=> b!617916 (=> (not res!269103) (not e!374801))))

(declare-fun apply!1501 (TokenValueInjection!2346 BalanceConc!3972) TokenValue!1289)

(declare-fun seqFromList!1424 (List!6262) BalanceConc!3972)

(assert (=> b!617916 (= res!269103 (= (value!40916 (_1!3795 (get!2398 lt!264639))) (apply!1501 (transformation!1265 (rule!2055 (_1!3795 (get!2398 lt!264639)))) (seqFromList!1424 (originalCharacters!1298 (_1!3795 (get!2398 lt!264639)))))))))

(declare-fun bm!41079 () Bool)

(declare-fun call!41084 () Option!1610)

(declare-fun maxPrefixOneRule!497 (LexerInterface!1153 Rule!2330 List!6262) Option!1610)

(assert (=> bm!41079 (= call!41084 (maxPrefixOneRule!497 thiss!25598 (h!11654 rules!3744) input!3215))))

(declare-fun b!617917 () Bool)

(declare-fun e!374802 () Option!1610)

(declare-fun lt!264638 () Option!1610)

(declare-fun lt!264641 () Option!1610)

(assert (=> b!617917 (= e!374802 (ite (and ((_ is None!1609) lt!264638) ((_ is None!1609) lt!264641)) None!1609 (ite ((_ is None!1609) lt!264641) lt!264638 (ite ((_ is None!1609) lt!264638) lt!264641 (ite (>= (size!4874 (_1!3795 (v!16530 lt!264638))) (size!4874 (_1!3795 (v!16530 lt!264641)))) lt!264638 lt!264641)))))))

(assert (=> b!617917 (= lt!264638 call!41084)))

(assert (=> b!617917 (= lt!264641 (maxPrefix!843 thiss!25598 (t!81502 rules!3744) input!3215))))

(declare-fun b!617919 () Bool)

(assert (=> b!617919 (= e!374802 call!41084)))

(declare-fun b!617920 () Bool)

(assert (=> b!617920 (= e!374801 (contains!1482 rules!3744 (rule!2055 (_1!3795 (get!2398 lt!264639)))))))

(declare-fun b!617918 () Bool)

(declare-fun e!374800 () Bool)

(assert (=> b!617918 (= e!374800 e!374801)))

(declare-fun res!269107 () Bool)

(assert (=> b!617918 (=> (not res!269107) (not e!374801))))

(declare-fun isDefined!1412 (Option!1610) Bool)

(assert (=> b!617918 (= res!269107 (isDefined!1412 lt!264639))))

(declare-fun d!216771 () Bool)

(assert (=> d!216771 e!374800))

(declare-fun res!269106 () Bool)

(assert (=> d!216771 (=> res!269106 e!374800)))

(assert (=> d!216771 (= res!269106 (isEmpty!4499 lt!264639))))

(assert (=> d!216771 (= lt!264639 e!374802)))

(declare-fun c!113844 () Bool)

(assert (=> d!216771 (= c!113844 (and ((_ is Cons!6253) rules!3744) ((_ is Nil!6253) (t!81502 rules!3744))))))

(declare-datatypes ((Unit!11392 0))(
  ( (Unit!11393) )
))
(declare-fun lt!264640 () Unit!11392)

(declare-fun lt!264637 () Unit!11392)

(assert (=> d!216771 (= lt!264640 lt!264637)))

(assert (=> d!216771 (isPrefix!895 input!3215 input!3215)))

(declare-fun lemmaIsPrefixRefl!612 (List!6262 List!6262) Unit!11392)

(assert (=> d!216771 (= lt!264637 (lemmaIsPrefixRefl!612 input!3215 input!3215))))

(assert (=> d!216771 (rulesValidInductive!484 thiss!25598 rules!3744)))

(assert (=> d!216771 (= (maxPrefix!843 thiss!25598 rules!3744 input!3215) lt!264639)))

(assert (= (and d!216771 c!113844) b!617919))

(assert (= (and d!216771 (not c!113844)) b!617917))

(assert (= (or b!617919 b!617917) bm!41079))

(assert (= (and d!216771 (not res!269106)) b!617918))

(assert (= (and b!617918 res!269107) b!617913))

(assert (= (and b!617913 res!269102) b!617912))

(assert (= (and b!617912 res!269104) b!617915))

(assert (= (and b!617915 res!269108) b!617916))

(assert (= (and b!617916 res!269103) b!617914))

(assert (= (and b!617914 res!269105) b!617920))

(declare-fun m!886087 () Bool)

(assert (=> bm!41079 m!886087))

(declare-fun m!886089 () Bool)

(assert (=> b!617915 m!886089))

(declare-fun m!886091 () Bool)

(assert (=> b!617915 m!886091))

(assert (=> b!617915 m!886091))

(declare-fun m!886093 () Bool)

(assert (=> b!617915 m!886093))

(assert (=> b!617915 m!886093))

(declare-fun m!886095 () Bool)

(assert (=> b!617915 m!886095))

(assert (=> b!617912 m!886089))

(declare-fun m!886097 () Bool)

(assert (=> b!617912 m!886097))

(declare-fun m!886099 () Bool)

(assert (=> b!617912 m!886099))

(declare-fun m!886101 () Bool)

(assert (=> b!617917 m!886101))

(assert (=> b!617913 m!886089))

(assert (=> b!617913 m!886091))

(assert (=> b!617913 m!886091))

(assert (=> b!617913 m!886093))

(assert (=> b!617920 m!886089))

(declare-fun m!886103 () Bool)

(assert (=> b!617920 m!886103))

(assert (=> b!617916 m!886089))

(declare-fun m!886105 () Bool)

(assert (=> b!617916 m!886105))

(assert (=> b!617916 m!886105))

(declare-fun m!886107 () Bool)

(assert (=> b!617916 m!886107))

(declare-fun m!886109 () Bool)

(assert (=> d!216771 m!886109))

(declare-fun m!886111 () Bool)

(assert (=> d!216771 m!886111))

(declare-fun m!886113 () Bool)

(assert (=> d!216771 m!886113))

(assert (=> d!216771 m!886045))

(declare-fun m!886115 () Bool)

(assert (=> b!617918 m!886115))

(assert (=> b!617914 m!886089))

(assert (=> b!617914 m!886091))

(assert (=> b!617914 m!886091))

(assert (=> b!617914 m!886093))

(assert (=> b!617914 m!886093))

(declare-fun m!886117 () Bool)

(assert (=> b!617914 m!886117))

(assert (=> b!617854 d!216771))

(declare-fun d!216787 () Bool)

(assert (=> d!216787 true))

(declare-fun lt!264644 () Bool)

(declare-fun lambda!16239 () Int)

(declare-fun forall!1567 (List!6263 Int) Bool)

(assert (=> d!216787 (= lt!264644 (forall!1567 rules!3744 lambda!16239))))

(declare-fun e!374808 () Bool)

(assert (=> d!216787 (= lt!264644 e!374808)))

(declare-fun res!269113 () Bool)

(assert (=> d!216787 (=> res!269113 e!374808)))

(assert (=> d!216787 (= res!269113 (not ((_ is Cons!6253) rules!3744)))))

(assert (=> d!216787 (= (rulesValidInductive!484 thiss!25598 rules!3744) lt!264644)))

(declare-fun b!617925 () Bool)

(declare-fun e!374807 () Bool)

(assert (=> b!617925 (= e!374808 e!374807)))

(declare-fun res!269114 () Bool)

(assert (=> b!617925 (=> (not res!269114) (not e!374807))))

(declare-fun ruleValid!444 (LexerInterface!1153 Rule!2330) Bool)

(assert (=> b!617925 (= res!269114 (ruleValid!444 thiss!25598 (h!11654 rules!3744)))))

(declare-fun b!617926 () Bool)

(assert (=> b!617926 (= e!374807 (rulesValidInductive!484 thiss!25598 (t!81502 rules!3744)))))

(assert (= (and d!216787 (not res!269113)) b!617925))

(assert (= (and b!617925 res!269114) b!617926))

(declare-fun m!886119 () Bool)

(assert (=> d!216787 m!886119))

(declare-fun m!886121 () Bool)

(assert (=> b!617925 m!886121))

(declare-fun m!886123 () Bool)

(assert (=> b!617926 m!886123))

(assert (=> b!617852 d!216787))

(declare-fun d!216789 () Bool)

(assert (=> d!216789 (= (inv!7932 (tag!1527 (h!11654 rules!3744))) (= (mod (str.len (value!40915 (tag!1527 (h!11654 rules!3744)))) 2) 0))))

(assert (=> b!617858 d!216789))

(declare-fun d!216791 () Bool)

(declare-fun res!269115 () Bool)

(declare-fun e!374809 () Bool)

(assert (=> d!216791 (=> (not res!269115) (not e!374809))))

(assert (=> d!216791 (= res!269115 (semiInverseModEq!508 (toChars!2037 (transformation!1265 (h!11654 rules!3744))) (toValue!2178 (transformation!1265 (h!11654 rules!3744)))))))

(assert (=> d!216791 (= (inv!7934 (transformation!1265 (h!11654 rules!3744))) e!374809)))

(declare-fun b!617929 () Bool)

(assert (=> b!617929 (= e!374809 (equivClasses!491 (toChars!2037 (transformation!1265 (h!11654 rules!3744))) (toValue!2178 (transformation!1265 (h!11654 rules!3744)))))))

(assert (= (and d!216791 res!269115) b!617929))

(declare-fun m!886125 () Bool)

(assert (=> d!216791 m!886125))

(declare-fun m!886127 () Bool)

(assert (=> b!617929 m!886127))

(assert (=> b!617858 d!216791))

(declare-fun d!216793 () Bool)

(declare-fun e!374817 () Bool)

(assert (=> d!216793 e!374817))

(declare-fun res!269125 () Bool)

(assert (=> d!216793 (=> res!269125 e!374817)))

(declare-fun lt!264647 () Bool)

(assert (=> d!216793 (= res!269125 (not lt!264647))))

(declare-fun e!374816 () Bool)

(assert (=> d!216793 (= lt!264647 e!374816)))

(declare-fun res!269124 () Bool)

(assert (=> d!216793 (=> res!269124 e!374816)))

(assert (=> d!216793 (= res!269124 ((_ is Nil!6252) p!2908))))

(assert (=> d!216793 (= (isPrefix!895 p!2908 input!3215) lt!264647)))

(declare-fun b!617941 () Bool)

(assert (=> b!617941 (= e!374817 (>= (size!4875 input!3215) (size!4875 p!2908)))))

(declare-fun b!617939 () Bool)

(declare-fun res!269126 () Bool)

(declare-fun e!374818 () Bool)

(assert (=> b!617939 (=> (not res!269126) (not e!374818))))

(declare-fun head!1307 (List!6262) C!4124)

(assert (=> b!617939 (= res!269126 (= (head!1307 p!2908) (head!1307 input!3215)))))

(declare-fun b!617938 () Bool)

(assert (=> b!617938 (= e!374816 e!374818)))

(declare-fun res!269127 () Bool)

(assert (=> b!617938 (=> (not res!269127) (not e!374818))))

(assert (=> b!617938 (= res!269127 (not ((_ is Nil!6252) input!3215)))))

(declare-fun b!617940 () Bool)

(declare-fun tail!836 (List!6262) List!6262)

(assert (=> b!617940 (= e!374818 (isPrefix!895 (tail!836 p!2908) (tail!836 input!3215)))))

(assert (= (and d!216793 (not res!269124)) b!617938))

(assert (= (and b!617938 res!269127) b!617939))

(assert (= (and b!617939 res!269126) b!617940))

(assert (= (and d!216793 (not res!269125)) b!617941))

(assert (=> b!617941 m!886099))

(declare-fun m!886129 () Bool)

(assert (=> b!617941 m!886129))

(declare-fun m!886131 () Bool)

(assert (=> b!617939 m!886131))

(declare-fun m!886133 () Bool)

(assert (=> b!617939 m!886133))

(declare-fun m!886135 () Bool)

(assert (=> b!617940 m!886135))

(declare-fun m!886137 () Bool)

(assert (=> b!617940 m!886137))

(assert (=> b!617940 m!886135))

(assert (=> b!617940 m!886137))

(declare-fun m!886139 () Bool)

(assert (=> b!617940 m!886139))

(assert (=> b!617851 d!216793))

(declare-fun b!617946 () Bool)

(declare-fun e!374821 () Bool)

(declare-fun tp!191234 () Bool)

(assert (=> b!617946 (= e!374821 (and tp_is_empty!3557 tp!191234))))

(assert (=> b!617861 (= tp!191228 e!374821)))

(assert (= (and b!617861 ((_ is Cons!6252) (t!81501 input!3215))) b!617946))

(declare-fun b!617960 () Bool)

(declare-fun e!374824 () Bool)

(declare-fun tp!191245 () Bool)

(declare-fun tp!191248 () Bool)

(assert (=> b!617960 (= e!374824 (and tp!191245 tp!191248))))

(declare-fun b!617958 () Bool)

(declare-fun tp!191246 () Bool)

(declare-fun tp!191249 () Bool)

(assert (=> b!617958 (= e!374824 (and tp!191246 tp!191249))))

(declare-fun b!617959 () Bool)

(declare-fun tp!191247 () Bool)

(assert (=> b!617959 (= e!374824 tp!191247)))

(declare-fun b!617957 () Bool)

(assert (=> b!617957 (= e!374824 tp_is_empty!3557)))

(assert (=> b!617859 (= tp!191225 e!374824)))

(assert (= (and b!617859 ((_ is ElementMatch!1599) (regex!1265 r!3983))) b!617957))

(assert (= (and b!617859 ((_ is Concat!2889) (regex!1265 r!3983))) b!617958))

(assert (= (and b!617859 ((_ is Star!1599) (regex!1265 r!3983))) b!617959))

(assert (= (and b!617859 ((_ is Union!1599) (regex!1265 r!3983))) b!617960))

(declare-fun b!617964 () Bool)

(declare-fun e!374825 () Bool)

(declare-fun tp!191250 () Bool)

(declare-fun tp!191253 () Bool)

(assert (=> b!617964 (= e!374825 (and tp!191250 tp!191253))))

(declare-fun b!617962 () Bool)

(declare-fun tp!191251 () Bool)

(declare-fun tp!191254 () Bool)

(assert (=> b!617962 (= e!374825 (and tp!191251 tp!191254))))

(declare-fun b!617963 () Bool)

(declare-fun tp!191252 () Bool)

(assert (=> b!617963 (= e!374825 tp!191252)))

(declare-fun b!617961 () Bool)

(assert (=> b!617961 (= e!374825 tp_is_empty!3557)))

(assert (=> b!617858 (= tp!191231 e!374825)))

(assert (= (and b!617858 ((_ is ElementMatch!1599) (regex!1265 (h!11654 rules!3744)))) b!617961))

(assert (= (and b!617858 ((_ is Concat!2889) (regex!1265 (h!11654 rules!3744)))) b!617962))

(assert (= (and b!617858 ((_ is Star!1599) (regex!1265 (h!11654 rules!3744)))) b!617963))

(assert (= (and b!617858 ((_ is Union!1599) (regex!1265 (h!11654 rules!3744)))) b!617964))

(declare-fun b!617975 () Bool)

(declare-fun b_free!17825 () Bool)

(declare-fun b_next!17841 () Bool)

(assert (=> b!617975 (= b_free!17825 (not b_next!17841))))

(declare-fun tp!191263 () Bool)

(declare-fun b_and!61339 () Bool)

(assert (=> b!617975 (= tp!191263 b_and!61339)))

(declare-fun b_free!17827 () Bool)

(declare-fun b_next!17843 () Bool)

(assert (=> b!617975 (= b_free!17827 (not b_next!17843))))

(declare-fun tp!191265 () Bool)

(declare-fun b_and!61341 () Bool)

(assert (=> b!617975 (= tp!191265 b_and!61341)))

(declare-fun e!374837 () Bool)

(assert (=> b!617975 (= e!374837 (and tp!191263 tp!191265))))

(declare-fun b!617974 () Bool)

(declare-fun tp!191264 () Bool)

(declare-fun e!374835 () Bool)

(assert (=> b!617974 (= e!374835 (and tp!191264 (inv!7932 (tag!1527 (h!11654 (t!81502 rules!3744)))) (inv!7934 (transformation!1265 (h!11654 (t!81502 rules!3744)))) e!374837))))

(declare-fun b!617973 () Bool)

(declare-fun e!374836 () Bool)

(declare-fun tp!191266 () Bool)

(assert (=> b!617973 (= e!374836 (and e!374835 tp!191266))))

(assert (=> b!617856 (= tp!191224 e!374836)))

(assert (= b!617974 b!617975))

(assert (= b!617973 b!617974))

(assert (= (and b!617856 ((_ is Cons!6253) (t!81502 rules!3744))) b!617973))

(declare-fun m!886141 () Bool)

(assert (=> b!617974 m!886141))

(declare-fun m!886143 () Bool)

(assert (=> b!617974 m!886143))

(declare-fun b!617976 () Bool)

(declare-fun e!374838 () Bool)

(declare-fun tp!191267 () Bool)

(assert (=> b!617976 (= e!374838 (and tp_is_empty!3557 tp!191267))))

(assert (=> b!617857 (= tp!191227 e!374838)))

(assert (= (and b!617857 ((_ is Cons!6252) (t!81501 p!2908))) b!617976))

(check-sat b_and!61337 (not b!617918) b_and!61335 (not b!617925) b_and!61333 (not b_next!17839) (not b!617912) tp_is_empty!3557 b_and!61331 (not b!617962) (not b!617914) (not b!617964) (not b_next!17835) (not bm!41079) b_and!61341 (not d!216771) (not b_next!17837) (not d!216767) (not b!617929) (not b!617958) b_and!61339 (not b_next!17833) (not d!216787) (not b!617963) (not b!617974) (not b!617940) (not d!216791) (not b!617864) (not b!617913) (not b!617915) (not b!617916) (not b!617941) (not b_next!17841) (not b_next!17843) (not b!617946) (not d!216759) (not b!617873) (not b!617959) (not d!216763) (not b!617870) (not b!617939) (not b!617976) (not b!617926) (not b!617920) (not b!617917) (not b!617960) (not b!617973))
(check-sat b_and!61341 (not b_next!17837) b_and!61337 b_and!61335 b_and!61333 (not b_next!17839) b_and!61331 (not b_next!17841) (not b_next!17843) (not b_next!17835) b_and!61339 (not b_next!17833))
