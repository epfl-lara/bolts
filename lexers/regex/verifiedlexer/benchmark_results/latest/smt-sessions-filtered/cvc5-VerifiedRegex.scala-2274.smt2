; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!111044 () Bool)

(assert start!111044)

(assert (=> start!111044 true))

(declare-fun b!1258021 () Bool)

(assert (=> b!1258021 true))

(assert (=> b!1258021 true))

(declare-fun b!1258022 () Bool)

(assert (=> b!1258022 true))

(declare-fun b!1258033 () Bool)

(declare-fun e!800757 () Bool)

(declare-datatypes ((List!12648 0))(
  ( (Nil!12582) (Cons!12582 (h!17983 (_ BitVec 16)) (t!115858 List!12648)) )
))
(declare-datatypes ((IArray!8269 0))(
  ( (IArray!8270 (innerList!4192 List!12648)) )
))
(declare-datatypes ((Conc!4132 0))(
  ( (Node!4132 (left!10900 Conc!4132) (right!11230 Conc!4132) (csize!8494 Int) (cheight!4343 Int)) (Leaf!6407 (xs!6843 IArray!8269) (csize!8495 Int)) (Empty!4132) )
))
(declare-datatypes ((BalanceConc!8204 0))(
  ( (BalanceConc!8205 (c!208919 Conc!4132)) )
))
(declare-fun x!244745 () BalanceConc!8204)

(declare-fun tp!370713 () Bool)

(declare-fun inv!16971 (Conc!4132) Bool)

(assert (=> b!1258033 (= e!800757 (and (inv!16971 (c!208919 x!244745)) tp!370713))))

(declare-fun inst!940 () Bool)

(declare-datatypes ((KeywordValueInjection!138 0))(
  ( (KeywordValueInjection!139) )
))
(declare-fun thiss!4594 () KeywordValueInjection!138)

(declare-fun inv!16972 (BalanceConc!8204) Bool)

(declare-fun list!4699 (BalanceConc!8204) List!12648)

(declare-datatypes ((TokenValue!2248 0))(
  ( (FloatLiteralValue!4496 (text!16181 List!12648)) (TokenValueExt!2247 (__x!8215 Int)) (Broken!11240 (value!70808 List!12648)) (Object!2313) (End!2248) (Def!2248) (Underscore!2248) (Match!2248) (Else!2248) (Error!2248) (Case!2248) (If!2248) (Extends!2248) (Abstract!2248) (Class!2248) (Val!2248) (DelimiterValue!4496 (del!2308 List!12648)) (KeywordValue!2254 (value!70809 List!12648)) (CommentValue!4496 (value!70810 List!12648)) (WhitespaceValue!4496 (value!70811 List!12648)) (IndentationValue!2248 (value!70812 List!12648)) (String!15481) (Int32!2248) (Broken!11241 (value!70813 List!12648)) (Boolean!2249) (Unit!18872) (OperatorValue!2251 (op!2308 List!12648)) (IdentifierValue!4496 (value!70814 List!12648)) (IdentifierValue!4497 (value!70815 List!12648)) (WhitespaceValue!4497 (value!70816 List!12648)) (True!4496) (False!4496) (Broken!11242 (value!70817 List!12648)) (Broken!11243 (value!70818 List!12648)) (True!4497) (RightBrace!2248) (RightBracket!2248) (Colon!2248) (Null!2248) (Comma!2248) (LeftBracket!2248) (False!4497) (LeftBrace!2248) (ImaginaryLiteralValue!2248 (text!16182 List!12648)) (StringLiteralValue!6744 (value!70819 List!12648)) (EOFValue!2248 (value!70820 List!12648)) (IdentValue!2248 (value!70821 List!12648)) (DelimiterValue!4497 (value!70822 List!12648)) (DedentValue!2248 (value!70823 List!12648)) (NewLineValue!2248 (value!70824 List!12648)) (IntegerValue!6744 (value!70825 (_ BitVec 32)) (text!16183 List!12648)) (IntegerValue!6745 (value!70826 Int) (text!16184 List!12648)) (Times!2248) (Or!2248) (Equal!2248) (Minus!2248) (Broken!11244 (value!70827 List!12648)) (And!2248) (Div!2248) (LessEqual!2248) (Mod!2248) (Concat!5722) (Not!2248) (Plus!2248) (SpaceValue!2248 (value!70828 List!12648)) (IntegerValue!6746 (value!70829 Int) (text!16185 List!12648)) (StringLiteralValue!6745 (text!16186 List!12648)) (FloatLiteralValue!4497 (text!16187 List!12648)) (BytesLiteralValue!2248 (value!70830 List!12648)) (CommentValue!4497 (value!70831 List!12648)) (StringLiteralValue!6746 (value!70832 List!12648)) (ErrorTokenValue!2248 (msg!2309 List!12648)) )
))
(declare-fun toCharacters!20 (KeywordValueInjection!138 TokenValue!2248) BalanceConc!8204)

(declare-fun toValue!27 (KeywordValueInjection!138 BalanceConc!8204) TokenValue!2248)

