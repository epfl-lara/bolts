; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215784 () Bool)

(assert start!215784)

(declare-fun b!2213969 () Bool)

(declare-fun b_free!63899 () Bool)

(declare-fun b_next!64603 () Bool)

(assert (=> b!2213969 (= b_free!63899 (not b_next!64603))))

(declare-fun tp!688030 () Bool)

(declare-fun b_and!173515 () Bool)

(assert (=> b!2213969 (= tp!688030 b_and!173515)))

(declare-fun b_free!63901 () Bool)

(declare-fun b_next!64605 () Bool)

(assert (=> b!2213969 (= b_free!63901 (not b_next!64605))))

(declare-fun tp!688024 () Bool)

(declare-fun b_and!173517 () Bool)

(assert (=> b!2213969 (= tp!688024 b_and!173517)))

(declare-fun b!2213962 () Bool)

(declare-fun b_free!63903 () Bool)

(declare-fun b_next!64607 () Bool)

(assert (=> b!2213962 (= b_free!63903 (not b_next!64607))))

(declare-fun tp!688033 () Bool)

(declare-fun b_and!173519 () Bool)

(assert (=> b!2213962 (= tp!688033 b_and!173519)))

(declare-fun b_free!63905 () Bool)

(declare-fun b_next!64609 () Bool)

(assert (=> b!2213962 (= b_free!63905 (not b_next!64609))))

(declare-fun tp!688023 () Bool)

(declare-fun b_and!173521 () Bool)

(assert (=> b!2213962 (= tp!688023 b_and!173521)))

(declare-fun b!2213972 () Bool)

(declare-fun b_free!63907 () Bool)

(declare-fun b_next!64611 () Bool)

(assert (=> b!2213972 (= b_free!63907 (not b_next!64611))))

(declare-fun tp!688029 () Bool)

(declare-fun b_and!173523 () Bool)

(assert (=> b!2213972 (= tp!688029 b_and!173523)))

(declare-fun b_free!63909 () Bool)

(declare-fun b_next!64613 () Bool)

(assert (=> b!2213972 (= b_free!63909 (not b_next!64613))))

(declare-fun tp!688026 () Bool)

(declare-fun b_and!173525 () Bool)

(assert (=> b!2213972 (= tp!688026 b_and!173525)))

(declare-fun b_free!63911 () Bool)

(declare-fun b_next!64615 () Bool)

(assert (=> start!215784 (= b_free!63911 (not b_next!64615))))

(declare-fun tp!688032 () Bool)

(declare-fun b_and!173527 () Bool)

(assert (=> start!215784 (= tp!688032 b_and!173527)))

(declare-fun b!2213961 () Bool)

(declare-fun b_free!63913 () Bool)

(declare-fun b_next!64617 () Bool)

(assert (=> b!2213961 (= b_free!63913 (not b_next!64617))))

(declare-fun tp!688021 () Bool)

(declare-fun b_and!173529 () Bool)

(assert (=> b!2213961 (= tp!688021 b_and!173529)))

(declare-fun b_free!63915 () Bool)

(declare-fun b_next!64619 () Bool)

(assert (=> b!2213961 (= b_free!63915 (not b_next!64619))))

(declare-fun tp!688038 () Bool)

(declare-fun b_and!173531 () Bool)

(assert (=> b!2213961 (= tp!688038 b_and!173531)))

(declare-fun b!2213958 () Bool)

(declare-fun res!951491 () Bool)

(declare-fun e!1413848 () Bool)

(assert (=> b!2213958 (=> (not res!951491) (not e!1413848))))

(declare-fun i!1797 () Int)

(declare-datatypes ((List!25977 0))(
  ( (Nil!25893) (Cons!25893 (h!31294 (_ BitVec 16)) (t!198753 List!25977)) )
))
(declare-datatypes ((TokenValue!4307 0))(
  ( (FloatLiteralValue!8614 (text!30594 List!25977)) (TokenValueExt!4306 (__x!17067 Int)) (Broken!21535 (value!131580 List!25977)) (Object!4390) (End!4307) (Def!4307) (Underscore!4307) (Match!4307) (Else!4307) (Error!4307) (Case!4307) (If!4307) (Extends!4307) (Abstract!4307) (Class!4307) (Val!4307) (DelimiterValue!8614 (del!4367 List!25977)) (KeywordValue!4313 (value!131581 List!25977)) (CommentValue!8614 (value!131582 List!25977)) (WhitespaceValue!8614 (value!131583 List!25977)) (IndentationValue!4307 (value!131584 List!25977)) (String!28210) (Int32!4307) (Broken!21536 (value!131585 List!25977)) (Boolean!4308) (Unit!38919) (OperatorValue!4310 (op!4367 List!25977)) (IdentifierValue!8614 (value!131586 List!25977)) (IdentifierValue!8615 (value!131587 List!25977)) (WhitespaceValue!8615 (value!131588 List!25977)) (True!8614) (False!8614) (Broken!21537 (value!131589 List!25977)) (Broken!21538 (value!131590 List!25977)) (True!8615) (RightBrace!4307) (RightBracket!4307) (Colon!4307) (Null!4307) (Comma!4307) (LeftBracket!4307) (False!8615) (LeftBrace!4307) (ImaginaryLiteralValue!4307 (text!30595 List!25977)) (StringLiteralValue!12921 (value!131591 List!25977)) (EOFValue!4307 (value!131592 List!25977)) (IdentValue!4307 (value!131593 List!25977)) (DelimiterValue!8615 (value!131594 List!25977)) (DedentValue!4307 (value!131595 List!25977)) (NewLineValue!4307 (value!131596 List!25977)) (IntegerValue!12921 (value!131597 (_ BitVec 32)) (text!30596 List!25977)) (IntegerValue!12922 (value!131598 Int) (text!30597 List!25977)) (Times!4307) (Or!4307) (Equal!4307) (Minus!4307) (Broken!21539 (value!131599 List!25977)) (And!4307) (Div!4307) (LessEqual!4307) (Mod!4307) (Concat!10622) (Not!4307) (Plus!4307) (SpaceValue!4307 (value!131600 List!25977)) (IntegerValue!12923 (value!131601 Int) (text!30598 List!25977)) (StringLiteralValue!12922 (text!30599 List!25977)) (FloatLiteralValue!8615 (text!30600 List!25977)) (BytesLiteralValue!4307 (value!131602 List!25977)) (CommentValue!8615 (value!131603 List!25977)) (StringLiteralValue!12923 (value!131604 List!25977)) (ErrorTokenValue!4307 (msg!4368 List!25977)) )
))
(declare-datatypes ((C!12776 0))(
  ( (C!12777 (val!7400 Int)) )
))
(declare-datatypes ((List!25978 0))(
  ( (Nil!25894) (Cons!25894 (h!31295 C!12776) (t!198754 List!25978)) )
))
(declare-datatypes ((IArray!16951 0))(
  ( (IArray!16952 (innerList!8533 List!25978)) )
))
(declare-datatypes ((Conc!8473 0))(
  ( (Node!8473 (left!19914 Conc!8473) (right!20244 Conc!8473) (csize!17176 Int) (cheight!8684 Int)) (Leaf!12411 (xs!11415 IArray!16951) (csize!17177 Int)) (Empty!8473) )
))
(declare-datatypes ((BalanceConc!16664 0))(
  ( (BalanceConc!16665 (c!353817 Conc!8473)) )
))
(declare-datatypes ((TokenValueInjection!8198 0))(
  ( (TokenValueInjection!8199 (toValue!5882 Int) (toChars!5741 Int)) )
))
(declare-datatypes ((Regex!6315 0))(
  ( (ElementMatch!6315 (c!353818 C!12776)) (Concat!10623 (regOne!13142 Regex!6315) (regTwo!13142 Regex!6315)) (EmptyExpr!6315) (Star!6315 (reg!6644 Regex!6315)) (EmptyLang!6315) (Union!6315 (regOne!13143 Regex!6315) (regTwo!13143 Regex!6315)) )
))
(declare-datatypes ((String!28211 0))(
  ( (String!28212 (value!131605 String)) )
))
(declare-datatypes ((Rule!8142 0))(
  ( (Rule!8143 (regex!4171 Regex!6315) (tag!4661 String!28211) (isSeparator!4171 Bool) (transformation!4171 TokenValueInjection!8198)) )
))
(declare-datatypes ((Token!7824 0))(
  ( (Token!7825 (value!131606 TokenValue!4307) (rule!6471 Rule!8142) (size!20215 Int) (originalCharacters!4943 List!25978)) )
))
(declare-fun t2!61 () Token!7824)

(declare-datatypes ((List!25979 0))(
  ( (Nil!25895) (Cons!25895 (h!31296 Token!7824) (t!198755 List!25979)) )
))
(declare-fun l!6601 () List!25979)

