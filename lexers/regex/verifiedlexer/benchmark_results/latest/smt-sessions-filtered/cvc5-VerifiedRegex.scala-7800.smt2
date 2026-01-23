; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!409778 () Bool)

(assert start!409778)

(assert (=> start!409778 true))

(declare-fun b!4271386 () Bool)

(declare-fun e!2652006 () Bool)

(declare-datatypes ((List!47432 0))(
  ( (Nil!47308) (Cons!47308 (h!52728 (_ BitVec 16)) (t!353746 List!47432)) )
))
(declare-datatypes ((IArray!28585 0))(
  ( (IArray!28586 (innerList!14350 List!47432)) )
))
(declare-datatypes ((Conc!14290 0))(
  ( (Node!14290 (left!35160 Conc!14290) (right!35490 Conc!14290) (csize!28810 Int) (cheight!14501 Int)) (Leaf!22091 (xs!17596 IArray!28585) (csize!28811 Int)) (Empty!14290) )
))
(declare-datatypes ((BalanceConc!28090 0))(
  ( (BalanceConc!28091 (c!726745 Conc!14290)) )
))
(declare-fun x!741079 () BalanceConc!28090)

(declare-fun tp!1308089 () Bool)

(declare-fun inv!62437 (Conc!14290) Bool)

(assert (=> b!4271386 (= e!2652006 (and (inv!62437 (c!726745 x!741079)) tp!1308089))))

(declare-fun inst!1706 () Bool)

(declare-datatypes ((IntegerValueInjection!132 0))(
  ( (IntegerValueInjection!133) )
))
(declare-fun thiss!2185 () IntegerValueInjection!132)

(declare-fun inv!62438 (BalanceConc!28090) Bool)

(declare-fun list!17163 (BalanceConc!28090) List!47432)

(declare-datatypes ((TokenValue!8263 0))(
  ( (FloatLiteralValue!16526 (text!58286 List!47432)) (TokenValueExt!8262 (__x!28709 Int)) (Broken!41315 (value!249447 List!47432)) (Object!8386) (End!8263) (Def!8263) (Underscore!8263) (Match!8263) (Else!8263) (Error!8263) (Case!8263) (If!8263) (Extends!8263) (Abstract!8263) (Class!8263) (Val!8263) (DelimiterValue!16526 (del!8323 List!47432)) (KeywordValue!8269 (value!249448 List!47432)) (CommentValue!16526 (value!249449 List!47432)) (WhitespaceValue!16526 (value!249450 List!47432)) (IndentationValue!8263 (value!249451 List!47432)) (String!55266) (Int32!8263) (Broken!41316 (value!249452 List!47432)) (Boolean!8264) (Unit!66229) (OperatorValue!8266 (op!8323 List!47432)) (IdentifierValue!16526 (value!249453 List!47432)) (IdentifierValue!16527 (value!249454 List!47432)) (WhitespaceValue!16527 (value!249455 List!47432)) (True!16526) (False!16526) (Broken!41317 (value!249456 List!47432)) (Broken!41318 (value!249457 List!47432)) (True!16527) (RightBrace!8263) (RightBracket!8263) (Colon!8263) (Null!8263) (Comma!8263) (LeftBracket!8263) (False!16527) (LeftBrace!8263) (ImaginaryLiteralValue!8263 (text!58287 List!47432)) (StringLiteralValue!24789 (value!249458 List!47432)) (EOFValue!8263 (value!249459 List!47432)) (IdentValue!8263 (value!249460 List!47432)) (DelimiterValue!16527 (value!249461 List!47432)) (DedentValue!8263 (value!249462 List!47432)) (NewLineValue!8263 (value!249463 List!47432)) (IntegerValue!24789 (value!249464 (_ BitVec 32)) (text!58288 List!47432)) (IntegerValue!24790 (value!249465 Int) (text!58289 List!47432)) (Times!8263) (Or!8263) (Equal!8263) (Minus!8263) (Broken!41319 (value!249466 List!47432)) (And!8263) (Div!8263) (LessEqual!8263) (Mod!8263) (Concat!21161) (Not!8263) (Plus!8263) (SpaceValue!8263 (value!249467 List!47432)) (IntegerValue!24791 (value!249468 Int) (text!58290 List!47432)) (StringLiteralValue!24790 (text!58291 List!47432)) (FloatLiteralValue!16527 (text!58292 List!47432)) (BytesLiteralValue!8263 (value!249469 List!47432)) (CommentValue!16527 (value!249470 List!47432)) (StringLiteralValue!24791 (value!249471 List!47432)) (ErrorTokenValue!8263 (msg!8324 List!47432)) )
))
(declare-fun toCharacters!5 (IntegerValueInjection!132 TokenValue!8263) BalanceConc!28090)

