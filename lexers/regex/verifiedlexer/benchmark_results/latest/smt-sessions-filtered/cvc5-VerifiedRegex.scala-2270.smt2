; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110928 () Bool)

(assert start!110928)

(assert (=> start!110928 true))

(declare-fun b!1257427 () Bool)

(declare-fun e!800355 () Bool)

(declare-datatypes ((List!12640 0))(
  ( (Nil!12574) (Cons!12574 (h!17975 (_ BitVec 16)) (t!115776 List!12640)) )
))
(declare-datatypes ((IArray!8253 0))(
  ( (IArray!8254 (innerList!4184 List!12640)) )
))
(declare-datatypes ((Conc!4124 0))(
  ( (Node!4124 (left!10872 Conc!4124) (right!11202 Conc!4124) (csize!8478 Int) (cheight!4335 Int)) (Leaf!6395 (xs!6835 IArray!8253) (csize!8479 Int)) (Empty!4124) )
))
(declare-datatypes ((BalanceConc!8188 0))(
  ( (BalanceConc!8189 (c!208777 Conc!4124)) )
))
(declare-fun x!244171 () BalanceConc!8188)

(declare-fun tp!370629 () Bool)

(declare-fun inv!16934 (Conc!4124) Bool)

(assert (=> b!1257427 (= e!800355 (and (inv!16934 (c!208777 x!244171)) tp!370629))))

(declare-datatypes ((KeywordValueInjection!122 0))(
  ( (KeywordValueInjection!123) )
))
(declare-fun thiss!4594 () KeywordValueInjection!122)

(declare-fun inst!902 () Bool)

(declare-fun inv!16935 (BalanceConc!8188) Bool)

(declare-fun list!4683 (BalanceConc!8188) List!12640)

(declare-datatypes ((TokenValue!2240 0))(
  ( (FloatLiteralValue!4480 (text!16125 List!12640)) (TokenValueExt!2239 (__x!8207 Int)) (Broken!11200 (value!70596 List!12640)) (Object!2305) (End!2240) (Def!2240) (Underscore!2240) (Match!2240) (Else!2240) (Error!2240) (Case!2240) (If!2240) (Extends!2240) (Abstract!2240) (Class!2240) (Val!2240) (DelimiterValue!4480 (del!2300 List!12640)) (KeywordValue!2246 (value!70597 List!12640)) (CommentValue!4480 (value!70598 List!12640)) (WhitespaceValue!4480 (value!70599 List!12640)) (IndentationValue!2240 (value!70600 List!12640)) (String!15457) (Int32!2240) (Broken!11201 (value!70601 List!12640)) (Boolean!2241) (Unit!18856) (OperatorValue!2243 (op!2300 List!12640)) (IdentifierValue!4480 (value!70602 List!12640)) (IdentifierValue!4481 (value!70603 List!12640)) (WhitespaceValue!4481 (value!70604 List!12640)) (True!4480) (False!4480) (Broken!11202 (value!70605 List!12640)) (Broken!11203 (value!70606 List!12640)) (True!4481) (RightBrace!2240) (RightBracket!2240) (Colon!2240) (Null!2240) (Comma!2240) (LeftBracket!2240) (False!4481) (LeftBrace!2240) (ImaginaryLiteralValue!2240 (text!16126 List!12640)) (StringLiteralValue!6720 (value!70607 List!12640)) (EOFValue!2240 (value!70608 List!12640)) (IdentValue!2240 (value!70609 List!12640)) (DelimiterValue!4481 (value!70610 List!12640)) (DedentValue!2240 (value!70611 List!12640)) (NewLineValue!2240 (value!70612 List!12640)) (IntegerValue!6720 (value!70613 (_ BitVec 32)) (text!16127 List!12640)) (IntegerValue!6721 (value!70614 Int) (text!16128 List!12640)) (Times!2240) (Or!2240) (Equal!2240) (Minus!2240) (Broken!11204 (value!70615 List!12640)) (And!2240) (Div!2240) (LessEqual!2240) (Mod!2240) (Concat!5714) (Not!2240) (Plus!2240) (SpaceValue!2240 (value!70616 List!12640)) (IntegerValue!6722 (value!70617 Int) (text!16129 List!12640)) (StringLiteralValue!6721 (text!16130 List!12640)) (FloatLiteralValue!4481 (text!16131 List!12640)) (BytesLiteralValue!2240 (value!70618 List!12640)) (CommentValue!4481 (value!70619 List!12640)) (StringLiteralValue!6722 (value!70620 List!12640)) (ErrorTokenValue!2240 (msg!2301 List!12640)) )
))
(declare-fun toCharacters!20 (KeywordValueInjection!122 TokenValue!2240) BalanceConc!8188)

