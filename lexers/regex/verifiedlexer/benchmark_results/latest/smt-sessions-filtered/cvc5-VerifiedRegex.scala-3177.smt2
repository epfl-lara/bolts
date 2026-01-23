; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!185726 () Bool)

(assert start!185726)

(assert (=> start!185726 true))

(declare-fun b!1859631 () Bool)

(assert (=> b!1859631 true))

(assert (=> b!1859631 true))

(assert (=> b!1859631 true))

(declare-fun b!1859641 () Bool)

(declare-fun e!1187601 () Bool)

(declare-datatypes ((List!20702 0))(
  ( (Nil!20622) (Cons!20622 (h!26023 (_ BitVec 16)) (t!172611 List!20702)) )
))
(declare-datatypes ((IArray!13643 0))(
  ( (IArray!13644 (innerList!6879 List!20702)) )
))
(declare-datatypes ((Conc!6819 0))(
  ( (Node!6819 (left!16560 Conc!6819) (right!16890 Conc!6819) (csize!13868 Int) (cheight!7030 Int)) (Leaf!9997 (xs!9695 IArray!13643) (csize!13869 Int)) (Empty!6819) )
))
(declare-datatypes ((BalanceConc!13568 0))(
  ( (BalanceConc!13569 (c!302833 Conc!6819)) )
))
(declare-fun x!372876 () BalanceConc!13568)

(declare-fun tp!530023 () Bool)

(declare-fun inv!27083 (Conc!6819) Bool)

(assert (=> b!1859641 (= e!1187601 (and (inv!27083 (c!302833 x!372876)) tp!530023))))

(declare-fun inst!1150 () Bool)

(declare-datatypes ((WhitespaceValueInjection!124 0))(
  ( (WhitespaceValueInjection!125) )
))
(declare-fun thiss!3128 () WhitespaceValueInjection!124)

(declare-fun inv!27084 (BalanceConc!13568) Bool)

(declare-fun list!8368 (BalanceConc!13568) List!20702)

(declare-datatypes ((TokenValue!3803 0))(
  ( (FloatLiteralValue!7606 (text!27066 List!20702)) (TokenValueExt!3802 (__x!12992 Int)) (Broken!19015 (value!115743 List!20702)) (Object!3882) (End!3803) (Def!3803) (Underscore!3803) (Match!3803) (Else!3803) (Error!3803) (Case!3803) (If!3803) (Extends!3803) (Abstract!3803) (Class!3803) (Val!3803) (DelimiterValue!7606 (del!3863 List!20702)) (KeywordValue!3809 (value!115744 List!20702)) (CommentValue!7606 (value!115745 List!20702)) (WhitespaceValue!7606 (value!115746 List!20702)) (IndentationValue!3803 (value!115747 List!20702)) (String!23690) (Int32!3803) (Broken!19016 (value!115748 List!20702)) (Boolean!3804) (Unit!35235) (OperatorValue!3806 (op!3863 List!20702)) (IdentifierValue!7606 (value!115749 List!20702)) (IdentifierValue!7607 (value!115750 List!20702)) (WhitespaceValue!7607 (value!115751 List!20702)) (True!7606) (False!7606) (Broken!19017 (value!115752 List!20702)) (Broken!19018 (value!115753 List!20702)) (True!7607) (RightBrace!3803) (RightBracket!3803) (Colon!3803) (Null!3803) (Comma!3803) (LeftBracket!3803) (False!7607) (LeftBrace!3803) (ImaginaryLiteralValue!3803 (text!27067 List!20702)) (StringLiteralValue!11409 (value!115754 List!20702)) (EOFValue!3803 (value!115755 List!20702)) (IdentValue!3803 (value!115756 List!20702)) (DelimiterValue!7607 (value!115757 List!20702)) (DedentValue!3803 (value!115758 List!20702)) (NewLineValue!3803 (value!115759 List!20702)) (IntegerValue!11409 (value!115760 (_ BitVec 32)) (text!27068 List!20702)) (IntegerValue!11410 (value!115761 Int) (text!27069 List!20702)) (Times!3803) (Or!3803) (Equal!3803) (Minus!3803) (Broken!19019 (value!115762 List!20702)) (And!3803) (Div!3803) (LessEqual!3803) (Mod!3803) (Concat!8865) (Not!3803) (Plus!3803) (SpaceValue!3803 (value!115763 List!20702)) (IntegerValue!11411 (value!115764 Int) (text!27070 List!20702)) (StringLiteralValue!11410 (text!27071 List!20702)) (FloatLiteralValue!7607 (text!27072 List!20702)) (BytesLiteralValue!3803 (value!115765 List!20702)) (CommentValue!7607 (value!115766 List!20702)) (StringLiteralValue!11411 (value!115767 List!20702)) (ErrorTokenValue!3803 (msg!3864 List!20702)) )
))
(declare-fun toCharacters!2 (WhitespaceValueInjection!124 TokenValue!3803) BalanceConc!13568)

(declare-fun toValue!9 (WhitespaceValueInjection!124 BalanceConc!13568) TokenValue!3803)