(declare-fun toValue!12 (IntegerValueInjection!132 BalanceConc!28090) TokenValue!8263)

(assert (=> start!409778 (= inst!1706 (=> (and (inv!62438 x!741079) e!2652006) (= (list!17163 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079))) (list!17163 x!741079))))))

(assert (= start!409778 b!4271386))

(declare-fun m!4864905 () Bool)

(assert (=> b!4271386 m!4864905))

(declare-fun m!4864907 () Bool)

(assert (=> start!409778 m!4864907))

(declare-fun m!4864909 () Bool)

(assert (=> start!409778 m!4864909))

(declare-fun m!4864911 () Bool)

(assert (=> start!409778 m!4864911))

(assert (=> start!409778 m!4864909))

(declare-fun m!4864913 () Bool)

(assert (=> start!409778 m!4864913))

(assert (=> start!409778 m!4864913))

(declare-fun m!4864915 () Bool)

(assert (=> start!409778 m!4864915))

(declare-fun bs!600916 () Bool)

(declare-fun neg-inst!1706 () Bool)

(declare-fun s!239844 () Bool)

(assert (= bs!600916 (and neg-inst!1706 s!239844)))

(assert (=> bs!600916 (=> true (= (list!17163 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079))) (list!17163 x!741079)))))

(assert (=> m!4864909 m!4864913))

(assert (=> m!4864909 m!4864915))

(assert (=> m!4864909 m!4864907))

(assert (=> m!4864909 s!239844))

(assert (=> m!4864907 s!239844))

(declare-fun bs!600917 () Bool)

(assert (= bs!600917 (and neg-inst!1706 start!409778)))

(assert (=> bs!600917 (= true inst!1706)))

(declare-fun lambda!130894 () Int)

(declare-fun Forall!1637 (Int) Bool)

(assert (=> start!409778 (= (Forall!1637 lambda!130894) inst!1706)))

(assert (=> start!409778 (not (Forall!1637 lambda!130894))))

(assert (=> start!409778 true))

(assert (= neg-inst!1706 inst!1706))

(declare-fun m!4864917 () Bool)

(assert (=> start!409778 m!4864917))

(assert (=> start!409778 m!4864917))

(push 1)

(assert (not start!409778))

(assert (not b!4271386))

(assert (not bs!600916))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259883 () Bool)

(declare-fun list!17165 (Conc!14290) List!47432)

(assert (=> d!1259883 (= (list!17163 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079))) (list!17165 (c!726745 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079)))))))

(declare-fun bs!600920 () Bool)

(assert (= bs!600920 d!1259883))

(declare-fun m!4864933 () Bool)

(assert (=> bs!600920 m!4864933))

(assert (=> bs!600916 d!1259883))

(declare-fun d!1259885 () Bool)

(declare-fun c!726750 () Bool)

(assert (=> d!1259885 (= c!726750 (is-IntegerValue!24789 (toValue!12 thiss!2185 x!741079)))))

(declare-fun e!2652012 () BalanceConc!28090)

(assert (=> d!1259885 (= (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079)) e!2652012)))

(declare-fun b!4271396 () Bool)

(declare-fun seqFromList!5871 (List!47432) BalanceConc!28090)

(assert (=> b!4271396 (= e!2652012 (seqFromList!5871 (text!58288 (toValue!12 thiss!2185 x!741079))))))

(declare-fun b!4271397 () Bool)