(declare-fun toValue!27 (KeywordValueInjection!122 BalanceConc!8188) TokenValue!2240)

(assert (=> start!110928 (= inst!902 (=> (and (inv!16935 x!244171) e!800355) (= (list!4683 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171))) (list!4683 x!244171))))))

(assert (= start!110928 b!1257427))

(declare-fun m!1415583 () Bool)

(assert (=> b!1257427 m!1415583))

(declare-fun m!1415585 () Bool)

(assert (=> start!110928 m!1415585))

(declare-fun m!1415587 () Bool)

(assert (=> start!110928 m!1415587))

(declare-fun m!1415589 () Bool)

(assert (=> start!110928 m!1415589))

(assert (=> start!110928 m!1415585))

(assert (=> start!110928 m!1415587))

(declare-fun m!1415591 () Bool)

(assert (=> start!110928 m!1415591))

(declare-fun m!1415593 () Bool)

(assert (=> start!110928 m!1415593))

(declare-fun bs!290405 () Bool)

(declare-fun neg-inst!902 () Bool)

(declare-fun s!183481 () Bool)

(assert (= bs!290405 (and neg-inst!902 s!183481)))

(assert (=> bs!290405 (=> true (= (list!4683 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171))) (list!4683 x!244171)))))

(assert (=> m!1415585 m!1415587))

(assert (=> m!1415585 m!1415589))

(assert (=> m!1415585 m!1415591))

(assert (=> m!1415585 s!183481))

(assert (=> m!1415591 s!183481))

(declare-fun bs!290406 () Bool)

(assert (= bs!290406 (and neg-inst!902 start!110928)))

(assert (=> bs!290406 (= true inst!902)))

(declare-fun lambda!49557 () Int)

(declare-fun Forall!473 (Int) Bool)

(assert (=> start!110928 (= (Forall!473 lambda!49557) inst!902)))

(assert (=> start!110928 (not (Forall!473 lambda!49557))))

(assert (=> start!110928 true))

(assert (= neg-inst!902 inst!902))

(declare-fun m!1415595 () Bool)

(assert (=> start!110928 m!1415595))

(assert (=> start!110928 m!1415595))

(push 1)

(assert (not b!1257427))

(assert (not start!110928))

(assert (not bs!290405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355333 () Bool)

(declare-fun list!4686 (Conc!4124) List!12640)

(assert (=> d!355333 (= (list!4683 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171))) (list!4686 (c!208777 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171)))))))

(declare-fun bs!290410 () Bool)

(assert (= bs!290410 d!355333))

(declare-fun m!1415613 () Bool)

(assert (=> bs!290410 m!1415613))

(assert (=> bs!290405 d!355333))

(declare-fun d!355335 () Bool)

(declare-fun c!208786 () Bool)

(assert (=> d!355335 (= c!208786 (is-KeywordValue!2246 (toValue!27 thiss!4594 x!244171)))))

(declare-fun e!800364 () BalanceConc!8188)

(assert (=> d!355335 (= (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171)) e!800364)))

(declare-fun b!1257443 () Bool)

(declare-fun seqFromList!1579 (List!12640) BalanceConc!8188)

(assert (=> b!1257443 (= e!800364 (seqFromList!1579 (value!70597 (toValue!27 thiss!4594 x!244171))))))

(declare-fun b!1257444 () Bool)

(assert (=> b!1257444 (= e!800364 (BalanceConc!8189 Empty!4124))))

(assert (= (and d!355335 c!208786) b!1257443))

(assert (= (and d!355335 (not c!208786)) b!1257444))

(declare-fun m!1415617 () Bool)

(assert (=> b!1257443 m!1415617))

(assert (=> bs!290405 d!355335))

(declare-fun d!355339 () Bool)

(declare-fun efficientList!169 (BalanceConc!8188) List!12640)

(assert (=> d!355339 (= (toValue!27 thiss!4594 x!244171) (KeywordValue!2246 (efficientList!169 x!244171)))))

(declare-fun bs!290413 () Bool)

(assert (= bs!290413 d!355339))