(assert (=> start!111044 (= inst!940 (=> (and (inv!16972 x!244745) e!800757) (= (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (list!4699 x!244745))))))

(assert (= start!111044 b!1258033))

(declare-fun m!1416311 () Bool)

(assert (=> b!1258033 m!1416311))

(declare-fun m!1416313 () Bool)

(assert (=> start!111044 m!1416313))

(declare-fun m!1416315 () Bool)

(assert (=> start!111044 m!1416315))

(declare-fun m!1416317 () Bool)

(assert (=> start!111044 m!1416317))

(declare-fun m!1416319 () Bool)

(assert (=> start!111044 m!1416319))

(assert (=> start!111044 m!1416317))

(assert (=> start!111044 m!1416313))

(declare-fun m!1416321 () Bool)

(assert (=> start!111044 m!1416321))

(declare-fun res!556919 () Bool)

(declare-fun e!800759 () Bool)

(assert (=> b!1258022 (=> res!556919 e!800759)))

(declare-fun x!244746 () BalanceConc!8204)

(declare-fun x!244747 () BalanceConc!8204)

(assert (=> b!1258022 (= res!556919 (not (= (list!4699 x!244746) (list!4699 x!244747))))))

(declare-fun e!800758 () Bool)

(declare-fun inst!941 () Bool)

(declare-fun e!800760 () Bool)

(assert (=> b!1258022 (= inst!941 (=> (and (inv!16972 x!244746) e!800758 (inv!16972 x!244747) e!800760) e!800759))))

(declare-fun b!1258034 () Bool)

(assert (=> b!1258034 (= e!800759 (= (toValue!27 thiss!4594 x!244746) (toValue!27 thiss!4594 x!244747)))))

(declare-fun b!1258035 () Bool)

(declare-fun tp!370715 () Bool)

(assert (=> b!1258035 (= e!800758 (and (inv!16971 (c!208919 x!244746)) tp!370715))))

(declare-fun b!1258036 () Bool)

(declare-fun tp!370714 () Bool)

(assert (=> b!1258036 (= e!800760 (and (inv!16971 (c!208919 x!244747)) tp!370714))))

(assert (= (and b!1258022 (not res!556919)) b!1258034))

(assert (= b!1258022 b!1258035))

(assert (= b!1258022 b!1258036))

(declare-fun m!1416323 () Bool)

(assert (=> b!1258022 m!1416323))

(declare-fun m!1416325 () Bool)

(assert (=> b!1258022 m!1416325))

(declare-fun m!1416327 () Bool)

(assert (=> b!1258022 m!1416327))

(declare-fun m!1416329 () Bool)

(assert (=> b!1258022 m!1416329))

(declare-fun m!1416331 () Bool)

(assert (=> b!1258034 m!1416331))

(declare-fun m!1416333 () Bool)

(assert (=> b!1258034 m!1416333))

(declare-fun m!1416335 () Bool)

(assert (=> b!1258035 m!1416335))

(declare-fun m!1416337 () Bool)

(assert (=> b!1258036 m!1416337))

(declare-fun bs!290647 () Bool)

(declare-fun neg-inst!940 () Bool)

(declare-fun s!183633 () Bool)

(assert (= bs!290647 (and neg-inst!940 s!183633)))

(assert (=> bs!290647 (=> true (= (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (list!4699 x!244745)))))

(assert (=> m!1416317 m!1416313))

(assert (=> m!1416317 m!1416315))

(assert (=> m!1416317 m!1416319))

(assert (=> m!1416317 s!183633))

(assert (=> m!1416319 s!183633))

(declare-fun bs!290648 () Bool)

(assert (= bs!290648 (and neg-inst!940 start!111044)))

(assert (=> bs!290648 (= true inst!940)))

(declare-fun bs!290649 () Bool)

(declare-fun neg-inst!941 () Bool)

(declare-fun s!183635 () Bool)

(assert (= bs!290649 (and neg-inst!941 s!183635)))

(declare-fun res!556920 () Bool)

(declare-fun e!800761 () Bool)

(assert (=> bs!290649 (=> res!556920 e!800761)))

(assert (=> bs!290649 (= res!556920 (not (= (list!4699 x!244746) (list!4699 x!244746))))))

(assert (=> bs!290649 (=> true e!800761)))

(declare-fun b!1258037 () Bool)

(assert (=> b!1258037 (= e!800761 (= (toValue!27 thiss!4594 x!244746) (toValue!27 thiss!4594 x!244746)))))

(assert (= (and bs!290649 (not res!556920)) b!1258037))

(assert (=> m!1416323 s!183635))

(assert (=> m!1416323 s!183635))

(declare-fun bs!290650 () Bool)

(declare-fun s!183637 () Bool)

(assert (= bs!290650 (and neg-inst!941 s!183637)))

(declare-fun res!556921 () Bool)

(declare-fun e!800762 () Bool)

(assert (=> bs!290650 (=> res!556921 e!800762)))

(assert (=> bs!290650 (= res!556921 (not (= (list!4699 x!244747) (list!4699 x!244746))))))

(assert (=> bs!290650 (=> true e!800762)))

(declare-fun b!1258038 () Bool)

(assert (=> b!1258038 (= e!800762 (= (toValue!27 thiss!4594 x!244747) (toValue!27 thiss!4594 x!244746)))))

(assert (= (and bs!290650 (not res!556921)) b!1258038))

(declare-fun bs!290651 () Bool)

(assert (= bs!290651 (and m!1416333 m!1416323)))

(assert (=> bs!290651 m!1416325))

(assert (=> bs!290651 m!1416323))

(assert (=> bs!290651 s!183637))

(declare-fun bs!290652 () Bool)

(declare-fun s!183639 () Bool)

(assert (= bs!290652 (and neg-inst!941 s!183639)))

(declare-fun res!556922 () Bool)

(declare-fun e!800763 () Bool)

(assert (=> bs!290652 (=> res!556922 e!800763)))

(assert (=> bs!290652 (= res!556922 (not (= (list!4699 x!244747) (list!4699 x!244747))))))

(assert (=> bs!290652 (=> true e!800763)))

(declare-fun b!1258039 () Bool)

(assert (=> b!1258039 (= e!800763 (= (toValue!27 thiss!4594 x!244747) (toValue!27 thiss!4594 x!244747)))))

(assert (= (and bs!290652 (not res!556922)) b!1258039))

(assert (=> m!1416333 m!1416325))

(assert (=> m!1416333 m!1416325))

(assert (=> m!1416333 s!183639))

(declare-fun bs!290653 () Bool)

(declare-fun s!183641 () Bool)

(assert (= bs!290653 (and neg-inst!941 s!183641)))

(declare-fun res!556923 () Bool)

(declare-fun e!800764 () Bool)

(assert (=> bs!290653 (=> res!556923 e!800764)))

(assert (=> bs!290653 (= res!556923 (not (= (list!4699 x!244746) (list!4699 x!244747))))))

(assert (=> bs!290653 (=> true e!800764)))

(declare-fun b!1258040 () Bool)

(assert (=> b!1258040 (= e!800764 (= (toValue!27 thiss!4594 x!244746) (toValue!27 thiss!4594 x!244747)))))

(assert (= (and bs!290653 (not res!556923)) b!1258040))

(assert (=> bs!290651 m!1416323))

(assert (=> bs!290651 m!1416325))

(assert (=> bs!290651 s!183641))

(assert (=> m!1416333 s!183639))

(declare-fun bs!290654 () Bool)

(declare-fun s!183643 () Bool)

(assert (= bs!290654 (and neg-inst!941 s!183643)))

(declare-fun res!556924 () Bool)

(declare-fun e!800765 () Bool)

(assert (=> bs!290654 (=> res!556924 e!800765)))

(assert (=> bs!290654 (= res!556924 (not (= (list!4699 x!244745) (list!4699 x!244746))))))

(assert (=> bs!290654 (=> true e!800765)))

(declare-fun b!1258041 () Bool)

(assert (=> b!1258041 (= e!800765 (= (toValue!27 thiss!4594 x!244745) (toValue!27 thiss!4594 x!244746)))))

(assert (= (and bs!290654 (not res!556924)) b!1258041))

(declare-fun bs!290655 () Bool)

(assert (= bs!290655 (and m!1416317 m!1416323)))

(assert (=> bs!290655 m!1416319))

(assert (=> bs!290655 m!1416323))

(assert (=> bs!290655 s!183643))

(declare-fun bs!290656 () Bool)

(declare-fun s!183645 () Bool)

(assert (= bs!290656 (and neg-inst!941 s!183645)))

(declare-fun res!556925 () Bool)

(declare-fun e!800766 () Bool)

(assert (=> bs!290656 (=> res!556925 e!800766)))

(assert (=> bs!290656 (= res!556925 (not (= (list!4699 x!244745) (list!4699 x!244747))))))

(assert (=> bs!290656 (=> true e!800766)))

(declare-fun b!1258042 () Bool)

(assert (=> b!1258042 (= e!800766 (= (toValue!27 thiss!4594 x!244745) (toValue!27 thiss!4594 x!244747)))))

(assert (= (and bs!290656 (not res!556925)) b!1258042))

(declare-fun bs!290657 () Bool)

(assert (= bs!290657 (and m!1416317 m!1416333)))

(assert (=> bs!290657 m!1416319))

(assert (=> bs!290657 m!1416325))

(assert (=> bs!290657 s!183645))

(declare-fun bs!290658 () Bool)

(declare-fun s!183647 () Bool)

(assert (= bs!290658 (and neg-inst!941 s!183647)))

(declare-fun res!556926 () Bool)

(declare-fun e!800767 () Bool)

(assert (=> bs!290658 (=> res!556926 e!800767)))

(assert (=> bs!290658 (= res!556926 (not (= (list!4699 x!244745) (list!4699 x!244745))))))

(assert (=> bs!290658 (=> true e!800767)))

(declare-fun b!1258043 () Bool)

(assert (=> b!1258043 (= e!800767 (= (toValue!27 thiss!4594 x!244745) (toValue!27 thiss!4594 x!244745)))))

(assert (= (and bs!290658 (not res!556926)) b!1258043))

(assert (=> m!1416317 m!1416319))

(assert (=> m!1416317 m!1416319))

(assert (=> m!1416317 s!183647))

(declare-fun bs!290659 () Bool)

(declare-fun s!183649 () Bool)

(assert (= bs!290659 (and neg-inst!941 s!183649)))

(declare-fun res!556927 () Bool)

(declare-fun e!800768 () Bool)

(assert (=> bs!290659 (=> res!556927 e!800768)))

(assert (=> bs!290659 (= res!556927 (not (= (list!4699 x!244746) (list!4699 x!244745))))))

(assert (=> bs!290659 (=> true e!800768)))

(declare-fun b!1258044 () Bool)

(assert (=> b!1258044 (= e!800768 (= (toValue!27 thiss!4594 x!244746) (toValue!27 thiss!4594 x!244745)))))

(assert (= (and bs!290659 (not res!556927)) b!1258044))

(assert (=> bs!290655 m!1416323))

(assert (=> bs!290655 m!1416319))

(assert (=> bs!290655 s!183649))

(declare-fun bs!290660 () Bool)

(declare-fun s!183651 () Bool)

(assert (= bs!290660 (and neg-inst!941 s!183651)))

(declare-fun res!556928 () Bool)

(declare-fun e!800769 () Bool)

(assert (=> bs!290660 (=> res!556928 e!800769)))

(assert (=> bs!290660 (= res!556928 (not (= (list!4699 x!244747) (list!4699 x!244745))))))

(assert (=> bs!290660 (=> true e!800769)))

(declare-fun b!1258045 () Bool)

(assert (=> b!1258045 (= e!800769 (= (toValue!27 thiss!4594 x!244747) (toValue!27 thiss!4594 x!244745)))))

(assert (= (and bs!290660 (not res!556928)) b!1258045))

(assert (=> bs!290657 m!1416325))

(assert (=> bs!290657 m!1416319))

(assert (=> bs!290657 s!183651))

(assert (=> m!1416317 s!183647))

(declare-fun bs!290661 () Bool)

(assert (= bs!290661 (and m!1416331 m!1416317)))

(assert (=> bs!290661 s!183649))

(declare-fun bs!290662 () Bool)

(assert (= bs!290662 (and m!1416331 m!1416323)))

(assert (=> bs!290662 s!183635))

(declare-fun bs!290663 () Bool)

(assert (= bs!290663 (and m!1416331 m!1416333)))

(assert (=> bs!290663 s!183641))

(assert (=> m!1416331 s!183635))

(assert (=> bs!290661 s!183643))

(assert (=> bs!290662 s!183635))

(assert (=> bs!290663 s!183637))

(assert (=> m!1416331 s!183635))

(declare-fun bs!290664 () Bool)

(declare-fun s!183653 () Bool)

(assert (= bs!290664 (and neg-inst!941 s!183653)))

(declare-fun res!556929 () Bool)

(declare-fun e!800770 () Bool)

(assert (=> bs!290664 (=> res!556929 e!800770)))

(assert (=> bs!290664 (= res!556929 (not (= (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (list!4699 x!244745))))))

(assert (=> bs!290664 (=> true e!800770)))

(declare-fun b!1258046 () Bool)

(assert (=> b!1258046 (= e!800770 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (toValue!27 thiss!4594 x!244745)))))

(assert (= (and bs!290664 (not res!556929)) b!1258046))

(declare-fun bs!290665 () Bool)

(assert (= bs!290665 (and m!1416315 m!1416317)))

(assert (=> bs!290665 m!1416315))

(assert (=> bs!290665 m!1416319))

(assert (=> bs!290665 s!183653))

(declare-fun bs!290666 () Bool)

(declare-fun s!183655 () Bool)

(assert (= bs!290666 (and neg-inst!941 s!183655)))

(declare-fun res!556930 () Bool)

(declare-fun e!800771 () Bool)

(assert (=> bs!290666 (=> res!556930 e!800771)))

(assert (=> bs!290666 (= res!556930 (not (= (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (list!4699 x!244746))))))

(assert (=> bs!290666 (=> true e!800771)))

(declare-fun b!1258047 () Bool)

(assert (=> b!1258047 (= e!800771 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (toValue!27 thiss!4594 x!244746)))))

(assert (= (and bs!290666 (not res!556930)) b!1258047))

(declare-fun bs!290667 () Bool)

(assert (= bs!290667 (and m!1416315 m!1416323 m!1416331)))

(assert (=> bs!290667 m!1416315))

(assert (=> bs!290667 m!1416323))

(assert (=> bs!290667 s!183655))

(declare-fun bs!290668 () Bool)

(declare-fun s!183657 () Bool)

(assert (= bs!290668 (and neg-inst!941 s!183657)))

(declare-fun res!556931 () Bool)

(declare-fun e!800772 () Bool)

(assert (=> bs!290668 (=> res!556931 e!800772)))

(assert (=> bs!290668 (= res!556931 (not (= (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (list!4699 x!244747))))))

(assert (=> bs!290668 (=> true e!800772)))

(declare-fun b!1258048 () Bool)

(assert (=> b!1258048 (= e!800772 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (toValue!27 thiss!4594 x!244747)))))

(assert (= (and bs!290668 (not res!556931)) b!1258048))

(declare-fun bs!290669 () Bool)

(assert (= bs!290669 (and m!1416315 m!1416333)))

(assert (=> bs!290669 m!1416315))

(assert (=> bs!290669 m!1416325))

(assert (=> bs!290669 s!183657))

(declare-fun bs!290670 () Bool)

(declare-fun s!183659 () Bool)

(assert (= bs!290670 (and neg-inst!941 s!183659)))

(declare-fun res!556932 () Bool)

(declare-fun e!800773 () Bool)

(assert (=> bs!290670 (=> res!556932 e!800773)))

(assert (=> bs!290670 (= res!556932 (not (= (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))))))))

