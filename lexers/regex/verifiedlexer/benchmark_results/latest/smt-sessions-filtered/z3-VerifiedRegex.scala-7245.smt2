; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!385828 () Bool)

(assert start!385828)

(declare-fun b!4082428 () Bool)

(declare-fun b_free!113977 () Bool)

(declare-fun b_next!114681 () Bool)

(assert (=> b!4082428 (= b_free!113977 (not b_next!114681))))

(declare-fun tp!1235891 () Bool)

(declare-fun b_and!314111 () Bool)

(assert (=> b!4082428 (= tp!1235891 b_and!314111)))

(declare-fun b_free!113979 () Bool)

(declare-fun b_next!114683 () Bool)

(assert (=> b!4082428 (= b_free!113979 (not b_next!114683))))

(declare-fun tp!1235887 () Bool)

(declare-fun b_and!314113 () Bool)

(assert (=> b!4082428 (= tp!1235887 b_and!314113)))

(declare-fun b!4082430 () Bool)

(declare-fun b_free!113981 () Bool)

(declare-fun b_next!114685 () Bool)

(assert (=> b!4082430 (= b_free!113981 (not b_next!114685))))

(declare-fun tp!1235885 () Bool)

(declare-fun b_and!314115 () Bool)

(assert (=> b!4082430 (= tp!1235885 b_and!314115)))

(declare-fun b_free!113983 () Bool)

(declare-fun b_next!114687 () Bool)

(assert (=> b!4082430 (= b_free!113983 (not b_next!114687))))

(declare-fun tp!1235888 () Bool)

(declare-fun b_and!314117 () Bool)

(assert (=> b!4082430 (= tp!1235888 b_and!314117)))

(declare-fun b!4082425 () Bool)

(declare-fun e!2533798 () Bool)

(declare-fun tp_is_empty!20937 () Bool)

(declare-fun tp!1235892 () Bool)

(assert (=> b!4082425 (= e!2533798 (and tp_is_empty!20937 tp!1235892))))

(declare-fun b!4082426 () Bool)

(declare-fun res!1668065 () Bool)

(declare-fun e!2533799 () Bool)

(assert (=> b!4082426 (=> (not res!1668065) (not e!2533799))))

(declare-datatypes ((LexerInterface!6651 0))(
  ( (LexerInterfaceExt!6648 (__x!26801 Int)) (Lexer!6649) )
))
(declare-fun thiss!26199 () LexerInterface!6651)

(declare-datatypes ((List!43869 0))(
  ( (Nil!43745) (Cons!43745 (h!49165 (_ BitVec 16)) (t!337828 List!43869)) )
))
(declare-datatypes ((TokenValue!7292 0))(
  ( (FloatLiteralValue!14584 (text!51489 List!43869)) (TokenValueExt!7291 (__x!26802 Int)) (Broken!36460 (value!221893 List!43869)) (Object!7415) (End!7292) (Def!7292) (Underscore!7292) (Match!7292) (Else!7292) (Error!7292) (Case!7292) (If!7292) (Extends!7292) (Abstract!7292) (Class!7292) (Val!7292) (DelimiterValue!14584 (del!7352 List!43869)) (KeywordValue!7298 (value!221894 List!43869)) (CommentValue!14584 (value!221895 List!43869)) (WhitespaceValue!14584 (value!221896 List!43869)) (IndentationValue!7292 (value!221897 List!43869)) (String!50209) (Int32!7292) (Broken!36461 (value!221898 List!43869)) (Boolean!7293) (Unit!63276) (OperatorValue!7295 (op!7352 List!43869)) (IdentifierValue!14584 (value!221899 List!43869)) (IdentifierValue!14585 (value!221900 List!43869)) (WhitespaceValue!14585 (value!221901 List!43869)) (True!14584) (False!14584) (Broken!36462 (value!221902 List!43869)) (Broken!36463 (value!221903 List!43869)) (True!14585) (RightBrace!7292) (RightBracket!7292) (Colon!7292) (Null!7292) (Comma!7292) (LeftBracket!7292) (False!14585) (LeftBrace!7292) (ImaginaryLiteralValue!7292 (text!51490 List!43869)) (StringLiteralValue!21876 (value!221904 List!43869)) (EOFValue!7292 (value!221905 List!43869)) (IdentValue!7292 (value!221906 List!43869)) (DelimiterValue!14585 (value!221907 List!43869)) (DedentValue!7292 (value!221908 List!43869)) (NewLineValue!7292 (value!221909 List!43869)) (IntegerValue!21876 (value!221910 (_ BitVec 32)) (text!51491 List!43869)) (IntegerValue!21877 (value!221911 Int) (text!51492 List!43869)) (Times!7292) (Or!7292) (Equal!7292) (Minus!7292) (Broken!36464 (value!221912 List!43869)) (And!7292) (Div!7292) (LessEqual!7292) (Mod!7292) (Concat!19259) (Not!7292) (Plus!7292) (SpaceValue!7292 (value!221913 List!43869)) (IntegerValue!21878 (value!221914 Int) (text!51493 List!43869)) (StringLiteralValue!21877 (text!51494 List!43869)) (FloatLiteralValue!14585 (text!51495 List!43869)) (BytesLiteralValue!7292 (value!221915 List!43869)) (CommentValue!14585 (value!221916 List!43869)) (StringLiteralValue!21878 (value!221917 List!43869)) (ErrorTokenValue!7292 (msg!7353 List!43869)) )
))
(declare-datatypes ((C!24120 0))(
  ( (C!24121 (val!14170 Int)) )
))
(declare-datatypes ((Regex!11967 0))(
  ( (ElementMatch!11967 (c!703912 C!24120)) (Concat!19260 (regOne!24446 Regex!11967) (regTwo!24446 Regex!11967)) (EmptyExpr!11967) (Star!11967 (reg!12296 Regex!11967)) (EmptyLang!11967) (Union!11967 (regOne!24447 Regex!11967) (regTwo!24447 Regex!11967)) )
))
(declare-datatypes ((String!50210 0))(
  ( (String!50211 (value!221918 String)) )
))
(declare-datatypes ((List!43870 0))(
  ( (Nil!43746) (Cons!43746 (h!49166 C!24120) (t!337829 List!43870)) )
))
(declare-datatypes ((IArray!26551 0))(
  ( (IArray!26552 (innerList!13333 List!43870)) )
))
(declare-datatypes ((Conc!13273 0))(
  ( (Node!13273 (left!32878 Conc!13273) (right!33208 Conc!13273) (csize!26776 Int) (cheight!13484 Int)) (Leaf!20519 (xs!16579 IArray!26551) (csize!26777 Int)) (Empty!13273) )
))
(declare-datatypes ((BalanceConc!26140 0))(
  ( (BalanceConc!26141 (c!703913 Conc!13273)) )
))
(declare-datatypes ((TokenValueInjection!14012 0))(
  ( (TokenValueInjection!14013 (toValue!9634 Int) (toChars!9493 Int)) )
))
(declare-datatypes ((Rule!13924 0))(
  ( (Rule!13925 (regex!7062 Regex!11967) (tag!7922 String!50210) (isSeparator!7062 Bool) (transformation!7062 TokenValueInjection!14012)) )
))
(declare-datatypes ((List!43871 0))(
  ( (Nil!43747) (Cons!43747 (h!49167 Rule!13924) (t!337830 List!43871)) )
))
(declare-fun rules!3870 () List!43871)

(declare-fun rulesInvariant!5994 (LexerInterface!6651 List!43871) Bool)

(assert (=> b!4082426 (= res!1668065 (rulesInvariant!5994 thiss!26199 rules!3870))))

(declare-fun res!1668068 () Bool)

(assert (=> start!385828 (=> (not res!1668068) (not e!2533799))))

(get-info :version)

(assert (=> start!385828 (= res!1668068 ((_ is Lexer!6649) thiss!26199))))

(assert (=> start!385828 e!2533799))

(assert (=> start!385828 true))

(declare-fun e!2533791 () Bool)

(assert (=> start!385828 e!2533791))

(declare-fun e!2533797 () Bool)

(assert (=> start!385828 e!2533797))

(declare-fun e!2533795 () Bool)

(assert (=> start!385828 e!2533795))

(assert (=> start!385828 e!2533798))

(declare-fun e!2533792 () Bool)

(assert (=> start!385828 e!2533792))

(declare-fun b!4082427 () Bool)

(declare-fun p!2988 () List!43870)

(declare-fun lt!1460595 () BalanceConc!26140)

(declare-fun r!4213 () Rule!13924)

(declare-datatypes ((Token!13250 0))(
  ( (Token!13251 (value!221919 TokenValue!7292) (rule!10186 Rule!13924) (size!32677 Int) (originalCharacters!7656 List!43870)) )
))
(declare-fun inv!58410 (Token!13250) Bool)

(declare-fun apply!10245 (TokenValueInjection!14012 BalanceConc!26140) TokenValue!7292)

(declare-fun size!32678 (List!43870) Int)

