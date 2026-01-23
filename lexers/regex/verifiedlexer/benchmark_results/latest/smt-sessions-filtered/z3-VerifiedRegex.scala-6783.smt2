; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353720 () Bool)

(assert start!353720)

(declare-fun b!3765828 () Bool)

(declare-fun b_free!100885 () Bool)

(declare-fun b_next!101589 () Bool)

(assert (=> b!3765828 (= b_free!100885 (not b_next!101589))))

(declare-fun tp!1150486 () Bool)

(declare-fun b_and!279695 () Bool)

(assert (=> b!3765828 (= tp!1150486 b_and!279695)))

(declare-fun b_free!100887 () Bool)

(declare-fun b_next!101591 () Bool)

(assert (=> b!3765828 (= b_free!100887 (not b_next!101591))))

(declare-fun tp!1150482 () Bool)

(declare-fun b_and!279697 () Bool)

(assert (=> b!3765828 (= tp!1150482 b_and!279697)))

(declare-fun res!1524526 () Bool)

(declare-fun e!2329109 () Bool)

(assert (=> start!353720 (=> (not res!1524526) (not e!2329109))))

(declare-datatypes ((LexerInterface!5761 0))(
  ( (LexerInterfaceExt!5758 (__x!25021 Int)) (Lexer!5759) )
))
(declare-fun thiss!13564 () LexerInterface!5761)

(declare-datatypes ((C!22340 0))(
  ( (C!22341 (val!13246 Int)) )
))
(declare-datatypes ((List!40311 0))(
  ( (Nil!40187) (Cons!40187 (h!45607 (_ BitVec 16)) (t!304330 List!40311)) )
))
(declare-datatypes ((Regex!11077 0))(
  ( (ElementMatch!11077 (c!652372 C!22340)) (Concat!17479 (regOne!22666 Regex!11077) (regTwo!22666 Regex!11077)) (EmptyExpr!11077) (Star!11077 (reg!11406 Regex!11077)) (EmptyLang!11077) (Union!11077 (regOne!22667 Regex!11077) (regTwo!22667 Regex!11077)) )
))
(declare-datatypes ((String!45691 0))(
  ( (String!45692 (value!196483 String)) )
))
(declare-datatypes ((TokenValue!6402 0))(
  ( (FloatLiteralValue!12804 (text!45259 List!40311)) (TokenValueExt!6401 (__x!25022 Int)) (Broken!32010 (value!196484 List!40311)) (Object!6525) (End!6402) (Def!6402) (Underscore!6402) (Match!6402) (Else!6402) (Error!6402) (Case!6402) (If!6402) (Extends!6402) (Abstract!6402) (Class!6402) (Val!6402) (DelimiterValue!12804 (del!6462 List!40311)) (KeywordValue!6408 (value!196485 List!40311)) (CommentValue!12804 (value!196486 List!40311)) (WhitespaceValue!12804 (value!196487 List!40311)) (IndentationValue!6402 (value!196488 List!40311)) (String!45693) (Int32!6402) (Broken!32011 (value!196489 List!40311)) (Boolean!6403) (Unit!57905) (OperatorValue!6405 (op!6462 List!40311)) (IdentifierValue!12804 (value!196490 List!40311)) (IdentifierValue!12805 (value!196491 List!40311)) (WhitespaceValue!12805 (value!196492 List!40311)) (True!12804) (False!12804) (Broken!32012 (value!196493 List!40311)) (Broken!32013 (value!196494 List!40311)) (True!12805) (RightBrace!6402) (RightBracket!6402) (Colon!6402) (Null!6402) (Comma!6402) (LeftBracket!6402) (False!12805) (LeftBrace!6402) (ImaginaryLiteralValue!6402 (text!45260 List!40311)) (StringLiteralValue!19206 (value!196495 List!40311)) (EOFValue!6402 (value!196496 List!40311)) (IdentValue!6402 (value!196497 List!40311)) (DelimiterValue!12805 (value!196498 List!40311)) (DedentValue!6402 (value!196499 List!40311)) (NewLineValue!6402 (value!196500 List!40311)) (IntegerValue!19206 (value!196501 (_ BitVec 32)) (text!45261 List!40311)) (IntegerValue!19207 (value!196502 Int) (text!45262 List!40311)) (Times!6402) (Or!6402) (Equal!6402) (Minus!6402) (Broken!32014 (value!196503 List!40311)) (And!6402) (Div!6402) (LessEqual!6402) (Mod!6402) (Concat!17480) (Not!6402) (Plus!6402) (SpaceValue!6402 (value!196504 List!40311)) (IntegerValue!19208 (value!196505 Int) (text!45263 List!40311)) (StringLiteralValue!19207 (text!45264 List!40311)) (FloatLiteralValue!12805 (text!45265 List!40311)) (BytesLiteralValue!6402 (value!196506 List!40311)) (CommentValue!12805 (value!196507 List!40311)) (StringLiteralValue!19208 (value!196508 List!40311)) (ErrorTokenValue!6402 (msg!6463 List!40311)) )
))
(declare-datatypes ((List!40312 0))(
  ( (Nil!40188) (Cons!40188 (h!45608 C!22340) (t!304331 List!40312)) )
))
(declare-datatypes ((IArray!24643 0))(
  ( (IArray!24644 (innerList!12379 List!40312)) )
))
(declare-datatypes ((Conc!12319 0))(
  ( (Node!12319 (left!31106 Conc!12319) (right!31436 Conc!12319) (csize!24868 Int) (cheight!12530 Int)) (Leaf!19103 (xs!15529 IArray!24643) (csize!24869 Int)) (Empty!12319) )
))
(declare-datatypes ((BalanceConc!24232 0))(
  ( (BalanceConc!24233 (c!652373 Conc!12319)) )
))
(declare-datatypes ((TokenValueInjection!12232 0))(
  ( (TokenValueInjection!12233 (toValue!8532 Int) (toChars!8391 Int)) )
))
(declare-datatypes ((Rule!12144 0))(
  ( (Rule!12145 (regex!6172 Regex!11077) (tag!7032 String!45691) (isSeparator!6172 Bool) (transformation!6172 TokenValueInjection!12232)) )
))
(declare-datatypes ((Token!11482 0))(
  ( (Token!11483 (value!196509 TokenValue!6402) (rule!8936 Rule!12144) (size!30247 Int) (originalCharacters!6772 List!40312)) )
))
(declare-datatypes ((List!40313 0))(
  ( (Nil!40189) (Cons!40189 (h!45609 Token!11482) (t!304332 List!40313)) )
))
(declare-fun l!4168 () List!40313)