(assert (=> bs!290670 (=> true e!800773)))

(declare-fun b!1258049 () Bool)

(assert (=> b!1258049 (= e!800773 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745)))))))

(assert (= (and bs!290670 (not res!556932)) b!1258049))

(assert (=> m!1416315 s!183659))

(declare-fun bs!290671 () Bool)

(declare-fun s!183661 () Bool)

(assert (= bs!290671 (and neg-inst!941 s!183661)))

(declare-fun res!556933 () Bool)

(declare-fun e!800774 () Bool)

(assert (=> bs!290671 (=> res!556933 e!800774)))

(assert (=> bs!290671 (= res!556933 (not (= (list!4699 x!244745) (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))))))))

(assert (=> bs!290671 (=> true e!800774)))

(declare-fun b!1258050 () Bool)

(assert (=> b!1258050 (= e!800774 (= (toValue!27 thiss!4594 x!244745) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745)))))))

(assert (= (and bs!290671 (not res!556933)) b!1258050))

(assert (=> bs!290665 m!1416319))

(assert (=> bs!290665 m!1416315))

(assert (=> bs!290665 s!183661))

(declare-fun bs!290672 () Bool)

(declare-fun s!183663 () Bool)

(assert (= bs!290672 (and neg-inst!941 s!183663)))

