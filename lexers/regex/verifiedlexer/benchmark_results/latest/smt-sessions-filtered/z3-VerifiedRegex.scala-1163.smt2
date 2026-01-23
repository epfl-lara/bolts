; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60228 () Bool)

(assert start!60228)

(declare-fun b!625729 () Bool)

(declare-fun b_free!18333 () Bool)

(declare-fun b_next!18349 () Bool)

(assert (=> b!625729 (= b_free!18333 (not b_next!18349))))

(declare-fun tp!195515 () Bool)

(declare-fun b_and!62099 () Bool)

(assert (=> b!625729 (= tp!195515 b_and!62099)))

(declare-fun b_free!18335 () Bool)

(declare-fun b_next!18351 () Bool)

(assert (=> b!625729 (= b_free!18335 (not b_next!18351))))

(declare-fun tp!195517 () Bool)

(declare-fun b_and!62101 () Bool)

(assert (=> b!625729 (= tp!195517 b_and!62101)))

(declare-fun b!625726 () Bool)

(declare-fun e!379518 () Bool)

(declare-fun e!379516 () Bool)

(assert (=> b!625726 (= e!379518 e!379516)))

(declare-fun res!271467 () Bool)

(assert (=> b!625726 (=> (not res!271467) (not e!379516))))

(declare-fun lt!266564 () Int)

(declare-fun from!852 () Int)

