; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!60526 () Bool)

(assert start!60526)

(assert (=> start!60526 true))

(declare-fun b!627432 () Bool)

(declare-fun e!380547 () Bool)

(declare-datatypes ((List!6451 0))(
  ( (Nil!6441) (Cons!6441 (h!11842 (_ BitVec 16)) (t!82418 List!6451)) )
))
(declare-datatypes ((IArray!4155 0))(
  ( (IArray!4156 (innerList!2135 List!6451)) )
))
(declare-datatypes ((Conc!2077 0))(
  ( (Node!2077 (left!5120 Conc!2077) (right!5450 Conc!2077) (csize!4384 Int) (cheight!2288 Int)) (Leaf!3245 (xs!4718 IArray!4155) (csize!4385 Int)) (Empty!2077) )
))
(declare-datatypes ((BalanceConc!4162 0))(
  ( (BalanceConc!4163 (c!115298 Conc!2077)) )
))
(declare-fun x!130191 () BalanceConc!4162)

(declare-fun tp!195916 () Bool)

(declare-fun inv!8246 (Conc!2077) Bool)

(assert (=> b!627432 (= e!380547 (and (inv!8246 (c!115298 x!130191)) tp!195916))))

(declare-fun inst!218 () Bool)

(declare-datatypes ((IdentValueInjection!4 0))(
  ( (IdentValueInjection!5) )
))
(declare-fun thiss!4294 () IdentValueInjection!4)

(declare-fun inv!8247 (BalanceConc!4162) Bool)

(declare-fun list!2722 (BalanceConc!4162) List!6451)

(declare-datatypes ((TokenValue!1342 0))(
  ( (FloatLiteralValue!2684 (text!9839 List!6451)) (TokenValueExt!1341 (__x!4584 Int)) (Broken!6710 (value!42402 List!6451)) (Object!1351) (End!1342) (Def!1342) (Underscore!1342) (Match!1342) (Else!1342) (Error!1342) (Case!1342) (If!1342) (Extends!1342) (Abstract!1342) (Class!1342) (Val!1342) (DelimiterValue!2684 (del!1402 List!6451)) (KeywordValue!1348 (value!42403 List!6451)) (CommentValue!2684 (value!42404 List!6451)) (WhitespaceValue!2684 (value!42405 List!6451)) (IndentationValue!1342 (value!42406 List!6451)) (String!8459) (Int32!1342) (Broken!6711 (value!42407 List!6451)) (Boolean!1343) (Unit!11522) (OperatorValue!1345 (op!1402 List!6451)) (IdentifierValue!2684 (value!42408 List!6451)) (IdentifierValue!2685 (value!42409 List!6451)) (WhitespaceValue!2685 (value!42410 List!6451)) (True!2684) (False!2684) (Broken!6712 (value!42411 List!6451)) (Broken!6713 (value!42412 List!6451)) (True!2685) (RightBrace!1342) (RightBracket!1342) (Colon!1342) (Null!1342) (Comma!1342) (LeftBracket!1342) (False!2685) (LeftBrace!1342) (ImaginaryLiteralValue!1342 (text!9840 List!6451)) (StringLiteralValue!4026 (value!42413 List!6451)) (EOFValue!1342 (value!42414 List!6451)) (IdentValue!1342 (value!42415 List!6451)) (DelimiterValue!2685 (value!42416 List!6451)) (DedentValue!1342 (value!42417 List!6451)) (NewLineValue!1342 (value!42418 List!6451)) (IntegerValue!4026 (value!42419 (_ BitVec 32)) (text!9841 List!6451)) (IntegerValue!4027 (value!42420 Int) (text!9842 List!6451)) (Times!1342) (Or!1342) (Equal!1342) (Minus!1342) (Broken!6714 (value!42421 List!6451)) (And!1342) (Div!1342) (LessEqual!1342) (Mod!1342) (Concat!2994) (Not!1342) (Plus!1342) (SpaceValue!1342 (value!42422 List!6451)) (IntegerValue!4028 (value!42423 Int) (text!9843 List!6451)) (StringLiteralValue!4027 (text!9844 List!6451)) (FloatLiteralValue!2685 (text!9845 List!6451)) (BytesLiteralValue!1342 (value!42424 List!6451)) (CommentValue!2685 (value!42425 List!6451)) (StringLiteralValue!4028 (value!42426 List!6451)) (ErrorTokenValue!1342 (msg!1403 List!6451)) )
))
(declare-fun toCharacters!16 (IdentValueInjection!4 TokenValue!1342) BalanceConc!4162)