(declare-fun res!556934 () Bool)

(declare-fun e!800775 () Bool)

(assert (=> bs!290672 (=> res!556934 e!800775)))

(assert (=> bs!290672 (= res!556934 (not (= (list!4699 x!244746) (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))))))))

(assert (=> bs!290672 (=> true e!800775)))

(declare-fun b!1258051 () Bool)

(assert (=> b!1258051 (= e!800775 (= (toValue!27 thiss!4594 x!244746) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745)))))))

(assert (= (and bs!290672 (not res!556934)) b!1258051))

(assert (=> bs!290667 m!1416323))

(assert (=> bs!290667 m!1416315))

(assert (=> bs!290667 s!183663))

(declare-fun bs!290673 () Bool)

(declare-fun s!183665 () Bool)

(assert (= bs!290673 (and neg-inst!941 s!183665)))

(declare-fun res!556935 () Bool)

(declare-fun e!800776 () Bool)

(assert (=> bs!290673 (=> res!556935 e!800776)))

(assert (=> bs!290673 (= res!556935 (not (= (list!4699 x!244747) (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))))))))

(assert (=> bs!290673 (=> true e!800776)))

(declare-fun b!1258052 () Bool)

(assert (=> b!1258052 (= e!800776 (= (toValue!27 thiss!4594 x!244747) (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745)))))))

(assert (= (and bs!290673 (not res!556935)) b!1258052))

(assert (=> bs!290669 m!1416325))

(assert (=> bs!290669 m!1416315))

(assert (=> bs!290669 s!183665))

(assert (=> m!1416315 s!183659))

(declare-fun bs!290674 () Bool)

(assert (= bs!290674 (and m!1416319 m!1416317)))

(assert (=> bs!290674 s!183647))

(declare-fun bs!290675 () Bool)

(assert (= bs!290675 (and m!1416319 m!1416315)))

(assert (=> bs!290675 s!183661))

(declare-fun bs!290676 () Bool)

(assert (= bs!290676 (and m!1416319 m!1416333)))

(assert (=> bs!290676 s!183645))

(declare-fun bs!290677 () Bool)

(assert (= bs!290677 (and m!1416319 m!1416323 m!1416331)))

(assert (=> bs!290677 s!183643))

(assert (=> m!1416319 s!183647))

(assert (=> bs!290674 s!183647))

(assert (=> bs!290677 s!183649))

(assert (=> bs!290675 s!183653))

(assert (=> bs!290676 s!183651))

(assert (=> m!1416319 s!183647))

(declare-fun bs!290678 () Bool)

(assert (= bs!290678 (and m!1416325 m!1416323 m!1416331)))

(assert (=> bs!290678 s!183637))

(declare-fun bs!290679 () Bool)

(assert (= bs!290679 (and m!1416325 m!1416333)))

(assert (=> bs!290679 s!183639))

(declare-fun bs!290680 () Bool)

(assert (= bs!290680 (and m!1416325 m!1416317 m!1416319)))

(assert (=> bs!290680 s!183651))

(declare-fun bs!290681 () Bool)

(assert (= bs!290681 (and m!1416325 m!1416315)))

(assert (=> bs!290681 s!183665))

(assert (=> m!1416325 s!183639))

(assert (=> bs!290681 s!183657))

(assert (=> bs!290679 s!183639))

(assert (=> bs!290680 s!183645))

(assert (=> bs!290678 s!183641))

(assert (=> m!1416325 s!183639))

(declare-fun bs!290682 () Bool)

(assert (= bs!290682 (and neg-inst!941 b!1258022)))

(assert (=> bs!290682 (= true inst!941)))

(declare-fun e!800755 () Bool)

(declare-fun e!800754 () Bool)

(assert (=> b!1258021 (= e!800755 e!800754)))

(declare-fun res!556916 () Bool)

(assert (=> b!1258021 (=> res!556916 e!800754)))

(declare-fun lambda!49744 () Int)

(declare-fun lambda!49745 () Int)

(declare-fun semiInverseModEq!813 (Int Int) Bool)

(assert (=> b!1258021 (= res!556916 (not (semiInverseModEq!813 lambda!49744 lambda!49745)))))

(declare-fun lambda!49743 () Int)

(declare-fun Forall!481 (Int) Bool)

(assert (=> b!1258021 (= (semiInverseModEq!813 lambda!49744 lambda!49745) (Forall!481 lambda!49743))))

(declare-fun b!1258023 () Bool)

(declare-fun e!800753 () Bool)

(declare-fun e!800756 () Bool)

(assert (=> b!1258023 (= e!800753 e!800756)))

(declare-fun res!556915 () Bool)

(assert (=> b!1258023 (=> res!556915 e!800756)))

(declare-fun equivClasses!772 (Int Int) Bool)

(assert (=> b!1258023 (= res!556915 (not (equivClasses!772 lambda!49744 lambda!49745)))))

(declare-fun lambda!49746 () Int)

(declare-fun Forall2!383 (Int) Bool)

(assert (=> b!1258023 (= (equivClasses!772 lambda!49744 lambda!49745) (Forall2!383 lambda!49746))))

(declare-fun res!556917 () Bool)

(assert (=> start!111044 (=> res!556917 e!800755)))

(assert (=> start!111044 (= res!556917 (not (Forall!481 lambda!49743)))))

(assert (=> start!111044 (= (Forall!481 lambda!49743) inst!940)))

(assert (=> start!111044 (not e!800755)))

(assert (=> start!111044 true))

(declare-fun b!1258024 () Bool)

(declare-datatypes ((TokenValueInjection!4160 0))(
  ( (TokenValueInjection!4161 (toValue!3317 Int) (toChars!3176 Int)) )
))
(declare-fun inv!16973 (TokenValueInjection!4160) Bool)

(assert (=> b!1258024 (= e!800756 (inv!16973 (TokenValueInjection!4161 lambda!49745 lambda!49744)))))

(assert (=> b!1258022 (= e!800754 e!800753)))

(declare-fun res!556918 () Bool)

(assert (=> b!1258022 (=> res!556918 e!800753)))

(assert (=> b!1258022 (= res!556918 (not (Forall2!383 lambda!49746)))))

(assert (=> b!1258022 (= (Forall2!383 lambda!49746) inst!941)))

(assert (= neg-inst!940 inst!940))

(assert (= (and start!111044 (not res!556917)) b!1258021))

