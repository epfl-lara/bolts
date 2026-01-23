; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!410008 () Bool)

(assert start!410008)

(assert (=> start!410008 true))

(declare-fun b!4272189 () Bool)

(declare-fun e!2652511 () Bool)

(declare-datatypes ((List!47440 0))(
  ( (Nil!47316) (Cons!47316 (h!52736 (_ BitVec 16)) (t!353806 List!47440)) )
))
(declare-datatypes ((IArray!28601 0))(
  ( (IArray!28602 (innerList!14358 List!47440)) )
))
(declare-datatypes ((Conc!14298 0))(
  ( (Node!14298 (left!35184 Conc!14298) (right!35514 Conc!14298) (csize!28826 Int) (cheight!14509 Int)) (Leaf!22103 (xs!17604 IArray!28601) (csize!28827 Int)) (Empty!14298) )
))
(declare-datatypes ((BalanceConc!28106 0))(
  ( (BalanceConc!28107 (c!726941 Conc!14298)) )
))
(declare-fun x!741649 () BalanceConc!28106)

(declare-fun tp!1308209 () Bool)

(declare-fun inv!62482 (Conc!14298) Bool)

(assert (=> b!4272189 (= e!2652511 (and (inv!62482 (c!726941 x!741649)) tp!1308209))))

(declare-fun inst!1736 () Bool)

(declare-datatypes ((StringLiteralValueInjection!124 0))(
  ( (StringLiteralValueInjection!125) )
))
(declare-fun thiss!2587 () StringLiteralValueInjection!124)

(declare-fun inv!62483 (BalanceConc!28106) Bool)

(declare-fun list!17184 (BalanceConc!28106) List!47440)

(declare-datatypes ((TokenValue!8271 0))(
  ( (FloatLiteralValue!16542 (text!58342 List!47440)) (TokenValueExt!8270 (__x!28717 Int)) (Broken!41355 (value!249659 List!47440)) (Object!8394) (End!8271) (Def!8271) (Underscore!8271) (Match!8271) (Else!8271) (Error!8271) (Case!8271) (If!8271) (Extends!8271) (Abstract!8271) (Class!8271) (Val!8271) (DelimiterValue!16542 (del!8331 List!47440)) (KeywordValue!8277 (value!249660 List!47440)) (CommentValue!16542 (value!249661 List!47440)) (WhitespaceValue!16542 (value!249662 List!47440)) (IndentationValue!8271 (value!249663 List!47440)) (String!55290) (Int32!8271) (Broken!41356 (value!249664 List!47440)) (Boolean!8272) (Unit!66245) (OperatorValue!8274 (op!8331 List!47440)) (IdentifierValue!16542 (value!249665 List!47440)) (IdentifierValue!16543 (value!249666 List!47440)) (WhitespaceValue!16543 (value!249667 List!47440)) (True!16542) (False!16542) (Broken!41357 (value!249668 List!47440)) (Broken!41358 (value!249669 List!47440)) (True!16543) (RightBrace!8271) (RightBracket!8271) (Colon!8271) (Null!8271) (Comma!8271) (LeftBracket!8271) (False!16543) (LeftBrace!8271) (ImaginaryLiteralValue!8271 (text!58343 List!47440)) (StringLiteralValue!24813 (value!249670 List!47440)) (EOFValue!8271 (value!249671 List!47440)) (IdentValue!8271 (value!249672 List!47440)) (DelimiterValue!16543 (value!249673 List!47440)) (DedentValue!8271 (value!249674 List!47440)) (NewLineValue!8271 (value!249675 List!47440)) (IntegerValue!24813 (value!249676 (_ BitVec 32)) (text!58344 List!47440)) (IntegerValue!24814 (value!249677 Int) (text!58345 List!47440)) (Times!8271) (Or!8271) (Equal!8271) (Minus!8271) (Broken!41359 (value!249678 List!47440)) (And!8271) (Div!8271) (LessEqual!8271) (Mod!8271) (Concat!21169) (Not!8271) (Plus!8271) (SpaceValue!8271 (value!249679 List!47440)) (IntegerValue!24815 (value!249680 Int) (text!58346 List!47440)) (StringLiteralValue!24814 (text!58347 List!47440)) (FloatLiteralValue!16543 (text!58348 List!47440)) (BytesLiteralValue!8271 (value!249681 List!47440)) (CommentValue!16543 (value!249682 List!47440)) (StringLiteralValue!24815 (value!249683 List!47440)) (ErrorTokenValue!8271 (msg!8332 List!47440)) )
))
(declare-fun toCharacters!11 (StringLiteralValueInjection!124 TokenValue!8271) BalanceConc!28106)