(assert (=> b!4082427 (= e!2533799 (not (inv!58410 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))

(declare-datatypes ((Unit!63277 0))(
  ( (Unit!63278) )
))
(declare-fun lt!1460594 () Unit!63277)

(declare-fun lemmaSemiInverse!2029 (TokenValueInjection!14012 BalanceConc!26140) Unit!63277)

(assert (=> b!4082427 (= lt!1460594 (lemmaSemiInverse!2029 (transformation!7062 r!4213) lt!1460595))))

(declare-fun seqFromList!5279 (List!43870) BalanceConc!26140)

(assert (=> b!4082427 (= lt!1460595 (seqFromList!5279 p!2988))))

(declare-fun e!2533793 () Bool)

(assert (=> b!4082428 (= e!2533793 (and tp!1235891 tp!1235887))))

(declare-fun b!4082429 () Bool)

(declare-fun res!1668063 () Bool)

(assert (=> b!4082429 (=> (not res!1668063) (not e!2533799))))

(declare-fun isEmpty!26148 (List!43871) Bool)

(assert (=> b!4082429 (= res!1668063 (not (isEmpty!26148 rules!3870)))))

(declare-fun e!2533796 () Bool)

(assert (=> b!4082430 (= e!2533796 (and tp!1235885 tp!1235888))))

(declare-fun b!4082431 () Bool)

(declare-fun res!1668067 () Bool)

(assert (=> b!4082431 (=> (not res!1668067) (not e!2533799))))

(declare-fun suffix!1518 () List!43870)

(declare-fun input!3411 () List!43870)

(declare-fun ++!11468 (List!43870 List!43870) List!43870)

(assert (=> b!4082431 (= res!1668067 (= input!3411 (++!11468 p!2988 suffix!1518)))))

(declare-fun b!4082432 () Bool)

(declare-fun tp!1235893 () Bool)

(assert (=> b!4082432 (= e!2533791 (and tp_is_empty!20937 tp!1235893))))

(declare-fun b!4082433 () Bool)

(declare-fun res!1668066 () Bool)

(assert (=> b!4082433 (=> (not res!1668066) (not e!2533799))))

(declare-fun isEmpty!26149 (List!43870) Bool)

(assert (=> b!4082433 (= res!1668066 (not (isEmpty!26149 p!2988)))))

(declare-fun tp!1235889 () Bool)

(declare-fun b!4082434 () Bool)

(declare-fun e!2533790 () Bool)

(declare-fun inv!58407 (String!50210) Bool)

(declare-fun inv!58411 (TokenValueInjection!14012) Bool)

(assert (=> b!4082434 (= e!2533790 (and tp!1235889 (inv!58407 (tag!7922 (h!49167 rules!3870))) (inv!58411 (transformation!7062 (h!49167 rules!3870))) e!2533796))))

(declare-fun tp!1235886 () Bool)

(declare-fun b!4082435 () Bool)

(assert (=> b!4082435 (= e!2533792 (and tp!1235886 (inv!58407 (tag!7922 r!4213)) (inv!58411 (transformation!7062 r!4213)) e!2533793))))

(declare-fun b!4082436 () Bool)

(declare-fun res!1668064 () Bool)

(assert (=> b!4082436 (=> (not res!1668064) (not e!2533799))))

(declare-fun contains!8733 (List!43871 Rule!13924) Bool)

(assert (=> b!4082436 (= res!1668064 (contains!8733 rules!3870 r!4213))))

(declare-fun b!4082437 () Bool)

(declare-fun tp!1235890 () Bool)

(assert (=> b!4082437 (= e!2533797 (and e!2533790 tp!1235890))))

(declare-fun b!4082438 () Bool)

(declare-fun tp!1235894 () Bool)

(assert (=> b!4082438 (= e!2533795 (and tp_is_empty!20937 tp!1235894))))

(assert (= (and start!385828 res!1668068) b!4082429))

(assert (= (and b!4082429 res!1668063) b!4082426))

(assert (= (and b!4082426 res!1668065) b!4082436))

(assert (= (and b!4082436 res!1668064) b!4082431))

(assert (= (and b!4082431 res!1668067) b!4082433))

(assert (= (and b!4082433 res!1668066) b!4082427))

(assert (= (and start!385828 ((_ is Cons!43746) suffix!1518)) b!4082432))

(assert (= b!4082434 b!4082430))

(assert (= b!4082437 b!4082434))

(assert (= (and start!385828 ((_ is Cons!43747) rules!3870)) b!4082437))

(assert (= (and start!385828 ((_ is Cons!43746) p!2988)) b!4082438))

(assert (= (and start!385828 ((_ is Cons!43746) input!3411)) b!4082425))

(assert (= b!4082435 b!4082428))

(assert (= start!385828 b!4082435))

(declare-fun m!4689905 () Bool)

(assert (=> b!4082427 m!4689905))

(declare-fun m!4689907 () Bool)

(assert (=> b!4082427 m!4689907))

(declare-fun m!4689909 () Bool)

(assert (=> b!4082427 m!4689909))

(declare-fun m!4689911 () Bool)

(assert (=> b!4082427 m!4689911))

(declare-fun m!4689913 () Bool)

(assert (=> b!4082427 m!4689913))

(declare-fun m!4689915 () Bool)

(assert (=> b!4082436 m!4689915))

(declare-fun m!4689917 () Bool)

(assert (=> b!4082429 m!4689917))

(declare-fun m!4689919 () Bool)

(assert (=> b!4082434 m!4689919))

(declare-fun m!4689921 () Bool)

(assert (=> b!4082434 m!4689921))

(declare-fun m!4689923 () Bool)

(assert (=> b!4082426 m!4689923))

(declare-fun m!4689925 () Bool)

(assert (=> b!4082431 m!4689925))

(declare-fun m!4689927 () Bool)

(assert (=> b!4082435 m!4689927))

(declare-fun m!4689929 () Bool)

(assert (=> b!4082435 m!4689929))

(declare-fun m!4689931 () Bool)

(assert (=> b!4082433 m!4689931))

(check-sat (not b!4082432) (not b!4082433) (not b!4082431) (not b!4082435) tp_is_empty!20937 b_and!314113 (not b!4082438) (not b!4082434) b_and!314111 b_and!314115 (not b_next!114687) (not b!4082436) b_and!314117 (not b_next!114685) (not b!4082429) (not b_next!114683) (not b!4082437) (not b!4082425) (not b_next!114681) (not b!4082427) (not b!4082426))
(check-sat b_and!314113 b_and!314111 b_and!314115 (not b_next!114681) (not b_next!114687) b_and!314117 (not b_next!114685) (not b_next!114683))
(get-model)

(declare-fun d!1212378 () Bool)

(assert (=> d!1212378 (= (isEmpty!26149 p!2988) ((_ is Nil!43746) p!2988))))

(assert (=> b!4082433 d!1212378))

(declare-fun d!1212380 () Bool)

(declare-fun fromListB!2412 (List!43870) BalanceConc!26140)

(assert (=> d!1212380 (= (seqFromList!5279 p!2988) (fromListB!2412 p!2988))))

(declare-fun bs!592937 () Bool)

(assert (= bs!592937 d!1212380))

(declare-fun m!4689933 () Bool)

(assert (=> bs!592937 m!4689933))

(assert (=> b!4082427 d!1212380))

(declare-fun d!1212382 () Bool)

(declare-fun res!1668080 () Bool)

(declare-fun e!2533806 () Bool)

(assert (=> d!1212382 (=> (not res!1668080) (not e!2533806))))

(assert (=> d!1212382 (= res!1668080 (not (isEmpty!26149 (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))))

(assert (=> d!1212382 (= (inv!58410 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)) e!2533806)))

(declare-fun b!4082446 () Bool)

(declare-fun res!1668081 () Bool)

(assert (=> b!4082446 (=> (not res!1668081) (not e!2533806))))

(declare-fun list!16252 (BalanceConc!26140) List!43870)

(declare-fun dynLambda!18642 (Int TokenValue!7292) BalanceConc!26140)

(assert (=> b!4082446 (= res!1668081 (= (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)) (list!16252 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))))

(declare-fun b!4082447 () Bool)

(assert (=> b!4082447 (= e!2533806 (= (size!32677 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)) (size!32678 (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))))

(assert (= (and d!1212382 res!1668080) b!4082446))

(assert (= (and b!4082446 res!1668081) b!4082447))

(declare-fun b_lambda!119399 () Bool)

(assert (=> (not b_lambda!119399) (not b!4082446)))

(declare-fun t!337832 () Bool)

(declare-fun tb!245185 () Bool)

(assert (=> (and b!4082428 (= (toChars!9493 (transformation!7062 r!4213)) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))) t!337832) tb!245185))

(declare-fun tp!1235897 () Bool)

(declare-fun b!4082452 () Bool)

(declare-fun e!2533809 () Bool)

(declare-fun inv!58414 (Conc!13273) Bool)

(assert (=> b!4082452 (= e!2533809 (and (inv!58414 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))) tp!1235897))))

(declare-fun result!297418 () Bool)

(declare-fun inv!58415 (BalanceConc!26140) Bool)

(assert (=> tb!245185 (= result!297418 (and (inv!58415 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) e!2533809))))

(assert (= tb!245185 b!4082452))

(declare-fun m!4689939 () Bool)

(assert (=> b!4082452 m!4689939))

(declare-fun m!4689941 () Bool)

(assert (=> tb!245185 m!4689941))

(assert (=> b!4082446 t!337832))

(declare-fun b_and!314119 () Bool)

(assert (= b_and!314113 (and (=> t!337832 result!297418) b_and!314119)))

(declare-fun tb!245187 () Bool)

(declare-fun t!337834 () Bool)

(assert (=> (and b!4082430 (= (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))) t!337834) tb!245187))

(declare-fun result!297422 () Bool)

(assert (= result!297422 result!297418))

(assert (=> b!4082446 t!337834))

(declare-fun b_and!314121 () Bool)

(assert (= b_and!314117 (and (=> t!337834 result!297422) b_and!314121)))

(declare-fun m!4689943 () Bool)

(assert (=> d!1212382 m!4689943))

(declare-fun m!4689945 () Bool)

(assert (=> b!4082446 m!4689945))

(assert (=> b!4082446 m!4689945))

(declare-fun m!4689947 () Bool)

(assert (=> b!4082446 m!4689947))

(declare-fun m!4689949 () Bool)

(assert (=> b!4082447 m!4689949))

(assert (=> b!4082427 d!1212382))

(declare-fun d!1212390 () Bool)

(declare-fun dynLambda!18643 (Int BalanceConc!26140) TokenValue!7292)

(assert (=> d!1212390 (= (apply!10245 (transformation!7062 r!4213) lt!1460595) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))

(declare-fun b_lambda!119401 () Bool)

(assert (=> (not b_lambda!119401) (not d!1212390)))

(declare-fun t!337836 () Bool)

(declare-fun tb!245189 () Bool)

(assert (=> (and b!4082428 (= (toValue!9634 (transformation!7062 r!4213)) (toValue!9634 (transformation!7062 r!4213))) t!337836) tb!245189))

(declare-fun result!297424 () Bool)

(declare-fun inv!21 (TokenValue!7292) Bool)

(assert (=> tb!245189 (= result!297424 (inv!21 (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))

(declare-fun m!4689951 () Bool)

(assert (=> tb!245189 m!4689951))

(assert (=> d!1212390 t!337836))

(declare-fun b_and!314123 () Bool)

(assert (= b_and!314111 (and (=> t!337836 result!297424) b_and!314123)))

(declare-fun tb!245191 () Bool)

(declare-fun t!337838 () Bool)

(assert (=> (and b!4082430 (= (toValue!9634 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 r!4213))) t!337838) tb!245191))

(declare-fun result!297428 () Bool)

(assert (= result!297428 result!297424))

(assert (=> d!1212390 t!337838))

(declare-fun b_and!314125 () Bool)

(assert (= b_and!314115 (and (=> t!337838 result!297428) b_and!314125)))

(declare-fun m!4689953 () Bool)

(assert (=> d!1212390 m!4689953))

(assert (=> b!4082427 d!1212390))

(declare-fun b!4082542 () Bool)

(declare-fun e!2533868 () Bool)

(assert (=> b!4082542 (= e!2533868 true)))

(declare-fun d!1212392 () Bool)

(assert (=> d!1212392 e!2533868))

(assert (= d!1212392 b!4082542))

(declare-fun lambda!127807 () Int)

(declare-fun order!22919 () Int)

(declare-fun order!22917 () Int)

(declare-fun dynLambda!18644 (Int Int) Int)

(declare-fun dynLambda!18645 (Int Int) Int)

(assert (=> b!4082542 (< (dynLambda!18644 order!22917 (toValue!9634 (transformation!7062 r!4213))) (dynLambda!18645 order!22919 lambda!127807))))

(declare-fun order!22921 () Int)

(declare-fun dynLambda!18646 (Int Int) Int)

(assert (=> b!4082542 (< (dynLambda!18646 order!22921 (toChars!9493 (transformation!7062 r!4213))) (dynLambda!18645 order!22919 lambda!127807))))

(assert (=> d!1212392 (= (list!16252 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))) (list!16252 lt!1460595))))

(declare-fun lt!1460610 () Unit!63277)

(declare-fun ForallOf!865 (Int BalanceConc!26140) Unit!63277)

(assert (=> d!1212392 (= lt!1460610 (ForallOf!865 lambda!127807 lt!1460595))))

(assert (=> d!1212392 (= (lemmaSemiInverse!2029 (transformation!7062 r!4213) lt!1460595) lt!1460610)))

(declare-fun b_lambda!119417 () Bool)

(assert (=> (not b_lambda!119417) (not d!1212392)))

(declare-fun t!337859 () Bool)

(declare-fun tb!245211 () Bool)

(assert (=> (and b!4082428 (= (toChars!9493 (transformation!7062 r!4213)) (toChars!9493 (transformation!7062 r!4213))) t!337859) tb!245211))

(declare-fun b!4082543 () Bool)

(declare-fun tp!1235939 () Bool)

(declare-fun e!2533869 () Bool)

(assert (=> b!4082543 (= e!2533869 (and (inv!58414 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))) tp!1235939))))

(declare-fun result!297458 () Bool)

(assert (=> tb!245211 (= result!297458 (and (inv!58415 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))) e!2533869))))

(assert (= tb!245211 b!4082543))

(declare-fun m!4690017 () Bool)

(assert (=> b!4082543 m!4690017))

(declare-fun m!4690019 () Bool)

(assert (=> tb!245211 m!4690019))

(assert (=> d!1212392 t!337859))

(declare-fun b_and!314147 () Bool)

(assert (= b_and!314119 (and (=> t!337859 result!297458) b_and!314147)))

(declare-fun tb!245213 () Bool)

(declare-fun t!337861 () Bool)

(assert (=> (and b!4082430 (= (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toChars!9493 (transformation!7062 r!4213))) t!337861) tb!245213))

(declare-fun result!297460 () Bool)

(assert (= result!297460 result!297458))

(assert (=> d!1212392 t!337861))

(declare-fun b_and!314149 () Bool)

(assert (= b_and!314121 (and (=> t!337861 result!297460) b_and!314149)))

(declare-fun b_lambda!119419 () Bool)

(assert (=> (not b_lambda!119419) (not d!1212392)))

(assert (=> d!1212392 t!337836))

(declare-fun b_and!314151 () Bool)

(assert (= b_and!314123 (and (=> t!337836 result!297424) b_and!314151)))

(assert (=> d!1212392 t!337838))

(declare-fun b_and!314153 () Bool)

(assert (= b_and!314125 (and (=> t!337838 result!297428) b_and!314153)))

(assert (=> d!1212392 m!4689953))

(assert (=> d!1212392 m!4689953))

(declare-fun m!4690021 () Bool)

(assert (=> d!1212392 m!4690021))

(declare-fun m!4690023 () Bool)

(assert (=> d!1212392 m!4690023))

(declare-fun m!4690025 () Bool)

(assert (=> d!1212392 m!4690025))

(assert (=> d!1212392 m!4690021))

(declare-fun m!4690027 () Bool)

(assert (=> d!1212392 m!4690027))

(assert (=> b!4082427 d!1212392))

(declare-fun d!1212416 () Bool)

(declare-fun lt!1460613 () Int)

(assert (=> d!1212416 (>= lt!1460613 0)))

(declare-fun e!2533872 () Int)

(assert (=> d!1212416 (= lt!1460613 e!2533872)))

(declare-fun c!703924 () Bool)

(assert (=> d!1212416 (= c!703924 ((_ is Nil!43746) p!2988))))

(assert (=> d!1212416 (= (size!32678 p!2988) lt!1460613)))

(declare-fun b!4082548 () Bool)

(assert (=> b!4082548 (= e!2533872 0)))

(declare-fun b!4082549 () Bool)

(assert (=> b!4082549 (= e!2533872 (+ 1 (size!32678 (t!337829 p!2988))))))

(assert (= (and d!1212416 c!703924) b!4082548))

(assert (= (and d!1212416 (not c!703924)) b!4082549))

(declare-fun m!4690029 () Bool)

(assert (=> b!4082549 m!4690029))