(assert (= (and b!1258021 (not res!556916)) b!1258022))

(assert (= neg-inst!941 inst!941))

(assert (= (and b!1258022 (not res!556918)) b!1258023))

(assert (= (and b!1258023 (not res!556915)) b!1258024))

(declare-fun m!1416339 () Bool)

(assert (=> b!1258023 m!1416339))

(assert (=> b!1258023 m!1416339))

(declare-fun m!1416341 () Bool)

(assert (=> b!1258023 m!1416341))

(declare-fun m!1416343 () Bool)

(assert (=> start!111044 m!1416343))

(assert (=> start!111044 m!1416343))

(declare-fun m!1416345 () Bool)

(assert (=> b!1258021 m!1416345))

(assert (=> b!1258021 m!1416345))

(assert (=> b!1258021 m!1416343))

(declare-fun m!1416347 () Bool)

(assert (=> b!1258024 m!1416347))

(assert (=> b!1258022 m!1416341))

(assert (=> b!1258022 m!1416341))

(push 1)

(assert (not bs!290647))

(assert (not b!1258047))

(assert (not b!1258052))

(assert (not bs!290670))

(assert (not b!1258022))

(assert (not bs!290664))

(assert (not bs!290668))

(assert (not b!1258037))

(assert (not b!1258021))

(assert (not bs!290652))

(assert (not bs!290666))

(assert (not b!1258036))

(assert (not bs!290660))

(assert (not bs!290673))

(assert (not b!1258045))

(assert (not bs!290659))

(assert (not b!1258051))

(assert (not b!1258033))

(assert (not b!1258039))

(assert (not b!1258050))

(assert (not bs!290672))

(assert (not bs!290658))

(assert (not b!1258023))

(assert (not b!1258046))

(assert (not b!1258024))

(assert (not bs!290656))

(assert (not b!1258040))

(assert (not bs!290649))

(assert (not bs!290650))

(assert (not start!111044))

(assert (not b!1258044))

(assert (not b!1258049))

(assert (not bs!290671))

(assert (not b!1258038))

(assert (not b!1258034))

(assert (not bs!290654))

(assert (not b!1258042))

(assert (not bs!290653))

(assert (not b!1258035))

(assert (not b!1258043))

(assert (not b!1258048))

(assert (not b!1258041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!290720 () Bool)

(assert (= bs!290720 (and m!1416323 b!1258037)))

(assert (=> bs!290720 m!1416331))

(assert (=> bs!290720 m!1416331))

(declare-fun bs!290721 () Bool)

(assert (= bs!290721 (and m!1416333 m!1416323 b!1258038)))

(assert (=> bs!290721 m!1416333))

(assert (=> bs!290721 m!1416331))

(declare-fun bs!290723 () Bool)

(assert (= bs!290723 (and m!1416333 b!1258039)))

(assert (=> bs!290723 m!1416333))

(assert (=> bs!290723 m!1416333))

(declare-fun bs!290724 () Bool)

(assert (= bs!290724 (and m!1416333 m!1416323 b!1258040)))

(assert (=> bs!290724 m!1416331))

(assert (=> bs!290724 m!1416333))

(declare-fun bs!290725 () Bool)

(assert (= bs!290725 (and m!1416317 m!1416323 b!1258041)))

(assert (=> bs!290725 m!1416317))

(assert (=> bs!290725 m!1416331))

(declare-fun bs!290726 () Bool)

(assert (= bs!290726 (and m!1416317 m!1416333 b!1258042)))

(assert (=> bs!290726 m!1416317))

(assert (=> bs!290726 m!1416333))

(declare-fun bs!290727 () Bool)

(assert (= bs!290727 (and m!1416317 b!1258043)))

(assert (=> bs!290727 m!1416317))

(assert (=> bs!290727 m!1416317))

(declare-fun bs!290728 () Bool)

(assert (= bs!290728 (and m!1416317 m!1416323 b!1258044)))

(assert (=> bs!290728 m!1416331))

(assert (=> bs!290728 m!1416317))

(declare-fun bs!290729 () Bool)

(assert (= bs!290729 (and m!1416317 m!1416333 b!1258045)))

(assert (=> bs!290729 m!1416333))

(assert (=> bs!290729 m!1416317))

(declare-fun bs!290730 () Bool)

(assert (= bs!290730 (and m!1416315 m!1416317 b!1258046)))

(declare-fun m!1416389 () Bool)

(assert (=> bs!290730 m!1416389))

(assert (=> bs!290730 m!1416317))

(declare-fun bs!290731 () Bool)

(assert (= bs!290731 (and m!1416315 m!1416323 m!1416331 b!1258047)))

(assert (=> bs!290731 m!1416389))

(assert (=> bs!290731 m!1416331))

(declare-fun bs!290732 () Bool)

(assert (= bs!290732 (and m!1416315 m!1416333 b!1258048)))

(assert (=> bs!290732 m!1416389))

(assert (=> bs!290732 m!1416333))

(declare-fun bs!290733 () Bool)

(assert (= bs!290733 (and m!1416315 b!1258049)))

(assert (=> bs!290733 m!1416389))

(assert (=> bs!290733 m!1416389))

(declare-fun bs!290734 () Bool)

(assert (= bs!290734 (and m!1416315 m!1416317 b!1258050)))

(assert (=> bs!290734 m!1416317))

(assert (=> bs!290734 m!1416389))

(declare-fun bs!290735 () Bool)

(assert (= bs!290735 (and m!1416315 m!1416323 m!1416331 b!1258051)))

(assert (=> bs!290735 m!1416331))

(assert (=> bs!290735 m!1416389))

(declare-fun bs!290736 () Bool)

(assert (= bs!290736 (and m!1416315 m!1416333 b!1258052)))

(assert (=> bs!290736 m!1416333))

(assert (=> bs!290736 m!1416389))

(push 1)

(assert (not bs!290647))

(assert (not b!1258047))

(assert (not b!1258052))

(assert (not bs!290670))

(assert (not b!1258022))

(assert (not bs!290664))

(assert (not bs!290668))

(assert (not b!1258037))

(assert (not b!1258021))

(assert (not bs!290652))

(assert (not bs!290666))

(assert (not b!1258036))

(assert (not bs!290660))

(assert (not bs!290673))

(assert (not b!1258045))

(assert (not bs!290659))

(assert (not b!1258051))

(assert (not b!1258033))

(assert (not b!1258039))

(assert (not b!1258050))

(assert (not bs!290672))

(assert (not bs!290658))

(assert (not b!1258023))

(assert (not b!1258046))

(assert (not b!1258024))

(assert (not bs!290656))

(assert (not b!1258040))

(assert (not bs!290649))

(assert (not bs!290650))

(assert (not start!111044))

(assert (not b!1258044))

(assert (not b!1258049))

(assert (not bs!290671))

(assert (not b!1258038))

(assert (not b!1258034))

(assert (not bs!290654))

(assert (not b!1258042))

(assert (not bs!290653))

(assert (not b!1258035))

(assert (not b!1258043))

(assert (not b!1258048))

(assert (not b!1258041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!355529 () Bool)

(declare-fun efficientList!180 (BalanceConc!8204) List!12648)

(assert (=> d!355529 (= (toValue!27 thiss!4594 x!244745) (KeywordValue!2254 (efficientList!180 x!244745)))))

(declare-fun bs!290752 () Bool)

(assert (= bs!290752 d!355529))

(declare-fun m!1416391 () Bool)

(assert (=> bs!290752 m!1416391))

(assert (=> b!1258042 d!355529))

(declare-fun d!355531 () Bool)

(assert (=> d!355531 (= (toValue!27 thiss!4594 x!244747) (KeywordValue!2254 (efficientList!180 x!244747)))))

(declare-fun bs!290753 () Bool)

(assert (= bs!290753 d!355531))

(declare-fun m!1416393 () Bool)

(assert (=> bs!290753 m!1416393))

(assert (=> b!1258042 d!355531))

(declare-fun d!355533 () Bool)

(declare-fun list!4701 (Conc!4132) List!12648)

(assert (=> d!355533 (= (list!4699 x!244747) (list!4701 (c!208919 x!244747)))))

(declare-fun bs!290754 () Bool)

(assert (= bs!290754 d!355533))

(declare-fun m!1416395 () Bool)

(assert (=> bs!290754 m!1416395))

(assert (=> bs!290673 d!355533))

(declare-fun d!355535 () Bool)

(assert (=> d!355535 (= (list!4699 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (list!4701 (c!208919 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745)))))))

(declare-fun bs!290755 () Bool)

(assert (= bs!290755 d!355535))

(declare-fun m!1416397 () Bool)

(assert (=> bs!290755 m!1416397))

(assert (=> bs!290673 d!355535))

(assert (=> b!1258039 d!355531))

(assert (=> b!1258045 d!355531))

(assert (=> b!1258045 d!355529))

(assert (=> bs!290652 d!355533))

(declare-fun d!355537 () Bool)

(assert (=> d!355537 (= (toValue!27 thiss!4594 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745))) (KeywordValue!2254 (efficientList!180 (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745)))))))