(declare-fun toValue!23 (IdentValueInjection!4 BalanceConc!4162) TokenValue!1342)

(assert (=> start!60526 (= inst!218 (=> (and (inv!8247 x!130191) e!380547) (= (list!2722 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191))) (list!2722 x!130191))))))

(assert (= start!60526 b!627432))

(declare-fun m!895671 () Bool)

(assert (=> b!627432 m!895671))

(declare-fun m!895673 () Bool)

(assert (=> start!60526 m!895673))

(declare-fun m!895675 () Bool)

(assert (=> start!60526 m!895675))

(assert (=> start!60526 m!895673))

(declare-fun m!895677 () Bool)

(assert (=> start!60526 m!895677))

(declare-fun m!895679 () Bool)

(assert (=> start!60526 m!895679))

(assert (=> start!60526 m!895675))

(declare-fun m!895681 () Bool)

(assert (=> start!60526 m!895681))

(declare-fun bs!72305 () Bool)

(declare-fun neg-inst!218 () Bool)

(declare-fun s!19089 () Bool)

(assert (= bs!72305 (and neg-inst!218 s!19089)))

(assert (=> bs!72305 (=> true (= (list!2722 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191))) (list!2722 x!130191)))))

(assert (=> m!895679 m!895673))

(assert (=> m!895679 m!895675))

(assert (=> m!895679 m!895681))

(assert (=> m!895679 s!19089))

(assert (=> m!895673 s!19089))

(declare-fun bs!72306 () Bool)

(assert (= bs!72306 (and neg-inst!218 start!60526)))

(assert (=> bs!72306 (= true inst!218)))

(declare-fun lambda!16367 () Int)

(declare-fun Forall!320 (Int) Bool)

(assert (=> start!60526 (= (Forall!320 lambda!16367) inst!218)))

(assert (=> start!60526 (not (Forall!320 lambda!16367))))

(assert (=> start!60526 true))

(assert (= neg-inst!218 inst!218))

(declare-fun m!895683 () Bool)

(assert (=> start!60526 m!895683))

(assert (=> start!60526 m!895683))

(push 1)

(assert (not start!60526))

(assert (not b!627432))

(assert (not bs!72305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219514 () Bool)

(declare-fun list!2724 (Conc!2077) List!6451)

(assert (=> d!219514 (= (list!2722 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191))) (list!2724 (c!115298 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191)))))))

(declare-fun bs!72309 () Bool)

(assert (= bs!72309 d!219514))

(declare-fun m!895699 () Bool)

(assert (=> bs!72309 m!895699))

(assert (=> bs!72305 d!219514))

(declare-fun d!219516 () Bool)

(declare-fun c!115303 () Bool)

(assert (=> d!219516 (= c!115303 (is-IdentValue!1342 (toValue!23 thiss!4294 x!130191)))))

(declare-fun e!380553 () BalanceConc!4162)

(assert (=> d!219516 (= (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191)) e!380553)))

(declare-fun b!627442 () Bool)

(declare-fun seqFromList!1447 (List!6451) BalanceConc!4162)

(assert (=> b!627442 (= e!380553 (seqFromList!1447 (value!42415 (toValue!23 thiss!4294 x!130191))))))

(declare-fun b!627443 () Bool)

(assert (=> b!627443 (= e!380553 (BalanceConc!4163 Empty!2077))))

(assert (= (and d!219516 c!115303) b!627442))

(assert (= (and d!219516 (not c!115303)) b!627443))

(declare-fun m!895701 () Bool)

(assert (=> b!627442 m!895701))

(assert (=> bs!72305 d!219516))

(declare-fun d!219520 () Bool)

(declare-fun efficientList!70 (BalanceConc!4162) List!6451)

(assert (=> d!219520 (= (toValue!23 thiss!4294 x!130191) (IdentValue!1342 (efficientList!70 x!130191)))))

(declare-fun bs!72311 () Bool)

(assert (= bs!72311 d!219520))