(assert (=> b!4082427 d!1212416))

(declare-fun d!1212418 () Bool)

(declare-fun res!1668106 () Bool)

(declare-fun e!2533875 () Bool)

(assert (=> d!1212418 (=> (not res!1668106) (not e!2533875))))

(declare-fun rulesValid!2760 (LexerInterface!6651 List!43871) Bool)

(assert (=> d!1212418 (= res!1668106 (rulesValid!2760 thiss!26199 rules!3870))))

(assert (=> d!1212418 (= (rulesInvariant!5994 thiss!26199 rules!3870) e!2533875)))

(declare-fun b!4082552 () Bool)

(declare-datatypes ((List!43873 0))(
  ( (Nil!43749) (Cons!43749 (h!49169 String!50210) (t!337868 List!43873)) )
))
(declare-fun noDuplicateTag!2761 (LexerInterface!6651 List!43871 List!43873) Bool)

(assert (=> b!4082552 (= e!2533875 (noDuplicateTag!2761 thiss!26199 rules!3870 Nil!43749))))

(assert (= (and d!1212418 res!1668106) b!4082552))

(declare-fun m!4690031 () Bool)

(assert (=> d!1212418 m!4690031))

(declare-fun m!4690033 () Bool)

(assert (=> b!4082552 m!4690033))

(assert (=> b!4082426 d!1212418))

(declare-fun e!2533881 () Bool)

(declare-fun lt!1460616 () List!43870)

(declare-fun b!4082564 () Bool)

(assert (=> b!4082564 (= e!2533881 (or (not (= suffix!1518 Nil!43746)) (= lt!1460616 p!2988)))))

(declare-fun b!4082563 () Bool)

(declare-fun res!1668112 () Bool)

(assert (=> b!4082563 (=> (not res!1668112) (not e!2533881))))

(assert (=> b!4082563 (= res!1668112 (= (size!32678 lt!1460616) (+ (size!32678 p!2988) (size!32678 suffix!1518))))))

(declare-fun d!1212420 () Bool)

(assert (=> d!1212420 e!2533881))

(declare-fun res!1668111 () Bool)

(assert (=> d!1212420 (=> (not res!1668111) (not e!2533881))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!6714 (List!43870) (InoxSet C!24120))

(assert (=> d!1212420 (= res!1668111 (= (content!6714 lt!1460616) ((_ map or) (content!6714 p!2988) (content!6714 suffix!1518))))))

(declare-fun e!2533880 () List!43870)

(assert (=> d!1212420 (= lt!1460616 e!2533880)))

(declare-fun c!703927 () Bool)

(assert (=> d!1212420 (= c!703927 ((_ is Nil!43746) p!2988))))

(assert (=> d!1212420 (= (++!11468 p!2988 suffix!1518) lt!1460616)))

(declare-fun b!4082562 () Bool)

(assert (=> b!4082562 (= e!2533880 (Cons!43746 (h!49166 p!2988) (++!11468 (t!337829 p!2988) suffix!1518)))))

(declare-fun b!4082561 () Bool)

(assert (=> b!4082561 (= e!2533880 suffix!1518)))

(assert (= (and d!1212420 c!703927) b!4082561))

(assert (= (and d!1212420 (not c!703927)) b!4082562))

(assert (= (and d!1212420 res!1668111) b!4082563))

(assert (= (and b!4082563 res!1668112) b!4082564))

(declare-fun m!4690035 () Bool)

(assert (=> b!4082563 m!4690035))

(assert (=> b!4082563 m!4689913))

(declare-fun m!4690037 () Bool)

(assert (=> b!4082563 m!4690037))

(declare-fun m!4690039 () Bool)

(assert (=> d!1212420 m!4690039))

(declare-fun m!4690041 () Bool)

(assert (=> d!1212420 m!4690041))

(declare-fun m!4690043 () Bool)

(assert (=> d!1212420 m!4690043))

(declare-fun m!4690045 () Bool)

(assert (=> b!4082562 m!4690045))

(assert (=> b!4082431 d!1212420))

(declare-fun d!1212422 () Bool)

(declare-fun lt!1460619 () Bool)

(declare-fun content!6715 (List!43871) (InoxSet Rule!13924))

(assert (=> d!1212422 (= lt!1460619 (select (content!6715 rules!3870) r!4213))))

(declare-fun e!2533886 () Bool)

(assert (=> d!1212422 (= lt!1460619 e!2533886)))

(declare-fun res!1668118 () Bool)

(assert (=> d!1212422 (=> (not res!1668118) (not e!2533886))))

(assert (=> d!1212422 (= res!1668118 ((_ is Cons!43747) rules!3870))))

(assert (=> d!1212422 (= (contains!8733 rules!3870 r!4213) lt!1460619)))

(declare-fun b!4082569 () Bool)

(declare-fun e!2533887 () Bool)

(assert (=> b!4082569 (= e!2533886 e!2533887)))

(declare-fun res!1668117 () Bool)

(assert (=> b!4082569 (=> res!1668117 e!2533887)))

(assert (=> b!4082569 (= res!1668117 (= (h!49167 rules!3870) r!4213))))

(declare-fun b!4082570 () Bool)

(assert (=> b!4082570 (= e!2533887 (contains!8733 (t!337830 rules!3870) r!4213))))

(assert (= (and d!1212422 res!1668118) b!4082569))

(assert (= (and b!4082569 (not res!1668117)) b!4082570))

(declare-fun m!4690047 () Bool)

(assert (=> d!1212422 m!4690047))

(declare-fun m!4690049 () Bool)

(assert (=> d!1212422 m!4690049))

(declare-fun m!4690051 () Bool)

(assert (=> b!4082570 m!4690051))

(assert (=> b!4082436 d!1212422))

(declare-fun d!1212424 () Bool)

(assert (=> d!1212424 (= (inv!58407 (tag!7922 r!4213)) (= (mod (str.len (value!221918 (tag!7922 r!4213))) 2) 0))))

(assert (=> b!4082435 d!1212424))

(declare-fun d!1212426 () Bool)

(declare-fun res!1668121 () Bool)

(declare-fun e!2533890 () Bool)

(assert (=> d!1212426 (=> (not res!1668121) (not e!2533890))))

(declare-fun semiInverseModEq!3026 (Int Int) Bool)

(assert (=> d!1212426 (= res!1668121 (semiInverseModEq!3026 (toChars!9493 (transformation!7062 r!4213)) (toValue!9634 (transformation!7062 r!4213))))))

(assert (=> d!1212426 (= (inv!58411 (transformation!7062 r!4213)) e!2533890)))

(declare-fun b!4082573 () Bool)

(declare-fun equivClasses!2925 (Int Int) Bool)

(assert (=> b!4082573 (= e!2533890 (equivClasses!2925 (toChars!9493 (transformation!7062 r!4213)) (toValue!9634 (transformation!7062 r!4213))))))

(assert (= (and d!1212426 res!1668121) b!4082573))

(declare-fun m!4690053 () Bool)

(assert (=> d!1212426 m!4690053))

(declare-fun m!4690055 () Bool)

(assert (=> b!4082573 m!4690055))

(assert (=> b!4082435 d!1212426))

(declare-fun d!1212428 () Bool)

(assert (=> d!1212428 (= (isEmpty!26148 rules!3870) ((_ is Nil!43747) rules!3870))))

(assert (=> b!4082429 d!1212428))

(declare-fun d!1212430 () Bool)

(assert (=> d!1212430 (= (inv!58407 (tag!7922 (h!49167 rules!3870))) (= (mod (str.len (value!221918 (tag!7922 (h!49167 rules!3870)))) 2) 0))))

(assert (=> b!4082434 d!1212430))

(declare-fun d!1212432 () Bool)

(declare-fun res!1668122 () Bool)

(declare-fun e!2533891 () Bool)

(assert (=> d!1212432 (=> (not res!1668122) (not e!2533891))))

(assert (=> d!1212432 (= res!1668122 (semiInverseModEq!3026 (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 (h!49167 rules!3870)))))))

(assert (=> d!1212432 (= (inv!58411 (transformation!7062 (h!49167 rules!3870))) e!2533891)))

(declare-fun b!4082574 () Bool)

(assert (=> b!4082574 (= e!2533891 (equivClasses!2925 (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 (h!49167 rules!3870)))))))

(assert (= (and d!1212432 res!1668122) b!4082574))

(declare-fun m!4690057 () Bool)

(assert (=> d!1212432 m!4690057))

(declare-fun m!4690059 () Bool)

(assert (=> b!4082574 m!4690059))

(assert (=> b!4082434 d!1212432))

(declare-fun b!4082579 () Bool)

(declare-fun e!2533894 () Bool)

(declare-fun tp!1235942 () Bool)

(assert (=> b!4082579 (= e!2533894 (and tp_is_empty!20937 tp!1235942))))

(assert (=> b!4082438 (= tp!1235894 e!2533894)))

(assert (= (and b!4082438 ((_ is Cons!43746) (t!337829 p!2988))) b!4082579))

(declare-fun b!4082580 () Bool)

(declare-fun e!2533895 () Bool)

(declare-fun tp!1235943 () Bool)

(assert (=> b!4082580 (= e!2533895 (and tp_is_empty!20937 tp!1235943))))

(assert (=> b!4082432 (= tp!1235893 e!2533895)))

(assert (= (and b!4082432 ((_ is Cons!43746) (t!337829 suffix!1518))) b!4082580))

(declare-fun b!4082591 () Bool)

(declare-fun b_free!113989 () Bool)

(declare-fun b_next!114693 () Bool)

(assert (=> b!4082591 (= b_free!113989 (not b_next!114693))))

(declare-fun tb!245215 () Bool)

(declare-fun t!337863 () Bool)

(assert (=> (and b!4082591 (= (toValue!9634 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toValue!9634 (transformation!7062 r!4213))) t!337863) tb!245215))

(declare-fun result!297466 () Bool)

(assert (= result!297466 result!297424))

(assert (=> d!1212390 t!337863))

(assert (=> d!1212392 t!337863))

(declare-fun tp!1235952 () Bool)

(declare-fun b_and!314155 () Bool)

(assert (=> b!4082591 (= tp!1235952 (and (=> t!337863 result!297466) b_and!314155))))

(declare-fun b_free!113991 () Bool)

(declare-fun b_next!114695 () Bool)

(assert (=> b!4082591 (= b_free!113991 (not b_next!114695))))

(declare-fun tb!245217 () Bool)

(declare-fun t!337865 () Bool)

(assert (=> (and b!4082591 (= (toChars!9493 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))) t!337865) tb!245217))

(declare-fun result!297468 () Bool)

(assert (= result!297468 result!297418))

(assert (=> b!4082446 t!337865))

(declare-fun tb!245219 () Bool)

(declare-fun t!337867 () Bool)

(assert (=> (and b!4082591 (= (toChars!9493 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toChars!9493 (transformation!7062 r!4213))) t!337867) tb!245219))

(declare-fun result!297470 () Bool)

(assert (= result!297470 result!297458))

(assert (=> d!1212392 t!337867))

(declare-fun b_and!314157 () Bool)

(declare-fun tp!1235954 () Bool)

(assert (=> b!4082591 (= tp!1235954 (and (=> t!337865 result!297468) (=> t!337867 result!297470) b_and!314157))))

(declare-fun e!2533907 () Bool)

(assert (=> b!4082591 (= e!2533907 (and tp!1235952 tp!1235954))))

(declare-fun tp!1235953 () Bool)

(declare-fun e!2533906 () Bool)

(declare-fun b!4082590 () Bool)

(assert (=> b!4082590 (= e!2533906 (and tp!1235953 (inv!58407 (tag!7922 (h!49167 (t!337830 rules!3870)))) (inv!58411 (transformation!7062 (h!49167 (t!337830 rules!3870)))) e!2533907))))

(declare-fun b!4082589 () Bool)

(declare-fun e!2533905 () Bool)

(declare-fun tp!1235955 () Bool)

(assert (=> b!4082589 (= e!2533905 (and e!2533906 tp!1235955))))

(assert (=> b!4082437 (= tp!1235890 e!2533905)))

(assert (= b!4082590 b!4082591))

(assert (= b!4082589 b!4082590))

(assert (= (and b!4082437 ((_ is Cons!43747) (t!337830 rules!3870))) b!4082589))

(declare-fun m!4690061 () Bool)

(assert (=> b!4082590 m!4690061))

(declare-fun m!4690063 () Bool)

(assert (=> b!4082590 m!4690063))

(declare-fun b!4082592 () Bool)

(declare-fun e!2533908 () Bool)

(declare-fun tp!1235956 () Bool)

(assert (=> b!4082592 (= e!2533908 (and tp_is_empty!20937 tp!1235956))))

(assert (=> b!4082425 (= tp!1235892 e!2533908)))

(assert (= (and b!4082425 ((_ is Cons!43746) (t!337829 input!3411))) b!4082592))

(declare-fun b!4082604 () Bool)

(declare-fun e!2533911 () Bool)

(declare-fun tp!1235969 () Bool)

(declare-fun tp!1235971 () Bool)