(get-info :version)

(assert (=> start!353720 (= res!1524526 (and ((_ is Lexer!5759) thiss!13564) (not ((_ is Cons!40189) l!4168))))))

(assert (=> start!353720 e!2329109))

(assert (=> start!353720 true))

(declare-fun e!2329107 () Bool)

(assert (=> start!353720 e!2329107))

(declare-fun e!2329108 () Bool)

(assert (=> start!353720 e!2329108))

(declare-fun b!3765825 () Bool)

(declare-fun tp_is_empty!19149 () Bool)

(declare-fun tp!1150481 () Bool)

(assert (=> b!3765825 (= e!2329108 (and tp_is_empty!19149 tp!1150481))))

(declare-fun b!3765826 () Bool)

(declare-fun e!2329110 () Bool)

(declare-fun tp!1150485 () Bool)

(declare-fun e!2329111 () Bool)

(declare-fun inv!21 (TokenValue!6402) Bool)

(assert (=> b!3765826 (= e!2329111 (and (inv!21 (value!196509 (h!45609 l!4168))) e!2329110 tp!1150485))))

(declare-fun b!3765827 () Bool)

(declare-fun acc!396 () List!40312)

(declare-fun ++!9976 (List!40312 List!40312) List!40312)

(declare-fun printList!1673 (LexerInterface!5761 List!40313) List!40312)

(assert (=> b!3765827 (= e!2329109 (not (= acc!396 (++!9976 acc!396 (printList!1673 thiss!13564 l!4168)))))))

(declare-fun e!2329112 () Bool)

(assert (=> b!3765828 (= e!2329112 (and tp!1150486 tp!1150482))))