(declare-datatypes ((List!6430 0))(
  ( (Nil!6420) (Cons!6420 (h!11821 (_ BitVec 16)) (t!82341 List!6430)) )
))
(declare-datatypes ((TokenValue!1335 0))(
  ( (FloatLiteralValue!2670 (text!9790 List!6430)) (TokenValueExt!1334 (__x!4570 Int)) (Broken!6675 (value!42201 List!6430)) (Object!1344) (End!1335) (Def!1335) (Underscore!1335) (Match!1335) (Else!1335) (Error!1335) (Case!1335) (If!1335) (Extends!1335) (Abstract!1335) (Class!1335) (Val!1335) (DelimiterValue!2670 (del!1395 List!6430)) (KeywordValue!1341 (value!42202 List!6430)) (CommentValue!2670 (value!42203 List!6430)) (WhitespaceValue!2670 (value!42204 List!6430)) (IndentationValue!1335 (value!42205 List!6430)) (String!8422) (Int32!1335) (Broken!6676 (value!42206 List!6430)) (Boolean!1336) (Unit!11503) (OperatorValue!1338 (op!1395 List!6430)) (IdentifierValue!2670 (value!42207 List!6430)) (IdentifierValue!2671 (value!42208 List!6430)) (WhitespaceValue!2671 (value!42209 List!6430)) (True!2670) (False!2670) (Broken!6677 (value!42210 List!6430)) (Broken!6678 (value!42211 List!6430)) (True!2671) (RightBrace!1335) (RightBracket!1335) (Colon!1335) (Null!1335) (Comma!1335) (LeftBracket!1335) (False!2671) (LeftBrace!1335) (ImaginaryLiteralValue!1335 (text!9791 List!6430)) (StringLiteralValue!4005 (value!42212 List!6430)) (EOFValue!1335 (value!42213 List!6430)) (IdentValue!1335 (value!42214 List!6430)) (DelimiterValue!2671 (value!42215 List!6430)) (DedentValue!1335 (value!42216 List!6430)) (NewLineValue!1335 (value!42217 List!6430)) (IntegerValue!4005 (value!42218 (_ BitVec 32)) (text!9792 List!6430)) (IntegerValue!4006 (value!42219 Int) (text!9793 List!6430)) (Times!1335) (Or!1335) (Equal!1335) (Minus!1335) (Broken!6679 (value!42220 List!6430)) (And!1335) (Div!1335) (LessEqual!1335) (Mod!1335) (Concat!2980) (Not!1335) (Plus!1335) (SpaceValue!1335 (value!42221 List!6430)) (IntegerValue!4007 (value!42222 Int) (text!9794 List!6430)) (StringLiteralValue!4006 (text!9795 List!6430)) (FloatLiteralValue!2671 (text!9796 List!6430)) (BytesLiteralValue!1335 (value!42223 List!6430)) (CommentValue!2671 (value!42224 List!6430)) (StringLiteralValue!4007 (value!42225 List!6430)) (ErrorTokenValue!1335 (msg!1396 List!6430)) )
))
(declare-datatypes ((C!4216 0))(
  ( (C!4217 (val!2334 Int)) )
))
(declare-datatypes ((List!6431 0))(
  ( (Nil!6421) (Cons!6421 (h!11822 C!4216) (t!82342 List!6431)) )
))
(declare-datatypes ((IArray!4127 0))(
  ( (IArray!4128 (innerList!2121 List!6431)) )
))
(declare-datatypes ((Conc!2063 0))(
  ( (Node!2063 (left!5096 Conc!2063) (right!5426 Conc!2063) (csize!4356 Int) (cheight!2274 Int)) (Leaf!3227 (xs!4700 IArray!4127) (csize!4357 Int)) (Empty!2063) )
))
(declare-datatypes ((BalanceConc!4134 0))(
  ( (BalanceConc!4135 (c!114899 Conc!2063)) )
))
(declare-datatypes ((TokenValueInjection!2438 0))(
  ( (TokenValueInjection!2439 (toValue!2240 Int) (toChars!2099 Int)) )
))
(declare-datatypes ((String!8423 0))(
  ( (String!8424 (value!42226 String)) )
))
(declare-datatypes ((Regex!1645 0))(
  ( (ElementMatch!1645 (c!114900 C!4216)) (Concat!2981 (regOne!3802 Regex!1645) (regTwo!3802 Regex!1645)) (EmptyExpr!1645) (Star!1645 (reg!1974 Regex!1645)) (EmptyLang!1645) (Union!1645 (regOne!3803 Regex!1645) (regTwo!3803 Regex!1645)) )
))
(declare-datatypes ((Rule!2422 0))(
  ( (Rule!2423 (regex!1311 Regex!1645) (tag!1573 String!8423) (isSeparator!1311 Bool) (transformation!1311 TokenValueInjection!2438)) )
))
(declare-datatypes ((Token!2346 0))(
  ( (Token!2347 (value!42227 TokenValue!1335) (rule!2107 Rule!2422) (size!5013 Int) (originalCharacters!1344 List!6431)) )
))
(declare-fun separatorToken!136 () Token!2346)

(assert (=> b!625726 (= res!271467 (and (<= from!852 lt!266564) (isSeparator!1311 (rule!2107 separatorToken!136)) (< from!852 lt!266564)))))

(declare-datatypes ((List!6432 0))(
  ( (Nil!6422) (Cons!6422 (h!11823 Token!2346) (t!82343 List!6432)) )
))
(declare-datatypes ((IArray!4129 0))(
  ( (IArray!4130 (innerList!2122 List!6432)) )
))
(declare-datatypes ((Conc!2064 0))(
  ( (Node!2064 (left!5097 Conc!2064) (right!5427 Conc!2064) (csize!4358 Int) (cheight!2275 Int)) (Leaf!3228 (xs!4701 IArray!4129) (csize!4359 Int)) (Empty!2064) )
))
(declare-datatypes ((BalanceConc!4136 0))(
  ( (BalanceConc!4137 (c!114901 Conc!2064)) )
))
(declare-fun v!6361 () BalanceConc!4136)

(declare-fun size!5014 (BalanceConc!4136) Int)

(assert (=> b!625726 (= lt!266564 (size!5014 v!6361))))

(declare-fun b!625727 () Bool)

(declare-fun size!5015 (List!6432) Int)

(declare-fun list!2699 (BalanceConc!4136) List!6432)