(assert (=> b!4082604 (= e!2533911 (and tp!1235969 tp!1235971))))

(declare-fun b!4082603 () Bool)

(assert (=> b!4082603 (= e!2533911 tp_is_empty!20937)))

(declare-fun b!4082606 () Bool)

(declare-fun tp!1235970 () Bool)

(declare-fun tp!1235967 () Bool)

(assert (=> b!4082606 (= e!2533911 (and tp!1235970 tp!1235967))))

(declare-fun b!4082605 () Bool)

(declare-fun tp!1235968 () Bool)

(assert (=> b!4082605 (= e!2533911 tp!1235968)))

(assert (=> b!4082435 (= tp!1235886 e!2533911)))

(assert (= (and b!4082435 ((_ is ElementMatch!11967) (regex!7062 r!4213))) b!4082603))

(assert (= (and b!4082435 ((_ is Concat!19260) (regex!7062 r!4213))) b!4082604))

(assert (= (and b!4082435 ((_ is Star!11967) (regex!7062 r!4213))) b!4082605))

(assert (= (and b!4082435 ((_ is Union!11967) (regex!7062 r!4213))) b!4082606))

(declare-fun b!4082608 () Bool)

(declare-fun e!2533912 () Bool)

(declare-fun tp!1235974 () Bool)

(declare-fun tp!1235976 () Bool)

(assert (=> b!4082608 (= e!2533912 (and tp!1235974 tp!1235976))))

(declare-fun b!4082607 () Bool)

(assert (=> b!4082607 (= e!2533912 tp_is_empty!20937)))

(declare-fun b!4082610 () Bool)

(declare-fun tp!1235975 () Bool)

(declare-fun tp!1235972 () Bool)

(assert (=> b!4082610 (= e!2533912 (and tp!1235975 tp!1235972))))

(declare-fun b!4082609 () Bool)

(declare-fun tp!1235973 () Bool)

(assert (=> b!4082609 (= e!2533912 tp!1235973)))

(assert (=> b!4082434 (= tp!1235889 e!2533912)))

(assert (= (and b!4082434 ((_ is ElementMatch!11967) (regex!7062 (h!49167 rules!3870)))) b!4082607))

(assert (= (and b!4082434 ((_ is Concat!19260) (regex!7062 (h!49167 rules!3870)))) b!4082608))

(assert (= (and b!4082434 ((_ is Star!11967) (regex!7062 (h!49167 rules!3870)))) b!4082609))

(assert (= (and b!4082434 ((_ is Union!11967) (regex!7062 (h!49167 rules!3870)))) b!4082610))

(declare-fun b_lambda!119421 () Bool)

(assert (= b_lambda!119419 (or (and b!4082428 b_free!113977) (and b!4082430 b_free!113981 (= (toValue!9634 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 r!4213)))) (and b!4082591 b_free!113989 (= (toValue!9634 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toValue!9634 (transformation!7062 r!4213)))) b_lambda!119421)))

(declare-fun b_lambda!119423 () Bool)

(assert (= b_lambda!119417 (or (and b!4082428 b_free!113979) (and b!4082430 b_free!113983 (= (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toChars!9493 (transformation!7062 r!4213)))) (and b!4082591 b_free!113991 (= (toChars!9493 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toChars!9493 (transformation!7062 r!4213)))) b_lambda!119423)))

(declare-fun b_lambda!119425 () Bool)

(assert (= b_lambda!119401 (or (and b!4082428 b_free!113977) (and b!4082430 b_free!113981 (= (toValue!9634 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 r!4213)))) (and b!4082591 b_free!113989 (= (toValue!9634 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toValue!9634 (transformation!7062 r!4213)))) b_lambda!119425)))

(check-sat (not b!4082579) (not d!1212382) (not b!4082580) b_and!314151 (not b_lambda!119423) (not b!4082609) (not b!4082610) (not d!1212422) b_and!314153 (not b!4082573) b_and!314155 (not d!1212426) (not d!1212380) tp_is_empty!20937 (not b!4082446) (not d!1212420) (not b!4082605) (not b!4082606) b_and!314157 (not b!4082608) b_and!314147 (not b!4082589) (not b!4082549) (not d!1212418) (not d!1212392) (not tb!245211) (not b_next!114695) (not b!4082604) (not b_next!114681) (not b_next!114687) (not b_lambda!119399) (not b_lambda!119425) (not b!4082570) (not b!4082563) (not b!4082574) (not tb!245189) (not d!1212432) (not b!4082562) (not b!4082543) (not b!4082447) b_and!314149 (not b_next!114685) (not b!4082592) (not tb!245185) (not b_lambda!119421) (not b!4082590) (not b!4082552) (not b_next!114683) (not b_next!114693) (not b!4082452))
(check-sat b_and!314151 (not b_next!114695) (not b_next!114681) (not b_next!114687) b_and!314153 (not b_next!114683) b_and!314155 (not b_next!114693) b_and!314157 b_and!314147 b_and!314149 (not b_next!114685))
(get-model)

(declare-fun b!4082690 () Bool)

(declare-fun e!2533958 () Bool)

(declare-fun lt!1460632 () List!43870)

(assert (=> b!4082690 (= e!2533958 (or (not (= suffix!1518 Nil!43746)) (= lt!1460632 (t!337829 p!2988))))))

(declare-fun b!4082689 () Bool)

(declare-fun res!1668146 () Bool)

(assert (=> b!4082689 (=> (not res!1668146) (not e!2533958))))

(assert (=> b!4082689 (= res!1668146 (= (size!32678 lt!1460632) (+ (size!32678 (t!337829 p!2988)) (size!32678 suffix!1518))))))

(declare-fun d!1212478 () Bool)

(assert (=> d!1212478 e!2533958))

(declare-fun res!1668145 () Bool)

(assert (=> d!1212478 (=> (not res!1668145) (not e!2533958))))

(assert (=> d!1212478 (= res!1668145 (= (content!6714 lt!1460632) ((_ map or) (content!6714 (t!337829 p!2988)) (content!6714 suffix!1518))))))

(declare-fun e!2533957 () List!43870)

(assert (=> d!1212478 (= lt!1460632 e!2533957)))

(declare-fun c!703952 () Bool)

(assert (=> d!1212478 (= c!703952 ((_ is Nil!43746) (t!337829 p!2988)))))

(assert (=> d!1212478 (= (++!11468 (t!337829 p!2988) suffix!1518) lt!1460632)))

(declare-fun b!4082688 () Bool)

(assert (=> b!4082688 (= e!2533957 (Cons!43746 (h!49166 (t!337829 p!2988)) (++!11468 (t!337829 (t!337829 p!2988)) suffix!1518)))))

(declare-fun b!4082687 () Bool)

(assert (=> b!4082687 (= e!2533957 suffix!1518)))

(assert (= (and d!1212478 c!703952) b!4082687))

(assert (= (and d!1212478 (not c!703952)) b!4082688))

(assert (= (and d!1212478 res!1668145) b!4082689))

(assert (= (and b!4082689 res!1668146) b!4082690))

(declare-fun m!4690141 () Bool)

(assert (=> b!4082689 m!4690141))

(assert (=> b!4082689 m!4690029))

(assert (=> b!4082689 m!4690037))

(declare-fun m!4690143 () Bool)

(assert (=> d!1212478 m!4690143))

(declare-fun m!4690147 () Bool)

(assert (=> d!1212478 m!4690147))

(assert (=> d!1212478 m!4690043))

(declare-fun m!4690149 () Bool)

(assert (=> b!4082688 m!4690149))

(assert (=> b!4082562 d!1212478))

(declare-fun d!1212488 () Bool)

(declare-fun isBalanced!3696 (Conc!13273) Bool)

(assert (=> d!1212488 (= (inv!58415 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))) (isBalanced!3696 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))))

(declare-fun bs!592950 () Bool)

(assert (= bs!592950 d!1212488))

(declare-fun m!4690159 () Bool)

(assert (=> bs!592950 m!4690159))

(assert (=> tb!245211 d!1212488))

(declare-fun d!1212494 () Bool)

(declare-fun e!2533972 () Bool)

(assert (=> d!1212494 e!2533972))

(declare-fun res!1668150 () Bool)

(assert (=> d!1212494 (=> (not res!1668150) (not e!2533972))))

(declare-fun lt!1460638 () BalanceConc!26140)

(assert (=> d!1212494 (= res!1668150 (= (list!16252 lt!1460638) p!2988))))

(declare-fun fromList!876 (List!43870) Conc!13273)

(assert (=> d!1212494 (= lt!1460638 (BalanceConc!26141 (fromList!876 p!2988)))))

(assert (=> d!1212494 (= (fromListB!2412 p!2988) lt!1460638)))

(declare-fun b!4082710 () Bool)

(assert (=> b!4082710 (= e!2533972 (isBalanced!3696 (fromList!876 p!2988)))))

(assert (= (and d!1212494 res!1668150) b!4082710))

(declare-fun m!4690173 () Bool)

(assert (=> d!1212494 m!4690173))

(declare-fun m!4690177 () Bool)

(assert (=> d!1212494 m!4690177))

(assert (=> b!4082710 m!4690177))

(assert (=> b!4082710 m!4690177))

(declare-fun m!4690181 () Bool)

(assert (=> b!4082710 m!4690181))

(assert (=> d!1212380 d!1212494))

(declare-fun b!4082769 () Bool)

(declare-fun e!2533996 () Bool)

(declare-fun inv!15 (TokenValue!7292) Bool)

