; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!353088 () Bool)

(assert start!353088)

(declare-fun b!3760877 () Bool)

(declare-fun b_free!100713 () Bool)

(declare-fun b_next!101417 () Bool)

(assert (=> b!3760877 (= b_free!100713 (not b_next!101417))))

(declare-fun tp!1149265 () Bool)

(declare-fun b_and!279403 () Bool)

(assert (=> b!3760877 (= tp!1149265 b_and!279403)))

(declare-fun b_free!100715 () Bool)

(declare-fun b_next!101419 () Bool)

(assert (=> b!3760877 (= b_free!100715 (not b_next!101419))))

(declare-fun tp!1149259 () Bool)

(declare-fun b_and!279405 () Bool)

(assert (=> b!3760877 (= tp!1149259 b_and!279405)))

(declare-fun b!3760882 () Bool)

(declare-fun b_free!100717 () Bool)

(declare-fun b_next!101421 () Bool)

(assert (=> b!3760882 (= b_free!100717 (not b_next!101421))))

(declare-fun tp!1149258 () Bool)

(declare-fun b_and!279407 () Bool)

(assert (=> b!3760882 (= tp!1149258 b_and!279407)))

(declare-fun b_free!100719 () Bool)

(declare-fun b_next!101423 () Bool)

(assert (=> b!3760882 (= b_free!100719 (not b_next!101423))))

(declare-fun tp!1149261 () Bool)

(declare-fun b_and!279409 () Bool)

(assert (=> b!3760882 (= tp!1149261 b_and!279409)))

(declare-fun e!2326033 () Bool)

(declare-fun b!3760875 () Bool)

(declare-datatypes ((String!45537 0))(
  ( (String!45538 (value!195724 String)) )
))
(declare-datatypes ((List!40221 0))(
  ( (Nil!40097) (Cons!40097 (h!45517 (_ BitVec 16)) (t!303846 List!40221)) )
))
(declare-datatypes ((TokenValue!6376 0))(
  ( (FloatLiteralValue!12752 (text!45077 List!40221)) (TokenValueExt!6375 (__x!24969 Int)) (Broken!31880 (value!195725 List!40221)) (Object!6499) (End!6376) (Def!6376) (Underscore!6376) (Match!6376) (Else!6376) (Error!6376) (Case!6376) (If!6376) (Extends!6376) (Abstract!6376) (Class!6376) (Val!6376) (DelimiterValue!12752 (del!6436 List!40221)) (KeywordValue!6382 (value!195726 List!40221)) (CommentValue!12752 (value!195727 List!40221)) (WhitespaceValue!12752 (value!195728 List!40221)) (IndentationValue!6376 (value!195729 List!40221)) (String!45539) (Int32!6376) (Broken!31881 (value!195730 List!40221)) (Boolean!6377) (Unit!57815) (OperatorValue!6379 (op!6436 List!40221)) (IdentifierValue!12752 (value!195731 List!40221)) (IdentifierValue!12753 (value!195732 List!40221)) (WhitespaceValue!12753 (value!195733 List!40221)) (True!12752) (False!12752) (Broken!31882 (value!195734 List!40221)) (Broken!31883 (value!195735 List!40221)) (True!12753) (RightBrace!6376) (RightBracket!6376) (Colon!6376) (Null!6376) (Comma!6376) (LeftBracket!6376) (False!12753) (LeftBrace!6376) (ImaginaryLiteralValue!6376 (text!45078 List!40221)) (StringLiteralValue!19128 (value!195736 List!40221)) (EOFValue!6376 (value!195737 List!40221)) (IdentValue!6376 (value!195738 List!40221)) (DelimiterValue!12753 (value!195739 List!40221)) (DedentValue!6376 (value!195740 List!40221)) (NewLineValue!6376 (value!195741 List!40221)) (IntegerValue!19128 (value!195742 (_ BitVec 32)) (text!45079 List!40221)) (IntegerValue!19129 (value!195743 Int) (text!45080 List!40221)) (Times!6376) (Or!6376) (Equal!6376) (Minus!6376) (Broken!31884 (value!195744 List!40221)) (And!6376) (Div!6376) (LessEqual!6376) (Mod!6376) (Concat!17427) (Not!6376) (Plus!6376) (SpaceValue!6376 (value!195745 List!40221)) (IntegerValue!19130 (value!195746 Int) (text!45081 List!40221)) (StringLiteralValue!19129 (text!45082 List!40221)) (FloatLiteralValue!12753 (text!45083 List!40221)) (BytesLiteralValue!6376 (value!195747 List!40221)) (CommentValue!12753 (value!195748 List!40221)) (StringLiteralValue!19130 (value!195749 List!40221)) (ErrorTokenValue!6376 (msg!6437 List!40221)) )
))
(declare-datatypes ((C!22288 0))(
  ( (C!22289 (val!13208 Int)) )
))
(declare-datatypes ((List!40222 0))(
  ( (Nil!40098) (Cons!40098 (h!45518 C!22288) (t!303847 List!40222)) )
))
(declare-datatypes ((IArray!24563 0))(
  ( (IArray!24564 (innerList!12339 List!40222)) )
))
(declare-datatypes ((Conc!12279 0))(
  ( (Node!12279 (left!31043 Conc!12279) (right!31373 Conc!12279) (csize!24788 Int) (cheight!12490 Int)) (Leaf!19044 (xs!15485 IArray!24563) (csize!24789 Int)) (Empty!12279) )
))
(declare-datatypes ((BalanceConc!24152 0))(
  ( (BalanceConc!24153 (c!651212 Conc!12279)) )
))
(declare-datatypes ((TokenValueInjection!12180 0))(
  ( (TokenValueInjection!12181 (toValue!8502 Int) (toChars!8361 Int)) )
))
(declare-datatypes ((Regex!11051 0))(
  ( (ElementMatch!11051 (c!651213 C!22288)) (Concat!17428 (regOne!22614 Regex!11051) (regTwo!22614 Regex!11051)) (EmptyExpr!11051) (Star!11051 (reg!11380 Regex!11051)) (EmptyLang!11051) (Union!11051 (regOne!22615 Regex!11051) (regTwo!22615 Regex!11051)) )
))
(declare-datatypes ((Rule!12092 0))(
  ( (Rule!12093 (regex!6146 Regex!11051) (tag!7006 String!45537) (isSeparator!6146 Bool) (transformation!6146 TokenValueInjection!12180)) )
))
(declare-datatypes ((Token!11430 0))(
  ( (Token!11431 (value!195750 TokenValue!6376) (rule!8910 Rule!12092) (size!30176 Int) (originalCharacters!6746 List!40222)) )
))
(declare-datatypes ((List!40223 0))(
  ( (Nil!40099) (Cons!40099 (h!45519 Token!11430) (t!303848 List!40223)) )
))
(declare-fun l!4208 () List!40223)