(declare-fun m!1415623 () Bool)

(assert (=> bs!290413 m!1415623))

(assert (=> bs!290405 d!355339))

(declare-fun d!355343 () Bool)

(assert (=> d!355343 (= (list!4683 x!244171) (list!4686 (c!208777 x!244171)))))

(declare-fun bs!290414 () Bool)

(assert (= bs!290414 d!355343))

(declare-fun m!1415625 () Bool)

(assert (=> bs!290414 m!1415625))

(assert (=> bs!290405 d!355343))

(push 1)

(assert (not b!1257443))

(assert (not d!355343))

(assert (not b!1257427))

(assert (not d!355333))

(assert (not d!355339))

(assert (not start!110928))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1257471 () Bool)

(declare-fun e!800378 () List!12640)

(declare-fun list!4688 (IArray!8253) List!12640)

(assert (=> b!1257471 (= e!800378 (list!4688 (xs!6835 (c!208777 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171))))))))

(declare-fun b!1257470 () Bool)

(declare-fun e!800377 () List!12640)

(assert (=> b!1257470 (= e!800377 e!800378)))

(declare-fun c!208800 () Bool)

(assert (=> b!1257470 (= c!208800 (is-Leaf!6395 (c!208777 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171)))))))

(declare-fun b!1257469 () Bool)

(assert (=> b!1257469 (= e!800377 Nil!12574)))

(declare-fun d!355351 () Bool)

(declare-fun c!208799 () Bool)

(assert (=> d!355351 (= c!208799 (is-Empty!4124 (c!208777 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171)))))))

(assert (=> d!355351 (= (list!4686 (c!208777 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171)))) e!800377)))

(declare-fun b!1257472 () Bool)

(declare-fun ++!3213 (List!12640 List!12640) List!12640)

(assert (=> b!1257472 (= e!800378 (++!3213 (list!4686 (left!10872 (c!208777 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171))))) (list!4686 (right!11202 (c!208777 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244171)))))))))

(assert (= (and d!355351 c!208799) b!1257469))

(assert (= (and d!355351 (not c!208799)) b!1257470))

(assert (= (and b!1257470 c!208800) b!1257471))

(assert (= (and b!1257470 (not c!208800)) b!1257472))

(declare-fun m!1415647 () Bool)

(assert (=> b!1257471 m!1415647))

(declare-fun m!1415649 () Bool)

(assert (=> b!1257472 m!1415649))

(declare-fun m!1415651 () Bool)

(assert (=> b!1257472 m!1415651))

(assert (=> b!1257472 m!1415649))

(assert (=> b!1257472 m!1415651))

(declare-fun m!1415653 () Bool)

(assert (=> b!1257472 m!1415653))

(assert (=> d!355333 d!355351))

(declare-fun b!1257475 () Bool)

(declare-fun e!800380 () List!12640)

(assert (=> b!1257475 (= e!800380 (list!4688 (xs!6835 (c!208777 x!244171))))))

(declare-fun b!1257474 () Bool)

(declare-fun e!800379 () List!12640)

(assert (=> b!1257474 (= e!800379 e!800380)))

(declare-fun c!208802 () Bool)

(assert (=> b!1257474 (= c!208802 (is-Leaf!6395 (c!208777 x!244171)))))

(declare-fun b!1257473 () Bool)

(assert (=> b!1257473 (= e!800379 Nil!12574)))

(declare-fun d!355353 () Bool)

(declare-fun c!208801 () Bool)

(assert (=> d!355353 (= c!208801 (is-Empty!4124 (c!208777 x!244171)))))

(assert (=> d!355353 (= (list!4686 (c!208777 x!244171)) e!800379)))

(declare-fun b!1257476 () Bool)

(assert (=> b!1257476 (= e!800380 (++!3213 (list!4686 (left!10872 (c!208777 x!244171))) (list!4686 (right!11202 (c!208777 x!244171)))))))

(assert (= (and d!355353 c!208801) b!1257473))

(assert (= (and d!355353 (not c!208801)) b!1257474))

(assert (= (and b!1257474 c!208802) b!1257475))

(assert (= (and b!1257474 (not c!208802)) b!1257476))

(declare-fun m!1415655 () Bool)

(assert (=> b!1257475 m!1415655))

(declare-fun m!1415657 () Bool)

(assert (=> b!1257476 m!1415657))

(declare-fun m!1415659 () Bool)