(assert (=> b!4082769 (= e!2533996 (inv!15 (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))

(declare-fun b!4082770 () Bool)

(declare-fun e!2533995 () Bool)

(declare-fun e!2533997 () Bool)

(assert (=> b!4082770 (= e!2533995 e!2533997)))

(declare-fun c!703959 () Bool)

(assert (=> b!4082770 (= c!703959 ((_ is IntegerValue!21877) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))

(declare-fun b!4082771 () Bool)

(declare-fun inv!16 (TokenValue!7292) Bool)

(assert (=> b!4082771 (= e!2533995 (inv!16 (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))

(declare-fun b!4082772 () Bool)

(declare-fun inv!17 (TokenValue!7292) Bool)

(assert (=> b!4082772 (= e!2533997 (inv!17 (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))

(declare-fun b!4082773 () Bool)

(declare-fun res!1668153 () Bool)

(assert (=> b!4082773 (=> res!1668153 e!2533996)))

(assert (=> b!4082773 (= res!1668153 (not ((_ is IntegerValue!21878) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))))

(assert (=> b!4082773 (= e!2533997 e!2533996)))

(declare-fun d!1212498 () Bool)

(declare-fun c!703958 () Bool)

(assert (=> d!1212498 (= c!703958 ((_ is IntegerValue!21876) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))

(assert (=> d!1212498 (= (inv!21 (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)) e!2533995)))

(assert (= (and d!1212498 c!703958) b!4082771))

(assert (= (and d!1212498 (not c!703958)) b!4082770))

(assert (= (and b!4082770 c!703959) b!4082772))

(assert (= (and b!4082770 (not c!703959)) b!4082773))

(assert (= (and b!4082773 (not res!1668153)) b!4082769))

(declare-fun m!4690187 () Bool)

(assert (=> b!4082769 m!4690187))

(declare-fun m!4690189 () Bool)

(assert (=> b!4082771 m!4690189))

(declare-fun m!4690191 () Bool)

(assert (=> b!4082772 m!4690191))

(assert (=> tb!245189 d!1212498))

(declare-fun d!1212502 () Bool)

(declare-fun lt!1460639 () Bool)

(assert (=> d!1212502 (= lt!1460639 (select (content!6715 (t!337830 rules!3870)) r!4213))))

(declare-fun e!2533998 () Bool)

(assert (=> d!1212502 (= lt!1460639 e!2533998)))

(declare-fun res!1668155 () Bool)

(assert (=> d!1212502 (=> (not res!1668155) (not e!2533998))))

(assert (=> d!1212502 (= res!1668155 ((_ is Cons!43747) (t!337830 rules!3870)))))

(assert (=> d!1212502 (= (contains!8733 (t!337830 rules!3870) r!4213) lt!1460639)))

(declare-fun b!4082774 () Bool)

(declare-fun e!2533999 () Bool)

(assert (=> b!4082774 (= e!2533998 e!2533999)))

(declare-fun res!1668154 () Bool)

(assert (=> b!4082774 (=> res!1668154 e!2533999)))

(assert (=> b!4082774 (= res!1668154 (= (h!49167 (t!337830 rules!3870)) r!4213))))

(declare-fun b!4082775 () Bool)

(assert (=> b!4082775 (= e!2533999 (contains!8733 (t!337830 (t!337830 rules!3870)) r!4213))))

(assert (= (and d!1212502 res!1668155) b!4082774))

(assert (= (and b!4082774 (not res!1668154)) b!4082775))

(declare-fun m!4690193 () Bool)

(assert (=> d!1212502 m!4690193))

(declare-fun m!4690195 () Bool)

(assert (=> d!1212502 m!4690195))

(declare-fun m!4690197 () Bool)

(assert (=> b!4082775 m!4690197))

(assert (=> b!4082570 d!1212502))

(declare-fun d!1212504 () Bool)

(declare-fun lt!1460640 () Int)

(assert (=> d!1212504 (>= lt!1460640 0)))

(declare-fun e!2534000 () Int)

(assert (=> d!1212504 (= lt!1460640 e!2534000)))

(declare-fun c!703960 () Bool)

(assert (=> d!1212504 (= c!703960 ((_ is Nil!43746) (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))

(assert (=> d!1212504 (= (size!32678 (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))) lt!1460640)))

(declare-fun b!4082776 () Bool)

(assert (=> b!4082776 (= e!2534000 0)))

(declare-fun b!4082777 () Bool)

(assert (=> b!4082777 (= e!2534000 (+ 1 (size!32678 (t!337829 (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))))

(assert (= (and d!1212504 c!703960) b!4082776))

(assert (= (and d!1212504 (not c!703960)) b!4082777))

(declare-fun m!4690199 () Bool)

(assert (=> b!4082777 m!4690199))

(assert (=> b!4082447 d!1212504))

(declare-fun d!1212506 () Bool)

(assert (=> d!1212506 (= (isEmpty!26149 (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))) ((_ is Nil!43746) (originalCharacters!7656 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))

(assert (=> d!1212382 d!1212506))

(declare-fun d!1212508 () Bool)

(assert (=> d!1212508 true))

(declare-fun order!22925 () Int)

(declare-fun lambda!127821 () Int)

(declare-fun dynLambda!18648 (Int Int) Int)

(assert (=> d!1212508 (< (dynLambda!18644 order!22917 (toValue!9634 (transformation!7062 (h!49167 rules!3870)))) (dynLambda!18648 order!22925 lambda!127821))))

(declare-fun Forall2!1107 (Int) Bool)

(assert (=> d!1212508 (= (equivClasses!2925 (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 (h!49167 rules!3870)))) (Forall2!1107 lambda!127821))))

(declare-fun bs!592956 () Bool)

(assert (= bs!592956 d!1212508))

(declare-fun m!4690201 () Bool)

(assert (=> bs!592956 m!4690201))

(assert (=> b!4082574 d!1212508))

(declare-fun d!1212510 () Bool)

(declare-fun list!16254 (Conc!13273) List!43870)

(assert (=> d!1212510 (= (list!16252 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (list!16254 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))))

(declare-fun bs!592957 () Bool)

(assert (= bs!592957 d!1212510))

(declare-fun m!4690203 () Bool)

(assert (=> bs!592957 m!4690203))

(assert (=> b!4082446 d!1212510))

(declare-fun d!1212512 () Bool)

(declare-fun res!1668162 () Bool)

(declare-fun e!2534007 () Bool)

(assert (=> d!1212512 (=> res!1668162 e!2534007)))

(assert (=> d!1212512 (= res!1668162 ((_ is Nil!43747) rules!3870))))

(assert (=> d!1212512 (= (noDuplicateTag!2761 thiss!26199 rules!3870 Nil!43749) e!2534007)))

(declare-fun b!4082786 () Bool)

(declare-fun e!2534008 () Bool)

(assert (=> b!4082786 (= e!2534007 e!2534008)))

(declare-fun res!1668163 () Bool)

(assert (=> b!4082786 (=> (not res!1668163) (not e!2534008))))

(declare-fun contains!8735 (List!43873 String!50210) Bool)

(assert (=> b!4082786 (= res!1668163 (not (contains!8735 Nil!43749 (tag!7922 (h!49167 rules!3870)))))))

(declare-fun b!4082787 () Bool)

(assert (=> b!4082787 (= e!2534008 (noDuplicateTag!2761 thiss!26199 (t!337830 rules!3870) (Cons!43749 (tag!7922 (h!49167 rules!3870)) Nil!43749)))))

(assert (= (and d!1212512 (not res!1668162)) b!4082786))

(assert (= (and b!4082786 res!1668163) b!4082787))

(declare-fun m!4690205 () Bool)

(assert (=> b!4082786 m!4690205))

(declare-fun m!4690207 () Bool)

(assert (=> b!4082787 m!4690207))

(assert (=> b!4082552 d!1212512))

(declare-fun d!1212514 () Bool)

(assert (=> d!1212514 (= (list!16252 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))) (list!16254 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))))

(declare-fun bs!592958 () Bool)

(assert (= bs!592958 d!1212514))

(declare-fun m!4690209 () Bool)

(assert (=> bs!592958 m!4690209))

(assert (=> d!1212392 d!1212514))

(declare-fun d!1212516 () Bool)

(assert (=> d!1212516 (= (list!16252 lt!1460595) (list!16254 (c!703913 lt!1460595)))))

(declare-fun bs!592959 () Bool)

(assert (= bs!592959 d!1212516))

(declare-fun m!4690211 () Bool)

(assert (=> bs!592959 m!4690211))

(assert (=> d!1212392 d!1212516))

(declare-fun d!1212518 () Bool)

(declare-fun dynLambda!18649 (Int BalanceConc!26140) Bool)

(assert (=> d!1212518 (dynLambda!18649 lambda!127807 lt!1460595)))

(declare-fun lt!1460643 () Unit!63277)

(declare-fun choose!24927 (Int BalanceConc!26140) Unit!63277)

(assert (=> d!1212518 (= lt!1460643 (choose!24927 lambda!127807 lt!1460595))))

(declare-fun Forall!1507 (Int) Bool)

(assert (=> d!1212518 (Forall!1507 lambda!127807)))

(assert (=> d!1212518 (= (ForallOf!865 lambda!127807 lt!1460595) lt!1460643)))

(declare-fun b_lambda!119437 () Bool)

(assert (=> (not b_lambda!119437) (not d!1212518)))

(declare-fun bs!592960 () Bool)

(assert (= bs!592960 d!1212518))

(declare-fun m!4690213 () Bool)

(assert (=> bs!592960 m!4690213))

(declare-fun m!4690215 () Bool)

(assert (=> bs!592960 m!4690215))

(declare-fun m!4690217 () Bool)

(assert (=> bs!592960 m!4690217))

(assert (=> d!1212392 d!1212518))

(declare-fun d!1212520 () Bool)

(assert (=> d!1212520 (= (inv!58415 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (isBalanced!3696 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))))

(declare-fun bs!592961 () Bool)

(assert (= bs!592961 d!1212520))

(declare-fun m!4690219 () Bool)

(assert (=> bs!592961 m!4690219))

(assert (=> tb!245185 d!1212520))

(declare-fun d!1212522 () Bool)

(declare-fun c!703963 () Bool)

(assert (=> d!1212522 (= c!703963 ((_ is Node!13273) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))))

(declare-fun e!2534013 () Bool)

(assert (=> d!1212522 (= (inv!58414 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))) e!2534013)))

(declare-fun b!4082794 () Bool)

(declare-fun inv!58418 (Conc!13273) Bool)

(assert (=> b!4082794 (= e!2534013 (inv!58418 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))))

(declare-fun b!4082795 () Bool)

(declare-fun e!2534014 () Bool)

(assert (=> b!4082795 (= e!2534013 e!2534014)))

(declare-fun res!1668166 () Bool)

(assert (=> b!4082795 (= res!1668166 (not ((_ is Leaf!20519) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))))))

(assert (=> b!4082795 (=> res!1668166 e!2534014)))

(declare-fun b!4082796 () Bool)

(declare-fun inv!58419 (Conc!13273) Bool)

(assert (=> b!4082796 (= e!2534014 (inv!58419 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))))))

(assert (= (and d!1212522 c!703963) b!4082794))

(assert (= (and d!1212522 (not c!703963)) b!4082795))

(assert (= (and b!4082795 (not res!1668166)) b!4082796))

(declare-fun m!4690221 () Bool)

(assert (=> b!4082794 m!4690221))

(declare-fun m!4690223 () Bool)

(assert (=> b!4082796 m!4690223))

(assert (=> b!4082543 d!1212522))

(declare-fun bs!592962 () Bool)

(declare-fun d!1212524 () Bool)

(assert (= bs!592962 (and d!1212524 d!1212508)))

(declare-fun lambda!127822 () Int)

(assert (=> bs!592962 (= (= (toValue!9634 (transformation!7062 r!4213)) (toValue!9634 (transformation!7062 (h!49167 rules!3870)))) (= lambda!127822 lambda!127821))))

(assert (=> d!1212524 true))

(assert (=> d!1212524 (< (dynLambda!18644 order!22917 (toValue!9634 (transformation!7062 r!4213))) (dynLambda!18648 order!22925 lambda!127822))))

(assert (=> d!1212524 (= (equivClasses!2925 (toChars!9493 (transformation!7062 r!4213)) (toValue!9634 (transformation!7062 r!4213))) (Forall2!1107 lambda!127822))))

(declare-fun bs!592963 () Bool)

(assert (= bs!592963 d!1212524))

(declare-fun m!4690225 () Bool)

(assert (=> bs!592963 m!4690225))

(assert (=> b!4082573 d!1212524))

(declare-fun d!1212526 () Bool)

(declare-fun lt!1460644 () Int)

(assert (=> d!1212526 (>= lt!1460644 0)))

(declare-fun e!2534015 () Int)

(assert (=> d!1212526 (= lt!1460644 e!2534015)))

(declare-fun c!703964 () Bool)

(assert (=> d!1212526 (= c!703964 ((_ is Nil!43746) lt!1460616))))

(assert (=> d!1212526 (= (size!32678 lt!1460616) lt!1460644)))

(declare-fun b!4082797 () Bool)

(assert (=> b!4082797 (= e!2534015 0)))

(declare-fun b!4082798 () Bool)

(assert (=> b!4082798 (= e!2534015 (+ 1 (size!32678 (t!337829 lt!1460616))))))

(assert (= (and d!1212526 c!703964) b!4082797))

(assert (= (and d!1212526 (not c!703964)) b!4082798))

(declare-fun m!4690227 () Bool)

(assert (=> b!4082798 m!4690227))

(assert (=> b!4082563 d!1212526))

(assert (=> b!4082563 d!1212416))

(declare-fun d!1212528 () Bool)

(declare-fun lt!1460645 () Int)

(assert (=> d!1212528 (>= lt!1460645 0)))

(declare-fun e!2534016 () Int)

(assert (=> d!1212528 (= lt!1460645 e!2534016)))

(declare-fun c!703965 () Bool)

(assert (=> d!1212528 (= c!703965 ((_ is Nil!43746) suffix!1518))))

(assert (=> d!1212528 (= (size!32678 suffix!1518) lt!1460645)))

(declare-fun b!4082799 () Bool)

(assert (=> b!4082799 (= e!2534016 0)))

(declare-fun b!4082800 () Bool)

(assert (=> b!4082800 (= e!2534016 (+ 1 (size!32678 (t!337829 suffix!1518))))))

(assert (= (and d!1212528 c!703965) b!4082799))

(assert (= (and d!1212528 (not c!703965)) b!4082800))

(declare-fun m!4690229 () Bool)

(assert (=> b!4082800 m!4690229))

(assert (=> b!4082563 d!1212528))

(declare-fun d!1212530 () Bool)

(declare-fun c!703968 () Bool)

(assert (=> d!1212530 (= c!703968 ((_ is Nil!43746) lt!1460616))))

(declare-fun e!2534019 () (InoxSet C!24120))

(assert (=> d!1212530 (= (content!6714 lt!1460616) e!2534019)))

(declare-fun b!4082805 () Bool)

(assert (=> b!4082805 (= e!2534019 ((as const (Array C!24120 Bool)) false))))

(declare-fun b!4082806 () Bool)

(assert (=> b!4082806 (= e!2534019 ((_ map or) (store ((as const (Array C!24120 Bool)) false) (h!49166 lt!1460616) true) (content!6714 (t!337829 lt!1460616))))))

(assert (= (and d!1212530 c!703968) b!4082805))

(assert (= (and d!1212530 (not c!703968)) b!4082806))

(declare-fun m!4690231 () Bool)

(assert (=> b!4082806 m!4690231))

(declare-fun m!4690233 () Bool)

(assert (=> b!4082806 m!4690233))

(assert (=> d!1212420 d!1212530))

(declare-fun d!1212532 () Bool)

(declare-fun c!703969 () Bool)

(assert (=> d!1212532 (= c!703969 ((_ is Nil!43746) p!2988))))

(declare-fun e!2534020 () (InoxSet C!24120))

(assert (=> d!1212532 (= (content!6714 p!2988) e!2534020)))

(declare-fun b!4082807 () Bool)

(assert (=> b!4082807 (= e!2534020 ((as const (Array C!24120 Bool)) false))))

(declare-fun b!4082808 () Bool)

(assert (=> b!4082808 (= e!2534020 ((_ map or) (store ((as const (Array C!24120 Bool)) false) (h!49166 p!2988) true) (content!6714 (t!337829 p!2988))))))

(assert (= (and d!1212532 c!703969) b!4082807))

(assert (= (and d!1212532 (not c!703969)) b!4082808))

(declare-fun m!4690235 () Bool)

(assert (=> b!4082808 m!4690235))

(assert (=> b!4082808 m!4690147))

(assert (=> d!1212420 d!1212532))

(declare-fun d!1212534 () Bool)

(declare-fun c!703970 () Bool)

(assert (=> d!1212534 (= c!703970 ((_ is Nil!43746) suffix!1518))))

(declare-fun e!2534021 () (InoxSet C!24120))

(assert (=> d!1212534 (= (content!6714 suffix!1518) e!2534021)))

(declare-fun b!4082809 () Bool)

(assert (=> b!4082809 (= e!2534021 ((as const (Array C!24120 Bool)) false))))

(declare-fun b!4082810 () Bool)

(assert (=> b!4082810 (= e!2534021 ((_ map or) (store ((as const (Array C!24120 Bool)) false) (h!49166 suffix!1518) true) (content!6714 (t!337829 suffix!1518))))))

(assert (= (and d!1212534 c!703970) b!4082809))

(assert (= (and d!1212534 (not c!703970)) b!4082810))

(declare-fun m!4690237 () Bool)

(assert (=> b!4082810 m!4690237))

(declare-fun m!4690239 () Bool)

(assert (=> b!4082810 m!4690239))

(assert (=> d!1212420 d!1212534))

(declare-fun d!1212536 () Bool)

(declare-fun lt!1460646 () Int)

(assert (=> d!1212536 (>= lt!1460646 0)))

(declare-fun e!2534022 () Int)

(assert (=> d!1212536 (= lt!1460646 e!2534022)))

(declare-fun c!703971 () Bool)

(assert (=> d!1212536 (= c!703971 ((_ is Nil!43746) (t!337829 p!2988)))))

(assert (=> d!1212536 (= (size!32678 (t!337829 p!2988)) lt!1460646)))

(declare-fun b!4082811 () Bool)

(assert (=> b!4082811 (= e!2534022 0)))

(declare-fun b!4082812 () Bool)

(assert (=> b!4082812 (= e!2534022 (+ 1 (size!32678 (t!337829 (t!337829 p!2988)))))))

(assert (= (and d!1212536 c!703971) b!4082811))

(assert (= (and d!1212536 (not c!703971)) b!4082812))

(declare-fun m!4690241 () Bool)

(assert (=> b!4082812 m!4690241))

(assert (=> b!4082549 d!1212536))

(declare-fun d!1212538 () Bool)

(declare-fun c!703972 () Bool)

(assert (=> d!1212538 (= c!703972 ((_ is Node!13273) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))))

(declare-fun e!2534023 () Bool)

(assert (=> d!1212538 (= (inv!58414 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))) e!2534023)))

(declare-fun b!4082813 () Bool)

(assert (=> b!4082813 (= e!2534023 (inv!58418 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))))

(declare-fun b!4082814 () Bool)

(declare-fun e!2534024 () Bool)

(assert (=> b!4082814 (= e!2534023 e!2534024)))

(declare-fun res!1668167 () Bool)

(assert (=> b!4082814 (= res!1668167 (not ((_ is Leaf!20519) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))))))

(assert (=> b!4082814 (=> res!1668167 e!2534024)))

(declare-fun b!4082815 () Bool)

(assert (=> b!4082815 (= e!2534024 (inv!58419 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))))))

(assert (= (and d!1212538 c!703972) b!4082813))

(assert (= (and d!1212538 (not c!703972)) b!4082814))

(assert (= (and b!4082814 (not res!1668167)) b!4082815))

(declare-fun m!4690243 () Bool)

(assert (=> b!4082813 m!4690243))

(declare-fun m!4690245 () Bool)

(assert (=> b!4082815 m!4690245))

(assert (=> b!4082452 d!1212538))

(declare-fun d!1212540 () Bool)

(declare-fun c!703975 () Bool)

(assert (=> d!1212540 (= c!703975 ((_ is Nil!43747) rules!3870))))

(declare-fun e!2534027 () (InoxSet Rule!13924))

(assert (=> d!1212540 (= (content!6715 rules!3870) e!2534027)))

(declare-fun b!4082820 () Bool)

(assert (=> b!4082820 (= e!2534027 ((as const (Array Rule!13924 Bool)) false))))

(declare-fun b!4082821 () Bool)

(assert (=> b!4082821 (= e!2534027 ((_ map or) (store ((as const (Array Rule!13924 Bool)) false) (h!49167 rules!3870) true) (content!6715 (t!337830 rules!3870))))))

(assert (= (and d!1212540 c!703975) b!4082820))

(assert (= (and d!1212540 (not c!703975)) b!4082821))

(declare-fun m!4690247 () Bool)

(assert (=> b!4082821 m!4690247))

(assert (=> b!4082821 m!4690193))

(assert (=> d!1212422 d!1212540))

(declare-fun bs!592964 () Bool)

(declare-fun d!1212542 () Bool)

(assert (= bs!592964 (and d!1212542 d!1212392)))

(declare-fun lambda!127825 () Int)

(assert (=> bs!592964 (= (and (= (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toChars!9493 (transformation!7062 r!4213))) (= (toValue!9634 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 r!4213)))) (= lambda!127825 lambda!127807))))

(assert (=> d!1212542 true))

(assert (=> d!1212542 (< (dynLambda!18646 order!22921 (toChars!9493 (transformation!7062 (h!49167 rules!3870)))) (dynLambda!18645 order!22919 lambda!127825))))

(assert (=> d!1212542 true))

(assert (=> d!1212542 (< (dynLambda!18644 order!22917 (toValue!9634 (transformation!7062 (h!49167 rules!3870)))) (dynLambda!18645 order!22919 lambda!127825))))

(assert (=> d!1212542 (= (semiInverseModEq!3026 (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toValue!9634 (transformation!7062 (h!49167 rules!3870)))) (Forall!1507 lambda!127825))))

(declare-fun bs!592965 () Bool)

(assert (= bs!592965 d!1212542))

(declare-fun m!4690249 () Bool)

(assert (=> bs!592965 m!4690249))

(assert (=> d!1212432 d!1212542))

(declare-fun d!1212544 () Bool)

(assert (=> d!1212544 (= (inv!58407 (tag!7922 (h!49167 (t!337830 rules!3870)))) (= (mod (str.len (value!221918 (tag!7922 (h!49167 (t!337830 rules!3870))))) 2) 0))))

(assert (=> b!4082590 d!1212544))

(declare-fun d!1212546 () Bool)

(declare-fun res!1668168 () Bool)

(declare-fun e!2534028 () Bool)

(assert (=> d!1212546 (=> (not res!1668168) (not e!2534028))))

(assert (=> d!1212546 (= res!1668168 (semiInverseModEq!3026 (toChars!9493 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toValue!9634 (transformation!7062 (h!49167 (t!337830 rules!3870))))))))

(assert (=> d!1212546 (= (inv!58411 (transformation!7062 (h!49167 (t!337830 rules!3870)))) e!2534028)))

(declare-fun b!4082826 () Bool)

(assert (=> b!4082826 (= e!2534028 (equivClasses!2925 (toChars!9493 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toValue!9634 (transformation!7062 (h!49167 (t!337830 rules!3870))))))))

(assert (= (and d!1212546 res!1668168) b!4082826))

(declare-fun m!4690251 () Bool)

(assert (=> d!1212546 m!4690251))

(declare-fun m!4690253 () Bool)

(assert (=> b!4082826 m!4690253))

(assert (=> b!4082590 d!1212546))

(declare-fun d!1212548 () Bool)

(assert (=> d!1212548 true))

(declare-fun lt!1460649 () Bool)

(declare-fun rulesValidInductive!2601 (LexerInterface!6651 List!43871) Bool)

(assert (=> d!1212548 (= lt!1460649 (rulesValidInductive!2601 thiss!26199 rules!3870))))

(declare-fun lambda!127828 () Int)

(declare-fun forall!8402 (List!43871 Int) Bool)

(assert (=> d!1212548 (= lt!1460649 (forall!8402 rules!3870 lambda!127828))))

(assert (=> d!1212548 (= (rulesValid!2760 thiss!26199 rules!3870) lt!1460649)))

(declare-fun bs!592966 () Bool)

(assert (= bs!592966 d!1212548))

(declare-fun m!4690255 () Bool)

(assert (=> bs!592966 m!4690255))

(declare-fun m!4690257 () Bool)

(assert (=> bs!592966 m!4690257))

(assert (=> d!1212418 d!1212548))

(declare-fun bs!592967 () Bool)

(declare-fun d!1212550 () Bool)

(assert (= bs!592967 (and d!1212550 d!1212392)))

(declare-fun lambda!127829 () Int)

(assert (=> bs!592967 (= lambda!127829 lambda!127807)))

(declare-fun bs!592968 () Bool)

(assert (= bs!592968 (and d!1212550 d!1212542)))

(assert (=> bs!592968 (= (and (= (toChars!9493 (transformation!7062 r!4213)) (toChars!9493 (transformation!7062 (h!49167 rules!3870)))) (= (toValue!9634 (transformation!7062 r!4213)) (toValue!9634 (transformation!7062 (h!49167 rules!3870))))) (= lambda!127829 lambda!127825))))

(assert (=> d!1212550 true))

(assert (=> d!1212550 (< (dynLambda!18646 order!22921 (toChars!9493 (transformation!7062 r!4213))) (dynLambda!18645 order!22919 lambda!127829))))

(assert (=> d!1212550 true))

(assert (=> d!1212550 (< (dynLambda!18644 order!22917 (toValue!9634 (transformation!7062 r!4213))) (dynLambda!18645 order!22919 lambda!127829))))

(assert (=> d!1212550 (= (semiInverseModEq!3026 (toChars!9493 (transformation!7062 r!4213)) (toValue!9634 (transformation!7062 r!4213))) (Forall!1507 lambda!127829))))

(declare-fun bs!592969 () Bool)

(assert (= bs!592969 d!1212550))

(declare-fun m!4690259 () Bool)

(assert (=> bs!592969 m!4690259))

(assert (=> d!1212426 d!1212550))

(declare-fun b!4082830 () Bool)

(declare-fun e!2534029 () Bool)

(declare-fun tp!1236053 () Bool)

(declare-fun tp!1236055 () Bool)

(assert (=> b!4082830 (= e!2534029 (and tp!1236053 tp!1236055))))

(declare-fun b!4082829 () Bool)

(assert (=> b!4082829 (= e!2534029 tp_is_empty!20937)))

(declare-fun b!4082832 () Bool)

(declare-fun tp!1236054 () Bool)

(declare-fun tp!1236051 () Bool)

(assert (=> b!4082832 (= e!2534029 (and tp!1236054 tp!1236051))))

(declare-fun b!4082831 () Bool)

(declare-fun tp!1236052 () Bool)

(assert (=> b!4082831 (= e!2534029 tp!1236052)))

(assert (=> b!4082608 (= tp!1235974 e!2534029)))

(assert (= (and b!4082608 ((_ is ElementMatch!11967) (regOne!24446 (regex!7062 (h!49167 rules!3870))))) b!4082829))

(assert (= (and b!4082608 ((_ is Concat!19260) (regOne!24446 (regex!7062 (h!49167 rules!3870))))) b!4082830))

(assert (= (and b!4082608 ((_ is Star!11967) (regOne!24446 (regex!7062 (h!49167 rules!3870))))) b!4082831))

(assert (= (and b!4082608 ((_ is Union!11967) (regOne!24446 (regex!7062 (h!49167 rules!3870))))) b!4082832))

(declare-fun b!4082834 () Bool)

(declare-fun e!2534030 () Bool)

(declare-fun tp!1236058 () Bool)

(declare-fun tp!1236060 () Bool)

(assert (=> b!4082834 (= e!2534030 (and tp!1236058 tp!1236060))))

(declare-fun b!4082833 () Bool)

(assert (=> b!4082833 (= e!2534030 tp_is_empty!20937)))

(declare-fun b!4082836 () Bool)

(declare-fun tp!1236059 () Bool)

(declare-fun tp!1236056 () Bool)

(assert (=> b!4082836 (= e!2534030 (and tp!1236059 tp!1236056))))

(declare-fun b!4082835 () Bool)

(declare-fun tp!1236057 () Bool)

(assert (=> b!4082835 (= e!2534030 tp!1236057)))

(assert (=> b!4082608 (= tp!1235976 e!2534030)))

(assert (= (and b!4082608 ((_ is ElementMatch!11967) (regTwo!24446 (regex!7062 (h!49167 rules!3870))))) b!4082833))

(assert (= (and b!4082608 ((_ is Concat!19260) (regTwo!24446 (regex!7062 (h!49167 rules!3870))))) b!4082834))

(assert (= (and b!4082608 ((_ is Star!11967) (regTwo!24446 (regex!7062 (h!49167 rules!3870))))) b!4082835))

(assert (= (and b!4082608 ((_ is Union!11967) (regTwo!24446 (regex!7062 (h!49167 rules!3870))))) b!4082836))

(declare-fun b!4082837 () Bool)

(declare-fun e!2534031 () Bool)

(declare-fun tp!1236061 () Bool)

(assert (=> b!4082837 (= e!2534031 (and tp_is_empty!20937 tp!1236061))))

(assert (=> b!4082592 (= tp!1235956 e!2534031)))

(assert (= (and b!4082592 ((_ is Cons!43746) (t!337829 (t!337829 input!3411)))) b!4082837))

(declare-fun b!4082838 () Bool)

(declare-fun e!2534032 () Bool)

(declare-fun tp!1236062 () Bool)

(assert (=> b!4082838 (= e!2534032 (and tp_is_empty!20937 tp!1236062))))

(assert (=> b!4082580 (= tp!1235943 e!2534032)))

(assert (= (and b!4082580 ((_ is Cons!43746) (t!337829 (t!337829 suffix!1518)))) b!4082838))

(declare-fun e!2534037 () Bool)

(declare-fun b!4082847 () Bool)

(declare-fun tp!1236071 () Bool)

(declare-fun tp!1236070 () Bool)

(assert (=> b!4082847 (= e!2534037 (and (inv!58414 (left!32878 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) tp!1236071 (inv!58414 (right!33208 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) tp!1236070))))

(declare-fun b!4082849 () Bool)

(declare-fun e!2534038 () Bool)

(declare-fun tp!1236069 () Bool)

(assert (=> b!4082849 (= e!2534038 tp!1236069)))

(declare-fun b!4082848 () Bool)

(declare-fun inv!58421 (IArray!26551) Bool)

(assert (=> b!4082848 (= e!2534037 (and (inv!58421 (xs!16579 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) e!2534038))))

(assert (=> b!4082452 (= tp!1235897 (and (inv!58414 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))) e!2534037))))

(assert (= (and b!4082452 ((_ is Node!13273) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) b!4082847))

(assert (= b!4082848 b!4082849))

(assert (= (and b!4082452 ((_ is Leaf!20519) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))) (value!221919 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) b!4082848))

(declare-fun m!4690261 () Bool)

(assert (=> b!4082847 m!4690261))

(declare-fun m!4690263 () Bool)

(assert (=> b!4082847 m!4690263))

(declare-fun m!4690265 () Bool)

(assert (=> b!4082848 m!4690265))

(assert (=> b!4082452 m!4689939))

(declare-fun b!4082850 () Bool)

(declare-fun e!2534039 () Bool)

(declare-fun tp!1236072 () Bool)

(assert (=> b!4082850 (= e!2534039 (and tp_is_empty!20937 tp!1236072))))

(assert (=> b!4082579 (= tp!1235942 e!2534039)))

(assert (= (and b!4082579 ((_ is Cons!43746) (t!337829 (t!337829 p!2988)))) b!4082850))

(declare-fun b!4082852 () Bool)

(declare-fun e!2534040 () Bool)

(declare-fun tp!1236075 () Bool)

(declare-fun tp!1236077 () Bool)

(assert (=> b!4082852 (= e!2534040 (and tp!1236075 tp!1236077))))

(declare-fun b!4082851 () Bool)

(assert (=> b!4082851 (= e!2534040 tp_is_empty!20937)))

(declare-fun b!4082854 () Bool)

(declare-fun tp!1236076 () Bool)

(declare-fun tp!1236073 () Bool)

(assert (=> b!4082854 (= e!2534040 (and tp!1236076 tp!1236073))))

(declare-fun b!4082853 () Bool)

(declare-fun tp!1236074 () Bool)

(assert (=> b!4082853 (= e!2534040 tp!1236074)))

(assert (=> b!4082590 (= tp!1235953 e!2534040)))

(assert (= (and b!4082590 ((_ is ElementMatch!11967) (regex!7062 (h!49167 (t!337830 rules!3870))))) b!4082851))

(assert (= (and b!4082590 ((_ is Concat!19260) (regex!7062 (h!49167 (t!337830 rules!3870))))) b!4082852))

(assert (= (and b!4082590 ((_ is Star!11967) (regex!7062 (h!49167 (t!337830 rules!3870))))) b!4082853))

(assert (= (and b!4082590 ((_ is Union!11967) (regex!7062 (h!49167 (t!337830 rules!3870))))) b!4082854))

(declare-fun tp!1236080 () Bool)

(declare-fun tp!1236079 () Bool)

(declare-fun e!2534041 () Bool)

(declare-fun b!4082855 () Bool)

(assert (=> b!4082855 (= e!2534041 (and (inv!58414 (left!32878 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))) tp!1236080 (inv!58414 (right!33208 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))) tp!1236079))))

(declare-fun b!4082857 () Bool)

(declare-fun e!2534042 () Bool)

(declare-fun tp!1236078 () Bool)

(assert (=> b!4082857 (= e!2534042 tp!1236078)))

(declare-fun b!4082856 () Bool)

(assert (=> b!4082856 (= e!2534041 (and (inv!58421 (xs!16579 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))) e!2534042))))

(assert (=> b!4082543 (= tp!1235939 (and (inv!58414 (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595)))) e!2534041))))

(assert (= (and b!4082543 ((_ is Node!13273) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))) b!4082855))

(assert (= b!4082856 b!4082857))

(assert (= (and b!4082543 ((_ is Leaf!20519) (c!703913 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))))) b!4082856))

(declare-fun m!4690267 () Bool)

(assert (=> b!4082855 m!4690267))

(declare-fun m!4690269 () Bool)

(assert (=> b!4082855 m!4690269))

(declare-fun m!4690271 () Bool)

(assert (=> b!4082856 m!4690271))

(assert (=> b!4082543 m!4690017))

(declare-fun b!4082859 () Bool)

(declare-fun e!2534043 () Bool)

(declare-fun tp!1236083 () Bool)

(declare-fun tp!1236085 () Bool)

(assert (=> b!4082859 (= e!2534043 (and tp!1236083 tp!1236085))))

(declare-fun b!4082858 () Bool)

(assert (=> b!4082858 (= e!2534043 tp_is_empty!20937)))

(declare-fun b!4082861 () Bool)

(declare-fun tp!1236084 () Bool)

(declare-fun tp!1236081 () Bool)

(assert (=> b!4082861 (= e!2534043 (and tp!1236084 tp!1236081))))

(declare-fun b!4082860 () Bool)

(declare-fun tp!1236082 () Bool)

(assert (=> b!4082860 (= e!2534043 tp!1236082)))

(assert (=> b!4082606 (= tp!1235970 e!2534043)))

(assert (= (and b!4082606 ((_ is ElementMatch!11967) (regOne!24447 (regex!7062 r!4213)))) b!4082858))

(assert (= (and b!4082606 ((_ is Concat!19260) (regOne!24447 (regex!7062 r!4213)))) b!4082859))

(assert (= (and b!4082606 ((_ is Star!11967) (regOne!24447 (regex!7062 r!4213)))) b!4082860))

(assert (= (and b!4082606 ((_ is Union!11967) (regOne!24447 (regex!7062 r!4213)))) b!4082861))

(declare-fun b!4082863 () Bool)

(declare-fun e!2534044 () Bool)

(declare-fun tp!1236088 () Bool)

(declare-fun tp!1236090 () Bool)

(assert (=> b!4082863 (= e!2534044 (and tp!1236088 tp!1236090))))

(declare-fun b!4082862 () Bool)

(assert (=> b!4082862 (= e!2534044 tp_is_empty!20937)))

(declare-fun b!4082865 () Bool)

(declare-fun tp!1236089 () Bool)

(declare-fun tp!1236086 () Bool)

(assert (=> b!4082865 (= e!2534044 (and tp!1236089 tp!1236086))))

(declare-fun b!4082864 () Bool)

(declare-fun tp!1236087 () Bool)

(assert (=> b!4082864 (= e!2534044 tp!1236087)))

(assert (=> b!4082606 (= tp!1235967 e!2534044)))

(assert (= (and b!4082606 ((_ is ElementMatch!11967) (regTwo!24447 (regex!7062 r!4213)))) b!4082862))

(assert (= (and b!4082606 ((_ is Concat!19260) (regTwo!24447 (regex!7062 r!4213)))) b!4082863))

(assert (= (and b!4082606 ((_ is Star!11967) (regTwo!24447 (regex!7062 r!4213)))) b!4082864))

(assert (= (and b!4082606 ((_ is Union!11967) (regTwo!24447 (regex!7062 r!4213)))) b!4082865))

(declare-fun b!4082867 () Bool)

(declare-fun e!2534045 () Bool)

(declare-fun tp!1236093 () Bool)

(declare-fun tp!1236095 () Bool)

(assert (=> b!4082867 (= e!2534045 (and tp!1236093 tp!1236095))))

(declare-fun b!4082866 () Bool)

(assert (=> b!4082866 (= e!2534045 tp_is_empty!20937)))

(declare-fun b!4082869 () Bool)

(declare-fun tp!1236094 () Bool)

(declare-fun tp!1236091 () Bool)

(assert (=> b!4082869 (= e!2534045 (and tp!1236094 tp!1236091))))

(declare-fun b!4082868 () Bool)

(declare-fun tp!1236092 () Bool)

(assert (=> b!4082868 (= e!2534045 tp!1236092)))

(assert (=> b!4082610 (= tp!1235975 e!2534045)))

(assert (= (and b!4082610 ((_ is ElementMatch!11967) (regOne!24447 (regex!7062 (h!49167 rules!3870))))) b!4082866))

(assert (= (and b!4082610 ((_ is Concat!19260) (regOne!24447 (regex!7062 (h!49167 rules!3870))))) b!4082867))

(assert (= (and b!4082610 ((_ is Star!11967) (regOne!24447 (regex!7062 (h!49167 rules!3870))))) b!4082868))

(assert (= (and b!4082610 ((_ is Union!11967) (regOne!24447 (regex!7062 (h!49167 rules!3870))))) b!4082869))

(declare-fun b!4082871 () Bool)

(declare-fun e!2534046 () Bool)

(declare-fun tp!1236098 () Bool)

(declare-fun tp!1236100 () Bool)

(assert (=> b!4082871 (= e!2534046 (and tp!1236098 tp!1236100))))

(declare-fun b!4082870 () Bool)

(assert (=> b!4082870 (= e!2534046 tp_is_empty!20937)))

(declare-fun b!4082873 () Bool)

(declare-fun tp!1236099 () Bool)

(declare-fun tp!1236096 () Bool)

(assert (=> b!4082873 (= e!2534046 (and tp!1236099 tp!1236096))))

(declare-fun b!4082872 () Bool)

(declare-fun tp!1236097 () Bool)

(assert (=> b!4082872 (= e!2534046 tp!1236097)))

(assert (=> b!4082610 (= tp!1235972 e!2534046)))

(assert (= (and b!4082610 ((_ is ElementMatch!11967) (regTwo!24447 (regex!7062 (h!49167 rules!3870))))) b!4082870))

(assert (= (and b!4082610 ((_ is Concat!19260) (regTwo!24447 (regex!7062 (h!49167 rules!3870))))) b!4082871))

(assert (= (and b!4082610 ((_ is Star!11967) (regTwo!24447 (regex!7062 (h!49167 rules!3870))))) b!4082872))

(assert (= (and b!4082610 ((_ is Union!11967) (regTwo!24447 (regex!7062 (h!49167 rules!3870))))) b!4082873))

(declare-fun b!4082876 () Bool)

(declare-fun b_free!113997 () Bool)

(declare-fun b_next!114701 () Bool)

(assert (=> b!4082876 (= b_free!113997 (not b_next!114701))))

(declare-fun t!337876 () Bool)

(declare-fun tb!245227 () Bool)

(assert (=> (and b!4082876 (= (toValue!9634 (transformation!7062 (h!49167 (t!337830 (t!337830 rules!3870))))) (toValue!9634 (transformation!7062 r!4213))) t!337876) tb!245227))

(declare-fun result!297484 () Bool)

(assert (= result!297484 result!297424))

(assert (=> d!1212390 t!337876))

(assert (=> d!1212392 t!337876))

(declare-fun b_and!314179 () Bool)

(declare-fun tp!1236101 () Bool)

(assert (=> b!4082876 (= tp!1236101 (and (=> t!337876 result!297484) b_and!314179))))

(declare-fun b_free!113999 () Bool)

(declare-fun b_next!114703 () Bool)

(assert (=> b!4082876 (= b_free!113999 (not b_next!114703))))

(declare-fun t!337878 () Bool)

(declare-fun tb!245229 () Bool)

(assert (=> (and b!4082876 (= (toChars!9493 (transformation!7062 (h!49167 (t!337830 (t!337830 rules!3870))))) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988))))) t!337878) tb!245229))

