; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!409612 () Bool)

(assert start!409612)

(assert (=> start!409612 true))

(declare-fun b!4270710 () Bool)

(declare-fun e!2651562 () Bool)

(declare-datatypes ((List!47425 0))(
  ( (Nil!47301) (Cons!47301 (h!52721 (_ BitVec 16)) (t!353695 List!47425)) )
))
(declare-datatypes ((IArray!28571 0))(
  ( (IArray!28572 (innerList!14343 List!47425)) )
))
(declare-datatypes ((Conc!14283 0))(
  ( (Node!14283 (left!35139 Conc!14283) (right!35469 Conc!14283) (csize!28796 Int) (cheight!14494 Int)) (Leaf!22080 (xs!17589 IArray!28571) (csize!28797 Int)) (Empty!14283) )
))
(declare-datatypes ((BalanceConc!28076 0))(
  ( (BalanceConc!28077 (c!726572 Conc!14283)) )
))
(declare-fun x!740522 () BalanceConc!28076)

(declare-fun tp!1307980 () Bool)

(declare-fun inv!62391 (Conc!14283) Bool)

(assert (=> b!4270710 (= e!2651562 (and (inv!62391 (c!726572 x!740522)) tp!1307980))))

(declare-datatypes ((WhitespaceValueInjection!130 0))(
  ( (WhitespaceValueInjection!131) )
))
(declare-fun thiss!2721 () WhitespaceValueInjection!130)

(declare-fun inst!1679 () Bool)

(declare-fun inv!62392 (BalanceConc!28076) Bool)

(declare-fun list!17146 (BalanceConc!28076) List!47425)

(declare-datatypes ((TokenValue!8256 0))(
  ( (FloatLiteralValue!16512 (text!58237 List!47425)) (TokenValueExt!8255 (__x!28702 Int)) (Broken!41280 (value!249260 List!47425)) (Object!8379) (End!8256) (Def!8256) (Underscore!8256) (Match!8256) (Else!8256) (Error!8256) (Case!8256) (If!8256) (Extends!8256) (Abstract!8256) (Class!8256) (Val!8256) (DelimiterValue!16512 (del!8316 List!47425)) (KeywordValue!8262 (value!249261 List!47425)) (CommentValue!16512 (value!249262 List!47425)) (WhitespaceValue!16512 (value!249263 List!47425)) (IndentationValue!8256 (value!249264 List!47425)) (String!55243) (Int32!8256) (Broken!41281 (value!249265 List!47425)) (Boolean!8257) (Unit!66214) (OperatorValue!8259 (op!8316 List!47425)) (IdentifierValue!16512 (value!249266 List!47425)) (IdentifierValue!16513 (value!249267 List!47425)) (WhitespaceValue!16513 (value!249268 List!47425)) (True!16512) (False!16512) (Broken!41282 (value!249269 List!47425)) (Broken!41283 (value!249270 List!47425)) (True!16513) (RightBrace!8256) (RightBracket!8256) (Colon!8256) (Null!8256) (Comma!8256) (LeftBracket!8256) (False!16513) (LeftBrace!8256) (ImaginaryLiteralValue!8256 (text!58238 List!47425)) (StringLiteralValue!24768 (value!249271 List!47425)) (EOFValue!8256 (value!249272 List!47425)) (IdentValue!8256 (value!249273 List!47425)) (DelimiterValue!16513 (value!249274 List!47425)) (DedentValue!8256 (value!249275 List!47425)) (NewLineValue!8256 (value!249276 List!47425)) (IntegerValue!24768 (value!249277 (_ BitVec 32)) (text!58239 List!47425)) (IntegerValue!24769 (value!249278 Int) (text!58240 List!47425)) (Times!8256) (Or!8256) (Equal!8256) (Minus!8256) (Broken!41284 (value!249279 List!47425)) (And!8256) (Div!8256) (LessEqual!8256) (Mod!8256) (Concat!21154) (Not!8256) (Plus!8256) (SpaceValue!8256 (value!249280 List!47425)) (IntegerValue!24770 (value!249281 Int) (text!58241 List!47425)) (StringLiteralValue!24769 (text!58242 List!47425)) (FloatLiteralValue!16513 (text!58243 List!47425)) (BytesLiteralValue!8256 (value!249282 List!47425)) (CommentValue!16513 (value!249283 List!47425)) (StringLiteralValue!24770 (value!249284 List!47425)) (ErrorTokenValue!8256 (msg!8317 List!47425)) )
))
(declare-fun toCharacters!13 (WhitespaceValueInjection!130 TokenValue!8256) BalanceConc!28076)