(assert (=> b!4271397 (= e!2652012 (BalanceConc!28091 Empty!14290))))

(assert (= (and d!1259885 c!726750) b!4271396))

(assert (= (and d!1259885 (not c!726750)) b!4271397))

(declare-fun m!4864935 () Bool)

(assert (=> b!4271396 m!4864935))

(assert (=> bs!600916 d!1259885))

(declare-fun d!1259887 () Bool)

(declare-fun lt!1512817 () List!47432)

(declare-fun efficientList!507 (BalanceConc!28090) List!47432)

(assert (=> d!1259887 (= lt!1512817 (efficientList!507 x!741079))))

(declare-fun charsToInt!0 (List!47432) (_ BitVec 32))

(assert (=> d!1259887 (= (toValue!12 thiss!2185 x!741079) (IntegerValue!24789 (charsToInt!0 lt!1512817) lt!1512817))))

(declare-fun bs!600921 () Bool)

(assert (= bs!600921 d!1259887))

(declare-fun m!4864937 () Bool)

(assert (=> bs!600921 m!4864937))

(declare-fun m!4864939 () Bool)

(assert (=> bs!600921 m!4864939))

(assert (=> bs!600916 d!1259887))

(declare-fun d!1259891 () Bool)

(assert (=> d!1259891 (= (list!17163 x!741079) (list!17165 (c!726745 x!741079)))))

(declare-fun bs!600922 () Bool)

(assert (= bs!600922 d!1259891))

(declare-fun m!4864941 () Bool)

(assert (=> bs!600922 m!4864941))

(assert (=> bs!600916 d!1259891))

(push 1)

(assert (not d!1259883))

(assert (not b!4271396))

(assert (not b!4271386))

(assert (not start!409778))

(assert (not d!1259887))

(assert (not d!1259891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259897 () Bool)

(declare-fun c!726759 () Bool)

(assert (=> d!1259897 (= c!726759 (is-Empty!14290 (c!726745 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079)))))))

(declare-fun e!2652020 () List!47432)

(assert (=> d!1259897 (= (list!17165 (c!726745 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079)))) e!2652020)))

(declare-fun b!4271412 () Bool)

(assert (=> b!4271412 (= e!2652020 Nil!47308)))

(declare-fun b!4271415 () Bool)

(declare-fun e!2652021 () List!47432)

(declare-fun ++!12071 (List!47432 List!47432) List!47432)

(assert (=> b!4271415 (= e!2652021 (++!12071 (list!17165 (left!35160 (c!726745 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079))))) (list!17165 (right!35490 (c!726745 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079)))))))))

(declare-fun b!4271413 () Bool)

(assert (=> b!4271413 (= e!2652020 e!2652021)))

(declare-fun c!726760 () Bool)

(assert (=> b!4271413 (= c!726760 (is-Leaf!22091 (c!726745 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079)))))))

(declare-fun b!4271414 () Bool)

(declare-fun list!17167 (IArray!28585) List!47432)

(assert (=> b!4271414 (= e!2652021 (list!17167 (xs!17596 (c!726745 (toCharacters!5 thiss!2185 (toValue!12 thiss!2185 x!741079))))))))

(assert (= (and d!1259897 c!726759) b!4271412))

(assert (= (and d!1259897 (not c!726759)) b!4271413))

(assert (= (and b!4271413 c!726760) b!4271414))

(assert (= (and b!4271413 (not c!726760)) b!4271415))

(declare-fun m!4864947 () Bool)

(assert (=> b!4271415 m!4864947))

(declare-fun m!4864949 () Bool)

(assert (=> b!4271415 m!4864949))

(assert (=> b!4271415 m!4864947))

(assert (=> b!4271415 m!4864949))

(declare-fun m!4864951 () Bool)

(assert (=> b!4271415 m!4864951))

(declare-fun m!4864953 () Bool)

(assert (=> b!4271414 m!4864953))

(assert (=> d!1259883 d!1259897))

(declare-fun d!1259899 () Bool)

(declare-fun lt!1512822 () List!47432)

(assert (=> d!1259899 (= lt!1512822 (list!17163 x!741079))))