(declare-fun e!2326035 () Bool)

(declare-fun tp!1149260 () Bool)

(declare-fun inv!53776 (Token!11430) Bool)

(assert (=> b!3760875 (= e!2326033 (and (inv!53776 (h!45519 l!4208)) e!2326035 tp!1149260))))

(declare-fun b!3760876 () Bool)

(declare-fun e!2326034 () Bool)

(declare-fun ListPrimitiveSize!269 (List!40223) Int)

(assert (=> b!3760876 (= e!2326034 (>= (ListPrimitiveSize!269 (t!303848 l!4208)) (ListPrimitiveSize!269 l!4208)))))

(declare-fun lt!1301729 () List!40222)

(declare-fun separatorToken!80 () Token!11430)

(declare-fun ++!9943 (List!40222 List!40222) List!40222)

(declare-fun list!14802 (BalanceConc!24152) List!40222)

(declare-fun charsOf!3998 (Token!11430) BalanceConc!24152)

(assert (=> b!3760876 (= lt!1301729 (++!9943 (list!14802 (charsOf!3998 (h!45519 l!4208))) (list!14802 (charsOf!3998 separatorToken!80))))))

(declare-fun res!1522921 () Bool)

(assert (=> start!353088 (=> (not res!1522921) (not e!2326034))))

(declare-datatypes ((LexerInterface!5735 0))(
  ( (LexerInterfaceExt!5732 (__x!24970 Int)) (Lexer!5733) )
))
(declare-fun thiss!13702 () LexerInterface!5735)

(get-info :version)

(assert (=> start!353088 (= res!1522921 (and ((_ is Lexer!5733) thiss!13702) (isSeparator!6146 (rule!8910 separatorToken!80)) ((_ is Cons!40099) l!4208)))))

(assert (=> start!353088 e!2326034))

(assert (=> start!353088 true))

(declare-fun e!2326039 () Bool)

(assert (=> start!353088 (and (inv!53776 separatorToken!80) e!2326039)))

(assert (=> start!353088 e!2326033))

(declare-fun e!2326036 () Bool)

(assert (=> b!3760877 (= e!2326036 (and tp!1149265 tp!1149259))))

(declare-fun e!2326030 () Bool)

(declare-fun b!3760878 () Bool)

(declare-fun tp!1149263 () Bool)

(declare-fun inv!21 (TokenValue!6376) Bool)

(assert (=> b!3760878 (= e!2326039 (and (inv!21 (value!195750 separatorToken!80)) e!2326030 tp!1149263))))

(declare-fun e!2326037 () Bool)

(declare-fun b!3760879 () Bool)

(declare-fun tp!1149266 () Bool)

(declare-fun inv!53773 (String!45537) Bool)

(declare-fun inv!53777 (TokenValueInjection!12180) Bool)

(assert (=> b!3760879 (= e!2326030 (and tp!1149266 (inv!53773 (tag!7006 (rule!8910 separatorToken!80))) (inv!53777 (transformation!6146 (rule!8910 separatorToken!80))) e!2326037))))

(declare-fun tp!1149264 () Bool)

(declare-fun b!3760880 () Bool)

(declare-fun e!2326032 () Bool)

(assert (=> b!3760880 (= e!2326035 (and (inv!21 (value!195750 (h!45519 l!4208))) e!2326032 tp!1149264))))

(declare-fun tp!1149262 () Bool)

(declare-fun b!3760881 () Bool)

(assert (=> b!3760881 (= e!2326032 (and tp!1149262 (inv!53773 (tag!7006 (rule!8910 (h!45519 l!4208)))) (inv!53777 (transformation!6146 (rule!8910 (h!45519 l!4208)))) e!2326036))))

(assert (=> b!3760882 (= e!2326037 (and tp!1149258 tp!1149261))))

(assert (= (and start!353088 res!1522921) b!3760876))

(assert (= b!3760879 b!3760882))

(assert (= b!3760878 b!3760879))

(assert (= start!353088 b!3760878))

(assert (= b!3760881 b!3760877))

(assert (= b!3760880 b!3760881))

(assert (= b!3760875 b!3760880))

(assert (= (and start!353088 ((_ is Cons!40099) l!4208)) b!3760875))

(declare-fun m!4254923 () Bool)

(assert (=> b!3760880 m!4254923))

(declare-fun m!4254925 () Bool)

(assert (=> start!353088 m!4254925))

(declare-fun m!4254927 () Bool)

(assert (=> b!3760876 m!4254927))

(declare-fun m!4254929 () Bool)

(assert (=> b!3760876 m!4254929))

(declare-fun m!4254931 () Bool)

(assert (=> b!3760876 m!4254931))

(declare-fun m!4254933 () Bool)

(assert (=> b!3760876 m!4254933))

(declare-fun m!4254935 () Bool)