(assert (=> b!625727 (= e!379516 (>= from!852 (size!5015 (list!2699 v!6361))))))

(declare-fun tp!195518 () Bool)

(declare-fun e!379511 () Bool)

(declare-fun b!625728 () Bool)

(declare-fun e!379514 () Bool)

(declare-fun inv!21 (TokenValue!1335) Bool)

(assert (=> b!625728 (= e!379511 (and (inv!21 (value!42227 separatorToken!136)) e!379514 tp!195518))))

(declare-fun e!379512 () Bool)

(assert (=> b!625729 (= e!379512 (and tp!195515 tp!195517))))

(declare-fun res!271468 () Bool)

(assert (=> start!60228 (=> (not res!271468) (not e!379518))))

(declare-datatypes ((LexerInterface!1199 0))(
  ( (LexerInterfaceExt!1196 (__x!4571 Int)) (Lexer!1197) )
))
(declare-fun thiss!14007 () LexerInterface!1199)

(get-info :version)

(assert (=> start!60228 (= res!271468 (and ((_ is Lexer!1197) thiss!14007) (>= from!852 0)))))

(assert (=> start!60228 e!379518))

(assert (=> start!60228 true))

(declare-fun e!379517 () Bool)

(declare-fun inv!8173 (BalanceConc!4136) Bool)

(assert (=> start!60228 (and (inv!8173 v!6361) e!379517)))

(declare-fun inv!8174 (Token!2346) Bool)

(assert (=> start!60228 (and (inv!8174 separatorToken!136) e!379511)))

(declare-fun tp!195516 () Bool)

(declare-fun b!625730 () Bool)

(declare-fun inv!8168 (String!8423) Bool)

(declare-fun inv!8175 (TokenValueInjection!2438) Bool)

(assert (=> b!625730 (= e!379514 (and tp!195516 (inv!8168 (tag!1573 (rule!2107 separatorToken!136))) (inv!8175 (transformation!1311 (rule!2107 separatorToken!136))) e!379512))))

(declare-fun b!625731 () Bool)

(declare-fun tp!195519 () Bool)

(declare-fun inv!8176 (Conc!2064) Bool)

(assert (=> b!625731 (= e!379517 (and (inv!8176 (c!114901 v!6361)) tp!195519))))

(assert (= (and start!60228 res!271468) b!625726))

(assert (= (and b!625726 res!271467) b!625727))

(assert (= start!60228 b!625731))

(assert (= b!625730 b!625729))

(assert (= b!625728 b!625730))

(assert (= start!60228 b!625728))

(declare-fun m!893781 () Bool)

(assert (=> b!625726 m!893781))

(declare-fun m!893783 () Bool)

(assert (=> b!625728 m!893783))

(declare-fun m!893785 () Bool)

(assert (=> b!625730 m!893785))

(declare-fun m!893787 () Bool)

(assert (=> b!625730 m!893787))

(declare-fun m!893789 () Bool)

(assert (=> b!625731 m!893789))

(declare-fun m!893791 () Bool)

(assert (=> b!625727 m!893791))

(assert (=> b!625727 m!893791))

(declare-fun m!893793 () Bool)

(assert (=> b!625727 m!893793))

(declare-fun m!893795 () Bool)

(assert (=> start!60228 m!893795))

(declare-fun m!893797 () Bool)

(assert (=> start!60228 m!893797))

(check-sat (not b!625731) (not b!625728) (not b!625727) (not b_next!18351) b_and!62101 (not start!60228) b_and!62099 (not b!625730) (not b_next!18349) (not b!625726))
(check-sat b_and!62099 b_and!62101 (not b_next!18351) (not b_next!18349))
(get-model)

(declare-fun d!218980 () Bool)

(assert (=> d!218980 (= (inv!8168 (tag!1573 (rule!2107 separatorToken!136))) (= (mod (str.len (value!42226 (tag!1573 (rule!2107 separatorToken!136)))) 2) 0))))