(assert (=> start!185726 (= inst!1150 (=> (and (inv!27084 x!372876) e!1187601) (= (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (list!8368 x!372876))))))

(assert (= start!185726 b!1859641))

(declare-fun m!2283153 () Bool)

(assert (=> b!1859641 m!2283153))

(declare-fun m!2283155 () Bool)

(assert (=> start!185726 m!2283155))

(declare-fun m!2283157 () Bool)

(assert (=> start!185726 m!2283157))

(declare-fun m!2283159 () Bool)

(assert (=> start!185726 m!2283159))

(assert (=> start!185726 m!2283155))

(declare-fun m!2283161 () Bool)

(assert (=> start!185726 m!2283161))

(assert (=> start!185726 m!2283157))

(declare-fun m!2283163 () Bool)

(assert (=> start!185726 m!2283163))

(declare-fun res!832817 () Bool)

(declare-fun e!1187603 () Bool)

(assert (=> b!1859631 (=> res!832817 e!1187603)))

(declare-fun x!372877 () BalanceConc!13568)

(declare-fun x!372878 () BalanceConc!13568)

(assert (=> b!1859631 (= res!832817 (not (= (list!8368 x!372877) (list!8368 x!372878))))))

(declare-fun e!1187604 () Bool)

(declare-fun inst!1151 () Bool)

(declare-fun e!1187602 () Bool)

(assert (=> b!1859631 (= inst!1151 (=> (and (inv!27084 x!372877) e!1187602 (inv!27084 x!372878) e!1187604) e!1187603))))

(declare-fun b!1859642 () Bool)

(assert (=> b!1859642 (= e!1187603 (= (toValue!9 thiss!3128 x!372877) (toValue!9 thiss!3128 x!372878)))))

(declare-fun b!1859643 () Bool)

(declare-fun tp!530025 () Bool)

(assert (=> b!1859643 (= e!1187602 (and (inv!27083 (c!302833 x!372877)) tp!530025))))

(declare-fun b!1859644 () Bool)

(declare-fun tp!530024 () Bool)

(assert (=> b!1859644 (= e!1187604 (and (inv!27083 (c!302833 x!372878)) tp!530024))))

(assert (= (and b!1859631 (not res!832817)) b!1859642))

(assert (= b!1859631 b!1859643))

(assert (= b!1859631 b!1859644))

(declare-fun m!2283165 () Bool)

(assert (=> b!1859631 m!2283165))

(declare-fun m!2283167 () Bool)

(assert (=> b!1859631 m!2283167))

(declare-fun m!2283169 () Bool)

(assert (=> b!1859631 m!2283169))

(declare-fun m!2283171 () Bool)

(assert (=> b!1859631 m!2283171))

(declare-fun m!2283173 () Bool)

(assert (=> b!1859642 m!2283173))

(declare-fun m!2283175 () Bool)

(assert (=> b!1859642 m!2283175))

(declare-fun m!2283177 () Bool)

(assert (=> b!1859643 m!2283177))

(declare-fun m!2283179 () Bool)

(assert (=> b!1859644 m!2283179))

(declare-fun bs!410948 () Bool)

(declare-fun neg-inst!1151 () Bool)

(declare-fun s!221618 () Bool)

(assert (= bs!410948 (and neg-inst!1151 s!221618)))

(assert (=> bs!410948 (=> true (= (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (list!8368 x!372876)))))

(assert (=> m!2283155 m!2283157))

(assert (=> m!2283155 m!2283163))

(assert (=> m!2283155 m!2283159))

(assert (=> m!2283155 s!221618))

(assert (=> m!2283159 s!221618))

(declare-fun bs!410949 () Bool)

(assert (= bs!410949 (and neg-inst!1151 start!185726)))

(assert (=> bs!410949 (= true inst!1150)))

(declare-fun bs!410950 () Bool)

(declare-fun neg-inst!1150 () Bool)

(declare-fun s!221620 () Bool)

(assert (= bs!410950 (and neg-inst!1150 s!221620)))

(declare-fun res!832818 () Bool)

(declare-fun e!1187605 () Bool)

(assert (=> bs!410950 (=> res!832818 e!1187605)))

(assert (=> bs!410950 (= res!832818 (not (= (list!8368 x!372878) (list!8368 x!372878))))))

(assert (=> bs!410950 (=> true e!1187605)))

(declare-fun b!1859645 () Bool)

(assert (=> b!1859645 (= e!1187605 (= (toValue!9 thiss!3128 x!372878) (toValue!9 thiss!3128 x!372878)))))

(assert (= (and bs!410950 (not res!832818)) b!1859645))

(assert (=> m!2283167 s!221620))

(assert (=> m!2283167 s!221620))

(declare-fun bs!410951 () Bool)

(declare-fun s!221622 () Bool)

(assert (= bs!410951 (and neg-inst!1150 s!221622)))

(declare-fun res!832819 () Bool)

(declare-fun e!1187606 () Bool)

(assert (=> bs!410951 (=> res!832819 e!1187606)))

(assert (=> bs!410951 (= res!832819 (not (= (list!8368 x!372878) (list!8368 x!372877))))))

(assert (=> bs!410951 (=> true e!1187606)))

(declare-fun b!1859646 () Bool)

(assert (=> b!1859646 (= e!1187606 (= (toValue!9 thiss!3128 x!372878) (toValue!9 thiss!3128 x!372877)))))

(assert (= (and bs!410951 (not res!832819)) b!1859646))

(declare-fun bs!410952 () Bool)

(assert (= bs!410952 (and m!2283173 m!2283167)))

(assert (=> bs!410952 m!2283167))

(assert (=> bs!410952 m!2283165))

(assert (=> bs!410952 s!221622))

(declare-fun bs!410953 () Bool)

(declare-fun s!221624 () Bool)

(assert (= bs!410953 (and neg-inst!1150 s!221624)))

(declare-fun res!832820 () Bool)

(declare-fun e!1187607 () Bool)

(assert (=> bs!410953 (=> res!832820 e!1187607)))

(assert (=> bs!410953 (= res!832820 (not (= (list!8368 x!372877) (list!8368 x!372877))))))

(assert (=> bs!410953 (=> true e!1187607)))

(declare-fun b!1859647 () Bool)

(assert (=> b!1859647 (= e!1187607 (= (toValue!9 thiss!3128 x!372877) (toValue!9 thiss!3128 x!372877)))))

(assert (= (and bs!410953 (not res!832820)) b!1859647))

(assert (=> m!2283173 m!2283165))

(assert (=> m!2283173 m!2283165))

(assert (=> m!2283173 s!221624))

(declare-fun bs!410954 () Bool)

(declare-fun s!221626 () Bool)

(assert (= bs!410954 (and neg-inst!1150 s!221626)))

(declare-fun res!832821 () Bool)

(declare-fun e!1187608 () Bool)

(assert (=> bs!410954 (=> res!832821 e!1187608)))

(assert (=> bs!410954 (= res!832821 (not (= (list!8368 x!372877) (list!8368 x!372878))))))

(assert (=> bs!410954 (=> true e!1187608)))

(declare-fun b!1859648 () Bool)

(assert (=> b!1859648 (= e!1187608 (= (toValue!9 thiss!3128 x!372877) (toValue!9 thiss!3128 x!372878)))))

(assert (= (and bs!410954 (not res!832821)) b!1859648))

(assert (=> bs!410952 m!2283165))

(assert (=> bs!410952 m!2283167))

(assert (=> bs!410952 s!221626))

(assert (=> m!2283173 s!221624))

(declare-fun bs!410955 () Bool)

(declare-fun s!221628 () Bool)

(assert (= bs!410955 (and neg-inst!1150 s!221628)))

(declare-fun res!832822 () Bool)

(declare-fun e!1187609 () Bool)

(assert (=> bs!410955 (=> res!832822 e!1187609)))

(assert (=> bs!410955 (= res!832822 (not (= (list!8368 x!372877) (list!8368 x!372876))))))

(assert (=> bs!410955 (=> true e!1187609)))

(declare-fun b!1859649 () Bool)

(assert (=> b!1859649 (= e!1187609 (= (toValue!9 thiss!3128 x!372877) (toValue!9 thiss!3128 x!372876)))))

(assert (= (and bs!410955 (not res!832822)) b!1859649))

(declare-fun bs!410956 () Bool)

(assert (= bs!410956 (and m!2283155 m!2283173)))

(assert (=> bs!410956 m!2283165))

(assert (=> bs!410956 m!2283159))

(assert (=> bs!410956 s!221628))

(declare-fun bs!410957 () Bool)

(declare-fun s!221630 () Bool)

(assert (= bs!410957 (and neg-inst!1150 s!221630)))

(declare-fun res!832823 () Bool)

(declare-fun e!1187610 () Bool)

(assert (=> bs!410957 (=> res!832823 e!1187610)))

(assert (=> bs!410957 (= res!832823 (not (= (list!8368 x!372878) (list!8368 x!372876))))))

(assert (=> bs!410957 (=> true e!1187610)))

(declare-fun b!1859650 () Bool)

(assert (=> b!1859650 (= e!1187610 (= (toValue!9 thiss!3128 x!372878) (toValue!9 thiss!3128 x!372876)))))

(assert (= (and bs!410957 (not res!832823)) b!1859650))

(declare-fun bs!410958 () Bool)

(assert (= bs!410958 (and m!2283155 m!2283167)))

(assert (=> bs!410958 m!2283167))

(assert (=> bs!410958 m!2283159))

(assert (=> bs!410958 s!221630))

(declare-fun bs!410959 () Bool)

(declare-fun s!221632 () Bool)

(assert (= bs!410959 (and neg-inst!1150 s!221632)))

(declare-fun res!832824 () Bool)

(declare-fun e!1187611 () Bool)

(assert (=> bs!410959 (=> res!832824 e!1187611)))

(assert (=> bs!410959 (= res!832824 (not (= (list!8368 x!372876) (list!8368 x!372876))))))

(assert (=> bs!410959 (=> true e!1187611)))

(declare-fun b!1859651 () Bool)

(assert (=> b!1859651 (= e!1187611 (= (toValue!9 thiss!3128 x!372876) (toValue!9 thiss!3128 x!372876)))))

(assert (= (and bs!410959 (not res!832824)) b!1859651))

(assert (=> m!2283155 m!2283159))

(assert (=> m!2283155 m!2283159))

(assert (=> m!2283155 s!221632))

(declare-fun bs!410960 () Bool)

(declare-fun s!221634 () Bool)

(assert (= bs!410960 (and neg-inst!1150 s!221634)))

(declare-fun res!832825 () Bool)

(declare-fun e!1187612 () Bool)

(assert (=> bs!410960 (=> res!832825 e!1187612)))

(assert (=> bs!410960 (= res!832825 (not (= (list!8368 x!372876) (list!8368 x!372877))))))

(assert (=> bs!410960 (=> true e!1187612)))

(declare-fun b!1859652 () Bool)

(assert (=> b!1859652 (= e!1187612 (= (toValue!9 thiss!3128 x!372876) (toValue!9 thiss!3128 x!372877)))))

(assert (= (and bs!410960 (not res!832825)) b!1859652))

(assert (=> bs!410956 m!2283159))

(assert (=> bs!410956 m!2283165))

(assert (=> bs!410956 s!221634))

(declare-fun bs!410961 () Bool)

(declare-fun s!221636 () Bool)

(assert (= bs!410961 (and neg-inst!1150 s!221636)))

(declare-fun res!832826 () Bool)

(declare-fun e!1187613 () Bool)

(assert (=> bs!410961 (=> res!832826 e!1187613)))

(assert (=> bs!410961 (= res!832826 (not (= (list!8368 x!372876) (list!8368 x!372878))))))

(assert (=> bs!410961 (=> true e!1187613)))

(declare-fun b!1859653 () Bool)

(assert (=> b!1859653 (= e!1187613 (= (toValue!9 thiss!3128 x!372876) (toValue!9 thiss!3128 x!372878)))))

(assert (= (and bs!410961 (not res!832826)) b!1859653))

(assert (=> bs!410958 m!2283159))

(assert (=> bs!410958 m!2283167))

(assert (=> bs!410958 s!221636))

(assert (=> m!2283155 s!221632))

(declare-fun bs!410962 () Bool)

(assert (= bs!410962 (and m!2283175 m!2283155)))

(assert (=> bs!410962 s!221636))

(declare-fun bs!410963 () Bool)

(assert (= bs!410963 (and m!2283175 m!2283173)))

(assert (=> bs!410963 s!221626))

(declare-fun bs!410964 () Bool)

(assert (= bs!410964 (and m!2283175 m!2283167)))

(assert (=> bs!410964 s!221620))

(assert (=> m!2283175 s!221620))

(assert (=> bs!410962 s!221630))

(assert (=> bs!410963 s!221622))

(assert (=> bs!410964 s!221620))

(assert (=> m!2283175 s!221620))

(declare-fun bs!410965 () Bool)

(assert (= bs!410965 (and m!2283159 m!2283155)))

(assert (=> bs!410965 s!221632))

(declare-fun bs!410966 () Bool)

(assert (= bs!410966 (and m!2283159 m!2283173)))

(assert (=> bs!410966 s!221628))

(declare-fun bs!410967 () Bool)

(assert (= bs!410967 (and m!2283159 m!2283167 m!2283175)))

(assert (=> bs!410967 s!221630))

(assert (=> m!2283159 s!221632))

(assert (=> bs!410965 s!221632))

(assert (=> bs!410966 s!221634))

(assert (=> bs!410967 s!221636))

(assert (=> m!2283159 s!221632))

(declare-fun bs!410968 () Bool)

(declare-fun s!221638 () Bool)

(assert (= bs!410968 (and neg-inst!1150 s!221638)))

(declare-fun res!832827 () Bool)

(declare-fun e!1187614 () Bool)

(assert (=> bs!410968 (=> res!832827 e!1187614)))

(assert (=> bs!410968 (= res!832827 (not (= (list!8368 x!372876) (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))))))))