(declare-fun efficientList!508 (Conc!14290 List!47432) List!47432)

(declare-fun efficientList$default$2!176 (Conc!14290) List!47432)

(assert (=> d!1259899 (= lt!1512822 (efficientList!508 (c!726745 x!741079) (efficientList$default$2!176 (c!726745 x!741079))))))

(assert (=> d!1259899 (= (efficientList!507 x!741079) lt!1512822)))

(declare-fun bs!600924 () Bool)

(assert (= bs!600924 d!1259899))

(assert (=> bs!600924 m!4864907))

(declare-fun m!4864955 () Bool)

(assert (=> bs!600924 m!4864955))

(assert (=> bs!600924 m!4864955))

(declare-fun m!4864957 () Bool)

(assert (=> bs!600924 m!4864957))

(assert (=> d!1259887 d!1259899))

(declare-fun d!1259901 () Bool)

(declare-fun choose!625 (List!47432) (_ BitVec 32))

(assert (=> d!1259901 (= (charsToInt!0 lt!1512817) (choose!625 lt!1512817))))

(declare-fun bs!600925 () Bool)

(assert (= bs!600925 d!1259901))

(declare-fun m!4864959 () Bool)

(assert (=> bs!600925 m!4864959))

(assert (=> d!1259887 d!1259901))

(declare-fun d!1259903 () Bool)

(declare-fun c!726761 () Bool)

(assert (=> d!1259903 (= c!726761 (is-Empty!14290 (c!726745 x!741079)))))

(declare-fun e!2652022 () List!47432)

(assert (=> d!1259903 (= (list!17165 (c!726745 x!741079)) e!2652022)))

(declare-fun b!4271416 () Bool)

(assert (=> b!4271416 (= e!2652022 Nil!47308)))

(declare-fun b!4271419 () Bool)

(declare-fun e!2652023 () List!47432)

(assert (=> b!4271419 (= e!2652023 (++!12071 (list!17165 (left!35160 (c!726745 x!741079))) (list!17165 (right!35490 (c!726745 x!741079)))))))

(declare-fun b!4271417 () Bool)

(assert (=> b!4271417 (= e!2652022 e!2652023)))

(declare-fun c!726762 () Bool)

(assert (=> b!4271417 (= c!726762 (is-Leaf!22091 (c!726745 x!741079)))))

(declare-fun b!4271418 () Bool)

(assert (=> b!4271418 (= e!2652023 (list!17167 (xs!17596 (c!726745 x!741079))))))

(assert (= (and d!1259903 c!726761) b!4271416))

(assert (= (and d!1259903 (not c!726761)) b!4271417))

(assert (= (and b!4271417 c!726762) b!4271418))

(assert (= (and b!4271417 (not c!726762)) b!4271419))

(declare-fun m!4864965 () Bool)

(assert (=> b!4271419 m!4864965))

(declare-fun m!4864967 () Bool)

(assert (=> b!4271419 m!4864967))

(assert (=> b!4271419 m!4864965))

(assert (=> b!4271419 m!4864967))

(declare-fun m!4864969 () Bool)

(assert (=> b!4271419 m!4864969))

(declare-fun m!4864973 () Bool)

(assert (=> b!4271418 m!4864973))

(assert (=> d!1259891 d!1259903))

(push 1)

(assert (not d!1259899))

(assert (not b!4271415))

(assert (not b!4271414))

(assert (not b!4271396))

(assert (not b!4271386))

(assert (not b!4271419))

(assert (not start!409778))

(assert (not b!4271418))

(assert (not d!1259901))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> start!409778 d!1259885))

(assert (=> start!409778 d!1259891))

(declare-fun d!1259907 () Bool)

(declare-fun isBalanced!3842 (Conc!14290) Bool)

(assert (=> d!1259907 (= (inv!62438 x!741079) (isBalanced!3842 (c!726745 x!741079)))))

(declare-fun bs!600928 () Bool)

(assert (= bs!600928 d!1259907))

(declare-fun m!4864975 () Bool)

(assert (=> bs!600928 m!4864975))