(assert (=> b!3760876 m!4254935))

(assert (=> b!3760876 m!4254929))

(assert (=> b!3760876 m!4254931))

(declare-fun m!4254937 () Bool)

(assert (=> b!3760876 m!4254937))

(declare-fun m!4254939 () Bool)

(assert (=> b!3760876 m!4254939))

(assert (=> b!3760876 m!4254933))

(assert (=> b!3760876 m!4254937))

(declare-fun m!4254941 () Bool)

(assert (=> b!3760879 m!4254941))

(declare-fun m!4254943 () Bool)

(assert (=> b!3760879 m!4254943))

(declare-fun m!4254945 () Bool)

(assert (=> b!3760881 m!4254945))

(declare-fun m!4254947 () Bool)

(assert (=> b!3760881 m!4254947))

(declare-fun m!4254949 () Bool)

(assert (=> b!3760875 m!4254949))

(declare-fun m!4254951 () Bool)

(assert (=> b!3760878 m!4254951))

(check-sat (not b_next!101417) (not b!3760875) (not b!3760879) (not b!3760878) (not b_next!101421) (not start!353088) (not b_next!101419) (not b!3760876) (not b_next!101423) b_and!279403 b_and!279407 (not b!3760881) b_and!279409 b_and!279405 (not b!3760880))
(check-sat (not b_next!101417) (not b_next!101421) (not b_next!101419) (not b_next!101423) b_and!279403 b_and!279409 b_and!279407 b_and!279405)
(get-model)

(declare-fun d!1098529 () Bool)

(assert (=> d!1098529 (= (inv!53773 (tag!7006 (rule!8910 separatorToken!80))) (= (mod (str.len (value!195724 (tag!7006 (rule!8910 separatorToken!80)))) 2) 0))))

(assert (=> b!3760879 d!1098529))

(declare-fun d!1098533 () Bool)

(declare-fun res!1522934 () Bool)

(declare-fun e!2326055 () Bool)

(assert (=> d!1098533 (=> (not res!1522934) (not e!2326055))))

(declare-fun semiInverseModEq!2632 (Int Int) Bool)

(assert (=> d!1098533 (= res!1522934 (semiInverseModEq!2632 (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (toValue!8502 (transformation!6146 (rule!8910 separatorToken!80)))))))

(assert (=> d!1098533 (= (inv!53777 (transformation!6146 (rule!8910 separatorToken!80))) e!2326055)))

(declare-fun b!3760905 () Bool)

(declare-fun equivClasses!2531 (Int Int) Bool)

(assert (=> b!3760905 (= e!2326055 (equivClasses!2531 (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (toValue!8502 (transformation!6146 (rule!8910 separatorToken!80)))))))

(assert (= (and d!1098533 res!1522934) b!3760905))

(declare-fun m!4254969 () Bool)

(assert (=> d!1098533 m!4254969))

(declare-fun m!4254971 () Bool)

(assert (=> b!3760905 m!4254971))

(assert (=> b!3760879 d!1098533))

(declare-fun d!1098539 () Bool)

(declare-fun res!1522939 () Bool)

(declare-fun e!2326061 () Bool)

(assert (=> d!1098539 (=> (not res!1522939) (not e!2326061))))

(declare-fun isEmpty!23575 (List!40222) Bool)

(assert (=> d!1098539 (= res!1522939 (not (isEmpty!23575 (originalCharacters!6746 separatorToken!80))))))

(assert (=> d!1098539 (= (inv!53776 separatorToken!80) e!2326061)))

(declare-fun b!3760916 () Bool)

(declare-fun res!1522940 () Bool)

(assert (=> b!3760916 (=> (not res!1522940) (not e!2326061))))

(declare-fun dynLambda!17336 (Int TokenValue!6376) BalanceConc!24152)

(assert (=> b!3760916 (= res!1522940 (= (originalCharacters!6746 separatorToken!80) (list!14802 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (value!195750 separatorToken!80)))))))

(declare-fun b!3760917 () Bool)

(declare-fun size!30178 (List!40222) Int)

(assert (=> b!3760917 (= e!2326061 (= (size!30176 separatorToken!80) (size!30178 (originalCharacters!6746 separatorToken!80))))))

(assert (= (and d!1098539 res!1522939) b!3760916))

(assert (= (and b!3760916 res!1522940) b!3760917))

(declare-fun b_lambda!110365 () Bool)

(assert (=> (not b_lambda!110365) (not b!3760916)))

(declare-fun tb!215233 () Bool)

(declare-fun t!303854 () Bool)

(assert (=> (and b!3760877 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80)))) t!303854) tb!215233))

(declare-fun b!3760930 () Bool)

(declare-fun e!2326068 () Bool)

(declare-fun tp!1149272 () Bool)

(declare-fun inv!53780 (Conc!12279) Bool)

(assert (=> b!3760930 (= e!2326068 (and (inv!53780 (c!651212 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (value!195750 separatorToken!80)))) tp!1149272))))

(declare-fun result!262836 () Bool)

(declare-fun inv!53781 (BalanceConc!24152) Bool)

(assert (=> tb!215233 (= result!262836 (and (inv!53781 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (value!195750 separatorToken!80))) e!2326068))))

(assert (= tb!215233 b!3760930))

(declare-fun m!4254975 () Bool)

(assert (=> b!3760930 m!4254975))

(declare-fun m!4254977 () Bool)

(assert (=> tb!215233 m!4254977))

(assert (=> b!3760916 t!303854))

(declare-fun b_and!279415 () Bool)

(assert (= b_and!279405 (and (=> t!303854 result!262836) b_and!279415)))

(declare-fun t!303856 () Bool)

(declare-fun tb!215235 () Bool)

(assert (=> (and b!3760882 (= (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80)))) t!303856) tb!215235))

(declare-fun result!262840 () Bool)