(declare-fun tp!1150483 () Bool)

(declare-fun b!3765829 () Bool)

(declare-fun inv!53957 (Token!11482) Bool)

(assert (=> b!3765829 (= e!2329107 (and (inv!53957 (h!45609 l!4168)) e!2329111 tp!1150483))))

(declare-fun tp!1150484 () Bool)

(declare-fun b!3765830 () Bool)

(declare-fun inv!53954 (String!45691) Bool)

(declare-fun inv!53958 (TokenValueInjection!12232) Bool)

(assert (=> b!3765830 (= e!2329110 (and tp!1150484 (inv!53954 (tag!7032 (rule!8936 (h!45609 l!4168)))) (inv!53958 (transformation!6172 (rule!8936 (h!45609 l!4168)))) e!2329112))))

(assert (= (and start!353720 res!1524526) b!3765827))

(assert (= b!3765830 b!3765828))

(assert (= b!3765826 b!3765830))

(assert (= b!3765829 b!3765826))

(assert (= (and start!353720 ((_ is Cons!40189) l!4168)) b!3765829))

(assert (= (and start!353720 ((_ is Cons!40188) acc!396)) b!3765825))

(declare-fun m!4261937 () Bool)

(assert (=> b!3765826 m!4261937))

(declare-fun m!4261939 () Bool)

(assert (=> b!3765827 m!4261939))

(assert (=> b!3765827 m!4261939))

(declare-fun m!4261941 () Bool)

(assert (=> b!3765827 m!4261941))

(declare-fun m!4261943 () Bool)

(assert (=> b!3765829 m!4261943))

(declare-fun m!4261945 () Bool)

(assert (=> b!3765830 m!4261945))

(declare-fun m!4261947 () Bool)

(assert (=> b!3765830 m!4261947))

(check-sat (not b!3765829) (not b_next!101589) b_and!279695 tp_is_empty!19149 (not b!3765830) (not b!3765827) (not b_next!101591) (not b!3765826) b_and!279697 (not b!3765825))
(check-sat b_and!279697 b_and!279695 (not b_next!101589) (not b_next!101591))
(get-model)

(declare-fun b!3765841 () Bool)

(declare-fun res!1524529 () Bool)

(declare-fun e!2329121 () Bool)

(assert (=> b!3765841 (=> res!1524529 e!2329121)))

(assert (=> b!3765841 (= res!1524529 (not ((_ is IntegerValue!19208) (value!196509 (h!45609 l!4168)))))))

(declare-fun e!2329122 () Bool)

(assert (=> b!3765841 (= e!2329122 e!2329121)))

(declare-fun b!3765842 () Bool)

(declare-fun e!2329123 () Bool)

(declare-fun inv!16 (TokenValue!6402) Bool)

(assert (=> b!3765842 (= e!2329123 (inv!16 (value!196509 (h!45609 l!4168))))))

(declare-fun d!1100866 () Bool)

(declare-fun c!652379 () Bool)

(assert (=> d!1100866 (= c!652379 ((_ is IntegerValue!19206) (value!196509 (h!45609 l!4168))))))

(assert (=> d!1100866 (= (inv!21 (value!196509 (h!45609 l!4168))) e!2329123)))

(declare-fun b!3765843 () Bool)

(declare-fun inv!17 (TokenValue!6402) Bool)

(assert (=> b!3765843 (= e!2329122 (inv!17 (value!196509 (h!45609 l!4168))))))

(declare-fun b!3765844 () Bool)

(declare-fun inv!15 (TokenValue!6402) Bool)

(assert (=> b!3765844 (= e!2329121 (inv!15 (value!196509 (h!45609 l!4168))))))

(declare-fun b!3765845 () Bool)

(assert (=> b!3765845 (= e!2329123 e!2329122)))

(declare-fun c!652378 () Bool)

(assert (=> b!3765845 (= c!652378 ((_ is IntegerValue!19207) (value!196509 (h!45609 l!4168))))))

(assert (= (and d!1100866 c!652379) b!3765842))

(assert (= (and d!1100866 (not c!652379)) b!3765845))

(assert (= (and b!3765845 c!652378) b!3765843))