(assert (=> bs!410968 (=> true e!1187614)))

(declare-fun b!1859654 () Bool)

(assert (=> b!1859654 (= e!1187614 (= (toValue!9 thiss!3128 x!372876) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876)))))))

(assert (= (and bs!410968 (not res!832827)) b!1859654))

(declare-fun bs!410969 () Bool)

(assert (= bs!410969 (and m!2283163 m!2283155 m!2283159)))

(assert (=> bs!410969 m!2283159))

(assert (=> bs!410969 m!2283163))

(assert (=> bs!410969 s!221638))

(declare-fun bs!410970 () Bool)

(declare-fun s!221640 () Bool)

(assert (= bs!410970 (and neg-inst!1150 s!221640)))

(declare-fun res!832828 () Bool)

(declare-fun e!1187615 () Bool)

(assert (=> bs!410970 (=> res!832828 e!1187615)))

(assert (=> bs!410970 (= res!832828 (not (= (list!8368 x!372877) (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))))))))

(assert (=> bs!410970 (=> true e!1187615)))

(declare-fun b!1859655 () Bool)

(assert (=> b!1859655 (= e!1187615 (= (toValue!9 thiss!3128 x!372877) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876)))))))

(assert (= (and bs!410970 (not res!832828)) b!1859655))

(declare-fun bs!410971 () Bool)

(assert (= bs!410971 (and m!2283163 m!2283173)))

(assert (=> bs!410971 m!2283165))

(assert (=> bs!410971 m!2283163))

(assert (=> bs!410971 s!221640))

(declare-fun bs!410972 () Bool)

(declare-fun s!221642 () Bool)

(assert (= bs!410972 (and neg-inst!1150 s!221642)))

(declare-fun res!832829 () Bool)

(declare-fun e!1187616 () Bool)

(assert (=> bs!410972 (=> res!832829 e!1187616)))

(assert (=> bs!410972 (= res!832829 (not (= (list!8368 x!372878) (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))))))))

(assert (=> bs!410972 (=> true e!1187616)))

(declare-fun b!1859656 () Bool)

