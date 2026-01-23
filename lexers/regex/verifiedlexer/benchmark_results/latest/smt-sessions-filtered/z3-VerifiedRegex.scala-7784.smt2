; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!408972 () Bool)

(assert start!408972)

(assert (=> start!408972 true))

(declare-fun b!4267318 () Bool)

(declare-fun e!2649523 () Bool)

(declare-datatypes ((List!47401 0))(
  ( (Nil!47277) (Cons!47277 (h!52697 (_ BitVec 16)) (t!353527 List!47401)) )
))
(declare-datatypes ((IArray!28523 0))(
  ( (IArray!28524 (innerList!14319 List!47401)) )
))
(declare-datatypes ((Conc!14259 0))(
  ( (Node!14259 (left!35067 Conc!14259) (right!35397 Conc!14259) (csize!28748 Int) (cheight!14470 Int)) (Leaf!22044 (xs!17565 IArray!28523) (csize!28749 Int)) (Empty!14259) )
))
(declare-datatypes ((BalanceConc!28028 0))(
  ( (BalanceConc!28029 (c!725567 Conc!14259)) )
))
(declare-fun x!738716 () BalanceConc!28028)

(declare-fun tp!1307612 () Bool)

(declare-fun inv!62239 (Conc!14259) Bool)

(assert (=> b!4267318 (= e!2649523 (and (inv!62239 (c!725567 x!738716)) tp!1307612))))

(declare-datatypes ((PrimitiveTypeValueInjection!6 0))(
  ( (PrimitiveTypeValueInjection!7) )
))
(declare-fun thiss!2386 () PrimitiveTypeValueInjection!6)

(declare-fun inst!1589 () Bool)

(declare-fun inv!62240 (BalanceConc!28028) Bool)

(declare-fun list!17092 (BalanceConc!28028) List!47401)

(declare-datatypes ((TokenValue!8232 0))(
  ( (FloatLiteralValue!16464 (text!58069 List!47401)) (TokenValueExt!8231 (__x!28678 Int)) (Broken!41160 (value!248624 List!47401)) (Object!8355) (End!8232) (Def!8232) (Underscore!8232) (Match!8232) (Else!8232) (Error!8232) (Case!8232) (If!8232) (Extends!8232) (Abstract!8232) (Class!8232) (Val!8232) (DelimiterValue!16464 (del!8292 List!47401)) (KeywordValue!8238 (value!248625 List!47401)) (CommentValue!16464 (value!248626 List!47401)) (WhitespaceValue!16464 (value!248627 List!47401)) (IndentationValue!8232 (value!248628 List!47401)) (String!55171) (Int32!8232) (Broken!41161 (value!248629 List!47401)) (Boolean!8233) (Unit!66166) (OperatorValue!8235 (op!8292 List!47401)) (IdentifierValue!16464 (value!248630 List!47401)) (IdentifierValue!16465 (value!248631 List!47401)) (WhitespaceValue!16465 (value!248632 List!47401)) (True!16464) (False!16464) (Broken!41162 (value!248633 List!47401)) (Broken!41163 (value!248634 List!47401)) (True!16465) (RightBrace!8232) (RightBracket!8232) (Colon!8232) (Null!8232) (Comma!8232) (LeftBracket!8232) (False!16465) (LeftBrace!8232) (ImaginaryLiteralValue!8232 (text!58070 List!47401)) (StringLiteralValue!24696 (value!248635 List!47401)) (EOFValue!8232 (value!248636 List!47401)) (IdentValue!8232 (value!248637 List!47401)) (DelimiterValue!16465 (value!248638 List!47401)) (DedentValue!8232 (value!248639 List!47401)) (NewLineValue!8232 (value!248640 List!47401)) (IntegerValue!24696 (value!248641 (_ BitVec 32)) (text!58071 List!47401)) (IntegerValue!24697 (value!248642 Int) (text!58072 List!47401)) (Times!8232) (Or!8232) (Equal!8232) (Minus!8232) (Broken!41164 (value!248643 List!47401)) (And!8232) (Div!8232) (LessEqual!8232) (Mod!8232) (Concat!21130) (Not!8232) (Plus!8232) (SpaceValue!8232 (value!248644 List!47401)) (IntegerValue!24698 (value!248645 Int) (text!58073 List!47401)) (StringLiteralValue!24697 (text!58074 List!47401)) (FloatLiteralValue!16465 (text!58075 List!47401)) (BytesLiteralValue!8232 (value!248646 List!47401)) (CommentValue!16465 (value!248647 List!47401)) (StringLiteralValue!24698 (value!248648 List!47401)) (ErrorTokenValue!8232 (msg!8293 List!47401)) )
))
(declare-fun toCharacters!8 (PrimitiveTypeValueInjection!6 TokenValue!8232) BalanceConc!28028)

(declare-fun toValue!15 (PrimitiveTypeValueInjection!6 BalanceConc!28028) TokenValue!8232)

(assert (=> start!408972 (= inst!1589 (=> (and (inv!62240 x!738716) e!2649523) (= (list!17092 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))) (list!17092 x!738716))))))

(assert (= start!408972 b!4267318))

(declare-fun m!4859147 () Bool)

(assert (=> b!4267318 m!4859147))

(declare-fun m!4859149 () Bool)

(assert (=> start!408972 m!4859149))

(declare-fun m!4859151 () Bool)

(assert (=> start!408972 m!4859151))

(declare-fun m!4859153 () Bool)

(assert (=> start!408972 m!4859153))

(declare-fun m!4859155 () Bool)

(assert (=> start!408972 m!4859155))

(declare-fun m!4859157 () Bool)

(assert (=> start!408972 m!4859157))

(assert (=> start!408972 m!4859149))

(assert (=> start!408972 m!4859151))

(declare-fun bs!599626 () Bool)

(declare-fun neg-inst!1589 () Bool)

(declare-fun s!239246 () Bool)

(assert (= bs!599626 (and neg-inst!1589 s!239246)))

(assert (=> bs!599626 (=> true (= (list!17092 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))) (list!17092 x!738716)))))

(assert (=> m!4859149 m!4859151))

(assert (=> m!4859149 m!4859153))

(assert (=> m!4859149 m!4859157))

(assert (=> m!4859149 s!239246))

(assert (=> m!4859157 s!239246))

(declare-fun bs!599627 () Bool)

(assert (= bs!599627 (and neg-inst!1589 start!408972)))

(assert (=> bs!599627 (= true inst!1589)))

(declare-fun lambda!130419 () Int)

(declare-fun Forall!1614 (Int) Bool)

(assert (=> start!408972 (= (Forall!1614 lambda!130419) inst!1589)))

(assert (=> start!408972 (not (Forall!1614 lambda!130419))))

(assert (=> start!408972 true))

(assert (= neg-inst!1589 inst!1589))

(declare-fun m!4859159 () Bool)

(assert (=> start!408972 m!4859159))

(assert (=> start!408972 m!4859159))

(check-sat (not b!4267318) (not start!408972) (not bs!599626))
(check-sat)
(get-model)

(declare-fun d!1257939 () Bool)

(declare-fun list!17094 (Conc!14259) List!47401)

(assert (=> d!1257939 (= (list!17092 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))) (list!17094 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(declare-fun bs!599629 () Bool)

(assert (= bs!599629 d!1257939))

(declare-fun m!4859173 () Bool)

(assert (=> bs!599629 m!4859173))

(assert (=> bs!599626 d!1257939))

(declare-fun b!4267369 () Bool)

(declare-fun e!2649553 () BalanceConc!28028)

(declare-fun stringInt32Conc!0 () BalanceConc!28028)

(assert (=> b!4267369 (= e!2649553 stringInt32Conc!0)))

(declare-fun b!4267371 () Bool)

(declare-fun e!2649550 () BalanceConc!28028)

(declare-fun e!2649552 () BalanceConc!28028)

(assert (=> b!4267371 (= e!2649550 e!2649552)))

(declare-fun c!725596 () Bool)

(get-info :version)

(assert (=> b!4267371 (= c!725596 ((_ is String!55171) (toValue!15 thiss!2386 x!738716)))))

(declare-fun b!4267372 () Bool)

(declare-fun c!725599 () Bool)

(assert (=> b!4267372 (= c!725599 ((_ is Broken!41161) (toValue!15 thiss!2386 x!738716)))))

(declare-fun e!2649549 () BalanceConc!28028)

(assert (=> b!4267372 (= e!2649552 e!2649549)))

(declare-fun b!4267373 () Bool)

(declare-fun seqFromList!5852 (List!47401) BalanceConc!28028)

(assert (=> b!4267373 (= e!2649549 (seqFromList!5852 (value!248629 (toValue!15 thiss!2386 x!738716))))))

(declare-fun b!4267374 () Bool)

(declare-fun e!2649551 () BalanceConc!28028)

(assert (=> b!4267374 (= e!2649553 e!2649551)))

(declare-fun c!725597 () Bool)

(assert (=> b!4267374 (= c!725597 ((_ is Unit!66166) (toValue!15 thiss!2386 x!738716)))))

(declare-fun b!4267375 () Bool)

(assert (=> b!4267375 (= e!2649549 (BalanceConc!28029 Empty!14259))))

(declare-fun b!4267376 () Bool)

(declare-fun stringBooleanConc!0 () BalanceConc!28028)

(assert (=> b!4267376 (= e!2649550 stringBooleanConc!0)))

(declare-fun b!4267377 () Bool)

(declare-fun stringStringConc!0 () BalanceConc!28028)

(assert (=> b!4267377 (= e!2649552 stringStringConc!0)))

(declare-fun b!4267378 () Bool)

(declare-fun stringUnitConc!0 () BalanceConc!28028)

(assert (=> b!4267378 (= e!2649551 stringUnitConc!0)))

(declare-fun d!1257943 () Bool)

(declare-fun c!725598 () Bool)

(assert (=> d!1257943 (= c!725598 ((_ is Int32!8232) (toValue!15 thiss!2386 x!738716)))))

(assert (=> d!1257943 (= (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)) e!2649553)))

(declare-fun b!4267370 () Bool)

(declare-fun c!725595 () Bool)

(assert (=> b!4267370 (= c!725595 ((_ is Boolean!8233) (toValue!15 thiss!2386 x!738716)))))

(assert (=> b!4267370 (= e!2649551 e!2649550)))

(assert (= (and d!1257943 c!725598) b!4267369))

(assert (= (and d!1257943 (not c!725598)) b!4267374))

(assert (= (and b!4267374 c!725597) b!4267378))

(assert (= (and b!4267374 (not c!725597)) b!4267370))

(assert (= (and b!4267370 c!725595) b!4267376))

(assert (= (and b!4267370 (not c!725595)) b!4267371))

(assert (= (and b!4267371 c!725596) b!4267377))

(assert (= (and b!4267371 (not c!725596)) b!4267372))

(assert (= (and b!4267372 c!725599) b!4267373))

(assert (= (and b!4267372 (not c!725599)) b!4267375))

(declare-fun m!4859179 () Bool)

(assert (=> b!4267378 m!4859179))

(declare-fun m!4859181 () Bool)

(assert (=> b!4267369 m!4859181))

(declare-fun m!4859183 () Bool)

(assert (=> b!4267373 m!4859183))

(declare-fun m!4859185 () Bool)

(assert (=> b!4267377 m!4859185))

(declare-fun m!4859187 () Bool)

(assert (=> b!4267376 m!4859187))

(assert (=> bs!599626 d!1257943))

(declare-fun d!1257947 () Bool)

(declare-fun lt!1512025 () List!47401)

(declare-fun efficientList!436 (BalanceConc!28028) List!47401)

(assert (=> d!1257947 (= lt!1512025 (efficientList!436 x!738716))))

(assert (=> d!1257947 (= (toValue!15 thiss!2386 x!738716) (ite (= lt!1512025 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))) Int32!8232 (ite (= lt!1512025 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))) Unit!66166 (ite (= lt!1512025 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))) Boolean!8233 (ite (= lt!1512025 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277))))))) String!55171 (Broken!41161 lt!1512025))))))))

(declare-fun bs!599632 () Bool)

(assert (= bs!599632 d!1257947))

(declare-fun m!4859189 () Bool)

(assert (=> bs!599632 m!4859189))

(assert (=> bs!599626 d!1257947))

(declare-fun d!1257949 () Bool)

(assert (=> d!1257949 (= (list!17092 x!738716) (list!17094 (c!725567 x!738716)))))

(declare-fun bs!599633 () Bool)

(assert (= bs!599633 d!1257949))

(declare-fun m!4859191 () Bool)

(assert (=> bs!599633 m!4859191))

(assert (=> bs!599626 d!1257949))

(check-sat (not b!4267373) (not d!1257947) (not start!408972) (not b!4267378) (not b!4267318) (not b!4267369) (not d!1257949) (not d!1257939) (not b!4267377) (not b!4267376))
(check-sat)
(get-model)

(declare-fun b!4267404 () Bool)

(declare-fun e!2649566 () List!47401)

(declare-fun e!2649567 () List!47401)

(assert (=> b!4267404 (= e!2649566 e!2649567)))

(declare-fun c!725613 () Bool)