(assert (= (and b!3765845 (not c!652378)) b!3765841))

(assert (= (and b!3765841 (not res!1524529)) b!3765844))

(declare-fun m!4261949 () Bool)

(assert (=> b!3765842 m!4261949))

(declare-fun m!4261951 () Bool)

(assert (=> b!3765843 m!4261951))

(declare-fun m!4261953 () Bool)

(assert (=> b!3765844 m!4261953))

(assert (=> b!3765826 d!1100866))

(declare-fun d!1100870 () Bool)

(assert (=> d!1100870 (= (inv!53954 (tag!7032 (rule!8936 (h!45609 l!4168)))) (= (mod (str.len (value!196483 (tag!7032 (rule!8936 (h!45609 l!4168))))) 2) 0))))

(assert (=> b!3765830 d!1100870))

(declare-fun d!1100872 () Bool)

(declare-fun res!1524538 () Bool)

(declare-fun e!2329132 () Bool)

(assert (=> d!1100872 (=> (not res!1524538) (not e!2329132))))

(declare-fun semiInverseModEq!2640 (Int Int) Bool)

(assert (=> d!1100872 (= res!1524538 (semiInverseModEq!2640 (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168)))) (toValue!8532 (transformation!6172 (rule!8936 (h!45609 l!4168))))))))

(assert (=> d!1100872 (= (inv!53958 (transformation!6172 (rule!8936 (h!45609 l!4168)))) e!2329132)))

(declare-fun b!3765860 () Bool)

(declare-fun equivClasses!2539 (Int Int) Bool)

(assert (=> b!3765860 (= e!2329132 (equivClasses!2539 (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168)))) (toValue!8532 (transformation!6172 (rule!8936 (h!45609 l!4168))))))))

(assert (= (and d!1100872 res!1524538) b!3765860))

(declare-fun m!4261969 () Bool)

(assert (=> d!1100872 m!4261969))

(declare-fun m!4261971 () Bool)

(assert (=> b!3765860 m!4261971))

(assert (=> b!3765830 d!1100872))

(declare-fun d!1100876 () Bool)

(declare-fun res!1524543 () Bool)

(declare-fun e!2329138 () Bool)

(assert (=> d!1100876 (=> (not res!1524543) (not e!2329138))))

(declare-fun isEmpty!23599 (List!40312) Bool)

(assert (=> d!1100876 (= res!1524543 (not (isEmpty!23599 (originalCharacters!6772 (h!45609 l!4168)))))))

(assert (=> d!1100876 (= (inv!53957 (h!45609 l!4168)) e!2329138)))

(declare-fun b!3765871 () Bool)

(declare-fun res!1524544 () Bool)

(assert (=> b!3765871 (=> (not res!1524544) (not e!2329138))))

(declare-fun list!14855 (BalanceConc!24232) List!40312)

(declare-fun dynLambda!17353 (Int TokenValue!6402) BalanceConc!24232)

(assert (=> b!3765871 (= res!1524544 (= (originalCharacters!6772 (h!45609 l!4168)) (list!14855 (dynLambda!17353 (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168)))) (value!196509 (h!45609 l!4168))))))))

(declare-fun b!3765872 () Bool)

(declare-fun size!30249 (List!40312) Int)

(assert (=> b!3765872 (= e!2329138 (= (size!30247 (h!45609 l!4168)) (size!30249 (originalCharacters!6772 (h!45609 l!4168)))))))

(assert (= (and d!1100876 res!1524543) b!3765871))

(assert (= (and b!3765871 res!1524544) b!3765872))

(declare-fun b_lambda!110491 () Bool)

(assert (=> (not b_lambda!110491) (not b!3765871)))

(declare-fun t!304334 () Bool)

(declare-fun tb!215589 () Bool)

(assert (=> (and b!3765828 (= (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168)))) (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168))))) t!304334) tb!215589))

(declare-fun b!3765881 () Bool)

(declare-fun e!2329143 () Bool)

(declare-fun tp!1150489 () Bool)

(declare-fun inv!53959 (Conc!12319) Bool)

(assert (=> b!3765881 (= e!2329143 (and (inv!53959 (c!652373 (dynLambda!17353 (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168)))) (value!196509 (h!45609 l!4168))))) tp!1150489))))