(declare-fun m!895705 () Bool)

(assert (=> bs!72311 m!895705))

(assert (=> bs!72305 d!219520))

(declare-fun d!219524 () Bool)

(assert (=> d!219524 (= (list!2722 x!130191) (list!2724 (c!115298 x!130191)))))

(declare-fun bs!72312 () Bool)

(assert (= bs!72312 d!219524))

(declare-fun m!895707 () Bool)

(assert (=> bs!72312 m!895707))

(assert (=> bs!72305 d!219524))

(push 1)

(assert (not d!219520))

(assert (not b!627442))

(assert (not b!627432))

(assert (not start!60526))

(assert (not d!219524))

(assert (not d!219514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!627460 () Bool)

(declare-fun e!380562 () List!6451)

(declare-fun list!2726 (IArray!4155) List!6451)

(assert (=> b!627460 (= e!380562 (list!2726 (xs!4718 (c!115298 x!130191))))))

(declare-fun b!627459 () Bool)

(declare-fun e!380561 () List!6451)

(assert (=> b!627459 (= e!380561 e!380562)))

(declare-fun c!115313 () Bool)

(assert (=> b!627459 (= c!115313 (is-Leaf!3245 (c!115298 x!130191)))))

(declare-fun d!219530 () Bool)

(declare-fun c!115312 () Bool)

(assert (=> d!219530 (= c!115312 (is-Empty!2077 (c!115298 x!130191)))))

(assert (=> d!219530 (= (list!2724 (c!115298 x!130191)) e!380561)))

(declare-fun b!627461 () Bool)

(declare-fun ++!1782 (List!6451 List!6451) List!6451)

(assert (=> b!627461 (= e!380562 (++!1782 (list!2724 (left!5120 (c!115298 x!130191))) (list!2724 (right!5450 (c!115298 x!130191)))))))

(declare-fun b!627458 () Bool)

(assert (=> b!627458 (= e!380561 Nil!6441)))

(assert (= (and d!219530 c!115312) b!627458))

(assert (= (and d!219530 (not c!115312)) b!627459))

(assert (= (and b!627459 c!115313) b!627460))

(assert (= (and b!627459 (not c!115313)) b!627461))

(declare-fun m!895715 () Bool)

(assert (=> b!627460 m!895715))

(declare-fun m!895717 () Bool)

(assert (=> b!627461 m!895717))

(declare-fun m!895719 () Bool)

(assert (=> b!627461 m!895719))

(assert (=> b!627461 m!895717))

(assert (=> b!627461 m!895719))

(declare-fun m!895721 () Bool)

(assert (=> b!627461 m!895721))

(assert (=> d!219524 d!219530))

(declare-fun b!627464 () Bool)

(declare-fun e!380564 () List!6451)

(assert (=> b!627464 (= e!380564 (list!2726 (xs!4718 (c!115298 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191))))))))

(declare-fun b!627463 () Bool)

(declare-fun e!380563 () List!6451)

(assert (=> b!627463 (= e!380563 e!380564)))

(declare-fun c!115315 () Bool)

(assert (=> b!627463 (= c!115315 (is-Leaf!3245 (c!115298 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191)))))))

(declare-fun d!219532 () Bool)

(declare-fun c!115314 () Bool)

(assert (=> d!219532 (= c!115314 (is-Empty!2077 (c!115298 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191)))))))

(assert (=> d!219532 (= (list!2724 (c!115298 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191)))) e!380563)))

(declare-fun b!627465 () Bool)

(assert (=> b!627465 (= e!380564 (++!1782 (list!2724 (left!5120 (c!115298 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191))))) (list!2724 (right!5450 (c!115298 (toCharacters!16 thiss!4294 (toValue!23 thiss!4294 x!130191)))))))))

(declare-fun b!627462 () Bool)

(assert (=> b!627462 (= e!380563 Nil!6441)))

(assert (= (and d!219532 c!115314) b!627462))

(assert (= (and d!219532 (not c!115314)) b!627463))

(assert (= (and b!627463 c!115315) b!627464))

(assert (= (and b!627463 (not c!115315)) b!627465))

(declare-fun m!895723 () Bool)

(assert (=> b!627464 m!895723))

(declare-fun m!895725 () Bool)