(assert (=> b!625730 d!218980))

(declare-fun d!218982 () Bool)

(declare-fun res!271475 () Bool)

(declare-fun e!379521 () Bool)

(assert (=> d!218982 (=> (not res!271475) (not e!379521))))

(declare-fun semiInverseModEq!524 (Int Int) Bool)

(assert (=> d!218982 (= res!271475 (semiInverseModEq!524 (toChars!2099 (transformation!1311 (rule!2107 separatorToken!136))) (toValue!2240 (transformation!1311 (rule!2107 separatorToken!136)))))))

(assert (=> d!218982 (= (inv!8175 (transformation!1311 (rule!2107 separatorToken!136))) e!379521)))

(declare-fun b!625734 () Bool)

(declare-fun equivClasses!507 (Int Int) Bool)

(assert (=> b!625734 (= e!379521 (equivClasses!507 (toChars!2099 (transformation!1311 (rule!2107 separatorToken!136))) (toValue!2240 (transformation!1311 (rule!2107 separatorToken!136)))))))

(assert (= (and d!218982 res!271475) b!625734))

(declare-fun m!893801 () Bool)

(assert (=> d!218982 m!893801))

(declare-fun m!893803 () Bool)

(assert (=> b!625734 m!893803))

(assert (=> b!625730 d!218982))

(declare-fun d!218986 () Bool)

(declare-fun lt!266570 () Int)

(assert (=> d!218986 (= lt!266570 (size!5015 (list!2699 v!6361)))))

(declare-fun size!5017 (Conc!2064) Int)

(assert (=> d!218986 (= lt!266570 (size!5017 (c!114901 v!6361)))))

(assert (=> d!218986 (= (size!5014 v!6361) lt!266570)))

(declare-fun bs!72230 () Bool)

(assert (= bs!72230 d!218986))

(assert (=> bs!72230 m!893791))

(assert (=> bs!72230 m!893791))

(assert (=> bs!72230 m!893793))

(declare-fun m!893809 () Bool)

(assert (=> bs!72230 m!893809))

(assert (=> b!625726 d!218986))

(declare-fun d!218990 () Bool)

(declare-fun c!114913 () Bool)

(assert (=> d!218990 (= c!114913 ((_ is Node!2064) (c!114901 v!6361)))))

(declare-fun e!379541 () Bool)

(assert (=> d!218990 (= (inv!8176 (c!114901 v!6361)) e!379541)))

(declare-fun b!625765 () Bool)

(declare-fun inv!8179 (Conc!2064) Bool)

(assert (=> b!625765 (= e!379541 (inv!8179 (c!114901 v!6361)))))

(declare-fun b!625766 () Bool)

(declare-fun e!379542 () Bool)

(assert (=> b!625766 (= e!379541 e!379542)))

(declare-fun res!271484 () Bool)

(assert (=> b!625766 (= res!271484 (not ((_ is Leaf!3228) (c!114901 v!6361))))))

(assert (=> b!625766 (=> res!271484 e!379542)))

(declare-fun b!625767 () Bool)

(declare-fun inv!8180 (Conc!2064) Bool)

(assert (=> b!625767 (= e!379542 (inv!8180 (c!114901 v!6361)))))

(assert (= (and d!218990 c!114913) b!625765))

(assert (= (and d!218990 (not c!114913)) b!625766))

(assert (= (and b!625766 (not res!271484)) b!625767))

(declare-fun m!893817 () Bool)

(assert (=> b!625765 m!893817))

(declare-fun m!893819 () Bool)

(assert (=> b!625767 m!893819))

(assert (=> b!625731 d!218990))

(declare-fun b!625784 () Bool)

(declare-fun e!379553 () Bool)

(declare-fun inv!16 (TokenValue!1335) Bool)

(assert (=> b!625784 (= e!379553 (inv!16 (value!42227 separatorToken!136)))))