(declare-fun apply!6417 (List!25979 Int) Token!7824)

(assert (=> b!2213958 (= res!951491 (= (apply!6417 l!6601 (+ 1 i!1797)) t2!61))))

(declare-fun b!2213959 () Bool)

(declare-fun res!951493 () Bool)

(assert (=> b!2213959 (=> (not res!951493) (not e!1413848))))

(declare-datatypes ((LexerInterface!3768 0))(
  ( (LexerInterfaceExt!3765 (__x!17068 Int)) (Lexer!3766) )
))
(declare-fun thiss!27908 () LexerInterface!3768)

(declare-datatypes ((List!25980 0))(
  ( (Nil!25896) (Cons!25896 (h!31297 Rule!8142) (t!198756 List!25980)) )
))
(declare-fun rules!4462 () List!25980)

(declare-fun p!3128 () Int)

(declare-fun tokensListTwoByTwoPredicateList!38 (LexerInterface!3768 List!25979 List!25980 Int) Bool)

(assert (=> b!2213959 (= res!951493 (tokensListTwoByTwoPredicateList!38 thiss!27908 l!6601 rules!4462 p!3128))))

(declare-fun e!1413844 () Bool)

(declare-fun t1!61 () Token!7824)

(declare-fun b!2213960 () Bool)

(declare-fun e!1413852 () Bool)

(declare-fun tp!688028 () Bool)

(declare-fun inv!35091 (String!28211) Bool)

(declare-fun inv!35094 (TokenValueInjection!8198) Bool)

(assert (=> b!2213960 (= e!1413844 (and tp!688028 (inv!35091 (tag!4661 (rule!6471 t1!61))) (inv!35094 (transformation!4171 (rule!6471 t1!61))) e!1413852))))

(declare-fun e!1413838 () Bool)

(assert (=> b!2213961 (= e!1413838 (and tp!688021 tp!688038))))

(declare-fun e!1413854 () Bool)

(assert (=> b!2213962 (= e!1413854 (and tp!688033 tp!688023))))

(declare-fun e!1413845 () Bool)

(declare-fun b!2213963 () Bool)

(declare-fun tp!688036 () Bool)

(declare-fun e!1413839 () Bool)

(declare-fun inv!21 (TokenValue!4307) Bool)

(assert (=> b!2213963 (= e!1413839 (and (inv!21 (value!131606 t2!61)) e!1413845 tp!688036))))

(declare-fun res!951489 () Bool)

(assert (=> start!215784 (=> (not res!951489) (not e!1413848))))

(get-info :version)

(assert (=> start!215784 (= res!951489 ((_ is Lexer!3766) thiss!27908))))

(assert (=> start!215784 e!1413848))

(assert (=> start!215784 true))

(declare-fun e!1413847 () Bool)

(assert (=> start!215784 e!1413847))

(declare-fun inv!35095 (Token!7824) Bool)

(assert (=> start!215784 (and (inv!35095 t2!61) e!1413839)))

(assert (=> start!215784 tp!688032))

(declare-fun e!1413846 () Bool)

(assert (=> start!215784 e!1413846))

(declare-fun e!1413850 () Bool)

(assert (=> start!215784 (and (inv!35095 t1!61) e!1413850)))

(declare-fun b!2213964 () Bool)

(assert (=> b!2213964 (= e!1413848 (and (not (= i!1797 0)) (= l!6601 Nil!25895)))))

(declare-fun e!1413843 () Bool)

(declare-fun e!1413841 () Bool)

(declare-fun b!2213965 () Bool)

(declare-fun tp!688034 () Bool)

(assert (=> b!2213965 (= e!1413843 (and (inv!21 (value!131606 (h!31296 l!6601))) e!1413841 tp!688034))))

(declare-fun e!1413849 () Bool)

(declare-fun tp!688027 () Bool)

(declare-fun b!2213966 () Bool)

(assert (=> b!2213966 (= e!1413849 (and tp!688027 (inv!35091 (tag!4661 (h!31297 rules!4462))) (inv!35094 (transformation!4171 (h!31297 rules!4462))) e!1413838))))

(declare-fun b!2213967 () Bool)

(declare-fun tp!688037 () Bool)

(assert (=> b!2213967 (= e!1413847 (and e!1413849 tp!688037))))

(declare-fun b!2213968 () Bool)

(declare-fun res!951492 () Bool)

(assert (=> b!2213968 (=> (not res!951492) (not e!1413848))))

(assert (=> b!2213968 (= res!951492 (>= i!1797 0))))

(assert (=> b!2213969 (= e!1413852 (and tp!688030 tp!688024))))

(declare-fun tp!688022 () Bool)

(declare-fun e!1413837 () Bool)

(declare-fun b!2213970 () Bool)

(assert (=> b!2213970 (= e!1413845 (and tp!688022 (inv!35091 (tag!4661 (rule!6471 t2!61))) (inv!35094 (transformation!4171 (rule!6471 t2!61))) e!1413837))))

(declare-fun b!2213971 () Bool)

(declare-fun tp!688035 () Bool)

(assert (=> b!2213971 (= e!1413841 (and tp!688035 (inv!35091 (tag!4661 (rule!6471 (h!31296 l!6601)))) (inv!35094 (transformation!4171 (rule!6471 (h!31296 l!6601)))) e!1413854))))

(assert (=> b!2213972 (= e!1413837 (and tp!688029 tp!688026))))

(declare-fun b!2213973 () Bool)

(declare-fun res!951490 () Bool)

(assert (=> b!2213973 (=> (not res!951490) (not e!1413848))))

(declare-fun size!20216 (List!25979) Int)

(assert (=> b!2213973 (= res!951490 (< (+ 1 i!1797) (size!20216 l!6601)))))

(declare-fun b!2213974 () Bool)

(declare-fun tp!688025 () Bool)

(assert (=> b!2213974 (= e!1413850 (and (inv!21 (value!131606 t1!61)) e!1413844 tp!688025))))

(declare-fun b!2213975 () Bool)

(declare-fun res!951488 () Bool)

(assert (=> b!2213975 (=> (not res!951488) (not e!1413848))))

(assert (=> b!2213975 (= res!951488 (= (apply!6417 l!6601 i!1797) t1!61))))

(declare-fun b!2213976 () Bool)

(declare-fun tp!688031 () Bool)

(assert (=> b!2213976 (= e!1413846 (and (inv!35095 (h!31296 l!6601)) e!1413843 tp!688031))))

(assert (= (and start!215784 res!951489) b!2213959))

(assert (= (and b!2213959 res!951493) b!2213968))

(assert (= (and b!2213968 res!951492) b!2213973))

(assert (= (and b!2213973 res!951490) b!2213975))

(assert (= (and b!2213975 res!951488) b!2213958))

(assert (= (and b!2213958 res!951491) b!2213964))

(assert (= b!2213966 b!2213961))

(assert (= b!2213967 b!2213966))

(assert (= (and start!215784 ((_ is Cons!25896) rules!4462)) b!2213967))

(assert (= b!2213970 b!2213972))

(assert (= b!2213963 b!2213970))

(assert (= start!215784 b!2213963))

(assert (= b!2213971 b!2213962))

(assert (= b!2213965 b!2213971))

(assert (= b!2213976 b!2213965))

(assert (= (and start!215784 ((_ is Cons!25895) l!6601)) b!2213976))

(assert (= b!2213960 b!2213969))

(assert (= b!2213974 b!2213960))

(assert (= start!215784 b!2213974))

(declare-fun m!2656207 () Bool)

(assert (=> b!2213970 m!2656207))

(declare-fun m!2656209 () Bool)

(assert (=> b!2213970 m!2656209))

(declare-fun m!2656211 () Bool)

(assert (=> b!2213958 m!2656211))

(declare-fun m!2656213 () Bool)

(assert (=> b!2213971 m!2656213))

(declare-fun m!2656215 () Bool)

(assert (=> b!2213971 m!2656215))

(declare-fun m!2656217 () Bool)

(assert (=> b!2213960 m!2656217))

(declare-fun m!2656219 () Bool)

(assert (=> b!2213960 m!2656219))

(declare-fun m!2656221 () Bool)

(assert (=> b!2213975 m!2656221))

(declare-fun m!2656223 () Bool)

(assert (=> b!2213973 m!2656223))

(declare-fun m!2656225 () Bool)

(assert (=> b!2213959 m!2656225))

(declare-fun m!2656227 () Bool)

(assert (=> b!2213976 m!2656227))

(declare-fun m!2656229 () Bool)

(assert (=> start!215784 m!2656229))

(declare-fun m!2656231 () Bool)

(assert (=> start!215784 m!2656231))

(declare-fun m!2656233 () Bool)

(assert (=> b!2213963 m!2656233))

(declare-fun m!2656235 () Bool)