(declare-fun toValue!18 (StringLiteralValueInjection!124 BalanceConc!28106) TokenValue!8271)

(assert (=> start!410008 (= inst!1736 (=> (and (inv!62483 x!741649) e!2652511) (= (list!17184 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649))) (list!17184 x!741649))))))

(assert (= start!410008 b!4272189))

(declare-fun m!4865969 () Bool)

(assert (=> b!4272189 m!4865969))

(declare-fun m!4865971 () Bool)

(assert (=> start!410008 m!4865971))

(declare-fun m!4865973 () Bool)

(assert (=> start!410008 m!4865973))

(assert (=> start!410008 m!4865973))

(declare-fun m!4865975 () Bool)

(assert (=> start!410008 m!4865975))

(assert (=> start!410008 m!4865971))

(declare-fun m!4865977 () Bool)

(assert (=> start!410008 m!4865977))

(declare-fun m!4865979 () Bool)

(assert (=> start!410008 m!4865979))

(declare-fun bs!601249 () Bool)

(declare-fun neg-inst!1736 () Bool)

(declare-fun s!239992 () Bool)

(assert (= bs!601249 (and neg-inst!1736 s!239992)))

(assert (=> bs!601249 (=> true (= (list!17184 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649))) (list!17184 x!741649)))))

(assert (=> m!4865971 m!4865973))

(assert (=> m!4865971 m!4865975))

(assert (=> m!4865971 m!4865979))

(assert (=> m!4865971 s!239992))

(assert (=> m!4865979 s!239992))

(declare-fun bs!601250 () Bool)

(assert (= bs!601250 (and neg-inst!1736 start!410008)))

(assert (=> bs!601250 (= true inst!1736)))

(declare-fun lambda!131014 () Int)

(declare-fun Forall!1643 (Int) Bool)

(assert (=> start!410008 (= (Forall!1643 lambda!131014) inst!1736)))

(assert (=> start!410008 (not (Forall!1643 lambda!131014))))

(assert (=> start!410008 true))

(assert (= neg-inst!1736 inst!1736))

(declare-fun m!4865981 () Bool)

(assert (=> start!410008 m!4865981))

(assert (=> start!410008 m!4865981))

(push 1)

(assert (not bs!601249))

(assert (not b!4272189))

(assert (not start!410008))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1260269 () Bool)

(declare-fun list!17186 (Conc!14298) List!47440)

(assert (=> d!1260269 (= (list!17184 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649))) (list!17186 (c!726941 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649)))))))

(declare-fun bs!601253 () Bool)

(assert (= bs!601253 d!1260269))

(declare-fun m!4865997 () Bool)

(assert (=> bs!601253 m!4865997))

(assert (=> bs!601249 d!1260269))

(declare-fun d!1260271 () Bool)

(declare-fun c!726946 () Bool)

(assert (=> d!1260271 (= c!726946 (is-StringLiteralValue!24815 (toValue!18 thiss!2587 x!741649)))))

(declare-fun e!2652517 () BalanceConc!28106)

(assert (=> d!1260271 (= (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649)) e!2652517)))

(declare-fun b!4272199 () Bool)

(declare-fun seqFromList!5875 (List!47440) BalanceConc!28106)