(assert (=> start!409778 d!1259907))

(assert (=> start!409778 d!1259887))

(assert (=> start!409778 d!1259883))

(declare-fun d!1259909 () Bool)

(declare-fun choose!26046 (Int) Bool)

(assert (=> d!1259909 (= (Forall!1637 lambda!130894) (choose!26046 lambda!130894))))

(declare-fun bs!600929 () Bool)

(assert (= bs!600929 d!1259909))

(declare-fun m!4864977 () Bool)

(assert (=> bs!600929 m!4864977))

(assert (=> start!409778 d!1259909))

(declare-fun d!1259911 () Bool)

(declare-fun c!726765 () Bool)

(assert (=> d!1259911 (= c!726765 (is-Node!14290 (c!726745 x!741079)))))

(declare-fun e!2652028 () Bool)

(assert (=> d!1259911 (= (inv!62437 (c!726745 x!741079)) e!2652028)))

(declare-fun b!4271426 () Bool)

(declare-fun inv!62441 (Conc!14290) Bool)

(assert (=> b!4271426 (= e!2652028 (inv!62441 (c!726745 x!741079)))))

(declare-fun b!4271427 () Bool)

(declare-fun e!2652029 () Bool)

(assert (=> b!4271427 (= e!2652028 e!2652029)))

(declare-fun res!1754565 () Bool)

(assert (=> b!4271427 (= res!1754565 (not (is-Leaf!22091 (c!726745 x!741079))))))

(assert (=> b!4271427 (=> res!1754565 e!2652029)))

(declare-fun b!4271428 () Bool)

(declare-fun inv!62442 (Conc!14290) Bool)

(assert (=> b!4271428 (= e!2652029 (inv!62442 (c!726745 x!741079)))))

(assert (= (and d!1259911 c!726765) b!4271426))

(assert (= (and d!1259911 (not c!726765)) b!4271427))

(assert (= (and b!4271427 (not res!1754565)) b!4271428))

(declare-fun m!4864979 () Bool)

(assert (=> b!4271426 m!4864979))

(declare-fun m!4864981 () Bool)

(assert (=> b!4271428 m!4864981))

(assert (=> b!4271386 d!1259911))

(declare-fun d!1259915 () Bool)

(assert (=> d!1259915 true))

(assert (=> d!1259915 true))

(declare-fun res!1754568 () (_ BitVec 32))

(assert (=> d!1259915 (= (choose!625 lt!1512817) res!1754568)))

(assert (=> d!1259901 d!1259915))

(declare-fun d!1259917 () Bool)

(declare-fun fromListB!2667 (List!47432) BalanceConc!28090)

(assert (=> d!1259917 (= (seqFromList!5871 (text!58288 (toValue!12 thiss!2185 x!741079))) (fromListB!2667 (text!58288 (toValue!12 thiss!2185 x!741079))))))

(declare-fun bs!600930 () Bool)

(assert (= bs!600930 d!1259917))

(declare-fun m!4864983 () Bool)

(assert (=> bs!600930 m!4864983))

(assert (=> b!4271396 d!1259917))

(assert (=> d!1259899 d!1259891))

(declare-fun b!4271453 () Bool)

(declare-fun e!2652043 () List!47432)

(declare-fun call!294155 () List!47432)

(assert (=> b!4271453 (= e!2652043 call!294155)))

(declare-fun b!4271454 () Bool)

(declare-fun e!2652044 () List!47432)

(declare-fun lt!1512838 () List!47432)

(assert (=> b!4271454 (= e!2652044 lt!1512838)))

(declare-fun b!4271455 () Bool)

(declare-fun e!2652042 () List!47432)

(assert (=> b!4271455 (= e!2652042 (efficientList$default$2!176 (c!726745 x!741079)))))

(declare-fun b!4271457 () Bool)

(declare-datatypes ((Unit!66231 0))(
  ( (Unit!66232) )
))
(declare-fun lt!1512835 () Unit!66231)

(declare-fun lt!1512837 () Unit!66231)

(assert (=> b!4271457 (= lt!1512835 lt!1512837)))