(assert (=> b!1859656 (= e!1187616 (= (toValue!9 thiss!3128 x!372878) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876)))))))

(assert (= (and bs!410972 (not res!832829)) b!1859656))

(declare-fun bs!410973 () Bool)

(assert (= bs!410973 (and m!2283163 m!2283167 m!2283175)))

(assert (=> bs!410973 m!2283167))

(assert (=> bs!410973 m!2283163))

(assert (=> bs!410973 s!221642))

(declare-fun bs!410974 () Bool)

(declare-fun s!221644 () Bool)

(assert (= bs!410974 (and neg-inst!1150 s!221644)))

(declare-fun res!832830 () Bool)

(declare-fun e!1187617 () Bool)

(assert (=> bs!410974 (=> res!832830 e!1187617)))

(assert (=> bs!410974 (= res!832830 (not (= (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))))))))

(assert (=> bs!410974 (=> true e!1187617)))

(declare-fun b!1859657 () Bool)

(assert (=> b!1859657 (= e!1187617 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876)))))))

(assert (= (and bs!410974 (not res!832830)) b!1859657))

(assert (=> m!2283163 s!221644))

(declare-fun bs!410975 () Bool)

(declare-fun s!221646 () Bool)

(assert (= bs!410975 (and neg-inst!1150 s!221646)))

(declare-fun res!832831 () Bool)

(declare-fun e!1187618 () Bool)

(assert (=> bs!410975 (=> res!832831 e!1187618)))

(assert (=> bs!410975 (= res!832831 (not (= (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (list!8368 x!372876))))))

(assert (=> bs!410975 (=> true e!1187618)))

(declare-fun b!1859658 () Bool)

(assert (=> b!1859658 (= e!1187618 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (toValue!9 thiss!3128 x!372876)))))

(assert (= (and bs!410975 (not res!832831)) b!1859658))

(assert (=> bs!410969 m!2283163))

(assert (=> bs!410969 m!2283159))

(assert (=> bs!410969 s!221646))

(declare-fun bs!410976 () Bool)

(declare-fun s!221648 () Bool)

(assert (= bs!410976 (and neg-inst!1150 s!221648)))

(declare-fun res!832832 () Bool)

(declare-fun e!1187619 () Bool)

(assert (=> bs!410976 (=> res!832832 e!1187619)))

(assert (=> bs!410976 (= res!832832 (not (= (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (list!8368 x!372877))))))

(assert (=> bs!410976 (=> true e!1187619)))

(declare-fun b!1859659 () Bool)

(assert (=> b!1859659 (= e!1187619 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (toValue!9 thiss!3128 x!372877)))))

(assert (= (and bs!410976 (not res!832832)) b!1859659))

(assert (=> bs!410971 m!2283163))

(assert (=> bs!410971 m!2283165))

(assert (=> bs!410971 s!221648))

(declare-fun bs!410977 () Bool)

(declare-fun s!221650 () Bool)

(assert (= bs!410977 (and neg-inst!1150 s!221650)))

(declare-fun res!832833 () Bool)

(declare-fun e!1187620 () Bool)

(assert (=> bs!410977 (=> res!832833 e!1187620)))

(assert (=> bs!410977 (= res!832833 (not (= (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (list!8368 x!372878))))))

(assert (=> bs!410977 (=> true e!1187620)))

(declare-fun b!1859660 () Bool)

(assert (=> b!1859660 (= e!1187620 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (toValue!9 thiss!3128 x!372878)))))

(assert (= (and bs!410977 (not res!832833)) b!1859660))

(assert (=> bs!410973 m!2283163))

(assert (=> bs!410973 m!2283167))

(assert (=> bs!410973 s!221650))

(assert (=> m!2283163 s!221644))

(declare-fun bs!410978 () Bool)

(assert (= bs!410978 (and m!2283165 m!2283163)))

(assert (=> bs!410978 s!221648))

(declare-fun bs!410979 () Bool)

(assert (= bs!410979 (and m!2283165 m!2283173)))

(assert (=> bs!410979 s!221624))

(declare-fun bs!410980 () Bool)

(assert (= bs!410980 (and m!2283165 m!2283167 m!2283175)))

(assert (=> bs!410980 s!221622))

(assert (=> m!2283165 s!221624))

(declare-fun bs!410981 () Bool)

(assert (= bs!410981 (and m!2283165 m!2283155 m!2283159)))

(assert (=> bs!410981 s!221634))

(assert (=> bs!410981 s!221628))

(assert (=> bs!410980 s!221626))

(assert (=> m!2283165 s!221624))

(assert (=> bs!410978 s!221640))

(assert (=> bs!410979 s!221624))

(declare-fun bs!410982 () Bool)

(assert (= bs!410982 (and neg-inst!1150 b!1859631)))

(assert (=> bs!410982 (= true inst!1151)))

(declare-fun res!832816 () Bool)

(declare-fun e!1187600 () Bool)

(assert (=> start!185726 (=> res!832816 e!1187600)))

(declare-fun lambda!73451 () Int)

(declare-fun Forall!969 (Int) Bool)

(assert (=> start!185726 (= res!832816 (not (Forall!969 lambda!73451)))))

(assert (=> start!185726 (= (Forall!969 lambda!73451) inst!1150)))

(assert (=> start!185726 (not e!1187600)))

(assert (=> start!185726 true))

(declare-fun e!1187599 () Bool)

(assert (=> b!1859631 (= e!1187600 e!1187599)))

(declare-fun res!832815 () Bool)

(assert (=> b!1859631 (=> res!832815 e!1187599)))

(declare-fun lambda!73454 () Int)

(declare-fun Forall2!598 (Int) Bool)

(assert (=> b!1859631 (= res!832815 (not (Forall2!598 lambda!73454)))))

(assert (=> b!1859631 (= (Forall2!598 lambda!73454) inst!1151)))

(declare-fun lambda!73452 () Int)

(declare-fun lambda!73453 () Int)

(declare-fun semiInverseModEq!1499 (Int Int) Bool)

(assert (=> b!1859631 (= (semiInverseModEq!1499 lambda!73452 lambda!73453) (Forall!969 lambda!73451))))

(declare-fun b!1859632 () Bool)

(declare-datatypes ((TokenValueInjection!7214 0))(
  ( (TokenValueInjection!7215 (toValue!5268 Int) (toChars!5127 Int)) )
))
(declare-fun inv!27085 (TokenValueInjection!7214) Bool)

(assert (=> b!1859632 (= e!1187599 (inv!27085 (TokenValueInjection!7215 lambda!73453 lambda!73452)))))

(declare-fun equivClasses!1430 (Int Int) Bool)

(assert (=> b!1859632 (= (equivClasses!1430 lambda!73452 lambda!73453) (Forall2!598 lambda!73454))))

(assert (= neg-inst!1151 inst!1150))

(assert (= (and start!185726 (not res!832816)) b!1859631))

(assert (= neg-inst!1150 inst!1151))

(assert (= (and b!1859631 (not res!832815)) b!1859632))

(declare-fun m!2283181 () Bool)

(assert (=> start!185726 m!2283181))