(declare-fun toValue!20 (WhitespaceValueInjection!130 BalanceConc!28076) TokenValue!8256)

(assert (=> start!409612 (= inst!1679 (=> (and (inv!62392 x!740522) e!2651562) (= (list!17146 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522))) (list!17146 x!740522))))))

(assert (= start!409612 b!4270710))

(declare-fun m!4864039 () Bool)

(assert (=> b!4270710 m!4864039))

(declare-fun m!4864041 () Bool)

(assert (=> start!409612 m!4864041))

(declare-fun m!4864043 () Bool)

(assert (=> start!409612 m!4864043))

(declare-fun m!4864045 () Bool)

(assert (=> start!409612 m!4864045))

(declare-fun m!4864047 () Bool)

(assert (=> start!409612 m!4864047))

(assert (=> start!409612 m!4864041))

(declare-fun m!4864049 () Bool)

(assert (=> start!409612 m!4864049))

(assert (=> start!409612 m!4864047))

(declare-fun bs!600611 () Bool)

(declare-fun neg-inst!1679 () Bool)

(declare-fun s!239698 () Bool)

(assert (= bs!600611 (and neg-inst!1679 s!239698)))

(assert (=> bs!600611 (=> true (= (list!17146 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522))) (list!17146 x!740522)))))

(assert (=> m!4864047 m!4864041))

(assert (=> m!4864047 m!4864043))

(assert (=> m!4864047 m!4864045))

(assert (=> m!4864047 s!239698))

(assert (=> m!4864045 s!239698))

(declare-fun bs!600612 () Bool)

(assert (= bs!600612 (and neg-inst!1679 start!409612)))

(assert (=> bs!600612 (= true inst!1679)))

(declare-fun lambda!130779 () Int)

(declare-fun Forall!1632 (Int) Bool)

(assert (=> start!409612 (= (Forall!1632 lambda!130779) inst!1679)))

(assert (=> start!409612 (not (Forall!1632 lambda!130779))))

(assert (=> start!409612 true))

(assert (= neg-inst!1679 inst!1679))

(declare-fun m!4864051 () Bool)

(assert (=> start!409612 m!4864051))

(assert (=> start!409612 m!4864051))

(check-sat (not start!409612) (not b!4270710) (not bs!600611))
(check-sat)
(get-model)

(declare-fun d!1259591 () Bool)

(declare-fun list!17147 (Conc!14283) List!47425)

(assert (=> d!1259591 (= (list!17146 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522))) (list!17147 (c!726572 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522)))))))

(declare-fun bs!600613 () Bool)

(assert (= bs!600613 d!1259591))

(declare-fun m!4864053 () Bool)

(assert (=> bs!600613 m!4864053))

(assert (=> bs!600611 d!1259591))

(declare-fun d!1259593 () Bool)

(declare-fun c!726576 () Bool)

(get-info :version)

(assert (=> d!1259593 (= c!726576 ((_ is WhitespaceValue!16513) (toValue!20 thiss!2721 x!740522)))))

(declare-fun e!2651565 () BalanceConc!28076)

(assert (=> d!1259593 (= (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522)) e!2651565)))

(declare-fun b!4270715 () Bool)