(declare-fun lt!1512834 () List!47432)

(assert (=> b!4271457 (= (++!12071 call!294155 (efficientList$default$2!176 (c!726745 x!741079))) (++!12071 lt!1512838 (++!12071 lt!1512834 (efficientList$default$2!176 (c!726745 x!741079)))))))

(declare-fun lemmaConcatAssociativity!2712 (List!47432 List!47432 List!47432) Unit!66231)

(assert (=> b!4271457 (= lt!1512837 (lemmaConcatAssociativity!2712 lt!1512838 lt!1512834 (efficientList$default$2!176 (c!726745 x!741079))))))

(assert (=> b!4271457 (= lt!1512834 (list!17165 (right!35490 (c!726745 x!741079))))))

(assert (=> b!4271457 (= lt!1512838 (list!17165 (left!35160 (c!726745 x!741079))))))

(assert (=> b!4271457 (= e!2652043 (efficientList!508 (left!35160 (c!726745 x!741079)) (efficientList!508 (right!35490 (c!726745 x!741079)) (efficientList$default$2!176 (c!726745 x!741079)))))))

(declare-fun b!4271456 () Bool)

(assert (=> b!4271456 (= e!2652042 e!2652043)))

(declare-fun c!726779 () Bool)

(assert (=> b!4271456 (= c!726779 (is-Leaf!22091 (c!726745 x!741079)))))

(declare-fun d!1259919 () Bool)

(declare-fun lt!1512836 () List!47432)

(assert (=> d!1259919 (= lt!1512836 (++!12071 (list!17165 (c!726745 x!741079)) (efficientList$default$2!176 (c!726745 x!741079))))))

(assert (=> d!1259919 (= lt!1512836 e!2652042)))

(declare-fun c!726778 () Bool)

(assert (=> d!1259919 (= c!726778 (is-Empty!14290 (c!726745 x!741079)))))

(assert (=> d!1259919 (= (efficientList!508 (c!726745 x!741079) (efficientList$default$2!176 (c!726745 x!741079))) lt!1512836)))

(declare-fun bm!294150 () Bool)

(declare-fun c!726780 () Bool)

(assert (=> bm!294150 (= c!726780 c!726779)))

(assert (=> bm!294150 (= call!294155 (++!12071 e!2652044 (ite c!726779 (efficientList$default$2!176 (c!726745 x!741079)) lt!1512834)))))

(declare-fun b!4271458 () Bool)

(declare-fun efficientList!510 (IArray!28585) List!47432)

(assert (=> b!4271458 (= e!2652044 (efficientList!510 (xs!17596 (c!726745 x!741079))))))

(assert (= (and d!1259919 c!726778) b!4271455))

(assert (= (and d!1259919 (not c!726778)) b!4271456))

(assert (= (and b!4271456 c!726779) b!4271453))

(assert (= (and b!4271456 (not c!726779)) b!4271457))

(assert (= (or b!4271453 b!4271457) bm!294150))

(assert (= (and bm!294150 c!726780) b!4271458))

(assert (= (and bm!294150 (not c!726780)) b!4271454))

(assert (=> b!4271457 m!4864965))

(assert (=> b!4271457 m!4864955))

(declare-fun m!4864993 () Bool)

(assert (=> b!4271457 m!4864993))

(assert (=> b!4271457 m!4864967))

(assert (=> b!4271457 m!4864955))

(declare-fun m!4864995 () Bool)

(assert (=> b!4271457 m!4864995))

(assert (=> b!4271457 m!4864955))

(declare-fun m!4864997 () Bool)

(assert (=> b!4271457 m!4864997))

(declare-fun m!4864999 () Bool)

(assert (=> b!4271457 m!4864999))

(declare-fun m!4865001 () Bool)

(assert (=> b!4271457 m!4865001))

(assert (=> b!4271457 m!4864993))

(declare-fun m!4865003 () Bool)

(assert (=> b!4271457 m!4865003))

(assert (=> b!4271457 m!4864955))

(assert (=> b!4271457 m!4864999))

(assert (=> d!1259919 m!4864941))