(assert (=> b!2213974 m!2656235))

(declare-fun m!2656237 () Bool)

(assert (=> b!2213965 m!2656237))

(declare-fun m!2656239 () Bool)

(assert (=> b!2213966 m!2656239))

(declare-fun m!2656241 () Bool)

(assert (=> b!2213966 m!2656241))

(check-sat b_and!173529 b_and!173521 (not b_next!64615) (not b!2213971) (not b!2213966) b_and!173527 (not b_next!64613) b_and!173531 (not b_next!64603) (not b!2213974) (not start!215784) (not b!2213965) (not b!2213970) (not b!2213958) (not b!2213960) b_and!173525 b_and!173523 (not b_next!64619) (not b!2213959) (not b!2213973) (not b!2213963) (not b_next!64611) b_and!173519 (not b!2213976) (not b!2213975) (not b_next!64607) (not b!2213967) b_and!173517 (not b_next!64609) (not b_next!64617) (not b_next!64605) b_and!173515)
(check-sat b_and!173529 (not b_next!64619) b_and!173521 (not b_next!64615) (not b_next!64607) b_and!173527 (not b_next!64613) b_and!173531 (not b_next!64603) b_and!173525 b_and!173523 (not b_next!64611) b_and!173519 b_and!173517 (not b_next!64609) (not b_next!64617) (not b_next!64605) b_and!173515)
(get-model)

(declare-fun d!662090 () Bool)

(assert (=> d!662090 (= (inv!35091 (tag!4661 (h!31297 rules!4462))) (= (mod (str.len (value!131605 (tag!4661 (h!31297 rules!4462)))) 2) 0))))

(assert (=> b!2213966 d!662090))

(declare-fun d!662092 () Bool)

(declare-fun res!951504 () Bool)

(declare-fun e!1413858 () Bool)

(assert (=> d!662092 (=> (not res!951504) (not e!1413858))))

(declare-fun semiInverseModEq!1665 (Int Int) Bool)

(assert (=> d!662092 (= res!951504 (semiInverseModEq!1665 (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toValue!5882 (transformation!4171 (h!31297 rules!4462)))))))

(assert (=> d!662092 (= (inv!35094 (transformation!4171 (h!31297 rules!4462))) e!1413858)))

(declare-fun b!2213979 () Bool)

(declare-fun equivClasses!1592 (Int Int) Bool)

(assert (=> b!2213979 (= e!1413858 (equivClasses!1592 (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toValue!5882 (transformation!4171 (h!31297 rules!4462)))))))

(assert (= (and d!662092 res!951504) b!2213979))

(declare-fun m!2656243 () Bool)

(assert (=> d!662092 m!2656243))

(declare-fun m!2656245 () Bool)

(assert (=> b!2213979 m!2656245))

(assert (=> b!2213966 d!662092))

(declare-fun d!662096 () Bool)

(declare-fun res!951512 () Bool)

(declare-fun e!1413869 () Bool)

(assert (=> d!662096 (=> res!951512 e!1413869)))

(assert (=> d!662096 (= res!951512 (or (not ((_ is Cons!25895) l!6601)) (not ((_ is Cons!25895) (t!198755 l!6601)))))))

(assert (=> d!662096 (= (tokensListTwoByTwoPredicateList!38 thiss!27908 l!6601 rules!4462 p!3128) e!1413869)))

(declare-fun b!2213993 () Bool)

(declare-fun e!1413870 () Bool)

(assert (=> b!2213993 (= e!1413869 e!1413870)))

(declare-fun res!951513 () Bool)

(assert (=> b!2213993 (=> (not res!951513) (not e!1413870))))

(declare-fun dynLambda!11462 (Int Token!7824 Token!7824 List!25980) Bool)

(assert (=> b!2213993 (= res!951513 (dynLambda!11462 p!3128 (h!31296 l!6601) (h!31296 (t!198755 l!6601)) rules!4462))))

(declare-fun b!2213994 () Bool)

(assert (=> b!2213994 (= e!1413870 (tokensListTwoByTwoPredicateList!38 thiss!27908 (Cons!25895 (h!31296 (t!198755 l!6601)) (t!198755 (t!198755 l!6601))) rules!4462 p!3128))))

(assert (= (and d!662096 (not res!951512)) b!2213993))

(assert (= (and b!2213993 res!951513) b!2213994))

(declare-fun b_lambda!71273 () Bool)

(assert (=> (not b_lambda!71273) (not b!2213993)))

(declare-fun t!198758 () Bool)

(declare-fun tb!132301 () Bool)

(assert (=> (and start!215784 (= p!3128 p!3128) t!198758) tb!132301))

(declare-fun result!160514 () Bool)

(assert (=> tb!132301 (= result!160514 true)))

(assert (=> b!2213993 t!198758))

(declare-fun b_and!173533 () Bool)

(assert (= b_and!173527 (and (=> t!198758 result!160514) b_and!173533)))

(declare-fun m!2656255 () Bool)

(assert (=> b!2213993 m!2656255))

(declare-fun m!2656257 () Bool)

(assert (=> b!2213994 m!2656257))

(assert (=> b!2213959 d!662096))

(declare-fun d!662102 () Bool)

(declare-fun lt!826731 () Token!7824)

(declare-fun contains!4299 (List!25979 Token!7824) Bool)

(assert (=> d!662102 (contains!4299 l!6601 lt!826731)))

(declare-fun e!1413879 () Token!7824)

(assert (=> d!662102 (= lt!826731 e!1413879)))

(declare-fun c!353824 () Bool)

(assert (=> d!662102 (= c!353824 (= (+ 1 i!1797) 0))))

(declare-fun e!1413878 () Bool)

(assert (=> d!662102 e!1413878))

(declare-fun res!951519 () Bool)

(assert (=> d!662102 (=> (not res!951519) (not e!1413878))))

(assert (=> d!662102 (= res!951519 (<= 0 (+ 1 i!1797)))))

(assert (=> d!662102 (= (apply!6417 l!6601 (+ 1 i!1797)) lt!826731)))

(declare-fun b!2214004 () Bool)

(assert (=> b!2214004 (= e!1413878 (< (+ 1 i!1797) (size!20216 l!6601)))))

(declare-fun b!2214005 () Bool)

(declare-fun head!4731 (List!25979) Token!7824)

(assert (=> b!2214005 (= e!1413879 (head!4731 l!6601))))

(declare-fun b!2214006 () Bool)

(declare-fun tail!3214 (List!25979) List!25979)

(assert (=> b!2214006 (= e!1413879 (apply!6417 (tail!3214 l!6601) (- (+ 1 i!1797) 1)))))

(assert (= (and d!662102 res!951519) b!2214004))

(assert (= (and d!662102 c!353824) b!2214005))

(assert (= (and d!662102 (not c!353824)) b!2214006))

(declare-fun m!2656263 () Bool)

(assert (=> d!662102 m!2656263))

(assert (=> b!2214004 m!2656223))

(declare-fun m!2656265 () Bool)

(assert (=> b!2214005 m!2656265))

(declare-fun m!2656267 () Bool)

(assert (=> b!2214006 m!2656267))

(assert (=> b!2214006 m!2656267))

(declare-fun m!2656269 () Bool)

(assert (=> b!2214006 m!2656269))

(assert (=> b!2213958 d!662102))

(declare-fun d!662106 () Bool)

(assert (=> d!662106 (= (inv!35091 (tag!4661 (rule!6471 (h!31296 l!6601)))) (= (mod (str.len (value!131605 (tag!4661 (rule!6471 (h!31296 l!6601))))) 2) 0))))

(assert (=> b!2213971 d!662106))

(declare-fun d!662108 () Bool)

(declare-fun res!951520 () Bool)

(declare-fun e!1413880 () Bool)

(assert (=> d!662108 (=> (not res!951520) (not e!1413880))))