(declare-fun result!263294 () Bool)

(declare-fun inv!53960 (BalanceConc!24232) Bool)

(assert (=> tb!215589 (= result!263294 (and (inv!53960 (dynLambda!17353 (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168)))) (value!196509 (h!45609 l!4168)))) e!2329143))))

(assert (= tb!215589 b!3765881))

(declare-fun m!4261981 () Bool)

(assert (=> b!3765881 m!4261981))

(declare-fun m!4261983 () Bool)

(assert (=> tb!215589 m!4261983))

(assert (=> b!3765871 t!304334))

(declare-fun b_and!279699 () Bool)

(assert (= b_and!279697 (and (=> t!304334 result!263294) b_and!279699)))

(declare-fun m!4261985 () Bool)

(assert (=> d!1100876 m!4261985))

(declare-fun m!4261987 () Bool)

(assert (=> b!3765871 m!4261987))

(assert (=> b!3765871 m!4261987))

(declare-fun m!4261989 () Bool)

(assert (=> b!3765871 m!4261989))

(declare-fun m!4261991 () Bool)

(assert (=> b!3765872 m!4261991))

(assert (=> b!3765829 d!1100876))

(declare-fun b!3765898 () Bool)

(declare-fun e!2329153 () List!40312)

(assert (=> b!3765898 (= e!2329153 (Cons!40188 (h!45608 acc!396) (++!9976 (t!304331 acc!396) (printList!1673 thiss!13564 l!4168))))))

(declare-fun b!3765897 () Bool)

(assert (=> b!3765897 (= e!2329153 (printList!1673 thiss!13564 l!4168))))

(declare-fun b!3765900 () Bool)

(declare-fun lt!1303017 () List!40312)

(declare-fun e!2329152 () Bool)

(assert (=> b!3765900 (= e!2329152 (or (not (= (printList!1673 thiss!13564 l!4168) Nil!40188)) (= lt!1303017 acc!396)))))

(declare-fun b!3765899 () Bool)

(declare-fun res!1524556 () Bool)

(assert (=> b!3765899 (=> (not res!1524556) (not e!2329152))))

(assert (=> b!3765899 (= res!1524556 (= (size!30249 lt!1303017) (+ (size!30249 acc!396) (size!30249 (printList!1673 thiss!13564 l!4168)))))))

(declare-fun d!1100880 () Bool)

(assert (=> d!1100880 e!2329152))

(declare-fun res!1524555 () Bool)