(assert (= result!262840 result!262836))

(assert (=> b!3760916 t!303856))

(declare-fun b_and!279417 () Bool)

(assert (= b_and!279409 (and (=> t!303856 result!262840) b_and!279417)))

(declare-fun m!4254979 () Bool)

(assert (=> d!1098539 m!4254979))

(declare-fun m!4254981 () Bool)

(assert (=> b!3760916 m!4254981))

(assert (=> b!3760916 m!4254981))

(declare-fun m!4254983 () Bool)

(assert (=> b!3760916 m!4254983))

(declare-fun m!4254985 () Bool)

(assert (=> b!3760917 m!4254985))

(assert (=> start!353088 d!1098539))

(declare-fun b!3760957 () Bool)

(declare-fun e!2326085 () Bool)

(declare-fun inv!15 (TokenValue!6376) Bool)

(assert (=> b!3760957 (= e!2326085 (inv!15 (value!195750 (h!45519 l!4208))))))

(declare-fun d!1098543 () Bool)

(declare-fun c!651234 () Bool)

(assert (=> d!1098543 (= c!651234 ((_ is IntegerValue!19128) (value!195750 (h!45519 l!4208))))))

(declare-fun e!2326086 () Bool)

(assert (=> d!1098543 (= (inv!21 (value!195750 (h!45519 l!4208))) e!2326086)))

(declare-fun b!3760958 () Bool)

(declare-fun res!1522954 () Bool)

(assert (=> b!3760958 (=> res!1522954 e!2326085)))

(assert (=> b!3760958 (= res!1522954 (not ((_ is IntegerValue!19130) (value!195750 (h!45519 l!4208)))))))

(declare-fun e!2326084 () Bool)

(assert (=> b!3760958 (= e!2326084 e!2326085)))

(declare-fun b!3760959 () Bool)

(declare-fun inv!17 (TokenValue!6376) Bool)

(assert (=> b!3760959 (= e!2326084 (inv!17 (value!195750 (h!45519 l!4208))))))

(declare-fun b!3760960 () Bool)

(declare-fun inv!16 (TokenValue!6376) Bool)

(assert (=> b!3760960 (= e!2326086 (inv!16 (value!195750 (h!45519 l!4208))))))

(declare-fun b!3760961 () Bool)

(assert (=> b!3760961 (= e!2326086 e!2326084)))

(declare-fun c!651233 () Bool)

(assert (=> b!3760961 (= c!651233 ((_ is IntegerValue!19129) (value!195750 (h!45519 l!4208))))))

(assert (= (and d!1098543 c!651234) b!3760960))

(assert (= (and d!1098543 (not c!651234)) b!3760961))

(assert (= (and b!3760961 c!651233) b!3760959))

(assert (= (and b!3760961 (not c!651233)) b!3760958))

(assert (= (and b!3760958 (not res!1522954)) b!3760957))

(declare-fun m!4255017 () Bool)

(assert (=> b!3760957 m!4255017))

(declare-fun m!4255019 () Bool)

(assert (=> b!3760959 m!4255019))

(declare-fun m!4255021 () Bool)

(assert (=> b!3760960 m!4255021))

(assert (=> b!3760880 d!1098543))

(declare-fun b!3760962 () Bool)

(declare-fun e!2326088 () Bool)

(assert (=> b!3760962 (= e!2326088 (inv!15 (value!195750 separatorToken!80)))))

(declare-fun d!1098555 () Bool)

(declare-fun c!651236 () Bool)

(assert (=> d!1098555 (= c!651236 ((_ is IntegerValue!19128) (value!195750 separatorToken!80)))))

(declare-fun e!2326089 () Bool)

(assert (=> d!1098555 (= (inv!21 (value!195750 separatorToken!80)) e!2326089)))

(declare-fun b!3760963 () Bool)

(declare-fun res!1522955 () Bool)

(assert (=> b!3760963 (=> res!1522955 e!2326088)))

(assert (=> b!3760963 (= res!1522955 (not ((_ is IntegerValue!19130) (value!195750 separatorToken!80))))))

(declare-fun e!2326087 () Bool)

(assert (=> b!3760963 (= e!2326087 e!2326088)))

(declare-fun b!3760964 () Bool)

(assert (=> b!3760964 (= e!2326087 (inv!17 (value!195750 separatorToken!80)))))

(declare-fun b!3760965 () Bool)

(assert (=> b!3760965 (= e!2326089 (inv!16 (value!195750 separatorToken!80)))))

(declare-fun b!3760966 () Bool)

(assert (=> b!3760966 (= e!2326089 e!2326087)))

(declare-fun c!651235 () Bool)

(assert (=> b!3760966 (= c!651235 ((_ is IntegerValue!19129) (value!195750 separatorToken!80)))))

(assert (= (and d!1098555 c!651236) b!3760965))

(assert (= (and d!1098555 (not c!651236)) b!3760966))

(assert (= (and b!3760966 c!651235) b!3760964))

(assert (= (and b!3760966 (not c!651235)) b!3760963))

(assert (= (and b!3760963 (not res!1522955)) b!3760962))

(declare-fun m!4255023 () Bool)

(assert (=> b!3760962 m!4255023))

(declare-fun m!4255025 () Bool)

(assert (=> b!3760964 m!4255025))

(declare-fun m!4255027 () Bool)

(assert (=> b!3760965 m!4255027))

(assert (=> b!3760878 d!1098555))

(declare-fun d!1098557 () Bool)

(declare-fun res!1522956 () Bool)

(declare-fun e!2326090 () Bool)

(assert (=> d!1098557 (=> (not res!1522956) (not e!2326090))))

(assert (=> d!1098557 (= res!1522956 (not (isEmpty!23575 (originalCharacters!6746 (h!45519 l!4208)))))))

(assert (=> d!1098557 (= (inv!53776 (h!45519 l!4208)) e!2326090)))