(assert (=> d!662108 (= res!951520 (semiInverseModEq!1665 (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (toValue!5882 (transformation!4171 (rule!6471 (h!31296 l!6601))))))))

(assert (=> d!662108 (= (inv!35094 (transformation!4171 (rule!6471 (h!31296 l!6601)))) e!1413880)))

(declare-fun b!2214007 () Bool)

(assert (=> b!2214007 (= e!1413880 (equivClasses!1592 (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (toValue!5882 (transformation!4171 (rule!6471 (h!31296 l!6601))))))))

(assert (= (and d!662108 res!951520) b!2214007))

(declare-fun m!2656271 () Bool)

(assert (=> d!662108 m!2656271))

(declare-fun m!2656273 () Bool)

(assert (=> b!2214007 m!2656273))

(assert (=> b!2213971 d!662108))

(declare-fun d!662110 () Bool)

(assert (=> d!662110 (= (inv!35091 (tag!4661 (rule!6471 t1!61))) (= (mod (str.len (value!131605 (tag!4661 (rule!6471 t1!61)))) 2) 0))))

(assert (=> b!2213960 d!662110))

(declare-fun d!662112 () Bool)

(declare-fun res!951521 () Bool)

(declare-fun e!1413881 () Bool)

(assert (=> d!662112 (=> (not res!951521) (not e!1413881))))

(assert (=> d!662112 (= res!951521 (semiInverseModEq!1665 (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (toValue!5882 (transformation!4171 (rule!6471 t1!61)))))))

(assert (=> d!662112 (= (inv!35094 (transformation!4171 (rule!6471 t1!61))) e!1413881)))

(declare-fun b!2214008 () Bool)

(assert (=> b!2214008 (= e!1413881 (equivClasses!1592 (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (toValue!5882 (transformation!4171 (rule!6471 t1!61)))))))

(assert (= (and d!662112 res!951521) b!2214008))

(declare-fun m!2656275 () Bool)

(assert (=> d!662112 m!2656275))

(declare-fun m!2656277 () Bool)

(assert (=> b!2214008 m!2656277))

(assert (=> b!2213960 d!662112))

(declare-fun d!662114 () Bool)

(assert (=> d!662114 (= (inv!35091 (tag!4661 (rule!6471 t2!61))) (= (mod (str.len (value!131605 (tag!4661 (rule!6471 t2!61)))) 2) 0))))

(assert (=> b!2213970 d!662114))

(declare-fun d!662116 () Bool)

(declare-fun res!951524 () Bool)

(declare-fun e!1413888 () Bool)

(assert (=> d!662116 (=> (not res!951524) (not e!1413888))))

(assert (=> d!662116 (= res!951524 (semiInverseModEq!1665 (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (toValue!5882 (transformation!4171 (rule!6471 t2!61)))))))

(assert (=> d!662116 (= (inv!35094 (transformation!4171 (rule!6471 t2!61))) e!1413888)))

(declare-fun b!2214019 () Bool)

(assert (=> b!2214019 (= e!1413888 (equivClasses!1592 (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (toValue!5882 (transformation!4171 (rule!6471 t2!61)))))))

(assert (= (and d!662116 res!951524) b!2214019))

(declare-fun m!2656279 () Bool)

(assert (=> d!662116 m!2656279))

(declare-fun m!2656281 () Bool)

(assert (=> b!2214019 m!2656281))

(assert (=> b!2213970 d!662116))

(declare-fun b!2214039 () Bool)

(declare-fun e!1413904 () Bool)

(declare-fun inv!17 (TokenValue!4307) Bool)

(assert (=> b!2214039 (= e!1413904 (inv!17 (value!131606 t2!61)))))

(declare-fun b!2214040 () Bool)

(declare-fun e!1413903 () Bool)

(assert (=> b!2214040 (= e!1413903 e!1413904)))

(declare-fun c!353836 () Bool)

(assert (=> b!2214040 (= c!353836 ((_ is IntegerValue!12922) (value!131606 t2!61)))))

(declare-fun b!2214041 () Bool)

(declare-fun inv!16 (TokenValue!4307) Bool)

(assert (=> b!2214041 (= e!1413903 (inv!16 (value!131606 t2!61)))))

(declare-fun b!2214042 () Bool)

(declare-fun res!951532 () Bool)

(declare-fun e!1413902 () Bool)

(assert (=> b!2214042 (=> res!951532 e!1413902)))

(assert (=> b!2214042 (= res!951532 (not ((_ is IntegerValue!12923) (value!131606 t2!61))))))

(assert (=> b!2214042 (= e!1413904 e!1413902)))

(declare-fun d!662118 () Bool)

(declare-fun c!353835 () Bool)

(assert (=> d!662118 (= c!353835 ((_ is IntegerValue!12921) (value!131606 t2!61)))))

(assert (=> d!662118 (= (inv!21 (value!131606 t2!61)) e!1413903)))

(declare-fun b!2214043 () Bool)

(declare-fun inv!15 (TokenValue!4307) Bool)

(assert (=> b!2214043 (= e!1413902 (inv!15 (value!131606 t2!61)))))

(assert (= (and d!662118 c!353835) b!2214041))

(assert (= (and d!662118 (not c!353835)) b!2214040))

(assert (= (and b!2214040 c!353836) b!2214039))

(assert (= (and b!2214040 (not c!353836)) b!2214042))

(assert (= (and b!2214042 (not res!951532)) b!2214043))

(declare-fun m!2656289 () Bool)

(assert (=> b!2214039 m!2656289))

(declare-fun m!2656291 () Bool)

(assert (=> b!2214041 m!2656291))

(declare-fun m!2656293 () Bool)

(assert (=> b!2214043 m!2656293))

(assert (=> b!2213963 d!662118))

(declare-fun d!662122 () Bool)

(declare-fun lt!826734 () Int)

(assert (=> d!662122 (>= lt!826734 0)))

(declare-fun e!1413909 () Int)

(assert (=> d!662122 (= lt!826734 e!1413909)))

(declare-fun c!353839 () Bool)

(assert (=> d!662122 (= c!353839 ((_ is Nil!25895) l!6601))))

(assert (=> d!662122 (= (size!20216 l!6601) lt!826734)))

(declare-fun b!2214050 () Bool)

(assert (=> b!2214050 (= e!1413909 0)))

(declare-fun b!2214051 () Bool)

(assert (=> b!2214051 (= e!1413909 (+ 1 (size!20216 (t!198755 l!6601))))))

(assert (= (and d!662122 c!353839) b!2214050))

(assert (= (and d!662122 (not c!353839)) b!2214051))

(declare-fun m!2656299 () Bool)

(assert (=> b!2214051 m!2656299))

(assert (=> b!2213973 d!662122))

(declare-fun d!662126 () Bool)

(declare-fun lt!826735 () Token!7824)

(assert (=> d!662126 (contains!4299 l!6601 lt!826735)))

(declare-fun e!1413911 () Token!7824)

(assert (=> d!662126 (= lt!826735 e!1413911)))

(declare-fun c!353840 () Bool)

(assert (=> d!662126 (= c!353840 (= i!1797 0))))

(declare-fun e!1413910 () Bool)

(assert (=> d!662126 e!1413910))

(declare-fun res!951535 () Bool)

(assert (=> d!662126 (=> (not res!951535) (not e!1413910))))

(assert (=> d!662126 (= res!951535 (<= 0 i!1797))))

(assert (=> d!662126 (= (apply!6417 l!6601 i!1797) lt!826735)))

(declare-fun b!2214052 () Bool)

(assert (=> b!2214052 (= e!1413910 (< i!1797 (size!20216 l!6601)))))

(declare-fun b!2214053 () Bool)

(assert (=> b!2214053 (= e!1413911 (head!4731 l!6601))))

(declare-fun b!2214054 () Bool)

(assert (=> b!2214054 (= e!1413911 (apply!6417 (tail!3214 l!6601) (- i!1797 1)))))

(assert (= (and d!662126 res!951535) b!2214052))

(assert (= (and d!662126 c!353840) b!2214053))

(assert (= (and d!662126 (not c!353840)) b!2214054))

(declare-fun m!2656301 () Bool)

(assert (=> d!662126 m!2656301))

(assert (=> b!2214052 m!2656223))

(assert (=> b!2214053 m!2656265))

(assert (=> b!2214054 m!2656267))

(assert (=> b!2214054 m!2656267))

(declare-fun m!2656303 () Bool)

(assert (=> b!2214054 m!2656303))

(assert (=> b!2213975 d!662126))

(declare-fun d!662128 () Bool)

(declare-fun res!951546 () Bool)

(declare-fun e!1413919 () Bool)

(assert (=> d!662128 (=> (not res!951546) (not e!1413919))))

(declare-fun isEmpty!14828 (List!25978) Bool)

(assert (=> d!662128 (= res!951546 (not (isEmpty!14828 (originalCharacters!4943 t2!61))))))

(assert (=> d!662128 (= (inv!35095 t2!61) e!1413919)))

(declare-fun b!2214069 () Bool)

(declare-fun res!951547 () Bool)

(assert (=> b!2214069 (=> (not res!951547) (not e!1413919))))

(declare-fun list!10052 (BalanceConc!16664) List!25978)

(declare-fun dynLambda!11465 (Int TokenValue!4307) BalanceConc!16664)

(assert (=> b!2214069 (= res!951547 (= (originalCharacters!4943 t2!61) (list!10052 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (value!131606 t2!61)))))))

(declare-fun b!2214070 () Bool)

(declare-fun size!20218 (List!25978) Int)

(assert (=> b!2214070 (= e!1413919 (= (size!20215 t2!61) (size!20218 (originalCharacters!4943 t2!61))))))

(assert (= (and d!662128 res!951546) b!2214069))

(assert (= (and b!2214069 res!951547) b!2214070))

(declare-fun b_lambda!71279 () Bool)

(assert (=> (not b_lambda!71279) (not b!2214069)))

(declare-fun tb!132307 () Bool)

(declare-fun t!198764 () Bool)

(assert (=> (and b!2213969 (= (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (toChars!5741 (transformation!4171 (rule!6471 t2!61)))) t!198764) tb!132307))

(declare-fun b!2214076 () Bool)

(declare-fun e!1413923 () Bool)

(declare-fun tp!688044 () Bool)

(declare-fun inv!35098 (Conc!8473) Bool)

(assert (=> b!2214076 (= e!1413923 (and (inv!35098 (c!353817 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (value!131606 t2!61)))) tp!688044))))

(declare-fun result!160522 () Bool)

(declare-fun inv!35099 (BalanceConc!16664) Bool)

(assert (=> tb!132307 (= result!160522 (and (inv!35099 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (value!131606 t2!61))) e!1413923))))

(assert (= tb!132307 b!2214076))

(declare-fun m!2656317 () Bool)

(assert (=> b!2214076 m!2656317))

(declare-fun m!2656321 () Bool)

(assert (=> tb!132307 m!2656321))

(assert (=> b!2214069 t!198764))

(declare-fun b_and!173545 () Bool)

(assert (= b_and!173517 (and (=> t!198764 result!160522) b_and!173545)))

(declare-fun tb!132315 () Bool)

(declare-fun t!198772 () Bool)

(assert (=> (and b!2213962 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (toChars!5741 (transformation!4171 (rule!6471 t2!61)))) t!198772) tb!132315))

(declare-fun result!160532 () Bool)

(assert (= result!160532 result!160522))

(assert (=> b!2214069 t!198772))

(declare-fun b_and!173547 () Bool)

(assert (= b_and!173521 (and (=> t!198772 result!160532) b_and!173547)))

(declare-fun t!198774 () Bool)

(declare-fun tb!132317 () Bool)

(assert (=> (and b!2213972 (= (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (toChars!5741 (transformation!4171 (rule!6471 t2!61)))) t!198774) tb!132317))

(declare-fun result!160534 () Bool)

(assert (= result!160534 result!160522))

(assert (=> b!2214069 t!198774))

(declare-fun b_and!173549 () Bool)

(assert (= b_and!173525 (and (=> t!198774 result!160534) b_and!173549)))

(declare-fun t!198776 () Bool)

(declare-fun tb!132319 () Bool)

(assert (=> (and b!2213961 (= (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toChars!5741 (transformation!4171 (rule!6471 t2!61)))) t!198776) tb!132319))

(declare-fun result!160536 () Bool)

(assert (= result!160536 result!160522))

(assert (=> b!2214069 t!198776))

(declare-fun b_and!173551 () Bool)

(assert (= b_and!173531 (and (=> t!198776 result!160536) b_and!173551)))

(declare-fun m!2656325 () Bool)

(assert (=> d!662128 m!2656325))

(declare-fun m!2656329 () Bool)

(assert (=> b!2214069 m!2656329))

(assert (=> b!2214069 m!2656329))

(declare-fun m!2656333 () Bool)

(assert (=> b!2214069 m!2656333))

(declare-fun m!2656335 () Bool)

(assert (=> b!2214070 m!2656335))

(assert (=> start!215784 d!662128))

(declare-fun d!662138 () Bool)

(declare-fun res!951551 () Bool)

(declare-fun e!1413928 () Bool)

(assert (=> d!662138 (=> (not res!951551) (not e!1413928))))

(assert (=> d!662138 (= res!951551 (not (isEmpty!14828 (originalCharacters!4943 t1!61))))))

(assert (=> d!662138 (= (inv!35095 t1!61) e!1413928)))

(declare-fun b!2214082 () Bool)

(declare-fun res!951552 () Bool)

(assert (=> b!2214082 (=> (not res!951552) (not e!1413928))))

(assert (=> b!2214082 (= res!951552 (= (originalCharacters!4943 t1!61) (list!10052 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (value!131606 t1!61)))))))

(declare-fun b!2214083 () Bool)

(assert (=> b!2214083 (= e!1413928 (= (size!20215 t1!61) (size!20218 (originalCharacters!4943 t1!61))))))

(assert (= (and d!662138 res!951551) b!2214082))

(assert (= (and b!2214082 res!951552) b!2214083))

(declare-fun b_lambda!71281 () Bool)

(assert (=> (not b_lambda!71281) (not b!2214082)))

(declare-fun t!198778 () Bool)

(declare-fun tb!132321 () Bool)

(assert (=> (and b!2213969 (= (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (toChars!5741 (transformation!4171 (rule!6471 t1!61)))) t!198778) tb!132321))

(declare-fun b!2214084 () Bool)

(declare-fun e!1413929 () Bool)

(declare-fun tp!688045 () Bool)

(assert (=> b!2214084 (= e!1413929 (and (inv!35098 (c!353817 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (value!131606 t1!61)))) tp!688045))))

(declare-fun result!160538 () Bool)

(assert (=> tb!132321 (= result!160538 (and (inv!35099 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (value!131606 t1!61))) e!1413929))))

(assert (= tb!132321 b!2214084))

(declare-fun m!2656341 () Bool)

(assert (=> b!2214084 m!2656341))

(declare-fun m!2656343 () Bool)

(assert (=> tb!132321 m!2656343))

(assert (=> b!2214082 t!198778))

(declare-fun b_and!173553 () Bool)

(assert (= b_and!173545 (and (=> t!198778 result!160538) b_and!173553)))

(declare-fun tb!132323 () Bool)

(declare-fun t!198780 () Bool)

(assert (=> (and b!2213962 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (toChars!5741 (transformation!4171 (rule!6471 t1!61)))) t!198780) tb!132323))

(declare-fun result!160540 () Bool)

(assert (= result!160540 result!160538))

(assert (=> b!2214082 t!198780))

(declare-fun b_and!173555 () Bool)

(assert (= b_and!173547 (and (=> t!198780 result!160540) b_and!173555)))

(declare-fun tb!132325 () Bool)

(declare-fun t!198782 () Bool)

(assert (=> (and b!2213972 (= (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (toChars!5741 (transformation!4171 (rule!6471 t1!61)))) t!198782) tb!132325))

(declare-fun result!160542 () Bool)

(assert (= result!160542 result!160538))

(assert (=> b!2214082 t!198782))

(declare-fun b_and!173557 () Bool)

(assert (= b_and!173549 (and (=> t!198782 result!160542) b_and!173557)))

(declare-fun tb!132327 () Bool)

(declare-fun t!198784 () Bool)

(assert (=> (and b!2213961 (= (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toChars!5741 (transformation!4171 (rule!6471 t1!61)))) t!198784) tb!132327))

(declare-fun result!160544 () Bool)

(assert (= result!160544 result!160538))

(assert (=> b!2214082 t!198784))

(declare-fun b_and!173559 () Bool)

(assert (= b_and!173551 (and (=> t!198784 result!160544) b_and!173559)))

(declare-fun m!2656345 () Bool)

(assert (=> d!662138 m!2656345))

(declare-fun m!2656347 () Bool)

(assert (=> b!2214082 m!2656347))

(assert (=> b!2214082 m!2656347))

(declare-fun m!2656349 () Bool)

(assert (=> b!2214082 m!2656349))

(declare-fun m!2656351 () Bool)

(assert (=> b!2214083 m!2656351))

(assert (=> start!215784 d!662138))

(declare-fun b!2214089 () Bool)

(declare-fun e!1413934 () Bool)

(assert (=> b!2214089 (= e!1413934 (inv!17 (value!131606 t1!61)))))

(declare-fun b!2214090 () Bool)

(declare-fun e!1413933 () Bool)

(assert (=> b!2214090 (= e!1413933 e!1413934)))

(declare-fun c!353845 () Bool)

(assert (=> b!2214090 (= c!353845 ((_ is IntegerValue!12922) (value!131606 t1!61)))))

(declare-fun b!2214091 () Bool)

(assert (=> b!2214091 (= e!1413933 (inv!16 (value!131606 t1!61)))))

(declare-fun b!2214092 () Bool)

(declare-fun res!951553 () Bool)

(declare-fun e!1413932 () Bool)

(assert (=> b!2214092 (=> res!951553 e!1413932)))

(assert (=> b!2214092 (= res!951553 (not ((_ is IntegerValue!12923) (value!131606 t1!61))))))

(assert (=> b!2214092 (= e!1413934 e!1413932)))

(declare-fun d!662144 () Bool)

(declare-fun c!353844 () Bool)

(assert (=> d!662144 (= c!353844 ((_ is IntegerValue!12921) (value!131606 t1!61)))))

(assert (=> d!662144 (= (inv!21 (value!131606 t1!61)) e!1413933)))

(declare-fun b!2214093 () Bool)

(assert (=> b!2214093 (= e!1413932 (inv!15 (value!131606 t1!61)))))

(assert (= (and d!662144 c!353844) b!2214091))

(assert (= (and d!662144 (not c!353844)) b!2214090))

(assert (= (and b!2214090 c!353845) b!2214089))

(assert (= (and b!2214090 (not c!353845)) b!2214092))

(assert (= (and b!2214092 (not res!951553)) b!2214093))

(declare-fun m!2656353 () Bool)

(assert (=> b!2214089 m!2656353))

(declare-fun m!2656355 () Bool)

(assert (=> b!2214091 m!2656355))

(declare-fun m!2656357 () Bool)

(assert (=> b!2214093 m!2656357))

(assert (=> b!2213974 d!662144))

(declare-fun d!662146 () Bool)

(declare-fun res!951554 () Bool)

(declare-fun e!1413935 () Bool)

(assert (=> d!662146 (=> (not res!951554) (not e!1413935))))

(assert (=> d!662146 (= res!951554 (not (isEmpty!14828 (originalCharacters!4943 (h!31296 l!6601)))))))

(assert (=> d!662146 (= (inv!35095 (h!31296 l!6601)) e!1413935)))

(declare-fun b!2214094 () Bool)

(declare-fun res!951555 () Bool)

(assert (=> b!2214094 (=> (not res!951555) (not e!1413935))))

(assert (=> b!2214094 (= res!951555 (= (originalCharacters!4943 (h!31296 l!6601)) (list!10052 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (value!131606 (h!31296 l!6601))))))))

(declare-fun b!2214095 () Bool)

(assert (=> b!2214095 (= e!1413935 (= (size!20215 (h!31296 l!6601)) (size!20218 (originalCharacters!4943 (h!31296 l!6601)))))))

(assert (= (and d!662146 res!951554) b!2214094))

(assert (= (and b!2214094 res!951555) b!2214095))

(declare-fun b_lambda!71283 () Bool)

(assert (=> (not b_lambda!71283) (not b!2214094)))

(declare-fun tb!132329 () Bool)

(declare-fun t!198786 () Bool)

(assert (=> (and b!2213969 (= (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601))))) t!198786) tb!132329))