(assert (=> b!4272199 (= e!2652517 (seqFromList!5875 (value!249683 (toValue!18 thiss!2587 x!741649))))))

(declare-fun b!4272200 () Bool)

(assert (=> b!4272200 (= e!2652517 (BalanceConc!28107 Empty!14298))))

(assert (= (and d!1260271 c!726946) b!4272199))

(assert (= (and d!1260271 (not c!726946)) b!4272200))

(declare-fun m!4865999 () Bool)

(assert (=> b!4272199 m!4865999))

(assert (=> bs!601249 d!1260271))

(declare-fun d!1260275 () Bool)

(declare-fun efficientList!524 (BalanceConc!28106) List!47440)

(assert (=> d!1260275 (= (toValue!18 thiss!2587 x!741649) (StringLiteralValue!24815 (efficientList!524 x!741649)))))

(declare-fun bs!601255 () Bool)

(assert (= bs!601255 d!1260275))

(declare-fun m!4866003 () Bool)

(assert (=> bs!601255 m!4866003))

(assert (=> bs!601249 d!1260275))

(declare-fun d!1260279 () Bool)

(assert (=> d!1260279 (= (list!17184 x!741649) (list!17186 (c!726941 x!741649)))))

(declare-fun bs!601256 () Bool)

(assert (= bs!601256 d!1260279))

(declare-fun m!4866005 () Bool)

(assert (=> bs!601256 m!4866005))

(assert (=> bs!601249 d!1260279))

(push 1)

(assert (not b!4272199))

(assert (not start!410008))

(assert (not d!1260279))

(assert (not b!4272189))

(assert (not d!1260269))

(assert (not d!1260275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1260283 () Bool)

(declare-fun lt!1513003 () List!47440)

(assert (=> d!1260283 (= lt!1513003 (list!17184 x!741649))))

(declare-fun efficientList!525 (Conc!14298 List!47440) List!47440)

(declare-fun efficientList$default$2!182 (Conc!14298) List!47440)

(assert (=> d!1260283 (= lt!1513003 (efficientList!525 (c!726941 x!741649) (efficientList$default$2!182 (c!726941 x!741649))))))

(assert (=> d!1260283 (= (efficientList!524 x!741649) lt!1513003)))

(declare-fun bs!601259 () Bool)

(assert (= bs!601259 d!1260283))

(assert (=> bs!601259 m!4865979))

(declare-fun m!4866013 () Bool)

(assert (=> bs!601259 m!4866013))

(assert (=> bs!601259 m!4866013))

(declare-fun m!4866015 () Bool)

(assert (=> bs!601259 m!4866015))

(assert (=> d!1260275 d!1260283))

(declare-fun b!4272216 () Bool)

(declare-fun e!2652525 () List!47440)

(declare-fun e!2652526 () List!47440)

(assert (=> b!4272216 (= e!2652525 e!2652526)))

(declare-fun c!726956 () Bool)

(assert (=> b!4272216 (= c!726956 (is-Leaf!22103 (c!726941 x!741649)))))

(declare-fun b!4272217 () Bool)

(declare-fun list!17188 (IArray!28601) List!47440)

(assert (=> b!4272217 (= e!2652526 (list!17188 (xs!17604 (c!726941 x!741649))))))

(declare-fun b!4272218 () Bool)

(declare-fun ++!12077 (List!47440 List!47440) List!47440)

(assert (=> b!4272218 (= e!2652526 (++!12077 (list!17186 (left!35184 (c!726941 x!741649))) (list!17186 (right!35514 (c!726941 x!741649)))))))

(declare-fun b!4272215 () Bool)

(assert (=> b!4272215 (= e!2652525 Nil!47316)))

(declare-fun d!1260287 () Bool)

(declare-fun c!726955 () Bool)

(assert (=> d!1260287 (= c!726955 (is-Empty!14298 (c!726941 x!741649)))))

(assert (=> d!1260287 (= (list!17186 (c!726941 x!741649)) e!2652525)))

(assert (= (and d!1260287 c!726955) b!4272215))

(assert (= (and d!1260287 (not c!726955)) b!4272216))

(assert (= (and b!4272216 c!726956) b!4272217))

(assert (= (and b!4272216 (not c!726956)) b!4272218))

(declare-fun m!4866017 () Bool)

(assert (=> b!4272217 m!4866017))

(declare-fun m!4866019 () Bool)

(assert (=> b!4272218 m!4866019))

(declare-fun m!4866021 () Bool)

(assert (=> b!4272218 m!4866021))

(assert (=> b!4272218 m!4866019))

(assert (=> b!4272218 m!4866021))

(declare-fun m!4866023 () Bool)

(assert (=> b!4272218 m!4866023))

(assert (=> d!1260279 d!1260287))

(declare-fun b!4272220 () Bool)

(declare-fun e!2652527 () List!47440)

(declare-fun e!2652528 () List!47440)

(assert (=> b!4272220 (= e!2652527 e!2652528)))

(declare-fun c!726958 () Bool)

(assert (=> b!4272220 (= c!726958 (is-Leaf!22103 (c!726941 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649)))))))