(declare-fun b!625785 () Bool)

(declare-fun res!271487 () Bool)

(declare-fun e!379554 () Bool)

(assert (=> b!625785 (=> res!271487 e!379554)))

(assert (=> b!625785 (= res!271487 (not ((_ is IntegerValue!4007) (value!42227 separatorToken!136))))))

(declare-fun e!379552 () Bool)

(assert (=> b!625785 (= e!379552 e!379554)))

(declare-fun b!625786 () Bool)

(declare-fun inv!17 (TokenValue!1335) Bool)

(assert (=> b!625786 (= e!379552 (inv!17 (value!42227 separatorToken!136)))))

(declare-fun b!625787 () Bool)

(declare-fun inv!15 (TokenValue!1335) Bool)

(assert (=> b!625787 (= e!379554 (inv!15 (value!42227 separatorToken!136)))))

(declare-fun b!625788 () Bool)

(assert (=> b!625788 (= e!379553 e!379552)))

(declare-fun c!114922 () Bool)

(assert (=> b!625788 (= c!114922 ((_ is IntegerValue!4006) (value!42227 separatorToken!136)))))

(declare-fun d!218994 () Bool)

(declare-fun c!114921 () Bool)

(assert (=> d!218994 (= c!114921 ((_ is IntegerValue!4005) (value!42227 separatorToken!136)))))

(assert (=> d!218994 (= (inv!21 (value!42227 separatorToken!136)) e!379553)))

(assert (= (and d!218994 c!114921) b!625784))

(assert (= (and d!218994 (not c!114921)) b!625788))

(assert (= (and b!625788 c!114922) b!625786))

(assert (= (and b!625788 (not c!114922)) b!625785))

(assert (= (and b!625785 (not res!271487)) b!625787))

(declare-fun m!893825 () Bool)

(assert (=> b!625784 m!893825))

(declare-fun m!893827 () Bool)

(assert (=> b!625786 m!893827))

(declare-fun m!893829 () Bool)

(assert (=> b!625787 m!893829))

(assert (=> b!625728 d!218994))

(declare-fun d!219000 () Bool)

(declare-fun lt!266576 () Int)

(assert (=> d!219000 (>= lt!266576 0)))

(declare-fun e!379557 () Int)

(assert (=> d!219000 (= lt!266576 e!379557)))

(declare-fun c!114925 () Bool)

(assert (=> d!219000 (= c!114925 ((_ is Nil!6422) (list!2699 v!6361)))))

(assert (=> d!219000 (= (size!5015 (list!2699 v!6361)) lt!266576)))

(declare-fun b!625793 () Bool)

(assert (=> b!625793 (= e!379557 0)))

(declare-fun b!625794 () Bool)

(assert (=> b!625794 (= e!379557 (+ 1 (size!5015 (t!82343 (list!2699 v!6361)))))))

(assert (= (and d!219000 c!114925) b!625793))

(assert (= (and d!219000 (not c!114925)) b!625794))

(declare-fun m!893833 () Bool)

(assert (=> b!625794 m!893833))

(assert (=> b!625727 d!219000))

(declare-fun d!219004 () Bool)

(declare-fun list!2702 (Conc!2064) List!6432)

(assert (=> d!219004 (= (list!2699 v!6361) (list!2702 (c!114901 v!6361)))))

(declare-fun bs!72233 () Bool)

(assert (= bs!72233 d!219004))

(declare-fun m!893835 () Bool)

(assert (=> bs!72233 m!893835))

(assert (=> b!625727 d!219004))

(declare-fun d!219006 () Bool)

(declare-fun isBalanced!546 (Conc!2064) Bool)

(assert (=> d!219006 (= (inv!8173 v!6361) (isBalanced!546 (c!114901 v!6361)))))

(declare-fun bs!72234 () Bool)

(assert (= bs!72234 d!219006))