(declare-fun seqFromList!5867 (List!47425) BalanceConc!28076)

(assert (=> b!4270715 (= e!2651565 (seqFromList!5867 (value!249268 (toValue!20 thiss!2721 x!740522))))))

(declare-fun b!4270716 () Bool)

(assert (=> b!4270716 (= e!2651565 (BalanceConc!28077 Empty!14283))))

(assert (= (and d!1259593 c!726576) b!4270715))

(assert (= (and d!1259593 (not c!726576)) b!4270716))

(declare-fun m!4864055 () Bool)

(assert (=> b!4270715 m!4864055))

(assert (=> bs!600611 d!1259593))

(declare-fun d!1259597 () Bool)

(declare-fun efficientList!490 (BalanceConc!28076) List!47425)

(assert (=> d!1259597 (= (toValue!20 thiss!2721 x!740522) (WhitespaceValue!16513 (efficientList!490 x!740522)))))

(declare-fun bs!600615 () Bool)

(assert (= bs!600615 d!1259597))

(declare-fun m!4864059 () Bool)

(assert (=> bs!600615 m!4864059))

(assert (=> bs!600611 d!1259597))

(declare-fun d!1259601 () Bool)

(assert (=> d!1259601 (= (list!17146 x!740522) (list!17147 (c!726572 x!740522)))))

(declare-fun bs!600616 () Bool)

(assert (= bs!600616 d!1259601))

(declare-fun m!4864061 () Bool)

(assert (=> bs!600616 m!4864061))

(assert (=> bs!600611 d!1259601))

(check-sat (not d!1259591) (not d!1259601) (not b!4270710) (not b!4270715) (not d!1259597) (not start!409612))
(check-sat)
(get-model)

(declare-fun d!1259607 () Bool)

(declare-fun lt!1512697 () List!47425)

(assert (=> d!1259607 (= lt!1512697 (list!17146 x!740522))))

(declare-fun efficientList!492 (Conc!14283 List!47425) List!47425)

(declare-fun efficientList$default$2!170 (Conc!14283) List!47425)

(assert (=> d!1259607 (= lt!1512697 (efficientList!492 (c!726572 x!740522) (efficientList$default$2!170 (c!726572 x!740522))))))

(assert (=> d!1259607 (= (efficientList!490 x!740522) lt!1512697)))

(declare-fun bs!600619 () Bool)

(assert (= bs!600619 d!1259607))

(assert (=> bs!600619 m!4864045))

(declare-fun m!4864069 () Bool)

(assert (=> bs!600619 m!4864069))

(assert (=> bs!600619 m!4864069))

(declare-fun m!4864071 () Bool)

(assert (=> bs!600619 m!4864071))

(assert (=> d!1259597 d!1259607))

(declare-fun b!4270731 () Bool)

(declare-fun e!2651573 () List!47425)

(assert (=> b!4270731 (= e!2651573 Nil!47301)))

(declare-fun d!1259609 () Bool)

(declare-fun c!726585 () Bool)

(assert (=> d!1259609 (= c!726585 ((_ is Empty!14283) (c!726572 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522)))))))

(assert (=> d!1259609 (= (list!17147 (c!726572 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522)))) e!2651573)))

(declare-fun b!4270734 () Bool)

(declare-fun e!2651574 () List!47425)

(declare-fun ++!12067 (List!47425 List!47425) List!47425)

(assert (=> b!4270734 (= e!2651574 (++!12067 (list!17147 (left!35139 (c!726572 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522))))) (list!17147 (right!35469 (c!726572 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522)))))))))

(declare-fun b!4270733 () Bool)

(declare-fun list!17149 (IArray!28571) List!47425)

(assert (=> b!4270733 (= e!2651574 (list!17149 (xs!17589 (c!726572 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522))))))))

(declare-fun b!4270732 () Bool)

(assert (=> b!4270732 (= e!2651573 e!2651574)))