(declare-fun b!2214098 () Bool)

(declare-fun e!1413937 () Bool)

(declare-fun tp!688046 () Bool)

(assert (=> b!2214098 (= e!1413937 (and (inv!35098 (c!353817 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (value!131606 (h!31296 l!6601))))) tp!688046))))

(declare-fun result!160546 () Bool)

(assert (=> tb!132329 (= result!160546 (and (inv!35099 (dynLambda!11465 (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (value!131606 (h!31296 l!6601)))) e!1413937))))

(assert (= tb!132329 b!2214098))

(declare-fun m!2656361 () Bool)

(assert (=> b!2214098 m!2656361))

(declare-fun m!2656363 () Bool)

(assert (=> tb!132329 m!2656363))

(assert (=> b!2214094 t!198786))

(declare-fun b_and!173561 () Bool)

(assert (= b_and!173553 (and (=> t!198786 result!160546) b_and!173561)))

(declare-fun t!198788 () Bool)

(declare-fun tb!132331 () Bool)

(assert (=> (and b!2213962 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601))))) t!198788) tb!132331))

(declare-fun result!160548 () Bool)

(assert (= result!160548 result!160546))

(assert (=> b!2214094 t!198788))

(declare-fun b_and!173563 () Bool)

(assert (= b_and!173555 (and (=> t!198788 result!160548) b_and!173563)))