(assert (=> b!627465 m!895725))

(declare-fun m!895727 () Bool)

(assert (=> b!627465 m!895727))

(assert (=> b!627465 m!895725))

(assert (=> b!627465 m!895727))

(declare-fun m!895729 () Bool)

(assert (=> b!627465 m!895729))

(assert (=> d!219514 d!219532))

(declare-fun d!219534 () Bool)

(declare-fun lt!266923 () List!6451)

(assert (=> d!219534 (= lt!266923 (list!2722 x!130191))))

(declare-fun efficientList!72 (Conc!2077 List!6451) List!6451)

(declare-fun efficientList$default$2!24 (Conc!2077) List!6451)

(assert (=> d!219534 (= lt!266923 (efficientList!72 (c!115298 x!130191) (efficientList$default$2!24 (c!115298 x!130191))))))

(assert (=> d!219534 (= (efficientList!70 x!130191) lt!266923)))

(declare-fun bs!72315 () Bool)

(assert (= bs!72315 d!219534))

(assert (=> bs!72315 m!895679))

(declare-fun m!895731 () Bool)

(assert (=> bs!72315 m!895731))

(assert (=> bs!72315 m!895731))

(declare-fun m!895733 () Bool)

(assert (=> bs!72315 m!895733))

(assert (=> d!219520 d!219534))

(push 1)

(assert (not b!627442))

(assert (not b!627432))

(assert (not start!60526))

(assert (not d!219534))

(assert (not b!627465))

(assert (not b!627461))

(assert (not b!627460))

(assert (not b!627464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!60526 d!219524))

(assert (=> start!60526 d!219516))

(declare-fun d!219542 () Bool)

(declare-fun choose!4552 (Int) Bool)

(assert (=> d!219542 (= (Forall!320 lambda!16367) (choose!4552 lambda!16367))))

(declare-fun bs!72317 () Bool)

(assert (= bs!72317 d!219542))

(declare-fun m!895755 () Bool)

(assert (=> bs!72317 m!895755))

(assert (=> start!60526 d!219542))

(assert (=> start!60526 d!219520))

(assert (=> start!60526 d!219514))

(declare-fun d!219544 () Bool)

(declare-fun isBalanced!552 (Conc!2077) Bool)

(assert (=> d!219544 (= (inv!8247 x!130191) (isBalanced!552 (c!115298 x!130191)))))

(declare-fun bs!72318 () Bool)

(assert (= bs!72318 d!219544))

(declare-fun m!895757 () Bool)

(assert (=> bs!72318 m!895757))

(assert (=> start!60526 d!219544))

(declare-fun d!219546 () Bool)

(declare-fun c!115326 () Bool)

(assert (=> d!219546 (= c!115326 (is-Node!2077 (c!115298 x!130191)))))

(declare-fun e!380577 () Bool)

(assert (=> d!219546 (= (inv!8246 (c!115298 x!130191)) e!380577)))

(declare-fun b!627488 () Bool)

(declare-fun inv!8250 (Conc!2077) Bool)

(assert (=> b!627488 (= e!380577 (inv!8250 (c!115298 x!130191)))))

(declare-fun b!627489 () Bool)

(declare-fun e!380578 () Bool)

(assert (=> b!627489 (= e!380577 e!380578)))

(declare-fun res!272030 () Bool)

(assert (=> b!627489 (= res!272030 (not (is-Leaf!3245 (c!115298 x!130191))))))

(assert (=> b!627489 (=> res!272030 e!380578)))

(declare-fun b!627490 () Bool)

(declare-fun inv!8251 (Conc!2077) Bool)

(assert (=> b!627490 (= e!380578 (inv!8251 (c!115298 x!130191)))))

(assert (= (and d!219546 c!115326) b!627488))

(assert (= (and d!219546 (not c!115326)) b!627489))

(assert (= (and b!627489 (not res!272030)) b!627490))

(declare-fun m!895759 () Bool)

(assert (=> b!627488 m!895759))

(declare-fun m!895761 () Bool)

(assert (=> b!627490 m!895761))

(assert (=> b!627432 d!219546))

(assert (=> d!219534 d!219524))

(declare-fun b!627503 () Bool)

(declare-fun e!380587 () List!6451)

(declare-fun efficientList!74 (IArray!4155) List!6451)