(declare-fun b!4272221 () Bool)

(assert (=> b!4272221 (= e!2652528 (list!17188 (xs!17604 (c!726941 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649))))))))

(declare-fun b!4272222 () Bool)

(assert (=> b!4272222 (= e!2652528 (++!12077 (list!17186 (left!35184 (c!726941 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649))))) (list!17186 (right!35514 (c!726941 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649)))))))))

(declare-fun b!4272219 () Bool)

(assert (=> b!4272219 (= e!2652527 Nil!47316)))

(declare-fun d!1260289 () Bool)

(declare-fun c!726957 () Bool)

(assert (=> d!1260289 (= c!726957 (is-Empty!14298 (c!726941 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649)))))))

(assert (=> d!1260289 (= (list!17186 (c!726941 (toCharacters!11 thiss!2587 (toValue!18 thiss!2587 x!741649)))) e!2652527)))

(assert (= (and d!1260289 c!726957) b!4272219))

(assert (= (and d!1260289 (not c!726957)) b!4272220))

(assert (= (and b!4272220 c!726958) b!4272221))

(assert (= (and b!4272220 (not c!726958)) b!4272222))

(declare-fun m!4866025 () Bool)

(assert (=> b!4272221 m!4866025))

(declare-fun m!4866027 () Bool)

(assert (=> b!4272222 m!4866027))

(declare-fun m!4866029 () Bool)

(assert (=> b!4272222 m!4866029))

(assert (=> b!4272222 m!4866027))

(assert (=> b!4272222 m!4866029))

(declare-fun m!4866031 () Bool)

(assert (=> b!4272222 m!4866031))

(assert (=> d!1260269 d!1260289))

(push 1)

(assert (not b!4272217))

(assert (not b!4272199))

(assert (not start!410008))

(assert (not b!4272218))

(assert (not b!4272189))

(assert (not b!4272221))

(assert (not b!4272222))