(assert (=> d!1259919 m!4864941))

(assert (=> d!1259919 m!4864955))

(declare-fun m!4865005 () Bool)

(assert (=> d!1259919 m!4865005))

(declare-fun m!4865007 () Bool)

(assert (=> bm!294150 m!4865007))

(declare-fun m!4865009 () Bool)

(assert (=> b!4271458 m!4865009))

(assert (=> d!1259899 d!1259919))

(declare-fun d!1259923 () Bool)

(assert (=> d!1259923 (= (efficientList$default$2!176 (c!726745 x!741079)) Nil!47308)))

(assert (=> d!1259899 d!1259923))

(declare-fun tp!1308097 () Bool)

(declare-fun tp!1308098 () Bool)

(declare-fun e!2652049 () Bool)

(declare-fun b!4271465 () Bool)

(assert (=> b!4271465 (= e!2652049 (and (inv!62437 (left!35160 (c!726745 x!741079))) tp!1308097 (inv!62437 (right!35490 (c!726745 x!741079))) tp!1308098))))

(declare-fun b!4271466 () Bool)

(declare-fun inv!62443 (IArray!28585) Bool)

(assert (=> b!4271466 (= e!2652049 (inv!62443 (xs!17596 (c!726745 x!741079))))))

(assert (=> b!4271386 (= tp!1308089 (and (inv!62437 (c!726745 x!741079)) e!2652049))))

(assert (= (and b!4271386 (is-Node!14290 (c!726745 x!741079))) b!4271465))

(assert (= (and b!4271386 (is-Leaf!22091 (c!726745 x!741079))) b!4271466))

(declare-fun m!4865011 () Bool)

(assert (=> b!4271465 m!4865011))

(declare-fun m!4865013 () Bool)

(assert (=> b!4271465 m!4865013))

(declare-fun m!4865015 () Bool)

(assert (=> b!4271466 m!4865015))

(assert (=> b!4271386 m!4864905))

(push 1)

(assert (not b!4271466))

(assert (not b!4271426))

(assert (not b!4271428))

(assert (not b!4271465))

(assert (not b!4271418))

(assert (not bm!294150))

(assert (not b!4271386))

(assert (not b!4271419))

(assert (not d!1259917))

(assert (not b!4271458))

(assert (not b!4271415))

(assert (not d!1259919))

(assert (not b!4271414))

(assert (not d!1259909))

(assert (not d!1259907))