(assert (=> d!1100880 (=> (not res!1524555) (not e!2329152))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5904 (List!40312) (InoxSet C!22340))

(assert (=> d!1100880 (= res!1524555 (= (content!5904 lt!1303017) ((_ map or) (content!5904 acc!396) (content!5904 (printList!1673 thiss!13564 l!4168)))))))

(assert (=> d!1100880 (= lt!1303017 e!2329153)))

(declare-fun c!652388 () Bool)

(assert (=> d!1100880 (= c!652388 ((_ is Nil!40188) acc!396))))

(assert (=> d!1100880 (= (++!9976 acc!396 (printList!1673 thiss!13564 l!4168)) lt!1303017)))

(assert (= (and d!1100880 c!652388) b!3765897))

(assert (= (and d!1100880 (not c!652388)) b!3765898))

(assert (= (and d!1100880 res!1524555) b!3765899))

(assert (= (and b!3765899 res!1524556) b!3765900))

(assert (=> b!3765898 m!4261939))

(declare-fun m!4262005 () Bool)

(assert (=> b!3765898 m!4262005))

(declare-fun m!4262007 () Bool)

(assert (=> b!3765899 m!4262007))

(declare-fun m!4262009 () Bool)

(assert (=> b!3765899 m!4262009))

(assert (=> b!3765899 m!4261939))

(declare-fun m!4262011 () Bool)

(assert (=> b!3765899 m!4262011))

(declare-fun m!4262013 () Bool)

(assert (=> d!1100880 m!4262013))

(declare-fun m!4262015 () Bool)

(assert (=> d!1100880 m!4262015))

(assert (=> d!1100880 m!4261939))

(declare-fun m!4262017 () Bool)

(assert (=> d!1100880 m!4262017))

(assert (=> b!3765827 d!1100880))

(declare-fun d!1100886 () Bool)

(declare-fun c!652391 () Bool)

(assert (=> d!1100886 (= c!652391 ((_ is Cons!40189) l!4168))))

(declare-fun e!2329159 () List!40312)

(assert (=> d!1100886 (= (printList!1673 thiss!13564 l!4168) e!2329159)))

(declare-fun b!3765908 () Bool)

(declare-fun charsOf!4022 (Token!11482) BalanceConc!24232)

(assert (=> b!3765908 (= e!2329159 (++!9976 (list!14855 (charsOf!4022 (h!45609 l!4168))) (printList!1673 thiss!13564 (t!304332 l!4168))))))

(declare-fun b!3765909 () Bool)

(assert (=> b!3765909 (= e!2329159 Nil!40188)))

(assert (= (and d!1100886 c!652391) b!3765908))

(assert (= (and d!1100886 (not c!652391)) b!3765909))

(declare-fun m!4262023 () Bool)

(assert (=> b!3765908 m!4262023))

(assert (=> b!3765908 m!4262023))

(declare-fun m!4262025 () Bool)

(assert (=> b!3765908 m!4262025))

(declare-fun m!4262027 () Bool)

(assert (=> b!3765908 m!4262027))

(assert (=> b!3765908 m!4262025))

(assert (=> b!3765908 m!4262027))

(declare-fun m!4262029 () Bool)

(assert (=> b!3765908 m!4262029))

(assert (=> b!3765827 d!1100886))

(declare-fun b!3765924 () Bool)

(declare-fun e!2329168 () Bool)

(declare-fun tp!1150495 () Bool)

(assert (=> b!3765924 (= e!2329168 (and tp_is_empty!19149 tp!1150495))))

(assert (=> b!3765826 (= tp!1150485 e!2329168)))

(assert (= (and b!3765826 ((_ is Cons!40188) (originalCharacters!6772 (h!45609 l!4168)))) b!3765924))

(declare-fun e!2329174 () Bool)

(assert (=> b!3765830 (= tp!1150484 e!2329174)))

(declare-fun b!3765940 () Bool)

(assert (=> b!3765940 (= e!2329174 tp_is_empty!19149)))

(declare-fun b!3765942 () Bool)

(declare-fun tp!1150507 () Bool)

(assert (=> b!3765942 (= e!2329174 tp!1150507)))

(declare-fun b!3765941 () Bool)

(declare-fun tp!1150509 () Bool)

(declare-fun tp!1150508 () Bool)

(assert (=> b!3765941 (= e!2329174 (and tp!1150509 tp!1150508))))

(declare-fun b!3765943 () Bool)

(declare-fun tp!1150510 () Bool)

(declare-fun tp!1150506 () Bool)

(assert (=> b!3765943 (= e!2329174 (and tp!1150510 tp!1150506))))

(assert (= (and b!3765830 ((_ is ElementMatch!11077) (regex!6172 (rule!8936 (h!45609 l!4168))))) b!3765940))

(assert (= (and b!3765830 ((_ is Concat!17479) (regex!6172 (rule!8936 (h!45609 l!4168))))) b!3765941))

(assert (= (and b!3765830 ((_ is Star!11077) (regex!6172 (rule!8936 (h!45609 l!4168))))) b!3765942))

(assert (= (and b!3765830 ((_ is Union!11077) (regex!6172 (rule!8936 (h!45609 l!4168))))) b!3765943))

(declare-fun b!3765948 () Bool)

(declare-fun e!2329177 () Bool)

(declare-fun tp!1150511 () Bool)

(assert (=> b!3765948 (= e!2329177 (and tp_is_empty!19149 tp!1150511))))

(assert (=> b!3765825 (= tp!1150481 e!2329177)))

(assert (= (and b!3765825 ((_ is Cons!40188) (t!304331 acc!396))) b!3765948))

(declare-fun b!3765972 () Bool)

(declare-fun b_free!100891 () Bool)

(declare-fun b_next!101595 () Bool)

(assert (=> b!3765972 (= b_free!100891 (not b_next!101595))))

(declare-fun tp!1150537 () Bool)

(declare-fun b_and!279705 () Bool)

(assert (=> b!3765972 (= tp!1150537 b_and!279705)))

(declare-fun b_free!100895 () Bool)

(declare-fun b_next!101599 () Bool)

(assert (=> b!3765972 (= b_free!100895 (not b_next!101599))))

(declare-fun t!304340 () Bool)

(declare-fun tb!215595 () Bool)

(assert (=> (and b!3765972 (= (toChars!8391 (transformation!6172 (rule!8936 (h!45609 (t!304332 l!4168))))) (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168))))) t!304340) tb!215595))