(assert (=> b!627503 (= e!380587 (efficientList!74 (xs!4718 (c!115298 x!130191))))))

(declare-fun b!627504 () Bool)

(declare-fun e!380586 () List!6451)

(declare-fun call!41308 () List!6451)

(assert (=> b!627504 (= e!380586 call!41308)))

(declare-fun b!627505 () Bool)

(declare-datatypes ((Unit!11524 0))(
  ( (Unit!11525) )
))
(declare-fun lt!266940 () Unit!11524)

(declare-fun lt!266941 () Unit!11524)

(assert (=> b!627505 (= lt!266940 lt!266941)))

(declare-fun lt!266939 () List!6451)

(declare-fun lt!266938 () List!6451)

(assert (=> b!627505 (= (++!1782 (++!1782 lt!266939 lt!266938) (efficientList$default$2!24 (c!115298 x!130191))) (++!1782 lt!266939 call!41308))))

(declare-fun lemmaConcatAssociativity!631 (List!6451 List!6451 List!6451) Unit!11524)

(assert (=> b!627505 (= lt!266941 (lemmaConcatAssociativity!631 lt!266939 lt!266938 (efficientList$default$2!24 (c!115298 x!130191))))))

(assert (=> b!627505 (= lt!266938 (list!2724 (right!5450 (c!115298 x!130191))))))

(assert (=> b!627505 (= lt!266939 (list!2724 (left!5120 (c!115298 x!130191))))))

(assert (=> b!627505 (= e!380586 (efficientList!72 (left!5120 (c!115298 x!130191)) (efficientList!72 (right!5450 (c!115298 x!130191)) (efficientList$default$2!24 (c!115298 x!130191)))))))

(declare-fun bm!41303 () Bool)

(declare-fun c!115335 () Bool)

(declare-fun c!115334 () Bool)

(assert (=> bm!41303 (= c!115335 c!115334)))

(assert (=> bm!41303 (= call!41308 (++!1782 e!380587 (efficientList$default$2!24 (c!115298 x!130191))))))

(declare-fun b!627507 () Bool)

(declare-fun e!380585 () List!6451)

(assert (=> b!627507 (= e!380585 e!380586)))

(assert (=> b!627507 (= c!115334 (is-Leaf!3245 (c!115298 x!130191)))))

(declare-fun b!627508 () Bool)

(assert (=> b!627508 (= e!380585 (efficientList$default$2!24 (c!115298 x!130191)))))

(declare-fun d!219548 () Bool)

(declare-fun lt!266937 () List!6451)

(assert (=> d!219548 (= lt!266937 (++!1782 (list!2724 (c!115298 x!130191)) (efficientList$default$2!24 (c!115298 x!130191))))))

(assert (=> d!219548 (= lt!266937 e!380585)))

(declare-fun c!115333 () Bool)

(assert (=> d!219548 (= c!115333 (is-Empty!2077 (c!115298 x!130191)))))

(assert (=> d!219548 (= (efficientList!72 (c!115298 x!130191) (efficientList$default$2!24 (c!115298 x!130191))) lt!266937)))

(declare-fun b!627506 () Bool)

(assert (=> b!627506 (= e!380587 lt!266938)))

(assert (= (and d!219548 c!115333) b!627508))

(assert (= (and d!219548 (not c!115333)) b!627507))

(assert (= (and b!627507 c!115334) b!627504))

(assert (= (and b!627507 (not c!115334)) b!627505))

(assert (= (or b!627504 b!627505) bm!41303))

(assert (= (and bm!41303 c!115335) b!627503))

(assert (= (and bm!41303 (not c!115335)) b!627506))

(declare-fun m!895763 () Bool)

(assert (=> b!627503 m!895763))

(assert (=> b!627505 m!895717))

(assert (=> b!627505 m!895731))

(declare-fun m!895765 () Bool)

(assert (=> b!627505 m!895765))

(declare-fun m!895767 () Bool)

(assert (=> b!627505 m!895767))

(declare-fun m!895769 () Bool)

(assert (=> b!627505 m!895769))

(assert (=> b!627505 m!895765))

(declare-fun m!895771 () Bool)

(assert (=> b!627505 m!895771))

(assert (=> b!627505 m!895767))