(declare-fun c!726586 () Bool)

(assert (=> b!4270732 (= c!726586 ((_ is Leaf!22080) (c!726572 (toCharacters!13 thiss!2721 (toValue!20 thiss!2721 x!740522)))))))

(assert (= (and d!1259609 c!726585) b!4270731))

(assert (= (and d!1259609 (not c!726585)) b!4270732))

(assert (= (and b!4270732 c!726586) b!4270733))

(assert (= (and b!4270732 (not c!726586)) b!4270734))

(declare-fun m!4864073 () Bool)

(assert (=> b!4270734 m!4864073))

(declare-fun m!4864075 () Bool)

(assert (=> b!4270734 m!4864075))

(assert (=> b!4270734 m!4864073))

(assert (=> b!4270734 m!4864075))

(declare-fun m!4864077 () Bool)

(assert (=> b!4270734 m!4864077))

(declare-fun m!4864079 () Bool)

(assert (=> b!4270733 m!4864079))

(assert (=> d!1259591 d!1259609))

(declare-fun b!4270735 () Bool)

(declare-fun e!2651575 () List!47425)

(assert (=> b!4270735 (= e!2651575 Nil!47301)))

(declare-fun d!1259611 () Bool)

(declare-fun c!726587 () Bool)

(assert (=> d!1259611 (= c!726587 ((_ is Empty!14283) (c!726572 x!740522)))))

(assert (=> d!1259611 (= (list!17147 (c!726572 x!740522)) e!2651575)))

(declare-fun b!4270738 () Bool)

(declare-fun e!2651576 () List!47425)

(assert (=> b!4270738 (= e!2651576 (++!12067 (list!17147 (left!35139 (c!726572 x!740522))) (list!17147 (right!35469 (c!726572 x!740522)))))))

(declare-fun b!4270737 () Bool)

(assert (=> b!4270737 (= e!2651576 (list!17149 (xs!17589 (c!726572 x!740522))))))

(declare-fun b!4270736 () Bool)

(assert (=> b!4270736 (= e!2651575 e!2651576)))

(declare-fun c!726588 () Bool)

(assert (=> b!4270736 (= c!726588 ((_ is Leaf!22080) (c!726572 x!740522)))))

(assert (= (and d!1259611 c!726587) b!4270735))

(assert (= (and d!1259611 (not c!726587)) b!4270736))

(assert (= (and b!4270736 c!726588) b!4270737))

(assert (= (and b!4270736 (not c!726588)) b!4270738))

(declare-fun m!4864081 () Bool)

(assert (=> b!4270738 m!4864081))

(declare-fun m!4864083 () Bool)

(assert (=> b!4270738 m!4864083))

(assert (=> b!4270738 m!4864081))

(assert (=> b!4270738 m!4864083))

(declare-fun m!4864085 () Bool)

(assert (=> b!4270738 m!4864085))

(declare-fun m!4864087 () Bool)

(assert (=> b!4270737 m!4864087))

(assert (=> d!1259601 d!1259611))

(check-sat (not b!4270738) (not b!4270737) (not b!4270715) (not d!1259607) (not start!409612) (not b!4270733) (not b!4270734) (not b!4270710))
(check-sat)
(get-model)

(assert (=> start!409612 d!1259601))

(assert (=> start!409612 d!1259593))

(declare-fun d!1259619 () Bool)

(declare-fun choose!26040 (Int) Bool)

(assert (=> d!1259619 (= (Forall!1632 lambda!130779) (choose!26040 lambda!130779))))

(declare-fun bs!600621 () Bool)

(assert (= bs!600621 d!1259619))

(declare-fun m!4864109 () Bool)

(assert (=> bs!600621 m!4864109))

(assert (=> start!409612 d!1259619))

(assert (=> start!409612 d!1259597))

(declare-fun d!1259621 () Bool)

(declare-fun isBalanced!3836 (Conc!14283) Bool)