(declare-fun bs!290756 () Bool)

(assert (= bs!290756 d!355537))

(assert (=> bs!290756 m!1416313))

(declare-fun m!1416399 () Bool)

(assert (=> bs!290756 m!1416399))

(assert (=> b!1258048 d!355537))

(assert (=> b!1258048 d!355531))

(assert (=> bs!290660 d!355533))

(declare-fun d!355539 () Bool)

(assert (=> d!355539 (= (list!4699 x!244745) (list!4701 (c!208919 x!244745)))))

(declare-fun bs!290757 () Bool)

(assert (= bs!290757 d!355539))

(declare-fun m!1416401 () Bool)

(assert (=> bs!290757 m!1416401))

(assert (=> bs!290660 d!355539))

(assert (=> b!1258038 d!355531))

(declare-fun d!355541 () Bool)

(assert (=> d!355541 (= (toValue!27 thiss!4594 x!244746) (KeywordValue!2254 (efficientList!180 x!244746)))))

(declare-fun bs!290758 () Bool)

(assert (= bs!290758 d!355541))

(declare-fun m!1416403 () Bool)

(assert (=> bs!290758 m!1416403))

(assert (=> b!1258038 d!355541))

(assert (=> bs!290668 d!355535))

(assert (=> bs!290668 d!355533))

(assert (=> bs!290656 d!355539))

(assert (=> bs!290656 d!355533))

(assert (=> b!1258051 d!355541))

(assert (=> b!1258051 d!355537))

(assert (=> bs!290650 d!355533))

(declare-fun d!355543 () Bool)

(assert (=> d!355543 (= (list!4699 x!244746) (list!4701 (c!208919 x!244746)))))

(declare-fun bs!290759 () Bool)

(assert (= bs!290759 d!355543))

(declare-fun m!1416405 () Bool)

(assert (=> bs!290759 m!1416405))

(assert (=> bs!290650 d!355543))

(assert (=> b!1258047 d!355537))

(assert (=> b!1258047 d!355541))

(assert (=> b!1258041 d!355529))

(assert (=> b!1258041 d!355541))

(assert (=> start!111044 d!355535))

(declare-fun d!355545 () Bool)

(declare-fun c!208924 () Bool)

(assert (=> d!355545 (= c!208924 (is-KeywordValue!2254 (toValue!27 thiss!4594 x!244745)))))

(declare-fun e!800827 () BalanceConc!8204)

(assert (=> d!355545 (= (toCharacters!20 thiss!4594 (toValue!27 thiss!4594 x!244745)) e!800827)))

(declare-fun b!1258113 () Bool)

(declare-fun seqFromList!1581 (List!12648) BalanceConc!8204)

(assert (=> b!1258113 (= e!800827 (seqFromList!1581 (value!70809 (toValue!27 thiss!4594 x!244745))))))

(declare-fun b!1258114 () Bool)

(assert (=> b!1258114 (= e!800827 (BalanceConc!8205 Empty!4132))))

(assert (= (and d!355545 c!208924) b!1258113))

(assert (= (and d!355545 (not c!208924)) b!1258114))

(declare-fun m!1416407 () Bool)

(assert (=> b!1258113 m!1416407))

(assert (=> start!111044 d!355545))

(assert (=> start!111044 d!355539))

(declare-fun d!355547 () Bool)

(declare-fun isBalanced!1206 (Conc!4132) Bool)

(assert (=> d!355547 (= (inv!16972 x!244745) (isBalanced!1206 (c!208919 x!244745)))))

(declare-fun bs!290760 () Bool)

(assert (= bs!290760 d!355547))

(declare-fun m!1416409 () Bool)

(assert (=> bs!290760 m!1416409))

(assert (=> start!111044 d!355547))

(declare-fun d!355549 () Bool)

(declare-fun choose!7891 (Int) Bool)

(assert (=> d!355549 (= (Forall!481 lambda!49743) (choose!7891 lambda!49743))))

(declare-fun bs!290761 () Bool)

(assert (= bs!290761 d!355549))

(declare-fun m!1416411 () Bool)

(assert (=> bs!290761 m!1416411))

(assert (=> start!111044 d!355549))

(assert (=> start!111044 d!355529))

(assert (=> bs!290672 d!355543))

(assert (=> bs!290672 d!355535))

(assert (=> b!1258037 d!355541))

(assert (=> bs!290666 d!355535))

(assert (=> bs!290666 d!355543))

(assert (=> bs!290654 d!355539))

(assert (=> bs!290654 d!355543))

(assert (=> b!1258050 d!355529))

(assert (=> b!1258050 d!355537))

(assert (=> b!1258044 d!355541))

(assert (=> b!1258044 d!355529))

(assert (=> b!1258040 d!355541))

(assert (=> b!1258040 d!355531))

(declare-fun bs!290762 () Bool)

(declare-fun d!355551 () Bool)

(assert (= bs!290762 (and d!355551 b!1258022)))

(declare-fun lambda!49785 () Int)

(assert (=> bs!290762 (not (= lambda!49785 lambda!49746))))

(assert (=> d!355551 true))

(declare-fun order!7661 () Int)

(declare-fun order!7659 () Int)

(declare-fun dynLambda!5499 (Int Int) Int)

