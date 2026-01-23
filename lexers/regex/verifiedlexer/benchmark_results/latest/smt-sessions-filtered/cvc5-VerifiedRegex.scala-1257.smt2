; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!65510 () Bool)

(assert start!65510)

(assert (=> start!65510 true))

(declare-fun b!684794 () Bool)

(assert (=> b!684794 true))

(assert (=> b!684794 true))

(declare-fun b!684795 () Bool)

(assert (=> b!684795 true))

(declare-fun b!684804 () Bool)

(declare-fun e!429954 () Bool)

(declare-datatypes ((List!7321 0))(
  ( (Nil!7307) (Cons!7307 (h!12708 (_ BitVec 16)) (t!87060 List!7321)) )
))
(declare-datatypes ((IArray!5199 0))(
  ( (IArray!5200 (innerList!2657 List!7321)) )
))
(declare-datatypes ((Conc!2599 0))(
  ( (Node!2599 (left!5916 Conc!2599) (right!6246 Conc!2599) (csize!5428 Int) (cheight!2810 Int)) (Leaf!3857 (xs!5248 IArray!5199) (csize!5429 Int)) (Empty!2599) )
))
(declare-datatypes ((BalanceConc!5210 0))(
  ( (BalanceConc!5211 (c!121116 Conc!2599)) )
))
(declare-fun x!149973 () BalanceConc!5210)

(declare-fun tp!203125 () Bool)

(declare-fun inv!9394 (Conc!2599) Bool)

(assert (=> b!684804 (= e!429954 (and (inv!9394 (c!121116 x!149973)) tp!203125))))

(declare-fun inst!436 () Bool)

(declare-datatypes ((SpaceValueInjection!12 0))(
  ( (SpaceValueInjection!13) )
))
(declare-fun thiss!4519 () SpaceValueInjection!12)

(declare-fun inv!9395 (BalanceConc!5210) Bool)

(declare-fun list!3085 (BalanceConc!5210) List!7321)

(declare-datatypes ((TokenValue!1516 0))(
  ( (FloatLiteralValue!3032 (text!11057 List!7321)) (TokenValueExt!1515 (__x!5175 Int)) (Broken!7580 (value!47611 List!7321)) (Object!1529) (End!1516) (Def!1516) (Underscore!1516) (Match!1516) (Else!1516) (Error!1516) (Case!1516) (If!1516) (Extends!1516) (Abstract!1516) (Class!1516) (Val!1516) (DelimiterValue!3032 (del!1576 List!7321)) (KeywordValue!1522 (value!47612 List!7321)) (CommentValue!3032 (value!47613 List!7321)) (WhitespaceValue!3032 (value!47614 List!7321)) (IndentationValue!1516 (value!47615 List!7321)) (String!9313) (Int32!1516) (Broken!7581 (value!47616 List!7321)) (Boolean!1517) (Unit!12602) (OperatorValue!1519 (op!1576 List!7321)) (IdentifierValue!3032 (value!47617 List!7321)) (IdentifierValue!3033 (value!47618 List!7321)) (WhitespaceValue!3033 (value!47619 List!7321)) (True!3032) (False!3032) (Broken!7582 (value!47620 List!7321)) (Broken!7583 (value!47621 List!7321)) (True!3033) (RightBrace!1516) (RightBracket!1516) (Colon!1516) (Null!1516) (Comma!1516) (LeftBracket!1516) (False!3033) (LeftBrace!1516) (ImaginaryLiteralValue!1516 (text!11058 List!7321)) (StringLiteralValue!4548 (value!47622 List!7321)) (EOFValue!1516 (value!47623 List!7321)) (IdentValue!1516 (value!47624 List!7321)) (DelimiterValue!3033 (value!47625 List!7321)) (DedentValue!1516 (value!47626 List!7321)) (NewLineValue!1516 (value!47627 List!7321)) (IntegerValue!4548 (value!47628 (_ BitVec 32)) (text!11059 List!7321)) (IntegerValue!4549 (value!47629 Int) (text!11060 List!7321)) (Times!1516) (Or!1516) (Equal!1516) (Minus!1516) (Broken!7584 (value!47630 List!7321)) (And!1516) (Div!1516) (LessEqual!1516) (Mod!1516) (Concat!3330) (Not!1516) (Plus!1516) (SpaceValue!1516 (value!47631 List!7321)) (IntegerValue!4550 (value!47632 Int) (text!11061 List!7321)) (StringLiteralValue!4549 (text!11062 List!7321)) (FloatLiteralValue!3033 (text!11063 List!7321)) (BytesLiteralValue!1516 (value!47633 List!7321)) (CommentValue!3033 (value!47634 List!7321)) (StringLiteralValue!4550 (value!47635 List!7321)) (ErrorTokenValue!1516 (msg!1577 List!7321)) )
))
(declare-fun toCharacters!19 (SpaceValueInjection!12 TokenValue!1516) BalanceConc!5210)

(declare-fun toValue!26 (SpaceValueInjection!12 BalanceConc!5210) TokenValue!1516)