(assert (=> b!627505 m!895731))

(declare-fun m!895773 () Bool)

(assert (=> b!627505 m!895773))

(assert (=> b!627505 m!895719))

(assert (=> b!627505 m!895731))

(declare-fun m!895775 () Bool)

(assert (=> b!627505 m!895775))

(assert (=> bm!41303 m!895731))

(declare-fun m!895777 () Bool)

(assert (=> bm!41303 m!895777))

(assert (=> d!219548 m!895707))

(assert (=> d!219548 m!895707))

(assert (=> d!219548 m!895731))

(declare-fun m!895779 () Bool)

(assert (=> d!219548 m!895779))

(assert (=> d!219534 d!219548))

(declare-fun d!219552 () Bool)

(assert (=> d!219552 (= (efficientList$default$2!24 (c!115298 x!130191)) Nil!6441)))

(assert (=> d!219534 d!219552))

(declare-fun d!219554 () Bool)

(declare-fun fromListB!631 (List!6451) BalanceConc!4162)

(assert (=> d!219554 (= (seqFromList!1447 (value!42415 (toValue!23 thiss!4294 x!130191))) (fromListB!631 (value!42415 (toValue!23 thiss!4294 x!130191))))))

(declare-fun bs!72319 () Bool)

(assert (= bs!72319 d!219554))

(declare-fun m!895781 () Bool)

(assert (=> bs!72319 m!895781))

(assert (=> b!627442 d!219554))

(declare-fun e!380601 () Bool)

(declare-fun tp!195924 () Bool)

(declare-fun tp!195925 () Bool)

(declare-fun b!627533 () Bool)

(assert (=> b!627533 (= e!380601 (and (inv!8246 (left!5120 (c!115298 x!130191))) tp!195924 (inv!8246 (right!5450 (c!115298 x!130191))) tp!195925))))

(declare-fun b!627534 () Bool)

(declare-fun inv!8252 (IArray!4155) Bool)

(assert (=> b!627534 (= e!380601 (inv!8252 (xs!4718 (c!115298 x!130191))))))

(assert (=> b!627432 (= tp!195916 (and (inv!8246 (c!115298 x!130191)) e!380601))))

(assert (= (and b!627432 (is-Node!2077 (c!115298 x!130191))) b!627533))

(assert (= (and b!627432 (is-Leaf!3245 (c!115298 x!130191))) b!627534))

(declare-fun m!895785 () Bool)

(assert (=> b!627533 m!895785))

(declare-fun m!895787 () Bool)

(assert (=> b!627533 m!895787))

(declare-fun m!895789 () Bool)

(assert (=> b!627534 m!895789))

(assert (=> b!627432 m!895671))

(push 1)

(assert (not d!219544))

(assert (not b!627505))

(assert (not b!627432))

(assert (not b!627533))

(assert (not b!627534))

(assert (not d!219542))

(assert (not d!219554))

(assert (not bm!41303))

(assert (not b!627465))

(assert (not b!627490))

(assert (not b!627503))

(assert (not b!627460))

(assert (not b!627488))

(assert (not b!627464))

(assert (not d!219548))