(assert (not d!1260283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1260297 () Bool)

(declare-fun c!726969 () Bool)

(assert (=> d!1260297 (= c!726969 (is-Node!14298 (c!726941 x!741649)))))

(declare-fun e!2652541 () Bool)

(assert (=> d!1260297 (= (inv!62482 (c!726941 x!741649)) e!2652541)))

(declare-fun b!4272245 () Bool)

(declare-fun inv!62486 (Conc!14298) Bool)

(assert (=> b!4272245 (= e!2652541 (inv!62486 (c!726941 x!741649)))))

(declare-fun b!4272246 () Bool)

(declare-fun e!2652542 () Bool)

(assert (=> b!4272246 (= e!2652541 e!2652542)))

(declare-fun res!1754855 () Bool)

(assert (=> b!4272246 (= res!1754855 (not (is-Leaf!22103 (c!726941 x!741649))))))

(assert (=> b!4272246 (=> res!1754855 e!2652542)))

(declare-fun b!4272247 () Bool)

(declare-fun inv!62487 (Conc!14298) Bool)

(assert (=> b!4272247 (= e!2652542 (inv!62487 (c!726941 x!741649)))))

(assert (= (and d!1260297 c!726969) b!4272245))

(assert (= (and d!1260297 (not c!726969)) b!4272246))

(assert (= (and b!4272246 (not res!1754855)) b!4272247))

(declare-fun m!4866049 () Bool)

(assert (=> b!4272245 m!4866049))

(declare-fun m!4866051 () Bool)

(assert (=> b!4272247 m!4866051))

(assert (=> b!4272189 d!1260297))

(declare-fun d!1260299 () Bool)

(declare-fun isBalanced!3847 (Conc!14298) Bool)

(assert (=> d!1260299 (= (inv!62483 x!741649) (isBalanced!3847 (c!726941 x!741649)))))

(declare-fun bs!601260 () Bool)

(assert (= bs!601260 d!1260299))

(declare-fun m!4866053 () Bool)

(assert (=> bs!601260 m!4866053))

(assert (=> start!410008 d!1260299))

(assert (=> start!410008 d!1260275))

(declare-fun d!1260301 () Bool)

(declare-fun choose!26051 (Int) Bool)

(assert (=> d!1260301 (= (Forall!1643 lambda!131014) (choose!26051 lambda!131014))))

(declare-fun bs!601261 () Bool)

(assert (= bs!601261 d!1260301))

(declare-fun m!4866055 () Bool)

(assert (=> bs!601261 m!4866055))

(assert (=> start!410008 d!1260301))

(assert (=> start!410008 d!1260271))

(assert (=> start!410008 d!1260269))

(assert (=> start!410008 d!1260279))

(declare-fun d!1260303 () Bool)

(declare-fun fromListB!2668 (List!47440) BalanceConc!28106)

(assert (=> d!1260303 (= (seqFromList!5875 (value!249683 (toValue!18 thiss!2587 x!741649))) (fromListB!2668 (value!249683 (toValue!18 thiss!2587 x!741649))))))

(declare-fun bs!601262 () Bool)

(assert (= bs!601262 d!1260303))

(declare-fun m!4866057 () Bool)

(assert (=> bs!601262 m!4866057))

(assert (=> b!4272199 d!1260303))

(assert (=> d!1260283 d!1260279))

(declare-fun b!4272260 () Bool)

(declare-datatypes ((Unit!66247 0))(
  ( (Unit!66248) )
))
(declare-fun lt!1513018 () Unit!66247)

(declare-fun lt!1513019 () Unit!66247)

(assert (=> b!4272260 (= lt!1513018 lt!1513019)))

(declare-fun lt!1513017 () List!47440)

(declare-fun lt!1513020 () List!47440)

(declare-fun call!294179 () List!47440)

(assert (=> b!4272260 (= (++!12077 call!294179 (efficientList$default$2!182 (c!726941 x!741649))) (++!12077 lt!1513017 (++!12077 lt!1513020 (efficientList$default$2!182 (c!726941 x!741649)))))))

(declare-fun lemmaConcatAssociativity!2716 (List!47440 List!47440 List!47440) Unit!66247)

(assert (=> b!4272260 (= lt!1513019 (lemmaConcatAssociativity!2716 lt!1513017 lt!1513020 (efficientList$default$2!182 (c!726941 x!741649))))))

(assert (=> b!4272260 (= lt!1513020 (list!17186 (right!35514 (c!726941 x!741649))))))

(assert (=> b!4272260 (= lt!1513017 (list!17186 (left!35184 (c!726941 x!741649))))))

(declare-fun e!2652551 () List!47440)

(assert (=> b!4272260 (= e!2652551 (efficientList!525 (left!35184 (c!726941 x!741649)) (efficientList!525 (right!35514 (c!726941 x!741649)) (efficientList$default$2!182 (c!726941 x!741649)))))))

(declare-fun b!4272261 () Bool)

(declare-fun e!2652549 () List!47440)

(assert (=> b!4272261 (= e!2652549 (efficientList$default$2!182 (c!726941 x!741649)))))

(declare-fun d!1260305 () Bool)

(declare-fun lt!1513021 () List!47440)

(assert (=> d!1260305 (= lt!1513021 (++!12077 (list!17186 (c!726941 x!741649)) (efficientList$default$2!182 (c!726941 x!741649))))))

(assert (=> d!1260305 (= lt!1513021 e!2652549)))

(declare-fun c!726978 () Bool)

(assert (=> d!1260305 (= c!726978 (is-Empty!14298 (c!726941 x!741649)))))

(assert (=> d!1260305 (= (efficientList!525 (c!726941 x!741649) (efficientList$default$2!182 (c!726941 x!741649))) lt!1513021)))

(declare-fun b!4272262 () Bool)

(declare-fun e!2652550 () List!47440)

(declare-fun efficientList!528 (IArray!28601) List!47440)

(assert (=> b!4272262 (= e!2652550 (efficientList!528 (xs!17604 (c!726941 x!741649))))))

(declare-fun b!4272263 () Bool)

(assert (=> b!4272263 (= e!2652551 call!294179)))

(declare-fun bm!294174 () Bool)

(declare-fun c!726977 () Bool)

(declare-fun c!726976 () Bool)

(assert (=> bm!294174 (= c!726977 c!726976)))

(assert (=> bm!294174 (= call!294179 (++!12077 e!2652550 (ite c!726976 (efficientList$default$2!182 (c!726941 x!741649)) lt!1513020)))))

(declare-fun b!4272264 () Bool)

(assert (=> b!4272264 (= e!2652550 lt!1513017)))

(declare-fun b!4272265 () Bool)

(assert (=> b!4272265 (= e!2652549 e!2652551)))

(assert (=> b!4272265 (= c!726976 (is-Leaf!22103 (c!726941 x!741649)))))

(assert (= (and d!1260305 c!726978) b!4272261))

(assert (= (and d!1260305 (not c!726978)) b!4272265))

(assert (= (and b!4272265 c!726976) b!4272263))

(assert (= (and b!4272265 (not c!726976)) b!4272260))

(assert (= (or b!4272263 b!4272260) bm!294174))

(assert (= (and bm!294174 c!726977) b!4272262))

(assert (= (and bm!294174 (not c!726977)) b!4272264))

(assert (=> b!4272260 m!4866021))

(declare-fun m!4866063 () Bool)

(assert (=> b!4272260 m!4866063))

(declare-fun m!4866065 () Bool)

(assert (=> b!4272260 m!4866065))

(assert (=> b!4272260 m!4866013))

(declare-fun m!4866067 () Bool)

(assert (=> b!4272260 m!4866067))

(assert (=> b!4272260 m!4866019))

(assert (=> b!4272260 m!4866013))

(declare-fun m!4866069 () Bool)

(assert (=> b!4272260 m!4866069))

(assert (=> b!4272260 m!4866013))

(assert (=> b!4272260 m!4866063))

(assert (=> b!4272260 m!4866013))

(declare-fun m!4866071 () Bool)

(assert (=> b!4272260 m!4866071))

(assert (=> b!4272260 m!4866067))

(declare-fun m!4866073 () Bool)

(assert (=> b!4272260 m!4866073))

(assert (=> d!1260305 m!4866005))

(assert (=> d!1260305 m!4866005))

(assert (=> d!1260305 m!4866013))

(declare-fun m!4866075 () Bool)

(assert (=> d!1260305 m!4866075))

(declare-fun m!4866077 () Bool)

(assert (=> b!4272262 m!4866077))

(declare-fun m!4866079 () Bool)

(assert (=> bm!294174 m!4866079))

(assert (=> d!1260283 d!1260305))

(declare-fun d!1260307 () Bool)

(assert (=> d!1260307 (= (efficientList$default$2!182 (c!726941 x!741649)) Nil!47316)))

(assert (=> d!1260283 d!1260307))

(declare-fun e!2652556 () Bool)

(declare-fun tp!1308218 () Bool)

(declare-fun b!4272272 () Bool)

(declare-fun tp!1308217 () Bool)

(assert (=> b!4272272 (= e!2652556 (and (inv!62482 (left!35184 (c!726941 x!741649))) tp!1308217 (inv!62482 (right!35514 (c!726941 x!741649))) tp!1308218))))

(declare-fun b!4272273 () Bool)

(declare-fun inv!62488 (IArray!28601) Bool)

(assert (=> b!4272273 (= e!2652556 (inv!62488 (xs!17604 (c!726941 x!741649))))))

(assert (=> b!4272189 (= tp!1308209 (and (inv!62482 (c!726941 x!741649)) e!2652556))))

(assert (= (and b!4272189 (is-Node!14298 (c!726941 x!741649))) b!4272272))

(assert (= (and b!4272189 (is-Leaf!22103 (c!726941 x!741649))) b!4272273))

(declare-fun m!4866081 () Bool)

(assert (=> b!4272272 m!4866081))

(declare-fun m!4866083 () Bool)

(assert (=> b!4272272 m!4866083))

(declare-fun m!4866085 () Bool)

(assert (=> b!4272273 m!4866085))

(assert (=> b!4272189 m!4865969))

(push 1)

(assert (not d!1260305))

(assert (not b!4272260))

(assert (not b!4272262))

(assert (not b!4272217))

(assert (not b!4272222))

(assert (not b!4272273))

(assert (not bm!294174))

(assert (not b!4272247))

(assert (not b!4272245))

(assert (not d!1260303))

(assert (not b!4272218))

(assert (not b!4272221))

(assert (not d!1260301))

(assert (not b!4272189))

(assert (not d!1260299))

(assert (not b!4272272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4272292 () Bool)

(declare-fun e!2652569 () List!47440)

(assert (=> b!4272292 (= e!2652569 (Cons!47316 (h!52736 (list!17186 (c!726941 x!741649))) (++!12077 (t!353806 (list!17186 (c!726941 x!741649))) (efficientList$default$2!182 (c!726941 x!741649)))))))

(declare-fun b!4272293 () Bool)

(declare-fun res!1754864 () Bool)

(declare-fun e!2652568 () Bool)

(assert (=> b!4272293 (=> (not res!1754864) (not e!2652568))))

(declare-fun lt!1513024 () List!47440)

(declare-fun size!34647 (List!47440) Int)

(assert (=> b!4272293 (= res!1754864 (= (size!34647 lt!1513024) (+ (size!34647 (list!17186 (c!726941 x!741649))) (size!34647 (efficientList$default$2!182 (c!726941 x!741649))))))))

(declare-fun b!4272291 () Bool)

(assert (=> b!4272291 (= e!2652569 (efficientList$default$2!182 (c!726941 x!741649)))))

(declare-fun d!1260317 () Bool)

(assert (=> d!1260317 e!2652568))

(declare-fun res!1754863 () Bool)

(assert (=> d!1260317 (=> (not res!1754863) (not e!2652568))))

(declare-fun content!7478 (List!47440) (Set (_ BitVec 16)))

(assert (=> d!1260317 (= res!1754863 (= (content!7478 lt!1513024) (set.union (content!7478 (list!17186 (c!726941 x!741649))) (content!7478 (efficientList$default$2!182 (c!726941 x!741649))))))))

(assert (=> d!1260317 (= lt!1513024 e!2652569)))

(declare-fun c!726984 () Bool)

(assert (=> d!1260317 (= c!726984 (is-Nil!47316 (list!17186 (c!726941 x!741649))))))

(assert (=> d!1260317 (= (++!12077 (list!17186 (c!726941 x!741649)) (efficientList$default$2!182 (c!726941 x!741649))) lt!1513024)))

(declare-fun b!4272294 () Bool)

(assert (=> b!4272294 (= e!2652568 (or (not (= (efficientList$default$2!182 (c!726941 x!741649)) Nil!47316)) (= lt!1513024 (list!17186 (c!726941 x!741649)))))))

(assert (= (and d!1260317 c!726984) b!4272291))

(assert (= (and d!1260317 (not c!726984)) b!4272292))

(assert (= (and d!1260317 res!1754863) b!4272293))

(assert (= (and b!4272293 res!1754864) b!4272294))

(assert (=> b!4272292 m!4866013))

(declare-fun m!4866095 () Bool)

(assert (=> b!4272292 m!4866095))

(declare-fun m!4866097 () Bool)

(assert (=> b!4272293 m!4866097))

(assert (=> b!4272293 m!4866005))

(declare-fun m!4866099 () Bool)

(assert (=> b!4272293 m!4866099))

(assert (=> b!4272293 m!4866013))

(declare-fun m!4866101 () Bool)

(assert (=> b!4272293 m!4866101))

(declare-fun m!4866103 () Bool)

(assert (=> d!1260317 m!4866103))

(assert (=> d!1260317 m!4866005))

(declare-fun m!4866105 () Bool)

(assert (=> d!1260317 m!4866105))

(assert (=> d!1260317 m!4866013))

(declare-fun m!4866107 () Bool)

(assert (=> d!1260317 m!4866107))

(assert (=> d!1260305 d!1260317))

(assert (=> d!1260305 d!1260287))

(declare-fun d!1260319 () Bool)

(declare-fun e!2652572 () Bool)

(assert (=> d!1260319 e!2652572))

(declare-fun res!1754867 () Bool)

(assert (=> d!1260319 (=> (not res!1754867) (not e!2652572))))

(declare-fun lt!1513027 () BalanceConc!28106)

(assert (=> d!1260319 (= res!1754867 (= (list!17184 lt!1513027) (value!249683 (toValue!18 thiss!2587 x!741649))))))

(declare-fun fromList!926 (List!47440) Conc!14298)

(assert (=> d!1260319 (= lt!1513027 (BalanceConc!28107 (fromList!926 (value!249683 (toValue!18 thiss!2587 x!741649)))))))

(assert (=> d!1260319 (= (fromListB!2668 (value!249683 (toValue!18 thiss!2587 x!741649))) lt!1513027)))

(declare-fun b!4272297 () Bool)

(assert (=> b!4272297 (= e!2652572 (isBalanced!3847 (fromList!926 (value!249683 (toValue!18 thiss!2587 x!741649)))))))

(assert (= (and d!1260319 res!1754867) b!4272297))

(declare-fun m!4866109 () Bool)

(assert (=> d!1260319 m!4866109))

(declare-fun m!4866111 () Bool)

(assert (=> d!1260319 m!4866111))

(assert (=> b!4272297 m!4866111))

(assert (=> b!4272297 m!4866111))

(declare-fun m!4866113 () Bool)

(assert (=> b!4272297 m!4866113))

(assert (=> d!1260303 d!1260319))

(push 1)

(assert (not b!4272260))

(assert (not b!4272292))

(assert (not b!4272262))

(assert (not b!4272297))

(assert (not b!4272217))

(assert (not b!4272222))

(assert (not bm!294174))

(assert (not b!4272247))

(assert (not b!4272245))

(assert (not d!1260317))

(assert (not b!4272218))

(assert (not b!4272221))

(assert (not b!4272273))

(assert (not d!1260319))

(assert (not d!1260301))

(assert (not b!4272189))

(assert (not b!4272293))

(assert (not d!1260299))

(assert (not b!4272272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