(assert (=> d!1259621 (= (inv!62392 x!740522) (isBalanced!3836 (c!726572 x!740522)))))

(declare-fun bs!600622 () Bool)

(assert (= bs!600622 d!1259621))

(declare-fun m!4864111 () Bool)

(assert (=> bs!600622 m!4864111))

(assert (=> start!409612 d!1259621))

(assert (=> start!409612 d!1259591))

(assert (=> d!1259607 d!1259601))

(declare-fun b!4270767 () Bool)

(declare-fun e!2651591 () List!47425)

(assert (=> b!4270767 (= e!2651591 (efficientList$default$2!170 (c!726572 x!740522)))))

(declare-fun bm!294132 () Bool)

(declare-fun c!726603 () Bool)

(declare-fun c!726605 () Bool)

(assert (=> bm!294132 (= c!726603 c!726605)))

(declare-fun lt!1512712 () List!47425)

(declare-fun call!294137 () List!47425)

(declare-fun e!2651592 () List!47425)

(assert (=> bm!294132 (= call!294137 (++!12067 e!2651592 (ite c!726605 (efficientList$default$2!170 (c!726572 x!740522)) lt!1512712)))))

(declare-fun b!4270768 () Bool)

(declare-datatypes ((Unit!66215 0))(
  ( (Unit!66216) )
))
(declare-fun lt!1512713 () Unit!66215)

(declare-fun lt!1512711 () Unit!66215)

(assert (=> b!4270768 (= lt!1512713 lt!1512711)))

(declare-fun lt!1512714 () List!47425)

(assert (=> b!4270768 (= (++!12067 call!294137 (efficientList$default$2!170 (c!726572 x!740522))) (++!12067 lt!1512714 (++!12067 lt!1512712 (efficientList$default$2!170 (c!726572 x!740522)))))))

(declare-fun lemmaConcatAssociativity!2708 (List!47425 List!47425 List!47425) Unit!66215)

(assert (=> b!4270768 (= lt!1512711 (lemmaConcatAssociativity!2708 lt!1512714 lt!1512712 (efficientList$default$2!170 (c!726572 x!740522))))))

(assert (=> b!4270768 (= lt!1512712 (list!17147 (right!35469 (c!726572 x!740522))))))

(assert (=> b!4270768 (= lt!1512714 (list!17147 (left!35139 (c!726572 x!740522))))))

(declare-fun e!2651593 () List!47425)

(assert (=> b!4270768 (= e!2651593 (efficientList!492 (left!35139 (c!726572 x!740522)) (efficientList!492 (right!35469 (c!726572 x!740522)) (efficientList$default$2!170 (c!726572 x!740522)))))))

(declare-fun b!4270769 () Bool)

(assert (=> b!4270769 (= e!2651591 e!2651593)))

(assert (=> b!4270769 (= c!726605 ((_ is Leaf!22080) (c!726572 x!740522)))))

(declare-fun d!1259623 () Bool)

(declare-fun lt!1512715 () List!47425)

(assert (=> d!1259623 (= lt!1512715 (++!12067 (list!17147 (c!726572 x!740522)) (efficientList$default$2!170 (c!726572 x!740522))))))

(assert (=> d!1259623 (= lt!1512715 e!2651591)))

(declare-fun c!726604 () Bool)

(assert (=> d!1259623 (= c!726604 ((_ is Empty!14283) (c!726572 x!740522)))))

(assert (=> d!1259623 (= (efficientList!492 (c!726572 x!740522) (efficientList$default$2!170 (c!726572 x!740522))) lt!1512715)))

(declare-fun b!4270770 () Bool)

(declare-fun efficientList!494 (IArray!28571) List!47425)

(assert (=> b!4270770 (= e!2651592 (efficientList!494 (xs!17589 (c!726572 x!740522))))))

(declare-fun b!4270771 () Bool)

(assert (=> b!4270771 (= e!2651592 lt!1512714)))