(declare-fun b!3760967 () Bool)

(declare-fun res!1522957 () Bool)

(assert (=> b!3760967 (=> (not res!1522957) (not e!2326090))))

(assert (=> b!3760967 (= res!1522957 (= (originalCharacters!6746 (h!45519 l!4208)) (list!14802 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (value!195750 (h!45519 l!4208))))))))

(declare-fun b!3760968 () Bool)

(assert (=> b!3760968 (= e!2326090 (= (size!30176 (h!45519 l!4208)) (size!30178 (originalCharacters!6746 (h!45519 l!4208)))))))

(assert (= (and d!1098557 res!1522956) b!3760967))

(assert (= (and b!3760967 res!1522957) b!3760968))

(declare-fun b_lambda!110369 () Bool)

(assert (=> (not b_lambda!110369) (not b!3760967)))

(declare-fun t!303862 () Bool)

(declare-fun tb!215241 () Bool)

(assert (=> (and b!3760877 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208))))) t!303862) tb!215241))

(declare-fun b!3760971 () Bool)

(declare-fun e!2326092 () Bool)

(declare-fun tp!1149274 () Bool)

(assert (=> b!3760971 (= e!2326092 (and (inv!53780 (c!651212 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (value!195750 (h!45519 l!4208))))) tp!1149274))))

(declare-fun result!262846 () Bool)

(assert (=> tb!215241 (= result!262846 (and (inv!53781 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (value!195750 (h!45519 l!4208)))) e!2326092))))

(assert (= tb!215241 b!3760971))

(declare-fun m!4255033 () Bool)

(assert (=> b!3760971 m!4255033))

(declare-fun m!4255037 () Bool)

(assert (=> tb!215241 m!4255037))

(assert (=> b!3760967 t!303862))

(declare-fun b_and!279427 () Bool)

(assert (= b_and!279415 (and (=> t!303862 result!262846) b_and!279427)))

(declare-fun t!303864 () Bool)

(declare-fun tb!215243 () Bool)

(assert (=> (and b!3760882 (= (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208))))) t!303864) tb!215243))

(declare-fun result!262848 () Bool)

(assert (= result!262848 result!262846))

(assert (=> b!3760967 t!303864))

(declare-fun b_and!279429 () Bool)

(assert (= b_and!279417 (and (=> t!303864 result!262848) b_and!279429)))

(declare-fun m!4255039 () Bool)

(assert (=> d!1098557 m!4255039))

(declare-fun m!4255041 () Bool)

(assert (=> b!3760967 m!4255041))

(assert (=> b!3760967 m!4255041))

(declare-fun m!4255043 () Bool)

(assert (=> b!3760967 m!4255043))

(declare-fun m!4255045 () Bool)

(assert (=> b!3760968 m!4255045))

(assert (=> b!3760875 d!1098557))

(declare-fun d!1098561 () Bool)

(assert (=> d!1098561 (= (inv!53773 (tag!7006 (rule!8910 (h!45519 l!4208)))) (= (mod (str.len (value!195724 (tag!7006 (rule!8910 (h!45519 l!4208))))) 2) 0))))

(assert (=> b!3760881 d!1098561))

(declare-fun d!1098563 () Bool)

(declare-fun res!1522962 () Bool)

(declare-fun e!2326094 () Bool)

(assert (=> d!1098563 (=> (not res!1522962) (not e!2326094))))

(assert (=> d!1098563 (= res!1522962 (semiInverseModEq!2632 (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (toValue!8502 (transformation!6146 (rule!8910 (h!45519 l!4208))))))))

(assert (=> d!1098563 (= (inv!53777 (transformation!6146 (rule!8910 (h!45519 l!4208)))) e!2326094)))

(declare-fun b!3760974 () Bool)

(assert (=> b!3760974 (= e!2326094 (equivClasses!2531 (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (toValue!8502 (transformation!6146 (rule!8910 (h!45519 l!4208))))))))

(assert (= (and d!1098563 res!1522962) b!3760974))

(declare-fun m!4255053 () Bool)

(assert (=> d!1098563 m!4255053))

(declare-fun m!4255055 () Bool)

(assert (=> b!3760974 m!4255055))

(assert (=> b!3760881 d!1098563))

(declare-fun d!1098567 () Bool)

(declare-fun lt!1301743 () BalanceConc!24152)

(assert (=> d!1098567 (= (list!14802 lt!1301743) (originalCharacters!6746 (h!45519 l!4208)))))

(assert (=> d!1098567 (= lt!1301743 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (value!195750 (h!45519 l!4208))))))

(assert (=> d!1098567 (= (charsOf!3998 (h!45519 l!4208)) lt!1301743)))

(declare-fun b_lambda!110375 () Bool)

(assert (=> (not b_lambda!110375) (not d!1098567)))

(assert (=> d!1098567 t!303862))

(declare-fun b_and!279435 () Bool)

(assert (= b_and!279427 (and (=> t!303862 result!262846) b_and!279435)))

(assert (=> d!1098567 t!303864))

(declare-fun b_and!279437 () Bool)

(assert (= b_and!279429 (and (=> t!303864 result!262848) b_and!279437)))

(declare-fun m!4255057 () Bool)

(assert (=> d!1098567 m!4255057))

(assert (=> d!1098567 m!4255041))

(assert (=> b!3760876 d!1098567))

(declare-fun d!1098571 () Bool)

(declare-fun list!14804 (Conc!12279) List!40222)

(assert (=> d!1098571 (= (list!14802 (charsOf!3998 separatorToken!80)) (list!14804 (c!651212 (charsOf!3998 separatorToken!80))))))

(declare-fun bs!575765 () Bool)

(assert (= bs!575765 d!1098571))

(declare-fun m!4255067 () Bool)

(assert (=> bs!575765 m!4255067))

(assert (=> b!3760876 d!1098571))

(declare-fun d!1098577 () Bool)

(declare-fun lt!1301746 () Int)

(assert (=> d!1098577 (>= lt!1301746 0)))

(declare-fun e!2326117 () Int)

(assert (=> d!1098577 (= lt!1301746 e!2326117)))

(declare-fun c!651239 () Bool)

(assert (=> d!1098577 (= c!651239 ((_ is Nil!40099) (t!303848 l!4208)))))

(assert (=> d!1098577 (= (ListPrimitiveSize!269 (t!303848 l!4208)) lt!1301746)))

(declare-fun b!3760999 () Bool)

(assert (=> b!3760999 (= e!2326117 0)))

(declare-fun b!3761000 () Bool)

(assert (=> b!3761000 (= e!2326117 (+ 1 (ListPrimitiveSize!269 (t!303848 (t!303848 l!4208)))))))

(assert (= (and d!1098577 c!651239) b!3760999))

(assert (= (and d!1098577 (not c!651239)) b!3761000))

(declare-fun m!4255069 () Bool)

(assert (=> b!3761000 m!4255069))

(assert (=> b!3760876 d!1098577))

(declare-fun d!1098579 () Bool)

(declare-fun e!2326133 () Bool)

(assert (=> d!1098579 e!2326133))

(declare-fun res!1522972 () Bool)

(assert (=> d!1098579 (=> (not res!1522972) (not e!2326133))))

(declare-fun lt!1301749 () List!40222)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5888 (List!40222) (InoxSet C!22288))