(assert (=> start!185726 m!2283181))

(declare-fun m!2283183 () Bool)

(assert (=> b!1859631 m!2283183))

(assert (=> b!1859631 m!2283183))

(declare-fun m!2283185 () Bool)

(assert (=> b!1859631 m!2283185))

(assert (=> b!1859631 m!2283181))

(declare-fun m!2283187 () Bool)

(assert (=> b!1859632 m!2283187))

(declare-fun m!2283189 () Bool)

(assert (=> b!1859632 m!2283189))

(assert (=> b!1859632 m!2283183))

(push 1)

(assert (not bs!410977))

(assert (not bs!410950))

(assert (not bs!410957))

(assert (not bs!410960))

(assert (not bs!410970))

(assert (not b!1859651))

(assert (not b!1859642))

(assert (not bs!410955))

(assert (not start!185726))

(assert (not bs!410953))

(assert (not bs!410961))

(assert (not bs!410975))

(assert (not b!1859657))

(assert (not b!1859641))

(assert (not bs!410951))

(assert (not b!1859652))

(assert (not b!1859647))

(assert (not bs!410976))

(assert (not b!1859648))

(assert (not bs!410972))

(assert (not bs!410974))

(assert (not b!1859632))

(assert (not b!1859644))

(assert (not b!1859649))

(assert (not b!1859656))

(assert (not b!1859658))

(assert (not b!1859659))

(assert (not bs!410948))

(assert (not b!1859650))

(assert (not b!1859643))

(assert (not b!1859645))

(assert (not b!1859655))

(assert (not bs!410968))

(assert (not b!1859631))

(assert (not bs!410954))

(assert (not b!1859660))

(assert (not b!1859654))

(assert (not b!1859646))

(assert (not b!1859653))

(assert (not bs!410959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!411020 () Bool)

(assert (= bs!411020 (and m!2283167 b!1859645)))

(assert (=> bs!411020 m!2283175))

(assert (=> bs!411020 m!2283175))

(declare-fun bs!411021 () Bool)

(assert (= bs!411021 (and m!2283173 m!2283167 b!1859646)))

(assert (=> bs!411021 m!2283175))

(assert (=> bs!411021 m!2283173))

(declare-fun bs!411022 () Bool)

(assert (= bs!411022 (and m!2283173 b!1859647)))

(assert (=> bs!411022 m!2283173))

(assert (=> bs!411022 m!2283173))

(declare-fun bs!411023 () Bool)

(assert (= bs!411023 (and m!2283173 m!2283167 b!1859648)))

(assert (=> bs!411023 m!2283173))

(assert (=> bs!411023 m!2283175))

(declare-fun bs!411024 () Bool)

(assert (= bs!411024 (and m!2283155 m!2283173 b!1859649)))

(assert (=> bs!411024 m!2283173))

(assert (=> bs!411024 m!2283155))

(declare-fun bs!411025 () Bool)

(assert (= bs!411025 (and m!2283155 m!2283167 b!1859650)))

(assert (=> bs!411025 m!2283175))

(assert (=> bs!411025 m!2283155))

(declare-fun bs!411026 () Bool)

(assert (= bs!411026 (and m!2283155 b!1859651)))

(assert (=> bs!411026 m!2283155))

(assert (=> bs!411026 m!2283155))

(declare-fun bs!411027 () Bool)

(assert (= bs!411027 (and m!2283155 m!2283173 b!1859652)))

(assert (=> bs!411027 m!2283155))

(assert (=> bs!411027 m!2283173))

(declare-fun bs!411028 () Bool)

(assert (= bs!411028 (and m!2283155 m!2283167 b!1859653)))

(assert (=> bs!411028 m!2283155))

(assert (=> bs!411028 m!2283175))

(declare-fun bs!411029 () Bool)

(assert (= bs!411029 (and m!2283163 m!2283155 m!2283159 b!1859654)))

(assert (=> bs!411029 m!2283155))

(declare-fun m!2283229 () Bool)

(assert (=> bs!411029 m!2283229))

(declare-fun bs!411030 () Bool)

(assert (= bs!411030 (and m!2283163 m!2283173 b!1859655)))

(assert (=> bs!411030 m!2283173))

(assert (=> bs!411030 m!2283229))

(declare-fun bs!411031 () Bool)

(assert (= bs!411031 (and m!2283163 m!2283167 m!2283175 b!1859656)))

(assert (=> bs!411031 m!2283175))

(assert (=> bs!411031 m!2283229))

(declare-fun bs!411032 () Bool)

(assert (= bs!411032 (and m!2283163 b!1859657)))

(assert (=> bs!411032 m!2283229))

(assert (=> bs!411032 m!2283229))

(declare-fun bs!411033 () Bool)

(assert (= bs!411033 (and m!2283163 m!2283155 m!2283159 b!1859658)))

(assert (=> bs!411033 m!2283229))

(assert (=> bs!411033 m!2283155))

(declare-fun bs!411034 () Bool)

(assert (= bs!411034 (and m!2283163 m!2283173 b!1859659)))

(assert (=> bs!411034 m!2283229))

(assert (=> bs!411034 m!2283173))

(declare-fun bs!411035 () Bool)

(assert (= bs!411035 (and m!2283163 m!2283167 m!2283175 b!1859660)))

(assert (=> bs!411035 m!2283229))

(assert (=> bs!411035 m!2283175))

(push 1)

(assert (not bs!410977))

(assert (not bs!410950))

(assert (not bs!410957))

(assert (not bs!410960))

(assert (not bs!410970))

(assert (not b!1859651))

(assert (not b!1859642))

(assert (not bs!410955))

(assert (not start!185726))

(assert (not bs!410953))

(assert (not bs!410961))

(assert (not bs!410975))

(assert (not b!1859657))

(assert (not b!1859641))

(assert (not bs!410951))

(assert (not b!1859652))

(assert (not b!1859647))

(assert (not bs!410976))

(assert (not b!1859648))

(assert (not bs!410972))

(assert (not bs!410974))

(assert (not b!1859632))

(assert (not b!1859644))

(assert (not b!1859649))

(assert (not b!1859656))

(assert (not b!1859658))

(assert (not b!1859659))

(assert (not bs!410948))

(assert (not b!1859650))

(assert (not b!1859643))

(assert (not b!1859645))

(assert (not b!1859655))

(assert (not bs!410968))

(assert (not b!1859631))

(assert (not bs!410954))

(assert (not b!1859660))

(assert (not b!1859654))

(assert (not b!1859646))

(assert (not b!1859653))

(assert (not bs!410959))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!567430 () Bool)

(declare-fun list!8370 (Conc!6819) List!20702)

(assert (=> d!567430 (= (list!8368 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (list!8370 (c!302833 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876)))))))

(declare-fun bs!411052 () Bool)

(assert (= bs!411052 d!567430))

(declare-fun m!2283233 () Bool)

(assert (=> bs!411052 m!2283233))

(assert (=> bs!410976 d!567430))

(declare-fun d!567432 () Bool)

(assert (=> d!567432 (= (list!8368 x!372877) (list!8370 (c!302833 x!372877)))))