(declare-fun t!198790 () Bool)

(declare-fun tb!132333 () Bool)

(assert (=> (and b!2213972 (= (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601))))) t!198790) tb!132333))

(declare-fun result!160550 () Bool)

(assert (= result!160550 result!160546))

(assert (=> b!2214094 t!198790))

(declare-fun b_and!173565 () Bool)

(assert (= b_and!173557 (and (=> t!198790 result!160550) b_and!173565)))

(declare-fun tb!132335 () Bool)

(declare-fun t!198792 () Bool)

(assert (=> (and b!2213961 (= (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601))))) t!198792) tb!132335))

(declare-fun result!160552 () Bool)

(assert (= result!160552 result!160546))

(assert (=> b!2214094 t!198792))

(declare-fun b_and!173567 () Bool)

(assert (= b_and!173559 (and (=> t!198792 result!160552) b_and!173567)))

(declare-fun m!2656365 () Bool)

(assert (=> d!662146 m!2656365))

(declare-fun m!2656367 () Bool)

(assert (=> b!2214094 m!2656367))

(assert (=> b!2214094 m!2656367))

(declare-fun m!2656369 () Bool)

(assert (=> b!2214094 m!2656369))

(declare-fun m!2656371 () Bool)

(assert (=> b!2214095 m!2656371))

(assert (=> b!2213976 d!662146))

(declare-fun b!2214102 () Bool)

(declare-fun e!1413942 () Bool)

(assert (=> b!2214102 (= e!1413942 (inv!17 (value!131606 (h!31296 l!6601))))))

(declare-fun b!2214103 () Bool)

(declare-fun e!1413941 () Bool)

(assert (=> b!2214103 (= e!1413941 e!1413942)))

(declare-fun c!353848 () Bool)

(assert (=> b!2214103 (= c!353848 ((_ is IntegerValue!12922) (value!131606 (h!31296 l!6601))))))

(declare-fun b!2214104 () Bool)

(assert (=> b!2214104 (= e!1413941 (inv!16 (value!131606 (h!31296 l!6601))))))

(declare-fun b!2214105 () Bool)

(declare-fun res!951558 () Bool)

(declare-fun e!1413940 () Bool)

(assert (=> b!2214105 (=> res!951558 e!1413940)))

(assert (=> b!2214105 (= res!951558 (not ((_ is IntegerValue!12923) (value!131606 (h!31296 l!6601)))))))

(assert (=> b!2214105 (= e!1413942 e!1413940)))

(declare-fun d!662150 () Bool)

(declare-fun c!353847 () Bool)

(assert (=> d!662150 (= c!353847 ((_ is IntegerValue!12921) (value!131606 (h!31296 l!6601))))))

(assert (=> d!662150 (= (inv!21 (value!131606 (h!31296 l!6601))) e!1413941)))

(declare-fun b!2214106 () Bool)

(assert (=> b!2214106 (= e!1413940 (inv!15 (value!131606 (h!31296 l!6601))))))

(assert (= (and d!662150 c!353847) b!2214104))

(assert (= (and d!662150 (not c!353847)) b!2214103))

(assert (= (and b!2214103 c!353848) b!2214102))

(assert (= (and b!2214103 (not c!353848)) b!2214105))

(assert (= (and b!2214105 (not res!951558)) b!2214106))

(declare-fun m!2656381 () Bool)

(assert (=> b!2214102 m!2656381))

(declare-fun m!2656383 () Bool)

(assert (=> b!2214104 m!2656383))

(declare-fun m!2656385 () Bool)

(assert (=> b!2214106 m!2656385))

(assert (=> b!2213965 d!662150))

(declare-fun b!2214139 () Bool)

(declare-fun b_free!63917 () Bool)

(declare-fun b_next!64621 () Bool)

(assert (=> b!2214139 (= b_free!63917 (not b_next!64621))))

(declare-fun tp!688064 () Bool)

(declare-fun b_and!173585 () Bool)

(assert (=> b!2214139 (= tp!688064 b_and!173585)))

(declare-fun b_free!63919 () Bool)

(declare-fun b_next!64623 () Bool)

(assert (=> b!2214139 (= b_free!63919 (not b_next!64623))))

(declare-fun tb!132353 () Bool)

(declare-fun t!198810 () Bool)

(assert (=> (and b!2214139 (= (toChars!5741 (transformation!4171 (h!31297 (t!198756 rules!4462)))) (toChars!5741 (transformation!4171 (rule!6471 t2!61)))) t!198810) tb!132353))

(declare-fun result!160574 () Bool)

(assert (= result!160574 result!160522))

(assert (=> b!2214069 t!198810))

(declare-fun t!198812 () Bool)

(declare-fun tb!132355 () Bool)

(assert (=> (and b!2214139 (= (toChars!5741 (transformation!4171 (h!31297 (t!198756 rules!4462)))) (toChars!5741 (transformation!4171 (rule!6471 t1!61)))) t!198812) tb!132355))

(declare-fun result!160576 () Bool)

(assert (= result!160576 result!160538))

(assert (=> b!2214082 t!198812))

(declare-fun t!198814 () Bool)

(declare-fun tb!132357 () Bool)