(assert (=> b!1257476 m!1415659))

(assert (=> b!1257476 m!1415657))

(assert (=> b!1257476 m!1415659))

(declare-fun m!1415661 () Bool)

(assert (=> b!1257476 m!1415661))

(assert (=> d!355343 d!355353))

(declare-fun d!355355 () Bool)

(declare-fun lt!420916 () List!12640)

(assert (=> d!355355 (= lt!420916 (list!4683 x!244171))))

(declare-fun efficientList!171 (Conc!4124 List!12640) List!12640)

(declare-fun efficientList$default$2!58 (Conc!4124) List!12640)

(assert (=> d!355355 (= lt!420916 (efficientList!171 (c!208777 x!244171) (efficientList$default$2!58 (c!208777 x!244171))))))

(assert (=> d!355355 (= (efficientList!169 x!244171) lt!420916)))

(declare-fun bs!290416 () Bool)

(assert (= bs!290416 d!355355))

(assert (=> bs!290416 m!1415591))

(declare-fun m!1415663 () Bool)

(assert (=> bs!290416 m!1415663))

(assert (=> bs!290416 m!1415663))

(declare-fun m!1415665 () Bool)

(assert (=> bs!290416 m!1415665))

(assert (=> d!355339 d!355355))

(push 1)

(assert (not b!1257476))

(assert (not b!1257472))

(assert (not b!1257475))

(assert (not b!1257443))

(assert (not start!110928))

(assert (not b!1257427))

(assert (not d!355355))

(assert (not b!1257471))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355365 () Bool)

(declare-fun c!208811 () Bool)

(assert (=> d!355365 (= c!208811 (is-Node!4124 (c!208777 x!244171)))))

(declare-fun e!800391 () Bool)

(assert (=> d!355365 (= (inv!16934 (c!208777 x!244171)) e!800391)))

(declare-fun b!1257495 () Bool)

(declare-fun inv!16938 (Conc!4124) Bool)

(assert (=> b!1257495 (= e!800391 (inv!16938 (c!208777 x!244171)))))

(declare-fun b!1257496 () Bool)

(declare-fun e!800392 () Bool)

(assert (=> b!1257496 (= e!800391 e!800392)))

(declare-fun res!556713 () Bool)

(assert (=> b!1257496 (= res!556713 (not (is-Leaf!6395 (c!208777 x!244171))))))

(assert (=> b!1257496 (=> res!556713 e!800392)))

(declare-fun b!1257497 () Bool)

(declare-fun inv!16939 (Conc!4124) Bool)

(assert (=> b!1257497 (= e!800392 (inv!16939 (c!208777 x!244171)))))

(assert (= (and d!355365 c!208811) b!1257495))

(assert (= (and d!355365 (not c!208811)) b!1257496))

(assert (= (and b!1257496 (not res!556713)) b!1257497))

(declare-fun m!1415673 () Bool)

(assert (=> b!1257495 m!1415673))

(declare-fun m!1415675 () Bool)

(assert (=> b!1257497 m!1415675))

(assert (=> b!1257427 d!355365))

(declare-fun d!355367 () Bool)

(declare-fun isBalanced!1204 (Conc!4124) Bool)

(assert (=> d!355367 (= (inv!16935 x!244171) (isBalanced!1204 (c!208777 x!244171)))))

(declare-fun bs!290420 () Bool)

(assert (= bs!290420 d!355367))

(declare-fun m!1415677 () Bool)

(assert (=> bs!290420 m!1415677))

(assert (=> start!110928 d!355367))

(assert (=> start!110928 d!355339))

(assert (=> start!110928 d!355333))

(assert (=> start!110928 d!355335))

(declare-fun d!355369 () Bool)

(declare-fun choose!7888 (Int) Bool)

(assert (=> d!355369 (= (Forall!473 lambda!49557) (choose!7888 lambda!49557))))

(declare-fun bs!290421 () Bool)

(assert (= bs!290421 d!355369))

(declare-fun m!1415679 () Bool)

(assert (=> bs!290421 m!1415679))

(assert (=> start!110928 d!355369))

(assert (=> start!110928 d!355343))

(declare-fun d!355371 () Bool)

(declare-fun fromListB!700 (List!12640) BalanceConc!8188)

(assert (=> d!355371 (= (seqFromList!1579 (value!70597 (toValue!27 thiss!4594 x!244171))) (fromListB!700 (value!70597 (toValue!27 thiss!4594 x!244171))))))