(declare-fun bs!411053 () Bool)

(assert (= bs!411053 d!567432))

(declare-fun m!2283235 () Bool)

(assert (=> bs!411053 m!2283235))

(assert (=> bs!410976 d!567432))

(declare-fun d!567434 () Bool)

(assert (=> d!567434 (= (list!8368 x!372878) (list!8370 (c!302833 x!372878)))))

(declare-fun bs!411054 () Bool)

(assert (= bs!411054 d!567434))

(declare-fun m!2283237 () Bool)

(assert (=> bs!411054 m!2283237))

(assert (=> bs!410957 d!567434))

(declare-fun d!567436 () Bool)

(assert (=> d!567436 (= (list!8368 x!372876) (list!8370 (c!302833 x!372876)))))

(declare-fun bs!411055 () Bool)

(assert (= bs!411055 d!567436))

(declare-fun m!2283239 () Bool)

(assert (=> bs!411055 m!2283239))

(assert (=> bs!410957 d!567436))

(declare-fun d!567438 () Bool)

(declare-fun efficientList!242 (BalanceConc!13568) List!20702)

(assert (=> d!567438 (= (toValue!9 thiss!3128 x!372876) (WhitespaceValue!7606 (efficientList!242 x!372876)))))

(declare-fun bs!411056 () Bool)

(assert (= bs!411056 d!567438))

(declare-fun m!2283241 () Bool)

(assert (=> bs!411056 m!2283241))

(assert (=> b!1859653 d!567438))

(declare-fun d!567440 () Bool)

(assert (=> d!567440 (= (toValue!9 thiss!3128 x!372878) (WhitespaceValue!7606 (efficientList!242 x!372878)))))

(declare-fun bs!411057 () Bool)

(assert (= bs!411057 d!567440))

(declare-fun m!2283243 () Bool)

(assert (=> bs!411057 m!2283243))

(assert (=> b!1859653 d!567440))

(assert (=> bs!410972 d!567434))

(assert (=> bs!410972 d!567430))

(assert (=> bs!410953 d!567432))

(declare-fun d!567442 () Bool)

(assert (=> d!567442 (= (toValue!9 thiss!3128 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876))) (WhitespaceValue!7606 (efficientList!242 (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876)))))))

(declare-fun bs!411058 () Bool)

(assert (= bs!411058 d!567442))

(assert (=> bs!411058 m!2283157))

(declare-fun m!2283245 () Bool)

(assert (=> bs!411058 m!2283245))

(assert (=> b!1859659 d!567442))

(declare-fun d!567444 () Bool)

(assert (=> d!567444 (= (toValue!9 thiss!3128 x!372877) (WhitespaceValue!7606 (efficientList!242 x!372877)))))

(declare-fun bs!411059 () Bool)

(assert (= bs!411059 d!567444))

(declare-fun m!2283247 () Bool)

(assert (=> bs!411059 m!2283247))

(assert (=> b!1859659 d!567444))

(assert (=> b!1859650 d!567440))

(assert (=> b!1859650 d!567438))

(assert (=> bs!410975 d!567430))

(assert (=> bs!410975 d!567436))

(assert (=> b!1859652 d!567438))

(assert (=> b!1859652 d!567444))

(assert (=> bs!410970 d!567432))

(assert (=> bs!410970 d!567430))

(assert (=> bs!410951 d!567434))

(assert (=> bs!410951 d!567432))

(assert (=> b!1859649 d!567444))

(assert (=> b!1859649 d!567438))

(assert (=> b!1859658 d!567442))

(assert (=> b!1859658 d!567438))

(assert (=> bs!410961 d!567436))

(assert (=> bs!410961 d!567434))

(assert (=> b!1859655 d!567444))

(assert (=> b!1859655 d!567442))

(assert (=> b!1859646 d!567440))

(assert (=> b!1859646 d!567444))

(assert (=> bs!410968 d!567436))

(assert (=> bs!410968 d!567430))

(assert (=> bs!410974 d!567430))

(assert (=> b!1859651 d!567438))

(assert (=> b!1859631 d!567434))

(declare-fun d!567446 () Bool)

(declare-fun isBalanced!2126 (Conc!6819) Bool)

(assert (=> d!567446 (= (inv!27084 x!372878) (isBalanced!2126 (c!302833 x!372878)))))

(declare-fun bs!411060 () Bool)

(assert (= bs!411060 d!567446))

(declare-fun m!2283249 () Bool)

(assert (=> bs!411060 m!2283249))

(assert (=> b!1859631 d!567446))

(declare-fun d!567448 () Bool)

(assert (=> d!567448 (= (inv!27084 x!372877) (isBalanced!2126 (c!302833 x!372877)))))

(declare-fun bs!411061 () Bool)

(assert (= bs!411061 d!567448))

(declare-fun m!2283251 () Bool)

(assert (=> bs!411061 m!2283251))

(assert (=> b!1859631 d!567448))

(declare-fun d!567450 () Bool)

(declare-fun choose!11699 (Int) Bool)

(assert (=> d!567450 (= (Forall2!598 lambda!73454) (choose!11699 lambda!73454))))

(declare-fun bs!411062 () Bool)

(assert (= bs!411062 d!567450))

(declare-fun m!2283253 () Bool)

(assert (=> bs!411062 m!2283253))

(assert (=> b!1859631 d!567450))

(assert (=> b!1859631 d!567432))

(declare-fun bs!411063 () Bool)

(declare-fun d!567452 () Bool)

(assert (= bs!411063 (and d!567452 start!185726)))

(declare-fun lambda!73485 () Int)

(assert (=> bs!411063 (not (= lambda!73485 lambda!73451))))

(assert (=> d!567452 true))

(declare-fun order!13249 () Int)

(declare-fun order!13251 () Int)

(declare-fun dynLambda!10206 (Int Int) Int)

(declare-fun dynLambda!10207 (Int Int) Int)

(assert (=> d!567452 (< (dynLambda!10206 order!13249 lambda!73452) (dynLambda!10207 order!13251 lambda!73485))))

(assert (=> d!567452 true))

(declare-fun order!13253 () Int)

(declare-fun dynLambda!10208 (Int Int) Int)

(assert (=> d!567452 (< (dynLambda!10208 order!13253 lambda!73453) (dynLambda!10207 order!13251 lambda!73485))))

(assert (=> d!567452 (= (semiInverseModEq!1499 lambda!73452 lambda!73453) (Forall!969 lambda!73485))))

(declare-fun bs!411064 () Bool)

(assert (= bs!411064 d!567452))

(declare-fun m!2283255 () Bool)

(assert (=> bs!411064 m!2283255))

(assert (=> b!1859631 d!567452))

(declare-fun d!567454 () Bool)

(declare-fun choose!11700 (Int) Bool)

(assert (=> d!567454 (= (Forall!969 lambda!73451) (choose!11700 lambda!73451))))

(declare-fun bs!411065 () Bool)

(assert (= bs!411065 d!567454))

(declare-fun m!2283257 () Bool)

(assert (=> bs!411065 m!2283257))