(assert (=> b!4267404 (= c!725613 ((_ is Leaf!22044) (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(declare-fun b!4267403 () Bool)

(assert (=> b!4267403 (= e!2649566 Nil!47277)))

(declare-fun b!4267405 () Bool)

(declare-fun list!17096 (IArray!28523) List!47401)

(assert (=> b!4267405 (= e!2649567 (list!17096 (xs!17565 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun b!4267406 () Bool)

(declare-fun ++!12055 (List!47401 List!47401) List!47401)

(assert (=> b!4267406 (= e!2649567 (++!12055 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun d!1257957 () Bool)

(declare-fun c!725612 () Bool)

(assert (=> d!1257957 (= c!725612 ((_ is Empty!14259) (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(assert (=> d!1257957 (= (list!17094 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))) e!2649566)))

(assert (= (and d!1257957 c!725612) b!4267403))

(assert (= (and d!1257957 (not c!725612)) b!4267404))

(assert (= (and b!4267404 c!725613) b!4267405))

(assert (= (and b!4267404 (not c!725613)) b!4267406))

(declare-fun m!4859213 () Bool)

(assert (=> b!4267405 m!4859213))

(declare-fun m!4859215 () Bool)

(assert (=> b!4267406 m!4859215))

(declare-fun m!4859217 () Bool)

(assert (=> b!4267406 m!4859217))

(assert (=> b!4267406 m!4859215))

(assert (=> b!4267406 m!4859217))

(declare-fun m!4859219 () Bool)

(assert (=> b!4267406 m!4859219))

(assert (=> d!1257939 d!1257957))

(declare-fun b!4267408 () Bool)

(declare-fun e!2649568 () List!47401)

(declare-fun e!2649569 () List!47401)

(assert (=> b!4267408 (= e!2649568 e!2649569)))

(declare-fun c!725615 () Bool)

(assert (=> b!4267408 (= c!725615 ((_ is Leaf!22044) (c!725567 x!738716)))))

(declare-fun b!4267407 () Bool)

(assert (=> b!4267407 (= e!2649568 Nil!47277)))

(declare-fun b!4267409 () Bool)

(assert (=> b!4267409 (= e!2649569 (list!17096 (xs!17565 (c!725567 x!738716))))))

(declare-fun b!4267410 () Bool)

(assert (=> b!4267410 (= e!2649569 (++!12055 (list!17094 (left!35067 (c!725567 x!738716))) (list!17094 (right!35397 (c!725567 x!738716)))))))

(declare-fun d!1257959 () Bool)

(declare-fun c!725614 () Bool)

(assert (=> d!1257959 (= c!725614 ((_ is Empty!14259) (c!725567 x!738716)))))

(assert (=> d!1257959 (= (list!17094 (c!725567 x!738716)) e!2649568)))

(assert (= (and d!1257959 c!725614) b!4267407))

(assert (= (and d!1257959 (not c!725614)) b!4267408))

(assert (= (and b!4267408 c!725615) b!4267409))

(assert (= (and b!4267408 (not c!725615)) b!4267410))

(declare-fun m!4859221 () Bool)

(assert (=> b!4267409 m!4859221))

(declare-fun m!4859223 () Bool)

(assert (=> b!4267410 m!4859223))

(declare-fun m!4859225 () Bool)

(assert (=> b!4267410 m!4859225))

(assert (=> b!4267410 m!4859223))

(assert (=> b!4267410 m!4859225))

(declare-fun m!4859227 () Bool)

(assert (=> b!4267410 m!4859227))

(assert (=> d!1257949 d!1257959))

(declare-fun d!1257961 () Bool)

(declare-fun lt!1512031 () List!47401)

(assert (=> d!1257961 (= lt!1512031 (list!17092 x!738716))))

(declare-fun efficientList!438 (Conc!14259 List!47401) List!47401)

(declare-fun efficientList$default$2!152 (Conc!14259) List!47401)

(assert (=> d!1257961 (= lt!1512031 (efficientList!438 (c!725567 x!738716) (efficientList$default$2!152 (c!725567 x!738716))))))

(assert (=> d!1257961 (= (efficientList!436 x!738716) lt!1512031)))

(declare-fun bs!599635 () Bool)

(assert (= bs!599635 d!1257961))

(assert (=> bs!599635 m!4859157))

(declare-fun m!4859233 () Bool)

(assert (=> bs!599635 m!4859233))

(assert (=> bs!599635 m!4859233))

(declare-fun m!4859235 () Bool)

(assert (=> bs!599635 m!4859235))

(assert (=> d!1257947 d!1257961))

(check-sat (not b!4267373) (not b!4267410) (not start!408972) (not b!4267405) (not b!4267378) (not b!4267318) (not b!4267406) (not b!4267369) (not b!4267377) (not b!4267409) (not d!1257961) (not b!4267376))
(check-sat)
(get-model)

(declare-fun d!1257975 () Bool)

(declare-fun c!725630 () Bool)

(assert (=> d!1257975 (= c!725630 ((_ is Node!14259) (c!725567 x!738716)))))

(declare-fun e!2649595 () Bool)

(assert (=> d!1257975 (= (inv!62239 (c!725567 x!738716)) e!2649595)))

(declare-fun b!4267452 () Bool)

(declare-fun inv!62244 (Conc!14259) Bool)

(assert (=> b!4267452 (= e!2649595 (inv!62244 (c!725567 x!738716)))))

(declare-fun b!4267453 () Bool)

(declare-fun e!2649596 () Bool)

(assert (=> b!4267453 (= e!2649595 e!2649596)))

(declare-fun res!1753397 () Bool)

(assert (=> b!4267453 (= res!1753397 (not ((_ is Leaf!22044) (c!725567 x!738716))))))

(assert (=> b!4267453 (=> res!1753397 e!2649596)))

(declare-fun b!4267454 () Bool)

(declare-fun inv!62245 (Conc!14259) Bool)

(assert (=> b!4267454 (= e!2649596 (inv!62245 (c!725567 x!738716)))))

(assert (= (and d!1257975 c!725630) b!4267452))

(assert (= (and d!1257975 (not c!725630)) b!4267453))

(assert (= (and b!4267453 (not res!1753397)) b!4267454))

(declare-fun m!4859267 () Bool)

(assert (=> b!4267452 m!4859267))

(declare-fun m!4859269 () Bool)

(assert (=> b!4267454 m!4859269))

(assert (=> b!4267318 d!1257975))

(declare-fun d!1257977 () Bool)

(declare-fun isBalanced!3816 (Conc!14259) Bool)

(assert (=> d!1257977 (= (inv!62240 x!738716) (isBalanced!3816 (c!725567 x!738716)))))

(declare-fun bs!599639 () Bool)

(assert (= bs!599639 d!1257977))

(declare-fun m!4859271 () Bool)

(assert (=> bs!599639 m!4859271))

(assert (=> start!408972 d!1257977))

(assert (=> start!408972 d!1257949))

(assert (=> start!408972 d!1257939))

(declare-fun d!1257979 () Bool)

(declare-fun choose!26009 (Int) Bool)

(assert (=> d!1257979 (= (Forall!1614 lambda!130419) (choose!26009 lambda!130419))))

(declare-fun bs!599640 () Bool)

(assert (= bs!599640 d!1257979))

(declare-fun m!4859273 () Bool)

(assert (=> bs!599640 m!4859273))

(assert (=> start!408972 d!1257979))

(assert (=> start!408972 d!1257947))

(assert (=> start!408972 d!1257943))

(declare-fun d!1257981 () Bool)

(assert (=> d!1257981 (= stringInt32Conc!0 (seqFromList!5852 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))

(declare-fun bs!599641 () Bool)

(assert (= bs!599641 d!1257981))

(declare-fun m!4859275 () Bool)

(assert (=> bs!599641 m!4859275))

(assert (=> b!4267369 d!1257981))

(assert (=> d!1257961 d!1257949))

(declare-fun bm!294071 () Bool)

(declare-fun c!725639 () Bool)

(declare-fun c!725637 () Bool)

(assert (=> bm!294071 (= c!725639 c!725637)))

(declare-fun call!294076 () List!47401)

(declare-fun e!2649605 () List!47401)

(assert (=> bm!294071 (= call!294076 (++!12055 e!2649605 (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun b!4267467 () Bool)

(declare-fun efficientList!440 (IArray!28523) List!47401)

(assert (=> b!4267467 (= e!2649605 (efficientList!440 (xs!17565 (c!725567 x!738716))))))

(declare-fun d!1257983 () Bool)

(declare-fun lt!1512058 () List!47401)

(assert (=> d!1257983 (= lt!1512058 (++!12055 (list!17094 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun e!2649604 () List!47401)

(assert (=> d!1257983 (= lt!1512058 e!2649604)))

(declare-fun c!725638 () Bool)

(assert (=> d!1257983 (= c!725638 ((_ is Empty!14259) (c!725567 x!738716)))))

(assert (=> d!1257983 (= (efficientList!438 (c!725567 x!738716) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512058)))

(declare-fun b!4267468 () Bool)

(declare-fun lt!1512059 () List!47401)

(assert (=> b!4267468 (= e!2649605 lt!1512059)))

(declare-fun b!4267469 () Bool)

(declare-fun e!2649603 () List!47401)

(assert (=> b!4267469 (= e!2649603 call!294076)))

(declare-fun b!4267470 () Bool)

(assert (=> b!4267470 (= e!2649604 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267471 () Bool)

(declare-datatypes ((Unit!66169 0))(
  ( (Unit!66170) )
))
(declare-fun lt!1512060 () Unit!66169)

(declare-fun lt!1512057 () Unit!66169)

(assert (=> b!4267471 (= lt!1512060 lt!1512057)))

(declare-fun lt!1512061 () List!47401)

(assert (=> b!4267471 (= (++!12055 (++!12055 lt!1512061 lt!1512059) (efficientList$default$2!152 (c!725567 x!738716))) (++!12055 lt!1512061 call!294076))))

(declare-fun lemmaConcatAssociativity!2698 (List!47401 List!47401 List!47401) Unit!66169)

(assert (=> b!4267471 (= lt!1512057 (lemmaConcatAssociativity!2698 lt!1512061 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))))))

(assert (=> b!4267471 (= lt!1512059 (list!17094 (right!35397 (c!725567 x!738716))))))

(assert (=> b!4267471 (= lt!1512061 (list!17094 (left!35067 (c!725567 x!738716))))))

(assert (=> b!4267471 (= e!2649603 (efficientList!438 (left!35067 (c!725567 x!738716)) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun b!4267472 () Bool)

(assert (=> b!4267472 (= e!2649604 e!2649603)))

(assert (=> b!4267472 (= c!725637 ((_ is Leaf!22044) (c!725567 x!738716)))))

(assert (= (and d!1257983 c!725638) b!4267470))

(assert (= (and d!1257983 (not c!725638)) b!4267472))

(assert (= (and b!4267472 c!725637) b!4267469))

(assert (= (and b!4267472 (not c!725637)) b!4267471))

(assert (= (or b!4267469 b!4267471) bm!294071))

(assert (= (and bm!294071 c!725639) b!4267467))

(assert (= (and bm!294071 (not c!725639)) b!4267468))

(assert (=> bm!294071 m!4859233))

(declare-fun m!4859281 () Bool)

(assert (=> bm!294071 m!4859281))

(declare-fun m!4859283 () Bool)

(assert (=> b!4267467 m!4859283))

(assert (=> d!1257983 m!4859191))

(assert (=> d!1257983 m!4859191))

(assert (=> d!1257983 m!4859233))

(declare-fun m!4859285 () Bool)

(assert (=> d!1257983 m!4859285))

(declare-fun m!4859287 () Bool)

(assert (=> b!4267471 m!4859287))

(declare-fun m!4859289 () Bool)

(assert (=> b!4267471 m!4859289))

(declare-fun m!4859291 () Bool)

(assert (=> b!4267471 m!4859291))

(assert (=> b!4267471 m!4859223))

(assert (=> b!4267471 m!4859291))

(assert (=> b!4267471 m!4859233))

(declare-fun m!4859293 () Bool)

(assert (=> b!4267471 m!4859293))

(declare-fun m!4859295 () Bool)

(assert (=> b!4267471 m!4859295))

(assert (=> b!4267471 m!4859233))

(assert (=> b!4267471 m!4859287))

(assert (=> b!4267471 m!4859225))

(assert (=> b!4267471 m!4859233))

(declare-fun m!4859297 () Bool)

(assert (=> b!4267471 m!4859297))

(assert (=> d!1257961 d!1257983))

(declare-fun d!1257991 () Bool)

(assert (=> d!1257991 (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)))

(assert (=> d!1257961 d!1257991))

(declare-fun e!2649616 () Bool)

(declare-fun b!4267491 () Bool)

(declare-fun tp!1307623 () Bool)

(declare-fun tp!1307624 () Bool)

(assert (=> b!4267491 (= e!2649616 (and (inv!62239 (left!35067 (c!725567 x!738716))) tp!1307623 (inv!62239 (right!35397 (c!725567 x!738716))) tp!1307624))))

(declare-fun b!4267492 () Bool)

(declare-fun inv!62246 (IArray!28523) Bool)

(assert (=> b!4267492 (= e!2649616 (inv!62246 (xs!17565 (c!725567 x!738716))))))

(assert (=> b!4267318 (= tp!1307612 (and (inv!62239 (c!725567 x!738716)) e!2649616))))

(assert (= (and b!4267318 ((_ is Node!14259) (c!725567 x!738716))) b!4267491))

(assert (= (and b!4267318 ((_ is Leaf!22044) (c!725567 x!738716))) b!4267492))

(declare-fun m!4859315 () Bool)

(assert (=> b!4267491 m!4859315))

(declare-fun m!4859317 () Bool)

(assert (=> b!4267491 m!4859317))

(declare-fun m!4859319 () Bool)

(assert (=> b!4267492 m!4859319))

(assert (=> b!4267318 m!4859147))

(check-sat (not b!4267467) (not d!1257979) (not b!4267410) (not b!4267491) (not b!4267405) (not b!4267378) (not b!4267318) (not d!1257981) (not bm!294071) (not b!4267454) (not b!4267373) (not b!4267471) (not d!1257977) (not b!4267406) (not d!1257983) (not b!4267377) (not b!4267409) (not b!4267376) (not b!4267452) (not b!4267492))
(check-sat)
(get-model)

(declare-fun d!1258025 () Bool)

(assert (=> d!1258025 (= stringUnitConc!0 (seqFromList!5852 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))

(declare-fun bs!599649 () Bool)

(assert (= bs!599649 d!1258025))

(declare-fun m!4859411 () Bool)

(assert (=> bs!599649 m!4859411))

(assert (=> b!4267378 d!1258025))

(declare-fun d!1258027 () Bool)

(assert (=> d!1258027 (= stringBooleanConc!0 (seqFromList!5852 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))))))

(declare-fun bs!599650 () Bool)

(assert (= bs!599650 d!1258027))

(declare-fun m!4859413 () Bool)

(assert (=> bs!599650 m!4859413))

(assert (=> b!4267376 d!1258027))

(declare-fun d!1258029 () Bool)

(assert (=> d!1258029 (= stringStringConc!0 (seqFromList!5852 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277))))))))))

(declare-fun bs!599651 () Bool)

(assert (= bs!599651 d!1258029))

(declare-fun m!4859415 () Bool)

(assert (=> bs!599651 m!4859415))

(assert (=> b!4267377 d!1258029))

(declare-fun d!1258031 () Bool)

(declare-fun fromListB!2660 (List!47401) BalanceConc!28028)

(assert (=> d!1258031 (= (seqFromList!5852 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))) (fromListB!2660 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))

(declare-fun bs!599652 () Bool)

(assert (= bs!599652 d!1258031))

(declare-fun m!4859417 () Bool)

(assert (=> bs!599652 m!4859417))

(assert (=> d!1257981 d!1258031))

(declare-fun d!1258033 () Bool)

(assert (=> d!1258033 (= (seqFromList!5852 (value!248629 (toValue!15 thiss!2386 x!738716))) (fromListB!2660 (value!248629 (toValue!15 thiss!2386 x!738716))))))

(declare-fun bs!599653 () Bool)

(assert (= bs!599653 d!1258033))

(declare-fun m!4859419 () Bool)

(assert (=> bs!599653 m!4859419))

(assert (=> b!4267373 d!1258033))

(declare-fun b!4267538 () Bool)

(declare-fun e!2649642 () List!47401)

(assert (=> b!4267538 (= e!2649642 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267540 () Bool)

(declare-fun res!1753416 () Bool)

(declare-fun e!2649643 () Bool)

(assert (=> b!4267540 (=> (not res!1753416) (not e!2649643))))

(declare-fun lt!1512072 () List!47401)

(declare-fun size!34629 (List!47401) Int)

(assert (=> b!4267540 (= res!1753416 (= (size!34629 lt!1512072) (+ (size!34629 (list!17094 (c!725567 x!738716))) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4267541 () Bool)

(assert (=> b!4267541 (= e!2649643 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512072 (list!17094 (c!725567 x!738716)))))))

(declare-fun d!1258035 () Bool)

(assert (=> d!1258035 e!2649643))

(declare-fun res!1753415 () Bool)

(assert (=> d!1258035 (=> (not res!1753415) (not e!2649643))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7472 (List!47401) (InoxSet (_ BitVec 16)))

(assert (=> d!1258035 (= res!1753415 (= (content!7472 lt!1512072) ((_ map or) (content!7472 (list!17094 (c!725567 x!738716))) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258035 (= lt!1512072 e!2649642)))

(declare-fun c!725661 () Bool)

(assert (=> d!1258035 (= c!725661 ((_ is Nil!47277) (list!17094 (c!725567 x!738716))))))

(assert (=> d!1258035 (= (++!12055 (list!17094 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512072)))

(declare-fun b!4267539 () Bool)

(assert (=> b!4267539 (= e!2649642 (Cons!47277 (h!52697 (list!17094 (c!725567 x!738716))) (++!12055 (t!353527 (list!17094 (c!725567 x!738716))) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258035 c!725661) b!4267538))

(assert (= (and d!1258035 (not c!725661)) b!4267539))

(assert (= (and d!1258035 res!1753415) b!4267540))

(assert (= (and b!4267540 res!1753416) b!4267541))

(declare-fun m!4859421 () Bool)

(assert (=> b!4267540 m!4859421))

(assert (=> b!4267540 m!4859191))

(declare-fun m!4859423 () Bool)

(assert (=> b!4267540 m!4859423))

(assert (=> b!4267540 m!4859233))

(declare-fun m!4859425 () Bool)

(assert (=> b!4267540 m!4859425))

(declare-fun m!4859427 () Bool)

(assert (=> d!1258035 m!4859427))

(assert (=> d!1258035 m!4859191))

(declare-fun m!4859429 () Bool)

(assert (=> d!1258035 m!4859429))

(assert (=> d!1258035 m!4859233))

(declare-fun m!4859431 () Bool)

(assert (=> d!1258035 m!4859431))

(assert (=> b!4267539 m!4859233))

(declare-fun m!4859433 () Bool)

(assert (=> b!4267539 m!4859433))

(assert (=> d!1257983 d!1258035))

(assert (=> d!1257983 d!1257959))

(check-sat (not b!4267467) (not d!1258031) (not d!1258033) (not b!4267410) (not b!4267491) (not b!4267405) (not b!4267318) (not b!4267406) (not b!4267409) (not d!1258025) (not b!4267540) (not d!1258029) (not d!1258027) (not d!1257979) (not b!4267539) (not b!4267454) (not d!1258035) (not bm!294071) (not b!4267471) (not d!1257977) (not b!4267452) (not b!4267492))
(check-sat)
(get-model)

(declare-fun d!1258037 () Bool)

(assert (=> d!1258037 (= (seqFromList!5852 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))) (fromListB!2660 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))

(declare-fun bs!599654 () Bool)

(assert (= bs!599654 d!1258037))

(declare-fun m!4859435 () Bool)

(assert (=> bs!599654 m!4859435))

(assert (=> d!1258025 d!1258037))

(declare-fun d!1258039 () Bool)

(declare-fun e!2649646 () Bool)

(assert (=> d!1258039 e!2649646))

(declare-fun res!1753419 () Bool)

(assert (=> d!1258039 (=> (not res!1753419) (not e!2649646))))

(declare-fun lt!1512075 () BalanceConc!28028)

(assert (=> d!1258039 (= res!1753419 (= (list!17092 lt!1512075) (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))

(declare-fun fromList!920 (List!47401) Conc!14259)

(assert (=> d!1258039 (= lt!1512075 (BalanceConc!28029 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277))))))))))))

(assert (=> d!1258039 (= (fromListB!2660 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))) lt!1512075)))

(declare-fun b!4267544 () Bool)

(assert (=> b!4267544 (= e!2649646 (isBalanced!3816 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277))))))))))))

(assert (= (and d!1258039 res!1753419) b!4267544))

(declare-fun m!4859437 () Bool)

(assert (=> d!1258039 m!4859437))

(declare-fun m!4859439 () Bool)

(assert (=> d!1258039 m!4859439))

(assert (=> b!4267544 m!4859439))

(assert (=> b!4267544 m!4859439))

(declare-fun m!4859441 () Bool)

(assert (=> b!4267544 m!4859441))

(assert (=> d!1258031 d!1258039))

(declare-fun d!1258041 () Bool)

(declare-fun c!725665 () Bool)

(assert (=> d!1258041 (= c!725665 ((_ is Nil!47277) lt!1512072))))

(declare-fun e!2649649 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258041 (= (content!7472 lt!1512072) e!2649649)))

(declare-fun b!4267549 () Bool)

(assert (=> b!4267549 (= e!2649649 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267550 () Bool)

(assert (=> b!4267550 (= e!2649649 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512072) true) (content!7472 (t!353527 lt!1512072))))))

(assert (= (and d!1258041 c!725665) b!4267549))

(assert (= (and d!1258041 (not c!725665)) b!4267550))

(declare-fun m!4859443 () Bool)

(assert (=> b!4267550 m!4859443))

(declare-fun m!4859445 () Bool)

(assert (=> b!4267550 m!4859445))

(assert (=> d!1258035 d!1258041))

(declare-fun d!1258043 () Bool)

(declare-fun c!725666 () Bool)

(assert (=> d!1258043 (= c!725666 ((_ is Nil!47277) (list!17094 (c!725567 x!738716))))))

(declare-fun e!2649650 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258043 (= (content!7472 (list!17094 (c!725567 x!738716))) e!2649650)))

(declare-fun b!4267551 () Bool)

(assert (=> b!4267551 (= e!2649650 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267552 () Bool)

(assert (=> b!4267552 (= e!2649650 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (list!17094 (c!725567 x!738716))) true) (content!7472 (t!353527 (list!17094 (c!725567 x!738716))))))))

(assert (= (and d!1258043 c!725666) b!4267551))

(assert (= (and d!1258043 (not c!725666)) b!4267552))

(declare-fun m!4859447 () Bool)

(assert (=> b!4267552 m!4859447))

(declare-fun m!4859449 () Bool)

(assert (=> b!4267552 m!4859449))

(assert (=> d!1258035 d!1258043))

(declare-fun d!1258045 () Bool)

(declare-fun c!725667 () Bool)

(assert (=> d!1258045 (= c!725667 ((_ is Nil!47277) (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun e!2649651 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258045 (= (content!7472 (efficientList$default$2!152 (c!725567 x!738716))) e!2649651)))

(declare-fun b!4267553 () Bool)

(assert (=> b!4267553 (= e!2649651 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267554 () Bool)

(assert (=> b!4267554 (= e!2649651 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (efficientList$default$2!152 (c!725567 x!738716))) true) (content!7472 (t!353527 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (= (and d!1258045 c!725667) b!4267553))

(assert (= (and d!1258045 (not c!725667)) b!4267554))

(declare-fun m!4859451 () Bool)

(assert (=> b!4267554 m!4859451))

(declare-fun m!4859453 () Bool)

(assert (=> b!4267554 m!4859453))

(assert (=> d!1258035 d!1258045))

(declare-fun b!4267555 () Bool)

(declare-fun e!2649652 () List!47401)

(assert (=> b!4267555 (= e!2649652 (list!17094 (right!35397 (c!725567 x!738716))))))

(declare-fun b!4267557 () Bool)

(declare-fun res!1753421 () Bool)

(declare-fun e!2649653 () Bool)

(assert (=> b!4267557 (=> (not res!1753421) (not e!2649653))))

(declare-fun lt!1512076 () List!47401)

(assert (=> b!4267557 (= res!1753421 (= (size!34629 lt!1512076) (+ (size!34629 (list!17094 (left!35067 (c!725567 x!738716)))) (size!34629 (list!17094 (right!35397 (c!725567 x!738716)))))))))

(declare-fun b!4267558 () Bool)

(assert (=> b!4267558 (= e!2649653 (or (not (= (list!17094 (right!35397 (c!725567 x!738716))) Nil!47277)) (= lt!1512076 (list!17094 (left!35067 (c!725567 x!738716))))))))

(declare-fun d!1258047 () Bool)

(assert (=> d!1258047 e!2649653))

(declare-fun res!1753420 () Bool)

(assert (=> d!1258047 (=> (not res!1753420) (not e!2649653))))

(assert (=> d!1258047 (= res!1753420 (= (content!7472 lt!1512076) ((_ map or) (content!7472 (list!17094 (left!35067 (c!725567 x!738716)))) (content!7472 (list!17094 (right!35397 (c!725567 x!738716)))))))))

(assert (=> d!1258047 (= lt!1512076 e!2649652)))

(declare-fun c!725668 () Bool)

(assert (=> d!1258047 (= c!725668 ((_ is Nil!47277) (list!17094 (left!35067 (c!725567 x!738716)))))))

(assert (=> d!1258047 (= (++!12055 (list!17094 (left!35067 (c!725567 x!738716))) (list!17094 (right!35397 (c!725567 x!738716)))) lt!1512076)))

(declare-fun b!4267556 () Bool)

(assert (=> b!4267556 (= e!2649652 (Cons!47277 (h!52697 (list!17094 (left!35067 (c!725567 x!738716)))) (++!12055 (t!353527 (list!17094 (left!35067 (c!725567 x!738716)))) (list!17094 (right!35397 (c!725567 x!738716))))))))

(assert (= (and d!1258047 c!725668) b!4267555))

(assert (= (and d!1258047 (not c!725668)) b!4267556))

(assert (= (and d!1258047 res!1753420) b!4267557))

(assert (= (and b!4267557 res!1753421) b!4267558))

(declare-fun m!4859455 () Bool)

(assert (=> b!4267557 m!4859455))

(assert (=> b!4267557 m!4859223))

(declare-fun m!4859457 () Bool)

(assert (=> b!4267557 m!4859457))

(assert (=> b!4267557 m!4859225))

(declare-fun m!4859459 () Bool)

(assert (=> b!4267557 m!4859459))

(declare-fun m!4859461 () Bool)

(assert (=> d!1258047 m!4859461))

(assert (=> d!1258047 m!4859223))

(declare-fun m!4859463 () Bool)

(assert (=> d!1258047 m!4859463))

(assert (=> d!1258047 m!4859225))

(declare-fun m!4859465 () Bool)

(assert (=> d!1258047 m!4859465))

(assert (=> b!4267556 m!4859225))

(declare-fun m!4859467 () Bool)

(assert (=> b!4267556 m!4859467))

(assert (=> b!4267410 d!1258047))

(declare-fun b!4267560 () Bool)

(declare-fun e!2649654 () List!47401)

(declare-fun e!2649655 () List!47401)

(assert (=> b!4267560 (= e!2649654 e!2649655)))

(declare-fun c!725670 () Bool)

(assert (=> b!4267560 (= c!725670 ((_ is Leaf!22044) (left!35067 (c!725567 x!738716))))))

(declare-fun b!4267559 () Bool)

(assert (=> b!4267559 (= e!2649654 Nil!47277)))

(declare-fun b!4267561 () Bool)

(assert (=> b!4267561 (= e!2649655 (list!17096 (xs!17565 (left!35067 (c!725567 x!738716)))))))

(declare-fun b!4267562 () Bool)

(assert (=> b!4267562 (= e!2649655 (++!12055 (list!17094 (left!35067 (left!35067 (c!725567 x!738716)))) (list!17094 (right!35397 (left!35067 (c!725567 x!738716))))))))

(declare-fun d!1258049 () Bool)

(declare-fun c!725669 () Bool)

(assert (=> d!1258049 (= c!725669 ((_ is Empty!14259) (left!35067 (c!725567 x!738716))))))

(assert (=> d!1258049 (= (list!17094 (left!35067 (c!725567 x!738716))) e!2649654)))

(assert (= (and d!1258049 c!725669) b!4267559))

(assert (= (and d!1258049 (not c!725669)) b!4267560))

(assert (= (and b!4267560 c!725670) b!4267561))

(assert (= (and b!4267560 (not c!725670)) b!4267562))

(declare-fun m!4859469 () Bool)

(assert (=> b!4267561 m!4859469))

(declare-fun m!4859471 () Bool)

(assert (=> b!4267562 m!4859471))

(declare-fun m!4859473 () Bool)

(assert (=> b!4267562 m!4859473))

(assert (=> b!4267562 m!4859471))

(assert (=> b!4267562 m!4859473))

(declare-fun m!4859475 () Bool)

(assert (=> b!4267562 m!4859475))

(assert (=> b!4267410 d!1258049))

(declare-fun b!4267564 () Bool)

(declare-fun e!2649656 () List!47401)

(declare-fun e!2649657 () List!47401)

(assert (=> b!4267564 (= e!2649656 e!2649657)))

(declare-fun c!725672 () Bool)

(assert (=> b!4267564 (= c!725672 ((_ is Leaf!22044) (right!35397 (c!725567 x!738716))))))

(declare-fun b!4267563 () Bool)

(assert (=> b!4267563 (= e!2649656 Nil!47277)))

(declare-fun b!4267565 () Bool)

(assert (=> b!4267565 (= e!2649657 (list!17096 (xs!17565 (right!35397 (c!725567 x!738716)))))))

(declare-fun b!4267566 () Bool)

(assert (=> b!4267566 (= e!2649657 (++!12055 (list!17094 (left!35067 (right!35397 (c!725567 x!738716)))) (list!17094 (right!35397 (right!35397 (c!725567 x!738716))))))))

(declare-fun d!1258051 () Bool)

(declare-fun c!725671 () Bool)

(assert (=> d!1258051 (= c!725671 ((_ is Empty!14259) (right!35397 (c!725567 x!738716))))))

(assert (=> d!1258051 (= (list!17094 (right!35397 (c!725567 x!738716))) e!2649656)))

(assert (= (and d!1258051 c!725671) b!4267563))

(assert (= (and d!1258051 (not c!725671)) b!4267564))

(assert (= (and b!4267564 c!725672) b!4267565))

(assert (= (and b!4267564 (not c!725672)) b!4267566))

(declare-fun m!4859477 () Bool)

(assert (=> b!4267565 m!4859477))

(declare-fun m!4859479 () Bool)

(assert (=> b!4267566 m!4859479))

(declare-fun m!4859481 () Bool)

(assert (=> b!4267566 m!4859481))

(assert (=> b!4267566 m!4859479))

(assert (=> b!4267566 m!4859481))

(declare-fun m!4859483 () Bool)

(assert (=> b!4267566 m!4859483))

(assert (=> b!4267410 d!1258051))

(declare-fun d!1258053 () Bool)

(assert (=> d!1258053 (= (list!17096 (xs!17565 (c!725567 x!738716))) (innerList!14319 (xs!17565 (c!725567 x!738716))))))

(assert (=> b!4267409 d!1258053))

(declare-fun d!1258055 () Bool)

(assert (=> d!1258055 (= (list!17096 (xs!17565 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) (innerList!14319 (xs!17565 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(assert (=> b!4267405 d!1258055))

(declare-fun b!4267567 () Bool)

(declare-fun e!2649658 () List!47401)

(assert (=> b!4267567 (= e!2649658 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun b!4267569 () Bool)

(declare-fun res!1753423 () Bool)

(declare-fun e!2649659 () Bool)

(assert (=> b!4267569 (=> (not res!1753423) (not e!2649659))))

(declare-fun lt!1512077 () List!47401)

(assert (=> b!4267569 (= res!1753423 (= (size!34629 lt!1512077) (+ (size!34629 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (size!34629 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun b!4267570 () Bool)

(assert (=> b!4267570 (= e!2649659 (or (not (= (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) Nil!47277)) (= lt!1512077 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun d!1258057 () Bool)

(assert (=> d!1258057 e!2649659))

(declare-fun res!1753422 () Bool)

(assert (=> d!1258057 (=> (not res!1753422) (not e!2649659))))

(assert (=> d!1258057 (= res!1753422 (= (content!7472 lt!1512077) ((_ map or) (content!7472 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (content!7472 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (=> d!1258057 (= lt!1512077 e!2649658)))

(declare-fun c!725673 () Bool)

(assert (=> d!1258057 (= c!725673 ((_ is Nil!47277) (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258057 (= (++!12055 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) lt!1512077)))

(declare-fun b!4267568 () Bool)

(assert (=> b!4267568 (= e!2649658 (Cons!47277 (h!52697 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (++!12055 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(assert (= (and d!1258057 c!725673) b!4267567))

(assert (= (and d!1258057 (not c!725673)) b!4267568))

(assert (= (and d!1258057 res!1753422) b!4267569))

(assert (= (and b!4267569 res!1753423) b!4267570))

(declare-fun m!4859485 () Bool)

(assert (=> b!4267569 m!4859485))

(assert (=> b!4267569 m!4859215))

(declare-fun m!4859487 () Bool)

(assert (=> b!4267569 m!4859487))

(assert (=> b!4267569 m!4859217))

(declare-fun m!4859489 () Bool)

(assert (=> b!4267569 m!4859489))

(declare-fun m!4859491 () Bool)

(assert (=> d!1258057 m!4859491))

(assert (=> d!1258057 m!4859215))

(declare-fun m!4859493 () Bool)

(assert (=> d!1258057 m!4859493))

(assert (=> d!1258057 m!4859217))

(declare-fun m!4859495 () Bool)

(assert (=> d!1258057 m!4859495))

(assert (=> b!4267568 m!4859217))

(declare-fun m!4859497 () Bool)

(assert (=> b!4267568 m!4859497))

(assert (=> b!4267406 d!1258057))

(declare-fun b!4267572 () Bool)

(declare-fun e!2649660 () List!47401)

(declare-fun e!2649661 () List!47401)

(assert (=> b!4267572 (= e!2649660 e!2649661)))

(declare-fun c!725675 () Bool)

(assert (=> b!4267572 (= c!725675 ((_ is Leaf!22044) (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun b!4267571 () Bool)

(assert (=> b!4267571 (= e!2649660 Nil!47277)))

(declare-fun b!4267573 () Bool)

(assert (=> b!4267573 (= e!2649661 (list!17096 (xs!17565 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4267574 () Bool)

(assert (=> b!4267574 (= e!2649661 (++!12055 (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun d!1258059 () Bool)

(declare-fun c!725674 () Bool)

(assert (=> d!1258059 (= c!725674 ((_ is Empty!14259) (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(assert (=> d!1258059 (= (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) e!2649660)))

(assert (= (and d!1258059 c!725674) b!4267571))

(assert (= (and d!1258059 (not c!725674)) b!4267572))

(assert (= (and b!4267572 c!725675) b!4267573))

(assert (= (and b!4267572 (not c!725675)) b!4267574))

(declare-fun m!4859499 () Bool)

(assert (=> b!4267573 m!4859499))

(declare-fun m!4859501 () Bool)

(assert (=> b!4267574 m!4859501))

(declare-fun m!4859503 () Bool)

(assert (=> b!4267574 m!4859503))

(assert (=> b!4267574 m!4859501))

(assert (=> b!4267574 m!4859503))

(declare-fun m!4859505 () Bool)

(assert (=> b!4267574 m!4859505))

(assert (=> b!4267406 d!1258059))

(declare-fun b!4267576 () Bool)

(declare-fun e!2649662 () List!47401)

(declare-fun e!2649663 () List!47401)

(assert (=> b!4267576 (= e!2649662 e!2649663)))

(declare-fun c!725677 () Bool)

(assert (=> b!4267576 (= c!725677 ((_ is Leaf!22044) (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun b!4267575 () Bool)

(assert (=> b!4267575 (= e!2649662 Nil!47277)))

(declare-fun b!4267577 () Bool)

(assert (=> b!4267577 (= e!2649663 (list!17096 (xs!17565 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4267578 () Bool)

(assert (=> b!4267578 (= e!2649663 (++!12055 (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun d!1258061 () Bool)

(declare-fun c!725676 () Bool)

(assert (=> d!1258061 (= c!725676 ((_ is Empty!14259) (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(assert (=> d!1258061 (= (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) e!2649662)))

(assert (= (and d!1258061 c!725676) b!4267575))

(assert (= (and d!1258061 (not c!725676)) b!4267576))

(assert (= (and b!4267576 c!725677) b!4267577))

(assert (= (and b!4267576 (not c!725677)) b!4267578))

(declare-fun m!4859507 () Bool)

(assert (=> b!4267577 m!4859507))

(declare-fun m!4859509 () Bool)

(assert (=> b!4267578 m!4859509))

(declare-fun m!4859511 () Bool)

(assert (=> b!4267578 m!4859511))

(assert (=> b!4267578 m!4859509))

(assert (=> b!4267578 m!4859511))

(declare-fun m!4859513 () Bool)

(assert (=> b!4267578 m!4859513))

(assert (=> b!4267406 d!1258061))

(declare-fun bs!599655 () Bool)

(declare-fun s!239250 () Bool)

(assert (= bs!599655 (and neg-inst!1589 s!239250)))

(assert (=> bs!599655 (=> true (= (list!17092 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) (list!17092 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(declare-fun m!4859515 () Bool)

(assert (=> m!4859153 m!4859515))

(declare-fun m!4859517 () Bool)

(assert (=> m!4859153 m!4859517))

(declare-fun m!4859519 () Bool)

(assert (=> m!4859153 m!4859519))

(assert (=> m!4859153 s!239250))

(check-sat (not d!1258047) (not b!4267554) (not d!1258039) (not b!4267467) (not d!1258033) (not b!4267578) (not b!4267561) (not b!4267568) (not b!4267569) (not b!4267577) (not b!4267318) (not b!4267566) (not b!4267574) (not d!1258029) (not d!1258027) (not d!1257979) (not b!4267539) (not d!1258057) (not b!4267573) (not b!4267454) (not bm!294071) (not b!4267557) (not b!4267544) (not b!4267491) (not d!1258037) (not b!4267565) (not b!4267550) (not b!4267552) (not b!4267471) (not d!1257977) (not b!4267452) (not b!4267492) (not b!4267556) (not b!4267562) (not bs!599655) (not b!4267540))
(check-sat)
(get-model)

(declare-fun d!1258127 () Bool)

(declare-fun c!725707 () Bool)

(assert (=> d!1258127 (= c!725707 ((_ is Nil!47277) lt!1512077))))

(declare-fun e!2649720 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258127 (= (content!7472 lt!1512077) e!2649720)))

(declare-fun b!4267690 () Bool)

(assert (=> b!4267690 (= e!2649720 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267691 () Bool)

(assert (=> b!4267691 (= e!2649720 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512077) true) (content!7472 (t!353527 lt!1512077))))))

(assert (= (and d!1258127 c!725707) b!4267690))

(assert (= (and d!1258127 (not c!725707)) b!4267691))

(declare-fun m!4859711 () Bool)

(assert (=> b!4267691 m!4859711))

(declare-fun m!4859713 () Bool)

(assert (=> b!4267691 m!4859713))

(assert (=> d!1258057 d!1258127))

(declare-fun d!1258129 () Bool)

(declare-fun c!725708 () Bool)

(assert (=> d!1258129 (= c!725708 ((_ is Nil!47277) (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun e!2649721 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258129 (= (content!7472 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) e!2649721)))

(declare-fun b!4267692 () Bool)

(assert (=> b!4267692 (= e!2649721 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267693 () Bool)

(assert (=> b!4267693 (= e!2649721 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) true) (content!7472 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (= (and d!1258129 c!725708) b!4267692))

(assert (= (and d!1258129 (not c!725708)) b!4267693))

(declare-fun m!4859715 () Bool)

(assert (=> b!4267693 m!4859715))

(declare-fun m!4859717 () Bool)

(assert (=> b!4267693 m!4859717))

(assert (=> d!1258057 d!1258129))

(declare-fun d!1258131 () Bool)

(declare-fun c!725709 () Bool)

(assert (=> d!1258131 (= c!725709 ((_ is Nil!47277) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun e!2649722 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258131 (= (content!7472 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) e!2649722)))

(declare-fun b!4267694 () Bool)

(assert (=> b!4267694 (= e!2649722 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267695 () Bool)

(assert (=> b!4267695 (= e!2649722 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) true) (content!7472 (t!353527 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (= (and d!1258131 c!725709) b!4267694))

(assert (= (and d!1258131 (not c!725709)) b!4267695))

(declare-fun m!4859719 () Bool)

(assert (=> b!4267695 m!4859719))

(declare-fun m!4859721 () Bool)

(assert (=> b!4267695 m!4859721))

(assert (=> d!1258057 d!1258131))

(declare-fun d!1258133 () Bool)

(declare-fun lt!1512111 () List!47401)

(assert (=> d!1258133 (= lt!1512111 (list!17096 (xs!17565 (c!725567 x!738716))))))

(declare-fun rec!31 (IArray!28523 Int List!47401) List!47401)

(declare-fun size!34632 (IArray!28523) Int)

(assert (=> d!1258133 (= lt!1512111 (rec!31 (xs!17565 (c!725567 x!738716)) (size!34632 (xs!17565 (c!725567 x!738716))) Nil!47277))))

(assert (=> d!1258133 (= (efficientList!440 (xs!17565 (c!725567 x!738716))) lt!1512111)))

(declare-fun bs!599663 () Bool)

(assert (= bs!599663 d!1258133))

(assert (=> bs!599663 m!4859221))

(declare-fun m!4859723 () Bool)

(assert (=> bs!599663 m!4859723))

(assert (=> bs!599663 m!4859723))

(declare-fun m!4859725 () Bool)

(assert (=> bs!599663 m!4859725))

(assert (=> b!4267467 d!1258133))

(declare-fun b!4267696 () Bool)

(declare-fun e!2649723 () List!47401)

(assert (=> b!4267696 (= e!2649723 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267698 () Bool)

(declare-fun res!1753477 () Bool)

(declare-fun e!2649724 () Bool)

(assert (=> b!4267698 (=> (not res!1753477) (not e!2649724))))

(declare-fun lt!1512112 () List!47401)

(assert (=> b!4267698 (= res!1753477 (= (size!34629 lt!1512112) (+ (size!34629 (t!353527 (list!17094 (c!725567 x!738716)))) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4267699 () Bool)

(assert (=> b!4267699 (= e!2649724 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512112 (t!353527 (list!17094 (c!725567 x!738716))))))))

(declare-fun d!1258135 () Bool)

(assert (=> d!1258135 e!2649724))

(declare-fun res!1753476 () Bool)

(assert (=> d!1258135 (=> (not res!1753476) (not e!2649724))))

(assert (=> d!1258135 (= res!1753476 (= (content!7472 lt!1512112) ((_ map or) (content!7472 (t!353527 (list!17094 (c!725567 x!738716)))) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258135 (= lt!1512112 e!2649723)))

(declare-fun c!725710 () Bool)

(assert (=> d!1258135 (= c!725710 ((_ is Nil!47277) (t!353527 (list!17094 (c!725567 x!738716)))))))

(assert (=> d!1258135 (= (++!12055 (t!353527 (list!17094 (c!725567 x!738716))) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512112)))

(declare-fun b!4267697 () Bool)

(assert (=> b!4267697 (= e!2649723 (Cons!47277 (h!52697 (t!353527 (list!17094 (c!725567 x!738716)))) (++!12055 (t!353527 (t!353527 (list!17094 (c!725567 x!738716)))) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258135 c!725710) b!4267696))

(assert (= (and d!1258135 (not c!725710)) b!4267697))

(assert (= (and d!1258135 res!1753476) b!4267698))

(assert (= (and b!4267698 res!1753477) b!4267699))

(declare-fun m!4859727 () Bool)

(assert (=> b!4267698 m!4859727))

(declare-fun m!4859729 () Bool)

(assert (=> b!4267698 m!4859729))

(assert (=> b!4267698 m!4859233))

(assert (=> b!4267698 m!4859425))

(declare-fun m!4859731 () Bool)

(assert (=> d!1258135 m!4859731))

(assert (=> d!1258135 m!4859449))

(assert (=> d!1258135 m!4859233))

(assert (=> d!1258135 m!4859431))

(assert (=> b!4267697 m!4859233))

(declare-fun m!4859733 () Bool)

(assert (=> b!4267697 m!4859733))

(assert (=> b!4267539 d!1258135))

(declare-fun d!1258137 () Bool)

(declare-fun res!1753484 () Bool)

(declare-fun e!2649727 () Bool)

(assert (=> d!1258137 (=> (not res!1753484) (not e!2649727))))

(declare-fun size!34633 (Conc!14259) Int)

(assert (=> d!1258137 (= res!1753484 (= (csize!28748 (c!725567 x!738716)) (+ (size!34633 (left!35067 (c!725567 x!738716))) (size!34633 (right!35397 (c!725567 x!738716))))))))

(assert (=> d!1258137 (= (inv!62244 (c!725567 x!738716)) e!2649727)))

(declare-fun b!4267706 () Bool)

(declare-fun res!1753485 () Bool)

(assert (=> b!4267706 (=> (not res!1753485) (not e!2649727))))

(assert (=> b!4267706 (= res!1753485 (and (not (= (left!35067 (c!725567 x!738716)) Empty!14259)) (not (= (right!35397 (c!725567 x!738716)) Empty!14259))))))

(declare-fun b!4267707 () Bool)

(declare-fun res!1753486 () Bool)

(assert (=> b!4267707 (=> (not res!1753486) (not e!2649727))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!1878 (Conc!14259) Int)

(assert (=> b!4267707 (= res!1753486 (= (cheight!14470 (c!725567 x!738716)) (+ (max!0 (height!1878 (left!35067 (c!725567 x!738716))) (height!1878 (right!35397 (c!725567 x!738716)))) 1)))))

(declare-fun b!4267708 () Bool)

(assert (=> b!4267708 (= e!2649727 (<= 0 (cheight!14470 (c!725567 x!738716))))))

(assert (= (and d!1258137 res!1753484) b!4267706))

(assert (= (and b!4267706 res!1753485) b!4267707))

(assert (= (and b!4267707 res!1753486) b!4267708))

(declare-fun m!4859735 () Bool)

(assert (=> d!1258137 m!4859735))

(declare-fun m!4859737 () Bool)

(assert (=> d!1258137 m!4859737))

(declare-fun m!4859739 () Bool)

(assert (=> b!4267707 m!4859739))

(declare-fun m!4859741 () Bool)

(assert (=> b!4267707 m!4859741))

(assert (=> b!4267707 m!4859739))

(assert (=> b!4267707 m!4859741))

(declare-fun m!4859743 () Bool)

(assert (=> b!4267707 m!4859743))

(assert (=> b!4267452 d!1258137))

(declare-fun b!4267709 () Bool)

(declare-fun e!2649728 () List!47401)

(assert (=> b!4267709 (= e!2649728 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267711 () Bool)

(declare-fun res!1753488 () Bool)

(declare-fun e!2649729 () Bool)

(assert (=> b!4267711 (=> (not res!1753488) (not e!2649729))))

(declare-fun lt!1512113 () List!47401)

(assert (=> b!4267711 (= res!1753488 (= (size!34629 lt!1512113) (+ (size!34629 e!2649605) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4267712 () Bool)

(assert (=> b!4267712 (= e!2649729 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512113 e!2649605)))))

(declare-fun d!1258139 () Bool)

(assert (=> d!1258139 e!2649729))

(declare-fun res!1753487 () Bool)

(assert (=> d!1258139 (=> (not res!1753487) (not e!2649729))))

(assert (=> d!1258139 (= res!1753487 (= (content!7472 lt!1512113) ((_ map or) (content!7472 e!2649605) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258139 (= lt!1512113 e!2649728)))

(declare-fun c!725711 () Bool)

(assert (=> d!1258139 (= c!725711 ((_ is Nil!47277) e!2649605))))

(assert (=> d!1258139 (= (++!12055 e!2649605 (efficientList$default$2!152 (c!725567 x!738716))) lt!1512113)))

(declare-fun b!4267710 () Bool)

(assert (=> b!4267710 (= e!2649728 (Cons!47277 (h!52697 e!2649605) (++!12055 (t!353527 e!2649605) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258139 c!725711) b!4267709))

(assert (= (and d!1258139 (not c!725711)) b!4267710))

(assert (= (and d!1258139 res!1753487) b!4267711))

(assert (= (and b!4267711 res!1753488) b!4267712))

(declare-fun m!4859745 () Bool)

(assert (=> b!4267711 m!4859745))

(declare-fun m!4859747 () Bool)

(assert (=> b!4267711 m!4859747))

(assert (=> b!4267711 m!4859233))

(assert (=> b!4267711 m!4859425))

(declare-fun m!4859749 () Bool)

(assert (=> d!1258139 m!4859749))

(declare-fun m!4859751 () Bool)

(assert (=> d!1258139 m!4859751))

(assert (=> d!1258139 m!4859233))

(assert (=> d!1258139 m!4859431))

(assert (=> b!4267710 m!4859233))

(declare-fun m!4859753 () Bool)

(assert (=> b!4267710 m!4859753))

(assert (=> bm!294071 d!1258139))

(declare-fun d!1258141 () Bool)

(assert (=> d!1258141 (= (inv!62246 (xs!17565 (c!725567 x!738716))) (<= (size!34629 (innerList!14319 (xs!17565 (c!725567 x!738716)))) 2147483647))))

(declare-fun bs!599664 () Bool)

(assert (= bs!599664 d!1258141))

(declare-fun m!4859755 () Bool)

(assert (=> bs!599664 m!4859755))

(assert (=> b!4267492 d!1258141))

(declare-fun d!1258143 () Bool)

(declare-fun lt!1512116 () Int)

(assert (=> d!1258143 (>= lt!1512116 0)))

(declare-fun e!2649732 () Int)

(assert (=> d!1258143 (= lt!1512116 e!2649732)))

(declare-fun c!725714 () Bool)

(assert (=> d!1258143 (= c!725714 ((_ is Nil!47277) lt!1512072))))

(assert (=> d!1258143 (= (size!34629 lt!1512072) lt!1512116)))

(declare-fun b!4267717 () Bool)

(assert (=> b!4267717 (= e!2649732 0)))

(declare-fun b!4267718 () Bool)

(assert (=> b!4267718 (= e!2649732 (+ 1 (size!34629 (t!353527 lt!1512072))))))

(assert (= (and d!1258143 c!725714) b!4267717))

(assert (= (and d!1258143 (not c!725714)) b!4267718))

(declare-fun m!4859757 () Bool)

(assert (=> b!4267718 m!4859757))

(assert (=> b!4267540 d!1258143))

(declare-fun d!1258145 () Bool)

(declare-fun lt!1512117 () Int)

(assert (=> d!1258145 (>= lt!1512117 0)))

(declare-fun e!2649733 () Int)

(assert (=> d!1258145 (= lt!1512117 e!2649733)))

(declare-fun c!725715 () Bool)

(assert (=> d!1258145 (= c!725715 ((_ is Nil!47277) (list!17094 (c!725567 x!738716))))))

(assert (=> d!1258145 (= (size!34629 (list!17094 (c!725567 x!738716))) lt!1512117)))

(declare-fun b!4267719 () Bool)

(assert (=> b!4267719 (= e!2649733 0)))

(declare-fun b!4267720 () Bool)

(assert (=> b!4267720 (= e!2649733 (+ 1 (size!34629 (t!353527 (list!17094 (c!725567 x!738716))))))))

(assert (= (and d!1258145 c!725715) b!4267719))

(assert (= (and d!1258145 (not c!725715)) b!4267720))

(assert (=> b!4267720 m!4859729))

(assert (=> b!4267540 d!1258145))

(declare-fun d!1258147 () Bool)

(declare-fun lt!1512118 () Int)

(assert (=> d!1258147 (>= lt!1512118 0)))

(declare-fun e!2649734 () Int)

(assert (=> d!1258147 (= lt!1512118 e!2649734)))

(declare-fun c!725716 () Bool)

(assert (=> d!1258147 (= c!725716 ((_ is Nil!47277) (efficientList$default$2!152 (c!725567 x!738716))))))

(assert (=> d!1258147 (= (size!34629 (efficientList$default$2!152 (c!725567 x!738716))) lt!1512118)))

(declare-fun b!4267721 () Bool)

(assert (=> b!4267721 (= e!2649734 0)))

(declare-fun b!4267722 () Bool)

(assert (=> b!4267722 (= e!2649734 (+ 1 (size!34629 (t!353527 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (= (and d!1258147 c!725716) b!4267721))

(assert (= (and d!1258147 (not c!725716)) b!4267722))

(declare-fun m!4859759 () Bool)

(assert (=> b!4267722 m!4859759))

(assert (=> b!4267540 d!1258147))

(declare-fun d!1258149 () Bool)

(declare-fun res!1753493 () Bool)

(declare-fun e!2649737 () Bool)

(assert (=> d!1258149 (=> (not res!1753493) (not e!2649737))))

(assert (=> d!1258149 (= res!1753493 (<= (size!34629 (list!17096 (xs!17565 (c!725567 x!738716)))) 512))))

(assert (=> d!1258149 (= (inv!62245 (c!725567 x!738716)) e!2649737)))

(declare-fun b!4267727 () Bool)

(declare-fun res!1753494 () Bool)

(assert (=> b!4267727 (=> (not res!1753494) (not e!2649737))))

(assert (=> b!4267727 (= res!1753494 (= (csize!28749 (c!725567 x!738716)) (size!34629 (list!17096 (xs!17565 (c!725567 x!738716))))))))

(declare-fun b!4267728 () Bool)

(assert (=> b!4267728 (= e!2649737 (and (> (csize!28749 (c!725567 x!738716)) 0) (<= (csize!28749 (c!725567 x!738716)) 512)))))

(assert (= (and d!1258149 res!1753493) b!4267727))

(assert (= (and b!4267727 res!1753494) b!4267728))

(assert (=> d!1258149 m!4859221))

(assert (=> d!1258149 m!4859221))

(declare-fun m!4859761 () Bool)

(assert (=> d!1258149 m!4859761))

(assert (=> b!4267727 m!4859221))

(assert (=> b!4267727 m!4859221))

(assert (=> b!4267727 m!4859761))

(assert (=> b!4267454 d!1258149))

(declare-fun d!1258151 () Bool)

(declare-fun c!725717 () Bool)

(assert (=> d!1258151 (= c!725717 ((_ is Node!14259) (left!35067 (c!725567 x!738716))))))

(declare-fun e!2649738 () Bool)

(assert (=> d!1258151 (= (inv!62239 (left!35067 (c!725567 x!738716))) e!2649738)))

(declare-fun b!4267729 () Bool)

(assert (=> b!4267729 (= e!2649738 (inv!62244 (left!35067 (c!725567 x!738716))))))

(declare-fun b!4267730 () Bool)

(declare-fun e!2649739 () Bool)

(assert (=> b!4267730 (= e!2649738 e!2649739)))

(declare-fun res!1753495 () Bool)

(assert (=> b!4267730 (= res!1753495 (not ((_ is Leaf!22044) (left!35067 (c!725567 x!738716)))))))

(assert (=> b!4267730 (=> res!1753495 e!2649739)))

(declare-fun b!4267731 () Bool)

(assert (=> b!4267731 (= e!2649739 (inv!62245 (left!35067 (c!725567 x!738716))))))

(assert (= (and d!1258151 c!725717) b!4267729))

(assert (= (and d!1258151 (not c!725717)) b!4267730))

(assert (= (and b!4267730 (not res!1753495)) b!4267731))

(declare-fun m!4859763 () Bool)

(assert (=> b!4267729 m!4859763))

(declare-fun m!4859765 () Bool)

(assert (=> b!4267731 m!4859765))

(assert (=> b!4267491 d!1258151))

(declare-fun d!1258153 () Bool)

(declare-fun c!725718 () Bool)

(assert (=> d!1258153 (= c!725718 ((_ is Node!14259) (right!35397 (c!725567 x!738716))))))

(declare-fun e!2649740 () Bool)

(assert (=> d!1258153 (= (inv!62239 (right!35397 (c!725567 x!738716))) e!2649740)))

(declare-fun b!4267732 () Bool)

(assert (=> b!4267732 (= e!2649740 (inv!62244 (right!35397 (c!725567 x!738716))))))

(declare-fun b!4267733 () Bool)

(declare-fun e!2649741 () Bool)

(assert (=> b!4267733 (= e!2649740 e!2649741)))

(declare-fun res!1753496 () Bool)

(assert (=> b!4267733 (= res!1753496 (not ((_ is Leaf!22044) (right!35397 (c!725567 x!738716)))))))

(assert (=> b!4267733 (=> res!1753496 e!2649741)))

(declare-fun b!4267734 () Bool)

(assert (=> b!4267734 (= e!2649741 (inv!62245 (right!35397 (c!725567 x!738716))))))

(assert (= (and d!1258153 c!725718) b!4267732))

(assert (= (and d!1258153 (not c!725718)) b!4267733))

(assert (= (and b!4267733 (not res!1753496)) b!4267734))

(declare-fun m!4859767 () Bool)

(assert (=> b!4267732 m!4859767))

(declare-fun m!4859769 () Bool)

(assert (=> b!4267734 m!4859769))

(assert (=> b!4267491 d!1258153))

(declare-fun d!1258155 () Bool)

(declare-fun c!725719 () Bool)

(assert (=> d!1258155 (= c!725719 ((_ is Nil!47277) lt!1512076))))

(declare-fun e!2649742 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258155 (= (content!7472 lt!1512076) e!2649742)))

(declare-fun b!4267735 () Bool)

(assert (=> b!4267735 (= e!2649742 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267736 () Bool)

(assert (=> b!4267736 (= e!2649742 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512076) true) (content!7472 (t!353527 lt!1512076))))))

(assert (= (and d!1258155 c!725719) b!4267735))

(assert (= (and d!1258155 (not c!725719)) b!4267736))

(declare-fun m!4859771 () Bool)

(assert (=> b!4267736 m!4859771))

(declare-fun m!4859773 () Bool)

(assert (=> b!4267736 m!4859773))

(assert (=> d!1258047 d!1258155))

(declare-fun d!1258157 () Bool)

(declare-fun c!725720 () Bool)

(assert (=> d!1258157 (= c!725720 ((_ is Nil!47277) (list!17094 (left!35067 (c!725567 x!738716)))))))

(declare-fun e!2649743 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258157 (= (content!7472 (list!17094 (left!35067 (c!725567 x!738716)))) e!2649743)))

(declare-fun b!4267737 () Bool)

(assert (=> b!4267737 (= e!2649743 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267738 () Bool)

(assert (=> b!4267738 (= e!2649743 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (list!17094 (left!35067 (c!725567 x!738716)))) true) (content!7472 (t!353527 (list!17094 (left!35067 (c!725567 x!738716)))))))))

(assert (= (and d!1258157 c!725720) b!4267737))

(assert (= (and d!1258157 (not c!725720)) b!4267738))

(declare-fun m!4859775 () Bool)

(assert (=> b!4267738 m!4859775))

(declare-fun m!4859777 () Bool)

(assert (=> b!4267738 m!4859777))

(assert (=> d!1258047 d!1258157))

(declare-fun d!1258159 () Bool)

(declare-fun c!725721 () Bool)

(assert (=> d!1258159 (= c!725721 ((_ is Nil!47277) (list!17094 (right!35397 (c!725567 x!738716)))))))

(declare-fun e!2649744 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258159 (= (content!7472 (list!17094 (right!35397 (c!725567 x!738716)))) e!2649744)))

(declare-fun b!4267739 () Bool)

(assert (=> b!4267739 (= e!2649744 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267740 () Bool)

(assert (=> b!4267740 (= e!2649744 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (list!17094 (right!35397 (c!725567 x!738716)))) true) (content!7472 (t!353527 (list!17094 (right!35397 (c!725567 x!738716)))))))))

(assert (= (and d!1258159 c!725721) b!4267739))

(assert (= (and d!1258159 (not c!725721)) b!4267740))

(declare-fun m!4859779 () Bool)

(assert (=> b!4267740 m!4859779))

(declare-fun m!4859781 () Bool)

(assert (=> b!4267740 m!4859781))

(assert (=> d!1258047 d!1258159))

(declare-fun d!1258161 () Bool)

(assert (=> d!1258161 (= (list!17092 lt!1512075) (list!17094 (c!725567 lt!1512075)))))

(declare-fun bs!599665 () Bool)

(assert (= bs!599665 d!1258161))

(declare-fun m!4859783 () Bool)

(assert (=> bs!599665 m!4859783))

(assert (=> d!1258039 d!1258161))

(declare-fun d!1258163 () Bool)

(declare-fun e!2649747 () Bool)

(assert (=> d!1258163 e!2649747))

(declare-fun res!1753499 () Bool)

(assert (=> d!1258163 (=> (not res!1753499) (not e!2649747))))

(declare-fun lt!1512121 () Conc!14259)

(assert (=> d!1258163 (= res!1753499 (= (list!17094 lt!1512121) (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))

(declare-fun choose!26012 (List!47401) Conc!14259)

(assert (=> d!1258163 (= lt!1512121 (choose!26012 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))

(assert (=> d!1258163 (= (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))) lt!1512121)))

(declare-fun b!4267743 () Bool)

(assert (=> b!4267743 (= e!2649747 (isBalanced!3816 lt!1512121))))

(assert (= (and d!1258163 res!1753499) b!4267743))

(declare-fun m!4859785 () Bool)

(assert (=> d!1258163 m!4859785))

(declare-fun m!4859787 () Bool)

(assert (=> d!1258163 m!4859787))

(declare-fun m!4859789 () Bool)

(assert (=> b!4267743 m!4859789))

(assert (=> d!1258039 d!1258163))

(declare-fun d!1258165 () Bool)

(assert (=> d!1258165 true))

(assert (=> d!1258165 true))

(declare-fun res!1753502 () Bool)

(assert (=> d!1258165 (= (choose!26009 lambda!130419) res!1753502)))

(assert (=> d!1257979 d!1258165))

(declare-fun d!1258167 () Bool)

(assert (=> d!1258167 (= (list!17092 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) (list!17094 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun bs!599666 () Bool)

(assert (= bs!599666 d!1258167))

(declare-fun m!4859791 () Bool)

(assert (=> bs!599666 m!4859791))

(assert (=> bs!599655 d!1258167))

(declare-fun b!4267744 () Bool)

(declare-fun e!2649752 () BalanceConc!28028)

(assert (=> b!4267744 (= e!2649752 stringInt32Conc!0)))

(declare-fun b!4267746 () Bool)

(declare-fun e!2649749 () BalanceConc!28028)

(declare-fun e!2649751 () BalanceConc!28028)

(assert (=> b!4267746 (= e!2649749 e!2649751)))

(declare-fun c!725723 () Bool)

(assert (=> b!4267746 (= c!725723 ((_ is String!55171) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(declare-fun b!4267747 () Bool)

(declare-fun c!725726 () Bool)

(assert (=> b!4267747 (= c!725726 ((_ is Broken!41161) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(declare-fun e!2649748 () BalanceConc!28028)

(assert (=> b!4267747 (= e!2649751 e!2649748)))

(declare-fun b!4267748 () Bool)

(assert (=> b!4267748 (= e!2649748 (seqFromList!5852 (value!248629 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun b!4267749 () Bool)

(declare-fun e!2649750 () BalanceConc!28028)

(assert (=> b!4267749 (= e!2649752 e!2649750)))

(declare-fun c!725724 () Bool)

(assert (=> b!4267749 (= c!725724 ((_ is Unit!66166) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(declare-fun b!4267750 () Bool)

(assert (=> b!4267750 (= e!2649748 (BalanceConc!28029 Empty!14259))))

(declare-fun b!4267751 () Bool)

(assert (=> b!4267751 (= e!2649749 stringBooleanConc!0)))

(declare-fun b!4267752 () Bool)

(assert (=> b!4267752 (= e!2649751 stringStringConc!0)))

(declare-fun b!4267753 () Bool)

(assert (=> b!4267753 (= e!2649750 stringUnitConc!0)))

(declare-fun d!1258169 () Bool)

(declare-fun c!725725 () Bool)

(assert (=> d!1258169 (= c!725725 ((_ is Int32!8232) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(assert (=> d!1258169 (= (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))) e!2649752)))

(declare-fun b!4267745 () Bool)

(declare-fun c!725722 () Bool)

(assert (=> b!4267745 (= c!725722 ((_ is Boolean!8233) (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(assert (=> b!4267745 (= e!2649750 e!2649749)))

(assert (= (and d!1258169 c!725725) b!4267744))

(assert (= (and d!1258169 (not c!725725)) b!4267749))

(assert (= (and b!4267749 c!725724) b!4267753))

(assert (= (and b!4267749 (not c!725724)) b!4267745))

(assert (= (and b!4267745 c!725722) b!4267751))

(assert (= (and b!4267745 (not c!725722)) b!4267746))

(assert (= (and b!4267746 c!725723) b!4267752))

(assert (= (and b!4267746 (not c!725723)) b!4267747))

(assert (= (and b!4267747 c!725726) b!4267748))

(assert (= (and b!4267747 (not c!725726)) b!4267750))

(assert (=> b!4267753 m!4859179))

(assert (=> b!4267744 m!4859181))

(declare-fun m!4859793 () Bool)

(assert (=> b!4267748 m!4859793))

(assert (=> b!4267752 m!4859185))

(assert (=> b!4267751 m!4859187))

(assert (=> bs!599655 d!1258169))

(declare-fun d!1258171 () Bool)

(declare-fun lt!1512122 () List!47401)

(assert (=> d!1258171 (= lt!1512122 (efficientList!436 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))

(assert (=> d!1258171 (= (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))) (ite (= lt!1512122 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))) Int32!8232 (ite (= lt!1512122 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))) Unit!66166 (ite (= lt!1512122 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))) Boolean!8233 (ite (= lt!1512122 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277))))))) String!55171 (Broken!41161 lt!1512122))))))))

(declare-fun bs!599667 () Bool)

(assert (= bs!599667 d!1258171))

(assert (=> bs!599667 m!4859151))

(declare-fun m!4859795 () Bool)

(assert (=> bs!599667 m!4859795))

(assert (=> bs!599655 d!1258171))

(assert (=> bs!599655 d!1257939))

(declare-fun d!1258173 () Bool)

(declare-fun e!2649753 () Bool)

(assert (=> d!1258173 e!2649753))

(declare-fun res!1753503 () Bool)

(assert (=> d!1258173 (=> (not res!1753503) (not e!2649753))))

(declare-fun lt!1512123 () BalanceConc!28028)

(assert (=> d!1258173 (= res!1753503 (= (list!17092 lt!1512123) (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))

(assert (=> d!1258173 (= lt!1512123 (BalanceConc!28029 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277)))))))))

(assert (=> d!1258173 (= (fromListB!2660 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))) lt!1512123)))

(declare-fun b!4267754 () Bool)

(assert (=> b!4267754 (= e!2649753 (isBalanced!3816 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277)))))))))

(assert (= (and d!1258173 res!1753503) b!4267754))

(declare-fun m!4859797 () Bool)

(assert (=> d!1258173 m!4859797))

(declare-fun m!4859799 () Bool)

(assert (=> d!1258173 m!4859799))

(assert (=> b!4267754 m!4859799))

(assert (=> b!4267754 m!4859799))

(declare-fun m!4859801 () Bool)

(assert (=> b!4267754 m!4859801))

(assert (=> d!1258037 d!1258173))

(assert (=> b!4267318 d!1257975))

(declare-fun d!1258175 () Bool)

(assert (=> d!1258175 (= (seqFromList!5852 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))) (fromListB!2660 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))))))

(declare-fun bs!599668 () Bool)

(assert (= bs!599668 d!1258175))

(declare-fun m!4859803 () Bool)

(assert (=> bs!599668 m!4859803))

(assert (=> d!1258027 d!1258175))

(declare-fun b!4267755 () Bool)

(declare-fun e!2649754 () List!47401)

(assert (=> b!4267755 (= e!2649754 lt!1512059)))

(declare-fun b!4267757 () Bool)

(declare-fun res!1753505 () Bool)

(declare-fun e!2649755 () Bool)

(assert (=> b!4267757 (=> (not res!1753505) (not e!2649755))))

(declare-fun lt!1512124 () List!47401)

(assert (=> b!4267757 (= res!1753505 (= (size!34629 lt!1512124) (+ (size!34629 lt!1512061) (size!34629 lt!1512059))))))

(declare-fun b!4267758 () Bool)

(assert (=> b!4267758 (= e!2649755 (or (not (= lt!1512059 Nil!47277)) (= lt!1512124 lt!1512061)))))

(declare-fun d!1258177 () Bool)

(assert (=> d!1258177 e!2649755))

(declare-fun res!1753504 () Bool)

(assert (=> d!1258177 (=> (not res!1753504) (not e!2649755))))

(assert (=> d!1258177 (= res!1753504 (= (content!7472 lt!1512124) ((_ map or) (content!7472 lt!1512061) (content!7472 lt!1512059))))))

(assert (=> d!1258177 (= lt!1512124 e!2649754)))

(declare-fun c!725727 () Bool)

(assert (=> d!1258177 (= c!725727 ((_ is Nil!47277) lt!1512061))))

(assert (=> d!1258177 (= (++!12055 lt!1512061 lt!1512059) lt!1512124)))

(declare-fun b!4267756 () Bool)

(assert (=> b!4267756 (= e!2649754 (Cons!47277 (h!52697 lt!1512061) (++!12055 (t!353527 lt!1512061) lt!1512059)))))

(assert (= (and d!1258177 c!725727) b!4267755))

(assert (= (and d!1258177 (not c!725727)) b!4267756))

(assert (= (and d!1258177 res!1753504) b!4267757))

(assert (= (and b!4267757 res!1753505) b!4267758))

(declare-fun m!4859805 () Bool)

(assert (=> b!4267757 m!4859805))

(declare-fun m!4859807 () Bool)

(assert (=> b!4267757 m!4859807))

(declare-fun m!4859809 () Bool)

(assert (=> b!4267757 m!4859809))

(declare-fun m!4859811 () Bool)

(assert (=> d!1258177 m!4859811))

(declare-fun m!4859813 () Bool)

(assert (=> d!1258177 m!4859813))

(declare-fun m!4859815 () Bool)

(assert (=> d!1258177 m!4859815))

(declare-fun m!4859817 () Bool)

(assert (=> b!4267756 m!4859817))

(assert (=> b!4267471 d!1258177))

(declare-fun d!1258179 () Bool)

(assert (=> d!1258179 (= (++!12055 (++!12055 lt!1512061 lt!1512059) (efficientList$default$2!152 (c!725567 x!738716))) (++!12055 lt!1512061 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun lt!1512127 () Unit!66169)

(declare-fun choose!26013 (List!47401 List!47401 List!47401) Unit!66169)

(assert (=> d!1258179 (= lt!1512127 (choose!26013 lt!1512061 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))))))

(assert (=> d!1258179 (= (lemmaConcatAssociativity!2698 lt!1512061 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))) lt!1512127)))

(declare-fun bs!599669 () Bool)

(assert (= bs!599669 d!1258179))

(assert (=> bs!599669 m!4859233))

(declare-fun m!4859819 () Bool)

(assert (=> bs!599669 m!4859819))

(assert (=> bs!599669 m!4859291))

(assert (=> bs!599669 m!4859233))

(assert (=> bs!599669 m!4859293))

(declare-fun m!4859821 () Bool)

(assert (=> bs!599669 m!4859821))

(declare-fun m!4859823 () Bool)

(assert (=> bs!599669 m!4859823))

(assert (=> bs!599669 m!4859233))

(assert (=> bs!599669 m!4859821))

(assert (=> bs!599669 m!4859291))

(assert (=> b!4267471 d!1258179))

(declare-fun b!4267759 () Bool)

(declare-fun e!2649756 () List!47401)

(assert (=> b!4267759 (= e!2649756 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267761 () Bool)

(declare-fun res!1753507 () Bool)

(declare-fun e!2649757 () Bool)

(assert (=> b!4267761 (=> (not res!1753507) (not e!2649757))))

(declare-fun lt!1512128 () List!47401)

(assert (=> b!4267761 (= res!1753507 (= (size!34629 lt!1512128) (+ (size!34629 (++!12055 lt!1512061 lt!1512059)) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4267762 () Bool)

(assert (=> b!4267762 (= e!2649757 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512128 (++!12055 lt!1512061 lt!1512059))))))

(declare-fun d!1258181 () Bool)

(assert (=> d!1258181 e!2649757))

(declare-fun res!1753506 () Bool)

(assert (=> d!1258181 (=> (not res!1753506) (not e!2649757))))

(assert (=> d!1258181 (= res!1753506 (= (content!7472 lt!1512128) ((_ map or) (content!7472 (++!12055 lt!1512061 lt!1512059)) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258181 (= lt!1512128 e!2649756)))

(declare-fun c!725728 () Bool)

(assert (=> d!1258181 (= c!725728 ((_ is Nil!47277) (++!12055 lt!1512061 lt!1512059)))))

(assert (=> d!1258181 (= (++!12055 (++!12055 lt!1512061 lt!1512059) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512128)))

(declare-fun b!4267760 () Bool)

(assert (=> b!4267760 (= e!2649756 (Cons!47277 (h!52697 (++!12055 lt!1512061 lt!1512059)) (++!12055 (t!353527 (++!12055 lt!1512061 lt!1512059)) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258181 c!725728) b!4267759))

(assert (= (and d!1258181 (not c!725728)) b!4267760))

(assert (= (and d!1258181 res!1753506) b!4267761))

(assert (= (and b!4267761 res!1753507) b!4267762))

(declare-fun m!4859825 () Bool)

(assert (=> b!4267761 m!4859825))

(assert (=> b!4267761 m!4859291))

(declare-fun m!4859827 () Bool)

(assert (=> b!4267761 m!4859827))

(assert (=> b!4267761 m!4859233))

(assert (=> b!4267761 m!4859425))

(declare-fun m!4859829 () Bool)

(assert (=> d!1258181 m!4859829))

(assert (=> d!1258181 m!4859291))

(declare-fun m!4859831 () Bool)

(assert (=> d!1258181 m!4859831))

(assert (=> d!1258181 m!4859233))

(assert (=> d!1258181 m!4859431))

(assert (=> b!4267760 m!4859233))

(declare-fun m!4859833 () Bool)

(assert (=> b!4267760 m!4859833))

(assert (=> b!4267471 d!1258181))

(assert (=> b!4267471 d!1258051))

(declare-fun bm!294074 () Bool)

(declare-fun c!725731 () Bool)

(declare-fun c!725729 () Bool)

(assert (=> bm!294074 (= c!725731 c!725729)))

(declare-fun call!294079 () List!47401)

(declare-fun e!2649760 () List!47401)

(assert (=> bm!294074 (= call!294079 (++!12055 e!2649760 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun b!4267763 () Bool)

(assert (=> b!4267763 (= e!2649760 (efficientList!440 (xs!17565 (left!35067 (c!725567 x!738716)))))))

(declare-fun d!1258183 () Bool)

(declare-fun lt!1512130 () List!47401)

(assert (=> d!1258183 (= lt!1512130 (++!12055 (list!17094 (left!35067 (c!725567 x!738716))) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun e!2649759 () List!47401)

(assert (=> d!1258183 (= lt!1512130 e!2649759)))

(declare-fun c!725730 () Bool)

(assert (=> d!1258183 (= c!725730 ((_ is Empty!14259) (left!35067 (c!725567 x!738716))))))

(assert (=> d!1258183 (= (efficientList!438 (left!35067 (c!725567 x!738716)) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))) lt!1512130)))

(declare-fun b!4267764 () Bool)

(declare-fun lt!1512131 () List!47401)

(assert (=> b!4267764 (= e!2649760 lt!1512131)))

(declare-fun b!4267765 () Bool)

(declare-fun e!2649758 () List!47401)

(assert (=> b!4267765 (= e!2649758 call!294079)))

(declare-fun b!4267766 () Bool)

(assert (=> b!4267766 (= e!2649759 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun b!4267767 () Bool)

(declare-fun lt!1512132 () Unit!66169)

(declare-fun lt!1512129 () Unit!66169)

(assert (=> b!4267767 (= lt!1512132 lt!1512129)))

(declare-fun lt!1512133 () List!47401)

(assert (=> b!4267767 (= (++!12055 (++!12055 lt!1512133 lt!1512131) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))) (++!12055 lt!1512133 call!294079))))

(assert (=> b!4267767 (= lt!1512129 (lemmaConcatAssociativity!2698 lt!1512133 lt!1512131 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (=> b!4267767 (= lt!1512131 (list!17094 (right!35397 (left!35067 (c!725567 x!738716)))))))

(assert (=> b!4267767 (= lt!1512133 (list!17094 (left!35067 (left!35067 (c!725567 x!738716)))))))

(assert (=> b!4267767 (= e!2649758 (efficientList!438 (left!35067 (left!35067 (c!725567 x!738716))) (efficientList!438 (right!35397 (left!35067 (c!725567 x!738716))) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4267768 () Bool)

(assert (=> b!4267768 (= e!2649759 e!2649758)))

(assert (=> b!4267768 (= c!725729 ((_ is Leaf!22044) (left!35067 (c!725567 x!738716))))))

(assert (= (and d!1258183 c!725730) b!4267766))

(assert (= (and d!1258183 (not c!725730)) b!4267768))

(assert (= (and b!4267768 c!725729) b!4267765))

(assert (= (and b!4267768 (not c!725729)) b!4267767))

(assert (= (or b!4267765 b!4267767) bm!294074))

(assert (= (and bm!294074 c!725731) b!4267763))

(assert (= (and bm!294074 (not c!725731)) b!4267764))

(assert (=> bm!294074 m!4859287))

(declare-fun m!4859835 () Bool)

(assert (=> bm!294074 m!4859835))

(declare-fun m!4859837 () Bool)

(assert (=> b!4267763 m!4859837))

(assert (=> d!1258183 m!4859223))

(assert (=> d!1258183 m!4859223))

(assert (=> d!1258183 m!4859287))

(declare-fun m!4859839 () Bool)

(assert (=> d!1258183 m!4859839))

(declare-fun m!4859841 () Bool)

(assert (=> b!4267767 m!4859841))

(declare-fun m!4859843 () Bool)

(assert (=> b!4267767 m!4859843))

(declare-fun m!4859845 () Bool)

(assert (=> b!4267767 m!4859845))

(assert (=> b!4267767 m!4859471))

(assert (=> b!4267767 m!4859845))

(assert (=> b!4267767 m!4859287))

(declare-fun m!4859847 () Bool)

(assert (=> b!4267767 m!4859847))

(declare-fun m!4859849 () Bool)

(assert (=> b!4267767 m!4859849))

(assert (=> b!4267767 m!4859287))

(assert (=> b!4267767 m!4859841))

(assert (=> b!4267767 m!4859473))

(assert (=> b!4267767 m!4859287))

(declare-fun m!4859851 () Bool)

(assert (=> b!4267767 m!4859851))

(assert (=> b!4267471 d!1258183))

(declare-fun b!4267769 () Bool)

(declare-fun e!2649761 () List!47401)

(assert (=> b!4267769 (= e!2649761 call!294076)))

(declare-fun b!4267771 () Bool)

(declare-fun res!1753509 () Bool)

(declare-fun e!2649762 () Bool)

(assert (=> b!4267771 (=> (not res!1753509) (not e!2649762))))

(declare-fun lt!1512134 () List!47401)

(assert (=> b!4267771 (= res!1753509 (= (size!34629 lt!1512134) (+ (size!34629 lt!1512061) (size!34629 call!294076))))))

(declare-fun b!4267772 () Bool)

(assert (=> b!4267772 (= e!2649762 (or (not (= call!294076 Nil!47277)) (= lt!1512134 lt!1512061)))))

(declare-fun d!1258185 () Bool)

(assert (=> d!1258185 e!2649762))

(declare-fun res!1753508 () Bool)

(assert (=> d!1258185 (=> (not res!1753508) (not e!2649762))))

(assert (=> d!1258185 (= res!1753508 (= (content!7472 lt!1512134) ((_ map or) (content!7472 lt!1512061) (content!7472 call!294076))))))

(assert (=> d!1258185 (= lt!1512134 e!2649761)))

(declare-fun c!725732 () Bool)

(assert (=> d!1258185 (= c!725732 ((_ is Nil!47277) lt!1512061))))

(assert (=> d!1258185 (= (++!12055 lt!1512061 call!294076) lt!1512134)))

(declare-fun b!4267770 () Bool)

(assert (=> b!4267770 (= e!2649761 (Cons!47277 (h!52697 lt!1512061) (++!12055 (t!353527 lt!1512061) call!294076)))))

(assert (= (and d!1258185 c!725732) b!4267769))

(assert (= (and d!1258185 (not c!725732)) b!4267770))

(assert (= (and d!1258185 res!1753508) b!4267771))

(assert (= (and b!4267771 res!1753509) b!4267772))

(declare-fun m!4859853 () Bool)

(assert (=> b!4267771 m!4859853))

(assert (=> b!4267771 m!4859807))

(declare-fun m!4859855 () Bool)

(assert (=> b!4267771 m!4859855))

(declare-fun m!4859857 () Bool)

(assert (=> d!1258185 m!4859857))

(assert (=> d!1258185 m!4859813))

(declare-fun m!4859859 () Bool)

(assert (=> d!1258185 m!4859859))

(declare-fun m!4859861 () Bool)

(assert (=> b!4267770 m!4859861))

(assert (=> b!4267471 d!1258185))

(declare-fun bm!294075 () Bool)

(declare-fun c!725735 () Bool)

(declare-fun c!725733 () Bool)

(assert (=> bm!294075 (= c!725735 c!725733)))

(declare-fun call!294080 () List!47401)

(declare-fun e!2649765 () List!47401)

(assert (=> bm!294075 (= call!294080 (++!12055 e!2649765 (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun b!4267773 () Bool)

(assert (=> b!4267773 (= e!2649765 (efficientList!440 (xs!17565 (right!35397 (c!725567 x!738716)))))))

(declare-fun d!1258187 () Bool)

(declare-fun lt!1512136 () List!47401)

(assert (=> d!1258187 (= lt!1512136 (++!12055 (list!17094 (right!35397 (c!725567 x!738716))) (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun e!2649764 () List!47401)

(assert (=> d!1258187 (= lt!1512136 e!2649764)))

(declare-fun c!725734 () Bool)

(assert (=> d!1258187 (= c!725734 ((_ is Empty!14259) (right!35397 (c!725567 x!738716))))))

(assert (=> d!1258187 (= (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512136)))

(declare-fun b!4267774 () Bool)

(declare-fun lt!1512137 () List!47401)

(assert (=> b!4267774 (= e!2649765 lt!1512137)))

(declare-fun b!4267775 () Bool)

(declare-fun e!2649763 () List!47401)

(assert (=> b!4267775 (= e!2649763 call!294080)))

(declare-fun b!4267776 () Bool)

(assert (=> b!4267776 (= e!2649764 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267777 () Bool)

(declare-fun lt!1512138 () Unit!66169)

(declare-fun lt!1512135 () Unit!66169)

(assert (=> b!4267777 (= lt!1512138 lt!1512135)))

(declare-fun lt!1512139 () List!47401)

(assert (=> b!4267777 (= (++!12055 (++!12055 lt!1512139 lt!1512137) (efficientList$default$2!152 (c!725567 x!738716))) (++!12055 lt!1512139 call!294080))))

(assert (=> b!4267777 (= lt!1512135 (lemmaConcatAssociativity!2698 lt!1512139 lt!1512137 (efficientList$default$2!152 (c!725567 x!738716))))))

(assert (=> b!4267777 (= lt!1512137 (list!17094 (right!35397 (right!35397 (c!725567 x!738716)))))))

(assert (=> b!4267777 (= lt!1512139 (list!17094 (left!35067 (right!35397 (c!725567 x!738716)))))))

(assert (=> b!4267777 (= e!2649763 (efficientList!438 (left!35067 (right!35397 (c!725567 x!738716))) (efficientList!438 (right!35397 (right!35397 (c!725567 x!738716))) (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun b!4267778 () Bool)

(assert (=> b!4267778 (= e!2649764 e!2649763)))

(assert (=> b!4267778 (= c!725733 ((_ is Leaf!22044) (right!35397 (c!725567 x!738716))))))

(assert (= (and d!1258187 c!725734) b!4267776))

(assert (= (and d!1258187 (not c!725734)) b!4267778))

(assert (= (and b!4267778 c!725733) b!4267775))

(assert (= (and b!4267778 (not c!725733)) b!4267777))

(assert (= (or b!4267775 b!4267777) bm!294075))

(assert (= (and bm!294075 c!725735) b!4267773))

(assert (= (and bm!294075 (not c!725735)) b!4267774))

(assert (=> bm!294075 m!4859233))

(declare-fun m!4859863 () Bool)

(assert (=> bm!294075 m!4859863))

(declare-fun m!4859865 () Bool)

(assert (=> b!4267773 m!4859865))

(assert (=> d!1258187 m!4859225))

(assert (=> d!1258187 m!4859225))

(assert (=> d!1258187 m!4859233))

(declare-fun m!4859867 () Bool)

(assert (=> d!1258187 m!4859867))

(declare-fun m!4859869 () Bool)

(assert (=> b!4267777 m!4859869))

(declare-fun m!4859871 () Bool)

(assert (=> b!4267777 m!4859871))

(declare-fun m!4859873 () Bool)

(assert (=> b!4267777 m!4859873))

(assert (=> b!4267777 m!4859479))

(assert (=> b!4267777 m!4859873))

(assert (=> b!4267777 m!4859233))

(declare-fun m!4859875 () Bool)

(assert (=> b!4267777 m!4859875))

(declare-fun m!4859877 () Bool)

(assert (=> b!4267777 m!4859877))

(assert (=> b!4267777 m!4859233))

(assert (=> b!4267777 m!4859869))

(assert (=> b!4267777 m!4859481))

(assert (=> b!4267777 m!4859233))

(declare-fun m!4859879 () Bool)

(assert (=> b!4267777 m!4859879))

(assert (=> b!4267471 d!1258187))

(assert (=> b!4267471 d!1258049))

(declare-fun b!4267791 () Bool)

(declare-fun e!2649770 () Bool)

(declare-fun isEmpty!27999 (Conc!14259) Bool)

(assert (=> b!4267791 (= e!2649770 (not (isEmpty!27999 (right!35397 (c!725567 x!738716)))))))

(declare-fun d!1258189 () Bool)

(declare-fun res!1753524 () Bool)

(declare-fun e!2649771 () Bool)

(assert (=> d!1258189 (=> res!1753524 e!2649771)))

(assert (=> d!1258189 (= res!1753524 (not ((_ is Node!14259) (c!725567 x!738716))))))

(assert (=> d!1258189 (= (isBalanced!3816 (c!725567 x!738716)) e!2649771)))

(declare-fun b!4267792 () Bool)

(declare-fun res!1753523 () Bool)

(assert (=> b!4267792 (=> (not res!1753523) (not e!2649770))))

(assert (=> b!4267792 (= res!1753523 (not (isEmpty!27999 (left!35067 (c!725567 x!738716)))))))

(declare-fun b!4267793 () Bool)

(declare-fun res!1753522 () Bool)

(assert (=> b!4267793 (=> (not res!1753522) (not e!2649770))))

(assert (=> b!4267793 (= res!1753522 (<= (- (height!1878 (left!35067 (c!725567 x!738716))) (height!1878 (right!35397 (c!725567 x!738716)))) 1))))

(declare-fun b!4267794 () Bool)

(declare-fun res!1753527 () Bool)

(assert (=> b!4267794 (=> (not res!1753527) (not e!2649770))))

(assert (=> b!4267794 (= res!1753527 (isBalanced!3816 (right!35397 (c!725567 x!738716))))))

(declare-fun b!4267795 () Bool)

(assert (=> b!4267795 (= e!2649771 e!2649770)))

(declare-fun res!1753525 () Bool)

(assert (=> b!4267795 (=> (not res!1753525) (not e!2649770))))

(assert (=> b!4267795 (= res!1753525 (<= (- 1) (- (height!1878 (left!35067 (c!725567 x!738716))) (height!1878 (right!35397 (c!725567 x!738716))))))))

(declare-fun b!4267796 () Bool)

(declare-fun res!1753526 () Bool)

(assert (=> b!4267796 (=> (not res!1753526) (not e!2649770))))

(assert (=> b!4267796 (= res!1753526 (isBalanced!3816 (left!35067 (c!725567 x!738716))))))

(assert (= (and d!1258189 (not res!1753524)) b!4267795))

(assert (= (and b!4267795 res!1753525) b!4267793))

(assert (= (and b!4267793 res!1753522) b!4267796))

(assert (= (and b!4267796 res!1753526) b!4267794))

(assert (= (and b!4267794 res!1753527) b!4267792))

(assert (= (and b!4267792 res!1753523) b!4267791))

(declare-fun m!4859881 () Bool)

(assert (=> b!4267796 m!4859881))

(assert (=> b!4267793 m!4859739))

(assert (=> b!4267793 m!4859741))

(declare-fun m!4859883 () Bool)

(assert (=> b!4267792 m!4859883))

(declare-fun m!4859885 () Bool)

(assert (=> b!4267791 m!4859885))

(declare-fun m!4859887 () Bool)

(assert (=> b!4267794 m!4859887))

(assert (=> b!4267795 m!4859739))

(assert (=> b!4267795 m!4859741))

(assert (=> d!1257977 d!1258189))

(declare-fun tp!1307629 () Bool)

(declare-fun b!4267797 () Bool)

(declare-fun tp!1307630 () Bool)

(declare-fun e!2649772 () Bool)

(assert (=> b!4267797 (= e!2649772 (and (inv!62239 (left!35067 (left!35067 (c!725567 x!738716)))) tp!1307629 (inv!62239 (right!35397 (left!35067 (c!725567 x!738716)))) tp!1307630))))

(declare-fun b!4267798 () Bool)

(assert (=> b!4267798 (= e!2649772 (inv!62246 (xs!17565 (left!35067 (c!725567 x!738716)))))))

(assert (=> b!4267491 (= tp!1307623 (and (inv!62239 (left!35067 (c!725567 x!738716))) e!2649772))))

(assert (= (and b!4267491 ((_ is Node!14259) (left!35067 (c!725567 x!738716)))) b!4267797))

(assert (= (and b!4267491 ((_ is Leaf!22044) (left!35067 (c!725567 x!738716)))) b!4267798))

(declare-fun m!4859889 () Bool)

(assert (=> b!4267797 m!4859889))

(declare-fun m!4859891 () Bool)

(assert (=> b!4267797 m!4859891))

(declare-fun m!4859893 () Bool)

(assert (=> b!4267798 m!4859893))

(assert (=> b!4267491 m!4859315))

(declare-fun b!4267799 () Bool)

(declare-fun tp!1307631 () Bool)

(declare-fun e!2649774 () Bool)

(declare-fun tp!1307632 () Bool)

(assert (=> b!4267799 (= e!2649774 (and (inv!62239 (left!35067 (right!35397 (c!725567 x!738716)))) tp!1307631 (inv!62239 (right!35397 (right!35397 (c!725567 x!738716)))) tp!1307632))))

(declare-fun b!4267800 () Bool)

(assert (=> b!4267800 (= e!2649774 (inv!62246 (xs!17565 (right!35397 (c!725567 x!738716)))))))

(assert (=> b!4267491 (= tp!1307624 (and (inv!62239 (right!35397 (c!725567 x!738716))) e!2649774))))

(assert (= (and b!4267491 ((_ is Node!14259) (right!35397 (c!725567 x!738716)))) b!4267799))

(assert (= (and b!4267491 ((_ is Leaf!22044) (right!35397 (c!725567 x!738716)))) b!4267800))

(declare-fun m!4859895 () Bool)

(assert (=> b!4267799 m!4859895))

(declare-fun m!4859897 () Bool)

(assert (=> b!4267799 m!4859897))

(declare-fun m!4859899 () Bool)

(assert (=> b!4267800 m!4859899))

(assert (=> b!4267491 m!4859317))

(check-sat (not b!4267767) (not b!4267731) (not b!4267578) (not b!4267568) (not d!1258177) (not b!4267711) (not b!4267562) (not b!4267761) (not b!4267771) (not b!4267773) (not d!1258137) (not b!4267770) (not b!4267722) (not d!1258139) (not b!4267554) (not d!1258173) (not d!1258185) (not b!4267795) (not bm!294075) (not d!1258175) (not b!4267695) (not b!4267732) (not b!4267736) (not b!4267751) (not d!1258149) (not d!1258187) (not b!4267799) (not d!1258029) (not b!4267797) (not b!4267720) (not b!4267691) (not b!4267710) (not d!1258033) (not b!4267744) (not b!4267791) (not b!4267573) (not b!4267757) (not b!4267727) (not b!4267793) (not b!4267777) (not b!4267794) (not b!4267754) (not b!4267792) (not b!4267557) (not d!1258161) (not b!4267544) (not b!4267491) (not b!4267707) (not b!4267796) (not b!4267752) (not b!4267760) (not d!1258181) (not b!4267753) (not b!4267561) (not d!1258133) (not b!4267565) (not b!4267550) (not d!1258163) (not b!4267718) (not b!4267729) (not b!4267552) (not b!4267569) (not d!1258179) (not b!4267756) (not b!4267577) (not b!4267697) (not b!4267698) (not d!1258135) (not b!4267800) (not b!4267740) (not b!4267693) (not b!4267798) (not d!1258167) (not d!1258183) (not b!4267748) (not b!4267738) (not bm!294074) (not b!4267556) (not d!1258141) (not b!4267734) (not b!4267566) (not b!4267763) (not b!4267574) (not b!4267743) (not d!1258171))
(check-sat)
(get-model)

(declare-fun b!4267889 () Bool)

(declare-fun e!2649825 () List!47401)

(assert (=> b!4267889 (= e!2649825 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun b!4267891 () Bool)

(declare-fun res!1753556 () Bool)

(declare-fun e!2649826 () Bool)

(assert (=> b!4267891 (=> (not res!1753556) (not e!2649826))))

(declare-fun lt!1512156 () List!47401)

(assert (=> b!4267891 (= res!1753556 (= (size!34629 lt!1512156) (+ (size!34629 (list!17094 (left!35067 (c!725567 x!738716)))) (size!34629 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))))

(declare-fun b!4267892 () Bool)

(assert (=> b!4267892 (= e!2649826 (or (not (= (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))) Nil!47277)) (= lt!1512156 (list!17094 (left!35067 (c!725567 x!738716))))))))

(declare-fun d!1258261 () Bool)

(assert (=> d!1258261 e!2649826))

(declare-fun res!1753555 () Bool)

(assert (=> d!1258261 (=> (not res!1753555) (not e!2649826))))

(assert (=> d!1258261 (= res!1753555 (= (content!7472 lt!1512156) ((_ map or) (content!7472 (list!17094 (left!35067 (c!725567 x!738716)))) (content!7472 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))))

(assert (=> d!1258261 (= lt!1512156 e!2649825)))

(declare-fun c!725765 () Bool)

(assert (=> d!1258261 (= c!725765 ((_ is Nil!47277) (list!17094 (left!35067 (c!725567 x!738716)))))))

(assert (=> d!1258261 (= (++!12055 (list!17094 (left!35067 (c!725567 x!738716))) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))) lt!1512156)))

(declare-fun b!4267890 () Bool)

(assert (=> b!4267890 (= e!2649825 (Cons!47277 (h!52697 (list!17094 (left!35067 (c!725567 x!738716)))) (++!12055 (t!353527 (list!17094 (left!35067 (c!725567 x!738716)))) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (= (and d!1258261 c!725765) b!4267889))

(assert (= (and d!1258261 (not c!725765)) b!4267890))

(assert (= (and d!1258261 res!1753555) b!4267891))

(assert (= (and b!4267891 res!1753556) b!4267892))

(declare-fun m!4860075 () Bool)

(assert (=> b!4267891 m!4860075))

(assert (=> b!4267891 m!4859223))

(assert (=> b!4267891 m!4859457))

(assert (=> b!4267891 m!4859287))

(declare-fun m!4860077 () Bool)

(assert (=> b!4267891 m!4860077))

(declare-fun m!4860079 () Bool)

(assert (=> d!1258261 m!4860079))

(assert (=> d!1258261 m!4859223))

(assert (=> d!1258261 m!4859463))

(assert (=> d!1258261 m!4859287))

(declare-fun m!4860081 () Bool)

(assert (=> d!1258261 m!4860081))

(assert (=> b!4267890 m!4859287))

(declare-fun m!4860083 () Bool)

(assert (=> b!4267890 m!4860083))

(assert (=> d!1258183 d!1258261))

(assert (=> d!1258183 d!1258049))

(declare-fun b!4267893 () Bool)

(declare-fun e!2649827 () List!47401)

(assert (=> b!4267893 (= e!2649827 (list!17094 (right!35397 (c!725567 x!738716))))))

(declare-fun b!4267895 () Bool)

(declare-fun res!1753558 () Bool)

(declare-fun e!2649828 () Bool)

(assert (=> b!4267895 (=> (not res!1753558) (not e!2649828))))

(declare-fun lt!1512157 () List!47401)

(assert (=> b!4267895 (= res!1753558 (= (size!34629 lt!1512157) (+ (size!34629 (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))) (size!34629 (list!17094 (right!35397 (c!725567 x!738716)))))))))

(declare-fun b!4267896 () Bool)

(assert (=> b!4267896 (= e!2649828 (or (not (= (list!17094 (right!35397 (c!725567 x!738716))) Nil!47277)) (= lt!1512157 (t!353527 (list!17094 (left!35067 (c!725567 x!738716)))))))))

(declare-fun d!1258263 () Bool)

(assert (=> d!1258263 e!2649828))

(declare-fun res!1753557 () Bool)

(assert (=> d!1258263 (=> (not res!1753557) (not e!2649828))))

(assert (=> d!1258263 (= res!1753557 (= (content!7472 lt!1512157) ((_ map or) (content!7472 (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))) (content!7472 (list!17094 (right!35397 (c!725567 x!738716)))))))))

(assert (=> d!1258263 (= lt!1512157 e!2649827)))

(declare-fun c!725766 () Bool)

(assert (=> d!1258263 (= c!725766 ((_ is Nil!47277) (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))))))

(assert (=> d!1258263 (= (++!12055 (t!353527 (list!17094 (left!35067 (c!725567 x!738716)))) (list!17094 (right!35397 (c!725567 x!738716)))) lt!1512157)))

(declare-fun b!4267894 () Bool)

(assert (=> b!4267894 (= e!2649827 (Cons!47277 (h!52697 (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))) (++!12055 (t!353527 (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))) (list!17094 (right!35397 (c!725567 x!738716))))))))

(assert (= (and d!1258263 c!725766) b!4267893))

(assert (= (and d!1258263 (not c!725766)) b!4267894))

(assert (= (and d!1258263 res!1753557) b!4267895))

(assert (= (and b!4267895 res!1753558) b!4267896))

(declare-fun m!4860085 () Bool)

(assert (=> b!4267895 m!4860085))

(declare-fun m!4860087 () Bool)

(assert (=> b!4267895 m!4860087))

(assert (=> b!4267895 m!4859225))

(assert (=> b!4267895 m!4859459))

(declare-fun m!4860089 () Bool)

(assert (=> d!1258263 m!4860089))

(assert (=> d!1258263 m!4859777))

(assert (=> d!1258263 m!4859225))

(assert (=> d!1258263 m!4859465))

(assert (=> b!4267894 m!4859225))

(declare-fun m!4860091 () Bool)

(assert (=> b!4267894 m!4860091))

(assert (=> b!4267556 d!1258263))

(declare-fun d!1258265 () Bool)

(assert (=> d!1258265 (= (list!17092 lt!1512123) (list!17094 (c!725567 lt!1512123)))))

(declare-fun bs!599674 () Bool)

(assert (= bs!599674 d!1258265))

(declare-fun m!4860093 () Bool)

(assert (=> bs!599674 m!4860093))

(assert (=> d!1258173 d!1258265))

(declare-fun d!1258267 () Bool)

(declare-fun e!2649829 () Bool)

(assert (=> d!1258267 e!2649829))

(declare-fun res!1753559 () Bool)

(assert (=> d!1258267 (=> (not res!1753559) (not e!2649829))))

(declare-fun lt!1512158 () Conc!14259)

(assert (=> d!1258267 (= res!1753559 (= (list!17094 lt!1512158) (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))

(assert (=> d!1258267 (= lt!1512158 (choose!26012 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))

(assert (=> d!1258267 (= (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))) lt!1512158)))

(declare-fun b!4267897 () Bool)

(assert (=> b!4267897 (= e!2649829 (isBalanced!3816 lt!1512158))))

(assert (= (and d!1258267 res!1753559) b!4267897))

(declare-fun m!4860095 () Bool)

(assert (=> d!1258267 m!4860095))

(declare-fun m!4860097 () Bool)

(assert (=> d!1258267 m!4860097))

(declare-fun m!4860099 () Bool)

(assert (=> b!4267897 m!4860099))

(assert (=> d!1258173 d!1258267))

(declare-fun b!4267898 () Bool)

(declare-fun e!2649830 () List!47401)

(assert (=> b!4267898 (= e!2649830 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267900 () Bool)

(declare-fun res!1753561 () Bool)

(declare-fun e!2649831 () Bool)

(assert (=> b!4267900 (=> (not res!1753561) (not e!2649831))))

(declare-fun lt!1512159 () List!47401)

(assert (=> b!4267900 (= res!1753561 (= (size!34629 lt!1512159) (+ (size!34629 (list!17094 (right!35397 (c!725567 x!738716)))) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4267901 () Bool)

(assert (=> b!4267901 (= e!2649831 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512159 (list!17094 (right!35397 (c!725567 x!738716))))))))

(declare-fun d!1258269 () Bool)

(assert (=> d!1258269 e!2649831))

(declare-fun res!1753560 () Bool)

(assert (=> d!1258269 (=> (not res!1753560) (not e!2649831))))

(assert (=> d!1258269 (= res!1753560 (= (content!7472 lt!1512159) ((_ map or) (content!7472 (list!17094 (right!35397 (c!725567 x!738716)))) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258269 (= lt!1512159 e!2649830)))

(declare-fun c!725767 () Bool)

(assert (=> d!1258269 (= c!725767 ((_ is Nil!47277) (list!17094 (right!35397 (c!725567 x!738716)))))))

(assert (=> d!1258269 (= (++!12055 (list!17094 (right!35397 (c!725567 x!738716))) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512159)))

(declare-fun b!4267899 () Bool)

(assert (=> b!4267899 (= e!2649830 (Cons!47277 (h!52697 (list!17094 (right!35397 (c!725567 x!738716)))) (++!12055 (t!353527 (list!17094 (right!35397 (c!725567 x!738716)))) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258269 c!725767) b!4267898))

(assert (= (and d!1258269 (not c!725767)) b!4267899))

(assert (= (and d!1258269 res!1753560) b!4267900))

(assert (= (and b!4267900 res!1753561) b!4267901))

(declare-fun m!4860101 () Bool)

(assert (=> b!4267900 m!4860101))

(assert (=> b!4267900 m!4859225))

(assert (=> b!4267900 m!4859459))

(assert (=> b!4267900 m!4859233))

(assert (=> b!4267900 m!4859425))

(declare-fun m!4860103 () Bool)

(assert (=> d!1258269 m!4860103))

(assert (=> d!1258269 m!4859225))

(assert (=> d!1258269 m!4859465))

(assert (=> d!1258269 m!4859233))

(assert (=> d!1258269 m!4859431))

(assert (=> b!4267899 m!4859233))

(declare-fun m!4860105 () Bool)

(assert (=> b!4267899 m!4860105))

(assert (=> d!1258187 d!1258269))

(assert (=> d!1258187 d!1258051))

(declare-fun b!4267903 () Bool)

(declare-fun e!2649832 () List!47401)

(declare-fun e!2649833 () List!47401)

(assert (=> b!4267903 (= e!2649832 e!2649833)))

(declare-fun c!725769 () Bool)

(assert (=> b!4267903 (= c!725769 ((_ is Leaf!22044) (c!725567 lt!1512075)))))

(declare-fun b!4267902 () Bool)

(assert (=> b!4267902 (= e!2649832 Nil!47277)))

(declare-fun b!4267904 () Bool)

(assert (=> b!4267904 (= e!2649833 (list!17096 (xs!17565 (c!725567 lt!1512075))))))

(declare-fun b!4267905 () Bool)

(assert (=> b!4267905 (= e!2649833 (++!12055 (list!17094 (left!35067 (c!725567 lt!1512075))) (list!17094 (right!35397 (c!725567 lt!1512075)))))))

(declare-fun d!1258271 () Bool)

(declare-fun c!725768 () Bool)

(assert (=> d!1258271 (= c!725768 ((_ is Empty!14259) (c!725567 lt!1512075)))))

(assert (=> d!1258271 (= (list!17094 (c!725567 lt!1512075)) e!2649832)))

(assert (= (and d!1258271 c!725768) b!4267902))

(assert (= (and d!1258271 (not c!725768)) b!4267903))

(assert (= (and b!4267903 c!725769) b!4267904))

(assert (= (and b!4267903 (not c!725769)) b!4267905))

(declare-fun m!4860107 () Bool)

(assert (=> b!4267904 m!4860107))

(declare-fun m!4860109 () Bool)

(assert (=> b!4267905 m!4860109))

(declare-fun m!4860111 () Bool)

(assert (=> b!4267905 m!4860111))

(assert (=> b!4267905 m!4860109))

(assert (=> b!4267905 m!4860111))

(declare-fun m!4860113 () Bool)

(assert (=> b!4267905 m!4860113))

(assert (=> d!1258161 d!1258271))

(declare-fun d!1258273 () Bool)

(declare-fun lt!1512160 () List!47401)

(assert (=> d!1258273 (= lt!1512160 (list!17092 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))

(assert (=> d!1258273 (= lt!1512160 (efficientList!438 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))) (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(assert (=> d!1258273 (= (efficientList!436 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))) lt!1512160)))

(declare-fun bs!599675 () Bool)

(assert (= bs!599675 d!1258273))

(assert (=> bs!599675 m!4859151))

(assert (=> bs!599675 m!4859153))

(declare-fun m!4860115 () Bool)

(assert (=> bs!599675 m!4860115))

(assert (=> bs!599675 m!4860115))

(declare-fun m!4860117 () Bool)

(assert (=> bs!599675 m!4860117))

(assert (=> d!1258171 d!1258273))

(declare-fun d!1258275 () Bool)

(declare-fun c!725770 () Bool)

(assert (=> d!1258275 (= c!725770 ((_ is Nil!47277) lt!1512124))))

(declare-fun e!2649834 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258275 (= (content!7472 lt!1512124) e!2649834)))

(declare-fun b!4267906 () Bool)

(assert (=> b!4267906 (= e!2649834 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267907 () Bool)

(assert (=> b!4267907 (= e!2649834 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512124) true) (content!7472 (t!353527 lt!1512124))))))

(assert (= (and d!1258275 c!725770) b!4267906))

(assert (= (and d!1258275 (not c!725770)) b!4267907))

(declare-fun m!4860119 () Bool)

(assert (=> b!4267907 m!4860119))

(declare-fun m!4860121 () Bool)

(assert (=> b!4267907 m!4860121))

(assert (=> d!1258177 d!1258275))

(declare-fun d!1258277 () Bool)

(declare-fun c!725771 () Bool)

(assert (=> d!1258277 (= c!725771 ((_ is Nil!47277) lt!1512061))))

(declare-fun e!2649835 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258277 (= (content!7472 lt!1512061) e!2649835)))

(declare-fun b!4267908 () Bool)

(assert (=> b!4267908 (= e!2649835 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267909 () Bool)

(assert (=> b!4267909 (= e!2649835 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512061) true) (content!7472 (t!353527 lt!1512061))))))

(assert (= (and d!1258277 c!725771) b!4267908))

(assert (= (and d!1258277 (not c!725771)) b!4267909))

(declare-fun m!4860123 () Bool)

(assert (=> b!4267909 m!4860123))

(declare-fun m!4860125 () Bool)

(assert (=> b!4267909 m!4860125))

(assert (=> d!1258177 d!1258277))

(declare-fun d!1258279 () Bool)

(declare-fun c!725772 () Bool)

(assert (=> d!1258279 (= c!725772 ((_ is Nil!47277) lt!1512059))))

(declare-fun e!2649836 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258279 (= (content!7472 lt!1512059) e!2649836)))

(declare-fun b!4267910 () Bool)

(assert (=> b!4267910 (= e!2649836 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267911 () Bool)

(assert (=> b!4267911 (= e!2649836 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512059) true) (content!7472 (t!353527 lt!1512059))))))

(assert (= (and d!1258279 c!725772) b!4267910))

(assert (= (and d!1258279 (not c!725772)) b!4267911))

(declare-fun m!4860127 () Bool)

(assert (=> b!4267911 m!4860127))

(declare-fun m!4860129 () Bool)

(assert (=> b!4267911 m!4860129))

(assert (=> d!1258177 d!1258279))

(declare-fun b!4267912 () Bool)

(declare-fun e!2649837 () Bool)

(assert (=> b!4267912 (= e!2649837 (not (isEmpty!27999 (right!35397 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277))))))))))))))

(declare-fun d!1258281 () Bool)

(declare-fun res!1753564 () Bool)

(declare-fun e!2649838 () Bool)

(assert (=> d!1258281 (=> res!1753564 e!2649838)))

(assert (=> d!1258281 (= res!1753564 (not ((_ is Node!14259) (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))))

(assert (=> d!1258281 (= (isBalanced!3816 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277))))))))) e!2649838)))

(declare-fun b!4267913 () Bool)

(declare-fun res!1753563 () Bool)

(assert (=> b!4267913 (=> (not res!1753563) (not e!2649837))))

(assert (=> b!4267913 (= res!1753563 (not (isEmpty!27999 (left!35067 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277))))))))))))))

(declare-fun b!4267914 () Bool)

(declare-fun res!1753562 () Bool)

(assert (=> b!4267914 (=> (not res!1753562) (not e!2649837))))

(assert (=> b!4267914 (= res!1753562 (<= (- (height!1878 (left!35067 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))) (height!1878 (right!35397 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277))))))))))) 1))))

(declare-fun b!4267915 () Bool)

(declare-fun res!1753567 () Bool)

(assert (=> b!4267915 (=> (not res!1753567) (not e!2649837))))

(assert (=> b!4267915 (= res!1753567 (isBalanced!3816 (right!35397 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))))

(declare-fun b!4267916 () Bool)

(assert (=> b!4267916 (= e!2649838 e!2649837)))

(declare-fun res!1753565 () Bool)

(assert (=> b!4267916 (=> (not res!1753565) (not e!2649837))))

(assert (=> b!4267916 (= res!1753565 (<= (- 1) (- (height!1878 (left!35067 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))) (height!1878 (right!35397 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))))))

(declare-fun b!4267917 () Bool)

(declare-fun res!1753566 () Bool)

(assert (=> b!4267917 (=> (not res!1753566) (not e!2649837))))

(assert (=> b!4267917 (= res!1753566 (isBalanced!3816 (left!35067 (fromList!920 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))))

(assert (= (and d!1258281 (not res!1753564)) b!4267916))

(assert (= (and b!4267916 res!1753565) b!4267914))

(assert (= (and b!4267914 res!1753562) b!4267917))

(assert (= (and b!4267917 res!1753566) b!4267915))

(assert (= (and b!4267915 res!1753567) b!4267913))

(assert (= (and b!4267913 res!1753563) b!4267912))

(declare-fun m!4860131 () Bool)

(assert (=> b!4267917 m!4860131))

(declare-fun m!4860133 () Bool)

(assert (=> b!4267914 m!4860133))

(declare-fun m!4860135 () Bool)

(assert (=> b!4267914 m!4860135))

(declare-fun m!4860137 () Bool)

(assert (=> b!4267913 m!4860137))

(declare-fun m!4860139 () Bool)

(assert (=> b!4267912 m!4860139))

(declare-fun m!4860141 () Bool)

(assert (=> b!4267915 m!4860141))

(assert (=> b!4267916 m!4860133))

(assert (=> b!4267916 m!4860135))

(assert (=> b!4267544 d!1258281))

(assert (=> b!4267544 d!1258163))

(declare-fun d!1258283 () Bool)

(declare-fun c!725773 () Bool)

(assert (=> d!1258283 (= c!725773 ((_ is Nil!47277) (t!353527 lt!1512072)))))

(declare-fun e!2649839 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258283 (= (content!7472 (t!353527 lt!1512072)) e!2649839)))

(declare-fun b!4267918 () Bool)

(assert (=> b!4267918 (= e!2649839 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267919 () Bool)

(assert (=> b!4267919 (= e!2649839 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 lt!1512072)) true) (content!7472 (t!353527 (t!353527 lt!1512072)))))))

(assert (= (and d!1258283 c!725773) b!4267918))

(assert (= (and d!1258283 (not c!725773)) b!4267919))

(declare-fun m!4860143 () Bool)

(assert (=> b!4267919 m!4860143))

(declare-fun m!4860145 () Bool)

(assert (=> b!4267919 m!4860145))

(assert (=> b!4267550 d!1258283))

(declare-fun d!1258285 () Bool)

(assert (=> d!1258285 (= (seqFromList!5852 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277))))))) (fromListB!2660 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277))))))))))

(declare-fun bs!599676 () Bool)

(assert (= bs!599676 d!1258285))

(declare-fun m!4860147 () Bool)

(assert (=> bs!599676 m!4860147))

(assert (=> d!1258029 d!1258285))

(declare-fun d!1258287 () Bool)

(declare-fun e!2649840 () Bool)

(assert (=> d!1258287 e!2649840))

(declare-fun res!1753568 () Bool)

(assert (=> d!1258287 (=> (not res!1753568) (not e!2649840))))

(declare-fun lt!1512161 () BalanceConc!28028)

(assert (=> d!1258287 (= res!1753568 (= (list!17092 lt!1512161) (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))))))

(assert (=> d!1258287 (= lt!1512161 (BalanceConc!28029 (fromList!920 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277))))))))))))

(assert (=> d!1258287 (= (fromListB!2660 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))) lt!1512161)))

(declare-fun b!4267920 () Bool)

(assert (=> b!4267920 (= e!2649840 (isBalanced!3816 (fromList!920 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277))))))))))))

(assert (= (and d!1258287 res!1753568) b!4267920))

(declare-fun m!4860149 () Bool)

(assert (=> d!1258287 m!4860149))

(declare-fun m!4860151 () Bool)

(assert (=> d!1258287 m!4860151))

(assert (=> b!4267920 m!4860151))

(assert (=> b!4267920 m!4860151))

(declare-fun m!4860153 () Bool)

(assert (=> b!4267920 m!4860153))

(assert (=> d!1258175 d!1258287))

(declare-fun b!4267921 () Bool)

(declare-fun e!2649841 () List!47401)

(assert (=> b!4267921 (= e!2649841 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun b!4267923 () Bool)

(declare-fun res!1753570 () Bool)

(declare-fun e!2649842 () Bool)

(assert (=> b!4267923 (=> (not res!1753570) (not e!2649842))))

(declare-fun lt!1512162 () List!47401)

(assert (=> b!4267923 (= res!1753570 (= (size!34629 lt!1512162) (+ (size!34629 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (size!34629 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun b!4267924 () Bool)

(assert (=> b!4267924 (= e!2649842 (or (not (= (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) Nil!47277)) (= lt!1512162 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258289 () Bool)

(assert (=> d!1258289 e!2649842))

(declare-fun res!1753569 () Bool)

(assert (=> d!1258289 (=> (not res!1753569) (not e!2649842))))

(assert (=> d!1258289 (= res!1753569 (= (content!7472 lt!1512162) ((_ map or) (content!7472 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (content!7472 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (=> d!1258289 (= lt!1512162 e!2649841)))

(declare-fun c!725774 () Bool)

(assert (=> d!1258289 (= c!725774 ((_ is Nil!47277) (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(assert (=> d!1258289 (= (++!12055 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) lt!1512162)))

(declare-fun b!4267922 () Bool)

(assert (=> b!4267922 (= e!2649841 (Cons!47277 (h!52697 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (++!12055 (t!353527 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(assert (= (and d!1258289 c!725774) b!4267921))

(assert (= (and d!1258289 (not c!725774)) b!4267922))

(assert (= (and d!1258289 res!1753569) b!4267923))

(assert (= (and b!4267923 res!1753570) b!4267924))

(declare-fun m!4860155 () Bool)

(assert (=> b!4267923 m!4860155))

(declare-fun m!4860157 () Bool)

(assert (=> b!4267923 m!4860157))

(assert (=> b!4267923 m!4859217))

(assert (=> b!4267923 m!4859489))

(declare-fun m!4860159 () Bool)

(assert (=> d!1258289 m!4860159))

(assert (=> d!1258289 m!4859717))

(assert (=> d!1258289 m!4859217))

(assert (=> d!1258289 m!4859495))

(assert (=> b!4267922 m!4859217))

(declare-fun m!4860161 () Bool)

(assert (=> b!4267922 m!4860161))

(assert (=> b!4267568 d!1258289))

(declare-fun d!1258291 () Bool)

(declare-fun e!2649843 () Bool)

(assert (=> d!1258291 e!2649843))

(declare-fun res!1753571 () Bool)

(assert (=> d!1258291 (=> (not res!1753571) (not e!2649843))))

(declare-fun lt!1512163 () BalanceConc!28028)

(assert (=> d!1258291 (= res!1753571 (= (list!17092 lt!1512163) (value!248629 (toValue!15 thiss!2386 x!738716))))))

(assert (=> d!1258291 (= lt!1512163 (BalanceConc!28029 (fromList!920 (value!248629 (toValue!15 thiss!2386 x!738716)))))))

(assert (=> d!1258291 (= (fromListB!2660 (value!248629 (toValue!15 thiss!2386 x!738716))) lt!1512163)))

(declare-fun b!4267925 () Bool)

(assert (=> b!4267925 (= e!2649843 (isBalanced!3816 (fromList!920 (value!248629 (toValue!15 thiss!2386 x!738716)))))))

(assert (= (and d!1258291 res!1753571) b!4267925))

(declare-fun m!4860163 () Bool)

(assert (=> d!1258291 m!4860163))

(declare-fun m!4860165 () Bool)

(assert (=> d!1258291 m!4860165))

(assert (=> b!4267925 m!4860165))

(assert (=> b!4267925 m!4860165))

(declare-fun m!4860167 () Bool)

(assert (=> b!4267925 m!4860167))

(assert (=> d!1258033 d!1258291))

(declare-fun d!1258293 () Bool)

(declare-fun c!725775 () Bool)

(assert (=> d!1258293 (= c!725775 ((_ is Nil!47277) (t!353527 (list!17094 (c!725567 x!738716)))))))

(declare-fun e!2649844 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258293 (= (content!7472 (t!353527 (list!17094 (c!725567 x!738716)))) e!2649844)))

(declare-fun b!4267926 () Bool)

(assert (=> b!4267926 (= e!2649844 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267927 () Bool)

(assert (=> b!4267927 (= e!2649844 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 (list!17094 (c!725567 x!738716)))) true) (content!7472 (t!353527 (t!353527 (list!17094 (c!725567 x!738716)))))))))

(assert (= (and d!1258293 c!725775) b!4267926))

(assert (= (and d!1258293 (not c!725775)) b!4267927))

(declare-fun m!4860169 () Bool)

(assert (=> b!4267927 m!4860169))

(declare-fun m!4860171 () Bool)

(assert (=> b!4267927 m!4860171))

(assert (=> b!4267552 d!1258293))

(declare-fun b!4267929 () Bool)

(declare-fun e!2649845 () List!47401)

(declare-fun e!2649846 () List!47401)

(assert (=> b!4267929 (= e!2649845 e!2649846)))

(declare-fun c!725777 () Bool)

(assert (=> b!4267929 (= c!725777 ((_ is Leaf!22044) lt!1512121))))

(declare-fun b!4267928 () Bool)

(assert (=> b!4267928 (= e!2649845 Nil!47277)))

(declare-fun b!4267930 () Bool)

(assert (=> b!4267930 (= e!2649846 (list!17096 (xs!17565 lt!1512121)))))

(declare-fun b!4267931 () Bool)

(assert (=> b!4267931 (= e!2649846 (++!12055 (list!17094 (left!35067 lt!1512121)) (list!17094 (right!35397 lt!1512121))))))

(declare-fun d!1258295 () Bool)

(declare-fun c!725776 () Bool)

(assert (=> d!1258295 (= c!725776 ((_ is Empty!14259) lt!1512121))))

(assert (=> d!1258295 (= (list!17094 lt!1512121) e!2649845)))

(assert (= (and d!1258295 c!725776) b!4267928))

(assert (= (and d!1258295 (not c!725776)) b!4267929))

(assert (= (and b!4267929 c!725777) b!4267930))

(assert (= (and b!4267929 (not c!725777)) b!4267931))

(declare-fun m!4860173 () Bool)

(assert (=> b!4267930 m!4860173))

(declare-fun m!4860175 () Bool)

(assert (=> b!4267931 m!4860175))

(declare-fun m!4860177 () Bool)

(assert (=> b!4267931 m!4860177))

(assert (=> b!4267931 m!4860175))

(assert (=> b!4267931 m!4860177))

(declare-fun m!4860179 () Bool)

(assert (=> b!4267931 m!4860179))

(assert (=> d!1258163 d!1258295))

(declare-fun d!1258297 () Bool)

(declare-fun e!2649853 () Bool)

(assert (=> d!1258297 e!2649853))

(declare-fun res!1753576 () Bool)

(assert (=> d!1258297 (=> (not res!1753576) (not e!2649853))))

(declare-fun res!1753577 () Conc!14259)

(assert (=> d!1258297 (= res!1753576 (= (list!17094 res!1753577) (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))))))

(declare-fun e!2649854 () Bool)

(assert (=> d!1258297 (and (inv!62239 res!1753577) e!2649854)))

(assert (=> d!1258297 (= (choose!26012 (Cons!47277 #x0049 (Cons!47277 #x006E (Cons!47277 #x0074 (Cons!47277 #x0028 (Cons!47277 #x0033 (Cons!47277 #x0032 (Cons!47277 #x0029 Nil!47277)))))))) res!1753577)))

(declare-fun tp!1307643 () Bool)

(declare-fun tp!1307644 () Bool)

(declare-fun b!4267938 () Bool)

(assert (=> b!4267938 (= e!2649854 (and (inv!62239 (left!35067 res!1753577)) tp!1307644 (inv!62239 (right!35397 res!1753577)) tp!1307643))))

(declare-fun b!4267939 () Bool)

(assert (=> b!4267939 (= e!2649854 (inv!62246 (xs!17565 res!1753577)))))

(declare-fun b!4267940 () Bool)

(assert (=> b!4267940 (= e!2649853 (isBalanced!3816 res!1753577))))

(assert (= (and d!1258297 ((_ is Node!14259) res!1753577)) b!4267938))

(assert (= (and d!1258297 ((_ is Leaf!22044) res!1753577)) b!4267939))

(assert (= (and d!1258297 res!1753576) b!4267940))

(declare-fun m!4860181 () Bool)

(assert (=> d!1258297 m!4860181))

(declare-fun m!4860183 () Bool)

(assert (=> d!1258297 m!4860183))

(declare-fun m!4860185 () Bool)

(assert (=> b!4267938 m!4860185))

(declare-fun m!4860187 () Bool)

(assert (=> b!4267938 m!4860187))

(declare-fun m!4860189 () Bool)

(assert (=> b!4267939 m!4860189))

(declare-fun m!4860191 () Bool)

(assert (=> b!4267940 m!4860191))

(assert (=> d!1258163 d!1258297))

(declare-fun b!4267941 () Bool)

(declare-fun e!2649856 () List!47401)

(assert (=> b!4267941 (= e!2649856 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))))))

(declare-fun b!4267943 () Bool)

(declare-fun res!1753579 () Bool)

(declare-fun e!2649857 () Bool)

(assert (=> b!4267943 (=> (not res!1753579) (not e!2649857))))

(declare-fun lt!1512164 () List!47401)

(assert (=> b!4267943 (= res!1753579 (= (size!34629 lt!1512164) (+ (size!34629 lt!1512061) (size!34629 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))))))))

(declare-fun b!4267944 () Bool)

(assert (=> b!4267944 (= e!2649857 (or (not (= (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))) Nil!47277)) (= lt!1512164 lt!1512061)))))

(declare-fun d!1258299 () Bool)

(assert (=> d!1258299 e!2649857))

(declare-fun res!1753578 () Bool)

(assert (=> d!1258299 (=> (not res!1753578) (not e!2649857))))

(assert (=> d!1258299 (= res!1753578 (= (content!7472 lt!1512164) ((_ map or) (content!7472 lt!1512061) (content!7472 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))))))))

(assert (=> d!1258299 (= lt!1512164 e!2649856)))

(declare-fun c!725778 () Bool)

(assert (=> d!1258299 (= c!725778 ((_ is Nil!47277) lt!1512061))))

(assert (=> d!1258299 (= (++!12055 lt!1512061 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))) lt!1512164)))

(declare-fun b!4267942 () Bool)

(assert (=> b!4267942 (= e!2649856 (Cons!47277 (h!52697 lt!1512061) (++!12055 (t!353527 lt!1512061) (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (= (and d!1258299 c!725778) b!4267941))

(assert (= (and d!1258299 (not c!725778)) b!4267942))

(assert (= (and d!1258299 res!1753578) b!4267943))

(assert (= (and b!4267943 res!1753579) b!4267944))

(declare-fun m!4860193 () Bool)

(assert (=> b!4267943 m!4860193))

(assert (=> b!4267943 m!4859807))

(assert (=> b!4267943 m!4859821))

(declare-fun m!4860195 () Bool)

(assert (=> b!4267943 m!4860195))

(declare-fun m!4860197 () Bool)

(assert (=> d!1258299 m!4860197))

(assert (=> d!1258299 m!4859813))

(assert (=> d!1258299 m!4859821))

(declare-fun m!4860199 () Bool)

(assert (=> d!1258299 m!4860199))

(assert (=> b!4267942 m!4859821))

(declare-fun m!4860201 () Bool)

(assert (=> b!4267942 m!4860201))

(assert (=> d!1258179 d!1258299))

(assert (=> d!1258179 d!1258181))

(declare-fun d!1258301 () Bool)

(assert (=> d!1258301 (= (++!12055 (++!12055 lt!1512061 lt!1512059) (efficientList$default$2!152 (c!725567 x!738716))) (++!12055 lt!1512061 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (=> d!1258301 true))

(declare-fun _$15!509 () Unit!66169)

(assert (=> d!1258301 (= (choose!26013 lt!1512061 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))) _$15!509)))

(declare-fun bs!599677 () Bool)

(assert (= bs!599677 d!1258301))

(assert (=> bs!599677 m!4859291))

(assert (=> bs!599677 m!4859291))

(assert (=> bs!599677 m!4859233))

(assert (=> bs!599677 m!4859293))

(assert (=> bs!599677 m!4859233))

(assert (=> bs!599677 m!4859821))

(assert (=> bs!599677 m!4859821))

(assert (=> bs!599677 m!4859823))

(assert (=> d!1258179 d!1258301))

(assert (=> d!1258179 d!1258177))

(declare-fun b!4267945 () Bool)

(declare-fun e!2649858 () List!47401)

(assert (=> b!4267945 (= e!2649858 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4267947 () Bool)

(declare-fun res!1753581 () Bool)

(declare-fun e!2649859 () Bool)

(assert (=> b!4267947 (=> (not res!1753581) (not e!2649859))))

(declare-fun lt!1512165 () List!47401)

(assert (=> b!4267947 (= res!1753581 (= (size!34629 lt!1512165) (+ (size!34629 lt!1512059) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4267948 () Bool)

(assert (=> b!4267948 (= e!2649859 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512165 lt!1512059)))))

(declare-fun d!1258303 () Bool)

(assert (=> d!1258303 e!2649859))

(declare-fun res!1753580 () Bool)

(assert (=> d!1258303 (=> (not res!1753580) (not e!2649859))))

(assert (=> d!1258303 (= res!1753580 (= (content!7472 lt!1512165) ((_ map or) (content!7472 lt!1512059) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258303 (= lt!1512165 e!2649858)))

(declare-fun c!725779 () Bool)

(assert (=> d!1258303 (= c!725779 ((_ is Nil!47277) lt!1512059))))

(assert (=> d!1258303 (= (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716))) lt!1512165)))

(declare-fun b!4267946 () Bool)

(assert (=> b!4267946 (= e!2649858 (Cons!47277 (h!52697 lt!1512059) (++!12055 (t!353527 lt!1512059) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258303 c!725779) b!4267945))

(assert (= (and d!1258303 (not c!725779)) b!4267946))

(assert (= (and d!1258303 res!1753580) b!4267947))

(assert (= (and b!4267947 res!1753581) b!4267948))

(declare-fun m!4860203 () Bool)

(assert (=> b!4267947 m!4860203))

(assert (=> b!4267947 m!4859809))

(assert (=> b!4267947 m!4859233))

(assert (=> b!4267947 m!4859425))

(declare-fun m!4860205 () Bool)

(assert (=> d!1258303 m!4860205))

(assert (=> d!1258303 m!4859815))

(assert (=> d!1258303 m!4859233))

(assert (=> d!1258303 m!4859431))

(assert (=> b!4267946 m!4859233))

(declare-fun m!4860207 () Bool)

(assert (=> b!4267946 m!4860207))

(assert (=> d!1258179 d!1258303))

(declare-fun d!1258305 () Bool)

(declare-fun lt!1512166 () Int)

(assert (=> d!1258305 (>= lt!1512166 0)))

(declare-fun e!2649860 () Int)

(assert (=> d!1258305 (= lt!1512166 e!2649860)))

(declare-fun c!725780 () Bool)

(assert (=> d!1258305 (= c!725780 ((_ is Nil!47277) lt!1512076))))

(assert (=> d!1258305 (= (size!34629 lt!1512076) lt!1512166)))

(declare-fun b!4267949 () Bool)

(assert (=> b!4267949 (= e!2649860 0)))

(declare-fun b!4267950 () Bool)

(assert (=> b!4267950 (= e!2649860 (+ 1 (size!34629 (t!353527 lt!1512076))))))

(assert (= (and d!1258305 c!725780) b!4267949))

(assert (= (and d!1258305 (not c!725780)) b!4267950))

(declare-fun m!4860209 () Bool)

(assert (=> b!4267950 m!4860209))

(assert (=> b!4267557 d!1258305))

(declare-fun d!1258307 () Bool)

(declare-fun lt!1512167 () Int)

(assert (=> d!1258307 (>= lt!1512167 0)))

(declare-fun e!2649861 () Int)

(assert (=> d!1258307 (= lt!1512167 e!2649861)))

(declare-fun c!725781 () Bool)

(assert (=> d!1258307 (= c!725781 ((_ is Nil!47277) (list!17094 (left!35067 (c!725567 x!738716)))))))

(assert (=> d!1258307 (= (size!34629 (list!17094 (left!35067 (c!725567 x!738716)))) lt!1512167)))

(declare-fun b!4267951 () Bool)

(assert (=> b!4267951 (= e!2649861 0)))

(declare-fun b!4267952 () Bool)

(assert (=> b!4267952 (= e!2649861 (+ 1 (size!34629 (t!353527 (list!17094 (left!35067 (c!725567 x!738716)))))))))

(assert (= (and d!1258307 c!725781) b!4267951))

(assert (= (and d!1258307 (not c!725781)) b!4267952))

(assert (=> b!4267952 m!4860087))

(assert (=> b!4267557 d!1258307))

(declare-fun d!1258309 () Bool)

(declare-fun lt!1512168 () Int)

(assert (=> d!1258309 (>= lt!1512168 0)))

(declare-fun e!2649862 () Int)

(assert (=> d!1258309 (= lt!1512168 e!2649862)))

(declare-fun c!725782 () Bool)

(assert (=> d!1258309 (= c!725782 ((_ is Nil!47277) (list!17094 (right!35397 (c!725567 x!738716)))))))

(assert (=> d!1258309 (= (size!34629 (list!17094 (right!35397 (c!725567 x!738716)))) lt!1512168)))

(declare-fun b!4267953 () Bool)

(assert (=> b!4267953 (= e!2649862 0)))

(declare-fun b!4267954 () Bool)

(assert (=> b!4267954 (= e!2649862 (+ 1 (size!34629 (t!353527 (list!17094 (right!35397 (c!725567 x!738716)))))))))

(assert (= (and d!1258309 c!725782) b!4267953))

(assert (= (and d!1258309 (not c!725782)) b!4267954))

(declare-fun m!4860211 () Bool)

(assert (=> b!4267954 m!4860211))

(assert (=> b!4267557 d!1258309))

(declare-fun d!1258311 () Bool)

(declare-fun c!725783 () Bool)

(assert (=> d!1258311 (= c!725783 ((_ is Nil!47277) lt!1512134))))

(declare-fun e!2649863 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258311 (= (content!7472 lt!1512134) e!2649863)))

(declare-fun b!4267955 () Bool)

(assert (=> b!4267955 (= e!2649863 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267956 () Bool)

(assert (=> b!4267956 (= e!2649863 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512134) true) (content!7472 (t!353527 lt!1512134))))))

(assert (= (and d!1258311 c!725783) b!4267955))

(assert (= (and d!1258311 (not c!725783)) b!4267956))

(declare-fun m!4860213 () Bool)

(assert (=> b!4267956 m!4860213))

(declare-fun m!4860215 () Bool)

(assert (=> b!4267956 m!4860215))

(assert (=> d!1258185 d!1258311))

(assert (=> d!1258185 d!1258277))

(declare-fun d!1258313 () Bool)

(declare-fun c!725784 () Bool)

(assert (=> d!1258313 (= c!725784 ((_ is Nil!47277) call!294076))))

(declare-fun e!2649864 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258313 (= (content!7472 call!294076) e!2649864)))

(declare-fun b!4267957 () Bool)

(assert (=> b!4267957 (= e!2649864 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267958 () Bool)

(assert (=> b!4267958 (= e!2649864 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 call!294076) true) (content!7472 (t!353527 call!294076))))))

(assert (= (and d!1258313 c!725784) b!4267957))

(assert (= (and d!1258313 (not c!725784)) b!4267958))

(declare-fun m!4860217 () Bool)

(assert (=> b!4267958 m!4860217))

(declare-fun m!4860219 () Bool)

(assert (=> b!4267958 m!4860219))

(assert (=> d!1258185 d!1258313))

(declare-fun d!1258315 () Bool)

(declare-fun c!725785 () Bool)

(assert (=> d!1258315 (= c!725785 ((_ is Nil!47277) lt!1512128))))

(declare-fun e!2649865 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258315 (= (content!7472 lt!1512128) e!2649865)))

(declare-fun b!4267959 () Bool)

(assert (=> b!4267959 (= e!2649865 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267960 () Bool)

(assert (=> b!4267960 (= e!2649865 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512128) true) (content!7472 (t!353527 lt!1512128))))))

(assert (= (and d!1258315 c!725785) b!4267959))

(assert (= (and d!1258315 (not c!725785)) b!4267960))

(declare-fun m!4860221 () Bool)

(assert (=> b!4267960 m!4860221))

(declare-fun m!4860223 () Bool)

(assert (=> b!4267960 m!4860223))

(assert (=> d!1258181 d!1258315))

(declare-fun d!1258317 () Bool)

(declare-fun c!725786 () Bool)

(assert (=> d!1258317 (= c!725786 ((_ is Nil!47277) (++!12055 lt!1512061 lt!1512059)))))

(declare-fun e!2649866 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258317 (= (content!7472 (++!12055 lt!1512061 lt!1512059)) e!2649866)))

(declare-fun b!4267961 () Bool)

(assert (=> b!4267961 (= e!2649866 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267962 () Bool)

(assert (=> b!4267962 (= e!2649866 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (++!12055 lt!1512061 lt!1512059)) true) (content!7472 (t!353527 (++!12055 lt!1512061 lt!1512059)))))))

(assert (= (and d!1258317 c!725786) b!4267961))

(assert (= (and d!1258317 (not c!725786)) b!4267962))

(declare-fun m!4860225 () Bool)

(assert (=> b!4267962 m!4860225))

(declare-fun m!4860227 () Bool)

(assert (=> b!4267962 m!4860227))

(assert (=> d!1258181 d!1258317))

(assert (=> d!1258181 d!1258045))

(declare-fun d!1258319 () Bool)

(declare-fun c!725787 () Bool)

(assert (=> d!1258319 (= c!725787 ((_ is Nil!47277) (t!353527 (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun e!2649867 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258319 (= (content!7472 (t!353527 (efficientList$default$2!152 (c!725567 x!738716)))) e!2649867)))

(declare-fun b!4267963 () Bool)

(assert (=> b!4267963 (= e!2649867 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267964 () Bool)

(assert (=> b!4267964 (= e!2649867 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 (efficientList$default$2!152 (c!725567 x!738716)))) true) (content!7472 (t!353527 (t!353527 (efficientList$default$2!152 (c!725567 x!738716)))))))))

(assert (= (and d!1258319 c!725787) b!4267963))

(assert (= (and d!1258319 (not c!725787)) b!4267964))

(declare-fun m!4860229 () Bool)

(assert (=> b!4267964 m!4860229))

(declare-fun m!4860231 () Bool)

(assert (=> b!4267964 m!4860231))

(assert (=> b!4267554 d!1258319))

(declare-fun b!4267966 () Bool)

(declare-fun e!2649868 () List!47401)

(declare-fun e!2649869 () List!47401)

(assert (=> b!4267966 (= e!2649868 e!2649869)))

(declare-fun c!725789 () Bool)

(assert (=> b!4267966 (= c!725789 ((_ is Leaf!22044) (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4267965 () Bool)

(assert (=> b!4267965 (= e!2649868 Nil!47277)))

(declare-fun b!4267967 () Bool)

(assert (=> b!4267967 (= e!2649869 (list!17096 (xs!17565 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun b!4267968 () Bool)

(assert (=> b!4267968 (= e!2649869 (++!12055 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258321 () Bool)

(declare-fun c!725788 () Bool)

(assert (=> d!1258321 (= c!725788 ((_ is Empty!14259) (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258321 (= (list!17094 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) e!2649868)))

(assert (= (and d!1258321 c!725788) b!4267965))

(assert (= (and d!1258321 (not c!725788)) b!4267966))

(assert (= (and b!4267966 c!725789) b!4267967))

(assert (= (and b!4267966 (not c!725789)) b!4267968))

(declare-fun m!4860233 () Bool)

(assert (=> b!4267967 m!4860233))

(declare-fun m!4860235 () Bool)

(assert (=> b!4267968 m!4860235))

(declare-fun m!4860237 () Bool)

(assert (=> b!4267968 m!4860237))

(assert (=> b!4267968 m!4860235))

(assert (=> b!4267968 m!4860237))

(declare-fun m!4860239 () Bool)

(assert (=> b!4267968 m!4860239))

(assert (=> d!1258167 d!1258321))

(declare-fun d!1258323 () Bool)

(declare-fun c!725790 () Bool)

(assert (=> d!1258323 (= c!725790 ((_ is Nil!47277) lt!1512112))))

(declare-fun e!2649870 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258323 (= (content!7472 lt!1512112) e!2649870)))

(declare-fun b!4267969 () Bool)

(assert (=> b!4267969 (= e!2649870 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4267970 () Bool)

(assert (=> b!4267970 (= e!2649870 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512112) true) (content!7472 (t!353527 lt!1512112))))))

(assert (= (and d!1258323 c!725790) b!4267969))

(assert (= (and d!1258323 (not c!725790)) b!4267970))

(declare-fun m!4860241 () Bool)

(assert (=> b!4267970 m!4860241))

(declare-fun m!4860243 () Bool)

(assert (=> b!4267970 m!4860243))

(assert (=> d!1258135 d!1258323))

(assert (=> d!1258135 d!1258293))

(assert (=> d!1258135 d!1258045))

(declare-fun d!1258325 () Bool)

(declare-fun lt!1512169 () Int)

(assert (=> d!1258325 (>= lt!1512169 0)))

(declare-fun e!2649871 () Int)

(assert (=> d!1258325 (= lt!1512169 e!2649871)))

(declare-fun c!725791 () Bool)

(assert (=> d!1258325 (= c!725791 ((_ is Nil!47277) lt!1512077))))

(assert (=> d!1258325 (= (size!34629 lt!1512077) lt!1512169)))

(declare-fun b!4267971 () Bool)

(assert (=> b!4267971 (= e!2649871 0)))

(declare-fun b!4267972 () Bool)

(assert (=> b!4267972 (= e!2649871 (+ 1 (size!34629 (t!353527 lt!1512077))))))

(assert (= (and d!1258325 c!725791) b!4267971))

(assert (= (and d!1258325 (not c!725791)) b!4267972))

(declare-fun m!4860245 () Bool)

(assert (=> b!4267972 m!4860245))

(assert (=> b!4267569 d!1258325))

(declare-fun d!1258327 () Bool)

(declare-fun lt!1512170 () Int)

(assert (=> d!1258327 (>= lt!1512170 0)))

(declare-fun e!2649872 () Int)

(assert (=> d!1258327 (= lt!1512170 e!2649872)))

(declare-fun c!725792 () Bool)

(assert (=> d!1258327 (= c!725792 ((_ is Nil!47277) (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258327 (= (size!34629 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) lt!1512170)))

(declare-fun b!4267973 () Bool)

(assert (=> b!4267973 (= e!2649872 0)))

(declare-fun b!4267974 () Bool)

(assert (=> b!4267974 (= e!2649872 (+ 1 (size!34629 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (= (and d!1258327 c!725792) b!4267973))

(assert (= (and d!1258327 (not c!725792)) b!4267974))

(assert (=> b!4267974 m!4860157))

(assert (=> b!4267569 d!1258327))

(declare-fun d!1258329 () Bool)

(declare-fun lt!1512171 () Int)

(assert (=> d!1258329 (>= lt!1512171 0)))

(declare-fun e!2649873 () Int)

(assert (=> d!1258329 (= lt!1512171 e!2649873)))

(declare-fun c!725793 () Bool)

(assert (=> d!1258329 (= c!725793 ((_ is Nil!47277) (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258329 (= (size!34629 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) lt!1512171)))

(declare-fun b!4267975 () Bool)

(assert (=> b!4267975 (= e!2649873 0)))

(declare-fun b!4267976 () Bool)

(assert (=> b!4267976 (= e!2649873 (+ 1 (size!34629 (t!353527 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (= (and d!1258329 c!725793) b!4267975))

(assert (= (and d!1258329 (not c!725793)) b!4267976))

(declare-fun m!4860247 () Bool)

(assert (=> b!4267976 m!4860247))

(assert (=> b!4267569 d!1258329))

(check-sat (not b!4267792) (not d!1258269) (not d!1258289) (not b!4267761) (not b!4267771) (not b!4267974) (not b!4267925) (not b!4267956) (not b!4267931) (not b!4267968) (not b!4267773) (not b!4267913) (not d!1258137) (not b!4267770) (not b!4267722) (not b!4267912) (not b!4267952) (not b!4267897) (not d!1258139) (not b!4267938) (not d!1258301) (not b!4267795) (not bm!294075) (not b!4267695) (not b!4267732) (not b!4267958) (not d!1258291) (not b!4267736) (not b!4267967) (not b!4267911) (not b!4267751) (not d!1258149) (not b!4267970) (not d!1258303) (not b!4267799) (not b!4267899) (not b!4267797) (not b!4267976) (not b!4267720) (not b!4267907) (not b!4267691) (not b!4267710) (not b!4267744) (not b!4267791) (not d!1258297) (not b!4267767) (not b!4267917) (not b!4267939) (not b!4267731) (not b!4267946) (not b!4267891) (not b!4267890) (not b!4267573) (not b!4267757) (not b!4267727) (not b!4267793) (not b!4267777) (not b!4267794) (not b!4267754) (not b!4267491) (not b!4267707) (not b!4267796) (not b!4267752) (not b!4267947) (not b!4267578) (not b!4267760) (not b!4267894) (not b!4267753) (not d!1258265) (not b!4267561) (not d!1258133) (not b!4267954) (not b!4267565) (not d!1258261) (not d!1258287) (not b!4267927) (not b!4267729) (not b!4267972) (not b!4267962) (not b!4267943) (not b!4267919) (not b!4267718) (not b!4267756) (not b!4267914) (not b!4267577) (not b!4267940) (not b!4267697) (not b!4267698) (not b!4267905) (not b!4267800) (not b!4267740) (not b!4267693) (not d!1258263) (not b!4267923) (not b!4267798) (not b!4267900) (not b!4267960) (not b!4267942) (not b!4267895) (not b!4267916) (not b!4267964) (not b!4267950) (not b!4267909) (not d!1258273) (not b!4267920) (not b!4267748) (not b!4267922) (not b!4267738) (not b!4267930) (not bm!294074) (not b!4267904) (not b!4267915) (not d!1258267) (not d!1258141) (not b!4267734) (not b!4267566) (not b!4267763) (not b!4267574) (not b!4267743) (not d!1258299) (not b!4267711) (not d!1258285) (not b!4267562))
(check-sat)
(get-model)

(declare-fun b!4268133 () Bool)

(declare-fun e!2649953 () List!47401)

(assert (=> b!4268133 (= e!2649953 (list!17094 (right!35397 (right!35397 (c!725567 x!738716)))))))

(declare-fun b!4268135 () Bool)

(declare-fun res!1753616 () Bool)

(declare-fun e!2649954 () Bool)

(assert (=> b!4268135 (=> (not res!1753616) (not e!2649954))))

(declare-fun lt!1512198 () List!47401)

(assert (=> b!4268135 (= res!1753616 (= (size!34629 lt!1512198) (+ (size!34629 (list!17094 (left!35067 (right!35397 (c!725567 x!738716))))) (size!34629 (list!17094 (right!35397 (right!35397 (c!725567 x!738716))))))))))

(declare-fun b!4268136 () Bool)

(assert (=> b!4268136 (= e!2649954 (or (not (= (list!17094 (right!35397 (right!35397 (c!725567 x!738716)))) Nil!47277)) (= lt!1512198 (list!17094 (left!35067 (right!35397 (c!725567 x!738716)))))))))

(declare-fun d!1258449 () Bool)

(assert (=> d!1258449 e!2649954))

(declare-fun res!1753615 () Bool)

(assert (=> d!1258449 (=> (not res!1753615) (not e!2649954))))

(assert (=> d!1258449 (= res!1753615 (= (content!7472 lt!1512198) ((_ map or) (content!7472 (list!17094 (left!35067 (right!35397 (c!725567 x!738716))))) (content!7472 (list!17094 (right!35397 (right!35397 (c!725567 x!738716))))))))))

(assert (=> d!1258449 (= lt!1512198 e!2649953)))

(declare-fun c!725855 () Bool)

(assert (=> d!1258449 (= c!725855 ((_ is Nil!47277) (list!17094 (left!35067 (right!35397 (c!725567 x!738716))))))))

(assert (=> d!1258449 (= (++!12055 (list!17094 (left!35067 (right!35397 (c!725567 x!738716)))) (list!17094 (right!35397 (right!35397 (c!725567 x!738716))))) lt!1512198)))

(declare-fun b!4268134 () Bool)

(assert (=> b!4268134 (= e!2649953 (Cons!47277 (h!52697 (list!17094 (left!35067 (right!35397 (c!725567 x!738716))))) (++!12055 (t!353527 (list!17094 (left!35067 (right!35397 (c!725567 x!738716))))) (list!17094 (right!35397 (right!35397 (c!725567 x!738716)))))))))

(assert (= (and d!1258449 c!725855) b!4268133))

(assert (= (and d!1258449 (not c!725855)) b!4268134))

(assert (= (and d!1258449 res!1753615) b!4268135))

(assert (= (and b!4268135 res!1753616) b!4268136))

(declare-fun m!4860575 () Bool)

(assert (=> b!4268135 m!4860575))

(assert (=> b!4268135 m!4859479))

(declare-fun m!4860577 () Bool)

(assert (=> b!4268135 m!4860577))

(assert (=> b!4268135 m!4859481))

(declare-fun m!4860579 () Bool)

(assert (=> b!4268135 m!4860579))

(declare-fun m!4860581 () Bool)

(assert (=> d!1258449 m!4860581))

(assert (=> d!1258449 m!4859479))

(declare-fun m!4860583 () Bool)

(assert (=> d!1258449 m!4860583))

(assert (=> d!1258449 m!4859481))

(declare-fun m!4860585 () Bool)

(assert (=> d!1258449 m!4860585))

(assert (=> b!4268134 m!4859481))

(declare-fun m!4860587 () Bool)

(assert (=> b!4268134 m!4860587))

(assert (=> b!4267566 d!1258449))

(declare-fun b!4268138 () Bool)

(declare-fun e!2649955 () List!47401)

(declare-fun e!2649956 () List!47401)

(assert (=> b!4268138 (= e!2649955 e!2649956)))

(declare-fun c!725857 () Bool)

(assert (=> b!4268138 (= c!725857 ((_ is Leaf!22044) (left!35067 (right!35397 (c!725567 x!738716)))))))

(declare-fun b!4268137 () Bool)

(assert (=> b!4268137 (= e!2649955 Nil!47277)))

(declare-fun b!4268139 () Bool)

(assert (=> b!4268139 (= e!2649956 (list!17096 (xs!17565 (left!35067 (right!35397 (c!725567 x!738716))))))))

(declare-fun b!4268140 () Bool)

(assert (=> b!4268140 (= e!2649956 (++!12055 (list!17094 (left!35067 (left!35067 (right!35397 (c!725567 x!738716))))) (list!17094 (right!35397 (left!35067 (right!35397 (c!725567 x!738716)))))))))

(declare-fun d!1258451 () Bool)

(declare-fun c!725856 () Bool)

(assert (=> d!1258451 (= c!725856 ((_ is Empty!14259) (left!35067 (right!35397 (c!725567 x!738716)))))))

(assert (=> d!1258451 (= (list!17094 (left!35067 (right!35397 (c!725567 x!738716)))) e!2649955)))

(assert (= (and d!1258451 c!725856) b!4268137))

(assert (= (and d!1258451 (not c!725856)) b!4268138))

(assert (= (and b!4268138 c!725857) b!4268139))

(assert (= (and b!4268138 (not c!725857)) b!4268140))

(declare-fun m!4860589 () Bool)

(assert (=> b!4268139 m!4860589))

(declare-fun m!4860591 () Bool)

(assert (=> b!4268140 m!4860591))

(declare-fun m!4860593 () Bool)

(assert (=> b!4268140 m!4860593))

(assert (=> b!4268140 m!4860591))

(assert (=> b!4268140 m!4860593))

(declare-fun m!4860595 () Bool)

(assert (=> b!4268140 m!4860595))

(assert (=> b!4267566 d!1258451))

(declare-fun b!4268142 () Bool)

(declare-fun e!2649957 () List!47401)

(declare-fun e!2649958 () List!47401)

(assert (=> b!4268142 (= e!2649957 e!2649958)))

(declare-fun c!725859 () Bool)

(assert (=> b!4268142 (= c!725859 ((_ is Leaf!22044) (right!35397 (right!35397 (c!725567 x!738716)))))))

(declare-fun b!4268141 () Bool)

(assert (=> b!4268141 (= e!2649957 Nil!47277)))

(declare-fun b!4268143 () Bool)

(assert (=> b!4268143 (= e!2649958 (list!17096 (xs!17565 (right!35397 (right!35397 (c!725567 x!738716))))))))

(declare-fun b!4268144 () Bool)

(assert (=> b!4268144 (= e!2649958 (++!12055 (list!17094 (left!35067 (right!35397 (right!35397 (c!725567 x!738716))))) (list!17094 (right!35397 (right!35397 (right!35397 (c!725567 x!738716)))))))))

(declare-fun d!1258453 () Bool)

(declare-fun c!725858 () Bool)

(assert (=> d!1258453 (= c!725858 ((_ is Empty!14259) (right!35397 (right!35397 (c!725567 x!738716)))))))

(assert (=> d!1258453 (= (list!17094 (right!35397 (right!35397 (c!725567 x!738716)))) e!2649957)))

(assert (= (and d!1258453 c!725858) b!4268141))

(assert (= (and d!1258453 (not c!725858)) b!4268142))

(assert (= (and b!4268142 c!725859) b!4268143))

(assert (= (and b!4268142 (not c!725859)) b!4268144))

(declare-fun m!4860597 () Bool)

(assert (=> b!4268143 m!4860597))

(declare-fun m!4860599 () Bool)

(assert (=> b!4268144 m!4860599))

(declare-fun m!4860601 () Bool)

(assert (=> b!4268144 m!4860601))

(assert (=> b!4268144 m!4860599))

(assert (=> b!4268144 m!4860601))

(declare-fun m!4860603 () Bool)

(assert (=> b!4268144 m!4860603))

(assert (=> b!4267566 d!1258453))

(declare-fun d!1258455 () Bool)

(assert (=> d!1258455 (= (list!17092 lt!1512161) (list!17094 (c!725567 lt!1512161)))))

(declare-fun bs!599679 () Bool)

(assert (= bs!599679 d!1258455))

(declare-fun m!4860605 () Bool)

(assert (=> bs!599679 m!4860605))

(assert (=> d!1258287 d!1258455))

(declare-fun d!1258457 () Bool)

(declare-fun e!2649959 () Bool)

(assert (=> d!1258457 e!2649959))

(declare-fun res!1753617 () Bool)

(assert (=> d!1258457 (=> (not res!1753617) (not e!2649959))))

(declare-fun lt!1512199 () Conc!14259)

(assert (=> d!1258457 (= res!1753617 (= (list!17094 lt!1512199) (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))))))

(assert (=> d!1258457 (= lt!1512199 (choose!26012 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))))))

(assert (=> d!1258457 (= (fromList!920 (Cons!47277 #x0042 (Cons!47277 #x006F (Cons!47277 #x006F (Cons!47277 #x006C (Cons!47277 #x0065 (Cons!47277 #x0061 (Cons!47277 #x006E Nil!47277)))))))) lt!1512199)))

(declare-fun b!4268145 () Bool)

(assert (=> b!4268145 (= e!2649959 (isBalanced!3816 lt!1512199))))

(assert (= (and d!1258457 res!1753617) b!4268145))

(declare-fun m!4860607 () Bool)

(assert (=> d!1258457 m!4860607))

(declare-fun m!4860609 () Bool)

(assert (=> d!1258457 m!4860609))

(declare-fun m!4860611 () Bool)

(assert (=> b!4268145 m!4860611))

(assert (=> d!1258287 d!1258457))

(declare-fun d!1258459 () Bool)

(declare-fun lt!1512200 () Int)

(assert (=> d!1258459 (>= lt!1512200 0)))

(declare-fun e!2649960 () Int)

(assert (=> d!1258459 (= lt!1512200 e!2649960)))

(declare-fun c!725860 () Bool)

(assert (=> d!1258459 (= c!725860 ((_ is Nil!47277) (t!353527 (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (=> d!1258459 (= (size!34629 (t!353527 (efficientList$default$2!152 (c!725567 x!738716)))) lt!1512200)))

(declare-fun b!4268146 () Bool)

(assert (=> b!4268146 (= e!2649960 0)))

(declare-fun b!4268147 () Bool)

(assert (=> b!4268147 (= e!2649960 (+ 1 (size!34629 (t!353527 (t!353527 (efficientList$default$2!152 (c!725567 x!738716)))))))))

(assert (= (and d!1258459 c!725860) b!4268146))

(assert (= (and d!1258459 (not c!725860)) b!4268147))

(declare-fun m!4860613 () Bool)

(assert (=> b!4268147 m!4860613))

(assert (=> b!4267722 d!1258459))

(declare-fun d!1258461 () Bool)

(declare-fun e!2649961 () Bool)

(assert (=> d!1258461 e!2649961))

(declare-fun res!1753618 () Bool)

(assert (=> d!1258461 (=> (not res!1753618) (not e!2649961))))

(declare-fun lt!1512201 () BalanceConc!28028)

(assert (=> d!1258461 (= res!1753618 (= (list!17092 lt!1512201) (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277))))))))))

(assert (=> d!1258461 (= lt!1512201 (BalanceConc!28029 (fromList!920 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277)))))))))))

(assert (=> d!1258461 (= (fromListB!2660 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277))))))) lt!1512201)))

(declare-fun b!4268148 () Bool)

(assert (=> b!4268148 (= e!2649961 (isBalanced!3816 (fromList!920 (Cons!47277 #x0053 (Cons!47277 #x0074 (Cons!47277 #x0072 (Cons!47277 #x0069 (Cons!47277 #x006E (Cons!47277 #x0067 Nil!47277)))))))))))

(assert (= (and d!1258461 res!1753618) b!4268148))

(declare-fun m!4860615 () Bool)

(assert (=> d!1258461 m!4860615))

(declare-fun m!4860617 () Bool)

(assert (=> d!1258461 m!4860617))

(assert (=> b!4268148 m!4860617))

(assert (=> b!4268148 m!4860617))

(declare-fun m!4860619 () Bool)

(assert (=> b!4268148 m!4860619))

(assert (=> d!1258285 d!1258461))

(declare-fun d!1258463 () Bool)

(assert (=> d!1258463 (= (list!17096 (xs!17565 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (innerList!14319 (xs!17565 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> b!4267573 d!1258463))

(assert (=> b!4267744 d!1257981))

(declare-fun d!1258465 () Bool)

(declare-fun c!725861 () Bool)

(assert (=> d!1258465 (= c!725861 ((_ is Nil!47277) lt!1512162))))

(declare-fun e!2649962 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258465 (= (content!7472 lt!1512162) e!2649962)))

(declare-fun b!4268149 () Bool)

(assert (=> b!4268149 (= e!2649962 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268150 () Bool)

(assert (=> b!4268150 (= e!2649962 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512162) true) (content!7472 (t!353527 lt!1512162))))))

(assert (= (and d!1258465 c!725861) b!4268149))

(assert (= (and d!1258465 (not c!725861)) b!4268150))

(declare-fun m!4860621 () Bool)

(assert (=> b!4268150 m!4860621))

(declare-fun m!4860623 () Bool)

(assert (=> b!4268150 m!4860623))

(assert (=> d!1258289 d!1258465))

(declare-fun d!1258467 () Bool)

(declare-fun c!725862 () Bool)

(assert (=> d!1258467 (= c!725862 ((_ is Nil!47277) (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun e!2649963 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258467 (= (content!7472 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) e!2649963)))

(declare-fun b!4268151 () Bool)

(assert (=> b!4268151 (= e!2649963 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268152 () Bool)

(assert (=> b!4268152 (= e!2649963 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) true) (content!7472 (t!353527 (t!353527 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))))

(assert (= (and d!1258467 c!725862) b!4268151))

(assert (= (and d!1258467 (not c!725862)) b!4268152))

(declare-fun m!4860625 () Bool)

(assert (=> b!4268152 m!4860625))

(declare-fun m!4860627 () Bool)

(assert (=> b!4268152 m!4860627))

(assert (=> d!1258289 d!1258467))

(assert (=> d!1258289 d!1258131))

(declare-fun d!1258469 () Bool)

(declare-fun lt!1512202 () Int)

(assert (=> d!1258469 (>= lt!1512202 0)))

(declare-fun e!2649964 () Int)

(assert (=> d!1258469 (= lt!1512202 e!2649964)))

(declare-fun c!725863 () Bool)

(assert (=> d!1258469 (= c!725863 ((_ is Nil!47277) lt!1512128))))

(assert (=> d!1258469 (= (size!34629 lt!1512128) lt!1512202)))

(declare-fun b!4268153 () Bool)

(assert (=> b!4268153 (= e!2649964 0)))

(declare-fun b!4268154 () Bool)

(assert (=> b!4268154 (= e!2649964 (+ 1 (size!34629 (t!353527 lt!1512128))))))

(assert (= (and d!1258469 c!725863) b!4268153))

(assert (= (and d!1258469 (not c!725863)) b!4268154))

(declare-fun m!4860629 () Bool)

(assert (=> b!4268154 m!4860629))

(assert (=> b!4267761 d!1258469))

(declare-fun d!1258471 () Bool)

(declare-fun lt!1512203 () Int)

(assert (=> d!1258471 (>= lt!1512203 0)))

(declare-fun e!2649965 () Int)

(assert (=> d!1258471 (= lt!1512203 e!2649965)))

(declare-fun c!725864 () Bool)

(assert (=> d!1258471 (= c!725864 ((_ is Nil!47277) (++!12055 lt!1512061 lt!1512059)))))

(assert (=> d!1258471 (= (size!34629 (++!12055 lt!1512061 lt!1512059)) lt!1512203)))

(declare-fun b!4268155 () Bool)

(assert (=> b!4268155 (= e!2649965 0)))

(declare-fun b!4268156 () Bool)

(assert (=> b!4268156 (= e!2649965 (+ 1 (size!34629 (t!353527 (++!12055 lt!1512061 lt!1512059)))))))

(assert (= (and d!1258471 c!725864) b!4268155))

(assert (= (and d!1258471 (not c!725864)) b!4268156))

(declare-fun m!4860631 () Bool)

(assert (=> b!4268156 m!4860631))

(assert (=> b!4267761 d!1258471))

(assert (=> b!4267761 d!1258147))

(declare-fun d!1258473 () Bool)

(declare-fun c!725865 () Bool)

(assert (=> d!1258473 (= c!725865 ((_ is Nil!47277) (t!353527 lt!1512077)))))

(declare-fun e!2649966 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258473 (= (content!7472 (t!353527 lt!1512077)) e!2649966)))

(declare-fun b!4268157 () Bool)

(assert (=> b!4268157 (= e!2649966 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268158 () Bool)

(assert (=> b!4268158 (= e!2649966 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 lt!1512077)) true) (content!7472 (t!353527 (t!353527 lt!1512077)))))))

(assert (= (and d!1258473 c!725865) b!4268157))

(assert (= (and d!1258473 (not c!725865)) b!4268158))

(declare-fun m!4860633 () Bool)

(assert (=> b!4268158 m!4860633))

(declare-fun m!4860635 () Bool)

(assert (=> b!4268158 m!4860635))

(assert (=> b!4267691 d!1258473))

(declare-fun b!4268160 () Bool)

(declare-fun e!2649967 () List!47401)

(declare-fun e!2649968 () List!47401)

(assert (=> b!4268160 (= e!2649967 e!2649968)))

(declare-fun c!725867 () Bool)

(assert (=> b!4268160 (= c!725867 ((_ is Leaf!22044) res!1753577))))

(declare-fun b!4268159 () Bool)

(assert (=> b!4268159 (= e!2649967 Nil!47277)))

(declare-fun b!4268161 () Bool)

(assert (=> b!4268161 (= e!2649968 (list!17096 (xs!17565 res!1753577)))))

(declare-fun b!4268162 () Bool)

(assert (=> b!4268162 (= e!2649968 (++!12055 (list!17094 (left!35067 res!1753577)) (list!17094 (right!35397 res!1753577))))))

(declare-fun d!1258475 () Bool)

(declare-fun c!725866 () Bool)

(assert (=> d!1258475 (= c!725866 ((_ is Empty!14259) res!1753577))))

(assert (=> d!1258475 (= (list!17094 res!1753577) e!2649967)))

(assert (= (and d!1258475 c!725866) b!4268159))

(assert (= (and d!1258475 (not c!725866)) b!4268160))

(assert (= (and b!4268160 c!725867) b!4268161))

(assert (= (and b!4268160 (not c!725867)) b!4268162))

(declare-fun m!4860637 () Bool)

(assert (=> b!4268161 m!4860637))

(declare-fun m!4860639 () Bool)

(assert (=> b!4268162 m!4860639))

(declare-fun m!4860641 () Bool)

(assert (=> b!4268162 m!4860641))

(assert (=> b!4268162 m!4860639))

(assert (=> b!4268162 m!4860641))

(declare-fun m!4860643 () Bool)

(assert (=> b!4268162 m!4860643))

(assert (=> d!1258297 d!1258475))

(declare-fun d!1258477 () Bool)

(declare-fun c!725868 () Bool)

(assert (=> d!1258477 (= c!725868 ((_ is Node!14259) res!1753577))))

(declare-fun e!2649969 () Bool)

(assert (=> d!1258477 (= (inv!62239 res!1753577) e!2649969)))

(declare-fun b!4268163 () Bool)

(assert (=> b!4268163 (= e!2649969 (inv!62244 res!1753577))))

(declare-fun b!4268164 () Bool)

(declare-fun e!2649970 () Bool)

(assert (=> b!4268164 (= e!2649969 e!2649970)))

(declare-fun res!1753619 () Bool)

(assert (=> b!4268164 (= res!1753619 (not ((_ is Leaf!22044) res!1753577)))))

(assert (=> b!4268164 (=> res!1753619 e!2649970)))

(declare-fun b!4268165 () Bool)

(assert (=> b!4268165 (= e!2649970 (inv!62245 res!1753577))))

(assert (= (and d!1258477 c!725868) b!4268163))

(assert (= (and d!1258477 (not c!725868)) b!4268164))

(assert (= (and b!4268164 (not res!1753619)) b!4268165))

(declare-fun m!4860645 () Bool)

(assert (=> b!4268163 m!4860645))

(declare-fun m!4860647 () Bool)

(assert (=> b!4268165 m!4860647))

(assert (=> d!1258297 d!1258477))

(declare-fun d!1258479 () Bool)

(declare-fun lt!1512204 () Int)

(assert (=> d!1258479 (>= lt!1512204 0)))

(declare-fun e!2649971 () Int)

(assert (=> d!1258479 (= lt!1512204 e!2649971)))

(declare-fun c!725869 () Bool)

(assert (=> d!1258479 (= c!725869 ((_ is Nil!47277) (t!353527 lt!1512072)))))

(assert (=> d!1258479 (= (size!34629 (t!353527 lt!1512072)) lt!1512204)))

(declare-fun b!4268166 () Bool)

(assert (=> b!4268166 (= e!2649971 0)))

(declare-fun b!4268167 () Bool)

(assert (=> b!4268167 (= e!2649971 (+ 1 (size!34629 (t!353527 (t!353527 lt!1512072)))))))

(assert (= (and d!1258479 c!725869) b!4268166))

(assert (= (and d!1258479 (not c!725869)) b!4268167))

(declare-fun m!4860649 () Bool)

(assert (=> b!4268167 m!4860649))

(assert (=> b!4267718 d!1258479))

(declare-fun b!4268168 () Bool)

(declare-fun e!2649972 () List!47401)

(assert (=> b!4268168 (= e!2649972 call!294076)))

(declare-fun b!4268170 () Bool)

(declare-fun res!1753621 () Bool)

(declare-fun e!2649973 () Bool)

(assert (=> b!4268170 (=> (not res!1753621) (not e!2649973))))

(declare-fun lt!1512205 () List!47401)

(assert (=> b!4268170 (= res!1753621 (= (size!34629 lt!1512205) (+ (size!34629 (t!353527 lt!1512061)) (size!34629 call!294076))))))

(declare-fun b!4268171 () Bool)

(assert (=> b!4268171 (= e!2649973 (or (not (= call!294076 Nil!47277)) (= lt!1512205 (t!353527 lt!1512061))))))

(declare-fun d!1258481 () Bool)

(assert (=> d!1258481 e!2649973))

(declare-fun res!1753620 () Bool)

(assert (=> d!1258481 (=> (not res!1753620) (not e!2649973))))

(assert (=> d!1258481 (= res!1753620 (= (content!7472 lt!1512205) ((_ map or) (content!7472 (t!353527 lt!1512061)) (content!7472 call!294076))))))

(assert (=> d!1258481 (= lt!1512205 e!2649972)))

(declare-fun c!725870 () Bool)

(assert (=> d!1258481 (= c!725870 ((_ is Nil!47277) (t!353527 lt!1512061)))))

(assert (=> d!1258481 (= (++!12055 (t!353527 lt!1512061) call!294076) lt!1512205)))

(declare-fun b!4268169 () Bool)

(assert (=> b!4268169 (= e!2649972 (Cons!47277 (h!52697 (t!353527 lt!1512061)) (++!12055 (t!353527 (t!353527 lt!1512061)) call!294076)))))

(assert (= (and d!1258481 c!725870) b!4268168))

(assert (= (and d!1258481 (not c!725870)) b!4268169))

(assert (= (and d!1258481 res!1753620) b!4268170))

(assert (= (and b!4268170 res!1753621) b!4268171))

(declare-fun m!4860651 () Bool)

(assert (=> b!4268170 m!4860651))

(declare-fun m!4860653 () Bool)

(assert (=> b!4268170 m!4860653))

(assert (=> b!4268170 m!4859855))

(declare-fun m!4860655 () Bool)

(assert (=> d!1258481 m!4860655))

(assert (=> d!1258481 m!4860125))

(assert (=> d!1258481 m!4859859))

(declare-fun m!4860657 () Bool)

(assert (=> b!4268169 m!4860657))

(assert (=> b!4267770 d!1258481))

(declare-fun b!4268172 () Bool)

(declare-fun e!2649974 () Bool)

(assert (=> b!4268172 (= e!2649974 (not (isEmpty!27999 (right!35397 lt!1512121))))))

(declare-fun d!1258483 () Bool)

(declare-fun res!1753624 () Bool)

(declare-fun e!2649975 () Bool)

(assert (=> d!1258483 (=> res!1753624 e!2649975)))

(assert (=> d!1258483 (= res!1753624 (not ((_ is Node!14259) lt!1512121)))))

(assert (=> d!1258483 (= (isBalanced!3816 lt!1512121) e!2649975)))

(declare-fun b!4268173 () Bool)

(declare-fun res!1753623 () Bool)

(assert (=> b!4268173 (=> (not res!1753623) (not e!2649974))))

(assert (=> b!4268173 (= res!1753623 (not (isEmpty!27999 (left!35067 lt!1512121))))))

(declare-fun b!4268174 () Bool)

(declare-fun res!1753622 () Bool)

(assert (=> b!4268174 (=> (not res!1753622) (not e!2649974))))

(assert (=> b!4268174 (= res!1753622 (<= (- (height!1878 (left!35067 lt!1512121)) (height!1878 (right!35397 lt!1512121))) 1))))

(declare-fun b!4268175 () Bool)

(declare-fun res!1753627 () Bool)

(assert (=> b!4268175 (=> (not res!1753627) (not e!2649974))))

(assert (=> b!4268175 (= res!1753627 (isBalanced!3816 (right!35397 lt!1512121)))))

(declare-fun b!4268176 () Bool)

(assert (=> b!4268176 (= e!2649975 e!2649974)))

(declare-fun res!1753625 () Bool)

(assert (=> b!4268176 (=> (not res!1753625) (not e!2649974))))

(assert (=> b!4268176 (= res!1753625 (<= (- 1) (- (height!1878 (left!35067 lt!1512121)) (height!1878 (right!35397 lt!1512121)))))))

(declare-fun b!4268177 () Bool)

(declare-fun res!1753626 () Bool)

(assert (=> b!4268177 (=> (not res!1753626) (not e!2649974))))

(assert (=> b!4268177 (= res!1753626 (isBalanced!3816 (left!35067 lt!1512121)))))

(assert (= (and d!1258483 (not res!1753624)) b!4268176))

(assert (= (and b!4268176 res!1753625) b!4268174))

(assert (= (and b!4268174 res!1753622) b!4268177))

(assert (= (and b!4268177 res!1753626) b!4268175))

(assert (= (and b!4268175 res!1753627) b!4268173))

(assert (= (and b!4268173 res!1753623) b!4268172))

(declare-fun m!4860659 () Bool)

(assert (=> b!4268177 m!4860659))

(declare-fun m!4860661 () Bool)

(assert (=> b!4268174 m!4860661))

(declare-fun m!4860663 () Bool)

(assert (=> b!4268174 m!4860663))

(declare-fun m!4860665 () Bool)

(assert (=> b!4268173 m!4860665))

(declare-fun m!4860667 () Bool)

(assert (=> b!4268172 m!4860667))

(declare-fun m!4860669 () Bool)

(assert (=> b!4268175 m!4860669))

(assert (=> b!4268176 m!4860661))

(assert (=> b!4268176 m!4860663))

(assert (=> b!4267743 d!1258483))

(declare-fun d!1258485 () Bool)

(declare-fun c!725871 () Bool)

(assert (=> d!1258485 (= c!725871 ((_ is Nil!47277) lt!1512165))))

(declare-fun e!2649976 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258485 (= (content!7472 lt!1512165) e!2649976)))

(declare-fun b!4268178 () Bool)

(assert (=> b!4268178 (= e!2649976 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268179 () Bool)

(assert (=> b!4268179 (= e!2649976 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512165) true) (content!7472 (t!353527 lt!1512165))))))

(assert (= (and d!1258485 c!725871) b!4268178))

(assert (= (and d!1258485 (not c!725871)) b!4268179))

(declare-fun m!4860671 () Bool)

(assert (=> b!4268179 m!4860671))

(declare-fun m!4860673 () Bool)

(assert (=> b!4268179 m!4860673))

(assert (=> d!1258303 d!1258485))

(assert (=> d!1258303 d!1258279))

(assert (=> d!1258303 d!1258045))

(assert (=> b!4267693 d!1258467))

(declare-fun d!1258487 () Bool)

(declare-fun c!725872 () Bool)

(assert (=> d!1258487 (= c!725872 ((_ is Nil!47277) (t!353527 (list!17094 (right!35397 (c!725567 x!738716))))))))

(declare-fun e!2649977 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258487 (= (content!7472 (t!353527 (list!17094 (right!35397 (c!725567 x!738716))))) e!2649977)))

(declare-fun b!4268180 () Bool)

(assert (=> b!4268180 (= e!2649977 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268181 () Bool)

(assert (=> b!4268181 (= e!2649977 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 (list!17094 (right!35397 (c!725567 x!738716))))) true) (content!7472 (t!353527 (t!353527 (list!17094 (right!35397 (c!725567 x!738716))))))))))

(assert (= (and d!1258487 c!725872) b!4268180))

(assert (= (and d!1258487 (not c!725872)) b!4268181))

(declare-fun m!4860675 () Bool)

(assert (=> b!4268181 m!4860675))

(declare-fun m!4860677 () Bool)

(assert (=> b!4268181 m!4860677))

(assert (=> b!4267740 d!1258487))

(declare-fun d!1258489 () Bool)

(declare-fun c!725873 () Bool)

(assert (=> d!1258489 (= c!725873 ((_ is Nil!47277) lt!1512156))))

(declare-fun e!2649978 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258489 (= (content!7472 lt!1512156) e!2649978)))

(declare-fun b!4268182 () Bool)

(assert (=> b!4268182 (= e!2649978 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268183 () Bool)

(assert (=> b!4268183 (= e!2649978 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512156) true) (content!7472 (t!353527 lt!1512156))))))

(assert (= (and d!1258489 c!725873) b!4268182))

(assert (= (and d!1258489 (not c!725873)) b!4268183))

(declare-fun m!4860679 () Bool)

(assert (=> b!4268183 m!4860679))

(declare-fun m!4860681 () Bool)

(assert (=> b!4268183 m!4860681))

(assert (=> d!1258261 d!1258489))

(assert (=> d!1258261 d!1258157))

(declare-fun d!1258491 () Bool)

(declare-fun c!725874 () Bool)

(assert (=> d!1258491 (= c!725874 ((_ is Nil!47277) (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun e!2649979 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258491 (= (content!7472 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))) e!2649979)))

(declare-fun b!4268184 () Bool)

(assert (=> b!4268184 (= e!2649979 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268185 () Bool)

(assert (=> b!4268185 (= e!2649979 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))) true) (content!7472 (t!353527 (efficientList!438 (right!35397 (c!725567 x!738716)) (efficientList$default$2!152 (c!725567 x!738716)))))))))

(assert (= (and d!1258491 c!725874) b!4268184))

(assert (= (and d!1258491 (not c!725874)) b!4268185))

(declare-fun m!4860683 () Bool)

(assert (=> b!4268185 m!4860683))

(declare-fun m!4860685 () Bool)

(assert (=> b!4268185 m!4860685))

(assert (=> d!1258261 d!1258491))

(declare-fun b!4268186 () Bool)

(declare-fun e!2649980 () List!47401)

(assert (=> b!4268186 (= e!2649980 (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4268188 () Bool)

(declare-fun res!1753629 () Bool)

(declare-fun e!2649981 () Bool)

(assert (=> b!4268188 (=> (not res!1753629) (not e!2649981))))

(declare-fun lt!1512206 () List!47401)

(assert (=> b!4268188 (= res!1753629 (= (size!34629 lt!1512206) (+ (size!34629 (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (size!34629 (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))))

(declare-fun b!4268189 () Bool)

(assert (=> b!4268189 (= e!2649981 (or (not (= (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) Nil!47277)) (= lt!1512206 (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258493 () Bool)

(assert (=> d!1258493 e!2649981))

(declare-fun res!1753628 () Bool)

(assert (=> d!1258493 (=> (not res!1753628) (not e!2649981))))

(assert (=> d!1258493 (= res!1753628 (= (content!7472 lt!1512206) ((_ map or) (content!7472 (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (content!7472 (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))))

(assert (=> d!1258493 (= lt!1512206 e!2649980)))

(declare-fun c!725875 () Bool)

(assert (=> d!1258493 (= c!725875 ((_ is Nil!47277) (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(assert (=> d!1258493 (= (++!12055 (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) lt!1512206)))

(declare-fun b!4268187 () Bool)

(assert (=> b!4268187 (= e!2649980 (Cons!47277 (h!52697 (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (++!12055 (t!353527 (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (= (and d!1258493 c!725875) b!4268186))

(assert (= (and d!1258493 (not c!725875)) b!4268187))

(assert (= (and d!1258493 res!1753628) b!4268188))

(assert (= (and b!4268188 res!1753629) b!4268189))

(declare-fun m!4860687 () Bool)

(assert (=> b!4268188 m!4860687))

(assert (=> b!4268188 m!4859501))

(declare-fun m!4860689 () Bool)

(assert (=> b!4268188 m!4860689))

(assert (=> b!4268188 m!4859503))

(declare-fun m!4860691 () Bool)

(assert (=> b!4268188 m!4860691))

(declare-fun m!4860693 () Bool)

(assert (=> d!1258493 m!4860693))

(assert (=> d!1258493 m!4859501))

(declare-fun m!4860695 () Bool)

(assert (=> d!1258493 m!4860695))

(assert (=> d!1258493 m!4859503))

(declare-fun m!4860697 () Bool)

(assert (=> d!1258493 m!4860697))

(assert (=> b!4268187 m!4859503))

(declare-fun m!4860699 () Bool)

(assert (=> b!4268187 m!4860699))

(assert (=> b!4267574 d!1258493))

(declare-fun b!4268191 () Bool)

(declare-fun e!2649982 () List!47401)

(declare-fun e!2649983 () List!47401)

(assert (=> b!4268191 (= e!2649982 e!2649983)))

(declare-fun c!725877 () Bool)

(assert (=> b!4268191 (= c!725877 ((_ is Leaf!22044) (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4268190 () Bool)

(assert (=> b!4268190 (= e!2649982 Nil!47277)))

(declare-fun b!4268192 () Bool)

(assert (=> b!4268192 (= e!2649983 (list!17096 (xs!17565 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun b!4268193 () Bool)

(assert (=> b!4268193 (= e!2649983 (++!12055 (list!17094 (left!35067 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258495 () Bool)

(declare-fun c!725876 () Bool)

(assert (=> d!1258495 (= c!725876 ((_ is Empty!14259) (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258495 (= (list!17094 (left!35067 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) e!2649982)))

(assert (= (and d!1258495 c!725876) b!4268190))

(assert (= (and d!1258495 (not c!725876)) b!4268191))

(assert (= (and b!4268191 c!725877) b!4268192))

(assert (= (and b!4268191 (not c!725877)) b!4268193))

(declare-fun m!4860701 () Bool)

(assert (=> b!4268192 m!4860701))

(declare-fun m!4860703 () Bool)

(assert (=> b!4268193 m!4860703))

(declare-fun m!4860705 () Bool)

(assert (=> b!4268193 m!4860705))

(assert (=> b!4268193 m!4860703))

(assert (=> b!4268193 m!4860705))

(declare-fun m!4860707 () Bool)

(assert (=> b!4268193 m!4860707))

(assert (=> b!4267574 d!1258495))

(declare-fun b!4268195 () Bool)

(declare-fun e!2649984 () List!47401)

(declare-fun e!2649985 () List!47401)

(assert (=> b!4268195 (= e!2649984 e!2649985)))

(declare-fun c!725879 () Bool)

(assert (=> b!4268195 (= c!725879 ((_ is Leaf!22044) (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4268194 () Bool)

(assert (=> b!4268194 (= e!2649984 Nil!47277)))

(declare-fun b!4268196 () Bool)

(assert (=> b!4268196 (= e!2649985 (list!17096 (xs!17565 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun b!4268197 () Bool)

(assert (=> b!4268197 (= e!2649985 (++!12055 (list!17094 (left!35067 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258497 () Bool)

(declare-fun c!725878 () Bool)

(assert (=> d!1258497 (= c!725878 ((_ is Empty!14259) (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258497 (= (list!17094 (right!35397 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) e!2649984)))

(assert (= (and d!1258497 c!725878) b!4268194))

(assert (= (and d!1258497 (not c!725878)) b!4268195))

(assert (= (and b!4268195 c!725879) b!4268196))

(assert (= (and b!4268195 (not c!725879)) b!4268197))

(declare-fun m!4860709 () Bool)

(assert (=> b!4268196 m!4860709))

(declare-fun m!4860711 () Bool)

(assert (=> b!4268197 m!4860711))

(declare-fun m!4860713 () Bool)

(assert (=> b!4268197 m!4860713))

(assert (=> b!4268197 m!4860711))

(assert (=> b!4268197 m!4860713))

(declare-fun m!4860715 () Bool)

(assert (=> b!4268197 m!4860715))

(assert (=> b!4267574 d!1258497))

(declare-fun b!4268198 () Bool)

(declare-fun e!2649986 () List!47401)

(assert (=> b!4268198 (= e!2649986 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4268200 () Bool)

(declare-fun res!1753631 () Bool)

(declare-fun e!2649987 () Bool)

(assert (=> b!4268200 (=> (not res!1753631) (not e!2649987))))

(declare-fun lt!1512207 () List!47401)

(assert (=> b!4268200 (= res!1753631 (= (size!34629 lt!1512207) (+ (size!34629 (t!353527 (t!353527 (list!17094 (c!725567 x!738716))))) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4268201 () Bool)

(assert (=> b!4268201 (= e!2649987 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512207 (t!353527 (t!353527 (list!17094 (c!725567 x!738716)))))))))

(declare-fun d!1258499 () Bool)

(assert (=> d!1258499 e!2649987))

(declare-fun res!1753630 () Bool)

(assert (=> d!1258499 (=> (not res!1753630) (not e!2649987))))

(assert (=> d!1258499 (= res!1753630 (= (content!7472 lt!1512207) ((_ map or) (content!7472 (t!353527 (t!353527 (list!17094 (c!725567 x!738716))))) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258499 (= lt!1512207 e!2649986)))

(declare-fun c!725880 () Bool)

(assert (=> d!1258499 (= c!725880 ((_ is Nil!47277) (t!353527 (t!353527 (list!17094 (c!725567 x!738716))))))))

(assert (=> d!1258499 (= (++!12055 (t!353527 (t!353527 (list!17094 (c!725567 x!738716)))) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512207)))

(declare-fun b!4268199 () Bool)

(assert (=> b!4268199 (= e!2649986 (Cons!47277 (h!52697 (t!353527 (t!353527 (list!17094 (c!725567 x!738716))))) (++!12055 (t!353527 (t!353527 (t!353527 (list!17094 (c!725567 x!738716))))) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258499 c!725880) b!4268198))

(assert (= (and d!1258499 (not c!725880)) b!4268199))

(assert (= (and d!1258499 res!1753630) b!4268200))

(assert (= (and b!4268200 res!1753631) b!4268201))

(declare-fun m!4860717 () Bool)

(assert (=> b!4268200 m!4860717))

(declare-fun m!4860719 () Bool)

(assert (=> b!4268200 m!4860719))

(assert (=> b!4268200 m!4859233))

(assert (=> b!4268200 m!4859425))

(declare-fun m!4860721 () Bool)

(assert (=> d!1258499 m!4860721))

(assert (=> d!1258499 m!4860171))

(assert (=> d!1258499 m!4859233))

(assert (=> d!1258499 m!4859431))

(assert (=> b!4268199 m!4859233))

(declare-fun m!4860723 () Bool)

(assert (=> b!4268199 m!4860723))

(assert (=> b!4267697 d!1258499))

(declare-fun d!1258501 () Bool)

(declare-fun c!725881 () Bool)

(assert (=> d!1258501 (= c!725881 ((_ is Nil!47277) lt!1512159))))

(declare-fun e!2649988 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258501 (= (content!7472 lt!1512159) e!2649988)))

(declare-fun b!4268202 () Bool)

(assert (=> b!4268202 (= e!2649988 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268203 () Bool)

(assert (=> b!4268203 (= e!2649988 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512159) true) (content!7472 (t!353527 lt!1512159))))))

(assert (= (and d!1258501 c!725881) b!4268202))

(assert (= (and d!1258501 (not c!725881)) b!4268203))

(declare-fun m!4860725 () Bool)

(assert (=> b!4268203 m!4860725))

(declare-fun m!4860727 () Bool)

(assert (=> b!4268203 m!4860727))

(assert (=> d!1258269 d!1258501))

(assert (=> d!1258269 d!1258159))

(assert (=> d!1258269 d!1258045))

(declare-fun d!1258503 () Bool)

(assert (=> d!1258503 (= (list!17096 (xs!17565 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (innerList!14319 (xs!17565 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> b!4267577 d!1258503))

(declare-fun b!4268205 () Bool)

(declare-fun e!2649989 () List!47401)

(declare-fun e!2649990 () List!47401)

(assert (=> b!4268205 (= e!2649989 e!2649990)))

(declare-fun c!725883 () Bool)

(assert (=> b!4268205 (= c!725883 ((_ is Leaf!22044) (c!725567 lt!1512123)))))

(declare-fun b!4268204 () Bool)

(assert (=> b!4268204 (= e!2649989 Nil!47277)))

(declare-fun b!4268206 () Bool)

(assert (=> b!4268206 (= e!2649990 (list!17096 (xs!17565 (c!725567 lt!1512123))))))

(declare-fun b!4268207 () Bool)

(assert (=> b!4268207 (= e!2649990 (++!12055 (list!17094 (left!35067 (c!725567 lt!1512123))) (list!17094 (right!35397 (c!725567 lt!1512123)))))))

(declare-fun d!1258505 () Bool)

(declare-fun c!725882 () Bool)

(assert (=> d!1258505 (= c!725882 ((_ is Empty!14259) (c!725567 lt!1512123)))))

(assert (=> d!1258505 (= (list!17094 (c!725567 lt!1512123)) e!2649989)))

(assert (= (and d!1258505 c!725882) b!4268204))

(assert (= (and d!1258505 (not c!725882)) b!4268205))

(assert (= (and b!4268205 c!725883) b!4268206))

(assert (= (and b!4268205 (not c!725883)) b!4268207))

(declare-fun m!4860729 () Bool)

(assert (=> b!4268206 m!4860729))

(declare-fun m!4860731 () Bool)

(assert (=> b!4268207 m!4860731))

(declare-fun m!4860733 () Bool)

(assert (=> b!4268207 m!4860733))

(assert (=> b!4268207 m!4860731))

(assert (=> b!4268207 m!4860733))

(declare-fun m!4860735 () Bool)

(assert (=> b!4268207 m!4860735))

(assert (=> d!1258265 d!1258505))

(declare-fun d!1258507 () Bool)

(declare-fun c!725884 () Bool)

(assert (=> d!1258507 (= c!725884 ((_ is Nil!47277) lt!1512113))))

(declare-fun e!2649991 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258507 (= (content!7472 lt!1512113) e!2649991)))

(declare-fun b!4268208 () Bool)

(assert (=> b!4268208 (= e!2649991 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268209 () Bool)

(assert (=> b!4268209 (= e!2649991 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512113) true) (content!7472 (t!353527 lt!1512113))))))

(assert (= (and d!1258507 c!725884) b!4268208))

(assert (= (and d!1258507 (not c!725884)) b!4268209))

(declare-fun m!4860737 () Bool)

(assert (=> b!4268209 m!4860737))

(declare-fun m!4860739 () Bool)

(assert (=> b!4268209 m!4860739))

(assert (=> d!1258139 d!1258507))

(declare-fun d!1258509 () Bool)

(declare-fun c!725885 () Bool)

(assert (=> d!1258509 (= c!725885 ((_ is Nil!47277) e!2649605))))

(declare-fun e!2649992 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258509 (= (content!7472 e!2649605) e!2649992)))

(declare-fun b!4268210 () Bool)

(assert (=> b!4268210 (= e!2649992 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268211 () Bool)

(assert (=> b!4268211 (= e!2649992 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 e!2649605) true) (content!7472 (t!353527 e!2649605))))))

(assert (= (and d!1258509 c!725885) b!4268210))

(assert (= (and d!1258509 (not c!725885)) b!4268211))

(declare-fun m!4860741 () Bool)

(assert (=> b!4268211 m!4860741))

(declare-fun m!4860743 () Bool)

(assert (=> b!4268211 m!4860743))

(assert (=> d!1258139 d!1258509))

(assert (=> d!1258139 d!1258045))

(declare-fun d!1258511 () Bool)

(declare-fun c!725886 () Bool)

(assert (=> d!1258511 (= c!725886 ((_ is Nil!47277) lt!1512157))))

(declare-fun e!2649993 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258511 (= (content!7472 lt!1512157) e!2649993)))

(declare-fun b!4268212 () Bool)

(assert (=> b!4268212 (= e!2649993 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268213 () Bool)

(assert (=> b!4268213 (= e!2649993 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512157) true) (content!7472 (t!353527 lt!1512157))))))

(assert (= (and d!1258511 c!725886) b!4268212))

(assert (= (and d!1258511 (not c!725886)) b!4268213))

(declare-fun m!4860745 () Bool)

(assert (=> b!4268213 m!4860745))

(declare-fun m!4860747 () Bool)

(assert (=> b!4268213 m!4860747))

(assert (=> d!1258263 d!1258511))

(declare-fun d!1258513 () Bool)

(declare-fun c!725887 () Bool)

(assert (=> d!1258513 (= c!725887 ((_ is Nil!47277) (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))))))

(declare-fun e!2649994 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258513 (= (content!7472 (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))) e!2649994)))

(declare-fun b!4268214 () Bool)

(assert (=> b!4268214 (= e!2649994 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268215 () Bool)

(assert (=> b!4268215 (= e!2649994 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))) true) (content!7472 (t!353527 (t!353527 (list!17094 (left!35067 (c!725567 x!738716))))))))))

(assert (= (and d!1258513 c!725887) b!4268214))

(assert (= (and d!1258513 (not c!725887)) b!4268215))

(declare-fun m!4860749 () Bool)

(assert (=> b!4268215 m!4860749))

(declare-fun m!4860751 () Bool)

(assert (=> b!4268215 m!4860751))

(assert (=> d!1258263 d!1258513))

(assert (=> d!1258263 d!1258159))

(declare-fun d!1258515 () Bool)

(declare-fun c!725888 () Bool)

(assert (=> d!1258515 (= c!725888 ((_ is Nil!47277) (t!353527 lt!1512076)))))

(declare-fun e!2649995 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258515 (= (content!7472 (t!353527 lt!1512076)) e!2649995)))

(declare-fun b!4268216 () Bool)

(assert (=> b!4268216 (= e!2649995 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268217 () Bool)

(assert (=> b!4268217 (= e!2649995 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 lt!1512076)) true) (content!7472 (t!353527 (t!353527 lt!1512076)))))))

(assert (= (and d!1258515 c!725888) b!4268216))

(assert (= (and d!1258515 (not c!725888)) b!4268217))

(declare-fun m!4860753 () Bool)

(assert (=> b!4268217 m!4860753))

(declare-fun m!4860755 () Bool)

(assert (=> b!4268217 m!4860755))

(assert (=> b!4267736 d!1258515))

(declare-fun d!1258517 () Bool)

(declare-fun lt!1512208 () Int)

(assert (=> d!1258517 (>= lt!1512208 0)))

(declare-fun e!2649996 () Int)

(assert (=> d!1258517 (= lt!1512208 e!2649996)))

(declare-fun c!725889 () Bool)

(assert (=> d!1258517 (= c!725889 ((_ is Nil!47277) (t!353527 (list!17094 (c!725567 x!738716)))))))

(assert (=> d!1258517 (= (size!34629 (t!353527 (list!17094 (c!725567 x!738716)))) lt!1512208)))

(declare-fun b!4268218 () Bool)

(assert (=> b!4268218 (= e!2649996 0)))

(declare-fun b!4268219 () Bool)

(assert (=> b!4268219 (= e!2649996 (+ 1 (size!34629 (t!353527 (t!353527 (list!17094 (c!725567 x!738716)))))))))

(assert (= (and d!1258517 c!725889) b!4268218))

(assert (= (and d!1258517 (not c!725889)) b!4268219))

(assert (=> b!4268219 m!4860719))

(assert (=> b!4267720 d!1258517))

(declare-fun b!4268221 () Bool)

(declare-fun e!2649997 () List!47401)

(declare-fun e!2649998 () List!47401)

(assert (=> b!4268221 (= e!2649997 e!2649998)))

(declare-fun c!725891 () Bool)

(assert (=> b!4268221 (= c!725891 ((_ is Leaf!22044) lt!1512158))))

(declare-fun b!4268220 () Bool)

(assert (=> b!4268220 (= e!2649997 Nil!47277)))

(declare-fun b!4268222 () Bool)

(assert (=> b!4268222 (= e!2649998 (list!17096 (xs!17565 lt!1512158)))))

(declare-fun b!4268223 () Bool)

(assert (=> b!4268223 (= e!2649998 (++!12055 (list!17094 (left!35067 lt!1512158)) (list!17094 (right!35397 lt!1512158))))))

(declare-fun d!1258519 () Bool)

(declare-fun c!725890 () Bool)

(assert (=> d!1258519 (= c!725890 ((_ is Empty!14259) lt!1512158))))

(assert (=> d!1258519 (= (list!17094 lt!1512158) e!2649997)))

(assert (= (and d!1258519 c!725890) b!4268220))

(assert (= (and d!1258519 (not c!725890)) b!4268221))

(assert (= (and b!4268221 c!725891) b!4268222))

(assert (= (and b!4268221 (not c!725891)) b!4268223))

(declare-fun m!4860757 () Bool)

(assert (=> b!4268222 m!4860757))

(declare-fun m!4860759 () Bool)

(assert (=> b!4268223 m!4860759))

(declare-fun m!4860761 () Bool)

(assert (=> b!4268223 m!4860761))

(assert (=> b!4268223 m!4860759))

(assert (=> b!4268223 m!4860761))

(declare-fun m!4860763 () Bool)

(assert (=> b!4268223 m!4860763))

(assert (=> d!1258267 d!1258519))

(declare-fun d!1258521 () Bool)

(declare-fun e!2649999 () Bool)

(assert (=> d!1258521 e!2649999))

(declare-fun res!1753632 () Bool)

(assert (=> d!1258521 (=> (not res!1753632) (not e!2649999))))

(declare-fun res!1753633 () Conc!14259)

(assert (=> d!1258521 (= res!1753632 (= (list!17094 res!1753633) (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))

(declare-fun e!2650000 () Bool)

(assert (=> d!1258521 (and (inv!62239 res!1753633) e!2650000)))

(assert (=> d!1258521 (= (choose!26012 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))) res!1753633)))

(declare-fun b!4268224 () Bool)

(declare-fun tp!1307648 () Bool)

(declare-fun tp!1307647 () Bool)

(assert (=> b!4268224 (= e!2650000 (and (inv!62239 (left!35067 res!1753633)) tp!1307648 (inv!62239 (right!35397 res!1753633)) tp!1307647))))

(declare-fun b!4268225 () Bool)

(assert (=> b!4268225 (= e!2650000 (inv!62246 (xs!17565 res!1753633)))))

(declare-fun b!4268226 () Bool)

(assert (=> b!4268226 (= e!2649999 (isBalanced!3816 res!1753633))))

(assert (= (and d!1258521 ((_ is Node!14259) res!1753633)) b!4268224))

(assert (= (and d!1258521 ((_ is Leaf!22044) res!1753633)) b!4268225))

(assert (= (and d!1258521 res!1753632) b!4268226))

(declare-fun m!4860765 () Bool)

(assert (=> d!1258521 m!4860765))

(declare-fun m!4860767 () Bool)

(assert (=> d!1258521 m!4860767))

(declare-fun m!4860769 () Bool)

(assert (=> b!4268224 m!4860769))

(declare-fun m!4860771 () Bool)

(assert (=> b!4268224 m!4860771))

(declare-fun m!4860773 () Bool)

(assert (=> b!4268225 m!4860773))

(declare-fun m!4860775 () Bool)

(assert (=> b!4268226 m!4860775))

(assert (=> d!1258267 d!1258521))

(declare-fun d!1258523 () Bool)

(declare-fun lt!1512209 () Int)

(assert (=> d!1258523 (>= lt!1512209 0)))

(declare-fun e!2650002 () Int)

(assert (=> d!1258523 (= lt!1512209 e!2650002)))

(declare-fun c!725892 () Bool)

(assert (=> d!1258523 (= c!725892 ((_ is Nil!47277) lt!1512112))))

(assert (=> d!1258523 (= (size!34629 lt!1512112) lt!1512209)))

(declare-fun b!4268227 () Bool)

(assert (=> b!4268227 (= e!2650002 0)))

(declare-fun b!4268228 () Bool)

(assert (=> b!4268228 (= e!2650002 (+ 1 (size!34629 (t!353527 lt!1512112))))))

(assert (= (and d!1258523 c!725892) b!4268227))

(assert (= (and d!1258523 (not c!725892)) b!4268228))

(declare-fun m!4860777 () Bool)

(assert (=> b!4268228 m!4860777))

(assert (=> b!4267698 d!1258523))

(assert (=> b!4267698 d!1258517))

(assert (=> b!4267698 d!1258147))

(declare-fun d!1258525 () Bool)

(declare-fun lt!1512210 () Int)

(assert (=> d!1258525 (>= lt!1512210 0)))

(declare-fun e!2650003 () Int)

(assert (=> d!1258525 (= lt!1512210 e!2650003)))

(declare-fun c!725893 () Bool)

(assert (=> d!1258525 (= c!725893 ((_ is Nil!47277) lt!1512134))))

(assert (=> d!1258525 (= (size!34629 lt!1512134) lt!1512210)))

(declare-fun b!4268229 () Bool)

(assert (=> b!4268229 (= e!2650003 0)))

(declare-fun b!4268230 () Bool)

(assert (=> b!4268230 (= e!2650003 (+ 1 (size!34629 (t!353527 lt!1512134))))))

(assert (= (and d!1258525 c!725893) b!4268229))

(assert (= (and d!1258525 (not c!725893)) b!4268230))

(declare-fun m!4860779 () Bool)

(assert (=> b!4268230 m!4860779))

(assert (=> b!4267771 d!1258525))

(declare-fun d!1258527 () Bool)

(declare-fun lt!1512211 () Int)

(assert (=> d!1258527 (>= lt!1512211 0)))

(declare-fun e!2650004 () Int)

(assert (=> d!1258527 (= lt!1512211 e!2650004)))

(declare-fun c!725894 () Bool)

(assert (=> d!1258527 (= c!725894 ((_ is Nil!47277) lt!1512061))))

(assert (=> d!1258527 (= (size!34629 lt!1512061) lt!1512211)))

(declare-fun b!4268231 () Bool)

(assert (=> b!4268231 (= e!2650004 0)))

(declare-fun b!4268232 () Bool)

(assert (=> b!4268232 (= e!2650004 (+ 1 (size!34629 (t!353527 lt!1512061))))))

(assert (= (and d!1258527 c!725894) b!4268231))

(assert (= (and d!1258527 (not c!725894)) b!4268232))

(assert (=> b!4268232 m!4860653))

(assert (=> b!4267771 d!1258527))

(declare-fun d!1258529 () Bool)

(declare-fun lt!1512212 () Int)

(assert (=> d!1258529 (>= lt!1512212 0)))

(declare-fun e!2650005 () Int)

(assert (=> d!1258529 (= lt!1512212 e!2650005)))

(declare-fun c!725895 () Bool)

(assert (=> d!1258529 (= c!725895 ((_ is Nil!47277) call!294076))))

(assert (=> d!1258529 (= (size!34629 call!294076) lt!1512212)))

(declare-fun b!4268233 () Bool)

(assert (=> b!4268233 (= e!2650005 0)))

(declare-fun b!4268234 () Bool)

(assert (=> b!4268234 (= e!2650005 (+ 1 (size!34629 (t!353527 call!294076))))))

(assert (= (and d!1258529 c!725895) b!4268233))

(assert (= (and d!1258529 (not c!725895)) b!4268234))

(declare-fun m!4860781 () Bool)

(assert (=> b!4268234 m!4860781))

(assert (=> b!4267771 d!1258529))

(declare-fun b!4268235 () Bool)

(declare-fun e!2650006 () Bool)

(assert (=> b!4268235 (= e!2650006 (not (isEmpty!27999 (right!35397 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277)))))))))))

(declare-fun d!1258531 () Bool)

(declare-fun res!1753636 () Bool)

(declare-fun e!2650007 () Bool)

(assert (=> d!1258531 (=> res!1753636 e!2650007)))

(assert (=> d!1258531 (= res!1753636 (not ((_ is Node!14259) (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))))

(assert (=> d!1258531 (= (isBalanced!3816 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277)))))) e!2650007)))

(declare-fun b!4268236 () Bool)

(declare-fun res!1753635 () Bool)

(assert (=> b!4268236 (=> (not res!1753635) (not e!2650006))))

(assert (=> b!4268236 (= res!1753635 (not (isEmpty!27999 (left!35067 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277)))))))))))

(declare-fun b!4268237 () Bool)

(declare-fun res!1753634 () Bool)

(assert (=> b!4268237 (=> (not res!1753634) (not e!2650006))))

(assert (=> b!4268237 (= res!1753634 (<= (- (height!1878 (left!35067 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))) (height!1878 (right!35397 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277)))))))) 1))))

(declare-fun b!4268238 () Bool)

(declare-fun res!1753639 () Bool)

(assert (=> b!4268238 (=> (not res!1753639) (not e!2650006))))

(assert (=> b!4268238 (= res!1753639 (isBalanced!3816 (right!35397 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))))

(declare-fun b!4268239 () Bool)

(assert (=> b!4268239 (= e!2650007 e!2650006)))

(declare-fun res!1753637 () Bool)

(assert (=> b!4268239 (=> (not res!1753637) (not e!2650006))))

(assert (=> b!4268239 (= res!1753637 (<= (- 1) (- (height!1878 (left!35067 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))) (height!1878 (right!35397 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))))))

(declare-fun b!4268240 () Bool)

(declare-fun res!1753638 () Bool)

(assert (=> b!4268240 (=> (not res!1753638) (not e!2650006))))

(assert (=> b!4268240 (= res!1753638 (isBalanced!3816 (left!35067 (fromList!920 (Cons!47277 #x0055 (Cons!47277 #x006E (Cons!47277 #x0069 (Cons!47277 #x0074 Nil!47277))))))))))

(assert (= (and d!1258531 (not res!1753636)) b!4268239))

(assert (= (and b!4268239 res!1753637) b!4268237))

(assert (= (and b!4268237 res!1753634) b!4268240))

(assert (= (and b!4268240 res!1753638) b!4268238))

(assert (= (and b!4268238 res!1753639) b!4268236))

(assert (= (and b!4268236 res!1753635) b!4268235))

(declare-fun m!4860783 () Bool)

(assert (=> b!4268240 m!4860783))

(declare-fun m!4860785 () Bool)

(assert (=> b!4268237 m!4860785))

(declare-fun m!4860787 () Bool)

(assert (=> b!4268237 m!4860787))

(declare-fun m!4860789 () Bool)

(assert (=> b!4268236 m!4860789))

(declare-fun m!4860791 () Bool)

(assert (=> b!4268235 m!4860791))

(declare-fun m!4860793 () Bool)

(assert (=> b!4268238 m!4860793))

(assert (=> b!4268239 m!4860785))

(assert (=> b!4268239 m!4860787))

(assert (=> b!4267754 d!1258531))

(assert (=> b!4267754 d!1258267))

(declare-fun d!1258533 () Bool)

(declare-fun c!725896 () Bool)

(assert (=> d!1258533 (= c!725896 ((_ is Nil!47277) lt!1512164))))

(declare-fun e!2650008 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258533 (= (content!7472 lt!1512164) e!2650008)))

(declare-fun b!4268241 () Bool)

(assert (=> b!4268241 (= e!2650008 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268242 () Bool)

(assert (=> b!4268242 (= e!2650008 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 lt!1512164) true) (content!7472 (t!353527 lt!1512164))))))

(assert (= (and d!1258533 c!725896) b!4268241))

(assert (= (and d!1258533 (not c!725896)) b!4268242))

(declare-fun m!4860795 () Bool)

(assert (=> b!4268242 m!4860795))

(declare-fun m!4860797 () Bool)

(assert (=> b!4268242 m!4860797))

(assert (=> d!1258299 d!1258533))

(assert (=> d!1258299 d!1258277))

(declare-fun d!1258535 () Bool)

(declare-fun c!725897 () Bool)

(assert (=> d!1258535 (= c!725897 ((_ is Nil!47277) (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))))))

(declare-fun e!2650009 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258535 (= (content!7472 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))) e!2650009)))

(declare-fun b!4268243 () Bool)

(assert (=> b!4268243 (= e!2650009 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268244 () Bool)

(assert (=> b!4268244 (= e!2650009 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))) true) (content!7472 (t!353527 (++!12055 lt!1512059 (efficientList$default$2!152 (c!725567 x!738716)))))))))

(assert (= (and d!1258535 c!725897) b!4268243))

(assert (= (and d!1258535 (not c!725897)) b!4268244))

(declare-fun m!4860799 () Bool)

(assert (=> b!4268244 m!4860799))

(declare-fun m!4860801 () Bool)

(assert (=> b!4268244 m!4860801))

(assert (=> d!1258299 d!1258535))

(declare-fun d!1258537 () Bool)

(assert (=> d!1258537 (= (list!17096 (xs!17565 (left!35067 (c!725567 x!738716)))) (innerList!14319 (xs!17565 (left!35067 (c!725567 x!738716)))))))

(assert (=> b!4267561 d!1258537))

(declare-fun b!4268245 () Bool)

(declare-fun e!2650010 () List!47401)

(assert (=> b!4268245 (= e!2650010 lt!1512059)))

(declare-fun b!4268247 () Bool)

(declare-fun res!1753641 () Bool)

(declare-fun e!2650011 () Bool)

(assert (=> b!4268247 (=> (not res!1753641) (not e!2650011))))

(declare-fun lt!1512213 () List!47401)

(assert (=> b!4268247 (= res!1753641 (= (size!34629 lt!1512213) (+ (size!34629 (t!353527 lt!1512061)) (size!34629 lt!1512059))))))

(declare-fun b!4268248 () Bool)

(assert (=> b!4268248 (= e!2650011 (or (not (= lt!1512059 Nil!47277)) (= lt!1512213 (t!353527 lt!1512061))))))

(declare-fun d!1258539 () Bool)

(assert (=> d!1258539 e!2650011))

(declare-fun res!1753640 () Bool)

(assert (=> d!1258539 (=> (not res!1753640) (not e!2650011))))

(assert (=> d!1258539 (= res!1753640 (= (content!7472 lt!1512213) ((_ map or) (content!7472 (t!353527 lt!1512061)) (content!7472 lt!1512059))))))

(assert (=> d!1258539 (= lt!1512213 e!2650010)))

(declare-fun c!725898 () Bool)

(assert (=> d!1258539 (= c!725898 ((_ is Nil!47277) (t!353527 lt!1512061)))))

(assert (=> d!1258539 (= (++!12055 (t!353527 lt!1512061) lt!1512059) lt!1512213)))

(declare-fun b!4268246 () Bool)

(assert (=> b!4268246 (= e!2650010 (Cons!47277 (h!52697 (t!353527 lt!1512061)) (++!12055 (t!353527 (t!353527 lt!1512061)) lt!1512059)))))

(assert (= (and d!1258539 c!725898) b!4268245))

(assert (= (and d!1258539 (not c!725898)) b!4268246))

(assert (= (and d!1258539 res!1753640) b!4268247))

(assert (= (and b!4268247 res!1753641) b!4268248))

(declare-fun m!4860803 () Bool)

(assert (=> b!4268247 m!4860803))

(assert (=> b!4268247 m!4860653))

(assert (=> b!4268247 m!4859809))

(declare-fun m!4860805 () Bool)

(assert (=> d!1258539 m!4860805))

(assert (=> d!1258539 m!4860125))

(assert (=> d!1258539 m!4859815))

(declare-fun m!4860807 () Bool)

(assert (=> b!4268246 m!4860807))

(assert (=> b!4267756 d!1258539))

(declare-fun b!4268249 () Bool)

(declare-fun e!2650012 () List!47401)

(assert (=> b!4268249 (= e!2650012 (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4268251 () Bool)

(declare-fun res!1753643 () Bool)

(declare-fun e!2650013 () Bool)

(assert (=> b!4268251 (=> (not res!1753643) (not e!2650013))))

(declare-fun lt!1512214 () List!47401)

(assert (=> b!4268251 (= res!1753643 (= (size!34629 lt!1512214) (+ (size!34629 (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (size!34629 (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))))

(declare-fun b!4268252 () Bool)

(assert (=> b!4268252 (= e!2650013 (or (not (= (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) Nil!47277)) (= lt!1512214 (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258541 () Bool)

(assert (=> d!1258541 e!2650013))

(declare-fun res!1753642 () Bool)

(assert (=> d!1258541 (=> (not res!1753642) (not e!2650013))))

(assert (=> d!1258541 (= res!1753642 (= (content!7472 lt!1512214) ((_ map or) (content!7472 (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (content!7472 (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))))

(assert (=> d!1258541 (= lt!1512214 e!2650012)))

(declare-fun c!725899 () Bool)

(assert (=> d!1258541 (= c!725899 ((_ is Nil!47277) (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(assert (=> d!1258541 (= (++!12055 (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) lt!1512214)))

(declare-fun b!4268250 () Bool)

(assert (=> b!4268250 (= e!2650012 (Cons!47277 (h!52697 (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (++!12055 (t!353527 (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(assert (= (and d!1258541 c!725899) b!4268249))

(assert (= (and d!1258541 (not c!725899)) b!4268250))

(assert (= (and d!1258541 res!1753642) b!4268251))

(assert (= (and b!4268251 res!1753643) b!4268252))

(declare-fun m!4860809 () Bool)

(assert (=> b!4268251 m!4860809))

(assert (=> b!4268251 m!4859509))

(declare-fun m!4860811 () Bool)

(assert (=> b!4268251 m!4860811))

(assert (=> b!4268251 m!4859511))

(declare-fun m!4860813 () Bool)

(assert (=> b!4268251 m!4860813))

(declare-fun m!4860815 () Bool)

(assert (=> d!1258541 m!4860815))

(assert (=> d!1258541 m!4859509))

(declare-fun m!4860817 () Bool)

(assert (=> d!1258541 m!4860817))

(assert (=> d!1258541 m!4859511))

(declare-fun m!4860819 () Bool)

(assert (=> d!1258541 m!4860819))

(assert (=> b!4268250 m!4859511))

(declare-fun m!4860821 () Bool)

(assert (=> b!4268250 m!4860821))

(assert (=> b!4267578 d!1258541))

(declare-fun b!4268254 () Bool)

(declare-fun e!2650014 () List!47401)

(declare-fun e!2650015 () List!47401)

(assert (=> b!4268254 (= e!2650014 e!2650015)))

(declare-fun c!725901 () Bool)

(assert (=> b!4268254 (= c!725901 ((_ is Leaf!22044) (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4268253 () Bool)

(assert (=> b!4268253 (= e!2650014 Nil!47277)))

(declare-fun b!4268255 () Bool)

(assert (=> b!4268255 (= e!2650015 (list!17096 (xs!17565 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun b!4268256 () Bool)

(assert (=> b!4268256 (= e!2650015 (++!12055 (list!17094 (left!35067 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258543 () Bool)

(declare-fun c!725900 () Bool)

(assert (=> d!1258543 (= c!725900 ((_ is Empty!14259) (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258543 (= (list!17094 (left!35067 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) e!2650014)))

(assert (= (and d!1258543 c!725900) b!4268253))

(assert (= (and d!1258543 (not c!725900)) b!4268254))

(assert (= (and b!4268254 c!725901) b!4268255))

(assert (= (and b!4268254 (not c!725901)) b!4268256))

(declare-fun m!4860823 () Bool)

(assert (=> b!4268255 m!4860823))

(declare-fun m!4860825 () Bool)

(assert (=> b!4268256 m!4860825))

(declare-fun m!4860827 () Bool)

(assert (=> b!4268256 m!4860827))

(assert (=> b!4268256 m!4860825))

(assert (=> b!4268256 m!4860827))

(declare-fun m!4860829 () Bool)

(assert (=> b!4268256 m!4860829))

(assert (=> b!4267578 d!1258543))

(declare-fun b!4268258 () Bool)

(declare-fun e!2650016 () List!47401)

(declare-fun e!2650017 () List!47401)

(assert (=> b!4268258 (= e!2650016 e!2650017)))

(declare-fun c!725903 () Bool)

(assert (=> b!4268258 (= c!725903 ((_ is Leaf!22044) (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4268257 () Bool)

(assert (=> b!4268257 (= e!2650016 Nil!47277)))

(declare-fun b!4268259 () Bool)

(assert (=> b!4268259 (= e!2650017 (list!17096 (xs!17565 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun b!4268260 () Bool)

(assert (=> b!4268260 (= e!2650017 (++!12055 (list!17094 (left!35067 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) (list!17094 (right!35397 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))))

(declare-fun d!1258545 () Bool)

(declare-fun c!725902 () Bool)

(assert (=> d!1258545 (= c!725902 ((_ is Empty!14259) (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(assert (=> d!1258545 (= (list!17094 (right!35397 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))) e!2650016)))

(assert (= (and d!1258545 c!725902) b!4268257))

(assert (= (and d!1258545 (not c!725902)) b!4268258))

(assert (= (and b!4268258 c!725903) b!4268259))

(assert (= (and b!4268258 (not c!725903)) b!4268260))

(declare-fun m!4860831 () Bool)

(assert (=> b!4268259 m!4860831))

(declare-fun m!4860833 () Bool)

(assert (=> b!4268260 m!4860833))

(declare-fun m!4860835 () Bool)

(assert (=> b!4268260 m!4860835))

(assert (=> b!4268260 m!4860833))

(assert (=> b!4268260 m!4860835))

(declare-fun m!4860837 () Bool)

(assert (=> b!4268260 m!4860837))

(assert (=> b!4267578 d!1258545))

(assert (=> b!4267738 d!1258513))

(declare-fun d!1258547 () Bool)

(assert (=> d!1258547 (= (list!17096 (xs!17565 (right!35397 (c!725567 x!738716)))) (innerList!14319 (xs!17565 (right!35397 (c!725567 x!738716)))))))

(assert (=> b!4267565 d!1258547))

(assert (=> d!1258273 d!1257939))

(declare-fun bm!294077 () Bool)

(declare-fun c!725906 () Bool)

(declare-fun c!725904 () Bool)

(assert (=> bm!294077 (= c!725906 c!725904)))

(declare-fun e!2650020 () List!47401)

(declare-fun call!294082 () List!47401)

(assert (=> bm!294077 (= call!294082 (++!12055 e!2650020 (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun b!4268261 () Bool)

(assert (=> b!4268261 (= e!2650020 (efficientList!440 (xs!17565 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun d!1258549 () Bool)

(declare-fun lt!1512216 () List!47401)

(assert (=> d!1258549 (= lt!1512216 (++!12055 (list!17094 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))) (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(declare-fun e!2650019 () List!47401)

(assert (=> d!1258549 (= lt!1512216 e!2650019)))

(declare-fun c!725905 () Bool)

(assert (=> d!1258549 (= c!725905 ((_ is Empty!14259) (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(assert (=> d!1258549 (= (efficientList!438 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))) (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) lt!1512216)))

(declare-fun b!4268262 () Bool)

(declare-fun lt!1512217 () List!47401)

(assert (=> b!4268262 (= e!2650020 lt!1512217)))

(declare-fun b!4268263 () Bool)

(declare-fun e!2650018 () List!47401)

(assert (=> b!4268263 (= e!2650018 call!294082)))

(declare-fun b!4268264 () Bool)

(assert (=> b!4268264 (= e!2650019 (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(declare-fun b!4268265 () Bool)

(declare-fun lt!1512218 () Unit!66169)

(declare-fun lt!1512215 () Unit!66169)

(assert (=> b!4268265 (= lt!1512218 lt!1512215)))

(declare-fun lt!1512219 () List!47401)

(assert (=> b!4268265 (= (++!12055 (++!12055 lt!1512219 lt!1512217) (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))) (++!12055 lt!1512219 call!294082))))

(assert (=> b!4268265 (= lt!1512215 (lemmaConcatAssociativity!2698 lt!1512219 lt!1512217 (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(assert (=> b!4268265 (= lt!1512217 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(assert (=> b!4268265 (= lt!1512219 (list!17094 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))

(assert (=> b!4268265 (= e!2650018 (efficientList!438 (left!35067 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))) (efficientList!438 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))) (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))))

(declare-fun b!4268266 () Bool)

(assert (=> b!4268266 (= e!2650019 e!2650018)))

(assert (=> b!4268266 (= c!725904 ((_ is Leaf!22044) (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))))))

(assert (= (and d!1258549 c!725905) b!4268264))

(assert (= (and d!1258549 (not c!725905)) b!4268266))

(assert (= (and b!4268266 c!725904) b!4268263))

(assert (= (and b!4268266 (not c!725904)) b!4268265))

(assert (= (or b!4268263 b!4268265) bm!294077))

(assert (= (and bm!294077 c!725906) b!4268261))

(assert (= (and bm!294077 (not c!725906)) b!4268262))

(assert (=> bm!294077 m!4860115))

(declare-fun m!4860839 () Bool)

(assert (=> bm!294077 m!4860839))

(declare-fun m!4860841 () Bool)

(assert (=> b!4268261 m!4860841))

(assert (=> d!1258549 m!4859173))

(assert (=> d!1258549 m!4859173))

(assert (=> d!1258549 m!4860115))

(declare-fun m!4860843 () Bool)

(assert (=> d!1258549 m!4860843))

(declare-fun m!4860845 () Bool)

(assert (=> b!4268265 m!4860845))

(declare-fun m!4860847 () Bool)

(assert (=> b!4268265 m!4860847))

(declare-fun m!4860849 () Bool)

(assert (=> b!4268265 m!4860849))

(assert (=> b!4268265 m!4859215))

(assert (=> b!4268265 m!4860849))

(assert (=> b!4268265 m!4860115))

(declare-fun m!4860851 () Bool)

(assert (=> b!4268265 m!4860851))

(declare-fun m!4860853 () Bool)

(assert (=> b!4268265 m!4860853))

(assert (=> b!4268265 m!4860115))

(assert (=> b!4268265 m!4860845))

(assert (=> b!4268265 m!4859217))

(assert (=> b!4268265 m!4860115))

(declare-fun m!4860855 () Bool)

(assert (=> b!4268265 m!4860855))

(assert (=> d!1258273 d!1258549))

(declare-fun d!1258551 () Bool)

(assert (=> d!1258551 (= (efficientList$default$2!152 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716)))) Nil!47277)))

(assert (=> d!1258273 d!1258551))

(declare-fun b!4268267 () Bool)

(declare-fun e!2650021 () List!47401)

(assert (=> b!4268267 (= e!2650021 (efficientList$default$2!152 (c!725567 x!738716)))))

(declare-fun b!4268269 () Bool)

(declare-fun res!1753645 () Bool)

(declare-fun e!2650022 () Bool)

(assert (=> b!4268269 (=> (not res!1753645) (not e!2650022))))

(declare-fun lt!1512220 () List!47401)

(assert (=> b!4268269 (= res!1753645 (= (size!34629 lt!1512220) (+ (size!34629 (t!353527 (++!12055 lt!1512061 lt!1512059))) (size!34629 (efficientList$default$2!152 (c!725567 x!738716))))))))

(declare-fun b!4268270 () Bool)

(assert (=> b!4268270 (= e!2650022 (or (not (= (efficientList$default$2!152 (c!725567 x!738716)) Nil!47277)) (= lt!1512220 (t!353527 (++!12055 lt!1512061 lt!1512059)))))))

(declare-fun d!1258553 () Bool)

(assert (=> d!1258553 e!2650022))

(declare-fun res!1753644 () Bool)

(assert (=> d!1258553 (=> (not res!1753644) (not e!2650022))))

(assert (=> d!1258553 (= res!1753644 (= (content!7472 lt!1512220) ((_ map or) (content!7472 (t!353527 (++!12055 lt!1512061 lt!1512059))) (content!7472 (efficientList$default$2!152 (c!725567 x!738716))))))))

(assert (=> d!1258553 (= lt!1512220 e!2650021)))

(declare-fun c!725907 () Bool)

(assert (=> d!1258553 (= c!725907 ((_ is Nil!47277) (t!353527 (++!12055 lt!1512061 lt!1512059))))))

(assert (=> d!1258553 (= (++!12055 (t!353527 (++!12055 lt!1512061 lt!1512059)) (efficientList$default$2!152 (c!725567 x!738716))) lt!1512220)))

(declare-fun b!4268268 () Bool)

(assert (=> b!4268268 (= e!2650021 (Cons!47277 (h!52697 (t!353527 (++!12055 lt!1512061 lt!1512059))) (++!12055 (t!353527 (t!353527 (++!12055 lt!1512061 lt!1512059))) (efficientList$default$2!152 (c!725567 x!738716)))))))

(assert (= (and d!1258553 c!725907) b!4268267))

(assert (= (and d!1258553 (not c!725907)) b!4268268))

(assert (= (and d!1258553 res!1753644) b!4268269))

(assert (= (and b!4268269 res!1753645) b!4268270))

(declare-fun m!4860857 () Bool)

(assert (=> b!4268269 m!4860857))

(assert (=> b!4268269 m!4860631))

(assert (=> b!4268269 m!4859233))

(assert (=> b!4268269 m!4859425))

(declare-fun m!4860859 () Bool)

(assert (=> d!1258553 m!4860859))

(assert (=> d!1258553 m!4860227))

(assert (=> d!1258553 m!4859233))

(assert (=> d!1258553 m!4859431))

(assert (=> b!4268268 m!4859233))

(declare-fun m!4860861 () Bool)

(assert (=> b!4268268 m!4860861))

(assert (=> b!4267760 d!1258553))

(assert (=> d!1258301 d!1258181))

(assert (=> d!1258301 d!1258177))

(assert (=> d!1258301 d!1258299))

(assert (=> d!1258301 d!1258303))

(declare-fun d!1258555 () Bool)

(declare-fun c!725908 () Bool)

(assert (=> d!1258555 (= c!725908 ((_ is Nil!47277) (t!353527 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))

(declare-fun e!2650023 () (InoxSet (_ BitVec 16)))

(assert (=> d!1258555 (= (content!7472 (t!353527 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) e!2650023)))

(declare-fun b!4268271 () Bool)

(assert (=> b!4268271 (= e!2650023 ((as const (Array (_ BitVec 16) Bool)) false))))

(declare-fun b!4268272 () Bool)

(assert (=> b!4268272 (= e!2650023 ((_ map or) (store ((as const (Array (_ BitVec 16) Bool)) false) (h!52697 (t!353527 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))) true) (content!7472 (t!353527 (t!353527 (list!17094 (right!35397 (c!725567 (toCharacters!8 thiss!2386 (toValue!15 thiss!2386 x!738716))))))))))))

(assert (= (and d!1258555 c!725908) b!4268271))

(assert (= (and d!1258555 (not c!725908)) b!4268272))

(declare-fun m!4860863 () Bool)

(assert (=> b!4268272 m!4860863))

(declare-fun m!4860865 () Bool)

(assert (=> b!4268272 m!4860865))

(assert (=> b!4267695 d!1258555))

(declare-fun b!4268273 () Bool)

(declare-fun e!2650024 () List!47401)

(assert (=> b!4268273 (= e!2650024 (list!17094 (right!35397 (left!35067 (c!725567 x!738716)))))))

(declare-fun b!4268275 () Bool)

(declare-fun res!1753647 () Bool)

(declare-fun e!2650025 () Bool)

(assert (=> b!4268275 (=> (not res!1753647) (not e!2650025))))

(declare-fun lt!1512221 () List!47401)

(assert (=> b!4268275 (= res!1753647 (= (size!34629 lt!1512221) (+ (size!34629 (list!17094 (left!35067 (left!35067 (c!725567 x!738716))))) (size!34629 (list!17094 (right!35397 (left!35067 (c!725567 x!738716))))))))))

(declare-fun b!4268276 () Bool)

(assert (=> b!4268276 (= e!2650025 (or (not (= (list!17094 (right!35397 (left!35067 (c!725567 x!738716)))) Nil!47277)) (= lt!1512221 (list!17094 (left!35067 (left!35067 (c!725567 x!738716)))))))))

(declare-fun d!1258557 () Bool)

(assert (=> d!1258557 e!2650025))

(declare-fun res!1753646 () Bool)

(assert (=> d!1258557 (=> (not res!1753646) (not e!2650025))))

(assert (=> d!1258557 (= res!1753646 (= (content!7472 lt!1512221) ((_ map or) (content!7472 (list!17094 (left!35067 (left!35067 (c!725567 x!738716))))) (content!7472 (list!17094 (right!35397 (left!35067 (c!725567 x!738716))))))))))

(assert (=> d!1258557 (= lt!1512221 e!2650024)))

(declare-fun c!725909 () Bool)

(assert (=> d!1258557 (= c!725909 ((_ is Nil!47277) (list!17094 (left!35067 (left!35067 (c!725567 x!738716))))))))

(assert (=> d!1258557 (= (++!12055 (list!17094 (left!35067 (left!35067 (c!725567 x!738716)))) (list!17094 (right!35397 (left!35067 (c!725567 x!738716))))) lt!1512221)))

(declare-fun b!4268274 () Bool)

(assert (=> b!4268274 (= e!2650024 (Cons!47277 (h!52697 (list!17094 (left!35067 (left!35067 (c!725567 x!738716))))) (++!12055 (t!353527 (list!17094 (left!35067 (left!35067 (c!725567 x!738716))))) (list!17094 (right!35397 (left!35067 (c!725567 x!738716)))))))))

(assert (= (and d!1258557 c!725909) b!4268273))

(assert (= (and d!1258557 (not c!725909)) b!4268274))

(assert (= (and d!1258557 res!1753646) b!4268275))

(assert (= (and b!4268275 res!1753647) b!4268276))

(declare-fun m!4860867 () Bool)

(assert (=> b!4268275 m!4860867))

(assert (=> b!4268275 m!4859471))

(declare-fun m!4860869 () Bool)

(assert (=> b!4268275 m!4860869))

(assert (=> b!4268275 m!4859473))

(declare-fun m!4860871 () Bool)

(assert (=> b!4268275 m!4860871))

(declare-fun m!4860873 () Bool)

(assert (=> d!1258557 m!4860873))

(assert (=> d!1258557 m!4859471))

(declare-fun m!4860875 () Bool)

(assert (=> d!1258557 m!4860875))

(assert (=> d!1258557 m!4859473))

(declare-fun m!4860877 () Bool)

(assert (=> d!1258557 m!4860877))

(assert (=> b!4268274 m!4859473))

(declare-fun m!4860879 () Bool)

(assert (=> b!4268274 m!4860879))

(assert (=> b!4267562 d!1258557))

(declare-fun b!4268278 () Bool)

(declare-fun e!2650026 () List!47401)

(declare-fun e!2650027 () List!47401)

(assert (=> b!4268278 (= e!2650026 e!2650027)))

(declare-fun c!725911 () Bool)

(assert (=> b!4268278 (= c!725911 ((_ is Leaf!22044) (left!35067 (left!35067 (c!725567 x!738716)))))))

(declare-fun b!4268277 () Bool)

(assert (=> b!4268277 (= e!2650026 Nil!47277)))

(declare-fun b!4268279 () Bool)

(assert (=> b!4268279 (= e!2650027 (list!17096 (xs!17565 (left!35067 (left!35067 (c!725567 x!738716))))))))

(declare-fun b!4268280 () Bool)

(assert (=> b!4268280 (= e!2650027 (++!12055 (list!17094 (left!35067 (left!35067 (left!35067 (c!725567 x!738716))))) (list!17094 (right!35397 (left!35067 (left!35067 (c!725567 x!738716)))))))))

(declare-fun d!1258559 () Bool)

(declare-fun c!725910 () Bool)

(assert (=> d!1258559 (= c!725910 ((_ is Empty!14259) (left!35067 (left!35067 (c!725567 x!738716)))))))

(assert (=> d!1258559 (= (list!17094 (left!35067 (left!35067 (c!725567 x!738716)))) e!2650026)))

(assert (= (and d!1258559 c!725910) b!4268277))

(assert (= (and d!1258559 (not c!725910)) b!4268278))

(assert (= (and b!4268278 c!725911) b!4268279))

(assert (= (and b!4268278 (not c!725911)) b!4268280))

(declare-fun m!4860881 () Bool)

(assert (=> b!4268279 m!4860881))

(declare-fun m!4860883 () Bool)

(assert (=> b!4268280 m!4860883))

(declare-fun m!4860885 () Bool)

(assert (=> b!4268280 m!4860885))

(assert (=> b!4268280 m!4860883))

(assert (=> b!4268280 m!4860885))

(declare-fun m!4860887 () Bool)

(assert (=> b!4268280 m!4860887))

(assert (=> b!4267562 d!1258559))

(declare-fun b!4268282 () Bool)

(declare-fun e!2650028 () List!47401)

(declare-fun e!2650029 () List!47401)

(assert (=> b!4268282 (= e!2650028 e!2650029)))

(declare-fun c!725913 () Bool)

(assert (=> b!4268282 (= c!725913 ((_ is Leaf!22044) (right!35397 (left!35067 (c!725567 x!738716)))))))

(declare-fun b!4268281 () Bool)

(assert (=> b!4268281 (= e!2650028 Nil!47277)))

(declare-fun b!4268283 () Bool)

(assert (=> b!4268283 (= e!2650029 (list!17096 (xs!17565 (right!35397 (left!35067 (c!725567 x!738716))))))))

(declare-fun b!4268284 () Bool)

(assert (=> b!4268284 (= e!2650029 (++!12055 (list!17094 (left!35067 (right!35397 (left!35067 (c!725567 x!738716))))) (list!17094 (right!35397 (right!35397 (left!35067 (c!725567 x!738716)))))))))

(declare-fun d!1258561 () Bool)

(declare-fun c!725912 () Bool)

(assert (=> d!1258561 (= c!725912 ((_ is Empty!14259) (right!35397 (left!35067 (c!725567 x!738716)))))))

(assert (=> d!1258561 (= (list!17094 (right!35397 (left!35067 (c!725567 x!738716)))) e!2650028)))

(assert (= (and d!1258561 c!725912) b!4268281))

(assert (= (and d!1258561 (not c!725912)) b!4268282))

(assert (= (and b!4268282 c!725913) b!4268283))

(assert (= (and b!4268282 (not c!725913)) b!4268284))

(declare-fun m!4860889 () Bool)

(assert (=> b!4268283 m!4860889))

(declare-fun m!4860891 () Bool)

(assert (=> b!4268284 m!4860891))

(declare-fun m!4860893 () Bool)

(assert (=> b!4268284 m!4860893))

(assert (=> b!4268284 m!4860891))

(assert (=> b!4268284 m!4860893))

(declare-fun m!4860895 () Bool)

(assert (=> b!4268284 m!4860895))

(assert (=> b!4267562 d!1258561))

(declare-fun d!1258563 () Bool)

(declare-fun lt!1512222 () Int)

(assert (=> d!1258563 (>= lt!1512222 0)))

(declare-fun e!2650030 () Int)

(assert (=> d!1258563 (= lt!1512222 e!2650030)))

(declare-fun c!725914 () Bool)

(assert (=> d!1258563 (= c!725914 ((_ is Nil!47277) lt!1512124))))

(assert (=> d!1258563 (= (size!34629 lt!1512124) lt!1512222)))

(declare-fun b!4268285 () Bool)

(assert (=> b!4268285 (= e!2650030 0)))

(declare-fun b!4268286 () Bool)

(assert (=> b!4268286 (= e!2650030 (+ 1 (size!34629 (t!353527 lt!1512124))))))

(assert (= (and d!1258563 c!725914) b!4268285))

(assert (= (and d!1258563 (not c!725914)) b!4268286))

(declare-fun m!4860897 () Bool)

(assert (=> b!4268286 m!4860897))

(assert (=> b!4267757 d!1258563))

(assert (=> b!4267757 d!1258527))

(declare-fun d!1258565 () Bool)

(declare-fun lt!1512223 () Int)

(assert (=> d!1258565 (>= lt!1512223 0)))

(declare-fun e!2650031 () Int)

(assert (=> d!1258565 (= lt!1512223 e!2650031)))

(declare-fun c!725915 () Bool)

(assert (=> d!1258565 (= c!725915 ((_ is Nil!47277) lt!1512059))))

(assert (=> d!1258565 (= (size!34629 lt!1512059) lt!1512223)))

(declare-fun b!4268287 () Bool)

(assert (=> b!4268287 (= e!2650031 0)))

(declare-fun b!4268288 () Bool)

(assert (=> b!4268288 (= e!2650031 (+ 1 (size!34629 (t!353527 lt!1512059))))))

(assert (= (and d!1258565 c!725915) b!4268287))

(assert (= (and d!1258565 (not c!725915)) b!4268288))

(declare-fun m!4860899 () Bool)

(assert (=> b!4268288 m!4860899))

(assert (=> b!4267757 d!1258565))

(check-sat (not b!4268139) (not b!4268244) (not b!4267974) (not b!4267925) (not b!4267956) (not b!4267931) (not b!4268240) (not b!4267968) (not b!4267913) (not d!1258137) (not b!4267773) (not d!1258553) (not b!4267912) (not b!4267952) (not b!4267897) (not b!4268230) (not b!4267938) (not b!4268222) (not b!4267795) (not bm!294075) (not d!1258499) (not b!4268206) (not b!4267732) (not b!4268169) (not b!4267967) (not b!4267958) (not d!1258291) (not b!4268224) (not b!4268148) (not d!1258481) (not b!4267911) (not b!4267751) (not d!1258149) (not b!4268269) (not b!4268242) (not b!4268170) (not d!1258557) (not b!4267970) (not b!4268213) (not b!4268259) (not d!1258549) (not b!4268193) (not b!4267799) (not b!4267899) (not b!4268279) (not b!4268211) (not b!4267797) (not b!4267976) (not b!4268177) (not b!4267907) (not b!4268192) (not b!4267710) (not b!4267791) (not b!4268163) (not b!4268251) (not b!4268154) (not d!1258521) (not b!4268165) (not b!4267917) (not b!4267939) (not bm!294077) (not b!4267767) (not b!4268173) (not b!4267731) (not b!4268223) (not b!4267946) (not b!4268275) (not b!4267891) (not b!4267890) (not b!4268209) (not b!4268260) (not b!4267794) (not b!4268172) (not b!4267727) (not b!4267793) (not b!4268288) (not b!4267777) (not b!4268185) (not b!4268265) (not b!4267792) (not d!1258449) (not b!4268162) (not b!4267491) (not b!4268237) (not b!4267707) (not b!4268261) (not b!4267796) (not b!4268272) (not b!4268147) (not d!1258541) (not b!4267752) (not b!4267947) (not d!1258457) (not d!1258493) (not b!4268175) (not b!4268150) (not b!4268156) (not b!4268181) (not b!4268246) (not b!4268199) (not b!4267894) (not b!4267753) (not b!4268232) (not d!1258133) (not b!4268283) (not b!4268167) (not b!4268197) (not b!4268236) (not b!4267954) (not b!4268207) (not b!4268152) (not b!4268144) (not b!4267927) (not b!4268256) (not b!4268234) (not b!4267729) (not b!4267972) (not b!4267962) (not b!4267943) (not b!4267919) (not d!1258539) (not b!4268250) (not b!4267914) (not b!4267940) (not b!4268183) (not b!4268187) (not b!4268239) (not b!4268176) (not b!4267905) (not b!4267800) (not b!4268196) (not b!4268286) (not b!4268179) (not b!4268228) (not b!4267923) (not b!4267798) (not b!4267900) (not b!4268219) (not b!4267942) (not b!4267895) (not b!4267916) (not b!4267960) (not b!4268274) (not b!4267964) (not b!4268158) (not b!4267950) (not b!4267909) (not b!4268226) (not b!4268215) (not b!4267920) (not b!4268135) (not d!1258461) (not b!4267748) (not b!4267922) (not b!4268174) (not b!4268255) (not b!4267930) (not b!4268188) (not b!4268225) (not b!4268247) (not bm!294074) (not b!4267915) (not d!1258455) (not b!4267904) (not b!4268217) (not d!1258141) (not b!4268235) (not b!4267734) (not b!4268134) (not b!4267763) (not b!4268161) (not b!4268145) (not b!4268284) (not b!4268203) (not b!4268238) (not b!4268140) (not b!4268280) (not b!4268200) (not b!4268143) (not b!4267711) (not b!4268268))
(check-sat)