(declare-fun b!4270772 () Bool)

(assert (=> b!4270772 (= e!2651593 call!294137)))

(assert (= (and d!1259623 c!726604) b!4270767))

(assert (= (and d!1259623 (not c!726604)) b!4270769))

(assert (= (and b!4270769 c!726605) b!4270772))

(assert (= (and b!4270769 (not c!726605)) b!4270768))

(assert (= (or b!4270772 b!4270768) bm!294132))

(assert (= (and bm!294132 c!726603) b!4270770))

(assert (= (and bm!294132 (not c!726603)) b!4270771))

(declare-fun m!4864113 () Bool)

(assert (=> bm!294132 m!4864113))

(assert (=> b!4270768 m!4864069))

(declare-fun m!4864115 () Bool)

(assert (=> b!4270768 m!4864115))

(assert (=> b!4270768 m!4864069))

(declare-fun m!4864117 () Bool)

(assert (=> b!4270768 m!4864117))

(declare-fun m!4864119 () Bool)

(assert (=> b!4270768 m!4864119))

(declare-fun m!4864121 () Bool)

(assert (=> b!4270768 m!4864121))

(assert (=> b!4270768 m!4864069))

(declare-fun m!4864123 () Bool)

(assert (=> b!4270768 m!4864123))

(assert (=> b!4270768 m!4864069))

(assert (=> b!4270768 m!4864119))

(assert (=> b!4270768 m!4864083))

(assert (=> b!4270768 m!4864117))

(declare-fun m!4864125 () Bool)

(assert (=> b!4270768 m!4864125))

(assert (=> b!4270768 m!4864081))

(assert (=> d!1259623 m!4864061))

(assert (=> d!1259623 m!4864061))

(assert (=> d!1259623 m!4864069))

(declare-fun m!4864127 () Bool)

(assert (=> d!1259623 m!4864127))

(declare-fun m!4864129 () Bool)

(assert (=> b!4270770 m!4864129))

(assert (=> d!1259607 d!1259623))

(declare-fun d!1259625 () Bool)

(assert (=> d!1259625 (= (efficientList$default$2!170 (c!726572 x!740522)) Nil!47301)))

(assert (=> d!1259607 d!1259625))

(declare-fun d!1259627 () Bool)

(declare-fun c!726608 () Bool)

(assert (=> d!1259627 (= c!726608 ((_ is Node!14283) (c!726572 x!740522)))))

(declare-fun e!2651598 () Bool)

(assert (=> d!1259627 (= (inv!62391 (c!726572 x!740522)) e!2651598)))

(declare-fun b!4270779 () Bool)

(declare-fun inv!62393 (Conc!14283) Bool)

(assert (=> b!4270779 (= e!2651598 (inv!62393 (c!726572 x!740522)))))

(declare-fun b!4270780 () Bool)

(declare-fun e!2651599 () Bool)

(assert (=> b!4270780 (= e!2651598 e!2651599)))

(declare-fun res!1754366 () Bool)

(assert (=> b!4270780 (= res!1754366 (not ((_ is Leaf!22080) (c!726572 x!740522))))))

(assert (=> b!4270780 (=> res!1754366 e!2651599)))

(declare-fun b!4270781 () Bool)

(declare-fun inv!62394 (Conc!14283) Bool)

(assert (=> b!4270781 (= e!2651599 (inv!62394 (c!726572 x!740522)))))

(assert (= (and d!1259627 c!726608) b!4270779))

(assert (= (and d!1259627 (not c!726608)) b!4270780))

(assert (= (and b!4270780 (not res!1754366)) b!4270781))

(declare-fun m!4864131 () Bool)

(assert (=> b!4270779 m!4864131))

(declare-fun m!4864133 () Bool)

(assert (=> b!4270781 m!4864133))

(assert (=> b!4270710 d!1259627))

(declare-fun d!1259629 () Bool)