(declare-fun bs!290422 () Bool)

(assert (= bs!290422 d!355371))

(declare-fun m!1415699 () Bool)

(assert (=> bs!290422 m!1415699))

(assert (=> b!1257443 d!355371))

(assert (=> d!355355 d!355343))

(declare-fun b!1257531 () Bool)

(declare-fun e!800414 () List!12640)

(declare-fun e!800413 () List!12640)

(assert (=> b!1257531 (= e!800414 e!800413)))

(declare-fun c!208824 () Bool)

(assert (=> b!1257531 (= c!208824 (is-Leaf!6395 (c!208777 x!244171)))))

(declare-fun d!355375 () Bool)

(declare-fun lt!420943 () List!12640)

(assert (=> d!355375 (= lt!420943 (++!3213 (list!4686 (c!208777 x!244171)) (efficientList$default$2!58 (c!208777 x!244171))))))

(assert (=> d!355375 (= lt!420943 e!800414)))

(declare-fun c!208826 () Bool)

(assert (=> d!355375 (= c!208826 (is-Empty!4124 (c!208777 x!244171)))))

(assert (=> d!355375 (= (efficientList!171 (c!208777 x!244171) (efficientList$default$2!58 (c!208777 x!244171))) lt!420943)))

(declare-fun b!1257532 () Bool)

(declare-datatypes ((Unit!18860 0))(
  ( (Unit!18861) )
))
(declare-fun lt!420946 () Unit!18860)

(declare-fun lt!420944 () Unit!18860)

(assert (=> b!1257532 (= lt!420946 lt!420944)))

(declare-fun lt!420945 () List!12640)

(declare-fun lt!420942 () List!12640)

(declare-fun call!88271 () List!12640)

(assert (=> b!1257532 (= (++!3213 call!88271 (efficientList$default$2!58 (c!208777 x!244171))) (++!3213 lt!420945 (++!3213 lt!420942 (efficientList$default$2!58 (c!208777 x!244171)))))))

(declare-fun lemmaConcatAssociativity!805 (List!12640 List!12640 List!12640) Unit!18860)

(assert (=> b!1257532 (= lt!420944 (lemmaConcatAssociativity!805 lt!420945 lt!420942 (efficientList$default$2!58 (c!208777 x!244171))))))

(assert (=> b!1257532 (= lt!420942 (list!4686 (right!11202 (c!208777 x!244171))))))

(assert (=> b!1257532 (= lt!420945 (list!4686 (left!10872 (c!208777 x!244171))))))

(assert (=> b!1257532 (= e!800413 (efficientList!171 (left!10872 (c!208777 x!244171)) (efficientList!171 (right!11202 (c!208777 x!244171)) (efficientList$default$2!58 (c!208777 x!244171)))))))

(declare-fun b!1257533 () Bool)

(declare-fun e!800412 () List!12640)

(assert (=> b!1257533 (= e!800412 lt!420945)))

(declare-fun b!1257534 () Bool)

(assert (=> b!1257534 (= e!800414 (efficientList$default$2!58 (c!208777 x!244171)))))

(declare-fun b!1257535 () Bool)

(declare-fun efficientList!173 (IArray!8253) List!12640)

(assert (=> b!1257535 (= e!800412 (efficientList!173 (xs!6835 (c!208777 x!244171))))))

(declare-fun bm!88266 () Bool)

(declare-fun c!208825 () Bool)

(assert (=> bm!88266 (= c!208825 c!208824)))

(assert (=> bm!88266 (= call!88271 (++!3213 e!800412 (ite c!208824 (efficientList$default$2!58 (c!208777 x!244171)) lt!420942)))))

(declare-fun b!1257536 () Bool)

(assert (=> b!1257536 (= e!800413 call!88271)))

(assert (= (and d!355375 c!208826) b!1257534))

(assert (= (and d!355375 (not c!208826)) b!1257531))

(assert (= (and b!1257531 c!208824) b!1257536))

(assert (= (and b!1257531 (not c!208824)) b!1257532))

(assert (= (or b!1257536 b!1257532) bm!88266))

(assert (= (and bm!88266 c!208825) b!1257535))

(assert (= (and bm!88266 (not c!208825)) b!1257533))

(assert (=> d!355375 m!1415625))

(assert (=> d!355375 m!1415625))

(assert (=> d!355375 m!1415663))