(declare-fun result!263312 () Bool)

(assert (= result!263312 result!263294))

(assert (=> b!3765871 t!304340))

(declare-fun b_and!279709 () Bool)

(declare-fun tp!1150538 () Bool)

(assert (=> b!3765972 (= tp!1150538 (and (=> t!304340 result!263312) b_and!279709))))

(declare-fun b!3765970 () Bool)

(declare-fun e!2329208 () Bool)

(declare-fun e!2329211 () Bool)

(declare-fun tp!1150539 () Bool)

(assert (=> b!3765970 (= e!2329208 (and (inv!21 (value!196509 (h!45609 (t!304332 l!4168)))) e!2329211 tp!1150539))))

(declare-fun b!3765969 () Bool)

(declare-fun tp!1150541 () Bool)

(declare-fun e!2329207 () Bool)

(assert (=> b!3765969 (= e!2329207 (and (inv!53957 (h!45609 (t!304332 l!4168))) e!2329208 tp!1150541))))

(declare-fun e!2329206 () Bool)

(declare-fun tp!1150540 () Bool)

(declare-fun b!3765971 () Bool)

(assert (=> b!3765971 (= e!2329211 (and tp!1150540 (inv!53954 (tag!7032 (rule!8936 (h!45609 (t!304332 l!4168))))) (inv!53958 (transformation!6172 (rule!8936 (h!45609 (t!304332 l!4168))))) e!2329206))))

(assert (=> b!3765829 (= tp!1150483 e!2329207)))

(assert (=> b!3765972 (= e!2329206 (and tp!1150537 tp!1150538))))

(assert (= b!3765971 b!3765972))

(assert (= b!3765970 b!3765971))

(assert (= b!3765969 b!3765970))

(assert (= (and b!3765829 ((_ is Cons!40189) (t!304332 l!4168))) b!3765969))

(declare-fun m!4262039 () Bool)

(assert (=> b!3765970 m!4262039))

(declare-fun m!4262043 () Bool)

(assert (=> b!3765969 m!4262043))

(declare-fun m!4262047 () Bool)

(assert (=> b!3765971 m!4262047))

(declare-fun m!4262051 () Bool)

(assert (=> b!3765971 m!4262051))

(declare-fun b_lambda!110495 () Bool)

(assert (= b_lambda!110491 (or (and b!3765828 b_free!100887) (and b!3765972 b_free!100895 (= (toChars!8391 (transformation!6172 (rule!8936 (h!45609 (t!304332 l!4168))))) (toChars!8391 (transformation!6172 (rule!8936 (h!45609 l!4168)))))) b_lambda!110495)))

(check-sat b_and!279705 (not b!3765871) (not b!3765948) (not b!3765872) (not b!3765842) (not b!3765969) b_and!279699 (not b!3765899) (not d!1100872) b_and!279709 (not tb!215589) (not b_next!101589) (not b!3765942) b_and!279695 tp_is_empty!19149 (not b!3765881) (not b_next!101595) (not d!1100880) (not b!3765941) (not b!3765943) (not b!3765898) (not b!3765844) (not b!3765924) (not b_next!101599) (not b_next!101591) (not b!3765908) (not b!3765971) (not b!3765860) (not b!3765970) (not b!3765843) (not b_lambda!110495) (not d!1100876))
(check-sat b_and!279705 (not b_next!101589) b_and!279695 (not b_next!101595) b_and!279699 b_and!279709 (not b_next!101599) (not b_next!101591))