(assert (=> start!65510 (= inst!436 (=> (and (inv!9395 x!149973) e!429954) (= (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (list!3085 x!149973))))))

(assert (= start!65510 b!684804))

(declare-fun m!941583 () Bool)

(assert (=> b!684804 m!941583))

(declare-fun m!941585 () Bool)

(assert (=> start!65510 m!941585))

(declare-fun m!941587 () Bool)

(assert (=> start!65510 m!941587))

(declare-fun m!941589 () Bool)

(assert (=> start!65510 m!941589))

(assert (=> start!65510 m!941587))

(declare-fun m!941591 () Bool)

(assert (=> start!65510 m!941591))

(assert (=> start!65510 m!941585))

(declare-fun m!941593 () Bool)

(assert (=> start!65510 m!941593))

(declare-fun res!311792 () Bool)

(declare-fun e!429956 () Bool)

(assert (=> b!684795 (=> res!311792 e!429956)))

(declare-fun x!149974 () BalanceConc!5210)

(declare-fun x!149975 () BalanceConc!5210)

(assert (=> b!684795 (= res!311792 (not (= (list!3085 x!149974) (list!3085 x!149975))))))

(declare-fun inst!437 () Bool)

(declare-fun e!429957 () Bool)

(declare-fun e!429955 () Bool)

(assert (=> b!684795 (= inst!437 (=> (and (inv!9395 x!149974) e!429957 (inv!9395 x!149975) e!429955) e!429956))))

(declare-fun b!684805 () Bool)

(assert (=> b!684805 (= e!429956 (= (toValue!26 thiss!4519 x!149974) (toValue!26 thiss!4519 x!149975)))))

(declare-fun b!684806 () Bool)

(declare-fun tp!203126 () Bool)

(assert (=> b!684806 (= e!429957 (and (inv!9394 (c!121116 x!149974)) tp!203126))))

(declare-fun b!684807 () Bool)

(declare-fun tp!203127 () Bool)

(assert (=> b!684807 (= e!429955 (and (inv!9394 (c!121116 x!149975)) tp!203127))))

(assert (= (and b!684795 (not res!311792)) b!684805))

(assert (= b!684795 b!684806))

(assert (= b!684795 b!684807))

(declare-fun m!941595 () Bool)

(assert (=> b!684795 m!941595))

(declare-fun m!941597 () Bool)

(assert (=> b!684795 m!941597))

(declare-fun m!941599 () Bool)

(assert (=> b!684795 m!941599))

(declare-fun m!941601 () Bool)

(assert (=> b!684795 m!941601))

(declare-fun m!941603 () Bool)

(assert (=> b!684805 m!941603))

(declare-fun m!941605 () Bool)

(assert (=> b!684805 m!941605))

(declare-fun m!941607 () Bool)

(assert (=> b!684806 m!941607))

(declare-fun m!941609 () Bool)

(assert (=> b!684807 m!941609))

(declare-fun bs!131049 () Bool)

(declare-fun neg-inst!436 () Bool)

(declare-fun s!77535 () Bool)

(assert (= bs!131049 (and neg-inst!436 s!77535)))

(assert (=> bs!131049 (=> true (= (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (list!3085 x!149973)))))

(assert (=> m!941585 m!941587))

(assert (=> m!941585 m!941591))

(assert (=> m!941585 m!941589))

(assert (=> m!941585 s!77535))

(assert (=> m!941589 s!77535))

(declare-fun bs!131050 () Bool)

(assert (= bs!131050 (and neg-inst!436 start!65510)))

(assert (=> bs!131050 (= true inst!436)))

(declare-fun bs!131051 () Bool)

(declare-fun neg-inst!437 () Bool)

(declare-fun s!77537 () Bool)

(assert (= bs!131051 (and neg-inst!437 s!77537)))

(declare-fun res!311793 () Bool)

(declare-fun e!429958 () Bool)

(assert (=> bs!131051 (=> res!311793 e!429958)))

(assert (=> bs!131051 (= res!311793 (not (= (list!3085 x!149973) (list!3085 x!149973))))))

(assert (=> bs!131051 (=> true e!429958)))

(declare-fun b!684808 () Bool)

(assert (=> b!684808 (= e!429958 (= (toValue!26 thiss!4519 x!149973) (toValue!26 thiss!4519 x!149973)))))

(assert (= (and bs!131051 (not res!311793)) b!684808))

(assert (=> m!941585 m!941589))

(assert (=> m!941585 m!941589))

(assert (=> m!941585 s!77537))

(assert (=> m!941585 s!77537))

(declare-fun bs!131052 () Bool)

(declare-fun s!77539 () Bool)

(assert (= bs!131052 (and neg-inst!437 s!77539)))

(declare-fun res!311794 () Bool)

(declare-fun e!429959 () Bool)

(assert (=> bs!131052 (=> res!311794 e!429959)))

(assert (=> bs!131052 (= res!311794 (not (= (list!3085 x!149973) (list!3085 x!149974))))))

(assert (=> bs!131052 (=> true e!429959)))

(declare-fun b!684809 () Bool)

(assert (=> b!684809 (= e!429959 (= (toValue!26 thiss!4519 x!149973) (toValue!26 thiss!4519 x!149974)))))

(assert (= (and bs!131052 (not res!311794)) b!684809))

(declare-fun bs!131053 () Bool)

(assert (= bs!131053 (and m!941603 m!941585)))

(assert (=> bs!131053 m!941589))

(assert (=> bs!131053 m!941595))

(assert (=> bs!131053 s!77539))

(declare-fun bs!131054 () Bool)

(declare-fun s!77541 () Bool)

(assert (= bs!131054 (and neg-inst!437 s!77541)))

(declare-fun res!311795 () Bool)

(declare-fun e!429960 () Bool)

(assert (=> bs!131054 (=> res!311795 e!429960)))

(assert (=> bs!131054 (= res!311795 (not (= (list!3085 x!149974) (list!3085 x!149974))))))

(assert (=> bs!131054 (=> true e!429960)))

(declare-fun b!684810 () Bool)

(assert (=> b!684810 (= e!429960 (= (toValue!26 thiss!4519 x!149974) (toValue!26 thiss!4519 x!149974)))))

(assert (= (and bs!131054 (not res!311795)) b!684810))

(assert (=> m!941603 m!941595))

(assert (=> m!941603 m!941595))

(assert (=> m!941603 s!77541))

(declare-fun bs!131055 () Bool)

(declare-fun s!77543 () Bool)

(assert (= bs!131055 (and neg-inst!437 s!77543)))

(declare-fun res!311796 () Bool)

(declare-fun e!429961 () Bool)

(assert (=> bs!131055 (=> res!311796 e!429961)))

(assert (=> bs!131055 (= res!311796 (not (= (list!3085 x!149974) (list!3085 x!149973))))))

(assert (=> bs!131055 (=> true e!429961)))

(declare-fun b!684811 () Bool)

(assert (=> b!684811 (= e!429961 (= (toValue!26 thiss!4519 x!149974) (toValue!26 thiss!4519 x!149973)))))

(assert (= (and bs!131055 (not res!311796)) b!684811))

(assert (=> bs!131053 m!941595))

(assert (=> bs!131053 m!941589))

(assert (=> bs!131053 s!77543))

(assert (=> m!941603 s!77541))

(declare-fun bs!131056 () Bool)

(declare-fun s!77545 () Bool)

(assert (= bs!131056 (and neg-inst!437 s!77545)))

(declare-fun res!311797 () Bool)

(declare-fun e!429962 () Bool)

(assert (=> bs!131056 (=> res!311797 e!429962)))

(assert (=> bs!131056 (= res!311797 (not (= (list!3085 x!149974) (list!3085 x!149975))))))

(assert (=> bs!131056 (=> true e!429962)))

(declare-fun b!684812 () Bool)

(assert (=> b!684812 (= e!429962 (= (toValue!26 thiss!4519 x!149974) (toValue!26 thiss!4519 x!149975)))))

(assert (= (and bs!131056 (not res!311797)) b!684812))

(declare-fun bs!131057 () Bool)

(assert (= bs!131057 (and m!941597 m!941603)))

(assert (=> bs!131057 m!941595))

(assert (=> bs!131057 m!941597))

(assert (=> bs!131057 s!77545))

(declare-fun bs!131058 () Bool)

(declare-fun s!77547 () Bool)

(assert (= bs!131058 (and neg-inst!437 s!77547)))

(declare-fun res!311798 () Bool)

(declare-fun e!429963 () Bool)

(assert (=> bs!131058 (=> res!311798 e!429963)))

(assert (=> bs!131058 (= res!311798 (not (= (list!3085 x!149973) (list!3085 x!149975))))))

(assert (=> bs!131058 (=> true e!429963)))

(declare-fun b!684813 () Bool)

(assert (=> b!684813 (= e!429963 (= (toValue!26 thiss!4519 x!149973) (toValue!26 thiss!4519 x!149975)))))

(assert (= (and bs!131058 (not res!311798)) b!684813))

(declare-fun bs!131059 () Bool)

(assert (= bs!131059 (and m!941597 m!941585)))

(assert (=> bs!131059 m!941589))

(assert (=> bs!131059 m!941597))

(assert (=> bs!131059 s!77547))

(declare-fun bs!131060 () Bool)

(declare-fun s!77549 () Bool)

(assert (= bs!131060 (and neg-inst!437 s!77549)))

(declare-fun res!311799 () Bool)

(declare-fun e!429964 () Bool)

(assert (=> bs!131060 (=> res!311799 e!429964)))

(assert (=> bs!131060 (= res!311799 (not (= (list!3085 x!149975) (list!3085 x!149975))))))

(assert (=> bs!131060 (=> true e!429964)))

(declare-fun b!684814 () Bool)

(assert (=> b!684814 (= e!429964 (= (toValue!26 thiss!4519 x!149975) (toValue!26 thiss!4519 x!149975)))))

(assert (= (and bs!131060 (not res!311799)) b!684814))

(assert (=> m!941597 s!77549))

(declare-fun bs!131061 () Bool)

(declare-fun s!77551 () Bool)

(assert (= bs!131061 (and neg-inst!437 s!77551)))

(declare-fun res!311800 () Bool)

(declare-fun e!429965 () Bool)

(assert (=> bs!131061 (=> res!311800 e!429965)))

(assert (=> bs!131061 (= res!311800 (not (= (list!3085 x!149975) (list!3085 x!149974))))))

(assert (=> bs!131061 (=> true e!429965)))

(declare-fun b!684815 () Bool)

(assert (=> b!684815 (= e!429965 (= (toValue!26 thiss!4519 x!149975) (toValue!26 thiss!4519 x!149974)))))

(assert (= (and bs!131061 (not res!311800)) b!684815))

(assert (=> bs!131057 m!941597))

(assert (=> bs!131057 m!941595))

(assert (=> bs!131057 s!77551))

(declare-fun bs!131062 () Bool)

(declare-fun s!77553 () Bool)

(assert (= bs!131062 (and neg-inst!437 s!77553)))

(declare-fun res!311801 () Bool)

(declare-fun e!429966 () Bool)

(assert (=> bs!131062 (=> res!311801 e!429966)))

(assert (=> bs!131062 (= res!311801 (not (= (list!3085 x!149975) (list!3085 x!149973))))))

(assert (=> bs!131062 (=> true e!429966)))

(declare-fun b!684816 () Bool)

(assert (=> b!684816 (= e!429966 (= (toValue!26 thiss!4519 x!149975) (toValue!26 thiss!4519 x!149973)))))

(assert (= (and bs!131062 (not res!311801)) b!684816))

(assert (=> bs!131059 m!941597))

(assert (=> bs!131059 m!941589))

(assert (=> bs!131059 s!77553))

(assert (=> m!941597 s!77549))

(declare-fun bs!131063 () Bool)

(assert (= bs!131063 (and m!941589 m!941603)))

(assert (=> bs!131063 s!77543))

(declare-fun bs!131064 () Bool)

(assert (= bs!131064 (and m!941589 m!941597)))

(assert (=> bs!131064 s!77553))

(declare-fun bs!131065 () Bool)

(assert (= bs!131065 (and m!941589 m!941585)))

(assert (=> bs!131065 s!77537))

(assert (=> m!941589 s!77537))

(assert (=> bs!131063 s!77539))

(assert (=> bs!131064 s!77547))

(assert (=> bs!131065 s!77537))

(assert (=> m!941589 s!77537))

(declare-fun bs!131066 () Bool)

(assert (= bs!131066 (and m!941595 m!941603)))

(assert (=> bs!131066 s!77541))

(declare-fun bs!131067 () Bool)

(assert (= bs!131067 (and m!941595 m!941597)))

(assert (=> bs!131067 s!77551))

(declare-fun bs!131068 () Bool)

(assert (= bs!131068 (and m!941595 m!941585 m!941589)))

(assert (=> bs!131068 s!77539))

(assert (=> m!941595 s!77541))

(assert (=> bs!131066 s!77541))

(assert (=> bs!131067 s!77545))

(assert (=> bs!131068 s!77543))

(assert (=> m!941595 s!77541))

(declare-fun bs!131069 () Bool)

(assert (= bs!131069 (and m!941605 m!941603 m!941595)))

(assert (=> bs!131069 s!77545))

(declare-fun bs!131070 () Bool)

(assert (= bs!131070 (and m!941605 m!941597)))

(assert (=> bs!131070 s!77549))

(declare-fun bs!131071 () Bool)

(assert (= bs!131071 (and m!941605 m!941585 m!941589)))

(assert (=> bs!131071 s!77547))

(assert (=> m!941605 s!77549))

(assert (=> bs!131069 s!77551))

(assert (=> bs!131070 s!77549))

(assert (=> bs!131071 s!77553))

(assert (=> m!941605 s!77549))

(declare-fun bs!131072 () Bool)

(declare-fun s!77555 () Bool)

(assert (= bs!131072 (and neg-inst!437 s!77555)))

(declare-fun res!311802 () Bool)

(declare-fun e!429967 () Bool)

(assert (=> bs!131072 (=> res!311802 e!429967)))

(assert (=> bs!131072 (= res!311802 (not (= (list!3085 x!149974) (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> bs!131072 (=> true e!429967)))

(declare-fun b!684817 () Bool)

(assert (=> b!684817 (= e!429967 (= (toValue!26 thiss!4519 x!149974) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(assert (= (and bs!131072 (not res!311802)) b!684817))

(declare-fun bs!131073 () Bool)

(assert (= bs!131073 (and m!941591 m!941603 m!941595)))

(assert (=> bs!131073 m!941595))

(assert (=> bs!131073 m!941591))

(assert (=> bs!131073 s!77555))

(declare-fun bs!131074 () Bool)

(declare-fun s!77557 () Bool)

(assert (= bs!131074 (and neg-inst!437 s!77557)))

(declare-fun res!311803 () Bool)

(declare-fun e!429968 () Bool)

(assert (=> bs!131074 (=> res!311803 e!429968)))

(assert (=> bs!131074 (= res!311803 (not (= (list!3085 x!149975) (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> bs!131074 (=> true e!429968)))

(declare-fun b!684818 () Bool)

(assert (=> b!684818 (= e!429968 (= (toValue!26 thiss!4519 x!149975) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(assert (= (and bs!131074 (not res!311803)) b!684818))

(declare-fun bs!131075 () Bool)

(assert (= bs!131075 (and m!941591 m!941597 m!941605)))

(assert (=> bs!131075 m!941597))

(assert (=> bs!131075 m!941591))

(assert (=> bs!131075 s!77557))

(declare-fun bs!131076 () Bool)

(declare-fun s!77559 () Bool)

(assert (= bs!131076 (and neg-inst!437 s!77559)))

(declare-fun res!311804 () Bool)

(declare-fun e!429969 () Bool)

(assert (=> bs!131076 (=> res!311804 e!429969)))

(assert (=> bs!131076 (= res!311804 (not (= (list!3085 x!149973) (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> bs!131076 (=> true e!429969)))

(declare-fun b!684819 () Bool)

(assert (=> b!684819 (= e!429969 (= (toValue!26 thiss!4519 x!149973) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(assert (= (and bs!131076 (not res!311804)) b!684819))

(declare-fun bs!131077 () Bool)

(assert (= bs!131077 (and m!941591 m!941585 m!941589)))

(assert (=> bs!131077 m!941589))

(assert (=> bs!131077 m!941591))

(assert (=> bs!131077 s!77559))

(declare-fun bs!131078 () Bool)

(declare-fun s!77561 () Bool)

(assert (= bs!131078 (and neg-inst!437 s!77561)))

(declare-fun res!311805 () Bool)

(declare-fun e!429970 () Bool)

(assert (=> bs!131078 (=> res!311805 e!429970)))

(assert (=> bs!131078 (= res!311805 (not (= (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> bs!131078 (=> true e!429970)))

(declare-fun b!684820 () Bool)

(assert (=> b!684820 (= e!429970 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(assert (= (and bs!131078 (not res!311805)) b!684820))

(assert (=> m!941591 s!77561))

(declare-fun bs!131079 () Bool)

(declare-fun s!77563 () Bool)

(assert (= bs!131079 (and neg-inst!437 s!77563)))

(declare-fun res!311806 () Bool)

(declare-fun e!429971 () Bool)

(assert (=> bs!131079 (=> res!311806 e!429971)))

(assert (=> bs!131079 (= res!311806 (not (= (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (list!3085 x!149974))))))

(assert (=> bs!131079 (=> true e!429971)))

(declare-fun b!684821 () Bool)

(assert (=> b!684821 (= e!429971 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (toValue!26 thiss!4519 x!149974)))))

(assert (= (and bs!131079 (not res!311806)) b!684821))

(assert (=> bs!131073 m!941591))

(assert (=> bs!131073 m!941595))

(assert (=> bs!131073 s!77563))

(declare-fun bs!131080 () Bool)

(declare-fun s!77565 () Bool)

(assert (= bs!131080 (and neg-inst!437 s!77565)))

(declare-fun res!311807 () Bool)

(declare-fun e!429972 () Bool)

(assert (=> bs!131080 (=> res!311807 e!429972)))

(assert (=> bs!131080 (= res!311807 (not (= (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (list!3085 x!149975))))))

(assert (=> bs!131080 (=> true e!429972)))

(declare-fun b!684822 () Bool)

(assert (=> b!684822 (= e!429972 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (toValue!26 thiss!4519 x!149975)))))

(assert (= (and bs!131080 (not res!311807)) b!684822))

(assert (=> bs!131075 m!941591))

(assert (=> bs!131075 m!941597))

(assert (=> bs!131075 s!77565))

(declare-fun bs!131081 () Bool)

(declare-fun s!77567 () Bool)

(assert (= bs!131081 (and neg-inst!437 s!77567)))

(declare-fun res!311808 () Bool)

(declare-fun e!429973 () Bool)

(assert (=> bs!131081 (=> res!311808 e!429973)))

(assert (=> bs!131081 (= res!311808 (not (= (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (list!3085 x!149973))))))

(assert (=> bs!131081 (=> true e!429973)))

(declare-fun b!684823 () Bool)

(assert (=> b!684823 (= e!429973 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (toValue!26 thiss!4519 x!149973)))))

(assert (= (and bs!131081 (not res!311808)) b!684823))

(assert (=> bs!131077 m!941591))

(assert (=> bs!131077 m!941589))

(assert (=> bs!131077 s!77567))

(assert (=> m!941591 s!77561))

(declare-fun bs!131082 () Bool)

(assert (= bs!131082 (and neg-inst!437 b!684795)))

(assert (=> bs!131082 (= true inst!437)))

(declare-fun res!311790 () Bool)

(declare-fun e!429952 () Bool)

(assert (=> start!65510 (=> res!311790 e!429952)))

(declare-fun lambda!21038 () Int)

(declare-fun Forall!346 (Int) Bool)

(assert (=> start!65510 (= res!311790 (not (Forall!346 lambda!21038)))))

(assert (=> start!65510 (= (Forall!346 lambda!21038) inst!436)))

(assert (=> start!65510 (not e!429952)))

(assert (=> start!65510 true))

(declare-fun e!429953 () Bool)

(assert (=> b!684794 (= e!429952 e!429953)))

(declare-fun res!311791 () Bool)

(assert (=> b!684794 (=> res!311791 e!429953)))

(declare-fun lambda!21039 () Int)

(declare-fun lambda!21040 () Int)

(declare-fun semiInverseModEq!559 (Int Int) Bool)

(assert (=> b!684794 (= res!311791 (not (semiInverseModEq!559 lambda!21039 lambda!21040)))))

(assert (=> b!684794 (= (semiInverseModEq!559 lambda!21039 lambda!21040) (Forall!346 lambda!21038))))

(declare-fun lambda!21041 () Int)

(declare-fun Forall2!264 (Int) Bool)

(assert (=> b!684795 (= e!429953 (Forall2!264 lambda!21041))))

(assert (=> b!684795 (= (Forall2!264 lambda!21041) inst!437)))

(assert (= neg-inst!436 inst!436))

(assert (= (and start!65510 (not res!311790)) b!684794))

(assert (= (and b!684794 (not res!311791)) b!684795))

(assert (= neg-inst!437 inst!437))

(declare-fun m!941611 () Bool)

(assert (=> start!65510 m!941611))

(assert (=> start!65510 m!941611))

(declare-fun m!941613 () Bool)

(assert (=> b!684794 m!941613))

(assert (=> b!684794 m!941613))

(assert (=> b!684794 m!941611))

(declare-fun m!941615 () Bool)

(assert (=> b!684795 m!941615))

(assert (=> b!684795 m!941615))

(push 1)

(assert (not b!684794))

(assert (not bs!131061))

(assert (not start!65510))

(assert (not bs!131081))

(assert (not bs!131080))

(assert (not b!684820))

(assert (not b!684823))

(assert (not b!684815))

(assert (not b!684813))

(assert (not b!684811))

(assert (not b!684812))

(assert (not b!684814))

(assert (not bs!131060))

(assert (not bs!131074))

(assert (not b!684808))

(assert (not bs!131049))

(assert (not b!684795))

(assert (not bs!131056))

(assert (not bs!131072))

(assert (not b!684810))

(assert (not b!684822))

(assert (not bs!131054))

(assert (not bs!131078))

(assert (not bs!131076))

(assert (not bs!131055))

(assert (not b!684821))

(assert (not b!684809))

(assert (not b!684818))

(assert (not b!684817))

(assert (not bs!131051))

(assert (not b!684816))

(assert (not bs!131058))

(assert (not b!684804))

(assert (not b!684819))

(assert (not b!684805))

(assert (not bs!131079))

(assert (not bs!131052))

(assert (not b!684807))

(assert (not b!684806))

(assert (not bs!131062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!230898 () Bool)

(declare-fun list!3087 (Conc!2599) List!7321)

(assert (=> d!230898 (= (list!3085 x!149975) (list!3087 (c!121116 x!149975)))))

(declare-fun bs!131116 () Bool)

(assert (= bs!131116 d!230898))

(declare-fun m!941651 () Bool)

(assert (=> bs!131116 m!941651))

(assert (=> bs!131062 d!230898))

(declare-fun d!230900 () Bool)

(assert (=> d!230900 (= (list!3085 x!149973) (list!3087 (c!121116 x!149973)))))

(declare-fun bs!131117 () Bool)

(assert (= bs!131117 d!230900))

(declare-fun m!941653 () Bool)

(assert (=> bs!131117 m!941653))

(assert (=> bs!131062 d!230900))

(declare-fun d!230902 () Bool)

(assert (=> d!230902 (= (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (list!3087 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(declare-fun bs!131118 () Bool)

(assert (= bs!131118 d!230902))

(declare-fun m!941655 () Bool)

(assert (=> bs!131118 m!941655))

(assert (=> bs!131079 d!230902))

(declare-fun d!230904 () Bool)

(assert (=> d!230904 (= (list!3085 x!149974) (list!3087 (c!121116 x!149974)))))

(declare-fun bs!131119 () Bool)

(assert (= bs!131119 d!230904))

(declare-fun m!941657 () Bool)

(assert (=> bs!131119 m!941657))

(assert (=> bs!131079 d!230904))

(assert (=> bs!131074 d!230898))

(assert (=> bs!131074 d!230902))

(declare-fun d!230906 () Bool)

(declare-fun efficientList!99 (BalanceConc!5210) List!7321)

(assert (=> d!230906 (= (toValue!26 thiss!4519 x!149973) (SpaceValue!1516 (efficientList!99 x!149973)))))

(declare-fun bs!131120 () Bool)

(assert (= bs!131120 d!230906))

(declare-fun m!941659 () Bool)

(assert (=> bs!131120 m!941659))

(assert (=> b!684809 d!230906))

(declare-fun d!230908 () Bool)

(assert (=> d!230908 (= (toValue!26 thiss!4519 x!149974) (SpaceValue!1516 (efficientList!99 x!149974)))))

(declare-fun bs!131121 () Bool)

(assert (= bs!131121 d!230908))

(declare-fun m!941661 () Bool)

(assert (=> bs!131121 m!941661))

(assert (=> b!684809 d!230908))

(declare-fun d!230910 () Bool)

(assert (=> d!230910 (= (toValue!26 thiss!4519 x!149975) (SpaceValue!1516 (efficientList!99 x!149975)))))

(declare-fun bs!131122 () Bool)

(assert (= bs!131122 d!230910))

(declare-fun m!941663 () Bool)

(assert (=> bs!131122 m!941663))

(assert (=> b!684816 d!230910))

(assert (=> b!684816 d!230906))

(declare-fun d!230912 () Bool)

(assert (=> d!230912 (= (toValue!26 thiss!4519 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (SpaceValue!1516 (efficientList!99 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(declare-fun bs!131123 () Bool)

(assert (= bs!131123 d!230912))

(assert (=> bs!131123 m!941587))

(declare-fun m!941665 () Bool)

(assert (=> bs!131123 m!941665))

(assert (=> b!684821 d!230912))

(assert (=> b!684821 d!230908))

(assert (=> bs!131058 d!230900))

(assert (=> bs!131058 d!230898))

(assert (=> b!684818 d!230910))

(assert (=> b!684818 d!230912))

(assert (=> bs!131080 d!230902))

(assert (=> bs!131080 d!230898))

(assert (=> b!684813 d!230906))

(assert (=> b!684813 d!230910))

(assert (=> bs!131054 d!230904))

(assert (=> b!684822 d!230912))

(assert (=> b!684822 d!230910))

(assert (=> bs!131076 d!230900))

(assert (=> bs!131076 d!230902))

(assert (=> b!684810 d!230908))

(assert (=> bs!131060 d!230898))

(assert (=> b!684819 d!230906))

(assert (=> b!684819 d!230912))

(assert (=> bs!131055 d!230904))

(assert (=> bs!131055 d!230900))

(assert (=> b!684814 d!230910))

(assert (=> bs!131081 d!230902))

(assert (=> bs!131081 d!230900))

(assert (=> b!684811 d!230908))

(assert (=> b!684811 d!230906))

(assert (=> bs!131051 d!230900))

(assert (=> bs!131072 d!230904))

(assert (=> bs!131072 d!230902))

(assert (=> bs!131078 d!230902))

(assert (=> b!684823 d!230912))

(assert (=> b!684823 d!230906))

(assert (=> b!684808 d!230906))

(assert (=> bs!131061 d!230898))

(assert (=> bs!131061 d!230904))

(assert (=> b!684820 d!230912))

(assert (=> bs!131056 d!230904))

(assert (=> bs!131056 d!230898))

(assert (=> bs!131052 d!230900))

(assert (=> bs!131052 d!230904))

(assert (=> b!684815 d!230910))

(assert (=> b!684815 d!230908))

(assert (=> b!684817 d!230908))

(assert (=> b!684817 d!230912))

(assert (=> b!684812 d!230908))

(assert (=> b!684812 d!230910))

(declare-fun bs!131124 () Bool)

(assert (= bs!131124 (and m!941585 b!684808)))

(assert (=> bs!131124 m!941585))

(assert (=> bs!131124 m!941585))

(declare-fun bs!131125 () Bool)

(assert (= bs!131125 (and m!941603 m!941585 b!684809)))

(assert (=> bs!131125 m!941585))

(assert (=> bs!131125 m!941603))

(declare-fun bs!131126 () Bool)

(assert (= bs!131126 (and m!941603 b!684810)))

(assert (=> bs!131126 m!941603))

(assert (=> bs!131126 m!941603))

(declare-fun bs!131127 () Bool)

(assert (= bs!131127 (and m!941603 m!941585 b!684811)))

(assert (=> bs!131127 m!941603))

(assert (=> bs!131127 m!941585))

(declare-fun bs!131128 () Bool)

(assert (= bs!131128 (and m!941597 m!941603 b!684812)))

(assert (=> bs!131128 m!941603))

(assert (=> bs!131128 m!941605))

(declare-fun bs!131129 () Bool)

(assert (= bs!131129 (and m!941597 m!941585 b!684813)))

(assert (=> bs!131129 m!941585))

(assert (=> bs!131129 m!941605))

(declare-fun bs!131130 () Bool)

(assert (= bs!131130 (and m!941597 b!684814)))

(assert (=> bs!131130 m!941605))

(assert (=> bs!131130 m!941605))

(declare-fun bs!131131 () Bool)

(assert (= bs!131131 (and m!941597 m!941603 b!684815)))

(assert (=> bs!131131 m!941605))

(assert (=> bs!131131 m!941603))

(declare-fun bs!131132 () Bool)

(assert (= bs!131132 (and m!941597 m!941585 b!684816)))

(assert (=> bs!131132 m!941605))

(assert (=> bs!131132 m!941585))

(declare-fun bs!131133 () Bool)

(assert (= bs!131133 (and m!941591 m!941603 m!941595 b!684817)))

(assert (=> bs!131133 m!941603))

(declare-fun m!941667 () Bool)

(assert (=> bs!131133 m!941667))

(declare-fun bs!131134 () Bool)

(assert (= bs!131134 (and m!941591 m!941597 m!941605 b!684818)))

(assert (=> bs!131134 m!941605))

(assert (=> bs!131134 m!941667))

(declare-fun bs!131135 () Bool)

(assert (= bs!131135 (and m!941591 m!941585 m!941589 b!684819)))

(assert (=> bs!131135 m!941585))

(assert (=> bs!131135 m!941667))

(declare-fun bs!131136 () Bool)

(assert (= bs!131136 (and m!941591 b!684820)))

(assert (=> bs!131136 m!941667))

(assert (=> bs!131136 m!941667))

(declare-fun bs!131137 () Bool)

(assert (= bs!131137 (and m!941591 m!941603 m!941595 b!684821)))

(assert (=> bs!131137 m!941667))

(assert (=> bs!131137 m!941603))

(declare-fun bs!131138 () Bool)

(assert (= bs!131138 (and m!941591 m!941597 m!941605 b!684822)))

(assert (=> bs!131138 m!941667))

(assert (=> bs!131138 m!941605))

(declare-fun bs!131139 () Bool)

(assert (= bs!131139 (and m!941591 m!941585 m!941589 b!684823)))

(assert (=> bs!131139 m!941667))

(assert (=> bs!131139 m!941585))

(push 1)

(assert (not d!230904))

(assert (not d!230906))

(assert (not start!65510))

(assert (not d!230900))

(assert (not b!684805))

(assert (not b!684807))

(assert (not b!684806))

(assert (not d!230898))

(assert (not d!230902))

(assert (not d!230910))

(assert (not b!684794))

(assert (not bs!131049))

(assert (not b!684795))

(assert (not d!230908))

(assert (not d!230912))

(assert (not b!684804))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!684883 () Bool)

(declare-fun e!430019 () List!7321)

(declare-fun ++!1927 (List!7321 List!7321) List!7321)

(assert (=> b!684883 (= e!430019 (++!1927 (list!3087 (left!5916 (c!121116 x!149974))) (list!3087 (right!6246 (c!121116 x!149974)))))))

(declare-fun b!684881 () Bool)

(declare-fun e!430018 () List!7321)

(assert (=> b!684881 (= e!430018 e!430019)))

(declare-fun c!121123 () Bool)

(assert (=> b!684881 (= c!121123 (is-Leaf!3857 (c!121116 x!149974)))))

(declare-fun d!230924 () Bool)

(declare-fun c!121122 () Bool)

(assert (=> d!230924 (= c!121122 (is-Empty!2599 (c!121116 x!149974)))))

(assert (=> d!230924 (= (list!3087 (c!121116 x!149974)) e!430018)))

(declare-fun b!684882 () Bool)

(declare-fun list!3089 (IArray!5199) List!7321)

(assert (=> b!684882 (= e!430019 (list!3089 (xs!5248 (c!121116 x!149974))))))

(declare-fun b!684880 () Bool)

(assert (=> b!684880 (= e!430018 Nil!7307)))

(assert (= (and d!230924 c!121122) b!684880))

(assert (= (and d!230924 (not c!121122)) b!684881))

(assert (= (and b!684881 c!121123) b!684882))

(assert (= (and b!684881 (not c!121123)) b!684883))

(declare-fun m!941687 () Bool)

(assert (=> b!684883 m!941687))

(declare-fun m!941689 () Bool)

(assert (=> b!684883 m!941689))

(assert (=> b!684883 m!941687))

(assert (=> b!684883 m!941689))

(declare-fun m!941691 () Bool)

(assert (=> b!684883 m!941691))

(declare-fun m!941693 () Bool)

(assert (=> b!684882 m!941693))

(assert (=> d!230904 d!230924))

(declare-fun d!230932 () Bool)

(declare-fun lt!283752 () List!7321)

(assert (=> d!230932 (= lt!283752 (list!3085 x!149974))))

(declare-fun efficientList!101 (Conc!2599 List!7321) List!7321)

(declare-fun efficientList$default$2!33 (Conc!2599) List!7321)

(assert (=> d!230932 (= lt!283752 (efficientList!101 (c!121116 x!149974) (efficientList$default$2!33 (c!121116 x!149974))))))

(assert (=> d!230932 (= (efficientList!99 x!149974) lt!283752)))

(declare-fun bs!131164 () Bool)

(assert (= bs!131164 d!230932))

(assert (=> bs!131164 m!941595))

(declare-fun m!941695 () Bool)

(assert (=> bs!131164 m!941695))

(assert (=> bs!131164 m!941695))

(declare-fun m!941697 () Bool)

(assert (=> bs!131164 m!941697))

(assert (=> d!230908 d!230932))

(declare-fun b!684887 () Bool)

(declare-fun e!430021 () List!7321)

(assert (=> b!684887 (= e!430021 (++!1927 (list!3087 (left!5916 (c!121116 x!149975))) (list!3087 (right!6246 (c!121116 x!149975)))))))

(declare-fun b!684885 () Bool)

(declare-fun e!430020 () List!7321)

(assert (=> b!684885 (= e!430020 e!430021)))

(declare-fun c!121125 () Bool)

(assert (=> b!684885 (= c!121125 (is-Leaf!3857 (c!121116 x!149975)))))

(declare-fun d!230934 () Bool)

(declare-fun c!121124 () Bool)

(assert (=> d!230934 (= c!121124 (is-Empty!2599 (c!121116 x!149975)))))

(assert (=> d!230934 (= (list!3087 (c!121116 x!149975)) e!430020)))

(declare-fun b!684886 () Bool)

(assert (=> b!684886 (= e!430021 (list!3089 (xs!5248 (c!121116 x!149975))))))

(declare-fun b!684884 () Bool)

(assert (=> b!684884 (= e!430020 Nil!7307)))

(assert (= (and d!230934 c!121124) b!684884))

(assert (= (and d!230934 (not c!121124)) b!684885))

(assert (= (and b!684885 c!121125) b!684886))

(assert (= (and b!684885 (not c!121125)) b!684887))

(declare-fun m!941699 () Bool)

(assert (=> b!684887 m!941699))

(declare-fun m!941701 () Bool)

(assert (=> b!684887 m!941701))

(assert (=> b!684887 m!941699))

(assert (=> b!684887 m!941701))

(declare-fun m!941703 () Bool)

(assert (=> b!684887 m!941703))

(declare-fun m!941705 () Bool)

(assert (=> b!684886 m!941705))

(assert (=> d!230898 d!230934))

(declare-fun d!230936 () Bool)

(declare-fun lt!283753 () List!7321)

(assert (=> d!230936 (= lt!283753 (list!3085 x!149975))))

(assert (=> d!230936 (= lt!283753 (efficientList!101 (c!121116 x!149975) (efficientList$default$2!33 (c!121116 x!149975))))))

(assert (=> d!230936 (= (efficientList!99 x!149975) lt!283753)))

(declare-fun bs!131165 () Bool)

(assert (= bs!131165 d!230936))

(assert (=> bs!131165 m!941597))

(declare-fun m!941707 () Bool)

(assert (=> bs!131165 m!941707))

(assert (=> bs!131165 m!941707))

(declare-fun m!941709 () Bool)

(assert (=> bs!131165 m!941709))

(assert (=> d!230910 d!230936))

(declare-fun d!230938 () Bool)

(declare-fun lt!283754 () List!7321)

(assert (=> d!230938 (= lt!283754 (list!3085 x!149973))))

(assert (=> d!230938 (= lt!283754 (efficientList!101 (c!121116 x!149973) (efficientList$default$2!33 (c!121116 x!149973))))))

(assert (=> d!230938 (= (efficientList!99 x!149973) lt!283754)))

(declare-fun bs!131166 () Bool)

(assert (= bs!131166 d!230938))

(assert (=> bs!131166 m!941589))

(declare-fun m!941711 () Bool)

(assert (=> bs!131166 m!941711))

(assert (=> bs!131166 m!941711))

(declare-fun m!941713 () Bool)

(assert (=> bs!131166 m!941713))

(assert (=> d!230906 d!230938))

(declare-fun b!684891 () Bool)

(declare-fun e!430023 () List!7321)

(assert (=> b!684891 (= e!430023 (++!1927 (list!3087 (left!5916 (c!121116 x!149973))) (list!3087 (right!6246 (c!121116 x!149973)))))))

(declare-fun b!684889 () Bool)

(declare-fun e!430022 () List!7321)

(assert (=> b!684889 (= e!430022 e!430023)))

(declare-fun c!121127 () Bool)

(assert (=> b!684889 (= c!121127 (is-Leaf!3857 (c!121116 x!149973)))))

(declare-fun d!230940 () Bool)

(declare-fun c!121126 () Bool)

(assert (=> d!230940 (= c!121126 (is-Empty!2599 (c!121116 x!149973)))))

(assert (=> d!230940 (= (list!3087 (c!121116 x!149973)) e!430022)))

(declare-fun b!684890 () Bool)

(assert (=> b!684890 (= e!430023 (list!3089 (xs!5248 (c!121116 x!149973))))))

(declare-fun b!684888 () Bool)

(assert (=> b!684888 (= e!430022 Nil!7307)))

(assert (= (and d!230940 c!121126) b!684888))

(assert (= (and d!230940 (not c!121126)) b!684889))

(assert (= (and b!684889 c!121127) b!684890))

(assert (= (and b!684889 (not c!121127)) b!684891))

(declare-fun m!941715 () Bool)

(assert (=> b!684891 m!941715))

(declare-fun m!941717 () Bool)

(assert (=> b!684891 m!941717))

(assert (=> b!684891 m!941715))

(assert (=> b!684891 m!941717))

(declare-fun m!941719 () Bool)

(assert (=> b!684891 m!941719))

(declare-fun m!941721 () Bool)

(assert (=> b!684890 m!941721))

(assert (=> d!230900 d!230940))

(declare-fun d!230942 () Bool)

(declare-fun lt!283755 () List!7321)

(assert (=> d!230942 (= lt!283755 (list!3085 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))

(assert (=> d!230942 (= lt!283755 (efficientList!101 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> d!230942 (= (efficientList!99 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) lt!283755)))

(declare-fun bs!131167 () Bool)

(assert (= bs!131167 d!230942))

(assert (=> bs!131167 m!941587))

(assert (=> bs!131167 m!941591))

(declare-fun m!941723 () Bool)

(assert (=> bs!131167 m!941723))

(assert (=> bs!131167 m!941723))

(declare-fun m!941725 () Bool)

(assert (=> bs!131167 m!941725))

(assert (=> d!230912 d!230942))

(declare-fun b!684895 () Bool)

(declare-fun e!430025 () List!7321)

(assert (=> b!684895 (= e!430025 (++!1927 (list!3087 (left!5916 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))) (list!3087 (right!6246 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))))

(declare-fun b!684893 () Bool)

(declare-fun e!430024 () List!7321)

(assert (=> b!684893 (= e!430024 e!430025)))

(declare-fun c!121129 () Bool)

(assert (=> b!684893 (= c!121129 (is-Leaf!3857 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(declare-fun d!230944 () Bool)

(declare-fun c!121128 () Bool)

(assert (=> d!230944 (= c!121128 (is-Empty!2599 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(assert (=> d!230944 (= (list!3087 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))) e!430024)))

(declare-fun b!684894 () Bool)

(assert (=> b!684894 (= e!430025 (list!3089 (xs!5248 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(declare-fun b!684892 () Bool)

(assert (=> b!684892 (= e!430024 Nil!7307)))

(assert (= (and d!230944 c!121128) b!684892))

(assert (= (and d!230944 (not c!121128)) b!684893))

(assert (= (and b!684893 c!121129) b!684894))

(assert (= (and b!684893 (not c!121129)) b!684895))

(declare-fun m!941727 () Bool)

(assert (=> b!684895 m!941727))

(declare-fun m!941729 () Bool)

(assert (=> b!684895 m!941729))

(assert (=> b!684895 m!941727))

(assert (=> b!684895 m!941729))

(declare-fun m!941731 () Bool)

(assert (=> b!684895 m!941731))

(declare-fun m!941733 () Bool)

(assert (=> b!684894 m!941733))

(assert (=> d!230902 d!230944))

(push 1)

(assert (not b!684882))

(assert (not start!65510))

(assert (not d!230942))

(assert (not b!684894))

(assert (not b!684895))

(assert (not b!684891))

(assert (not b!684804))

(assert (not d!230932))

(assert (not b!684794))

(assert (not bs!131049))

(assert (not b!684795))

(assert (not b!684805))

(assert (not d!230938))

(assert (not b!684887))

(assert (not b!684890))

(assert (not d!230936))

(assert (not b!684886))

(assert (not b!684807))

(assert (not b!684883))

(assert (not b!684806))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> d!230932 d!230904))

(declare-fun b!684908 () Bool)

(declare-fun e!430034 () List!7321)

(assert (=> b!684908 (= e!430034 (efficientList$default$2!33 (c!121116 x!149974)))))

(declare-fun d!230946 () Bool)

(declare-fun lt!283769 () List!7321)

(assert (=> d!230946 (= lt!283769 (++!1927 (list!3087 (c!121116 x!149974)) (efficientList$default$2!33 (c!121116 x!149974))))))

(assert (=> d!230946 (= lt!283769 e!430034)))

(declare-fun c!121138 () Bool)

(assert (=> d!230946 (= c!121138 (is-Empty!2599 (c!121116 x!149974)))))

(assert (=> d!230946 (= (efficientList!101 (c!121116 x!149974) (efficientList$default$2!33 (c!121116 x!149974))) lt!283769)))

(declare-fun bm!43512 () Bool)

(declare-fun c!121136 () Bool)

(declare-fun c!121137 () Bool)

(assert (=> bm!43512 (= c!121136 c!121137)))

(declare-fun lt!283766 () List!7321)

(declare-fun call!43517 () List!7321)

(declare-fun e!430033 () List!7321)

(assert (=> bm!43512 (= call!43517 (++!1927 e!430033 (ite c!121137 (efficientList$default$2!33 (c!121116 x!149974)) lt!283766)))))

(declare-fun b!684909 () Bool)

(declare-datatypes ((Unit!12604 0))(
  ( (Unit!12605) )
))
(declare-fun lt!283770 () Unit!12604)

(declare-fun lt!283768 () Unit!12604)

(assert (=> b!684909 (= lt!283770 lt!283768)))

(declare-fun lt!283767 () List!7321)

(assert (=> b!684909 (= (++!1927 call!43517 (efficientList$default$2!33 (c!121116 x!149974))) (++!1927 lt!283767 (++!1927 lt!283766 (efficientList$default$2!33 (c!121116 x!149974)))))))

(declare-fun lemmaConcatAssociativity!644 (List!7321 List!7321 List!7321) Unit!12604)

(assert (=> b!684909 (= lt!283768 (lemmaConcatAssociativity!644 lt!283767 lt!283766 (efficientList$default$2!33 (c!121116 x!149974))))))

(assert (=> b!684909 (= lt!283766 (list!3087 (right!6246 (c!121116 x!149974))))))

(assert (=> b!684909 (= lt!283767 (list!3087 (left!5916 (c!121116 x!149974))))))

(declare-fun e!430032 () List!7321)

(assert (=> b!684909 (= e!430032 (efficientList!101 (left!5916 (c!121116 x!149974)) (efficientList!101 (right!6246 (c!121116 x!149974)) (efficientList$default$2!33 (c!121116 x!149974)))))))

(declare-fun b!684910 () Bool)

(assert (=> b!684910 (= e!430033 lt!283767)))

(declare-fun b!684911 () Bool)

(assert (=> b!684911 (= e!430032 call!43517)))

(declare-fun b!684912 () Bool)

(declare-fun efficientList!102 (IArray!5199) List!7321)

(assert (=> b!684912 (= e!430033 (efficientList!102 (xs!5248 (c!121116 x!149974))))))

(declare-fun b!684913 () Bool)

(assert (=> b!684913 (= e!430034 e!430032)))

(assert (=> b!684913 (= c!121137 (is-Leaf!3857 (c!121116 x!149974)))))

(assert (= (and d!230946 c!121138) b!684908))

(assert (= (and d!230946 (not c!121138)) b!684913))

(assert (= (and b!684913 c!121137) b!684911))

(assert (= (and b!684913 (not c!121137)) b!684909))

(assert (= (or b!684911 b!684909) bm!43512))

(assert (= (and bm!43512 c!121136) b!684912))

(assert (= (and bm!43512 (not c!121136)) b!684910))

(assert (=> d!230946 m!941657))

(assert (=> d!230946 m!941657))

(assert (=> d!230946 m!941695))

(declare-fun m!941735 () Bool)

(assert (=> d!230946 m!941735))

(declare-fun m!941737 () Bool)

(assert (=> bm!43512 m!941737))

(assert (=> b!684909 m!941695))

(declare-fun m!941739 () Bool)

(assert (=> b!684909 m!941739))

(assert (=> b!684909 m!941695))

(declare-fun m!941741 () Bool)

(assert (=> b!684909 m!941741))

(assert (=> b!684909 m!941695))

(declare-fun m!941743 () Bool)

(assert (=> b!684909 m!941743))

(assert (=> b!684909 m!941689))

(assert (=> b!684909 m!941695))

(declare-fun m!941745 () Bool)

(assert (=> b!684909 m!941745))

(assert (=> b!684909 m!941687))

(assert (=> b!684909 m!941745))

(declare-fun m!941747 () Bool)

(assert (=> b!684909 m!941747))

(assert (=> b!684909 m!941741))

(declare-fun m!941749 () Bool)

(assert (=> b!684909 m!941749))

(declare-fun m!941751 () Bool)

(assert (=> b!684912 m!941751))

(assert (=> d!230932 d!230946))

(declare-fun d!230948 () Bool)

(assert (=> d!230948 (= (efficientList$default$2!33 (c!121116 x!149974)) Nil!7307)))

(assert (=> d!230932 d!230948))

(assert (=> d!230942 d!230902))

(declare-fun b!684914 () Bool)

(declare-fun e!430037 () List!7321)

(assert (=> b!684914 (= e!430037 (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(declare-fun d!230950 () Bool)

(declare-fun lt!283774 () List!7321)

(assert (=> d!230950 (= lt!283774 (++!1927 (list!3087 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))) (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> d!230950 (= lt!283774 e!430037)))

(declare-fun c!121141 () Bool)

(assert (=> d!230950 (= c!121141 (is-Empty!2599 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(assert (=> d!230950 (= (efficientList!101 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))) (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))) lt!283774)))

(declare-fun bm!43513 () Bool)

(declare-fun c!121139 () Bool)

(declare-fun c!121140 () Bool)

(assert (=> bm!43513 (= c!121139 c!121140)))

(declare-fun call!43518 () List!7321)

(declare-fun e!430036 () List!7321)

(declare-fun lt!283771 () List!7321)

(assert (=> bm!43513 (= call!43518 (++!1927 e!430036 (ite c!121140 (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))) lt!283771)))))

(declare-fun b!684915 () Bool)

(declare-fun lt!283775 () Unit!12604)

(declare-fun lt!283773 () Unit!12604)

(assert (=> b!684915 (= lt!283775 lt!283773)))

(declare-fun lt!283772 () List!7321)

(assert (=> b!684915 (= (++!1927 call!43518 (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))) (++!1927 lt!283772 (++!1927 lt!283771 (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))))

(assert (=> b!684915 (= lt!283773 (lemmaConcatAssociativity!644 lt!283772 lt!283771 (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> b!684915 (= lt!283771 (list!3087 (right!6246 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(assert (=> b!684915 (= lt!283772 (list!3087 (left!5916 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(declare-fun e!430035 () List!7321)

(assert (=> b!684915 (= e!430035 (efficientList!101 (left!5916 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))) (efficientList!101 (right!6246 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))) (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))))

(declare-fun b!684916 () Bool)

(assert (=> b!684916 (= e!430036 lt!283772)))

(declare-fun b!684917 () Bool)

(assert (=> b!684917 (= e!430035 call!43518)))

(declare-fun b!684918 () Bool)

(assert (=> b!684918 (= e!430036 (efficientList!102 (xs!5248 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973))))))))

(declare-fun b!684919 () Bool)

(assert (=> b!684919 (= e!430037 e!430035)))

(assert (=> b!684919 (= c!121140 (is-Leaf!3857 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))))))

(assert (= (and d!230950 c!121141) b!684914))

(assert (= (and d!230950 (not c!121141)) b!684919))

(assert (= (and b!684919 c!121140) b!684917))

(assert (= (and b!684919 (not c!121140)) b!684915))

(assert (= (or b!684917 b!684915) bm!43513))

(assert (= (and bm!43513 c!121139) b!684918))

(assert (= (and bm!43513 (not c!121139)) b!684916))

(assert (=> d!230950 m!941655))

(assert (=> d!230950 m!941655))

(assert (=> d!230950 m!941723))

(declare-fun m!941753 () Bool)

(assert (=> d!230950 m!941753))

(declare-fun m!941755 () Bool)

(assert (=> bm!43513 m!941755))

(assert (=> b!684915 m!941723))

(declare-fun m!941757 () Bool)

(assert (=> b!684915 m!941757))

(assert (=> b!684915 m!941723))

(declare-fun m!941759 () Bool)

(assert (=> b!684915 m!941759))

(assert (=> b!684915 m!941723))

(declare-fun m!941761 () Bool)

(assert (=> b!684915 m!941761))

(assert (=> b!684915 m!941729))

(assert (=> b!684915 m!941723))

(declare-fun m!941763 () Bool)

(assert (=> b!684915 m!941763))

(assert (=> b!684915 m!941727))

(assert (=> b!684915 m!941763))

(declare-fun m!941765 () Bool)

(assert (=> b!684915 m!941765))

(assert (=> b!684915 m!941759))

(declare-fun m!941767 () Bool)

(assert (=> b!684915 m!941767))

(declare-fun m!941769 () Bool)

(assert (=> b!684918 m!941769))

(assert (=> d!230942 d!230950))

(declare-fun d!230952 () Bool)

(assert (=> d!230952 (= (efficientList$default$2!33 (c!121116 (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)))) Nil!7307)))

(assert (=> d!230942 d!230952))

(assert (=> b!684805 d!230908))

(assert (=> b!684805 d!230910))

(assert (=> bs!131049 d!230902))

(declare-fun d!230954 () Bool)

(declare-fun c!121145 () Bool)

(assert (=> d!230954 (= c!121145 (is-SpaceValue!1516 (toValue!26 thiss!4519 x!149973)))))

(declare-fun e!430040 () BalanceConc!5210)

(assert (=> d!230954 (= (toCharacters!19 thiss!4519 (toValue!26 thiss!4519 x!149973)) e!430040)))

(declare-fun b!684924 () Bool)

(declare-fun seqFromList!1472 (List!7321) BalanceConc!5210)

(assert (=> b!684924 (= e!430040 (seqFromList!1472 (value!47631 (toValue!26 thiss!4519 x!149973))))))

(declare-fun b!684925 () Bool)

(assert (=> b!684925 (= e!430040 (BalanceConc!5211 Empty!2599))))

(assert (= (and d!230954 c!121145) b!684924))

(assert (= (and d!230954 (not c!121145)) b!684925))

(declare-fun m!941771 () Bool)

(assert (=> b!684924 m!941771))

(assert (=> bs!131049 d!230954))

(assert (=> bs!131049 d!230906))

(assert (=> bs!131049 d!230900))

(declare-fun d!230956 () Bool)

(declare-fun c!121148 () Bool)

(assert (=> d!230956 (= c!121148 (is-Node!2599 (c!121116 x!149973)))))

(declare-fun e!430045 () Bool)

(assert (=> d!230956 (= (inv!9394 (c!121116 x!149973)) e!430045)))

(declare-fun b!684932 () Bool)

(declare-fun inv!9398 (Conc!2599) Bool)

(assert (=> b!684932 (= e!430045 (inv!9398 (c!121116 x!149973)))))

(declare-fun b!684933 () Bool)

(declare-fun e!430046 () Bool)

(assert (=> b!684933 (= e!430045 e!430046)))

(declare-fun res!311852 () Bool)

(assert (=> b!684933 (= res!311852 (not (is-Leaf!3857 (c!121116 x!149973))))))

(assert (=> b!684933 (=> res!311852 e!430046)))

(declare-fun b!684934 () Bool)

(declare-fun inv!9399 (Conc!2599) Bool)

(assert (=> b!684934 (= e!430046 (inv!9399 (c!121116 x!149973)))))

(assert (= (and d!230956 c!121148) b!684932))

(assert (= (and d!230956 (not c!121148)) b!684933))

(assert (= (and b!684933 (not res!311852)) b!684934))

(declare-fun m!941773 () Bool)

(assert (=> b!684932 m!941773))

(declare-fun m!941775 () Bool)

(assert (=> b!684934 m!941775))

(assert (=> b!684804 d!230956))

(declare-fun d!230958 () Bool)

(declare-fun c!121149 () Bool)

(assert (=> d!230958 (= c!121149 (is-Node!2599 (c!121116 x!149974)))))

(declare-fun e!430047 () Bool)

(assert (=> d!230958 (= (inv!9394 (c!121116 x!149974)) e!430047)))

(declare-fun b!684935 () Bool)

(assert (=> b!684935 (= e!430047 (inv!9398 (c!121116 x!149974)))))

(declare-fun b!684936 () Bool)

(declare-fun e!430048 () Bool)

(assert (=> b!684936 (= e!430047 e!430048)))

(declare-fun res!311853 () Bool)

(assert (=> b!684936 (= res!311853 (not (is-Leaf!3857 (c!121116 x!149974))))))

(assert (=> b!684936 (=> res!311853 e!430048)))

(declare-fun b!684937 () Bool)

(assert (=> b!684937 (= e!430048 (inv!9399 (c!121116 x!149974)))))

(assert (= (and d!230958 c!121149) b!684935))

(assert (= (and d!230958 (not c!121149)) b!684936))

(assert (= (and b!684936 (not res!311853)) b!684937))

(declare-fun m!941777 () Bool)

(assert (=> b!684935 m!941777))

(declare-fun m!941779 () Bool)

(assert (=> b!684937 m!941779))

(assert (=> b!684806 d!230958))

(declare-fun d!230960 () Bool)

(declare-fun c!121150 () Bool)

(assert (=> d!230960 (= c!121150 (is-Node!2599 (c!121116 x!149975)))))

(declare-fun e!430049 () Bool)

(assert (=> d!230960 (= (inv!9394 (c!121116 x!149975)) e!430049)))

(declare-fun b!684938 () Bool)

(assert (=> b!684938 (= e!430049 (inv!9398 (c!121116 x!149975)))))

(declare-fun b!684939 () Bool)

(declare-fun e!430050 () Bool)

(assert (=> b!684939 (= e!430049 e!430050)))

(declare-fun res!311854 () Bool)

(assert (=> b!684939 (= res!311854 (not (is-Leaf!3857 (c!121116 x!149975))))))

(assert (=> b!684939 (=> res!311854 e!430050)))

(declare-fun b!684940 () Bool)

(assert (=> b!684940 (= e!430050 (inv!9399 (c!121116 x!149975)))))

(assert (= (and d!230960 c!121150) b!684938))

(assert (= (and d!230960 (not c!121150)) b!684939))

(assert (= (and b!684939 (not res!311854)) b!684940))

(declare-fun m!941781 () Bool)

(assert (=> b!684938 m!941781))

(declare-fun m!941783 () Bool)

(assert (=> b!684940 m!941783))

(assert (=> b!684807 d!230960))

(assert (=> d!230936 d!230898))

(declare-fun b!684941 () Bool)

(declare-fun e!430053 () List!7321)

(assert (=> b!684941 (= e!430053 (efficientList$default$2!33 (c!121116 x!149975)))))

(declare-fun d!230962 () Bool)

(declare-fun lt!283779 () List!7321)

(assert (=> d!230962 (= lt!283779 (++!1927 (list!3087 (c!121116 x!149975)) (efficientList$default$2!33 (c!121116 x!149975))))))

(assert (=> d!230962 (= lt!283779 e!430053)))

(declare-fun c!121153 () Bool)

(assert (=> d!230962 (= c!121153 (is-Empty!2599 (c!121116 x!149975)))))

(assert (=> d!230962 (= (efficientList!101 (c!121116 x!149975) (efficientList$default$2!33 (c!121116 x!149975))) lt!283779)))

(declare-fun bm!43514 () Bool)

(declare-fun c!121151 () Bool)

(declare-fun c!121152 () Bool)

(assert (=> bm!43514 (= c!121151 c!121152)))

(declare-fun lt!283776 () List!7321)

(declare-fun call!43519 () List!7321)

(declare-fun e!430052 () List!7321)

(assert (=> bm!43514 (= call!43519 (++!1927 e!430052 (ite c!121152 (efficientList$default$2!33 (c!121116 x!149975)) lt!283776)))))

(declare-fun b!684942 () Bool)

(declare-fun lt!283780 () Unit!12604)

(declare-fun lt!283778 () Unit!12604)

(assert (=> b!684942 (= lt!283780 lt!283778)))

(declare-fun lt!283777 () List!7321)

(assert (=> b!684942 (= (++!1927 call!43519 (efficientList$default$2!33 (c!121116 x!149975))) (++!1927 lt!283777 (++!1927 lt!283776 (efficientList$default$2!33 (c!121116 x!149975)))))))

(assert (=> b!684942 (= lt!283778 (lemmaConcatAssociativity!644 lt!283777 lt!283776 (efficientList$default$2!33 (c!121116 x!149975))))))

(assert (=> b!684942 (= lt!283776 (list!3087 (right!6246 (c!121116 x!149975))))))

(assert (=> b!684942 (= lt!283777 (list!3087 (left!5916 (c!121116 x!149975))))))

(declare-fun e!430051 () List!7321)

(assert (=> b!684942 (= e!430051 (efficientList!101 (left!5916 (c!121116 x!149975)) (efficientList!101 (right!6246 (c!121116 x!149975)) (efficientList$default$2!33 (c!121116 x!149975)))))))

(declare-fun b!684943 () Bool)

(assert (=> b!684943 (= e!430052 lt!283777)))

(declare-fun b!684944 () Bool)

(assert (=> b!684944 (= e!430051 call!43519)))

(declare-fun b!684945 () Bool)

(assert (=> b!684945 (= e!430052 (efficientList!102 (xs!5248 (c!121116 x!149975))))))

(declare-fun b!684946 () Bool)

(assert (=> b!684946 (= e!430053 e!430051)))

(assert (=> b!684946 (= c!121152 (is-Leaf!3857 (c!121116 x!149975)))))

(assert (= (and d!230962 c!121153) b!684941))

(assert (= (and d!230962 (not c!121153)) b!684946))

(assert (= (and b!684946 c!121152) b!684944))

(assert (= (and b!684946 (not c!121152)) b!684942))

(assert (= (or b!684944 b!684942) bm!43514))

(assert (= (and bm!43514 c!121151) b!684945))

(assert (= (and bm!43514 (not c!121151)) b!684943))

(assert (=> d!230962 m!941651))

(assert (=> d!230962 m!941651))

(assert (=> d!230962 m!941707))

(declare-fun m!941785 () Bool)

(assert (=> d!230962 m!941785))

(declare-fun m!941787 () Bool)

(assert (=> bm!43514 m!941787))

(assert (=> b!684942 m!941707))

(declare-fun m!941789 () Bool)

(assert (=> b!684942 m!941789))

(assert (=> b!684942 m!941707))

(declare-fun m!941791 () Bool)

(assert (=> b!684942 m!941791))

(assert (=> b!684942 m!941707))

(declare-fun m!941793 () Bool)

(assert (=> b!684942 m!941793))

(assert (=> b!684942 m!941701))

(assert (=> b!684942 m!941707))

(declare-fun m!941795 () Bool)

(assert (=> b!684942 m!941795))

(assert (=> b!684942 m!941699))

(assert (=> b!684942 m!941795))

(declare-fun m!941797 () Bool)

(assert (=> b!684942 m!941797))

(assert (=> b!684942 m!941791))

(declare-fun m!941799 () Bool)

(assert (=> b!684942 m!941799))

(declare-fun m!941801 () Bool)

(assert (=> b!684945 m!941801))

(assert (=> d!230936 d!230962))

(declare-fun d!230964 () Bool)

(assert (=> d!230964 (= (efficientList$default$2!33 (c!121116 x!149975)) Nil!7307)))

(assert (=> d!230936 d!230964))

(declare-fun bs!131168 () Bool)

(declare-fun d!230966 () Bool)

(assert (= bs!131168 (and d!230966 start!65510)))

(declare-fun lambda!21066 () Int)

(assert (=> bs!131168 (not (= lambda!21066 lambda!21038))))

(assert (=> d!230966 true))

(declare-fun order!5303 () Int)

(declare-fun order!5305 () Int)

(declare-fun dynLambda!3853 (Int Int) Int)

(declare-fun dynLambda!3854 (Int Int) Int)

(assert (=> d!230966 (< (dynLambda!3853 order!5303 lambda!21039) (dynLambda!3854 order!5305 lambda!21066))))

(assert (=> d!230966 true))

(declare-fun order!5307 () Int)

(declare-fun dynLambda!3855 (Int Int) Int)

(assert (=> d!230966 (< (dynLambda!3855 order!5307 lambda!21040) (dynLambda!3854 order!5305 lambda!21066))))

(assert (=> d!230966 (= (semiInverseModEq!559 lambda!21039 lambda!21040) (Forall!346 lambda!21066))))

(declare-fun bs!131169 () Bool)

(assert (= bs!131169 d!230966))

(declare-fun m!941803 () Bool)

(assert (=> bs!131169 m!941803))

(assert (=> b!684794 d!230966))

(declare-fun d!230968 () Bool)

(declare-fun choose!4689 (Int) Bool)

(assert (=> d!230968 (= (Forall!346 lambda!21038) (choose!4689 lambda!21038))))

(declare-fun bs!131170 () Bool)

(assert (= bs!131170 d!230968))

(declare-fun m!941805 () Bool)

(assert (=> bs!131170 m!941805))

(assert (=> b!684794 d!230968))

(declare-fun d!230970 () Bool)

(declare-fun isBalanced!685 (Conc!2599) Bool)

(assert (=> d!230970 (= (inv!9395 x!149975) (isBalanced!685 (c!121116 x!149975)))))

(declare-fun bs!131171 () Bool)

(assert (= bs!131171 d!230970))

(declare-fun m!941807 () Bool)

(assert (=> bs!131171 m!941807))

(assert (=> b!684795 d!230970))

(assert (=> b!684795 d!230904))

(declare-fun d!230972 () Bool)

(assert (=> d!230972 (= (inv!9395 x!149974) (isBalanced!685 (c!121116 x!149974)))))

(declare-fun bs!131172 () Bool)

(assert (= bs!131172 d!230972))

(declare-fun m!941809 () Bool)

(assert (=> bs!131172 m!941809))

(assert (=> b!684795 d!230972))

(declare-fun d!230974 () Bool)

(declare-fun choose!4690 (Int) Bool)

(assert (=> d!230974 (= (Forall2!264 lambda!21041) (choose!4690 lambda!21041))))

(declare-fun bs!131173 () Bool)

(assert (= bs!131173 d!230974))

(declare-fun m!941811 () Bool)

(assert (=> bs!131173 m!941811))

(assert (=> b!684795 d!230974))

(assert (=> b!684795 d!230898))

(assert (=> start!65510 d!230954))

(assert (=> start!65510 d!230906))

(assert (=> start!65510 d!230968))

(declare-fun d!230978 () Bool)

(assert (=> d!230978 (= (inv!9395 x!149973) (isBalanced!685 (c!121116 x!149973)))))

(declare-fun bs!131174 () Bool)

(assert (= bs!131174 d!230978))

(declare-fun m!941813 () Bool)

(assert (=> bs!131174 m!941813))

(assert (=> start!65510 d!230978))

(assert (=> start!65510 d!230900))

(assert (=> start!65510 d!230902))

(assert (=> d!230938 d!230900))

(declare-fun b!684951 () Bool)

(declare-fun e!430056 () List!7321)

(assert (=> b!684951 (= e!430056 (efficientList$default$2!33 (c!121116 x!149973)))))

(declare-fun d!230980 () Bool)

(declare-fun lt!283784 () List!7321)

(assert (=> d!230980 (= lt!283784 (++!1927 (list!3087 (c!121116 x!149973)) (efficientList$default$2!33 (c!121116 x!149973))))))

(assert (=> d!230980 (= lt!283784 e!430056)))

(declare-fun c!121156 () Bool)

(assert (=> d!230980 (= c!121156 (is-Empty!2599 (c!121116 x!149973)))))

(assert (=> d!230980 (= (efficientList!101 (c!121116 x!149973) (efficientList$default$2!33 (c!121116 x!149973))) lt!283784)))

(declare-fun bm!43515 () Bool)

(declare-fun c!121154 () Bool)

(declare-fun c!121155 () Bool)

(assert (=> bm!43515 (= c!121154 c!121155)))

(declare-fun lt!283781 () List!7321)

(declare-fun call!43520 () List!7321)

(declare-fun e!430055 () List!7321)

(assert (=> bm!43515 (= call!43520 (++!1927 e!430055 (ite c!121155 (efficientList$default$2!33 (c!121116 x!149973)) lt!283781)))))

(declare-fun b!684952 () Bool)

(declare-fun lt!283785 () Unit!12604)

(declare-fun lt!283783 () Unit!12604)

(assert (=> b!684952 (= lt!283785 lt!283783)))

(declare-fun lt!283782 () List!7321)

(assert (=> b!684952 (= (++!1927 call!43520 (efficientList$default$2!33 (c!121116 x!149973))) (++!1927 lt!283782 (++!1927 lt!283781 (efficientList$default$2!33 (c!121116 x!149973)))))))

(assert (=> b!684952 (= lt!283783 (lemmaConcatAssociativity!644 lt!283782 lt!283781 (efficientList$default$2!33 (c!121116 x!149973))))))

(assert (=> b!684952 (= lt!283781 (list!3087 (right!6246 (c!121116 x!149973))))))

(assert (=> b!684952 (= lt!283782 (list!3087 (left!5916 (c!121116 x!149973))))))

(declare-fun e!430054 () List!7321)

(assert (=> b!684952 (= e!430054 (efficientList!101 (left!5916 (c!121116 x!149973)) (efficientList!101 (right!6246 (c!121116 x!149973)) (efficientList$default$2!33 (c!121116 x!149973)))))))

(declare-fun b!684953 () Bool)

(assert (=> b!684953 (= e!430055 lt!283782)))

(declare-fun b!684954 () Bool)

(assert (=> b!684954 (= e!430054 call!43520)))

(declare-fun b!684955 () Bool)

(assert (=> b!684955 (= e!430055 (efficientList!102 (xs!5248 (c!121116 x!149973))))))

(declare-fun b!684956 () Bool)

(assert (=> b!684956 (= e!430056 e!430054)))

(assert (=> b!684956 (= c!121155 (is-Leaf!3857 (c!121116 x!149973)))))

(assert (= (and d!230980 c!121156) b!684951))

(assert (= (and d!230980 (not c!121156)) b!684956))

(assert (= (and b!684956 c!121155) b!684954))

(assert (= (and b!684956 (not c!121155)) b!684952))

(assert (= (or b!684954 b!684952) bm!43515))

(assert (= (and bm!43515 c!121154) b!684955))

(assert (= (and bm!43515 (not c!121154)) b!684953))

(assert (=> d!230980 m!941653))

(assert (=> d!230980 m!941653))

(assert (=> d!230980 m!941711))

(declare-fun m!941815 () Bool)

(assert (=> d!230980 m!941815))

(declare-fun m!941817 () Bool)

(assert (=> bm!43515 m!941817))

(assert (=> b!684952 m!941711))

(declare-fun m!941819 () Bool)

(assert (=> b!684952 m!941819))

(assert (=> b!684952 m!941711))

(declare-fun m!941821 () Bool)

(assert (=> b!684952 m!941821))

(assert (=> b!684952 m!941711))

(declare-fun m!941823 () Bool)

(assert (=> b!684952 m!941823))

(assert (=> b!684952 m!941717))

(assert (=> b!684952 m!941711))

(declare-fun m!941825 () Bool)

(assert (=> b!684952 m!941825))

(assert (=> b!684952 m!941715))

(assert (=> b!684952 m!941825))

(declare-fun m!941827 () Bool)

(assert (=> b!684952 m!941827))

(assert (=> b!684952 m!941821))

(declare-fun m!941829 () Bool)

(assert (=> b!684952 m!941829))

(declare-fun m!941831 () Bool)

(assert (=> b!684955 m!941831))

(assert (=> d!230938 d!230980))

(declare-fun d!230982 () Bool)

(assert (=> d!230982 (= (efficientList$default$2!33 (c!121116 x!149973)) Nil!7307)))

(assert (=> d!230938 d!230982))

(declare-fun tp!203141 () Bool)

(declare-fun tp!203142 () Bool)

(declare-fun e!430061 () Bool)

(declare-fun b!684963 () Bool)

(assert (=> b!684963 (= e!430061 (and (inv!9394 (left!5916 (c!121116 x!149974))) tp!203141 (inv!9394 (right!6246 (c!121116 x!149974))) tp!203142))))

(declare-fun b!684964 () Bool)

(declare-fun inv!9400 (IArray!5199) Bool)

(assert (=> b!684964 (= e!430061 (inv!9400 (xs!5248 (c!121116 x!149974))))))

(assert (=> b!684806 (= tp!203126 (and (inv!9394 (c!121116 x!149974)) e!430061))))

(assert (= (and b!684806 (is-Node!2599 (c!121116 x!149974))) b!684963))

(assert (= (and b!684806 (is-Leaf!3857 (c!121116 x!149974))) b!684964))

(declare-fun m!941833 () Bool)

(assert (=> b!684963 m!941833))

(declare-fun m!941835 () Bool)

(assert (=> b!684963 m!941835))

(declare-fun m!941837 () Bool)

(assert (=> b!684964 m!941837))

(assert (=> b!684806 m!941607))

(declare-fun tp!203143 () Bool)

(declare-fun tp!203144 () Bool)

(declare-fun e!430063 () Bool)

(declare-fun b!684965 () Bool)

(assert (=> b!684965 (= e!430063 (and (inv!9394 (left!5916 (c!121116 x!149975))) tp!203143 (inv!9394 (right!6246 (c!121116 x!149975))) tp!203144))))

(declare-fun b!684966 () Bool)

(assert (=> b!684966 (= e!430063 (inv!9400 (xs!5248 (c!121116 x!149975))))))

(assert (=> b!684807 (= tp!203127 (and (inv!9394 (c!121116 x!149975)) e!430063))))

(assert (= (and b!684807 (is-Node!2599 (c!121116 x!149975))) b!684965))

(assert (= (and b!684807 (is-Leaf!3857 (c!121116 x!149975))) b!684966))

(declare-fun m!941839 () Bool)

(assert (=> b!684965 m!941839))

(declare-fun m!941841 () Bool)

(assert (=> b!684965 m!941841))

(declare-fun m!941843 () Bool)

(assert (=> b!684966 m!941843))

(assert (=> b!684807 m!941609))

(declare-fun tp!203145 () Bool)

(declare-fun b!684967 () Bool)

(declare-fun tp!203146 () Bool)

(declare-fun e!430065 () Bool)

(assert (=> b!684967 (= e!430065 (and (inv!9394 (left!5916 (c!121116 x!149973))) tp!203145 (inv!9394 (right!6246 (c!121116 x!149973))) tp!203146))))

(declare-fun b!684968 () Bool)

(assert (=> b!684968 (= e!430065 (inv!9400 (xs!5248 (c!121116 x!149973))))))

(assert (=> b!684804 (= tp!203125 (and (inv!9394 (c!121116 x!149973)) e!430065))))

(assert (= (and b!684804 (is-Node!2599 (c!121116 x!149973))) b!684967))

(assert (= (and b!684804 (is-Leaf!3857 (c!121116 x!149973))) b!684968))

(declare-fun m!941845 () Bool)

(assert (=> b!684967 m!941845))

(declare-fun m!941847 () Bool)

(assert (=> b!684967 m!941847))

(declare-fun m!941849 () Bool)

(assert (=> b!684968 m!941849))

(assert (=> b!684804 m!941583))

(push 1)

(assert (not d!230962))

(assert (not d!230946))

(assert (not bm!43514))

(assert (not d!230980))

(assert (not b!684963))

(assert (not b!684895))

(assert (not b!684891))

(assert (not b!684804))

(assert (not b!684964))

(assert (not b!684918))

(assert (not b!684935))

(assert (not b!684915))

(assert (not b!684934))

(assert (not b!684966))

(assert (not b!684882))

(assert (not b!684938))

(assert (not b!684940))

(assert (not d!230972))

(assert (not b!684968))

(assert (not bm!43515))

(assert (not b!684924))

(assert (not b!684952))

(assert (not b!684894))

(assert (not d!230970))

(assert (not bm!43513))

(assert (not b!684932))

(assert (not b!684945))

(assert (not b!684909))

(assert (not bm!43512))

(assert (not d!230950))

(assert (not d!230974))

(assert (not b!684937))

(assert (not d!230968))

(assert (not b!684887))

(assert (not b!684912))

(assert (not b!684890))

(assert (not b!684965))

(assert (not d!230966))

(assert (not b!684967))

(assert (not b!684955))

(assert (not b!684886))

(assert (not b!684807))

(assert (not b!684883))

(assert (not b!684806))

(assert (not d!230978))

(assert (not b!684942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