(assert (=> d!1098579 (= res!1522972 (= (content!5888 lt!1301749) ((_ map or) (content!5888 (list!14802 (charsOf!3998 (h!45519 l!4208)))) (content!5888 (list!14802 (charsOf!3998 separatorToken!80))))))))

(declare-fun e!2326132 () List!40222)

(assert (=> d!1098579 (= lt!1301749 e!2326132)))

(declare-fun c!651242 () Bool)

(assert (=> d!1098579 (= c!651242 ((_ is Nil!40098) (list!14802 (charsOf!3998 (h!45519 l!4208)))))))

(assert (=> d!1098579 (= (++!9943 (list!14802 (charsOf!3998 (h!45519 l!4208))) (list!14802 (charsOf!3998 separatorToken!80))) lt!1301749)))

(declare-fun b!3761033 () Bool)

(declare-fun res!1522971 () Bool)

(assert (=> b!3761033 (=> (not res!1522971) (not e!2326133))))

(assert (=> b!3761033 (= res!1522971 (= (size!30178 lt!1301749) (+ (size!30178 (list!14802 (charsOf!3998 (h!45519 l!4208)))) (size!30178 (list!14802 (charsOf!3998 separatorToken!80))))))))

(declare-fun b!3761031 () Bool)

(assert (=> b!3761031 (= e!2326132 (list!14802 (charsOf!3998 separatorToken!80)))))

(declare-fun b!3761034 () Bool)

(assert (=> b!3761034 (= e!2326133 (or (not (= (list!14802 (charsOf!3998 separatorToken!80)) Nil!40098)) (= lt!1301749 (list!14802 (charsOf!3998 (h!45519 l!4208))))))))

(declare-fun b!3761032 () Bool)

(assert (=> b!3761032 (= e!2326132 (Cons!40098 (h!45518 (list!14802 (charsOf!3998 (h!45519 l!4208)))) (++!9943 (t!303847 (list!14802 (charsOf!3998 (h!45519 l!4208)))) (list!14802 (charsOf!3998 separatorToken!80)))))))

(assert (= (and d!1098579 c!651242) b!3761031))

(assert (= (and d!1098579 (not c!651242)) b!3761032))

(assert (= (and d!1098579 res!1522972) b!3761033))

(assert (= (and b!3761033 res!1522971) b!3761034))

(declare-fun m!4255079 () Bool)

(assert (=> d!1098579 m!4255079))

(assert (=> d!1098579 m!4254931))

(declare-fun m!4255081 () Bool)

(assert (=> d!1098579 m!4255081))

(assert (=> d!1098579 m!4254937))

(declare-fun m!4255083 () Bool)

(assert (=> d!1098579 m!4255083))

(declare-fun m!4255085 () Bool)

(assert (=> b!3761033 m!4255085))

(assert (=> b!3761033 m!4254931))

(declare-fun m!4255087 () Bool)

(assert (=> b!3761033 m!4255087))

(assert (=> b!3761033 m!4254937))

(declare-fun m!4255089 () Bool)

(assert (=> b!3761033 m!4255089))

(assert (=> b!3761032 m!4254937))

(declare-fun m!4255091 () Bool)

(assert (=> b!3761032 m!4255091))

(assert (=> b!3760876 d!1098579))

(declare-fun d!1098581 () Bool)

(declare-fun lt!1301750 () Int)

(assert (=> d!1098581 (>= lt!1301750 0)))

(declare-fun e!2326134 () Int)

(assert (=> d!1098581 (= lt!1301750 e!2326134)))

(declare-fun c!651243 () Bool)

(assert (=> d!1098581 (= c!651243 ((_ is Nil!40099) l!4208))))

(assert (=> d!1098581 (= (ListPrimitiveSize!269 l!4208) lt!1301750)))

(declare-fun b!3761035 () Bool)

(assert (=> b!3761035 (= e!2326134 0)))

(declare-fun b!3761036 () Bool)

(assert (=> b!3761036 (= e!2326134 (+ 1 (ListPrimitiveSize!269 (t!303848 l!4208))))))

(assert (= (and d!1098581 c!651243) b!3761035))

(assert (= (and d!1098581 (not c!651243)) b!3761036))

(assert (=> b!3761036 m!4254927))

(assert (=> b!3760876 d!1098581))

(declare-fun d!1098583 () Bool)