(declare-fun m!893837 () Bool)

(assert (=> bs!72234 m!893837))

(assert (=> start!60228 d!219006))

(declare-fun d!219008 () Bool)

(declare-fun res!271500 () Bool)

(declare-fun e!379568 () Bool)

(assert (=> d!219008 (=> (not res!271500) (not e!379568))))

(declare-fun isEmpty!4580 (List!6431) Bool)

(assert (=> d!219008 (= res!271500 (not (isEmpty!4580 (originalCharacters!1344 separatorToken!136))))))

(assert (=> d!219008 (= (inv!8174 separatorToken!136) e!379568)))

(declare-fun b!625812 () Bool)

(declare-fun res!271501 () Bool)

(assert (=> b!625812 (=> (not res!271501) (not e!379568))))

(declare-fun list!2703 (BalanceConc!4134) List!6431)

(declare-fun dynLambda!3633 (Int TokenValue!1335) BalanceConc!4134)

(assert (=> b!625812 (= res!271501 (= (originalCharacters!1344 separatorToken!136) (list!2703 (dynLambda!3633 (toChars!2099 (transformation!1311 (rule!2107 separatorToken!136))) (value!42227 separatorToken!136)))))))

(declare-fun b!625813 () Bool)

(declare-fun size!5019 (List!6431) Int)

(assert (=> b!625813 (= e!379568 (= (size!5013 separatorToken!136) (size!5019 (originalCharacters!1344 separatorToken!136))))))

(assert (= (and d!219008 res!271500) b!625812))

(assert (= (and b!625812 res!271501) b!625813))

(declare-fun b_lambda!24679 () Bool)

(assert (=> (not b_lambda!24679) (not b!625812)))

(declare-fun t!82347 () Bool)

(declare-fun tb!54409 () Bool)

(assert (=> (and b!625729 (= (toChars!2099 (transformation!1311 (rule!2107 separatorToken!136))) (toChars!2099 (transformation!1311 (rule!2107 separatorToken!136)))) t!82347) tb!54409))

(declare-fun b!625821 () Bool)

(declare-fun e!379572 () Bool)

(declare-fun tp!195525 () Bool)

(declare-fun inv!8183 (Conc!2063) Bool)

(assert (=> b!625821 (= e!379572 (and (inv!8183 (c!114899 (dynLambda!3633 (toChars!2099 (transformation!1311 (rule!2107 separatorToken!136))) (value!42227 separatorToken!136)))) tp!195525))))

(declare-fun result!61422 () Bool)

(declare-fun inv!8184 (BalanceConc!4134) Bool)

(assert (=> tb!54409 (= result!61422 (and (inv!8184 (dynLambda!3633 (toChars!2099 (transformation!1311 (rule!2107 separatorToken!136))) (value!42227 separatorToken!136))) e!379572))))

(assert (= tb!54409 b!625821))

(declare-fun m!893855 () Bool)

(assert (=> b!625821 m!893855))

(declare-fun m!893857 () Bool)

(assert (=> tb!54409 m!893857))

(assert (=> b!625812 t!82347))

(declare-fun b_and!62105 () Bool)

(assert (= b_and!62101 (and (=> t!82347 result!61422) b_and!62105)))

(declare-fun m!893859 () Bool)

(assert (=> d!219008 m!893859))

(declare-fun m!893861 () Bool)

(assert (=> b!625812 m!893861))

(assert (=> b!625812 m!893861))

(declare-fun m!893863 () Bool)

(assert (=> b!625812 m!893863))

(declare-fun m!893865 () Bool)

(assert (=> b!625813 m!893865))

(assert (=> start!60228 d!219008))

(declare-fun b!625843 () Bool)

(declare-fun e!379581 () Bool)

(declare-fun tp!195546 () Bool)

(assert (=> b!625843 (= e!379581 tp!195546)))

(assert (=> b!625730 (= tp!195516 e!379581)))