(declare-fun dynLambda!5500 (Int Int) Int)

(assert (=> d!355551 (< (dynLambda!5499 order!7659 lambda!49745) (dynLambda!5500 order!7661 lambda!49785))))

(assert (=> d!355551 (= (equivClasses!772 lambda!49744 lambda!49745) (Forall2!383 lambda!49785))))

(declare-fun bs!290763 () Bool)

(assert (= bs!290763 d!355551))

(declare-fun m!1416413 () Bool)

(assert (=> bs!290763 m!1416413))

(assert (=> b!1258023 d!355551))

(declare-fun d!355553 () Bool)

(declare-fun choose!7892 (Int) Bool)

(assert (=> d!355553 (= (Forall2!383 lambda!49746) (choose!7892 lambda!49746))))

(declare-fun bs!290764 () Bool)

(assert (= bs!290764 d!355553))

(declare-fun m!1416415 () Bool)

(assert (=> bs!290764 m!1416415))

(assert (=> b!1258023 d!355553))

(declare-fun d!355555 () Bool)

(declare-fun res!556987 () Bool)

(declare-fun e!800832 () Bool)

(assert (=> d!355555 (=> (not res!556987) (not e!800832))))

(assert (=> d!355555 (= res!556987 (semiInverseModEq!813 (toChars!3176 (TokenValueInjection!4161 lambda!49745 lambda!49744)) (toValue!3317 (TokenValueInjection!4161 lambda!49745 lambda!49744))))))

(assert (=> d!355555 (= (inv!16973 (TokenValueInjection!4161 lambda!49745 lambda!49744)) e!800832)))

(declare-fun b!1258121 () Bool)

(assert (=> b!1258121 (= e!800832 (equivClasses!772 (toChars!3176 (TokenValueInjection!4161 lambda!49745 lambda!49744)) (toValue!3317 (TokenValueInjection!4161 lambda!49745 lambda!49744))))))

(assert (= (and d!355555 res!556987) b!1258121))

(declare-fun m!1416417 () Bool)

(assert (=> d!355555 m!1416417))

(declare-fun m!1416419 () Bool)

(assert (=> b!1258121 m!1416419))

(assert (=> b!1258024 d!355555))

(assert (=> bs!290671 d!355539))

(assert (=> bs!290671 d!355535))

(assert (=> bs!290659 d!355543))

(assert (=> bs!290659 d!355539))

(assert (=> bs!290653 d!355543))

(assert (=> bs!290653 d!355533))

(assert (=> b!1258049 d!355537))

(declare-fun bs!290765 () Bool)

(declare-fun d!355557 () Bool)

(assert (= bs!290765 (and d!355557 start!111044)))

(declare-fun lambda!49788 () Int)

(assert (=> bs!290765 (not (= lambda!49788 lambda!49743))))

(assert (=> d!355557 true))

(declare-fun order!7663 () Int)

(declare-fun order!7665 () Int)

(declare-fun dynLambda!5501 (Int Int) Int)

(declare-fun dynLambda!5502 (Int Int) Int)

(assert (=> d!355557 (< (dynLambda!5501 order!7663 lambda!49744) (dynLambda!5502 order!7665 lambda!49788))))

(assert (=> d!355557 true))

(assert (=> d!355557 (< (dynLambda!5499 order!7659 lambda!49745) (dynLambda!5502 order!7665 lambda!49788))))

(assert (=> d!355557 (= (semiInverseModEq!813 lambda!49744 lambda!49745) (Forall!481 lambda!49788))))

(declare-fun bs!290766 () Bool)

(assert (= bs!290766 d!355557))

(declare-fun m!1416421 () Bool)

(assert (=> bs!290766 m!1416421))

(assert (=> b!1258021 d!355557))

(assert (=> b!1258021 d!355549))

(declare-fun d!355561 () Bool)

(declare-fun c!208927 () Bool)

(assert (=> d!355561 (= c!208927 (is-Node!4132 (c!208919 x!244747)))))

(declare-fun e!800837 () Bool)

(assert (=> d!355561 (= (inv!16971 (c!208919 x!244747)) e!800837)))

(declare-fun b!1258132 () Bool)

(declare-fun inv!16977 (Conc!4132) Bool)

(assert (=> b!1258132 (= e!800837 (inv!16977 (c!208919 x!244747)))))

(declare-fun b!1258133 () Bool)

(declare-fun e!800838 () Bool)

(assert (=> b!1258133 (= e!800837 e!800838)))

(declare-fun res!556990 () Bool)

(assert (=> b!1258133 (= res!556990 (not (is-Leaf!6407 (c!208919 x!244747))))))

(assert (=> b!1258133 (=> res!556990 e!800838)))

(declare-fun b!1258134 () Bool)

(declare-fun inv!16978 (Conc!4132) Bool)

(assert (=> b!1258134 (= e!800838 (inv!16978 (c!208919 x!244747)))))

(assert (= (and d!355561 c!208927) b!1258132))

(assert (= (and d!355561 (not c!208927)) b!1258133))

(assert (= (and b!1258133 (not res!556990)) b!1258134))

(declare-fun m!1416429 () Bool)

(assert (=> b!1258132 m!1416429))

(declare-fun m!1416431 () Bool)

(assert (=> b!1258134 m!1416431))

(assert (=> b!1258036 d!355561))

(assert (=> b!1258022 d!355553))

(declare-fun d!355569 () Bool)

(assert (=> d!355569 (= (inv!16972 x!244747) (isBalanced!1206 (c!208919 x!244747)))))

(declare-fun bs!290770 () Bool)

(assert (= bs!290770 d!355569))

(declare-fun m!1416433 () Bool)

(assert (=> bs!290770 m!1416433))

(assert (=> b!1258022 d!355569))

(assert (=> b!1258022 d!355533))

(assert (=> b!1258022 d!355543))

(declare-fun d!355571 () Bool)

(assert (=> d!355571 (= (inv!16972 x!244746) (isBalanced!1206 (c!208919 x!244746)))))

(declare-fun bs!290771 () Bool)

(assert (= bs!290771 d!355571))

(declare-fun m!1416435 () Bool)

(assert (=> bs!290771 m!1416435))

(assert (=> b!1258022 d!355571))

(assert (=> b!1258043 d!355529))

(assert (=> b!1258046 d!355537))

(assert (=> b!1258046 d!355529))

(assert (=> bs!290649 d!355543))

(assert (=> b!1258052 d!355531))

(assert (=> b!1258052 d!355537))

(assert (=> bs!290647 d!355535))

(assert (=> bs!290647 d!355545))

(assert (=> bs!290647 d!355529))

(assert (=> bs!290647 d!355539))

(assert (=> bs!290664 d!355535))

(assert (=> bs!290664 d!355539))

(declare-fun d!355573 () Bool)

(declare-fun c!208928 () Bool)

(assert (=> d!355573 (= c!208928 (is-Node!4132 (c!208919 x!244745)))))

(declare-fun e!800839 () Bool)

(assert (=> d!355573 (= (inv!16971 (c!208919 x!244745)) e!800839)))

(declare-fun b!1258135 () Bool)

(assert (=> b!1258135 (= e!800839 (inv!16977 (c!208919 x!244745)))))