(declare-fun result!297486 () Bool)

(assert (= result!297486 result!297418))

(assert (=> b!4082446 t!337878))

(declare-fun tb!245231 () Bool)

(declare-fun t!337880 () Bool)

(assert (=> (and b!4082876 (= (toChars!9493 (transformation!7062 (h!49167 (t!337830 (t!337830 rules!3870))))) (toChars!9493 (transformation!7062 r!4213))) t!337880) tb!245231))

(declare-fun result!297488 () Bool)

(assert (= result!297488 result!297458))

(assert (=> d!1212392 t!337880))

(declare-fun b_and!314181 () Bool)

(declare-fun tp!1236103 () Bool)

(assert (=> b!4082876 (= tp!1236103 (and (=> t!337878 result!297486) (=> t!337880 result!297488) b_and!314181))))

(declare-fun e!2534050 () Bool)

(assert (=> b!4082876 (= e!2534050 (and tp!1236101 tp!1236103))))

(declare-fun b!4082875 () Bool)

(declare-fun tp!1236102 () Bool)

(declare-fun e!2534049 () Bool)

(assert (=> b!4082875 (= e!2534049 (and tp!1236102 (inv!58407 (tag!7922 (h!49167 (t!337830 (t!337830 rules!3870))))) (inv!58411 (transformation!7062 (h!49167 (t!337830 (t!337830 rules!3870))))) e!2534050))))