(assert (=> b!1859631 d!567454))

(assert (=> bs!410950 d!567434))

(assert (=> b!1859648 d!567444))

(assert (=> b!1859648 d!567440))

(assert (=> b!1859657 d!567442))

(declare-fun d!567456 () Bool)

(declare-fun res!832877 () Bool)

(declare-fun e!1187665 () Bool)

(assert (=> d!567456 (=> (not res!832877) (not e!1187665))))

(assert (=> d!567456 (= res!832877 (semiInverseModEq!1499 (toChars!5127 (TokenValueInjection!7215 lambda!73453 lambda!73452)) (toValue!5268 (TokenValueInjection!7215 lambda!73453 lambda!73452))))))

(assert (=> d!567456 (= (inv!27085 (TokenValueInjection!7215 lambda!73453 lambda!73452)) e!1187665)))

(declare-fun b!1859717 () Bool)

(assert (=> b!1859717 (= e!1187665 (equivClasses!1430 (toChars!5127 (TokenValueInjection!7215 lambda!73453 lambda!73452)) (toValue!5268 (TokenValueInjection!7215 lambda!73453 lambda!73452))))))

(assert (= (and d!567456 res!832877) b!1859717))

(declare-fun m!2283259 () Bool)

(assert (=> d!567456 m!2283259))

(declare-fun m!2283261 () Bool)

(assert (=> b!1859717 m!2283261))

(assert (=> b!1859632 d!567456))

(declare-fun bs!411066 () Bool)

(declare-fun d!567458 () Bool)

(assert (= bs!411066 (and d!567458 b!1859631)))

(declare-fun lambda!73488 () Int)

(assert (=> bs!411066 (not (= lambda!73488 lambda!73454))))

(assert (=> d!567458 true))

(declare-fun order!13255 () Int)

(declare-fun dynLambda!10209 (Int Int) Int)

(assert (=> d!567458 (< (dynLambda!10208 order!13253 lambda!73453) (dynLambda!10209 order!13255 lambda!73488))))

(assert (=> d!567458 (= (equivClasses!1430 lambda!73452 lambda!73453) (Forall2!598 lambda!73488))))

(declare-fun bs!411067 () Bool)

(assert (= bs!411067 d!567458))

(declare-fun m!2283263 () Bool)

(assert (=> bs!411067 m!2283263))

(assert (=> b!1859632 d!567458))

(assert (=> b!1859632 d!567450))

(assert (=> bs!410960 d!567436))

(assert (=> bs!410960 d!567432))

(assert (=> b!1859654 d!567438))

(assert (=> b!1859654 d!567442))

(assert (=> b!1859645 d!567440))

(assert (=> bs!410955 d!567432))

(assert (=> bs!410955 d!567436))

(declare-fun d!567460 () Bool)

(declare-fun c!302838 () Bool)

(assert (=> d!567460 (= c!302838 (is-WhitespaceValue!7606 (toValue!9 thiss!3128 x!372876)))))

(declare-fun e!1187670 () BalanceConc!13568)

(assert (=> d!567460 (= (toCharacters!2 thiss!3128 (toValue!9 thiss!3128 x!372876)) e!1187670)))

(declare-fun b!1859726 () Bool)

(declare-fun seqFromList!2621 (List!20702) BalanceConc!13568)

(assert (=> b!1859726 (= e!1187670 (seqFromList!2621 (value!115746 (toValue!9 thiss!3128 x!372876))))))

(declare-fun b!1859727 () Bool)

(assert (=> b!1859727 (= e!1187670 (BalanceConc!13569 Empty!6819))))

(assert (= (and d!567460 c!302838) b!1859726))

(assert (= (and d!567460 (not c!302838)) b!1859727))

(declare-fun m!2283265 () Bool)

(assert (=> b!1859726 m!2283265))

(assert (=> start!185726 d!567460))

(assert (=> start!185726 d!567438))

(assert (=> start!185726 d!567436))

(assert (=> start!185726 d!567430))

(declare-fun d!567462 () Bool)

(assert (=> d!567462 (= (inv!27084 x!372876) (isBalanced!2126 (c!302833 x!372876)))))

(declare-fun bs!411068 () Bool)

(assert (= bs!411068 d!567462))

(declare-fun m!2283267 () Bool)

(assert (=> bs!411068 m!2283267))

(assert (=> start!185726 d!567462))

(assert (=> start!185726 d!567454))

(assert (=> b!1859656 d!567440))

(assert (=> b!1859656 d!567442))

(assert (=> b!1859647 d!567444))

(declare-fun d!567464 () Bool)

(declare-fun c!302841 () Bool)

(assert (=> d!567464 (= c!302841 (is-Node!6819 (c!302833 x!372876)))))

(declare-fun e!1187675 () Bool)

(assert (=> d!567464 (= (inv!27083 (c!302833 x!372876)) e!1187675)))

(declare-fun b!1859734 () Bool)

(declare-fun inv!27089 (Conc!6819) Bool)

(assert (=> b!1859734 (= e!1187675 (inv!27089 (c!302833 x!372876)))))

(declare-fun b!1859735 () Bool)

(declare-fun e!1187676 () Bool)

(assert (=> b!1859735 (= e!1187675 e!1187676)))

(declare-fun res!832882 () Bool)

(assert (=> b!1859735 (= res!832882 (not (is-Leaf!9997 (c!302833 x!372876))))))

(assert (=> b!1859735 (=> res!832882 e!1187676)))

(declare-fun b!1859736 () Bool)

(declare-fun inv!27090 (Conc!6819) Bool)

(assert (=> b!1859736 (= e!1187676 (inv!27090 (c!302833 x!372876)))))

(assert (= (and d!567464 c!302841) b!1859734))

(assert (= (and d!567464 (not c!302841)) b!1859735))

(assert (= (and b!1859735 (not res!832882)) b!1859736))

(declare-fun m!2283269 () Bool)

(assert (=> b!1859734 m!2283269))

(declare-fun m!2283271 () Bool)

(assert (=> b!1859736 m!2283271))

(assert (=> b!1859641 d!567464))

(assert (=> bs!410977 d!567430))

(assert (=> bs!410977 d!567434))

(assert (=> b!1859642 d!567444))

(assert (=> b!1859642 d!567440))

(assert (=> bs!410959 d!567436))

(assert (=> bs!410948 d!567430))

(assert (=> bs!410948 d!567460))

(assert (=> bs!410948 d!567438))

(assert (=> bs!410948 d!567436))

(assert (=> bs!410954 d!567432))

(assert (=> bs!410954 d!567434))

(declare-fun d!567468 () Bool)

(declare-fun c!302842 () Bool)

(assert (=> d!567468 (= c!302842 (is-Node!6819 (c!302833 x!372877)))))

(declare-fun e!1187677 () Bool)

(assert (=> d!567468 (= (inv!27083 (c!302833 x!372877)) e!1187677)))

(declare-fun b!1859737 () Bool)

(assert (=> b!1859737 (= e!1187677 (inv!27089 (c!302833 x!372877)))))

(declare-fun b!1859738 () Bool)

(declare-fun e!1187678 () Bool)