(declare-fun fromListB!2665 (List!47425) BalanceConc!28076)

(assert (=> d!1259629 (= (seqFromList!5867 (value!249268 (toValue!20 thiss!2721 x!740522))) (fromListB!2665 (value!249268 (toValue!20 thiss!2721 x!740522))))))

(declare-fun bs!600623 () Bool)

(assert (= bs!600623 d!1259629))

(declare-fun m!4864135 () Bool)

(assert (=> bs!600623 m!4864135))

(assert (=> b!4270715 d!1259629))

(declare-fun e!2651604 () Bool)

(declare-fun tp!1307986 () Bool)

(declare-fun tp!1307985 () Bool)

(declare-fun b!4270788 () Bool)

(assert (=> b!4270788 (= e!2651604 (and (inv!62391 (left!35139 (c!726572 x!740522))) tp!1307985 (inv!62391 (right!35469 (c!726572 x!740522))) tp!1307986))))

(declare-fun b!4270789 () Bool)

(declare-fun inv!62395 (IArray!28571) Bool)

(assert (=> b!4270789 (= e!2651604 (inv!62395 (xs!17589 (c!726572 x!740522))))))

(assert (=> b!4270710 (= tp!1307980 (and (inv!62391 (c!726572 x!740522)) e!2651604))))

(assert (= (and b!4270710 ((_ is Node!14283) (c!726572 x!740522))) b!4270788))

(assert (= (and b!4270710 ((_ is Leaf!22080) (c!726572 x!740522))) b!4270789))

(declare-fun m!4864137 () Bool)

(assert (=> b!4270788 m!4864137))

(declare-fun m!4864139 () Bool)

(assert (=> b!4270788 m!4864139))

(declare-fun m!4864141 () Bool)

(assert (=> b!4270789 m!4864141))

(assert (=> b!4270710 m!4864039))

(check-sat (not d!1259623) (not d!1259629) (not b!4270737) (not b!4270781) (not b!4270770) (not bm!294132) (not b!4270733) (not b!4270788) (not b!4270789) (not d!1259619) (not b!4270738) (not b!4270768) (not b!4270734) (not b!4270710) (not d!1259621) (not b!4270779))
(check-sat)
(get-model)

(declare-fun d!1259643 () Bool)

(declare-fun e!2651629 () Bool)

(assert (=> d!1259643 e!2651629))

(declare-fun res!1754372 () Bool)

(assert (=> d!1259643 (=> (not res!1754372) (not e!2651629))))

(declare-fun lt!1512733 () BalanceConc!28076)

(assert (=> d!1259643 (= res!1754372 (= (list!17146 lt!1512733) (value!249268 (toValue!20 thiss!2721 x!740522))))))

(declare-fun fromList!924 (List!47425) Conc!14283)

(assert (=> d!1259643 (= lt!1512733 (BalanceConc!28077 (fromList!924 (value!249268 (toValue!20 thiss!2721 x!740522)))))))

(assert (=> d!1259643 (= (fromListB!2665 (value!249268 (toValue!20 thiss!2721 x!740522))) lt!1512733)))

(declare-fun b!4270827 () Bool)

(assert (=> b!4270827 (= e!2651629 (isBalanced!3836 (fromList!924 (value!249268 (toValue!20 thiss!2721 x!740522)))))))

(assert (= (and d!1259643 res!1754372) b!4270827))

(declare-fun m!4864177 () Bool)

(assert (=> d!1259643 m!4864177))

(declare-fun m!4864179 () Bool)

(assert (=> d!1259643 m!4864179))

(assert (=> b!4270827 m!4864179))

(assert (=> b!4270827 m!4864179))

(declare-fun m!4864181 () Bool)

(assert (=> b!4270827 m!4864181))

(assert (=> d!1259629 d!1259643))

(declare-fun d!1259645 () Bool)

(declare-fun e!2651635 () Bool)