(assert (not b!4271457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1259931 () Bool)

(declare-fun e!2652055 () Bool)

(assert (=> d!1259931 e!2652055))

(declare-fun res!1754571 () Bool)

(assert (=> d!1259931 (=> (not res!1754571) (not e!2652055))))

(declare-fun lt!1512844 () BalanceConc!28090)

(assert (=> d!1259931 (= res!1754571 (= (list!17163 lt!1512844) (text!58288 (toValue!12 thiss!2185 x!741079))))))

(declare-fun fromList!925 (List!47432) Conc!14290)

(assert (=> d!1259931 (= lt!1512844 (BalanceConc!28091 (fromList!925 (text!58288 (toValue!12 thiss!2185 x!741079)))))))

(assert (=> d!1259931 (= (fromListB!2667 (text!58288 (toValue!12 thiss!2185 x!741079))) lt!1512844)))

(declare-fun b!4271473 () Bool)

(assert (=> b!4271473 (= e!2652055 (isBalanced!3842 (fromList!925 (text!58288 (toValue!12 thiss!2185 x!741079)))))))

(assert (= (and d!1259931 res!1754571) b!4271473))

(declare-fun m!4865031 () Bool)

(assert (=> d!1259931 m!4865031))

(declare-fun m!4865033 () Bool)

(assert (=> d!1259931 m!4865033))

(assert (=> b!4271473 m!4865033))

(assert (=> b!4271473 m!4865033))

(declare-fun m!4865035 () Bool)

(assert (=> b!4271473 m!4865035))

(assert (=> d!1259917 d!1259931))

(declare-fun b!4271484 () Bool)

(declare-fun res!1754577 () Bool)

(declare-fun e!2652060 () Bool)

(assert (=> b!4271484 (=> (not res!1754577) (not e!2652060))))

(declare-fun lt!1512847 () List!47432)

(declare-fun size!34642 (List!47432) Int)

(assert (=> b!4271484 (= res!1754577 (= (size!34642 lt!1512847) (+ (size!34642 (list!17165 (c!726745 x!741079))) (size!34642 (efficientList$default$2!176 (c!726745 x!741079))))))))

(declare-fun b!4271482 () Bool)

(declare-fun e!2652061 () List!47432)

(assert (=> b!4271482 (= e!2652061 (efficientList$default$2!176 (c!726745 x!741079)))))

(declare-fun b!4271485 () Bool)

(assert (=> b!4271485 (= e!2652060 (or (not (= (efficientList$default$2!176 (c!726745 x!741079)) Nil!47308)) (= lt!1512847 (list!17165 (c!726745 x!741079)))))))

(declare-fun b!4271483 () Bool)

(assert (=> b!4271483 (= e!2652061 (Cons!47308 (h!52728 (list!17165 (c!726745 x!741079))) (++!12071 (t!353746 (list!17165 (c!726745 x!741079))) (efficientList$default$2!176 (c!726745 x!741079)))))))

(declare-fun d!1259933 () Bool)

(assert (=> d!1259933 e!2652060))

(declare-fun res!1754576 () Bool)

(assert (=> d!1259933 (=> (not res!1754576) (not e!2652060))))

(declare-fun content!7477 (List!47432) (Set (_ BitVec 16)))

(assert (=> d!1259933 (= res!1754576 (= (content!7477 lt!1512847) (set.union (content!7477 (list!17165 (c!726745 x!741079))) (content!7477 (efficientList$default$2!176 (c!726745 x!741079))))))))

(assert (=> d!1259933 (= lt!1512847 e!2652061)))

(declare-fun c!726786 () Bool)

(assert (=> d!1259933 (= c!726786 (is-Nil!47308 (list!17165 (c!726745 x!741079))))))

(assert (=> d!1259933 (= (++!12071 (list!17165 (c!726745 x!741079)) (efficientList$default$2!176 (c!726745 x!741079))) lt!1512847)))

(assert (= (and d!1259933 c!726786) b!4271482))

(assert (= (and d!1259933 (not c!726786)) b!4271483))

(assert (= (and d!1259933 res!1754576) b!4271484))

(assert (= (and b!4271484 res!1754577) b!4271485))

(declare-fun m!4865037 () Bool)

(assert (=> b!4271484 m!4865037))

(assert (=> b!4271484 m!4864941))

(declare-fun m!4865039 () Bool)

(assert (=> b!4271484 m!4865039))

(assert (=> b!4271484 m!4864955))

(declare-fun m!4865041 () Bool)

(assert (=> b!4271484 m!4865041))

(assert (=> b!4271483 m!4864955))

(declare-fun m!4865043 () Bool)

(assert (=> b!4271483 m!4865043))

(declare-fun m!4865045 () Bool)

(assert (=> d!1259933 m!4865045))

(assert (=> d!1259933 m!4864941))

(declare-fun m!4865047 () Bool)

(assert (=> d!1259933 m!4865047))

(assert (=> d!1259933 m!4864955))

(declare-fun m!4865049 () Bool)

(assert (=> d!1259933 m!4865049))

(assert (=> d!1259919 d!1259933))

(assert (=> d!1259919 d!1259903))

(push 1)

(assert (not b!4271466))

(assert (not d!1259931))

(assert (not d!1259933))

(assert (not b!4271426))

(assert (not b!4271465))

(assert (not b!4271484))

(assert (not b!4271415))

(assert (not b!4271418))

(assert (not bm!294150))

(assert (not b!4271386))

(assert (not b!4271419))

(assert (not b!4271458))

(assert (not b!4271428))

(assert (not b!4271483))

(assert (not b!4271414))

(assert (not d!1259909))

(assert (not b!4271473))

(assert (not d!1259907))

(assert (not b!4271457))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