(declare-fun b!4082874 () Bool)

(declare-fun e!2534048 () Bool)

(declare-fun tp!1236104 () Bool)

(assert (=> b!4082874 (= e!2534048 (and e!2534049 tp!1236104))))

(assert (=> b!4082589 (= tp!1235955 e!2534048)))

(assert (= b!4082875 b!4082876))

(assert (= b!4082874 b!4082875))

(assert (= (and b!4082589 ((_ is Cons!43747) (t!337830 (t!337830 rules!3870)))) b!4082874))

(declare-fun m!4690273 () Bool)

(assert (=> b!4082875 m!4690273))

(declare-fun m!4690275 () Bool)

(assert (=> b!4082875 m!4690275))

(declare-fun b!4082878 () Bool)

(declare-fun e!2534051 () Bool)

(declare-fun tp!1236107 () Bool)

(declare-fun tp!1236109 () Bool)

(assert (=> b!4082878 (= e!2534051 (and tp!1236107 tp!1236109))))

(declare-fun b!4082877 () Bool)

(assert (=> b!4082877 (= e!2534051 tp_is_empty!20937)))

(declare-fun b!4082880 () Bool)

(declare-fun tp!1236108 () Bool)

(declare-fun tp!1236105 () Bool)

(assert (=> b!4082880 (= e!2534051 (and tp!1236108 tp!1236105))))