(declare-fun m!1415705 () Bool)

(assert (=> d!355375 m!1415705))

(assert (=> b!1257532 m!1415663))

(declare-fun m!1415709 () Bool)

(assert (=> b!1257532 m!1415709))

(assert (=> b!1257532 m!1415663))

(declare-fun m!1415711 () Bool)

(assert (=> b!1257532 m!1415711))

(assert (=> b!1257532 m!1415663))

(declare-fun m!1415715 () Bool)

(assert (=> b!1257532 m!1415715))

(assert (=> b!1257532 m!1415659))

(assert (=> b!1257532 m!1415715))

(declare-fun m!1415719 () Bool)

(assert (=> b!1257532 m!1415719))

(assert (=> b!1257532 m!1415657))

(declare-fun m!1415721 () Bool)

(assert (=> b!1257532 m!1415721))

(declare-fun m!1415723 () Bool)

(assert (=> b!1257532 m!1415723))

(assert (=> b!1257532 m!1415663))

(assert (=> b!1257532 m!1415721))

(declare-fun m!1415725 () Bool)

(assert (=> b!1257535 m!1415725))

(declare-fun m!1415727 () Bool)

(assert (=> bm!88266 m!1415727))

(assert (=> d!355355 d!355375))

(declare-fun d!355379 () Bool)

(assert (=> d!355379 (= (efficientList$default$2!58 (c!208777 x!244171)) Nil!12574)))

(assert (=> d!355355 d!355379))

(declare-fun tp!370644 () Bool)

(declare-fun b!1257545 () Bool)

(declare-fun tp!370643 () Bool)

(declare-fun e!800421 () Bool)

(assert (=> b!1257545 (= e!800421 (and (inv!16934 (left!10872 (c!208777 x!244171))) tp!370643 (inv!16934 (right!11202 (c!208777 x!244171))) tp!370644))))

(declare-fun b!1257546 () Bool)

(declare-fun inv!16940 (IArray!8253) Bool)

(assert (=> b!1257546 (= e!800421 (inv!16940 (xs!6835 (c!208777 x!244171))))))

(assert (=> b!1257427 (= tp!370629 (and (inv!16934 (c!208777 x!244171)) e!800421))))

(assert (= (and b!1257427 (is-Node!4124 (c!208777 x!244171))) b!1257545))

(assert (= (and b!1257427 (is-Leaf!6395 (c!208777 x!244171))) b!1257546))

(declare-fun m!1415729 () Bool)

(assert (=> b!1257545 m!1415729))

(declare-fun m!1415731 () Bool)

(assert (=> b!1257545 m!1415731))

(declare-fun m!1415733 () Bool)

(assert (=> b!1257546 m!1415733))

(assert (=> b!1257427 m!1415583))

(push 1)

(assert (not d!355367))

(assert (not b!1257545))

(assert (not b!1257476))

(assert (not b!1257532))

(assert (not b!1257472))

(assert (not b!1257495))

(assert (not d!355375))

(assert (not b!1257497))

(assert (not b!1257535))

(assert (not b!1257427))

(assert (not b!1257546))

(assert (not b!1257471))

(assert (not d!355371))

(assert (not b!1257475))

(assert (not bm!88266))

