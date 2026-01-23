; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!410166 () Bool)

(assert start!410166)

(assert (=> start!410166 true))

(declare-fun b!4272822 () Bool)

(declare-fun e!2652935 () Bool)

(declare-datatypes ((List!47449 0))(
  ( (Nil!47325) (Cons!47325 (h!52745 (_ BitVec 16)) (t!353862 List!47449)) )
))
(declare-datatypes ((IArray!28619 0))(
  ( (IArray!28620 (innerList!14367 List!47449)) )
))
(declare-datatypes ((Conc!14307 0))(
  ( (Node!14307 (left!35211 Conc!14307) (right!35541 Conc!14307) (csize!28844 Int) (cheight!14518 Int)) (Leaf!22116 (xs!17613 IArray!28619) (csize!28845 Int)) (Empty!14307) )
))
(declare-datatypes ((BalanceConc!28124 0))(
  ( (BalanceConc!28125 (c!727096 Conc!14307)) )
))
(declare-fun x!742222 () BalanceConc!28124)

(declare-fun tp!1308324 () Bool)

(declare-fun inv!62530 (Conc!14307) Bool)

(assert (=> b!4272822 (= e!2652935 (and (inv!62530 (c!727096 x!742222)) tp!1308324))))

(declare-datatypes ((KeywordValueInjection!190 0))(
  ( (KeywordValueInjection!191) )
))
(declare-fun thiss!2319 () KeywordValueInjection!190)

(declare-fun inst!1769 () Bool)

(declare-fun inv!62531 (BalanceConc!28124) Bool)

(declare-fun list!17203 (BalanceConc!28124) List!47449)

(declare-datatypes ((TokenValue!8280 0))(
  ( (FloatLiteralValue!16560 (text!58405 List!47449)) (TokenValueExt!8279 (__x!28726 Int)) (Broken!41400 (value!249896 List!47449)) (Object!8403) (End!8280) (Def!8280) (Underscore!8280) (Match!8280) (Else!8280) (Error!8280) (Case!8280) (If!8280) (Extends!8280) (Abstract!8280) (Class!8280) (Val!8280) (DelimiterValue!16560 (del!8340 List!47449)) (KeywordValue!8286 (value!249897 List!47449)) (CommentValue!16560 (value!249898 List!47449)) (WhitespaceValue!16560 (value!249899 List!47449)) (IndentationValue!8280 (value!249900 List!47449)) (String!55315) (Int32!8280) (Broken!41401 (value!249901 List!47449)) (Boolean!8281) (Unit!66258) (OperatorValue!8283 (op!8340 List!47449)) (IdentifierValue!16560 (value!249902 List!47449)) (IdentifierValue!16561 (value!249903 List!47449)) (WhitespaceValue!16561 (value!249904 List!47449)) (True!16560) (False!16560) (Broken!41402 (value!249905 List!47449)) (Broken!41403 (value!249906 List!47449)) (True!16561) (RightBrace!8280) (RightBracket!8280) (Colon!8280) (Null!8280) (Comma!8280) (LeftBracket!8280) (False!16561) (LeftBrace!8280) (ImaginaryLiteralValue!8280 (text!58406 List!47449)) (StringLiteralValue!24840 (value!249907 List!47449)) (EOFValue!8280 (value!249908 List!47449)) (IdentValue!8280 (value!249909 List!47449)) (DelimiterValue!16561 (value!249910 List!47449)) (DedentValue!8280 (value!249911 List!47449)) (NewLineValue!8280 (value!249912 List!47449)) (IntegerValue!24840 (value!249913 (_ BitVec 32)) (text!58407 List!47449)) (IntegerValue!24841 (value!249914 Int) (text!58408 List!47449)) (Times!8280) (Or!8280) (Equal!8280) (Minus!8280) (Broken!41404 (value!249915 List!47449)) (And!8280) (Div!8280) (LessEqual!8280) (Mod!8280) (Concat!21178) (Not!8280) (Plus!8280) (SpaceValue!8280 (value!249916 List!47449)) (IntegerValue!24842 (value!249917 Int) (text!58409 List!47449)) (StringLiteralValue!24841 (text!58410 List!47449)) (FloatLiteralValue!16561 (text!58411 List!47449)) (BytesLiteralValue!8280 (value!249918 List!47449)) (CommentValue!16561 (value!249919 List!47449)) (StringLiteralValue!24842 (value!249920 List!47449)) (ErrorTokenValue!8280 (msg!8341 List!47449)) )
))
(declare-fun toCharacters!7 (KeywordValueInjection!190 TokenValue!8280) BalanceConc!28124)

(declare-fun toValue!14 (KeywordValueInjection!190 BalanceConc!28124) TokenValue!8280)

(assert (=> start!410166 (= inst!1769 (=> (and (inv!62531 x!742222) e!2652935) (= (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))) (list!17203 x!742222))))))

(assert (= start!410166 b!4272822))

(declare-fun m!4866729 () Bool)

(assert (=> b!4272822 m!4866729))

(declare-fun m!4866731 () Bool)

(assert (=> start!410166 m!4866731))

(declare-fun m!4866733 () Bool)

(assert (=> start!410166 m!4866733))

(declare-fun m!4866735 () Bool)

(assert (=> start!410166 m!4866735))

(declare-fun m!4866737 () Bool)

(assert (=> start!410166 m!4866737))

(declare-fun m!4866739 () Bool)

(assert (=> start!410166 m!4866739))

(assert (=> start!410166 m!4866731))

(assert (=> start!410166 m!4866739))

(declare-fun bs!601548 () Bool)

(declare-fun neg-inst!1769 () Bool)

(declare-fun s!240142 () Bool)

(assert (= bs!601548 (and neg-inst!1769 s!240142)))

(assert (=> bs!601548 (=> true (= (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))) (list!17203 x!742222)))))

(assert (=> m!4866735 m!4866739))

(assert (=> m!4866735 m!4866731))

(assert (=> m!4866735 m!4866733))

(assert (=> m!4866735 s!240142))

(assert (=> m!4866739 s!240142))

(declare-fun bs!601549 () Bool)

(assert (= bs!601549 (and neg-inst!1769 start!410166)))

(assert (=> bs!601549 (= true inst!1769)))

(declare-fun lambda!131133 () Int)

(declare-fun Forall!1650 (Int) Bool)

(assert (=> start!410166 (= (Forall!1650 lambda!131133) inst!1769)))

(assert (=> start!410166 (not (Forall!1650 lambda!131133))))

(assert (=> start!410166 true))

(assert (= neg-inst!1769 inst!1769))

(declare-fun m!4866741 () Bool)

(assert (=> start!410166 m!4866741))

(assert (=> start!410166 m!4866741))

(check-sat (not start!410166) (not b!4272822) (not bs!601548))
(check-sat)
(get-model)

(declare-fun d!1260525 () Bool)

(declare-fun list!17205 (Conc!14307) List!47449)

(assert (=> d!1260525 (= (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))) (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun bs!601551 () Bool)

(assert (= bs!601551 d!1260525))

(declare-fun m!4866745 () Bool)

(assert (=> bs!601551 m!4866745))

(assert (=> bs!601548 d!1260525))

(declare-fun b!4272963 () Bool)

(declare-fun e!2653006 () BalanceConc!28124)

(declare-fun stringUnderscoreConc!0 () BalanceConc!28124)

(assert (=> b!4272963 (= e!2653006 stringUnderscoreConc!0)))

(declare-fun b!4272964 () Bool)

(declare-fun e!2653014 () BalanceConc!28124)

(declare-fun e!2653011 () BalanceConc!28124)

(assert (=> b!4272964 (= e!2653014 e!2653011)))

(declare-fun c!727175 () Bool)

(get-info :version)

(assert (=> b!4272964 (= c!727175 ((_ is Broken!41400) (toValue!14 thiss!2319 x!742222)))))

(declare-fun b!4272965 () Bool)

(declare-fun e!2653018 () BalanceConc!28124)

(declare-fun stringMatchConc!0 () BalanceConc!28124)

(assert (=> b!4272965 (= e!2653018 stringMatchConc!0)))

(declare-fun b!4272966 () Bool)

(declare-fun c!727177 () Bool)

(assert (=> b!4272966 (= c!727177 ((_ is End!8280) (toValue!14 thiss!2319 x!742222)))))

(assert (=> b!4272966 (= e!2653006 e!2653014)))

(declare-fun b!4272967 () Bool)

(declare-fun e!2653008 () BalanceConc!28124)

(declare-fun stringObjectConc!0 () BalanceConc!28124)

(assert (=> b!4272967 (= e!2653008 stringObjectConc!0)))

(declare-fun b!4272968 () Bool)

(declare-fun e!2653015 () BalanceConc!28124)

(declare-fun stringIfConc!0 () BalanceConc!28124)

(assert (=> b!4272968 (= e!2653015 stringIfConc!0)))

(declare-fun b!4272969 () Bool)

(assert (=> b!4272969 (= e!2653011 (BalanceConc!28125 Empty!14307))))

(declare-fun b!4272970 () Bool)

(declare-fun e!2653019 () BalanceConc!28124)

(declare-fun stringValConc!0 () BalanceConc!28124)

(assert (=> b!4272970 (= e!2653019 stringValConc!0)))

(declare-fun b!4272971 () Bool)

(declare-fun e!2653010 () BalanceConc!28124)

(declare-fun stringErrorConc!0 () BalanceConc!28124)

(assert (=> b!4272971 (= e!2653010 stringErrorConc!0)))

(declare-fun b!4272972 () Bool)

(declare-fun e!2653017 () BalanceConc!28124)

(declare-fun stringAbstractConc!0 () BalanceConc!28124)

(assert (=> b!4272972 (= e!2653017 stringAbstractConc!0)))

(declare-fun b!4272973 () Bool)

(declare-fun c!727180 () Bool)

(assert (=> b!4272973 (= c!727180 ((_ is Class!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun e!2653016 () BalanceConc!28124)

(declare-fun e!2653009 () BalanceConc!28124)

(assert (=> b!4272973 (= e!2653016 e!2653009)))

(declare-fun b!4272974 () Bool)

(assert (=> b!4272974 (= e!2653008 e!2653019)))

(declare-fun c!727170 () Bool)

(assert (=> b!4272974 (= c!727170 ((_ is Val!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun b!4272975 () Bool)

(declare-fun c!727171 () Bool)

(assert (=> b!4272975 (= c!727171 ((_ is Else!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun e!2653007 () BalanceConc!28124)

(declare-fun e!2653012 () BalanceConc!28124)

(assert (=> b!4272975 (= e!2653007 e!2653012)))

(declare-fun d!1260527 () Bool)

(declare-fun c!727178 () Bool)

(assert (=> d!1260527 (= c!727178 ((_ is Abstract!8280) (toValue!14 thiss!2319 x!742222)))))

(assert (=> d!1260527 (= (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)) e!2653017)))

(declare-fun b!4272976 () Bool)

(declare-fun seqFromList!5880 (List!47449) BalanceConc!28124)

(assert (=> b!4272976 (= e!2653011 (seqFromList!5880 (value!249896 (toValue!14 thiss!2319 x!742222))))))

(declare-fun b!4272977 () Bool)

(assert (=> b!4272977 (= e!2653015 e!2653018)))

(declare-fun c!727176 () Bool)

(assert (=> b!4272977 (= c!727176 ((_ is Match!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun b!4272978 () Bool)

(declare-fun c!727179 () Bool)

(assert (=> b!4272978 (= c!727179 ((_ is Object!8403) (toValue!14 thiss!2319 x!742222)))))

(assert (=> b!4272978 (= e!2653018 e!2653008)))

(declare-fun b!4272979 () Bool)

(declare-fun c!727173 () Bool)

(assert (=> b!4272979 (= c!727173 ((_ is If!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun e!2653013 () BalanceConc!28124)

(assert (=> b!4272979 (= e!2653013 e!2653015)))

(declare-fun b!4272980 () Bool)

(assert (=> b!4272980 (= e!2653017 e!2653016)))

(declare-fun c!727172 () Bool)

(assert (=> b!4272980 (= c!727172 ((_ is Case!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun b!4272981 () Bool)

(declare-fun stringClassConc!0 () BalanceConc!28124)

(assert (=> b!4272981 (= e!2653009 stringClassConc!0)))

(declare-fun b!4272982 () Bool)

(declare-fun stringCaseConc!0 () BalanceConc!28124)

(assert (=> b!4272982 (= e!2653016 stringCaseConc!0)))

(declare-fun b!4272983 () Bool)

(declare-fun stringExtendsConc!0 () BalanceConc!28124)

(assert (=> b!4272983 (= e!2653013 stringExtendsConc!0)))

(declare-fun b!4272984 () Bool)

(declare-fun stringElseConc!0 () BalanceConc!28124)

(assert (=> b!4272984 (= e!2653012 stringElseConc!0)))

(declare-fun b!4272985 () Bool)

(assert (=> b!4272985 (= e!2653010 e!2653006)))

(declare-fun c!727181 () Bool)

(assert (=> b!4272985 (= c!727181 ((_ is Underscore!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun b!4272986 () Bool)

(declare-fun stringDefConc!0 () BalanceConc!28124)

(assert (=> b!4272986 (= e!2653007 stringDefConc!0)))

(declare-fun b!4272987 () Bool)

(declare-fun c!727174 () Bool)

(assert (=> b!4272987 (= c!727174 ((_ is Error!8280) (toValue!14 thiss!2319 x!742222)))))

(assert (=> b!4272987 (= e!2653019 e!2653010)))

(declare-fun b!4272988 () Bool)

(assert (=> b!4272988 (= e!2653009 e!2653007)))

(declare-fun c!727183 () Bool)

(assert (=> b!4272988 (= c!727183 ((_ is Def!8280) (toValue!14 thiss!2319 x!742222)))))

(declare-fun b!4272989 () Bool)

(declare-fun stringEndConc!0 () BalanceConc!28124)

(assert (=> b!4272989 (= e!2653014 stringEndConc!0)))

(declare-fun b!4272990 () Bool)

(assert (=> b!4272990 (= e!2653012 e!2653013)))

(declare-fun c!727182 () Bool)

(assert (=> b!4272990 (= c!727182 ((_ is Extends!8280) (toValue!14 thiss!2319 x!742222)))))

(assert (= (and d!1260527 c!727178) b!4272972))

(assert (= (and d!1260527 (not c!727178)) b!4272980))

(assert (= (and b!4272980 c!727172) b!4272982))

(assert (= (and b!4272980 (not c!727172)) b!4272973))

(assert (= (and b!4272973 c!727180) b!4272981))

(assert (= (and b!4272973 (not c!727180)) b!4272988))

(assert (= (and b!4272988 c!727183) b!4272986))

(assert (= (and b!4272988 (not c!727183)) b!4272975))

(assert (= (and b!4272975 c!727171) b!4272984))

(assert (= (and b!4272975 (not c!727171)) b!4272990))

(assert (= (and b!4272990 c!727182) b!4272983))

(assert (= (and b!4272990 (not c!727182)) b!4272979))

(assert (= (and b!4272979 c!727173) b!4272968))

(assert (= (and b!4272979 (not c!727173)) b!4272977))

(assert (= (and b!4272977 c!727176) b!4272965))

(assert (= (and b!4272977 (not c!727176)) b!4272978))

(assert (= (and b!4272978 c!727179) b!4272967))

(assert (= (and b!4272978 (not c!727179)) b!4272974))

(assert (= (and b!4272974 c!727170) b!4272970))

(assert (= (and b!4272974 (not c!727170)) b!4272987))

(assert (= (and b!4272987 c!727174) b!4272971))

(assert (= (and b!4272987 (not c!727174)) b!4272985))

(assert (= (and b!4272985 c!727181) b!4272963))

(assert (= (and b!4272985 (not c!727181)) b!4272966))

(assert (= (and b!4272966 c!727177) b!4272989))

(assert (= (and b!4272966 (not c!727177)) b!4272964))

(assert (= (and b!4272964 c!727175) b!4272976))

(assert (= (and b!4272964 (not c!727175)) b!4272969))

(declare-fun m!4866779 () Bool)

(assert (=> b!4272965 m!4866779))

(declare-fun m!4866781 () Bool)

(assert (=> b!4272989 m!4866781))

(declare-fun m!4866783 () Bool)

(assert (=> b!4272972 m!4866783))

(declare-fun m!4866785 () Bool)

(assert (=> b!4272984 m!4866785))

(declare-fun m!4866787 () Bool)

(assert (=> b!4272967 m!4866787))

(declare-fun m!4866789 () Bool)

(assert (=> b!4272970 m!4866789))

(declare-fun m!4866791 () Bool)

(assert (=> b!4272963 m!4866791))

(declare-fun m!4866793 () Bool)

(assert (=> b!4272983 m!4866793))

(declare-fun m!4866795 () Bool)

(assert (=> b!4272971 m!4866795))

(declare-fun m!4866797 () Bool)

(assert (=> b!4272976 m!4866797))

(declare-fun m!4866799 () Bool)

(assert (=> b!4272968 m!4866799))

(declare-fun m!4866801 () Bool)

(assert (=> b!4272982 m!4866801))

(declare-fun m!4866803 () Bool)

(assert (=> b!4272986 m!4866803))

(declare-fun m!4866805 () Bool)

(assert (=> b!4272981 m!4866805))

(assert (=> bs!601548 d!1260527))

(declare-fun d!1260533 () Bool)

(declare-fun lt!1513114 () List!47449)

(declare-fun efficientList!541 (BalanceConc!28124) List!47449)

(assert (=> d!1260533 (= lt!1513114 (efficientList!541 x!742222))))

(assert (=> d!1260533 (= (toValue!14 thiss!2319 x!742222) (ite (= lt!1513114 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))) Abstract!8280 (ite (= lt!1513114 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) Case!8280 (ite (= lt!1513114 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))) Class!8280 (ite (= lt!1513114 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))) Def!8280 (ite (= lt!1513114 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) Else!8280 (ite (= lt!1513114 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325)))))))) Extends!8280 (ite (= lt!1513114 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325))) If!8280 (ite (= lt!1513114 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325)))))) Match!8280 (ite (= lt!1513114 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))) Object!8403 (ite (= lt!1513114 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325)))) Val!8280 (ite (= lt!1513114 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325)))))) Error!8280 (ite (= lt!1513114 (Cons!47325 #x005F Nil!47325)) Underscore!8280 (ite (= lt!1513114 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325)))) End!8280 (Broken!41400 lt!1513114)))))))))))))))))

(declare-fun bs!601554 () Bool)

(assert (= bs!601554 d!1260533))

(declare-fun m!4866807 () Bool)

(assert (=> bs!601554 m!4866807))

(assert (=> bs!601548 d!1260533))

(declare-fun d!1260535 () Bool)

(assert (=> d!1260535 (= (list!17203 x!742222) (list!17205 (c!727096 x!742222)))))

(declare-fun bs!601555 () Bool)

(assert (= bs!601555 d!1260535))

(declare-fun m!4866809 () Bool)

(assert (=> bs!601555 m!4866809))

(assert (=> bs!601548 d!1260535))

(check-sat (not b!4272965) (not d!1260533) (not b!4272968) (not d!1260535) (not start!410166) (not b!4272967) (not b!4272989) (not b!4272982) (not b!4272971) (not d!1260525) (not b!4272984) (not b!4272983) (not b!4272976) (not b!4272822) (not b!4272972) (not b!4272970) (not b!4272986) (not b!4272963) (not b!4272981))
(check-sat)
(get-model)

(declare-fun b!4273018 () Bool)

(declare-fun e!2653033 () List!47449)

(declare-fun ++!12082 (List!47449 List!47449) List!47449)

(assert (=> b!4273018 (= e!2653033 (++!12082 (list!17205 (left!35211 (c!727096 x!742222))) (list!17205 (right!35541 (c!727096 x!742222)))))))

(declare-fun d!1260543 () Bool)

(declare-fun c!727197 () Bool)

(assert (=> d!1260543 (= c!727197 ((_ is Empty!14307) (c!727096 x!742222)))))

(declare-fun e!2653032 () List!47449)

(assert (=> d!1260543 (= (list!17205 (c!727096 x!742222)) e!2653032)))

(declare-fun b!4273016 () Bool)

(assert (=> b!4273016 (= e!2653032 e!2653033)))

(declare-fun c!727198 () Bool)

(assert (=> b!4273016 (= c!727198 ((_ is Leaf!22116) (c!727096 x!742222)))))

(declare-fun b!4273017 () Bool)

(declare-fun list!17207 (IArray!28619) List!47449)

(assert (=> b!4273017 (= e!2653033 (list!17207 (xs!17613 (c!727096 x!742222))))))

(declare-fun b!4273015 () Bool)

(assert (=> b!4273015 (= e!2653032 Nil!47325)))

(assert (= (and d!1260543 c!727197) b!4273015))

(assert (= (and d!1260543 (not c!727197)) b!4273016))

(assert (= (and b!4273016 c!727198) b!4273017))

(assert (= (and b!4273016 (not c!727198)) b!4273018))

(declare-fun m!4866833 () Bool)

(assert (=> b!4273018 m!4866833))

(declare-fun m!4866835 () Bool)

(assert (=> b!4273018 m!4866835))

(assert (=> b!4273018 m!4866833))

(assert (=> b!4273018 m!4866835))

(declare-fun m!4866837 () Bool)

(assert (=> b!4273018 m!4866837))

(declare-fun m!4866839 () Bool)

(assert (=> b!4273017 m!4866839))

(assert (=> d!1260535 d!1260543))

(declare-fun d!1260549 () Bool)

(declare-fun lt!1513135 () List!47449)

(assert (=> d!1260549 (= lt!1513135 (list!17203 x!742222))))

(declare-fun efficientList!543 (Conc!14307 List!47449) List!47449)

(declare-fun efficientList$default$2!189 (Conc!14307) List!47449)

(assert (=> d!1260549 (= lt!1513135 (efficientList!543 (c!727096 x!742222) (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> d!1260549 (= (efficientList!541 x!742222) lt!1513135)))

(declare-fun bs!601558 () Bool)

(assert (= bs!601558 d!1260549))

(assert (=> bs!601558 m!4866735))

(declare-fun m!4866859 () Bool)

(assert (=> bs!601558 m!4866859))

(assert (=> bs!601558 m!4866859))

(declare-fun m!4866861 () Bool)

(assert (=> bs!601558 m!4866861))

(assert (=> d!1260533 d!1260549))

(declare-fun b!4273040 () Bool)

(declare-fun e!2653044 () List!47449)

(assert (=> b!4273040 (= e!2653044 (++!12082 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun d!1260555 () Bool)

(declare-fun c!727208 () Bool)

(assert (=> d!1260555 (= c!727208 ((_ is Empty!14307) (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun e!2653043 () List!47449)

(assert (=> d!1260555 (= (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) e!2653043)))

(declare-fun b!4273038 () Bool)

(assert (=> b!4273038 (= e!2653043 e!2653044)))

(declare-fun c!727209 () Bool)

(assert (=> b!4273038 (= c!727209 ((_ is Leaf!22116) (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273039 () Bool)

(assert (=> b!4273039 (= e!2653044 (list!17207 (xs!17613 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273037 () Bool)

(assert (=> b!4273037 (= e!2653043 Nil!47325)))

(assert (= (and d!1260555 c!727208) b!4273037))

(assert (= (and d!1260555 (not c!727208)) b!4273038))

(assert (= (and b!4273038 c!727209) b!4273039))

(assert (= (and b!4273038 (not c!727209)) b!4273040))

(declare-fun m!4866863 () Bool)

(assert (=> b!4273040 m!4866863))

(declare-fun m!4866865 () Bool)

(assert (=> b!4273040 m!4866865))

(assert (=> b!4273040 m!4866863))

(assert (=> b!4273040 m!4866865))

(declare-fun m!4866869 () Bool)

(assert (=> b!4273040 m!4866869))

(declare-fun m!4866871 () Bool)

(assert (=> b!4273039 m!4866871))

(assert (=> d!1260525 d!1260555))

(check-sat (not b!4272965) (not b!4273040) (not b!4272968) (not b!4273018) (not start!410166) (not d!1260549) (not b!4273017) (not b!4272989) (not b!4272982) (not b!4272971) (not b!4272984) (not b!4272983) (not b!4273039) (not b!4272967) (not b!4272976) (not b!4272822) (not b!4272972) (not b!4272970) (not b!4272986) (not b!4272963) (not b!4272981))
(check-sat)
(get-model)

(assert (=> start!410166 d!1260525))

(declare-fun d!1260561 () Bool)

(declare-fun isBalanced!3853 (Conc!14307) Bool)

(assert (=> d!1260561 (= (inv!62531 x!742222) (isBalanced!3853 (c!727096 x!742222)))))

(declare-fun bs!601561 () Bool)

(assert (= bs!601561 d!1260561))

(declare-fun m!4866885 () Bool)

(assert (=> bs!601561 m!4866885))

(assert (=> start!410166 d!1260561))

(assert (=> start!410166 d!1260533))

(assert (=> start!410166 d!1260527))

(assert (=> start!410166 d!1260535))

(declare-fun d!1260563 () Bool)

(declare-fun choose!26057 (Int) Bool)

(assert (=> d!1260563 (= (Forall!1650 lambda!131133) (choose!26057 lambda!131133))))

(declare-fun bs!601562 () Bool)

(assert (= bs!601562 d!1260563))

(declare-fun m!4866887 () Bool)

(assert (=> bs!601562 m!4866887))

(assert (=> start!410166 d!1260563))

(declare-fun d!1260565 () Bool)

(declare-fun c!727215 () Bool)

(assert (=> d!1260565 (= c!727215 ((_ is Node!14307) (c!727096 x!742222)))))

(declare-fun e!2653061 () Bool)

(assert (=> d!1260565 (= (inv!62530 (c!727096 x!742222)) e!2653061)))

(declare-fun b!4273064 () Bool)

(declare-fun inv!62535 (Conc!14307) Bool)

(assert (=> b!4273064 (= e!2653061 (inv!62535 (c!727096 x!742222)))))

(declare-fun b!4273065 () Bool)

(declare-fun e!2653062 () Bool)

(assert (=> b!4273065 (= e!2653061 e!2653062)))

(declare-fun res!1755050 () Bool)

(assert (=> b!4273065 (= res!1755050 (not ((_ is Leaf!22116) (c!727096 x!742222))))))

(assert (=> b!4273065 (=> res!1755050 e!2653062)))

(declare-fun b!4273066 () Bool)

(declare-fun inv!62536 (Conc!14307) Bool)

(assert (=> b!4273066 (= e!2653062 (inv!62536 (c!727096 x!742222)))))

(assert (= (and d!1260565 c!727215) b!4273064))

(assert (= (and d!1260565 (not c!727215)) b!4273065))

(assert (= (and b!4273065 (not res!1755050)) b!4273066))

(declare-fun m!4866889 () Bool)

(assert (=> b!4273064 m!4866889))

(declare-fun m!4866891 () Bool)

(assert (=> b!4273066 m!4866891))

(assert (=> b!4272822 d!1260565))

(declare-fun d!1260567 () Bool)

(assert (=> d!1260567 (= stringAbstractConc!0 (seqFromList!5880 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))

(declare-fun bs!601563 () Bool)

(assert (= bs!601563 d!1260567))

(declare-fun m!4866893 () Bool)

(assert (=> bs!601563 m!4866893))

(assert (=> b!4272972 d!1260567))

(assert (=> d!1260549 d!1260535))

(declare-fun b!4273079 () Bool)

(declare-fun e!2653069 () List!47449)

(declare-fun call!294197 () List!47449)

(assert (=> b!4273079 (= e!2653069 call!294197)))

(declare-fun b!4273080 () Bool)

(declare-fun e!2653071 () List!47449)

(declare-fun lt!1513146 () List!47449)

(assert (=> b!4273080 (= e!2653071 lt!1513146)))

(declare-fun b!4273081 () Bool)

(declare-datatypes ((Unit!66261 0))(
  ( (Unit!66262) )
))
(declare-fun lt!1513150 () Unit!66261)

(declare-fun lt!1513149 () Unit!66261)

(assert (=> b!4273081 (= lt!1513150 lt!1513149)))

(declare-fun lt!1513147 () List!47449)

(assert (=> b!4273081 (= (++!12082 (++!12082 lt!1513147 lt!1513146) (efficientList$default$2!189 (c!727096 x!742222))) (++!12082 lt!1513147 call!294197))))

(declare-fun lemmaConcatAssociativity!2719 (List!47449 List!47449 List!47449) Unit!66261)

(assert (=> b!4273081 (= lt!1513149 (lemmaConcatAssociativity!2719 lt!1513147 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> b!4273081 (= lt!1513146 (list!17205 (right!35541 (c!727096 x!742222))))))

(assert (=> b!4273081 (= lt!1513147 (list!17205 (left!35211 (c!727096 x!742222))))))

(assert (=> b!4273081 (= e!2653069 (efficientList!543 (left!35211 (c!727096 x!742222)) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun bm!294192 () Bool)

(declare-fun c!727223 () Bool)

(declare-fun c!727224 () Bool)

(assert (=> bm!294192 (= c!727223 c!727224)))

(assert (=> bm!294192 (= call!294197 (++!12082 e!2653071 (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4273083 () Bool)

(declare-fun e!2653070 () List!47449)

(assert (=> b!4273083 (= e!2653070 e!2653069)))

(assert (=> b!4273083 (= c!727224 ((_ is Leaf!22116) (c!727096 x!742222)))))

(declare-fun b!4273084 () Bool)

(declare-fun efficientList!545 (IArray!28619) List!47449)

(assert (=> b!4273084 (= e!2653071 (efficientList!545 (xs!17613 (c!727096 x!742222))))))

(declare-fun b!4273082 () Bool)

(assert (=> b!4273082 (= e!2653070 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun d!1260569 () Bool)

(declare-fun lt!1513148 () List!47449)

(assert (=> d!1260569 (= lt!1513148 (++!12082 (list!17205 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> d!1260569 (= lt!1513148 e!2653070)))

(declare-fun c!727222 () Bool)

(assert (=> d!1260569 (= c!727222 ((_ is Empty!14307) (c!727096 x!742222)))))

(assert (=> d!1260569 (= (efficientList!543 (c!727096 x!742222) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513148)))

(assert (= (and d!1260569 c!727222) b!4273082))

(assert (= (and d!1260569 (not c!727222)) b!4273083))

(assert (= (and b!4273083 c!727224) b!4273079))

(assert (= (and b!4273083 (not c!727224)) b!4273081))

(assert (= (or b!4273079 b!4273081) bm!294192))

(assert (= (and bm!294192 c!727223) b!4273084))

(assert (= (and bm!294192 (not c!727223)) b!4273080))

(assert (=> b!4273081 m!4866835))

(declare-fun m!4866911 () Bool)

(assert (=> b!4273081 m!4866911))

(declare-fun m!4866913 () Bool)

(assert (=> b!4273081 m!4866913))

(assert (=> b!4273081 m!4866859))

(assert (=> b!4273081 m!4866911))

(declare-fun m!4866915 () Bool)

(assert (=> b!4273081 m!4866915))

(assert (=> b!4273081 m!4866859))

(declare-fun m!4866917 () Bool)

(assert (=> b!4273081 m!4866917))

(assert (=> b!4273081 m!4866915))

(assert (=> b!4273081 m!4866859))

(declare-fun m!4866919 () Bool)

(assert (=> b!4273081 m!4866919))

(assert (=> b!4273081 m!4866833))

(declare-fun m!4866921 () Bool)

(assert (=> b!4273081 m!4866921))

(assert (=> bm!294192 m!4866859))

(declare-fun m!4866923 () Bool)

(assert (=> bm!294192 m!4866923))

(declare-fun m!4866925 () Bool)

(assert (=> b!4273084 m!4866925))

(assert (=> d!1260569 m!4866809))

(assert (=> d!1260569 m!4866809))

(assert (=> d!1260569 m!4866859))

(declare-fun m!4866927 () Bool)

(assert (=> d!1260569 m!4866927))

(assert (=> d!1260549 d!1260569))

(declare-fun d!1260589 () Bool)

(assert (=> d!1260589 (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)))

(assert (=> d!1260549 d!1260589))

(declare-fun tp!1308335 () Bool)

(declare-fun e!2653080 () Bool)

(declare-fun b!4273099 () Bool)

(declare-fun tp!1308336 () Bool)

(assert (=> b!4273099 (= e!2653080 (and (inv!62530 (left!35211 (c!727096 x!742222))) tp!1308335 (inv!62530 (right!35541 (c!727096 x!742222))) tp!1308336))))

(declare-fun b!4273100 () Bool)

(declare-fun inv!62537 (IArray!28619) Bool)

(assert (=> b!4273100 (= e!2653080 (inv!62537 (xs!17613 (c!727096 x!742222))))))

(assert (=> b!4272822 (= tp!1308324 (and (inv!62530 (c!727096 x!742222)) e!2653080))))

(assert (= (and b!4272822 ((_ is Node!14307) (c!727096 x!742222))) b!4273099))

(assert (= (and b!4272822 ((_ is Leaf!22116) (c!727096 x!742222))) b!4273100))

(declare-fun m!4866929 () Bool)

(assert (=> b!4273099 m!4866929))

(declare-fun m!4866931 () Bool)

(assert (=> b!4273099 m!4866931))

(declare-fun m!4866933 () Bool)

(assert (=> b!4273100 m!4866933))

(assert (=> b!4272822 m!4866729))

(check-sat (not b!4272968) (not b!4273100) (not b!4273018) (not d!1260569) (not d!1260563) (not b!4272982) (not b!4272971) (not d!1260567) (not d!1260561) (not b!4272965) (not b!4273084) (not b!4273066) (not b!4273099) (not b!4273040) (not b!4272984) (not b!4272983) (not b!4273081) (not b!4273064) (not b!4273017) (not b!4273039) (not b!4272967) (not bm!294192) (not b!4272989) (not b!4272976) (not b!4272822) (not b!4272970) (not b!4272986) (not b!4272963) (not b!4272981))
(check-sat)
(get-model)

(declare-fun d!1260603 () Bool)

(assert (=> d!1260603 (= stringErrorConc!0 (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325)))))))))

(declare-fun bs!601578 () Bool)

(assert (= bs!601578 d!1260603))

(declare-fun m!4866961 () Bool)

(assert (=> bs!601578 m!4866961))

(assert (=> b!4272971 d!1260603))

(declare-fun d!1260605 () Bool)

(assert (=> d!1260605 (= stringValConc!0 (seqFromList!5880 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325)))))))

(declare-fun bs!601579 () Bool)

(assert (= bs!601579 d!1260605))

(declare-fun m!4866963 () Bool)

(assert (=> bs!601579 m!4866963))

(assert (=> b!4272970 d!1260605))

(declare-fun d!1260609 () Bool)

(assert (=> d!1260609 (= stringIfConc!0 (seqFromList!5880 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325))))))

(declare-fun bs!601580 () Bool)

(assert (= bs!601580 d!1260609))

(declare-fun m!4866969 () Bool)

(assert (=> bs!601580 m!4866969))

(assert (=> b!4272968 d!1260609))

(declare-fun d!1260613 () Bool)

(assert (=> d!1260613 (= stringEndConc!0 (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325)))))))

(declare-fun bs!601582 () Bool)

(assert (= bs!601582 d!1260613))

(declare-fun m!4867005 () Bool)

(assert (=> bs!601582 m!4867005))

(assert (=> b!4272989 d!1260613))

(declare-fun d!1260625 () Bool)

(declare-fun fromListB!2670 (List!47449) BalanceConc!28124)

(assert (=> d!1260625 (= (seqFromList!5880 (value!249896 (toValue!14 thiss!2319 x!742222))) (fromListB!2670 (value!249896 (toValue!14 thiss!2319 x!742222))))))

(declare-fun bs!601584 () Bool)

(assert (= bs!601584 d!1260625))

(declare-fun m!4867053 () Bool)

(assert (=> bs!601584 m!4867053))

(assert (=> b!4272976 d!1260625))

(declare-fun d!1260639 () Bool)

(assert (=> d!1260639 (= (seqFromList!5880 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))) (fromListB!2670 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))

(declare-fun bs!601585 () Bool)

(assert (= bs!601585 d!1260639))

(declare-fun m!4867057 () Bool)

(assert (=> bs!601585 m!4867057))

(assert (=> d!1260567 d!1260639))

(declare-fun d!1260641 () Bool)

(assert (=> d!1260641 (= stringClassConc!0 (seqFromList!5880 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))

(declare-fun bs!601586 () Bool)

(assert (= bs!601586 d!1260641))

(declare-fun m!4867059 () Bool)

(assert (=> bs!601586 m!4867059))

(assert (=> b!4272981 d!1260641))

(declare-fun d!1260643 () Bool)

(assert (=> d!1260643 (= stringExtendsConc!0 (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325)))))))))))

(declare-fun bs!601587 () Bool)

(assert (= bs!601587 d!1260643))

(declare-fun m!4867061 () Bool)

(assert (=> bs!601587 m!4867061))

(assert (=> b!4272983 d!1260643))

(declare-fun d!1260645 () Bool)

(assert (=> d!1260645 (= stringCaseConc!0 (seqFromList!5880 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(declare-fun bs!601588 () Bool)

(assert (= bs!601588 d!1260645))

(declare-fun m!4867063 () Bool)

(assert (=> bs!601588 m!4867063))

(assert (=> b!4272982 d!1260645))

(declare-fun d!1260647 () Bool)

(assert (=> d!1260647 (= stringDefConc!0 (seqFromList!5880 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))))))

(declare-fun bs!601589 () Bool)

(assert (= bs!601589 d!1260647))

(declare-fun m!4867065 () Bool)

(assert (=> bs!601589 m!4867065))

(assert (=> b!4272986 d!1260647))

(declare-fun d!1260649 () Bool)

(assert (=> d!1260649 (= stringMatchConc!0 (seqFromList!5880 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325)))))))))

(declare-fun bs!601590 () Bool)

(assert (= bs!601590 d!1260649))

(declare-fun m!4867067 () Bool)

(assert (=> bs!601590 m!4867067))

(assert (=> b!4272965 d!1260649))

(declare-fun d!1260651 () Bool)

(assert (=> d!1260651 (= stringObjectConc!0 (seqFromList!5880 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))

(declare-fun bs!601591 () Bool)

(assert (= bs!601591 d!1260651))

(declare-fun m!4867069 () Bool)

(assert (=> bs!601591 m!4867069))

(assert (=> b!4272967 d!1260651))

(declare-fun d!1260653 () Bool)

(assert (=> d!1260653 (= stringElseConc!0 (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(declare-fun bs!601592 () Bool)

(assert (= bs!601592 d!1260653))

(declare-fun m!4867071 () Bool)

(assert (=> bs!601592 m!4867071))

(assert (=> b!4272984 d!1260653))

(declare-fun d!1260655 () Bool)

(assert (=> d!1260655 (= stringUnderscoreConc!0 (seqFromList!5880 (Cons!47325 #x005F Nil!47325)))))

(declare-fun bs!601593 () Bool)

(assert (= bs!601593 d!1260655))

(declare-fun m!4867073 () Bool)

(assert (=> bs!601593 m!4867073))

(assert (=> b!4272963 d!1260655))

(declare-fun b!4273153 () Bool)

(declare-fun e!2653109 () Bool)

(declare-fun lt!1513161 () List!47449)

(assert (=> b!4273153 (= e!2653109 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513161 (list!17205 (c!727096 x!742222)))))))

(declare-fun b!4273151 () Bool)

(declare-fun e!2653108 () List!47449)

(assert (=> b!4273151 (= e!2653108 (Cons!47325 (h!52745 (list!17205 (c!727096 x!742222))) (++!12082 (t!353862 (list!17205 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1260657 () Bool)

(assert (=> d!1260657 e!2653109))

(declare-fun res!1755068 () Bool)

(assert (=> d!1260657 (=> (not res!1755068) (not e!2653109))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7480 (List!47449) (InoxSet (_ BitVec 16)))

(assert (=> d!1260657 (= res!1755068 (= (content!7480 lt!1513161) ((_ map or) (content!7480 (list!17205 (c!727096 x!742222))) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1260657 (= lt!1513161 e!2653108)))

(declare-fun c!727246 () Bool)

(assert (=> d!1260657 (= c!727246 ((_ is Nil!47325) (list!17205 (c!727096 x!742222))))))

(assert (=> d!1260657 (= (++!12082 (list!17205 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513161)))

(declare-fun b!4273150 () Bool)

(assert (=> b!4273150 (= e!2653108 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273152 () Bool)

(declare-fun res!1755069 () Bool)

(assert (=> b!4273152 (=> (not res!1755069) (not e!2653109))))

(declare-fun size!34649 (List!47449) Int)

(assert (=> b!4273152 (= res!1755069 (= (size!34649 lt!1513161) (+ (size!34649 (list!17205 (c!727096 x!742222))) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260657 c!727246) b!4273150))

(assert (= (and d!1260657 (not c!727246)) b!4273151))

(assert (= (and d!1260657 res!1755068) b!4273152))

(assert (= (and b!4273152 res!1755069) b!4273153))

(assert (=> b!4273151 m!4866859))

(declare-fun m!4867075 () Bool)

(assert (=> b!4273151 m!4867075))

(declare-fun m!4867077 () Bool)

(assert (=> d!1260657 m!4867077))

(assert (=> d!1260657 m!4866809))

(declare-fun m!4867079 () Bool)

(assert (=> d!1260657 m!4867079))

(assert (=> d!1260657 m!4866859))

(declare-fun m!4867081 () Bool)

(assert (=> d!1260657 m!4867081))

(declare-fun m!4867083 () Bool)

(assert (=> b!4273152 m!4867083))

(assert (=> b!4273152 m!4866809))

(declare-fun m!4867085 () Bool)

(assert (=> b!4273152 m!4867085))

(assert (=> b!4273152 m!4866859))

(declare-fun m!4867087 () Bool)

(assert (=> b!4273152 m!4867087))

(assert (=> d!1260569 d!1260657))

(assert (=> d!1260569 d!1260543))

(check-sat (not b!4273084) (not d!1260609) (not b!4273018) (not d!1260653) (not b!4273151) (not d!1260605) (not d!1260613) (not b!4273039) (not bm!294192) (not d!1260563) (not b!4272822) (not d!1260657) (not d!1260647) (not d!1260655) (not b!4273066) (not b!4273099) (not b!4273040) (not b!4273152) (not d!1260603) (not d!1260645) (not d!1260625) (not b!4273100) (not d!1260641) (not d!1260643) (not b!4273081) (not b!4273064) (not b!4273017) (not d!1260651) (not d!1260649) (not d!1260561) (not d!1260639))
(check-sat)
(get-model)

(declare-fun e!2653111 () Bool)

(declare-fun b!4273157 () Bool)

(declare-fun lt!1513162 () List!47449)

(assert (=> b!4273157 (= e!2653111 (or (not (= (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) Nil!47325)) (= lt!1513162 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4273155 () Bool)

(declare-fun e!2653110 () List!47449)

(assert (=> b!4273155 (= e!2653110 (Cons!47325 (h!52745 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun d!1260659 () Bool)

(assert (=> d!1260659 e!2653111))

(declare-fun res!1755070 () Bool)

(assert (=> d!1260659 (=> (not res!1755070) (not e!2653111))))

(assert (=> d!1260659 (= res!1755070 (= (content!7480 lt!1513162) ((_ map or) (content!7480 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (content!7480 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (=> d!1260659 (= lt!1513162 e!2653110)))

(declare-fun c!727247 () Bool)

(assert (=> d!1260659 (= c!727247 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(assert (=> d!1260659 (= (++!12082 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) lt!1513162)))

(declare-fun b!4273154 () Bool)

(assert (=> b!4273154 (= e!2653110 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273156 () Bool)

(declare-fun res!1755071 () Bool)

(assert (=> b!4273156 (=> (not res!1755071) (not e!2653111))))

(assert (=> b!4273156 (= res!1755071 (= (size!34649 lt!1513162) (+ (size!34649 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (size!34649 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (= (and d!1260659 c!727247) b!4273154))

(assert (= (and d!1260659 (not c!727247)) b!4273155))

(assert (= (and d!1260659 res!1755070) b!4273156))

(assert (= (and b!4273156 res!1755071) b!4273157))

(assert (=> b!4273155 m!4866865))

(declare-fun m!4867089 () Bool)

(assert (=> b!4273155 m!4867089))

(declare-fun m!4867091 () Bool)

(assert (=> d!1260659 m!4867091))

(assert (=> d!1260659 m!4866863))

(declare-fun m!4867093 () Bool)

(assert (=> d!1260659 m!4867093))

(assert (=> d!1260659 m!4866865))

(declare-fun m!4867095 () Bool)

(assert (=> d!1260659 m!4867095))

(declare-fun m!4867097 () Bool)

(assert (=> b!4273156 m!4867097))

(assert (=> b!4273156 m!4866863))

(declare-fun m!4867099 () Bool)

(assert (=> b!4273156 m!4867099))

(assert (=> b!4273156 m!4866865))

(declare-fun m!4867101 () Bool)

(assert (=> b!4273156 m!4867101))

(assert (=> b!4273040 d!1260659))

(declare-fun b!4273161 () Bool)

(declare-fun e!2653113 () List!47449)

(assert (=> b!4273161 (= e!2653113 (++!12082 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun d!1260661 () Bool)

(declare-fun c!727248 () Bool)

(assert (=> d!1260661 (= c!727248 ((_ is Empty!14307) (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun e!2653112 () List!47449)

(assert (=> d!1260661 (= (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) e!2653112)))

(declare-fun b!4273159 () Bool)

(assert (=> b!4273159 (= e!2653112 e!2653113)))

(declare-fun c!727249 () Bool)

(assert (=> b!4273159 (= c!727249 ((_ is Leaf!22116) (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273160 () Bool)

(assert (=> b!4273160 (= e!2653113 (list!17207 (xs!17613 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273158 () Bool)

(assert (=> b!4273158 (= e!2653112 Nil!47325)))

(assert (= (and d!1260661 c!727248) b!4273158))

(assert (= (and d!1260661 (not c!727248)) b!4273159))

(assert (= (and b!4273159 c!727249) b!4273160))

(assert (= (and b!4273159 (not c!727249)) b!4273161))

(declare-fun m!4867103 () Bool)

(assert (=> b!4273161 m!4867103))

(declare-fun m!4867105 () Bool)

(assert (=> b!4273161 m!4867105))

(assert (=> b!4273161 m!4867103))

(assert (=> b!4273161 m!4867105))

(declare-fun m!4867107 () Bool)

(assert (=> b!4273161 m!4867107))

(declare-fun m!4867109 () Bool)

(assert (=> b!4273160 m!4867109))

(assert (=> b!4273040 d!1260661))

(declare-fun b!4273165 () Bool)

(declare-fun e!2653115 () List!47449)

(assert (=> b!4273165 (= e!2653115 (++!12082 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun d!1260663 () Bool)

(declare-fun c!727250 () Bool)

(assert (=> d!1260663 (= c!727250 ((_ is Empty!14307) (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun e!2653114 () List!47449)

(assert (=> d!1260663 (= (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) e!2653114)))

(declare-fun b!4273163 () Bool)

(assert (=> b!4273163 (= e!2653114 e!2653115)))

(declare-fun c!727251 () Bool)

(assert (=> b!4273163 (= c!727251 ((_ is Leaf!22116) (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273164 () Bool)

(assert (=> b!4273164 (= e!2653115 (list!17207 (xs!17613 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273162 () Bool)

(assert (=> b!4273162 (= e!2653114 Nil!47325)))

(assert (= (and d!1260663 c!727250) b!4273162))

(assert (= (and d!1260663 (not c!727250)) b!4273163))

(assert (= (and b!4273163 c!727251) b!4273164))

(assert (= (and b!4273163 (not c!727251)) b!4273165))

(declare-fun m!4867111 () Bool)

(assert (=> b!4273165 m!4867111))

(declare-fun m!4867113 () Bool)

(assert (=> b!4273165 m!4867113))

(assert (=> b!4273165 m!4867111))

(assert (=> b!4273165 m!4867113))

(declare-fun m!4867115 () Bool)

(assert (=> b!4273165 m!4867115))

(declare-fun m!4867117 () Bool)

(assert (=> b!4273164 m!4867117))

(assert (=> b!4273040 d!1260663))

(declare-fun d!1260665 () Bool)

(assert (=> d!1260665 (= (list!17207 (xs!17613 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (innerList!14367 (xs!17613 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> b!4273039 d!1260665))

(declare-fun d!1260667 () Bool)

(assert (=> d!1260667 (= (seqFromList!5880 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) (fromListB!2670 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(declare-fun bs!601594 () Bool)

(assert (= bs!601594 d!1260667))

(declare-fun m!4867119 () Bool)

(assert (=> bs!601594 m!4867119))

(assert (=> d!1260645 d!1260667))

(declare-fun b!4273169 () Bool)

(declare-fun e!2653117 () Bool)

(declare-fun lt!1513163 () List!47449)

(assert (=> b!4273169 (= e!2653117 (or (not (= (list!17205 (right!35541 (c!727096 x!742222))) Nil!47325)) (= lt!1513163 (list!17205 (left!35211 (c!727096 x!742222))))))))

(declare-fun b!4273167 () Bool)

(declare-fun e!2653116 () List!47449)

(assert (=> b!4273167 (= e!2653116 (Cons!47325 (h!52745 (list!17205 (left!35211 (c!727096 x!742222)))) (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))) (list!17205 (right!35541 (c!727096 x!742222))))))))

(declare-fun d!1260669 () Bool)

(assert (=> d!1260669 e!2653117))

(declare-fun res!1755072 () Bool)

(assert (=> d!1260669 (=> (not res!1755072) (not e!2653117))))

(assert (=> d!1260669 (= res!1755072 (= (content!7480 lt!1513163) ((_ map or) (content!7480 (list!17205 (left!35211 (c!727096 x!742222)))) (content!7480 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (=> d!1260669 (= lt!1513163 e!2653116)))

(declare-fun c!727252 () Bool)

(assert (=> d!1260669 (= c!727252 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1260669 (= (++!12082 (list!17205 (left!35211 (c!727096 x!742222))) (list!17205 (right!35541 (c!727096 x!742222)))) lt!1513163)))

(declare-fun b!4273166 () Bool)

(assert (=> b!4273166 (= e!2653116 (list!17205 (right!35541 (c!727096 x!742222))))))

(declare-fun b!4273168 () Bool)

(declare-fun res!1755073 () Bool)

(assert (=> b!4273168 (=> (not res!1755073) (not e!2653117))))

(assert (=> b!4273168 (= res!1755073 (= (size!34649 lt!1513163) (+ (size!34649 (list!17205 (left!35211 (c!727096 x!742222)))) (size!34649 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (= (and d!1260669 c!727252) b!4273166))

(assert (= (and d!1260669 (not c!727252)) b!4273167))

(assert (= (and d!1260669 res!1755072) b!4273168))

(assert (= (and b!4273168 res!1755073) b!4273169))

(assert (=> b!4273167 m!4866835))

(declare-fun m!4867121 () Bool)

(assert (=> b!4273167 m!4867121))

(declare-fun m!4867123 () Bool)

(assert (=> d!1260669 m!4867123))

(assert (=> d!1260669 m!4866833))

(declare-fun m!4867125 () Bool)

(assert (=> d!1260669 m!4867125))

(assert (=> d!1260669 m!4866835))

(declare-fun m!4867127 () Bool)

(assert (=> d!1260669 m!4867127))

(declare-fun m!4867129 () Bool)

(assert (=> b!4273168 m!4867129))

(assert (=> b!4273168 m!4866833))

(declare-fun m!4867131 () Bool)

(assert (=> b!4273168 m!4867131))

(assert (=> b!4273168 m!4866835))

(declare-fun m!4867133 () Bool)

(assert (=> b!4273168 m!4867133))

(assert (=> b!4273018 d!1260669))

(declare-fun b!4273173 () Bool)

(declare-fun e!2653119 () List!47449)

(assert (=> b!4273173 (= e!2653119 (++!12082 (list!17205 (left!35211 (left!35211 (c!727096 x!742222)))) (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))))))

(declare-fun d!1260671 () Bool)

(declare-fun c!727253 () Bool)

(assert (=> d!1260671 (= c!727253 ((_ is Empty!14307) (left!35211 (c!727096 x!742222))))))

(declare-fun e!2653118 () List!47449)

(assert (=> d!1260671 (= (list!17205 (left!35211 (c!727096 x!742222))) e!2653118)))

(declare-fun b!4273171 () Bool)

(assert (=> b!4273171 (= e!2653118 e!2653119)))

(declare-fun c!727254 () Bool)

(assert (=> b!4273171 (= c!727254 ((_ is Leaf!22116) (left!35211 (c!727096 x!742222))))))

(declare-fun b!4273172 () Bool)

(assert (=> b!4273172 (= e!2653119 (list!17207 (xs!17613 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4273170 () Bool)

(assert (=> b!4273170 (= e!2653118 Nil!47325)))

(assert (= (and d!1260671 c!727253) b!4273170))

(assert (= (and d!1260671 (not c!727253)) b!4273171))

(assert (= (and b!4273171 c!727254) b!4273172))

(assert (= (and b!4273171 (not c!727254)) b!4273173))

(declare-fun m!4867135 () Bool)

(assert (=> b!4273173 m!4867135))

(declare-fun m!4867137 () Bool)

(assert (=> b!4273173 m!4867137))

(assert (=> b!4273173 m!4867135))

(assert (=> b!4273173 m!4867137))

(declare-fun m!4867139 () Bool)

(assert (=> b!4273173 m!4867139))

(declare-fun m!4867141 () Bool)

(assert (=> b!4273172 m!4867141))

(assert (=> b!4273018 d!1260671))

(declare-fun b!4273177 () Bool)

(declare-fun e!2653121 () List!47449)

(assert (=> b!4273177 (= e!2653121 (++!12082 (list!17205 (left!35211 (right!35541 (c!727096 x!742222)))) (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))))))

(declare-fun d!1260673 () Bool)

(declare-fun c!727255 () Bool)

(assert (=> d!1260673 (= c!727255 ((_ is Empty!14307) (right!35541 (c!727096 x!742222))))))

(declare-fun e!2653120 () List!47449)

(assert (=> d!1260673 (= (list!17205 (right!35541 (c!727096 x!742222))) e!2653120)))

(declare-fun b!4273175 () Bool)

(assert (=> b!4273175 (= e!2653120 e!2653121)))

(declare-fun c!727256 () Bool)

(assert (=> b!4273175 (= c!727256 ((_ is Leaf!22116) (right!35541 (c!727096 x!742222))))))

(declare-fun b!4273176 () Bool)

(assert (=> b!4273176 (= e!2653121 (list!17207 (xs!17613 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4273174 () Bool)

(assert (=> b!4273174 (= e!2653120 Nil!47325)))

(assert (= (and d!1260673 c!727255) b!4273174))

(assert (= (and d!1260673 (not c!727255)) b!4273175))

(assert (= (and b!4273175 c!727256) b!4273176))

(assert (= (and b!4273175 (not c!727256)) b!4273177))

(declare-fun m!4867143 () Bool)

(assert (=> b!4273177 m!4867143))

(declare-fun m!4867145 () Bool)

(assert (=> b!4273177 m!4867145))

(assert (=> b!4273177 m!4867143))

(assert (=> b!4273177 m!4867145))

(declare-fun m!4867147 () Bool)

(assert (=> b!4273177 m!4867147))

(declare-fun m!4867149 () Bool)

(assert (=> b!4273176 m!4867149))

(assert (=> b!4273018 d!1260673))

(declare-fun d!1260675 () Bool)

(declare-fun e!2653124 () Bool)

(assert (=> d!1260675 e!2653124))

(declare-fun res!1755076 () Bool)

(assert (=> d!1260675 (=> (not res!1755076) (not e!2653124))))

(declare-fun lt!1513166 () BalanceConc!28124)

(assert (=> d!1260675 (= res!1755076 (= (list!17203 lt!1513166) (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))

(declare-fun fromList!928 (List!47449) Conc!14307)

(assert (=> d!1260675 (= lt!1513166 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))

(assert (=> d!1260675 (= (fromListB!2670 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))) lt!1513166)))

(declare-fun b!4273180 () Bool)

(assert (=> b!4273180 (= e!2653124 (isBalanced!3853 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))

(assert (= (and d!1260675 res!1755076) b!4273180))

(declare-fun m!4867151 () Bool)

(assert (=> d!1260675 m!4867151))

(declare-fun m!4867153 () Bool)

(assert (=> d!1260675 m!4867153))

(assert (=> b!4273180 m!4867153))

(assert (=> b!4273180 m!4867153))

(declare-fun m!4867155 () Bool)

(assert (=> b!4273180 m!4867155))

(assert (=> d!1260639 d!1260675))

(declare-fun d!1260677 () Bool)

(assert (=> d!1260677 (= (list!17207 (xs!17613 (c!727096 x!742222))) (innerList!14367 (xs!17613 (c!727096 x!742222))))))

(assert (=> b!4273017 d!1260677))

(declare-fun d!1260679 () Bool)

(declare-fun c!727260 () Bool)

(assert (=> d!1260679 (= c!727260 ((_ is Nil!47325) lt!1513161))))

(declare-fun e!2653127 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260679 (= (content!7480 lt!1513161) e!2653127)))

(declare-fun b!4273185 () Bool)

(assert (=> b!4273185 (= e!2653127 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273186 () Bool)

(assert (=> b!4273186 (= e!2653127 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513161) true) (content!7480 (t!353862 lt!1513161))))))

(assert (= (and d!1260679 c!727260) b!4273185))

(assert (= (and d!1260679 (not c!727260)) b!4273186))

(declare-fun m!4867157 () Bool)

(assert (=> b!4273186 m!4867157))

(declare-fun m!4867159 () Bool)

(assert (=> b!4273186 m!4867159))

(assert (=> d!1260657 d!1260679))

(declare-fun d!1260681 () Bool)

(declare-fun c!727261 () Bool)

(assert (=> d!1260681 (= c!727261 ((_ is Nil!47325) (list!17205 (c!727096 x!742222))))))

(declare-fun e!2653128 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260681 (= (content!7480 (list!17205 (c!727096 x!742222))) e!2653128)))

(declare-fun b!4273187 () Bool)

(assert (=> b!4273187 (= e!2653128 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273188 () Bool)

(assert (=> b!4273188 (= e!2653128 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (c!727096 x!742222))) true) (content!7480 (t!353862 (list!17205 (c!727096 x!742222))))))))

(assert (= (and d!1260681 c!727261) b!4273187))

(assert (= (and d!1260681 (not c!727261)) b!4273188))

(declare-fun m!4867161 () Bool)

(assert (=> b!4273188 m!4867161))

(declare-fun m!4867163 () Bool)

(assert (=> b!4273188 m!4867163))

(assert (=> d!1260657 d!1260681))

(declare-fun d!1260683 () Bool)

(declare-fun c!727262 () Bool)

(assert (=> d!1260683 (= c!727262 ((_ is Nil!47325) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun e!2653129 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260683 (= (content!7480 (efficientList$default$2!189 (c!727096 x!742222))) e!2653129)))

(declare-fun b!4273189 () Bool)

(assert (=> b!4273189 (= e!2653129 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273190 () Bool)

(assert (=> b!4273190 (= e!2653129 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (efficientList$default$2!189 (c!727096 x!742222))) true) (content!7480 (t!353862 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260683 c!727262) b!4273189))

(assert (= (and d!1260683 (not c!727262)) b!4273190))

(declare-fun m!4867165 () Bool)

(assert (=> b!4273190 m!4867165))

(declare-fun m!4867167 () Bool)

(assert (=> b!4273190 m!4867167))

(assert (=> d!1260657 d!1260683))

(declare-fun bs!601595 () Bool)

(declare-fun s!240146 () Bool)

(assert (= bs!601595 (and neg-inst!1769 s!240146)))

(assert (=> bs!601595 (=> true (= (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun m!4867169 () Bool)

(assert (=> m!4866733 m!4867169))

(declare-fun m!4867171 () Bool)

(assert (=> m!4866733 m!4867171))

(declare-fun m!4867173 () Bool)

(assert (=> m!4866733 m!4867173))

(assert (=> m!4866733 s!240146))

(check-sat (not d!1260609) (not d!1260659) (not d!1260653) (not b!4273151) (not d!1260613) (not b!4273173) (not bm!294192) (not d!1260563) (not b!4273188) (not b!4272822) (not b!4273190) (not b!4273161) (not d!1260655) (not b!4273084) (not b!4273167) (not b!4273164) (not b!4273066) (not b!4273099) (not b!4273177) (not b!4273152) (not d!1260603) (not b!4273160) (not d!1260625) (not b!4273168) (not b!4273100) (not d!1260641) (not d!1260643) (not d!1260669) (not b!4273172) (not d!1260605) (not b!4273155) (not b!4273081) (not b!4273064) (not d!1260651) (not d!1260649) (not b!4273165) (not b!4273176) (not b!4273180) (not d!1260667) (not d!1260647) (not bs!601595) (not b!4273186) (not d!1260561) (not d!1260675) (not b!4273156))
(check-sat)
(get-model)

(declare-fun d!1260749 () Bool)

(declare-fun res!1755133 () Bool)

(declare-fun e!2653197 () Bool)

(assert (=> d!1260749 (=> (not res!1755133) (not e!2653197))))

(assert (=> d!1260749 (= res!1755133 (<= (size!34649 (list!17207 (xs!17613 (c!727096 x!742222)))) 512))))

(assert (=> d!1260749 (= (inv!62536 (c!727096 x!742222)) e!2653197)))

(declare-fun b!4273324 () Bool)

(declare-fun res!1755134 () Bool)

(assert (=> b!4273324 (=> (not res!1755134) (not e!2653197))))

(assert (=> b!4273324 (= res!1755134 (= (csize!28845 (c!727096 x!742222)) (size!34649 (list!17207 (xs!17613 (c!727096 x!742222))))))))

(declare-fun b!4273325 () Bool)

(assert (=> b!4273325 (= e!2653197 (and (> (csize!28845 (c!727096 x!742222)) 0) (<= (csize!28845 (c!727096 x!742222)) 512)))))

(assert (= (and d!1260749 res!1755133) b!4273324))

(assert (= (and b!4273324 res!1755134) b!4273325))

(assert (=> d!1260749 m!4866839))

(assert (=> d!1260749 m!4866839))

(declare-fun m!4867369 () Bool)

(assert (=> d!1260749 m!4867369))

(assert (=> b!4273324 m!4866839))

(assert (=> b!4273324 m!4866839))

(assert (=> b!4273324 m!4867369))

(assert (=> b!4273066 d!1260749))

(declare-fun b!4273329 () Bool)

(declare-fun e!2653199 () Bool)

(declare-fun lt!1513198 () List!47449)

(assert (=> b!4273329 (= e!2653199 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513198 e!2653071)))))

(declare-fun b!4273327 () Bool)

(declare-fun e!2653198 () List!47449)

(assert (=> b!4273327 (= e!2653198 (Cons!47325 (h!52745 e!2653071) (++!12082 (t!353862 e!2653071) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1260751 () Bool)

(assert (=> d!1260751 e!2653199))

(declare-fun res!1755135 () Bool)

(assert (=> d!1260751 (=> (not res!1755135) (not e!2653199))))

(assert (=> d!1260751 (= res!1755135 (= (content!7480 lt!1513198) ((_ map or) (content!7480 e!2653071) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1260751 (= lt!1513198 e!2653198)))

(declare-fun c!727301 () Bool)

(assert (=> d!1260751 (= c!727301 ((_ is Nil!47325) e!2653071))))

(assert (=> d!1260751 (= (++!12082 e!2653071 (efficientList$default$2!189 (c!727096 x!742222))) lt!1513198)))

(declare-fun b!4273326 () Bool)

(assert (=> b!4273326 (= e!2653198 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273328 () Bool)

(declare-fun res!1755136 () Bool)

(assert (=> b!4273328 (=> (not res!1755136) (not e!2653199))))

(assert (=> b!4273328 (= res!1755136 (= (size!34649 lt!1513198) (+ (size!34649 e!2653071) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260751 c!727301) b!4273326))

(assert (= (and d!1260751 (not c!727301)) b!4273327))

(assert (= (and d!1260751 res!1755135) b!4273328))

(assert (= (and b!4273328 res!1755136) b!4273329))

(assert (=> b!4273327 m!4866859))

(declare-fun m!4867371 () Bool)

(assert (=> b!4273327 m!4867371))

(declare-fun m!4867373 () Bool)

(assert (=> d!1260751 m!4867373))

(declare-fun m!4867375 () Bool)

(assert (=> d!1260751 m!4867375))

(assert (=> d!1260751 m!4866859))

(assert (=> d!1260751 m!4867081))

(declare-fun m!4867377 () Bool)

(assert (=> b!4273328 m!4867377))

(declare-fun m!4867379 () Bool)

(assert (=> b!4273328 m!4867379))

(assert (=> b!4273328 m!4866859))

(assert (=> b!4273328 m!4867087))

(assert (=> bm!294192 d!1260751))

(declare-fun d!1260753 () Bool)

(assert (=> d!1260753 (= (seqFromList!5880 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))) (fromListB!2670 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))

(declare-fun bs!601603 () Bool)

(assert (= bs!601603 d!1260753))

(declare-fun m!4867381 () Bool)

(assert (=> bs!601603 m!4867381))

(assert (=> d!1260641 d!1260753))

(declare-fun d!1260755 () Bool)

(assert (=> d!1260755 (= (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun bs!601604 () Bool)

(assert (= bs!601604 d!1260755))

(declare-fun m!4867383 () Bool)

(assert (=> bs!601604 m!4867383))

(assert (=> bs!601595 d!1260755))

(declare-fun b!4273330 () Bool)

(declare-fun e!2653200 () BalanceConc!28124)

(assert (=> b!4273330 (= e!2653200 stringUnderscoreConc!0)))

(declare-fun b!4273331 () Bool)

(declare-fun e!2653208 () BalanceConc!28124)

(declare-fun e!2653205 () BalanceConc!28124)

(assert (=> b!4273331 (= e!2653208 e!2653205)))

(declare-fun c!727307 () Bool)

(assert (=> b!4273331 (= c!727307 ((_ is Broken!41400) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273332 () Bool)

(declare-fun e!2653212 () BalanceConc!28124)

(assert (=> b!4273332 (= e!2653212 stringMatchConc!0)))

(declare-fun b!4273333 () Bool)

(declare-fun c!727309 () Bool)

(assert (=> b!4273333 (= c!727309 ((_ is End!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(assert (=> b!4273333 (= e!2653200 e!2653208)))

(declare-fun b!4273334 () Bool)

(declare-fun e!2653202 () BalanceConc!28124)

(assert (=> b!4273334 (= e!2653202 stringObjectConc!0)))

(declare-fun b!4273335 () Bool)

(declare-fun e!2653209 () BalanceConc!28124)

(assert (=> b!4273335 (= e!2653209 stringIfConc!0)))

(declare-fun b!4273336 () Bool)

(assert (=> b!4273336 (= e!2653205 (BalanceConc!28125 Empty!14307))))

(declare-fun b!4273337 () Bool)

(declare-fun e!2653213 () BalanceConc!28124)

(assert (=> b!4273337 (= e!2653213 stringValConc!0)))

(declare-fun b!4273338 () Bool)

(declare-fun e!2653204 () BalanceConc!28124)

(assert (=> b!4273338 (= e!2653204 stringErrorConc!0)))

(declare-fun b!4273339 () Bool)

(declare-fun e!2653211 () BalanceConc!28124)

(assert (=> b!4273339 (= e!2653211 stringAbstractConc!0)))

(declare-fun b!4273340 () Bool)

(declare-fun c!727312 () Bool)

(assert (=> b!4273340 (= c!727312 ((_ is Class!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun e!2653210 () BalanceConc!28124)

(declare-fun e!2653203 () BalanceConc!28124)

(assert (=> b!4273340 (= e!2653210 e!2653203)))

(declare-fun b!4273341 () Bool)

(assert (=> b!4273341 (= e!2653202 e!2653213)))

(declare-fun c!727302 () Bool)

(assert (=> b!4273341 (= c!727302 ((_ is Val!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273342 () Bool)

(declare-fun c!727303 () Bool)

(assert (=> b!4273342 (= c!727303 ((_ is Else!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun e!2653201 () BalanceConc!28124)

(declare-fun e!2653206 () BalanceConc!28124)

(assert (=> b!4273342 (= e!2653201 e!2653206)))

(declare-fun d!1260757 () Bool)

(declare-fun c!727310 () Bool)

(assert (=> d!1260757 (= c!727310 ((_ is Abstract!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(assert (=> d!1260757 (= (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) e!2653211)))

(declare-fun b!4273343 () Bool)

(assert (=> b!4273343 (= e!2653205 (seqFromList!5880 (value!249896 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273344 () Bool)

(assert (=> b!4273344 (= e!2653209 e!2653212)))

(declare-fun c!727308 () Bool)

(assert (=> b!4273344 (= c!727308 ((_ is Match!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273345 () Bool)

(declare-fun c!727311 () Bool)

(assert (=> b!4273345 (= c!727311 ((_ is Object!8403) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(assert (=> b!4273345 (= e!2653212 e!2653202)))

(declare-fun b!4273346 () Bool)

(declare-fun c!727305 () Bool)

(assert (=> b!4273346 (= c!727305 ((_ is If!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun e!2653207 () BalanceConc!28124)

(assert (=> b!4273346 (= e!2653207 e!2653209)))

(declare-fun b!4273347 () Bool)

(assert (=> b!4273347 (= e!2653211 e!2653210)))

(declare-fun c!727304 () Bool)

(assert (=> b!4273347 (= c!727304 ((_ is Case!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273348 () Bool)

(assert (=> b!4273348 (= e!2653203 stringClassConc!0)))

(declare-fun b!4273349 () Bool)

(assert (=> b!4273349 (= e!2653210 stringCaseConc!0)))

(declare-fun b!4273350 () Bool)

(assert (=> b!4273350 (= e!2653207 stringExtendsConc!0)))

(declare-fun b!4273351 () Bool)

(assert (=> b!4273351 (= e!2653206 stringElseConc!0)))

(declare-fun b!4273352 () Bool)

(assert (=> b!4273352 (= e!2653204 e!2653200)))

(declare-fun c!727313 () Bool)

(assert (=> b!4273352 (= c!727313 ((_ is Underscore!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273353 () Bool)

(assert (=> b!4273353 (= e!2653201 stringDefConc!0)))

(declare-fun b!4273354 () Bool)

(declare-fun c!727306 () Bool)

(assert (=> b!4273354 (= c!727306 ((_ is Error!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(assert (=> b!4273354 (= e!2653213 e!2653204)))

(declare-fun b!4273355 () Bool)

(assert (=> b!4273355 (= e!2653203 e!2653201)))

(declare-fun c!727315 () Bool)

(assert (=> b!4273355 (= c!727315 ((_ is Def!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273356 () Bool)

(assert (=> b!4273356 (= e!2653208 stringEndConc!0)))

(declare-fun b!4273357 () Bool)

(assert (=> b!4273357 (= e!2653206 e!2653207)))

(declare-fun c!727314 () Bool)

(assert (=> b!4273357 (= c!727314 ((_ is Extends!8280) (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(assert (= (and d!1260757 c!727310) b!4273339))

(assert (= (and d!1260757 (not c!727310)) b!4273347))

(assert (= (and b!4273347 c!727304) b!4273349))

(assert (= (and b!4273347 (not c!727304)) b!4273340))

(assert (= (and b!4273340 c!727312) b!4273348))

(assert (= (and b!4273340 (not c!727312)) b!4273355))

(assert (= (and b!4273355 c!727315) b!4273353))

(assert (= (and b!4273355 (not c!727315)) b!4273342))

(assert (= (and b!4273342 c!727303) b!4273351))

(assert (= (and b!4273342 (not c!727303)) b!4273357))

(assert (= (and b!4273357 c!727314) b!4273350))

(assert (= (and b!4273357 (not c!727314)) b!4273346))

(assert (= (and b!4273346 c!727305) b!4273335))

(assert (= (and b!4273346 (not c!727305)) b!4273344))

(assert (= (and b!4273344 c!727308) b!4273332))

(assert (= (and b!4273344 (not c!727308)) b!4273345))

(assert (= (and b!4273345 c!727311) b!4273334))

(assert (= (and b!4273345 (not c!727311)) b!4273341))

(assert (= (and b!4273341 c!727302) b!4273337))

(assert (= (and b!4273341 (not c!727302)) b!4273354))

(assert (= (and b!4273354 c!727306) b!4273338))

(assert (= (and b!4273354 (not c!727306)) b!4273352))

(assert (= (and b!4273352 c!727313) b!4273330))

(assert (= (and b!4273352 (not c!727313)) b!4273333))

(assert (= (and b!4273333 c!727309) b!4273356))

(assert (= (and b!4273333 (not c!727309)) b!4273331))

(assert (= (and b!4273331 c!727307) b!4273343))

(assert (= (and b!4273331 (not c!727307)) b!4273336))

(assert (=> b!4273332 m!4866779))

(assert (=> b!4273356 m!4866781))

(assert (=> b!4273339 m!4866783))

(assert (=> b!4273351 m!4866785))

(assert (=> b!4273334 m!4866787))

(assert (=> b!4273337 m!4866789))

(assert (=> b!4273330 m!4866791))

(assert (=> b!4273350 m!4866793))

(assert (=> b!4273338 m!4866795))

(declare-fun m!4867385 () Bool)

(assert (=> b!4273343 m!4867385))

(assert (=> b!4273335 m!4866799))

(assert (=> b!4273349 m!4866801))

(assert (=> b!4273353 m!4866803))

(assert (=> b!4273348 m!4866805))

(assert (=> bs!601595 d!1260757))

(declare-fun d!1260759 () Bool)

(declare-fun lt!1513199 () List!47449)

(assert (=> d!1260759 (= lt!1513199 (efficientList!541 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))

(assert (=> d!1260759 (= (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))) (ite (= lt!1513199 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))) Abstract!8280 (ite (= lt!1513199 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) Case!8280 (ite (= lt!1513199 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))) Class!8280 (ite (= lt!1513199 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))) Def!8280 (ite (= lt!1513199 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) Else!8280 (ite (= lt!1513199 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325)))))))) Extends!8280 (ite (= lt!1513199 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325))) If!8280 (ite (= lt!1513199 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325)))))) Match!8280 (ite (= lt!1513199 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))) Object!8403 (ite (= lt!1513199 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325)))) Val!8280 (ite (= lt!1513199 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325)))))) Error!8280 (ite (= lt!1513199 (Cons!47325 #x005F Nil!47325)) Underscore!8280 (ite (= lt!1513199 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325)))) End!8280 (Broken!41400 lt!1513199)))))))))))))))))

(declare-fun bs!601605 () Bool)

(assert (= bs!601605 d!1260759))

(assert (=> bs!601605 m!4866731))

(declare-fun m!4867387 () Bool)

(assert (=> bs!601605 m!4867387))

(assert (=> bs!601595 d!1260759))

(assert (=> bs!601595 d!1260525))

(assert (=> b!4272822 d!1260565))

(declare-fun d!1260761 () Bool)

(declare-fun c!727316 () Bool)

(assert (=> d!1260761 (= c!727316 ((_ is Nil!47325) lt!1513163))))

(declare-fun e!2653214 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260761 (= (content!7480 lt!1513163) e!2653214)))

(declare-fun b!4273358 () Bool)

(assert (=> b!4273358 (= e!2653214 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273359 () Bool)

(assert (=> b!4273359 (= e!2653214 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513163) true) (content!7480 (t!353862 lt!1513163))))))

(assert (= (and d!1260761 c!727316) b!4273358))

(assert (= (and d!1260761 (not c!727316)) b!4273359))

(declare-fun m!4867389 () Bool)

(assert (=> b!4273359 m!4867389))

(declare-fun m!4867391 () Bool)

(assert (=> b!4273359 m!4867391))

(assert (=> d!1260669 d!1260761))

(declare-fun d!1260763 () Bool)

(declare-fun c!727317 () Bool)

(assert (=> d!1260763 (= c!727317 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 x!742222)))))))

(declare-fun e!2653215 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260763 (= (content!7480 (list!17205 (left!35211 (c!727096 x!742222)))) e!2653215)))

(declare-fun b!4273360 () Bool)

(assert (=> b!4273360 (= e!2653215 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273361 () Bool)

(assert (=> b!4273361 (= e!2653215 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (left!35211 (c!727096 x!742222)))) true) (content!7480 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))))))

(assert (= (and d!1260763 c!727317) b!4273360))

(assert (= (and d!1260763 (not c!727317)) b!4273361))

(declare-fun m!4867393 () Bool)

(assert (=> b!4273361 m!4867393))

(declare-fun m!4867395 () Bool)

(assert (=> b!4273361 m!4867395))

(assert (=> d!1260669 d!1260763))

(declare-fun d!1260765 () Bool)

(declare-fun c!727318 () Bool)

(assert (=> d!1260765 (= c!727318 ((_ is Nil!47325) (list!17205 (right!35541 (c!727096 x!742222)))))))

(declare-fun e!2653216 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260765 (= (content!7480 (list!17205 (right!35541 (c!727096 x!742222)))) e!2653216)))

(declare-fun b!4273362 () Bool)

(assert (=> b!4273362 (= e!2653216 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273363 () Bool)

(assert (=> b!4273363 (= e!2653216 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (right!35541 (c!727096 x!742222)))) true) (content!7480 (t!353862 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (= (and d!1260765 c!727318) b!4273362))

(assert (= (and d!1260765 (not c!727318)) b!4273363))

(declare-fun m!4867397 () Bool)

(assert (=> b!4273363 m!4867397))

(declare-fun m!4867399 () Bool)

(assert (=> b!4273363 m!4867399))

(assert (=> d!1260669 d!1260765))

(declare-fun d!1260767 () Bool)

(declare-fun res!1755143 () Bool)

(declare-fun e!2653219 () Bool)

(assert (=> d!1260767 (=> (not res!1755143) (not e!2653219))))

(declare-fun size!34652 (Conc!14307) Int)

(assert (=> d!1260767 (= res!1755143 (= (csize!28844 (c!727096 x!742222)) (+ (size!34652 (left!35211 (c!727096 x!742222))) (size!34652 (right!35541 (c!727096 x!742222))))))))

(assert (=> d!1260767 (= (inv!62535 (c!727096 x!742222)) e!2653219)))

(declare-fun b!4273370 () Bool)

(declare-fun res!1755144 () Bool)

(assert (=> b!4273370 (=> (not res!1755144) (not e!2653219))))

(assert (=> b!4273370 (= res!1755144 (and (not (= (left!35211 (c!727096 x!742222)) Empty!14307)) (not (= (right!35541 (c!727096 x!742222)) Empty!14307))))))

(declare-fun b!4273371 () Bool)

(declare-fun res!1755145 () Bool)

(assert (=> b!4273371 (=> (not res!1755145) (not e!2653219))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1884 (Conc!14307) Int)

(assert (=> b!4273371 (= res!1755145 (= (cheight!14518 (c!727096 x!742222)) (+ (max!0 (height!1884 (left!35211 (c!727096 x!742222))) (height!1884 (right!35541 (c!727096 x!742222)))) 1)))))

(declare-fun b!4273372 () Bool)

(assert (=> b!4273372 (= e!2653219 (<= 0 (cheight!14518 (c!727096 x!742222))))))

(assert (= (and d!1260767 res!1755143) b!4273370))

(assert (= (and b!4273370 res!1755144) b!4273371))

(assert (= (and b!4273371 res!1755145) b!4273372))

(declare-fun m!4867401 () Bool)

(assert (=> d!1260767 m!4867401))

(declare-fun m!4867403 () Bool)

(assert (=> d!1260767 m!4867403))

(declare-fun m!4867405 () Bool)

(assert (=> b!4273371 m!4867405))

(declare-fun m!4867407 () Bool)

(assert (=> b!4273371 m!4867407))

(assert (=> b!4273371 m!4867405))

(assert (=> b!4273371 m!4867407))

(declare-fun m!4867409 () Bool)

(assert (=> b!4273371 m!4867409))

(assert (=> b!4273064 d!1260767))

(declare-fun lt!1513200 () List!47449)

(declare-fun e!2653221 () Bool)

(declare-fun b!4273376 () Bool)

(assert (=> b!4273376 (= e!2653221 (or (not (= lt!1513146 Nil!47325)) (= lt!1513200 lt!1513147)))))

(declare-fun b!4273374 () Bool)

(declare-fun e!2653220 () List!47449)

(assert (=> b!4273374 (= e!2653220 (Cons!47325 (h!52745 lt!1513147) (++!12082 (t!353862 lt!1513147) lt!1513146)))))

(declare-fun d!1260769 () Bool)

(assert (=> d!1260769 e!2653221))

(declare-fun res!1755146 () Bool)

(assert (=> d!1260769 (=> (not res!1755146) (not e!2653221))))

(assert (=> d!1260769 (= res!1755146 (= (content!7480 lt!1513200) ((_ map or) (content!7480 lt!1513147) (content!7480 lt!1513146))))))

(assert (=> d!1260769 (= lt!1513200 e!2653220)))

(declare-fun c!727319 () Bool)

(assert (=> d!1260769 (= c!727319 ((_ is Nil!47325) lt!1513147))))

(assert (=> d!1260769 (= (++!12082 lt!1513147 lt!1513146) lt!1513200)))

(declare-fun b!4273373 () Bool)

(assert (=> b!4273373 (= e!2653220 lt!1513146)))

(declare-fun b!4273375 () Bool)

(declare-fun res!1755147 () Bool)

(assert (=> b!4273375 (=> (not res!1755147) (not e!2653221))))

(assert (=> b!4273375 (= res!1755147 (= (size!34649 lt!1513200) (+ (size!34649 lt!1513147) (size!34649 lt!1513146))))))

(assert (= (and d!1260769 c!727319) b!4273373))

(assert (= (and d!1260769 (not c!727319)) b!4273374))

(assert (= (and d!1260769 res!1755146) b!4273375))

(assert (= (and b!4273375 res!1755147) b!4273376))

(declare-fun m!4867411 () Bool)

(assert (=> b!4273374 m!4867411))

(declare-fun m!4867413 () Bool)

(assert (=> d!1260769 m!4867413))

(declare-fun m!4867415 () Bool)

(assert (=> d!1260769 m!4867415))

(declare-fun m!4867417 () Bool)

(assert (=> d!1260769 m!4867417))

(declare-fun m!4867419 () Bool)

(assert (=> b!4273375 m!4867419))

(declare-fun m!4867421 () Bool)

(assert (=> b!4273375 m!4867421))

(declare-fun m!4867423 () Bool)

(assert (=> b!4273375 m!4867423))

(assert (=> b!4273081 d!1260769))

(assert (=> b!4273081 d!1260671))

(declare-fun b!4273377 () Bool)

(declare-fun e!2653222 () List!47449)

(declare-fun call!294200 () List!47449)

(assert (=> b!4273377 (= e!2653222 call!294200)))

(declare-fun b!4273378 () Bool)

(declare-fun e!2653224 () List!47449)

(declare-fun lt!1513201 () List!47449)

(assert (=> b!4273378 (= e!2653224 lt!1513201)))

(declare-fun b!4273379 () Bool)

(declare-fun lt!1513205 () Unit!66261)

(declare-fun lt!1513204 () Unit!66261)

(assert (=> b!4273379 (= lt!1513205 lt!1513204)))

(declare-fun lt!1513202 () List!47449)

(assert (=> b!4273379 (= (++!12082 (++!12082 lt!1513202 lt!1513201) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) (++!12082 lt!1513202 call!294200))))

(assert (=> b!4273379 (= lt!1513204 (lemmaConcatAssociativity!2719 lt!1513202 lt!1513201 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> b!4273379 (= lt!1513201 (list!17205 (right!35541 (left!35211 (c!727096 x!742222)))))))

(assert (=> b!4273379 (= lt!1513202 (list!17205 (left!35211 (left!35211 (c!727096 x!742222)))))))

(assert (=> b!4273379 (= e!2653222 (efficientList!543 (left!35211 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun bm!294195 () Bool)

(declare-fun c!727321 () Bool)

(declare-fun c!727322 () Bool)

(assert (=> bm!294195 (= c!727321 c!727322)))

(assert (=> bm!294195 (= call!294200 (++!12082 e!2653224 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun b!4273381 () Bool)

(declare-fun e!2653223 () List!47449)

(assert (=> b!4273381 (= e!2653223 e!2653222)))

(assert (=> b!4273381 (= c!727322 ((_ is Leaf!22116) (left!35211 (c!727096 x!742222))))))

(declare-fun b!4273382 () Bool)

(assert (=> b!4273382 (= e!2653224 (efficientList!545 (xs!17613 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4273380 () Bool)

(assert (=> b!4273380 (= e!2653223 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun d!1260771 () Bool)

(declare-fun lt!1513203 () List!47449)

(assert (=> d!1260771 (= lt!1513203 (++!12082 (list!17205 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1260771 (= lt!1513203 e!2653223)))

(declare-fun c!727320 () Bool)

(assert (=> d!1260771 (= c!727320 ((_ is Empty!14307) (left!35211 (c!727096 x!742222))))))

(assert (=> d!1260771 (= (efficientList!543 (left!35211 (c!727096 x!742222)) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513203)))

(assert (= (and d!1260771 c!727320) b!4273380))

(assert (= (and d!1260771 (not c!727320)) b!4273381))

(assert (= (and b!4273381 c!727322) b!4273377))

(assert (= (and b!4273381 (not c!727322)) b!4273379))

(assert (= (or b!4273377 b!4273379) bm!294195))

(assert (= (and bm!294195 c!727321) b!4273382))

(assert (= (and bm!294195 (not c!727321)) b!4273378))

(assert (=> b!4273379 m!4867137))

(declare-fun m!4867425 () Bool)

(assert (=> b!4273379 m!4867425))

(declare-fun m!4867427 () Bool)

(assert (=> b!4273379 m!4867427))

(assert (=> b!4273379 m!4866911))

(assert (=> b!4273379 m!4867425))

(declare-fun m!4867429 () Bool)

(assert (=> b!4273379 m!4867429))

(assert (=> b!4273379 m!4866911))

(declare-fun m!4867431 () Bool)

(assert (=> b!4273379 m!4867431))

(assert (=> b!4273379 m!4867429))

(assert (=> b!4273379 m!4866911))

(declare-fun m!4867433 () Bool)

(assert (=> b!4273379 m!4867433))

(assert (=> b!4273379 m!4867135))

(declare-fun m!4867435 () Bool)

(assert (=> b!4273379 m!4867435))

(assert (=> bm!294195 m!4866911))

(declare-fun m!4867437 () Bool)

(assert (=> bm!294195 m!4867437))

(declare-fun m!4867439 () Bool)

(assert (=> b!4273382 m!4867439))

(assert (=> d!1260771 m!4866833))

(assert (=> d!1260771 m!4866833))

(assert (=> d!1260771 m!4866911))

(declare-fun m!4867441 () Bool)

(assert (=> d!1260771 m!4867441))

(assert (=> b!4273081 d!1260771))

(declare-fun e!2653226 () Bool)

(declare-fun lt!1513206 () List!47449)

(declare-fun b!4273386 () Bool)

(assert (=> b!4273386 (= e!2653226 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513206 (++!12082 lt!1513147 lt!1513146))))))

(declare-fun e!2653225 () List!47449)

(declare-fun b!4273384 () Bool)

(assert (=> b!4273384 (= e!2653225 (Cons!47325 (h!52745 (++!12082 lt!1513147 lt!1513146)) (++!12082 (t!353862 (++!12082 lt!1513147 lt!1513146)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1260773 () Bool)

(assert (=> d!1260773 e!2653226))

(declare-fun res!1755148 () Bool)

(assert (=> d!1260773 (=> (not res!1755148) (not e!2653226))))

(assert (=> d!1260773 (= res!1755148 (= (content!7480 lt!1513206) ((_ map or) (content!7480 (++!12082 lt!1513147 lt!1513146)) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1260773 (= lt!1513206 e!2653225)))

(declare-fun c!727323 () Bool)

(assert (=> d!1260773 (= c!727323 ((_ is Nil!47325) (++!12082 lt!1513147 lt!1513146)))))

(assert (=> d!1260773 (= (++!12082 (++!12082 lt!1513147 lt!1513146) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513206)))

(declare-fun b!4273383 () Bool)

(assert (=> b!4273383 (= e!2653225 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273385 () Bool)

(declare-fun res!1755149 () Bool)

(assert (=> b!4273385 (=> (not res!1755149) (not e!2653226))))

(assert (=> b!4273385 (= res!1755149 (= (size!34649 lt!1513206) (+ (size!34649 (++!12082 lt!1513147 lt!1513146)) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260773 c!727323) b!4273383))

(assert (= (and d!1260773 (not c!727323)) b!4273384))

(assert (= (and d!1260773 res!1755148) b!4273385))

(assert (= (and b!4273385 res!1755149) b!4273386))

(assert (=> b!4273384 m!4866859))

(declare-fun m!4867443 () Bool)

(assert (=> b!4273384 m!4867443))

(declare-fun m!4867445 () Bool)

(assert (=> d!1260773 m!4867445))

(assert (=> d!1260773 m!4866915))

(declare-fun m!4867447 () Bool)

(assert (=> d!1260773 m!4867447))

(assert (=> d!1260773 m!4866859))

(assert (=> d!1260773 m!4867081))

(declare-fun m!4867449 () Bool)

(assert (=> b!4273385 m!4867449))

(assert (=> b!4273385 m!4866915))

(declare-fun m!4867451 () Bool)

(assert (=> b!4273385 m!4867451))

(assert (=> b!4273385 m!4866859))

(assert (=> b!4273385 m!4867087))

(assert (=> b!4273081 d!1260773))

(declare-fun d!1260775 () Bool)

(assert (=> d!1260775 (= (++!12082 (++!12082 lt!1513147 lt!1513146) (efficientList$default$2!189 (c!727096 x!742222))) (++!12082 lt!1513147 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun lt!1513209 () Unit!66261)

(declare-fun choose!26060 (List!47449 List!47449 List!47449) Unit!66261)

(assert (=> d!1260775 (= lt!1513209 (choose!26060 lt!1513147 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> d!1260775 (= (lemmaConcatAssociativity!2719 lt!1513147 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))) lt!1513209)))

(declare-fun bs!601606 () Bool)

(assert (= bs!601606 d!1260775))

(assert (=> bs!601606 m!4866915))

(assert (=> bs!601606 m!4866859))

(assert (=> bs!601606 m!4866917))

(assert (=> bs!601606 m!4866859))

(declare-fun m!4867453 () Bool)

(assert (=> bs!601606 m!4867453))

(assert (=> bs!601606 m!4866859))

(declare-fun m!4867455 () Bool)

(assert (=> bs!601606 m!4867455))

(assert (=> bs!601606 m!4867455))

(declare-fun m!4867457 () Bool)

(assert (=> bs!601606 m!4867457))

(assert (=> bs!601606 m!4866915))

(assert (=> b!4273081 d!1260775))

(declare-fun b!4273390 () Bool)

(declare-fun e!2653228 () Bool)

(declare-fun lt!1513210 () List!47449)

(assert (=> b!4273390 (= e!2653228 (or (not (= call!294197 Nil!47325)) (= lt!1513210 lt!1513147)))))

(declare-fun b!4273388 () Bool)

(declare-fun e!2653227 () List!47449)

(assert (=> b!4273388 (= e!2653227 (Cons!47325 (h!52745 lt!1513147) (++!12082 (t!353862 lt!1513147) call!294197)))))

(declare-fun d!1260777 () Bool)

(assert (=> d!1260777 e!2653228))

(declare-fun res!1755150 () Bool)

(assert (=> d!1260777 (=> (not res!1755150) (not e!2653228))))

(assert (=> d!1260777 (= res!1755150 (= (content!7480 lt!1513210) ((_ map or) (content!7480 lt!1513147) (content!7480 call!294197))))))

(assert (=> d!1260777 (= lt!1513210 e!2653227)))

(declare-fun c!727324 () Bool)

(assert (=> d!1260777 (= c!727324 ((_ is Nil!47325) lt!1513147))))

(assert (=> d!1260777 (= (++!12082 lt!1513147 call!294197) lt!1513210)))

(declare-fun b!4273387 () Bool)

(assert (=> b!4273387 (= e!2653227 call!294197)))

(declare-fun b!4273389 () Bool)

(declare-fun res!1755151 () Bool)

(assert (=> b!4273389 (=> (not res!1755151) (not e!2653228))))

(assert (=> b!4273389 (= res!1755151 (= (size!34649 lt!1513210) (+ (size!34649 lt!1513147) (size!34649 call!294197))))))

(assert (= (and d!1260777 c!727324) b!4273387))

(assert (= (and d!1260777 (not c!727324)) b!4273388))

(assert (= (and d!1260777 res!1755150) b!4273389))

(assert (= (and b!4273389 res!1755151) b!4273390))

(declare-fun m!4867459 () Bool)

(assert (=> b!4273388 m!4867459))

(declare-fun m!4867461 () Bool)

(assert (=> d!1260777 m!4867461))

(assert (=> d!1260777 m!4867415))

(declare-fun m!4867463 () Bool)

(assert (=> d!1260777 m!4867463))

(declare-fun m!4867465 () Bool)

(assert (=> b!4273389 m!4867465))

(assert (=> b!4273389 m!4867421))

(declare-fun m!4867467 () Bool)

(assert (=> b!4273389 m!4867467))

(assert (=> b!4273081 d!1260777))

(declare-fun b!4273391 () Bool)

(declare-fun e!2653229 () List!47449)

(declare-fun call!294201 () List!47449)

(assert (=> b!4273391 (= e!2653229 call!294201)))

(declare-fun b!4273392 () Bool)

(declare-fun e!2653231 () List!47449)

(declare-fun lt!1513211 () List!47449)

(assert (=> b!4273392 (= e!2653231 lt!1513211)))

(declare-fun b!4273393 () Bool)

(declare-fun lt!1513215 () Unit!66261)

(declare-fun lt!1513214 () Unit!66261)

(assert (=> b!4273393 (= lt!1513215 lt!1513214)))

(declare-fun lt!1513212 () List!47449)

(assert (=> b!4273393 (= (++!12082 (++!12082 lt!1513212 lt!1513211) (efficientList$default$2!189 (c!727096 x!742222))) (++!12082 lt!1513212 call!294201))))

(assert (=> b!4273393 (= lt!1513214 (lemmaConcatAssociativity!2719 lt!1513212 lt!1513211 (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> b!4273393 (= lt!1513211 (list!17205 (right!35541 (right!35541 (c!727096 x!742222)))))))

(assert (=> b!4273393 (= lt!1513212 (list!17205 (left!35211 (right!35541 (c!727096 x!742222)))))))

(assert (=> b!4273393 (= e!2653229 (efficientList!543 (left!35211 (right!35541 (c!727096 x!742222))) (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun bm!294196 () Bool)

(declare-fun c!727326 () Bool)

(declare-fun c!727327 () Bool)

(assert (=> bm!294196 (= c!727326 c!727327)))

(assert (=> bm!294196 (= call!294201 (++!12082 e!2653231 (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4273395 () Bool)

(declare-fun e!2653230 () List!47449)

(assert (=> b!4273395 (= e!2653230 e!2653229)))

(assert (=> b!4273395 (= c!727327 ((_ is Leaf!22116) (right!35541 (c!727096 x!742222))))))

(declare-fun b!4273396 () Bool)

(assert (=> b!4273396 (= e!2653231 (efficientList!545 (xs!17613 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4273394 () Bool)

(assert (=> b!4273394 (= e!2653230 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun d!1260779 () Bool)

(declare-fun lt!1513213 () List!47449)

(assert (=> d!1260779 (= lt!1513213 (++!12082 (list!17205 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> d!1260779 (= lt!1513213 e!2653230)))

(declare-fun c!727325 () Bool)

(assert (=> d!1260779 (= c!727325 ((_ is Empty!14307) (right!35541 (c!727096 x!742222))))))

(assert (=> d!1260779 (= (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513213)))

(assert (= (and d!1260779 c!727325) b!4273394))

(assert (= (and d!1260779 (not c!727325)) b!4273395))

(assert (= (and b!4273395 c!727327) b!4273391))

(assert (= (and b!4273395 (not c!727327)) b!4273393))

(assert (= (or b!4273391 b!4273393) bm!294196))

(assert (= (and bm!294196 c!727326) b!4273396))

(assert (= (and bm!294196 (not c!727326)) b!4273392))

(assert (=> b!4273393 m!4867145))

(declare-fun m!4867469 () Bool)

(assert (=> b!4273393 m!4867469))

(declare-fun m!4867471 () Bool)

(assert (=> b!4273393 m!4867471))

(assert (=> b!4273393 m!4866859))

(assert (=> b!4273393 m!4867469))

(declare-fun m!4867473 () Bool)

(assert (=> b!4273393 m!4867473))

(assert (=> b!4273393 m!4866859))

(declare-fun m!4867475 () Bool)

(assert (=> b!4273393 m!4867475))

(assert (=> b!4273393 m!4867473))

(assert (=> b!4273393 m!4866859))

(declare-fun m!4867477 () Bool)

(assert (=> b!4273393 m!4867477))

(assert (=> b!4273393 m!4867143))

(declare-fun m!4867479 () Bool)

(assert (=> b!4273393 m!4867479))

(assert (=> bm!294196 m!4866859))

(declare-fun m!4867481 () Bool)

(assert (=> bm!294196 m!4867481))

(declare-fun m!4867483 () Bool)

(assert (=> b!4273396 m!4867483))

(assert (=> d!1260779 m!4866835))

(assert (=> d!1260779 m!4866835))

(assert (=> d!1260779 m!4866859))

(declare-fun m!4867485 () Bool)

(assert (=> d!1260779 m!4867485))

(assert (=> b!4273081 d!1260779))

(assert (=> b!4273081 d!1260673))

(declare-fun d!1260781 () Bool)

(declare-fun lt!1513218 () Int)

(assert (=> d!1260781 (>= lt!1513218 0)))

(declare-fun e!2653234 () Int)

(assert (=> d!1260781 (= lt!1513218 e!2653234)))

(declare-fun c!727330 () Bool)

(assert (=> d!1260781 (= c!727330 ((_ is Nil!47325) lt!1513161))))

(assert (=> d!1260781 (= (size!34649 lt!1513161) lt!1513218)))

(declare-fun b!4273401 () Bool)

(assert (=> b!4273401 (= e!2653234 0)))

(declare-fun b!4273402 () Bool)

(assert (=> b!4273402 (= e!2653234 (+ 1 (size!34649 (t!353862 lt!1513161))))))

(assert (= (and d!1260781 c!727330) b!4273401))

(assert (= (and d!1260781 (not c!727330)) b!4273402))

(declare-fun m!4867487 () Bool)

(assert (=> b!4273402 m!4867487))

(assert (=> b!4273152 d!1260781))

(declare-fun d!1260783 () Bool)

(declare-fun lt!1513219 () Int)

(assert (=> d!1260783 (>= lt!1513219 0)))

(declare-fun e!2653235 () Int)

(assert (=> d!1260783 (= lt!1513219 e!2653235)))

(declare-fun c!727331 () Bool)

(assert (=> d!1260783 (= c!727331 ((_ is Nil!47325) (list!17205 (c!727096 x!742222))))))

(assert (=> d!1260783 (= (size!34649 (list!17205 (c!727096 x!742222))) lt!1513219)))

(declare-fun b!4273403 () Bool)

(assert (=> b!4273403 (= e!2653235 0)))

(declare-fun b!4273404 () Bool)

(assert (=> b!4273404 (= e!2653235 (+ 1 (size!34649 (t!353862 (list!17205 (c!727096 x!742222))))))))

(assert (= (and d!1260783 c!727331) b!4273403))

(assert (= (and d!1260783 (not c!727331)) b!4273404))

(declare-fun m!4867489 () Bool)

(assert (=> b!4273404 m!4867489))

(assert (=> b!4273152 d!1260783))

(declare-fun d!1260785 () Bool)

(declare-fun lt!1513220 () Int)

(assert (=> d!1260785 (>= lt!1513220 0)))

(declare-fun e!2653236 () Int)

(assert (=> d!1260785 (= lt!1513220 e!2653236)))

(declare-fun c!727332 () Bool)

(assert (=> d!1260785 (= c!727332 ((_ is Nil!47325) (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> d!1260785 (= (size!34649 (efficientList$default$2!189 (c!727096 x!742222))) lt!1513220)))

(declare-fun b!4273405 () Bool)

(assert (=> b!4273405 (= e!2653236 0)))

(declare-fun b!4273406 () Bool)

(assert (=> b!4273406 (= e!2653236 (+ 1 (size!34649 (t!353862 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260785 c!727332) b!4273405))

(assert (= (and d!1260785 (not c!727332)) b!4273406))

(declare-fun m!4867491 () Bool)

(assert (=> b!4273406 m!4867491))

(assert (=> b!4273152 d!1260785))

(declare-fun b!4273419 () Bool)

(declare-fun res!1755169 () Bool)

(declare-fun e!2653242 () Bool)

(assert (=> b!4273419 (=> (not res!1755169) (not e!2653242))))

(assert (=> b!4273419 (= res!1755169 (<= (- (height!1884 (left!35211 (c!727096 x!742222))) (height!1884 (right!35541 (c!727096 x!742222)))) 1))))

(declare-fun b!4273420 () Bool)

(declare-fun e!2653241 () Bool)

(assert (=> b!4273420 (= e!2653241 e!2653242)))

(declare-fun res!1755167 () Bool)

(assert (=> b!4273420 (=> (not res!1755167) (not e!2653242))))

(assert (=> b!4273420 (= res!1755167 (<= (- 1) (- (height!1884 (left!35211 (c!727096 x!742222))) (height!1884 (right!35541 (c!727096 x!742222))))))))

(declare-fun b!4273421 () Bool)

(declare-fun res!1755166 () Bool)

(assert (=> b!4273421 (=> (not res!1755166) (not e!2653242))))

(declare-fun isEmpty!28005 (Conc!14307) Bool)

(assert (=> b!4273421 (= res!1755166 (not (isEmpty!28005 (left!35211 (c!727096 x!742222)))))))

(declare-fun d!1260787 () Bool)

(declare-fun res!1755168 () Bool)

(assert (=> d!1260787 (=> res!1755168 e!2653241)))

(assert (=> d!1260787 (= res!1755168 (not ((_ is Node!14307) (c!727096 x!742222))))))

(assert (=> d!1260787 (= (isBalanced!3853 (c!727096 x!742222)) e!2653241)))

(declare-fun b!4273422 () Bool)

(declare-fun res!1755164 () Bool)

(assert (=> b!4273422 (=> (not res!1755164) (not e!2653242))))

(assert (=> b!4273422 (= res!1755164 (isBalanced!3853 (left!35211 (c!727096 x!742222))))))

(declare-fun b!4273423 () Bool)

(declare-fun res!1755165 () Bool)

(assert (=> b!4273423 (=> (not res!1755165) (not e!2653242))))

(assert (=> b!4273423 (= res!1755165 (isBalanced!3853 (right!35541 (c!727096 x!742222))))))

(declare-fun b!4273424 () Bool)

(assert (=> b!4273424 (= e!2653242 (not (isEmpty!28005 (right!35541 (c!727096 x!742222)))))))

(assert (= (and d!1260787 (not res!1755168)) b!4273420))

(assert (= (and b!4273420 res!1755167) b!4273419))

(assert (= (and b!4273419 res!1755169) b!4273422))

(assert (= (and b!4273422 res!1755164) b!4273423))

(assert (= (and b!4273423 res!1755165) b!4273421))

(assert (= (and b!4273421 res!1755166) b!4273424))

(assert (=> b!4273420 m!4867405))

(assert (=> b!4273420 m!4867407))

(declare-fun m!4867493 () Bool)

(assert (=> b!4273422 m!4867493))

(assert (=> b!4273419 m!4867405))

(assert (=> b!4273419 m!4867407))

(declare-fun m!4867495 () Bool)

(assert (=> b!4273421 m!4867495))

(declare-fun m!4867497 () Bool)

(assert (=> b!4273424 m!4867497))

(declare-fun m!4867499 () Bool)

(assert (=> b!4273423 m!4867499))

(assert (=> d!1260561 d!1260787))

(declare-fun d!1260789 () Bool)

(declare-fun lt!1513223 () List!47449)

(assert (=> d!1260789 (= lt!1513223 (list!17207 (xs!17613 (c!727096 x!742222))))))

(declare-fun rec!35 (IArray!28619 Int List!47449) List!47449)

(declare-fun size!34653 (IArray!28619) Int)

(assert (=> d!1260789 (= lt!1513223 (rec!35 (xs!17613 (c!727096 x!742222)) (size!34653 (xs!17613 (c!727096 x!742222))) Nil!47325))))

(assert (=> d!1260789 (= (efficientList!545 (xs!17613 (c!727096 x!742222))) lt!1513223)))

(declare-fun bs!601607 () Bool)

(assert (= bs!601607 d!1260789))

(assert (=> bs!601607 m!4866839))

(declare-fun m!4867501 () Bool)

(assert (=> bs!601607 m!4867501))

(assert (=> bs!601607 m!4867501))

(declare-fun m!4867503 () Bool)

(assert (=> bs!601607 m!4867503))

(assert (=> b!4273084 d!1260789))

(declare-fun b!4273428 () Bool)

(declare-fun e!2653244 () Bool)

(declare-fun lt!1513224 () List!47449)

(assert (=> b!4273428 (= e!2653244 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513224 (t!353862 (list!17205 (c!727096 x!742222))))))))

(declare-fun b!4273426 () Bool)

(declare-fun e!2653243 () List!47449)

(assert (=> b!4273426 (= e!2653243 (Cons!47325 (h!52745 (t!353862 (list!17205 (c!727096 x!742222)))) (++!12082 (t!353862 (t!353862 (list!17205 (c!727096 x!742222)))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1260791 () Bool)

(assert (=> d!1260791 e!2653244))

(declare-fun res!1755170 () Bool)

(assert (=> d!1260791 (=> (not res!1755170) (not e!2653244))))

(assert (=> d!1260791 (= res!1755170 (= (content!7480 lt!1513224) ((_ map or) (content!7480 (t!353862 (list!17205 (c!727096 x!742222)))) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1260791 (= lt!1513224 e!2653243)))

(declare-fun c!727333 () Bool)

(assert (=> d!1260791 (= c!727333 ((_ is Nil!47325) (t!353862 (list!17205 (c!727096 x!742222)))))))

(assert (=> d!1260791 (= (++!12082 (t!353862 (list!17205 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513224)))

(declare-fun b!4273425 () Bool)

(assert (=> b!4273425 (= e!2653243 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273427 () Bool)

(declare-fun res!1755171 () Bool)

(assert (=> b!4273427 (=> (not res!1755171) (not e!2653244))))

(assert (=> b!4273427 (= res!1755171 (= (size!34649 lt!1513224) (+ (size!34649 (t!353862 (list!17205 (c!727096 x!742222)))) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260791 c!727333) b!4273425))

(assert (= (and d!1260791 (not c!727333)) b!4273426))

(assert (= (and d!1260791 res!1755170) b!4273427))

(assert (= (and b!4273427 res!1755171) b!4273428))

(assert (=> b!4273426 m!4866859))

(declare-fun m!4867505 () Bool)

(assert (=> b!4273426 m!4867505))

(declare-fun m!4867507 () Bool)

(assert (=> d!1260791 m!4867507))

(assert (=> d!1260791 m!4867163))

(assert (=> d!1260791 m!4866859))

(assert (=> d!1260791 m!4867081))

(declare-fun m!4867509 () Bool)

(assert (=> b!4273427 m!4867509))

(assert (=> b!4273427 m!4867489))

(assert (=> b!4273427 m!4866859))

(assert (=> b!4273427 m!4867087))

(assert (=> b!4273151 d!1260791))

(declare-fun d!1260793 () Bool)

(assert (=> d!1260793 true))

(assert (=> d!1260793 true))

(declare-fun res!1755174 () Bool)

(assert (=> d!1260793 (= (choose!26057 lambda!131133) res!1755174)))

(assert (=> d!1260563 d!1260793))

(declare-fun d!1260795 () Bool)

(declare-fun c!727334 () Bool)

(assert (=> d!1260795 (= c!727334 ((_ is Nil!47325) lt!1513162))))

(declare-fun e!2653245 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260795 (= (content!7480 lt!1513162) e!2653245)))

(declare-fun b!4273429 () Bool)

(assert (=> b!4273429 (= e!2653245 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273430 () Bool)

(assert (=> b!4273430 (= e!2653245 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513162) true) (content!7480 (t!353862 lt!1513162))))))

(assert (= (and d!1260795 c!727334) b!4273429))

(assert (= (and d!1260795 (not c!727334)) b!4273430))

(declare-fun m!4867511 () Bool)

(assert (=> b!4273430 m!4867511))

(declare-fun m!4867513 () Bool)

(assert (=> b!4273430 m!4867513))

(assert (=> d!1260659 d!1260795))

(declare-fun d!1260797 () Bool)

(declare-fun c!727335 () Bool)

(assert (=> d!1260797 (= c!727335 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun e!2653246 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260797 (= (content!7480 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) e!2653246)))

(declare-fun b!4273431 () Bool)

(assert (=> b!4273431 (= e!2653246 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273432 () Bool)

(assert (=> b!4273432 (= e!2653246 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) true) (content!7480 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (= (and d!1260797 c!727335) b!4273431))

(assert (= (and d!1260797 (not c!727335)) b!4273432))

(declare-fun m!4867515 () Bool)

(assert (=> b!4273432 m!4867515))

(declare-fun m!4867517 () Bool)

(assert (=> b!4273432 m!4867517))

(assert (=> d!1260659 d!1260797))

(declare-fun d!1260799 () Bool)

(declare-fun c!727336 () Bool)

(assert (=> d!1260799 (= c!727336 ((_ is Nil!47325) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun e!2653247 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260799 (= (content!7480 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) e!2653247)))

(declare-fun b!4273433 () Bool)

(assert (=> b!4273433 (= e!2653247 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273434 () Bool)

(assert (=> b!4273434 (= e!2653247 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) true) (content!7480 (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (= (and d!1260799 c!727336) b!4273433))

(assert (= (and d!1260799 (not c!727336)) b!4273434))

(declare-fun m!4867519 () Bool)

(assert (=> b!4273434 m!4867519))

(declare-fun m!4867521 () Bool)

(assert (=> b!4273434 m!4867521))

(assert (=> d!1260659 d!1260799))

(declare-fun d!1260801 () Bool)

(assert (=> d!1260801 (= (inv!62537 (xs!17613 (c!727096 x!742222))) (<= (size!34649 (innerList!14367 (xs!17613 (c!727096 x!742222)))) 2147483647))))

(declare-fun bs!601608 () Bool)

(assert (= bs!601608 d!1260801))

(declare-fun m!4867523 () Bool)

(assert (=> bs!601608 m!4867523))

(assert (=> b!4273100 d!1260801))

(declare-fun d!1260803 () Bool)

(assert (=> d!1260803 (= (list!17203 lt!1513166) (list!17205 (c!727096 lt!1513166)))))

(declare-fun bs!601609 () Bool)

(assert (= bs!601609 d!1260803))

(declare-fun m!4867525 () Bool)

(assert (=> bs!601609 m!4867525))

(assert (=> d!1260675 d!1260803))

(declare-fun d!1260805 () Bool)

(declare-fun e!2653250 () Bool)

(assert (=> d!1260805 e!2653250))

(declare-fun res!1755177 () Bool)

(assert (=> d!1260805 (=> (not res!1755177) (not e!2653250))))

(declare-fun lt!1513227 () Conc!14307)

(assert (=> d!1260805 (= res!1755177 (= (list!17205 lt!1513227) (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))

(declare-fun choose!26061 (List!47449) Conc!14307)

(assert (=> d!1260805 (= lt!1513227 (choose!26061 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))

(assert (=> d!1260805 (= (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))) lt!1513227)))

(declare-fun b!4273437 () Bool)

(assert (=> b!4273437 (= e!2653250 (isBalanced!3853 lt!1513227))))

(assert (= (and d!1260805 res!1755177) b!4273437))

(declare-fun m!4867527 () Bool)

(assert (=> d!1260805 m!4867527))

(declare-fun m!4867529 () Bool)

(assert (=> d!1260805 m!4867529))

(declare-fun m!4867531 () Bool)

(assert (=> b!4273437 m!4867531))

(assert (=> d!1260675 d!1260805))

(declare-fun d!1260807 () Bool)

(declare-fun c!727337 () Bool)

(assert (=> d!1260807 (= c!727337 ((_ is Node!14307) (left!35211 (c!727096 x!742222))))))

(declare-fun e!2653251 () Bool)

(assert (=> d!1260807 (= (inv!62530 (left!35211 (c!727096 x!742222))) e!2653251)))

(declare-fun b!4273438 () Bool)

(assert (=> b!4273438 (= e!2653251 (inv!62535 (left!35211 (c!727096 x!742222))))))

(declare-fun b!4273439 () Bool)

(declare-fun e!2653252 () Bool)

(assert (=> b!4273439 (= e!2653251 e!2653252)))

(declare-fun res!1755178 () Bool)

(assert (=> b!4273439 (= res!1755178 (not ((_ is Leaf!22116) (left!35211 (c!727096 x!742222)))))))

(assert (=> b!4273439 (=> res!1755178 e!2653252)))

(declare-fun b!4273440 () Bool)

(assert (=> b!4273440 (= e!2653252 (inv!62536 (left!35211 (c!727096 x!742222))))))

(assert (= (and d!1260807 c!727337) b!4273438))

(assert (= (and d!1260807 (not c!727337)) b!4273439))

(assert (= (and b!4273439 (not res!1755178)) b!4273440))

(declare-fun m!4867533 () Bool)

(assert (=> b!4273438 m!4867533))

(declare-fun m!4867535 () Bool)

(assert (=> b!4273440 m!4867535))

(assert (=> b!4273099 d!1260807))

(declare-fun d!1260809 () Bool)

(declare-fun c!727338 () Bool)

(assert (=> d!1260809 (= c!727338 ((_ is Node!14307) (right!35541 (c!727096 x!742222))))))

(declare-fun e!2653253 () Bool)

(assert (=> d!1260809 (= (inv!62530 (right!35541 (c!727096 x!742222))) e!2653253)))

(declare-fun b!4273441 () Bool)

(assert (=> b!4273441 (= e!2653253 (inv!62535 (right!35541 (c!727096 x!742222))))))

(declare-fun b!4273442 () Bool)

(declare-fun e!2653254 () Bool)

(assert (=> b!4273442 (= e!2653253 e!2653254)))

(declare-fun res!1755179 () Bool)

(assert (=> b!4273442 (= res!1755179 (not ((_ is Leaf!22116) (right!35541 (c!727096 x!742222)))))))

(assert (=> b!4273442 (=> res!1755179 e!2653254)))

(declare-fun b!4273443 () Bool)

(assert (=> b!4273443 (= e!2653254 (inv!62536 (right!35541 (c!727096 x!742222))))))

(assert (= (and d!1260809 c!727338) b!4273441))

(assert (= (and d!1260809 (not c!727338)) b!4273442))

(assert (= (and b!4273442 (not res!1755179)) b!4273443))

(declare-fun m!4867537 () Bool)

(assert (=> b!4273441 m!4867537))

(declare-fun m!4867539 () Bool)

(assert (=> b!4273443 m!4867539))

(assert (=> b!4273099 d!1260809))

(declare-fun d!1260811 () Bool)

(declare-fun e!2653255 () Bool)

(assert (=> d!1260811 e!2653255))

(declare-fun res!1755180 () Bool)

(assert (=> d!1260811 (=> (not res!1755180) (not e!2653255))))

(declare-fun lt!1513228 () BalanceConc!28124)

(assert (=> d!1260811 (= res!1755180 (= (list!17203 lt!1513228) (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(assert (=> d!1260811 (= lt!1513228 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))))))

(assert (=> d!1260811 (= (fromListB!2670 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) lt!1513228)))

(declare-fun b!4273444 () Bool)

(assert (=> b!4273444 (= e!2653255 (isBalanced!3853 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))))))

(assert (= (and d!1260811 res!1755180) b!4273444))

(declare-fun m!4867541 () Bool)

(assert (=> d!1260811 m!4867541))

(declare-fun m!4867543 () Bool)

(assert (=> d!1260811 m!4867543))

(assert (=> b!4273444 m!4867543))

(assert (=> b!4273444 m!4867543))

(declare-fun m!4867545 () Bool)

(assert (=> b!4273444 m!4867545))

(assert (=> d!1260667 d!1260811))

(declare-fun e!2653256 () Bool)

(declare-fun tp!1308342 () Bool)

(declare-fun b!4273445 () Bool)

(declare-fun tp!1308341 () Bool)

(assert (=> b!4273445 (= e!2653256 (and (inv!62530 (left!35211 (left!35211 (c!727096 x!742222)))) tp!1308341 (inv!62530 (right!35541 (left!35211 (c!727096 x!742222)))) tp!1308342))))

(declare-fun b!4273446 () Bool)

(assert (=> b!4273446 (= e!2653256 (inv!62537 (xs!17613 (left!35211 (c!727096 x!742222)))))))

(assert (=> b!4273099 (= tp!1308335 (and (inv!62530 (left!35211 (c!727096 x!742222))) e!2653256))))

(assert (= (and b!4273099 ((_ is Node!14307) (left!35211 (c!727096 x!742222)))) b!4273445))

(assert (= (and b!4273099 ((_ is Leaf!22116) (left!35211 (c!727096 x!742222)))) b!4273446))

(declare-fun m!4867547 () Bool)

(assert (=> b!4273445 m!4867547))

(declare-fun m!4867549 () Bool)

(assert (=> b!4273445 m!4867549))

(declare-fun m!4867551 () Bool)

(assert (=> b!4273446 m!4867551))

(assert (=> b!4273099 m!4866929))

(declare-fun tp!1308344 () Bool)

(declare-fun b!4273447 () Bool)

(declare-fun tp!1308343 () Bool)

(declare-fun e!2653258 () Bool)

(assert (=> b!4273447 (= e!2653258 (and (inv!62530 (left!35211 (right!35541 (c!727096 x!742222)))) tp!1308343 (inv!62530 (right!35541 (right!35541 (c!727096 x!742222)))) tp!1308344))))

(declare-fun b!4273448 () Bool)

(assert (=> b!4273448 (= e!2653258 (inv!62537 (xs!17613 (right!35541 (c!727096 x!742222)))))))

(assert (=> b!4273099 (= tp!1308336 (and (inv!62530 (right!35541 (c!727096 x!742222))) e!2653258))))

(assert (= (and b!4273099 ((_ is Node!14307) (right!35541 (c!727096 x!742222)))) b!4273447))

(assert (= (and b!4273099 ((_ is Leaf!22116) (right!35541 (c!727096 x!742222)))) b!4273448))

(declare-fun m!4867553 () Bool)

(assert (=> b!4273447 m!4867553))

(declare-fun m!4867555 () Bool)

(assert (=> b!4273447 m!4867555))

(declare-fun m!4867557 () Bool)

(assert (=> b!4273448 m!4867557))

(assert (=> b!4273099 m!4866931))

(check-sat (not d!1260643) (not b!4273343) (not b!4273434) (not b!4273156) (not b!4273167) (not b!4273422) (not b!4273164) (not d!1260755) (not b!4273338) (not d!1260609) (not b!4273430) (not d!1260769) (not b!4273379) (not bm!294196) (not b!4273099) (not b!4273177) (not d!1260801) (not d!1260603) (not b!4273339) (not b!4273351) (not b!4273437) (not b!4273330) (not bm!294195) (not d!1260777) (not b!4273385) (not b!4273349) (not b!4273168) (not b!4273160) (not b!4273396) (not b!4273335) (not d!1260625) (not b!4273427) (not b!4273448) (not b!4273446) (not b!4273447) (not d!1260773) (not b!4273348) (not b!4273172) (not d!1260653) (not b!4273432) (not b!4273363) (not d!1260779) (not d!1260605) (not b!4273328) (not b!4273155) (not d!1260811) (not b!4273419) (not d!1260613) (not b!4273393) (not b!4273173) (not d!1260751) (not b!4273426) (not b!4273361) (not d!1260749) (not d!1260803) (not b!4273327) (not b!4273382) (not b!4273334) (not b!4273384) (not d!1260767) (not d!1260753) (not b!4273420) (not b!4273421) (not d!1260759) (not b!4273188) (not b!4273374) (not b!4273404) (not b!4273423) (not b!4273375) (not d!1260771) (not d!1260651) (not d!1260789) (not d!1260649) (not b!4273165) (not b!4273176) (not b!4273444) (not b!4273402) (not b!4273180) (not b!4273356) (not b!4273337) (not d!1260805) (not b!4273388) (not d!1260647) (not b!4273186) (not b!4273371) (not b!4273190) (not b!4273445) (not b!4273443) (not b!4273324) (not b!4273350) (not b!4273161) (not b!4273406) (not d!1260791) (not d!1260775) (not b!4273424) (not b!4273441) (not b!4273353) (not b!4273438) (not b!4273332) (not d!1260655) (not b!4273389) (not b!4273359) (not b!4273440))
(check-sat)
(get-model)

(declare-fun d!1260901 () Bool)

(declare-fun lt!1513245 () Int)

(assert (=> d!1260901 (>= lt!1513245 0)))

(declare-fun e!2653309 () Int)

(assert (=> d!1260901 (= lt!1513245 e!2653309)))

(declare-fun c!727368 () Bool)

(assert (=> d!1260901 (= c!727368 ((_ is Nil!47325) lt!1513162))))

(assert (=> d!1260901 (= (size!34649 lt!1513162) lt!1513245)))

(declare-fun b!4273537 () Bool)

(assert (=> b!4273537 (= e!2653309 0)))

(declare-fun b!4273538 () Bool)

(assert (=> b!4273538 (= e!2653309 (+ 1 (size!34649 (t!353862 lt!1513162))))))

(assert (= (and d!1260901 c!727368) b!4273537))

(assert (= (and d!1260901 (not c!727368)) b!4273538))

(declare-fun m!4867751 () Bool)

(assert (=> b!4273538 m!4867751))

(assert (=> b!4273156 d!1260901))

(declare-fun d!1260903 () Bool)

(declare-fun lt!1513246 () Int)

(assert (=> d!1260903 (>= lt!1513246 0)))

(declare-fun e!2653310 () Int)

(assert (=> d!1260903 (= lt!1513246 e!2653310)))

(declare-fun c!727369 () Bool)

(assert (=> d!1260903 (= c!727369 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(assert (=> d!1260903 (= (size!34649 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) lt!1513246)))

(declare-fun b!4273539 () Bool)

(assert (=> b!4273539 (= e!2653310 0)))

(declare-fun b!4273540 () Bool)

(assert (=> b!4273540 (= e!2653310 (+ 1 (size!34649 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (= (and d!1260903 c!727369) b!4273539))

(assert (= (and d!1260903 (not c!727369)) b!4273540))

(declare-fun m!4867753 () Bool)

(assert (=> b!4273540 m!4867753))

(assert (=> b!4273156 d!1260903))

(declare-fun d!1260905 () Bool)

(declare-fun lt!1513247 () Int)

(assert (=> d!1260905 (>= lt!1513247 0)))

(declare-fun e!2653311 () Int)

(assert (=> d!1260905 (= lt!1513247 e!2653311)))

(declare-fun c!727370 () Bool)

(assert (=> d!1260905 (= c!727370 ((_ is Nil!47325) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(assert (=> d!1260905 (= (size!34649 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) lt!1513247)))

(declare-fun b!4273541 () Bool)

(assert (=> b!4273541 (= e!2653311 0)))

(declare-fun b!4273542 () Bool)

(assert (=> b!4273542 (= e!2653311 (+ 1 (size!34649 (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (= (and d!1260905 c!727370) b!4273541))

(assert (= (and d!1260905 (not c!727370)) b!4273542))

(declare-fun m!4867755 () Bool)

(assert (=> b!4273542 m!4867755))

(assert (=> b!4273156 d!1260905))

(declare-fun d!1260907 () Bool)

(assert (=> d!1260907 (= (seqFromList!5880 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))) (fromListB!2670 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))))))

(declare-fun bs!601623 () Bool)

(assert (= bs!601623 d!1260907))

(declare-fun m!4867757 () Bool)

(assert (=> bs!601623 m!4867757))

(assert (=> d!1260647 d!1260907))

(declare-fun d!1260909 () Bool)

(assert (=> d!1260909 (= (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(declare-fun bs!601624 () Bool)

(assert (= bs!601624 d!1260909))

(declare-fun m!4867759 () Bool)

(assert (=> bs!601624 m!4867759))

(assert (=> d!1260653 d!1260909))

(declare-fun d!1260911 () Bool)

(assert (=> d!1260911 (= (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325)))))) (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325)))))))))

(declare-fun bs!601625 () Bool)

(assert (= bs!601625 d!1260911))

(declare-fun m!4867761 () Bool)

(assert (=> bs!601625 m!4867761))

(assert (=> d!1260603 d!1260911))

(declare-fun d!1260913 () Bool)

(declare-fun c!727371 () Bool)

(assert (=> d!1260913 (= c!727371 ((_ is Nil!47325) lt!1513206))))

(declare-fun e!2653312 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260913 (= (content!7480 lt!1513206) e!2653312)))

(declare-fun b!4273543 () Bool)

(assert (=> b!4273543 (= e!2653312 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273544 () Bool)

(assert (=> b!4273544 (= e!2653312 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513206) true) (content!7480 (t!353862 lt!1513206))))))

(assert (= (and d!1260913 c!727371) b!4273543))

(assert (= (and d!1260913 (not c!727371)) b!4273544))

(declare-fun m!4867763 () Bool)

(assert (=> b!4273544 m!4867763))

(declare-fun m!4867765 () Bool)

(assert (=> b!4273544 m!4867765))

(assert (=> d!1260773 d!1260913))

(declare-fun d!1260915 () Bool)

(declare-fun c!727372 () Bool)

(assert (=> d!1260915 (= c!727372 ((_ is Nil!47325) (++!12082 lt!1513147 lt!1513146)))))

(declare-fun e!2653313 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260915 (= (content!7480 (++!12082 lt!1513147 lt!1513146)) e!2653313)))

(declare-fun b!4273545 () Bool)

(assert (=> b!4273545 (= e!2653313 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273546 () Bool)

(assert (=> b!4273546 (= e!2653313 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (++!12082 lt!1513147 lt!1513146)) true) (content!7480 (t!353862 (++!12082 lt!1513147 lt!1513146)))))))

(assert (= (and d!1260915 c!727372) b!4273545))

(assert (= (and d!1260915 (not c!727372)) b!4273546))

(declare-fun m!4867767 () Bool)

(assert (=> b!4273546 m!4867767))

(declare-fun m!4867769 () Bool)

(assert (=> b!4273546 m!4867769))

(assert (=> d!1260773 d!1260915))

(assert (=> d!1260773 d!1260683))

(declare-fun d!1260917 () Bool)

(declare-fun c!727373 () Bool)

(assert (=> d!1260917 (= c!727373 ((_ is Nil!47325) (t!353862 (list!17205 (c!727096 x!742222)))))))

(declare-fun e!2653314 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260917 (= (content!7480 (t!353862 (list!17205 (c!727096 x!742222)))) e!2653314)))

(declare-fun b!4273547 () Bool)

(assert (=> b!4273547 (= e!2653314 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273548 () Bool)

(assert (=> b!4273548 (= e!2653314 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (list!17205 (c!727096 x!742222)))) true) (content!7480 (t!353862 (t!353862 (list!17205 (c!727096 x!742222)))))))))

(assert (= (and d!1260917 c!727373) b!4273547))

(assert (= (and d!1260917 (not c!727373)) b!4273548))

(declare-fun m!4867771 () Bool)

(assert (=> b!4273548 m!4867771))

(declare-fun m!4867773 () Bool)

(assert (=> b!4273548 m!4867773))

(assert (=> b!4273188 d!1260917))

(declare-fun d!1260919 () Bool)

(assert (=> d!1260919 (= (list!17203 lt!1513228) (list!17205 (c!727096 lt!1513228)))))

(declare-fun bs!601626 () Bool)

(assert (= bs!601626 d!1260919))

(declare-fun m!4867775 () Bool)

(assert (=> bs!601626 m!4867775))

(assert (=> d!1260811 d!1260919))

(declare-fun d!1260921 () Bool)

(declare-fun e!2653315 () Bool)

(assert (=> d!1260921 e!2653315))

(declare-fun res!1755208 () Bool)

(assert (=> d!1260921 (=> (not res!1755208) (not e!2653315))))

(declare-fun lt!1513248 () Conc!14307)

(assert (=> d!1260921 (= res!1755208 (= (list!17205 lt!1513248) (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(assert (=> d!1260921 (= lt!1513248 (choose!26061 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(assert (=> d!1260921 (= (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) lt!1513248)))

(declare-fun b!4273549 () Bool)

(assert (=> b!4273549 (= e!2653315 (isBalanced!3853 lt!1513248))))

(assert (= (and d!1260921 res!1755208) b!4273549))

(declare-fun m!4867777 () Bool)

(assert (=> d!1260921 m!4867777))

(declare-fun m!4867779 () Bool)

(assert (=> d!1260921 m!4867779))

(declare-fun m!4867781 () Bool)

(assert (=> b!4273549 m!4867781))

(assert (=> d!1260811 d!1260921))

(declare-fun b!4273553 () Bool)

(declare-fun e!2653317 () Bool)

(declare-fun lt!1513249 () List!47449)

(assert (=> b!4273553 (= e!2653317 (or (not (= (list!17205 (right!35541 (c!727096 x!742222))) Nil!47325)) (= lt!1513249 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))))))

(declare-fun b!4273551 () Bool)

(declare-fun e!2653316 () List!47449)

(assert (=> b!4273551 (= e!2653316 (Cons!47325 (h!52745 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (++!12082 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (list!17205 (right!35541 (c!727096 x!742222))))))))

(declare-fun d!1260923 () Bool)

(assert (=> d!1260923 e!2653317))

(declare-fun res!1755209 () Bool)

(assert (=> d!1260923 (=> (not res!1755209) (not e!2653317))))

(assert (=> d!1260923 (= res!1755209 (= (content!7480 lt!1513249) ((_ map or) (content!7480 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (content!7480 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (=> d!1260923 (= lt!1513249 e!2653316)))

(declare-fun c!727374 () Bool)

(assert (=> d!1260923 (= c!727374 ((_ is Nil!47325) (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))))))

(assert (=> d!1260923 (= (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))) (list!17205 (right!35541 (c!727096 x!742222)))) lt!1513249)))

(declare-fun b!4273550 () Bool)

(assert (=> b!4273550 (= e!2653316 (list!17205 (right!35541 (c!727096 x!742222))))))

(declare-fun b!4273552 () Bool)

(declare-fun res!1755210 () Bool)

(assert (=> b!4273552 (=> (not res!1755210) (not e!2653317))))

(assert (=> b!4273552 (= res!1755210 (= (size!34649 lt!1513249) (+ (size!34649 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (size!34649 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (= (and d!1260923 c!727374) b!4273550))

(assert (= (and d!1260923 (not c!727374)) b!4273551))

(assert (= (and d!1260923 res!1755209) b!4273552))

(assert (= (and b!4273552 res!1755210) b!4273553))

(assert (=> b!4273551 m!4866835))

(declare-fun m!4867783 () Bool)

(assert (=> b!4273551 m!4867783))

(declare-fun m!4867785 () Bool)

(assert (=> d!1260923 m!4867785))

(assert (=> d!1260923 m!4867395))

(assert (=> d!1260923 m!4866835))

(assert (=> d!1260923 m!4867127))

(declare-fun m!4867787 () Bool)

(assert (=> b!4273552 m!4867787))

(declare-fun m!4867789 () Bool)

(assert (=> b!4273552 m!4867789))

(assert (=> b!4273552 m!4866835))

(assert (=> b!4273552 m!4867133))

(assert (=> b!4273167 d!1260923))

(declare-fun d!1260925 () Bool)

(declare-fun lt!1513250 () Int)

(assert (=> d!1260925 (>= lt!1513250 0)))

(declare-fun e!2653318 () Int)

(assert (=> d!1260925 (= lt!1513250 e!2653318)))

(declare-fun c!727375 () Bool)

(assert (=> d!1260925 (= c!727375 ((_ is Nil!47325) lt!1513163))))

(assert (=> d!1260925 (= (size!34649 lt!1513163) lt!1513250)))

(declare-fun b!4273554 () Bool)

(assert (=> b!4273554 (= e!2653318 0)))

(declare-fun b!4273555 () Bool)

(assert (=> b!4273555 (= e!2653318 (+ 1 (size!34649 (t!353862 lt!1513163))))))

(assert (= (and d!1260925 c!727375) b!4273554))

(assert (= (and d!1260925 (not c!727375)) b!4273555))

(declare-fun m!4867791 () Bool)

(assert (=> b!4273555 m!4867791))

(assert (=> b!4273168 d!1260925))

(declare-fun d!1260927 () Bool)

(declare-fun lt!1513251 () Int)

(assert (=> d!1260927 (>= lt!1513251 0)))

(declare-fun e!2653319 () Int)

(assert (=> d!1260927 (= lt!1513251 e!2653319)))

(declare-fun c!727376 () Bool)

(assert (=> d!1260927 (= c!727376 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1260927 (= (size!34649 (list!17205 (left!35211 (c!727096 x!742222)))) lt!1513251)))

(declare-fun b!4273556 () Bool)

(assert (=> b!4273556 (= e!2653319 0)))

(declare-fun b!4273557 () Bool)

(assert (=> b!4273557 (= e!2653319 (+ 1 (size!34649 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))))))

(assert (= (and d!1260927 c!727376) b!4273556))

(assert (= (and d!1260927 (not c!727376)) b!4273557))

(assert (=> b!4273557 m!4867789))

(assert (=> b!4273168 d!1260927))

(declare-fun d!1260929 () Bool)

(declare-fun lt!1513252 () Int)

(assert (=> d!1260929 (>= lt!1513252 0)))

(declare-fun e!2653320 () Int)

(assert (=> d!1260929 (= lt!1513252 e!2653320)))

(declare-fun c!727377 () Bool)

(assert (=> d!1260929 (= c!727377 ((_ is Nil!47325) (list!17205 (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1260929 (= (size!34649 (list!17205 (right!35541 (c!727096 x!742222)))) lt!1513252)))

(declare-fun b!4273558 () Bool)

(assert (=> b!4273558 (= e!2653320 0)))

(declare-fun b!4273559 () Bool)

(assert (=> b!4273559 (= e!2653320 (+ 1 (size!34649 (t!353862 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (= (and d!1260929 c!727377) b!4273558))

(assert (= (and d!1260929 (not c!727377)) b!4273559))

(declare-fun m!4867793 () Bool)

(assert (=> b!4273559 m!4867793))

(assert (=> b!4273168 d!1260929))

(declare-fun d!1260931 () Bool)

(assert (=> d!1260931 (= (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325)))) (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325)))))))

(declare-fun bs!601627 () Bool)

(assert (= bs!601627 d!1260931))

(declare-fun m!4867795 () Bool)

(assert (=> bs!601627 m!4867795))

(assert (=> d!1260613 d!1260931))

(declare-fun d!1260933 () Bool)

(declare-fun lt!1513253 () List!47449)

(assert (=> d!1260933 (= lt!1513253 (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))

(assert (=> d!1260933 (= lt!1513253 (efficientList!543 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> d!1260933 (= (efficientList!541 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))) lt!1513253)))

(declare-fun bs!601628 () Bool)

(assert (= bs!601628 d!1260933))

(assert (=> bs!601628 m!4866731))

(assert (=> bs!601628 m!4866733))

(declare-fun m!4867797 () Bool)

(assert (=> bs!601628 m!4867797))

(assert (=> bs!601628 m!4867797))

(declare-fun m!4867799 () Bool)

(assert (=> bs!601628 m!4867799))

(assert (=> d!1260759 d!1260933))

(declare-fun b!4273563 () Bool)

(declare-fun e!2653322 () List!47449)

(assert (=> b!4273563 (= e!2653322 (++!12082 (list!17205 (left!35211 (c!727096 lt!1513166))) (list!17205 (right!35541 (c!727096 lt!1513166)))))))

(declare-fun d!1260935 () Bool)

(declare-fun c!727378 () Bool)

(assert (=> d!1260935 (= c!727378 ((_ is Empty!14307) (c!727096 lt!1513166)))))

(declare-fun e!2653321 () List!47449)

(assert (=> d!1260935 (= (list!17205 (c!727096 lt!1513166)) e!2653321)))

(declare-fun b!4273561 () Bool)

(assert (=> b!4273561 (= e!2653321 e!2653322)))

(declare-fun c!727379 () Bool)

(assert (=> b!4273561 (= c!727379 ((_ is Leaf!22116) (c!727096 lt!1513166)))))

(declare-fun b!4273562 () Bool)

(assert (=> b!4273562 (= e!2653322 (list!17207 (xs!17613 (c!727096 lt!1513166))))))

(declare-fun b!4273560 () Bool)

(assert (=> b!4273560 (= e!2653321 Nil!47325)))

(assert (= (and d!1260935 c!727378) b!4273560))

(assert (= (and d!1260935 (not c!727378)) b!4273561))

(assert (= (and b!4273561 c!727379) b!4273562))

(assert (= (and b!4273561 (not c!727379)) b!4273563))

(declare-fun m!4867801 () Bool)

(assert (=> b!4273563 m!4867801))

(declare-fun m!4867803 () Bool)

(assert (=> b!4273563 m!4867803))

(assert (=> b!4273563 m!4867801))

(assert (=> b!4273563 m!4867803))

(declare-fun m!4867805 () Bool)

(assert (=> b!4273563 m!4867805))

(declare-fun m!4867807 () Bool)

(assert (=> b!4273562 m!4867807))

(assert (=> d!1260803 d!1260935))

(declare-fun d!1260937 () Bool)

(assert (=> d!1260937 (= (seqFromList!5880 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325))) (fromListB!2670 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325))))))

(declare-fun bs!601629 () Bool)

(assert (= bs!601629 d!1260937))

(declare-fun m!4867809 () Bool)

(assert (=> bs!601629 m!4867809))

(assert (=> d!1260609 d!1260937))

(declare-fun lt!1513254 () List!47449)

(declare-fun e!2653324 () Bool)

(declare-fun b!4273567 () Bool)

(assert (=> b!4273567 (= e!2653324 (or (not (= (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) Nil!47325)) (= lt!1513254 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun b!4273565 () Bool)

(declare-fun e!2653323 () List!47449)

(assert (=> b!4273565 (= e!2653323 (Cons!47325 (h!52745 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (++!12082 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun d!1260939 () Bool)

(assert (=> d!1260939 e!2653324))

(declare-fun res!1755211 () Bool)

(assert (=> d!1260939 (=> (not res!1755211) (not e!2653324))))

(assert (=> d!1260939 (= res!1755211 (= (content!7480 lt!1513254) ((_ map or) (content!7480 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (content!7480 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (=> d!1260939 (= lt!1513254 e!2653323)))

(declare-fun c!727380 () Bool)

(assert (=> d!1260939 (= c!727380 ((_ is Nil!47325) (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (=> d!1260939 (= (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) lt!1513254)))

(declare-fun b!4273564 () Bool)

(assert (=> b!4273564 (= e!2653323 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273566 () Bool)

(declare-fun res!1755212 () Bool)

(assert (=> b!4273566 (=> (not res!1755212) (not e!2653324))))

(assert (=> b!4273566 (= res!1755212 (= (size!34649 lt!1513254) (+ (size!34649 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (size!34649 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (= (and d!1260939 c!727380) b!4273564))

(assert (= (and d!1260939 (not c!727380)) b!4273565))

(assert (= (and d!1260939 res!1755211) b!4273566))

(assert (= (and b!4273566 res!1755212) b!4273567))

(assert (=> b!4273565 m!4866865))

(declare-fun m!4867811 () Bool)

(assert (=> b!4273565 m!4867811))

(declare-fun m!4867813 () Bool)

(assert (=> d!1260939 m!4867813))

(assert (=> d!1260939 m!4867517))

(assert (=> d!1260939 m!4866865))

(assert (=> d!1260939 m!4867095))

(declare-fun m!4867815 () Bool)

(assert (=> b!4273566 m!4867815))

(assert (=> b!4273566 m!4867753))

(assert (=> b!4273566 m!4866865))

(assert (=> b!4273566 m!4867101))

(assert (=> b!4273155 d!1260939))

(declare-fun b!4273571 () Bool)

(declare-fun e!2653326 () Bool)

(declare-fun lt!1513255 () List!47449)

(assert (=> b!4273571 (= e!2653326 (or (not (= (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))) Nil!47325)) (= lt!1513255 (list!17205 (left!35211 (c!727096 x!742222))))))))

(declare-fun b!4273569 () Bool)

(declare-fun e!2653325 () List!47449)

(assert (=> b!4273569 (= e!2653325 (Cons!47325 (h!52745 (list!17205 (left!35211 (c!727096 x!742222)))) (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun d!1260941 () Bool)

(assert (=> d!1260941 e!2653326))

(declare-fun res!1755213 () Bool)

(assert (=> d!1260941 (=> (not res!1755213) (not e!2653326))))

(assert (=> d!1260941 (= res!1755213 (= (content!7480 lt!1513255) ((_ map or) (content!7480 (list!17205 (left!35211 (c!727096 x!742222)))) (content!7480 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (=> d!1260941 (= lt!1513255 e!2653325)))

(declare-fun c!727381 () Bool)

(assert (=> d!1260941 (= c!727381 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1260941 (= (++!12082 (list!17205 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513255)))

(declare-fun b!4273568 () Bool)

(assert (=> b!4273568 (= e!2653325 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4273570 () Bool)

(declare-fun res!1755214 () Bool)

(assert (=> b!4273570 (=> (not res!1755214) (not e!2653326))))

(assert (=> b!4273570 (= res!1755214 (= (size!34649 lt!1513255) (+ (size!34649 (list!17205 (left!35211 (c!727096 x!742222)))) (size!34649 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1260941 c!727381) b!4273568))

(assert (= (and d!1260941 (not c!727381)) b!4273569))

(assert (= (and d!1260941 res!1755213) b!4273570))

(assert (= (and b!4273570 res!1755214) b!4273571))

(assert (=> b!4273569 m!4866911))

(declare-fun m!4867817 () Bool)

(assert (=> b!4273569 m!4867817))

(declare-fun m!4867819 () Bool)

(assert (=> d!1260941 m!4867819))

(assert (=> d!1260941 m!4866833))

(assert (=> d!1260941 m!4867125))

(assert (=> d!1260941 m!4866911))

(declare-fun m!4867821 () Bool)

(assert (=> d!1260941 m!4867821))

(declare-fun m!4867823 () Bool)

(assert (=> b!4273570 m!4867823))

(assert (=> b!4273570 m!4866833))

(assert (=> b!4273570 m!4867131))

(assert (=> b!4273570 m!4866911))

(declare-fun m!4867825 () Bool)

(assert (=> b!4273570 m!4867825))

(assert (=> d!1260771 d!1260941))

(assert (=> d!1260771 d!1260671))

(declare-fun d!1260943 () Bool)

(declare-fun c!727382 () Bool)

(assert (=> d!1260943 (= c!727382 ((_ is Nil!47325) lt!1513224))))

(declare-fun e!2653327 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260943 (= (content!7480 lt!1513224) e!2653327)))

(declare-fun b!4273572 () Bool)

(assert (=> b!4273572 (= e!2653327 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273573 () Bool)

(assert (=> b!4273573 (= e!2653327 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513224) true) (content!7480 (t!353862 lt!1513224))))))

(assert (= (and d!1260943 c!727382) b!4273572))

(assert (= (and d!1260943 (not c!727382)) b!4273573))

(declare-fun m!4867827 () Bool)

(assert (=> b!4273573 m!4867827))

(declare-fun m!4867829 () Bool)

(assert (=> b!4273573 m!4867829))

(assert (=> d!1260791 d!1260943))

(assert (=> d!1260791 d!1260917))

(assert (=> d!1260791 d!1260683))

(declare-fun d!1260945 () Bool)

(declare-fun c!727383 () Bool)

(assert (=> d!1260945 (= c!727383 ((_ is Nil!47325) lt!1513200))))

(declare-fun e!2653328 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260945 (= (content!7480 lt!1513200) e!2653328)))

(declare-fun b!4273574 () Bool)

(assert (=> b!4273574 (= e!2653328 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273575 () Bool)

(assert (=> b!4273575 (= e!2653328 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513200) true) (content!7480 (t!353862 lt!1513200))))))

(assert (= (and d!1260945 c!727383) b!4273574))

(assert (= (and d!1260945 (not c!727383)) b!4273575))

(declare-fun m!4867831 () Bool)

(assert (=> b!4273575 m!4867831))

(declare-fun m!4867833 () Bool)

(assert (=> b!4273575 m!4867833))

(assert (=> d!1260769 d!1260945))

(declare-fun d!1260947 () Bool)

(declare-fun c!727384 () Bool)

(assert (=> d!1260947 (= c!727384 ((_ is Nil!47325) lt!1513147))))

(declare-fun e!2653329 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260947 (= (content!7480 lt!1513147) e!2653329)))

(declare-fun b!4273576 () Bool)

(assert (=> b!4273576 (= e!2653329 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273577 () Bool)

(assert (=> b!4273577 (= e!2653329 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513147) true) (content!7480 (t!353862 lt!1513147))))))

(assert (= (and d!1260947 c!727384) b!4273576))

(assert (= (and d!1260947 (not c!727384)) b!4273577))

(declare-fun m!4867835 () Bool)

(assert (=> b!4273577 m!4867835))

(declare-fun m!4867837 () Bool)

(assert (=> b!4273577 m!4867837))

(assert (=> d!1260769 d!1260947))

(declare-fun d!1260949 () Bool)

(declare-fun c!727385 () Bool)

(assert (=> d!1260949 (= c!727385 ((_ is Nil!47325) lt!1513146))))

(declare-fun e!2653330 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260949 (= (content!7480 lt!1513146) e!2653330)))

(declare-fun b!4273578 () Bool)

(assert (=> b!4273578 (= e!2653330 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273579 () Bool)

(assert (=> b!4273579 (= e!2653330 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513146) true) (content!7480 (t!353862 lt!1513146))))))

(assert (= (and d!1260949 c!727385) b!4273578))

(assert (= (and d!1260949 (not c!727385)) b!4273579))

(declare-fun m!4867839 () Bool)

(assert (=> b!4273579 m!4867839))

(declare-fun m!4867841 () Bool)

(assert (=> b!4273579 m!4867841))

(assert (=> d!1260769 d!1260949))

(declare-fun d!1260951 () Bool)

(declare-fun e!2653331 () Bool)

(assert (=> d!1260951 e!2653331))

(declare-fun res!1755215 () Bool)

(assert (=> d!1260951 (=> (not res!1755215) (not e!2653331))))

(declare-fun lt!1513256 () BalanceConc!28124)

(assert (=> d!1260951 (= res!1755215 (= (list!17203 lt!1513256) (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))

(assert (=> d!1260951 (= lt!1513256 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325))))))))))

(assert (=> d!1260951 (= (fromListB!2670 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))) lt!1513256)))

(declare-fun b!4273580 () Bool)

(assert (=> b!4273580 (= e!2653331 (isBalanced!3853 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325))))))))))

(assert (= (and d!1260951 res!1755215) b!4273580))

(declare-fun m!4867843 () Bool)

(assert (=> d!1260951 m!4867843))

(declare-fun m!4867845 () Bool)

(assert (=> d!1260951 m!4867845))

(assert (=> b!4273580 m!4867845))

(assert (=> b!4273580 m!4867845))

(declare-fun m!4867847 () Bool)

(assert (=> b!4273580 m!4867847))

(assert (=> d!1260753 d!1260951))

(declare-fun d!1260953 () Bool)

(assert (=> d!1260953 (= (seqFromList!5880 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325)))) (fromListB!2670 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325)))))))

(declare-fun bs!601630 () Bool)

(assert (= bs!601630 d!1260953))

(declare-fun m!4867849 () Bool)

(assert (=> bs!601630 m!4867849))

(assert (=> d!1260605 d!1260953))

(declare-fun b!4273581 () Bool)

(declare-fun res!1755221 () Bool)

(declare-fun e!2653333 () Bool)

(assert (=> b!4273581 (=> (not res!1755221) (not e!2653333))))

(assert (=> b!4273581 (= res!1755221 (<= (- (height!1884 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) (height!1884 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))) 1))))

(declare-fun b!4273582 () Bool)

(declare-fun e!2653332 () Bool)

(assert (=> b!4273582 (= e!2653332 e!2653333)))

(declare-fun res!1755219 () Bool)

(assert (=> b!4273582 (=> (not res!1755219) (not e!2653333))))

(assert (=> b!4273582 (= res!1755219 (<= (- 1) (- (height!1884 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) (height!1884 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))))

(declare-fun b!4273583 () Bool)

(declare-fun res!1755218 () Bool)

(assert (=> b!4273583 (=> (not res!1755218) (not e!2653333))))

(assert (=> b!4273583 (= res!1755218 (not (isEmpty!28005 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(declare-fun d!1260955 () Bool)

(declare-fun res!1755220 () Bool)

(assert (=> d!1260955 (=> res!1755220 e!2653332)))

(assert (=> d!1260955 (= res!1755220 (not ((_ is Node!14307) (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))

(assert (=> d!1260955 (= (isBalanced!3853 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))) e!2653332)))

(declare-fun b!4273584 () Bool)

(declare-fun res!1755216 () Bool)

(assert (=> b!4273584 (=> (not res!1755216) (not e!2653333))))

(assert (=> b!4273584 (= res!1755216 (isBalanced!3853 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))

(declare-fun b!4273585 () Bool)

(declare-fun res!1755217 () Bool)

(assert (=> b!4273585 (=> (not res!1755217) (not e!2653333))))

(assert (=> b!4273585 (= res!1755217 (isBalanced!3853 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))

(declare-fun b!4273586 () Bool)

(assert (=> b!4273586 (= e!2653333 (not (isEmpty!28005 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(assert (= (and d!1260955 (not res!1755220)) b!4273582))

(assert (= (and b!4273582 res!1755219) b!4273581))

(assert (= (and b!4273581 res!1755221) b!4273584))

(assert (= (and b!4273584 res!1755216) b!4273585))

(assert (= (and b!4273585 res!1755217) b!4273583))

(assert (= (and b!4273583 res!1755218) b!4273586))

(declare-fun m!4867851 () Bool)

(assert (=> b!4273582 m!4867851))

(declare-fun m!4867853 () Bool)

(assert (=> b!4273582 m!4867853))

(declare-fun m!4867855 () Bool)

(assert (=> b!4273584 m!4867855))

(assert (=> b!4273581 m!4867851))

(assert (=> b!4273581 m!4867853))

(declare-fun m!4867857 () Bool)

(assert (=> b!4273583 m!4867857))

(declare-fun m!4867859 () Bool)

(assert (=> b!4273586 m!4867859))

(declare-fun m!4867861 () Bool)

(assert (=> b!4273585 m!4867861))

(assert (=> b!4273180 d!1260955))

(assert (=> b!4273180 d!1260805))

(declare-fun d!1260957 () Bool)

(assert (=> d!1260957 (= (seqFromList!5880 (Cons!47325 #x005F Nil!47325)) (fromListB!2670 (Cons!47325 #x005F Nil!47325)))))

(declare-fun bs!601631 () Bool)

(assert (= bs!601631 d!1260957))

(declare-fun m!4867863 () Bool)

(assert (=> bs!601631 m!4867863))

(assert (=> d!1260655 d!1260957))

(declare-fun d!1260959 () Bool)

(assert (=> d!1260959 (= (seqFromList!5880 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325)))))))) (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325)))))))))))

(declare-fun bs!601632 () Bool)

(assert (= bs!601632 d!1260959))

(declare-fun m!4867865 () Bool)

(assert (=> bs!601632 m!4867865))

(assert (=> d!1260643 d!1260959))

(declare-fun d!1260961 () Bool)

(assert (=> d!1260961 (= (seqFromList!5880 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325)))))) (fromListB!2670 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325)))))))))

(declare-fun bs!601633 () Bool)

(assert (= bs!601633 d!1260961))

(declare-fun m!4867867 () Bool)

(assert (=> bs!601633 m!4867867))

(assert (=> d!1260649 d!1260961))

(declare-fun b!4273590 () Bool)

(declare-fun e!2653335 () List!47449)

(assert (=> b!4273590 (= e!2653335 (++!12082 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun d!1260963 () Bool)

(declare-fun c!727386 () Bool)

(assert (=> d!1260963 (= c!727386 ((_ is Empty!14307) (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun e!2653334 () List!47449)

(assert (=> d!1260963 (= (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) e!2653334)))

(declare-fun b!4273588 () Bool)

(assert (=> b!4273588 (= e!2653334 e!2653335)))

(declare-fun c!727387 () Bool)

(assert (=> b!4273588 (= c!727387 ((_ is Leaf!22116) (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273589 () Bool)

(assert (=> b!4273589 (= e!2653335 (list!17207 (xs!17613 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4273587 () Bool)

(assert (=> b!4273587 (= e!2653334 Nil!47325)))

(assert (= (and d!1260963 c!727386) b!4273587))

(assert (= (and d!1260963 (not c!727386)) b!4273588))

(assert (= (and b!4273588 c!727387) b!4273589))

(assert (= (and b!4273588 (not c!727387)) b!4273590))

(declare-fun m!4867869 () Bool)

(assert (=> b!4273590 m!4867869))

(declare-fun m!4867871 () Bool)

(assert (=> b!4273590 m!4867871))

(assert (=> b!4273590 m!4867869))

(assert (=> b!4273590 m!4867871))

(declare-fun m!4867873 () Bool)

(assert (=> b!4273590 m!4867873))

(declare-fun m!4867875 () Bool)

(assert (=> b!4273589 m!4867875))

(assert (=> d!1260755 d!1260963))

(declare-fun d!1260965 () Bool)

(declare-fun c!727388 () Bool)

(assert (=> d!1260965 (= c!727388 ((_ is Nil!47325) (t!353862 lt!1513161)))))

(declare-fun e!2653336 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260965 (= (content!7480 (t!353862 lt!1513161)) e!2653336)))

(declare-fun b!4273591 () Bool)

(assert (=> b!4273591 (= e!2653336 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273592 () Bool)

(assert (=> b!4273592 (= e!2653336 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513161)) true) (content!7480 (t!353862 (t!353862 lt!1513161)))))))

(assert (= (and d!1260965 c!727388) b!4273591))

(assert (= (and d!1260965 (not c!727388)) b!4273592))

(declare-fun m!4867877 () Bool)

(assert (=> b!4273592 m!4867877))

(declare-fun m!4867879 () Bool)

(assert (=> b!4273592 m!4867879))

(assert (=> b!4273186 d!1260965))

(declare-fun b!4273596 () Bool)

(declare-fun e!2653338 () Bool)

(declare-fun lt!1513257 () List!47449)

(assert (=> b!4273596 (= e!2653338 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513257 (list!17205 (right!35541 (c!727096 x!742222))))))))

(declare-fun b!4273594 () Bool)

(declare-fun e!2653337 () List!47449)

(assert (=> b!4273594 (= e!2653337 (Cons!47325 (h!52745 (list!17205 (right!35541 (c!727096 x!742222)))) (++!12082 (t!353862 (list!17205 (right!35541 (c!727096 x!742222)))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1260967 () Bool)

(assert (=> d!1260967 e!2653338))

(declare-fun res!1755222 () Bool)

(assert (=> d!1260967 (=> (not res!1755222) (not e!2653338))))

(assert (=> d!1260967 (= res!1755222 (= (content!7480 lt!1513257) ((_ map or) (content!7480 (list!17205 (right!35541 (c!727096 x!742222)))) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1260967 (= lt!1513257 e!2653337)))

(declare-fun c!727389 () Bool)

(assert (=> d!1260967 (= c!727389 ((_ is Nil!47325) (list!17205 (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1260967 (= (++!12082 (list!17205 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513257)))

(declare-fun b!4273593 () Bool)

(assert (=> b!4273593 (= e!2653337 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273595 () Bool)

(declare-fun res!1755223 () Bool)

(assert (=> b!4273595 (=> (not res!1755223) (not e!2653338))))

(assert (=> b!4273595 (= res!1755223 (= (size!34649 lt!1513257) (+ (size!34649 (list!17205 (right!35541 (c!727096 x!742222)))) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260967 c!727389) b!4273593))

(assert (= (and d!1260967 (not c!727389)) b!4273594))

(assert (= (and d!1260967 res!1755222) b!4273595))

(assert (= (and b!4273595 res!1755223) b!4273596))

(assert (=> b!4273594 m!4866859))

(declare-fun m!4867881 () Bool)

(assert (=> b!4273594 m!4867881))

(declare-fun m!4867883 () Bool)

(assert (=> d!1260967 m!4867883))

(assert (=> d!1260967 m!4866835))

(assert (=> d!1260967 m!4867127))

(assert (=> d!1260967 m!4866859))

(assert (=> d!1260967 m!4867081))

(declare-fun m!4867885 () Bool)

(assert (=> b!4273595 m!4867885))

(assert (=> b!4273595 m!4866835))

(assert (=> b!4273595 m!4867133))

(assert (=> b!4273595 m!4866859))

(assert (=> b!4273595 m!4867087))

(assert (=> d!1260779 d!1260967))

(assert (=> d!1260779 d!1260673))

(declare-fun d!1260969 () Bool)

(declare-fun e!2653339 () Bool)

(assert (=> d!1260969 e!2653339))

(declare-fun res!1755224 () Bool)

(assert (=> d!1260969 (=> (not res!1755224) (not e!2653339))))

(declare-fun lt!1513258 () BalanceConc!28124)

(assert (=> d!1260969 (= res!1755224 (= (list!17203 lt!1513258) (value!249896 (toValue!14 thiss!2319 x!742222))))))

(assert (=> d!1260969 (= lt!1513258 (BalanceConc!28125 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222)))))))

(assert (=> d!1260969 (= (fromListB!2670 (value!249896 (toValue!14 thiss!2319 x!742222))) lt!1513258)))

(declare-fun b!4273597 () Bool)

(assert (=> b!4273597 (= e!2653339 (isBalanced!3853 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222)))))))

(assert (= (and d!1260969 res!1755224) b!4273597))

(declare-fun m!4867887 () Bool)

(assert (=> d!1260969 m!4867887))

(declare-fun m!4867889 () Bool)

(assert (=> d!1260969 m!4867889))

(assert (=> b!4273597 m!4867889))

(assert (=> b!4273597 m!4867889))

(declare-fun m!4867891 () Bool)

(assert (=> b!4273597 m!4867891))

(assert (=> d!1260625 d!1260969))

(assert (=> d!1260775 d!1260769))

(declare-fun d!1260971 () Bool)

(assert (=> d!1260971 (= (++!12082 (++!12082 lt!1513147 lt!1513146) (efficientList$default$2!189 (c!727096 x!742222))) (++!12082 lt!1513147 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1260971 true))

(declare-fun _$15!515 () Unit!66261)

(assert (=> d!1260971 (= (choose!26060 lt!1513147 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))) _$15!515)))

(declare-fun bs!601634 () Bool)

(assert (= bs!601634 d!1260971))

(assert (=> bs!601634 m!4866915))

(assert (=> bs!601634 m!4866915))

(assert (=> bs!601634 m!4866859))

(assert (=> bs!601634 m!4866917))

(assert (=> bs!601634 m!4866859))

(assert (=> bs!601634 m!4867455))

(assert (=> bs!601634 m!4867455))

(assert (=> bs!601634 m!4867457))

(assert (=> d!1260775 d!1260971))

(declare-fun lt!1513259 () List!47449)

(declare-fun e!2653341 () Bool)

(declare-fun b!4273601 () Bool)

(assert (=> b!4273601 (= e!2653341 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513259 lt!1513146)))))

(declare-fun b!4273599 () Bool)

(declare-fun e!2653340 () List!47449)

(assert (=> b!4273599 (= e!2653340 (Cons!47325 (h!52745 lt!1513146) (++!12082 (t!353862 lt!1513146) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1260973 () Bool)

(assert (=> d!1260973 e!2653341))

(declare-fun res!1755225 () Bool)

(assert (=> d!1260973 (=> (not res!1755225) (not e!2653341))))

(assert (=> d!1260973 (= res!1755225 (= (content!7480 lt!1513259) ((_ map or) (content!7480 lt!1513146) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1260973 (= lt!1513259 e!2653340)))

(declare-fun c!727390 () Bool)

(assert (=> d!1260973 (= c!727390 ((_ is Nil!47325) lt!1513146))))

(assert (=> d!1260973 (= (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))) lt!1513259)))

(declare-fun b!4273598 () Bool)

(assert (=> b!4273598 (= e!2653340 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273600 () Bool)

(declare-fun res!1755226 () Bool)

(assert (=> b!4273600 (=> (not res!1755226) (not e!2653341))))

(assert (=> b!4273600 (= res!1755226 (= (size!34649 lt!1513259) (+ (size!34649 lt!1513146) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260973 c!727390) b!4273598))

(assert (= (and d!1260973 (not c!727390)) b!4273599))

(assert (= (and d!1260973 res!1755225) b!4273600))

(assert (= (and b!4273600 res!1755226) b!4273601))

(assert (=> b!4273599 m!4866859))

(declare-fun m!4867893 () Bool)

(assert (=> b!4273599 m!4867893))

(declare-fun m!4867895 () Bool)

(assert (=> d!1260973 m!4867895))

(assert (=> d!1260973 m!4867417))

(assert (=> d!1260973 m!4866859))

(assert (=> d!1260973 m!4867081))

(declare-fun m!4867897 () Bool)

(assert (=> b!4273600 m!4867897))

(assert (=> b!4273600 m!4867423))

(assert (=> b!4273600 m!4866859))

(assert (=> b!4273600 m!4867087))

(assert (=> d!1260775 d!1260973))

(assert (=> d!1260775 d!1260773))

(declare-fun lt!1513260 () List!47449)

(declare-fun e!2653343 () Bool)

(declare-fun b!4273605 () Bool)

(assert (=> b!4273605 (= e!2653343 (or (not (= (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))) Nil!47325)) (= lt!1513260 lt!1513147)))))

(declare-fun b!4273603 () Bool)

(declare-fun e!2653342 () List!47449)

(assert (=> b!4273603 (= e!2653342 (Cons!47325 (h!52745 lt!1513147) (++!12082 (t!353862 lt!1513147) (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun d!1260975 () Bool)

(assert (=> d!1260975 e!2653343))

(declare-fun res!1755227 () Bool)

(assert (=> d!1260975 (=> (not res!1755227) (not e!2653343))))

(assert (=> d!1260975 (= res!1755227 (= (content!7480 lt!1513260) ((_ map or) (content!7480 lt!1513147) (content!7480 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (=> d!1260975 (= lt!1513260 e!2653342)))

(declare-fun c!727391 () Bool)

(assert (=> d!1260975 (= c!727391 ((_ is Nil!47325) lt!1513147))))

(assert (=> d!1260975 (= (++!12082 lt!1513147 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513260)))

(declare-fun b!4273602 () Bool)

(assert (=> b!4273602 (= e!2653342 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4273604 () Bool)

(declare-fun res!1755228 () Bool)

(assert (=> b!4273604 (=> (not res!1755228) (not e!2653343))))

(assert (=> b!4273604 (= res!1755228 (= (size!34649 lt!1513260) (+ (size!34649 lt!1513147) (size!34649 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1260975 c!727391) b!4273602))

(assert (= (and d!1260975 (not c!727391)) b!4273603))

(assert (= (and d!1260975 res!1755227) b!4273604))

(assert (= (and b!4273604 res!1755228) b!4273605))

(assert (=> b!4273603 m!4867455))

(declare-fun m!4867899 () Bool)

(assert (=> b!4273603 m!4867899))

(declare-fun m!4867901 () Bool)

(assert (=> d!1260975 m!4867901))

(assert (=> d!1260975 m!4867415))

(assert (=> d!1260975 m!4867455))

(declare-fun m!4867903 () Bool)

(assert (=> d!1260975 m!4867903))

(declare-fun m!4867905 () Bool)

(assert (=> b!4273604 m!4867905))

(assert (=> b!4273604 m!4867421))

(assert (=> b!4273604 m!4867455))

(declare-fun m!4867907 () Bool)

(assert (=> b!4273604 m!4867907))

(assert (=> d!1260775 d!1260975))

(declare-fun b!4273609 () Bool)

(declare-fun e!2653345 () List!47449)

(assert (=> b!4273609 (= e!2653345 (++!12082 (list!17205 (left!35211 lt!1513227)) (list!17205 (right!35541 lt!1513227))))))

(declare-fun d!1260977 () Bool)

(declare-fun c!727392 () Bool)

(assert (=> d!1260977 (= c!727392 ((_ is Empty!14307) lt!1513227))))

(declare-fun e!2653344 () List!47449)

(assert (=> d!1260977 (= (list!17205 lt!1513227) e!2653344)))

(declare-fun b!4273607 () Bool)

(assert (=> b!4273607 (= e!2653344 e!2653345)))

(declare-fun c!727393 () Bool)

(assert (=> b!4273607 (= c!727393 ((_ is Leaf!22116) lt!1513227))))

(declare-fun b!4273608 () Bool)

(assert (=> b!4273608 (= e!2653345 (list!17207 (xs!17613 lt!1513227)))))

(declare-fun b!4273606 () Bool)

(assert (=> b!4273606 (= e!2653344 Nil!47325)))

(assert (= (and d!1260977 c!727392) b!4273606))

(assert (= (and d!1260977 (not c!727392)) b!4273607))

(assert (= (and b!4273607 c!727393) b!4273608))

(assert (= (and b!4273607 (not c!727393)) b!4273609))

(declare-fun m!4867909 () Bool)

(assert (=> b!4273609 m!4867909))

(declare-fun m!4867911 () Bool)

(assert (=> b!4273609 m!4867911))

(assert (=> b!4273609 m!4867909))

(assert (=> b!4273609 m!4867911))

(declare-fun m!4867913 () Bool)

(assert (=> b!4273609 m!4867913))

(declare-fun m!4867915 () Bool)

(assert (=> b!4273608 m!4867915))

(assert (=> d!1260805 d!1260977))

(declare-fun d!1260979 () Bool)

(declare-fun e!2653352 () Bool)

(assert (=> d!1260979 e!2653352))

(declare-fun res!1755234 () Bool)

(assert (=> d!1260979 (=> (not res!1755234) (not e!2653352))))

(declare-fun res!1755233 () Conc!14307)

(assert (=> d!1260979 (= res!1755234 (= (list!17205 res!1755233) (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))

(declare-fun e!2653353 () Bool)

(assert (=> d!1260979 (and (inv!62530 res!1755233) e!2653353)))

(assert (=> d!1260979 (= (choose!26061 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))) res!1755233)))

(declare-fun tp!1308356 () Bool)

(declare-fun tp!1308355 () Bool)

(declare-fun b!4273616 () Bool)

(assert (=> b!4273616 (= e!2653353 (and (inv!62530 (left!35211 res!1755233)) tp!1308356 (inv!62530 (right!35541 res!1755233)) tp!1308355))))

(declare-fun b!4273617 () Bool)

(assert (=> b!4273617 (= e!2653353 (inv!62537 (xs!17613 res!1755233)))))

(declare-fun b!4273618 () Bool)

(assert (=> b!4273618 (= e!2653352 (isBalanced!3853 res!1755233))))

(assert (= (and d!1260979 ((_ is Node!14307) res!1755233)) b!4273616))

(assert (= (and d!1260979 ((_ is Leaf!22116) res!1755233)) b!4273617))

(assert (= (and d!1260979 res!1755234) b!4273618))

(declare-fun m!4867917 () Bool)

(assert (=> d!1260979 m!4867917))

(declare-fun m!4867919 () Bool)

(assert (=> d!1260979 m!4867919))

(declare-fun m!4867921 () Bool)

(assert (=> b!4273616 m!4867921))

(declare-fun m!4867923 () Bool)

(assert (=> b!4273616 m!4867923))

(declare-fun m!4867925 () Bool)

(assert (=> b!4273617 m!4867925))

(declare-fun m!4867927 () Bool)

(assert (=> b!4273618 m!4867927))

(assert (=> d!1260805 d!1260979))

(declare-fun d!1260981 () Bool)

(declare-fun c!727394 () Bool)

(assert (=> d!1260981 (= c!727394 ((_ is Nil!47325) lt!1513210))))

(declare-fun e!2653355 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260981 (= (content!7480 lt!1513210) e!2653355)))

(declare-fun b!4273619 () Bool)

(assert (=> b!4273619 (= e!2653355 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273620 () Bool)

(assert (=> b!4273620 (= e!2653355 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513210) true) (content!7480 (t!353862 lt!1513210))))))

(assert (= (and d!1260981 c!727394) b!4273619))

(assert (= (and d!1260981 (not c!727394)) b!4273620))

(declare-fun m!4867929 () Bool)

(assert (=> b!4273620 m!4867929))

(declare-fun m!4867931 () Bool)

(assert (=> b!4273620 m!4867931))

(assert (=> d!1260777 d!1260981))

(assert (=> d!1260777 d!1260947))

(declare-fun d!1260983 () Bool)

(declare-fun c!727395 () Bool)

(assert (=> d!1260983 (= c!727395 ((_ is Nil!47325) call!294197))))

(declare-fun e!2653356 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260983 (= (content!7480 call!294197) e!2653356)))

(declare-fun b!4273621 () Bool)

(assert (=> b!4273621 (= e!2653356 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273622 () Bool)

(assert (=> b!4273622 (= e!2653356 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 call!294197) true) (content!7480 (t!353862 call!294197))))))

(assert (= (and d!1260983 c!727395) b!4273621))

(assert (= (and d!1260983 (not c!727395)) b!4273622))

(declare-fun m!4867933 () Bool)

(assert (=> b!4273622 m!4867933))

(declare-fun m!4867935 () Bool)

(assert (=> b!4273622 m!4867935))

(assert (=> d!1260777 d!1260983))

(declare-fun d!1260985 () Bool)

(assert (=> d!1260985 (= (seqFromList!5880 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))) (fromListB!2670 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))

(declare-fun bs!601635 () Bool)

(assert (= bs!601635 d!1260985))

(declare-fun m!4867937 () Bool)

(assert (=> bs!601635 m!4867937))

(assert (=> d!1260651 d!1260985))

(declare-fun d!1260987 () Bool)

(declare-fun c!727396 () Bool)

(assert (=> d!1260987 (= c!727396 ((_ is Nil!47325) (t!353862 (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun e!2653357 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260987 (= (content!7480 (t!353862 (efficientList$default$2!189 (c!727096 x!742222)))) e!2653357)))

(declare-fun b!4273623 () Bool)

(assert (=> b!4273623 (= e!2653357 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273624 () Bool)

(assert (=> b!4273624 (= e!2653357 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (efficientList$default$2!189 (c!727096 x!742222)))) true) (content!7480 (t!353862 (t!353862 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1260987 c!727396) b!4273623))

(assert (= (and d!1260987 (not c!727396)) b!4273624))

(declare-fun m!4867939 () Bool)

(assert (=> b!4273624 m!4867939))

(declare-fun m!4867941 () Bool)

(assert (=> b!4273624 m!4867941))

(assert (=> b!4273190 d!1260987))

(check-sat (not b!4273432) (not b!4273422) (not b!4273608) (not d!1260921) (not b!4273164) (not b!4273582) (not b!4273603) (not b!4273338) (not d!1260909) (not b!4273609) (not b!4273565) (not b!4273600) (not b!4273430) (not b!4273379) (not b!4273552) (not b!4273580) (not b!4273538) (not bm!294196) (not b!4273099) (not b!4273177) (not b!4273555) (not d!1260801) (not b!4273339) (not b!4273351) (not b!4273563) (not b!4273385) (not b!4273540) (not b!4273437) (not bm!294195) (not d!1260969) (not b!4273542) (not b!4273330) (not b!4273616) (not d!1260907) (not b!4273617) (not b!4273349) (not b!4273335) (not b!4273160) (not b!4273396) (not b!4273427) (not b!4273573) (not d!1260951) (not b!4273448) (not b!4273446) (not b!4273551) (not d!1260959) (not d!1260975) (not b!4273447) (not b!4273348) (not b!4273172) (not b!4273363) (not d!1260923) (not d!1260933) (not b!4273328) (not b!4273595) (not b!4273343) (not b!4273544) (not d!1260967) (not b!4273594) (not b!4273419) (not d!1260939) (not b!4273575) (not b!4273584) (not b!4273393) (not b!4273173) (not b!4273583) (not b!4273581) (not d!1260751) (not b!4273426) (not b!4273361) (not b!4273599) (not b!4273327) (not d!1260749) (not d!1260919) (not b!4273382) (not b!4273334) (not b!4273384) (not b!4273585) (not b!4273618) (not d!1260767) (not b!4273559) (not b!4273577) (not b!4273420) (not b!4273604) (not b!4273374) (not b!4273592) (not b!4273579) (not b!4273421) (not d!1260979) (not b!4273404) (not b!4273423) (not b!4273375) (not b!4273589) (not d!1260911) (not d!1260789) (not b!4273165) (not d!1260941) (not b!4273176) (not b!4273444) (not b!4273402) (not b!4273590) (not b!4273434) (not b!4273549) (not b!4273356) (not b!4273337) (not b!4273388) (not b!4273586) (not b!4273569) (not b!4273371) (not d!1260985) (not b!4273566) (not d!1260973) (not b!4273546) (not d!1260953) (not b!4273548) (not b!4273570) (not b!4273445) (not b!4273622) (not b!4273443) (not b!4273324) (not b!4273620) (not b!4273350) (not d!1260961) (not d!1260937) (not b!4273161) (not d!1260957) (not b!4273597) (not b!4273624) (not b!4273557) (not b!4273562) (not b!4273406) (not b!4273424) (not b!4273441) (not b!4273353) (not b!4273438) (not d!1260931) (not b!4273332) (not b!4273389) (not d!1260971) (not b!4273359) (not b!4273440))
(check-sat)
(get-model)

(declare-fun d!1260989 () Bool)

(assert (=> d!1260989 (= (list!17207 (xs!17613 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (innerList!14367 (xs!17613 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(assert (=> b!4273164 d!1260989))

(declare-fun b!4273628 () Bool)

(declare-fun lt!1513261 () List!47449)

(declare-fun e!2653359 () Bool)

(assert (=> b!4273628 (= e!2653359 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513261 (t!353862 (++!12082 lt!1513147 lt!1513146)))))))

(declare-fun b!4273626 () Bool)

(declare-fun e!2653358 () List!47449)

(assert (=> b!4273626 (= e!2653358 (Cons!47325 (h!52745 (t!353862 (++!12082 lt!1513147 lt!1513146))) (++!12082 (t!353862 (t!353862 (++!12082 lt!1513147 lt!1513146))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1260991 () Bool)

(assert (=> d!1260991 e!2653359))

(declare-fun res!1755235 () Bool)

(assert (=> d!1260991 (=> (not res!1755235) (not e!2653359))))

(assert (=> d!1260991 (= res!1755235 (= (content!7480 lt!1513261) ((_ map or) (content!7480 (t!353862 (++!12082 lt!1513147 lt!1513146))) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1260991 (= lt!1513261 e!2653358)))

(declare-fun c!727397 () Bool)

(assert (=> d!1260991 (= c!727397 ((_ is Nil!47325) (t!353862 (++!12082 lt!1513147 lt!1513146))))))

(assert (=> d!1260991 (= (++!12082 (t!353862 (++!12082 lt!1513147 lt!1513146)) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513261)))

(declare-fun b!4273625 () Bool)

(assert (=> b!4273625 (= e!2653358 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273627 () Bool)

(declare-fun res!1755236 () Bool)

(assert (=> b!4273627 (=> (not res!1755236) (not e!2653359))))

(assert (=> b!4273627 (= res!1755236 (= (size!34649 lt!1513261) (+ (size!34649 (t!353862 (++!12082 lt!1513147 lt!1513146))) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1260991 c!727397) b!4273625))

(assert (= (and d!1260991 (not c!727397)) b!4273626))

(assert (= (and d!1260991 res!1755235) b!4273627))

(assert (= (and b!4273627 res!1755236) b!4273628))

(assert (=> b!4273626 m!4866859))

(declare-fun m!4867943 () Bool)

(assert (=> b!4273626 m!4867943))

(declare-fun m!4867945 () Bool)

(assert (=> d!1260991 m!4867945))

(assert (=> d!1260991 m!4867769))

(assert (=> d!1260991 m!4866859))

(assert (=> d!1260991 m!4867081))

(declare-fun m!4867947 () Bool)

(assert (=> b!4273627 m!4867947))

(declare-fun m!4867949 () Bool)

(assert (=> b!4273627 m!4867949))

(assert (=> b!4273627 m!4866859))

(assert (=> b!4273627 m!4867087))

(assert (=> b!4273384 d!1260991))

(declare-fun lt!1513262 () List!47449)

(declare-fun b!4273632 () Bool)

(declare-fun e!2653361 () Bool)

(assert (=> b!4273632 (= e!2653361 (or (not (= (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) Nil!47325)) (= lt!1513262 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun b!4273630 () Bool)

(declare-fun e!2653360 () List!47449)

(assert (=> b!4273630 (= e!2653360 (Cons!47325 (h!52745 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (++!12082 (t!353862 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun d!1260993 () Bool)

(assert (=> d!1260993 e!2653361))

(declare-fun res!1755237 () Bool)

(assert (=> d!1260993 (=> (not res!1755237) (not e!2653361))))

(assert (=> d!1260993 (= res!1755237 (= (content!7480 lt!1513262) ((_ map or) (content!7480 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (content!7480 (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (=> d!1260993 (= lt!1513262 e!2653360)))

(declare-fun c!727398 () Bool)

(assert (=> d!1260993 (= c!727398 ((_ is Nil!47325) (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (=> d!1260993 (= (++!12082 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) lt!1513262)))

(declare-fun b!4273629 () Bool)

(assert (=> b!4273629 (= e!2653360 (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273631 () Bool)

(declare-fun res!1755238 () Bool)

(assert (=> b!4273631 (=> (not res!1755238) (not e!2653361))))

(assert (=> b!4273631 (= res!1755238 (= (size!34649 lt!1513262) (+ (size!34649 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (size!34649 (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1260993 c!727398) b!4273629))

(assert (= (and d!1260993 (not c!727398)) b!4273630))

(assert (= (and d!1260993 res!1755237) b!4273631))

(assert (= (and b!4273631 res!1755238) b!4273632))

(assert (=> b!4273630 m!4867105))

(declare-fun m!4867951 () Bool)

(assert (=> b!4273630 m!4867951))

(declare-fun m!4867953 () Bool)

(assert (=> d!1260993 m!4867953))

(assert (=> d!1260993 m!4867103))

(declare-fun m!4867955 () Bool)

(assert (=> d!1260993 m!4867955))

(assert (=> d!1260993 m!4867105))

(declare-fun m!4867957 () Bool)

(assert (=> d!1260993 m!4867957))

(declare-fun m!4867959 () Bool)

(assert (=> b!4273631 m!4867959))

(assert (=> b!4273631 m!4867103))

(declare-fun m!4867961 () Bool)

(assert (=> b!4273631 m!4867961))

(assert (=> b!4273631 m!4867105))

(declare-fun m!4867963 () Bool)

(assert (=> b!4273631 m!4867963))

(assert (=> b!4273161 d!1260993))

(declare-fun b!4273636 () Bool)

(declare-fun e!2653363 () List!47449)

(assert (=> b!4273636 (= e!2653363 (++!12082 (list!17205 (left!35211 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun d!1260995 () Bool)

(declare-fun c!727399 () Bool)

(assert (=> d!1260995 (= c!727399 ((_ is Empty!14307) (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun e!2653362 () List!47449)

(assert (=> d!1260995 (= (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) e!2653362)))

(declare-fun b!4273634 () Bool)

(assert (=> b!4273634 (= e!2653362 e!2653363)))

(declare-fun c!727400 () Bool)

(assert (=> b!4273634 (= c!727400 ((_ is Leaf!22116) (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273635 () Bool)

(assert (=> b!4273635 (= e!2653363 (list!17207 (xs!17613 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4273633 () Bool)

(assert (=> b!4273633 (= e!2653362 Nil!47325)))

(assert (= (and d!1260995 c!727399) b!4273633))

(assert (= (and d!1260995 (not c!727399)) b!4273634))

(assert (= (and b!4273634 c!727400) b!4273635))

(assert (= (and b!4273634 (not c!727400)) b!4273636))

(declare-fun m!4867965 () Bool)

(assert (=> b!4273636 m!4867965))

(declare-fun m!4867967 () Bool)

(assert (=> b!4273636 m!4867967))

(assert (=> b!4273636 m!4867965))

(assert (=> b!4273636 m!4867967))

(declare-fun m!4867969 () Bool)

(assert (=> b!4273636 m!4867969))

(declare-fun m!4867971 () Bool)

(assert (=> b!4273635 m!4867971))

(assert (=> b!4273161 d!1260995))

(declare-fun b!4273640 () Bool)

(declare-fun e!2653365 () List!47449)

(assert (=> b!4273640 (= e!2653365 (++!12082 (list!17205 (left!35211 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun d!1260997 () Bool)

(declare-fun c!727401 () Bool)

(assert (=> d!1260997 (= c!727401 ((_ is Empty!14307) (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun e!2653364 () List!47449)

(assert (=> d!1260997 (= (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) e!2653364)))

(declare-fun b!4273638 () Bool)

(assert (=> b!4273638 (= e!2653364 e!2653365)))

(declare-fun c!727402 () Bool)

(assert (=> b!4273638 (= c!727402 ((_ is Leaf!22116) (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273639 () Bool)

(assert (=> b!4273639 (= e!2653365 (list!17207 (xs!17613 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4273637 () Bool)

(assert (=> b!4273637 (= e!2653364 Nil!47325)))

(assert (= (and d!1260997 c!727401) b!4273637))

(assert (= (and d!1260997 (not c!727401)) b!4273638))

(assert (= (and b!4273638 c!727402) b!4273639))

(assert (= (and b!4273638 (not c!727402)) b!4273640))

(declare-fun m!4867973 () Bool)

(assert (=> b!4273640 m!4867973))

(declare-fun m!4867975 () Bool)

(assert (=> b!4273640 m!4867975))

(assert (=> b!4273640 m!4867973))

(assert (=> b!4273640 m!4867975))

(declare-fun m!4867977 () Bool)

(assert (=> b!4273640 m!4867977))

(declare-fun m!4867979 () Bool)

(assert (=> b!4273639 m!4867979))

(assert (=> b!4273161 d!1260997))

(declare-fun d!1260999 () Bool)

(declare-fun c!727403 () Bool)

(assert (=> d!1260999 (= c!727403 ((_ is Nil!47325) (t!353862 lt!1513162)))))

(declare-fun e!2653366 () (InoxSet (_ BitVec 16)))

(assert (=> d!1260999 (= (content!7480 (t!353862 lt!1513162)) e!2653366)))

(declare-fun b!4273641 () Bool)

(assert (=> b!4273641 (= e!2653366 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273642 () Bool)

(assert (=> b!4273642 (= e!2653366 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513162)) true) (content!7480 (t!353862 (t!353862 lt!1513162)))))))

(assert (= (and d!1260999 c!727403) b!4273641))

(assert (= (and d!1260999 (not c!727403)) b!4273642))

(declare-fun m!4867981 () Bool)

(assert (=> b!4273642 m!4867981))

(declare-fun m!4867983 () Bool)

(assert (=> b!4273642 m!4867983))

(assert (=> b!4273430 d!1260999))

(declare-fun d!1261001 () Bool)

(declare-fun lt!1513263 () Int)

(assert (=> d!1261001 (>= lt!1513263 0)))

(declare-fun e!2653367 () Int)

(assert (=> d!1261001 (= lt!1513263 e!2653367)))

(declare-fun c!727404 () Bool)

(assert (=> d!1261001 (= c!727404 ((_ is Nil!47325) lt!1513224))))

(assert (=> d!1261001 (= (size!34649 lt!1513224) lt!1513263)))

(declare-fun b!4273643 () Bool)

(assert (=> b!4273643 (= e!2653367 0)))

(declare-fun b!4273644 () Bool)

(assert (=> b!4273644 (= e!2653367 (+ 1 (size!34649 (t!353862 lt!1513224))))))

(assert (= (and d!1261001 c!727404) b!4273643))

(assert (= (and d!1261001 (not c!727404)) b!4273644))

(declare-fun m!4867985 () Bool)

(assert (=> b!4273644 m!4867985))

(assert (=> b!4273427 d!1261001))

(declare-fun d!1261003 () Bool)

(declare-fun lt!1513264 () Int)

(assert (=> d!1261003 (>= lt!1513264 0)))

(declare-fun e!2653368 () Int)

(assert (=> d!1261003 (= lt!1513264 e!2653368)))

(declare-fun c!727405 () Bool)

(assert (=> d!1261003 (= c!727405 ((_ is Nil!47325) (t!353862 (list!17205 (c!727096 x!742222)))))))

(assert (=> d!1261003 (= (size!34649 (t!353862 (list!17205 (c!727096 x!742222)))) lt!1513264)))

(declare-fun b!4273645 () Bool)

(assert (=> b!4273645 (= e!2653368 0)))

(declare-fun b!4273646 () Bool)

(assert (=> b!4273646 (= e!2653368 (+ 1 (size!34649 (t!353862 (t!353862 (list!17205 (c!727096 x!742222)))))))))

(assert (= (and d!1261003 c!727405) b!4273645))

(assert (= (and d!1261003 (not c!727405)) b!4273646))

(declare-fun m!4867987 () Bool)

(assert (=> b!4273646 m!4867987))

(assert (=> b!4273427 d!1261003))

(assert (=> b!4273427 d!1260785))

(declare-fun b!4273650 () Bool)

(declare-fun e!2653370 () Bool)

(declare-fun lt!1513265 () List!47449)

(assert (=> b!4273650 (= e!2653370 (or (not (= (list!17205 (right!35541 (left!35211 (c!727096 x!742222)))) Nil!47325)) (= lt!1513265 (list!17205 (left!35211 (left!35211 (c!727096 x!742222)))))))))

(declare-fun b!4273648 () Bool)

(declare-fun e!2653369 () List!47449)

(assert (=> b!4273648 (= e!2653369 (Cons!47325 (h!52745 (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))) (++!12082 (t!353862 (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))) (list!17205 (right!35541 (left!35211 (c!727096 x!742222)))))))))

(declare-fun d!1261005 () Bool)

(assert (=> d!1261005 e!2653370))

(declare-fun res!1755239 () Bool)

(assert (=> d!1261005 (=> (not res!1755239) (not e!2653370))))

(assert (=> d!1261005 (= res!1755239 (= (content!7480 lt!1513265) ((_ map or) (content!7480 (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))) (content!7480 (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))))))))

(assert (=> d!1261005 (= lt!1513265 e!2653369)))

(declare-fun c!727406 () Bool)

(assert (=> d!1261005 (= c!727406 ((_ is Nil!47325) (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))))))

(assert (=> d!1261005 (= (++!12082 (list!17205 (left!35211 (left!35211 (c!727096 x!742222)))) (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))) lt!1513265)))

(declare-fun b!4273647 () Bool)

(assert (=> b!4273647 (= e!2653369 (list!17205 (right!35541 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4273649 () Bool)

(declare-fun res!1755240 () Bool)

(assert (=> b!4273649 (=> (not res!1755240) (not e!2653370))))

(assert (=> b!4273649 (= res!1755240 (= (size!34649 lt!1513265) (+ (size!34649 (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))) (size!34649 (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))))))))

(assert (= (and d!1261005 c!727406) b!4273647))

(assert (= (and d!1261005 (not c!727406)) b!4273648))

(assert (= (and d!1261005 res!1755239) b!4273649))

(assert (= (and b!4273649 res!1755240) b!4273650))

(assert (=> b!4273648 m!4867137))

(declare-fun m!4867989 () Bool)

(assert (=> b!4273648 m!4867989))

(declare-fun m!4867991 () Bool)

(assert (=> d!1261005 m!4867991))

(assert (=> d!1261005 m!4867135))

(declare-fun m!4867993 () Bool)

(assert (=> d!1261005 m!4867993))

(assert (=> d!1261005 m!4867137))

(declare-fun m!4867995 () Bool)

(assert (=> d!1261005 m!4867995))

(declare-fun m!4867997 () Bool)

(assert (=> b!4273649 m!4867997))

(assert (=> b!4273649 m!4867135))

(declare-fun m!4867999 () Bool)

(assert (=> b!4273649 m!4867999))

(assert (=> b!4273649 m!4867137))

(declare-fun m!4868001 () Bool)

(assert (=> b!4273649 m!4868001))

(assert (=> b!4273173 d!1261005))

(declare-fun b!4273654 () Bool)

(declare-fun e!2653372 () List!47449)

(assert (=> b!4273654 (= e!2653372 (++!12082 (list!17205 (left!35211 (left!35211 (left!35211 (c!727096 x!742222))))) (list!17205 (right!35541 (left!35211 (left!35211 (c!727096 x!742222)))))))))

(declare-fun d!1261007 () Bool)

(declare-fun c!727407 () Bool)

(assert (=> d!1261007 (= c!727407 ((_ is Empty!14307) (left!35211 (left!35211 (c!727096 x!742222)))))))

(declare-fun e!2653371 () List!47449)

(assert (=> d!1261007 (= (list!17205 (left!35211 (left!35211 (c!727096 x!742222)))) e!2653371)))

(declare-fun b!4273652 () Bool)

(assert (=> b!4273652 (= e!2653371 e!2653372)))

(declare-fun c!727408 () Bool)

(assert (=> b!4273652 (= c!727408 ((_ is Leaf!22116) (left!35211 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4273653 () Bool)

(assert (=> b!4273653 (= e!2653372 (list!17207 (xs!17613 (left!35211 (left!35211 (c!727096 x!742222))))))))

(declare-fun b!4273651 () Bool)

(assert (=> b!4273651 (= e!2653371 Nil!47325)))

(assert (= (and d!1261007 c!727407) b!4273651))

(assert (= (and d!1261007 (not c!727407)) b!4273652))

(assert (= (and b!4273652 c!727408) b!4273653))

(assert (= (and b!4273652 (not c!727408)) b!4273654))

(declare-fun m!4868003 () Bool)

(assert (=> b!4273654 m!4868003))

(declare-fun m!4868005 () Bool)

(assert (=> b!4273654 m!4868005))

(assert (=> b!4273654 m!4868003))

(assert (=> b!4273654 m!4868005))

(declare-fun m!4868007 () Bool)

(assert (=> b!4273654 m!4868007))

(declare-fun m!4868009 () Bool)

(assert (=> b!4273653 m!4868009))

(assert (=> b!4273173 d!1261007))

(declare-fun b!4273658 () Bool)

(declare-fun e!2653374 () List!47449)

(assert (=> b!4273658 (= e!2653374 (++!12082 (list!17205 (left!35211 (right!35541 (left!35211 (c!727096 x!742222))))) (list!17205 (right!35541 (right!35541 (left!35211 (c!727096 x!742222)))))))))

(declare-fun d!1261009 () Bool)

(declare-fun c!727409 () Bool)

(assert (=> d!1261009 (= c!727409 ((_ is Empty!14307) (right!35541 (left!35211 (c!727096 x!742222)))))))

(declare-fun e!2653373 () List!47449)

(assert (=> d!1261009 (= (list!17205 (right!35541 (left!35211 (c!727096 x!742222)))) e!2653373)))

(declare-fun b!4273656 () Bool)

(assert (=> b!4273656 (= e!2653373 e!2653374)))

(declare-fun c!727410 () Bool)

(assert (=> b!4273656 (= c!727410 ((_ is Leaf!22116) (right!35541 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4273657 () Bool)

(assert (=> b!4273657 (= e!2653374 (list!17207 (xs!17613 (right!35541 (left!35211 (c!727096 x!742222))))))))

(declare-fun b!4273655 () Bool)

(assert (=> b!4273655 (= e!2653373 Nil!47325)))

(assert (= (and d!1261009 c!727409) b!4273655))

(assert (= (and d!1261009 (not c!727409)) b!4273656))

(assert (= (and b!4273656 c!727410) b!4273657))

(assert (= (and b!4273656 (not c!727410)) b!4273658))

(declare-fun m!4868011 () Bool)

(assert (=> b!4273658 m!4868011))

(declare-fun m!4868013 () Bool)

(assert (=> b!4273658 m!4868013))

(assert (=> b!4273658 m!4868011))

(assert (=> b!4273658 m!4868013))

(declare-fun m!4868015 () Bool)

(assert (=> b!4273658 m!4868015))

(declare-fun m!4868017 () Bool)

(assert (=> b!4273657 m!4868017))

(assert (=> b!4273173 d!1261009))

(declare-fun d!1261011 () Bool)

(declare-fun c!727411 () Bool)

(assert (=> d!1261011 (= c!727411 ((_ is Nil!47325) lt!1513249))))

(declare-fun e!2653375 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261011 (= (content!7480 lt!1513249) e!2653375)))

(declare-fun b!4273659 () Bool)

(assert (=> b!4273659 (= e!2653375 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273660 () Bool)

(assert (=> b!4273660 (= e!2653375 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513249) true) (content!7480 (t!353862 lt!1513249))))))

(assert (= (and d!1261011 c!727411) b!4273659))

(assert (= (and d!1261011 (not c!727411)) b!4273660))

(declare-fun m!4868019 () Bool)

(assert (=> b!4273660 m!4868019))

(declare-fun m!4868021 () Bool)

(assert (=> b!4273660 m!4868021))

(assert (=> d!1260923 d!1261011))

(declare-fun d!1261013 () Bool)

(declare-fun c!727412 () Bool)

(assert (=> d!1261013 (= c!727412 ((_ is Nil!47325) (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))))))

(declare-fun e!2653376 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261013 (= (content!7480 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) e!2653376)))

(declare-fun b!4273661 () Bool)

(assert (=> b!4273661 (= e!2653376 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273662 () Bool)

(assert (=> b!4273662 (= e!2653376 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) true) (content!7480 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))))))))

(assert (= (and d!1261013 c!727412) b!4273661))

(assert (= (and d!1261013 (not c!727412)) b!4273662))

(declare-fun m!4868023 () Bool)

(assert (=> b!4273662 m!4868023))

(declare-fun m!4868025 () Bool)

(assert (=> b!4273662 m!4868025))

(assert (=> d!1260923 d!1261013))

(assert (=> d!1260923 d!1260765))

(declare-fun d!1261015 () Bool)

(declare-fun lt!1513266 () Int)

(assert (=> d!1261015 (>= lt!1513266 0)))

(declare-fun e!2653377 () Int)

(assert (=> d!1261015 (= lt!1513266 e!2653377)))

(declare-fun c!727413 () Bool)

(assert (=> d!1261015 (= c!727413 ((_ is Nil!47325) lt!1513206))))

(assert (=> d!1261015 (= (size!34649 lt!1513206) lt!1513266)))

(declare-fun b!4273663 () Bool)

(assert (=> b!4273663 (= e!2653377 0)))

(declare-fun b!4273664 () Bool)

(assert (=> b!4273664 (= e!2653377 (+ 1 (size!34649 (t!353862 lt!1513206))))))

(assert (= (and d!1261015 c!727413) b!4273663))

(assert (= (and d!1261015 (not c!727413)) b!4273664))

(declare-fun m!4868027 () Bool)

(assert (=> b!4273664 m!4868027))

(assert (=> b!4273385 d!1261015))

(declare-fun d!1261017 () Bool)

(declare-fun lt!1513267 () Int)

(assert (=> d!1261017 (>= lt!1513267 0)))

(declare-fun e!2653378 () Int)

(assert (=> d!1261017 (= lt!1513267 e!2653378)))

(declare-fun c!727414 () Bool)

(assert (=> d!1261017 (= c!727414 ((_ is Nil!47325) (++!12082 lt!1513147 lt!1513146)))))

(assert (=> d!1261017 (= (size!34649 (++!12082 lt!1513147 lt!1513146)) lt!1513267)))

(declare-fun b!4273665 () Bool)

(assert (=> b!4273665 (= e!2653378 0)))

(declare-fun b!4273666 () Bool)

(assert (=> b!4273666 (= e!2653378 (+ 1 (size!34649 (t!353862 (++!12082 lt!1513147 lt!1513146)))))))

(assert (= (and d!1261017 c!727414) b!4273665))

(assert (= (and d!1261017 (not c!727414)) b!4273666))

(assert (=> b!4273666 m!4867949))

(assert (=> b!4273385 d!1261017))

(assert (=> b!4273385 d!1260785))

(declare-fun b!4273670 () Bool)

(declare-fun e!2653380 () List!47449)

(assert (=> b!4273670 (= e!2653380 (++!12082 (list!17205 (left!35211 (c!727096 lt!1513228))) (list!17205 (right!35541 (c!727096 lt!1513228)))))))

(declare-fun d!1261019 () Bool)

(declare-fun c!727415 () Bool)

(assert (=> d!1261019 (= c!727415 ((_ is Empty!14307) (c!727096 lt!1513228)))))

(declare-fun e!2653379 () List!47449)

(assert (=> d!1261019 (= (list!17205 (c!727096 lt!1513228)) e!2653379)))

(declare-fun b!4273668 () Bool)

(assert (=> b!4273668 (= e!2653379 e!2653380)))

(declare-fun c!727416 () Bool)

(assert (=> b!4273668 (= c!727416 ((_ is Leaf!22116) (c!727096 lt!1513228)))))

(declare-fun b!4273669 () Bool)

(assert (=> b!4273669 (= e!2653380 (list!17207 (xs!17613 (c!727096 lt!1513228))))))

(declare-fun b!4273667 () Bool)

(assert (=> b!4273667 (= e!2653379 Nil!47325)))

(assert (= (and d!1261019 c!727415) b!4273667))

(assert (= (and d!1261019 (not c!727415)) b!4273668))

(assert (= (and b!4273668 c!727416) b!4273669))

(assert (= (and b!4273668 (not c!727416)) b!4273670))

(declare-fun m!4868029 () Bool)

(assert (=> b!4273670 m!4868029))

(declare-fun m!4868031 () Bool)

(assert (=> b!4273670 m!4868031))

(assert (=> b!4273670 m!4868029))

(assert (=> b!4273670 m!4868031))

(declare-fun m!4868033 () Bool)

(assert (=> b!4273670 m!4868033))

(declare-fun m!4868035 () Bool)

(assert (=> b!4273669 m!4868035))

(assert (=> d!1260919 d!1261019))

(declare-fun b!4273674 () Bool)

(declare-fun e!2653382 () List!47449)

(assert (=> b!4273674 (= e!2653382 (++!12082 (list!17205 (left!35211 res!1755233)) (list!17205 (right!35541 res!1755233))))))

(declare-fun d!1261021 () Bool)

(declare-fun c!727417 () Bool)

(assert (=> d!1261021 (= c!727417 ((_ is Empty!14307) res!1755233))))

(declare-fun e!2653381 () List!47449)

(assert (=> d!1261021 (= (list!17205 res!1755233) e!2653381)))

(declare-fun b!4273672 () Bool)

(assert (=> b!4273672 (= e!2653381 e!2653382)))

(declare-fun c!727418 () Bool)

(assert (=> b!4273672 (= c!727418 ((_ is Leaf!22116) res!1755233))))

(declare-fun b!4273673 () Bool)

(assert (=> b!4273673 (= e!2653382 (list!17207 (xs!17613 res!1755233)))))

(declare-fun b!4273671 () Bool)

(assert (=> b!4273671 (= e!2653381 Nil!47325)))

(assert (= (and d!1261021 c!727417) b!4273671))

(assert (= (and d!1261021 (not c!727417)) b!4273672))

(assert (= (and b!4273672 c!727418) b!4273673))

(assert (= (and b!4273672 (not c!727418)) b!4273674))

(declare-fun m!4868037 () Bool)

(assert (=> b!4273674 m!4868037))

(declare-fun m!4868039 () Bool)

(assert (=> b!4273674 m!4868039))

(assert (=> b!4273674 m!4868037))

(assert (=> b!4273674 m!4868039))

(declare-fun m!4868041 () Bool)

(assert (=> b!4273674 m!4868041))

(declare-fun m!4868043 () Bool)

(assert (=> b!4273673 m!4868043))

(assert (=> d!1260979 d!1261021))

(declare-fun d!1261023 () Bool)

(declare-fun c!727419 () Bool)

(assert (=> d!1261023 (= c!727419 ((_ is Node!14307) res!1755233))))

(declare-fun e!2653383 () Bool)

(assert (=> d!1261023 (= (inv!62530 res!1755233) e!2653383)))

(declare-fun b!4273675 () Bool)

(assert (=> b!4273675 (= e!2653383 (inv!62535 res!1755233))))

(declare-fun b!4273676 () Bool)

(declare-fun e!2653384 () Bool)

(assert (=> b!4273676 (= e!2653383 e!2653384)))

(declare-fun res!1755241 () Bool)

(assert (=> b!4273676 (= res!1755241 (not ((_ is Leaf!22116) res!1755233)))))

(assert (=> b!4273676 (=> res!1755241 e!2653384)))

(declare-fun b!4273677 () Bool)

(assert (=> b!4273677 (= e!2653384 (inv!62536 res!1755233))))

(assert (= (and d!1261023 c!727419) b!4273675))

(assert (= (and d!1261023 (not c!727419)) b!4273676))

(assert (= (and b!4273676 (not res!1755241)) b!4273677))

(declare-fun m!4868045 () Bool)

(assert (=> b!4273675 m!4868045))

(declare-fun m!4868047 () Bool)

(assert (=> b!4273677 m!4868047))

(assert (=> d!1260979 d!1261023))

(assert (=> d!1260933 d!1260525))

(declare-fun b!4273678 () Bool)

(declare-fun e!2653385 () List!47449)

(declare-fun call!294202 () List!47449)

(assert (=> b!4273678 (= e!2653385 call!294202)))

(declare-fun b!4273679 () Bool)

(declare-fun e!2653387 () List!47449)

(declare-fun lt!1513268 () List!47449)

(assert (=> b!4273679 (= e!2653387 lt!1513268)))

(declare-fun b!4273680 () Bool)

(declare-fun lt!1513272 () Unit!66261)

(declare-fun lt!1513271 () Unit!66261)

(assert (=> b!4273680 (= lt!1513272 lt!1513271)))

(declare-fun lt!1513269 () List!47449)

(assert (=> b!4273680 (= (++!12082 (++!12082 lt!1513269 lt!1513268) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (++!12082 lt!1513269 call!294202))))

(assert (=> b!4273680 (= lt!1513271 (lemmaConcatAssociativity!2719 lt!1513269 lt!1513268 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> b!4273680 (= lt!1513268 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> b!4273680 (= lt!1513269 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> b!4273680 (= e!2653385 (efficientList!543 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) (efficientList!543 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun bm!294197 () Bool)

(declare-fun c!727421 () Bool)

(declare-fun c!727422 () Bool)

(assert (=> bm!294197 (= c!727421 c!727422)))

(assert (=> bm!294197 (= call!294202 (++!12082 e!2653387 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273682 () Bool)

(declare-fun e!2653386 () List!47449)

(assert (=> b!4273682 (= e!2653386 e!2653385)))

(assert (=> b!4273682 (= c!727422 ((_ is Leaf!22116) (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4273683 () Bool)

(assert (=> b!4273683 (= e!2653387 (efficientList!545 (xs!17613 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4273681 () Bool)

(assert (=> b!4273681 (= e!2653386 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun d!1261025 () Bool)

(declare-fun lt!1513270 () List!47449)

(assert (=> d!1261025 (= lt!1513270 (++!12082 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> d!1261025 (= lt!1513270 e!2653386)))

(declare-fun c!727420 () Bool)

(assert (=> d!1261025 (= c!727420 ((_ is Empty!14307) (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(assert (=> d!1261025 (= (efficientList!543 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) lt!1513270)))

(assert (= (and d!1261025 c!727420) b!4273681))

(assert (= (and d!1261025 (not c!727420)) b!4273682))

(assert (= (and b!4273682 c!727422) b!4273678))

(assert (= (and b!4273682 (not c!727422)) b!4273680))

(assert (= (or b!4273678 b!4273680) bm!294197))

(assert (= (and bm!294197 c!727421) b!4273683))

(assert (= (and bm!294197 (not c!727421)) b!4273679))

(assert (=> b!4273680 m!4866865))

(declare-fun m!4868049 () Bool)

(assert (=> b!4273680 m!4868049))

(declare-fun m!4868051 () Bool)

(assert (=> b!4273680 m!4868051))

(assert (=> b!4273680 m!4867797))

(assert (=> b!4273680 m!4868049))

(declare-fun m!4868053 () Bool)

(assert (=> b!4273680 m!4868053))

(assert (=> b!4273680 m!4867797))

(declare-fun m!4868055 () Bool)

(assert (=> b!4273680 m!4868055))

(assert (=> b!4273680 m!4868053))

(assert (=> b!4273680 m!4867797))

(declare-fun m!4868057 () Bool)

(assert (=> b!4273680 m!4868057))

(assert (=> b!4273680 m!4866863))

(declare-fun m!4868059 () Bool)

(assert (=> b!4273680 m!4868059))

(assert (=> bm!294197 m!4867797))

(declare-fun m!4868061 () Bool)

(assert (=> bm!294197 m!4868061))

(declare-fun m!4868063 () Bool)

(assert (=> b!4273683 m!4868063))

(assert (=> d!1261025 m!4866745))

(assert (=> d!1261025 m!4866745))

(assert (=> d!1261025 m!4867797))

(declare-fun m!4868065 () Bool)

(assert (=> d!1261025 m!4868065))

(assert (=> d!1260933 d!1261025))

(declare-fun d!1261027 () Bool)

(assert (=> d!1261027 (= (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) Nil!47325)))

(assert (=> d!1260933 d!1261027))

(declare-fun d!1261029 () Bool)

(declare-fun c!727423 () Bool)

(assert (=> d!1261029 (= c!727423 ((_ is Nil!47325) (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653388 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261029 (= (content!7480 (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653388)))

(declare-fun b!4273684 () Bool)

(assert (=> b!4273684 (= e!2653388 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273685 () Bool)

(assert (=> b!4273685 (= e!2653388 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) true) (content!7480 (t!353862 (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261029 c!727423) b!4273684))

(assert (= (and d!1261029 (not c!727423)) b!4273685))

(declare-fun m!4868067 () Bool)

(assert (=> b!4273685 m!4868067))

(declare-fun m!4868069 () Bool)

(assert (=> b!4273685 m!4868069))

(assert (=> b!4273434 d!1261029))

(declare-fun d!1261031 () Bool)

(declare-fun c!727424 () Bool)

(assert (=> d!1261031 (= c!727424 ((_ is Nil!47325) lt!1513255))))

(declare-fun e!2653389 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261031 (= (content!7480 lt!1513255) e!2653389)))

(declare-fun b!4273686 () Bool)

(assert (=> b!4273686 (= e!2653389 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273687 () Bool)

(assert (=> b!4273687 (= e!2653389 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513255) true) (content!7480 (t!353862 lt!1513255))))))

(assert (= (and d!1261031 c!727424) b!4273686))

(assert (= (and d!1261031 (not c!727424)) b!4273687))

(declare-fun m!4868071 () Bool)

(assert (=> b!4273687 m!4868071))

(declare-fun m!4868073 () Bool)

(assert (=> b!4273687 m!4868073))

(assert (=> d!1260941 d!1261031))

(assert (=> d!1260941 d!1260763))

(declare-fun d!1261033 () Bool)

(declare-fun c!727425 () Bool)

(assert (=> d!1261033 (= c!727425 ((_ is Nil!47325) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun e!2653390 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261033 (= (content!7480 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) e!2653390)))

(declare-fun b!4273688 () Bool)

(assert (=> b!4273688 (= e!2653390 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273689 () Bool)

(assert (=> b!4273689 (= e!2653390 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) true) (content!7480 (t!353862 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261033 c!727425) b!4273688))

(assert (= (and d!1261033 (not c!727425)) b!4273689))

(declare-fun m!4868075 () Bool)

(assert (=> b!4273689 m!4868075))

(declare-fun m!4868077 () Bool)

(assert (=> b!4273689 m!4868077))

(assert (=> d!1260941 d!1261033))

(declare-fun d!1261035 () Bool)

(declare-fun lt!1513273 () Int)

(assert (=> d!1261035 (>= lt!1513273 0)))

(declare-fun e!2653391 () Int)

(assert (=> d!1261035 (= lt!1513273 e!2653391)))

(declare-fun c!727426 () Bool)

(assert (=> d!1261035 (= c!727426 ((_ is Nil!47325) lt!1513200))))

(assert (=> d!1261035 (= (size!34649 lt!1513200) lt!1513273)))

(declare-fun b!4273690 () Bool)

(assert (=> b!4273690 (= e!2653391 0)))

(declare-fun b!4273691 () Bool)

(assert (=> b!4273691 (= e!2653391 (+ 1 (size!34649 (t!353862 lt!1513200))))))

(assert (= (and d!1261035 c!727426) b!4273690))

(assert (= (and d!1261035 (not c!727426)) b!4273691))

(declare-fun m!4868079 () Bool)

(assert (=> b!4273691 m!4868079))

(assert (=> b!4273375 d!1261035))

(declare-fun d!1261037 () Bool)

(declare-fun lt!1513274 () Int)

(assert (=> d!1261037 (>= lt!1513274 0)))

(declare-fun e!2653392 () Int)

(assert (=> d!1261037 (= lt!1513274 e!2653392)))

(declare-fun c!727427 () Bool)

(assert (=> d!1261037 (= c!727427 ((_ is Nil!47325) lt!1513147))))

(assert (=> d!1261037 (= (size!34649 lt!1513147) lt!1513274)))

(declare-fun b!4273692 () Bool)

(assert (=> b!4273692 (= e!2653392 0)))

(declare-fun b!4273693 () Bool)

(assert (=> b!4273693 (= e!2653392 (+ 1 (size!34649 (t!353862 lt!1513147))))))

(assert (= (and d!1261037 c!727427) b!4273692))

(assert (= (and d!1261037 (not c!727427)) b!4273693))

(declare-fun m!4868081 () Bool)

(assert (=> b!4273693 m!4868081))

(assert (=> b!4273375 d!1261037))

(declare-fun d!1261039 () Bool)

(declare-fun lt!1513275 () Int)

(assert (=> d!1261039 (>= lt!1513275 0)))

(declare-fun e!2653393 () Int)

(assert (=> d!1261039 (= lt!1513275 e!2653393)))

(declare-fun c!727428 () Bool)

(assert (=> d!1261039 (= c!727428 ((_ is Nil!47325) lt!1513146))))

(assert (=> d!1261039 (= (size!34649 lt!1513146) lt!1513275)))

(declare-fun b!4273694 () Bool)

(assert (=> b!4273694 (= e!2653393 0)))

(declare-fun b!4273695 () Bool)

(assert (=> b!4273695 (= e!2653393 (+ 1 (size!34649 (t!353862 lt!1513146))))))

(assert (= (and d!1261039 c!727428) b!4273694))

(assert (= (and d!1261039 (not c!727428)) b!4273695))

(declare-fun m!4868083 () Bool)

(assert (=> b!4273695 m!4868083))

(assert (=> b!4273375 d!1261039))

(declare-fun b!4273699 () Bool)

(declare-fun e!2653395 () Bool)

(declare-fun lt!1513276 () List!47449)

(assert (=> b!4273699 (= e!2653395 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513276 (t!353862 (t!353862 (list!17205 (c!727096 x!742222)))))))))

(declare-fun b!4273697 () Bool)

(declare-fun e!2653394 () List!47449)

(assert (=> b!4273697 (= e!2653394 (Cons!47325 (h!52745 (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))) (++!12082 (t!353862 (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1261041 () Bool)

(assert (=> d!1261041 e!2653395))

(declare-fun res!1755242 () Bool)

(assert (=> d!1261041 (=> (not res!1755242) (not e!2653395))))

(assert (=> d!1261041 (= res!1755242 (= (content!7480 lt!1513276) ((_ map or) (content!7480 (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1261041 (= lt!1513276 e!2653394)))

(declare-fun c!727429 () Bool)

(assert (=> d!1261041 (= c!727429 ((_ is Nil!47325) (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))))))

(assert (=> d!1261041 (= (++!12082 (t!353862 (t!353862 (list!17205 (c!727096 x!742222)))) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513276)))

(declare-fun b!4273696 () Bool)

(assert (=> b!4273696 (= e!2653394 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273698 () Bool)

(declare-fun res!1755243 () Bool)

(assert (=> b!4273698 (=> (not res!1755243) (not e!2653395))))

(assert (=> b!4273698 (= res!1755243 (= (size!34649 lt!1513276) (+ (size!34649 (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1261041 c!727429) b!4273696))

(assert (= (and d!1261041 (not c!727429)) b!4273697))

(assert (= (and d!1261041 res!1755242) b!4273698))

(assert (= (and b!4273698 res!1755243) b!4273699))

(assert (=> b!4273697 m!4866859))

(declare-fun m!4868085 () Bool)

(assert (=> b!4273697 m!4868085))

(declare-fun m!4868087 () Bool)

(assert (=> d!1261041 m!4868087))

(assert (=> d!1261041 m!4867773))

(assert (=> d!1261041 m!4866859))

(assert (=> d!1261041 m!4867081))

(declare-fun m!4868089 () Bool)

(assert (=> b!4273698 m!4868089))

(assert (=> b!4273698 m!4867987))

(assert (=> b!4273698 m!4866859))

(assert (=> b!4273698 m!4867087))

(assert (=> b!4273426 d!1261041))

(declare-fun d!1261043 () Bool)

(assert (=> d!1261043 (= (list!17207 (xs!17613 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (innerList!14367 (xs!17613 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(assert (=> b!4273160 d!1261043))

(declare-fun d!1261045 () Bool)

(assert (=> d!1261045 (= (list!17207 (xs!17613 (left!35211 (c!727096 x!742222)))) (innerList!14367 (xs!17613 (left!35211 (c!727096 x!742222)))))))

(assert (=> b!4273172 d!1261045))

(assert (=> b!4273361 d!1261013))

(assert (=> b!4273339 d!1260567))

(declare-fun b!4273700 () Bool)

(declare-fun res!1755249 () Bool)

(declare-fun e!2653397 () Bool)

(assert (=> b!4273700 (=> (not res!1755249) (not e!2653397))))

(assert (=> b!4273700 (= res!1755249 (<= (- (height!1884 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))) (height!1884 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))))) 1))))

(declare-fun b!4273701 () Bool)

(declare-fun e!2653396 () Bool)

(assert (=> b!4273701 (= e!2653396 e!2653397)))

(declare-fun res!1755247 () Bool)

(assert (=> b!4273701 (=> (not res!1755247) (not e!2653397))))

(assert (=> b!4273701 (= res!1755247 (<= (- 1) (- (height!1884 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))) (height!1884 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))))))

(declare-fun b!4273702 () Bool)

(declare-fun res!1755246 () Bool)

(assert (=> b!4273702 (=> (not res!1755246) (not e!2653397))))

(assert (=> b!4273702 (= res!1755246 (not (isEmpty!28005 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))))))))

(declare-fun d!1261047 () Bool)

(declare-fun res!1755248 () Bool)

(assert (=> d!1261047 (=> res!1755248 e!2653396)))

(assert (=> d!1261047 (= res!1755248 (not ((_ is Node!14307) (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))))

(assert (=> d!1261047 (= (isBalanced!3853 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))) e!2653396)))

(declare-fun b!4273703 () Bool)

(declare-fun res!1755244 () Bool)

(assert (=> b!4273703 (=> (not res!1755244) (not e!2653397))))

(assert (=> b!4273703 (= res!1755244 (isBalanced!3853 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))))

(declare-fun b!4273704 () Bool)

(declare-fun res!1755245 () Bool)

(assert (=> b!4273704 (=> (not res!1755245) (not e!2653397))))

(assert (=> b!4273704 (= res!1755245 (isBalanced!3853 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))))

(declare-fun b!4273705 () Bool)

(assert (=> b!4273705 (= e!2653397 (not (isEmpty!28005 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))))))))

(assert (= (and d!1261047 (not res!1755248)) b!4273701))

(assert (= (and b!4273701 res!1755247) b!4273700))

(assert (= (and b!4273700 res!1755249) b!4273703))

(assert (= (and b!4273703 res!1755244) b!4273704))

(assert (= (and b!4273704 res!1755245) b!4273702))

(assert (= (and b!4273702 res!1755246) b!4273705))

(declare-fun m!4868091 () Bool)

(assert (=> b!4273701 m!4868091))

(declare-fun m!4868093 () Bool)

(assert (=> b!4273701 m!4868093))

(declare-fun m!4868095 () Bool)

(assert (=> b!4273703 m!4868095))

(assert (=> b!4273700 m!4868091))

(assert (=> b!4273700 m!4868093))

(declare-fun m!4868097 () Bool)

(assert (=> b!4273702 m!4868097))

(declare-fun m!4868099 () Bool)

(assert (=> b!4273705 m!4868099))

(declare-fun m!4868101 () Bool)

(assert (=> b!4273704 m!4868101))

(assert (=> b!4273444 d!1261047))

(assert (=> b!4273444 d!1260921))

(declare-fun b!4273706 () Bool)

(declare-fun res!1755255 () Bool)

(declare-fun e!2653399 () Bool)

(assert (=> b!4273706 (=> (not res!1755255) (not e!2653399))))

(assert (=> b!4273706 (= res!1755255 (<= (- (height!1884 (left!35211 lt!1513227)) (height!1884 (right!35541 lt!1513227))) 1))))

(declare-fun b!4273707 () Bool)

(declare-fun e!2653398 () Bool)

(assert (=> b!4273707 (= e!2653398 e!2653399)))

(declare-fun res!1755253 () Bool)

(assert (=> b!4273707 (=> (not res!1755253) (not e!2653399))))

(assert (=> b!4273707 (= res!1755253 (<= (- 1) (- (height!1884 (left!35211 lt!1513227)) (height!1884 (right!35541 lt!1513227)))))))

(declare-fun b!4273708 () Bool)

(declare-fun res!1755252 () Bool)

(assert (=> b!4273708 (=> (not res!1755252) (not e!2653399))))

(assert (=> b!4273708 (= res!1755252 (not (isEmpty!28005 (left!35211 lt!1513227))))))

(declare-fun d!1261049 () Bool)

(declare-fun res!1755254 () Bool)

(assert (=> d!1261049 (=> res!1755254 e!2653398)))

(assert (=> d!1261049 (= res!1755254 (not ((_ is Node!14307) lt!1513227)))))

(assert (=> d!1261049 (= (isBalanced!3853 lt!1513227) e!2653398)))

(declare-fun b!4273709 () Bool)

(declare-fun res!1755250 () Bool)

(assert (=> b!4273709 (=> (not res!1755250) (not e!2653399))))

(assert (=> b!4273709 (= res!1755250 (isBalanced!3853 (left!35211 lt!1513227)))))

(declare-fun b!4273710 () Bool)

(declare-fun res!1755251 () Bool)

(assert (=> b!4273710 (=> (not res!1755251) (not e!2653399))))

(assert (=> b!4273710 (= res!1755251 (isBalanced!3853 (right!35541 lt!1513227)))))

(declare-fun b!4273711 () Bool)

(assert (=> b!4273711 (= e!2653399 (not (isEmpty!28005 (right!35541 lt!1513227))))))

(assert (= (and d!1261049 (not res!1755254)) b!4273707))

(assert (= (and b!4273707 res!1755253) b!4273706))

(assert (= (and b!4273706 res!1755255) b!4273709))

(assert (= (and b!4273709 res!1755250) b!4273710))

(assert (= (and b!4273710 res!1755251) b!4273708))

(assert (= (and b!4273708 res!1755252) b!4273711))

(declare-fun m!4868103 () Bool)

(assert (=> b!4273707 m!4868103))

(declare-fun m!4868105 () Bool)

(assert (=> b!4273707 m!4868105))

(declare-fun m!4868107 () Bool)

(assert (=> b!4273709 m!4868107))

(assert (=> b!4273706 m!4868103))

(assert (=> b!4273706 m!4868105))

(declare-fun m!4868109 () Bool)

(assert (=> b!4273708 m!4868109))

(declare-fun m!4868111 () Bool)

(assert (=> b!4273711 m!4868111))

(declare-fun m!4868113 () Bool)

(assert (=> b!4273710 m!4868113))

(assert (=> b!4273437 d!1261049))

(declare-fun d!1261051 () Bool)

(assert (=> d!1261051 (= (list!17203 lt!1513256) (list!17205 (c!727096 lt!1513256)))))

(declare-fun bs!601636 () Bool)

(assert (= bs!601636 d!1261051))

(declare-fun m!4868115 () Bool)

(assert (=> bs!601636 m!4868115))

(assert (=> d!1260951 d!1261051))

(declare-fun d!1261053 () Bool)

(declare-fun e!2653400 () Bool)

(assert (=> d!1261053 e!2653400))

(declare-fun res!1755256 () Bool)

(assert (=> d!1261053 (=> (not res!1755256) (not e!2653400))))

(declare-fun lt!1513277 () Conc!14307)

(assert (=> d!1261053 (= res!1755256 (= (list!17205 lt!1513277) (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))

(assert (=> d!1261053 (= lt!1513277 (choose!26061 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))

(assert (=> d!1261053 (= (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))) lt!1513277)))

(declare-fun b!4273712 () Bool)

(assert (=> b!4273712 (= e!2653400 (isBalanced!3853 lt!1513277))))

(assert (= (and d!1261053 res!1755256) b!4273712))

(declare-fun m!4868117 () Bool)

(assert (=> d!1261053 m!4868117))

(declare-fun m!4868119 () Bool)

(assert (=> d!1261053 m!4868119))

(declare-fun m!4868121 () Bool)

(assert (=> b!4273712 m!4868121))

(assert (=> d!1260951 d!1261053))

(declare-fun d!1261055 () Bool)

(declare-fun c!727430 () Bool)

(assert (=> d!1261055 (= c!727430 ((_ is Nil!47325) lt!1513257))))

(declare-fun e!2653401 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261055 (= (content!7480 lt!1513257) e!2653401)))

(declare-fun b!4273713 () Bool)

(assert (=> b!4273713 (= e!2653401 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273714 () Bool)

(assert (=> b!4273714 (= e!2653401 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513257) true) (content!7480 (t!353862 lt!1513257))))))

(assert (= (and d!1261055 c!727430) b!4273713))

(assert (= (and d!1261055 (not c!727430)) b!4273714))

(declare-fun m!4868123 () Bool)

(assert (=> b!4273714 m!4868123))

(declare-fun m!4868125 () Bool)

(assert (=> b!4273714 m!4868125))

(assert (=> d!1260967 d!1261055))

(assert (=> d!1260967 d!1260765))

(assert (=> d!1260967 d!1260683))

(declare-fun d!1261057 () Bool)

(declare-fun c!727431 () Bool)

(assert (=> d!1261057 (= c!727431 ((_ is Nil!47325) (t!353862 lt!1513163)))))

(declare-fun e!2653402 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261057 (= (content!7480 (t!353862 lt!1513163)) e!2653402)))

(declare-fun b!4273715 () Bool)

(assert (=> b!4273715 (= e!2653402 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273716 () Bool)

(assert (=> b!4273716 (= e!2653402 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513163)) true) (content!7480 (t!353862 (t!353862 lt!1513163)))))))

(assert (= (and d!1261057 c!727431) b!4273715))

(assert (= (and d!1261057 (not c!727431)) b!4273716))

(declare-fun m!4868127 () Bool)

(assert (=> b!4273716 m!4868127))

(declare-fun m!4868129 () Bool)

(assert (=> b!4273716 m!4868129))

(assert (=> b!4273359 d!1261057))

(assert (=> b!4273404 d!1261003))

(declare-fun b!4273720 () Bool)

(declare-fun e!2653404 () Bool)

(declare-fun lt!1513278 () List!47449)

(assert (=> b!4273720 (= e!2653404 (or (not (= lt!1513146 Nil!47325)) (= lt!1513278 (t!353862 lt!1513147))))))

(declare-fun b!4273718 () Bool)

(declare-fun e!2653403 () List!47449)

(assert (=> b!4273718 (= e!2653403 (Cons!47325 (h!52745 (t!353862 lt!1513147)) (++!12082 (t!353862 (t!353862 lt!1513147)) lt!1513146)))))

(declare-fun d!1261059 () Bool)

(assert (=> d!1261059 e!2653404))

(declare-fun res!1755257 () Bool)

(assert (=> d!1261059 (=> (not res!1755257) (not e!2653404))))

(assert (=> d!1261059 (= res!1755257 (= (content!7480 lt!1513278) ((_ map or) (content!7480 (t!353862 lt!1513147)) (content!7480 lt!1513146))))))

(assert (=> d!1261059 (= lt!1513278 e!2653403)))

(declare-fun c!727432 () Bool)

(assert (=> d!1261059 (= c!727432 ((_ is Nil!47325) (t!353862 lt!1513147)))))

(assert (=> d!1261059 (= (++!12082 (t!353862 lt!1513147) lt!1513146) lt!1513278)))

(declare-fun b!4273717 () Bool)

(assert (=> b!4273717 (= e!2653403 lt!1513146)))

(declare-fun b!4273719 () Bool)

(declare-fun res!1755258 () Bool)

(assert (=> b!4273719 (=> (not res!1755258) (not e!2653404))))

(assert (=> b!4273719 (= res!1755258 (= (size!34649 lt!1513278) (+ (size!34649 (t!353862 lt!1513147)) (size!34649 lt!1513146))))))

(assert (= (and d!1261059 c!727432) b!4273717))

(assert (= (and d!1261059 (not c!727432)) b!4273718))

(assert (= (and d!1261059 res!1755257) b!4273719))

(assert (= (and b!4273719 res!1755258) b!4273720))

(declare-fun m!4868131 () Bool)

(assert (=> b!4273718 m!4868131))

(declare-fun m!4868133 () Bool)

(assert (=> d!1261059 m!4868133))

(assert (=> d!1261059 m!4867837))

(assert (=> d!1261059 m!4867417))

(declare-fun m!4868135 () Bool)

(assert (=> b!4273719 m!4868135))

(assert (=> b!4273719 m!4868081))

(assert (=> b!4273719 m!4867423))

(assert (=> b!4273374 d!1261059))

(declare-fun d!1261061 () Bool)

(declare-fun c!727433 () Bool)

(assert (=> d!1261061 (= c!727433 ((_ is Nil!47325) lt!1513254))))

(declare-fun e!2653405 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261061 (= (content!7480 lt!1513254) e!2653405)))

(declare-fun b!4273721 () Bool)

(assert (=> b!4273721 (= e!2653405 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273722 () Bool)

(assert (=> b!4273722 (= e!2653405 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513254) true) (content!7480 (t!353862 lt!1513254))))))

(assert (= (and d!1261061 c!727433) b!4273721))

(assert (= (and d!1261061 (not c!727433)) b!4273722))

(declare-fun m!4868137 () Bool)

(assert (=> b!4273722 m!4868137))

(declare-fun m!4868139 () Bool)

(assert (=> b!4273722 m!4868139))

(assert (=> d!1260939 d!1261061))

(declare-fun d!1261065 () Bool)

(declare-fun c!727434 () Bool)

(assert (=> d!1261065 (= c!727434 ((_ is Nil!47325) (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653406 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261065 (= (content!7480 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653406)))

(declare-fun b!4273723 () Bool)

(assert (=> b!4273723 (= e!2653406 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273724 () Bool)

(assert (=> b!4273724 (= e!2653406 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) true) (content!7480 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261065 c!727434) b!4273723))

(assert (= (and d!1261065 (not c!727434)) b!4273724))

(declare-fun m!4868141 () Bool)

(assert (=> b!4273724 m!4868141))

(declare-fun m!4868143 () Bool)

(assert (=> b!4273724 m!4868143))

(assert (=> d!1260939 d!1261065))

(assert (=> d!1260939 d!1260799))

(declare-fun d!1261067 () Bool)

(declare-fun lt!1513279 () Int)

(assert (=> d!1261067 (>= lt!1513279 0)))

(declare-fun e!2653408 () Int)

(assert (=> d!1261067 (= lt!1513279 e!2653408)))

(declare-fun c!727436 () Bool)

(assert (=> d!1261067 (= c!727436 ((_ is Nil!47325) lt!1513210))))

(assert (=> d!1261067 (= (size!34649 lt!1513210) lt!1513279)))

(declare-fun b!4273727 () Bool)

(assert (=> b!4273727 (= e!2653408 0)))

(declare-fun b!4273728 () Bool)

(assert (=> b!4273728 (= e!2653408 (+ 1 (size!34649 (t!353862 lt!1513210))))))

(assert (= (and d!1261067 c!727436) b!4273727))

(assert (= (and d!1261067 (not c!727436)) b!4273728))

(declare-fun m!4868145 () Bool)

(assert (=> b!4273728 m!4868145))

(assert (=> b!4273389 d!1261067))

(assert (=> b!4273389 d!1261037))

(declare-fun d!1261069 () Bool)

(declare-fun lt!1513280 () Int)

(assert (=> d!1261069 (>= lt!1513280 0)))

(declare-fun e!2653409 () Int)

(assert (=> d!1261069 (= lt!1513280 e!2653409)))

(declare-fun c!727437 () Bool)

(assert (=> d!1261069 (= c!727437 ((_ is Nil!47325) call!294197))))

(assert (=> d!1261069 (= (size!34649 call!294197) lt!1513280)))

(declare-fun b!4273729 () Bool)

(assert (=> b!4273729 (= e!2653409 0)))

(declare-fun b!4273730 () Bool)

(assert (=> b!4273730 (= e!2653409 (+ 1 (size!34649 (t!353862 call!294197))))))

(assert (= (and d!1261069 c!727437) b!4273729))

(assert (= (and d!1261069 (not c!727437)) b!4273730))

(declare-fun m!4868151 () Bool)

(assert (=> b!4273730 m!4868151))

(assert (=> b!4273389 d!1261069))

(assert (=> d!1260971 d!1260773))

(assert (=> d!1260971 d!1260769))

(assert (=> d!1260971 d!1260975))

(assert (=> d!1260971 d!1260973))

(declare-fun d!1261073 () Bool)

(declare-fun lt!1513281 () Int)

(assert (=> d!1261073 (>= lt!1513281 0)))

(declare-fun e!2653411 () Int)

(assert (=> d!1261073 (= lt!1513281 e!2653411)))

(declare-fun c!727439 () Bool)

(assert (=> d!1261073 (= c!727439 ((_ is Nil!47325) (t!353862 (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1261073 (= (size!34649 (t!353862 (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513281)))

(declare-fun b!4273733 () Bool)

(assert (=> b!4273733 (= e!2653411 0)))

(declare-fun b!4273734 () Bool)

(assert (=> b!4273734 (= e!2653411 (+ 1 (size!34649 (t!353862 (t!353862 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261073 c!727439) b!4273733))

(assert (= (and d!1261073 (not c!727439)) b!4273734))

(declare-fun m!4868157 () Bool)

(assert (=> b!4273734 m!4868157))

(assert (=> b!4273406 d!1261073))

(declare-fun d!1261075 () Bool)

(declare-fun c!727440 () Bool)

(assert (=> d!1261075 (= c!727440 ((_ is Nil!47325) lt!1513260))))

(declare-fun e!2653412 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261075 (= (content!7480 lt!1513260) e!2653412)))

(declare-fun b!4273735 () Bool)

(assert (=> b!4273735 (= e!2653412 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273736 () Bool)

(assert (=> b!4273736 (= e!2653412 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513260) true) (content!7480 (t!353862 lt!1513260))))))

(assert (= (and d!1261075 c!727440) b!4273735))

(assert (= (and d!1261075 (not c!727440)) b!4273736))

(declare-fun m!4868159 () Bool)

(assert (=> b!4273736 m!4868159))

(declare-fun m!4868161 () Bool)

(assert (=> b!4273736 m!4868161))

(assert (=> d!1260975 d!1261075))

(assert (=> d!1260975 d!1260947))

(declare-fun d!1261079 () Bool)

(declare-fun c!727442 () Bool)

(assert (=> d!1261079 (= c!727442 ((_ is Nil!47325) (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun e!2653415 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261079 (= (content!7480 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))) e!2653415)))

(declare-fun b!4273741 () Bool)

(assert (=> b!4273741 (= e!2653415 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273742 () Bool)

(assert (=> b!4273742 (= e!2653415 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))) true) (content!7480 (t!353862 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261079 c!727442) b!4273741))

(assert (= (and d!1261079 (not c!727442)) b!4273742))

(declare-fun m!4868163 () Bool)

(assert (=> b!4273742 m!4868163))

(declare-fun m!4868165 () Bool)

(assert (=> b!4273742 m!4868165))

(assert (=> d!1260975 d!1261079))

(declare-fun e!2653417 () Bool)

(declare-fun b!4273746 () Bool)

(declare-fun lt!1513283 () List!47449)

(assert (=> b!4273746 (= e!2653417 (or (not (= (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) Nil!47325)) (= lt!1513283 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun b!4273744 () Bool)

(declare-fun e!2653416 () List!47449)

(assert (=> b!4273744 (= e!2653416 (Cons!47325 (h!52745 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (++!12082 (t!353862 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun d!1261081 () Bool)

(assert (=> d!1261081 e!2653417))

(declare-fun res!1755261 () Bool)

(assert (=> d!1261081 (=> (not res!1755261) (not e!2653417))))

(assert (=> d!1261081 (= res!1755261 (= (content!7480 lt!1513283) ((_ map or) (content!7480 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (content!7480 (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (=> d!1261081 (= lt!1513283 e!2653416)))

(declare-fun c!727443 () Bool)

(assert (=> d!1261081 (= c!727443 ((_ is Nil!47325) (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (=> d!1261081 (= (++!12082 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) lt!1513283)))

(declare-fun b!4273743 () Bool)

(assert (=> b!4273743 (= e!2653416 (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273745 () Bool)

(declare-fun res!1755262 () Bool)

(assert (=> b!4273745 (=> (not res!1755262) (not e!2653417))))

(assert (=> b!4273745 (= res!1755262 (= (size!34649 lt!1513283) (+ (size!34649 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (size!34649 (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261081 c!727443) b!4273743))

(assert (= (and d!1261081 (not c!727443)) b!4273744))

(assert (= (and d!1261081 res!1755261) b!4273745))

(assert (= (and b!4273745 res!1755262) b!4273746))

(assert (=> b!4273744 m!4867113))

(declare-fun m!4868175 () Bool)

(assert (=> b!4273744 m!4868175))

(declare-fun m!4868177 () Bool)

(assert (=> d!1261081 m!4868177))

(assert (=> d!1261081 m!4867111))

(declare-fun m!4868179 () Bool)

(assert (=> d!1261081 m!4868179))

(assert (=> d!1261081 m!4867113))

(declare-fun m!4868181 () Bool)

(assert (=> d!1261081 m!4868181))

(declare-fun m!4868183 () Bool)

(assert (=> b!4273745 m!4868183))

(assert (=> b!4273745 m!4867111))

(declare-fun m!4868185 () Bool)

(assert (=> b!4273745 m!4868185))

(assert (=> b!4273745 m!4867113))

(declare-fun m!4868187 () Bool)

(assert (=> b!4273745 m!4868187))

(assert (=> b!4273165 d!1261081))

(declare-fun b!4273754 () Bool)

(declare-fun e!2653421 () List!47449)

(assert (=> b!4273754 (= e!2653421 (++!12082 (list!17205 (left!35211 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun d!1261085 () Bool)

(declare-fun c!727446 () Bool)

(assert (=> d!1261085 (= c!727446 ((_ is Empty!14307) (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun e!2653420 () List!47449)

(assert (=> d!1261085 (= (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) e!2653420)))

(declare-fun b!4273752 () Bool)

(assert (=> b!4273752 (= e!2653420 e!2653421)))

(declare-fun c!727447 () Bool)

(assert (=> b!4273752 (= c!727447 ((_ is Leaf!22116) (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273753 () Bool)

(assert (=> b!4273753 (= e!2653421 (list!17207 (xs!17613 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4273751 () Bool)

(assert (=> b!4273751 (= e!2653420 Nil!47325)))

(assert (= (and d!1261085 c!727446) b!4273751))

(assert (= (and d!1261085 (not c!727446)) b!4273752))

(assert (= (and b!4273752 c!727447) b!4273753))

(assert (= (and b!4273752 (not c!727447)) b!4273754))

(declare-fun m!4868197 () Bool)

(assert (=> b!4273754 m!4868197))

(declare-fun m!4868199 () Bool)

(assert (=> b!4273754 m!4868199))

(assert (=> b!4273754 m!4868197))

(assert (=> b!4273754 m!4868199))

(declare-fun m!4868205 () Bool)

(assert (=> b!4273754 m!4868205))

(declare-fun m!4868207 () Bool)

(assert (=> b!4273753 m!4868207))

(assert (=> b!4273165 d!1261085))

(declare-fun b!4273761 () Bool)

(declare-fun e!2653425 () List!47449)

(assert (=> b!4273761 (= e!2653425 (++!12082 (list!17205 (left!35211 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun d!1261091 () Bool)

(declare-fun c!727449 () Bool)

(assert (=> d!1261091 (= c!727449 ((_ is Empty!14307) (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun e!2653424 () List!47449)

(assert (=> d!1261091 (= (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) e!2653424)))

(declare-fun b!4273759 () Bool)

(assert (=> b!4273759 (= e!2653424 e!2653425)))

(declare-fun c!727450 () Bool)

(assert (=> b!4273759 (= c!727450 ((_ is Leaf!22116) (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4273760 () Bool)

(assert (=> b!4273760 (= e!2653425 (list!17207 (xs!17613 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4273758 () Bool)

(assert (=> b!4273758 (= e!2653424 Nil!47325)))

(assert (= (and d!1261091 c!727449) b!4273758))

(assert (= (and d!1261091 (not c!727449)) b!4273759))

(assert (= (and b!4273759 c!727450) b!4273760))

(assert (= (and b!4273759 (not c!727450)) b!4273761))

(declare-fun m!4868209 () Bool)

(assert (=> b!4273761 m!4868209))

(declare-fun m!4868211 () Bool)

(assert (=> b!4273761 m!4868211))

(assert (=> b!4273761 m!4868209))

(assert (=> b!4273761 m!4868211))

(declare-fun m!4868213 () Bool)

(assert (=> b!4273761 m!4868213))

(declare-fun m!4868215 () Bool)

(assert (=> b!4273760 m!4868215))

(assert (=> b!4273165 d!1261091))

(declare-fun d!1261093 () Bool)

(declare-fun c!727454 () Bool)

(assert (=> d!1261093 (= c!727454 ((_ is Nil!47325) (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))))))

(declare-fun e!2653429 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261093 (= (content!7480 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))) e!2653429)))

(declare-fun b!4273768 () Bool)

(assert (=> b!4273768 (= e!2653429 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273769 () Bool)

(assert (=> b!4273769 (= e!2653429 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))) true) (content!7480 (t!353862 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))))))))

(assert (= (and d!1261093 c!727454) b!4273768))

(assert (= (and d!1261093 (not c!727454)) b!4273769))

(declare-fun m!4868217 () Bool)

(assert (=> b!4273769 m!4868217))

(declare-fun m!4868219 () Bool)

(assert (=> b!4273769 m!4868219))

(assert (=> b!4273363 d!1261093))

(declare-fun d!1261095 () Bool)

(declare-fun c!727455 () Bool)

(assert (=> d!1261095 (= c!727455 ((_ is Nil!47325) lt!1513259))))

(declare-fun e!2653430 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261095 (= (content!7480 lt!1513259) e!2653430)))

(declare-fun b!4273770 () Bool)

(assert (=> b!4273770 (= e!2653430 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273771 () Bool)

(assert (=> b!4273771 (= e!2653430 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513259) true) (content!7480 (t!353862 lt!1513259))))))

(assert (= (and d!1261095 c!727455) b!4273770))

(assert (= (and d!1261095 (not c!727455)) b!4273771))

(declare-fun m!4868221 () Bool)

(assert (=> b!4273771 m!4868221))

(declare-fun m!4868223 () Bool)

(assert (=> b!4273771 m!4868223))

(assert (=> d!1260973 d!1261095))

(assert (=> d!1260973 d!1260949))

(assert (=> d!1260973 d!1260683))

(declare-fun d!1261097 () Bool)

(assert (=> d!1261097 (= (list!17207 (xs!17613 (right!35541 (c!727096 x!742222)))) (innerList!14367 (xs!17613 (right!35541 (c!727096 x!742222)))))))

(assert (=> b!4273176 d!1261097))

(declare-fun b!4273775 () Bool)

(declare-fun lt!1513289 () List!47449)

(declare-fun e!2653432 () Bool)

(assert (=> b!4273775 (= e!2653432 (or (not (= call!294197 Nil!47325)) (= lt!1513289 (t!353862 lt!1513147))))))

(declare-fun b!4273773 () Bool)

(declare-fun e!2653431 () List!47449)

(assert (=> b!4273773 (= e!2653431 (Cons!47325 (h!52745 (t!353862 lt!1513147)) (++!12082 (t!353862 (t!353862 lt!1513147)) call!294197)))))

(declare-fun d!1261099 () Bool)

(assert (=> d!1261099 e!2653432))

(declare-fun res!1755264 () Bool)

(assert (=> d!1261099 (=> (not res!1755264) (not e!2653432))))

(assert (=> d!1261099 (= res!1755264 (= (content!7480 lt!1513289) ((_ map or) (content!7480 (t!353862 lt!1513147)) (content!7480 call!294197))))))

(assert (=> d!1261099 (= lt!1513289 e!2653431)))

(declare-fun c!727456 () Bool)

(assert (=> d!1261099 (= c!727456 ((_ is Nil!47325) (t!353862 lt!1513147)))))

(assert (=> d!1261099 (= (++!12082 (t!353862 lt!1513147) call!294197) lt!1513289)))

(declare-fun b!4273772 () Bool)

(assert (=> b!4273772 (= e!2653431 call!294197)))

(declare-fun b!4273774 () Bool)

(declare-fun res!1755265 () Bool)

(assert (=> b!4273774 (=> (not res!1755265) (not e!2653432))))

(assert (=> b!4273774 (= res!1755265 (= (size!34649 lt!1513289) (+ (size!34649 (t!353862 lt!1513147)) (size!34649 call!294197))))))

(assert (= (and d!1261099 c!727456) b!4273772))

(assert (= (and d!1261099 (not c!727456)) b!4273773))

(assert (= (and d!1261099 res!1755264) b!4273774))

(assert (= (and b!4273774 res!1755265) b!4273775))

(declare-fun m!4868235 () Bool)

(assert (=> b!4273773 m!4868235))

(declare-fun m!4868237 () Bool)

(assert (=> d!1261099 m!4868237))

(assert (=> d!1261099 m!4867837))

(assert (=> d!1261099 m!4867463))

(declare-fun m!4868241 () Bool)

(assert (=> b!4273774 m!4868241))

(assert (=> b!4273774 m!4868081))

(assert (=> b!4273774 m!4867467))

(assert (=> b!4273388 d!1261099))

(declare-fun d!1261101 () Bool)

(declare-fun c!727457 () Bool)

(assert (=> d!1261101 (= c!727457 ((_ is Nil!47325) lt!1513198))))

(declare-fun e!2653433 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261101 (= (content!7480 lt!1513198) e!2653433)))

(declare-fun b!4273776 () Bool)

(assert (=> b!4273776 (= e!2653433 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273777 () Bool)

(assert (=> b!4273777 (= e!2653433 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513198) true) (content!7480 (t!353862 lt!1513198))))))

(assert (= (and d!1261101 c!727457) b!4273776))

(assert (= (and d!1261101 (not c!727457)) b!4273777))

(declare-fun m!4868247 () Bool)

(assert (=> b!4273777 m!4868247))

(declare-fun m!4868251 () Bool)

(assert (=> b!4273777 m!4868251))

(assert (=> d!1260751 d!1261101))

(declare-fun d!1261103 () Bool)

(declare-fun c!727458 () Bool)

(assert (=> d!1261103 (= c!727458 ((_ is Nil!47325) e!2653071))))

(declare-fun e!2653434 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261103 (= (content!7480 e!2653071) e!2653434)))

(declare-fun b!4273778 () Bool)

(assert (=> b!4273778 (= e!2653434 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273779 () Bool)

(assert (=> b!4273779 (= e!2653434 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 e!2653071) true) (content!7480 (t!353862 e!2653071))))))

(assert (= (and d!1261103 c!727458) b!4273778))

(assert (= (and d!1261103 (not c!727458)) b!4273779))

(declare-fun m!4868253 () Bool)

(assert (=> b!4273779 m!4868253))

(declare-fun m!4868255 () Bool)

(assert (=> b!4273779 m!4868255))

(assert (=> d!1260751 d!1261103))

(assert (=> d!1260751 d!1260683))

(declare-fun d!1261109 () Bool)

(declare-fun lt!1513290 () Int)

(assert (=> d!1261109 (>= lt!1513290 0)))

(declare-fun e!2653436 () Int)

(assert (=> d!1261109 (= lt!1513290 e!2653436)))

(declare-fun c!727460 () Bool)

(assert (=> d!1261109 (= c!727460 ((_ is Nil!47325) (t!353862 lt!1513161)))))

(assert (=> d!1261109 (= (size!34649 (t!353862 lt!1513161)) lt!1513290)))

(declare-fun b!4273782 () Bool)

(assert (=> b!4273782 (= e!2653436 0)))

(declare-fun b!4273783 () Bool)

(assert (=> b!4273783 (= e!2653436 (+ 1 (size!34649 (t!353862 (t!353862 lt!1513161)))))))

(assert (= (and d!1261109 c!727460) b!4273782))

(assert (= (and d!1261109 (not c!727460)) b!4273783))

(declare-fun m!4868261 () Bool)

(assert (=> b!4273783 m!4868261))

(assert (=> b!4273402 d!1261109))

(declare-fun b!4273789 () Bool)

(declare-fun e!2653439 () Bool)

(declare-fun lt!1513291 () List!47449)

(assert (=> b!4273789 (= e!2653439 (or (not (= (list!17205 (right!35541 (right!35541 (c!727096 x!742222)))) Nil!47325)) (= lt!1513291 (list!17205 (left!35211 (right!35541 (c!727096 x!742222)))))))))

(declare-fun b!4273787 () Bool)

(declare-fun e!2653438 () List!47449)

(assert (=> b!4273787 (= e!2653438 (Cons!47325 (h!52745 (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))) (++!12082 (t!353862 (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))) (list!17205 (right!35541 (right!35541 (c!727096 x!742222)))))))))

(declare-fun d!1261113 () Bool)

(assert (=> d!1261113 e!2653439))

(declare-fun res!1755266 () Bool)

(assert (=> d!1261113 (=> (not res!1755266) (not e!2653439))))

(assert (=> d!1261113 (= res!1755266 (= (content!7480 lt!1513291) ((_ map or) (content!7480 (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))) (content!7480 (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))))))))

(assert (=> d!1261113 (= lt!1513291 e!2653438)))

(declare-fun c!727462 () Bool)

(assert (=> d!1261113 (= c!727462 ((_ is Nil!47325) (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))))))

(assert (=> d!1261113 (= (++!12082 (list!17205 (left!35211 (right!35541 (c!727096 x!742222)))) (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))) lt!1513291)))

(declare-fun b!4273786 () Bool)

(assert (=> b!4273786 (= e!2653438 (list!17205 (right!35541 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4273788 () Bool)

(declare-fun res!1755267 () Bool)

(assert (=> b!4273788 (=> (not res!1755267) (not e!2653439))))

(assert (=> b!4273788 (= res!1755267 (= (size!34649 lt!1513291) (+ (size!34649 (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))) (size!34649 (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))))))))

(assert (= (and d!1261113 c!727462) b!4273786))

(assert (= (and d!1261113 (not c!727462)) b!4273787))

(assert (= (and d!1261113 res!1755266) b!4273788))

(assert (= (and b!4273788 res!1755267) b!4273789))

(assert (=> b!4273787 m!4867145))

(declare-fun m!4868267 () Bool)

(assert (=> b!4273787 m!4868267))

(declare-fun m!4868269 () Bool)

(assert (=> d!1261113 m!4868269))

(assert (=> d!1261113 m!4867143))

(declare-fun m!4868271 () Bool)

(assert (=> d!1261113 m!4868271))

(assert (=> d!1261113 m!4867145))

(declare-fun m!4868273 () Bool)

(assert (=> d!1261113 m!4868273))

(declare-fun m!4868275 () Bool)

(assert (=> b!4273788 m!4868275))

(assert (=> b!4273788 m!4867143))

(declare-fun m!4868277 () Bool)

(assert (=> b!4273788 m!4868277))

(assert (=> b!4273788 m!4867145))

(declare-fun m!4868279 () Bool)

(assert (=> b!4273788 m!4868279))

(assert (=> b!4273177 d!1261113))

(declare-fun b!4273795 () Bool)

(declare-fun e!2653442 () List!47449)

(assert (=> b!4273795 (= e!2653442 (++!12082 (list!17205 (left!35211 (left!35211 (right!35541 (c!727096 x!742222))))) (list!17205 (right!35541 (left!35211 (right!35541 (c!727096 x!742222)))))))))

(declare-fun d!1261117 () Bool)

(declare-fun c!727464 () Bool)

(assert (=> d!1261117 (= c!727464 ((_ is Empty!14307) (left!35211 (right!35541 (c!727096 x!742222)))))))

(declare-fun e!2653441 () List!47449)

(assert (=> d!1261117 (= (list!17205 (left!35211 (right!35541 (c!727096 x!742222)))) e!2653441)))

(declare-fun b!4273793 () Bool)

(assert (=> b!4273793 (= e!2653441 e!2653442)))

(declare-fun c!727465 () Bool)

(assert (=> b!4273793 (= c!727465 ((_ is Leaf!22116) (left!35211 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4273794 () Bool)

(assert (=> b!4273794 (= e!2653442 (list!17207 (xs!17613 (left!35211 (right!35541 (c!727096 x!742222))))))))

(declare-fun b!4273792 () Bool)

(assert (=> b!4273792 (= e!2653441 Nil!47325)))

(assert (= (and d!1261117 c!727464) b!4273792))

(assert (= (and d!1261117 (not c!727464)) b!4273793))

(assert (= (and b!4273793 c!727465) b!4273794))

(assert (= (and b!4273793 (not c!727465)) b!4273795))

(declare-fun m!4868283 () Bool)

(assert (=> b!4273795 m!4868283))

(declare-fun m!4868285 () Bool)

(assert (=> b!4273795 m!4868285))

(assert (=> b!4273795 m!4868283))

(assert (=> b!4273795 m!4868285))

(declare-fun m!4868287 () Bool)

(assert (=> b!4273795 m!4868287))

(declare-fun m!4868289 () Bool)

(assert (=> b!4273794 m!4868289))

(assert (=> b!4273177 d!1261117))

(declare-fun b!4273803 () Bool)

(declare-fun e!2653446 () List!47449)

(assert (=> b!4273803 (= e!2653446 (++!12082 (list!17205 (left!35211 (right!35541 (right!35541 (c!727096 x!742222))))) (list!17205 (right!35541 (right!35541 (right!35541 (c!727096 x!742222)))))))))

(declare-fun d!1261123 () Bool)

(declare-fun c!727467 () Bool)

(assert (=> d!1261123 (= c!727467 ((_ is Empty!14307) (right!35541 (right!35541 (c!727096 x!742222)))))))

(declare-fun e!2653445 () List!47449)

(assert (=> d!1261123 (= (list!17205 (right!35541 (right!35541 (c!727096 x!742222)))) e!2653445)))

(declare-fun b!4273801 () Bool)

(assert (=> b!4273801 (= e!2653445 e!2653446)))

(declare-fun c!727468 () Bool)

(assert (=> b!4273801 (= c!727468 ((_ is Leaf!22116) (right!35541 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4273802 () Bool)

(assert (=> b!4273802 (= e!2653446 (list!17207 (xs!17613 (right!35541 (right!35541 (c!727096 x!742222))))))))

(declare-fun b!4273800 () Bool)

(assert (=> b!4273800 (= e!2653445 Nil!47325)))

(assert (= (and d!1261123 c!727467) b!4273800))

(assert (= (and d!1261123 (not c!727467)) b!4273801))

(assert (= (and b!4273801 c!727468) b!4273802))

(assert (= (and b!4273801 (not c!727468)) b!4273803))

(declare-fun m!4868293 () Bool)

(assert (=> b!4273803 m!4868293))

(declare-fun m!4868297 () Bool)

(assert (=> b!4273803 m!4868297))

(assert (=> b!4273803 m!4868293))

(assert (=> b!4273803 m!4868297))

(declare-fun m!4868301 () Bool)

(assert (=> b!4273803 m!4868301))

(declare-fun m!4868305 () Bool)

(assert (=> b!4273802 m!4868305))

(assert (=> b!4273177 d!1261123))

(declare-fun d!1261125 () Bool)

(declare-fun e!2653448 () Bool)

(assert (=> d!1261125 e!2653448))

(declare-fun res!1755270 () Bool)

(assert (=> d!1261125 (=> (not res!1755270) (not e!2653448))))

(declare-fun lt!1513295 () BalanceConc!28124)

(assert (=> d!1261125 (= res!1755270 (= (list!17203 lt!1513295) (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))))))

(assert (=> d!1261125 (= lt!1513295 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325))))))))

(assert (=> d!1261125 (= (fromListB!2670 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))) lt!1513295)))

(declare-fun b!4273806 () Bool)

(assert (=> b!4273806 (= e!2653448 (isBalanced!3853 (fromList!928 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325))))))))

(assert (= (and d!1261125 res!1755270) b!4273806))

(declare-fun m!4868311 () Bool)

(assert (=> d!1261125 m!4868311))

(declare-fun m!4868315 () Bool)

(assert (=> d!1261125 m!4868315))

(assert (=> b!4273806 m!4868315))

(assert (=> b!4273806 m!4868315))

(declare-fun m!4868319 () Bool)

(assert (=> b!4273806 m!4868319))

(assert (=> d!1260907 d!1261125))

(assert (=> b!4273432 d!1261065))

(declare-fun b!4273816 () Bool)

(declare-fun e!2653453 () List!47449)

(assert (=> b!4273816 (= e!2653453 (++!12082 (list!17205 (left!35211 lt!1513248)) (list!17205 (right!35541 lt!1513248))))))

(declare-fun d!1261135 () Bool)

(declare-fun c!727473 () Bool)

(assert (=> d!1261135 (= c!727473 ((_ is Empty!14307) lt!1513248))))

(declare-fun e!2653452 () List!47449)

(assert (=> d!1261135 (= (list!17205 lt!1513248) e!2653452)))

(declare-fun b!4273814 () Bool)

(assert (=> b!4273814 (= e!2653452 e!2653453)))

(declare-fun c!727474 () Bool)

(assert (=> b!4273814 (= c!727474 ((_ is Leaf!22116) lt!1513248))))

(declare-fun b!4273815 () Bool)

(assert (=> b!4273815 (= e!2653453 (list!17207 (xs!17613 lt!1513248)))))

(declare-fun b!4273813 () Bool)

(assert (=> b!4273813 (= e!2653452 Nil!47325)))

(assert (= (and d!1261135 c!727473) b!4273813))

(assert (= (and d!1261135 (not c!727473)) b!4273814))

(assert (= (and b!4273814 c!727474) b!4273815))

(assert (= (and b!4273814 (not c!727474)) b!4273816))

(declare-fun m!4868325 () Bool)

(assert (=> b!4273816 m!4868325))

(declare-fun m!4868327 () Bool)

(assert (=> b!4273816 m!4868327))

(assert (=> b!4273816 m!4868325))

(assert (=> b!4273816 m!4868327))

(declare-fun m!4868329 () Bool)

(assert (=> b!4273816 m!4868329))

(declare-fun m!4868331 () Bool)

(assert (=> b!4273815 m!4868331))

(assert (=> d!1260921 d!1261135))

(declare-fun d!1261139 () Bool)

(declare-fun e!2653454 () Bool)

(assert (=> d!1261139 e!2653454))

(declare-fun res!1755272 () Bool)

(assert (=> d!1261139 (=> (not res!1755272) (not e!2653454))))

(declare-fun res!1755271 () Conc!14307)

(assert (=> d!1261139 (= res!1755272 (= (list!17205 res!1755271) (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(declare-fun e!2653455 () Bool)

(assert (=> d!1261139 (and (inv!62530 res!1755271) e!2653455)))

(assert (=> d!1261139 (= (choose!26061 (Cons!47325 #x0063 (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) res!1755271)))

(declare-fun b!4273817 () Bool)

(declare-fun tp!1308357 () Bool)

(declare-fun tp!1308358 () Bool)

(assert (=> b!4273817 (= e!2653455 (and (inv!62530 (left!35211 res!1755271)) tp!1308358 (inv!62530 (right!35541 res!1755271)) tp!1308357))))

(declare-fun b!4273818 () Bool)

(assert (=> b!4273818 (= e!2653455 (inv!62537 (xs!17613 res!1755271)))))

(declare-fun b!4273819 () Bool)

(assert (=> b!4273819 (= e!2653454 (isBalanced!3853 res!1755271))))

(assert (= (and d!1261139 ((_ is Node!14307) res!1755271)) b!4273817))

(assert (= (and d!1261139 ((_ is Leaf!22116) res!1755271)) b!4273818))

(assert (= (and d!1261139 res!1755272) b!4273819))

(declare-fun m!4868333 () Bool)

(assert (=> d!1261139 m!4868333))

(declare-fun m!4868335 () Bool)

(assert (=> d!1261139 m!4868335))

(declare-fun m!4868337 () Bool)

(assert (=> b!4273817 m!4868337))

(declare-fun m!4868339 () Bool)

(assert (=> b!4273817 m!4868339))

(declare-fun m!4868341 () Bool)

(assert (=> b!4273818 m!4868341))

(declare-fun m!4868343 () Bool)

(assert (=> b!4273819 m!4868343))

(assert (=> d!1260921 d!1261139))

(check-sat (not b!4273794) (not b!4273712) (not d!1261099) (not b!4273422) (not d!1261005) (not b!4273608) (not b!4273700) (not b!4273582) (not b!4273603) (not b!4273338) (not b!4273736) (not d!1260991) (not d!1261053) (not d!1260909) (not b!4273609) (not b!4273565) (not b!4273680) (not b!4273600) (not b!4273552) (not b!4273580) (not d!1261051) (not b!4273635) (not b!4273379) (not b!4273711) (not b!4273538) (not bm!294196) (not b!4273674) (not b!4273099) (not b!4273555) (not b!4273709) (not d!1260801) (not b!4273351) (not b!4273714) (not b!4273563) (not b!4273730) (not b!4273669) (not b!4273654) (not b!4273783) (not b!4273788) (not b!4273540) (not b!4273630) (not b!4273683) (not bm!294195) (not d!1260969) (not b!4273542) (not b!4273330) (not b!4273616) (not b!4273753) (not b!4273617) (not b!4273396) (not b!4273349) (not b!4273705) (not b!4273693) (not b!4273335) (not b!4273666) (not b!4273573) (not b!4273697) (not b!4273448) (not b!4273446) (not d!1260993) (not bm!294197) (not b!4273777) (not b!4273551) (not b!4273662) (not d!1260959) (not b!4273689) (not b!4273447) (not b!4273348) (not b!4273734) (not b!4273698) (not d!1261041) (not b!4273658) (not b!4273779) (not b!4273774) (not b!4273703) (not b!4273328) (not b!4273595) (not b!4273716) (not b!4273343) (not b!4273653) (not b!4273718) (not b!4273673) (not b!4273544) (not b!4273761) (not b!4273819) (not b!4273787) (not b!4273594) (not b!4273691) (not d!1261059) (not b!4273575) (not b!4273769) (not b!4273584) (not b!4273719) (not b!4273419) (not b!4273670) (not b!4273644) (not b!4273583) (not b!4273581) (not b!4273393) (not d!1261139) (not b!4273702) (not b!4273599) (not b!4273803) (not b!4273327) (not d!1261125) (not d!1260749) (not b!4273642) (not b!4273382) (not b!4273744) (not b!4273585) (not b!4273618) (not b!4273701) (not d!1260767) (not b!4273559) (not b!4273577) (not b!4273420) (not b!4273604) (not d!1261025) (not b!4273334) (not b!4273664) (not b!4273685) (not b!4273773) (not b!4273649) (not b!4273722) (not b!4273646) (not b!4273592) (not b!4273579) (not b!4273421) (not b!4273423) (not b!4273707) (not b!4273589) (not b!4273660) (not d!1260911) (not d!1260789) (not b!4273590) (not b!4273640) (not b!4273754) (not b!4273771) (not b!4273677) (not b!4273710) (not b!4273549) (not b!4273356) (not b!4273704) (not b!4273337) (not b!4273728) (not b!4273802) (not b!4273586) (not b!4273569) (not b!4273371) (not d!1260985) (not b!4273631) (not b!4273724) (not b!4273566) (not b!4273742) (not b!4273546) (not b!4273708) (not d!1260953) (not b!4273548) (not b!4273706) (not b!4273570) (not b!4273445) (not b!4273622) (not b!4273443) (not b!4273648) (not b!4273324) (not b!4273620) (not b!4273350) (not b!4273687) (not d!1260961) (not b!4273695) (not d!1260937) (not b!4273795) (not b!4273760) (not b!4273816) (not d!1260957) (not b!4273818) (not b!4273745) (not b!4273597) (not b!4273624) (not b!4273557) (not b!4273562) (not b!4273657) (not b!4273636) (not b!4273424) (not b!4273639) (not b!4273441) (not b!4273353) (not b!4273438) (not b!4273815) (not d!1261113) (not d!1260931) (not b!4273817) (not b!4273332) (not d!1261081) (not b!4273626) (not b!4273806) (not b!4273675) (not b!4273440) (not b!4273627))
(check-sat)
(get-model)

(declare-fun d!1261227 () Bool)

(assert (=> d!1261227 (= (list!17203 lt!1513295) (list!17205 (c!727096 lt!1513295)))))

(declare-fun bs!601638 () Bool)

(assert (= bs!601638 d!1261227))

(declare-fun m!4868599 () Bool)

(assert (=> bs!601638 m!4868599))

(assert (=> d!1261125 d!1261227))

(declare-fun d!1261229 () Bool)

(declare-fun e!2653517 () Bool)

(assert (=> d!1261229 e!2653517))

(declare-fun res!1755301 () Bool)

(assert (=> d!1261229 (=> (not res!1755301) (not e!2653517))))

(declare-fun lt!1513313 () Conc!14307)

(assert (=> d!1261229 (= res!1755301 (= (list!17205 lt!1513313) (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))))))

(assert (=> d!1261229 (= lt!1513313 (choose!26061 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))))))

(assert (=> d!1261229 (= (fromList!928 (Cons!47325 #x0064 (Cons!47325 #x0065 (Cons!47325 #x0066 Nil!47325)))) lt!1513313)))

(declare-fun b!4273939 () Bool)

(assert (=> b!4273939 (= e!2653517 (isBalanced!3853 lt!1513313))))

(assert (= (and d!1261229 res!1755301) b!4273939))

(declare-fun m!4868601 () Bool)

(assert (=> d!1261229 m!4868601))

(declare-fun m!4868603 () Bool)

(assert (=> d!1261229 m!4868603))

(declare-fun m!4868605 () Bool)

(assert (=> b!4273939 m!4868605))

(assert (=> d!1261125 d!1261229))

(assert (=> b!4273335 d!1260609))

(declare-fun d!1261231 () Bool)

(assert (=> d!1261231 (= (height!1884 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) (ite ((_ is Empty!14307) (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) 0 (ite ((_ is Leaf!22116) (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) 1 (cheight!14518 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))))

(assert (=> b!4273582 d!1261231))

(declare-fun d!1261233 () Bool)

(assert (=> d!1261233 (= (height!1884 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) (ite ((_ is Empty!14307) (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) 0 (ite ((_ is Leaf!22116) (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) 1 (cheight!14518 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))))

(assert (=> b!4273582 d!1261233))

(declare-fun d!1261235 () Bool)

(declare-fun c!727520 () Bool)

(assert (=> d!1261235 (= c!727520 ((_ is Nil!47325) lt!1513291))))

(declare-fun e!2653518 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261235 (= (content!7480 lt!1513291) e!2653518)))

(declare-fun b!4273940 () Bool)

(assert (=> b!4273940 (= e!2653518 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273941 () Bool)

(assert (=> b!4273941 (= e!2653518 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513291) true) (content!7480 (t!353862 lt!1513291))))))

(assert (= (and d!1261235 c!727520) b!4273940))

(assert (= (and d!1261235 (not c!727520)) b!4273941))

(declare-fun m!4868607 () Bool)

(assert (=> b!4273941 m!4868607))

(declare-fun m!4868609 () Bool)

(assert (=> b!4273941 m!4868609))

(assert (=> d!1261113 d!1261235))

(declare-fun d!1261237 () Bool)

(declare-fun c!727521 () Bool)

(assert (=> d!1261237 (= c!727521 ((_ is Nil!47325) (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))))))

(declare-fun e!2653519 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261237 (= (content!7480 (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))) e!2653519)))

(declare-fun b!4273942 () Bool)

(assert (=> b!4273942 (= e!2653519 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273943 () Bool)

(assert (=> b!4273943 (= e!2653519 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))) true) (content!7480 (t!353862 (list!17205 (left!35211 (right!35541 (c!727096 x!742222))))))))))

(assert (= (and d!1261237 c!727521) b!4273942))

(assert (= (and d!1261237 (not c!727521)) b!4273943))

(declare-fun m!4868611 () Bool)

(assert (=> b!4273943 m!4868611))

(declare-fun m!4868613 () Bool)

(assert (=> b!4273943 m!4868613))

(assert (=> d!1261113 d!1261237))

(declare-fun d!1261239 () Bool)

(declare-fun c!727522 () Bool)

(assert (=> d!1261239 (= c!727522 ((_ is Nil!47325) (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))))))

(declare-fun e!2653520 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261239 (= (content!7480 (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))) e!2653520)))

(declare-fun b!4273944 () Bool)

(assert (=> b!4273944 (= e!2653520 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273945 () Bool)

(assert (=> b!4273945 (= e!2653520 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))) true) (content!7480 (t!353862 (list!17205 (right!35541 (right!35541 (c!727096 x!742222))))))))))

(assert (= (and d!1261239 c!727522) b!4273944))

(assert (= (and d!1261239 (not c!727522)) b!4273945))

(declare-fun m!4868615 () Bool)

(assert (=> b!4273945 m!4868615))

(declare-fun m!4868617 () Bool)

(assert (=> b!4273945 m!4868617))

(assert (=> d!1261113 d!1261239))

(declare-fun d!1261241 () Bool)

(declare-fun res!1755302 () Bool)

(declare-fun e!2653521 () Bool)

(assert (=> d!1261241 (=> (not res!1755302) (not e!2653521))))

(assert (=> d!1261241 (= res!1755302 (= (csize!28844 (left!35211 (c!727096 x!742222))) (+ (size!34652 (left!35211 (left!35211 (c!727096 x!742222)))) (size!34652 (right!35541 (left!35211 (c!727096 x!742222)))))))))

(assert (=> d!1261241 (= (inv!62535 (left!35211 (c!727096 x!742222))) e!2653521)))

(declare-fun b!4273946 () Bool)

(declare-fun res!1755303 () Bool)

(assert (=> b!4273946 (=> (not res!1755303) (not e!2653521))))

(assert (=> b!4273946 (= res!1755303 (and (not (= (left!35211 (left!35211 (c!727096 x!742222))) Empty!14307)) (not (= (right!35541 (left!35211 (c!727096 x!742222))) Empty!14307))))))

(declare-fun b!4273947 () Bool)

(declare-fun res!1755304 () Bool)

(assert (=> b!4273947 (=> (not res!1755304) (not e!2653521))))

(assert (=> b!4273947 (= res!1755304 (= (cheight!14518 (left!35211 (c!727096 x!742222))) (+ (max!0 (height!1884 (left!35211 (left!35211 (c!727096 x!742222)))) (height!1884 (right!35541 (left!35211 (c!727096 x!742222))))) 1)))))

(declare-fun b!4273948 () Bool)

(assert (=> b!4273948 (= e!2653521 (<= 0 (cheight!14518 (left!35211 (c!727096 x!742222)))))))

(assert (= (and d!1261241 res!1755302) b!4273946))

(assert (= (and b!4273946 res!1755303) b!4273947))

(assert (= (and b!4273947 res!1755304) b!4273948))

(declare-fun m!4868619 () Bool)

(assert (=> d!1261241 m!4868619))

(declare-fun m!4868621 () Bool)

(assert (=> d!1261241 m!4868621))

(declare-fun m!4868623 () Bool)

(assert (=> b!4273947 m!4868623))

(declare-fun m!4868625 () Bool)

(assert (=> b!4273947 m!4868625))

(assert (=> b!4273947 m!4868623))

(assert (=> b!4273947 m!4868625))

(declare-fun m!4868627 () Bool)

(assert (=> b!4273947 m!4868627))

(assert (=> b!4273438 d!1261241))

(declare-fun b!4273949 () Bool)

(declare-fun res!1755310 () Bool)

(declare-fun e!2653523 () Bool)

(assert (=> b!4273949 (=> (not res!1755310) (not e!2653523))))

(assert (=> b!4273949 (= res!1755310 (<= (- (height!1884 (left!35211 res!1755233)) (height!1884 (right!35541 res!1755233))) 1))))

(declare-fun b!4273950 () Bool)

(declare-fun e!2653522 () Bool)

(assert (=> b!4273950 (= e!2653522 e!2653523)))

(declare-fun res!1755308 () Bool)

(assert (=> b!4273950 (=> (not res!1755308) (not e!2653523))))

(assert (=> b!4273950 (= res!1755308 (<= (- 1) (- (height!1884 (left!35211 res!1755233)) (height!1884 (right!35541 res!1755233)))))))

(declare-fun b!4273951 () Bool)

(declare-fun res!1755307 () Bool)

(assert (=> b!4273951 (=> (not res!1755307) (not e!2653523))))

(assert (=> b!4273951 (= res!1755307 (not (isEmpty!28005 (left!35211 res!1755233))))))

(declare-fun d!1261243 () Bool)

(declare-fun res!1755309 () Bool)

(assert (=> d!1261243 (=> res!1755309 e!2653522)))

(assert (=> d!1261243 (= res!1755309 (not ((_ is Node!14307) res!1755233)))))

(assert (=> d!1261243 (= (isBalanced!3853 res!1755233) e!2653522)))

(declare-fun b!4273952 () Bool)

(declare-fun res!1755305 () Bool)

(assert (=> b!4273952 (=> (not res!1755305) (not e!2653523))))

(assert (=> b!4273952 (= res!1755305 (isBalanced!3853 (left!35211 res!1755233)))))

(declare-fun b!4273953 () Bool)

(declare-fun res!1755306 () Bool)

(assert (=> b!4273953 (=> (not res!1755306) (not e!2653523))))

(assert (=> b!4273953 (= res!1755306 (isBalanced!3853 (right!35541 res!1755233)))))

(declare-fun b!4273954 () Bool)

(assert (=> b!4273954 (= e!2653523 (not (isEmpty!28005 (right!35541 res!1755233))))))

(assert (= (and d!1261243 (not res!1755309)) b!4273950))

(assert (= (and b!4273950 res!1755308) b!4273949))

(assert (= (and b!4273949 res!1755310) b!4273952))

(assert (= (and b!4273952 res!1755305) b!4273953))

(assert (= (and b!4273953 res!1755306) b!4273951))

(assert (= (and b!4273951 res!1755307) b!4273954))

(declare-fun m!4868629 () Bool)

(assert (=> b!4273950 m!4868629))

(declare-fun m!4868631 () Bool)

(assert (=> b!4273950 m!4868631))

(declare-fun m!4868633 () Bool)

(assert (=> b!4273952 m!4868633))

(assert (=> b!4273949 m!4868629))

(assert (=> b!4273949 m!4868631))

(declare-fun m!4868635 () Bool)

(assert (=> b!4273951 m!4868635))

(declare-fun m!4868637 () Bool)

(assert (=> b!4273954 m!4868637))

(declare-fun m!4868639 () Bool)

(assert (=> b!4273953 m!4868639))

(assert (=> b!4273618 d!1261243))

(declare-fun b!4273958 () Bool)

(declare-fun lt!1513314 () List!47449)

(declare-fun e!2653525 () Bool)

(assert (=> b!4273958 (= e!2653525 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513314 (t!353862 e!2653071))))))

(declare-fun b!4273956 () Bool)

(declare-fun e!2653524 () List!47449)

(assert (=> b!4273956 (= e!2653524 (Cons!47325 (h!52745 (t!353862 e!2653071)) (++!12082 (t!353862 (t!353862 e!2653071)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1261245 () Bool)

(assert (=> d!1261245 e!2653525))

(declare-fun res!1755311 () Bool)

(assert (=> d!1261245 (=> (not res!1755311) (not e!2653525))))

(assert (=> d!1261245 (= res!1755311 (= (content!7480 lt!1513314) ((_ map or) (content!7480 (t!353862 e!2653071)) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1261245 (= lt!1513314 e!2653524)))

(declare-fun c!727523 () Bool)

(assert (=> d!1261245 (= c!727523 ((_ is Nil!47325) (t!353862 e!2653071)))))

(assert (=> d!1261245 (= (++!12082 (t!353862 e!2653071) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513314)))

(declare-fun b!4273955 () Bool)

(assert (=> b!4273955 (= e!2653524 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273957 () Bool)

(declare-fun res!1755312 () Bool)

(assert (=> b!4273957 (=> (not res!1755312) (not e!2653525))))

(assert (=> b!4273957 (= res!1755312 (= (size!34649 lt!1513314) (+ (size!34649 (t!353862 e!2653071)) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1261245 c!727523) b!4273955))

(assert (= (and d!1261245 (not c!727523)) b!4273956))

(assert (= (and d!1261245 res!1755311) b!4273957))

(assert (= (and b!4273957 res!1755312) b!4273958))

(assert (=> b!4273956 m!4866859))

(declare-fun m!4868641 () Bool)

(assert (=> b!4273956 m!4868641))

(declare-fun m!4868643 () Bool)

(assert (=> d!1261245 m!4868643))

(assert (=> d!1261245 m!4868255))

(assert (=> d!1261245 m!4866859))

(assert (=> d!1261245 m!4867081))

(declare-fun m!4868645 () Bool)

(assert (=> b!4273957 m!4868645))

(declare-fun m!4868647 () Bool)

(assert (=> b!4273957 m!4868647))

(assert (=> b!4273957 m!4866859))

(assert (=> b!4273957 m!4867087))

(assert (=> b!4273327 d!1261245))

(declare-fun e!2653527 () Bool)

(declare-fun lt!1513315 () List!47449)

(declare-fun b!4273962 () Bool)

(assert (=> b!4273962 (= e!2653527 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513315 (t!353862 lt!1513146))))))

(declare-fun b!4273960 () Bool)

(declare-fun e!2653526 () List!47449)

(assert (=> b!4273960 (= e!2653526 (Cons!47325 (h!52745 (t!353862 lt!1513146)) (++!12082 (t!353862 (t!353862 lt!1513146)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1261247 () Bool)

(assert (=> d!1261247 e!2653527))

(declare-fun res!1755313 () Bool)

(assert (=> d!1261247 (=> (not res!1755313) (not e!2653527))))

(assert (=> d!1261247 (= res!1755313 (= (content!7480 lt!1513315) ((_ map or) (content!7480 (t!353862 lt!1513146)) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1261247 (= lt!1513315 e!2653526)))

(declare-fun c!727524 () Bool)

(assert (=> d!1261247 (= c!727524 ((_ is Nil!47325) (t!353862 lt!1513146)))))

(assert (=> d!1261247 (= (++!12082 (t!353862 lt!1513146) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513315)))

(declare-fun b!4273959 () Bool)

(assert (=> b!4273959 (= e!2653526 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4273961 () Bool)

(declare-fun res!1755314 () Bool)

(assert (=> b!4273961 (=> (not res!1755314) (not e!2653527))))

(assert (=> b!4273961 (= res!1755314 (= (size!34649 lt!1513315) (+ (size!34649 (t!353862 lt!1513146)) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1261247 c!727524) b!4273959))

(assert (= (and d!1261247 (not c!727524)) b!4273960))

(assert (= (and d!1261247 res!1755313) b!4273961))

(assert (= (and b!4273961 res!1755314) b!4273962))

(assert (=> b!4273960 m!4866859))

(declare-fun m!4868649 () Bool)

(assert (=> b!4273960 m!4868649))

(declare-fun m!4868651 () Bool)

(assert (=> d!1261247 m!4868651))

(assert (=> d!1261247 m!4867841))

(assert (=> d!1261247 m!4866859))

(assert (=> d!1261247 m!4867081))

(declare-fun m!4868653 () Bool)

(assert (=> b!4273961 m!4868653))

(assert (=> b!4273961 m!4868083))

(assert (=> b!4273961 m!4866859))

(assert (=> b!4273961 m!4867087))

(assert (=> b!4273599 d!1261247))

(declare-fun d!1261249 () Bool)

(declare-fun lt!1513316 () Int)

(assert (=> d!1261249 (>= lt!1513316 0)))

(declare-fun e!2653528 () Int)

(assert (=> d!1261249 (= lt!1513316 e!2653528)))

(declare-fun c!727525 () Bool)

(assert (=> d!1261249 (= c!727525 ((_ is Nil!47325) (innerList!14367 (xs!17613 (c!727096 x!742222)))))))

(assert (=> d!1261249 (= (size!34649 (innerList!14367 (xs!17613 (c!727096 x!742222)))) lt!1513316)))

(declare-fun b!4273963 () Bool)

(assert (=> b!4273963 (= e!2653528 0)))

(declare-fun b!4273964 () Bool)

(assert (=> b!4273964 (= e!2653528 (+ 1 (size!34649 (t!353862 (innerList!14367 (xs!17613 (c!727096 x!742222)))))))))

(assert (= (and d!1261249 c!727525) b!4273963))

(assert (= (and d!1261249 (not c!727525)) b!4273964))

(declare-fun m!4868655 () Bool)

(assert (=> b!4273964 m!4868655))

(assert (=> d!1260801 d!1261249))

(declare-fun d!1261251 () Bool)

(assert (=> d!1261251 (= (height!1884 (left!35211 (c!727096 x!742222))) (ite ((_ is Empty!14307) (left!35211 (c!727096 x!742222))) 0 (ite ((_ is Leaf!22116) (left!35211 (c!727096 x!742222))) 1 (cheight!14518 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4273419 d!1261251))

(declare-fun d!1261253 () Bool)

(assert (=> d!1261253 (= (height!1884 (right!35541 (c!727096 x!742222))) (ite ((_ is Empty!14307) (right!35541 (c!727096 x!742222))) 0 (ite ((_ is Leaf!22116) (right!35541 (c!727096 x!742222))) 1 (cheight!14518 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4273419 d!1261253))

(declare-fun b!4273968 () Bool)

(declare-fun e!2653530 () List!47449)

(assert (=> b!4273968 (= e!2653530 (++!12082 (list!17205 (left!35211 (c!727096 lt!1513256))) (list!17205 (right!35541 (c!727096 lt!1513256)))))))

(declare-fun d!1261255 () Bool)

(declare-fun c!727526 () Bool)

(assert (=> d!1261255 (= c!727526 ((_ is Empty!14307) (c!727096 lt!1513256)))))

(declare-fun e!2653529 () List!47449)

(assert (=> d!1261255 (= (list!17205 (c!727096 lt!1513256)) e!2653529)))

(declare-fun b!4273966 () Bool)

(assert (=> b!4273966 (= e!2653529 e!2653530)))

(declare-fun c!727527 () Bool)

(assert (=> b!4273966 (= c!727527 ((_ is Leaf!22116) (c!727096 lt!1513256)))))

(declare-fun b!4273967 () Bool)

(assert (=> b!4273967 (= e!2653530 (list!17207 (xs!17613 (c!727096 lt!1513256))))))

(declare-fun b!4273965 () Bool)

(assert (=> b!4273965 (= e!2653529 Nil!47325)))

(assert (= (and d!1261255 c!727526) b!4273965))

(assert (= (and d!1261255 (not c!727526)) b!4273966))

(assert (= (and b!4273966 c!727527) b!4273967))

(assert (= (and b!4273966 (not c!727527)) b!4273968))

(declare-fun m!4868657 () Bool)

(assert (=> b!4273968 m!4868657))

(declare-fun m!4868659 () Bool)

(assert (=> b!4273968 m!4868659))

(assert (=> b!4273968 m!4868657))

(assert (=> b!4273968 m!4868659))

(declare-fun m!4868661 () Bool)

(assert (=> b!4273968 m!4868661))

(declare-fun m!4868663 () Bool)

(assert (=> b!4273967 m!4868663))

(assert (=> d!1261051 d!1261255))

(declare-fun d!1261257 () Bool)

(declare-fun c!727528 () Bool)

(assert (=> d!1261257 (= c!727528 ((_ is Nil!47325) (t!353862 lt!1513146)))))

(declare-fun e!2653531 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261257 (= (content!7480 (t!353862 lt!1513146)) e!2653531)))

(declare-fun b!4273969 () Bool)

(assert (=> b!4273969 (= e!2653531 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273970 () Bool)

(assert (=> b!4273970 (= e!2653531 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513146)) true) (content!7480 (t!353862 (t!353862 lt!1513146)))))))

(assert (= (and d!1261257 c!727528) b!4273969))

(assert (= (and d!1261257 (not c!727528)) b!4273970))

(declare-fun m!4868665 () Bool)

(assert (=> b!4273970 m!4868665))

(declare-fun m!4868667 () Bool)

(assert (=> b!4273970 m!4868667))

(assert (=> b!4273579 d!1261257))

(declare-fun d!1261259 () Bool)

(declare-fun lt!1513317 () List!47449)

(assert (=> d!1261259 (= lt!1513317 (list!17207 (xs!17613 (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1261259 (= lt!1513317 (rec!35 (xs!17613 (right!35541 (c!727096 x!742222))) (size!34653 (xs!17613 (right!35541 (c!727096 x!742222)))) Nil!47325))))

(assert (=> d!1261259 (= (efficientList!545 (xs!17613 (right!35541 (c!727096 x!742222)))) lt!1513317)))

(declare-fun bs!601639 () Bool)

(assert (= bs!601639 d!1261259))

(assert (=> bs!601639 m!4867149))

(declare-fun m!4868669 () Bool)

(assert (=> bs!601639 m!4868669))

(assert (=> bs!601639 m!4868669))

(declare-fun m!4868671 () Bool)

(assert (=> bs!601639 m!4868671))

(assert (=> b!4273396 d!1261259))

(assert (=> b!4273351 d!1260653))

(declare-fun lt!1513318 () List!47449)

(declare-fun b!4273974 () Bool)

(declare-fun e!2653533 () Bool)

(assert (=> b!4273974 (= e!2653533 (or (not (= (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))) Nil!47325)) (= lt!1513318 e!2653224)))))

(declare-fun b!4273972 () Bool)

(declare-fun e!2653532 () List!47449)

(assert (=> b!4273972 (= e!2653532 (Cons!47325 (h!52745 e!2653224) (++!12082 (t!353862 e!2653224) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun d!1261261 () Bool)

(assert (=> d!1261261 e!2653533))

(declare-fun res!1755315 () Bool)

(assert (=> d!1261261 (=> (not res!1755315) (not e!2653533))))

(assert (=> d!1261261 (= res!1755315 (= (content!7480 lt!1513318) ((_ map or) (content!7480 e!2653224) (content!7480 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (=> d!1261261 (= lt!1513318 e!2653532)))

(declare-fun c!727529 () Bool)

(assert (=> d!1261261 (= c!727529 ((_ is Nil!47325) e!2653224))))

(assert (=> d!1261261 (= (++!12082 e!2653224 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513318)))

(declare-fun b!4273971 () Bool)

(assert (=> b!4273971 (= e!2653532 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4273973 () Bool)

(declare-fun res!1755316 () Bool)

(assert (=> b!4273973 (=> (not res!1755316) (not e!2653533))))

(assert (=> b!4273973 (= res!1755316 (= (size!34649 lt!1513318) (+ (size!34649 e!2653224) (size!34649 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261261 c!727529) b!4273971))

(assert (= (and d!1261261 (not c!727529)) b!4273972))

(assert (= (and d!1261261 res!1755315) b!4273973))

(assert (= (and b!4273973 res!1755316) b!4273974))

(assert (=> b!4273972 m!4866911))

(declare-fun m!4868673 () Bool)

(assert (=> b!4273972 m!4868673))

(declare-fun m!4868675 () Bool)

(assert (=> d!1261261 m!4868675))

(declare-fun m!4868677 () Bool)

(assert (=> d!1261261 m!4868677))

(assert (=> d!1261261 m!4866911))

(assert (=> d!1261261 m!4867821))

(declare-fun m!4868679 () Bool)

(assert (=> b!4273973 m!4868679))

(declare-fun m!4868681 () Bool)

(assert (=> b!4273973 m!4868681))

(assert (=> b!4273973 m!4866911))

(assert (=> b!4273973 m!4867825))

(assert (=> bm!294195 d!1261261))

(declare-fun d!1261263 () Bool)

(assert (=> d!1261263 (= (inv!62537 (xs!17613 res!1755233)) (<= (size!34649 (innerList!14367 (xs!17613 res!1755233))) 2147483647))))

(declare-fun bs!601640 () Bool)

(assert (= bs!601640 d!1261263))

(declare-fun m!4868683 () Bool)

(assert (=> bs!601640 m!4868683))

(assert (=> b!4273617 d!1261263))

(declare-fun d!1261265 () Bool)

(declare-fun c!727530 () Bool)

(assert (=> d!1261265 (= c!727530 ((_ is Nil!47325) (t!353862 lt!1513147)))))

(declare-fun e!2653534 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261265 (= (content!7480 (t!353862 lt!1513147)) e!2653534)))

(declare-fun b!4273975 () Bool)

(assert (=> b!4273975 (= e!2653534 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273976 () Bool)

(assert (=> b!4273976 (= e!2653534 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513147)) true) (content!7480 (t!353862 (t!353862 lt!1513147)))))))

(assert (= (and d!1261265 c!727530) b!4273975))

(assert (= (and d!1261265 (not c!727530)) b!4273976))

(declare-fun m!4868685 () Bool)

(assert (=> b!4273976 m!4868685))

(declare-fun m!4868687 () Bool)

(assert (=> b!4273976 m!4868687))

(assert (=> b!4273577 d!1261265))

(declare-fun d!1261267 () Bool)

(declare-fun c!727531 () Bool)

(assert (=> d!1261267 (= c!727531 ((_ is Nil!47325) lt!1513262))))

(declare-fun e!2653535 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261267 (= (content!7480 lt!1513262) e!2653535)))

(declare-fun b!4273977 () Bool)

(assert (=> b!4273977 (= e!2653535 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273978 () Bool)

(assert (=> b!4273978 (= e!2653535 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513262) true) (content!7480 (t!353862 lt!1513262))))))

(assert (= (and d!1261267 c!727531) b!4273977))

(assert (= (and d!1261267 (not c!727531)) b!4273978))

(declare-fun m!4868689 () Bool)

(assert (=> b!4273978 m!4868689))

(declare-fun m!4868691 () Bool)

(assert (=> b!4273978 m!4868691))

(assert (=> d!1260993 d!1261267))

(declare-fun d!1261269 () Bool)

(declare-fun c!727532 () Bool)

(assert (=> d!1261269 (= c!727532 ((_ is Nil!47325) (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653536 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261269 (= (content!7480 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653536)))

(declare-fun b!4273979 () Bool)

(assert (=> b!4273979 (= e!2653536 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273980 () Bool)

(assert (=> b!4273980 (= e!2653536 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) true) (content!7480 (t!353862 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261269 c!727532) b!4273979))

(assert (= (and d!1261269 (not c!727532)) b!4273980))

(declare-fun m!4868693 () Bool)

(assert (=> b!4273980 m!4868693))

(declare-fun m!4868695 () Bool)

(assert (=> b!4273980 m!4868695))

(assert (=> d!1260993 d!1261269))

(declare-fun d!1261271 () Bool)

(declare-fun c!727533 () Bool)

(assert (=> d!1261271 (= c!727533 ((_ is Nil!47325) (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653537 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261271 (= (content!7480 (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653537)))

(declare-fun b!4273981 () Bool)

(assert (=> b!4273981 (= e!2653537 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273982 () Bool)

(assert (=> b!4273982 (= e!2653537 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) true) (content!7480 (t!353862 (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261271 c!727533) b!4273981))

(assert (= (and d!1261271 (not c!727533)) b!4273982))

(declare-fun m!4868697 () Bool)

(assert (=> b!4273982 m!4868697))

(declare-fun m!4868699 () Bool)

(assert (=> b!4273982 m!4868699))

(assert (=> d!1260993 d!1261271))

(assert (=> d!1260789 d!1260677))

(declare-fun d!1261273 () Bool)

(declare-fun lt!1513345 () List!47449)

(assert (=> d!1261273 (= lt!1513345 (list!17207 (xs!17613 (c!727096 x!742222))))))

(declare-fun e!2653543 () List!47449)

(assert (=> d!1261273 (= lt!1513345 e!2653543)))

(declare-fun c!727536 () Bool)

(assert (=> d!1261273 (= c!727536 (<= (size!34653 (xs!17613 (c!727096 x!742222))) 0))))

(declare-fun e!2653542 () Bool)

(assert (=> d!1261273 e!2653542))

(declare-fun res!1755319 () Bool)

(assert (=> d!1261273 (=> (not res!1755319) (not e!2653542))))

(assert (=> d!1261273 (= res!1755319 (<= 0 (size!34653 (xs!17613 (c!727096 x!742222)))))))

(assert (=> d!1261273 (= (rec!35 (xs!17613 (c!727096 x!742222)) (size!34653 (xs!17613 (c!727096 x!742222))) Nil!47325) lt!1513345)))

(declare-fun b!4273989 () Bool)

(assert (=> b!4273989 (= e!2653542 (<= (size!34653 (xs!17613 (c!727096 x!742222))) (size!34653 (xs!17613 (c!727096 x!742222)))))))

(declare-fun b!4273990 () Bool)

(assert (=> b!4273990 (= e!2653543 Nil!47325)))

(declare-fun b!4273991 () Bool)

(declare-fun $colon$colon!640 (List!47449 (_ BitVec 16)) List!47449)

(declare-fun apply!10790 (IArray!28619 Int) (_ BitVec 16))

(assert (=> b!4273991 (= e!2653543 (rec!35 (xs!17613 (c!727096 x!742222)) (- (size!34653 (xs!17613 (c!727096 x!742222))) 1) ($colon$colon!640 Nil!47325 (apply!10790 (xs!17613 (c!727096 x!742222)) (- (size!34653 (xs!17613 (c!727096 x!742222))) 1)))))))

(declare-fun lt!1513337 () List!47449)

(assert (=> b!4273991 (= lt!1513337 (list!17207 (xs!17613 (c!727096 x!742222))))))

(declare-fun lt!1513338 () Int)

(assert (=> b!4273991 (= lt!1513338 (- (size!34653 (xs!17613 (c!727096 x!742222))) 1))))

(declare-fun lt!1513340 () Unit!66261)

(declare-fun lemmaDropApply!1242 (List!47449 Int) Unit!66261)

(assert (=> b!4273991 (= lt!1513340 (lemmaDropApply!1242 lt!1513337 lt!1513338))))

(declare-fun head!8998 (List!47449) (_ BitVec 16))

(declare-fun drop!2140 (List!47449 Int) List!47449)

(declare-fun apply!10791 (List!47449 Int) (_ BitVec 16))

(assert (=> b!4273991 (= (head!8998 (drop!2140 lt!1513337 lt!1513338)) (apply!10791 lt!1513337 lt!1513338))))

(declare-fun lt!1513342 () Unit!66261)

(assert (=> b!4273991 (= lt!1513342 lt!1513340)))

(declare-fun lt!1513339 () List!47449)

(assert (=> b!4273991 (= lt!1513339 (list!17207 (xs!17613 (c!727096 x!742222))))))

(declare-fun lt!1513343 () Int)

(assert (=> b!4273991 (= lt!1513343 (- (size!34653 (xs!17613 (c!727096 x!742222))) 1))))

(declare-fun lt!1513344 () Unit!66261)

(declare-fun lemmaDropTail!1126 (List!47449 Int) Unit!66261)

(assert (=> b!4273991 (= lt!1513344 (lemmaDropTail!1126 lt!1513339 lt!1513343))))

(declare-fun tail!6863 (List!47449) List!47449)

(assert (=> b!4273991 (= (tail!6863 (drop!2140 lt!1513339 lt!1513343)) (drop!2140 lt!1513339 (+ lt!1513343 1)))))

(declare-fun lt!1513341 () Unit!66261)

(assert (=> b!4273991 (= lt!1513341 lt!1513344)))

(assert (= (and d!1261273 res!1755319) b!4273989))

(assert (= (and d!1261273 c!727536) b!4273990))

(assert (= (and d!1261273 (not c!727536)) b!4273991))

(assert (=> d!1261273 m!4866839))

(assert (=> b!4273989 m!4867501))

(declare-fun m!4868701 () Bool)

(assert (=> b!4273991 m!4868701))

(declare-fun m!4868703 () Bool)

(assert (=> b!4273991 m!4868703))

(declare-fun m!4868705 () Bool)

(assert (=> b!4273991 m!4868705))

(declare-fun m!4868707 () Bool)

(assert (=> b!4273991 m!4868707))

(assert (=> b!4273991 m!4868701))

(declare-fun m!4868709 () Bool)

(assert (=> b!4273991 m!4868709))

(declare-fun m!4868711 () Bool)

(assert (=> b!4273991 m!4868711))

(declare-fun m!4868713 () Bool)

(assert (=> b!4273991 m!4868713))

(assert (=> b!4273991 m!4868711))

(declare-fun m!4868715 () Bool)

(assert (=> b!4273991 m!4868715))

(assert (=> b!4273991 m!4868703))

(declare-fun m!4868717 () Bool)

(assert (=> b!4273991 m!4868717))

(declare-fun m!4868719 () Bool)

(assert (=> b!4273991 m!4868719))

(assert (=> b!4273991 m!4866839))

(assert (=> b!4273991 m!4868705))

(declare-fun m!4868721 () Bool)

(assert (=> b!4273991 m!4868721))

(assert (=> d!1260789 d!1261273))

(declare-fun d!1261275 () Bool)

(declare-fun lt!1513348 () Int)

(assert (=> d!1261275 (= lt!1513348 (size!34649 (list!17207 (xs!17613 (c!727096 x!742222)))))))

(declare-fun choose!26062 (IArray!28619) Int)

(assert (=> d!1261275 (= lt!1513348 (choose!26062 (xs!17613 (c!727096 x!742222))))))

(assert (=> d!1261275 (= (size!34653 (xs!17613 (c!727096 x!742222))) lt!1513348)))

(declare-fun bs!601641 () Bool)

(assert (= bs!601641 d!1261275))

(assert (=> bs!601641 m!4866839))

(assert (=> bs!601641 m!4866839))

(assert (=> bs!601641 m!4867369))

(declare-fun m!4868723 () Bool)

(assert (=> bs!601641 m!4868723))

(assert (=> d!1260789 d!1261275))

(declare-fun d!1261277 () Bool)

(declare-fun c!727537 () Bool)

(assert (=> d!1261277 (= c!727537 ((_ is Nil!47325) (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))))))

(declare-fun e!2653544 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261277 (= (content!7480 (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))) e!2653544)))

(declare-fun b!4273992 () Bool)

(assert (=> b!4273992 (= e!2653544 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4273993 () Bool)

(assert (=> b!4273993 (= e!2653544 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))) true) (content!7480 (t!353862 (t!353862 (t!353862 (list!17205 (c!727096 x!742222))))))))))

(assert (= (and d!1261277 c!727537) b!4273992))

(assert (= (and d!1261277 (not c!727537)) b!4273993))

(declare-fun m!4868725 () Bool)

(assert (=> b!4273993 m!4868725))

(declare-fun m!4868727 () Bool)

(assert (=> b!4273993 m!4868727))

(assert (=> b!4273548 d!1261277))

(assert (=> b!4273334 d!1260651))

(declare-fun d!1261279 () Bool)

(assert (=> d!1261279 (= (seqFromList!5880 (value!249896 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (fromListB!2670 (value!249896 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun bs!601642 () Bool)

(assert (= bs!601642 d!1261279))

(declare-fun m!4868729 () Bool)

(assert (=> bs!601642 m!4868729))

(assert (=> b!4273343 d!1261279))

(declare-fun d!1261281 () Bool)

(declare-fun res!1755320 () Bool)

(declare-fun e!2653545 () Bool)

(assert (=> d!1261281 (=> (not res!1755320) (not e!2653545))))

(assert (=> d!1261281 (= res!1755320 (<= (size!34649 (list!17207 (xs!17613 (right!35541 (c!727096 x!742222))))) 512))))

(assert (=> d!1261281 (= (inv!62536 (right!35541 (c!727096 x!742222))) e!2653545)))

(declare-fun b!4273994 () Bool)

(declare-fun res!1755321 () Bool)

(assert (=> b!4273994 (=> (not res!1755321) (not e!2653545))))

(assert (=> b!4273994 (= res!1755321 (= (csize!28845 (right!35541 (c!727096 x!742222))) (size!34649 (list!17207 (xs!17613 (right!35541 (c!727096 x!742222)))))))))

(declare-fun b!4273995 () Bool)

(assert (=> b!4273995 (= e!2653545 (and (> (csize!28845 (right!35541 (c!727096 x!742222))) 0) (<= (csize!28845 (right!35541 (c!727096 x!742222))) 512)))))

(assert (= (and d!1261281 res!1755320) b!4273994))

(assert (= (and b!4273994 res!1755321) b!4273995))

(assert (=> d!1261281 m!4867149))

(assert (=> d!1261281 m!4867149))

(declare-fun m!4868731 () Bool)

(assert (=> d!1261281 m!4868731))

(assert (=> b!4273994 m!4867149))

(assert (=> b!4273994 m!4867149))

(assert (=> b!4273994 m!4868731))

(assert (=> b!4273443 d!1261281))

(assert (=> b!4273350 d!1260643))

(declare-fun d!1261283 () Bool)

(declare-fun c!727538 () Bool)

(assert (=> d!1261283 (= c!727538 ((_ is Node!14307) (left!35211 res!1755233)))))

(declare-fun e!2653546 () Bool)

(assert (=> d!1261283 (= (inv!62530 (left!35211 res!1755233)) e!2653546)))

(declare-fun b!4273996 () Bool)

(assert (=> b!4273996 (= e!2653546 (inv!62535 (left!35211 res!1755233)))))

(declare-fun b!4273997 () Bool)

(declare-fun e!2653547 () Bool)

(assert (=> b!4273997 (= e!2653546 e!2653547)))

(declare-fun res!1755322 () Bool)

(assert (=> b!4273997 (= res!1755322 (not ((_ is Leaf!22116) (left!35211 res!1755233))))))

(assert (=> b!4273997 (=> res!1755322 e!2653547)))

(declare-fun b!4273998 () Bool)

(assert (=> b!4273998 (= e!2653547 (inv!62536 (left!35211 res!1755233)))))

(assert (= (and d!1261283 c!727538) b!4273996))

(assert (= (and d!1261283 (not c!727538)) b!4273997))

(assert (= (and b!4273997 (not res!1755322)) b!4273998))

(declare-fun m!4868733 () Bool)

(assert (=> b!4273996 m!4868733))

(declare-fun m!4868735 () Bool)

(assert (=> b!4273998 m!4868735))

(assert (=> b!4273616 d!1261283))

(declare-fun d!1261285 () Bool)

(declare-fun c!727539 () Bool)

(assert (=> d!1261285 (= c!727539 ((_ is Node!14307) (right!35541 res!1755233)))))

(declare-fun e!2653548 () Bool)

(assert (=> d!1261285 (= (inv!62530 (right!35541 res!1755233)) e!2653548)))

(declare-fun b!4273999 () Bool)

(assert (=> b!4273999 (= e!2653548 (inv!62535 (right!35541 res!1755233)))))

(declare-fun b!4274000 () Bool)

(declare-fun e!2653549 () Bool)

(assert (=> b!4274000 (= e!2653548 e!2653549)))

(declare-fun res!1755323 () Bool)

(assert (=> b!4274000 (= res!1755323 (not ((_ is Leaf!22116) (right!35541 res!1755233))))))

(assert (=> b!4274000 (=> res!1755323 e!2653549)))

(declare-fun b!4274001 () Bool)

(assert (=> b!4274001 (= e!2653549 (inv!62536 (right!35541 res!1755233)))))

(assert (= (and d!1261285 c!727539) b!4273999))

(assert (= (and d!1261285 (not c!727539)) b!4274000))

(assert (= (and b!4274000 (not res!1755323)) b!4274001))

(declare-fun m!4868737 () Bool)

(assert (=> b!4273999 m!4868737))

(declare-fun m!4868739 () Bool)

(assert (=> b!4274001 m!4868739))

(assert (=> b!4273616 d!1261285))

(declare-fun d!1261287 () Bool)

(declare-fun lt!1513349 () Int)

(assert (=> d!1261287 (>= lt!1513349 0)))

(declare-fun e!2653550 () Int)

(assert (=> d!1261287 (= lt!1513349 e!2653550)))

(declare-fun c!727540 () Bool)

(assert (=> d!1261287 (= c!727540 ((_ is Nil!47325) (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (=> d!1261287 (= (size!34649 (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) lt!1513349)))

(declare-fun b!4274002 () Bool)

(assert (=> b!4274002 (= e!2653550 0)))

(declare-fun b!4274003 () Bool)

(assert (=> b!4274003 (= e!2653550 (+ 1 (size!34649 (t!353862 (t!353862 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261287 c!727540) b!4274002))

(assert (= (and d!1261287 (not c!727540)) b!4274003))

(declare-fun m!4868741 () Bool)

(assert (=> b!4274003 m!4868741))

(assert (=> b!4273542 d!1261287))

(declare-fun d!1261289 () Bool)

(assert (=> d!1261289 (= (inv!62537 (xs!17613 (right!35541 (c!727096 x!742222)))) (<= (size!34649 (innerList!14367 (xs!17613 (right!35541 (c!727096 x!742222))))) 2147483647))))

(declare-fun bs!601643 () Bool)

(assert (= bs!601643 d!1261289))

(declare-fun m!4868743 () Bool)

(assert (=> bs!601643 m!4868743))

(assert (=> b!4273448 d!1261289))

(declare-fun e!2653552 () Bool)

(declare-fun b!4274007 () Bool)

(declare-fun lt!1513350 () List!47449)

(assert (=> b!4274007 (= e!2653552 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513350 e!2653231)))))

(declare-fun b!4274005 () Bool)

(declare-fun e!2653551 () List!47449)

(assert (=> b!4274005 (= e!2653551 (Cons!47325 (h!52745 e!2653231) (++!12082 (t!353862 e!2653231) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1261291 () Bool)

(assert (=> d!1261291 e!2653552))

(declare-fun res!1755324 () Bool)

(assert (=> d!1261291 (=> (not res!1755324) (not e!2653552))))

(assert (=> d!1261291 (= res!1755324 (= (content!7480 lt!1513350) ((_ map or) (content!7480 e!2653231) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1261291 (= lt!1513350 e!2653551)))

(declare-fun c!727541 () Bool)

(assert (=> d!1261291 (= c!727541 ((_ is Nil!47325) e!2653231))))

(assert (=> d!1261291 (= (++!12082 e!2653231 (efficientList$default$2!189 (c!727096 x!742222))) lt!1513350)))

(declare-fun b!4274004 () Bool)

(assert (=> b!4274004 (= e!2653551 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4274006 () Bool)

(declare-fun res!1755325 () Bool)

(assert (=> b!4274006 (=> (not res!1755325) (not e!2653552))))

(assert (=> b!4274006 (= res!1755325 (= (size!34649 lt!1513350) (+ (size!34649 e!2653231) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1261291 c!727541) b!4274004))

(assert (= (and d!1261291 (not c!727541)) b!4274005))

(assert (= (and d!1261291 res!1755324) b!4274006))

(assert (= (and b!4274006 res!1755325) b!4274007))

(assert (=> b!4274005 m!4866859))

(declare-fun m!4868745 () Bool)

(assert (=> b!4274005 m!4868745))

(declare-fun m!4868747 () Bool)

(assert (=> d!1261291 m!4868747))

(declare-fun m!4868749 () Bool)

(assert (=> d!1261291 m!4868749))

(assert (=> d!1261291 m!4866859))

(assert (=> d!1261291 m!4867081))

(declare-fun m!4868751 () Bool)

(assert (=> b!4274006 m!4868751))

(declare-fun m!4868753 () Bool)

(assert (=> b!4274006 m!4868753))

(assert (=> b!4274006 m!4866859))

(assert (=> b!4274006 m!4867087))

(assert (=> bm!294196 d!1261291))

(declare-fun d!1261293 () Bool)

(declare-fun e!2653553 () Bool)

(assert (=> d!1261293 e!2653553))

(declare-fun res!1755326 () Bool)

(assert (=> d!1261293 (=> (not res!1755326) (not e!2653553))))

(declare-fun lt!1513351 () BalanceConc!28124)

(assert (=> d!1261293 (= res!1755326 (= (list!17203 lt!1513351) (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))))))

(assert (=> d!1261293 (= lt!1513351 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))))))

(assert (=> d!1261293 (= (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325))))) lt!1513351)))

(declare-fun b!4274008 () Bool)

(assert (=> b!4274008 (= e!2653553 (isBalanced!3853 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x006C (Cons!47325 #x0073 (Cons!47325 #x0065 Nil!47325)))))))))

(assert (= (and d!1261293 res!1755326) b!4274008))

(declare-fun m!4868755 () Bool)

(assert (=> d!1261293 m!4868755))

(declare-fun m!4868757 () Bool)

(assert (=> d!1261293 m!4868757))

(assert (=> b!4274008 m!4868757))

(assert (=> b!4274008 m!4868757))

(declare-fun m!4868759 () Bool)

(assert (=> b!4274008 m!4868759))

(assert (=> d!1260909 d!1261293))

(declare-fun d!1261295 () Bool)

(declare-fun c!727542 () Bool)

(assert (=> d!1261295 (= c!727542 ((_ is Nil!47325) lt!1513276))))

(declare-fun e!2653554 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261295 (= (content!7480 lt!1513276) e!2653554)))

(declare-fun b!4274009 () Bool)

(assert (=> b!4274009 (= e!2653554 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274010 () Bool)

(assert (=> b!4274010 (= e!2653554 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513276) true) (content!7480 (t!353862 lt!1513276))))))

(assert (= (and d!1261295 c!727542) b!4274009))

(assert (= (and d!1261295 (not c!727542)) b!4274010))

(declare-fun m!4868761 () Bool)

(assert (=> b!4274010 m!4868761))

(declare-fun m!4868763 () Bool)

(assert (=> b!4274010 m!4868763))

(assert (=> d!1261041 d!1261295))

(assert (=> d!1261041 d!1261277))

(assert (=> d!1261041 d!1260683))

(declare-fun d!1261297 () Bool)

(declare-fun lt!1513352 () Int)

(assert (=> d!1261297 (>= lt!1513352 0)))

(declare-fun e!2653555 () Int)

(assert (=> d!1261297 (= lt!1513352 e!2653555)))

(declare-fun c!727543 () Bool)

(assert (=> d!1261297 (= c!727543 ((_ is Nil!47325) (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (=> d!1261297 (= (size!34649 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) lt!1513352)))

(declare-fun b!4274011 () Bool)

(assert (=> b!4274011 (= e!2653555 0)))

(declare-fun b!4274012 () Bool)

(assert (=> b!4274012 (= e!2653555 (+ 1 (size!34649 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261297 c!727543) b!4274011))

(assert (= (and d!1261297 (not c!727543)) b!4274012))

(declare-fun m!4868765 () Bool)

(assert (=> b!4274012 m!4868765))

(assert (=> b!4273540 d!1261297))

(assert (=> b!4273349 d!1260645))

(declare-fun b!4274013 () Bool)

(declare-fun res!1755332 () Bool)

(declare-fun e!2653557 () Bool)

(assert (=> b!4274013 (=> (not res!1755332) (not e!2653557))))

(assert (=> b!4274013 (= res!1755332 (<= (- (height!1884 (left!35211 lt!1513248)) (height!1884 (right!35541 lt!1513248))) 1))))

(declare-fun b!4274014 () Bool)

(declare-fun e!2653556 () Bool)

(assert (=> b!4274014 (= e!2653556 e!2653557)))

(declare-fun res!1755330 () Bool)

(assert (=> b!4274014 (=> (not res!1755330) (not e!2653557))))

(assert (=> b!4274014 (= res!1755330 (<= (- 1) (- (height!1884 (left!35211 lt!1513248)) (height!1884 (right!35541 lt!1513248)))))))

(declare-fun b!4274015 () Bool)

(declare-fun res!1755329 () Bool)

(assert (=> b!4274015 (=> (not res!1755329) (not e!2653557))))

(assert (=> b!4274015 (= res!1755329 (not (isEmpty!28005 (left!35211 lt!1513248))))))

(declare-fun d!1261299 () Bool)

(declare-fun res!1755331 () Bool)

(assert (=> d!1261299 (=> res!1755331 e!2653556)))

(assert (=> d!1261299 (= res!1755331 (not ((_ is Node!14307) lt!1513248)))))

(assert (=> d!1261299 (= (isBalanced!3853 lt!1513248) e!2653556)))

(declare-fun b!4274016 () Bool)

(declare-fun res!1755327 () Bool)

(assert (=> b!4274016 (=> (not res!1755327) (not e!2653557))))

(assert (=> b!4274016 (= res!1755327 (isBalanced!3853 (left!35211 lt!1513248)))))

(declare-fun b!4274017 () Bool)

(declare-fun res!1755328 () Bool)

(assert (=> b!4274017 (=> (not res!1755328) (not e!2653557))))

(assert (=> b!4274017 (= res!1755328 (isBalanced!3853 (right!35541 lt!1513248)))))

(declare-fun b!4274018 () Bool)

(assert (=> b!4274018 (= e!2653557 (not (isEmpty!28005 (right!35541 lt!1513248))))))

(assert (= (and d!1261299 (not res!1755331)) b!4274014))

(assert (= (and b!4274014 res!1755330) b!4274013))

(assert (= (and b!4274013 res!1755332) b!4274016))

(assert (= (and b!4274016 res!1755327) b!4274017))

(assert (= (and b!4274017 res!1755328) b!4274015))

(assert (= (and b!4274015 res!1755329) b!4274018))

(declare-fun m!4868767 () Bool)

(assert (=> b!4274014 m!4868767))

(declare-fun m!4868769 () Bool)

(assert (=> b!4274014 m!4868769))

(declare-fun m!4868771 () Bool)

(assert (=> b!4274016 m!4868771))

(assert (=> b!4274013 m!4868767))

(assert (=> b!4274013 m!4868769))

(declare-fun m!4868773 () Bool)

(assert (=> b!4274015 m!4868773))

(declare-fun m!4868775 () Bool)

(assert (=> b!4274018 m!4868775))

(declare-fun m!4868777 () Bool)

(assert (=> b!4274017 m!4868777))

(assert (=> b!4273549 d!1261299))

(declare-fun d!1261301 () Bool)

(declare-fun lt!1513353 () Int)

(assert (=> d!1261301 (>= lt!1513353 0)))

(declare-fun e!2653558 () Int)

(assert (=> d!1261301 (= lt!1513353 e!2653558)))

(declare-fun c!727544 () Bool)

(assert (=> d!1261301 (= c!727544 ((_ is Nil!47325) (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))))))

(assert (=> d!1261301 (= (size!34649 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) lt!1513353)))

(declare-fun b!4274019 () Bool)

(assert (=> b!4274019 (= e!2653558 0)))

(declare-fun b!4274020 () Bool)

(assert (=> b!4274020 (= e!2653558 (+ 1 (size!34649 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))))))))

(assert (= (and d!1261301 c!727544) b!4274019))

(assert (= (and d!1261301 (not c!727544)) b!4274020))

(declare-fun m!4868779 () Bool)

(assert (=> b!4274020 m!4868779))

(assert (=> b!4273557 d!1261301))

(assert (=> b!4273332 d!1260649))

(declare-fun d!1261303 () Bool)

(declare-fun c!727545 () Bool)

(assert (=> d!1261303 (= c!727545 ((_ is Node!14307) (left!35211 (right!35541 (c!727096 x!742222)))))))

(declare-fun e!2653559 () Bool)

(assert (=> d!1261303 (= (inv!62530 (left!35211 (right!35541 (c!727096 x!742222)))) e!2653559)))

(declare-fun b!4274021 () Bool)

(assert (=> b!4274021 (= e!2653559 (inv!62535 (left!35211 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4274022 () Bool)

(declare-fun e!2653560 () Bool)

(assert (=> b!4274022 (= e!2653559 e!2653560)))

(declare-fun res!1755333 () Bool)

(assert (=> b!4274022 (= res!1755333 (not ((_ is Leaf!22116) (left!35211 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4274022 (=> res!1755333 e!2653560)))

(declare-fun b!4274023 () Bool)

(assert (=> b!4274023 (= e!2653560 (inv!62536 (left!35211 (right!35541 (c!727096 x!742222)))))))

(assert (= (and d!1261303 c!727545) b!4274021))

(assert (= (and d!1261303 (not c!727545)) b!4274022))

(assert (= (and b!4274022 (not res!1755333)) b!4274023))

(declare-fun m!4868781 () Bool)

(assert (=> b!4274021 m!4868781))

(declare-fun m!4868783 () Bool)

(assert (=> b!4274023 m!4868783))

(assert (=> b!4273447 d!1261303))

(declare-fun d!1261305 () Bool)

(declare-fun c!727546 () Bool)

(assert (=> d!1261305 (= c!727546 ((_ is Node!14307) (right!35541 (right!35541 (c!727096 x!742222)))))))

(declare-fun e!2653561 () Bool)

(assert (=> d!1261305 (= (inv!62530 (right!35541 (right!35541 (c!727096 x!742222)))) e!2653561)))

(declare-fun b!4274024 () Bool)

(assert (=> b!4274024 (= e!2653561 (inv!62535 (right!35541 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4274025 () Bool)

(declare-fun e!2653562 () Bool)

(assert (=> b!4274025 (= e!2653561 e!2653562)))

(declare-fun res!1755334 () Bool)

(assert (=> b!4274025 (= res!1755334 (not ((_ is Leaf!22116) (right!35541 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4274025 (=> res!1755334 e!2653562)))

(declare-fun b!4274026 () Bool)

(assert (=> b!4274026 (= e!2653562 (inv!62536 (right!35541 (right!35541 (c!727096 x!742222)))))))

(assert (= (and d!1261305 c!727546) b!4274024))

(assert (= (and d!1261305 (not c!727546)) b!4274025))

(assert (= (and b!4274025 (not res!1755334)) b!4274026))

(declare-fun m!4868785 () Bool)

(assert (=> b!4274024 m!4868785))

(declare-fun m!4868787 () Bool)

(assert (=> b!4274026 m!4868787))

(assert (=> b!4273447 d!1261305))

(declare-fun d!1261307 () Bool)

(declare-fun c!727547 () Bool)

(assert (=> d!1261307 (= c!727547 ((_ is Nil!47325) (t!353862 lt!1513200)))))

(declare-fun e!2653563 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261307 (= (content!7480 (t!353862 lt!1513200)) e!2653563)))

(declare-fun b!4274027 () Bool)

(assert (=> b!4274027 (= e!2653563 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274028 () Bool)

(assert (=> b!4274028 (= e!2653563 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513200)) true) (content!7480 (t!353862 (t!353862 lt!1513200)))))))

(assert (= (and d!1261307 c!727547) b!4274027))

(assert (= (and d!1261307 (not c!727547)) b!4274028))

(declare-fun m!4868789 () Bool)

(assert (=> b!4274028 m!4868789))

(declare-fun m!4868791 () Bool)

(assert (=> b!4274028 m!4868791))

(assert (=> b!4273575 d!1261307))

(declare-fun b!4274029 () Bool)

(declare-fun e!2653564 () List!47449)

(declare-fun call!294204 () List!47449)

(assert (=> b!4274029 (= e!2653564 call!294204)))

(declare-fun b!4274030 () Bool)

(declare-fun e!2653566 () List!47449)

(declare-fun lt!1513354 () List!47449)

(assert (=> b!4274030 (= e!2653566 lt!1513354)))

(declare-fun b!4274031 () Bool)

(declare-fun lt!1513358 () Unit!66261)

(declare-fun lt!1513357 () Unit!66261)

(assert (=> b!4274031 (= lt!1513358 lt!1513357)))

(declare-fun lt!1513355 () List!47449)

(assert (=> b!4274031 (= (++!12082 (++!12082 lt!1513355 lt!1513354) (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))) (++!12082 lt!1513355 call!294204))))

(assert (=> b!4274031 (= lt!1513357 (lemmaConcatAssociativity!2719 lt!1513355 lt!1513354 (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> b!4274031 (= lt!1513354 (list!17205 (right!35541 (left!35211 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4274031 (= lt!1513355 (list!17205 (left!35211 (left!35211 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4274031 (= e!2653564 (efficientList!543 (left!35211 (left!35211 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (left!35211 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(declare-fun bm!294199 () Bool)

(declare-fun c!727549 () Bool)

(declare-fun c!727550 () Bool)

(assert (=> bm!294199 (= c!727549 c!727550)))

(assert (=> bm!294199 (= call!294204 (++!12082 e!2653566 (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun b!4274033 () Bool)

(declare-fun e!2653565 () List!47449)

(assert (=> b!4274033 (= e!2653565 e!2653564)))

(assert (=> b!4274033 (= c!727550 ((_ is Leaf!22116) (left!35211 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4274034 () Bool)

(assert (=> b!4274034 (= e!2653566 (efficientList!545 (xs!17613 (left!35211 (left!35211 (c!727096 x!742222))))))))

(declare-fun b!4274032 () Bool)

(assert (=> b!4274032 (= e!2653565 (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1261309 () Bool)

(declare-fun lt!1513356 () List!47449)

(assert (=> d!1261309 (= lt!1513356 (++!12082 (list!17205 (left!35211 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1261309 (= lt!1513356 e!2653565)))

(declare-fun c!727548 () Bool)

(assert (=> d!1261309 (= c!727548 ((_ is Empty!14307) (left!35211 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1261309 (= (efficientList!543 (left!35211 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))) lt!1513356)))

(assert (= (and d!1261309 c!727548) b!4274032))

(assert (= (and d!1261309 (not c!727548)) b!4274033))

(assert (= (and b!4274033 c!727550) b!4274029))

(assert (= (and b!4274033 (not c!727550)) b!4274031))

(assert (= (or b!4274029 b!4274031) bm!294199))

(assert (= (and bm!294199 c!727549) b!4274034))

(assert (= (and bm!294199 (not c!727549)) b!4274030))

(assert (=> b!4274031 m!4868005))

(declare-fun m!4868793 () Bool)

(assert (=> b!4274031 m!4868793))

(declare-fun m!4868795 () Bool)

(assert (=> b!4274031 m!4868795))

(assert (=> b!4274031 m!4867425))

(assert (=> b!4274031 m!4868793))

(declare-fun m!4868797 () Bool)

(assert (=> b!4274031 m!4868797))

(assert (=> b!4274031 m!4867425))

(declare-fun m!4868799 () Bool)

(assert (=> b!4274031 m!4868799))

(assert (=> b!4274031 m!4868797))

(assert (=> b!4274031 m!4867425))

(declare-fun m!4868801 () Bool)

(assert (=> b!4274031 m!4868801))

(assert (=> b!4274031 m!4868003))

(declare-fun m!4868803 () Bool)

(assert (=> b!4274031 m!4868803))

(assert (=> bm!294199 m!4867425))

(declare-fun m!4868805 () Bool)

(assert (=> bm!294199 m!4868805))

(declare-fun m!4868807 () Bool)

(assert (=> b!4274034 m!4868807))

(assert (=> d!1261309 m!4867135))

(assert (=> d!1261309 m!4867135))

(assert (=> d!1261309 m!4867425))

(declare-fun m!4868809 () Bool)

(assert (=> d!1261309 m!4868809))

(assert (=> b!4273379 d!1261309))

(declare-fun d!1261311 () Bool)

(assert (=> d!1261311 (= (++!12082 (++!12082 lt!1513202 lt!1513201) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) (++!12082 lt!1513202 (++!12082 lt!1513201 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun lt!1513359 () Unit!66261)

(assert (=> d!1261311 (= lt!1513359 (choose!26060 lt!1513202 lt!1513201 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1261311 (= (lemmaConcatAssociativity!2719 lt!1513202 lt!1513201 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513359)))

(declare-fun bs!601644 () Bool)

(assert (= bs!601644 d!1261311))

(assert (=> bs!601644 m!4867429))

(assert (=> bs!601644 m!4866911))

(assert (=> bs!601644 m!4867431))

(assert (=> bs!601644 m!4866911))

(declare-fun m!4868811 () Bool)

(assert (=> bs!601644 m!4868811))

(assert (=> bs!601644 m!4866911))

(declare-fun m!4868813 () Bool)

(assert (=> bs!601644 m!4868813))

(assert (=> bs!601644 m!4868813))

(declare-fun m!4868815 () Bool)

(assert (=> bs!601644 m!4868815))

(assert (=> bs!601644 m!4867429))

(assert (=> b!4273379 d!1261311))

(declare-fun b!4274038 () Bool)

(declare-fun lt!1513360 () List!47449)

(declare-fun e!2653568 () Bool)

(assert (=> b!4274038 (= e!2653568 (or (not (= (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))) Nil!47325)) (= lt!1513360 (++!12082 lt!1513202 lt!1513201))))))

(declare-fun b!4274036 () Bool)

(declare-fun e!2653567 () List!47449)

(assert (=> b!4274036 (= e!2653567 (Cons!47325 (h!52745 (++!12082 lt!1513202 lt!1513201)) (++!12082 (t!353862 (++!12082 lt!1513202 lt!1513201)) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun d!1261313 () Bool)

(assert (=> d!1261313 e!2653568))

(declare-fun res!1755335 () Bool)

(assert (=> d!1261313 (=> (not res!1755335) (not e!2653568))))

(assert (=> d!1261313 (= res!1755335 (= (content!7480 lt!1513360) ((_ map or) (content!7480 (++!12082 lt!1513202 lt!1513201)) (content!7480 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (=> d!1261313 (= lt!1513360 e!2653567)))

(declare-fun c!727551 () Bool)

(assert (=> d!1261313 (= c!727551 ((_ is Nil!47325) (++!12082 lt!1513202 lt!1513201)))))

(assert (=> d!1261313 (= (++!12082 (++!12082 lt!1513202 lt!1513201) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513360)))

(declare-fun b!4274035 () Bool)

(assert (=> b!4274035 (= e!2653567 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4274037 () Bool)

(declare-fun res!1755336 () Bool)

(assert (=> b!4274037 (=> (not res!1755336) (not e!2653568))))

(assert (=> b!4274037 (= res!1755336 (= (size!34649 lt!1513360) (+ (size!34649 (++!12082 lt!1513202 lt!1513201)) (size!34649 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261313 c!727551) b!4274035))

(assert (= (and d!1261313 (not c!727551)) b!4274036))

(assert (= (and d!1261313 res!1755335) b!4274037))

(assert (= (and b!4274037 res!1755336) b!4274038))

(assert (=> b!4274036 m!4866911))

(declare-fun m!4868817 () Bool)

(assert (=> b!4274036 m!4868817))

(declare-fun m!4868819 () Bool)

(assert (=> d!1261313 m!4868819))

(assert (=> d!1261313 m!4867429))

(declare-fun m!4868821 () Bool)

(assert (=> d!1261313 m!4868821))

(assert (=> d!1261313 m!4866911))

(assert (=> d!1261313 m!4867821))

(declare-fun m!4868823 () Bool)

(assert (=> b!4274037 m!4868823))

(assert (=> b!4274037 m!4867429))

(declare-fun m!4868825 () Bool)

(assert (=> b!4274037 m!4868825))

(assert (=> b!4274037 m!4866911))

(assert (=> b!4274037 m!4867825))

(assert (=> b!4273379 d!1261313))

(assert (=> b!4273379 d!1261007))

(declare-fun b!4274042 () Bool)

(declare-fun e!2653570 () Bool)

(declare-fun lt!1513361 () List!47449)

(assert (=> b!4274042 (= e!2653570 (or (not (= lt!1513201 Nil!47325)) (= lt!1513361 lt!1513202)))))

(declare-fun b!4274040 () Bool)

(declare-fun e!2653569 () List!47449)

(assert (=> b!4274040 (= e!2653569 (Cons!47325 (h!52745 lt!1513202) (++!12082 (t!353862 lt!1513202) lt!1513201)))))

(declare-fun d!1261315 () Bool)

(assert (=> d!1261315 e!2653570))

(declare-fun res!1755337 () Bool)

(assert (=> d!1261315 (=> (not res!1755337) (not e!2653570))))

(assert (=> d!1261315 (= res!1755337 (= (content!7480 lt!1513361) ((_ map or) (content!7480 lt!1513202) (content!7480 lt!1513201))))))

(assert (=> d!1261315 (= lt!1513361 e!2653569)))

(declare-fun c!727552 () Bool)

(assert (=> d!1261315 (= c!727552 ((_ is Nil!47325) lt!1513202))))

(assert (=> d!1261315 (= (++!12082 lt!1513202 lt!1513201) lt!1513361)))

(declare-fun b!4274039 () Bool)

(assert (=> b!4274039 (= e!2653569 lt!1513201)))

(declare-fun b!4274041 () Bool)

(declare-fun res!1755338 () Bool)

(assert (=> b!4274041 (=> (not res!1755338) (not e!2653570))))

(assert (=> b!4274041 (= res!1755338 (= (size!34649 lt!1513361) (+ (size!34649 lt!1513202) (size!34649 lt!1513201))))))

(assert (= (and d!1261315 c!727552) b!4274039))

(assert (= (and d!1261315 (not c!727552)) b!4274040))

(assert (= (and d!1261315 res!1755337) b!4274041))

(assert (= (and b!4274041 res!1755338) b!4274042))

(declare-fun m!4868827 () Bool)

(assert (=> b!4274040 m!4868827))

(declare-fun m!4868829 () Bool)

(assert (=> d!1261315 m!4868829))

(declare-fun m!4868831 () Bool)

(assert (=> d!1261315 m!4868831))

(declare-fun m!4868833 () Bool)

(assert (=> d!1261315 m!4868833))

(declare-fun m!4868835 () Bool)

(assert (=> b!4274041 m!4868835))

(declare-fun m!4868837 () Bool)

(assert (=> b!4274041 m!4868837))

(declare-fun m!4868839 () Bool)

(assert (=> b!4274041 m!4868839))

(assert (=> b!4273379 d!1261315))

(declare-fun b!4274043 () Bool)

(declare-fun e!2653571 () List!47449)

(declare-fun call!294205 () List!47449)

(assert (=> b!4274043 (= e!2653571 call!294205)))

(declare-fun b!4274044 () Bool)

(declare-fun e!2653573 () List!47449)

(declare-fun lt!1513362 () List!47449)

(assert (=> b!4274044 (= e!2653573 lt!1513362)))

(declare-fun b!4274045 () Bool)

(declare-fun lt!1513366 () Unit!66261)

(declare-fun lt!1513365 () Unit!66261)

(assert (=> b!4274045 (= lt!1513366 lt!1513365)))

(declare-fun lt!1513363 () List!47449)

(assert (=> b!4274045 (= (++!12082 (++!12082 lt!1513363 lt!1513362) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) (++!12082 lt!1513363 call!294205))))

(assert (=> b!4274045 (= lt!1513365 (lemmaConcatAssociativity!2719 lt!1513363 lt!1513362 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> b!4274045 (= lt!1513362 (list!17205 (right!35541 (right!35541 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4274045 (= lt!1513363 (list!17205 (left!35211 (right!35541 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4274045 (= e!2653571 (efficientList!543 (left!35211 (right!35541 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (right!35541 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun bm!294200 () Bool)

(declare-fun c!727554 () Bool)

(declare-fun c!727555 () Bool)

(assert (=> bm!294200 (= c!727554 c!727555)))

(assert (=> bm!294200 (= call!294205 (++!12082 e!2653573 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun b!4274047 () Bool)

(declare-fun e!2653572 () List!47449)

(assert (=> b!4274047 (= e!2653572 e!2653571)))

(assert (=> b!4274047 (= c!727555 ((_ is Leaf!22116) (right!35541 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4274048 () Bool)

(assert (=> b!4274048 (= e!2653573 (efficientList!545 (xs!17613 (right!35541 (left!35211 (c!727096 x!742222))))))))

(declare-fun b!4274046 () Bool)

(assert (=> b!4274046 (= e!2653572 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun d!1261317 () Bool)

(declare-fun lt!1513364 () List!47449)

(assert (=> d!1261317 (= lt!1513364 (++!12082 (list!17205 (right!35541 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1261317 (= lt!1513364 e!2653572)))

(declare-fun c!727553 () Bool)

(assert (=> d!1261317 (= c!727553 ((_ is Empty!14307) (right!35541 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1261317 (= (efficientList!543 (right!35541 (left!35211 (c!727096 x!742222))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513364)))

(assert (= (and d!1261317 c!727553) b!4274046))

(assert (= (and d!1261317 (not c!727553)) b!4274047))

(assert (= (and b!4274047 c!727555) b!4274043))

(assert (= (and b!4274047 (not c!727555)) b!4274045))

(assert (= (or b!4274043 b!4274045) bm!294200))

(assert (= (and bm!294200 c!727554) b!4274048))

(assert (= (and bm!294200 (not c!727554)) b!4274044))

(assert (=> b!4274045 m!4868013))

(declare-fun m!4868841 () Bool)

(assert (=> b!4274045 m!4868841))

(declare-fun m!4868843 () Bool)

(assert (=> b!4274045 m!4868843))

(assert (=> b!4274045 m!4866911))

(assert (=> b!4274045 m!4868841))

(declare-fun m!4868845 () Bool)

(assert (=> b!4274045 m!4868845))

(assert (=> b!4274045 m!4866911))

(declare-fun m!4868847 () Bool)

(assert (=> b!4274045 m!4868847))

(assert (=> b!4274045 m!4868845))

(assert (=> b!4274045 m!4866911))

(declare-fun m!4868849 () Bool)

(assert (=> b!4274045 m!4868849))

(assert (=> b!4274045 m!4868011))

(declare-fun m!4868851 () Bool)

(assert (=> b!4274045 m!4868851))

(assert (=> bm!294200 m!4866911))

(declare-fun m!4868853 () Bool)

(assert (=> bm!294200 m!4868853))

(declare-fun m!4868855 () Bool)

(assert (=> b!4274048 m!4868855))

(assert (=> d!1261317 m!4867137))

(assert (=> d!1261317 m!4867137))

(assert (=> d!1261317 m!4866911))

(declare-fun m!4868857 () Bool)

(assert (=> d!1261317 m!4868857))

(assert (=> b!4273379 d!1261317))

(assert (=> b!4273379 d!1261009))

(declare-fun lt!1513367 () List!47449)

(declare-fun e!2653575 () Bool)

(declare-fun b!4274052 () Bool)

(assert (=> b!4274052 (= e!2653575 (or (not (= call!294200 Nil!47325)) (= lt!1513367 lt!1513202)))))

(declare-fun b!4274050 () Bool)

(declare-fun e!2653574 () List!47449)

(assert (=> b!4274050 (= e!2653574 (Cons!47325 (h!52745 lt!1513202) (++!12082 (t!353862 lt!1513202) call!294200)))))

(declare-fun d!1261319 () Bool)

(assert (=> d!1261319 e!2653575))

(declare-fun res!1755339 () Bool)

(assert (=> d!1261319 (=> (not res!1755339) (not e!2653575))))

(assert (=> d!1261319 (= res!1755339 (= (content!7480 lt!1513367) ((_ map or) (content!7480 lt!1513202) (content!7480 call!294200))))))

(assert (=> d!1261319 (= lt!1513367 e!2653574)))

(declare-fun c!727556 () Bool)

(assert (=> d!1261319 (= c!727556 ((_ is Nil!47325) lt!1513202))))

(assert (=> d!1261319 (= (++!12082 lt!1513202 call!294200) lt!1513367)))

(declare-fun b!4274049 () Bool)

(assert (=> b!4274049 (= e!2653574 call!294200)))

(declare-fun b!4274051 () Bool)

(declare-fun res!1755340 () Bool)

(assert (=> b!4274051 (=> (not res!1755340) (not e!2653575))))

(assert (=> b!4274051 (= res!1755340 (= (size!34649 lt!1513367) (+ (size!34649 lt!1513202) (size!34649 call!294200))))))

(assert (= (and d!1261319 c!727556) b!4274049))

(assert (= (and d!1261319 (not c!727556)) b!4274050))

(assert (= (and d!1261319 res!1755339) b!4274051))

(assert (= (and b!4274051 res!1755340) b!4274052))

(declare-fun m!4868859 () Bool)

(assert (=> b!4274050 m!4868859))

(declare-fun m!4868861 () Bool)

(assert (=> d!1261319 m!4868861))

(assert (=> d!1261319 m!4868831))

(declare-fun m!4868863 () Bool)

(assert (=> d!1261319 m!4868863))

(declare-fun m!4868865 () Bool)

(assert (=> b!4274051 m!4868865))

(assert (=> b!4274051 m!4868837))

(declare-fun m!4868867 () Bool)

(assert (=> b!4274051 m!4868867))

(assert (=> b!4273379 d!1261319))

(declare-fun d!1261321 () Bool)

(declare-fun c!727557 () Bool)

(assert (=> d!1261321 (= c!727557 ((_ is Nil!47325) (t!353862 (++!12082 lt!1513147 lt!1513146))))))

(declare-fun e!2653576 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261321 (= (content!7480 (t!353862 (++!12082 lt!1513147 lt!1513146))) e!2653576)))

(declare-fun b!4274053 () Bool)

(assert (=> b!4274053 (= e!2653576 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274054 () Bool)

(assert (=> b!4274054 (= e!2653576 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (++!12082 lt!1513147 lt!1513146))) true) (content!7480 (t!353862 (t!353862 (++!12082 lt!1513147 lt!1513146))))))))

(assert (= (and d!1261321 c!727557) b!4274053))

(assert (= (and d!1261321 (not c!727557)) b!4274054))

(declare-fun m!4868869 () Bool)

(assert (=> b!4274054 m!4868869))

(declare-fun m!4868871 () Bool)

(assert (=> b!4274054 m!4868871))

(assert (=> b!4273546 d!1261321))

(declare-fun d!1261323 () Bool)

(declare-fun lt!1513368 () Int)

(assert (=> d!1261323 (>= lt!1513368 0)))

(declare-fun e!2653577 () Int)

(assert (=> d!1261323 (= lt!1513368 e!2653577)))

(declare-fun c!727558 () Bool)

(assert (=> d!1261323 (= c!727558 ((_ is Nil!47325) lt!1513249))))

(assert (=> d!1261323 (= (size!34649 lt!1513249) lt!1513368)))

(declare-fun b!4274055 () Bool)

(assert (=> b!4274055 (= e!2653577 0)))

(declare-fun b!4274056 () Bool)

(assert (=> b!4274056 (= e!2653577 (+ 1 (size!34649 (t!353862 lt!1513249))))))

(assert (= (and d!1261323 c!727558) b!4274055))

(assert (= (and d!1261323 (not c!727558)) b!4274056))

(declare-fun m!4868873 () Bool)

(assert (=> b!4274056 m!4868873))

(assert (=> b!4273552 d!1261323))

(assert (=> b!4273552 d!1261301))

(assert (=> b!4273552 d!1260929))

(declare-fun d!1261325 () Bool)

(declare-fun lt!1513371 () Bool)

(declare-fun isEmpty!28006 (List!47449) Bool)

(assert (=> d!1261325 (= lt!1513371 (isEmpty!28006 (list!17205 (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1261325 (= lt!1513371 (= (size!34652 (right!35541 (c!727096 x!742222))) 0))))

(assert (=> d!1261325 (= (isEmpty!28005 (right!35541 (c!727096 x!742222))) lt!1513371)))

(declare-fun bs!601645 () Bool)

(assert (= bs!601645 d!1261325))

(assert (=> bs!601645 m!4866835))

(assert (=> bs!601645 m!4866835))

(declare-fun m!4868875 () Bool)

(assert (=> bs!601645 m!4868875))

(assert (=> bs!601645 m!4867403))

(assert (=> b!4273424 d!1261325))

(declare-fun b!4274060 () Bool)

(declare-fun e!2653579 () List!47449)

(assert (=> b!4274060 (= e!2653579 (++!12082 (list!17205 (left!35211 lt!1513277)) (list!17205 (right!35541 lt!1513277))))))

(declare-fun d!1261327 () Bool)

(declare-fun c!727559 () Bool)

(assert (=> d!1261327 (= c!727559 ((_ is Empty!14307) lt!1513277))))

(declare-fun e!2653578 () List!47449)

(assert (=> d!1261327 (= (list!17205 lt!1513277) e!2653578)))

(declare-fun b!4274058 () Bool)

(assert (=> b!4274058 (= e!2653578 e!2653579)))

(declare-fun c!727560 () Bool)

(assert (=> b!4274058 (= c!727560 ((_ is Leaf!22116) lt!1513277))))

(declare-fun b!4274059 () Bool)

(assert (=> b!4274059 (= e!2653579 (list!17207 (xs!17613 lt!1513277)))))

(declare-fun b!4274057 () Bool)

(assert (=> b!4274057 (= e!2653578 Nil!47325)))

(assert (= (and d!1261327 c!727559) b!4274057))

(assert (= (and d!1261327 (not c!727559)) b!4274058))

(assert (= (and b!4274058 c!727560) b!4274059))

(assert (= (and b!4274058 (not c!727560)) b!4274060))

(declare-fun m!4868877 () Bool)

(assert (=> b!4274060 m!4868877))

(declare-fun m!4868879 () Bool)

(assert (=> b!4274060 m!4868879))

(assert (=> b!4274060 m!4868877))

(assert (=> b!4274060 m!4868879))

(declare-fun m!4868881 () Bool)

(assert (=> b!4274060 m!4868881))

(declare-fun m!4868883 () Bool)

(assert (=> b!4274059 m!4868883))

(assert (=> d!1261053 d!1261327))

(declare-fun d!1261329 () Bool)

(declare-fun e!2653580 () Bool)

(assert (=> d!1261329 e!2653580))

(declare-fun res!1755342 () Bool)

(assert (=> d!1261329 (=> (not res!1755342) (not e!2653580))))

(declare-fun res!1755341 () Conc!14307)

(assert (=> d!1261329 (= res!1755342 (= (list!17205 res!1755341) (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))

(declare-fun e!2653581 () Bool)

(assert (=> d!1261329 (and (inv!62530 res!1755341) e!2653581)))

(assert (=> d!1261329 (= (choose!26061 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))) res!1755341)))

(declare-fun tp!1308362 () Bool)

(declare-fun tp!1308361 () Bool)

(declare-fun b!4274061 () Bool)

(assert (=> b!4274061 (= e!2653581 (and (inv!62530 (left!35211 res!1755341)) tp!1308362 (inv!62530 (right!35541 res!1755341)) tp!1308361))))

(declare-fun b!4274062 () Bool)

(assert (=> b!4274062 (= e!2653581 (inv!62537 (xs!17613 res!1755341)))))

(declare-fun b!4274063 () Bool)

(assert (=> b!4274063 (= e!2653580 (isBalanced!3853 res!1755341))))

(assert (= (and d!1261329 ((_ is Node!14307) res!1755341)) b!4274061))

(assert (= (and d!1261329 ((_ is Leaf!22116) res!1755341)) b!4274062))

(assert (= (and d!1261329 res!1755342) b!4274063))

(declare-fun m!4868885 () Bool)

(assert (=> d!1261329 m!4868885))

(declare-fun m!4868887 () Bool)

(assert (=> d!1261329 m!4868887))

(declare-fun m!4868889 () Bool)

(assert (=> b!4274061 m!4868889))

(declare-fun m!4868891 () Bool)

(assert (=> b!4274061 m!4868891))

(declare-fun m!4868893 () Bool)

(assert (=> b!4274062 m!4868893))

(declare-fun m!4868895 () Bool)

(assert (=> b!4274063 m!4868895))

(assert (=> d!1261053 d!1261329))

(assert (=> b!4273348 d!1260641))

(declare-fun d!1261331 () Bool)

(declare-fun res!1755343 () Bool)

(declare-fun e!2653583 () Bool)

(assert (=> d!1261331 (=> (not res!1755343) (not e!2653583))))

(assert (=> d!1261331 (= res!1755343 (= (csize!28844 (right!35541 (c!727096 x!742222))) (+ (size!34652 (left!35211 (right!35541 (c!727096 x!742222)))) (size!34652 (right!35541 (right!35541 (c!727096 x!742222)))))))))

(assert (=> d!1261331 (= (inv!62535 (right!35541 (c!727096 x!742222))) e!2653583)))

(declare-fun b!4274064 () Bool)

(declare-fun res!1755344 () Bool)

(assert (=> b!4274064 (=> (not res!1755344) (not e!2653583))))

(assert (=> b!4274064 (= res!1755344 (and (not (= (left!35211 (right!35541 (c!727096 x!742222))) Empty!14307)) (not (= (right!35541 (right!35541 (c!727096 x!742222))) Empty!14307))))))

(declare-fun b!4274065 () Bool)

(declare-fun res!1755345 () Bool)

(assert (=> b!4274065 (=> (not res!1755345) (not e!2653583))))

(assert (=> b!4274065 (= res!1755345 (= (cheight!14518 (right!35541 (c!727096 x!742222))) (+ (max!0 (height!1884 (left!35211 (right!35541 (c!727096 x!742222)))) (height!1884 (right!35541 (right!35541 (c!727096 x!742222))))) 1)))))

(declare-fun b!4274066 () Bool)

(assert (=> b!4274066 (= e!2653583 (<= 0 (cheight!14518 (right!35541 (c!727096 x!742222)))))))

(assert (= (and d!1261331 res!1755343) b!4274064))

(assert (= (and b!4274064 res!1755344) b!4274065))

(assert (= (and b!4274065 res!1755345) b!4274066))

(declare-fun m!4868897 () Bool)

(assert (=> d!1261331 m!4868897))

(declare-fun m!4868899 () Bool)

(assert (=> d!1261331 m!4868899))

(declare-fun m!4868901 () Bool)

(assert (=> b!4274065 m!4868901))

(declare-fun m!4868903 () Bool)

(assert (=> b!4274065 m!4868903))

(assert (=> b!4274065 m!4868901))

(assert (=> b!4274065 m!4868903))

(declare-fun m!4868905 () Bool)

(assert (=> b!4274065 m!4868905))

(assert (=> b!4273441 d!1261331))

(declare-fun d!1261333 () Bool)

(declare-fun lt!1513372 () Int)

(assert (=> d!1261333 (>= lt!1513372 0)))

(declare-fun e!2653584 () Int)

(assert (=> d!1261333 (= lt!1513372 e!2653584)))

(declare-fun c!727561 () Bool)

(assert (=> d!1261333 (= c!727561 ((_ is Nil!47325) (list!17207 (xs!17613 (c!727096 x!742222)))))))

(assert (=> d!1261333 (= (size!34649 (list!17207 (xs!17613 (c!727096 x!742222)))) lt!1513372)))

(declare-fun b!4274067 () Bool)

(assert (=> b!4274067 (= e!2653584 0)))

(declare-fun b!4274068 () Bool)

(assert (=> b!4274068 (= e!2653584 (+ 1 (size!34649 (t!353862 (list!17207 (xs!17613 (c!727096 x!742222)))))))))

(assert (= (and d!1261333 c!727561) b!4274067))

(assert (= (and d!1261333 (not c!727561)) b!4274068))

(declare-fun m!4868907 () Bool)

(assert (=> b!4274068 m!4868907))

(assert (=> b!4273324 d!1261333))

(assert (=> b!4273324 d!1260677))

(assert (=> b!4273356 d!1260613))

(declare-fun d!1261335 () Bool)

(declare-fun c!727562 () Bool)

(assert (=> d!1261335 (= c!727562 ((_ is Nil!47325) lt!1513261))))

(declare-fun e!2653585 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261335 (= (content!7480 lt!1513261) e!2653585)))

(declare-fun b!4274069 () Bool)

(assert (=> b!4274069 (= e!2653585 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274070 () Bool)

(assert (=> b!4274070 (= e!2653585 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513261) true) (content!7480 (t!353862 lt!1513261))))))

(assert (= (and d!1261335 c!727562) b!4274069))

(assert (= (and d!1261335 (not c!727562)) b!4274070))

(declare-fun m!4868909 () Bool)

(assert (=> b!4274070 m!4868909))

(declare-fun m!4868911 () Bool)

(assert (=> b!4274070 m!4868911))

(assert (=> d!1260991 d!1261335))

(assert (=> d!1260991 d!1261321))

(assert (=> d!1260991 d!1260683))

(declare-fun d!1261337 () Bool)

(declare-fun lt!1513373 () Int)

(assert (=> d!1261337 (>= lt!1513373 0)))

(declare-fun e!2653586 () Int)

(assert (=> d!1261337 (= lt!1513373 e!2653586)))

(declare-fun c!727563 () Bool)

(assert (=> d!1261337 (= c!727563 ((_ is Nil!47325) (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))))))

(assert (=> d!1261337 (= (size!34649 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))) lt!1513373)))

(declare-fun b!4274071 () Bool)

(assert (=> b!4274071 (= e!2653586 0)))

(declare-fun b!4274072 () Bool)

(assert (=> b!4274072 (= e!2653586 (+ 1 (size!34649 (t!353862 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))))))))

(assert (= (and d!1261337 c!727563) b!4274071))

(assert (= (and d!1261337 (not c!727563)) b!4274072))

(declare-fun m!4868913 () Bool)

(assert (=> b!4274072 m!4868913))

(assert (=> b!4273559 d!1261337))

(declare-fun d!1261339 () Bool)

(declare-fun c!727564 () Bool)

(assert (=> d!1261339 (= c!727564 ((_ is Nil!47325) (t!353862 lt!1513224)))))

(declare-fun e!2653587 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261339 (= (content!7480 (t!353862 lt!1513224)) e!2653587)))

(declare-fun b!4274073 () Bool)

(assert (=> b!4274073 (= e!2653587 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274074 () Bool)

(assert (=> b!4274074 (= e!2653587 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513224)) true) (content!7480 (t!353862 (t!353862 lt!1513224)))))))

(assert (= (and d!1261339 c!727564) b!4274073))

(assert (= (and d!1261339 (not c!727564)) b!4274074))

(declare-fun m!4868915 () Bool)

(assert (=> b!4274074 m!4868915))

(declare-fun m!4868917 () Bool)

(assert (=> b!4274074 m!4868917))

(assert (=> b!4273573 d!1261339))

(declare-fun d!1261341 () Bool)

(declare-fun c!727565 () Bool)

(assert (=> d!1261341 (= c!727565 ((_ is Nil!47325) lt!1513278))))

(declare-fun e!2653588 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261341 (= (content!7480 lt!1513278) e!2653588)))

(declare-fun b!4274075 () Bool)

(assert (=> b!4274075 (= e!2653588 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274076 () Bool)

(assert (=> b!4274076 (= e!2653588 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513278) true) (content!7480 (t!353862 lt!1513278))))))

(assert (= (and d!1261341 c!727565) b!4274075))

(assert (= (and d!1261341 (not c!727565)) b!4274076))

(declare-fun m!4868919 () Bool)

(assert (=> b!4274076 m!4868919))

(declare-fun m!4868921 () Bool)

(assert (=> b!4274076 m!4868921))

(assert (=> d!1261059 d!1261341))

(assert (=> d!1261059 d!1261265))

(assert (=> d!1261059 d!1260949))

(declare-fun e!2653590 () Bool)

(declare-fun b!4274080 () Bool)

(declare-fun lt!1513374 () List!47449)

(assert (=> b!4274080 (= e!2653590 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513374 (++!12082 lt!1513212 lt!1513211))))))

(declare-fun b!4274078 () Bool)

(declare-fun e!2653589 () List!47449)

(assert (=> b!4274078 (= e!2653589 (Cons!47325 (h!52745 (++!12082 lt!1513212 lt!1513211)) (++!12082 (t!353862 (++!12082 lt!1513212 lt!1513211)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1261343 () Bool)

(assert (=> d!1261343 e!2653590))

(declare-fun res!1755346 () Bool)

(assert (=> d!1261343 (=> (not res!1755346) (not e!2653590))))

(assert (=> d!1261343 (= res!1755346 (= (content!7480 lt!1513374) ((_ map or) (content!7480 (++!12082 lt!1513212 lt!1513211)) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1261343 (= lt!1513374 e!2653589)))

(declare-fun c!727566 () Bool)

(assert (=> d!1261343 (= c!727566 ((_ is Nil!47325) (++!12082 lt!1513212 lt!1513211)))))

(assert (=> d!1261343 (= (++!12082 (++!12082 lt!1513212 lt!1513211) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513374)))

(declare-fun b!4274077 () Bool)

(assert (=> b!4274077 (= e!2653589 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4274079 () Bool)

(declare-fun res!1755347 () Bool)

(assert (=> b!4274079 (=> (not res!1755347) (not e!2653590))))

(assert (=> b!4274079 (= res!1755347 (= (size!34649 lt!1513374) (+ (size!34649 (++!12082 lt!1513212 lt!1513211)) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1261343 c!727566) b!4274077))

(assert (= (and d!1261343 (not c!727566)) b!4274078))

(assert (= (and d!1261343 res!1755346) b!4274079))

(assert (= (and b!4274079 res!1755347) b!4274080))

(assert (=> b!4274078 m!4866859))

(declare-fun m!4868923 () Bool)

(assert (=> b!4274078 m!4868923))

(declare-fun m!4868925 () Bool)

(assert (=> d!1261343 m!4868925))

(assert (=> d!1261343 m!4867473))

(declare-fun m!4868927 () Bool)

(assert (=> d!1261343 m!4868927))

(assert (=> d!1261343 m!4866859))

(assert (=> d!1261343 m!4867081))

(declare-fun m!4868929 () Bool)

(assert (=> b!4274079 m!4868929))

(assert (=> b!4274079 m!4867473))

(declare-fun m!4868931 () Bool)

(assert (=> b!4274079 m!4868931))

(assert (=> b!4274079 m!4866859))

(assert (=> b!4274079 m!4867087))

(assert (=> b!4273393 d!1261343))

(assert (=> b!4273393 d!1261123))

(declare-fun b!4274081 () Bool)

(declare-fun e!2653591 () List!47449)

(declare-fun call!294206 () List!47449)

(assert (=> b!4274081 (= e!2653591 call!294206)))

(declare-fun b!4274082 () Bool)

(declare-fun e!2653593 () List!47449)

(declare-fun lt!1513375 () List!47449)

(assert (=> b!4274082 (= e!2653593 lt!1513375)))

(declare-fun b!4274083 () Bool)

(declare-fun lt!1513379 () Unit!66261)

(declare-fun lt!1513378 () Unit!66261)

(assert (=> b!4274083 (= lt!1513379 lt!1513378)))

(declare-fun lt!1513376 () List!47449)

(assert (=> b!4274083 (= (++!12082 (++!12082 lt!1513376 lt!1513375) (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222)))) (++!12082 lt!1513376 call!294206))))

(assert (=> b!4274083 (= lt!1513378 (lemmaConcatAssociativity!2719 lt!1513376 lt!1513375 (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> b!4274083 (= lt!1513375 (list!17205 (right!35541 (left!35211 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4274083 (= lt!1513376 (list!17205 (left!35211 (left!35211 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4274083 (= e!2653591 (efficientList!543 (left!35211 (left!35211 (right!35541 (c!727096 x!742222)))) (efficientList!543 (right!35541 (left!35211 (right!35541 (c!727096 x!742222)))) (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun bm!294201 () Bool)

(declare-fun c!727568 () Bool)

(declare-fun c!727569 () Bool)

(assert (=> bm!294201 (= c!727568 c!727569)))

(assert (=> bm!294201 (= call!294206 (++!12082 e!2653593 (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun b!4274085 () Bool)

(declare-fun e!2653592 () List!47449)

(assert (=> b!4274085 (= e!2653592 e!2653591)))

(assert (=> b!4274085 (= c!727569 ((_ is Leaf!22116) (left!35211 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4274086 () Bool)

(assert (=> b!4274086 (= e!2653593 (efficientList!545 (xs!17613 (left!35211 (right!35541 (c!727096 x!742222))))))))

(declare-fun b!4274084 () Bool)

(assert (=> b!4274084 (= e!2653592 (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun d!1261345 () Bool)

(declare-fun lt!1513377 () List!47449)

(assert (=> d!1261345 (= lt!1513377 (++!12082 (list!17205 (left!35211 (right!35541 (c!727096 x!742222)))) (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1261345 (= lt!1513377 e!2653592)))

(declare-fun c!727567 () Bool)

(assert (=> d!1261345 (= c!727567 ((_ is Empty!14307) (left!35211 (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1261345 (= (efficientList!543 (left!35211 (right!35541 (c!727096 x!742222))) (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513377)))

(assert (= (and d!1261345 c!727567) b!4274084))

(assert (= (and d!1261345 (not c!727567)) b!4274085))

(assert (= (and b!4274085 c!727569) b!4274081))

(assert (= (and b!4274085 (not c!727569)) b!4274083))

(assert (= (or b!4274081 b!4274083) bm!294201))

(assert (= (and bm!294201 c!727568) b!4274086))

(assert (= (and bm!294201 (not c!727568)) b!4274082))

(assert (=> b!4274083 m!4868285))

(declare-fun m!4868933 () Bool)

(assert (=> b!4274083 m!4868933))

(declare-fun m!4868935 () Bool)

(assert (=> b!4274083 m!4868935))

(assert (=> b!4274083 m!4867469))

(assert (=> b!4274083 m!4868933))

(declare-fun m!4868937 () Bool)

(assert (=> b!4274083 m!4868937))

(assert (=> b!4274083 m!4867469))

(declare-fun m!4868939 () Bool)

(assert (=> b!4274083 m!4868939))

(assert (=> b!4274083 m!4868937))

(assert (=> b!4274083 m!4867469))

(declare-fun m!4868941 () Bool)

(assert (=> b!4274083 m!4868941))

(assert (=> b!4274083 m!4868283))

(declare-fun m!4868943 () Bool)

(assert (=> b!4274083 m!4868943))

(assert (=> bm!294201 m!4867469))

(declare-fun m!4868945 () Bool)

(assert (=> bm!294201 m!4868945))

(declare-fun m!4868947 () Bool)

(assert (=> b!4274086 m!4868947))

(assert (=> d!1261345 m!4867143))

(assert (=> d!1261345 m!4867143))

(assert (=> d!1261345 m!4867469))

(declare-fun m!4868949 () Bool)

(assert (=> d!1261345 m!4868949))

(assert (=> b!4273393 d!1261345))

(assert (=> b!4273393 d!1261117))

(declare-fun b!4274087 () Bool)

(declare-fun e!2653594 () List!47449)

(declare-fun call!294207 () List!47449)

(assert (=> b!4274087 (= e!2653594 call!294207)))

(declare-fun b!4274088 () Bool)

(declare-fun e!2653596 () List!47449)

(declare-fun lt!1513380 () List!47449)

(assert (=> b!4274088 (= e!2653596 lt!1513380)))

(declare-fun b!4274089 () Bool)

(declare-fun lt!1513384 () Unit!66261)

(declare-fun lt!1513383 () Unit!66261)

(assert (=> b!4274089 (= lt!1513384 lt!1513383)))

(declare-fun lt!1513381 () List!47449)

(assert (=> b!4274089 (= (++!12082 (++!12082 lt!1513381 lt!1513380) (efficientList$default$2!189 (c!727096 x!742222))) (++!12082 lt!1513381 call!294207))))

(assert (=> b!4274089 (= lt!1513383 (lemmaConcatAssociativity!2719 lt!1513381 lt!1513380 (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> b!4274089 (= lt!1513380 (list!17205 (right!35541 (right!35541 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4274089 (= lt!1513381 (list!17205 (left!35211 (right!35541 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4274089 (= e!2653594 (efficientList!543 (left!35211 (right!35541 (right!35541 (c!727096 x!742222)))) (efficientList!543 (right!35541 (right!35541 (right!35541 (c!727096 x!742222)))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun bm!294202 () Bool)

(declare-fun c!727571 () Bool)

(declare-fun c!727572 () Bool)

(assert (=> bm!294202 (= c!727571 c!727572)))

(assert (=> bm!294202 (= call!294207 (++!12082 e!2653596 (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4274091 () Bool)

(declare-fun e!2653595 () List!47449)

(assert (=> b!4274091 (= e!2653595 e!2653594)))

(assert (=> b!4274091 (= c!727572 ((_ is Leaf!22116) (right!35541 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4274092 () Bool)

(assert (=> b!4274092 (= e!2653596 (efficientList!545 (xs!17613 (right!35541 (right!35541 (c!727096 x!742222))))))))

(declare-fun b!4274090 () Bool)

(assert (=> b!4274090 (= e!2653595 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun d!1261347 () Bool)

(declare-fun lt!1513382 () List!47449)

(assert (=> d!1261347 (= lt!1513382 (++!12082 (list!17205 (right!35541 (right!35541 (c!727096 x!742222)))) (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> d!1261347 (= lt!1513382 e!2653595)))

(declare-fun c!727570 () Bool)

(assert (=> d!1261347 (= c!727570 ((_ is Empty!14307) (right!35541 (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1261347 (= (efficientList!543 (right!35541 (right!35541 (c!727096 x!742222))) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513382)))

(assert (= (and d!1261347 c!727570) b!4274090))

(assert (= (and d!1261347 (not c!727570)) b!4274091))

(assert (= (and b!4274091 c!727572) b!4274087))

(assert (= (and b!4274091 (not c!727572)) b!4274089))

(assert (= (or b!4274087 b!4274089) bm!294202))

(assert (= (and bm!294202 c!727571) b!4274092))

(assert (= (and bm!294202 (not c!727571)) b!4274088))

(assert (=> b!4274089 m!4868297))

(declare-fun m!4868951 () Bool)

(assert (=> b!4274089 m!4868951))

(declare-fun m!4868953 () Bool)

(assert (=> b!4274089 m!4868953))

(assert (=> b!4274089 m!4866859))

(assert (=> b!4274089 m!4868951))

(declare-fun m!4868955 () Bool)

(assert (=> b!4274089 m!4868955))

(assert (=> b!4274089 m!4866859))

(declare-fun m!4868957 () Bool)

(assert (=> b!4274089 m!4868957))

(assert (=> b!4274089 m!4868955))

(assert (=> b!4274089 m!4866859))

(declare-fun m!4868959 () Bool)

(assert (=> b!4274089 m!4868959))

(assert (=> b!4274089 m!4868293))

(declare-fun m!4868961 () Bool)

(assert (=> b!4274089 m!4868961))

(assert (=> bm!294202 m!4866859))

(declare-fun m!4868963 () Bool)

(assert (=> bm!294202 m!4868963))

(declare-fun m!4868965 () Bool)

(assert (=> b!4274092 m!4868965))

(assert (=> d!1261347 m!4867145))

(assert (=> d!1261347 m!4867145))

(assert (=> d!1261347 m!4866859))

(declare-fun m!4868967 () Bool)

(assert (=> d!1261347 m!4868967))

(assert (=> b!4273393 d!1261347))

(declare-fun d!1261349 () Bool)

(assert (=> d!1261349 (= (++!12082 (++!12082 lt!1513212 lt!1513211) (efficientList$default$2!189 (c!727096 x!742222))) (++!12082 lt!1513212 (++!12082 lt!1513211 (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun lt!1513385 () Unit!66261)

(assert (=> d!1261349 (= lt!1513385 (choose!26060 lt!1513212 lt!1513211 (efficientList$default$2!189 (c!727096 x!742222))))))

(assert (=> d!1261349 (= (lemmaConcatAssociativity!2719 lt!1513212 lt!1513211 (efficientList$default$2!189 (c!727096 x!742222))) lt!1513385)))

(declare-fun bs!601646 () Bool)

(assert (= bs!601646 d!1261349))

(assert (=> bs!601646 m!4867473))

(assert (=> bs!601646 m!4866859))

(assert (=> bs!601646 m!4867475))

(assert (=> bs!601646 m!4866859))

(declare-fun m!4868969 () Bool)

(assert (=> bs!601646 m!4868969))

(assert (=> bs!601646 m!4866859))

(declare-fun m!4868971 () Bool)

(assert (=> bs!601646 m!4868971))

(assert (=> bs!601646 m!4868971))

(declare-fun m!4868973 () Bool)

(assert (=> bs!601646 m!4868973))

(assert (=> bs!601646 m!4867473))

(assert (=> b!4273393 d!1261349))

(declare-fun b!4274096 () Bool)

(declare-fun e!2653598 () Bool)

(declare-fun lt!1513386 () List!47449)

(assert (=> b!4274096 (= e!2653598 (or (not (= call!294201 Nil!47325)) (= lt!1513386 lt!1513212)))))

(declare-fun b!4274094 () Bool)

(declare-fun e!2653597 () List!47449)

(assert (=> b!4274094 (= e!2653597 (Cons!47325 (h!52745 lt!1513212) (++!12082 (t!353862 lt!1513212) call!294201)))))

(declare-fun d!1261351 () Bool)

(assert (=> d!1261351 e!2653598))

(declare-fun res!1755348 () Bool)

(assert (=> d!1261351 (=> (not res!1755348) (not e!2653598))))

(assert (=> d!1261351 (= res!1755348 (= (content!7480 lt!1513386) ((_ map or) (content!7480 lt!1513212) (content!7480 call!294201))))))

(assert (=> d!1261351 (= lt!1513386 e!2653597)))

(declare-fun c!727573 () Bool)

(assert (=> d!1261351 (= c!727573 ((_ is Nil!47325) lt!1513212))))

(assert (=> d!1261351 (= (++!12082 lt!1513212 call!294201) lt!1513386)))

(declare-fun b!4274093 () Bool)

(assert (=> b!4274093 (= e!2653597 call!294201)))

(declare-fun b!4274095 () Bool)

(declare-fun res!1755349 () Bool)

(assert (=> b!4274095 (=> (not res!1755349) (not e!2653598))))

(assert (=> b!4274095 (= res!1755349 (= (size!34649 lt!1513386) (+ (size!34649 lt!1513212) (size!34649 call!294201))))))

(assert (= (and d!1261351 c!727573) b!4274093))

(assert (= (and d!1261351 (not c!727573)) b!4274094))

(assert (= (and d!1261351 res!1755348) b!4274095))

(assert (= (and b!4274095 res!1755349) b!4274096))

(declare-fun m!4868975 () Bool)

(assert (=> b!4274094 m!4868975))

(declare-fun m!4868977 () Bool)

(assert (=> d!1261351 m!4868977))

(declare-fun m!4868979 () Bool)

(assert (=> d!1261351 m!4868979))

(declare-fun m!4868981 () Bool)

(assert (=> d!1261351 m!4868981))

(declare-fun m!4868983 () Bool)

(assert (=> b!4274095 m!4868983))

(declare-fun m!4868985 () Bool)

(assert (=> b!4274095 m!4868985))

(declare-fun m!4868987 () Bool)

(assert (=> b!4274095 m!4868987))

(assert (=> b!4273393 d!1261351))

(declare-fun b!4274100 () Bool)

(declare-fun lt!1513387 () List!47449)

(declare-fun e!2653600 () Bool)

(assert (=> b!4274100 (= e!2653600 (or (not (= lt!1513211 Nil!47325)) (= lt!1513387 lt!1513212)))))

(declare-fun b!4274098 () Bool)

(declare-fun e!2653599 () List!47449)

(assert (=> b!4274098 (= e!2653599 (Cons!47325 (h!52745 lt!1513212) (++!12082 (t!353862 lt!1513212) lt!1513211)))))

(declare-fun d!1261353 () Bool)

(assert (=> d!1261353 e!2653600))

(declare-fun res!1755350 () Bool)

(assert (=> d!1261353 (=> (not res!1755350) (not e!2653600))))

(assert (=> d!1261353 (= res!1755350 (= (content!7480 lt!1513387) ((_ map or) (content!7480 lt!1513212) (content!7480 lt!1513211))))))

(assert (=> d!1261353 (= lt!1513387 e!2653599)))

(declare-fun c!727574 () Bool)

(assert (=> d!1261353 (= c!727574 ((_ is Nil!47325) lt!1513212))))

(assert (=> d!1261353 (= (++!12082 lt!1513212 lt!1513211) lt!1513387)))

(declare-fun b!4274097 () Bool)

(assert (=> b!4274097 (= e!2653599 lt!1513211)))

(declare-fun b!4274099 () Bool)

(declare-fun res!1755351 () Bool)

(assert (=> b!4274099 (=> (not res!1755351) (not e!2653600))))

(assert (=> b!4274099 (= res!1755351 (= (size!34649 lt!1513387) (+ (size!34649 lt!1513212) (size!34649 lt!1513211))))))

(assert (= (and d!1261353 c!727574) b!4274097))

(assert (= (and d!1261353 (not c!727574)) b!4274098))

(assert (= (and d!1261353 res!1755350) b!4274099))

(assert (= (and b!4274099 res!1755351) b!4274100))

(declare-fun m!4868989 () Bool)

(assert (=> b!4274098 m!4868989))

(declare-fun m!4868991 () Bool)

(assert (=> d!1261353 m!4868991))

(assert (=> d!1261353 m!4868979))

(declare-fun m!4868993 () Bool)

(assert (=> d!1261353 m!4868993))

(declare-fun m!4868995 () Bool)

(assert (=> b!4274099 m!4868995))

(assert (=> b!4274099 m!4868985))

(declare-fun m!4868997 () Bool)

(assert (=> b!4274099 m!4868997))

(assert (=> b!4273393 d!1261353))

(declare-fun d!1261355 () Bool)

(declare-fun lt!1513388 () Int)

(assert (=> d!1261355 (>= lt!1513388 0)))

(declare-fun e!2653601 () Int)

(assert (=> d!1261355 (= lt!1513388 e!2653601)))

(declare-fun c!727575 () Bool)

(assert (=> d!1261355 (= c!727575 ((_ is Nil!47325) (t!353862 lt!1513162)))))

(assert (=> d!1261355 (= (size!34649 (t!353862 lt!1513162)) lt!1513388)))

(declare-fun b!4274101 () Bool)

(assert (=> b!4274101 (= e!2653601 0)))

(declare-fun b!4274102 () Bool)

(assert (=> b!4274102 (= e!2653601 (+ 1 (size!34649 (t!353862 (t!353862 lt!1513162)))))))

(assert (= (and d!1261355 c!727575) b!4274101))

(assert (= (and d!1261355 (not c!727575)) b!4274102))

(declare-fun m!4868999 () Bool)

(assert (=> b!4274102 m!4868999))

(assert (=> b!4273538 d!1261355))

(declare-fun d!1261357 () Bool)

(declare-fun c!727576 () Bool)

(assert (=> d!1261357 (= c!727576 ((_ is Nil!47325) lt!1513289))))

(declare-fun e!2653602 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261357 (= (content!7480 lt!1513289) e!2653602)))

(declare-fun b!4274103 () Bool)

(assert (=> b!4274103 (= e!2653602 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274104 () Bool)

(assert (=> b!4274104 (= e!2653602 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513289) true) (content!7480 (t!353862 lt!1513289))))))

(assert (= (and d!1261357 c!727576) b!4274103))

(assert (= (and d!1261357 (not c!727576)) b!4274104))

(declare-fun m!4869001 () Bool)

(assert (=> b!4274104 m!4869001))

(declare-fun m!4869003 () Bool)

(assert (=> b!4274104 m!4869003))

(assert (=> d!1261099 d!1261357))

(assert (=> d!1261099 d!1261265))

(assert (=> d!1261099 d!1260983))

(declare-fun d!1261359 () Bool)

(declare-fun c!727577 () Bool)

(assert (=> d!1261359 (= c!727577 ((_ is Nil!47325) lt!1513265))))

(declare-fun e!2653603 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261359 (= (content!7480 lt!1513265) e!2653603)))

(declare-fun b!4274105 () Bool)

(assert (=> b!4274105 (= e!2653603 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274106 () Bool)

(assert (=> b!4274106 (= e!2653603 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513265) true) (content!7480 (t!353862 lt!1513265))))))

(assert (= (and d!1261359 c!727577) b!4274105))

(assert (= (and d!1261359 (not c!727577)) b!4274106))

(declare-fun m!4869005 () Bool)

(assert (=> b!4274106 m!4869005))

(declare-fun m!4869007 () Bool)

(assert (=> b!4274106 m!4869007))

(assert (=> d!1261005 d!1261359))

(declare-fun d!1261361 () Bool)

(declare-fun c!727578 () Bool)

(assert (=> d!1261361 (= c!727578 ((_ is Nil!47325) (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))))))

(declare-fun e!2653604 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261361 (= (content!7480 (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))) e!2653604)))

(declare-fun b!4274107 () Bool)

(assert (=> b!4274107 (= e!2653604 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274108 () Bool)

(assert (=> b!4274108 (= e!2653604 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))) true) (content!7480 (t!353862 (list!17205 (left!35211 (left!35211 (c!727096 x!742222))))))))))

(assert (= (and d!1261361 c!727578) b!4274107))

(assert (= (and d!1261361 (not c!727578)) b!4274108))

(declare-fun m!4869009 () Bool)

(assert (=> b!4274108 m!4869009))

(declare-fun m!4869011 () Bool)

(assert (=> b!4274108 m!4869011))

(assert (=> d!1261005 d!1261361))

(declare-fun d!1261363 () Bool)

(declare-fun c!727579 () Bool)

(assert (=> d!1261363 (= c!727579 ((_ is Nil!47325) (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))))))

(declare-fun e!2653605 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261363 (= (content!7480 (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))) e!2653605)))

(declare-fun b!4274109 () Bool)

(assert (=> b!4274109 (= e!2653605 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274110 () Bool)

(assert (=> b!4274110 (= e!2653605 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))) true) (content!7480 (t!353862 (list!17205 (right!35541 (left!35211 (c!727096 x!742222))))))))))

(assert (= (and d!1261363 c!727579) b!4274109))

(assert (= (and d!1261363 (not c!727579)) b!4274110))

(declare-fun m!4869013 () Bool)

(assert (=> b!4274110 m!4869013))

(declare-fun m!4869015 () Bool)

(assert (=> b!4274110 m!4869015))

(assert (=> d!1261005 d!1261363))

(declare-fun d!1261365 () Bool)

(declare-fun lt!1513389 () Int)

(assert (=> d!1261365 (>= lt!1513389 0)))

(declare-fun e!2653606 () Int)

(assert (=> d!1261365 (= lt!1513389 e!2653606)))

(declare-fun c!727580 () Bool)

(assert (=> d!1261365 (= c!727580 ((_ is Nil!47325) (t!353862 lt!1513163)))))

(assert (=> d!1261365 (= (size!34649 (t!353862 lt!1513163)) lt!1513389)))

(declare-fun b!4274111 () Bool)

(assert (=> b!4274111 (= e!2653606 0)))

(declare-fun b!4274112 () Bool)

(assert (=> b!4274112 (= e!2653606 (+ 1 (size!34649 (t!353862 (t!353862 lt!1513163)))))))

(assert (= (and d!1261365 c!727580) b!4274111))

(assert (= (and d!1261365 (not c!727580)) b!4274112))

(declare-fun m!4869017 () Bool)

(assert (=> b!4274112 m!4869017))

(assert (=> b!4273555 d!1261365))

(declare-fun b!4274113 () Bool)

(declare-fun res!1755357 () Bool)

(declare-fun e!2653608 () Bool)

(assert (=> b!4274113 (=> (not res!1755357) (not e!2653608))))

(assert (=> b!4274113 (= res!1755357 (<= (- (height!1884 (left!35211 (right!35541 (c!727096 x!742222)))) (height!1884 (right!35541 (right!35541 (c!727096 x!742222))))) 1))))

(declare-fun b!4274114 () Bool)

(declare-fun e!2653607 () Bool)

(assert (=> b!4274114 (= e!2653607 e!2653608)))

(declare-fun res!1755355 () Bool)

(assert (=> b!4274114 (=> (not res!1755355) (not e!2653608))))

(assert (=> b!4274114 (= res!1755355 (<= (- 1) (- (height!1884 (left!35211 (right!35541 (c!727096 x!742222)))) (height!1884 (right!35541 (right!35541 (c!727096 x!742222)))))))))

(declare-fun b!4274115 () Bool)

(declare-fun res!1755354 () Bool)

(assert (=> b!4274115 (=> (not res!1755354) (not e!2653608))))

(assert (=> b!4274115 (= res!1755354 (not (isEmpty!28005 (left!35211 (right!35541 (c!727096 x!742222))))))))

(declare-fun d!1261367 () Bool)

(declare-fun res!1755356 () Bool)

(assert (=> d!1261367 (=> res!1755356 e!2653607)))

(assert (=> d!1261367 (= res!1755356 (not ((_ is Node!14307) (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1261367 (= (isBalanced!3853 (right!35541 (c!727096 x!742222))) e!2653607)))

(declare-fun b!4274116 () Bool)

(declare-fun res!1755352 () Bool)

(assert (=> b!4274116 (=> (not res!1755352) (not e!2653608))))

(assert (=> b!4274116 (= res!1755352 (isBalanced!3853 (left!35211 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4274117 () Bool)

(declare-fun res!1755353 () Bool)

(assert (=> b!4274117 (=> (not res!1755353) (not e!2653608))))

(assert (=> b!4274117 (= res!1755353 (isBalanced!3853 (right!35541 (right!35541 (c!727096 x!742222)))))))

(declare-fun b!4274118 () Bool)

(assert (=> b!4274118 (= e!2653608 (not (isEmpty!28005 (right!35541 (right!35541 (c!727096 x!742222))))))))

(assert (= (and d!1261367 (not res!1755356)) b!4274114))

(assert (= (and b!4274114 res!1755355) b!4274113))

(assert (= (and b!4274113 res!1755357) b!4274116))

(assert (= (and b!4274116 res!1755352) b!4274117))

(assert (= (and b!4274117 res!1755353) b!4274115))

(assert (= (and b!4274115 res!1755354) b!4274118))

(assert (=> b!4274114 m!4868901))

(assert (=> b!4274114 m!4868903))

(declare-fun m!4869019 () Bool)

(assert (=> b!4274116 m!4869019))

(assert (=> b!4274113 m!4868901))

(assert (=> b!4274113 m!4868903))

(declare-fun m!4869021 () Bool)

(assert (=> b!4274115 m!4869021))

(declare-fun m!4869023 () Bool)

(assert (=> b!4274118 m!4869023))

(declare-fun m!4869025 () Bool)

(assert (=> b!4274117 m!4869025))

(assert (=> b!4273423 d!1261367))

(declare-fun d!1261369 () Bool)

(declare-fun c!727581 () Bool)

(assert (=> d!1261369 (= c!727581 ((_ is Nil!47325) (t!353862 (t!353862 lt!1513161))))))

(declare-fun e!2653609 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261369 (= (content!7480 (t!353862 (t!353862 lt!1513161))) e!2653609)))

(declare-fun b!4274119 () Bool)

(assert (=> b!4274119 (= e!2653609 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274120 () Bool)

(assert (=> b!4274120 (= e!2653609 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (t!353862 lt!1513161))) true) (content!7480 (t!353862 (t!353862 (t!353862 lt!1513161))))))))

(assert (= (and d!1261369 c!727581) b!4274119))

(assert (= (and d!1261369 (not c!727581)) b!4274120))

(declare-fun m!4869027 () Bool)

(assert (=> b!4274120 m!4869027))

(declare-fun m!4869029 () Bool)

(assert (=> b!4274120 m!4869029))

(assert (=> b!4273592 d!1261369))

(declare-fun b!4274124 () Bool)

(declare-fun e!2653611 () Bool)

(declare-fun lt!1513390 () List!47449)

(assert (=> b!4274124 (= e!2653611 (or (not (= (list!17205 (right!35541 (c!727096 x!742222))) Nil!47325)) (= lt!1513390 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))))))))

(declare-fun b!4274122 () Bool)

(declare-fun e!2653610 () List!47449)

(assert (=> b!4274122 (= e!2653610 (Cons!47325 (h!52745 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))) (++!12082 (t!353862 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))) (list!17205 (right!35541 (c!727096 x!742222))))))))

(declare-fun d!1261371 () Bool)

(assert (=> d!1261371 e!2653611))

(declare-fun res!1755358 () Bool)

(assert (=> d!1261371 (=> (not res!1755358) (not e!2653611))))

(assert (=> d!1261371 (= res!1755358 (= (content!7480 lt!1513390) ((_ map or) (content!7480 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))) (content!7480 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (=> d!1261371 (= lt!1513390 e!2653610)))

(declare-fun c!727582 () Bool)

(assert (=> d!1261371 (= c!727582 ((_ is Nil!47325) (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))))))

(assert (=> d!1261371 (= (++!12082 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (list!17205 (right!35541 (c!727096 x!742222)))) lt!1513390)))

(declare-fun b!4274121 () Bool)

(assert (=> b!4274121 (= e!2653610 (list!17205 (right!35541 (c!727096 x!742222))))))

(declare-fun b!4274123 () Bool)

(declare-fun res!1755359 () Bool)

(assert (=> b!4274123 (=> (not res!1755359) (not e!2653611))))

(assert (=> b!4274123 (= res!1755359 (= (size!34649 lt!1513390) (+ (size!34649 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))) (size!34649 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(assert (= (and d!1261371 c!727582) b!4274121))

(assert (= (and d!1261371 (not c!727582)) b!4274122))

(assert (= (and d!1261371 res!1755358) b!4274123))

(assert (= (and b!4274123 res!1755359) b!4274124))

(assert (=> b!4274122 m!4866835))

(declare-fun m!4869031 () Bool)

(assert (=> b!4274122 m!4869031))

(declare-fun m!4869033 () Bool)

(assert (=> d!1261371 m!4869033))

(assert (=> d!1261371 m!4868025))

(assert (=> d!1261371 m!4866835))

(assert (=> d!1261371 m!4867127))

(declare-fun m!4869035 () Bool)

(assert (=> b!4274123 m!4869035))

(assert (=> b!4274123 m!4868779))

(assert (=> b!4274123 m!4866835))

(assert (=> b!4274123 m!4867133))

(assert (=> b!4273551 d!1261371))

(assert (=> b!4273330 d!1260655))

(declare-fun d!1261373 () Bool)

(assert (=> d!1261373 (= (inv!62537 (xs!17613 (left!35211 (c!727096 x!742222)))) (<= (size!34649 (innerList!14367 (xs!17613 (left!35211 (c!727096 x!742222))))) 2147483647))))

(declare-fun bs!601647 () Bool)

(assert (= bs!601647 d!1261373))

(declare-fun m!4869037 () Bool)

(assert (=> bs!601647 m!4869037))

(assert (=> b!4273446 d!1261373))

(declare-fun b!4274128 () Bool)

(declare-fun e!2653613 () List!47449)

(assert (=> b!4274128 (= e!2653613 (++!12082 (list!17205 (left!35211 res!1755271)) (list!17205 (right!35541 res!1755271))))))

(declare-fun d!1261375 () Bool)

(declare-fun c!727583 () Bool)

(assert (=> d!1261375 (= c!727583 ((_ is Empty!14307) res!1755271))))

(declare-fun e!2653612 () List!47449)

(assert (=> d!1261375 (= (list!17205 res!1755271) e!2653612)))

(declare-fun b!4274126 () Bool)

(assert (=> b!4274126 (= e!2653612 e!2653613)))

(declare-fun c!727584 () Bool)

(assert (=> b!4274126 (= c!727584 ((_ is Leaf!22116) res!1755271))))

(declare-fun b!4274127 () Bool)

(assert (=> b!4274127 (= e!2653613 (list!17207 (xs!17613 res!1755271)))))

(declare-fun b!4274125 () Bool)

(assert (=> b!4274125 (= e!2653612 Nil!47325)))

(assert (= (and d!1261375 c!727583) b!4274125))

(assert (= (and d!1261375 (not c!727583)) b!4274126))

(assert (= (and b!4274126 c!727584) b!4274127))

(assert (= (and b!4274126 (not c!727584)) b!4274128))

(declare-fun m!4869039 () Bool)

(assert (=> b!4274128 m!4869039))

(declare-fun m!4869041 () Bool)

(assert (=> b!4274128 m!4869041))

(assert (=> b!4274128 m!4869039))

(assert (=> b!4274128 m!4869041))

(declare-fun m!4869043 () Bool)

(assert (=> b!4274128 m!4869043))

(declare-fun m!4869045 () Bool)

(assert (=> b!4274127 m!4869045))

(assert (=> d!1261139 d!1261375))

(declare-fun d!1261377 () Bool)

(declare-fun c!727585 () Bool)

(assert (=> d!1261377 (= c!727585 ((_ is Node!14307) res!1755271))))

(declare-fun e!2653614 () Bool)

(assert (=> d!1261377 (= (inv!62530 res!1755271) e!2653614)))

(declare-fun b!4274129 () Bool)

(assert (=> b!4274129 (= e!2653614 (inv!62535 res!1755271))))

(declare-fun b!4274130 () Bool)

(declare-fun e!2653615 () Bool)

(assert (=> b!4274130 (= e!2653614 e!2653615)))

(declare-fun res!1755360 () Bool)

(assert (=> b!4274130 (= res!1755360 (not ((_ is Leaf!22116) res!1755271)))))

(assert (=> b!4274130 (=> res!1755360 e!2653615)))

(declare-fun b!4274131 () Bool)

(assert (=> b!4274131 (= e!2653615 (inv!62536 res!1755271))))

(assert (= (and d!1261377 c!727585) b!4274129))

(assert (= (and d!1261377 (not c!727585)) b!4274130))

(assert (= (and b!4274130 (not res!1755360)) b!4274131))

(declare-fun m!4869047 () Bool)

(assert (=> b!4274129 m!4869047))

(declare-fun m!4869049 () Bool)

(assert (=> b!4274131 m!4869049))

(assert (=> d!1261139 d!1261377))

(declare-fun d!1261379 () Bool)

(declare-fun lt!1513393 () Int)

(assert (=> d!1261379 (= lt!1513393 (size!34649 (list!17205 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1261379 (= lt!1513393 (ite ((_ is Empty!14307) (left!35211 (c!727096 x!742222))) 0 (ite ((_ is Leaf!22116) (left!35211 (c!727096 x!742222))) (csize!28845 (left!35211 (c!727096 x!742222))) (csize!28844 (left!35211 (c!727096 x!742222))))))))

(assert (=> d!1261379 (= (size!34652 (left!35211 (c!727096 x!742222))) lt!1513393)))

(declare-fun bs!601648 () Bool)

(assert (= bs!601648 d!1261379))

(assert (=> bs!601648 m!4866833))

(assert (=> bs!601648 m!4866833))

(assert (=> bs!601648 m!4867131))

(assert (=> d!1260767 d!1261379))

(declare-fun d!1261381 () Bool)

(declare-fun lt!1513394 () Int)

(assert (=> d!1261381 (= lt!1513394 (size!34649 (list!17205 (right!35541 (c!727096 x!742222)))))))

(assert (=> d!1261381 (= lt!1513394 (ite ((_ is Empty!14307) (right!35541 (c!727096 x!742222))) 0 (ite ((_ is Leaf!22116) (right!35541 (c!727096 x!742222))) (csize!28845 (right!35541 (c!727096 x!742222))) (csize!28844 (right!35541 (c!727096 x!742222))))))))

(assert (=> d!1261381 (= (size!34652 (right!35541 (c!727096 x!742222))) lt!1513394)))

(declare-fun bs!601649 () Bool)

(assert (= bs!601649 d!1261381))

(assert (=> bs!601649 m!4866835))

(assert (=> bs!601649 m!4866835))

(assert (=> bs!601649 m!4867133))

(assert (=> d!1260767 d!1261381))

(declare-fun d!1261383 () Bool)

(declare-fun lt!1513395 () Int)

(assert (=> d!1261383 (>= lt!1513395 0)))

(declare-fun e!2653616 () Int)

(assert (=> d!1261383 (= lt!1513395 e!2653616)))

(declare-fun c!727586 () Bool)

(assert (=> d!1261383 (= c!727586 ((_ is Nil!47325) lt!1513260))))

(assert (=> d!1261383 (= (size!34649 lt!1513260) lt!1513395)))

(declare-fun b!4274132 () Bool)

(assert (=> b!4274132 (= e!2653616 0)))

(declare-fun b!4274133 () Bool)

(assert (=> b!4274133 (= e!2653616 (+ 1 (size!34649 (t!353862 lt!1513260))))))

(assert (= (and d!1261383 c!727586) b!4274132))

(assert (= (and d!1261383 (not c!727586)) b!4274133))

(declare-fun m!4869051 () Bool)

(assert (=> b!4274133 m!4869051))

(assert (=> b!4273604 d!1261383))

(assert (=> b!4273604 d!1261037))

(declare-fun d!1261385 () Bool)

(declare-fun lt!1513396 () Int)

(assert (=> d!1261385 (>= lt!1513396 0)))

(declare-fun e!2653617 () Int)

(assert (=> d!1261385 (= lt!1513396 e!2653617)))

(declare-fun c!727587 () Bool)

(assert (=> d!1261385 (= c!727587 ((_ is Nil!47325) (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1261385 (= (size!34649 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513396)))

(declare-fun b!4274134 () Bool)

(assert (=> b!4274134 (= e!2653617 0)))

(declare-fun b!4274135 () Bool)

(assert (=> b!4274135 (= e!2653617 (+ 1 (size!34649 (t!353862 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261385 c!727587) b!4274134))

(assert (= (and d!1261385 (not c!727587)) b!4274135))

(declare-fun m!4869053 () Bool)

(assert (=> b!4274135 m!4869053))

(assert (=> b!4273604 d!1261385))

(declare-fun d!1261387 () Bool)

(declare-fun lt!1513397 () Int)

(assert (=> d!1261387 (>= lt!1513397 0)))

(declare-fun e!2653618 () Int)

(assert (=> d!1261387 (= lt!1513397 e!2653618)))

(declare-fun c!727588 () Bool)

(assert (=> d!1261387 (= c!727588 ((_ is Nil!47325) lt!1513255))))

(assert (=> d!1261387 (= (size!34649 lt!1513255) lt!1513397)))

(declare-fun b!4274136 () Bool)

(assert (=> b!4274136 (= e!2653618 0)))

(declare-fun b!4274137 () Bool)

(assert (=> b!4274137 (= e!2653618 (+ 1 (size!34649 (t!353862 lt!1513255))))))

(assert (= (and d!1261387 c!727588) b!4274136))

(assert (= (and d!1261387 (not c!727588)) b!4274137))

(declare-fun m!4869055 () Bool)

(assert (=> b!4274137 m!4869055))

(assert (=> b!4273570 d!1261387))

(assert (=> b!4273570 d!1260927))

(declare-fun d!1261389 () Bool)

(declare-fun lt!1513398 () Int)

(assert (=> d!1261389 (>= lt!1513398 0)))

(declare-fun e!2653619 () Int)

(assert (=> d!1261389 (= lt!1513398 e!2653619)))

(declare-fun c!727589 () Bool)

(assert (=> d!1261389 (= c!727589 ((_ is Nil!47325) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))

(assert (=> d!1261389 (= (size!34649 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513398)))

(declare-fun b!4274138 () Bool)

(assert (=> b!4274138 (= e!2653619 0)))

(declare-fun b!4274139 () Bool)

(assert (=> b!4274139 (= e!2653619 (+ 1 (size!34649 (t!353862 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261389 c!727589) b!4274138))

(assert (= (and d!1261389 (not c!727589)) b!4274139))

(declare-fun m!4869057 () Bool)

(assert (=> b!4274139 m!4869057))

(assert (=> b!4273570 d!1261389))

(declare-fun b!4274140 () Bool)

(declare-fun res!1755366 () Bool)

(declare-fun e!2653621 () Bool)

(assert (=> b!4274140 (=> (not res!1755366) (not e!2653621))))

(assert (=> b!4274140 (= res!1755366 (<= (- (height!1884 (left!35211 (left!35211 (c!727096 x!742222)))) (height!1884 (right!35541 (left!35211 (c!727096 x!742222))))) 1))))

(declare-fun b!4274141 () Bool)

(declare-fun e!2653620 () Bool)

(assert (=> b!4274141 (= e!2653620 e!2653621)))

(declare-fun res!1755364 () Bool)

(assert (=> b!4274141 (=> (not res!1755364) (not e!2653621))))

(assert (=> b!4274141 (= res!1755364 (<= (- 1) (- (height!1884 (left!35211 (left!35211 (c!727096 x!742222)))) (height!1884 (right!35541 (left!35211 (c!727096 x!742222)))))))))

(declare-fun b!4274142 () Bool)

(declare-fun res!1755363 () Bool)

(assert (=> b!4274142 (=> (not res!1755363) (not e!2653621))))

(assert (=> b!4274142 (= res!1755363 (not (isEmpty!28005 (left!35211 (left!35211 (c!727096 x!742222))))))))

(declare-fun d!1261391 () Bool)

(declare-fun res!1755365 () Bool)

(assert (=> d!1261391 (=> res!1755365 e!2653620)))

(assert (=> d!1261391 (= res!1755365 (not ((_ is Node!14307) (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1261391 (= (isBalanced!3853 (left!35211 (c!727096 x!742222))) e!2653620)))

(declare-fun b!4274143 () Bool)

(declare-fun res!1755361 () Bool)

(assert (=> b!4274143 (=> (not res!1755361) (not e!2653621))))

(assert (=> b!4274143 (= res!1755361 (isBalanced!3853 (left!35211 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4274144 () Bool)

(declare-fun res!1755362 () Bool)

(assert (=> b!4274144 (=> (not res!1755362) (not e!2653621))))

(assert (=> b!4274144 (= res!1755362 (isBalanced!3853 (right!35541 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4274145 () Bool)

(assert (=> b!4274145 (= e!2653621 (not (isEmpty!28005 (right!35541 (left!35211 (c!727096 x!742222))))))))

(assert (= (and d!1261391 (not res!1755365)) b!4274141))

(assert (= (and b!4274141 res!1755364) b!4274140))

(assert (= (and b!4274140 res!1755366) b!4274143))

(assert (= (and b!4274143 res!1755361) b!4274144))

(assert (= (and b!4274144 res!1755362) b!4274142))

(assert (= (and b!4274142 res!1755363) b!4274145))

(assert (=> b!4274141 m!4868623))

(assert (=> b!4274141 m!4868625))

(declare-fun m!4869059 () Bool)

(assert (=> b!4274143 m!4869059))

(assert (=> b!4274140 m!4868623))

(assert (=> b!4274140 m!4868625))

(declare-fun m!4869061 () Bool)

(assert (=> b!4274142 m!4869061))

(declare-fun m!4869063 () Bool)

(assert (=> b!4274145 m!4869063))

(declare-fun m!4869065 () Bool)

(assert (=> b!4274144 m!4869065))

(assert (=> b!4273422 d!1261391))

(declare-fun d!1261393 () Bool)

(declare-fun c!727590 () Bool)

(assert (=> d!1261393 (= c!727590 ((_ is Nil!47325) (t!353862 lt!1513206)))))

(declare-fun e!2653622 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261393 (= (content!7480 (t!353862 lt!1513206)) e!2653622)))

(declare-fun b!4274146 () Bool)

(assert (=> b!4274146 (= e!2653622 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274147 () Bool)

(assert (=> b!4274147 (= e!2653622 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513206)) true) (content!7480 (t!353862 (t!353862 lt!1513206)))))))

(assert (= (and d!1261393 c!727590) b!4274146))

(assert (= (and d!1261393 (not c!727590)) b!4274147))

(declare-fun m!4869067 () Bool)

(assert (=> b!4274147 m!4869067))

(declare-fun m!4869069 () Bool)

(assert (=> b!4274147 m!4869069))

(assert (=> b!4273544 d!1261393))

(declare-fun d!1261395 () Bool)

(declare-fun c!727591 () Bool)

(assert (=> d!1261395 (= c!727591 ((_ is Nil!47325) lt!1513283))))

(declare-fun e!2653623 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261395 (= (content!7480 lt!1513283) e!2653623)))

(declare-fun b!4274148 () Bool)

(assert (=> b!4274148 (= e!2653623 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274149 () Bool)

(assert (=> b!4274149 (= e!2653623 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513283) true) (content!7480 (t!353862 lt!1513283))))))

(assert (= (and d!1261395 c!727591) b!4274148))

(assert (= (and d!1261395 (not c!727591)) b!4274149))

(declare-fun m!4869071 () Bool)

(assert (=> b!4274149 m!4869071))

(declare-fun m!4869073 () Bool)

(assert (=> b!4274149 m!4869073))

(assert (=> d!1261081 d!1261395))

(declare-fun d!1261397 () Bool)

(declare-fun c!727592 () Bool)

(assert (=> d!1261397 (= c!727592 ((_ is Nil!47325) (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653624 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261397 (= (content!7480 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653624)))

(declare-fun b!4274150 () Bool)

(assert (=> b!4274150 (= e!2653624 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274151 () Bool)

(assert (=> b!4274151 (= e!2653624 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) true) (content!7480 (t!353862 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261397 c!727592) b!4274150))

(assert (= (and d!1261397 (not c!727592)) b!4274151))

(declare-fun m!4869075 () Bool)

(assert (=> b!4274151 m!4869075))

(declare-fun m!4869077 () Bool)

(assert (=> b!4274151 m!4869077))

(assert (=> d!1261081 d!1261397))

(declare-fun d!1261399 () Bool)

(declare-fun c!727593 () Bool)

(assert (=> d!1261399 (= c!727593 ((_ is Nil!47325) (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653625 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261399 (= (content!7480 (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653625)))

(declare-fun b!4274152 () Bool)

(assert (=> b!4274152 (= e!2653625 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274153 () Bool)

(assert (=> b!4274153 (= e!2653625 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) true) (content!7480 (t!353862 (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(assert (= (and d!1261399 c!727593) b!4274152))

(assert (= (and d!1261399 (not c!727593)) b!4274153))

(declare-fun m!4869079 () Bool)

(assert (=> b!4274153 m!4869079))

(declare-fun m!4869081 () Bool)

(assert (=> b!4274153 m!4869081))

(assert (=> d!1261081 d!1261399))

(assert (=> b!4273099 d!1260807))

(assert (=> b!4273099 d!1260809))

(assert (=> d!1260749 d!1261333))

(assert (=> d!1260749 d!1260677))

(declare-fun d!1261401 () Bool)

(declare-fun c!727594 () Bool)

(assert (=> d!1261401 (= c!727594 ((_ is Node!14307) (left!35211 (left!35211 (c!727096 x!742222)))))))

(declare-fun e!2653626 () Bool)

(assert (=> d!1261401 (= (inv!62530 (left!35211 (left!35211 (c!727096 x!742222)))) e!2653626)))

(declare-fun b!4274154 () Bool)

(assert (=> b!4274154 (= e!2653626 (inv!62535 (left!35211 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4274155 () Bool)

(declare-fun e!2653627 () Bool)

(assert (=> b!4274155 (= e!2653626 e!2653627)))

(declare-fun res!1755367 () Bool)

(assert (=> b!4274155 (= res!1755367 (not ((_ is Leaf!22116) (left!35211 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4274155 (=> res!1755367 e!2653627)))

(declare-fun b!4274156 () Bool)

(assert (=> b!4274156 (= e!2653627 (inv!62536 (left!35211 (left!35211 (c!727096 x!742222)))))))

(assert (= (and d!1261401 c!727594) b!4274154))

(assert (= (and d!1261401 (not c!727594)) b!4274155))

(assert (= (and b!4274155 (not res!1755367)) b!4274156))

(declare-fun m!4869083 () Bool)

(assert (=> b!4274154 m!4869083))

(declare-fun m!4869085 () Bool)

(assert (=> b!4274156 m!4869085))

(assert (=> b!4273445 d!1261401))

(declare-fun d!1261403 () Bool)

(declare-fun c!727595 () Bool)

(assert (=> d!1261403 (= c!727595 ((_ is Node!14307) (right!35541 (left!35211 (c!727096 x!742222)))))))

(declare-fun e!2653628 () Bool)

(assert (=> d!1261403 (= (inv!62530 (right!35541 (left!35211 (c!727096 x!742222)))) e!2653628)))

(declare-fun b!4274157 () Bool)

(assert (=> b!4274157 (= e!2653628 (inv!62535 (right!35541 (left!35211 (c!727096 x!742222)))))))

(declare-fun b!4274158 () Bool)

(declare-fun e!2653629 () Bool)

(assert (=> b!4274158 (= e!2653628 e!2653629)))

(declare-fun res!1755368 () Bool)

(assert (=> b!4274158 (= res!1755368 (not ((_ is Leaf!22116) (right!35541 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4274158 (=> res!1755368 e!2653629)))

(declare-fun b!4274159 () Bool)

(assert (=> b!4274159 (= e!2653629 (inv!62536 (right!35541 (left!35211 (c!727096 x!742222)))))))

(assert (= (and d!1261403 c!727595) b!4274157))

(assert (= (and d!1261403 (not c!727595)) b!4274158))

(assert (= (and b!4274158 (not res!1755368)) b!4274159))

(declare-fun m!4869087 () Bool)

(assert (=> b!4274157 m!4869087))

(declare-fun m!4869089 () Bool)

(assert (=> b!4274159 m!4869089))

(assert (=> b!4273445 d!1261403))

(declare-fun lt!1513399 () List!47449)

(declare-fun b!4274163 () Bool)

(declare-fun e!2653631 () Bool)

(assert (=> b!4274163 (= e!2653631 (or (not (= (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))) Nil!47325)) (= lt!1513399 (t!353862 lt!1513147))))))

(declare-fun e!2653630 () List!47449)

(declare-fun b!4274161 () Bool)

(assert (=> b!4274161 (= e!2653630 (Cons!47325 (h!52745 (t!353862 lt!1513147)) (++!12082 (t!353862 (t!353862 lt!1513147)) (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun d!1261405 () Bool)

(assert (=> d!1261405 e!2653631))

(declare-fun res!1755369 () Bool)

(assert (=> d!1261405 (=> (not res!1755369) (not e!2653631))))

(assert (=> d!1261405 (= res!1755369 (= (content!7480 lt!1513399) ((_ map or) (content!7480 (t!353862 lt!1513147)) (content!7480 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (=> d!1261405 (= lt!1513399 e!2653630)))

(declare-fun c!727596 () Bool)

(assert (=> d!1261405 (= c!727596 ((_ is Nil!47325) (t!353862 lt!1513147)))))

(assert (=> d!1261405 (= (++!12082 (t!353862 lt!1513147) (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513399)))

(declare-fun b!4274160 () Bool)

(assert (=> b!4274160 (= e!2653630 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4274162 () Bool)

(declare-fun res!1755370 () Bool)

(assert (=> b!4274162 (=> (not res!1755370) (not e!2653631))))

(assert (=> b!4274162 (= res!1755370 (= (size!34649 lt!1513399) (+ (size!34649 (t!353862 lt!1513147)) (size!34649 (++!12082 lt!1513146 (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261405 c!727596) b!4274160))

(assert (= (and d!1261405 (not c!727596)) b!4274161))

(assert (= (and d!1261405 res!1755369) b!4274162))

(assert (= (and b!4274162 res!1755370) b!4274163))

(assert (=> b!4274161 m!4867455))

(declare-fun m!4869091 () Bool)

(assert (=> b!4274161 m!4869091))

(declare-fun m!4869093 () Bool)

(assert (=> d!1261405 m!4869093))

(assert (=> d!1261405 m!4867837))

(assert (=> d!1261405 m!4867455))

(assert (=> d!1261405 m!4867903))

(declare-fun m!4869095 () Bool)

(assert (=> b!4274162 m!4869095))

(assert (=> b!4274162 m!4868081))

(assert (=> b!4274162 m!4867455))

(assert (=> b!4274162 m!4867907))

(assert (=> b!4273603 d!1261405))

(declare-fun d!1261407 () Bool)

(assert (=> d!1261407 (= (max!0 (height!1884 (left!35211 (c!727096 x!742222))) (height!1884 (right!35541 (c!727096 x!742222)))) (ite (< (height!1884 (left!35211 (c!727096 x!742222))) (height!1884 (right!35541 (c!727096 x!742222)))) (height!1884 (right!35541 (c!727096 x!742222))) (height!1884 (left!35211 (c!727096 x!742222)))))))

(assert (=> b!4273371 d!1261407))

(assert (=> b!4273371 d!1261251))

(assert (=> b!4273371 d!1261253))

(declare-fun b!4274164 () Bool)

(declare-fun res!1755376 () Bool)

(declare-fun e!2653633 () Bool)

(assert (=> b!4274164 (=> (not res!1755376) (not e!2653633))))

(assert (=> b!4274164 (= res!1755376 (<= (- (height!1884 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))) (height!1884 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325))))))))) 1))))

(declare-fun b!4274165 () Bool)

(declare-fun e!2653632 () Bool)

(assert (=> b!4274165 (= e!2653632 e!2653633)))

(declare-fun res!1755374 () Bool)

(assert (=> b!4274165 (=> (not res!1755374) (not e!2653633))))

(assert (=> b!4274165 (= res!1755374 (<= (- 1) (- (height!1884 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))) (height!1884 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))))))

(declare-fun b!4274166 () Bool)

(declare-fun res!1755373 () Bool)

(assert (=> b!4274166 (=> (not res!1755373) (not e!2653633))))

(assert (=> b!4274166 (= res!1755373 (not (isEmpty!28005 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325))))))))))))

(declare-fun d!1261409 () Bool)

(declare-fun res!1755375 () Bool)

(assert (=> d!1261409 (=> res!1755375 e!2653632)))

(assert (=> d!1261409 (= res!1755375 (not ((_ is Node!14307) (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))))

(assert (=> d!1261409 (= (isBalanced!3853 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325))))))) e!2653632)))

(declare-fun b!4274167 () Bool)

(declare-fun res!1755371 () Bool)

(assert (=> b!4274167 (=> (not res!1755371) (not e!2653633))))

(assert (=> b!4274167 (= res!1755371 (isBalanced!3853 (left!35211 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))))

(declare-fun b!4274168 () Bool)

(declare-fun res!1755372 () Bool)

(assert (=> b!4274168 (=> (not res!1755372) (not e!2653633))))

(assert (=> b!4274168 (= res!1755372 (isBalanced!3853 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325)))))))))))

(declare-fun b!4274169 () Bool)

(assert (=> b!4274169 (= e!2653633 (not (isEmpty!28005 (right!35541 (fromList!928 (Cons!47325 #x0063 (Cons!47325 #x006C (Cons!47325 #x0061 (Cons!47325 #x0073 (Cons!47325 #x0073 Nil!47325))))))))))))

(assert (= (and d!1261409 (not res!1755375)) b!4274165))

(assert (= (and b!4274165 res!1755374) b!4274164))

(assert (= (and b!4274164 res!1755376) b!4274167))

(assert (= (and b!4274167 res!1755371) b!4274168))

(assert (= (and b!4274168 res!1755372) b!4274166))

(assert (= (and b!4274166 res!1755373) b!4274169))

(declare-fun m!4869097 () Bool)

(assert (=> b!4274165 m!4869097))

(declare-fun m!4869099 () Bool)

(assert (=> b!4274165 m!4869099))

(declare-fun m!4869101 () Bool)

(assert (=> b!4274167 m!4869101))

(assert (=> b!4274164 m!4869097))

(assert (=> b!4274164 m!4869099))

(declare-fun m!4869103 () Bool)

(assert (=> b!4274166 m!4869103))

(declare-fun m!4869105 () Bool)

(assert (=> b!4274169 m!4869105))

(declare-fun m!4869107 () Bool)

(assert (=> b!4274168 m!4869107))

(assert (=> b!4273580 d!1261409))

(assert (=> b!4273580 d!1261053))

(assert (=> b!4273337 d!1260605))

(declare-fun d!1261411 () Bool)

(declare-fun lt!1513400 () Bool)

(assert (=> d!1261411 (= lt!1513400 (isEmpty!28006 (list!17205 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1261411 (= lt!1513400 (= (size!34652 (left!35211 (c!727096 x!742222))) 0))))

(assert (=> d!1261411 (= (isEmpty!28005 (left!35211 (c!727096 x!742222))) lt!1513400)))

(declare-fun bs!601650 () Bool)

(assert (= bs!601650 d!1261411))

(assert (=> bs!601650 m!4866833))

(assert (=> bs!601650 m!4866833))

(declare-fun m!4869109 () Bool)

(assert (=> bs!601650 m!4869109))

(assert (=> bs!601650 m!4867401))

(assert (=> b!4273421 d!1261411))

(declare-fun b!4274173 () Bool)

(declare-fun e!2653635 () Bool)

(declare-fun lt!1513401 () List!47449)

(assert (=> b!4274173 (= e!2653635 (or (not (= (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))) Nil!47325)) (= lt!1513401 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))))))))

(declare-fun b!4274171 () Bool)

(declare-fun e!2653634 () List!47449)

(assert (=> b!4274171 (= e!2653634 (Cons!47325 (h!52745 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (++!12082 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun d!1261413 () Bool)

(assert (=> d!1261413 e!2653635))

(declare-fun res!1755377 () Bool)

(assert (=> d!1261413 (=> (not res!1755377) (not e!2653635))))

(assert (=> d!1261413 (= res!1755377 (= (content!7480 lt!1513401) ((_ map or) (content!7480 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (content!7480 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (=> d!1261413 (= lt!1513401 e!2653634)))

(declare-fun c!727597 () Bool)

(assert (=> d!1261413 (= c!727597 ((_ is Nil!47325) (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))))))

(assert (=> d!1261413 (= (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 x!742222)))) (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))) lt!1513401)))

(declare-fun b!4274170 () Bool)

(assert (=> b!4274170 (= e!2653634 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222))))))

(declare-fun b!4274172 () Bool)

(declare-fun res!1755378 () Bool)

(assert (=> b!4274172 (=> (not res!1755378) (not e!2653635))))

(assert (=> b!4274172 (= res!1755378 (= (size!34649 lt!1513401) (+ (size!34649 (t!353862 (list!17205 (left!35211 (c!727096 x!742222))))) (size!34649 (efficientList!543 (right!35541 (c!727096 x!742222)) (efficientList$default$2!189 (c!727096 x!742222)))))))))

(assert (= (and d!1261413 c!727597) b!4274170))

(assert (= (and d!1261413 (not c!727597)) b!4274171))

(assert (= (and d!1261413 res!1755377) b!4274172))

(assert (= (and b!4274172 res!1755378) b!4274173))

(assert (=> b!4274171 m!4866911))

(declare-fun m!4869111 () Bool)

(assert (=> b!4274171 m!4869111))

(declare-fun m!4869113 () Bool)

(assert (=> d!1261413 m!4869113))

(assert (=> d!1261413 m!4867395))

(assert (=> d!1261413 m!4866911))

(assert (=> d!1261413 m!4867821))

(declare-fun m!4869115 () Bool)

(assert (=> b!4274172 m!4869115))

(assert (=> b!4274172 m!4867789))

(assert (=> b!4274172 m!4866911))

(assert (=> b!4274172 m!4867825))

(assert (=> b!4273569 d!1261413))

(assert (=> b!4273338 d!1260603))

(declare-fun d!1261415 () Bool)

(declare-fun c!727598 () Bool)

(assert (=> d!1261415 (= c!727598 ((_ is Nil!47325) (t!353862 call!294197)))))

(declare-fun e!2653636 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261415 (= (content!7480 (t!353862 call!294197)) e!2653636)))

(declare-fun b!4274174 () Bool)

(assert (=> b!4274174 (= e!2653636 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274175 () Bool)

(assert (=> b!4274175 (= e!2653636 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 call!294197)) true) (content!7480 (t!353862 (t!353862 call!294197)))))))

(assert (= (and d!1261415 c!727598) b!4274174))

(assert (= (and d!1261415 (not c!727598)) b!4274175))

(declare-fun m!4869117 () Bool)

(assert (=> b!4274175 m!4869117))

(declare-fun m!4869119 () Bool)

(assert (=> b!4274175 m!4869119))

(assert (=> b!4273622 d!1261415))

(declare-fun d!1261417 () Bool)

(declare-fun lt!1513402 () Int)

(assert (=> d!1261417 (>= lt!1513402 0)))

(declare-fun e!2653637 () Int)

(assert (=> d!1261417 (= lt!1513402 e!2653637)))

(declare-fun c!727599 () Bool)

(assert (=> d!1261417 (= c!727599 ((_ is Nil!47325) lt!1513257))))

(assert (=> d!1261417 (= (size!34649 lt!1513257) lt!1513402)))

(declare-fun b!4274176 () Bool)

(assert (=> b!4274176 (= e!2653637 0)))

(declare-fun b!4274177 () Bool)

(assert (=> b!4274177 (= e!2653637 (+ 1 (size!34649 (t!353862 lt!1513257))))))

(assert (= (and d!1261417 c!727599) b!4274176))

(assert (= (and d!1261417 (not c!727599)) b!4274177))

(declare-fun m!4869121 () Bool)

(assert (=> b!4274177 m!4869121))

(assert (=> b!4273595 d!1261417))

(assert (=> b!4273595 d!1260929))

(assert (=> b!4273595 d!1260785))

(declare-fun d!1261419 () Bool)

(declare-fun lt!1513403 () Int)

(assert (=> d!1261419 (>= lt!1513403 0)))

(declare-fun e!2653638 () Int)

(assert (=> d!1261419 (= lt!1513403 e!2653638)))

(declare-fun c!727600 () Bool)

(assert (=> d!1261419 (= c!727600 ((_ is Nil!47325) lt!1513254))))

(assert (=> d!1261419 (= (size!34649 lt!1513254) lt!1513403)))

(declare-fun b!4274178 () Bool)

(assert (=> b!4274178 (= e!2653638 0)))

(declare-fun b!4274179 () Bool)

(assert (=> b!4274179 (= e!2653638 (+ 1 (size!34649 (t!353862 lt!1513254))))))

(assert (= (and d!1261419 c!727600) b!4274178))

(assert (= (and d!1261419 (not c!727600)) b!4274179))

(declare-fun m!4869123 () Bool)

(assert (=> b!4274179 m!4869123))

(assert (=> b!4273566 d!1261419))

(assert (=> b!4273566 d!1261297))

(assert (=> b!4273566 d!1260905))

(declare-fun d!1261421 () Bool)

(declare-fun lt!1513404 () List!47449)

(assert (=> d!1261421 (= lt!1513404 (list!17207 (xs!17613 (left!35211 (c!727096 x!742222)))))))

(assert (=> d!1261421 (= lt!1513404 (rec!35 (xs!17613 (left!35211 (c!727096 x!742222))) (size!34653 (xs!17613 (left!35211 (c!727096 x!742222)))) Nil!47325))))

(assert (=> d!1261421 (= (efficientList!545 (xs!17613 (left!35211 (c!727096 x!742222)))) lt!1513404)))

(declare-fun bs!601651 () Bool)

(assert (= bs!601651 d!1261421))

(assert (=> bs!601651 m!4867141))

(declare-fun m!4869125 () Bool)

(assert (=> bs!601651 m!4869125))

(assert (=> bs!601651 m!4869125))

(declare-fun m!4869127 () Bool)

(assert (=> bs!601651 m!4869127))

(assert (=> b!4273382 d!1261421))

(assert (=> b!4273353 d!1260647))

(declare-fun d!1261423 () Bool)

(declare-fun c!727601 () Bool)

(assert (=> d!1261423 (= c!727601 ((_ is Nil!47325) (t!353862 lt!1513210)))))

(declare-fun e!2653639 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261423 (= (content!7480 (t!353862 lt!1513210)) e!2653639)))

(declare-fun b!4274180 () Bool)

(assert (=> b!4274180 (= e!2653639 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274181 () Bool)

(assert (=> b!4274181 (= e!2653639 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 lt!1513210)) true) (content!7480 (t!353862 (t!353862 lt!1513210)))))))

(assert (= (and d!1261423 c!727601) b!4274180))

(assert (= (and d!1261423 (not c!727601)) b!4274181))

(declare-fun m!4869129 () Bool)

(assert (=> b!4274181 m!4869129))

(declare-fun m!4869131 () Bool)

(assert (=> b!4274181 m!4869131))

(assert (=> b!4273620 d!1261423))

(declare-fun d!1261425 () Bool)

(declare-fun c!727602 () Bool)

(assert (=> d!1261425 (= c!727602 ((_ is Nil!47325) (t!353862 (t!353862 (efficientList$default$2!189 (c!727096 x!742222))))))))

(declare-fun e!2653640 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261425 (= (content!7480 (t!353862 (t!353862 (efficientList$default$2!189 (c!727096 x!742222))))) e!2653640)))

(declare-fun b!4274182 () Bool)

(assert (=> b!4274182 (= e!2653640 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274183 () Bool)

(assert (=> b!4274183 (= e!2653640 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (t!353862 (t!353862 (efficientList$default$2!189 (c!727096 x!742222))))) true) (content!7480 (t!353862 (t!353862 (t!353862 (efficientList$default$2!189 (c!727096 x!742222))))))))))

(assert (= (and d!1261425 c!727602) b!4274182))

(assert (= (and d!1261425 (not c!727602)) b!4274183))

(declare-fun m!4869133 () Bool)

(assert (=> b!4274183 m!4869133))

(declare-fun m!4869135 () Bool)

(assert (=> b!4274183 m!4869135))

(assert (=> b!4273624 d!1261425))

(declare-fun b!4274187 () Bool)

(declare-fun e!2653642 () Bool)

(declare-fun lt!1513405 () List!47449)

(assert (=> b!4274187 (= e!2653642 (or (not (= (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) Nil!47325)) (= lt!1513405 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun b!4274185 () Bool)

(declare-fun e!2653641 () List!47449)

(assert (=> b!4274185 (= e!2653641 (Cons!47325 (h!52745 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (++!12082 (t!353862 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun d!1261427 () Bool)

(assert (=> d!1261427 e!2653642))

(declare-fun res!1755379 () Bool)

(assert (=> d!1261427 (=> (not res!1755379) (not e!2653642))))

(assert (=> d!1261427 (= res!1755379 (= (content!7480 lt!1513405) ((_ map or) (content!7480 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (content!7480 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (=> d!1261427 (= lt!1513405 e!2653641)))

(declare-fun c!727603 () Bool)

(assert (=> d!1261427 (= c!727603 ((_ is Nil!47325) (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> d!1261427 (= (++!12082 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) lt!1513405)))

(declare-fun b!4274184 () Bool)

(assert (=> b!4274184 (= e!2653641 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))

(declare-fun b!4274186 () Bool)

(declare-fun res!1755380 () Bool)

(assert (=> b!4274186 (=> (not res!1755380) (not e!2653642))))

(assert (=> b!4274186 (= res!1755380 (= (size!34649 lt!1513405) (+ (size!34649 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) (size!34649 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (= (and d!1261427 c!727603) b!4274184))

(assert (= (and d!1261427 (not c!727603)) b!4274185))

(assert (= (and d!1261427 res!1755379) b!4274186))

(assert (= (and b!4274186 res!1755380) b!4274187))

(assert (=> b!4274185 m!4867797))

(declare-fun m!4869137 () Bool)

(assert (=> b!4274185 m!4869137))

(declare-fun m!4869139 () Bool)

(assert (=> d!1261427 m!4869139))

(assert (=> d!1261427 m!4866745))

(declare-fun m!4869141 () Bool)

(assert (=> d!1261427 m!4869141))

(assert (=> d!1261427 m!4867797))

(declare-fun m!4869143 () Bool)

(assert (=> d!1261427 m!4869143))

(declare-fun m!4869145 () Bool)

(assert (=> b!4274186 m!4869145))

(assert (=> b!4274186 m!4866745))

(declare-fun m!4869147 () Bool)

(assert (=> b!4274186 m!4869147))

(assert (=> b!4274186 m!4867797))

(declare-fun m!4869149 () Bool)

(assert (=> b!4274186 m!4869149))

(assert (=> d!1261025 d!1261427))

(assert (=> d!1261025 d!1260555))

(declare-fun b!4274191 () Bool)

(declare-fun e!2653644 () Bool)

(declare-fun lt!1513406 () List!47449)

(assert (=> b!4274191 (= e!2653644 (or (not (= (efficientList$default$2!189 (c!727096 x!742222)) Nil!47325)) (= lt!1513406 (t!353862 (list!17205 (right!35541 (c!727096 x!742222)))))))))

(declare-fun b!4274189 () Bool)

(declare-fun e!2653643 () List!47449)

(assert (=> b!4274189 (= e!2653643 (Cons!47325 (h!52745 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))) (++!12082 (t!353862 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))) (efficientList$default$2!189 (c!727096 x!742222)))))))

(declare-fun d!1261429 () Bool)

(assert (=> d!1261429 e!2653644))

(declare-fun res!1755381 () Bool)

(assert (=> d!1261429 (=> (not res!1755381) (not e!2653644))))

(assert (=> d!1261429 (= res!1755381 (= (content!7480 lt!1513406) ((_ map or) (content!7480 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))) (content!7480 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (=> d!1261429 (= lt!1513406 e!2653643)))

(declare-fun c!727604 () Bool)

(assert (=> d!1261429 (= c!727604 ((_ is Nil!47325) (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))))))

(assert (=> d!1261429 (= (++!12082 (t!353862 (list!17205 (right!35541 (c!727096 x!742222)))) (efficientList$default$2!189 (c!727096 x!742222))) lt!1513406)))

(declare-fun b!4274188 () Bool)

(assert (=> b!4274188 (= e!2653643 (efficientList$default$2!189 (c!727096 x!742222)))))

(declare-fun b!4274190 () Bool)

(declare-fun res!1755382 () Bool)

(assert (=> b!4274190 (=> (not res!1755382) (not e!2653644))))

(assert (=> b!4274190 (= res!1755382 (= (size!34649 lt!1513406) (+ (size!34649 (t!353862 (list!17205 (right!35541 (c!727096 x!742222))))) (size!34649 (efficientList$default$2!189 (c!727096 x!742222))))))))

(assert (= (and d!1261429 c!727604) b!4274188))

(assert (= (and d!1261429 (not c!727604)) b!4274189))

(assert (= (and d!1261429 res!1755381) b!4274190))

(assert (= (and b!4274190 res!1755382) b!4274191))

(assert (=> b!4274189 m!4866859))

(declare-fun m!4869151 () Bool)

(assert (=> b!4274189 m!4869151))

(declare-fun m!4869153 () Bool)

(assert (=> d!1261429 m!4869153))

(assert (=> d!1261429 m!4867399))

(assert (=> d!1261429 m!4866859))

(assert (=> d!1261429 m!4867081))

(declare-fun m!4869155 () Bool)

(assert (=> b!4274190 m!4869155))

(assert (=> b!4274190 m!4867793))

(assert (=> b!4274190 m!4866859))

(assert (=> b!4274190 m!4867087))

(assert (=> b!4273594 d!1261429))

(declare-fun d!1261431 () Bool)

(declare-fun lt!1513407 () Int)

(assert (=> d!1261431 (>= lt!1513407 0)))

(declare-fun e!2653645 () Int)

(assert (=> d!1261431 (= lt!1513407 e!2653645)))

(declare-fun c!727605 () Bool)

(assert (=> d!1261431 (= c!727605 ((_ is Nil!47325) lt!1513259))))

(assert (=> d!1261431 (= (size!34649 lt!1513259) lt!1513407)))

(declare-fun b!4274192 () Bool)

(assert (=> b!4274192 (= e!2653645 0)))

(declare-fun b!4274193 () Bool)

(assert (=> b!4274193 (= e!2653645 (+ 1 (size!34649 (t!353862 lt!1513259))))))

(assert (= (and d!1261431 c!727605) b!4274192))

(assert (= (and d!1261431 (not c!727605)) b!4274193))

(declare-fun m!4869157 () Bool)

(assert (=> b!4274193 m!4869157))

(assert (=> b!4273600 d!1261431))

(assert (=> b!4273600 d!1261039))

(assert (=> b!4273600 d!1260785))

(declare-fun d!1261433 () Bool)

(declare-fun lt!1513408 () Int)

(assert (=> d!1261433 (>= lt!1513408 0)))

(declare-fun e!2653646 () Int)

(assert (=> d!1261433 (= lt!1513408 e!2653646)))

(declare-fun c!727606 () Bool)

(assert (=> d!1261433 (= c!727606 ((_ is Nil!47325) lt!1513198))))

(assert (=> d!1261433 (= (size!34649 lt!1513198) lt!1513408)))

(declare-fun b!4274194 () Bool)

(assert (=> b!4274194 (= e!2653646 0)))

(declare-fun b!4274195 () Bool)

(assert (=> b!4274195 (= e!2653646 (+ 1 (size!34649 (t!353862 lt!1513198))))))

(assert (= (and d!1261433 c!727606) b!4274194))

(assert (= (and d!1261433 (not c!727606)) b!4274195))

(declare-fun m!4869159 () Bool)

(assert (=> b!4274195 m!4869159))

(assert (=> b!4273328 d!1261433))

(declare-fun d!1261435 () Bool)

(declare-fun lt!1513409 () Int)

(assert (=> d!1261435 (>= lt!1513409 0)))

(declare-fun e!2653647 () Int)

(assert (=> d!1261435 (= lt!1513409 e!2653647)))

(declare-fun c!727607 () Bool)

(assert (=> d!1261435 (= c!727607 ((_ is Nil!47325) e!2653071))))

(assert (=> d!1261435 (= (size!34649 e!2653071) lt!1513409)))

(declare-fun b!4274196 () Bool)

(assert (=> b!4274196 (= e!2653647 0)))

(declare-fun b!4274197 () Bool)

(assert (=> b!4274197 (= e!2653647 (+ 1 (size!34649 (t!353862 e!2653071))))))

(assert (= (and d!1261435 c!727607) b!4274196))

(assert (= (and d!1261435 (not c!727607)) b!4274197))

(assert (=> b!4274197 m!4868647))

(assert (=> b!4273328 d!1261435))

(assert (=> b!4273328 d!1260785))

(declare-fun d!1261437 () Bool)

(declare-fun res!1755383 () Bool)

(declare-fun e!2653648 () Bool)

(assert (=> d!1261437 (=> (not res!1755383) (not e!2653648))))

(assert (=> d!1261437 (= res!1755383 (<= (size!34649 (list!17207 (xs!17613 (left!35211 (c!727096 x!742222))))) 512))))

(assert (=> d!1261437 (= (inv!62536 (left!35211 (c!727096 x!742222))) e!2653648)))

(declare-fun b!4274198 () Bool)

(declare-fun res!1755384 () Bool)

(assert (=> b!4274198 (=> (not res!1755384) (not e!2653648))))

(assert (=> b!4274198 (= res!1755384 (= (csize!28845 (left!35211 (c!727096 x!742222))) (size!34649 (list!17207 (xs!17613 (left!35211 (c!727096 x!742222)))))))))

(declare-fun b!4274199 () Bool)

(assert (=> b!4274199 (= e!2653648 (and (> (csize!28845 (left!35211 (c!727096 x!742222))) 0) (<= (csize!28845 (left!35211 (c!727096 x!742222))) 512)))))

(assert (= (and d!1261437 res!1755383) b!4274198))

(assert (= (and b!4274198 res!1755384) b!4274199))

(assert (=> d!1261437 m!4867141))

(assert (=> d!1261437 m!4867141))

(declare-fun m!4869161 () Bool)

(assert (=> d!1261437 m!4869161))

(assert (=> b!4274198 m!4867141))

(assert (=> b!4274198 m!4867141))

(assert (=> b!4274198 m!4869161))

(assert (=> b!4273440 d!1261437))

(declare-fun lt!1513410 () List!47449)

(declare-fun e!2653650 () Bool)

(declare-fun b!4274203 () Bool)

(assert (=> b!4274203 (= e!2653650 (or (not (= (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) Nil!47325)) (= lt!1513410 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(declare-fun b!4274201 () Bool)

(declare-fun e!2653649 () List!47449)

(assert (=> b!4274201 (= e!2653649 (Cons!47325 (h!52745 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (++!12082 (t!353862 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun d!1261439 () Bool)

(assert (=> d!1261439 e!2653650))

(declare-fun res!1755385 () Bool)

(assert (=> d!1261439 (=> (not res!1755385) (not e!2653650))))

(assert (=> d!1261439 (= res!1755385 (= (content!7480 lt!1513410) ((_ map or) (content!7480 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (content!7480 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (=> d!1261439 (= lt!1513410 e!2653649)))

(declare-fun c!727608 () Bool)

(assert (=> d!1261439 (= c!727608 ((_ is Nil!47325) (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (=> d!1261439 (= (++!12082 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))) lt!1513410)))

(declare-fun b!4274200 () Bool)

(assert (=> b!4274200 (= e!2653649 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4274202 () Bool)

(declare-fun res!1755386 () Bool)

(assert (=> b!4274202 (=> (not res!1755386) (not e!2653650))))

(assert (=> b!4274202 (= res!1755386 (= (size!34649 lt!1513410) (+ (size!34649 (t!353862 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (size!34649 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (= (and d!1261439 c!727608) b!4274200))

(assert (= (and d!1261439 (not c!727608)) b!4274201))

(assert (= (and d!1261439 res!1755385) b!4274202))

(assert (= (and b!4274202 res!1755386) b!4274203))

(assert (=> b!4274201 m!4866865))

(declare-fun m!4869163 () Bool)

(assert (=> b!4274201 m!4869163))

(declare-fun m!4869165 () Bool)

(assert (=> d!1261439 m!4869165))

(assert (=> d!1261439 m!4868143))

(assert (=> d!1261439 m!4866865))

(assert (=> d!1261439 m!4867095))

(declare-fun m!4869167 () Bool)

(assert (=> b!4274202 m!4869167))

(assert (=> b!4274202 m!4868765))

(assert (=> b!4274202 m!4866865))

(assert (=> b!4274202 m!4867101))

(assert (=> b!4273565 d!1261439))

(assert (=> b!4273420 d!1261251))

(assert (=> b!4273420 d!1261253))

(declare-fun b!4274204 () Bool)

(declare-fun tp!1308363 () Bool)

(declare-fun tp!1308364 () Bool)

(declare-fun e!2653651 () Bool)

(assert (=> b!4274204 (= e!2653651 (and (inv!62530 (left!35211 (left!35211 (right!35541 (c!727096 x!742222))))) tp!1308363 (inv!62530 (right!35541 (left!35211 (right!35541 (c!727096 x!742222))))) tp!1308364))))

(declare-fun b!4274205 () Bool)

(assert (=> b!4274205 (= e!2653651 (inv!62537 (xs!17613 (left!35211 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4273447 (= tp!1308343 (and (inv!62530 (left!35211 (right!35541 (c!727096 x!742222)))) e!2653651))))

(assert (= (and b!4273447 ((_ is Node!14307) (left!35211 (right!35541 (c!727096 x!742222))))) b!4274204))

(assert (= (and b!4273447 ((_ is Leaf!22116) (left!35211 (right!35541 (c!727096 x!742222))))) b!4274205))

(declare-fun m!4869169 () Bool)

(assert (=> b!4274204 m!4869169))

(declare-fun m!4869171 () Bool)

(assert (=> b!4274204 m!4869171))

(declare-fun m!4869173 () Bool)

(assert (=> b!4274205 m!4869173))

(assert (=> b!4273447 m!4867553))

(declare-fun e!2653653 () Bool)

(declare-fun b!4274206 () Bool)

(declare-fun tp!1308366 () Bool)

(declare-fun tp!1308365 () Bool)

(assert (=> b!4274206 (= e!2653653 (and (inv!62530 (left!35211 (right!35541 (right!35541 (c!727096 x!742222))))) tp!1308365 (inv!62530 (right!35541 (right!35541 (right!35541 (c!727096 x!742222))))) tp!1308366))))

(declare-fun b!4274207 () Bool)

(assert (=> b!4274207 (= e!2653653 (inv!62537 (xs!17613 (right!35541 (right!35541 (c!727096 x!742222))))))))

(assert (=> b!4273447 (= tp!1308344 (and (inv!62530 (right!35541 (right!35541 (c!727096 x!742222)))) e!2653653))))

(assert (= (and b!4273447 ((_ is Node!14307) (right!35541 (right!35541 (c!727096 x!742222))))) b!4274206))

(assert (= (and b!4273447 ((_ is Leaf!22116) (right!35541 (right!35541 (c!727096 x!742222))))) b!4274207))

(declare-fun m!4869175 () Bool)

(assert (=> b!4274206 m!4869175))

(declare-fun m!4869177 () Bool)

(assert (=> b!4274206 m!4869177))

(declare-fun m!4869179 () Bool)

(assert (=> b!4274207 m!4869179))

(assert (=> b!4273447 m!4867555))

(declare-fun tp!1308368 () Bool)

(declare-fun e!2653655 () Bool)

(declare-fun tp!1308367 () Bool)

(declare-fun b!4274208 () Bool)

(assert (=> b!4274208 (= e!2653655 (and (inv!62530 (left!35211 (left!35211 res!1755233))) tp!1308367 (inv!62530 (right!35541 (left!35211 res!1755233))) tp!1308368))))

(declare-fun b!4274209 () Bool)

(assert (=> b!4274209 (= e!2653655 (inv!62537 (xs!17613 (left!35211 res!1755233))))))

(assert (=> b!4273616 (= tp!1308356 (and (inv!62530 (left!35211 res!1755233)) e!2653655))))

(assert (= (and b!4273616 ((_ is Node!14307) (left!35211 res!1755233))) b!4274208))

(assert (= (and b!4273616 ((_ is Leaf!22116) (left!35211 res!1755233))) b!4274209))

(declare-fun m!4869181 () Bool)

(assert (=> b!4274208 m!4869181))

(declare-fun m!4869183 () Bool)

(assert (=> b!4274208 m!4869183))

(declare-fun m!4869185 () Bool)

(assert (=> b!4274209 m!4869185))

(assert (=> b!4273616 m!4867921))

(declare-fun e!2653657 () Bool)

(declare-fun b!4274210 () Bool)

(declare-fun tp!1308370 () Bool)

(declare-fun tp!1308369 () Bool)

(assert (=> b!4274210 (= e!2653657 (and (inv!62530 (left!35211 (right!35541 res!1755233))) tp!1308369 (inv!62530 (right!35541 (right!35541 res!1755233))) tp!1308370))))

(declare-fun b!4274211 () Bool)

(assert (=> b!4274211 (= e!2653657 (inv!62537 (xs!17613 (right!35541 res!1755233))))))

(assert (=> b!4273616 (= tp!1308355 (and (inv!62530 (right!35541 res!1755233)) e!2653657))))

(assert (= (and b!4273616 ((_ is Node!14307) (right!35541 res!1755233))) b!4274210))

(assert (= (and b!4273616 ((_ is Leaf!22116) (right!35541 res!1755233))) b!4274211))

(declare-fun m!4869187 () Bool)

(assert (=> b!4274210 m!4869187))

(declare-fun m!4869189 () Bool)

(assert (=> b!4274210 m!4869189))

(declare-fun m!4869191 () Bool)

(assert (=> b!4274211 m!4869191))

(assert (=> b!4273616 m!4867923))

(declare-fun e!2653659 () Bool)

(declare-fun tp!1308372 () Bool)

(declare-fun b!4274212 () Bool)

(declare-fun tp!1308371 () Bool)

(assert (=> b!4274212 (= e!2653659 (and (inv!62530 (left!35211 (left!35211 (left!35211 (c!727096 x!742222))))) tp!1308371 (inv!62530 (right!35541 (left!35211 (left!35211 (c!727096 x!742222))))) tp!1308372))))

(declare-fun b!4274213 () Bool)

(assert (=> b!4274213 (= e!2653659 (inv!62537 (xs!17613 (left!35211 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4273445 (= tp!1308341 (and (inv!62530 (left!35211 (left!35211 (c!727096 x!742222)))) e!2653659))))

(assert (= (and b!4273445 ((_ is Node!14307) (left!35211 (left!35211 (c!727096 x!742222))))) b!4274212))

(assert (= (and b!4273445 ((_ is Leaf!22116) (left!35211 (left!35211 (c!727096 x!742222))))) b!4274213))

(declare-fun m!4869193 () Bool)

(assert (=> b!4274212 m!4869193))

(declare-fun m!4869195 () Bool)

(assert (=> b!4274212 m!4869195))

(declare-fun m!4869197 () Bool)

(assert (=> b!4274213 m!4869197))

(assert (=> b!4273445 m!4867547))

(declare-fun b!4274214 () Bool)

(declare-fun tp!1308373 () Bool)

(declare-fun tp!1308374 () Bool)

(declare-fun e!2653661 () Bool)

(assert (=> b!4274214 (= e!2653661 (and (inv!62530 (left!35211 (right!35541 (left!35211 (c!727096 x!742222))))) tp!1308373 (inv!62530 (right!35541 (right!35541 (left!35211 (c!727096 x!742222))))) tp!1308374))))

(declare-fun b!4274215 () Bool)

(assert (=> b!4274215 (= e!2653661 (inv!62537 (xs!17613 (right!35541 (left!35211 (c!727096 x!742222))))))))

(assert (=> b!4273445 (= tp!1308342 (and (inv!62530 (right!35541 (left!35211 (c!727096 x!742222)))) e!2653661))))

(assert (= (and b!4273445 ((_ is Node!14307) (right!35541 (left!35211 (c!727096 x!742222))))) b!4274214))

(assert (= (and b!4273445 ((_ is Leaf!22116) (right!35541 (left!35211 (c!727096 x!742222))))) b!4274215))

(declare-fun m!4869199 () Bool)

(assert (=> b!4274214 m!4869199))

(declare-fun m!4869201 () Bool)

(assert (=> b!4274214 m!4869201))

(declare-fun m!4869203 () Bool)

(assert (=> b!4274215 m!4869203))

(assert (=> b!4273445 m!4867549))

(check-sat (not b!4274137) (not b!4273978) (not b!4274186) (not bm!294200) (not b!4273608) (not b!4273700) (not b!4274179) (not b!4274017) (not b!4274034) (not b!4273993) (not d!1261309) (not b!4274181) (not b!4273736) (not b!4273609) (not d!1261319) (not d!1261379) (not b!4274092) (not b!4274197) (not bm!294201) (not b!4273635) (not d!1261347) (not b!4273947) (not b!4274141) (not b!4273680) (not b!4274208) (not b!4273711) (not b!4273674) (not b!4274172) (not b!4274118) (not b!4273709) (not b!4274072) (not d!1261353) (not d!1261421) (not d!1261247) (not b!4273714) (not b!4273563) (not b!4273730) (not b!4273669) (not b!4273783) (not b!4273788) (not b!4273630) (not b!4274139) (not b!4273616) (not b!4274162) (not b!4273654) (not b!4274133) (not d!1260969) (not b!4274116) (not b!4273683) (not d!1261329) (not d!1261279) (not b!4274018) (not b!4274078) (not d!1261371) (not b!4273705) (not b!4273693) (not b!4273753) (not d!1261263) (not b!4274063) (not b!4273666) (not b!4274041) (not b!4273697) (not b!4273956) (not b!4273939) (not b!4274016) (not bm!294197) (not b!4274031) (not d!1261291) (not b!4273777) (not b!4274106) (not b!4273662) (not d!1261325) (not b!4274026) (not b!4274209) (not d!1260959) (not b!4274076) (not b!4273960) (not b!4273689) (not b!4274003) (not b!4274131) (not bm!294202) (not b!4273968) (not b!4273447) (not b!4273950) (not b!4274166) (not b!4273698) (not b!4274129) (not b!4274190) (not b!4274050) (not b!4273734) (not b!4274113) (not b!4274056) (not d!1261227) (not b!4273996) (not b!4274175) (not b!4274169) (not b!4273658) (not b!4274167) (not b!4273774) (not b!4274054) (not b!4274110) (not b!4273779) (not b!4273703) (not d!1261373) (not b!4274061) (not b!4274128) (not b!4273716) (not b!4274201) (not b!4274089) (not b!4274059) (not b!4274123) (not b!4273653) (not b!4274127) (not b!4273718) (not b!4273673) (not b!4274151) (not b!4274153) (not b!4273761) (not b!4273819) (not b!4273787) (not b!4273961) (not b!4273691) (not b!4274120) (not b!4273670) (not b!4274210) (not b!4273769) (not bm!294199) (not b!4273584) (not b!4273719) (not b!4273998) (not d!1261439) (not b!4274171) (not b!4274079) (not b!4274048) (not b!4274024) (not b!4274068) (not b!4273644) (not b!4273954) (not b!4273583) (not d!1261313) (not d!1261317) (not b!4273953) (not b!4274117) (not b!4273581) (not b!4274185) (not b!4273943) (not b!4273702) (not b!4273967) (not b!4274207) (not d!1261289) (not d!1261315) (not b!4274164) (not b!4274070) (not b!4274177) (not b!4273803) (not b!4274142) (not d!1261261) (not d!1261411) (not b!4273642) (not b!4274010) (not d!1261413) (not b!4274211) (not b!4274143) (not b!4274165) (not b!4274154) (not b!4273949) (not d!1261241) (not b!4273585) (not b!4273701) (not b!4274020) (not b!4274122) (not b!4274037) (not b!4274193) (not d!1261437) (not b!4274065) (not b!4273744) (not b!4274095) (not b!4274205) (not b!4273664) (not b!4273685) (not b!4273773) (not b!4273952) (not b!4273649) (not b!4273722) (not b!4273941) (not b!4274157) (not d!1261331) (not b!4274015) (not b!4274183) (not b!4274023) (not b!4273964) (not b!4274013) (not b!4274115) (not b!4274108) (not b!4273646) (not d!1261349) (not b!4274036) (not b!4274005) (not b!4273794) (not b!4273972) (not b!4273951) (not b!4274202) (not b!4274014) (not b!4273707) (not b!4273589) (not b!4273976) (not b!4273660) (not d!1260911) (not b!4274140) (not b!4274135) (not b!4274083) (not b!4274045) (not b!4273712) (not b!4274215) (not b!4274062) (not b!4274104) (not b!4273982) (not b!4274099) (not b!4273980) (not b!4274001) (not b!4273590) (not b!4273640) (not b!4273754) (not b!4273771) (not b!4273677) (not b!4273710) (not b!4274012) (not d!1261229) (not b!4274114) (not b!4274198) (not b!4273704) (not d!1261381) (not b!4274159) (not b!4273728) (not b!4273802) (not d!1261405) (not b!4274006) (not b!4273586) (not d!1261245) (not d!1261275) (not d!1261351) (not b!4273945) (not d!1260985) (not b!4273631) (not b!4273724) (not b!4274214) (not b!4274144) (not b!4273994) (not b!4274156) (not b!4273742) (not d!1260953) (not b!4273973) (not b!4274086) (not b!4273706) (not b!4273445) (not b!4274098) (not b!4274145) (not b!4273648) (not b!4273970) (not b!4273708) (not d!1260961) (not d!1261293) (not b!4274028) (not b!4273695) (not d!1260937) (not b!4274204) (not d!1261427) (not b!4273687) (not b!4273957) (not d!1261259) (not b!4274094) (not b!4274021) (not b!4274195) (not b!4274161) (not b!4273991) (not d!1261273) (not b!4273795) (not b!4273760) (not b!4274149) (not b!4274060) (not b!4273816) (not b!4273818) (not b!4273597) (not d!1261343) (not d!1260957) (not b!4273745) (not d!1261281) (not b!4273562) (not b!4273636) (not b!4274102) (not d!1261429) (not b!4274008) (not b!4273639) (not b!4274074) (not b!4273989) (not b!4274212) (not b!4273657) (not b!4273999) (not b!4274189) (not b!4274040) (not b!4273815) (not d!1260931) (not b!4273817) (not b!4274206) (not b!4273626) (not b!4273806) (not d!1261345) (not b!4274213) (not b!4274051) (not b!4273675) (not b!4274168) (not d!1261311) (not b!4273627) (not b!4274112) (not b!4274147))
(check-sat)
(get-model)

(declare-fun d!1261657 () Bool)

(declare-fun e!2653810 () Bool)

(assert (=> d!1261657 e!2653810))

(declare-fun res!1755473 () Bool)

(assert (=> d!1261657 (=> (not res!1755473) (not e!2653810))))

(declare-fun lt!1513510 () BalanceConc!28124)

(assert (=> d!1261657 (= res!1755473 (= (list!17203 lt!1513510) (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))

(assert (=> d!1261657 (= lt!1513510 (BalanceConc!28125 (fromList!928 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))

(assert (=> d!1261657 (= (fromListB!2670 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))) lt!1513510)))

(declare-fun b!4274495 () Bool)

(assert (=> b!4274495 (= e!2653810 (isBalanced!3853 (fromList!928 (Cons!47325 #x006F (Cons!47325 #x0062 (Cons!47325 #x006A (Cons!47325 #x0065 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))

(assert (= (and d!1261657 res!1755473) b!4274495))

(declare-fun m!4869821 () Bool)

(assert (=> d!1261657 m!4869821))

(declare-fun m!4869823 () Bool)

(assert (=> d!1261657 m!4869823))

(assert (=> b!4274495 m!4869823))

(assert (=> b!4274495 m!4869823))

(declare-fun m!4869825 () Bool)

(assert (=> b!4274495 m!4869825))

(assert (=> d!1260985 d!1261657))

(declare-fun b!4274496 () Bool)

(declare-fun res!1755479 () Bool)

(declare-fun e!2653812 () Bool)

(assert (=> b!4274496 (=> (not res!1755479) (not e!2653812))))

(assert (=> b!4274496 (= res!1755479 (<= (- (height!1884 (left!35211 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222))))) (height!1884 (right!35541 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222)))))) 1))))

(declare-fun b!4274497 () Bool)

(declare-fun e!2653811 () Bool)

(assert (=> b!4274497 (= e!2653811 e!2653812)))

(declare-fun res!1755477 () Bool)

(assert (=> b!4274497 (=> (not res!1755477) (not e!2653812))))

(assert (=> b!4274497 (= res!1755477 (<= (- 1) (- (height!1884 (left!35211 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222))))) (height!1884 (right!35541 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4274498 () Bool)

(declare-fun res!1755476 () Bool)

(assert (=> b!4274498 (=> (not res!1755476) (not e!2653812))))

(assert (=> b!4274498 (= res!1755476 (not (isEmpty!28005 (left!35211 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222)))))))))

(declare-fun d!1261659 () Bool)

(declare-fun res!1755478 () Bool)

(assert (=> d!1261659 (=> res!1755478 e!2653811)))

(assert (=> d!1261659 (= res!1755478 (not ((_ is Node!14307) (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222))))))))

(assert (=> d!1261659 (= (isBalanced!3853 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222)))) e!2653811)))

(declare-fun b!4274499 () Bool)

(declare-fun res!1755474 () Bool)

(assert (=> b!4274499 (=> (not res!1755474) (not e!2653812))))

(assert (=> b!4274499 (= res!1755474 (isBalanced!3853 (left!35211 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4274500 () Bool)

(declare-fun res!1755475 () Bool)

(assert (=> b!4274500 (=> (not res!1755475) (not e!2653812))))

(assert (=> b!4274500 (= res!1755475 (isBalanced!3853 (right!35541 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun b!4274501 () Bool)

(assert (=> b!4274501 (= e!2653812 (not (isEmpty!28005 (right!35541 (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222)))))))))

(assert (= (and d!1261659 (not res!1755478)) b!4274497))

(assert (= (and b!4274497 res!1755477) b!4274496))

(assert (= (and b!4274496 res!1755479) b!4274499))

(assert (= (and b!4274499 res!1755474) b!4274500))

(assert (= (and b!4274500 res!1755475) b!4274498))

(assert (= (and b!4274498 res!1755476) b!4274501))

(declare-fun m!4869827 () Bool)

(assert (=> b!4274497 m!4869827))

(declare-fun m!4869829 () Bool)

(assert (=> b!4274497 m!4869829))

(declare-fun m!4869831 () Bool)

(assert (=> b!4274499 m!4869831))

(assert (=> b!4274496 m!4869827))

(assert (=> b!4274496 m!4869829))

(declare-fun m!4869833 () Bool)

(assert (=> b!4274498 m!4869833))

(declare-fun m!4869835 () Bool)

(assert (=> b!4274501 m!4869835))

(declare-fun m!4869837 () Bool)

(assert (=> b!4274500 m!4869837))

(assert (=> b!4273597 d!1261659))

(declare-fun d!1261661 () Bool)

(declare-fun e!2653813 () Bool)

(assert (=> d!1261661 e!2653813))

(declare-fun res!1755480 () Bool)

(assert (=> d!1261661 (=> (not res!1755480) (not e!2653813))))

(declare-fun lt!1513511 () Conc!14307)

(assert (=> d!1261661 (= res!1755480 (= (list!17205 lt!1513511) (value!249896 (toValue!14 thiss!2319 x!742222))))))

(assert (=> d!1261661 (= lt!1513511 (choose!26061 (value!249896 (toValue!14 thiss!2319 x!742222))))))

(assert (=> d!1261661 (= (fromList!928 (value!249896 (toValue!14 thiss!2319 x!742222))) lt!1513511)))

(declare-fun b!4274502 () Bool)

(assert (=> b!4274502 (= e!2653813 (isBalanced!3853 lt!1513511))))

(assert (= (and d!1261661 res!1755480) b!4274502))

(declare-fun m!4869839 () Bool)

(assert (=> d!1261661 m!4869839))

(declare-fun m!4869841 () Bool)

(assert (=> d!1261661 m!4869841))

(declare-fun m!4869843 () Bool)

(assert (=> b!4274502 m!4869843))

(assert (=> b!4273597 d!1261661))

(assert (=> b!4273581 d!1261231))

(assert (=> b!4273581 d!1261233))

(declare-fun lt!1513512 () List!47449)

(declare-fun e!2653815 () Bool)

(declare-fun b!4274506 () Bool)

(assert (=> b!4274506 (= e!2653815 (or (not (= (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) Nil!47325)) (= lt!1513512 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(declare-fun b!4274504 () Bool)

(declare-fun e!2653814 () List!47449)

(assert (=> b!4274504 (= e!2653814 (Cons!47325 (h!52745 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(declare-fun d!1261663 () Bool)

(assert (=> d!1261663 e!2653815))

(declare-fun res!1755481 () Bool)

(assert (=> d!1261663 (=> (not res!1755481) (not e!2653815))))

(assert (=> d!1261663 (= res!1755481 (= (content!7480 lt!1513512) ((_ map or) (content!7480 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (content!7480 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))))

(assert (=> d!1261663 (= lt!1513512 e!2653814)))

(declare-fun c!727699 () Bool)

(assert (=> d!1261663 (= c!727699 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(assert (=> d!1261663 (= (++!12082 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) lt!1513512)))

(declare-fun b!4274503 () Bool)

(assert (=> b!4274503 (= e!2653814 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4274505 () Bool)

(declare-fun res!1755482 () Bool)

(assert (=> b!4274505 (=> (not res!1755482) (not e!2653815))))

(assert (=> b!4274505 (= res!1755482 (= (size!34649 lt!1513512) (+ (size!34649 (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (size!34649 (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))))

(assert (= (and d!1261663 c!727699) b!4274503))

(assert (= (and d!1261663 (not c!727699)) b!4274504))

(assert (= (and d!1261663 res!1755481) b!4274505))

(assert (= (and b!4274505 res!1755482) b!4274506))

(assert (=> b!4274504 m!4867871))

(declare-fun m!4869845 () Bool)

(assert (=> b!4274504 m!4869845))

(declare-fun m!4869847 () Bool)

(assert (=> d!1261663 m!4869847))

(assert (=> d!1261663 m!4867869))

(declare-fun m!4869849 () Bool)

(assert (=> d!1261663 m!4869849))

(assert (=> d!1261663 m!4867871))

(declare-fun m!4869851 () Bool)

(assert (=> d!1261663 m!4869851))

(declare-fun m!4869853 () Bool)

(assert (=> b!4274505 m!4869853))

(assert (=> b!4274505 m!4867869))

(declare-fun m!4869855 () Bool)

(assert (=> b!4274505 m!4869855))

(assert (=> b!4274505 m!4867871))

(declare-fun m!4869857 () Bool)

(assert (=> b!4274505 m!4869857))

(assert (=> b!4273590 d!1261663))

(declare-fun b!4274510 () Bool)

(declare-fun e!2653817 () List!47449)

(assert (=> b!4274510 (= e!2653817 (++!12082 (list!17205 (left!35211 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (list!17205 (right!35541 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(declare-fun d!1261665 () Bool)

(declare-fun c!727700 () Bool)

(assert (=> d!1261665 (= c!727700 ((_ is Empty!14307) (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653816 () List!47449)

(assert (=> d!1261665 (= (list!17205 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653816)))

(declare-fun b!4274508 () Bool)

(assert (=> b!4274508 (= e!2653816 e!2653817)))

(declare-fun c!727701 () Bool)

(assert (=> b!4274508 (= c!727701 ((_ is Leaf!22116) (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4274509 () Bool)

(assert (=> b!4274509 (= e!2653817 (list!17207 (xs!17613 (left!35211 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun b!4274507 () Bool)

(assert (=> b!4274507 (= e!2653816 Nil!47325)))

(assert (= (and d!1261665 c!727700) b!4274507))

(assert (= (and d!1261665 (not c!727700)) b!4274508))

(assert (= (and b!4274508 c!727701) b!4274509))

(assert (= (and b!4274508 (not c!727701)) b!4274510))

(declare-fun m!4869859 () Bool)

(assert (=> b!4274510 m!4869859))

(declare-fun m!4869861 () Bool)

(assert (=> b!4274510 m!4869861))

(assert (=> b!4274510 m!4869859))

(assert (=> b!4274510 m!4869861))

(declare-fun m!4869863 () Bool)

(assert (=> b!4274510 m!4869863))

(declare-fun m!4869865 () Bool)

(assert (=> b!4274509 m!4869865))

(assert (=> b!4273590 d!1261665))

(declare-fun b!4274514 () Bool)

(declare-fun e!2653819 () List!47449)

(assert (=> b!4274514 (= e!2653819 (++!12082 (list!17205 (left!35211 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))) (list!17205 (right!35541 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))))

(declare-fun d!1261667 () Bool)

(declare-fun c!727702 () Bool)

(assert (=> d!1261667 (= c!727702 ((_ is Empty!14307) (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun e!2653818 () List!47449)

(assert (=> d!1261667 (= (list!17205 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) e!2653818)))

(declare-fun b!4274512 () Bool)

(assert (=> b!4274512 (= e!2653818 e!2653819)))

(declare-fun c!727703 () Bool)

(assert (=> b!4274512 (= c!727703 ((_ is Leaf!22116) (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(declare-fun b!4274513 () Bool)

(assert (=> b!4274513 (= e!2653819 (list!17207 (xs!17613 (right!35541 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222)))))))))))

(declare-fun b!4274511 () Bool)

(assert (=> b!4274511 (= e!2653818 Nil!47325)))

(assert (= (and d!1261667 c!727702) b!4274511))

(assert (= (and d!1261667 (not c!727702)) b!4274512))

(assert (= (and b!4274512 c!727703) b!4274513))

(assert (= (and b!4274512 (not c!727703)) b!4274514))

(declare-fun m!4869867 () Bool)

(assert (=> b!4274514 m!4869867))

(declare-fun m!4869869 () Bool)

(assert (=> b!4274514 m!4869869))

(assert (=> b!4274514 m!4869867))

(assert (=> b!4274514 m!4869869))

(declare-fun m!4869871 () Bool)

(assert (=> b!4274514 m!4869871))

(declare-fun m!4869873 () Bool)

(assert (=> b!4274513 m!4869873))

(assert (=> b!4273590 d!1261667))

(declare-fun b!4274518 () Bool)

(declare-fun e!2653821 () Bool)

(declare-fun lt!1513513 () List!47449)

(assert (=> b!4274518 (= e!2653821 (or (not (= (list!17205 (right!35541 lt!1513227)) Nil!47325)) (= lt!1513513 (list!17205 (left!35211 lt!1513227)))))))

(declare-fun b!4274516 () Bool)

(declare-fun e!2653820 () List!47449)

(assert (=> b!4274516 (= e!2653820 (Cons!47325 (h!52745 (list!17205 (left!35211 lt!1513227))) (++!12082 (t!353862 (list!17205 (left!35211 lt!1513227))) (list!17205 (right!35541 lt!1513227)))))))

(declare-fun d!1261669 () Bool)

(assert (=> d!1261669 e!2653821))

(declare-fun res!1755483 () Bool)

(assert (=> d!1261669 (=> (not res!1755483) (not e!2653821))))

(assert (=> d!1261669 (= res!1755483 (= (content!7480 lt!1513513) ((_ map or) (content!7480 (list!17205 (left!35211 lt!1513227))) (content!7480 (list!17205 (right!35541 lt!1513227))))))))

(assert (=> d!1261669 (= lt!1513513 e!2653820)))

(declare-fun c!727704 () Bool)

(assert (=> d!1261669 (= c!727704 ((_ is Nil!47325) (list!17205 (left!35211 lt!1513227))))))

(assert (=> d!1261669 (= (++!12082 (list!17205 (left!35211 lt!1513227)) (list!17205 (right!35541 lt!1513227))) lt!1513513)))

(declare-fun b!4274515 () Bool)

(assert (=> b!4274515 (= e!2653820 (list!17205 (right!35541 lt!1513227)))))

(declare-fun b!4274517 () Bool)

(declare-fun res!1755484 () Bool)

(assert (=> b!4274517 (=> (not res!1755484) (not e!2653821))))

(assert (=> b!4274517 (= res!1755484 (= (size!34649 lt!1513513) (+ (size!34649 (list!17205 (left!35211 lt!1513227))) (size!34649 (list!17205 (right!35541 lt!1513227))))))))

(assert (= (and d!1261669 c!727704) b!4274515))

(assert (= (and d!1261669 (not c!727704)) b!4274516))

(assert (= (and d!1261669 res!1755483) b!4274517))

(assert (= (and b!4274517 res!1755484) b!4274518))

(assert (=> b!4274516 m!4867911))

(declare-fun m!4869875 () Bool)

(assert (=> b!4274516 m!4869875))

(declare-fun m!4869877 () Bool)

(assert (=> d!1261669 m!4869877))

(assert (=> d!1261669 m!4867909))

(declare-fun m!4869879 () Bool)

(assert (=> d!1261669 m!4869879))

(assert (=> d!1261669 m!4867911))

(declare-fun m!4869881 () Bool)

(assert (=> d!1261669 m!4869881))

(declare-fun m!4869883 () Bool)

(assert (=> b!4274517 m!4869883))

(assert (=> b!4274517 m!4867909))

(declare-fun m!4869885 () Bool)

(assert (=> b!4274517 m!4869885))

(assert (=> b!4274517 m!4867911))

(declare-fun m!4869887 () Bool)

(assert (=> b!4274517 m!4869887))

(assert (=> b!4273609 d!1261669))

(declare-fun b!4274522 () Bool)

(declare-fun e!2653823 () List!47449)

(assert (=> b!4274522 (= e!2653823 (++!12082 (list!17205 (left!35211 (left!35211 lt!1513227))) (list!17205 (right!35541 (left!35211 lt!1513227)))))))

(declare-fun d!1261671 () Bool)

(declare-fun c!727705 () Bool)

(assert (=> d!1261671 (= c!727705 ((_ is Empty!14307) (left!35211 lt!1513227)))))

(declare-fun e!2653822 () List!47449)

(assert (=> d!1261671 (= (list!17205 (left!35211 lt!1513227)) e!2653822)))

(declare-fun b!4274520 () Bool)

(assert (=> b!4274520 (= e!2653822 e!2653823)))

(declare-fun c!727706 () Bool)

(assert (=> b!4274520 (= c!727706 ((_ is Leaf!22116) (left!35211 lt!1513227)))))

(declare-fun b!4274521 () Bool)

(assert (=> b!4274521 (= e!2653823 (list!17207 (xs!17613 (left!35211 lt!1513227))))))

(declare-fun b!4274519 () Bool)

(assert (=> b!4274519 (= e!2653822 Nil!47325)))

(assert (= (and d!1261671 c!727705) b!4274519))

(assert (= (and d!1261671 (not c!727705)) b!4274520))

(assert (= (and b!4274520 c!727706) b!4274521))

(assert (= (and b!4274520 (not c!727706)) b!4274522))

(declare-fun m!4869889 () Bool)

(assert (=> b!4274522 m!4869889))

(declare-fun m!4869891 () Bool)

(assert (=> b!4274522 m!4869891))

(assert (=> b!4274522 m!4869889))

(assert (=> b!4274522 m!4869891))

(declare-fun m!4869893 () Bool)

(assert (=> b!4274522 m!4869893))

(declare-fun m!4869895 () Bool)

(assert (=> b!4274521 m!4869895))

(assert (=> b!4273609 d!1261671))

(declare-fun b!4274526 () Bool)

(declare-fun e!2653825 () List!47449)

(assert (=> b!4274526 (= e!2653825 (++!12082 (list!17205 (left!35211 (right!35541 lt!1513227))) (list!17205 (right!35541 (right!35541 lt!1513227)))))))

(declare-fun d!1261673 () Bool)

(declare-fun c!727707 () Bool)

(assert (=> d!1261673 (= c!727707 ((_ is Empty!14307) (right!35541 lt!1513227)))))

(declare-fun e!2653824 () List!47449)

(assert (=> d!1261673 (= (list!17205 (right!35541 lt!1513227)) e!2653824)))

(declare-fun b!4274524 () Bool)

(assert (=> b!4274524 (= e!2653824 e!2653825)))

(declare-fun c!727708 () Bool)

(assert (=> b!4274524 (= c!727708 ((_ is Leaf!22116) (right!35541 lt!1513227)))))

(declare-fun b!4274525 () Bool)

(assert (=> b!4274525 (= e!2653825 (list!17207 (xs!17613 (right!35541 lt!1513227))))))

(declare-fun b!4274523 () Bool)

(assert (=> b!4274523 (= e!2653824 Nil!47325)))

(assert (= (and d!1261673 c!727707) b!4274523))

(assert (= (and d!1261673 (not c!727707)) b!4274524))

(assert (= (and b!4274524 c!727708) b!4274525))

(assert (= (and b!4274524 (not c!727708)) b!4274526))

(declare-fun m!4869897 () Bool)

(assert (=> b!4274526 m!4869897))

(declare-fun m!4869899 () Bool)

(assert (=> b!4274526 m!4869899))

(assert (=> b!4274526 m!4869897))

(assert (=> b!4274526 m!4869899))

(declare-fun m!4869901 () Bool)

(assert (=> b!4274526 m!4869901))

(declare-fun m!4869903 () Bool)

(assert (=> b!4274525 m!4869903))

(assert (=> b!4273609 d!1261673))

(declare-fun d!1261675 () Bool)

(declare-fun e!2653826 () Bool)

(assert (=> d!1261675 e!2653826))

(declare-fun res!1755485 () Bool)

(assert (=> d!1261675 (=> (not res!1755485) (not e!2653826))))

(declare-fun lt!1513514 () BalanceConc!28124)

(assert (=> d!1261675 (= res!1755485 (= (list!17203 lt!1513514) (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325)))))))

(assert (=> d!1261675 (= lt!1513514 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325))))))))

(assert (=> d!1261675 (= (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325)))) lt!1513514)))

(declare-fun b!4274527 () Bool)

(assert (=> b!4274527 (= e!2653826 (isBalanced!3853 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 Nil!47325))))))))

(assert (= (and d!1261675 res!1755485) b!4274527))

(declare-fun m!4869905 () Bool)

(assert (=> d!1261675 m!4869905))

(declare-fun m!4869907 () Bool)

(assert (=> d!1261675 m!4869907))

(assert (=> b!4274527 m!4869907))

(assert (=> b!4274527 m!4869907))

(declare-fun m!4869909 () Bool)

(assert (=> b!4274527 m!4869909))

(assert (=> d!1260931 d!1261675))

(declare-fun d!1261677 () Bool)

(assert (=> d!1261677 (= (list!17207 (xs!17613 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))) (innerList!14367 (xs!17613 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (=> b!4273589 d!1261677))

(declare-fun d!1261679 () Bool)

(assert (=> d!1261679 (= (list!17207 (xs!17613 lt!1513227)) (innerList!14367 (xs!17613 lt!1513227)))))

(assert (=> b!4273608 d!1261679))

(assert (=> b!4273616 d!1261283))

(assert (=> b!4273616 d!1261285))

(declare-fun d!1261681 () Bool)

(declare-fun e!2653827 () Bool)

(assert (=> d!1261681 e!2653827))

(declare-fun res!1755486 () Bool)

(assert (=> d!1261681 (=> (not res!1755486) (not e!2653827))))

(declare-fun lt!1513515 () BalanceConc!28124)

(assert (=> d!1261681 (= res!1755486 (= (list!17203 lt!1513515) (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325)))))))))))

(assert (=> d!1261681 (= lt!1513515 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325))))))))))))

(assert (=> d!1261681 (= (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325)))))))) lt!1513515)))

(declare-fun b!4274528 () Bool)

(assert (=> b!4274528 (= e!2653827 (isBalanced!3853 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x0078 (Cons!47325 #x0074 (Cons!47325 #x0065 (Cons!47325 #x006E (Cons!47325 #x0064 (Cons!47325 #x0073 Nil!47325))))))))))))

(assert (= (and d!1261681 res!1755486) b!4274528))

(declare-fun m!4869911 () Bool)

(assert (=> d!1261681 m!4869911))

(declare-fun m!4869913 () Bool)

(assert (=> d!1261681 m!4869913))

(assert (=> b!4274528 m!4869913))

(assert (=> b!4274528 m!4869913))

(declare-fun m!4869915 () Bool)

(assert (=> b!4274528 m!4869915))

(assert (=> d!1260959 d!1261681))

(declare-fun d!1261683 () Bool)

(declare-fun e!2653828 () Bool)

(assert (=> d!1261683 e!2653828))

(declare-fun res!1755487 () Bool)

(assert (=> d!1261683 (=> (not res!1755487) (not e!2653828))))

(declare-fun lt!1513516 () BalanceConc!28124)

(assert (=> d!1261683 (= res!1755487 (= (list!17203 lt!1513516) (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325))))))

(assert (=> d!1261683 (= lt!1513516 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325)))))))

(assert (=> d!1261683 (= (fromListB!2670 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325))) lt!1513516)))

(declare-fun b!4274529 () Bool)

(assert (=> b!4274529 (= e!2653828 (isBalanced!3853 (fromList!928 (Cons!47325 #x0069 (Cons!47325 #x0066 Nil!47325)))))))

(assert (= (and d!1261683 res!1755487) b!4274529))

(declare-fun m!4869917 () Bool)

(assert (=> d!1261683 m!4869917))

(declare-fun m!4869919 () Bool)

(assert (=> d!1261683 m!4869919))

(assert (=> b!4274529 m!4869919))

(assert (=> b!4274529 m!4869919))

(declare-fun m!4869921 () Bool)

(assert (=> b!4274529 m!4869921))

(assert (=> d!1260937 d!1261683))

(declare-fun d!1261685 () Bool)

(declare-fun e!2653829 () Bool)

(assert (=> d!1261685 e!2653829))

(declare-fun res!1755488 () Bool)

(assert (=> d!1261685 (=> (not res!1755488) (not e!2653829))))

(declare-fun lt!1513517 () BalanceConc!28124)

(assert (=> d!1261685 (= res!1755488 (= (list!17203 lt!1513517) (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325)))))))))

(assert (=> d!1261685 (= lt!1513517 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325))))))))))

(assert (=> d!1261685 (= (fromListB!2670 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325)))))) lt!1513517)))

(declare-fun b!4274530 () Bool)

(assert (=> b!4274530 (= e!2653829 (isBalanced!3853 (fromList!928 (Cons!47325 #x0065 (Cons!47325 #x0072 (Cons!47325 #x0072 (Cons!47325 #x006F (Cons!47325 #x0072 Nil!47325))))))))))

(assert (= (and d!1261685 res!1755488) b!4274530))

(declare-fun m!4869923 () Bool)

(assert (=> d!1261685 m!4869923))

(declare-fun m!4869925 () Bool)

(assert (=> d!1261685 m!4869925))

(assert (=> b!4274530 m!4869925))

(assert (=> b!4274530 m!4869925))

(declare-fun m!4869927 () Bool)

(assert (=> b!4274530 m!4869927))

(assert (=> d!1260911 d!1261685))

(declare-fun d!1261687 () Bool)

(assert (=> d!1261687 (= (list!17203 lt!1513258) (list!17205 (c!727096 lt!1513258)))))

(declare-fun bs!601666 () Bool)

(assert (= bs!601666 d!1261687))

(declare-fun m!4869929 () Bool)

(assert (=> bs!601666 m!4869929))

(assert (=> d!1260969 d!1261687))

(assert (=> d!1260969 d!1261661))

(declare-fun d!1261689 () Bool)

(declare-fun c!727709 () Bool)

(assert (=> d!1261689 (= c!727709 ((_ is Nil!47325) lt!1513405))))

(declare-fun e!2653830 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261689 (= (content!7480 lt!1513405) e!2653830)))

(declare-fun b!4274531 () Bool)

(assert (=> b!4274531 (= e!2653830 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274532 () Bool)

(assert (=> b!4274532 (= e!2653830 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 lt!1513405) true) (content!7480 (t!353862 lt!1513405))))))

(assert (= (and d!1261689 c!727709) b!4274531))

(assert (= (and d!1261689 (not c!727709)) b!4274532))

(declare-fun m!4869931 () Bool)

(assert (=> b!4274532 m!4869931))

(declare-fun m!4869933 () Bool)

(assert (=> b!4274532 m!4869933))

(assert (=> d!1261427 d!1261689))

(declare-fun d!1261691 () Bool)

(declare-fun c!727710 () Bool)

(assert (=> d!1261691 (= c!727710 ((_ is Nil!47325) (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun e!2653831 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261691 (= (content!7480 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) e!2653831)))

(declare-fun b!4274533 () Bool)

(assert (=> b!4274533 (= e!2653831 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274534 () Bool)

(assert (=> b!4274534 (= e!2653831 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) true) (content!7480 (t!353862 (list!17205 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (= (and d!1261691 c!727710) b!4274533))

(assert (= (and d!1261691 (not c!727710)) b!4274534))

(declare-fun m!4869935 () Bool)

(assert (=> b!4274534 m!4869935))

(declare-fun m!4869937 () Bool)

(assert (=> b!4274534 m!4869937))

(assert (=> d!1261427 d!1261691))

(declare-fun d!1261693 () Bool)

(declare-fun c!727711 () Bool)

(assert (=> d!1261693 (= c!727711 ((_ is Nil!47325) (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))

(declare-fun e!2653832 () (InoxSet (_ BitVec 16)))

(assert (=> d!1261693 (= (content!7480 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) e!2653832)))

(declare-fun b!4274535 () Bool)

(assert (=> b!4274535 (= e!2653832 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4274536 () Bool)

(assert (=> b!4274536 (= e!2653832 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52745 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))) true) (content!7480 (t!353862 (efficientList$default$2!189 (c!727096 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 x!742222))))))))))

(assert (= (and d!1261693 c!727711) b!4274535))

(assert (= (and d!1261693 (not c!727711)) b!4274536))

(declare-fun m!4869939 () Bool)

(assert (=> b!4274536 m!4869939))

(declare-fun m!4869941 () Bool)

(assert (=> b!4274536 m!4869941))

(assert (=> d!1261427 d!1261693))

(declare-fun b!4274537 () Bool)

(declare-fun res!1755494 () Bool)

(declare-fun e!2653834 () Bool)

(assert (=> b!4274537 (=> (not res!1755494) (not e!2653834))))

(assert (=> b!4274537 (= res!1755494 (<= (- (height!1884 (left!35211 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))) (height!1884 (right!35541 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))) 1))))

(declare-fun b!4274538 () Bool)

(declare-fun e!2653833 () Bool)

(assert (=> b!4274538 (= e!2653833 e!2653834)))

(declare-fun res!1755492 () Bool)

(assert (=> b!4274538 (=> (not res!1755492) (not e!2653834))))

(assert (=> b!4274538 (= res!1755492 (<= (- 1) (- (height!1884 (left!35211 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))) (height!1884 (right!35541 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))))

(declare-fun b!4274539 () Bool)

(declare-fun res!1755491 () Bool)

(assert (=> b!4274539 (=> (not res!1755491) (not e!2653834))))

(assert (=> b!4274539 (= res!1755491 (not (isEmpty!28005 (left!35211 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))))

(declare-fun d!1261695 () Bool)

(declare-fun res!1755493 () Bool)

(assert (=> d!1261695 (=> res!1755493 e!2653833)))

(assert (=> d!1261695 (= res!1755493 (not ((_ is Node!14307) (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(assert (=> d!1261695 (= (isBalanced!3853 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) e!2653833)))

(declare-fun b!4274540 () Bool)

(declare-fun res!1755489 () Bool)

(assert (=> b!4274540 (=> (not res!1755489) (not e!2653834))))

(assert (=> b!4274540 (= res!1755489 (isBalanced!3853 (left!35211 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(declare-fun b!4274541 () Bool)

(declare-fun res!1755490 () Bool)

(assert (=> b!4274541 (=> (not res!1755490) (not e!2653834))))

(assert (=> b!4274541 (= res!1755490 (isBalanced!3853 (right!35541 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(declare-fun b!4274542 () Bool)

(assert (=> b!4274542 (= e!2653834 (not (isEmpty!28005 (right!35541 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))))

(assert (= (and d!1261695 (not res!1755493)) b!4274538))

(assert (= (and b!4274538 res!1755492) b!4274537))

(assert (= (and b!4274537 res!1755494) b!4274540))

(assert (= (and b!4274540 res!1755489) b!4274541))

(assert (= (and b!4274541 res!1755490) b!4274539))

(assert (= (and b!4274539 res!1755491) b!4274542))

(declare-fun m!4869943 () Bool)

(assert (=> b!4274538 m!4869943))

(declare-fun m!4869945 () Bool)

(assert (=> b!4274538 m!4869945))

(declare-fun m!4869947 () Bool)

(assert (=> b!4274540 m!4869947))

(assert (=> b!4274537 m!4869943))

(assert (=> b!4274537 m!4869945))

(declare-fun m!4869949 () Bool)

(assert (=> b!4274539 m!4869949))

(declare-fun m!4869951 () Bool)

(assert (=> b!4274542 m!4869951))

(declare-fun m!4869953 () Bool)

(assert (=> b!4274541 m!4869953))

(assert (=> b!4273585 d!1261695))

(declare-fun d!1261697 () Bool)

(declare-fun lt!1513518 () Bool)

(assert (=> d!1261697 (= lt!1513518 (isEmpty!28006 (list!17205 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(assert (=> d!1261697 (= lt!1513518 (= (size!34652 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) 0))))

(assert (=> d!1261697 (= (isEmpty!28005 (right!35541 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) lt!1513518)))

(declare-fun bs!601667 () Bool)

(assert (= bs!601667 d!1261697))

(declare-fun m!4869955 () Bool)

(assert (=> bs!601667 m!4869955))

(assert (=> bs!601667 m!4869955))

(declare-fun m!4869957 () Bool)

(assert (=> bs!601667 m!4869957))

(declare-fun m!4869959 () Bool)

(assert (=> bs!601667 m!4869959))

(assert (=> b!4273586 d!1261697))

(declare-fun b!4274546 () Bool)

(declare-fun e!2653836 () Bool)

(declare-fun lt!1513519 () List!47449)

(assert (=> b!4274546 (= e!2653836 (or (not (= (list!17205 (right!35541 (c!727096 lt!1513166))) Nil!47325)) (= lt!1513519 (list!17205 (left!35211 (c!727096 lt!1513166))))))))

(declare-fun b!4274544 () Bool)

(declare-fun e!2653835 () List!47449)

(assert (=> b!4274544 (= e!2653835 (Cons!47325 (h!52745 (list!17205 (left!35211 (c!727096 lt!1513166)))) (++!12082 (t!353862 (list!17205 (left!35211 (c!727096 lt!1513166)))) (list!17205 (right!35541 (c!727096 lt!1513166))))))))

(declare-fun d!1261699 () Bool)

(assert (=> d!1261699 e!2653836))

(declare-fun res!1755495 () Bool)

(assert (=> d!1261699 (=> (not res!1755495) (not e!2653836))))

(assert (=> d!1261699 (= res!1755495 (= (content!7480 lt!1513519) ((_ map or) (content!7480 (list!17205 (left!35211 (c!727096 lt!1513166)))) (content!7480 (list!17205 (right!35541 (c!727096 lt!1513166)))))))))

(assert (=> d!1261699 (= lt!1513519 e!2653835)))

(declare-fun c!727712 () Bool)

(assert (=> d!1261699 (= c!727712 ((_ is Nil!47325) (list!17205 (left!35211 (c!727096 lt!1513166)))))))

(assert (=> d!1261699 (= (++!12082 (list!17205 (left!35211 (c!727096 lt!1513166))) (list!17205 (right!35541 (c!727096 lt!1513166)))) lt!1513519)))

(declare-fun b!4274543 () Bool)

(assert (=> b!4274543 (= e!2653835 (list!17205 (right!35541 (c!727096 lt!1513166))))))

(declare-fun b!4274545 () Bool)

(declare-fun res!1755496 () Bool)

(assert (=> b!4274545 (=> (not res!1755496) (not e!2653836))))

(assert (=> b!4274545 (= res!1755496 (= (size!34649 lt!1513519) (+ (size!34649 (list!17205 (left!35211 (c!727096 lt!1513166)))) (size!34649 (list!17205 (right!35541 (c!727096 lt!1513166)))))))))

(assert (= (and d!1261699 c!727712) b!4274543))

(assert (= (and d!1261699 (not c!727712)) b!4274544))

(assert (= (and d!1261699 res!1755495) b!4274545))

(assert (= (and b!4274545 res!1755496) b!4274546))

(assert (=> b!4274544 m!4867803))

(declare-fun m!4869961 () Bool)

(assert (=> b!4274544 m!4869961))

(declare-fun m!4869963 () Bool)

(assert (=> d!1261699 m!4869963))

(assert (=> d!1261699 m!4867801))

(declare-fun m!4869965 () Bool)

(assert (=> d!1261699 m!4869965))

(assert (=> d!1261699 m!4867803))

(declare-fun m!4869967 () Bool)

(assert (=> d!1261699 m!4869967))

(declare-fun m!4869969 () Bool)

(assert (=> b!4274545 m!4869969))

(assert (=> b!4274545 m!4867801))

(declare-fun m!4869971 () Bool)

(assert (=> b!4274545 m!4869971))

(assert (=> b!4274545 m!4867803))

(declare-fun m!4869973 () Bool)

(assert (=> b!4274545 m!4869973))

(assert (=> b!4273563 d!1261699))

(declare-fun b!4274550 () Bool)

(declare-fun e!2653838 () List!47449)

(assert (=> b!4274550 (= e!2653838 (++!12082 (list!17205 (left!35211 (left!35211 (c!727096 lt!1513166)))) (list!17205 (right!35541 (left!35211 (c!727096 lt!1513166))))))))

(declare-fun d!1261701 () Bool)

(declare-fun c!727713 () Bool)

(assert (=> d!1261701 (= c!727713 ((_ is Empty!14307) (left!35211 (c!727096 lt!1513166))))))

(declare-fun e!2653837 () List!47449)

(assert (=> d!1261701 (= (list!17205 (left!35211 (c!727096 lt!1513166))) e!2653837)))

(declare-fun b!4274548 () Bool)

(assert (=> b!4274548 (= e!2653837 e!2653838)))

(declare-fun c!727714 () Bool)

(assert (=> b!4274548 (= c!727714 ((_ is Leaf!22116) (left!35211 (c!727096 lt!1513166))))))

(declare-fun b!4274549 () Bool)

(assert (=> b!4274549 (= e!2653838 (list!17207 (xs!17613 (left!35211 (c!727096 lt!1513166)))))))

(declare-fun b!4274547 () Bool)

(assert (=> b!4274547 (= e!2653837 Nil!47325)))

(assert (= (and d!1261701 c!727713) b!4274547))

(assert (= (and d!1261701 (not c!727713)) b!4274548))

(assert (= (and b!4274548 c!727714) b!4274549))

(assert (= (and b!4274548 (not c!727714)) b!4274550))

(declare-fun m!4869975 () Bool)

(assert (=> b!4274550 m!4869975))

(declare-fun m!4869977 () Bool)

(assert (=> b!4274550 m!4869977))

(assert (=> b!4274550 m!4869975))

(assert (=> b!4274550 m!4869977))

(declare-fun m!4869979 () Bool)

(assert (=> b!4274550 m!4869979))

(declare-fun m!4869981 () Bool)

(assert (=> b!4274549 m!4869981))

(assert (=> b!4273563 d!1261701))

(declare-fun b!4274554 () Bool)

(declare-fun e!2653840 () List!47449)

(assert (=> b!4274554 (= e!2653840 (++!12082 (list!17205 (left!35211 (right!35541 (c!727096 lt!1513166)))) (list!17205 (right!35541 (right!35541 (c!727096 lt!1513166))))))))

(declare-fun d!1261703 () Bool)

(declare-fun c!727715 () Bool)

(assert (=> d!1261703 (= c!727715 ((_ is Empty!14307) (right!35541 (c!727096 lt!1513166))))))

(declare-fun e!2653839 () List!47449)

(assert (=> d!1261703 (= (list!17205 (right!35541 (c!727096 lt!1513166))) e!2653839)))

(declare-fun b!4274552 () Bool)

(assert (=> b!4274552 (= e!2653839 e!2653840)))

(declare-fun c!727716 () Bool)

(assert (=> b!4274552 (= c!727716 ((_ is Leaf!22116) (right!35541 (c!727096 lt!1513166))))))

(declare-fun b!4274553 () Bool)

(assert (=> b!4274553 (= e!2653840 (list!17207 (xs!17613 (right!35541 (c!727096 lt!1513166)))))))

(declare-fun b!4274551 () Bool)

(assert (=> b!4274551 (= e!2653839 Nil!47325)))

(assert (= (and d!1261703 c!727715) b!4274551))

(assert (= (and d!1261703 (not c!727715)) b!4274552))

(assert (= (and b!4274552 c!727716) b!4274553))

(assert (= (and b!4274552 (not c!727716)) b!4274554))

(declare-fun m!4869983 () Bool)

(assert (=> b!4274554 m!4869983))

(declare-fun m!4869985 () Bool)

(assert (=> b!4274554 m!4869985))

(assert (=> b!4274554 m!4869983))

(assert (=> b!4274554 m!4869985))

(declare-fun m!4869987 () Bool)

(assert (=> b!4274554 m!4869987))

(declare-fun m!4869989 () Bool)

(assert (=> b!4274553 m!4869989))

(assert (=> b!4273563 d!1261703))

(declare-fun b!4274555 () Bool)

(declare-fun res!1755502 () Bool)

(declare-fun e!2653842 () Bool)

(assert (=> b!4274555 (=> (not res!1755502) (not e!2653842))))

(assert (=> b!4274555 (= res!1755502 (<= (- (height!1884 (left!35211 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))) (height!1884 (right!35541 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))) 1))))

(declare-fun b!4274556 () Bool)

(declare-fun e!2653841 () Bool)

(assert (=> b!4274556 (= e!2653841 e!2653842)))

(declare-fun res!1755500 () Bool)

(assert (=> b!4274556 (=> (not res!1755500) (not e!2653842))))

(assert (=> b!4274556 (= res!1755500 (<= (- 1) (- (height!1884 (left!35211 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))) (height!1884 (right!35541 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))))

(declare-fun b!4274557 () Bool)

(declare-fun res!1755499 () Bool)

(assert (=> b!4274557 (=> (not res!1755499) (not e!2653842))))

(assert (=> b!4274557 (= res!1755499 (not (isEmpty!28005 (left!35211 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))))

(declare-fun d!1261705 () Bool)

(declare-fun res!1755501 () Bool)

(assert (=> d!1261705 (=> res!1755501 e!2653841)))

(assert (=> d!1261705 (= res!1755501 (not ((_ is Node!14307) (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(assert (=> d!1261705 (= (isBalanced!3853 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) e!2653841)))

(declare-fun b!4274558 () Bool)

(declare-fun res!1755497 () Bool)

(assert (=> b!4274558 (=> (not res!1755497) (not e!2653842))))

(assert (=> b!4274558 (= res!1755497 (isBalanced!3853 (left!35211 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(declare-fun b!4274559 () Bool)

(declare-fun res!1755498 () Bool)

(assert (=> b!4274559 (=> (not res!1755498) (not e!2653842))))

(assert (=> b!4274559 (= res!1755498 (isBalanced!3853 (right!35541 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(declare-fun b!4274560 () Bool)

(assert (=> b!4274560 (= e!2653842 (not (isEmpty!28005 (right!35541 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))))))))

(assert (= (and d!1261705 (not res!1755501)) b!4274556))

(assert (= (and b!4274556 res!1755500) b!4274555))

(assert (= (and b!4274555 res!1755502) b!4274558))

(assert (= (and b!4274558 res!1755497) b!4274559))

(assert (= (and b!4274559 res!1755498) b!4274557))

(assert (= (and b!4274557 res!1755499) b!4274560))

(declare-fun m!4869991 () Bool)

(assert (=> b!4274556 m!4869991))

(declare-fun m!4869993 () Bool)

(assert (=> b!4274556 m!4869993))

(declare-fun m!4869995 () Bool)

(assert (=> b!4274558 m!4869995))

(assert (=> b!4274555 m!4869991))

(assert (=> b!4274555 m!4869993))

(declare-fun m!4869997 () Bool)

(assert (=> b!4274557 m!4869997))

(declare-fun m!4869999 () Bool)

(assert (=> b!4274560 m!4869999))

(declare-fun m!4870001 () Bool)

(assert (=> b!4274559 m!4870001))

(assert (=> b!4273584 d!1261705))

(declare-fun d!1261707 () Bool)

(assert (=> d!1261707 (= (list!17207 (xs!17613 (c!727096 lt!1513166))) (innerList!14367 (xs!17613 (c!727096 lt!1513166))))))

(assert (=> b!4273562 d!1261707))

(declare-fun d!1261709 () Bool)

(declare-fun e!2653843 () Bool)

(assert (=> d!1261709 e!2653843))

(declare-fun res!1755503 () Bool)

(assert (=> d!1261709 (=> (not res!1755503) (not e!2653843))))

(declare-fun lt!1513520 () BalanceConc!28124)

(assert (=> d!1261709 (= res!1755503 (= (list!17203 lt!1513520) (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325)))))))))

(assert (=> d!1261709 (= lt!1513520 (BalanceConc!28125 (fromList!928 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325))))))))))

(assert (=> d!1261709 (= (fromListB!2670 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325)))))) lt!1513520)))

(declare-fun b!4274561 () Bool)

(assert (=> b!4274561 (= e!2653843 (isBalanced!3853 (fromList!928 (Cons!47325 #x006D (Cons!47325 #x0061 (Cons!47325 #x0074 (Cons!47325 #x0063 (Cons!47325 #x0068 Nil!47325))))))))))

(assert (= (and d!1261709 res!1755503) b!4274561))

(declare-fun m!4870003 () Bool)

(assert (=> d!1261709 m!4870003))

(declare-fun m!4870005 () Bool)

(assert (=> d!1261709 m!4870005))

(assert (=> b!4274561 m!4870005))

(assert (=> b!4274561 m!4870005))

(declare-fun m!4870007 () Bool)

(assert (=> b!4274561 m!4870007))

(assert (=> d!1260961 d!1261709))

(declare-fun d!1261711 () Bool)

(declare-fun e!2653844 () Bool)

(assert (=> d!1261711 e!2653844))

(declare-fun res!1755504 () Bool)

(assert (=> d!1261711 (=> (not res!1755504) (not e!2653844))))

(declare-fun lt!1513521 () BalanceConc!28124)

(assert (=> d!1261711 (= res!1755504 (= (list!17203 lt!1513521) (Cons!47325 #x005F Nil!47325)))))

(assert (=> d!1261711 (= lt!1513521 (BalanceConc!28125 (fromList!928 (Cons!47325 #x005F Nil!47325))))))

(assert (=> d!1261711 (= (fromListB!2670 (Cons!47325 #x005F Nil!47325)) lt!1513521)))

(declare-fun b!4274562 () Bool)

(assert (=> b!4274562 (= e!2653844 (isBalanced!3853 (fromList!928 (Cons!47325 #x005F Nil!47325))))))

(assert (= (and d!1261711 res!1755504) b!4274562))

(declare-fun m!4870009 () Bool)

(assert (=> d!1261711 m!4870009))

(declare-fun m!4870011 () Bool)

(assert (=> d!1261711 m!4870011))

(assert (=> b!4274562 m!4870011))

(assert (=> b!4274562 m!4870011))

(declare-fun m!4870013 () Bool)

(assert (=> b!4274562 m!4870013))

(assert (=> d!1260957 d!1261711))

(declare-fun d!1261713 () Bool)

(declare-fun lt!1513522 () Bool)

(assert (=> d!1261713 (= lt!1513522 (isEmpty!28006 (list!17205 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325)))))))))))))))

(assert (=> d!1261713 (= lt!1513522 (= (size!34652 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) 0))))

(assert (=> d!1261713 (= (isEmpty!28005 (left!35211 (fromList!928 (Cons!47325 #x0061 (Cons!47325 #x0062 (Cons!47325 #x0073 (Cons!47325 #x0074 (Cons!47325 #x0072 (Cons!47325 #x0061 (Cons!47325 #x0063 (Cons!47325 #x0074 Nil!47325))))))))))) lt!1513522)))

(declare-fun bs!601668 () Bool)

(assert (= bs!601668 d!1261713))

(declare-fun m!4870015 () Bool)

(assert (=> bs!601668 m!4870015))

(assert (=> bs!601668 m!4870015))

(declare-fun m!4870017 () Bool)

(assert (=> bs!601668 m!4870017))

(declare-fun m!4870019 () Bool)

(assert (=> bs!601668 m!4870019))

(assert (=> b!4273583 d!1261713))

(declare-fun d!1261715 () Bool)

(declare-fun e!2653845 () Bool)

(assert (=> d!1261715 e!2653845))

(declare-fun res!1755505 () Bool)

(assert (=> d!1261715 (=> (not res!1755505) (not e!2653845))))

(declare-fun lt!1513523 () BalanceConc!28124)

(assert (=> d!1261715 (= res!1755505 (= (list!17203 lt!1513523) (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325)))))))

(assert (=> d!1261715 (= lt!1513523 (BalanceConc!28125 (fromList!928 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325))))))))

(assert (=> d!1261715 (= (fromListB!2670 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325)))) lt!1513523)))

(declare-fun b!4274563 () Bool)

(assert (=> b!4274563 (= e!2653845 (isBalanced!3853 (fromList!928 (Cons!47325 #x0076 (Cons!47325 #x0061 (Cons!47325 #x006C Nil!47325))))))))

(assert (= (and d!1261715 res!1755505) b!4274563))

(declare-fun m!4870021 () Bool)

(assert (=> d!1261715 m!4870021))

(declare-fun m!4870023 () Bool)

(assert (=> d!1261715 m!4870023))

(assert (=> b!4274563 m!4870023))

(assert (=> b!4274563 m!4870023))

(declare-fun m!4870025 () Bool)

(assert (=> b!4274563 m!4870025))

(assert (=> d!1260953 d!1261715))

(declare-fun bs!601669 () Bool)

(declare-fun s!240148 () Bool)

(assert (= bs!601669 (and neg-inst!1769 s!240148)))

(assert (=> bs!601669 (=> true (= (list!17203 (toCharacters!7 thiss!2319 (toValue!14 thiss!2319 lt!1513166))) (list!17203 lt!1513166)))))

(declare-fun m!4870027 () Bool)

(assert (=> m!4867151 m!4870027))

(declare-fun m!4870029 () Bool)

(assert (=> m!4867151 m!4870029))

(declare-fun m!4870031 () Bool)

(assert (=> m!4867151 m!4870031))

(assert (=> m!4867151 s!240148))

(check-sat (not b!4273700) (not b!4273978) (not b!4274186) (not bm!294200) (not b!4274509) (not b!4274137) (not b!4274179) (not b!4274017) (not b!4274034) (not b!4273993) (not d!1261309) (not d!1261699) (not b!4274181) (not b!4274558) (not b!4273736) (not d!1261319) (not d!1261379) (not b!4274092) (not b!4274197) (not bm!294201) (not b!4274521) (not d!1261663) (not b!4273635) (not d!1261347) (not b!4273947) (not b!4274141) (not b!4273680) (not b!4274208) (not b!4274559) (not b!4273711) (not b!4273674) (not b!4274504) (not b!4274542) (not b!4274495) (not b!4274172) (not b!4274118) (not b!4273709) (not b!4274072) (not d!1261353) (not b!4274557) (not d!1261421) (not d!1261247) (not b!4273714) (not b!4273730) (not b!4273669) (not d!1261681) (not b!4274116) (not b!4273783) (not b!4273788) (not b!4273630) (not b!4274139) (not b!4274549) (not b!4274162) (not b!4273654) (not b!4274133) (not b!4273683) (not d!1261329) (not b!4274527) (not d!1261279) (not b!4274018) (not b!4274078) (not d!1261371) (not b!4273705) (not b!4273693) (not b!4274516) (not b!4273753) (not d!1261263) (not d!1261675) (not b!4274063) (not b!4274041) (not b!4273697) (not b!4274517) (not d!1261697) (not b!4273956) (not b!4273939) (not b!4274528) (not b!4273666) (not b!4274537) (not b!4274016) (not b!4274532) (not b!4274031) (not d!1261291) (not b!4273777) (not b!4274106) (not b!4274529) (not b!4273662) (not d!1261325) (not b!4274026) (not b!4274209) (not b!4274539) (not bm!294197) (not b!4274076) (not b!4273960) (not b!4273689) (not b!4274003) (not b!4274131) (not bm!294202) (not b!4273968) (not b!4273447) (not b!4274562) (not b!4274556) (not b!4273950) (not b!4273698) (not b!4274522) (not b!4274129) (not b!4274513) (not b!4274190) (not b!4274050) (not b!4274555) (not b!4274550) (not b!4274166) (not b!4273734) (not b!4274113) (not b!4274056) (not d!1261227) (not b!4273996) (not b!4274175) (not b!4274169) (not b!4273658) (not b!4274167) (not b!4273774) (not b!4274054) (not b!4274110) (not b!4273779) (not b!4273703) (not b!4274540) (not d!1261373) (not b!4274061) (not b!4274128) (not b!4273716) (not b!4274201) (not b!4274089) (not b!4274123) (not b!4273653) (not b!4274127) (not b!4273718) (not b!4273673) (not b!4274151) (not b!4274153) (not b!4273761) (not b!4274059) (not b!4274563) (not b!4273819) (not b!4273787) (not b!4273961) (not b!4273691) (not b!4274120) (not b!4274496) (not b!4273670) (not b!4274210) (not b!4273769) (not bm!294199) (not b!4273719) (not b!4274501) (not b!4273998) (not d!1261439) (not b!4274171) (not b!4274079) (not b!4274048) (not b!4274024) (not b!4274068) (not b!4273644) (not b!4273954) (not d!1261313) (not d!1261317) (not b!4273953) (not b!4274117) (not b!4274185) (not b!4273943) (not b!4273967) (not b!4274502) (not b!4274207) (not d!1261289) (not d!1261315) (not b!4274164) (not b!4274070) (not b!4273702) (not b!4274498) (not b!4274177) (not b!4273803) (not b!4274142) (not b!4274554) (not d!1261685) (not d!1261683) (not d!1261261) (not d!1261711) (not d!1261411) (not b!4273642) (not b!4274010) (not d!1261413) (not b!4274211) (not b!4274143) (not b!4274165) (not b!4274154) (not b!4273949) (not b!4274530) (not d!1261241) (not b!4274499) (not b!4273701) (not b!4274020) (not b!4274122) (not b!4274037) (not b!4274193) (not b!4274065) (not b!4273744) (not b!4274095) (not b!4274205) (not b!4273664) (not b!4273685) (not b!4274510) (not d!1261437) (not b!4273773) (not b!4273952) (not b!4273649) (not b!4273722) (not b!4274157) (not d!1261331) (not b!4274015) (not b!4274497) (not b!4274183) (not b!4274023) (not b!4273964) (not b!4274013) (not d!1261709) (not b!4273941) (not b!4274115) (not b!4274108) (not b!4273646) (not d!1261349) (not b!4274036) (not b!4274005) (not b!4274560) (not b!4273794) (not b!4273972) (not b!4273951) (not b!4274202) (not b!4274014) (not b!4273707) (not b!4273976) (not b!4273660) (not b!4274140) (not b!4274135) (not b!4274083) (not d!1261713) (not b!4274045) (not b!4273712) (not b!4274215) (not b!4274062) (not b!4274104) (not b!4273982) (not b!4274099) (not b!4273980) (not b!4274536) (not b!4273640) (not b!4273754) (not b!4273771) (not b!4273677) (not b!4273710) (not b!4274514) (not b!4274001) (not b!4274553) (not b!4274561) (not b!4274012) (not d!1261229) (not b!4274114) (not b!4274525) (not b!4274198) (not b!4273704) (not d!1261381) (not b!4274159) (not b!4273728) (not b!4273802) (not d!1261405) (not b!4274006) (not d!1261245) (not d!1261275) (not b!4274505) (not d!1261351) (not b!4273945) (not b!4273631) (not b!4273724) (not b!4274214) (not b!4274144) (not b!4273742) (not b!4273973) (not b!4274086) (not d!1261661) (not b!4273706) (not b!4273445) (not b!4274098) (not b!4274145) (not b!4273648) (not bs!601669) (not b!4273994) (not b!4274156) (not d!1261657) (not b!4273970) (not b!4273708) (not b!4273687) (not d!1261293) (not b!4274028) (not b!4273695) (not b!4274204) (not b!4273957) (not d!1261259) (not b!4274094) (not b!4274021) (not b!4274195) (not b!4274161) (not b!4273991) (not d!1261273) (not b!4273795) (not b!4273760) (not d!1261715) (not b!4274060) (not b!4273816) (not d!1261343) (not b!4273818) (not b!4274544) (not b!4274149) (not b!4273745) (not d!1261281) (not b!4273636) (not b!4274102) (not d!1261429) (not b!4274008) (not b!4273639) (not b!4274074) (not b!4273989) (not b!4274212) (not b!4273657) (not b!4274538) (not b!4274500) (not b!4273999) (not b!4274189) (not b!4273815) (not b!4274545) (not b!4273817) (not d!1261669) (not b!4274040) (not d!1261687) (not b!4274206) (not b!4273626) (not b!4273806) (not d!1261345) (not b!4274541) (not b!4274051) (not b!4274526) (not b!4273675) (not b!4274168) (not d!1261311) (not b!4273627) (not b!4274534) (not b!4274213) (not b!4274112) (not b!4274147))
(check-sat)