(assert (=> b!1859738 (= e!1187677 e!1187678)))

(declare-fun res!832883 () Bool)

(assert (=> b!1859738 (= res!832883 (not (is-Leaf!9997 (c!302833 x!372877))))))

(assert (=> b!1859738 (=> res!832883 e!1187678)))

(declare-fun b!1859739 () Bool)

(assert (=> b!1859739 (= e!1187678 (inv!27090 (c!302833 x!372877)))))

(assert (= (and d!567468 c!302842) b!1859737))

(assert (= (and d!567468 (not c!302842)) b!1859738))

(assert (= (and b!1859738 (not res!832883)) b!1859739))

(declare-fun m!2283273 () Bool)

(assert (=> b!1859737 m!2283273))

(declare-fun m!2283275 () Bool)

(assert (=> b!1859739 m!2283275))

(assert (=> b!1859643 d!567468))

(declare-fun d!567470 () Bool)

(declare-fun c!302843 () Bool)

(assert (=> d!567470 (= c!302843 (is-Node!6819 (c!302833 x!372878)))))

(declare-fun e!1187679 () Bool)

(assert (=> d!567470 (= (inv!27083 (c!302833 x!372878)) e!1187679)))

(declare-fun b!1859740 () Bool)

(assert (=> b!1859740 (= e!1187679 (inv!27089 (c!302833 x!372878)))))

(declare-fun b!1859741 () Bool)

(declare-fun e!1187680 () Bool)

(assert (=> b!1859741 (= e!1187679 e!1187680)))

(declare-fun res!832884 () Bool)

(assert (=> b!1859741 (= res!832884 (not (is-Leaf!9997 (c!302833 x!372878))))))

(assert (=> b!1859741 (=> res!832884 e!1187680)))

(declare-fun b!1859742 () Bool)

(assert (=> b!1859742 (= e!1187680 (inv!27090 (c!302833 x!372878)))))

(assert (= (and d!567470 c!302843) b!1859740))

(assert (= (and d!567470 (not c!302843)) b!1859741))

(assert (= (and b!1859741 (not res!832884)) b!1859742))

(declare-fun m!2283277 () Bool)

(assert (=> b!1859740 m!2283277))

(declare-fun m!2283279 () Bool)

(assert (=> b!1859742 m!2283279))

(assert (=> b!1859644 d!567470))

(assert (=> b!1859660 d!567442))

(assert (=> b!1859660 d!567440))

(declare-fun tp!530040 () Bool)

(declare-fun e!1187685 () Bool)

(declare-fun b!1859749 () Bool)

(declare-fun tp!530039 () Bool)

(assert (=> b!1859749 (= e!1187685 (and (inv!27083 (left!16560 (c!302833 x!372876))) tp!530039 (inv!27083 (right!16890 (c!302833 x!372876))) tp!530040))))

(declare-fun b!1859750 () Bool)

(declare-fun inv!27091 (IArray!13643) Bool)

(assert (=> b!1859750 (= e!1187685 (inv!27091 (xs!9695 (c!302833 x!372876))))))

(assert (=> b!1859641 (= tp!530023 (and (inv!27083 (c!302833 x!372876)) e!1187685))))

(assert (= (and b!1859641 (is-Node!6819 (c!302833 x!372876))) b!1859749))

(assert (= (and b!1859641 (is-Leaf!9997 (c!302833 x!372876))) b!1859750))

(declare-fun m!2283281 () Bool)

(assert (=> b!1859749 m!2283281))

(declare-fun m!2283283 () Bool)

(assert (=> b!1859749 m!2283283))

(declare-fun m!2283285 () Bool)

(assert (=> b!1859750 m!2283285))

(assert (=> b!1859641 m!2283153))

(declare-fun b!1859751 () Bool)

(declare-fun tp!530042 () Bool)

(declare-fun tp!530041 () Bool)

(declare-fun e!1187687 () Bool)

(assert (=> b!1859751 (= e!1187687 (and (inv!27083 (left!16560 (c!302833 x!372877))) tp!530041 (inv!27083 (right!16890 (c!302833 x!372877))) tp!530042))))

(declare-fun b!1859752 () Bool)

(assert (=> b!1859752 (= e!1187687 (inv!27091 (xs!9695 (c!302833 x!372877))))))

(assert (=> b!1859643 (= tp!530025 (and (inv!27083 (c!302833 x!372877)) e!1187687))))

(assert (= (and b!1859643 (is-Node!6819 (c!302833 x!372877))) b!1859751))

(assert (= (and b!1859643 (is-Leaf!9997 (c!302833 x!372877))) b!1859752))

(declare-fun m!2283287 () Bool)

(assert (=> b!1859751 m!2283287))

(declare-fun m!2283289 () Bool)

(assert (=> b!1859751 m!2283289))

(declare-fun m!2283291 () Bool)

(assert (=> b!1859752 m!2283291))

(assert (=> b!1859643 m!2283177))

(declare-fun b!1859753 () Bool)

(declare-fun tp!530043 () Bool)

(declare-fun tp!530044 () Bool)

(declare-fun e!1187689 () Bool)

(assert (=> b!1859753 (= e!1187689 (and (inv!27083 (left!16560 (c!302833 x!372878))) tp!530043 (inv!27083 (right!16890 (c!302833 x!372878))) tp!530044))))

(declare-fun b!1859754 () Bool)

(assert (=> b!1859754 (= e!1187689 (inv!27091 (xs!9695 (c!302833 x!372878))))))

(assert (=> b!1859644 (= tp!530024 (and (inv!27083 (c!302833 x!372878)) e!1187689))))

(assert (= (and b!1859644 (is-Node!6819 (c!302833 x!372878))) b!1859753))

(assert (= (and b!1859644 (is-Leaf!9997 (c!302833 x!372878))) b!1859754))

(declare-fun m!2283293 () Bool)

(assert (=> b!1859753 m!2283293))

(declare-fun m!2283295 () Bool)

(assert (=> b!1859753 m!2283295))

(declare-fun m!2283297 () Bool)

(assert (=> b!1859754 m!2283297))

(assert (=> b!1859644 m!2283179))

(push 1)

(assert (not b!1859717))

(assert (not b!1859726))

(assert (not b!1859752))

(assert (not d!567452))

(assert (not b!1859734))

(assert (not b!1859736))

(assert (not d!567440))

(assert (not d!567446))

(assert (not b!1859749))

(assert (not d!567432))

(assert (not d!567436))

(assert (not d!567430))

(assert (not b!1859753))

(assert (not d!567434))

(assert (not d!567456))

(assert (not b!1859754))

(assert (not b!1859644))

(assert (not b!1859740))

(assert (not d!567454))

(assert (not b!1859742))

(assert (not d!567462))

(assert (not b!1859643))

(assert (not d!567438))

(assert (not d!567442))

(assert (not d!567448))

(assert (not d!567450))

(assert (not b!1859737))

(assert (not b!1859751))

(assert (not d!567444))

(assert (not b!1859739))

(assert (not d!567458))

(assert (not b!1859750))

(assert (not b!1859641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