(assert (=> d!1259645 e!2651635))

(declare-fun res!1754378 () Bool)

(assert (=> d!1259645 (=> (not res!1754378) (not e!2651635))))

(declare-fun lt!1512736 () List!47425)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7476 (List!47425) (InoxSet (_ BitVec 16)))

(assert (=> d!1259645 (= res!1754378 (= (content!7476 lt!1512736) ((_ map or) (content!7476 (list!17147 (c!726572 x!740522))) (content!7476 (efficientList$default$2!170 (c!726572 x!740522))))))))

(declare-fun e!2651634 () List!47425)

(assert (=> d!1259645 (= lt!1512736 e!2651634)))

(declare-fun c!726624 () Bool)

(assert (=> d!1259645 (= c!726624 ((_ is Nil!47301) (list!17147 (c!726572 x!740522))))))

(assert (=> d!1259645 (= (++!12067 (list!17147 (c!726572 x!740522)) (efficientList$default$2!170 (c!726572 x!740522))) lt!1512736)))

(declare-fun b!4270836 () Bool)

(assert (=> b!4270836 (= e!2651634 (efficientList$default$2!170 (c!726572 x!740522)))))

(declare-fun b!4270838 () Bool)

(declare-fun res!1754377 () Bool)

(assert (=> b!4270838 (=> (not res!1754377) (not e!2651635))))

(declare-fun size!34641 (List!47425) Int)

(assert (=> b!4270838 (= res!1754377 (= (size!34641 lt!1512736) (+ (size!34641 (list!17147 (c!726572 x!740522))) (size!34641 (efficientList$default$2!170 (c!726572 x!740522))))))))

(declare-fun b!4270837 () Bool)

(assert (=> b!4270837 (= e!2651634 (Cons!47301 (h!52721 (list!17147 (c!726572 x!740522))) (++!12067 (t!353695 (list!17147 (c!726572 x!740522))) (efficientList$default$2!170 (c!726572 x!740522)))))))

(declare-fun b!4270839 () Bool)

(assert (=> b!4270839 (= e!2651635 (or (not (= (efficientList$default$2!170 (c!726572 x!740522)) Nil!47301)) (= lt!1512736 (list!17147 (c!726572 x!740522)))))))

(assert (= (and d!1259645 c!726624) b!4270836))

(assert (= (and d!1259645 (not c!726624)) b!4270837))

(assert (= (and d!1259645 res!1754378) b!4270838))

(assert (= (and b!4270838 res!1754377) b!4270839))

(declare-fun m!4864183 () Bool)

(assert (=> d!1259645 m!4864183))

(assert (=> d!1259645 m!4864061))

(declare-fun m!4864185 () Bool)

(assert (=> d!1259645 m!4864185))

(assert (=> d!1259645 m!4864069))

(declare-fun m!4864187 () Bool)

(assert (=> d!1259645 m!4864187))

(declare-fun m!4864189 () Bool)

(assert (=> b!4270838 m!4864189))

(assert (=> b!4270838 m!4864061))

(declare-fun m!4864191 () Bool)

(assert (=> b!4270838 m!4864191))

(assert (=> b!4270838 m!4864069))

(declare-fun m!4864193 () Bool)

(assert (=> b!4270838 m!4864193))

(assert (=> b!4270837 m!4864069))

(declare-fun m!4864195 () Bool)

(assert (=> b!4270837 m!4864195))

(assert (=> d!1259623 d!1259645))

(assert (=> d!1259623 d!1259611))

(check-sat (not b!4270827) (not b!4270838) (not b!4270737) (not b!4270781) (not b!4270770) (not bm!294132) (not b!4270837) (not b!4270788) (not d!1259619) (not b!4270738) (not b!4270768) (not b!4270734) (not b!4270710) (not d!1259621) (not b!4270779) (not b!4270733) (not d!1259645) (not b!4270789) (not d!1259643))
(check-sat)