(declare-fun b!1258136 () Bool)

(declare-fun e!800840 () Bool)

(assert (=> b!1258136 (= e!800839 e!800840)))

(declare-fun res!556991 () Bool)

(assert (=> b!1258136 (= res!556991 (not (is-Leaf!6407 (c!208919 x!244745))))))

(assert (=> b!1258136 (=> res!556991 e!800840)))

(declare-fun b!1258137 () Bool)

(assert (=> b!1258137 (= e!800840 (inv!16978 (c!208919 x!244745)))))

(assert (= (and d!355573 c!208928) b!1258135))

(assert (= (and d!355573 (not c!208928)) b!1258136))

(assert (= (and b!1258136 (not res!556991)) b!1258137))

(declare-fun m!1416437 () Bool)

(assert (=> b!1258135 m!1416437))

(declare-fun m!1416439 () Bool)

(assert (=> b!1258137 m!1416439))

(assert (=> b!1258033 d!355573))

(assert (=> bs!290670 d!355535))

(assert (=> b!1258034 d!355541))

(assert (=> b!1258034 d!355531))

(assert (=> bs!290658 d!355539))

(declare-fun d!355575 () Bool)

(declare-fun c!208929 () Bool)

(assert (=> d!355575 (= c!208929 (is-Node!4132 (c!208919 x!244746)))))

(declare-fun e!800841 () Bool)

(assert (=> d!355575 (= (inv!16971 (c!208919 x!244746)) e!800841)))

(declare-fun b!1258138 () Bool)

(assert (=> b!1258138 (= e!800841 (inv!16977 (c!208919 x!244746)))))

(declare-fun b!1258139 () Bool)

(declare-fun e!800842 () Bool)

(assert (=> b!1258139 (= e!800841 e!800842)))

(declare-fun res!556992 () Bool)

(assert (=> b!1258139 (= res!556992 (not (is-Leaf!6407 (c!208919 x!244746))))))

(assert (=> b!1258139 (=> res!556992 e!800842)))

(declare-fun b!1258140 () Bool)

(assert (=> b!1258140 (= e!800842 (inv!16978 (c!208919 x!244746)))))

(assert (= (and d!355575 c!208929) b!1258138))

(assert (= (and d!355575 (not c!208929)) b!1258139))

(assert (= (and b!1258139 (not res!556992)) b!1258140))

(declare-fun m!1416441 () Bool)

(assert (=> b!1258138 m!1416441))

(declare-fun m!1416443 () Bool)

(assert (=> b!1258140 m!1416443))

(assert (=> b!1258035 d!355575))

(declare-fun tp!370730 () Bool)

(declare-fun e!800847 () Bool)

(declare-fun b!1258147 () Bool)

(declare-fun tp!370729 () Bool)

(assert (=> b!1258147 (= e!800847 (and (inv!16971 (left!10900 (c!208919 x!244747))) tp!370729 (inv!16971 (right!11230 (c!208919 x!244747))) tp!370730))))

(declare-fun b!1258148 () Bool)

(declare-fun inv!16979 (IArray!8269) Bool)

(assert (=> b!1258148 (= e!800847 (inv!16979 (xs!6843 (c!208919 x!244747))))))

(assert (=> b!1258036 (= tp!370714 (and (inv!16971 (c!208919 x!244747)) e!800847))))

(assert (= (and b!1258036 (is-Node!4132 (c!208919 x!244747))) b!1258147))

(assert (= (and b!1258036 (is-Leaf!6407 (c!208919 x!244747))) b!1258148))

(declare-fun m!1416445 () Bool)

(assert (=> b!1258147 m!1416445))

(declare-fun m!1416447 () Bool)

(assert (=> b!1258147 m!1416447))

(declare-fun m!1416449 () Bool)

(assert (=> b!1258148 m!1416449))

(assert (=> b!1258036 m!1416337))

(declare-fun b!1258149 () Bool)

(declare-fun e!800849 () Bool)

(declare-fun tp!370731 () Bool)

(declare-fun tp!370732 () Bool)

(assert (=> b!1258149 (= e!800849 (and (inv!16971 (left!10900 (c!208919 x!244745))) tp!370731 (inv!16971 (right!11230 (c!208919 x!244745))) tp!370732))))

(declare-fun b!1258150 () Bool)

(assert (=> b!1258150 (= e!800849 (inv!16979 (xs!6843 (c!208919 x!244745))))))

(assert (=> b!1258033 (= tp!370713 (and (inv!16971 (c!208919 x!244745)) e!800849))))

(assert (= (and b!1258033 (is-Node!4132 (c!208919 x!244745))) b!1258149))

(assert (= (and b!1258033 (is-Leaf!6407 (c!208919 x!244745))) b!1258150))

(declare-fun m!1416451 () Bool)

(assert (=> b!1258149 m!1416451))

(declare-fun m!1416453 () Bool)

(assert (=> b!1258149 m!1416453))

(declare-fun m!1416455 () Bool)

(assert (=> b!1258150 m!1416455))

(assert (=> b!1258033 m!1416311))

(declare-fun tp!370733 () Bool)

(declare-fun b!1258151 () Bool)

(declare-fun tp!370734 () Bool)

(declare-fun e!800851 () Bool)

(assert (=> b!1258151 (= e!800851 (and (inv!16971 (left!10900 (c!208919 x!244746))) tp!370733 (inv!16971 (right!11230 (c!208919 x!244746))) tp!370734))))

(declare-fun b!1258152 () Bool)

(assert (=> b!1258152 (= e!800851 (inv!16979 (xs!6843 (c!208919 x!244746))))))

(assert (=> b!1258035 (= tp!370715 (and (inv!16971 (c!208919 x!244746)) e!800851))))

(assert (= (and b!1258035 (is-Node!4132 (c!208919 x!244746))) b!1258151))

(assert (= (and b!1258035 (is-Leaf!6407 (c!208919 x!244746))) b!1258152))

(declare-fun m!1416457 () Bool)

(assert (=> b!1258151 m!1416457))

(declare-fun m!1416459 () Bool)

(assert (=> b!1258151 m!1416459))

(declare-fun m!1416461 () Bool)

(assert (=> b!1258152 m!1416461))

(assert (=> b!1258035 m!1416335))

(push 1)

(assert (not b!1258036))

(assert (not b!1258135))

(assert (not b!1258138))

(assert (not b!1258134))

(assert (not d!355537))

(assert (not d!355571))

(assert (not d!355529))

(assert (not d!355535))

(assert (not d!355541))

(assert (not b!1258148))

(assert (not b!1258113))

(assert (not d!355569))

(assert (not b!1258121))

(assert (not b!1258033))

(assert (not b!1258150))

(assert (not b!1258151))

(assert (not d!355539))

(assert (not d!355533))

(assert (not d!355555))

(assert (not d!355551))

(assert (not d!355557))

(assert (not d!355531))

(assert (not b!1258149))

(assert (not b!1258137))

(assert (not b!1258147))

(assert (not b!1258140))

(assert (not d!355543))

(assert (not b!1258152))

(assert (not b!1258132))

(assert (not d!355553))

(assert (not b!1258035))

(assert (not d!355549))

(assert (not d!355547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