(declare-fun lt!1301751 () BalanceConc!24152)

(assert (=> d!1098583 (= (list!14802 lt!1301751) (originalCharacters!6746 separatorToken!80))))

(assert (=> d!1098583 (= lt!1301751 (dynLambda!17336 (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (value!195750 separatorToken!80)))))

(assert (=> d!1098583 (= (charsOf!3998 separatorToken!80) lt!1301751)))

(declare-fun b_lambda!110385 () Bool)

(assert (=> (not b_lambda!110385) (not d!1098583)))

(assert (=> d!1098583 t!303854))

(declare-fun b_and!279443 () Bool)

(assert (= b_and!279435 (and (=> t!303854 result!262836) b_and!279443)))

(assert (=> d!1098583 t!303856))

(declare-fun b_and!279445 () Bool)

(assert (= b_and!279437 (and (=> t!303856 result!262840) b_and!279445)))

(declare-fun m!4255093 () Bool)

(assert (=> d!1098583 m!4255093))

(assert (=> d!1098583 m!4254981))

(assert (=> b!3760876 d!1098583))

(declare-fun d!1098585 () Bool)

(assert (=> d!1098585 (= (list!14802 (charsOf!3998 (h!45519 l!4208))) (list!14804 (c!651212 (charsOf!3998 (h!45519 l!4208)))))))

(declare-fun bs!575766 () Bool)

(assert (= bs!575766 d!1098585))

(declare-fun m!4255095 () Bool)

(assert (=> bs!575766 m!4255095))

(assert (=> b!3760876 d!1098585))

(declare-fun b!3761050 () Bool)

(declare-fun e!2326137 () Bool)

(declare-fun tp!1149328 () Bool)

(declare-fun tp!1149326 () Bool)

(assert (=> b!3761050 (= e!2326137 (and tp!1149328 tp!1149326))))

(declare-fun b!3761049 () Bool)

(declare-fun tp!1149327 () Bool)

(assert (=> b!3761049 (= e!2326137 tp!1149327)))

(declare-fun b!3761047 () Bool)

(declare-fun tp_is_empty!19097 () Bool)

(assert (=> b!3761047 (= e!2326137 tp_is_empty!19097)))

(assert (=> b!3760879 (= tp!1149266 e!2326137)))

(declare-fun b!3761048 () Bool)

(declare-fun tp!1149324 () Bool)

(declare-fun tp!1149325 () Bool)

(assert (=> b!3761048 (= e!2326137 (and tp!1149324 tp!1149325))))

(assert (= (and b!3760879 ((_ is ElementMatch!11051) (regex!6146 (rule!8910 separatorToken!80)))) b!3761047))

(assert (= (and b!3760879 ((_ is Concat!17428) (regex!6146 (rule!8910 separatorToken!80)))) b!3761048))

(assert (= (and b!3760879 ((_ is Star!11051) (regex!6146 (rule!8910 separatorToken!80)))) b!3761049))

(assert (= (and b!3760879 ((_ is Union!11051) (regex!6146 (rule!8910 separatorToken!80)))) b!3761050))

(declare-fun b!3761055 () Bool)

(declare-fun e!2326140 () Bool)

(declare-fun tp!1149331 () Bool)

(assert (=> b!3761055 (= e!2326140 (and tp_is_empty!19097 tp!1149331))))

(assert (=> b!3760880 (= tp!1149264 e!2326140)))

(assert (= (and b!3760880 ((_ is Cons!40098) (originalCharacters!6746 (h!45519 l!4208)))) b!3761055))

(declare-fun b!3761056 () Bool)

(declare-fun e!2326141 () Bool)

(declare-fun tp!1149332 () Bool)

(assert (=> b!3761056 (= e!2326141 (and tp_is_empty!19097 tp!1149332))))

(assert (=> b!3760878 (= tp!1149263 e!2326141)))

(assert (= (and b!3760878 ((_ is Cons!40098) (originalCharacters!6746 separatorToken!80))) b!3761056))

(declare-fun b!3761070 () Bool)

(declare-fun b_free!100725 () Bool)

(declare-fun b_next!101429 () Bool)

(assert (=> b!3761070 (= b_free!100725 (not b_next!101429))))

(declare-fun tp!1149343 () Bool)

(declare-fun b_and!279447 () Bool)

(assert (=> b!3761070 (= tp!1149343 b_and!279447)))

(declare-fun b_free!100727 () Bool)

(declare-fun b_next!101431 () Bool)

(assert (=> b!3761070 (= b_free!100727 (not b_next!101431))))

(declare-fun tb!215249 () Bool)

(declare-fun t!303870 () Bool)

(assert (=> (and b!3761070 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 (t!303848 l!4208))))) (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80)))) t!303870) tb!215249))

(declare-fun result!262866 () Bool)

(assert (= result!262866 result!262836))

(assert (=> b!3760916 t!303870))

(declare-fun t!303872 () Bool)

(declare-fun tb!215251 () Bool)

(assert (=> (and b!3761070 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 (t!303848 l!4208))))) (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208))))) t!303872) tb!215251))

(declare-fun result!262868 () Bool)

(assert (= result!262868 result!262846))

(assert (=> b!3760967 t!303872))

(assert (=> d!1098567 t!303872))

(assert (=> d!1098583 t!303870))

(declare-fun tp!1149344 () Bool)

(declare-fun b_and!279449 () Bool)

(assert (=> b!3761070 (= tp!1149344 (and (=> t!303870 result!262866) (=> t!303872 result!262868) b_and!279449))))

(declare-fun tp!1149346 () Bool)

(declare-fun b!3761067 () Bool)

(declare-fun e!2326156 () Bool)

(declare-fun e!2326158 () Bool)

(assert (=> b!3761067 (= e!2326158 (and (inv!53776 (h!45519 (t!303848 l!4208))) e!2326156 tp!1149346))))