(declare-fun b!4082879 () Bool)

(declare-fun tp!1236106 () Bool)

(assert (=> b!4082879 (= e!2534051 tp!1236106)))

(assert (=> b!4082605 (= tp!1235968 e!2534051)))

(assert (= (and b!4082605 ((_ is ElementMatch!11967) (reg!12296 (regex!7062 r!4213)))) b!4082877))

(assert (= (and b!4082605 ((_ is Concat!19260) (reg!12296 (regex!7062 r!4213)))) b!4082878))

(assert (= (and b!4082605 ((_ is Star!11967) (reg!12296 (regex!7062 r!4213)))) b!4082879))

(assert (= (and b!4082605 ((_ is Union!11967) (reg!12296 (regex!7062 r!4213)))) b!4082880))

(declare-fun b!4082882 () Bool)

(declare-fun e!2534052 () Bool)

(declare-fun tp!1236112 () Bool)

(declare-fun tp!1236114 () Bool)

(assert (=> b!4082882 (= e!2534052 (and tp!1236112 tp!1236114))))

(declare-fun b!4082881 () Bool)

(assert (=> b!4082881 (= e!2534052 tp_is_empty!20937)))

(declare-fun b!4082884 () Bool)

(declare-fun tp!1236113 () Bool)

(declare-fun tp!1236110 () Bool)

(assert (=> b!4082884 (= e!2534052 (and tp!1236113 tp!1236110))))

(declare-fun b!4082883 () Bool)

(declare-fun tp!1236111 () Bool)

(assert (=> b!4082883 (= e!2534052 tp!1236111)))

(assert (=> b!4082604 (= tp!1235969 e!2534052)))

(assert (= (and b!4082604 ((_ is ElementMatch!11967) (regOne!24446 (regex!7062 r!4213)))) b!4082881))

(assert (= (and b!4082604 ((_ is Concat!19260) (regOne!24446 (regex!7062 r!4213)))) b!4082882))

(assert (= (and b!4082604 ((_ is Star!11967) (regOne!24446 (regex!7062 r!4213)))) b!4082883))

(assert (= (and b!4082604 ((_ is Union!11967) (regOne!24446 (regex!7062 r!4213)))) b!4082884))

(declare-fun b!4082886 () Bool)

(declare-fun e!2534053 () Bool)

(declare-fun tp!1236117 () Bool)

(declare-fun tp!1236119 () Bool)

(assert (=> b!4082886 (= e!2534053 (and tp!1236117 tp!1236119))))

(declare-fun b!4082885 () Bool)

(assert (=> b!4082885 (= e!2534053 tp_is_empty!20937)))

(declare-fun b!4082888 () Bool)

(declare-fun tp!1236118 () Bool)

(declare-fun tp!1236115 () Bool)

(assert (=> b!4082888 (= e!2534053 (and tp!1236118 tp!1236115))))

(declare-fun b!4082887 () Bool)

(declare-fun tp!1236116 () Bool)

(assert (=> b!4082887 (= e!2534053 tp!1236116)))

(assert (=> b!4082604 (= tp!1235971 e!2534053)))

(assert (= (and b!4082604 ((_ is ElementMatch!11967) (regTwo!24446 (regex!7062 r!4213)))) b!4082885))

(assert (= (and b!4082604 ((_ is Concat!19260) (regTwo!24446 (regex!7062 r!4213)))) b!4082886))

(assert (= (and b!4082604 ((_ is Star!11967) (regTwo!24446 (regex!7062 r!4213)))) b!4082887))

(assert (= (and b!4082604 ((_ is Union!11967) (regTwo!24446 (regex!7062 r!4213)))) b!4082888))

(declare-fun b!4082890 () Bool)

(declare-fun e!2534054 () Bool)

(declare-fun tp!1236122 () Bool)

(declare-fun tp!1236124 () Bool)

(assert (=> b!4082890 (= e!2534054 (and tp!1236122 tp!1236124))))

(declare-fun b!4082889 () Bool)

(assert (=> b!4082889 (= e!2534054 tp_is_empty!20937)))

(declare-fun b!4082892 () Bool)

(declare-fun tp!1236123 () Bool)

(declare-fun tp!1236120 () Bool)

(assert (=> b!4082892 (= e!2534054 (and tp!1236123 tp!1236120))))

(declare-fun b!4082891 () Bool)

(declare-fun tp!1236121 () Bool)

(assert (=> b!4082891 (= e!2534054 tp!1236121)))

(assert (=> b!4082609 (= tp!1235973 e!2534054)))

(assert (= (and b!4082609 ((_ is ElementMatch!11967) (reg!12296 (regex!7062 (h!49167 rules!3870))))) b!4082889))

(assert (= (and b!4082609 ((_ is Concat!19260) (reg!12296 (regex!7062 (h!49167 rules!3870))))) b!4082890))

(assert (= (and b!4082609 ((_ is Star!11967) (reg!12296 (regex!7062 (h!49167 rules!3870))))) b!4082891))

(assert (= (and b!4082609 ((_ is Union!11967) (reg!12296 (regex!7062 (h!49167 rules!3870))))) b!4082892))

(declare-fun b_lambda!119439 () Bool)

(assert (= b_lambda!119399 (or (and b!4082428 b_free!113979 (= (toChars!9493 (transformation!7062 r!4213)) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) (and b!4082430 b_free!113983 (= (toChars!9493 (transformation!7062 (h!49167 rules!3870))) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) (and b!4082591 b_free!113991 (= (toChars!9493 (transformation!7062 (h!49167 (t!337830 rules!3870)))) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) (and b!4082876 b_free!113999 (= (toChars!9493 (transformation!7062 (h!49167 (t!337830 (t!337830 rules!3870))))) (toChars!9493 (transformation!7062 (rule!10186 (Token!13251 (apply!10245 (transformation!7062 r!4213) lt!1460595) r!4213 (size!32678 p!2988) p!2988)))))) b_lambda!119439)))

(declare-fun b_lambda!119441 () Bool)

(assert (= b_lambda!119437 (or d!1212392 b_lambda!119441)))

(declare-fun bs!592970 () Bool)

(declare-fun d!1212552 () Bool)

(assert (= bs!592970 (and d!1212552 d!1212392)))

(assert (=> bs!592970 (= (dynLambda!18649 lambda!127807 lt!1460595) (= (list!16252 (dynLambda!18642 (toChars!9493 (transformation!7062 r!4213)) (dynLambda!18643 (toValue!9634 (transformation!7062 r!4213)) lt!1460595))) (list!16252 lt!1460595)))))

(declare-fun b_lambda!119443 () Bool)

(assert (=> (not b_lambda!119443) (not bs!592970)))

(assert (=> bs!592970 t!337859))

(declare-fun b_and!314183 () Bool)

(assert (= b_and!314147 (and (=> t!337859 result!297458) b_and!314183)))

(assert (=> bs!592970 t!337861))

(declare-fun b_and!314185 () Bool)

(assert (= b_and!314149 (and (=> t!337861 result!297460) b_and!314185)))

(assert (=> bs!592970 t!337867))

(declare-fun b_and!314187 () Bool)

(assert (= b_and!314157 (and (=> t!337867 result!297470) b_and!314187)))

(assert (=> bs!592970 t!337880))

(declare-fun b_and!314189 () Bool)

(assert (= b_and!314181 (and (=> t!337880 result!297488) b_and!314189)))

(declare-fun b_lambda!119445 () Bool)

(assert (=> (not b_lambda!119445) (not bs!592970)))

(assert (=> bs!592970 t!337836))

(declare-fun b_and!314191 () Bool)

(assert (= b_and!314151 (and (=> t!337836 result!297424) b_and!314191)))

(assert (=> bs!592970 t!337838))

(declare-fun b_and!314193 () Bool)

(assert (= b_and!314153 (and (=> t!337838 result!297428) b_and!314193)))

(assert (=> bs!592970 t!337863))

(declare-fun b_and!314195 () Bool)

(assert (= b_and!314155 (and (=> t!337863 result!297466) b_and!314195)))

(assert (=> bs!592970 t!337876))

(declare-fun b_and!314197 () Bool)

(assert (= b_and!314179 (and (=> t!337876 result!297484) b_and!314197)))

(assert (=> bs!592970 m!4689953))

(assert (=> bs!592970 m!4690021))

(assert (=> bs!592970 m!4690021))

(assert (=> bs!592970 m!4690027))

(assert (=> bs!592970 m!4689953))

(assert (=> bs!592970 m!4690023))

(assert (=> d!1212518 d!1212552))

(check-sat (not b!4082868) (not b!4082849) (not b!4082771) (not b_lambda!119439) (not b!4082887) (not b!4082892) b_and!314185 b_and!314197 (not b!4082806) (not b!4082879) (not b!4082871) (not b!4082856) (not b!4082863) (not b!4082886) (not b!4082769) (not b_lambda!119443) (not b!4082834) tp_is_empty!20937 (not b!4082878) (not b!4082810) (not d!1212548) (not d!1212478) (not b_next!114703) (not b!4082688) (not b!4082873) (not b!4082891) (not b!4082872) (not b!4082864) (not b_next!114701) (not b!4082777) (not b!4082847) (not b!4082888) (not d!1212508) (not d!1212516) (not b!4082831) (not b!4082853) (not b_lambda!119423) (not b!4082787) (not b!4082884) (not b!4082869) b_and!314195 (not b!4082826) (not d!1212542) (not b_next!114695) (not b!4082855) (not b!4082798) (not d!1212510) (not b_next!114681) (not b!4082812) (not b_next!114687) (not d!1212546) (not b!4082815) (not b_lambda!119425) (not b!4082832) (not b!4082857) (not d!1212524) (not b!4082865) (not b_lambda!119441) (not b!4082861) (not b!4082710) (not bs!592970) (not b!4082689) (not b!4082850) (not b!4082859) (not b!4082883) b_and!314187 (not b!4082543) (not b!4082867) (not b!4082874) (not b!4082838) (not b!4082848) (not b_next!114685) (not d!1212514) (not d!1212550) (not d!1212518) (not b_lambda!119421) (not b!4082882) (not d!1212520) (not b!4082775) b_and!314191 (not b!4082786) b_and!314189 (not b!4082836) b_and!314183 (not b!4082854) (not b!4082890) (not b!4082852) (not b!4082772) (not d!1212488) (not b!4082875) (not b!4082880) (not b!4082821) (not d!1212502) (not b_next!114683) (not b!4082860) (not b!4082794) (not b!4082830) (not b!4082835) (not b_next!114693) (not b!4082452) (not b!4082800) (not b_lambda!119445) (not b!4082837) (not b!4082808) b_and!314193 (not b!4082813) (not b!4082796) (not d!1212494))
(check-sat (not b_next!114703) (not b_next!114701) b_and!314195 (not b_next!114695) (not b_next!114681) (not b_next!114687) b_and!314187 (not b_next!114685) b_and!314191 (not b_next!114683) (not b_next!114693) b_and!314193 b_and!314185 b_and!314197 b_and!314189 b_and!314183)