(assert (=> (and b!2214139 (= (toChars!5741 (transformation!4171 (h!31297 (t!198756 rules!4462)))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601))))) t!198814) tb!132357))

(declare-fun result!160578 () Bool)

(assert (= result!160578 result!160546))

(assert (=> b!2214094 t!198814))

(declare-fun b_and!173587 () Bool)

(declare-fun tp!688063 () Bool)

(assert (=> b!2214139 (= tp!688063 (and (=> t!198810 result!160574) (=> t!198812 result!160576) (=> t!198814 result!160578) b_and!173587))))

(declare-fun e!1413965 () Bool)

(assert (=> b!2214139 (= e!1413965 (and tp!688064 tp!688063))))

(declare-fun tp!688066 () Bool)

(declare-fun e!1413962 () Bool)

(declare-fun b!2214138 () Bool)

(assert (=> b!2214138 (= e!1413962 (and tp!688066 (inv!35091 (tag!4661 (h!31297 (t!198756 rules!4462)))) (inv!35094 (transformation!4171 (h!31297 (t!198756 rules!4462)))) e!1413965))))

(declare-fun b!2214137 () Bool)

(declare-fun e!1413964 () Bool)

(declare-fun tp!688065 () Bool)

(assert (=> b!2214137 (= e!1413964 (and e!1413962 tp!688065))))

(assert (=> b!2213967 (= tp!688037 e!1413964)))

(assert (= b!2214138 b!2214139))

(assert (= b!2214137 b!2214138))

(assert (= (and b!2213967 ((_ is Cons!25896) (t!198756 rules!4462))) b!2214137))

(declare-fun m!2656419 () Bool)

(assert (=> b!2214138 m!2656419))

(declare-fun m!2656421 () Bool)

(assert (=> b!2214138 m!2656421))

(declare-fun b!2214169 () Bool)

(declare-fun e!1413980 () Bool)

(declare-fun tp_is_empty!9813 () Bool)

(assert (=> b!2214169 (= e!1413980 tp_is_empty!9813)))

(declare-fun b!2214170 () Bool)

(declare-fun tp!688096 () Bool)

(declare-fun tp!688099 () Bool)

(assert (=> b!2214170 (= e!1413980 (and tp!688096 tp!688099))))

(assert (=> b!2213966 (= tp!688027 e!1413980)))

(declare-fun b!2214172 () Bool)

(declare-fun tp!688098 () Bool)

(declare-fun tp!688095 () Bool)

(assert (=> b!2214172 (= e!1413980 (and tp!688098 tp!688095))))

(declare-fun b!2214171 () Bool)

(declare-fun tp!688097 () Bool)

(assert (=> b!2214171 (= e!1413980 tp!688097)))

(assert (= (and b!2213966 ((_ is ElementMatch!6315) (regex!4171 (h!31297 rules!4462)))) b!2214169))

(assert (= (and b!2213966 ((_ is Concat!10623) (regex!4171 (h!31297 rules!4462)))) b!2214170))

(assert (= (and b!2213966 ((_ is Star!6315) (regex!4171 (h!31297 rules!4462)))) b!2214171))

(assert (= (and b!2213966 ((_ is Union!6315) (regex!4171 (h!31297 rules!4462)))) b!2214172))

(declare-fun b!2214173 () Bool)

(declare-fun e!1413981 () Bool)

(assert (=> b!2214173 (= e!1413981 tp_is_empty!9813)))

(declare-fun b!2214174 () Bool)

(declare-fun tp!688103 () Bool)

(declare-fun tp!688106 () Bool)

(assert (=> b!2214174 (= e!1413981 (and tp!688103 tp!688106))))

(assert (=> b!2213971 (= tp!688035 e!1413981)))

(declare-fun b!2214176 () Bool)

(declare-fun tp!688105 () Bool)

(declare-fun tp!688102 () Bool)

(assert (=> b!2214176 (= e!1413981 (and tp!688105 tp!688102))))

(declare-fun b!2214175 () Bool)

(declare-fun tp!688104 () Bool)

(assert (=> b!2214175 (= e!1413981 tp!688104)))

(assert (= (and b!2213971 ((_ is ElementMatch!6315) (regex!4171 (rule!6471 (h!31296 l!6601))))) b!2214173))

(assert (= (and b!2213971 ((_ is Concat!10623) (regex!4171 (rule!6471 (h!31296 l!6601))))) b!2214174))

(assert (= (and b!2213971 ((_ is Star!6315) (regex!4171 (rule!6471 (h!31296 l!6601))))) b!2214175))

(assert (= (and b!2213971 ((_ is Union!6315) (regex!4171 (rule!6471 (h!31296 l!6601))))) b!2214176))

(declare-fun b!2214177 () Bool)

(declare-fun e!1413982 () Bool)

(assert (=> b!2214177 (= e!1413982 tp_is_empty!9813)))

(declare-fun b!2214178 () Bool)

(declare-fun tp!688108 () Bool)

(declare-fun tp!688111 () Bool)

(assert (=> b!2214178 (= e!1413982 (and tp!688108 tp!688111))))

(assert (=> b!2213960 (= tp!688028 e!1413982)))

(declare-fun b!2214180 () Bool)

(declare-fun tp!688110 () Bool)

(declare-fun tp!688107 () Bool)

(assert (=> b!2214180 (= e!1413982 (and tp!688110 tp!688107))))

(declare-fun b!2214179 () Bool)

(declare-fun tp!688109 () Bool)

(assert (=> b!2214179 (= e!1413982 tp!688109)))

(assert (= (and b!2213960 ((_ is ElementMatch!6315) (regex!4171 (rule!6471 t1!61)))) b!2214177))

(assert (= (and b!2213960 ((_ is Concat!10623) (regex!4171 (rule!6471 t1!61)))) b!2214178))

(assert (= (and b!2213960 ((_ is Star!6315) (regex!4171 (rule!6471 t1!61)))) b!2214179))

(assert (= (and b!2213960 ((_ is Union!6315) (regex!4171 (rule!6471 t1!61)))) b!2214180))

(declare-fun b!2214181 () Bool)

(declare-fun e!1413983 () Bool)

(assert (=> b!2214181 (= e!1413983 tp_is_empty!9813)))

(declare-fun b!2214182 () Bool)

(declare-fun tp!688113 () Bool)

(declare-fun tp!688118 () Bool)

(assert (=> b!2214182 (= e!1413983 (and tp!688113 tp!688118))))

(assert (=> b!2213970 (= tp!688022 e!1413983)))

(declare-fun b!2214184 () Bool)

(declare-fun tp!688116 () Bool)

(declare-fun tp!688112 () Bool)

(assert (=> b!2214184 (= e!1413983 (and tp!688116 tp!688112))))

(declare-fun b!2214183 () Bool)

(declare-fun tp!688114 () Bool)

(assert (=> b!2214183 (= e!1413983 tp!688114)))

(assert (= (and b!2213970 ((_ is ElementMatch!6315) (regex!4171 (rule!6471 t2!61)))) b!2214181))

(assert (= (and b!2213970 ((_ is Concat!10623) (regex!4171 (rule!6471 t2!61)))) b!2214182))

(assert (= (and b!2213970 ((_ is Star!6315) (regex!4171 (rule!6471 t2!61)))) b!2214183))

(assert (= (and b!2213970 ((_ is Union!6315) (regex!4171 (rule!6471 t2!61)))) b!2214184))

(declare-fun b!2214192 () Bool)

(declare-fun e!1413990 () Bool)

(declare-fun tp!688123 () Bool)

(assert (=> b!2214192 (= e!1413990 (and tp_is_empty!9813 tp!688123))))

(assert (=> b!2213963 (= tp!688036 e!1413990)))

(assert (= (and b!2213963 ((_ is Cons!25894) (originalCharacters!4943 t2!61))) b!2214192))

(declare-fun b!2214193 () Bool)

(declare-fun e!1413991 () Bool)

(declare-fun tp!688124 () Bool)

(assert (=> b!2214193 (= e!1413991 (and tp_is_empty!9813 tp!688124))))

(assert (=> b!2213974 (= tp!688025 e!1413991)))

(assert (= (and b!2213974 ((_ is Cons!25894) (originalCharacters!4943 t1!61))) b!2214193))

(declare-fun b!2214221 () Bool)

(declare-fun b_free!63929 () Bool)

(declare-fun b_next!64633 () Bool)

(assert (=> b!2214221 (= b_free!63929 (not b_next!64633))))

(declare-fun tp!688153 () Bool)

(declare-fun b_and!173597 () Bool)

(assert (=> b!2214221 (= tp!688153 b_and!173597)))

(declare-fun b_free!63931 () Bool)

(declare-fun b_next!64635 () Bool)

(assert (=> b!2214221 (= b_free!63931 (not b_next!64635))))

(declare-fun tb!132371 () Bool)