(assert (not d!355369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355381 () Bool)

(declare-fun e!800428 () Bool)

(assert (=> d!355381 e!800428))

(declare-fun res!556722 () Bool)

(assert (=> d!355381 (=> (not res!556722) (not e!800428))))

(declare-fun lt!420949 () List!12640)

(declare-fun content!1804 (List!12640) (Set (_ BitVec 16)))

(assert (=> d!355381 (= res!556722 (= (content!1804 lt!420949) (set.union (content!1804 (list!4686 (c!208777 x!244171))) (content!1804 (efficientList$default$2!58 (c!208777 x!244171))))))))

(declare-fun e!800427 () List!12640)

(assert (=> d!355381 (= lt!420949 e!800427)))

(declare-fun c!208829 () Bool)

(assert (=> d!355381 (= c!208829 (is-Nil!12574 (list!4686 (c!208777 x!244171))))))

(assert (=> d!355381 (= (++!3213 (list!4686 (c!208777 x!244171)) (efficientList$default$2!58 (c!208777 x!244171))) lt!420949)))

(declare-fun b!1257556 () Bool)

(assert (=> b!1257556 (= e!800427 (Cons!12574 (h!17975 (list!4686 (c!208777 x!244171))) (++!3213 (t!115776 (list!4686 (c!208777 x!244171))) (efficientList$default$2!58 (c!208777 x!244171)))))))

(declare-fun b!1257558 () Bool)

(assert (=> b!1257558 (= e!800428 (or (not (= (efficientList$default$2!58 (c!208777 x!244171)) Nil!12574)) (= lt!420949 (list!4686 (c!208777 x!244171)))))))

(declare-fun b!1257555 () Bool)

(assert (=> b!1257555 (= e!800427 (efficientList$default$2!58 (c!208777 x!244171)))))

(declare-fun b!1257557 () Bool)

(declare-fun res!556721 () Bool)

(assert (=> b!1257557 (=> (not res!556721) (not e!800428))))

(declare-fun size!9972 (List!12640) Int)

(assert (=> b!1257557 (= res!556721 (= (size!9972 lt!420949) (+ (size!9972 (list!4686 (c!208777 x!244171))) (size!9972 (efficientList$default$2!58 (c!208777 x!244171))))))))

(assert (= (and d!355381 c!208829) b!1257555))

(assert (= (and d!355381 (not c!208829)) b!1257556))

(assert (= (and d!355381 res!556722) b!1257557))

(assert (= (and b!1257557 res!556721) b!1257558))

(declare-fun m!1415735 () Bool)

(assert (=> d!355381 m!1415735))

(assert (=> d!355381 m!1415625))

(declare-fun m!1415737 () Bool)

(assert (=> d!355381 m!1415737))

(assert (=> d!355381 m!1415663))

(declare-fun m!1415739 () Bool)

(assert (=> d!355381 m!1415739))

(assert (=> b!1257556 m!1415663))

(declare-fun m!1415741 () Bool)

(assert (=> b!1257556 m!1415741))

(declare-fun m!1415743 () Bool)

(assert (=> b!1257557 m!1415743))

(assert (=> b!1257557 m!1415625))

(declare-fun m!1415745 () Bool)

(assert (=> b!1257557 m!1415745))

(assert (=> b!1257557 m!1415663))

(declare-fun m!1415747 () Bool)

(assert (=> b!1257557 m!1415747))

(assert (=> d!355375 d!355381))

(assert (=> d!355375 d!355353))

(declare-fun d!355385 () Bool)

(declare-fun e!800435 () Bool)

(assert (=> d!355385 e!800435))

(declare-fun res!556729 () Bool)

(assert (=> d!355385 (=> (not res!556729) (not e!800435))))

(declare-fun lt!420954 () BalanceConc!8188)

(assert (=> d!355385 (= res!556729 (= (list!4683 lt!420954) (value!70597 (toValue!27 thiss!4594 x!244171))))))

(declare-fun fromList!332 (List!12640) Conc!4124)

(assert (=> d!355385 (= lt!420954 (BalanceConc!8189 (fromList!332 (value!70597 (toValue!27 thiss!4594 x!244171)))))))

(assert (=> d!355385 (= (fromListB!700 (value!70597 (toValue!27 thiss!4594 x!244171))) lt!420954)))

(declare-fun b!1257569 () Bool)

(assert (=> b!1257569 (= e!800435 (isBalanced!1204 (fromList!332 (value!70597 (toValue!27 thiss!4594 x!244171)))))))

(assert (= (and d!355385 res!556729) b!1257569))

(declare-fun m!1415749 () Bool)

(assert (=> d!355385 m!1415749))

(declare-fun m!1415751 () Bool)

(assert (=> d!355385 m!1415751))

(assert (=> b!1257569 m!1415751))

(assert (=> b!1257569 m!1415751))

(declare-fun m!1415753 () Bool)

(assert (=> b!1257569 m!1415753))

(assert (=> d!355371 d!355385))

(push 1)

(assert (not d!355367))

(assert (not b!1257545))

(assert (not b!1257532))

(assert (not b!1257472))

(assert (not b!1257475))

(assert (not b!1257495))

(assert (not d!355385))

(assert (not b!1257497))

(assert (not b!1257427))

(assert (not b!1257546))

(assert (not b!1257471))

(assert (not d!355381))

(assert (not b!1257569))

(assert (not b!1257476))

(assert (not b!1257557))

(assert (not bm!88266))

(assert (not d!355369))

(assert (not b!1257535))

(assert (not b!1257556))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