(declare-fun b!625842 () Bool)

(declare-fun tp!195548 () Bool)

(declare-fun tp!195547 () Bool)

(assert (=> b!625842 (= e!379581 (and tp!195548 tp!195547))))

(declare-fun b!625841 () Bool)

(declare-fun tp_is_empty!3615 () Bool)

(assert (=> b!625841 (= e!379581 tp_is_empty!3615)))

(declare-fun b!625844 () Bool)

(declare-fun tp!195545 () Bool)

(declare-fun tp!195549 () Bool)

(assert (=> b!625844 (= e!379581 (and tp!195545 tp!195549))))

(assert (= (and b!625730 ((_ is ElementMatch!1645) (regex!1311 (rule!2107 separatorToken!136)))) b!625841))

(assert (= (and b!625730 ((_ is Concat!2981) (regex!1311 (rule!2107 separatorToken!136)))) b!625842))

(assert (= (and b!625730 ((_ is Star!1645) (regex!1311 (rule!2107 separatorToken!136)))) b!625843))

(assert (= (and b!625730 ((_ is Union!1645) (regex!1311 (rule!2107 separatorToken!136)))) b!625844))

(declare-fun tp!195571 () Bool)

(declare-fun tp!195569 () Bool)

(declare-fun e!379592 () Bool)

(declare-fun b!625868 () Bool)

(assert (=> b!625868 (= e!379592 (and (inv!8176 (left!5097 (c!114901 v!6361))) tp!195569 (inv!8176 (right!5427 (c!114901 v!6361))) tp!195571))))

(declare-fun b!625870 () Bool)

(declare-fun e!379591 () Bool)

(declare-fun tp!195570 () Bool)

(assert (=> b!625870 (= e!379591 tp!195570)))

(declare-fun b!625869 () Bool)

(declare-fun inv!8186 (IArray!4129) Bool)

(assert (=> b!625869 (= e!379592 (and (inv!8186 (xs!4701 (c!114901 v!6361))) e!379591))))

(assert (=> b!625731 (= tp!195519 (and (inv!8176 (c!114901 v!6361)) e!379592))))

(assert (= (and b!625731 ((_ is Node!2064) (c!114901 v!6361))) b!625868))

(assert (= b!625869 b!625870))

(assert (= (and b!625731 ((_ is Leaf!3228) (c!114901 v!6361))) b!625869))

(declare-fun m!893873 () Bool)

(assert (=> b!625868 m!893873))

(declare-fun m!893875 () Bool)

(assert (=> b!625868 m!893875))

(declare-fun m!893877 () Bool)

(assert (=> b!625869 m!893877))

(assert (=> b!625731 m!893789))

(declare-fun b!625879 () Bool)

(declare-fun e!379596 () Bool)

(declare-fun tp!195579 () Bool)

(assert (=> b!625879 (= e!379596 (and tp_is_empty!3615 tp!195579))))

(assert (=> b!625728 (= tp!195518 e!379596)))

(assert (= (and b!625728 ((_ is Cons!6421) (originalCharacters!1344 separatorToken!136))) b!625879))

(declare-fun b_lambda!24683 () Bool)

(assert (= b_lambda!24679 (or (and b!625729 b_free!18335) b_lambda!24683)))

(check-sat (not b!625731) (not b_lambda!24683) (not b!625879) (not b!625765) (not d!218986) (not b_next!18351) (not d!219004) (not b!625842) b_and!62099 (not d!219006) (not b!625794) (not b!625786) (not b!625870) (not b!625821) (not b!625734) (not b!625813) (not b!625784) (not tb!54409) (not b!625767) (not d!219008) (not d!218982) tp_is_empty!3615 (not b!625812) b_and!62105 (not b!625869) (not b!625843) (not b_next!18349) (not b!625868) (not b!625787) (not b!625844))
(check-sat b_and!62099 b_and!62105 (not b_next!18351) (not b_next!18349))