(assert (not b!627461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!219566 () Bool)

(declare-fun e!380617 () Bool)

(assert (=> d!219566 e!380617))

(declare-fun res!272036 () Bool)

(assert (=> d!219566 (=> (not res!272036) (not e!380617))))

(declare-fun lt!266959 () BalanceConc!4162)

(assert (=> d!219566 (= res!272036 (= (list!2722 lt!266959) (value!42415 (toValue!23 thiss!4294 x!130191))))))

(declare-fun fromList!292 (List!6451) Conc!2077)

(assert (=> d!219566 (= lt!266959 (BalanceConc!4163 (fromList!292 (value!42415 (toValue!23 thiss!4294 x!130191)))))))

(assert (=> d!219566 (= (fromListB!631 (value!42415 (toValue!23 thiss!4294 x!130191))) lt!266959)))

(declare-fun b!627554 () Bool)

(assert (=> b!627554 (= e!380617 (isBalanced!552 (fromList!292 (value!42415 (toValue!23 thiss!4294 x!130191)))))))

(assert (= (and d!219566 res!272036) b!627554))

(declare-fun m!895823 () Bool)

(assert (=> d!219566 m!895823))

(declare-fun m!895825 () Bool)

(assert (=> d!219566 m!895825))

(assert (=> b!627554 m!895825))

(assert (=> b!627554 m!895825))

(declare-fun m!895827 () Bool)

(assert (=> b!627554 m!895827))

(assert (=> d!219554 d!219566))

(declare-fun d!219568 () Bool)

(declare-fun e!380623 () Bool)

(assert (=> d!219568 e!380623))

(declare-fun res!272041 () Bool)

(assert (=> d!219568 (=> (not res!272041) (not e!380623))))

(declare-fun lt!266962 () List!6451)

(declare-fun content!1161 (List!6451) (Set (_ BitVec 16)))

(assert (=> d!219568 (= res!272041 (= (content!1161 lt!266962) (set.union (content!1161 (list!2724 (c!115298 x!130191))) (content!1161 (efficientList$default$2!24 (c!115298 x!130191))))))))

(declare-fun e!380622 () List!6451)

(assert (=> d!219568 (= lt!266962 e!380622)))

(declare-fun c!115351 () Bool)

(assert (=> d!219568 (= c!115351 (is-Nil!6441 (list!2724 (c!115298 x!130191))))))

(assert (=> d!219568 (= (++!1782 (list!2724 (c!115298 x!130191)) (efficientList$default$2!24 (c!115298 x!130191))) lt!266962)))

(declare-fun b!627566 () Bool)

(assert (=> b!627566 (= e!380623 (or (not (= (efficientList$default$2!24 (c!115298 x!130191)) Nil!6441)) (= lt!266962 (list!2724 (c!115298 x!130191)))))))

(declare-fun b!627563 () Bool)

(assert (=> b!627563 (= e!380622 (efficientList$default$2!24 (c!115298 x!130191)))))

(declare-fun b!627564 () Bool)

(assert (=> b!627564 (= e!380622 (Cons!6441 (h!11842 (list!2724 (c!115298 x!130191))) (++!1782 (t!82418 (list!2724 (c!115298 x!130191))) (efficientList$default$2!24 (c!115298 x!130191)))))))

(declare-fun b!627565 () Bool)

(declare-fun res!272042 () Bool)

(assert (=> b!627565 (=> (not res!272042) (not e!380623))))

(declare-fun size!5042 (List!6451) Int)

(assert (=> b!627565 (= res!272042 (= (size!5042 lt!266962) (+ (size!5042 (list!2724 (c!115298 x!130191))) (size!5042 (efficientList$default$2!24 (c!115298 x!130191))))))))

(assert (= (and d!219568 c!115351) b!627563))

(assert (= (and d!219568 (not c!115351)) b!627564))

(assert (= (and d!219568 res!272041) b!627565))

(assert (= (and b!627565 res!272042) b!627566))

(declare-fun m!895829 () Bool)

(assert (=> d!219568 m!895829))

(assert (=> d!219568 m!895707))

(declare-fun m!895831 () Bool)

(assert (=> d!219568 m!895831))

(assert (=> d!219568 m!895731))

(declare-fun m!895833 () Bool)

(assert (=> d!219568 m!895833))

(assert (=> b!627564 m!895731))

(declare-fun m!895835 () Bool)

(assert (=> b!627564 m!895835))

(declare-fun m!895837 () Bool)

(assert (=> b!627565 m!895837))

(assert (=> b!627565 m!895707))

(declare-fun m!895839 () Bool)

(assert (=> b!627565 m!895839))

(assert (=> b!627565 m!895731))

(declare-fun m!895841 () Bool)

(assert (=> b!627565 m!895841))

(assert (=> d!219548 d!219568))

(assert (=> d!219548 d!219530))

(push 1)

(assert (not b!627565))

(assert (not d!219544))

(assert (not b!627564))

(assert (not b!627505))

(assert (not b!627432))

(assert (not b!627533))

(assert (not b!627534))

(assert (not d!219542))

(assert (not bm!41303))

(assert (not b!627465))

(assert (not d!219568))

(assert (not b!627461))

(assert (not b!627490))

(assert (not b!627503))

(assert (not b!627554))

(assert (not d!219566))

(assert (not b!627460))

(assert (not b!627488))

(assert (not b!627464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