(declare-fun e!2326154 () Bool)

(declare-fun tp!1149345 () Bool)

(declare-fun b!3761068 () Bool)

(assert (=> b!3761068 (= e!2326156 (and (inv!21 (value!195750 (h!45519 (t!303848 l!4208)))) e!2326154 tp!1149345))))

(declare-fun e!2326155 () Bool)

(assert (=> b!3761070 (= e!2326155 (and tp!1149343 tp!1149344))))

(assert (=> b!3760875 (= tp!1149260 e!2326158)))

(declare-fun b!3761069 () Bool)

(declare-fun tp!1149347 () Bool)

(assert (=> b!3761069 (= e!2326154 (and tp!1149347 (inv!53773 (tag!7006 (rule!8910 (h!45519 (t!303848 l!4208))))) (inv!53777 (transformation!6146 (rule!8910 (h!45519 (t!303848 l!4208))))) e!2326155))))

(assert (= b!3761069 b!3761070))

(assert (= b!3761068 b!3761069))

(assert (= b!3761067 b!3761068))

(assert (= (and b!3760875 ((_ is Cons!40099) (t!303848 l!4208))) b!3761067))

(declare-fun m!4255097 () Bool)

(assert (=> b!3761067 m!4255097))

(declare-fun m!4255099 () Bool)

(assert (=> b!3761068 m!4255099))

(declare-fun m!4255101 () Bool)

(assert (=> b!3761069 m!4255101))

(declare-fun m!4255103 () Bool)

(assert (=> b!3761069 m!4255103))

(declare-fun b!3761074 () Bool)

(declare-fun e!2326160 () Bool)

(declare-fun tp!1149352 () Bool)

(declare-fun tp!1149350 () Bool)

(assert (=> b!3761074 (= e!2326160 (and tp!1149352 tp!1149350))))

(declare-fun b!3761073 () Bool)

(declare-fun tp!1149351 () Bool)

(assert (=> b!3761073 (= e!2326160 tp!1149351)))

(declare-fun b!3761071 () Bool)

(assert (=> b!3761071 (= e!2326160 tp_is_empty!19097)))

(assert (=> b!3760881 (= tp!1149262 e!2326160)))

(declare-fun b!3761072 () Bool)

(declare-fun tp!1149348 () Bool)

(declare-fun tp!1149349 () Bool)

(assert (=> b!3761072 (= e!2326160 (and tp!1149348 tp!1149349))))

(assert (= (and b!3760881 ((_ is ElementMatch!11051) (regex!6146 (rule!8910 (h!45519 l!4208))))) b!3761071))

(assert (= (and b!3760881 ((_ is Concat!17428) (regex!6146 (rule!8910 (h!45519 l!4208))))) b!3761072))

(assert (= (and b!3760881 ((_ is Star!11051) (regex!6146 (rule!8910 (h!45519 l!4208))))) b!3761073))

(assert (= (and b!3760881 ((_ is Union!11051) (regex!6146 (rule!8910 (h!45519 l!4208))))) b!3761074))

(declare-fun b_lambda!110387 () Bool)

(assert (= b_lambda!110385 (or (and b!3760877 b_free!100715 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))))) (and b!3760882 b_free!100719) (and b!3761070 b_free!100727 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 (t!303848 l!4208))))) (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))))) b_lambda!110387)))

(declare-fun b_lambda!110389 () Bool)

(assert (= b_lambda!110369 (or (and b!3760877 b_free!100715) (and b!3760882 b_free!100719 (= (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))))) (and b!3761070 b_free!100727 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 (t!303848 l!4208))))) (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))))) b_lambda!110389)))

(declare-fun b_lambda!110391 () Bool)

(assert (= b_lambda!110375 (or (and b!3760877 b_free!100715) (and b!3760882 b_free!100719 (= (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))) (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))))) (and b!3761070 b_free!100727 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 (t!303848 l!4208))))) (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))))) b_lambda!110391)))

(declare-fun b_lambda!110393 () Bool)

(assert (= b_lambda!110365 (or (and b!3760877 b_free!100715 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 l!4208)))) (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))))) (and b!3760882 b_free!100719) (and b!3761070 b_free!100727 (= (toChars!8361 (transformation!6146 (rule!8910 (h!45519 (t!303848 l!4208))))) (toChars!8361 (transformation!6146 (rule!8910 separatorToken!80))))) b_lambda!110393)))

(check-sat b_and!279447 (not d!1098539) (not b_lambda!110387) (not b!3761067) (not b_next!101423) (not b!3761049) (not b!3761000) (not b!3761073) (not b!3760957) (not b!3760916) (not b_next!101431) (not b_next!101417) (not b!3760974) (not d!1098563) (not b!3761036) (not d!1098579) (not b!3761050) (not b!3761033) (not b!3761072) b_and!279443 (not tb!215233) (not b!3760964) (not b_lambda!110391) (not b!3761048) (not b!3761068) (not b!3761055) (not tb!215241) (not d!1098571) (not b!3761056) b_and!279445 (not d!1098533) (not d!1098567) (not b_next!101421) (not b!3760965) (not b!3760930) (not b_lambda!110393) b_and!279449 (not b!3760959) (not d!1098585) (not b_next!101419) (not b!3761032) (not b!3761069) (not b!3760962) (not b_next!101429) b_and!279403 tp_is_empty!19097 (not d!1098583) (not b!3760967) (not b!3760971) (not b!3760905) (not b!3760917) (not b!3761074) (not b!3760968) (not b_lambda!110389) b_and!279407 (not d!1098557) (not b!3760960))
(check-sat b_and!279443 b_and!279445 (not b_next!101421) b_and!279447 b_and!279449 (not b_next!101419) (not b_next!101423) b_and!279407 (not b_next!101431) (not b_next!101417) (not b_next!101429) b_and!279403)