(declare-fun t!198828 () Bool)

(assert (=> (and b!2214221 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 (t!198755 l!6601))))) (toChars!5741 (transformation!4171 (rule!6471 t2!61)))) t!198828) tb!132371))

(declare-fun result!160604 () Bool)

(assert (= result!160604 result!160522))

(assert (=> b!2214069 t!198828))

(declare-fun tb!132373 () Bool)

(declare-fun t!198830 () Bool)

(assert (=> (and b!2214221 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 (t!198755 l!6601))))) (toChars!5741 (transformation!4171 (rule!6471 t1!61)))) t!198830) tb!132373))

(declare-fun result!160606 () Bool)

(assert (= result!160606 result!160538))

(assert (=> b!2214082 t!198830))

(declare-fun t!198832 () Bool)

(declare-fun tb!132375 () Bool)

(assert (=> (and b!2214221 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 (t!198755 l!6601))))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601))))) t!198832) tb!132375))

(declare-fun result!160608 () Bool)

(assert (= result!160608 result!160546))

(assert (=> b!2214094 t!198832))

(declare-fun tp!688150 () Bool)

(declare-fun b_and!173599 () Bool)

(assert (=> b!2214221 (= tp!688150 (and (=> t!198828 result!160604) (=> t!198830 result!160606) (=> t!198832 result!160608) b_and!173599))))

(declare-fun e!1414027 () Bool)

(assert (=> b!2213976 (= tp!688031 e!1414027)))

(declare-fun tp!688154 () Bool)

(declare-fun b!2214220 () Bool)

(declare-fun e!1414022 () Bool)

(declare-fun e!1414024 () Bool)

(assert (=> b!2214220 (= e!1414022 (and tp!688154 (inv!35091 (tag!4661 (rule!6471 (h!31296 (t!198755 l!6601))))) (inv!35094 (transformation!4171 (rule!6471 (h!31296 (t!198755 l!6601))))) e!1414024))))

(assert (=> b!2214221 (= e!1414024 (and tp!688153 tp!688150))))

(declare-fun b!2214219 () Bool)

(declare-fun e!1414023 () Bool)

(declare-fun tp!688151 () Bool)

(assert (=> b!2214219 (= e!1414023 (and (inv!21 (value!131606 (h!31296 (t!198755 l!6601)))) e!1414022 tp!688151))))

(declare-fun b!2214218 () Bool)

(declare-fun tp!688152 () Bool)

(assert (=> b!2214218 (= e!1414027 (and (inv!35095 (h!31296 (t!198755 l!6601))) e!1414023 tp!688152))))

(assert (= b!2214220 b!2214221))

(assert (= b!2214219 b!2214220))

(assert (= b!2214218 b!2214219))

(assert (= (and b!2213976 ((_ is Cons!25895) (t!198755 l!6601))) b!2214218))

(declare-fun m!2656435 () Bool)

(assert (=> b!2214220 m!2656435))

(declare-fun m!2656437 () Bool)

(assert (=> b!2214220 m!2656437))

(declare-fun m!2656439 () Bool)

(assert (=> b!2214219 m!2656439))

(declare-fun m!2656441 () Bool)

(assert (=> b!2214218 m!2656441))

(declare-fun b!2214236 () Bool)

(declare-fun e!1414033 () Bool)

(declare-fun tp!688172 () Bool)

(assert (=> b!2214236 (= e!1414033 (and tp_is_empty!9813 tp!688172))))

(assert (=> b!2213965 (= tp!688034 e!1414033)))

(assert (= (and b!2213965 ((_ is Cons!25894) (originalCharacters!4943 (h!31296 l!6601)))) b!2214236))

(declare-fun b_lambda!71297 () Bool)

(assert (= b_lambda!71281 (or (and b!2214221 b_free!63931 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 (t!198755 l!6601))))) (toChars!5741 (transformation!4171 (rule!6471 t1!61))))) (and b!2213962 b_free!63905 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (toChars!5741 (transformation!4171 (rule!6471 t1!61))))) (and b!2213972 b_free!63909 (= (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (toChars!5741 (transformation!4171 (rule!6471 t1!61))))) (and b!2214139 b_free!63919 (= (toChars!5741 (transformation!4171 (h!31297 (t!198756 rules!4462)))) (toChars!5741 (transformation!4171 (rule!6471 t1!61))))) (and b!2213969 b_free!63901) (and b!2213961 b_free!63915 (= (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toChars!5741 (transformation!4171 (rule!6471 t1!61))))) b_lambda!71297)))

(declare-fun b_lambda!71299 () Bool)

(assert (= b_lambda!71279 (or (and b!2213969 b_free!63901 (= (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (toChars!5741 (transformation!4171 (rule!6471 t2!61))))) (and b!2213962 b_free!63905 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))) (toChars!5741 (transformation!4171 (rule!6471 t2!61))))) (and b!2214139 b_free!63919 (= (toChars!5741 (transformation!4171 (h!31297 (t!198756 rules!4462)))) (toChars!5741 (transformation!4171 (rule!6471 t2!61))))) (and b!2213972 b_free!63909) (and b!2214221 b_free!63931 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 (t!198755 l!6601))))) (toChars!5741 (transformation!4171 (rule!6471 t2!61))))) (and b!2213961 b_free!63915 (= (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toChars!5741 (transformation!4171 (rule!6471 t2!61))))) b_lambda!71299)))

(declare-fun b_lambda!71301 () Bool)

(assert (= b_lambda!71283 (or (and b!2214221 b_free!63931 (= (toChars!5741 (transformation!4171 (rule!6471 (h!31296 (t!198755 l!6601))))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))))) (and b!2213961 b_free!63915 (= (toChars!5741 (transformation!4171 (h!31297 rules!4462))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))))) (and b!2213969 b_free!63901 (= (toChars!5741 (transformation!4171 (rule!6471 t1!61))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))))) (and b!2213972 b_free!63909 (= (toChars!5741 (transformation!4171 (rule!6471 t2!61))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))))) (and b!2213962 b_free!63905) (and b!2214139 b_free!63919 (= (toChars!5741 (transformation!4171 (h!31297 (t!198756 rules!4462)))) (toChars!5741 (transformation!4171 (rule!6471 (h!31296 l!6601)))))) b_lambda!71301)))

(declare-fun b_lambda!71303 () Bool)

(assert (= b_lambda!71273 (or (and start!215784 b_free!63911) b_lambda!71303)))

(check-sat (not b!2214179) (not d!662116) (not b!2214180) (not b!2214007) (not b!2214089) (not b!2214052) (not b!2214218) (not b!2214051) (not b!2214019) (not b!2214043) (not b!2214183) (not b!2214219) (not b!2214070) b_and!173585 (not b!2214082) b_and!173561 (not b!2213979) b_and!173597 (not d!662138) (not b!2214102) (not b!2214076) b_and!173529 (not b!2214091) (not b!2214171) (not b!2214005) (not b!2214054) (not b!2214084) (not b!2214174) (not b!2214098) b_and!173523 (not b_next!64619) (not b_lambda!71299) (not b!2214236) b_and!173587 (not b!2213994) (not b!2214193) (not b!2214006) (not d!662102) (not d!662126) (not b!2214137) b_and!173565 (not b_next!64615) (not tb!132329) (not b_next!64633) (not b_next!64611) (not b!2214004) b_and!173519 b_and!173567 (not b!2214172) (not d!662128) (not b!2214039) (not b!2214178) (not b_next!64607) (not d!662092) (not b!2214053) b_and!173563 (not b!2214106) (not b_next!64635) (not b_next!64623) (not b!2214083) (not b_next!64609) (not b_next!64617) tp_is_empty!9813 b_and!173599 (not b_next!64605) (not tb!132321) b_and!173515 (not b!2214095) (not b_next!64621) (not b_lambda!71301) (not b!2214094) (not b!2214175) (not b!2214184) (not b!2214041) (not b!2214069) (not d!662112) (not b_lambda!71297) (not b_next!64613) b_and!173533 (not b!2214192) (not b!2214176) (not b_next!64603) (not b_lambda!71303) (not b!2214008) (not b!2214182) (not b!2214104) (not b!2214170) (not b!2214138) (not b!2214093) (not b!2214220) (not tb!132307) (not d!662108) (not d!662146))
(check-sat b_and!173585 b_and!173561 b_and!173597 b_and!173529 b_and!173523 (not b_next!64619) b_and!173587 b_and!173567 (not b_next!64607) b_and!173599 (not b_next!64621) (not b_next!64613) b_and!173533 (not b_next!64603) (not b_next!64615) b_and!173565 (not b_next!64633) (not b_next!64611) b_and!173519 b_and!173563 (not b_next!64635) (not b_next!64623) (not b_next!64609) (not b_next!64617) (not b_next!64605) b_and!173515)
